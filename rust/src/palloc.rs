//! Page allocator

use lazy_static::lazy_static;
use crate::{params::*, pointer::*};
use spinning_top::Spinlock;

pub struct PageAlloc {
    node: Option<Page>,
    number_alloc: usize,
    size: usize,
}

impl PageAlloc {
    pub const fn new() -> Self {
        Self {
            node: None,
            number_alloc: 0,
            size: 0,
        }
    }

    pub fn init(&mut self, first: Page, last: Page) {
        println!("palloc: first {:#x} last {:#x}", usize::from(first), usize::from(last));

        for ppn in usize::from(first)..usize::from(last) {
            self.free(Page::from(ppn));
        }

        self.size = 0;
    }

    pub fn free(&mut self, ppn: Page) {
        let x: &mut Option<Page> = PAddr::from(ppn).as_mut();
        *x = self.node;
        self.node = Some(ppn);
        self.size -= 1;
    }

    pub fn alloc(&mut self) -> Option<Page> {
        self.number_alloc += 1;
        self.size += 1;

        match self.node.clone() {
            Some(ppn) => {
                let x: &Option<Page> = PAddr::from(ppn).as_ref();
                self.node = x.clone();
                Some(ppn)
            }
            None => None,
        }
    }
}

lazy_static!{
    static ref PAGE_ALLOCATOR: Spinlock<PageAlloc> = Spinlock::new(PageAlloc::new());
}

// Initialize the kernel page allocator
pub fn init() {
    //extern "C" {
    //    fn KALLOC_BUFFER();
    //}
    use crate::kalloc;
    let kalloc_base = unsafe{&kalloc::KALLOC_BUFFER[0] as &u8 as *const u8 as usize};

    println!("palloc base: 0x{:x}", kalloc_base);

    PAGE_ALLOCATOR.lock().init(
        PAddr::from(kalloc_base + KALLOC_SIZE).ppn() + 1,
        PAddr::from(MEMORY_END).ppn() - 1,
    );
}

pub fn alloc() -> Option<Page> {
    PAGE_ALLOCATOR.lock().alloc()
}

pub fn available() -> bool {
    !PAGE_ALLOCATOR.is_locked()
}

pub fn free(ppn: Page) {
    PAGE_ALLOCATOR.lock().free(ppn);
}

pub fn count() -> usize {
    PAGE_ALLOCATOR.lock().number_alloc
}

pub fn size() -> usize {
    PAGE_ALLOCATOR.lock().size
}
