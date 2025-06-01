// Copied from https://github.com/xiaoyang-sde/rust-kernel-riscv/kernel/src/sync/mutex.rs

use core::{
    cell::UnsafeCell,
    marker::PhantomData,
    ops::{Deref, DerefMut},
};

/// The `Mutex` struct is a mutual exclusion primitive useful for protecting
/// shared data, which implements the [Send] and [Sync] traits.
pub struct Mutex<T> {
    lock: UnsafeCell<bool>,
    cell: UnsafeCell<T>,
    phantom: PhantomData<T>,
}

impl<T> Mutex<T> {
    /// Creates a new `Mutex` with the given initial value.
    pub const fn new(value: T) -> Self {
        Self {
            lock: UnsafeCell::new(false),
            cell: UnsafeCell::new(value),
            phantom: PhantomData,
        }
    }

    pub fn lock(&self) -> MutexGuard<T> {
        if unsafe {*self.lock.get()} {loop {}}
        unsafe {*self.lock.get() = true;}
        MutexGuard::new(self)
    }

    /// Releases the lock on the `Mutex`.
    pub fn unlock(&self) {
        unsafe {*self.lock.get() = false;}
    }
}

unsafe impl<T> Sync for Mutex<T> {}

unsafe impl<T> Send for Mutex<T> {}

/// The `MutexGuard` struct is an RAII guard to allow scoped unlock of the lock.
/// When the guard goes out of scope, the [Mutex] it guards will be unlocked.
pub struct MutexGuard<'a, T> {
    mutex: &'a Mutex<T>,
}

impl<'a, T> MutexGuard<'a, T> {
    /// Creates a new `MutexGuard` for the given [Mutex].
    pub fn new(mutex: &'a Mutex<T>) -> Self {
        Self { mutex }
    }
}

impl<'a, T> Deref for MutexGuard<'a, T> {
    type Target = T;

    fn deref(&self) -> &T {
        unsafe { &*self.mutex.cell.get() }
    }
}

impl<'a, T> DerefMut for MutexGuard<'a, T> {
    fn deref_mut(&mut self) -> &mut T {
        unsafe { &mut *self.mutex.cell.get() }
    }
}

impl<'a, T> Drop for MutexGuard<'a, T> {
    fn drop(&mut self) {
        self.mutex.unlock();
    }
}
