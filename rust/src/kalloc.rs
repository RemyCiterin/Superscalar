use core::alloc::Layout;

use crate::linked_list_allocator::LockedHeap;

use crate::constant::KALLOC_SIZE;

#[global_allocator]
pub static KERNEL_ALLOCATOR: LockedHeap = LockedHeap::empty();

extern "C" {
    static mut KALLOC_BUFFER: [u8; KALLOC_SIZE];
}

#[allow(static_mut_refs)]
pub fn init() {
    unsafe {
        println!("kalloc buffer base: {:p}", KALLOC_BUFFER.as_ptr());
        KERNEL_ALLOCATOR
            .init(KALLOC_BUFFER.as_mut_ptr(), KALLOC_SIZE);
    }
}

#[alloc_error_handler]
pub fn handle_alloc_error(layout: Layout) -> ! {
    panic!("kalloc fail: {:?}", layout);
}
