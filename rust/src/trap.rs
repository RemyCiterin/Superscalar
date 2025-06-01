use riscv::register::{mtvec, utvec::TrapMode};

#[repr(C)]
pub struct Registers {
    pub ra: usize,  // x1
    pub sp: usize,  // x2
    pub gp: usize,  // x3
    pub tp: usize,  // x4
    pub t0: usize,  // x5
    pub t1: usize,  // x6
    pub t2: usize,  // x7
    pub s0: usize,  // x8
    pub s1: usize,  // x9
    pub a0: usize,  // x10
    pub a1: usize,  // x11
    pub a2: usize,  // x12
    pub a3: usize,  // x13
    pub a4: usize,  // x14
    pub a5: usize,  // x15
    pub a6: usize,  // x16
    pub a7: usize,  // x17
    pub s2: usize,  // x18
    pub s3: usize,  // x19
    pub s4: usize,  // x20
    pub s5: usize,  // x21
    pub s6: usize,  // x22
    pub s7: usize,  // x23
    pub s8: usize,  // x24
    pub s9: usize,  // x25
    pub s10: usize, // x26
    pub s11: usize, // x27
    pub t3: usize,  // x28
    pub t4: usize,  // x29
    pub t5: usize,  // x30
    pub t6: usize,  // x31
}

impl Default for Registers {
    fn default() -> Registers {
        Registers {
            ra: 0,  // x1
            sp: 0,  // x2
            gp: 0,  // x3
            tp: 0,  // x4
            t0: 0,  // x5
            t1: 0,  // x6
            t2: 0,  // x7
            s0: 0,  // x8
            s1: 0,  // x9
            a0: 0,  // x10
            a1: 0,  // x11
            a2: 0,  // x12
            a3: 0,  // x13
            a4: 0,  // x14
            a5: 0,  // x15
            a6: 0,  // x16
            a7: 0,  // x17
            s2: 0,  // x18
            s3: 0,  // x19
            s4: 0,  // x20
            s5: 0,  // x21
            s6: 0,  // x22
            s7: 0,  // x23
            s8: 0,  // x24
            s9: 0,  // x25
            s10: 0, // x26
            s11: 0, // x27
            t3: 0,  // x28
            t4: 0,  // x29
            t5: 0,  // x30
            t6: 0,  // x31
        }
    }
}

#[repr(C)]
pub struct TrapState {
    pub registers: Registers,
    pub mepc: usize,
    pub kernel_sp: usize,
}

pub fn init() {
    unsafe {
        mtvec::write(user_trap as usize, TrapMode::Direct);
    }
}

extern "C" {
    pub fn run_user(_: &mut TrapState) -> ();
    pub fn user_trap() -> ();
}
