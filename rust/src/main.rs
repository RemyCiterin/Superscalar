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
mod pointer;
mod params;
mod kalloc;
mod palloc;
mod process;

use core::{
    arch::{global_asm, asm},
    panic::PanicInfo,
};

use spinning_top::RwSpinlock;
use alloc::sync::Arc;
use process::*;

lazy_static!{
    static ref PROCESSES: RwSpinlock<Vec<Arc<Process>>> = RwSpinlock::new(vec![]);
}

use riscv::register;

global_asm!(include_str!("init.s"));
global_asm!(include_str!("trampoline.s"));

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

    static ref VECTOR: RwSpinlock<Vec<usize>> = RwSpinlock::new(vec![]);
}

pub mod gf {
    pub fn mul(x: u8, y: u8) -> u8 {
        let ret: u8;
        unsafe {
            core::arch::asm!(
                ".insn r CUSTOM_0, 0x1, 0x0, {ret}, {x}, {y}",
                ret = out(reg) ret,
                x = in(reg) x,
                y = in(reg) y,
            );
        }
        return ret;
    }

    pub fn div(x: u8, y: u8) -> u8 {
        let ret: u8;
        unsafe {
            core::arch::asm!(
                ".insn r CUSTOM_0, 0x2, 0x0, {ret}, {x}, {y}",
                ret = out(reg) ret,
                x = in(reg) x,
                y = in(reg) y,
            );
        }
        return ret;
    }
}

/// Main program function
#[no_mangle]
unsafe extern "C" fn machine_main() -> () {
    // Initialize kernel allocator
    let tp = register::mhartid::read();
    if tp == 0 {
        // Init kernel allocator
        kalloc::init();

        // Init page allocator
        palloc::init();

        // Inform the other threads that they can start
        START.store(true, Ordering::Release);
    }

    // Wait until all the shared ressources are initialized
    while !START.load(Ordering::Acquire) {}

    riscv::register::mtvec::write(
        user_trap as usize, register::utvec::TrapMode::Direct);

    PROCESSES.write().push(Arc::new(Process::new(user_main1).unwrap()));
    PROCESSES.write().push(Arc::new(Process::new(user_main2).unwrap()));

    loop {
        for p in PROCESSES.write().iter_mut() {
            p.run();
            p.ctx.write().pc += 4;
        }
    }
}

#[inline]
pub fn ifence() { unsafe {asm!("fence.i")} }

#[inline]
pub fn ecall() { unsafe{asm!("ecall")} }

pub fn user_main1(_: usize) -> () {
    for i in 0..256 {
        if i % 16 == 0 { print!("\n\t"); }
        print!("'h{:x}, ", gf::div(1, i as u8));
    }

    println!();

    loop {ecall()}
}

pub fn user_main2(pid: usize) -> () {
    for i in 0..10 {
        println!("Hello world {i} from user: {pid}");
        ecall();
    }

    loop {ecall()}
}
