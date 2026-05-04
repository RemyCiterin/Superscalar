use crate::fixed::*;

pub struct BackendOutput<Symbol> {
    /// Output symbol (maximum one symbol per I/Q coeficients)
    pub symbol: Option<Symbol>,

    /// Phase error of the carrier in radian
    pub carrier_error: Option<fixed32>,
}

pub trait Backend {
    type Symbol;

    fn run(&mut self, i: fixed32, q: fixed32) -> BackendOutput<Self::Symbol>;
}


pub mod frontend;
pub mod backend;
