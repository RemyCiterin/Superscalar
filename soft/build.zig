const std = @import("std");
const Target = std.Target;
const Feature = Target.riscv.Feature;

// Although this function looks imperative, note that its job is to
// declaratively construct a build graph that will be executed by an external
// runner.
pub fn build(b: *std.Build) !void {
    const target = std.Target.Query{
        .cpu_arch = Target.Cpu.Arch.riscv32,
        .cpu_model = .{ .explicit = &Target.riscv.cpu.generic_rv32 },
        .cpu_features_add = Target.riscv.featureSet(&[_]Feature{
            .m,
            .zicbom,
        }),
        .os_tag = .freestanding,
        .abi = .none, // .eabi
    };

    const optimize = b.standardOptimizeOption(.{}); // .ReleaseSmall;

    const exe = b.addExecutable(.{
        .name = "kernel.elf",
        .root_source_file = .{ .cwd_relative = "src/main.zig" },
        .target = b.resolveTargetQuery(target),
        .optimize = optimize,
    });

    //exe.addAssemblyFile(.{ .cwd_relative = "src/trampoline.s" });
    exe.addAssemblyFile(.{ .cwd_relative = "src/init.S" });

    exe.setLinkerScriptPath(.{ .cwd_relative = "src/linker_kernel.ld" });

    b.installArtifact(exe);
}
