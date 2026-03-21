//! This file define a type of 32-bits fixed points with some usefull function approximations for
//! SDR like `cos`, `sin` and `atan2`.

pub const FIXED_LOG_SCALE: usize = 16;
pub const FIXED_SCALE: usize = 1 << FIXED_LOG_SCALE;

pub const PI: fixed32 = fixed32 {
    raw: ((core::f32::consts::PI * FIXED_SCALE as f32) as i32)
};

pub const ZERO: fixed32 = fixed32{raw: 0};
pub const ONE: fixed32 = fixed32{raw: FIXED_SCALE as i32};
pub const TWO: fixed32 = fixed32{raw: 2*FIXED_SCALE as i32};

#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
#[allow(non_camel_case_types)]
pub struct fixed32 { raw: i32 }

macro_rules! from_fixed32 {
    ( $t:tt ) => {
        impl From<$t> for fixed32 {
            fn from(x: $t) -> fixed32 {
                return Self { raw: (x * FIXED_SCALE as $t) as i32 };
            }
        }
    }
}

from_fixed32!(f32);
from_fixed32!(f64);
from_fixed32!(usize);
from_fixed32!(isize);
from_fixed32!(u64);
from_fixed32!(i64);
from_fixed32!(u32);
from_fixed32!(i32);
from_fixed32!(u16);
from_fixed32!(i16);
from_fixed32!(u8);
from_fixed32!(i8);

impl fixed32 {
    /// Cosinus approximation using Taylor serie, this approximation is only valid for small values
    /// of `x`, we need to compute `x mod 2*PI` before calling this function
    pub fn cos(x: fixed32) -> fixed32 {
        let r =
            ONE -
            (x*x) / TWO +
            (x*x*x*x) / fixed32::from(24) -
            (x*x*x*x*x*x) / fixed32::from(720);

        return r;
    }

    /// Sinus approximation using Taylor serie, this approximation is only valid for small values
    /// of `x`, we need to compute `x mod 2*PI` before calling this function
    pub fn sin(x: fixed32) -> fixed32 {
        let r =
            x -
            (x*x*x) / fixed32::from(6) +
            (x*x*x*x*x) / fixed32::from(120);

        return r;
    }

    pub fn zero() -> Self { Self::from(0.0) }
    pub fn one() -> Self { Self::from(1.0) }
    pub fn two() -> Self { Self::from(2.0) }

    pub fn min(x: fixed32, y: fixed32) -> fixed32 {
        if x < y { x } else { y }
    }

    pub fn max(x: fixed32, y: fixed32) -> fixed32 {
        if x > y { x } else { y }
    }

    pub fn abs(x: fixed32) -> fixed32 {
        if x > ZERO { x } else { -x }
    }

    /// `atan2` approximation using Remez algorithm, it use the fact that `atan(z) = pi/2 -
    /// atan(1/z)` for `z > 0`, and the antisymmetry of `atan`. I found it here:
    /// `https://math.stackexchange.com/questions/1098487/atan2-faster-approximation`
    pub fn atan2(y: fixed32, x: fixed32) -> fixed32 {
        let a =
            Self::min(Self::abs(x), Self::abs(y)) /
            Self::max(Self::abs(x), Self::abs(y));

        let s = a * a;

        let mut r =
            (
                (Self::from(-0.0464964749) * s + Self::from(0.15931422)) * s -
                Self::from(0.327622764)
            ) * s * a + a;

        if Self::abs(y) > Self::abs(x) { r = PI/TWO - r; }
        if x < ZERO { r = PI - r; }
        if y < ZERO { r = -r; }
        return r;
    }

    /// A kernel to compute (dot(x,y), dot(x,z)) optimised for my RISC-V CPU
    #[inline(never)]
    pub fn double_dot_product(x: &[fixed32], y: &[fixed32], z: &[fixed32]) -> (fixed32, fixed32) {
        assert!(x.len() == y.len());
        assert!(x.len() == z.len());
        let mut raw1: i32 = 0;
        let mut raw2: i32 = 0;

        let addr_x: usize = x.as_ptr() as usize;
        let addr_y: usize = y.as_ptr() as usize;
        let addr_z: usize = z.as_ptr() as usize;

        unsafe{
            core::arch::asm!(
                // We start by jumping to an 8-aligned address to ensure pair of instructions are
                // executed in the same bundle
                "j 0f",
                ".align 3",
                "0:",

                "beq {A}, {MaxA}, 1f",
                "lw {tmp0}, ({A})",

                "lw {tmp1}, ({B})",
                "addi {A}, {A}, 4",

                "lw {tmp2}, ({C})",
                "addi {B}, {B}, 4",

                "addi {C}, {C}, 4",
                "mul {tmp3}, {tmp0}, {tmp1}",

                "mul {tmp4}, {tmp0}, {tmp2}",
                "mulh {tmp1}, {tmp0}, {tmp1}",

                "mulh {tmp2}, {tmp0}, {tmp2}",
                "srli {tmp3}, {tmp3}, {SRL}",

                "srli {tmp4}, {tmp4}, {SRL}",
                "slli {tmp1}, {tmp1}, {SLL}",

                "slli {tmp2}, {tmp2}, {SLL}",
                "or {tmp0}, {tmp1}, {tmp3}",

                "or {tmp1}, {tmp2}, {tmp4}",
                "add {O1}, {O1}, {tmp0}",

                "add {O2}, {O2}, {tmp1}",
                "j 0b",

                "1:",
                tmp0 = out(reg) _,
                tmp1 = out(reg) _,
                tmp2 = out(reg) _,
                tmp3 = out(reg) _,
                tmp4 = out(reg) _,
                A = inout(reg) addr_x => _,
                B = inout(reg) addr_y => _,
                C = inout(reg) addr_z => _,
                MaxA = inout(reg) addr_x + x.len() * 4 => _,
                O1 = inout(reg) raw1 => raw1,
                O2 = inout(reg) raw2 => raw2,
                SRL = const FIXED_LOG_SCALE,
                SLL = const (32-FIXED_LOG_SCALE),
            );
        }

        (Self{raw: raw1}, Self{raw: raw2})
    }
}

use core::fmt::*;
impl Display for fixed32 {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        write!(f, "{}", (self.raw as f32) / FIXED_SCALE as f32)
    }
}


impl core::ops::Add<fixed32> for fixed32 {
    type Output = fixed32;

    fn add(self: fixed32, rhs: fixed32) -> fixed32 {
        return Self{ raw: self.raw + rhs.raw };
    }
}

impl core::ops::AddAssign for fixed32 {
    fn add_assign(&mut self, other: Self) {
        *self = *self + other;
    }
}

impl core::ops::Sub<fixed32> for fixed32 {
    type Output = fixed32;

    fn sub(self: fixed32, rhs: fixed32) -> fixed32 {
        return Self{ raw: self.raw - rhs.raw };
    }
}

impl core::ops::SubAssign for fixed32 {
    fn sub_assign(&mut self, other: Self) {
        *self = *self - other;
    }
}

impl core::ops::Neg for fixed32 {
    type Output = fixed32;

    fn neg(self: fixed32) -> fixed32 {
        return Self{ raw: -self.raw };
    }
}


impl core::ops::Mul<fixed32> for fixed32 {
    type Output = fixed32;

    fn mul(self: fixed32, rhs: fixed32) -> fixed32 {
        let x: i64 = (self.raw as i64) * (rhs.raw as i64);
        return Self{ raw: (x >> FIXED_LOG_SCALE) as i32 };
    }
}


impl core::ops::MulAssign for fixed32 {
    fn mul_assign(&mut self, other: Self) {
        *self = *self * other;
    }
}

impl core::ops::Div<fixed32> for fixed32 {
    type Output = fixed32;

    fn div(self: fixed32, rhs: fixed32) -> fixed32 {
        let x: i64 = (self.raw as i64) << FIXED_LOG_SCALE;
        let y: i64 = rhs.raw as i64;
        return Self{ raw: (x / y) as i32 };
    }
}


impl core::ops::DivAssign for fixed32 {
    fn div_assign(&mut self, other: Self) {
        *self = *self / other;
    }
}
