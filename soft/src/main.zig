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
