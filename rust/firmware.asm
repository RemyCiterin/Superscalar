
rust/target/riscv32ima-unknown-none-elf/release/kernel:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	00003297          	auipc	t0,0x3
80000004:	63c28293          	addi	t0,t0,1596 # 8000363c <__bss_start>

80000008 <.Lpcrel_hi1>:
80000008:	0000b317          	auipc	t1,0xb
8000000c:	66430313          	addi	t1,t1,1636 # 8000b66c <__bss_end>
80000010:	0062f863          	bgeu	t0,t1,80000020 <.Lpcrel_hi2>

80000014 <.bss_zero_loop>:
80000014:	00028023          	sb	zero,0(t0)
80000018:	00128293          	addi	t0,t0,1
8000001c:	fe62ece3          	bltu	t0,t1,80000014 <.bss_zero_loop>

80000020 <.Lpcrel_hi2>:
80000020:	00007117          	auipc	sp,0x7
80000024:	63010113          	addi	sp,sp,1584 # 80007650 <stack_top>
80000028:	4a8000ef          	jal	800004d0 <machine_main>

8000002c <.infinite_loop>:
8000002c:	0000006f          	j	8000002c <.infinite_loop>

80000030 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf467cd885c4a0d00E>:
80000030:	00052503          	lw	a0,0(a0)
80000034:	00002317          	auipc	t1,0x2
80000038:	30430067          	jr	772(t1) # 80002338 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fd61e479eae66b5E>

8000003c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h296d3b444f21b7c7E>:
8000003c:	00052503          	lw	a0,0(a0)
80000040:	00002317          	auipc	t1,0x2
80000044:	3a430067          	jr	932(t1) # 800023e4 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E>

80000048 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17he5e842e7a1237a83E>:
80000048:	01c5a603          	lw	a2,28(a1)
8000004c:	01067693          	andi	a3,a2,16
80000050:	00069a63          	bnez	a3,80000064 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17he5e842e7a1237a83E+0x1c>
80000054:	02067613          	andi	a2,a2,32
80000058:	00061a63          	bnez	a2,8000006c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17he5e842e7a1237a83E+0x24>
8000005c:	00002317          	auipc	t1,0x2
80000060:	6c430067          	jr	1732(t1) # 80002720 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he2712ed01a639beaE>
80000064:	00001317          	auipc	t1,0x1
80000068:	dec30067          	jr	-532(t1) # 80000e50 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0cc471d8fe68dcc0E>
8000006c:	00001317          	auipc	t1,0x1
80000070:	e5c30067          	jr	-420(t1) # 80000ec8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2dd7102eaaae9f01E>

80000074 <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE>:
80000074:	ff010113          	addi	sp,sp,-16
80000078:	08000513          	li	a0,128
8000007c:	00012623          	sw	zero,12(sp)
80000080:	00a5f863          	bgeu	a1,a0,80000090 <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0x1c>
80000084:	00d10513          	addi	a0,sp,13
80000088:	00b10623          	sb	a1,12(sp)
8000008c:	0a00006f          	j	8000012c <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0xb8>
80000090:	00b5d513          	srli	a0,a1,0xb
80000094:	02051263          	bnez	a0,800000b8 <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0x44>
80000098:	00e10513          	addi	a0,sp,14
8000009c:	0065d613          	srli	a2,a1,0x6
800000a0:	0c066613          	ori	a2,a2,192
800000a4:	00c10623          	sb	a2,12(sp)
800000a8:	03f5f593          	andi	a1,a1,63
800000ac:	08058593          	addi	a1,a1,128
800000b0:	00b106a3          	sb	a1,13(sp)
800000b4:	0780006f          	j	8000012c <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0xb8>
800000b8:	0105d513          	srli	a0,a1,0x10
800000bc:	02051a63          	bnez	a0,800000f0 <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0x7c>
800000c0:	00f10513          	addi	a0,sp,15
800000c4:	00c5d613          	srli	a2,a1,0xc
800000c8:	0e066613          	ori	a2,a2,224
800000cc:	00c10623          	sb	a2,12(sp)
800000d0:	01459613          	slli	a2,a1,0x14
800000d4:	01a65613          	srli	a2,a2,0x1a
800000d8:	08060613          	addi	a2,a2,128
800000dc:	00c106a3          	sb	a2,13(sp)
800000e0:	03f5f593          	andi	a1,a1,63
800000e4:	08058593          	addi	a1,a1,128
800000e8:	00b10723          	sb	a1,14(sp)
800000ec:	0400006f          	j	8000012c <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0xb8>
800000f0:	01010513          	addi	a0,sp,16
800000f4:	0125d613          	srli	a2,a1,0x12
800000f8:	0f066613          	ori	a2,a2,240
800000fc:	00c10623          	sb	a2,12(sp)
80000100:	00e59613          	slli	a2,a1,0xe
80000104:	01a65613          	srli	a2,a2,0x1a
80000108:	08060613          	addi	a2,a2,128
8000010c:	00c106a3          	sb	a2,13(sp)
80000110:	01459613          	slli	a2,a1,0x14
80000114:	01a65613          	srli	a2,a2,0x1a
80000118:	08060613          	addi	a2,a2,128
8000011c:	00c10723          	sb	a2,14(sp)
80000120:	03f5f593          	andi	a1,a1,63
80000124:	08058593          	addi	a1,a1,128
80000128:	00b107a3          	sb	a1,15(sp)
8000012c:	00c10613          	addi	a2,sp,12
80000130:	100005b7          	lui	a1,0x10000
80000134:	00064683          	lbu	a3,0(a2)
80000138:	00160713          	addi	a4,a2,1
8000013c:	00d58023          	sb	a3,0(a1) # 10000000 <_start-0x70000000>
80000140:	00070613          	mv	a2,a4
80000144:	fea718e3          	bne	a4,a0,80000134 <_ZN4core3fmt5Write10write_char17h30fe22ef10e6ed3eE+0xc0>
80000148:	00000513          	li	a0,0
8000014c:	01010113          	addi	sp,sp,16
80000150:	00008067          	ret

80000154 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E>:
80000154:	00058613          	mv	a2,a1
80000158:	0045a683          	lw	a3,4(a1)
8000015c:	00c5a583          	lw	a1,12(a1)
80000160:	00100713          	li	a4,1
80000164:	00e68863          	beq	a3,a4,80000174 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x20>
80000168:	00069863          	bnez	a3,80000178 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x24>
8000016c:	00059663          	bnez	a1,80000178 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x24>
80000170:	0400006f          	j	800001b0 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x5c>
80000174:	00058a63          	beqz	a1,80000188 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x34>
80000178:	800035b7          	lui	a1,0x80003
8000017c:	03c58593          	addi	a1,a1,60 # 8000303c <.Lanon.c11cc9eb1ad76507c390592964f42423.6>
80000180:	00001317          	auipc	t1,0x1
80000184:	dc030067          	jr	-576(t1) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
80000188:	00062583          	lw	a1,0(a2)
8000018c:	0045a503          	lw	a0,4(a1)
80000190:	02050063          	beqz	a0,800001b0 <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x5c>
80000194:	0005a603          	lw	a2,0(a1)
80000198:	100005b7          	lui	a1,0x10000
8000019c:	00064683          	lbu	a3,0(a2)
800001a0:	00160613          	addi	a2,a2,1
800001a4:	fff50513          	addi	a0,a0,-1
800001a8:	00d58023          	sb	a3,0(a1) # 10000000 <_start-0x70000000>
800001ac:	fe0518e3          	bnez	a0,8000019c <_ZN4core3fmt5Write9write_fmt17h562400a7801a2396E+0x48>
800001b0:	00000513          	li	a0,0
800001b4:	00008067          	ret

800001b8 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1cc8d28e518563E>:
800001b8:	800036b7          	lui	a3,0x80003
800001bc:	00068693          	mv	a3,a3
800001c0:	00500613          	li	a2,5
800001c4:	00058513          	mv	a0,a1
800001c8:	00068593          	mv	a1,a3
800001cc:	00001317          	auipc	t1,0x1
800001d0:	5fc30067          	jr	1532(t1) # 800017c8 <_ZN4core3fmt9Formatter9write_str17h3fc90c9c78785393E>

800001d4 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h18d4b1169430a0c2E>:
800001d4:	00052503          	lw	a0,0(a0)
800001d8:	00001317          	auipc	t1,0x1
800001dc:	73830067          	jr	1848(t1) # 80001910 <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E>

800001e0 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE>:
800001e0:	fe010113          	addi	sp,sp,-32
800001e4:	00112e23          	sw	ra,28(sp)
800001e8:	00812c23          	sw	s0,24(sp)
800001ec:	00912a23          	sw	s1,20(sp)
800001f0:	01212823          	sw	s2,16(sp)
800001f4:	01312623          	sw	s3,12(sp)
800001f8:	01412423          	sw	s4,8(sp)
800001fc:	00462683          	lw	a3,4(a2)
80000200:	00058493          	mv	s1,a1
80000204:	00050413          	mv	s0,a0
80000208:	06068263          	beqz	a3,8000026c <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0x8c>
8000020c:	00862903          	lw	s2,8(a2)
80000210:	04090e63          	beqz	s2,8000026c <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0x8c>
80000214:	00062983          	lw	s3,0(a2)
80000218:	8000b537          	lui	a0,0x8000b
8000021c:	65050513          	addi	a0,a0,1616 # 8000b650 <_ZN6kernel6kalloc16KERNEL_ALLOCATOR17h4d584d5fe1392897E>
80000220:	00400593          	li	a1,4
80000224:	00048613          	mv	a2,s1
80000228:	00001097          	auipc	ra,0x1
8000022c:	a7c080e7          	jalr	-1412(ra) # 80000ca4 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h8b01183298a48b5bE>
80000230:	06050263          	beqz	a0,80000294 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0xb4>
80000234:	00050a13          	mv	s4,a0
80000238:	00098593          	mv	a1,s3
8000023c:	00090613          	mv	a2,s2
80000240:	00002097          	auipc	ra,0x2
80000244:	680080e7          	jalr	1664(ra) # 800028c0 <memcpy>
80000248:	8000b537          	lui	a0,0x8000b
8000024c:	65050513          	addi	a0,a0,1616 # 8000b650 <_ZN6kernel6kalloc16KERNEL_ALLOCATOR17h4d584d5fe1392897E>
80000250:	00400613          	li	a2,4
80000254:	00098593          	mv	a1,s3
80000258:	00090693          	mv	a3,s2
8000025c:	00001097          	auipc	ra,0x1
80000260:	ad4080e7          	jalr	-1324(ra) # 80000d30 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h890424095f2912c2E>
80000264:	000a0513          	mv	a0,s4
80000268:	0400006f          	j	800002a8 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0xc8>
8000026c:	02048c63          	beqz	s1,800002a4 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0xc4>
80000270:	80003537          	lui	a0,0x80003
80000274:	64154003          	lbu	zero,1601(a0) # 80003641 <__rust_no_alloc_shim_is_unstable>
80000278:	8000b537          	lui	a0,0x8000b
8000027c:	65050513          	addi	a0,a0,1616 # 8000b650 <_ZN6kernel6kalloc16KERNEL_ALLOCATOR17h4d584d5fe1392897E>
80000280:	00400593          	li	a1,4
80000284:	00048613          	mv	a2,s1
80000288:	00001097          	auipc	ra,0x1
8000028c:	a1c080e7          	jalr	-1508(ra) # 80000ca4 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h8b01183298a48b5bE>
80000290:	00051c63          	bnez	a0,800002a8 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0xc8>
80000294:	00400513          	li	a0,4
80000298:	00a42223          	sw	a0,4(s0)
8000029c:	00100593          	li	a1,1
800002a0:	0100006f          	j	800002b0 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE+0xd0>
800002a4:	00400513          	li	a0,4
800002a8:	00000593          	li	a1,0
800002ac:	00a42223          	sw	a0,4(s0)
800002b0:	00942423          	sw	s1,8(s0)
800002b4:	00b42023          	sw	a1,0(s0)
800002b8:	01c12083          	lw	ra,28(sp)
800002bc:	01812403          	lw	s0,24(sp)
800002c0:	01412483          	lw	s1,20(sp)
800002c4:	01012903          	lw	s2,16(sp)
800002c8:	00c12983          	lw	s3,12(sp)
800002cc:	00812a03          	lw	s4,8(sp)
800002d0:	02010113          	addi	sp,sp,32
800002d4:	00008067          	ret

800002d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E>:
800002d8:	fd010113          	addi	sp,sp,-48
800002dc:	02112623          	sw	ra,44(sp)
800002e0:	02812423          	sw	s0,40(sp)
800002e4:	02912223          	sw	s1,36(sp)
800002e8:	00050413          	mv	s0,a0
800002ec:	00052603          	lw	a2,0(a0)
800002f0:	00160513          	addi	a0,a2,1
800002f4:	0a050263          	beqz	a0,80000398 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0xc0>
800002f8:	00c05463          	blez	a2,80000300 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0x28>
800002fc:	00161513          	slli	a0,a2,0x1
80000300:	00400593          	li	a1,4
80000304:	00050493          	mv	s1,a0
80000308:	00a5e463          	bltu	a1,a0,80000310 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0x38>
8000030c:	00400493          	li	s1,4
80000310:	01e55513          	srli	a0,a0,0x1e
80000314:	08051063          	bnez	a0,80000394 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0xbc>
80000318:	00249593          	slli	a1,s1,0x2
8000031c:	80000537          	lui	a0,0x80000
80000320:	ffc50713          	addi	a4,a0,-4 # 7ffffffc <_start-0x4>
80000324:	00000513          	li	a0,0
80000328:	06b76863          	bltu	a4,a1,80000398 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0xc0>
8000032c:	00060e63          	beqz	a2,80000348 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0x70>
80000330:	00442503          	lw	a0,4(s0)
80000334:	00261613          	slli	a2,a2,0x2
80000338:	00a12c23          	sw	a0,24(sp)
8000033c:	02c12023          	sw	a2,32(sp)
80000340:	00400513          	li	a0,4
80000344:	0080006f          	j	8000034c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0x74>
80000348:	00000513          	li	a0,0
8000034c:	00a12e23          	sw	a0,28(sp)
80000350:	00c10513          	addi	a0,sp,12
80000354:	01810613          	addi	a2,sp,24
80000358:	00000097          	auipc	ra,0x0
8000035c:	e88080e7          	jalr	-376(ra) # 800001e0 <_ZN5alloc7raw_vec11finish_grow17h579d1929d697b31aE>
80000360:	00c12503          	lw	a0,12(sp)
80000364:	02051263          	bnez	a0,80000388 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0xb0>
80000368:	01012503          	lw	a0,16(sp)
8000036c:	00a42223          	sw	a0,4(s0)
80000370:	00942023          	sw	s1,0(s0)
80000374:	02c12083          	lw	ra,44(sp)
80000378:	02812403          	lw	s0,40(sp)
8000037c:	02412483          	lw	s1,36(sp)
80000380:	03010113          	addi	sp,sp,48
80000384:	00008067          	ret
80000388:	01012503          	lw	a0,16(sp)
8000038c:	01412683          	lw	a3,20(sp)
80000390:	0080006f          	j	80000398 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E+0xc0>
80000394:	00000513          	li	a0,0
80000398:	80003637          	lui	a2,0x80003
8000039c:	10c60613          	addi	a2,a2,268 # 8000310c <.Lanon.c11cc9eb1ad76507c390592964f42423.17>
800003a0:	00068593          	mv	a1,a3
800003a4:	00001097          	auipc	ra,0x1
800003a8:	a80080e7          	jalr	-1408(ra) # 80000e24 <_ZN5alloc7raw_vec12handle_error17h8ca5788e860c69deE>

800003ac <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hd15692d202cc39e7E>:
800003ac:	fe010113          	addi	sp,sp,-32
800003b0:	00112e23          	sw	ra,28(sp)
800003b4:	00058293          	mv	t0,a1
800003b8:	00450793          	addi	a5,a0,4
800003bc:	00a12c23          	sw	a0,24(sp)
800003c0:	80003537          	lui	a0,0x80003
800003c4:	01850513          	addi	a0,a0,24 # 80003018 <.Lanon.c11cc9eb1ad76507c390592964f42423.2>
800003c8:	00a12423          	sw	a0,8(sp)
800003cc:	01810513          	addi	a0,sp,24
800003d0:	00a12223          	sw	a0,4(sp)
800003d4:	00500513          	li	a0,5
800003d8:	800035b7          	lui	a1,0x80003
800003dc:	02858593          	addi	a1,a1,40 # 80003028 <.Lanon.c11cc9eb1ad76507c390592964f42423.3>
800003e0:	800036b7          	lui	a3,0x80003
800003e4:	03268693          	addi	a3,a3,50 # 80003032 <.Lanon.c11cc9eb1ad76507c390592964f42423.3+0xa>
800003e8:	80003837          	lui	a6,0x80003
800003ec:	00880813          	addi	a6,a6,8 # 80003008 <.Lanon.c11cc9eb1ad76507c390592964f42423.1>
800003f0:	800038b7          	lui	a7,0x80003
800003f4:	03688893          	addi	a7,a7,54 # 80003036 <.Lanon.c11cc9eb1ad76507c390592964f42423.5>
800003f8:	00600613          	li	a2,6
800003fc:	00400713          	li	a4,4
80000400:	00a12023          	sw	a0,0(sp)
80000404:	00028513          	mv	a0,t0
80000408:	00001097          	auipc	ra,0x1
8000040c:	3d0080e7          	jalr	976(ra) # 800017d8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17ha0affbfc7f153bceE>
80000410:	01c12083          	lw	ra,28(sp)
80000414:	02010113          	addi	sp,sp,32
80000418:	00008067          	ret

8000041c <_ZN60_$LT$kernel..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17hfabc13cd00b50fe0E>:
8000041c:	00060e63          	beqz	a2,80000438 <_ZN60_$LT$kernel..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17hfabc13cd00b50fe0E+0x1c>
80000420:	10000537          	lui	a0,0x10000
80000424:	0005c683          	lbu	a3,0(a1)
80000428:	00158593          	addi	a1,a1,1
8000042c:	fff60613          	addi	a2,a2,-1
80000430:	00d50023          	sb	a3,0(a0) # 10000000 <_start-0x70000000>
80000434:	fe0618e3          	bnez	a2,80000424 <_ZN60_$LT$kernel..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17hfabc13cd00b50fe0E+0x8>
80000438:	00000513          	li	a0,0
8000043c:	00008067          	ret

80000440 <rust_begin_unwind>:
80000440:	fd010113          	addi	sp,sp,-48
80000444:	02112623          	sw	ra,44(sp)
80000448:	00a12223          	sw	a0,4(sp)
8000044c:	00410513          	addi	a0,sp,4
80000450:	02a12023          	sw	a0,32(sp)
80000454:	80000537          	lui	a0,0x80000
80000458:	03c50513          	addi	a0,a0,60 # 8000003c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h296d3b444f21b7c7E>
8000045c:	02a12223          	sw	a0,36(sp)
80000460:	80003537          	lui	a0,0x80003
80000464:	0f050513          	addi	a0,a0,240 # 800030f0 <.Lanon.c11cc9eb1ad76507c390592964f42423.15>
80000468:	00a12423          	sw	a0,8(sp)
8000046c:	00200513          	li	a0,2
80000470:	00a12623          	sw	a0,12(sp)
80000474:	00012c23          	sw	zero,24(sp)
80000478:	02010513          	addi	a0,sp,32
8000047c:	00a12823          	sw	a0,16(sp)
80000480:	00100513          	li	a0,1
80000484:	00a12a23          	sw	a0,20(sp)
80000488:	800035b7          	lui	a1,0x80003
8000048c:	03c58593          	addi	a1,a1,60 # 8000303c <.Lanon.c11cc9eb1ad76507c390592964f42423.6>
80000490:	02b10513          	addi	a0,sp,43
80000494:	00810613          	addi	a2,sp,8
80000498:	00001097          	auipc	ra,0x1
8000049c:	aa8080e7          	jalr	-1368(ra) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
800004a0:	00051463          	bnez	a0,800004a8 <rust_begin_unwind+0x68>
800004a4:	0000006f          	j	800004a4 <rust_begin_unwind+0x64>
800004a8:	80003537          	lui	a0,0x80003
800004ac:	06450513          	addi	a0,a0,100 # 80003064 <.Lanon.c11cc9eb1ad76507c390592964f42423.8>
800004b0:	800036b7          	lui	a3,0x80003
800004b4:	05468693          	addi	a3,a3,84 # 80003054 <.Lanon.c11cc9eb1ad76507c390592964f42423.7>
800004b8:	80003737          	lui	a4,0x80003
800004bc:	0a070713          	addi	a4,a4,160 # 800030a0 <.Lanon.c11cc9eb1ad76507c390592964f42423.10>
800004c0:	02b00593          	li	a1,43
800004c4:	02b10613          	addi	a2,sp,43
800004c8:	00002097          	auipc	ra,0x2
800004cc:	d44080e7          	jalr	-700(ra) # 8000220c <_ZN4core6result13unwrap_failed17hcb9f3ee45fc5ed7fE>

800004d0 <machine_main>:
800004d0:	fb010113          	addi	sp,sp,-80
800004d4:	04112623          	sw	ra,76(sp)
800004d8:	04812423          	sw	s0,72(sp)
800004dc:	04912223          	sw	s1,68(sp)
800004e0:	05212023          	sw	s2,64(sp)
800004e4:	8000c537          	lui	a0,0x8000c
800004e8:	00050513          	mv	a0,a0
800004ec:	00a12e23          	sw	a0,28(sp)
800004f0:	01c10513          	addi	a0,sp,28
800004f4:	00a12623          	sw	a0,12(sp)
800004f8:	80000537          	lui	a0,0x80000
800004fc:	1d450513          	addi	a0,a0,468 # 800001d4 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h18d4b1169430a0c2E>
80000500:	00a12823          	sw	a0,16(sp)
80000504:	80003537          	lui	a0,0x80003
80000508:	0c850513          	addi	a0,a0,200 # 800030c8 <.Lanon.c11cc9eb1ad76507c390592964f42423.13>
8000050c:	02a12223          	sw	a0,36(sp)
80000510:	00200513          	li	a0,2
80000514:	02a12423          	sw	a0,40(sp)
80000518:	02012a23          	sw	zero,52(sp)
8000051c:	00c10493          	addi	s1,sp,12
80000520:	02912623          	sw	s1,44(sp)
80000524:	00100913          	li	s2,1
80000528:	03212823          	sw	s2,48(sp)
8000052c:	800035b7          	lui	a1,0x80003
80000530:	03c58593          	addi	a1,a1,60 # 8000303c <.Lanon.c11cc9eb1ad76507c390592964f42423.6>
80000534:	03f10513          	addi	a0,sp,63
80000538:	02410613          	addi	a2,sp,36
8000053c:	00001097          	auipc	ra,0x1
80000540:	a04080e7          	jalr	-1532(ra) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
80000544:	14051a63          	bnez	a0,80000698 <machine_main+0x1c8>
80000548:	8000b437          	lui	s0,0x8000b
8000054c:	65040413          	addi	s0,s0,1616 # 8000b650 <_ZN6kernel6kalloc16KERNEL_ALLOCATOR17h4d584d5fe1392897E>
80000550:	00040513          	mv	a0,s0
80000554:	00001097          	auipc	ra,0x1
80000558:	854080e7          	jalr	-1964(ra) # 80000da8 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E>
8000055c:	00440513          	addi	a0,s0,4
80000560:	8000c5b7          	lui	a1,0x8000c
80000564:	00058593          	mv	a1,a1
80000568:	00a00637          	lui	a2,0xa00
8000056c:	00000097          	auipc	ra,0x0
80000570:	6ac080e7          	jalr	1708(ra) # 80000c18 <_ZN21linked_list_allocator4Heap4init17h783d3185efc1e61dE>
80000574:	00040513          	mv	a0,s0
80000578:	00001097          	auipc	ra,0x1
8000057c:	868080e7          	jalr	-1944(ra) # 80000de0 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$6unlock17h9d7a1f9649d70243E>
80000580:	00010623          	sb	zero,12(sp)
80000584:	00012823          	sw	zero,16(sp)
80000588:	00400513          	li	a0,4
8000058c:	00a12a23          	sw	a0,20(sp)
80000590:	00012c23          	sw	zero,24(sp)
80000594:	4524a52f          	amoor.w.aq	a0,s2,(s1)
80000598:	0ff57513          	zext.b	a0,a0
8000059c:	02050463          	beqz	a0,800005c4 <machine_main+0xf4>
800005a0:	00100513          	li	a0,1
800005a4:	00c10593          	addi	a1,sp,12
800005a8:	0080006f          	j	800005b0 <machine_main+0xe0>
800005ac:	0100000f          	fence	w,unknown
800005b0:	00c10603          	lb	a2,12(sp)
800005b4:	fe061ce3          	bnez	a2,800005ac <machine_main+0xdc>
800005b8:	44a5a62f          	amoor.w.aq	a2,a0,(a1)
800005bc:	0ff67613          	zext.b	a2,a2
800005c0:	fe0618e3          	bnez	a2,800005b0 <machine_main+0xe0>
800005c4:	01812403          	lw	s0,24(sp)
800005c8:	01012503          	lw	a0,16(sp)
800005cc:	00a41863          	bne	s0,a0,800005dc <machine_main+0x10c>
800005d0:	01010513          	addi	a0,sp,16
800005d4:	00000097          	auipc	ra,0x0
800005d8:	d04080e7          	jalr	-764(ra) # 800002d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb8d2f5cd70ea4458E>
800005dc:	01412503          	lw	a0,20(sp)
800005e0:	00241593          	slli	a1,s0,0x2
800005e4:	00b50533          	add	a0,a0,a1
800005e8:	02a00593          	li	a1,42
800005ec:	00b52023          	sw	a1,0(a0)
800005f0:	00140413          	addi	s0,s0,1
800005f4:	00812c23          	sw	s0,24(sp)
800005f8:	0310000f          	fence	rw,w
800005fc:	00010623          	sb	zero,12(sp)
80000600:	00100513          	li	a0,1
80000604:	00c10593          	addi	a1,sp,12
80000608:	44a5a62f          	amoor.w.aq	a2,a0,(a1)
8000060c:	0ff67613          	zext.b	a2,a2
80000610:	00060e63          	beqz	a2,8000062c <machine_main+0x15c>
80000614:	00c10603          	lb	a2,12(sp)
80000618:	fe0608e3          	beqz	a2,80000608 <machine_main+0x138>
8000061c:	0100000f          	fence	w,unknown
80000620:	00c10603          	lb	a2,12(sp)
80000624:	fe061ce3          	bnez	a2,8000061c <machine_main+0x14c>
80000628:	fe1ff06f          	j	80000608 <machine_main+0x138>
8000062c:	01812503          	lw	a0,24(sp)
80000630:	08050863          	beqz	a0,800006c0 <machine_main+0x1f0>
80000634:	01412503          	lw	a0,20(sp)
80000638:	00a12e23          	sw	a0,28(sp)
8000063c:	80002537          	lui	a0,0x80002
80000640:	72050513          	addi	a0,a0,1824 # 80002720 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he2712ed01a639beaE>
80000644:	02a12023          	sw	a0,32(sp)
80000648:	80003537          	lui	a0,0x80003
8000064c:	13850513          	addi	a0,a0,312 # 80003138 <.Lanon.c11cc9eb1ad76507c390592964f42423.20>
80000650:	02a12223          	sw	a0,36(sp)
80000654:	00200513          	li	a0,2
80000658:	02a12423          	sw	a0,40(sp)
8000065c:	02012a23          	sw	zero,52(sp)
80000660:	01c10513          	addi	a0,sp,28
80000664:	02a12623          	sw	a0,44(sp)
80000668:	00100513          	li	a0,1
8000066c:	02a12823          	sw	a0,48(sp)
80000670:	800035b7          	lui	a1,0x80003
80000674:	03c58593          	addi	a1,a1,60 # 8000303c <.Lanon.c11cc9eb1ad76507c390592964f42423.6>
80000678:	03f10513          	addi	a0,sp,63
8000067c:	02410613          	addi	a2,sp,36
80000680:	00001097          	auipc	ra,0x1
80000684:	8c0080e7          	jalr	-1856(ra) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
80000688:	00051863          	bnez	a0,80000698 <machine_main+0x1c8>
8000068c:	0310000f          	fence	rw,w
80000690:	00010623          	sb	zero,12(sp)
80000694:	0000006f          	j	80000694 <machine_main+0x1c4>
80000698:	80003537          	lui	a0,0x80003
8000069c:	06450513          	addi	a0,a0,100 # 80003064 <.Lanon.c11cc9eb1ad76507c390592964f42423.8>
800006a0:	800036b7          	lui	a3,0x80003
800006a4:	05468693          	addi	a3,a3,84 # 80003054 <.Lanon.c11cc9eb1ad76507c390592964f42423.7>
800006a8:	80003737          	lui	a4,0x80003
800006ac:	0a070713          	addi	a4,a4,160 # 800030a0 <.Lanon.c11cc9eb1ad76507c390592964f42423.10>
800006b0:	02b00593          	li	a1,43
800006b4:	03f10613          	addi	a2,sp,63
800006b8:	00002097          	auipc	ra,0x2
800006bc:	b54080e7          	jalr	-1196(ra) # 8000220c <_ZN4core6result13unwrap_failed17hcb9f3ee45fc5ed7fE>
800006c0:	80003637          	lui	a2,0x80003
800006c4:	11c60613          	addi	a2,a2,284 # 8000311c <.Lanon.c11cc9eb1ad76507c390592964f42423.18>
800006c8:	00000593          	li	a1,0
800006cc:	00002097          	auipc	ra,0x2
800006d0:	c0c080e7          	jalr	-1012(ra) # 800022d8 <_ZN4core9panicking18panic_bounds_check17h6a309319e9c2f02fE>

800006d4 <_ZN6kernel6kalloc18handle_alloc_error17hd97de9660dbca2d1E>:
800006d4:	fd010113          	addi	sp,sp,-48
800006d8:	00a12423          	sw	a0,8(sp)
800006dc:	00b12623          	sw	a1,12(sp)
800006e0:	00810513          	addi	a0,sp,8
800006e4:	02a12423          	sw	a0,40(sp)
800006e8:	80000537          	lui	a0,0x80000
800006ec:	3ac50513          	addi	a0,a0,940 # 800003ac <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hd15692d202cc39e7E>
800006f0:	02a12623          	sw	a0,44(sp)
800006f4:	80003537          	lui	a0,0x80003
800006f8:	15850513          	addi	a0,a0,344 # 80003158 <.Lanon.c11cc9eb1ad76507c390592964f42423.22>
800006fc:	00a12823          	sw	a0,16(sp)
80000700:	00100513          	li	a0,1
80000704:	00a12a23          	sw	a0,20(sp)
80000708:	02012023          	sw	zero,32(sp)
8000070c:	02810593          	addi	a1,sp,40
80000710:	00b12c23          	sw	a1,24(sp)
80000714:	00a12e23          	sw	a0,28(sp)
80000718:	800035b7          	lui	a1,0x80003
8000071c:	17058593          	addi	a1,a1,368 # 80003170 <.Lanon.c11cc9eb1ad76507c390592964f42423.24>
80000720:	01010513          	addi	a0,sp,16
80000724:	00002097          	auipc	ra,0x2
80000728:	b58080e7          	jalr	-1192(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>

8000072c <__rg_oom>:
8000072c:	00050613          	mv	a2,a0
80000730:	00058513          	mv	a0,a1
80000734:	00060593          	mv	a1,a2
80000738:	00000097          	auipc	ra,0x0
8000073c:	f9c080e7          	jalr	-100(ra) # 800006d4 <_ZN6kernel6kalloc18handle_alloc_error17hd97de9660dbca2d1E>

80000740 <__rust_alloc_error_handler>:
80000740:	00000317          	auipc	t1,0x0
80000744:	fec30067          	jr	-20(t1) # 8000072c <__rg_oom>

80000748 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4db991658be9abddE>:
80000748:	00052503          	lw	a0,0(a0)
8000074c:	00001317          	auipc	t1,0x1
80000750:	1c430067          	jr	452(t1) # 80001910 <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E>

80000754 <_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdaf6ff8244c5466eE>:
80000754:	800036b7          	lui	a3,0x80003
80000758:	18068693          	addi	a3,a3,384 # 80003180 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.0>
8000075c:	00b00613          	li	a2,11
80000760:	00058513          	mv	a0,a1
80000764:	00068593          	mv	a1,a3
80000768:	00001317          	auipc	t1,0x1
8000076c:	06030067          	jr	96(t1) # 800017c8 <_ZN4core3fmt9Formatter9write_str17h3fc90c9c78785393E>

80000770 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E>:
80000770:	fd010113          	addi	sp,sp,-48
80000774:	02112623          	sw	ra,44(sp)
80000778:	02812423          	sw	s0,40(sp)
8000077c:	02912223          	sw	s1,36(sp)
80000780:	03212023          	sw	s2,32(sp)
80000784:	01312e23          	sw	s3,28(sp)
80000788:	00800713          	li	a4,8
8000078c:	00060913          	mv	s2,a2
80000790:	00058993          	mv	s3,a1
80000794:	00050413          	mv	s0,a0
80000798:	00d76463          	bltu	a4,a3,800007a0 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x30>
8000079c:	00800693          	li	a3,8
800007a0:	00368693          	addi	a3,a3,3
800007a4:	ffc6f493          	andi	s1,a3,-4
800007a8:	00048513          	mv	a0,s1
800007ac:	00090593          	mv	a1,s2
800007b0:	00002097          	auipc	ra,0x2
800007b4:	a34080e7          	jalr	-1484(ra) # 800021e4 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h3dfce83b3ddd30e3E>
800007b8:	18050a63          	beqz	a0,8000094c <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x1dc>
800007bc:	0049a583          	lw	a1,4(s3)
800007c0:	00400513          	li	a0,4
800007c4:	10058063          	beqz	a1,800008c4 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x154>
800007c8:	00195613          	srli	a2,s2,0x1
800007cc:	555556b7          	lui	a3,0x55555
800007d0:	55568693          	addi	a3,a3,1365 # 55555555 <_start-0x2aaaaaab>
800007d4:	00d67633          	and	a2,a2,a3
800007d8:	40c90633          	sub	a2,s2,a2
800007dc:	333336b7          	lui	a3,0x33333
800007e0:	33368693          	addi	a3,a3,819 # 33333333 <_start-0x4ccccccd>
800007e4:	00d67733          	and	a4,a2,a3
800007e8:	00265613          	srli	a2,a2,0x2
800007ec:	00d67633          	and	a2,a2,a3
800007f0:	00c70633          	add	a2,a4,a2
800007f4:	00465693          	srli	a3,a2,0x4
800007f8:	00d60633          	add	a2,a2,a3
800007fc:	0f0f16b7          	lui	a3,0xf0f1
80000800:	f0f68693          	addi	a3,a3,-241 # f0f0f0f <_start-0x70f0f0f1>
80000804:	00d67633          	and	a2,a2,a3
80000808:	010106b7          	lui	a3,0x1010
8000080c:	10168693          	addi	a3,a3,257 # 1010101 <_start-0x7efefeff>
80000810:	02d606b3          	mul	a3,a2,a3
80000814:	0186d693          	srli	a3,a3,0x18
80000818:	fff90713          	addi	a4,s2,-1
8000081c:	412007b3          	neg	a5,s2
80000820:	00100813          	li	a6,1
80000824:	0140006f          	j	80000838 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0xc8>
80000828:	0045a603          	lw	a2,4(a1)
8000082c:	00058993          	mv	s3,a1
80000830:	00060593          	mv	a1,a2
80000834:	08060863          	beqz	a2,800008c4 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x154>
80000838:	0005a303          	lw	t1,0(a1)
8000083c:	fe9366e3          	bltu	t1,s1,80000828 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0xb8>
80000840:	0d069a63          	bne	a3,a6,80000914 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x1a4>
80000844:	00b703b3          	add	t2,a4,a1
80000848:	00f3f2b3          	and	t0,t2,a5
8000084c:	00058613          	mv	a2,a1
80000850:	00b28863          	beq	t0,a1,80000860 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0xf0>
80000854:	00838613          	addi	a2,t2,8
80000858:	00f67633          	and	a2,a2,a5
8000085c:	40b608b3          	sub	a7,a2,a1
80000860:	00960eb3          	add	t4,a2,s1
80000864:	00658e33          	add	t3,a1,t1
80000868:	fdde60e3          	bltu	t3,t4,80000828 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0xb8>
8000086c:	41de03b3          	sub	t2,t3,t4
80000870:	02038e63          	beqz	t2,800008ac <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x13c>
80000874:	003e8e93          	addi	t4,t4,3
80000878:	ffcef313          	andi	t1,t4,-4
8000087c:	00830e93          	addi	t4,t1,8
80000880:	fbde64e3          	bltu	t3,t4,80000828 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0xb8>
80000884:	0009a223          	sw	zero,4(s3)
80000888:	0045a683          	lw	a3,4(a1)
8000088c:	0005a223          	sw	zero,4(a1)
80000890:	06b28263          	beq	t0,a1,800008f4 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x184>
80000894:	00732023          	sw	t2,0(t1)
80000898:	00d32223          	sw	a3,4(t1)
8000089c:	0115a023          	sw	a7,0(a1)
800008a0:	0065a223          	sw	t1,4(a1)
800008a4:	00b9a223          	sw	a1,4(s3)
800008a8:	05c0006f          	j	80000904 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x194>
800008ac:	0009a223          	sw	zero,4(s3)
800008b0:	0045a683          	lw	a3,4(a1)
800008b4:	0005a223          	sw	zero,4(a1)
800008b8:	02b29a63          	bne	t0,a1,800008ec <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x17c>
800008bc:	00d9a223          	sw	a3,4(s3)
800008c0:	04061263          	bnez	a2,80000904 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x194>
800008c4:	00000493          	li	s1,0
800008c8:	00a40533          	add	a0,s0,a0
800008cc:	00952023          	sw	s1,0(a0)
800008d0:	02c12083          	lw	ra,44(sp)
800008d4:	02812403          	lw	s0,40(sp)
800008d8:	02412483          	lw	s1,36(sp)
800008dc:	02012903          	lw	s2,32(sp)
800008e0:	01c12983          	lw	s3,28(sp)
800008e4:	03010113          	addi	sp,sp,48
800008e8:	00008067          	ret
800008ec:	00058313          	mv	t1,a1
800008f0:	00088393          	mv	t2,a7
800008f4:	00732023          	sw	t2,0(t1)
800008f8:	00d32223          	sw	a3,4(t1)
800008fc:	0069a223          	sw	t1,4(s3)
80000900:	fc0602e3          	beqz	a2,800008c4 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x154>
80000904:	00c42023          	sw	a2,0(s0)
80000908:	01242223          	sw	s2,4(s0)
8000090c:	00800513          	li	a0,8
80000910:	fb9ff06f          	j	800008c8 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E+0x158>
80000914:	80003537          	lui	a0,0x80003
80000918:	2f450513          	addi	a0,a0,756 # 800032f4 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.13>
8000091c:	00a12223          	sw	a0,4(sp)
80000920:	00100513          	li	a0,1
80000924:	00a12423          	sw	a0,8(sp)
80000928:	00012a23          	sw	zero,20(sp)
8000092c:	00400513          	li	a0,4
80000930:	00a12623          	sw	a0,12(sp)
80000934:	00012823          	sw	zero,16(sp)
80000938:	800035b7          	lui	a1,0x80003
8000093c:	37058593          	addi	a1,a1,880 # 80003370 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.15>
80000940:	00410513          	addi	a0,sp,4
80000944:	00002097          	auipc	ra,0x2
80000948:	938080e7          	jalr	-1736(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>
8000094c:	80003537          	lui	a0,0x80003
80000950:	28c50513          	addi	a0,a0,652 # 8000328c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.7>
80000954:	800036b7          	lui	a3,0x80003
80000958:	27c68693          	addi	a3,a3,636 # 8000327c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.6>
8000095c:	80003737          	lui	a4,0x80003
80000960:	2b870713          	addi	a4,a4,696 # 800032b8 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.8>
80000964:	02b00593          	li	a1,43
80000968:	00410613          	addi	a2,sp,4
8000096c:	00002097          	auipc	ra,0x2
80000970:	8a0080e7          	jalr	-1888(ra) # 8000220c <_ZN4core6result13unwrap_failed17hcb9f3ee45fc5ed7fE>

80000974 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E>:
80000974:	fb010113          	addi	sp,sp,-80
80000978:	04112623          	sw	ra,76(sp)
8000097c:	04812423          	sw	s0,72(sp)
80000980:	04912223          	sw	s1,68(sp)
80000984:	05212023          	sw	s2,64(sp)
80000988:	03312e23          	sw	s3,60(sp)
8000098c:	00800713          	li	a4,8
80000990:	00060413          	mv	s0,a2
80000994:	00058913          	mv	s2,a1
80000998:	00050993          	mv	s3,a0
8000099c:	00d76463          	bltu	a4,a3,800009a4 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x30>
800009a0:	00800693          	li	a3,8
800009a4:	00368693          	addi	a3,a3,3
800009a8:	ffc6f493          	andi	s1,a3,-4
800009ac:	00048513          	mv	a0,s1
800009b0:	00040593          	mv	a1,s0
800009b4:	00002097          	auipc	ra,0x2
800009b8:	830080e7          	jalr	-2000(ra) # 800021e4 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h3dfce83b3ddd30e3E>
800009bc:	18050663          	beqz	a0,80000b48 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1d4>
800009c0:	0049a583          	lw	a1,4(s3)
800009c4:	00992023          	sw	s1,0(s2)
800009c8:	00092223          	sw	zero,4(s2)
800009cc:	04058263          	beqz	a1,80000a10 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x9c>
800009d0:	00c9a503          	lw	a0,12(s3)
800009d4:	04b97e63          	bgeu	s2,a1,80000a30 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0xbc>
800009d8:	009906b3          	add	a3,s2,s1
800009dc:	18d5ea63          	bltu	a1,a3,80000b70 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1fc>
800009e0:	0089a603          	lw	a2,8(s3)
800009e4:	00860793          	addi	a5,a2,8
800009e8:	00090713          	mv	a4,s2
800009ec:	00f97a63          	bgeu	s2,a5,80000a00 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x8c>
800009f0:	40c686b3          	sub	a3,a3,a2
800009f4:	00d62023          	sw	a3,0(a2)
800009f8:	00062223          	sw	zero,4(a2)
800009fc:	00060713          	mv	a4,a2
80000a00:	00e9a223          	sw	a4,4(s3)
80000a04:	00b72223          	sw	a1,4(a4)
80000a08:	00100613          	li	a2,1
80000a0c:	09c0006f          	j	80000aa8 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x134>
80000a10:	0089a503          	lw	a0,8(s3)
80000a14:	00850593          	addi	a1,a0,8
80000a18:	0cb97c63          	bgeu	s2,a1,80000af0 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x17c>
80000a1c:	012485b3          	add	a1,s1,s2
80000a20:	40a585b3          	sub	a1,a1,a0
80000a24:	00b52023          	sw	a1,0(a0)
80000a28:	00052223          	sw	zero,4(a0)
80000a2c:	0cc0006f          	j	80000af8 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x184>
80000a30:	0045a603          	lw	a2,4(a1)
80000a34:	01212023          	sw	s2,0(sp)
80000a38:	02060263          	beqz	a2,80000a5c <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0xe8>
80000a3c:	00c96c63          	bltu	s2,a2,80000a54 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0xe0>
80000a40:	00060593          	mv	a1,a2
80000a44:	00462603          	lw	a2,4(a2)
80000a48:	01212023          	sw	s2,0(sp)
80000a4c:	00060863          	beqz	a2,80000a5c <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0xe8>
80000a50:	fec978e3          	bgeu	s2,a2,80000a40 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0xcc>
80000a54:	009906b3          	add	a3,s2,s1
80000a58:	1ad66263          	bltu	a2,a3,80000bfc <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x288>
80000a5c:	00b12223          	sw	a1,4(sp)
80000a60:	0005a683          	lw	a3,0(a1)
80000a64:	00d58733          	add	a4,a1,a3
80000a68:	00d12423          	sw	a3,8(sp)
80000a6c:	12e96063          	bltu	s2,a4,80000b8c <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x218>
80000a70:	0125a223          	sw	s2,4(a1)
80000a74:	00c92223          	sw	a2,4(s2)
80000a78:	00200613          	li	a2,2
80000a7c:	00058913          	mv	s2,a1
80000a80:	0280006f          	j	80000aa8 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x134>
80000a84:	00072583          	lw	a1,0(a4)
80000a88:	00472683          	lw	a3,4(a4)
80000a8c:	00072223          	sw	zero,4(a4)
80000a90:	00092703          	lw	a4,0(s2)
80000a94:	00d92223          	sw	a3,4(s2)
80000a98:	00b705b3          	add	a1,a4,a1
80000a9c:	00b92023          	sw	a1,0(s2)
80000aa0:	fff60613          	addi	a2,a2,-1
80000aa4:	08060063          	beqz	a2,80000b24 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1b0>
80000aa8:	00492703          	lw	a4,4(s2)
80000aac:	00092683          	lw	a3,0(s2)
80000ab0:	00d905b3          	add	a1,s2,a3
80000ab4:	00070c63          	beqz	a4,80000acc <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x158>
80000ab8:	fce586e3          	beq	a1,a4,80000a84 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x110>
80000abc:	00070913          	mv	s2,a4
80000ac0:	fff60613          	addi	a2,a2,-1
80000ac4:	fe0612e3          	bnez	a2,80000aa8 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x134>
80000ac8:	05c0006f          	j	80000b24 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1b0>
80000acc:	04a5fc63          	bgeu	a1,a0,80000b24 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1b0>
80000ad0:	00358613          	addi	a2,a1,3
80000ad4:	ffc67613          	andi	a2,a2,-4
80000ad8:	00860613          	addi	a2,a2,8
80000adc:	04c57463          	bgeu	a0,a2,80000b24 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1b0>
80000ae0:	00a68533          	add	a0,a3,a0
80000ae4:	40b50533          	sub	a0,a0,a1
80000ae8:	00a92023          	sw	a0,0(s2)
80000aec:	0380006f          	j	80000b24 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1b0>
80000af0:	00048593          	mv	a1,s1
80000af4:	00090513          	mv	a0,s2
80000af8:	00c9a603          	lw	a2,12(s3)
80000afc:	00b506b3          	add	a3,a0,a1
80000b00:	02c6f063          	bgeu	a3,a2,80000b20 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1ac>
80000b04:	00368713          	addi	a4,a3,3
80000b08:	ffc77713          	andi	a4,a4,-4
80000b0c:	00870713          	addi	a4,a4,8
80000b10:	00e67863          	bgeu	a2,a4,80000b20 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E+0x1ac>
80000b14:	00c585b3          	add	a1,a1,a2
80000b18:	40d585b3          	sub	a1,a1,a3
80000b1c:	00b52023          	sw	a1,0(a0)
80000b20:	00a9a223          	sw	a0,4(s3)
80000b24:	00040513          	mv	a0,s0
80000b28:	00048593          	mv	a1,s1
80000b2c:	04c12083          	lw	ra,76(sp)
80000b30:	04812403          	lw	s0,72(sp)
80000b34:	04412483          	lw	s1,68(sp)
80000b38:	04012903          	lw	s2,64(sp)
80000b3c:	03c12983          	lw	s3,60(sp)
80000b40:	05010113          	addi	sp,sp,80
80000b44:	00008067          	ret
80000b48:	80003537          	lui	a0,0x80003
80000b4c:	28c50513          	addi	a0,a0,652 # 8000328c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.7>
80000b50:	800036b7          	lui	a3,0x80003
80000b54:	27c68693          	addi	a3,a3,636 # 8000327c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.6>
80000b58:	80003737          	lui	a4,0x80003
80000b5c:	2b870713          	addi	a4,a4,696 # 800032b8 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.8>
80000b60:	02b00593          	li	a1,43
80000b64:	02410613          	addi	a2,sp,36
80000b68:	00001097          	auipc	ra,0x1
80000b6c:	6a4080e7          	jalr	1700(ra) # 8000220c <_ZN4core6result13unwrap_failed17hcb9f3ee45fc5ed7fE>
80000b70:	80003537          	lui	a0,0x80003
80000b74:	38050513          	addi	a0,a0,896 # 80003380 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.16>
80000b78:	80003637          	lui	a2,0x80003
80000b7c:	3ac60613          	addi	a2,a2,940 # 800033ac <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.17>
80000b80:	02b00593          	li	a1,43
80000b84:	00001097          	auipc	ra,0x1
80000b88:	718080e7          	jalr	1816(ra) # 8000229c <_ZN4core9panicking5panic17h1dc30cf9c45a9bafE>
80000b8c:	00010513          	mv	a0,sp
80000b90:	02a12223          	sw	a0,36(sp)
80000b94:	80000537          	lui	a0,0x80000
80000b98:	74850513          	addi	a0,a0,1864 # 80000748 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4db991658be9abddE>
80000b9c:	02a12423          	sw	a0,40(sp)
80000ba0:	00410593          	addi	a1,sp,4
80000ba4:	02b12623          	sw	a1,44(sp)
80000ba8:	02a12823          	sw	a0,48(sp)
80000bac:	00810513          	addi	a0,sp,8
80000bb0:	02a12a23          	sw	a0,52(sp)
80000bb4:	80002537          	lui	a0,0x80002
80000bb8:	72050513          	addi	a0,a0,1824 # 80002720 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he2712ed01a639beaE>
80000bbc:	02a12c23          	sw	a0,56(sp)
80000bc0:	80003537          	lui	a0,0x80003
80000bc4:	40050513          	addi	a0,a0,1024 # 80003400 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.23>
80000bc8:	00a12623          	sw	a0,12(sp)
80000bcc:	00400513          	li	a0,4
80000bd0:	00a12823          	sw	a0,16(sp)
80000bd4:	00012e23          	sw	zero,28(sp)
80000bd8:	02410513          	addi	a0,sp,36
80000bdc:	00a12a23          	sw	a0,20(sp)
80000be0:	00300513          	li	a0,3
80000be4:	00a12c23          	sw	a0,24(sp)
80000be8:	800035b7          	lui	a1,0x80003
80000bec:	42058593          	addi	a1,a1,1056 # 80003420 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.24>
80000bf0:	00c10513          	addi	a0,sp,12
80000bf4:	00001097          	auipc	ra,0x1
80000bf8:	688080e7          	jalr	1672(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>
80000bfc:	80003537          	lui	a0,0x80003
80000c00:	38050513          	addi	a0,a0,896 # 80003380 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.16>
80000c04:	80003637          	lui	a2,0x80003
80000c08:	3bc60613          	addi	a2,a2,956 # 800033bc <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.18>
80000c0c:	02b00593          	li	a1,43
80000c10:	00001097          	auipc	ra,0x1
80000c14:	68c080e7          	jalr	1676(ra) # 8000229c <_ZN4core9panicking5panic17h1dc30cf9c45a9bafE>

80000c18 <_ZN21linked_list_allocator4Heap4init17h783d3185efc1e61dE>:
80000c18:	00700693          	li	a3,7
80000c1c:	00052023          	sw	zero,0(a0)
80000c20:	04c6f663          	bgeu	a3,a2,80000c6c <_ZN21linked_list_allocator4Heap4init17h783d3185efc1e61dE+0x54>
80000c24:	00358713          	addi	a4,a1,3
80000c28:	ffc77713          	andi	a4,a4,-4
80000c2c:	00c58633          	add	a2,a1,a2
80000c30:	40e60633          	sub	a2,a2,a4
80000c34:	04c6fa63          	bgeu	a3,a2,80000c88 <_ZN21linked_list_allocator4Heap4init17h783d3185efc1e61dE+0x70>
80000c38:	40b70733          	sub	a4,a4,a1
80000c3c:	ffc67693          	andi	a3,a2,-4
80000c40:	00e585b3          	add	a1,a1,a4
80000c44:	00d5a023          	sw	a3,0(a1)
80000c48:	0005a223          	sw	zero,4(a1)
80000c4c:	00d586b3          	add	a3,a1,a3
80000c50:	00367613          	andi	a2,a2,3
80000c54:	00052223          	sw	zero,4(a0)
80000c58:	00b52423          	sw	a1,8(a0)
80000c5c:	00b52623          	sw	a1,12(a0)
80000c60:	00d52823          	sw	a3,16(a0)
80000c64:	00c50a23          	sb	a2,20(a0)
80000c68:	00008067          	ret
80000c6c:	80003537          	lui	a0,0x80003
80000c70:	18b50513          	addi	a0,a0,395 # 8000318b <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.1>
80000c74:	80003637          	lui	a2,0x80003
80000c78:	22460613          	addi	a2,a2,548 # 80003224 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.3>
80000c7c:	03000593          	li	a1,48
80000c80:	00001097          	auipc	ra,0x1
80000c84:	61c080e7          	jalr	1564(ra) # 8000229c <_ZN4core9panicking5panic17h1dc30cf9c45a9bafE>
80000c88:	80003537          	lui	a0,0x80003
80000c8c:	23450513          	addi	a0,a0,564 # 80003234 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.4>
80000c90:	80003637          	lui	a2,0x80003
80000c94:	26c60613          	addi	a2,a2,620 # 8000326c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.5>
80000c98:	03800593          	li	a1,56
80000c9c:	00001097          	auipc	ra,0x1
80000ca0:	600080e7          	jalr	1536(ra) # 8000229c <_ZN4core9panicking5panic17h1dc30cf9c45a9bafE>

80000ca4 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h8b01183298a48b5bE>:
80000ca4:	fe010113          	addi	sp,sp,-32
80000ca8:	00112e23          	sw	ra,28(sp)
80000cac:	00812c23          	sw	s0,24(sp)
80000cb0:	00912a23          	sw	s1,20(sp)
80000cb4:	01212823          	sw	s2,16(sp)
80000cb8:	00060493          	mv	s1,a2
80000cbc:	00058913          	mv	s2,a1
80000cc0:	00050413          	mv	s0,a0
80000cc4:	00000097          	auipc	ra,0x0
80000cc8:	0e4080e7          	jalr	228(ra) # 80000da8 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E>
80000ccc:	00840593          	addi	a1,s0,8
80000cd0:	00410513          	addi	a0,sp,4
80000cd4:	00090613          	mv	a2,s2
80000cd8:	00048693          	mv	a3,s1
80000cdc:	00000097          	auipc	ra,0x0
80000ce0:	a94080e7          	jalr	-1388(ra) # 80000770 <_ZN21linked_list_allocator4hole8HoleList18allocate_first_fit17hc1242614849ec249E>
80000ce4:	00812503          	lw	a0,8(sp)
80000ce8:	00050e63          	beqz	a0,80000d04 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h8b01183298a48b5bE+0x60>
80000cec:	00c12503          	lw	a0,12(sp)
80000cf0:	00442583          	lw	a1,4(s0)
80000cf4:	00412483          	lw	s1,4(sp)
80000cf8:	00a58533          	add	a0,a1,a0
80000cfc:	00a42223          	sw	a0,4(s0)
80000d00:	0080006f          	j	80000d08 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h8b01183298a48b5bE+0x64>
80000d04:	00000493          	li	s1,0
80000d08:	00040513          	mv	a0,s0
80000d0c:	00000097          	auipc	ra,0x0
80000d10:	0d4080e7          	jalr	212(ra) # 80000de0 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$6unlock17h9d7a1f9649d70243E>
80000d14:	00048513          	mv	a0,s1
80000d18:	01c12083          	lw	ra,28(sp)
80000d1c:	01812403          	lw	s0,24(sp)
80000d20:	01412483          	lw	s1,20(sp)
80000d24:	01012903          	lw	s2,16(sp)
80000d28:	02010113          	addi	sp,sp,32
80000d2c:	00008067          	ret

80000d30 <_ZN86_$LT$linked_list_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h890424095f2912c2E>:
80000d30:	fe010113          	addi	sp,sp,-32
80000d34:	00112e23          	sw	ra,28(sp)
80000d38:	00812c23          	sw	s0,24(sp)
80000d3c:	00912a23          	sw	s1,20(sp)
80000d40:	01212823          	sw	s2,16(sp)
80000d44:	01312623          	sw	s3,12(sp)
80000d48:	00068413          	mv	s0,a3
80000d4c:	00060493          	mv	s1,a2
80000d50:	00058913          	mv	s2,a1
80000d54:	00050993          	mv	s3,a0
80000d58:	00000097          	auipc	ra,0x0
80000d5c:	050080e7          	jalr	80(ra) # 80000da8 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E>
80000d60:	00898513          	addi	a0,s3,8
80000d64:	00090593          	mv	a1,s2
80000d68:	00048613          	mv	a2,s1
80000d6c:	00040693          	mv	a3,s0
80000d70:	00000097          	auipc	ra,0x0
80000d74:	c04080e7          	jalr	-1020(ra) # 80000974 <_ZN21linked_list_allocator4hole8HoleList10deallocate17h5e92b156faba0e17E>
80000d78:	0049a503          	lw	a0,4(s3)
80000d7c:	40b50533          	sub	a0,a0,a1
80000d80:	00a9a223          	sw	a0,4(s3)
80000d84:	00098513          	mv	a0,s3
80000d88:	01c12083          	lw	ra,28(sp)
80000d8c:	01812403          	lw	s0,24(sp)
80000d90:	01412483          	lw	s1,20(sp)
80000d94:	01012903          	lw	s2,16(sp)
80000d98:	00c12983          	lw	s3,12(sp)
80000d9c:	02010113          	addi	sp,sp,32
80000da0:	00000317          	auipc	t1,0x0
80000da4:	04030067          	jr	64(t1) # 80000de0 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$6unlock17h9d7a1f9649d70243E>

80000da8 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E>:
80000da8:	ffc57593          	andi	a1,a0,-4
80000dac:	00351613          	slli	a2,a0,0x3
80000db0:	00100693          	li	a3,1
80000db4:	00c696b3          	sll	a3,a3,a2
80000db8:	44d5a72f          	amoor.w.aq	a4,a3,(a1)
80000dbc:	00c75733          	srl	a4,a4,a2
80000dc0:	0ff77713          	zext.b	a4,a4
80000dc4:	00071663          	bnez	a4,80000dd0 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E+0x28>
80000dc8:	0140006f          	j	80000ddc <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E+0x34>
80000dcc:	0100000f          	fence	w,unknown
80000dd0:	00050703          	lb	a4,0(a0)
80000dd4:	fe071ce3          	bnez	a4,80000dcc <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E+0x24>
80000dd8:	fe1ff06f          	j	80000db8 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$4lock17hcd73750214d91450E+0x10>
80000ddc:	00008067          	ret

80000de0 <_ZN81_$LT$spinning_top..spinlock..RawSpinlock$u20$as$u20$lock_api..mutex..RawMutex$GT$6unlock17h9d7a1f9649d70243E>:
80000de0:	0310000f          	fence	rw,w
80000de4:	00050023          	sb	zero,0(a0)
80000de8:	00008067          	ret

80000dec <_ZN5alloc7raw_vec17capacity_overflow17he4aa13ccaedb51bfE.llvm.12461535864580483860>:
80000dec:	fe010113          	addi	sp,sp,-32
80000df0:	00050593          	mv	a1,a0
80000df4:	80003537          	lui	a0,0x80003
80000df8:	44450513          	addi	a0,a0,1092 # 80003444 <.Lanon.c5ea41b0e650789dd5b2a474168920f2.1>
80000dfc:	00a12423          	sw	a0,8(sp)
80000e00:	00100513          	li	a0,1
80000e04:	00a12623          	sw	a0,12(sp)
80000e08:	00012c23          	sw	zero,24(sp)
80000e0c:	00400513          	li	a0,4
80000e10:	00a12823          	sw	a0,16(sp)
80000e14:	00012a23          	sw	zero,20(sp)
80000e18:	00810513          	addi	a0,sp,8
80000e1c:	00001097          	auipc	ra,0x1
80000e20:	460080e7          	jalr	1120(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>

80000e24 <_ZN5alloc7raw_vec12handle_error17h8ca5788e860c69deE>:
80000e24:	00051863          	bnez	a0,80000e34 <_ZN5alloc7raw_vec12handle_error17h8ca5788e860c69deE+0x10>
80000e28:	00060513          	mv	a0,a2
80000e2c:	00000097          	auipc	ra,0x0
80000e30:	fc0080e7          	jalr	-64(ra) # 80000dec <_ZN5alloc7raw_vec17capacity_overflow17he4aa13ccaedb51bfE.llvm.12461535864580483860>
80000e34:	00000097          	auipc	ra,0x0
80000e38:	008080e7          	jalr	8(ra) # 80000e3c <_ZN5alloc5alloc18handle_alloc_error17h3ee9c13753d83bffE>

80000e3c <_ZN5alloc5alloc18handle_alloc_error17h3ee9c13753d83bffE>:
80000e3c:	00050613          	mv	a2,a0
80000e40:	00058513          	mv	a0,a1
80000e44:	00060593          	mv	a1,a2
80000e48:	00000097          	auipc	ra,0x0
80000e4c:	8f8080e7          	jalr	-1800(ra) # 80000740 <__rust_alloc_error_handler>

80000e50 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0cc471d8fe68dcc0E>:
80000e50:	f7010113          	addi	sp,sp,-144
80000e54:	08112623          	sw	ra,140(sp)
80000e58:	00052603          	lw	a2,0(a0)
80000e5c:	00058513          	mv	a0,a1
80000e60:	00000793          	li	a5,0
80000e64:	08b10593          	addi	a1,sp,139
80000e68:	00a00693          	li	a3,10
80000e6c:	01c0006f          	j	80000e88 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0cc471d8fe68dcc0E+0x38>
80000e70:	05770713          	addi	a4,a4,87
80000e74:	00465613          	srli	a2,a2,0x4
80000e78:	00e58023          	sb	a4,0(a1)
80000e7c:	00178793          	addi	a5,a5,1
80000e80:	fff58593          	addi	a1,a1,-1
80000e84:	00060a63          	beqz	a2,80000e98 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0cc471d8fe68dcc0E+0x48>
80000e88:	00f67713          	andi	a4,a2,15
80000e8c:	fed772e3          	bgeu	a4,a3,80000e70 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0cc471d8fe68dcc0E+0x20>
80000e90:	03070713          	addi	a4,a4,48
80000e94:	fe1ff06f          	j	80000e74 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0cc471d8fe68dcc0E+0x24>
80000e98:	00c10593          	addi	a1,sp,12
80000e9c:	40f585b3          	sub	a1,a1,a5
80000ea0:	08058713          	addi	a4,a1,128
80000ea4:	80003637          	lui	a2,0x80003
80000ea8:	44c60613          	addi	a2,a2,1100 # 8000344c <anon.9c422e7ace4d9ba208f804b3b74eda03.3.llvm.12450569977146373324>
80000eac:	00100593          	li	a1,1
80000eb0:	00200693          	li	a3,2
80000eb4:	00000097          	auipc	ra,0x0
80000eb8:	2dc080e7          	jalr	732(ra) # 80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>
80000ebc:	08c12083          	lw	ra,140(sp)
80000ec0:	09010113          	addi	sp,sp,144
80000ec4:	00008067          	ret

80000ec8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2dd7102eaaae9f01E>:
80000ec8:	f7010113          	addi	sp,sp,-144
80000ecc:	08112623          	sw	ra,140(sp)
80000ed0:	00052603          	lw	a2,0(a0)
80000ed4:	00058513          	mv	a0,a1
80000ed8:	00000793          	li	a5,0
80000edc:	08b10593          	addi	a1,sp,139
80000ee0:	00a00693          	li	a3,10
80000ee4:	01c0006f          	j	80000f00 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2dd7102eaaae9f01E+0x38>
80000ee8:	03770713          	addi	a4,a4,55
80000eec:	00465613          	srli	a2,a2,0x4
80000ef0:	00e58023          	sb	a4,0(a1)
80000ef4:	00178793          	addi	a5,a5,1
80000ef8:	fff58593          	addi	a1,a1,-1
80000efc:	00060a63          	beqz	a2,80000f10 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2dd7102eaaae9f01E+0x48>
80000f00:	00f67713          	andi	a4,a2,15
80000f04:	fed772e3          	bgeu	a4,a3,80000ee8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2dd7102eaaae9f01E+0x20>
80000f08:	03070713          	addi	a4,a4,48
80000f0c:	fe1ff06f          	j	80000eec <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2dd7102eaaae9f01E+0x24>
80000f10:	00c10593          	addi	a1,sp,12
80000f14:	40f585b3          	sub	a1,a1,a5
80000f18:	08058713          	addi	a4,a1,128
80000f1c:	80003637          	lui	a2,0x80003
80000f20:	44c60613          	addi	a2,a2,1100 # 8000344c <anon.9c422e7ace4d9ba208f804b3b74eda03.3.llvm.12450569977146373324>
80000f24:	00100593          	li	a1,1
80000f28:	00200693          	li	a3,2
80000f2c:	00000097          	auipc	ra,0x0
80000f30:	264080e7          	jalr	612(ra) # 80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>
80000f34:	08c12083          	lw	ra,140(sp)
80000f38:	09010113          	addi	sp,sp,144
80000f3c:	00008067          	ret

80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>:
80000f40:	fb010113          	addi	sp,sp,-80
80000f44:	04112623          	sw	ra,76(sp)
80000f48:	04812423          	sw	s0,72(sp)
80000f4c:	04912223          	sw	s1,68(sp)
80000f50:	05212023          	sw	s2,64(sp)
80000f54:	03312e23          	sw	s3,60(sp)
80000f58:	03412c23          	sw	s4,56(sp)
80000f5c:	03512a23          	sw	s5,52(sp)
80000f60:	03612823          	sw	s6,48(sp)
80000f64:	03712623          	sw	s7,44(sp)
80000f68:	00060413          	mv	s0,a2
80000f6c:	02012223          	sw	zero,36(sp)
80000f70:	02000613          	li	a2,32
80000f74:	00c12c23          	sw	a2,24(sp)
80000f78:	00300613          	li	a2,3
80000f7c:	02c10423          	sb	a2,40(sp)
80000f80:	01042903          	lw	s2,16(s0)
80000f84:	00012423          	sw	zero,8(sp)
80000f88:	00012823          	sw	zero,16(sp)
80000f8c:	00a12e23          	sw	a0,28(sp)
80000f90:	02b12023          	sw	a1,32(sp)
80000f94:	10090c63          	beqz	s2,800010ac <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x16c>
80000f98:	01442a83          	lw	s5,20(s0)
80000f9c:	180a8463          	beqz	s5,80001124 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x1e4>
80000fa0:	00042a03          	lw	s4,0(s0)
80000fa4:	00842983          	lw	s3,8(s0)
80000fa8:	fffa8513          	addi	a0,s5,-1
80000fac:	00551513          	slli	a0,a0,0x5
80000fb0:	00555513          	srli	a0,a0,0x5
80000fb4:	00150493          	addi	s1,a0,1
80000fb8:	004a0a13          	addi	s4,s4,4
80000fbc:	005a9a93          	slli	s5,s5,0x5
80000fc0:	00200b13          	li	s6,2
80000fc4:	00100b93          	li	s7,1
80000fc8:	000a2603          	lw	a2,0(s4)
80000fcc:	00060e63          	beqz	a2,80000fe8 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0xa8>
80000fd0:	02012683          	lw	a3,32(sp)
80000fd4:	01c12503          	lw	a0,28(sp)
80000fd8:	ffca2583          	lw	a1,-4(s4)
80000fdc:	00c6a683          	lw	a3,12(a3)
80000fe0:	000680e7          	jalr	a3
80000fe4:	16051a63          	bnez	a0,80001158 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x218>
80000fe8:	01092583          	lw	a1,16(s2)
80000fec:	01c94603          	lbu	a2,28(s2)
80000ff0:	01892683          	lw	a3,24(s2)
80000ff4:	00892503          	lw	a0,8(s2)
80000ff8:	00b12c23          	sw	a1,24(sp)
80000ffc:	02c10423          	sb	a2,40(sp)
80001000:	02d12223          	sw	a3,36(sp)
80001004:	01650e63          	beq	a0,s6,80001020 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0xe0>
80001008:	03751063          	bne	a0,s7,80001028 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0xe8>
8000100c:	00c92503          	lw	a0,12(s2)
80001010:	00351513          	slli	a0,a0,0x3
80001014:	00a98533          	add	a0,s3,a0
80001018:	00052583          	lw	a1,0(a0)
8000101c:	00058863          	beqz	a1,8000102c <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0xec>
80001020:	00000593          	li	a1,0
80001024:	0100006f          	j	80001034 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0xf4>
80001028:	00890513          	addi	a0,s2,8
8000102c:	00452503          	lw	a0,4(a0)
80001030:	00100593          	li	a1,1
80001034:	00092603          	lw	a2,0(s2)
80001038:	00b12423          	sw	a1,8(sp)
8000103c:	00a12623          	sw	a0,12(sp)
80001040:	03660063          	beq	a2,s6,80001060 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x120>
80001044:	00090513          	mv	a0,s2
80001048:	03761063          	bne	a2,s7,80001068 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x128>
8000104c:	00492503          	lw	a0,4(s2)
80001050:	00351513          	slli	a0,a0,0x3
80001054:	00a98533          	add	a0,s3,a0
80001058:	00052583          	lw	a1,0(a0)
8000105c:	00058663          	beqz	a1,80001068 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x128>
80001060:	00000613          	li	a2,0
80001064:	00c0006f          	j	80001070 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x130>
80001068:	00452583          	lw	a1,4(a0)
8000106c:	00100613          	li	a2,1
80001070:	01492503          	lw	a0,20(s2)
80001074:	00351513          	slli	a0,a0,0x3
80001078:	00a986b3          	add	a3,s3,a0
8000107c:	0006a503          	lw	a0,0(a3)
80001080:	0046a683          	lw	a3,4(a3)
80001084:	00c12823          	sw	a2,16(sp)
80001088:	00b12a23          	sw	a1,20(sp)
8000108c:	00810593          	addi	a1,sp,8
80001090:	000680e7          	jalr	a3
80001094:	0c051263          	bnez	a0,80001158 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x218>
80001098:	02090913          	addi	s2,s2,32
8000109c:	fe0a8a93          	addi	s5,s5,-32
800010a0:	008a0a13          	addi	s4,s4,8
800010a4:	f20a92e3          	bnez	s5,80000fc8 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x88>
800010a8:	0700006f          	j	80001118 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x1d8>
800010ac:	00c42503          	lw	a0,12(s0)
800010b0:	06050a63          	beqz	a0,80001124 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x1e4>
800010b4:	00842903          	lw	s2,8(s0)
800010b8:	00351993          	slli	s3,a0,0x3
800010bc:	013909b3          	add	s3,s2,s3
800010c0:	00042a03          	lw	s4,0(s0)
800010c4:	fff50513          	addi	a0,a0,-1
800010c8:	00351513          	slli	a0,a0,0x3
800010cc:	00355513          	srli	a0,a0,0x3
800010d0:	00150493          	addi	s1,a0,1
800010d4:	004a0a13          	addi	s4,s4,4
800010d8:	000a2603          	lw	a2,0(s4)
800010dc:	00060e63          	beqz	a2,800010f8 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x1b8>
800010e0:	02012683          	lw	a3,32(sp)
800010e4:	01c12503          	lw	a0,28(sp)
800010e8:	ffca2583          	lw	a1,-4(s4)
800010ec:	00c6a683          	lw	a3,12(a3)
800010f0:	000680e7          	jalr	a3
800010f4:	06051263          	bnez	a0,80001158 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x218>
800010f8:	00092503          	lw	a0,0(s2)
800010fc:	00492603          	lw	a2,4(s2)
80001100:	00810593          	addi	a1,sp,8
80001104:	000600e7          	jalr	a2
80001108:	04051863          	bnez	a0,80001158 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x218>
8000110c:	00890913          	addi	s2,s2,8
80001110:	008a0a13          	addi	s4,s4,8
80001114:	fd3912e3          	bne	s2,s3,800010d8 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x198>
80001118:	00442503          	lw	a0,4(s0)
8000111c:	00a4ea63          	bltu	s1,a0,80001130 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x1f0>
80001120:	0400006f          	j	80001160 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x220>
80001124:	00000493          	li	s1,0
80001128:	00442503          	lw	a0,4(s0)
8000112c:	02a07a63          	bgeu	zero,a0,80001160 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x220>
80001130:	00042503          	lw	a0,0(s0)
80001134:	00349493          	slli	s1,s1,0x3
80001138:	009504b3          	add	s1,a0,s1
8000113c:	02012683          	lw	a3,32(sp)
80001140:	01c12503          	lw	a0,28(sp)
80001144:	0004a583          	lw	a1,0(s1)
80001148:	0044a603          	lw	a2,4(s1)
8000114c:	00c6a683          	lw	a3,12(a3)
80001150:	000680e7          	jalr	a3
80001154:	00050663          	beqz	a0,80001160 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x220>
80001158:	00100513          	li	a0,1
8000115c:	0080006f          	j	80001164 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE+0x224>
80001160:	00000513          	li	a0,0
80001164:	04c12083          	lw	ra,76(sp)
80001168:	04812403          	lw	s0,72(sp)
8000116c:	04412483          	lw	s1,68(sp)
80001170:	04012903          	lw	s2,64(sp)
80001174:	03c12983          	lw	s3,60(sp)
80001178:	03812a03          	lw	s4,56(sp)
8000117c:	03412a83          	lw	s5,52(sp)
80001180:	03012b03          	lw	s6,48(sp)
80001184:	02c12b83          	lw	s7,44(sp)
80001188:	05010113          	addi	sp,sp,80
8000118c:	00008067          	ret

80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>:
80001190:	fd010113          	addi	sp,sp,-48
80001194:	02112623          	sw	ra,44(sp)
80001198:	02812423          	sw	s0,40(sp)
8000119c:	02912223          	sw	s1,36(sp)
800011a0:	03212023          	sw	s2,32(sp)
800011a4:	01312e23          	sw	s3,28(sp)
800011a8:	01412c23          	sw	s4,24(sp)
800011ac:	01512a23          	sw	s5,20(sp)
800011b0:	01612823          	sw	s6,16(sp)
800011b4:	01712623          	sw	s7,12(sp)
800011b8:	01812423          	sw	s8,8(sp)
800011bc:	01912223          	sw	s9,4(sp)
800011c0:	01a12023          	sw	s10,0(sp)
800011c4:	00078413          	mv	s0,a5
800011c8:	00070493          	mv	s1,a4
800011cc:	00068993          	mv	s3,a3
800011d0:	00060a13          	mv	s4,a2
800011d4:	00050913          	mv	s2,a0
800011d8:	04058c63          	beqz	a1,80001230 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0xa0>
800011dc:	01c92b83          	lw	s7,28(s2)
800011e0:	001bfb13          	andi	s6,s7,1
800011e4:	00110ab7          	lui	s5,0x110
800011e8:	000b0463          	beqz	s6,800011f0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x60>
800011ec:	02b00a93          	li	s5,43
800011f0:	008b0b33          	add	s6,s6,s0
800011f4:	004bf513          	andi	a0,s7,4
800011f8:	04050663          	beqz	a0,80001244 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0xb4>
800011fc:	01000513          	li	a0,16
80001200:	04a9fa63          	bgeu	s3,a0,80001254 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0xc4>
80001204:	00000513          	li	a0,0
80001208:	04098e63          	beqz	s3,80001264 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0xd4>
8000120c:	013a05b3          	add	a1,s4,s3
80001210:	000a0613          	mv	a2,s4
80001214:	00060683          	lb	a3,0(a2)
80001218:	fc06a693          	slti	a3,a3,-64
8000121c:	0016c693          	xori	a3,a3,1
80001220:	00160613          	addi	a2,a2,1
80001224:	00d50533          	add	a0,a0,a3
80001228:	feb616e3          	bne	a2,a1,80001214 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x84>
8000122c:	0380006f          	j	80001264 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0xd4>
80001230:	01c92b83          	lw	s7,28(s2)
80001234:	00140b13          	addi	s6,s0,1
80001238:	02d00a93          	li	s5,45
8000123c:	004bf513          	andi	a0,s7,4
80001240:	fa051ee3          	bnez	a0,800011fc <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x6c>
80001244:	00000a13          	li	s4,0
80001248:	00092503          	lw	a0,0(s2)
8000124c:	02051263          	bnez	a0,80001270 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0xe0>
80001250:	0500006f          	j	800012a0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x110>
80001254:	000a0513          	mv	a0,s4
80001258:	00098593          	mv	a1,s3
8000125c:	00001097          	auipc	ra,0x1
80001260:	d78080e7          	jalr	-648(ra) # 80001fd4 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE>
80001264:	01650b33          	add	s6,a0,s6
80001268:	00092503          	lw	a0,0(s2)
8000126c:	02050a63          	beqz	a0,800012a0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x110>
80001270:	00492c83          	lw	s9,4(s2)
80001274:	039b7663          	bgeu	s6,s9,800012a0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x110>
80001278:	008bf513          	andi	a0,s7,8
8000127c:	08051a63          	bnez	a0,80001310 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x180>
80001280:	02094583          	lbu	a1,32(s2)
80001284:	00100613          	li	a2,1
80001288:	416c8533          	sub	a0,s9,s6
8000128c:	0eb64463          	blt	a2,a1,80001374 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x1e4>
80001290:	0e059e63          	bnez	a1,8000138c <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x1fc>
80001294:	00050c13          	mv	s8,a0
80001298:	00058513          	mv	a0,a1
8000129c:	0f40006f          	j	80001390 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x200>
800012a0:	00090513          	mv	a0,s2
800012a4:	000a8593          	mv	a1,s5
800012a8:	000a0613          	mv	a2,s4
800012ac:	00098693          	mv	a3,s3
800012b0:	00000097          	auipc	ra,0x0
800012b4:	1f8080e7          	jalr	504(ra) # 800014a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE>
800012b8:	00050593          	mv	a1,a0
800012bc:	00100513          	li	a0,1
800012c0:	10059063          	bnez	a1,800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>
800012c4:	01892583          	lw	a1,24(s2)
800012c8:	01492503          	lw	a0,20(s2)
800012cc:	00c5a303          	lw	t1,12(a1)
800012d0:	00048593          	mv	a1,s1
800012d4:	00040613          	mv	a2,s0
800012d8:	02c12083          	lw	ra,44(sp)
800012dc:	02812403          	lw	s0,40(sp)
800012e0:	02412483          	lw	s1,36(sp)
800012e4:	02012903          	lw	s2,32(sp)
800012e8:	01c12983          	lw	s3,28(sp)
800012ec:	01812a03          	lw	s4,24(sp)
800012f0:	01412a83          	lw	s5,20(sp)
800012f4:	01012b03          	lw	s6,16(sp)
800012f8:	00c12b83          	lw	s7,12(sp)
800012fc:	00812c03          	lw	s8,8(sp)
80001300:	00412c83          	lw	s9,4(sp)
80001304:	00012d03          	lw	s10,0(sp)
80001308:	03010113          	addi	sp,sp,48
8000130c:	00030067          	jr	t1
80001310:	01092b83          	lw	s7,16(s2)
80001314:	03000513          	li	a0,48
80001318:	02094c03          	lbu	s8,32(s2)
8000131c:	00a92823          	sw	a0,16(s2)
80001320:	00100513          	li	a0,1
80001324:	02a90023          	sb	a0,32(s2)
80001328:	00090513          	mv	a0,s2
8000132c:	000a8593          	mv	a1,s5
80001330:	000a0613          	mv	a2,s4
80001334:	00098693          	mv	a3,s3
80001338:	00000097          	auipc	ra,0x0
8000133c:	170080e7          	jalr	368(ra) # 800014a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE>
80001340:	06051e63          	bnez	a0,800013bc <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x22c>
80001344:	01492983          	lw	s3,20(s2)
80001348:	01892a03          	lw	s4,24(s2)
8000134c:	416c8ab3          	sub	s5,s9,s6
80001350:	001a8a93          	addi	s5,s5,1 # 110001 <_start-0x7feeffff>
80001354:	fffa8a93          	addi	s5,s5,-1
80001358:	100a8c63          	beqz	s5,80001470 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x2e0>
8000135c:	010a2603          	lw	a2,16(s4)
80001360:	03000593          	li	a1,48
80001364:	00098513          	mv	a0,s3
80001368:	000600e7          	jalr	a2
8000136c:	fe0504e3          	beqz	a0,80001354 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x1c4>
80001370:	04c0006f          	j	800013bc <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x22c>
80001374:	00200613          	li	a2,2
80001378:	00c59a63          	bne	a1,a2,8000138c <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x1fc>
8000137c:	00150593          	addi	a1,a0,1
80001380:	00155513          	srli	a0,a0,0x1
80001384:	0015dc13          	srli	s8,a1,0x1
80001388:	0080006f          	j	80001390 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x200>
8000138c:	00000c13          	li	s8,0
80001390:	01492b03          	lw	s6,20(s2)
80001394:	01892c83          	lw	s9,24(s2)
80001398:	01092b83          	lw	s7,16(s2)
8000139c:	00150d13          	addi	s10,a0,1
800013a0:	fffd0d13          	addi	s10,s10,-1
800013a4:	040d0a63          	beqz	s10,800013f8 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x268>
800013a8:	010ca603          	lw	a2,16(s9)
800013ac:	000b0513          	mv	a0,s6
800013b0:	000b8593          	mv	a1,s7
800013b4:	000600e7          	jalr	a2
800013b8:	fe0504e3          	beqz	a0,800013a0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x210>
800013bc:	00100513          	li	a0,1
800013c0:	02c12083          	lw	ra,44(sp)
800013c4:	02812403          	lw	s0,40(sp)
800013c8:	02412483          	lw	s1,36(sp)
800013cc:	02012903          	lw	s2,32(sp)
800013d0:	01c12983          	lw	s3,28(sp)
800013d4:	01812a03          	lw	s4,24(sp)
800013d8:	01412a83          	lw	s5,20(sp)
800013dc:	01012b03          	lw	s6,16(sp)
800013e0:	00c12b83          	lw	s7,12(sp)
800013e4:	00812c03          	lw	s8,8(sp)
800013e8:	00412c83          	lw	s9,4(sp)
800013ec:	00012d03          	lw	s10,0(sp)
800013f0:	03010113          	addi	sp,sp,48
800013f4:	00008067          	ret
800013f8:	00090513          	mv	a0,s2
800013fc:	000a8593          	mv	a1,s5
80001400:	000a0613          	mv	a2,s4
80001404:	00098693          	mv	a3,s3
80001408:	00000097          	auipc	ra,0x0
8000140c:	0a0080e7          	jalr	160(ra) # 800014a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE>
80001410:	00050593          	mv	a1,a0
80001414:	00100513          	li	a0,1
80001418:	fa0594e3          	bnez	a1,800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>
8000141c:	00cca683          	lw	a3,12(s9)
80001420:	000b0513          	mv	a0,s6
80001424:	00048593          	mv	a1,s1
80001428:	00040613          	mv	a2,s0
8000142c:	000680e7          	jalr	a3
80001430:	00050593          	mv	a1,a0
80001434:	00100513          	li	a0,1
80001438:	f80594e3          	bnez	a1,800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>
8000143c:	418004b3          	neg	s1,s8
80001440:	fff00913          	li	s2,-1
80001444:	fff00413          	li	s0,-1
80001448:	00848533          	add	a0,s1,s0
8000144c:	05250a63          	beq	a0,s2,800014a0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x310>
80001450:	010ca603          	lw	a2,16(s9)
80001454:	000b0513          	mv	a0,s6
80001458:	000b8593          	mv	a1,s7
8000145c:	000600e7          	jalr	a2
80001460:	00140413          	addi	s0,s0,1
80001464:	fe0502e3          	beqz	a0,80001448 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x2b8>
80001468:	01843533          	sltu	a0,s0,s8
8000146c:	f55ff06f          	j	800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>
80001470:	00ca2683          	lw	a3,12(s4)
80001474:	00098513          	mv	a0,s3
80001478:	00048593          	mv	a1,s1
8000147c:	00040613          	mv	a2,s0
80001480:	000680e7          	jalr	a3
80001484:	00050593          	mv	a1,a0
80001488:	00100513          	li	a0,1
8000148c:	f2059ae3          	bnez	a1,800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>
80001490:	00000513          	li	a0,0
80001494:	01792823          	sw	s7,16(s2)
80001498:	03890023          	sb	s8,32(s2)
8000149c:	f25ff06f          	j	800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>
800014a0:	018c3533          	sltu	a0,s8,s8
800014a4:	f1dff06f          	j	800013c0 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E+0x230>

800014a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE>:
800014a8:	ff010113          	addi	sp,sp,-16
800014ac:	00112623          	sw	ra,12(sp)
800014b0:	00812423          	sw	s0,8(sp)
800014b4:	00912223          	sw	s1,4(sp)
800014b8:	01212023          	sw	s2,0(sp)
800014bc:	00110737          	lui	a4,0x110
800014c0:	00068413          	mv	s0,a3
800014c4:	00060493          	mv	s1,a2
800014c8:	00050913          	mv	s2,a0
800014cc:	02e58063          	beq	a1,a4,800014ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE+0x44>
800014d0:	01892603          	lw	a2,24(s2)
800014d4:	01492503          	lw	a0,20(s2)
800014d8:	01062603          	lw	a2,16(a2)
800014dc:	000600e7          	jalr	a2
800014e0:	00050593          	mv	a1,a0
800014e4:	00100513          	li	a0,1
800014e8:	02059c63          	bnez	a1,80001520 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE+0x78>
800014ec:	02048863          	beqz	s1,8000151c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb1ab80d9076d432cE+0x74>
800014f0:	01892583          	lw	a1,24(s2)
800014f4:	01492503          	lw	a0,20(s2)
800014f8:	00c5a303          	lw	t1,12(a1)
800014fc:	00048593          	mv	a1,s1
80001500:	00040613          	mv	a2,s0
80001504:	00c12083          	lw	ra,12(sp)
80001508:	00812403          	lw	s0,8(sp)
8000150c:	00412483          	lw	s1,4(sp)
80001510:	00012903          	lw	s2,0(sp)
80001514:	01010113          	addi	sp,sp,16
80001518:	00030067          	jr	t1
8000151c:	00000513          	li	a0,0
80001520:	00c12083          	lw	ra,12(sp)
80001524:	00812403          	lw	s0,8(sp)
80001528:	00412483          	lw	s1,4(sp)
8000152c:	00012903          	lw	s2,0(sp)
80001530:	01010113          	addi	sp,sp,16
80001534:	00008067          	ret

80001538 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E>:
80001538:	fe010113          	addi	sp,sp,-32
8000153c:	00112e23          	sw	ra,28(sp)
80001540:	00812c23          	sw	s0,24(sp)
80001544:	00912a23          	sw	s1,20(sp)
80001548:	01212823          	sw	s2,16(sp)
8000154c:	01312623          	sw	s3,12(sp)
80001550:	01412423          	sw	s4,8(sp)
80001554:	01512223          	sw	s5,4(sp)
80001558:	01612023          	sw	s6,0(sp)
8000155c:	00052683          	lw	a3,0(a0)
80001560:	00852703          	lw	a4,8(a0)
80001564:	00060413          	mv	s0,a2
80001568:	00058493          	mv	s1,a1
8000156c:	00177713          	andi	a4,a4,1
80001570:	00068663          	beqz	a3,8000157c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x44>
80001574:	00071663          	bnez	a4,80001580 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x48>
80001578:	0cc0006f          	j	80001644 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x10c>
8000157c:	12070e63          	beqz	a4,800016b8 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x180>
80001580:	00c52703          	lw	a4,12(a0)
80001584:	00848633          	add	a2,s1,s0
80001588:	00000593          	li	a1,0
8000158c:	04070e63          	beqz	a4,800015e8 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xb0>
80001590:	0e000793          	li	a5,224
80001594:	0f000813          	li	a6,240
80001598:	00048893          	mv	a7,s1
8000159c:	01c0006f          	j	800015b8 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x80>
800015a0:	00188293          	addi	t0,a7,1
800015a4:	40b885b3          	sub	a1,a7,a1
800015a8:	fff70713          	addi	a4,a4,-1 # 10ffff <_start-0x7fef0001>
800015ac:	40b285b3          	sub	a1,t0,a1
800015b0:	00028893          	mv	a7,t0
800015b4:	02070c63          	beqz	a4,800015ec <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xb4>
800015b8:	08c88463          	beq	a7,a2,80001640 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x108>
800015bc:	00088283          	lb	t0,0(a7)
800015c0:	fe02d0e3          	bgez	t0,800015a0 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x68>
800015c4:	0ff2f293          	zext.b	t0,t0
800015c8:	00f2e863          	bltu	t0,a5,800015d8 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xa0>
800015cc:	0102ea63          	bltu	t0,a6,800015e0 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xa8>
800015d0:	00488293          	addi	t0,a7,4
800015d4:	fd1ff06f          	j	800015a4 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x6c>
800015d8:	00288293          	addi	t0,a7,2
800015dc:	fc9ff06f          	j	800015a4 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x6c>
800015e0:	00388293          	addi	t0,a7,3
800015e4:	fc1ff06f          	j	800015a4 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x6c>
800015e8:	00048293          	mv	t0,s1
800015ec:	04c28a63          	beq	t0,a2,80001640 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x108>
800015f0:	00028603          	lb	a2,0(t0)
800015f4:	00064663          	bltz	a2,80001600 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xc8>
800015f8:	00059a63          	bnez	a1,8000160c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xd4>
800015fc:	0340006f          	j	80001630 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xf8>
80001600:	0ff67613          	zext.b	a2,a2
80001604:	0e000713          	li	a4,224
80001608:	02058463          	beqz	a1,80001630 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xf8>
8000160c:	0285f063          	bgeu	a1,s0,8000162c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xf4>
80001610:	00b48633          	add	a2,s1,a1
80001614:	00060603          	lb	a2,0(a2)
80001618:	fc000713          	li	a4,-64
8000161c:	00e65a63          	bge	a2,a4,80001630 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xf8>
80001620:	00000613          	li	a2,0
80001624:	00001a63          	bnez	zero,80001638 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x100>
80001628:	0180006f          	j	80001640 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x108>
8000162c:	fe859ae3          	bne	a1,s0,80001620 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0xe8>
80001630:	00048613          	mv	a2,s1
80001634:	00048663          	beqz	s1,80001640 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x108>
80001638:	00058413          	mv	s0,a1
8000163c:	00060493          	mv	s1,a2
80001640:	06068c63          	beqz	a3,800016b8 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x180>
80001644:	00452903          	lw	s2,4(a0)
80001648:	01000593          	li	a1,16
8000164c:	04b47663          	bgeu	s0,a1,80001698 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x160>
80001650:	00000593          	li	a1,0
80001654:	02040263          	beqz	s0,80001678 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x140>
80001658:	00848633          	add	a2,s1,s0
8000165c:	00048693          	mv	a3,s1
80001660:	00068703          	lb	a4,0(a3)
80001664:	fc072713          	slti	a4,a4,-64
80001668:	00174713          	xori	a4,a4,1
8000166c:	00168693          	addi	a3,a3,1
80001670:	00e585b3          	add	a1,a1,a4
80001674:	fec696e3          	bne	a3,a2,80001660 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x128>
80001678:	0525f063          	bgeu	a1,s2,800016b8 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x180>
8000167c:	02054603          	lbu	a2,32(a0)
80001680:	00100693          	li	a3,1
80001684:	40b905b3          	sub	a1,s2,a1
80001688:	06c6c663          	blt	a3,a2,800016f4 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x1bc>
8000168c:	08060063          	beqz	a2,8000170c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x1d4>
80001690:	00000a13          	li	s4,0
80001694:	0800006f          	j	80001714 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x1dc>
80001698:	00050993          	mv	s3,a0
8000169c:	00048513          	mv	a0,s1
800016a0:	00040593          	mv	a1,s0
800016a4:	00001097          	auipc	ra,0x1
800016a8:	930080e7          	jalr	-1744(ra) # 80001fd4 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE>
800016ac:	00050593          	mv	a1,a0
800016b0:	00098513          	mv	a0,s3
800016b4:	fd25e4e3          	bltu	a1,s2,8000167c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x144>
800016b8:	01852583          	lw	a1,24(a0)
800016bc:	01452503          	lw	a0,20(a0)
800016c0:	00c5a303          	lw	t1,12(a1)
800016c4:	00048593          	mv	a1,s1
800016c8:	00040613          	mv	a2,s0
800016cc:	01c12083          	lw	ra,28(sp)
800016d0:	01812403          	lw	s0,24(sp)
800016d4:	01412483          	lw	s1,20(sp)
800016d8:	01012903          	lw	s2,16(sp)
800016dc:	00c12983          	lw	s3,12(sp)
800016e0:	00812a03          	lw	s4,8(sp)
800016e4:	00412a83          	lw	s5,4(sp)
800016e8:	00012b03          	lw	s6,0(sp)
800016ec:	02010113          	addi	sp,sp,32
800016f0:	00030067          	jr	t1
800016f4:	00200693          	li	a3,2
800016f8:	00d61a63          	bne	a2,a3,8000170c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x1d4>
800016fc:	00158613          	addi	a2,a1,1
80001700:	0015d593          	srli	a1,a1,0x1
80001704:	00165a13          	srli	s4,a2,0x1
80001708:	00c0006f          	j	80001714 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x1dc>
8000170c:	00058a13          	mv	s4,a1
80001710:	00000593          	li	a1,0
80001714:	01452903          	lw	s2,20(a0)
80001718:	01852a83          	lw	s5,24(a0)
8000171c:	01052983          	lw	s3,16(a0)
80001720:	00158b13          	addi	s6,a1,1
80001724:	fffb0b13          	addi	s6,s6,-1
80001728:	020b0063          	beqz	s6,80001748 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x210>
8000172c:	010aa603          	lw	a2,16(s5)
80001730:	00090513          	mv	a0,s2
80001734:	00098593          	mv	a1,s3
80001738:	000600e7          	jalr	a2
8000173c:	fe0504e3          	beqz	a0,80001724 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x1ec>
80001740:	00100513          	li	a0,1
80001744:	05c0006f          	j	800017a0 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x268>
80001748:	00caa683          	lw	a3,12(s5)
8000174c:	00090513          	mv	a0,s2
80001750:	00048593          	mv	a1,s1
80001754:	00040613          	mv	a2,s0
80001758:	000680e7          	jalr	a3
8000175c:	00050593          	mv	a1,a0
80001760:	00100513          	li	a0,1
80001764:	02059e63          	bnez	a1,800017a0 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x268>
80001768:	414004b3          	neg	s1,s4
8000176c:	fff00b13          	li	s6,-1
80001770:	fff00413          	li	s0,-1
80001774:	00848533          	add	a0,s1,s0
80001778:	03650063          	beq	a0,s6,80001798 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x260>
8000177c:	010aa603          	lw	a2,16(s5)
80001780:	00090513          	mv	a0,s2
80001784:	00098593          	mv	a1,s3
80001788:	000600e7          	jalr	a2
8000178c:	00140413          	addi	s0,s0,1
80001790:	fe0502e3          	beqz	a0,80001774 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x23c>
80001794:	0080006f          	j	8000179c <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E+0x264>
80001798:	000a0413          	mv	s0,s4
8000179c:	01443533          	sltu	a0,s0,s4
800017a0:	01c12083          	lw	ra,28(sp)
800017a4:	01812403          	lw	s0,24(sp)
800017a8:	01412483          	lw	s1,20(sp)
800017ac:	01012903          	lw	s2,16(sp)
800017b0:	00c12983          	lw	s3,12(sp)
800017b4:	00812a03          	lw	s4,8(sp)
800017b8:	00412a83          	lw	s5,4(sp)
800017bc:	00012b03          	lw	s6,0(sp)
800017c0:	02010113          	addi	sp,sp,32
800017c4:	00008067          	ret

800017c8 <_ZN4core3fmt9Formatter9write_str17h3fc90c9c78785393E>:
800017c8:	01852683          	lw	a3,24(a0)
800017cc:	01452503          	lw	a0,20(a0)
800017d0:	00c6a303          	lw	t1,12(a3)
800017d4:	00030067          	jr	t1

800017d8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17ha0affbfc7f153bceE>:
800017d8:	fd010113          	addi	sp,sp,-48
800017dc:	02112623          	sw	ra,44(sp)
800017e0:	02812423          	sw	s0,40(sp)
800017e4:	02912223          	sw	s1,36(sp)
800017e8:	03212023          	sw	s2,32(sp)
800017ec:	01312e23          	sw	s3,28(sp)
800017f0:	01412c23          	sw	s4,24(sp)
800017f4:	01512a23          	sw	s5,20(sp)
800017f8:	01612823          	sw	s6,16(sp)
800017fc:	01712623          	sw	s7,12(sp)
80001800:	01812423          	sw	s8,8(sp)
80001804:	00050413          	mv	s0,a0
80001808:	03012483          	lw	s1,48(sp)
8000180c:	01852283          	lw	t0,24(a0)
80001810:	03412903          	lw	s2,52(sp)
80001814:	03812983          	lw	s3,56(sp)
80001818:	01452503          	lw	a0,20(a0)
8000181c:	00c2a303          	lw	t1,12(t0)
80001820:	00088a13          	mv	s4,a7
80001824:	00080a93          	mv	s5,a6
80001828:	00078b13          	mv	s6,a5
8000182c:	00070b93          	mv	s7,a4
80001830:	00068c13          	mv	s8,a3
80001834:	000300e7          	jalr	t1
80001838:	00812023          	sw	s0,0(sp)
8000183c:	00a10223          	sb	a0,4(sp)
80001840:	000102a3          	sb	zero,5(sp)
80001844:	00010513          	mv	a0,sp
80001848:	000c0593          	mv	a1,s8
8000184c:	000b8613          	mv	a2,s7
80001850:	000b0693          	mv	a3,s6
80001854:	000a8713          	mv	a4,s5
80001858:	00000097          	auipc	ra,0x0
8000185c:	4f8080e7          	jalr	1272(ra) # 80001d50 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E>
80001860:	00010513          	mv	a0,sp
80001864:	000a0593          	mv	a1,s4
80001868:	00048613          	mv	a2,s1
8000186c:	00090693          	mv	a3,s2
80001870:	00098713          	mv	a4,s3
80001874:	00000097          	auipc	ra,0x0
80001878:	4dc080e7          	jalr	1244(ra) # 80001d50 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E>
8000187c:	00514603          	lbu	a2,5(sp)
80001880:	00414583          	lbu	a1,4(sp)
80001884:	00b66533          	or	a0,a2,a1
80001888:	04060a63          	beqz	a2,800018dc <_ZN4core3fmt9Formatter26debug_struct_field2_finish17ha0affbfc7f153bceE+0x104>
8000188c:	0015f593          	andi	a1,a1,1
80001890:	04059663          	bnez	a1,800018dc <_ZN4core3fmt9Formatter26debug_struct_field2_finish17ha0affbfc7f153bceE+0x104>
80001894:	00012503          	lw	a0,0(sp)
80001898:	01c54583          	lbu	a1,28(a0)
8000189c:	0045f593          	andi	a1,a1,4
800018a0:	02059063          	bnez	a1,800018c0 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17ha0affbfc7f153bceE+0xe8>
800018a4:	01852583          	lw	a1,24(a0)
800018a8:	01452503          	lw	a0,20(a0)
800018ac:	00c5a683          	lw	a3,12(a1)
800018b0:	800035b7          	lui	a1,0x80003
800018b4:	53d58593          	addi	a1,a1,1341 # 8000353d <anon.df1fa239d31f5c80fc4a837dcbfc09f2.29.llvm.11340676783250126700>
800018b8:	00200613          	li	a2,2
800018bc:	01c0006f          	j	800018d8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17ha0affbfc7f153bceE+0x100>
800018c0:	01852583          	lw	a1,24(a0)
800018c4:	01452503          	lw	a0,20(a0)
800018c8:	00c5a683          	lw	a3,12(a1)
800018cc:	800035b7          	lui	a1,0x80003
800018d0:	53c58593          	addi	a1,a1,1340 # 8000353c <anon.df1fa239d31f5c80fc4a837dcbfc09f2.28.llvm.11340676783250126700>
800018d4:	00100613          	li	a2,1
800018d8:	000680e7          	jalr	a3
800018dc:	00157513          	andi	a0,a0,1
800018e0:	02c12083          	lw	ra,44(sp)
800018e4:	02812403          	lw	s0,40(sp)
800018e8:	02412483          	lw	s1,36(sp)
800018ec:	02012903          	lw	s2,32(sp)
800018f0:	01c12983          	lw	s3,28(sp)
800018f4:	01812a03          	lw	s4,24(sp)
800018f8:	01412a83          	lw	s5,20(sp)
800018fc:	01012b03          	lw	s6,16(sp)
80001900:	00c12b83          	lw	s7,12(sp)
80001904:	00812c03          	lw	s8,8(sp)
80001908:	03010113          	addi	sp,sp,48
8000190c:	00008067          	ret

80001910 <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E>:
80001910:	f6010113          	addi	sp,sp,-160
80001914:	08112e23          	sw	ra,156(sp)
80001918:	08812c23          	sw	s0,152(sp)
8000191c:	08912a23          	sw	s1,148(sp)
80001920:	09212823          	sw	s2,144(sp)
80001924:	09312623          	sw	s3,140(sp)
80001928:	00058413          	mv	s0,a1
8000192c:	01c5a483          	lw	s1,28(a1)
80001930:	0005a903          	lw	s2,0(a1)
80001934:	0045a983          	lw	s3,4(a1)
80001938:	0044f613          	andi	a2,s1,4
8000193c:	00048593          	mv	a1,s1
80001940:	00060e63          	beqz	a2,8000195c <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E+0x4c>
80001944:	0084e593          	ori	a1,s1,8
80001948:	00091a63          	bnez	s2,8000195c <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E+0x4c>
8000194c:	00100613          	li	a2,1
80001950:	00c42023          	sw	a2,0(s0)
80001954:	00a00613          	li	a2,10
80001958:	00c42223          	sw	a2,4(s0)
8000195c:	00000793          	li	a5,0
80001960:	0045e593          	ori	a1,a1,4
80001964:	00b42e23          	sw	a1,28(s0)
80001968:	08b10593          	addi	a1,sp,139
8000196c:	00a00613          	li	a2,10
80001970:	01c0006f          	j	8000198c <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E+0x7c>
80001974:	05768693          	addi	a3,a3,87
80001978:	00455513          	srli	a0,a0,0x4
8000197c:	00d58023          	sb	a3,0(a1)
80001980:	00178793          	addi	a5,a5,1
80001984:	fff58593          	addi	a1,a1,-1
80001988:	00050a63          	beqz	a0,8000199c <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E+0x8c>
8000198c:	00f57693          	andi	a3,a0,15
80001990:	fec6f2e3          	bgeu	a3,a2,80001974 <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E+0x64>
80001994:	03068693          	addi	a3,a3,48
80001998:	fe1ff06f          	j	80001978 <_ZN4core3fmt17pointer_fmt_inner17hbef7dcdc8217e0b2E+0x68>
8000199c:	00c10513          	addi	a0,sp,12
800019a0:	40f50533          	sub	a0,a0,a5
800019a4:	08050713          	addi	a4,a0,128
800019a8:	80003637          	lui	a2,0x80003
800019ac:	44c60613          	addi	a2,a2,1100 # 8000344c <anon.9c422e7ace4d9ba208f804b3b74eda03.3.llvm.12450569977146373324>
800019b0:	00100593          	li	a1,1
800019b4:	00200693          	li	a3,2
800019b8:	00040513          	mv	a0,s0
800019bc:	fffff097          	auipc	ra,0xfffff
800019c0:	7d4080e7          	jalr	2004(ra) # 80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>
800019c4:	01242023          	sw	s2,0(s0)
800019c8:	01342223          	sw	s3,4(s0)
800019cc:	00942e23          	sw	s1,28(s0)
800019d0:	09c12083          	lw	ra,156(sp)
800019d4:	09812403          	lw	s0,152(sp)
800019d8:	09412483          	lw	s1,148(sp)
800019dc:	09012903          	lw	s2,144(sp)
800019e0:	08c12983          	lw	s3,140(sp)
800019e4:	0a010113          	addi	sp,sp,160
800019e8:	00008067          	ret

800019ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h231ee961b24b645eE>:
800019ec:	00452603          	lw	a2,4(a0)
800019f0:	00052503          	lw	a0,0(a0)
800019f4:	00c62303          	lw	t1,12(a2)
800019f8:	00030067          	jr	t1

800019fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3a6aea2e8625fc31E>:
800019fc:	00052683          	lw	a3,0(a0)
80001a00:	00452603          	lw	a2,4(a0)
80001a04:	00058513          	mv	a0,a1
80001a08:	00068593          	mv	a1,a3
80001a0c:	00000317          	auipc	t1,0x0
80001a10:	b2c30067          	jr	-1236(t1) # 80001538 <_ZN4core3fmt9Formatter3pad17h3dcc06da102183e5E>

80001a14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E>:
80001a14:	fb010113          	addi	sp,sp,-80
80001a18:	04112623          	sw	ra,76(sp)
80001a1c:	04812423          	sw	s0,72(sp)
80001a20:	04912223          	sw	s1,68(sp)
80001a24:	05212023          	sw	s2,64(sp)
80001a28:	03312e23          	sw	s3,60(sp)
80001a2c:	03412c23          	sw	s4,56(sp)
80001a30:	03512a23          	sw	s5,52(sp)
80001a34:	03612823          	sw	s6,48(sp)
80001a38:	03712623          	sw	s7,44(sp)
80001a3c:	03812423          	sw	s8,40(sp)
80001a40:	03912223          	sw	s9,36(sp)
80001a44:	03a12023          	sw	s10,32(sp)
80001a48:	01b12e23          	sw	s11,28(sp)
80001a4c:	00060913          	mv	s2,a2
80001a50:	00058493          	mv	s1,a1
80001a54:	00000c13          	li	s8,0
80001a58:	00000d93          	li	s11,0
80001a5c:	00000993          	li	s3,0
80001a60:	0a0a15b7          	lui	a1,0xa0a1
80001a64:	a0a58a13          	addi	s4,a1,-1526 # a0a0a0a <_start-0x75f5f5f6>
80001a68:	010105b7          	lui	a1,0x1010
80001a6c:	10058a93          	addi	s5,a1,256 # 1010100 <_start-0x7efeff00>
80001a70:	00852b03          	lw	s6,8(a0)
80001a74:	00052583          	lw	a1,0(a0)
80001a78:	00b12c23          	sw	a1,24(sp)
80001a7c:	00452503          	lw	a0,4(a0)
80001a80:	00a12a23          	sw	a0,20(sp)
80001a84:	fff48513          	addi	a0,s1,-1
80001a88:	00a12623          	sw	a0,12(sp)
80001a8c:	00448513          	addi	a0,s1,4
80001a90:	00a12423          	sw	a0,8(sp)
80001a94:	40c00533          	neg	a0,a2
80001a98:	00a12823          	sw	a0,16(sp)
80001a9c:	00a00d13          	li	s10,10
80001aa0:	80808537          	lui	a0,0x80808
80001aa4:	08050c93          	addi	s9,a0,128 # 80808080 <KALLOC_BUFFER+0x7fc080>
80001aa8:	03c0006f          	j	80001ae4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0xd0>
80001aac:	00c12503          	lw	a0,12(sp)
80001ab0:	00850533          	add	a0,a0,s0
80001ab4:	00054503          	lbu	a0,0(a0)
80001ab8:	ff650513          	addi	a0,a0,-10
80001abc:	00153513          	seqz	a0,a0
80001ac0:	00ab0023          	sb	a0,0(s6)
80001ac4:	01412503          	lw	a0,20(sp)
80001ac8:	00c52683          	lw	a3,12(a0)
80001acc:	41840633          	sub	a2,s0,s8
80001ad0:	018485b3          	add	a1,s1,s8
80001ad4:	01812503          	lw	a0,24(sp)
80001ad8:	000680e7          	jalr	a3
80001adc:	000b8c13          	mv	s8,s7
80001ae0:	18051663          	bnez	a0,80001c6c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x258>
80001ae4:	0019f513          	andi	a0,s3,1
80001ae8:	16051e63          	bnez	a0,80001c64 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x250>
80001aec:	01b97a63          	bgeu	s2,s11,80001b00 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0xec>
80001af0:	000d8b93          	mv	s7,s11
80001af4:	1280006f          	j	80001c1c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x208>
80001af8:	000b8d93          	mv	s11,s7
80001afc:	13796063          	bltu	s2,s7,80001c1c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x208>
80001b00:	41b905b3          	sub	a1,s2,s11
80001b04:	01b48533          	add	a0,s1,s11
80001b08:	00700613          	li	a2,7
80001b0c:	02b66663          	bltu	a2,a1,80001b38 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x124>
80001b10:	11b90463          	beq	s2,s11,80001c18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x204>
80001b14:	00000593          	li	a1,0
80001b18:	01012603          	lw	a2,16(sp)
80001b1c:	01b60633          	add	a2,a2,s11
80001b20:	00054683          	lbu	a3,0(a0)
80001b24:	0da68063          	beq	a3,s10,80001be4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1d0>
80001b28:	fff58593          	addi	a1,a1,-1
80001b2c:	00150513          	addi	a0,a0,1
80001b30:	feb618e3          	bne	a2,a1,80001b20 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x10c>
80001b34:	0e40006f          	j	80001c18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x204>
80001b38:	00350613          	addi	a2,a0,3
80001b3c:	ffc67613          	andi	a2,a2,-4
80001b40:	04a61a63          	bne	a2,a0,80001b94 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x180>
80001b44:	00000613          	li	a2,0
80001b48:	ff858693          	addi	a3,a1,-8
80001b4c:	00812703          	lw	a4,8(sp)
80001b50:	01b70733          	add	a4,a4,s11
80001b54:	00c507b3          	add	a5,a0,a2
80001b58:	0007a783          	lw	a5,0(a5)
80001b5c:	00c70833          	add	a6,a4,a2
80001b60:	00082803          	lw	a6,0(a6)
80001b64:	0147c8b3          	xor	a7,a5,s4
80001b68:	01484833          	xor	a6,a6,s4
80001b6c:	410a82b3          	sub	t0,s5,a6
80001b70:	0102e833          	or	a6,t0,a6
80001b74:	411a88b3          	sub	a7,s5,a7
80001b78:	00f8e7b3          	or	a5,a7,a5
80001b7c:	0107f7b3          	and	a5,a5,a6
80001b80:	0197f7b3          	and	a5,a5,s9
80001b84:	03979a63          	bne	a5,s9,80001bb8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1a4>
80001b88:	00860613          	addi	a2,a2,8
80001b8c:	fcc6f4e3          	bgeu	a3,a2,80001b54 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x140>
80001b90:	0280006f          	j	80001bb8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1a4>
80001b94:	00000693          	li	a3,0
80001b98:	40a60633          	sub	a2,a2,a0
80001b9c:	00d50733          	add	a4,a0,a3
80001ba0:	00074703          	lbu	a4,0(a4)
80001ba4:	05a70663          	beq	a4,s10,80001bf0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1dc>
80001ba8:	00168693          	addi	a3,a3,1
80001bac:	fed618e3          	bne	a2,a3,80001b9c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x188>
80001bb0:	ff858693          	addi	a3,a1,-8
80001bb4:	f8c6fce3          	bgeu	a3,a2,80001b4c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x138>
80001bb8:	06b60063          	beq	a2,a1,80001c18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x204>
80001bbc:	00c505b3          	add	a1,a0,a2
80001bc0:	40c00533          	neg	a0,a2
80001bc4:	01012603          	lw	a2,16(sp)
80001bc8:	01b60633          	add	a2,a2,s11
80001bcc:	0005c683          	lbu	a3,0(a1)
80001bd0:	01a68e63          	beq	a3,s10,80001bec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1d8>
80001bd4:	fff50513          	addi	a0,a0,-1
80001bd8:	00158593          	addi	a1,a1,1
80001bdc:	fea618e3          	bne	a2,a0,80001bcc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1b8>
80001be0:	0380006f          	j	80001c18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x204>
80001be4:	40b006b3          	neg	a3,a1
80001be8:	0080006f          	j	80001bf0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x1dc>
80001bec:	40a006b3          	neg	a3,a0
80001bf0:	00dd8533          	add	a0,s11,a3
80001bf4:	00150b93          	addi	s7,a0,1
80001bf8:	f12570e3          	bgeu	a0,s2,80001af8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0xe4>
80001bfc:	01b48db3          	add	s11,s1,s11
80001c00:	00dd86b3          	add	a3,s11,a3
80001c04:	0006c503          	lbu	a0,0(a3)
80001c08:	efa518e3          	bne	a0,s10,80001af8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0xe4>
80001c0c:	000b8d93          	mv	s11,s7
80001c10:	000b8413          	mv	s0,s7
80001c14:	01c0006f          	j	80001c30 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x21c>
80001c18:	00090b93          	mv	s7,s2
80001c1c:	000b8d93          	mv	s11,s7
80001c20:	00100993          	li	s3,1
80001c24:	000c0b93          	mv	s7,s8
80001c28:	00090413          	mv	s0,s2
80001c2c:	032c0c63          	beq	s8,s2,80001c64 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x250>
80001c30:	000b4503          	lbu	a0,0(s6)
80001c34:	02050263          	beqz	a0,80001c58 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x244>
80001c38:	01412503          	lw	a0,20(sp)
80001c3c:	00c52683          	lw	a3,12(a0)
80001c40:	00400613          	li	a2,4
80001c44:	01812503          	lw	a0,24(sp)
80001c48:	800035b7          	lui	a1,0x80003
80001c4c:	02e58593          	addi	a1,a1,46 # 8000302e <.Lanon.c11cc9eb1ad76507c390592964f42423.3+0x6>
80001c50:	000680e7          	jalr	a3
80001c54:	00051c63          	bnez	a0,80001c6c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x258>
80001c58:	e5841ae3          	bne	s0,s8,80001aac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x98>
80001c5c:	00000513          	li	a0,0
80001c60:	e61ff06f          	j	80001ac0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0xac>
80001c64:	00000513          	li	a0,0
80001c68:	0080006f          	j	80001c70 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E+0x25c>
80001c6c:	00100513          	li	a0,1
80001c70:	04c12083          	lw	ra,76(sp)
80001c74:	04812403          	lw	s0,72(sp)
80001c78:	04412483          	lw	s1,68(sp)
80001c7c:	04012903          	lw	s2,64(sp)
80001c80:	03c12983          	lw	s3,60(sp)
80001c84:	03812a03          	lw	s4,56(sp)
80001c88:	03412a83          	lw	s5,52(sp)
80001c8c:	03012b03          	lw	s6,48(sp)
80001c90:	02c12b83          	lw	s7,44(sp)
80001c94:	02812c03          	lw	s8,40(sp)
80001c98:	02412c83          	lw	s9,36(sp)
80001c9c:	02012d03          	lw	s10,32(sp)
80001ca0:	01c12d83          	lw	s11,28(sp)
80001ca4:	05010113          	addi	sp,sp,80
80001ca8:	00008067          	ret

80001cac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h214273e984f68d1aE>:
80001cac:	fe010113          	addi	sp,sp,-32
80001cb0:	00112e23          	sw	ra,28(sp)
80001cb4:	00812c23          	sw	s0,24(sp)
80001cb8:	00912a23          	sw	s1,20(sp)
80001cbc:	01212823          	sw	s2,16(sp)
80001cc0:	01312623          	sw	s3,12(sp)
80001cc4:	00852483          	lw	s1,8(a0)
80001cc8:	0004c603          	lbu	a2,0(s1)
80001ccc:	00052403          	lw	s0,0(a0)
80001cd0:	00452903          	lw	s2,4(a0)
80001cd4:	04060663          	beqz	a2,80001d20 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h214273e984f68d1aE+0x74>
80001cd8:	00c92703          	lw	a4,12(s2)
80001cdc:	800036b7          	lui	a3,0x80003
80001ce0:	02e68693          	addi	a3,a3,46 # 8000302e <.Lanon.c11cc9eb1ad76507c390592964f42423.3+0x6>
80001ce4:	00400613          	li	a2,4
80001ce8:	00040513          	mv	a0,s0
80001cec:	00058993          	mv	s3,a1
80001cf0:	00068593          	mv	a1,a3
80001cf4:	000700e7          	jalr	a4
80001cf8:	00098593          	mv	a1,s3
80001cfc:	02050263          	beqz	a0,80001d20 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h214273e984f68d1aE+0x74>
80001d00:	00100513          	li	a0,1
80001d04:	01c12083          	lw	ra,28(sp)
80001d08:	01812403          	lw	s0,24(sp)
80001d0c:	01412483          	lw	s1,20(sp)
80001d10:	01012903          	lw	s2,16(sp)
80001d14:	00c12983          	lw	s3,12(sp)
80001d18:	02010113          	addi	sp,sp,32
80001d1c:	00008067          	ret
80001d20:	ff658513          	addi	a0,a1,-10
80001d24:	00153513          	seqz	a0,a0
80001d28:	00a48023          	sb	a0,0(s1)
80001d2c:	01092303          	lw	t1,16(s2)
80001d30:	00040513          	mv	a0,s0
80001d34:	01c12083          	lw	ra,28(sp)
80001d38:	01812403          	lw	s0,24(sp)
80001d3c:	01412483          	lw	s1,20(sp)
80001d40:	01012903          	lw	s2,16(sp)
80001d44:	00c12983          	lw	s3,12(sp)
80001d48:	02010113          	addi	sp,sp,32
80001d4c:	00030067          	jr	t1

80001d50 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E>:
80001d50:	fa010113          	addi	sp,sp,-96
80001d54:	04112e23          	sw	ra,92(sp)
80001d58:	04812c23          	sw	s0,88(sp)
80001d5c:	04912a23          	sw	s1,84(sp)
80001d60:	05212823          	sw	s2,80(sp)
80001d64:	05312623          	sw	s3,76(sp)
80001d68:	05412423          	sw	s4,72(sp)
80001d6c:	05512223          	sw	s5,68(sp)
80001d70:	05612023          	sw	s6,64(sp)
80001d74:	03712e23          	sw	s7,60(sp)
80001d78:	00050413          	mv	s0,a0
80001d7c:	00454503          	lbu	a0,4(a0)
80001d80:	00100a93          	li	s5,1
80001d84:	00100a13          	li	s4,1
80001d88:	02050e63          	beqz	a0,80001dc4 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x74>
80001d8c:	01440223          	sb	s4,4(s0)
80001d90:	015402a3          	sb	s5,5(s0)
80001d94:	00040513          	mv	a0,s0
80001d98:	05c12083          	lw	ra,92(sp)
80001d9c:	05812403          	lw	s0,88(sp)
80001da0:	05412483          	lw	s1,84(sp)
80001da4:	05012903          	lw	s2,80(sp)
80001da8:	04c12983          	lw	s3,76(sp)
80001dac:	04812a03          	lw	s4,72(sp)
80001db0:	04412a83          	lw	s5,68(sp)
80001db4:	04012b03          	lw	s6,64(sp)
80001db8:	03c12b83          	lw	s7,60(sp)
80001dbc:	06010113          	addi	sp,sp,96
80001dc0:	00008067          	ret
80001dc4:	00070913          	mv	s2,a4
80001dc8:	00068493          	mv	s1,a3
80001dcc:	00042983          	lw	s3,0(s0)
80001dd0:	01c9a503          	lw	a0,28(s3)
80001dd4:	00544683          	lbu	a3,5(s0)
80001dd8:	00457713          	andi	a4,a0,4
80001ddc:	00071e63          	bnez	a4,80001df8 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0xa8>
80001de0:	00058b13          	mv	s6,a1
80001de4:	00060b93          	mv	s7,a2
80001de8:	10069c63          	bnez	a3,80001f00 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x1b0>
80001dec:	800035b7          	lui	a1,0x80003
80001df0:	53058593          	addi	a1,a1,1328 # 80003530 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.20>
80001df4:	1140006f          	j	80001f08 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x1b8>
80001df8:	04069063          	bnez	a3,80001e38 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0xe8>
80001dfc:	0189a683          	lw	a3,24(s3)
80001e00:	0149a503          	lw	a0,20(s3)
80001e04:	00c6a703          	lw	a4,12(a3)
80001e08:	800036b7          	lui	a3,0x80003
80001e0c:	53768693          	addi	a3,a3,1335 # 80003537 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.23>
80001e10:	00060a13          	mv	s4,a2
80001e14:	00300613          	li	a2,3
80001e18:	00058b13          	mv	s6,a1
80001e1c:	00068593          	mv	a1,a3
80001e20:	000700e7          	jalr	a4
80001e24:	000a0613          	mv	a2,s4
80001e28:	00100a13          	li	s4,1
80001e2c:	f60510e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001e30:	000b0593          	mv	a1,s6
80001e34:	01c9a503          	lw	a0,28(s3)
80001e38:	0149a683          	lw	a3,20(s3)
80001e3c:	0189a703          	lw	a4,24(s3)
80001e40:	00100a13          	li	s4,1
80001e44:	01410ba3          	sb	s4,23(sp)
80001e48:	00d12423          	sw	a3,8(sp)
80001e4c:	00e12623          	sw	a4,12(sp)
80001e50:	01710693          	addi	a3,sp,23
80001e54:	00d12823          	sw	a3,16(sp)
80001e58:	0109a683          	lw	a3,16(s3)
80001e5c:	0209c703          	lbu	a4,32(s3)
80001e60:	0009a783          	lw	a5,0(s3)
80001e64:	0049a803          	lw	a6,4(s3)
80001e68:	0089a883          	lw	a7,8(s3)
80001e6c:	00c9a283          	lw	t0,12(s3)
80001e70:	02a12a23          	sw	a0,52(sp)
80001e74:	02d12423          	sw	a3,40(sp)
80001e78:	02e10c23          	sb	a4,56(sp)
80001e7c:	00f12c23          	sw	a5,24(sp)
80001e80:	01012e23          	sw	a6,28(sp)
80001e84:	03112023          	sw	a7,32(sp)
80001e88:	02512223          	sw	t0,36(sp)
80001e8c:	00810513          	addi	a0,sp,8
80001e90:	02a12623          	sw	a0,44(sp)
80001e94:	80003537          	lui	a0,0x80003
80001e98:	51850513          	addi	a0,a0,1304 # 80003518 <anon.df1fa239d31f5c80fc4a837dcbfc09f2.18.llvm.11340676783250126700>
80001e9c:	02a12823          	sw	a0,48(sp)
80001ea0:	00810513          	addi	a0,sp,8
80001ea4:	00000097          	auipc	ra,0x0
80001ea8:	b70080e7          	jalr	-1168(ra) # 80001a14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E>
80001eac:	ee0510e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001eb0:	800035b7          	lui	a1,0x80003
80001eb4:	53558593          	addi	a1,a1,1333 # 80003535 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.22>
80001eb8:	00810513          	addi	a0,sp,8
80001ebc:	00200613          	li	a2,2
80001ec0:	00000097          	auipc	ra,0x0
80001ec4:	b54080e7          	jalr	-1196(ra) # 80001a14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E>
80001ec8:	ec0512e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001ecc:	00c92603          	lw	a2,12(s2)
80001ed0:	01810593          	addi	a1,sp,24
80001ed4:	00048513          	mv	a0,s1
80001ed8:	000600e7          	jalr	a2
80001edc:	ea0518e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001ee0:	03012583          	lw	a1,48(sp)
80001ee4:	02c12503          	lw	a0,44(sp)
80001ee8:	00c5a683          	lw	a3,12(a1)
80001eec:	800035b7          	lui	a1,0x80003
80001ef0:	53a58593          	addi	a1,a1,1338 # 8000353a <anon.df1fa239d31f5c80fc4a837dcbfc09f2.24.llvm.11340676783250126700>
80001ef4:	00200613          	li	a2,2
80001ef8:	000680e7          	jalr	a3
80001efc:	07c0006f          	j	80001f78 <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x228>
80001f00:	800035b7          	lui	a1,0x80003
80001f04:	53358593          	addi	a1,a1,1331 # 80003533 <anon.df1fa239d31f5c80fc4a837dcbfc09f2.21.llvm.11340676783250126700>
80001f08:	0189a603          	lw	a2,24(s3)
80001f0c:	0149a503          	lw	a0,20(s3)
80001f10:	00c62703          	lw	a4,12(a2)
80001f14:	0036c613          	xori	a2,a3,3
80001f18:	000700e7          	jalr	a4
80001f1c:	00100a13          	li	s4,1
80001f20:	e60516e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001f24:	000b8613          	mv	a2,s7
80001f28:	000b0593          	mv	a1,s6
80001f2c:	0189a683          	lw	a3,24(s3)
80001f30:	0149a503          	lw	a0,20(s3)
80001f34:	00c6a683          	lw	a3,12(a3)
80001f38:	000680e7          	jalr	a3
80001f3c:	00100a13          	li	s4,1
80001f40:	e40516e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001f44:	0189a583          	lw	a1,24(s3)
80001f48:	0149a503          	lw	a0,20(s3)
80001f4c:	00c5a683          	lw	a3,12(a1)
80001f50:	800035b7          	lui	a1,0x80003
80001f54:	53558593          	addi	a1,a1,1333 # 80003535 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.22>
80001f58:	00200613          	li	a2,2
80001f5c:	000680e7          	jalr	a3
80001f60:	00100a13          	li	s4,1
80001f64:	e20514e3          	bnez	a0,80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>
80001f68:	00c92603          	lw	a2,12(s2)
80001f6c:	00048513          	mv	a0,s1
80001f70:	00098593          	mv	a1,s3
80001f74:	000600e7          	jalr	a2
80001f78:	00050a13          	mv	s4,a0
80001f7c:	e11ff06f          	j	80001d8c <_ZN4core3fmt8builders11DebugStruct5field17h2283c8637cb17e32E+0x3c>

80001f80 <_ZN4core3fmt5Write9write_fmt17ha1bd355eddcedd74E.llvm.11340676783250126700>:
80001f80:	00058613          	mv	a2,a1
80001f84:	0045a683          	lw	a3,4(a1)
80001f88:	00c5a583          	lw	a1,12(a1)
80001f8c:	00100713          	li	a4,1
80001f90:	00e68e63          	beq	a3,a4,80001fac <_ZN4core3fmt5Write9write_fmt17ha1bd355eddcedd74E.llvm.11340676783250126700+0x2c>
80001f94:	00069e63          	bnez	a3,80001fb0 <_ZN4core3fmt5Write9write_fmt17ha1bd355eddcedd74E.llvm.11340676783250126700+0x30>
80001f98:	00059c63          	bnez	a1,80001fb0 <_ZN4core3fmt5Write9write_fmt17ha1bd355eddcedd74E.llvm.11340676783250126700+0x30>
80001f9c:	00000613          	li	a2,0
80001fa0:	00100593          	li	a1,1
80001fa4:	00000317          	auipc	t1,0x0
80001fa8:	a7030067          	jr	-1424(t1) # 80001a14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E>
80001fac:	00058a63          	beqz	a1,80001fc0 <_ZN4core3fmt5Write9write_fmt17ha1bd355eddcedd74E.llvm.11340676783250126700+0x40>
80001fb0:	800035b7          	lui	a1,0x80003
80001fb4:	51858593          	addi	a1,a1,1304 # 80003518 <anon.df1fa239d31f5c80fc4a837dcbfc09f2.18.llvm.11340676783250126700>
80001fb8:	fffff317          	auipc	t1,0xfffff
80001fbc:	f8830067          	jr	-120(t1) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
80001fc0:	00062603          	lw	a2,0(a2)
80001fc4:	00062583          	lw	a1,0(a2)
80001fc8:	00462603          	lw	a2,4(a2)
80001fcc:	00000317          	auipc	t1,0x0
80001fd0:	a4830067          	jr	-1464(t1) # 80001a14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h668ffcb9cf79c295E>

80001fd4 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE>:
80001fd4:	00050613          	mv	a2,a0
80001fd8:	00350513          	addi	a0,a0,3
80001fdc:	ffc57513          	andi	a0,a0,-4
80001fe0:	40c502b3          	sub	t0,a0,a2
80001fe4:	0255f663          	bgeu	a1,t0,80002010 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x3c>
80001fe8:	00000513          	li	a0,0
80001fec:	02058063          	beqz	a1,8000200c <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x38>
80001ff0:	00b605b3          	add	a1,a2,a1
80001ff4:	00060683          	lb	a3,0(a2)
80001ff8:	fc06a693          	slti	a3,a3,-64
80001ffc:	0016c693          	xori	a3,a3,1
80002000:	00160613          	addi	a2,a2,1
80002004:	00d50533          	add	a0,a0,a3
80002008:	feb616e3          	bne	a2,a1,80001ff4 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x20>
8000200c:	00008067          	ret
80002010:	405586b3          	sub	a3,a1,t0
80002014:	0026d893          	srli	a7,a3,0x2
80002018:	fc0888e3          	beqz	a7,80001fe8 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x14>
8000201c:	005602b3          	add	t0,a2,t0
80002020:	0036f593          	andi	a1,a3,3
80002024:	00c51663          	bne	a0,a2,80002030 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x5c>
80002028:	00000513          	li	a0,0
8000202c:	0200006f          	j	8000204c <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x78>
80002030:	00000513          	li	a0,0
80002034:	00060703          	lb	a4,0(a2)
80002038:	fc072713          	slti	a4,a4,-64
8000203c:	00174713          	xori	a4,a4,1
80002040:	00160613          	addi	a2,a2,1
80002044:	00e50533          	add	a0,a0,a4
80002048:	fe5616e3          	bne	a2,t0,80002034 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x60>
8000204c:	00000713          	li	a4,0
80002050:	02058463          	beqz	a1,80002078 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0xa4>
80002054:	ffc6f613          	andi	a2,a3,-4
80002058:	00c28633          	add	a2,t0,a2
8000205c:	00060683          	lb	a3,0(a2)
80002060:	fc06a693          	slti	a3,a3,-64
80002064:	0016c693          	xori	a3,a3,1
80002068:	00d70733          	add	a4,a4,a3
8000206c:	fff58593          	addi	a1,a1,-1
80002070:	00160613          	addi	a2,a2,1
80002074:	fe0594e3          	bnez	a1,8000205c <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x88>
80002078:	010105b7          	lui	a1,0x1010
8000207c:	10158613          	addi	a2,a1,257 # 1010101 <_start-0x7efefeff>
80002080:	00ff05b7          	lui	a1,0xff0
80002084:	0ff58593          	addi	a1,a1,255 # ff00ff <_start-0x7f00ff01>
80002088:	00a70533          	add	a0,a4,a0
8000208c:	00400793          	li	a5,4
80002090:	0340006f          	j	800020c4 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0xf0>
80002094:	005702b3          	add	t0,a4,t0
80002098:	410688b3          	sub	a7,a3,a6
8000209c:	00387313          	andi	t1,a6,3
800020a0:	00b3fe33          	and	t3,t2,a1
800020a4:	0083d393          	srli	t2,t2,0x8
800020a8:	00b3f3b3          	and	t2,t2,a1
800020ac:	01c383b3          	add	t2,t2,t3
800020b0:	01039e13          	slli	t3,t2,0x10
800020b4:	007e03b3          	add	t2,t3,t2
800020b8:	0103d393          	srli	t2,t2,0x10
800020bc:	00a38533          	add	a0,t2,a0
800020c0:	0a031a63          	bnez	t1,80002174 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x1a0>
800020c4:	f40884e3          	beqz	a7,8000200c <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x38>
800020c8:	00028713          	mv	a4,t0
800020cc:	00088693          	mv	a3,a7
800020d0:	0c000893          	li	a7,192
800020d4:	00068813          	mv	a6,a3
800020d8:	0116e463          	bltu	a3,a7,800020e0 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x10c>
800020dc:	0c000813          	li	a6,192
800020e0:	00281293          	slli	t0,a6,0x2
800020e4:	00000393          	li	t2,0
800020e8:	faf6e6e3          	bltu	a3,a5,80002094 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0xc0>
800020ec:	3f02f893          	andi	a7,t0,1008
800020f0:	011708b3          	add	a7,a4,a7
800020f4:	00070313          	mv	t1,a4
800020f8:	00032e03          	lw	t3,0(t1)
800020fc:	fffe4e93          	not	t4,t3
80002100:	007ede93          	srli	t4,t4,0x7
80002104:	006e5e13          	srli	t3,t3,0x6
80002108:	00432f03          	lw	t5,4(t1)
8000210c:	01ceee33          	or	t3,t4,t3
80002110:	00ce7e33          	and	t3,t3,a2
80002114:	007e03b3          	add	t2,t3,t2
80002118:	ffff4e13          	not	t3,t5
8000211c:	007e5e13          	srli	t3,t3,0x7
80002120:	00832e83          	lw	t4,8(t1)
80002124:	006f5f13          	srli	t5,t5,0x6
80002128:	01ee6e33          	or	t3,t3,t5
8000212c:	00ce7e33          	and	t3,t3,a2
80002130:	fffecf13          	not	t5,t4
80002134:	007f5f13          	srli	t5,t5,0x7
80002138:	006ede93          	srli	t4,t4,0x6
8000213c:	01df6eb3          	or	t4,t5,t4
80002140:	00c32f03          	lw	t5,12(t1)
80002144:	00cefeb3          	and	t4,t4,a2
80002148:	01de0e33          	add	t3,t3,t4
8000214c:	01c383b3          	add	t2,t2,t3
80002150:	ffff4e13          	not	t3,t5
80002154:	007e5e13          	srli	t3,t3,0x7
80002158:	006f5e93          	srli	t4,t5,0x6
8000215c:	01de6e33          	or	t3,t3,t4
80002160:	00ce7e33          	and	t3,t3,a2
80002164:	01030313          	addi	t1,t1,16
80002168:	01c383b3          	add	t2,t2,t3
8000216c:	f91316e3          	bne	t1,a7,800020f8 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x124>
80002170:	f25ff06f          	j	80002094 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0xc0>
80002174:	00000793          	li	a5,0
80002178:	0fc87813          	andi	a6,a6,252
8000217c:	00281813          	slli	a6,a6,0x2
80002180:	01070733          	add	a4,a4,a6
80002184:	0c06b813          	sltiu	a6,a3,192
80002188:	41000833          	neg	a6,a6
8000218c:	0106f6b3          	and	a3,a3,a6
80002190:	0036f693          	andi	a3,a3,3
80002194:	00269693          	slli	a3,a3,0x2
80002198:	00072803          	lw	a6,0(a4)
8000219c:	00470713          	addi	a4,a4,4
800021a0:	fff84893          	not	a7,a6
800021a4:	0078d893          	srli	a7,a7,0x7
800021a8:	00685813          	srli	a6,a6,0x6
800021ac:	0108e833          	or	a6,a7,a6
800021b0:	00c87833          	and	a6,a6,a2
800021b4:	ffc68693          	addi	a3,a3,-4
800021b8:	00f807b3          	add	a5,a6,a5
800021bc:	fc069ee3          	bnez	a3,80002198 <_ZN4core3str5count14do_count_chars17h7c4466e81ac5be8dE+0x1c4>
800021c0:	00b7f633          	and	a2,a5,a1
800021c4:	0087d793          	srli	a5,a5,0x8
800021c8:	00b7f5b3          	and	a1,a5,a1
800021cc:	00c585b3          	add	a1,a1,a2
800021d0:	01059613          	slli	a2,a1,0x10
800021d4:	00b605b3          	add	a1,a2,a1
800021d8:	0105d593          	srli	a1,a1,0x10
800021dc:	00a58533          	add	a0,a1,a0
800021e0:	00008067          	ret

800021e4 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h3dfce83b3ddd30e3E>:
800021e4:	fff58613          	addi	a2,a1,-1
800021e8:	00c5c6b3          	xor	a3,a1,a2
800021ec:	00d67c63          	bgeu	a2,a3,80002204 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h3dfce83b3ddd30e3E+0x20>
800021f0:	80000637          	lui	a2,0x80000
800021f4:	40b60633          	sub	a2,a2,a1
800021f8:	00a63533          	sltu	a0,a2,a0
800021fc:	00154513          	xori	a0,a0,1
80002200:	00008067          	ret
80002204:	00000513          	li	a0,0
80002208:	00008067          	ret

8000220c <_ZN4core6result13unwrap_failed17hcb9f3ee45fc5ed7fE>:
8000220c:	fc010113          	addi	sp,sp,-64
80002210:	00a12423          	sw	a0,8(sp)
80002214:	00b12623          	sw	a1,12(sp)
80002218:	00c12823          	sw	a2,16(sp)
8000221c:	00d12a23          	sw	a3,20(sp)
80002220:	00810513          	addi	a0,sp,8
80002224:	02a12823          	sw	a0,48(sp)
80002228:	80002537          	lui	a0,0x80002
8000222c:	9fc50513          	addi	a0,a0,-1540 # 800019fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3a6aea2e8625fc31E>
80002230:	02a12a23          	sw	a0,52(sp)
80002234:	01010513          	addi	a0,sp,16
80002238:	02a12c23          	sw	a0,56(sp)
8000223c:	80002537          	lui	a0,0x80002
80002240:	9ec50513          	addi	a0,a0,-1556 # 800019ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h231ee961b24b645eE>
80002244:	02a12e23          	sw	a0,60(sp)
80002248:	80003537          	lui	a0,0x80003
8000224c:	54450513          	addi	a0,a0,1348 # 80003544 <.Lanon.5b031b77e8ba66a55d53d7e703ed6870.24>
80002250:	00a12c23          	sw	a0,24(sp)
80002254:	00200513          	li	a0,2
80002258:	00a12e23          	sw	a0,28(sp)
8000225c:	02012423          	sw	zero,40(sp)
80002260:	03010593          	addi	a1,sp,48
80002264:	02b12023          	sw	a1,32(sp)
80002268:	02a12223          	sw	a0,36(sp)
8000226c:	01810513          	addi	a0,sp,24
80002270:	00070593          	mv	a1,a4
80002274:	00000097          	auipc	ra,0x0
80002278:	008080e7          	jalr	8(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>

8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>:
8000227c:	ff010113          	addi	sp,sp,-16
80002280:	00a12223          	sw	a0,4(sp)
80002284:	00b12423          	sw	a1,8(sp)
80002288:	00100513          	li	a0,1
8000228c:	00a11623          	sh	a0,12(sp)
80002290:	00410513          	addi	a0,sp,4
80002294:	ffffe097          	auipc	ra,0xffffe
80002298:	1ac080e7          	jalr	428(ra) # 80000440 <rust_begin_unwind>

8000229c <_ZN4core9panicking5panic17h1dc30cf9c45a9bafE>:
8000229c:	fe010113          	addi	sp,sp,-32
800022a0:	00a12c23          	sw	a0,24(sp)
800022a4:	00b12e23          	sw	a1,28(sp)
800022a8:	01810513          	addi	a0,sp,24
800022ac:	00a12023          	sw	a0,0(sp)
800022b0:	00100513          	li	a0,1
800022b4:	00a12223          	sw	a0,4(sp)
800022b8:	00012823          	sw	zero,16(sp)
800022bc:	00400513          	li	a0,4
800022c0:	00a12423          	sw	a0,8(sp)
800022c4:	00012623          	sw	zero,12(sp)
800022c8:	00010513          	mv	a0,sp
800022cc:	00060593          	mv	a1,a2
800022d0:	00000097          	auipc	ra,0x0
800022d4:	fac080e7          	jalr	-84(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>

800022d8 <_ZN4core9panicking18panic_bounds_check17h6a309319e9c2f02fE>:
800022d8:	fd010113          	addi	sp,sp,-48
800022dc:	00a12023          	sw	a0,0(sp)
800022e0:	00b12223          	sw	a1,4(sp)
800022e4:	00410513          	addi	a0,sp,4
800022e8:	02a12023          	sw	a0,32(sp)
800022ec:	80002537          	lui	a0,0x80002
800022f0:	72050513          	addi	a0,a0,1824 # 80002720 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he2712ed01a639beaE>
800022f4:	02a12223          	sw	a0,36(sp)
800022f8:	00010593          	mv	a1,sp
800022fc:	02b12423          	sw	a1,40(sp)
80002300:	02a12623          	sw	a0,44(sp)
80002304:	80003537          	lui	a0,0x80003
80002308:	5a850513          	addi	a0,a0,1448 # 800035a8 <.Lanon.067b3dfb1b5c7344ba321289549ae4de.9>
8000230c:	00a12423          	sw	a0,8(sp)
80002310:	00200513          	li	a0,2
80002314:	00a12623          	sw	a0,12(sp)
80002318:	00012c23          	sw	zero,24(sp)
8000231c:	02010593          	addi	a1,sp,32
80002320:	00b12823          	sw	a1,16(sp)
80002324:	00a12a23          	sw	a0,20(sp)
80002328:	00810513          	addi	a0,sp,8
8000232c:	00060593          	mv	a1,a2
80002330:	00000097          	auipc	ra,0x0
80002334:	f4c080e7          	jalr	-180(ra) # 8000227c <_ZN4core9panicking9panic_fmt17he801d837c0be5858E>

80002338 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fd61e479eae66b5E>:
80002338:	fc010113          	addi	sp,sp,-64
8000233c:	02112e23          	sw	ra,60(sp)
80002340:	00052503          	lw	a0,0(a0)
80002344:	40a00633          	neg	a2,a0
80002348:	00c57633          	and	a2,a0,a2
8000234c:	077cb6b7          	lui	a3,0x77cb
80002350:	53168693          	addi	a3,a3,1329 # 77cb531 <_start-0x78834acf>
80002354:	02d60633          	mul	a2,a2,a3
80002358:	01b65613          	srli	a2,a2,0x1b
8000235c:	800036b7          	lui	a3,0x80003
80002360:	57468693          	addi	a3,a3,1396 # 80003574 <.Lanon.5b031b77e8ba66a55d53d7e703ed6870.24+0x30>
80002364:	00c68633          	add	a2,a3,a2
80002368:	00064603          	lbu	a2,0(a2) # 80000000 <_start>
8000236c:	02a12a23          	sw	a0,52(sp)
80002370:	02c12c23          	sw	a2,56(sp)
80002374:	03410513          	addi	a0,sp,52
80002378:	02a12223          	sw	a0,36(sp)
8000237c:	80002537          	lui	a0,0x80002
80002380:	55850513          	addi	a0,a0,1368 # 80002558 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E>
80002384:	02a12423          	sw	a0,40(sp)
80002388:	03810513          	addi	a0,sp,56
8000238c:	02a12623          	sw	a0,44(sp)
80002390:	80002537          	lui	a0,0x80002
80002394:	63850513          	addi	a0,a0,1592 # 80002638 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE>
80002398:	02a12823          	sw	a0,48(sp)
8000239c:	80003537          	lui	a0,0x80003
800023a0:	5c050513          	addi	a0,a0,1472 # 800035c0 <.Lanon.6108cff51755a61e81d016b748f24991.2>
800023a4:	00a12623          	sw	a0,12(sp)
800023a8:	00300513          	li	a0,3
800023ac:	00a12823          	sw	a0,16(sp)
800023b0:	00012e23          	sw	zero,28(sp)
800023b4:	02410613          	addi	a2,sp,36
800023b8:	0145a503          	lw	a0,20(a1)
800023bc:	0185a583          	lw	a1,24(a1)
800023c0:	00c12a23          	sw	a2,20(sp)
800023c4:	00200613          	li	a2,2
800023c8:	00c12c23          	sw	a2,24(sp)
800023cc:	00c10613          	addi	a2,sp,12
800023d0:	fffff097          	auipc	ra,0xfffff
800023d4:	b70080e7          	jalr	-1168(ra) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
800023d8:	03c12083          	lw	ra,60(sp)
800023dc:	04010113          	addi	sp,sp,64
800023e0:	00008067          	ret

800023e4 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E>:
800023e4:	fb010113          	addi	sp,sp,-80
800023e8:	04112623          	sw	ra,76(sp)
800023ec:	04812423          	sw	s0,72(sp)
800023f0:	04912223          	sw	s1,68(sp)
800023f4:	05212023          	sw	s2,64(sp)
800023f8:	03312e23          	sw	s3,60(sp)
800023fc:	03412c23          	sw	s4,56(sp)
80002400:	0185a483          	lw	s1,24(a1)
80002404:	0145a403          	lw	s0,20(a1)
80002408:	00c4aa03          	lw	s4,12(s1)
8000240c:	00050993          	mv	s3,a0
80002410:	800035b7          	lui	a1,0x80003
80002414:	5f458593          	addi	a1,a1,1524 # 800035f4 <.Lanon.6108cff51755a61e81d016b748f24991.14>
80002418:	00c00613          	li	a2,12
8000241c:	00040513          	mv	a0,s0
80002420:	000a00e7          	jalr	s4
80002424:	00100913          	li	s2,1
80002428:	10051663          	bnez	a0,80002534 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x150>
8000242c:	0049a503          	lw	a0,4(s3)
80002430:	00850593          	addi	a1,a0,8
80002434:	00c50613          	addi	a2,a0,12
80002438:	02a12023          	sw	a0,32(sp)
8000243c:	80002537          	lui	a0,0x80002
80002440:	9fc50513          	addi	a0,a0,-1540 # 800019fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3a6aea2e8625fc31E>
80002444:	02a12223          	sw	a0,36(sp)
80002448:	02b12423          	sw	a1,40(sp)
8000244c:	80002537          	lui	a0,0x80002
80002450:	72050513          	addi	a0,a0,1824 # 80002720 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he2712ed01a639beaE>
80002454:	02a12623          	sw	a0,44(sp)
80002458:	02c12823          	sw	a2,48(sp)
8000245c:	02a12a23          	sw	a0,52(sp)
80002460:	80003537          	lui	a0,0x80003
80002464:	5dc50513          	addi	a0,a0,1500 # 800035dc <.Lanon.6108cff51755a61e81d016b748f24991.13>
80002468:	00a12423          	sw	a0,8(sp)
8000246c:	00300513          	li	a0,3
80002470:	00a12623          	sw	a0,12(sp)
80002474:	00012c23          	sw	zero,24(sp)
80002478:	02010593          	addi	a1,sp,32
8000247c:	00b12823          	sw	a1,16(sp)
80002480:	00a12a23          	sw	a0,20(sp)
80002484:	00810613          	addi	a2,sp,8
80002488:	00040513          	mv	a0,s0
8000248c:	00048593          	mv	a1,s1
80002490:	fffff097          	auipc	ra,0xfffff
80002494:	ab0080e7          	jalr	-1360(ra) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
80002498:	08051e63          	bnez	a0,80002534 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x150>
8000249c:	800035b7          	lui	a1,0x80003
800024a0:	60058593          	addi	a1,a1,1536 # 80003600 <.Lanon.6108cff51755a61e81d016b748f24991.15>
800024a4:	00200613          	li	a2,2
800024a8:	00040513          	mv	a0,s0
800024ac:	000a00e7          	jalr	s4
800024b0:	08051263          	bnez	a0,80002534 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x150>
800024b4:	0009a683          	lw	a3,0(s3)
800024b8:	0006a503          	lw	a0,0(a3)
800024bc:	02a12023          	sw	a0,32(sp)
800024c0:	0046a603          	lw	a2,4(a3)
800024c4:	02c12223          	sw	a2,36(sp)
800024c8:	0086a583          	lw	a1,8(a3)
800024cc:	02b12423          	sw	a1,40(sp)
800024d0:	00c6a583          	lw	a1,12(a3)
800024d4:	02b12623          	sw	a1,44(sp)
800024d8:	0106a703          	lw	a4,16(a3)
800024dc:	02e12823          	sw	a4,48(sp)
800024e0:	0146a683          	lw	a3,20(a3)
800024e4:	00100713          	li	a4,1
800024e8:	02d12a23          	sw	a3,52(sp)
800024ec:	00e60c63          	beq	a2,a4,80002504 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x120>
800024f0:	00061c63          	bnez	a2,80002508 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x124>
800024f4:	00059a63          	bnez	a1,80002508 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x124>
800024f8:	00000613          	li	a2,0
800024fc:	00100593          	li	a1,1
80002500:	0280006f          	j	80002528 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x144>
80002504:	00058e63          	beqz	a1,80002520 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x13c>
80002508:	02010613          	addi	a2,sp,32
8000250c:	00040513          	mv	a0,s0
80002510:	00048593          	mv	a1,s1
80002514:	fffff097          	auipc	ra,0xfffff
80002518:	a2c080e7          	jalr	-1492(ra) # 80000f40 <_ZN4core3fmt5write17hb29fb8d91d9f85bdE>
8000251c:	0140006f          	j	80002530 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h94ca5b97007c1ab7E+0x14c>
80002520:	00052583          	lw	a1,0(a0)
80002524:	00452603          	lw	a2,4(a0)
80002528:	00040513          	mv	a0,s0
8000252c:	000a00e7          	jalr	s4
80002530:	00050913          	mv	s2,a0
80002534:	00090513          	mv	a0,s2
80002538:	04c12083          	lw	ra,76(sp)
8000253c:	04812403          	lw	s0,72(sp)
80002540:	04412483          	lw	s1,68(sp)
80002544:	04012903          	lw	s2,64(sp)
80002548:	03c12983          	lw	s3,60(sp)
8000254c:	03812a03          	lw	s4,56(sp)
80002550:	05010113          	addi	sp,sp,80
80002554:	00008067          	ret

80002558 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E>:
80002558:	f7010113          	addi	sp,sp,-144
8000255c:	08112623          	sw	ra,140(sp)
80002560:	00058813          	mv	a6,a1
80002564:	01c5a583          	lw	a1,28(a1)
80002568:	00052503          	lw	a0,0(a0)
8000256c:	0105f613          	andi	a2,a1,16
80002570:	02061263          	bnez	a2,80002594 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x3c>
80002574:	0205f593          	andi	a1,a1,32
80002578:	04059a63          	bnez	a1,800025cc <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x74>
8000257c:	00100593          	li	a1,1
80002580:	00080613          	mv	a2,a6
80002584:	08c12083          	lw	ra,140(sp)
80002588:	09010113          	addi	sp,sp,144
8000258c:	00000317          	auipc	t1,0x0
80002590:	1a830067          	jr	424(t1) # 80002734 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375>
80002594:	00000793          	li	a5,0
80002598:	08b10593          	addi	a1,sp,139
8000259c:	00a00613          	li	a2,10
800025a0:	01c0006f          	j	800025bc <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x64>
800025a4:	05768693          	addi	a3,a3,87
800025a8:	00455513          	srli	a0,a0,0x4
800025ac:	00d58023          	sb	a3,0(a1)
800025b0:	00178793          	addi	a5,a5,1
800025b4:	fff58593          	addi	a1,a1,-1
800025b8:	04050663          	beqz	a0,80002604 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0xac>
800025bc:	00f57693          	andi	a3,a0,15
800025c0:	fec6f2e3          	bgeu	a3,a2,800025a4 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x4c>
800025c4:	03068693          	addi	a3,a3,48
800025c8:	fe1ff06f          	j	800025a8 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x50>
800025cc:	00000793          	li	a5,0
800025d0:	08b10593          	addi	a1,sp,139
800025d4:	00a00613          	li	a2,10
800025d8:	01c0006f          	j	800025f4 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x9c>
800025dc:	03768693          	addi	a3,a3,55
800025e0:	00455513          	srli	a0,a0,0x4
800025e4:	00d58023          	sb	a3,0(a1)
800025e8:	00178793          	addi	a5,a5,1
800025ec:	fff58593          	addi	a1,a1,-1
800025f0:	00050a63          	beqz	a0,80002604 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0xac>
800025f4:	00f57693          	andi	a3,a0,15
800025f8:	fec6f2e3          	bgeu	a3,a2,800025dc <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x84>
800025fc:	03068693          	addi	a3,a3,48
80002600:	fe1ff06f          	j	800025e0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6304346dbd81ec7E+0x88>
80002604:	00c10513          	addi	a0,sp,12
80002608:	40f50533          	sub	a0,a0,a5
8000260c:	08050713          	addi	a4,a0,128
80002610:	80003637          	lui	a2,0x80003
80002614:	44c60613          	addi	a2,a2,1100 # 8000344c <anon.9c422e7ace4d9ba208f804b3b74eda03.3.llvm.12450569977146373324>
80002618:	00100593          	li	a1,1
8000261c:	00200693          	li	a3,2
80002620:	00080513          	mv	a0,a6
80002624:	fffff097          	auipc	ra,0xfffff
80002628:	b6c080e7          	jalr	-1172(ra) # 80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>
8000262c:	08c12083          	lw	ra,140(sp)
80002630:	09010113          	addi	sp,sp,144
80002634:	00008067          	ret

80002638 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE>:
80002638:	f7010113          	addi	sp,sp,-144
8000263c:	08112623          	sw	ra,140(sp)
80002640:	00058813          	mv	a6,a1
80002644:	01c5a583          	lw	a1,28(a1)
80002648:	0105f613          	andi	a2,a1,16
8000264c:	02061463          	bnez	a2,80002674 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x3c>
80002650:	0205f593          	andi	a1,a1,32
80002654:	04059e63          	bnez	a1,800026b0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x78>
80002658:	00052503          	lw	a0,0(a0)
8000265c:	00100593          	li	a1,1
80002660:	00080613          	mv	a2,a6
80002664:	08c12083          	lw	ra,140(sp)
80002668:	09010113          	addi	sp,sp,144
8000266c:	00000317          	auipc	t1,0x0
80002670:	0c830067          	jr	200(t1) # 80002734 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375>
80002674:	00052503          	lw	a0,0(a0)
80002678:	00000793          	li	a5,0
8000267c:	08b10593          	addi	a1,sp,139
80002680:	00a00613          	li	a2,10
80002684:	01c0006f          	j	800026a0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x68>
80002688:	05768693          	addi	a3,a3,87
8000268c:	00455513          	srli	a0,a0,0x4
80002690:	00d58023          	sb	a3,0(a1)
80002694:	00178793          	addi	a5,a5,1
80002698:	fff58593          	addi	a1,a1,-1
8000269c:	04050863          	beqz	a0,800026ec <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0xb4>
800026a0:	00f57693          	andi	a3,a0,15
800026a4:	fec6f2e3          	bgeu	a3,a2,80002688 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x50>
800026a8:	03068693          	addi	a3,a3,48
800026ac:	fe1ff06f          	j	8000268c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x54>
800026b0:	00052503          	lw	a0,0(a0)
800026b4:	00000793          	li	a5,0
800026b8:	08b10593          	addi	a1,sp,139
800026bc:	00a00613          	li	a2,10
800026c0:	01c0006f          	j	800026dc <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0xa4>
800026c4:	03768693          	addi	a3,a3,55
800026c8:	00455513          	srli	a0,a0,0x4
800026cc:	00d58023          	sb	a3,0(a1)
800026d0:	00178793          	addi	a5,a5,1
800026d4:	fff58593          	addi	a1,a1,-1
800026d8:	00050a63          	beqz	a0,800026ec <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0xb4>
800026dc:	00f57693          	andi	a3,a0,15
800026e0:	fec6f2e3          	bgeu	a3,a2,800026c4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x8c>
800026e4:	03068693          	addi	a3,a3,48
800026e8:	fe1ff06f          	j	800026c8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h3ecbef066a215a6eE+0x90>
800026ec:	00c10513          	addi	a0,sp,12
800026f0:	40f50533          	sub	a0,a0,a5
800026f4:	08050713          	addi	a4,a0,128
800026f8:	80003637          	lui	a2,0x80003
800026fc:	44c60613          	addi	a2,a2,1100 # 8000344c <anon.9c422e7ace4d9ba208f804b3b74eda03.3.llvm.12450569977146373324>
80002700:	00100593          	li	a1,1
80002704:	00200693          	li	a3,2
80002708:	00080513          	mv	a0,a6
8000270c:	fffff097          	auipc	ra,0xfffff
80002710:	a84080e7          	jalr	-1404(ra) # 80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>
80002714:	08c12083          	lw	ra,140(sp)
80002718:	09010113          	addi	sp,sp,144
8000271c:	00008067          	ret

80002720 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he2712ed01a639beaE>:
80002720:	00052503          	lw	a0,0(a0)
80002724:	00058613          	mv	a2,a1
80002728:	00100593          	li	a1,1
8000272c:	00000317          	auipc	t1,0x0
80002730:	00830067          	jr	8(t1) # 80002734 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375>

80002734 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375>:
80002734:	ff010113          	addi	sp,sp,-16
80002738:	00112623          	sw	ra,12(sp)
8000273c:	00060693          	mv	a3,a2
80002740:	00455793          	srli	a5,a0,0x4
80002744:	00a00613          	li	a2,10
80002748:	27100813          	li	a6,625
8000274c:	80003737          	lui	a4,0x80003
80002750:	44e70713          	addi	a4,a4,1102 # 8000344e <anon.9c422e7ace4d9ba208f804b3b74eda03.5.llvm.12450569977146373324>
80002754:	0b07e063          	bltu	a5,a6,800027f4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375+0xc0>
80002758:	00a00613          	li	a2,10
8000275c:	00a10793          	addi	a5,sp,10
80002760:	d1b71837          	lui	a6,0xd1b71
80002764:	75980813          	addi	a6,a6,1881 # d1b71759 <KALLOC_BUFFER+0x51b65759>
80002768:	000028b7          	lui	a7,0x2
8000276c:	71088893          	addi	a7,a7,1808 # 2710 <_start-0x7fffd8f0>
80002770:	000012b7          	lui	t0,0x1
80002774:	47b28293          	addi	t0,t0,1147 # 147b <_start-0x7fffeb85>
80002778:	06400313          	li	t1,100
8000277c:	05f5e3b7          	lui	t2,0x5f5e
80002780:	0ff38393          	addi	t2,t2,255 # 5f5e0ff <_start-0x7a0a1f01>
80002784:	00050e13          	mv	t3,a0
80002788:	03053533          	mulhu	a0,a0,a6
8000278c:	00d55513          	srli	a0,a0,0xd
80002790:	03150eb3          	mul	t4,a0,a7
80002794:	41de0eb3          	sub	t4,t3,t4
80002798:	010e9f13          	slli	t5,t4,0x10
8000279c:	012f5f13          	srli	t5,t5,0x12
800027a0:	025f0f33          	mul	t5,t5,t0
800027a4:	011f5f93          	srli	t6,t5,0x11
800027a8:	010f5f13          	srli	t5,t5,0x10
800027ac:	7fef7f13          	andi	t5,t5,2046
800027b0:	026f8fb3          	mul	t6,t6,t1
800027b4:	41fe8eb3          	sub	t4,t4,t6
800027b8:	01e70f33          	add	t5,a4,t5
800027bc:	001f4f83          	lbu	t6,1(t5)
800027c0:	011e9e93          	slli	t4,t4,0x11
800027c4:	010ede93          	srli	t4,t4,0x10
800027c8:	000f4f03          	lbu	t5,0(t5)
800027cc:	fff78fa3          	sb	t6,-1(a5)
800027d0:	01d70eb3          	add	t4,a4,t4
800027d4:	001ecf83          	lbu	t6,1(t4)
800027d8:	000ece83          	lbu	t4,0(t4)
800027dc:	ffc60613          	addi	a2,a2,-4
800027e0:	ffe78f23          	sb	t5,-2(a5)
800027e4:	01f780a3          	sb	t6,1(a5)
800027e8:	01d78023          	sb	t4,0(a5)
800027ec:	ffc78793          	addi	a5,a5,-4
800027f0:	f9c3eae3          	bltu	t2,t3,80002784 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375+0x50>
800027f4:	06300793          	li	a5,99
800027f8:	04a7fa63          	bgeu	a5,a0,8000284c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375+0x118>
800027fc:	01051793          	slli	a5,a0,0x10
80002800:	0127d793          	srli	a5,a5,0x12
80002804:	00001837          	lui	a6,0x1
80002808:	47b80813          	addi	a6,a6,1147 # 147b <_start-0x7fffeb85>
8000280c:	030787b3          	mul	a5,a5,a6
80002810:	0117d793          	srli	a5,a5,0x11
80002814:	06400813          	li	a6,100
80002818:	03078833          	mul	a6,a5,a6
8000281c:	41050533          	sub	a0,a0,a6
80002820:	01151513          	slli	a0,a0,0x11
80002824:	01055513          	srli	a0,a0,0x10
80002828:	ffe60613          	addi	a2,a2,-2
8000282c:	00a70533          	add	a0,a4,a0
80002830:	00154803          	lbu	a6,1(a0)
80002834:	00054503          	lbu	a0,0(a0)
80002838:	00210893          	addi	a7,sp,2
8000283c:	00c888b3          	add	a7,a7,a2
80002840:	010880a3          	sb	a6,1(a7)
80002844:	00a88023          	sb	a0,0(a7)
80002848:	00078513          	mv	a0,a5
8000284c:	00a00793          	li	a5,10
80002850:	00f57e63          	bgeu	a0,a5,8000286c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375+0x138>
80002854:	fff60613          	addi	a2,a2,-1
80002858:	00210713          	addi	a4,sp,2
8000285c:	00c70733          	add	a4,a4,a2
80002860:	03056513          	ori	a0,a0,48
80002864:	00a70023          	sb	a0,0(a4)
80002868:	0280006f          	j	80002890 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h316456f754d12df1E.llvm.5600506410643829375+0x15c>
8000286c:	00151513          	slli	a0,a0,0x1
80002870:	ffe60613          	addi	a2,a2,-2
80002874:	00a70533          	add	a0,a4,a0
80002878:	00154703          	lbu	a4,1(a0)
8000287c:	00054503          	lbu	a0,0(a0)
80002880:	00210793          	addi	a5,sp,2
80002884:	00c787b3          	add	a5,a5,a2
80002888:	00e780a3          	sb	a4,1(a5)
8000288c:	00a78023          	sb	a0,0(a5)
80002890:	00210713          	addi	a4,sp,2
80002894:	00c70733          	add	a4,a4,a2
80002898:	00a00793          	li	a5,10
8000289c:	40c787b3          	sub	a5,a5,a2
800028a0:	00100613          	li	a2,1
800028a4:	00068513          	mv	a0,a3
800028a8:	00000693          	li	a3,0
800028ac:	fffff097          	auipc	ra,0xfffff
800028b0:	8e4080e7          	jalr	-1820(ra) # 80001190 <_ZN4core3fmt9Formatter12pad_integral17h9a8064f3b1c46978E>
800028b4:	00c12083          	lw	ra,12(sp)
800028b8:	01010113          	addi	sp,sp,16
800028bc:	00008067          	ret

800028c0 <memcpy>:
800028c0:	01000693          	li	a3,16
800028c4:	08d66063          	bltu	a2,a3,80002944 <memcpy+0x84>
800028c8:	40a006b3          	neg	a3,a0
800028cc:	0036f693          	andi	a3,a3,3
800028d0:	00d50733          	add	a4,a0,a3
800028d4:	02e57463          	bgeu	a0,a4,800028fc <memcpy+0x3c>
800028d8:	00068793          	mv	a5,a3
800028dc:	00050813          	mv	a6,a0
800028e0:	00058893          	mv	a7,a1
800028e4:	0008c283          	lbu	t0,0(a7)
800028e8:	00580023          	sb	t0,0(a6)
800028ec:	00180813          	addi	a6,a6,1
800028f0:	fff78793          	addi	a5,a5,-1
800028f4:	00188893          	addi	a7,a7,1
800028f8:	fe0796e3          	bnez	a5,800028e4 <memcpy+0x24>
800028fc:	00d585b3          	add	a1,a1,a3
80002900:	40d60633          	sub	a2,a2,a3
80002904:	ffc67793          	andi	a5,a2,-4
80002908:	0035f813          	andi	a6,a1,3
8000290c:	00f706b3          	add	a3,a4,a5
80002910:	04081e63          	bnez	a6,8000296c <memcpy+0xac>
80002914:	00d77e63          	bgeu	a4,a3,80002930 <memcpy+0x70>
80002918:	00058813          	mv	a6,a1
8000291c:	00082883          	lw	a7,0(a6)
80002920:	01172023          	sw	a7,0(a4)
80002924:	00470713          	addi	a4,a4,4
80002928:	00480813          	addi	a6,a6,4
8000292c:	fed768e3          	bltu	a4,a3,8000291c <memcpy+0x5c>
80002930:	00f585b3          	add	a1,a1,a5
80002934:	00367613          	andi	a2,a2,3
80002938:	00c68733          	add	a4,a3,a2
8000293c:	00e6ea63          	bltu	a3,a4,80002950 <memcpy+0x90>
80002940:	0280006f          	j	80002968 <memcpy+0xa8>
80002944:	00050693          	mv	a3,a0
80002948:	00c50733          	add	a4,a0,a2
8000294c:	00e57e63          	bgeu	a0,a4,80002968 <memcpy+0xa8>
80002950:	0005c703          	lbu	a4,0(a1)
80002954:	00e68023          	sb	a4,0(a3)
80002958:	00168693          	addi	a3,a3,1
8000295c:	fff60613          	addi	a2,a2,-1
80002960:	00158593          	addi	a1,a1,1
80002964:	fe0616e3          	bnez	a2,80002950 <memcpy+0x90>
80002968:	00008067          	ret
8000296c:	fcd772e3          	bgeu	a4,a3,80002930 <memcpy+0x70>
80002970:	00359893          	slli	a7,a1,0x3
80002974:	0188f813          	andi	a6,a7,24
80002978:	ffc5f293          	andi	t0,a1,-4
8000297c:	0002a303          	lw	t1,0(t0)
80002980:	411008b3          	neg	a7,a7
80002984:	0188f893          	andi	a7,a7,24
80002988:	00428293          	addi	t0,t0,4
8000298c:	0002a383          	lw	t2,0(t0)
80002990:	01035333          	srl	t1,t1,a6
80002994:	01139e33          	sll	t3,t2,a7
80002998:	006e6333          	or	t1,t3,t1
8000299c:	00672023          	sw	t1,0(a4)
800029a0:	00470713          	addi	a4,a4,4
800029a4:	00428293          	addi	t0,t0,4
800029a8:	00038313          	mv	t1,t2
800029ac:	fed760e3          	bltu	a4,a3,8000298c <memcpy+0xcc>
800029b0:	f81ff06f          	j	80002930 <memcpy+0x70>
	...

Disassembly of section .rodata:

80003000 <.Lanon.c11cc9eb1ad76507c390592964f42423.0>:
80003000:	7245                	.insn	2, 0x7245
80003002:	6f72                	.insn	2, 0x6f72
80003004:	0072                	.insn	2, 0x0072
	...

80003008 <.Lanon.c11cc9eb1ad76507c390592964f42423.1>:
80003008:	0000                	.insn	2, 0x0000
8000300a:	0000                	.insn	2, 0x0000
8000300c:	0004                	.insn	2, 0x0004
8000300e:	0000                	.insn	2, 0x0000
80003010:	0004                	.insn	2, 0x0004
80003012:	0000                	.insn	2, 0x0000
80003014:	0048                	.insn	2, 0x0048
80003016:	8000                	.insn	2, 0x8000

80003018 <.Lanon.c11cc9eb1ad76507c390592964f42423.2>:
80003018:	0000                	.insn	2, 0x0000
8000301a:	0000                	.insn	2, 0x0000
8000301c:	0004                	.insn	2, 0x0004
8000301e:	0000                	.insn	2, 0x0000
80003020:	0004                	.insn	2, 0x0004
80003022:	0000                	.insn	2, 0x0000
80003024:	0030                	.insn	2, 0x0030
80003026:	8000                	.insn	2, 0x8000

80003028 <.Lanon.c11cc9eb1ad76507c390592964f42423.3>:
80003028:	614c                	.insn	2, 0x614c
8000302a:	6f79                	.insn	2, 0x6f79
8000302c:	7475                	.insn	2, 0x7475
8000302e:	2020                	.insn	2, 0x2020
80003030:	2020                	.insn	2, 0x2020
80003032:	657a6973          	.insn	4, 0x657a6973

80003036 <.Lanon.c11cc9eb1ad76507c390592964f42423.5>:
80003036:	6c61                	.insn	2, 0x6c61
80003038:	6769                	.insn	2, 0x6769
8000303a:	006e                	.insn	2, 0x006e

8000303c <.Lanon.c11cc9eb1ad76507c390592964f42423.6>:
	...
80003044:	0001                	.insn	2, 0x0001
80003046:	0000                	.insn	2, 0x0000
80003048:	041c                	.insn	2, 0x041c
8000304a:	8000                	.insn	2, 0x8000
8000304c:	0074                	.insn	2, 0x0074
8000304e:	8000                	.insn	2, 0x8000
80003050:	0154                	.insn	2, 0x0154
80003052:	8000                	.insn	2, 0x8000

80003054 <.Lanon.c11cc9eb1ad76507c390592964f42423.7>:
	...
8000305c:	0001                	.insn	2, 0x0001
8000305e:	0000                	.insn	2, 0x0000
80003060:	01b8                	.insn	2, 0x01b8
80003062:	8000                	.insn	2, 0x8000

80003064 <.Lanon.c11cc9eb1ad76507c390592964f42423.8>:
80003064:	6c6c6163          	bltu	s8,t1,80003726 <__rust_no_alloc_shim_is_unstable+0xe5>
80003068:	6465                	.insn	2, 0x6465
8000306a:	6020                	.insn	2, 0x6020
8000306c:	6552                	.insn	2, 0x6552
8000306e:	746c7573          	.insn	4, 0x746c7573
80003072:	3a3a                	.insn	2, 0x3a3a
80003074:	6e75                	.insn	2, 0x6e75
80003076:	70617277          	.insn	4, 0x70617277
8000307a:	2928                	.insn	2, 0x2928
8000307c:	2060                	.insn	2, 0x2060
8000307e:	61206e6f          	jal	t3,80009690 <stack_top+0x2040>
80003082:	206e                	.insn	2, 0x206e
80003084:	4560                	.insn	2, 0x4560
80003086:	7272                	.insn	2, 0x7272
80003088:	2060                	.insn	2, 0x2060
8000308a:	6176                	.insn	2, 0x6176
8000308c:	756c                	.insn	2, 0x756c
8000308e:	                	.insn	2, 0x7365

8000308f <.Lanon.c11cc9eb1ad76507c390592964f42423.9>:
8000308f:	2f637273          	.insn	4, 0x2f637273
80003093:	7270                	.insn	2, 0x7270
80003095:	6e69                	.insn	2, 0x6e69
80003097:	6574                	.insn	2, 0x6574
80003099:	2e72                	.insn	2, 0x2e72
8000309b:	7372                	.insn	2, 0x7372
8000309d:	0000                	.insn	2, 0x0000
	...

800030a0 <.Lanon.c11cc9eb1ad76507c390592964f42423.10>:
800030a0:	8000308f          	.insn	4, 0x8000308f
800030a4:	000e                	.insn	2, 0x000e
800030a6:	0000                	.insn	2, 0x0000
800030a8:	001c                	.insn	2, 0x001c
800030aa:	0000                	.insn	2, 0x0000
800030ac:	001c                	.insn	2, 0x001c
	...

800030b0 <.Lanon.c11cc9eb1ad76507c390592964f42423.11>:
800030b0:	6c6c616b          	.insn	4, 0x6c6c616b
800030b4:	6220636f          	jal	t1,800096d6 <stack_top+0x2086>
800030b8:	6675                	.insn	2, 0x6675
800030ba:	6566                	.insn	2, 0x6566
800030bc:	2072                	.insn	2, 0x2072
800030be:	6162                	.insn	2, 0x6162
800030c0:	203a6573          	.insn	4, 0x203a6573

800030c4 <.Lanon.c11cc9eb1ad76507c390592964f42423.12>:
800030c4:	000a                	.insn	2, 0x000a
	...

800030c8 <.Lanon.c11cc9eb1ad76507c390592964f42423.13>:
800030c8:	30b0                	.insn	2, 0x30b0
800030ca:	8000                	.insn	2, 0x8000
800030cc:	0014                	.insn	2, 0x0014
800030ce:	0000                	.insn	2, 0x0000
800030d0:	30c4                	.insn	2, 0x30c4
800030d2:	8000                	.insn	2, 0x8000
800030d4:	0001                	.insn	2, 0x0001
	...

800030d8 <.Lanon.c11cc9eb1ad76507c390592964f42423.14>:
800030d8:	31335b1b          	.insn	4, 0x31335b1b
800030dc:	4b6d                	.insn	2, 0x4b6d
800030de:	5245                	.insn	2, 0x5245
800030e0:	454e                	.insn	2, 0x454e
800030e2:	204c                	.insn	2, 0x204c
800030e4:	4150                	.insn	2, 0x4150
800030e6:	494e                	.insn	2, 0x494e
800030e8:	5b1b3a43          	.insn	4, 0x5b1b3a43
800030ec:	6d30                	.insn	2, 0x6d30
800030ee:	0020                	.insn	2, 0x0020

800030f0 <.Lanon.c11cc9eb1ad76507c390592964f42423.15>:
800030f0:	30d8                	.insn	2, 0x30d8
800030f2:	8000                	.insn	2, 0x8000
800030f4:	00000017          	auipc	zero,0x0
800030f8:	30c4                	.insn	2, 0x30c4
800030fa:	8000                	.insn	2, 0x8000
800030fc:	0001                	.insn	2, 0x0001
	...

80003100 <.Lanon.c11cc9eb1ad76507c390592964f42423.16>:
80003100:	2f637273          	.insn	4, 0x2f637273
80003104:	616d                	.insn	2, 0x616d
80003106:	6e69                	.insn	2, 0x6e69
80003108:	722e                	.insn	2, 0x722e
8000310a:	          	.insn	4, 0x31000073

8000310c <.Lanon.c11cc9eb1ad76507c390592964f42423.17>:
8000310c:	3100                	.insn	2, 0x3100
8000310e:	8000                	.insn	2, 0x8000
80003110:	0000000b          	.insn	4, 0x000b
80003114:	0000002b          	.insn	4, 0x002b
80003118:	00000013          	nop

8000311c <.Lanon.c11cc9eb1ad76507c390592964f42423.18>:
8000311c:	3100                	.insn	2, 0x3100
8000311e:	8000                	.insn	2, 0x8000
80003120:	0000000b          	.insn	4, 0x000b
80003124:	002d                	.insn	2, 0x002d
80003126:	0000                	.insn	2, 0x0000
80003128:	002d                	.insn	2, 0x002d
	...

8000312c <.Lanon.c11cc9eb1ad76507c390592964f42423.19>:
8000312c:	6576                	.insn	2, 0x6576
8000312e:	726f7463          	bgeu	t5,t1,80003856 <__rust_no_alloc_shim_is_unstable+0x215>
80003132:	205d305b          	.insn	4, 0x205d305b
80003136:	203d                	.insn	2, 0x203d

80003138 <.Lanon.c11cc9eb1ad76507c390592964f42423.20>:
80003138:	312c                	.insn	2, 0x312c
8000313a:	8000                	.insn	2, 0x8000
8000313c:	000c                	.insn	2, 0x000c
8000313e:	0000                	.insn	2, 0x0000
80003140:	30c4                	.insn	2, 0x30c4
80003142:	8000                	.insn	2, 0x8000
80003144:	0001                	.insn	2, 0x0001
	...

80003148 <.Lanon.c11cc9eb1ad76507c390592964f42423.21>:
80003148:	6c6c616b          	.insn	4, 0x6c6c616b
8000314c:	6620636f          	jal	t1,800097ae <stack_top+0x215e>
80003150:	6961                	.insn	2, 0x6961
80003152:	3a6c                	.insn	2, 0x3a6c
80003154:	0020                	.insn	2, 0x0020
	...

80003158 <.Lanon.c11cc9eb1ad76507c390592964f42423.22>:
80003158:	3148                	.insn	2, 0x3148
8000315a:	8000                	.insn	2, 0x8000
8000315c:	000d                	.insn	2, 0x000d
	...

80003160 <.Lanon.c11cc9eb1ad76507c390592964f42423.23>:
80003160:	2f637273          	.insn	4, 0x2f637273
80003164:	6c6c616b          	.insn	4, 0x6c6c616b
80003168:	722e636f          	jal	t1,800e988a <KALLOC_BUFFER+0xdd88a>
8000316c:	00000073          	ecall

80003170 <.Lanon.c11cc9eb1ad76507c390592964f42423.24>:
80003170:	3160                	.insn	2, 0x3160
80003172:	8000                	.insn	2, 0x8000
80003174:	000d                	.insn	2, 0x000d
80003176:	0000                	.insn	2, 0x0000
80003178:	001a                	.insn	2, 0x001a
8000317a:	0000                	.insn	2, 0x0000
8000317c:	0005                	.insn	2, 0x0005
	...

80003180 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.0>:
80003180:	614c                	.insn	2, 0x614c
80003182:	6f79                	.insn	2, 0x6f79
80003184:	7475                	.insn	2, 0x7475
80003186:	7245                	.insn	2, 0x7245
80003188:	6f72                	.insn	2, 0x6f72
8000318a:	                	.insn	2, 0x6172

8000318b <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.1>:
8000318b:	7361                	.insn	2, 0x7361
8000318d:	74726573          	.insn	4, 0x74726573
80003191:	6f69                	.insn	2, 0x6f69
80003193:	206e                	.insn	2, 0x206e
80003195:	6166                	.insn	2, 0x6166
80003197:	6c69                	.insn	2, 0x6c69
80003199:	6465                	.insn	2, 0x6465
8000319b:	203a                	.insn	2, 0x203a
8000319d:	6f68                	.insn	2, 0x6f68
8000319f:	656c                	.insn	2, 0x656c
800031a1:	735f 7a69 2065      	.insn	6, 0x20657a69735f
800031a7:	3d3e                	.insn	2, 0x3d3e
800031a9:	7320                	.insn	2, 0x7320
800031ab:	7a69                	.insn	2, 0x7a69
800031ad:	5f65                	.insn	2, 0x5f65
800031af:	3a3a666f          	jal	a2,800a9d51 <KALLOC_BUFFER+0x9dd51>
800031b3:	483c                	.insn	2, 0x483c
800031b5:	3e656c6f          	jal	s8,8005959b <KALLOC_BUFFER+0x4d59b>
800031b9:	2928                	.insn	2, 0x2928

800031bb <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.2>:
800031bb:	6d6f682f          	.insn	4, 0x6d6f682f
800031bf:	2f65                	.insn	2, 0x2f65
800031c1:	6572                	.insn	2, 0x6572
800031c3:	796d                	.insn	2, 0x796d
800031c5:	61632e2f          	amoand.w	t3,s6,(t1)
800031c9:	6772                	.insn	2, 0x6772
800031cb:	65722f6f          	jal	t5,80026021 <KALLOC_BUFFER+0x1a021>
800031cf:	74736967          	.insn	4, 0x74736967
800031d3:	7972                	.insn	2, 0x7972
800031d5:	6372732f          	.insn	4, 0x6372732f
800031d9:	646e692f          	.insn	4, 0x646e692f
800031dd:	7865                	.insn	2, 0x7865
800031df:	632e                	.insn	2, 0x632e
800031e1:	6172                	.insn	2, 0x6172
800031e3:	6574                	.insn	2, 0x6574
800031e5:	6f692e73          	.insn	4, 0x6f692e73
800031e9:	362d                	.insn	2, 0x362d
800031eb:	3166                	.insn	2, 0x3166
800031ed:	32326437          	lui	s0,0x32326
800031f1:	6262                	.insn	2, 0x6262
800031f3:	3161                	.insn	2, 0x3161
800031f5:	3035                	.insn	2, 0x3035
800031f7:	3130                	.insn	2, 0x3130
800031f9:	2f66                	.insn	2, 0x2f66
800031fb:	696c                	.insn	2, 0x696c
800031fd:	6b6e                	.insn	2, 0x6b6e
800031ff:	6465                	.insn	2, 0x6465
80003201:	6c5f 7369 5f74      	.insn	6, 0x5f7473696c5f
80003207:	6c61                	.insn	2, 0x6c61
80003209:	6f6c                	.insn	2, 0x6f6c
8000320b:	6f746163          	bltu	s0,s7,800038ed <__rust_no_alloc_shim_is_unstable+0x2ac>
8000320f:	2d72                	.insn	2, 0x2d72
80003211:	2e30                	.insn	2, 0x2e30
80003213:	3031                	.insn	2, 0x3031
80003215:	352e                	.insn	2, 0x352e
80003217:	6372732f          	.insn	4, 0x6372732f
8000321b:	6c6f682f          	.insn	4, 0x6c6f682f
8000321f:	2e65                	.insn	2, 0x2e65
80003221:	7372                	.insn	2, 0x7372
	...

80003224 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.3>:
80003224:	800031bb          	.insn	4, 0x800031bb
80003228:	0068                	.insn	2, 0x0068
8000322a:	0000                	.insn	2, 0x0000
8000322c:	0000014b          	.insn	4, 0x014b
80003230:	0009                	.insn	2, 0x0009
	...

80003234 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.4>:
80003234:	7361                	.insn	2, 0x7361
80003236:	74726573          	.insn	4, 0x74726573
8000323a:	6f69                	.insn	2, 0x6f69
8000323c:	206e                	.insn	2, 0x206e
8000323e:	6166                	.insn	2, 0x6166
80003240:	6c69                	.insn	2, 0x6c69
80003242:	6465                	.insn	2, 0x6465
80003244:	203a                	.insn	2, 0x203a
80003246:	6c61                	.insn	2, 0x6c61
80003248:	6769                	.insn	2, 0x6769
8000324a:	656e                	.insn	2, 0x656e
8000324c:	5f64                	.insn	2, 0x5f64
8000324e:	6f68                	.insn	2, 0x6f68
80003250:	656c                	.insn	2, 0x656c
80003252:	735f 7a69 2065      	.insn	6, 0x20657a69735f
80003258:	3d3e                	.insn	2, 0x3d3e
8000325a:	7320                	.insn	2, 0x7320
8000325c:	7a69                	.insn	2, 0x7a69
8000325e:	5f65                	.insn	2, 0x5f65
80003260:	3a3a666f          	jal	a2,800a9e02 <KALLOC_BUFFER+0x9de02>
80003264:	483c                	.insn	2, 0x483c
80003266:	3e656c6f          	jal	s8,8005964c <KALLOC_BUFFER+0x4d64c>
8000326a:	2928                	.insn	2, 0x2928

8000326c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.5>:
8000326c:	800031bb          	.insn	4, 0x800031bb
80003270:	0068                	.insn	2, 0x0068
80003272:	0000                	.insn	2, 0x0000
80003274:	0150                	.insn	2, 0x0150
80003276:	0000                	.insn	2, 0x0000
80003278:	0009                	.insn	2, 0x0009
	...

8000327c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.6>:
	...
80003284:	0001                	.insn	2, 0x0001
80003286:	0000                	.insn	2, 0x0000
80003288:	0754                	.insn	2, 0x0754
8000328a:	8000                	.insn	2, 0x8000

8000328c <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.7>:
8000328c:	6c6c6163          	bltu	s8,t1,8000394e <__rust_no_alloc_shim_is_unstable+0x30d>
80003290:	6465                	.insn	2, 0x6465
80003292:	6020                	.insn	2, 0x6020
80003294:	6552                	.insn	2, 0x6552
80003296:	746c7573          	.insn	4, 0x746c7573
8000329a:	3a3a                	.insn	2, 0x3a3a
8000329c:	6e75                	.insn	2, 0x6e75
8000329e:	70617277          	.insn	4, 0x70617277
800032a2:	2928                	.insn	2, 0x2928
800032a4:	2060                	.insn	2, 0x2060
800032a6:	61206e6f          	jal	t3,800098b8 <stack_top+0x2268>
800032aa:	206e                	.insn	2, 0x206e
800032ac:	4560                	.insn	2, 0x4560
800032ae:	7272                	.insn	2, 0x7272
800032b0:	2060                	.insn	2, 0x2060
800032b2:	6176                	.insn	2, 0x6176
800032b4:	756c                	.insn	2, 0x756c
800032b6:	0065                	.insn	2, 0x0065

800032b8 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.8>:
800032b8:	800031bb          	.insn	4, 0x800031bb
800032bc:	0068                	.insn	2, 0x0068
800032be:	0000                	.insn	2, 0x0000
800032c0:	0176                	.insn	2, 0x0176
800032c2:	0000                	.insn	2, 0x0000
800032c4:	00000037          	lui	zero,0x0

800032c8 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.12>:
800032c8:	6c61                	.insn	2, 0x6c61
800032ca:	6769                	.insn	2, 0x6769
800032cc:	5f6e                	.insn	2, 0x5f6e
800032ce:	7366666f          	jal	a2,80069a04 <KALLOC_BUFFER+0x5da04>
800032d2:	7465                	.insn	2, 0x7465
800032d4:	203a                	.insn	2, 0x203a
800032d6:	6c61                	.insn	2, 0x6c61
800032d8:	6769                	.insn	2, 0x6769
800032da:	206e                	.insn	2, 0x206e
800032dc:	7369                	.insn	2, 0x7369
800032de:	6e20                	.insn	2, 0x6e20
800032e0:	6120746f          	jal	s0,8000a8f2 <stack_top+0x32a2>
800032e4:	7020                	.insn	2, 0x7020
800032e6:	7265776f          	jal	a4,8005aa0c <KALLOC_BUFFER+0x4ea0c>
800032ea:	6f2d                	.insn	2, 0x6f2d
800032ec:	2d66                	.insn	2, 0x2d66
800032ee:	7774                	.insn	2, 0x7774
800032f0:	0000006f          	j	800032f0 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.12+0x28>

800032f4 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.13>:
800032f4:	32c8                	.insn	2, 0x32c8
800032f6:	8000                	.insn	2, 0x8000
800032f8:	0029                	.insn	2, 0x0029
	...

800032fc <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.14>:
800032fc:	6d6f682f          	.insn	4, 0x6d6f682f
80003300:	2f65                	.insn	2, 0x2f65
80003302:	6572                	.insn	2, 0x6572
80003304:	796d                	.insn	2, 0x796d
80003306:	75722e2f          	.insn	4, 0x75722e2f
8000330a:	70757473          	.insn	4, 0x70757473
8000330e:	6f6f742f          	.insn	4, 0x6f6f742f
80003312:	636c                	.insn	2, 0x636c
80003314:	6168                	.insn	2, 0x6168
80003316:	6e69                	.insn	2, 0x6e69
80003318:	696e2f73          	.insn	4, 0x696e2f73
8000331c:	6c746867          	.insn	4, 0x6c746867
80003320:	2d79                	.insn	2, 0x2d79
80003322:	3878                	.insn	2, 0x3878
80003324:	5f36                	.insn	2, 0x5f36
80003326:	3436                	.insn	2, 0x3436
80003328:	752d                	.insn	2, 0x752d
8000332a:	6b6e                	.insn	2, 0x6b6e
8000332c:	6f6e                	.insn	2, 0x6f6e
8000332e:	6c2d6e77          	.insn	4, 0x6c2d6e77
80003332:	6e69                	.insn	2, 0x6e69
80003334:	7875                	.insn	2, 0x7875
80003336:	672d                	.insn	2, 0x672d
80003338:	756e                	.insn	2, 0x756e
8000333a:	62696c2f          	.insn	4, 0x62696c2f
8000333e:	7375722f          	.insn	4, 0x7375722f
80003342:	6c74                	.insn	2, 0x6c74
80003344:	6269                	.insn	2, 0x6269
80003346:	6372732f          	.insn	4, 0x6372732f
8000334a:	7375722f          	.insn	4, 0x7375722f
8000334e:	2f74                	.insn	2, 0x2f74
80003350:	696c                	.insn	2, 0x696c
80003352:	7262                	.insn	2, 0x7262
80003354:	7261                	.insn	2, 0x7261
80003356:	2f79                	.insn	2, 0x2f79
80003358:	65726f63          	bltu	tp,s7,800039b6 <__rust_no_alloc_shim_is_unstable+0x375>
8000335c:	6372732f          	.insn	4, 0x6372732f
80003360:	7274702f          	.insn	4, 0x7274702f
80003364:	74756d2f          	.insn	4, 0x74756d2f
80003368:	705f 7274 722e      	.insn	6, 0x722e7274705f
8000336e:	          	.insn	4, 0x32fc0073

80003370 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.15>:
80003370:	32fc                	.insn	2, 0x32fc
80003372:	8000                	.insn	2, 0x8000
80003374:	00000073          	ecall
80003378:	0666                	.insn	2, 0x0666
8000337a:	0000                	.insn	2, 0x0000
8000337c:	000d                	.insn	2, 0x000d
	...

80003380 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.16>:
80003380:	7246                	.insn	2, 0x7246
80003382:	6565                	.insn	2, 0x6565
80003384:	2064                	.insn	2, 0x2064
80003386:	6f6e                	.insn	2, 0x6f6e
80003388:	6564                	.insn	2, 0x6564
8000338a:	6120                	.insn	2, 0x6120
8000338c:	696c                	.insn	2, 0x696c
8000338e:	7361                	.insn	2, 0x7361
80003390:	7365                	.insn	2, 0x7365
80003392:	6520                	.insn	2, 0x6520
80003394:	6978                	.insn	2, 0x6978
80003396:	6e697473          	.insn	4, 0x6e697473
8000339a:	6f682067          	.insn	4, 0x6f682067
8000339e:	656c                	.insn	2, 0x656c
800033a0:	2021                	.insn	2, 0x2021
800033a2:	6142                	.insn	2, 0x6142
800033a4:	2064                	.insn	2, 0x2064
800033a6:	7266                	.insn	2, 0x7266
800033a8:	6565                	.insn	2, 0x6565
800033aa:	  	.insn	8, 0x0068800031bb003f

800033ac <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.17>:
800033ac:	800031bb          	.insn	4, 0x800031bb
800033b0:	0068                	.insn	2, 0x0068
800033b2:	0000                	.insn	2, 0x0000
800033b4:	01f5                	.insn	2, 0x01f5
800033b6:	0000                	.insn	2, 0x0000
800033b8:	000d                	.insn	2, 0x000d
	...

800033bc <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.18>:
800033bc:	800031bb          	.insn	4, 0x800031bb
800033c0:	0068                	.insn	2, 0x0068
800033c2:	0000                	.insn	2, 0x0000
800033c4:	00000217          	auipc	tp,0x0
800033c8:	0011                	.insn	2, 0x0011
	...

800033cc <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.19>:
800033cc:	7246                	.insn	2, 0x7246
800033ce:	6565                	.insn	2, 0x6565
800033d0:	2064                	.insn	2, 0x2064
800033d2:	6f6e                	.insn	2, 0x6f6e
800033d4:	6564                	.insn	2, 0x6564
800033d6:	2820                	.insn	2, 0x2820

800033d8 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.20>:
800033d8:	2029                	.insn	2, 0x2029
800033da:	6c61                	.insn	2, 0x6c61
800033dc:	6169                	.insn	2, 0x6169
800033de:	20736573          	.insn	4, 0x20736573
800033e2:	7865                	.insn	2, 0x7865
800033e4:	7369                	.insn	2, 0x7369
800033e6:	6974                	.insn	2, 0x6974
800033e8:	676e                	.insn	2, 0x676e
800033ea:	6820                	.insn	2, 0x6820
800033ec:	20656c6f          	jal	s8,800595f2 <KALLOC_BUFFER+0x4d5f2>
800033f0:	                	.insn	2, 0x5b28

800033f1 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.21>:
800033f1:	          	.insn	4, 0x21295d5b

800033f2 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.22>:
800033f2:	295d                	.insn	2, 0x295d
800033f4:	2021                	.insn	2, 0x2021
800033f6:	6142                	.insn	2, 0x6142
800033f8:	2064                	.insn	2, 0x2064
800033fa:	7266                	.insn	2, 0x7266
800033fc:	6565                	.insn	2, 0x6565
800033fe:	  	.insn	8, 0x000c800033cc003f

80003400 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.23>:
80003400:	33cc                	.insn	2, 0x33cc
80003402:	8000                	.insn	2, 0x8000
80003404:	000c                	.insn	2, 0x000c
80003406:	0000                	.insn	2, 0x0000
80003408:	33d8                	.insn	2, 0x33d8
8000340a:	8000                	.insn	2, 0x8000
8000340c:	0019                	.insn	2, 0x0019
8000340e:	0000                	.insn	2, 0x0000
80003410:	33f1                	.insn	2, 0x33f1
80003412:	8000                	.insn	2, 0x8000
80003414:	0001                	.insn	2, 0x0001
80003416:	0000                	.insn	2, 0x0000
80003418:	33f2                	.insn	2, 0x33f2
8000341a:	8000                	.insn	2, 0x8000
8000341c:	000d                	.insn	2, 0x000d
	...

80003420 <.Lanon.6bb9e4bc39a65ae464ffa4263a5411d5.24>:
80003420:	800031bb          	.insn	4, 0x800031bb
80003424:	0068                	.insn	2, 0x0068
80003426:	0000                	.insn	2, 0x0000
80003428:	022a                	.insn	2, 0x022a
8000342a:	0000                	.insn	2, 0x0000
8000342c:	0009                	.insn	2, 0x0009
	...

80003430 <.Lanon.c5ea41b0e650789dd5b2a474168920f2.0>:
80003430:	61706163          	bltu	zero,s7,80003a32 <__rust_no_alloc_shim_is_unstable+0x3f1>
80003434:	79746963          	bltu	s0,s7,80003bc6 <__rust_no_alloc_shim_is_unstable+0x585>
80003438:	6f20                	.insn	2, 0x6f20
8000343a:	6576                	.insn	2, 0x6576
8000343c:	6672                	.insn	2, 0x6672
8000343e:	6f6c                	.insn	2, 0x6f6c
80003440:	00000077          	.insn	4, 0x0077

80003444 <.Lanon.c5ea41b0e650789dd5b2a474168920f2.1>:
80003444:	3430                	.insn	2, 0x3430
80003446:	8000                	.insn	2, 0x8000
80003448:	0011                	.insn	2, 0x0011
	...

8000344c <anon.9c422e7ace4d9ba208f804b3b74eda03.3.llvm.12450569977146373324>:
8000344c:	7830                	.insn	2, 0x7830

8000344e <anon.9c422e7ace4d9ba208f804b3b74eda03.5.llvm.12450569977146373324>:
8000344e:	3030                	.insn	2, 0x3030
80003450:	3130                	.insn	2, 0x3130
80003452:	3230                	.insn	2, 0x3230
80003454:	3330                	.insn	2, 0x3330
80003456:	3430                	.insn	2, 0x3430
80003458:	3530                	.insn	2, 0x3530
8000345a:	3630                	.insn	2, 0x3630
8000345c:	3730                	.insn	2, 0x3730
8000345e:	3830                	.insn	2, 0x3830
80003460:	3930                	.insn	2, 0x3930
80003462:	3031                	.insn	2, 0x3031
80003464:	3131                	.insn	2, 0x3131
80003466:	3231                	.insn	2, 0x3231
80003468:	3331                	.insn	2, 0x3331
8000346a:	3431                	.insn	2, 0x3431
8000346c:	3531                	.insn	2, 0x3531
8000346e:	3631                	.insn	2, 0x3631
80003470:	3731                	.insn	2, 0x3731
80003472:	3831                	.insn	2, 0x3831
80003474:	3931                	.insn	2, 0x3931
80003476:	3032                	.insn	2, 0x3032
80003478:	3132                	.insn	2, 0x3132
8000347a:	3232                	.insn	2, 0x3232
8000347c:	3332                	.insn	2, 0x3332
8000347e:	3432                	.insn	2, 0x3432
80003480:	3532                	.insn	2, 0x3532
80003482:	3632                	.insn	2, 0x3632
80003484:	3732                	.insn	2, 0x3732
80003486:	3832                	.insn	2, 0x3832
80003488:	3932                	.insn	2, 0x3932
8000348a:	31333033          	.insn	4, 0x31333033
8000348e:	33333233          	.insn	4, 0x33333233
80003492:	35333433          	.insn	4, 0x35333433
80003496:	37333633          	.insn	4, 0x37333633
8000349a:	39333833          	.insn	4, 0x39333833
8000349e:	3034                	.insn	2, 0x3034
800034a0:	3134                	.insn	2, 0x3134
800034a2:	3234                	.insn	2, 0x3234
800034a4:	3334                	.insn	2, 0x3334
800034a6:	3434                	.insn	2, 0x3434
800034a8:	3534                	.insn	2, 0x3534
800034aa:	3634                	.insn	2, 0x3634
800034ac:	3734                	.insn	2, 0x3734
800034ae:	3834                	.insn	2, 0x3834
800034b0:	3934                	.insn	2, 0x3934
800034b2:	3035                	.insn	2, 0x3035
800034b4:	3135                	.insn	2, 0x3135
800034b6:	3235                	.insn	2, 0x3235
800034b8:	3335                	.insn	2, 0x3335
800034ba:	3435                	.insn	2, 0x3435
800034bc:	3535                	.insn	2, 0x3535
800034be:	3635                	.insn	2, 0x3635
800034c0:	3735                	.insn	2, 0x3735
800034c2:	3835                	.insn	2, 0x3835
800034c4:	3935                	.insn	2, 0x3935
800034c6:	3036                	.insn	2, 0x3036
800034c8:	3136                	.insn	2, 0x3136
800034ca:	3236                	.insn	2, 0x3236
800034cc:	3336                	.insn	2, 0x3336
800034ce:	3436                	.insn	2, 0x3436
800034d0:	3536                	.insn	2, 0x3536
800034d2:	3636                	.insn	2, 0x3636
800034d4:	3736                	.insn	2, 0x3736
800034d6:	3836                	.insn	2, 0x3836
800034d8:	3936                	.insn	2, 0x3936
800034da:	31373037          	lui	zero,0x31373
800034de:	33373237          	lui	tp,0x33373
800034e2:	35373437          	lui	s0,0x35373
800034e6:	37373637          	lui	a2,0x37373
800034ea:	39373837          	lui	a6,0x39373
800034ee:	3038                	.insn	2, 0x3038
800034f0:	3138                	.insn	2, 0x3138
800034f2:	3238                	.insn	2, 0x3238
800034f4:	3338                	.insn	2, 0x3338
800034f6:	3438                	.insn	2, 0x3438
800034f8:	3538                	.insn	2, 0x3538
800034fa:	3638                	.insn	2, 0x3638
800034fc:	3738                	.insn	2, 0x3738
800034fe:	3838                	.insn	2, 0x3838
80003500:	3938                	.insn	2, 0x3938
80003502:	3039                	.insn	2, 0x3039
80003504:	3139                	.insn	2, 0x3139
80003506:	3239                	.insn	2, 0x3239
80003508:	3339                	.insn	2, 0x3339
8000350a:	3439                	.insn	2, 0x3439
8000350c:	3539                	.insn	2, 0x3539
8000350e:	3639                	.insn	2, 0x3639
80003510:	3739                	.insn	2, 0x3739
80003512:	3839                	.insn	2, 0x3839
80003514:	3939                	.insn	2, 0x3939
	...

80003518 <anon.df1fa239d31f5c80fc4a837dcbfc09f2.18.llvm.11340676783250126700>:
80003518:	0000                	.insn	2, 0x0000
8000351a:	0000                	.insn	2, 0x0000
8000351c:	000c                	.insn	2, 0x000c
8000351e:	0000                	.insn	2, 0x0000
80003520:	0004                	.insn	2, 0x0004
80003522:	0000                	.insn	2, 0x0000
80003524:	1a14                	.insn	2, 0x1a14
80003526:	8000                	.insn	2, 0x8000
80003528:	1cac                	.insn	2, 0x1cac
8000352a:	8000                	.insn	2, 0x8000
8000352c:	1f80                	.insn	2, 0x1f80
8000352e:	8000                	.insn	2, 0x8000

80003530 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.20>:
80003530:	7b20                	.insn	2, 0x7b20
80003532:	                	.insn	2, 0x2c20

80003533 <anon.df1fa239d31f5c80fc4a837dcbfc09f2.21.llvm.11340676783250126700>:
80003533:	202c                	.insn	2, 0x202c

80003535 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.22>:
80003535:	203a                	.insn	2, 0x203a

80003537 <.Lanon.df1fa239d31f5c80fc4a837dcbfc09f2.23>:
80003537:	7b20                	.insn	2, 0x7b20
80003539:	                	.insn	2, 0x2c0a

8000353a <anon.df1fa239d31f5c80fc4a837dcbfc09f2.24.llvm.11340676783250126700>:
8000353a:	0a2c                	.insn	2, 0x0a2c

8000353c <anon.df1fa239d31f5c80fc4a837dcbfc09f2.28.llvm.11340676783250126700>:
8000353c:	                	.insn	2, 0x207d

8000353d <anon.df1fa239d31f5c80fc4a837dcbfc09f2.29.llvm.11340676783250126700>:
8000353d:	7d20                	.insn	2, 0x7d20

8000353f <.Lanon.5b031b77e8ba66a55d53d7e703ed6870.23>:
8000353f:	203a                	.insn	2, 0x203a
80003541:	0000                	.insn	2, 0x0000
	...

80003544 <.Lanon.5b031b77e8ba66a55d53d7e703ed6870.24>:
80003544:	0001                	.insn	2, 0x0001
80003546:	0000                	.insn	2, 0x0000
80003548:	0000                	.insn	2, 0x0000
8000354a:	0000                	.insn	2, 0x0000
8000354c:	8000353f 00000002 	.insn	8, 0x00028000353f
80003554:	6e69                	.insn	2, 0x6e69
80003556:	6564                	.insn	2, 0x6564
80003558:	2078                	.insn	2, 0x2078
8000355a:	2074756f          	jal	a0,8004af60 <KALLOC_BUFFER+0x3ef60>
8000355e:	6220666f          	jal	a2,80009b80 <stack_top+0x2530>
80003562:	646e756f          	jal	a0,800eaba8 <KALLOC_BUFFER+0xdeba8>
80003566:	74203a73          	.insn	4, 0x74203a73
8000356a:	6568                	.insn	2, 0x6568
8000356c:	6c20                	.insn	2, 0x6c20
8000356e:	6e65                	.insn	2, 0x6e65
80003570:	6920                	.insn	2, 0x6920
80003572:	01002073          	.insn	4, 0x01002073
80003576:	021c                	.insn	2, 0x021c
80003578:	0e1d                	.insn	2, 0x0e1d
8000357a:	0318                	.insn	2, 0x0318
8000357c:	161e                	.insn	2, 0x161e
8000357e:	0f14                	.insn	2, 0x0f14
80003580:	1119                	.insn	2, 0x1119
80003582:	0804                	.insn	2, 0x0804
80003584:	1b1f 170d 1315      	.insn	6, 0x1315170d1b1f
8000358a:	0710                	.insn	2, 0x0710
8000358c:	0c1a                	.insn	2, 0x0c1a
8000358e:	0612                	.insn	2, 0x0612
80003590:	090a050b          	.insn	4, 0x090a050b

80003594 <.Lanon.067b3dfb1b5c7344ba321289549ae4de.8>:
80003594:	6220                	.insn	2, 0x6220
80003596:	7475                	.insn	2, 0x7475
80003598:	7420                	.insn	2, 0x7420
8000359a:	6568                	.insn	2, 0x6568
8000359c:	6920                	.insn	2, 0x6920
8000359e:	646e                	.insn	2, 0x646e
800035a0:	7865                	.insn	2, 0x7865
800035a2:	6920                	.insn	2, 0x6920
800035a4:	00002073          	.insn	4, 0x2073

800035a8 <.Lanon.067b3dfb1b5c7344ba321289549ae4de.9>:
800035a8:	3554                	.insn	2, 0x3554
800035aa:	8000                	.insn	2, 0x8000
800035ac:	0020                	.insn	2, 0x0020
800035ae:	0000                	.insn	2, 0x0000
800035b0:	3594                	.insn	2, 0x3594
800035b2:	8000                	.insn	2, 0x8000
800035b4:	0012                	.insn	2, 0x0012
	...

800035b8 <.Lanon.6108cff51755a61e81d016b748f24991.0>:
800035b8:	2820                	.insn	2, 0x2820
800035ba:	2031                	.insn	2, 0x2031
800035bc:	3c3c                	.insn	2, 0x3c3c
800035be:	                	.insn	2, 0x2920

800035bf <.Lanon.6108cff51755a61e81d016b748f24991.1>:
800035bf:	                	.insn	2, 0x0129

800035c0 <.Lanon.6108cff51755a61e81d016b748f24991.2>:
800035c0:	0001                	.insn	2, 0x0001
800035c2:	0000                	.insn	2, 0x0000
800035c4:	0000                	.insn	2, 0x0000
800035c6:	0000                	.insn	2, 0x0000
800035c8:	35b8                	.insn	2, 0x35b8
800035ca:	8000                	.insn	2, 0x8000
800035cc:	00000007          	.insn	4, 0x0007
800035d0:	800035bf 00000001 	.insn	8, 0x0001800035bf

800035d8 <.Lanon.6108cff51755a61e81d016b748f24991.12>:
800035d8:	003a                	.insn	2, 0x003a
	...

800035dc <.Lanon.6108cff51755a61e81d016b748f24991.13>:
800035dc:	0001                	.insn	2, 0x0001
800035de:	0000                	.insn	2, 0x0000
800035e0:	0000                	.insn	2, 0x0000
800035e2:	0000                	.insn	2, 0x0000
800035e4:	35d8                	.insn	2, 0x35d8
800035e6:	8000                	.insn	2, 0x8000
800035e8:	0001                	.insn	2, 0x0001
800035ea:	0000                	.insn	2, 0x0000
800035ec:	35d8                	.insn	2, 0x35d8
800035ee:	8000                	.insn	2, 0x8000
800035f0:	0001                	.insn	2, 0x0001
	...

800035f4 <.Lanon.6108cff51755a61e81d016b748f24991.14>:
800035f4:	6170                	.insn	2, 0x6170
800035f6:	696e                	.insn	2, 0x696e
800035f8:	64656b63          	bltu	a0,t1,80003c4e <__rust_no_alloc_shim_is_unstable+0x60d>
800035fc:	6120                	.insn	2, 0x6120
800035fe:	2074                	.insn	2, 0x2074

80003600 <.Lanon.6108cff51755a61e81d016b748f24991.15>:
80003600:	0a3a                	.insn	2, 0x0a3a

Disassembly of section .eh_frame:

80003610 <__bss_start-0x2c>:
80003610:	0010                	.insn	2, 0x0010
80003612:	0000                	.insn	2, 0x0000
80003614:	0000                	.insn	2, 0x0000
80003616:	0000                	.insn	2, 0x0000
80003618:	7a01                	.insn	2, 0x7a01
8000361a:	0052                	.insn	2, 0x0052
8000361c:	7c01                	.insn	2, 0x7c01
8000361e:	0101                	.insn	2, 0x0101
80003620:	00020c1b          	.insn	4, 0x00020c1b
80003624:	0010                	.insn	2, 0x0010
80003626:	0000                	.insn	2, 0x0000
80003628:	0018                	.insn	2, 0x0018
8000362a:	0000                	.insn	2, 0x0000
8000362c:	d114                	.insn	2, 0xd114
8000362e:	ffff                	.insn	2, 0xffff
80003630:	0008                	.insn	2, 0x0008
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	4c00                	.insn	2, 0x4c00
   2:	6e69                	.insn	2, 0x6e69
   4:	3a72656b          	.insn	4, 0x3a72656b
   8:	4c20                	.insn	2, 0x4c20
   a:	444c                	.insn	2, 0x444c
   c:	3120                	.insn	2, 0x3120
   e:	2e39                	.insn	2, 0x2e39
  10:	2e31                	.insn	2, 0x2e31
  12:	2034                	.insn	2, 0x2034
  14:	2f28                	.insn	2, 0x2f28
  16:	63656863          	bltu	a0,s6,646 <_start-0x7ffff9ba>
  1a:	74756f6b          	.insn	4, 0x74756f6b
  1e:	6372732f          	.insn	4, 0x6372732f
  22:	766c6c2f          	.insn	4, 0x766c6c2f
  26:	2d6d                	.insn	2, 0x2d6d
  28:	7270                	.insn	2, 0x7270
  2a:	63656a6f          	jal	s4,56660 <_start-0x7ffa99a0>
  2e:	2f74                	.insn	2, 0x2f74
  30:	6c6c                	.insn	2, 0x6c6c
  32:	6d76                	.insn	2, 0x6d76
  34:	3120                	.insn	2, 0x3120
  36:	3430                	.insn	2, 0x3430
  38:	3064                	.insn	2, 0x3064
  3a:	3164                	.insn	2, 0x3164
  3c:	6336                	.insn	2, 0x6336
  3e:	63376333          	.insn	4, 0x63376333
  42:	66656633          	.insn	4, 0x66656633
  46:	3432                	.insn	2, 0x3432
  48:	65663533          	.insn	4, 0x65663533
  4c:	3666                	.insn	2, 0x3666
  4e:	6665                	.insn	2, 0x6665
  50:	3262                	.insn	2, 0x3262
  52:	3564                	.insn	2, 0x3564
  54:	30376237          	lui	tp,0x30376
  58:	6666                	.insn	2, 0x6666
  5a:	3766                	.insn	2, 0x3766
  5c:	72002933          	.insn	4, 0x72002933
  60:	7375                	.insn	2, 0x7375
  62:	6374                	.insn	2, 0x6374
  64:	7620                	.insn	2, 0x7620
  66:	7265                	.insn	2, 0x7265
  68:	6e6f6973          	.insn	4, 0x6e6f6973
  6c:	3120                	.insn	2, 0x3120
  6e:	382e                	.insn	2, 0x382e
  70:	2e35                	.insn	2, 0x2e35
  72:	2d30                	.insn	2, 0x2d30
  74:	696e                	.insn	2, 0x696e
  76:	6c746867          	.insn	4, 0x6c746867
  7a:	2079                	.insn	2, 0x2079
  7c:	3228                	.insn	2, 0x3228
  7e:	6638                	.insn	2, 0x6638
  80:	61623263          	.insn	4, 0x61623263
  84:	32203137          	lui	sp,0x32203
  88:	3230                	.insn	2, 0x3230
  8a:	2d34                	.insn	2, 0x2d34
  8c:	3131                	.insn	2, 0x3131
  8e:	322d                	.insn	2, 0x322d
  90:	2934                	.insn	2, 0x2934
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	2e41                	.insn	2, 0x2e41
   2:	0000                	.insn	2, 0x0000
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <_start-0x7fffffec>
   c:	0024                	.insn	2, 0x0024
   e:	0000                	.insn	2, 0x0000
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3376                	.insn	2, 0x3376
  16:	6932                	.insn	2, 0x6932
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	326d                	.insn	2, 0x326d
  1e:	3070                	.insn	2, 0x3070
  20:	615f 7032 5f31      	.insn	6, 0x5f317032615f
  26:	6d7a                	.insn	2, 0x6d7a
  28:	756d                	.insn	2, 0x756d
  2a:	316c                	.insn	2, 0x316c
  2c:	3070                	.insn	2, 0x3070
	...
