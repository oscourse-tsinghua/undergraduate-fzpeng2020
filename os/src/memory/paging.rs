use crate::consts::*;
use riscv::addr::*;
use riscv::paging::{
    PageTableEntry,
    Mapper,
    Rv32PageTable,
    PageTable as PageTableEntryArray,
    PageTableFlags as EF,
    FrameAllocator,
    FrameDeallocator
    
};
use riscv::asm::{
    sfence_vma,
    sfence_vma_all,
};
use riscv::register::satp;
use crate::memory::{
    alloc_frame,
    dealloc_frame,
    access_pa_via_va
};

pub struct PageEntry(&'static mut PageTableEntry, Page);

impl PageEntry {
    pub fn update(&mut self) {
        unsafe {
            sfence_vma(0, self.1.start_address().as_usize());
        }
    }
	
    pub fn accessed(&self) -> bool { self.0.flags().contains(EF::ACCESSED) }
    pub fn clear_accessed(&mut self) { self.0.flags_mut().remove(EF::ACCESSED); }

    pub fn dirty(&self) -> bool { self.0.flags().contains(EF::DIRTY) }
    pub fn clear_dirty(&mut self) { self.0.flags_mut().remove(EF::DIRTY); }

    pub fn writable(&self) -> bool { self.0.flags().contains(EF::WRITABLE) }
    pub fn set_writable(&mut self, value: bool) {
        self.0.flags_mut().set(EF::WRITABLE, value); 
    }

    pub fn present(&self) -> bool { self.0.flags().contains(EF::VALID | EF::READABLE) }
    pub fn set_present(&mut self, value: bool) {
        self.0.flags_mut().set(EF::VALID | EF::READABLE, value);
    }

    pub fn user(&self) -> bool { self.0.flags().contains(EF::USER) }
    pub fn set_user(&mut self, value: bool) { self.0.flags_mut().set(EF::USER, value); }

    pub fn execute(&self) -> bool { self.0.flags().contains(EF::EXECUTABLE) }
    pub fn set_execute(&mut self, value: bool) {
        self.0.flags_mut().set(EF::EXECUTABLE, value);
    }

    pub fn target(&self) -> usize {
        self.0.addr().as_usize()
    }
    pub fn set_target(&mut self, target: usize) {
        let flags = self.0.flags();
        let frame = Frame::of_addr(PhysAddr::new(target));
        self.0.set(frame, flags);
    }
}

struct FrameAllocatorForPaging;

impl FrameAllocator for FrameAllocatorForPaging {
    fn alloc(&mut self) -> Option<Frame> {
        alloc_frame()
    }
}

impl FrameDeallocator for FrameAllocatorForPaging {
    fn dealloc(&mut self, frame: Frame) {
        dealloc_frame(frame)
    }
}


pub struct PageTableImpl {
    page_table: Rv32PageTable<'static>,
    root_frame: Frame,
    entry: Option<PageEntry>
}

impl PageTableImpl {
    // 新建一个空页表
    pub fn new_bare() -> Self {
        // 分配一个物理页帧并获取物理地址，作为根的三级页表就放在这个物理页帧中
        let frame = alloc_frame().expect("alloc_frame failed!");
        let paddr = frame.start_address().as_usize();
        // 利用 access_pa_via_va 访问该物理页帧并进行页表初始化
        let table = unsafe { &mut *(access_pa_via_va(paddr) as *mut PageTableEntryArray) };
        table.zero();

        PageTableImpl {
            // 传入参数：三级页表的可变引用；
            // 因为 Rv39PageTable 的思路也是将整块物理内存进行线性映射
            // 所以我们传入物理内存的偏移量，即 va-pa，使它可以修改页表
            page_table: Rv32PageTable::new(table, PHYSICAL_MEMORY_OFFSET),
            // 三级页表所在物理页帧
            root_frame: frame,
            entry: None
        }
    }
    pub fn map(&mut self, va: usize, pa: usize) -> &mut PageEntry {
        // 为一对虚拟页与物理页帧建立映射

        // 这里的标志位被固定为 R|W|X，即同时允许读/写/执行
        // 后面我们会根据段的权限不同进行修改
        let flags = EF::VALID | EF::READABLE | EF::WRITABLE;
        let page = Page::of_addr(VirtAddr::new(va));
        let frame = Frame::of_addr(PhysAddr::new(pa));
        self.page_table
            // 利用 Rv39PageTable 的 map_to 接口
            // 传入要建立映射的虚拟页、物理页帧、映射标志位、以及提供物理页帧管理
            .map_to(page, frame, flags, &mut FrameAllocatorForPaging)
            .unwrap()
            // 得到 MapperFlush(Page)
            // flush 做的事情就是跟上面一样的 sfence_vma
            // 即刷新与这个虚拟页相关的 TLB
            // 所以我们修改后要按时刷新 TLB
            .flush();
        self.get_entry(va).expect("fail to get an entry!")
    }
    pub fn unmap(&mut self, va: usize) {
        // 删除一对映射
        // 我们只需输入虚拟页，因为已经可以找到页表项了
        let page = Page::of_addr(VirtAddr::new(va));
        // 利用 Rv39PageTable 的 unmap 接口
        // * 注意这里没有用到物理页帧管理，所以 Rv39PageTable 并不会回收内存？
        let (_, flush) = self.page_table.unmap(page).unwrap();
        // 同样注意按时刷新 TLB
        flush.flush();
    }
    fn get_entry(&mut self, va: usize) -> Option<&mut PageEntry> {
        // 获取虚拟页对应的页表项，以被我们封装起来的 PageEntry 的可变引用的形式
        // 于是，我们拿到了页表项，可以进行修改了！
        let page = Page::of_addr(VirtAddr::new(va));
        // 调用 Rv39PageTable 的 ref_entry 接口
        if let Ok(e) = self.page_table.ref_entry(page.clone()) {
            let e = unsafe { &mut *(e as *mut PageTableEntry) };
            // 把返回的 PageTableEntry 封装起来
            self.entry = Some(PageEntry(e, page));
            Some(self.entry.as_mut().unwrap())
        }
        else {
            None
        }
    }
    // NODE RV32 is 1 << 31
    pub fn token(&self) -> usize { self.root_frame.number() | (1 << 31) }

    // 使用内联汇编将 satp 寄存器修改为传进来的 token
    // 这个 token 对应的页表将粉墨登场...
    unsafe fn set_token(token: usize) {
        asm!("csrw satp, $0" :: "r"(token) :: "volatile");
    }

    // 查看 CPU 当前的 satp 值，就知道 CPU 目前在用哪个页表
    fn active_token() -> usize { satp::read().bits() }

    // 修改 satp 值切换页表后，过时的不止一个虚拟页
    // 因此必须使用 sfence_vma_all 刷新整个 TLB
    fn flush_tlb() { unsafe { sfence_vma_all(); } }

    // 将 CPU 所用的页表切换为当前的实例
    pub unsafe fn activate(&mut self) {
        let old_token = Self::active_token();
        let new_token = self.token();
        println!("switch satp from {:#x} to {:#x}", old_token, new_token);
        if new_token != old_token {
            Self::map(self, 0xffffffff, 0x80423000);
            Self::set_token(new_token);
            // 别忘了刷新 TLB!
            Self::flush_tlb();
        }
    }
}

#[derive(Clone, Copy, PartialEq, Eq)]
#[repr(C)]
pub struct PageRange {
    start: usize,
    end: usize
}

// 为 PageRange 实现 Iterator trait 成为可被遍历的迭代器
impl Iterator for PageRange {
    type Item = usize;

    fn next(&mut self) -> Option<usize> {
        if self.start < self.end {
            let page = self.start << 12;
            self.start += 1;
            Some(page)
        }
        else {
            None
        }
    }
}

impl PageRange {
    pub fn new(start_addr: usize, end_addr: usize) -> Self {
        PageRange {
            start: start_addr / PAGE_SIZE,
            end: (end_addr - 1) / PAGE_SIZE + 1
        }
    }
}

