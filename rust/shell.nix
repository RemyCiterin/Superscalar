{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.radare2
    pkgs.iaito
    pkgs.cargo
    pkgs.rustc
    pkgs.qemu
    pkgs.libelf
    pkgs.pkgsCross.riscv32-embedded.buildPackages.gcc
    pkgs.pkgsCross.riscv64-embedded.buildPackages.gcc
  ];
}
