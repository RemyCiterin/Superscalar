use crate::pointer::PhysAddr;
// use alloc::vec::Vec;
// use alloc::collections::LinkedList;
// use alloc::collections::BTreeSet;
// use alloc::boxed::Box;

pub const SCREEN_BASE: usize = 0x40000000;

pub const RED_GREEN_PALETTE : [u8;8] = [0x0,0x24,0x49,0x6d,0x92,0xb6,0xdb,0xff];
pub const BLUE_PALETTE : [u8;4] = [0x0,0x55,0xaa,0xff];

#[derive(Clone, Copy, PartialEq, PartialOrd, Eq, Ord, Hash)]
pub struct Pixel {
    byte: u8
}

impl Pixel {
    pub fn new(mut red: u8, mut green: u8, mut blue: u8) -> Pixel {
        green = (green & 0b11100000) >> 3;
        red = red & 0b11100000;
        blue = blue >> 6;

        Pixel { byte: red | green | blue }
    }

    pub fn red(&self) -> u8 {
        RED_GREEN_PALETTE[(self.byte >> 5) as usize]
    }

    pub fn green(&self) -> u8 {
        RED_GREEN_PALETTE[((self.byte >> 2) & 7) as usize]
    }

    pub fn blue(&self) -> u8 {
        BLUE_PALETTE[(self.byte & 3) as usize]
    }

    pub fn write_frame_buffer(&self, x: usize, y: usize) {
        let screen: &'static mut [u8] =
            PhysAddr::from(SCREEN_BASE).as_slice_mut(320*240);
        screen[x + y * 320] = self.byte;
    }
}
