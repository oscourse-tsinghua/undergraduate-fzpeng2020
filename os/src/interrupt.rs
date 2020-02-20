use crate::context::TrapFrame;
use riscv::register::{ sstatus, stvec, sscratch };
use crate::clock::{ TICK , clock_set_next_event};
use riscv::register::scause::{ Trap, Exception, Interrupt};
use crate::process::tick;

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
        Trap::Exception(Exception::InstructionPageFault) => page_fault(tf),
        Trap::Exception(Exception::UserEnvCall) => syscall(tf),
        Trap::Exception(Exception::LoadPageFault) => page_fault(tf),
        Trap::Exception(Exception::StorePageFault) => page_fault(tf),
        _ => panic!("unexpected trap!"),
    }
}

fn page_fault(tf: &mut TrapFrame) {
    println!("{:?} @ {:#x} instrction = {:#x}", tf.scause.cause(), tf.stval, tf.sepc);
    panic!("page fault");
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

fn syscall(tf: &mut TrapFrame) {
    // 返回后跳转到 ecall 下一条指令
    tf.sepc += 4;
    let ret = crate::syscall::syscall(
        tf.x[17],
        [tf.x[10], tf.x[11], tf.x[12]],
        tf
    );
    tf.x[10] = ret as usize;
}

#[inline(always)]
pub fn disable_and_store() -> usize {
    let sstatus: usize;
    unsafe {
        asm!("csrci sstatus, 1 << 1" : "=r"(sstatus) ::: "volatile");
    }
    sstatus
}

#[inline(always)]
pub fn restore(flags: usize) {
    unsafe {
        asm!("csrs sstatus, $0" :: "r"(flags) :: "volatile");
    }
}

#[inline(always)]
pub fn enable_and_wfi() {
    unsafe {
        asm!("csrsi sstatus, 1 << 1; wfi" :::: "volatile");
    }
}
