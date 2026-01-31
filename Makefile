TOP ?= src/Soc.bsv
BSIM_MODULE ?= mkSocSim
BUILD_MODULE ?= mkSoc
SIM_CYCLES ?= 1000000000


BUILD = build
BSIM = bsim
PACKAGES = ./src/:+
SIM_FILE = ./build/mkTop_sim

LIB = \
			$(BLUESPECDIR)/Verilog/SizedFIFO.v \
			$(BLUESPECDIR)/Verilog/SizedFIFO0.v \
			$(BLUESPECDIR)/Verilog/FIFO1.v \
			$(BLUESPECDIR)/Verilog/FIFO2.v \
			$(BLUESPECDIR)/Verilog/FIFO20.v \
			$(BLUESPECDIR)/Verilog/FIFO10.v \
			$(BLUESPECDIR)/Verilog/BRAM1.v \
			$(BLUESPECDIR)/Verilog/BRAM2.v \
			$(BLUESPECDIR)/Verilog/BRAM1Load.v \
			$(BLUESPECDIR)/Verilog/BRAM2Load.v \
			$(BLUESPECDIR)/Verilog/BRAM1BE.v \
			$(BLUESPECDIR)/Verilog/BRAM2BE.v \
			$(BLUESPECDIR)/Verilog/BRAM1BELoad.v \
			$(BLUESPECDIR)/Verilog/BRAM2BELoad.v \
			$(BLUESPECDIR)/Verilog/RevertReg.v \
			$(BLUESPECDIR)/Verilog/RegFile.v \
			$(BLUESPECDIR)/Verilog/RegFileLoad.v

SOURCES = $(LIB) build/*.v src/top.v

BSC_FLAGS = -show-schedule -show-range-conflict -keep-fires -aggressive-conditions \
						-check-assert -no-warn-action-shadowing -sched-dot \
 						+RTS -K128M -RTS

SYNTH_FLAGS = -bdir $(BUILD) -vdir $(BUILD) -simdir $(BUILD) \
							-info-dir $(BUILD) -fdir $(BUILD)

BSIM_FLAGS = -bdir $(BSIM) -vdir $(BSIM) -simdir $(BSIM) \
							-info-dir $(BSIM) -fdir $(BSIM) -D BSIM -l pthread

DOT_FILES = $(shell ls ./build/*_combined_full.dot) \
	$(shell ls ./build/*_conflict.dot)

.PHONY: dot
dot:
	$(foreach f, $(DOT_FILES), sed -i '/_init_register_file/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_fifo_enqueue/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_fifo_dequeue/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_update_register_file/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_canon/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_block_ram_apply_read/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_block_ram_apply_write/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/Sched /d' $(f);)

kernel:
	elf_to_hex/elf_to_hex_32 soft/zig-out/bin/kernel.elf Mem.hex
	elf_to_hex/elf_to_hex_32 soft/zig-out/bin/kernel.elf Mem32.hex
	elf_to_hex/elf_to_hex_64 soft/zig-out/bin/kernel.elf Mem64.hex
	elf_to_hex/elf_to_hex_128 soft/zig-out/bin/kernel.elf Mem128.hex
	elf_to_hex/elf_to_hex_256 soft/zig-out/bin/kernel.elf Mem256.hex
	riscv32-none-elf-objdump -D soft/zig-out/bin/kernel.elf > soft/firmware.asm

.PHONY: coremark
coremark:
	make -C coremark compile PORT_DIR=barebones ITERATIONS=10
	riscv32-none-elf-objdump -D coremark/coremark.bare.riscv > \
		coremark/firmware.asm
	elf_to_hex/elf_to_hex_32 coremark/coremark.bare.riscv Mem.hex
	elf_to_hex/elf_to_hex_32 coremark/coremark.bare.riscv Mem32.hex
	elf_to_hex/elf_to_hex_64 coremark/coremark.bare.riscv Mem64.hex
	elf_to_hex/elf_to_hex_128 coremark/coremark.bare.riscv Mem128.hex
	elf_to_hex/elf_to_hex_256 coremark/coremark.bare.riscv Mem256.hex

.PHONY: compile
compile:
	bsc \
		$(SYNTH_FLAGS) $(BSC_FLAGS) \
		-p $(PACKAGES) -verilog -u -g $(BUILD_MODULE) $(TOP)

.PHONY: build
build:
	cabal run systolic-array


.PHONY: sim
sim:
	bsc $(BSC_FLAGS) $(BSIM_FLAGS) -p $(PACKAGES) -sim -u -g $(BSIM_MODULE) $(TOP)
	bsc $(BSC_FLAGS) $(BSIM_FLAGS) -sim -e $(BSIM_MODULE) -o \
		$(BSIM)/bsim $(BSIM)/*.ba
	./bsim/bsim -m $(SIM_CYCLES)

.PHONY: run
run:
	./bsim/bsim -m $(SIM_CYCLES)


.PHONY: yosys
yosys:
	yosys \
		-DULX3S -q -p "synth_ecp5 -abc9 -abc2 -top top -json ./build/mkTop.json" \
		$(LIB) build/*.v src/top_ulx3s.v

.PHONY: nextpnr
nextpnr:
	nextpnr-ecp5 --force --timing-allow-fail --json ./build/mkTop.json --lpf ulx3s.lpf \
		--textcfg ./build/mkTop_out.config --85k --freq 25 --package CABGA381

.PHONY: ecppack
ecppack:
	ecppack --compress --svf-rowsize 100000 --svf ./build/mkTop.svf \
		./build/mkTop_out.config ./build/mkTop.bit

.PHONY: clean
clean:
	rm -rf build/*
	rm -rf bsim/*
