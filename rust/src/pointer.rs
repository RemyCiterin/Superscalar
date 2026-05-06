//! This file define all the types of memory address:
//! - Physical memory addresses
//! - Virtual memory addresses
//! - Page pointer

use core::{
    fmt,
    mem,
    ops::{Add, AddAssign, Sub, SubAssign},
    slice,
};

use crate::{params::*};

// Physical address
#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct PAddr(pub usize);

// Virtual address
#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct VAddr(pub usize);

// Physical Page Number
#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct Page(pub usize);

impl fmt::Debug for PAddr {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "PAddr({:x})", self.0)
    }
}

impl fmt::Debug for VAddr {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "VAddr({:x})", self.0)
    }
}

impl fmt::Debug for Page {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "Page({:x})", self.0)
    }
}

impl PAddr {
    pub fn as_ref<T>(&self) -> &'static T {
        unsafe { (self.0 as *const T).as_ref().unwrap() }
    }

    pub fn as_mut<T>(&self) -> &'static mut T {
        unsafe { (self.0 as *mut T).as_mut().unwrap() }
    }

    pub fn ppn(&self) -> Page {
        Page(self.0 / PAGE_SIZE)
    }

    // return the offset of the physical address in a page
    pub fn offset(&self) -> usize {
        self.0 % PAGE_SIZE
    }

    pub fn as_slice<T>(&self, size: usize) -> &'static [T] {
        unsafe {
            slice::from_raw_parts(
                self.0 as *const T,
                size
            )
        }
    }

    pub fn as_slice_mut<T>(&self, size: usize) -> &'static mut [T] {
        unsafe {
            slice::from_raw_parts_mut(
                self.0 as *mut T,
                size
            )
        }
    }
}

impl VAddr {
    pub fn as_ref<T>(&self) -> &'static T {
        unsafe { (self.0 as *const T).as_ref().unwrap() }
    }

    pub fn as_mut<T>(&self) -> &'static mut T {
        unsafe { (self.0 as *mut T).as_mut().unwrap() }
    }

    pub fn ppn(&self) -> Page {
        Page(self.0 / PAGE_SIZE)
    }

    // return the offset of the physical address in a page
    pub fn offset(&self) -> usize {
        self.0 % PAGE_SIZE
    }

    pub fn vpn(&self, level: usize) -> usize {
        match level {
            0 => (self.0 >> 12) & ((1 << 10) - 1),
            1 => (self.0 >> 22) & ((1 << 10) - 1),
            _ => panic!(),
        }
    }
}

impl Page {
    pub fn as_bytes(&self) -> &'static [u8] {
        unsafe {
            slice::from_raw_parts(
                (self.0 * PAGE_SIZE) as *const u8,
                PAGE_SIZE / mem::size_of::<u8>(),
            )
        }
    }

    pub fn as_bytes_mut(&self) -> &'static mut [u8] {
        unsafe {
            slice::from_raw_parts_mut(
                (self.0 * PAGE_SIZE) as *mut u8,
                PAGE_SIZE / mem::size_of::<u8>(),
            )
        }
    }

    pub fn as_ref<T>(&self) -> &'static [T] {
        assert!(mem::align_of::<T>() <= PAGE_SIZE);
        assert!(mem::size_of::<T>() <= PAGE_SIZE);
        unsafe {
            slice::from_raw_parts(
                (self.0 * PAGE_SIZE) as *const T,
                PAGE_SIZE / mem::size_of::<T>(),
            )
        }
    }

    pub fn as_mut<T>(&self) -> &'static [T] {
        assert!(mem::align_of::<T>() <= PAGE_SIZE);
        assert!(mem::size_of::<T>() <= PAGE_SIZE);
        unsafe {
            slice::from_raw_parts_mut(
                (self.0 * PAGE_SIZE) as *mut T,
                PAGE_SIZE / mem::size_of::<T>(),
            )
        }
    }

    //pub fn as_pte(&self) -> &'static [vm::Entry] {
    //    unsafe {
    //        slice::from_raw_parts(
    //            (self.0 * PAGE_SIZE) as *const vm::Entry,
    //            PAGE_SIZE / mem::size_of::<vm::Entry>(),
    //        )
    //    }
    //}

    //pub fn as_pte_mut(&self) -> &'static mut [vm::Entry] {
    //    unsafe {
    //        slice::from_raw_parts_mut(
    //            (self.0 * PAGE_SIZE) as *mut vm::Entry,
    //            PAGE_SIZE / mem::size_of::<vm::Entry>(),
    //        )
    //    }
    //}
}

impl Add<usize> for PAddr {
    type Output = Self;
    fn add(self, rhs: usize) -> Self {
        Self(self.0 + rhs)
    }
}

impl Add<usize> for VAddr {
    type Output = Self;
    fn add(self, rhs: usize) -> Self {
        Self(self.0 + rhs)
    }
}

impl Add<usize> for Page {
    type Output = Self;
    fn add(self, rhs: usize) -> Self {
        Self(self.0 + rhs)
    }
}

impl Sub<usize> for PAddr {
    type Output = Self;
    fn sub(self, rhs: usize) -> Self {
        Self(self.0 - rhs)
    }
}

impl Sub<usize> for VAddr {
    type Output = Self;
    fn sub(self, rhs: usize) -> Self {
        Self(self.0 - rhs)
    }
}

impl Sub<usize> for Page {
    type Output = Self;
    fn sub(self, rhs: usize) -> Self {
        Self(self.0 - rhs)
    }
}

impl AddAssign<usize> for PAddr {
    fn add_assign(&mut self, rhs: usize) {
        *self = *self + rhs;
    }
}

impl AddAssign<usize> for VAddr {
    fn add_assign(&mut self, rhs: usize) {
        *self = *self + rhs;
    }
}

impl AddAssign<usize> for Page {
    fn add_assign(&mut self, rhs: usize) {
        *self = *self + rhs;
    }
}

impl SubAssign<usize> for PAddr {
    fn sub_assign(&mut self, rhs: usize) {
        *self = *self - rhs;
    }
}

impl SubAssign<usize> for VAddr {
    fn sub_assign(&mut self, rhs: usize) {
        *self = *self - rhs;
    }
}

impl SubAssign<usize> for Page {
    fn sub_assign(&mut self, rhs: usize) {
        *self = *self - rhs;
    }
}

impl From<usize> for VAddr {
    fn from(ptr: usize) -> Self {
        Self(ptr)
    }
}

impl From<usize> for PAddr {
    fn from(ptr: usize) -> Self {
        Self(ptr)
    }
}

impl From<usize> for Page {
    fn from(ptr: usize) -> Self {
        Self(ptr)
    }
}

impl From<VAddr> for usize {
    fn from(ptr: VAddr) -> usize {
        ptr.0
    }
}

impl From<PAddr> for usize {
    fn from(ptr: PAddr) -> usize {
        ptr.0
    }
}

impl From<Page> for usize {
    fn from(ptr: Page) -> usize {
        ptr.0
    }
}

impl From<Page> for PAddr {
    fn from(ppn: Page) -> PAddr {
        PAddr(ppn.0 * PAGE_SIZE)
    }
}
