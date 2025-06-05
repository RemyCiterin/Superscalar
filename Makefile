RTL = rtl
BUILD = build
BSIM = bsim
PACKAGES = ./src/:./BlueTileLink/src/:+
SIM_FILE = ./build/mkTop_sim
TOP = src/Soc.bsv

BSIM_MODULE = mkSoc

BUILD_MODULE = mkSoc

BSC_FLAGS = -keep-fires -aggressive-conditions \
						-check-assert -no-warn-action-shadowing

SYNTH_FLAGS = -show-schedule -sched-dot -bdir $(BUILD) \
							-vdir $(RTL) -simdir $(BUILD) \
							-info-dir $(BUILD) -fdir $(BUILD) #-D BSIM

BSIM_FLAGS = -bdir $(BSIM) -vdir $(BSIM) -simdir $(BSIM) \
							-info-dir $(BSIM) -fdir $(BSIM) -D BSIM -l pthread

DOT_FILES = $(shell ls ./build/*_combined_full.dot) \
	$(shell ls ./build/*_conflict.dot)

svg:
	$(foreach f, $(DOT_FILES), sed -i '/_init_register_file/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_fifo_enqueue/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_fifo_dequeue/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_update_register_file/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_ehr_canon/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_block_ram_apply_read/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/_block_ram_apply_write/d' $(f);)
	$(foreach f, $(DOT_FILES), sed -i '/Sched /d' $(f);)
	$(foreach f, $(DOT_FILES), dot -Tsvg $(f) > $(f:.dot=.svg);)

test:
	elf_to_hex/elf_to_hex ./rust/target/riscv32i-unknown-none-elf/release/SuperOS Mem.hex
	riscv32-none-elf-objdump ./rust/target/riscv32i-unknown-none-elf/release/SuperOS -D \
		> rust/firmware.asm

test_coremark:
	elf_to_hex/elf_to_hex ./coremark.bare.riscv Mem.hex

compile:
	bsc \
		$(SYNTH_FLAGS) $(BSC_FLAGS) -cpp +RTS -K128M -RTS \
		-p $(PACKAGES) -verilog -u -g $(BUILD_MODULE) $(TOP)

sim:
	bsc $(BSC_FLAGS) $(BSIM_FLAGS) -p $(PACKAGES) -sim -u -g $(BSIM_MODULE) $(TOP)
	bsc $(BSC_FLAGS) $(BSIM_FLAGS) -sim -e $(BSIM_MODULE) -o \
		$(BSIM)/bsim $(BSIM)/*.ba
	./bsim/bsim -m 1000000000

run:
	./bsim/bsim -m 1000000000

yosys:
	yosys \
		-DULX3S -q -p "synth_ecp5 -abc9 -abc2 -top mkTop -json ./build/mkTop.json" \
			rtl/* $(LIB)

nextpnr:
	nextpnr-ecp5 --force --timing-allow-fail --json ./build/mkTop.json --lpf ulx3s.lpf \
		--textcfg ./build/mkTop_out.config --85k --freq 40 --package CABGA381

ecppack:
	ecppack --compress --svf-rowsize 100000 --svf ./build/mkTop.svf \
		./build/mkTop_out.config ./build/mkTop.bit

fujprog:
	sudo fujprog build/mkTop.bit

fujprog_t:
	sudo fujprog build/mkTop.bit -t

clean:
	rm -rf $(BUILD)/*
	rm -rf $(BSIM)/*
	rm -rf $(RTL)/*
