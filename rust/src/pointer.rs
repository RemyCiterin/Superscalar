//! This file define all the types of memory address:
//! - Physical memory addresses
//! - Virtual memory addresses
//! - PhyPageNum pointer

use core::{
    fmt,
    mem,
    ops::{Add, AddAssign, Sub, SubAssign},
    slice,
};

use crate::{constant, vm};

// Physical address
#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct PhysAddr(pub usize);

// Virtual address
#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct VirtAddr(pub usize);

// Physical Page Number
#[derive(Copy, Clone, Ord, PartialOrd, Eq, PartialEq)]
pub struct PhyPageNum(pub usize);

impl fmt::Debug for PhysAddr {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "PhysAddr({:x})", self.0)
    }
}

impl fmt::Debug for VirtAddr {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "VirtAddr({:x})", self.0)
    }
}

impl fmt::Debug for PhyPageNum {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "PhyPageNum({:x})", self.0)
    }
}

impl PhysAddr {
    pub fn as_ref<T>(&self) -> &'static T {
        unsafe { (self.0 as *const T).as_ref().unwrap() }
    }

    pub fn as_mut<T>(&self) -> &'static mut T {
        unsafe { (self.0 as *mut T).as_mut().unwrap() }
    }

    pub fn ppn(&self) -> PhyPageNum {
        PhyPageNum(self.0 / constant::PAGE_SIZE)
    }

    // return the offset of the physical address in a page
    pub fn offset(&self) -> usize {
        self.0 % constant::PAGE_SIZE
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

impl VirtAddr {
    pub fn as_ref<T>(&self) -> &'static T {
        unsafe { (self.0 as *const T).as_ref().unwrap() }
    }

    pub fn as_mut<T>(&self) -> &'static mut T {
        unsafe { (self.0 as *mut T).as_mut().unwrap() }
    }

    pub fn ppn(&self) -> PhyPageNum {
        PhyPageNum(self.0 / constant::PAGE_SIZE)
    }

    // return the offset of the physical address in a page
    pub fn offset(&self) -> usize {
        self.0 % constant::PAGE_SIZE
    }

    pub fn vpn(&self, level: usize) -> usize {
        match level {
            0 => (self.0 >> 12) & ((1 << 9) - 1),
            1 => (self.0 >> 21) & ((1 << 9) - 1),
            2 => (self.0 >> 30) & ((1 << 9) - 1),
            _ => panic!(),
        }
    }
}

impl PhyPageNum {
    pub fn as_bytes(&self) -> &'static [u8] {
        unsafe {
            slice::from_raw_parts(
                (self.0 * constant::PAGE_SIZE) as *const u8,
                constant::PAGE_SIZE / mem::size_of::<u8>(),
            )
        }
    }

    pub fn as_bytes_mut(&self) -> &'static mut [u8] {
        unsafe {
            slice::from_raw_parts_mut(
                (self.0 * constant::PAGE_SIZE) as *mut u8,
                constant::PAGE_SIZE / mem::size_of::<u8>(),
            )
        }
    }

    pub fn as_pte(&self) -> &'static [vm::Entry] {
        unsafe {
            slice::from_raw_parts(
                (self.0 * constant::PAGE_SIZE) as *const vm::Entry,
                constant::PAGE_SIZE / mem::size_of::<vm::Entry>(),
            )
        }
    }

    pub fn as_pte_mut(&self) -> &'static mut [vm::Entry] {
        unsafe {
            slice::from_raw_parts_mut(
                (self.0 * constant::PAGE_SIZE) as *mut vm::Entry,
                constant::PAGE_SIZE / mem::size_of::<vm::Entry>(),
            )
        }
    }
}

impl Add<usize> for PhysAddr {
    type Output = Self;
    fn add(self, rhs: usize) -> Self {
        Self(self.0 + rhs)
    }
}

impl Add<usize> for VirtAddr {
    type Output = Self;
    fn add(self, rhs: usize) -> Self {
        Self(self.0 + rhs)
    }
}

impl Add<usize> for PhyPageNum {
    type Output = Self;
    fn add(self, rhs: usize) -> Self {
        Self(self.0 + rhs)
    }
}

impl Sub<usize> for PhysAddr {
    type Output = Self;
    fn sub(self, rhs: usize) -> Self {
        Self(self.0 - rhs)
    }
}

impl Sub<usize> for VirtAddr {
    type Output = Self;
    fn sub(self, rhs: usize) -> Self {
        Self(self.0 - rhs)
    }
}

impl Sub<usize> for PhyPageNum {
    type Output = Self;
    fn sub(self, rhs: usize) -> Self {
        Self(self.0 - rhs)
    }
}

impl AddAssign<usize> for PhysAddr {
    fn add_assign(&mut self, rhs: usize) {
        *self = *self + rhs;
    }
}

impl AddAssign<usize> for VirtAddr {
    fn add_assign(&mut self, rhs: usize) {
        *self = *self + rhs;
    }
}

impl AddAssign<usize> for PhyPageNum {
    fn add_assign(&mut self, rhs: usize) {
        *self = *self + rhs;
    }
}

impl SubAssign<usize> for PhysAddr {
    fn sub_assign(&mut self, rhs: usize) {
        *self = *self - rhs;
    }
}

impl SubAssign<usize> for VirtAddr {
    fn sub_assign(&mut self, rhs: usize) {
        *self = *self - rhs;
    }
}

impl SubAssign<usize> for PhyPageNum {
    fn sub_assign(&mut self, rhs: usize) {
        *self = *self - rhs;
    }
}

impl From<usize> for VirtAddr {
    fn from(ptr: usize) -> Self {
        Self(ptr)
    }
}

impl From<usize> for PhysAddr {
    fn from(ptr: usize) -> Self {
        Self(ptr)
    }
}

impl From<usize> for PhyPageNum {
    fn from(ptr: usize) -> Self {
        Self(ptr)
    }
}

impl From<VirtAddr> for usize {
    fn from(ptr: VirtAddr) -> usize {
        ptr.0
    }
}

impl From<PhysAddr> for usize {
    fn from(ptr: PhysAddr) -> usize {
        ptr.0
    }
}

impl From<PhyPageNum> for usize {
    fn from(ptr: PhyPageNum) -> usize {
        ptr.0
    }
}

impl From<PhyPageNum> for PhysAddr {
    fn from(ppn: PhyPageNum) -> PhysAddr {
        PhysAddr(ppn.0 * constant::PAGE_SIZE)
    }
}
