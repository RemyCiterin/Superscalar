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

var kalloc: Allocator = undefined;

pub export fn kernel_main() align(16) callconv(.C) void {
    const logger = std.log.scoped(.kernel);
    logger.info("=== Start DOoOM ===", .{});

    logger.info(
        \\Ethernet test started!
    , .{});

    const kalloc_len = 28 * 1024 * 1024;
    var kernel_fba = std.heap.FixedBufferAllocator.init(kalloc_buffer[0..kalloc_len]);
    kalloc = kernel_fba.allocator();

    logger.info(
        \\Kernel allocator initialized!
    , .{});

    var A: [64]isize = undefined;
    var B: [64]isize = .{0} ** 64;
    var C: [64]isize = undefined;

    const n: usize = 8;

    for (0..n * n) |i| A[i] = @intCast(i);

    for (0..n) |i| B[i * n + i] = 1;

    asm volatile ("fence" ::: "memory");
    matmul(n, &A, &B, &C);
    asm volatile ("fence" ::: "memory");

    for (0..n) |i| {
        for (0..n) |j| {
            UART.writer.print("{}\t", .{C[i * n + j]}) catch unreachable;
        }

        UART.writer.print("\n", .{}) catch unreachable;
    }

    custom_insn0("v0", "v1", "v2");
    _ = custom_insn1("v0", "v1");

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
