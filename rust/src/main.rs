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
    arch::global_asm,
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

use lazy_static::lazy_static;

lazy_static!{
    static ref START : Spinlock<bool> = Spinlock::new(false);
    static ref VECTOR: Spinlock<Vec<usize>> = Spinlock::new(vec![]);
}

//static mut START: Spinlock<bool> = Spinlock::new(false);

/// Main program function
#[no_mangle]
unsafe extern "C" fn machine_main() -> () {
    // Initialize kernel allocator
    let tp = register::mhartid::read();
    if tp == 0 {
        kalloc::init();
        *START.lock() = true;
    }

    while !*START.lock() {}

    VECTOR.lock().push(42);

    {
        let guard = VECTOR.lock();
        println!("vector[0] = {:?}", guard);
        println!("{}", tp);
        println!();
        drop(guard);
    }

    loop {}
}
