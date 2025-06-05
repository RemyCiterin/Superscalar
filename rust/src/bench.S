.section .text
.global load_banwidth_bench

load_banwidth_bench:
  la t0, my_block
  addi sp, sp, -4 * 12
  sw s0, 0 * 4(sp)
  sw s1, 1 * 4(sp)
  sw s2, 2 * 4(sp)
  sw s3, 3 * 4(sp)
  sw s4, 4 * 4(sp)
  sw s5, 5 * 4(sp)
  sw s6, 6 * 4(sp)
  sw s7, 7 * 4(sp)
  sw s8, 8 * 4(sp)
  sw s9, 9 * 4(sp)
  sw s10, 10 * 4(sp)
  sw s11, 11 * 4(sp)
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  fence

  # iteration 1
  lw a0, 0(t0)
  lw a1, 0(t0)
  lw a2, 0(t0)
  lw a3, 0(t0)
  lw a4, 0(t0)
  lw a5, 0(t0)
  lw a6, 0(t0)
  lw a7, 0(t0)
  lw s0, 0(t0)
  lw s1, 0(t0)
  lw s2, 0(t0)
  lw s3, 0(t0)
  lw s4, 0(t0)
  lw s5, 0(t0)
  lw s6, 0(t0)
  lw s7, 0(t0)
  lw s8, 0(t0)
  lw s9, 0(t0)
  lw s10, 0(t0)
  lw s11, 0(t0)

  # iteration 2
  lw a0, 0(t0)
  lw a1, 0(t0)
  lw a2, 0(t0)
  lw a3, 0(t0)
  lw a4, 0(t0)
  lw a5, 0(t0)
  lw a6, 0(t0)
  lw a7, 0(t0)
  lw s0, 0(t0)
  lw s1, 0(t0)
  lw s2, 0(t0)
  lw s3, 0(t0)
  lw s4, 0(t0)
  lw s5, 0(t0)
  lw s6, 0(t0)
  lw s7, 0(t0)
  lw s8, 0(t0)
  lw s9, 0(t0)
  lw s10, 0(t0)
  lw s11, 0(t0)

  # iteration 3
  lw a0, 0(t0)
  lw a1, 0(t0)
  lw a2, 0(t0)
  lw a3, 0(t0)
  lw a4, 0(t0)
  lw a5, 0(t0)
  lw a6, 0(t0)
  lw a7, 0(t0)
  lw s0, 0(t0)
  lw s1, 0(t0)
  lw s2, 0(t0)
  lw s3, 0(t0)
  lw s4, 0(t0)
  lw s5, 0(t0)
  lw s6, 0(t0)
  lw s7, 0(t0)
  lw s8, 0(t0)
  lw s9, 0(t0)
  lw s10, 0(t0)
  lw s11, 0(t0)

  # iteration 3
  lw a0, 0(t0)
  lw a1, 0(t0)
  lw a2, 0(t0)
  lw a3, 0(t0)
  lw a4, 0(t0)
  lw a5, 0(t0)
  lw a6, 0(t0)
  lw a7, 0(t0)
  lw s0, 0(t0)
  lw s1, 0(t0)
  lw s2, 0(t0)
  lw s3, 0(t0)
  lw s4, 0(t0)
  lw s5, 0(t0)
  lw s6, 0(t0)
  lw s7, 0(t0)
  lw s8, 0(t0)
  lw s9, 0(t0)
  lw s10, 0(t0)
  lw s11, 0(t0)

  # iteration 4
  lw a0, 0(t0)
  lw a1, 0(t0)
  lw a2, 0(t0)
  lw a3, 0(t0)
  lw a4, 0(t0)
  lw a5, 0(t0)
  lw a6, 0(t0)
  lw a7, 0(t0)
  lw s0, 0(t0)
  lw s1, 0(t0)
  lw s2, 0(t0)
  lw s3, 0(t0)
  lw s4, 0(t0)
  lw s5, 0(t0)
  lw s6, 0(t0)
  lw s7, 0(t0)
  lw s8, 0(t0)
  lw s9, 0(t0)
  lw s10, 0(t0)
  lw s11, 0(t0)

  # iteration 5
  lw a0, 0(t0)
  lw a1, 0(t0)
  lw a2, 0(t0)
  lw a3, 0(t0)
  lw a4, 0(t0)
  lw a5, 0(t0)
  lw a6, 0(t0)
  lw a7, 0(t0)
  lw s0, 0(t0)
  lw s1, 0(t0)
  lw s2, 0(t0)
  lw s3, 0(t0)
  lw s4, 0(t0)
  lw s5, 0(t0)
  lw s6, 0(t0)
  lw s7, 0(t0)
  lw s8, 0(t0)
  lw s9, 0(t0)
  lw s10, 0(t0)
  lw s11, 0(t0)

  fence

  lw s0, 0 * 4(sp)
  lw s1, 1 * 4(sp)
  lw s2, 2 * 4(sp)
  lw s3, 3 * 4(sp)
  lw s4, 4 * 4(sp)
  lw s5, 5 * 4(sp)
  lw s6, 6 * 4(sp)
  lw s7, 7 * 4(sp)
  lw s8, 8 * 4(sp)
  lw s9, 9 * 4(sp)
  lw s10, 10 * 4(sp)
  lw s11, 11 * 4(sp)
  #addi sp, sp, 4 * 12
  ret

.section .data
.align 4
my_block:
  .skip 0x10
