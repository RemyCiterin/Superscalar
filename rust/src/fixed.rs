//! This library provide fixed point arythmetic basic constructions

#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct Fixed32 {
    bytes: i32
}

impl Fixed32 {
    pub fn new(int: i16, frac: u16) -> Self {
        Self{bytes: ((int as i32) << 16) + (frac as u32 as i32)}
    }
}

impl core::ops::Add for Fixed32 {
    type Output = Self;
    fn add(self, other: Self) -> Self {
        Self{bytes: self.bytes+other.bytes}
    }
}

impl core::ops::AddAssign for Fixed32 {
    fn add_assign(&mut self, other: Self) {
        *self = self.clone()+other;
    }
}

impl core::ops::Sub for Fixed32 {
    type Output = Self;
    fn sub(self, other: Self) -> Self {
        Self{bytes: self.bytes-other.bytes}
    }
}

impl core::ops::SubAssign for Fixed32 {
    fn sub_assign(&mut self, other: Self) {
        *self = self.clone()-other;
    }
}

impl core::ops::Neg for Fixed32 {
    type Output = Self;
    fn neg(self) -> Self {
        Self{bytes: -self.bytes}
    }
}
