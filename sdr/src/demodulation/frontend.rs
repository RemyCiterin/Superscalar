use super::*;

use alloc::vec::Vec;
const PI: fixed32 = super::fixed::PI;
const ZERO: fixed32 = super::fixed::ZERO;
const ONE: fixed32 = super::fixed::ONE;
const TWO: fixed32 = super::fixed::TWO;

pub struct FrontendConfig{
    /// Down sample with a factor 1/decimation
    pub decimation: usize,

    /// Low pass filter coeficients
    pub backman_coefs: usize,

    /// Initial carrier frequency
    pub carrier_freq: fixed32,

    /// Gain of the proportional error of the PLL used to learn the carrier frequency
    pub carrier_pll_p_gain: fixed32,

    /// Gain of the integral of the errors of the PLL used to learn the carrier frequency
    pub carrier_pll_i_gain: fixed32,

    /// Gain of the proportional controller used to average the I/Q signals to an energy of one
    pub averager_gain: fixed32,

    /// Number of samples per seconds
    pub sample_rate: fixed32,
}

pub struct Frontend {
    /// Number of samples per seconds
    sample_rate: fixed32,

    /// Down sample with a factor 1/decimation
    decimation: usize,

    /// Low pass filter coeficients
    backman_coefs: Vec<fixed32>,

    /// Initial carrier frequency
    carrier_freq0: fixed32,

    /// Current carrier frequency
    carrier_freq: fixed32,

    /// Inegral of the carrier phase errors
    carrier_error_integral: fixed32,

    /// Gain of the proportional error of the PLL used to learn the carrier frequency
    carrier_pll_p_gain: fixed32,

    /// Gain of the integral of the errors of the PLL used to learn the carrier frequency
    carrier_pll_i_gain: fixed32,

    /// Gain of the proportional controller used to average the I/Q signals to an energy of one
    averager_gain: fixed32,

    /// Coeficient used to average the I/Q signals to an energy (I^2 + Q^2) of one
    averager_coef: fixed32,

    /// Internal buffer of sinus coeficients
    sin_buf: Vec<fixed32>,

    /// Internal buffer of cosinus coeficients
    cos_buf: Vec<fixed32>,

    /// Current (quadrature) carrier value
    sin_coef: fixed32,

    /// Current (in-phase) carrier value
    cos_coef: fixed32,
}

impl Frontend {
    pub fn new(config: FrontendConfig) -> Frontend {
        // Initialize low pass filter coeficients
        let mut backman_coefs = vec![];

        let n = fixed32::from(config.backman_coefs);
        let alpha = fixed32::from(0.16f32);
        let a0 = (ONE - alpha) / TWO;
        let a1 = ONE / TWO;
        let a2 = alpha / TWO;
        let mut sum = fixed32::from(0.0f32);

        for i in 0..config.backman_coefs {
            let mut a: fixed32 = TWO * fixed32::from(i) * PI / n;
            let mut b: fixed32 = TWO * a;

            while a > PI { a -= TWO * PI; }
            while b > PI { b -= TWO * PI; }
            backman_coefs.push(a0 - a1 * fixed32::cos(a)  + a2 * fixed32::cos(b));

            sum += backman_coefs[i];
        }

        for x in backman_coefs.iter_mut() {
            *x /= sum;
        }

        let mut sin_buf = vec![];
        let mut cos_buf = vec![];
        sin_buf.resize(config.backman_coefs - 1, ZERO);
        cos_buf.resize(config.backman_coefs - 1, ZERO);

        return Frontend{
            backman_coefs,
            sample_rate: config.sample_rate,
            decimation: config.decimation,
            carrier_freq0: config.carrier_freq,
            carrier_freq: config.carrier_freq,
            carrier_error_integral: ZERO,
            carrier_pll_p_gain: config.carrier_pll_p_gain,
            carrier_pll_i_gain: config.carrier_pll_i_gain,
            averager_gain: config.averager_gain,
            averager_coef: ONE,
            sin_coef: ZERO,
            cos_coef: ONE,
            sin_buf,
            cos_buf,
        }
    }

    #[allow(non_snake_case)]
    pub fn run<B: Backend>(
        &mut self, samples: &[fixed32], symbols: &mut Vec<B::Symbol>, backend: &mut B
    ) {
        let mut delta_cos = fixed32::cos(TWO*PI*self.carrier_freq / self.sample_rate);
        let mut delta_sin = fixed32::sin(TWO*PI*self.carrier_freq / self.sample_rate);

        //println!("cos: {} sin: {}", delta_cos, delta_sin);

        for (index, sample) in samples.iter().cloned().enumerate() {
            let new_cos = self.cos_coef * delta_cos - self.sin_coef * delta_sin;
            let new_sin = self.cos_coef * delta_sin + self.sin_coef * delta_cos;
            self.cos_buf.push(new_cos * sample);
            self.sin_buf.push(new_sin * sample);
            self.cos_coef = new_cos;
            self.sin_coef = new_sin;

            if index % 8 == 0 {
                if self.cos_coef * self.cos_coef + self.sin_coef * self.sin_coef < ONE / TWO {
                    self.cos_coef *= TWO;
                    self.sin_coef *= TWO;
                }

                if self.cos_coef * self.cos_coef + self.sin_coef * self.sin_coef > TWO {
                    self.cos_coef /= TWO;
                    self.sin_coef /= TWO;
                }
            }

            if index % 1024 == 0 { println!("index: {:x}", index); }

            if index % self.decimation == 0 {
                let mut I: fixed32 = ZERO;
                let mut Q: fixed32 = ZERO;

                for (i,coef) in self.backman_coefs.iter().cloned().enumerate() {
                    I += coef * self.cos_buf[index + i];
                    Q += coef * self.sin_buf[index + i];
                }

                I *= self.averager_coef;
                Q *= self.averager_coef;
                self.averager_coef += self.averager_gain * (ONE - I*I - Q*Q);

                // Call backend
                let result: BackendOutput<B::Symbol> = backend.run(I, Q);

                if let Some(symbol) = result.symbol {
                    symbols.push(symbol);
                }

                if let Some(error) = result.carrier_error {
                    self.carrier_error_integral += self.carrier_pll_i_gain * error;
                    self.carrier_freq =
                        self.carrier_freq0 +
                        self.carrier_pll_p_gain * error +
                        self.carrier_error_integral;

                    delta_cos = fixed32::cos(TWO*PI*self.carrier_freq / self.sample_rate);
                    delta_sin = fixed32::sin(TWO*PI*self.carrier_freq / self.sample_rate);
                }
            }
        }

        for i in 0..self.backman_coefs.len() - 1 {
            self.cos_buf[i] = self.cos_buf[i+samples.len()];
            self.sin_buf[i] = self.sin_buf[i+samples.len()];
        }

        self.cos_buf.resize(self.backman_coefs.len() - 1, ZERO);
        self.sin_buf.resize(self.backman_coefs.len() - 1, ZERO);
    }
}

