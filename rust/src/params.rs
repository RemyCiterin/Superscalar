pub const KALLOC_SIZE: usize = 10 * 1024 * 1024;

pub const SDCARD_BASE: usize = 0x1000_1000;

pub const RAM_BEGIN: usize = 0x8000_0000;
pub const RAM_SIZE: usize = 32 * 1024 * 1024;

pub const MEMORY_END: usize = RAM_BEGIN + RAM_SIZE;

pub const UART_BASE: usize = 0x1000_0000;

pub const PAGE_SIZE: usize = 0x1000;
pub const MEGAPAGE_SIZE: usize = 0x40_0000;
