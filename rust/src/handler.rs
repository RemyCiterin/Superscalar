use riscv::register::mcause;
use riscv::register::mepc;

use crate::trap::TrapState;

pub extern "C" fn handler(state: &mut TrapState) {
    let mcause = mcause::read();

    match mcause.cause() {
        mcause::Trap::Exception(exception) => {
            println!("mcause: exception at {:x} {:?}", mepc::read(), exception);
            state.mepc += 4;
        }
        mcause::Trap::Interrupt(_) => {
            println!("mcause: interrupt");
            // TODO
        }
    }
}
