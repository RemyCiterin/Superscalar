//! this file define the system entry when using M-mode directly

const std = @import("std");
const Allocator = std.mem.Allocator;

// UART mmio interface
const UART = @import("print.zig");
const print = UART.putString;

const RV = @import("riscv.zig");

pub const std_options = .{
    .log_level = .info,
    .logFn = log,
};

extern var kalloc_buffer: [31 * 1024 * 1024]u8;

// Log informations provided by the kernel. As example:
// ```zig
//  const logger = std.log.scoped(.my_scope);
//
//  pub fn foo() void {
//      // visible at runtime
//      logger.info("run foo {}", .{42});
//  }
//
//  pub fn bar() void {
//      // visible only in debug mode
//      logger.debug("run bar", .{});
//  }
// ```
pub fn log(
    comptime level: std.log.Level,
    comptime scope: @TypeOf(.EnumLiteral),
    comptime format: []const u8,
    args: anytype,
) void {
    _ = level;
    const cycle: usize = RV.mcycle.read();

    const prefix =
        "[" ++ @tagName(scope) ++ " at time {}] ";

    UART.writer.print(prefix, .{cycle}) catch unreachable;
    UART.writer.print(format, args) catch unreachable;
    UART.writer.print("\n", .{}) catch unreachable;
}

pub inline fn hang() noreturn {
    // Used to stop the execution in case of a simulation
    UART.putChar(0);
    while (true) {}
}

pub fn panic(
    message: []const u8,
    _: ?*std.builtin.StackTrace,
    _: ?usize,
) noreturn {
    std.log.err("Error: KERNEL PANIC \"{s}\"\n\n", .{message});
    hang();
}

pub inline fn custom_insn0(
    comptime rd: []const u8,
    comptime rs1: []const u8,
    comptime rs2: []const u8,
) void {
    if (rd[0] != 'v') @compileError("Invalid destination register");
    if (rs1[0] != 'v') @compileError("Invalid source register");
    if (rs2[0] != 'v') @compileError("Invalid source register");

    asm volatile (".insn r CUSTOM_0, 0x0, 0x0, x" ++ rd[1..] ++
            ", x" ++ rs1[1..] ++
            ", x" ++ rs2[1..]);
}

pub inline fn custom_insn1(
    comptime rs1: []const u8,
    comptime rs2: []const u8,
) usize {
    var x: usize = undefined;
    if (rs1[0] != 'v') @compileError("Invalid source register");
    if (rs2[0] != 'v') @compileError("Invalid source register");

    asm volatile (".insn r CUSTOM_0, 0x0, 0x1, %[dest]" ++
            ", x" ++ rs1[1..] ++
            ", x" ++ rs2[1..]
        : [dest] "=r" (x),
    );

    return x;
}

pub inline fn custom_insn2(
    comptime rd: []const u8,
    comptime rs1: []const u8,
    val: usize,
) void {
    if (rd[0] != 'v') @compileError("Invalid destination register");
    if (rs1[0] != 'v') @compileError("Invalid source register");

    asm volatile (".insn r CUSTOM_0, 0x0, 0x2, x" ++ rd[1..] ++
            ", x" ++ rs1[1..] ++
            ", %[rs2]"
        :
        : [rs2] "r" (val),
    );
}

var kalloc: Allocator = undefined;

const Ctx = struct {
    const N = 10;
    var A: [N * N]isize = undefined;
    var B: [N * N]isize = .{0} ** (N * N);
    var C: [N * N]isize = undefined;
};

pub export fn kernel_main() align(16) callconv(.C) void {
    const logger = std.log.scoped(.kernel);
    logger.info("=== Start DOoOM ===", .{});

    const kalloc_len = 28 * 1024 * 1024;
    var kernel_fba = std.heap.FixedBufferAllocator.init(kalloc_buffer[0..kalloc_len]);
    kalloc = kernel_fba.allocator();

    logger.info(
        \\Kernel allocator initialized!
    , .{});

    const n: usize = Ctx.N;

    for (0..n * n) |i| Ctx.A[i] = @intCast(i);

    for (0..n) |i| Ctx.B[i * n + i] = 1;

    asm volatile ("fence" ::: "memory");
    matmul(n, &Ctx.A, &Ctx.B, &Ctx.C);
    asm volatile ("fence" ::: "memory");

    ReduceAll.init();
    asm volatile ("fence" ::: "memory");
    ReduceAll.compute_tiled(64);
    asm volatile ("fence" ::: "memory");

    //NBody.init();
    //NBody.init_frame();
    //NBody.compute_acc();
    //NBody.apply_acc();

    UART.writer.print("{}\n", .{ReduceAll.acc}) catch unreachable;

    for (0..n) |i| {
        for (0..n) |j| {
            UART.writer.print("{}\t", .{Ctx.C[i * n + j]}) catch unreachable;
        }

        UART.writer.print("\n", .{}) catch unreachable;
    }

    custom_insn0("v0", "v1", "v2");
    _ = custom_insn1("v0", "v1");
    custom_insn2("v0", "v1", 42);

    while (true) {}

    @panic("unreachable");
}

// Memory intensive benchmark: I use it to measure the impact of a cache mis
pub const ReduceAll = struct {
    const N = 1024;

    // Represent one cache line
    pub const line_t = packed struct(u512) {
        value: i32,
        _padding: u480,
    };

    var lhs: [N]line_t = undefined;
    var rhs: [N]line_t = undefined;
    var acc: i32 = undefined;

    var rng = @import("random.zig").init(42);

    pub fn init() void {
        const rand = rng.random();
        for (0..N) |i| {
            lhs[i].value = @as(i32, @intCast(rand.int(u8))) - 128;
            rhs[i].value = @as(i32, @intCast(rand.int(u8))) - 128;
        }

        acc = 0;
    }

    pub fn compute() void {
        for (0..N) |i| {
            compute_partial(i, 0, N);
        }
    }

    pub fn compute_tiled(tsize: usize) void {
        const tiles = (N + tsize - 1) / tsize;

        for (0..tiles) |I| {
            for (0..tiles) |J| {
                const maxi = @min(N, (I + 1) * tsize);
                const maxj = @min(N, (J + 1) * tsize);

                for (I * tsize..maxi) |i| {
                    compute_partial(i, J * tsize, maxj);
                }
            }
        }
    }

    pub fn compute_partial(i: usize, start: usize, stop: usize) void {
        for (start..stop) |j| {
            acc += lhs[i].value * rhs[j].value;
        }
    }
};

// Floating points benchmark
pub const NBody = struct {
    const N = 30;

    var pos_x: [N]f32 = undefined;
    var pos_y: [N]f32 = undefined;
    var pos_z: [N]f32 = undefined;

    var vel_x: [N]f32 = undefined;
    var vel_y: [N]f32 = undefined;
    var vel_z: [N]f32 = undefined;

    var acc_x: [N]f32 = undefined;
    var acc_y: [N]f32 = undefined;
    var acc_z: [N]f32 = undefined;

    var mass: [N]f32 = undefined;

    var G: f32 = 6.67384e-11;

    var dt: f32 = 1;

    var rng = @import("random.zig").init(42);

    pub fn rand() f32 {
        const gen = rng.random();
        return @as(f32, @floatFromInt(gen.int(u8))) / 256.0;
    }

    pub fn init() void {
        for (0..N) |i| {
            if (i == 0) {
                mass[i] = 2e24;
                pos_x[i] = 0.0;
                pos_y[i] = 0.0;
                pos_z[i] = 0.0;
                vel_x[i] = 0.0;
                vel_y[i] = 0.0;
                vel_z[i] = 0.0;
                continue;
            }

            mass[i] = rand() * 5e20;
            UART.writer.print("{}\n", .{mass[i]}) catch unreachable;

            const phi = rand() * 2 * 3.14159;
            const theta = rand() * 2 * 3.14159;
            const dist = rand() * 1e8 + 1e8;

            pos_x[i] = std.math.cos(phi) * std.math.sin(theta) * dist;
            pos_y[i] = std.math.sin(phi) * dist;
            pos_z[i] = std.math.cos(phi) * std.math.cos(theta) * dist;

            vel_x[i] = pos_y[i] * 4e-6;
            vel_y[i] = -pos_x[i] * 4e-6;
            vel_z[i] = 0.0;
        }
    }

    pub fn init_frame() void {
        for (0..N) |i| {
            acc_x[i] = 0;
            acc_y[i] = 0;
            acc_z[i] = 0;
        }
    }

    pub fn apply_acc() void {
        for (0..N) |i| {
            pos_x[i] += dt * (vel_x[i] + dt * 0.5 * acc_x[i]);
            pos_y[i] += dt * (vel_y[i] + dt * 0.5 * acc_y[i]);
            pos_z[i] += dt * (vel_z[i] + dt * 0.5 * acc_z[i]);
            vel_x[i] += dt * acc_x[i];
            vel_y[i] += dt * acc_y[i];
            vel_z[i] += dt * acc_z[i];
        }
    }

    pub fn compute_acc() void {
        for (0..N) |i| {
            compute_acc_partial(i, 0, N);
        }
    }

    pub fn compute_acc_tiled(tsize: usize) void {
        const tiles = (N + tsize - 1) / tsize;

        for (0..tiles) |I| {
            for (0..tiles) |J| {
                const maxi = @min(N, (I + 1) * tsize);
                const maxj = @min(N, (J + 1) * tsize);

                for (I * tsize..maxi) |i| {
                    compute_acc_partial(i, J * tsize, maxj);
                }
            }
        }
    }

    pub fn compute_acc_partial(i: usize, start: usize, stop: usize) void {
        var ax = acc_x[i];
        var ay = acc_y[i];
        var az = acc_z[i];

        for (start..stop) |j| {
            const rijx = pos_x[i] - pos_x[j];
            const rijy = pos_y[i] - pos_y[j];
            const rijz = pos_z[i] - pos_z[j];

            const rij_squared = rijx * rijx + rijy * rijy + rijz * rijz + 1e-3;

            const a = G * mass[j] / (rij_squared * std.math.sqrt(rij_squared));

            ax += a * rijx;
            ay += a * rijy;
            az += a * rijz;
        }

        acc_x[i] += ax;
        acc_y[i] += ay;
        acc_z[i] += az;
    }
};

pub fn matmul(
    n: usize,
    A: []volatile isize,
    B: []volatile isize,
    C: []volatile isize,
) void {
    for (0..n) |i| {
        for (0..n) |j| {
            var sum: isize = 0;

            for (0..n) |k| {
                sum += A[i * n + k] * B[k * n + j];
            }

            C[i * n + j] = sum;
        }
    }
}

pub fn matmul_blocks(
    n: usize,
    A: []volatile isize,
    B: []volatile isize,
    C: []volatile isize,
) void {
    const bsize = 32;
    const blocks = (n + bsize - 1) / bsize;

    for (0..blocks) |I| {
        for (0..blocks) |J| {
            for (0..blocks) |K| {
                const maxi = @min(n, (I + 1) * bsize);
                const maxj = @min(n, (J + 1) * bsize);
                const maxk = @min(n, (K + 1) * bsize);

                for (I * bsize..maxi) |i| {
                    for (J * bsize..maxj) |j| {
                        var sum: isize = 0;

                        for (K * bsize..maxk) |k| {
                            sum += A[i * n + k] * B[k * n + j];
                        }

                        C[i * n + j] += sum;
                    }
                }
            }
        }
    }
}
