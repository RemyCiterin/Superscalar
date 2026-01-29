.section .text.init
.global _reboot
.global _start


#define PRINT_HEX(code...)\
  code;                   \
  li a1, 0xFF000000;      \
  and a0, a0, a1;         \
  srli a0, a0, 24;        \
  call print_byte;        \
  code;                   \
  li a1, 0x00FF0000;      \
  and a0, a0, a1;         \
  srli a0, a0, 16;        \
  call print_byte;        \
  code;                   \
  li a1, 0x0000FF00;      \
  and a0, a0, a1;         \
  srli a0, a0, 8;         \
  call print_byte;        \
  code;                   \
  andi a0, a0, 0x000000FF;\
  call print_byte;


_start:
  la t0, bss_start
  la t1, bss_end
  bgeu t0, t1, .bss_zero_loop_end
.bss_zero_loop:
  sb zero, (t0)
  addi t0, t0, 1
  bltu t0, t1, .bss_zero_loop
.bss_zero_loop_end:

  la sp, stack_top
  la t0, _reboot
  csrw mtvec, t0
  jal kernel_main
.infinite_loop:
  j .infinite_loop

_reboot:
  li t2, 0x10000000
  la t0, reboot_message1
1:
  lb t1, 0(t0)
  beqz t1, 1f
  addi t0, t0, 1
  sb t1, 0(t2)
  j 1b
1:
  PRINT_HEX(csrr a0, mepc;)

  li t0, 0x10000000
  li t1, ' '
  sb t1, 0(t0)

  PRINT_HEX(csrr a0, mcause;)

  li t0, 0x10000000
  li t1, ' '
  sb t1, 0(t0)

  PRINT_HEX(csrr a0, mtval;)

  li t0, 0x10000000
  li t1, ' '
  sb t1, 0(t0)

  PRINT_HEX(
    csrr a1, mepc;
    lw a0, 0(a1);
  )

  li t2, 0x10000000
  la t0, reboot_message2
1:
  lb t1, 0(t0)
  beqz t1, _start
  addi t0, t0, 1
  sb t1, 0(t2)
  j 1b

/*
  Print a byte:
    take a byte `b` as argument in `a0` adn return using the retturn address in
    `ra`
  This function is a leaf (it doesn't call any other procedure, so it can be
  used without a stack)
*/
print_byte:
  andi t0, a0, 0x0F
  andi t1, a0, 0xF0
  srli t1, t1, 4
  li t3, 0x10000000
  li t2, 10

  blt t1, t2, 1f
  addi t1, t1, 0x41 - 10
  sb t1, 0(t3)
  j 2f
1:
  addi t1, t1, 0x30
  sb t1, 0(t3)
2:
  blt t0, t2, 1f
  addi t0, t0, 0x41 - 10
  sb t0, 0(t3)
  j 2f
1:
  addi t0, t0, 0x30
  sb t0, 0(t3)
2:
  ret


.section .data
reboot_message1:
  .string "\n***REBOOT at pc="
reboot_message2:
  .string "***\n"

.section .bss
.align 4
  .skip 0x1000
stack_top:
  .skip 0x4

