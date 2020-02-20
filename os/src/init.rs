//use crate::sbi;
//use crate::io;
use crate::consts::*;
global_asm!(include_str!("boot/entry.asm")); // 引入 _start
global_asm!(concat!(
    r#"
    .section .data
    .global _user_img_start
    .global _user_img_end
_user_img_start:
    .incbin ""#,
    env!("USER_IMG"),
    r#""
_user_img_end:
"#
));
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
    println!(
        "free physical memory ppn = [{:#x}, {:#x})",
        ((end as usize - KERNEL_BEGIN_VADDR + KERNEL_BEGIN_PADDR) >> 12) + 3,
        PHYSICAL_MEMORY_END >> 12
    );
    crate::memory::init(
        ((end as usize - KERNEL_BEGIN_VADDR + KERNEL_BEGIN_PADDR) >> 12) + 3,
        PHYSICAL_MEMORY_END >> 12
    );
    //write_readonly_test();
    //execute_unexecutable_test();
    //read_invalid_test();
    //frame_allocating_test();
    //dynamic_allocating_test();
    //test_page_table();
    crate::process::init();
    crate::process::run();
    crate::clock::init();
//    write_readonly_test();
    loop {}
}


fn write_readonly_test() {
    extern "C" {
        fn srodata();
    }
    unsafe {
        let ptr = srodata as usize as *mut u8;
        *ptr = 0xab;
    }
}

fn execute_unexecutable_test() {
    extern "C" {
        fn sbss();
    }
    unsafe {
        asm!("jr $0" :: "r"(sbss as usize) :: "volatile");
    }
}

fn read_invalid_test() {
    println!("{}", unsafe { *(0x12345678 as usize as *const u8) });
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

fn frame_allocating_test() {
    println!("alloc {:x?}", alloc_frame());
    let f = alloc_frame();
    println!("alloc {:x?}", f);
    println!("alloc {:x?}", alloc_frame());
    println!("dealloc {:x?}", f);
    dealloc_frame(f.unwrap());
    println!("alloc {:x?}", alloc_frame());
    println!("alloc {:x?}", alloc_frame());
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
