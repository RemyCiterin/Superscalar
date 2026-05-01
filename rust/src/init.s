.section .text.start
.global _start
_start:
  # a0 contains hartid
  # a1 contains device tree

  la t0, .trampoline
  csrw mtvec, t0

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
  slli t0, tp, 12 // 4096 * hart
  la sp, stack_top
  sub sp, sp, t0
  .word 0 // trigger a illegal instruction exception
  jal machine_main
.infinite_loop:
  j .infinite_loop

.wait_sync:
  la t0, sync
  lw t0, (t0)
  bnez t0, .wait_sync
  j .bss_zero_loop_end

// Finish early the execution: print "ERROR!\n" and jump to the next instruction
.trampoline:
  // save registers on the stack
  addi sp, sp, -16
  sw t0, 0(sp)
  sw t1, 4(sp)
  sw t2, 8(sp)

  // print "ERROR\n"
  li t0, 0x10000000
  la t1, .exception_string
0:
  lb t2, (t1)
  addi t1, t1, 1
  sb t2, (t0)
  bnez t2, 0b

  // set the return program counter to jump after the falty instruction
  csrr t0, mepc
  addi t0, t0, 4
  csrw mepc, t0

  // restore context
  lw t0, 0(sp)
  lw t1, 4(sp)
  lw t2, 8(sp)
  addi sp, sp, 16
  mret
  //j .infinite_loop

.section .bss
.align 4
  .skip 0x8000
stack_top:
  .skip 0x4000

.section .data
.align 4
sync:
  .word 1

.align 4
.exception_string:
  .string "ERROR!\n"
