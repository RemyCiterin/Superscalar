OUTPUT_ARCH("riscv")
OUTPUT_FORMAT("elf32-littleriscv")
ENTRY(_start);

SECTIONS {
    . = 0x80000000;
    PROVIDE(__kernel_start_phys = .);

    .text : ALIGN(16) {
        *(.text.start)
        . = ALIGN(16);
        *(.text .text.*)
        . = ALIGN(4096);
        *(.text.trampoline)
    }

    PROVIDE(__global_pointer$ = .);

    .srodata : ALIGN(16) {
        *(.srodata .srodata.*)
    }

    .sdata : ALIGN(16) {
        *(.sdata .sdata.*)
    }


    .data : ALIGN(16) {
        *(.data .data.*)
    }

    .rodata : ALIGN(16) {
        *(.rodata .rodata.*)
    }

    .eh_frame : ALIGN(16) {
        *(.eh_frame)
    }

    PROVIDE(__bss_start = .);

    .sbss : ALIGN(16) {
        *(.sbss .sbss.*)
    }

    .bss : ALIGN(16) {
        *(.bss .bss.*)
    }

    PROVIDE(__bss_end = .);

    . = ALIGN(4k);

    PROVIDE(KALLOC_BUFFER = .);

    /DISCARD/ : { *(.eh_frame_hdr .eh_frame) }
}
