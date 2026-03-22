ENTRY(_start)



SECTIONS
{
  . = 0x80000000;
  .text : {
    KEEP(*(.text.start))
    *(.text*)
  }

  .rodata : {
    *(.rodata .rodata.*)
  }

  .data : ALIGN(16) {
      *(.data .data.*)
  }

  PROVIDE(__bss_start = .);
  .sbss : ALIGN(16) {
    *(.sbss .sbss.*)
  }

  .bss : ALIGN(16) {
    *(.bss .bss.*)
  }
  PROVIDE(__bss_end = .);

  PROVIDE(__malloc_buffer = .);
}
