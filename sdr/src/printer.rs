use core::fmt::{self, Write};
use core::ptr::{write_volatile};
use crate::params::*;

struct Writer;

const UART_TX: *mut u8 = UART_BASE as *mut u8;
const UART_LSR: *mut u8 = (UART_BASE+0x05) as *mut u8;
const UART_LSR_EMPTY_MASK: u8 = 0x40;

const UART_READY: *mut u8 = (UART_BASE + 1) as *mut u8;

pub fn putc(c: u8) {
    unsafe {write_volatile(UART_TX, u8::from(c));}
}

impl Write for Writer {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        for c in s.bytes() {
            putc(c);
        }

        Ok(())
    }
}

pub fn print(args: fmt::Arguments) {
    Writer.write_fmt(args).unwrap();
}

#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => ($crate::printer::print(format_args!($($arg)*)));
}

#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($($arg:tt)*) => ($crate::print!("{}\n", format_args!($($arg)*)));
}
