//use crate::sbi;
//use crate::io;

global_asm!(include_str!("boot/entry.asm")); // 引入 _start


#[no_mangle]
pub fn rust_main() -> ! {
    let a = "Hello";
    let b = "World";
    println!("{}, {}!", a, b);
    panic!("End of rust_main");
}
