use spinning_top::RwSpinlock;
use crate::pointer;
use crate::palloc;

#[repr(C)]
pub struct HardwareContext {
    pub ra: usize,
    pub sp: usize,
    pub gp: usize,
    pub tp: usize,
    pub t0: usize,
    pub t1: usize,
    pub t2: usize,
    pub s0: usize,
    pub s1: usize,
    pub a0: usize,
    pub a1: usize,
    pub a2: usize,
    pub a3: usize,
    pub a4: usize,
    pub a5: usize,
    pub a6: usize,
    pub a7: usize,
    pub s2: usize,
    pub s3: usize,
    pub s4: usize,
    pub s5: usize,
    pub s6: usize,
    pub s7: usize,
    pub s8: usize,
    pub s9: usize,
    pub s10: usize,
    pub s11: usize,
    pub t3: usize,
    pub t4: usize,
    pub t5: usize,
    pub t6: usize,
    pub pc: usize,
    kernel_stack: usize,
}

impl HardwareContext {
    pub fn new(pc: usize, stack: &[usize]) -> HardwareContext {
        HardwareContext{
            sp: &stack[0] as &usize as *const usize as usize,
            ra: 0,
            gp: 0,
            tp: 0,
            t0: 0,
            t1: 0,
            t2: 0,
            s0: 0,
            s1: 0,
            a0: 0,
            a1: 0,
            a2: 0,
            a3: 0,
            a4: 0,
            a5: 0,
            a6: 0,
            a7: 0,
            s2: 0,
            s3: 0,
            s4: 0,
            s5: 0,
            s6: 0,
            s7: 0,
            s8: 0,
            s9: 0,
            s10: 0,
            s11: 0,
            t3: 0,
            t4: 0,
            t5: 0,
            t6: 0,
            pc: pc,
            kernel_stack: 0,
        }
    }
}

extern "C" {
    pub fn run_user(ctx: &mut HardwareContext) -> ();
    pub fn user_trap() -> ();
}

pub struct Process {
    /// Hardware context of the process: contains the values of the register of the thread if it's
    /// not currently active, and some meta-data used to recover the state of the kernel (stack
    /// pointer, satp...)
    pub ctx: RwSpinlock<HardwareContext>,
    /// Stack of the process, this field is private to provide a thread-safe API
    stack: pointer::Page,
}

impl Process {
    pub fn new(pc: fn (usize)) -> Option<Process> {
        let stack = palloc::alloc()?;
        return Some(Self {
            ctx: RwSpinlock::new(
                     HardwareContext::new(pc as *const fn(usize) as usize, stack.as_ref())),
            stack,
        });

    }

    pub fn run(&self) {
        unsafe{run_user(&mut self.ctx.write());}
    }
}

impl Drop for Process {
    fn drop(&mut self) {
        palloc::free(self.stack);
    }
}

unsafe impl Send for Process {}
unsafe impl Sync for Process {}
