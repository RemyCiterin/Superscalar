

OUTPUT_ARCH(riscv)
ENTRY( _start )

SECTIONS
{
  /*
   * ensure that _start 0x80010000,
   * where qemu's -kernel jumps.
   */
  . = 0x80000000;
  . = ALIGN(4K);

  .text : {
    *(.text.init)
    *(.text .text.*)
  }

  /* . = ALIGN(4K); */ /* alignment  for page size 4k */
    rodata_start = .;
    .rodata : {
        *(.rodata .rodata.*)
    }

    /* . = ALIGN(4K); */ /* alignment  for page size 4k */
    data_start = .;
    .data : {
        *(.data .data.*)
        *(.sdata .sdata.*)
    }

    /* . = ALIGN(4K); */ /* alignment  for page size 4k */
    . = ALIGN(4);
    PROVIDE(bss_start = .);
    .bss : {
        *(.bss .bss.*)
        *(.sbss .sbss.*)
    }
    . = ALIGN(4);
    PROVIDE(bss_end = .);

    kalloc_buffer = .;
}
