const RV = @import("riscv.zig");
const std = @import("std");

seed: u32,

const Self = @This();

pub fn initCycle() Self {
    return .{ .seed = RV.mcycle.read() };
}

pub fn init(seed: u32) Self {
    return .{ .seed = seed };
}

pub fn uint32(self: *Self) u32 {
    self.seed += 1;
    return std.hash.uint32(self.seed);
}

pub fn fillFn(ptr: *anyopaque, buf: []u8) void {
    const self: *Self = @ptrCast(@alignCast(ptr));

    var index: usize = 0;

    while (index + 4 <= buf.len) : (index += 4) {
        const x = self.uint32();

        buf[index] = @truncate(x);
        buf[index + 1] = @truncate(x << 8);
        buf[index + 2] = @truncate(x << 16);
        buf[index + 3] = @truncate(x << 24);
    }

    while (index < buf.len) : (index += 1) {
        buf[index] = @truncate(self.uint32());
    }
}

pub fn random(self: *Self) std.Random {
    return .{ .ptr = self, .fillFn = fillFn };
}
