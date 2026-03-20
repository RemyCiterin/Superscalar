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
    pub fn cos(x: fixed32) -> fixed32 {
        let r =
            ONE -
            (x*x) / TWO +
            (x*x*x*x) / fixed32::from(24) -
            (x*x*x*x*x*x) / fixed32::from(720);

        return r;
    }

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

        if Self::abs(y) > Self::abs(x) { r = Self::from(1.57079637) - r; }
        if x < ZERO { r = PI - r; }
        if y < ZERO { r = -r; }
        return r;
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
