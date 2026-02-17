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

let
  libizumi = pkgs.callPackage "${builtins.fetchGit {
    url = "https://github.com/Izumi-visualizer/libizumi";
    rev = "2b801d5fd5def181b0e4361c3c6a175a160ec40e";
  }}/default.nix" { };
in

let
  izumi = pkgs.callPackage "${builtins.fetchGit {
    url = "https://github.com/Izumi-visualizer/izumi_tui";
    rev = "de07c04ca5abf3f456d217fcade369398c5b7eaa";
  }}/default.nix" { libizumi=libizumi; };
in

pkgs.mkShell {
  buildInputs = [
    # RTL simulation
    pkgs.bluespec
    pkgs.verilator
    pkgs.verilog
    pkgs.gtkwave
    izumi

    libizumi
    izumi

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
