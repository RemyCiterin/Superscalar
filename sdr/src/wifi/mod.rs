use crate::fixed::*;


pub static TWIDDLE_FACTORS: [(i32, i32); 64] = [
    (65536,0),(65220,-6423),(64276,-12785),(62714,-19024),
    (60547,-25079),(57797,-30893),(54491,-36409),(50660,-41575),
    (46340,-46340),(41575,-50660),(36409,-54491),(30893,-57797),
    (25079,-60547),(19024,-62714),(12785,-64276),(6423,-65220),
    (0,-65536),(-6423,-65220),(-12785,-64276),(-19024,-62714),
    (-25079,-60547),(-30893,-57797),(-36409,-54491),(-41575,-50660),
    (-46340,-46340),(-50660,-41575),(-54491,-36409),(-57797,-30893),
    (-60547,-25079),(-62714,-19024),(-64276,-12785),(-65220,-6423),
    (-65536,0),(-65220,6423),(-64276,12785),(-62714,19024),
    (-60547,25079),(-57797,30893),(-54491,36409),(-50660,41575),
    (-46340,46340),(-41575,50660),(-36409,54491),(-30893,57797),
    (-25079,60547),(-19024,62714),(-12785,64276),(-6423,65220),
    (0,65536),(6423,65220),(12785,64276),(19024,62714),
    (25079,60547),(30893,57797),(36409,54491),(41575,50660),
    (46340,46340),(50660,41575),(54491,36409),(57797,30893),
    (60547,25079),(62714,19024),(64276,12785),(65220,6423),
];

/// Compute the `k`-th twiddle factor of basis `n`, with `n` a power of two less than 64.
pub fn twiddle_factor64(mut k: usize, n: usize) -> (fixed32, fixed32) {
    assert!(n & (n-1) == 0);
    assert!(n <= 64);

    k = (k * (64 / n)) % 64;
    let (rel_i32, img_i32) = TWIDDLE_FACTORS[k];
    let rel: fixed32 = fixed32::from_raw(rel_i32);
    let img: fixed32 = fixed32::from_raw(img_i32);
    return (rel, img);
}

/// Reverse the bits of an integer
pub fn bit_reverse(mut x: usize, log2n: usize) -> usize {
    let mut ret = 0;

    for _ in 0..log2n {
        ret = (ret << 1) | (x & 1);
        x = x >> 1;
    }

    ret
}

/// Compute an FFT in basis 64, the inputs represents complex numbers to be processed
pub fn fft64(input: &[(fixed32, fixed32); 64]) -> [(fixed32, fixed32); 64] {
    let mut output: [(fixed32, fixed32); 64] = [(ZERO, ZERO); 64];
    for i in 0..64 { output[i] = input[i]; }

    for i in 0..64 {
        let j = bit_reverse(i, 6);

        if i < j {
            output.swap(i, j);
        }
    }

    for stage in 1..7 {
        let m = 1 << stage;
        let half_m = m >> 1;

        for kdm in 0..64/m {
            let k = kdm * m;

            for j in 0..half_m {
                let t = k+j;
                let u = t+half_m;
                let (a, b) = twiddle_factor64(j, m);
                let (c, d) = output[u];
                let (e, f) = output[t];

                let rel = a*c - b*d;
                let img = a*d + b*c;
                output[u] = (e - rel, f - img);
                output[t] = (e + rel, f + img);
            }
        }
    }

    output
}



