.section .text.start
.global _start
_start:
  # a0 contains hartid
  # a1 contains device tree

  la t0, __bss_start
  la t1, __bss_end
  bgeu t0, t1, .bss_zero_loop_end
.bss_zero_loop:
  sb zero, (t0)
  addi t0, t0, 1
  bltu t0, t1, .bss_zero_loop
.bss_zero_loop_end:

  la sp, stack_top
  jal machine_main
.infinite_loop:
  j .infinite_loop

// .section .data
// .align 10
// user_binary:
//   .incbin "user.bin"

.section .bss
.align 4
  .skip 0x4000
stack_top:
  .skip 0x4000
