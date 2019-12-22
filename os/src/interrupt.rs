use crate::context::TrapFrame;
use riscv::register::{ sstatus, stvec, sscratch };
use crate::clock::{ TICK, clock_set_next_event};
use riscv::register::scause::{ Trap, Exception, Interrupt};

global_asm!(include_str!("trap/trap.asm"));

pub fn init() {
    extern {
        fn __alltraps();
    }
    unsafe {
        sscratch::write(0); 
        stvec::write(__alltraps as usize, stvec::TrapMode::Direct);
        sstatus::set_sie();
    }
    println!("++++setup interrupt !++++");
}

#[no_mangle]
pub fn rust_trap(tf: &mut TrapFrame) {
    match tf.scause.cause() {
        Trap::Exception(Exception::Breakpoint) => breakpoint(),
        Trap::Interrupt(Interrupt::SupervisorTimer) => super_timer(),
        _ => panic!("unexpected trap"),
    }
}

fn breakpoint() {
    panic!("a breakpoint set by kernel");
}

fn super_timer() {
    clock_set_next_event();
    unsafe{
        TICK = TICK + 1;
        if TICK % 10 == 0 {
            println!("10 ticks!");
        }
    }
}

