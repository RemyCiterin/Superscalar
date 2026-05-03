all:
	cargo +nightly build -Z json-target-spec -Z build-std=core,alloc --release

qemu:
	qemu-system-riscv32 \
  	-M virt -serial stdio -display \
  	none -m 1024M -bios none \
  	-kernel target/riscv32ima-unknown-none-elf/release/kernel \
  	-cpu rv32,pmp=false -smp 2
