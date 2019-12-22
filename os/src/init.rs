//use crate::sbi;
//use crate::io;

global_asm!(include_str!("boot/entry.asm")); // 引入 _start


#[no_mangle]
pub fn rust_main() -> ! {
    println!("rcore_step_by_step os is running!", );
    crate::interrupt::init();
    crate::clock::init();
    loop {}
}
