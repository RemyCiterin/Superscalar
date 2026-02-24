#![no_std]
#![no_main]
#![feature(alloc_error_handler)]
#![feature(allocator_api)]
#![feature(alloc_layout_extra)]
#![feature(get_mut_unchecked)]
#![allow(dead_code)]

#[macro_use]
extern crate alloc;

#[macro_use]
mod printer;
mod params;
mod kalloc;

use core::{
    arch::{global_asm, asm},
    panic::PanicInfo,
};

use riscv::register;
//use spinning_top::RwSpinlock;
use spinning_top::Spinlock;

global_asm!(include_str!("init.s"));

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("\x1b[31mKERNEL PANIC:\x1b[0m {info}");
    loop {}
}

use alloc::vec::Vec;
use core::sync::atomic::{AtomicBool, Ordering};

use lazy_static::lazy_static;

lazy_static!{
    // Control if the shared ressources has been initialized, thread 0 is in charge of it
    static ref START : AtomicBool = AtomicBool::new(false);

    static ref VECTOR: Spinlock<Vec<usize>> = Spinlock::new(vec![]);
}

/// Main program function
#[no_mangle]
unsafe extern "C" fn machine_main() -> () {
    // Initialize kernel allocator
    let tp = register::mhartid::read();
    if tp == 0 {
        // Init kernel allocator
        kalloc::init();

        // Inform the other threads that they can start
        START.store(true, Ordering::Release);
    }

    // Wait until all the shared ressources are initialized
    while !START.load(Ordering::Acquire) {}

    let mut cycle = register::mcycle::read();
    let mut instr = register::minstret::read();
    VECTOR.lock().push(42);

    {
        let guard = VECTOR.lock();
        println!("vector[0] = {:?}", guard);
        cycle = register::mcycle::read() - cycle;
        instr = register::minstret::read() - instr;
        println!("{} cycle: {} instr: {}", tp, cycle, instr);
        println!();

        for _ in 0..10000 { asm!("nop"); }

        drop(guard);
    }

    loop {}
}
