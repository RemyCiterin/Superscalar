//! Page allocator

use crate::{constant, mutex::*, pointer::*};

pub struct PageAlloc {
    node: Option<PhyPageNum>,
    number_alloc: usize,
}

impl PageAlloc {
    pub const fn new() -> Self {
        Self {
            node: None,
            number_alloc: 0,
        }
    }

    pub fn init(&mut self, first: PhyPageNum, last: PhyPageNum) {
        println!("palloc: first {:#x} last {:#x}", usize::from(first), usize::from(last));
        for ppn in usize::from(first)..usize::from(last) {
            self.free(PhyPageNum::from(ppn));
        }
    }

    pub fn free(&mut self, ppn: PhyPageNum) {
        let x: &mut Option<PhyPageNum> = PhysAddr::from(ppn).as_mut();
        *x = self.node;
        self.node = Some(ppn);
    }

    pub fn alloc(&mut self) -> Option<PhyPageNum> {
        self.number_alloc += 1;

        match self.node.clone() {
            Some(ppn) => {
                let x: &Option<PhyPageNum> = PhysAddr::from(ppn).as_ref();
                self.node = x.clone();
                Some(ppn)
            }
            None => None,
        }
    }
}

pub static PAGE_ALLOCATOR: Mutex<PageAlloc> = Mutex::new(PageAlloc::new());

// Initialize the kernel page allocator
pub fn init() {
    extern "C" {
        fn KALLOC_BUFFER();
    }

    println!("palloc base: 0x{:x}", KALLOC_BUFFER as usize);

    PAGE_ALLOCATOR.lock().init(
        PhysAddr::from(KALLOC_BUFFER as usize + constant::KALLOC_SIZE).ppn() + 1,
        PhysAddr::from(constant::MEMORY_SIZE).ppn() - 1,
    );
}

pub fn alloc() -> Option<PhyPageNum> {
    PAGE_ALLOCATOR.lock().alloc()
}

pub fn free(ppn: PhyPageNum) {
    PAGE_ALLOCATOR.lock().free(ppn)
}

pub fn count() -> usize {
    PAGE_ALLOCATOR.lock().number_alloc
}
