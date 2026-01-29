{ pkgs ? import <nixpkgs> {} }:

let
  pkgsCross = import pkgs.path {
    localSystem = pkgs.stdenv.buildPlatform.system;
    crossSystem = {
      config = "riscv32-none-elf";
      libc = "newlib-nano";
      #libc = "newlib";
      gcc.arch = "rv32im";
    };
  };
in

pkgs.mkShell {
  buildInputs = [
    # RTL simulation
    pkgs.bluespec
    pkgs.verilator
    pkgs.verilog
    pkgs.gtkwave

    # Some tools for FPGA implementation
    pkgs.yosys
    pkgs.nextpnr
    pkgs.trellis
    pkgs.icestorm
    pkgs.python313Packages.apycula
    pkgsCross.buildPackages.gcc
    pkgs.openfpgaloader

    pkgs.zig_0_12

    # View dot files
    pkgs.xdot
  ];

  shellHook = ''
    export BLUESPECDIR=${pkgs.bluespec}/lib
    '';
}
