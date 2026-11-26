CFLAGS = -lm -Isrc -O3

CFLAGS = -march=rv32im_zba_zbb_zicsr -mabi=ilp32 -fno-builtin \
					-ffreestanding -nostdlib #-O2 -ggdb

CFLAGS += -Ofast -funroll-loops -finline-functions -funroll-all-loops \
							-finline-limit=1000 -falign-functions=8 -falign-jumps=8 \
							-falign-loops=8 -fno-crossjumping -freorder-blocks-and-partition \
							-fno-strict-overflow -mtune=sifive-7-series

TGTS = $(shell ls src/*.c)
TARGETS = $(patsubst src/%.c,build/%.o, $(TGTS))

CC = riscv32-none-elf-gcc
LD = riscv32-none-elf-ld

compiler_rt:
	echo 'comptime { _ = @import("std"); }' > build/dummy.zig
	zig build-lib build/dummy.zig \
	  -target riscv32-freestanding \
	  -mcpu=generic_rv32+m \
	  -fcompiler-rt \
	  -OReleaseSmall \
	        -femit-bin=build/libcompiler_rt.a

build/%.o: src/%.c
	$(CC) -c $(CFLAGS) -o $@ $<

all: $(TARGETS) compiler_rt
	$(CC) $(CFLAGS) -Tsrc/linker.ld build/*.o src/*.s build/libcompiler_rt.a -o build/decode -lgcc
	riscv32-none-elf-objdump build/decode -S > build/decode.asm

run:
	./build/decode

clean:
	rm -f build/*
