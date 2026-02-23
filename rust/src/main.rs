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

// use riscv::register;
use spinning_top::RwSpinlock;
use spinning_top::Spinlock;

global_asm!(include_str!("init.s"));

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("\x1b[31mKERNEL PANIC:\x1b[0m {info}");
    loop {}
}

/// Main program function
#[no_mangle]
unsafe extern "C" fn machine_main() -> () {
    // Initialize kernel allocator
    kalloc::init();

    use alloc::vec::Vec;

    let vector: Spinlock<Vec<usize>> = Spinlock::new(vec![]);
    vector.lock().push(42);

    println!("vector[0] = {}", vector.lock()[0]);
    loop {}
}
