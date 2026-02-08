const std = @import("std");
const math = std.math;

raw: i32,

pub const fixed_t = @This();

pub const LOG_SCALE: usize = 16;
pub const SCALE: i32 = 1 << LOG_SCALE;

pub fn add(a: fixed_t, b: fixed_t) fixed_t {
    return .{ .raw = a.raw + b.raw };
}

pub fn sub(a: fixed_t, b: fixed_t) fixed_t {
    return .{ .raw = a.raw - b.raw };
}

pub fn mul(a: fixed_t, b: fixed_t) fixed_t {
    const x: i64 = @intCast(a.raw);
    const y: i64 = @intCast(b.raw);
    return .{ .raw = @truncate((x * y) >> LOG_SCALE) };
}

pub fn fromInt(x: i32) fixed_t {
    return .{ .raw = x << LOG_SCALE };
}

pub fn fromFloat(x: f32) fixed_t {
    return .{ .raw = @intFromFloat(x * SCALE) };
}

pub fn toFloat(x: fixed_t) f32 {
    return @as(f32, @floatFromInt(x.raw)) / @as(f32, @floatFromInt(SCALE));
}

pub fn div(a: fixed_t, b: fixed_t) fixed_t {
    const x: i64 = @as(i64, @intCast(a.raw)) << LOG_SCALE;
    const y: i64 = @intCast(b.raw);
    return .{ .raw = @truncate(@divTrunc(x, y)) };
}

pub const complex_t = struct {
    re: fixed_t,
    im: fixed_t,

    pub fn add(a: complex_t, b: complex_t) complex_t {
        return .{ .re = a.re.add(b.re), .im = a.im.add(b.im) };
    }

    pub fn sub(a: complex_t, b: complex_t) complex_t {
        return .{ .re = a.re.sub(b.re), .im = a.im.sub(b.im) };
    }

    pub fn mul(a: complex_t, b: complex_t) complex_t {
        return .{
            .re = a.re.mul(b.re).sub(a.im.mul(b.im)),
            .im = a.im.mul(b.re).add(a.re.mul(b.im)),
        };
    }

    pub fn fromFloats(re: f32, im: f32) complex_t {
        return .{ .re = fromFloat(re), .im = fromFloat(im) };
    }

    pub const I: complex_t = .{ .re = fromInt(0), .im = fromInt(1) };

    pub fn log2int(n_in: usize) usize {
        var n: usize = n_in;
        var log: usize = 0;

        while (n != 1) {
            n = n >> 1;
            log += 1;
        }

        return log;
    }

    pub fn bitReverse(x_in: usize, log2n: usize) usize {
        var x: usize = x_in;
        var r: usize = 0;

        for (0..log2n) |_| {
            r = (r << 1) | (x & 1);
            x = x >> 1;
        }

        return r;
    }

    const TwiddleTableSize = 4096;
    const TwiddleTable: [TwiddleTableSize]complex_t = blk: {
        var table: [TwiddleTableSize]complex_t = undefined;
        @setEvalBranchQuota(10 * TwiddleTableSize);

        for (0..TwiddleTableSize) |i| {
            const n: f32 = @floatFromInt(TwiddleTableSize);
            const angle = 2.0 * @as(f32, @floatFromInt(i)) * 3.14159265358979323846 / n;
            table[i] = .{
                .re = fromFloat(math.cos(angle)),
                .im = fromFloat(-math.sin(angle)),
            };
        }

        break :blk table;
    };

    pub fn twiddleFactor(k: usize, n: usize) complex_t {
        // Use precomputed values
        if (n & (n - 1) == 0 and n <= TwiddleTableSize) {
            // table[x] = e^( -2 i x pi / TwiddleTableSize )
            // and k / n = (k * (TwiddleTableSize / n)) / TwiddleTableSize
            const index: usize = k * (TwiddleTableSize / n);
            return TwiddleTable[index % TwiddleTableSize];
        }

        const angle =
            2.0 * @as(f32, @floatFromInt(k)) * 3.14159265358979323846 /
            @as(f32, @floatFromInt(n));

        return fromFloats(
            math.cos(angle),
            -math.sin(angle),
        );
    }

    pub fn radix2(X: []const complex_t, F: []complex_t) void {
        const n = X.len;

        const log2n = log2int(n);

        @memcpy(F[0..], X[0..]);

        for (0..n) |i| {
            const j = bitReverse(i, log2n);

            if (i < j) {
                std.mem.swap(complex_t, &F[i], &F[j]);
            }
        }

        for (1..log2n + 1) |stage| {
            const m: usize = @as(usize, 1) << @truncate(stage);

            const half = m >> 1;

            for (0..n / m) |K| {
                const k = K * m;

                for (0..half) |j| {
                    const t = k + j;
                    const u = t + half;
                    const w = twiddleFactor(j, m);

                    const tmp: complex_t = F[u].mul(w);
                    F[u] = F[t].sub(tmp);
                    F[t] = F[t].add(tmp);
                }
            }
        }
    }

    fn rec_fft(
        allocator: std.mem.Allocator,
        X: []const complex_t,
        F: []complex_t,
        stride: usize,
        n: usize,
    ) !void {
        if (n == 1) {
            F[0] = X[0];
            return;
        }

        const half = n / 2;

        const even_res = try allocator.alloc(complex_t, half);
        const odd_res = try allocator.alloc(complex_t, half);
        defer allocator.free(even_res);
        defer allocator.free(odd_res);

        try rec_fft(allocator, X[0..], even_res, stride * 2, half);
        try rec_fft(allocator, X[stride..], odd_res, stride * 2, half);

        for (0..half) |k| {
            const t = twiddleFactor(k, n).mul(odd_res[k]);
            F[k] = even_res[k].add(t);
            F[k + half] = even_res[k].sub(t);
        }
    }

    pub fn fft(allocator: std.mem.Allocator, X: []const complex_t, F: []complex_t) !void {
        try rec_fft(allocator, X, F, 1, X.len);
    }

    pub fn dft(comptime N: comptime_int, X: []const complex_t, F: []complex_t) void {
        for (0..N) |i| {
            var acc: complex_t = fromFloats(0.0, 0.0);

            for (0..N) |j| {
                acc = acc.add(
                    X[j].mul(twiddleFactor(i * j, N)),
                );
            }

            F[i] = acc;
        }
    }
};
