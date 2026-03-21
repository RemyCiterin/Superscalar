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
mod demodulation;

use demodulation::frontend::*;
use demodulation::backend::*;
use demodulation::fixed::*;

use core::{
    arch::{global_asm, asm},
    panic::PanicInfo,
};

use riscv::register;
use spinning_top::RwSpinlock;
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

    static ref VECTOR: RwSpinlock<Vec<usize>> = RwSpinlock::new(vec![]);
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
    VECTOR.write().push(42);

    {
        let guard = VECTOR.read();
        println!("vector[0] = {:?}", guard);
        cycle = register::mcycle::read() - cycle;
        instr = register::minstret::read() - instr;
        println!("{} cycle: {} instr: {}", tp, cycle, instr);
        println!();

        drop(guard);
    }

    let bytes_buffer = include_bytes!("wave.txt");
    let (b1, float_buffer, b2) = bytes_buffer.align_to::<f32>();
    assert!(b1.len() == 0);
    assert!(b2.len() == 0);

    println!("{}", float_buffer.len());

    let mut fixed_buffer = alloc::vec::Vec::<fixed32>::new();
    for x in &float_buffer[0..4096] { fixed_buffer.push(fixed32::from(*x)); }
    //for x in float_buffer { fixed_buffer.push(fixed32::from(*x)); }

    println!("{} samples copied", fixed_buffer.len());

    let sample_rate: f32 = 44100. / 8.;
    let freq: f32 = 5000. / 8.;
    let sample_per_symbol: f32 = 100.;
    let decimation: usize = 16;

    let frontend_config = FrontendConfig{
        decimation,
        backman_coefs: 50,
        carrier_freq: fixed32::from(freq),
        carrier_pll_p_gain: fixed32::from(0.1),
        carrier_pll_i_gain: fixed32::from(0.001),
        averager_gain: fixed32::from(0.01),
        sample_rate: fixed32::from(sample_rate),
    };

    let backend_config = BackendConfig{
        sample_rate: fixed32::from(sample_rate),
        symbol_rate: fixed32::from(sample_rate / sample_per_symbol),
        symbol_pll_p_gain: fixed32::from(0.05),
        symbol_pll_i_gain: fixed32::from(0.001),
        decimation,
    };

    let mut frontend = Frontend::new(frontend_config);
    let mut backend = BackendDBPSK::new(backend_config);

    let mut symbols = alloc::vec::Vec::<i8>::new();

    let mut cycles = riscv::register::mcycle::read();
    let mut instrs = riscv::register::minstret::read();

    frontend.run(&fixed_buffer, &mut symbols, &mut backend);

    cycles = riscv::register::mcycle::read() - cycles;
    instrs = riscv::register::minstret::read() - instrs;

    println!("frontend finished after {cycles} cycles and {instrs} instructions!");

    for x in symbols {
        if x < 0 { print!("-"); }
        else { print!("{}", x); }
    }

    println!();

    loop {}
}
