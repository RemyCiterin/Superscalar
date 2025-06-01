
./rust/target/riscv32i-unknown-none-elf/release/SuperOS:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	0000e297          	auipc	t0,0xe
80000004:	fd828293          	addi	t0,t0,-40 # 8000dfd8 <__bss_start>

80000008 <.Lpcrel_hi1>:
80000008:	0000f317          	auipc	t1,0xf
8000000c:	00030313          	mv	t1,t1
80000010:	0062f863          	bgeu	t0,t1,80000020 <.Lpcrel_hi2>

80000014 <.bss_zero_loop>:
80000014:	00028023          	sb	zero,0(t0)
80000018:	00128293          	addi	t0,t0,1
8000001c:	fe62ece3          	bltu	t0,t1,80000014 <.bss_zero_loop>

80000020 <.Lpcrel_hi2>:
80000020:	0000f117          	auipc	sp,0xf
80000024:	fd010113          	addi	sp,sp,-48 # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
80000028:	470000ef          	jal	80000498 <kernel_main>

8000002c <.infinite_loop>:
8000002c:	0000006f          	j	8000002c <.infinite_loop>

80000030 <run_user>:
80000030:	fc410113          	addi	sp,sp,-60
80000034:	00312023          	sw	gp,0(sp)
80000038:	00412223          	sw	tp,4(sp)
8000003c:	00112423          	sw	ra,8(sp)
80000040:	00812623          	sw	s0,12(sp)
80000044:	00912823          	sw	s1,16(sp)
80000048:	01212a23          	sw	s2,20(sp)
8000004c:	01312c23          	sw	s3,24(sp)
80000050:	01412e23          	sw	s4,28(sp)
80000054:	03512023          	sw	s5,32(sp)
80000058:	03612223          	sw	s6,36(sp)
8000005c:	03712423          	sw	s7,40(sp)
80000060:	03812623          	sw	s8,44(sp)
80000064:	03912823          	sw	s9,48(sp)
80000068:	03a12a23          	sw	s10,52(sp)
8000006c:	03b12c23          	sw	s11,56(sp)
80000070:	34051073          	.insn	4, 0x34051073
80000074:	08252023          	sw	sp,128(a0)
80000078:	07c52283          	lw	t0,124(a0)
8000007c:	34129073          	.insn	4, 0x34129073
80000080:	00052083          	lw	ra,0(a0)
80000084:	00452103          	lw	sp,4(a0)
80000088:	00852183          	lw	gp,8(a0)
8000008c:	00c52203          	lw	tp,12(a0)
80000090:	01052283          	lw	t0,16(a0)
80000094:	01452303          	lw	t1,20(a0)
80000098:	01852383          	lw	t2,24(a0)
8000009c:	01c52403          	lw	s0,28(a0)
800000a0:	02052483          	lw	s1,32(a0)
800000a4:	02852583          	lw	a1,40(a0)
800000a8:	02c52603          	lw	a2,44(a0)
800000ac:	03052683          	lw	a3,48(a0)
800000b0:	03452703          	lw	a4,52(a0)
800000b4:	03852783          	lw	a5,56(a0)
800000b8:	03c52803          	lw	a6,60(a0)
800000bc:	04052883          	lw	a7,64(a0)
800000c0:	04452903          	lw	s2,68(a0)
800000c4:	04852983          	lw	s3,72(a0)
800000c8:	04c52a03          	lw	s4,76(a0)
800000cc:	05052a83          	lw	s5,80(a0)
800000d0:	05452b03          	lw	s6,84(a0)
800000d4:	05852b83          	lw	s7,88(a0)
800000d8:	05c52c03          	lw	s8,92(a0)
800000dc:	06052c83          	lw	s9,96(a0)
800000e0:	06452d03          	lw	s10,100(a0)
800000e4:	06852d83          	lw	s11,104(a0)
800000e8:	06c52e03          	lw	t3,108(a0)
800000ec:	07052e83          	lw	t4,112(a0)
800000f0:	07452f03          	lw	t5,116(a0)
800000f4:	07852f83          	lw	t6,120(a0)
800000f8:	02452503          	lw	a0,36(a0)
800000fc:	30200073          	mret

80000100 <user_trap>:
80000100:	34051573          	.insn	4, 0x34051573
80000104:	00152023          	sw	ra,0(a0)
80000108:	00252223          	sw	sp,4(a0)
8000010c:	00352423          	sw	gp,8(a0)
80000110:	00452623          	sw	tp,12(a0)
80000114:	00552823          	sw	t0,16(a0)
80000118:	00652a23          	sw	t1,20(a0)
8000011c:	00752c23          	sw	t2,24(a0)
80000120:	00852e23          	sw	s0,28(a0)
80000124:	02952023          	sw	s1,32(a0)
80000128:	02b52423          	sw	a1,40(a0)
8000012c:	02c52623          	sw	a2,44(a0)
80000130:	02d52823          	sw	a3,48(a0)
80000134:	02e52a23          	sw	a4,52(a0)
80000138:	02f52c23          	sw	a5,56(a0)
8000013c:	03052e23          	sw	a6,60(a0)
80000140:	05152023          	sw	a7,64(a0)
80000144:	05252223          	sw	s2,68(a0)
80000148:	05352423          	sw	s3,72(a0)
8000014c:	05452623          	sw	s4,76(a0)
80000150:	05552823          	sw	s5,80(a0)
80000154:	05652a23          	sw	s6,84(a0)
80000158:	05752c23          	sw	s7,88(a0)
8000015c:	05852e23          	sw	s8,92(a0)
80000160:	07952023          	sw	s9,96(a0)
80000164:	07a52223          	sw	s10,100(a0)
80000168:	07b52423          	sw	s11,104(a0)
8000016c:	07c52623          	sw	t3,108(a0)
80000170:	07d52823          	sw	t4,112(a0)
80000174:	07e52a23          	sw	t5,116(a0)
80000178:	07f52c23          	sw	t6,120(a0)
8000017c:	340022f3          	.insn	4, 0x340022f3
80000180:	02552223          	sw	t0,36(a0)
80000184:	08052103          	lw	sp,128(a0)
80000188:	341022f3          	.insn	4, 0x341022f3
8000018c:	06552e23          	sw	t0,124(a0)
80000190:	00012183          	lw	gp,0(sp)
80000194:	00412203          	lw	tp,4(sp)
80000198:	00812083          	lw	ra,8(sp)
8000019c:	00c12403          	lw	s0,12(sp)
800001a0:	01012483          	lw	s1,16(sp)
800001a4:	01412903          	lw	s2,20(sp)
800001a8:	01812983          	lw	s3,24(sp)
800001ac:	01c12a03          	lw	s4,28(sp)
800001b0:	02012a83          	lw	s5,32(sp)
800001b4:	02412b03          	lw	s6,36(sp)
800001b8:	02812b83          	lw	s7,40(sp)
800001bc:	02c12c03          	lw	s8,44(sp)
800001c0:	03012c83          	lw	s9,48(sp)
800001c4:	03412d03          	lw	s10,52(sp)
800001c8:	03812d83          	lw	s11,56(sp)
800001cc:	03c10113          	addi	sp,sp,60
800001d0:	00008067          	ret

800001d4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h474e3d1cccdd721fE>:
800001d4:	00052503          	lw	a0,0(a0)
800001d8:	00007317          	auipc	t1,0x7
800001dc:	c8c30067          	jr	-884(t1) # 80006e64 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa05253f8c12d2c8E>

800001e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h04315e1379c69354E>:
800001e0:	00052503          	lw	a0,0(a0)
800001e4:	00007317          	auipc	t1,0x7
800001e8:	d7030067          	jr	-656(t1) # 80006f54 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E>

800001ec <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E>:
800001ec:	01c5a603          	lw	a2,28(a1)
800001f0:	01067693          	andi	a3,a2,16
800001f4:	00069a63          	bnez	a3,80000208 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E+0x1c>
800001f8:	02067613          	andi	a2,a2,32
800001fc:	00061a63          	bnez	a2,80000210 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E+0x24>
80000200:	00009317          	auipc	t1,0x9
80000204:	7c830067          	jr	1992(t1) # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80000208:	00009317          	auipc	t1,0x9
8000020c:	5c030067          	jr	1472(t1) # 800097c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000210:	00009317          	auipc	t1,0x9
80000214:	63c30067          	jr	1596(t1) # 8000984c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E>

80000218 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E>:
80000218:	ff010113          	addi	sp,sp,-16
8000021c:	08000513          	li	a0,128
80000220:	00012623          	sw	zero,12(sp)
80000224:	00a5f863          	bgeu	a1,a0,80000234 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0x1c>
80000228:	00d10513          	addi	a0,sp,13
8000022c:	00b10623          	sb	a1,12(sp)
80000230:	0a00006f          	j	800002d0 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0xb8>
80000234:	00b5d513          	srli	a0,a1,0xb
80000238:	02051263          	bnez	a0,8000025c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0x44>
8000023c:	00e10513          	addi	a0,sp,14
80000240:	0065d613          	srli	a2,a1,0x6
80000244:	0c066613          	ori	a2,a2,192
80000248:	00c10623          	sb	a2,12(sp)
8000024c:	03f5f593          	andi	a1,a1,63
80000250:	08058593          	addi	a1,a1,128
80000254:	00b106a3          	sb	a1,13(sp)
80000258:	0780006f          	j	800002d0 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0xb8>
8000025c:	0105d513          	srli	a0,a1,0x10
80000260:	02051a63          	bnez	a0,80000294 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0x7c>
80000264:	00f10513          	addi	a0,sp,15
80000268:	00c5d613          	srli	a2,a1,0xc
8000026c:	0e066613          	ori	a2,a2,224
80000270:	00c10623          	sb	a2,12(sp)
80000274:	01459613          	slli	a2,a1,0x14
80000278:	01a65613          	srli	a2,a2,0x1a
8000027c:	08060613          	addi	a2,a2,128
80000280:	00c106a3          	sb	a2,13(sp)
80000284:	03f5f593          	andi	a1,a1,63
80000288:	08058593          	addi	a1,a1,128
8000028c:	00b10723          	sb	a1,14(sp)
80000290:	0400006f          	j	800002d0 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0xb8>
80000294:	01010513          	addi	a0,sp,16
80000298:	0125d613          	srli	a2,a1,0x12
8000029c:	0f066613          	ori	a2,a2,240
800002a0:	00c10623          	sb	a2,12(sp)
800002a4:	00e59613          	slli	a2,a1,0xe
800002a8:	01a65613          	srli	a2,a2,0x1a
800002ac:	08060613          	addi	a2,a2,128
800002b0:	00c106a3          	sb	a2,13(sp)
800002b4:	01459613          	slli	a2,a1,0x14
800002b8:	01a65613          	srli	a2,a2,0x1a
800002bc:	08060613          	addi	a2,a2,128
800002c0:	00c10723          	sb	a2,14(sp)
800002c4:	03f5f593          	andi	a1,a1,63
800002c8:	08058593          	addi	a1,a1,128
800002cc:	00b107a3          	sb	a1,15(sp)
800002d0:	00c10613          	addi	a2,sp,12
800002d4:	100005b7          	lui	a1,0x10000
800002d8:	00064683          	lbu	a3,0(a2)
800002dc:	00160713          	addi	a4,a2,1
800002e0:	00d58023          	sb	a3,0(a1) # 10000000 <.Lline_table_start2+0xfffec52>
800002e4:	00070613          	mv	a2,a4
800002e8:	fea718e3          	bne	a4,a0,800002d8 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E+0xc0>
800002ec:	00000513          	li	a0,0
800002f0:	01010113          	addi	sp,sp,16
800002f4:	00008067          	ret

800002f8 <_ZN4core3fmt5Write9write_fmt17hfc336d22037d8a30E>:
800002f8:	8000c637          	lui	a2,0x8000c
800002fc:	14c60613          	addi	a2,a2,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000300:	00058693          	mv	a3,a1
80000304:	00060593          	mv	a1,a2
80000308:	00068613          	mv	a2,a3
8000030c:	00008317          	auipc	t1,0x8
80000310:	c9430067          	jr	-876(t1) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80000314 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>:
80000314:	00052503          	lw	a0,0(a0)
80000318:	00009317          	auipc	t1,0x9
8000031c:	ba030067          	jr	-1120(t1) # 80008eb8 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E>

80000320 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hba1ddd0fb8e63500E>:
80000320:	8000c6b7          	lui	a3,0x8000c
80000324:	00068693          	mv	a3,a3
80000328:	00500613          	li	a2,5
8000032c:	00058513          	mv	a0,a1
80000330:	00068593          	mv	a1,a3
80000334:	00009317          	auipc	t1,0x9
80000338:	a1430067          	jr	-1516(t1) # 80008d48 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

8000033c <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7c70724592f5f6eE>:
8000033c:	fe010113          	addi	sp,sp,-32
80000340:	00112e23          	sw	ra,28(sp)
80000344:	00058293          	mv	t0,a1
80000348:	00450793          	addi	a5,a0,4
8000034c:	00a12c23          	sw	a0,24(sp)
80000350:	8000c537          	lui	a0,0x8000c
80000354:	01850513          	addi	a0,a0,24 # 8000c018 <.Lanon.368313aae6f24ed1916c56358b6b666c.3>
80000358:	00a12423          	sw	a0,8(sp)
8000035c:	01810513          	addi	a0,sp,24
80000360:	00a12223          	sw	a0,4(sp)
80000364:	00500513          	li	a0,5
80000368:	8000c5b7          	lui	a1,0x8000c
8000036c:	02858593          	addi	a1,a1,40 # 8000c028 <.Lanon.368313aae6f24ed1916c56358b6b666c.4>
80000370:	8000c6b7          	lui	a3,0x8000c
80000374:	03268693          	addi	a3,a3,50 # 8000c032 <.Lanon.368313aae6f24ed1916c56358b6b666c.4+0xa>
80000378:	8000c837          	lui	a6,0x8000c
8000037c:	00880813          	addi	a6,a6,8 # 8000c008 <.Lanon.368313aae6f24ed1916c56358b6b666c.2>
80000380:	8000c8b7          	lui	a7,0x8000c
80000384:	03688893          	addi	a7,a7,54 # 8000c036 <.Lanon.368313aae6f24ed1916c56358b6b666c.6>
80000388:	00600613          	li	a2,6
8000038c:	00400713          	li	a4,4
80000390:	00a12023          	sw	a0,0(sp)
80000394:	00028513          	mv	a0,t0
80000398:	00009097          	auipc	ra,0x9
8000039c:	9dc080e7          	jalr	-1572(ra) # 80008d74 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E>
800003a0:	01c12083          	lw	ra,28(sp)
800003a4:	02010113          	addi	sp,sp,32
800003a8:	00008067          	ret

800003ac <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE>:
800003ac:	00054503          	lbu	a0,0(a0)
800003b0:	00251513          	slli	a0,a0,0x2
800003b4:	8000c637          	lui	a2,0x8000c
800003b8:	4cc60613          	addi	a2,a2,1228 # 8000c4cc <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE>
800003bc:	00a60633          	add	a2,a2,a0
800003c0:	00062603          	lw	a2,0(a2)
800003c4:	8000c6b7          	lui	a3,0x8000c
800003c8:	50868693          	addi	a3,a3,1288 # 8000c508 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.9>
800003cc:	00a68533          	add	a0,a3,a0
800003d0:	00052683          	lw	a3,0(a0)
800003d4:	00058513          	mv	a0,a1
800003d8:	00068593          	mv	a1,a3
800003dc:	00009317          	auipc	t1,0x9
800003e0:	96c30067          	jr	-1684(t1) # 80008d48 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

800003e4 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE>:
800003e4:	00060e63          	beqz	a2,80000400 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE+0x1c>
800003e8:	10000537          	lui	a0,0x10000
800003ec:	0005c683          	lbu	a3,0(a1)
800003f0:	00158593          	addi	a1,a1,1
800003f4:	fff60613          	addi	a2,a2,-1
800003f8:	00d50023          	sb	a3,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
800003fc:	fe0618e3          	bnez	a2,800003ec <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE+0x8>
80000400:	00000513          	li	a0,0
80000404:	00008067          	ret

80000408 <rust_begin_unwind>:
80000408:	fd010113          	addi	sp,sp,-48
8000040c:	02112623          	sw	ra,44(sp)
80000410:	00a12223          	sw	a0,4(sp)
80000414:	00410513          	addi	a0,sp,4
80000418:	02a12023          	sw	a0,32(sp)
8000041c:	80000537          	lui	a0,0x80000
80000420:	1e050513          	addi	a0,a0,480 # 800001e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h04315e1379c69354E>
80000424:	02a12223          	sw	a0,36(sp)
80000428:	8000c537          	lui	a0,0x8000c
8000042c:	43050513          	addi	a0,a0,1072 # 8000c430 <.Lanon.368313aae6f24ed1916c56358b6b666c.68>
80000430:	00a12423          	sw	a0,8(sp)
80000434:	00200513          	li	a0,2
80000438:	00a12623          	sw	a0,12(sp)
8000043c:	00012c23          	sw	zero,24(sp)
80000440:	02010513          	addi	a0,sp,32
80000444:	00a12823          	sw	a0,16(sp)
80000448:	00100513          	li	a0,1
8000044c:	00a12a23          	sw	a0,20(sp)
80000450:	8000c5b7          	lui	a1,0x8000c
80000454:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000458:	02b10513          	addi	a0,sp,43
8000045c:	00810613          	addi	a2,sp,8
80000460:	00008097          	auipc	ra,0x8
80000464:	b40080e7          	jalr	-1216(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000468:	00051463          	bnez	a0,80000470 <rust_begin_unwind+0x68>
8000046c:	0000006f          	j	8000046c <rust_begin_unwind+0x64>
80000470:	8000c537          	lui	a0,0x8000c
80000474:	17450513          	addi	a0,a0,372 # 8000c174 <.Lanon.368313aae6f24ed1916c56358b6b666c.24>
80000478:	8000c6b7          	lui	a3,0x8000c
8000047c:	16468693          	addi	a3,a3,356 # 8000c164 <.Lanon.368313aae6f24ed1916c56358b6b666c.23>
80000480:	8000c737          	lui	a4,0x8000c
80000484:	1b070713          	addi	a4,a4,432 # 8000c1b0 <.Lanon.368313aae6f24ed1916c56358b6b666c.26>
80000488:	02b00593          	li	a1,43
8000048c:	02b10613          	addi	a2,sp,43
80000490:	00007097          	auipc	ra,0x7
80000494:	e80080e7          	jalr	-384(ra) # 80007310 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80000498 <kernel_main>:
80000498:	f1010113          	addi	sp,sp,-240
8000049c:	0e112623          	sw	ra,236(sp)
800004a0:	0e812423          	sw	s0,232(sp)
800004a4:	0e912223          	sw	s1,228(sp)
800004a8:	0f212023          	sw	s2,224(sp)
800004ac:	0d312e23          	sw	s3,220(sp)
800004b0:	0d412c23          	sw	s4,216(sp)
800004b4:	0d512a23          	sw	s5,212(sp)
800004b8:	0d612823          	sw	s6,208(sp)
800004bc:	0d712623          	sw	s7,204(sp)
800004c0:	0d812423          	sw	s8,200(sp)
800004c4:	0d912223          	sw	s9,196(sp)
800004c8:	0da12023          	sw	s10,192(sp)
800004cc:	0bb12e23          	sw	s11,188(sp)
800004d0:	10000537          	lui	a0,0x10000
800004d4:	07300593          	li	a1,115
800004d8:	00b50023          	sb	a1,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
800004dc:	07400613          	li	a2,116
800004e0:	00c50023          	sb	a2,0(a0)
800004e4:	06100693          	li	a3,97
800004e8:	00d50023          	sb	a3,0(a0)
800004ec:	07200713          	li	a4,114
800004f0:	00e50023          	sb	a4,0(a0)
800004f4:	00c50023          	sb	a2,0(a0)
800004f8:	06500793          	li	a5,101
800004fc:	00f50023          	sb	a5,0(a0)
80000500:	06400813          	li	a6,100
80000504:	01050023          	sb	a6,0(a0)
80000508:	02100813          	li	a6,33
8000050c:	01050023          	sb	a6,0(a0)
80000510:	00a00813          	li	a6,10
80000514:	01050023          	sb	a6,0(a0)
80000518:	04400893          	li	a7,68
8000051c:	01150023          	sb	a7,0(a0)
80000520:	04f00893          	li	a7,79
80000524:	01150023          	sb	a7,0(a0)
80000528:	06f00293          	li	t0,111
8000052c:	00550023          	sb	t0,0(a0)
80000530:	01150023          	sb	a7,0(a0)
80000534:	04d00893          	li	a7,77
80000538:	01150023          	sb	a7,0(a0)
8000053c:	02000893          	li	a7,32
80000540:	01150023          	sb	a7,0(a0)
80000544:	00550023          	sb	t0,0(a0)
80000548:	00b50023          	sb	a1,0(a0)
8000054c:	01050023          	sb	a6,0(a0)
80000550:	06900593          	li	a1,105
80000554:	00b50023          	sb	a1,0(a0)
80000558:	06e00313          	li	t1,110
8000055c:	00650023          	sb	t1,0(a0)
80000560:	00b50023          	sb	a1,0(a0)
80000564:	00c50023          	sb	a2,0(a0)
80000568:	01150023          	sb	a7,0(a0)
8000056c:	07000593          	li	a1,112
80000570:	00b50023          	sb	a1,0(a0)
80000574:	00d50023          	sb	a3,0(a0)
80000578:	06700593          	li	a1,103
8000057c:	00b50023          	sb	a1,0(a0)
80000580:	00f50023          	sb	a5,0(a0)
80000584:	01150023          	sb	a7,0(a0)
80000588:	00d50023          	sb	a3,0(a0)
8000058c:	06c00593          	li	a1,108
80000590:	00b50023          	sb	a1,0(a0)
80000594:	00b50023          	sb	a1,0(a0)
80000598:	00550023          	sb	t0,0(a0)
8000059c:	06300593          	li	a1,99
800005a0:	00b50023          	sb	a1,0(a0)
800005a4:	00d50023          	sb	a3,0(a0)
800005a8:	00c50023          	sb	a2,0(a0)
800005ac:	00550023          	sb	t0,0(a0)
800005b0:	00e50023          	sb	a4,0(a0)
800005b4:	01050023          	sb	a6,0(a0)
800005b8:	80010db7          	lui	s11,0x80010
800005bc:	000d8d93          	mv	s11,s11
800005c0:	0bb12223          	sw	s11,164(sp)
800005c4:	0a410513          	addi	a0,sp,164
800005c8:	08a12623          	sw	a0,140(sp)
800005cc:	800099b7          	lui	s3,0x80009
800005d0:	7c898993          	addi	s3,s3,1992 # 800097c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
800005d4:	09312823          	sw	s3,144(sp)
800005d8:	8000c537          	lui	a0,0x8000c
800005dc:	27050513          	addi	a0,a0,624 # 8000c270 <.Lanon.368313aae6f24ed1916c56358b6b666c.39>
800005e0:	00a12223          	sw	a0,4(sp)
800005e4:	00200513          	li	a0,2
800005e8:	00a12423          	sw	a0,8(sp)
800005ec:	00012a23          	sw	zero,20(sp)
800005f0:	08c10513          	addi	a0,sp,140
800005f4:	00a12623          	sw	a0,12(sp)
800005f8:	00100513          	li	a0,1
800005fc:	00a12823          	sw	a0,16(sp)
80000600:	8000c5b7          	lui	a1,0x8000c
80000604:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000608:	0b810513          	addi	a0,sp,184
8000060c:	00410613          	addi	a2,sp,4
80000610:	00008097          	auipc	ra,0x8
80000614:	990080e7          	jalr	-1648(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000618:	64051e63          	bnez	a0,80000c74 <kernel_main+0x7dc>
8000061c:	8000e537          	lui	a0,0x8000e
80000620:	fec54583          	lbu	a1,-20(a0) # 8000dfec <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3>
80000624:	00058463          	beqz	a1,8000062c <kernel_main+0x194>
80000628:	0000006f          	j	80000628 <kernel_main+0x190>
8000062c:	00100593          	li	a1,1
80000630:	feb50623          	sb	a1,-20(a0)
80000634:	00200937          	lui	s2,0x200
80000638:	012d8933          	add	s2,s11,s2
8000063c:	00c95413          	srli	s0,s2,0xc
80000640:	00140493          	addi	s1,s0,1
80000644:	08912423          	sw	s1,136(sp)
80000648:	00080537          	lui	a0,0x80
8000064c:	3ff50513          	addi	a0,a0,1023 # 803ff <.Lline_table_start2+0x7f051>
80000650:	0aa12a23          	sw	a0,180(sp)
80000654:	08810513          	addi	a0,sp,136
80000658:	0aa12223          	sw	a0,164(sp)
8000065c:	0b312423          	sw	s3,168(sp)
80000660:	0b410513          	addi	a0,sp,180
80000664:	0aa12623          	sw	a0,172(sp)
80000668:	0b312823          	sw	s3,176(sp)
8000066c:	00200513          	li	a0,2
80000670:	00a12223          	sw	a0,4(sp)
80000674:	00a12623          	sw	a0,12(sp)
80000678:	02000613          	li	a2,32
8000067c:	00c12a23          	sw	a2,20(sp)
80000680:	00012c23          	sw	zero,24(sp)
80000684:	00400693          	li	a3,4
80000688:	00d12e23          	sw	a3,28(sp)
8000068c:	00300713          	li	a4,3
80000690:	02e10023          	sb	a4,32(sp)
80000694:	02a12223          	sw	a0,36(sp)
80000698:	02a12623          	sw	a0,44(sp)
8000069c:	02c12a23          	sw	a2,52(sp)
800006a0:	02b12c23          	sw	a1,56(sp)
800006a4:	02d12e23          	sw	a3,60(sp)
800006a8:	04e10023          	sb	a4,64(sp)
800006ac:	8000c5b7          	lui	a1,0x8000c
800006b0:	22858593          	addi	a1,a1,552 # 8000c228 <.Lanon.368313aae6f24ed1916c56358b6b666c.35>
800006b4:	08b12623          	sw	a1,140(sp)
800006b8:	08e12823          	sw	a4,144(sp)
800006bc:	00410593          	addi	a1,sp,4
800006c0:	08b12e23          	sw	a1,156(sp)
800006c4:	0aa12023          	sw	a0,160(sp)
800006c8:	0a410593          	addi	a1,sp,164
800006cc:	08b12a23          	sw	a1,148(sp)
800006d0:	08a12c23          	sw	a0,152(sp)
800006d4:	8000c5b7          	lui	a1,0x8000c
800006d8:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
800006dc:	0b810513          	addi	a0,sp,184
800006e0:	08c10613          	addi	a2,sp,140
800006e4:	00008097          	auipc	ra,0x8
800006e8:	8bc080e7          	jalr	-1860(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800006ec:	58051463          	bnez	a0,80000c74 <kernel_main+0x7dc>
800006f0:	803fe537          	lui	a0,0x803fe
800006f4:	fff50513          	addi	a0,a0,-1 # 803fdfff <KALLOC_BUFFER+0x3edfff>
800006f8:	07256463          	bltu	a0,s2,80000760 <kernel_main+0x2c8>
800006fc:	8000e537          	lui	a0,0x8000e
80000700:	fe052603          	lw	a2,-32(a0) # 8000dfe0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0>
80000704:	8000e5b7          	lui	a1,0x8000e
80000708:	fe45a683          	lw	a3,-28(a1) # 8000dfe4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1>
8000070c:	00c49713          	slli	a4,s1,0xc
80000710:	00c72023          	sw	a2,0(a4)
80000714:	00d72223          	sw	a3,4(a4)
80000718:	00100613          	li	a2,1
8000071c:	fec52023          	sw	a2,-32(a0)
80000720:	000807b7          	lui	a5,0x80
80000724:	3fd78693          	addi	a3,a5,1021 # 803fd <.Lline_table_start2+0x7f04f>
80000728:	fe95a223          	sw	s1,-28(a1)
8000072c:	02d40a63          	beq	s0,a3,80000760 <kernel_main+0x2c8>
80000730:	00c41693          	slli	a3,s0,0xc
80000734:	00002737          	lui	a4,0x2
80000738:	00e686b3          	add	a3,a3,a4
8000073c:	00001737          	lui	a4,0x1
80000740:	3fe78793          	addi	a5,a5,1022
80000744:	00c6a023          	sw	a2,0(a3)
80000748:	0096a223          	sw	s1,4(a3)
8000074c:	fec52023          	sw	a2,-32(a0)
80000750:	00148493          	addi	s1,s1,1
80000754:	fe95a223          	sw	s1,-28(a1)
80000758:	00e686b3          	add	a3,a3,a4
8000075c:	fef494e3          	bne	s1,a5,80000744 <kernel_main+0x2ac>
80000760:	8000e537          	lui	a0,0x8000e
80000764:	fe050623          	sb	zero,-20(a0) # 8000dfec <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3>
80000768:	10000937          	lui	s2,0x10000
8000076c:	07000513          	li	a0,112
80000770:	00a90023          	sb	a0,0(s2) # 10000000 <.Lline_table_start2+0xfffec52>
80000774:	06100a13          	li	s4,97
80000778:	01490023          	sb	s4,0(s2)
8000077c:	06700513          	li	a0,103
80000780:	00a90023          	sb	a0,0(s2)
80000784:	06500a93          	li	s5,101
80000788:	01590023          	sb	s5,0(s2)
8000078c:	02000b93          	li	s7,32
80000790:	01790023          	sb	s7,0(s2)
80000794:	01490023          	sb	s4,0(s2)
80000798:	06c00b13          	li	s6,108
8000079c:	01690023          	sb	s6,0(s2)
800007a0:	01690023          	sb	s6,0(s2)
800007a4:	06f00c93          	li	s9,111
800007a8:	01990023          	sb	s9,0(s2)
800007ac:	06300513          	li	a0,99
800007b0:	00a90023          	sb	a0,0(s2)
800007b4:	01490023          	sb	s4,0(s2)
800007b8:	07400c13          	li	s8,116
800007bc:	01890023          	sb	s8,0(s2)
800007c0:	01990023          	sb	s9,0(s2)
800007c4:	07200593          	li	a1,114
800007c8:	00b90023          	sb	a1,0(s2)
800007cc:	01790023          	sb	s7,0(s2)
800007d0:	06900d13          	li	s10,105
800007d4:	01a90023          	sb	s10,0(s2)
800007d8:	06e00413          	li	s0,110
800007dc:	00890023          	sb	s0,0(s2)
800007e0:	01a90023          	sb	s10,0(s2)
800007e4:	01890023          	sb	s8,0(s2)
800007e8:	01a90023          	sb	s10,0(s2)
800007ec:	01490023          	sb	s4,0(s2)
800007f0:	01690023          	sb	s6,0(s2)
800007f4:	01a90023          	sb	s10,0(s2)
800007f8:	07300613          	li	a2,115
800007fc:	00c90023          	sb	a2,0(s2)
80000800:	01590023          	sb	s5,0(s2)
80000804:	06400993          	li	s3,100
80000808:	01390023          	sb	s3,0(s2)
8000080c:	02100613          	li	a2,33
80000810:	00c90023          	sb	a2,0(s2)
80000814:	00a00613          	li	a2,10
80000818:	00c90023          	sb	a2,0(s2)
8000081c:	01a90023          	sb	s10,0(s2)
80000820:	00890023          	sb	s0,0(s2)
80000824:	01a90023          	sb	s10,0(s2)
80000828:	01890023          	sb	s8,0(s2)
8000082c:	01790023          	sb	s7,0(s2)
80000830:	06b00693          	li	a3,107
80000834:	00d90023          	sb	a3,0(s2)
80000838:	01590023          	sb	s5,0(s2)
8000083c:	00b90023          	sb	a1,0(s2)
80000840:	00890023          	sb	s0,0(s2)
80000844:	01590023          	sb	s5,0(s2)
80000848:	01690023          	sb	s6,0(s2)
8000084c:	01790023          	sb	s7,0(s2)
80000850:	01490023          	sb	s4,0(s2)
80000854:	01690023          	sb	s6,0(s2)
80000858:	01690023          	sb	s6,0(s2)
8000085c:	01990023          	sb	s9,0(s2)
80000860:	00a90023          	sb	a0,0(s2)
80000864:	01490023          	sb	s4,0(s2)
80000868:	01890023          	sb	s8,0(s2)
8000086c:	01990023          	sb	s9,0(s2)
80000870:	00b90023          	sb	a1,0(s2)
80000874:	00c90023          	sb	a2,0(s2)
80000878:	0bb12223          	sw	s11,164(sp)
8000087c:	0a410513          	addi	a0,sp,164
80000880:	08a12623          	sw	a0,140(sp)
80000884:	80000537          	lui	a0,0x80000
80000888:	31450513          	addi	a0,a0,788 # 80000314 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>
8000088c:	08a12823          	sw	a0,144(sp)
80000890:	8000c537          	lui	a0,0x8000c
80000894:	20450513          	addi	a0,a0,516 # 8000c204 <.Lanon.368313aae6f24ed1916c56358b6b666c.32>
80000898:	00a12223          	sw	a0,4(sp)
8000089c:	00200513          	li	a0,2
800008a0:	00a12423          	sw	a0,8(sp)
800008a4:	00012a23          	sw	zero,20(sp)
800008a8:	08c10513          	addi	a0,sp,140
800008ac:	00a12623          	sw	a0,12(sp)
800008b0:	00100513          	li	a0,1
800008b4:	00a12823          	sw	a0,16(sp)
800008b8:	8000c5b7          	lui	a1,0x8000c
800008bc:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
800008c0:	0b810513          	addi	a0,sp,184
800008c4:	00410613          	addi	a2,sp,4
800008c8:	00007097          	auipc	ra,0x7
800008cc:	6d8080e7          	jalr	1752(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800008d0:	3a051263          	bnez	a0,80000c74 <kernel_main+0x7dc>
800008d4:	000d8693          	mv	a3,s11
800008d8:	00000493          	li	s1,0
800008dc:	00000d93          	li	s11,0
800008e0:	8000f537          	lui	a0,0x8000f
800008e4:	fe052823          	sw	zero,-16(a0) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
800008e8:	ff050513          	addi	a0,a0,-16
800008ec:	00368593          	addi	a1,a3,3
800008f0:	ffc5f593          	andi	a1,a1,-4
800008f4:	00200637          	lui	a2,0x200
800008f8:	00c68633          	add	a2,a3,a2
800008fc:	40b60633          	sub	a2,a2,a1
80000900:	004006b7          	lui	a3,0x400
80000904:	ffc68693          	addi	a3,a3,-4 # 3ffffc <.Lline_table_start2+0x3fec4e>
80000908:	00d676b3          	and	a3,a2,a3
8000090c:	00d5a023          	sw	a3,0(a1)
80000910:	0005a223          	sw	zero,4(a1)
80000914:	00d586b3          	add	a3,a1,a3
80000918:	00b52423          	sw	a1,8(a0)
8000091c:	00b52623          	sw	a1,12(a0)
80000920:	00d52823          	sw	a3,16(a0)
80000924:	00367613          	andi	a2,a2,3
80000928:	00052223          	sw	zero,4(a0)
8000092c:	00c50a23          	sb	a2,20(a0)
80000930:	06b00513          	li	a0,107
80000934:	00a90023          	sb	a0,0(s2)
80000938:	01590023          	sb	s5,0(s2)
8000093c:	07200593          	li	a1,114
80000940:	00b90023          	sb	a1,0(s2)
80000944:	00890023          	sb	s0,0(s2)
80000948:	01590023          	sb	s5,0(s2)
8000094c:	01690023          	sb	s6,0(s2)
80000950:	01790023          	sb	s7,0(s2)
80000954:	01490023          	sb	s4,0(s2)
80000958:	01690023          	sb	s6,0(s2)
8000095c:	01690023          	sb	s6,0(s2)
80000960:	01990023          	sb	s9,0(s2)
80000964:	06300513          	li	a0,99
80000968:	00a90023          	sb	a0,0(s2)
8000096c:	01490023          	sb	s4,0(s2)
80000970:	01890023          	sb	s8,0(s2)
80000974:	01990023          	sb	s9,0(s2)
80000978:	00b90023          	sb	a1,0(s2)
8000097c:	01790023          	sb	s7,0(s2)
80000980:	01a90023          	sb	s10,0(s2)
80000984:	00890023          	sb	s0,0(s2)
80000988:	01a90023          	sb	s10,0(s2)
8000098c:	01890023          	sb	s8,0(s2)
80000990:	01a90023          	sb	s10,0(s2)
80000994:	01490023          	sb	s4,0(s2)
80000998:	01690023          	sb	s6,0(s2)
8000099c:	01a90023          	sb	s10,0(s2)
800009a0:	07300513          	li	a0,115
800009a4:	00a90023          	sb	a0,0(s2)
800009a8:	01590023          	sb	s5,0(s2)
800009ac:	01390023          	sb	s3,0(s2)
800009b0:	02100513          	li	a0,33
800009b4:	00a90023          	sb	a0,0(s2)
800009b8:	00a00513          	li	a0,10
800009bc:	00a90023          	sb	a0,0(s2)
800009c0:	0ff0000f          	fence
800009c4:	08012623          	sw	zero,140(sp)
800009c8:	00400513          	li	a0,4
800009cc:	08a12823          	sw	a0,144(sp)
800009d0:	08012a23          	sw	zero,148(sp)
800009d4:	8000c437          	lui	s0,0x8000c
800009d8:	2b840413          	addi	s0,s0,696 # 8000c2b8 <.Lanon.368313aae6f24ed1916c56358b6b666c.44>
800009dc:	0240006f          	j	80000a00 <kernel_main+0x568>
800009e0:	09012503          	lw	a0,144(sp)
800009e4:	001d8593          	addi	a1,s11,1 # 80010001 <KALLOC_BUFFER+0x1>
800009e8:	00950533          	add	a0,a0,s1
800009ec:	01b52023          	sw	s11,0(a0)
800009f0:	08b12a23          	sw	a1,148(sp)
800009f4:	00448493          	addi	s1,s1,4
800009f8:	00058d93          	mv	s11,a1
800009fc:	03358063          	beq	a1,s3,80000a1c <kernel_main+0x584>
80000a00:	08c12503          	lw	a0,140(sp)
80000a04:	fcad9ee3          	bne	s11,a0,800009e0 <kernel_main+0x548>
80000a08:	08c10513          	addi	a0,sp,140
80000a0c:	00040593          	mv	a1,s0
80000a10:	00001097          	auipc	ra,0x1
80000a14:	2fc080e7          	jalr	764(ra) # 80001d0c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80000a18:	fc9ff06f          	j	800009e0 <kernel_main+0x548>
80000a1c:	00000993          	li	s3,0
80000a20:	0a012a23          	sw	zero,180(sp)
80000a24:	0b410a13          	addi	s4,sp,180
80000a28:	8000a4b7          	lui	s1,0x8000a
80000a2c:	9c848493          	addi	s1,s1,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80000a30:	8000c937          	lui	s2,0x8000c
80000a34:	29c90913          	addi	s2,s2,668 # 8000c29c <.Lanon.368313aae6f24ed1916c56358b6b666c.42>
80000a38:	00200a93          	li	s5,2
80000a3c:	0a410b13          	addi	s6,sp,164
80000a40:	00100b93          	li	s7,1
80000a44:	8000c437          	lui	s0,0x8000c
80000a48:	14c40413          	addi	s0,s0,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000a4c:	06400c13          	li	s8,100
80000a50:	00c0006f          	j	80000a5c <kernel_main+0x5c4>
80000a54:	00198993          	addi	s3,s3,1
80000a58:	07898863          	beq	s3,s8,80000ac8 <kernel_main+0x630>
80000a5c:	0b412223          	sw	s4,164(sp)
80000a60:	0a912423          	sw	s1,168(sp)
80000a64:	01212223          	sw	s2,4(sp)
80000a68:	01512423          	sw	s5,8(sp)
80000a6c:	00012a23          	sw	zero,20(sp)
80000a70:	01612623          	sw	s6,12(sp)
80000a74:	01712823          	sw	s7,16(sp)
80000a78:	0b810513          	addi	a0,sp,184
80000a7c:	00410613          	addi	a2,sp,4
80000a80:	00040593          	mv	a1,s0
80000a84:	00007097          	auipc	ra,0x7
80000a88:	51c080e7          	jalr	1308(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000a8c:	1e051463          	bnez	a0,80000c74 <kernel_main+0x7dc>
80000a90:	09412603          	lw	a2,148(sp)
80000a94:	fc0600e3          	beqz	a2,80000a54 <kernel_main+0x5bc>
80000a98:	09012503          	lw	a0,144(sp)
80000a9c:	0b412583          	lw	a1,180(sp)
80000aa0:	00261613          	slli	a2,a2,0x2
80000aa4:	0100006f          	j	80000ab4 <kernel_main+0x61c>
80000aa8:	ffc60613          	addi	a2,a2,-4 # 1ffffc <.Lline_table_start2+0x1fec4e>
80000aac:	00450513          	addi	a0,a0,4
80000ab0:	fa0602e3          	beqz	a2,80000a54 <kernel_main+0x5bc>
80000ab4:	00052683          	lw	a3,0(a0)
80000ab8:	ff3698e3          	bne	a3,s3,80000aa8 <kernel_main+0x610>
80000abc:	00158593          	addi	a1,a1,1
80000ac0:	0ab12a23          	sw	a1,180(sp)
80000ac4:	fe5ff06f          	j	80000aa8 <kernel_main+0x610>
80000ac8:	0b410513          	addi	a0,sp,180
80000acc:	0aa12223          	sw	a0,164(sp)
80000ad0:	0a912423          	sw	s1,168(sp)
80000ad4:	01212223          	sw	s2,4(sp)
80000ad8:	00200513          	li	a0,2
80000adc:	00a12423          	sw	a0,8(sp)
80000ae0:	00012a23          	sw	zero,20(sp)
80000ae4:	0a410513          	addi	a0,sp,164
80000ae8:	00a12623          	sw	a0,12(sp)
80000aec:	00100513          	li	a0,1
80000af0:	00a12823          	sw	a0,16(sp)
80000af4:	8000c5b7          	lui	a1,0x8000c
80000af8:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000afc:	0b810513          	addi	a0,sp,184
80000b00:	00410613          	addi	a2,sp,4
80000b04:	00007097          	auipc	ra,0x7
80000b08:	49c080e7          	jalr	1180(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000b0c:	16051463          	bnez	a0,80000c74 <kernel_main+0x7dc>
80000b10:	08c12683          	lw	a3,140(sp)
80000b14:	02068863          	beqz	a3,80000b44 <kernel_main+0x6ac>
80000b18:	09012583          	lw	a1,144(sp)
80000b1c:	00269693          	slli	a3,a3,0x2
80000b20:	8000f437          	lui	s0,0x8000f
80000b24:	ff040513          	addi	a0,s0,-16 # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
80000b28:	00450513          	addi	a0,a0,4
80000b2c:	00400613          	li	a2,4
80000b30:	00001097          	auipc	ra,0x1
80000b34:	5cc080e7          	jalr	1484(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80000b38:	ff042503          	lw	a0,-16(s0)
80000b3c:	40b50533          	sub	a0,a0,a1
80000b40:	fea42823          	sw	a0,-16(s0)
80000b44:	0ff0000f          	fence
80000b48:	80000537          	lui	a0,0x80000
80000b4c:	10050513          	addi	a0,a0,256 # 80000100 <user_trap>
80000b50:	30551073          	.insn	4, 0x30551073
80000b54:	30002573          	.insn	4, 0x30002573
80000b58:	00300593          	li	a1,3
80000b5c:	00b59593          	slli	a1,a1,0xb
80000b60:	00b56533          	or	a0,a0,a1
80000b64:	30051073          	.insn	4, 0x30051073
80000b68:	08000513          	li	a0,128
80000b6c:	30052073          	.insn	4, 0x30052073
80000b70:	8000e537          	lui	a0,0x8000e
80000b74:	fec54583          	lbu	a1,-20(a0) # 8000dfec <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3>
80000b78:	00058463          	beqz	a1,80000b80 <kernel_main+0x6e8>
80000b7c:	0000006f          	j	80000b7c <kernel_main+0x6e4>
80000b80:	8000e5b7          	lui	a1,0x8000e
80000b84:	fe85a603          	lw	a2,-24(a1) # 8000dfe8 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.2>
80000b88:	8000e6b7          	lui	a3,0x8000e
80000b8c:	fe06a683          	lw	a3,-32(a3) # 8000dfe0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0>
80000b90:	00100713          	li	a4,1
80000b94:	fee50623          	sb	a4,-20(a0)
80000b98:	00160613          	addi	a2,a2,1
80000b9c:	fec5a423          	sw	a2,-24(a1)
80000ba0:	02068463          	beqz	a3,80000bc8 <kernel_main+0x730>
80000ba4:	8000e537          	lui	a0,0x8000e
80000ba8:	fe452403          	lw	s0,-28(a0) # 8000dfe4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1>
80000bac:	00c41413          	slli	s0,s0,0xc
80000bb0:	28040a63          	beqz	s0,80000e44 <kernel_main+0x9ac>
80000bb4:	00042503          	lw	a0,0(s0)
80000bb8:	02050263          	beqz	a0,80000bdc <kernel_main+0x744>
80000bbc:	00442503          	lw	a0,4(s0)
80000bc0:	00100593          	li	a1,1
80000bc4:	01c0006f          	j	80000be0 <kernel_main+0x748>
80000bc8:	fe050623          	sb	zero,-20(a0)
80000bcc:	8000c537          	lui	a0,0x8000c
80000bd0:	44050513          	addi	a0,a0,1088 # 8000c440 <.Lanon.368313aae6f24ed1916c56358b6b666c.69>
80000bd4:	00006097          	auipc	ra,0x6
80000bd8:	358080e7          	jalr	856(ra) # 80006f2c <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>
80000bdc:	00000593          	li	a1,0
80000be0:	8000e637          	lui	a2,0x8000e
80000be4:	feb62023          	sw	a1,-32(a2) # 8000dfe0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0>
80000be8:	8000e5b7          	lui	a1,0x8000e
80000bec:	fea5a223          	sw	a0,-28(a1) # 8000dfe4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1>
80000bf0:	8000e537          	lui	a0,0x8000e
80000bf4:	fe050623          	sb	zero,-20(a0) # 8000dfec <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3>
80000bf8:	08010493          	addi	s1,sp,128
80000bfc:	00410513          	addi	a0,sp,4
80000c00:	07c00613          	li	a2,124
80000c04:	00000593          	li	a1,0
80000c08:	0000a097          	auipc	ra,0xa
80000c0c:	3c4080e7          	jalr	964(ra) # 8000afcc <memset>
80000c10:	80001537          	lui	a0,0x80001
80000c14:	e5450513          	addi	a0,a0,-428 # 80000e54 <_ZN7SuperOS9user_main17hdb789cef18ee1961E>
80000c18:	08a12023          	sw	a0,128(sp)
80000c1c:	08012223          	sw	zero,132(sp)
80000c20:	0a912223          	sw	s1,164(sp)
80000c24:	80009537          	lui	a0,0x80009
80000c28:	7c850513          	addi	a0,a0,1992 # 800097c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000c2c:	0aa12423          	sw	a0,168(sp)
80000c30:	8000c537          	lui	a0,0x8000c
80000c34:	45c50513          	addi	a0,a0,1116 # 8000c45c <.Lanon.368313aae6f24ed1916c56358b6b666c.71>
80000c38:	08a12623          	sw	a0,140(sp)
80000c3c:	00200513          	li	a0,2
80000c40:	08a12823          	sw	a0,144(sp)
80000c44:	08012e23          	sw	zero,156(sp)
80000c48:	0a410513          	addi	a0,sp,164
80000c4c:	08a12a23          	sw	a0,148(sp)
80000c50:	00100513          	li	a0,1
80000c54:	08a12c23          	sw	a0,152(sp)
80000c58:	8000c5b7          	lui	a1,0x8000c
80000c5c:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000c60:	0b810513          	addi	a0,sp,184
80000c64:	08c10613          	addi	a2,sp,140
80000c68:	00007097          	auipc	ra,0x7
80000c6c:	338080e7          	jalr	824(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000c70:	02050663          	beqz	a0,80000c9c <kernel_main+0x804>
80000c74:	8000c537          	lui	a0,0x8000c
80000c78:	17450513          	addi	a0,a0,372 # 8000c174 <.Lanon.368313aae6f24ed1916c56358b6b666c.24>
80000c7c:	8000c6b7          	lui	a3,0x8000c
80000c80:	16468693          	addi	a3,a3,356 # 8000c164 <.Lanon.368313aae6f24ed1916c56358b6b666c.23>
80000c84:	8000c737          	lui	a4,0x8000c
80000c88:	1b070713          	addi	a4,a4,432 # 8000c1b0 <.Lanon.368313aae6f24ed1916c56358b6b666c.26>
80000c8c:	02b00593          	li	a1,43
80000c90:	0b810613          	addi	a2,sp,184
80000c94:	00006097          	auipc	ra,0x6
80000c98:	67c080e7          	jalr	1660(ra) # 80007310 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>
80000c9c:	00001537          	lui	a0,0x1
80000ca0:	ff850513          	addi	a0,a0,-8 # ff8 <.Lline_table_start2+0xc>
80000ca4:	00a46533          	or	a0,s0,a0
80000ca8:	00a12423          	sw	a0,8(sp)
80000cac:	100009b7          	lui	s3,0x10000
80000cb0:	04800513          	li	a0,72
80000cb4:	00a98023          	sb	a0,0(s3) # 10000000 <.Lline_table_start2+0xfffec52>
80000cb8:	06500a13          	li	s4,101
80000cbc:	01498023          	sb	s4,0(s3)
80000cc0:	06c00513          	li	a0,108
80000cc4:	00a98023          	sb	a0,0(s3)
80000cc8:	00a98023          	sb	a0,0(s3)
80000ccc:	06f00593          	li	a1,111
80000cd0:	00b98023          	sb	a1,0(s3)
80000cd4:	02000613          	li	a2,32
80000cd8:	00c98023          	sb	a2,0(s3)
80000cdc:	07700613          	li	a2,119
80000ce0:	00c98023          	sb	a2,0(s3)
80000ce4:	00b98023          	sb	a1,0(s3)
80000ce8:	07200b13          	li	s6,114
80000cec:	01698023          	sb	s6,0(s3)
80000cf0:	00a98023          	sb	a0,0(s3)
80000cf4:	06400513          	li	a0,100
80000cf8:	00a98023          	sb	a0,0(s3)
80000cfc:	02100513          	li	a0,33
80000d00:	00a98023          	sb	a0,0(s3)
80000d04:	00a00513          	li	a0,10
80000d08:	00a98023          	sb	a0,0(s3)
80000d0c:	00f00c13          	li	s8,15
80000d10:	0b410d13          	addi	s10,sp,180
80000d14:	08810d93          	addi	s11,sp,136
80000d18:	80000cb7          	lui	s9,0x80000
80000d1c:	3acc8c93          	addi	s9,s9,940 # 800003ac <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE>
80000d20:	8000cab7          	lui	s5,0x8000c
80000d24:	1d8a8a93          	addi	s5,s5,472 # 8000c1d8 <.Lanon.368313aae6f24ed1916c56358b6b666c.30>
80000d28:	00300b93          	li	s7,3
80000d2c:	8000c437          	lui	s0,0x8000c
80000d30:	14c40413          	addi	s0,s0,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80000d34:	07500493          	li	s1,117
80000d38:	07400913          	li	s2,116
80000d3c:	0740006f          	j	80000db0 <kernel_main+0x918>
80000d40:	06d00513          	li	a0,109
80000d44:	00a98023          	sb	a0,0(s3)
80000d48:	06300513          	li	a0,99
80000d4c:	00a98023          	sb	a0,0(s3)
80000d50:	06100513          	li	a0,97
80000d54:	00a98023          	sb	a0,0(s3)
80000d58:	00998023          	sb	s1,0(s3)
80000d5c:	07300513          	li	a0,115
80000d60:	00a98023          	sb	a0,0(s3)
80000d64:	01498023          	sb	s4,0(s3)
80000d68:	03a00513          	li	a0,58
80000d6c:	00a98023          	sb	a0,0(s3)
80000d70:	02000513          	li	a0,32
80000d74:	00a98023          	sb	a0,0(s3)
80000d78:	06900513          	li	a0,105
80000d7c:	00a98023          	sb	a0,0(s3)
80000d80:	06e00513          	li	a0,110
80000d84:	00a98023          	sb	a0,0(s3)
80000d88:	01298023          	sb	s2,0(s3)
80000d8c:	01498023          	sb	s4,0(s3)
80000d90:	01698023          	sb	s6,0(s3)
80000d94:	01698023          	sb	s6,0(s3)
80000d98:	00998023          	sb	s1,0(s3)
80000d9c:	07000513          	li	a0,112
80000da0:	00a98023          	sb	a0,0(s3)
80000da4:	01298023          	sb	s2,0(s3)
80000da8:	00a00513          	li	a0,10
80000dac:	00a98023          	sb	a0,0(s3)
80000db0:	00410513          	addi	a0,sp,4
80000db4:	fffff097          	auipc	ra,0xfffff
80000db8:	27c080e7          	jalr	636(ra) # 80000030 <run_user>
80000dbc:	34202573          	.insn	4, 0x34202573
80000dc0:	f80540e3          	bltz	a0,80000d40 <kernel_main+0x8a8>
80000dc4:	00e00593          	li	a1,14
80000dc8:	00ac6a63          	bltu	s8,a0,80000ddc <kernel_main+0x944>
80000dcc:	8000c5b7          	lui	a1,0x8000c
80000dd0:	08058593          	addi	a1,a1,128 # 8000c080 <.Lanon.368313aae6f24ed1916c56358b6b666c.7+0x45>
80000dd4:	00a58533          	add	a0,a1,a0
80000dd8:	00054583          	lbu	a1,0(a0)
80000ddc:	08b10423          	sb	a1,136(sp)
80000de0:	34102573          	.insn	4, 0x34102573
80000de4:	0aa12a23          	sw	a0,180(sp)
80000de8:	0ba12223          	sw	s10,164(sp)
80000dec:	80009537          	lui	a0,0x80009
80000df0:	7c850513          	addi	a0,a0,1992 # 800097c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000df4:	0aa12423          	sw	a0,168(sp)
80000df8:	0bb12623          	sw	s11,172(sp)
80000dfc:	0b912823          	sw	s9,176(sp)
80000e00:	09512623          	sw	s5,140(sp)
80000e04:	09712823          	sw	s7,144(sp)
80000e08:	08012e23          	sw	zero,156(sp)
80000e0c:	0a410513          	addi	a0,sp,164
80000e10:	08a12a23          	sw	a0,148(sp)
80000e14:	00200513          	li	a0,2
80000e18:	08a12c23          	sw	a0,152(sp)
80000e1c:	0b810513          	addi	a0,sp,184
80000e20:	08c10613          	addi	a2,sp,140
80000e24:	00040593          	mv	a1,s0
80000e28:	00007097          	auipc	ra,0x7
80000e2c:	178080e7          	jalr	376(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000e30:	e40512e3          	bnez	a0,80000c74 <kernel_main+0x7dc>
80000e34:	08012503          	lw	a0,128(sp)
80000e38:	00450513          	addi	a0,a0,4
80000e3c:	08a12023          	sw	a0,128(sp)
80000e40:	f71ff06f          	j	80000db0 <kernel_main+0x918>
80000e44:	8000c537          	lui	a0,0x8000c
80000e48:	25050513          	addi	a0,a0,592 # 8000c250 <.Lanon.368313aae6f24ed1916c56358b6b666c.37>
80000e4c:	00006097          	auipc	ra,0x6
80000e50:	0e0080e7          	jalr	224(ra) # 80006f2c <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>

80000e54 <_ZN7SuperOS9user_main17hdb789cef18ee1961E>:
80000e54:	f6010113          	addi	sp,sp,-160
80000e58:	08112e23          	sw	ra,156(sp)
80000e5c:	08812c23          	sw	s0,152(sp)
80000e60:	08912a23          	sw	s1,148(sp)
80000e64:	09212823          	sw	s2,144(sp)
80000e68:	09312623          	sw	s3,140(sp)
80000e6c:	09412423          	sw	s4,136(sp)
80000e70:	09512223          	sw	s5,132(sp)
80000e74:	09612023          	sw	s6,128(sp)
80000e78:	07712e23          	sw	s7,124(sp)
80000e7c:	07812c23          	sw	s8,120(sp)
80000e80:	07912a23          	sw	s9,116(sp)
80000e84:	07a12823          	sw	s10,112(sp)
80000e88:	07b12623          	sw	s11,108(sp)
80000e8c:	00400d93          	li	s11,4
80000e90:	8000cab7          	lui	s5,0x8000c
80000e94:	408a8a93          	addi	s5,s5,1032 # 8000c408 <.Lanon.368313aae6f24ed1916c56358b6b666c.66>
80000e98:	00500b13          	li	s6,5
80000e9c:	00200d13          	li	s10,2
80000ea0:	00300413          	li	s0,3
80000ea4:	10000537          	lui	a0,0x10000
80000ea8:	04800593          	li	a1,72
80000eac:	00b50023          	sb	a1,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
80000eb0:	06500593          	li	a1,101
80000eb4:	00b50023          	sb	a1,0(a0)
80000eb8:	06c00613          	li	a2,108
80000ebc:	00c50023          	sb	a2,0(a0)
80000ec0:	00c50023          	sb	a2,0(a0)
80000ec4:	06f00613          	li	a2,111
80000ec8:	00c50023          	sb	a2,0(a0)
80000ecc:	02000613          	li	a2,32
80000ed0:	00c50023          	sb	a2,0(a0)
80000ed4:	07500613          	li	a2,117
80000ed8:	00c50023          	sb	a2,0(a0)
80000edc:	07300613          	li	a2,115
80000ee0:	00c50023          	sb	a2,0(a0)
80000ee4:	00b50023          	sb	a1,0(a0)
80000ee8:	07200593          	li	a1,114
80000eec:	00b50023          	sb	a1,0(a0)
80000ef0:	00c50023          	sb	a2,0(a0)
80000ef4:	02100593          	li	a1,33
80000ef8:	00b50023          	sb	a1,0(a0)
80000efc:	00b50023          	sb	a1,0(a0)
80000f00:	00b50023          	sb	a1,0(a0)
80000f04:	00a00593          	li	a1,10
80000f08:	00b50023          	sb	a1,0(a0)
80000f0c:	b0002573          	.insn	4, 0xb0002573
80000f10:	40a00533          	neg	a0,a0
80000f14:	00a12423          	sw	a0,8(sp)
80000f18:	b0202573          	.insn	4, 0xb0202573
80000f1c:	00000b93          	li	s7,0
80000f20:	40a00533          	neg	a0,a0
80000f24:	00a12623          	sw	a0,12(sp)
80000f28:	00012823          	sw	zero,16(sp)
80000f2c:	01b12a23          	sw	s11,20(sp)
80000f30:	00012c23          	sw	zero,24(sp)
80000f34:	00012e23          	sw	zero,28(sp)
80000f38:	03b12023          	sw	s11,32(sp)
80000f3c:	02012223          	sw	zero,36(sp)
80000f40:	02012423          	sw	zero,40(sp)
80000f44:	03b12623          	sw	s11,44(sp)
80000f48:	02012823          	sw	zero,48(sp)
80000f4c:	02012a23          	sw	zero,52(sp)
80000f50:	0200006f          	j	80000f70 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x11c>
80000f54:	03412503          	lw	a0,52(sp)
80000f58:	3f8005b7          	lui	a1,0x3f800
80000f5c:	00009097          	auipc	ra,0x9
80000f60:	2f4080e7          	jalr	756(ra) # 8000a250 <__addsf3>
80000f64:	02a12a23          	sw	a0,52(sp)
80000f68:	00048b93          	mv	s7,s1
80000f6c:	1f648063          	beq	s1,s6,8000114c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x2f8>
80000f70:	01812903          	lw	s2,24(sp)
80000f74:	01012503          	lw	a0,16(sp)
80000f78:	00a91c63          	bne	s2,a0,80000f90 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x13c>
80000f7c:	01010513          	addi	a0,sp,16
80000f80:	8000c5b7          	lui	a1,0x8000c
80000f84:	38858593          	addi	a1,a1,904 # 8000c388 <.Lanon.368313aae6f24ed1916c56358b6b666c.58>
80000f88:	00001097          	auipc	ra,0x1
80000f8c:	e60080e7          	jalr	-416(ra) # 80001de8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80000f90:	01412503          	lw	a0,20(sp)
80000f94:	00291593          	slli	a1,s2,0x2
80000f98:	00491613          	slli	a2,s2,0x4
80000f9c:	40b60633          	sub	a2,a2,a1
80000fa0:	00c50533          	add	a0,a0,a2
80000fa4:	00052023          	sw	zero,0(a0)
80000fa8:	01b52223          	sw	s11,4(a0)
80000fac:	00052423          	sw	zero,8(a0)
80000fb0:	02412483          	lw	s1,36(sp)
80000fb4:	01c12503          	lw	a0,28(sp)
80000fb8:	00190913          	addi	s2,s2,1
80000fbc:	01212c23          	sw	s2,24(sp)
80000fc0:	00a49c63          	bne	s1,a0,80000fd8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x184>
80000fc4:	01c10513          	addi	a0,sp,28
80000fc8:	8000c5b7          	lui	a1,0x8000c
80000fcc:	39858593          	addi	a1,a1,920 # 8000c398 <.Lanon.368313aae6f24ed1916c56358b6b666c.59>
80000fd0:	00001097          	auipc	ra,0x1
80000fd4:	e18080e7          	jalr	-488(ra) # 80001de8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80000fd8:	02012503          	lw	a0,32(sp)
80000fdc:	00249593          	slli	a1,s1,0x2
80000fe0:	00449613          	slli	a2,s1,0x4
80000fe4:	40b60633          	sub	a2,a2,a1
80000fe8:	00c50533          	add	a0,a0,a2
80000fec:	00052023          	sw	zero,0(a0)
80000ff0:	01b52223          	sw	s11,4(a0)
80000ff4:	00052423          	sw	zero,8(a0)
80000ff8:	03012c03          	lw	s8,48(sp)
80000ffc:	02812503          	lw	a0,40(sp)
80001000:	00148493          	addi	s1,s1,1
80001004:	02912223          	sw	s1,36(sp)
80001008:	00ac1c63          	bne	s8,a0,80001020 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x1cc>
8000100c:	02810513          	addi	a0,sp,40
80001010:	8000c5b7          	lui	a1,0x8000c
80001014:	3a858593          	addi	a1,a1,936 # 8000c3a8 <.Lanon.368313aae6f24ed1916c56358b6b666c.60>
80001018:	00001097          	auipc	ra,0x1
8000101c:	dd0080e7          	jalr	-560(ra) # 80001de8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80001020:	02c12903          	lw	s2,44(sp)
80001024:	001b8493          	addi	s1,s7,1
80001028:	00c00593          	li	a1,12
8000102c:	000c0513          	mv	a0,s8
80001030:	00009097          	auipc	ra,0x9
80001034:	040080e7          	jalr	64(ra) # 8000a070 <__mulsi3>
80001038:	00a90533          	add	a0,s2,a0
8000103c:	00052023          	sw	zero,0(a0)
80001040:	01b52223          	sw	s11,4(a0)
80001044:	00052423          	sw	zero,8(a0)
80001048:	001c0c13          	addi	s8,s8,1
8000104c:	03812823          	sw	s8,48(sp)
80001050:	00500913          	li	s2,5
80001054:	002b9513          	slli	a0,s7,0x2
80001058:	004b9593          	slli	a1,s7,0x4
8000105c:	40a58cb3          	sub	s9,a1,a0
80001060:	0240006f          	j	80001084 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x230>
80001064:	004c2503          	lw	a0,4(s8)
80001068:	00299593          	slli	a1,s3,0x2
8000106c:	00b50533          	add	a0,a0,a1
80001070:	01452023          	sw	s4,0(a0)
80001074:	00198993          	addi	s3,s3,1
80001078:	fff90913          	addi	s2,s2,-1
8000107c:	013c2423          	sw	s3,8(s8)
80001080:	ec090ae3          	beqz	s2,80000f54 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x100>
80001084:	01812583          	lw	a1,24(sp)
80001088:	1abbf0e3          	bgeu	s7,a1,80001a28 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbd4>
8000108c:	01412c03          	lw	s8,20(sp)
80001090:	019c0c33          	add	s8,s8,s9
80001094:	008c2983          	lw	s3,8(s8)
80001098:	000c2503          	lw	a0,0(s8)
8000109c:	00a99c63          	bne	s3,a0,800010b4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x260>
800010a0:	000c0513          	mv	a0,s8
800010a4:	8000c5b7          	lui	a1,0x8000c
800010a8:	3c858593          	addi	a1,a1,968 # 8000c3c8 <.Lanon.368313aae6f24ed1916c56358b6b666c.62>
800010ac:	00001097          	auipc	ra,0x1
800010b0:	c60080e7          	jalr	-928(ra) # 80001d0c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
800010b4:	004c2503          	lw	a0,4(s8)
800010b8:	00299593          	slli	a1,s3,0x2
800010bc:	00b50533          	add	a0,a0,a1
800010c0:	00052023          	sw	zero,0(a0)
800010c4:	00198993          	addi	s3,s3,1
800010c8:	013c2423          	sw	s3,8(s8)
800010cc:	02412583          	lw	a1,36(sp)
800010d0:	16bbf6e3          	bgeu	s7,a1,80001a3c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbe8>
800010d4:	02012c03          	lw	s8,32(sp)
800010d8:	019c0c33          	add	s8,s8,s9
800010dc:	008c2983          	lw	s3,8(s8)
800010e0:	000c2503          	lw	a0,0(s8)
800010e4:	03412a03          	lw	s4,52(sp)
800010e8:	00a99c63          	bne	s3,a0,80001100 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x2ac>
800010ec:	000c0513          	mv	a0,s8
800010f0:	8000c5b7          	lui	a1,0x8000c
800010f4:	3e858593          	addi	a1,a1,1000 # 8000c3e8 <.Lanon.368313aae6f24ed1916c56358b6b666c.64>
800010f8:	00001097          	auipc	ra,0x1
800010fc:	c14080e7          	jalr	-1004(ra) # 80001d0c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80001100:	004c2503          	lw	a0,4(s8)
80001104:	00299593          	slli	a1,s3,0x2
80001108:	00b50533          	add	a0,a0,a1
8000110c:	01452023          	sw	s4,0(a0)
80001110:	00198993          	addi	s3,s3,1
80001114:	013c2423          	sw	s3,8(s8)
80001118:	03012583          	lw	a1,48(sp)
8000111c:	12bbfae3          	bgeu	s7,a1,80001a50 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbfc>
80001120:	02c12c03          	lw	s8,44(sp)
80001124:	019c0c33          	add	s8,s8,s9
80001128:	008c2983          	lw	s3,8(s8)
8000112c:	000c2503          	lw	a0,0(s8)
80001130:	03412a03          	lw	s4,52(sp)
80001134:	f2a998e3          	bne	s3,a0,80001064 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x210>
80001138:	000c0513          	mv	a0,s8
8000113c:	000a8593          	mv	a1,s5
80001140:	00001097          	auipc	ra,0x1
80001144:	bcc080e7          	jalr	-1076(ra) # 80001d0c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80001148:	f1dff06f          	j	80001064 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x210>
8000114c:	03410513          	addi	a0,sp,52
80001150:	04a12a23          	sw	a0,84(sp)
80001154:	80009537          	lui	a0,0x80009
80001158:	76c50513          	addi	a0,a0,1900 # 8000976c <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>
8000115c:	04a12c23          	sw	a0,88(sp)
80001160:	8000c537          	lui	a0,0x8000c
80001164:	2d050513          	addi	a0,a0,720 # 8000c2d0 <.Lanon.368313aae6f24ed1916c56358b6b666c.46>
80001168:	02a12e23          	sw	a0,60(sp)
8000116c:	05a12023          	sw	s10,64(sp)
80001170:	04012623          	sw	zero,76(sp)
80001174:	05410513          	addi	a0,sp,84
80001178:	04a12223          	sw	a0,68(sp)
8000117c:	00100513          	li	a0,1
80001180:	04a12423          	sw	a0,72(sp)
80001184:	06b10513          	addi	a0,sp,107
80001188:	03c10613          	addi	a2,sp,60
8000118c:	8000c5b7          	lui	a1,0x8000c
80001190:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80001194:	00007097          	auipc	ra,0x7
80001198:	e0c080e7          	jalr	-500(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
8000119c:	140510e3          	bnez	a0,80001adc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc88>
800011a0:	00000c93          	li	s9,0
800011a4:	00000913          	li	s2,0
800011a8:	00000b93          	li	s7,0
800011ac:	000c8c13          	mv	s8,s9
800011b0:	001c8c93          	addi	s9,s9,1
800011b4:	02412583          	lw	a1,36(sp)
800011b8:	02bc70e3          	bgeu	s8,a1,800019d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb84>
800011bc:	02012503          	lw	a0,32(sp)
800011c0:	002c1593          	slli	a1,s8,0x2
800011c4:	004c1493          	slli	s1,s8,0x4
800011c8:	40b484b3          	sub	s1,s1,a1
800011cc:	00950533          	add	a0,a0,s1
800011d0:	00852583          	lw	a1,8(a0)
800011d4:	08058ce3          	beqz	a1,80001a6c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc18>
800011d8:	03012583          	lw	a1,48(sp)
800011dc:	080584e3          	beqz	a1,80001a64 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc10>
800011e0:	02c12603          	lw	a2,44(sp)
800011e4:	00862583          	lw	a1,8(a2)
800011e8:	00bbfce3          	bgeu	s7,a1,80001a00 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbac>
800011ec:	00452503          	lw	a0,4(a0)
800011f0:	00462583          	lw	a1,4(a2)
800011f4:	00052503          	lw	a0,0(a0)
800011f8:	012585b3          	add	a1,a1,s2
800011fc:	0005a583          	lw	a1,0(a1)
80001200:	0000a097          	auipc	ra,0xa
80001204:	a98080e7          	jalr	-1384(ra) # 8000ac98 <__mulsf3>
80001208:	01812583          	lw	a1,24(sp)
8000120c:	7ebc7063          	bgeu	s8,a1,800019ec <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb98>
80001210:	01412603          	lw	a2,20(sp)
80001214:	00960633          	add	a2,a2,s1
80001218:	00862583          	lw	a1,8(a2)
8000121c:	7ebbfc63          	bgeu	s7,a1,80001a14 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbc0>
80001220:	00462583          	lw	a1,4(a2)
80001224:	012589b3          	add	s3,a1,s2
80001228:	0009a583          	lw	a1,0(s3)
8000122c:	00009097          	auipc	ra,0x9
80001230:	024080e7          	jalr	36(ra) # 8000a250 <__addsf3>
80001234:	00a9a023          	sw	a0,0(s3)
80001238:	02412583          	lw	a1,36(sp)
8000123c:	78bc7e63          	bgeu	s8,a1,800019d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb84>
80001240:	02012503          	lw	a0,32(sp)
80001244:	00950533          	add	a0,a0,s1
80001248:	00852583          	lw	a1,8(a0)
8000124c:	03a5ece3          	bltu	a1,s10,80001a84 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc30>
80001250:	03012583          	lw	a1,48(sp)
80001254:	03a5ece3          	bltu	a1,s10,80001a8c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc38>
80001258:	02c12603          	lw	a2,44(sp)
8000125c:	01462583          	lw	a1,20(a2)
80001260:	7abbf063          	bgeu	s7,a1,80001a00 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbac>
80001264:	00452503          	lw	a0,4(a0)
80001268:	01062583          	lw	a1,16(a2)
8000126c:	00452503          	lw	a0,4(a0)
80001270:	012585b3          	add	a1,a1,s2
80001274:	0005a583          	lw	a1,0(a1)
80001278:	0000a097          	auipc	ra,0xa
8000127c:	a20080e7          	jalr	-1504(ra) # 8000ac98 <__mulsf3>
80001280:	01812583          	lw	a1,24(sp)
80001284:	76bc7463          	bgeu	s8,a1,800019ec <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb98>
80001288:	01412603          	lw	a2,20(sp)
8000128c:	00960633          	add	a2,a2,s1
80001290:	00862583          	lw	a1,8(a2)
80001294:	78bbf063          	bgeu	s7,a1,80001a14 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbc0>
80001298:	00462583          	lw	a1,4(a2)
8000129c:	012589b3          	add	s3,a1,s2
800012a0:	0009a583          	lw	a1,0(s3)
800012a4:	00009097          	auipc	ra,0x9
800012a8:	fac080e7          	jalr	-84(ra) # 8000a250 <__addsf3>
800012ac:	00a9a023          	sw	a0,0(s3)
800012b0:	02412583          	lw	a1,36(sp)
800012b4:	72bc7263          	bgeu	s8,a1,800019d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb84>
800012b8:	02012503          	lw	a0,32(sp)
800012bc:	00950533          	add	a0,a0,s1
800012c0:	00852583          	lw	a1,8(a0)
800012c4:	7a85ec63          	bltu	a1,s0,80001a7c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc28>
800012c8:	03012583          	lw	a1,48(sp)
800012cc:	7a85e463          	bltu	a1,s0,80001a74 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc20>
800012d0:	02c12603          	lw	a2,44(sp)
800012d4:	02062583          	lw	a1,32(a2)
800012d8:	72bbf463          	bgeu	s7,a1,80001a00 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbac>
800012dc:	00452503          	lw	a0,4(a0)
800012e0:	01c62583          	lw	a1,28(a2)
800012e4:	00852503          	lw	a0,8(a0)
800012e8:	012585b3          	add	a1,a1,s2
800012ec:	0005a583          	lw	a1,0(a1)
800012f0:	0000a097          	auipc	ra,0xa
800012f4:	9a8080e7          	jalr	-1624(ra) # 8000ac98 <__mulsf3>
800012f8:	01812583          	lw	a1,24(sp)
800012fc:	6ebc7863          	bgeu	s8,a1,800019ec <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb98>
80001300:	01412603          	lw	a2,20(sp)
80001304:	00960633          	add	a2,a2,s1
80001308:	00862583          	lw	a1,8(a2)
8000130c:	70bbf463          	bgeu	s7,a1,80001a14 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbc0>
80001310:	00462583          	lw	a1,4(a2)
80001314:	012589b3          	add	s3,a1,s2
80001318:	0009a583          	lw	a1,0(s3)
8000131c:	00009097          	auipc	ra,0x9
80001320:	f34080e7          	jalr	-204(ra) # 8000a250 <__addsf3>
80001324:	00a9a023          	sw	a0,0(s3)
80001328:	02412583          	lw	a1,36(sp)
8000132c:	6abc7663          	bgeu	s8,a1,800019d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb84>
80001330:	02012503          	lw	a0,32(sp)
80001334:	00950533          	add	a0,a0,s1
80001338:	00852583          	lw	a1,8(a0)
8000133c:	77b5ee63          	bltu	a1,s11,80001ab8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc64>
80001340:	03012583          	lw	a1,48(sp)
80001344:	77b5e063          	bltu	a1,s11,80001aa4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc50>
80001348:	02c12603          	lw	a2,44(sp)
8000134c:	02c62583          	lw	a1,44(a2)
80001350:	6abbf863          	bgeu	s7,a1,80001a00 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbac>
80001354:	00452503          	lw	a0,4(a0)
80001358:	02862583          	lw	a1,40(a2)
8000135c:	00c52503          	lw	a0,12(a0)
80001360:	012585b3          	add	a1,a1,s2
80001364:	0005a583          	lw	a1,0(a1)
80001368:	0000a097          	auipc	ra,0xa
8000136c:	930080e7          	jalr	-1744(ra) # 8000ac98 <__mulsf3>
80001370:	01812583          	lw	a1,24(sp)
80001374:	66bc7c63          	bgeu	s8,a1,800019ec <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb98>
80001378:	01412603          	lw	a2,20(sp)
8000137c:	00960633          	add	a2,a2,s1
80001380:	00862583          	lw	a1,8(a2)
80001384:	68bbf863          	bgeu	s7,a1,80001a14 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbc0>
80001388:	00462583          	lw	a1,4(a2)
8000138c:	012589b3          	add	s3,a1,s2
80001390:	0009a583          	lw	a1,0(s3)
80001394:	00009097          	auipc	ra,0x9
80001398:	ebc080e7          	jalr	-324(ra) # 8000a250 <__addsf3>
8000139c:	00a9a023          	sw	a0,0(s3)
800013a0:	02412583          	lw	a1,36(sp)
800013a4:	62bc7a63          	bgeu	s8,a1,800019d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb84>
800013a8:	02012503          	lw	a0,32(sp)
800013ac:	00950533          	add	a0,a0,s1
800013b0:	00852583          	lw	a1,8(a0)
800013b4:	6f65e463          	bltu	a1,s6,80001a9c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc48>
800013b8:	03012583          	lw	a1,48(sp)
800013bc:	6d65ec63          	bltu	a1,s6,80001a94 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc40>
800013c0:	02c12603          	lw	a2,44(sp)
800013c4:	03862583          	lw	a1,56(a2)
800013c8:	62bbfc63          	bgeu	s7,a1,80001a00 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbac>
800013cc:	00452503          	lw	a0,4(a0)
800013d0:	03462583          	lw	a1,52(a2)
800013d4:	01052503          	lw	a0,16(a0)
800013d8:	012585b3          	add	a1,a1,s2
800013dc:	0005a583          	lw	a1,0(a1)
800013e0:	0000a097          	auipc	ra,0xa
800013e4:	8b8080e7          	jalr	-1864(ra) # 8000ac98 <__mulsf3>
800013e8:	01812583          	lw	a1,24(sp)
800013ec:	60bc7063          	bgeu	s8,a1,800019ec <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb98>
800013f0:	01412583          	lw	a1,20(sp)
800013f4:	009584b3          	add	s1,a1,s1
800013f8:	0084a583          	lw	a1,8(s1)
800013fc:	60bbfc63          	bgeu	s7,a1,80001a14 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xbc0>
80001400:	0044a583          	lw	a1,4(s1)
80001404:	012584b3          	add	s1,a1,s2
80001408:	0004a583          	lw	a1,0(s1)
8000140c:	00009097          	auipc	ra,0x9
80001410:	e44080e7          	jalr	-444(ra) # 8000a250 <__addsf3>
80001414:	00a4a023          	sw	a0,0(s1)
80001418:	001b8b93          	addi	s7,s7,1
8000141c:	00490913          	addi	s2,s2,4
80001420:	d96beae3          	bltu	s7,s6,800011b4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x360>
80001424:	d96c90e3          	bne	s9,s6,800011a4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x350>
80001428:	01812983          	lw	s3,24(sp)
8000142c:	6e098863          	beqz	s3,80001b1c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcc8>
80001430:	01412903          	lw	s2,20(sp)
80001434:	00892583          	lw	a1,8(s2)
80001438:	68058a63          	beqz	a1,80001acc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc78>
8000143c:	00100513          	li	a0,1
80001440:	6ca58463          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001444:	00200513          	li	a0,2
80001448:	6c85e063          	bltu	a1,s0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
8000144c:	00300513          	li	a0,3
80001450:	6aa58c63          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001454:	6965e063          	bltu	a1,s6,80001ad4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc80>
80001458:	00492483          	lw	s1,4(s2)
8000145c:	00c4ab83          	lw	s7,12(s1)
80001460:	0084ac03          	lw	s8,8(s1)
80001464:	0044ac83          	lw	s9,4(s1)
80001468:	0004a503          	lw	a0,0(s1)
8000146c:	00000593          	li	a1,0
80001470:	00009097          	auipc	ra,0x9
80001474:	de0080e7          	jalr	-544(ra) # 8000a250 <__addsf3>
80001478:	00050593          	mv	a1,a0
8000147c:	000c8513          	mv	a0,s9
80001480:	00009097          	auipc	ra,0x9
80001484:	dd0080e7          	jalr	-560(ra) # 8000a250 <__addsf3>
80001488:	00050593          	mv	a1,a0
8000148c:	000c0513          	mv	a0,s8
80001490:	00009097          	auipc	ra,0x9
80001494:	dc0080e7          	jalr	-576(ra) # 8000a250 <__addsf3>
80001498:	00050593          	mv	a1,a0
8000149c:	000b8513          	mv	a0,s7
800014a0:	00009097          	auipc	ra,0x9
800014a4:	db0080e7          	jalr	-592(ra) # 8000a250 <__addsf3>
800014a8:	0104a583          	lw	a1,16(s1)
800014ac:	00050613          	mv	a2,a0
800014b0:	00058513          	mv	a0,a1
800014b4:	00060593          	mv	a1,a2
800014b8:	00009097          	auipc	ra,0x9
800014bc:	d98080e7          	jalr	-616(ra) # 8000a250 <__addsf3>
800014c0:	00050613          	mv	a2,a0
800014c4:	00100513          	li	a0,1
800014c8:	02c12c23          	sw	a2,56(sp)
800014cc:	64a98a63          	beq	s3,a0,80001b20 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xccc>
800014d0:	01492583          	lw	a1,20(s2)
800014d4:	5e058c63          	beqz	a1,80001acc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc78>
800014d8:	00100513          	li	a0,1
800014dc:	62a58663          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
800014e0:	00200513          	li	a0,2
800014e4:	6285e263          	bltu	a1,s0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
800014e8:	00300513          	li	a0,3
800014ec:	60a58e63          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
800014f0:	5f65e263          	bltu	a1,s6,80001ad4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc80>
800014f4:	01092483          	lw	s1,16(s2)
800014f8:	00c4ab83          	lw	s7,12(s1)
800014fc:	0084ac03          	lw	s8,8(s1)
80001500:	0044ac83          	lw	s9,4(s1)
80001504:	0004a583          	lw	a1,0(s1)
80001508:	00060513          	mv	a0,a2
8000150c:	00009097          	auipc	ra,0x9
80001510:	d44080e7          	jalr	-700(ra) # 8000a250 <__addsf3>
80001514:	00050593          	mv	a1,a0
80001518:	000c8513          	mv	a0,s9
8000151c:	00009097          	auipc	ra,0x9
80001520:	d34080e7          	jalr	-716(ra) # 8000a250 <__addsf3>
80001524:	00050593          	mv	a1,a0
80001528:	000c0513          	mv	a0,s8
8000152c:	00009097          	auipc	ra,0x9
80001530:	d24080e7          	jalr	-732(ra) # 8000a250 <__addsf3>
80001534:	00050593          	mv	a1,a0
80001538:	000b8513          	mv	a0,s7
8000153c:	00009097          	auipc	ra,0x9
80001540:	d14080e7          	jalr	-748(ra) # 8000a250 <__addsf3>
80001544:	0104a583          	lw	a1,16(s1)
80001548:	00050613          	mv	a2,a0
8000154c:	00058513          	mv	a0,a1
80001550:	00060593          	mv	a1,a2
80001554:	00009097          	auipc	ra,0x9
80001558:	cfc080e7          	jalr	-772(ra) # 8000a250 <__addsf3>
8000155c:	00050613          	mv	a2,a0
80001560:	00200513          	li	a0,2
80001564:	02c12c23          	sw	a2,56(sp)
80001568:	5aa98c63          	beq	s3,a0,80001b20 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xccc>
8000156c:	02092583          	lw	a1,32(s2)
80001570:	54058e63          	beqz	a1,80001acc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc78>
80001574:	00100513          	li	a0,1
80001578:	58a58863          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
8000157c:	5885e463          	bltu	a1,s0,80001b04 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb0>
80001580:	00300513          	li	a0,3
80001584:	58a58263          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001588:	5565e663          	bltu	a1,s6,80001ad4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc80>
8000158c:	01c92483          	lw	s1,28(s2)
80001590:	00c4ab83          	lw	s7,12(s1)
80001594:	0084ac03          	lw	s8,8(s1)
80001598:	0044ac83          	lw	s9,4(s1)
8000159c:	0004a583          	lw	a1,0(s1)
800015a0:	00060513          	mv	a0,a2
800015a4:	00009097          	auipc	ra,0x9
800015a8:	cac080e7          	jalr	-852(ra) # 8000a250 <__addsf3>
800015ac:	00050593          	mv	a1,a0
800015b0:	000c8513          	mv	a0,s9
800015b4:	00009097          	auipc	ra,0x9
800015b8:	c9c080e7          	jalr	-868(ra) # 8000a250 <__addsf3>
800015bc:	00050593          	mv	a1,a0
800015c0:	000c0513          	mv	a0,s8
800015c4:	00009097          	auipc	ra,0x9
800015c8:	c8c080e7          	jalr	-884(ra) # 8000a250 <__addsf3>
800015cc:	00050593          	mv	a1,a0
800015d0:	000b8513          	mv	a0,s7
800015d4:	00009097          	auipc	ra,0x9
800015d8:	c7c080e7          	jalr	-900(ra) # 8000a250 <__addsf3>
800015dc:	0104a583          	lw	a1,16(s1)
800015e0:	00050613          	mv	a2,a0
800015e4:	00058513          	mv	a0,a1
800015e8:	00060593          	mv	a1,a2
800015ec:	00009097          	auipc	ra,0x9
800015f0:	c64080e7          	jalr	-924(ra) # 8000a250 <__addsf3>
800015f4:	00050613          	mv	a2,a0
800015f8:	00300513          	li	a0,3
800015fc:	02c12c23          	sw	a2,56(sp)
80001600:	52a98063          	beq	s3,a0,80001b20 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xccc>
80001604:	02c92583          	lw	a1,44(s2)
80001608:	4c058263          	beqz	a1,80001acc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc78>
8000160c:	00100513          	li	a0,1
80001610:	4ea58c63          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001614:	4e85e863          	bltu	a1,s0,80001b04 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb0>
80001618:	00300513          	li	a0,3
8000161c:	4ea58663          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001620:	00400513          	li	a0,4
80001624:	4f65e263          	bltu	a1,s6,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001628:	02892483          	lw	s1,40(s2)
8000162c:	00c4ab83          	lw	s7,12(s1)
80001630:	0084ac03          	lw	s8,8(s1)
80001634:	0044ac83          	lw	s9,4(s1)
80001638:	0004a583          	lw	a1,0(s1)
8000163c:	00060513          	mv	a0,a2
80001640:	00009097          	auipc	ra,0x9
80001644:	c10080e7          	jalr	-1008(ra) # 8000a250 <__addsf3>
80001648:	00050593          	mv	a1,a0
8000164c:	000c8513          	mv	a0,s9
80001650:	00009097          	auipc	ra,0x9
80001654:	c00080e7          	jalr	-1024(ra) # 8000a250 <__addsf3>
80001658:	00050593          	mv	a1,a0
8000165c:	000c0513          	mv	a0,s8
80001660:	00009097          	auipc	ra,0x9
80001664:	bf0080e7          	jalr	-1040(ra) # 8000a250 <__addsf3>
80001668:	00050593          	mv	a1,a0
8000166c:	000b8513          	mv	a0,s7
80001670:	00009097          	auipc	ra,0x9
80001674:	be0080e7          	jalr	-1056(ra) # 8000a250 <__addsf3>
80001678:	0104a583          	lw	a1,16(s1)
8000167c:	00050613          	mv	a2,a0
80001680:	00058513          	mv	a0,a1
80001684:	00060593          	mv	a1,a2
80001688:	00009097          	auipc	ra,0x9
8000168c:	bc8080e7          	jalr	-1080(ra) # 8000a250 <__addsf3>
80001690:	00050613          	mv	a2,a0
80001694:	00400513          	li	a0,4
80001698:	02c12c23          	sw	a2,56(sp)
8000169c:	48a98263          	beq	s3,a0,80001b20 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xccc>
800016a0:	03892583          	lw	a1,56(s2)
800016a4:	42058463          	beqz	a1,80001acc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc78>
800016a8:	00100513          	li	a0,1
800016ac:	44a58e63          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
800016b0:	00200513          	li	a0,2
800016b4:	4485ea63          	bltu	a1,s0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
800016b8:	00300513          	li	a0,3
800016bc:	44a58663          	beq	a1,a0,80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
800016c0:	4165ea63          	bltu	a1,s6,80001ad4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc80>
800016c4:	03492483          	lw	s1,52(s2)
800016c8:	00c4ab83          	lw	s7,12(s1)
800016cc:	0084ac03          	lw	s8,8(s1)
800016d0:	0044ac83          	lw	s9,4(s1)
800016d4:	0004a583          	lw	a1,0(s1)
800016d8:	00060513          	mv	a0,a2
800016dc:	00009097          	auipc	ra,0x9
800016e0:	b74080e7          	jalr	-1164(ra) # 8000a250 <__addsf3>
800016e4:	00050593          	mv	a1,a0
800016e8:	000c8513          	mv	a0,s9
800016ec:	00009097          	auipc	ra,0x9
800016f0:	b64080e7          	jalr	-1180(ra) # 8000a250 <__addsf3>
800016f4:	00050593          	mv	a1,a0
800016f8:	000c0513          	mv	a0,s8
800016fc:	00009097          	auipc	ra,0x9
80001700:	b54080e7          	jalr	-1196(ra) # 8000a250 <__addsf3>
80001704:	00050593          	mv	a1,a0
80001708:	000b8513          	mv	a0,s7
8000170c:	00009097          	auipc	ra,0x9
80001710:	b44080e7          	jalr	-1212(ra) # 8000a250 <__addsf3>
80001714:	0104a583          	lw	a1,16(s1)
80001718:	00050613          	mv	a2,a0
8000171c:	00058513          	mv	a0,a1
80001720:	00060593          	mv	a1,a2
80001724:	00009097          	auipc	ra,0x9
80001728:	b2c080e7          	jalr	-1236(ra) # 8000a250 <__addsf3>
8000172c:	02a12c23          	sw	a0,56(sp)
80001730:	1f400513          	li	a0,500
80001734:	06a12223          	sw	a0,100(sp)
80001738:	03810513          	addi	a0,sp,56
8000173c:	04a12a23          	sw	a0,84(sp)
80001740:	80009537          	lui	a0,0x80009
80001744:	76c50513          	addi	a0,a0,1900 # 8000976c <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>
80001748:	04a12c23          	sw	a0,88(sp)
8000174c:	06410513          	addi	a0,sp,100
80001750:	04a12e23          	sw	a0,92(sp)
80001754:	8000a537          	lui	a0,0x8000a
80001758:	9c850513          	addi	a0,a0,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
8000175c:	06a12023          	sw	a0,96(sp)
80001760:	8000c537          	lui	a0,0x8000c
80001764:	2f050513          	addi	a0,a0,752 # 8000c2f0 <.Lanon.368313aae6f24ed1916c56358b6b666c.49>
80001768:	02a12e23          	sw	a0,60(sp)
8000176c:	04812023          	sw	s0,64(sp)
80001770:	04012623          	sw	zero,76(sp)
80001774:	05410513          	addi	a0,sp,84
80001778:	04a12223          	sw	a0,68(sp)
8000177c:	05a12423          	sw	s10,72(sp)
80001780:	06b10513          	addi	a0,sp,107
80001784:	03c10613          	addi	a2,sp,60
80001788:	8000c5b7          	lui	a1,0x8000c
8000178c:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
80001790:	00007097          	auipc	ra,0x7
80001794:	810080e7          	jalr	-2032(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001798:	34051263          	bnez	a0,80001adc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc88>
8000179c:	03012903          	lw	s2,48(sp)
800017a0:	8000f537          	lui	a0,0x8000f
800017a4:	ff050493          	addi	s1,a0,-16 # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
800017a8:	04090863          	beqz	s2,800017f8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x9a4>
800017ac:	02c12b83          	lw	s7,44(sp)
800017b0:	004b8b93          	addi	s7,s7,4
800017b4:	0100006f          	j	800017c4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x970>
800017b8:	fff90913          	addi	s2,s2,-1
800017bc:	00cb8b93          	addi	s7,s7,12
800017c0:	02090c63          	beqz	s2,800017f8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x9a4>
800017c4:	ffcba683          	lw	a3,-4(s7)
800017c8:	fe0688e3          	beqz	a3,800017b8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x964>
800017cc:	000ba583          	lw	a1,0(s7)
800017d0:	00269693          	slli	a3,a3,0x2
800017d4:	00448513          	addi	a0,s1,4
800017d8:	00400613          	li	a2,4
800017dc:	00001097          	auipc	ra,0x1
800017e0:	920080e7          	jalr	-1760(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800017e4:	8000f637          	lui	a2,0x8000f
800017e8:	ff062503          	lw	a0,-16(a2) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
800017ec:	40b50533          	sub	a0,a0,a1
800017f0:	fea62823          	sw	a0,-16(a2)
800017f4:	fc5ff06f          	j	800017b8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x964>
800017f8:	02812503          	lw	a0,40(sp)
800017fc:	02050c63          	beqz	a0,80001834 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x9e0>
80001800:	00c00593          	li	a1,12
80001804:	00009097          	auipc	ra,0x9
80001808:	86c080e7          	jalr	-1940(ra) # 8000a070 <__mulsi3>
8000180c:	02c12583          	lw	a1,44(sp)
80001810:	00050693          	mv	a3,a0
80001814:	00448513          	addi	a0,s1,4
80001818:	00400613          	li	a2,4
8000181c:	00001097          	auipc	ra,0x1
80001820:	8e0080e7          	jalr	-1824(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001824:	8000f637          	lui	a2,0x8000f
80001828:	ff062503          	lw	a0,-16(a2) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
8000182c:	40b50533          	sub	a0,a0,a1
80001830:	fea62823          	sw	a0,-16(a2)
80001834:	02412903          	lw	s2,36(sp)
80001838:	04090863          	beqz	s2,80001888 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa34>
8000183c:	02012b83          	lw	s7,32(sp)
80001840:	004b8b93          	addi	s7,s7,4
80001844:	0100006f          	j	80001854 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa00>
80001848:	fff90913          	addi	s2,s2,-1
8000184c:	00cb8b93          	addi	s7,s7,12
80001850:	02090c63          	beqz	s2,80001888 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa34>
80001854:	ffcba683          	lw	a3,-4(s7)
80001858:	fe0688e3          	beqz	a3,80001848 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x9f4>
8000185c:	000ba583          	lw	a1,0(s7)
80001860:	00269693          	slli	a3,a3,0x2
80001864:	00448513          	addi	a0,s1,4
80001868:	00400613          	li	a2,4
8000186c:	00001097          	auipc	ra,0x1
80001870:	890080e7          	jalr	-1904(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001874:	8000f637          	lui	a2,0x8000f
80001878:	ff062503          	lw	a0,-16(a2) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
8000187c:	40b50533          	sub	a0,a0,a1
80001880:	fea62823          	sw	a0,-16(a2)
80001884:	fc5ff06f          	j	80001848 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x9f4>
80001888:	01c12503          	lw	a0,28(sp)
8000188c:	02050c63          	beqz	a0,800018c4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa70>
80001890:	00c00593          	li	a1,12
80001894:	00008097          	auipc	ra,0x8
80001898:	7dc080e7          	jalr	2012(ra) # 8000a070 <__mulsi3>
8000189c:	02012583          	lw	a1,32(sp)
800018a0:	00050693          	mv	a3,a0
800018a4:	00448513          	addi	a0,s1,4
800018a8:	00400613          	li	a2,4
800018ac:	00001097          	auipc	ra,0x1
800018b0:	850080e7          	jalr	-1968(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800018b4:	8000f637          	lui	a2,0x8000f
800018b8:	ff062503          	lw	a0,-16(a2) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
800018bc:	40b50533          	sub	a0,a0,a1
800018c0:	fea62823          	sw	a0,-16(a2)
800018c4:	01812903          	lw	s2,24(sp)
800018c8:	04090863          	beqz	s2,80001918 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xac4>
800018cc:	01412b83          	lw	s7,20(sp)
800018d0:	004b8b93          	addi	s7,s7,4
800018d4:	0100006f          	j	800018e4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa90>
800018d8:	fff90913          	addi	s2,s2,-1
800018dc:	00cb8b93          	addi	s7,s7,12
800018e0:	02090c63          	beqz	s2,80001918 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xac4>
800018e4:	ffcba683          	lw	a3,-4(s7)
800018e8:	fe0688e3          	beqz	a3,800018d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa84>
800018ec:	000ba583          	lw	a1,0(s7)
800018f0:	00269693          	slli	a3,a3,0x2
800018f4:	00448513          	addi	a0,s1,4
800018f8:	00400613          	li	a2,4
800018fc:	00001097          	auipc	ra,0x1
80001900:	800080e7          	jalr	-2048(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001904:	8000f637          	lui	a2,0x8000f
80001908:	ff062503          	lw	a0,-16(a2) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
8000190c:	40b50533          	sub	a0,a0,a1
80001910:	fea62823          	sw	a0,-16(a2)
80001914:	fc5ff06f          	j	800018d8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xa84>
80001918:	01012503          	lw	a0,16(sp)
8000191c:	02050c63          	beqz	a0,80001954 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xb00>
80001920:	00c00593          	li	a1,12
80001924:	00008097          	auipc	ra,0x8
80001928:	74c080e7          	jalr	1868(ra) # 8000a070 <__mulsi3>
8000192c:	01412583          	lw	a1,20(sp)
80001930:	00050693          	mv	a3,a0
80001934:	00448513          	addi	a0,s1,4
80001938:	00400613          	li	a2,4
8000193c:	00000097          	auipc	ra,0x0
80001940:	7c0080e7          	jalr	1984(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001944:	8000f637          	lui	a2,0x8000f
80001948:	ff062503          	lw	a0,-16(a2) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
8000194c:	40b50533          	sub	a0,a0,a1
80001950:	fea62823          	sw	a0,-16(a2)
80001954:	b0002573          	.insn	4, 0xb0002573
80001958:	00812583          	lw	a1,8(sp)
8000195c:	00a58533          	add	a0,a1,a0
80001960:	00a12423          	sw	a0,8(sp)
80001964:	b0202573          	.insn	4, 0xb0202573
80001968:	00c12583          	lw	a1,12(sp)
8000196c:	00a58533          	add	a0,a1,a0
80001970:	00a12623          	sw	a0,12(sp)
80001974:	00810513          	addi	a0,sp,8
80001978:	04a12a23          	sw	a0,84(sp)
8000197c:	8000a537          	lui	a0,0x8000a
80001980:	9c850513          	addi	a0,a0,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80001984:	04a12c23          	sw	a0,88(sp)
80001988:	00c10593          	addi	a1,sp,12
8000198c:	04b12e23          	sw	a1,92(sp)
80001990:	06a12023          	sw	a0,96(sp)
80001994:	8000c537          	lui	a0,0x8000c
80001998:	47c50513          	addi	a0,a0,1148 # 8000c47c <.Lanon.368313aae6f24ed1916c56358b6b666c.74>
8000199c:	02a12e23          	sw	a0,60(sp)
800019a0:	04812023          	sw	s0,64(sp)
800019a4:	04012623          	sw	zero,76(sp)
800019a8:	05410513          	addi	a0,sp,84
800019ac:	04a12223          	sw	a0,68(sp)
800019b0:	05a12423          	sw	s10,72(sp)
800019b4:	06b10513          	addi	a0,sp,107
800019b8:	03c10613          	addi	a2,sp,60
800019bc:	8000c5b7          	lui	a1,0x8000c
800019c0:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>
800019c4:	00006097          	auipc	ra,0x6
800019c8:	5dc080e7          	jalr	1500(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800019cc:	10051863          	bnez	a0,80001adc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc88>
800019d0:	00000073          	ecall
800019d4:	cd0ff06f          	j	80000ea4 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x50>
800019d8:	8000c637          	lui	a2,0x8000c
800019dc:	32860613          	addi	a2,a2,808 # 8000c328 <.Lanon.368313aae6f24ed1916c56358b6b666c.52>
800019e0:	000c0513          	mv	a0,s8
800019e4:	00005097          	auipc	ra,0x5
800019e8:	730080e7          	jalr	1840(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800019ec:	8000c637          	lui	a2,0x8000c
800019f0:	36860613          	addi	a2,a2,872 # 8000c368 <.Lanon.368313aae6f24ed1916c56358b6b666c.56>
800019f4:	000c0513          	mv	a0,s8
800019f8:	00005097          	auipc	ra,0x5
800019fc:	71c080e7          	jalr	1820(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a00:	8000c637          	lui	a2,0x8000c
80001a04:	35860613          	addi	a2,a2,856 # 8000c358 <.Lanon.368313aae6f24ed1916c56358b6b666c.55>
80001a08:	000b8513          	mv	a0,s7
80001a0c:	00005097          	auipc	ra,0x5
80001a10:	708080e7          	jalr	1800(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a14:	8000c637          	lui	a2,0x8000c
80001a18:	37860613          	addi	a2,a2,888 # 8000c378 <.Lanon.368313aae6f24ed1916c56358b6b666c.57>
80001a1c:	000b8513          	mv	a0,s7
80001a20:	00005097          	auipc	ra,0x5
80001a24:	6f4080e7          	jalr	1780(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a28:	8000c637          	lui	a2,0x8000c
80001a2c:	3b860613          	addi	a2,a2,952 # 8000c3b8 <.Lanon.368313aae6f24ed1916c56358b6b666c.61>
80001a30:	000b8513          	mv	a0,s7
80001a34:	00005097          	auipc	ra,0x5
80001a38:	6e0080e7          	jalr	1760(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a3c:	8000c637          	lui	a2,0x8000c
80001a40:	3d860613          	addi	a2,a2,984 # 8000c3d8 <.Lanon.368313aae6f24ed1916c56358b6b666c.63>
80001a44:	000b8513          	mv	a0,s7
80001a48:	00005097          	auipc	ra,0x5
80001a4c:	6cc080e7          	jalr	1740(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a50:	8000c637          	lui	a2,0x8000c
80001a54:	3f860613          	addi	a2,a2,1016 # 8000c3f8 <.Lanon.368313aae6f24ed1916c56358b6b666c.65>
80001a58:	000b8513          	mv	a0,s7
80001a5c:	00005097          	auipc	ra,0x5
80001a60:	6b8080e7          	jalr	1720(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a64:	00000513          	li	a0,0
80001a68:	0400006f          	j	80001aa8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc54>
80001a6c:	00000513          	li	a0,0
80001a70:	04c0006f          	j	80001abc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc68>
80001a74:	00200513          	li	a0,2
80001a78:	0300006f          	j	80001aa8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc54>
80001a7c:	00200513          	li	a0,2
80001a80:	03c0006f          	j	80001abc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc68>
80001a84:	00100513          	li	a0,1
80001a88:	0340006f          	j	80001abc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc68>
80001a8c:	00100513          	li	a0,1
80001a90:	0180006f          	j	80001aa8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc54>
80001a94:	00400513          	li	a0,4
80001a98:	0100006f          	j	80001aa8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc54>
80001a9c:	00400513          	li	a0,4
80001aa0:	01c0006f          	j	80001abc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xc68>
80001aa4:	00300513          	li	a0,3
80001aa8:	8000c637          	lui	a2,0x8000c
80001aac:	34860613          	addi	a2,a2,840 # 8000c348 <.Lanon.368313aae6f24ed1916c56358b6b666c.54>
80001ab0:	00005097          	auipc	ra,0x5
80001ab4:	664080e7          	jalr	1636(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001ab8:	00300513          	li	a0,3
80001abc:	8000c637          	lui	a2,0x8000c
80001ac0:	33860613          	addi	a2,a2,824 # 8000c338 <.Lanon.368313aae6f24ed1916c56358b6b666c.53>
80001ac4:	00005097          	auipc	ra,0x5
80001ac8:	650080e7          	jalr	1616(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001acc:	00000513          	li	a0,0
80001ad0:	0380006f          	j	80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001ad4:	00400513          	li	a0,4
80001ad8:	0300006f          	j	80001b08 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0xcb4>
80001adc:	8000c537          	lui	a0,0x8000c
80001ae0:	17450513          	addi	a0,a0,372 # 8000c174 <.Lanon.368313aae6f24ed1916c56358b6b666c.24>
80001ae4:	8000c6b7          	lui	a3,0x8000c
80001ae8:	16468693          	addi	a3,a3,356 # 8000c164 <.Lanon.368313aae6f24ed1916c56358b6b666c.23>
80001aec:	8000c737          	lui	a4,0x8000c
80001af0:	1b070713          	addi	a4,a4,432 # 8000c1b0 <.Lanon.368313aae6f24ed1916c56358b6b666c.26>
80001af4:	02b00593          	li	a1,43
80001af8:	06b10613          	addi	a2,sp,107
80001afc:	00006097          	auipc	ra,0x6
80001b00:	814080e7          	jalr	-2028(ra) # 80007310 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>
80001b04:	00200513          	li	a0,2
80001b08:	8000c637          	lui	a2,0x8000c
80001b0c:	31860613          	addi	a2,a2,792 # 8000c318 <.Lanon.368313aae6f24ed1916c56358b6b666c.51>
80001b10:	00050593          	mv	a1,a0
80001b14:	00005097          	auipc	ra,0x5
80001b18:	600080e7          	jalr	1536(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001b1c:	00000513          	li	a0,0
80001b20:	8000c637          	lui	a2,0x8000c
80001b24:	30860613          	addi	a2,a2,776 # 8000c308 <.Lanon.368313aae6f24ed1916c56358b6b666c.50>
80001b28:	00050593          	mv	a1,a0
80001b2c:	00005097          	auipc	ra,0x5
80001b30:	5e8080e7          	jalr	1512(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80001b34 <_ZN7SuperOS6kalloc18handle_alloc_error17he72829956feb0252E>:
80001b34:	fd010113          	addi	sp,sp,-48
80001b38:	00a12423          	sw	a0,8(sp)
80001b3c:	00b12623          	sw	a1,12(sp)
80001b40:	00810513          	addi	a0,sp,8
80001b44:	02a12423          	sw	a0,40(sp)
80001b48:	80000537          	lui	a0,0x80000
80001b4c:	33c50513          	addi	a0,a0,828 # 8000033c <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7c70724592f5f6eE>
80001b50:	02a12623          	sw	a0,44(sp)
80001b54:	8000c537          	lui	a0,0x8000c
80001b58:	4a450513          	addi	a0,a0,1188 # 8000c4a4 <.Lanon.368313aae6f24ed1916c56358b6b666c.76>
80001b5c:	00a12823          	sw	a0,16(sp)
80001b60:	00100513          	li	a0,1
80001b64:	00a12a23          	sw	a0,20(sp)
80001b68:	02012023          	sw	zero,32(sp)
80001b6c:	02810593          	addi	a1,sp,40
80001b70:	00b12c23          	sw	a1,24(sp)
80001b74:	00a12e23          	sw	a0,28(sp)
80001b78:	8000c5b7          	lui	a1,0x8000c
80001b7c:	4bc58593          	addi	a1,a1,1212 # 8000c4bc <.Lanon.368313aae6f24ed1916c56358b6b666c.78>
80001b80:	01010513          	addi	a0,sp,16
80001b84:	00005097          	auipc	ra,0x5
80001b88:	51c080e7          	jalr	1308(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80001b8c <__rg_oom>:
80001b8c:	00050613          	mv	a2,a0
80001b90:	00058513          	mv	a0,a1
80001b94:	00060593          	mv	a1,a2
80001b98:	00000097          	auipc	ra,0x0
80001b9c:	f9c080e7          	jalr	-100(ra) # 80001b34 <_ZN7SuperOS6kalloc18handle_alloc_error17he72829956feb0252E>

80001ba0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE>:
80001ba0:	fd010113          	addi	sp,sp,-48
80001ba4:	02112623          	sw	ra,44(sp)
80001ba8:	02812423          	sw	s0,40(sp)
80001bac:	02912223          	sw	s1,36(sp)
80001bb0:	03212023          	sw	s2,32(sp)
80001bb4:	01312e23          	sw	s3,28(sp)
80001bb8:	01412c23          	sw	s4,24(sp)
80001bbc:	01512a23          	sw	s5,20(sp)
80001bc0:	01612823          	sw	s6,16(sp)
80001bc4:	00462683          	lw	a3,4(a2)
80001bc8:	00058493          	mv	s1,a1
80001bcc:	00050413          	mv	s0,a0
80001bd0:	08068a63          	beqz	a3,80001c64 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0xc4>
80001bd4:	00862983          	lw	s3,8(a2)
80001bd8:	08098663          	beqz	s3,80001c64 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0xc4>
80001bdc:	00062a03          	lw	s4,0(a2)
80001be0:	8000f5b7          	lui	a1,0x8000f
80001be4:	ff458593          	addi	a1,a1,-12 # 8000eff4 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681+0x4>
80001be8:	00410513          	addi	a0,sp,4
80001bec:	00400613          	li	a2,4
80001bf0:	00048693          	mv	a3,s1
80001bf4:	00000097          	auipc	ra,0x0
80001bf8:	320080e7          	jalr	800(ra) # 80001f14 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>
80001bfc:	00812503          	lw	a0,8(sp)
80001c00:	0a050c63          	beqz	a0,80001cb8 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x118>
80001c04:	00c12503          	lw	a0,12(sp)
80001c08:	8000fab7          	lui	s5,0x8000f
80001c0c:	ff0aa583          	lw	a1,-16(s5) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
80001c10:	00412903          	lw	s2,4(sp)
80001c14:	ff0a8b13          	addi	s6,s5,-16
80001c18:	00a58533          	add	a0,a1,a0
80001c1c:	feaaa823          	sw	a0,-16(s5)
80001c20:	00090513          	mv	a0,s2
80001c24:	000a0593          	mv	a1,s4
80001c28:	00098613          	mv	a2,s3
80001c2c:	00008097          	auipc	ra,0x8
80001c30:	514080e7          	jalr	1300(ra) # 8000a140 <memcpy>
80001c34:	004b0513          	addi	a0,s6,4
80001c38:	00400613          	li	a2,4
80001c3c:	000a0593          	mv	a1,s4
80001c40:	00098693          	mv	a3,s3
80001c44:	00000097          	auipc	ra,0x0
80001c48:	4b8080e7          	jalr	1208(ra) # 800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001c4c:	ff0aa503          	lw	a0,-16(s5)
80001c50:	40b50533          	sub	a0,a0,a1
80001c54:	feaaa823          	sw	a0,-16(s5)
80001c58:	00193513          	seqz	a0,s2
80001c5c:	06090463          	beqz	s2,80001cc4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x124>
80001c60:	0680006f          	j	80001cc8 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
80001c64:	08048c63          	beqz	s1,80001cfc <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x15c>
80001c68:	8000e537          	lui	a0,0x8000e
80001c6c:	fee54003          	lbu	zero,-18(a0) # 8000dfee <__rust_no_alloc_shim_is_unstable>
80001c70:	8000f5b7          	lui	a1,0x8000f
80001c74:	ff458593          	addi	a1,a1,-12 # 8000eff4 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681+0x4>
80001c78:	00410513          	addi	a0,sp,4
80001c7c:	00400613          	li	a2,4
80001c80:	00048693          	mv	a3,s1
80001c84:	00000097          	auipc	ra,0x0
80001c88:	290080e7          	jalr	656(ra) # 80001f14 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>
80001c8c:	00812503          	lw	a0,8(sp)
80001c90:	02050463          	beqz	a0,80001cb8 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x118>
80001c94:	00c12503          	lw	a0,12(sp)
80001c98:	8000f5b7          	lui	a1,0x8000f
80001c9c:	ff05a603          	lw	a2,-16(a1) # 8000eff0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.2275959410562074681>
80001ca0:	00412903          	lw	s2,4(sp)
80001ca4:	00a60533          	add	a0,a2,a0
80001ca8:	fea5a823          	sw	a0,-16(a1)
80001cac:	00193513          	seqz	a0,s2
80001cb0:	00090a63          	beqz	s2,80001cc4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x124>
80001cb4:	0140006f          	j	80001cc8 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
80001cb8:	00000913          	li	s2,0
80001cbc:	00103513          	seqz	a0,zero
80001cc0:	00001463          	bnez	zero,80001cc8 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
80001cc4:	00400913          	li	s2,4
80001cc8:	01242223          	sw	s2,4(s0)
80001ccc:	00942423          	sw	s1,8(s0)
80001cd0:	00a42023          	sw	a0,0(s0)
80001cd4:	02c12083          	lw	ra,44(sp)
80001cd8:	02812403          	lw	s0,40(sp)
80001cdc:	02412483          	lw	s1,36(sp)
80001ce0:	02012903          	lw	s2,32(sp)
80001ce4:	01c12983          	lw	s3,28(sp)
80001ce8:	01812a03          	lw	s4,24(sp)
80001cec:	01412a83          	lw	s5,20(sp)
80001cf0:	01012b03          	lw	s6,16(sp)
80001cf4:	03010113          	addi	sp,sp,48
80001cf8:	00008067          	ret
80001cfc:	00400913          	li	s2,4
80001d00:	00193513          	seqz	a0,s2
80001d04:	fc0912e3          	bnez	s2,80001cc8 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
80001d08:	fbdff06f          	j	80001cc4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x124>

80001d0c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>:
80001d0c:	fd010113          	addi	sp,sp,-48
80001d10:	02112623          	sw	ra,44(sp)
80001d14:	02812423          	sw	s0,40(sp)
80001d18:	02912223          	sw	s1,36(sp)
80001d1c:	03212023          	sw	s2,32(sp)
80001d20:	00050493          	mv	s1,a0
80001d24:	00052683          	lw	a3,0(a0)
80001d28:	00168513          	addi	a0,a3,1
80001d2c:	00058413          	mv	s0,a1
80001d30:	0a050463          	beqz	a0,80001dd8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xcc>
80001d34:	00d05463          	blez	a3,80001d3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x30>
80001d38:	00169513          	slli	a0,a3,0x1
80001d3c:	00400593          	li	a1,4
80001d40:	00050913          	mv	s2,a0
80001d44:	00a5e463          	bltu	a1,a0,80001d4c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x40>
80001d48:	00400913          	li	s2,4
80001d4c:	01e55513          	srli	a0,a0,0x1e
80001d50:	08051263          	bnez	a0,80001dd4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xc8>
80001d54:	00291593          	slli	a1,s2,0x2
80001d58:	80000537          	lui	a0,0x80000
80001d5c:	ffc50713          	addi	a4,a0,-4 # 7ffffffc <.Lline_table_start2+0x7fffec4e>
80001d60:	00000513          	li	a0,0
80001d64:	06b76a63          	bltu	a4,a1,80001dd8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xcc>
80001d68:	00068e63          	beqz	a3,80001d84 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x78>
80001d6c:	0044a503          	lw	a0,4(s1)
80001d70:	00269693          	slli	a3,a3,0x2
80001d74:	00a12a23          	sw	a0,20(sp)
80001d78:	00d12e23          	sw	a3,28(sp)
80001d7c:	00400513          	li	a0,4
80001d80:	0080006f          	j	80001d88 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x7c>
80001d84:	00000513          	li	a0,0
80001d88:	00a12c23          	sw	a0,24(sp)
80001d8c:	00810513          	addi	a0,sp,8
80001d90:	01410613          	addi	a2,sp,20
80001d94:	00000097          	auipc	ra,0x0
80001d98:	e0c080e7          	jalr	-500(ra) # 80001ba0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE>
80001d9c:	00812503          	lw	a0,8(sp)
80001da0:	02051463          	bnez	a0,80001dc8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xbc>
80001da4:	00c12503          	lw	a0,12(sp)
80001da8:	00a4a223          	sw	a0,4(s1)
80001dac:	0124a023          	sw	s2,0(s1)
80001db0:	02c12083          	lw	ra,44(sp)
80001db4:	02812403          	lw	s0,40(sp)
80001db8:	02412483          	lw	s1,36(sp)
80001dbc:	02012903          	lw	s2,32(sp)
80001dc0:	03010113          	addi	sp,sp,48
80001dc4:	00008067          	ret
80001dc8:	00c12503          	lw	a0,12(sp)
80001dcc:	01012603          	lw	a2,16(sp)
80001dd0:	0080006f          	j	80001dd8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xcc>
80001dd4:	00000513          	li	a0,0
80001dd8:	00060593          	mv	a1,a2
80001ddc:	00040613          	mv	a2,s0
80001de0:	00000097          	auipc	ra,0x0
80001de4:	644080e7          	jalr	1604(ra) # 80002424 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>

80001de8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>:
80001de8:	fd010113          	addi	sp,sp,-48
80001dec:	02112623          	sw	ra,44(sp)
80001df0:	02812423          	sw	s0,40(sp)
80001df4:	02912223          	sw	s1,36(sp)
80001df8:	03212023          	sw	s2,32(sp)
80001dfc:	01312e23          	sw	s3,28(sp)
80001e00:	01412c23          	sw	s4,24(sp)
80001e04:	00052983          	lw	s3,0(a0)
80001e08:	00198913          	addi	s2,s3,1
80001e0c:	00058413          	mv	s0,a1
80001e10:	0c090263          	beqz	s2,80001ed4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xec>
80001e14:	00050493          	mv	s1,a0
80001e18:	01305463          	blez	s3,80001e20 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x38>
80001e1c:	00199913          	slli	s2,s3,0x1
80001e20:	00400513          	li	a0,4
80001e24:	01256463          	bltu	a0,s2,80001e2c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x44>
80001e28:	00400913          	li	s2,4
80001e2c:	00c00613          	li	a2,12
80001e30:	00090513          	mv	a0,s2
80001e34:	00000593          	li	a1,0
80001e38:	00000693          	li	a3,0
80001e3c:	00008097          	auipc	ra,0x8
80001e40:	27c080e7          	jalr	636(ra) # 8000a0b8 <__muldi3>
80001e44:	08059863          	bnez	a1,80001ed4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xec>
80001e48:	00050a13          	mv	s4,a0
80001e4c:	80000537          	lui	a0,0x80000
80001e50:	ffc50613          	addi	a2,a0,-4 # 7ffffffc <.Lline_table_start2+0x7fffec4e>
80001e54:	00000513          	li	a0,0
80001e58:	09466a63          	bltu	a2,s4,80001eec <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x104>
80001e5c:	02098463          	beqz	s3,80001e84 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x9c>
80001e60:	00c00593          	li	a1,12
80001e64:	00098513          	mv	a0,s3
80001e68:	00008097          	auipc	ra,0x8
80001e6c:	208080e7          	jalr	520(ra) # 8000a070 <__mulsi3>
80001e70:	0044a583          	lw	a1,4(s1)
80001e74:	00b12623          	sw	a1,12(sp)
80001e78:	00a12a23          	sw	a0,20(sp)
80001e7c:	00400513          	li	a0,4
80001e80:	0080006f          	j	80001e88 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xa0>
80001e84:	00000513          	li	a0,0
80001e88:	00a12823          	sw	a0,16(sp)
80001e8c:	00010513          	mv	a0,sp
80001e90:	00c10613          	addi	a2,sp,12
80001e94:	000a0593          	mv	a1,s4
80001e98:	00000097          	auipc	ra,0x0
80001e9c:	d08080e7          	jalr	-760(ra) # 80001ba0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE>
80001ea0:	00012503          	lw	a0,0(sp)
80001ea4:	04051063          	bnez	a0,80001ee4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xfc>
80001ea8:	00412503          	lw	a0,4(sp)
80001eac:	00a4a223          	sw	a0,4(s1)
80001eb0:	0124a023          	sw	s2,0(s1)
80001eb4:	02c12083          	lw	ra,44(sp)
80001eb8:	02812403          	lw	s0,40(sp)
80001ebc:	02412483          	lw	s1,36(sp)
80001ec0:	02012903          	lw	s2,32(sp)
80001ec4:	01c12983          	lw	s3,28(sp)
80001ec8:	01812a03          	lw	s4,24(sp)
80001ecc:	03010113          	addi	sp,sp,48
80001ed0:	00008067          	ret
80001ed4:	00000513          	li	a0,0
80001ed8:	00040613          	mv	a2,s0
80001edc:	00000097          	auipc	ra,0x0
80001ee0:	548080e7          	jalr	1352(ra) # 80002424 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>
80001ee4:	00412503          	lw	a0,4(sp)
80001ee8:	00812583          	lw	a1,8(sp)
80001eec:	00040613          	mv	a2,s0
80001ef0:	00000097          	auipc	ra,0x0
80001ef4:	534080e7          	jalr	1332(ra) # 80002424 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>

80001ef8 <_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbde0ebcc99cf027bE>:
80001ef8:	8000c6b7          	lui	a3,0x8000c
80001efc:	54468693          	addi	a3,a3,1348 # 8000c544 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.0>
80001f00:	00b00613          	li	a2,11
80001f04:	00058513          	mv	a0,a1
80001f08:	00068593          	mv	a1,a3
80001f0c:	00007317          	auipc	t1,0x7
80001f10:	e3c30067          	jr	-452(t1) # 80008d48 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

80001f14 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>:
80001f14:	fd010113          	addi	sp,sp,-48
80001f18:	02112623          	sw	ra,44(sp)
80001f1c:	02812423          	sw	s0,40(sp)
80001f20:	02912223          	sw	s1,36(sp)
80001f24:	03212023          	sw	s2,32(sp)
80001f28:	01312e23          	sw	s3,28(sp)
80001f2c:	00800713          	li	a4,8
80001f30:	00060993          	mv	s3,a2
80001f34:	00058913          	mv	s2,a1
80001f38:	00050413          	mv	s0,a0
80001f3c:	00d76463          	bltu	a4,a3,80001f44 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x30>
80001f40:	00800693          	li	a3,8
80001f44:	00368693          	addi	a3,a3,3
80001f48:	ffc6f493          	andi	s1,a3,-4
80001f4c:	00048513          	mv	a0,s1
80001f50:	00098593          	mv	a1,s3
80001f54:	00007097          	auipc	ra,0x7
80001f58:	29c080e7          	jalr	668(ra) # 800091f0 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>
80001f5c:	00400593          	li	a1,4
80001f60:	10050a63          	beqz	a0,80002074 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80001f64:	00492603          	lw	a2,4(s2)
80001f68:	10060663          	beqz	a2,80002074 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80001f6c:	40a00533          	neg	a0,a0
80001f70:	01357533          	and	a0,a0,s3
80001f74:	0019d693          	srli	a3,s3,0x1
80001f78:	55555737          	lui	a4,0x55555
80001f7c:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80001f80:	00e6f6b3          	and	a3,a3,a4
80001f84:	40d986b3          	sub	a3,s3,a3
80001f88:	33333737          	lui	a4,0x33333
80001f8c:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331f85>
80001f90:	00e6f7b3          	and	a5,a3,a4
80001f94:	0026d693          	srli	a3,a3,0x2
80001f98:	00e6f6b3          	and	a3,a3,a4
80001f9c:	00d786b3          	add	a3,a5,a3
80001fa0:	0046d713          	srli	a4,a3,0x4
80001fa4:	00e686b3          	add	a3,a3,a4
80001fa8:	0f0f1737          	lui	a4,0xf0f1
80001fac:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80001fb0:	00e6f6b3          	and	a3,a3,a4
80001fb4:	00869713          	slli	a4,a3,0x8
80001fb8:	00e686b3          	add	a3,a3,a4
80001fbc:	01069713          	slli	a4,a3,0x10
80001fc0:	00e686b3          	add	a3,a3,a4
80001fc4:	0186d713          	srli	a4,a3,0x18
80001fc8:	fff98793          	addi	a5,s3,-1
80001fcc:	41300833          	neg	a6,s3
80001fd0:	00100893          	li	a7,1
80001fd4:	0140006f          	j	80001fe8 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xd4>
80001fd8:	00462683          	lw	a3,4(a2)
80001fdc:	00060913          	mv	s2,a2
80001fe0:	00068613          	mv	a2,a3
80001fe4:	08068863          	beqz	a3,80002074 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80001fe8:	00062383          	lw	t2,0(a2)
80001fec:	fe93e6e3          	bltu	t2,s1,80001fd8 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80001ff0:	0d171a63          	bne	a4,a7,800020c4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1b0>
80001ff4:	00c78e33          	add	t3,a5,a2
80001ff8:	010e7333          	and	t1,t3,a6
80001ffc:	00060693          	mv	a3,a2
80002000:	00c30863          	beq	t1,a2,80002010 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xfc>
80002004:	008e0e13          	addi	t3,t3,8
80002008:	010e76b3          	and	a3,t3,a6
8000200c:	40c682b3          	sub	t0,a3,a2
80002010:	00968f33          	add	t5,a3,s1
80002014:	00760eb3          	add	t4,a2,t2
80002018:	fdeee0e3          	bltu	t4,t5,80001fd8 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
8000201c:	41ee8e33          	sub	t3,t4,t5
80002020:	020e0e63          	beqz	t3,8000205c <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x148>
80002024:	003f0f13          	addi	t5,t5,3
80002028:	ffcf7393          	andi	t2,t5,-4
8000202c:	00838f13          	addi	t5,t2,8
80002030:	fbeee4e3          	bltu	t4,t5,80001fd8 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80002034:	00092223          	sw	zero,4(s2)
80002038:	00462703          	lw	a4,4(a2)
8000203c:	00062223          	sw	zero,4(a2)
80002040:	06c30263          	beq	t1,a2,800020a4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x190>
80002044:	01c3a023          	sw	t3,0(t2)
80002048:	00e3a223          	sw	a4,4(t2)
8000204c:	00562023          	sw	t0,0(a2)
80002050:	00762223          	sw	t2,4(a2)
80002054:	00c92223          	sw	a2,4(s2)
80002058:	05c0006f          	j	800020b4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1a0>
8000205c:	00092223          	sw	zero,4(s2)
80002060:	00462703          	lw	a4,4(a2)
80002064:	00062223          	sw	zero,4(a2)
80002068:	02c31a63          	bne	t1,a2,8000209c <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x188>
8000206c:	00e92223          	sw	a4,4(s2)
80002070:	04069263          	bnez	a3,800020b4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1a0>
80002074:	00000493          	li	s1,0
80002078:	00b405b3          	add	a1,s0,a1
8000207c:	0095a023          	sw	s1,0(a1)
80002080:	02c12083          	lw	ra,44(sp)
80002084:	02812403          	lw	s0,40(sp)
80002088:	02412483          	lw	s1,36(sp)
8000208c:	02012903          	lw	s2,32(sp)
80002090:	01c12983          	lw	s3,28(sp)
80002094:	03010113          	addi	sp,sp,48
80002098:	00008067          	ret
8000209c:	00060393          	mv	t2,a2
800020a0:	00028e13          	mv	t3,t0
800020a4:	01c3a023          	sw	t3,0(t2)
800020a8:	00e3a223          	sw	a4,4(t2)
800020ac:	00792223          	sw	t2,4(s2)
800020b0:	fc0682e3          	beqz	a3,80002074 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
800020b4:	00d42023          	sw	a3,0(s0)
800020b8:	00a42223          	sw	a0,4(s0)
800020bc:	00800593          	li	a1,8
800020c0:	fb9ff06f          	j	80002078 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x164>
800020c4:	8000c537          	lui	a0,0x8000c
800020c8:	58450513          	addi	a0,a0,1412 # 8000c584 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.3>
800020cc:	00a12223          	sw	a0,4(sp)
800020d0:	00100513          	li	a0,1
800020d4:	00a12423          	sw	a0,8(sp)
800020d8:	00012a23          	sw	zero,20(sp)
800020dc:	00400513          	li	a0,4
800020e0:	00a12623          	sw	a0,12(sp)
800020e4:	00012823          	sw	zero,16(sp)
800020e8:	8000c5b7          	lui	a1,0x8000c
800020ec:	60058593          	addi	a1,a1,1536 # 8000c600 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.5>
800020f0:	00410513          	addi	a0,sp,4
800020f4:	00005097          	auipc	ra,0x5
800020f8:	fac080e7          	jalr	-84(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

800020fc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>:
800020fc:	fa010113          	addi	sp,sp,-96
80002100:	04112e23          	sw	ra,92(sp)
80002104:	04812c23          	sw	s0,88(sp)
80002108:	04912a23          	sw	s1,84(sp)
8000210c:	05212823          	sw	s2,80(sp)
80002110:	05312623          	sw	s3,76(sp)
80002114:	00800713          	li	a4,8
80002118:	00060413          	mv	s0,a2
8000211c:	00058913          	mv	s2,a1
80002120:	00050993          	mv	s3,a0
80002124:	00d76463          	bltu	a4,a3,8000212c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x30>
80002128:	00800693          	li	a3,8
8000212c:	00368693          	addi	a3,a3,3
80002130:	ffc6f493          	andi	s1,a3,-4
80002134:	00048513          	mv	a0,s1
80002138:	00040593          	mv	a1,s0
8000213c:	00007097          	auipc	ra,0x7
80002140:	0b4080e7          	jalr	180(ra) # 800091f0 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>
80002144:	26050663          	beqz	a0,800023b0 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x2b4>
80002148:	0049a583          	lw	a1,4(s3)
8000214c:	00992023          	sw	s1,0(s2)
80002150:	00092223          	sw	zero,4(s2)
80002154:	04058263          	beqz	a1,80002198 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x9c>
80002158:	00c9a503          	lw	a0,12(s3)
8000215c:	04b97e63          	bgeu	s2,a1,800021b8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xbc>
80002160:	009906b3          	add	a3,s2,s1
80002164:	16d5e663          	bltu	a1,a3,800022d0 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1d4>
80002168:	0089a603          	lw	a2,8(s3)
8000216c:	00860793          	addi	a5,a2,8
80002170:	00090713          	mv	a4,s2
80002174:	00f97a63          	bgeu	s2,a5,80002188 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x8c>
80002178:	40c686b3          	sub	a3,a3,a2
8000217c:	00d62023          	sw	a3,0(a2)
80002180:	00062223          	sw	zero,4(a2)
80002184:	00060713          	mv	a4,a2
80002188:	00e9a223          	sw	a4,4(s3)
8000218c:	00b72223          	sw	a1,4(a4)
80002190:	00100613          	li	a2,1
80002194:	09c0006f          	j	80002230 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
80002198:	0089a503          	lw	a0,8(s3)
8000219c:	00850593          	addi	a1,a0,8
800021a0:	0cb97c63          	bgeu	s2,a1,80002278 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x17c>
800021a4:	012485b3          	add	a1,s1,s2
800021a8:	40a585b3          	sub	a1,a1,a0
800021ac:	00b52023          	sw	a1,0(a0)
800021b0:	00052223          	sw	zero,4(a0)
800021b4:	0cc0006f          	j	80002280 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x184>
800021b8:	0045a603          	lw	a2,4(a1)
800021bc:	01212623          	sw	s2,12(sp)
800021c0:	02060263          	beqz	a2,800021e4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe8>
800021c4:	00c96c63          	bltu	s2,a2,800021dc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe0>
800021c8:	00060593          	mv	a1,a2
800021cc:	00462603          	lw	a2,4(a2)
800021d0:	01212623          	sw	s2,12(sp)
800021d4:	00060863          	beqz	a2,800021e4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe8>
800021d8:	fec978e3          	bgeu	s2,a2,800021c8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xcc>
800021dc:	009906b3          	add	a3,s2,s1
800021e0:	18d66c63          	bltu	a2,a3,80002378 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x27c>
800021e4:	00b12823          	sw	a1,16(sp)
800021e8:	0005a683          	lw	a3,0(a1)
800021ec:	00d58733          	add	a4,a1,a3
800021f0:	00d12a23          	sw	a3,20(sp)
800021f4:	10e96a63          	bltu	s2,a4,80002308 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x20c>
800021f8:	0125a223          	sw	s2,4(a1)
800021fc:	00c92223          	sw	a2,4(s2)
80002200:	00200613          	li	a2,2
80002204:	00058913          	mv	s2,a1
80002208:	0280006f          	j	80002230 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
8000220c:	00072583          	lw	a1,0(a4)
80002210:	00472683          	lw	a3,4(a4)
80002214:	00072223          	sw	zero,4(a4)
80002218:	00092703          	lw	a4,0(s2)
8000221c:	00d92223          	sw	a3,4(s2)
80002220:	00b705b3          	add	a1,a4,a1
80002224:	00b92023          	sw	a1,0(s2)
80002228:	fff60613          	addi	a2,a2,-1
8000222c:	08060063          	beqz	a2,800022ac <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80002230:	00492703          	lw	a4,4(s2)
80002234:	00092683          	lw	a3,0(s2)
80002238:	00d905b3          	add	a1,s2,a3
8000223c:	00070c63          	beqz	a4,80002254 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x158>
80002240:	fce586e3          	beq	a1,a4,8000220c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x110>
80002244:	00070913          	mv	s2,a4
80002248:	fff60613          	addi	a2,a2,-1
8000224c:	fe0612e3          	bnez	a2,80002230 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
80002250:	05c0006f          	j	800022ac <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80002254:	04a5fc63          	bgeu	a1,a0,800022ac <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80002258:	00358613          	addi	a2,a1,3
8000225c:	ffc67613          	andi	a2,a2,-4
80002260:	00860613          	addi	a2,a2,8
80002264:	04c57463          	bgeu	a0,a2,800022ac <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80002268:	00a68533          	add	a0,a3,a0
8000226c:	40b50533          	sub	a0,a0,a1
80002270:	00a92023          	sw	a0,0(s2)
80002274:	0380006f          	j	800022ac <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80002278:	00048593          	mv	a1,s1
8000227c:	00090513          	mv	a0,s2
80002280:	00c9a603          	lw	a2,12(s3)
80002284:	00b506b3          	add	a3,a0,a1
80002288:	02c6f063          	bgeu	a3,a2,800022a8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1ac>
8000228c:	00368713          	addi	a4,a3,3
80002290:	ffc77713          	andi	a4,a4,-4
80002294:	00870713          	addi	a4,a4,8
80002298:	00e67863          	bgeu	a2,a4,800022a8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1ac>
8000229c:	40d60633          	sub	a2,a2,a3
800022a0:	00b605b3          	add	a1,a2,a1
800022a4:	00b52023          	sw	a1,0(a0)
800022a8:	00a9a223          	sw	a0,4(s3)
800022ac:	00040513          	mv	a0,s0
800022b0:	00048593          	mv	a1,s1
800022b4:	05c12083          	lw	ra,92(sp)
800022b8:	05812403          	lw	s0,88(sp)
800022bc:	05412483          	lw	s1,84(sp)
800022c0:	05012903          	lw	s2,80(sp)
800022c4:	04c12983          	lw	s3,76(sp)
800022c8:	06010113          	addi	sp,sp,96
800022cc:	00008067          	ret
800022d0:	8000c537          	lui	a0,0x8000c
800022d4:	68850513          	addi	a0,a0,1672 # 8000c688 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.14>
800022d8:	02a12823          	sw	a0,48(sp)
800022dc:	00100513          	li	a0,1
800022e0:	02a12a23          	sw	a0,52(sp)
800022e4:	04012023          	sw	zero,64(sp)
800022e8:	00400513          	li	a0,4
800022ec:	02a12c23          	sw	a0,56(sp)
800022f0:	02012e23          	sw	zero,60(sp)
800022f4:	8000c5b7          	lui	a1,0x8000c
800022f8:	69058593          	addi	a1,a1,1680 # 8000c690 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.15>
800022fc:	03010513          	addi	a0,sp,48
80002300:	00005097          	auipc	ra,0x5
80002304:	da0080e7          	jalr	-608(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
80002308:	00c10513          	addi	a0,sp,12
8000230c:	02a12823          	sw	a0,48(sp)
80002310:	80000537          	lui	a0,0x80000
80002314:	31450513          	addi	a0,a0,788 # 80000314 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>
80002318:	02a12a23          	sw	a0,52(sp)
8000231c:	01010593          	addi	a1,sp,16
80002320:	02b12c23          	sw	a1,56(sp)
80002324:	02a12e23          	sw	a0,60(sp)
80002328:	01410513          	addi	a0,sp,20
8000232c:	04a12023          	sw	a0,64(sp)
80002330:	8000a537          	lui	a0,0x8000a
80002334:	9c850513          	addi	a0,a0,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80002338:	04a12223          	sw	a0,68(sp)
8000233c:	8000c537          	lui	a0,0x8000c
80002340:	6e450513          	addi	a0,a0,1764 # 8000c6e4 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.21>
80002344:	00a12c23          	sw	a0,24(sp)
80002348:	00400513          	li	a0,4
8000234c:	00a12e23          	sw	a0,28(sp)
80002350:	02012423          	sw	zero,40(sp)
80002354:	03010513          	addi	a0,sp,48
80002358:	02a12023          	sw	a0,32(sp)
8000235c:	00300513          	li	a0,3
80002360:	02a12223          	sw	a0,36(sp)
80002364:	8000c5b7          	lui	a1,0x8000c
80002368:	70458593          	addi	a1,a1,1796 # 8000c704 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.22>
8000236c:	01810513          	addi	a0,sp,24
80002370:	00005097          	auipc	ra,0x5
80002374:	d30080e7          	jalr	-720(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
80002378:	8000c537          	lui	a0,0x8000c
8000237c:	68850513          	addi	a0,a0,1672 # 8000c688 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.14>
80002380:	02a12823          	sw	a0,48(sp)
80002384:	00100513          	li	a0,1
80002388:	02a12a23          	sw	a0,52(sp)
8000238c:	04012023          	sw	zero,64(sp)
80002390:	00400513          	li	a0,4
80002394:	02a12c23          	sw	a0,56(sp)
80002398:	02012e23          	sw	zero,60(sp)
8000239c:	8000c5b7          	lui	a1,0x8000c
800023a0:	6a058593          	addi	a1,a1,1696 # 8000c6a0 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.16>
800023a4:	03010513          	addi	a0,sp,48
800023a8:	00005097          	auipc	ra,0x5
800023ac:	cf8080e7          	jalr	-776(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
800023b0:	8000c537          	lui	a0,0x8000c
800023b4:	62050513          	addi	a0,a0,1568 # 8000c620 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.11>
800023b8:	8000c6b7          	lui	a3,0x8000c
800023bc:	61068693          	addi	a3,a3,1552 # 8000c610 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.10>
800023c0:	8000c737          	lui	a4,0x8000c
800023c4:	64c70713          	addi	a4,a4,1612 # 8000c64c <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.12>
800023c8:	02b00593          	li	a1,43
800023cc:	04b10613          	addi	a2,sp,75
800023d0:	00005097          	auipc	ra,0x5
800023d4:	f40080e7          	jalr	-192(ra) # 80007310 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

800023d8 <__rust_alloc_error_handler>:
800023d8:	fffff317          	auipc	t1,0xfffff
800023dc:	7b430067          	jr	1972(t1) # 80001b8c <__rg_oom>

800023e0 <_ZN5alloc7raw_vec17capacity_overflow17h26ecbcc11cda3850E>:
800023e0:	fe010113          	addi	sp,sp,-32
800023e4:	00112e23          	sw	ra,28(sp)
800023e8:	00812c23          	sw	s0,24(sp)
800023ec:	02010413          	addi	s0,sp,32
800023f0:	00050593          	mv	a1,a0
800023f4:	8000c537          	lui	a0,0x8000c
800023f8:	72850513          	addi	a0,a0,1832 # 8000c728 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4>
800023fc:	fea42023          	sw	a0,-32(s0)
80002400:	00100513          	li	a0,1
80002404:	fea42223          	sw	a0,-28(s0)
80002408:	fe042823          	sw	zero,-16(s0)
8000240c:	00400513          	li	a0,4
80002410:	fea42423          	sw	a0,-24(s0)
80002414:	fe042623          	sw	zero,-20(s0)
80002418:	fe040513          	addi	a0,s0,-32
8000241c:	00005097          	auipc	ra,0x5
80002420:	c84080e7          	jalr	-892(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80002424 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>:
80002424:	ff010113          	addi	sp,sp,-16
80002428:	00112623          	sw	ra,12(sp)
8000242c:	00812423          	sw	s0,8(sp)
80002430:	01010413          	addi	s0,sp,16
80002434:	00051863          	bnez	a0,80002444 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E+0x20>
80002438:	00060513          	mv	a0,a2
8000243c:	00000097          	auipc	ra,0x0
80002440:	fa4080e7          	jalr	-92(ra) # 800023e0 <_ZN5alloc7raw_vec17capacity_overflow17h26ecbcc11cda3850E>
80002444:	00000097          	auipc	ra,0x0
80002448:	008080e7          	jalr	8(ra) # 8000244c <_ZN5alloc5alloc18handle_alloc_error17ha730bc427c9442a1E>

8000244c <_ZN5alloc5alloc18handle_alloc_error17ha730bc427c9442a1E>:
8000244c:	ff010113          	addi	sp,sp,-16
80002450:	00112623          	sw	ra,12(sp)
80002454:	00812423          	sw	s0,8(sp)
80002458:	01010413          	addi	s0,sp,16
8000245c:	00050613          	mv	a2,a0
80002460:	00058513          	mv	a0,a1
80002464:	00060593          	mv	a1,a2
80002468:	00000097          	auipc	ra,0x0
8000246c:	f70080e7          	jalr	-144(ra) # 800023d8 <__rust_alloc_error_handler>

80002470 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>:
80002470:	f0010113          	addi	sp,sp,-256
80002474:	0e112e23          	sw	ra,252(sp)
80002478:	0e812c23          	sw	s0,248(sp)
8000247c:	0e912a23          	sw	s1,244(sp)
80002480:	0f212823          	sw	s2,240(sp)
80002484:	0f312623          	sw	s3,236(sp)
80002488:	0f412423          	sw	s4,232(sp)
8000248c:	0f512223          	sw	s5,228(sp)
80002490:	0f612023          	sw	s6,224(sp)
80002494:	0d712e23          	sw	s7,220(sp)
80002498:	0d812c23          	sw	s8,216(sp)
8000249c:	0d912a23          	sw	s9,212(sp)
800024a0:	0da12823          	sw	s10,208(sp)
800024a4:	0db12623          	sw	s11,204(sp)
800024a8:	10010413          	addi	s0,sp,256
800024ac:	00800613          	li	a2,8
800024b0:	00058d13          	mv	s10,a1
800024b4:	00050c93          	mv	s9,a0
800024b8:	08c5f663          	bgeu	a1,a2,80002544 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd4>
800024bc:	0a0ca983          	lw	s3,160(s9)
800024c0:	02900513          	li	a0,41
800024c4:	52a9f2e3          	bgeu	s3,a0,800031e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
800024c8:	06098a63          	beqz	s3,8000253c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcc>
800024cc:	002d1513          	slli	a0,s10,0x2
800024d0:	8000d5b7          	lui	a1,0x8000d
800024d4:	14858593          	addi	a1,a1,328 # 8000d148 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
800024d8:	00a58533          	add	a0,a1,a0
800024dc:	00052903          	lw	s2,0(a0)
800024e0:	00000a13          	li	s4,0
800024e4:	00299a93          	slli	s5,s3,0x2
800024e8:	015c84b3          	add	s1,s9,s5
800024ec:	000c8b13          	mv	s6,s9
800024f0:	000b2503          	lw	a0,0(s6)
800024f4:	004b0b93          	addi	s7,s6,4
800024f8:	00000593          	li	a1,0
800024fc:	00090613          	mv	a2,s2
80002500:	00000693          	li	a3,0
80002504:	00008097          	auipc	ra,0x8
80002508:	bb4080e7          	jalr	-1100(ra) # 8000a0b8 <__muldi3>
8000250c:	01450633          	add	a2,a0,s4
80002510:	00a63a33          	sltu	s4,a2,a0
80002514:	01458a33          	add	s4,a1,s4
80002518:	ffca8a93          	addi	s5,s5,-4
8000251c:	00cb2023          	sw	a2,0(s6)
80002520:	000b8b13          	mv	s6,s7
80002524:	fc0a96e3          	bnez	s5,800024f0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x80>
80002528:	000a0a63          	beqz	s4,8000253c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcc>
8000252c:	02800513          	li	a0,40
80002530:	4ea984e3          	beq	s3,a0,80003218 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
80002534:	0144a023          	sw	s4,0(s1)
80002538:	00198993          	addi	s3,s3,1
8000253c:	0b3ca023          	sw	s3,160(s9)
80002540:	4690006f          	j	800031a8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd38>
80002544:	007d7513          	andi	a0,s10,7
80002548:	08050663          	beqz	a0,800025d4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x164>
8000254c:	0a0ca983          	lw	s3,160(s9)
80002550:	02900593          	li	a1,41
80002554:	48b9fae3          	bgeu	s3,a1,800031e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
80002558:	06098c63          	beqz	s3,800025d0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x160>
8000255c:	00251593          	slli	a1,a0,0x2
80002560:	8000d637          	lui	a2,0x8000d
80002564:	14860613          	addi	a2,a2,328 # 8000d148 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
80002568:	00b605b3          	add	a1,a2,a1
8000256c:	0005a583          	lw	a1,0(a1)
80002570:	00000493          	li	s1,0
80002574:	00a5da33          	srl	s4,a1,a0
80002578:	00299a93          	slli	s5,s3,0x2
8000257c:	015c8933          	add	s2,s9,s5
80002580:	000c8b13          	mv	s6,s9
80002584:	000b2503          	lw	a0,0(s6)
80002588:	004b0b93          	addi	s7,s6,4
8000258c:	00000593          	li	a1,0
80002590:	000a0613          	mv	a2,s4
80002594:	00000693          	li	a3,0
80002598:	00008097          	auipc	ra,0x8
8000259c:	b20080e7          	jalr	-1248(ra) # 8000a0b8 <__muldi3>
800025a0:	00950633          	add	a2,a0,s1
800025a4:	00a634b3          	sltu	s1,a2,a0
800025a8:	009584b3          	add	s1,a1,s1
800025ac:	ffca8a93          	addi	s5,s5,-4
800025b0:	00cb2023          	sw	a2,0(s6)
800025b4:	000b8b13          	mv	s6,s7
800025b8:	fc0a96e3          	bnez	s5,80002584 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x114>
800025bc:	00048a63          	beqz	s1,800025d0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x160>
800025c0:	02800513          	li	a0,40
800025c4:	44a98ae3          	beq	s3,a0,80003218 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
800025c8:	00992023          	sw	s1,0(s2)
800025cc:	00198993          	addi	s3,s3,1
800025d0:	0b3ca023          	sw	s3,160(s9)
800025d4:	008d7513          	andi	a0,s10,8
800025d8:	06050e63          	beqz	a0,80002654 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e4>
800025dc:	0a0ca983          	lw	s3,160(s9)
800025e0:	02900513          	li	a0,41
800025e4:	40a9f2e3          	bgeu	s3,a0,800031e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
800025e8:	06098463          	beqz	s3,80002650 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e0>
800025ec:	00000913          	li	s2,0
800025f0:	00299a93          	slli	s5,s3,0x2
800025f4:	015c84b3          	add	s1,s9,s5
800025f8:	0005f537          	lui	a0,0x5f
800025fc:	5e150a13          	addi	s4,a0,1505 # 5f5e1 <.Lline_table_start2+0x5e233>
80002600:	000c8b13          	mv	s6,s9
80002604:	000b2503          	lw	a0,0(s6)
80002608:	004b0b93          	addi	s7,s6,4
8000260c:	00000593          	li	a1,0
80002610:	000a0613          	mv	a2,s4
80002614:	00000693          	li	a3,0
80002618:	00008097          	auipc	ra,0x8
8000261c:	aa0080e7          	jalr	-1376(ra) # 8000a0b8 <__muldi3>
80002620:	01250633          	add	a2,a0,s2
80002624:	00a63933          	sltu	s2,a2,a0
80002628:	01258933          	add	s2,a1,s2
8000262c:	ffca8a93          	addi	s5,s5,-4
80002630:	00cb2023          	sw	a2,0(s6)
80002634:	000b8b13          	mv	s6,s7
80002638:	fc0a96e3          	bnez	s5,80002604 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x194>
8000263c:	00090a63          	beqz	s2,80002650 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e0>
80002640:	02800513          	li	a0,40
80002644:	3ca98ae3          	beq	s3,a0,80003218 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
80002648:	0124a023          	sw	s2,0(s1)
8000264c:	00198993          	addi	s3,s3,1
80002650:	0b3ca023          	sw	s3,160(s9)
80002654:	010d7513          	andi	a0,s10,16
80002658:	f3942223          	sw	s9,-220(s0)
8000265c:	f3a42423          	sw	s10,-216(s0)
80002660:	16050863          	beqz	a0,800027d0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x360>
80002664:	f2c40513          	addi	a0,s0,-212
80002668:	0a000613          	li	a2,160
8000266c:	f2c40c13          	addi	s8,s0,-212
80002670:	00000593          	li	a1,0
80002674:	00009097          	auipc	ra,0x9
80002678:	958080e7          	jalr	-1704(ra) # 8000afcc <memset>
8000267c:	0a0ca703          	lw	a4,160(s9)
80002680:	00200513          	li	a0,2
80002684:	10a77663          	bgeu	a4,a0,80002790 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x320>
80002688:	00000d13          	li	s10,0
8000268c:	00000993          	li	s3,0
80002690:	00271713          	slli	a4,a4,0x2
80002694:	00ec8bb3          	add	s7,s9,a4
80002698:	02800593          	li	a1,40
8000269c:	86f27537          	lui	a0,0x86f27
800026a0:	fc150a13          	addi	s4,a0,-63 # 86f26fc1 <KALLOC_BUFFER+0x6f16fc1>
800026a4:	000c8d93          	mv	s11,s9
800026a8:	fffd0a93          	addi	s5,s10,-1
800026ac:	002d1493          	slli	s1,s10,0x2
800026b0:	009c04b3          	add	s1,s8,s1
800026b4:	000d8513          	mv	a0,s11
800026b8:	f2842d03          	lw	s10,-216(s0)
800026bc:	0f750e63          	beq	a0,s7,800027b8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x348>
800026c0:	00052b03          	lw	s6,0(a0)
800026c4:	00450d93          	addi	s11,a0,4
800026c8:	001a8a93          	addi	s5,s5,1
800026cc:	00448493          	addi	s1,s1,4
800026d0:	000d8513          	mv	a0,s11
800026d4:	fe0b04e3          	beqz	s6,800026bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x24c>
800026d8:	34bafee3          	bgeu	s5,a1,80003234 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdc4>
800026dc:	ffc4a903          	lw	s2,-4(s1)
800026e0:	001a8d13          	addi	s10,s5,1
800026e4:	000b0513          	mv	a0,s6
800026e8:	00000593          	li	a1,0
800026ec:	000a0613          	mv	a2,s4
800026f0:	00000693          	li	a3,0
800026f4:	00008097          	auipc	ra,0x8
800026f8:	9c4080e7          	jalr	-1596(ra) # 8000a0b8 <__muldi3>
800026fc:	01250633          	add	a2,a0,s2
80002700:	fec4ae23          	sw	a2,-4(s1)
80002704:	02700693          	li	a3,39
80002708:	33a6e4e3          	bltu	a3,s10,80003230 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdc0>
8000270c:	0004a903          	lw	s2,0(s1)
80002710:	00a63533          	sltu	a0,a2,a0
80002714:	00a58cb3          	add	s9,a1,a0
80002718:	02300613          	li	a2,35
8000271c:	000b0513          	mv	a0,s6
80002720:	00000593          	li	a1,0
80002724:	00000693          	li	a3,0
80002728:	00008097          	auipc	ra,0x8
8000272c:	990080e7          	jalr	-1648(ra) # 8000a0b8 <__muldi3>
80002730:	012c8933          	add	s2,s9,s2
80002734:	01993633          	sltu	a2,s2,s9
80002738:	00a906b3          	add	a3,s2,a0
8000273c:	0126b533          	sltu	a0,a3,s2
80002740:	00b605b3          	add	a1,a2,a1
80002744:	00a58533          	add	a0,a1,a0
80002748:	00d4a023          	sw	a3,0(s1)
8000274c:	02050463          	beqz	a0,80002774 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x304>
80002750:	f2442c83          	lw	s9,-220(s0)
80002754:	02800593          	li	a1,40
80002758:	02600613          	li	a2,38
8000275c:	34caf2e3          	bgeu	s5,a2,800032a0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe30>
80002760:	00a4a223          	sw	a0,4(s1)
80002764:	00300513          	li	a0,3
80002768:	01550533          	add	a0,a0,s5
8000276c:	f3356ee3          	bltu	a0,s3,800026a8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
80002770:	0180006f          	j	80002788 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x318>
80002774:	00200513          	li	a0,2
80002778:	f2442c83          	lw	s9,-220(s0)
8000277c:	02800593          	li	a1,40
80002780:	01550533          	add	a0,a0,s5
80002784:	f33562e3          	bltu	a0,s3,800026a8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
80002788:	00050993          	mv	s3,a0
8000278c:	f1dff06f          	j	800026a8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
80002790:	02900513          	li	a0,41
80002794:	26a776e3          	bgeu	a4,a0,80003200 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002798:	8000c5b7          	lui	a1,0x8000c
8000279c:	7c858593          	addi	a1,a1,1992 # 8000c7c8 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h99816a37407431b1E>
800027a0:	f2c40513          	addi	a0,s0,-212
800027a4:	00200613          	li	a2,2
800027a8:	000c8693          	mv	a3,s9
800027ac:	00007097          	auipc	ra,0x7
800027b0:	c98080e7          	jalr	-872(ra) # 80009444 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
800027b4:	00050993          	mv	s3,a0
800027b8:	f2c40593          	addi	a1,s0,-212
800027bc:	0a000613          	li	a2,160
800027c0:	000c8513          	mv	a0,s9
800027c4:	00008097          	auipc	ra,0x8
800027c8:	97c080e7          	jalr	-1668(ra) # 8000a140 <memcpy>
800027cc:	0b3ca023          	sw	s3,160(s9)
800027d0:	020d7513          	andi	a0,s10,32
800027d4:	1c050a63          	beqz	a0,800029a8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x538>
800027d8:	f2c40513          	addi	a0,s0,-212
800027dc:	0a000613          	li	a2,160
800027e0:	00000593          	li	a1,0
800027e4:	00008097          	auipc	ra,0x8
800027e8:	7e8080e7          	jalr	2024(ra) # 8000afcc <memset>
800027ec:	0a0ca703          	lw	a4,160(s9)
800027f0:	00300513          	li	a0,3
800027f4:	16a77663          	bgeu	a4,a0,80002960 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4f0>
800027f8:	00000d93          	li	s11,0
800027fc:	00000913          	li	s2,0
80002800:	00271713          	slli	a4,a4,0x2
80002804:	00ec84b3          	add	s1,s9,a4
80002808:	f3040a93          	addi	s5,s0,-208
8000280c:	02800593          	li	a1,40
80002810:	85acf537          	lui	a0,0x85acf
80002814:	f8150613          	addi	a2,a0,-127 # 85acef81 <KALLOC_BUFFER+0x5abef81>
80002818:	2d6d4537          	lui	a0,0x2d6d4
8000281c:	15b50513          	addi	a0,a0,347 # 2d6d415b <.Lline_table_start2+0x2d6d2dad>
80002820:	f2a42023          	sw	a0,-224(s0)
80002824:	000c8d13          	mv	s10,s9
80002828:	fffd8b93          	addi	s7,s11,-1
8000282c:	002d9c13          	slli	s8,s11,0x2
80002830:	018a8c33          	add	s8,s5,s8
80002834:	000d0513          	mv	a0,s10
80002838:	14950a63          	beq	a0,s1,8000298c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x51c>
8000283c:	00052b03          	lw	s6,0(a0)
80002840:	00450d13          	addi	s10,a0,4
80002844:	001b8b93          	addi	s7,s7,1
80002848:	004c0c13          	addi	s8,s8,4
8000284c:	000d0513          	mv	a0,s10
80002850:	fe0b04e3          	beqz	s6,80002838 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3c8>
80002854:	1ebbfce3          	bgeu	s7,a1,8000324c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xddc>
80002858:	f1242e23          	sw	s2,-228(s0)
8000285c:	ff8c2903          	lw	s2,-8(s8)
80002860:	001b8d93          	addi	s11,s7,1
80002864:	000b0513          	mv	a0,s6
80002868:	00000593          	li	a1,0
8000286c:	00060993          	mv	s3,a2
80002870:	00000693          	li	a3,0
80002874:	00008097          	auipc	ra,0x8
80002878:	844080e7          	jalr	-1980(ra) # 8000a0b8 <__muldi3>
8000287c:	01250633          	add	a2,a0,s2
80002880:	02800c93          	li	s9,40
80002884:	fecc2c23          	sw	a2,-8(s8)
80002888:	1d9df4e3          	bgeu	s11,s9,80003250 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xde0>
8000288c:	ffcc2a03          	lw	s4,-4(s8)
80002890:	00a63933          	sltu	s2,a2,a0
80002894:	01258933          	add	s2,a1,s2
80002898:	000b0513          	mv	a0,s6
8000289c:	00000593          	li	a1,0
800028a0:	f2042603          	lw	a2,-224(s0)
800028a4:	00000693          	li	a3,0
800028a8:	00008097          	auipc	ra,0x8
800028ac:	810080e7          	jalr	-2032(ra) # 8000a0b8 <__muldi3>
800028b0:	01490633          	add	a2,s2,s4
800028b4:	00a60533          	add	a0,a2,a0
800028b8:	feac2e23          	sw	a0,-4(s8)
800028bc:	02500693          	li	a3,37
800028c0:	1976e8e3          	bltu	a3,s7,80003250 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xde0>
800028c4:	012636b3          	sltu	a3,a2,s2
800028c8:	000c2903          	lw	s2,0(s8)
800028cc:	00c53533          	sltu	a0,a0,a2
800028d0:	00b685b3          	add	a1,a3,a1
800028d4:	00a58a33          	add	s4,a1,a0
800028d8:	4ee00613          	li	a2,1262
800028dc:	000b0513          	mv	a0,s6
800028e0:	00000593          	li	a1,0
800028e4:	00000693          	li	a3,0
800028e8:	00007097          	auipc	ra,0x7
800028ec:	7d0080e7          	jalr	2000(ra) # 8000a0b8 <__muldi3>
800028f0:	012a0933          	add	s2,s4,s2
800028f4:	01493633          	sltu	a2,s2,s4
800028f8:	00a906b3          	add	a3,s2,a0
800028fc:	0126b533          	sltu	a0,a3,s2
80002900:	00b605b3          	add	a1,a2,a1
80002904:	00a58533          	add	a0,a1,a0
80002908:	00dc2023          	sw	a3,0(s8)
8000290c:	02050863          	beqz	a0,8000293c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4cc>
80002910:	f2442c83          	lw	s9,-220(s0)
80002914:	02800593          	li	a1,40
80002918:	f1c42903          	lw	s2,-228(s0)
8000291c:	02500693          	li	a3,37
80002920:	18db8ce3          	beq	s7,a3,800032b8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe48>
80002924:	00098613          	mv	a2,s3
80002928:	00ac2223          	sw	a0,4(s8)
8000292c:	00400513          	li	a0,4
80002930:	01750533          	add	a0,a0,s7
80002934:	ef256ae3          	bltu	a0,s2,80002828 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
80002938:	0200006f          	j	80002958 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4e8>
8000293c:	00300513          	li	a0,3
80002940:	f2442c83          	lw	s9,-220(s0)
80002944:	02800593          	li	a1,40
80002948:	00098613          	mv	a2,s3
8000294c:	f1c42903          	lw	s2,-228(s0)
80002950:	01750533          	add	a0,a0,s7
80002954:	ed256ae3          	bltu	a0,s2,80002828 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
80002958:	00050913          	mv	s2,a0
8000295c:	ecdff06f          	j	80002828 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
80002960:	02900513          	li	a0,41
80002964:	08a77ee3          	bgeu	a4,a0,80003200 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002968:	8000c5b7          	lui	a1,0x8000c
8000296c:	7d058593          	addi	a1,a1,2000 # 8000c7d0 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217he851a7b51f37758fE>
80002970:	f2c40513          	addi	a0,s0,-212
80002974:	00300613          	li	a2,3
80002978:	000c8693          	mv	a3,s9
8000297c:	00007097          	auipc	ra,0x7
80002980:	ac8080e7          	jalr	-1336(ra) # 80009444 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002984:	00050913          	mv	s2,a0
80002988:	0080006f          	j	80002990 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x520>
8000298c:	f2842d03          	lw	s10,-216(s0)
80002990:	f2c40593          	addi	a1,s0,-212
80002994:	0a000613          	li	a2,160
80002998:	000c8513          	mv	a0,s9
8000299c:	00007097          	auipc	ra,0x7
800029a0:	7a4080e7          	jalr	1956(ra) # 8000a140 <memcpy>
800029a4:	0b2ca023          	sw	s2,160(s9)
800029a8:	040d7513          	andi	a0,s10,64
800029ac:	28050063          	beqz	a0,80002c2c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7bc>
800029b0:	f2c40513          	addi	a0,s0,-212
800029b4:	0a000613          	li	a2,160
800029b8:	00000593          	li	a1,0
800029bc:	00008097          	auipc	ra,0x8
800029c0:	610080e7          	jalr	1552(ra) # 8000afcc <memset>
800029c4:	0a0ca703          	lw	a4,160(s9)
800029c8:	00500513          	li	a0,5
800029cc:	20a77c63          	bgeu	a4,a0,80002be4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x774>
800029d0:	00000a13          	li	s4,0
800029d4:	00000913          	li	s2,0
800029d8:	00271713          	slli	a4,a4,0x2
800029dc:	00ec8db3          	add	s11,s9,a4
800029e0:	f3440693          	addi	a3,s0,-204
800029e4:	02800593          	li	a1,40
800029e8:	bf6a2537          	lui	a0,0xbf6a2
800029ec:	f0150613          	addi	a2,a0,-255 # bf6a1f01 <KALLOC_BUFFER+0x3f691f01>
800029f0:	6e38f537          	lui	a0,0x6e38f
800029f4:	d6450513          	addi	a0,a0,-668 # 6e38ed64 <.Lline_table_start2+0x6e38d9b6>
800029f8:	f2a42023          	sw	a0,-224(s0)
800029fc:	daa79537          	lui	a0,0xdaa79
80002a00:	7ed50513          	addi	a0,a0,2029 # daa797ed <KALLOC_BUFFER+0x5aa697ed>
80002a04:	f0a42e23          	sw	a0,-228(s0)
80002a08:	e9400537          	lui	a0,0xe9400
80002a0c:	9f450993          	addi	s3,a0,-1548 # e93ff9f4 <KALLOC_BUFFER+0x693ef9f4>
80002a10:	00185537          	lui	a0,0x185
80002a14:	f0350493          	addi	s1,a0,-253 # 184f03 <.Lline_table_start2+0x183b55>
80002a18:	000c8c13          	mv	s8,s9
80002a1c:	fffa0a93          	addi	s5,s4,-1
80002a20:	002a1a13          	slli	s4,s4,0x2
80002a24:	01468bb3          	add	s7,a3,s4
80002a28:	000c0513          	mv	a0,s8
80002a2c:	1fb50263          	beq	a0,s11,80002c10 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7a0>
80002a30:	00052c83          	lw	s9,0(a0)
80002a34:	00450c13          	addi	s8,a0,4
80002a38:	001a8a93          	addi	s5,s5,1
80002a3c:	004b8b93          	addi	s7,s7,4
80002a40:	000c0513          	mv	a0,s8
80002a44:	fe0c84e3          	beqz	s9,80002a2c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5bc>
80002a48:	f0942c23          	sw	s1,-232(s0)
80002a4c:	f1242a23          	sw	s2,-236(s0)
80002a50:	00bafce3          	bgeu	s5,a1,80003268 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdf8>
80002a54:	00098b13          	mv	s6,s3
80002a58:	ff4ba903          	lw	s2,-12(s7)
80002a5c:	001a8a13          	addi	s4,s5,1
80002a60:	000c8513          	mv	a0,s9
80002a64:	00000593          	li	a1,0
80002a68:	f0c42823          	sw	a2,-240(s0)
80002a6c:	00000693          	li	a3,0
80002a70:	00007097          	auipc	ra,0x7
80002a74:	648080e7          	jalr	1608(ra) # 8000a0b8 <__muldi3>
80002a78:	01250633          	add	a2,a0,s2
80002a7c:	02800493          	li	s1,40
80002a80:	fecbaa23          	sw	a2,-12(s7)
80002a84:	7e9a7463          	bgeu	s4,s1,8000326c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002a88:	ff8bad03          	lw	s10,-8(s7)
80002a8c:	00a63933          	sltu	s2,a2,a0
80002a90:	01258933          	add	s2,a1,s2
80002a94:	000c8513          	mv	a0,s9
80002a98:	00000593          	li	a1,0
80002a9c:	f2042603          	lw	a2,-224(s0)
80002aa0:	00000693          	li	a3,0
80002aa4:	00007097          	auipc	ra,0x7
80002aa8:	614080e7          	jalr	1556(ra) # 8000a0b8 <__muldi3>
80002aac:	01a90633          	add	a2,s2,s10
80002ab0:	00a60533          	add	a0,a2,a0
80002ab4:	feabac23          	sw	a0,-8(s7)
80002ab8:	02500993          	li	s3,37
80002abc:	7b59e863          	bltu	s3,s5,8000326c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002ac0:	012636b3          	sltu	a3,a2,s2
80002ac4:	ffcbad03          	lw	s10,-4(s7)
80002ac8:	00c53933          	sltu	s2,a0,a2
80002acc:	00b685b3          	add	a1,a3,a1
80002ad0:	01258933          	add	s2,a1,s2
80002ad4:	000c8513          	mv	a0,s9
80002ad8:	00000593          	li	a1,0
80002adc:	f1c42603          	lw	a2,-228(s0)
80002ae0:	00000693          	li	a3,0
80002ae4:	00007097          	auipc	ra,0x7
80002ae8:	5d4080e7          	jalr	1492(ra) # 8000a0b8 <__muldi3>
80002aec:	01a90633          	add	a2,s2,s10
80002af0:	00a60533          	add	a0,a2,a0
80002af4:	feabae23          	sw	a0,-4(s7)
80002af8:	773a8a63          	beq	s5,s3,8000326c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002afc:	012636b3          	sltu	a3,a2,s2
80002b00:	000bad03          	lw	s10,0(s7)
80002b04:	00c53933          	sltu	s2,a0,a2
80002b08:	00b685b3          	add	a1,a3,a1
80002b0c:	01258933          	add	s2,a1,s2
80002b10:	000c8513          	mv	a0,s9
80002b14:	00000593          	li	a1,0
80002b18:	000b0993          	mv	s3,s6
80002b1c:	000b0613          	mv	a2,s6
80002b20:	00000693          	li	a3,0
80002b24:	00007097          	auipc	ra,0x7
80002b28:	594080e7          	jalr	1428(ra) # 8000a0b8 <__muldi3>
80002b2c:	01a90633          	add	a2,s2,s10
80002b30:	00a60533          	add	a0,a2,a0
80002b34:	00aba023          	sw	a0,0(s7)
80002b38:	02300693          	li	a3,35
80002b3c:	7356e863          	bltu	a3,s5,8000326c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002b40:	012636b3          	sltu	a3,a2,s2
80002b44:	004ba903          	lw	s2,4(s7)
80002b48:	00c53533          	sltu	a0,a0,a2
80002b4c:	00b685b3          	add	a1,a3,a1
80002b50:	00a58b33          	add	s6,a1,a0
80002b54:	000c8513          	mv	a0,s9
80002b58:	00000593          	li	a1,0
80002b5c:	f1842483          	lw	s1,-232(s0)
80002b60:	00048613          	mv	a2,s1
80002b64:	00000693          	li	a3,0
80002b68:	00007097          	auipc	ra,0x7
80002b6c:	550080e7          	jalr	1360(ra) # 8000a0b8 <__muldi3>
80002b70:	012b0933          	add	s2,s6,s2
80002b74:	01693633          	sltu	a2,s2,s6
80002b78:	00a906b3          	add	a3,s2,a0
80002b7c:	0126b533          	sltu	a0,a3,s2
80002b80:	00b605b3          	add	a1,a2,a1
80002b84:	00a58533          	add	a0,a1,a0
80002b88:	00dba223          	sw	a3,4(s7)
80002b8c:	f2842d03          	lw	s10,-216(s0)
80002b90:	02050863          	beqz	a0,80002bc0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x750>
80002b94:	f3440693          	addi	a3,s0,-204
80002b98:	02800593          	li	a1,40
80002b9c:	f1042603          	lw	a2,-240(s0)
80002ba0:	02300713          	li	a4,35
80002ba4:	72ea8663          	beq	s5,a4,800032d0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe60>
80002ba8:	00aba423          	sw	a0,8(s7)
80002bac:	00600513          	li	a0,6
80002bb0:	f1442903          	lw	s2,-236(s0)
80002bb4:	01550533          	add	a0,a0,s5
80002bb8:	e72562e3          	bltu	a0,s2,80002a1c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002bbc:	0200006f          	j	80002bdc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x76c>
80002bc0:	00500513          	li	a0,5
80002bc4:	f3440693          	addi	a3,s0,-204
80002bc8:	02800593          	li	a1,40
80002bcc:	f1042603          	lw	a2,-240(s0)
80002bd0:	f1442903          	lw	s2,-236(s0)
80002bd4:	01550533          	add	a0,a0,s5
80002bd8:	e52562e3          	bltu	a0,s2,80002a1c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002bdc:	00050913          	mv	s2,a0
80002be0:	e3dff06f          	j	80002a1c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002be4:	02900513          	li	a0,41
80002be8:	60a77c63          	bgeu	a4,a0,80003200 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002bec:	8000c5b7          	lui	a1,0x8000c
80002bf0:	7dc58593          	addi	a1,a1,2012 # 8000c7dc <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417h3fd4a7811adefa4aE>
80002bf4:	f2c40513          	addi	a0,s0,-212
80002bf8:	00500613          	li	a2,5
80002bfc:	000c8693          	mv	a3,s9
80002c00:	00007097          	auipc	ra,0x7
80002c04:	844080e7          	jalr	-1980(ra) # 80009444 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002c08:	00050913          	mv	s2,a0
80002c0c:	0080006f          	j	80002c14 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7a4>
80002c10:	f2442c83          	lw	s9,-220(s0)
80002c14:	f2c40593          	addi	a1,s0,-212
80002c18:	0a000613          	li	a2,160
80002c1c:	000c8513          	mv	a0,s9
80002c20:	00007097          	auipc	ra,0x7
80002c24:	520080e7          	jalr	1312(ra) # 8000a140 <memcpy>
80002c28:	0b2ca023          	sw	s2,160(s9)
80002c2c:	080d7513          	andi	a0,s10,128
80002c30:	3c050e63          	beqz	a0,8000300c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb9c>
80002c34:	f2c40513          	addi	a0,s0,-212
80002c38:	0a000613          	li	a2,160
80002c3c:	00000593          	li	a1,0
80002c40:	00008097          	auipc	ra,0x8
80002c44:	38c080e7          	jalr	908(ra) # 8000afcc <memset>
80002c48:	0a0ca703          	lw	a4,160(s9)
80002c4c:	00a00513          	li	a0,10
80002c50:	36a77e63          	bgeu	a4,a0,80002fcc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb5c>
80002c54:	000c8d93          	mv	s11,s9
80002c58:	00000c93          	li	s9,0
80002c5c:	00000913          	li	s2,0
80002c60:	00271713          	slli	a4,a4,0x2
80002c64:	00ed84b3          	add	s1,s11,a4
80002c68:	f3c40693          	addi	a3,s0,-196
80002c6c:	02800593          	li	a1,40
80002c70:	2e954537          	lui	a0,0x2e954
80002c74:	e0150613          	addi	a2,a0,-511 # 2e953e01 <.Lline_table_start2+0x2e952a53>
80002c78:	03dfa537          	lui	a0,0x3dfa
80002c7c:	90950513          	addi	a0,a0,-1783 # 3df9909 <.Lline_table_start2+0x3df855b>
80002c80:	f2a42023          	sw	a0,-224(s0)
80002c84:	0f154537          	lui	a0,0xf154
80002c88:	8fd50513          	addi	a0,a0,-1795 # f1538fd <.Lline_table_start2+0xf15254f>
80002c8c:	f0a42e23          	sw	a0,-228(s0)
80002c90:	2374e537          	lui	a0,0x2374e
80002c94:	42f50993          	addi	s3,a0,1071 # 2374e42f <.Lline_table_start2+0x2374d081>
80002c98:	d3cff537          	lui	a0,0xd3cff
80002c9c:	5ec50513          	addi	a0,a0,1516 # d3cff5ec <KALLOC_BUFFER+0x53cef5ec>
80002ca0:	f0a42c23          	sw	a0,-232(s0)
80002ca4:	c404e537          	lui	a0,0xc404e
80002ca8:	c0850513          	addi	a0,a0,-1016 # c404dc08 <KALLOC_BUFFER+0x4403dc08>
80002cac:	f0a42a23          	sw	a0,-236(s0)
80002cb0:	bccdb537          	lui	a0,0xbccdb
80002cb4:	0da50513          	addi	a0,a0,218 # bccdb0da <KALLOC_BUFFER+0x3cccb0da>
80002cb8:	f0a42823          	sw	a0,-240(s0)
80002cbc:	a6338537          	lui	a0,0xa6338
80002cc0:	f1950513          	addi	a0,a0,-231 # a6337f19 <KALLOC_BUFFER+0x26327f19>
80002cc4:	f0a42623          	sw	a0,-244(s0)
80002cc8:	e91f2537          	lui	a0,0xe91f2
80002ccc:	60350513          	addi	a0,a0,1539 # e91f2603 <KALLOC_BUFFER+0x691e2603>
80002cd0:	f0a42423          	sw	a0,-248(s0)
80002cd4:	fffc8b13          	addi	s6,s9,-1
80002cd8:	002c9b93          	slli	s7,s9,0x2
80002cdc:	01768bb3          	add	s7,a3,s7
80002ce0:	000d8513          	mv	a0,s11
80002ce4:	f2442c83          	lw	s9,-220(s0)
80002ce8:	30950663          	beq	a0,s1,80002ff4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb84>
80002cec:	00052a83          	lw	s5,0(a0)
80002cf0:	00450d93          	addi	s11,a0,4
80002cf4:	001b0b13          	addi	s6,s6,1
80002cf8:	004b8b93          	addi	s7,s7,4
80002cfc:	000d8513          	mv	a0,s11
80002d00:	fe0a84e3          	beqz	s5,80002ce8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x878>
80002d04:	f1242223          	sw	s2,-252(s0)
80002d08:	56bb7e63          	bgeu	s6,a1,80003284 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe14>
80002d0c:	00098c13          	mv	s8,s3
80002d10:	fecba903          	lw	s2,-20(s7)
80002d14:	001b0c93          	addi	s9,s6,1
80002d18:	000a8513          	mv	a0,s5
80002d1c:	00000593          	li	a1,0
80002d20:	f0c42023          	sw	a2,-256(s0)
80002d24:	00000693          	li	a3,0
80002d28:	00007097          	auipc	ra,0x7
80002d2c:	390080e7          	jalr	912(ra) # 8000a0b8 <__muldi3>
80002d30:	01250633          	add	a2,a0,s2
80002d34:	02800a13          	li	s4,40
80002d38:	fecba623          	sw	a2,-20(s7)
80002d3c:	554cf663          	bgeu	s9,s4,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002d40:	ff0bad03          	lw	s10,-16(s7)
80002d44:	00a63933          	sltu	s2,a2,a0
80002d48:	01258933          	add	s2,a1,s2
80002d4c:	000a8513          	mv	a0,s5
80002d50:	00000593          	li	a1,0
80002d54:	f2042603          	lw	a2,-224(s0)
80002d58:	00000693          	li	a3,0
80002d5c:	00007097          	auipc	ra,0x7
80002d60:	35c080e7          	jalr	860(ra) # 8000a0b8 <__muldi3>
80002d64:	01a90633          	add	a2,s2,s10
80002d68:	00a60533          	add	a0,a2,a0
80002d6c:	feaba823          	sw	a0,-16(s7)
80002d70:	02500993          	li	s3,37
80002d74:	5169ea63          	bltu	s3,s6,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002d78:	012636b3          	sltu	a3,a2,s2
80002d7c:	ff4bad03          	lw	s10,-12(s7)
80002d80:	00c53933          	sltu	s2,a0,a2
80002d84:	00b685b3          	add	a1,a3,a1
80002d88:	01258933          	add	s2,a1,s2
80002d8c:	000a8513          	mv	a0,s5
80002d90:	00000593          	li	a1,0
80002d94:	f1c42603          	lw	a2,-228(s0)
80002d98:	00000693          	li	a3,0
80002d9c:	00007097          	auipc	ra,0x7
80002da0:	31c080e7          	jalr	796(ra) # 8000a0b8 <__muldi3>
80002da4:	01a90633          	add	a2,s2,s10
80002da8:	00a60533          	add	a0,a2,a0
80002dac:	feabaa23          	sw	a0,-12(s7)
80002db0:	4d3b0c63          	beq	s6,s3,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002db4:	012636b3          	sltu	a3,a2,s2
80002db8:	ff8bad03          	lw	s10,-8(s7)
80002dbc:	00c53933          	sltu	s2,a0,a2
80002dc0:	00b685b3          	add	a1,a3,a1
80002dc4:	01258933          	add	s2,a1,s2
80002dc8:	000a8513          	mv	a0,s5
80002dcc:	00000593          	li	a1,0
80002dd0:	000c0993          	mv	s3,s8
80002dd4:	000c0613          	mv	a2,s8
80002dd8:	00000693          	li	a3,0
80002ddc:	00007097          	auipc	ra,0x7
80002de0:	2dc080e7          	jalr	732(ra) # 8000a0b8 <__muldi3>
80002de4:	01a90633          	add	a2,s2,s10
80002de8:	00a60533          	add	a0,a2,a0
80002dec:	feabac23          	sw	a0,-8(s7)
80002df0:	02300c13          	li	s8,35
80002df4:	496c6a63          	bltu	s8,s6,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002df8:	012636b3          	sltu	a3,a2,s2
80002dfc:	ffcbad03          	lw	s10,-4(s7)
80002e00:	00c53933          	sltu	s2,a0,a2
80002e04:	00b685b3          	add	a1,a3,a1
80002e08:	01258933          	add	s2,a1,s2
80002e0c:	000a8513          	mv	a0,s5
80002e10:	00000593          	li	a1,0
80002e14:	f1842603          	lw	a2,-232(s0)
80002e18:	00000693          	li	a3,0
80002e1c:	00007097          	auipc	ra,0x7
80002e20:	29c080e7          	jalr	668(ra) # 8000a0b8 <__muldi3>
80002e24:	01a90633          	add	a2,s2,s10
80002e28:	00a60533          	add	a0,a2,a0
80002e2c:	feabae23          	sw	a0,-4(s7)
80002e30:	458b0c63          	beq	s6,s8,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002e34:	012636b3          	sltu	a3,a2,s2
80002e38:	000bad03          	lw	s10,0(s7)
80002e3c:	00c53933          	sltu	s2,a0,a2
80002e40:	00b685b3          	add	a1,a3,a1
80002e44:	01258933          	add	s2,a1,s2
80002e48:	000a8513          	mv	a0,s5
80002e4c:	00000593          	li	a1,0
80002e50:	f1442603          	lw	a2,-236(s0)
80002e54:	00000693          	li	a3,0
80002e58:	00007097          	auipc	ra,0x7
80002e5c:	260080e7          	jalr	608(ra) # 8000a0b8 <__muldi3>
80002e60:	01a90633          	add	a2,s2,s10
80002e64:	00a60533          	add	a0,a2,a0
80002e68:	00aba023          	sw	a0,0(s7)
80002e6c:	02100c13          	li	s8,33
80002e70:	416c6c63          	bltu	s8,s6,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002e74:	012636b3          	sltu	a3,a2,s2
80002e78:	004bad03          	lw	s10,4(s7)
80002e7c:	00c53933          	sltu	s2,a0,a2
80002e80:	00b685b3          	add	a1,a3,a1
80002e84:	01258933          	add	s2,a1,s2
80002e88:	000a8513          	mv	a0,s5
80002e8c:	00000593          	li	a1,0
80002e90:	f1042603          	lw	a2,-240(s0)
80002e94:	00000693          	li	a3,0
80002e98:	00007097          	auipc	ra,0x7
80002e9c:	220080e7          	jalr	544(ra) # 8000a0b8 <__muldi3>
80002ea0:	01a90633          	add	a2,s2,s10
80002ea4:	00a60533          	add	a0,a2,a0
80002ea8:	00aba223          	sw	a0,4(s7)
80002eac:	3d8b0e63          	beq	s6,s8,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002eb0:	012636b3          	sltu	a3,a2,s2
80002eb4:	008bad03          	lw	s10,8(s7)
80002eb8:	00c53933          	sltu	s2,a0,a2
80002ebc:	00b685b3          	add	a1,a3,a1
80002ec0:	01258933          	add	s2,a1,s2
80002ec4:	000a8513          	mv	a0,s5
80002ec8:	00000593          	li	a1,0
80002ecc:	f0c42603          	lw	a2,-244(s0)
80002ed0:	00000693          	li	a3,0
80002ed4:	00007097          	auipc	ra,0x7
80002ed8:	1e4080e7          	jalr	484(ra) # 8000a0b8 <__muldi3>
80002edc:	01a90633          	add	a2,s2,s10
80002ee0:	00a60533          	add	a0,a2,a0
80002ee4:	00aba423          	sw	a0,8(s7)
80002ee8:	01f00c13          	li	s8,31
80002eec:	396c6e63          	bltu	s8,s6,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002ef0:	012636b3          	sltu	a3,a2,s2
80002ef4:	00cbad03          	lw	s10,12(s7)
80002ef8:	00c53933          	sltu	s2,a0,a2
80002efc:	00b685b3          	add	a1,a3,a1
80002f00:	01258933          	add	s2,a1,s2
80002f04:	000a8513          	mv	a0,s5
80002f08:	00000593          	li	a1,0
80002f0c:	f0842603          	lw	a2,-248(s0)
80002f10:	00000693          	li	a3,0
80002f14:	00007097          	auipc	ra,0x7
80002f18:	1a4080e7          	jalr	420(ra) # 8000a0b8 <__muldi3>
80002f1c:	01a90633          	add	a2,s2,s10
80002f20:	00a60533          	add	a0,a2,a0
80002f24:	00aba623          	sw	a0,12(s7)
80002f28:	378b0063          	beq	s6,s8,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002f2c:	012636b3          	sltu	a3,a2,s2
80002f30:	010ba903          	lw	s2,16(s7)
80002f34:	00c53533          	sltu	a0,a0,a2
80002f38:	00b685b3          	add	a1,a3,a1
80002f3c:	00a58c33          	add	s8,a1,a0
80002f40:	24e00613          	li	a2,590
80002f44:	000a8513          	mv	a0,s5
80002f48:	00000593          	li	a1,0
80002f4c:	00000693          	li	a3,0
80002f50:	00007097          	auipc	ra,0x7
80002f54:	168080e7          	jalr	360(ra) # 8000a0b8 <__muldi3>
80002f58:	012c0933          	add	s2,s8,s2
80002f5c:	01893633          	sltu	a2,s2,s8
80002f60:	00a906b3          	add	a3,s2,a0
80002f64:	0126b533          	sltu	a0,a3,s2
80002f68:	00b605b3          	add	a1,a2,a1
80002f6c:	00a58533          	add	a0,a1,a0
80002f70:	00dba823          	sw	a3,16(s7)
80002f74:	f2842d03          	lw	s10,-216(s0)
80002f78:	02050863          	beqz	a0,80002fa8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb38>
80002f7c:	f3c40693          	addi	a3,s0,-196
80002f80:	02800593          	li	a1,40
80002f84:	f0042603          	lw	a2,-256(s0)
80002f88:	f0442903          	lw	s2,-252(s0)
80002f8c:	01e00713          	li	a4,30
80002f90:	34eb7c63          	bgeu	s6,a4,800032e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe78>
80002f94:	00abaa23          	sw	a0,20(s7)
80002f98:	00b00513          	li	a0,11
80002f9c:	01650533          	add	a0,a0,s6
80002fa0:	d3256ae3          	bltu	a0,s2,80002cd4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002fa4:	0200006f          	j	80002fc4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb54>
80002fa8:	00a00513          	li	a0,10
80002fac:	f3c40693          	addi	a3,s0,-196
80002fb0:	02800593          	li	a1,40
80002fb4:	f0042603          	lw	a2,-256(s0)
80002fb8:	f0442903          	lw	s2,-252(s0)
80002fbc:	01650533          	add	a0,a0,s6
80002fc0:	d1256ae3          	bltu	a0,s2,80002cd4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002fc4:	00050913          	mv	s2,a0
80002fc8:	d0dff06f          	j	80002cd4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002fcc:	02900513          	li	a0,41
80002fd0:	22a77863          	bgeu	a4,a0,80003200 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002fd4:	8000c5b7          	lui	a1,0x8000c
80002fd8:	7f058593          	addi	a1,a1,2032 # 8000c7f0 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E>
80002fdc:	f2c40513          	addi	a0,s0,-212
80002fe0:	00a00613          	li	a2,10
80002fe4:	000c8693          	mv	a3,s9
80002fe8:	00006097          	auipc	ra,0x6
80002fec:	45c080e7          	jalr	1116(ra) # 80009444 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002ff0:	00050913          	mv	s2,a0
80002ff4:	f2c40593          	addi	a1,s0,-212
80002ff8:	0a000613          	li	a2,160
80002ffc:	000c8513          	mv	a0,s9
80003000:	00007097          	auipc	ra,0x7
80003004:	140080e7          	jalr	320(ra) # 8000a140 <memcpy>
80003008:	0b2ca023          	sw	s2,160(s9)
8000300c:	100d7513          	andi	a0,s10,256
80003010:	18050463          	beqz	a0,80003198 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd28>
80003014:	f2c40513          	addi	a0,s0,-212
80003018:	0a000613          	li	a2,160
8000301c:	f2c40493          	addi	s1,s0,-212
80003020:	00000593          	li	a1,0
80003024:	00008097          	auipc	ra,0x8
80003028:	fa8080e7          	jalr	-88(ra) # 8000afcc <memset>
8000302c:	0a0ca703          	lw	a4,160(s9)
80003030:	01300513          	li	a0,19
80003034:	10a77e63          	bgeu	a4,a0,80003150 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xce0>
80003038:	00000c13          	li	s8,0
8000303c:	00000913          	li	s2,0
80003040:	00271713          	slli	a4,a4,0x2
80003044:	00ec8733          	add	a4,s9,a4
80003048:	f2840b93          	addi	s7,s0,-216
8000304c:	8000d637          	lui	a2,0x8000d
80003050:	81860613          	addi	a2,a2,-2024 # 8000c818 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80003054:	000c8d13          	mv	s10,s9
80003058:	fffc0d93          	addi	s11,s8,-1
8000305c:	002c1513          	slli	a0,s8,0x2
80003060:	00ab8bb3          	add	s7,s7,a0
80003064:	00a48533          	add	a0,s1,a0
80003068:	000d0593          	mv	a1,s10
8000306c:	10e58863          	beq	a1,a4,8000317c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd0c>
80003070:	000c0a13          	mv	s4,s8
80003074:	00050493          	mv	s1,a0
80003078:	00458d13          	addi	s10,a1,4
8000307c:	0005aa83          	lw	s5,0(a1)
80003080:	001d8d93          	addi	s11,s11,1
80003084:	004b8b93          	addi	s7,s7,4
80003088:	001c0c13          	addi	s8,s8,1
8000308c:	00450513          	addi	a0,a0,4
80003090:	000d0593          	mv	a1,s10
80003094:	fc0a8ce3          	beqz	s5,8000306c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbfc>
80003098:	f0e42e23          	sw	a4,-228(s0)
8000309c:	f3242023          	sw	s2,-224(s0)
800030a0:	00000993          	li	s3,0
800030a4:	001d8c13          	addi	s8,s11,1
800030a8:	04c00913          	li	s2,76
800030ac:	00060c93          	mv	s9,a2
800030b0:	02800513          	li	a0,40
800030b4:	1caa7a63          	bgeu	s4,a0,80003288 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
800030b8:	000ca503          	lw	a0,0(s9)
800030bc:	0004ab03          	lw	s6,0(s1)
800030c0:	00000593          	li	a1,0
800030c4:	000a8613          	mv	a2,s5
800030c8:	00000693          	li	a3,0
800030cc:	00007097          	auipc	ra,0x7
800030d0:	fec080e7          	jalr	-20(ra) # 8000a0b8 <__muldi3>
800030d4:	013b09b3          	add	s3,s6,s3
800030d8:	0169b633          	sltu	a2,s3,s6
800030dc:	00a98533          	add	a0,s3,a0
800030e0:	013539b3          	sltu	s3,a0,s3
800030e4:	00b605b3          	add	a1,a2,a1
800030e8:	013589b3          	add	s3,a1,s3
800030ec:	00a4a023          	sw	a0,0(s1)
800030f0:	001a0a13          	addi	s4,s4,1
800030f4:	00448493          	addi	s1,s1,4
800030f8:	ffc90913          	addi	s2,s2,-4
800030fc:	004c8c93          	addi	s9,s9,4
80003100:	fa0918e3          	bnez	s2,800030b0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xc40>
80003104:	00098e63          	beqz	s3,80003120 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcb0>
80003108:	f2442c83          	lw	s9,-220(s0)
8000310c:	01500513          	li	a0,21
80003110:	1eadf863          	bgeu	s11,a0,80003300 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe90>
80003114:	053ba623          	sw	s3,76(s7)
80003118:	01400513          	li	a0,20
8000311c:	00c0006f          	j	80003128 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcb8>
80003120:	01300513          	li	a0,19
80003124:	f2442c83          	lw	s9,-220(s0)
80003128:	f2c40493          	addi	s1,s0,-212
8000312c:	f1c42703          	lw	a4,-228(s0)
80003130:	f2840b93          	addi	s7,s0,-216
80003134:	01b50533          	add	a0,a0,s11
80003138:	f2042903          	lw	s2,-224(s0)
8000313c:	8000d637          	lui	a2,0x8000d
80003140:	81860613          	addi	a2,a2,-2024 # 8000c818 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80003144:	f1256ae3          	bltu	a0,s2,80003058 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbe8>
80003148:	00050913          	mv	s2,a0
8000314c:	f0dff06f          	j	80003058 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbe8>
80003150:	02900513          	li	a0,41
80003154:	0aa77663          	bgeu	a4,a0,80003200 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80003158:	8000d5b7          	lui	a1,0x8000d
8000315c:	81858593          	addi	a1,a1,-2024 # 8000c818 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80003160:	f2c40513          	addi	a0,s0,-212
80003164:	01300613          	li	a2,19
80003168:	000c8693          	mv	a3,s9
8000316c:	00006097          	auipc	ra,0x6
80003170:	2d8080e7          	jalr	728(ra) # 80009444 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80003174:	00050913          	mv	s2,a0
80003178:	0080006f          	j	80003180 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd10>
8000317c:	f2842d03          	lw	s10,-216(s0)
80003180:	f2c40593          	addi	a1,s0,-212
80003184:	0a000613          	li	a2,160
80003188:	000c8513          	mv	a0,s9
8000318c:	00007097          	auipc	ra,0x7
80003190:	fb4080e7          	jalr	-76(ra) # 8000a140 <memcpy>
80003194:	0b2ca023          	sw	s2,160(s9)
80003198:	000c8513          	mv	a0,s9
8000319c:	000d0593          	mv	a1,s10
800031a0:	00006097          	auipc	ra,0x6
800031a4:	0a0080e7          	jalr	160(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800031a8:	000c8513          	mv	a0,s9
800031ac:	0fc12083          	lw	ra,252(sp)
800031b0:	0f812403          	lw	s0,248(sp)
800031b4:	0f412483          	lw	s1,244(sp)
800031b8:	0f012903          	lw	s2,240(sp)
800031bc:	0ec12983          	lw	s3,236(sp)
800031c0:	0e812a03          	lw	s4,232(sp)
800031c4:	0e412a83          	lw	s5,228(sp)
800031c8:	0e012b03          	lw	s6,224(sp)
800031cc:	0dc12b83          	lw	s7,220(sp)
800031d0:	0d812c03          	lw	s8,216(sp)
800031d4:	0d412c83          	lw	s9,212(sp)
800031d8:	0d012d03          	lw	s10,208(sp)
800031dc:	0cc12d83          	lw	s11,204(sp)
800031e0:	10010113          	addi	sp,sp,256
800031e4:	00008067          	ret
800031e8:	8000d637          	lui	a2,0x8000d
800031ec:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800031f0:	02800593          	li	a1,40
800031f4:	00098513          	mv	a0,s3
800031f8:	00006097          	auipc	ra,0x6
800031fc:	da8080e7          	jalr	-600(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003200:	8000d637          	lui	a2,0x8000d
80003204:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003208:	02800593          	li	a1,40
8000320c:	00070513          	mv	a0,a4
80003210:	00006097          	auipc	ra,0x6
80003214:	d90080e7          	jalr	-624(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003218:	8000d637          	lui	a2,0x8000d
8000321c:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003220:	02800513          	li	a0,40
80003224:	02800593          	li	a1,40
80003228:	00004097          	auipc	ra,0x4
8000322c:	eec080e7          	jalr	-276(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003230:	02800a93          	li	s5,40
80003234:	8000d637          	lui	a2,0x8000d
80003238:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000323c:	02800593          	li	a1,40
80003240:	000a8513          	mv	a0,s5
80003244:	00004097          	auipc	ra,0x4
80003248:	ed0080e7          	jalr	-304(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000324c:	000b8c93          	mv	s9,s7
80003250:	8000d637          	lui	a2,0x8000d
80003254:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003258:	02800593          	li	a1,40
8000325c:	000c8513          	mv	a0,s9
80003260:	00004097          	auipc	ra,0x4
80003264:	eb4080e7          	jalr	-332(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003268:	000a8493          	mv	s1,s5
8000326c:	8000d637          	lui	a2,0x8000d
80003270:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003274:	02800593          	li	a1,40
80003278:	00048513          	mv	a0,s1
8000327c:	00004097          	auipc	ra,0x4
80003280:	e98080e7          	jalr	-360(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003284:	000b0a13          	mv	s4,s6
80003288:	8000d637          	lui	a2,0x8000d
8000328c:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003290:	02800593          	li	a1,40
80003294:	000a0513          	mv	a0,s4
80003298:	00004097          	auipc	ra,0x4
8000329c:	e7c080e7          	jalr	-388(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800032a0:	002a8513          	addi	a0,s5,2
800032a4:	8000d637          	lui	a2,0x8000d
800032a8:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800032ac:	02800593          	li	a1,40
800032b0:	00004097          	auipc	ra,0x4
800032b4:	e64080e7          	jalr	-412(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800032b8:	003b8513          	addi	a0,s7,3
800032bc:	8000d637          	lui	a2,0x8000d
800032c0:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800032c4:	02800593          	li	a1,40
800032c8:	00004097          	auipc	ra,0x4
800032cc:	e4c080e7          	jalr	-436(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800032d0:	005a8513          	addi	a0,s5,5
800032d4:	8000d637          	lui	a2,0x8000d
800032d8:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800032dc:	02800593          	li	a1,40
800032e0:	00004097          	auipc	ra,0x4
800032e4:	e34080e7          	jalr	-460(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800032e8:	00ab0513          	addi	a0,s6,10
800032ec:	8000d637          	lui	a2,0x8000d
800032f0:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800032f4:	02800593          	li	a1,40
800032f8:	00004097          	auipc	ra,0x4
800032fc:	e1c080e7          	jalr	-484(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003300:	013d8513          	addi	a0,s11,19
80003304:	8000d637          	lui	a2,0x8000d
80003308:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000330c:	02800593          	li	a1,40
80003310:	00004097          	auipc	ra,0x4
80003314:	e04080e7          	jalr	-508(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80003318 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE>:
80003318:	a8010113          	addi	sp,sp,-1408
8000331c:	56112e23          	sw	ra,1404(sp)
80003320:	56812c23          	sw	s0,1400(sp)
80003324:	56912a23          	sw	s1,1396(sp)
80003328:	57212823          	sw	s2,1392(sp)
8000332c:	57312623          	sw	s3,1388(sp)
80003330:	57412423          	sw	s4,1384(sp)
80003334:	57512223          	sw	s5,1380(sp)
80003338:	57612023          	sw	s6,1376(sp)
8000333c:	55712e23          	sw	s7,1372(sp)
80003340:	55812c23          	sw	s8,1368(sp)
80003344:	55912a23          	sw	s9,1364(sp)
80003348:	55a12823          	sw	s10,1360(sp)
8000334c:	55b12623          	sw	s11,1356(sp)
80003350:	58010413          	addi	s0,sp,1408
80003354:	0045ab83          	lw	s7,4(a1)
80003358:	0005ab03          	lw	s6,0(a1)
8000335c:	017b6733          	or	a4,s6,s7
80003360:	6e0702e3          	beqz	a4,80004244 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf2c>
80003364:	a8c42623          	sw	a2,-1396(s0)
80003368:	00c5aa83          	lw	s5,12(a1)
8000336c:	0085a983          	lw	s3,8(a1)
80003370:	0159e633          	or	a2,s3,s5
80003374:	6e0606e3          	beqz	a2,80004260 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf48>
80003378:	0145a903          	lw	s2,20(a1)
8000337c:	0105a483          	lw	s1,16(a1)
80003380:	0124e633          	or	a2,s1,s2
80003384:	6e060ce3          	beqz	a2,8000427c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf64>
80003388:	00068c93          	mv	s9,a3
8000338c:	009b0633          	add	a2,s6,s1
80003390:	016636b3          	sltu	a3,a2,s6
80003394:	012b87b3          	add	a5,s7,s2
80003398:	00d78733          	add	a4,a5,a3
8000339c:	01770463          	beq	a4,s7,800033a4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8c>
800033a0:	017736b3          	sltu	a3,a4,s7
800033a4:	74069ce3          	bnez	a3,800042fc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfe4>
800033a8:	015b8663          	beq	s7,s5,800033b4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9c>
800033ac:	015bb6b3          	sltu	a3,s7,s5
800033b0:	0080006f          	j	800033b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa0>
800033b4:	013b36b3          	sltu	a3,s6,s3
800033b8:	760690e3          	bnez	a3,80004318 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x1000>
800033bc:	01000693          	li	a3,16
800033c0:	6d96fce3          	bgeu	a3,s9,80004298 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf80>
800033c4:	a8a42223          	sw	a0,-1404(s0)
800033c8:	01859a03          	lh	s4,24(a1)
800033cc:	016636b3          	sltu	a3,a2,s6
800033d0:	00d78533          	add	a0,a5,a3
800033d4:	00163693          	seqz	a3,a2
800033d8:	40d507b3          	sub	a5,a0,a3
800033dc:	55555537          	lui	a0,0x55555
800033e0:	55550713          	addi	a4,a0,1365 # 55555555 <.Lline_table_start2+0x555541a7>
800033e4:	33333537          	lui	a0,0x33333
800033e8:	33350693          	addi	a3,a0,819 # 33333333 <.Lline_table_start2+0x33331f85>
800033ec:	0f0f1537          	lui	a0,0xf0f1
800033f0:	f0f50513          	addi	a0,a0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
800033f4:	06079c63          	bnez	a5,8000346c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x154>
800033f8:	fff60613          	addi	a2,a2,-1
800033fc:	00165793          	srli	a5,a2,0x1
80003400:	00f66633          	or	a2,a2,a5
80003404:	00265793          	srli	a5,a2,0x2
80003408:	00f66633          	or	a2,a2,a5
8000340c:	00465793          	srli	a5,a2,0x4
80003410:	00f66633          	or	a2,a2,a5
80003414:	00865793          	srli	a5,a2,0x8
80003418:	00f66633          	or	a2,a2,a5
8000341c:	01065793          	srli	a5,a2,0x10
80003420:	00f66633          	or	a2,a2,a5
80003424:	fff64613          	not	a2,a2
80003428:	00165793          	srli	a5,a2,0x1
8000342c:	00e7f733          	and	a4,a5,a4
80003430:	40e60633          	sub	a2,a2,a4
80003434:	00d67733          	and	a4,a2,a3
80003438:	00265613          	srli	a2,a2,0x2
8000343c:	00d67633          	and	a2,a2,a3
80003440:	00c70633          	add	a2,a4,a2
80003444:	00465693          	srli	a3,a2,0x4
80003448:	00d60633          	add	a2,a2,a3
8000344c:	00a67533          	and	a0,a2,a0
80003450:	00851613          	slli	a2,a0,0x8
80003454:	00c50533          	add	a0,a0,a2
80003458:	01051613          	slli	a2,a0,0x10
8000345c:	00c50533          	add	a0,a0,a2
80003460:	01855513          	srli	a0,a0,0x18
80003464:	02050613          	addi	a2,a0,32
80003468:	06c0006f          	j	800034d4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x1bc>
8000346c:	0017d613          	srli	a2,a5,0x1
80003470:	00c7e633          	or	a2,a5,a2
80003474:	00265793          	srli	a5,a2,0x2
80003478:	00f66633          	or	a2,a2,a5
8000347c:	00465793          	srli	a5,a2,0x4
80003480:	00f66633          	or	a2,a2,a5
80003484:	00865793          	srli	a5,a2,0x8
80003488:	00f66633          	or	a2,a2,a5
8000348c:	01065793          	srli	a5,a2,0x10
80003490:	00f66633          	or	a2,a2,a5
80003494:	fff64613          	not	a2,a2
80003498:	00165793          	srli	a5,a2,0x1
8000349c:	00e7f733          	and	a4,a5,a4
800034a0:	40e60633          	sub	a2,a2,a4
800034a4:	00d67733          	and	a4,a2,a3
800034a8:	00265613          	srli	a2,a2,0x2
800034ac:	00d67633          	and	a2,a2,a3
800034b0:	00c70633          	add	a2,a4,a2
800034b4:	00465693          	srli	a3,a2,0x4
800034b8:	00d60633          	add	a2,a2,a3
800034bc:	00a67533          	and	a0,a2,a0
800034c0:	00851613          	slli	a2,a0,0x8
800034c4:	00c50533          	add	a0,a0,a2
800034c8:	01051613          	slli	a2,a0,0x10
800034cc:	00c50533          	add	a0,a0,a2
800034d0:	01855613          	srli	a2,a0,0x18
800034d4:	01a58503          	lb	a0,26(a1)
800034d8:	a8a42e23          	sw	a0,-1380(s0)
800034dc:	41fa5593          	srai	a1,s4,0x1f
800034e0:	40ca0533          	sub	a0,s4,a2
800034e4:	00ca3633          	sltu	a2,s4,a2
800034e8:	40c585b3          	sub	a1,a1,a2
800034ec:	4d105637          	lui	a2,0x4d105
800034f0:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103994>
800034f4:	00000693          	li	a3,0
800034f8:	00007097          	auipc	ra,0x7
800034fc:	bc0080e7          	jalr	-1088(ra) # 8000a0b8 <__muldi3>
80003500:	44135637          	lui	a2,0x44135
80003504:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133cd2>
80003508:	00c50633          	add	a2,a0,a2
8000350c:	00a63533          	sltu	a0,a2,a0
80003510:	00a58533          	add	a0,a1,a0
80003514:	01350c13          	addi	s8,a0,19
80003518:	010c1513          	slli	a0,s8,0x10
8000351c:	41055513          	srai	a0,a0,0x10
80003520:	a8a42423          	sw	a0,-1400(s0)
80003524:	001bb513          	seqz	a0,s7
80003528:	fff50593          	addi	a1,a0,-1
8000352c:	0175f5b3          	and	a1,a1,s7
80003530:	00200b93          	li	s7,2
80003534:	40ab8533          	sub	a0,s7,a0
80003538:	b4a42423          	sw	a0,-1208(s0)
8000353c:	ab642423          	sw	s6,-1368(s0)
80003540:	aab42623          	sw	a1,-1364(s0)
80003544:	ab040513          	addi	a0,s0,-1360
80003548:	09800613          	li	a2,152
8000354c:	00000593          	li	a1,0
80003550:	00008097          	auipc	ra,0x8
80003554:	a7c080e7          	jalr	-1412(ra) # 8000afcc <memset>
80003558:	001ab513          	seqz	a0,s5
8000355c:	fff50593          	addi	a1,a0,-1
80003560:	0155f5b3          	and	a1,a1,s5
80003564:	40ab8533          	sub	a0,s7,a0
80003568:	bea42623          	sw	a0,-1044(s0)
8000356c:	b5342623          	sw	s3,-1204(s0)
80003570:	b4b42823          	sw	a1,-1200(s0)
80003574:	b5440513          	addi	a0,s0,-1196
80003578:	09800613          	li	a2,152
8000357c:	00000593          	li	a1,0
80003580:	00008097          	auipc	ra,0x8
80003584:	a4c080e7          	jalr	-1460(ra) # 8000afcc <memset>
80003588:	00193513          	seqz	a0,s2
8000358c:	fff50593          	addi	a1,a0,-1
80003590:	0125f5b3          	and	a1,a1,s2
80003594:	40ab8533          	sub	a0,s7,a0
80003598:	c8a42823          	sw	a0,-880(s0)
8000359c:	be942823          	sw	s1,-1040(s0)
800035a0:	beb42a23          	sw	a1,-1036(s0)
800035a4:	bf840513          	addi	a0,s0,-1032
800035a8:	09800613          	li	a2,152
800035ac:	00000593          	li	a1,0
800035b0:	00008097          	auipc	ra,0x8
800035b4:	a1c080e7          	jalr	-1508(ra) # 8000afcc <memset>
800035b8:	c9840513          	addi	a0,s0,-872
800035bc:	09c00613          	li	a2,156
800035c0:	00000593          	li	a1,0
800035c4:	00008097          	auipc	ra,0x8
800035c8:	a08080e7          	jalr	-1528(ra) # 8000afcc <memset>
800035cc:	00100513          	li	a0,1
800035d0:	d2a42a23          	sw	a0,-716(s0)
800035d4:	c8a42a23          	sw	a0,-876(s0)
800035d8:	040a4663          	bltz	s4,80003624 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x30c>
800035dc:	aa840513          	addi	a0,s0,-1368
800035e0:	000a0593          	mv	a1,s4
800035e4:	00006097          	auipc	ra,0x6
800035e8:	c5c080e7          	jalr	-932(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800035ec:	b4c40513          	addi	a0,s0,-1204
800035f0:	000a0593          	mv	a1,s4
800035f4:	00006097          	auipc	ra,0x6
800035f8:	c4c080e7          	jalr	-948(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800035fc:	bf040513          	addi	a0,s0,-1040
80003600:	000a0593          	mv	a1,s4
80003604:	00006097          	auipc	ra,0x6
80003608:	c3c080e7          	jalr	-964(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
8000360c:	a8842503          	lw	a0,-1400(s0)
80003610:	02054a63          	bltz	a0,80003644 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x32c>
80003614:	011c1593          	slli	a1,s8,0x11
80003618:	0115d593          	srli	a1,a1,0x11
8000361c:	c9440513          	addi	a0,s0,-876
80003620:	0580006f          	j	80003678 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x360>
80003624:	41400533          	neg	a0,s4
80003628:	01051513          	slli	a0,a0,0x10
8000362c:	41055593          	srai	a1,a0,0x10
80003630:	c9440513          	addi	a0,s0,-876
80003634:	00006097          	auipc	ra,0x6
80003638:	c0c080e7          	jalr	-1012(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
8000363c:	a8842503          	lw	a0,-1400(s0)
80003640:	fc055ae3          	bgez	a0,80003614 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x2fc>
80003644:	40a00533          	neg	a0,a0
80003648:	01051513          	slli	a0,a0,0x10
8000364c:	01055a13          	srli	s4,a0,0x10
80003650:	aa840513          	addi	a0,s0,-1368
80003654:	000a0593          	mv	a1,s4
80003658:	fffff097          	auipc	ra,0xfffff
8000365c:	e18080e7          	jalr	-488(ra) # 80002470 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
80003660:	b4c40513          	addi	a0,s0,-1204
80003664:	000a0593          	mv	a1,s4
80003668:	fffff097          	auipc	ra,0xfffff
8000366c:	e08080e7          	jalr	-504(ra) # 80002470 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
80003670:	bf040513          	addi	a0,s0,-1040
80003674:	000a0593          	mv	a1,s4
80003678:	fffff097          	auipc	ra,0xfffff
8000367c:	df8080e7          	jalr	-520(ra) # 80002470 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
80003680:	b4842983          	lw	s3,-1208(s0)
80003684:	f2440513          	addi	a0,s0,-220
80003688:	aa840593          	addi	a1,s0,-1368
8000368c:	0a000613          	li	a2,160
80003690:	00007097          	auipc	ra,0x7
80003694:	ab0080e7          	jalr	-1360(ra) # 8000a140 <memcpy>
80003698:	c9042483          	lw	s1,-880(s0)
8000369c:	fd342223          	sw	s3,-60(s0)
800036a0:	00098513          	mv	a0,s3
800036a4:	0134e463          	bltu	s1,s3,800036ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x394>
800036a8:	00048513          	mv	a0,s1
800036ac:	02800593          	li	a1,40
800036b0:	32a5eae3          	bltu	a1,a0,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
800036b4:	06050663          	beqz	a0,80003720 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x408>
800036b8:	00000613          	li	a2,0
800036bc:	bf040593          	addi	a1,s0,-1040
800036c0:	f2440693          	addi	a3,s0,-220
800036c4:	00050713          	mv	a4,a0
800036c8:	0006a783          	lw	a5,0(a3)
800036cc:	0005a803          	lw	a6,0(a1)
800036d0:	01078833          	add	a6,a5,a6
800036d4:	00f837b3          	sltu	a5,a6,a5
800036d8:	00167613          	andi	a2,a2,1
800036dc:	00c808b3          	add	a7,a6,a2
800036e0:	0108b633          	sltu	a2,a7,a6
800036e4:	00c7e633          	or	a2,a5,a2
800036e8:	0116a023          	sw	a7,0(a3)
800036ec:	00458593          	addi	a1,a1,4
800036f0:	fff70713          	addi	a4,a4,-1
800036f4:	00468693          	addi	a3,a3,4
800036f8:	fc0718e3          	bnez	a4,800036c8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x3b0>
800036fc:	02060263          	beqz	a2,80003720 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x408>
80003700:	02800593          	li	a1,40
80003704:	3cb504e3          	beq	a0,a1,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003708:	00251593          	slli	a1,a0,0x2
8000370c:	f2440613          	addi	a2,s0,-220
80003710:	00b605b3          	add	a1,a2,a1
80003714:	00100613          	li	a2,1
80003718:	00c5a023          	sw	a2,0(a1)
8000371c:	00150513          	addi	a0,a0,1
80003720:	d3442903          	lw	s2,-716(s0)
80003724:	fca42223          	sw	a0,-60(s0)
80003728:	00090693          	mv	a3,s2
8000372c:	01256463          	bltu	a0,s2,80003734 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x41c>
80003730:	00050693          	mv	a3,a0
80003734:	02900513          	li	a0,41
80003738:	2ca6f0e3          	bgeu	a3,a0,800041f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
8000373c:	00269693          	slli	a3,a3,0x2
80003740:	40d00533          	neg	a0,a3
80003744:	ffc68613          	addi	a2,a3,-4
80003748:	f2440593          	addi	a1,s0,-220
8000374c:	00c585b3          	add	a1,a1,a2
80003750:	c9440693          	addi	a3,s0,-876
80003754:	00c68633          	add	a2,a3,a2
80003758:	04050463          	beqz	a0,800037a0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x488>
8000375c:	00062683          	lw	a3,0(a2)
80003760:	0005a703          	lw	a4,0(a1)
80003764:	00e6b7b3          	sltu	a5,a3,a4
80003768:	00d746b3          	xor	a3,a4,a3
8000376c:	00d036b3          	snez	a3,a3
80003770:	40f00733          	neg	a4,a5
80003774:	00d766b3          	or	a3,a4,a3
80003778:	00450513          	addi	a0,a0,4
8000377c:	ffc58593          	addi	a1,a1,-4
80003780:	ffc60613          	addi	a2,a2,-4
80003784:	fc068ae3          	beqz	a3,80003758 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x440>
80003788:	a9c42503          	lw	a0,-1380(s0)
8000378c:	02a6d263          	bge	a3,a0,800037b0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x498>
80003790:	a8842503          	lw	a0,-1400(s0)
80003794:	00150513          	addi	a0,a0,1
80003798:	a8a42423          	sw	a0,-1400(s0)
8000379c:	14c0006f          	j	800038e8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5d0>
800037a0:	00153693          	seqz	a3,a0
800037a4:	fff68693          	addi	a3,a3,-1
800037a8:	a9c42503          	lw	a0,-1380(s0)
800037ac:	fea6c2e3          	blt	a3,a0,80003790 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x478>
800037b0:	06098063          	beqz	s3,80003810 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4f8>
800037b4:	00000a13          	li	s4,0
800037b8:	00299b13          	slli	s6,s3,0x2
800037bc:	aa840b93          	addi	s7,s0,-1368
800037c0:	016b8ab3          	add	s5,s7,s6
800037c4:	000ba503          	lw	a0,0(s7)
800037c8:	004b8c13          	addi	s8,s7,4
800037cc:	00a00613          	li	a2,10
800037d0:	00000593          	li	a1,0
800037d4:	00000693          	li	a3,0
800037d8:	00007097          	auipc	ra,0x7
800037dc:	8e0080e7          	jalr	-1824(ra) # 8000a0b8 <__muldi3>
800037e0:	01450633          	add	a2,a0,s4
800037e4:	00a63a33          	sltu	s4,a2,a0
800037e8:	01458a33          	add	s4,a1,s4
800037ec:	ffcb0b13          	addi	s6,s6,-4
800037f0:	00cba023          	sw	a2,0(s7)
800037f4:	000c0b93          	mv	s7,s8
800037f8:	fc0b16e3          	bnez	s6,800037c4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4ac>
800037fc:	000a0a63          	beqz	s4,80003810 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4f8>
80003800:	02800513          	li	a0,40
80003804:	2ca984e3          	beq	s3,a0,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003808:	014aa023          	sw	s4,0(s5)
8000380c:	00198993          	addi	s3,s3,1
80003810:	bec42a03          	lw	s4,-1044(s0)
80003814:	02900513          	li	a0,41
80003818:	b5342423          	sw	s3,-1208(s0)
8000381c:	28aa7ce3          	bgeu	s4,a0,800042b4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf9c>
80003820:	060a0063          	beqz	s4,80003880 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x568>
80003824:	00000993          	li	s3,0
80003828:	002a1b13          	slli	s6,s4,0x2
8000382c:	b4c40b93          	addi	s7,s0,-1204
80003830:	016b8ab3          	add	s5,s7,s6
80003834:	000ba503          	lw	a0,0(s7)
80003838:	004b8c13          	addi	s8,s7,4
8000383c:	00a00613          	li	a2,10
80003840:	00000593          	li	a1,0
80003844:	00000693          	li	a3,0
80003848:	00007097          	auipc	ra,0x7
8000384c:	870080e7          	jalr	-1936(ra) # 8000a0b8 <__muldi3>
80003850:	01350633          	add	a2,a0,s3
80003854:	00a639b3          	sltu	s3,a2,a0
80003858:	013589b3          	add	s3,a1,s3
8000385c:	ffcb0b13          	addi	s6,s6,-4
80003860:	00cba023          	sw	a2,0(s7)
80003864:	000c0b93          	mv	s7,s8
80003868:	fc0b16e3          	bnez	s6,80003834 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x51c>
8000386c:	00098a63          	beqz	s3,80003880 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x568>
80003870:	02800513          	li	a0,40
80003874:	24aa0ce3          	beq	s4,a0,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003878:	013aa023          	sw	s3,0(s5)
8000387c:	001a0a13          	addi	s4,s4,1
80003880:	bf442623          	sw	s4,-1044(s0)
80003884:	06048063          	beqz	s1,800038e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5cc>
80003888:	00000993          	li	s3,0
8000388c:	00249a93          	slli	s5,s1,0x2
80003890:	bf040b13          	addi	s6,s0,-1040
80003894:	015b0a33          	add	s4,s6,s5
80003898:	000b2503          	lw	a0,0(s6)
8000389c:	004b0b93          	addi	s7,s6,4
800038a0:	00a00613          	li	a2,10
800038a4:	00000593          	li	a1,0
800038a8:	00000693          	li	a3,0
800038ac:	00007097          	auipc	ra,0x7
800038b0:	80c080e7          	jalr	-2036(ra) # 8000a0b8 <__muldi3>
800038b4:	01350633          	add	a2,a0,s3
800038b8:	00a639b3          	sltu	s3,a2,a0
800038bc:	013589b3          	add	s3,a1,s3
800038c0:	ffca8a93          	addi	s5,s5,-4
800038c4:	00cb2023          	sw	a2,0(s6)
800038c8:	000b8b13          	mv	s6,s7
800038cc:	fc0a96e3          	bnez	s5,80003898 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x580>
800038d0:	00098a63          	beqz	s3,800038e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5cc>
800038d4:	02800513          	li	a0,40
800038d8:	1ea48ae3          	beq	s1,a0,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
800038dc:	013a2023          	sw	s3,0(s4)
800038e0:	00148493          	addi	s1,s1,1
800038e4:	c8942823          	sw	s1,-880(s0)
800038e8:	d3840513          	addi	a0,s0,-712
800038ec:	c9440593          	addi	a1,s0,-876
800038f0:	0a000613          	li	a2,160
800038f4:	00007097          	auipc	ra,0x7
800038f8:	84c080e7          	jalr	-1972(ra) # 8000a140 <memcpy>
800038fc:	dd242c23          	sw	s2,-552(s0)
80003900:	d3840513          	addi	a0,s0,-712
80003904:	00100593          	li	a1,1
80003908:	00006097          	auipc	ra,0x6
8000390c:	938080e7          	jalr	-1736(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003910:	d3442483          	lw	s1,-716(s0)
80003914:	ddc40513          	addi	a0,s0,-548
80003918:	c9440593          	addi	a1,s0,-876
8000391c:	0a000613          	li	a2,160
80003920:	00007097          	auipc	ra,0x7
80003924:	820080e7          	jalr	-2016(ra) # 8000a140 <memcpy>
80003928:	e6942e23          	sw	s1,-388(s0)
8000392c:	ddc40513          	addi	a0,s0,-548
80003930:	00200593          	li	a1,2
80003934:	00006097          	auipc	ra,0x6
80003938:	90c080e7          	jalr	-1780(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
8000393c:	d3442483          	lw	s1,-716(s0)
80003940:	e8040513          	addi	a0,s0,-384
80003944:	c9440593          	addi	a1,s0,-876
80003948:	0a000613          	li	a2,160
8000394c:	00006097          	auipc	ra,0x6
80003950:	7f4080e7          	jalr	2036(ra) # 8000a140 <memcpy>
80003954:	f2942023          	sw	s1,-224(s0)
80003958:	e8040513          	addi	a0,s0,-384
8000395c:	00300593          	li	a1,3
80003960:	00006097          	auipc	ra,0x6
80003964:	8e0080e7          	jalr	-1824(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003968:	f2042583          	lw	a1,-224(s0)
8000396c:	b4842a83          	lw	s5,-1208(s0)
80003970:	000a8513          	mv	a0,s5
80003974:	a8b42823          	sw	a1,-1392(s0)
80003978:	0155e463          	bltu	a1,s5,80003980 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x668>
8000397c:	a9042503          	lw	a0,-1392(s0)
80003980:	02800593          	li	a1,40
80003984:	a9c42483          	lw	s1,-1380(s0)
80003988:	04a5eee3          	bltu	a1,a0,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
8000398c:	00000b13          	li	s6,0
80003990:	e7c42583          	lw	a1,-388(s0)
80003994:	a8b42c23          	sw	a1,-1384(s0)
80003998:	dd842583          	lw	a1,-552(s0)
8000399c:	a8b42a23          	sw	a1,-1388(s0)
800039a0:	d3442583          	lw	a1,-716(s0)
800039a4:	aab42223          	sw	a1,-1372(s0)
800039a8:	aa440913          	addi	s2,s0,-1372
800039ac:	00100393          	li	t2,1
800039b0:	02900e13          	li	t3,41
800039b4:	01c0006f          	j	800039d0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6b8>
800039b8:	000c0c93          	mv	s9,s8
800039bc:	02800593          	li	a1,40
800039c0:	00100393          	li	t2,1
800039c4:	02900e13          	li	t3,41
800039c8:	aa042b03          	lw	s6,-1376(s0)
800039cc:	00a5ece3          	bltu	a1,a0,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
800039d0:	00251693          	slli	a3,a0,0x2
800039d4:	40d005b3          	neg	a1,a3
800039d8:	e7c40613          	addi	a2,s0,-388
800039dc:	00d60633          	add	a2,a2,a3
800039e0:	00d906b3          	add	a3,s2,a3
800039e4:	08058e63          	beqz	a1,80003a80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x768>
800039e8:	0006a703          	lw	a4,0(a3)
800039ec:	00062783          	lw	a5,0(a2)
800039f0:	00f73833          	sltu	a6,a4,a5
800039f4:	00e7c733          	xor	a4,a5,a4
800039f8:	00e03733          	snez	a4,a4
800039fc:	410007b3          	neg	a5,a6
80003a00:	00e7e733          	or	a4,a5,a4
80003a04:	00458593          	addi	a1,a1,4
80003a08:	ffc60613          	addi	a2,a2,-4
80003a0c:	ffc68693          	addi	a3,a3,-4
80003a10:	fc070ae3          	beqz	a4,800039e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6cc>
80003a14:	06e3ec63          	bltu	t2,a4,80003a8c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x774>
80003a18:	04050863          	beqz	a0,80003a68 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x750>
80003a1c:	00100613          	li	a2,1
80003a20:	e8040593          	addi	a1,s0,-384
80003a24:	aa840693          	addi	a3,s0,-1368
80003a28:	00050713          	mv	a4,a0
80003a2c:	0005a783          	lw	a5,0(a1)
80003a30:	0006a803          	lw	a6,0(a3)
80003a34:	fff7c793          	not	a5,a5
80003a38:	00f807b3          	add	a5,a6,a5
80003a3c:	0107b833          	sltu	a6,a5,a6
80003a40:	00167613          	andi	a2,a2,1
80003a44:	00c788b3          	add	a7,a5,a2
80003a48:	00f8b633          	sltu	a2,a7,a5
80003a4c:	00c86633          	or	a2,a6,a2
80003a50:	0116a023          	sw	a7,0(a3)
80003a54:	00458593          	addi	a1,a1,4
80003a58:	fff70713          	addi	a4,a4,-1
80003a5c:	00468693          	addi	a3,a3,4
80003a60:	fc0716e3          	bnez	a4,80003a2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x714>
80003a64:	7a060663          	beqz	a2,80004210 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003a68:	b4a42423          	sw	a0,-1208(s0)
80003a6c:	00800593          	li	a1,8
80003a70:	00050693          	mv	a3,a0
80003a74:	a9842603          	lw	a2,-1384(s0)
80003a78:	02a67463          	bgeu	a2,a0,80003aa0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x788>
80003a7c:	0280006f          	j	80003aa4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x78c>
80003a80:	0015b713          	seqz	a4,a1
80003a84:	fff70713          	addi	a4,a4,-1
80003a88:	f8e3f8e3          	bgeu	t2,a4,80003a18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x700>
80003a8c:	00000593          	li	a1,0
80003a90:	000a8513          	mv	a0,s5
80003a94:	00050693          	mv	a3,a0
80003a98:	a9842603          	lw	a2,-1384(s0)
80003a9c:	01566463          	bltu	a2,s5,80003aa4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x78c>
80003aa0:	a9842683          	lw	a3,-1384(s0)
80003aa4:	75c6fa63          	bgeu	a3,t3,800041f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
80003aa8:	00269793          	slli	a5,a3,0x2
80003aac:	40f00633          	neg	a2,a5
80003ab0:	dd840713          	addi	a4,s0,-552
80003ab4:	00f70733          	add	a4,a4,a5
80003ab8:	00f907b3          	add	a5,s2,a5
80003abc:	08060e63          	beqz	a2,80003b58 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x840>
80003ac0:	0007a803          	lw	a6,0(a5)
80003ac4:	00072883          	lw	a7,0(a4)
80003ac8:	011832b3          	sltu	t0,a6,a7
80003acc:	0108c833          	xor	a6,a7,a6
80003ad0:	01003833          	snez	a6,a6
80003ad4:	405008b3          	neg	a7,t0
80003ad8:	0108e833          	or	a6,a7,a6
80003adc:	00460613          	addi	a2,a2,4
80003ae0:	ffc70713          	addi	a4,a4,-4
80003ae4:	ffc78793          	addi	a5,a5,-4
80003ae8:	fc080ae3          	beqz	a6,80003abc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7a4>
80003aec:	0703ec63          	bltu	t2,a6,80003b64 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x84c>
80003af0:	04068863          	beqz	a3,80003b40 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x828>
80003af4:	00100613          	li	a2,1
80003af8:	ddc40513          	addi	a0,s0,-548
80003afc:	aa840713          	addi	a4,s0,-1368
80003b00:	00068793          	mv	a5,a3
80003b04:	00052803          	lw	a6,0(a0)
80003b08:	00072883          	lw	a7,0(a4)
80003b0c:	fff84813          	not	a6,a6
80003b10:	01088833          	add	a6,a7,a6
80003b14:	011838b3          	sltu	a7,a6,a7
80003b18:	00167613          	andi	a2,a2,1
80003b1c:	00c802b3          	add	t0,a6,a2
80003b20:	0102b633          	sltu	a2,t0,a6
80003b24:	00c8e633          	or	a2,a7,a2
80003b28:	00572023          	sw	t0,0(a4)
80003b2c:	00450513          	addi	a0,a0,4
80003b30:	fff78793          	addi	a5,a5,-1
80003b34:	00470713          	addi	a4,a4,4
80003b38:	fc0796e3          	bnez	a5,80003b04 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7ec>
80003b3c:	6c060a63          	beqz	a2,80004210 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003b40:	b4d42423          	sw	a3,-1208(s0)
80003b44:	0045e593          	ori	a1,a1,4
80003b48:	00068513          	mv	a0,a3
80003b4c:	a9442603          	lw	a2,-1388(s0)
80003b50:	02d67063          	bgeu	a2,a3,80003b70 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x858>
80003b54:	0200006f          	j	80003b74 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x85c>
80003b58:	00163813          	seqz	a6,a2
80003b5c:	fff80813          	addi	a6,a6,-1
80003b60:	f903f8e3          	bgeu	t2,a6,80003af0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7d8>
80003b64:	00050693          	mv	a3,a0
80003b68:	a9442603          	lw	a2,-1388(s0)
80003b6c:	00a66463          	bltu	a2,a0,80003b74 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x85c>
80003b70:	a9442503          	lw	a0,-1388(s0)
80003b74:	67c57863          	bgeu	a0,t3,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003b78:	00251793          	slli	a5,a0,0x2
80003b7c:	40f00633          	neg	a2,a5
80003b80:	d3440713          	addi	a4,s0,-716
80003b84:	00f70733          	add	a4,a4,a5
80003b88:	00f907b3          	add	a5,s2,a5
80003b8c:	08060e63          	beqz	a2,80003c28 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x910>
80003b90:	0007a803          	lw	a6,0(a5)
80003b94:	00072883          	lw	a7,0(a4)
80003b98:	011832b3          	sltu	t0,a6,a7
80003b9c:	0108c833          	xor	a6,a7,a6
80003ba0:	01003833          	snez	a6,a6
80003ba4:	405008b3          	neg	a7,t0
80003ba8:	0108e833          	or	a6,a7,a6
80003bac:	00460613          	addi	a2,a2,4
80003bb0:	ffc70713          	addi	a4,a4,-4
80003bb4:	ffc78793          	addi	a5,a5,-4
80003bb8:	fc080ae3          	beqz	a6,80003b8c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x874>
80003bbc:	0703ec63          	bltu	t2,a6,80003c34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x91c>
80003bc0:	04050863          	beqz	a0,80003c10 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8f8>
80003bc4:	00100693          	li	a3,1
80003bc8:	d3840613          	addi	a2,s0,-712
80003bcc:	aa840713          	addi	a4,s0,-1368
80003bd0:	00050793          	mv	a5,a0
80003bd4:	00062803          	lw	a6,0(a2)
80003bd8:	00072883          	lw	a7,0(a4)
80003bdc:	fff84813          	not	a6,a6
80003be0:	01088833          	add	a6,a7,a6
80003be4:	011838b3          	sltu	a7,a6,a7
80003be8:	0016f693          	andi	a3,a3,1
80003bec:	00d802b3          	add	t0,a6,a3
80003bf0:	0102b6b3          	sltu	a3,t0,a6
80003bf4:	00d8e6b3          	or	a3,a7,a3
80003bf8:	00572023          	sw	t0,0(a4)
80003bfc:	00460613          	addi	a2,a2,4
80003c00:	fff78793          	addi	a5,a5,-1
80003c04:	00470713          	addi	a4,a4,4
80003c08:	fc0796e3          	bnez	a5,80003bd4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8bc>
80003c0c:	60068263          	beqz	a3,80004210 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003c10:	b4a42423          	sw	a0,-1208(s0)
80003c14:	00258593          	addi	a1,a1,2
80003c18:	00050a93          	mv	s5,a0
80003c1c:	aa442603          	lw	a2,-1372(s0)
80003c20:	02a67263          	bgeu	a2,a0,80003c44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x92c>
80003c24:	0240006f          	j	80003c48 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x930>
80003c28:	00163813          	seqz	a6,a2
80003c2c:	fff80813          	addi	a6,a6,-1
80003c30:	f903f8e3          	bgeu	t2,a6,80003bc0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8a8>
80003c34:	00068513          	mv	a0,a3
80003c38:	00050a93          	mv	s5,a0
80003c3c:	aa442603          	lw	a2,-1372(s0)
80003c40:	00d66463          	bltu	a2,a3,80003c48 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x930>
80003c44:	aa442a83          	lw	s5,-1372(s0)
80003c48:	5fcaf263          	bgeu	s5,t3,8000422c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf14>
80003c4c:	002a9713          	slli	a4,s5,0x2
80003c50:	40e00633          	neg	a2,a4
80003c54:	c9040693          	addi	a3,s0,-880
80003c58:	00e686b3          	add	a3,a3,a4
80003c5c:	00e90733          	add	a4,s2,a4
80003c60:	08060863          	beqz	a2,80003cf0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9d8>
80003c64:	00072783          	lw	a5,0(a4)
80003c68:	0006a803          	lw	a6,0(a3)
80003c6c:	0107b8b3          	sltu	a7,a5,a6
80003c70:	00f847b3          	xor	a5,a6,a5
80003c74:	00f037b3          	snez	a5,a5
80003c78:	41100833          	neg	a6,a7
80003c7c:	00f867b3          	or	a5,a6,a5
80003c80:	00460613          	addi	a2,a2,4
80003c84:	ffc68693          	addi	a3,a3,-4
80003c88:	ffc70713          	addi	a4,a4,-4
80003c8c:	fc078ae3          	beqz	a5,80003c60 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x948>
80003c90:	06f3e663          	bltu	t2,a5,80003cfc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9e4>
80003c94:	040a8863          	beqz	s5,80003ce4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9cc>
80003c98:	00100613          	li	a2,1
80003c9c:	c9440513          	addi	a0,s0,-876
80003ca0:	aa840693          	addi	a3,s0,-1368
80003ca4:	000a8713          	mv	a4,s5
80003ca8:	00052783          	lw	a5,0(a0)
80003cac:	0006a803          	lw	a6,0(a3)
80003cb0:	fff7c793          	not	a5,a5
80003cb4:	00f807b3          	add	a5,a6,a5
80003cb8:	0107b833          	sltu	a6,a5,a6
80003cbc:	00167613          	andi	a2,a2,1
80003cc0:	00c788b3          	add	a7,a5,a2
80003cc4:	00f8b633          	sltu	a2,a7,a5
80003cc8:	00c86633          	or	a2,a6,a2
80003ccc:	0116a023          	sw	a7,0(a3)
80003cd0:	00450513          	addi	a0,a0,4
80003cd4:	fff70713          	addi	a4,a4,-1
80003cd8:	00468693          	addi	a3,a3,4
80003cdc:	fc0716e3          	bnez	a4,80003ca8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x990>
80003ce0:	52060863          	beqz	a2,80004210 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003ce4:	b5542423          	sw	s5,-1208(s0)
80003ce8:	00158593          	addi	a1,a1,1
80003cec:	0140006f          	j	80003d00 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9e8>
80003cf0:	00163793          	seqz	a5,a2
80003cf4:	fff78793          	addi	a5,a5,-1
80003cf8:	f8f3fee3          	bgeu	t2,a5,80003c94 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x97c>
80003cfc:	00050a93          	mv	s5,a0
80003d00:	5f9b0263          	beq	s6,s9,800042e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfcc>
80003d04:	bec42d83          	lw	s11,-1044(s0)
80003d08:	03058513          	addi	a0,a1,48
80003d0c:	a8c42a03          	lw	s4,-1396(s0)
80003d10:	016a0a33          	add	s4,s4,s6
80003d14:	00aa0023          	sb	a0,0(s4)
80003d18:	000a8513          	mv	a0,s5
80003d1c:	015de463          	bltu	s11,s5,80003d24 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa0c>
80003d20:	000d8513          	mv	a0,s11
80003d24:	4dc57063          	bgeu	a0,t3,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003d28:	001b0813          	addi	a6,s6,1
80003d2c:	00251613          	slli	a2,a0,0x2
80003d30:	40c00533          	neg	a0,a2
80003d34:	b4840593          	addi	a1,s0,-1208
80003d38:	00c585b3          	add	a1,a1,a2
80003d3c:	00c90633          	add	a2,s2,a2
80003d40:	02050a63          	beqz	a0,80003d74 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa5c>
80003d44:	00062683          	lw	a3,0(a2)
80003d48:	0005a703          	lw	a4,0(a1)
80003d4c:	00e6b7b3          	sltu	a5,a3,a4
80003d50:	00d746b3          	xor	a3,a4,a3
80003d54:	00d036b3          	snez	a3,a3
80003d58:	40f00733          	neg	a4,a5
80003d5c:	00d76d33          	or	s10,a4,a3
80003d60:	00450513          	addi	a0,a0,4
80003d64:	ffc58593          	addi	a1,a1,-4
80003d68:	ffc60613          	addi	a2,a2,-4
80003d6c:	fc0d0ae3          	beqz	s10,80003d40 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa28>
80003d70:	00c0006f          	j	80003d7c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa64>
80003d74:	00153d13          	seqz	s10,a0
80003d78:	fffd0d13          	addi	s10,s10,-1
80003d7c:	ab042023          	sw	a6,-1376(s0)
80003d80:	02900b93          	li	s7,41
80003d84:	00100993          	li	s3,1
80003d88:	000c8c13          	mv	s8,s9
80003d8c:	f2440513          	addi	a0,s0,-220
80003d90:	aa840593          	addi	a1,s0,-1368
80003d94:	0a000613          	li	a2,160
80003d98:	00006097          	auipc	ra,0x6
80003d9c:	3a8080e7          	jalr	936(ra) # 8000a140 <memcpy>
80003da0:	c9042c83          	lw	s9,-880(s0)
80003da4:	fd542223          	sw	s5,-60(s0)
80003da8:	000a8513          	mv	a0,s5
80003dac:	015ce463          	bltu	s9,s5,80003db4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa9c>
80003db0:	000c8513          	mv	a0,s9
80003db4:	02800593          	li	a1,40
80003db8:	42a5e663          	bltu	a1,a0,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003dbc:	06050463          	beqz	a0,80003e24 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb0c>
80003dc0:	00000613          	li	a2,0
80003dc4:	bf040593          	addi	a1,s0,-1040
80003dc8:	f2440693          	addi	a3,s0,-220
80003dcc:	00050713          	mv	a4,a0
80003dd0:	0006a783          	lw	a5,0(a3)
80003dd4:	0005a803          	lw	a6,0(a1)
80003dd8:	01078833          	add	a6,a5,a6
80003ddc:	00f837b3          	sltu	a5,a6,a5
80003de0:	00167613          	andi	a2,a2,1
80003de4:	00c808b3          	add	a7,a6,a2
80003de8:	0108b633          	sltu	a2,a7,a6
80003dec:	00c7e633          	or	a2,a5,a2
80003df0:	0116a023          	sw	a7,0(a3)
80003df4:	00458593          	addi	a1,a1,4
80003df8:	fff70713          	addi	a4,a4,-1
80003dfc:	00468693          	addi	a3,a3,4
80003e00:	fc0718e3          	bnez	a4,80003dd0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xab8>
80003e04:	02060063          	beqz	a2,80003e24 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb0c>
80003e08:	02800593          	li	a1,40
80003e0c:	4cb50063          	beq	a0,a1,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003e10:	00251593          	slli	a1,a0,0x2
80003e14:	f2440613          	addi	a2,s0,-220
80003e18:	00b605b3          	add	a1,a2,a1
80003e1c:	0135a023          	sw	s3,0(a1)
80003e20:	00150513          	addi	a0,a0,1
80003e24:	fca42223          	sw	a0,-60(s0)
80003e28:	aa442583          	lw	a1,-1372(s0)
80003e2c:	00058693          	mv	a3,a1
80003e30:	00b56463          	bltu	a0,a1,80003e38 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb20>
80003e34:	00050693          	mv	a3,a0
80003e38:	3d76f063          	bgeu	a3,s7,800041f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
80003e3c:	00269613          	slli	a2,a3,0x2
80003e40:	40c00533          	neg	a0,a2
80003e44:	f2040593          	addi	a1,s0,-224
80003e48:	00c585b3          	add	a1,a1,a2
80003e4c:	c9040693          	addi	a3,s0,-880
80003e50:	00c68633          	add	a2,a3,a2
80003e54:	02050c63          	beqz	a0,80003e8c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb74>
80003e58:	00062683          	lw	a3,0(a2)
80003e5c:	0005a703          	lw	a4,0(a1)
80003e60:	00e6b7b3          	sltu	a5,a3,a4
80003e64:	00d746b3          	xor	a3,a4,a3
80003e68:	00d036b3          	snez	a3,a3
80003e6c:	40f00733          	neg	a4,a5
80003e70:	00d766b3          	or	a3,a4,a3
80003e74:	00450513          	addi	a0,a0,4
80003e78:	ffc58593          	addi	a1,a1,-4
80003e7c:	ffc60613          	addi	a2,a2,-4
80003e80:	fc068ae3          	beqz	a3,80003e54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb3c>
80003e84:	009d5a63          	bge	s10,s1,80003e98 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb80>
80003e88:	19c0006f          	j	80004024 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003e8c:	00153693          	seqz	a3,a0
80003e90:	fff68693          	addi	a3,a3,-1
80003e94:	189d4863          	blt	s10,s1,80004024 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003e98:	1896c663          	blt	a3,s1,80004024 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003e9c:	060a8463          	beqz	s5,80003f04 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xbec>
80003ea0:	00000b13          	li	s6,0
80003ea4:	002a9d13          	slli	s10,s5,0x2
80003ea8:	aa840a13          	addi	s4,s0,-1368
80003eac:	01aa0a33          	add	s4,s4,s10
80003eb0:	aa840493          	addi	s1,s0,-1368
80003eb4:	0004a503          	lw	a0,0(s1)
80003eb8:	00448993          	addi	s3,s1,4
80003ebc:	00a00613          	li	a2,10
80003ec0:	00000593          	li	a1,0
80003ec4:	00000693          	li	a3,0
80003ec8:	00006097          	auipc	ra,0x6
80003ecc:	1f0080e7          	jalr	496(ra) # 8000a0b8 <__muldi3>
80003ed0:	01650633          	add	a2,a0,s6
80003ed4:	00a63b33          	sltu	s6,a2,a0
80003ed8:	01658b33          	add	s6,a1,s6
80003edc:	ffcd0d13          	addi	s10,s10,-4
80003ee0:	00c4a023          	sw	a2,0(s1)
80003ee4:	00098493          	mv	s1,s3
80003ee8:	fc0d16e3          	bnez	s10,80003eb4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb9c>
80003eec:	080b0863          	beqz	s6,80003f7c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc64>
80003ef0:	a9c42483          	lw	s1,-1380(s0)
80003ef4:	02800513          	li	a0,40
80003ef8:	3caa8a63          	beq	s5,a0,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003efc:	016a2023          	sw	s6,0(s4)
80003f00:	001a8a93          	addi	s5,s5,1
80003f04:	b5542423          	sw	s5,-1208(s0)
80003f08:	080d8063          	beqz	s11,80003f88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc70>
80003f0c:	00000b13          	li	s6,0
80003f10:	002d9d13          	slli	s10,s11,0x2
80003f14:	b4c40a13          	addi	s4,s0,-1204
80003f18:	01aa0a33          	add	s4,s4,s10
80003f1c:	b4c40493          	addi	s1,s0,-1204
80003f20:	0004a503          	lw	a0,0(s1)
80003f24:	00448993          	addi	s3,s1,4
80003f28:	00a00613          	li	a2,10
80003f2c:	00000593          	li	a1,0
80003f30:	00000693          	li	a3,0
80003f34:	00006097          	auipc	ra,0x6
80003f38:	184080e7          	jalr	388(ra) # 8000a0b8 <__muldi3>
80003f3c:	01650633          	add	a2,a0,s6
80003f40:	00a63b33          	sltu	s6,a2,a0
80003f44:	01658b33          	add	s6,a1,s6
80003f48:	ffcd0d13          	addi	s10,s10,-4
80003f4c:	00c4a023          	sw	a2,0(s1)
80003f50:	00098493          	mv	s1,s3
80003f54:	fc0d16e3          	bnez	s10,80003f20 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc08>
80003f58:	0a0b0063          	beqz	s6,80003ff8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xce0>
80003f5c:	a9c42483          	lw	s1,-1380(s0)
80003f60:	02800513          	li	a0,40
80003f64:	36ad8463          	beq	s11,a0,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003f68:	016a2023          	sw	s6,0(s4)
80003f6c:	001d8d93          	addi	s11,s11,1
80003f70:	bfb42623          	sw	s11,-1044(s0)
80003f74:	000c9e63          	bnez	s9,80003f90 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc78>
80003f78:	0940006f          	j	8000400c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003f7c:	a9c42483          	lw	s1,-1380(s0)
80003f80:	b5542423          	sw	s5,-1208(s0)
80003f84:	f80d94e3          	bnez	s11,80003f0c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xbf4>
80003f88:	bfb42623          	sw	s11,-1044(s0)
80003f8c:	080c8063          	beqz	s9,8000400c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003f90:	00000b13          	li	s6,0
80003f94:	002c9d13          	slli	s10,s9,0x2
80003f98:	bf040a13          	addi	s4,s0,-1040
80003f9c:	01aa0a33          	add	s4,s4,s10
80003fa0:	bf040493          	addi	s1,s0,-1040
80003fa4:	0004a503          	lw	a0,0(s1)
80003fa8:	00448993          	addi	s3,s1,4
80003fac:	00a00613          	li	a2,10
80003fb0:	00000593          	li	a1,0
80003fb4:	00000693          	li	a3,0
80003fb8:	00006097          	auipc	ra,0x6
80003fbc:	100080e7          	jalr	256(ra) # 8000a0b8 <__muldi3>
80003fc0:	01650633          	add	a2,a0,s6
80003fc4:	00a63b33          	sltu	s6,a2,a0
80003fc8:	01658b33          	add	s6,a1,s6
80003fcc:	ffcd0d13          	addi	s10,s10,-4
80003fd0:	00c4a023          	sw	a2,0(s1)
80003fd4:	00098493          	mv	s1,s3
80003fd8:	fc0d16e3          	bnez	s10,80003fa4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc8c>
80003fdc:	020b0663          	beqz	s6,80004008 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf0>
80003fe0:	a9c42483          	lw	s1,-1380(s0)
80003fe4:	02800513          	li	a0,40
80003fe8:	2eac8263          	beq	s9,a0,800042cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003fec:	016a2023          	sw	s6,0(s4)
80003ff0:	001c8c93          	addi	s9,s9,1
80003ff4:	0180006f          	j	8000400c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003ff8:	a9c42483          	lw	s1,-1380(s0)
80003ffc:	bfb42623          	sw	s11,-1044(s0)
80004000:	f80c98e3          	bnez	s9,80003f90 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc78>
80004004:	0080006f          	j	8000400c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80004008:	a9c42483          	lw	s1,-1380(s0)
8000400c:	c9942823          	sw	s9,-880(s0)
80004010:	000a8513          	mv	a0,s5
80004014:	a9042583          	lw	a1,-1392(s0)
80004018:	9b55e0e3          	bltu	a1,s5,800039b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6a0>
8000401c:	a9042503          	lw	a0,-1392(s0)
80004020:	999ff06f          	j	800039b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6a0>
80004024:	0896d863          	bge	a3,s1,800040b4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd9c>
80004028:	a8c42a83          	lw	s5,-1396(s0)
8000402c:	aa042903          	lw	s2,-1376(s0)
80004030:	0a9d5663          	bge	s10,s1,800040dc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdc4>
80004034:	aa840513          	addi	a0,s0,-1368
80004038:	00100593          	li	a1,1
8000403c:	00005097          	auipc	ra,0x5
80004040:	204080e7          	jalr	516(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004044:	b4842503          	lw	a0,-1208(s0)
80004048:	d3442583          	lw	a1,-716(s0)
8000404c:	00a5e463          	bltu	a1,a0,80004054 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd3c>
80004050:	00058513          	mv	a0,a1
80004054:	02900593          	li	a1,41
80004058:	18b57663          	bgeu	a0,a1,800041e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
8000405c:	00251593          	slli	a1,a0,0x2
80004060:	40b00533          	neg	a0,a1
80004064:	ffc58613          	addi	a2,a1,-4
80004068:	c9440593          	addi	a1,s0,-876
8000406c:	00c585b3          	add	a1,a1,a2
80004070:	aa840693          	addi	a3,s0,-1368
80004074:	00c68633          	add	a2,a3,a2
80004078:	04050a63          	beqz	a0,800040cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdb4>
8000407c:	00062683          	lw	a3,0(a2)
80004080:	0005a703          	lw	a4,0(a1)
80004084:	00e6b7b3          	sltu	a5,a3,a4
80004088:	00d746b3          	xor	a3,a4,a3
8000408c:	00d036b3          	snez	a3,a3
80004090:	40f00733          	neg	a4,a5
80004094:	00d766b3          	or	a3,a4,a3
80004098:	00450513          	addi	a0,a0,4
8000409c:	ffc58593          	addi	a1,a1,-4
800040a0:	ffc60613          	addi	a2,a2,-4
800040a4:	fc068ae3          	beqz	a3,80004078 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd60>
800040a8:	00200513          	li	a0,2
800040ac:	02a6e863          	bltu	a3,a0,800040dc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdc4>
800040b0:	0880006f          	j	80004138 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
800040b4:	a8442583          	lw	a1,-1404(s0)
800040b8:	a8c42a83          	lw	s5,-1396(s0)
800040bc:	a8842503          	lw	a0,-1400(s0)
800040c0:	aa042903          	lw	s2,-1376(s0)
800040c4:	092c7063          	bgeu	s8,s2,80004144 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe2c>
800040c8:	1040006f          	j	800041cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xeb4>
800040cc:	00153693          	seqz	a3,a0
800040d0:	fff68693          	addi	a3,a3,-1
800040d4:	00200513          	li	a0,2
800040d8:	06a6f063          	bgeu	a3,a0,80004138 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
800040dc:	00000513          	li	a0,0
800040e0:	012a84b3          	add	s1,s5,s2
800040e4:	fff00593          	li	a1,-1
800040e8:	03900613          	li	a2,57
800040ec:	00ab06b3          	add	a3,s6,a0
800040f0:	08b68e63          	beq	a3,a1,8000418c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe74>
800040f4:	00aa06b3          	add	a3,s4,a0
800040f8:	0006c683          	lbu	a3,0(a3)
800040fc:	fff50513          	addi	a0,a0,-1
80004100:	fec686e3          	beq	a3,a2,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdd4>
80004104:	00ab05b3          	add	a1,s6,a0
80004108:	01558633          	add	a2,a1,s5
8000410c:	00164683          	lbu	a3,1(a2)
80004110:	00168693          	addi	a3,a3,1
80004114:	00258593          	addi	a1,a1,2
80004118:	00d600a3          	sb	a3,1(a2)
8000411c:	00bb6e63          	bltu	s6,a1,80004138 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
80004120:	fff54613          	not	a2,a0
80004124:	00aa0533          	add	a0,s4,a0
80004128:	00250513          	addi	a0,a0,2
8000412c:	03000593          	li	a1,48
80004130:	00007097          	auipc	ra,0x7
80004134:	e9c080e7          	jalr	-356(ra) # 8000afcc <memset>
80004138:	a8442583          	lw	a1,-1404(s0)
8000413c:	a8842503          	lw	a0,-1400(s0)
80004140:	092c6663          	bltu	s8,s2,800041cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xeb4>
80004144:	0155a023          	sw	s5,0(a1)
80004148:	0125a223          	sw	s2,4(a1)
8000414c:	00a59423          	sh	a0,8(a1)
80004150:	57c12083          	lw	ra,1404(sp)
80004154:	57812403          	lw	s0,1400(sp)
80004158:	57412483          	lw	s1,1396(sp)
8000415c:	57012903          	lw	s2,1392(sp)
80004160:	56c12983          	lw	s3,1388(sp)
80004164:	56812a03          	lw	s4,1384(sp)
80004168:	56412a83          	lw	s5,1380(sp)
8000416c:	56012b03          	lw	s6,1376(sp)
80004170:	55c12b83          	lw	s7,1372(sp)
80004174:	55812c03          	lw	s8,1368(sp)
80004178:	55412c83          	lw	s9,1364(sp)
8000417c:	55012d03          	lw	s10,1360(sp)
80004180:	54c12d83          	lw	s11,1356(sp)
80004184:	58010113          	addi	sp,sp,1408
80004188:	00008067          	ret
8000418c:	03100513          	li	a0,49
80004190:	00aa8023          	sb	a0,0(s5)
80004194:	000b0c63          	beqz	s6,800041ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe94>
80004198:	001a8513          	addi	a0,s5,1
8000419c:	03000593          	li	a1,48
800041a0:	000b0613          	mv	a2,s6
800041a4:	00007097          	auipc	ra,0x7
800041a8:	e28080e7          	jalr	-472(ra) # 8000afcc <memset>
800041ac:	a8442583          	lw	a1,-1404(s0)
800041b0:	19897263          	bgeu	s2,s8,80004334 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x101c>
800041b4:	03000513          	li	a0,48
800041b8:	00a48023          	sb	a0,0(s1)
800041bc:	002b0913          	addi	s2,s6,2
800041c0:	a8842503          	lw	a0,-1400(s0)
800041c4:	00150513          	addi	a0,a0,1
800041c8:	f72c7ee3          	bgeu	s8,s2,80004144 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe2c>
800041cc:	8000d637          	lui	a2,0x8000d
800041d0:	97460613          	addi	a2,a2,-1676 # 8000c974 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.36>
800041d4:	00090513          	mv	a0,s2
800041d8:	000c0593          	mv	a1,s8
800041dc:	00005097          	auipc	ra,0x5
800041e0:	dc4080e7          	jalr	-572(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800041e4:	8000d637          	lui	a2,0x8000d
800041e8:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800041ec:	02800593          	li	a1,40
800041f0:	00005097          	auipc	ra,0x5
800041f4:	db0080e7          	jalr	-592(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800041f8:	8000d637          	lui	a2,0x8000d
800041fc:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004200:	02800593          	li	a1,40
80004204:	00068513          	mv	a0,a3
80004208:	00005097          	auipc	ra,0x5
8000420c:	d98080e7          	jalr	-616(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004210:	8000d537          	lui	a0,0x8000d
80004214:	52450513          	addi	a0,a0,1316 # 8000d524 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>
80004218:	8000d637          	lui	a2,0x8000d
8000421c:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004220:	01a00593          	li	a1,26
80004224:	00003097          	auipc	ra,0x3
80004228:	ea8080e7          	jalr	-344(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000422c:	8000d637          	lui	a2,0x8000d
80004230:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004234:	02800593          	li	a1,40
80004238:	000a8513          	mv	a0,s5
8000423c:	00005097          	auipc	ra,0x5
80004240:	d64080e7          	jalr	-668(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004244:	8000d537          	lui	a0,0x8000d
80004248:	88b50513          	addi	a0,a0,-1909 # 8000c88b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
8000424c:	8000d637          	lui	a2,0x8000d
80004250:	8a860613          	addi	a2,a2,-1880 # 8000c8a8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.27>
80004254:	01c00593          	li	a1,28
80004258:	00003097          	auipc	ra,0x3
8000425c:	e74080e7          	jalr	-396(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004260:	8000d537          	lui	a0,0x8000d
80004264:	8b850513          	addi	a0,a0,-1864 # 8000c8b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80004268:	8000d637          	lui	a2,0x8000d
8000426c:	8d860613          	addi	a2,a2,-1832 # 8000c8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.29>
80004270:	01d00593          	li	a1,29
80004274:	00003097          	auipc	ra,0x3
80004278:	e58080e7          	jalr	-424(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000427c:	8000d537          	lui	a0,0x8000d
80004280:	8e850513          	addi	a0,a0,-1816 # 8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80004284:	8000d637          	lui	a2,0x8000d
80004288:	90460613          	addi	a2,a2,-1788 # 8000c904 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.31>
8000428c:	01c00593          	li	a1,28
80004290:	00003097          	auipc	ra,0x3
80004294:	e3c080e7          	jalr	-452(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004298:	8000d537          	lui	a0,0x8000d
8000429c:	91450513          	addi	a0,a0,-1772 # 8000c914 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
800042a0:	8000d637          	lui	a2,0x8000d
800042a4:	94460613          	addi	a2,a2,-1724 # 8000c944 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33>
800042a8:	02d00593          	li	a1,45
800042ac:	00003097          	auipc	ra,0x3
800042b0:	e20080e7          	jalr	-480(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800042b4:	8000d637          	lui	a2,0x8000d
800042b8:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800042bc:	02800593          	li	a1,40
800042c0:	000a0513          	mv	a0,s4
800042c4:	00005097          	auipc	ra,0x5
800042c8:	cdc080e7          	jalr	-804(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800042cc:	8000d637          	lui	a2,0x8000d
800042d0:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800042d4:	02800513          	li	a0,40
800042d8:	02800593          	li	a1,40
800042dc:	00003097          	auipc	ra,0x3
800042e0:	e38080e7          	jalr	-456(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800042e4:	8000d637          	lui	a2,0x8000d
800042e8:	95460613          	addi	a2,a2,-1708 # 8000c954 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.34>
800042ec:	000c8513          	mv	a0,s9
800042f0:	000c8593          	mv	a1,s9
800042f4:	00003097          	auipc	ra,0x3
800042f8:	e20080e7          	jalr	-480(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800042fc:	8000d537          	lui	a0,0x8000d
80004300:	9cc50513          	addi	a0,a0,-1588 # 8000c9cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
80004304:	8000d637          	lui	a2,0x8000d
80004308:	a0460613          	addi	a2,a2,-1532 # 8000ca04 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.40>
8000430c:	03600593          	li	a1,54
80004310:	00003097          	auipc	ra,0x3
80004314:	dbc080e7          	jalr	-580(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004318:	8000d537          	lui	a0,0x8000d
8000431c:	98450513          	addi	a0,a0,-1660 # 8000c984 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
80004320:	8000d637          	lui	a2,0x8000d
80004324:	9bc60613          	addi	a2,a2,-1604 # 8000c9bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.38>
80004328:	03700593          	li	a1,55
8000432c:	00003097          	auipc	ra,0x3
80004330:	da0080e7          	jalr	-608(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004334:	8000d637          	lui	a2,0x8000d
80004338:	96460613          	addi	a2,a2,-1692 # 8000c964 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.35>
8000433c:	00090513          	mv	a0,s2
80004340:	000c0593          	mv	a1,s8
80004344:	00003097          	auipc	ra,0x3
80004348:	dd0080e7          	jalr	-560(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

8000434c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E>:
8000434c:	c7010113          	addi	sp,sp,-912
80004350:	38112623          	sw	ra,908(sp)
80004354:	38812423          	sw	s0,904(sp)
80004358:	38912223          	sw	s1,900(sp)
8000435c:	39212023          	sw	s2,896(sp)
80004360:	37312e23          	sw	s3,892(sp)
80004364:	37412c23          	sw	s4,888(sp)
80004368:	37512a23          	sw	s5,884(sp)
8000436c:	37612823          	sw	s6,880(sp)
80004370:	37712623          	sw	s7,876(sp)
80004374:	37812423          	sw	s8,872(sp)
80004378:	37912223          	sw	s9,868(sp)
8000437c:	37a12023          	sw	s10,864(sp)
80004380:	35b12e23          	sw	s11,860(sp)
80004384:	39010413          	addi	s0,sp,912
80004388:	0045ab83          	lw	s7,4(a1)
8000438c:	0005ab03          	lw	s6,0(a1)
80004390:	017b67b3          	or	a5,s6,s7
80004394:	50078ee3          	beqz	a5,800050b0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd64>
80004398:	00068993          	mv	s3,a3
8000439c:	00060493          	mv	s1,a2
800043a0:	00c5a803          	lw	a6,12(a1)
800043a4:	0085a603          	lw	a2,8(a1)
800043a8:	010666b3          	or	a3,a2,a6
800043ac:	520680e3          	beqz	a3,800050cc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd80>
800043b0:	00070a13          	mv	s4,a4
800043b4:	0145a703          	lw	a4,20(a1)
800043b8:	0105a683          	lw	a3,16(a1)
800043bc:	00e6e7b3          	or	a5,a3,a4
800043c0:	520784e3          	beqz	a5,800050e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd9c>
800043c4:	00db06b3          	add	a3,s6,a3
800043c8:	0166b6b3          	sltu	a3,a3,s6
800043cc:	00eb8733          	add	a4,s7,a4
800043d0:	00d70733          	add	a4,a4,a3
800043d4:	01770463          	beq	a4,s7,800043dc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x90>
800043d8:	017736b3          	sltu	a3,a4,s7
800043dc:	5c069ce3          	bnez	a3,800051b4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe68>
800043e0:	010b8663          	beq	s7,a6,800043ec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa0>
800043e4:	010bb633          	sltu	a2,s7,a6
800043e8:	0080006f          	j	800043f0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa4>
800043ec:	00cb3633          	sltu	a2,s6,a2
800043f0:	5e0610e3          	bnez	a2,800051d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe84>
800043f4:	01859a83          	lh	s5,24(a1)
800043f8:	001b3593          	seqz	a1,s6
800043fc:	40bb86b3          	sub	a3,s7,a1
80004400:	555555b7          	lui	a1,0x55555
80004404:	55558613          	addi	a2,a1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80004408:	333335b7          	lui	a1,0x33333
8000440c:	33358593          	addi	a1,a1,819 # 33333333 <.Lline_table_start2+0x33331f85>
80004410:	0f0f1737          	lui	a4,0xf0f1
80004414:	f0f70793          	addi	a5,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80004418:	c8a42423          	sw	a0,-888(s0)
8000441c:	06069c63          	bnez	a3,80004494 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x148>
80004420:	fffb0693          	addi	a3,s6,-1
80004424:	0016d713          	srli	a4,a3,0x1
80004428:	00e6e6b3          	or	a3,a3,a4
8000442c:	0026d713          	srli	a4,a3,0x2
80004430:	00e6e6b3          	or	a3,a3,a4
80004434:	0046d713          	srli	a4,a3,0x4
80004438:	00e6e6b3          	or	a3,a3,a4
8000443c:	0086d713          	srli	a4,a3,0x8
80004440:	00e6e6b3          	or	a3,a3,a4
80004444:	0106d713          	srli	a4,a3,0x10
80004448:	00e6e6b3          	or	a3,a3,a4
8000444c:	fff6c693          	not	a3,a3
80004450:	0016d713          	srli	a4,a3,0x1
80004454:	00c77633          	and	a2,a4,a2
80004458:	40c686b3          	sub	a3,a3,a2
8000445c:	00b6f633          	and	a2,a3,a1
80004460:	0026d693          	srli	a3,a3,0x2
80004464:	00b6f5b3          	and	a1,a3,a1
80004468:	00b605b3          	add	a1,a2,a1
8000446c:	0045d613          	srli	a2,a1,0x4
80004470:	00c585b3          	add	a1,a1,a2
80004474:	00f5f533          	and	a0,a1,a5
80004478:	00851593          	slli	a1,a0,0x8
8000447c:	00b50533          	add	a0,a0,a1
80004480:	01051593          	slli	a1,a0,0x10
80004484:	00b50533          	add	a0,a0,a1
80004488:	01855513          	srli	a0,a0,0x18
8000448c:	02050593          	addi	a1,a0,32
80004490:	06c0006f          	j	800044fc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x1b0>
80004494:	0016d713          	srli	a4,a3,0x1
80004498:	00e6e6b3          	or	a3,a3,a4
8000449c:	0026d713          	srli	a4,a3,0x2
800044a0:	00e6e6b3          	or	a3,a3,a4
800044a4:	0046d713          	srli	a4,a3,0x4
800044a8:	00e6e6b3          	or	a3,a3,a4
800044ac:	0086d713          	srli	a4,a3,0x8
800044b0:	00e6e6b3          	or	a3,a3,a4
800044b4:	0106d713          	srli	a4,a3,0x10
800044b8:	00e6e6b3          	or	a3,a3,a4
800044bc:	fff6c693          	not	a3,a3
800044c0:	0016d713          	srli	a4,a3,0x1
800044c4:	00c77633          	and	a2,a4,a2
800044c8:	40c686b3          	sub	a3,a3,a2
800044cc:	00b6f633          	and	a2,a3,a1
800044d0:	0026d693          	srli	a3,a3,0x2
800044d4:	00b6f5b3          	and	a1,a3,a1
800044d8:	00b605b3          	add	a1,a2,a1
800044dc:	0045d613          	srli	a2,a1,0x4
800044e0:	00c585b3          	add	a1,a1,a2
800044e4:	00f5f533          	and	a0,a1,a5
800044e8:	00851593          	slli	a1,a0,0x8
800044ec:	00b50533          	add	a0,a0,a1
800044f0:	01051593          	slli	a1,a0,0x10
800044f4:	00b50533          	add	a0,a0,a1
800044f8:	01855593          	srli	a1,a0,0x18
800044fc:	41fad613          	srai	a2,s5,0x1f
80004500:	40ba8533          	sub	a0,s5,a1
80004504:	00bab5b3          	sltu	a1,s5,a1
80004508:	40b605b3          	sub	a1,a2,a1
8000450c:	4d105637          	lui	a2,0x4d105
80004510:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103994>
80004514:	00000693          	li	a3,0
80004518:	00006097          	auipc	ra,0x6
8000451c:	ba0080e7          	jalr	-1120(ra) # 8000a0b8 <__muldi3>
80004520:	44135637          	lui	a2,0x44135
80004524:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133cd2>
80004528:	00c50633          	add	a2,a0,a2
8000452c:	00a63533          	sltu	a0,a2,a0
80004530:	00a58533          	add	a0,a1,a0
80004534:	01350913          	addi	s2,a0,19
80004538:	01091513          	slli	a0,s2,0x10
8000453c:	41055c93          	srai	s9,a0,0x10
80004540:	001bb513          	seqz	a0,s7
80004544:	fff50593          	addi	a1,a0,-1
80004548:	0175f5b3          	and	a1,a1,s7
8000454c:	00200613          	li	a2,2
80004550:	40a60633          	sub	a2,a2,a0
80004554:	d2c42c23          	sw	a2,-712(s0)
80004558:	c9642c23          	sw	s6,-872(s0)
8000455c:	c8b42e23          	sw	a1,-868(s0)
80004560:	ca040513          	addi	a0,s0,-864
80004564:	09800613          	li	a2,152
80004568:	00000593          	li	a1,0
8000456c:	00007097          	auipc	ra,0x7
80004570:	a60080e7          	jalr	-1440(ra) # 8000afcc <memset>
80004574:	d4040513          	addi	a0,s0,-704
80004578:	09c00613          	li	a2,156
8000457c:	00000593          	li	a1,0
80004580:	00007097          	auipc	ra,0x7
80004584:	a4c080e7          	jalr	-1460(ra) # 8000afcc <memset>
80004588:	00100513          	li	a0,1
8000458c:	dca42e23          	sw	a0,-548(s0)
80004590:	d2a42e23          	sw	a0,-708(s0)
80004594:	020ac863          	bltz	s5,800045c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x278>
80004598:	c9840513          	addi	a0,s0,-872
8000459c:	000a8593          	mv	a1,s5
800045a0:	00005097          	auipc	ra,0x5
800045a4:	ca0080e7          	jalr	-864(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800045a8:	c8942623          	sw	s1,-884(s0)
800045ac:	c9442823          	sw	s4,-880(s0)
800045b0:	020ccc63          	bltz	s9,800045e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x29c>
800045b4:	01191593          	slli	a1,s2,0x11
800045b8:	0115d593          	srli	a1,a1,0x11
800045bc:	d3c40513          	addi	a0,s0,-708
800045c0:	0380006f          	j	800045f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2ac>
800045c4:	41500533          	neg	a0,s5
800045c8:	01051513          	slli	a0,a0,0x10
800045cc:	41055593          	srai	a1,a0,0x10
800045d0:	d3c40513          	addi	a0,s0,-708
800045d4:	00005097          	auipc	ra,0x5
800045d8:	c6c080e7          	jalr	-916(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800045dc:	c8942623          	sw	s1,-884(s0)
800045e0:	c9442823          	sw	s4,-880(s0)
800045e4:	fc0cd8e3          	bgez	s9,800045b4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x268>
800045e8:	41900533          	neg	a0,s9
800045ec:	01051513          	slli	a0,a0,0x10
800045f0:	01055593          	srli	a1,a0,0x10
800045f4:	c9840513          	addi	a0,s0,-872
800045f8:	ffffe097          	auipc	ra,0xffffe
800045fc:	e78080e7          	jalr	-392(ra) # 80002470 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
80004600:	ddc42a83          	lw	s5,-548(s0)
80004604:	f2840513          	addi	a0,s0,-216
80004608:	d3c40593          	addi	a1,s0,-708
8000460c:	0a000613          	li	a2,160
80004610:	00006097          	auipc	ra,0x6
80004614:	b30080e7          	jalr	-1232(ra) # 8000a140 <memcpy>
80004618:	00a00513          	li	a0,10
8000461c:	fd542423          	sw	s5,-56(s0)
80004620:	00098d93          	mv	s11,s3
80004624:	c9342a23          	sw	s3,-876(s0)
80004628:	08a9e463          	bltu	s3,a0,800046b0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x364>
8000462c:	f2440993          	addi	s3,s0,-220
80004630:	02900a13          	li	s4,41
80004634:	00900913          	li	s2,9
80004638:	3b9ad537          	lui	a0,0x3b9ad
8000463c:	a0050b13          	addi	s6,a0,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
80004640:	c9442d83          	lw	s11,-876(s0)
80004644:	00c0006f          	j	80004650 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x304>
80004648:	ff7d8d93          	addi	s11,s11,-9
8000464c:	07b97263          	bgeu	s2,s11,800046b0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x364>
80004650:	fc842503          	lw	a0,-56(s0)
80004654:	234578e3          	bgeu	a0,s4,80005084 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004658:	fe0508e3          	beqz	a0,80004648 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2fc>
8000465c:	00000593          	li	a1,0
80004660:	00251513          	slli	a0,a0,0x2
80004664:	40a004b3          	neg	s1,a0
80004668:	00a98d33          	add	s10,s3,a0
8000466c:	000d2b83          	lw	s7,0(s10)
80004670:	000b8513          	mv	a0,s7
80004674:	000b0613          	mv	a2,s6
80004678:	00000693          	li	a3,0
8000467c:	00006097          	auipc	ra,0x6
80004680:	5d8080e7          	jalr	1496(ra) # 8000ac54 <__udivdi3>
80004684:	00050c13          	mv	s8,a0
80004688:	000b0613          	mv	a2,s6
8000468c:	00000693          	li	a3,0
80004690:	00006097          	auipc	ra,0x6
80004694:	a28080e7          	jalr	-1496(ra) # 8000a0b8 <__muldi3>
80004698:	40ab85b3          	sub	a1,s7,a0
8000469c:	018d2023          	sw	s8,0(s10)
800046a0:	00448493          	addi	s1,s1,4
800046a4:	ffcd0d13          	addi	s10,s10,-4
800046a8:	fc0492e3          	bnez	s1,8000466c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x320>
800046ac:	f9dff06f          	j	80004648 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2fc>
800046b0:	002d9d93          	slli	s11,s11,0x2
800046b4:	8000d537          	lui	a0,0x8000d
800046b8:	14850513          	addi	a0,a0,328 # 8000d148 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
800046bc:	01b50533          	add	a0,a0,s11
800046c0:	00052b03          	lw	s6,0(a0)
800046c4:	001b1b13          	slli	s6,s6,0x1
800046c8:	220b0ee3          	beqz	s6,80005104 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdb8>
800046cc:	fc842503          	lw	a0,-56(s0)
800046d0:	02900593          	li	a1,41
800046d4:	1ab578e3          	bgeu	a0,a1,80005084 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800046d8:	20050863          	beqz	a0,800048e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x59c>
800046dc:	00000593          	li	a1,0
800046e0:	00251513          	slli	a0,a0,0x2
800046e4:	40a00933          	neg	s2,a0
800046e8:	f2840613          	addi	a2,s0,-216
800046ec:	00c50533          	add	a0,a0,a2
800046f0:	ffc50493          	addi	s1,a0,-4
800046f4:	c8c42d83          	lw	s11,-884(s0)
800046f8:	c9442983          	lw	s3,-876(s0)
800046fc:	c9042a03          	lw	s4,-880(s0)
80004700:	0004ab83          	lw	s7,0(s1)
80004704:	000b8513          	mv	a0,s7
80004708:	000b0613          	mv	a2,s6
8000470c:	00000693          	li	a3,0
80004710:	00006097          	auipc	ra,0x6
80004714:	544080e7          	jalr	1348(ra) # 8000ac54 <__udivdi3>
80004718:	00050c13          	mv	s8,a0
8000471c:	000b0613          	mv	a2,s6
80004720:	00000693          	li	a3,0
80004724:	00006097          	auipc	ra,0x6
80004728:	994080e7          	jalr	-1644(ra) # 8000a0b8 <__muldi3>
8000472c:	40ab85b3          	sub	a1,s7,a0
80004730:	0184a023          	sw	s8,0(s1)
80004734:	00490913          	addi	s2,s2,4
80004738:	ffc48493          	addi	s1,s1,-4
8000473c:	fc0912e3          	bnez	s2,80004700 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x3b4>
80004740:	fc842503          	lw	a0,-56(s0)
80004744:	d3842b83          	lw	s7,-712(s0)
80004748:	00abe463          	bltu	s7,a0,80004750 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x404>
8000474c:	000b8513          	mv	a0,s7
80004750:	02800593          	li	a1,40
80004754:	12a5e8e3          	bltu	a1,a0,80005084 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004758:	06050663          	beqz	a0,800047c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x478>
8000475c:	00000613          	li	a2,0
80004760:	c9840593          	addi	a1,s0,-872
80004764:	f2840693          	addi	a3,s0,-216
80004768:	00050713          	mv	a4,a0
8000476c:	0006a783          	lw	a5,0(a3)
80004770:	0005a803          	lw	a6,0(a1)
80004774:	01078833          	add	a6,a5,a6
80004778:	00f837b3          	sltu	a5,a6,a5
8000477c:	00167613          	andi	a2,a2,1
80004780:	00c808b3          	add	a7,a6,a2
80004784:	0108b633          	sltu	a2,a7,a6
80004788:	00c7e633          	or	a2,a5,a2
8000478c:	0116a023          	sw	a7,0(a3)
80004790:	00458593          	addi	a1,a1,4
80004794:	fff70713          	addi	a4,a4,-1
80004798:	00468693          	addi	a3,a3,4
8000479c:	fc0718e3          	bnez	a4,8000476c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x420>
800047a0:	02060263          	beqz	a2,800047c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x478>
800047a4:	02800593          	li	a1,40
800047a8:	24b502e3          	beq	a0,a1,800051ec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
800047ac:	00251593          	slli	a1,a0,0x2
800047b0:	f2840613          	addi	a2,s0,-216
800047b4:	00b605b3          	add	a1,a2,a1
800047b8:	00100613          	li	a2,1
800047bc:	00c5a023          	sw	a2,0(a1)
800047c0:	00150513          	addi	a0,a0,1
800047c4:	fca42423          	sw	a0,-56(s0)
800047c8:	00aae463          	bltu	s5,a0,800047d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x484>
800047cc:	000a8513          	mv	a0,s5
800047d0:	02900593          	li	a1,41
800047d4:	0ab578e3          	bgeu	a0,a1,80005084 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800047d8:	00251593          	slli	a1,a0,0x2
800047dc:	40b00533          	neg	a0,a1
800047e0:	ffc58613          	addi	a2,a1,-4
800047e4:	d3c40593          	addi	a1,s0,-708
800047e8:	00c585b3          	add	a1,a1,a2
800047ec:	f2840693          	addi	a3,s0,-216
800047f0:	00c68633          	add	a2,a3,a2
800047f4:	04050a63          	beqz	a0,80004848 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4fc>
800047f8:	00062683          	lw	a3,0(a2)
800047fc:	0005a703          	lw	a4,0(a1)
80004800:	00e6b7b3          	sltu	a5,a3,a4
80004804:	00d746b3          	xor	a3,a4,a3
80004808:	00d036b3          	snez	a3,a3
8000480c:	40f00733          	neg	a4,a5
80004810:	00d766b3          	or	a3,a4,a3
80004814:	00450513          	addi	a0,a0,4
80004818:	ffc58593          	addi	a1,a1,-4
8000481c:	ffc60613          	addi	a2,a2,-4
80004820:	fc068ae3          	beqz	a3,800047f4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4a8>
80004824:	00200513          	li	a0,2
80004828:	02a6f863          	bgeu	a3,a0,80004858 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x50c>
8000482c:	001c8c93          	addi	s9,s9,1
80004830:	010c9513          	slli	a0,s9,0x10
80004834:	41055c13          	srai	s8,a0,0x10
80004838:	00100593          	li	a1,1
8000483c:	094c5c63          	bge	s8,s4,800048d4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x588>
80004840:	00000b13          	li	s6,0
80004844:	6180006f          	j	80004e5c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
80004848:	00153693          	seqz	a3,a0
8000484c:	fff68693          	addi	a3,a3,-1
80004850:	00200513          	li	a0,2
80004854:	fca6ece3          	bltu	a3,a0,8000482c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4e0>
80004858:	060b8463          	beqz	s7,800048c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x574>
8000485c:	00000913          	li	s2,0
80004860:	002b9493          	slli	s1,s7,0x2
80004864:	c9840993          	addi	s3,s0,-872
80004868:	00998a33          	add	s4,s3,s1
8000486c:	0009a503          	lw	a0,0(s3)
80004870:	00498b13          	addi	s6,s3,4
80004874:	00a00613          	li	a2,10
80004878:	00000593          	li	a1,0
8000487c:	00000693          	li	a3,0
80004880:	00006097          	auipc	ra,0x6
80004884:	838080e7          	jalr	-1992(ra) # 8000a0b8 <__muldi3>
80004888:	01250633          	add	a2,a0,s2
8000488c:	00a63933          	sltu	s2,a2,a0
80004890:	01258933          	add	s2,a1,s2
80004894:	ffc48493          	addi	s1,s1,-4
80004898:	00c9a023          	sw	a2,0(s3)
8000489c:	000b0993          	mv	s3,s6
800048a0:	fc0496e3          	bnez	s1,8000486c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x520>
800048a4:	00090a63          	beqz	s2,800048b8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x56c>
800048a8:	02800513          	li	a0,40
800048ac:	14ab80e3          	beq	s7,a0,800051ec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
800048b0:	012a2023          	sw	s2,0(s4)
800048b4:	001b8b93          	addi	s7,s7,1
800048b8:	c9442983          	lw	s3,-876(s0)
800048bc:	c9042a03          	lw	s4,-880(s0)
800048c0:	d3742c23          	sw	s7,-712(s0)
800048c4:	010c9513          	slli	a0,s9,0x10
800048c8:	41055c13          	srai	s8,a0,0x10
800048cc:	00100593          	li	a1,1
800048d0:	f74c48e3          	blt	s8,s4,80004840 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4f4>
800048d4:	414c0533          	sub	a0,s8,s4
800048d8:	03356463          	bltu	a0,s3,80004900 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x5b4>
800048dc:	00098b13          	mv	s6,s3
800048e0:	02099863          	bnez	s3,80004910 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x5c4>
800048e4:	5780006f          	j	80004e5c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
800048e8:	c8c42d83          	lw	s11,-884(s0)
800048ec:	c9442983          	lw	s3,-876(s0)
800048f0:	c9042a03          	lw	s4,-880(s0)
800048f4:	d3842b83          	lw	s7,-712(s0)
800048f8:	e4abfae3          	bgeu	s7,a0,8000474c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x400>
800048fc:	e55ff06f          	j	80004750 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x404>
80004900:	414c8533          	sub	a0,s9,s4
80004904:	01051513          	slli	a0,a0,0x10
80004908:	41055b13          	srai	s6,a0,0x10
8000490c:	540b0863          	beqz	s6,80004e5c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
80004910:	c7842e23          	sw	s8,-900(s0)
80004914:	de040513          	addi	a0,s0,-544
80004918:	d3c40593          	addi	a1,s0,-708
8000491c:	0a000613          	li	a2,160
80004920:	00006097          	auipc	ra,0x6
80004924:	820080e7          	jalr	-2016(ra) # 8000a140 <memcpy>
80004928:	e9542023          	sw	s5,-384(s0)
8000492c:	de040513          	addi	a0,s0,-544
80004930:	00100593          	li	a1,1
80004934:	00100c13          	li	s8,1
80004938:	00005097          	auipc	ra,0x5
8000493c:	908080e7          	jalr	-1784(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004940:	ddc42483          	lw	s1,-548(s0)
80004944:	e8440513          	addi	a0,s0,-380
80004948:	d3c40593          	addi	a1,s0,-708
8000494c:	0a000613          	li	a2,160
80004950:	00005097          	auipc	ra,0x5
80004954:	7f0080e7          	jalr	2032(ra) # 8000a140 <memcpy>
80004958:	f2942223          	sw	s1,-220(s0)
8000495c:	e8440513          	addi	a0,s0,-380
80004960:	00200593          	li	a1,2
80004964:	00005097          	auipc	ra,0x5
80004968:	8dc080e7          	jalr	-1828(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
8000496c:	ddc42483          	lw	s1,-548(s0)
80004970:	f2840513          	addi	a0,s0,-216
80004974:	d3c40593          	addi	a1,s0,-708
80004978:	0a000613          	li	a2,160
8000497c:	00005097          	auipc	ra,0x5
80004980:	7c4080e7          	jalr	1988(ra) # 8000a140 <memcpy>
80004984:	fc942423          	sw	s1,-56(s0)
80004988:	f2840513          	addi	a0,s0,-216
8000498c:	00300593          	li	a1,3
80004990:	00005097          	auipc	ra,0x5
80004994:	8b0080e7          	jalr	-1872(ra) # 80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004998:	00000f13          	li	t5,0
8000499c:	fc842383          	lw	t2,-56(s0)
800049a0:	f2442e03          	lw	t3,-220(s0)
800049a4:	e8042e83          	lw	t4,-384(s0)
800049a8:	ddc42a83          	lw	s5,-548(s0)
800049ac:	d3842b83          	lw	s7,-712(s0)
800049b0:	f2440f93          	addi	t6,s0,-220
800049b4:	c9440493          	addi	s1,s0,-876
800049b8:	e8040913          	addi	s2,s0,-384
800049bc:	ddc40d13          	addi	s10,s0,-548
800049c0:	d3840093          	addi	ra,s0,-712
800049c4:	02900713          	li	a4,41
800049c8:	6cebf863          	bgeu	s7,a4,80005098 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
800049cc:	000f0593          	mv	a1,t5
800049d0:	001f0f13          	addi	t5,t5,1
800049d4:	002b9513          	slli	a0,s7,0x2
800049d8:	c9840613          	addi	a2,s0,-872
800049dc:	5c050663          	beqz	a0,80004fa8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc5c>
800049e0:	00062683          	lw	a3,0(a2)
800049e4:	00460613          	addi	a2,a2,4
800049e8:	ffc50513          	addi	a0,a0,-4
800049ec:	fe0688e3          	beqz	a3,800049dc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x690>
800049f0:	000b8513          	mv	a0,s7
800049f4:	0173e463          	bltu	t2,s7,800049fc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6b0>
800049f8:	00038513          	mv	a0,t2
800049fc:	68e57463          	bgeu	a0,a4,80005084 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004a00:	00251713          	slli	a4,a0,0x2
80004a04:	40e00633          	neg	a2,a4
80004a08:	00ef86b3          	add	a3,t6,a4
80004a0c:	00e48733          	add	a4,s1,a4
80004a10:	08060e63          	beqz	a2,80004aac <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x760>
80004a14:	00072783          	lw	a5,0(a4)
80004a18:	0006a803          	lw	a6,0(a3)
80004a1c:	0107b8b3          	sltu	a7,a5,a6
80004a20:	00f847b3          	xor	a5,a6,a5
80004a24:	00f037b3          	snez	a5,a5
80004a28:	41100833          	neg	a6,a7
80004a2c:	00f867b3          	or	a5,a6,a5
80004a30:	00460613          	addi	a2,a2,4
80004a34:	ffc68693          	addi	a3,a3,-4
80004a38:	ffc70713          	addi	a4,a4,-4
80004a3c:	fc078ae3          	beqz	a5,80004a10 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6c4>
80004a40:	00200613          	li	a2,2
80004a44:	06c7fc63          	bgeu	a5,a2,80004abc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x770>
80004a48:	00100693          	li	a3,1
80004a4c:	f2840613          	addi	a2,s0,-216
80004a50:	c9840713          	addi	a4,s0,-872
80004a54:	00050793          	mv	a5,a0
80004a58:	00062803          	lw	a6,0(a2)
80004a5c:	00072883          	lw	a7,0(a4)
80004a60:	fff84813          	not	a6,a6
80004a64:	01088833          	add	a6,a7,a6
80004a68:	011838b3          	sltu	a7,a6,a7
80004a6c:	0016f693          	andi	a3,a3,1
80004a70:	00d802b3          	add	t0,a6,a3
80004a74:	0102b6b3          	sltu	a3,t0,a6
80004a78:	00d8e6b3          	or	a3,a7,a3
80004a7c:	00572023          	sw	t0,0(a4)
80004a80:	00460613          	addi	a2,a2,4
80004a84:	fff78793          	addi	a5,a5,-1
80004a88:	00470713          	addi	a4,a4,4
80004a8c:	fc0796e3          	bnez	a5,80004a58 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x70c>
80004a90:	6c068063          	beqz	a3,80005150 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004a94:	d2a42c23          	sw	a0,-712(s0)
80004a98:	00800613          	li	a2,8
80004a9c:	00050b93          	mv	s7,a0
80004aa0:	02900693          	li	a3,41
80004aa4:	02ae7463          	bgeu	t3,a0,80004acc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x780>
80004aa8:	0280006f          	j	80004ad0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x784>
80004aac:	00163793          	seqz	a5,a2
80004ab0:	fff78793          	addi	a5,a5,-1
80004ab4:	00200613          	li	a2,2
80004ab8:	f8c7e8e3          	bltu	a5,a2,80004a48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6fc>
80004abc:	00000613          	li	a2,0
80004ac0:	02900693          	li	a3,41
80004ac4:	000b8513          	mv	a0,s7
80004ac8:	017e6463          	bltu	t3,s7,80004ad0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x784>
80004acc:	000e0513          	mv	a0,t3
80004ad0:	5ad57a63          	bgeu	a0,a3,80005084 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004ad4:	00251793          	slli	a5,a0,0x2
80004ad8:	40f006b3          	neg	a3,a5
80004adc:	00f90733          	add	a4,s2,a5
80004ae0:	00f487b3          	add	a5,s1,a5
80004ae4:	08068e63          	beqz	a3,80004b80 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x834>
80004ae8:	0007a803          	lw	a6,0(a5)
80004aec:	00072883          	lw	a7,0(a4)
80004af0:	011832b3          	sltu	t0,a6,a7
80004af4:	0108c833          	xor	a6,a7,a6
80004af8:	01003833          	snez	a6,a6
80004afc:	405008b3          	neg	a7,t0
80004b00:	0108e833          	or	a6,a7,a6
80004b04:	00468693          	addi	a3,a3,4
80004b08:	ffc70713          	addi	a4,a4,-4
80004b0c:	ffc78793          	addi	a5,a5,-4
80004b10:	fc080ae3          	beqz	a6,80004ae4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x798>
80004b14:	070c6c63          	bltu	s8,a6,80004b8c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x840>
80004b18:	04050863          	beqz	a0,80004b68 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x81c>
80004b1c:	00100713          	li	a4,1
80004b20:	e8440693          	addi	a3,s0,-380
80004b24:	c9840793          	addi	a5,s0,-872
80004b28:	00050813          	mv	a6,a0
80004b2c:	0006a883          	lw	a7,0(a3)
80004b30:	0007a283          	lw	t0,0(a5)
80004b34:	fff8c893          	not	a7,a7
80004b38:	011288b3          	add	a7,t0,a7
80004b3c:	0058b2b3          	sltu	t0,a7,t0
80004b40:	00177713          	andi	a4,a4,1
80004b44:	00e88333          	add	t1,a7,a4
80004b48:	01133733          	sltu	a4,t1,a7
80004b4c:	00e2e733          	or	a4,t0,a4
80004b50:	0067a023          	sw	t1,0(a5)
80004b54:	00468693          	addi	a3,a3,4
80004b58:	fff80813          	addi	a6,a6,-1
80004b5c:	00478793          	addi	a5,a5,4
80004b60:	fc0816e3          	bnez	a6,80004b2c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x7e0>
80004b64:	5e070663          	beqz	a4,80005150 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004b68:	d2a42c23          	sw	a0,-712(s0)
80004b6c:	00466613          	ori	a2,a2,4
80004b70:	00050693          	mv	a3,a0
80004b74:	02900713          	li	a4,41
80004b78:	02aef263          	bgeu	t4,a0,80004b9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x850>
80004b7c:	0240006f          	j	80004ba0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x854>
80004b80:	0016b813          	seqz	a6,a3
80004b84:	fff80813          	addi	a6,a6,-1
80004b88:	f90c78e3          	bgeu	s8,a6,80004b18 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x7cc>
80004b8c:	000b8513          	mv	a0,s7
80004b90:	00050693          	mv	a3,a0
80004b94:	02900713          	li	a4,41
80004b98:	017ee463          	bltu	t4,s7,80004ba0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x854>
80004b9c:	000e8693          	mv	a3,t4
80004ba0:	5ee6f263          	bgeu	a3,a4,80005184 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe38>
80004ba4:	00269813          	slli	a6,a3,0x2
80004ba8:	41000733          	neg	a4,a6
80004bac:	010d07b3          	add	a5,s10,a6
80004bb0:	01048833          	add	a6,s1,a6
80004bb4:	08070e63          	beqz	a4,80004c50 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x904>
80004bb8:	00082883          	lw	a7,0(a6)
80004bbc:	0007a283          	lw	t0,0(a5)
80004bc0:	0058b333          	sltu	t1,a7,t0
80004bc4:	0112c8b3          	xor	a7,t0,a7
80004bc8:	011038b3          	snez	a7,a7
80004bcc:	406002b3          	neg	t0,t1
80004bd0:	0112e8b3          	or	a7,t0,a7
80004bd4:	00470713          	addi	a4,a4,4
80004bd8:	ffc78793          	addi	a5,a5,-4
80004bdc:	ffc80813          	addi	a6,a6,-4
80004be0:	fc088ae3          	beqz	a7,80004bb4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x868>
80004be4:	071c6c63          	bltu	s8,a7,80004c5c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x910>
80004be8:	04068863          	beqz	a3,80004c38 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x8ec>
80004bec:	00100713          	li	a4,1
80004bf0:	de040513          	addi	a0,s0,-544
80004bf4:	c9840793          	addi	a5,s0,-872
80004bf8:	00068813          	mv	a6,a3
80004bfc:	00052883          	lw	a7,0(a0)
80004c00:	0007a283          	lw	t0,0(a5)
80004c04:	fff8c893          	not	a7,a7
80004c08:	011288b3          	add	a7,t0,a7
80004c0c:	0058b2b3          	sltu	t0,a7,t0
80004c10:	00177713          	andi	a4,a4,1
80004c14:	00e88333          	add	t1,a7,a4
80004c18:	01133733          	sltu	a4,t1,a7
80004c1c:	00e2e733          	or	a4,t0,a4
80004c20:	0067a023          	sw	t1,0(a5)
80004c24:	00450513          	addi	a0,a0,4
80004c28:	fff80813          	addi	a6,a6,-1
80004c2c:	00478793          	addi	a5,a5,4
80004c30:	fc0816e3          	bnez	a6,80004bfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x8b0>
80004c34:	50070e63          	beqz	a4,80005150 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004c38:	d2d42c23          	sw	a3,-712(s0)
80004c3c:	00260613          	addi	a2,a2,2
80004c40:	00068b93          	mv	s7,a3
80004c44:	02900513          	li	a0,41
80004c48:	02daf263          	bgeu	s5,a3,80004c6c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x920>
80004c4c:	0240006f          	j	80004c70 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x924>
80004c50:	00173893          	seqz	a7,a4
80004c54:	fff88893          	addi	a7,a7,-1
80004c58:	f91c78e3          	bgeu	s8,a7,80004be8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x89c>
80004c5c:	00050693          	mv	a3,a0
80004c60:	00068b93          	mv	s7,a3
80004c64:	02900513          	li	a0,41
80004c68:	00dae463          	bltu	s5,a3,80004c70 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x924>
80004c6c:	000a8b93          	mv	s7,s5
80004c70:	42abf463          	bgeu	s7,a0,80005098 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004c74:	002b9793          	slli	a5,s7,0x2
80004c78:	40f00533          	neg	a0,a5
80004c7c:	00f08733          	add	a4,ra,a5
80004c80:	00f487b3          	add	a5,s1,a5
80004c84:	08050863          	beqz	a0,80004d14 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9c8>
80004c88:	0007a803          	lw	a6,0(a5)
80004c8c:	00072883          	lw	a7,0(a4)
80004c90:	011832b3          	sltu	t0,a6,a7
80004c94:	0108c833          	xor	a6,a7,a6
80004c98:	01003833          	snez	a6,a6
80004c9c:	405008b3          	neg	a7,t0
80004ca0:	0108e833          	or	a6,a7,a6
80004ca4:	00450513          	addi	a0,a0,4
80004ca8:	ffc70713          	addi	a4,a4,-4
80004cac:	ffc78793          	addi	a5,a5,-4
80004cb0:	fc080ae3          	beqz	a6,80004c84 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x938>
80004cb4:	070c6663          	bltu	s8,a6,80004d20 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9d4>
80004cb8:	040b8863          	beqz	s7,80004d08 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9bc>
80004cbc:	00100693          	li	a3,1
80004cc0:	d3c40513          	addi	a0,s0,-708
80004cc4:	c9840713          	addi	a4,s0,-872
80004cc8:	000b8793          	mv	a5,s7
80004ccc:	00052803          	lw	a6,0(a0)
80004cd0:	00072883          	lw	a7,0(a4)
80004cd4:	fff84813          	not	a6,a6
80004cd8:	01088833          	add	a6,a7,a6
80004cdc:	011838b3          	sltu	a7,a6,a7
80004ce0:	0016f693          	andi	a3,a3,1
80004ce4:	00d802b3          	add	t0,a6,a3
80004ce8:	0102b6b3          	sltu	a3,t0,a6
80004cec:	00d8e6b3          	or	a3,a7,a3
80004cf0:	00572023          	sw	t0,0(a4)
80004cf4:	00450513          	addi	a0,a0,4
80004cf8:	fff78793          	addi	a5,a5,-1
80004cfc:	00470713          	addi	a4,a4,4
80004d00:	fc0796e3          	bnez	a5,80004ccc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x980>
80004d04:	44068663          	beqz	a3,80005150 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004d08:	d3742c23          	sw	s7,-712(s0)
80004d0c:	00160613          	addi	a2,a2,1
80004d10:	0140006f          	j	80004d24 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9d8>
80004d14:	00153813          	seqz	a6,a0
80004d18:	fff80813          	addi	a6,a6,-1
80004d1c:	f90c7ee3          	bgeu	s8,a6,80004cb8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x96c>
80004d20:	00068b93          	mv	s7,a3
80004d24:	02900713          	li	a4,41
80004d28:	4d358e63          	beq	a1,s3,80005204 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xeb8>
80004d2c:	03060513          	addi	a0,a2,48
80004d30:	00bd85b3          	add	a1,s11,a1
80004d34:	00a58023          	sb	a0,0(a1)
80004d38:	36ebf063          	bgeu	s7,a4,80005098 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004d3c:	0c0b8263          	beqz	s7,80004e00 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xab4>
80004d40:	000c8513          	mv	a0,s9
80004d44:	00008c93          	mv	s9,ra
80004d48:	c9e42023          	sw	t5,-896(s0)
80004d4c:	c8a42223          	sw	a0,-892(s0)
80004d50:	000e8913          	mv	s2,t4
80004d54:	000e0d13          	mv	s10,t3
80004d58:	00038c13          	mv	s8,t2
80004d5c:	00000a13          	li	s4,0
80004d60:	002b9493          	slli	s1,s7,0x2
80004d64:	c9840513          	addi	a0,s0,-872
80004d68:	00950533          	add	a0,a0,s1
80004d6c:	c6a42c23          	sw	a0,-904(s0)
80004d70:	c9840993          	addi	s3,s0,-872
80004d74:	0009a503          	lw	a0,0(s3)
80004d78:	00498d93          	addi	s11,s3,4
80004d7c:	00a00613          	li	a2,10
80004d80:	00000593          	li	a1,0
80004d84:	00000693          	li	a3,0
80004d88:	00005097          	auipc	ra,0x5
80004d8c:	330080e7          	jalr	816(ra) # 8000a0b8 <__muldi3>
80004d90:	01450633          	add	a2,a0,s4
80004d94:	00a63a33          	sltu	s4,a2,a0
80004d98:	01458a33          	add	s4,a1,s4
80004d9c:	ffc48493          	addi	s1,s1,-4
80004da0:	00c9a023          	sw	a2,0(s3)
80004da4:	000d8993          	mv	s3,s11
80004da8:	fc0496e3          	bnez	s1,80004d74 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa28>
80004dac:	060a0063          	beqz	s4,80004e0c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xac0>
80004db0:	02900713          	li	a4,41
80004db4:	02800513          	li	a0,40
80004db8:	42ab8a63          	beq	s7,a0,800051ec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004dbc:	000c0393          	mv	t2,s8
80004dc0:	000c8093          	mv	ra,s9
80004dc4:	c7842503          	lw	a0,-904(s0)
80004dc8:	01452023          	sw	s4,0(a0)
80004dcc:	001b8b93          	addi	s7,s7,1
80004dd0:	c8c42d83          	lw	s11,-884(s0)
80004dd4:	c9442983          	lw	s3,-876(s0)
80004dd8:	c9042a03          	lw	s4,-880(s0)
80004ddc:	00100c13          	li	s8,1
80004de0:	000d0e13          	mv	t3,s10
80004de4:	00090e93          	mv	t4,s2
80004de8:	c8442c83          	lw	s9,-892(s0)
80004dec:	c8042f03          	lw	t5,-896(s0)
80004df0:	f2440f93          	addi	t6,s0,-220
80004df4:	c9440493          	addi	s1,s0,-876
80004df8:	e8040913          	addi	s2,s0,-384
80004dfc:	ddc40d13          	addi	s10,s0,-548
80004e00:	d3742c23          	sw	s7,-712(s0)
80004e04:	bd6f12e3          	bne	t5,s6,800049c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x67c>
80004e08:	04c0006f          	j	80004e54 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb08>
80004e0c:	c8c42d83          	lw	s11,-884(s0)
80004e10:	c9442983          	lw	s3,-876(s0)
80004e14:	c9042a03          	lw	s4,-880(s0)
80004e18:	000c0393          	mv	t2,s8
80004e1c:	00100c13          	li	s8,1
80004e20:	000d0e13          	mv	t3,s10
80004e24:	00090e93          	mv	t4,s2
80004e28:	c8442503          	lw	a0,-892(s0)
80004e2c:	c8042f03          	lw	t5,-896(s0)
80004e30:	f2440f93          	addi	t6,s0,-220
80004e34:	c9440493          	addi	s1,s0,-876
80004e38:	e8040913          	addi	s2,s0,-384
80004e3c:	ddc40d13          	addi	s10,s0,-548
80004e40:	000c8093          	mv	ra,s9
80004e44:	00050c93          	mv	s9,a0
80004e48:	02900713          	li	a4,41
80004e4c:	d3742c23          	sw	s7,-712(s0)
80004e50:	b76f1ce3          	bne	t5,s6,800049c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x67c>
80004e54:	00000593          	li	a1,0
80004e58:	c7c42c03          	lw	s8,-900(s0)
80004e5c:	02900513          	li	a0,41
80004e60:	2caaf063          	bgeu	s5,a0,80005120 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdd4>
80004e64:	040a8e63          	beqz	s5,80004ec0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb74>
80004e68:	00000693          	li	a3,0
80004e6c:	002a9613          	slli	a2,s5,0x2
80004e70:	d3c40713          	addi	a4,s0,-708
80004e74:	00c70533          	add	a0,a4,a2
80004e78:	00072783          	lw	a5,0(a4)
80004e7c:	00279813          	slli	a6,a5,0x2
80004e80:	00f808b3          	add	a7,a6,a5
80004e84:	00d886b3          	add	a3,a7,a3
80004e88:	00d72023          	sw	a3,0(a4)
80004e8c:	00470713          	addi	a4,a4,4
80004e90:	0108b833          	sltu	a6,a7,a6
80004e94:	01e7d793          	srli	a5,a5,0x1e
80004e98:	010787b3          	add	a5,a5,a6
80004e9c:	0116b6b3          	sltu	a3,a3,a7
80004ea0:	ffc60613          	addi	a2,a2,-4
80004ea4:	00d786b3          	add	a3,a5,a3
80004ea8:	fc0618e3          	bnez	a2,80004e78 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb2c>
80004eac:	00068a63          	beqz	a3,80004ec0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb74>
80004eb0:	02800613          	li	a2,40
80004eb4:	32ca8c63          	beq	s5,a2,800051ec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004eb8:	00d52023          	sw	a3,0(a0)
80004ebc:	001a8a93          	addi	s5,s5,1
80004ec0:	dd542e23          	sw	s5,-548(s0)
80004ec4:	017ae463          	bltu	s5,s7,80004ecc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb80>
80004ec8:	000a8b93          	mv	s7,s5
80004ecc:	02900513          	li	a0,41
80004ed0:	1cabf463          	bgeu	s7,a0,80005098 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004ed4:	002b9b93          	slli	s7,s7,0x2
80004ed8:	41700533          	neg	a0,s7
80004edc:	ffcb8693          	addi	a3,s7,-4
80004ee0:	d3c40613          	addi	a2,s0,-708
80004ee4:	00d60633          	add	a2,a2,a3
80004ee8:	c9840713          	addi	a4,s0,-872
80004eec:	00d706b3          	add	a3,a4,a3
80004ef0:	0a050063          	beqz	a0,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc44>
80004ef4:	0006a703          	lw	a4,0(a3)
80004ef8:	00062783          	lw	a5,0(a2)
80004efc:	00f73833          	sltu	a6,a4,a5
80004f00:	00e7c733          	xor	a4,a5,a4
80004f04:	00e03733          	snez	a4,a4
80004f08:	410007b3          	neg	a5,a6
80004f0c:	00e7e733          	or	a4,a5,a4
80004f10:	00450513          	addi	a0,a0,4
80004f14:	ffc60613          	addi	a2,a2,-4
80004f18:	ffc68693          	addi	a3,a3,-4
80004f1c:	fc070ae3          	beqz	a4,80004ef0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xba4>
80004f20:	06070e63          	beqz	a4,80004f9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc50>
80004f24:	0ff77513          	zext.b	a0,a4
80004f28:	00100613          	li	a2,1
80004f2c:	0ec51c63          	bne	a0,a2,80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f30:	2769e663          	bltu	s3,s6,8000519c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe50>
80004f34:	00000513          	li	a0,0
80004f38:	016d8933          	add	s2,s11,s6
80004f3c:	fff00613          	li	a2,-1
80004f40:	03900713          	li	a4,57
80004f44:	000d8693          	mv	a3,s11
80004f48:	08ab0063          	beq	s6,a0,80004fc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc7c>
80004f4c:	016687b3          	add	a5,a3,s6
80004f50:	fff7c783          	lbu	a5,-1(a5)
80004f54:	00150513          	addi	a0,a0,1
80004f58:	00160613          	addi	a2,a2,1
80004f5c:	fff68693          	addi	a3,a3,-1
80004f60:	fee784e3          	beq	a5,a4,80004f48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbfc>
80004f64:	01668533          	add	a0,a3,s6
80004f68:	00054583          	lbu	a1,0(a0)
80004f6c:	00158593          	addi	a1,a1,1
80004f70:	40cb06b3          	sub	a3,s6,a2
80004f74:	00b50023          	sb	a1,0(a0)
80004f78:	0b66f663          	bgeu	a3,s6,80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f7c:	00150513          	addi	a0,a0,1
80004f80:	03000593          	li	a1,48
80004f84:	00006097          	auipc	ra,0x6
80004f88:	048080e7          	jalr	72(ra) # 8000afcc <memset>
80004f8c:	0980006f          	j	80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f90:	00153713          	seqz	a4,a0
80004f94:	fff70713          	addi	a4,a4,-1
80004f98:	f80716e3          	bnez	a4,80004f24 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbd8>
80004f9c:	06058863          	beqz	a1,8000500c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcc0>
80004fa0:	00000b13          	li	s6,0
80004fa4:	0840006f          	j	80005028 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004fa8:	1d69e263          	bltu	s3,s6,8000516c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe20>
80004fac:	06bb0e63          	beq	s6,a1,80005028 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004fb0:	00bd8533          	add	a0,s11,a1
80004fb4:	40bb0633          	sub	a2,s6,a1
80004fb8:	03000593          	li	a1,48
80004fbc:	00006097          	auipc	ra,0x6
80004fc0:	010080e7          	jalr	16(ra) # 8000afcc <memset>
80004fc4:	0640006f          	j	80005028 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004fc8:	03100493          	li	s1,49
80004fcc:	02059463          	bnez	a1,80004ff4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xca8>
80004fd0:	03100513          	li	a0,49
80004fd4:	fffb0613          	addi	a2,s6,-1
80004fd8:	00ad8023          	sb	a0,0(s11)
80004fdc:	08060c63          	beqz	a2,80005074 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd28>
80004fe0:	001d8513          	addi	a0,s11,1
80004fe4:	03000593          	li	a1,48
80004fe8:	03000493          	li	s1,48
80004fec:	00006097          	auipc	ra,0x6
80004ff0:	fe0080e7          	jalr	-32(ra) # 8000afcc <memset>
80004ff4:	001c8c93          	addi	s9,s9,1
80004ff8:	034c4663          	blt	s8,s4,80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004ffc:	033b7463          	bgeu	s6,s3,80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80005000:	00990023          	sb	s1,0(s2)
80005004:	001b0b13          	addi	s6,s6,1
80005008:	01c0006f          	j	80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
8000500c:	fffb0513          	addi	a0,s6,-1
80005010:	21357663          	bgeu	a0,s3,8000521c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xed0>
80005014:	00ad8533          	add	a0,s11,a0
80005018:	00054503          	lbu	a0,0(a0)
8000501c:	00157513          	andi	a0,a0,1
80005020:	f00518e3          	bnez	a0,80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbe4>
80005024:	1169ea63          	bltu	s3,s6,80005138 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdec>
80005028:	c8842503          	lw	a0,-888(s0)
8000502c:	01b52023          	sw	s11,0(a0)
80005030:	01652223          	sw	s6,4(a0)
80005034:	01951423          	sh	s9,8(a0)
80005038:	38c12083          	lw	ra,908(sp)
8000503c:	38812403          	lw	s0,904(sp)
80005040:	38412483          	lw	s1,900(sp)
80005044:	38012903          	lw	s2,896(sp)
80005048:	37c12983          	lw	s3,892(sp)
8000504c:	37812a03          	lw	s4,888(sp)
80005050:	37412a83          	lw	s5,884(sp)
80005054:	37012b03          	lw	s6,880(sp)
80005058:	36c12b83          	lw	s7,876(sp)
8000505c:	36812c03          	lw	s8,872(sp)
80005060:	36412c83          	lw	s9,868(sp)
80005064:	36012d03          	lw	s10,864(sp)
80005068:	35c12d83          	lw	s11,860(sp)
8000506c:	39010113          	addi	sp,sp,912
80005070:	00008067          	ret
80005074:	03000493          	li	s1,48
80005078:	001c8c93          	addi	s9,s9,1
8000507c:	f94c50e3          	bge	s8,s4,80004ffc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcb0>
80005080:	fa5ff06f          	j	80005024 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80005084:	8000d637          	lui	a2,0x8000d
80005088:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000508c:	02800593          	li	a1,40
80005090:	00004097          	auipc	ra,0x4
80005094:	f10080e7          	jalr	-240(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80005098:	8000d637          	lui	a2,0x8000d
8000509c:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800050a0:	02800593          	li	a1,40
800050a4:	000b8513          	mv	a0,s7
800050a8:	00004097          	auipc	ra,0x4
800050ac:	ef8080e7          	jalr	-264(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800050b0:	8000d537          	lui	a0,0x8000d
800050b4:	88b50513          	addi	a0,a0,-1909 # 8000c88b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
800050b8:	8000d637          	lui	a2,0x8000d
800050bc:	a1460613          	addi	a2,a2,-1516 # 8000ca14 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.41>
800050c0:	01c00593          	li	a1,28
800050c4:	00002097          	auipc	ra,0x2
800050c8:	008080e7          	jalr	8(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800050cc:	8000d537          	lui	a0,0x8000d
800050d0:	8b850513          	addi	a0,a0,-1864 # 8000c8b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
800050d4:	8000d637          	lui	a2,0x8000d
800050d8:	a2460613          	addi	a2,a2,-1500 # 8000ca24 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.42>
800050dc:	01d00593          	li	a1,29
800050e0:	00002097          	auipc	ra,0x2
800050e4:	fec080e7          	jalr	-20(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800050e8:	8000d537          	lui	a0,0x8000d
800050ec:	8e850513          	addi	a0,a0,-1816 # 8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
800050f0:	8000d637          	lui	a2,0x8000d
800050f4:	a3460613          	addi	a2,a2,-1484 # 8000ca34 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.43>
800050f8:	01c00593          	li	a1,28
800050fc:	00002097          	auipc	ra,0x2
80005100:	fd0080e7          	jalr	-48(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005104:	8000d537          	lui	a0,0x8000d
80005108:	55b50513          	addi	a0,a0,1371 # 8000d55b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.418>
8000510c:	8000d637          	lui	a2,0x8000d
80005110:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005114:	01b00593          	li	a1,27
80005118:	00002097          	auipc	ra,0x2
8000511c:	fb4080e7          	jalr	-76(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005120:	8000d637          	lui	a2,0x8000d
80005124:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005128:	02800593          	li	a1,40
8000512c:	000a8513          	mv	a0,s5
80005130:	00004097          	auipc	ra,0x4
80005134:	e70080e7          	jalr	-400(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80005138:	8000d637          	lui	a2,0x8000d
8000513c:	a6460613          	addi	a2,a2,-1436 # 8000ca64 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46>
80005140:	000b0513          	mv	a0,s6
80005144:	00098593          	mv	a1,s3
80005148:	00004097          	auipc	ra,0x4
8000514c:	e58080e7          	jalr	-424(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80005150:	8000d537          	lui	a0,0x8000d
80005154:	52450513          	addi	a0,a0,1316 # 8000d524 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>
80005158:	8000d637          	lui	a2,0x8000d
8000515c:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005160:	01a00593          	li	a1,26
80005164:	00002097          	auipc	ra,0x2
80005168:	f68080e7          	jalr	-152(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000516c:	8000d637          	lui	a2,0x8000d
80005170:	a8460613          	addi	a2,a2,-1404 # 8000ca84 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.48>
80005174:	000b0513          	mv	a0,s6
80005178:	00098593          	mv	a1,s3
8000517c:	00004097          	auipc	ra,0x4
80005180:	e24080e7          	jalr	-476(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80005184:	8000d637          	lui	a2,0x8000d
80005188:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000518c:	02800593          	li	a1,40
80005190:	00068513          	mv	a0,a3
80005194:	00004097          	auipc	ra,0x4
80005198:	e0c080e7          	jalr	-500(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
8000519c:	8000d637          	lui	a2,0x8000d
800051a0:	a5460613          	addi	a2,a2,-1452 # 8000ca54 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.45>
800051a4:	000b0513          	mv	a0,s6
800051a8:	00098593          	mv	a1,s3
800051ac:	00004097          	auipc	ra,0x4
800051b0:	df4080e7          	jalr	-524(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800051b4:	8000d537          	lui	a0,0x8000d
800051b8:	9cc50513          	addi	a0,a0,-1588 # 8000c9cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
800051bc:	8000d637          	lui	a2,0x8000d
800051c0:	aa460613          	addi	a2,a2,-1372 # 8000caa4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.50>
800051c4:	03600593          	li	a1,54
800051c8:	00002097          	auipc	ra,0x2
800051cc:	f04080e7          	jalr	-252(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800051d0:	8000d537          	lui	a0,0x8000d
800051d4:	98450513          	addi	a0,a0,-1660 # 8000c984 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
800051d8:	8000d637          	lui	a2,0x8000d
800051dc:	a9460613          	addi	a2,a2,-1388 # 8000ca94 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.49>
800051e0:	03700593          	li	a1,55
800051e4:	00002097          	auipc	ra,0x2
800051e8:	ee8080e7          	jalr	-280(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800051ec:	8000d637          	lui	a2,0x8000d
800051f0:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800051f4:	02800513          	li	a0,40
800051f8:	02800593          	li	a1,40
800051fc:	00002097          	auipc	ra,0x2
80005200:	f18080e7          	jalr	-232(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80005204:	8000d637          	lui	a2,0x8000d
80005208:	a7460613          	addi	a2,a2,-1420 # 8000ca74 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.47>
8000520c:	00098513          	mv	a0,s3
80005210:	00098593          	mv	a1,s3
80005214:	00002097          	auipc	ra,0x2
80005218:	f00080e7          	jalr	-256(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000521c:	8000d637          	lui	a2,0x8000d
80005220:	a4460613          	addi	a2,a2,-1468 # 8000ca44 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.44>
80005224:	00098593          	mv	a1,s3
80005228:	00002097          	auipc	ra,0x2
8000522c:	eec080e7          	jalr	-276(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80005230 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE>:
80005230:	f4010113          	addi	sp,sp,-192
80005234:	0a112e23          	sw	ra,188(sp)
80005238:	0a812c23          	sw	s0,184(sp)
8000523c:	0a912a23          	sw	s1,180(sp)
80005240:	0b212823          	sw	s2,176(sp)
80005244:	0b312623          	sw	s3,172(sp)
80005248:	0b412423          	sw	s4,168(sp)
8000524c:	0b512223          	sw	s5,164(sp)
80005250:	0b612023          	sw	s6,160(sp)
80005254:	09712e23          	sw	s7,156(sp)
80005258:	09812c23          	sw	s8,152(sp)
8000525c:	09912a23          	sw	s9,148(sp)
80005260:	09a12823          	sw	s10,144(sp)
80005264:	09b12623          	sw	s11,140(sp)
80005268:	0c010413          	addi	s0,sp,192
8000526c:	0045a703          	lw	a4,4(a1)
80005270:	0005a783          	lw	a5,0(a1)
80005274:	00e7e833          	or	a6,a5,a4
80005278:	f8d42823          	sw	a3,-112(s0)
8000527c:	660808e3          	beqz	a6,800060ec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xebc>
80005280:	00050e93          	mv	t4,a0
80005284:	00c5a683          	lw	a3,12(a1)
80005288:	0085ae03          	lw	t3,8(a1)
8000528c:	00de6533          	or	a0,t3,a3
80005290:	66050ce3          	beqz	a0,80006108 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xed8>
80005294:	0145a883          	lw	a7,20(a1)
80005298:	0105a503          	lw	a0,16(a1)
8000529c:	01156833          	or	a6,a0,a7
800052a0:	680802e3          	beqz	a6,80006124 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xef4>
800052a4:	00a78833          	add	a6,a5,a0
800052a8:	00f832b3          	sltu	t0,a6,a5
800052ac:	011708b3          	add	a7,a4,a7
800052b0:	00588333          	add	t1,a7,t0
800052b4:	00e30463          	beq	t1,a4,800052bc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8c>
800052b8:	00e332b3          	sltu	t0,t1,a4
800052bc:	700294e3          	bnez	t0,800061c4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf94>
800052c0:	00d70663          	beq	a4,a3,800052cc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9c>
800052c4:	00d732b3          	sltu	t0,a4,a3
800052c8:	0080006f          	j	800052d0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa0>
800052cc:	01c7b2b3          	sltu	t0,a5,t3
800052d0:	700298e3          	bnez	t0,800061e0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xfb0>
800052d4:	01000293          	li	t0,16
800052d8:	f9042303          	lw	t1,-112(s0)
800052dc:	6662f2e3          	bgeu	t0,t1,80006140 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf10>
800052e0:	00a83533          	sltu	a0,a6,a0
800052e4:	00a888b3          	add	a7,a7,a0
800052e8:	01d8d513          	srli	a0,a7,0x1d
800052ec:	660518e3          	bnez	a0,8000615c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf2c>
800052f0:	0185d503          	lhu	a0,24(a1)
800052f4:	0018b393          	seqz	t2,a7
800052f8:	407005b3          	neg	a1,t2
800052fc:	fe05f593          	andi	a1,a1,-32
80005300:	00b505b3          	add	a1,a0,a1
80005304:	00539393          	slli	t2,t2,0x5
80005308:	fe038313          	addi	t1,t2,-32
8000530c:	007812b3          	sll	t0,a6,t2
80005310:	f6c42a23          	sw	a2,-140(s0)
80005314:	00034663          	bltz	t1,80005320 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf0>
80005318:	00028813          	mv	a6,t0
8000531c:	0080006f          	j	80005324 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf4>
80005320:	00789833          	sll	a6,a7,t2
80005324:	41f35893          	srai	a7,t1,0x1f
80005328:	0058f8b3          	and	a7,a7,t0
8000532c:	01085293          	srli	t0,a6,0x10
80005330:	0012b293          	seqz	t0,t0
80005334:	40500333          	neg	t1,t0
80005338:	ff037313          	andi	t1,t1,-16
8000533c:	006585b3          	add	a1,a1,t1
80005340:	00429293          	slli	t0,t0,0x4
80005344:	00581833          	sll	a6,a6,t0
80005348:	01f2c313          	xori	t1,t0,31
8000534c:	0018d393          	srli	t2,a7,0x1
80005350:	0063d333          	srl	t1,t2,t1
80005354:	00686333          	or	t1,a6,t1
80005358:	005898b3          	sll	a7,a7,t0
8000535c:	01885813          	srli	a6,a6,0x18
80005360:	00183813          	seqz	a6,a6
80005364:	410002b3          	neg	t0,a6
80005368:	ff82f293          	andi	t0,t0,-8
8000536c:	005585b3          	add	a1,a1,t0
80005370:	00381813          	slli	a6,a6,0x3
80005374:	010312b3          	sll	t0,t1,a6
80005378:	01f84313          	xori	t1,a6,31
8000537c:	0018d393          	srli	t2,a7,0x1
80005380:	0063d333          	srl	t1,t2,t1
80005384:	0062e333          	or	t1,t0,t1
80005388:	01089833          	sll	a6,a7,a6
8000538c:	01c2d893          	srli	a7,t0,0x1c
80005390:	0018b893          	seqz	a7,a7
80005394:	411002b3          	neg	t0,a7
80005398:	ffc2f293          	andi	t0,t0,-4
8000539c:	005585b3          	add	a1,a1,t0
800053a0:	00289893          	slli	a7,a7,0x2
800053a4:	011312b3          	sll	t0,t1,a7
800053a8:	01f8c313          	xori	t1,a7,31
800053ac:	00185393          	srli	t2,a6,0x1
800053b0:	0063d333          	srl	t1,t2,t1
800053b4:	0062e333          	or	t1,t0,t1
800053b8:	011814b3          	sll	s1,a6,a7
800053bc:	01e2d813          	srli	a6,t0,0x1e
800053c0:	00183a93          	seqz	s5,a6
800053c4:	41500833          	neg	a6,s5
800053c8:	ffe87813          	andi	a6,a6,-2
800053cc:	010585b3          	add	a1,a1,a6
800053d0:	001a9a93          	slli	s5,s5,0x1
800053d4:	01531833          	sll	a6,t1,s5
800053d8:	01fac893          	xori	a7,s5,31
800053dc:	0014d293          	srli	t0,s1,0x1
800053e0:	0112d8b3          	srl	a7,t0,a7
800053e4:	01186933          	or	s2,a6,a7
800053e8:	00092b13          	slti	s6,s2,0
800053ec:	001b4a13          	xori	s4,s6,1
800053f0:	414589b3          	sub	s3,a1,s4
800053f4:	01c7b5b3          	sltu	a1,a5,t3
800053f8:	40d706b3          	sub	a3,a4,a3
800053fc:	40b688b3          	sub	a7,a3,a1
80005400:	41c782b3          	sub	t0,a5,t3
80005404:	f8542c23          	sw	t0,-104(s0)
80005408:	f9142e23          	sw	a7,-100(s0)
8000540c:	413505b3          	sub	a1,a0,s3
80005410:	01059593          	slli	a1,a1,0x10
80005414:	faa41023          	sh	a0,-96(s0)
80005418:	5605c0e3          	bltz	a1,80006178 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf48>
8000541c:	4105d313          	srai	t1,a1,0x10
80005420:	03f37593          	andi	a1,t1,63
80005424:	fe058693          	addi	a3,a1,-32
80005428:	fff5c613          	not	a2,a1
8000542c:	0206c663          	bltz	a3,80005458 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x228>
80005430:	00b29c33          	sll	s8,t0,a1
80005434:	006293b3          	sll	t2,t0,t1
80005438:	41f6d813          	srai	a6,a3,0x1f
8000543c:	00787f33          	and	t5,a6,t2
80005440:	0206dc63          	bgez	a3,80005478 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x248>
80005444:	001c1393          	slli	t2,s8,0x1
80005448:	00c393b3          	sll	t2,t2,a2
8000544c:	006f5e33          	srl	t3,t5,t1
80005450:	007e63b3          	or	t2,t3,t2
80005454:	0280006f          	j	8000547c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x24c>
80005458:	00689833          	sll	a6,a7,t1
8000545c:	0012d393          	srli	t2,t0,0x1
80005460:	00c3d3b3          	srl	t2,t2,a2
80005464:	00786c33          	or	s8,a6,t2
80005468:	006293b3          	sll	t2,t0,t1
8000546c:	41f6d813          	srai	a6,a3,0x1f
80005470:	00787f33          	and	t5,a6,t2
80005474:	fc06c8e3          	bltz	a3,80005444 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x214>
80005478:	00bc53b3          	srl	t2,s8,a1
8000547c:	006c5333          	srl	t1,s8,t1
80005480:	00687333          	and	t1,a6,t1
80005484:	fa642623          	sw	t1,-84(s0)
80005488:	0053c2b3          	xor	t0,t2,t0
8000548c:	011348b3          	xor	a7,t1,a7
80005490:	0112e8b3          	or	a7,t0,a7
80005494:	fa742423          	sw	t2,-88(s0)
80005498:	42089ee3          	bnez	a7,800060d4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xea4>
8000549c:	f8e42e23          	sw	a4,-100(s0)
800054a0:	f8f42c23          	sw	a5,-104(s0)
800054a4:	faa41023          	sh	a0,-96(s0)
800054a8:	00b79533          	sll	a0,a5,a1
800054ac:	0206c463          	bltz	a3,800054d4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2a4>
800054b0:	00050d13          	mv	s10,a0
800054b4:	00a87bb3          	and	s7,a6,a0
800054b8:	00b55533          	srl	a0,a0,a1
800054bc:	0206da63          	bgez	a3,800054f0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2c0>
800054c0:	001d1693          	slli	a3,s10,0x1
800054c4:	00c69633          	sll	a2,a3,a2
800054c8:	00bbd5b3          	srl	a1,s7,a1
800054cc:	00c5e5b3          	or	a1,a1,a2
800054d0:	0240006f          	j	800054f4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2c4>
800054d4:	0017d893          	srli	a7,a5,0x1
800054d8:	00c8d8b3          	srl	a7,a7,a2
800054dc:	00b712b3          	sll	t0,a4,a1
800054e0:	0112ed33          	or	s10,t0,a7
800054e4:	00a87bb3          	and	s7,a6,a0
800054e8:	00bd5533          	srl	a0,s10,a1
800054ec:	fc06cae3          	bltz	a3,800054c0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x290>
800054f0:	00050593          	mv	a1,a0
800054f4:	00a87533          	and	a0,a6,a0
800054f8:	faa42623          	sw	a0,-84(s0)
800054fc:	00f5c7b3          	xor	a5,a1,a5
80005500:	00e54533          	xor	a0,a0,a4
80005504:	00a7e533          	or	a0,a5,a0
80005508:	fab42423          	sw	a1,-88(s0)
8000550c:	3c0514e3          	bnez	a0,800060d4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xea4>
80005510:	f9e42a23          	sw	t5,-108(s0)
80005514:	f9742623          	sw	s7,-116(s0)
80005518:	f5d42e23          	sw	t4,-164(s0)
8000551c:	fa000513          	li	a0,-96
80005520:	41350533          	sub	a0,a0,s3
80005524:	01051513          	slli	a0,a0,0x10
80005528:	41055513          	srai	a0,a0,0x10
8000552c:	43f50513          	addi	a0,a0,1087
80005530:	05000593          	li	a1,80
80005534:	00005097          	auipc	ra,0x5
80005538:	b3c080e7          	jalr	-1220(ra) # 8000a070 <__mulsi3>
8000553c:	000015b7          	lui	a1,0x1
80005540:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start1+0x3f>
80005544:	00006097          	auipc	ra,0x6
80005548:	b60080e7          	jalr	-1184(ra) # 8000b0a4 <__divsi3>
8000554c:	05100593          	li	a1,81
80005550:	4ab576e3          	bgeu	a0,a1,800061fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xfcc>
80005554:	015495b3          	sll	a1,s1,s5
80005558:	01eb0b13          	addi	s6,s6,30
8000555c:	0015d613          	srli	a2,a1,0x1
80005560:	01665633          	srl	a2,a2,s6
80005564:	00451513          	slli	a0,a0,0x4
80005568:	8000d6b7          	lui	a3,0x8000d
8000556c:	ab868693          	addi	a3,a3,-1352 # 8000cab8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>
80005570:	00a68533          	add	a0,a3,a0
80005574:	00052a83          	lw	s5,0(a0)
80005578:	00452483          	lw	s1,4(a0)
8000557c:	00851c83          	lh	s9,8(a0)
80005580:	00a55503          	lhu	a0,10(a0)
80005584:	f8a42423          	sw	a0,-120(s0)
80005588:	01491533          	sll	a0,s2,s4
8000558c:	00c56933          	or	s2,a0,a2
80005590:	01459b33          	sll	s6,a1,s4
80005594:	00048513          	mv	a0,s1
80005598:	00000593          	li	a1,0
8000559c:	00090613          	mv	a2,s2
800055a0:	00000693          	li	a3,0
800055a4:	00005097          	auipc	ra,0x5
800055a8:	b14080e7          	jalr	-1260(ra) # 8000a0b8 <__muldi3>
800055ac:	00050d93          	mv	s11,a0
800055b0:	f8b42223          	sw	a1,-124(s0)
800055b4:	00048513          	mv	a0,s1
800055b8:	00000593          	li	a1,0
800055bc:	000b0613          	mv	a2,s6
800055c0:	00000693          	li	a3,0
800055c4:	00005097          	auipc	ra,0x5
800055c8:	af4080e7          	jalr	-1292(ra) # 8000a0b8 <__muldi3>
800055cc:	00050a13          	mv	s4,a0
800055d0:	f8b42023          	sw	a1,-128(s0)
800055d4:	000a8513          	mv	a0,s5
800055d8:	00000593          	li	a1,0
800055dc:	00090613          	mv	a2,s2
800055e0:	00000693          	li	a3,0
800055e4:	00005097          	auipc	ra,0x5
800055e8:	ad4080e7          	jalr	-1324(ra) # 8000a0b8 <__muldi3>
800055ec:	00050913          	mv	s2,a0
800055f0:	f6b42e23          	sw	a1,-132(s0)
800055f4:	000a8513          	mv	a0,s5
800055f8:	00000593          	li	a1,0
800055fc:	000b0613          	mv	a2,s6
80005600:	00000693          	li	a3,0
80005604:	00005097          	auipc	ra,0x5
80005608:	ab4080e7          	jalr	-1356(ra) # 8000a0b8 <__muldi3>
8000560c:	00b905b3          	add	a1,s2,a1
80005610:	0125b533          	sltu	a0,a1,s2
80005614:	01458a33          	add	s4,a1,s4
80005618:	00ba35b3          	sltu	a1,s4,a1
8000561c:	00b50533          	add	a0,a0,a1
80005620:	800005b7          	lui	a1,0x80000
80005624:	00ba05b3          	add	a1,s4,a1
80005628:	80000bb7          	lui	s7,0x80000
8000562c:	0145b5b3          	sltu	a1,a1,s4
80005630:	00b50533          	add	a0,a0,a1
80005634:	f6a42223          	sw	a0,-156(s0)
80005638:	41300533          	neg	a0,s3
8000563c:	419509b3          	sub	s3,a0,s9
80005640:	00048513          	mv	a0,s1
80005644:	00000593          	li	a1,0
80005648:	000c0613          	mv	a2,s8
8000564c:	00000693          	li	a3,0
80005650:	00005097          	auipc	ra,0x5
80005654:	a68080e7          	jalr	-1432(ra) # 8000a0b8 <__muldi3>
80005658:	f6a42c23          	sw	a0,-136(s0)
8000565c:	f6b42823          	sw	a1,-144(s0)
80005660:	00048513          	mv	a0,s1
80005664:	00000593          	li	a1,0
80005668:	f9442b03          	lw	s6,-108(s0)
8000566c:	000b0613          	mv	a2,s6
80005670:	00000693          	li	a3,0
80005674:	00005097          	auipc	ra,0x5
80005678:	a44080e7          	jalr	-1468(ra) # 8000a0b8 <__muldi3>
8000567c:	00050913          	mv	s2,a0
80005680:	f6b42623          	sw	a1,-148(s0)
80005684:	000a8513          	mv	a0,s5
80005688:	00000593          	li	a1,0
8000568c:	000c0613          	mv	a2,s8
80005690:	00000693          	li	a3,0
80005694:	00005097          	auipc	ra,0x5
80005698:	a24080e7          	jalr	-1500(ra) # 8000a0b8 <__muldi3>
8000569c:	00050a13          	mv	s4,a0
800056a0:	f6b42423          	sw	a1,-152(s0)
800056a4:	000a8513          	mv	a0,s5
800056a8:	00000593          	li	a1,0
800056ac:	000b0613          	mv	a2,s6
800056b0:	00000693          	li	a3,0
800056b4:	00005097          	auipc	ra,0x5
800056b8:	a04080e7          	jalr	-1532(ra) # 8000a0b8 <__muldi3>
800056bc:	00ba05b3          	add	a1,s4,a1
800056c0:	0145b533          	sltu	a0,a1,s4
800056c4:	01258933          	add	s2,a1,s2
800056c8:	00b935b3          	sltu	a1,s2,a1
800056cc:	00b50533          	add	a0,a0,a1
800056d0:	f6a42023          	sw	a0,-160(s0)
800056d4:	01790533          	add	a0,s2,s7
800056d8:	01253c33          	sltu	s8,a0,s2
800056dc:	00048513          	mv	a0,s1
800056e0:	00000593          	li	a1,0
800056e4:	000d0613          	mv	a2,s10
800056e8:	00000693          	li	a3,0
800056ec:	00005097          	auipc	ra,0x5
800056f0:	9cc080e7          	jalr	-1588(ra) # 8000a0b8 <__muldi3>
800056f4:	00050913          	mv	s2,a0
800056f8:	00058a13          	mv	s4,a1
800056fc:	00048513          	mv	a0,s1
80005700:	00000593          	li	a1,0
80005704:	f8c42b83          	lw	s7,-116(s0)
80005708:	000b8613          	mv	a2,s7
8000570c:	00000693          	li	a3,0
80005710:	00005097          	auipc	ra,0x5
80005714:	9a8080e7          	jalr	-1624(ra) # 8000a0b8 <__muldi3>
80005718:	00050493          	mv	s1,a0
8000571c:	00058b13          	mv	s6,a1
80005720:	000a8513          	mv	a0,s5
80005724:	00000593          	li	a1,0
80005728:	000d0613          	mv	a2,s10
8000572c:	00000693          	li	a3,0
80005730:	00005097          	auipc	ra,0x5
80005734:	988080e7          	jalr	-1656(ra) # 8000a0b8 <__muldi3>
80005738:	00050c93          	mv	s9,a0
8000573c:	00058d13          	mv	s10,a1
80005740:	000a8513          	mv	a0,s5
80005744:	00000593          	li	a1,0
80005748:	000b8613          	mv	a2,s7
8000574c:	00000693          	li	a3,0
80005750:	00005097          	auipc	ra,0x5
80005754:	968080e7          	jalr	-1688(ra) # 8000a0b8 <__muldi3>
80005758:	00bc85b3          	add	a1,s9,a1
8000575c:	0195b533          	sltu	a0,a1,s9
80005760:	009584b3          	add	s1,a1,s1
80005764:	00b4b5b3          	sltu	a1,s1,a1
80005768:	00b50533          	add	a0,a0,a1
8000576c:	80000bb7          	lui	s7,0x80000
80005770:	01748bb3          	add	s7,s1,s7
80005774:	009bb5b3          	sltu	a1,s7,s1
80005778:	00b505b3          	add	a1,a0,a1
8000577c:	012d0933          	add	s2,s10,s2
80005780:	01a93633          	sltu	a2,s2,s10
80005784:	00ca0633          	add	a2,s4,a2
80005788:	01690b33          	add	s6,s2,s6
8000578c:	012b3533          	sltu	a0,s6,s2
80005790:	00bb02b3          	add	t0,s6,a1
80005794:	f7c42583          	lw	a1,-132(s0)
80005798:	00bd85b3          	add	a1,s11,a1
8000579c:	01b5b6b3          	sltu	a3,a1,s11
800057a0:	f8442703          	lw	a4,-124(s0)
800057a4:	00d706b3          	add	a3,a4,a3
800057a8:	f8042703          	lw	a4,-128(s0)
800057ac:	00e58733          	add	a4,a1,a4
800057b0:	00b735b3          	sltu	a1,a4,a1
800057b4:	00b685b3          	add	a1,a3,a1
800057b8:	f6442683          	lw	a3,-156(s0)
800057bc:	00d706b3          	add	a3,a4,a3
800057c0:	00e6b733          	sltu	a4,a3,a4
800057c4:	00e585b3          	add	a1,a1,a4
800057c8:	00168313          	addi	t1,a3,1
800057cc:	00133693          	seqz	a3,t1
800057d0:	00d583b3          	add	t2,a1,a3
800057d4:	03f9f793          	andi	a5,s3,63
800057d8:	fe078593          	addi	a1,a5,-32
800057dc:	fff7ce13          	not	t3,a5
800057e0:	f8b42a23          	sw	a1,-108(s0)
800057e4:	0005c663          	bltz	a1,800057f0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x5c0>
800057e8:	00f3dbb3          	srl	s7,t2,a5
800057ec:	0140006f          	j	80005800 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x5d0>
800057f0:	00139593          	slli	a1,t2,0x1
800057f4:	01c595b3          	sll	a1,a1,t3
800057f8:	013356b3          	srl	a3,t1,s3
800057fc:	00b6ebb3          	or	s7,a3,a1
80005800:	00a60633          	add	a2,a2,a0
80005804:	0162b6b3          	sltu	a3,t0,s6
80005808:	f6042583          	lw	a1,-160(s0)
8000580c:	018585b3          	add	a1,a1,s8
80005810:	f9442503          	lw	a0,-108(s0)
80005814:	00052513          	slti	a0,a0,0
80005818:	00100713          	li	a4,1
8000581c:	f8f42623          	sw	a5,-116(s0)
80005820:	00f717b3          	sll	a5,a4,a5
80005824:	fff50813          	addi	a6,a0,-1
80005828:	00f87833          	and	a6,a6,a5
8000582c:	40a00533          	neg	a0,a0
80005830:	01371733          	sll	a4,a4,s3
80005834:	00e578b3          	and	a7,a0,a4
80005838:	0018b513          	seqz	a0,a7
8000583c:	40a80533          	sub	a0,a6,a0
80005840:	f8a42223          	sw	a0,-124(s0)
80005844:	004bd513          	srli	a0,s7,0x4
80005848:	27100713          	li	a4,625
8000584c:	fff88793          	addi	a5,a7,-1
80005850:	f8f42023          	sw	a5,-128(s0)
80005854:	f5042823          	sw	a6,-176(s0)
80005858:	f5142a23          	sw	a7,-172(s0)
8000585c:	f4542c23          	sw	t0,-168(s0)
80005860:	f7c42e23          	sw	t3,-132(s0)
80005864:	02e57263          	bgeu	a0,a4,80005888 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x658>
80005868:	06400513          	li	a0,100
8000586c:	04abf463          	bgeu	s7,a0,800058b4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x684>
80005870:	00a00513          	li	a0,10
80005874:	00abb713          	sltiu	a4,s7,10
80005878:	00abf463          	bgeu	s7,a0,80005880 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x650>
8000587c:	00100513          	li	a0,1
80005880:	00174713          	xori	a4,a4,1
80005884:	08c0006f          	j	80005910 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
80005888:	000f4537          	lui	a0,0xf4
8000588c:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2e92>
80005890:	02abfe63          	bgeu	s7,a0,800058cc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x69c>
80005894:	00018537          	lui	a0,0x18
80005898:	6a050513          	addi	a0,a0,1696 # 186a0 <.Lline_table_start2+0x172f2>
8000589c:	00abb733          	sltu	a4,s7,a0
800058a0:	00abf663          	bgeu	s7,a0,800058ac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x67c>
800058a4:	00002537          	lui	a0,0x2
800058a8:	71050513          	addi	a0,a0,1808 # 2710 <.Lline_table_start2+0x1362>
800058ac:	00574713          	xori	a4,a4,5
800058b0:	0600006f          	j	80005910 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
800058b4:	3e800793          	li	a5,1000
800058b8:	3e8bb713          	sltiu	a4,s7,1000
800058bc:	00fbe463          	bltu	s7,a5,800058c4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x694>
800058c0:	3e800513          	li	a0,1000
800058c4:	00374713          	xori	a4,a4,3
800058c8:	0480006f          	j	80005910 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
800058cc:	05f5e537          	lui	a0,0x5f5e
800058d0:	10050513          	addi	a0,a0,256 # 5f5e100 <.Lline_table_start2+0x5f5cd52>
800058d4:	02abf263          	bgeu	s7,a0,800058f8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6c8>
800058d8:	00989537          	lui	a0,0x989
800058dc:	68050513          	addi	a0,a0,1664 # 989680 <.Lline_table_start2+0x9882d2>
800058e0:	00abb733          	sltu	a4,s7,a0
800058e4:	00abf663          	bgeu	s7,a0,800058f0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6c0>
800058e8:	000f4537          	lui	a0,0xf4
800058ec:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2e92>
800058f0:	00774713          	xori	a4,a4,7
800058f4:	01c0006f          	j	80005910 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
800058f8:	3b9ad737          	lui	a4,0x3b9ad
800058fc:	a0070793          	addi	a5,a4,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
80005900:	00fbb733          	sltu	a4,s7,a5
80005904:	00fbe463          	bltu	s7,a5,8000590c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6dc>
80005908:	00078513          	mv	a0,a5
8000590c:	00974713          	xori	a4,a4,9
80005910:	00d60633          	add	a2,a2,a3
80005914:	f6c42223          	sw	a2,-156(s0)
80005918:	f8442783          	lw	a5,-124(s0)
8000591c:	00f3fcb3          	and	s9,t2,a5
80005920:	f8042803          	lw	a6,-128(s0)
80005924:	01037d33          	and	s10,t1,a6
80005928:	f8842603          	lw	a2,-120(s0)
8000592c:	00070a13          	mv	s4,a4
80005930:	40c70633          	sub	a2,a4,a2
80005934:	00160613          	addi	a2,a2,1
80005938:	f4c42223          	sw	a2,-188(s0)
8000593c:	f7842683          	lw	a3,-136(s0)
80005940:	f6842603          	lw	a2,-152(s0)
80005944:	00c68633          	add	a2,a3,a2
80005948:	00d636b3          	sltu	a3,a2,a3
8000594c:	f7042703          	lw	a4,-144(s0)
80005950:	00d706b3          	add	a3,a4,a3
80005954:	f6c42703          	lw	a4,-148(s0)
80005958:	00e60733          	add	a4,a2,a4
8000595c:	00c73633          	sltu	a2,a4,a2
80005960:	00c68633          	add	a2,a3,a2
80005964:	00b705b3          	add	a1,a4,a1
80005968:	00e5b6b3          	sltu	a3,a1,a4
8000596c:	00d60633          	add	a2,a2,a3
80005970:	00b336b3          	sltu	a3,t1,a1
80005974:	00d60633          	add	a2,a2,a3
80005978:	f6742423          	sw	t2,-152(s0)
8000597c:	40c38633          	sub	a2,t2,a2
80005980:	f6642623          	sw	t1,-148(s0)
80005984:	40b305b3          	sub	a1,t1,a1
80005988:	f4b42423          	sw	a1,-184(s0)
8000598c:	00158593          	addi	a1,a1,1 # 80000001 <_start+0x1>
80005990:	0015bc13          	seqz	s8,a1
80005994:	f4c42623          	sw	a2,-180(s0)
80005998:	01860633          	add	a2,a2,s8
8000599c:	00060a93          	mv	s5,a2
800059a0:	00f67633          	and	a2,a2,a5
800059a4:	f6c42023          	sw	a2,-160(s0)
800059a8:	f6b42c23          	sw	a1,-136(s0)
800059ac:	0105f5b3          	and	a1,a1,a6
800059b0:	f6b42823          	sw	a1,-144(s0)
800059b4:	fff00993          	li	s3,-1
800059b8:	f9442583          	lw	a1,-108(s0)
800059bc:	41f5d593          	srai	a1,a1,0x1f
800059c0:	f8b42423          	sw	a1,-120(s0)
800059c4:	f7442d83          	lw	s11,-140(s0)
800059c8:	fff00c13          	li	s8,-1
800059cc:	00050493          	mv	s1,a0
800059d0:	f9042b03          	lw	s6,-112(s0)
800059d4:	018b0b33          	add	s6,s6,s8
800059d8:	000b8513          	mv	a0,s7
800059dc:	00048593          	mv	a1,s1
800059e0:	00005097          	auipc	ra,0x5
800059e4:	250080e7          	jalr	592(ra) # 8000ac30 <__udivsi3>
800059e8:	00050913          	mv	s2,a0
800059ec:	00048593          	mv	a1,s1
800059f0:	00004097          	auipc	ra,0x4
800059f4:	680080e7          	jalr	1664(ra) # 8000a070 <__mulsi3>
800059f8:	793b0e63          	beq	s6,s3,80006194 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf64>
800059fc:	40ab8bb3          	sub	s7,s7,a0
80005a00:	03090613          	addi	a2,s2,48
80005a04:	00cd8023          	sb	a2,0(s11)
80005a08:	f8c42703          	lw	a4,-116(s0)
80005a0c:	00eb9533          	sll	a0,s7,a4
80005a10:	f9442583          	lw	a1,-108(s0)
80005a14:	0005c663          	bltz	a1,80005a20 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x7f0>
80005a18:	00050593          	mv	a1,a0
80005a1c:	0100006f          	j	80005a2c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x7fc>
80005a20:	001bd593          	srli	a1,s7,0x1
80005a24:	f7c42683          	lw	a3,-132(s0)
80005a28:	00d5d5b3          	srl	a1,a1,a3
80005a2c:	000a8913          	mv	s2,s5
80005a30:	f8842683          	lw	a3,-120(s0)
80005a34:	00a6f533          	and	a0,a3,a0
80005a38:	019585b3          	add	a1,a1,s9
80005a3c:	01a50333          	add	t1,a0,s10
80005a40:	00a333b3          	sltu	t2,t1,a0
80005a44:	007583b3          	add	t2,a1,t2
80005a48:	007a8863          	beq	s5,t2,80005a58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x828>
80005a4c:	0123b533          	sltu	a0,t2,s2
80005a50:	00050a63          	beqz	a0,80005a64 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x834>
80005a54:	0480006f          	j	80005a9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x86c>
80005a58:	f7842503          	lw	a0,-136(s0)
80005a5c:	00a33533          	sltu	a0,t1,a0
80005a60:	02051e63          	bnez	a0,80005a9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x86c>
80005a64:	018a0533          	add	a0,s4,s8
80005a68:	05350463          	beq	a0,s3,80005ab0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x880>
80005a6c:	00a00593          	li	a1,10
80005a70:	00048513          	mv	a0,s1
80005a74:	00005097          	auipc	ra,0x5
80005a78:	1bc080e7          	jalr	444(ra) # 8000ac30 <__udivsi3>
80005a7c:	fffc0c13          	addi	s8,s8,-1
80005a80:	001d8d93          	addi	s11,s11,1
80005a84:	00a00593          	li	a1,10
80005a88:	f4b4f2e3          	bgeu	s1,a1,800059cc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x79c>
80005a8c:	8000d537          	lui	a0,0x8000d
80005a90:	08050513          	addi	a0,a0,128 # 8000d080 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.59>
80005a94:	00004097          	auipc	ra,0x4
80005a98:	c94080e7          	jalr	-876(ra) # 80009728 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>
80005a9c:	00e49733          	sll	a4,s1,a4
80005aa0:	f9442503          	lw	a0,-108(s0)
80005aa4:	16054663          	bltz	a0,80005c10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9e0>
80005aa8:	00070593          	mv	a1,a4
80005aac:	1700006f          	j	80005c1c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9ec>
80005ab0:	00000d93          	li	s11,0
80005ab4:	41800b33          	neg	s6,s8
80005ab8:	00100493          	li	s1,1
80005abc:	f7442a83          	lw	s5,-140(s0)
80005ac0:	f7042703          	lw	a4,-144(s0)
80005ac4:	f6042a03          	lw	s4,-160(s0)
80005ac8:	0100006f          	j	80005ad8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8a8>
80005acc:	014cb533          	sltu	a0,s9,s4
80005ad0:	001b0b13          	addi	s6,s6,1
80005ad4:	0c051863          	bnez	a0,80005ba4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x974>
80005ad8:	f9042503          	lw	a0,-112(s0)
80005adc:	6cab7863          	bgeu	s6,a0,800061ac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf7c>
80005ae0:	00070993          	mv	s3,a4
80005ae4:	000d8b93          	mv	s7,s11
80005ae8:	00048c13          	mv	s8,s1
80005aec:	00a00613          	li	a2,10
80005af0:	000d0513          	mv	a0,s10
80005af4:	000c8593          	mv	a1,s9
80005af8:	00000693          	li	a3,0
80005afc:	00004097          	auipc	ra,0x4
80005b00:	5bc080e7          	jalr	1468(ra) # 8000a0b8 <__muldi3>
80005b04:	00050c93          	mv	s9,a0
80005b08:	00058913          	mv	s2,a1
80005b0c:	00a00613          	li	a2,10
80005b10:	00048513          	mv	a0,s1
80005b14:	000d8593          	mv	a1,s11
80005b18:	00000693          	li	a3,0
80005b1c:	00004097          	auipc	ra,0x4
80005b20:	59c080e7          	jalr	1436(ra) # 8000a0b8 <__muldi3>
80005b24:	00050493          	mv	s1,a0
80005b28:	00058d93          	mv	s11,a1
80005b2c:	00a00613          	li	a2,10
80005b30:	00098513          	mv	a0,s3
80005b34:	000a0593          	mv	a1,s4
80005b38:	00000693          	li	a3,0
80005b3c:	00004097          	auipc	ra,0x4
80005b40:	57c080e7          	jalr	1404(ra) # 8000a0b8 <__muldi3>
80005b44:	00050713          	mv	a4,a0
80005b48:	00058a13          	mv	s4,a1
80005b4c:	f9442503          	lw	a0,-108(s0)
80005b50:	00054863          	bltz	a0,80005b60 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x930>
80005b54:	f8c42503          	lw	a0,-116(s0)
80005b58:	00a95533          	srl	a0,s2,a0
80005b5c:	01c0006f          	j	80005b78 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x948>
80005b60:	f8c42503          	lw	a0,-116(s0)
80005b64:	00acd533          	srl	a0,s9,a0
80005b68:	00191593          	slli	a1,s2,0x1
80005b6c:	f7c42603          	lw	a2,-132(s0)
80005b70:	00c595b3          	sll	a1,a1,a2
80005b74:	00b56533          	or	a0,a0,a1
80005b78:	f8042583          	lw	a1,-128(s0)
80005b7c:	00bcfd33          	and	s10,s9,a1
80005b80:	f8442583          	lw	a1,-124(s0)
80005b84:	00b97cb3          	and	s9,s2,a1
80005b88:	03050993          	addi	s3,a0,48
80005b8c:	016a8533          	add	a0,s5,s6
80005b90:	01350023          	sb	s3,0(a0)
80005b94:	f39a1ce3          	bne	s4,s9,80005acc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x89c>
80005b98:	00ed3533          	sltu	a0,s10,a4
80005b9c:	001b0b13          	addi	s6,s6,1
80005ba0:	f2050ce3          	beqz	a0,80005ad8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8a8>
80005ba4:	f5842583          	lw	a1,-168(s0)
80005ba8:	f6c42603          	lw	a2,-148(s0)
80005bac:	00b63533          	sltu	a0,a2,a1
80005bb0:	f6842683          	lw	a3,-152(s0)
80005bb4:	f6442783          	lw	a5,-156(s0)
80005bb8:	40f686b3          	sub	a3,a3,a5
80005bbc:	40a686b3          	sub	a3,a3,a0
80005bc0:	40b60633          	sub	a2,a2,a1
80005bc4:	00048513          	mv	a0,s1
80005bc8:	000d8593          	mv	a1,s11
80005bcc:	f6e42823          	sw	a4,-144(s0)
80005bd0:	00004097          	auipc	ra,0x4
80005bd4:	4e8080e7          	jalr	1256(ra) # 8000a0b8 <__muldi3>
80005bd8:	f7042e03          	lw	t3,-144(s0)
80005bdc:	00950633          	add	a2,a0,s1
80005be0:	00a636b3          	sltu	a3,a2,a0
80005be4:	01ae3733          	sltu	a4,t3,s10
80005be8:	419a07b3          	sub	a5,s4,s9
80005bec:	40e787b3          	sub	a5,a5,a4
80005bf0:	01b58733          	add	a4,a1,s11
80005bf4:	f5042303          	lw	t1,-176(s0)
80005bf8:	0c678a63          	beq	a5,t1,80005ccc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa9c>
80005bfc:	0067b7b3          	sltu	a5,a5,t1
80005c00:	f5442383          	lw	t2,-172(s0)
80005c04:	00d706b3          	add	a3,a4,a3
80005c08:	0c078c63          	beqz	a5,80005ce0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xab0>
80005c0c:	0f00006f          	j	80005cfc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005c10:	0014d493          	srli	s1,s1,0x1
80005c14:	f7c42503          	lw	a0,-132(s0)
80005c18:	00a4d5b3          	srl	a1,s1,a0
80005c1c:	f5c42f83          	lw	t6,-164(s0)
80005c20:	f5842783          	lw	a5,-168(s0)
80005c24:	f6c42803          	lw	a6,-148(s0)
80005c28:	00f83533          	sltu	a0,a6,a5
80005c2c:	f6842683          	lw	a3,-152(s0)
80005c30:	f6442883          	lw	a7,-156(s0)
80005c34:	411686b3          	sub	a3,a3,a7
80005c38:	40a686b3          	sub	a3,a3,a0
80005c3c:	40f802b3          	sub	t0,a6,a5
80005c40:	00128513          	addi	a0,t0,1
80005c44:	0012b793          	seqz	a5,t0
80005c48:	40f688b3          	sub	a7,a3,a5
80005c4c:	fff28293          	addi	t0,t0,-1
80005c50:	00788663          	beq	a7,t2,80005c5c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa2c>
80005c54:	0113b833          	sltu	a6,t2,a7
80005c58:	0080006f          	j	80005c60 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa30>
80005c5c:	00533833          	sltu	a6,t1,t0
80005c60:	f8842783          	lw	a5,-120(s0)
80005c64:	00e7f7b3          	and	a5,a5,a4
80005c68:	00153f13          	seqz	t5,a0
80005c6c:	f7842e83          	lw	t4,-136(s0)
80005c70:	006eb733          	sltu	a4,t4,t1
80005c74:	40790e33          	sub	t3,s2,t2
80005c78:	40ee0733          	sub	a4,t3,a4
80005c7c:	406e8eb3          	sub	t4,t4,t1
80005c80:	00b70c63          	beq	a4,a1,80005c98 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa68>
80005c84:	00b73e33          	sltu	t3,a4,a1
80005c88:	f7442483          	lw	s1,-140(s0)
80005c8c:	01e686b3          	add	a3,a3,t5
80005c90:	00081c63          	bnez	a6,80005ca8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa78>
80005c94:	0200006f          	j	80005cb4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005c98:	00febe33          	sltu	t3,t4,a5
80005c9c:	f7442483          	lw	s1,-140(s0)
80005ca0:	01e686b3          	add	a3,a3,t5
80005ca4:	00080863          	beqz	a6,80005cb4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005ca8:	06b70663          	beq	a4,a1,80005d14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xae4>
80005cac:	00b73733          	sltu	a4,a4,a1
80005cb0:	08070063          	beqz	a4,80005d30 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005cb4:	00030713          	mv	a4,t1
80005cb8:	00038813          	mv	a6,t2
80005cbc:	12769263          	bne	a3,t2,80005de0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb0>
80005cc0:	00a73633          	sltu	a2,a4,a0
80005cc4:	12061263          	bnez	a2,80005de8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb8>
80005cc8:	2d40006f          	j	80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005ccc:	41ae07b3          	sub	a5,t3,s10
80005cd0:	f5442383          	lw	t2,-172(s0)
80005cd4:	0077b7b3          	sltu	a5,a5,t2
80005cd8:	00d706b3          	add	a3,a4,a3
80005cdc:	02079063          	bnez	a5,80005cfc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005ce0:	00953733          	sltu	a4,a0,s1
80005ce4:	41b585b3          	sub	a1,a1,s11
80005ce8:	40e585b3          	sub	a1,a1,a4
80005cec:	40950533          	sub	a0,a0,s1
80005cf0:	11958e63          	beq	a1,s9,80005e0c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbdc>
80005cf4:	00bcb733          	sltu	a4,s9,a1
80005cf8:	10071e63          	bnez	a4,80005e14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbe4>
80005cfc:	000d0493          	mv	s1,s10
80005d00:	000c8913          	mv	s2,s9
80005d04:	1d969a63          	bne	a3,s9,80005ed8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca8>
80005d08:	00c4b533          	sltu	a0,s1,a2
80005d0c:	1c051a63          	bnez	a0,80005ee0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcb0>
80005d10:	2f80006f          	j	80006008 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005d14:	00feb733          	sltu	a4,t4,a5
80005d18:	00070c63          	beqz	a4,80005d30 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005d1c:	f99ff06f          	j	80005cb4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005d20:	00b3beb3          	sltu	t4,t2,a1
80005d24:	00070313          	mv	t1,a4
80005d28:	00080393          	mv	t2,a6
80005d2c:	0a0e9863          	bnez	t4,80005ddc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005d30:	00f30733          	add	a4,t1,a5
80005d34:	00673833          	sltu	a6,a4,t1
80005d38:	00b38e33          	add	t3,t2,a1
80005d3c:	010e0833          	add	a6,t3,a6
80005d40:	01180863          	beq	a6,a7,80005d50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb20>
80005d44:	01183e33          	sltu	t3,a6,a7
80005d48:	000e0863          	beqz	t3,80005d58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb28>
80005d4c:	0380006f          	j	80005d84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb54>
80005d50:	00573e33          	sltu	t3,a4,t0
80005d54:	020e1863          	bnez	t3,80005d84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb54>
80005d58:	0062be33          	sltu	t3,t0,t1
80005d5c:	40788eb3          	sub	t4,a7,t2
80005d60:	41ce8e33          	sub	t3,t4,t3
80005d64:	00573eb3          	sltu	t4,a4,t0
80005d68:	41180f33          	sub	t5,a6,a7
80005d6c:	41df0eb3          	sub	t4,t5,t4
80005d70:	01de1663          	bne	t3,t4,80005d7c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb4c>
80005d74:	40628e33          	sub	t3,t0,t1
80005d78:	40570eb3          	sub	t4,a4,t0
80005d7c:	01de3e33          	sltu	t3,t3,t4
80005d80:	1e0e1263          	bnez	t3,80005f64 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd34>
80005d84:	fff60613          	addi	a2,a2,-1
80005d88:	00cd8023          	sb	a2,0(s11)
80005d8c:	01180663          	beq	a6,a7,80005d98 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb68>
80005d90:	01183333          	sltu	t1,a6,a7
80005d94:	0080006f          	j	80005d9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb6c>
80005d98:	00573333          	sltu	t1,a4,t0
80005d9c:	f7842e83          	lw	t4,-136(s0)
80005da0:	00eeb3b3          	sltu	t2,t4,a4
80005da4:	41090e33          	sub	t3,s2,a6
80005da8:	407e03b3          	sub	t2,t3,t2
80005dac:	40ee8eb3          	sub	t4,t4,a4
80005db0:	00b38863          	beq	t2,a1,80005dc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb90>
80005db4:	00b3be33          	sltu	t3,t2,a1
80005db8:	00031863          	bnez	t1,80005dc8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb98>
80005dbc:	0200006f          	j	80005ddc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005dc0:	00febe33          	sltu	t3,t4,a5
80005dc4:	00030c63          	beqz	t1,80005ddc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005dc8:	f4b39ce3          	bne	t2,a1,80005d20 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xaf0>
80005dcc:	00febeb3          	sltu	t4,t4,a5
80005dd0:	00070313          	mv	t1,a4
80005dd4:	00080393          	mv	t2,a6
80005dd8:	f40e8ce3          	beqz	t4,80005d30 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005ddc:	ef0682e3          	beq	a3,a6,80005cc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa90>
80005de0:	00d83633          	sltu	a2,a6,a3
80005de4:	1a060c63          	beqz	a2,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005de8:	1a0e1a63          	bnez	t3,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005dec:	00f707b3          	add	a5,a4,a5
80005df0:	00e7b633          	sltu	a2,a5,a4
80005df4:	00b805b3          	add	a1,a6,a1
80005df8:	00c585b3          	add	a1,a1,a2
80005dfc:	10d58463          	beq	a1,a3,80005f04 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcd4>
80005e00:	00d5b633          	sltu	a2,a1,a3
80005e04:	10060463          	beqz	a2,80005f0c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcdc>
80005e08:	1e80006f          	j	80005ff0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005e0c:	00ad3733          	sltu	a4,s10,a0
80005e10:	ee0706e3          	beqz	a4,80005cfc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005e14:	016a8733          	add	a4,s5,s6
80005e18:	0140006f          	j	80005e2c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbfc>
80005e1c:	0068b833          	sltu	a6,a7,t1
80005e20:	00048d13          	mv	s10,s1
80005e24:	00090c93          	mv	s9,s2
80005e28:	0a081663          	bnez	a6,80005ed4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005e2c:	007d04b3          	add	s1,s10,t2
80005e30:	01a4b933          	sltu	s2,s1,s10
80005e34:	006c87b3          	add	a5,s9,t1
80005e38:	01278933          	add	s2,a5,s2
80005e3c:	00b90863          	beq	s2,a1,80005e4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc1c>
80005e40:	00b937b3          	sltu	a5,s2,a1
80005e44:	00078863          	beqz	a5,80005e54 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc24>
80005e48:	0380006f          	j	80005e80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc50>
80005e4c:	00a4b7b3          	sltu	a5,s1,a0
80005e50:	02079863          	bnez	a5,80005e80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc50>
80005e54:	01a537b3          	sltu	a5,a0,s10
80005e58:	41958833          	sub	a6,a1,s9
80005e5c:	40f807b3          	sub	a5,a6,a5
80005e60:	00a4b833          	sltu	a6,s1,a0
80005e64:	40b908b3          	sub	a7,s2,a1
80005e68:	41088833          	sub	a6,a7,a6
80005e6c:	01079663          	bne	a5,a6,80005e78 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc48>
80005e70:	41a507b3          	sub	a5,a0,s10
80005e74:	40a48833          	sub	a6,s1,a0
80005e78:	0107b7b3          	sltu	a5,a5,a6
80005e7c:	0e079e63          	bnez	a5,80005f78 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd48>
80005e80:	fff98993          	addi	s3,s3,-1
80005e84:	ff370fa3          	sb	s3,-1(a4)
80005e88:	00b90663          	beq	s2,a1,80005e94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc64>
80005e8c:	00b93833          	sltu	a6,s2,a1
80005e90:	0080006f          	j	80005e98 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc68>
80005e94:	00a4b833          	sltu	a6,s1,a0
80005e98:	009e37b3          	sltu	a5,t3,s1
80005e9c:	412a08b3          	sub	a7,s4,s2
80005ea0:	40f888b3          	sub	a7,a7,a5
80005ea4:	409e02b3          	sub	t0,t3,s1
80005ea8:	00688863          	beq	a7,t1,80005eb8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc88>
80005eac:	0068b7b3          	sltu	a5,a7,t1
80005eb0:	00081863          	bnez	a6,80005ec0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc90>
80005eb4:	0200006f          	j	80005ed4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005eb8:	0072b7b3          	sltu	a5,t0,t2
80005ebc:	00080c63          	beqz	a6,80005ed4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005ec0:	f4689ee3          	bne	a7,t1,80005e1c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbec>
80005ec4:	0072b833          	sltu	a6,t0,t2
80005ec8:	00048d13          	mv	s10,s1
80005ecc:	00090c93          	mv	s9,s2
80005ed0:	f4080ee3          	beqz	a6,80005e2c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbfc>
80005ed4:	e3268ae3          	beq	a3,s2,80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xad8>
80005ed8:	00d93533          	sltu	a0,s2,a3
80005edc:	12050663          	beqz	a0,80006008 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005ee0:	12079463          	bnez	a5,80006008 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005ee4:	00748533          	add	a0,s1,t2
80005ee8:	009535b3          	sltu	a1,a0,s1
80005eec:	00690733          	add	a4,s2,t1
80005ef0:	00b705b3          	add	a1,a4,a1
80005ef4:	04d58063          	beq	a1,a3,80005f34 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd04>
80005ef8:	00d5b733          	sltu	a4,a1,a3
80005efc:	04070063          	beqz	a4,80005f3c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd0c>
80005f00:	1900006f          	j	80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f04:	00a7b633          	sltu	a2,a5,a0
80005f08:	0e061463          	bnez	a2,80005ff0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005f0c:	00e53633          	sltu	a2,a0,a4
80005f10:	410688b3          	sub	a7,a3,a6
80005f14:	40c88633          	sub	a2,a7,a2
80005f18:	00a7b8b3          	sltu	a7,a5,a0
80005f1c:	40d585b3          	sub	a1,a1,a3
80005f20:	411585b3          	sub	a1,a1,a7
80005f24:	06b60463          	beq	a2,a1,80005f8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd5c>
80005f28:	00b63533          	sltu	a0,a2,a1
80005f2c:	06051863          	bnez	a0,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005f30:	0c00006f          	j	80005ff0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005f34:	00c53733          	sltu	a4,a0,a2
80005f38:	14071c63          	bnez	a4,80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f3c:	00963733          	sltu	a4,a2,s1
80005f40:	412687b3          	sub	a5,a3,s2
80005f44:	40e78733          	sub	a4,a5,a4
80005f48:	00c537b3          	sltu	a5,a0,a2
80005f4c:	40d585b3          	sub	a1,a1,a3
80005f50:	40f585b3          	sub	a1,a1,a5
80005f54:	0ab70263          	beq	a4,a1,80005ff8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc8>
80005f58:	00b73533          	sltu	a0,a4,a1
80005f5c:	0a051663          	bnez	a0,80006008 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005f60:	1300006f          	j	80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f64:	00000e13          	li	t3,0
80005f68:	00030713          	mv	a4,t1
80005f6c:	00038813          	mv	a6,t2
80005f70:	e67698e3          	bne	a3,t2,80005de0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb0>
80005f74:	d4dff06f          	j	80005cc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa90>
80005f78:	00000793          	li	a5,0
80005f7c:	000d0493          	mv	s1,s10
80005f80:	000c8913          	mv	s2,s9
80005f84:	f5969ae3          	bne	a3,s9,80005ed8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca8>
80005f88:	d81ff06f          	j	80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xad8>
80005f8c:	40e505b3          	sub	a1,a0,a4
80005f90:	40a787b3          	sub	a5,a5,a0
80005f94:	00f5b533          	sltu	a0,a1,a5
80005f98:	04050c63          	beqz	a0,80005ff0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005f9c:	00273513          	sltiu	a0,a4,2
80005fa0:	00183593          	seqz	a1,a6
80005fa4:	00a5f533          	and	a0,a1,a0
80005fa8:	04051463          	bnez	a0,80005ff0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005fac:	f4842583          	lw	a1,-184(s0)
80005fb0:	ffd58513          	addi	a0,a1,-3
80005fb4:	00b535b3          	sltu	a1,a0,a1
80005fb8:	f4c42603          	lw	a2,-180(s0)
80005fbc:	00b605b3          	add	a1,a2,a1
80005fc0:	fff58593          	addi	a1,a1,-1
80005fc4:	02b80263          	beq	a6,a1,80005fe8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdb8>
80005fc8:	0105b533          	sltu	a0,a1,a6
80005fcc:	02051263          	bnez	a0,80005ff0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005fd0:	41800533          	neg	a0,s8
80005fd4:	009fa023          	sw	s1,0(t6)
80005fd8:	00afa223          	sw	a0,4(t6)
80005fdc:	f4442503          	lw	a0,-188(s0)
80005fe0:	00af9423          	sh	a0,8(t6)
80005fe4:	0b40006f          	j	80006098 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005fe8:	00e53533          	sltu	a0,a0,a4
80005fec:	fe0502e3          	beqz	a0,80005fd0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xda0>
80005ff0:	000fa023          	sw	zero,0(t6)
80005ff4:	0a40006f          	j	80006098 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005ff8:	409605b3          	sub	a1,a2,s1
80005ffc:	40c50533          	sub	a0,a0,a2
80006000:	00a5b533          	sltu	a0,a1,a0
80006004:	08050663          	beqz	a0,80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80006008:	01400613          	li	a2,20
8000600c:	000c0513          	mv	a0,s8
80006010:	000b8593          	mv	a1,s7
80006014:	00000693          	li	a3,0
80006018:	00004097          	auipc	ra,0x4
8000601c:	0a0080e7          	jalr	160(ra) # 8000a0b8 <__muldi3>
80006020:	01258863          	beq	a1,s2,80006030 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe00>
80006024:	00b93533          	sltu	a0,s2,a1
80006028:	00050863          	beqz	a0,80006038 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe08>
8000602c:	0640006f          	j	80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80006030:	00a4b533          	sltu	a0,s1,a0
80006034:	04051e63          	bnez	a0,80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80006038:	fd800613          	li	a2,-40
8000603c:	fff00693          	li	a3,-1
80006040:	000c0513          	mv	a0,s8
80006044:	000b8593          	mv	a1,s7
80006048:	00004097          	auipc	ra,0x4
8000604c:	070080e7          	jalr	112(ra) # 8000a0b8 <__muldi3>
80006050:	f7042603          	lw	a2,-144(s0)
80006054:	00c50633          	add	a2,a0,a2
80006058:	00a63533          	sltu	a0,a2,a0
8000605c:	014585b3          	add	a1,a1,s4
80006060:	00a58533          	add	a0,a1,a0
80006064:	02a90263          	beq	s2,a0,80006088 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe58>
80006068:	01253533          	sltu	a0,a0,s2
8000606c:	02051263          	bnez	a0,80006090 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80006070:	f5c42503          	lw	a0,-164(s0)
80006074:	01552023          	sw	s5,0(a0)
80006078:	01652223          	sw	s6,4(a0)
8000607c:	f4442583          	lw	a1,-188(s0)
80006080:	00b51423          	sh	a1,8(a0)
80006084:	0140006f          	j	80006098 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80006088:	00963533          	sltu	a0,a2,s1
8000608c:	fe0502e3          	beqz	a0,80006070 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe40>
80006090:	f5c42503          	lw	a0,-164(s0)
80006094:	00052023          	sw	zero,0(a0)
80006098:	0bc12083          	lw	ra,188(sp)
8000609c:	0b812403          	lw	s0,184(sp)
800060a0:	0b412483          	lw	s1,180(sp)
800060a4:	0b012903          	lw	s2,176(sp)
800060a8:	0ac12983          	lw	s3,172(sp)
800060ac:	0a812a03          	lw	s4,168(sp)
800060b0:	0a412a83          	lw	s5,164(sp)
800060b4:	0a012b03          	lw	s6,160(sp)
800060b8:	09c12b83          	lw	s7,156(sp)
800060bc:	09812c03          	lw	s8,152(sp)
800060c0:	09412c83          	lw	s9,148(sp)
800060c4:	09012d03          	lw	s10,144(sp)
800060c8:	08c12d83          	lw	s11,140(sp)
800060cc:	0c010113          	addi	sp,sp,192
800060d0:	00008067          	ret
800060d4:	fa042a23          	sw	zero,-76(s0)
800060d8:	fa840513          	addi	a0,s0,-88
800060dc:	f9840593          	addi	a1,s0,-104
800060e0:	fb440613          	addi	a2,s0,-76
800060e4:	00001097          	auipc	ra,0x1
800060e8:	09c080e7          	jalr	156(ra) # 80007180 <_ZN4core9panicking13assert_failed17h4fcb3a6812de271fE>
800060ec:	8000d537          	lui	a0,0x8000d
800060f0:	88b50513          	addi	a0,a0,-1909 # 8000c88b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
800060f4:	8000d637          	lui	a2,0x8000d
800060f8:	00060613          	mv	a2,a2
800060fc:	01c00593          	li	a1,28
80006100:	00001097          	auipc	ra,0x1
80006104:	fcc080e7          	jalr	-52(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006108:	8000d537          	lui	a0,0x8000d
8000610c:	8b850513          	addi	a0,a0,-1864 # 8000c8b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80006110:	8000d637          	lui	a2,0x8000d
80006114:	01060613          	addi	a2,a2,16 # 8000d010 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.54>
80006118:	01d00593          	li	a1,29
8000611c:	00001097          	auipc	ra,0x1
80006120:	fb0080e7          	jalr	-80(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006124:	8000d537          	lui	a0,0x8000d
80006128:	8e850513          	addi	a0,a0,-1816 # 8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
8000612c:	8000d637          	lui	a2,0x8000d
80006130:	02060613          	addi	a2,a2,32 # 8000d020 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.55>
80006134:	01c00593          	li	a1,28
80006138:	00001097          	auipc	ra,0x1
8000613c:	f94080e7          	jalr	-108(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006140:	8000d537          	lui	a0,0x8000d
80006144:	91450513          	addi	a0,a0,-1772 # 8000c914 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
80006148:	8000d637          	lui	a2,0x8000d
8000614c:	03060613          	addi	a2,a2,48 # 8000d030 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.56>
80006150:	02d00593          	li	a1,45
80006154:	00001097          	auipc	ra,0x1
80006158:	f78080e7          	jalr	-136(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000615c:	8000d537          	lui	a0,0x8000d
80006160:	04050513          	addi	a0,a0,64 # 8000d040 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57>
80006164:	8000d637          	lui	a2,0x8000d
80006168:	07060613          	addi	a2,a2,112 # 8000d070 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.58>
8000616c:	02d00593          	li	a1,45
80006170:	00001097          	auipc	ra,0x1
80006174:	f5c080e7          	jalr	-164(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006178:	8000c537          	lui	a0,0x8000c
8000617c:	77050513          	addi	a0,a0,1904 # 8000c770 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.21>
80006180:	8000c637          	lui	a2,0x8000c
80006184:	7a860613          	addi	a2,a2,1960 # 8000c7a8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.23>
80006188:	01d00593          	li	a1,29
8000618c:	00001097          	auipc	ra,0x1
80006190:	f40080e7          	jalr	-192(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006194:	8000d637          	lui	a2,0x8000d
80006198:	09060613          	addi	a2,a2,144 # 8000d090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.60>
8000619c:	f9042503          	lw	a0,-112(s0)
800061a0:	00050593          	mv	a1,a0
800061a4:	00001097          	auipc	ra,0x1
800061a8:	f70080e7          	jalr	-144(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800061ac:	8000d637          	lui	a2,0x8000d
800061b0:	0a060613          	addi	a2,a2,160 # 8000d0a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.61>
800061b4:	000b0513          	mv	a0,s6
800061b8:	f9042583          	lw	a1,-112(s0)
800061bc:	00001097          	auipc	ra,0x1
800061c0:	f58080e7          	jalr	-168(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800061c4:	8000d537          	lui	a0,0x8000d
800061c8:	9cc50513          	addi	a0,a0,-1588 # 8000c9cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
800061cc:	8000d637          	lui	a2,0x8000d
800061d0:	0c060613          	addi	a2,a2,192 # 8000d0c0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.63>
800061d4:	03600593          	li	a1,54
800061d8:	00001097          	auipc	ra,0x1
800061dc:	ef4080e7          	jalr	-268(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800061e0:	8000d537          	lui	a0,0x8000d
800061e4:	98450513          	addi	a0,a0,-1660 # 8000c984 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
800061e8:	8000d637          	lui	a2,0x8000d
800061ec:	0b060613          	addi	a2,a2,176 # 8000d0b0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.62>
800061f0:	03700593          	li	a1,55
800061f4:	00001097          	auipc	ra,0x1
800061f8:	ed8080e7          	jalr	-296(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800061fc:	8000d637          	lui	a2,0x8000d
80006200:	ff060613          	addi	a2,a2,-16 # 8000cff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>
80006204:	05100593          	li	a1,81
80006208:	00001097          	auipc	ra,0x1
8000620c:	f0c080e7          	jalr	-244(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80006210 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E>:
80006210:	f9010113          	addi	sp,sp,-112
80006214:	06112623          	sw	ra,108(sp)
80006218:	06812423          	sw	s0,104(sp)
8000621c:	06912223          	sw	s1,100(sp)
80006220:	07212023          	sw	s2,96(sp)
80006224:	05312e23          	sw	s3,92(sp)
80006228:	05412c23          	sw	s4,88(sp)
8000622c:	05512a23          	sw	s5,84(sp)
80006230:	05612823          	sw	s6,80(sp)
80006234:	05712623          	sw	s7,76(sp)
80006238:	05812423          	sw	s8,72(sp)
8000623c:	05912223          	sw	s9,68(sp)
80006240:	05a12023          	sw	s10,64(sp)
80006244:	03b12e23          	sw	s11,60(sp)
80006248:	07010413          	addi	s0,sp,112
8000624c:	0045a783          	lw	a5,4(a1)
80006250:	0005a803          	lw	a6,0(a1)
80006254:	00f868b3          	or	a7,a6,a5
80006258:	70088e63          	beqz	a7,80006974 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x764>
8000625c:	01d7d893          	srli	a7,a5,0x1d
80006260:	72089863          	bnez	a7,80006990 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x780>
80006264:	74068463          	beqz	a3,800069ac <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x79c>
80006268:	01859283          	lh	t0,24(a1)
8000626c:	0017b593          	seqz	a1,a5
80006270:	40b008b3          	neg	a7,a1
80006274:	fe08f893          	andi	a7,a7,-32
80006278:	011282b3          	add	t0,t0,a7
8000627c:	00559593          	slli	a1,a1,0x5
80006280:	fe058893          	addi	a7,a1,-32
80006284:	00b81833          	sll	a6,a6,a1
80006288:	fae42a23          	sw	a4,-76(s0)
8000628c:	fad42623          	sw	a3,-84(s0)
80006290:	faa42423          	sw	a0,-88(s0)
80006294:	fac42c23          	sw	a2,-72(s0)
80006298:	0008c663          	bltz	a7,800062a4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x94>
8000629c:	00080593          	mv	a1,a6
800062a0:	0080006f          	j	800062a8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x98>
800062a4:	00b795b3          	sll	a1,a5,a1
800062a8:	41f8d693          	srai	a3,a7,0x1f
800062ac:	0106f633          	and	a2,a3,a6
800062b0:	0105d693          	srli	a3,a1,0x10
800062b4:	0016b693          	seqz	a3,a3
800062b8:	40d00733          	neg	a4,a3
800062bc:	ff077713          	andi	a4,a4,-16
800062c0:	00e28533          	add	a0,t0,a4
800062c4:	00469693          	slli	a3,a3,0x4
800062c8:	00d595b3          	sll	a1,a1,a3
800062cc:	01f6c713          	xori	a4,a3,31
800062d0:	00165793          	srli	a5,a2,0x1
800062d4:	00e7d733          	srl	a4,a5,a4
800062d8:	00e5e733          	or	a4,a1,a4
800062dc:	00d61633          	sll	a2,a2,a3
800062e0:	0185d593          	srli	a1,a1,0x18
800062e4:	0015b593          	seqz	a1,a1
800062e8:	40b006b3          	neg	a3,a1
800062ec:	ff86f693          	andi	a3,a3,-8
800062f0:	00d50533          	add	a0,a0,a3
800062f4:	00359593          	slli	a1,a1,0x3
800062f8:	00b716b3          	sll	a3,a4,a1
800062fc:	01f5c713          	xori	a4,a1,31
80006300:	00165793          	srli	a5,a2,0x1
80006304:	00e7d733          	srl	a4,a5,a4
80006308:	00e6e733          	or	a4,a3,a4
8000630c:	00b615b3          	sll	a1,a2,a1
80006310:	01c6d693          	srli	a3,a3,0x1c
80006314:	0016b613          	seqz	a2,a3
80006318:	40c006b3          	neg	a3,a2
8000631c:	ffc6f693          	andi	a3,a3,-4
80006320:	00d50533          	add	a0,a0,a3
80006324:	00261613          	slli	a2,a2,0x2
80006328:	00c716b3          	sll	a3,a4,a2
8000632c:	01f64713          	xori	a4,a2,31
80006330:	0015d793          	srli	a5,a1,0x1
80006334:	00e7d733          	srl	a4,a5,a4
80006338:	00e6e733          	or	a4,a3,a4
8000633c:	00c594b3          	sll	s1,a1,a2
80006340:	01e6d693          	srli	a3,a3,0x1e
80006344:	0016b993          	seqz	s3,a3
80006348:	413005b3          	neg	a1,s3
8000634c:	ffe5f593          	andi	a1,a1,-2
80006350:	00b50533          	add	a0,a0,a1
80006354:	00199993          	slli	s3,s3,0x1
80006358:	013715b3          	sll	a1,a4,s3
8000635c:	01f9c613          	xori	a2,s3,31
80006360:	0014d693          	srli	a3,s1,0x1
80006364:	00c6d633          	srl	a2,a3,a2
80006368:	00c5e933          	or	s2,a1,a2
8000636c:	00092a93          	slti	s5,s2,0
80006370:	001acb13          	xori	s6,s5,1
80006374:	41650a33          	sub	s4,a0,s6
80006378:	fa000513          	li	a0,-96
8000637c:	41450533          	sub	a0,a0,s4
80006380:	01051513          	slli	a0,a0,0x10
80006384:	41055513          	srai	a0,a0,0x10
80006388:	43f50513          	addi	a0,a0,1087
8000638c:	05000593          	li	a1,80
80006390:	00004097          	auipc	ra,0x4
80006394:	ce0080e7          	jalr	-800(ra) # 8000a070 <__mulsi3>
80006398:	000015b7          	lui	a1,0x1
8000639c:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start1+0x3f>
800063a0:	00005097          	auipc	ra,0x5
800063a4:	d04080e7          	jalr	-764(ra) # 8000b0a4 <__divsi3>
800063a8:	05100593          	li	a1,81
800063ac:	64b57663          	bgeu	a0,a1,800069f8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7e8>
800063b0:	013495b3          	sll	a1,s1,s3
800063b4:	0015d613          	srli	a2,a1,0x1
800063b8:	01ea8a93          	addi	s5,s5,30
800063bc:	01565633          	srl	a2,a2,s5
800063c0:	00451513          	slli	a0,a0,0x4
800063c4:	8000d6b7          	lui	a3,0x8000d
800063c8:	ab868693          	addi	a3,a3,-1352 # 8000cab8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>
800063cc:	00a68533          	add	a0,a3,a0
800063d0:	00052483          	lw	s1,0(a0)
800063d4:	00452983          	lw	s3,4(a0)
800063d8:	00851d83          	lh	s11,8(a0)
800063dc:	00a55503          	lhu	a0,10(a0)
800063e0:	fca42423          	sw	a0,-56(s0)
800063e4:	01691533          	sll	a0,s2,s6
800063e8:	00c56ab3          	or	s5,a0,a2
800063ec:	01659b33          	sll	s6,a1,s6
800063f0:	00098513          	mv	a0,s3
800063f4:	00000593          	li	a1,0
800063f8:	000a8613          	mv	a2,s5
800063fc:	00000693          	li	a3,0
80006400:	00004097          	auipc	ra,0x4
80006404:	cb8080e7          	jalr	-840(ra) # 8000a0b8 <__muldi3>
80006408:	00050b93          	mv	s7,a0
8000640c:	00058c13          	mv	s8,a1
80006410:	00098513          	mv	a0,s3
80006414:	00000593          	li	a1,0
80006418:	000b0613          	mv	a2,s6
8000641c:	00000693          	li	a3,0
80006420:	00004097          	auipc	ra,0x4
80006424:	c98080e7          	jalr	-872(ra) # 8000a0b8 <__muldi3>
80006428:	00050993          	mv	s3,a0
8000642c:	00058c93          	mv	s9,a1
80006430:	00048513          	mv	a0,s1
80006434:	00000593          	li	a1,0
80006438:	000a8613          	mv	a2,s5
8000643c:	00000693          	li	a3,0
80006440:	00004097          	auipc	ra,0x4
80006444:	c78080e7          	jalr	-904(ra) # 8000a0b8 <__muldi3>
80006448:	00050a93          	mv	s5,a0
8000644c:	00058d13          	mv	s10,a1
80006450:	00048513          	mv	a0,s1
80006454:	00000593          	li	a1,0
80006458:	000b0613          	mv	a2,s6
8000645c:	00000693          	li	a3,0
80006460:	00004097          	auipc	ra,0x4
80006464:	c58080e7          	jalr	-936(ra) # 8000a0b8 <__muldi3>
80006468:	00ba85b3          	add	a1,s5,a1
8000646c:	0155b533          	sltu	a0,a1,s5
80006470:	013589b3          	add	s3,a1,s3
80006474:	00b9b5b3          	sltu	a1,s3,a1
80006478:	00b50533          	add	a0,a0,a1
8000647c:	800005b7          	lui	a1,0x80000
80006480:	00b985b3          	add	a1,s3,a1
80006484:	0135b5b3          	sltu	a1,a1,s3
80006488:	00b50533          	add	a0,a0,a1
8000648c:	017d0bb3          	add	s7,s10,s7
80006490:	01abb5b3          	sltu	a1,s7,s10
80006494:	00bc05b3          	add	a1,s8,a1
80006498:	019b8cb3          	add	s9,s7,s9
8000649c:	017cb633          	sltu	a2,s9,s7
800064a0:	00c585b3          	add	a1,a1,a2
800064a4:	00ac8533          	add	a0,s9,a0
800064a8:	01953633          	sltu	a2,a0,s9
800064ac:	00c585b3          	add	a1,a1,a2
800064b0:	01ba0a33          	add	s4,s4,s11
800064b4:	414006b3          	neg	a3,s4
800064b8:	fc000613          	li	a2,-64
800064bc:	41460633          	sub	a2,a2,s4
800064c0:	03f67293          	andi	t0,a2,63
800064c4:	fe028813          	addi	a6,t0,-32
800064c8:	fff2cc93          	not	s9,t0
800064cc:	00084663          	bltz	a6,800064d8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x2c8>
800064d0:	0055dd33          	srl	s10,a1,t0
800064d4:	0140006f          	j	800064e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x2d8>
800064d8:	00d55733          	srl	a4,a0,a3
800064dc:	00159793          	slli	a5,a1,0x1
800064e0:	019797b3          	sll	a5,a5,s9
800064e4:	00f76d33          	or	s10,a4,a5
800064e8:	fb442483          	lw	s1,-76(s0)
800064ec:	fac42d83          	lw	s11,-84(s0)
800064f0:	fb842903          	lw	s2,-72(s0)
800064f4:	fb042823          	sw	a6,-80(s0)
800064f8:	00082713          	slti	a4,a6,0
800064fc:	00100793          	li	a5,1
80006500:	00579833          	sll	a6,a5,t0
80006504:	fff70893          	addi	a7,a4,-1
80006508:	0108fa33          	and	s4,a7,a6
8000650c:	40e00733          	neg	a4,a4
80006510:	00d796b3          	sll	a3,a5,a3
80006514:	00d77ab3          	and	s5,a4,a3
80006518:	001ab693          	seqz	a3,s5
8000651c:	40da06b3          	sub	a3,s4,a3
80006520:	fffa8713          	addi	a4,s5,-1
80006524:	fae42e23          	sw	a4,-68(s0)
80006528:	00e57c33          	and	s8,a0,a4
8000652c:	fcd42023          	sw	a3,-64(s0)
80006530:	00d5fbb3          	and	s7,a1,a3
80006534:	017c66b3          	or	a3,s8,s7
80006538:	02068a63          	beqz	a3,8000656c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x35c>
8000653c:	004d5693          	srli	a3,s10,0x4
80006540:	27100713          	li	a4,625
80006544:	fc542223          	sw	t0,-60(s0)
80006548:	04e6f863          	bgeu	a3,a4,80006598 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x388>
8000654c:	06400993          	li	s3,100
80006550:	073d7a63          	bgeu	s10,s3,800065c4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3b4>
80006554:	00a00993          	li	s3,10
80006558:	00ad3693          	sltiu	a3,s10,10
8000655c:	013d7463          	bgeu	s10,s3,80006564 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x354>
80006560:	00100993          	li	s3,1
80006564:	0016cb13          	xori	s6,a3,1
80006568:	0b80006f          	j	80006620 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
8000656c:	00a00693          	li	a3,10
80006570:	01b6ee63          	bltu	a3,s11,8000658c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006574:	002d9693          	slli	a3,s11,0x2
80006578:	8000d737          	lui	a4,0x8000d
8000657c:	14870713          	addi	a4,a4,328 # 8000d148 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
80006580:	00e686b3          	add	a3,a3,a4
80006584:	ffc6a683          	lw	a3,-4(a3)
80006588:	fadd7ae3          	bgeu	s10,a3,8000653c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x32c>
8000658c:	fa842503          	lw	a0,-88(s0)
80006590:	00052023          	sw	zero,0(a0)
80006594:	3a40006f          	j	80006938 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x728>
80006598:	000f46b7          	lui	a3,0xf4
8000659c:	24068693          	addi	a3,a3,576 # f4240 <.Lline_table_start2+0xf2e92>
800065a0:	02dd7e63          	bgeu	s10,a3,800065dc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3cc>
800065a4:	000186b7          	lui	a3,0x18
800065a8:	6a068993          	addi	s3,a3,1696 # 186a0 <.Lline_table_start2+0x172f2>
800065ac:	013d36b3          	sltu	a3,s10,s3
800065b0:	013d7663          	bgeu	s10,s3,800065bc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3ac>
800065b4:	00002737          	lui	a4,0x2
800065b8:	71070993          	addi	s3,a4,1808 # 2710 <.Lline_table_start2+0x1362>
800065bc:	0056cb13          	xori	s6,a3,5
800065c0:	0600006f          	j	80006620 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
800065c4:	3e800713          	li	a4,1000
800065c8:	3e8d3693          	sltiu	a3,s10,1000
800065cc:	00ed6463          	bltu	s10,a4,800065d4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3c4>
800065d0:	3e800993          	li	s3,1000
800065d4:	0036cb13          	xori	s6,a3,3
800065d8:	0480006f          	j	80006620 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
800065dc:	05f5e6b7          	lui	a3,0x5f5e
800065e0:	10068993          	addi	s3,a3,256 # 5f5e100 <.Lline_table_start2+0x5f5cd52>
800065e4:	033d7263          	bgeu	s10,s3,80006608 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3f8>
800065e8:	009896b7          	lui	a3,0x989
800065ec:	68068993          	addi	s3,a3,1664 # 989680 <.Lline_table_start2+0x9882d2>
800065f0:	013d36b3          	sltu	a3,s10,s3
800065f4:	013d7663          	bgeu	s10,s3,80006600 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3f0>
800065f8:	000f4737          	lui	a4,0xf4
800065fc:	24070993          	addi	s3,a4,576 # f4240 <.Lline_table_start2+0xf2e92>
80006600:	0076cb13          	xori	s6,a3,7
80006604:	01c0006f          	j	80006620 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
80006608:	3b9ad6b7          	lui	a3,0x3b9ad
8000660c:	a0068713          	addi	a4,a3,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
80006610:	00ed36b3          	sltu	a3,s10,a4
80006614:	00ed6463          	bltu	s10,a4,8000661c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x40c>
80006618:	00070993          	mv	s3,a4
8000661c:	0096cb13          	xori	s6,a3,9
80006620:	fc842683          	lw	a3,-56(s0)
80006624:	40db06b3          	sub	a3,s6,a3
80006628:	00168693          	addi	a3,a3,1
8000662c:	01069693          	slli	a3,a3,0x10
80006630:	4106d693          	srai	a3,a3,0x10
80006634:	02d4d463          	bge	s1,a3,8000665c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x44c>
80006638:	40968533          	sub	a0,a3,s1
8000663c:	01061613          	slli	a2,a2,0x10
80006640:	f9442e23          	sw	s4,-100(s0)
80006644:	f9542c23          	sw	s5,-104(s0)
80006648:	fb942223          	sw	s9,-92(s0)
8000664c:	f8d42a23          	sw	a3,-108(s0)
80006650:	05b56063          	bltu	a0,s11,80006690 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x480>
80006654:	fdb42423          	sw	s11,-56(s0)
80006658:	0440006f          	j	8000669c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x48c>
8000665c:	00068b13          	mv	s6,a3
80006660:	00a00613          	li	a2,10
80006664:	00000693          	li	a3,0
80006668:	00004097          	auipc	ra,0x4
8000666c:	5ec080e7          	jalr	1516(ra) # 8000ac54 <__udivdi3>
80006670:	00050813          	mv	a6,a0
80006674:	00058893          	mv	a7,a1
80006678:	fc442503          	lw	a0,-60(s0)
8000667c:	00a99533          	sll	a0,s3,a0
80006680:	fb042583          	lw	a1,-80(s0)
80006684:	0c05ce63          	bltz	a1,80006760 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x550>
80006688:	00050e93          	mv	t4,a0
8000668c:	0dc0006f          	j	80006768 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x558>
80006690:	01051513          	slli	a0,a0,0x10
80006694:	41055513          	srai	a0,a0,0x10
80006698:	fca42423          	sw	a0,-56(s0)
8000669c:	01065613          	srli	a2,a2,0x10
800066a0:	fac42023          	sw	a2,-96(s0)
800066a4:	fff00a13          	li	s4,-1
800066a8:	00090a93          	mv	s5,s2
800066ac:	fff00c93          	li	s9,-1
800066b0:	00098493          	mv	s1,s3
800066b4:	000d8913          	mv	s2,s11
800066b8:	019d8db3          	add	s11,s11,s9
800066bc:	000d0513          	mv	a0,s10
800066c0:	00098593          	mv	a1,s3
800066c4:	00004097          	auipc	ra,0x4
800066c8:	56c080e7          	jalr	1388(ra) # 8000ac30 <__udivsi3>
800066cc:	00050993          	mv	s3,a0
800066d0:	00048593          	mv	a1,s1
800066d4:	00004097          	auipc	ra,0x4
800066d8:	99c080e7          	jalr	-1636(ra) # 8000a070 <__mulsi3>
800066dc:	2f4d8663          	beq	s11,s4,800069c8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7b8>
800066e0:	40ad0d33          	sub	s10,s10,a0
800066e4:	03098513          	addi	a0,s3,48
800066e8:	fc842583          	lw	a1,-56(s0)
800066ec:	019585b3          	add	a1,a1,s9
800066f0:	00aa8023          	sb	a0,0(s5)
800066f4:	04058263          	beqz	a1,80006738 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x528>
800066f8:	019b0533          	add	a0,s6,s9
800066fc:	00090d93          	mv	s11,s2
80006700:	09450c63          	beq	a0,s4,80006798 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x588>
80006704:	00a00593          	li	a1,10
80006708:	00048513          	mv	a0,s1
8000670c:	00004097          	auipc	ra,0x4
80006710:	524080e7          	jalr	1316(ra) # 8000ac30 <__udivsi3>
80006714:	00050993          	mv	s3,a0
80006718:	fffc8c93          	addi	s9,s9,-1
8000671c:	001a8a93          	addi	s5,s5,1
80006720:	00a00513          	li	a0,10
80006724:	f8a4f6e3          	bgeu	s1,a0,800066b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x4a0>
80006728:	8000d537          	lui	a0,0x8000d
8000672c:	17050513          	addi	a0,a0,368 # 8000d170 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.70>
80006730:	00003097          	auipc	ra,0x3
80006734:	ff8080e7          	jalr	-8(ra) # 80009728 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>
80006738:	fc442303          	lw	t1,-60(s0)
8000673c:	006d1733          	sll	a4,s10,t1
80006740:	fb042783          	lw	a5,-80(s0)
80006744:	1407cc63          	bltz	a5,8000689c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x68c>
80006748:	00070693          	mv	a3,a4
8000674c:	fb842583          	lw	a1,-72(s0)
80006750:	f9c42f83          	lw	t6,-100(s0)
80006754:	f9842f03          	lw	t5,-104(s0)
80006758:	fa442283          	lw	t0,-92(s0)
8000675c:	1580006f          	j	800068b4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6a4>
80006760:	0019d593          	srli	a1,s3,0x1
80006764:	0195deb3          	srl	t4,a1,s9
80006768:	fb042583          	lw	a1,-80(s0)
8000676c:	41f5d593          	srai	a1,a1,0x1f
80006770:	00a5fe33          	and	t3,a1,a0
80006774:	fa842503          	lw	a0,-88(s0)
80006778:	00090593          	mv	a1,s2
8000677c:	000d8613          	mv	a2,s11
80006780:	00000693          	li	a3,0
80006784:	000b0713          	mv	a4,s6
80006788:	00048793          	mv	a5,s1
8000678c:	000a8f13          	mv	t5,s5
80006790:	000a0f93          	mv	t6,s4
80006794:	19c0006f          	j	80006930 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x720>
80006798:	00000993          	li	s3,0
8000679c:	fa042503          	lw	a0,-96(s0)
800067a0:	fff50513          	addi	a0,a0,-1
800067a4:	03f57b13          	andi	s6,a0,63
800067a8:	419004b3          	neg	s1,s9
800067ac:	00100d13          	li	s10,1
800067b0:	fffb4513          	not	a0,s6
800067b4:	faa42023          	sw	a0,-96(s0)
800067b8:	fe0b0c93          	addi	s9,s6,-32
800067bc:	41fcda13          	srai	s4,s9,0x1f
800067c0:	fb842903          	lw	s2,-72(s0)
800067c4:	fb042a83          	lw	s5,-80(s0)
800067c8:	0340006f          	j	800067fc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5ec>
800067cc:	fc442503          	lw	a0,-60(s0)
800067d0:	00abd533          	srl	a0,s7,a0
800067d4:	fc042583          	lw	a1,-64(s0)
800067d8:	00bbfbb3          	and	s7,s7,a1
800067dc:	fbc42583          	lw	a1,-68(s0)
800067e0:	00bc7c33          	and	s8,s8,a1
800067e4:	03050513          	addi	a0,a0,48
800067e8:	009905b3          	add	a1,s2,s1
800067ec:	00148493          	addi	s1,s1,1
800067f0:	00a58023          	sb	a0,0(a1) # 80000000 <_start>
800067f4:	fc842503          	lw	a0,-56(s0)
800067f8:	10950463          	beq	a0,s1,80006900 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6f0>
800067fc:	0169d533          	srl	a0,s3,s6
80006800:	000ccc63          	bltz	s9,80006818 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x608>
80006804:	00050593          	mv	a1,a0
80006808:	00aa7533          	and	a0,s4,a0
8000680c:	00a5e533          	or	a0,a1,a0
80006810:	02050463          	beqz	a0,80006838 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x628>
80006814:	d79ff06f          	j	8000658c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006818:	016d55b3          	srl	a1,s10,s6
8000681c:	00199613          	slli	a2,s3,0x1
80006820:	fa042683          	lw	a3,-96(s0)
80006824:	00d61633          	sll	a2,a2,a3
80006828:	00c5e5b3          	or	a1,a1,a2
8000682c:	00aa7533          	and	a0,s4,a0
80006830:	00a5e533          	or	a0,a1,a0
80006834:	d4051ce3          	bnez	a0,8000658c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006838:	1bb4f463          	bgeu	s1,s11,800069e0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7d0>
8000683c:	00a00613          	li	a2,10
80006840:	000c0513          	mv	a0,s8
80006844:	000b8593          	mv	a1,s7
80006848:	00000693          	li	a3,0
8000684c:	00004097          	auipc	ra,0x4
80006850:	86c080e7          	jalr	-1940(ra) # 8000a0b8 <__muldi3>
80006854:	00050c13          	mv	s8,a0
80006858:	00058b93          	mv	s7,a1
8000685c:	00a00613          	li	a2,10
80006860:	000d0513          	mv	a0,s10
80006864:	00098593          	mv	a1,s3
80006868:	00000693          	li	a3,0
8000686c:	00004097          	auipc	ra,0x4
80006870:	84c080e7          	jalr	-1972(ra) # 8000a0b8 <__muldi3>
80006874:	00050d13          	mv	s10,a0
80006878:	00058993          	mv	s3,a1
8000687c:	f40ad8e3          	bgez	s5,800067cc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5bc>
80006880:	fc442503          	lw	a0,-60(s0)
80006884:	00ac5533          	srl	a0,s8,a0
80006888:	001b9593          	slli	a1,s7,0x1
8000688c:	fa442603          	lw	a2,-92(s0)
80006890:	00c595b3          	sll	a1,a1,a2
80006894:	00b56533          	or	a0,a0,a1
80006898:	f3dff06f          	j	800067d4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5c4>
8000689c:	001d5513          	srli	a0,s10,0x1
800068a0:	fa442283          	lw	t0,-92(s0)
800068a4:	005556b3          	srl	a3,a0,t0
800068a8:	fb842583          	lw	a1,-72(s0)
800068ac:	f9c42f83          	lw	t6,-100(s0)
800068b0:	f9842f03          	lw	t5,-104(s0)
800068b4:	41f7d513          	srai	a0,a5,0x1f
800068b8:	00e57733          	and	a4,a0,a4
800068bc:	017686b3          	add	a3,a3,s7
800068c0:	01870833          	add	a6,a4,s8
800068c4:	00e838b3          	sltu	a7,a6,a4
800068c8:	011688b3          	add	a7,a3,a7
800068cc:	006496b3          	sll	a3,s1,t1
800068d0:	0007c663          	bltz	a5,800068dc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6cc>
800068d4:	00068e93          	mv	t4,a3
800068d8:	00c0006f          	j	800068e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6d4>
800068dc:	0014d493          	srli	s1,s1,0x1
800068e0:	0054deb3          	srl	t4,s1,t0
800068e4:	00d57e33          	and	t3,a0,a3
800068e8:	fa842503          	lw	a0,-88(s0)
800068ec:	00090613          	mv	a2,s2
800068f0:	fc842683          	lw	a3,-56(s0)
800068f4:	f9442703          	lw	a4,-108(s0)
800068f8:	fb442783          	lw	a5,-76(s0)
800068fc:	0340006f          	j	80006930 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x720>
80006900:	fa842503          	lw	a0,-88(s0)
80006904:	00090593          	mv	a1,s2
80006908:	000d8613          	mv	a2,s11
8000690c:	fc842683          	lw	a3,-56(s0)
80006910:	f9442703          	lw	a4,-108(s0)
80006914:	fb442783          	lw	a5,-76(s0)
80006918:	000c0813          	mv	a6,s8
8000691c:	000b8893          	mv	a7,s7
80006920:	f9842e03          	lw	t3,-104(s0)
80006924:	f9c42e83          	lw	t4,-100(s0)
80006928:	000d0f13          	mv	t5,s10
8000692c:	00098f93          	mv	t6,s3
80006930:	00000097          	auipc	ra,0x0
80006934:	0dc080e7          	jalr	220(ra) # 80006a0c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E>
80006938:	06c12083          	lw	ra,108(sp)
8000693c:	06812403          	lw	s0,104(sp)
80006940:	06412483          	lw	s1,100(sp)
80006944:	06012903          	lw	s2,96(sp)
80006948:	05c12983          	lw	s3,92(sp)
8000694c:	05812a03          	lw	s4,88(sp)
80006950:	05412a83          	lw	s5,84(sp)
80006954:	05012b03          	lw	s6,80(sp)
80006958:	04c12b83          	lw	s7,76(sp)
8000695c:	04812c03          	lw	s8,72(sp)
80006960:	04412c83          	lw	s9,68(sp)
80006964:	04012d03          	lw	s10,64(sp)
80006968:	03c12d83          	lw	s11,60(sp)
8000696c:	07010113          	addi	sp,sp,112
80006970:	00008067          	ret
80006974:	8000d537          	lui	a0,0x8000d
80006978:	88b50513          	addi	a0,a0,-1909 # 8000c88b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
8000697c:	8000d637          	lui	a2,0x8000d
80006980:	0f460613          	addi	a2,a2,244 # 8000d0f4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.65>
80006984:	01c00593          	li	a1,28
80006988:	00000097          	auipc	ra,0x0
8000698c:	744080e7          	jalr	1860(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006990:	8000d537          	lui	a0,0x8000d
80006994:	10450513          	addi	a0,a0,260 # 8000d104 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.66>
80006998:	8000d637          	lui	a2,0x8000d
8000699c:	12860613          	addi	a2,a2,296 # 8000d128 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.67>
800069a0:	02400593          	li	a1,36
800069a4:	00000097          	auipc	ra,0x0
800069a8:	728080e7          	jalr	1832(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800069ac:	8000d537          	lui	a0,0x8000d
800069b0:	0d050513          	addi	a0,a0,208 # 8000d0d0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>
800069b4:	8000d637          	lui	a2,0x8000d
800069b8:	13860613          	addi	a2,a2,312 # 8000d138 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.68>
800069bc:	02100593          	li	a1,33
800069c0:	00000097          	auipc	ra,0x0
800069c4:	70c080e7          	jalr	1804(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800069c8:	8000d637          	lui	a2,0x8000d
800069cc:	18060613          	addi	a2,a2,384 # 8000d180 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.71>
800069d0:	00090513          	mv	a0,s2
800069d4:	00090593          	mv	a1,s2
800069d8:	00000097          	auipc	ra,0x0
800069dc:	73c080e7          	jalr	1852(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800069e0:	8000d637          	lui	a2,0x8000d
800069e4:	19060613          	addi	a2,a2,400 # 8000d190 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.72>
800069e8:	00048513          	mv	a0,s1
800069ec:	000d8593          	mv	a1,s11
800069f0:	00000097          	auipc	ra,0x0
800069f4:	724080e7          	jalr	1828(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800069f8:	8000d637          	lui	a2,0x8000d
800069fc:	ff060613          	addi	a2,a2,-16 # 8000cff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>
80006a00:	05100593          	li	a1,81
80006a04:	00000097          	auipc	ra,0x0
80006a08:	710080e7          	jalr	1808(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80006a0c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E>:
80006a0c:	fd010113          	addi	sp,sp,-48
80006a10:	02112623          	sw	ra,44(sp)
80006a14:	02812423          	sw	s0,40(sp)
80006a18:	02912223          	sw	s1,36(sp)
80006a1c:	03212023          	sw	s2,32(sp)
80006a20:	01312e23          	sw	s3,28(sp)
80006a24:	01412c23          	sw	s4,24(sp)
80006a28:	01512a23          	sw	s5,20(sp)
80006a2c:	01612823          	sw	s6,16(sp)
80006a30:	01712623          	sw	s7,12(sp)
80006a34:	01812423          	sw	s8,8(sp)
80006a38:	03010413          	addi	s0,sp,48
80006a3c:	01fe8863          	beq	t4,t6,80006a4c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x40>
80006a40:	01dfb2b3          	sltu	t0,t6,t4
80006a44:	00029863          	bnez	t0,80006a54 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x48>
80006a48:	19c0006f          	j	80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a4c:	01cf32b3          	sltu	t0,t5,t3
80006a50:	18028a63          	beqz	t0,80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a54:	01ee32b3          	sltu	t0,t3,t5
80006a58:	41fe8333          	sub	t1,t4,t6
80006a5c:	405302b3          	sub	t0,t1,t0
80006a60:	01f28863          	beq	t0,t6,80006a70 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x64>
80006a64:	005fb2b3          	sltu	t0,t6,t0
80006a68:	00029a63          	bnez	t0,80006a7c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x70>
80006a6c:	1780006f          	j	80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a70:	41ee02b3          	sub	t0,t3,t5
80006a74:	005f32b3          	sltu	t0,t5,t0
80006a78:	16028663          	beqz	t0,80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a7c:	010e32b3          	sltu	t0,t3,a6
80006a80:	411e8333          	sub	t1,t4,a7
80006a84:	405302b3          	sub	t0,t1,t0
80006a88:	01128863          	beq	t0,a7,80006a98 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x8c>
80006a8c:	0058b2b3          	sltu	t0,a7,t0
80006a90:	00029a63          	bnez	t0,80006aa4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x98>
80006a94:	0740006f          	j	80006b08 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
80006a98:	410e02b3          	sub	t0,t3,a6
80006a9c:	005832b3          	sltu	t0,a6,t0
80006aa0:	06028463          	beqz	t0,80006b08 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
80006aa4:	01f85293          	srli	t0,a6,0x1f
80006aa8:	00189313          	slli	t1,a7,0x1
80006aac:	00536333          	or	t1,t1,t0
80006ab0:	00181293          	slli	t0,a6,0x1
80006ab4:	005e33b3          	sltu	t2,t3,t0
80006ab8:	406e8333          	sub	t1,t4,t1
80006abc:	40730333          	sub	t1,t1,t2
80006ac0:	01ff5393          	srli	t2,t5,0x1f
80006ac4:	001f9493          	slli	s1,t6,0x1
80006ac8:	0074e3b3          	or	t2,s1,t2
80006acc:	02730663          	beq	t1,t2,80006af8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xec>
80006ad0:	007332b3          	sltu	t0,t1,t2
80006ad4:	02029a63          	bnez	t0,80006b08 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
80006ad8:	1cd67863          	bgeu	a2,a3,80006ca8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x29c>
80006adc:	8000d737          	lui	a4,0x8000d
80006ae0:	1c070713          	addi	a4,a4,448 # 8000d1c0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.75>
80006ae4:	00068513          	mv	a0,a3
80006ae8:	00060593          	mv	a1,a2
80006aec:	00070613          	mv	a2,a4
80006af0:	00002097          	auipc	ra,0x2
80006af4:	4b0080e7          	jalr	1200(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80006af8:	405e02b3          	sub	t0,t3,t0
80006afc:	001f1313          	slli	t1,t5,0x1
80006b00:	0062b2b3          	sltu	t0,t0,t1
80006b04:	fc028ae3          	beqz	t0,80006ad8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xcc>
80006b08:	01f88863          	beq	a7,t6,80006b18 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x10c>
80006b0c:	011fb2b3          	sltu	t0,t6,a7
80006b10:	00029863          	bnez	t0,80006b20 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x114>
80006b14:	0d00006f          	j	80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006b18:	010f32b3          	sltu	t0,t5,a6
80006b1c:	0c028463          	beqz	t0,80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006b20:	01e832b3          	sltu	t0,a6,t5
80006b24:	41f888b3          	sub	a7,a7,t6
80006b28:	405888b3          	sub	a7,a7,t0
80006b2c:	41e80833          	sub	a6,a6,t5
80006b30:	411e82b3          	sub	t0,t4,a7
80006b34:	010e3333          	sltu	t1,t3,a6
80006b38:	406282b3          	sub	t0,t0,t1
80006b3c:	09128e63          	beq	t0,a7,80006bd8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1cc>
80006b40:	0058b833          	sltu	a6,a7,t0
80006b44:	0a081063          	bnez	a6,80006be4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006b48:	16d66863          	bltu	a2,a3,80006cb8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x2ac>
80006b4c:	00000893          	li	a7,0
80006b50:	00d584b3          	add	s1,a1,a3
80006b54:	fff00813          	li	a6,-1
80006b58:	03900313          	li	t1,57
80006b5c:	00058293          	mv	t0,a1
80006b60:	0b168c63          	beq	a3,a7,80006c18 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x20c>
80006b64:	00d283b3          	add	t2,t0,a3
80006b68:	fff3c383          	lbu	t2,-1(t2)
80006b6c:	00188893          	addi	a7,a7,1
80006b70:	00180813          	addi	a6,a6,1
80006b74:	fff28293          	addi	t0,t0,-1
80006b78:	fe6384e3          	beq	t2,t1,80006b60 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x154>
80006b7c:	00d287b3          	add	a5,t0,a3
80006b80:	0007c883          	lbu	a7,0(a5)
80006b84:	00188893          	addi	a7,a7,1
80006b88:	410682b3          	sub	t0,a3,a6
80006b8c:	01178023          	sb	a7,0(a5)
80006b90:	10d2fa63          	bgeu	t0,a3,80006ca4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006b94:	00178793          	addi	a5,a5,1
80006b98:	00058493          	mv	s1,a1
80006b9c:	03000593          	li	a1,48
80006ba0:	00050913          	mv	s2,a0
80006ba4:	00078513          	mv	a0,a5
80006ba8:	00060993          	mv	s3,a2
80006bac:	00080613          	mv	a2,a6
80006bb0:	00068a13          	mv	s4,a3
80006bb4:	00070a93          	mv	s5,a4
80006bb8:	00004097          	auipc	ra,0x4
80006bbc:	414080e7          	jalr	1044(ra) # 8000afcc <memset>
80006bc0:	00048593          	mv	a1,s1
80006bc4:	000a8713          	mv	a4,s5
80006bc8:	00090513          	mv	a0,s2
80006bcc:	00098613          	mv	a2,s3
80006bd0:	000a0693          	mv	a3,s4
80006bd4:	0d00006f          	j	80006ca4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006bd8:	410e08b3          	sub	a7,t3,a6
80006bdc:	01183833          	sltu	a6,a6,a7
80006be0:	f60804e3          	beqz	a6,80006b48 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x13c>
80006be4:	00052023          	sw	zero,0(a0)
80006be8:	02c12083          	lw	ra,44(sp)
80006bec:	02812403          	lw	s0,40(sp)
80006bf0:	02412483          	lw	s1,36(sp)
80006bf4:	02012903          	lw	s2,32(sp)
80006bf8:	01c12983          	lw	s3,28(sp)
80006bfc:	01812a03          	lw	s4,24(sp)
80006c00:	01412a83          	lw	s5,20(sp)
80006c04:	01012b03          	lw	s6,16(sp)
80006c08:	00c12b83          	lw	s7,12(sp)
80006c0c:	00812c03          	lw	s8,8(sp)
80006c10:	03010113          	addi	sp,sp,48
80006c14:	00008067          	ret
80006c18:	06068263          	beqz	a3,80006c7c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x270>
80006c1c:	03100893          	li	a7,49
80006c20:	fff68813          	addi	a6,a3,-1
80006c24:	01158023          	sb	a7,0(a1)
80006c28:	04080e63          	beqz	a6,80006c84 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x278>
80006c2c:	00158893          	addi	a7,a1,1
80006c30:	00058993          	mv	s3,a1
80006c34:	03000593          	li	a1,48
80006c38:	03000913          	li	s2,48
80006c3c:	00050a13          	mv	s4,a0
80006c40:	00088513          	mv	a0,a7
80006c44:	00060a93          	mv	s5,a2
80006c48:	00080613          	mv	a2,a6
80006c4c:	00068b13          	mv	s6,a3
80006c50:	00070c13          	mv	s8,a4
80006c54:	00078b93          	mv	s7,a5
80006c58:	00004097          	auipc	ra,0x4
80006c5c:	374080e7          	jalr	884(ra) # 8000afcc <memset>
80006c60:	000b8793          	mv	a5,s7
80006c64:	00098593          	mv	a1,s3
80006c68:	000c0713          	mv	a4,s8
80006c6c:	000a0513          	mv	a0,s4
80006c70:	000a8613          	mv	a2,s5
80006c74:	000b0693          	mv	a3,s6
80006c78:	0100006f          	j	80006c88 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x27c>
80006c7c:	03100913          	li	s2,49
80006c80:	0080006f          	j	80006c88 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x27c>
80006c84:	03000913          	li	s2,48
80006c88:	00170713          	addi	a4,a4,1
80006c8c:	01071713          	slli	a4,a4,0x10
80006c90:	41075713          	srai	a4,a4,0x10
80006c94:	00c6f863          	bgeu	a3,a2,80006ca4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006c98:	00e7d663          	bge	a5,a4,80006ca4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006c9c:	01248023          	sb	s2,0(s1)
80006ca0:	00168693          	addi	a3,a3,1
80006ca4:	02d66863          	bltu	a2,a3,80006cd4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x2c8>
80006ca8:	00b52023          	sw	a1,0(a0)
80006cac:	00d52223          	sw	a3,4(a0)
80006cb0:	00e51423          	sh	a4,8(a0)
80006cb4:	f35ff06f          	j	80006be8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1dc>
80006cb8:	8000d737          	lui	a4,0x8000d
80006cbc:	1a070713          	addi	a4,a4,416 # 8000d1a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.73>
80006cc0:	00068513          	mv	a0,a3
80006cc4:	00060593          	mv	a1,a2
80006cc8:	00070613          	mv	a2,a4
80006ccc:	00002097          	auipc	ra,0x2
80006cd0:	2d4080e7          	jalr	724(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80006cd4:	8000d737          	lui	a4,0x8000d
80006cd8:	1b070713          	addi	a4,a4,432 # 8000d1b0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74>
80006cdc:	00068513          	mv	a0,a3
80006ce0:	00060593          	mv	a1,a2
80006ce4:	00070613          	mv	a2,a4
80006ce8:	00002097          	auipc	ra,0x2
80006cec:	2b8080e7          	jalr	696(ra) # 80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>

80006cf0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>:
80006cf0:	ff010113          	addi	sp,sp,-16
80006cf4:	00112623          	sw	ra,12(sp)
80006cf8:	00812423          	sw	s0,8(sp)
80006cfc:	01010413          	addi	s0,sp,16
80006d00:	10058863          	beqz	a1,80006e10 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x120>
80006d04:	00054803          	lbu	a6,0(a0)
80006d08:	03000893          	li	a7,48
80006d0c:	1308f063          	bgeu	a7,a6,80006e2c <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x13c>
80006d10:	00300813          	li	a6,3
80006d14:	12f87a63          	bgeu	a6,a5,80006e48 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x158>
80006d18:	00200813          	li	a6,2
80006d1c:	01071023          	sh	a6,0(a4)
80006d20:	04c05863          	blez	a2,80006d70 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x80>
80006d24:	00a72223          	sw	a0,4(a4)
80006d28:	08b67463          	bgeu	a2,a1,80006db0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xc0>
80006d2c:	00c72423          	sw	a2,8(a4)
80006d30:	00200813          	li	a6,2
80006d34:	01071623          	sh	a6,12(a4)
80006d38:	8000d7b7          	lui	a5,0x8000d
80006d3c:	26078793          	addi	a5,a5,608 # 8000d260 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>
80006d40:	00f72823          	sw	a5,16(a4)
80006d44:	00100793          	li	a5,1
80006d48:	00f72a23          	sw	a5,20(a4)
80006d4c:	40c587b3          	sub	a5,a1,a2
80006d50:	00c50533          	add	a0,a0,a2
80006d54:	01071c23          	sh	a6,24(a4)
80006d58:	00a72e23          	sw	a0,28(a4)
80006d5c:	02f72023          	sw	a5,32(a4)
80006d60:	00300593          	li	a1,3
80006d64:	08d7fc63          	bgeu	a5,a3,80006dfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006d68:	40f686b3          	sub	a3,a3,a5
80006d6c:	0740006f          	j	80006de0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xf0>
80006d70:	40c007b3          	neg	a5,a2
80006d74:	8000d8b7          	lui	a7,0x8000d
80006d78:	26188893          	addi	a7,a7,609 # 8000d261 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80006d7c:	01172223          	sw	a7,4(a4)
80006d80:	01072423          	sw	a6,8(a4)
80006d84:	00071623          	sh	zero,12(a4)
80006d88:	00f72823          	sw	a5,16(a4)
80006d8c:	01071c23          	sh	a6,24(a4)
80006d90:	00a72e23          	sw	a0,28(a4)
80006d94:	02b72023          	sw	a1,32(a4)
80006d98:	04d5fc63          	bgeu	a1,a3,80006df0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x100>
80006d9c:	40b686b3          	sub	a3,a3,a1
80006da0:	00300593          	li	a1,3
80006da4:	04d7fc63          	bgeu	a5,a3,80006dfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006da8:	00c686b3          	add	a3,a3,a2
80006dac:	0340006f          	j	80006de0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xf0>
80006db0:	00b72423          	sw	a1,8(a4)
80006db4:	40b60633          	sub	a2,a2,a1
80006db8:	00071623          	sh	zero,12(a4)
80006dbc:	00c72823          	sw	a2,16(a4)
80006dc0:	02068c63          	beqz	a3,80006df8 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x108>
80006dc4:	00200513          	li	a0,2
80006dc8:	00a71c23          	sh	a0,24(a4)
80006dcc:	8000d537          	lui	a0,0x8000d
80006dd0:	26050513          	addi	a0,a0,608 # 8000d260 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>
80006dd4:	00a72e23          	sw	a0,28(a4)
80006dd8:	00100513          	li	a0,1
80006ddc:	02a72023          	sw	a0,32(a4)
80006de0:	02071223          	sh	zero,36(a4)
80006de4:	02d72423          	sw	a3,40(a4)
80006de8:	00400593          	li	a1,4
80006dec:	0100006f          	j	80006dfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006df0:	00300593          	li	a1,3
80006df4:	0080006f          	j	80006dfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006df8:	00200593          	li	a1,2
80006dfc:	00070513          	mv	a0,a4
80006e00:	00c12083          	lw	ra,12(sp)
80006e04:	00812403          	lw	s0,8(sp)
80006e08:	01010113          	addi	sp,sp,16
80006e0c:	00008067          	ret
80006e10:	8000d537          	lui	a0,0x8000d
80006e14:	0d050513          	addi	a0,a0,208 # 8000d0d0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>
80006e18:	8000d637          	lui	a2,0x8000d
80006e1c:	1ec60613          	addi	a2,a2,492 # 8000d1ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.77>
80006e20:	02100593          	li	a1,33
80006e24:	00000097          	auipc	ra,0x0
80006e28:	2a8080e7          	jalr	680(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006e2c:	8000d537          	lui	a0,0x8000d
80006e30:	1fc50513          	addi	a0,a0,508 # 8000d1fc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.78>
80006e34:	8000d637          	lui	a2,0x8000d
80006e38:	21c60613          	addi	a2,a2,540 # 8000d21c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.79>
80006e3c:	01f00593          	li	a1,31
80006e40:	00000097          	auipc	ra,0x0
80006e44:	28c080e7          	jalr	652(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006e48:	8000d537          	lui	a0,0x8000d
80006e4c:	22c50513          	addi	a0,a0,556 # 8000d22c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.80>
80006e50:	8000d637          	lui	a2,0x8000d
80006e54:	25060613          	addi	a2,a2,592 # 8000d250 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.81>
80006e58:	02200593          	li	a1,34
80006e5c:	00000097          	auipc	ra,0x0
80006e60:	270080e7          	jalr	624(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80006e64 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa05253f8c12d2c8E>:
80006e64:	fc010113          	addi	sp,sp,-64
80006e68:	02112e23          	sw	ra,60(sp)
80006e6c:	02812c23          	sw	s0,56(sp)
80006e70:	02912a23          	sw	s1,52(sp)
80006e74:	04010413          	addi	s0,sp,64
80006e78:	00052503          	lw	a0,0(a0)
80006e7c:	00058493          	mv	s1,a1
80006e80:	fea42623          	sw	a0,-20(s0)
80006e84:	40a005b3          	neg	a1,a0
80006e88:	00b57533          	and	a0,a0,a1
80006e8c:	077cb5b7          	lui	a1,0x77cb
80006e90:	53158593          	addi	a1,a1,1329 # 77cb531 <.Lline_table_start2+0x77ca183>
80006e94:	00003097          	auipc	ra,0x3
80006e98:	1dc080e7          	jalr	476(ra) # 8000a070 <__mulsi3>
80006e9c:	01b55513          	srli	a0,a0,0x1b
80006ea0:	8000c5b7          	lui	a1,0x8000c
80006ea4:	75058593          	addi	a1,a1,1872 # 8000c750 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4+0x28>
80006ea8:	00a58533          	add	a0,a1,a0
80006eac:	00054503          	lbu	a0,0(a0)
80006eb0:	fea42823          	sw	a0,-16(s0)
80006eb4:	fec40513          	addi	a0,s0,-20
80006eb8:	fca42e23          	sw	a0,-36(s0)
80006ebc:	80009537          	lui	a0,0x80009
80006ec0:	63850513          	addi	a0,a0,1592 # 80009638 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E>
80006ec4:	fea42023          	sw	a0,-32(s0)
80006ec8:	ff040513          	addi	a0,s0,-16
80006ecc:	fea42223          	sw	a0,-28(s0)
80006ed0:	8000a537          	lui	a0,0x8000a
80006ed4:	8d050513          	addi	a0,a0,-1840 # 800098d0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE>
80006ed8:	fea42423          	sw	a0,-24(s0)
80006edc:	8000d537          	lui	a0,0x8000d
80006ee0:	2ac50513          	addi	a0,a0,684 # 8000d2ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.140>
80006ee4:	fca42223          	sw	a0,-60(s0)
80006ee8:	00300513          	li	a0,3
80006eec:	fca42423          	sw	a0,-56(s0)
80006ef0:	fc042a23          	sw	zero,-44(s0)
80006ef4:	fdc40613          	addi	a2,s0,-36
80006ef8:	0144a503          	lw	a0,20(s1)
80006efc:	0184a583          	lw	a1,24(s1)
80006f00:	fcc42623          	sw	a2,-52(s0)
80006f04:	00200613          	li	a2,2
80006f08:	fcc42823          	sw	a2,-48(s0)
80006f0c:	fc440613          	addi	a2,s0,-60
80006f10:	00001097          	auipc	ra,0x1
80006f14:	090080e7          	jalr	144(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006f18:	03c12083          	lw	ra,60(sp)
80006f1c:	03812403          	lw	s0,56(sp)
80006f20:	03412483          	lw	s1,52(sp)
80006f24:	04010113          	addi	sp,sp,64
80006f28:	00008067          	ret

80006f2c <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>:
80006f2c:	ff010113          	addi	sp,sp,-16
80006f30:	00112623          	sw	ra,12(sp)
80006f34:	00812423          	sw	s0,8(sp)
80006f38:	01010413          	addi	s0,sp,16
80006f3c:	00050613          	mv	a2,a0
80006f40:	8000d537          	lui	a0,0x8000d
80006f44:	2c550513          	addi	a0,a0,709 # 8000d2c5 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.220>
80006f48:	02b00593          	li	a1,43
80006f4c:	00000097          	auipc	ra,0x0
80006f50:	180080e7          	jalr	384(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80006f54 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E>:
80006f54:	fb010113          	addi	sp,sp,-80
80006f58:	04112623          	sw	ra,76(sp)
80006f5c:	04812423          	sw	s0,72(sp)
80006f60:	04912223          	sw	s1,68(sp)
80006f64:	05212023          	sw	s2,64(sp)
80006f68:	03312e23          	sw	s3,60(sp)
80006f6c:	03412c23          	sw	s4,56(sp)
80006f70:	03512a23          	sw	s5,52(sp)
80006f74:	05010413          	addi	s0,sp,80
80006f78:	0185a483          	lw	s1,24(a1)
80006f7c:	0145a903          	lw	s2,20(a1)
80006f80:	00c4aa83          	lw	s5,12(s1)
80006f84:	00050993          	mv	s3,a0
80006f88:	8000d5b7          	lui	a1,0x8000d
80006f8c:	30858593          	addi	a1,a1,776 # 8000d308 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.222>
80006f90:	00c00613          	li	a2,12
80006f94:	00090513          	mv	a0,s2
80006f98:	000a80e7          	jalr	s5
80006f9c:	00100a13          	li	s4,1
80006fa0:	0c051c63          	bnez	a0,80007078 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006fa4:	0049a503          	lw	a0,4(s3)
80006fa8:	00850593          	addi	a1,a0,8
80006fac:	00c50613          	addi	a2,a0,12
80006fb0:	fca42623          	sw	a0,-52(s0)
80006fb4:	8000a537          	lui	a0,0x8000a
80006fb8:	fd050513          	addi	a0,a0,-48 # 80009fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80006fbc:	fca42823          	sw	a0,-48(s0)
80006fc0:	fcb42a23          	sw	a1,-44(s0)
80006fc4:	8000a537          	lui	a0,0x8000a
80006fc8:	9c850513          	addi	a0,a0,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80006fcc:	fca42c23          	sw	a0,-40(s0)
80006fd0:	fcc42e23          	sw	a2,-36(s0)
80006fd4:	fea42023          	sw	a0,-32(s0)
80006fd8:	8000d537          	lui	a0,0x8000d
80006fdc:	2f050513          	addi	a0,a0,752 # 8000d2f0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.221>
80006fe0:	faa42a23          	sw	a0,-76(s0)
80006fe4:	00300513          	li	a0,3
80006fe8:	faa42c23          	sw	a0,-72(s0)
80006fec:	fc042223          	sw	zero,-60(s0)
80006ff0:	fcc40593          	addi	a1,s0,-52
80006ff4:	fab42e23          	sw	a1,-68(s0)
80006ff8:	fca42023          	sw	a0,-64(s0)
80006ffc:	fb440613          	addi	a2,s0,-76
80007000:	00090513          	mv	a0,s2
80007004:	00048593          	mv	a1,s1
80007008:	00001097          	auipc	ra,0x1
8000700c:	f98080e7          	jalr	-104(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80007010:	06051463          	bnez	a0,80007078 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80007014:	8000d5b7          	lui	a1,0x8000d
80007018:	31458593          	addi	a1,a1,788 # 8000d314 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.223>
8000701c:	00200613          	li	a2,2
80007020:	00090513          	mv	a0,s2
80007024:	000a80e7          	jalr	s5
80007028:	04051863          	bnez	a0,80007078 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
8000702c:	0009a503          	lw	a0,0(s3)
80007030:	00052583          	lw	a1,0(a0)
80007034:	fcb42623          	sw	a1,-52(s0)
80007038:	00452583          	lw	a1,4(a0)
8000703c:	fcb42823          	sw	a1,-48(s0)
80007040:	00852583          	lw	a1,8(a0)
80007044:	fcb42a23          	sw	a1,-44(s0)
80007048:	00c52583          	lw	a1,12(a0)
8000704c:	fcb42c23          	sw	a1,-40(s0)
80007050:	01052583          	lw	a1,16(a0)
80007054:	fcb42e23          	sw	a1,-36(s0)
80007058:	01452503          	lw	a0,20(a0)
8000705c:	fea42023          	sw	a0,-32(s0)
80007060:	fcc40613          	addi	a2,s0,-52
80007064:	00090513          	mv	a0,s2
80007068:	00048593          	mv	a1,s1
8000706c:	00001097          	auipc	ra,0x1
80007070:	f34080e7          	jalr	-204(ra) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80007074:	00050a13          	mv	s4,a0
80007078:	000a0513          	mv	a0,s4
8000707c:	04c12083          	lw	ra,76(sp)
80007080:	04812403          	lw	s0,72(sp)
80007084:	04412483          	lw	s1,68(sp)
80007088:	04012903          	lw	s2,64(sp)
8000708c:	03c12983          	lw	s3,60(sp)
80007090:	03812a03          	lw	s4,56(sp)
80007094:	03412a83          	lw	s5,52(sp)
80007098:	05010113          	addi	sp,sp,80
8000709c:	00008067          	ret

800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>:
800070a0:	fe010113          	addi	sp,sp,-32
800070a4:	00112e23          	sw	ra,28(sp)
800070a8:	00812c23          	sw	s0,24(sp)
800070ac:	02010413          	addi	s0,sp,32
800070b0:	fea42623          	sw	a0,-20(s0)
800070b4:	feb42823          	sw	a1,-16(s0)
800070b8:	00100513          	li	a0,1
800070bc:	fea41a23          	sh	a0,-12(s0)
800070c0:	fec40513          	addi	a0,s0,-20
800070c4:	ffff9097          	auipc	ra,0xffff9
800070c8:	344080e7          	jalr	836(ra) # 80000408 <rust_begin_unwind>

800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>:
800070cc:	fd010113          	addi	sp,sp,-48
800070d0:	02112623          	sw	ra,44(sp)
800070d4:	02812423          	sw	s0,40(sp)
800070d8:	03010413          	addi	s0,sp,48
800070dc:	fea42823          	sw	a0,-16(s0)
800070e0:	feb42a23          	sw	a1,-12(s0)
800070e4:	ff040513          	addi	a0,s0,-16
800070e8:	fca42c23          	sw	a0,-40(s0)
800070ec:	00100513          	li	a0,1
800070f0:	fca42e23          	sw	a0,-36(s0)
800070f4:	fe042423          	sw	zero,-24(s0)
800070f8:	00400513          	li	a0,4
800070fc:	fea42023          	sw	a0,-32(s0)
80007100:	fe042223          	sw	zero,-28(s0)
80007104:	fd840513          	addi	a0,s0,-40
80007108:	00060593          	mv	a1,a2
8000710c:	00000097          	auipc	ra,0x0
80007110:	f94080e7          	jalr	-108(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>:
80007114:	fc010113          	addi	sp,sp,-64
80007118:	02112e23          	sw	ra,60(sp)
8000711c:	02812c23          	sw	s0,56(sp)
80007120:	04010413          	addi	s0,sp,64
80007124:	fca42423          	sw	a0,-56(s0)
80007128:	fcb42623          	sw	a1,-52(s0)
8000712c:	fcc40513          	addi	a0,s0,-52
80007130:	fea42423          	sw	a0,-24(s0)
80007134:	8000a537          	lui	a0,0x8000a
80007138:	9c850513          	addi	a0,a0,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
8000713c:	fea42623          	sw	a0,-20(s0)
80007140:	fc840593          	addi	a1,s0,-56
80007144:	feb42823          	sw	a1,-16(s0)
80007148:	fea42a23          	sw	a0,-12(s0)
8000714c:	8000d537          	lui	a0,0x8000d
80007150:	32850513          	addi	a0,a0,808 # 8000d328 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.231>
80007154:	fca42823          	sw	a0,-48(s0)
80007158:	00200513          	li	a0,2
8000715c:	fca42a23          	sw	a0,-44(s0)
80007160:	fe042023          	sw	zero,-32(s0)
80007164:	fe840593          	addi	a1,s0,-24
80007168:	fcb42c23          	sw	a1,-40(s0)
8000716c:	fca42e23          	sw	a0,-36(s0)
80007170:	fd040513          	addi	a0,s0,-48
80007174:	00060593          	mv	a1,a2
80007178:	00000097          	auipc	ra,0x0
8000717c:	f28080e7          	jalr	-216(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80007180 <_ZN4core9panicking13assert_failed17h4fcb3a6812de271fE>:
80007180:	ff010113          	addi	sp,sp,-16
80007184:	00112623          	sw	ra,12(sp)
80007188:	00812423          	sw	s0,8(sp)
8000718c:	01010413          	addi	s0,sp,16
80007190:	00060793          	mv	a5,a2
80007194:	fea42823          	sw	a0,-16(s0)
80007198:	feb42a23          	sw	a1,-12(s0)
8000719c:	8000d637          	lui	a2,0x8000d
800071a0:	33860613          	addi	a2,a2,824 # 8000d338 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.238>
800071a4:	8000c837          	lui	a6,0x8000c
800071a8:	7b880813          	addi	a6,a6,1976 # 8000c7b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.24>
800071ac:	ff040593          	addi	a1,s0,-16
800071b0:	ff440693          	addi	a3,s0,-12
800071b4:	00000513          	li	a0,0
800071b8:	00060713          	mv	a4,a2
800071bc:	00000097          	auipc	ra,0x0
800071c0:	008080e7          	jalr	8(ra) # 800071c4 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E>

800071c4 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E>:
800071c4:	f8010113          	addi	sp,sp,-128
800071c8:	06112e23          	sw	ra,124(sp)
800071cc:	06812c23          	sw	s0,120(sp)
800071d0:	06912a23          	sw	s1,116(sp)
800071d4:	07212823          	sw	s2,112(sp)
800071d8:	08010413          	addi	s0,sp,128
800071dc:	00080493          	mv	s1,a6
800071e0:	f8b42423          	sw	a1,-120(s0)
800071e4:	f8c42623          	sw	a2,-116(s0)
800071e8:	f8d42823          	sw	a3,-112(s0)
800071ec:	f8e42a23          	sw	a4,-108(s0)
800071f0:	00050c63          	beqz	a0,80007208 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x44>
800071f4:	00100593          	li	a1,1
800071f8:	02b51263          	bne	a0,a1,8000721c <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x58>
800071fc:	8000d537          	lui	a0,0x8000d
80007200:	34a50513          	addi	a0,a0,842 # 8000d34a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.241>
80007204:	00c0006f          	j	80007210 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x4c>
80007208:	8000d537          	lui	a0,0x8000d
8000720c:	34850513          	addi	a0,a0,840 # 8000d348 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.240>
80007210:	f8a42c23          	sw	a0,-104(s0)
80007214:	00200513          	li	a0,2
80007218:	0140006f          	j	8000722c <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x68>
8000721c:	8000d537          	lui	a0,0x8000d
80007220:	34c50513          	addi	a0,a0,844 # 8000d34c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.242>
80007224:	f8a42c23          	sw	a0,-104(s0)
80007228:	00700513          	li	a0,7
8000722c:	0007a583          	lw	a1,0(a5)
80007230:	f8a42e23          	sw	a0,-100(s0)
80007234:	04059663          	bnez	a1,80007280 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0xbc>
80007238:	f9840513          	addi	a0,s0,-104
8000723c:	faa42c23          	sw	a0,-72(s0)
80007240:	8000a537          	lui	a0,0x8000a
80007244:	fd050513          	addi	a0,a0,-48 # 80009fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80007248:	faa42e23          	sw	a0,-68(s0)
8000724c:	f8840513          	addi	a0,s0,-120
80007250:	fca42023          	sw	a0,-64(s0)
80007254:	8000a537          	lui	a0,0x8000a
80007258:	e8c50513          	addi	a0,a0,-372 # 80009e8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
8000725c:	fca42223          	sw	a0,-60(s0)
80007260:	f9040593          	addi	a1,s0,-112
80007264:	fcb42423          	sw	a1,-56(s0)
80007268:	fca42623          	sw	a0,-52(s0)
8000726c:	8000d537          	lui	a0,0x8000d
80007270:	37450513          	addi	a0,a0,884 # 8000d374 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.246>
80007274:	fca42c23          	sw	a0,-40(s0)
80007278:	00300513          	li	a0,3
8000727c:	0700006f          	j	800072ec <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x128>
80007280:	fa040513          	addi	a0,s0,-96
80007284:	01800613          	li	a2,24
80007288:	fa040913          	addi	s2,s0,-96
8000728c:	00078593          	mv	a1,a5
80007290:	00003097          	auipc	ra,0x3
80007294:	eb0080e7          	jalr	-336(ra) # 8000a140 <memcpy>
80007298:	f9840513          	addi	a0,s0,-104
8000729c:	faa42c23          	sw	a0,-72(s0)
800072a0:	8000a537          	lui	a0,0x8000a
800072a4:	fd050513          	addi	a0,a0,-48 # 80009fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
800072a8:	faa42e23          	sw	a0,-68(s0)
800072ac:	fd242023          	sw	s2,-64(s0)
800072b0:	80008537          	lui	a0,0x80008
800072b4:	f6850513          	addi	a0,a0,-152 # 80007f68 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hefd8b8a880068ae0E>
800072b8:	fca42223          	sw	a0,-60(s0)
800072bc:	f8840513          	addi	a0,s0,-120
800072c0:	fca42423          	sw	a0,-56(s0)
800072c4:	8000a537          	lui	a0,0x8000a
800072c8:	e8c50513          	addi	a0,a0,-372 # 80009e8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
800072cc:	fca42623          	sw	a0,-52(s0)
800072d0:	f9040593          	addi	a1,s0,-112
800072d4:	fcb42823          	sw	a1,-48(s0)
800072d8:	fca42a23          	sw	a0,-44(s0)
800072dc:	8000d537          	lui	a0,0x8000d
800072e0:	39850513          	addi	a0,a0,920 # 8000d398 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.249>
800072e4:	fca42c23          	sw	a0,-40(s0)
800072e8:	00400513          	li	a0,4
800072ec:	fca42e23          	sw	a0,-36(s0)
800072f0:	fe042423          	sw	zero,-24(s0)
800072f4:	fb840593          	addi	a1,s0,-72
800072f8:	feb42023          	sw	a1,-32(s0)
800072fc:	fea42223          	sw	a0,-28(s0)
80007300:	fd840513          	addi	a0,s0,-40
80007304:	00048593          	mv	a1,s1
80007308:	00000097          	auipc	ra,0x0
8000730c:	d98080e7          	jalr	-616(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80007310 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>:
80007310:	fc010113          	addi	sp,sp,-64
80007314:	02112e23          	sw	ra,60(sp)
80007318:	02812c23          	sw	s0,56(sp)
8000731c:	04010413          	addi	s0,sp,64
80007320:	fca42023          	sw	a0,-64(s0)
80007324:	fcb42223          	sw	a1,-60(s0)
80007328:	fcc42423          	sw	a2,-56(s0)
8000732c:	fcd42623          	sw	a3,-52(s0)
80007330:	fc040513          	addi	a0,s0,-64
80007334:	fea42423          	sw	a0,-24(s0)
80007338:	8000a537          	lui	a0,0x8000a
8000733c:	fd050513          	addi	a0,a0,-48 # 80009fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80007340:	fea42623          	sw	a0,-20(s0)
80007344:	fc840513          	addi	a0,s0,-56
80007348:	fea42823          	sw	a0,-16(s0)
8000734c:	8000a537          	lui	a0,0x8000a
80007350:	e8c50513          	addi	a0,a0,-372 # 80009e8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
80007354:	fea42a23          	sw	a0,-12(s0)
80007358:	8000d537          	lui	a0,0x8000d
8000735c:	3bc50513          	addi	a0,a0,956 # 8000d3bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.251>
80007360:	fca42823          	sw	a0,-48(s0)
80007364:	00200513          	li	a0,2
80007368:	fca42a23          	sw	a0,-44(s0)
8000736c:	fe042023          	sw	zero,-32(s0)
80007370:	fe840593          	addi	a1,s0,-24
80007374:	fcb42c23          	sw	a1,-40(s0)
80007378:	fca42e23          	sw	a0,-36(s0)
8000737c:	fd040513          	addi	a0,s0,-48
80007380:	00070593          	mv	a1,a4
80007384:	00000097          	auipc	ra,0x0
80007388:	d1c080e7          	jalr	-740(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

8000738c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>:
8000738c:	fb010113          	addi	sp,sp,-80
80007390:	04112623          	sw	ra,76(sp)
80007394:	04812423          	sw	s0,72(sp)
80007398:	04912223          	sw	s1,68(sp)
8000739c:	05212023          	sw	s2,64(sp)
800073a0:	03312e23          	sw	s3,60(sp)
800073a4:	03412c23          	sw	s4,56(sp)
800073a8:	03512a23          	sw	s5,52(sp)
800073ac:	03612823          	sw	s6,48(sp)
800073b0:	03712623          	sw	s7,44(sp)
800073b4:	03812423          	sw	s8,40(sp)
800073b8:	03912223          	sw	s9,36(sp)
800073bc:	03a12023          	sw	s10,32(sp)
800073c0:	01b12e23          	sw	s11,28(sp)
800073c4:	05010413          	addi	s0,sp,80
800073c8:	00060c13          	mv	s8,a2
800073cc:	00058913          	mv	s2,a1
800073d0:	00000993          	li	s3,0
800073d4:	00000b93          	li	s7,0
800073d8:	00000d13          	li	s10,0
800073dc:	0a0a15b7          	lui	a1,0xa0a1
800073e0:	a0a58a93          	addi	s5,a1,-1526 # a0a0a0a <.Lline_table_start2+0xa09f65c>
800073e4:	010105b7          	lui	a1,0x1010
800073e8:	10058b13          	addi	s6,a1,256 # 1010100 <.Lline_table_start2+0x100ed52>
800073ec:	00852583          	lw	a1,8(a0)
800073f0:	fcb42423          	sw	a1,-56(s0)
800073f4:	00052583          	lw	a1,0(a0)
800073f8:	fcb42223          	sw	a1,-60(s0)
800073fc:	00452503          	lw	a0,4(a0)
80007400:	fca42023          	sw	a0,-64(s0)
80007404:	fff90513          	addi	a0,s2,-1
80007408:	faa42c23          	sw	a0,-72(s0)
8000740c:	40c00533          	neg	a0,a2
80007410:	faa42e23          	sw	a0,-68(s0)
80007414:	00a00d93          	li	s11,10
80007418:	80808537          	lui	a0,0x80808
8000741c:	08050a13          	addi	s4,a0,128 # 80808080 <KALLOC_BUFFER+0x7f8080>
80007420:	0400006f          	j	80007460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xd4>
80007424:	fb842503          	lw	a0,-72(s0)
80007428:	00950533          	add	a0,a0,s1
8000742c:	00054503          	lbu	a0,0(a0)
80007430:	ff650513          	addi	a0,a0,-10
80007434:	00153513          	seqz	a0,a0
80007438:	fc842583          	lw	a1,-56(s0)
8000743c:	00a58023          	sb	a0,0(a1)
80007440:	fc042503          	lw	a0,-64(s0)
80007444:	00c52683          	lw	a3,12(a0)
80007448:	41348633          	sub	a2,s1,s3
8000744c:	013905b3          	add	a1,s2,s3
80007450:	fc442503          	lw	a0,-60(s0)
80007454:	000680e7          	jalr	a3
80007458:	000c8993          	mv	s3,s9
8000745c:	18051663          	bnez	a0,800075e8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x25c>
80007460:	001d7513          	andi	a0,s10,1
80007464:	16051e63          	bnez	a0,800075e0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x254>
80007468:	057c7863          	bgeu	s8,s7,800074b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x12c>
8000746c:	00100d13          	li	s10,1
80007470:	00098c93          	mv	s9,s3
80007474:	000c0493          	mv	s1,s8
80007478:	17898463          	beq	s3,s8,800075e0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x254>
8000747c:	fc842503          	lw	a0,-56(s0)
80007480:	00054503          	lbu	a0,0(a0)
80007484:	02050263          	beqz	a0,800074a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x11c>
80007488:	fc042503          	lw	a0,-64(s0)
8000748c:	00c52683          	lw	a3,12(a0)
80007490:	00400613          	li	a2,4
80007494:	fc442503          	lw	a0,-60(s0)
80007498:	8000c5b7          	lui	a1,0x8000c
8000749c:	02e58593          	addi	a1,a1,46 # 8000c02e <.Lanon.368313aae6f24ed1916c56358b6b666c.4+0x6>
800074a0:	000680e7          	jalr	a3
800074a4:	14051263          	bnez	a0,800075e8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x25c>
800074a8:	f7349ee3          	bne	s1,s3,80007424 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x98>
800074ac:	00000513          	li	a0,0
800074b0:	f89ff06f          	j	80007438 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xac>
800074b4:	fb7c6ce3          	bltu	s8,s7,8000746c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xe0>
800074b8:	417c05b3          	sub	a1,s8,s7
800074bc:	01790533          	add	a0,s2,s7
800074c0:	00700613          	li	a2,7
800074c4:	02b66863          	bltu	a2,a1,800074f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x168>
800074c8:	117c0263          	beq	s8,s7,800075cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
800074cc:	00000593          	li	a1,0
800074d0:	fbc42603          	lw	a2,-68(s0)
800074d4:	01760633          	add	a2,a2,s7
800074d8:	00050693          	mv	a3,a0
800074dc:	0006c703          	lbu	a4,0(a3)
800074e0:	0bb70c63          	beq	a4,s11,80007598 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x20c>
800074e4:	fff58593          	addi	a1,a1,-1
800074e8:	00168693          	addi	a3,a3,1
800074ec:	feb618e3          	bne	a2,a1,800074dc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x150>
800074f0:	0dc0006f          	j	800075cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
800074f4:	00350713          	addi	a4,a0,3
800074f8:	ffc77713          	andi	a4,a4,-4
800074fc:	40a70633          	sub	a2,a4,a0
80007500:	02060463          	beqz	a2,80007528 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x19c>
80007504:	00000693          	li	a3,0
80007508:	00d507b3          	add	a5,a0,a3
8000750c:	0007c783          	lbu	a5,0(a5)
80007510:	09b78663          	beq	a5,s11,8000759c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x210>
80007514:	00168693          	addi	a3,a3,1
80007518:	fed618e3          	bne	a2,a3,80007508 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x17c>
8000751c:	ff858693          	addi	a3,a1,-8
80007520:	00c6f663          	bgeu	a3,a2,8000752c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1a0>
80007524:	0480006f          	j	8000756c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1e0>
80007528:	ff858693          	addi	a3,a1,-8
8000752c:	00400793          	li	a5,4
80007530:	00e78733          	add	a4,a5,a4
80007534:	ffc72783          	lw	a5,-4(a4)
80007538:	00072803          	lw	a6,0(a4)
8000753c:	0157c8b3          	xor	a7,a5,s5
80007540:	01584833          	xor	a6,a6,s5
80007544:	410b02b3          	sub	t0,s6,a6
80007548:	0102e833          	or	a6,t0,a6
8000754c:	411b08b3          	sub	a7,s6,a7
80007550:	00f8e7b3          	or	a5,a7,a5
80007554:	0107f7b3          	and	a5,a5,a6
80007558:	0147f7b3          	and	a5,a5,s4
8000755c:	01479863          	bne	a5,s4,8000756c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1e0>
80007560:	00860613          	addi	a2,a2,8
80007564:	00870713          	addi	a4,a4,8
80007568:	fcc6f6e3          	bgeu	a3,a2,80007534 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1a8>
8000756c:	06b60063          	beq	a2,a1,800075cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
80007570:	00c506b3          	add	a3,a0,a2
80007574:	40c005b3          	neg	a1,a2
80007578:	fbc42603          	lw	a2,-68(s0)
8000757c:	01760633          	add	a2,a2,s7
80007580:	0006c703          	lbu	a4,0(a3)
80007584:	01b70a63          	beq	a4,s11,80007598 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x20c>
80007588:	fff58593          	addi	a1,a1,-1
8000758c:	00168693          	addi	a3,a3,1
80007590:	feb618e3          	bne	a2,a1,80007580 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1f4>
80007594:	0380006f          	j	800075cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
80007598:	40b006b3          	neg	a3,a1
8000759c:	017685b3          	add	a1,a3,s7
800075a0:	00158b93          	addi	s7,a1,1
800075a4:	f185f8e3          	bgeu	a1,s8,800074b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x128>
800075a8:	00d50533          	add	a0,a0,a3
800075ac:	00054503          	lbu	a0,0(a0)
800075b0:	f1b512e3          	bne	a0,s11,800074b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x128>
800075b4:	000b8c93          	mv	s9,s7
800075b8:	000b8493          	mv	s1,s7
800075bc:	fc842503          	lw	a0,-56(s0)
800075c0:	00054503          	lbu	a0,0(a0)
800075c4:	ee0502e3          	beqz	a0,800074a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x11c>
800075c8:	ec1ff06f          	j	80007488 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xfc>
800075cc:	000c0b93          	mv	s7,s8
800075d0:	00100d13          	li	s10,1
800075d4:	00098c93          	mv	s9,s3
800075d8:	000c0493          	mv	s1,s8
800075dc:	eb8990e3          	bne	s3,s8,8000747c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xf0>
800075e0:	00000513          	li	a0,0
800075e4:	0080006f          	j	800075ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x260>
800075e8:	00100513          	li	a0,1
800075ec:	04c12083          	lw	ra,76(sp)
800075f0:	04812403          	lw	s0,72(sp)
800075f4:	04412483          	lw	s1,68(sp)
800075f8:	04012903          	lw	s2,64(sp)
800075fc:	03c12983          	lw	s3,60(sp)
80007600:	03812a03          	lw	s4,56(sp)
80007604:	03412a83          	lw	s5,52(sp)
80007608:	03012b03          	lw	s6,48(sp)
8000760c:	02c12b83          	lw	s7,44(sp)
80007610:	02812c03          	lw	s8,40(sp)
80007614:	02412c83          	lw	s9,36(sp)
80007618:	02012d03          	lw	s10,32(sp)
8000761c:	01c12d83          	lw	s11,28(sp)
80007620:	05010113          	addi	sp,sp,80
80007624:	00008067          	ret

80007628 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E>:
80007628:	fe010113          	addi	sp,sp,-32
8000762c:	00112e23          	sw	ra,28(sp)
80007630:	00812c23          	sw	s0,24(sp)
80007634:	00912a23          	sw	s1,20(sp)
80007638:	01212823          	sw	s2,16(sp)
8000763c:	01312623          	sw	s3,12(sp)
80007640:	01412423          	sw	s4,8(sp)
80007644:	02010413          	addi	s0,sp,32
80007648:	00852903          	lw	s2,8(a0)
8000764c:	00094603          	lbu	a2,0(s2)
80007650:	00052483          	lw	s1,0(a0)
80007654:	00452983          	lw	s3,4(a0)
80007658:	04060863          	beqz	a2,800076a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E+0x80>
8000765c:	00c9a703          	lw	a4,12(s3)
80007660:	8000c6b7          	lui	a3,0x8000c
80007664:	02e68693          	addi	a3,a3,46 # 8000c02e <.Lanon.368313aae6f24ed1916c56358b6b666c.4+0x6>
80007668:	00400613          	li	a2,4
8000766c:	00048513          	mv	a0,s1
80007670:	00058a13          	mv	s4,a1
80007674:	00068593          	mv	a1,a3
80007678:	000700e7          	jalr	a4
8000767c:	000a0593          	mv	a1,s4
80007680:	02050463          	beqz	a0,800076a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E+0x80>
80007684:	00100513          	li	a0,1
80007688:	01c12083          	lw	ra,28(sp)
8000768c:	01812403          	lw	s0,24(sp)
80007690:	01412483          	lw	s1,20(sp)
80007694:	01012903          	lw	s2,16(sp)
80007698:	00c12983          	lw	s3,12(sp)
8000769c:	00812a03          	lw	s4,8(sp)
800076a0:	02010113          	addi	sp,sp,32
800076a4:	00008067          	ret
800076a8:	ff658513          	addi	a0,a1,-10
800076ac:	00153513          	seqz	a0,a0
800076b0:	00a90023          	sb	a0,0(s2)
800076b4:	0109a303          	lw	t1,16(s3)
800076b8:	00048513          	mv	a0,s1
800076bc:	01c12083          	lw	ra,28(sp)
800076c0:	01812403          	lw	s0,24(sp)
800076c4:	01412483          	lw	s1,20(sp)
800076c8:	01012903          	lw	s2,16(sp)
800076cc:	00c12983          	lw	s3,12(sp)
800076d0:	00812a03          	lw	s4,8(sp)
800076d4:	02010113          	addi	sp,sp,32
800076d8:	00030067          	jr	t1

800076dc <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>:
800076dc:	fa010113          	addi	sp,sp,-96
800076e0:	04112e23          	sw	ra,92(sp)
800076e4:	04812c23          	sw	s0,88(sp)
800076e8:	04912a23          	sw	s1,84(sp)
800076ec:	05212823          	sw	s2,80(sp)
800076f0:	05312623          	sw	s3,76(sp)
800076f4:	05412423          	sw	s4,72(sp)
800076f8:	05512223          	sw	s5,68(sp)
800076fc:	05612023          	sw	s6,64(sp)
80007700:	03712e23          	sw	s7,60(sp)
80007704:	03812c23          	sw	s8,56(sp)
80007708:	06010413          	addi	s0,sp,96
8000770c:	00050493          	mv	s1,a0
80007710:	00454503          	lbu	a0,4(a0)
80007714:	00100b13          	li	s6,1
80007718:	00100a93          	li	s5,1
8000771c:	04050063          	beqz	a0,8000775c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x80>
80007720:	01548223          	sb	s5,4(s1)
80007724:	016482a3          	sb	s6,5(s1)
80007728:	00048513          	mv	a0,s1
8000772c:	05c12083          	lw	ra,92(sp)
80007730:	05812403          	lw	s0,88(sp)
80007734:	05412483          	lw	s1,84(sp)
80007738:	05012903          	lw	s2,80(sp)
8000773c:	04c12983          	lw	s3,76(sp)
80007740:	04812a03          	lw	s4,72(sp)
80007744:	04412a83          	lw	s5,68(sp)
80007748:	04012b03          	lw	s6,64(sp)
8000774c:	03c12b83          	lw	s7,60(sp)
80007750:	03812c03          	lw	s8,56(sp)
80007754:	06010113          	addi	sp,sp,96
80007758:	00008067          	ret
8000775c:	00070993          	mv	s3,a4
80007760:	00068913          	mv	s2,a3
80007764:	0004aa03          	lw	s4,0(s1)
80007768:	01ca2503          	lw	a0,28(s4)
8000776c:	0054c683          	lbu	a3,5(s1)
80007770:	00457713          	andi	a4,a0,4
80007774:	00071e63          	bnez	a4,80007790 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0xb4>
80007778:	00058b93          	mv	s7,a1
8000777c:	00060c13          	mv	s8,a2
80007780:	10069c63          	bnez	a3,80007898 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x1bc>
80007784:	8000d5b7          	lui	a1,0x8000d
80007788:	3e458593          	addi	a1,a1,996 # 8000d3e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.254>
8000778c:	1140006f          	j	800078a0 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x1c4>
80007790:	04069063          	bnez	a3,800077d0 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0xf4>
80007794:	018a2683          	lw	a3,24(s4)
80007798:	014a2503          	lw	a0,20(s4)
8000779c:	00c6a703          	lw	a4,12(a3)
800077a0:	8000d6b7          	lui	a3,0x8000d
800077a4:	3e968693          	addi	a3,a3,1001 # 8000d3e9 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.256>
800077a8:	00060a93          	mv	s5,a2
800077ac:	00300613          	li	a2,3
800077b0:	00058b93          	mv	s7,a1
800077b4:	00068593          	mv	a1,a3
800077b8:	000700e7          	jalr	a4
800077bc:	000a8613          	mv	a2,s5
800077c0:	00100a93          	li	s5,1
800077c4:	f4051ee3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800077c8:	000b8593          	mv	a1,s7
800077cc:	01ca2503          	lw	a0,28(s4)
800077d0:	014a2683          	lw	a3,20(s4)
800077d4:	018a2703          	lw	a4,24(s4)
800077d8:	00100a93          	li	s5,1
800077dc:	fb5409a3          	sb	s5,-77(s0)
800077e0:	fad42223          	sw	a3,-92(s0)
800077e4:	fae42423          	sw	a4,-88(s0)
800077e8:	fb340693          	addi	a3,s0,-77
800077ec:	fad42623          	sw	a3,-84(s0)
800077f0:	010a2683          	lw	a3,16(s4)
800077f4:	020a4703          	lbu	a4,32(s4)
800077f8:	000a2783          	lw	a5,0(s4)
800077fc:	004a2803          	lw	a6,4(s4)
80007800:	008a2883          	lw	a7,8(s4)
80007804:	00ca2283          	lw	t0,12(s4)
80007808:	fca42823          	sw	a0,-48(s0)
8000780c:	fcd42223          	sw	a3,-60(s0)
80007810:	fce40a23          	sb	a4,-44(s0)
80007814:	faf42a23          	sw	a5,-76(s0)
80007818:	fb042c23          	sw	a6,-72(s0)
8000781c:	fb142e23          	sw	a7,-68(s0)
80007820:	fc542023          	sw	t0,-64(s0)
80007824:	fa440513          	addi	a0,s0,-92
80007828:	fca42423          	sw	a0,-56(s0)
8000782c:	8000d537          	lui	a0,0x8000d
80007830:	3cc50513          	addi	a0,a0,972 # 8000d3cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>
80007834:	fca42623          	sw	a0,-52(s0)
80007838:	fa440513          	addi	a0,s0,-92
8000783c:	00000097          	auipc	ra,0x0
80007840:	b50080e7          	jalr	-1200(ra) # 8000738c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>
80007844:	ec051ee3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007848:	8000d5b7          	lui	a1,0x8000d
8000784c:	3b858593          	addi	a1,a1,952 # 8000d3b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>
80007850:	fa440513          	addi	a0,s0,-92
80007854:	00200613          	li	a2,2
80007858:	00000097          	auipc	ra,0x0
8000785c:	b34080e7          	jalr	-1228(ra) # 8000738c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>
80007860:	ec0510e3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007864:	00c9a603          	lw	a2,12(s3)
80007868:	fb440593          	addi	a1,s0,-76
8000786c:	00090513          	mv	a0,s2
80007870:	000600e7          	jalr	a2
80007874:	ea0516e3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007878:	fcc42583          	lw	a1,-52(s0)
8000787c:	fc842503          	lw	a0,-56(s0)
80007880:	00c5a683          	lw	a3,12(a1)
80007884:	8000d5b7          	lui	a1,0x8000d
80007888:	3ec58593          	addi	a1,a1,1004 # 8000d3ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.257>
8000788c:	00200613          	li	a2,2
80007890:	000680e7          	jalr	a3
80007894:	07c0006f          	j	80007910 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x234>
80007898:	8000d5b7          	lui	a1,0x8000d
8000789c:	3e758593          	addi	a1,a1,999 # 8000d3e7 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.255>
800078a0:	018a2603          	lw	a2,24(s4)
800078a4:	014a2503          	lw	a0,20(s4)
800078a8:	00c62703          	lw	a4,12(a2)
800078ac:	0036c613          	xori	a2,a3,3
800078b0:	000700e7          	jalr	a4
800078b4:	00100a93          	li	s5,1
800078b8:	e60514e3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800078bc:	000c0613          	mv	a2,s8
800078c0:	000b8593          	mv	a1,s7
800078c4:	018a2683          	lw	a3,24(s4)
800078c8:	014a2503          	lw	a0,20(s4)
800078cc:	00c6a683          	lw	a3,12(a3)
800078d0:	000680e7          	jalr	a3
800078d4:	00100a93          	li	s5,1
800078d8:	e40514e3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800078dc:	018a2583          	lw	a1,24(s4)
800078e0:	014a2503          	lw	a0,20(s4)
800078e4:	00c5a683          	lw	a3,12(a1)
800078e8:	8000d5b7          	lui	a1,0x8000d
800078ec:	3b858593          	addi	a1,a1,952 # 8000d3b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>
800078f0:	00200613          	li	a2,2
800078f4:	000680e7          	jalr	a3
800078f8:	00100a93          	li	s5,1
800078fc:	e20512e3          	bnez	a0,80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007900:	00c9a603          	lw	a2,12(s3)
80007904:	00090513          	mv	a0,s2
80007908:	000a0593          	mv	a1,s4
8000790c:	000600e7          	jalr	a2
80007910:	00050a93          	mv	s5,a0
80007914:	e0dff06f          	j	80007720 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>

80007918 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E>:
80007918:	b7010113          	addi	sp,sp,-1168
8000791c:	48112623          	sw	ra,1164(sp)
80007920:	48812423          	sw	s0,1160(sp)
80007924:	48912223          	sw	s1,1156(sp)
80007928:	49212023          	sw	s2,1152(sp)
8000792c:	47312e23          	sw	s3,1148(sp)
80007930:	47412c23          	sw	s4,1144(sp)
80007934:	47512a23          	sw	s5,1140(sp)
80007938:	47612823          	sw	s6,1136(sp)
8000793c:	49010413          	addi	s0,sp,1168
80007940:	00068493          	mv	s1,a3
80007944:	00159793          	slli	a5,a1,0x1
80007948:	0187d713          	srli	a4,a5,0x18
8000794c:	00959693          	slli	a3,a1,0x9
80007950:	0096d813          	srli	a6,a3,0x9
80007954:	02070e63          	beqz	a4,80007990 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x78>
80007958:	008006b7          	lui	a3,0x800
8000795c:	00d866b3          	or	a3,a6,a3
80007960:	0017d893          	srli	a7,a5,0x1
80007964:	7f8007b7          	lui	a5,0x7f800
80007968:	02f88c63          	beq	a7,a5,800079a0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x88>
8000796c:	00f5f8b3          	and	a7,a1,a5
80007970:	02f88c63          	beq	a7,a5,800079a8 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x90>
80007974:	0016f793          	andi	a5,a3,1
80007978:	02089c63          	bnez	a7,800079b0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x98>
8000797c:	06080a63          	beqz	a6,800079f0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xd8>
80007980:	00000813          	li	a6,0
80007984:	00000893          	li	a7,0
80007988:	f6a70713          	addi	a4,a4,-150
8000798c:	0580006f          	j	800079e4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xcc>
80007990:	0086d693          	srli	a3,a3,0x8
80007994:	0017d893          	srli	a7,a5,0x1
80007998:	7f8007b7          	lui	a5,0x7f800
8000799c:	fcf898e3          	bne	a7,a5,8000796c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x54>
800079a0:	00300793          	li	a5,3
800079a4:	0500006f          	j	800079f4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800079a8:	00200793          	li	a5,2
800079ac:	0480006f          	j	800079f4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800079b0:	00800837          	lui	a6,0x800
800079b4:	03069063          	bne	a3,a6,800079d4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xbc>
800079b8:	00000813          	li	a6,0
800079bc:	00000893          	li	a7,0
800079c0:	f6870713          	addi	a4,a4,-152
800079c4:	00200293          	li	t0,2
800079c8:	020006b7          	lui	a3,0x2000
800079cc:	00100793          	li	a5,1
800079d0:	0240006f          	j	800079f4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800079d4:	00000813          	li	a6,0
800079d8:	00000893          	li	a7,0
800079dc:	00169693          	slli	a3,a3,0x1
800079e0:	f6970713          	addi	a4,a4,-151
800079e4:	0017c793          	xori	a5,a5,1
800079e8:	00100293          	li	t0,1
800079ec:	0080006f          	j	800079f4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800079f0:	00400793          	li	a5,4
800079f4:	fad42c23          	sw	a3,-72(s0)
800079f8:	fb042e23          	sw	a6,-68(s0)
800079fc:	fc042223          	sw	zero,-60(s0)
80007a00:	00100a13          	li	s4,1
80007a04:	fd442023          	sw	s4,-64(s0)
80007a08:	fc542423          	sw	t0,-56(s0)
80007a0c:	fd142623          	sw	a7,-52(s0)
80007a10:	fce41823          	sh	a4,-48(s0)
80007a14:	ffe78693          	addi	a3,a5,-2 # 7f7ffffe <.Lline_table_start2+0x7f7fec50>
80007a18:	fcf40923          	sb	a5,-46(s0)
80007a1c:	02068863          	beqz	a3,80007a4c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x134>
80007a20:	00300793          	li	a5,3
80007a24:	00f6e463          	bltu	a3,a5,80007a2c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x114>
80007a28:	00300693          	li	a3,3
80007a2c:	00100793          	li	a5,1
80007a30:	0405c463          	bltz	a1,80007a78 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x160>
80007a34:	8000da37          	lui	s4,0x8000d
80007a38:	264a0a13          	addi	s4,s4,612 # 8000d264 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>
80007a3c:	00100813          	li	a6,1
80007a40:	00100a93          	li	s5,1
80007a44:	04060463          	beqz	a2,80007a8c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x174>
80007a48:	04c0006f          	j	80007a94 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x17c>
80007a4c:	00000a93          	li	s5,0
80007a50:	00200593          	li	a1,2
80007a54:	f6b41c23          	sh	a1,-136(s0)
80007a58:	8000d5b7          	lui	a1,0x8000d
80007a5c:	26558593          	addi	a1,a1,613 # 8000d265 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>
80007a60:	f6b42e23          	sw	a1,-132(s0)
80007a64:	00300593          	li	a1,3
80007a68:	f8b42023          	sw	a1,-128(s0)
80007a6c:	f7840613          	addi	a2,s0,-136
80007a70:	00100593          	li	a1,1
80007a74:	1b80006f          	j	80007c2c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007a78:	8000d837          	lui	a6,0x8000d
80007a7c:	26380813          	addi	a6,a6,611 # 8000d263 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>
80007a80:	00080a13          	mv	s4,a6
80007a84:	00100a93          	li	s5,1
80007a88:	00061663          	bnez	a2,80007a94 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x17c>
80007a8c:	01f5da93          	srli	s5,a1,0x1f
80007a90:	00080a13          	mv	s4,a6
80007a94:	00200593          	li	a1,2
80007a98:	02f68a63          	beq	a3,a5,80007acc <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x1b4>
80007a9c:	04b69a63          	bne	a3,a1,80007af0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x1d8>
80007aa0:	f6b41c23          	sh	a1,-136(s0)
80007aa4:	10048263          	beqz	s1,80007ba8 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x290>
80007aa8:	8000d5b7          	lui	a1,0x8000d
80007aac:	26158593          	addi	a1,a1,609 # 8000d261 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007ab0:	f6b42e23          	sw	a1,-132(s0)
80007ab4:	00200593          	li	a1,2
80007ab8:	f8b42023          	sw	a1,-128(s0)
80007abc:	f8041223          	sh	zero,-124(s0)
80007ac0:	f8942423          	sw	s1,-120(s0)
80007ac4:	f7840613          	addi	a2,s0,-136
80007ac8:	1640006f          	j	80007c2c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007acc:	f6b41c23          	sh	a1,-136(s0)
80007ad0:	8000d5b7          	lui	a1,0x8000d
80007ad4:	26858593          	addi	a1,a1,616 # 8000d268 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>
80007ad8:	f6b42e23          	sw	a1,-132(s0)
80007adc:	00300593          	li	a1,3
80007ae0:	f8b42023          	sw	a1,-128(s0)
80007ae4:	00100593          	li	a1,1
80007ae8:	f7840613          	addi	a2,s0,-136
80007aec:	1400006f          	j	80007c2c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007af0:	00050b13          	mv	s6,a0
80007af4:	01071593          	slli	a1,a4,0x10
80007af8:	41f5d513          	srai	a0,a1,0x1f
80007afc:	fef57513          	andi	a0,a0,-17
80007b00:	00550513          	addi	a0,a0,5
80007b04:	4105d593          	srai	a1,a1,0x10
80007b08:	00002097          	auipc	ra,0x2
80007b0c:	568080e7          	jalr	1384(ra) # 8000a070 <__mulsi3>
80007b10:	00655593          	srli	a1,a0,0x6
80007b14:	0fb00613          	li	a2,251
80007b18:	14c5fc63          	bgeu	a1,a2,80007c70 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x358>
80007b1c:	00455513          	srli	a0,a0,0x4
80007b20:	00f4d593          	srli	a1,s1,0xf
80007b24:	01550993          	addi	s3,a0,21
80007b28:	00058663          	beqz	a1,80007b34 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x21c>
80007b2c:	ffff8537          	lui	a0,0xffff8
80007b30:	0080006f          	j	80007b38 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x220>
80007b34:	40900533          	neg	a0,s1
80007b38:	01051513          	slli	a0,a0,0x10
80007b3c:	41055913          	srai	s2,a0,0x10
80007b40:	f7840513          	addi	a0,s0,-136
80007b44:	fb840593          	addi	a1,s0,-72
80007b48:	b7840613          	addi	a2,s0,-1160
80007b4c:	00098693          	mv	a3,s3
80007b50:	00090713          	mv	a4,s2
80007b54:	ffffe097          	auipc	ra,0xffffe
80007b58:	6bc080e7          	jalr	1724(ra) # 80006210 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E>
80007b5c:	f7842503          	lw	a0,-136(s0)
80007b60:	06050263          	beqz	a0,80007bc4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2ac>
80007b64:	f8042503          	lw	a0,-128(s0)
80007b68:	f7c42583          	lw	a1,-132(s0)
80007b6c:	f7842603          	lw	a2,-136(s0)
80007b70:	faa42823          	sw	a0,-80(s0)
80007b74:	fab42623          	sw	a1,-84(s0)
80007b78:	fac42423          	sw	a2,-88(s0)
80007b7c:	fb041603          	lh	a2,-80(s0)
80007b80:	06c95463          	bge	s2,a2,80007be8 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2d0>
80007b84:	fa842503          	lw	a0,-88(s0)
80007b88:	fac42583          	lw	a1,-84(s0)
80007b8c:	f7840713          	addi	a4,s0,-136
80007b90:	00400793          	li	a5,4
80007b94:	00048693          	mv	a3,s1
80007b98:	fffff097          	auipc	ra,0xfffff
80007b9c:	158080e7          	jalr	344(ra) # 80006cf0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>
80007ba0:	00050613          	mv	a2,a0
80007ba4:	0840006f          	j	80007c28 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x310>
80007ba8:	8000d5b7          	lui	a1,0x8000d
80007bac:	26b58593          	addi	a1,a1,619 # 8000d26b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007bb0:	f6b42e23          	sw	a1,-132(s0)
80007bb4:	00100593          	li	a1,1
80007bb8:	f8b42023          	sw	a1,-128(s0)
80007bbc:	f7840613          	addi	a2,s0,-136
80007bc0:	06c0006f          	j	80007c2c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007bc4:	fa840513          	addi	a0,s0,-88
80007bc8:	fb840593          	addi	a1,s0,-72
80007bcc:	b7840613          	addi	a2,s0,-1160
80007bd0:	00098693          	mv	a3,s3
80007bd4:	00090713          	mv	a4,s2
80007bd8:	ffffc097          	auipc	ra,0xffffc
80007bdc:	774080e7          	jalr	1908(ra) # 8000434c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E>
80007be0:	fb041603          	lh	a2,-80(s0)
80007be4:	fac940e3          	blt	s2,a2,80007b84 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x26c>
80007be8:	00200593          	li	a1,2
80007bec:	f6b41c23          	sh	a1,-136(s0)
80007bf0:	02048063          	beqz	s1,80007c10 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2f8>
80007bf4:	8000d537          	lui	a0,0x8000d
80007bf8:	26150513          	addi	a0,a0,609 # 8000d261 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007bfc:	f6a42e23          	sw	a0,-132(s0)
80007c00:	f8b42023          	sw	a1,-128(s0)
80007c04:	f8041223          	sh	zero,-124(s0)
80007c08:	f8942423          	sw	s1,-120(s0)
80007c0c:	0180006f          	j	80007c24 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x30c>
80007c10:	8000d537          	lui	a0,0x8000d
80007c14:	26b50513          	addi	a0,a0,619 # 8000d26b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007c18:	f6a42e23          	sw	a0,-132(s0)
80007c1c:	00100593          	li	a1,1
80007c20:	f8b42023          	sw	a1,-128(s0)
80007c24:	f7840613          	addi	a2,s0,-136
80007c28:	000b0513          	mv	a0,s6
80007c2c:	fb442423          	sw	s4,-88(s0)
80007c30:	fb542623          	sw	s5,-84(s0)
80007c34:	fac42823          	sw	a2,-80(s0)
80007c38:	fab42a23          	sw	a1,-76(s0)
80007c3c:	fa840593          	addi	a1,s0,-88
80007c40:	00001097          	auipc	ra,0x1
80007c44:	c5c080e7          	jalr	-932(ra) # 8000889c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>
80007c48:	48c12083          	lw	ra,1164(sp)
80007c4c:	48812403          	lw	s0,1160(sp)
80007c50:	48412483          	lw	s1,1156(sp)
80007c54:	48012903          	lw	s2,1152(sp)
80007c58:	47c12983          	lw	s3,1148(sp)
80007c5c:	47812a03          	lw	s4,1144(sp)
80007c60:	47412a83          	lw	s5,1140(sp)
80007c64:	47012b03          	lw	s6,1136(sp)
80007c68:	49010113          	addi	sp,sp,1168
80007c6c:	00008067          	ret
80007c70:	8000d537          	lui	a0,0x8000d
80007c74:	26c50513          	addi	a0,a0,620 # 8000d26c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.106>
80007c78:	8000d637          	lui	a2,0x8000d
80007c7c:	29460613          	addi	a2,a2,660 # 8000d294 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.107>
80007c80:	02500593          	li	a1,37
80007c84:	fffff097          	auipc	ra,0xfffff
80007c88:	448080e7          	jalr	1096(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80007c8c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E>:
80007c8c:	00159893          	slli	a7,a1,0x1
80007c90:	0188d793          	srli	a5,a7,0x18
80007c94:	00959713          	slli	a4,a1,0x9
80007c98:	00975813          	srli	a6,a4,0x9
80007c9c:	02078e63          	beqz	a5,80007cd8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x4c>
80007ca0:	00800737          	lui	a4,0x800
80007ca4:	00e86733          	or	a4,a6,a4
80007ca8:	0018d293          	srli	t0,a7,0x1
80007cac:	7f8008b7          	lui	a7,0x7f800
80007cb0:	03128c63          	beq	t0,a7,80007ce8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x5c>
80007cb4:	0115f2b3          	and	t0,a1,a7
80007cb8:	03128c63          	beq	t0,a7,80007cf0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x64>
80007cbc:	00177313          	andi	t1,a4,1
80007cc0:	02029c63          	bnez	t0,80007cf8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x6c>
80007cc4:	06080a63          	beqz	a6,80007d38 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xac>
80007cc8:	00000813          	li	a6,0
80007ccc:	00000893          	li	a7,0
80007cd0:	f6a78293          	addi	t0,a5,-150
80007cd4:	0580006f          	j	80007d2c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xa0>
80007cd8:	00875713          	srli	a4,a4,0x8
80007cdc:	0018d293          	srli	t0,a7,0x1
80007ce0:	7f8008b7          	lui	a7,0x7f800
80007ce4:	fd1298e3          	bne	t0,a7,80007cb4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x28>
80007ce8:	00300793          	li	a5,3
80007cec:	0500006f          	j	80007d3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007cf0:	00200793          	li	a5,2
80007cf4:	0480006f          	j	80007d3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007cf8:	00800837          	lui	a6,0x800
80007cfc:	03071063          	bne	a4,a6,80007d1c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x90>
80007d00:	00000813          	li	a6,0
80007d04:	00000893          	li	a7,0
80007d08:	f6878293          	addi	t0,a5,-152
80007d0c:	00200313          	li	t1,2
80007d10:	02000737          	lui	a4,0x2000
80007d14:	00100793          	li	a5,1
80007d18:	0240006f          	j	80007d3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007d1c:	00000813          	li	a6,0
80007d20:	00000893          	li	a7,0
80007d24:	00171713          	slli	a4,a4,0x1
80007d28:	f6978293          	addi	t0,a5,-151
80007d2c:	00134793          	xori	a5,t1,1
80007d30:	00100313          	li	t1,1
80007d34:	0080006f          	j	80007d3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007d38:	00400793          	li	a5,4
80007d3c:	f7010113          	addi	sp,sp,-144
80007d40:	08112623          	sw	ra,140(sp)
80007d44:	08812423          	sw	s0,136(sp)
80007d48:	08912223          	sw	s1,132(sp)
80007d4c:	09212023          	sw	s2,128(sp)
80007d50:	07312e23          	sw	s3,124(sp)
80007d54:	07412c23          	sw	s4,120(sp)
80007d58:	09010413          	addi	s0,sp,144
80007d5c:	fce42423          	sw	a4,-56(s0)
80007d60:	fd042623          	sw	a6,-52(s0)
80007d64:	fc042a23          	sw	zero,-44(s0)
80007d68:	00100913          	li	s2,1
80007d6c:	fd242823          	sw	s2,-48(s0)
80007d70:	fc642c23          	sw	t1,-40(s0)
80007d74:	fd142e23          	sw	a7,-36(s0)
80007d78:	fe541023          	sh	t0,-32(s0)
80007d7c:	ffe78713          	addi	a4,a5,-2
80007d80:	fef40123          	sb	a5,-30(s0)
80007d84:	02070863          	beqz	a4,80007db4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x128>
80007d88:	00300793          	li	a5,3
80007d8c:	00f76463          	bltu	a4,a5,80007d94 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x108>
80007d90:	00300713          	li	a4,3
80007d94:	00100793          	li	a5,1
80007d98:	0405c463          	bltz	a1,80007de0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x154>
80007d9c:	8000d937          	lui	s2,0x8000d
80007da0:	26490913          	addi	s2,s2,612 # 8000d264 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>
80007da4:	00100813          	li	a6,1
80007da8:	00100993          	li	s3,1
80007dac:	04060463          	beqz	a2,80007df4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x168>
80007db0:	04c0006f          	j	80007dfc <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x170>
80007db4:	00000993          	li	s3,0
80007db8:	00200593          	li	a1,2
80007dbc:	f8b41423          	sh	a1,-120(s0)
80007dc0:	8000d5b7          	lui	a1,0x8000d
80007dc4:	26558593          	addi	a1,a1,613 # 8000d265 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>
80007dc8:	f8b42623          	sw	a1,-116(s0)
80007dcc:	00300593          	li	a1,3
80007dd0:	f8b42823          	sw	a1,-112(s0)
80007dd4:	f8840613          	addi	a2,s0,-120
80007dd8:	00100593          	li	a1,1
80007ddc:	1180006f          	j	80007ef4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x268>
80007de0:	8000d837          	lui	a6,0x8000d
80007de4:	26380813          	addi	a6,a6,611 # 8000d263 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>
80007de8:	00080913          	mv	s2,a6
80007dec:	00100993          	li	s3,1
80007df0:	00061663          	bnez	a2,80007dfc <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x170>
80007df4:	01f5d993          	srli	s3,a1,0x1f
80007df8:	00080913          	mv	s2,a6
80007dfc:	00200593          	li	a1,2
80007e00:	02f70a63          	beq	a4,a5,80007e34 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x1a8>
80007e04:	04b71863          	bne	a4,a1,80007e54 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x1c8>
80007e08:	f8b41423          	sh	a1,-120(s0)
80007e0c:	08068663          	beqz	a3,80007e98 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x20c>
80007e10:	8000d5b7          	lui	a1,0x8000d
80007e14:	26158593          	addi	a1,a1,609 # 8000d261 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007e18:	f8b42623          	sw	a1,-116(s0)
80007e1c:	00200593          	li	a1,2
80007e20:	f8b42823          	sw	a1,-112(s0)
80007e24:	f8041a23          	sh	zero,-108(s0)
80007e28:	00100613          	li	a2,1
80007e2c:	f8c42c23          	sw	a2,-104(s0)
80007e30:	07c0006f          	j	80007eac <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x220>
80007e34:	f8b41423          	sh	a1,-120(s0)
80007e38:	8000d5b7          	lui	a1,0x8000d
80007e3c:	26858593          	addi	a1,a1,616 # 8000d268 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>
80007e40:	f8b42623          	sw	a1,-116(s0)
80007e44:	00300593          	li	a1,3
80007e48:	f8b42823          	sw	a1,-112(s0)
80007e4c:	00100593          	li	a1,1
80007e50:	05c0006f          	j	80007eac <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x220>
80007e54:	00068493          	mv	s1,a3
80007e58:	00050a13          	mv	s4,a0
80007e5c:	f8840513          	addi	a0,s0,-120
80007e60:	fc840593          	addi	a1,s0,-56
80007e64:	f7740613          	addi	a2,s0,-137
80007e68:	01100693          	li	a3,17
80007e6c:	ffffd097          	auipc	ra,0xffffd
80007e70:	3c4080e7          	jalr	964(ra) # 80005230 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE>
80007e74:	f8842503          	lw	a0,-120(s0)
80007e78:	02050e63          	beqz	a0,80007eb4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x228>
80007e7c:	f9042503          	lw	a0,-112(s0)
80007e80:	f8c42583          	lw	a1,-116(s0)
80007e84:	f8842603          	lw	a2,-120(s0)
80007e88:	fca42023          	sw	a0,-64(s0)
80007e8c:	fab42e23          	sw	a1,-68(s0)
80007e90:	fac42c23          	sw	a2,-72(s0)
80007e94:	0380006f          	j	80007ecc <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x240>
80007e98:	8000d5b7          	lui	a1,0x8000d
80007e9c:	26b58593          	addi	a1,a1,619 # 8000d26b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007ea0:	f8b42623          	sw	a1,-116(s0)
80007ea4:	00100593          	li	a1,1
80007ea8:	f8b42823          	sw	a1,-112(s0)
80007eac:	f8840613          	addi	a2,s0,-120
80007eb0:	0440006f          	j	80007ef4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x268>
80007eb4:	fb840513          	addi	a0,s0,-72
80007eb8:	fc840593          	addi	a1,s0,-56
80007ebc:	f7740613          	addi	a2,s0,-137
80007ec0:	01100693          	li	a3,17
80007ec4:	ffffb097          	auipc	ra,0xffffb
80007ec8:	454080e7          	jalr	1108(ra) # 80003318 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE>
80007ecc:	fb842503          	lw	a0,-72(s0)
80007ed0:	fbc42583          	lw	a1,-68(s0)
80007ed4:	fc041603          	lh	a2,-64(s0)
80007ed8:	f8840713          	addi	a4,s0,-120
80007edc:	00400793          	li	a5,4
80007ee0:	00048693          	mv	a3,s1
80007ee4:	fffff097          	auipc	ra,0xfffff
80007ee8:	e0c080e7          	jalr	-500(ra) # 80006cf0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>
80007eec:	00050613          	mv	a2,a0
80007ef0:	000a0513          	mv	a0,s4
80007ef4:	fb242c23          	sw	s2,-72(s0)
80007ef8:	fb342e23          	sw	s3,-68(s0)
80007efc:	fcc42023          	sw	a2,-64(s0)
80007f00:	fcb42223          	sw	a1,-60(s0)
80007f04:	fb840593          	addi	a1,s0,-72
80007f08:	00001097          	auipc	ra,0x1
80007f0c:	994080e7          	jalr	-1644(ra) # 8000889c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>
80007f10:	08c12083          	lw	ra,140(sp)
80007f14:	08812403          	lw	s0,136(sp)
80007f18:	08412483          	lw	s1,132(sp)
80007f1c:	08012903          	lw	s2,128(sp)
80007f20:	07c12983          	lw	s3,124(sp)
80007f24:	07812a03          	lw	s4,120(sp)
80007f28:	09010113          	addi	sp,sp,144
80007f2c:	00008067          	ret

80007f30 <_ZN4core3fmt5Write9write_fmt17h2deade9dea7b58f9E>:
80007f30:	ff010113          	addi	sp,sp,-16
80007f34:	00112623          	sw	ra,12(sp)
80007f38:	00812423          	sw	s0,8(sp)
80007f3c:	01010413          	addi	s0,sp,16
80007f40:	8000d637          	lui	a2,0x8000d
80007f44:	3cc60613          	addi	a2,a2,972 # 8000d3cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>
80007f48:	00058693          	mv	a3,a1
80007f4c:	00060593          	mv	a1,a2
80007f50:	00068613          	mv	a2,a3
80007f54:	00c12083          	lw	ra,12(sp)
80007f58:	00812403          	lw	s0,8(sp)
80007f5c:	01010113          	addi	sp,sp,16
80007f60:	00000317          	auipc	t1,0x0
80007f64:	04030067          	jr	64(t1) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80007f68 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hefd8b8a880068ae0E>:
80007f68:	ff010113          	addi	sp,sp,-16
80007f6c:	00112623          	sw	ra,12(sp)
80007f70:	00812423          	sw	s0,8(sp)
80007f74:	01010413          	addi	s0,sp,16
80007f78:	0145a603          	lw	a2,20(a1)
80007f7c:	0185a583          	lw	a1,24(a1)
80007f80:	00050693          	mv	a3,a0
80007f84:	00060513          	mv	a0,a2
80007f88:	00068613          	mv	a2,a3
80007f8c:	00c12083          	lw	ra,12(sp)
80007f90:	00812403          	lw	s0,8(sp)
80007f94:	01010113          	addi	sp,sp,16
80007f98:	00000317          	auipc	t1,0x0
80007f9c:	00830067          	jr	8(t1) # 80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80007fa0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>:
80007fa0:	fb010113          	addi	sp,sp,-80
80007fa4:	04112623          	sw	ra,76(sp)
80007fa8:	04812423          	sw	s0,72(sp)
80007fac:	04912223          	sw	s1,68(sp)
80007fb0:	05212023          	sw	s2,64(sp)
80007fb4:	03312e23          	sw	s3,60(sp)
80007fb8:	03412c23          	sw	s4,56(sp)
80007fbc:	03512a23          	sw	s5,52(sp)
80007fc0:	03612823          	sw	s6,48(sp)
80007fc4:	03712623          	sw	s7,44(sp)
80007fc8:	03812423          	sw	s8,40(sp)
80007fcc:	05010413          	addi	s0,sp,80
80007fd0:	00060493          	mv	s1,a2
80007fd4:	fc042823          	sw	zero,-48(s0)
80007fd8:	02000613          	li	a2,32
80007fdc:	fcc42223          	sw	a2,-60(s0)
80007fe0:	00300613          	li	a2,3
80007fe4:	fcc40a23          	sb	a2,-44(s0)
80007fe8:	0104ab03          	lw	s6,16(s1)
80007fec:	fa042a23          	sw	zero,-76(s0)
80007ff0:	fa042e23          	sw	zero,-68(s0)
80007ff4:	fca42423          	sw	a0,-56(s0)
80007ff8:	fcb42623          	sw	a1,-52(s0)
80007ffc:	120b0063          	beqz	s6,8000811c <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x17c>
80008000:	0144aa83          	lw	s5,20(s1)
80008004:	180a8863          	beqz	s5,80008194 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1f4>
80008008:	0004aa03          	lw	s4,0(s1)
8000800c:	0084a983          	lw	s3,8(s1)
80008010:	fffa8513          	addi	a0,s5,-1
80008014:	00551513          	slli	a0,a0,0x5
80008018:	00555513          	srli	a0,a0,0x5
8000801c:	00150913          	addi	s2,a0,1
80008020:	004a0a13          	addi	s4,s4,4
80008024:	005a9a93          	slli	s5,s5,0x5
80008028:	010b0b13          	addi	s6,s6,16
8000802c:	00200b93          	li	s7,2
80008030:	00100c13          	li	s8,1
80008034:	000a2603          	lw	a2,0(s4)
80008038:	00060e63          	beqz	a2,80008054 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0xb4>
8000803c:	fcc42683          	lw	a3,-52(s0)
80008040:	fc842503          	lw	a0,-56(s0)
80008044:	ffca2583          	lw	a1,-4(s4)
80008048:	00c6a683          	lw	a3,12(a3) # 200000c <.Lline_table_start2+0x1ffec5e>
8000804c:	000680e7          	jalr	a3
80008050:	16051c63          	bnez	a0,800081c8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80008054:	000b2603          	lw	a2,0(s6)
80008058:	00cb4683          	lbu	a3,12(s6)
8000805c:	008b2703          	lw	a4,8(s6)
80008060:	ff8b2583          	lw	a1,-8(s6)
80008064:	ffcb2503          	lw	a0,-4(s6)
80008068:	fcc42223          	sw	a2,-60(s0)
8000806c:	fcd40a23          	sb	a3,-44(s0)
80008070:	fce42823          	sw	a4,-48(s0)
80008074:	02058863          	beqz	a1,800080a4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x104>
80008078:	01859a63          	bne	a1,s8,8000808c <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0xec>
8000807c:	00351513          	slli	a0,a0,0x3
80008080:	00a98533          	add	a0,s3,a0
80008084:	00052583          	lw	a1,0(a0)
80008088:	00058c63          	beqz	a1,800080a0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x100>
8000808c:	ff0b2603          	lw	a2,-16(s6)
80008090:	fa042a23          	sw	zero,-76(s0)
80008094:	faa42c23          	sw	a0,-72(s0)
80008098:	03761063          	bne	a2,s7,800080b8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x118>
8000809c:	0340006f          	j	800080d0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x130>
800080a0:	00452503          	lw	a0,4(a0)
800080a4:	00100593          	li	a1,1
800080a8:	ff0b2603          	lw	a2,-16(s6)
800080ac:	fab42a23          	sw	a1,-76(s0)
800080b0:	faa42c23          	sw	a0,-72(s0)
800080b4:	01760e63          	beq	a2,s7,800080d0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x130>
800080b8:	ff4b2583          	lw	a1,-12(s6)
800080bc:	03861063          	bne	a2,s8,800080dc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x13c>
800080c0:	00359513          	slli	a0,a1,0x3
800080c4:	00a98533          	add	a0,s3,a0
800080c8:	00052583          	lw	a1,0(a0)
800080cc:	00058663          	beqz	a1,800080d8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x138>
800080d0:	00000613          	li	a2,0
800080d4:	00c0006f          	j	800080e0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x140>
800080d8:	00452583          	lw	a1,4(a0)
800080dc:	00100613          	li	a2,1
800080e0:	004b2503          	lw	a0,4(s6)
800080e4:	00351513          	slli	a0,a0,0x3
800080e8:	00a986b3          	add	a3,s3,a0
800080ec:	0006a503          	lw	a0,0(a3)
800080f0:	0046a683          	lw	a3,4(a3)
800080f4:	fac42e23          	sw	a2,-68(s0)
800080f8:	fcb42023          	sw	a1,-64(s0)
800080fc:	fb440593          	addi	a1,s0,-76
80008100:	000680e7          	jalr	a3
80008104:	0c051263          	bnez	a0,800081c8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80008108:	008a0a13          	addi	s4,s4,8
8000810c:	fe0a8a93          	addi	s5,s5,-32
80008110:	020b0b13          	addi	s6,s6,32
80008114:	f20a90e3          	bnez	s5,80008034 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x94>
80008118:	0700006f          	j	80008188 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1e8>
8000811c:	00c4a503          	lw	a0,12(s1)
80008120:	06050a63          	beqz	a0,80008194 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1f4>
80008124:	0084a983          	lw	s3,8(s1)
80008128:	00351a13          	slli	s4,a0,0x3
8000812c:	01498a33          	add	s4,s3,s4
80008130:	0004aa83          	lw	s5,0(s1)
80008134:	fff50513          	addi	a0,a0,-1
80008138:	00351513          	slli	a0,a0,0x3
8000813c:	00355513          	srli	a0,a0,0x3
80008140:	00150913          	addi	s2,a0,1
80008144:	004a8a93          	addi	s5,s5,4
80008148:	000aa603          	lw	a2,0(s5)
8000814c:	00060e63          	beqz	a2,80008168 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1c8>
80008150:	fcc42683          	lw	a3,-52(s0)
80008154:	fc842503          	lw	a0,-56(s0)
80008158:	ffcaa583          	lw	a1,-4(s5)
8000815c:	00c6a683          	lw	a3,12(a3)
80008160:	000680e7          	jalr	a3
80008164:	06051263          	bnez	a0,800081c8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80008168:	0009a503          	lw	a0,0(s3)
8000816c:	0049a603          	lw	a2,4(s3)
80008170:	fb440593          	addi	a1,s0,-76
80008174:	000600e7          	jalr	a2
80008178:	04051863          	bnez	a0,800081c8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
8000817c:	00898993          	addi	s3,s3,8
80008180:	008a8a93          	addi	s5,s5,8
80008184:	fd4992e3          	bne	s3,s4,80008148 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1a8>
80008188:	0044a503          	lw	a0,4(s1)
8000818c:	00a96a63          	bltu	s2,a0,800081a0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x200>
80008190:	0400006f          	j	800081d0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
80008194:	00000913          	li	s2,0
80008198:	0044a503          	lw	a0,4(s1)
8000819c:	02a07a63          	bgeu	zero,a0,800081d0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
800081a0:	0004a503          	lw	a0,0(s1)
800081a4:	00391913          	slli	s2,s2,0x3
800081a8:	01250933          	add	s2,a0,s2
800081ac:	fcc42683          	lw	a3,-52(s0)
800081b0:	fc842503          	lw	a0,-56(s0)
800081b4:	00092583          	lw	a1,0(s2)
800081b8:	00492603          	lw	a2,4(s2)
800081bc:	00c6a683          	lw	a3,12(a3)
800081c0:	000680e7          	jalr	a3
800081c4:	00050663          	beqz	a0,800081d0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
800081c8:	00100513          	li	a0,1
800081cc:	0080006f          	j	800081d4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x234>
800081d0:	00000513          	li	a0,0
800081d4:	04c12083          	lw	ra,76(sp)
800081d8:	04812403          	lw	s0,72(sp)
800081dc:	04412483          	lw	s1,68(sp)
800081e0:	04012903          	lw	s2,64(sp)
800081e4:	03c12983          	lw	s3,60(sp)
800081e8:	03812a03          	lw	s4,56(sp)
800081ec:	03412a83          	lw	s5,52(sp)
800081f0:	03012b03          	lw	s6,48(sp)
800081f4:	02c12b83          	lw	s7,44(sp)
800081f8:	02812c03          	lw	s8,40(sp)
800081fc:	05010113          	addi	sp,sp,80
80008200:	00008067          	ret

80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>:
80008204:	fc010113          	addi	sp,sp,-64
80008208:	02112e23          	sw	ra,60(sp)
8000820c:	02812c23          	sw	s0,56(sp)
80008210:	02912a23          	sw	s1,52(sp)
80008214:	03212823          	sw	s2,48(sp)
80008218:	03312623          	sw	s3,44(sp)
8000821c:	03412423          	sw	s4,40(sp)
80008220:	03512223          	sw	s5,36(sp)
80008224:	03612023          	sw	s6,32(sp)
80008228:	01712e23          	sw	s7,28(sp)
8000822c:	01812c23          	sw	s8,24(sp)
80008230:	01912a23          	sw	s9,20(sp)
80008234:	01a12823          	sw	s10,16(sp)
80008238:	01b12623          	sw	s11,12(sp)
8000823c:	04010413          	addi	s0,sp,64
80008240:	00078493          	mv	s1,a5
80008244:	00070913          	mv	s2,a4
80008248:	00068993          	mv	s3,a3
8000824c:	00060a13          	mv	s4,a2
80008250:	06058263          	beqz	a1,800082b4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xb0>
80008254:	01c52b03          	lw	s6,28(a0)
80008258:	001b7c13          	andi	s8,s6,1
8000825c:	00110ab7          	lui	s5,0x110
80008260:	000c0463          	beqz	s8,80008268 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x64>
80008264:	02b00a93          	li	s5,43
80008268:	009c0c33          	add	s8,s8,s1
8000826c:	004b7593          	andi	a1,s6,4
80008270:	04058c63          	beqz	a1,800082c8 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xc4>
80008274:	01000593          	li	a1,16
80008278:	06b9f063          	bgeu	s3,a1,800082d8 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xd4>
8000827c:	00000593          	li	a1,0
80008280:	02098263          	beqz	s3,800082a4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xa0>
80008284:	013a0633          	add	a2,s4,s3
80008288:	000a0693          	mv	a3,s4
8000828c:	00068703          	lb	a4,0(a3)
80008290:	fc072713          	slti	a4,a4,-64
80008294:	00174713          	xori	a4,a4,1
80008298:	00168693          	addi	a3,a3,1
8000829c:	00e585b3          	add	a1,a1,a4
800082a0:	fec696e3          	bne	a3,a2,8000828c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x88>
800082a4:	01858c33          	add	s8,a1,s8
800082a8:	00052583          	lw	a1,0(a0)
800082ac:	06058e63          	beqz	a1,80008328 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
800082b0:	0500006f          	j	80008300 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xfc>
800082b4:	01c52b03          	lw	s6,28(a0)
800082b8:	00148c13          	addi	s8,s1,1
800082bc:	02d00a93          	li	s5,45
800082c0:	004b7593          	andi	a1,s6,4
800082c4:	fa0598e3          	bnez	a1,80008274 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x70>
800082c8:	00000a13          	li	s4,0
800082cc:	00052583          	lw	a1,0(a0)
800082d0:	02059863          	bnez	a1,80008300 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xfc>
800082d4:	0540006f          	j	80008328 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
800082d8:	00050b93          	mv	s7,a0
800082dc:	000a0513          	mv	a0,s4
800082e0:	00098593          	mv	a1,s3
800082e4:	00001097          	auipc	ra,0x1
800082e8:	cd4080e7          	jalr	-812(ra) # 80008fb8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>
800082ec:	00050593          	mv	a1,a0
800082f0:	000b8513          	mv	a0,s7
800082f4:	01858c33          	add	s8,a1,s8
800082f8:	000ba583          	lw	a1,0(s7) # 80000000 <_start>
800082fc:	02058663          	beqz	a1,80008328 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80008300:	00452c83          	lw	s9,4(a0)
80008304:	039c7263          	bgeu	s8,s9,80008328 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80008308:	008b7593          	andi	a1,s6,8
8000830c:	08059c63          	bnez	a1,800083a4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x1a0>
80008310:	02054583          	lbu	a1,32(a0)
80008314:	00100613          	li	a2,1
80008318:	418c8cb3          	sub	s9,s9,s8
8000831c:	0eb64c63          	blt	a2,a1,80008414 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x210>
80008320:	10058a63          	beqz	a1,80008434 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x230>
80008324:	1080006f          	j	8000842c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x228>
80008328:	01452b03          	lw	s6,20(a0)
8000832c:	01852b83          	lw	s7,24(a0)
80008330:	000b0513          	mv	a0,s6
80008334:	000b8593          	mv	a1,s7
80008338:	000a8613          	mv	a2,s5
8000833c:	000a0693          	mv	a3,s4
80008340:	00098713          	mv	a4,s3
80008344:	00000097          	auipc	ra,0x0
80008348:	214080e7          	jalr	532(ra) # 80008558 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
8000834c:	00050593          	mv	a1,a0
80008350:	00100513          	li	a0,1
80008354:	10059863          	bnez	a1,80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008358:	00cba303          	lw	t1,12(s7)
8000835c:	000b0513          	mv	a0,s6
80008360:	00090593          	mv	a1,s2
80008364:	00048613          	mv	a2,s1
80008368:	03c12083          	lw	ra,60(sp)
8000836c:	03812403          	lw	s0,56(sp)
80008370:	03412483          	lw	s1,52(sp)
80008374:	03012903          	lw	s2,48(sp)
80008378:	02c12983          	lw	s3,44(sp)
8000837c:	02812a03          	lw	s4,40(sp)
80008380:	02412a83          	lw	s5,36(sp)
80008384:	02012b03          	lw	s6,32(sp)
80008388:	01c12b83          	lw	s7,28(sp)
8000838c:	01812c03          	lw	s8,24(sp)
80008390:	01412c83          	lw	s9,20(sp)
80008394:	01012d03          	lw	s10,16(sp)
80008398:	00c12d83          	lw	s11,12(sp)
8000839c:	04010113          	addi	sp,sp,64
800083a0:	00030067          	jr	t1
800083a4:	01052583          	lw	a1,16(a0)
800083a8:	fcb42423          	sw	a1,-56(s0)
800083ac:	03000593          	li	a1,48
800083b0:	02054d03          	lbu	s10,32(a0)
800083b4:	01452b03          	lw	s6,20(a0)
800083b8:	01852b83          	lw	s7,24(a0)
800083bc:	00b52823          	sw	a1,16(a0)
800083c0:	00100593          	li	a1,1
800083c4:	00050d93          	mv	s11,a0
800083c8:	02b50023          	sb	a1,32(a0)
800083cc:	000b0513          	mv	a0,s6
800083d0:	000b8593          	mv	a1,s7
800083d4:	000a8613          	mv	a2,s5
800083d8:	000a0693          	mv	a3,s4
800083dc:	00098713          	mv	a4,s3
800083e0:	00000097          	auipc	ra,0x0
800083e4:	178080e7          	jalr	376(ra) # 80008558 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
800083e8:	06051c63          	bnez	a0,80008460 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x25c>
800083ec:	418c89b3          	sub	s3,s9,s8
800083f0:	00198993          	addi	s3,s3,1
800083f4:	fff98993          	addi	s3,s3,-1
800083f8:	12098263          	beqz	s3,8000851c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x318>
800083fc:	010ba603          	lw	a2,16(s7)
80008400:	03000593          	li	a1,48
80008404:	000b0513          	mv	a0,s6
80008408:	000600e7          	jalr	a2
8000840c:	fe0504e3          	beqz	a0,800083f4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x1f0>
80008410:	0500006f          	j	80008460 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x25c>
80008414:	00200613          	li	a2,2
80008418:	00c59a63          	bne	a1,a2,8000842c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x228>
8000841c:	001cd593          	srli	a1,s9,0x1
80008420:	001c8c93          	addi	s9,s9,1
80008424:	001cdc93          	srli	s9,s9,0x1
80008428:	00c0006f          	j	80008434 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x230>
8000842c:	000c8593          	mv	a1,s9
80008430:	00000c93          	li	s9,0
80008434:	01452b03          	lw	s6,20(a0)
80008438:	01852b83          	lw	s7,24(a0)
8000843c:	01052c03          	lw	s8,16(a0)
80008440:	00158d13          	addi	s10,a1,1
80008444:	fffd0d13          	addi	s10,s10,-1
80008448:	040d0c63          	beqz	s10,800084a0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x29c>
8000844c:	010ba603          	lw	a2,16(s7)
80008450:	000b0513          	mv	a0,s6
80008454:	000c0593          	mv	a1,s8
80008458:	000600e7          	jalr	a2
8000845c:	fe0504e3          	beqz	a0,80008444 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x240>
80008460:	00100513          	li	a0,1
80008464:	03c12083          	lw	ra,60(sp)
80008468:	03812403          	lw	s0,56(sp)
8000846c:	03412483          	lw	s1,52(sp)
80008470:	03012903          	lw	s2,48(sp)
80008474:	02c12983          	lw	s3,44(sp)
80008478:	02812a03          	lw	s4,40(sp)
8000847c:	02412a83          	lw	s5,36(sp)
80008480:	02012b03          	lw	s6,32(sp)
80008484:	01c12b83          	lw	s7,28(sp)
80008488:	01812c03          	lw	s8,24(sp)
8000848c:	01412c83          	lw	s9,20(sp)
80008490:	01012d03          	lw	s10,16(sp)
80008494:	00c12d83          	lw	s11,12(sp)
80008498:	04010113          	addi	sp,sp,64
8000849c:	00008067          	ret
800084a0:	000b0513          	mv	a0,s6
800084a4:	000b8593          	mv	a1,s7
800084a8:	000a8613          	mv	a2,s5
800084ac:	000a0693          	mv	a3,s4
800084b0:	00098713          	mv	a4,s3
800084b4:	00000097          	auipc	ra,0x0
800084b8:	0a4080e7          	jalr	164(ra) # 80008558 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
800084bc:	00050593          	mv	a1,a0
800084c0:	00100513          	li	a0,1
800084c4:	fa0590e3          	bnez	a1,80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
800084c8:	00cba683          	lw	a3,12(s7)
800084cc:	000b0513          	mv	a0,s6
800084d0:	00090593          	mv	a1,s2
800084d4:	00048613          	mv	a2,s1
800084d8:	000680e7          	jalr	a3
800084dc:	00050593          	mv	a1,a0
800084e0:	00100513          	li	a0,1
800084e4:	f80590e3          	bnez	a1,80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
800084e8:	41900933          	neg	s2,s9
800084ec:	fff00993          	li	s3,-1
800084f0:	fff00493          	li	s1,-1
800084f4:	00990533          	add	a0,s2,s1
800084f8:	05350c63          	beq	a0,s3,80008550 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x34c>
800084fc:	010ba603          	lw	a2,16(s7)
80008500:	000b0513          	mv	a0,s6
80008504:	000c0593          	mv	a1,s8
80008508:	000600e7          	jalr	a2
8000850c:	00148493          	addi	s1,s1,1
80008510:	fe0502e3          	beqz	a0,800084f4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x2f0>
80008514:	0194b533          	sltu	a0,s1,s9
80008518:	f4dff06f          	j	80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
8000851c:	00cba683          	lw	a3,12(s7)
80008520:	000b0513          	mv	a0,s6
80008524:	00090593          	mv	a1,s2
80008528:	00048613          	mv	a2,s1
8000852c:	000680e7          	jalr	a3
80008530:	00050593          	mv	a1,a0
80008534:	00100513          	li	a0,1
80008538:	f20596e3          	bnez	a1,80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
8000853c:	00000513          	li	a0,0
80008540:	fc842583          	lw	a1,-56(s0)
80008544:	00bda823          	sw	a1,16(s11)
80008548:	03ad8023          	sb	s10,32(s11)
8000854c:	f19ff06f          	j	80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008550:	019cb533          	sltu	a0,s9,s9
80008554:	f11ff06f          	j	80008464 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>

80008558 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>:
80008558:	fe010113          	addi	sp,sp,-32
8000855c:	00112e23          	sw	ra,28(sp)
80008560:	00812c23          	sw	s0,24(sp)
80008564:	00912a23          	sw	s1,20(sp)
80008568:	01212823          	sw	s2,16(sp)
8000856c:	01312623          	sw	s3,12(sp)
80008570:	01412423          	sw	s4,8(sp)
80008574:	02010413          	addi	s0,sp,32
80008578:	001107b7          	lui	a5,0x110
8000857c:	00070493          	mv	s1,a4
80008580:	00068913          	mv	s2,a3
80008584:	00058993          	mv	s3,a1
80008588:	02f60263          	beq	a2,a5,800085ac <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x54>
8000858c:	0109a683          	lw	a3,16(s3)
80008590:	00050a13          	mv	s4,a0
80008594:	00060593          	mv	a1,a2
80008598:	000680e7          	jalr	a3
8000859c:	00050613          	mv	a2,a0
800085a0:	000a0513          	mv	a0,s4
800085a4:	00100593          	li	a1,1
800085a8:	02061c63          	bnez	a2,800085e0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x88>
800085ac:	02090863          	beqz	s2,800085dc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x84>
800085b0:	00c9a303          	lw	t1,12(s3)
800085b4:	00090593          	mv	a1,s2
800085b8:	00048613          	mv	a2,s1
800085bc:	01c12083          	lw	ra,28(sp)
800085c0:	01812403          	lw	s0,24(sp)
800085c4:	01412483          	lw	s1,20(sp)
800085c8:	01012903          	lw	s2,16(sp)
800085cc:	00c12983          	lw	s3,12(sp)
800085d0:	00812a03          	lw	s4,8(sp)
800085d4:	02010113          	addi	sp,sp,32
800085d8:	00030067          	jr	t1
800085dc:	00000593          	li	a1,0
800085e0:	00058513          	mv	a0,a1
800085e4:	01c12083          	lw	ra,28(sp)
800085e8:	01812403          	lw	s0,24(sp)
800085ec:	01412483          	lw	s1,20(sp)
800085f0:	01012903          	lw	s2,16(sp)
800085f4:	00c12983          	lw	s3,12(sp)
800085f8:	00812a03          	lw	s4,8(sp)
800085fc:	02010113          	addi	sp,sp,32
80008600:	00008067          	ret

80008604 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E>:
80008604:	fd010113          	addi	sp,sp,-48
80008608:	02112623          	sw	ra,44(sp)
8000860c:	02812423          	sw	s0,40(sp)
80008610:	02912223          	sw	s1,36(sp)
80008614:	03212023          	sw	s2,32(sp)
80008618:	01312e23          	sw	s3,28(sp)
8000861c:	01412c23          	sw	s4,24(sp)
80008620:	01512a23          	sw	s5,20(sp)
80008624:	01612823          	sw	s6,16(sp)
80008628:	01712623          	sw	s7,12(sp)
8000862c:	03010413          	addi	s0,sp,48
80008630:	00052683          	lw	a3,0(a0)
80008634:	00852703          	lw	a4,8(a0)
80008638:	00060493          	mv	s1,a2
8000863c:	00058913          	mv	s2,a1
80008640:	00177593          	andi	a1,a4,1
80008644:	00069463          	bnez	a3,8000864c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x48>
80008648:	14058463          	beqz	a1,80008790 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
8000864c:	0c058263          	beqz	a1,80008710 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008650:	00c52703          	lw	a4,12(a0)
80008654:	00990633          	add	a2,s2,s1
80008658:	00000593          	li	a1,0
8000865c:	04070e63          	beqz	a4,800086b8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xb4>
80008660:	0e000793          	li	a5,224
80008664:	0f000813          	li	a6,240
80008668:	00090893          	mv	a7,s2
8000866c:	01c0006f          	j	80008688 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x84>
80008670:	00188293          	addi	t0,a7,1 # 7f800001 <.Lline_table_start2+0x7f7fec53>
80008674:	40b885b3          	sub	a1,a7,a1
80008678:	fff70713          	addi	a4,a4,-1 # 1ffffff <.Lline_table_start2+0x1ffec51>
8000867c:	40b285b3          	sub	a1,t0,a1
80008680:	00028893          	mv	a7,t0
80008684:	02070c63          	beqz	a4,800086bc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xb8>
80008688:	08c88463          	beq	a7,a2,80008710 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
8000868c:	00088283          	lb	t0,0(a7)
80008690:	fe02d0e3          	bgez	t0,80008670 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x6c>
80008694:	0ff2f293          	zext.b	t0,t0
80008698:	00f2e863          	bltu	t0,a5,800086a8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xa4>
8000869c:	0102ea63          	bltu	t0,a6,800086b0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xac>
800086a0:	00488293          	addi	t0,a7,4
800086a4:	fd1ff06f          	j	80008674 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
800086a8:	00288293          	addi	t0,a7,2
800086ac:	fc9ff06f          	j	80008674 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
800086b0:	00388293          	addi	t0,a7,3
800086b4:	fc1ff06f          	j	80008674 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
800086b8:	00090293          	mv	t0,s2
800086bc:	04c28a63          	beq	t0,a2,80008710 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
800086c0:	00028603          	lb	a2,0(t0)
800086c4:	00064663          	bltz	a2,800086d0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xcc>
800086c8:	00059a63          	bnez	a1,800086dc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xd8>
800086cc:	0340006f          	j	80008700 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
800086d0:	0ff67613          	zext.b	a2,a2
800086d4:	0e000713          	li	a4,224
800086d8:	02058463          	beqz	a1,80008700 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
800086dc:	0295f063          	bgeu	a1,s1,800086fc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xf8>
800086e0:	00b90633          	add	a2,s2,a1
800086e4:	00060603          	lb	a2,0(a2)
800086e8:	fc000713          	li	a4,-64
800086ec:	00e65a63          	bge	a2,a4,80008700 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
800086f0:	00000613          	li	a2,0
800086f4:	00001a63          	bnez	zero,80008708 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x104>
800086f8:	0180006f          	j	80008710 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
800086fc:	fe959ae3          	bne	a1,s1,800086f0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xec>
80008700:	00090613          	mv	a2,s2
80008704:	00090663          	beqz	s2,80008710 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008708:	00058493          	mv	s1,a1
8000870c:	00060913          	mv	s2,a2
80008710:	08068063          	beqz	a3,80008790 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
80008714:	00452983          	lw	s3,4(a0)
80008718:	01000593          	li	a1,16
8000871c:	04b4fa63          	bgeu	s1,a1,80008770 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x16c>
80008720:	00000593          	li	a1,0
80008724:	02048263          	beqz	s1,80008748 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x144>
80008728:	00990633          	add	a2,s2,s1
8000872c:	00090693          	mv	a3,s2
80008730:	00068703          	lb	a4,0(a3)
80008734:	fc072713          	slti	a4,a4,-64
80008738:	00174713          	xori	a4,a4,1
8000873c:	00168693          	addi	a3,a3,1
80008740:	00e585b3          	add	a1,a1,a4
80008744:	fec696e3          	bne	a3,a2,80008730 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x12c>
80008748:	0535f463          	bgeu	a1,s3,80008790 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
8000874c:	02054683          	lbu	a3,32(a0)
80008750:	00000613          	li	a2,0
80008754:	00100713          	li	a4,1
80008758:	40b98ab3          	sub	s5,s3,a1
8000875c:	06d74a63          	blt	a4,a3,800087d0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1cc>
80008760:	08068263          	beqz	a3,800087e4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
80008764:	000a8613          	mv	a2,s5
80008768:	00000a93          	li	s5,0
8000876c:	0780006f          	j	800087e4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
80008770:	00050a13          	mv	s4,a0
80008774:	00090513          	mv	a0,s2
80008778:	00048593          	mv	a1,s1
8000877c:	00001097          	auipc	ra,0x1
80008780:	83c080e7          	jalr	-1988(ra) # 80008fb8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>
80008784:	00050593          	mv	a1,a0
80008788:	000a0513          	mv	a0,s4
8000878c:	fd35e0e3          	bltu	a1,s3,8000874c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x148>
80008790:	01852583          	lw	a1,24(a0)
80008794:	01452503          	lw	a0,20(a0)
80008798:	00c5a303          	lw	t1,12(a1)
8000879c:	00090593          	mv	a1,s2
800087a0:	00048613          	mv	a2,s1
800087a4:	02c12083          	lw	ra,44(sp)
800087a8:	02812403          	lw	s0,40(sp)
800087ac:	02412483          	lw	s1,36(sp)
800087b0:	02012903          	lw	s2,32(sp)
800087b4:	01c12983          	lw	s3,28(sp)
800087b8:	01812a03          	lw	s4,24(sp)
800087bc:	01412a83          	lw	s5,20(sp)
800087c0:	01012b03          	lw	s6,16(sp)
800087c4:	00c12b83          	lw	s7,12(sp)
800087c8:	03010113          	addi	sp,sp,48
800087cc:	00030067          	jr	t1
800087d0:	00200593          	li	a1,2
800087d4:	00b69863          	bne	a3,a1,800087e4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
800087d8:	001ad613          	srli	a2,s5,0x1
800087dc:	001a8a93          	addi	s5,s5,1 # 110001 <.Lline_table_start2+0x10ec53>
800087e0:	001ada93          	srli	s5,s5,0x1
800087e4:	01452983          	lw	s3,20(a0)
800087e8:	01852b03          	lw	s6,24(a0)
800087ec:	01052a03          	lw	s4,16(a0)
800087f0:	00160b93          	addi	s7,a2,1
800087f4:	fffb8b93          	addi	s7,s7,-1
800087f8:	020b8063          	beqz	s7,80008818 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x214>
800087fc:	010b2603          	lw	a2,16(s6)
80008800:	00098513          	mv	a0,s3
80008804:	000a0593          	mv	a1,s4
80008808:	000600e7          	jalr	a2
8000880c:	fe0504e3          	beqz	a0,800087f4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1f0>
80008810:	00100513          	li	a0,1
80008814:	05c0006f          	j	80008870 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x26c>
80008818:	00cb2683          	lw	a3,12(s6)
8000881c:	00098513          	mv	a0,s3
80008820:	00090593          	mv	a1,s2
80008824:	00048613          	mv	a2,s1
80008828:	000680e7          	jalr	a3
8000882c:	00050593          	mv	a1,a0
80008830:	00100513          	li	a0,1
80008834:	02059e63          	bnez	a1,80008870 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x26c>
80008838:	41500933          	neg	s2,s5
8000883c:	fff00b93          	li	s7,-1
80008840:	fff00493          	li	s1,-1
80008844:	00990533          	add	a0,s2,s1
80008848:	03750063          	beq	a0,s7,80008868 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x264>
8000884c:	010b2603          	lw	a2,16(s6)
80008850:	00098513          	mv	a0,s3
80008854:	000a0593          	mv	a1,s4
80008858:	000600e7          	jalr	a2
8000885c:	00148493          	addi	s1,s1,1
80008860:	fe0502e3          	beqz	a0,80008844 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x240>
80008864:	0080006f          	j	8000886c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x268>
80008868:	000a8493          	mv	s1,s5
8000886c:	0154b533          	sltu	a0,s1,s5
80008870:	02c12083          	lw	ra,44(sp)
80008874:	02812403          	lw	s0,40(sp)
80008878:	02412483          	lw	s1,36(sp)
8000887c:	02012903          	lw	s2,32(sp)
80008880:	01c12983          	lw	s3,28(sp)
80008884:	01812a03          	lw	s4,24(sp)
80008888:	01412a83          	lw	s5,20(sp)
8000888c:	01012b03          	lw	s6,16(sp)
80008890:	00c12b83          	lw	s7,12(sp)
80008894:	03010113          	addi	sp,sp,48
80008898:	00008067          	ret

8000889c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>:
8000889c:	fc010113          	addi	sp,sp,-64
800088a0:	02112e23          	sw	ra,60(sp)
800088a4:	02812c23          	sw	s0,56(sp)
800088a8:	02912a23          	sw	s1,52(sp)
800088ac:	03212823          	sw	s2,48(sp)
800088b0:	03312623          	sw	s3,44(sp)
800088b4:	03412423          	sw	s4,40(sp)
800088b8:	03512223          	sw	s5,36(sp)
800088bc:	03612023          	sw	s6,32(sp)
800088c0:	01712e23          	sw	s7,28(sp)
800088c4:	01812c23          	sw	s8,24(sp)
800088c8:	01912a23          	sw	s9,20(sp)
800088cc:	01a12823          	sw	s10,16(sp)
800088d0:	04010413          	addi	s0,sp,64
800088d4:	00050493          	mv	s1,a0
800088d8:	00052503          	lw	a0,0(a0)
800088dc:	00058613          	mv	a2,a1
800088e0:	04050663          	beqz	a0,8000892c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x90>
800088e4:	0044ab83          	lw	s7,4(s1)
800088e8:	00062583          	lw	a1,0(a2)
800088ec:	00462983          	lw	s3,4(a2)
800088f0:	00862c83          	lw	s9,8(a2)
800088f4:	00c62a03          	lw	s4,12(a2)
800088f8:	fcb42023          	sw	a1,-64(s0)
800088fc:	fd342223          	sw	s3,-60(s0)
80008900:	01c4c503          	lbu	a0,28(s1)
80008904:	0104aa83          	lw	s5,16(s1)
80008908:	0204cb03          	lbu	s6,32(s1)
8000890c:	fd942423          	sw	s9,-56(s0)
80008910:	00857513          	andi	a0,a0,8
80008914:	fd442623          	sw	s4,-52(s0)
80008918:	04051c63          	bnez	a0,80008970 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0xd4>
8000891c:	000a8913          	mv	s2,s5
80008920:	000b0c13          	mv	s8,s6
80008924:	080a1a63          	bnez	s4,800089b8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x11c>
80008928:	1080006f          	j	80008a30 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
8000892c:	0144a503          	lw	a0,20(s1)
80008930:	0184a583          	lw	a1,24(s1)
80008934:	03c12083          	lw	ra,60(sp)
80008938:	03812403          	lw	s0,56(sp)
8000893c:	03412483          	lw	s1,52(sp)
80008940:	03012903          	lw	s2,48(sp)
80008944:	02c12983          	lw	s3,44(sp)
80008948:	02812a03          	lw	s4,40(sp)
8000894c:	02412a83          	lw	s5,36(sp)
80008950:	02012b03          	lw	s6,32(sp)
80008954:	01c12b83          	lw	s7,28(sp)
80008958:	01812c03          	lw	s8,24(sp)
8000895c:	01412c83          	lw	s9,20(sp)
80008960:	01012d03          	lw	s10,16(sp)
80008964:	04010113          	addi	sp,sp,64
80008968:	00000317          	auipc	t1,0x0
8000896c:	1dc30067          	jr	476(t1) # 80008b44 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
80008970:	0184a603          	lw	a2,24(s1)
80008974:	0144a503          	lw	a0,20(s1)
80008978:	00c62683          	lw	a3,12(a2)
8000897c:	00098613          	mv	a2,s3
80008980:	000680e7          	jalr	a3
80008984:	14051063          	bnez	a0,80008ac4 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x228>
80008988:	00100c13          	li	s8,1
8000898c:	fd842023          	sw	s8,-64(s0)
80008990:	fc042223          	sw	zero,-60(s0)
80008994:	413b8533          	sub	a0,s7,s3
80008998:	00abb5b3          	sltu	a1,s7,a0
8000899c:	fff58593          	addi	a1,a1,-1
800089a0:	00a5fbb3          	and	s7,a1,a0
800089a4:	03000913          	li	s2,48
800089a8:	0124a823          	sw	s2,16(s1)
800089ac:	03848023          	sb	s8,32(s1)
800089b0:	00000993          	li	s3,0
800089b4:	060a0e63          	beqz	s4,80008a30 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
800089b8:	004c8c93          	addi	s9,s9,4
800089bc:	00c00593          	li	a1,12
800089c0:	000a0513          	mv	a0,s4
800089c4:	00001097          	auipc	ra,0x1
800089c8:	6ac080e7          	jalr	1708(ra) # 8000a070 <__mulsi3>
800089cc:	00100593          	li	a1,1
800089d0:	3e800613          	li	a2,1000
800089d4:	00a00693          	li	a3,10
800089d8:	0180006f          	j	800089f0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x154>
800089dc:	000ca703          	lw	a4,0(s9)
800089e0:	013709b3          	add	s3,a4,s3
800089e4:	ff450513          	addi	a0,a0,-12
800089e8:	00cc8c93          	addi	s9,s9,12
800089ec:	04050263          	beqz	a0,80008a30 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
800089f0:	ffccd703          	lhu	a4,-4(s9)
800089f4:	fe0704e3          	beqz	a4,800089dc <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x140>
800089f8:	02b71063          	bne	a4,a1,80008a18 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x17c>
800089fc:	ffecd783          	lhu	a5,-2(s9)
80008a00:	02c7f063          	bgeu	a5,a2,80008a20 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x184>
80008a04:	00100713          	li	a4,1
80008a08:	fcd7ece3          	bltu	a5,a3,800089e0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008a0c:	0647b713          	sltiu	a4,a5,100
80008a10:	00374713          	xori	a4,a4,3
80008a14:	fcdff06f          	j	800089e0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008a18:	004ca703          	lw	a4,4(s9)
80008a1c:	fc5ff06f          	j	800089e0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008a20:	0047d793          	srli	a5,a5,0x4
80008a24:	2717b713          	sltiu	a4,a5,625
80008a28:	00574713          	xori	a4,a4,5
80008a2c:	fb5ff06f          	j	800089e0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008a30:	0179fc63          	bgeu	s3,s7,80008a48 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1ac>
80008a34:	00100513          	li	a0,1
80008a38:	413b8bb3          	sub	s7,s7,s3
80008a3c:	03854263          	blt	a0,s8,80008a60 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1c4>
80008a40:	020c1c63          	bnez	s8,80008a78 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1dc>
80008a44:	03c0006f          	j	80008a80 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1e4>
80008a48:	0144a503          	lw	a0,20(s1)
80008a4c:	0184a583          	lw	a1,24(s1)
80008a50:	fc040613          	addi	a2,s0,-64
80008a54:	00000097          	auipc	ra,0x0
80008a58:	0f0080e7          	jalr	240(ra) # 80008b44 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
80008a5c:	0a80006f          	j	80008b04 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x268>
80008a60:	00200513          	li	a0,2
80008a64:	00ac1a63          	bne	s8,a0,80008a78 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1dc>
80008a68:	001bdc13          	srli	s8,s7,0x1
80008a6c:	001b8b93          	addi	s7,s7,1
80008a70:	001bdb93          	srli	s7,s7,0x1
80008a74:	00c0006f          	j	80008a80 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1e4>
80008a78:	000b8c13          	mv	s8,s7
80008a7c:	00000b93          	li	s7,0
80008a80:	0144a983          	lw	s3,20(s1)
80008a84:	0184aa03          	lw	s4,24(s1)
80008a88:	001c0c13          	addi	s8,s8,1
80008a8c:	fffc0c13          	addi	s8,s8,-1
80008a90:	000c0e63          	beqz	s8,80008aac <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x210>
80008a94:	010a2603          	lw	a2,16(s4)
80008a98:	00098513          	mv	a0,s3
80008a9c:	00090593          	mv	a1,s2
80008aa0:	000600e7          	jalr	a2
80008aa4:	fe0504e3          	beqz	a0,80008a8c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1f0>
80008aa8:	01c0006f          	j	80008ac4 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x228>
80008aac:	fc040613          	addi	a2,s0,-64
80008ab0:	00098513          	mv	a0,s3
80008ab4:	000a0593          	mv	a1,s4
80008ab8:	00000097          	auipc	ra,0x0
80008abc:	08c080e7          	jalr	140(ra) # 80008b44 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
80008ac0:	00050663          	beqz	a0,80008acc <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x230>
80008ac4:	00100513          	li	a0,1
80008ac8:	0440006f          	j	80008b0c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x270>
80008acc:	41700cb3          	neg	s9,s7
80008ad0:	fff00d13          	li	s10,-1
80008ad4:	fff00c13          	li	s8,-1
80008ad8:	018c8533          	add	a0,s9,s8
80008adc:	03a50063          	beq	a0,s10,80008afc <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x260>
80008ae0:	010a2603          	lw	a2,16(s4)
80008ae4:	00098513          	mv	a0,s3
80008ae8:	00090593          	mv	a1,s2
80008aec:	000600e7          	jalr	a2
80008af0:	001c0c13          	addi	s8,s8,1
80008af4:	fe0502e3          	beqz	a0,80008ad8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x23c>
80008af8:	0080006f          	j	80008b00 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x264>
80008afc:	000b8c13          	mv	s8,s7
80008b00:	017c3533          	sltu	a0,s8,s7
80008b04:	0154a823          	sw	s5,16(s1)
80008b08:	03648023          	sb	s6,32(s1)
80008b0c:	03c12083          	lw	ra,60(sp)
80008b10:	03812403          	lw	s0,56(sp)
80008b14:	03412483          	lw	s1,52(sp)
80008b18:	03012903          	lw	s2,48(sp)
80008b1c:	02c12983          	lw	s3,44(sp)
80008b20:	02812a03          	lw	s4,40(sp)
80008b24:	02412a83          	lw	s5,36(sp)
80008b28:	02012b03          	lw	s6,32(sp)
80008b2c:	01c12b83          	lw	s7,28(sp)
80008b30:	01812c03          	lw	s8,24(sp)
80008b34:	01412c83          	lw	s9,20(sp)
80008b38:	01012d03          	lw	s10,16(sp)
80008b3c:	04010113          	addi	sp,sp,64
80008b40:	00008067          	ret

80008b44 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>:
80008b44:	fc010113          	addi	sp,sp,-64
80008b48:	02112e23          	sw	ra,60(sp)
80008b4c:	02812c23          	sw	s0,56(sp)
80008b50:	02912a23          	sw	s1,52(sp)
80008b54:	03212823          	sw	s2,48(sp)
80008b58:	03312623          	sw	s3,44(sp)
80008b5c:	03412423          	sw	s4,40(sp)
80008b60:	03512223          	sw	s5,36(sp)
80008b64:	03612023          	sw	s6,32(sp)
80008b68:	01712e23          	sw	s7,28(sp)
80008b6c:	01812c23          	sw	s8,24(sp)
80008b70:	01912a23          	sw	s9,20(sp)
80008b74:	01a12823          	sw	s10,16(sp)
80008b78:	01b12623          	sw	s11,12(sp)
80008b7c:	04010413          	addi	s0,sp,64
80008b80:	00060993          	mv	s3,a2
80008b84:	00462603          	lw	a2,4(a2)
80008b88:	00058493          	mv	s1,a1
80008b8c:	00050913          	mv	s2,a0
80008b90:	02060063          	beqz	a2,80008bb0 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x6c>
80008b94:	0009a583          	lw	a1,0(s3)
80008b98:	00c4a683          	lw	a3,12(s1)
80008b9c:	00090513          	mv	a0,s2
80008ba0:	000680e7          	jalr	a3
80008ba4:	00050593          	mv	a1,a0
80008ba8:	00100513          	li	a0,1
80008bac:	16059063          	bnez	a1,80008d0c <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008bb0:	00c9a503          	lw	a0,12(s3)
80008bb4:	14050c63          	beqz	a0,80008d0c <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008bb8:	0089ab03          	lw	s6,8(s3)
80008bbc:	00251593          	slli	a1,a0,0x2
80008bc0:	00451513          	slli	a0,a0,0x4
80008bc4:	40b50533          	sub	a0,a0,a1
80008bc8:	00ab0bb3          	add	s7,s6,a0
80008bcc:	8000d9b7          	lui	s3,0x8000d
80008bd0:	4bb98993          	addi	s3,s3,1211 # 8000d4bb <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.299>
80008bd4:	04000d13          	li	s10,64
80008bd8:	00100c13          	li	s8,1
80008bdc:	0200006f          	j	80008bfc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xb8>
80008be0:	004b2583          	lw	a1,4(s6)
80008be4:	008b2603          	lw	a2,8(s6)
80008be8:	00c4a683          	lw	a3,12(s1)
80008bec:	00090513          	mv	a0,s2
80008bf0:	000680e7          	jalr	a3
80008bf4:	10050263          	beqz	a0,80008cf8 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008bf8:	1100006f          	j	80008d08 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008bfc:	000b5503          	lhu	a0,0(s6)
80008c00:	02050a63          	beqz	a0,80008c34 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xf0>
80008c04:	fd851ee3          	bne	a0,s8,80008be0 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x9c>
80008c08:	002b5c83          	lhu	s9,2(s6)
80008c0c:	fc040423          	sb	zero,-56(s0)
80008c10:	fc042223          	sw	zero,-60(s0)
80008c14:	3e800513          	li	a0,1000
80008c18:	04acf663          	bgeu	s9,a0,80008c64 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x120>
80008c1c:	00100d93          	li	s11,1
80008c20:	00a00513          	li	a0,10
80008c24:	04ace663          	bltu	s9,a0,80008c70 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x12c>
80008c28:	064cb513          	sltiu	a0,s9,100
80008c2c:	00354d93          	xori	s11,a0,3
80008c30:	0400006f          	j	80008c70 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x12c>
80008c34:	004b2a03          	lw	s4,4(s6)
80008c38:	04100513          	li	a0,65
80008c3c:	0aaa6063          	bltu	s4,a0,80008cdc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x198>
80008c40:	00c4aa83          	lw	s5,12(s1)
80008c44:	04000613          	li	a2,64
80008c48:	00090513          	mv	a0,s2
80008c4c:	00098593          	mv	a1,s3
80008c50:	000a80e7          	jalr	s5
80008c54:	0a051a63          	bnez	a0,80008d08 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008c58:	fc0a0a13          	addi	s4,s4,-64
80008c5c:	ff4d64e3          	bltu	s10,s4,80008c44 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x100>
80008c60:	0800006f          	j	80008ce0 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x19c>
80008c64:	004cd513          	srli	a0,s9,0x4
80008c68:	27153513          	sltiu	a0,a0,625
80008c6c:	00554d93          	xori	s11,a0,5
80008c70:	41b00c33          	neg	s8,s11
80008c74:	fc340a13          	addi	s4,s0,-61
80008c78:	01ba0a33          	add	s4,s4,s11
80008c7c:	010c9513          	slli	a0,s9,0x10
80008c80:	01055513          	srli	a0,a0,0x10
80008c84:	00a00593          	li	a1,10
80008c88:	00002097          	auipc	ra,0x2
80008c8c:	fa8080e7          	jalr	-88(ra) # 8000ac30 <__udivsi3>
80008c90:	00050a93          	mv	s5,a0
80008c94:	00a00593          	li	a1,10
80008c98:	00001097          	auipc	ra,0x1
80008c9c:	3d8080e7          	jalr	984(ra) # 8000a070 <__mulsi3>
80008ca0:	40ac8533          	sub	a0,s9,a0
80008ca4:	03056513          	ori	a0,a0,48
80008ca8:	00aa0023          	sb	a0,0(s4)
80008cac:	001c0c13          	addi	s8,s8,1
80008cb0:	fffa0a13          	addi	s4,s4,-1
80008cb4:	000a8c93          	mv	s9,s5
80008cb8:	fc0c12e3          	bnez	s8,80008c7c <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x138>
80008cbc:	00c4a683          	lw	a3,12(s1)
80008cc0:	fc440593          	addi	a1,s0,-60
80008cc4:	00090513          	mv	a0,s2
80008cc8:	000d8613          	mv	a2,s11
80008ccc:	000680e7          	jalr	a3
80008cd0:	00100c13          	li	s8,1
80008cd4:	02050263          	beqz	a0,80008cf8 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008cd8:	0300006f          	j	80008d08 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008cdc:	000a0e63          	beqz	s4,80008cf8 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008ce0:	00c4a683          	lw	a3,12(s1)
80008ce4:	00090513          	mv	a0,s2
80008ce8:	00098593          	mv	a1,s3
80008cec:	000a0613          	mv	a2,s4
80008cf0:	000680e7          	jalr	a3
80008cf4:	00051a63          	bnez	a0,80008d08 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008cf8:	00cb0b13          	addi	s6,s6,12
80008cfc:	f17b10e3          	bne	s6,s7,80008bfc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xb8>
80008d00:	00000513          	li	a0,0
80008d04:	0080006f          	j	80008d0c <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008d08:	00100513          	li	a0,1
80008d0c:	03c12083          	lw	ra,60(sp)
80008d10:	03812403          	lw	s0,56(sp)
80008d14:	03412483          	lw	s1,52(sp)
80008d18:	03012903          	lw	s2,48(sp)
80008d1c:	02c12983          	lw	s3,44(sp)
80008d20:	02812a03          	lw	s4,40(sp)
80008d24:	02412a83          	lw	s5,36(sp)
80008d28:	02012b03          	lw	s6,32(sp)
80008d2c:	01c12b83          	lw	s7,28(sp)
80008d30:	01812c03          	lw	s8,24(sp)
80008d34:	01412c83          	lw	s9,20(sp)
80008d38:	01012d03          	lw	s10,16(sp)
80008d3c:	00c12d83          	lw	s11,12(sp)
80008d40:	04010113          	addi	sp,sp,64
80008d44:	00008067          	ret

80008d48 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>:
80008d48:	ff010113          	addi	sp,sp,-16
80008d4c:	00112623          	sw	ra,12(sp)
80008d50:	00812423          	sw	s0,8(sp)
80008d54:	01010413          	addi	s0,sp,16
80008d58:	01852683          	lw	a3,24(a0)
80008d5c:	01452503          	lw	a0,20(a0)
80008d60:	00c6a303          	lw	t1,12(a3)
80008d64:	00c12083          	lw	ra,12(sp)
80008d68:	00812403          	lw	s0,8(sp)
80008d6c:	01010113          	addi	sp,sp,16
80008d70:	00030067          	jr	t1

80008d74 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E>:
80008d74:	fc010113          	addi	sp,sp,-64
80008d78:	02112e23          	sw	ra,60(sp)
80008d7c:	02812c23          	sw	s0,56(sp)
80008d80:	02912a23          	sw	s1,52(sp)
80008d84:	03212823          	sw	s2,48(sp)
80008d88:	03312623          	sw	s3,44(sp)
80008d8c:	03412423          	sw	s4,40(sp)
80008d90:	03512223          	sw	s5,36(sp)
80008d94:	03612023          	sw	s6,32(sp)
80008d98:	01712e23          	sw	s7,28(sp)
80008d9c:	01812c23          	sw	s8,24(sp)
80008da0:	01912a23          	sw	s9,20(sp)
80008da4:	04010413          	addi	s0,sp,64
80008da8:	00050493          	mv	s1,a0
80008dac:	00042903          	lw	s2,0(s0)
80008db0:	01852283          	lw	t0,24(a0)
80008db4:	00442983          	lw	s3,4(s0)
80008db8:	00842a03          	lw	s4,8(s0)
80008dbc:	01452503          	lw	a0,20(a0)
80008dc0:	00c2a303          	lw	t1,12(t0)
80008dc4:	00088a93          	mv	s5,a7
80008dc8:	00080b13          	mv	s6,a6
80008dcc:	00078b93          	mv	s7,a5
80008dd0:	00070c13          	mv	s8,a4
80008dd4:	00068c93          	mv	s9,a3
80008dd8:	000300e7          	jalr	t1
80008ddc:	fc942623          	sw	s1,-52(s0)
80008de0:	fca40823          	sb	a0,-48(s0)
80008de4:	fc0408a3          	sb	zero,-47(s0)
80008de8:	fcc40513          	addi	a0,s0,-52
80008dec:	000c8593          	mv	a1,s9
80008df0:	000c0613          	mv	a2,s8
80008df4:	000b8693          	mv	a3,s7
80008df8:	000b0713          	mv	a4,s6
80008dfc:	fffff097          	auipc	ra,0xfffff
80008e00:	8e0080e7          	jalr	-1824(ra) # 800076dc <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>
80008e04:	fcc40513          	addi	a0,s0,-52
80008e08:	000a8593          	mv	a1,s5
80008e0c:	00090613          	mv	a2,s2
80008e10:	00098693          	mv	a3,s3
80008e14:	000a0713          	mv	a4,s4
80008e18:	fffff097          	auipc	ra,0xfffff
80008e1c:	8c4080e7          	jalr	-1852(ra) # 800076dc <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>
80008e20:	fd144603          	lbu	a2,-47(s0)
80008e24:	fd044583          	lbu	a1,-48(s0)
80008e28:	00b66533          	or	a0,a2,a1
80008e2c:	04060a63          	beqz	a2,80008e80 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x10c>
80008e30:	0015f593          	andi	a1,a1,1
80008e34:	04059663          	bnez	a1,80008e80 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x10c>
80008e38:	fcc42503          	lw	a0,-52(s0)
80008e3c:	01c54583          	lbu	a1,28(a0)
80008e40:	0045f593          	andi	a1,a1,4
80008e44:	02059063          	bnez	a1,80008e64 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0xf0>
80008e48:	01852583          	lw	a1,24(a0)
80008e4c:	01452503          	lw	a0,20(a0)
80008e50:	00c5a683          	lw	a3,12(a1)
80008e54:	8000d5b7          	lui	a1,0x8000d
80008e58:	3ef58593          	addi	a1,a1,1007 # 8000d3ef <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.262>
80008e5c:	00200613          	li	a2,2
80008e60:	01c0006f          	j	80008e7c <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x108>
80008e64:	01852583          	lw	a1,24(a0)
80008e68:	01452503          	lw	a0,20(a0)
80008e6c:	00c5a683          	lw	a3,12(a1)
80008e70:	8000d5b7          	lui	a1,0x8000d
80008e74:	3ee58593          	addi	a1,a1,1006 # 8000d3ee <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.261>
80008e78:	00100613          	li	a2,1
80008e7c:	000680e7          	jalr	a3
80008e80:	00157513          	andi	a0,a0,1
80008e84:	03c12083          	lw	ra,60(sp)
80008e88:	03812403          	lw	s0,56(sp)
80008e8c:	03412483          	lw	s1,52(sp)
80008e90:	03012903          	lw	s2,48(sp)
80008e94:	02c12983          	lw	s3,44(sp)
80008e98:	02812a03          	lw	s4,40(sp)
80008e9c:	02412a83          	lw	s5,36(sp)
80008ea0:	02012b03          	lw	s6,32(sp)
80008ea4:	01c12b83          	lw	s7,28(sp)
80008ea8:	01812c03          	lw	s8,24(sp)
80008eac:	01412c83          	lw	s9,20(sp)
80008eb0:	04010113          	addi	sp,sp,64
80008eb4:	00008067          	ret

80008eb8 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E>:
80008eb8:	f6010113          	addi	sp,sp,-160
80008ebc:	08112e23          	sw	ra,156(sp)
80008ec0:	08812c23          	sw	s0,152(sp)
80008ec4:	08912a23          	sw	s1,148(sp)
80008ec8:	09212823          	sw	s2,144(sp)
80008ecc:	09312623          	sw	s3,140(sp)
80008ed0:	09412423          	sw	s4,136(sp)
80008ed4:	0a010413          	addi	s0,sp,160
80008ed8:	00058493          	mv	s1,a1
80008edc:	01c5a903          	lw	s2,28(a1)
80008ee0:	0005a983          	lw	s3,0(a1)
80008ee4:	0045aa03          	lw	s4,4(a1)
80008ee8:	00497613          	andi	a2,s2,4
80008eec:	00090593          	mv	a1,s2
80008ef0:	00060e63          	beqz	a2,80008f0c <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x54>
80008ef4:	00896593          	ori	a1,s2,8
80008ef8:	00099a63          	bnez	s3,80008f0c <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x54>
80008efc:	00100613          	li	a2,1
80008f00:	00c4a023          	sw	a2,0(s1)
80008f04:	00a00613          	li	a2,10
80008f08:	00c4a223          	sw	a2,4(s1)
80008f0c:	00000793          	li	a5,0
80008f10:	0045e593          	ori	a1,a1,4
80008f14:	00b4ae23          	sw	a1,28(s1)
80008f18:	fe740593          	addi	a1,s0,-25
80008f1c:	00a00613          	li	a2,10
80008f20:	01c0006f          	j	80008f3c <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x84>
80008f24:	05768693          	addi	a3,a3,87
80008f28:	00455513          	srli	a0,a0,0x4
80008f2c:	00d58023          	sb	a3,0(a1)
80008f30:	00178793          	addi	a5,a5,1 # 110001 <.Lline_table_start2+0x10ec53>
80008f34:	fff58593          	addi	a1,a1,-1
80008f38:	00050a63          	beqz	a0,80008f4c <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x94>
80008f3c:	00f57693          	andi	a3,a0,15
80008f40:	fec6f2e3          	bgeu	a3,a2,80008f24 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x6c>
80008f44:	03068693          	addi	a3,a3,48
80008f48:	fe1ff06f          	j	80008f28 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x70>
80008f4c:	f6840513          	addi	a0,s0,-152
80008f50:	40f50533          	sub	a0,a0,a5
80008f54:	08050713          	addi	a4,a0,128
80008f58:	8000d637          	lui	a2,0x8000d
80008f5c:	3f160613          	addi	a2,a2,1009 # 8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80008f60:	00100593          	li	a1,1
80008f64:	00200693          	li	a3,2
80008f68:	00048513          	mv	a0,s1
80008f6c:	fffff097          	auipc	ra,0xfffff
80008f70:	298080e7          	jalr	664(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80008f74:	0134a023          	sw	s3,0(s1)
80008f78:	0144a223          	sw	s4,4(s1)
80008f7c:	0124ae23          	sw	s2,28(s1)
80008f80:	09c12083          	lw	ra,156(sp)
80008f84:	09812403          	lw	s0,152(sp)
80008f88:	09412483          	lw	s1,148(sp)
80008f8c:	09012903          	lw	s2,144(sp)
80008f90:	08c12983          	lw	s3,140(sp)
80008f94:	08812a03          	lw	s4,136(sp)
80008f98:	0a010113          	addi	sp,sp,160
80008f9c:	00008067          	ret

80008fa0 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>:
80008fa0:	ff010113          	addi	sp,sp,-16
80008fa4:	00112623          	sw	ra,12(sp)
80008fa8:	00812423          	sw	s0,8(sp)
80008fac:	01010413          	addi	s0,sp,16
80008fb0:	00001097          	auipc	ra,0x1
80008fb4:	054080e7          	jalr	84(ra) # 8000a004 <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h54d6dc839f74746cE>

80008fb8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>:
80008fb8:	ff010113          	addi	sp,sp,-16
80008fbc:	00112623          	sw	ra,12(sp)
80008fc0:	00812423          	sw	s0,8(sp)
80008fc4:	01010413          	addi	s0,sp,16
80008fc8:	00050613          	mv	a2,a0
80008fcc:	00350513          	addi	a0,a0,3
80008fd0:	ffc57513          	andi	a0,a0,-4
80008fd4:	40c502b3          	sub	t0,a0,a2
80008fd8:	0255fc63          	bgeu	a1,t0,80009010 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x58>
80008fdc:	00000513          	li	a0,0
80008fe0:	02058063          	beqz	a1,80009000 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x48>
80008fe4:	00b605b3          	add	a1,a2,a1
80008fe8:	00060683          	lb	a3,0(a2)
80008fec:	fc06a693          	slti	a3,a3,-64
80008ff0:	0016c693          	xori	a3,a3,1
80008ff4:	00160613          	addi	a2,a2,1
80008ff8:	00d50533          	add	a0,a0,a3
80008ffc:	feb616e3          	bne	a2,a1,80008fe8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x30>
80009000:	00c12083          	lw	ra,12(sp)
80009004:	00812403          	lw	s0,8(sp)
80009008:	01010113          	addi	sp,sp,16
8000900c:	00008067          	ret
80009010:	405586b3          	sub	a3,a1,t0
80009014:	0026d893          	srli	a7,a3,0x2
80009018:	fc0882e3          	beqz	a7,80008fdc <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x24>
8000901c:	005602b3          	add	t0,a2,t0
80009020:	0036f593          	andi	a1,a3,3
80009024:	00c51663          	bne	a0,a2,80009030 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x78>
80009028:	00000513          	li	a0,0
8000902c:	0200006f          	j	8000904c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x94>
80009030:	00000513          	li	a0,0
80009034:	00060703          	lb	a4,0(a2)
80009038:	fc072713          	slti	a4,a4,-64
8000903c:	00174713          	xori	a4,a4,1
80009040:	00160613          	addi	a2,a2,1
80009044:	00e50533          	add	a0,a0,a4
80009048:	fe5616e3          	bne	a2,t0,80009034 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x7c>
8000904c:	00000713          	li	a4,0
80009050:	02058463          	beqz	a1,80009078 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xc0>
80009054:	ffc6f613          	andi	a2,a3,-4
80009058:	00c28633          	add	a2,t0,a2
8000905c:	00060683          	lb	a3,0(a2)
80009060:	fc06a693          	slti	a3,a3,-64
80009064:	0016c693          	xori	a3,a3,1
80009068:	00d70733          	add	a4,a4,a3
8000906c:	fff58593          	addi	a1,a1,-1
80009070:	00160613          	addi	a2,a2,1
80009074:	fe0594e3          	bnez	a1,8000905c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xa4>
80009078:	010105b7          	lui	a1,0x1010
8000907c:	10158613          	addi	a2,a1,257 # 1010101 <.Lline_table_start2+0x100ed53>
80009080:	00ff05b7          	lui	a1,0xff0
80009084:	0ff58593          	addi	a1,a1,255 # ff00ff <.Lline_table_start2+0xfeed51>
80009088:	00a70533          	add	a0,a4,a0
8000908c:	00400793          	li	a5,4
80009090:	0340006f          	j	800090c4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x10c>
80009094:	005702b3          	add	t0,a4,t0
80009098:	410688b3          	sub	a7,a3,a6
8000909c:	00387313          	andi	t1,a6,3
800090a0:	00b3fe33          	and	t3,t2,a1
800090a4:	0083d393          	srli	t2,t2,0x8
800090a8:	00b3f3b3          	and	t2,t2,a1
800090ac:	01c383b3          	add	t2,t2,t3
800090b0:	01039e13          	slli	t3,t2,0x10
800090b4:	007e03b3          	add	t2,t3,t2
800090b8:	0103d393          	srli	t2,t2,0x10
800090bc:	00a38533          	add	a0,t2,a0
800090c0:	0a031a63          	bnez	t1,80009174 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x1bc>
800090c4:	f2088ee3          	beqz	a7,80009000 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x48>
800090c8:	00088693          	mv	a3,a7
800090cc:	00028713          	mv	a4,t0
800090d0:	0c000893          	li	a7,192
800090d4:	00068813          	mv	a6,a3
800090d8:	0116e463          	bltu	a3,a7,800090e0 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x128>
800090dc:	0c000813          	li	a6,192
800090e0:	00281293          	slli	t0,a6,0x2
800090e4:	00000393          	li	t2,0
800090e8:	faf6e6e3          	bltu	a3,a5,80009094 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xdc>
800090ec:	3f02f893          	andi	a7,t0,1008
800090f0:	011708b3          	add	a7,a4,a7
800090f4:	00070313          	mv	t1,a4
800090f8:	00032e03          	lw	t3,0(t1)
800090fc:	fffe4e93          	not	t4,t3
80009100:	007ede93          	srli	t4,t4,0x7
80009104:	006e5e13          	srli	t3,t3,0x6
80009108:	00432f03          	lw	t5,4(t1)
8000910c:	01ceee33          	or	t3,t4,t3
80009110:	00ce7e33          	and	t3,t3,a2
80009114:	007e03b3          	add	t2,t3,t2
80009118:	ffff4e13          	not	t3,t5
8000911c:	007e5e13          	srli	t3,t3,0x7
80009120:	00832e83          	lw	t4,8(t1)
80009124:	006f5f13          	srli	t5,t5,0x6
80009128:	01ee6e33          	or	t3,t3,t5
8000912c:	00ce7e33          	and	t3,t3,a2
80009130:	fffecf13          	not	t5,t4
80009134:	007f5f13          	srli	t5,t5,0x7
80009138:	006ede93          	srli	t4,t4,0x6
8000913c:	01df6eb3          	or	t4,t5,t4
80009140:	00c32f03          	lw	t5,12(t1)
80009144:	00cefeb3          	and	t4,t4,a2
80009148:	01ce8e33          	add	t3,t4,t3
8000914c:	007e03b3          	add	t2,t3,t2
80009150:	ffff4e13          	not	t3,t5
80009154:	007e5e13          	srli	t3,t3,0x7
80009158:	006f5e93          	srli	t4,t5,0x6
8000915c:	01de6e33          	or	t3,t3,t4
80009160:	00ce7e33          	and	t3,t3,a2
80009164:	01030313          	addi	t1,t1,16
80009168:	007e03b3          	add	t2,t3,t2
8000916c:	f91316e3          	bne	t1,a7,800090f8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x140>
80009170:	f25ff06f          	j	80009094 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xdc>
80009174:	00000793          	li	a5,0
80009178:	0fc87813          	andi	a6,a6,252
8000917c:	00281813          	slli	a6,a6,0x2
80009180:	01070733          	add	a4,a4,a6
80009184:	0c06b813          	sltiu	a6,a3,192
80009188:	41000833          	neg	a6,a6
8000918c:	0106f6b3          	and	a3,a3,a6
80009190:	0036f693          	andi	a3,a3,3
80009194:	00269693          	slli	a3,a3,0x2
80009198:	00072803          	lw	a6,0(a4)
8000919c:	00470713          	addi	a4,a4,4
800091a0:	fff84893          	not	a7,a6
800091a4:	0078d893          	srli	a7,a7,0x7
800091a8:	00685813          	srli	a6,a6,0x6
800091ac:	0108e833          	or	a6,a7,a6
800091b0:	00c87833          	and	a6,a6,a2
800091b4:	ffc68693          	addi	a3,a3,-4
800091b8:	00f807b3          	add	a5,a6,a5
800091bc:	fc069ee3          	bnez	a3,80009198 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x1e0>
800091c0:	00b7f633          	and	a2,a5,a1
800091c4:	0087d793          	srli	a5,a5,0x8
800091c8:	00b7f5b3          	and	a1,a5,a1
800091cc:	00c585b3          	add	a1,a1,a2
800091d0:	01059613          	slli	a2,a1,0x10
800091d4:	00b605b3          	add	a1,a2,a1
800091d8:	0105d593          	srli	a1,a1,0x10
800091dc:	00a58533          	add	a0,a1,a0
800091e0:	00c12083          	lw	ra,12(sp)
800091e4:	00812403          	lw	s0,8(sp)
800091e8:	01010113          	addi	sp,sp,16
800091ec:	00008067          	ret

800091f0 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>:
800091f0:	ff010113          	addi	sp,sp,-16
800091f4:	00112623          	sw	ra,12(sp)
800091f8:	00812423          	sw	s0,8(sp)
800091fc:	01010413          	addi	s0,sp,16
80009200:	fff58613          	addi	a2,a1,-1
80009204:	00c5c6b3          	xor	a3,a1,a2
80009208:	02d67263          	bgeu	a2,a3,8000922c <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E+0x3c>
8000920c:	80000637          	lui	a2,0x80000
80009210:	40b60633          	sub	a2,a2,a1
80009214:	00a63533          	sltu	a0,a2,a0
80009218:	00154513          	xori	a0,a0,1
8000921c:	00c12083          	lw	ra,12(sp)
80009220:	00812403          	lw	s0,8(sp)
80009224:	01010113          	addi	sp,sp,16
80009228:	00008067          	ret
8000922c:	00000513          	li	a0,0
80009230:	00c12083          	lw	ra,12(sp)
80009234:	00812403          	lw	s0,8(sp)
80009238:	01010113          	addi	sp,sp,16
8000923c:	00008067          	ret

80009240 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>:
80009240:	fe010113          	addi	sp,sp,-32
80009244:	00112e23          	sw	ra,28(sp)
80009248:	00812c23          	sw	s0,24(sp)
8000924c:	00912a23          	sw	s1,20(sp)
80009250:	01212823          	sw	s2,16(sp)
80009254:	01312623          	sw	s3,12(sp)
80009258:	01412423          	sw	s4,8(sp)
8000925c:	01512223          	sw	s5,4(sp)
80009260:	02010413          	addi	s0,sp,32
80009264:	50000613          	li	a2,1280
80009268:	16c5f063          	bgeu	a1,a2,800093c8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x188>
8000926c:	00058493          	mv	s1,a1
80009270:	0a052583          	lw	a1,160(a0)
80009274:	0054da13          	srli	s4,s1,0x5
80009278:	04058c63          	beqz	a1,800092d0 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x90>
8000927c:	00100713          	li	a4,1
80009280:	40b70633          	sub	a2,a4,a1
80009284:	014587b3          	add	a5,a1,s4
80009288:	fff78693          	addi	a3,a5,-1
8000928c:	00279793          	slli	a5,a5,0x2
80009290:	00a787b3          	add	a5,a5,a0
80009294:	ffc78793          	addi	a5,a5,-4
80009298:	00259813          	slli	a6,a1,0x2
8000929c:	00a80833          	add	a6,a6,a0
800092a0:	ffc80813          	addi	a6,a6,-4
800092a4:	02900893          	li	a7,41
800092a8:	02800293          	li	t0,40
800092ac:	1515f863          	bgeu	a1,a7,800093fc <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1bc>
800092b0:	1256fa63          	bgeu	a3,t0,800093e4 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1a4>
800092b4:	00082303          	lw	t1,0(a6)
800092b8:	0067a023          	sw	t1,0(a5)
800092bc:	00160613          	addi	a2,a2,1 # 80000001 <_start+0x1>
800092c0:	fff68693          	addi	a3,a3,-1
800092c4:	ffc78793          	addi	a5,a5,-4
800092c8:	ffc80813          	addi	a6,a6,-4
800092cc:	fee610e3          	bne	a2,a4,800092ac <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x6c>
800092d0:	01f4fa93          	andi	s5,s1,31
800092d4:	02000593          	li	a1,32
800092d8:	002a1913          	slli	s2,s4,0x2
800092dc:	00b4ee63          	bltu	s1,a1,800092f8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0xb8>
800092e0:	00050993          	mv	s3,a0
800092e4:	00000593          	li	a1,0
800092e8:	00090613          	mv	a2,s2
800092ec:	00002097          	auipc	ra,0x2
800092f0:	ce0080e7          	jalr	-800(ra) # 8000afcc <memset>
800092f4:	00098513          	mv	a0,s3
800092f8:	0a052703          	lw	a4,160(a0)
800092fc:	01470733          	add	a4,a4,s4
80009300:	080a8e63          	beqz	s5,8000939c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x15c>
80009304:	fff70693          	addi	a3,a4,-1
80009308:	02700593          	li	a1,39
8000930c:	0cd5ec63          	bltu	a1,a3,800093e4 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1a4>
80009310:	00269693          	slli	a3,a3,0x2
80009314:	00d506b3          	add	a3,a0,a3
80009318:	0006a583          	lw	a1,0(a3)
8000931c:	409006b3          	neg	a3,s1
80009320:	00d5d833          	srl	a6,a1,a3
80009324:	00271793          	slli	a5,a4,0x2
80009328:	00070613          	mv	a2,a4
8000932c:	00080c63          	beqz	a6,80009344 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x104>
80009330:	02700613          	li	a2,39
80009334:	0ee66c63          	bltu	a2,a4,8000942c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1ec>
80009338:	00f50633          	add	a2,a0,a5
8000933c:	01062023          	sw	a6,0(a2)
80009340:	00170613          	addi	a2,a4,1
80009344:	001a0a13          	addi	s4,s4,1
80009348:	04ea7063          	bgeu	s4,a4,80009388 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x148>
8000934c:	01f6f693          	andi	a3,a3,31
80009350:	00a787b3          	add	a5,a5,a0
80009354:	ffc78813          	addi	a6,a5,-4
80009358:	02800793          	li	a5,40
8000935c:	ffe70893          	addi	a7,a4,-2
80009360:	0af8fa63          	bgeu	a7,a5,80009414 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1d4>
80009364:	015598b3          	sll	a7,a1,s5
80009368:	ffc82583          	lw	a1,-4(a6)
8000936c:	fff70713          	addi	a4,a4,-1
80009370:	ffc80293          	addi	t0,a6,-4
80009374:	00d5d333          	srl	t1,a1,a3
80009378:	011368b3          	or	a7,t1,a7
8000937c:	01182023          	sw	a7,0(a6)
80009380:	00028813          	mv	a6,t0
80009384:	fcea6ce3          	bltu	s4,a4,8000935c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x11c>
80009388:	01250933          	add	s2,a0,s2
8000938c:	00092583          	lw	a1,0(s2)
80009390:	015595b3          	sll	a1,a1,s5
80009394:	00b92023          	sw	a1,0(s2)
80009398:	0080006f          	j	800093a0 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x160>
8000939c:	00070613          	mv	a2,a4
800093a0:	0ac52023          	sw	a2,160(a0)
800093a4:	01c12083          	lw	ra,28(sp)
800093a8:	01812403          	lw	s0,24(sp)
800093ac:	01412483          	lw	s1,20(sp)
800093b0:	01012903          	lw	s2,16(sp)
800093b4:	00c12983          	lw	s3,12(sp)
800093b8:	00812a03          	lw	s4,8(sp)
800093bc:	00412a83          	lw	s5,4(sp)
800093c0:	02010113          	addi	sp,sp,32
800093c4:	00008067          	ret
800093c8:	8000d537          	lui	a0,0x8000d
800093cc:	53e50513          	addi	a0,a0,1342 # 8000d53e <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.417>
800093d0:	8000d637          	lui	a2,0x8000d
800093d4:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800093d8:	01d00593          	li	a1,29
800093dc:	ffffe097          	auipc	ra,0xffffe
800093e0:	cf0080e7          	jalr	-784(ra) # 800070cc <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800093e4:	8000d637          	lui	a2,0x8000d
800093e8:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800093ec:	02800593          	li	a1,40
800093f0:	00068513          	mv	a0,a3
800093f4:	ffffe097          	auipc	ra,0xffffe
800093f8:	d20080e7          	jalr	-736(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800093fc:	40c00533          	neg	a0,a2
80009400:	8000d637          	lui	a2,0x8000d
80009404:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009408:	02800593          	li	a1,40
8000940c:	ffffe097          	auipc	ra,0xffffe
80009410:	d08080e7          	jalr	-760(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009414:	8000d637          	lui	a2,0x8000d
80009418:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000941c:	fff00513          	li	a0,-1
80009420:	02800593          	li	a1,40
80009424:	ffffe097          	auipc	ra,0xffffe
80009428:	cf0080e7          	jalr	-784(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000942c:	8000d637          	lui	a2,0x8000d
80009430:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009434:	02800593          	li	a1,40
80009438:	00070513          	mv	a0,a4
8000943c:	ffffe097          	auipc	ra,0xffffe
80009440:	cd8080e7          	jalr	-808(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80009444 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>:
80009444:	fb010113          	addi	sp,sp,-80
80009448:	04112623          	sw	ra,76(sp)
8000944c:	04812423          	sw	s0,72(sp)
80009450:	04912223          	sw	s1,68(sp)
80009454:	05212023          	sw	s2,64(sp)
80009458:	03312e23          	sw	s3,60(sp)
8000945c:	03412c23          	sw	s4,56(sp)
80009460:	03512a23          	sw	s5,52(sp)
80009464:	03612823          	sw	s6,48(sp)
80009468:	03712623          	sw	s7,44(sp)
8000946c:	03812423          	sw	s8,40(sp)
80009470:	03912223          	sw	s9,36(sp)
80009474:	03a12023          	sw	s10,32(sp)
80009478:	01b12e23          	sw	s11,28(sp)
8000947c:	05010413          	addi	s0,sp,80
80009480:	00058913          	mv	s2,a1
80009484:	00261613          	slli	a2,a2,0x2
80009488:	00c58c33          	add	s8,a1,a2
8000948c:	10070463          	beqz	a4,80009594 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x150>
80009490:	00050793          	mv	a5,a0
80009494:	00000d13          	li	s10,0
80009498:	00000513          	li	a0,0
8000949c:	00170593          	addi	a1,a4,1
800094a0:	fab42a23          	sw	a1,-76(s0)
800094a4:	00271493          	slli	s1,a4,0x2
800094a8:	002d1613          	slli	a2,s10,0x2
800094ac:	00c78633          	add	a2,a5,a2
800094b0:	00090593          	mv	a1,s2
800094b4:	11858e63          	beq	a1,s8,800095d0 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x18c>
800094b8:	000d0c93          	mv	s9,s10
800094bc:	00060a13          	mv	s4,a2
800094c0:	0005ab03          	lw	s6,0(a1)
800094c4:	00458913          	addi	s2,a1,4
800094c8:	001d0d13          	addi	s10,s10,1
800094cc:	00460613          	addi	a2,a2,4
800094d0:	00090593          	mv	a1,s2
800094d4:	fe0b00e3          	beqz	s6,800094b4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x70>
800094d8:	fcf42223          	sw	a5,-60(s0)
800094dc:	fce42423          	sw	a4,-56(s0)
800094e0:	fca42023          	sw	a0,-64(s0)
800094e4:	00000a93          	li	s5,0
800094e8:	fa942c23          	sw	s1,-72(s0)
800094ec:	000c8b93          	mv	s7,s9
800094f0:	fad42e23          	sw	a3,-68(s0)
800094f4:	00068d93          	mv	s11,a3
800094f8:	02800513          	li	a0,40
800094fc:	10abf863          	bgeu	s7,a0,8000960c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x1c8>
80009500:	000da503          	lw	a0,0(s11)
80009504:	000a2983          	lw	s3,0(s4)
80009508:	004d8d93          	addi	s11,s11,4
8000950c:	00000593          	li	a1,0
80009510:	000b0613          	mv	a2,s6
80009514:	00000693          	li	a3,0
80009518:	00001097          	auipc	ra,0x1
8000951c:	ba0080e7          	jalr	-1120(ra) # 8000a0b8 <__muldi3>
80009520:	01598ab3          	add	s5,s3,s5
80009524:	013ab633          	sltu	a2,s5,s3
80009528:	00aa8533          	add	a0,s5,a0
8000952c:	01553ab3          	sltu	s5,a0,s5
80009530:	00b605b3          	add	a1,a2,a1
80009534:	01558ab3          	add	s5,a1,s5
80009538:	00aa2023          	sw	a0,0(s4)
8000953c:	001b8b93          	addi	s7,s7,1
80009540:	ffc48493          	addi	s1,s1,-4
80009544:	004a0a13          	addi	s4,s4,4
80009548:	fa0498e3          	bnez	s1,800094f8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0xb4>
8000954c:	fc842703          	lw	a4,-56(s0)
80009550:	00070513          	mv	a0,a4
80009554:	fc442783          	lw	a5,-60(s0)
80009558:	020a8063          	beqz	s5,80009578 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x134>
8000955c:	00ec8533          	add	a0,s9,a4
80009560:	02800593          	li	a1,40
80009564:	0cb57063          	bgeu	a0,a1,80009624 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x1e0>
80009568:	00251513          	slli	a0,a0,0x2
8000956c:	00a78533          	add	a0,a5,a0
80009570:	01552023          	sw	s5,0(a0)
80009574:	fb442503          	lw	a0,-76(s0)
80009578:	01950cb3          	add	s9,a0,s9
8000957c:	fc042503          	lw	a0,-64(s0)
80009580:	00ace463          	bltu	s9,a0,80009588 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x144>
80009584:	000c8513          	mv	a0,s9
80009588:	fbc42683          	lw	a3,-68(s0)
8000958c:	fb842483          	lw	s1,-72(s0)
80009590:	f19ff06f          	j	800094a8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x64>
80009594:	00000593          	li	a1,0
80009598:	00000513          	li	a0,0
8000959c:	40b006b3          	neg	a3,a1
800095a0:	00090593          	mv	a1,s2
800095a4:	03858663          	beq	a1,s8,800095d0 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x18c>
800095a8:	0005a603          	lw	a2,0(a1)
800095ac:	00458913          	addi	s2,a1,4
800095b0:	fff68693          	addi	a3,a3,-1
800095b4:	00090593          	mv	a1,s2
800095b8:	fe0606e3          	beqz	a2,800095a4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x160>
800095bc:	fff6c593          	not	a1,a3
800095c0:	00a5e463          	bltu	a1,a0,800095c8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x184>
800095c4:	00058513          	mv	a0,a1
800095c8:	40d005b3          	neg	a1,a3
800095cc:	fd1ff06f          	j	8000959c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x158>
800095d0:	04c12083          	lw	ra,76(sp)
800095d4:	04812403          	lw	s0,72(sp)
800095d8:	04412483          	lw	s1,68(sp)
800095dc:	04012903          	lw	s2,64(sp)
800095e0:	03c12983          	lw	s3,60(sp)
800095e4:	03812a03          	lw	s4,56(sp)
800095e8:	03412a83          	lw	s5,52(sp)
800095ec:	03012b03          	lw	s6,48(sp)
800095f0:	02c12b83          	lw	s7,44(sp)
800095f4:	02812c03          	lw	s8,40(sp)
800095f8:	02412c83          	lw	s9,36(sp)
800095fc:	02012d03          	lw	s10,32(sp)
80009600:	01c12d83          	lw	s11,28(sp)
80009604:	05010113          	addi	sp,sp,80
80009608:	00008067          	ret
8000960c:	8000d637          	lui	a2,0x8000d
80009610:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009614:	02800593          	li	a1,40
80009618:	000b8513          	mv	a0,s7
8000961c:	ffffe097          	auipc	ra,0xffffe
80009620:	af8080e7          	jalr	-1288(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009624:	8000d637          	lui	a2,0x8000d
80009628:	51460613          	addi	a2,a2,1300 # 8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000962c:	02800593          	li	a1,40
80009630:	ffffe097          	auipc	ra,0xffffe
80009634:	ae4080e7          	jalr	-1308(ra) # 80007114 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80009638 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E>:
80009638:	f7010113          	addi	sp,sp,-144
8000963c:	08112623          	sw	ra,140(sp)
80009640:	08812423          	sw	s0,136(sp)
80009644:	09010413          	addi	s0,sp,144
80009648:	00058813          	mv	a6,a1
8000964c:	01c5a583          	lw	a1,28(a1)
80009650:	00052503          	lw	a0,0(a0)
80009654:	0105f613          	andi	a2,a1,16
80009658:	02061463          	bnez	a2,80009680 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x48>
8000965c:	0205f593          	andi	a1,a1,32
80009660:	04059c63          	bnez	a1,800096b8 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x80>
80009664:	00100593          	li	a1,1
80009668:	00080613          	mv	a2,a6
8000966c:	08c12083          	lw	ra,140(sp)
80009670:	08812403          	lw	s0,136(sp)
80009674:	09010113          	addi	sp,sp,144
80009678:	00000317          	auipc	t1,0x0
8000967c:	38030067          	jr	896(t1) # 800099f8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>
80009680:	00000793          	li	a5,0
80009684:	ff740593          	addi	a1,s0,-9
80009688:	00a00613          	li	a2,10
8000968c:	01c0006f          	j	800096a8 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x70>
80009690:	05768693          	addi	a3,a3,87
80009694:	00455513          	srli	a0,a0,0x4
80009698:	00d58023          	sb	a3,0(a1)
8000969c:	00178793          	addi	a5,a5,1
800096a0:	fff58593          	addi	a1,a1,-1
800096a4:	04050663          	beqz	a0,800096f0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xb8>
800096a8:	00f57693          	andi	a3,a0,15
800096ac:	fec6f2e3          	bgeu	a3,a2,80009690 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x58>
800096b0:	03068693          	addi	a3,a3,48
800096b4:	fe1ff06f          	j	80009694 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x5c>
800096b8:	00000793          	li	a5,0
800096bc:	ff740593          	addi	a1,s0,-9
800096c0:	00a00613          	li	a2,10
800096c4:	01c0006f          	j	800096e0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xa8>
800096c8:	03768693          	addi	a3,a3,55
800096cc:	00455513          	srli	a0,a0,0x4
800096d0:	00d58023          	sb	a3,0(a1)
800096d4:	00178793          	addi	a5,a5,1
800096d8:	fff58593          	addi	a1,a1,-1
800096dc:	00050a63          	beqz	a0,800096f0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xb8>
800096e0:	00f57693          	andi	a3,a0,15
800096e4:	fec6f2e3          	bgeu	a3,a2,800096c8 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x90>
800096e8:	03068693          	addi	a3,a3,48
800096ec:	fe1ff06f          	j	800096cc <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x94>
800096f0:	f7840513          	addi	a0,s0,-136
800096f4:	40f50533          	sub	a0,a0,a5
800096f8:	08050713          	addi	a4,a0,128
800096fc:	8000d637          	lui	a2,0x8000d
80009700:	3f160613          	addi	a2,a2,1009 # 8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009704:	00100593          	li	a1,1
80009708:	00200693          	li	a3,2
8000970c:	00080513          	mv	a0,a6
80009710:	fffff097          	auipc	ra,0xfffff
80009714:	af4080e7          	jalr	-1292(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009718:	08c12083          	lw	ra,140(sp)
8000971c:	08812403          	lw	s0,136(sp)
80009720:	09010113          	addi	sp,sp,144
80009724:	00008067          	ret

80009728 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>:
80009728:	fe010113          	addi	sp,sp,-32
8000972c:	00112e23          	sw	ra,28(sp)
80009730:	00812c23          	sw	s0,24(sp)
80009734:	02010413          	addi	s0,sp,32
80009738:	00050593          	mv	a1,a0
8000973c:	8000d537          	lui	a0,0x8000d
80009740:	59050513          	addi	a0,a0,1424 # 8000d590 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.433>
80009744:	fea42023          	sw	a0,-32(s0)
80009748:	00100513          	li	a0,1
8000974c:	fea42223          	sw	a0,-28(s0)
80009750:	fe042823          	sw	zero,-16(s0)
80009754:	00400513          	li	a0,4
80009758:	fea42423          	sw	a0,-24(s0)
8000975c:	fe042623          	sw	zero,-20(s0)
80009760:	fe040513          	addi	a0,s0,-32
80009764:	ffffe097          	auipc	ra,0xffffe
80009768:	93c080e7          	jalr	-1732(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

8000976c <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>:
8000976c:	ff010113          	addi	sp,sp,-16
80009770:	00112623          	sw	ra,12(sp)
80009774:	00812423          	sw	s0,8(sp)
80009778:	01010413          	addi	s0,sp,16
8000977c:	00058713          	mv	a4,a1
80009780:	01c5a603          	lw	a2,28(a1)
80009784:	0085a683          	lw	a3,8(a1)
80009788:	00052583          	lw	a1,0(a0)
8000978c:	00167613          	andi	a2,a2,1
80009790:	02068063          	beqz	a3,800097b0 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E+0x44>
80009794:	00c72683          	lw	a3,12(a4)
80009798:	00070513          	mv	a0,a4
8000979c:	00c12083          	lw	ra,12(sp)
800097a0:	00812403          	lw	s0,8(sp)
800097a4:	01010113          	addi	sp,sp,16
800097a8:	ffffe317          	auipc	t1,0xffffe
800097ac:	17030067          	jr	368(t1) # 80007918 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E>
800097b0:	00070513          	mv	a0,a4
800097b4:	00c12083          	lw	ra,12(sp)
800097b8:	00812403          	lw	s0,8(sp)
800097bc:	01010113          	addi	sp,sp,16
800097c0:	ffffe317          	auipc	t1,0xffffe
800097c4:	4cc30067          	jr	1228(t1) # 80007c8c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E>

800097c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>:
800097c8:	f7010113          	addi	sp,sp,-144
800097cc:	08112623          	sw	ra,140(sp)
800097d0:	08812423          	sw	s0,136(sp)
800097d4:	09010413          	addi	s0,sp,144
800097d8:	00052603          	lw	a2,0(a0)
800097dc:	00058513          	mv	a0,a1
800097e0:	00000793          	li	a5,0
800097e4:	ff740593          	addi	a1,s0,-9
800097e8:	00a00693          	li	a3,10
800097ec:	01c0006f          	j	80009808 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x40>
800097f0:	05770713          	addi	a4,a4,87
800097f4:	00465613          	srli	a2,a2,0x4
800097f8:	00e58023          	sb	a4,0(a1)
800097fc:	00178793          	addi	a5,a5,1
80009800:	fff58593          	addi	a1,a1,-1
80009804:	00060a63          	beqz	a2,80009818 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x50>
80009808:	00f67713          	andi	a4,a2,15
8000980c:	fed772e3          	bgeu	a4,a3,800097f0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x28>
80009810:	03070713          	addi	a4,a4,48
80009814:	fe1ff06f          	j	800097f4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x2c>
80009818:	f7840593          	addi	a1,s0,-136
8000981c:	40f585b3          	sub	a1,a1,a5
80009820:	08058713          	addi	a4,a1,128
80009824:	8000d637          	lui	a2,0x8000d
80009828:	3f160613          	addi	a2,a2,1009 # 8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
8000982c:	00100593          	li	a1,1
80009830:	00200693          	li	a3,2
80009834:	fffff097          	auipc	ra,0xfffff
80009838:	9d0080e7          	jalr	-1584(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
8000983c:	08c12083          	lw	ra,140(sp)
80009840:	08812403          	lw	s0,136(sp)
80009844:	09010113          	addi	sp,sp,144
80009848:	00008067          	ret

8000984c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E>:
8000984c:	f7010113          	addi	sp,sp,-144
80009850:	08112623          	sw	ra,140(sp)
80009854:	08812423          	sw	s0,136(sp)
80009858:	09010413          	addi	s0,sp,144
8000985c:	00052603          	lw	a2,0(a0)
80009860:	00058513          	mv	a0,a1
80009864:	00000793          	li	a5,0
80009868:	ff740593          	addi	a1,s0,-9
8000986c:	00a00693          	li	a3,10
80009870:	01c0006f          	j	8000988c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x40>
80009874:	03770713          	addi	a4,a4,55
80009878:	00465613          	srli	a2,a2,0x4
8000987c:	00e58023          	sb	a4,0(a1)
80009880:	00178793          	addi	a5,a5,1
80009884:	fff58593          	addi	a1,a1,-1
80009888:	00060a63          	beqz	a2,8000989c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x50>
8000988c:	00f67713          	andi	a4,a2,15
80009890:	fed772e3          	bgeu	a4,a3,80009874 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x28>
80009894:	03070713          	addi	a4,a4,48
80009898:	fe1ff06f          	j	80009878 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x2c>
8000989c:	f7840593          	addi	a1,s0,-136
800098a0:	40f585b3          	sub	a1,a1,a5
800098a4:	08058713          	addi	a4,a1,128
800098a8:	8000d637          	lui	a2,0x8000d
800098ac:	3f160613          	addi	a2,a2,1009 # 8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
800098b0:	00100593          	li	a1,1
800098b4:	00200693          	li	a3,2
800098b8:	fffff097          	auipc	ra,0xfffff
800098bc:	94c080e7          	jalr	-1716(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
800098c0:	08c12083          	lw	ra,140(sp)
800098c4:	08812403          	lw	s0,136(sp)
800098c8:	09010113          	addi	sp,sp,144
800098cc:	00008067          	ret

800098d0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE>:
800098d0:	f7010113          	addi	sp,sp,-144
800098d4:	08112623          	sw	ra,140(sp)
800098d8:	08812423          	sw	s0,136(sp)
800098dc:	09010413          	addi	s0,sp,144
800098e0:	00058813          	mv	a6,a1
800098e4:	01c5a583          	lw	a1,28(a1)
800098e8:	0105f613          	andi	a2,a1,16
800098ec:	02061663          	bnez	a2,80009918 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x48>
800098f0:	0205f593          	andi	a1,a1,32
800098f4:	06059063          	bnez	a1,80009954 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x84>
800098f8:	00052503          	lw	a0,0(a0)
800098fc:	00100593          	li	a1,1
80009900:	00080613          	mv	a2,a6
80009904:	08c12083          	lw	ra,140(sp)
80009908:	08812403          	lw	s0,136(sp)
8000990c:	09010113          	addi	sp,sp,144
80009910:	00000317          	auipc	t1,0x0
80009914:	0e830067          	jr	232(t1) # 800099f8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>
80009918:	00052503          	lw	a0,0(a0)
8000991c:	00000793          	li	a5,0
80009920:	ff740593          	addi	a1,s0,-9
80009924:	00a00613          	li	a2,10
80009928:	01c0006f          	j	80009944 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x74>
8000992c:	05768693          	addi	a3,a3,87
80009930:	00455513          	srli	a0,a0,0x4
80009934:	00d58023          	sb	a3,0(a1)
80009938:	00178793          	addi	a5,a5,1
8000993c:	fff58593          	addi	a1,a1,-1
80009940:	04050863          	beqz	a0,80009990 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xc0>
80009944:	00f57693          	andi	a3,a0,15
80009948:	fec6f2e3          	bgeu	a3,a2,8000992c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x5c>
8000994c:	03068693          	addi	a3,a3,48
80009950:	fe1ff06f          	j	80009930 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x60>
80009954:	00052503          	lw	a0,0(a0)
80009958:	00000793          	li	a5,0
8000995c:	ff740593          	addi	a1,s0,-9
80009960:	00a00613          	li	a2,10
80009964:	01c0006f          	j	80009980 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xb0>
80009968:	03768693          	addi	a3,a3,55
8000996c:	00455513          	srli	a0,a0,0x4
80009970:	00d58023          	sb	a3,0(a1)
80009974:	00178793          	addi	a5,a5,1
80009978:	fff58593          	addi	a1,a1,-1
8000997c:	00050a63          	beqz	a0,80009990 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xc0>
80009980:	00f57693          	andi	a3,a0,15
80009984:	fec6f2e3          	bgeu	a3,a2,80009968 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x98>
80009988:	03068693          	addi	a3,a3,48
8000998c:	fe1ff06f          	j	8000996c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x9c>
80009990:	f7840513          	addi	a0,s0,-136
80009994:	40f50533          	sub	a0,a0,a5
80009998:	08050713          	addi	a4,a0,128
8000999c:	8000d637          	lui	a2,0x8000d
800099a0:	3f160613          	addi	a2,a2,1009 # 8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
800099a4:	00100593          	li	a1,1
800099a8:	00200693          	li	a3,2
800099ac:	00080513          	mv	a0,a6
800099b0:	fffff097          	auipc	ra,0xfffff
800099b4:	854080e7          	jalr	-1964(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
800099b8:	08c12083          	lw	ra,140(sp)
800099bc:	08812403          	lw	s0,136(sp)
800099c0:	09010113          	addi	sp,sp,144
800099c4:	00008067          	ret

800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>:
800099c8:	ff010113          	addi	sp,sp,-16
800099cc:	00112623          	sw	ra,12(sp)
800099d0:	00812423          	sw	s0,8(sp)
800099d4:	01010413          	addi	s0,sp,16
800099d8:	00052503          	lw	a0,0(a0)
800099dc:	00058613          	mv	a2,a1
800099e0:	00100593          	li	a1,1
800099e4:	00c12083          	lw	ra,12(sp)
800099e8:	00812403          	lw	s0,8(sp)
800099ec:	01010113          	addi	sp,sp,16
800099f0:	00000317          	auipc	t1,0x0
800099f4:	00830067          	jr	8(t1) # 800099f8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>

800099f8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>:
800099f8:	fb010113          	addi	sp,sp,-80
800099fc:	04112623          	sw	ra,76(sp)
80009a00:	04812423          	sw	s0,72(sp)
80009a04:	04912223          	sw	s1,68(sp)
80009a08:	05212023          	sw	s2,64(sp)
80009a0c:	03312e23          	sw	s3,60(sp)
80009a10:	03412c23          	sw	s4,56(sp)
80009a14:	03512a23          	sw	s5,52(sp)
80009a18:	03612823          	sw	s6,48(sp)
80009a1c:	03712623          	sw	s7,44(sp)
80009a20:	03812423          	sw	s8,40(sp)
80009a24:	03912223          	sw	s9,36(sp)
80009a28:	03a12023          	sw	s10,32(sp)
80009a2c:	01b12e23          	sw	s11,28(sp)
80009a30:	05010413          	addi	s0,sp,80
80009a34:	00060493          	mv	s1,a2
80009a38:	00058913          	mv	s2,a1
80009a3c:	00050993          	mv	s3,a0
80009a40:	00455513          	srli	a0,a0,0x4
80009a44:	00a00b93          	li	s7,10
80009a48:	27100593          	li	a1,625
80009a4c:	8000db37          	lui	s6,0x8000d
80009a50:	3f3b0b13          	addi	s6,s6,1011 # 8000d3f3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>
80009a54:	02b57663          	bgeu	a0,a1,80009a80 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x88>
80009a58:	06300513          	li	a0,99
80009a5c:	0f356263          	bltu	a0,s3,80009b40 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x148>
80009a60:	00a00513          	li	a0,10
80009a64:	12a9fc63          	bgeu	s3,a0,80009b9c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x1a4>
80009a68:	fffb8b93          	addi	s7,s7,-1
80009a6c:	fc240513          	addi	a0,s0,-62
80009a70:	01750533          	add	a0,a0,s7
80009a74:	0309e593          	ori	a1,s3,48
80009a78:	00b50023          	sb	a1,0(a0)
80009a7c:	1440006f          	j	80009bc0 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x1c8>
80009a80:	fa942e23          	sw	s1,-68(s0)
80009a84:	00000b93          	li	s7,0
80009a88:	fc840c13          	addi	s8,s0,-56
80009a8c:	fca40c93          	addi	s9,s0,-54
80009a90:	00002537          	lui	a0,0x2
80009a94:	71050a13          	addi	s4,a0,1808 # 2710 <.Lline_table_start2+0x1362>
80009a98:	05f5e537          	lui	a0,0x5f5e
80009a9c:	0ff50d13          	addi	s10,a0,255 # 5f5e0ff <.Lline_table_start2+0x5f5cd51>
80009aa0:	00098a93          	mv	s5,s3
80009aa4:	00098513          	mv	a0,s3
80009aa8:	000a0593          	mv	a1,s4
80009aac:	00001097          	auipc	ra,0x1
80009ab0:	184080e7          	jalr	388(ra) # 8000ac30 <__udivsi3>
80009ab4:	00050993          	mv	s3,a0
80009ab8:	000a0593          	mv	a1,s4
80009abc:	00000097          	auipc	ra,0x0
80009ac0:	5b4080e7          	jalr	1460(ra) # 8000a070 <__mulsi3>
80009ac4:	40aa8db3          	sub	s11,s5,a0
80009ac8:	010d9513          	slli	a0,s11,0x10
80009acc:	01055513          	srli	a0,a0,0x10
80009ad0:	06400593          	li	a1,100
80009ad4:	00001097          	auipc	ra,0x1
80009ad8:	15c080e7          	jalr	348(ra) # 8000ac30 <__udivsi3>
80009adc:	00151493          	slli	s1,a0,0x1
80009ae0:	06400593          	li	a1,100
80009ae4:	00000097          	auipc	ra,0x0
80009ae8:	58c080e7          	jalr	1420(ra) # 8000a070 <__mulsi3>
80009aec:	40ad8533          	sub	a0,s11,a0
80009af0:	01151513          	slli	a0,a0,0x11
80009af4:	009b04b3          	add	s1,s6,s1
80009af8:	0014c583          	lbu	a1,1(s1)
80009afc:	01055513          	srli	a0,a0,0x10
80009b00:	017c0633          	add	a2,s8,s7
80009b04:	0004c683          	lbu	a3,0(s1)
80009b08:	00b600a3          	sb	a1,1(a2)
80009b0c:	00ab0533          	add	a0,s6,a0
80009b10:	00154583          	lbu	a1,1(a0)
80009b14:	00054503          	lbu	a0,0(a0)
80009b18:	00d60023          	sb	a3,0(a2)
80009b1c:	017c8633          	add	a2,s9,s7
80009b20:	00b600a3          	sb	a1,1(a2)
80009b24:	00a60023          	sb	a0,0(a2)
80009b28:	ffcb8b93          	addi	s7,s7,-4
80009b2c:	f75d6ae3          	bltu	s10,s5,80009aa0 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0xa8>
80009b30:	00ab8b93          	addi	s7,s7,10
80009b34:	fbc42483          	lw	s1,-68(s0)
80009b38:	06300513          	li	a0,99
80009b3c:	f33572e3          	bgeu	a0,s3,80009a60 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x68>
80009b40:	01099513          	slli	a0,s3,0x10
80009b44:	01055513          	srli	a0,a0,0x10
80009b48:	06400593          	li	a1,100
80009b4c:	00001097          	auipc	ra,0x1
80009b50:	0e4080e7          	jalr	228(ra) # 8000ac30 <__udivsi3>
80009b54:	00050a13          	mv	s4,a0
80009b58:	06400593          	li	a1,100
80009b5c:	00000097          	auipc	ra,0x0
80009b60:	514080e7          	jalr	1300(ra) # 8000a070 <__mulsi3>
80009b64:	40a98533          	sub	a0,s3,a0
80009b68:	01151513          	slli	a0,a0,0x11
80009b6c:	01055513          	srli	a0,a0,0x10
80009b70:	ffeb8b93          	addi	s7,s7,-2
80009b74:	00ab0533          	add	a0,s6,a0
80009b78:	00154583          	lbu	a1,1(a0)
80009b7c:	00054503          	lbu	a0,0(a0)
80009b80:	fc240613          	addi	a2,s0,-62
80009b84:	01760633          	add	a2,a2,s7
80009b88:	00b600a3          	sb	a1,1(a2)
80009b8c:	00a60023          	sb	a0,0(a2)
80009b90:	000a0993          	mv	s3,s4
80009b94:	00a00513          	li	a0,10
80009b98:	ecaa68e3          	bltu	s4,a0,80009a68 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x70>
80009b9c:	00199993          	slli	s3,s3,0x1
80009ba0:	ffeb8b93          	addi	s7,s7,-2
80009ba4:	013b09b3          	add	s3,s6,s3
80009ba8:	0019c503          	lbu	a0,1(s3)
80009bac:	0009c583          	lbu	a1,0(s3)
80009bb0:	fc240613          	addi	a2,s0,-62
80009bb4:	01760633          	add	a2,a2,s7
80009bb8:	00a600a3          	sb	a0,1(a2)
80009bbc:	00b60023          	sb	a1,0(a2)
80009bc0:	fc240713          	addi	a4,s0,-62
80009bc4:	01770733          	add	a4,a4,s7
80009bc8:	00a00513          	li	a0,10
80009bcc:	417507b3          	sub	a5,a0,s7
80009bd0:	00100613          	li	a2,1
80009bd4:	00048513          	mv	a0,s1
80009bd8:	00090593          	mv	a1,s2
80009bdc:	00000693          	li	a3,0
80009be0:	ffffe097          	auipc	ra,0xffffe
80009be4:	624080e7          	jalr	1572(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009be8:	04c12083          	lw	ra,76(sp)
80009bec:	04812403          	lw	s0,72(sp)
80009bf0:	04412483          	lw	s1,68(sp)
80009bf4:	04012903          	lw	s2,64(sp)
80009bf8:	03c12983          	lw	s3,60(sp)
80009bfc:	03812a03          	lw	s4,56(sp)
80009c00:	03412a83          	lw	s5,52(sp)
80009c04:	03012b03          	lw	s6,48(sp)
80009c08:	02c12b83          	lw	s7,44(sp)
80009c0c:	02812c03          	lw	s8,40(sp)
80009c10:	02412c83          	lw	s9,36(sp)
80009c14:	02012d03          	lw	s10,32(sp)
80009c18:	01c12d83          	lw	s11,28(sp)
80009c1c:	05010113          	addi	sp,sp,80
80009c20:	00008067          	ret

80009c24 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE>:
80009c24:	fb010113          	addi	sp,sp,-80
80009c28:	04112623          	sw	ra,76(sp)
80009c2c:	04812423          	sw	s0,72(sp)
80009c30:	04912223          	sw	s1,68(sp)
80009c34:	05212023          	sw	s2,64(sp)
80009c38:	03312e23          	sw	s3,60(sp)
80009c3c:	03412c23          	sw	s4,56(sp)
80009c40:	03512a23          	sw	s5,52(sp)
80009c44:	03612823          	sw	s6,48(sp)
80009c48:	03712623          	sw	s7,44(sp)
80009c4c:	03812423          	sw	s8,40(sp)
80009c50:	03912223          	sw	s9,36(sp)
80009c54:	03a12023          	sw	s10,32(sp)
80009c58:	01b12e23          	sw	s11,28(sp)
80009c5c:	05010413          	addi	s0,sp,80
80009c60:	00068493          	mv	s1,a3
80009c64:	00060913          	mv	s2,a2
80009c68:	00058a13          	mv	s4,a1
80009c6c:	00050993          	mv	s3,a0
80009c70:	01c59513          	slli	a0,a1,0x1c
80009c74:	0049d593          	srli	a1,s3,0x4
80009c78:	00a5e533          	or	a0,a1,a0
80009c7c:	27153513          	sltiu	a0,a0,625
80009c80:	004a5593          	srli	a1,s4,0x4
80009c84:	0015b593          	seqz	a1,a1
80009c88:	00a5f533          	and	a0,a1,a0
80009c8c:	8000dc37          	lui	s8,0x8000d
80009c90:	3f3c0c13          	addi	s8,s8,1011 # 8000d3f3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>
80009c94:	0e051863          	bnez	a0,80009d84 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x160>
80009c98:	fb242823          	sw	s2,-80(s0)
80009c9c:	fa942a23          	sw	s1,-76(s0)
80009ca0:	00000c93          	li	s9,0
80009ca4:	fca40d93          	addi	s11,s0,-54
80009ca8:	00002537          	lui	a0,0x2
80009cac:	71050a93          	addi	s5,a0,1808 # 2710 <.Lline_table_start2+0x1362>
80009cb0:	05f5e537          	lui	a0,0x5f5e
80009cb4:	0ff50493          	addi	s1,a0,255 # 5f5e0ff <.Lline_table_start2+0x5f5cd51>
80009cb8:	00098b13          	mv	s6,s3
80009cbc:	00098513          	mv	a0,s3
80009cc0:	000a0593          	mv	a1,s4
80009cc4:	000a8613          	mv	a2,s5
80009cc8:	00000693          	li	a3,0
80009ccc:	00001097          	auipc	ra,0x1
80009cd0:	f88080e7          	jalr	-120(ra) # 8000ac54 <__udivdi3>
80009cd4:	00050993          	mv	s3,a0
80009cd8:	00058b93          	mv	s7,a1
80009cdc:	000a8613          	mv	a2,s5
80009ce0:	00000693          	li	a3,0
80009ce4:	00000097          	auipc	ra,0x0
80009ce8:	3d4080e7          	jalr	980(ra) # 8000a0b8 <__muldi3>
80009cec:	40ab0933          	sub	s2,s6,a0
80009cf0:	01091513          	slli	a0,s2,0x10
80009cf4:	01055513          	srli	a0,a0,0x10
80009cf8:	06400593          	li	a1,100
80009cfc:	00001097          	auipc	ra,0x1
80009d00:	f34080e7          	jalr	-204(ra) # 8000ac30 <__udivsi3>
80009d04:	00151d13          	slli	s10,a0,0x1
80009d08:	06400593          	li	a1,100
80009d0c:	00000097          	auipc	ra,0x0
80009d10:	364080e7          	jalr	868(ra) # 8000a070 <__mulsi3>
80009d14:	40a90533          	sub	a0,s2,a0
80009d18:	01151513          	slli	a0,a0,0x11
80009d1c:	01ac0d33          	add	s10,s8,s10
80009d20:	001d4583          	lbu	a1,1(s10)
80009d24:	01055513          	srli	a0,a0,0x10
80009d28:	fc840613          	addi	a2,s0,-56
80009d2c:	01960633          	add	a2,a2,s9
80009d30:	000d4683          	lbu	a3,0(s10)
80009d34:	00b600a3          	sb	a1,1(a2)
80009d38:	00ac0533          	add	a0,s8,a0
80009d3c:	00154583          	lbu	a1,1(a0)
80009d40:	00054503          	lbu	a0,0(a0)
80009d44:	00d60023          	sb	a3,0(a2)
80009d48:	019d8633          	add	a2,s11,s9
80009d4c:	00b600a3          	sb	a1,1(a2)
80009d50:	00a60023          	sb	a0,0(a2)
80009d54:	0164b533          	sltu	a0,s1,s6
80009d58:	014035b3          	snez	a1,s4
80009d5c:	00b56533          	or	a0,a0,a1
80009d60:	ffcc8c93          	addi	s9,s9,-4
80009d64:	000b8a13          	mv	s4,s7
80009d68:	f40518e3          	bnez	a0,80009cb8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x94>
80009d6c:	014c8c93          	addi	s9,s9,20
80009d70:	fb442483          	lw	s1,-76(s0)
80009d74:	fb042903          	lw	s2,-80(s0)
80009d78:	06300513          	li	a0,99
80009d7c:	01356a63          	bltu	a0,s3,80009d90 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x16c>
80009d80:	0640006f          	j	80009de4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1c0>
80009d84:	01400c93          	li	s9,20
80009d88:	06300513          	li	a0,99
80009d8c:	05357c63          	bgeu	a0,s3,80009de4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1c0>
80009d90:	01099513          	slli	a0,s3,0x10
80009d94:	01055513          	srli	a0,a0,0x10
80009d98:	06400593          	li	a1,100
80009d9c:	00001097          	auipc	ra,0x1
80009da0:	e94080e7          	jalr	-364(ra) # 8000ac30 <__udivsi3>
80009da4:	00050a13          	mv	s4,a0
80009da8:	06400593          	li	a1,100
80009dac:	00000097          	auipc	ra,0x0
80009db0:	2c4080e7          	jalr	708(ra) # 8000a070 <__mulsi3>
80009db4:	40a98533          	sub	a0,s3,a0
80009db8:	01151513          	slli	a0,a0,0x11
80009dbc:	01055513          	srli	a0,a0,0x10
80009dc0:	ffec8c93          	addi	s9,s9,-2
80009dc4:	00ac0533          	add	a0,s8,a0
80009dc8:	00154583          	lbu	a1,1(a0)
80009dcc:	00054503          	lbu	a0,0(a0)
80009dd0:	fb840613          	addi	a2,s0,-72
80009dd4:	01960633          	add	a2,a2,s9
80009dd8:	00b600a3          	sb	a1,1(a2)
80009ddc:	00a60023          	sb	a0,0(a2)
80009de0:	000a0993          	mv	s3,s4
80009de4:	00a00513          	li	a0,10
80009de8:	00a9fe63          	bgeu	s3,a0,80009e04 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1e0>
80009dec:	fffc8c93          	addi	s9,s9,-1
80009df0:	fb840513          	addi	a0,s0,-72
80009df4:	01950533          	add	a0,a0,s9
80009df8:	0309e593          	ori	a1,s3,48
80009dfc:	00b50023          	sb	a1,0(a0)
80009e00:	0280006f          	j	80009e28 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x204>
80009e04:	00199993          	slli	s3,s3,0x1
80009e08:	ffec8c93          	addi	s9,s9,-2
80009e0c:	013c09b3          	add	s3,s8,s3
80009e10:	0019c503          	lbu	a0,1(s3)
80009e14:	0009c583          	lbu	a1,0(s3)
80009e18:	fb840613          	addi	a2,s0,-72
80009e1c:	01960633          	add	a2,a2,s9
80009e20:	00a600a3          	sb	a0,1(a2)
80009e24:	00b60023          	sb	a1,0(a2)
80009e28:	fb840713          	addi	a4,s0,-72
80009e2c:	01970733          	add	a4,a4,s9
80009e30:	01400513          	li	a0,20
80009e34:	419507b3          	sub	a5,a0,s9
80009e38:	00100613          	li	a2,1
80009e3c:	00048513          	mv	a0,s1
80009e40:	00090593          	mv	a1,s2
80009e44:	00000693          	li	a3,0
80009e48:	ffffe097          	auipc	ra,0xffffe
80009e4c:	3bc080e7          	jalr	956(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009e50:	04c12083          	lw	ra,76(sp)
80009e54:	04812403          	lw	s0,72(sp)
80009e58:	04412483          	lw	s1,68(sp)
80009e5c:	04012903          	lw	s2,64(sp)
80009e60:	03c12983          	lw	s3,60(sp)
80009e64:	03812a03          	lw	s4,56(sp)
80009e68:	03412a83          	lw	s5,52(sp)
80009e6c:	03012b03          	lw	s6,48(sp)
80009e70:	02c12b83          	lw	s7,44(sp)
80009e74:	02812c03          	lw	s8,40(sp)
80009e78:	02412c83          	lw	s9,36(sp)
80009e7c:	02012d03          	lw	s10,32(sp)
80009e80:	01c12d83          	lw	s11,28(sp)
80009e84:	05010113          	addi	sp,sp,80
80009e88:	00008067          	ret

80009e8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>:
80009e8c:	ff010113          	addi	sp,sp,-16
80009e90:	00112623          	sw	ra,12(sp)
80009e94:	00812423          	sw	s0,8(sp)
80009e98:	01010413          	addi	s0,sp,16
80009e9c:	00452603          	lw	a2,4(a0)
80009ea0:	00052503          	lw	a0,0(a0)
80009ea4:	00c62303          	lw	t1,12(a2)
80009ea8:	00c12083          	lw	ra,12(sp)
80009eac:	00812403          	lw	s0,8(sp)
80009eb0:	01010113          	addi	sp,sp,16
80009eb4:	00030067          	jr	t1

80009eb8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE>:
80009eb8:	f7010113          	addi	sp,sp,-144
80009ebc:	08112623          	sw	ra,140(sp)
80009ec0:	08812423          	sw	s0,136(sp)
80009ec4:	09010413          	addi	s0,sp,144
80009ec8:	00052503          	lw	a0,0(a0)
80009ecc:	00058813          	mv	a6,a1
80009ed0:	01c5a603          	lw	a2,28(a1)
80009ed4:	00452583          	lw	a1,4(a0)
80009ed8:	00052503          	lw	a0,0(a0)
80009edc:	01067693          	andi	a3,a2,16
80009ee0:	02069463          	bnez	a3,80009f08 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x50>
80009ee4:	02067613          	andi	a2,a2,32
80009ee8:	06061463          	bnez	a2,80009f50 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x98>
80009eec:	00100613          	li	a2,1
80009ef0:	00080693          	mv	a3,a6
80009ef4:	08c12083          	lw	ra,140(sp)
80009ef8:	08812403          	lw	s0,136(sp)
80009efc:	09010113          	addi	sp,sp,144
80009f00:	00000317          	auipc	t1,0x0
80009f04:	d2430067          	jr	-732(t1) # 80009c24 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE>
80009f08:	00000793          	li	a5,0
80009f0c:	ff740613          	addi	a2,s0,-9
80009f10:	00a00693          	li	a3,10
80009f14:	02c0006f          	j	80009f40 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x88>
80009f18:	05770713          	addi	a4,a4,87
80009f1c:	00455513          	srli	a0,a0,0x4
80009f20:	01c59893          	slli	a7,a1,0x1c
80009f24:	01156533          	or	a0,a0,a7
80009f28:	0045d593          	srli	a1,a1,0x4
80009f2c:	00e60023          	sb	a4,0(a2)
80009f30:	00178793          	addi	a5,a5,1
80009f34:	00b56733          	or	a4,a0,a1
80009f38:	fff60613          	addi	a2,a2,-1
80009f3c:	04070e63          	beqz	a4,80009f98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xe0>
80009f40:	00f57713          	andi	a4,a0,15
80009f44:	fcd77ae3          	bgeu	a4,a3,80009f18 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x60>
80009f48:	03070713          	addi	a4,a4,48
80009f4c:	fd1ff06f          	j	80009f1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x64>
80009f50:	00000793          	li	a5,0
80009f54:	ff740613          	addi	a2,s0,-9
80009f58:	00a00693          	li	a3,10
80009f5c:	02c0006f          	j	80009f88 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xd0>
80009f60:	03770713          	addi	a4,a4,55
80009f64:	00455513          	srli	a0,a0,0x4
80009f68:	01c59893          	slli	a7,a1,0x1c
80009f6c:	01156533          	or	a0,a0,a7
80009f70:	0045d593          	srli	a1,a1,0x4
80009f74:	00e60023          	sb	a4,0(a2)
80009f78:	00178793          	addi	a5,a5,1
80009f7c:	00b56733          	or	a4,a0,a1
80009f80:	fff60613          	addi	a2,a2,-1
80009f84:	00070a63          	beqz	a4,80009f98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xe0>
80009f88:	00f57713          	andi	a4,a0,15
80009f8c:	fcd77ae3          	bgeu	a4,a3,80009f60 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xa8>
80009f90:	03070713          	addi	a4,a4,48
80009f94:	fd1ff06f          	j	80009f64 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xac>
80009f98:	f7840513          	addi	a0,s0,-136
80009f9c:	40f50533          	sub	a0,a0,a5
80009fa0:	08050713          	addi	a4,a0,128
80009fa4:	8000d637          	lui	a2,0x8000d
80009fa8:	3f160613          	addi	a2,a2,1009 # 8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009fac:	00100593          	li	a1,1
80009fb0:	00200693          	li	a3,2
80009fb4:	00080513          	mv	a0,a6
80009fb8:	ffffe097          	auipc	ra,0xffffe
80009fbc:	24c080e7          	jalr	588(ra) # 80008204 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009fc0:	08c12083          	lw	ra,140(sp)
80009fc4:	08812403          	lw	s0,136(sp)
80009fc8:	09010113          	addi	sp,sp,144
80009fcc:	00008067          	ret

80009fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>:
80009fd0:	ff010113          	addi	sp,sp,-16
80009fd4:	00112623          	sw	ra,12(sp)
80009fd8:	00812423          	sw	s0,8(sp)
80009fdc:	01010413          	addi	s0,sp,16
80009fe0:	00052683          	lw	a3,0(a0)
80009fe4:	00452603          	lw	a2,4(a0)
80009fe8:	00058513          	mv	a0,a1
80009fec:	00068593          	mv	a1,a3
80009ff0:	00c12083          	lw	ra,12(sp)
80009ff4:	00812403          	lw	s0,8(sp)
80009ff8:	01010113          	addi	sp,sp,16
80009ffc:	ffffe317          	auipc	t1,0xffffe
8000a000:	60830067          	jr	1544(t1) # 80008604 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E>

8000a004 <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h54d6dc839f74746cE>:
8000a004:	fc010113          	addi	sp,sp,-64
8000a008:	02112e23          	sw	ra,60(sp)
8000a00c:	02812c23          	sw	s0,56(sp)
8000a010:	04010413          	addi	s0,sp,64
8000a014:	fca42423          	sw	a0,-56(s0)
8000a018:	fcb42623          	sw	a1,-52(s0)
8000a01c:	fc840513          	addi	a0,s0,-56
8000a020:	fea42423          	sw	a0,-24(s0)
8000a024:	8000a537          	lui	a0,0x8000a
8000a028:	9c850513          	addi	a0,a0,-1592 # 800099c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
8000a02c:	fea42623          	sw	a0,-20(s0)
8000a030:	fcc40593          	addi	a1,s0,-52
8000a034:	feb42823          	sw	a1,-16(s0)
8000a038:	fea42a23          	sw	a0,-12(s0)
8000a03c:	8000d537          	lui	a0,0x8000d
8000a040:	5bc50513          	addi	a0,a0,1468 # 8000d5bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469>
8000a044:	fca42823          	sw	a0,-48(s0)
8000a048:	00200513          	li	a0,2
8000a04c:	fca42a23          	sw	a0,-44(s0)
8000a050:	fe042023          	sw	zero,-32(s0)
8000a054:	fe840593          	addi	a1,s0,-24
8000a058:	fcb42c23          	sw	a1,-40(s0)
8000a05c:	fca42e23          	sw	a0,-36(s0)
8000a060:	fd040513          	addi	a0,s0,-48
8000a064:	00060593          	mv	a1,a2
8000a068:	ffffd097          	auipc	ra,0xffffd
8000a06c:	038080e7          	jalr	56(ra) # 800070a0 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

8000a070 <__mulsi3>:
8000a070:	ff010113          	addi	sp,sp,-16
8000a074:	00112623          	sw	ra,12(sp)
8000a078:	00812423          	sw	s0,8(sp)
8000a07c:	01010413          	addi	s0,sp,16
8000a080:	00000613          	li	a2,0
8000a084:	02050063          	beqz	a0,8000a0a4 <__mulsi3+0x34>
8000a088:	01f51693          	slli	a3,a0,0x1f
8000a08c:	41f6d693          	srai	a3,a3,0x1f
8000a090:	00b6f6b3          	and	a3,a3,a1
8000a094:	00c68633          	add	a2,a3,a2
8000a098:	00155513          	srli	a0,a0,0x1
8000a09c:	00159593          	slli	a1,a1,0x1
8000a0a0:	fe0514e3          	bnez	a0,8000a088 <__mulsi3+0x18>
8000a0a4:	00060513          	mv	a0,a2
8000a0a8:	00c12083          	lw	ra,12(sp)
8000a0ac:	00812403          	lw	s0,8(sp)
8000a0b0:	01010113          	addi	sp,sp,16
8000a0b4:	00008067          	ret

8000a0b8 <__muldi3>:
8000a0b8:	ff010113          	addi	sp,sp,-16
8000a0bc:	00112623          	sw	ra,12(sp)
8000a0c0:	00812423          	sw	s0,8(sp)
8000a0c4:	01010413          	addi	s0,sp,16
8000a0c8:	00b56733          	or	a4,a0,a1
8000a0cc:	04070c63          	beqz	a4,8000a124 <__muldi3+0x6c>
8000a0d0:	00000713          	li	a4,0
8000a0d4:	00000793          	li	a5,0
8000a0d8:	01f51813          	slli	a6,a0,0x1f
8000a0dc:	41f85813          	srai	a6,a6,0x1f
8000a0e0:	00d878b3          	and	a7,a6,a3
8000a0e4:	00c87833          	and	a6,a6,a2
8000a0e8:	00e80733          	add	a4,a6,a4
8000a0ec:	01073833          	sltu	a6,a4,a6
8000a0f0:	00f887b3          	add	a5,a7,a5
8000a0f4:	010787b3          	add	a5,a5,a6
8000a0f8:	00155513          	srli	a0,a0,0x1
8000a0fc:	01f59813          	slli	a6,a1,0x1f
8000a100:	01056533          	or	a0,a0,a6
8000a104:	0015d593          	srli	a1,a1,0x1
8000a108:	01f65813          	srli	a6,a2,0x1f
8000a10c:	00169693          	slli	a3,a3,0x1
8000a110:	0106e6b3          	or	a3,a3,a6
8000a114:	00b56833          	or	a6,a0,a1
8000a118:	00161613          	slli	a2,a2,0x1
8000a11c:	fa081ee3          	bnez	a6,8000a0d8 <__muldi3+0x20>
8000a120:	0080006f          	j	8000a128 <__muldi3+0x70>
8000a124:	00000793          	li	a5,0
8000a128:	00070513          	mv	a0,a4
8000a12c:	00078593          	mv	a1,a5
8000a130:	00c12083          	lw	ra,12(sp)
8000a134:	00812403          	lw	s0,8(sp)
8000a138:	01010113          	addi	sp,sp,16
8000a13c:	00008067          	ret

8000a140 <memcpy>:
8000a140:	ff010113          	addi	sp,sp,-16
8000a144:	00112623          	sw	ra,12(sp)
8000a148:	00812423          	sw	s0,8(sp)
8000a14c:	01010413          	addi	s0,sp,16
8000a150:	01000693          	li	a3,16
8000a154:	08d66063          	bltu	a2,a3,8000a1d4 <memcpy+0x94>
8000a158:	40a006b3          	neg	a3,a0
8000a15c:	0036f693          	andi	a3,a3,3
8000a160:	00d50733          	add	a4,a0,a3
8000a164:	02e57463          	bgeu	a0,a4,8000a18c <memcpy+0x4c>
8000a168:	00068793          	mv	a5,a3
8000a16c:	00050813          	mv	a6,a0
8000a170:	00058893          	mv	a7,a1
8000a174:	0008c283          	lbu	t0,0(a7)
8000a178:	00580023          	sb	t0,0(a6)
8000a17c:	00180813          	addi	a6,a6,1
8000a180:	fff78793          	addi	a5,a5,-1
8000a184:	00188893          	addi	a7,a7,1
8000a188:	fe0796e3          	bnez	a5,8000a174 <memcpy+0x34>
8000a18c:	00d585b3          	add	a1,a1,a3
8000a190:	40d60633          	sub	a2,a2,a3
8000a194:	ffc67793          	andi	a5,a2,-4
8000a198:	0035f813          	andi	a6,a1,3
8000a19c:	00f706b3          	add	a3,a4,a5
8000a1a0:	06081463          	bnez	a6,8000a208 <memcpy+0xc8>
8000a1a4:	00d77e63          	bgeu	a4,a3,8000a1c0 <memcpy+0x80>
8000a1a8:	00058813          	mv	a6,a1
8000a1ac:	00082883          	lw	a7,0(a6)
8000a1b0:	01172023          	sw	a7,0(a4)
8000a1b4:	00470713          	addi	a4,a4,4
8000a1b8:	00480813          	addi	a6,a6,4
8000a1bc:	fed768e3          	bltu	a4,a3,8000a1ac <memcpy+0x6c>
8000a1c0:	00f585b3          	add	a1,a1,a5
8000a1c4:	00367613          	andi	a2,a2,3
8000a1c8:	00c68733          	add	a4,a3,a2
8000a1cc:	00e6ea63          	bltu	a3,a4,8000a1e0 <memcpy+0xa0>
8000a1d0:	0280006f          	j	8000a1f8 <memcpy+0xb8>
8000a1d4:	00050693          	mv	a3,a0
8000a1d8:	00c50733          	add	a4,a0,a2
8000a1dc:	00e57e63          	bgeu	a0,a4,8000a1f8 <memcpy+0xb8>
8000a1e0:	0005c703          	lbu	a4,0(a1)
8000a1e4:	00e68023          	sb	a4,0(a3)
8000a1e8:	00168693          	addi	a3,a3,1
8000a1ec:	fff60613          	addi	a2,a2,-1
8000a1f0:	00158593          	addi	a1,a1,1
8000a1f4:	fe0616e3          	bnez	a2,8000a1e0 <memcpy+0xa0>
8000a1f8:	00c12083          	lw	ra,12(sp)
8000a1fc:	00812403          	lw	s0,8(sp)
8000a200:	01010113          	addi	sp,sp,16
8000a204:	00008067          	ret
8000a208:	fad77ce3          	bgeu	a4,a3,8000a1c0 <memcpy+0x80>
8000a20c:	00359893          	slli	a7,a1,0x3
8000a210:	0188f813          	andi	a6,a7,24
8000a214:	ffc5f293          	andi	t0,a1,-4
8000a218:	0002a303          	lw	t1,0(t0)
8000a21c:	411008b3          	neg	a7,a7
8000a220:	0188f893          	andi	a7,a7,24
8000a224:	00428293          	addi	t0,t0,4
8000a228:	0002a383          	lw	t2,0(t0)
8000a22c:	01035333          	srl	t1,t1,a6
8000a230:	01139e33          	sll	t3,t2,a7
8000a234:	006e6333          	or	t1,t3,t1
8000a238:	00672023          	sw	t1,0(a4)
8000a23c:	00470713          	addi	a4,a4,4
8000a240:	00428293          	addi	t0,t0,4
8000a244:	00038313          	mv	t1,t2
8000a248:	fed760e3          	bltu	a4,a3,8000a228 <memcpy+0xe8>
8000a24c:	f75ff06f          	j	8000a1c0 <memcpy+0x80>

8000a250 <__addsf3>:
8000a250:	ff010113          	addi	sp,sp,-16
8000a254:	00112623          	sw	ra,12(sp)
8000a258:	00812423          	sw	s0,8(sp)
8000a25c:	01010413          	addi	s0,sp,16
8000a260:	00c12083          	lw	ra,12(sp)
8000a264:	00812403          	lw	s0,8(sp)
8000a268:	01010113          	addi	sp,sp,16
8000a26c:	00000317          	auipc	t1,0x0
8000a270:	00830067          	jr	8(t1) # 8000a274 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E>

8000a274 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E>:
8000a274:	ff010113          	addi	sp,sp,-16
8000a278:	00112623          	sw	ra,12(sp)
8000a27c:	00812423          	sw	s0,8(sp)
8000a280:	01010413          	addi	s0,sp,16
8000a284:	80000637          	lui	a2,0x80000
8000a288:	fff60713          	addi	a4,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000a28c:	00e576b3          	and	a3,a0,a4
8000a290:	80800637          	lui	a2,0x80800
8000a294:	00c68833          	add	a6,a3,a2
8000a298:	00160793          	addi	a5,a2,1 # 80800001 <KALLOC_BUFFER+0x7f0001>
8000a29c:	00e5f733          	and	a4,a1,a4
8000a2a0:	02f86263          	bltu	a6,a5,8000a2c4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x50>
8000a2a4:	00c70633          	add	a2,a4,a2
8000a2a8:	00f66e63          	bltu	a2,a5,8000a2c4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x50>
8000a2ac:	00800637          	lui	a2,0x800
8000a2b0:	fff60613          	addi	a2,a2,-1 # 7fffff <.Lline_table_start2+0x7fec51>
8000a2b4:	02e6e263          	bltu	a3,a4,8000a2d8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x64>
8000a2b8:	00058893          	mv	a7,a1
8000a2bc:	00050713          	mv	a4,a0
8000a2c0:	0200006f          	j	8000a2e0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x6c>
8000a2c4:	7f800637          	lui	a2,0x7f800
8000a2c8:	02d67e63          	bgeu	a2,a3,8000a304 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x90>
8000a2cc:	00400637          	lui	a2,0x400
8000a2d0:	00c6e633          	or	a2,a3,a2
8000a2d4:	3300006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a2d8:	00050893          	mv	a7,a0
8000a2dc:	00058713          	mv	a4,a1
8000a2e0:	00171693          	slli	a3,a4,0x1
8000a2e4:	0186d693          	srli	a3,a3,0x18
8000a2e8:	00189793          	slli	a5,a7,0x1
8000a2ec:	0187d813          	srli	a6,a5,0x18
8000a2f0:	00c777b3          	and	a5,a4,a2
8000a2f4:	02068063          	beqz	a3,8000a314 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0xa0>
8000a2f8:	00c8f8b3          	and	a7,a7,a2
8000a2fc:	16081a63          	bnez	a6,8000a470 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1fc>
8000a300:	0d40006f          	j	8000a3d4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x160>
8000a304:	08e67c63          	bgeu	a2,a4,8000a39c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x128>
8000a308:	00400637          	lui	a2,0x400
8000a30c:	00c76633          	or	a2,a4,a2
8000a310:	2f40006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a314:	0a078263          	beqz	a5,8000a3b8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x144>
8000a318:	0017d693          	srli	a3,a5,0x1
8000a31c:	00d7e6b3          	or	a3,a5,a3
8000a320:	0026d293          	srli	t0,a3,0x2
8000a324:	0056e6b3          	or	a3,a3,t0
8000a328:	0046d293          	srli	t0,a3,0x4
8000a32c:	0056e6b3          	or	a3,a3,t0
8000a330:	0086d293          	srli	t0,a3,0x8
8000a334:	0056e6b3          	or	a3,a3,t0
8000a338:	0106d293          	srli	t0,a3,0x10
8000a33c:	0056e6b3          	or	a3,a3,t0
8000a340:	fff6c693          	not	a3,a3
8000a344:	0016d293          	srli	t0,a3,0x1
8000a348:	55555337          	lui	t1,0x55555
8000a34c:	55530313          	addi	t1,t1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a350:	0062f2b3          	and	t0,t0,t1
8000a354:	405686b3          	sub	a3,a3,t0
8000a358:	333332b7          	lui	t0,0x33333
8000a35c:	33328293          	addi	t0,t0,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a360:	0056f333          	and	t1,a3,t0
8000a364:	0026d693          	srli	a3,a3,0x2
8000a368:	0056f6b3          	and	a3,a3,t0
8000a36c:	00d306b3          	add	a3,t1,a3
8000a370:	0046d293          	srli	t0,a3,0x4
8000a374:	005686b3          	add	a3,a3,t0
8000a378:	0f0f12b7          	lui	t0,0xf0f1
8000a37c:	f0f28293          	addi	t0,t0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a380:	0056f6b3          	and	a3,a3,t0
8000a384:	00869293          	slli	t0,a3,0x8
8000a388:	005686b3          	add	a3,a3,t0
8000a38c:	01069293          	slli	t0,a3,0x10
8000a390:	005686b3          	add	a3,a3,t0
8000a394:	0186d693          	srli	a3,a3,0x18
8000a398:	0240006f          	j	8000a3bc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x148>
8000a39c:	26c69063          	bne	a3,a2,8000a5fc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x388>
8000a3a0:	00a5c5b3          	xor	a1,a1,a0
8000a3a4:	80000637          	lui	a2,0x80000
8000a3a8:	00c59463          	bne	a1,a2,8000a3b0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x13c>
8000a3ac:	7fc00537          	lui	a0,0x7fc00
8000a3b0:	00050613          	mv	a2,a0
8000a3b4:	2500006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a3b8:	02000693          	li	a3,32
8000a3bc:	01868293          	addi	t0,a3,24
8000a3c0:	00900313          	li	t1,9
8000a3c4:	40d306b3          	sub	a3,t1,a3
8000a3c8:	005797b3          	sll	a5,a5,t0
8000a3cc:	00c8f8b3          	and	a7,a7,a2
8000a3d0:	0a081063          	bnez	a6,8000a470 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1fc>
8000a3d4:	08088463          	beqz	a7,8000a45c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1e8>
8000a3d8:	0018d813          	srli	a6,a7,0x1
8000a3dc:	0108e833          	or	a6,a7,a6
8000a3e0:	00285293          	srli	t0,a6,0x2
8000a3e4:	00586833          	or	a6,a6,t0
8000a3e8:	00485293          	srli	t0,a6,0x4
8000a3ec:	00586833          	or	a6,a6,t0
8000a3f0:	00885293          	srli	t0,a6,0x8
8000a3f4:	00586833          	or	a6,a6,t0
8000a3f8:	01085293          	srli	t0,a6,0x10
8000a3fc:	00586833          	or	a6,a6,t0
8000a400:	fff84813          	not	a6,a6
8000a404:	00185293          	srli	t0,a6,0x1
8000a408:	55555337          	lui	t1,0x55555
8000a40c:	55530313          	addi	t1,t1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a410:	0062f2b3          	and	t0,t0,t1
8000a414:	40580833          	sub	a6,a6,t0
8000a418:	333332b7          	lui	t0,0x33333
8000a41c:	33328293          	addi	t0,t0,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a420:	00587333          	and	t1,a6,t0
8000a424:	00285813          	srli	a6,a6,0x2
8000a428:	00587833          	and	a6,a6,t0
8000a42c:	01030833          	add	a6,t1,a6
8000a430:	00485293          	srli	t0,a6,0x4
8000a434:	00580833          	add	a6,a6,t0
8000a438:	0f0f12b7          	lui	t0,0xf0f1
8000a43c:	f0f28293          	addi	t0,t0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a440:	00587833          	and	a6,a6,t0
8000a444:	00881293          	slli	t0,a6,0x8
8000a448:	00580833          	add	a6,a6,t0
8000a44c:	01081293          	slli	t0,a6,0x10
8000a450:	00580833          	add	a6,a6,t0
8000a454:	01885813          	srli	a6,a6,0x18
8000a458:	0080006f          	j	8000a460 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1ec>
8000a45c:	02000813          	li	a6,32
8000a460:	01880293          	addi	t0,a6,24
8000a464:	00900313          	li	t1,9
8000a468:	41030833          	sub	a6,t1,a6
8000a46c:	005898b3          	sll	a7,a7,t0
8000a470:	800002b7          	lui	t0,0x80000
8000a474:	00a5c5b3          	xor	a1,a1,a0
8000a478:	00379793          	slli	a5,a5,0x3
8000a47c:	04000337          	lui	t1,0x4000
8000a480:	00389893          	slli	a7,a7,0x3
8000a484:	0068e533          	or	a0,a7,t1
8000a488:	01069663          	bne	a3,a6,8000a494 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x220>
8000a48c:	00050813          	mv	a6,a0
8000a490:	0280006f          	j	8000a4b8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x244>
8000a494:	410688b3          	sub	a7,a3,a6
8000a498:	02000393          	li	t2,32
8000a49c:	00100813          	li	a6,1
8000a4a0:	0078fc63          	bgeu	a7,t2,8000a4b8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x244>
8000a4a4:	41100833          	neg	a6,a7
8000a4a8:	01051833          	sll	a6,a0,a6
8000a4ac:	01003833          	snez	a6,a6
8000a4b0:	01155533          	srl	a0,a0,a7
8000a4b4:	01056833          	or	a6,a0,a6
8000a4b8:	00577533          	and	a0,a4,t0
8000a4bc:	0067e733          	or	a4,a5,t1
8000a4c0:	0205c263          	bltz	a1,8000a4e4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x270>
8000a4c4:	00e805b3          	add	a1,a6,a4
8000a4c8:	00459713          	slli	a4,a1,0x4
8000a4cc:	0a075c63          	bgez	a4,8000a584 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a4d0:	00187713          	andi	a4,a6,1
8000a4d4:	0015d593          	srli	a1,a1,0x1
8000a4d8:	00e5e5b3          	or	a1,a1,a4
8000a4dc:	00168693          	addi	a3,a3,1
8000a4e0:	0a40006f          	j	8000a584 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a4e4:	410705b3          	sub	a1,a4,a6
8000a4e8:	10058663          	beqz	a1,8000a5f4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x380>
8000a4ec:	01a5d713          	srli	a4,a1,0x1a
8000a4f0:	08071a63          	bnez	a4,8000a584 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a4f4:	0015d713          	srli	a4,a1,0x1
8000a4f8:	00e5e733          	or	a4,a1,a4
8000a4fc:	00275793          	srli	a5,a4,0x2
8000a500:	00f76733          	or	a4,a4,a5
8000a504:	00475793          	srli	a5,a4,0x4
8000a508:	00f76733          	or	a4,a4,a5
8000a50c:	00875793          	srli	a5,a4,0x8
8000a510:	00f76733          	or	a4,a4,a5
8000a514:	01075793          	srli	a5,a4,0x10
8000a518:	00f76733          	or	a4,a4,a5
8000a51c:	fff74713          	not	a4,a4
8000a520:	00175793          	srli	a5,a4,0x1
8000a524:	55555837          	lui	a6,0x55555
8000a528:	55580813          	addi	a6,a6,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a52c:	0107f7b3          	and	a5,a5,a6
8000a530:	40f70733          	sub	a4,a4,a5
8000a534:	333337b7          	lui	a5,0x33333
8000a538:	33378793          	addi	a5,a5,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a53c:	00f77833          	and	a6,a4,a5
8000a540:	00275713          	srli	a4,a4,0x2
8000a544:	00f77733          	and	a4,a4,a5
8000a548:	00e80733          	add	a4,a6,a4
8000a54c:	00475793          	srli	a5,a4,0x4
8000a550:	00f70733          	add	a4,a4,a5
8000a554:	0f0f17b7          	lui	a5,0xf0f1
8000a558:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a55c:	00f77733          	and	a4,a4,a5
8000a560:	00871793          	slli	a5,a4,0x8
8000a564:	00f70733          	add	a4,a4,a5
8000a568:	01071793          	slli	a5,a4,0x10
8000a56c:	00f70733          	add	a4,a4,a5
8000a570:	01875713          	srli	a4,a4,0x18
8000a574:	ffb70713          	addi	a4,a4,-5
8000a578:	00e595b3          	sll	a1,a1,a4
8000a57c:	40e686b3          	sub	a3,a3,a4
8000a580:	0180006f          	j	8000a598 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x324>
8000a584:	0fe00713          	li	a4,254
8000a588:	00d75863          	bge	a4,a3,8000a598 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x324>
8000a58c:	7f800637          	lui	a2,0x7f800
8000a590:	00c56633          	or	a2,a0,a2
8000a594:	0700006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a598:	02d04263          	bgtz	a3,8000a5bc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x348>
8000a59c:	00100713          	li	a4,1
8000a5a0:	40d70733          	sub	a4,a4,a3
8000a5a4:	fff68693          	addi	a3,a3,-1
8000a5a8:	00d596b3          	sll	a3,a1,a3
8000a5ac:	00d036b3          	snez	a3,a3
8000a5b0:	00e5d5b3          	srl	a1,a1,a4
8000a5b4:	00d5e5b3          	or	a1,a1,a3
8000a5b8:	00000693          	li	a3,0
8000a5bc:	0075f713          	andi	a4,a1,7
8000a5c0:	0035d593          	srli	a1,a1,0x3
8000a5c4:	00c5f633          	and	a2,a1,a2
8000a5c8:	01769693          	slli	a3,a3,0x17
8000a5cc:	00a6e6b3          	or	a3,a3,a0
8000a5d0:	00400513          	li	a0,4
8000a5d4:	00d66633          	or	a2,a2,a3
8000a5d8:	00e57663          	bgeu	a0,a4,8000a5e4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x370>
8000a5dc:	00160613          	addi	a2,a2,1 # 7f800001 <.Lline_table_start2+0x7f7fec53>
8000a5e0:	0240006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a5e4:	02a71063          	bne	a4,a0,8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a5e8:	0015f593          	andi	a1,a1,1
8000a5ec:	00b60633          	add	a2,a2,a1
8000a5f0:	0140006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a5f4:	00000613          	li	a2,0
8000a5f8:	00c0006f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a5fc:	00c71e63          	bne	a4,a2,8000a618 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x3a4>
8000a600:	00058613          	mv	a2,a1
8000a604:	00060513          	mv	a0,a2
8000a608:	00c12083          	lw	ra,12(sp)
8000a60c:	00812403          	lw	s0,8(sp)
8000a610:	01010113          	addi	sp,sp,16
8000a614:	00008067          	ret
8000a618:	00068863          	beqz	a3,8000a628 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x3b4>
8000a61c:	00050613          	mv	a2,a0
8000a620:	c80716e3          	bnez	a4,8000a2ac <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x38>
8000a624:	fe1ff06f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a628:	00058613          	mv	a2,a1
8000a62c:	fc071ce3          	bnez	a4,8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a630:	00a5f633          	and	a2,a1,a0
8000a634:	fd1ff06f          	j	8000a604 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>

8000a638 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE>:
8000a638:	fd010113          	addi	sp,sp,-48
8000a63c:	02112623          	sw	ra,44(sp)
8000a640:	02812423          	sw	s0,40(sp)
8000a644:	02912223          	sw	s1,36(sp)
8000a648:	03212023          	sw	s2,32(sp)
8000a64c:	01312e23          	sw	s3,28(sp)
8000a650:	01412c23          	sw	s4,24(sp)
8000a654:	01512a23          	sw	s5,20(sp)
8000a658:	01612823          	sw	s6,16(sp)
8000a65c:	01712623          	sw	s7,12(sp)
8000a660:	03010413          	addi	s0,sp,48
8000a664:	00068993          	mv	s3,a3
8000a668:	00058913          	mv	s2,a1
8000a66c:	00050493          	mv	s1,a0
8000a670:	0a068e63          	beqz	a3,8000a72c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xf4>
8000a674:	0a071c63          	bnez	a4,8000a72c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xf4>
8000a678:	1e060263          	beqz	a2,8000a85c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x224>
8000a67c:	21367863          	bgeu	a2,s3,8000a88c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x254>
8000a680:	0109d693          	srli	a3,s3,0x10
8000a684:	00c6b533          	sltu	a0,a3,a2
8000a688:	00154593          	xori	a1,a0,1
8000a68c:	00098513          	mv	a0,s3
8000a690:	00c6e463          	bltu	a3,a2,8000a698 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x60>
8000a694:	00068513          	mv	a0,a3
8000a698:	00459593          	slli	a1,a1,0x4
8000a69c:	00855793          	srli	a5,a0,0x8
8000a6a0:	00c7b6b3          	sltu	a3,a5,a2
8000a6a4:	0016c693          	xori	a3,a3,1
8000a6a8:	00c7e463          	bltu	a5,a2,8000a6b0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x78>
8000a6ac:	00078513          	mv	a0,a5
8000a6b0:	00369693          	slli	a3,a3,0x3
8000a6b4:	00b6e5b3          	or	a1,a3,a1
8000a6b8:	00455793          	srli	a5,a0,0x4
8000a6bc:	00c7b6b3          	sltu	a3,a5,a2
8000a6c0:	0016c693          	xori	a3,a3,1
8000a6c4:	00c7e463          	bltu	a5,a2,8000a6cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x94>
8000a6c8:	00078513          	mv	a0,a5
8000a6cc:	00269693          	slli	a3,a3,0x2
8000a6d0:	00d5e5b3          	or	a1,a1,a3
8000a6d4:	00255793          	srli	a5,a0,0x2
8000a6d8:	00c7b6b3          	sltu	a3,a5,a2
8000a6dc:	0016c693          	xori	a3,a3,1
8000a6e0:	00c7e463          	bltu	a5,a2,8000a6e8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xb0>
8000a6e4:	00078513          	mv	a0,a5
8000a6e8:	00169693          	slli	a3,a3,0x1
8000a6ec:	00155513          	srli	a0,a0,0x1
8000a6f0:	00c53533          	sltu	a0,a0,a2
8000a6f4:	00154513          	xori	a0,a0,1
8000a6f8:	00a6e533          	or	a0,a3,a0
8000a6fc:	00a5e533          	or	a0,a1,a0
8000a700:	1c051a63          	bnez	a0,8000a8d4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x29c>
8000a704:	01f00593          	li	a1,31
8000a708:	fe058793          	addi	a5,a1,-32
8000a70c:	00b996b3          	sll	a3,s3,a1
8000a710:	1c07dc63          	bgez	a5,8000a8e8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2b0>
8000a714:	00b71533          	sll	a0,a4,a1
8000a718:	fff5c713          	not	a4,a1
8000a71c:	0019d813          	srli	a6,s3,0x1
8000a720:	00e85733          	srl	a4,a6,a4
8000a724:	00e56533          	or	a0,a0,a4
8000a728:	1c40006f          	j	8000a8ec <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2b4>
8000a72c:	00e60a63          	beq	a2,a4,8000a740 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x108>
8000a730:	00e63533          	sltu	a0,a2,a4
8000a734:	00000a93          	li	s5,0
8000a738:	00050a63          	beqz	a0,8000a74c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x114>
8000a73c:	10c0006f          	j	8000a848 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a740:	01393533          	sltu	a0,s2,s3
8000a744:	00000a93          	li	s5,0
8000a748:	10051063          	bnez	a0,8000a848 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a74c:	0e060e63          	beqz	a2,8000a848 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a750:	01065693          	srli	a3,a2,0x10
8000a754:	00e6b533          	sltu	a0,a3,a4
8000a758:	00154593          	xori	a1,a0,1
8000a75c:	00060513          	mv	a0,a2
8000a760:	00e6e463          	bltu	a3,a4,8000a768 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x130>
8000a764:	00068513          	mv	a0,a3
8000a768:	00459593          	slli	a1,a1,0x4
8000a76c:	00855793          	srli	a5,a0,0x8
8000a770:	00e7b6b3          	sltu	a3,a5,a4
8000a774:	0016c693          	xori	a3,a3,1
8000a778:	00e7e463          	bltu	a5,a4,8000a780 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x148>
8000a77c:	00078513          	mv	a0,a5
8000a780:	00369693          	slli	a3,a3,0x3
8000a784:	00b6e5b3          	or	a1,a3,a1
8000a788:	00455793          	srli	a5,a0,0x4
8000a78c:	00e7b6b3          	sltu	a3,a5,a4
8000a790:	0016c693          	xori	a3,a3,1
8000a794:	00e7e463          	bltu	a5,a4,8000a79c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x164>
8000a798:	00078513          	mv	a0,a5
8000a79c:	00269693          	slli	a3,a3,0x2
8000a7a0:	00d5e5b3          	or	a1,a1,a3
8000a7a4:	00255793          	srli	a5,a0,0x2
8000a7a8:	00e7b6b3          	sltu	a3,a5,a4
8000a7ac:	0016c693          	xori	a3,a3,1
8000a7b0:	00e7e463          	bltu	a5,a4,8000a7b8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x180>
8000a7b4:	00078513          	mv	a0,a5
8000a7b8:	00000a93          	li	s5,0
8000a7bc:	00169693          	slli	a3,a3,0x1
8000a7c0:	00155513          	srli	a0,a0,0x1
8000a7c4:	00e53533          	sltu	a0,a0,a4
8000a7c8:	00154513          	xori	a0,a0,1
8000a7cc:	00a6e533          	or	a0,a3,a0
8000a7d0:	00a5e5b3          	or	a1,a1,a0
8000a7d4:	01f5c513          	xori	a0,a1,31
8000a7d8:	0019d693          	srli	a3,s3,0x1
8000a7dc:	00a6d533          	srl	a0,a3,a0
8000a7e0:	00b716b3          	sll	a3,a4,a1
8000a7e4:	00a6e533          	or	a0,a3,a0
8000a7e8:	00100693          	li	a3,1
8000a7ec:	00b696b3          	sll	a3,a3,a1
8000a7f0:	00b997b3          	sll	a5,s3,a1
8000a7f4:	0180006f          	j	8000a80c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1d4>
8000a7f8:	0017d793          	srli	a5,a5,0x1
8000a7fc:	01f51593          	slli	a1,a0,0x1f
8000a800:	00b7e7b3          	or	a5,a5,a1
8000a804:	00155513          	srli	a0,a0,0x1
8000a808:	0016d693          	srli	a3,a3,0x1
8000a80c:	00f935b3          	sltu	a1,s2,a5
8000a810:	40a60833          	sub	a6,a2,a0
8000a814:	40b805b3          	sub	a1,a6,a1
8000a818:	fe05c0e3          	bltz	a1,8000a7f8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1c0>
8000a81c:	40f90933          	sub	s2,s2,a5
8000a820:	00e58a63          	beq	a1,a4,8000a834 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1fc>
8000a824:	00e5b633          	sltu	a2,a1,a4
8000a828:	0156eab3          	or	s5,a3,s5
8000a82c:	00060a63          	beqz	a2,8000a840 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x208>
8000a830:	0240006f          	j	8000a854 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x21c>
8000a834:	01393633          	sltu	a2,s2,s3
8000a838:	0156eab3          	or	s5,a3,s5
8000a83c:	00061c63          	bnez	a2,8000a854 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x21c>
8000a840:	00058613          	mv	a2,a1
8000a844:	fb5ff06f          	j	8000a7f8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1c0>
8000a848:	000a8a13          	mv	s4,s5
8000a84c:	00060593          	mv	a1,a2
8000a850:	11c0006f          	j	8000a96c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a854:	00000a13          	li	s4,0
8000a858:	1140006f          	j	8000a96c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a85c:	00090513          	mv	a0,s2
8000a860:	00098593          	mv	a1,s3
8000a864:	00000097          	auipc	ra,0x0
8000a868:	3cc080e7          	jalr	972(ra) # 8000ac30 <__udivsi3>
8000a86c:	00050a93          	mv	s5,a0
8000a870:	00098593          	mv	a1,s3
8000a874:	fffff097          	auipc	ra,0xfffff
8000a878:	7fc080e7          	jalr	2044(ra) # 8000a070 <__mulsi3>
8000a87c:	00000a13          	li	s4,0
8000a880:	00000593          	li	a1,0
8000a884:	40a90933          	sub	s2,s2,a0
8000a888:	0e40006f          	j	8000a96c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a88c:	11361e63          	bne	a2,s3,8000a9a8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x370>
8000a890:	00090513          	mv	a0,s2
8000a894:	00060593          	mv	a1,a2
8000a898:	00060993          	mv	s3,a2
8000a89c:	00000097          	auipc	ra,0x0
8000a8a0:	394080e7          	jalr	916(ra) # 8000ac30 <__udivsi3>
8000a8a4:	00050a13          	mv	s4,a0
8000a8a8:	00098593          	mv	a1,s3
8000a8ac:	fffff097          	auipc	ra,0xfffff
8000a8b0:	7c4080e7          	jalr	1988(ra) # 8000a070 <__mulsi3>
8000a8b4:	00000593          	li	a1,0
8000a8b8:	40a90933          	sub	s2,s2,a0
8000a8bc:	01403533          	snez	a0,s4
8000a8c0:	fffa0a13          	addi	s4,s4,-1
8000a8c4:	001a0a93          	addi	s5,s4,1
8000a8c8:	001aba13          	seqz	s4,s5
8000a8cc:	01450a33          	add	s4,a0,s4
8000a8d0:	09c0006f          	j	8000a96c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a8d4:	02000593          	li	a1,32
8000a8d8:	40a585b3          	sub	a1,a1,a0
8000a8dc:	fe058793          	addi	a5,a1,-32
8000a8e0:	00b996b3          	sll	a3,s3,a1
8000a8e4:	e207c8e3          	bltz	a5,8000a714 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xdc>
8000a8e8:	00068513          	mv	a0,a3
8000a8ec:	00000b13          	li	s6,0
8000a8f0:	41f7d793          	srai	a5,a5,0x1f
8000a8f4:	00d7f6b3          	and	a3,a5,a3
8000a8f8:	00100713          	li	a4,1
8000a8fc:	00b715b3          	sll	a1,a4,a1
8000a900:	0180006f          	j	8000a918 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2e0>
8000a904:	0016d693          	srli	a3,a3,0x1
8000a908:	01f51713          	slli	a4,a0,0x1f
8000a90c:	00e6e6b3          	or	a3,a3,a4
8000a910:	00155513          	srli	a0,a0,0x1
8000a914:	0015d593          	srli	a1,a1,0x1
8000a918:	00d93733          	sltu	a4,s2,a3
8000a91c:	40a607b3          	sub	a5,a2,a0
8000a920:	40e78733          	sub	a4,a5,a4
8000a924:	fe0740e3          	bltz	a4,8000a904 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2cc>
8000a928:	40d90933          	sub	s2,s2,a3
8000a92c:	0165eb33          	or	s6,a1,s6
8000a930:	00070663          	beqz	a4,8000a93c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x304>
8000a934:	00070613          	mv	a2,a4
8000a938:	fcdff06f          	j	8000a904 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2cc>
8000a93c:	00090513          	mv	a0,s2
8000a940:	00098593          	mv	a1,s3
8000a944:	00000097          	auipc	ra,0x0
8000a948:	2ec080e7          	jalr	748(ra) # 8000ac30 <__udivsi3>
8000a94c:	00050a93          	mv	s5,a0
8000a950:	00098593          	mv	a1,s3
8000a954:	fffff097          	auipc	ra,0xfffff
8000a958:	71c080e7          	jalr	1820(ra) # 8000a070 <__mulsi3>
8000a95c:	00000a13          	li	s4,0
8000a960:	00000593          	li	a1,0
8000a964:	40a90933          	sub	s2,s2,a0
8000a968:	016aeab3          	or	s5,s5,s6
8000a96c:	0154a023          	sw	s5,0(s1)
8000a970:	0144a223          	sw	s4,4(s1)
8000a974:	0124a423          	sw	s2,8(s1)
8000a978:	00b4a623          	sw	a1,12(s1)
8000a97c:	02c12083          	lw	ra,44(sp)
8000a980:	02812403          	lw	s0,40(sp)
8000a984:	02412483          	lw	s1,36(sp)
8000a988:	02012903          	lw	s2,32(sp)
8000a98c:	01c12983          	lw	s3,28(sp)
8000a990:	01812a03          	lw	s4,24(sp)
8000a994:	01412a83          	lw	s5,20(sp)
8000a998:	01012b03          	lw	s6,16(sp)
8000a99c:	00c12b83          	lw	s7,12(sp)
8000a9a0:	03010113          	addi	sp,sp,48
8000a9a4:	00008067          	ret
8000a9a8:	00070a93          	mv	s5,a4
8000a9ac:	0109db13          	srli	s6,s3,0x10
8000a9b0:	00060513          	mv	a0,a2
8000a9b4:	00098593          	mv	a1,s3
8000a9b8:	00060b93          	mv	s7,a2
8000a9bc:	00000097          	auipc	ra,0x0
8000a9c0:	274080e7          	jalr	628(ra) # 8000ac30 <__udivsi3>
8000a9c4:	00050a13          	mv	s4,a0
8000a9c8:	00098593          	mv	a1,s3
8000a9cc:	fffff097          	auipc	ra,0xfffff
8000a9d0:	6a4080e7          	jalr	1700(ra) # 8000a070 <__mulsi3>
8000a9d4:	40ab85b3          	sub	a1,s7,a0
8000a9d8:	060b1e63          	bnez	s6,8000aa54 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x41c>
8000a9dc:	01095b13          	srli	s6,s2,0x10
8000a9e0:	01059593          	slli	a1,a1,0x10
8000a9e4:	0165e533          	or	a0,a1,s6
8000a9e8:	00098593          	mv	a1,s3
8000a9ec:	00000097          	auipc	ra,0x0
8000a9f0:	244080e7          	jalr	580(ra) # 8000ac30 <__udivsi3>
8000a9f4:	00050a93          	mv	s5,a0
8000a9f8:	01091913          	slli	s2,s2,0x10
8000a9fc:	01095913          	srli	s2,s2,0x10
8000aa00:	00098593          	mv	a1,s3
8000aa04:	fffff097          	auipc	ra,0xfffff
8000aa08:	66c080e7          	jalr	1644(ra) # 8000a070 <__mulsi3>
8000aa0c:	40ab0533          	sub	a0,s6,a0
8000aa10:	01051513          	slli	a0,a0,0x10
8000aa14:	01256933          	or	s2,a0,s2
8000aa18:	00090513          	mv	a0,s2
8000aa1c:	00098593          	mv	a1,s3
8000aa20:	00000097          	auipc	ra,0x0
8000aa24:	210080e7          	jalr	528(ra) # 8000ac30 <__udivsi3>
8000aa28:	00050b13          	mv	s6,a0
8000aa2c:	00098593          	mv	a1,s3
8000aa30:	fffff097          	auipc	ra,0xfffff
8000aa34:	640080e7          	jalr	1600(ra) # 8000a070 <__mulsi3>
8000aa38:	00000593          	li	a1,0
8000aa3c:	40a90933          	sub	s2,s2,a0
8000aa40:	010a9513          	slli	a0,s5,0x10
8000aa44:	010ad613          	srli	a2,s5,0x10
8000aa48:	01466a33          	or	s4,a2,s4
8000aa4c:	01656ab3          	or	s5,a0,s6
8000aa50:	f1dff06f          	j	8000a96c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000aa54:	000a8513          	mv	a0,s5
8000aa58:	01558663          	beq	a1,s5,8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x42c>
8000aa5c:	00a5b633          	sltu	a2,a1,a0
8000aa60:	0080006f          	j	8000aa68 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x430>
8000aa64:	01393633          	sltu	a2,s2,s3
8000aa68:	00060663          	beqz	a2,8000aa74 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x43c>
8000aa6c:	00000a93          	li	s5,0
8000aa70:	efdff06f          	j	8000a96c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000aa74:	00000b13          	li	s6,0
8000aa78:	0019d613          	srli	a2,s3,0x1
8000aa7c:	01f51513          	slli	a0,a0,0x1f
8000aa80:	00c56533          	or	a0,a0,a2
8000aa84:	01f99693          	slli	a3,s3,0x1f
8000aa88:	80000637          	lui	a2,0x80000
8000aa8c:	0180006f          	j	8000aaa4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x46c>
8000aa90:	0016d693          	srli	a3,a3,0x1
8000aa94:	01f51713          	slli	a4,a0,0x1f
8000aa98:	00e6e6b3          	or	a3,a3,a4
8000aa9c:	00155513          	srli	a0,a0,0x1
8000aaa0:	00165613          	srli	a2,a2,0x1
8000aaa4:	00d93733          	sltu	a4,s2,a3
8000aaa8:	40a587b3          	sub	a5,a1,a0
8000aaac:	40e78733          	sub	a4,a5,a4
8000aab0:	fe0740e3          	bltz	a4,8000aa90 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x458>
8000aab4:	40d90933          	sub	s2,s2,a3
8000aab8:	01666b33          	or	s6,a2,s6
8000aabc:	00070663          	beqz	a4,8000aac8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x490>
8000aac0:	00070593          	mv	a1,a4
8000aac4:	fcdff06f          	j	8000aa90 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x458>
8000aac8:	00090513          	mv	a0,s2
8000aacc:	00098593          	mv	a1,s3
8000aad0:	00000097          	auipc	ra,0x0
8000aad4:	160080e7          	jalr	352(ra) # 8000ac30 <__udivsi3>
8000aad8:	00050a93          	mv	s5,a0
8000aadc:	00098593          	mv	a1,s3
8000aae0:	fffff097          	auipc	ra,0xfffff
8000aae4:	590080e7          	jalr	1424(ra) # 8000a070 <__mulsi3>
8000aae8:	e79ff06f          	j	8000a960 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x328>

8000aaec <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>:
8000aaec:	ff010113          	addi	sp,sp,-16
8000aaf0:	00112623          	sw	ra,12(sp)
8000aaf4:	00812423          	sw	s0,8(sp)
8000aaf8:	01010413          	addi	s0,sp,16
8000aafc:	00050613          	mv	a2,a0
8000ab00:	00b57663          	bgeu	a0,a1,8000ab0c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x20>
8000ab04:	00000513          	li	a0,0
8000ab08:	1140006f          	j	8000ac1c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000ab0c:	01065713          	srli	a4,a2,0x10
8000ab10:	00b73533          	sltu	a0,a4,a1
8000ab14:	00154693          	xori	a3,a0,1
8000ab18:	00060513          	mv	a0,a2
8000ab1c:	00b76463          	bltu	a4,a1,8000ab24 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x38>
8000ab20:	00070513          	mv	a0,a4
8000ab24:	00469693          	slli	a3,a3,0x4
8000ab28:	00855793          	srli	a5,a0,0x8
8000ab2c:	00b7b733          	sltu	a4,a5,a1
8000ab30:	00174713          	xori	a4,a4,1
8000ab34:	00b7e463          	bltu	a5,a1,8000ab3c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x50>
8000ab38:	00078513          	mv	a0,a5
8000ab3c:	00371713          	slli	a4,a4,0x3
8000ab40:	00d766b3          	or	a3,a4,a3
8000ab44:	00455793          	srli	a5,a0,0x4
8000ab48:	00b7b733          	sltu	a4,a5,a1
8000ab4c:	00174713          	xori	a4,a4,1
8000ab50:	00b7e463          	bltu	a5,a1,8000ab58 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x6c>
8000ab54:	00078513          	mv	a0,a5
8000ab58:	00271713          	slli	a4,a4,0x2
8000ab5c:	00e6e6b3          	or	a3,a3,a4
8000ab60:	00255793          	srli	a5,a0,0x2
8000ab64:	00b7b733          	sltu	a4,a5,a1
8000ab68:	00174713          	xori	a4,a4,1
8000ab6c:	00b7e463          	bltu	a5,a1,8000ab74 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x88>
8000ab70:	00078513          	mv	a0,a5
8000ab74:	00171713          	slli	a4,a4,0x1
8000ab78:	00155513          	srli	a0,a0,0x1
8000ab7c:	00b53533          	sltu	a0,a0,a1
8000ab80:	00154513          	xori	a0,a0,1
8000ab84:	00a76533          	or	a0,a4,a0
8000ab88:	00a6e6b3          	or	a3,a3,a0
8000ab8c:	00d59733          	sll	a4,a1,a3
8000ab90:	40e60633          	sub	a2,a2,a4
8000ab94:	00100513          	li	a0,1
8000ab98:	00d51533          	sll	a0,a0,a3
8000ab9c:	08b66063          	bltu	a2,a1,8000ac1c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000aba0:	00074663          	bltz	a4,8000abac <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xc0>
8000aba4:	00050793          	mv	a5,a0
8000aba8:	0380006f          	j	8000abe0 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xf4>
8000abac:	00175713          	srli	a4,a4,0x1
8000abb0:	fff68693          	addi	a3,a3,-1
8000abb4:	00100793          	li	a5,1
8000abb8:	00d797b3          	sll	a5,a5,a3
8000abbc:	40e60833          	sub	a6,a2,a4
8000abc0:	00082893          	slti	a7,a6,0
8000abc4:	fff88893          	addi	a7,a7,-1
8000abc8:	00f8f8b3          	and	a7,a7,a5
8000abcc:	00085463          	bgez	a6,8000abd4 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xe8>
8000abd0:	00060813          	mv	a6,a2
8000abd4:	00a8e533          	or	a0,a7,a0
8000abd8:	00080613          	mv	a2,a6
8000abdc:	04b86063          	bltu	a6,a1,8000ac1c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000abe0:	fff78793          	addi	a5,a5,-1
8000abe4:	02068663          	beqz	a3,8000ac10 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x124>
8000abe8:	00068593          	mv	a1,a3
8000abec:	00c0006f          	j	8000abf8 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x10c>
8000abf0:	fff58593          	addi	a1,a1,-1
8000abf4:	00058e63          	beqz	a1,8000ac10 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x124>
8000abf8:	00161613          	slli	a2,a2,0x1
8000abfc:	40e60833          	sub	a6,a2,a4
8000ac00:	00180813          	addi	a6,a6,1
8000ac04:	fe0846e3          	bltz	a6,8000abf0 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x104>
8000ac08:	00080613          	mv	a2,a6
8000ac0c:	fe5ff06f          	j	8000abf0 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x104>
8000ac10:	00f677b3          	and	a5,a2,a5
8000ac14:	00a7e533          	or	a0,a5,a0
8000ac18:	00d65633          	srl	a2,a2,a3
8000ac1c:	00060593          	mv	a1,a2
8000ac20:	00c12083          	lw	ra,12(sp)
8000ac24:	00812403          	lw	s0,8(sp)
8000ac28:	01010113          	addi	sp,sp,16
8000ac2c:	00008067          	ret

8000ac30 <__udivsi3>:
8000ac30:	ff010113          	addi	sp,sp,-16
8000ac34:	00112623          	sw	ra,12(sp)
8000ac38:	00812423          	sw	s0,8(sp)
8000ac3c:	01010413          	addi	s0,sp,16
8000ac40:	00c12083          	lw	ra,12(sp)
8000ac44:	00812403          	lw	s0,8(sp)
8000ac48:	01010113          	addi	sp,sp,16
8000ac4c:	00000317          	auipc	t1,0x0
8000ac50:	ea030067          	jr	-352(t1) # 8000aaec <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>

8000ac54 <__udivdi3>:
8000ac54:	fe010113          	addi	sp,sp,-32
8000ac58:	00112e23          	sw	ra,28(sp)
8000ac5c:	00812c23          	sw	s0,24(sp)
8000ac60:	02010413          	addi	s0,sp,32
8000ac64:	00068713          	mv	a4,a3
8000ac68:	00060693          	mv	a3,a2
8000ac6c:	00058613          	mv	a2,a1
8000ac70:	00050593          	mv	a1,a0
8000ac74:	fe840513          	addi	a0,s0,-24
8000ac78:	00000097          	auipc	ra,0x0
8000ac7c:	9c0080e7          	jalr	-1600(ra) # 8000a638 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE>
8000ac80:	fec42583          	lw	a1,-20(s0)
8000ac84:	fe842503          	lw	a0,-24(s0)
8000ac88:	01c12083          	lw	ra,28(sp)
8000ac8c:	01812403          	lw	s0,24(sp)
8000ac90:	02010113          	addi	sp,sp,32
8000ac94:	00008067          	ret

8000ac98 <__mulsf3>:
8000ac98:	ff010113          	addi	sp,sp,-16
8000ac9c:	00112623          	sw	ra,12(sp)
8000aca0:	00812423          	sw	s0,8(sp)
8000aca4:	01010413          	addi	s0,sp,16
8000aca8:	00c12083          	lw	ra,12(sp)
8000acac:	00812403          	lw	s0,8(sp)
8000acb0:	01010113          	addi	sp,sp,16
8000acb4:	00000317          	auipc	t1,0x0
8000acb8:	00830067          	jr	8(t1) # 8000acbc <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E>

8000acbc <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E>:
8000acbc:	fe010113          	addi	sp,sp,-32
8000acc0:	00112e23          	sw	ra,28(sp)
8000acc4:	00812c23          	sw	s0,24(sp)
8000acc8:	00912a23          	sw	s1,20(sp)
8000accc:	01212823          	sw	s2,16(sp)
8000acd0:	01312623          	sw	s3,12(sp)
8000acd4:	01412423          	sw	s4,8(sp)
8000acd8:	01512223          	sw	s5,4(sp)
8000acdc:	02010413          	addi	s0,sp,32
8000ace0:	00800937          	lui	s2,0x800
8000ace4:	fff90913          	addi	s2,s2,-1 # 7fffff <.Lline_table_start2+0x7fec51>
8000ace8:	00151613          	slli	a2,a0,0x1
8000acec:	01865993          	srli	s3,a2,0x18
8000acf0:	00159613          	slli	a2,a1,0x1
8000acf4:	01865a13          	srli	s4,a2,0x18
8000acf8:	00a5c4b3          	xor	s1,a1,a0
8000acfc:	80000737          	lui	a4,0x80000
8000ad00:	00e4f4b3          	and	s1,s1,a4
8000ad04:	01257633          	and	a2,a0,s2
8000ad08:	f0198813          	addi	a6,s3,-255
8000ad0c:	f0200793          	li	a5,-254
8000ad10:	0125f6b3          	and	a3,a1,s2
8000ad14:	06f86263          	bltu	a6,a5,8000ad78 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xbc>
8000ad18:	f01a0813          	addi	a6,s4,-255
8000ad1c:	04f86e63          	bltu	a6,a5,8000ad78 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xbc>
8000ad20:	00000a93          	li	s5,0
8000ad24:	00800537          	lui	a0,0x800
8000ad28:	00a66633          	or	a2,a2,a0
8000ad2c:	00869693          	slli	a3,a3,0x8
8000ad30:	80000537          	lui	a0,0x80000
8000ad34:	00a6e533          	or	a0,a3,a0
8000ad38:	00000593          	li	a1,0
8000ad3c:	00000693          	li	a3,0
8000ad40:	fffff097          	auipc	ra,0xfffff
8000ad44:	378080e7          	jalr	888(ra) # 8000a0b8 <__muldi3>
8000ad48:	013a09b3          	add	s3,s4,s3
8000ad4c:	00859613          	slli	a2,a1,0x8
8000ad50:	01598ab3          	add	s5,s3,s5
8000ad54:	04064063          	bltz	a2,8000ad94 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xd8>
8000ad58:	f81a8613          	addi	a2,s5,-127
8000ad5c:	01f55693          	srli	a3,a0,0x1f
8000ad60:	00159593          	slli	a1,a1,0x1
8000ad64:	00d5e5b3          	or	a1,a1,a3
8000ad68:	00151513          	slli	a0,a0,0x1
8000ad6c:	0fe00693          	li	a3,254
8000ad70:	02c6d863          	bge	a3,a2,8000ada0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xe4>
8000ad74:	0700006f          	j	8000ade4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000ad78:	fff70793          	addi	a5,a4,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000ad7c:	00f57733          	and	a4,a0,a5
8000ad80:	7f800837          	lui	a6,0x7f800
8000ad84:	04e87063          	bgeu	a6,a4,8000adc4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x108>
8000ad88:	004004b7          	lui	s1,0x400
8000ad8c:	009564b3          	or	s1,a0,s1
8000ad90:	05c0006f          	j	8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad94:	f82a8613          	addi	a2,s5,-126
8000ad98:	0fe00693          	li	a3,254
8000ad9c:	04c6c463          	blt	a3,a2,8000ade4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000ada0:	06c05a63          	blez	a2,8000ae14 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x158>
8000ada4:	0125f5b3          	and	a1,a1,s2
8000ada8:	01761613          	slli	a2,a2,0x17
8000adac:	00b665b3          	or	a1,a2,a1
8000adb0:	80000637          	lui	a2,0x80000
8000adb4:	0095e4b3          	or	s1,a1,s1
8000adb8:	08a67c63          	bgeu	a2,a0,8000ae50 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x194>
8000adbc:	00148493          	addi	s1,s1,1 # 400001 <.Lline_table_start2+0x3fec53>
8000adc0:	02c0006f          	j	8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000adc4:	00f5f533          	and	a0,a1,a5
8000adc8:	00a87863          	bgeu	a6,a0,8000add8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x11c>
8000adcc:	004004b7          	lui	s1,0x400
8000add0:	0095e4b3          	or	s1,a1,s1
8000add4:	0180006f          	j	8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000add8:	7f8005b7          	lui	a1,0x7f800
8000addc:	08b71263          	bne	a4,a1,8000ae60 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1a4>
8000ade0:	08050463          	beqz	a0,8000ae68 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1ac>
8000ade4:	7f800537          	lui	a0,0x7f800
8000ade8:	00a4e4b3          	or	s1,s1,a0
8000adec:	00048513          	mv	a0,s1
8000adf0:	01c12083          	lw	ra,28(sp)
8000adf4:	01812403          	lw	s0,24(sp)
8000adf8:	01412483          	lw	s1,20(sp)
8000adfc:	01012903          	lw	s2,16(sp)
8000ae00:	00c12983          	lw	s3,12(sp)
8000ae04:	00812a03          	lw	s4,8(sp)
8000ae08:	00412a83          	lw	s5,4(sp)
8000ae0c:	02010113          	addi	sp,sp,32
8000ae10:	00008067          	ret
8000ae14:	00100693          	li	a3,1
8000ae18:	40c686b3          	sub	a3,a3,a2
8000ae1c:	01f00713          	li	a4,31
8000ae20:	fcd766e3          	bltu	a4,a3,8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ae24:	01f60613          	addi	a2,a2,31 # 8000001f <.bss_zero_loop+0xb>
8000ae28:	00c51733          	sll	a4,a0,a2
8000ae2c:	00e03733          	snez	a4,a4
8000ae30:	00c59633          	sll	a2,a1,a2
8000ae34:	00d55533          	srl	a0,a0,a3
8000ae38:	00c56533          	or	a0,a0,a2
8000ae3c:	00e56533          	or	a0,a0,a4
8000ae40:	00d5d5b3          	srl	a1,a1,a3
8000ae44:	80000637          	lui	a2,0x80000
8000ae48:	0095e4b3          	or	s1,a1,s1
8000ae4c:	f6a668e3          	bltu	a2,a0,8000adbc <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x100>
8000ae50:	f8c51ee3          	bne	a0,a2,8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ae54:	0015f593          	andi	a1,a1,1
8000ae58:	00b484b3          	add	s1,s1,a1
8000ae5c:	f91ff06f          	j	8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ae60:	00b51863          	bne	a0,a1,8000ae70 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1b4>
8000ae64:	f80710e3          	bnez	a4,8000ade4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000ae68:	7fc004b7          	lui	s1,0x7fc00
8000ae6c:	f81ff06f          	j	8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ae70:	f6070ee3          	beqz	a4,8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ae74:	f6050ce3          	beqz	a0,8000adec <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ae78:	01775713          	srli	a4,a4,0x17
8000ae7c:	08071663          	bnez	a4,8000af08 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x24c>
8000ae80:	08060863          	beqz	a2,8000af10 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x254>
8000ae84:	00165593          	srli	a1,a2,0x1
8000ae88:	00b665b3          	or	a1,a2,a1
8000ae8c:	0025d713          	srli	a4,a1,0x2
8000ae90:	00e5e5b3          	or	a1,a1,a4
8000ae94:	0045d713          	srli	a4,a1,0x4
8000ae98:	00e5e5b3          	or	a1,a1,a4
8000ae9c:	0085d713          	srli	a4,a1,0x8
8000aea0:	00e5e5b3          	or	a1,a1,a4
8000aea4:	0105d713          	srli	a4,a1,0x10
8000aea8:	00e5e5b3          	or	a1,a1,a4
8000aeac:	fff5c593          	not	a1,a1
8000aeb0:	0015d713          	srli	a4,a1,0x1
8000aeb4:	555557b7          	lui	a5,0x55555
8000aeb8:	55578793          	addi	a5,a5,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000aebc:	00f77733          	and	a4,a4,a5
8000aec0:	40e585b3          	sub	a1,a1,a4
8000aec4:	33333737          	lui	a4,0x33333
8000aec8:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000aecc:	00e5f7b3          	and	a5,a1,a4
8000aed0:	0025d593          	srli	a1,a1,0x2
8000aed4:	00e5f5b3          	and	a1,a1,a4
8000aed8:	00b785b3          	add	a1,a5,a1
8000aedc:	0045d713          	srli	a4,a1,0x4
8000aee0:	00e585b3          	add	a1,a1,a4
8000aee4:	0f0f1737          	lui	a4,0xf0f1
8000aee8:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000aeec:	00e5f5b3          	and	a1,a1,a4
8000aef0:	00859713          	slli	a4,a1,0x8
8000aef4:	00e585b3          	add	a1,a1,a4
8000aef8:	01059713          	slli	a4,a1,0x10
8000aefc:	00e585b3          	add	a1,a1,a4
8000af00:	0185d593          	srli	a1,a1,0x18
8000af04:	0100006f          	j	8000af14 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x258>
8000af08:	00000a93          	li	s5,0
8000af0c:	0180006f          	j	8000af24 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x268>
8000af10:	02000593          	li	a1,32
8000af14:	01858713          	addi	a4,a1,24 # 7f800018 <.Lline_table_start2+0x7f7fec6a>
8000af18:	00900793          	li	a5,9
8000af1c:	40b78ab3          	sub	s5,a5,a1
8000af20:	00e61633          	sll	a2,a2,a4
8000af24:	01755513          	srli	a0,a0,0x17
8000af28:	de051ee3          	bnez	a0,8000ad24 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x68>
8000af2c:	08068463          	beqz	a3,8000afb4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x2f8>
8000af30:	0016d513          	srli	a0,a3,0x1
8000af34:	00a6e533          	or	a0,a3,a0
8000af38:	00255593          	srli	a1,a0,0x2
8000af3c:	00b56533          	or	a0,a0,a1
8000af40:	00455593          	srli	a1,a0,0x4
8000af44:	00b56533          	or	a0,a0,a1
8000af48:	00855593          	srli	a1,a0,0x8
8000af4c:	00b56533          	or	a0,a0,a1
8000af50:	01055593          	srli	a1,a0,0x10
8000af54:	00b56533          	or	a0,a0,a1
8000af58:	fff54513          	not	a0,a0
8000af5c:	00155593          	srli	a1,a0,0x1
8000af60:	55555737          	lui	a4,0x55555
8000af64:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000af68:	00e5f5b3          	and	a1,a1,a4
8000af6c:	40b50533          	sub	a0,a0,a1
8000af70:	333335b7          	lui	a1,0x33333
8000af74:	33358593          	addi	a1,a1,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000af78:	00b57733          	and	a4,a0,a1
8000af7c:	00255513          	srli	a0,a0,0x2
8000af80:	00b57533          	and	a0,a0,a1
8000af84:	00a70533          	add	a0,a4,a0
8000af88:	00455593          	srli	a1,a0,0x4
8000af8c:	00b50533          	add	a0,a0,a1
8000af90:	0f0f15b7          	lui	a1,0xf0f1
8000af94:	f0f58593          	addi	a1,a1,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000af98:	00b57533          	and	a0,a0,a1
8000af9c:	00851593          	slli	a1,a0,0x8
8000afa0:	00b50533          	add	a0,a0,a1
8000afa4:	01051593          	slli	a1,a0,0x10
8000afa8:	00b50533          	add	a0,a0,a1
8000afac:	01855513          	srli	a0,a0,0x18
8000afb0:	0080006f          	j	8000afb8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x2fc>
8000afb4:	02000513          	li	a0,32
8000afb8:	01850593          	addi	a1,a0,24 # 7f800018 <.Lline_table_start2+0x7f7fec6a>
8000afbc:	00b696b3          	sll	a3,a3,a1
8000afc0:	40aa8ab3          	sub	s5,s5,a0
8000afc4:	009a8a93          	addi	s5,s5,9
8000afc8:	d5dff06f          	j	8000ad24 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x68>

8000afcc <memset>:
8000afcc:	fe010113          	addi	sp,sp,-32
8000afd0:	00112e23          	sw	ra,28(sp)
8000afd4:	00812c23          	sw	s0,24(sp)
8000afd8:	00912a23          	sw	s1,20(sp)
8000afdc:	01212823          	sw	s2,16(sp)
8000afe0:	01312623          	sw	s3,12(sp)
8000afe4:	01412423          	sw	s4,8(sp)
8000afe8:	02010413          	addi	s0,sp,32
8000afec:	01000693          	li	a3,16
8000aff0:	00058913          	mv	s2,a1
8000aff4:	00050493          	mv	s1,a0
8000aff8:	08d66e63          	bltu	a2,a3,8000b094 <memset+0xc8>
8000affc:	40900533          	neg	a0,s1
8000b000:	00357513          	andi	a0,a0,3
8000b004:	00a489b3          	add	s3,s1,a0
8000b008:	0134fe63          	bgeu	s1,s3,8000b024 <memset+0x58>
8000b00c:	00050593          	mv	a1,a0
8000b010:	00048693          	mv	a3,s1
8000b014:	01268023          	sb	s2,0(a3)
8000b018:	fff58593          	addi	a1,a1,-1
8000b01c:	00168693          	addi	a3,a3,1
8000b020:	fe059ae3          	bnez	a1,8000b014 <memset+0x48>
8000b024:	40a60a33          	sub	s4,a2,a0
8000b028:	0ff97513          	zext.b	a0,s2
8000b02c:	010105b7          	lui	a1,0x1010
8000b030:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start2+0x100ed53>
8000b034:	fffff097          	auipc	ra,0xfffff
8000b038:	03c080e7          	jalr	60(ra) # 8000a070 <__mulsi3>
8000b03c:	ffca7593          	andi	a1,s4,-4
8000b040:	00b985b3          	add	a1,s3,a1
8000b044:	00b9f863          	bgeu	s3,a1,8000b054 <memset+0x88>
8000b048:	00a9a023          	sw	a0,0(s3)
8000b04c:	00498993          	addi	s3,s3,4
8000b050:	feb9ece3          	bltu	s3,a1,8000b048 <memset+0x7c>
8000b054:	003a7613          	andi	a2,s4,3
8000b058:	00c58533          	add	a0,a1,a2
8000b05c:	00a5fa63          	bgeu	a1,a0,8000b070 <memset+0xa4>
8000b060:	01258023          	sb	s2,0(a1)
8000b064:	fff60613          	addi	a2,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000b068:	00158593          	addi	a1,a1,1
8000b06c:	fe061ae3          	bnez	a2,8000b060 <memset+0x94>
8000b070:	00048513          	mv	a0,s1
8000b074:	01c12083          	lw	ra,28(sp)
8000b078:	01812403          	lw	s0,24(sp)
8000b07c:	01412483          	lw	s1,20(sp)
8000b080:	01012903          	lw	s2,16(sp)
8000b084:	00c12983          	lw	s3,12(sp)
8000b088:	00812a03          	lw	s4,8(sp)
8000b08c:	02010113          	addi	sp,sp,32
8000b090:	00008067          	ret
8000b094:	00048593          	mv	a1,s1
8000b098:	00c48533          	add	a0,s1,a2
8000b09c:	fca4e2e3          	bltu	s1,a0,8000b060 <memset+0x94>
8000b0a0:	fd1ff06f          	j	8000b070 <memset+0xa4>

8000b0a4 <__divsi3>:
8000b0a4:	ff010113          	addi	sp,sp,-16
8000b0a8:	00112623          	sw	ra,12(sp)
8000b0ac:	00812423          	sw	s0,8(sp)
8000b0b0:	00912223          	sw	s1,4(sp)
8000b0b4:	01212023          	sw	s2,0(sp)
8000b0b8:	01010413          	addi	s0,sp,16
8000b0bc:	00058493          	mv	s1,a1
8000b0c0:	00050913          	mv	s2,a0
8000b0c4:	41f55513          	srai	a0,a0,0x1f
8000b0c8:	00a945b3          	xor	a1,s2,a0
8000b0cc:	40a58533          	sub	a0,a1,a0
8000b0d0:	41f4d593          	srai	a1,s1,0x1f
8000b0d4:	00b4c633          	xor	a2,s1,a1
8000b0d8:	40b605b3          	sub	a1,a2,a1
8000b0dc:	00000097          	auipc	ra,0x0
8000b0e0:	a10080e7          	jalr	-1520(ra) # 8000aaec <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>
8000b0e4:	0124c5b3          	xor	a1,s1,s2
8000b0e8:	0005d463          	bgez	a1,8000b0f0 <__divsi3+0x4c>
8000b0ec:	40a00533          	neg	a0,a0
8000b0f0:	00c12083          	lw	ra,12(sp)
8000b0f4:	00812403          	lw	s0,8(sp)
8000b0f8:	00412483          	lw	s1,4(sp)
8000b0fc:	00012903          	lw	s2,0(sp)
8000b100:	01010113          	addi	sp,sp,16
8000b104:	00008067          	ret
	...

Disassembly of section .rodata:

8000c000 <.Lanon.368313aae6f24ed1916c56358b6b666c.1>:
8000c000:	7245                	.insn	2, 0x7245
8000c002:	6f72                	.insn	2, 0x6f72
8000c004:	0072                	.insn	2, 0x0072
	...

8000c008 <.Lanon.368313aae6f24ed1916c56358b6b666c.2>:
8000c008:	0000                	.insn	2, 0x
8000c00a:	0000                	.insn	2, 0x
8000c00c:	0004                	.insn	2, 0x0004
8000c00e:	0000                	.insn	2, 0x
8000c010:	0004                	.insn	2, 0x0004
8000c012:	0000                	.insn	2, 0x
8000c014:	01ec                	.insn	2, 0x01ec
8000c016:	8000                	.insn	2, 0x8000

8000c018 <.Lanon.368313aae6f24ed1916c56358b6b666c.3>:
8000c018:	0000                	.insn	2, 0x
8000c01a:	0000                	.insn	2, 0x
8000c01c:	0004                	.insn	2, 0x0004
8000c01e:	0000                	.insn	2, 0x
8000c020:	0004                	.insn	2, 0x0004
8000c022:	0000                	.insn	2, 0x
8000c024:	01d4                	.insn	2, 0x01d4
8000c026:	8000                	.insn	2, 0x8000

8000c028 <.Lanon.368313aae6f24ed1916c56358b6b666c.4>:
8000c028:	614c                	.insn	2, 0x614c
8000c02a:	6f79                	.insn	2, 0x6f79
8000c02c:	7475                	.insn	2, 0x7475
8000c02e:	2020                	.insn	2, 0x2020
8000c030:	2020                	.insn	2, 0x2020
8000c032:	657a6973          	.insn	4, 0x657a6973

8000c036 <.Lanon.368313aae6f24ed1916c56358b6b666c.6>:
8000c036:	6c61                	.insn	2, 0x6c61
8000c038:	6769                	.insn	2, 0x6769
8000c03a:	                	.insn	2, 0x496e

8000c03b <.Lanon.368313aae6f24ed1916c56358b6b666c.7>:
8000c03b:	6e49                	.insn	2, 0x6e49
8000c03d:	75727473          	.insn	4, 0x75727473
8000c041:	6f697463          	bgeu	s2,s6,8000c729 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4+0x1>
8000c045:	4d6e                	.insn	2, 0x4d6e
8000c047:	7369                	.insn	2, 0x7369
8000c049:	6c61                	.insn	2, 0x6c61
8000c04b:	6769                	.insn	2, 0x6769
8000c04d:	656e                	.insn	2, 0x656e
8000c04f:	6164                	.insn	2, 0x6164
8000c051:	72657373          	.insn	4, 0x72657373
8000c055:	6974                	.insn	2, 0x6974
8000c057:	60206e6f          	jal	t3,80012659 <KALLOC_BUFFER+0x2659>
8000c05b:	656c                	.insn	2, 0x656c
8000c05d:	7466                	.insn	2, 0x7466
8000c05f:	4920                	.insn	2, 0x4920
8000c061:	736e                	.insn	2, 0x736e
8000c063:	7274                	.insn	2, 0x7274
8000c065:	6375                	.insn	2, 0x6375
8000c067:	6974                	.insn	2, 0x6974
8000c069:	61466e6f          	jal	t3,8007267d <KALLOC_BUFFER+0x6267d>
8000c06d:	6c75                	.insn	2, 0x6c75
8000c06f:	7274                	.insn	2, 0x7274
8000c071:	6e61                	.insn	2, 0x6e61
8000c073:	65206567          	.insn	4, 0x65206567
8000c077:	646e                	.insn	2, 0x646e
8000c079:	6920                	.insn	2, 0x6920
8000c07b:	646e                	.insn	2, 0x646e
8000c07d:	7865                	.insn	2, 0x7865
8000c07f:	0020                	.insn	2, 0x0020
8000c081:	0201                	.insn	2, 0x0201
8000c083:	06050403          	lb	s0,96(a0)
8000c087:	0e090807          	.insn	4, 0x0e090807
8000c08b:	0b0a                	.insn	2, 0x0b0a
8000c08d:	0e0c                	.insn	2, 0x0e0c
8000c08f:	200d                	.insn	2, 0x200d
8000c091:	6972                	.insn	2, 0x6972
8000c093:	60746867          	.insn	4, 0x60746867
8000c097:	6620                	.insn	2, 0x6620
8000c099:	6961                	.insn	2, 0x6961
8000c09b:	656c                	.insn	2, 0x656c
8000c09d:	3a64                	.insn	2, 0x3a64
8000c09f:	                	.insn	2, 0x4920

8000c0a0 <.Lanon.368313aae6f24ed1916c56358b6b666c.9>:
8000c0a0:	6c49                	.insn	2, 0x6c49
8000c0a2:	656c                	.insn	2, 0x656c
8000c0a4:	496c6167          	.insn	4, 0x496c6167
8000c0a8:	736e                	.insn	2, 0x736e
8000c0aa:	7274                	.insn	2, 0x7274
8000c0ac:	6375                	.insn	2, 0x6375
8000c0ae:	6974                	.insn	2, 0x6974
8000c0b0:	          	jal	t3,800327d4 <KALLOC_BUFFER+0x227d4>

8000c0b2 <.Lanon.368313aae6f24ed1916c56358b6b666c.10>:
8000c0b2:	7242                	.insn	2, 0x7242
8000c0b4:	6165                	.insn	2, 0x6165
8000c0b6:	696f706b          	.insn	4, 0x696f706b
8000c0ba:	746e                	.insn	2, 0x746e

8000c0bc <.Lanon.368313aae6f24ed1916c56358b6b666c.11>:
8000c0bc:	6f4c                	.insn	2, 0x6f4c
8000c0be:	6461                	.insn	2, 0x6461
8000c0c0:	694d                	.insn	2, 0x694d
8000c0c2:	696c6173          	.insn	4, 0x696c6173
8000c0c6:	64656e67          	.insn	4, 0x64656e67

8000c0ca <.Lanon.368313aae6f24ed1916c56358b6b666c.12>:
8000c0ca:	6f4c                	.insn	2, 0x6f4c
8000c0cc:	6461                	.insn	2, 0x6461
8000c0ce:	6146                	.insn	2, 0x6146
8000c0d0:	6c75                	.insn	2, 0x6c75
8000c0d2:	                	.insn	2, 0x5374

8000c0d3 <.Lanon.368313aae6f24ed1916c56358b6b666c.13>:
8000c0d3:	726f7453          	.insn	4, 0x726f7453
8000c0d7:	4d65                	.insn	2, 0x4d65
8000c0d9:	7369                	.insn	2, 0x7369
8000c0db:	6c61                	.insn	2, 0x6c61
8000c0dd:	6769                	.insn	2, 0x6769
8000c0df:	656e                	.insn	2, 0x656e
8000c0e1:	                	.insn	2, 0x5364

8000c0e2 <.Lanon.368313aae6f24ed1916c56358b6b666c.14>:
8000c0e2:	726f7453          	.insn	4, 0x726f7453
8000c0e6:	4665                	.insn	2, 0x4665
8000c0e8:	7561                	.insn	2, 0x7561
8000c0ea:	746c                	.insn	2, 0x746c

8000c0ec <.Lanon.368313aae6f24ed1916c56358b6b666c.15>:
8000c0ec:	7355                	.insn	2, 0x7355
8000c0ee:	7265                	.insn	2, 0x7265
8000c0f0:	6e45                	.insn	2, 0x6e45
8000c0f2:	4376                	.insn	2, 0x4376
8000c0f4:	6c61                	.insn	2, 0x6c61
8000c0f6:	                	.insn	2, 0x536c

8000c0f7 <.Lanon.368313aae6f24ed1916c56358b6b666c.16>:
8000c0f7:	65707553          	.insn	4, 0x65707553
8000c0fb:	7672                	.insn	2, 0x7672
8000c0fd:	7369                	.insn	2, 0x7369
8000c0ff:	6e45726f          	jal	tp,800637e3 <KALLOC_BUFFER+0x537e3>
8000c103:	4376                	.insn	2, 0x4376
8000c105:	6c61                	.insn	2, 0x6c61
8000c107:	                	.insn	2, 0x4d6c

8000c108 <.Lanon.368313aae6f24ed1916c56358b6b666c.17>:
8000c108:	614d                	.insn	2, 0x614d
8000c10a:	6e696863          	bltu	s2,t1,8000c7fa <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E+0xa>
8000c10e:	4565                	.insn	2, 0x4565
8000c110:	766e                	.insn	2, 0x766e
8000c112:	6c6c6143          	.insn	4, 0x6c6c6143

8000c116 <.Lanon.368313aae6f24ed1916c56358b6b666c.18>:
8000c116:	6e49                	.insn	2, 0x6e49
8000c118:	75727473          	.insn	4, 0x75727473
8000c11c:	6f697463          	bgeu	s2,s6,8000c804 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E+0x14>
8000c120:	506e                	.insn	2, 0x506e
8000c122:	6761                	.insn	2, 0x6761
8000c124:	4665                	.insn	2, 0x4665
8000c126:	7561                	.insn	2, 0x7561
8000c128:	746c                	.insn	2, 0x746c

8000c12a <.Lanon.368313aae6f24ed1916c56358b6b666c.19>:
8000c12a:	6f4c                	.insn	2, 0x6f4c
8000c12c:	6461                	.insn	2, 0x6461
8000c12e:	6150                	.insn	2, 0x6150
8000c130:	61466567          	.insn	4, 0x61466567
8000c134:	6c75                	.insn	2, 0x6c75
8000c136:	                	.insn	2, 0x5374

8000c137 <.Lanon.368313aae6f24ed1916c56358b6b666c.20>:
8000c137:	726f7453          	.insn	4, 0x726f7453
8000c13b:	5065                	.insn	2, 0x5065
8000c13d:	6761                	.insn	2, 0x6761
8000c13f:	4665                	.insn	2, 0x4665
8000c141:	7561                	.insn	2, 0x7561
8000c143:	746c                	.insn	2, 0x746c

8000c145 <.Lanon.368313aae6f24ed1916c56358b6b666c.21>:
8000c145:	6e55                	.insn	2, 0x6e55
8000c147:	776f6e6b          	.insn	4, 0x776f6e6b
8000c14b:	                	.insn	2, 0x006e

8000c14c <.Lanon.368313aae6f24ed1916c56358b6b666c.22>:
	...
8000c154:	0001                	.insn	2, 0x0001
8000c156:	0000                	.insn	2, 0x
8000c158:	03e4                	.insn	2, 0x03e4
8000c15a:	8000                	.insn	2, 0x8000
8000c15c:	0218                	.insn	2, 0x0218
8000c15e:	8000                	.insn	2, 0x8000
8000c160:	02f8                	.insn	2, 0x02f8
8000c162:	8000                	.insn	2, 0x8000

8000c164 <.Lanon.368313aae6f24ed1916c56358b6b666c.23>:
	...
8000c16c:	0001                	.insn	2, 0x0001
8000c16e:	0000                	.insn	2, 0x
8000c170:	0320                	.insn	2, 0x0320
8000c172:	8000                	.insn	2, 0x8000

8000c174 <.Lanon.368313aae6f24ed1916c56358b6b666c.24>:
8000c174:	6c6c6163          	bltu	s8,t1,8000c836 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E+0x1e>
8000c178:	6465                	.insn	2, 0x6465
8000c17a:	6020                	.insn	2, 0x6020
8000c17c:	6552                	.insn	2, 0x6552
8000c17e:	746c7573          	.insn	4, 0x746c7573
8000c182:	3a3a                	.insn	2, 0x3a3a
8000c184:	6e75                	.insn	2, 0x6e75
8000c186:	70617277          	.insn	4, 0x70617277
8000c18a:	2928                	.insn	2, 0x2928
8000c18c:	2060                	.insn	2, 0x2060
8000c18e:	61206e6f          	jal	t3,800127a0 <KALLOC_BUFFER+0x27a0>
8000c192:	206e                	.insn	2, 0x206e
8000c194:	4560                	.insn	2, 0x4560
8000c196:	7272                	.insn	2, 0x7272
8000c198:	2060                	.insn	2, 0x2060
8000c19a:	6176                	.insn	2, 0x6176
8000c19c:	756c                	.insn	2, 0x756c
8000c19e:	                	.insn	2, 0x7365

8000c19f <.Lanon.368313aae6f24ed1916c56358b6b666c.25>:
8000c19f:	2f637273          	.insn	4, 0x2f637273
8000c1a3:	7270                	.insn	2, 0x7270
8000c1a5:	6e69                	.insn	2, 0x6e69
8000c1a7:	6574                	.insn	2, 0x6574
8000c1a9:	2e72                	.insn	2, 0x2e72
8000c1ab:	7372                	.insn	2, 0x7372
8000c1ad:	0000                	.insn	2, 0x
	...

8000c1b0 <.Lanon.368313aae6f24ed1916c56358b6b666c.26>:
8000c1b0:	c19f 8000 000e      	.insn	6, 0x000e8000c19f
8000c1b6:	0000                	.insn	2, 0x
8000c1b8:	00000017          	auipc	zero,0x0
8000c1bc:	001c                	.insn	2, 0x001c
	...

8000c1c0 <.Lanon.368313aae6f24ed1916c56358b6b666c.27>:
8000c1c0:	636d                	.insn	2, 0x636d
8000c1c2:	7561                	.insn	2, 0x7561
8000c1c4:	203a6573          	.insn	4, 0x203a6573
8000c1c8:	7865                	.insn	2, 0x7865
8000c1ca:	74706563          	bltu	zero,t2,8000c914 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
8000c1ce:	6f69                	.insn	2, 0x6f69
8000c1d0:	206e                	.insn	2, 0x206e
8000c1d2:	7461                	.insn	2, 0x7461
8000c1d4:	                	.insn	2, 0x2020

8000c1d5 <.Lanon.368313aae6f24ed1916c56358b6b666c.28>:
8000c1d5:	                	.insn	2, 0x0a20

8000c1d6 <.Lanon.368313aae6f24ed1916c56358b6b666c.29>:
8000c1d6:	000a                	.insn	2, 0x000a

8000c1d8 <.Lanon.368313aae6f24ed1916c56358b6b666c.30>:
8000c1d8:	c1c0                	.insn	2, 0xc1c0
8000c1da:	8000                	.insn	2, 0x8000
8000c1dc:	0015                	.insn	2, 0x0015
8000c1de:	0000                	.insn	2, 0x
8000c1e0:	c1d5                	.insn	2, 0xc1d5
8000c1e2:	8000                	.insn	2, 0x8000
8000c1e4:	0001                	.insn	2, 0x0001
8000c1e6:	0000                	.insn	2, 0x
8000c1e8:	c1d6                	.insn	2, 0xc1d6
8000c1ea:	8000                	.insn	2, 0x8000
8000c1ec:	0001                	.insn	2, 0x0001
	...

8000c1f0 <.Lanon.368313aae6f24ed1916c56358b6b666c.31>:
8000c1f0:	6c6c616b          	.insn	4, 0x6c6c616b
8000c1f4:	6220636f          	jal	t1,80012816 <KALLOC_BUFFER+0x2816>
8000c1f8:	6675                	.insn	2, 0x6675
8000c1fa:	6566                	.insn	2, 0x6566
8000c1fc:	2072                	.insn	2, 0x2072
8000c1fe:	6162                	.insn	2, 0x6162
8000c200:	203a6573          	.insn	4, 0x203a6573

8000c204 <.Lanon.368313aae6f24ed1916c56358b6b666c.32>:
8000c204:	c1f0                	.insn	2, 0xc1f0
8000c206:	8000                	.insn	2, 0x8000
8000c208:	0014                	.insn	2, 0x0014
8000c20a:	0000                	.insn	2, 0x
8000c20c:	c1d6                	.insn	2, 0xc1d6
8000c20e:	8000                	.insn	2, 0x8000
8000c210:	0001                	.insn	2, 0x0001
	...

8000c214 <.Lanon.368313aae6f24ed1916c56358b6b666c.33>:
8000c214:	6170                	.insn	2, 0x6170
8000c216:	6c6c                	.insn	2, 0x6c6c
8000c218:	203a636f          	jal	t1,800b2c1a <KALLOC_BUFFER+0xa2c1a>
8000c21c:	6966                	.insn	2, 0x6966
8000c21e:	7372                	.insn	2, 0x7372
8000c220:	2074                	.insn	2, 0x2074

8000c222 <.Lanon.368313aae6f24ed1916c56358b6b666c.34>:
8000c222:	6c20                	.insn	2, 0x6c20
8000c224:	7361                	.insn	2, 0x7361
8000c226:	2074                	.insn	2, 0x2074

8000c228 <.Lanon.368313aae6f24ed1916c56358b6b666c.35>:
8000c228:	c214                	.insn	2, 0xc214
8000c22a:	8000                	.insn	2, 0x8000
8000c22c:	000e                	.insn	2, 0x000e
8000c22e:	0000                	.insn	2, 0x
8000c230:	c222                	.insn	2, 0xc222
8000c232:	8000                	.insn	2, 0x8000
8000c234:	0006                	.insn	2, 0x0006
8000c236:	0000                	.insn	2, 0x
8000c238:	c1d6                	.insn	2, 0xc1d6
8000c23a:	8000                	.insn	2, 0x8000
8000c23c:	0001                	.insn	2, 0x0001
	...

8000c240 <.Lanon.368313aae6f24ed1916c56358b6b666c.36>:
8000c240:	2f637273          	.insn	4, 0x2f637273
8000c244:	6f70                	.insn	2, 0x6f70
8000c246:	6e69                	.insn	2, 0x6e69
8000c248:	6574                	.insn	2, 0x6574
8000c24a:	2e72                	.insn	2, 0x2e72
8000c24c:	7372                	.insn	2, 0x7372
	...

8000c250 <.Lanon.368313aae6f24ed1916c56358b6b666c.37>:
8000c250:	c240                	.insn	2, 0xc240
8000c252:	8000                	.insn	2, 0x8000
8000c254:	000e                	.insn	2, 0x000e
8000c256:	0000                	.insn	2, 0x
8000c258:	0000002f          	.insn	4, 0x002f
8000c25c:	0030                	.insn	2, 0x0030
	...

8000c260 <.Lanon.368313aae6f24ed1916c56358b6b666c.38>:
8000c260:	6170                	.insn	2, 0x6170
8000c262:	6c6c                	.insn	2, 0x6c6c
8000c264:	6220636f          	jal	t1,80012886 <KALLOC_BUFFER+0x2886>
8000c268:	7361                	.insn	2, 0x7361
8000c26a:	3a65                	.insn	2, 0x3a65
8000c26c:	3020                	.insn	2, 0x3020
8000c26e:	0078                	.insn	2, 0x0078

8000c270 <.Lanon.368313aae6f24ed1916c56358b6b666c.39>:
8000c270:	c260                	.insn	2, 0xc260
8000c272:	8000                	.insn	2, 0x8000
8000c274:	0000000f          	fence	unknown,unknown
8000c278:	c1d6                	.insn	2, 0xc1d6
8000c27a:	8000                	.insn	2, 0x8000
8000c27c:	0001                	.insn	2, 0x0001
	...

8000c280 <.Lanon.368313aae6f24ed1916c56358b6b666c.40>:
8000c280:	6f66                	.insn	2, 0x6f66
8000c282:	6e75                	.insn	2, 0x6e75
8000c284:	2064                	.insn	2, 0x2064

8000c286 <.Lanon.368313aae6f24ed1916c56358b6b666c.41>:
8000c286:	6520                	.insn	2, 0x6520
8000c288:	656c                	.insn	2, 0x656c
8000c28a:	656d                	.insn	2, 0x656d
8000c28c:	746e                	.insn	2, 0x746e
8000c28e:	6e692073          	.insn	4, 0x6e692073
8000c292:	7420                	.insn	2, 0x7420
8000c294:	6568                	.insn	2, 0x6568
8000c296:	6c20                	.insn	2, 0x6c20
8000c298:	7369                	.insn	2, 0x7369
8000c29a:	0a74                	.insn	2, 0x0a74

8000c29c <.Lanon.368313aae6f24ed1916c56358b6b666c.42>:
8000c29c:	c280                	.insn	2, 0xc280
8000c29e:	8000                	.insn	2, 0x8000
8000c2a0:	0006                	.insn	2, 0x0006
8000c2a2:	0000                	.insn	2, 0x
8000c2a4:	c286                	.insn	2, 0xc286
8000c2a6:	8000                	.insn	2, 0x8000
8000c2a8:	0016                	.insn	2, 0x0016
	...

8000c2ac <.Lanon.368313aae6f24ed1916c56358b6b666c.43>:
8000c2ac:	2f637273          	.insn	4, 0x2f637273
8000c2b0:	616d                	.insn	2, 0x616d
8000c2b2:	6e69                	.insn	2, 0x6e69
8000c2b4:	722e                	.insn	2, 0x722e
8000c2b6:	          	.insn	4, 0xc2ac0073

8000c2b8 <.Lanon.368313aae6f24ed1916c56358b6b666c.44>:
8000c2b8:	c2ac                	.insn	2, 0xc2ac
8000c2ba:	8000                	.insn	2, 0x8000
8000c2bc:	0000000b          	.insn	4, 0x000b
8000c2c0:	0000004f          	.insn	4, 0x004f
8000c2c4:	000e                	.insn	2, 0x000e
	...

8000c2c8 <.Lanon.368313aae6f24ed1916c56358b6b666c.45>:
8000c2c8:	6361                	.insn	2, 0x6361
8000c2ca:	00203a63          	.insn	4, 0x00203a63
	...

8000c2d0 <.Lanon.368313aae6f24ed1916c56358b6b666c.46>:
8000c2d0:	c2c8                	.insn	2, 0xc2c8
8000c2d2:	8000                	.insn	2, 0x8000
8000c2d4:	0005                	.insn	2, 0x0005
8000c2d6:	0000                	.insn	2, 0x
8000c2d8:	c1d6                	.insn	2, 0xc1d6
8000c2da:	8000                	.insn	2, 0x8000
8000c2dc:	0001                	.insn	2, 0x0001
	...

8000c2e0 <.Lanon.368313aae6f24ed1916c56358b6b666c.47>:
8000c2e0:	3a6d7573          	.insn	4, 0x3a6d7573
8000c2e4:	                	.insn	2, 0x2020

8000c2e5 <.Lanon.368313aae6f24ed1916c56358b6b666c.48>:
8000c2e5:	6520                	.insn	2, 0x6520
8000c2e7:	7078                	.insn	2, 0x7078
8000c2e9:	6365                	.insn	2, 0x6365
8000c2eb:	6574                	.insn	2, 0x6574
8000c2ed:	3a64                	.insn	2, 0x3a64
8000c2ef:	                	.insn	2, 0xe020

8000c2f0 <.Lanon.368313aae6f24ed1916c56358b6b666c.49>:
8000c2f0:	c2e0                	.insn	2, 0xc2e0
8000c2f2:	8000                	.insn	2, 0x8000
8000c2f4:	0005                	.insn	2, 0x0005
8000c2f6:	0000                	.insn	2, 0x
8000c2f8:	c2e5                	.insn	2, 0xc2e5
8000c2fa:	8000                	.insn	2, 0x8000
8000c2fc:	0000000b          	.insn	4, 0x000b
8000c300:	c1d6                	.insn	2, 0xc1d6
8000c302:	8000                	.insn	2, 0x8000
8000c304:	0001                	.insn	2, 0x0001
	...

8000c308 <.Lanon.368313aae6f24ed1916c56358b6b666c.50>:
8000c308:	c2ac                	.insn	2, 0xc2ac
8000c30a:	8000                	.insn	2, 0x8000
8000c30c:	0000000b          	.insn	4, 0x000b
8000c310:	0085                	.insn	2, 0x0085
8000c312:	0000                	.insn	2, 0x
8000c314:	0016                	.insn	2, 0x0016
	...

8000c318 <.Lanon.368313aae6f24ed1916c56358b6b666c.51>:
8000c318:	c2ac                	.insn	2, 0xc2ac
8000c31a:	8000                	.insn	2, 0x8000
8000c31c:	0000000b          	.insn	4, 0x000b
8000c320:	0085                	.insn	2, 0x0085
8000c322:	0000                	.insn	2, 0x
8000c324:	0019                	.insn	2, 0x0019
	...

8000c328 <.Lanon.368313aae6f24ed1916c56358b6b666c.52>:
8000c328:	c2ac                	.insn	2, 0xc2ac
8000c32a:	8000                	.insn	2, 0x8000
8000c32c:	0000000b          	.insn	4, 0x000b
8000c330:	007d                	.insn	2, 0x007d
8000c332:	0000                	.insn	2, 0x
8000c334:	001f 0000       	.insn	6, 0xc2ac0000001f

8000c338 <.Lanon.368313aae6f24ed1916c56358b6b666c.53>:
8000c338:	c2ac                	.insn	2, 0xc2ac
8000c33a:	8000                	.insn	2, 0x8000
8000c33c:	0000000b          	.insn	4, 0x000b
8000c340:	007d                	.insn	2, 0x007d
8000c342:	0000                	.insn	2, 0x
8000c344:	0022                	.insn	2, 0x0022
	...

8000c348 <.Lanon.368313aae6f24ed1916c56358b6b666c.54>:
8000c348:	c2ac                	.insn	2, 0xc2ac
8000c34a:	8000                	.insn	2, 0x8000
8000c34c:	0000000b          	.insn	4, 0x000b
8000c350:	007d                	.insn	2, 0x007d
8000c352:	0000                	.insn	2, 0x
8000c354:	002a                	.insn	2, 0x002a
	...

8000c358 <.Lanon.368313aae6f24ed1916c56358b6b666c.55>:
8000c358:	c2ac                	.insn	2, 0xc2ac
8000c35a:	8000                	.insn	2, 0x8000
8000c35c:	0000000b          	.insn	4, 0x000b
8000c360:	007d                	.insn	2, 0x007d
8000c362:	0000                	.insn	2, 0x
8000c364:	002d                	.insn	2, 0x002d
	...

8000c368 <.Lanon.368313aae6f24ed1916c56358b6b666c.56>:
8000c368:	c2ac                	.insn	2, 0xc2ac
8000c36a:	8000                	.insn	2, 0x8000
8000c36c:	0000000b          	.insn	4, 0x000b
8000c370:	007d                	.insn	2, 0x007d
8000c372:	0000                	.insn	2, 0x
8000c374:	00000013          	nop

8000c378 <.Lanon.368313aae6f24ed1916c56358b6b666c.57>:
8000c378:	c2ac                	.insn	2, 0xc2ac
8000c37a:	8000                	.insn	2, 0x8000
8000c37c:	0000000b          	.insn	4, 0x000b
8000c380:	007d                	.insn	2, 0x007d
8000c382:	0000                	.insn	2, 0x
8000c384:	0016                	.insn	2, 0x0016
	...

8000c388 <.Lanon.368313aae6f24ed1916c56358b6b666c.58>:
8000c388:	c2ac                	.insn	2, 0xc2ac
8000c38a:	8000                	.insn	2, 0x8000
8000c38c:	0000000b          	.insn	4, 0x000b
8000c390:	006c                	.insn	2, 0x006c
8000c392:	0000                	.insn	2, 0x
8000c394:	000c                	.insn	2, 0x000c
	...

8000c398 <.Lanon.368313aae6f24ed1916c56358b6b666c.59>:
8000c398:	c2ac                	.insn	2, 0xc2ac
8000c39a:	8000                	.insn	2, 0x8000
8000c39c:	0000000b          	.insn	4, 0x000b
8000c3a0:	006d                	.insn	2, 0x006d
8000c3a2:	0000                	.insn	2, 0x
8000c3a4:	000c                	.insn	2, 0x000c
	...

8000c3a8 <.Lanon.368313aae6f24ed1916c56358b6b666c.60>:
8000c3a8:	c2ac                	.insn	2, 0xc2ac
8000c3aa:	8000                	.insn	2, 0x8000
8000c3ac:	0000000b          	.insn	4, 0x000b
8000c3b0:	006e                	.insn	2, 0x006e
8000c3b2:	0000                	.insn	2, 0x
8000c3b4:	000c                	.insn	2, 0x000c
	...

8000c3b8 <.Lanon.368313aae6f24ed1916c56358b6b666c.61>:
8000c3b8:	c2ac                	.insn	2, 0xc2ac
8000c3ba:	8000                	.insn	2, 0x8000
8000c3bc:	0000000b          	.insn	4, 0x000b
8000c3c0:	0070                	.insn	2, 0x0070
8000c3c2:	0000                	.insn	2, 0x
8000c3c4:	0000000f          	fence	unknown,unknown

8000c3c8 <.Lanon.368313aae6f24ed1916c56358b6b666c.62>:
8000c3c8:	c2ac                	.insn	2, 0xc2ac
8000c3ca:	8000                	.insn	2, 0x8000
8000c3cc:	0000000b          	.insn	4, 0x000b
8000c3d0:	0070                	.insn	2, 0x0070
8000c3d2:	0000                	.insn	2, 0x
8000c3d4:	00000013          	nop

8000c3d8 <.Lanon.368313aae6f24ed1916c56358b6b666c.63>:
8000c3d8:	c2ac                	.insn	2, 0xc2ac
8000c3da:	8000                	.insn	2, 0x8000
8000c3dc:	0000000b          	.insn	4, 0x000b
8000c3e0:	0071                	.insn	2, 0x0071
8000c3e2:	0000                	.insn	2, 0x
8000c3e4:	0000000f          	fence	unknown,unknown

8000c3e8 <.Lanon.368313aae6f24ed1916c56358b6b666c.64>:
8000c3e8:	c2ac                	.insn	2, 0xc2ac
8000c3ea:	8000                	.insn	2, 0x8000
8000c3ec:	0000000b          	.insn	4, 0x000b
8000c3f0:	0071                	.insn	2, 0x0071
8000c3f2:	0000                	.insn	2, 0x
8000c3f4:	00000013          	nop

8000c3f8 <.Lanon.368313aae6f24ed1916c56358b6b666c.65>:
8000c3f8:	c2ac                	.insn	2, 0xc2ac
8000c3fa:	8000                	.insn	2, 0x8000
8000c3fc:	0000000b          	.insn	4, 0x000b
8000c400:	0072                	.insn	2, 0x0072
8000c402:	0000                	.insn	2, 0x
8000c404:	0000000f          	fence	unknown,unknown

8000c408 <.Lanon.368313aae6f24ed1916c56358b6b666c.66>:
8000c408:	c2ac                	.insn	2, 0xc2ac
8000c40a:	8000                	.insn	2, 0x8000
8000c40c:	0000000b          	.insn	4, 0x000b
8000c410:	0072                	.insn	2, 0x0072
8000c412:	0000                	.insn	2, 0x
8000c414:	00000013          	nop

8000c418 <.Lanon.368313aae6f24ed1916c56358b6b666c.67>:
8000c418:	31335b1b          	.insn	4, 0x31335b1b
8000c41c:	4b6d                	.insn	2, 0x4b6d
8000c41e:	5245                	.insn	2, 0x5245
8000c420:	454e                	.insn	2, 0x454e
8000c422:	204c                	.insn	2, 0x204c
8000c424:	4150                	.insn	2, 0x4150
8000c426:	494e                	.insn	2, 0x494e
8000c428:	5b1b3a43          	.insn	4, 0x5b1b3a43
8000c42c:	6d30                	.insn	2, 0x6d30
8000c42e:	0020                	.insn	2, 0x0020

8000c430 <.Lanon.368313aae6f24ed1916c56358b6b666c.68>:
8000c430:	c418                	.insn	2, 0xc418
8000c432:	8000                	.insn	2, 0x8000
8000c434:	00000017          	auipc	zero,0x0
8000c438:	c1d6                	.insn	2, 0xc1d6
8000c43a:	8000                	.insn	2, 0x8000
8000c43c:	0001                	.insn	2, 0x0001
	...

8000c440 <.Lanon.368313aae6f24ed1916c56358b6b666c.69>:
8000c440:	c2ac                	.insn	2, 0xc2ac
8000c442:	8000                	.insn	2, 0x8000
8000c444:	0000000b          	.insn	4, 0x000b
8000c448:	00d1                	.insn	2, 0x00d1
8000c44a:	0000                	.insn	2, 0x
8000c44c:	0026                	.insn	2, 0x0026
	...

8000c450 <.Lanon.368313aae6f24ed1916c56358b6b666c.70>:
8000c450:	7375                	.insn	2, 0x7375
8000c452:	7265                	.insn	2, 0x7265
8000c454:	6d5f 6961 3a6e      	.insn	6, 0x3a6e69616d5f
8000c45a:	0020                	.insn	2, 0x0020

8000c45c <.Lanon.368313aae6f24ed1916c56358b6b666c.71>:
8000c45c:	c450                	.insn	2, 0xc450
8000c45e:	8000                	.insn	2, 0x8000
8000c460:	0000000b          	.insn	4, 0x000b
8000c464:	c1d6                	.insn	2, 0xc1d6
8000c466:	8000                	.insn	2, 0x8000
8000c468:	0001                	.insn	2, 0x0001
	...

8000c46c <.Lanon.368313aae6f24ed1916c56358b6b666c.72>:
8000c46c:	6974                	.insn	2, 0x6974
8000c46e:	656d                	.insn	2, 0x656d
8000c470:	203a                	.insn	2, 0x203a

8000c472 <.Lanon.368313aae6f24ed1916c56358b6b666c.73>:
8000c472:	6920                	.insn	2, 0x6920
8000c474:	736e                	.insn	2, 0x736e
8000c476:	7274                	.insn	2, 0x7274
8000c478:	7465                	.insn	2, 0x7465
8000c47a:	203a                	.insn	2, 0x203a

8000c47c <.Lanon.368313aae6f24ed1916c56358b6b666c.74>:
8000c47c:	c46c                	.insn	2, 0xc46c
8000c47e:	8000                	.insn	2, 0x8000
8000c480:	0006                	.insn	2, 0x0006
8000c482:	0000                	.insn	2, 0x
8000c484:	c472                	.insn	2, 0xc472
8000c486:	8000                	.insn	2, 0x8000
8000c488:	000a                	.insn	2, 0x000a
8000c48a:	0000                	.insn	2, 0x
8000c48c:	c1d6                	.insn	2, 0xc1d6
8000c48e:	8000                	.insn	2, 0x8000
8000c490:	0001                	.insn	2, 0x0001
	...

8000c494 <.Lanon.368313aae6f24ed1916c56358b6b666c.75>:
8000c494:	6c6c616b          	.insn	4, 0x6c6c616b
8000c498:	6620636f          	jal	t1,80012afa <KALLOC_BUFFER+0x2afa>
8000c49c:	6961                	.insn	2, 0x6961
8000c49e:	3a6c                	.insn	2, 0x3a6c
8000c4a0:	0020                	.insn	2, 0x0020
	...

8000c4a4 <.Lanon.368313aae6f24ed1916c56358b6b666c.76>:
8000c4a4:	c494                	.insn	2, 0xc494
8000c4a6:	8000                	.insn	2, 0x8000
8000c4a8:	000d                	.insn	2, 0x000d
	...

8000c4ac <.Lanon.368313aae6f24ed1916c56358b6b666c.77>:
8000c4ac:	2f637273          	.insn	4, 0x2f637273
8000c4b0:	6c6c616b          	.insn	4, 0x6c6c616b
8000c4b4:	722e636f          	jal	t1,800f2bd6 <KALLOC_BUFFER+0xe2bd6>
8000c4b8:	00000073          	ecall

8000c4bc <.Lanon.368313aae6f24ed1916c56358b6b666c.78>:
8000c4bc:	c4ac                	.insn	2, 0xc4ac
8000c4be:	8000                	.insn	2, 0x8000
8000c4c0:	000d                	.insn	2, 0x000d
8000c4c2:	0000                	.insn	2, 0x
8000c4c4:	0019                	.insn	2, 0x0019
8000c4c6:	0000                	.insn	2, 0x
8000c4c8:	0005                	.insn	2, 0x0005
	...

8000c4cc <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE>:
8000c4cc:	0015                	.insn	2, 0x0015
8000c4ce:	0000                	.insn	2, 0x
8000c4d0:	0010                	.insn	2, 0x0010
8000c4d2:	0000                	.insn	2, 0x
8000c4d4:	0012                	.insn	2, 0x0012
8000c4d6:	0000                	.insn	2, 0x
8000c4d8:	000a                	.insn	2, 0x000a
8000c4da:	0000                	.insn	2, 0x
8000c4dc:	000e                	.insn	2, 0x000e
8000c4de:	0000                	.insn	2, 0x
8000c4e0:	0009                	.insn	2, 0x0009
8000c4e2:	0000                	.insn	2, 0x
8000c4e4:	0000000f          	fence	unknown,unknown
8000c4e8:	000a                	.insn	2, 0x000a
8000c4ea:	0000                	.insn	2, 0x
8000c4ec:	0000000b          	.insn	4, 0x000b
8000c4f0:	0011                	.insn	2, 0x0011
8000c4f2:	0000                	.insn	2, 0x
8000c4f4:	000e                	.insn	2, 0x000e
8000c4f6:	0000                	.insn	2, 0x
8000c4f8:	0014                	.insn	2, 0x0014
8000c4fa:	0000                	.insn	2, 0x
8000c4fc:	000d                	.insn	2, 0x000d
8000c4fe:	0000                	.insn	2, 0x
8000c500:	000e                	.insn	2, 0x000e
8000c502:	0000                	.insn	2, 0x
8000c504:	00000007          	.insn	4, 0x0007

8000c508 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.9>:
8000c508:	8000c03b          	.insn	4, 0x8000c03b
8000c50c:	c060                	.insn	2, 0xc060
8000c50e:	8000                	.insn	2, 0x8000
8000c510:	c0a0                	.insn	2, 0xc0a0
8000c512:	8000                	.insn	2, 0x8000
8000c514:	c0b2                	.insn	2, 0xc0b2
8000c516:	8000                	.insn	2, 0x8000
8000c518:	c0bc                	.insn	2, 0xc0bc
8000c51a:	8000                	.insn	2, 0x8000
8000c51c:	c0ca                	.insn	2, 0xc0ca
8000c51e:	8000                	.insn	2, 0x8000
8000c520:	8000c0d3          	.insn	4, 0x8000c0d3
8000c524:	c0e2                	.insn	2, 0xc0e2
8000c526:	8000                	.insn	2, 0x8000
8000c528:	c0ec                	.insn	2, 0xc0ec
8000c52a:	8000                	.insn	2, 0x8000
8000c52c:	8000c0f7          	.insn	4, 0x8000c0f7
8000c530:	c108                	.insn	2, 0xc108
8000c532:	8000                	.insn	2, 0x8000
8000c534:	c116                	.insn	2, 0xc116
8000c536:	8000                	.insn	2, 0x8000
8000c538:	c12a                	.insn	2, 0xc12a
8000c53a:	8000                	.insn	2, 0x8000
8000c53c:	8000c137          	lui	sp,0x8000c
8000c540:	c145                	.insn	2, 0xc145
8000c542:	8000                	.insn	2, 0x8000

8000c544 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.0>:
8000c544:	614c                	.insn	2, 0x614c
8000c546:	6f79                	.insn	2, 0x6f79
8000c548:	7475                	.insn	2, 0x7475
8000c54a:	7245                	.insn	2, 0x7245
8000c54c:	6f72                	.insn	2, 0x6f72
8000c54e:	                	.insn	2, 0x7372

8000c54f <anon.0d126ca59ad3fe35aac6cbcb019c7c0d.1.llvm.12482091781087275114>:
8000c54f:	2f637273          	.insn	4, 0x2f637273
8000c553:	6f68                	.insn	2, 0x6f68
8000c555:	656c                	.insn	2, 0x656c
8000c557:	722e                	.insn	2, 0x722e
8000c559:	          	.insn	4, 0x696c6173

8000c55a <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.2>:
8000c55a:	6c61                	.insn	2, 0x6c61
8000c55c:	6769                	.insn	2, 0x6769
8000c55e:	5f6e                	.insn	2, 0x5f6e
8000c560:	7366666f          	jal	a2,80072c96 <KALLOC_BUFFER+0x62c96>
8000c564:	7465                	.insn	2, 0x7465
8000c566:	203a                	.insn	2, 0x203a
8000c568:	6c61                	.insn	2, 0x6c61
8000c56a:	6769                	.insn	2, 0x6769
8000c56c:	206e                	.insn	2, 0x206e
8000c56e:	7369                	.insn	2, 0x7369
8000c570:	6e20                	.insn	2, 0x6e20
8000c572:	6120746f          	jal	s0,80013b84 <KALLOC_BUFFER+0x3b84>
8000c576:	7020                	.insn	2, 0x7020
8000c578:	7265776f          	jal	a4,80063c9e <KALLOC_BUFFER+0x53c9e>
8000c57c:	6f2d                	.insn	2, 0x6f2d
8000c57e:	2d66                	.insn	2, 0x2d66
8000c580:	7774                	.insn	2, 0x7774
8000c582:	          	j	7ffad1d6 <.Lline_table_start2+0x7ffabe28>

8000c584 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.3>:
8000c584:	c55a                	.insn	2, 0xc55a
8000c586:	8000                	.insn	2, 0x8000
8000c588:	0029                	.insn	2, 0x0029
	...

8000c58c <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.4>:
8000c58c:	6d6f682f          	.insn	4, 0x6d6f682f
8000c590:	2f65                	.insn	2, 0x2f65
8000c592:	6572                	.insn	2, 0x6572
8000c594:	796d                	.insn	2, 0x796d
8000c596:	75722e2f          	.insn	4, 0x75722e2f
8000c59a:	70757473          	.insn	4, 0x70757473
8000c59e:	6f6f742f          	.insn	4, 0x6f6f742f
8000c5a2:	636c                	.insn	2, 0x636c
8000c5a4:	6168                	.insn	2, 0x6168
8000c5a6:	6e69                	.insn	2, 0x6e69
8000c5a8:	696e2f73          	.insn	4, 0x696e2f73
8000c5ac:	6c746867          	.insn	4, 0x6c746867
8000c5b0:	2d79                	.insn	2, 0x2d79
8000c5b2:	3878                	.insn	2, 0x3878
8000c5b4:	5f36                	.insn	2, 0x5f36
8000c5b6:	3436                	.insn	2, 0x3436
8000c5b8:	752d                	.insn	2, 0x752d
8000c5ba:	6b6e                	.insn	2, 0x6b6e
8000c5bc:	6f6e                	.insn	2, 0x6f6e
8000c5be:	6c2d6e77          	.insn	4, 0x6c2d6e77
8000c5c2:	6e69                	.insn	2, 0x6e69
8000c5c4:	7875                	.insn	2, 0x7875
8000c5c6:	672d                	.insn	2, 0x672d
8000c5c8:	756e                	.insn	2, 0x756e
8000c5ca:	62696c2f          	.insn	4, 0x62696c2f
8000c5ce:	7375722f          	.insn	4, 0x7375722f
8000c5d2:	6c74                	.insn	2, 0x6c74
8000c5d4:	6269                	.insn	2, 0x6269
8000c5d6:	6372732f          	.insn	4, 0x6372732f
8000c5da:	7375722f          	.insn	4, 0x7375722f
8000c5de:	2f74                	.insn	2, 0x2f74
8000c5e0:	696c                	.insn	2, 0x696c
8000c5e2:	7262                	.insn	2, 0x7262
8000c5e4:	7261                	.insn	2, 0x7261
8000c5e6:	2f79                	.insn	2, 0x2f79
8000c5e8:	65726f63          	bltu	tp,s7,8000cc46 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x18e>
8000c5ec:	6372732f          	.insn	4, 0x6372732f
8000c5f0:	7274702f          	.insn	4, 0x7274702f
8000c5f4:	74756d2f          	.insn	4, 0x74756d2f
8000c5f8:	705f 7274 722e      	.insn	6, 0x722e7274705f
8000c5fe:	          	.insn	4, 0xc58c0073

8000c600 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.5>:
8000c600:	c58c                	.insn	2, 0xc58c
8000c602:	8000                	.insn	2, 0x8000
8000c604:	00000073          	ecall
8000c608:	0666                	.insn	2, 0x0666
8000c60a:	0000                	.insn	2, 0x
8000c60c:	000d                	.insn	2, 0x000d
	...

8000c610 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.10>:
	...
8000c618:	0001                	.insn	2, 0x0001
8000c61a:	0000                	.insn	2, 0x
8000c61c:	1ef8                	.insn	2, 0x1ef8
8000c61e:	8000                	.insn	2, 0x8000

8000c620 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.11>:
8000c620:	6c6c6163          	bltu	s8,t1,8000cce2 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x22a>
8000c624:	6465                	.insn	2, 0x6465
8000c626:	6020                	.insn	2, 0x6020
8000c628:	6552                	.insn	2, 0x6552
8000c62a:	746c7573          	.insn	4, 0x746c7573
8000c62e:	3a3a                	.insn	2, 0x3a3a
8000c630:	6e75                	.insn	2, 0x6e75
8000c632:	70617277          	.insn	4, 0x70617277
8000c636:	2928                	.insn	2, 0x2928
8000c638:	2060                	.insn	2, 0x2060
8000c63a:	61206e6f          	jal	t3,80012c4c <KALLOC_BUFFER+0x2c4c>
8000c63e:	206e                	.insn	2, 0x206e
8000c640:	4560                	.insn	2, 0x4560
8000c642:	7272                	.insn	2, 0x7272
8000c644:	2060                	.insn	2, 0x2060
8000c646:	6176                	.insn	2, 0x6176
8000c648:	756c                	.insn	2, 0x756c
8000c64a:	0065                	.insn	2, 0x0065

8000c64c <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.12>:
8000c64c:	8000c54f          	.insn	4, 0x8000c54f
8000c650:	0000000b          	.insn	4, 0x000b
8000c654:	01b8                	.insn	2, 0x01b8
8000c656:	0000                	.insn	2, 0x
8000c658:	0039                	.insn	2, 0x0039
	...

8000c65c <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.13>:
8000c65c:	7246                	.insn	2, 0x7246
8000c65e:	6565                	.insn	2, 0x6565
8000c660:	2064                	.insn	2, 0x2064
8000c662:	6f6e                	.insn	2, 0x6f6e
8000c664:	6564                	.insn	2, 0x6564
8000c666:	6120                	.insn	2, 0x6120
8000c668:	696c                	.insn	2, 0x696c
8000c66a:	7361                	.insn	2, 0x7361
8000c66c:	7365                	.insn	2, 0x7365
8000c66e:	6520                	.insn	2, 0x6520
8000c670:	6978                	.insn	2, 0x6978
8000c672:	6e697473          	.insn	4, 0x6e697473
8000c676:	6f682067          	.insn	4, 0x6f682067
8000c67a:	656c                	.insn	2, 0x656c
8000c67c:	2021                	.insn	2, 0x2021
8000c67e:	6142                	.insn	2, 0x6142
8000c680:	2064                	.insn	2, 0x2064
8000c682:	7266                	.insn	2, 0x7266
8000c684:	6565                	.insn	2, 0x6565
8000c686:	  	.insn	8, 0x002b8000c65c003f

8000c688 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.14>:
8000c688:	c65c                	.insn	2, 0xc65c
8000c68a:	8000                	.insn	2, 0x8000
8000c68c:	0000002b          	.insn	4, 0x002b

8000c690 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.15>:
8000c690:	8000c54f          	.insn	4, 0x8000c54f
8000c694:	0000000b          	.insn	4, 0x000b
8000c698:	0206                	.insn	2, 0x0206
8000c69a:	0000                	.insn	2, 0x
8000c69c:	000d                	.insn	2, 0x000d
	...

8000c6a0 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.16>:
8000c6a0:	8000c54f          	.insn	4, 0x8000c54f
8000c6a4:	0000000b          	.insn	4, 0x000b
8000c6a8:	0228                	.insn	2, 0x0228
8000c6aa:	0000                	.insn	2, 0x
8000c6ac:	0011                	.insn	2, 0x0011
	...

8000c6b0 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.17>:
8000c6b0:	7246                	.insn	2, 0x7246
8000c6b2:	6565                	.insn	2, 0x6565
8000c6b4:	2064                	.insn	2, 0x2064
8000c6b6:	6f6e                	.insn	2, 0x6f6e
8000c6b8:	6564                	.insn	2, 0x6564
8000c6ba:	2820                	.insn	2, 0x2820

8000c6bc <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.18>:
8000c6bc:	2029                	.insn	2, 0x2029
8000c6be:	6c61                	.insn	2, 0x6c61
8000c6c0:	6169                	.insn	2, 0x6169
8000c6c2:	20736573          	.insn	4, 0x20736573
8000c6c6:	7865                	.insn	2, 0x7865
8000c6c8:	7369                	.insn	2, 0x7369
8000c6ca:	6974                	.insn	2, 0x6974
8000c6cc:	676e                	.insn	2, 0x676e
8000c6ce:	6820                	.insn	2, 0x6820
8000c6d0:	20656c6f          	jal	s8,800628d6 <KALLOC_BUFFER+0x528d6>
8000c6d4:	                	.insn	2, 0x5b28

8000c6d5 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.19>:
8000c6d5:	          	.insn	4, 0x21295d5b

8000c6d6 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.20>:
8000c6d6:	295d                	.insn	2, 0x295d
8000c6d8:	2021                	.insn	2, 0x2021
8000c6da:	6142                	.insn	2, 0x6142
8000c6dc:	2064                	.insn	2, 0x2064
8000c6de:	7266                	.insn	2, 0x7266
8000c6e0:	6565                	.insn	2, 0x6565
8000c6e2:	  	.insn	8, 0x000c8000c6b0003f

8000c6e4 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.21>:
8000c6e4:	c6b0                	.insn	2, 0xc6b0
8000c6e6:	8000                	.insn	2, 0x8000
8000c6e8:	000c                	.insn	2, 0x000c
8000c6ea:	0000                	.insn	2, 0x
8000c6ec:	c6bc                	.insn	2, 0xc6bc
8000c6ee:	8000                	.insn	2, 0x8000
8000c6f0:	0019                	.insn	2, 0x0019
8000c6f2:	0000                	.insn	2, 0x
8000c6f4:	c6d5                	.insn	2, 0xc6d5
8000c6f6:	8000                	.insn	2, 0x8000
8000c6f8:	0001                	.insn	2, 0x0001
8000c6fa:	0000                	.insn	2, 0x
8000c6fc:	c6d6                	.insn	2, 0xc6d6
8000c6fe:	8000                	.insn	2, 0x8000
8000c700:	000d                	.insn	2, 0x000d
	...

8000c704 <.Lanon.0d126ca59ad3fe35aac6cbcb019c7c0d.22>:
8000c704:	8000c54f          	.insn	4, 0x8000c54f
8000c708:	0000000b          	.insn	4, 0x000b
8000c70c:	0000023b          	.insn	4, 0x023b
8000c710:	0009                	.insn	2, 0x0009
	...

8000c714 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.3>:
8000c714:	61706163          	bltu	zero,s7,8000cd16 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x25e>
8000c718:	79746963          	bltu	s0,s7,8000ceaa <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x3f2>
8000c71c:	6f20                	.insn	2, 0x6f20
8000c71e:	6576                	.insn	2, 0x6576
8000c720:	6672                	.insn	2, 0x6672
8000c722:	6f6c                	.insn	2, 0x6f6c
8000c724:	00000077          	.insn	4, 0x0077

8000c728 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4>:
8000c728:	c714                	.insn	2, 0xc714
8000c72a:	8000                	.insn	2, 0x8000
8000c72c:	0011                	.insn	2, 0x0011
8000c72e:	0000                	.insn	2, 0x
8000c730:	6e69                	.insn	2, 0x6e69
8000c732:	6564                	.insn	2, 0x6564
8000c734:	2078                	.insn	2, 0x2078
8000c736:	2074756f          	jal	a0,8005413c <KALLOC_BUFFER+0x4413c>
8000c73a:	6220666f          	jal	a2,80012d5c <KALLOC_BUFFER+0x2d5c>
8000c73e:	646e756f          	jal	a0,800f3d84 <KALLOC_BUFFER+0xe3d84>
8000c742:	74203a73          	.insn	4, 0x74203a73
8000c746:	6568                	.insn	2, 0x6568
8000c748:	6c20                	.insn	2, 0x6c20
8000c74a:	6e65                	.insn	2, 0x6e65
8000c74c:	6920                	.insn	2, 0x6920
8000c74e:	01002073          	.insn	4, 0x01002073
8000c752:	021c                	.insn	2, 0x021c
8000c754:	0e1d                	.insn	2, 0x0e1d
8000c756:	0318                	.insn	2, 0x0318
8000c758:	161e                	.insn	2, 0x161e
8000c75a:	0f14                	.insn	2, 0x0f14
8000c75c:	1119                	.insn	2, 0x1119
8000c75e:	0804                	.insn	2, 0x0804
8000c760:	1b1f 170d 1315      	.insn	6, 0x1315170d1b1f
8000c766:	0710                	.insn	2, 0x0710
8000c768:	0c1a                	.insn	2, 0x0c1a
8000c76a:	0612                	.insn	2, 0x0612
8000c76c:	090a050b          	.insn	4, 0x090a050b

8000c770 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.21>:
8000c770:	7361                	.insn	2, 0x7361
8000c772:	74726573          	.insn	4, 0x74726573
8000c776:	6f69                	.insn	2, 0x6f69
8000c778:	206e                	.insn	2, 0x206e
8000c77a:	6166                	.insn	2, 0x6166
8000c77c:	6c69                	.insn	2, 0x6c69
8000c77e:	6465                	.insn	2, 0x6465
8000c780:	203a                	.insn	2, 0x203a
8000c782:	6465                	.insn	2, 0x6465
8000c784:	6c65                	.insn	2, 0x6c65
8000c786:	6174                	.insn	2, 0x6174
8000c788:	3e20                	.insn	2, 0x3e20
8000c78a:	203d                	.insn	2, 0x203d
8000c78c:	                	.insn	2, 0x6330

8000c78d <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.22>:
8000c78d:	65726f63          	bltu	tp,s7,8000cdeb <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x333>
8000c791:	6372732f          	.insn	4, 0x6372732f
8000c795:	6d756e2f          	.insn	4, 0x6d756e2f
8000c799:	7969642f          	.insn	4, 0x7969642f
8000c79d:	665f 6f6c 7461      	.insn	6, 0x74616f6c665f
8000c7a3:	722e                	.insn	2, 0x722e
8000c7a5:	          	.insn	4, 0x8d000073

8000c7a8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.23>:
8000c7a8:	c78d                	.insn	2, 0xc78d
8000c7aa:	8000                	.insn	2, 0x8000
8000c7ac:	0019                	.insn	2, 0x0019
8000c7ae:	0000                	.insn	2, 0x
8000c7b0:	004c                	.insn	2, 0x004c
8000c7b2:	0000                	.insn	2, 0x
8000c7b4:	0009                	.insn	2, 0x0009
	...

8000c7b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.24>:
8000c7b8:	c78d                	.insn	2, 0xc78d
8000c7ba:	8000                	.insn	2, 0x8000
8000c7bc:	0019                	.insn	2, 0x0019
8000c7be:	0000                	.insn	2, 0x
8000c7c0:	004e                	.insn	2, 0x004e
8000c7c2:	0000                	.insn	2, 0x
8000c7c4:	0009                	.insn	2, 0x0009
	...

8000c7c8 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h99816a37407431b1E>:
8000c7c8:	6fc1                	.insn	2, 0x6fc1
8000c7ca:	86f2                	.insn	2, 0x86f2
8000c7cc:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>

8000c7d0 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217he851a7b51f37758fE>:
8000c7d0:	ef81                	.insn	2, 0xef81
8000c7d2:	85ac                	.insn	2, 0x85ac
8000c7d4:	2d6d415b          	.insn	4, 0x2d6d415b
8000c7d8:	04ee                	.insn	2, 0x04ee
	...

8000c7dc <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417h3fd4a7811adefa4aE>:
8000c7dc:	1f01                	.insn	2, 0x1f01
8000c7de:	bf6a                	.insn	2, 0xbf6a
8000c7e0:	ed64                	.insn	2, 0xed64
8000c7e2:	6e38                	.insn	2, 0x6e38
8000c7e4:	97ed                	.insn	2, 0x97ed
8000c7e6:	f9f4daa7          	.insn	4, 0xf9f4daa7
8000c7ea:	4f03e93f  	.insn	8, 0x3e0100184f03e93f

8000c7f0 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E>:
8000c7f0:	3e01                	.insn	2, 0x3e01
8000c7f2:	2e95                	.insn	2, 0x2e95
8000c7f4:	9909                	.insn	2, 0x9909
8000c7f6:	03df 38fd 0f15      	.insn	6, 0x0f1538fd03df
8000c7fc:	2374e42f          	.insn	4, 0x2374e42f
8000c800:	f5ec                	.insn	2, 0xf5ec
8000c802:	dc08d3cf          	.insn	4, 0xdc08d3cf
8000c806:	c404                	.insn	2, 0xc404
8000c808:	b0da                	.insn	2, 0xb0da
8000c80a:	bccd                	.insn	2, 0xbccd
8000c80c:	7f19                	.insn	2, 0x7f19
8000c80e:	2603a633          	.insn	4, 0x2603a633
8000c812:	e91f 024e 0000      	.insn	6, 0x024ee91f

8000c818 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>:
8000c818:	7c01                	.insn	2, 0x7c01
8000c81a:	982e                	.insn	2, 0x982e
8000c81c:	bed3875b          	.insn	4, 0xbed3875b
8000c820:	9f72                	.insn	2, 0x9f72
8000c822:	d8d9                	.insn	2, 0xd8d9
8000c824:	12152f87          	.insn	4, 0x12152f87
8000c828:	50c6                	.insn	2, 0x50c6
8000c82a:	6bde                	.insn	2, 0x6bde
8000c82c:	6e70                	.insn	2, 0x6e70
8000c82e:	cf4a                	.insn	2, 0xcf4a
8000c830:	d595d80f          	.insn	4, 0xd595d80f
8000c834:	716e                	.insn	2, 0x716e
8000c836:	26b2                	.insn	2, 0x26b2
8000c838:	66b0                	.insn	2, 0x66b0
8000c83a:	adc6                	.insn	2, 0xadc6
8000c83c:	3624                	.insn	2, 0x3624
8000c83e:	1d15                	.insn	2, 0x1d15
8000c840:	d35a                	.insn	2, 0xd35a
8000c842:	3c42                	.insn	2, 0x3c42
8000c844:	540e                	.insn	2, 0x540e
8000c846:	63ff 73c0 cc55 ef17 	.insn	22, 0xf46eeddc80dcc7f755bc28f265f9ef17cc5573c063ff
8000c84e:	65f9 28f2 55bc c7f7 
8000c856:	80dc eddc f46e 
8000c85c:	efce                	.insn	2, 0xefce
8000c85e:	5fdc                	.insn	2, 0x5fdc
8000c860:	000553f7          	.insn	4, 0x000553f7

8000c864 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.25>:
8000c864:	65726f63          	bltu	tp,s7,8000cec2 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x40a>
8000c868:	6372732f          	.insn	4, 0x6372732f
8000c86c:	6d756e2f          	.insn	4, 0x6d756e2f
8000c870:	746c662f          	.insn	4, 0x746c662f
8000c874:	6432                	.insn	2, 0x6432
8000c876:	6365                	.insn	2, 0x6365
8000c878:	7274732f          	.insn	4, 0x7274732f
8000c87c:	7461                	.insn	2, 0x7461
8000c87e:	6765                	.insn	2, 0x6765
8000c880:	2f79                	.insn	2, 0x2f79
8000c882:	7264                	.insn	2, 0x7264
8000c884:	6761                	.insn	2, 0x6761
8000c886:	722e6e6f          	jal	t3,800f2fa8 <KALLOC_BUFFER+0xe2fa8>
8000c88a:	          	.insn	4, 0x73736173

8000c88b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>:
8000c88b:	7361                	.insn	2, 0x7361
8000c88d:	74726573          	.insn	4, 0x74726573
8000c891:	6f69                	.insn	2, 0x6f69
8000c893:	206e                	.insn	2, 0x206e
8000c895:	6166                	.insn	2, 0x6166
8000c897:	6c69                	.insn	2, 0x6c69
8000c899:	6465                	.insn	2, 0x6465
8000c89b:	203a                	.insn	2, 0x203a
8000c89d:	2e64                	.insn	2, 0x2e64
8000c89f:	616d                	.insn	2, 0x616d
8000c8a1:	746e                	.insn	2, 0x746e
8000c8a3:	3e20                	.insn	2, 0x3e20
8000c8a5:	3020                	.insn	2, 0x3020
	...

8000c8a8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.27>:
8000c8a8:	c864                	.insn	2, 0xc864
8000c8aa:	8000                	.insn	2, 0x8000
8000c8ac:	00000027          	.insn	4, 0x0027
8000c8b0:	0076                	.insn	2, 0x0076
8000c8b2:	0000                	.insn	2, 0x
8000c8b4:	0005                	.insn	2, 0x0005
	...

8000c8b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>:
8000c8b8:	7361                	.insn	2, 0x7361
8000c8ba:	74726573          	.insn	4, 0x74726573
8000c8be:	6f69                	.insn	2, 0x6f69
8000c8c0:	206e                	.insn	2, 0x206e
8000c8c2:	6166                	.insn	2, 0x6166
8000c8c4:	6c69                	.insn	2, 0x6c69
8000c8c6:	6465                	.insn	2, 0x6465
8000c8c8:	203a                	.insn	2, 0x203a
8000c8ca:	2e64                	.insn	2, 0x2e64
8000c8cc:	696d                	.insn	2, 0x696d
8000c8ce:	756e                	.insn	2, 0x756e
8000c8d0:	203e2073          	.insn	4, 0x203e2073
8000c8d4:	0030                	.insn	2, 0x0030
	...

8000c8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.29>:
8000c8d8:	c864                	.insn	2, 0xc864
8000c8da:	8000                	.insn	2, 0x8000
8000c8dc:	00000027          	.insn	4, 0x0027
8000c8e0:	00000077          	.insn	4, 0x0077
8000c8e4:	0005                	.insn	2, 0x0005
	...

8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>:
8000c8e8:	7361                	.insn	2, 0x7361
8000c8ea:	74726573          	.insn	4, 0x74726573
8000c8ee:	6f69                	.insn	2, 0x6f69
8000c8f0:	206e                	.insn	2, 0x206e
8000c8f2:	6166                	.insn	2, 0x6166
8000c8f4:	6c69                	.insn	2, 0x6c69
8000c8f6:	6465                	.insn	2, 0x6465
8000c8f8:	203a                	.insn	2, 0x203a
8000c8fa:	2e64                	.insn	2, 0x2e64
8000c8fc:	6c70                	.insn	2, 0x6c70
8000c8fe:	7375                	.insn	2, 0x7375
8000c900:	3e20                	.insn	2, 0x3e20
8000c902:	3020                	.insn	2, 0x3020

8000c904 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.31>:
8000c904:	c864                	.insn	2, 0xc864
8000c906:	8000                	.insn	2, 0x8000
8000c908:	00000027          	.insn	4, 0x0027
8000c90c:	0078                	.insn	2, 0x0078
8000c90e:	0000                	.insn	2, 0x
8000c910:	0005                	.insn	2, 0x0005
	...

8000c914 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>:
8000c914:	7361                	.insn	2, 0x7361
8000c916:	74726573          	.insn	4, 0x74726573
8000c91a:	6f69                	.insn	2, 0x6f69
8000c91c:	206e                	.insn	2, 0x206e
8000c91e:	6166                	.insn	2, 0x6166
8000c920:	6c69                	.insn	2, 0x6c69
8000c922:	6465                	.insn	2, 0x6465
8000c924:	203a                	.insn	2, 0x203a
8000c926:	7562                	.insn	2, 0x7562
8000c928:	2e66                	.insn	2, 0x2e66
8000c92a:	656c                	.insn	2, 0x656c
8000c92c:	286e                	.insn	2, 0x286e
8000c92e:	2029                	.insn	2, 0x2029
8000c930:	3d3e                	.insn	2, 0x3d3e
8000c932:	4d20                	.insn	2, 0x4d20
8000c934:	5841                	.insn	2, 0x5841
8000c936:	535f 4749 445f      	.insn	6, 0x445f4749535f
8000c93c:	4749                	.insn	2, 0x4749
8000c93e:	5449                	.insn	2, 0x5449
8000c940:	00000053          	.insn	4, 0x0053

8000c944 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33>:
8000c944:	c864                	.insn	2, 0xc864
8000c946:	8000                	.insn	2, 0x8000
8000c948:	00000027          	.insn	4, 0x0027
8000c94c:	0000007b          	.insn	4, 0x007b
8000c950:	0005                	.insn	2, 0x0005
	...

8000c954 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.34>:
8000c954:	c864                	.insn	2, 0xc864
8000c956:	8000                	.insn	2, 0x8000
8000c958:	00000027          	.insn	4, 0x0027
8000c95c:	00c2                	.insn	2, 0x00c2
8000c95e:	0000                	.insn	2, 0x
8000c960:	0009                	.insn	2, 0x0009
	...

8000c964 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.35>:
8000c964:	c864                	.insn	2, 0xc864
8000c966:	8000                	.insn	2, 0x8000
8000c968:	00000027          	.insn	4, 0x0027
8000c96c:	000000fb          	.insn	4, 0x00fb
8000c970:	000d                	.insn	2, 0x000d
	...

8000c974 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.36>:
8000c974:	c864                	.insn	2, 0xc864
8000c976:	8000                	.insn	2, 0x8000
8000c978:	00000027          	.insn	4, 0x0027
8000c97c:	0102                	.insn	2, 0x0102
8000c97e:	0000                	.insn	2, 0x
8000c980:	0036                	.insn	2, 0x0036
	...

8000c984 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>:
8000c984:	7361                	.insn	2, 0x7361
8000c986:	74726573          	.insn	4, 0x74726573
8000c98a:	6f69                	.insn	2, 0x6f69
8000c98c:	206e                	.insn	2, 0x206e
8000c98e:	6166                	.insn	2, 0x6166
8000c990:	6c69                	.insn	2, 0x6c69
8000c992:	6465                	.insn	2, 0x6465
8000c994:	203a                	.insn	2, 0x203a
8000c996:	2e64                	.insn	2, 0x2e64
8000c998:	616d                	.insn	2, 0x616d
8000c99a:	746e                	.insn	2, 0x746e
8000c99c:	632e                	.insn	2, 0x632e
8000c99e:	6568                	.insn	2, 0x6568
8000c9a0:	64656b63          	bltu	a0,t1,8000cff6 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52+0x6>
8000c9a4:	735f 6275 6428      	.insn	6, 0x64286275735f
8000c9aa:	6d2e                	.insn	2, 0x6d2e
8000c9ac:	6e69                	.insn	2, 0x6e69
8000c9ae:	7375                	.insn	2, 0x7375
8000c9b0:	2e29                	.insn	2, 0x2e29
8000c9b2:	7369                	.insn	2, 0x7369
8000c9b4:	735f 6d6f 2865      	.insn	6, 0x28656d6f735f
8000c9ba:	0029                	.insn	2, 0x0029

8000c9bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.38>:
8000c9bc:	c864                	.insn	2, 0xc864
8000c9be:	8000                	.insn	2, 0x8000
8000c9c0:	00000027          	.insn	4, 0x0027
8000c9c4:	007a                	.insn	2, 0x007a
8000c9c6:	0000                	.insn	2, 0x
8000c9c8:	0005                	.insn	2, 0x0005
	...

8000c9cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>:
8000c9cc:	7361                	.insn	2, 0x7361
8000c9ce:	74726573          	.insn	4, 0x74726573
8000c9d2:	6f69                	.insn	2, 0x6f69
8000c9d4:	206e                	.insn	2, 0x206e
8000c9d6:	6166                	.insn	2, 0x6166
8000c9d8:	6c69                	.insn	2, 0x6c69
8000c9da:	6465                	.insn	2, 0x6465
8000c9dc:	203a                	.insn	2, 0x203a
8000c9de:	2e64                	.insn	2, 0x2e64
8000c9e0:	616d                	.insn	2, 0x616d
8000c9e2:	746e                	.insn	2, 0x746e
8000c9e4:	632e                	.insn	2, 0x632e
8000c9e6:	6568                	.insn	2, 0x6568
8000c9e8:	64656b63          	bltu	a0,t1,8000d03e <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.56+0xe>
8000c9ec:	615f 6464 6428      	.insn	6, 0x64286464615f
8000c9f2:	702e                	.insn	2, 0x702e
8000c9f4:	756c                	.insn	2, 0x756c
8000c9f6:	692e2973          	.insn	4, 0x692e2973
8000c9fa:	6f735f73          	.insn	4, 0x6f735f73
8000c9fe:	656d                	.insn	2, 0x656d
8000ca00:	2928                	.insn	2, 0x2928
	...

8000ca04 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.40>:
8000ca04:	c864                	.insn	2, 0xc864
8000ca06:	8000                	.insn	2, 0x8000
8000ca08:	00000027          	.insn	4, 0x0027
8000ca0c:	0079                	.insn	2, 0x0079
8000ca0e:	0000                	.insn	2, 0x
8000ca10:	0005                	.insn	2, 0x0005
	...

8000ca14 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.41>:
8000ca14:	c864                	.insn	2, 0xc864
8000ca16:	8000                	.insn	2, 0x8000
8000ca18:	00000027          	.insn	4, 0x0027
8000ca1c:	0000010b          	.insn	4, 0x010b
8000ca20:	0005                	.insn	2, 0x0005
	...

8000ca24 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.42>:
8000ca24:	c864                	.insn	2, 0xc864
8000ca26:	8000                	.insn	2, 0x8000
8000ca28:	00000027          	.insn	4, 0x0027
8000ca2c:	010c                	.insn	2, 0x010c
8000ca2e:	0000                	.insn	2, 0x
8000ca30:	0005                	.insn	2, 0x0005
	...

8000ca34 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.43>:
8000ca34:	c864                	.insn	2, 0xc864
8000ca36:	8000                	.insn	2, 0x8000
8000ca38:	00000027          	.insn	4, 0x0027
8000ca3c:	010d                	.insn	2, 0x010d
8000ca3e:	0000                	.insn	2, 0x
8000ca40:	0005                	.insn	2, 0x0005
	...

8000ca44 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.44>:
8000ca44:	c864                	.insn	2, 0xc864
8000ca46:	8000                	.insn	2, 0x8000
8000ca48:	00000027          	.insn	4, 0x0027
8000ca4c:	0172                	.insn	2, 0x0172
8000ca4e:	0000                	.insn	2, 0x
8000ca50:	0024                	.insn	2, 0x0024
	...

8000ca54 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.45>:
8000ca54:	c864                	.insn	2, 0xc864
8000ca56:	8000                	.insn	2, 0x8000
8000ca58:	00000027          	.insn	4, 0x0027
8000ca5c:	00000177          	.insn	4, 0x0177
8000ca60:	00000057          	.insn	4, 0x0057

8000ca64 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46>:
8000ca64:	c864                	.insn	2, 0xc864
8000ca66:	8000                	.insn	2, 0x8000
8000ca68:	00000027          	.insn	4, 0x0027
8000ca6c:	0184                	.insn	2, 0x0184
8000ca6e:	0000                	.insn	2, 0x
8000ca70:	0036                	.insn	2, 0x0036
	...

8000ca74 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.47>:
8000ca74:	c864                	.insn	2, 0xc864
8000ca76:	8000                	.insn	2, 0x8000
8000ca78:	00000027          	.insn	4, 0x0027
8000ca7c:	0166                	.insn	2, 0x0166
8000ca7e:	0000                	.insn	2, 0x
8000ca80:	000d                	.insn	2, 0x000d
	...

8000ca84 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.48>:
8000ca84:	c864                	.insn	2, 0xc864
8000ca86:	8000                	.insn	2, 0x8000
8000ca88:	00000027          	.insn	4, 0x0027
8000ca8c:	014c                	.insn	2, 0x014c
8000ca8e:	0000                	.insn	2, 0x
8000ca90:	0022                	.insn	2, 0x0022
	...

8000ca94 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.49>:
8000ca94:	c864                	.insn	2, 0xc864
8000ca96:	8000                	.insn	2, 0x8000
8000ca98:	00000027          	.insn	4, 0x0027
8000ca9c:	0000010f          	.insn	4, 0x010f
8000caa0:	0005                	.insn	2, 0x0005
	...

8000caa4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.50>:
8000caa4:	c864                	.insn	2, 0xc864
8000caa6:	8000                	.insn	2, 0x8000
8000caa8:	00000027          	.insn	4, 0x0027
8000caac:	010e                	.insn	2, 0x010e
8000caae:	0000                	.insn	2, 0x
8000cab0:	0005                	.insn	2, 0x0005
8000cab2:	0000                	.insn	2, 0x
8000cab4:	0000                	.insn	2, 0x
	...

8000cab8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>:
8000cab8:	45df 3d1a cf03      	.insn	6, 0xcf033d1a45df
8000cabe:	e61a                	.insn	2, 0xe61a
8000cac0:	fbc1                	.insn	2, 0xfbc1
8000cac2:	fecc                	.insn	2, 0xfecc
8000cac4:	0000                	.insn	2, 0x
8000cac6:	0000                	.insn	2, 0x
8000cac8:	c6ca                	.insn	2, 0xc6ca
8000caca:	c79a                	.insn	2, 0xc79a
8000cacc:	ab70fe17          	auipc	t3,0xab70f
8000cad0:	fbdc                	.insn	2, 0xfbdc
8000cad2:	fed4                	.insn	2, 0xfed4
8000cad4:	0000                	.insn	2, 0x
8000cad6:	0000                	.insn	2, 0x
8000cad8:	bebcdc4f          	.insn	4, 0xbebcdc4f
8000cadc:	b1fc                	.insn	2, 0xb1fc
8000cade:	fbf6ff77          	.insn	4, 0xfbf6ff77
8000cae2:	fedc                	.insn	2, 0xfedc
8000cae4:	0000                	.insn	2, 0x
8000cae6:	0000                	.insn	2, 0x
8000cae8:	d60c                	.insn	2, 0xd60c
8000caea:	91ef416b          	.insn	4, 0x91ef416b
8000caee:	be56                	.insn	2, 0xbe56
8000caf0:	fc11                	.insn	2, 0xfc11
8000caf2:	fee4                	.insn	2, 0xfee4
8000caf4:	0000                	.insn	2, 0x
8000caf6:	0000                	.insn	2, 0x
8000caf8:	fc3c                	.insn	2, 0xfc3c
8000cafa:	1fad907f fc2c8dd0 	.insn	12, 0xfeecfc2c8dd01fad907f
8000cb02:	0000feec 
8000cb06:	0000                	.insn	2, 0x
8000cb08:	31559a83          	lh	s5,789(a1)
8000cb0c:	5c28                	.insn	2, 0x5c28
8000cb0e:	d351                	.insn	2, 0xd351
8000cb10:	fc46                	.insn	2, 0xfc46
8000cb12:	fef4                	.insn	2, 0xfef4
8000cb14:	0000                	.insn	2, 0x
8000cb16:	0000                	.insn	2, 0x
8000cb18:	c9b5                	.insn	2, 0xc9b5
8000cb1a:	ada6                	.insn	2, 0xada6
8000cb1c:	9d71ac8f          	.insn	4, 0x9d71ac8f
8000cb20:	fc61                	.insn	2, 0xfc61
8000cb22:	fefc                	.insn	2, 0xfefc
8000cb24:	0000                	.insn	2, 0x
8000cb26:	0000                	.insn	2, 0x
8000cb28:	23ee8bcb          	.insn	4, 0x23ee8bcb
8000cb2c:	ea9c2277          	.insn	4, 0xea9c2277
8000cb30:	ff04fc7b          	.insn	4, 0xff04fc7b
8000cb34:	0000                	.insn	2, 0x
8000cb36:	0000                	.insn	2, 0x
8000cb38:	536d                	.insn	2, 0x536d
8000cb3a:	4078                	.insn	2, 0x4078
8000cb3c:	4991                	.insn	2, 0x4991
8000cb3e:	aecc                	.insn	2, 0xaecc
8000cb40:	fc96                	.insn	2, 0xfc96
8000cb42:	ff0c                	.insn	2, 0xff0c
8000cb44:	0000                	.insn	2, 0x
8000cb46:	0000                	.insn	2, 0x
8000cb48:	5db6ce57          	.insn	4, 0x5db6ce57
8000cb4c:	1279                	.insn	2, 0x1279
8000cb4e:	823c                	.insn	2, 0x823c
8000cb50:	fcb1                	.insn	2, 0xfcb1
8000cb52:	ff14                	.insn	2, 0xff14
8000cb54:	0000                	.insn	2, 0x
8000cb56:	0000                	.insn	2, 0x
8000cb58:	4dfb5637          	lui	a2,0x4dfb5
8000cb5c:	9436                	.insn	2, 0x9436
8000cb5e:	c210                	.insn	2, 0xc210
8000cb60:	ff1cfccb          	.insn	4, 0xff1cfccb
8000cb64:	0000                	.insn	2, 0x
8000cb66:	0000                	.insn	2, 0x
8000cb68:	3848984f          	.insn	4, 0x3848984f
8000cb6c:	9096ea6f          	jal	s4,7ff7b474 <.Lline_table_start2+0x7ff7a0c6>
8000cb70:	fce6                	.insn	2, 0xfce6
8000cb72:	ff24                	.insn	2, 0xff24
8000cb74:	0000                	.insn	2, 0x
8000cb76:	0000                	.insn	2, 0x
8000cb78:	25823ac7          	.insn	4, 0x25823ac7
8000cb7c:	d77485cb          	.insn	4, 0xd77485cb
8000cb80:	fd00                	.insn	2, 0xfd00
8000cb82:	ff2c                	.insn	2, 0xff2c
8000cb84:	0000                	.insn	2, 0x
8000cb86:	0000                	.insn	2, 0x
8000cb88:	97f4                	.insn	2, 0x97f4
8000cb8a:	cfcd97bf fd1ba086 	.insn	8, 0xfd1ba086cfcd97bf
8000cb92:	ff34                	.insn	2, 0xff34
8000cb94:	0000                	.insn	2, 0x
8000cb96:	0000                	.insn	2, 0x
8000cb98:	ace5                	.insn	2, 0xace5
8000cb9a:	172a                	.insn	2, 0x172a
8000cb9c:	0a98                	.insn	2, 0x0a98
8000cb9e:	ef34                	.insn	2, 0xef34
8000cba0:	fd35                	.insn	2, 0xfd35
8000cba2:	ff3c                	.insn	2, 0xff3c
8000cba4:	0000                	.insn	2, 0x
8000cba6:	0000                	.insn	2, 0x
8000cba8:	b28e                	.insn	2, 0xb28e
8000cbaa:	2a35                	.insn	2, 0x2a35
8000cbac:	b23867fb          	.insn	4, 0xb23867fb
8000cbb0:	fd50                	.insn	2, 0xfd50
8000cbb2:	ff44                	.insn	2, 0xff44
8000cbb4:	0000                	.insn	2, 0x
8000cbb6:	0000                	.insn	2, 0x
8000cbb8:	d2c63f3b          	.insn	4, 0xd2c63f3b
8000cbbc:	d4df 84c8 fd6b      	.insn	6, 0xfd6b84c8d4df
8000cbc2:	ff4c                	.insn	2, 0xff4c
8000cbc4:	0000                	.insn	2, 0x
8000cbc6:	0000                	.insn	2, 0x
8000cbc8:	cdba                	.insn	2, 0xcdba
8000cbca:	44271ad3          	.insn	4, 0x44271ad3
8000cbce:	c5dd                	.insn	2, 0xc5dd
8000cbd0:	fd85                	.insn	2, 0xfd85
8000cbd2:	ff54                	.insn	2, 0xff54
8000cbd4:	0000                	.insn	2, 0x
8000cbd6:	0000                	.insn	2, 0x
8000cbd8:	c996                	.insn	2, 0xc996
8000cbda:	bb25                	.insn	2, 0xbb25
8000cbdc:	9fce                	.insn	2, 0x9fce
8000cbde:	fda0936b          	.insn	4, 0xfda0936b
8000cbe2:	ff5c                	.insn	2, 0xff5c
8000cbe4:	0000                	.insn	2, 0x
8000cbe6:	0000                	.insn	2, 0x
8000cbe8:	a584                	.insn	2, 0xa584
8000cbea:	7d62                	.insn	2, 0x7d62
8000cbec:	6c24                	.insn	2, 0x6c24
8000cbee:	dbac                	.insn	2, 0xdbac
8000cbf0:	fdba                	.insn	2, 0xfdba
8000cbf2:	ff64                	.insn	2, 0xff64
8000cbf4:	0000                	.insn	2, 0x
8000cbf6:	0000                	.insn	2, 0x
8000cbf8:	daf6                	.insn	2, 0xdaf6
8000cbfa:	0d5f 6658 a3ab      	.insn	6, 0xa3ab66580d5f
8000cc00:	fdd5                	.insn	2, 0xfdd5
8000cc02:	ff6c                	.insn	2, 0xff6c
8000cc04:	0000                	.insn	2, 0x
8000cc06:	0000                	.insn	2, 0x
8000cc08:	f126                	.insn	2, 0xf126
8000cc0a:	f893dec3          	.insn	4, 0xf893dec3
8000cc0e:	f3e2                	.insn	2, 0xf3e2
8000cc10:	ff74fdef          	jal	s11,7ff5cc06 <.Lline_table_start2+0x7ff5b858>
8000cc14:	0000                	.insn	2, 0x
8000cc16:	0000                	.insn	2, 0x
8000cc18:	80b8                	.insn	2, 0x80b8
8000cc1a:	aaff ada8 b5b5 fe0a 	.insn	14, 0xff7cfe0ab5b5ada8aaff
8000cc22:	ff7c 0000 0000 
8000cc28:	6c7c4a8b          	.insn	4, 0x6c7c4a8b
8000cc2c:	5f05                	.insn	2, 0x5f05
8000cc2e:	8762                	.insn	2, 0x8762
8000cc30:	fe25                	.insn	2, 0xfe25
8000cc32:	ff84                	.insn	2, 0xff84
8000cc34:	0000                	.insn	2, 0x
8000cc36:	0000                	.insn	2, 0x
8000cc38:	34c13053          	.insn	4, 0x34c13053
8000cc3c:	ff60                	.insn	2, 0xff60
8000cc3e:	c9bc                	.insn	2, 0xc9bc
8000cc40:	ff8cfe3f 00000000 	.insn	8, 0xff8cfe3f
8000cc48:	2655                	.insn	2, 0x2655
8000cc4a:	91ba                	.insn	2, 0x91ba
8000cc4c:	858c                	.insn	2, 0x858c
8000cc4e:	964e                	.insn	2, 0x964e
8000cc50:	fe5a                	.insn	2, 0xfe5a
8000cc52:	ff94                	.insn	2, 0xff94
8000cc54:	0000                	.insn	2, 0x
8000cc56:	0000                	.insn	2, 0x
8000cc58:	7ebd                	.insn	2, 0x7ebd
8000cc5a:	7029                	.insn	2, 0x7029
8000cc5c:	7724                	.insn	2, 0x7724
8000cc5e:	dff9                	.insn	2, 0xdff9
8000cc60:	fe74                	.insn	2, 0xfe74
8000cc62:	ff9c                	.insn	2, 0xff9c
8000cc64:	0000                	.insn	2, 0x
8000cc66:	0000                	.insn	2, 0x
8000cc68:	b8e5b88f          	.insn	4, 0xb8e5b88f
8000cc6c:	bd9f a6df fe8f      	.insn	6, 0xfe8fa6dfbd9f
8000cc72:	ffa4                	.insn	2, 0xffa4
8000cc74:	0000                	.insn	2, 0x
8000cc76:	0000                	.insn	2, 0x
8000cc78:	7d94                	.insn	2, 0x7d94
8000cc7a:	8874                	.insn	2, 0x8874
8000cc7c:	f8a95fcf          	.insn	4, 0xf8a95fcf
8000cc80:	fea9                	.insn	2, 0xfea9
8000cc82:	ffac                	.insn	2, 0xffac
8000cc84:	0000                	.insn	2, 0x
8000cc86:	0000                	.insn	2, 0x
8000cc88:	8fa89bcf          	.insn	4, 0x8fa89bcf
8000cc8c:	b9447093          	andi	ra,s0,-1132
8000cc90:	fec4                	.insn	2, 0xfec4
8000cc92:	ffb4                	.insn	2, 0xffb4
8000cc94:	0000                	.insn	2, 0x
8000cc96:	0000                	.insn	2, 0x
8000cc98:	bf0f156b          	.insn	4, 0xbf0f156b
8000cc9c:	f0f8                	.insn	2, 0xf0f8
8000cc9e:	8a08                	.insn	2, 0x8a08
8000cca0:	fedf ffbc 0000      	.insn	6, 0xffbcfedf
8000cca6:	0000                	.insn	2, 0x
8000cca8:	31b6                	.insn	2, 0x31b6
8000ccaa:	6531                	.insn	2, 0x6531
8000ccac:	2555                	.insn	2, 0x2555
8000ccae:	cdb0                	.insn	2, 0xcdb0
8000ccb0:	fef9                	.insn	2, 0xfef9
8000ccb2:	ffc4                	.insn	2, 0xffc4
8000ccb4:	0000                	.insn	2, 0x
8000ccb6:	0000                	.insn	2, 0x
8000ccb8:	7fac                	.insn	2, 0x7fac
8000ccba:	e2c6d07b          	.insn	4, 0xe2c6d07b
8000ccbe:	ff14993f 0000ffcc 	.insn	8, 0xffccff14993f
8000ccc6:	0000                	.insn	2, 0x
8000ccc8:	3b06                	.insn	2, 0x3b06
8000ccca:	10c42a2b          	.insn	4, 0x10c42a2b
8000ccce:	e45c                	.insn	2, 0xe45c
8000ccd0:	ff2e                	.insn	2, 0xff2e
8000ccd2:	ffd4                	.insn	2, 0xffd4
8000ccd4:	0000                	.insn	2, 0x
8000ccd6:	0000                	.insn	2, 0x
8000ccd8:	697392d3          	.insn	4, 0x697392d3
8000ccdc:	2499                	.insn	2, 0x2499
8000ccde:	aa24                	.insn	2, 0xaa24
8000cce0:	ff49                	.insn	2, 0xff49
8000cce2:	ffdc                	.insn	2, 0xffdc
8000cce4:	0000                	.insn	2, 0x
8000cce6:	0000                	.insn	2, 0x
8000cce8:	ca0e                	.insn	2, 0xca0e
8000ccea:	8300                	.insn	2, 0x8300
8000ccec:	b5f2                	.insn	2, 0xb5f2
8000ccee:	ff63fd87          	.insn	4, 0xff63fd87
8000ccf2:	ffe4                	.insn	2, 0xffe4
8000ccf4:	0000                	.insn	2, 0x
8000ccf6:	0000                	.insn	2, 0x
8000ccf8:	92111aeb          	.insn	4, 0x92111aeb
8000ccfc:	0864                	.insn	2, 0x0864
8000ccfe:	bce5                	.insn	2, 0xbce5
8000cd00:	ff7e                	.insn	2, 0xff7e
8000cd02:	ffec                	.insn	2, 0xffec
8000cd04:	0000                	.insn	2, 0x
8000cd06:	0000                	.insn	2, 0x
8000cd08:	88cc                	.insn	2, 0x88cc
8000cd0a:	6f50                	.insn	2, 0x6f50
8000cd0c:	cc09                	.insn	2, 0xcc09
8000cd0e:	8cbc                	.insn	2, 0x8cbc
8000cd10:	ff99                	.insn	2, 0xff99
8000cd12:	fff4                	.insn	2, 0xfff4
8000cd14:	0000                	.insn	2, 0x
8000cd16:	0000                	.insn	2, 0x
8000cd18:	652c                	.insn	2, 0x652c
8000cd1a:	e219                	.insn	2, 0xe219
8000cd1c:	1758                	.insn	2, 0x1758
8000cd1e:	ffb3d1b7          	lui	gp,0xffb3d
8000cd22:	fffc                	.insn	2, 0xfffc
	...
8000cd2c:	0000                	.insn	2, 0x
8000cd2e:	9c40                	.insn	2, 0x9c40
8000cd30:	ffce                	.insn	2, 0xffce
8000cd32:	0004                	.insn	2, 0x0004
	...
8000cd3c:	a510                	.insn	2, 0xa510
8000cd3e:	e8d4                	.insn	2, 0xe8d4
8000cd40:	ffe8                	.insn	2, 0xffe8
8000cd42:	000c                	.insn	2, 0x000c
8000cd44:	0000                	.insn	2, 0x
8000cd46:	0000                	.insn	2, 0x
8000cd48:	0000                	.insn	2, 0x
8000cd4a:	ac62                	.insn	2, 0xac62
8000cd4c:	ebc5                	.insn	2, 0xebc5
8000cd4e:	ad78                	.insn	2, 0xad78
8000cd50:	00140003          	lb	zero,1(s0)
8000cd54:	0000                	.insn	2, 0x
8000cd56:	0000                	.insn	2, 0x
8000cd58:	0984                	.insn	2, 0x0984
8000cd5a:	f894                	.insn	2, 0xf894
8000cd5c:	3978                	.insn	2, 0x3978
8000cd5e:	001e813f 0000001c 	.insn	8, 0x001c001e813f
8000cd66:	0000                	.insn	2, 0x
8000cd68:	c90715b3          	.insn	4, 0xc90715b3
8000cd6c:	c097ce7b          	.insn	4, 0xc097ce7b
8000cd70:	0038                	.insn	2, 0x0038
8000cd72:	0024                	.insn	2, 0x0024
8000cd74:	0000                	.insn	2, 0x
8000cd76:	0000                	.insn	2, 0x
8000cd78:	5c70                	.insn	2, 0x5c70
8000cd7a:	7bea                	.insn	2, 0x7bea
8000cd7c:	32ce                	.insn	2, 0x32ce
8000cd7e:	8f7e                	.insn	2, 0x8f7e
8000cd80:	002c0053          	.insn	4, 0x002c0053
8000cd84:	0000                	.insn	2, 0x
8000cd86:	0000                	.insn	2, 0x
8000cd88:	8068                	.insn	2, 0x8068
8000cd8a:	abe9                	.insn	2, 0xabe9
8000cd8c:	38a4                	.insn	2, 0x38a4
8000cd8e:	d5d2                	.insn	2, 0xd5d2
8000cd90:	006d                	.insn	2, 0x006d
8000cd92:	0034                	.insn	2, 0x0034
8000cd94:	0000                	.insn	2, 0x
8000cd96:	0000                	.insn	2, 0x
8000cd98:	2245                	.insn	2, 0x2245
8000cd9a:	179a                	.insn	2, 0x179a
8000cd9c:	2726                	.insn	2, 0x2726
8000cd9e:	00889f4f          	.insn	4, 0x00889f4f
8000cda2:	003c                	.insn	2, 0x003c
8000cda4:	0000                	.insn	2, 0x
8000cda6:	0000                	.insn	2, 0x
8000cda8:	d4c4fb27          	.insn	4, 0xd4c4fb27
8000cdac:	a231                	.insn	2, 0xa231
8000cdae:	00a2ed63          	bltu	t0,a0,8000cdc8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x310>
8000cdb2:	0044                	.insn	2, 0x0044
8000cdb4:	0000                	.insn	2, 0x
8000cdb6:	0000                	.insn	2, 0x
8000cdb8:	ada8                	.insn	2, 0xada8
8000cdba:	8cc8                	.insn	2, 0x8cc8
8000cdbc:	6538                	.insn	2, 0x6538
8000cdbe:	b0de                	.insn	2, 0xb0de
8000cdc0:	00bd                	.insn	2, 0x00bd
8000cdc2:	004c                	.insn	2, 0x004c
8000cdc4:	0000                	.insn	2, 0x
8000cdc6:	0000                	.insn	2, 0x
8000cdc8:	1aab65db          	.insn	4, 0x1aab65db
8000cdcc:	088e                	.insn	2, 0x088e
8000cdce:	00d883c7          	.insn	4, 0x00d883c7
8000cdd2:	0054                	.insn	2, 0x0054
8000cdd4:	0000                	.insn	2, 0x
8000cdd6:	0000                	.insn	2, 0x
8000cdd8:	1d9a                	.insn	2, 0x1d9a
8000cdda:	4271                	.insn	2, 0x4271
8000cddc:	1df9                	.insn	2, 0x1df9
8000cdde:	c45d                	.insn	2, 0xc45d
8000cde0:	00f2                	.insn	2, 0x00f2
8000cde2:	005c                	.insn	2, 0x005c
8000cde4:	0000                	.insn	2, 0x
8000cde6:	0000                	.insn	2, 0x
8000cde8:	e758                	.insn	2, 0xe758
8000cdea:	692ca61b          	.insn	4, 0x692ca61b
8000cdee:	924d                	.insn	2, 0x924d
8000cdf0:	010d                	.insn	2, 0x010d
8000cdf2:	0064                	.insn	2, 0x0064
8000cdf4:	0000                	.insn	2, 0x
8000cdf6:	0000                	.insn	2, 0x
8000cdf8:	8dea                	.insn	2, 0x8dea
8000cdfa:	1a70                	.insn	2, 0x1a70
8000cdfc:	ee64                	.insn	2, 0xee64
8000cdfe:	da01                	.insn	2, 0xda01
8000ce00:	006c0127          	.insn	4, 0x006c0127
8000ce04:	0000                	.insn	2, 0x
8000ce06:	0000                	.insn	2, 0x
8000ce08:	774a                	.insn	2, 0x774a
8000ce0a:	a3999aef          	jal	s5,7ffa6842 <.Lline_table_start2+0x7ffa5494>
8000ce0e:	a26d                	.insn	2, 0xa26d
8000ce10:	0142                	.insn	2, 0x0142
8000ce12:	0074                	.insn	2, 0x0074
8000ce14:	0000                	.insn	2, 0x
8000ce16:	0000                	.insn	2, 0x
8000ce18:	6b85                	.insn	2, 0x6b85
8000ce1a:	b47d                	.insn	2, 0xb47d
8000ce1c:	f209787b          	.insn	4, 0xf209787b
8000ce20:	015c                	.insn	2, 0x015c
8000ce22:	007c                	.insn	2, 0x007c
8000ce24:	0000                	.insn	2, 0x
8000ce26:	0000                	.insn	2, 0x
8000ce28:	79dd1877          	.insn	4, 0x79dd1877
8000ce2c:	e4a1                	.insn	2, 0xe4a1
8000ce2e:	b454                	.insn	2, 0xb454
8000ce30:	00840177          	.insn	4, 0x00840177
8000ce34:	0000                	.insn	2, 0x
8000ce36:	0000                	.insn	2, 0x
8000ce38:	c5c2                	.insn	2, 0xc5c2
8000ce3a:	86925b9b          	.insn	4, 0x86925b9b
8000ce3e:	0192865b          	.insn	4, 0x0192865b
8000ce42:	008c                	.insn	2, 0x008c
8000ce44:	0000                	.insn	2, 0x
8000ce46:	0000                	.insn	2, 0x
8000ce48:	5d3d                	.insn	2, 0x5d3d
8000ce4a:	c896                	.insn	2, 0xc896
8000ce4c:	53c5                	.insn	2, 0x53c5
8000ce4e:	c835                	.insn	2, 0xc835
8000ce50:	01ac                	.insn	2, 0x01ac
8000ce52:	0094                	.insn	2, 0x0094
8000ce54:	0000                	.insn	2, 0x
8000ce56:	0000                	.insn	2, 0x
8000ce58:	fa97a0b3          	.insn	4, 0xfa97a0b3
8000ce5c:	b45c                	.insn	2, 0xb45c
8000ce5e:	952a                	.insn	2, 0x952a
8000ce60:	009c01c7          	.insn	4, 0x009c01c7
8000ce64:	0000                	.insn	2, 0x
8000ce66:	0000                	.insn	2, 0x
8000ce68:	99a05fe3          	blez	s10,8000c806 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E+0x16>
8000ce6c:	9fbd                	.insn	2, 0x9fbd
8000ce6e:	de46                	.insn	2, 0xde46
8000ce70:	01e1                	.insn	2, 0x01e1
8000ce72:	00a4                	.insn	2, 0x00a4
8000ce74:	0000                	.insn	2, 0x
8000ce76:	0000                	.insn	2, 0x
8000ce78:	8c25                	.insn	2, 0x8c25
8000ce7a:	db39                	.insn	2, 0xdb39
8000ce7c:	c234                	.insn	2, 0xc234
8000ce7e:	01fca59b          	.insn	4, 0x01fca59b
8000ce82:	00ac                	.insn	2, 0x00ac
8000ce84:	0000                	.insn	2, 0x
8000ce86:	0000                	.insn	2, 0x
8000ce88:	9f5c                	.insn	2, 0x9f5c
8000ce8a:	a398                	.insn	2, 0xa398
8000ce8c:	9a72                	.insn	2, 0x9a72
8000ce8e:	f6c6                	.insn	2, 0xf6c6
8000ce90:	0216                	.insn	2, 0x0216
8000ce92:	00b4                	.insn	2, 0x00b4
8000ce94:	0000                	.insn	2, 0x
8000ce96:	0000                	.insn	2, 0x
8000ce98:	bece                	.insn	2, 0xbece
8000ce9a:	54e9                	.insn	2, 0x54e9
8000ce9c:	b7dcbf53          	.insn	4, 0xb7dcbf53
8000cea0:	0231                	.insn	2, 0x0231
8000cea2:	00bc                	.insn	2, 0x00bc
8000cea4:	0000                	.insn	2, 0x
8000cea6:	0000                	.insn	2, 0x
8000cea8:	41e2                	.insn	2, 0x41e2
8000ceaa:	f222                	.insn	2, 0xf222
8000ceac:	88fcf317          	auipc	t1,0x88fcf
8000ceb0:	024c                	.insn	2, 0x024c
8000ceb2:	00c4                	.insn	2, 0x00c4
8000ceb4:	0000                	.insn	2, 0x
8000ceb6:	0000                	.insn	2, 0x
8000ceb8:	78a5                	.insn	2, 0x78a5
8000ceba:	d35c                	.insn	2, 0xd35c
8000cebc:	cc20ce9b          	.insn	4, 0xcc20ce9b
8000cec0:	0266                	.insn	2, 0x0266
8000cec2:	00cc                	.insn	2, 0x00cc
8000cec4:	0000                	.insn	2, 0x
8000cec6:	0000                	.insn	2, 0x
8000cec8:	53df 7b21 5af3      	.insn	6, 0x5af37b2153df
8000cece:	9816                	.insn	2, 0x9816
8000ced0:	0281                	.insn	2, 0x0281
8000ced2:	00d4                	.insn	2, 0x00d4
8000ced4:	0000                	.insn	2, 0x
8000ced6:	0000                	.insn	2, 0x
8000ced8:	303a                	.insn	2, 0x303a
8000ceda:	971f b5dc e2a0      	.insn	6, 0xe2a0b5dc971f
8000cee0:	00dc029b          	.insn	4, 0x00dc029b
8000cee4:	0000                	.insn	2, 0x
8000cee6:	0000                	.insn	2, 0x
8000cee8:	b396                	.insn	2, 0xb396
8000ceea:	d1535ce3          	bge	t1,s5,8000cc02 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x14a>
8000ceee:	a8d9                	.insn	2, 0xa8d9
8000cef0:	02b6                	.insn	2, 0x02b6
8000cef2:	00e4                	.insn	2, 0x00e4
8000cef4:	0000                	.insn	2, 0x
8000cef6:	0000                	.insn	2, 0x
8000cef8:	443c                	.insn	2, 0x443c
8000cefa:	7cd9a4a7          	.insn	4, 0x7cd9a4a7
8000cefe:	02d0fb9b          	.insn	4, 0x02d0fb9b
8000cf02:	00ec                	.insn	2, 0x00ec
8000cf04:	0000                	.insn	2, 0x
8000cf06:	0000                	.insn	2, 0x
8000cf08:	4410                	.insn	2, 0x4410
8000cf0a:	a7a4                	.insn	2, 0xa7a4
8000cf0c:	4c4c                	.insn	2, 0x4c4c
8000cf0e:	bb76                	.insn	2, 0xbb76
8000cf10:	00f402eb          	.insn	4, 0x00f402eb
8000cf14:	0000                	.insn	2, 0x
8000cf16:	0000                	.insn	2, 0x
8000cf18:	9c1a                	.insn	2, 0x9c1a
8000cf1a:	b640                	.insn	2, 0xb640
8000cf1c:	8bab8eef          	jal	t4,7ffc4fd6 <.Lline_table_start2+0x7ffc3c28>
8000cf20:	0306                	.insn	2, 0x0306
8000cf22:	00fc                	.insn	2, 0x00fc
8000cf24:	0000                	.insn	2, 0x
8000cf26:	0000                	.insn	2, 0x
8000cf28:	842c                	.insn	2, 0x842c
8000cf2a:	ef10a657          	.insn	4, 0xef10a657
8000cf2e:	d01f 0320 0104      	.insn	6, 0x01040320d01f
8000cf34:	0000                	.insn	2, 0x
8000cf36:	0000                	.insn	2, 0x
8000cf38:	3129                	.insn	2, 0x3129
8000cf3a:	e991                	.insn	2, 0xe991
8000cf3c:	a4e5                	.insn	2, 0xa4e5
8000cf3e:	9b10                	.insn	2, 0x9b10
8000cf40:	010c033b          	.insn	4, 0x010c033b
8000cf44:	0000                	.insn	2, 0x
8000cf46:	0000                	.insn	2, 0x
8000cf48:	0c9d                	.insn	2, 0x0c9d
8000cf4a:	a19c                	.insn	2, 0xa19c
8000cf4c:	e7109bfb          	.insn	4, 0xe7109bfb
8000cf50:	0355                	.insn	2, 0x0355
8000cf52:	0114                	.insn	2, 0x0114
8000cf54:	0000                	.insn	2, 0x
8000cf56:	0000                	.insn	2, 0x
8000cf58:	f429                	.insn	2, 0xf429
8000cf5a:	20d9623b          	.insn	4, 0x20d9623b
8000cf5e:	ac28                	.insn	2, 0xac28
8000cf60:	0370                	.insn	2, 0x0370
8000cf62:	011c                	.insn	2, 0x011c
8000cf64:	0000                	.insn	2, 0x
8000cf66:	0000                	.insn	2, 0x
8000cf68:	cf85                	.insn	2, 0xcf85
8000cf6a:	4b5e7aa7          	.insn	4, 0x4b5e7aa7
8000cf6e:	8044                	.insn	2, 0x8044
8000cf70:	0124038b          	.insn	4, 0x0124038b
8000cf74:	0000                	.insn	2, 0x
8000cf76:	0000                	.insn	2, 0x
8000cf78:	dd2d                	.insn	2, 0xdd2d
8000cf7a:	03ac                	.insn	2, 0x03ac
8000cf7c:	e440                	.insn	2, 0xe440
8000cf7e:	bf21                	.insn	2, 0xbf21
8000cf80:	03a5                	.insn	2, 0x03a5
8000cf82:	012c                	.insn	2, 0x012c
8000cf84:	0000                	.insn	2, 0x
8000cf86:	0000                	.insn	2, 0x
8000cf88:	5e44ff8f          	.insn	4, 0x5e44ff8f
8000cf8c:	8e679c2f          	.insn	4, 0x8e679c2f
8000cf90:	03c0                	.insn	2, 0x03c0
8000cf92:	0134                	.insn	2, 0x0134
8000cf94:	0000                	.insn	2, 0x
8000cf96:	0000                	.insn	2, 0x
8000cf98:	b841                	.insn	2, 0xb841
8000cf9a:	9c8c                	.insn	2, 0x9c8c
8000cf9c:	179d                	.insn	2, 0x179d
8000cf9e:	03dad433          	.insn	4, 0x03dad433
8000cfa2:	013c                	.insn	2, 0x013c
8000cfa4:	0000                	.insn	2, 0x
8000cfa6:	0000                	.insn	2, 0x
8000cfa8:	1ba9                	.insn	2, 0x1ba9
8000cfaa:	db92b4e3          	.insn	4, 0xdb92b4e3
8000cfae:	9e19                	.insn	2, 0x9e19
8000cfb0:	03f5                	.insn	2, 0x03f5
8000cfb2:	0144                	.insn	2, 0x0144
8000cfb4:	0000                	.insn	2, 0x
8000cfb6:	0000                	.insn	2, 0x
8000cfb8:	77d9                	.insn	2, 0x77d9
8000cfba:	badf bf6e eb96      	.insn	6, 0xeb96bf6ebadf
8000cfc0:	014c040f          	.insn	4, 0x014c040f
8000cfc4:	0000                	.insn	2, 0x
	...

8000cfc8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.51>:
8000cfc8:	65726f63          	bltu	tp,s7,8000d626 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x6a>
8000cfcc:	6372732f          	.insn	4, 0x6372732f
8000cfd0:	6d756e2f          	.insn	4, 0x6d756e2f
8000cfd4:	746c662f          	.insn	4, 0x746c662f
8000cfd8:	6432                	.insn	2, 0x6432
8000cfda:	6365                	.insn	2, 0x6365
8000cfdc:	7274732f          	.insn	4, 0x7274732f
8000cfe0:	7461                	.insn	2, 0x7461
8000cfe2:	6765                	.insn	2, 0x6765
8000cfe4:	2f79                	.insn	2, 0x2f79
8000cfe6:	73697267          	.insn	4, 0x73697267
8000cfea:	2e75                	.insn	2, 0x2e75
8000cfec:	7372                	.insn	2, 0x7372
	...

8000cff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>:
8000cff0:	cfc8                	.insn	2, 0xcfc8
8000cff2:	8000                	.insn	2, 0x8000
8000cff4:	0026                	.insn	2, 0x0026
8000cff6:	0000                	.insn	2, 0x
8000cff8:	007d                	.insn	2, 0x007d
8000cffa:	0000                	.insn	2, 0x
8000cffc:	0015                	.insn	2, 0x0015
	...

8000d000 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.53>:
8000d000:	cfc8                	.insn	2, 0xcfc8
8000d002:	8000                	.insn	2, 0x8000
8000d004:	0026                	.insn	2, 0x0026
8000d006:	0000                	.insn	2, 0x
8000d008:	00a9                	.insn	2, 0x00a9
8000d00a:	0000                	.insn	2, 0x
8000d00c:	0005                	.insn	2, 0x0005
	...

8000d010 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.54>:
8000d010:	cfc8                	.insn	2, 0xcfc8
8000d012:	8000                	.insn	2, 0x8000
8000d014:	0026                	.insn	2, 0x0026
8000d016:	0000                	.insn	2, 0x
8000d018:	00aa                	.insn	2, 0x00aa
8000d01a:	0000                	.insn	2, 0x
8000d01c:	0005                	.insn	2, 0x0005
	...

8000d020 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.55>:
8000d020:	cfc8                	.insn	2, 0xcfc8
8000d022:	8000                	.insn	2, 0x8000
8000d024:	0026                	.insn	2, 0x0026
8000d026:	0000                	.insn	2, 0x
8000d028:	000000ab          	.insn	4, 0x00ab
8000d02c:	0005                	.insn	2, 0x0005
	...

8000d030 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.56>:
8000d030:	cfc8                	.insn	2, 0xcfc8
8000d032:	8000                	.insn	2, 0x8000
8000d034:	0026                	.insn	2, 0x0026
8000d036:	0000                	.insn	2, 0x
8000d038:	00ae                	.insn	2, 0x00ae
8000d03a:	0000                	.insn	2, 0x
8000d03c:	0005                	.insn	2, 0x0005
	...

8000d040 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57>:
8000d040:	7361                	.insn	2, 0x7361
8000d042:	74726573          	.insn	4, 0x74726573
8000d046:	6f69                	.insn	2, 0x6f69
8000d048:	206e                	.insn	2, 0x206e
8000d04a:	6166                	.insn	2, 0x6166
8000d04c:	6c69                	.insn	2, 0x6c69
8000d04e:	6465                	.insn	2, 0x6465
8000d050:	203a                	.insn	2, 0x203a
8000d052:	2e64                	.insn	2, 0x2e64
8000d054:	616d                	.insn	2, 0x616d
8000d056:	746e                	.insn	2, 0x746e
8000d058:	2b20                	.insn	2, 0x2b20
8000d05a:	6420                	.insn	2, 0x6420
8000d05c:	702e                	.insn	2, 0x702e
8000d05e:	756c                	.insn	2, 0x756c
8000d060:	203c2073          	.insn	4, 0x203c2073
8000d064:	3128                	.insn	2, 0x3128
8000d066:	3c20                	.insn	2, 0x3c20
8000d068:	203c                	.insn	2, 0x203c
8000d06a:	3136                	.insn	2, 0x3136
8000d06c:	0029                	.insn	2, 0x0029
	...

8000d070 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.58>:
8000d070:	cfc8                	.insn	2, 0xcfc8
8000d072:	8000                	.insn	2, 0x8000
8000d074:	0026                	.insn	2, 0x0026
8000d076:	0000                	.insn	2, 0x
8000d078:	000000af          	.insn	4, 0x00af
8000d07c:	0005                	.insn	2, 0x0005
	...

8000d080 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.59>:
8000d080:	cfc8                	.insn	2, 0xcfc8
8000d082:	8000                	.insn	2, 0x8000
8000d084:	0026                	.insn	2, 0x0026
8000d086:	0000                	.insn	2, 0x
8000d088:	010a                	.insn	2, 0x010a
8000d08a:	0000                	.insn	2, 0x
8000d08c:	0011                	.insn	2, 0x0011
	...

8000d090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.60>:
8000d090:	cfc8                	.insn	2, 0xcfc8
8000d092:	8000                	.insn	2, 0x8000
8000d094:	0026                	.insn	2, 0x0026
8000d096:	0000                	.insn	2, 0x
8000d098:	010d                	.insn	2, 0x010d
8000d09a:	0000                	.insn	2, 0x
8000d09c:	0009                	.insn	2, 0x0009
	...

8000d0a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.61>:
8000d0a0:	cfc8                	.insn	2, 0xcfc8
8000d0a2:	8000                	.insn	2, 0x8000
8000d0a4:	0026                	.insn	2, 0x0026
8000d0a6:	0000                	.insn	2, 0x
8000d0a8:	0140                	.insn	2, 0x0140
8000d0aa:	0000                	.insn	2, 0x
8000d0ac:	0009                	.insn	2, 0x0009
	...

8000d0b0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.62>:
8000d0b0:	cfc8                	.insn	2, 0xcfc8
8000d0b2:	8000                	.insn	2, 0x8000
8000d0b4:	0026                	.insn	2, 0x0026
8000d0b6:	0000                	.insn	2, 0x
8000d0b8:	00ad                	.insn	2, 0x00ad
8000d0ba:	0000                	.insn	2, 0x
8000d0bc:	0005                	.insn	2, 0x0005
	...

8000d0c0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.63>:
8000d0c0:	cfc8                	.insn	2, 0xcfc8
8000d0c2:	8000                	.insn	2, 0x8000
8000d0c4:	0026                	.insn	2, 0x0026
8000d0c6:	0000                	.insn	2, 0x
8000d0c8:	00ac                	.insn	2, 0x00ac
8000d0ca:	0000                	.insn	2, 0x
8000d0cc:	0005                	.insn	2, 0x0005
	...

8000d0d0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>:
8000d0d0:	7361                	.insn	2, 0x7361
8000d0d2:	74726573          	.insn	4, 0x74726573
8000d0d6:	6f69                	.insn	2, 0x6f69
8000d0d8:	206e                	.insn	2, 0x206e
8000d0da:	6166                	.insn	2, 0x6166
8000d0dc:	6c69                	.insn	2, 0x6c69
8000d0de:	6465                	.insn	2, 0x6465
8000d0e0:	203a                	.insn	2, 0x203a
8000d0e2:	6221                	.insn	2, 0x6221
8000d0e4:	6675                	.insn	2, 0x6675
8000d0e6:	692e                	.insn	2, 0x692e
8000d0e8:	6d655f73          	.insn	4, 0x6d655f73
8000d0ec:	7470                	.insn	2, 0x7470
8000d0ee:	2879                	.insn	2, 0x2879
8000d0f0:	0029                	.insn	2, 0x0029
	...

8000d0f4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.65>:
8000d0f4:	cfc8                	.insn	2, 0xcfc8
8000d0f6:	8000                	.insn	2, 0x8000
8000d0f8:	0026                	.insn	2, 0x0026
8000d0fa:	0000                	.insn	2, 0x
8000d0fc:	01dc                	.insn	2, 0x01dc
8000d0fe:	0000                	.insn	2, 0x
8000d100:	0005                	.insn	2, 0x0005
	...

8000d104 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.66>:
8000d104:	7361                	.insn	2, 0x7361
8000d106:	74726573          	.insn	4, 0x74726573
8000d10a:	6f69                	.insn	2, 0x6f69
8000d10c:	206e                	.insn	2, 0x206e
8000d10e:	6166                	.insn	2, 0x6166
8000d110:	6c69                	.insn	2, 0x6c69
8000d112:	6465                	.insn	2, 0x6465
8000d114:	203a                	.insn	2, 0x203a
8000d116:	2e64                	.insn	2, 0x2e64
8000d118:	616d                	.insn	2, 0x616d
8000d11a:	746e                	.insn	2, 0x746e
8000d11c:	3c20                	.insn	2, 0x3c20
8000d11e:	2820                	.insn	2, 0x2820
8000d120:	2031                	.insn	2, 0x2031
8000d122:	3c3c                	.insn	2, 0x3c3c
8000d124:	3620                	.insn	2, 0x3620
8000d126:	2931                	.insn	2, 0x2931

8000d128 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.67>:
8000d128:	cfc8                	.insn	2, 0xcfc8
8000d12a:	8000                	.insn	2, 0x8000
8000d12c:	0026                	.insn	2, 0x0026
8000d12e:	0000                	.insn	2, 0x
8000d130:	01dd                	.insn	2, 0x01dd
8000d132:	0000                	.insn	2, 0x
8000d134:	0005                	.insn	2, 0x0005
	...

8000d138 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.68>:
8000d138:	cfc8                	.insn	2, 0xcfc8
8000d13a:	8000                	.insn	2, 0x8000
8000d13c:	0026                	.insn	2, 0x0026
8000d13e:	0000                	.insn	2, 0x
8000d140:	01de                	.insn	2, 0x01de
8000d142:	0000                	.insn	2, 0x
8000d144:	0005                	.insn	2, 0x0005
	...

8000d148 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>:
8000d148:	0001                	.insn	2, 0x0001
8000d14a:	0000                	.insn	2, 0x
8000d14c:	000a                	.insn	2, 0x000a
8000d14e:	0000                	.insn	2, 0x
8000d150:	0064                	.insn	2, 0x0064
8000d152:	0000                	.insn	2, 0x
8000d154:	03e8                	.insn	2, 0x03e8
8000d156:	0000                	.insn	2, 0x
8000d158:	2710                	.insn	2, 0x2710
8000d15a:	0000                	.insn	2, 0x
8000d15c:	86a0                	.insn	2, 0x86a0
8000d15e:	0001                	.insn	2, 0x0001
8000d160:	4240                	.insn	2, 0x4240
8000d162:	9680000f          	.insn	4, 0x9680000f
8000d166:	0098                	.insn	2, 0x0098
8000d168:	e100                	.insn	2, 0xe100
8000d16a:	05f5                	.insn	2, 0x05f5
8000d16c:	ca00                	.insn	2, 0xca00
8000d16e:	3b9a                	.insn	2, 0x3b9a

8000d170 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.70>:
8000d170:	cfc8                	.insn	2, 0xcfc8
8000d172:	8000                	.insn	2, 0x8000
8000d174:	0026                	.insn	2, 0x0026
8000d176:	0000                	.insn	2, 0x
8000d178:	00000233          	add	tp,zero,zero
8000d17c:	0011                	.insn	2, 0x0011
	...

8000d180 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.71>:
8000d180:	cfc8                	.insn	2, 0xcfc8
8000d182:	8000                	.insn	2, 0x8000
8000d184:	0026                	.insn	2, 0x0026
8000d186:	0000                	.insn	2, 0x
8000d188:	0236                	.insn	2, 0x0236
8000d18a:	0000                	.insn	2, 0x
8000d18c:	0009                	.insn	2, 0x0009
	...

8000d190 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.72>:
8000d190:	cfc8                	.insn	2, 0xcfc8
8000d192:	8000                	.insn	2, 0x8000
8000d194:	0026                	.insn	2, 0x0026
8000d196:	0000                	.insn	2, 0x
8000d198:	026c                	.insn	2, 0x026c
8000d19a:	0000                	.insn	2, 0x
8000d19c:	0009                	.insn	2, 0x0009
	...

8000d1a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.73>:
8000d1a0:	cfc8                	.insn	2, 0xcfc8
8000d1a2:	8000                	.insn	2, 0x8000
8000d1a4:	0026                	.insn	2, 0x0026
8000d1a6:	0000                	.insn	2, 0x
8000d1a8:	000002e3          	beqz	zero,8000d9ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3f0>
8000d1ac:	004e                	.insn	2, 0x004e
	...

8000d1b0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74>:
8000d1b0:	cfc8                	.insn	2, 0xcfc8
8000d1b2:	8000                	.insn	2, 0x8000
8000d1b4:	0026                	.insn	2, 0x0026
8000d1b6:	0000                	.insn	2, 0x
8000d1b8:	000002ef          	jal	t0,8000d1b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74+0x8>
8000d1bc:	004a                	.insn	2, 0x004a
	...

8000d1c0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.75>:
8000d1c0:	cfc8                	.insn	2, 0xcfc8
8000d1c2:	8000                	.insn	2, 0x8000
8000d1c4:	0026                	.insn	2, 0x0026
8000d1c6:	0000                	.insn	2, 0x
8000d1c8:	02cc                	.insn	2, 0x02cc
8000d1ca:	0000                	.insn	2, 0x
8000d1cc:	004a                	.insn	2, 0x004a
	...

8000d1d0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.76>:
8000d1d0:	65726f63          	bltu	tp,s7,8000d82e <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x272>
8000d1d4:	6372732f          	.insn	4, 0x6372732f
8000d1d8:	6d756e2f          	.insn	4, 0x6d756e2f
8000d1dc:	746c662f          	.insn	4, 0x746c662f
8000d1e0:	6432                	.insn	2, 0x6432
8000d1e2:	6365                	.insn	2, 0x6365
8000d1e4:	646f6d2f          	.insn	4, 0x646f6d2f
8000d1e8:	722e                	.insn	2, 0x722e
8000d1ea:	          	.insn	4, 0xd1d00073

8000d1ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.77>:
8000d1ec:	d1d0                	.insn	2, 0xd1d0
8000d1ee:	8000                	.insn	2, 0x8000
8000d1f0:	0000001b          	.insn	4, 0x001b
8000d1f4:	000000bb          	.insn	4, 0x00bb
8000d1f8:	0005                	.insn	2, 0x0005
	...

8000d1fc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.78>:
8000d1fc:	7361                	.insn	2, 0x7361
8000d1fe:	74726573          	.insn	4, 0x74726573
8000d202:	6f69                	.insn	2, 0x6f69
8000d204:	206e                	.insn	2, 0x206e
8000d206:	6166                	.insn	2, 0x6166
8000d208:	6c69                	.insn	2, 0x6c69
8000d20a:	6465                	.insn	2, 0x6465
8000d20c:	203a                	.insn	2, 0x203a
8000d20e:	7562                	.insn	2, 0x7562
8000d210:	5b66                	.insn	2, 0x5b66
8000d212:	5d30                	.insn	2, 0x5d30
8000d214:	3e20                	.insn	2, 0x3e20
8000d216:	6220                	.insn	2, 0x6220
8000d218:	00273027          	.insn	4, 0x00273027

8000d21c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.79>:
8000d21c:	d1d0                	.insn	2, 0xd1d0
8000d21e:	8000                	.insn	2, 0x8000
8000d220:	0000001b          	.insn	4, 0x001b
8000d224:	00bc                	.insn	2, 0x00bc
8000d226:	0000                	.insn	2, 0x
8000d228:	0005                	.insn	2, 0x0005
	...

8000d22c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.80>:
8000d22c:	7361                	.insn	2, 0x7361
8000d22e:	74726573          	.insn	4, 0x74726573
8000d232:	6f69                	.insn	2, 0x6f69
8000d234:	206e                	.insn	2, 0x206e
8000d236:	6166                	.insn	2, 0x6166
8000d238:	6c69                	.insn	2, 0x6c69
8000d23a:	6465                	.insn	2, 0x6465
8000d23c:	203a                	.insn	2, 0x203a
8000d23e:	6170                	.insn	2, 0x6170
8000d240:	7472                	.insn	2, 0x7472
8000d242:	656c2e73          	.insn	4, 0x656c2e73
8000d246:	286e                	.insn	2, 0x286e
8000d248:	2029                	.insn	2, 0x2029
8000d24a:	3d3e                	.insn	2, 0x3d3e
8000d24c:	3420                	.insn	2, 0x3420
	...

8000d250 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.81>:
8000d250:	d1d0                	.insn	2, 0xd1d0
8000d252:	8000                	.insn	2, 0x8000
8000d254:	0000001b          	.insn	4, 0x001b
8000d258:	00bd                	.insn	2, 0x00bd
8000d25a:	0000                	.insn	2, 0x
8000d25c:	0005                	.insn	2, 0x0005
	...

8000d260 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>:
8000d260:	                	.insn	2, 0x302e

8000d261 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>:
8000d261:	2e30                	.insn	2, 0x2e30

8000d263 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>:
8000d263:	                	.insn	2, 0x2b2d

8000d264 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>:
8000d264:	          	.insn	4, 0x4e614e2b

8000d265 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>:
8000d265:	614e                	.insn	2, 0x614e
8000d267:	                	.insn	2, 0x694e

8000d268 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>:
8000d268:	6e69                	.insn	2, 0x6e69
8000d26a:	                	.insn	2, 0x3066

8000d26b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>:
8000d26b:	                	.insn	2, 0x6130

8000d26c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.106>:
8000d26c:	7361                	.insn	2, 0x7361
8000d26e:	74726573          	.insn	4, 0x74726573
8000d272:	6f69                	.insn	2, 0x6f69
8000d274:	206e                	.insn	2, 0x206e
8000d276:	6166                	.insn	2, 0x6166
8000d278:	6c69                	.insn	2, 0x6c69
8000d27a:	6465                	.insn	2, 0x6465
8000d27c:	203a                	.insn	2, 0x203a
8000d27e:	7562                	.insn	2, 0x7562
8000d280:	2e66                	.insn	2, 0x2e66
8000d282:	656c                	.insn	2, 0x656c
8000d284:	286e                	.insn	2, 0x286e
8000d286:	2029                	.insn	2, 0x2029
8000d288:	3d3e                	.insn	2, 0x3d3e
8000d28a:	6d20                	.insn	2, 0x6d20
8000d28c:	7861                	.insn	2, 0x7861
8000d28e:	656c                	.insn	2, 0x656c
8000d290:	006e                	.insn	2, 0x006e
	...

8000d294 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.107>:
8000d294:	d1d0                	.insn	2, 0xd1d0
8000d296:	8000                	.insn	2, 0x8000
8000d298:	0000001b          	.insn	4, 0x001b
8000d29c:	027e                	.insn	2, 0x027e
8000d29e:	0000                	.insn	2, 0x
8000d2a0:	000d                	.insn	2, 0x000d
	...

8000d2a4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.138>:
8000d2a4:	2820                	.insn	2, 0x2820
8000d2a6:	2031                	.insn	2, 0x2031
8000d2a8:	3c3c                	.insn	2, 0x3c3c
8000d2aa:	                	.insn	2, 0x2920

8000d2ab <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.139>:
8000d2ab:	                	.insn	2, 0x0129

8000d2ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.140>:
8000d2ac:	0001                	.insn	2, 0x0001
8000d2ae:	0000                	.insn	2, 0x
8000d2b0:	0000                	.insn	2, 0x
8000d2b2:	0000                	.insn	2, 0x
8000d2b4:	d2a4                	.insn	2, 0xd2a4
8000d2b6:	8000                	.insn	2, 0x8000
8000d2b8:	00000007          	.insn	4, 0x0007
8000d2bc:	8000d2ab          	.insn	4, 0x8000d2ab
8000d2c0:	0001                	.insn	2, 0x0001
	...

8000d2c4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.210>:
8000d2c4:	                	.insn	2, 0x633a

8000d2c5 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.220>:
8000d2c5:	6c6c6163          	bltu	s8,t1,8000d987 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3cb>
8000d2c9:	6465                	.insn	2, 0x6465
8000d2cb:	6020                	.insn	2, 0x6020
8000d2cd:	6974704f          	.insn	4, 0x6974704f
8000d2d1:	3a3a6e6f          	jal	t3,800b3e73 <KALLOC_BUFFER+0xa3e73>
8000d2d5:	6e75                	.insn	2, 0x6e75
8000d2d7:	70617277          	.insn	4, 0x70617277
8000d2db:	2928                	.insn	2, 0x2928
8000d2dd:	2060                	.insn	2, 0x2060
8000d2df:	61206e6f          	jal	t3,800138f1 <KALLOC_BUFFER+0x38f1>
8000d2e3:	6020                	.insn	2, 0x6020
8000d2e5:	6f4e                	.insn	2, 0x6f4e
8000d2e7:	656e                	.insn	2, 0x656e
8000d2e9:	2060                	.insn	2, 0x2060
8000d2eb:	6176                	.insn	2, 0x6176
8000d2ed:	756c                	.insn	2, 0x756c
8000d2ef:	                	.insn	2, 0x0165

8000d2f0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.221>:
8000d2f0:	0001                	.insn	2, 0x0001
8000d2f2:	0000                	.insn	2, 0x
8000d2f4:	0000                	.insn	2, 0x
8000d2f6:	0000                	.insn	2, 0x
8000d2f8:	d2c4                	.insn	2, 0xd2c4
8000d2fa:	8000                	.insn	2, 0x8000
8000d2fc:	0001                	.insn	2, 0x0001
8000d2fe:	0000                	.insn	2, 0x
8000d300:	d2c4                	.insn	2, 0xd2c4
8000d302:	8000                	.insn	2, 0x8000
8000d304:	0001                	.insn	2, 0x0001
	...

8000d308 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.222>:
8000d308:	6170                	.insn	2, 0x6170
8000d30a:	696e                	.insn	2, 0x696e
8000d30c:	64656b63          	bltu	a0,t1,8000d962 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3a6>
8000d310:	6120                	.insn	2, 0x6120
8000d312:	2074                	.insn	2, 0x2074

8000d314 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.223>:
8000d314:	0a3a                	.insn	2, 0x0a3a

8000d316 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.230>:
8000d316:	6220                	.insn	2, 0x6220
8000d318:	7475                	.insn	2, 0x7475
8000d31a:	7420                	.insn	2, 0x7420
8000d31c:	6568                	.insn	2, 0x6568
8000d31e:	6920                	.insn	2, 0x6920
8000d320:	646e                	.insn	2, 0x646e
8000d322:	7865                	.insn	2, 0x7865
8000d324:	6920                	.insn	2, 0x6920
8000d326:	          	.insn	4, 0xc7302073

8000d328 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.231>:
8000d328:	c730                	.insn	2, 0xc730
8000d32a:	8000                	.insn	2, 0x8000
8000d32c:	0020                	.insn	2, 0x0020
8000d32e:	0000                	.insn	2, 0x
8000d330:	d316                	.insn	2, 0xd316
8000d332:	8000                	.insn	2, 0x8000
8000d334:	0012                	.insn	2, 0x0012
	...

8000d338 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.238>:
8000d338:	0000                	.insn	2, 0x
8000d33a:	0000                	.insn	2, 0x
8000d33c:	0004                	.insn	2, 0x0004
8000d33e:	0000                	.insn	2, 0x
8000d340:	0004                	.insn	2, 0x0004
8000d342:	0000                	.insn	2, 0x
8000d344:	9eb8                	.insn	2, 0x9eb8
8000d346:	8000                	.insn	2, 0x8000

8000d348 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.240>:
8000d348:	3d3d                	.insn	2, 0x3d3d

8000d34a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.241>:
8000d34a:	3d21                	.insn	2, 0x3d21

8000d34c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.242>:
8000d34c:	616d                	.insn	2, 0x616d
8000d34e:	6374                	.insn	2, 0x6374
8000d350:	6568                	.insn	2, 0x6568
8000d352:	          	.insn	4, 0x69722073

8000d353 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.244>:
8000d353:	7220                	.insn	2, 0x7220
8000d355:	6769                	.insn	2, 0x6769
8000d357:	7468                	.insn	2, 0x7468
8000d359:	2060                	.insn	2, 0x2060
8000d35b:	6166                	.insn	2, 0x6166
8000d35d:	6c69                	.insn	2, 0x6c69
8000d35f:	6465                	.insn	2, 0x6465
8000d361:	200a                	.insn	2, 0x200a
8000d363:	6c20                	.insn	2, 0x6c20
8000d365:	6665                	.insn	2, 0x6665
8000d367:	3a74                	.insn	2, 0x3a74
8000d369:	                	.insn	2, 0x0a20

8000d36a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.245>:
8000d36a:	200a                	.insn	2, 0x200a
8000d36c:	6972                	.insn	2, 0x6972
8000d36e:	3a746867          	.insn	4, 0x3a746867
8000d372:	0020                	.insn	2, 0x0020

8000d374 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.246>:
8000d374:	c050                	.insn	2, 0xc050
8000d376:	8000                	.insn	2, 0x8000
8000d378:	0010                	.insn	2, 0x0010
8000d37a:	0000                	.insn	2, 0x
8000d37c:	8000d353          	.insn	4, 0x8000d353
8000d380:	00000017          	auipc	zero,0x0
8000d384:	d36a                	.insn	2, 0xd36a
8000d386:	8000                	.insn	2, 0x8000
8000d388:	0009                	.insn	2, 0x0009
	...

8000d38c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.248>:
8000d38c:	200a                	.insn	2, 0x200a
8000d38e:	6c20                	.insn	2, 0x6c20
8000d390:	6665                	.insn	2, 0x6665
8000d392:	3a74                	.insn	2, 0x3a74
8000d394:	0020                	.insn	2, 0x0020
	...

8000d398 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.249>:
8000d398:	c050                	.insn	2, 0xc050
8000d39a:	8000                	.insn	2, 0x8000
8000d39c:	0010                	.insn	2, 0x0010
8000d39e:	0000                	.insn	2, 0x
8000d3a0:	c090                	.insn	2, 0xc090
8000d3a2:	8000                	.insn	2, 0x8000
8000d3a4:	0010                	.insn	2, 0x0010
8000d3a6:	0000                	.insn	2, 0x
8000d3a8:	d38c                	.insn	2, 0xd38c
8000d3aa:	8000                	.insn	2, 0x8000
8000d3ac:	0009                	.insn	2, 0x0009
8000d3ae:	0000                	.insn	2, 0x
8000d3b0:	d36a                	.insn	2, 0xd36a
8000d3b2:	8000                	.insn	2, 0x8000
8000d3b4:	0009                	.insn	2, 0x0009
	...

8000d3b8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>:
8000d3b8:	203a                	.insn	2, 0x203a
	...

8000d3bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.251>:
8000d3bc:	0001                	.insn	2, 0x0001
8000d3be:	0000                	.insn	2, 0x
8000d3c0:	0000                	.insn	2, 0x
8000d3c2:	0000                	.insn	2, 0x
8000d3c4:	d3b8                	.insn	2, 0xd3b8
8000d3c6:	8000                	.insn	2, 0x8000
8000d3c8:	0002                	.insn	2, 0x0002
	...

8000d3cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>:
8000d3cc:	0000                	.insn	2, 0x
8000d3ce:	0000                	.insn	2, 0x
8000d3d0:	000c                	.insn	2, 0x000c
8000d3d2:	0000                	.insn	2, 0x
8000d3d4:	0004                	.insn	2, 0x0004
8000d3d6:	0000                	.insn	2, 0x
8000d3d8:	738c                	.insn	2, 0x738c
8000d3da:	8000                	.insn	2, 0x8000
8000d3dc:	7628                	.insn	2, 0x7628
8000d3de:	8000                	.insn	2, 0x8000
8000d3e0:	7f30                	.insn	2, 0x7f30
8000d3e2:	8000                	.insn	2, 0x8000

8000d3e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.254>:
8000d3e4:	7b20                	.insn	2, 0x7b20
8000d3e6:	                	.insn	2, 0x2c20

8000d3e7 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.255>:
8000d3e7:	202c                	.insn	2, 0x202c

8000d3e9 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.256>:
8000d3e9:	7b20                	.insn	2, 0x7b20
8000d3eb:	                	.insn	2, 0x2c0a

8000d3ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.257>:
8000d3ec:	0a2c                	.insn	2, 0x0a2c

8000d3ee <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.261>:
8000d3ee:	                	.insn	2, 0x207d

8000d3ef <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.262>:
8000d3ef:	7d20                	.insn	2, 0x7d20

8000d3f1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>:
8000d3f1:	7830                	.insn	2, 0x7830

8000d3f3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>:
8000d3f3:	3030                	.insn	2, 0x3030
8000d3f5:	3130                	.insn	2, 0x3130
8000d3f7:	3230                	.insn	2, 0x3230
8000d3f9:	3330                	.insn	2, 0x3330
8000d3fb:	3430                	.insn	2, 0x3430
8000d3fd:	3530                	.insn	2, 0x3530
8000d3ff:	3630                	.insn	2, 0x3630
8000d401:	3730                	.insn	2, 0x3730
8000d403:	3830                	.insn	2, 0x3830
8000d405:	3930                	.insn	2, 0x3930
8000d407:	3031                	.insn	2, 0x3031
8000d409:	3131                	.insn	2, 0x3131
8000d40b:	3231                	.insn	2, 0x3231
8000d40d:	3331                	.insn	2, 0x3331
8000d40f:	3431                	.insn	2, 0x3431
8000d411:	3531                	.insn	2, 0x3531
8000d413:	3631                	.insn	2, 0x3631
8000d415:	3731                	.insn	2, 0x3731
8000d417:	3831                	.insn	2, 0x3831
8000d419:	3931                	.insn	2, 0x3931
8000d41b:	3032                	.insn	2, 0x3032
8000d41d:	3132                	.insn	2, 0x3132
8000d41f:	3232                	.insn	2, 0x3232
8000d421:	3332                	.insn	2, 0x3332
8000d423:	3432                	.insn	2, 0x3432
8000d425:	3532                	.insn	2, 0x3532
8000d427:	3632                	.insn	2, 0x3632
8000d429:	3732                	.insn	2, 0x3732
8000d42b:	3832                	.insn	2, 0x3832
8000d42d:	3932                	.insn	2, 0x3932
8000d42f:	31333033          	.insn	4, 0x31333033
8000d433:	33333233          	.insn	4, 0x33333233
8000d437:	35333433          	.insn	4, 0x35333433
8000d43b:	37333633          	.insn	4, 0x37333633
8000d43f:	39333833          	.insn	4, 0x39333833
8000d443:	3034                	.insn	2, 0x3034
8000d445:	3134                	.insn	2, 0x3134
8000d447:	3234                	.insn	2, 0x3234
8000d449:	3334                	.insn	2, 0x3334
8000d44b:	3434                	.insn	2, 0x3434
8000d44d:	3534                	.insn	2, 0x3534
8000d44f:	3634                	.insn	2, 0x3634
8000d451:	3734                	.insn	2, 0x3734
8000d453:	3834                	.insn	2, 0x3834
8000d455:	3934                	.insn	2, 0x3934
8000d457:	3035                	.insn	2, 0x3035
8000d459:	3135                	.insn	2, 0x3135
8000d45b:	3235                	.insn	2, 0x3235
8000d45d:	3335                	.insn	2, 0x3335
8000d45f:	3435                	.insn	2, 0x3435
8000d461:	3535                	.insn	2, 0x3535
8000d463:	3635                	.insn	2, 0x3635
8000d465:	3735                	.insn	2, 0x3735
8000d467:	3835                	.insn	2, 0x3835
8000d469:	3935                	.insn	2, 0x3935
8000d46b:	3036                	.insn	2, 0x3036
8000d46d:	3136                	.insn	2, 0x3136
8000d46f:	3236                	.insn	2, 0x3236
8000d471:	3336                	.insn	2, 0x3336
8000d473:	3436                	.insn	2, 0x3436
8000d475:	3536                	.insn	2, 0x3536
8000d477:	3636                	.insn	2, 0x3636
8000d479:	3736                	.insn	2, 0x3736
8000d47b:	3836                	.insn	2, 0x3836
8000d47d:	3936                	.insn	2, 0x3936
8000d47f:	31373037          	lui	zero,0x31373
8000d483:	33373237          	lui	tp,0x33373
8000d487:	35373437          	lui	s0,0x35373
8000d48b:	37373637          	lui	a2,0x37373
8000d48f:	39373837          	lui	a6,0x39373
8000d493:	3038                	.insn	2, 0x3038
8000d495:	3138                	.insn	2, 0x3138
8000d497:	3238                	.insn	2, 0x3238
8000d499:	3338                	.insn	2, 0x3338
8000d49b:	3438                	.insn	2, 0x3438
8000d49d:	3538                	.insn	2, 0x3538
8000d49f:	3638                	.insn	2, 0x3638
8000d4a1:	3738                	.insn	2, 0x3738
8000d4a3:	3838                	.insn	2, 0x3838
8000d4a5:	3938                	.insn	2, 0x3938
8000d4a7:	3039                	.insn	2, 0x3039
8000d4a9:	3139                	.insn	2, 0x3139
8000d4ab:	3239                	.insn	2, 0x3239
8000d4ad:	3339                	.insn	2, 0x3339
8000d4af:	3439                	.insn	2, 0x3439
8000d4b1:	3539                	.insn	2, 0x3539
8000d4b3:	3639                	.insn	2, 0x3639
8000d4b5:	3739                	.insn	2, 0x3739
8000d4b7:	3839                	.insn	2, 0x3839
8000d4b9:	3939                	.insn	2, 0x3939

8000d4bb <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.299>:
8000d4bb:	3030                	.insn	2, 0x3030
8000d4bd:	3030                	.insn	2, 0x3030
8000d4bf:	3030                	.insn	2, 0x3030
8000d4c1:	3030                	.insn	2, 0x3030
8000d4c3:	3030                	.insn	2, 0x3030
8000d4c5:	3030                	.insn	2, 0x3030
8000d4c7:	3030                	.insn	2, 0x3030
8000d4c9:	3030                	.insn	2, 0x3030
8000d4cb:	3030                	.insn	2, 0x3030
8000d4cd:	3030                	.insn	2, 0x3030
8000d4cf:	3030                	.insn	2, 0x3030
8000d4d1:	3030                	.insn	2, 0x3030
8000d4d3:	3030                	.insn	2, 0x3030
8000d4d5:	3030                	.insn	2, 0x3030
8000d4d7:	3030                	.insn	2, 0x3030
8000d4d9:	3030                	.insn	2, 0x3030
8000d4db:	3030                	.insn	2, 0x3030
8000d4dd:	3030                	.insn	2, 0x3030
8000d4df:	3030                	.insn	2, 0x3030
8000d4e1:	3030                	.insn	2, 0x3030
8000d4e3:	3030                	.insn	2, 0x3030
8000d4e5:	3030                	.insn	2, 0x3030
8000d4e7:	3030                	.insn	2, 0x3030
8000d4e9:	3030                	.insn	2, 0x3030
8000d4eb:	3030                	.insn	2, 0x3030
8000d4ed:	3030                	.insn	2, 0x3030
8000d4ef:	3030                	.insn	2, 0x3030
8000d4f1:	3030                	.insn	2, 0x3030
8000d4f3:	3030                	.insn	2, 0x3030
8000d4f5:	3030                	.insn	2, 0x3030
8000d4f7:	3030                	.insn	2, 0x3030
8000d4f9:	3030                	.insn	2, 0x3030

8000d4fb <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.413>:
8000d4fb:	65726f63          	bltu	tp,s7,8000db59 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x59d>
8000d4ff:	6372732f          	.insn	4, 0x6372732f
8000d503:	6d756e2f          	.insn	4, 0x6d756e2f
8000d507:	6769622f          	.insn	4, 0x6769622f
8000d50b:	756e                	.insn	2, 0x756e
8000d50d:	2e6d                	.insn	2, 0x2e6d
8000d50f:	7372                	.insn	2, 0x7372
8000d511:	0000                	.insn	2, 0x
	...

8000d514 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>:
8000d514:	8000d4fb          	.insn	4, 0x8000d4fb
8000d518:	0016                	.insn	2, 0x0016
8000d51a:	0000                	.insn	2, 0x
8000d51c:	01aa                	.insn	2, 0x01aa
8000d51e:	0000                	.insn	2, 0x
8000d520:	0001                	.insn	2, 0x0001
	...

8000d524 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>:
8000d524:	7361                	.insn	2, 0x7361
8000d526:	74726573          	.insn	4, 0x74726573
8000d52a:	6f69                	.insn	2, 0x6f69
8000d52c:	206e                	.insn	2, 0x206e
8000d52e:	6166                	.insn	2, 0x6166
8000d530:	6c69                	.insn	2, 0x6c69
8000d532:	6465                	.insn	2, 0x6465
8000d534:	203a                	.insn	2, 0x203a
8000d536:	6f6e                	.insn	2, 0x6f6e
8000d538:	6f62                	.insn	2, 0x6f62
8000d53a:	7272                	.insn	2, 0x7272
8000d53c:	          	jal	a4,80024c72 <KALLOC_BUFFER+0x14c72>

8000d53e <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.417>:
8000d53e:	7361                	.insn	2, 0x7361
8000d540:	74726573          	.insn	4, 0x74726573
8000d544:	6f69                	.insn	2, 0x6f69
8000d546:	206e                	.insn	2, 0x206e
8000d548:	6166                	.insn	2, 0x6166
8000d54a:	6c69                	.insn	2, 0x6c69
8000d54c:	6465                	.insn	2, 0x6465
8000d54e:	203a                	.insn	2, 0x203a
8000d550:	6964                	.insn	2, 0x6964
8000d552:	73746967          	.insn	4, 0x73746967
8000d556:	3c20                	.insn	2, 0x3c20
8000d558:	3420                	.insn	2, 0x3420
8000d55a:	                	.insn	2, 0x6130

8000d55b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.418>:
8000d55b:	7361                	.insn	2, 0x7361
8000d55d:	74726573          	.insn	4, 0x74726573
8000d561:	6f69                	.insn	2, 0x6f69
8000d563:	206e                	.insn	2, 0x206e
8000d565:	6166                	.insn	2, 0x6166
8000d567:	6c69                	.insn	2, 0x6c69
8000d569:	6465                	.insn	2, 0x6465
8000d56b:	203a                	.insn	2, 0x203a
8000d56d:	6568746f          	jal	s0,80094bc3 <KALLOC_BUFFER+0x84bc3>
8000d571:	2072                	.insn	2, 0x2072
8000d573:	203e                	.insn	2, 0x203e
8000d575:	                	.insn	2, 0x6130

8000d576 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.432>:
8000d576:	7461                	.insn	2, 0x7461
8000d578:	6574                	.insn	2, 0x6574
8000d57a:	706d                	.insn	2, 0x706d
8000d57c:	2074                	.insn	2, 0x2074
8000d57e:	6f74                	.insn	2, 0x6f74
8000d580:	6420                	.insn	2, 0x6420
8000d582:	7669                	.insn	2, 0x7669
8000d584:	6469                	.insn	2, 0x6469
8000d586:	2065                	.insn	2, 0x2065
8000d588:	7962                	.insn	2, 0x7962
8000d58a:	7a20                	.insn	2, 0x7a20
8000d58c:	7265                	.insn	2, 0x7265
8000d58e:	          	j	7ff6e2e4 <.Lline_table_start2+0x7ff6cf36>

8000d590 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.433>:
8000d590:	d576                	.insn	2, 0xd576
8000d592:	8000                	.insn	2, 0x8000
8000d594:	0019                	.insn	2, 0x0019
	...

8000d598 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.466>:
8000d598:	6f20                	.insn	2, 0x6f20
8000d59a:	7475                	.insn	2, 0x7475
8000d59c:	6f20                	.insn	2, 0x6f20
8000d59e:	2066                	.insn	2, 0x2066
8000d5a0:	6172                	.insn	2, 0x6172
8000d5a2:	676e                	.insn	2, 0x676e
8000d5a4:	2065                	.insn	2, 0x2065
8000d5a6:	6f66                	.insn	2, 0x6f66
8000d5a8:	2072                	.insn	2, 0x2072
8000d5aa:	63696c73          	.insn	4, 0x63696c73
8000d5ae:	2065                	.insn	2, 0x2065
8000d5b0:	6c20666f          	jal	a2,80013c72 <KALLOC_BUFFER+0x3c72>
8000d5b4:	6e65                	.insn	2, 0x6e65
8000d5b6:	20687467          	.insn	4, 0x20687467
	...

8000d5bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469>:
8000d5bc:	c070                	.insn	2, 0xc070
8000d5be:	8000                	.insn	2, 0x8000
8000d5c0:	0010                	.insn	2, 0x0010
8000d5c2:	0000                	.insn	2, 0x
8000d5c4:	d598                	.insn	2, 0xd598
8000d5c6:	8000                	.insn	2, 0x8000
8000d5c8:	0022                	.insn	2, 0x0022
	...

Disassembly of section .eh_frame:

8000d5d0 <__bss_start-0xa08>:
8000d5d0:	0010                	.insn	2, 0x0010
8000d5d2:	0000                	.insn	2, 0x
8000d5d4:	0000                	.insn	2, 0x
8000d5d6:	0000                	.insn	2, 0x
8000d5d8:	7a01                	.insn	2, 0x7a01
8000d5da:	0052                	.insn	2, 0x0052
8000d5dc:	7c01                	.insn	2, 0x7c01
8000d5de:	0101                	.insn	2, 0x0101
8000d5e0:	00020c1b          	.insn	4, 0x00020c1b
8000d5e4:	0010                	.insn	2, 0x0010
8000d5e6:	0000                	.insn	2, 0x
8000d5e8:	0018                	.insn	2, 0x0018
8000d5ea:	0000                	.insn	2, 0x
8000d5ec:	4dec                	.insn	2, 0x4dec
8000d5ee:	ffff                	.insn	2, 0xffff
8000d5f0:	0008                	.insn	2, 0x0008
8000d5f2:	0000                	.insn	2, 0x
8000d5f4:	0000                	.insn	2, 0x
8000d5f6:	0000                	.insn	2, 0x
8000d5f8:	001c                	.insn	2, 0x001c
8000d5fa:	0000                	.insn	2, 0x
8000d5fc:	002c                	.insn	2, 0x002c
8000d5fe:	0000                	.insn	2, 0x
8000d600:	4de0                	.insn	2, 0x4de0
8000d602:	ffff                	.insn	2, 0xffff
8000d604:	0044                	.insn	2, 0x0044
8000d606:	0000                	.insn	2, 0x
8000d608:	4400                	.insn	2, 0x4400
8000d60a:	200e                	.insn	2, 0x200e
8000d60c:	8148                	.insn	2, 0x8148
8000d60e:	8801                	.insn	2, 0x8801
8000d610:	4402                	.insn	2, 0x4402
8000d612:	080c                	.insn	2, 0x080c
8000d614:	0000                	.insn	2, 0x
8000d616:	0000                	.insn	2, 0x
8000d618:	001c                	.insn	2, 0x001c
8000d61a:	0000                	.insn	2, 0x
8000d61c:	004c                	.insn	2, 0x004c
8000d61e:	0000                	.insn	2, 0x
8000d620:	4e04                	.insn	2, 0x4e04
8000d622:	ffff                	.insn	2, 0xffff
8000d624:	0028                	.insn	2, 0x0028
8000d626:	0000                	.insn	2, 0x
8000d628:	4400                	.insn	2, 0x4400
8000d62a:	100e                	.insn	2, 0x100e
8000d62c:	8148                	.insn	2, 0x8148
8000d62e:	8801                	.insn	2, 0x8801
8000d630:	4402                	.insn	2, 0x4402
8000d632:	080c                	.insn	2, 0x080c
8000d634:	0000                	.insn	2, 0x
8000d636:	0000                	.insn	2, 0x
8000d638:	001c                	.insn	2, 0x001c
8000d63a:	0000                	.insn	2, 0x
8000d63c:	006c                	.insn	2, 0x006c
8000d63e:	0000                	.insn	2, 0x
8000d640:	4e0c                	.insn	2, 0x4e0c
8000d642:	ffff                	.insn	2, 0xffff
8000d644:	0024                	.insn	2, 0x0024
8000d646:	0000                	.insn	2, 0x
8000d648:	4400                	.insn	2, 0x4400
8000d64a:	100e                	.insn	2, 0x100e
8000d64c:	8148                	.insn	2, 0x8148
8000d64e:	8801                	.insn	2, 0x8801
8000d650:	4402                	.insn	2, 0x4402
8000d652:	080c                	.insn	2, 0x080c
8000d654:	0000                	.insn	2, 0x
8000d656:	0000                	.insn	2, 0x
8000d658:	0030                	.insn	2, 0x0030
8000d65a:	0000                	.insn	2, 0x
8000d65c:	008c                	.insn	2, 0x008c
8000d65e:	0000                	.insn	2, 0x
8000d660:	4e10                	.insn	2, 0x4e10
8000d662:	ffff                	.insn	2, 0xffff
8000d664:	0ea8                	.insn	2, 0x0ea8
8000d666:	0000                	.insn	2, 0x
8000d668:	4400                	.insn	2, 0x4400
8000d66a:	800e                	.insn	2, 0x800e
8000d66c:	7402                	.insn	2, 0x7402
8000d66e:	0181                	.insn	2, 0x0181
8000d670:	0288                	.insn	2, 0x0288
8000d672:	0389                	.insn	2, 0x0389
8000d674:	0492                	.insn	2, 0x0492
8000d676:	06940593          	addi	a1,s0,105 # 35373069 <.Lline_table_start2+0x35371cbb>
8000d67a:	0795                	.insn	2, 0x0795
8000d67c:	0896                	.insn	2, 0x0896
8000d67e:	0a980997          	auipc	s3,0xa980
8000d682:	0b99                	.insn	2, 0x0b99
8000d684:	0c9a                	.insn	2, 0x0c9a
8000d686:	0c440d9b          	.insn	4, 0x0c440d9b
8000d68a:	0008                	.insn	2, 0x0008
8000d68c:	0030                	.insn	2, 0x0030
8000d68e:	0000                	.insn	2, 0x
8000d690:	00c0                	.insn	2, 0x00c0
8000d692:	0000                	.insn	2, 0x
8000d694:	5c84                	.insn	2, 0x5c84
8000d696:	ffff                	.insn	2, 0xffff
8000d698:	1034                	.insn	2, 0x1034
8000d69a:	0000                	.insn	2, 0x
8000d69c:	4400                	.insn	2, 0x4400
8000d69e:	800e                	.insn	2, 0x800e
8000d6a0:	0181740b          	.insn	4, 0x0181740b
8000d6a4:	0288                	.insn	2, 0x0288
8000d6a6:	0389                	.insn	2, 0x0389
8000d6a8:	0492                	.insn	2, 0x0492
8000d6aa:	06940593          	addi	a1,s0,105
8000d6ae:	0795                	.insn	2, 0x0795
8000d6b0:	0896                	.insn	2, 0x0896
8000d6b2:	0a980997          	auipc	s3,0xa980
8000d6b6:	0b99                	.insn	2, 0x0b99
8000d6b8:	0c9a                	.insn	2, 0x0c9a
8000d6ba:	0c440d9b          	.insn	4, 0x0c440d9b
8000d6be:	0008                	.insn	2, 0x0008
8000d6c0:	0030                	.insn	2, 0x0030
8000d6c2:	0000                	.insn	2, 0x
8000d6c4:	00f4                	.insn	2, 0x00f4
8000d6c6:	0000                	.insn	2, 0x
8000d6c8:	6c84                	.insn	2, 0x6c84
8000d6ca:	ffff                	.insn	2, 0xffff
8000d6cc:	0ee4                	.insn	2, 0x0ee4
8000d6ce:	0000                	.insn	2, 0x
8000d6d0:	4400                	.insn	2, 0x4400
8000d6d2:	900e                	.insn	2, 0x900e
8000d6d4:	01817407          	.insn	4, 0x01817407
8000d6d8:	0288                	.insn	2, 0x0288
8000d6da:	0389                	.insn	2, 0x0389
8000d6dc:	0492                	.insn	2, 0x0492
8000d6de:	06940593          	addi	a1,s0,105
8000d6e2:	0795                	.insn	2, 0x0795
8000d6e4:	0896                	.insn	2, 0x0896
8000d6e6:	0a980997          	auipc	s3,0xa980
8000d6ea:	0b99                	.insn	2, 0x0b99
8000d6ec:	0c9a                	.insn	2, 0x0c9a
8000d6ee:	0c440d9b          	.insn	4, 0x0c440d9b
8000d6f2:	0008                	.insn	2, 0x0008
8000d6f4:	0030                	.insn	2, 0x0030
8000d6f6:	0000                	.insn	2, 0x
8000d6f8:	0128                	.insn	2, 0x0128
8000d6fa:	0000                	.insn	2, 0x
8000d6fc:	7b34                	.insn	2, 0x7b34
8000d6fe:	ffff                	.insn	2, 0xffff
8000d700:	0fe0                	.insn	2, 0x0fe0
8000d702:	0000                	.insn	2, 0x
8000d704:	4400                	.insn	2, 0x4400
8000d706:	c00e                	.insn	2, 0xc00e
8000d708:	7401                	.insn	2, 0x7401
8000d70a:	0181                	.insn	2, 0x0181
8000d70c:	0288                	.insn	2, 0x0288
8000d70e:	0389                	.insn	2, 0x0389
8000d710:	0492                	.insn	2, 0x0492
8000d712:	06940593          	addi	a1,s0,105
8000d716:	0795                	.insn	2, 0x0795
8000d718:	0896                	.insn	2, 0x0896
8000d71a:	0a980997          	auipc	s3,0xa980
8000d71e:	0b99                	.insn	2, 0x0b99
8000d720:	0c9a                	.insn	2, 0x0c9a
8000d722:	0c440d9b          	.insn	4, 0x0c440d9b
8000d726:	0008                	.insn	2, 0x0008
8000d728:	0030                	.insn	2, 0x0030
8000d72a:	0000                	.insn	2, 0x
8000d72c:	015c                	.insn	2, 0x015c
8000d72e:	0000                	.insn	2, 0x
8000d730:	8ae0                	.insn	2, 0x8ae0
8000d732:	ffff                	.insn	2, 0xffff
8000d734:	07fc                	.insn	2, 0x07fc
8000d736:	0000                	.insn	2, 0x
8000d738:	4400                	.insn	2, 0x4400
8000d73a:	700e                	.insn	2, 0x700e
8000d73c:	8174                	.insn	2, 0x8174
8000d73e:	8801                	.insn	2, 0x8801
8000d740:	8902                	.insn	2, 0x8902
8000d742:	93049203          	lh	tp,-1744(s1) # 7fbff930 <.Lline_table_start2+0x7fbfe582>
8000d746:	9405                	.insn	2, 0x9405
8000d748:	9506                	.insn	2, 0x9506
8000d74a:	97089607          	.insn	4, 0x97089607
8000d74e:	9809                	.insn	2, 0x9809
8000d750:	990a                	.insn	2, 0x990a
8000d752:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000d756:	440d                	.insn	2, 0x440d
8000d758:	080c                	.insn	2, 0x080c
8000d75a:	0000                	.insn	2, 0x
8000d75c:	002c                	.insn	2, 0x002c
8000d75e:	0000                	.insn	2, 0x
8000d760:	0190                	.insn	2, 0x0190
8000d762:	0000                	.insn	2, 0x
8000d764:	92a8                	.insn	2, 0x92a8
8000d766:	ffff                	.insn	2, 0xffff
8000d768:	02e4                	.insn	2, 0x02e4
8000d76a:	0000                	.insn	2, 0x
8000d76c:	4400                	.insn	2, 0x4400
8000d76e:	300e                	.insn	2, 0x300e
8000d770:	8168                	.insn	2, 0x8168
8000d772:	8801                	.insn	2, 0x8801
8000d774:	8902                	.insn	2, 0x8902
8000d776:	93049203          	lh	tp,-1744(s1)
8000d77a:	9405                	.insn	2, 0x9405
8000d77c:	9506                	.insn	2, 0x9506
8000d77e:	97089607          	.insn	4, 0x97089607
8000d782:	9809                	.insn	2, 0x9809
8000d784:	440a                	.insn	2, 0x440a
8000d786:	080c                	.insn	2, 0x080c
8000d788:	0000                	.insn	2, 0x
8000d78a:	0000                	.insn	2, 0x
8000d78c:	001c                	.insn	2, 0x001c
8000d78e:	0000                	.insn	2, 0x
8000d790:	01c0                	.insn	2, 0x01c0
8000d792:	0000                	.insn	2, 0x
8000d794:	955c                	.insn	2, 0x955c
8000d796:	ffff                	.insn	2, 0xffff
8000d798:	0174                	.insn	2, 0x0174
8000d79a:	0000                	.insn	2, 0x
8000d79c:	4400                	.insn	2, 0x4400
8000d79e:	100e                	.insn	2, 0x100e
8000d7a0:	8148                	.insn	2, 0x8148
8000d7a2:	8801                	.insn	2, 0x8801
8000d7a4:	4402                	.insn	2, 0x4402
8000d7a6:	080c                	.insn	2, 0x080c
8000d7a8:	0000                	.insn	2, 0x
8000d7aa:	0000                	.insn	2, 0x
8000d7ac:	001c                	.insn	2, 0x001c
8000d7ae:	0000                	.insn	2, 0x
8000d7b0:	01e0                	.insn	2, 0x01e0
8000d7b2:	0000                	.insn	2, 0x
8000d7b4:	96b0                	.insn	2, 0x96b0
8000d7b6:	ffff                	.insn	2, 0xffff
8000d7b8:	00c8                	.insn	2, 0x00c8
8000d7ba:	0000                	.insn	2, 0x
8000d7bc:	4400                	.insn	2, 0x4400
8000d7be:	400e                	.insn	2, 0x400e
8000d7c0:	814c                	.insn	2, 0x814c
8000d7c2:	8801                	.insn	2, 0x8801
8000d7c4:	8902                	.insn	2, 0x8902
8000d7c6:	080c4403          	lbu	s0,128(s8)
8000d7ca:	0000                	.insn	2, 0x
8000d7cc:	001c                	.insn	2, 0x001c
8000d7ce:	0000                	.insn	2, 0x
8000d7d0:	0200                	.insn	2, 0x0200
8000d7d2:	0000                	.insn	2, 0x
8000d7d4:	9758                	.insn	2, 0x9758
8000d7d6:	ffff                	.insn	2, 0xffff
8000d7d8:	0028                	.insn	2, 0x0028
8000d7da:	0000                	.insn	2, 0x
8000d7dc:	4400                	.insn	2, 0x4400
8000d7de:	100e                	.insn	2, 0x100e
8000d7e0:	8148                	.insn	2, 0x8148
8000d7e2:	8801                	.insn	2, 0x8801
8000d7e4:	4402                	.insn	2, 0x4402
8000d7e6:	080c                	.insn	2, 0x080c
8000d7e8:	0000                	.insn	2, 0x
8000d7ea:	0000                	.insn	2, 0x
8000d7ec:	0024                	.insn	2, 0x0024
8000d7ee:	0000                	.insn	2, 0x
8000d7f0:	0220                	.insn	2, 0x0220
8000d7f2:	0000                	.insn	2, 0x
8000d7f4:	9760                	.insn	2, 0x9760
8000d7f6:	ffff                	.insn	2, 0xffff
8000d7f8:	014c                	.insn	2, 0x014c
8000d7fa:	0000                	.insn	2, 0x
8000d7fc:	4400                	.insn	2, 0x4400
8000d7fe:	500e                	.insn	2, 0x500e
8000d800:	815c                	.insn	2, 0x815c
8000d802:	8801                	.insn	2, 0x8801
8000d804:	8902                	.insn	2, 0x8902
8000d806:	93049203          	lh	tp,-1744(s1)
8000d80a:	9405                	.insn	2, 0x9405
8000d80c:	9506                	.insn	2, 0x9506
8000d80e:	080c4407          	.insn	4, 0x080c4407
8000d812:	0000                	.insn	2, 0x
8000d814:	001c                	.insn	2, 0x001c
8000d816:	0000                	.insn	2, 0x
8000d818:	0248                	.insn	2, 0x0248
8000d81a:	0000                	.insn	2, 0x
8000d81c:	9884                	.insn	2, 0x9884
8000d81e:	ffff                	.insn	2, 0xffff
8000d820:	002c                	.insn	2, 0x002c
8000d822:	0000                	.insn	2, 0x
8000d824:	4400                	.insn	2, 0x4400
8000d826:	200e                	.insn	2, 0x200e
8000d828:	8148                	.insn	2, 0x8148
8000d82a:	8801                	.insn	2, 0x8801
8000d82c:	4402                	.insn	2, 0x4402
8000d82e:	080c                	.insn	2, 0x080c
8000d830:	0000                	.insn	2, 0x
8000d832:	0000                	.insn	2, 0x
8000d834:	001c                	.insn	2, 0x001c
8000d836:	0000                	.insn	2, 0x
8000d838:	0268                	.insn	2, 0x0268
8000d83a:	0000                	.insn	2, 0x
8000d83c:	9890                	.insn	2, 0x9890
8000d83e:	ffff                	.insn	2, 0xffff
8000d840:	0048                	.insn	2, 0x0048
8000d842:	0000                	.insn	2, 0x
8000d844:	4400                	.insn	2, 0x4400
8000d846:	300e                	.insn	2, 0x300e
8000d848:	8148                	.insn	2, 0x8148
8000d84a:	8801                	.insn	2, 0x8801
8000d84c:	4402                	.insn	2, 0x4402
8000d84e:	080c                	.insn	2, 0x080c
8000d850:	0000                	.insn	2, 0x
8000d852:	0000                	.insn	2, 0x
8000d854:	001c                	.insn	2, 0x001c
8000d856:	0000                	.insn	2, 0x
8000d858:	0288                	.insn	2, 0x0288
8000d85a:	0000                	.insn	2, 0x
8000d85c:	98b8                	.insn	2, 0x98b8
8000d85e:	ffff                	.insn	2, 0xffff
8000d860:	006c                	.insn	2, 0x006c
8000d862:	0000                	.insn	2, 0x
8000d864:	4400                	.insn	2, 0x4400
8000d866:	400e                	.insn	2, 0x400e
8000d868:	8148                	.insn	2, 0x8148
8000d86a:	8801                	.insn	2, 0x8801
8000d86c:	4402                	.insn	2, 0x4402
8000d86e:	080c                	.insn	2, 0x080c
8000d870:	0000                	.insn	2, 0x
8000d872:	0000                	.insn	2, 0x
8000d874:	001c                	.insn	2, 0x001c
8000d876:	0000                	.insn	2, 0x
8000d878:	02a8                	.insn	2, 0x02a8
8000d87a:	0000                	.insn	2, 0x
8000d87c:	9904                	.insn	2, 0x9904
8000d87e:	ffff                	.insn	2, 0xffff
8000d880:	0044                	.insn	2, 0x0044
8000d882:	0000                	.insn	2, 0x
8000d884:	4400                	.insn	2, 0x4400
8000d886:	100e                	.insn	2, 0x100e
8000d888:	8148                	.insn	2, 0x8148
8000d88a:	8801                	.insn	2, 0x8801
8000d88c:	4402                	.insn	2, 0x4402
8000d88e:	080c                	.insn	2, 0x080c
8000d890:	0000                	.insn	2, 0x
8000d892:	0000                	.insn	2, 0x
8000d894:	0020                	.insn	2, 0x0020
8000d896:	0000                	.insn	2, 0x
8000d898:	02c8                	.insn	2, 0x02c8
8000d89a:	0000                	.insn	2, 0x
8000d89c:	9928                	.insn	2, 0x9928
8000d89e:	ffff                	.insn	2, 0xffff
8000d8a0:	014c                	.insn	2, 0x014c
8000d8a2:	0000                	.insn	2, 0x
8000d8a4:	4400                	.insn	2, 0x4400
8000d8a6:	800e                	.insn	2, 0x800e
8000d8a8:	5001                	.insn	2, 0x5001
8000d8aa:	0181                	.insn	2, 0x0181
8000d8ac:	0288                	.insn	2, 0x0288
8000d8ae:	0389                	.insn	2, 0x0389
8000d8b0:	0492                	.insn	2, 0x0492
8000d8b2:	0c44                	.insn	2, 0x0c44
8000d8b4:	0008                	.insn	2, 0x0008
8000d8b6:	0000                	.insn	2, 0x
8000d8b8:	001c                	.insn	2, 0x001c
8000d8ba:	0000                	.insn	2, 0x
8000d8bc:	02ec                	.insn	2, 0x02ec
8000d8be:	0000                	.insn	2, 0x
8000d8c0:	9a50                	.insn	2, 0x9a50
8000d8c2:	ffff                	.insn	2, 0xffff
8000d8c4:	007c                	.insn	2, 0x007c
8000d8c6:	0000                	.insn	2, 0x
8000d8c8:	4400                	.insn	2, 0x4400
8000d8ca:	400e                	.insn	2, 0x400e
8000d8cc:	8148                	.insn	2, 0x8148
8000d8ce:	8801                	.insn	2, 0x8801
8000d8d0:	4402                	.insn	2, 0x4402
8000d8d2:	080c                	.insn	2, 0x080c
8000d8d4:	0000                	.insn	2, 0x
8000d8d6:	0000                	.insn	2, 0x
8000d8d8:	0030                	.insn	2, 0x0030
8000d8da:	0000                	.insn	2, 0x
8000d8dc:	030c                	.insn	2, 0x030c
8000d8de:	0000                	.insn	2, 0x
8000d8e0:	9aac                	.insn	2, 0x9aac
8000d8e2:	ffff                	.insn	2, 0xffff
8000d8e4:	029c                	.insn	2, 0x029c
8000d8e6:	0000                	.insn	2, 0x
8000d8e8:	4400                	.insn	2, 0x4400
8000d8ea:	500e                	.insn	2, 0x500e
8000d8ec:	8174                	.insn	2, 0x8174
8000d8ee:	8801                	.insn	2, 0x8801
8000d8f0:	8902                	.insn	2, 0x8902
8000d8f2:	93049203          	lh	tp,-1744(s1)
8000d8f6:	9405                	.insn	2, 0x9405
8000d8f8:	9506                	.insn	2, 0x9506
8000d8fa:	97089607          	.insn	4, 0x97089607
8000d8fe:	9809                	.insn	2, 0x9809
8000d900:	990a                	.insn	2, 0x990a
8000d902:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000d906:	440d                	.insn	2, 0x440d
8000d908:	080c                	.insn	2, 0x080c
8000d90a:	0000                	.insn	2, 0x
8000d90c:	0024                	.insn	2, 0x0024
8000d90e:	0000                	.insn	2, 0x
8000d910:	0340                	.insn	2, 0x0340
8000d912:	0000                	.insn	2, 0x
8000d914:	9d14                	.insn	2, 0x9d14
8000d916:	ffff                	.insn	2, 0xffff
8000d918:	00b4                	.insn	2, 0x00b4
8000d91a:	0000                	.insn	2, 0x
8000d91c:	4400                	.insn	2, 0x4400
8000d91e:	200e                	.insn	2, 0x200e
8000d920:	8158                	.insn	2, 0x8158
8000d922:	8801                	.insn	2, 0x8801
8000d924:	8902                	.insn	2, 0x8902
8000d926:	93049203          	lh	tp,-1744(s1)
8000d92a:	9405                	.insn	2, 0x9405
8000d92c:	4406                	.insn	2, 0x4406
8000d92e:	080c                	.insn	2, 0x080c
8000d930:	0000                	.insn	2, 0x
8000d932:	0000                	.insn	2, 0x
8000d934:	002c                	.insn	2, 0x002c
8000d936:	0000                	.insn	2, 0x
8000d938:	0368                	.insn	2, 0x0368
8000d93a:	0000                	.insn	2, 0x
8000d93c:	9da0                	.insn	2, 0x9da0
8000d93e:	ffff                	.insn	2, 0xffff
8000d940:	023c                	.insn	2, 0x023c
8000d942:	0000                	.insn	2, 0x
8000d944:	4400                	.insn	2, 0x4400
8000d946:	600e                	.insn	2, 0x600e
8000d948:	8168                	.insn	2, 0x8168
8000d94a:	8801                	.insn	2, 0x8801
8000d94c:	8902                	.insn	2, 0x8902
8000d94e:	93049203          	lh	tp,-1744(s1)
8000d952:	9405                	.insn	2, 0x9405
8000d954:	9506                	.insn	2, 0x9506
8000d956:	97089607          	.insn	4, 0x97089607
8000d95a:	9809                	.insn	2, 0x9809
8000d95c:	440a                	.insn	2, 0x440a
8000d95e:	080c                	.insn	2, 0x080c
8000d960:	0000                	.insn	2, 0x
8000d962:	0000                	.insn	2, 0x
8000d964:	0028                	.insn	2, 0x0028
8000d966:	0000                	.insn	2, 0x
8000d968:	0398                	.insn	2, 0x0398
8000d96a:	0000                	.insn	2, 0x
8000d96c:	9fac                	.insn	2, 0x9fac
8000d96e:	ffff                	.insn	2, 0xffff
8000d970:	0374                	.insn	2, 0x0374
8000d972:	0000                	.insn	2, 0x
8000d974:	4400                	.insn	2, 0x4400
8000d976:	900e                	.insn	2, 0x900e
8000d978:	6009                	.insn	2, 0x6009
8000d97a:	0181                	.insn	2, 0x0181
8000d97c:	0288                	.insn	2, 0x0288
8000d97e:	0389                	.insn	2, 0x0389
8000d980:	0492                	.insn	2, 0x0492
8000d982:	06940593          	addi	a1,s0,105
8000d986:	0795                	.insn	2, 0x0795
8000d988:	0896                	.insn	2, 0x0896
8000d98a:	0c44                	.insn	2, 0x0c44
8000d98c:	0008                	.insn	2, 0x0008
8000d98e:	0000                	.insn	2, 0x
8000d990:	0024                	.insn	2, 0x0024
8000d992:	0000                	.insn	2, 0x
8000d994:	03c4                	.insn	2, 0x03c4
8000d996:	0000                	.insn	2, 0x
8000d998:	a2f4                	.insn	2, 0xa2f4
8000d99a:	ffff                	.insn	2, 0xffff
8000d99c:	02a4                	.insn	2, 0x02a4
8000d99e:	0000                	.insn	2, 0x
8000d9a0:	0200                	.insn	2, 0x0200
8000d9a2:	0eb4                	.insn	2, 0x0eb4
8000d9a4:	0190                	.insn	2, 0x0190
8000d9a6:	8158                	.insn	2, 0x8158
8000d9a8:	8801                	.insn	2, 0x8801
8000d9aa:	8902                	.insn	2, 0x8902
8000d9ac:	93049203          	lh	tp,-1744(s1)
8000d9b0:	9405                	.insn	2, 0x9405
8000d9b2:	4406                	.insn	2, 0x4406
8000d9b4:	080c                	.insn	2, 0x080c
8000d9b6:	0000                	.insn	2, 0x
8000d9b8:	001c                	.insn	2, 0x001c
8000d9ba:	0000                	.insn	2, 0x
8000d9bc:	03ec                	.insn	2, 0x03ec
8000d9be:	0000                	.insn	2, 0x
8000d9c0:	a570                	.insn	2, 0xa570
8000d9c2:	ffff                	.insn	2, 0xffff
8000d9c4:	0038                	.insn	2, 0x0038
8000d9c6:	0000                	.insn	2, 0x
8000d9c8:	4400                	.insn	2, 0x4400
8000d9ca:	100e                	.insn	2, 0x100e
8000d9cc:	8148                	.insn	2, 0x8148
8000d9ce:	8801                	.insn	2, 0x8801
8000d9d0:	4402                	.insn	2, 0x4402
8000d9d2:	080c                	.insn	2, 0x080c
8000d9d4:	0000                	.insn	2, 0x
8000d9d6:	0000                	.insn	2, 0x
8000d9d8:	001c                	.insn	2, 0x001c
8000d9da:	0000                	.insn	2, 0x
8000d9dc:	040c                	.insn	2, 0x040c
8000d9de:	0000                	.insn	2, 0x
8000d9e0:	a588                	.insn	2, 0xa588
8000d9e2:	ffff                	.insn	2, 0xffff
8000d9e4:	0038                	.insn	2, 0x0038
8000d9e6:	0000                	.insn	2, 0x
8000d9e8:	4400                	.insn	2, 0x4400
8000d9ea:	100e                	.insn	2, 0x100e
8000d9ec:	8148                	.insn	2, 0x8148
8000d9ee:	8801                	.insn	2, 0x8801
8000d9f0:	4402                	.insn	2, 0x4402
8000d9f2:	080c                	.insn	2, 0x080c
8000d9f4:	0000                	.insn	2, 0x
8000d9f6:	0000                	.insn	2, 0x
8000d9f8:	002c                	.insn	2, 0x002c
8000d9fa:	0000                	.insn	2, 0x
8000d9fc:	042c                	.insn	2, 0x042c
8000d9fe:	0000                	.insn	2, 0x
8000da00:	a5a0                	.insn	2, 0xa5a0
8000da02:	ffff                	.insn	2, 0xffff
8000da04:	0264                	.insn	2, 0x0264
8000da06:	0000                	.insn	2, 0x
8000da08:	4400                	.insn	2, 0x4400
8000da0a:	500e                	.insn	2, 0x500e
8000da0c:	8168                	.insn	2, 0x8168
8000da0e:	8801                	.insn	2, 0x8801
8000da10:	8902                	.insn	2, 0x8902
8000da12:	93049203          	lh	tp,-1744(s1)
8000da16:	9405                	.insn	2, 0x9405
8000da18:	9506                	.insn	2, 0x9506
8000da1a:	97089607          	.insn	4, 0x97089607
8000da1e:	9809                	.insn	2, 0x9809
8000da20:	440a                	.insn	2, 0x440a
8000da22:	080c                	.insn	2, 0x080c
8000da24:	0000                	.insn	2, 0x
8000da26:	0000                	.insn	2, 0x
8000da28:	0030                	.insn	2, 0x0030
8000da2a:	0000                	.insn	2, 0x
8000da2c:	045c                	.insn	2, 0x045c
8000da2e:	0000                	.insn	2, 0x
8000da30:	a7d4                	.insn	2, 0xa7d4
8000da32:	ffff                	.insn	2, 0xffff
8000da34:	0354                	.insn	2, 0x0354
8000da36:	0000                	.insn	2, 0x
8000da38:	4400                	.insn	2, 0x4400
8000da3a:	400e                	.insn	2, 0x400e
8000da3c:	8174                	.insn	2, 0x8174
8000da3e:	8801                	.insn	2, 0x8801
8000da40:	8902                	.insn	2, 0x8902
8000da42:	93049203          	lh	tp,-1744(s1)
8000da46:	9405                	.insn	2, 0x9405
8000da48:	9506                	.insn	2, 0x9506
8000da4a:	97089607          	.insn	4, 0x97089607
8000da4e:	9809                	.insn	2, 0x9809
8000da50:	990a                	.insn	2, 0x990a
8000da52:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000da56:	440d                	.insn	2, 0x440d
8000da58:	080c                	.insn	2, 0x080c
8000da5a:	0000                	.insn	2, 0x
8000da5c:	0024                	.insn	2, 0x0024
8000da5e:	0000                	.insn	2, 0x
8000da60:	0490                	.insn	2, 0x0490
8000da62:	0000                	.insn	2, 0x
8000da64:	aaf4                	.insn	2, 0xaaf4
8000da66:	ffff                	.insn	2, 0xffff
8000da68:	00ac                	.insn	2, 0x00ac
8000da6a:	0000                	.insn	2, 0x
8000da6c:	4400                	.insn	2, 0x4400
8000da6e:	200e                	.insn	2, 0x200e
8000da70:	8158                	.insn	2, 0x8158
8000da72:	8801                	.insn	2, 0x8801
8000da74:	8902                	.insn	2, 0x8902
8000da76:	93049203          	lh	tp,-1744(s1)
8000da7a:	9405                	.insn	2, 0x9405
8000da7c:	4406                	.insn	2, 0x4406
8000da7e:	080c                	.insn	2, 0x080c
8000da80:	0000                	.insn	2, 0x
8000da82:	0000                	.insn	2, 0x
8000da84:	0028                	.insn	2, 0x0028
8000da86:	0000                	.insn	2, 0x
8000da88:	04b8                	.insn	2, 0x04b8
8000da8a:	0000                	.insn	2, 0x
8000da8c:	ab78                	.insn	2, 0xab78
8000da8e:	ffff                	.insn	2, 0xffff
8000da90:	0298                	.insn	2, 0x0298
8000da92:	0000                	.insn	2, 0x
8000da94:	4400                	.insn	2, 0x4400
8000da96:	300e                	.insn	2, 0x300e
8000da98:	8164                	.insn	2, 0x8164
8000da9a:	8801                	.insn	2, 0x8801
8000da9c:	8902                	.insn	2, 0x8902
8000da9e:	93049203          	lh	tp,-1744(s1)
8000daa2:	9405                	.insn	2, 0x9405
8000daa4:	9506                	.insn	2, 0x9506
8000daa6:	97089607          	.insn	4, 0x97089607
8000daaa:	4409                	.insn	2, 0x4409
8000daac:	080c                	.insn	2, 0x080c
8000daae:	0000                	.insn	2, 0x
8000dab0:	0030                	.insn	2, 0x0030
8000dab2:	0000                	.insn	2, 0x
8000dab4:	04e4                	.insn	2, 0x04e4
8000dab6:	0000                	.insn	2, 0x
8000dab8:	ade4                	.insn	2, 0xade4
8000daba:	ffff                	.insn	2, 0xffff
8000dabc:	02a8                	.insn	2, 0x02a8
8000dabe:	0000                	.insn	2, 0x
8000dac0:	4400                	.insn	2, 0x4400
8000dac2:	400e                	.insn	2, 0x400e
8000dac4:	8170                	.insn	2, 0x8170
8000dac6:	8801                	.insn	2, 0x8801
8000dac8:	8902                	.insn	2, 0x8902
8000daca:	93049203          	lh	tp,-1744(s1)
8000dace:	9405                	.insn	2, 0x9405
8000dad0:	9506                	.insn	2, 0x9506
8000dad2:	97089607          	.insn	4, 0x97089607
8000dad6:	9809                	.insn	2, 0x9809
8000dad8:	990a                	.insn	2, 0x990a
8000dada:	440c9a0b          	.insn	4, 0x440c9a0b
8000dade:	080c                	.insn	2, 0x080c
8000dae0:	0000                	.insn	2, 0x
8000dae2:	0000                	.insn	2, 0x
8000dae4:	0030                	.insn	2, 0x0030
8000dae6:	0000                	.insn	2, 0x
8000dae8:	0518                	.insn	2, 0x0518
8000daea:	0000                	.insn	2, 0x
8000daec:	b058                	.insn	2, 0xb058
8000daee:	ffff                	.insn	2, 0xffff
8000daf0:	0204                	.insn	2, 0x0204
8000daf2:	0000                	.insn	2, 0x
8000daf4:	4400                	.insn	2, 0x4400
8000daf6:	400e                	.insn	2, 0x400e
8000daf8:	8174                	.insn	2, 0x8174
8000dafa:	8801                	.insn	2, 0x8801
8000dafc:	8902                	.insn	2, 0x8902
8000dafe:	93049203          	lh	tp,-1744(s1)
8000db02:	9405                	.insn	2, 0x9405
8000db04:	9506                	.insn	2, 0x9506
8000db06:	97089607          	.insn	4, 0x97089607
8000db0a:	9809                	.insn	2, 0x9809
8000db0c:	990a                	.insn	2, 0x990a
8000db0e:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000db12:	440d                	.insn	2, 0x440d
8000db14:	080c                	.insn	2, 0x080c
8000db16:	0000                	.insn	2, 0x
8000db18:	001c                	.insn	2, 0x001c
8000db1a:	0000                	.insn	2, 0x
8000db1c:	054c                	.insn	2, 0x054c
8000db1e:	0000                	.insn	2, 0x
8000db20:	b228                	.insn	2, 0xb228
8000db22:	ffff                	.insn	2, 0xffff
8000db24:	002c                	.insn	2, 0x002c
8000db26:	0000                	.insn	2, 0x
8000db28:	4400                	.insn	2, 0x4400
8000db2a:	100e                	.insn	2, 0x100e
8000db2c:	8148                	.insn	2, 0x8148
8000db2e:	8801                	.insn	2, 0x8801
8000db30:	4402                	.insn	2, 0x4402
8000db32:	080c                	.insn	2, 0x080c
8000db34:	0000                	.insn	2, 0x
8000db36:	0000                	.insn	2, 0x
8000db38:	002c                	.insn	2, 0x002c
8000db3a:	0000                	.insn	2, 0x
8000db3c:	056c                	.insn	2, 0x056c
8000db3e:	0000                	.insn	2, 0x
8000db40:	b234                	.insn	2, 0xb234
8000db42:	ffff                	.insn	2, 0xffff
8000db44:	0144                	.insn	2, 0x0144
8000db46:	0000                	.insn	2, 0x
8000db48:	4400                	.insn	2, 0x4400
8000db4a:	400e                	.insn	2, 0x400e
8000db4c:	816c                	.insn	2, 0x816c
8000db4e:	8801                	.insn	2, 0x8801
8000db50:	8902                	.insn	2, 0x8902
8000db52:	93049203          	lh	tp,-1744(s1)
8000db56:	9405                	.insn	2, 0x9405
8000db58:	9506                	.insn	2, 0x9506
8000db5a:	97089607          	.insn	4, 0x97089607
8000db5e:	9809                	.insn	2, 0x9809
8000db60:	990a                	.insn	2, 0x990a
8000db62:	080c440b          	.insn	4, 0x080c440b
8000db66:	0000                	.insn	2, 0x
8000db68:	0024                	.insn	2, 0x0024
8000db6a:	0000                	.insn	2, 0x
8000db6c:	059c                	.insn	2, 0x059c
8000db6e:	0000                	.insn	2, 0x
8000db70:	b348                	.insn	2, 0xb348
8000db72:	ffff                	.insn	2, 0xffff
8000db74:	00e8                	.insn	2, 0x00e8
8000db76:	0000                	.insn	2, 0x
8000db78:	4400                	.insn	2, 0x4400
8000db7a:	a00e                	.insn	2, 0xa00e
8000db7c:	5801                	.insn	2, 0x5801
8000db7e:	0181                	.insn	2, 0x0181
8000db80:	0288                	.insn	2, 0x0288
8000db82:	0389                	.insn	2, 0x0389
8000db84:	0492                	.insn	2, 0x0492
8000db86:	06940593          	addi	a1,s0,105
8000db8a:	0c44                	.insn	2, 0x0c44
8000db8c:	0008                	.insn	2, 0x0008
8000db8e:	0000                	.insn	2, 0x
8000db90:	001c                	.insn	2, 0x001c
8000db92:	0000                	.insn	2, 0x
8000db94:	05c4                	.insn	2, 0x05c4
8000db96:	0000                	.insn	2, 0x
8000db98:	b408                	.insn	2, 0xb408
8000db9a:	ffff                	.insn	2, 0xffff
8000db9c:	0018                	.insn	2, 0x0018
8000db9e:	0000                	.insn	2, 0x
8000dba0:	4400                	.insn	2, 0x4400
8000dba2:	100e                	.insn	2, 0x100e
8000dba4:	8148                	.insn	2, 0x8148
8000dba6:	8801                	.insn	2, 0x8801
8000dba8:	4402                	.insn	2, 0x4402
8000dbaa:	080c                	.insn	2, 0x080c
8000dbac:	0000                	.insn	2, 0x
8000dbae:	0000                	.insn	2, 0x
8000dbb0:	001c                	.insn	2, 0x001c
8000dbb2:	0000                	.insn	2, 0x
8000dbb4:	05e4                	.insn	2, 0x05e4
8000dbb6:	0000                	.insn	2, 0x
8000dbb8:	b400                	.insn	2, 0xb400
8000dbba:	ffff                	.insn	2, 0xffff
8000dbbc:	0238                	.insn	2, 0x0238
8000dbbe:	0000                	.insn	2, 0x
8000dbc0:	4400                	.insn	2, 0x4400
8000dbc2:	100e                	.insn	2, 0x100e
8000dbc4:	8148                	.insn	2, 0x8148
8000dbc6:	8801                	.insn	2, 0x8801
8000dbc8:	4402                	.insn	2, 0x4402
8000dbca:	080c                	.insn	2, 0x080c
8000dbcc:	0000                	.insn	2, 0x
8000dbce:	0000                	.insn	2, 0x
8000dbd0:	001c                	.insn	2, 0x001c
8000dbd2:	0000                	.insn	2, 0x
8000dbd4:	0604                	.insn	2, 0x0604
8000dbd6:	0000                	.insn	2, 0x
8000dbd8:	b618                	.insn	2, 0xb618
8000dbda:	ffff                	.insn	2, 0xffff
8000dbdc:	0050                	.insn	2, 0x0050
8000dbde:	0000                	.insn	2, 0x
8000dbe0:	4400                	.insn	2, 0x4400
8000dbe2:	100e                	.insn	2, 0x100e
8000dbe4:	8148                	.insn	2, 0x8148
8000dbe6:	8801                	.insn	2, 0x8801
8000dbe8:	4402                	.insn	2, 0x4402
8000dbea:	080c                	.insn	2, 0x080c
8000dbec:	0000                	.insn	2, 0x
8000dbee:	0000                	.insn	2, 0x
8000dbf0:	0024                	.insn	2, 0x0024
8000dbf2:	0000                	.insn	2, 0x
8000dbf4:	0624                	.insn	2, 0x0624
8000dbf6:	0000                	.insn	2, 0x
8000dbf8:	b648                	.insn	2, 0xb648
8000dbfa:	ffff                	.insn	2, 0xffff
8000dbfc:	0204                	.insn	2, 0x0204
8000dbfe:	0000                	.insn	2, 0x
8000dc00:	4400                	.insn	2, 0x4400
8000dc02:	200e                	.insn	2, 0x200e
8000dc04:	815c                	.insn	2, 0x815c
8000dc06:	8801                	.insn	2, 0x8801
8000dc08:	8902                	.insn	2, 0x8902
8000dc0a:	93049203          	lh	tp,-1744(s1)
8000dc0e:	9405                	.insn	2, 0x9405
8000dc10:	9506                	.insn	2, 0x9506
8000dc12:	080c4407          	.insn	4, 0x080c4407
8000dc16:	0000                	.insn	2, 0x
8000dc18:	0030                	.insn	2, 0x0030
8000dc1a:	0000                	.insn	2, 0x
8000dc1c:	064c                	.insn	2, 0x064c
8000dc1e:	0000                	.insn	2, 0x
8000dc20:	b824                	.insn	2, 0xb824
8000dc22:	ffff                	.insn	2, 0xffff
8000dc24:	01f4                	.insn	2, 0x01f4
8000dc26:	0000                	.insn	2, 0x
8000dc28:	4400                	.insn	2, 0x4400
8000dc2a:	500e                	.insn	2, 0x500e
8000dc2c:	8174                	.insn	2, 0x8174
8000dc2e:	8801                	.insn	2, 0x8801
8000dc30:	8902                	.insn	2, 0x8902
8000dc32:	93049203          	lh	tp,-1744(s1)
8000dc36:	9405                	.insn	2, 0x9405
8000dc38:	9506                	.insn	2, 0x9506
8000dc3a:	97089607          	.insn	4, 0x97089607
8000dc3e:	9809                	.insn	2, 0x9809
8000dc40:	990a                	.insn	2, 0x990a
8000dc42:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dc46:	440d                	.insn	2, 0x440d
8000dc48:	080c                	.insn	2, 0x080c
8000dc4a:	0000                	.insn	2, 0x
8000dc4c:	001c                	.insn	2, 0x001c
8000dc4e:	0000                	.insn	2, 0x
8000dc50:	0680                	.insn	2, 0x0680
8000dc52:	0000                	.insn	2, 0x
8000dc54:	b9e4                	.insn	2, 0xb9e4
8000dc56:	ffff                	.insn	2, 0xffff
8000dc58:	00f0                	.insn	2, 0x00f0
8000dc5a:	0000                	.insn	2, 0x
8000dc5c:	4400                	.insn	2, 0x4400
8000dc5e:	900e                	.insn	2, 0x900e
8000dc60:	4801                	.insn	2, 0x4801
8000dc62:	0181                	.insn	2, 0x0181
8000dc64:	0288                	.insn	2, 0x0288
8000dc66:	0c44                	.insn	2, 0x0c44
8000dc68:	0008                	.insn	2, 0x0008
8000dc6a:	0000                	.insn	2, 0x
8000dc6c:	001c                	.insn	2, 0x001c
8000dc6e:	0000                	.insn	2, 0x
8000dc70:	06a0                	.insn	2, 0x06a0
8000dc72:	0000                	.insn	2, 0x
8000dc74:	bab4                	.insn	2, 0xbab4
8000dc76:	ffff                	.insn	2, 0xffff
8000dc78:	0044                	.insn	2, 0x0044
8000dc7a:	0000                	.insn	2, 0x
8000dc7c:	4400                	.insn	2, 0x4400
8000dc7e:	200e                	.insn	2, 0x200e
8000dc80:	8148                	.insn	2, 0x8148
8000dc82:	8801                	.insn	2, 0x8801
8000dc84:	4402                	.insn	2, 0x4402
8000dc86:	080c                	.insn	2, 0x080c
8000dc88:	0000                	.insn	2, 0x
8000dc8a:	0000                	.insn	2, 0x
8000dc8c:	001c                	.insn	2, 0x001c
8000dc8e:	0000                	.insn	2, 0x
8000dc90:	06c0                	.insn	2, 0x06c0
8000dc92:	0000                	.insn	2, 0x
8000dc94:	bad8                	.insn	2, 0xbad8
8000dc96:	ffff                	.insn	2, 0xffff
8000dc98:	005c                	.insn	2, 0x005c
8000dc9a:	0000                	.insn	2, 0x
8000dc9c:	4400                	.insn	2, 0x4400
8000dc9e:	100e                	.insn	2, 0x100e
8000dca0:	8148                	.insn	2, 0x8148
8000dca2:	8801                	.insn	2, 0x8801
8000dca4:	4402                	.insn	2, 0x4402
8000dca6:	080c                	.insn	2, 0x080c
8000dca8:	0000                	.insn	2, 0x
8000dcaa:	0000                	.insn	2, 0x
8000dcac:	001c                	.insn	2, 0x001c
8000dcae:	0000                	.insn	2, 0x
8000dcb0:	06e0                	.insn	2, 0x06e0
8000dcb2:	0000                	.insn	2, 0x
8000dcb4:	bb14                	.insn	2, 0xbb14
8000dcb6:	ffff                	.insn	2, 0xffff
8000dcb8:	0084                	.insn	2, 0x0084
8000dcba:	0000                	.insn	2, 0x
8000dcbc:	4400                	.insn	2, 0x4400
8000dcbe:	900e                	.insn	2, 0x900e
8000dcc0:	4801                	.insn	2, 0x4801
8000dcc2:	0181                	.insn	2, 0x0181
8000dcc4:	0288                	.insn	2, 0x0288
8000dcc6:	0c44                	.insn	2, 0x0c44
8000dcc8:	0008                	.insn	2, 0x0008
8000dcca:	0000                	.insn	2, 0x
8000dccc:	001c                	.insn	2, 0x001c
8000dcce:	0000                	.insn	2, 0x
8000dcd0:	0700                	.insn	2, 0x0700
8000dcd2:	0000                	.insn	2, 0x
8000dcd4:	bb78                	.insn	2, 0xbb78
8000dcd6:	ffff                	.insn	2, 0xffff
8000dcd8:	0084                	.insn	2, 0x0084
8000dcda:	0000                	.insn	2, 0x
8000dcdc:	4400                	.insn	2, 0x4400
8000dcde:	900e                	.insn	2, 0x900e
8000dce0:	4801                	.insn	2, 0x4801
8000dce2:	0181                	.insn	2, 0x0181
8000dce4:	0288                	.insn	2, 0x0288
8000dce6:	0c44                	.insn	2, 0x0c44
8000dce8:	0008                	.insn	2, 0x0008
8000dcea:	0000                	.insn	2, 0x
8000dcec:	001c                	.insn	2, 0x001c
8000dcee:	0000                	.insn	2, 0x
8000dcf0:	0720                	.insn	2, 0x0720
8000dcf2:	0000                	.insn	2, 0x
8000dcf4:	bbdc                	.insn	2, 0xbbdc
8000dcf6:	ffff                	.insn	2, 0xffff
8000dcf8:	00f8                	.insn	2, 0x00f8
8000dcfa:	0000                	.insn	2, 0x
8000dcfc:	4400                	.insn	2, 0x4400
8000dcfe:	900e                	.insn	2, 0x900e
8000dd00:	4801                	.insn	2, 0x4801
8000dd02:	0181                	.insn	2, 0x0181
8000dd04:	0288                	.insn	2, 0x0288
8000dd06:	0c44                	.insn	2, 0x0c44
8000dd08:	0008                	.insn	2, 0x0008
8000dd0a:	0000                	.insn	2, 0x
8000dd0c:	001c                	.insn	2, 0x001c
8000dd0e:	0000                	.insn	2, 0x
8000dd10:	0740                	.insn	2, 0x0740
8000dd12:	0000                	.insn	2, 0x
8000dd14:	bcb4                	.insn	2, 0xbcb4
8000dd16:	ffff                	.insn	2, 0xffff
8000dd18:	0030                	.insn	2, 0x0030
8000dd1a:	0000                	.insn	2, 0x
8000dd1c:	4400                	.insn	2, 0x4400
8000dd1e:	100e                	.insn	2, 0x100e
8000dd20:	8148                	.insn	2, 0x8148
8000dd22:	8801                	.insn	2, 0x8801
8000dd24:	4402                	.insn	2, 0x4402
8000dd26:	080c                	.insn	2, 0x080c
8000dd28:	0000                	.insn	2, 0x
8000dd2a:	0000                	.insn	2, 0x
8000dd2c:	0030                	.insn	2, 0x0030
8000dd2e:	0000                	.insn	2, 0x
8000dd30:	0760                	.insn	2, 0x0760
8000dd32:	0000                	.insn	2, 0x
8000dd34:	bcc4                	.insn	2, 0xbcc4
8000dd36:	ffff                	.insn	2, 0xffff
8000dd38:	022c                	.insn	2, 0x022c
8000dd3a:	0000                	.insn	2, 0x
8000dd3c:	4400                	.insn	2, 0x4400
8000dd3e:	500e                	.insn	2, 0x500e
8000dd40:	8174                	.insn	2, 0x8174
8000dd42:	8801                	.insn	2, 0x8801
8000dd44:	8902                	.insn	2, 0x8902
8000dd46:	93049203          	lh	tp,-1744(s1)
8000dd4a:	9405                	.insn	2, 0x9405
8000dd4c:	9506                	.insn	2, 0x9506
8000dd4e:	97089607          	.insn	4, 0x97089607
8000dd52:	9809                	.insn	2, 0x9809
8000dd54:	990a                	.insn	2, 0x990a
8000dd56:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dd5a:	440d                	.insn	2, 0x440d
8000dd5c:	080c                	.insn	2, 0x080c
8000dd5e:	0000                	.insn	2, 0x
8000dd60:	0030                	.insn	2, 0x0030
8000dd62:	0000                	.insn	2, 0x
8000dd64:	0794                	.insn	2, 0x0794
8000dd66:	0000                	.insn	2, 0x
8000dd68:	bebc                	.insn	2, 0xbebc
8000dd6a:	ffff                	.insn	2, 0xffff
8000dd6c:	0268                	.insn	2, 0x0268
8000dd6e:	0000                	.insn	2, 0x
8000dd70:	4400                	.insn	2, 0x4400
8000dd72:	500e                	.insn	2, 0x500e
8000dd74:	8174                	.insn	2, 0x8174
8000dd76:	8801                	.insn	2, 0x8801
8000dd78:	8902                	.insn	2, 0x8902
8000dd7a:	93049203          	lh	tp,-1744(s1)
8000dd7e:	9405                	.insn	2, 0x9405
8000dd80:	9506                	.insn	2, 0x9506
8000dd82:	97089607          	.insn	4, 0x97089607
8000dd86:	9809                	.insn	2, 0x9809
8000dd88:	990a                	.insn	2, 0x990a
8000dd8a:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dd8e:	440d                	.insn	2, 0x440d
8000dd90:	080c                	.insn	2, 0x080c
8000dd92:	0000                	.insn	2, 0x
8000dd94:	001c                	.insn	2, 0x001c
8000dd96:	0000                	.insn	2, 0x
8000dd98:	07c8                	.insn	2, 0x07c8
8000dd9a:	0000                	.insn	2, 0x
8000dd9c:	c0f0                	.insn	2, 0xc0f0
8000dd9e:	ffff                	.insn	2, 0xffff
8000dda0:	002c                	.insn	2, 0x002c
8000dda2:	0000                	.insn	2, 0x
8000dda4:	4400                	.insn	2, 0x4400
8000dda6:	100e                	.insn	2, 0x100e
8000dda8:	8148                	.insn	2, 0x8148
8000ddaa:	8801                	.insn	2, 0x8801
8000ddac:	4402                	.insn	2, 0x4402
8000ddae:	080c                	.insn	2, 0x080c
8000ddb0:	0000                	.insn	2, 0x
8000ddb2:	0000                	.insn	2, 0x
8000ddb4:	001c                	.insn	2, 0x001c
8000ddb6:	0000                	.insn	2, 0x
8000ddb8:	07e8                	.insn	2, 0x07e8
8000ddba:	0000                	.insn	2, 0x
8000ddbc:	c0fc                	.insn	2, 0xc0fc
8000ddbe:	ffff                	.insn	2, 0xffff
8000ddc0:	0118                	.insn	2, 0x0118
8000ddc2:	0000                	.insn	2, 0x
8000ddc4:	4400                	.insn	2, 0x4400
8000ddc6:	900e                	.insn	2, 0x900e
8000ddc8:	4801                	.insn	2, 0x4801
8000ddca:	0181                	.insn	2, 0x0181
8000ddcc:	0288                	.insn	2, 0x0288
8000ddce:	0c44                	.insn	2, 0x0c44
8000ddd0:	0008                	.insn	2, 0x0008
8000ddd2:	0000                	.insn	2, 0x
8000ddd4:	001c                	.insn	2, 0x001c
8000ddd6:	0000                	.insn	2, 0x
8000ddd8:	0808                	.insn	2, 0x0808
8000ddda:	0000                	.insn	2, 0x
8000dddc:	c1f4                	.insn	2, 0xc1f4
8000ddde:	ffff                	.insn	2, 0xffff
8000dde0:	0034                	.insn	2, 0x0034
8000dde2:	0000                	.insn	2, 0x
8000dde4:	4400                	.insn	2, 0x4400
8000dde6:	100e                	.insn	2, 0x100e
8000dde8:	8148                	.insn	2, 0x8148
8000ddea:	8801                	.insn	2, 0x8801
8000ddec:	4402                	.insn	2, 0x4402
8000ddee:	080c                	.insn	2, 0x080c
8000ddf0:	0000                	.insn	2, 0x
8000ddf2:	0000                	.insn	2, 0x
8000ddf4:	001c                	.insn	2, 0x001c
8000ddf6:	0000                	.insn	2, 0x
8000ddf8:	0828                	.insn	2, 0x0828
8000ddfa:	0000                	.insn	2, 0x
8000ddfc:	c208                	.insn	2, 0xc208
8000ddfe:	ffff                	.insn	2, 0xffff
8000de00:	006c                	.insn	2, 0x006c
8000de02:	0000                	.insn	2, 0x
8000de04:	4400                	.insn	2, 0x4400
8000de06:	400e                	.insn	2, 0x400e
8000de08:	8148                	.insn	2, 0x8148
8000de0a:	8801                	.insn	2, 0x8801
8000de0c:	4402                	.insn	2, 0x4402
8000de0e:	080c                	.insn	2, 0x080c
8000de10:	0000                	.insn	2, 0x
8000de12:	0000                	.insn	2, 0x
8000de14:	001c                	.insn	2, 0x001c
8000de16:	0000                	.insn	2, 0x
8000de18:	0848                	.insn	2, 0x0848
8000de1a:	0000                	.insn	2, 0x
8000de1c:	c254                	.insn	2, 0xc254
8000de1e:	ffff                	.insn	2, 0xffff
8000de20:	0048                	.insn	2, 0x0048
8000de22:	0000                	.insn	2, 0x
8000de24:	4400                	.insn	2, 0x4400
8000de26:	100e                	.insn	2, 0x100e
8000de28:	8148                	.insn	2, 0x8148
8000de2a:	8801                	.insn	2, 0x8801
8000de2c:	4402                	.insn	2, 0x4402
8000de2e:	080c                	.insn	2, 0x080c
8000de30:	0000                	.insn	2, 0x
8000de32:	0000                	.insn	2, 0x
8000de34:	001c                	.insn	2, 0x001c
8000de36:	0000                	.insn	2, 0x
8000de38:	0868                	.insn	2, 0x0868
8000de3a:	0000                	.insn	2, 0x
8000de3c:	c27c                	.insn	2, 0xc27c
8000de3e:	ffff                	.insn	2, 0xffff
8000de40:	0088                	.insn	2, 0x0088
8000de42:	0000                	.insn	2, 0x
8000de44:	4400                	.insn	2, 0x4400
8000de46:	100e                	.insn	2, 0x100e
8000de48:	8148                	.insn	2, 0x8148
8000de4a:	8801                	.insn	2, 0x8801
8000de4c:	4402                	.insn	2, 0x4402
8000de4e:	080c                	.insn	2, 0x080c
8000de50:	0000                	.insn	2, 0x
8000de52:	0000                	.insn	2, 0x
8000de54:	001c                	.insn	2, 0x001c
8000de56:	0000                	.insn	2, 0x
8000de58:	0888                	.insn	2, 0x0888
8000de5a:	0000                	.insn	2, 0x
8000de5c:	c2e4                	.insn	2, 0xc2e4
8000de5e:	ffff                	.insn	2, 0xffff
8000de60:	0110                	.insn	2, 0x0110
8000de62:	0000                	.insn	2, 0x
8000de64:	4400                	.insn	2, 0x4400
8000de66:	100e                	.insn	2, 0x100e
8000de68:	8148                	.insn	2, 0x8148
8000de6a:	8801                	.insn	2, 0x8801
8000de6c:	4402                	.insn	2, 0x4402
8000de6e:	080c                	.insn	2, 0x080c
8000de70:	0000                	.insn	2, 0x
8000de72:	0000                	.insn	2, 0x
8000de74:	001c                	.insn	2, 0x001c
8000de76:	0000                	.insn	2, 0x
8000de78:	08a8                	.insn	2, 0x08a8
8000de7a:	0000                	.insn	2, 0x
8000de7c:	c3d4                	.insn	2, 0xc3d4
8000de7e:	ffff                	.insn	2, 0xffff
8000de80:	0024                	.insn	2, 0x0024
8000de82:	0000                	.insn	2, 0x
8000de84:	4400                	.insn	2, 0x4400
8000de86:	100e                	.insn	2, 0x100e
8000de88:	8148                	.insn	2, 0x8148
8000de8a:	8801                	.insn	2, 0x8801
8000de8c:	4402                	.insn	2, 0x4402
8000de8e:	080c                	.insn	2, 0x080c
8000de90:	0000                	.insn	2, 0x
8000de92:	0000                	.insn	2, 0x
8000de94:	001c                	.insn	2, 0x001c
8000de96:	0000                	.insn	2, 0x
8000de98:	08c8                	.insn	2, 0x08c8
8000de9a:	0000                	.insn	2, 0x
8000de9c:	c3d8                	.insn	2, 0xc3d8
8000de9e:	ffff                	.insn	2, 0xffff
8000dea0:	03c4                	.insn	2, 0x03c4
8000dea2:	0000                	.insn	2, 0x
8000dea4:	4400                	.insn	2, 0x4400
8000dea6:	100e                	.insn	2, 0x100e
8000dea8:	8148                	.insn	2, 0x8148
8000deaa:	8801                	.insn	2, 0x8801
8000deac:	4402                	.insn	2, 0x4402
8000deae:	080c                	.insn	2, 0x080c
8000deb0:	0000                	.insn	2, 0x
8000deb2:	0000                	.insn	2, 0x
8000deb4:	0028                	.insn	2, 0x0028
8000deb6:	0000                	.insn	2, 0x
8000deb8:	08e8                	.insn	2, 0x08e8
8000deba:	0000                	.insn	2, 0x
8000debc:	c77c                	.insn	2, 0xc77c
8000debe:	ffff                	.insn	2, 0xffff
8000dec0:	04b4                	.insn	2, 0x04b4
8000dec2:	0000                	.insn	2, 0x
8000dec4:	4400                	.insn	2, 0x4400
8000dec6:	300e                	.insn	2, 0x300e
8000dec8:	8164                	.insn	2, 0x8164
8000deca:	8801                	.insn	2, 0x8801
8000decc:	8902                	.insn	2, 0x8902
8000dece:	93049203          	lh	tp,-1744(s1)
8000ded2:	9405                	.insn	2, 0x9405
8000ded4:	9506                	.insn	2, 0x9506
8000ded6:	97089607          	.insn	4, 0x97089607
8000deda:	4409                	.insn	2, 0x4409
8000dedc:	080c                	.insn	2, 0x080c
8000dede:	0000                	.insn	2, 0x
8000dee0:	001c                	.insn	2, 0x001c
8000dee2:	0000                	.insn	2, 0x
8000dee4:	0914                	.insn	2, 0x0914
8000dee6:	0000                	.insn	2, 0x
8000dee8:	cc04                	.insn	2, 0xcc04
8000deea:	ffff                	.insn	2, 0xffff
8000deec:	0144                	.insn	2, 0x0144
8000deee:	0000                	.insn	2, 0x
8000def0:	4400                	.insn	2, 0x4400
8000def2:	100e                	.insn	2, 0x100e
8000def4:	8148                	.insn	2, 0x8148
8000def6:	8801                	.insn	2, 0x8801
8000def8:	4402                	.insn	2, 0x4402
8000defa:	080c                	.insn	2, 0x080c
8000defc:	0000                	.insn	2, 0x
8000defe:	0000                	.insn	2, 0x
8000df00:	001c                	.insn	2, 0x001c
8000df02:	0000                	.insn	2, 0x
8000df04:	0934                	.insn	2, 0x0934
8000df06:	0000                	.insn	2, 0x
8000df08:	cd28                	.insn	2, 0xcd28
8000df0a:	ffff                	.insn	2, 0xffff
8000df0c:	0024                	.insn	2, 0x0024
8000df0e:	0000                	.insn	2, 0x
8000df10:	4400                	.insn	2, 0x4400
8000df12:	100e                	.insn	2, 0x100e
8000df14:	8148                	.insn	2, 0x8148
8000df16:	8801                	.insn	2, 0x8801
8000df18:	4402                	.insn	2, 0x4402
8000df1a:	080c                	.insn	2, 0x080c
8000df1c:	0000                	.insn	2, 0x
8000df1e:	0000                	.insn	2, 0x
8000df20:	001c                	.insn	2, 0x001c
8000df22:	0000                	.insn	2, 0x
8000df24:	0954                	.insn	2, 0x0954
8000df26:	0000                	.insn	2, 0x
8000df28:	cd2c                	.insn	2, 0xcd2c
8000df2a:	ffff                	.insn	2, 0xffff
8000df2c:	0044                	.insn	2, 0x0044
8000df2e:	0000                	.insn	2, 0x
8000df30:	4400                	.insn	2, 0x4400
8000df32:	200e                	.insn	2, 0x200e
8000df34:	8148                	.insn	2, 0x8148
8000df36:	8801                	.insn	2, 0x8801
8000df38:	4402                	.insn	2, 0x4402
8000df3a:	080c                	.insn	2, 0x080c
8000df3c:	0000                	.insn	2, 0x
8000df3e:	0000                	.insn	2, 0x
8000df40:	001c                	.insn	2, 0x001c
8000df42:	0000                	.insn	2, 0x
8000df44:	0974                	.insn	2, 0x0974
8000df46:	0000                	.insn	2, 0x
8000df48:	cd50                	.insn	2, 0xcd50
8000df4a:	ffff                	.insn	2, 0xffff
8000df4c:	0024                	.insn	2, 0x0024
8000df4e:	0000                	.insn	2, 0x
8000df50:	4400                	.insn	2, 0x4400
8000df52:	100e                	.insn	2, 0x100e
8000df54:	8148                	.insn	2, 0x8148
8000df56:	8801                	.insn	2, 0x8801
8000df58:	4402                	.insn	2, 0x4402
8000df5a:	080c                	.insn	2, 0x080c
8000df5c:	0000                	.insn	2, 0x
8000df5e:	0000                	.insn	2, 0x
8000df60:	0024                	.insn	2, 0x0024
8000df62:	0000                	.insn	2, 0x
8000df64:	0994                	.insn	2, 0x0994
8000df66:	0000                	.insn	2, 0x
8000df68:	cd54                	.insn	2, 0xcd54
8000df6a:	ffff                	.insn	2, 0xffff
8000df6c:	0310                	.insn	2, 0x0310
8000df6e:	0000                	.insn	2, 0x
8000df70:	4400                	.insn	2, 0x4400
8000df72:	200e                	.insn	2, 0x200e
8000df74:	815c                	.insn	2, 0x815c
8000df76:	8801                	.insn	2, 0x8801
8000df78:	8902                	.insn	2, 0x8902
8000df7a:	93049203          	lh	tp,-1744(s1)
8000df7e:	9405                	.insn	2, 0x9405
8000df80:	9506                	.insn	2, 0x9506
8000df82:	080c4407          	.insn	4, 0x080c4407
8000df86:	0000                	.insn	2, 0x
8000df88:	0024                	.insn	2, 0x0024
8000df8a:	0000                	.insn	2, 0x
8000df8c:	09bc                	.insn	2, 0x09bc
8000df8e:	0000                	.insn	2, 0x
8000df90:	d03c                	.insn	2, 0xd03c
8000df92:	ffff                	.insn	2, 0xffff
8000df94:	00d8                	.insn	2, 0x00d8
8000df96:	0000                	.insn	2, 0x
8000df98:	4400                	.insn	2, 0x4400
8000df9a:	200e                	.insn	2, 0x200e
8000df9c:	8158                	.insn	2, 0x8158
8000df9e:	8801                	.insn	2, 0x8801
8000dfa0:	8902                	.insn	2, 0x8902
8000dfa2:	93049203          	lh	tp,-1744(s1)
8000dfa6:	9405                	.insn	2, 0x9405
8000dfa8:	4406                	.insn	2, 0x4406
8000dfaa:	080c                	.insn	2, 0x080c
8000dfac:	0000                	.insn	2, 0x
8000dfae:	0000                	.insn	2, 0x
8000dfb0:	0020                	.insn	2, 0x0020
8000dfb2:	0000                	.insn	2, 0x
8000dfb4:	09e4                	.insn	2, 0x09e4
8000dfb6:	0000                	.insn	2, 0x
8000dfb8:	d0ec                	.insn	2, 0xd0ec
8000dfba:	ffff                	.insn	2, 0xffff
8000dfbc:	0064                	.insn	2, 0x0064
8000dfbe:	0000                	.insn	2, 0x
8000dfc0:	4400                	.insn	2, 0x4400
8000dfc2:	100e                	.insn	2, 0x100e
8000dfc4:	8150                	.insn	2, 0x8150
8000dfc6:	8801                	.insn	2, 0x8801
8000dfc8:	8902                	.insn	2, 0x8902
8000dfca:	44049203          	lh	tp,1088(s1)
8000dfce:	080c                	.insn	2, 0x080c
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
  16:	63656863          	bltu	a0,s6,646 <.Lline_table_start1+0x2f0>
  1a:	74756f6b          	.insn	4, 0x74756f6b
  1e:	6372732f          	.insn	4, 0x6372732f
  22:	766c6c2f          	.insn	4, 0x766c6c2f
  26:	2d6d                	.insn	2, 0x2d6d
  28:	7270                	.insn	2, 0x7270
  2a:	63656a6f          	jal	s4,56660 <.Lline_table_start2+0x552b2>
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
   0:	2541                	.insn	2, 0x2541
   2:	0000                	.insn	2, 0x
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <.Lline_table_start0+0x14>
   c:	0000001b          	.insn	4, 0x001b
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3376                	.insn	2, 0x3376
  16:	6932                	.insn	2, 0x6932
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	697a                	.insn	2, 0x697a
  1e:	6d6f6263          	bltu	t5,s6,6e2 <.Lline_table_start1+0x38c>
  22:	7031                	.insn	2, 0x7031
  24:	0030                	.insn	2, 0x0030
