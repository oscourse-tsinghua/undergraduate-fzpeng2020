//use crate::sbi;
//use crate::io;
use crate::consts::*;
global_asm!(include_str!("boot/entry.asm")); // 引入 _start

use crate::memory::{
    alloc_frame,
    dealloc_frame
};

#[no_mangle]
pub fn rust_main() -> ! {
    extern "C" {
        fn end();
    }
    println!("rcore_step_by_step os is running!", );
    crate::interrupt::init();
    println! (
        "free memory paddr = [{:#x}, {:#x}",
         end as usize - KERNEL_BEGIN_VADDR + KERNEL_BEGIN_PADDR,
         PHYSICAL_MEMORY_END
    );
    println!(
        "free physical memory ppn = [{:#x}, {:#x})",
        ((end as usize - KERNEL_BEGIN_VADDR + KERNEL_BEGIN_PADDR) >> 12) + 2,
        PHYSICAL_MEMORY_END >> 12
    );
    crate::memory::init(
        ((end as usize - KERNEL_BEGIN_VADDR + KERNEL_BEGIN_PADDR) >> 12) + 2,
        PHYSICAL_MEMORY_END >> 12
    );
    //dynamic_allocating_test();
    test_page_table();
    crate::clock::init();
    unsafe {
        asm!("ebreak"::::"volatile");
    }
    panic!("end of rust_main");
    loop {}
}

fn dynamic_allocating_test() {
    use alloc::vec::Vec;
    use alloc::boxed::Box;

    extern "C" {
        fn sbss();
        fn ebss();
    }
    let lbss = sbss as usize;
    let rbss = ebss as usize;

    let heap_value = Box::new(5);
    assert!(*heap_value == 5);
    println!("heap_value assertion successfully!");
    println!("heap_value is at {:p}", heap_value);
    let heap_value_addr = &*heap_value as *const _ as usize;
    assert!(heap_value_addr >= lbss && heap_value_addr < rbss);
    println!("heap_value is in section .bss!");

    let mut vec = Vec::new();
    for i in 0..500 {
        vec.push(i);
    }
    for i in 0..500 {
        assert!(vec[i] == i);
    }
    println!("vec assertion successfully!");
    println!("vec is at {:p}", vec.as_slice());
    let vec_addr = vec.as_ptr() as usize;
    assert!(vec_addr >= lbss && vec_addr < rbss);
    println!("vec is in section .bss!");
}

fn test_page_table() {
    // test read
    let ptr = 0xc0400000 as *const u32;
    let value = unsafe { ptr.read() };
    println!("addr: {:?}, value: {:#x}", ptr, value);

    // test write: page fault!
    unsafe {
        (0xc0000000 as *mut u32).write(0);
    }
}
