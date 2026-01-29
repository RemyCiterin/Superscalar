const std = @import("std");

pub const XLEN = @bitSizeOf(usize);

pub fn getTP() usize {
    var ret: usize = undefined;
    asm volatile ("mv %[ret], tp"
        : [ret] "=r" (ret),
    );
    return ret;
}

pub const CSRenum = union(enum) {
    // User Trap Setup
    ustatus, // User status register
    uie, // User interrupt-enable register.
    utvec, // User trap handler base address.

    // User Trap Handling
    uscratch, //  Scratch register for user trap handlers.
    uepc, //  User exception program counter.
    ucause, // User trap cause.
    utval, // User bad address or instruction.
    uip, // User interrupt pending.

    // User Floating-Point CSRs
    fflags, // Floating-Point Accrued Exceptions.
    frm, // Floating-Point Dynamic Rounding Mode.
    fcsr, // Floating-Point Control and Status Register (frm + fflags).

    // User Counter/Timers
    cycle, // Cycle counter for RDCYCLE instruction.
    time, // Timer for RDTIME instruction.
    instret, // Instructions-retired counter for RDINSTRET instruction.
    hpmcounter: u5, // Performance-monitoring counter.
    cycleh, // Upper 32 bits of cycle, RV32I only.
    timeh, // Upper 32 bits of time, RV32I only.
    instreth, // Upper 32 bits of instret, RV32I only.
    hpmcounter_h: u5, // Upper 32 bits of hpmcounter, RV32I only.

    // Supervisor Trap Setup
    sstatus, // Supervisor status register.
    sedeleg, // Supervisor exception delegation register.
    sideleg, // Supervisor interrupt delegation register.
    sie, // Supervisor interrupt-enable register.
    stvec, // Supervisor trap handler base address.
    scounteren, // Supervisor counter enable.
    // Supervisor Trap Handling
    sscratch, // Scratch register for supervisor trap handlers.
    sepc, // Supervisor exception program counter.
    scause, // Supervisor trap cause.
    stval, // Supervisor bad address or instruction.
    sip, // Supervisor interrupt pending.
    // Supervisor Protection and Translation
    satp, // Supervisor address translation and protection.

    // Machine Information Registers
    mvendorid, // Vendor ID.
    marchid, // Architecture ID.
    mimpid, // Implementation ID.
    mhartid, // Hardware thread ID.

    // Machine Trap Setup
    mstatus, // Machine status register.
    misa, // ISA and extensions
    medeleg, // Machine exception delegation register.
    mideleg, // Machine interrupt delegation register.
    mie, // Machine interrupt-enable register.
    mtvec, // Machine trap-handler base address.
    mcounteren, // Machine counter enable.

    // Machine Trap Handling
    mscratch, // Scratch register for machine trap handlers.
    mepc, // Machine exception program counter.
    mcause, // Machine trap cause.
    mtval, // Machine bad address or instruction.
    mip, // Machine interrupt pending.

    // Machine Protection and Translation
    pmpcfg0, // Physical memory protection configuration.
    pmpcfg1, // Physical memory protection configuration, RV32 only.
    pmpcfg2, // Physical memory protection configuration.
    pmpcfg3, // Physical memory protection configuration, RV32 only.
    pmpaddr: u4, // Physical memory protection address register.

    // Machine Counter/Timers
    mcycle, // Machine cycle counter.
    minstret, // Machine instructions-retired counter.
    mhpmcounter: u5, //  Machine performance-monitoring counter.
    mcycleh, // Upper 32 bits of mcycle, RV32I only.
    minstreth, // Upper 32 bits of minstret, RV32I only.
    mhpmcounter_h: u5, // Upper 32 bits of mhpmcounter3, RV32I only.

    // Machine Counter Setup
    mhpmevent: u5, //  Machine performance-monitoring event selector

    // Debug/Trace Registers (shared with Debug Mode)
    tselect, // Debug/Trace trigger register select.
    tdata1, // First Debug/Trace trigger data register.
    tdata2, // Second Debug/Trace trigger data register.
    tdata3, // Third Debug/Trace trigger data register.
    // Debug Mode Registers
    dcsr, // Debug control and status register.
    dpc, // Debug PC.
    dscratch, // Debug scratch register.

    pub fn isValid(comptime this: @This()) bool {
        return switch (this) {
            .hpmcounter => |n| n >= 3,
            .hpmcounter_h => |n| n >= 3 and XLEN == 32,
            .mhpmcounter => |n| n >= 3,
            .mhpmcounter_h => |n| n >= 3 and XLEN == 32,
            .mhpmevent => |n| n >= 3,

            .cycleh => XLEN == 32,
            .timeh => XLEN == 32,
            .instreth => XLEN == 32,
            .pmpcfg1 => XLEN == 32,
            .pmpcfg3 => XLEN == 32,
            .mcycleh => XLEN == 32,
            .minstreth => XLEN == 32,

            else => true,
        };
    }

    pub fn toString(comptime this: @This()) ![]const u8 {
        var buffer: [32]u8 = undefined;
        return switch (this) {
            .hpmcounter => |n| try std.fmt.bufPrint(buffer, "hpmcounter{}", .{n}),
            .hpmcounter_h => |n| try std.fmt.bufPrint(buffer, "hpmcounter{}h", .{n}),
            .pmpaddr => |n| try std.fmt.bufPrint(buffer[0..], "pmpaddr{}", .{n}),
            .mhpmcounter => |n| try std.fmt.bufPrint(buffer, "mhpmcounter{}", .{n}),
            .mhpmcounter_h => |n| try std.fmt.bufPrint(buffer, "mhpmcounter{}h", .{n}),
            .mhpmevent => |n| try std.fmt.bufPrint(buffer, "mhpmevent{}", .{n}),
            else => @tagName(this),
        };
    }

    pub fn read(comptime this: @This()) usize {
        const name = comptime this.toString() catch unreachable;

        if (comptime !this.isValid())
            @compileError("invalid CSR: " ++ name);

        var out: usize = undefined;

        asm volatile ("csrr %[value], " ++ name
            : [value] "=r" (out),
        );

        return out;
    }

    pub fn write(comptime this: @This(), bits: usize) void {
        const name = comptime this.toString() catch unreachable;

        if (comptime !this.isValid())
            @compileError("invalid CSR: " ++ name);

        asm volatile ("csrw " ++ name ++ ", %[value]"
            :
            : [value] "r" (bits),
        );
    }
};

pub fn CSR(comptime packedT: type) type {
    return struct {
        tag: CSRenum,

        const Self = @This();

        pub fn read(comptime self: Self) packedT {
            return @bitCast(self.tag.read());
        }

        pub fn write(comptime self: Self, bits: packedT) void {
            self.tag.write(@bitCast(bits));
        }

        pub fn modify(comptime self: Self, fields: anytype) void {
            var val = self.read();

            inline for (@typeInfo(@TypeOf(fields)).Struct.fields) |field| {
                @field(val, field.name) = @field(fields, field.name);
            }

            self.write(val);
        }

        pub fn modify2(comptime self: Self, fields: anytype) void {
            var val = self.read();

            inline for (@typeInfo(@TypeOf(fields)).Struct.fields) |f1| {
                inline for (@typeInfo(@TypeOf(@field(fields, f1.name))).Struct.fields) |f2| {
                    @field(@field(val, f1.name), f2.name) = @field(@field(fields, f1.name), f2.name);
                }
            }

            self.write(val);
        }
    };
}

pub fn MMIO(packedT: type) type {
    return extern struct {
        raw: IntT,

        const Self = @This();

        const IntT = @Type(.{ .Int = .{
            .bits = @bitSizeOf(packedT),
            .signedness = .unsigned,
        } });

        pub fn read(self: *volatile Self) packedT {
            return @bitCast(self.raw);
        }

        pub fn write(self: *volatile Self, bits: packedT) void {
            const x: IntT = @bitCast(bits);
            self.raw = x;
        }

        pub fn modify(self: *volatile Self, fields: anytype) void {
            var val = self.read();

            inline for (@typeInfo(@TypeOf(fields)).Struct.fields) |field| {
                @field(val, field.name) = @field(fields, field.name);
            }

            self.write(val);
        }
    };
}

pub const sscratch: CSR(usize) = .{ .tag = .sscratch };
pub const stvec: CSR(usize) = .{ .tag = .stvec };
pub const sepc: CSR(usize) = .{ .tag = .sepc };

pub const mhartid: CSR(usize) = .{ .tag = .mhartid };
pub const mscratch: CSR(usize) = .{ .tag = .mscratch };
pub const mimpid: CSR(usize) = .{ .tag = .mimpid };
pub const marchid: CSR(usize) = .{ .tag = .marchid };
pub const mvendorid: CSR(usize) = .{ .tag = .mvendorid };
pub const mtvec: CSR(usize) = .{ .tag = .mtvec };
pub const mepc: CSR(usize) = .{ .tag = .mepc };
pub const minstret: CSR(usize) = .{ .tag = .minstret };
pub const minstreth: CSR(usize) = .{ .tag = .minstreth };
pub const mcycle: CSR(usize) = .{ .tag = .mcycle };
pub const mcycleh: CSR(usize) = .{ .tag = .mcycleh };

pub fn UInt(comptime bits: comptime_int) type {
    return @Type(.{ .Int = .{
        .bits = bits,
        .signedness = .unsigned,
    } });
}

pub const sstatus: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        UIE: u1,
        SIE: u1,
        _reserved1: u2,
        UPIE: u1,
        SPIE: u1,
        _reserved2: u2,
        SPP: u1,
        _reserved3: u4,
        FS: u2,
        XS: u2,
        _reserved4: u1,
        SUM: u1,
        MXR: u1,
        _reserved5: u11,
        SD: u1,
    },
    else => packed struct(usize) {
        UIE: u1,
        SIE: u1,
        _reserved1: u2,
        UPIE: u1,
        SPIE: u1,
        _reserved2: u2,
        SPP: u1,
        _reserved3: u4,
        FS: u2,
        XS: u2,
        _reserved4: u1,
        SUM: u1,
        MXR: u1,
        _reserved5: u12,
        UXL: u2,
        _reserved6: UInt(XLEN - 35),
        SD: u1,
    },
}) = .{ .tag = .sstatus };

pub const mstatus: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        UIE: u1,
        SIE: u1,
        _reserved1: u1,
        MIE: u1,
        UPIE: u1,
        SPIE: u1,
        _reserved2: u1,
        MPIE: u1,
        SPP: u1,
        _reserved3: u2,
        MPP: u2,
        FS: u2,
        XS: u2,
        MPRV: u1,
        SUM: u1,
        MXR: u1,
        TVM: u1,
        TW: u1,
        TSR: u1,
        _reserved4: u8,
        SD: u1,
    },
    else => packed struct(usize) {
        UIE: u1,
        SIE: u1,
        _reserved1: u1,
        MIE: u1,
        UPIE: u1,
        SPIE: u1,
        _reserved2: u1,
        MPIE: u1,
        SPP: u1,
        _reserved3: u2,
        MPP: u2,
        FS: u2,
        XS: u2,
        MPRV: u1,
        SUM: u1,
        MXR: u1,
        TVM: u1,
        TW: u1,
        TSR: u1,
        _reserved4: u9,
        UXL: u2,
        SXL: u2,
        _reserved5: UInt(XLEN - 37),
        SD: u1,
    },
}) = .{ .tag = .mstatus };

pub const sip: CSR(packed struct(usize) {
    USIP: u1,
    SSIP: u1,
    _reserved1: u2,
    UTIP: u1,
    STIP: u1,
    _reserved2: u2,
    UEIP: u1,
    SEIP: u1,
    _reserved3: UInt(XLEN - 10),
}) = .{ .tag = .sip };

pub const sie: CSR(packed struct(usize) {
    USIE: u1,
    SSIE: u1,
    _reserved1: u2,
    UTIE: u1,
    STIE: u1,
    _reserved2: u2,
    UEIE: u1,
    SEIE: u1,
    _reserved3: UInt(XLEN - 10),
}) = .{ .tag = .sie };

pub const satp: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        PPN: u22,
        ASID: u9,
        MODE: enum(u1) { Bare = 0, Sv32 = 1 },
    },
    64 => packed struct(u64) {
        PPN: u44,
        ASID: u16,
        MODE: enum(u4) { Bare = 0, Sv39 = 8, Sv48 = 9, Sv57 = 10, Sv64 = 11 },
    },
    else => @compileError("unsupported XLEN for satp register"),
}) = .{ .tag = .satp };

pub const mcause: CSR(packed struct(usize) {
    CODE: UInt(XLEN - 1),
    INTERRUPT: u1,
}) = .{ .tag = .mcause };

pub const scause: CSR(packed struct {
    CODE: UInt(XLEN - 1),
    INTERRUPT: u1,
}) = .{ .tag = .scause };

pub const mideleg: CSR(packed struct(usize) {
    UserSoftware: u1,
    SupervisorSoftware: u1,
    _reserved1: u1,
    MachineSoftware: u1,
    UserTimer: u1,
    SupervisorTimer: u1,
    _reserved2: u1,
    MachineTimer: u1,
    UserExternal: u1,
    SupervisorExternal: u1,
    _reserved3: u1,
    MachineExternal: u1,
    _reserved4: UInt(XLEN - 12),
}) = .{ .tag = .mideleg };

pub const medeleg: CSR(packed struct(usize) {
    InstructionAdressMisaligned: u1,
    InstructionAccessFault: u1,
    IllegalInstruction: u1,
    Breakpoint: u1,
    LoadAdressMisaligned: u1,
    LoadAccessFault: u1,
    StoreAMOadessMisaligned: u1,
    StoreAMOaccessFault: u1,
    EnvironmentCallUmode: u1,
    EnvironmentCallSmode: u1,
    _reserved1: u1,
    EnvironmentCallMmode: u1,
    InstructionPageFault: u1,
    LoadPageFault: u1,
    _reserved2: u1,
    StoreAMOpageFault: u1,
    _reserved3: UInt(XLEN - 16),
}) = .{ .tag = .medeleg };

pub const sideleg: CSR(packed struct(usize) {
    UserSoftware: u1,
    SupervisorSoftware: u1,
    _reserved1: u1,
    MachineSoftware: u1,
    UserTimer: u1,
    SupervisorTimer: u1,
    _reserved2: u1,
    MachineTimer: u1,
    UserExternal: u1,
    SupervisorExternal: u1,
    _reserved3: u1,
    MachineExternal: u1,
    _reserved4: UInt(XLEN - 12),
}) = .{ .tag = .sideleg };

pub const sedeleg: CSR(packed struct(usize) {
    InstructionAdressMisaligned: u1,
    InstructionAccessFault: u1,
    IllegalInstruction: u1,
    Breakpoint: u1,
    LoadAdressMisaligned: u1,
    LoadAccessFault: u1,
    StoreAMOadessMisaligned: u1,
    StoreAMOaccessFault: u1,
    EnvironmentCallUmode: u1,
    EnvironmentCallSmode: u1,
    _reserved1: u1,
    EnvironmentCallMmode: u1,
    InstructionPageFault: u1,
    LoadPageFault: u1,
    _reserved2: u1,
    StoreAMOpageFault: u1,
    _reserved3: UInt(XLEN - 16),
}) = .{ .tag = .sedeleg };

pub const mip: CSR(packed struct(usize) {
    USIP: u1,
    SSIP: u1,
    _reserved1: u1,
    MSIP: u1,
    UTIP: u1,
    STIP: u1,
    _reserved2: u1,
    MTIP: u1,
    UEIP: u1,
    SEIP: u1,
    _reserved3: u1,
    MEIP: u1,
    _reserved4: UInt(XLEN - 12),
}) = .{ .tag = .mip };

pub const mie: CSR(packed struct(usize) {
    USIE: u1,
    SSIE: u1,
    _reserved1: u1,
    MSIE: u1,
    UTIE: u1,
    STIE: u1,
    _reserved2: u1,
    MTIE: u1,
    UEIE: u1,
    SEIE: u1,
    _reserved3: u1,
    MEIE: u1,
    _reserved4: UInt(XLEN - 12),
}) = .{ .tag = .mie };

pub const PMPconf = packed struct(u8) {
    R: u1,
    W: u1,
    X: u1,
    A: u2,
    _reserved1: u2,
    L: u1,
};

pub const pmpcfg0: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        pmp0cfg: PMPconf,
        pmp1cfg: PMPconf,
        pmp2cfg: PMPconf,
        pmp3cfg: PMPconf,
    },
    64 => packed struct(u64) {
        pmp0cfg: PMPconf,
        pmp1cfg: PMPconf,
        pmp2cfg: PMPconf,
        pmp3cfg: PMPconf,
        pmp4cfg: PMPconf,
        pmp5cfg: PMPconf,
        pmp6cfg: PMPconf,
        pmp7cfg: PMPconf,
    },
    else => @compileError("unsupported XLEN for pmpcfg0 register"),
}) = .{ .tag = .pmpcfg0 };

pub const pmpcfg1: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        pmp4cfg: PMPconf,
        pmp5cfg: PMPconf,
        pmp6cfg: PMPconf,
        pmp7cfg: PMPconf,
    },
    else => @compileError("unsupported XLEN for pmpcfg1 register"),
}) = .{ .tag = .pmpcfg1 };

pub const pmpcfg2: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        pmp8cfg: PMPconf,
        pmp9cfg: PMPconf,
        pmp10cfg: PMPconf,
        pmp11cfg: PMPconf,
    },
    64 => packed struct(u64) {
        pmp8cfg: PMPconf,
        pmp9cfg: PMPconf,
        pmp10cfg: PMPconf,
        pmp11cfg: PMPconf,
        pmp12cfg: PMPconf,
        pmp13cfg: PMPconf,
        pmp14cfg: PMPconf,
        pmp15cfg: PMPconf,
    },
    else => @compileError("unsupported XLEN for pmpcfg2 register"),
}) = .{ .tag = .pmpcfg2 };

pub const pmpcfg3: CSR(switch (XLEN) {
    32 => packed struct(u32) {
        pmp12cfg: PMPconf,
        pmp13cfg: PMPconf,
        pmp14cfg: PMPconf,
        pmp15cfg: PMPconf,
    },
    else => @compileError("unsupported XLEN for pmpcfg3 register"),
}) = .{ .tag = .pmpcfg3 };

const pmpaddrT = switch (XLEN) {
    32 => packed struct(u32) { address: u32 },
    64 => packed struct(u64) { address: u54, _reserved1: u10 },
    else => @compileError("unsupported XLEN for pmpaddr register"),
};

pub const pmpaddr: [16]CSR(pmpaddrT) = block: {
    var out: [16]CSR(pmpaddrT) = undefined;
    for (0..16) |i| {
        out[i] = .{ .tag = .{ .pmpaddr = i } };
    }
    break :block out;
};

pub const QEMU = struct {
    pub const Layout = struct {
        pub const PLIC = extern struct {};
        pub const UART = extern struct {};
        pub const VIRTIO = extern struct {};
        pub const CLINT = extern struct {
            _reserved: [0x4000]u8,
            timecmp: [4095]u64,
            time: u64,
        };
    };

    pub const CLINT = @as(*volatile Layout.CLINT, @ptrFromInt(0x02000000));
    pub const PLIC = @as(*volatile Layout.PLIC, @ptrFromInt(0x0C000000));
    pub const UART = @as(*volatile Layout.UART, @ptrFromInt(10000000));
    pub const VIRTIO = @as(*volatile Layout.VIRTIO, @ptrFromInt(10001000));
};
