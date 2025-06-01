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
    pkgs.libelf
    pkgs.bluespec
    pkgs.verilator
    pkgs.verilog
    pkgs.gtkwave
    pkgs.openfpgaloader
    pkgs.pkgsCross.riscv32-embedded.buildPackages.gcc
    #pkgsCross.buildPackages.binutils
    #pkgsCross.buildPackages.gcc
    #pkgs.sail-riscv-rv64
    pkgs.qemu

    pkgs.yosys
    pkgs.nextpnr
    pkgs.trellis
    #pkgs.icestorm

    pkgs.graphviz

    pkgs.fujprog

    pkgs.python312Packages.matplotlib
    pkgs.python312Packages.numpy
  ];

  shellHook = ''
    export BLUESPECDIR=${pkgs.bluespec}/lib
    '';
}
