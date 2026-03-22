.section .text.start
.global _start
_start:
  # a0 contains hartid
  # a1 contains device tree

  csrr tp, mhartid
  bnez tp, .wait_sync

  la t0, __bss_start
  la t1, __bss_end
  bgeu t0, t1, .bss_zero_loop_end
.bss_zero_loop:
  sb zero, (t0)
  addi t0, t0, 1
  bltu t0, t1, .bss_zero_loop
.bss_zero_loop_end:

  la t0, sync
  sw zero, (t0)
  slli t0, tp, 12
  la sp, stack_top
  sub sp, sp, t0
  jal machine_main
.infinite_loop:
  j .infinite_loop

.wait_sync:
  la t0, sync
  lw t0, (t0)
  bnez t0, .wait_sync
  j .bss_zero_loop_end

.section .bss
.align 4
  .skip 0x8000
stack_top:
  .skip 0x4000

.section .data
.align 4
sync:
  .word 1

.global WAVEFILE
WAVEFILE:
.align 4
  .incbin "src/wave.txt"
