
./rust/target/riscv32i-unknown-none-elf/release/SuperOS:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	0000e297          	auipc	t0,0xe
80000004:	51c28293          	addi	t0,t0,1308 # 8000e51c <__bss_start>

80000008 <.Lpcrel_hi1>:
80000008:	0000f317          	auipc	t1,0xf
8000000c:	54130313          	addi	t1,t1,1345 # 8000f549 <__bss_end>
80000010:	0062f863          	bgeu	t0,t1,80000020 <.Lpcrel_hi2>

80000014 <.bss_zero_loop>:
80000014:	00028023          	sb	zero,0(t0)
80000018:	00128293          	addi	t0,t0,1
8000001c:	fe62ece3          	bltu	t0,t1,80000014 <.bss_zero_loop>

80000020 <.Lpcrel_hi2>:
80000020:	0000f117          	auipc	sp,0xf
80000024:	50010113          	addi	sp,sp,1280 # 8000f520 <.L_MergedGlobals>
80000028:	468000ef          	jal	80000490 <kernel_main>

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

800001d4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9288a8e7b9f7dc40E>:
800001d4:	00052503          	lw	a0,0(a0)
800001d8:	00007317          	auipc	t1,0x7
800001dc:	bfc30067          	jr	-1028(t1) # 80006dd4 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17h875dc6dfbc985940E>

800001e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9dfb0e157a6aac3eE>:
800001e0:	00052503          	lw	a0,0(a0)
800001e4:	00007317          	auipc	t1,0x7
800001e8:	ce030067          	jr	-800(t1) # 80006ec4 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h7f9cc71eb05fbab2E>

800001ec <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc90e1d1ec0684989E>:
800001ec:	0085a603          	lw	a2,8(a1)
800001f0:	00661693          	slli	a3,a2,0x6
800001f4:	0006ca63          	bltz	a3,80000208 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc90e1d1ec0684989E+0x1c>
800001f8:	00561613          	slli	a2,a2,0x5
800001fc:	00064a63          	bltz	a2,80000210 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc90e1d1ec0684989E+0x24>
80000200:	0000a317          	auipc	t1,0xa
80000204:	a1430067          	jr	-1516(t1) # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
80000208:	00009317          	auipc	t1,0x9
8000020c:	65430067          	jr	1620(t1) # 8000985c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E>
80000210:	00009317          	auipc	t1,0x9
80000214:	6e430067          	jr	1764(t1) # 800098f4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6f764a74d3e4708cE>

80000218 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE>:
80000218:	ff010113          	addi	sp,sp,-16
8000021c:	08000513          	li	a0,128
80000220:	00012623          	sw	zero,12(sp)
80000224:	00a5f863          	bgeu	a1,a0,80000234 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0x1c>
80000228:	00d10513          	addi	a0,sp,13
8000022c:	00b10623          	sb	a1,12(sp)
80000230:	0a00006f          	j	800002d0 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0xb8>
80000234:	00b5d513          	srli	a0,a1,0xb
80000238:	02051263          	bnez	a0,8000025c <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0x44>
8000023c:	00e10513          	addi	a0,sp,14
80000240:	0065d613          	srli	a2,a1,0x6
80000244:	03f5f593          	andi	a1,a1,63
80000248:	0c066613          	ori	a2,a2,192
8000024c:	08058593          	addi	a1,a1,128
80000250:	00c10623          	sb	a2,12(sp)
80000254:	00b106a3          	sb	a1,13(sp)
80000258:	0780006f          	j	800002d0 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0xb8>
8000025c:	0105d513          	srli	a0,a1,0x10
80000260:	02051a63          	bnez	a0,80000294 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0x7c>
80000264:	00f10513          	addi	a0,sp,15
80000268:	00c5d613          	srli	a2,a1,0xc
8000026c:	01459693          	slli	a3,a1,0x14
80000270:	03f5f593          	andi	a1,a1,63
80000274:	0e066613          	ori	a2,a2,224
80000278:	01a6d693          	srli	a3,a3,0x1a
8000027c:	08058593          	addi	a1,a1,128
80000280:	08068693          	addi	a3,a3,128
80000284:	00c10623          	sb	a2,12(sp)
80000288:	00d106a3          	sb	a3,13(sp)
8000028c:	00b10723          	sb	a1,14(sp)
80000290:	0400006f          	j	800002d0 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0xb8>
80000294:	01010513          	addi	a0,sp,16
80000298:	0125d613          	srli	a2,a1,0x12
8000029c:	00e59693          	slli	a3,a1,0xe
800002a0:	01459713          	slli	a4,a1,0x14
800002a4:	03f5f593          	andi	a1,a1,63
800002a8:	0f066613          	ori	a2,a2,240
800002ac:	01a6d693          	srli	a3,a3,0x1a
800002b0:	01a75713          	srli	a4,a4,0x1a
800002b4:	08058593          	addi	a1,a1,128
800002b8:	08068693          	addi	a3,a3,128
800002bc:	08070713          	addi	a4,a4,128
800002c0:	00c10623          	sb	a2,12(sp)
800002c4:	00d106a3          	sb	a3,13(sp)
800002c8:	00e10723          	sb	a4,14(sp)
800002cc:	00b107a3          	sb	a1,15(sp)
800002d0:	00c10613          	addi	a2,sp,12
800002d4:	100005b7          	lui	a1,0x10000
800002d8:	00064683          	lbu	a3,0(a2)
800002dc:	00160713          	addi	a4,a2,1
800002e0:	00d58023          	sb	a3,0(a1) # 10000000 <.Lline_table_start2+0xfffe7c6>
800002e4:	00070613          	mv	a2,a4
800002e8:	fea718e3          	bne	a4,a0,800002d8 <_ZN4core3fmt5Write10write_char17h766803c327486c3bE+0xc0>
800002ec:	00000513          	li	a0,0
800002f0:	01010113          	addi	sp,sp,16
800002f4:	00008067          	ret

800002f8 <_ZN4core3fmt5Write9write_fmt17h05a407f5f3d7e889E>:
800002f8:	00058613          	mv	a2,a1
800002fc:	8000c5b7          	lui	a1,0x8000c
80000300:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000304:	00008317          	auipc	t1,0x8
80000308:	bdc30067          	jr	-1060(t1) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>

8000030c <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b1d5344f4b74adbE>:
8000030c:	00052503          	lw	a0,0(a0)
80000310:	00009317          	auipc	t1,0x9
80000314:	b3c30067          	jr	-1220(t1) # 80008e4c <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE>

80000318 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb6d6b3b14f1e891E>:
80000318:	8000c6b7          	lui	a3,0x8000c
8000031c:	00068693          	mv	a3,a3
80000320:	00500613          	li	a2,5
80000324:	00058513          	mv	a0,a1
80000328:	00068593          	mv	a1,a3
8000032c:	00009317          	auipc	t1,0x9
80000330:	9b030067          	jr	-1616(t1) # 80008cdc <_ZN4core3fmt9Formatter9write_str17h2bacd4d389941491E>

80000334 <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hd36fc3f43d711df6E>:
80000334:	fe010113          	addi	sp,sp,-32
80000338:	00112e23          	sw	ra,28(sp)
8000033c:	00058293          	mv	t0,a1
80000340:	00450793          	addi	a5,a0,4
80000344:	00a12c23          	sw	a0,24(sp)
80000348:	8000c537          	lui	a0,0x8000c
8000034c:	01850513          	addi	a0,a0,24 # 8000c018 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.3>
80000350:	01810313          	addi	t1,sp,24
80000354:	00500393          	li	t2,5
80000358:	8000c5b7          	lui	a1,0x8000c
8000035c:	02858593          	addi	a1,a1,40 # 8000c028 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.4>
80000360:	8000c6b7          	lui	a3,0x8000c
80000364:	03268693          	addi	a3,a3,50 # 8000c032 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.4+0xa>
80000368:	8000c837          	lui	a6,0x8000c
8000036c:	00880813          	addi	a6,a6,8 # 8000c008 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.2>
80000370:	8000c8b7          	lui	a7,0x8000c
80000374:	03688893          	addi	a7,a7,54 # 8000c036 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.6>
80000378:	00600613          	li	a2,6
8000037c:	00400713          	li	a4,4
80000380:	00712023          	sw	t2,0(sp)
80000384:	00612223          	sw	t1,4(sp)
80000388:	00a12423          	sw	a0,8(sp)
8000038c:	00028513          	mv	a0,t0
80000390:	00009097          	auipc	ra,0x9
80000394:	978080e7          	jalr	-1672(ra) # 80008d08 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h82b151015ae7f07eE>
80000398:	01c12083          	lw	ra,28(sp)
8000039c:	02010113          	addi	sp,sp,32
800003a0:	00008067          	ret

800003a4 <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17ha60309d5e41be102E>:
800003a4:	00054503          	lbu	a0,0(a0)
800003a8:	8000c637          	lui	a2,0x8000c
800003ac:	4fc60613          	addi	a2,a2,1276 # 8000c4fc <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17ha60309d5e41be102E>
800003b0:	8000c6b7          	lui	a3,0x8000c
800003b4:	53868693          	addi	a3,a3,1336 # 8000c538 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17ha60309d5e41be102E.9>
800003b8:	00251513          	slli	a0,a0,0x2
800003bc:	00a60633          	add	a2,a2,a0
800003c0:	00a68533          	add	a0,a3,a0
800003c4:	00062603          	lw	a2,0(a2)
800003c8:	00052683          	lw	a3,0(a0)
800003cc:	00058513          	mv	a0,a1
800003d0:	00068593          	mv	a1,a3
800003d4:	00009317          	auipc	t1,0x9
800003d8:	90830067          	jr	-1784(t1) # 80008cdc <_ZN4core3fmt9Formatter9write_str17h2bacd4d389941491E>

800003dc <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h1dfa1eea624d990fE>:
800003dc:	00060e63          	beqz	a2,800003f8 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h1dfa1eea624d990fE+0x1c>
800003e0:	10000537          	lui	a0,0x10000
800003e4:	0005c683          	lbu	a3,0(a1)
800003e8:	00158593          	addi	a1,a1,1
800003ec:	fff60613          	addi	a2,a2,-1
800003f0:	00d50023          	sb	a3,0(a0) # 10000000 <.Lline_table_start2+0xfffe7c6>
800003f4:	fe0618e3          	bnez	a2,800003e4 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h1dfa1eea624d990fE+0x8>
800003f8:	00000513          	li	a0,0
800003fc:	00008067          	ret

80000400 <_RNvCs77YZ1zEOoxS_7___rustc17rust_begin_unwind>:
80000400:	fd010113          	addi	sp,sp,-48
80000404:	02112623          	sw	ra,44(sp)
80000408:	00a12223          	sw	a0,4(sp)
8000040c:	00410513          	addi	a0,sp,4
80000410:	800005b7          	lui	a1,0x80000
80000414:	1e058593          	addi	a1,a1,480 # 800001e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9dfb0e157a6aac3eE>
80000418:	8000c637          	lui	a2,0x8000c
8000041c:	46060613          	addi	a2,a2,1120 # 8000c460 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.69>
80000420:	00200693          	li	a3,2
80000424:	00012c23          	sw	zero,24(sp)
80000428:	02010713          	addi	a4,sp,32
8000042c:	02a12023          	sw	a0,32(sp)
80000430:	02b12223          	sw	a1,36(sp)
80000434:	00100513          	li	a0,1
80000438:	00c12423          	sw	a2,8(sp)
8000043c:	00d12623          	sw	a3,12(sp)
80000440:	00e12823          	sw	a4,16(sp)
80000444:	00a12a23          	sw	a0,20(sp)
80000448:	8000c5b7          	lui	a1,0x8000c
8000044c:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000450:	02b10513          	addi	a0,sp,43
80000454:	00810613          	addi	a2,sp,8
80000458:	00008097          	auipc	ra,0x8
8000045c:	a88080e7          	jalr	-1400(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000460:	00051463          	bnez	a0,80000468 <_RNvCs77YZ1zEOoxS_7___rustc17rust_begin_unwind+0x68>
80000464:	0000006f          	j	80000464 <_RNvCs77YZ1zEOoxS_7___rustc17rust_begin_unwind+0x64>
80000468:	8000c537          	lui	a0,0x8000c
8000046c:	17450513          	addi	a0,a0,372 # 8000c174 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.24>
80000470:	8000c6b7          	lui	a3,0x8000c
80000474:	16468693          	addi	a3,a3,356 # 8000c164 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.23>
80000478:	8000c737          	lui	a4,0x8000c
8000047c:	1b070713          	addi	a4,a4,432 # 8000c1b0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.26>
80000480:	02b00593          	li	a1,43
80000484:	02b10613          	addi	a2,sp,43
80000488:	00007097          	auipc	ra,0x7
8000048c:	df0080e7          	jalr	-528(ra) # 80007278 <_ZN4core6result13unwrap_failed17hec5fc5af20fc7d85E>

80000490 <kernel_main>:
80000490:	f1010113          	addi	sp,sp,-240
80000494:	0e112623          	sw	ra,236(sp)
80000498:	0e812423          	sw	s0,232(sp)
8000049c:	0e912223          	sw	s1,228(sp)
800004a0:	0f212023          	sw	s2,224(sp)
800004a4:	0d312e23          	sw	s3,220(sp)
800004a8:	0d412c23          	sw	s4,216(sp)
800004ac:	0d512a23          	sw	s5,212(sp)
800004b0:	0d612823          	sw	s6,208(sp)
800004b4:	0d712623          	sw	s7,204(sp)
800004b8:	0d812423          	sw	s8,200(sp)
800004bc:	0d912223          	sw	s9,196(sp)
800004c0:	0da12023          	sw	s10,192(sp)
800004c4:	0bb12e23          	sw	s11,188(sp)
800004c8:	10000537          	lui	a0,0x10000
800004cc:	07300893          	li	a7,115
800004d0:	07400613          	li	a2,116
800004d4:	06100713          	li	a4,97
800004d8:	07200593          	li	a1,114
800004dc:	06500813          	li	a6,101
800004e0:	06400793          	li	a5,100
800004e4:	02100293          	li	t0,33
800004e8:	00a00693          	li	a3,10
800004ec:	04400313          	li	t1,68
800004f0:	01150023          	sb	a7,0(a0) # 10000000 <.Lline_table_start2+0xfffe7c6>
800004f4:	00c50023          	sb	a2,0(a0)
800004f8:	00e50023          	sb	a4,0(a0)
800004fc:	00b50023          	sb	a1,0(a0)
80000500:	00c50023          	sb	a2,0(a0)
80000504:	01050023          	sb	a6,0(a0)
80000508:	00f50023          	sb	a5,0(a0)
8000050c:	04f00393          	li	t2,79
80000510:	00550023          	sb	t0,0(a0)
80000514:	06f00793          	li	a5,111
80000518:	00d50023          	sb	a3,0(a0)
8000051c:	00650023          	sb	t1,0(a0)
80000520:	04d00293          	li	t0,77
80000524:	00750023          	sb	t2,0(a0)
80000528:	00f50023          	sb	a5,0(a0)
8000052c:	00750023          	sb	t2,0(a0)
80000530:	02000313          	li	t1,32
80000534:	00550023          	sb	t0,0(a0)
80000538:	06900293          	li	t0,105
8000053c:	00650023          	sb	t1,0(a0)
80000540:	00f50023          	sb	a5,0(a0)
80000544:	01150023          	sb	a7,0(a0)
80000548:	06e00893          	li	a7,110
8000054c:	00d50023          	sb	a3,0(a0)
80000550:	00550023          	sb	t0,0(a0)
80000554:	01150023          	sb	a7,0(a0)
80000558:	07000893          	li	a7,112
8000055c:	00550023          	sb	t0,0(a0)
80000560:	06700293          	li	t0,103
80000564:	00c50023          	sb	a2,0(a0)
80000568:	00650023          	sb	t1,0(a0)
8000056c:	01150023          	sb	a7,0(a0)
80000570:	06c00893          	li	a7,108
80000574:	00e50023          	sb	a4,0(a0)
80000578:	00550023          	sb	t0,0(a0)
8000057c:	06300293          	li	t0,99
80000580:	01050023          	sb	a6,0(a0)
80000584:	80010c37          	lui	s8,0x80010
80000588:	000c0c13          	mv	s8,s8
8000058c:	00650023          	sb	t1,0(a0)
80000590:	0a410813          	addi	a6,sp,164
80000594:	00e50023          	sb	a4,0(a0)
80000598:	01150023          	sb	a7,0(a0)
8000059c:	01150023          	sb	a7,0(a0)
800005a0:	8000a437          	lui	s0,0x8000a
800005a4:	85c40413          	addi	s0,s0,-1956 # 8000985c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E>
800005a8:	00f50023          	sb	a5,0(a0)
800005ac:	00550023          	sb	t0,0(a0)
800005b0:	8000c8b7          	lui	a7,0x8000c
800005b4:	2a088893          	addi	a7,a7,672 # 8000c2a0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.40>
800005b8:	00e50023          	sb	a4,0(a0)
800005bc:	00200713          	li	a4,2
800005c0:	00c50023          	sb	a2,0(a0)
800005c4:	08c10613          	addi	a2,sp,140
800005c8:	00f50023          	sb	a5,0(a0)
800005cc:	00100793          	li	a5,1
800005d0:	00b50023          	sb	a1,0(a0)
800005d4:	00d50023          	sb	a3,0(a0)
800005d8:	0b812223          	sw	s8,164(sp)
800005dc:	09012623          	sw	a6,140(sp)
800005e0:	08812823          	sw	s0,144(sp)
800005e4:	00012a23          	sw	zero,20(sp)
800005e8:	01112223          	sw	a7,4(sp)
800005ec:	00e12423          	sw	a4,8(sp)
800005f0:	00c12623          	sw	a2,12(sp)
800005f4:	00f12823          	sw	a5,16(sp)
800005f8:	8000c5b7          	lui	a1,0x8000c
800005fc:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000600:	0b810513          	addi	a0,sp,184
80000604:	00410613          	addi	a2,sp,4
80000608:	00008097          	auipc	ra,0x8
8000060c:	8d8080e7          	jalr	-1832(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000610:	7a051a63          	bnez	a0,80000dc4 <kernel_main+0x934>
80000614:	8000f537          	lui	a0,0x8000f
80000618:	52054583          	lbu	a1,1312(a0) # 8000f520 <.L_MergedGlobals>
8000061c:	00058463          	beqz	a1,80000624 <kernel_main+0x194>
80000620:	0000006f          	j	80000620 <kernel_main+0x190>
80000624:	00100593          	li	a1,1
80000628:	004009b7          	lui	s3,0x400
8000062c:	00080637          	lui	a2,0x80
80000630:	0b410693          	addi	a3,sp,180
80000634:	0a410713          	addi	a4,sp,164
80000638:	8000c7b7          	lui	a5,0x8000c
8000063c:	22878793          	addi	a5,a5,552 # 8000c228 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.35>
80000640:	00300813          	li	a6,3
80000644:	8000c8b7          	lui	a7,0x8000c
80000648:	24088893          	addi	a7,a7,576 # 8000c240 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.36>
8000064c:	52b50023          	sb	a1,1312(a0)
80000650:	00200513          	li	a0,2
80000654:	08c10593          	addi	a1,sp,140
80000658:	013c09b3          	add	s3,s8,s3
8000065c:	3ff60613          	addi	a2,a2,1023 # 803ff <.Lline_table_start2+0x7ebc5>
80000660:	08d12623          	sw	a3,140(sp)
80000664:	08812823          	sw	s0,144(sp)
80000668:	08e12a23          	sw	a4,148(sp)
8000066c:	08812c23          	sw	s0,152(sp)
80000670:	01112a23          	sw	a7,20(sp)
80000674:	00a12c23          	sw	a0,24(sp)
80000678:	00c9d493          	srli	s1,s3,0xc
8000067c:	0ac12223          	sw	a2,164(sp)
80000680:	00148413          	addi	s0,s1,1
80000684:	0a812a23          	sw	s0,180(sp)
80000688:	00f12223          	sw	a5,4(sp)
8000068c:	01012423          	sw	a6,8(sp)
80000690:	00b12623          	sw	a1,12(sp)
80000694:	00a12823          	sw	a0,16(sp)
80000698:	8000c5b7          	lui	a1,0x8000c
8000069c:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
800006a0:	0b810513          	addi	a0,sp,184
800006a4:	00410613          	addi	a2,sp,4
800006a8:	00008097          	auipc	ra,0x8
800006ac:	838080e7          	jalr	-1992(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
800006b0:	70051a63          	bnez	a0,80000dc4 <kernel_main+0x934>
800006b4:	803fe537          	lui	a0,0x803fe
800006b8:	fff50513          	addi	a0,a0,-1 # 803fdfff <KALLOC_BUFFER+0x3edfff>
800006bc:	8000f937          	lui	s2,0x8000f
800006c0:	52090913          	addi	s2,s2,1312 # 8000f520 <.L_MergedGlobals>
800006c4:	07356063          	bltu	a0,s3,80000724 <kernel_main+0x294>
800006c8:	00492583          	lw	a1,4(s2)
800006cc:	00892603          	lw	a2,8(s2)
800006d0:	00c41693          	slli	a3,s0,0xc
800006d4:	00100513          	li	a0,1
800006d8:	00b6a023          	sw	a1,0(a3)
800006dc:	00c6a223          	sw	a2,4(a3)
800006e0:	000806b7          	lui	a3,0x80
800006e4:	3fd68593          	addi	a1,a3,1021 # 803fd <.Lline_table_start2+0x7ebc3>
800006e8:	00a92223          	sw	a0,4(s2)
800006ec:	00892423          	sw	s0,8(s2)
800006f0:	02b48a63          	beq	s1,a1,80000724 <kernel_main+0x294>
800006f4:	00c49593          	slli	a1,s1,0xc
800006f8:	00002637          	lui	a2,0x2
800006fc:	00c585b3          	add	a1,a1,a2
80000700:	00001637          	lui	a2,0x1
80000704:	3fe68693          	addi	a3,a3,1022
80000708:	00a5a023          	sw	a0,0(a1)
8000070c:	0085a223          	sw	s0,4(a1)
80000710:	00140413          	addi	s0,s0,1
80000714:	00a92223          	sw	a0,4(s2)
80000718:	00892423          	sw	s0,8(s2)
8000071c:	00c585b3          	add	a1,a1,a2
80000720:	fed414e3          	bne	s0,a3,80000708 <kernel_main+0x278>
80000724:	8000f537          	lui	a0,0x8000f
80000728:	100009b7          	lui	s3,0x10000
8000072c:	07000593          	li	a1,112
80000730:	06100a93          	li	s5,97
80000734:	06700613          	li	a2,103
80000738:	06500b13          	li	s6,101
8000073c:	02000413          	li	s0,32
80000740:	06c00b93          	li	s7,108
80000744:	06f00d13          	li	s10,111
80000748:	06300793          	li	a5,99
8000074c:	07400c93          	li	s9,116
80000750:	07200813          	li	a6,114
80000754:	06900d93          	li	s11,105
80000758:	06e00893          	li	a7,110
8000075c:	07300293          	li	t0,115
80000760:	06400a13          	li	s4,100
80000764:	02100313          	li	t1,33
80000768:	00a00393          	li	t2,10
8000076c:	06b00e13          	li	t3,107
80000770:	0a410693          	addi	a3,sp,164
80000774:	80000737          	lui	a4,0x80000
80000778:	30c70713          	addi	a4,a4,780 # 8000030c <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b1d5344f4b74adbE>
8000077c:	52050023          	sb	zero,1312(a0) # 8000f520 <.L_MergedGlobals>
80000780:	8000c537          	lui	a0,0x8000c
80000784:	20450513          	addi	a0,a0,516 # 8000c204 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.32>
80000788:	00b98023          	sb	a1,0(s3) # 10000000 <.Lline_table_start2+0xfffe7c6>
8000078c:	00200593          	li	a1,2
80000790:	01598023          	sb	s5,0(s3)
80000794:	00c98023          	sb	a2,0(s3)
80000798:	08c10613          	addi	a2,sp,140
8000079c:	01698023          	sb	s6,0(s3)
800007a0:	00898023          	sb	s0,0(s3)
800007a4:	01598023          	sb	s5,0(s3)
800007a8:	01798023          	sb	s7,0(s3)
800007ac:	01798023          	sb	s7,0(s3)
800007b0:	01a98023          	sb	s10,0(s3)
800007b4:	00f98023          	sb	a5,0(s3)
800007b8:	01598023          	sb	s5,0(s3)
800007bc:	01998023          	sb	s9,0(s3)
800007c0:	01a98023          	sb	s10,0(s3)
800007c4:	01098023          	sb	a6,0(s3)
800007c8:	00898023          	sb	s0,0(s3)
800007cc:	01b98023          	sb	s11,0(s3)
800007d0:	01198023          	sb	a7,0(s3)
800007d4:	01b98023          	sb	s11,0(s3)
800007d8:	01998023          	sb	s9,0(s3)
800007dc:	01b98023          	sb	s11,0(s3)
800007e0:	01598023          	sb	s5,0(s3)
800007e4:	01798023          	sb	s7,0(s3)
800007e8:	01b98023          	sb	s11,0(s3)
800007ec:	00598023          	sb	t0,0(s3)
800007f0:	01698023          	sb	s6,0(s3)
800007f4:	01498023          	sb	s4,0(s3)
800007f8:	00698023          	sb	t1,0(s3)
800007fc:	00798023          	sb	t2,0(s3)
80000800:	01b98023          	sb	s11,0(s3)
80000804:	01198023          	sb	a7,0(s3)
80000808:	01b98023          	sb	s11,0(s3)
8000080c:	01998023          	sb	s9,0(s3)
80000810:	00898023          	sb	s0,0(s3)
80000814:	01c98023          	sb	t3,0(s3)
80000818:	01698023          	sb	s6,0(s3)
8000081c:	01098023          	sb	a6,0(s3)
80000820:	01198023          	sb	a7,0(s3)
80000824:	01698023          	sb	s6,0(s3)
80000828:	01798023          	sb	s7,0(s3)
8000082c:	00898023          	sb	s0,0(s3)
80000830:	01598023          	sb	s5,0(s3)
80000834:	01798023          	sb	s7,0(s3)
80000838:	01798023          	sb	s7,0(s3)
8000083c:	01a98023          	sb	s10,0(s3)
80000840:	00f98023          	sb	a5,0(s3)
80000844:	01598023          	sb	s5,0(s3)
80000848:	01998023          	sb	s9,0(s3)
8000084c:	01a98023          	sb	s10,0(s3)
80000850:	01098023          	sb	a6,0(s3)
80000854:	00798023          	sb	t2,0(s3)
80000858:	08d12623          	sw	a3,140(sp)
8000085c:	08e12823          	sw	a4,144(sp)
80000860:	00100693          	li	a3,1
80000864:	0b812223          	sw	s8,164(sp)
80000868:	00012a23          	sw	zero,20(sp)
8000086c:	00a12223          	sw	a0,4(sp)
80000870:	00b12423          	sw	a1,8(sp)
80000874:	00c12623          	sw	a2,12(sp)
80000878:	00d12823          	sw	a3,16(sp)
8000087c:	8000c5b7          	lui	a1,0x8000c
80000880:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000884:	0b810513          	addi	a0,sp,184
80000888:	00410613          	addi	a2,sp,4
8000088c:	00007097          	auipc	ra,0x7
80000890:	654080e7          	jalr	1620(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000894:	52051863          	bnez	a0,80000dc4 <kernel_main+0x934>
80000898:	06300693          	li	a3,99
8000089c:	07200713          	li	a4,114
800008a0:	06e00793          	li	a5,110
800008a4:	07300813          	li	a6,115
800008a8:	02100893          	li	a7,33
800008ac:	00a00293          	li	t0,10
800008b0:	06b00313          	li	t1,107
800008b4:	00000493          	li	s1,0
800008b8:	000c0613          	mv	a2,s8
800008bc:	00000c13          	li	s8,0
800008c0:	00360513          	addi	a0,a2,3 # 1003 <.Lline_table_start2+0xc51>
800008c4:	004005b7          	lui	a1,0x400
800008c8:	00b605b3          	add	a1,a2,a1
800008cc:	00800637          	lui	a2,0x800
800008d0:	ffc57513          	andi	a0,a0,-4
800008d4:	ffc60613          	addi	a2,a2,-4 # 7ffffc <.Lline_table_start2+0x7fe7c2>
800008d8:	40a585b3          	sub	a1,a1,a0
800008dc:	00092823          	sw	zero,16(s2)
800008e0:	00092a23          	sw	zero,20(s2)
800008e4:	00a92c23          	sw	a0,24(s2)
800008e8:	00a92e23          	sw	a0,28(s2)
800008ec:	00c5f633          	and	a2,a1,a2
800008f0:	00c52023          	sw	a2,0(a0)
800008f4:	00052223          	sw	zero,4(a0)
800008f8:	00c50533          	add	a0,a0,a2
800008fc:	0035f593          	andi	a1,a1,3
80000900:	02a92023          	sw	a0,32(s2)
80000904:	02b90223          	sb	a1,36(s2)
80000908:	00400513          	li	a0,4
8000090c:	00698023          	sb	t1,0(s3)
80000910:	01698023          	sb	s6,0(s3)
80000914:	00e98023          	sb	a4,0(s3)
80000918:	00f98023          	sb	a5,0(s3)
8000091c:	01698023          	sb	s6,0(s3)
80000920:	01798023          	sb	s7,0(s3)
80000924:	00898023          	sb	s0,0(s3)
80000928:	01598023          	sb	s5,0(s3)
8000092c:	01798023          	sb	s7,0(s3)
80000930:	01798023          	sb	s7,0(s3)
80000934:	01a98023          	sb	s10,0(s3)
80000938:	00d98023          	sb	a3,0(s3)
8000093c:	01598023          	sb	s5,0(s3)
80000940:	01998023          	sb	s9,0(s3)
80000944:	01a98023          	sb	s10,0(s3)
80000948:	00e98023          	sb	a4,0(s3)
8000094c:	00898023          	sb	s0,0(s3)
80000950:	01b98023          	sb	s11,0(s3)
80000954:	00f98023          	sb	a5,0(s3)
80000958:	01b98023          	sb	s11,0(s3)
8000095c:	01998023          	sb	s9,0(s3)
80000960:	01b98023          	sb	s11,0(s3)
80000964:	01598023          	sb	s5,0(s3)
80000968:	01798023          	sb	s7,0(s3)
8000096c:	01b98023          	sb	s11,0(s3)
80000970:	01098023          	sb	a6,0(s3)
80000974:	01698023          	sb	s6,0(s3)
80000978:	01498023          	sb	s4,0(s3)
8000097c:	01198023          	sb	a7,0(s3)
80000980:	00598023          	sb	t0,0(s3)
80000984:	0ff0000f          	fence
80000988:	08012623          	sw	zero,140(sp)
8000098c:	08a12823          	sw	a0,144(sp)
80000990:	08012a23          	sw	zero,148(sp)
80000994:	8000c437          	lui	s0,0x8000c
80000998:	2e840413          	addi	s0,s0,744 # 8000c2e8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.45>
8000099c:	0240006f          	j	800009c0 <kernel_main+0x530>
800009a0:	09012503          	lw	a0,144(sp)
800009a4:	001c0593          	addi	a1,s8,1 # 80010001 <KALLOC_BUFFER+0x1>
800009a8:	00950533          	add	a0,a0,s1
800009ac:	01852023          	sw	s8,0(a0)
800009b0:	08b12a23          	sw	a1,148(sp)
800009b4:	00448493          	addi	s1,s1,4
800009b8:	00058c13          	mv	s8,a1
800009bc:	03458063          	beq	a1,s4,800009dc <kernel_main+0x54c>
800009c0:	08c12503          	lw	a0,140(sp)
800009c4:	fcac1ee3          	bne	s8,a0,800009a0 <kernel_main+0x510>
800009c8:	08c10513          	addi	a0,sp,140
800009cc:	00040593          	mv	a1,s0
800009d0:	00001097          	auipc	ra,0x1
800009d4:	30c080e7          	jalr	780(ra) # 80001cdc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E>
800009d8:	fc9ff06f          	j	800009a0 <kernel_main+0x510>
800009dc:	00000a13          	li	s4,0
800009e0:	0a012a23          	sw	zero,180(sp)
800009e4:	0b410a93          	addi	s5,sp,180
800009e8:	8000a9b7          	lui	s3,0x8000a
800009ec:	c1498993          	addi	s3,s3,-1004 # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
800009f0:	8000c4b7          	lui	s1,0x8000c
800009f4:	2cc48493          	addi	s1,s1,716 # 8000c2cc <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.43>
800009f8:	00200b13          	li	s6,2
800009fc:	0a410b93          	addi	s7,sp,164
80000a00:	00100c13          	li	s8,1
80000a04:	8000c437          	lui	s0,0x8000c
80000a08:	14c40413          	addi	s0,s0,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000a0c:	06400c93          	li	s9,100
80000a10:	00c0006f          	j	80000a1c <kernel_main+0x58c>
80000a14:	001a0a13          	addi	s4,s4,1
80000a18:	079a0863          	beq	s4,s9,80000a88 <kernel_main+0x5f8>
80000a1c:	0b512223          	sw	s5,164(sp)
80000a20:	0b312423          	sw	s3,168(sp)
80000a24:	00012a23          	sw	zero,20(sp)
80000a28:	00912223          	sw	s1,4(sp)
80000a2c:	01612423          	sw	s6,8(sp)
80000a30:	01712623          	sw	s7,12(sp)
80000a34:	01812823          	sw	s8,16(sp)
80000a38:	0b810513          	addi	a0,sp,184
80000a3c:	00410613          	addi	a2,sp,4
80000a40:	00040593          	mv	a1,s0
80000a44:	00007097          	auipc	ra,0x7
80000a48:	49c080e7          	jalr	1180(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000a4c:	36051c63          	bnez	a0,80000dc4 <kernel_main+0x934>
80000a50:	09412603          	lw	a2,148(sp)
80000a54:	fc0600e3          	beqz	a2,80000a14 <kernel_main+0x584>
80000a58:	09012503          	lw	a0,144(sp)
80000a5c:	0b412583          	lw	a1,180(sp)
80000a60:	00261613          	slli	a2,a2,0x2
80000a64:	0100006f          	j	80000a74 <kernel_main+0x5e4>
80000a68:	ffc60613          	addi	a2,a2,-4
80000a6c:	00450513          	addi	a0,a0,4
80000a70:	fa0602e3          	beqz	a2,80000a14 <kernel_main+0x584>
80000a74:	00052683          	lw	a3,0(a0)
80000a78:	ff4698e3          	bne	a3,s4,80000a68 <kernel_main+0x5d8>
80000a7c:	00158593          	addi	a1,a1,1 # 400001 <.Lline_table_start2+0x3fe7c7>
80000a80:	0ab12a23          	sw	a1,180(sp)
80000a84:	fe5ff06f          	j	80000a68 <kernel_main+0x5d8>
80000a88:	0b410513          	addi	a0,sp,180
80000a8c:	00200593          	li	a1,2
80000a90:	00012a23          	sw	zero,20(sp)
80000a94:	0a410613          	addi	a2,sp,164
80000a98:	0aa12223          	sw	a0,164(sp)
80000a9c:	0b312423          	sw	s3,168(sp)
80000aa0:	00100513          	li	a0,1
80000aa4:	00912223          	sw	s1,4(sp)
80000aa8:	00b12423          	sw	a1,8(sp)
80000aac:	00c12623          	sw	a2,12(sp)
80000ab0:	00a12823          	sw	a0,16(sp)
80000ab4:	8000c5b7          	lui	a1,0x8000c
80000ab8:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000abc:	0b810513          	addi	a0,sp,184
80000ac0:	00410613          	addi	a2,sp,4
80000ac4:	00007097          	auipc	ra,0x7
80000ac8:	41c080e7          	jalr	1052(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000acc:	2e051c63          	bnez	a0,80000dc4 <kernel_main+0x934>
80000ad0:	08c12683          	lw	a3,140(sp)
80000ad4:	02068463          	beqz	a3,80000afc <kernel_main+0x66c>
80000ad8:	09012583          	lw	a1,144(sp)
80000adc:	00269693          	slli	a3,a3,0x2
80000ae0:	01490513          	addi	a0,s2,20
80000ae4:	00400613          	li	a2,4
80000ae8:	00001097          	auipc	ra,0x1
80000aec:	5c0080e7          	jalr	1472(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
80000af0:	01092503          	lw	a0,16(s2)
80000af4:	40b50533          	sub	a0,a0,a1
80000af8:	00a92823          	sw	a0,16(s2)
80000afc:	0ff0000f          	fence
80000b00:	80000537          	lui	a0,0x80000
80000b04:	10050513          	addi	a0,a0,256 # 80000100 <user_trap>
80000b08:	30551073          	.insn	4, 0x30551073
80000b0c:	30002573          	.insn	4, 0x30002573
80000b10:	00300593          	li	a1,3
80000b14:	00b59593          	slli	a1,a1,0xb
80000b18:	00b56533          	or	a0,a0,a1
80000b1c:	08000593          	li	a1,128
80000b20:	30051073          	.insn	4, 0x30051073
80000b24:	3005a073          	.insn	4, 0x3005a073
80000b28:	8000f537          	lui	a0,0x8000f
80000b2c:	52054583          	lbu	a1,1312(a0) # 8000f520 <.L_MergedGlobals>
80000b30:	00058463          	beqz	a1,80000b38 <kernel_main+0x6a8>
80000b34:	0000006f          	j	80000b34 <kernel_main+0x6a4>
80000b38:	52050593          	addi	a1,a0,1312
80000b3c:	00c5a603          	lw	a2,12(a1)
80000b40:	0045a683          	lw	a3,4(a1)
80000b44:	00100713          	li	a4,1
80000b48:	52e50023          	sb	a4,1312(a0)
80000b4c:	00160613          	addi	a2,a2,1
80000b50:	00c5a623          	sw	a2,12(a1)
80000b54:	02068063          	beqz	a3,80000b74 <kernel_main+0x6e4>
80000b58:	00892503          	lw	a0,8(s2)
80000b5c:	00c51493          	slli	s1,a0,0xc
80000b60:	28048663          	beqz	s1,80000dec <kernel_main+0x95c>
80000b64:	0004a503          	lw	a0,0(s1)
80000b68:	02050063          	beqz	a0,80000b88 <kernel_main+0x6f8>
80000b6c:	0044a583          	lw	a1,4(s1)
80000b70:	0180006f          	j	80000b88 <kernel_main+0x6f8>
80000b74:	52050023          	sb	zero,1312(a0)
80000b78:	8000c537          	lui	a0,0x8000c
80000b7c:	47050513          	addi	a0,a0,1136 # 8000c470 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.70>
80000b80:	00006097          	auipc	ra,0x6
80000b84:	31c080e7          	jalr	796(ra) # 80006e9c <_ZN4core6option13unwrap_failed17h09e9f263c2c928a7E>
80000b88:	8000f637          	lui	a2,0x8000f
80000b8c:	52060693          	addi	a3,a2,1312 # 8000f520 <.L_MergedGlobals>
80000b90:	52060023          	sb	zero,1312(a2)
80000b94:	00a6a223          	sw	a0,4(a3)
80000b98:	00b6a423          	sw	a1,8(a3)
80000b9c:	08010413          	addi	s0,sp,128
80000ba0:	00410513          	addi	a0,sp,4
80000ba4:	07c00613          	li	a2,124
80000ba8:	00000593          	li	a1,0
80000bac:	0000b097          	auipc	ra,0xb
80000bb0:	838080e7          	jalr	-1992(ra) # 8000b3e4 <memset>
80000bb4:	80001537          	lui	a0,0x80001
80000bb8:	dfc50513          	addi	a0,a0,-516 # 80000dfc <_ZN7SuperOS9user_main17h6bf977d9808044e8E>
80000bbc:	0a812223          	sw	s0,164(sp)
80000bc0:	8000a5b7          	lui	a1,0x8000a
80000bc4:	85c58593          	addi	a1,a1,-1956 # 8000985c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E>
80000bc8:	0ab12423          	sw	a1,168(sp)
80000bcc:	8000c5b7          	lui	a1,0x8000c
80000bd0:	48c58593          	addi	a1,a1,1164 # 8000c48c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.72>
80000bd4:	00200693          	li	a3,2
80000bd8:	08012e23          	sw	zero,156(sp)
80000bdc:	0a410713          	addi	a4,sp,164
80000be0:	00100613          	li	a2,1
80000be4:	08a12023          	sw	a0,128(sp)
80000be8:	08012223          	sw	zero,132(sp)
80000bec:	08b12623          	sw	a1,140(sp)
80000bf0:	08d12823          	sw	a3,144(sp)
80000bf4:	08e12a23          	sw	a4,148(sp)
80000bf8:	08c12c23          	sw	a2,152(sp)
80000bfc:	8000c5b7          	lui	a1,0x8000c
80000c00:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000c04:	0b810513          	addi	a0,sp,184
80000c08:	08c10613          	addi	a2,sp,140
80000c0c:	00007097          	auipc	ra,0x7
80000c10:	2d4080e7          	jalr	724(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000c14:	1a051863          	bnez	a0,80000dc4 <kernel_main+0x934>
80000c18:	00001537          	lui	a0,0x1
80000c1c:	100009b7          	lui	s3,0x10000
80000c20:	04800593          	li	a1,72
80000c24:	06500a13          	li	s4,101
80000c28:	06c00613          	li	a2,108
80000c2c:	06f00693          	li	a3,111
80000c30:	02000893          	li	a7,32
80000c34:	07700713          	li	a4,119
80000c38:	07200b13          	li	s6,114
80000c3c:	06400793          	li	a5,100
80000c40:	02100813          	li	a6,33
80000c44:	00a00293          	li	t0,10
80000c48:	00f00c93          	li	s9,15
80000c4c:	0b410d93          	addi	s11,sp,180
80000c50:	08b10b93          	addi	s7,sp,139
80000c54:	80000d37          	lui	s10,0x80000
80000c58:	3a4d0d13          	addi	s10,s10,932 # 800003a4 <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17ha60309d5e41be102E>
80000c5c:	8000cab7          	lui	s5,0x8000c
80000c60:	1d8a8a93          	addi	s5,s5,472 # 8000c1d8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.30>
80000c64:	00300c13          	li	s8,3
80000c68:	8000c437          	lui	s0,0x8000c
80000c6c:	14c40413          	addi	s0,s0,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80000c70:	ff850513          	addi	a0,a0,-8 # ff8 <.Lline_table_start2+0xc46>
80000c74:	00a4e533          	or	a0,s1,a0
80000c78:	00a12423          	sw	a0,8(sp)
80000c7c:	07500493          	li	s1,117
80000c80:	00b98023          	sb	a1,0(s3) # 10000000 <.Lline_table_start2+0xfffe7c6>
80000c84:	01498023          	sb	s4,0(s3)
80000c88:	00c98023          	sb	a2,0(s3)
80000c8c:	00c98023          	sb	a2,0(s3)
80000c90:	00d98023          	sb	a3,0(s3)
80000c94:	01198023          	sb	a7,0(s3)
80000c98:	00e98023          	sb	a4,0(s3)
80000c9c:	00d98023          	sb	a3,0(s3)
80000ca0:	01698023          	sb	s6,0(s3)
80000ca4:	00c98023          	sb	a2,0(s3)
80000ca8:	00f98023          	sb	a5,0(s3)
80000cac:	07400913          	li	s2,116
80000cb0:	01098023          	sb	a6,0(s3)
80000cb4:	00598023          	sb	t0,0(s3)
80000cb8:	0740006f          	j	80000d2c <kernel_main+0x89c>
80000cbc:	06d00513          	li	a0,109
80000cc0:	00a98023          	sb	a0,0(s3)
80000cc4:	06300513          	li	a0,99
80000cc8:	00a98023          	sb	a0,0(s3)
80000ccc:	06100513          	li	a0,97
80000cd0:	00a98023          	sb	a0,0(s3)
80000cd4:	00998023          	sb	s1,0(s3)
80000cd8:	07300513          	li	a0,115
80000cdc:	00a98023          	sb	a0,0(s3)
80000ce0:	01498023          	sb	s4,0(s3)
80000ce4:	03a00513          	li	a0,58
80000ce8:	00a98023          	sb	a0,0(s3)
80000cec:	02000513          	li	a0,32
80000cf0:	00a98023          	sb	a0,0(s3)
80000cf4:	06900513          	li	a0,105
80000cf8:	00a98023          	sb	a0,0(s3)
80000cfc:	06e00513          	li	a0,110
80000d00:	00a98023          	sb	a0,0(s3)
80000d04:	01298023          	sb	s2,0(s3)
80000d08:	01498023          	sb	s4,0(s3)
80000d0c:	01698023          	sb	s6,0(s3)
80000d10:	01698023          	sb	s6,0(s3)
80000d14:	00998023          	sb	s1,0(s3)
80000d18:	07000513          	li	a0,112
80000d1c:	00a98023          	sb	a0,0(s3)
80000d20:	01298023          	sb	s2,0(s3)
80000d24:	00a00513          	li	a0,10
80000d28:	00a98023          	sb	a0,0(s3)
80000d2c:	00410513          	addi	a0,sp,4
80000d30:	fffff097          	auipc	ra,0xfffff
80000d34:	300080e7          	jalr	768(ra) # 80000030 <run_user>
80000d38:	34202573          	.insn	4, 0x34202573
80000d3c:	f80540e3          	bltz	a0,80000cbc <kernel_main+0x82c>
80000d40:	00acec63          	bltu	s9,a0,80000d58 <kernel_main+0x8c8>
80000d44:	8000c5b7          	lui	a1,0x8000c
80000d48:	08058593          	addi	a1,a1,128 # 8000c080 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.7+0x45>
80000d4c:	00a58533          	add	a0,a1,a0
80000d50:	00054503          	lbu	a0,0(a0)
80000d54:	0080006f          	j	80000d5c <kernel_main+0x8cc>
80000d58:	00e00513          	li	a0,14
80000d5c:	08a105a3          	sb	a0,139(sp)
80000d60:	34102573          	.insn	4, 0x34102573
80000d64:	0bb12223          	sw	s11,164(sp)
80000d68:	8000a5b7          	lui	a1,0x8000a
80000d6c:	85c58593          	addi	a1,a1,-1956 # 8000985c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E>
80000d70:	0ab12423          	sw	a1,168(sp)
80000d74:	0b712623          	sw	s7,172(sp)
80000d78:	0ba12823          	sw	s10,176(sp)
80000d7c:	08012e23          	sw	zero,156(sp)
80000d80:	0aa12a23          	sw	a0,180(sp)
80000d84:	09512623          	sw	s5,140(sp)
80000d88:	09812823          	sw	s8,144(sp)
80000d8c:	0a410513          	addi	a0,sp,164
80000d90:	08a12a23          	sw	a0,148(sp)
80000d94:	00200513          	li	a0,2
80000d98:	08a12c23          	sw	a0,152(sp)
80000d9c:	0b810513          	addi	a0,sp,184
80000da0:	08c10613          	addi	a2,sp,140
80000da4:	00040593          	mv	a1,s0
80000da8:	00007097          	auipc	ra,0x7
80000dac:	138080e7          	jalr	312(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80000db0:	00051a63          	bnez	a0,80000dc4 <kernel_main+0x934>
80000db4:	08012503          	lw	a0,128(sp)
80000db8:	00450513          	addi	a0,a0,4
80000dbc:	08a12023          	sw	a0,128(sp)
80000dc0:	f6dff06f          	j	80000d2c <kernel_main+0x89c>
80000dc4:	8000c537          	lui	a0,0x8000c
80000dc8:	17450513          	addi	a0,a0,372 # 8000c174 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.24>
80000dcc:	8000c6b7          	lui	a3,0x8000c
80000dd0:	16468693          	addi	a3,a3,356 # 8000c164 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.23>
80000dd4:	8000c737          	lui	a4,0x8000c
80000dd8:	1b070713          	addi	a4,a4,432 # 8000c1b0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.26>
80000ddc:	02b00593          	li	a1,43
80000de0:	0b810613          	addi	a2,sp,184
80000de4:	00006097          	auipc	ra,0x6
80000de8:	494080e7          	jalr	1172(ra) # 80007278 <_ZN4core6result13unwrap_failed17hec5fc5af20fc7d85E>
80000dec:	8000c537          	lui	a0,0x8000c
80000df0:	28050513          	addi	a0,a0,640 # 8000c280 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.38>
80000df4:	00006097          	auipc	ra,0x6
80000df8:	0a8080e7          	jalr	168(ra) # 80006e9c <_ZN4core6option13unwrap_failed17h09e9f263c2c928a7E>

80000dfc <_ZN7SuperOS9user_main17h6bf977d9808044e8E>:
80000dfc:	f6010113          	addi	sp,sp,-160
80000e00:	08112e23          	sw	ra,156(sp)
80000e04:	08812c23          	sw	s0,152(sp)
80000e08:	08912a23          	sw	s1,148(sp)
80000e0c:	09212823          	sw	s2,144(sp)
80000e10:	09312623          	sw	s3,140(sp)
80000e14:	09412423          	sw	s4,136(sp)
80000e18:	09512223          	sw	s5,132(sp)
80000e1c:	09612023          	sw	s6,128(sp)
80000e20:	07712e23          	sw	s7,124(sp)
80000e24:	07812c23          	sw	s8,120(sp)
80000e28:	07912a23          	sw	s9,116(sp)
80000e2c:	07a12823          	sw	s10,112(sp)
80000e30:	07b12623          	sw	s11,108(sp)
80000e34:	00400d93          	li	s11,4
80000e38:	8000cab7          	lui	s5,0x8000c
80000e3c:	438a8a93          	addi	s5,s5,1080 # 8000c438 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.67>
80000e40:	00500b13          	li	s6,5
80000e44:	00200d13          	li	s10,2
80000e48:	00300413          	li	s0,3
80000e4c:	00000b93          	li	s7,0
80000e50:	10000537          	lui	a0,0x10000
80000e54:	04800593          	li	a1,72
80000e58:	00b50023          	sb	a1,0(a0) # 10000000 <.Lline_table_start2+0xfffe7c6>
80000e5c:	06500593          	li	a1,101
80000e60:	00b50023          	sb	a1,0(a0)
80000e64:	06c00613          	li	a2,108
80000e68:	00c50023          	sb	a2,0(a0)
80000e6c:	00c50023          	sb	a2,0(a0)
80000e70:	06f00613          	li	a2,111
80000e74:	00c50023          	sb	a2,0(a0)
80000e78:	02000613          	li	a2,32
80000e7c:	00c50023          	sb	a2,0(a0)
80000e80:	07500613          	li	a2,117
80000e84:	00c50023          	sb	a2,0(a0)
80000e88:	07300613          	li	a2,115
80000e8c:	00c50023          	sb	a2,0(a0)
80000e90:	00b50023          	sb	a1,0(a0)
80000e94:	07200593          	li	a1,114
80000e98:	00b50023          	sb	a1,0(a0)
80000e9c:	00c50023          	sb	a2,0(a0)
80000ea0:	02100593          	li	a1,33
80000ea4:	00b50023          	sb	a1,0(a0)
80000ea8:	00b50023          	sb	a1,0(a0)
80000eac:	00b50023          	sb	a1,0(a0)
80000eb0:	00a00593          	li	a1,10
80000eb4:	00b50023          	sb	a1,0(a0)
80000eb8:	b0002573          	.insn	4, 0xb0002573
80000ebc:	40a00533          	neg	a0,a0
80000ec0:	00a12423          	sw	a0,8(sp)
80000ec4:	b0202573          	.insn	4, 0xb0202573
80000ec8:	00012823          	sw	zero,16(sp)
80000ecc:	01b12a23          	sw	s11,20(sp)
80000ed0:	00012c23          	sw	zero,24(sp)
80000ed4:	00012e23          	sw	zero,28(sp)
80000ed8:	03b12023          	sw	s11,32(sp)
80000edc:	02012223          	sw	zero,36(sp)
80000ee0:	02012423          	sw	zero,40(sp)
80000ee4:	03b12623          	sw	s11,44(sp)
80000ee8:	02012823          	sw	zero,48(sp)
80000eec:	02012a23          	sw	zero,52(sp)
80000ef0:	40a00533          	neg	a0,a0
80000ef4:	00a12623          	sw	a0,12(sp)
80000ef8:	00100513          	li	a0,1
80000efc:	0280006f          	j	80000f24 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x128>
80000f00:	03412503          	lw	a0,52(sp)
80000f04:	3f8005b7          	lui	a1,0x3f800
80000f08:	0000a097          	auipc	ra,0xa
80000f0c:	01c080e7          	jalr	28(ra) # 8000af24 <__addsf3>
80000f10:	02a12a23          	sw	a0,52(sp)
80000f14:	0054b513          	sltiu	a0,s1,5
80000f18:	00a48533          	add	a0,s1,a0
80000f1c:	00048b93          	mv	s7,s1
80000f20:	1f64f063          	bgeu	s1,s6,80001100 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x304>
80000f24:	01012583          	lw	a1,16(sp)
80000f28:	01812c03          	lw	s8,24(sp)
80000f2c:	00050493          	mv	s1,a0
80000f30:	00bc1c63          	bne	s8,a1,80000f48 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x14c>
80000f34:	01010513          	addi	a0,sp,16
80000f38:	8000c5b7          	lui	a1,0x8000c
80000f3c:	3b858593          	addi	a1,a1,952 # 8000c3b8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.59>
80000f40:	00001097          	auipc	ra,0x1
80000f44:	e64080e7          	jalr	-412(ra) # 80001da4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE>
80000f48:	01412503          	lw	a0,20(sp)
80000f4c:	002c1593          	slli	a1,s8,0x2
80000f50:	004c1613          	slli	a2,s8,0x4
80000f54:	40b60633          	sub	a2,a2,a1
80000f58:	00c50533          	add	a0,a0,a2
80000f5c:	00052023          	sw	zero,0(a0)
80000f60:	01b52223          	sw	s11,4(a0)
80000f64:	00052423          	sw	zero,8(a0)
80000f68:	01c12503          	lw	a0,28(sp)
80000f6c:	02412903          	lw	s2,36(sp)
80000f70:	001c0c13          	addi	s8,s8,1
80000f74:	01812c23          	sw	s8,24(sp)
80000f78:	00a91c63          	bne	s2,a0,80000f90 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x194>
80000f7c:	01c10513          	addi	a0,sp,28
80000f80:	8000c5b7          	lui	a1,0x8000c
80000f84:	3c858593          	addi	a1,a1,968 # 8000c3c8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.60>
80000f88:	00001097          	auipc	ra,0x1
80000f8c:	e1c080e7          	jalr	-484(ra) # 80001da4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE>
80000f90:	02012503          	lw	a0,32(sp)
80000f94:	00291593          	slli	a1,s2,0x2
80000f98:	00491613          	slli	a2,s2,0x4
80000f9c:	40b60633          	sub	a2,a2,a1
80000fa0:	00c50533          	add	a0,a0,a2
80000fa4:	00052023          	sw	zero,0(a0)
80000fa8:	01b52223          	sw	s11,4(a0)
80000fac:	00052423          	sw	zero,8(a0)
80000fb0:	02812503          	lw	a0,40(sp)
80000fb4:	03012c03          	lw	s8,48(sp)
80000fb8:	00190913          	addi	s2,s2,1
80000fbc:	03212223          	sw	s2,36(sp)
80000fc0:	00ac1c63          	bne	s8,a0,80000fd8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x1dc>
80000fc4:	02810513          	addi	a0,sp,40
80000fc8:	8000c5b7          	lui	a1,0x8000c
80000fcc:	3d858593          	addi	a1,a1,984 # 8000c3d8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.61>
80000fd0:	00001097          	auipc	ra,0x1
80000fd4:	dd4080e7          	jalr	-556(ra) # 80001da4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE>
80000fd8:	02c12903          	lw	s2,44(sp)
80000fdc:	00c00593          	li	a1,12
80000fe0:	000c0513          	mv	a0,s8
80000fe4:	00009097          	auipc	ra,0x9
80000fe8:	1e4080e7          	jalr	484(ra) # 8000a1c8 <__mulsi3>
80000fec:	00a90533          	add	a0,s2,a0
80000ff0:	001c0c13          	addi	s8,s8,1
80000ff4:	00500913          	li	s2,5
80000ff8:	00052023          	sw	zero,0(a0)
80000ffc:	01b52223          	sw	s11,4(a0)
80001000:	00052423          	sw	zero,8(a0)
80001004:	002b9513          	slli	a0,s7,0x2
80001008:	03812823          	sw	s8,48(sp)
8000100c:	004b9593          	slli	a1,s7,0x4
80001010:	40a58cb3          	sub	s9,a1,a0
80001014:	0240006f          	j	80001038 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x23c>
80001018:	004c2503          	lw	a0,4(s8)
8000101c:	002a1593          	slli	a1,s4,0x2
80001020:	001a0a13          	addi	s4,s4,1
80001024:	fff90913          	addi	s2,s2,-1
80001028:	00b50533          	add	a0,a0,a1
8000102c:	01352023          	sw	s3,0(a0)
80001030:	014c2423          	sw	s4,8(s8)
80001034:	ec0906e3          	beqz	s2,80000f00 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x104>
80001038:	01812583          	lw	a1,24(sp)
8000103c:	1cbbfae3          	bgeu	s7,a1,80001a10 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc14>
80001040:	01412c03          	lw	s8,20(sp)
80001044:	019c0c33          	add	s8,s8,s9
80001048:	000c2503          	lw	a0,0(s8)
8000104c:	008c2983          	lw	s3,8(s8)
80001050:	00a99c63          	bne	s3,a0,80001068 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x26c>
80001054:	000c0513          	mv	a0,s8
80001058:	8000c5b7          	lui	a1,0x8000c
8000105c:	3f858593          	addi	a1,a1,1016 # 8000c3f8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.63>
80001060:	00001097          	auipc	ra,0x1
80001064:	c7c080e7          	jalr	-900(ra) # 80001cdc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E>
80001068:	004c2503          	lw	a0,4(s8)
8000106c:	00299593          	slli	a1,s3,0x2
80001070:	00198993          	addi	s3,s3,1
80001074:	00b50533          	add	a0,a0,a1
80001078:	00052023          	sw	zero,0(a0)
8000107c:	013c2423          	sw	s3,8(s8)
80001080:	02412583          	lw	a1,36(sp)
80001084:	1abbfae3          	bgeu	s7,a1,80001a38 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc3c>
80001088:	02012c03          	lw	s8,32(sp)
8000108c:	019c0c33          	add	s8,s8,s9
80001090:	000c2503          	lw	a0,0(s8)
80001094:	008c2a03          	lw	s4,8(s8)
80001098:	03412983          	lw	s3,52(sp)
8000109c:	00aa1c63          	bne	s4,a0,800010b4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x2b8>
800010a0:	000c0513          	mv	a0,s8
800010a4:	8000c5b7          	lui	a1,0x8000c
800010a8:	41858593          	addi	a1,a1,1048 # 8000c418 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.65>
800010ac:	00001097          	auipc	ra,0x1
800010b0:	c30080e7          	jalr	-976(ra) # 80001cdc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E>
800010b4:	004c2503          	lw	a0,4(s8)
800010b8:	002a1593          	slli	a1,s4,0x2
800010bc:	001a0a13          	addi	s4,s4,1
800010c0:	00b50533          	add	a0,a0,a1
800010c4:	01352023          	sw	s3,0(a0)
800010c8:	014c2423          	sw	s4,8(s8)
800010cc:	03012583          	lw	a1,48(sp)
800010d0:	14bbfae3          	bgeu	s7,a1,80001a24 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc28>
800010d4:	02c12c03          	lw	s8,44(sp)
800010d8:	019c0c33          	add	s8,s8,s9
800010dc:	000c2503          	lw	a0,0(s8)
800010e0:	008c2a03          	lw	s4,8(s8)
800010e4:	03412983          	lw	s3,52(sp)
800010e8:	f2aa18e3          	bne	s4,a0,80001018 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x21c>
800010ec:	000c0513          	mv	a0,s8
800010f0:	000a8593          	mv	a1,s5
800010f4:	00001097          	auipc	ra,0x1
800010f8:	be8080e7          	jalr	-1048(ra) # 80001cdc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E>
800010fc:	f1dff06f          	j	80001018 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x21c>
80001100:	03410513          	addi	a0,sp,52
80001104:	04a12a23          	sw	a0,84(sp)
80001108:	80009537          	lui	a0,0x80009
8000110c:	7f050513          	addi	a0,a0,2032 # 800097f0 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h04eee215b38ad48bE>
80001110:	04a12c23          	sw	a0,88(sp)
80001114:	04012623          	sw	zero,76(sp)
80001118:	8000c537          	lui	a0,0x8000c
8000111c:	30050513          	addi	a0,a0,768 # 8000c300 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.47>
80001120:	02a12e23          	sw	a0,60(sp)
80001124:	05a12023          	sw	s10,64(sp)
80001128:	05410513          	addi	a0,sp,84
8000112c:	04a12223          	sw	a0,68(sp)
80001130:	00100513          	li	a0,1
80001134:	04a12423          	sw	a0,72(sp)
80001138:	06b10513          	addi	a0,sp,107
8000113c:	03c10613          	addi	a2,sp,60
80001140:	8000c5b7          	lui	a1,0x8000c
80001144:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80001148:	00007097          	auipc	ra,0x7
8000114c:	d98080e7          	jalr	-616(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80001150:	08051ce3          	bnez	a0,800019e8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbec>
80001154:	00000c93          	li	s9,0
80001158:	00100513          	li	a0,1
8000115c:	00000913          	li	s2,0
80001160:	00000b93          	li	s7,0
80001164:	000c8c13          	mv	s8,s9
80001168:	00050c93          	mv	s9,a0
8000116c:	02412583          	lw	a1,36(sp)
80001170:	02bc74e3          	bgeu	s8,a1,80001998 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xb9c>
80001174:	02012503          	lw	a0,32(sp)
80001178:	002c1593          	slli	a1,s8,0x2
8000117c:	004c1493          	slli	s1,s8,0x4
80001180:	40b484b3          	sub	s1,s1,a1
80001184:	00950533          	add	a0,a0,s1
80001188:	00852583          	lw	a1,8(a0)
8000118c:	0c0584e3          	beqz	a1,80001a54 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc58>
80001190:	03012583          	lw	a1,48(sp)
80001194:	0a058ce3          	beqz	a1,80001a4c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc50>
80001198:	02c12603          	lw	a2,44(sp)
8000119c:	00862583          	lw	a1,8(a2)
800011a0:	02bbf0e3          	bgeu	s7,a1,800019c0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbc4>
800011a4:	00452503          	lw	a0,4(a0)
800011a8:	00462583          	lw	a1,4(a2)
800011ac:	00052503          	lw	a0,0(a0)
800011b0:	012585b3          	add	a1,a1,s2
800011b4:	0005a583          	lw	a1,0(a1)
800011b8:	00009097          	auipc	ra,0x9
800011bc:	0f0080e7          	jalr	240(ra) # 8000a2a8 <__mulsf3>
800011c0:	01812583          	lw	a1,24(sp)
800011c4:	7ebc7463          	bgeu	s8,a1,800019ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbb0>
800011c8:	01412603          	lw	a2,20(sp)
800011cc:	00960633          	add	a2,a2,s1
800011d0:	00862583          	lw	a1,8(a2)
800011d4:	00bbf0e3          	bgeu	s7,a1,800019d4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbd8>
800011d8:	00462583          	lw	a1,4(a2)
800011dc:	012589b3          	add	s3,a1,s2
800011e0:	0009a583          	lw	a1,0(s3)
800011e4:	0000a097          	auipc	ra,0xa
800011e8:	d40080e7          	jalr	-704(ra) # 8000af24 <__addsf3>
800011ec:	00a9a023          	sw	a0,0(s3)
800011f0:	02412583          	lw	a1,36(sp)
800011f4:	7abc7263          	bgeu	s8,a1,80001998 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xb9c>
800011f8:	02012503          	lw	a0,32(sp)
800011fc:	00950533          	add	a0,a0,s1
80001200:	00852583          	lw	a1,8(a0)
80001204:	07a5e4e3          	bltu	a1,s10,80001a6c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc70>
80001208:	03012583          	lw	a1,48(sp)
8000120c:	07a5e4e3          	bltu	a1,s10,80001a74 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc78>
80001210:	02c12603          	lw	a2,44(sp)
80001214:	01462583          	lw	a1,20(a2)
80001218:	7abbf463          	bgeu	s7,a1,800019c0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbc4>
8000121c:	00452503          	lw	a0,4(a0)
80001220:	01062583          	lw	a1,16(a2)
80001224:	00452503          	lw	a0,4(a0)
80001228:	012585b3          	add	a1,a1,s2
8000122c:	0005a583          	lw	a1,0(a1)
80001230:	00009097          	auipc	ra,0x9
80001234:	078080e7          	jalr	120(ra) # 8000a2a8 <__mulsf3>
80001238:	01812583          	lw	a1,24(sp)
8000123c:	76bc7863          	bgeu	s8,a1,800019ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbb0>
80001240:	01412603          	lw	a2,20(sp)
80001244:	00960633          	add	a2,a2,s1
80001248:	00862583          	lw	a1,8(a2)
8000124c:	78bbf463          	bgeu	s7,a1,800019d4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbd8>
80001250:	00462583          	lw	a1,4(a2)
80001254:	012589b3          	add	s3,a1,s2
80001258:	0009a583          	lw	a1,0(s3)
8000125c:	0000a097          	auipc	ra,0xa
80001260:	cc8080e7          	jalr	-824(ra) # 8000af24 <__addsf3>
80001264:	00a9a023          	sw	a0,0(s3)
80001268:	02412583          	lw	a1,36(sp)
8000126c:	72bc7663          	bgeu	s8,a1,80001998 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xb9c>
80001270:	02012503          	lw	a0,32(sp)
80001274:	00950533          	add	a0,a0,s1
80001278:	00852583          	lw	a1,8(a0)
8000127c:	7e85e463          	bltu	a1,s0,80001a64 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc68>
80001280:	03012583          	lw	a1,48(sp)
80001284:	7c85ec63          	bltu	a1,s0,80001a5c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc60>
80001288:	02c12603          	lw	a2,44(sp)
8000128c:	02062583          	lw	a1,32(a2)
80001290:	72bbf863          	bgeu	s7,a1,800019c0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbc4>
80001294:	00452503          	lw	a0,4(a0)
80001298:	01c62583          	lw	a1,28(a2)
8000129c:	00852503          	lw	a0,8(a0)
800012a0:	012585b3          	add	a1,a1,s2
800012a4:	0005a583          	lw	a1,0(a1)
800012a8:	00009097          	auipc	ra,0x9
800012ac:	000080e7          	jalr	ra # 8000a2a8 <__mulsf3>
800012b0:	01812583          	lw	a1,24(sp)
800012b4:	6ebc7c63          	bgeu	s8,a1,800019ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbb0>
800012b8:	01412603          	lw	a2,20(sp)
800012bc:	00960633          	add	a2,a2,s1
800012c0:	00862583          	lw	a1,8(a2)
800012c4:	70bbf863          	bgeu	s7,a1,800019d4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbd8>
800012c8:	00462583          	lw	a1,4(a2)
800012cc:	012589b3          	add	s3,a1,s2
800012d0:	0009a583          	lw	a1,0(s3)
800012d4:	0000a097          	auipc	ra,0xa
800012d8:	c50080e7          	jalr	-944(ra) # 8000af24 <__addsf3>
800012dc:	00a9a023          	sw	a0,0(s3)
800012e0:	02412583          	lw	a1,36(sp)
800012e4:	6abc7a63          	bgeu	s8,a1,80001998 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xb9c>
800012e8:	02012503          	lw	a0,32(sp)
800012ec:	00950533          	add	a0,a0,s1
800012f0:	00852583          	lw	a1,8(a0)
800012f4:	7bb5e663          	bltu	a1,s11,80001aa0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xca4>
800012f8:	03012583          	lw	a1,48(sp)
800012fc:	79b5e863          	bltu	a1,s11,80001a8c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc90>
80001300:	02c12603          	lw	a2,44(sp)
80001304:	02c62583          	lw	a1,44(a2)
80001308:	6abbfc63          	bgeu	s7,a1,800019c0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbc4>
8000130c:	00452503          	lw	a0,4(a0)
80001310:	02862583          	lw	a1,40(a2)
80001314:	00c52503          	lw	a0,12(a0)
80001318:	012585b3          	add	a1,a1,s2
8000131c:	0005a583          	lw	a1,0(a1)
80001320:	00009097          	auipc	ra,0x9
80001324:	f88080e7          	jalr	-120(ra) # 8000a2a8 <__mulsf3>
80001328:	01812583          	lw	a1,24(sp)
8000132c:	68bc7063          	bgeu	s8,a1,800019ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbb0>
80001330:	01412603          	lw	a2,20(sp)
80001334:	00960633          	add	a2,a2,s1
80001338:	00862583          	lw	a1,8(a2)
8000133c:	68bbfc63          	bgeu	s7,a1,800019d4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbd8>
80001340:	00462583          	lw	a1,4(a2)
80001344:	012589b3          	add	s3,a1,s2
80001348:	0009a583          	lw	a1,0(s3)
8000134c:	0000a097          	auipc	ra,0xa
80001350:	bd8080e7          	jalr	-1064(ra) # 8000af24 <__addsf3>
80001354:	00a9a023          	sw	a0,0(s3)
80001358:	02412583          	lw	a1,36(sp)
8000135c:	62bc7e63          	bgeu	s8,a1,80001998 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xb9c>
80001360:	02012503          	lw	a0,32(sp)
80001364:	00950533          	add	a0,a0,s1
80001368:	00852583          	lw	a1,8(a0)
8000136c:	7165ec63          	bltu	a1,s6,80001a84 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc88>
80001370:	03012583          	lw	a1,48(sp)
80001374:	7165e463          	bltu	a1,s6,80001a7c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc80>
80001378:	02c12603          	lw	a2,44(sp)
8000137c:	03862583          	lw	a1,56(a2)
80001380:	64bbf063          	bgeu	s7,a1,800019c0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbc4>
80001384:	00452503          	lw	a0,4(a0)
80001388:	03462583          	lw	a1,52(a2)
8000138c:	01052503          	lw	a0,16(a0)
80001390:	012585b3          	add	a1,a1,s2
80001394:	0005a583          	lw	a1,0(a1)
80001398:	00009097          	auipc	ra,0x9
8000139c:	f10080e7          	jalr	-240(ra) # 8000a2a8 <__mulsf3>
800013a0:	01812583          	lw	a1,24(sp)
800013a4:	60bc7463          	bgeu	s8,a1,800019ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbb0>
800013a8:	01412583          	lw	a1,20(sp)
800013ac:	009584b3          	add	s1,a1,s1
800013b0:	0084a583          	lw	a1,8(s1)
800013b4:	62bbf063          	bgeu	s7,a1,800019d4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbd8>
800013b8:	0044a583          	lw	a1,4(s1)
800013bc:	012584b3          	add	s1,a1,s2
800013c0:	0004a583          	lw	a1,0(s1)
800013c4:	0000a097          	auipc	ra,0xa
800013c8:	b60080e7          	jalr	-1184(ra) # 8000af24 <__addsf3>
800013cc:	00a4a023          	sw	a0,0(s1)
800013d0:	001b8b93          	addi	s7,s7,1
800013d4:	00490913          	addi	s2,s2,4
800013d8:	d96beae3          	bltu	s7,s6,8000116c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x370>
800013dc:	005cb513          	sltiu	a0,s9,5
800013e0:	00ac8533          	add	a0,s9,a0
800013e4:	d79dfce3          	bgeu	s11,s9,8000115c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x360>
800013e8:	01812983          	lw	s3,24(sp)
800013ec:	6e098863          	beqz	s3,80001adc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xce0>
800013f0:	01412903          	lw	s2,20(sp)
800013f4:	00892583          	lw	a1,8(s2)
800013f8:	6a058e63          	beqz	a1,80001ab4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcb8>
800013fc:	00100513          	li	a0,1
80001400:	6ca58463          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001404:	00200513          	li	a0,2
80001408:	6c85e063          	bltu	a1,s0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
8000140c:	00300513          	li	a0,3
80001410:	6aa58c63          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001414:	6b65e463          	bltu	a1,s6,80001abc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcc0>
80001418:	00492483          	lw	s1,4(s2)
8000141c:	0004a503          	lw	a0,0(s1)
80001420:	0044ab83          	lw	s7,4(s1)
80001424:	0084ac03          	lw	s8,8(s1)
80001428:	00c4ac83          	lw	s9,12(s1)
8000142c:	00000593          	li	a1,0
80001430:	0000a097          	auipc	ra,0xa
80001434:	af4080e7          	jalr	-1292(ra) # 8000af24 <__addsf3>
80001438:	00050593          	mv	a1,a0
8000143c:	000b8513          	mv	a0,s7
80001440:	0000a097          	auipc	ra,0xa
80001444:	ae4080e7          	jalr	-1308(ra) # 8000af24 <__addsf3>
80001448:	00050593          	mv	a1,a0
8000144c:	000c0513          	mv	a0,s8
80001450:	0000a097          	auipc	ra,0xa
80001454:	ad4080e7          	jalr	-1324(ra) # 8000af24 <__addsf3>
80001458:	00050593          	mv	a1,a0
8000145c:	000c8513          	mv	a0,s9
80001460:	0000a097          	auipc	ra,0xa
80001464:	ac4080e7          	jalr	-1340(ra) # 8000af24 <__addsf3>
80001468:	0104a583          	lw	a1,16(s1)
8000146c:	00050613          	mv	a2,a0
80001470:	00058513          	mv	a0,a1
80001474:	00060593          	mv	a1,a2
80001478:	0000a097          	auipc	ra,0xa
8000147c:	aac080e7          	jalr	-1364(ra) # 8000af24 <__addsf3>
80001480:	00050613          	mv	a2,a0
80001484:	00100513          	li	a0,1
80001488:	02c12c23          	sw	a2,56(sp)
8000148c:	66a98263          	beq	s3,a0,80001af0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcf4>
80001490:	01492583          	lw	a1,20(s2)
80001494:	62058063          	beqz	a1,80001ab4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcb8>
80001498:	00100513          	li	a0,1
8000149c:	62a58663          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
800014a0:	00200513          	li	a0,2
800014a4:	6285e263          	bltu	a1,s0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
800014a8:	00300513          	li	a0,3
800014ac:	60a58e63          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
800014b0:	6165e663          	bltu	a1,s6,80001abc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcc0>
800014b4:	01092483          	lw	s1,16(s2)
800014b8:	0004a583          	lw	a1,0(s1)
800014bc:	0044ab83          	lw	s7,4(s1)
800014c0:	0084ac03          	lw	s8,8(s1)
800014c4:	00c4ac83          	lw	s9,12(s1)
800014c8:	00060513          	mv	a0,a2
800014cc:	0000a097          	auipc	ra,0xa
800014d0:	a58080e7          	jalr	-1448(ra) # 8000af24 <__addsf3>
800014d4:	00050593          	mv	a1,a0
800014d8:	000b8513          	mv	a0,s7
800014dc:	0000a097          	auipc	ra,0xa
800014e0:	a48080e7          	jalr	-1464(ra) # 8000af24 <__addsf3>
800014e4:	00050593          	mv	a1,a0
800014e8:	000c0513          	mv	a0,s8
800014ec:	0000a097          	auipc	ra,0xa
800014f0:	a38080e7          	jalr	-1480(ra) # 8000af24 <__addsf3>
800014f4:	00050593          	mv	a1,a0
800014f8:	000c8513          	mv	a0,s9
800014fc:	0000a097          	auipc	ra,0xa
80001500:	a28080e7          	jalr	-1496(ra) # 8000af24 <__addsf3>
80001504:	0104a583          	lw	a1,16(s1)
80001508:	00050613          	mv	a2,a0
8000150c:	00058513          	mv	a0,a1
80001510:	00060593          	mv	a1,a2
80001514:	0000a097          	auipc	ra,0xa
80001518:	a10080e7          	jalr	-1520(ra) # 8000af24 <__addsf3>
8000151c:	02a12c23          	sw	a0,56(sp)
80001520:	5c89e263          	bltu	s3,s0,80001ae4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xce8>
80001524:	02092583          	lw	a1,32(s2)
80001528:	58058663          	beqz	a1,80001ab4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcb8>
8000152c:	00050613          	mv	a2,a0
80001530:	00100513          	li	a0,1
80001534:	58a58a63          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001538:	5885e663          	bltu	a1,s0,80001ac4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcc8>
8000153c:	00300513          	li	a0,3
80001540:	58a58463          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001544:	5765ec63          	bltu	a1,s6,80001abc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcc0>
80001548:	01c92483          	lw	s1,28(s2)
8000154c:	0004a583          	lw	a1,0(s1)
80001550:	0044ab83          	lw	s7,4(s1)
80001554:	0084ac03          	lw	s8,8(s1)
80001558:	00c4ac83          	lw	s9,12(s1)
8000155c:	00060513          	mv	a0,a2
80001560:	0000a097          	auipc	ra,0xa
80001564:	9c4080e7          	jalr	-1596(ra) # 8000af24 <__addsf3>
80001568:	00050593          	mv	a1,a0
8000156c:	000b8513          	mv	a0,s7
80001570:	0000a097          	auipc	ra,0xa
80001574:	9b4080e7          	jalr	-1612(ra) # 8000af24 <__addsf3>
80001578:	00050593          	mv	a1,a0
8000157c:	000c0513          	mv	a0,s8
80001580:	0000a097          	auipc	ra,0xa
80001584:	9a4080e7          	jalr	-1628(ra) # 8000af24 <__addsf3>
80001588:	00050593          	mv	a1,a0
8000158c:	000c8513          	mv	a0,s9
80001590:	0000a097          	auipc	ra,0xa
80001594:	994080e7          	jalr	-1644(ra) # 8000af24 <__addsf3>
80001598:	0104a583          	lw	a1,16(s1)
8000159c:	00050613          	mv	a2,a0
800015a0:	00058513          	mv	a0,a1
800015a4:	00060593          	mv	a1,a2
800015a8:	0000a097          	auipc	ra,0xa
800015ac:	97c080e7          	jalr	-1668(ra) # 8000af24 <__addsf3>
800015b0:	00050613          	mv	a2,a0
800015b4:	00300513          	li	a0,3
800015b8:	02c12c23          	sw	a2,56(sp)
800015bc:	52a98a63          	beq	s3,a0,80001af0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcf4>
800015c0:	02c92583          	lw	a1,44(s2)
800015c4:	4e058863          	beqz	a1,80001ab4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcb8>
800015c8:	00100513          	li	a0,1
800015cc:	4ea58e63          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
800015d0:	4e85ea63          	bltu	a1,s0,80001ac4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcc8>
800015d4:	00300513          	li	a0,3
800015d8:	4ea58863          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
800015dc:	00400513          	li	a0,4
800015e0:	4f65e463          	bltu	a1,s6,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
800015e4:	02892483          	lw	s1,40(s2)
800015e8:	0004a583          	lw	a1,0(s1)
800015ec:	0044ab83          	lw	s7,4(s1)
800015f0:	0084ac03          	lw	s8,8(s1)
800015f4:	00c4ac83          	lw	s9,12(s1)
800015f8:	00060513          	mv	a0,a2
800015fc:	0000a097          	auipc	ra,0xa
80001600:	928080e7          	jalr	-1752(ra) # 8000af24 <__addsf3>
80001604:	00050593          	mv	a1,a0
80001608:	000b8513          	mv	a0,s7
8000160c:	0000a097          	auipc	ra,0xa
80001610:	918080e7          	jalr	-1768(ra) # 8000af24 <__addsf3>
80001614:	00050593          	mv	a1,a0
80001618:	000c0513          	mv	a0,s8
8000161c:	0000a097          	auipc	ra,0xa
80001620:	908080e7          	jalr	-1784(ra) # 8000af24 <__addsf3>
80001624:	00050593          	mv	a1,a0
80001628:	000c8513          	mv	a0,s9
8000162c:	0000a097          	auipc	ra,0xa
80001630:	8f8080e7          	jalr	-1800(ra) # 8000af24 <__addsf3>
80001634:	0104a583          	lw	a1,16(s1)
80001638:	00050613          	mv	a2,a0
8000163c:	00058513          	mv	a0,a1
80001640:	00060593          	mv	a1,a2
80001644:	0000a097          	auipc	ra,0xa
80001648:	8e0080e7          	jalr	-1824(ra) # 8000af24 <__addsf3>
8000164c:	02a12c23          	sw	a0,56(sp)
80001650:	4969ee63          	bltu	s3,s6,80001aec <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcf0>
80001654:	03892583          	lw	a1,56(s2)
80001658:	44058e63          	beqz	a1,80001ab4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcb8>
8000165c:	00050613          	mv	a2,a0
80001660:	00100513          	li	a0,1
80001664:	46a58263          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001668:	00200513          	li	a0,2
8000166c:	4485ee63          	bltu	a1,s0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001670:	00300513          	li	a0,3
80001674:	44a58a63          	beq	a1,a0,80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001678:	4565e263          	bltu	a1,s6,80001abc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcc0>
8000167c:	03492483          	lw	s1,52(s2)
80001680:	0004a583          	lw	a1,0(s1)
80001684:	0044ab83          	lw	s7,4(s1)
80001688:	0084ac03          	lw	s8,8(s1)
8000168c:	00c4ac83          	lw	s9,12(s1)
80001690:	00060513          	mv	a0,a2
80001694:	0000a097          	auipc	ra,0xa
80001698:	890080e7          	jalr	-1904(ra) # 8000af24 <__addsf3>
8000169c:	00050593          	mv	a1,a0
800016a0:	000b8513          	mv	a0,s7
800016a4:	0000a097          	auipc	ra,0xa
800016a8:	880080e7          	jalr	-1920(ra) # 8000af24 <__addsf3>
800016ac:	00050593          	mv	a1,a0
800016b0:	000c0513          	mv	a0,s8
800016b4:	0000a097          	auipc	ra,0xa
800016b8:	870080e7          	jalr	-1936(ra) # 8000af24 <__addsf3>
800016bc:	00050593          	mv	a1,a0
800016c0:	000c8513          	mv	a0,s9
800016c4:	0000a097          	auipc	ra,0xa
800016c8:	860080e7          	jalr	-1952(ra) # 8000af24 <__addsf3>
800016cc:	0104a583          	lw	a1,16(s1)
800016d0:	00050613          	mv	a2,a0
800016d4:	00058513          	mv	a0,a1
800016d8:	00060593          	mv	a1,a2
800016dc:	0000a097          	auipc	ra,0xa
800016e0:	848080e7          	jalr	-1976(ra) # 8000af24 <__addsf3>
800016e4:	02a12c23          	sw	a0,56(sp)
800016e8:	1f400513          	li	a0,500
800016ec:	06a12223          	sw	a0,100(sp)
800016f0:	03810513          	addi	a0,sp,56
800016f4:	04a12a23          	sw	a0,84(sp)
800016f8:	80009537          	lui	a0,0x80009
800016fc:	7f050513          	addi	a0,a0,2032 # 800097f0 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h04eee215b38ad48bE>
80001700:	04a12c23          	sw	a0,88(sp)
80001704:	06410513          	addi	a0,sp,100
80001708:	04a12e23          	sw	a0,92(sp)
8000170c:	8000a9b7          	lui	s3,0x8000a
80001710:	c1498993          	addi	s3,s3,-1004 # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
80001714:	07312023          	sw	s3,96(sp)
80001718:	04012623          	sw	zero,76(sp)
8000171c:	8000c537          	lui	a0,0x8000c
80001720:	32050513          	addi	a0,a0,800 # 8000c320 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.50>
80001724:	02a12e23          	sw	a0,60(sp)
80001728:	04812023          	sw	s0,64(sp)
8000172c:	05410513          	addi	a0,sp,84
80001730:	04a12223          	sw	a0,68(sp)
80001734:	05a12423          	sw	s10,72(sp)
80001738:	06b10513          	addi	a0,sp,107
8000173c:	03c10613          	addi	a2,sp,60
80001740:	8000c5b7          	lui	a1,0x8000c
80001744:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80001748:	00006097          	auipc	ra,0x6
8000174c:	798080e7          	jalr	1944(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80001750:	28051c63          	bnez	a0,800019e8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbec>
80001754:	03012503          	lw	a0,48(sp)
80001758:	8000fa37          	lui	s4,0x8000f
8000175c:	520a0a13          	addi	s4,s4,1312 # 8000f520 <.L_MergedGlobals>
80001760:	014a0b93          	addi	s7,s4,20
80001764:	04050c63          	beqz	a0,800017bc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x9c0>
80001768:	02c12483          	lw	s1,44(sp)
8000176c:	00448493          	addi	s1,s1,4
80001770:	00c00593          	li	a1,12
80001774:	00009097          	auipc	ra,0x9
80001778:	a54080e7          	jalr	-1452(ra) # 8000a1c8 <__mulsi3>
8000177c:	00a48933          	add	s2,s1,a0
80001780:	00c0006f          	j	8000178c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x990>
80001784:	00c48493          	addi	s1,s1,12
80001788:	03248a63          	beq	s1,s2,800017bc <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x9c0>
8000178c:	ffc4a683          	lw	a3,-4(s1)
80001790:	fe068ae3          	beqz	a3,80001784 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x988>
80001794:	0004a583          	lw	a1,0(s1)
80001798:	00269693          	slli	a3,a3,0x2
8000179c:	00400613          	li	a2,4
800017a0:	000b8513          	mv	a0,s7
800017a4:	00001097          	auipc	ra,0x1
800017a8:	904080e7          	jalr	-1788(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
800017ac:	010a2503          	lw	a0,16(s4)
800017b0:	40b50533          	sub	a0,a0,a1
800017b4:	00aa2823          	sw	a0,16(s4)
800017b8:	fcdff06f          	j	80001784 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x988>
800017bc:	02812503          	lw	a0,40(sp)
800017c0:	02050a63          	beqz	a0,800017f4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x9f8>
800017c4:	00c00593          	li	a1,12
800017c8:	00009097          	auipc	ra,0x9
800017cc:	a00080e7          	jalr	-1536(ra) # 8000a1c8 <__mulsi3>
800017d0:	02c12583          	lw	a1,44(sp)
800017d4:	00050693          	mv	a3,a0
800017d8:	00400613          	li	a2,4
800017dc:	000b8513          	mv	a0,s7
800017e0:	00001097          	auipc	ra,0x1
800017e4:	8c8080e7          	jalr	-1848(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
800017e8:	010a2503          	lw	a0,16(s4)
800017ec:	40b50533          	sub	a0,a0,a1
800017f0:	00aa2823          	sw	a0,16(s4)
800017f4:	02412503          	lw	a0,36(sp)
800017f8:	04050c63          	beqz	a0,80001850 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xa54>
800017fc:	02012483          	lw	s1,32(sp)
80001800:	00448493          	addi	s1,s1,4
80001804:	00c00593          	li	a1,12
80001808:	00009097          	auipc	ra,0x9
8000180c:	9c0080e7          	jalr	-1600(ra) # 8000a1c8 <__mulsi3>
80001810:	00a48933          	add	s2,s1,a0
80001814:	00c0006f          	j	80001820 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xa24>
80001818:	00c48493          	addi	s1,s1,12
8000181c:	03248a63          	beq	s1,s2,80001850 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xa54>
80001820:	ffc4a683          	lw	a3,-4(s1)
80001824:	fe068ae3          	beqz	a3,80001818 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xa1c>
80001828:	0004a583          	lw	a1,0(s1)
8000182c:	00269693          	slli	a3,a3,0x2
80001830:	00400613          	li	a2,4
80001834:	000b8513          	mv	a0,s7
80001838:	00001097          	auipc	ra,0x1
8000183c:	870080e7          	jalr	-1936(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
80001840:	010a2503          	lw	a0,16(s4)
80001844:	40b50533          	sub	a0,a0,a1
80001848:	00aa2823          	sw	a0,16(s4)
8000184c:	fcdff06f          	j	80001818 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xa1c>
80001850:	01c12503          	lw	a0,28(sp)
80001854:	02050a63          	beqz	a0,80001888 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xa8c>
80001858:	00c00593          	li	a1,12
8000185c:	00009097          	auipc	ra,0x9
80001860:	96c080e7          	jalr	-1684(ra) # 8000a1c8 <__mulsi3>
80001864:	02012583          	lw	a1,32(sp)
80001868:	00050693          	mv	a3,a0
8000186c:	00400613          	li	a2,4
80001870:	000b8513          	mv	a0,s7
80001874:	00001097          	auipc	ra,0x1
80001878:	834080e7          	jalr	-1996(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
8000187c:	010a2503          	lw	a0,16(s4)
80001880:	40b50533          	sub	a0,a0,a1
80001884:	00aa2823          	sw	a0,16(s4)
80001888:	01812503          	lw	a0,24(sp)
8000188c:	04050c63          	beqz	a0,800018e4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xae8>
80001890:	01412483          	lw	s1,20(sp)
80001894:	00448493          	addi	s1,s1,4
80001898:	00c00593          	li	a1,12
8000189c:	00009097          	auipc	ra,0x9
800018a0:	92c080e7          	jalr	-1748(ra) # 8000a1c8 <__mulsi3>
800018a4:	00a48933          	add	s2,s1,a0
800018a8:	00c0006f          	j	800018b4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xab8>
800018ac:	00c48493          	addi	s1,s1,12
800018b0:	03248a63          	beq	s1,s2,800018e4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xae8>
800018b4:	ffc4a683          	lw	a3,-4(s1)
800018b8:	fe068ae3          	beqz	a3,800018ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xab0>
800018bc:	0004a583          	lw	a1,0(s1)
800018c0:	00269693          	slli	a3,a3,0x2
800018c4:	00400613          	li	a2,4
800018c8:	000b8513          	mv	a0,s7
800018cc:	00000097          	auipc	ra,0x0
800018d0:	7dc080e7          	jalr	2012(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
800018d4:	010a2503          	lw	a0,16(s4)
800018d8:	40b50533          	sub	a0,a0,a1
800018dc:	00aa2823          	sw	a0,16(s4)
800018e0:	fcdff06f          	j	800018ac <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xab0>
800018e4:	01012503          	lw	a0,16(sp)
800018e8:	02050a63          	beqz	a0,8000191c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xb20>
800018ec:	00c00593          	li	a1,12
800018f0:	00009097          	auipc	ra,0x9
800018f4:	8d8080e7          	jalr	-1832(ra) # 8000a1c8 <__mulsi3>
800018f8:	01412583          	lw	a1,20(sp)
800018fc:	00050693          	mv	a3,a0
80001900:	00400613          	li	a2,4
80001904:	000b8513          	mv	a0,s7
80001908:	00000097          	auipc	ra,0x0
8000190c:	7a0080e7          	jalr	1952(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
80001910:	010a2503          	lw	a0,16(s4)
80001914:	40b50533          	sub	a0,a0,a1
80001918:	00aa2823          	sw	a0,16(s4)
8000191c:	b0002573          	.insn	4, 0xb0002573
80001920:	00812583          	lw	a1,8(sp)
80001924:	00a58533          	add	a0,a1,a0
80001928:	00a12423          	sw	a0,8(sp)
8000192c:	b0202573          	.insn	4, 0xb0202573
80001930:	00c12583          	lw	a1,12(sp)
80001934:	00810613          	addi	a2,sp,8
80001938:	04c12a23          	sw	a2,84(sp)
8000193c:	05312c23          	sw	s3,88(sp)
80001940:	00c10613          	addi	a2,sp,12
80001944:	04c12e23          	sw	a2,92(sp)
80001948:	07312023          	sw	s3,96(sp)
8000194c:	04012623          	sw	zero,76(sp)
80001950:	00a58533          	add	a0,a1,a0
80001954:	00a12623          	sw	a0,12(sp)
80001958:	8000c537          	lui	a0,0x8000c
8000195c:	4ac50513          	addi	a0,a0,1196 # 8000c4ac <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.75>
80001960:	02a12e23          	sw	a0,60(sp)
80001964:	04812023          	sw	s0,64(sp)
80001968:	05410513          	addi	a0,sp,84
8000196c:	04a12223          	sw	a0,68(sp)
80001970:	05a12423          	sw	s10,72(sp)
80001974:	06b10513          	addi	a0,sp,107
80001978:	03c10613          	addi	a2,sp,60
8000197c:	8000c5b7          	lui	a1,0x8000c
80001980:	14c58593          	addi	a1,a1,332 # 8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>
80001984:	00006097          	auipc	ra,0x6
80001988:	55c080e7          	jalr	1372(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
8000198c:	04051e63          	bnez	a0,800019e8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xbec>
80001990:	00000073          	ecall
80001994:	cb8ff06f          	j	80000e4c <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0x50>
80001998:	8000c637          	lui	a2,0x8000c
8000199c:	35860613          	addi	a2,a2,856 # 8000c358 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.53>
800019a0:	000c0513          	mv	a0,s8
800019a4:	00005097          	auipc	ra,0x5
800019a8:	6e0080e7          	jalr	1760(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800019ac:	8000c637          	lui	a2,0x8000c
800019b0:	39860613          	addi	a2,a2,920 # 8000c398 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.57>
800019b4:	000c0513          	mv	a0,s8
800019b8:	00005097          	auipc	ra,0x5
800019bc:	6cc080e7          	jalr	1740(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800019c0:	8000c637          	lui	a2,0x8000c
800019c4:	38860613          	addi	a2,a2,904 # 8000c388 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.56>
800019c8:	000b8513          	mv	a0,s7
800019cc:	00005097          	auipc	ra,0x5
800019d0:	6b8080e7          	jalr	1720(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800019d4:	8000c637          	lui	a2,0x8000c
800019d8:	3a860613          	addi	a2,a2,936 # 8000c3a8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.58>
800019dc:	000b8513          	mv	a0,s7
800019e0:	00005097          	auipc	ra,0x5
800019e4:	6a4080e7          	jalr	1700(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800019e8:	8000c537          	lui	a0,0x8000c
800019ec:	17450513          	addi	a0,a0,372 # 8000c174 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.24>
800019f0:	8000c6b7          	lui	a3,0x8000c
800019f4:	16468693          	addi	a3,a3,356 # 8000c164 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.23>
800019f8:	8000c737          	lui	a4,0x8000c
800019fc:	1b070713          	addi	a4,a4,432 # 8000c1b0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.26>
80001a00:	02b00593          	li	a1,43
80001a04:	06b10613          	addi	a2,sp,107
80001a08:	00006097          	auipc	ra,0x6
80001a0c:	870080e7          	jalr	-1936(ra) # 80007278 <_ZN4core6result13unwrap_failed17hec5fc5af20fc7d85E>
80001a10:	8000c637          	lui	a2,0x8000c
80001a14:	3e860613          	addi	a2,a2,1000 # 8000c3e8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.62>
80001a18:	000b8513          	mv	a0,s7
80001a1c:	00005097          	auipc	ra,0x5
80001a20:	668080e7          	jalr	1640(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80001a24:	8000c637          	lui	a2,0x8000c
80001a28:	42860613          	addi	a2,a2,1064 # 8000c428 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.66>
80001a2c:	000b8513          	mv	a0,s7
80001a30:	00005097          	auipc	ra,0x5
80001a34:	654080e7          	jalr	1620(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80001a38:	8000c637          	lui	a2,0x8000c
80001a3c:	40860613          	addi	a2,a2,1032 # 8000c408 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.64>
80001a40:	000b8513          	mv	a0,s7
80001a44:	00005097          	auipc	ra,0x5
80001a48:	640080e7          	jalr	1600(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80001a4c:	00000513          	li	a0,0
80001a50:	0400006f          	j	80001a90 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc94>
80001a54:	00000513          	li	a0,0
80001a58:	04c0006f          	j	80001aa4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xca8>
80001a5c:	00200513          	li	a0,2
80001a60:	0300006f          	j	80001a90 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc94>
80001a64:	00200513          	li	a0,2
80001a68:	03c0006f          	j	80001aa4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xca8>
80001a6c:	00100513          	li	a0,1
80001a70:	0340006f          	j	80001aa4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xca8>
80001a74:	00100513          	li	a0,1
80001a78:	0180006f          	j	80001a90 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc94>
80001a7c:	00400513          	li	a0,4
80001a80:	0100006f          	j	80001a90 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xc94>
80001a84:	00400513          	li	a0,4
80001a88:	01c0006f          	j	80001aa4 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xca8>
80001a8c:	00300513          	li	a0,3
80001a90:	8000c637          	lui	a2,0x8000c
80001a94:	37860613          	addi	a2,a2,888 # 8000c378 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.55>
80001a98:	00005097          	auipc	ra,0x5
80001a9c:	5ec080e7          	jalr	1516(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80001aa0:	00300513          	li	a0,3
80001aa4:	8000c637          	lui	a2,0x8000c
80001aa8:	36860613          	addi	a2,a2,872 # 8000c368 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.54>
80001aac:	00005097          	auipc	ra,0x5
80001ab0:	5d8080e7          	jalr	1496(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80001ab4:	00000513          	li	a0,0
80001ab8:	0100006f          	j	80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001abc:	00400513          	li	a0,4
80001ac0:	0080006f          	j	80001ac8 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xccc>
80001ac4:	00200513          	li	a0,2
80001ac8:	8000c637          	lui	a2,0x8000c
80001acc:	34860613          	addi	a2,a2,840 # 8000c348 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.52>
80001ad0:	00050593          	mv	a1,a0
80001ad4:	00005097          	auipc	ra,0x5
80001ad8:	5b0080e7          	jalr	1456(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80001adc:	00000513          	li	a0,0
80001ae0:	0100006f          	j	80001af0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcf4>
80001ae4:	00200513          	li	a0,2
80001ae8:	0080006f          	j	80001af0 <_ZN7SuperOS9user_main17h6bf977d9808044e8E+0xcf4>
80001aec:	00400513          	li	a0,4
80001af0:	8000c637          	lui	a2,0x8000c
80001af4:	33860613          	addi	a2,a2,824 # 8000c338 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.51>
80001af8:	00050593          	mv	a1,a0
80001afc:	00005097          	auipc	ra,0x5
80001b00:	588080e7          	jalr	1416(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

80001b04 <_ZN7SuperOS6kalloc18handle_alloc_error17h60e11a1e07fa594bE>:
80001b04:	fd010113          	addi	sp,sp,-48
80001b08:	00a12423          	sw	a0,8(sp)
80001b0c:	00b12623          	sw	a1,12(sp)
80001b10:	00810513          	addi	a0,sp,8
80001b14:	800005b7          	lui	a1,0x80000
80001b18:	33458593          	addi	a1,a1,820 # 80000334 <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hd36fc3f43d711df6E>
80001b1c:	8000c637          	lui	a2,0x8000c
80001b20:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.77>
80001b24:	00100693          	li	a3,1
80001b28:	02012023          	sw	zero,32(sp)
80001b2c:	02a12423          	sw	a0,40(sp)
80001b30:	02b12623          	sw	a1,44(sp)
80001b34:	02810513          	addi	a0,sp,40
80001b38:	00c12823          	sw	a2,16(sp)
80001b3c:	00d12a23          	sw	a3,20(sp)
80001b40:	00a12c23          	sw	a0,24(sp)
80001b44:	00d12e23          	sw	a3,28(sp)
80001b48:	8000c5b7          	lui	a1,0x8000c
80001b4c:	4ec58593          	addi	a1,a1,1260 # 8000c4ec <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.79>
80001b50:	01010513          	addi	a0,sp,16
80001b54:	00005097          	auipc	ra,0x5
80001b58:	4bc080e7          	jalr	1212(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

80001b5c <_RNvCs77YZ1zEOoxS_7___rustc8___rg_oom>:
80001b5c:	00050613          	mv	a2,a0
80001b60:	00058513          	mv	a0,a1
80001b64:	00060593          	mv	a1,a2
80001b68:	00000097          	auipc	ra,0x0
80001b6c:	f9c080e7          	jalr	-100(ra) # 80001b04 <_ZN7SuperOS6kalloc18handle_alloc_error17h60e11a1e07fa594bE>

80001b70 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE>:
80001b70:	fd010113          	addi	sp,sp,-48
80001b74:	02112623          	sw	ra,44(sp)
80001b78:	02812423          	sw	s0,40(sp)
80001b7c:	02912223          	sw	s1,36(sp)
80001b80:	03212023          	sw	s2,32(sp)
80001b84:	01312e23          	sw	s3,28(sp)
80001b88:	01412c23          	sw	s4,24(sp)
80001b8c:	01512a23          	sw	s5,20(sp)
80001b90:	01612823          	sw	s6,16(sp)
80001b94:	00058413          	mv	s0,a1
80001b98:	00462583          	lw	a1,4(a2)
80001b9c:	00050493          	mv	s1,a0
80001ba0:	08058a63          	beqz	a1,80001c34 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0xc4>
80001ba4:	00862983          	lw	s3,8(a2)
80001ba8:	08098663          	beqz	s3,80001c34 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0xc4>
80001bac:	00062a03          	lw	s4,0(a2)
80001bb0:	8000f5b7          	lui	a1,0x8000f
80001bb4:	53458593          	addi	a1,a1,1332 # 8000f534 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17h4e3ac0d9bb5c0a52E.llvm.13200221409311646672+0x4>
80001bb8:	00410513          	addi	a0,sp,4
80001bbc:	00400613          	li	a2,4
80001bc0:	00040693          	mv	a3,s0
80001bc4:	00000097          	auipc	ra,0x0
80001bc8:	2fc080e7          	jalr	764(ra) # 80001ec0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E>
80001bcc:	00812503          	lw	a0,8(sp)
80001bd0:	0a050c63          	beqz	a0,80001c88 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x118>
80001bd4:	00c12503          	lw	a0,12(sp)
80001bd8:	8000fab7          	lui	s5,0x8000f
80001bdc:	530aa583          	lw	a1,1328(s5) # 8000f530 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17h4e3ac0d9bb5c0a52E.llvm.13200221409311646672>
80001be0:	00412903          	lw	s2,4(sp)
80001be4:	530a8b13          	addi	s6,s5,1328
80001be8:	00a58533          	add	a0,a1,a0
80001bec:	52aaa823          	sw	a0,1328(s5)
80001bf0:	00090513          	mv	a0,s2
80001bf4:	000a0593          	mv	a1,s4
80001bf8:	00098613          	mv	a2,s3
80001bfc:	00009097          	auipc	ra,0x9
80001c00:	0a0080e7          	jalr	160(ra) # 8000ac9c <memcpy>
80001c04:	004b0513          	addi	a0,s6,4
80001c08:	00400613          	li	a2,4
80001c0c:	000a0593          	mv	a1,s4
80001c10:	00098693          	mv	a3,s3
80001c14:	00000097          	auipc	ra,0x0
80001c18:	494080e7          	jalr	1172(ra) # 800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>
80001c1c:	530aa503          	lw	a0,1328(s5)
80001c20:	40b50533          	sub	a0,a0,a1
80001c24:	52aaa823          	sw	a0,1328(s5)
80001c28:	00193513          	seqz	a0,s2
80001c2c:	06090463          	beqz	s2,80001c94 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x124>
80001c30:	0680006f          	j	80001c98 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x128>
80001c34:	08040c63          	beqz	s0,80001ccc <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x15c>
80001c38:	8000f537          	lui	a0,0x8000f
80001c3c:	54854003          	lbu	zero,1352(a0) # 8000f548 <__rust_no_alloc_shim_is_unstable>
80001c40:	8000f5b7          	lui	a1,0x8000f
80001c44:	53458593          	addi	a1,a1,1332 # 8000f534 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17h4e3ac0d9bb5c0a52E.llvm.13200221409311646672+0x4>
80001c48:	00410513          	addi	a0,sp,4
80001c4c:	00400613          	li	a2,4
80001c50:	00040693          	mv	a3,s0
80001c54:	00000097          	auipc	ra,0x0
80001c58:	26c080e7          	jalr	620(ra) # 80001ec0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E>
80001c5c:	00812503          	lw	a0,8(sp)
80001c60:	02050463          	beqz	a0,80001c88 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x118>
80001c64:	00c12503          	lw	a0,12(sp)
80001c68:	8000f5b7          	lui	a1,0x8000f
80001c6c:	5305a603          	lw	a2,1328(a1) # 8000f530 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17h4e3ac0d9bb5c0a52E.llvm.13200221409311646672>
80001c70:	00412903          	lw	s2,4(sp)
80001c74:	00a60533          	add	a0,a2,a0
80001c78:	52a5a823          	sw	a0,1328(a1)
80001c7c:	00193513          	seqz	a0,s2
80001c80:	00090a63          	beqz	s2,80001c94 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x124>
80001c84:	0140006f          	j	80001c98 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x128>
80001c88:	00000913          	li	s2,0
80001c8c:	00103513          	seqz	a0,zero
80001c90:	00001463          	bnez	zero,80001c98 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x128>
80001c94:	00400913          	li	s2,4
80001c98:	00a4a023          	sw	a0,0(s1)
80001c9c:	0124a223          	sw	s2,4(s1)
80001ca0:	0084a423          	sw	s0,8(s1)
80001ca4:	02c12083          	lw	ra,44(sp)
80001ca8:	02812403          	lw	s0,40(sp)
80001cac:	02412483          	lw	s1,36(sp)
80001cb0:	02012903          	lw	s2,32(sp)
80001cb4:	01c12983          	lw	s3,28(sp)
80001cb8:	01812a03          	lw	s4,24(sp)
80001cbc:	01412a83          	lw	s5,20(sp)
80001cc0:	01012b03          	lw	s6,16(sp)
80001cc4:	03010113          	addi	sp,sp,48
80001cc8:	00008067          	ret
80001ccc:	00400913          	li	s2,4
80001cd0:	00193513          	seqz	a0,s2
80001cd4:	fc0912e3          	bnez	s2,80001c98 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x128>
80001cd8:	fbdff06f          	j	80001c94 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE+0x124>

80001cdc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E>:
80001cdc:	fd010113          	addi	sp,sp,-48
80001ce0:	02112623          	sw	ra,44(sp)
80001ce4:	02812423          	sw	s0,40(sp)
80001ce8:	02912223          	sw	s1,36(sp)
80001cec:	03212023          	sw	s2,32(sp)
80001cf0:	00050493          	mv	s1,a0
80001cf4:	00052683          	lw	a3,0(a0)
80001cf8:	00169913          	slli	s2,a3,0x1
80001cfc:	00400513          	li	a0,4
80001d00:	00058413          	mv	s0,a1
80001d04:	01256463          	bltu	a0,s2,80001d0c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0x30>
80001d08:	00400913          	li	s2,4
80001d0c:	01d6d593          	srli	a1,a3,0x1d
80001d10:	00000513          	li	a0,0
80001d14:	06059a63          	bnez	a1,80001d88 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0xac>
80001d18:	00291593          	slli	a1,s2,0x2
80001d1c:	80000637          	lui	a2,0x80000
80001d20:	ffc60713          	addi	a4,a2,-4 # 7ffffffc <.Lline_table_start2+0x7fffe7c2>
80001d24:	06b76263          	bltu	a4,a1,80001d88 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0xac>
80001d28:	00069663          	bnez	a3,80001d34 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0x58>
80001d2c:	00000513          	li	a0,0
80001d30:	0180006f          	j	80001d48 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0x6c>
80001d34:	0044a503          	lw	a0,4(s1)
80001d38:	00269693          	slli	a3,a3,0x2
80001d3c:	00a12a23          	sw	a0,20(sp)
80001d40:	00d12e23          	sw	a3,28(sp)
80001d44:	00400513          	li	a0,4
80001d48:	00a12c23          	sw	a0,24(sp)
80001d4c:	00810513          	addi	a0,sp,8
80001d50:	01410613          	addi	a2,sp,20
80001d54:	00000097          	auipc	ra,0x0
80001d58:	e1c080e7          	jalr	-484(ra) # 80001b70 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE>
80001d5c:	00812503          	lw	a0,8(sp)
80001d60:	02051c63          	bnez	a0,80001d98 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0xbc>
80001d64:	00c12503          	lw	a0,12(sp)
80001d68:	0124a023          	sw	s2,0(s1)
80001d6c:	00a4a223          	sw	a0,4(s1)
80001d70:	02c12083          	lw	ra,44(sp)
80001d74:	02812403          	lw	s0,40(sp)
80001d78:	02412483          	lw	s1,36(sp)
80001d7c:	02012903          	lw	s2,32(sp)
80001d80:	03010113          	addi	sp,sp,48
80001d84:	00008067          	ret
80001d88:	00060593          	mv	a1,a2
80001d8c:	00040613          	mv	a2,s0
80001d90:	00000097          	auipc	ra,0x0
80001d94:	650080e7          	jalr	1616(ra) # 800023e0 <_ZN5alloc7raw_vec12handle_error17h48f777ab8eb9bae7E>
80001d98:	00c12503          	lw	a0,12(sp)
80001d9c:	01012603          	lw	a2,16(sp)
80001da0:	fe9ff06f          	j	80001d88 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1517515408485c43E+0xac>

80001da4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE>:
80001da4:	fd010113          	addi	sp,sp,-48
80001da8:	02112623          	sw	ra,44(sp)
80001dac:	02812423          	sw	s0,40(sp)
80001db0:	02912223          	sw	s1,36(sp)
80001db4:	03212023          	sw	s2,32(sp)
80001db8:	01312e23          	sw	s3,28(sp)
80001dbc:	01412c23          	sw	s4,24(sp)
80001dc0:	00050493          	mv	s1,a0
80001dc4:	00052a03          	lw	s4,0(a0)
80001dc8:	001a1913          	slli	s2,s4,0x1
80001dcc:	00400513          	li	a0,4
80001dd0:	00058413          	mv	s0,a1
80001dd4:	01256463          	bltu	a0,s2,80001ddc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE+0x38>
80001dd8:	00400913          	li	s2,4
80001ddc:	00c00613          	li	a2,12
80001de0:	00090513          	mv	a0,s2
80001de4:	00000593          	li	a1,0
80001de8:	00000693          	li	a3,0
80001dec:	00008097          	auipc	ra,0x8
80001df0:	424080e7          	jalr	1060(ra) # 8000a210 <__muldi3>
80001df4:	00050993          	mv	s3,a0
80001df8:	00000513          	li	a0,0
80001dfc:	08059463          	bnez	a1,80001e84 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE+0xe0>
80001e00:	800005b7          	lui	a1,0x80000
80001e04:	ffc58613          	addi	a2,a1,-4 # 7ffffffc <.Lline_table_start2+0x7fffe7c2>
80001e08:	09366863          	bltu	a2,s3,80001e98 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE+0xf4>
80001e0c:	000a1663          	bnez	s4,80001e18 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE+0x74>
80001e10:	00000513          	li	a0,0
80001e14:	0240006f          	j	80001e38 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE+0x94>
80001e18:	00c00593          	li	a1,12
80001e1c:	000a0513          	mv	a0,s4
80001e20:	00008097          	auipc	ra,0x8
80001e24:	3a8080e7          	jalr	936(ra) # 8000a1c8 <__mulsi3>
80001e28:	0044a583          	lw	a1,4(s1)
80001e2c:	00b12623          	sw	a1,12(sp)
80001e30:	00a12a23          	sw	a0,20(sp)
80001e34:	00400513          	li	a0,4
80001e38:	00a12823          	sw	a0,16(sp)
80001e3c:	00010513          	mv	a0,sp
80001e40:	00c10613          	addi	a2,sp,12
80001e44:	00098593          	mv	a1,s3
80001e48:	00000097          	auipc	ra,0x0
80001e4c:	d28080e7          	jalr	-728(ra) # 80001b70 <_ZN5alloc7raw_vec11finish_grow17hfcb350a065e47a9dE>
80001e50:	00012503          	lw	a0,0(sp)
80001e54:	02051e63          	bnez	a0,80001e90 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb33cf6bf4a8f5faE+0xec>
80001e58:	00412503          	lw	a0,4(sp)
80001e5c:	0124a023          	sw	s2,0(s1)
80001e60:	00a4a223          	sw	a0,4(s1)
80001e64:	02c12083          	lw	ra,44(sp)
80001e68:	02812403          	lw	s0,40(sp)
80001e6c:	02412483          	lw	s1,36(sp)
80001e70:	02012903          	lw	s2,32(sp)
80001e74:	01c12983          	lw	s3,28(sp)
80001e78:	01812a03          	lw	s4,24(sp)
80001e7c:	03010113          	addi	sp,sp,48
80001e80:	00008067          	ret
80001e84:	00040613          	mv	a2,s0
80001e88:	00000097          	auipc	ra,0x0
80001e8c:	558080e7          	jalr	1368(ra) # 800023e0 <_ZN5alloc7raw_vec12handle_error17h48f777ab8eb9bae7E>
80001e90:	00412503          	lw	a0,4(sp)
80001e94:	00812583          	lw	a1,8(sp)
80001e98:	00040613          	mv	a2,s0
80001e9c:	00000097          	auipc	ra,0x0
80001ea0:	544080e7          	jalr	1348(ra) # 800023e0 <_ZN5alloc7raw_vec12handle_error17h48f777ab8eb9bae7E>

80001ea4 <_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8281980d3465b01E>:
80001ea4:	8000c6b7          	lui	a3,0x8000c
80001ea8:	57468693          	addi	a3,a3,1396 # 8000c574 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.0>
80001eac:	00b00613          	li	a2,11
80001eb0:	00058513          	mv	a0,a1
80001eb4:	00068593          	mv	a1,a3
80001eb8:	00007317          	auipc	t1,0x7
80001ebc:	e2430067          	jr	-476(t1) # 80008cdc <_ZN4core3fmt9Formatter9write_str17h2bacd4d389941491E>

80001ec0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E>:
80001ec0:	fd010113          	addi	sp,sp,-48
80001ec4:	02112623          	sw	ra,44(sp)
80001ec8:	02812423          	sw	s0,40(sp)
80001ecc:	02912223          	sw	s1,36(sp)
80001ed0:	03212023          	sw	s2,32(sp)
80001ed4:	01312e23          	sw	s3,28(sp)
80001ed8:	00060993          	mv	s3,a2
80001edc:	00058913          	mv	s2,a1
80001ee0:	00800593          	li	a1,8
80001ee4:	00050413          	mv	s0,a0
80001ee8:	00d5e463          	bltu	a1,a3,80001ef0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x30>
80001eec:	00800693          	li	a3,8
80001ef0:	00368693          	addi	a3,a3,3
80001ef4:	ffc6f493          	andi	s1,a3,-4
80001ef8:	00048513          	mv	a0,s1
80001efc:	00098593          	mv	a1,s3
80001f00:	00007097          	auipc	ra,0x7
80001f04:	2a0080e7          	jalr	672(ra) # 800091a0 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h8f83fbfbb598e937E>
80001f08:	00400593          	li	a1,4
80001f0c:	12050e63          	beqz	a0,80002048 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x188>
80001f10:	00492603          	lw	a2,4(s2)
80001f14:	12060a63          	beqz	a2,80002048 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x188>
80001f18:	40a00533          	neg	a0,a0
80001f1c:	0019d693          	srli	a3,s3,0x1
80001f20:	55555737          	lui	a4,0x55555
80001f24:	333337b7          	lui	a5,0x33333
80001f28:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
80001f2c:	33378793          	addi	a5,a5,819 # 33333333 <.Lline_table_start2+0x33331af9>
80001f30:	00e6f6b3          	and	a3,a3,a4
80001f34:	40d986b3          	sub	a3,s3,a3
80001f38:	00f6f733          	and	a4,a3,a5
80001f3c:	0026d693          	srli	a3,a3,0x2
80001f40:	00f6f6b3          	and	a3,a3,a5
80001f44:	0f0f1837          	lui	a6,0xf0f1
80001f48:	00d706b3          	add	a3,a4,a3
80001f4c:	0046d713          	srli	a4,a3,0x4
80001f50:	00e686b3          	add	a3,a3,a4
80001f54:	fff98713          	addi	a4,s3,-1
80001f58:	01357533          	and	a0,a0,s3
80001f5c:	413007b3          	neg	a5,s3
80001f60:	f0f80813          	addi	a6,a6,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
80001f64:	0106f6b3          	and	a3,a3,a6
80001f68:	00869813          	slli	a6,a3,0x8
80001f6c:	010686b3          	add	a3,a3,a6
80001f70:	01069813          	slli	a6,a3,0x10
80001f74:	010686b3          	add	a3,a3,a6
80001f78:	0186d813          	srli	a6,a3,0x18
80001f7c:	00200893          	li	a7,2
80001f80:	0140006f          	j	80001f94 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0xd4>
80001f84:	00462683          	lw	a3,4(a2)
80001f88:	00060913          	mv	s2,a2
80001f8c:	00068613          	mv	a2,a3
80001f90:	0a068c63          	beqz	a3,80002048 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x188>
80001f94:	00062383          	lw	t2,0(a2)
80001f98:	fe93e6e3          	bltu	t2,s1,80001f84 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0xc4>
80001f9c:	0d187a63          	bgeu	a6,a7,80002070 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x1b0>
80001fa0:	00c70e33          	add	t3,a4,a2
80001fa4:	00fe7333          	and	t1,t3,a5
80001fa8:	00060693          	mv	a3,a2
80001fac:	00c30863          	beq	t1,a2,80001fbc <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0xfc>
80001fb0:	008e0693          	addi	a3,t3,8
80001fb4:	00f6f6b3          	and	a3,a3,a5
80001fb8:	40c682b3          	sub	t0,a3,a2
80001fbc:	00968f33          	add	t5,a3,s1
80001fc0:	00760eb3          	add	t4,a2,t2
80001fc4:	fdeee0e3          	bltu	t4,t5,80001f84 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0xc4>
80001fc8:	41ee8e33          	sub	t3,t4,t5
80001fcc:	020e0e63          	beqz	t3,80002008 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x148>
80001fd0:	003f0f13          	addi	t5,t5,3
80001fd4:	ffcf7393          	andi	t2,t5,-4
80001fd8:	00838f13          	addi	t5,t2,8
80001fdc:	fbeee4e3          	bltu	t4,t5,80001f84 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0xc4>
80001fe0:	00092223          	sw	zero,4(s2)
80001fe4:	00462703          	lw	a4,4(a2)
80001fe8:	00062223          	sw	zero,4(a2)
80001fec:	02c30e63          	beq	t1,a2,80002028 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x168>
80001ff0:	01c3a023          	sw	t3,0(t2)
80001ff4:	00e3a223          	sw	a4,4(t2)
80001ff8:	00562023          	sw	t0,0(a2)
80001ffc:	00762223          	sw	t2,4(a2)
80002000:	00c92223          	sw	a2,4(s2)
80002004:	0340006f          	j	80002038 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x178>
80002008:	00092223          	sw	zero,4(s2)
8000200c:	00462703          	lw	a4,4(a2)
80002010:	00062223          	sw	zero,4(a2)
80002014:	00c31663          	bne	t1,a2,80002020 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x160>
80002018:	00e92223          	sw	a4,4(s2)
8000201c:	0180006f          	j	80002034 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x174>
80002020:	00060393          	mv	t2,a2
80002024:	00028e13          	mv	t3,t0
80002028:	01c3a023          	sw	t3,0(t2)
8000202c:	00e3a223          	sw	a4,4(t2)
80002030:	00792223          	sw	t2,4(s2)
80002034:	00068a63          	beqz	a3,80002048 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x188>
80002038:	00d42023          	sw	a3,0(s0)
8000203c:	00a42223          	sw	a0,4(s0)
80002040:	00800593          	li	a1,8
80002044:	0080006f          	j	8000204c <_ZN7SuperOS4hole8HoleList18allocate_first_fit17he5e1733b9e2b4a46E+0x18c>
80002048:	00000493          	li	s1,0
8000204c:	00b405b3          	add	a1,s0,a1
80002050:	0095a023          	sw	s1,0(a1)
80002054:	02c12083          	lw	ra,44(sp)
80002058:	02812403          	lw	s0,40(sp)
8000205c:	02412483          	lw	s1,36(sp)
80002060:	02012903          	lw	s2,32(sp)
80002064:	01c12983          	lw	s3,28(sp)
80002068:	03010113          	addi	sp,sp,48
8000206c:	00008067          	ret
80002070:	8000c537          	lui	a0,0x8000c
80002074:	5b450513          	addi	a0,a0,1460 # 8000c5b4 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.3>
80002078:	00100593          	li	a1,1
8000207c:	00012a23          	sw	zero,20(sp)
80002080:	00400613          	li	a2,4
80002084:	00a12223          	sw	a0,4(sp)
80002088:	00b12423          	sw	a1,8(sp)
8000208c:	00c12623          	sw	a2,12(sp)
80002090:	00012823          	sw	zero,16(sp)
80002094:	8000c5b7          	lui	a1,0x8000c
80002098:	63058593          	addi	a1,a1,1584 # 8000c630 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.5>
8000209c:	00410513          	addi	a0,sp,4
800020a0:	00005097          	auipc	ra,0x5
800020a4:	f70080e7          	jalr	-144(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

800020a8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E>:
800020a8:	fa010113          	addi	sp,sp,-96
800020ac:	04112e23          	sw	ra,92(sp)
800020b0:	04812c23          	sw	s0,88(sp)
800020b4:	04912a23          	sw	s1,84(sp)
800020b8:	05212823          	sw	s2,80(sp)
800020bc:	05312623          	sw	s3,76(sp)
800020c0:	00060413          	mv	s0,a2
800020c4:	00058913          	mv	s2,a1
800020c8:	00800593          	li	a1,8
800020cc:	00050993          	mv	s3,a0
800020d0:	00d5e463          	bltu	a1,a3,800020d8 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x30>
800020d4:	00800693          	li	a3,8
800020d8:	00368693          	addi	a3,a3,3
800020dc:	ffc6f493          	andi	s1,a3,-4
800020e0:	00048513          	mv	a0,s1
800020e4:	00040593          	mv	a1,s0
800020e8:	00007097          	auipc	ra,0x7
800020ec:	0b8080e7          	jalr	184(ra) # 800091a0 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h8f83fbfbb598e937E>
800020f0:	1c050a63          	beqz	a0,800022c4 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x21c>
800020f4:	0049a583          	lw	a1,4(s3)
800020f8:	00992023          	sw	s1,0(s2)
800020fc:	00092223          	sw	zero,4(s2)
80002100:	04058263          	beqz	a1,80002144 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x9c>
80002104:	00c9a503          	lw	a0,12(s3)
80002108:	04b97e63          	bgeu	s2,a1,80002164 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0xbc>
8000210c:	009906b3          	add	a3,s2,s1
80002110:	1cd5ee63          	bltu	a1,a3,800022ec <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x244>
80002114:	0089a603          	lw	a2,8(s3)
80002118:	00860793          	addi	a5,a2,8
8000211c:	00090713          	mv	a4,s2
80002120:	00f97a63          	bgeu	s2,a5,80002134 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x8c>
80002124:	40c686b3          	sub	a3,a3,a2
80002128:	00d62023          	sw	a3,0(a2)
8000212c:	00062223          	sw	zero,4(a2)
80002130:	00060713          	mv	a4,a2
80002134:	00e9a223          	sw	a4,4(s3)
80002138:	00b72223          	sw	a1,4(a4)
8000213c:	00100613          	li	a2,1
80002140:	11c0006f          	j	8000225c <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1b4>
80002144:	0089a503          	lw	a0,8(s3)
80002148:	00850593          	addi	a1,a0,8
8000214c:	08b97463          	bgeu	s2,a1,800021d4 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x12c>
80002150:	012485b3          	add	a1,s1,s2
80002154:	40a585b3          	sub	a1,a1,a0
80002158:	00b52023          	sw	a1,0(a0)
8000215c:	00052223          	sw	zero,4(a0)
80002160:	07c0006f          	j	800021dc <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x134>
80002164:	0045a683          	lw	a3,4(a1)
80002168:	01212623          	sw	s2,12(sp)
8000216c:	0a068063          	beqz	a3,8000220c <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x164>
80002170:	00d97663          	bgeu	s2,a3,8000217c <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0xd4>
80002174:	00068613          	mv	a2,a3
80002178:	01c0006f          	j	80002194 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0xec>
8000217c:	0046a603          	lw	a2,4(a3)
80002180:	01212623          	sw	s2,12(sp)
80002184:	00068593          	mv	a1,a3
80002188:	08060463          	beqz	a2,80002210 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x168>
8000218c:	00060693          	mv	a3,a2
80002190:	fec976e3          	bgeu	s2,a2,8000217c <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0xd4>
80002194:	009906b3          	add	a3,s2,s1
80002198:	06d67c63          	bgeu	a2,a3,80002210 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x168>
8000219c:	8000c537          	lui	a0,0x8000c
800021a0:	6b850513          	addi	a0,a0,1720 # 8000c6b8 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.14>
800021a4:	00100593          	li	a1,1
800021a8:	04012023          	sw	zero,64(sp)
800021ac:	00400613          	li	a2,4
800021b0:	02a12823          	sw	a0,48(sp)
800021b4:	02b12a23          	sw	a1,52(sp)
800021b8:	02c12c23          	sw	a2,56(sp)
800021bc:	02012e23          	sw	zero,60(sp)
800021c0:	8000c5b7          	lui	a1,0x8000c
800021c4:	6d058593          	addi	a1,a1,1744 # 8000c6d0 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.16>
800021c8:	03010513          	addi	a0,sp,48
800021cc:	00005097          	auipc	ra,0x5
800021d0:	e44080e7          	jalr	-444(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>
800021d4:	00048593          	mv	a1,s1
800021d8:	00090513          	mv	a0,s2
800021dc:	00c9a603          	lw	a2,12(s3)
800021e0:	00b506b3          	add	a3,a0,a1
800021e4:	02c6f063          	bgeu	a3,a2,80002204 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x15c>
800021e8:	00368713          	addi	a4,a3,3
800021ec:	ffc77713          	andi	a4,a4,-4
800021f0:	00870713          	addi	a4,a4,8
800021f4:	00e67863          	bgeu	a2,a4,80002204 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x15c>
800021f8:	40d60633          	sub	a2,a2,a3
800021fc:	00b605b3          	add	a1,a2,a1
80002200:	00b52023          	sw	a1,0(a0)
80002204:	00a9a223          	sw	a0,4(s3)
80002208:	0980006f          	j	800022a0 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1f8>
8000220c:	00000613          	li	a2,0
80002210:	00b12823          	sw	a1,16(sp)
80002214:	0005a683          	lw	a3,0(a1)
80002218:	00d58733          	add	a4,a1,a3
8000221c:	00d12a23          	sw	a3,20(sp)
80002220:	10e96263          	bltu	s2,a4,80002324 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x27c>
80002224:	0125a223          	sw	s2,4(a1)
80002228:	00c92223          	sw	a2,4(s2)
8000222c:	00200613          	li	a2,2
80002230:	00058913          	mv	s2,a1
80002234:	0280006f          	j	8000225c <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1b4>
80002238:	00072583          	lw	a1,0(a4)
8000223c:	00472683          	lw	a3,4(a4)
80002240:	00072223          	sw	zero,4(a4)
80002244:	00092703          	lw	a4,0(s2)
80002248:	00b705b3          	add	a1,a4,a1
8000224c:	00b92023          	sw	a1,0(s2)
80002250:	00d92223          	sw	a3,4(s2)
80002254:	fff60613          	addi	a2,a2,-1
80002258:	04060463          	beqz	a2,800022a0 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1f8>
8000225c:	00092683          	lw	a3,0(s2)
80002260:	00492703          	lw	a4,4(s2)
80002264:	00d905b3          	add	a1,s2,a3
80002268:	00070c63          	beqz	a4,80002280 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1d8>
8000226c:	fce586e3          	beq	a1,a4,80002238 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x190>
80002270:	00070913          	mv	s2,a4
80002274:	fff60613          	addi	a2,a2,-1
80002278:	fe0612e3          	bnez	a2,8000225c <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1b4>
8000227c:	0240006f          	j	800022a0 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1f8>
80002280:	02a5f063          	bgeu	a1,a0,800022a0 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1f8>
80002284:	00358613          	addi	a2,a1,3
80002288:	ffc67613          	andi	a2,a2,-4
8000228c:	00860613          	addi	a2,a2,8
80002290:	00c57863          	bgeu	a0,a2,800022a0 <_ZN7SuperOS4hole8HoleList10deallocate17h2e8d995849f18631E+0x1f8>
80002294:	00a68533          	add	a0,a3,a0
80002298:	40b50533          	sub	a0,a0,a1
8000229c:	00a92023          	sw	a0,0(s2)
800022a0:	00040513          	mv	a0,s0
800022a4:	00048593          	mv	a1,s1
800022a8:	05c12083          	lw	ra,92(sp)
800022ac:	05812403          	lw	s0,88(sp)
800022b0:	05412483          	lw	s1,84(sp)
800022b4:	05012903          	lw	s2,80(sp)
800022b8:	04c12983          	lw	s3,76(sp)
800022bc:	06010113          	addi	sp,sp,96
800022c0:	00008067          	ret
800022c4:	8000c537          	lui	a0,0x8000c
800022c8:	65050513          	addi	a0,a0,1616 # 8000c650 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.11>
800022cc:	8000c6b7          	lui	a3,0x8000c
800022d0:	64068693          	addi	a3,a3,1600 # 8000c640 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.10>
800022d4:	8000c737          	lui	a4,0x8000c
800022d8:	67c70713          	addi	a4,a4,1660 # 8000c67c <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.12>
800022dc:	02b00593          	li	a1,43
800022e0:	04b10613          	addi	a2,sp,75
800022e4:	00005097          	auipc	ra,0x5
800022e8:	f94080e7          	jalr	-108(ra) # 80007278 <_ZN4core6result13unwrap_failed17hec5fc5af20fc7d85E>
800022ec:	8000c537          	lui	a0,0x8000c
800022f0:	6b850513          	addi	a0,a0,1720 # 8000c6b8 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.14>
800022f4:	00100593          	li	a1,1
800022f8:	04012023          	sw	zero,64(sp)
800022fc:	00400613          	li	a2,4
80002300:	02a12823          	sw	a0,48(sp)
80002304:	02b12a23          	sw	a1,52(sp)
80002308:	02c12c23          	sw	a2,56(sp)
8000230c:	02012e23          	sw	zero,60(sp)
80002310:	8000c5b7          	lui	a1,0x8000c
80002314:	6c058593          	addi	a1,a1,1728 # 8000c6c0 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.15>
80002318:	03010513          	addi	a0,sp,48
8000231c:	00005097          	auipc	ra,0x5
80002320:	cf4080e7          	jalr	-780(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>
80002324:	00c10513          	addi	a0,sp,12
80002328:	800005b7          	lui	a1,0x80000
8000232c:	30c58593          	addi	a1,a1,780 # 8000030c <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b1d5344f4b74adbE>
80002330:	01010613          	addi	a2,sp,16
80002334:	01410693          	addi	a3,sp,20
80002338:	8000a737          	lui	a4,0x8000a
8000233c:	c1470713          	addi	a4,a4,-1004 # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
80002340:	8000c7b7          	lui	a5,0x8000c
80002344:	71478793          	addi	a5,a5,1812 # 8000c714 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.21>
80002348:	00400813          	li	a6,4
8000234c:	02012423          	sw	zero,40(sp)
80002350:	02a12823          	sw	a0,48(sp)
80002354:	02b12a23          	sw	a1,52(sp)
80002358:	02c12c23          	sw	a2,56(sp)
8000235c:	02b12e23          	sw	a1,60(sp)
80002360:	03010513          	addi	a0,sp,48
80002364:	04d12023          	sw	a3,64(sp)
80002368:	04e12223          	sw	a4,68(sp)
8000236c:	00300593          	li	a1,3
80002370:	00f12c23          	sw	a5,24(sp)
80002374:	01012e23          	sw	a6,28(sp)
80002378:	02a12023          	sw	a0,32(sp)
8000237c:	02b12223          	sw	a1,36(sp)
80002380:	8000c5b7          	lui	a1,0x8000c
80002384:	73458593          	addi	a1,a1,1844 # 8000c734 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.22>
80002388:	01810513          	addi	a0,sp,24
8000238c:	00005097          	auipc	ra,0x5
80002390:	c84080e7          	jalr	-892(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

80002394 <_RNvCs77YZ1zEOoxS_7___rustc26___rust_alloc_error_handler>:
80002394:	fffff317          	auipc	t1,0xfffff
80002398:	7c830067          	jr	1992(t1) # 80001b5c <_RNvCs77YZ1zEOoxS_7___rustc8___rg_oom>

8000239c <_ZN5alloc7raw_vec17capacity_overflow17h2a63ba0738ede39bE>:
8000239c:	fe010113          	addi	sp,sp,-32
800023a0:	00112e23          	sw	ra,28(sp)
800023a4:	00812c23          	sw	s0,24(sp)
800023a8:	02010413          	addi	s0,sp,32
800023ac:	00050593          	mv	a1,a0
800023b0:	8000c537          	lui	a0,0x8000c
800023b4:	75850513          	addi	a0,a0,1880 # 8000c758 <.Lanon.f3530ec70e8849f250bed0a60b302330.8>
800023b8:	00100613          	li	a2,1
800023bc:	fe042823          	sw	zero,-16(s0)
800023c0:	00400693          	li	a3,4
800023c4:	fea42023          	sw	a0,-32(s0)
800023c8:	fec42223          	sw	a2,-28(s0)
800023cc:	fed42423          	sw	a3,-24(s0)
800023d0:	fe042623          	sw	zero,-20(s0)
800023d4:	fe040513          	addi	a0,s0,-32
800023d8:	00005097          	auipc	ra,0x5
800023dc:	c38080e7          	jalr	-968(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

800023e0 <_ZN5alloc7raw_vec12handle_error17h48f777ab8eb9bae7E>:
800023e0:	ff010113          	addi	sp,sp,-16
800023e4:	00112623          	sw	ra,12(sp)
800023e8:	00812423          	sw	s0,8(sp)
800023ec:	01010413          	addi	s0,sp,16
800023f0:	00051863          	bnez	a0,80002400 <_ZN5alloc7raw_vec12handle_error17h48f777ab8eb9bae7E+0x20>
800023f4:	00060513          	mv	a0,a2
800023f8:	00000097          	auipc	ra,0x0
800023fc:	fa4080e7          	jalr	-92(ra) # 8000239c <_ZN5alloc7raw_vec17capacity_overflow17h2a63ba0738ede39bE>
80002400:	00000097          	auipc	ra,0x0
80002404:	008080e7          	jalr	8(ra) # 80002408 <_ZN5alloc5alloc18handle_alloc_error17ha7c017cf3c0a8f01E>

80002408 <_ZN5alloc5alloc18handle_alloc_error17ha7c017cf3c0a8f01E>:
80002408:	ff010113          	addi	sp,sp,-16
8000240c:	00112623          	sw	ra,12(sp)
80002410:	00812423          	sw	s0,8(sp)
80002414:	01010413          	addi	s0,sp,16
80002418:	00050613          	mv	a2,a0
8000241c:	00058513          	mv	a0,a1
80002420:	00060593          	mv	a1,a2
80002424:	00000097          	auipc	ra,0x0
80002428:	f70080e7          	jalr	-144(ra) # 80002394 <_RNvCs77YZ1zEOoxS_7___rustc26___rust_alloc_error_handler>

8000242c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE>:
8000242c:	ef010113          	addi	sp,sp,-272
80002430:	10112623          	sw	ra,268(sp)
80002434:	10812423          	sw	s0,264(sp)
80002438:	10912223          	sw	s1,260(sp)
8000243c:	11212023          	sw	s2,256(sp)
80002440:	0f312e23          	sw	s3,252(sp)
80002444:	0f412c23          	sw	s4,248(sp)
80002448:	0f512a23          	sw	s5,244(sp)
8000244c:	0f612823          	sw	s6,240(sp)
80002450:	0f712623          	sw	s7,236(sp)
80002454:	0f812423          	sw	s8,232(sp)
80002458:	0f912223          	sw	s9,228(sp)
8000245c:	0fa12023          	sw	s10,224(sp)
80002460:	0db12e23          	sw	s11,220(sp)
80002464:	11010413          	addi	s0,sp,272
80002468:	00058c13          	mv	s8,a1
8000246c:	00800593          	li	a1,8
80002470:	00050d93          	mv	s11,a0
80002474:	08bc7663          	bgeu	s8,a1,80002500 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd4>
80002478:	0a0da983          	lw	s3,160(s11)
8000247c:	02900513          	li	a0,41
80002480:	52a9f2e3          	bgeu	s3,a0,800031a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd78>
80002484:	06098a63          	beqz	s3,800024f8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xcc>
80002488:	00000a13          	li	s4,0
8000248c:	002c1513          	slli	a0,s8,0x2
80002490:	8000d5b7          	lui	a1,0x8000d
80002494:	16058593          	addi	a1,a1,352 # 8000d160 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.70>
80002498:	00a58533          	add	a0,a1,a0
8000249c:	00052903          	lw	s2,0(a0)
800024a0:	00299a93          	slli	s5,s3,0x2
800024a4:	015d84b3          	add	s1,s11,s5
800024a8:	000d8b13          	mv	s6,s11
800024ac:	000b2503          	lw	a0,0(s6)
800024b0:	004b0b93          	addi	s7,s6,4
800024b4:	00000593          	li	a1,0
800024b8:	00090613          	mv	a2,s2
800024bc:	00000693          	li	a3,0
800024c0:	00008097          	auipc	ra,0x8
800024c4:	d50080e7          	jalr	-688(ra) # 8000a210 <__muldi3>
800024c8:	01450633          	add	a2,a0,s4
800024cc:	ffca8a93          	addi	s5,s5,-4
800024d0:	00a63a33          	sltu	s4,a2,a0
800024d4:	01458a33          	add	s4,a1,s4
800024d8:	00cb2023          	sw	a2,0(s6)
800024dc:	000b8b13          	mv	s6,s7
800024e0:	fc0a96e3          	bnez	s5,800024ac <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x80>
800024e4:	000a0a63          	beqz	s4,800024f8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xcc>
800024e8:	02800513          	li	a0,40
800024ec:	50a980e3          	beq	s3,a0,800031ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdc0>
800024f0:	0144a023          	sw	s4,0(s1)
800024f4:	00198993          	addi	s3,s3,1
800024f8:	0b3da023          	sw	s3,160(s11)
800024fc:	4690006f          	j	80003164 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd38>
80002500:	007c7513          	andi	a0,s8,7
80002504:	08050663          	beqz	a0,80002590 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x164>
80002508:	0a0da983          	lw	s3,160(s11)
8000250c:	02900593          	li	a1,41
80002510:	48b9fae3          	bgeu	s3,a1,800031a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd78>
80002514:	06098c63          	beqz	s3,8000258c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x160>
80002518:	00000493          	li	s1,0
8000251c:	00251593          	slli	a1,a0,0x2
80002520:	8000d637          	lui	a2,0x8000d
80002524:	16060613          	addi	a2,a2,352 # 8000d160 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.70>
80002528:	00b605b3          	add	a1,a2,a1
8000252c:	0005a583          	lw	a1,0(a1)
80002530:	00299a93          	slli	s5,s3,0x2
80002534:	00a5da33          	srl	s4,a1,a0
80002538:	015d8933          	add	s2,s11,s5
8000253c:	000d8b13          	mv	s6,s11
80002540:	000b2503          	lw	a0,0(s6)
80002544:	004b0b93          	addi	s7,s6,4
80002548:	00000593          	li	a1,0
8000254c:	000a0613          	mv	a2,s4
80002550:	00000693          	li	a3,0
80002554:	00008097          	auipc	ra,0x8
80002558:	cbc080e7          	jalr	-836(ra) # 8000a210 <__muldi3>
8000255c:	00950633          	add	a2,a0,s1
80002560:	ffca8a93          	addi	s5,s5,-4
80002564:	00a634b3          	sltu	s1,a2,a0
80002568:	009584b3          	add	s1,a1,s1
8000256c:	00cb2023          	sw	a2,0(s6)
80002570:	000b8b13          	mv	s6,s7
80002574:	fc0a96e3          	bnez	s5,80002540 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x114>
80002578:	00048a63          	beqz	s1,8000258c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x160>
8000257c:	02800513          	li	a0,40
80002580:	46a986e3          	beq	s3,a0,800031ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdc0>
80002584:	00992023          	sw	s1,0(s2)
80002588:	00198993          	addi	s3,s3,1
8000258c:	0b3da023          	sw	s3,160(s11)
80002590:	008c7513          	andi	a0,s8,8
80002594:	06050e63          	beqz	a0,80002610 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x1e4>
80002598:	0a0da983          	lw	s3,160(s11)
8000259c:	02900513          	li	a0,41
800025a0:	40a9f2e3          	bgeu	s3,a0,800031a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd78>
800025a4:	06098463          	beqz	s3,8000260c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x1e0>
800025a8:	00000913          	li	s2,0
800025ac:	00299a93          	slli	s5,s3,0x2
800025b0:	0005f537          	lui	a0,0x5f
800025b4:	015d84b3          	add	s1,s11,s5
800025b8:	5e150a13          	addi	s4,a0,1505 # 5f5e1 <.Lline_table_start2+0x5dda7>
800025bc:	000d8b13          	mv	s6,s11
800025c0:	000b2503          	lw	a0,0(s6)
800025c4:	004b0b93          	addi	s7,s6,4
800025c8:	00000593          	li	a1,0
800025cc:	000a0613          	mv	a2,s4
800025d0:	00000693          	li	a3,0
800025d4:	00008097          	auipc	ra,0x8
800025d8:	c3c080e7          	jalr	-964(ra) # 8000a210 <__muldi3>
800025dc:	01250633          	add	a2,a0,s2
800025e0:	ffca8a93          	addi	s5,s5,-4
800025e4:	00a63933          	sltu	s2,a2,a0
800025e8:	01258933          	add	s2,a1,s2
800025ec:	00cb2023          	sw	a2,0(s6)
800025f0:	000b8b13          	mv	s6,s7
800025f4:	fc0a96e3          	bnez	s5,800025c0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x194>
800025f8:	00090a63          	beqz	s2,8000260c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x1e0>
800025fc:	02800513          	li	a0,40
80002600:	3ea986e3          	beq	s3,a0,800031ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdc0>
80002604:	0124a023          	sw	s2,0(s1)
80002608:	00198993          	addi	s3,s3,1
8000260c:	0b3da023          	sw	s3,160(s11)
80002610:	010c7513          	andi	a0,s8,16
80002614:	f3b42423          	sw	s11,-216(s0)
80002618:	18050263          	beqz	a0,8000279c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x370>
8000261c:	f2c40513          	addi	a0,s0,-212
80002620:	0a000613          	li	a2,160
80002624:	f2c40913          	addi	s2,s0,-212
80002628:	00000593          	li	a1,0
8000262c:	00009097          	auipc	ra,0x9
80002630:	db8080e7          	jalr	-584(ra) # 8000b3e4 <memset>
80002634:	0a0da703          	lw	a4,160(s11)
80002638:	00200513          	li	a0,2
8000263c:	10a77c63          	bgeu	a4,a0,80002754 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x328>
80002640:	00000d13          	li	s10,0
80002644:	00000993          	li	s3,0
80002648:	00271713          	slli	a4,a4,0x2
8000264c:	02800593          	li	a1,40
80002650:	86f27537          	lui	a0,0x86f27
80002654:	00ed8cb3          	add	s9,s11,a4
80002658:	fc150613          	addi	a2,a0,-63 # 86f26fc1 <KALLOC_BUFFER+0x6f16fc1>
8000265c:	fffd0a93          	addi	s5,s10,-1
80002660:	002d1493          	slli	s1,s10,0x2
80002664:	009904b3          	add	s1,s2,s1
80002668:	000d8513          	mv	a0,s11
8000266c:	11950a63          	beq	a0,s9,80002780 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x354>
80002670:	00052b03          	lw	s6,0(a0)
80002674:	00450d93          	addi	s11,a0,4
80002678:	001a8a93          	addi	s5,s5,1
8000267c:	00448493          	addi	s1,s1,4
80002680:	000d8513          	mv	a0,s11
80002684:	fe0b04e3          	beqz	s6,8000266c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x240>
80002688:	38baf0e3          	bgeu	s5,a1,80003208 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xddc>
8000268c:	000c0a13          	mv	s4,s8
80002690:	ffc4a903          	lw	s2,-4(s1)
80002694:	001a8d13          	addi	s10,s5,1
80002698:	000b0513          	mv	a0,s6
8000269c:	00000593          	li	a1,0
800026a0:	00060b93          	mv	s7,a2
800026a4:	00000693          	li	a3,0
800026a8:	00008097          	auipc	ra,0x8
800026ac:	b68080e7          	jalr	-1176(ra) # 8000a210 <__muldi3>
800026b0:	01250633          	add	a2,a0,s2
800026b4:	fec4ae23          	sw	a2,-4(s1)
800026b8:	02700693          	li	a3,39
800026bc:	35a6e4e3          	bltu	a3,s10,80003204 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdd8>
800026c0:	0004a903          	lw	s2,0(s1)
800026c4:	00a63533          	sltu	a0,a2,a0
800026c8:	00a58c33          	add	s8,a1,a0
800026cc:	02300613          	li	a2,35
800026d0:	000b0513          	mv	a0,s6
800026d4:	00000593          	li	a1,0
800026d8:	00000693          	li	a3,0
800026dc:	00008097          	auipc	ra,0x8
800026e0:	b34080e7          	jalr	-1228(ra) # 8000a210 <__muldi3>
800026e4:	012c0933          	add	s2,s8,s2
800026e8:	01893633          	sltu	a2,s2,s8
800026ec:	00a906b3          	add	a3,s2,a0
800026f0:	0126b533          	sltu	a0,a3,s2
800026f4:	00b605b3          	add	a1,a2,a1
800026f8:	00a58533          	add	a0,a1,a0
800026fc:	00d4a023          	sw	a3,0(s1)
80002700:	02050863          	beqz	a0,80002730 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x304>
80002704:	02600593          	li	a1,38
80002708:	36baf6e3          	bgeu	s5,a1,80003274 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe48>
8000270c:	000a0c13          	mv	s8,s4
80002710:	000b8613          	mv	a2,s7
80002714:	00a4a223          	sw	a0,4(s1)
80002718:	00300513          	li	a0,3
8000271c:	f2c40913          	addi	s2,s0,-212
80002720:	02800593          	li	a1,40
80002724:	01550533          	add	a0,a0,s5
80002728:	f3356ae3          	bltu	a0,s3,8000265c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x230>
8000272c:	0200006f          	j	8000274c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x320>
80002730:	00200513          	li	a0,2
80002734:	000a0c13          	mv	s8,s4
80002738:	f2c40913          	addi	s2,s0,-212
8000273c:	02800593          	li	a1,40
80002740:	000b8613          	mv	a2,s7
80002744:	01550533          	add	a0,a0,s5
80002748:	f1356ae3          	bltu	a0,s3,8000265c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x230>
8000274c:	00050993          	mv	s3,a0
80002750:	f0dff06f          	j	8000265c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x230>
80002754:	02900513          	li	a0,41
80002758:	26a772e3          	bgeu	a4,a0,800031bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd90>
8000275c:	8000c5b7          	lui	a1,0x8000c
80002760:	7d458593          	addi	a1,a1,2004 # 8000c7d4 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h65e3f94d7050fd1aE>
80002764:	f2c40513          	addi	a0,s0,-212
80002768:	00200613          	li	a2,2
8000276c:	000d8693          	mv	a3,s11
80002770:	00007097          	auipc	ra,0x7
80002774:	e14080e7          	jalr	-492(ra) # 80009584 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE>
80002778:	00050993          	mv	s3,a0
8000277c:	0080006f          	j	80002784 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x358>
80002780:	f2842d83          	lw	s11,-216(s0)
80002784:	f2c40593          	addi	a1,s0,-212
80002788:	0a000613          	li	a2,160
8000278c:	000d8513          	mv	a0,s11
80002790:	00008097          	auipc	ra,0x8
80002794:	50c080e7          	jalr	1292(ra) # 8000ac9c <memcpy>
80002798:	0b3da023          	sw	s3,160(s11)
8000279c:	020c7513          	andi	a0,s8,32
800027a0:	f3842223          	sw	s8,-220(s0)
800027a4:	1c050a63          	beqz	a0,80002978 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x54c>
800027a8:	f2c40513          	addi	a0,s0,-212
800027ac:	0a000613          	li	a2,160
800027b0:	00000593          	li	a1,0
800027b4:	00009097          	auipc	ra,0x9
800027b8:	c30080e7          	jalr	-976(ra) # 8000b3e4 <memset>
800027bc:	0a0da703          	lw	a4,160(s11)
800027c0:	00300513          	li	a0,3
800027c4:	16a77663          	bgeu	a4,a0,80002930 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x504>
800027c8:	00000c93          	li	s9,0
800027cc:	00000913          	li	s2,0
800027d0:	00271713          	slli	a4,a4,0x2
800027d4:	f3040993          	addi	s3,s0,-208
800027d8:	02800693          	li	a3,40
800027dc:	85acf537          	lui	a0,0x85acf
800027e0:	2d6d45b7          	lui	a1,0x2d6d4
800027e4:	00ed8d33          	add	s10,s11,a4
800027e8:	f8150613          	addi	a2,a0,-127 # 85acef81 <KALLOC_BUFFER+0x5abef81>
800027ec:	15b58513          	addi	a0,a1,347 # 2d6d415b <.Lline_table_start2+0x2d6d2921>
800027f0:	f2a42023          	sw	a0,-224(s0)
800027f4:	000d8b93          	mv	s7,s11
800027f8:	fffc8493          	addi	s1,s9,-1
800027fc:	002c9c13          	slli	s8,s9,0x2
80002800:	01898c33          	add	s8,s3,s8
80002804:	000b8513          	mv	a0,s7
80002808:	15a50a63          	beq	a0,s10,8000295c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x530>
8000280c:	00052b03          	lw	s6,0(a0)
80002810:	00450b93          	addi	s7,a0,4
80002814:	00148493          	addi	s1,s1,1
80002818:	004c0c13          	addi	s8,s8,4
8000281c:	000b8513          	mv	a0,s7
80002820:	fe0b04e3          	beqz	s6,80002808 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x3dc>
80002824:	1ed4fee3          	bgeu	s1,a3,80003220 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdf4>
80002828:	f1242e23          	sw	s2,-228(s0)
8000282c:	ff8c2903          	lw	s2,-8(s8)
80002830:	00148c93          	addi	s9,s1,1
80002834:	000b0513          	mv	a0,s6
80002838:	00000593          	li	a1,0
8000283c:	00060a93          	mv	s5,a2
80002840:	00000693          	li	a3,0
80002844:	00008097          	auipc	ra,0x8
80002848:	9cc080e7          	jalr	-1588(ra) # 8000a210 <__muldi3>
8000284c:	01250633          	add	a2,a0,s2
80002850:	02800d93          	li	s11,40
80002854:	fecc2c23          	sw	a2,-8(s8)
80002858:	1dbcf6e3          	bgeu	s9,s11,80003224 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdf8>
8000285c:	ffcc2a03          	lw	s4,-4(s8)
80002860:	00a63933          	sltu	s2,a2,a0
80002864:	01258933          	add	s2,a1,s2
80002868:	000b0513          	mv	a0,s6
8000286c:	00000593          	li	a1,0
80002870:	f2042603          	lw	a2,-224(s0)
80002874:	00000693          	li	a3,0
80002878:	00008097          	auipc	ra,0x8
8000287c:	998080e7          	jalr	-1640(ra) # 8000a210 <__muldi3>
80002880:	01490633          	add	a2,s2,s4
80002884:	00a60533          	add	a0,a2,a0
80002888:	feac2e23          	sw	a0,-4(s8)
8000288c:	02500693          	li	a3,37
80002890:	1896eae3          	bltu	a3,s1,80003224 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xdf8>
80002894:	012636b3          	sltu	a3,a2,s2
80002898:	000c2903          	lw	s2,0(s8)
8000289c:	00c53533          	sltu	a0,a0,a2
800028a0:	00b685b3          	add	a1,a3,a1
800028a4:	00a58a33          	add	s4,a1,a0
800028a8:	4ee00613          	li	a2,1262
800028ac:	000b0513          	mv	a0,s6
800028b0:	00000593          	li	a1,0
800028b4:	00000693          	li	a3,0
800028b8:	00008097          	auipc	ra,0x8
800028bc:	958080e7          	jalr	-1704(ra) # 8000a210 <__muldi3>
800028c0:	012a0933          	add	s2,s4,s2
800028c4:	01493633          	sltu	a2,s2,s4
800028c8:	00a906b3          	add	a3,s2,a0
800028cc:	0126b533          	sltu	a0,a3,s2
800028d0:	00b605b3          	add	a1,a2,a1
800028d4:	00a58533          	add	a0,a1,a0
800028d8:	00dc2023          	sw	a3,0(s8)
800028dc:	02050863          	beqz	a0,8000290c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x4e0>
800028e0:	f2842d83          	lw	s11,-216(s0)
800028e4:	f1c42903          	lw	s2,-228(s0)
800028e8:	02800693          	li	a3,40
800028ec:	02500593          	li	a1,37
800028f0:	18b48ee3          	beq	s1,a1,8000328c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe60>
800028f4:	000a8613          	mv	a2,s5
800028f8:	00ac2223          	sw	a0,4(s8)
800028fc:	00400513          	li	a0,4
80002900:	00950533          	add	a0,a0,s1
80002904:	ef256ae3          	bltu	a0,s2,800027f8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x3cc>
80002908:	0200006f          	j	80002928 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x4fc>
8000290c:	00300513          	li	a0,3
80002910:	f2842d83          	lw	s11,-216(s0)
80002914:	f1c42903          	lw	s2,-228(s0)
80002918:	02800693          	li	a3,40
8000291c:	000a8613          	mv	a2,s5
80002920:	00950533          	add	a0,a0,s1
80002924:	ed256ae3          	bltu	a0,s2,800027f8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x3cc>
80002928:	00050913          	mv	s2,a0
8000292c:	ecdff06f          	j	800027f8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x3cc>
80002930:	02900513          	li	a0,41
80002934:	08a774e3          	bgeu	a4,a0,800031bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd90>
80002938:	8000c5b7          	lui	a1,0x8000c
8000293c:	7dc58593          	addi	a1,a1,2012 # 8000c7dc <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217hc2f725999e4bf2d7E>
80002940:	f2c40513          	addi	a0,s0,-212
80002944:	00300613          	li	a2,3
80002948:	000d8693          	mv	a3,s11
8000294c:	00007097          	auipc	ra,0x7
80002950:	c38080e7          	jalr	-968(ra) # 80009584 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE>
80002954:	00050913          	mv	s2,a0
80002958:	0080006f          	j	80002960 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x534>
8000295c:	f2442c03          	lw	s8,-220(s0)
80002960:	f2c40593          	addi	a1,s0,-212
80002964:	0a000613          	li	a2,160
80002968:	000d8513          	mv	a0,s11
8000296c:	00008097          	auipc	ra,0x8
80002970:	330080e7          	jalr	816(ra) # 8000ac9c <memcpy>
80002974:	0b2da023          	sw	s2,160(s11)
80002978:	040c7513          	andi	a0,s8,64
8000297c:	26050863          	beqz	a0,80002bec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x7c0>
80002980:	f2c40513          	addi	a0,s0,-212
80002984:	0a000613          	li	a2,160
80002988:	00000593          	li	a1,0
8000298c:	00009097          	auipc	ra,0x9
80002990:	a58080e7          	jalr	-1448(ra) # 8000b3e4 <memset>
80002994:	0a0da703          	lw	a4,160(s11)
80002998:	00500513          	li	a0,5
8000299c:	20a77263          	bgeu	a4,a0,80002ba0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x774>
800029a0:	00000a13          	li	s4,0
800029a4:	00000913          	li	s2,0
800029a8:	00271713          	slli	a4,a4,0x2
800029ac:	f3440493          	addi	s1,s0,-204
800029b0:	02800813          	li	a6,40
800029b4:	bf6a2537          	lui	a0,0xbf6a2
800029b8:	6e38f5b7          	lui	a1,0x6e38f
800029bc:	daa798b7          	lui	a7,0xdaa79
800029c0:	e94006b7          	lui	a3,0xe9400
800029c4:	001857b7          	lui	a5,0x185
800029c8:	00ed8c33          	add	s8,s11,a4
800029cc:	f0150613          	addi	a2,a0,-255 # bf6a1f01 <KALLOC_BUFFER+0x3f691f01>
800029d0:	d6458993          	addi	s3,a1,-668 # 6e38ed64 <.Lline_table_start2+0x6e38d52a>
800029d4:	7ed88513          	addi	a0,a7,2029 # daa797ed <KALLOC_BUFFER+0x5aa697ed>
800029d8:	f2a42023          	sw	a0,-224(s0)
800029dc:	9f468513          	addi	a0,a3,-1548 # e93ff9f4 <KALLOC_BUFFER+0x693ef9f4>
800029e0:	f0a42e23          	sw	a0,-228(s0)
800029e4:	f0378b93          	addi	s7,a5,-253 # 184f03 <.Lline_table_start2+0x1836c9>
800029e8:	000d8d13          	mv	s10,s11
800029ec:	fffa0d93          	addi	s11,s4,-1
800029f0:	002a1a13          	slli	s4,s4,0x2
800029f4:	01448ab3          	add	s5,s1,s4
800029f8:	000d0513          	mv	a0,s10
800029fc:	1d850863          	beq	a0,s8,80002bcc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x7a0>
80002a00:	00052c83          	lw	s9,0(a0)
80002a04:	00450d13          	addi	s10,a0,4
80002a08:	001d8d93          	addi	s11,s11,1
80002a0c:	004a8a93          	addi	s5,s5,4
80002a10:	000d0513          	mv	a0,s10
80002a14:	fe0c84e3          	beqz	s9,800029fc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x5d0>
80002a18:	030df2e3          	bgeu	s11,a6,8000323c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe10>
80002a1c:	f1742a23          	sw	s7,-236(s0)
80002a20:	f1242c23          	sw	s2,-232(s0)
80002a24:	ff4aa903          	lw	s2,-12(s5)
80002a28:	001d8a13          	addi	s4,s11,1
80002a2c:	000c8513          	mv	a0,s9
80002a30:	00000593          	li	a1,0
80002a34:	f0c42823          	sw	a2,-240(s0)
80002a38:	00000693          	li	a3,0
80002a3c:	00007097          	auipc	ra,0x7
80002a40:	7d4080e7          	jalr	2004(ra) # 8000a210 <__muldi3>
80002a44:	01250633          	add	a2,a0,s2
80002a48:	02800b13          	li	s6,40
80002a4c:	fecaaa23          	sw	a2,-12(s5)
80002a50:	7f6a7863          	bgeu	s4,s6,80003240 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe14>
80002a54:	ff8aab83          	lw	s7,-8(s5)
80002a58:	00a63933          	sltu	s2,a2,a0
80002a5c:	01258933          	add	s2,a1,s2
80002a60:	000c8513          	mv	a0,s9
80002a64:	00000593          	li	a1,0
80002a68:	f1342623          	sw	s3,-244(s0)
80002a6c:	00098613          	mv	a2,s3
80002a70:	00000693          	li	a3,0
80002a74:	00007097          	auipc	ra,0x7
80002a78:	79c080e7          	jalr	1948(ra) # 8000a210 <__muldi3>
80002a7c:	01790633          	add	a2,s2,s7
80002a80:	00a60533          	add	a0,a2,a0
80002a84:	feaaac23          	sw	a0,-8(s5)
80002a88:	02500993          	li	s3,37
80002a8c:	7bb9ea63          	bltu	s3,s11,80003240 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe14>
80002a90:	012636b3          	sltu	a3,a2,s2
80002a94:	ffcaab83          	lw	s7,-4(s5)
80002a98:	00c53933          	sltu	s2,a0,a2
80002a9c:	00b685b3          	add	a1,a3,a1
80002aa0:	01258933          	add	s2,a1,s2
80002aa4:	000c8513          	mv	a0,s9
80002aa8:	00000593          	li	a1,0
80002aac:	f2042603          	lw	a2,-224(s0)
80002ab0:	00000693          	li	a3,0
80002ab4:	00007097          	auipc	ra,0x7
80002ab8:	75c080e7          	jalr	1884(ra) # 8000a210 <__muldi3>
80002abc:	01790633          	add	a2,s2,s7
80002ac0:	00a60533          	add	a0,a2,a0
80002ac4:	feaaae23          	sw	a0,-4(s5)
80002ac8:	773d8c63          	beq	s11,s3,80003240 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe14>
80002acc:	012636b3          	sltu	a3,a2,s2
80002ad0:	000aab83          	lw	s7,0(s5)
80002ad4:	00c53933          	sltu	s2,a0,a2
80002ad8:	00b685b3          	add	a1,a3,a1
80002adc:	01258933          	add	s2,a1,s2
80002ae0:	000c8513          	mv	a0,s9
80002ae4:	00000593          	li	a1,0
80002ae8:	f1c42603          	lw	a2,-228(s0)
80002aec:	00000693          	li	a3,0
80002af0:	00007097          	auipc	ra,0x7
80002af4:	720080e7          	jalr	1824(ra) # 8000a210 <__muldi3>
80002af8:	01790633          	add	a2,s2,s7
80002afc:	00a60533          	add	a0,a2,a0
80002b00:	00aaa023          	sw	a0,0(s5)
80002b04:	02300993          	li	s3,35
80002b08:	73b9ec63          	bltu	s3,s11,80003240 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe14>
80002b0c:	012636b3          	sltu	a3,a2,s2
80002b10:	004aa903          	lw	s2,4(s5)
80002b14:	00c53533          	sltu	a0,a0,a2
80002b18:	00b685b3          	add	a1,a3,a1
80002b1c:	00a58b33          	add	s6,a1,a0
80002b20:	000c8513          	mv	a0,s9
80002b24:	00000593          	li	a1,0
80002b28:	f1442b83          	lw	s7,-236(s0)
80002b2c:	000b8613          	mv	a2,s7
80002b30:	00000693          	li	a3,0
80002b34:	00007097          	auipc	ra,0x7
80002b38:	6dc080e7          	jalr	1756(ra) # 8000a210 <__muldi3>
80002b3c:	012b0933          	add	s2,s6,s2
80002b40:	01693633          	sltu	a2,s2,s6
80002b44:	00a906b3          	add	a3,s2,a0
80002b48:	0126b533          	sltu	a0,a3,s2
80002b4c:	00b605b3          	add	a1,a2,a1
80002b50:	00a58533          	add	a0,a1,a0
80002b54:	00daa223          	sw	a3,4(s5)
80002b58:	02800813          	li	a6,40
80002b5c:	f1842903          	lw	s2,-232(s0)
80002b60:	02050263          	beqz	a0,80002b84 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x758>
80002b64:	753d8063          	beq	s11,s3,800032a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe78>
80002b68:	00aaa423          	sw	a0,8(s5)
80002b6c:	00600513          	li	a0,6
80002b70:	01b50533          	add	a0,a0,s11
80002b74:	f1042603          	lw	a2,-240(s0)
80002b78:	f0c42983          	lw	s3,-244(s0)
80002b7c:	e72568e3          	bltu	a0,s2,800029ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x5c0>
80002b80:	0180006f          	j	80002b98 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x76c>
80002b84:	00500513          	li	a0,5
80002b88:	01b50533          	add	a0,a0,s11
80002b8c:	f1042603          	lw	a2,-240(s0)
80002b90:	f0c42983          	lw	s3,-244(s0)
80002b94:	e5256ce3          	bltu	a0,s2,800029ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x5c0>
80002b98:	00050913          	mv	s2,a0
80002b9c:	e51ff06f          	j	800029ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x5c0>
80002ba0:	02900513          	li	a0,41
80002ba4:	60a77c63          	bgeu	a4,a0,800031bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd90>
80002ba8:	8000c5b7          	lui	a1,0x8000c
80002bac:	7e858593          	addi	a1,a1,2024 # 8000c7e8 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417hec9340f5cd6dd05bE>
80002bb0:	f2c40513          	addi	a0,s0,-212
80002bb4:	00500613          	li	a2,5
80002bb8:	000d8693          	mv	a3,s11
80002bbc:	00007097          	auipc	ra,0x7
80002bc0:	9c8080e7          	jalr	-1592(ra) # 80009584 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE>
80002bc4:	00050913          	mv	s2,a0
80002bc8:	00c0006f          	j	80002bd4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x7a8>
80002bcc:	f2842d83          	lw	s11,-216(s0)
80002bd0:	f2442c03          	lw	s8,-220(s0)
80002bd4:	f2c40593          	addi	a1,s0,-212
80002bd8:	0a000613          	li	a2,160
80002bdc:	000d8513          	mv	a0,s11
80002be0:	00008097          	auipc	ra,0x8
80002be4:	0bc080e7          	jalr	188(ra) # 8000ac9c <memcpy>
80002be8:	0b2da023          	sw	s2,160(s11)
80002bec:	080c7513          	andi	a0,s8,128
80002bf0:	3c050e63          	beqz	a0,80002fcc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xba0>
80002bf4:	f2c40513          	addi	a0,s0,-212
80002bf8:	0a000613          	li	a2,160
80002bfc:	00000593          	li	a1,0
80002c00:	00008097          	auipc	ra,0x8
80002c04:	7e4080e7          	jalr	2020(ra) # 8000b3e4 <memset>
80002c08:	0a0da703          	lw	a4,160(s11)
80002c0c:	00a00513          	li	a0,10
80002c10:	36a77a63          	bgeu	a4,a0,80002f84 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xb58>
80002c14:	00000d13          	li	s10,0
80002c18:	00000913          	li	s2,0
80002c1c:	00271713          	slli	a4,a4,0x2
80002c20:	f3c40993          	addi	s3,s0,-196
80002c24:	02800393          	li	t2,40
80002c28:	2e954537          	lui	a0,0x2e954
80002c2c:	03dfa5b7          	lui	a1,0x3dfa
80002c30:	0f154e37          	lui	t3,0xf154
80002c34:	2374e6b7          	lui	a3,0x2374e
80002c38:	d3cff7b7          	lui	a5,0xd3cff
80002c3c:	c404e837          	lui	a6,0xc404e
80002c40:	bccdb8b7          	lui	a7,0xbccdb
80002c44:	a63382b7          	lui	t0,0xa6338
80002c48:	e91f2337          	lui	t1,0xe91f2
80002c4c:	00ed84b3          	add	s1,s11,a4
80002c50:	e0150613          	addi	a2,a0,-511 # 2e953e01 <.Lline_table_start2+0x2e9525c7>
80002c54:	90958a13          	addi	s4,a1,-1783 # 3df9909 <.Lline_table_start2+0x3df80cf>
80002c58:	8fde0513          	addi	a0,t3,-1795 # f1538fd <.Lline_table_start2+0xf1520c3>
80002c5c:	f2a42023          	sw	a0,-224(s0)
80002c60:	42f68513          	addi	a0,a3,1071 # 2374e42f <.Lline_table_start2+0x2374cbf5>
80002c64:	f0a42e23          	sw	a0,-228(s0)
80002c68:	5ec78513          	addi	a0,a5,1516 # d3cff5ec <KALLOC_BUFFER+0x53cef5ec>
80002c6c:	f0a42c23          	sw	a0,-232(s0)
80002c70:	c0880513          	addi	a0,a6,-1016 # c404dc08 <KALLOC_BUFFER+0x4403dc08>
80002c74:	f0a42a23          	sw	a0,-236(s0)
80002c78:	0da88513          	addi	a0,a7,218 # bccdb0da <KALLOC_BUFFER+0x3cccb0da>
80002c7c:	f0a42823          	sw	a0,-240(s0)
80002c80:	f1928513          	addi	a0,t0,-231 # a6337f19 <KALLOC_BUFFER+0x26327f19>
80002c84:	f0a42623          	sw	a0,-244(s0)
80002c88:	60330513          	addi	a0,t1,1539 # e91f2603 <KALLOC_BUFFER+0x691e2603>
80002c8c:	f0a42423          	sw	a0,-248(s0)
80002c90:	fffd0b13          	addi	s6,s10,-1
80002c94:	002d1c93          	slli	s9,s10,0x2
80002c98:	01998cb3          	add	s9,s3,s9
80002c9c:	000d8513          	mv	a0,s11
80002ca0:	30950863          	beq	a0,s1,80002fb0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xb84>
80002ca4:	00052a83          	lw	s5,0(a0)
80002ca8:	00450d93          	addi	s11,a0,4
80002cac:	001b0b13          	addi	s6,s6,1
80002cb0:	004c8c93          	addi	s9,s9,4
80002cb4:	000d8513          	mv	a0,s11
80002cb8:	fe0a84e3          	beqz	s5,80002ca0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x874>
80002cbc:	587b7e63          	bgeu	s6,t2,80003258 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe2c>
80002cc0:	f1242223          	sw	s2,-252(s0)
80002cc4:	fecca903          	lw	s2,-20(s9)
80002cc8:	001b0d13          	addi	s10,s6,1
80002ccc:	000a8513          	mv	a0,s5
80002cd0:	00000593          	li	a1,0
80002cd4:	f0c42023          	sw	a2,-256(s0)
80002cd8:	00000693          	li	a3,0
80002cdc:	00007097          	auipc	ra,0x7
80002ce0:	534080e7          	jalr	1332(ra) # 8000a210 <__muldi3>
80002ce4:	01250633          	add	a2,a0,s2
80002ce8:	02800c13          	li	s8,40
80002cec:	fecca623          	sw	a2,-20(s9)
80002cf0:	578d7663          	bgeu	s10,s8,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002cf4:	ff0cab83          	lw	s7,-16(s9)
80002cf8:	00a63933          	sltu	s2,a2,a0
80002cfc:	01258933          	add	s2,a1,s2
80002d00:	000a8513          	mv	a0,s5
80002d04:	00000593          	li	a1,0
80002d08:	ef442e23          	sw	s4,-260(s0)
80002d0c:	000a0613          	mv	a2,s4
80002d10:	00000693          	li	a3,0
80002d14:	00007097          	auipc	ra,0x7
80002d18:	4fc080e7          	jalr	1276(ra) # 8000a210 <__muldi3>
80002d1c:	01790633          	add	a2,s2,s7
80002d20:	00a60533          	add	a0,a2,a0
80002d24:	feaca823          	sw	a0,-16(s9)
80002d28:	02500a13          	li	s4,37
80002d2c:	536a6863          	bltu	s4,s6,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002d30:	012636b3          	sltu	a3,a2,s2
80002d34:	ff4cab83          	lw	s7,-12(s9)
80002d38:	00c53933          	sltu	s2,a0,a2
80002d3c:	00b685b3          	add	a1,a3,a1
80002d40:	01258933          	add	s2,a1,s2
80002d44:	000a8513          	mv	a0,s5
80002d48:	00000593          	li	a1,0
80002d4c:	f2042603          	lw	a2,-224(s0)
80002d50:	00000693          	li	a3,0
80002d54:	00007097          	auipc	ra,0x7
80002d58:	4bc080e7          	jalr	1212(ra) # 8000a210 <__muldi3>
80002d5c:	01790633          	add	a2,s2,s7
80002d60:	00a60533          	add	a0,a2,a0
80002d64:	feacaa23          	sw	a0,-12(s9)
80002d68:	4f4b0a63          	beq	s6,s4,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002d6c:	012636b3          	sltu	a3,a2,s2
80002d70:	ff8cab83          	lw	s7,-8(s9)
80002d74:	00c53933          	sltu	s2,a0,a2
80002d78:	00b685b3          	add	a1,a3,a1
80002d7c:	01258933          	add	s2,a1,s2
80002d80:	000a8513          	mv	a0,s5
80002d84:	00000593          	li	a1,0
80002d88:	f1c42603          	lw	a2,-228(s0)
80002d8c:	00000693          	li	a3,0
80002d90:	00007097          	auipc	ra,0x7
80002d94:	480080e7          	jalr	1152(ra) # 8000a210 <__muldi3>
80002d98:	01790633          	add	a2,s2,s7
80002d9c:	00a60533          	add	a0,a2,a0
80002da0:	feacac23          	sw	a0,-8(s9)
80002da4:	02300a13          	li	s4,35
80002da8:	4b6a6a63          	bltu	s4,s6,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002dac:	012636b3          	sltu	a3,a2,s2
80002db0:	ffccab83          	lw	s7,-4(s9)
80002db4:	00c53933          	sltu	s2,a0,a2
80002db8:	00b685b3          	add	a1,a3,a1
80002dbc:	01258933          	add	s2,a1,s2
80002dc0:	000a8513          	mv	a0,s5
80002dc4:	00000593          	li	a1,0
80002dc8:	f1842603          	lw	a2,-232(s0)
80002dcc:	00000693          	li	a3,0
80002dd0:	00007097          	auipc	ra,0x7
80002dd4:	440080e7          	jalr	1088(ra) # 8000a210 <__muldi3>
80002dd8:	01790633          	add	a2,s2,s7
80002ddc:	00a60533          	add	a0,a2,a0
80002de0:	feacae23          	sw	a0,-4(s9)
80002de4:	474b0c63          	beq	s6,s4,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002de8:	012636b3          	sltu	a3,a2,s2
80002dec:	000cab83          	lw	s7,0(s9)
80002df0:	00c53933          	sltu	s2,a0,a2
80002df4:	00b685b3          	add	a1,a3,a1
80002df8:	01258933          	add	s2,a1,s2
80002dfc:	000a8513          	mv	a0,s5
80002e00:	00000593          	li	a1,0
80002e04:	f1442603          	lw	a2,-236(s0)
80002e08:	00000693          	li	a3,0
80002e0c:	00007097          	auipc	ra,0x7
80002e10:	404080e7          	jalr	1028(ra) # 8000a210 <__muldi3>
80002e14:	01790633          	add	a2,s2,s7
80002e18:	00a60533          	add	a0,a2,a0
80002e1c:	00aca023          	sw	a0,0(s9)
80002e20:	02100a13          	li	s4,33
80002e24:	436a6c63          	bltu	s4,s6,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002e28:	012636b3          	sltu	a3,a2,s2
80002e2c:	004cab83          	lw	s7,4(s9)
80002e30:	00c53933          	sltu	s2,a0,a2
80002e34:	00b685b3          	add	a1,a3,a1
80002e38:	01258933          	add	s2,a1,s2
80002e3c:	000a8513          	mv	a0,s5
80002e40:	00000593          	li	a1,0
80002e44:	f1042603          	lw	a2,-240(s0)
80002e48:	00000693          	li	a3,0
80002e4c:	00007097          	auipc	ra,0x7
80002e50:	3c4080e7          	jalr	964(ra) # 8000a210 <__muldi3>
80002e54:	01790633          	add	a2,s2,s7
80002e58:	00a60533          	add	a0,a2,a0
80002e5c:	00aca223          	sw	a0,4(s9)
80002e60:	3f4b0e63          	beq	s6,s4,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002e64:	012636b3          	sltu	a3,a2,s2
80002e68:	008cab83          	lw	s7,8(s9)
80002e6c:	00c53933          	sltu	s2,a0,a2
80002e70:	00b685b3          	add	a1,a3,a1
80002e74:	01258933          	add	s2,a1,s2
80002e78:	000a8513          	mv	a0,s5
80002e7c:	00000593          	li	a1,0
80002e80:	f0c42603          	lw	a2,-244(s0)
80002e84:	00000693          	li	a3,0
80002e88:	00007097          	auipc	ra,0x7
80002e8c:	388080e7          	jalr	904(ra) # 8000a210 <__muldi3>
80002e90:	01790633          	add	a2,s2,s7
80002e94:	00a60533          	add	a0,a2,a0
80002e98:	00aca423          	sw	a0,8(s9)
80002e9c:	01f00a13          	li	s4,31
80002ea0:	3b6a6e63          	bltu	s4,s6,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002ea4:	012636b3          	sltu	a3,a2,s2
80002ea8:	00ccab83          	lw	s7,12(s9)
80002eac:	00c53933          	sltu	s2,a0,a2
80002eb0:	00b685b3          	add	a1,a3,a1
80002eb4:	01258933          	add	s2,a1,s2
80002eb8:	000a8513          	mv	a0,s5
80002ebc:	00000593          	li	a1,0
80002ec0:	f0842603          	lw	a2,-248(s0)
80002ec4:	00000693          	li	a3,0
80002ec8:	00007097          	auipc	ra,0x7
80002ecc:	348080e7          	jalr	840(ra) # 8000a210 <__muldi3>
80002ed0:	01790633          	add	a2,s2,s7
80002ed4:	00a60533          	add	a0,a2,a0
80002ed8:	00aca623          	sw	a0,12(s9)
80002edc:	394b0063          	beq	s6,s4,8000325c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe30>
80002ee0:	012636b3          	sltu	a3,a2,s2
80002ee4:	010ca903          	lw	s2,16(s9)
80002ee8:	00c53533          	sltu	a0,a0,a2
80002eec:	00b685b3          	add	a1,a3,a1
80002ef0:	00a58bb3          	add	s7,a1,a0
80002ef4:	24e00613          	li	a2,590
80002ef8:	000a8513          	mv	a0,s5
80002efc:	00000593          	li	a1,0
80002f00:	00000693          	li	a3,0
80002f04:	00007097          	auipc	ra,0x7
80002f08:	30c080e7          	jalr	780(ra) # 8000a210 <__muldi3>
80002f0c:	012b8933          	add	s2,s7,s2
80002f10:	01793633          	sltu	a2,s2,s7
80002f14:	00a906b3          	add	a3,s2,a0
80002f18:	0126b533          	sltu	a0,a3,s2
80002f1c:	00b605b3          	add	a1,a2,a1
80002f20:	00a58533          	add	a0,a1,a0
80002f24:	00dca823          	sw	a3,16(s9)
80002f28:	02050a63          	beqz	a0,80002f5c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xb30>
80002f2c:	f2442c03          	lw	s8,-220(s0)
80002f30:	f0442903          	lw	s2,-252(s0)
80002f34:	02800393          	li	t2,40
80002f38:	f0042603          	lw	a2,-256(s0)
80002f3c:	efc42a03          	lw	s4,-260(s0)
80002f40:	01e00593          	li	a1,30
80002f44:	36bb7c63          	bgeu	s6,a1,800032bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xe90>
80002f48:	00acaa23          	sw	a0,20(s9)
80002f4c:	00b00513          	li	a0,11
80002f50:	01650533          	add	a0,a0,s6
80002f54:	d3256ee3          	bltu	a0,s2,80002c90 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x864>
80002f58:	0240006f          	j	80002f7c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xb50>
80002f5c:	00a00513          	li	a0,10
80002f60:	f2442c03          	lw	s8,-220(s0)
80002f64:	f0442903          	lw	s2,-252(s0)
80002f68:	02800393          	li	t2,40
80002f6c:	f0042603          	lw	a2,-256(s0)
80002f70:	efc42a03          	lw	s4,-260(s0)
80002f74:	01650533          	add	a0,a0,s6
80002f78:	d1256ce3          	bltu	a0,s2,80002c90 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x864>
80002f7c:	00050913          	mv	s2,a0
80002f80:	d11ff06f          	j	80002c90 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0x864>
80002f84:	02900513          	li	a0,41
80002f88:	22a77a63          	bgeu	a4,a0,800031bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd90>
80002f8c:	8000c5b7          	lui	a1,0x8000c
80002f90:	7fc58593          	addi	a1,a1,2044 # 8000c7fc <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h0f360285d75974efE>
80002f94:	f2c40513          	addi	a0,s0,-212
80002f98:	00a00613          	li	a2,10
80002f9c:	000d8693          	mv	a3,s11
80002fa0:	00006097          	auipc	ra,0x6
80002fa4:	5e4080e7          	jalr	1508(ra) # 80009584 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE>
80002fa8:	00050913          	mv	s2,a0
80002fac:	0080006f          	j	80002fb4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xb88>
80002fb0:	f2842d83          	lw	s11,-216(s0)
80002fb4:	f2c40593          	addi	a1,s0,-212
80002fb8:	0a000613          	li	a2,160
80002fbc:	000d8513          	mv	a0,s11
80002fc0:	00008097          	auipc	ra,0x8
80002fc4:	cdc080e7          	jalr	-804(ra) # 8000ac9c <memcpy>
80002fc8:	0b2da023          	sw	s2,160(s11)
80002fcc:	100c7513          	andi	a0,s8,256
80002fd0:	18050263          	beqz	a0,80003154 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd28>
80002fd4:	f2c40513          	addi	a0,s0,-212
80002fd8:	0a000613          	li	a2,160
80002fdc:	f2c40493          	addi	s1,s0,-212
80002fe0:	00000593          	li	a1,0
80002fe4:	00008097          	auipc	ra,0x8
80002fe8:	400080e7          	jalr	1024(ra) # 8000b3e4 <memset>
80002fec:	0a0da703          	lw	a4,160(s11)
80002ff0:	01300513          	li	a0,19
80002ff4:	10a77a63          	bgeu	a4,a0,80003108 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xcdc>
80002ff8:	00000c13          	li	s8,0
80002ffc:	00000913          	li	s2,0
80003000:	00271713          	slli	a4,a4,0x2
80003004:	f2840b13          	addi	s6,s0,-216
80003008:	8000d637          	lui	a2,0x8000d
8000300c:	82460613          	addi	a2,a2,-2012 # 8000c824 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617h1efb1f32dd7ad4c6E>
80003010:	00ed8733          	add	a4,s11,a4
80003014:	000d8b93          	mv	s7,s11
80003018:	fffc0d93          	addi	s11,s8,-1
8000301c:	002c1513          	slli	a0,s8,0x2
80003020:	00ab0b33          	add	s6,s6,a0
80003024:	00a48533          	add	a0,s1,a0
80003028:	000b8593          	mv	a1,s7
8000302c:	10e58463          	beq	a1,a4,80003134 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd08>
80003030:	000c0a13          	mv	s4,s8
80003034:	00050493          	mv	s1,a0
80003038:	00458b93          	addi	s7,a1,4
8000303c:	0005aa83          	lw	s5,0(a1)
80003040:	001d8d93          	addi	s11,s11,1
80003044:	004b0b13          	addi	s6,s6,4
80003048:	001c0c13          	addi	s8,s8,1
8000304c:	00450513          	addi	a0,a0,4
80003050:	000b8593          	mv	a1,s7
80003054:	fc0a8ce3          	beqz	s5,8000302c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xc00>
80003058:	f0e42e23          	sw	a4,-228(s0)
8000305c:	f3242023          	sw	s2,-224(s0)
80003060:	00000c93          	li	s9,0
80003064:	001d8c13          	addi	s8,s11,1
80003068:	04c00993          	li	s3,76
8000306c:	00060913          	mv	s2,a2
80003070:	02800513          	li	a0,40
80003074:	16aa7063          	bgeu	s4,a0,800031d4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xda8>
80003078:	00092503          	lw	a0,0(s2)
8000307c:	0004ad03          	lw	s10,0(s1)
80003080:	00000593          	li	a1,0
80003084:	000a8613          	mv	a2,s5
80003088:	00000693          	li	a3,0
8000308c:	00007097          	auipc	ra,0x7
80003090:	184080e7          	jalr	388(ra) # 8000a210 <__muldi3>
80003094:	019d0cb3          	add	s9,s10,s9
80003098:	001a0a13          	addi	s4,s4,1
8000309c:	ffc98993          	addi	s3,s3,-4
800030a0:	01acb633          	sltu	a2,s9,s10
800030a4:	00ac8533          	add	a0,s9,a0
800030a8:	01953cb3          	sltu	s9,a0,s9
800030ac:	00b605b3          	add	a1,a2,a1
800030b0:	00a4a023          	sw	a0,0(s1)
800030b4:	00448493          	addi	s1,s1,4
800030b8:	01958cb3          	add	s9,a1,s9
800030bc:	00490913          	addi	s2,s2,4
800030c0:	fa0998e3          	bnez	s3,80003070 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xc44>
800030c4:	000c8c63          	beqz	s9,800030dc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xcb0>
800030c8:	01500513          	li	a0,21
800030cc:	20adf463          	bgeu	s11,a0,800032d4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xea8>
800030d0:	059b2623          	sw	s9,76(s6)
800030d4:	01400513          	li	a0,20
800030d8:	0080006f          	j	800030e0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xcb4>
800030dc:	01300513          	li	a0,19
800030e0:	f2c40493          	addi	s1,s0,-212
800030e4:	f2840b13          	addi	s6,s0,-216
800030e8:	f1c42703          	lw	a4,-228(s0)
800030ec:	01b50533          	add	a0,a0,s11
800030f0:	f2042903          	lw	s2,-224(s0)
800030f4:	8000d637          	lui	a2,0x8000d
800030f8:	82460613          	addi	a2,a2,-2012 # 8000c824 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617h1efb1f32dd7ad4c6E>
800030fc:	f1256ee3          	bltu	a0,s2,80003018 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xbec>
80003100:	00050913          	mv	s2,a0
80003104:	f15ff06f          	j	80003018 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xbec>
80003108:	02900513          	li	a0,41
8000310c:	0aa77863          	bgeu	a4,a0,800031bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd90>
80003110:	8000d5b7          	lui	a1,0x8000d
80003114:	82458593          	addi	a1,a1,-2012 # 8000c824 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617h1efb1f32dd7ad4c6E>
80003118:	f2c40513          	addi	a0,s0,-212
8000311c:	01300613          	li	a2,19
80003120:	000d8693          	mv	a3,s11
80003124:	00006097          	auipc	ra,0x6
80003128:	460080e7          	jalr	1120(ra) # 80009584 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE>
8000312c:	00050913          	mv	s2,a0
80003130:	00c0006f          	j	8000313c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE+0xd10>
80003134:	f2842d83          	lw	s11,-216(s0)
80003138:	f2442c03          	lw	s8,-220(s0)
8000313c:	f2c40593          	addi	a1,s0,-212
80003140:	0a000613          	li	a2,160
80003144:	000d8513          	mv	a0,s11
80003148:	00008097          	auipc	ra,0x8
8000314c:	b54080e7          	jalr	-1196(ra) # 8000ac9c <memcpy>
80003150:	0b2da023          	sw	s2,160(s11)
80003154:	000d8513          	mv	a0,s11
80003158:	000c0593          	mv	a1,s8
8000315c:	00006097          	auipc	ra,0x6
80003160:	084080e7          	jalr	132(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
80003164:	000d8513          	mv	a0,s11
80003168:	10c12083          	lw	ra,268(sp)
8000316c:	10812403          	lw	s0,264(sp)
80003170:	10412483          	lw	s1,260(sp)
80003174:	10012903          	lw	s2,256(sp)
80003178:	0fc12983          	lw	s3,252(sp)
8000317c:	0f812a03          	lw	s4,248(sp)
80003180:	0f412a83          	lw	s5,244(sp)
80003184:	0f012b03          	lw	s6,240(sp)
80003188:	0ec12b83          	lw	s7,236(sp)
8000318c:	0e812c03          	lw	s8,232(sp)
80003190:	0e412c83          	lw	s9,228(sp)
80003194:	0e012d03          	lw	s10,224(sp)
80003198:	0dc12d83          	lw	s11,220(sp)
8000319c:	11010113          	addi	sp,sp,272
800031a0:	00008067          	ret
800031a4:	8000d637          	lui	a2,0x8000d
800031a8:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800031ac:	02800593          	li	a1,40
800031b0:	00098513          	mv	a0,s3
800031b4:	00006097          	auipc	ra,0x6
800031b8:	d90080e7          	jalr	-624(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
800031bc:	8000d637          	lui	a2,0x8000d
800031c0:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800031c4:	02800593          	li	a1,40
800031c8:	00070513          	mv	a0,a4
800031cc:	00006097          	auipc	ra,0x6
800031d0:	d78080e7          	jalr	-648(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
800031d4:	8000d637          	lui	a2,0x8000d
800031d8:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800031dc:	02800593          	li	a1,40
800031e0:	000a0513          	mv	a0,s4
800031e4:	00004097          	auipc	ra,0x4
800031e8:	ea0080e7          	jalr	-352(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800031ec:	8000d637          	lui	a2,0x8000d
800031f0:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800031f4:	02800513          	li	a0,40
800031f8:	02800593          	li	a1,40
800031fc:	00004097          	auipc	ra,0x4
80003200:	e88080e7          	jalr	-376(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80003204:	02800a93          	li	s5,40
80003208:	8000d637          	lui	a2,0x8000d
8000320c:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80003210:	02800593          	li	a1,40
80003214:	000a8513          	mv	a0,s5
80003218:	00004097          	auipc	ra,0x4
8000321c:	e6c080e7          	jalr	-404(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80003220:	00048d93          	mv	s11,s1
80003224:	8000d637          	lui	a2,0x8000d
80003228:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
8000322c:	02800593          	li	a1,40
80003230:	000d8513          	mv	a0,s11
80003234:	00004097          	auipc	ra,0x4
80003238:	e50080e7          	jalr	-432(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000323c:	000d8b13          	mv	s6,s11
80003240:	8000d637          	lui	a2,0x8000d
80003244:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80003248:	02800593          	li	a1,40
8000324c:	000b0513          	mv	a0,s6
80003250:	00004097          	auipc	ra,0x4
80003254:	e34080e7          	jalr	-460(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80003258:	000b0c13          	mv	s8,s6
8000325c:	8000d637          	lui	a2,0x8000d
80003260:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80003264:	02800593          	li	a1,40
80003268:	000c0513          	mv	a0,s8
8000326c:	00004097          	auipc	ra,0x4
80003270:	e18080e7          	jalr	-488(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80003274:	002a8513          	addi	a0,s5,2
80003278:	8000d637          	lui	a2,0x8000d
8000327c:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80003280:	02800593          	li	a1,40
80003284:	00004097          	auipc	ra,0x4
80003288:	e00080e7          	jalr	-512(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000328c:	00348513          	addi	a0,s1,3
80003290:	8000d637          	lui	a2,0x8000d
80003294:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80003298:	02800593          	li	a1,40
8000329c:	00004097          	auipc	ra,0x4
800032a0:	de8080e7          	jalr	-536(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800032a4:	005d8513          	addi	a0,s11,5
800032a8:	8000d637          	lui	a2,0x8000d
800032ac:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800032b0:	02800593          	li	a1,40
800032b4:	00004097          	auipc	ra,0x4
800032b8:	dd0080e7          	jalr	-560(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800032bc:	00ab0513          	addi	a0,s6,10
800032c0:	8000d637          	lui	a2,0x8000d
800032c4:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800032c8:	02800593          	li	a1,40
800032cc:	00004097          	auipc	ra,0x4
800032d0:	db8080e7          	jalr	-584(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800032d4:	013d8513          	addi	a0,s11,19
800032d8:	8000d637          	lui	a2,0x8000d
800032dc:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800032e0:	02800593          	li	a1,40
800032e4:	00004097          	auipc	ra,0x4
800032e8:	da0080e7          	jalr	-608(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

800032ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E>:
800032ec:	a8010113          	addi	sp,sp,-1408
800032f0:	56112e23          	sw	ra,1404(sp)
800032f4:	56812c23          	sw	s0,1400(sp)
800032f8:	56912a23          	sw	s1,1396(sp)
800032fc:	57212823          	sw	s2,1392(sp)
80003300:	57312623          	sw	s3,1388(sp)
80003304:	57412423          	sw	s4,1384(sp)
80003308:	57512223          	sw	s5,1380(sp)
8000330c:	57612023          	sw	s6,1376(sp)
80003310:	55712e23          	sw	s7,1372(sp)
80003314:	55812c23          	sw	s8,1368(sp)
80003318:	55912a23          	sw	s9,1364(sp)
8000331c:	55a12823          	sw	s10,1360(sp)
80003320:	55b12623          	sw	s11,1356(sp)
80003324:	58010413          	addi	s0,sp,1408
80003328:	00060d93          	mv	s11,a2
8000332c:	0005ab03          	lw	s6,0(a1)
80003330:	0045ab83          	lw	s7,4(a1)
80003334:	017b6633          	or	a2,s6,s7
80003338:	60060ae3          	beqz	a2,8000414c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe60>
8000333c:	00050c93          	mv	s9,a0
80003340:	0085a983          	lw	s3,8(a1)
80003344:	00c5aa83          	lw	s5,12(a1)
80003348:	0159e533          	or	a0,s3,s5
8000334c:	60050ee3          	beqz	a0,80004168 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe7c>
80003350:	0105a483          	lw	s1,16(a1)
80003354:	0145a903          	lw	s2,20(a1)
80003358:	0124e533          	or	a0,s1,s2
8000335c:	620504e3          	beqz	a0,80004184 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe98>
80003360:	00068c13          	mv	s8,a3
80003364:	009b0533          	add	a0,s6,s1
80003368:	016536b3          	sltu	a3,a0,s6
8000336c:	012b8633          	add	a2,s7,s2
80003370:	00d60733          	add	a4,a2,a3
80003374:	01770463          	beq	a4,s7,8000337c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x90>
80003378:	017736b3          	sltu	a3,a4,s7
8000337c:	620692e3          	bnez	a3,800041a0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xeb4>
80003380:	015b8663          	beq	s7,s5,8000338c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xa0>
80003384:	015bb6b3          	sltu	a3,s7,s5
80003388:	0080006f          	j	80003390 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xa4>
8000338c:	013b36b3          	sltu	a3,s6,s3
80003390:	620696e3          	bnez	a3,800041bc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xed0>
80003394:	01000693          	li	a3,16
80003398:	6586f0e3          	bgeu	a3,s8,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xeec>
8000339c:	01859a03          	lh	s4,24(a1)
800033a0:	016536b3          	sltu	a3,a0,s6
800033a4:	00153793          	seqz	a5,a0
800033a8:	55555737          	lui	a4,0x55555
800033ac:	00d60633          	add	a2,a2,a3
800033b0:	333336b7          	lui	a3,0x33333
800033b4:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
800033b8:	33368693          	addi	a3,a3,819 # 33333333 <.Lline_table_start2+0x33331af9>
800033bc:	40f607b3          	sub	a5,a2,a5
800033c0:	0f0f1637          	lui	a2,0xf0f1
800033c4:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
800033c8:	06079c63          	bnez	a5,80003440 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x154>
800033cc:	fff50513          	addi	a0,a0,-1
800033d0:	00155793          	srli	a5,a0,0x1
800033d4:	00f56533          	or	a0,a0,a5
800033d8:	00255793          	srli	a5,a0,0x2
800033dc:	00f56533          	or	a0,a0,a5
800033e0:	00455793          	srli	a5,a0,0x4
800033e4:	00f56533          	or	a0,a0,a5
800033e8:	00855793          	srli	a5,a0,0x8
800033ec:	00f56533          	or	a0,a0,a5
800033f0:	01055793          	srli	a5,a0,0x10
800033f4:	00f56533          	or	a0,a0,a5
800033f8:	fff54513          	not	a0,a0
800033fc:	00155793          	srli	a5,a0,0x1
80003400:	00e7f733          	and	a4,a5,a4
80003404:	40e50533          	sub	a0,a0,a4
80003408:	00d57733          	and	a4,a0,a3
8000340c:	00255513          	srli	a0,a0,0x2
80003410:	00d57533          	and	a0,a0,a3
80003414:	00a70533          	add	a0,a4,a0
80003418:	00455693          	srli	a3,a0,0x4
8000341c:	00d50533          	add	a0,a0,a3
80003420:	00c57533          	and	a0,a0,a2
80003424:	00851613          	slli	a2,a0,0x8
80003428:	00c50533          	add	a0,a0,a2
8000342c:	01051613          	slli	a2,a0,0x10
80003430:	00c50533          	add	a0,a0,a2
80003434:	01855513          	srli	a0,a0,0x18
80003438:	02050613          	addi	a2,a0,32
8000343c:	06c0006f          	j	800034a8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x1bc>
80003440:	0017d513          	srli	a0,a5,0x1
80003444:	00a7e533          	or	a0,a5,a0
80003448:	00255793          	srli	a5,a0,0x2
8000344c:	00f56533          	or	a0,a0,a5
80003450:	00455793          	srli	a5,a0,0x4
80003454:	00f56533          	or	a0,a0,a5
80003458:	00855793          	srli	a5,a0,0x8
8000345c:	00f56533          	or	a0,a0,a5
80003460:	01055793          	srli	a5,a0,0x10
80003464:	00f56533          	or	a0,a0,a5
80003468:	fff54513          	not	a0,a0
8000346c:	00155793          	srli	a5,a0,0x1
80003470:	00e7f733          	and	a4,a5,a4
80003474:	40e50533          	sub	a0,a0,a4
80003478:	00d57733          	and	a4,a0,a3
8000347c:	00255513          	srli	a0,a0,0x2
80003480:	00d57533          	and	a0,a0,a3
80003484:	00a70533          	add	a0,a4,a0
80003488:	00455693          	srli	a3,a0,0x4
8000348c:	00d50533          	add	a0,a0,a3
80003490:	00c57533          	and	a0,a0,a2
80003494:	00851613          	slli	a2,a0,0x8
80003498:	00c50533          	add	a0,a0,a2
8000349c:	01051613          	slli	a2,a0,0x10
800034a0:	00c50533          	add	a0,a0,a2
800034a4:	01855613          	srli	a2,a0,0x18
800034a8:	01a58503          	lb	a0,26(a1)
800034ac:	aaa42223          	sw	a0,-1372(s0)
800034b0:	41fa5593          	srai	a1,s4,0x1f
800034b4:	40ca0533          	sub	a0,s4,a2
800034b8:	00ca3633          	sltu	a2,s4,a2
800034bc:	40c585b3          	sub	a1,a1,a2
800034c0:	4d105637          	lui	a2,0x4d105
800034c4:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103508>
800034c8:	00000693          	li	a3,0
800034cc:	00007097          	auipc	ra,0x7
800034d0:	d44080e7          	jalr	-700(ra) # 8000a210 <__muldi3>
800034d4:	001bb613          	seqz	a2,s7
800034d8:	fff60693          	addi	a3,a2,-1
800034dc:	0176f6b3          	and	a3,a3,s7
800034e0:	00200b93          	li	s7,2
800034e4:	40cb8633          	sub	a2,s7,a2
800034e8:	b4c42423          	sw	a2,-1208(s0)
800034ec:	44135637          	lui	a2,0x44135
800034f0:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133846>
800034f4:	00c50633          	add	a2,a0,a2
800034f8:	00a63533          	sltu	a0,a2,a0
800034fc:	ab642423          	sw	s6,-1368(s0)
80003500:	aad42623          	sw	a3,-1364(s0)
80003504:	00a58533          	add	a0,a1,a0
80003508:	01350b13          	addi	s6,a0,19
8000350c:	010b1513          	slli	a0,s6,0x10
80003510:	41055513          	srai	a0,a0,0x10
80003514:	a8a42623          	sw	a0,-1396(s0)
80003518:	ab040513          	addi	a0,s0,-1360
8000351c:	09800613          	li	a2,152
80003520:	00000593          	li	a1,0
80003524:	00008097          	auipc	ra,0x8
80003528:	ec0080e7          	jalr	-320(ra) # 8000b3e4 <memset>
8000352c:	001ab513          	seqz	a0,s5
80003530:	fff50593          	addi	a1,a0,-1
80003534:	40ab8533          	sub	a0,s7,a0
80003538:	0155f5b3          	and	a1,a1,s5
8000353c:	bea42623          	sw	a0,-1044(s0)
80003540:	b5342623          	sw	s3,-1204(s0)
80003544:	b4b42823          	sw	a1,-1200(s0)
80003548:	b5440513          	addi	a0,s0,-1196
8000354c:	09800613          	li	a2,152
80003550:	00000593          	li	a1,0
80003554:	00008097          	auipc	ra,0x8
80003558:	e90080e7          	jalr	-368(ra) # 8000b3e4 <memset>
8000355c:	00193513          	seqz	a0,s2
80003560:	fff50593          	addi	a1,a0,-1
80003564:	40ab8533          	sub	a0,s7,a0
80003568:	0125f5b3          	and	a1,a1,s2
8000356c:	c8a42823          	sw	a0,-880(s0)
80003570:	be942823          	sw	s1,-1040(s0)
80003574:	beb42a23          	sw	a1,-1036(s0)
80003578:	bf840513          	addi	a0,s0,-1032
8000357c:	09800613          	li	a2,152
80003580:	00000593          	li	a1,0
80003584:	00008097          	auipc	ra,0x8
80003588:	e60080e7          	jalr	-416(ra) # 8000b3e4 <memset>
8000358c:	c9840513          	addi	a0,s0,-872
80003590:	09c00613          	li	a2,156
80003594:	00000593          	li	a1,0
80003598:	00008097          	auipc	ra,0x8
8000359c:	e4c080e7          	jalr	-436(ra) # 8000b3e4 <memset>
800035a0:	00100513          	li	a0,1
800035a4:	d2a42a23          	sw	a0,-716(s0)
800035a8:	c8a42a23          	sw	a0,-876(s0)
800035ac:	040a4863          	bltz	s4,800035fc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x310>
800035b0:	aa840513          	addi	a0,s0,-1368
800035b4:	000a0593          	mv	a1,s4
800035b8:	00006097          	auipc	ra,0x6
800035bc:	c28080e7          	jalr	-984(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800035c0:	b4c40513          	addi	a0,s0,-1204
800035c4:	000a0593          	mv	a1,s4
800035c8:	00006097          	auipc	ra,0x6
800035cc:	c18080e7          	jalr	-1000(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800035d0:	bf040513          	addi	a0,s0,-1040
800035d4:	000a0593          	mv	a1,s4
800035d8:	00006097          	auipc	ra,0x6
800035dc:	c08080e7          	jalr	-1016(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800035e0:	a8c42903          	lw	s2,-1396(s0)
800035e4:	aa442983          	lw	s3,-1372(s0)
800035e8:	02094c63          	bltz	s2,80003620 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x334>
800035ec:	011b1593          	slli	a1,s6,0x11
800035f0:	0115d593          	srli	a1,a1,0x11
800035f4:	c9440513          	addi	a0,s0,-876
800035f8:	05c0006f          	j	80003654 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x368>
800035fc:	41400533          	neg	a0,s4
80003600:	01051513          	slli	a0,a0,0x10
80003604:	41055593          	srai	a1,a0,0x10
80003608:	c9440513          	addi	a0,s0,-876
8000360c:	00006097          	auipc	ra,0x6
80003610:	bd4080e7          	jalr	-1068(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
80003614:	a8c42903          	lw	s2,-1396(s0)
80003618:	aa442983          	lw	s3,-1372(s0)
8000361c:	fc0958e3          	bgez	s2,800035ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x300>
80003620:	41200533          	neg	a0,s2
80003624:	01051513          	slli	a0,a0,0x10
80003628:	01055a13          	srli	s4,a0,0x10
8000362c:	aa840513          	addi	a0,s0,-1368
80003630:	000a0593          	mv	a1,s4
80003634:	fffff097          	auipc	ra,0xfffff
80003638:	df8080e7          	jalr	-520(ra) # 8000242c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE>
8000363c:	b4c40513          	addi	a0,s0,-1204
80003640:	000a0593          	mv	a1,s4
80003644:	fffff097          	auipc	ra,0xfffff
80003648:	de8080e7          	jalr	-536(ra) # 8000242c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE>
8000364c:	bf040513          	addi	a0,s0,-1040
80003650:	000a0593          	mv	a1,s4
80003654:	fffff097          	auipc	ra,0xfffff
80003658:	dd8080e7          	jalr	-552(ra) # 8000242c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE>
8000365c:	f2440513          	addi	a0,s0,-220
80003660:	aa840593          	addi	a1,s0,-1368
80003664:	0a400613          	li	a2,164
80003668:	00007097          	auipc	ra,0x7
8000366c:	634080e7          	jalr	1588(ra) # 8000ac9c <memcpy>
80003670:	fc442583          	lw	a1,-60(s0)
80003674:	c9042483          	lw	s1,-880(s0)
80003678:	00048513          	mv	a0,s1
8000367c:	0095e463          	bltu	a1,s1,80003684 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x398>
80003680:	00058513          	mv	a0,a1
80003684:	02800593          	li	a1,40
80003688:	26a5e2e3          	bltu	a1,a0,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
8000368c:	06050463          	beqz	a0,800036f4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x408>
80003690:	00000793          	li	a5,0
80003694:	00251593          	slli	a1,a0,0x2
80003698:	bf040613          	addi	a2,s0,-1040
8000369c:	00b606b3          	add	a3,a2,a1
800036a0:	f2440713          	addi	a4,s0,-220
800036a4:	00072803          	lw	a6,0(a4)
800036a8:	00062883          	lw	a7,0(a2)
800036ac:	0017f793          	andi	a5,a5,1
800036b0:	00460613          	addi	a2,a2,4
800036b4:	011808b3          	add	a7,a6,a7
800036b8:	0108b833          	sltu	a6,a7,a6
800036bc:	00f887b3          	add	a5,a7,a5
800036c0:	0117b8b3          	sltu	a7,a5,a7
800036c4:	00f72023          	sw	a5,0(a4)
800036c8:	011867b3          	or	a5,a6,a7
800036cc:	00470713          	addi	a4,a4,4
800036d0:	fcd61ae3          	bne	a2,a3,800036a4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x3b8>
800036d4:	02078063          	beqz	a5,800036f4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x408>
800036d8:	02800613          	li	a2,40
800036dc:	32c508e3          	beq	a0,a2,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
800036e0:	f2440613          	addi	a2,s0,-220
800036e4:	00b605b3          	add	a1,a2,a1
800036e8:	00100613          	li	a2,1
800036ec:	00c5a023          	sw	a2,0(a1)
800036f0:	00150513          	addi	a0,a0,1
800036f4:	d3442583          	lw	a1,-716(s0)
800036f8:	fca42223          	sw	a0,-60(s0)
800036fc:	00a5e463          	bltu	a1,a0,80003704 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x418>
80003700:	00058513          	mv	a0,a1
80003704:	02900593          	li	a1,41
80003708:	1eb572e3          	bgeu	a0,a1,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
8000370c:	00251593          	slli	a1,a0,0x2
80003710:	f2440613          	addi	a2,s0,-220
80003714:	c9440693          	addi	a3,s0,-876
80003718:	40b00533          	neg	a0,a1
8000371c:	ffc58713          	addi	a4,a1,-4
80003720:	00e605b3          	add	a1,a2,a4
80003724:	00e68633          	add	a2,a3,a4
80003728:	16050c63          	beqz	a0,800038a0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x5b4>
8000372c:	00062683          	lw	a3,0(a2)
80003730:	0005a703          	lw	a4,0(a1)
80003734:	00450513          	addi	a0,a0,4
80003738:	ffc58593          	addi	a1,a1,-4
8000373c:	ffc60613          	addi	a2,a2,-4
80003740:	fee684e3          	beq	a3,a4,80003728 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x43c>
80003744:	00e6b533          	sltu	a0,a3,a4
80003748:	00d735b3          	sltu	a1,a4,a3
8000374c:	40a58533          	sub	a0,a1,a0
80003750:	15354e63          	blt	a0,s3,800038ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x5c0>
80003754:	b4842a03          	lw	s4,-1208(s0)
80003758:	02900513          	li	a0,41
8000375c:	28aa7ce3          	bgeu	s4,a0,800041f4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf08>
80003760:	060a0063          	beqz	s4,800037c0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x4d4>
80003764:	00000993          	li	s3,0
80003768:	002a1a93          	slli	s5,s4,0x2
8000376c:	aa840b13          	addi	s6,s0,-1368
80003770:	015b0933          	add	s2,s6,s5
80003774:	000b2503          	lw	a0,0(s6)
80003778:	004b0b93          	addi	s7,s6,4
8000377c:	00a00613          	li	a2,10
80003780:	00000593          	li	a1,0
80003784:	00000693          	li	a3,0
80003788:	00007097          	auipc	ra,0x7
8000378c:	a88080e7          	jalr	-1400(ra) # 8000a210 <__muldi3>
80003790:	01350633          	add	a2,a0,s3
80003794:	ffca8a93          	addi	s5,s5,-4
80003798:	00a639b3          	sltu	s3,a2,a0
8000379c:	013589b3          	add	s3,a1,s3
800037a0:	00cb2023          	sw	a2,0(s6)
800037a4:	000b8b13          	mv	s6,s7
800037a8:	fc0a96e3          	bnez	s5,80003774 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x488>
800037ac:	00098a63          	beqz	s3,800037c0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x4d4>
800037b0:	02800513          	li	a0,40
800037b4:	24aa0ce3          	beq	s4,a0,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
800037b8:	01392023          	sw	s3,0(s2)
800037bc:	001a0a13          	addi	s4,s4,1
800037c0:	bec42a83          	lw	s5,-1044(s0)
800037c4:	02900513          	li	a0,41
800037c8:	b5442423          	sw	s4,-1208(s0)
800037cc:	14aaf8e3          	bgeu	s5,a0,8000411c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe30>
800037d0:	060a8063          	beqz	s5,80003830 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x544>
800037d4:	00000993          	li	s3,0
800037d8:	002a9a13          	slli	s4,s5,0x2
800037dc:	b4c40b13          	addi	s6,s0,-1204
800037e0:	014b0933          	add	s2,s6,s4
800037e4:	000b2503          	lw	a0,0(s6)
800037e8:	004b0b93          	addi	s7,s6,4
800037ec:	00a00613          	li	a2,10
800037f0:	00000593          	li	a1,0
800037f4:	00000693          	li	a3,0
800037f8:	00007097          	auipc	ra,0x7
800037fc:	a18080e7          	jalr	-1512(ra) # 8000a210 <__muldi3>
80003800:	01350633          	add	a2,a0,s3
80003804:	ffca0a13          	addi	s4,s4,-4
80003808:	00a639b3          	sltu	s3,a2,a0
8000380c:	013589b3          	add	s3,a1,s3
80003810:	00cb2023          	sw	a2,0(s6)
80003814:	000b8b13          	mv	s6,s7
80003818:	fc0a16e3          	bnez	s4,800037e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x4f8>
8000381c:	00098a63          	beqz	s3,80003830 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x544>
80003820:	02800513          	li	a0,40
80003824:	1eaa84e3          	beq	s5,a0,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
80003828:	01392023          	sw	s3,0(s2)
8000382c:	001a8a93          	addi	s5,s5,1
80003830:	bf542623          	sw	s5,-1044(s0)
80003834:	06048063          	beqz	s1,80003894 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x5a8>
80003838:	00000993          	li	s3,0
8000383c:	00249a13          	slli	s4,s1,0x2
80003840:	bf040a93          	addi	s5,s0,-1040
80003844:	014a8933          	add	s2,s5,s4
80003848:	000aa503          	lw	a0,0(s5)
8000384c:	004a8b13          	addi	s6,s5,4
80003850:	00a00613          	li	a2,10
80003854:	00000593          	li	a1,0
80003858:	00000693          	li	a3,0
8000385c:	00007097          	auipc	ra,0x7
80003860:	9b4080e7          	jalr	-1612(ra) # 8000a210 <__muldi3>
80003864:	01350633          	add	a2,a0,s3
80003868:	ffca0a13          	addi	s4,s4,-4
8000386c:	00a639b3          	sltu	s3,a2,a0
80003870:	013589b3          	add	s3,a1,s3
80003874:	00caa023          	sw	a2,0(s5)
80003878:	000b0a93          	mv	s5,s6
8000387c:	fc0a16e3          	bnez	s4,80003848 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x55c>
80003880:	00098a63          	beqz	s3,80003894 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x5a8>
80003884:	02800513          	li	a0,40
80003888:	18a482e3          	beq	s1,a0,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
8000388c:	01392023          	sw	s3,0(s2)
80003890:	00148493          	addi	s1,s1,1
80003894:	c8942823          	sw	s1,-880(s0)
80003898:	aa442983          	lw	s3,-1372(s0)
8000389c:	0180006f          	j	800038b4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x5c8>
800038a0:	00153513          	seqz	a0,a0
800038a4:	fff50513          	addi	a0,a0,-1
800038a8:	eb3556e3          	bge	a0,s3,80003754 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x468>
800038ac:	00190913          	addi	s2,s2,1
800038b0:	a9242623          	sw	s2,-1396(s0)
800038b4:	d3840513          	addi	a0,s0,-712
800038b8:	c9440593          	addi	a1,s0,-876
800038bc:	0a400613          	li	a2,164
800038c0:	00007097          	auipc	ra,0x7
800038c4:	3dc080e7          	jalr	988(ra) # 8000ac9c <memcpy>
800038c8:	d3840513          	addi	a0,s0,-712
800038cc:	00100593          	li	a1,1
800038d0:	00006097          	auipc	ra,0x6
800038d4:	910080e7          	jalr	-1776(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800038d8:	ddc40513          	addi	a0,s0,-548
800038dc:	c9440593          	addi	a1,s0,-876
800038e0:	0a400613          	li	a2,164
800038e4:	00007097          	auipc	ra,0x7
800038e8:	3b8080e7          	jalr	952(ra) # 8000ac9c <memcpy>
800038ec:	ddc40513          	addi	a0,s0,-548
800038f0:	00200593          	li	a1,2
800038f4:	00006097          	auipc	ra,0x6
800038f8:	8ec080e7          	jalr	-1812(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800038fc:	e8040513          	addi	a0,s0,-384
80003900:	c9440593          	addi	a1,s0,-876
80003904:	0a400613          	li	a2,164
80003908:	00007097          	auipc	ra,0x7
8000390c:	394080e7          	jalr	916(ra) # 8000ac9c <memcpy>
80003910:	e8040513          	addi	a0,s0,-384
80003914:	00300593          	li	a1,3
80003918:	00006097          	auipc	ra,0x6
8000391c:	8c8080e7          	jalr	-1848(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
80003920:	f2042583          	lw	a1,-224(s0)
80003924:	b4842a83          	lw	s5,-1208(s0)
80003928:	00058513          	mv	a0,a1
8000392c:	a8b42823          	sw	a1,-1392(s0)
80003930:	00bae463          	bltu	s5,a1,80003938 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x64c>
80003934:	000a8513          	mv	a0,s5
80003938:	02800593          	li	a1,40
8000393c:	7aa5e863          	bltu	a1,a0,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
80003940:	a9942423          	sw	s9,-1400(s0)
80003944:	00000c93          	li	s9,0
80003948:	e7c42583          	lw	a1,-388(s0)
8000394c:	aab42023          	sw	a1,-1376(s0)
80003950:	dd842583          	lw	a1,-552(s0)
80003954:	a8b42e23          	sw	a1,-1380(s0)
80003958:	d3442b83          	lw	s7,-716(s0)
8000395c:	aa440913          	addi	s2,s0,-1372
80003960:	02900493          	li	s1,41
80003964:	a9842c23          	sw	s8,-1384(s0)
80003968:	a9b42a23          	sw	s11,-1388(s0)
8000396c:	0100006f          	j	8000397c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x690>
80003970:	a9842c03          	lw	s8,-1384(s0)
80003974:	02800593          	li	a1,40
80003978:	76a5ea63          	bltu	a1,a0,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
8000397c:	000c8b13          	mv	s6,s9
80003980:	00251613          	slli	a2,a0,0x2
80003984:	40c005b3          	neg	a1,a2
80003988:	e7c40693          	addi	a3,s0,-388
8000398c:	00c686b3          	add	a3,a3,a2
80003990:	00c90733          	add	a4,s2,a2
80003994:	08058263          	beqz	a1,80003a18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x72c>
80003998:	00072783          	lw	a5,0(a4)
8000399c:	0006a803          	lw	a6,0(a3)
800039a0:	00458593          	addi	a1,a1,4
800039a4:	ffc68693          	addi	a3,a3,-4
800039a8:	ffc70713          	addi	a4,a4,-4
800039ac:	ff0784e3          	beq	a5,a6,80003994 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x6a8>
800039b0:	0707e663          	bltu	a5,a6,80003a1c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x730>
800039b4:	04050663          	beqz	a0,80003a00 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x714>
800039b8:	e8040593          	addi	a1,s0,-384
800039bc:	00100713          	li	a4,1
800039c0:	00c58633          	add	a2,a1,a2
800039c4:	aa840693          	addi	a3,s0,-1368
800039c8:	0005a783          	lw	a5,0(a1)
800039cc:	0006a803          	lw	a6,0(a3)
800039d0:	00177713          	andi	a4,a4,1
800039d4:	00458593          	addi	a1,a1,4
800039d8:	fff7c793          	not	a5,a5
800039dc:	00f807b3          	add	a5,a6,a5
800039e0:	0107b833          	sltu	a6,a5,a6
800039e4:	00e78733          	add	a4,a5,a4
800039e8:	00f737b3          	sltu	a5,a4,a5
800039ec:	00e6a023          	sw	a4,0(a3)
800039f0:	00f86733          	or	a4,a6,a5
800039f4:	00468693          	addi	a3,a3,4
800039f8:	fcc598e3          	bne	a1,a2,800039c8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x6dc>
800039fc:	70070263          	beqz	a4,80004100 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe14>
80003a00:	b4a42423          	sw	a0,-1208(s0)
80003a04:	00800593          	li	a1,8
80003a08:	aa042603          	lw	a2,-1376(s0)
80003a0c:	00060693          	mv	a3,a2
80003a10:	02c57063          	bgeu	a0,a2,80003a30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x744>
80003a14:	0200006f          	j	80003a34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x748>
80003a18:	f8058ee3          	beqz	a1,800039b4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x6c8>
80003a1c:	00000593          	li	a1,0
80003a20:	000a8513          	mv	a0,s5
80003a24:	aa042603          	lw	a2,-1376(s0)
80003a28:	00060693          	mv	a3,a2
80003a2c:	00cae463          	bltu	s5,a2,80003a34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x748>
80003a30:	00050693          	mv	a3,a0
80003a34:	7096f063          	bgeu	a3,s1,80004134 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe48>
80003a38:	00269613          	slli	a2,a3,0x2
80003a3c:	40c00733          	neg	a4,a2
80003a40:	dd840793          	addi	a5,s0,-552
80003a44:	00c787b3          	add	a5,a5,a2
80003a48:	00c90833          	add	a6,s2,a2
80003a4c:	08070263          	beqz	a4,80003ad0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x7e4>
80003a50:	00082883          	lw	a7,0(a6)
80003a54:	0007a283          	lw	t0,0(a5)
80003a58:	00470713          	addi	a4,a4,4
80003a5c:	ffc78793          	addi	a5,a5,-4
80003a60:	ffc80813          	addi	a6,a6,-4
80003a64:	fe5884e3          	beq	a7,t0,80003a4c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x760>
80003a68:	0658e663          	bltu	a7,t0,80003ad4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x7e8>
80003a6c:	04068663          	beqz	a3,80003ab8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x7cc>
80003a70:	ddc40513          	addi	a0,s0,-548
80003a74:	00100793          	li	a5,1
80003a78:	00c50633          	add	a2,a0,a2
80003a7c:	aa840713          	addi	a4,s0,-1368
80003a80:	00052803          	lw	a6,0(a0)
80003a84:	00072883          	lw	a7,0(a4)
80003a88:	0017f793          	andi	a5,a5,1
80003a8c:	00450513          	addi	a0,a0,4
80003a90:	fff84813          	not	a6,a6
80003a94:	01088833          	add	a6,a7,a6
80003a98:	011838b3          	sltu	a7,a6,a7
80003a9c:	00f807b3          	add	a5,a6,a5
80003aa0:	0107b833          	sltu	a6,a5,a6
80003aa4:	00f72023          	sw	a5,0(a4)
80003aa8:	0108e7b3          	or	a5,a7,a6
80003aac:	00470713          	addi	a4,a4,4
80003ab0:	fcc518e3          	bne	a0,a2,80003a80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x794>
80003ab4:	64078663          	beqz	a5,80004100 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe14>
80003ab8:	b4d42423          	sw	a3,-1208(s0)
80003abc:	0045e593          	ori	a1,a1,4
80003ac0:	a9c42603          	lw	a2,-1380(s0)
80003ac4:	00060513          	mv	a0,a2
80003ac8:	02c6e063          	bltu	a3,a2,80003ae8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x7fc>
80003acc:	0180006f          	j	80003ae4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x7f8>
80003ad0:	f8070ee3          	beqz	a4,80003a6c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x780>
80003ad4:	00050693          	mv	a3,a0
80003ad8:	a9c42603          	lw	a2,-1380(s0)
80003adc:	00060513          	mv	a0,a2
80003ae0:	00c6e463          	bltu	a3,a2,80003ae8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x7fc>
80003ae4:	00068513          	mv	a0,a3
80003ae8:	60957263          	bgeu	a0,s1,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
80003aec:	00251713          	slli	a4,a0,0x2
80003af0:	40e00633          	neg	a2,a4
80003af4:	d3440793          	addi	a5,s0,-716
80003af8:	00e787b3          	add	a5,a5,a4
80003afc:	00e90833          	add	a6,s2,a4
80003b00:	08060063          	beqz	a2,80003b80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x894>
80003b04:	00082883          	lw	a7,0(a6)
80003b08:	0007a283          	lw	t0,0(a5)
80003b0c:	00460613          	addi	a2,a2,4
80003b10:	ffc78793          	addi	a5,a5,-4
80003b14:	ffc80813          	addi	a6,a6,-4
80003b18:	fe5884e3          	beq	a7,t0,80003b00 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x814>
80003b1c:	0658e463          	bltu	a7,t0,80003b84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x898>
80003b20:	04050663          	beqz	a0,80003b6c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x880>
80003b24:	d3840613          	addi	a2,s0,-712
80003b28:	00100793          	li	a5,1
80003b2c:	00e60733          	add	a4,a2,a4
80003b30:	aa840693          	addi	a3,s0,-1368
80003b34:	00062803          	lw	a6,0(a2)
80003b38:	0006a883          	lw	a7,0(a3)
80003b3c:	0017f793          	andi	a5,a5,1
80003b40:	00460613          	addi	a2,a2,4
80003b44:	fff84813          	not	a6,a6
80003b48:	01088833          	add	a6,a7,a6
80003b4c:	011838b3          	sltu	a7,a6,a7
80003b50:	00f807b3          	add	a5,a6,a5
80003b54:	0107b833          	sltu	a6,a5,a6
80003b58:	00f6a023          	sw	a5,0(a3)
80003b5c:	0108e7b3          	or	a5,a7,a6
80003b60:	00468693          	addi	a3,a3,4
80003b64:	fce618e3          	bne	a2,a4,80003b34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x848>
80003b68:	58078c63          	beqz	a5,80004100 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe14>
80003b6c:	b4a42423          	sw	a0,-1208(s0)
80003b70:	00258593          	addi	a1,a1,2
80003b74:	000b8a93          	mv	s5,s7
80003b78:	01756e63          	bltu	a0,s7,80003b94 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x8a8>
80003b7c:	0140006f          	j	80003b90 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x8a4>
80003b80:	fa0600e3          	beqz	a2,80003b20 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x834>
80003b84:	00068513          	mv	a0,a3
80003b88:	000b8a93          	mv	s5,s7
80003b8c:	0176e463          	bltu	a3,s7,80003b94 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x8a8>
80003b90:	00050a93          	mv	s5,a0
80003b94:	589af463          	bgeu	s5,s1,8000411c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe30>
80003b98:	002a9613          	slli	a2,s5,0x2
80003b9c:	40c006b3          	neg	a3,a2
80003ba0:	c9040713          	addi	a4,s0,-880
80003ba4:	00c70733          	add	a4,a4,a2
80003ba8:	00c907b3          	add	a5,s2,a2
80003bac:	06068c63          	beqz	a3,80003c24 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x938>
80003bb0:	0007a803          	lw	a6,0(a5)
80003bb4:	00072883          	lw	a7,0(a4)
80003bb8:	00468693          	addi	a3,a3,4
80003bbc:	ffc70713          	addi	a4,a4,-4
80003bc0:	ffc78793          	addi	a5,a5,-4
80003bc4:	ff1804e3          	beq	a6,a7,80003bac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x8c0>
80003bc8:	07186063          	bltu	a6,a7,80003c28 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x93c>
80003bcc:	040a8663          	beqz	s5,80003c18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x92c>
80003bd0:	c9440513          	addi	a0,s0,-876
80003bd4:	00100713          	li	a4,1
80003bd8:	00c50633          	add	a2,a0,a2
80003bdc:	aa840693          	addi	a3,s0,-1368
80003be0:	00052783          	lw	a5,0(a0)
80003be4:	0006a803          	lw	a6,0(a3)
80003be8:	00177713          	andi	a4,a4,1
80003bec:	00450513          	addi	a0,a0,4
80003bf0:	fff7c793          	not	a5,a5
80003bf4:	00f807b3          	add	a5,a6,a5
80003bf8:	0107b833          	sltu	a6,a5,a6
80003bfc:	00e78733          	add	a4,a5,a4
80003c00:	00f737b3          	sltu	a5,a4,a5
80003c04:	00e6a023          	sw	a4,0(a3)
80003c08:	00f86733          	or	a4,a6,a5
80003c0c:	00468693          	addi	a3,a3,4
80003c10:	fcc518e3          	bne	a0,a2,80003be0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x8f4>
80003c14:	4e070663          	beqz	a4,80004100 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe14>
80003c18:	b5542423          	sw	s5,-1208(s0)
80003c1c:	00158593          	addi	a1,a1,1
80003c20:	00c0006f          	j	80003c2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x940>
80003c24:	fa0684e3          	beqz	a3,80003bcc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x8e0>
80003c28:	00050a93          	mv	s5,a0
80003c2c:	5f8b0c63          	beq	s6,s8,80004224 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf38>
80003c30:	bec42d03          	lw	s10,-1044(s0)
80003c34:	03058513          	addi	a0,a1,48
80003c38:	016d8a33          	add	s4,s11,s6
80003c3c:	00aa0023          	sb	a0,0(s4)
80003c40:	000d0513          	mv	a0,s10
80003c44:	01aae463          	bltu	s5,s10,80003c4c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x960>
80003c48:	000a8513          	mv	a0,s5
80003c4c:	4a957063          	bgeu	a0,s1,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
80003c50:	001b0c93          	addi	s9,s6,1
80003c54:	00251613          	slli	a2,a0,0x2
80003c58:	40c00533          	neg	a0,a2
80003c5c:	b4840593          	addi	a1,s0,-1208
80003c60:	00c585b3          	add	a1,a1,a2
80003c64:	00c90633          	add	a2,s2,a2
80003c68:	02050663          	beqz	a0,80003c94 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x9a8>
80003c6c:	00062683          	lw	a3,0(a2)
80003c70:	0005a703          	lw	a4,0(a1)
80003c74:	00450513          	addi	a0,a0,4
80003c78:	ffc58593          	addi	a1,a1,-4
80003c7c:	ffc60613          	addi	a2,a2,-4
80003c80:	fee684e3          	beq	a3,a4,80003c68 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x97c>
80003c84:	00e6b533          	sltu	a0,a3,a4
80003c88:	00d735b3          	sltu	a1,a4,a3
80003c8c:	40a58db3          	sub	s11,a1,a0
80003c90:	00c0006f          	j	80003c9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x9b0>
80003c94:	00153d93          	seqz	s11,a0
80003c98:	fffd8d93          	addi	s11,s11,-1
80003c9c:	f2440513          	addi	a0,s0,-220
80003ca0:	aa840593          	addi	a1,s0,-1368
80003ca4:	0a400613          	li	a2,164
80003ca8:	00007097          	auipc	ra,0x7
80003cac:	ff4080e7          	jalr	-12(ra) # 8000ac9c <memcpy>
80003cb0:	fc442583          	lw	a1,-60(s0)
80003cb4:	c9042c03          	lw	s8,-880(s0)
80003cb8:	000c0513          	mv	a0,s8
80003cbc:	0185e463          	bltu	a1,s8,80003cc4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x9d8>
80003cc0:	00058513          	mv	a0,a1
80003cc4:	02800593          	li	a1,40
80003cc8:	42a5e263          	bltu	a1,a0,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
80003ccc:	06050463          	beqz	a0,80003d34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xa48>
80003cd0:	00000793          	li	a5,0
80003cd4:	00251593          	slli	a1,a0,0x2
80003cd8:	bf040613          	addi	a2,s0,-1040
80003cdc:	00b606b3          	add	a3,a2,a1
80003ce0:	f2440713          	addi	a4,s0,-220
80003ce4:	00072803          	lw	a6,0(a4)
80003ce8:	00062883          	lw	a7,0(a2)
80003cec:	0017f793          	andi	a5,a5,1
80003cf0:	00460613          	addi	a2,a2,4
80003cf4:	011808b3          	add	a7,a6,a7
80003cf8:	0108b833          	sltu	a6,a7,a6
80003cfc:	00f887b3          	add	a5,a7,a5
80003d00:	0117b8b3          	sltu	a7,a5,a7
80003d04:	00f72023          	sw	a5,0(a4)
80003d08:	011867b3          	or	a5,a6,a7
80003d0c:	00470713          	addi	a4,a4,4
80003d10:	fcd61ae3          	bne	a2,a3,80003ce4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x9f8>
80003d14:	02078063          	beqz	a5,80003d34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xa48>
80003d18:	02800613          	li	a2,40
80003d1c:	4ec50863          	beq	a0,a2,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
80003d20:	f2440613          	addi	a2,s0,-220
80003d24:	00b605b3          	add	a1,a2,a1
80003d28:	00100613          	li	a2,1
80003d2c:	00c5a023          	sw	a2,0(a1)
80003d30:	00150513          	addi	a0,a0,1
80003d34:	fca42223          	sw	a0,-60(s0)
80003d38:	00abe463          	bltu	s7,a0,80003d40 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xa54>
80003d3c:	000b8513          	mv	a0,s7
80003d40:	3a957663          	bgeu	a0,s1,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
80003d44:	00251613          	slli	a2,a0,0x2
80003d48:	40c00533          	neg	a0,a2
80003d4c:	f2040593          	addi	a1,s0,-224
80003d50:	00c585b3          	add	a1,a1,a2
80003d54:	c9040693          	addi	a3,s0,-880
80003d58:	00c68633          	add	a2,a3,a2
80003d5c:	02050863          	beqz	a0,80003d8c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xaa0>
80003d60:	00062683          	lw	a3,0(a2)
80003d64:	0005a703          	lw	a4,0(a1)
80003d68:	00450513          	addi	a0,a0,4
80003d6c:	ffc58593          	addi	a1,a1,-4
80003d70:	ffc60613          	addi	a2,a2,-4
80003d74:	fee684e3          	beq	a3,a4,80003d5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xa70>
80003d78:	00e6b533          	sltu	a0,a3,a4
80003d7c:	00d735b3          	sltu	a1,a4,a3
80003d80:	40a58533          	sub	a0,a1,a0
80003d84:	013dda63          	bge	s11,s3,80003d98 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xaac>
80003d88:	1cc0006f          	j	80003f54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc68>
80003d8c:	00153513          	seqz	a0,a0
80003d90:	fff50513          	addi	a0,a0,-1
80003d94:	1d3dc063          	blt	s11,s3,80003f54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc68>
80003d98:	1b354e63          	blt	a0,s3,80003f54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc68>
80003d9c:	060a8663          	beqz	s5,80003e08 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xb1c>
80003da0:	00000b13          	li	s6,0
80003da4:	002a9d93          	slli	s11,s5,0x2
80003da8:	aa840a13          	addi	s4,s0,-1368
80003dac:	01ba0a33          	add	s4,s4,s11
80003db0:	aa840993          	addi	s3,s0,-1368
80003db4:	0009a503          	lw	a0,0(s3)
80003db8:	00498913          	addi	s2,s3,4
80003dbc:	00a00613          	li	a2,10
80003dc0:	00000593          	li	a1,0
80003dc4:	00000693          	li	a3,0
80003dc8:	00006097          	auipc	ra,0x6
80003dcc:	448080e7          	jalr	1096(ra) # 8000a210 <__muldi3>
80003dd0:	01650633          	add	a2,a0,s6
80003dd4:	ffcd8d93          	addi	s11,s11,-4
80003dd8:	00a63b33          	sltu	s6,a2,a0
80003ddc:	01658b33          	add	s6,a1,s6
80003de0:	00c9a023          	sw	a2,0(s3)
80003de4:	00090993          	mv	s3,s2
80003de8:	fc0d96e3          	bnez	s11,80003db4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xac8>
80003dec:	080b0e63          	beqz	s6,80003e88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xb9c>
80003df0:	aa442983          	lw	s3,-1372(s0)
80003df4:	02800513          	li	a0,40
80003df8:	aa440913          	addi	s2,s0,-1372
80003dfc:	40aa8863          	beq	s5,a0,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
80003e00:	016a2023          	sw	s6,0(s4)
80003e04:	001a8a93          	addi	s5,s5,1
80003e08:	b5542423          	sw	s5,-1208(s0)
80003e0c:	080d0663          	beqz	s10,80003e98 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xbac>
80003e10:	00000b13          	li	s6,0
80003e14:	002d1d93          	slli	s11,s10,0x2
80003e18:	b4c40a13          	addi	s4,s0,-1204
80003e1c:	01ba0a33          	add	s4,s4,s11
80003e20:	b4c40993          	addi	s3,s0,-1204
80003e24:	0009a503          	lw	a0,0(s3)
80003e28:	00498913          	addi	s2,s3,4
80003e2c:	00a00613          	li	a2,10
80003e30:	00000593          	li	a1,0
80003e34:	00000693          	li	a3,0
80003e38:	00006097          	auipc	ra,0x6
80003e3c:	3d8080e7          	jalr	984(ra) # 8000a210 <__muldi3>
80003e40:	01650633          	add	a2,a0,s6
80003e44:	ffcd8d93          	addi	s11,s11,-4
80003e48:	00a63b33          	sltu	s6,a2,a0
80003e4c:	01658b33          	add	s6,a1,s6
80003e50:	00c9a023          	sw	a2,0(s3)
80003e54:	00090993          	mv	s3,s2
80003e58:	fc0d96e3          	bnez	s11,80003e24 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xb38>
80003e5c:	a9442d83          	lw	s11,-1388(s0)
80003e60:	040b0463          	beqz	s6,80003ea8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xbbc>
80003e64:	aa442983          	lw	s3,-1372(s0)
80003e68:	02800513          	li	a0,40
80003e6c:	aa440913          	addi	s2,s0,-1372
80003e70:	38ad0e63          	beq	s10,a0,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
80003e74:	016a2023          	sw	s6,0(s4)
80003e78:	001d0d13          	addi	s10,s10,1
80003e7c:	bfa42623          	sw	s10,-1044(s0)
80003e80:	020c1c63          	bnez	s8,80003eb8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xbcc>
80003e84:	09c0006f          	j	80003f20 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc34>
80003e88:	aa442983          	lw	s3,-1372(s0)
80003e8c:	aa440913          	addi	s2,s0,-1372
80003e90:	b5542423          	sw	s5,-1208(s0)
80003e94:	f60d1ee3          	bnez	s10,80003e10 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xb24>
80003e98:	a9442d83          	lw	s11,-1388(s0)
80003e9c:	bfa42623          	sw	s10,-1044(s0)
80003ea0:	000c1c63          	bnez	s8,80003eb8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xbcc>
80003ea4:	07c0006f          	j	80003f20 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc34>
80003ea8:	aa442983          	lw	s3,-1372(s0)
80003eac:	aa440913          	addi	s2,s0,-1372
80003eb0:	bfa42623          	sw	s10,-1044(s0)
80003eb4:	060c0663          	beqz	s8,80003f20 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc34>
80003eb8:	00000b13          	li	s6,0
80003ebc:	002c1d13          	slli	s10,s8,0x2
80003ec0:	bf040a13          	addi	s4,s0,-1040
80003ec4:	01aa0a33          	add	s4,s4,s10
80003ec8:	bf040993          	addi	s3,s0,-1040
80003ecc:	0009a503          	lw	a0,0(s3)
80003ed0:	00498913          	addi	s2,s3,4
80003ed4:	00a00613          	li	a2,10
80003ed8:	00000593          	li	a1,0
80003edc:	00000693          	li	a3,0
80003ee0:	00006097          	auipc	ra,0x6
80003ee4:	330080e7          	jalr	816(ra) # 8000a210 <__muldi3>
80003ee8:	01650633          	add	a2,a0,s6
80003eec:	ffcd0d13          	addi	s10,s10,-4
80003ef0:	00a63b33          	sltu	s6,a2,a0
80003ef4:	01658b33          	add	s6,a1,s6
80003ef8:	00c9a023          	sw	a2,0(s3)
80003efc:	00090993          	mv	s3,s2
80003f00:	fc0d16e3          	bnez	s10,80003ecc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xbe0>
80003f04:	020b0a63          	beqz	s6,80003f38 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc4c>
80003f08:	aa442983          	lw	s3,-1372(s0)
80003f0c:	02800513          	li	a0,40
80003f10:	aa440913          	addi	s2,s0,-1372
80003f14:	2eac0c63          	beq	s8,a0,8000420c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf20>
80003f18:	016a2023          	sw	s6,0(s4)
80003f1c:	001c0c13          	addi	s8,s8,1
80003f20:	c9842823          	sw	s8,-880(s0)
80003f24:	a9042583          	lw	a1,-1392(s0)
80003f28:	00058513          	mv	a0,a1
80003f2c:	a4bae2e3          	bltu	s5,a1,80003970 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x684>
80003f30:	000a8513          	mv	a0,s5
80003f34:	a3dff06f          	j	80003970 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x684>
80003f38:	aa442983          	lw	s3,-1372(s0)
80003f3c:	aa440913          	addi	s2,s0,-1372
80003f40:	c9842823          	sw	s8,-880(s0)
80003f44:	a9042583          	lw	a1,-1392(s0)
80003f48:	00058513          	mv	a0,a1
80003f4c:	febaf2e3          	bgeu	s5,a1,80003f30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc44>
80003f50:	a21ff06f          	j	80003970 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0x684>
80003f54:	0d355e63          	bge	a0,s3,80004030 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd44>
80003f58:	a9842903          	lw	s2,-1384(s0)
80003f5c:	a8c42a83          	lw	s5,-1396(s0)
80003f60:	073dd463          	bge	s11,s3,80003fc8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xcdc>
80003f64:	aa840513          	addi	a0,s0,-1368
80003f68:	00100593          	li	a1,1
80003f6c:	00005097          	auipc	ra,0x5
80003f70:	274080e7          	jalr	628(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
80003f74:	b4842583          	lw	a1,-1208(s0)
80003f78:	d3442503          	lw	a0,-716(s0)
80003f7c:	00a5e463          	bltu	a1,a0,80003f84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xc98>
80003f80:	00058513          	mv	a0,a1
80003f84:	02900593          	li	a1,41
80003f88:	16b57263          	bgeu	a0,a1,800040ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xe00>
80003f8c:	00251593          	slli	a1,a0,0x2
80003f90:	c9440613          	addi	a2,s0,-876
80003f94:	aa840693          	addi	a3,s0,-1368
80003f98:	40b00533          	neg	a0,a1
80003f9c:	ffc58713          	addi	a4,a1,-4
80003fa0:	00e605b3          	add	a1,a2,a4
80003fa4:	00e68633          	add	a2,a3,a4
80003fa8:	12050063          	beqz	a0,800040c8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xddc>
80003fac:	00062683          	lw	a3,0(a2)
80003fb0:	0005a703          	lw	a4,0(a1)
80003fb4:	00450513          	addi	a0,a0,4
80003fb8:	ffc58593          	addi	a1,a1,-4
80003fbc:	ffc60613          	addi	a2,a2,-4
80003fc0:	fee684e3          	beq	a3,a4,80003fa8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xcbc>
80003fc4:	10e6e463          	bltu	a3,a4,800040cc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xde0>
80003fc8:	00000513          	li	a0,0
80003fcc:	a9442983          	lw	s3,-1388(s0)
80003fd0:	019984b3          	add	s1,s3,s9
80003fd4:	fff00593          	li	a1,-1
80003fd8:	03900613          	li	a2,57
80003fdc:	00ab06b3          	add	a3,s6,a0
80003fe0:	06b68263          	beq	a3,a1,80004044 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd58>
80003fe4:	00aa06b3          	add	a3,s4,a0
80003fe8:	0006c683          	lbu	a3,0(a3)
80003fec:	fff50513          	addi	a0,a0,-1
80003ff0:	fec686e3          	beq	a3,a2,80003fdc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xcf0>
80003ff4:	00ab05b3          	add	a1,s6,a0
80003ff8:	01358633          	add	a2,a1,s3
80003ffc:	00164683          	lbu	a3,1(a2)
80004000:	00168693          	addi	a3,a3,1
80004004:	00258593          	addi	a1,a1,2
80004008:	00d600a3          	sb	a3,1(a2)
8000400c:	06bb6663          	bltu	s6,a1,80004078 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd8c>
80004010:	fff54613          	not	a2,a0
80004014:	00aa0533          	add	a0,s4,a0
80004018:	00250513          	addi	a0,a0,2
8000401c:	03000593          	li	a1,48
80004020:	00007097          	auipc	ra,0x7
80004024:	3c4080e7          	jalr	964(ra) # 8000b3e4 <memset>
80004028:	05997a63          	bgeu	s2,s9,8000407c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd90>
8000402c:	0a80006f          	j	800040d4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xde8>
80004030:	a9842903          	lw	s2,-1384(s0)
80004034:	a9442983          	lw	s3,-1388(s0)
80004038:	a8c42a83          	lw	s5,-1396(s0)
8000403c:	05997063          	bgeu	s2,s9,8000407c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd90>
80004040:	0940006f          	j	800040d4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xde8>
80004044:	03100513          	li	a0,49
80004048:	00a98023          	sb	a0,0(s3)
8000404c:	000b0c63          	beqz	s6,80004064 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd78>
80004050:	00198513          	addi	a0,s3,1
80004054:	03000593          	li	a1,48
80004058:	000b0613          	mv	a2,s6
8000405c:	00007097          	auipc	ra,0x7
80004060:	388080e7          	jalr	904(ra) # 8000b3e4 <memset>
80004064:	1d2cfc63          	bgeu	s9,s2,8000423c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xf50>
80004068:	03000513          	li	a0,48
8000406c:	002b0c93          	addi	s9,s6,2
80004070:	00a48023          	sb	a0,0(s1)
80004074:	001a8a93          	addi	s5,s5,1
80004078:	05996e63          	bltu	s2,s9,800040d4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xde8>
8000407c:	a8842503          	lw	a0,-1400(s0)
80004080:	01352023          	sw	s3,0(a0)
80004084:	01952223          	sw	s9,4(a0)
80004088:	01551423          	sh	s5,8(a0)
8000408c:	57c12083          	lw	ra,1404(sp)
80004090:	57812403          	lw	s0,1400(sp)
80004094:	57412483          	lw	s1,1396(sp)
80004098:	57012903          	lw	s2,1392(sp)
8000409c:	56c12983          	lw	s3,1388(sp)
800040a0:	56812a03          	lw	s4,1384(sp)
800040a4:	56412a83          	lw	s5,1380(sp)
800040a8:	56012b03          	lw	s6,1376(sp)
800040ac:	55c12b83          	lw	s7,1372(sp)
800040b0:	55812c03          	lw	s8,1368(sp)
800040b4:	55412c83          	lw	s9,1364(sp)
800040b8:	55012d03          	lw	s10,1360(sp)
800040bc:	54c12d83          	lw	s11,1356(sp)
800040c0:	58010113          	addi	sp,sp,1408
800040c4:	00008067          	ret
800040c8:	f00500e3          	beqz	a0,80003fc8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xcdc>
800040cc:	a9442983          	lw	s3,-1388(s0)
800040d0:	fb9976e3          	bgeu	s2,s9,8000407c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E+0xd90>
800040d4:	8000d637          	lui	a2,0x8000d
800040d8:	98860613          	addi	a2,a2,-1656 # 8000c988 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.37>
800040dc:	000c8513          	mv	a0,s9
800040e0:	00090593          	mv	a1,s2
800040e4:	00005097          	auipc	ra,0x5
800040e8:	e60080e7          	jalr	-416(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
800040ec:	8000d637          	lui	a2,0x8000d
800040f0:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800040f4:	02800593          	li	a1,40
800040f8:	00005097          	auipc	ra,0x5
800040fc:	e4c080e7          	jalr	-436(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004100:	8000d537          	lui	a0,0x8000d
80004104:	54c50513          	addi	a0,a0,1356 # 8000d54c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.421>
80004108:	8000d637          	lui	a2,0x8000d
8000410c:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004110:	01a00593          	li	a1,26
80004114:	00003097          	auipc	ra,0x3
80004118:	f28080e7          	jalr	-216(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
8000411c:	8000d637          	lui	a2,0x8000d
80004120:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004124:	02800593          	li	a1,40
80004128:	000a8513          	mv	a0,s5
8000412c:	00005097          	auipc	ra,0x5
80004130:	e18080e7          	jalr	-488(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004134:	8000d637          	lui	a2,0x8000d
80004138:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
8000413c:	02800593          	li	a1,40
80004140:	00068513          	mv	a0,a3
80004144:	00005097          	auipc	ra,0x5
80004148:	e00080e7          	jalr	-512(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
8000414c:	8000d537          	lui	a0,0x8000d
80004150:	89f50513          	addi	a0,a0,-1889 # 8000c89f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.27>
80004154:	8000d637          	lui	a2,0x8000d
80004158:	8bc60613          	addi	a2,a2,-1860 # 8000c8bc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.28>
8000415c:	01c00593          	li	a1,28
80004160:	00003097          	auipc	ra,0x3
80004164:	edc080e7          	jalr	-292(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004168:	8000d537          	lui	a0,0x8000d
8000416c:	8cc50513          	addi	a0,a0,-1844 # 8000c8cc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.29>
80004170:	8000d637          	lui	a2,0x8000d
80004174:	8ec60613          	addi	a2,a2,-1812 # 8000c8ec <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.30>
80004178:	01d00593          	li	a1,29
8000417c:	00003097          	auipc	ra,0x3
80004180:	ec0080e7          	jalr	-320(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004184:	8000d537          	lui	a0,0x8000d
80004188:	8fc50513          	addi	a0,a0,-1796 # 8000c8fc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.31>
8000418c:	8000d637          	lui	a2,0x8000d
80004190:	91860613          	addi	a2,a2,-1768 # 8000c918 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.32>
80004194:	01c00593          	li	a1,28
80004198:	00003097          	auipc	ra,0x3
8000419c:	ea4080e7          	jalr	-348(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
800041a0:	8000d537          	lui	a0,0x8000d
800041a4:	9e050513          	addi	a0,a0,-1568 # 8000c9e0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.40>
800041a8:	8000d637          	lui	a2,0x8000d
800041ac:	a1860613          	addi	a2,a2,-1512 # 8000ca18 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.41>
800041b0:	03600593          	li	a1,54
800041b4:	00003097          	auipc	ra,0x3
800041b8:	e88080e7          	jalr	-376(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
800041bc:	8000d537          	lui	a0,0x8000d
800041c0:	99850513          	addi	a0,a0,-1640 # 8000c998 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.38>
800041c4:	8000d637          	lui	a2,0x8000d
800041c8:	9d060613          	addi	a2,a2,-1584 # 8000c9d0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.39>
800041cc:	03700593          	li	a1,55
800041d0:	00003097          	auipc	ra,0x3
800041d4:	e6c080e7          	jalr	-404(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
800041d8:	8000d537          	lui	a0,0x8000d
800041dc:	92850513          	addi	a0,a0,-1752 # 8000c928 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.33>
800041e0:	8000d637          	lui	a2,0x8000d
800041e4:	95860613          	addi	a2,a2,-1704 # 8000c958 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.34>
800041e8:	02d00593          	li	a1,45
800041ec:	00003097          	auipc	ra,0x3
800041f0:	e50080e7          	jalr	-432(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
800041f4:	8000d637          	lui	a2,0x8000d
800041f8:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
800041fc:	02800593          	li	a1,40
80004200:	000a0513          	mv	a0,s4
80004204:	00005097          	auipc	ra,0x5
80004208:	d40080e7          	jalr	-704(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
8000420c:	8000d637          	lui	a2,0x8000d
80004210:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004214:	02800513          	li	a0,40
80004218:	02800593          	li	a1,40
8000421c:	00003097          	auipc	ra,0x3
80004220:	e68080e7          	jalr	-408(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80004224:	8000d637          	lui	a2,0x8000d
80004228:	96860613          	addi	a2,a2,-1688 # 8000c968 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.35>
8000422c:	000c0513          	mv	a0,s8
80004230:	000c0593          	mv	a1,s8
80004234:	00003097          	auipc	ra,0x3
80004238:	e50080e7          	jalr	-432(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000423c:	8000d637          	lui	a2,0x8000d
80004240:	97860613          	addi	a2,a2,-1672 # 8000c978 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.36>
80004244:	000c8513          	mv	a0,s9
80004248:	00090593          	mv	a1,s2
8000424c:	00003097          	auipc	ra,0x3
80004250:	e38080e7          	jalr	-456(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

80004254 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E>:
80004254:	c7010113          	addi	sp,sp,-912
80004258:	38112623          	sw	ra,908(sp)
8000425c:	38812423          	sw	s0,904(sp)
80004260:	38912223          	sw	s1,900(sp)
80004264:	39212023          	sw	s2,896(sp)
80004268:	37312e23          	sw	s3,892(sp)
8000426c:	37412c23          	sw	s4,888(sp)
80004270:	37512a23          	sw	s5,884(sp)
80004274:	37612823          	sw	s6,880(sp)
80004278:	37712623          	sw	s7,876(sp)
8000427c:	37812423          	sw	s8,872(sp)
80004280:	37912223          	sw	s9,868(sp)
80004284:	37a12023          	sw	s10,864(sp)
80004288:	35b12e23          	sw	s11,860(sp)
8000428c:	39010413          	addi	s0,sp,912
80004290:	00060993          	mv	s3,a2
80004294:	0005aa03          	lw	s4,0(a1)
80004298:	0045ab03          	lw	s6,4(a1)
8000429c:	016a6633          	or	a2,s4,s6
800042a0:	44060ae3          	beqz	a2,80004ef4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xca0>
800042a4:	00068913          	mv	s2,a3
800042a8:	0085a803          	lw	a6,8(a1)
800042ac:	00c5a603          	lw	a2,12(a1)
800042b0:	00c866b3          	or	a3,a6,a2
800042b4:	44068ee3          	beqz	a3,80004f10 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xcbc>
800042b8:	00070b93          	mv	s7,a4
800042bc:	0105a683          	lw	a3,16(a1)
800042c0:	0145a703          	lw	a4,20(a1)
800042c4:	00e6e7b3          	or	a5,a3,a4
800042c8:	460782e3          	beqz	a5,80004f2c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xcd8>
800042cc:	00da06b3          	add	a3,s4,a3
800042d0:	0146b6b3          	sltu	a3,a3,s4
800042d4:	00eb0733          	add	a4,s6,a4
800042d8:	00d70733          	add	a4,a4,a3
800042dc:	01670463          	beq	a4,s6,800042e4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x90>
800042e0:	016736b3          	sltu	a3,a4,s6
800042e4:	460692e3          	bnez	a3,80004f48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xcf4>
800042e8:	00cb0663          	beq	s6,a2,800042f4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa0>
800042ec:	00cb3633          	sltu	a2,s6,a2
800042f0:	0080006f          	j	800042f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa4>
800042f4:	010a3633          	sltu	a2,s4,a6
800042f8:	460616e3          	bnez	a2,80004f64 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd10>
800042fc:	c8a42623          	sw	a0,-884(s0)
80004300:	01859a83          	lh	s5,24(a1)
80004304:	001a3513          	seqz	a0,s4
80004308:	555555b7          	lui	a1,0x55555
8000430c:	33333737          	lui	a4,0x33333
80004310:	40ab06b3          	sub	a3,s6,a0
80004314:	55558613          	addi	a2,a1,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
80004318:	33370593          	addi	a1,a4,819 # 33333333 <.Lline_table_start2+0x33331af9>
8000431c:	0f0f1537          	lui	a0,0xf0f1
80004320:	f0f50513          	addi	a0,a0,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
80004324:	06069c63          	bnez	a3,8000439c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x148>
80004328:	fffa0693          	addi	a3,s4,-1
8000432c:	0016d713          	srli	a4,a3,0x1
80004330:	00e6e6b3          	or	a3,a3,a4
80004334:	0026d713          	srli	a4,a3,0x2
80004338:	00e6e6b3          	or	a3,a3,a4
8000433c:	0046d713          	srli	a4,a3,0x4
80004340:	00e6e6b3          	or	a3,a3,a4
80004344:	0086d713          	srli	a4,a3,0x8
80004348:	00e6e6b3          	or	a3,a3,a4
8000434c:	0106d713          	srli	a4,a3,0x10
80004350:	00e6e6b3          	or	a3,a3,a4
80004354:	fff6c693          	not	a3,a3
80004358:	0016d713          	srli	a4,a3,0x1
8000435c:	00c77633          	and	a2,a4,a2
80004360:	40c686b3          	sub	a3,a3,a2
80004364:	00b6f633          	and	a2,a3,a1
80004368:	0026d693          	srli	a3,a3,0x2
8000436c:	00b6f5b3          	and	a1,a3,a1
80004370:	00b605b3          	add	a1,a2,a1
80004374:	0045d613          	srli	a2,a1,0x4
80004378:	00c585b3          	add	a1,a1,a2
8000437c:	00a5f533          	and	a0,a1,a0
80004380:	00851593          	slli	a1,a0,0x8
80004384:	00b50533          	add	a0,a0,a1
80004388:	01051593          	slli	a1,a0,0x10
8000438c:	00b50533          	add	a0,a0,a1
80004390:	01855513          	srli	a0,a0,0x18
80004394:	02050593          	addi	a1,a0,32
80004398:	06c0006f          	j	80004404 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x1b0>
8000439c:	0016d713          	srli	a4,a3,0x1
800043a0:	00e6e6b3          	or	a3,a3,a4
800043a4:	0026d713          	srli	a4,a3,0x2
800043a8:	00e6e6b3          	or	a3,a3,a4
800043ac:	0046d713          	srli	a4,a3,0x4
800043b0:	00e6e6b3          	or	a3,a3,a4
800043b4:	0086d713          	srli	a4,a3,0x8
800043b8:	00e6e6b3          	or	a3,a3,a4
800043bc:	0106d713          	srli	a4,a3,0x10
800043c0:	00e6e6b3          	or	a3,a3,a4
800043c4:	fff6c693          	not	a3,a3
800043c8:	0016d713          	srli	a4,a3,0x1
800043cc:	00c77633          	and	a2,a4,a2
800043d0:	40c686b3          	sub	a3,a3,a2
800043d4:	00b6f633          	and	a2,a3,a1
800043d8:	0026d693          	srli	a3,a3,0x2
800043dc:	00b6f5b3          	and	a1,a3,a1
800043e0:	00b605b3          	add	a1,a2,a1
800043e4:	0045d613          	srli	a2,a1,0x4
800043e8:	00c585b3          	add	a1,a1,a2
800043ec:	00a5f533          	and	a0,a1,a0
800043f0:	00851593          	slli	a1,a0,0x8
800043f4:	00b50533          	add	a0,a0,a1
800043f8:	01051593          	slli	a1,a0,0x10
800043fc:	00b50533          	add	a0,a0,a1
80004400:	01855593          	srli	a1,a0,0x18
80004404:	41fad613          	srai	a2,s5,0x1f
80004408:	40ba8533          	sub	a0,s5,a1
8000440c:	00bab5b3          	sltu	a1,s5,a1
80004410:	40b605b3          	sub	a1,a2,a1
80004414:	4d105637          	lui	a2,0x4d105
80004418:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103508>
8000441c:	00000693          	li	a3,0
80004420:	00006097          	auipc	ra,0x6
80004424:	df0080e7          	jalr	-528(ra) # 8000a210 <__muldi3>
80004428:	001b3613          	seqz	a2,s6
8000442c:	00200693          	li	a3,2
80004430:	40c686b3          	sub	a3,a3,a2
80004434:	fff60613          	addi	a2,a2,-1
80004438:	01667633          	and	a2,a2,s6
8000443c:	44135737          	lui	a4,0x44135
80004440:	08070713          	addi	a4,a4,128 # 44135080 <.Lline_table_start2+0x44133846>
80004444:	00e50733          	add	a4,a0,a4
80004448:	d2d42c23          	sw	a3,-712(s0)
8000444c:	00a73533          	sltu	a0,a4,a0
80004450:	c9442c23          	sw	s4,-872(s0)
80004454:	c8c42e23          	sw	a2,-868(s0)
80004458:	00a58533          	add	a0,a1,a0
8000445c:	01350493          	addi	s1,a0,19
80004460:	01049513          	slli	a0,s1,0x10
80004464:	41055c93          	srai	s9,a0,0x10
80004468:	ca040513          	addi	a0,s0,-864
8000446c:	09800613          	li	a2,152
80004470:	00000593          	li	a1,0
80004474:	00007097          	auipc	ra,0x7
80004478:	f70080e7          	jalr	-144(ra) # 8000b3e4 <memset>
8000447c:	d4040513          	addi	a0,s0,-704
80004480:	09c00613          	li	a2,156
80004484:	00000593          	li	a1,0
80004488:	00007097          	auipc	ra,0x7
8000448c:	f5c080e7          	jalr	-164(ra) # 8000b3e4 <memset>
80004490:	00100513          	li	a0,1
80004494:	dca42e23          	sw	a0,-548(s0)
80004498:	d2a42e23          	sw	a0,-708(s0)
8000449c:	020ac663          	bltz	s5,800044c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x274>
800044a0:	c9840513          	addi	a0,s0,-872
800044a4:	000a8593          	mv	a1,s5
800044a8:	00005097          	auipc	ra,0x5
800044ac:	d38080e7          	jalr	-712(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800044b0:	c9742823          	sw	s7,-880(s0)
800044b4:	020cca63          	bltz	s9,800044e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x294>
800044b8:	01149593          	slli	a1,s1,0x11
800044bc:	0115d593          	srli	a1,a1,0x11
800044c0:	d3c40513          	addi	a0,s0,-708
800044c4:	0340006f          	j	800044f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x2a4>
800044c8:	41500533          	neg	a0,s5
800044cc:	01051513          	slli	a0,a0,0x10
800044d0:	41055593          	srai	a1,a0,0x10
800044d4:	d3c40513          	addi	a0,s0,-708
800044d8:	00005097          	auipc	ra,0x5
800044dc:	d08080e7          	jalr	-760(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
800044e0:	c9742823          	sw	s7,-880(s0)
800044e4:	fc0cdae3          	bgez	s9,800044b8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x264>
800044e8:	41900533          	neg	a0,s9
800044ec:	01051513          	slli	a0,a0,0x10
800044f0:	01055593          	srli	a1,a0,0x10
800044f4:	c9840513          	addi	a0,s0,-872
800044f8:	ffffe097          	auipc	ra,0xffffe
800044fc:	f34080e7          	jalr	-204(ra) # 8000242c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017h089db0c7afe2a35eE>
80004500:	f2840513          	addi	a0,s0,-216
80004504:	d3c40593          	addi	a1,s0,-708
80004508:	0a400613          	li	a2,164
8000450c:	00006097          	auipc	ra,0x6
80004510:	790080e7          	jalr	1936(ra) # 8000ac9c <memcpy>
80004514:	00a00513          	li	a0,10
80004518:	00090c13          	mv	s8,s2
8000451c:	c9242a23          	sw	s2,-876(s0)
80004520:	08a96463          	bltu	s2,a0,800045a8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x354>
80004524:	f2440a13          	addi	s4,s0,-220
80004528:	02900d13          	li	s10,41
8000452c:	00900d93          	li	s11,9
80004530:	3b9ad537          	lui	a0,0x3b9ad
80004534:	a0050a93          	addi	s5,a0,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab1c6>
80004538:	c9442c03          	lw	s8,-876(s0)
8000453c:	00c0006f          	j	80004548 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x2f4>
80004540:	ff7c0c13          	addi	s8,s8,-9
80004544:	078df263          	bgeu	s11,s8,800045a8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x354>
80004548:	fc842503          	lw	a0,-56(s0)
8000454c:	15a576e3          	bgeu	a0,s10,80004e98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc44>
80004550:	fe0508e3          	beqz	a0,80004540 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x2ec>
80004554:	00000593          	li	a1,0
80004558:	00251513          	slli	a0,a0,0x2
8000455c:	40a004b3          	neg	s1,a0
80004560:	00aa0933          	add	s2,s4,a0
80004564:	00092b03          	lw	s6,0(s2)
80004568:	000b0513          	mv	a0,s6
8000456c:	000a8613          	mv	a2,s5
80004570:	00000693          	li	a3,0
80004574:	00007097          	auipc	ra,0x7
80004578:	96c080e7          	jalr	-1684(ra) # 8000aee0 <__udivdi3>
8000457c:	00050b93          	mv	s7,a0
80004580:	000a8613          	mv	a2,s5
80004584:	00000693          	li	a3,0
80004588:	00006097          	auipc	ra,0x6
8000458c:	c88080e7          	jalr	-888(ra) # 8000a210 <__muldi3>
80004590:	40ab05b3          	sub	a1,s6,a0
80004594:	01792023          	sw	s7,0(s2)
80004598:	00448493          	addi	s1,s1,4
8000459c:	ffc90913          	addi	s2,s2,-4
800045a0:	fc0492e3          	bnez	s1,80004564 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x310>
800045a4:	f9dff06f          	j	80004540 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x2ec>
800045a8:	002c1c13          	slli	s8,s8,0x2
800045ac:	8000d537          	lui	a0,0x8000d
800045b0:	16050513          	addi	a0,a0,352 # 8000d160 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.70>
800045b4:	01850533          	add	a0,a0,s8
800045b8:	00052a83          	lw	s5,0(a0)
800045bc:	001a9a93          	slli	s5,s5,0x1
800045c0:	1c0a80e3          	beqz	s5,80004f80 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd2c>
800045c4:	fc842503          	lw	a0,-56(s0)
800045c8:	02900593          	li	a1,41
800045cc:	0cb576e3          	bgeu	a0,a1,80004e98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc44>
800045d0:	00000593          	li	a1,0
800045d4:	2a050663          	beqz	a0,80004880 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x62c>
800045d8:	00251513          	slli	a0,a0,0x2
800045dc:	f2840613          	addi	a2,s0,-216
800045e0:	00c50633          	add	a2,a0,a2
800045e4:	40a004b3          	neg	s1,a0
800045e8:	ffc60913          	addi	s2,a2,-4
800045ec:	c9442d03          	lw	s10,-876(s0)
800045f0:	c9042d83          	lw	s11,-880(s0)
800045f4:	00092b03          	lw	s6,0(s2)
800045f8:	000b0513          	mv	a0,s6
800045fc:	000a8613          	mv	a2,s5
80004600:	00000693          	li	a3,0
80004604:	00007097          	auipc	ra,0x7
80004608:	8dc080e7          	jalr	-1828(ra) # 8000aee0 <__udivdi3>
8000460c:	00050b93          	mv	s7,a0
80004610:	000a8613          	mv	a2,s5
80004614:	00000693          	li	a3,0
80004618:	00006097          	auipc	ra,0x6
8000461c:	bf8080e7          	jalr	-1032(ra) # 8000a210 <__muldi3>
80004620:	40ab05b3          	sub	a1,s6,a0
80004624:	01792023          	sw	s7,0(s2)
80004628:	00448493          	addi	s1,s1,4
8000462c:	ffc90913          	addi	s2,s2,-4
80004630:	fc0492e3          	bnez	s1,800045f4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x3a0>
80004634:	fc842583          	lw	a1,-56(s0)
80004638:	d3842b83          	lw	s7,-712(s0)
8000463c:	000b8513          	mv	a0,s7
80004640:	0175e463          	bltu	a1,s7,80004648 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x3f4>
80004644:	00058513          	mv	a0,a1
80004648:	02800593          	li	a1,40
8000464c:	04a5e6e3          	bltu	a1,a0,80004e98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc44>
80004650:	06050463          	beqz	a0,800046b8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x464>
80004654:	00000793          	li	a5,0
80004658:	00251593          	slli	a1,a0,0x2
8000465c:	c9840613          	addi	a2,s0,-872
80004660:	00b606b3          	add	a3,a2,a1
80004664:	f2840713          	addi	a4,s0,-216
80004668:	00072803          	lw	a6,0(a4)
8000466c:	00062883          	lw	a7,0(a2)
80004670:	0017f793          	andi	a5,a5,1
80004674:	00460613          	addi	a2,a2,4
80004678:	011808b3          	add	a7,a6,a7
8000467c:	0108b833          	sltu	a6,a7,a6
80004680:	00f887b3          	add	a5,a7,a5
80004684:	0117b8b3          	sltu	a7,a5,a7
80004688:	00f72023          	sw	a5,0(a4)
8000468c:	011867b3          	or	a5,a6,a7
80004690:	00470713          	addi	a4,a4,4
80004694:	fcd61ae3          	bne	a2,a3,80004668 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x414>
80004698:	02078063          	beqz	a5,800046b8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x464>
8000469c:	02800613          	li	a2,40
800046a0:	16c500e3          	beq	a0,a2,80005000 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xdac>
800046a4:	f2840613          	addi	a2,s0,-216
800046a8:	00b605b3          	add	a1,a2,a1
800046ac:	00100613          	li	a2,1
800046b0:	00c5a023          	sw	a2,0(a1)
800046b4:	00150513          	addi	a0,a0,1
800046b8:	ddc42b03          	lw	s6,-548(s0)
800046bc:	fca42423          	sw	a0,-56(s0)
800046c0:	000b0693          	mv	a3,s6
800046c4:	01656463          	bltu	a0,s6,800046cc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x478>
800046c8:	00050693          	mv	a3,a0
800046cc:	02900513          	li	a0,41
800046d0:	7ea6fa63          	bgeu	a3,a0,80004ec4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc70>
800046d4:	00269693          	slli	a3,a3,0x2
800046d8:	d3c40593          	addi	a1,s0,-708
800046dc:	f2840613          	addi	a2,s0,-216
800046e0:	40d00533          	neg	a0,a3
800046e4:	ffc68693          	addi	a3,a3,-4
800046e8:	00d585b3          	add	a1,a1,a3
800046ec:	00d60633          	add	a2,a2,a3
800046f0:	04050463          	beqz	a0,80004738 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x4e4>
800046f4:	00062683          	lw	a3,0(a2)
800046f8:	0005a703          	lw	a4,0(a1)
800046fc:	00450513          	addi	a0,a0,4
80004700:	ffc58593          	addi	a1,a1,-4
80004704:	ffc60613          	addi	a2,a2,-4
80004708:	fee684e3          	beq	a3,a4,800046f0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x49c>
8000470c:	02e6e863          	bltu	a3,a4,8000473c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x4e8>
80004710:	001c8c93          	addi	s9,s9,1
80004714:	010c9513          	slli	a0,s9,0x10
80004718:	41055913          	srai	s2,a0,0x10
8000471c:	00100593          	li	a1,1
80004720:	09b94863          	blt	s2,s11,800047b0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x55c>
80004724:	41b90533          	sub	a0,s2,s11
80004728:	1fa56463          	bltu	a0,s10,80004910 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x6bc>
8000472c:	000d0a93          	mv	s5,s10
80004730:	1e0d1863          	bnez	s10,80004920 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x6cc>
80004734:	0800006f          	j	800047b4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x560>
80004738:	fc050ce3          	beqz	a0,80004710 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x4bc>
8000473c:	060b8063          	beqz	s7,8000479c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x548>
80004740:	00000a13          	li	s4,0
80004744:	002b9913          	slli	s2,s7,0x2
80004748:	c9840a93          	addi	s5,s0,-872
8000474c:	012a84b3          	add	s1,s5,s2
80004750:	000aa503          	lw	a0,0(s5)
80004754:	004a8c13          	addi	s8,s5,4
80004758:	00a00613          	li	a2,10
8000475c:	00000593          	li	a1,0
80004760:	00000693          	li	a3,0
80004764:	00006097          	auipc	ra,0x6
80004768:	aac080e7          	jalr	-1364(ra) # 8000a210 <__muldi3>
8000476c:	01450633          	add	a2,a0,s4
80004770:	ffc90913          	addi	s2,s2,-4
80004774:	00a63a33          	sltu	s4,a2,a0
80004778:	01458a33          	add	s4,a1,s4
8000477c:	00caa023          	sw	a2,0(s5)
80004780:	000c0a93          	mv	s5,s8
80004784:	fc0916e3          	bnez	s2,80004750 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x4fc>
80004788:	000a0a63          	beqz	s4,8000479c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x548>
8000478c:	02800513          	li	a0,40
80004790:	06ab88e3          	beq	s7,a0,80005000 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xdac>
80004794:	0144a023          	sw	s4,0(s1)
80004798:	001b8b93          	addi	s7,s7,1
8000479c:	d3742c23          	sw	s7,-712(s0)
800047a0:	010c9513          	slli	a0,s9,0x10
800047a4:	41055913          	srai	s2,a0,0x10
800047a8:	00100593          	li	a1,1
800047ac:	f7b95ce3          	bge	s2,s11,80004724 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x4d0>
800047b0:	00000a93          	li	s5,0
800047b4:	02900513          	li	a0,41
800047b8:	6eab7a63          	bgeu	s6,a0,80004eac <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc58>
800047bc:	040b0e63          	beqz	s6,80004818 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x5c4>
800047c0:	00000613          	li	a2,0
800047c4:	002b1693          	slli	a3,s6,0x2
800047c8:	d3c40713          	addi	a4,s0,-708
800047cc:	00d70533          	add	a0,a4,a3
800047d0:	00072783          	lw	a5,0(a4)
800047d4:	00279813          	slli	a6,a5,0x2
800047d8:	01e7d893          	srli	a7,a5,0x1e
800047dc:	00f807b3          	add	a5,a6,a5
800047e0:	0107b833          	sltu	a6,a5,a6
800047e4:	00c78633          	add	a2,a5,a2
800047e8:	00c72023          	sw	a2,0(a4)
800047ec:	00470713          	addi	a4,a4,4
800047f0:	01088833          	add	a6,a7,a6
800047f4:	00f63633          	sltu	a2,a2,a5
800047f8:	ffc68693          	addi	a3,a3,-4
800047fc:	00c80633          	add	a2,a6,a2
80004800:	fc0698e3          	bnez	a3,800047d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x57c>
80004804:	00060a63          	beqz	a2,80004818 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x5c4>
80004808:	02800693          	li	a3,40
8000480c:	7edb0a63          	beq	s6,a3,80005000 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xdac>
80004810:	00c52023          	sw	a2,0(a0)
80004814:	001b0b13          	addi	s6,s6,1
80004818:	dd642e23          	sw	s6,-548(s0)
8000481c:	016be463          	bltu	s7,s6,80004824 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x5d0>
80004820:	000b8b13          	mv	s6,s7
80004824:	02900513          	li	a0,41
80004828:	68ab7263          	bgeu	s6,a0,80004eac <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc58>
8000482c:	002b1b13          	slli	s6,s6,0x2
80004830:	d3c40613          	addi	a2,s0,-708
80004834:	c9840693          	addi	a3,s0,-872
80004838:	41600533          	neg	a0,s6
8000483c:	ffcb0b13          	addi	s6,s6,-4
80004840:	01660633          	add	a2,a2,s6
80004844:	016686b3          	add	a3,a3,s6
80004848:	04050863          	beqz	a0,80004898 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x644>
8000484c:	0006a703          	lw	a4,0(a3)
80004850:	00062783          	lw	a5,0(a2)
80004854:	00450513          	addi	a0,a0,4
80004858:	ffc60613          	addi	a2,a2,-4
8000485c:	ffc68693          	addi	a3,a3,-4
80004860:	fef704e3          	beq	a4,a5,80004848 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x5f4>
80004864:	00f73533          	sltu	a0,a4,a5
80004868:	00e7b633          	sltu	a2,a5,a4
8000486c:	40a60533          	sub	a0,a2,a0
80004870:	02051a63          	bnez	a0,800048a4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x650>
80004874:	56058863          	beqz	a1,80004de4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xb90>
80004878:	00000a93          	li	s5,0
8000487c:	5d00006f          	j	80004e4c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf8>
80004880:	c9442d03          	lw	s10,-876(s0)
80004884:	c9042d83          	lw	s11,-880(s0)
80004888:	d3842b83          	lw	s7,-712(s0)
8000488c:	000b8513          	mv	a0,s7
80004890:	db75fae3          	bgeu	a1,s7,80004644 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x3f0>
80004894:	db5ff06f          	j	80004648 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x3f4>
80004898:	00153513          	seqz	a0,a0
8000489c:	fff50513          	addi	a0,a0,-1
800048a0:	fc050ae3          	beqz	a0,80004874 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x620>
800048a4:	0ff57513          	zext.b	a0,a0
800048a8:	00100613          	li	a2,1
800048ac:	58c51e63          	bne	a0,a2,80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
800048b0:	735d6c63          	bltu	s10,s5,80004fe8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd94>
800048b4:	00000513          	li	a0,0
800048b8:	01598a33          	add	s4,s3,s5
800048bc:	fff00613          	li	a2,-1
800048c0:	03900713          	li	a4,57
800048c4:	00098693          	mv	a3,s3
800048c8:	50aa8463          	beq	s5,a0,80004dd0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xb7c>
800048cc:	015687b3          	add	a5,a3,s5
800048d0:	fff7c783          	lbu	a5,-1(a5)
800048d4:	00150513          	addi	a0,a0,1
800048d8:	00160613          	addi	a2,a2,1
800048dc:	fff68693          	addi	a3,a3,-1
800048e0:	fee784e3          	beq	a5,a4,800048c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x674>
800048e4:	01568533          	add	a0,a3,s5
800048e8:	00054583          	lbu	a1,0(a0)
800048ec:	00158593          	addi	a1,a1,1
800048f0:	40ca86b3          	sub	a3,s5,a2
800048f4:	00b50023          	sb	a1,0(a0)
800048f8:	5556f863          	bgeu	a3,s5,80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
800048fc:	00150513          	addi	a0,a0,1
80004900:	03000593          	li	a1,48
80004904:	00007097          	auipc	ra,0x7
80004908:	ae0080e7          	jalr	-1312(ra) # 8000b3e4 <memset>
8000490c:	53c0006f          	j	80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
80004910:	41bc8533          	sub	a0,s9,s11
80004914:	01051513          	slli	a0,a0,0x10
80004918:	41055a93          	srai	s5,a0,0x10
8000491c:	e80a8ce3          	beqz	s5,800047b4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x560>
80004920:	c7242e23          	sw	s2,-900(s0)
80004924:	de040513          	addi	a0,s0,-544
80004928:	d3c40593          	addi	a1,s0,-708
8000492c:	0a400613          	li	a2,164
80004930:	00006097          	auipc	ra,0x6
80004934:	36c080e7          	jalr	876(ra) # 8000ac9c <memcpy>
80004938:	de040513          	addi	a0,s0,-544
8000493c:	00100593          	li	a1,1
80004940:	00100a13          	li	s4,1
80004944:	00005097          	auipc	ra,0x5
80004948:	89c080e7          	jalr	-1892(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
8000494c:	e8440513          	addi	a0,s0,-380
80004950:	d3c40593          	addi	a1,s0,-708
80004954:	0a400613          	li	a2,164
80004958:	00006097          	auipc	ra,0x6
8000495c:	344080e7          	jalr	836(ra) # 8000ac9c <memcpy>
80004960:	e8440513          	addi	a0,s0,-380
80004964:	00200593          	li	a1,2
80004968:	00005097          	auipc	ra,0x5
8000496c:	878080e7          	jalr	-1928(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
80004970:	f2840513          	addi	a0,s0,-216
80004974:	d3c40593          	addi	a1,s0,-708
80004978:	0a400613          	li	a2,164
8000497c:	00006097          	auipc	ra,0x6
80004980:	320080e7          	jalr	800(ra) # 8000ac9c <memcpy>
80004984:	f2840513          	addi	a0,s0,-216
80004988:	00300593          	li	a1,3
8000498c:	00005097          	auipc	ra,0x5
80004990:	854080e7          	jalr	-1964(ra) # 800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>
80004994:	00000c13          	li	s8,0
80004998:	fc842303          	lw	t1,-56(s0)
8000499c:	f2442383          	lw	t2,-220(s0)
800049a0:	e8042e03          	lw	t3,-384(s0)
800049a4:	ddc42b03          	lw	s6,-548(s0)
800049a8:	d3842b83          	lw	s7,-712(s0)
800049ac:	f2440e93          	addi	t4,s0,-220
800049b0:	c9440f13          	addi	t5,s0,-876
800049b4:	e8040f93          	addi	t6,s0,-384
800049b8:	ddc40913          	addi	s2,s0,-548
800049bc:	d3840093          	addi	ra,s0,-712
800049c0:	02900293          	li	t0,41
800049c4:	505bfc63          	bgeu	s7,t0,80004edc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc88>
800049c8:	000a0493          	mv	s1,s4
800049cc:	002b9513          	slli	a0,s7,0x2
800049d0:	c9840593          	addi	a1,s0,-872
800049d4:	3c050e63          	beqz	a0,80004db0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xb5c>
800049d8:	0005a603          	lw	a2,0(a1)
800049dc:	00458593          	addi	a1,a1,4
800049e0:	ffc50513          	addi	a0,a0,-4
800049e4:	fe0608e3          	beqz	a2,800049d4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x780>
800049e8:	00030513          	mv	a0,t1
800049ec:	006be463          	bltu	s7,t1,800049f4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x7a0>
800049f0:	000b8513          	mv	a0,s7
800049f4:	4a557263          	bgeu	a0,t0,80004e98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc44>
800049f8:	00251613          	slli	a2,a0,0x2
800049fc:	40c005b3          	neg	a1,a2
80004a00:	00ce86b3          	add	a3,t4,a2
80004a04:	00cf0733          	add	a4,t5,a2
80004a08:	08058063          	beqz	a1,80004a88 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x834>
80004a0c:	00072783          	lw	a5,0(a4)
80004a10:	0006a803          	lw	a6,0(a3)
80004a14:	00458593          	addi	a1,a1,4
80004a18:	ffc68693          	addi	a3,a3,-4
80004a1c:	ffc70713          	addi	a4,a4,-4
80004a20:	ff0784e3          	beq	a5,a6,80004a08 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x7b4>
80004a24:	0707e463          	bltu	a5,a6,80004a8c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x838>
80004a28:	f2840593          	addi	a1,s0,-216
80004a2c:	00100713          	li	a4,1
80004a30:	00c58633          	add	a2,a1,a2
80004a34:	c9840693          	addi	a3,s0,-872
80004a38:	0005a783          	lw	a5,0(a1)
80004a3c:	0006a803          	lw	a6,0(a3)
80004a40:	00177713          	andi	a4,a4,1
80004a44:	00458593          	addi	a1,a1,4
80004a48:	fff7c793          	not	a5,a5
80004a4c:	00f807b3          	add	a5,a6,a5
80004a50:	0107b833          	sltu	a6,a5,a6
80004a54:	00e78733          	add	a4,a5,a4
80004a58:	00f737b3          	sltu	a5,a4,a5
80004a5c:	00e6a023          	sw	a4,0(a3)
80004a60:	00f86733          	or	a4,a6,a5
80004a64:	00468693          	addi	a3,a3,4
80004a68:	fcc598e3          	bne	a1,a2,80004a38 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x7e4>
80004a6c:	54070463          	beqz	a4,80004fb4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd60>
80004a70:	d2a42c23          	sw	a0,-712(s0)
80004a74:	00800593          	li	a1,8
80004a78:	00050b93          	mv	s7,a0
80004a7c:	00038513          	mv	a0,t2
80004a80:	007bee63          	bltu	s7,t2,80004a9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x848>
80004a84:	0140006f          	j	80004a98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x844>
80004a88:	fa0580e3          	beqz	a1,80004a28 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x7d4>
80004a8c:	00000593          	li	a1,0
80004a90:	00038513          	mv	a0,t2
80004a94:	007be463          	bltu	s7,t2,80004a9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x848>
80004a98:	000b8513          	mv	a0,s7
80004a9c:	3e557e63          	bgeu	a0,t0,80004e98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc44>
80004aa0:	00251693          	slli	a3,a0,0x2
80004aa4:	40d00633          	neg	a2,a3
80004aa8:	00df8733          	add	a4,t6,a3
80004aac:	00df07b3          	add	a5,t5,a3
80004ab0:	08060063          	beqz	a2,80004b30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x8dc>
80004ab4:	0007a803          	lw	a6,0(a5)
80004ab8:	00072883          	lw	a7,0(a4)
80004abc:	00460613          	addi	a2,a2,4
80004ac0:	ffc70713          	addi	a4,a4,-4
80004ac4:	ffc78793          	addi	a5,a5,-4
80004ac8:	ff1804e3          	beq	a6,a7,80004ab0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x85c>
80004acc:	07186463          	bltu	a6,a7,80004b34 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x8e0>
80004ad0:	04050663          	beqz	a0,80004b1c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x8c8>
80004ad4:	e8440613          	addi	a2,s0,-380
80004ad8:	00100793          	li	a5,1
80004adc:	00d606b3          	add	a3,a2,a3
80004ae0:	c9840713          	addi	a4,s0,-872
80004ae4:	00062803          	lw	a6,0(a2)
80004ae8:	00072883          	lw	a7,0(a4)
80004aec:	0017f793          	andi	a5,a5,1
80004af0:	00460613          	addi	a2,a2,4
80004af4:	fff84813          	not	a6,a6
80004af8:	01088833          	add	a6,a7,a6
80004afc:	011838b3          	sltu	a7,a6,a7
80004b00:	00f807b3          	add	a5,a6,a5
80004b04:	0107b833          	sltu	a6,a5,a6
80004b08:	00f72023          	sw	a5,0(a4)
80004b0c:	0108e7b3          	or	a5,a7,a6
80004b10:	00470713          	addi	a4,a4,4
80004b14:	fcd618e3          	bne	a2,a3,80004ae4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x890>
80004b18:	48078e63          	beqz	a5,80004fb4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd60>
80004b1c:	d2a42c23          	sw	a0,-712(s0)
80004b20:	0045e593          	ori	a1,a1,4
80004b24:	000e0693          	mv	a3,t3
80004b28:	01c56e63          	bltu	a0,t3,80004b44 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x8f0>
80004b2c:	0140006f          	j	80004b40 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x8ec>
80004b30:	fa0600e3          	beqz	a2,80004ad0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x87c>
80004b34:	000b8513          	mv	a0,s7
80004b38:	000e0693          	mv	a3,t3
80004b3c:	01cbe463          	bltu	s7,t3,80004b44 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x8f0>
80004b40:	00050693          	mv	a3,a0
80004b44:	3856f063          	bgeu	a3,t0,80004ec4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc70>
80004b48:	00269613          	slli	a2,a3,0x2
80004b4c:	40c00733          	neg	a4,a2
80004b50:	00c907b3          	add	a5,s2,a2
80004b54:	00cf0833          	add	a6,t5,a2
80004b58:	08070263          	beqz	a4,80004bdc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x988>
80004b5c:	00082883          	lw	a7,0(a6)
80004b60:	0007a283          	lw	t0,0(a5)
80004b64:	00470713          	addi	a4,a4,4
80004b68:	ffc78793          	addi	a5,a5,-4
80004b6c:	ffc80813          	addi	a6,a6,-4
80004b70:	fe5884e3          	beq	a7,t0,80004b58 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x904>
80004b74:	0658e663          	bltu	a7,t0,80004be0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x98c>
80004b78:	02900293          	li	t0,41
80004b7c:	04068663          	beqz	a3,80004bc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x974>
80004b80:	de040513          	addi	a0,s0,-544
80004b84:	00100793          	li	a5,1
80004b88:	00c50633          	add	a2,a0,a2
80004b8c:	c9840713          	addi	a4,s0,-872
80004b90:	00052803          	lw	a6,0(a0)
80004b94:	00072883          	lw	a7,0(a4)
80004b98:	0017f793          	andi	a5,a5,1
80004b9c:	00450513          	addi	a0,a0,4
80004ba0:	fff84813          	not	a6,a6
80004ba4:	01088833          	add	a6,a7,a6
80004ba8:	011838b3          	sltu	a7,a6,a7
80004bac:	00f807b3          	add	a5,a6,a5
80004bb0:	0107b833          	sltu	a6,a5,a6
80004bb4:	00f72023          	sw	a5,0(a4)
80004bb8:	0108e7b3          	or	a5,a7,a6
80004bbc:	00470713          	addi	a4,a4,4
80004bc0:	fcc518e3          	bne	a0,a2,80004b90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x93c>
80004bc4:	3e078863          	beqz	a5,80004fb4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd60>
80004bc8:	d2d42c23          	sw	a3,-712(s0)
80004bcc:	00258593          	addi	a1,a1,2
80004bd0:	000b0b93          	mv	s7,s6
80004bd4:	0166fe63          	bgeu	a3,s6,80004bf0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x99c>
80004bd8:	01c0006f          	j	80004bf4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x9a0>
80004bdc:	f8070ee3          	beqz	a4,80004b78 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x924>
80004be0:	00050693          	mv	a3,a0
80004be4:	02900293          	li	t0,41
80004be8:	000b0b93          	mv	s7,s6
80004bec:	01656463          	bltu	a0,s6,80004bf4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x9a0>
80004bf0:	00068b93          	mv	s7,a3
80004bf4:	2e5bf463          	bgeu	s7,t0,80004edc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc88>
80004bf8:	002b9613          	slli	a2,s7,0x2
80004bfc:	40c00533          	neg	a0,a2
80004c00:	00c08733          	add	a4,ra,a2
80004c04:	00cf07b3          	add	a5,t5,a2
80004c08:	06050c63          	beqz	a0,80004c80 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa2c>
80004c0c:	0007a803          	lw	a6,0(a5)
80004c10:	00072883          	lw	a7,0(a4)
80004c14:	00450513          	addi	a0,a0,4
80004c18:	ffc70713          	addi	a4,a4,-4
80004c1c:	ffc78793          	addi	a5,a5,-4
80004c20:	ff1804e3          	beq	a6,a7,80004c08 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x9b4>
80004c24:	07186063          	bltu	a6,a7,80004c84 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa30>
80004c28:	040b8663          	beqz	s7,80004c74 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa20>
80004c2c:	d3c40513          	addi	a0,s0,-708
80004c30:	00100713          	li	a4,1
80004c34:	00c50633          	add	a2,a0,a2
80004c38:	c9840693          	addi	a3,s0,-872
80004c3c:	00052783          	lw	a5,0(a0)
80004c40:	0006a803          	lw	a6,0(a3)
80004c44:	00177713          	andi	a4,a4,1
80004c48:	00450513          	addi	a0,a0,4
80004c4c:	fff7c793          	not	a5,a5
80004c50:	00f807b3          	add	a5,a6,a5
80004c54:	0107b833          	sltu	a6,a5,a6
80004c58:	00e78733          	add	a4,a5,a4
80004c5c:	00f737b3          	sltu	a5,a4,a5
80004c60:	00e6a023          	sw	a4,0(a3)
80004c64:	00f86733          	or	a4,a6,a5
80004c68:	00468693          	addi	a3,a3,4
80004c6c:	fcc518e3          	bne	a0,a2,80004c3c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x9e8>
80004c70:	34070263          	beqz	a4,80004fb4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd60>
80004c74:	d3742c23          	sw	s7,-712(s0)
80004c78:	00158593          	addi	a1,a1,1
80004c7c:	00c0006f          	j	80004c88 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa34>
80004c80:	fa0504e3          	beqz	a0,80004c28 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x9d4>
80004c84:	00068b93          	mv	s7,a3
80004c88:	39ac7863          	bgeu	s8,s10,80005018 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xdc4>
80004c8c:	03058513          	addi	a0,a1,48
80004c90:	018985b3          	add	a1,s3,s8
80004c94:	00a58023          	sb	a0,0(a1)
80004c98:	245bf263          	bgeu	s7,t0,80004edc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xc88>
80004c9c:	0a0b8663          	beqz	s7,80004d48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xaf4>
80004ca0:	c9c42023          	sw	t3,-896(s0)
80004ca4:	c8742223          	sw	t2,-892(s0)
80004ca8:	c8642423          	sw	t1,-888(s0)
80004cac:	00098913          	mv	s2,s3
80004cb0:	00000d93          	li	s11,0
80004cb4:	002b9a13          	slli	s4,s7,0x2
80004cb8:	c9840513          	addi	a0,s0,-872
80004cbc:	01450533          	add	a0,a0,s4
80004cc0:	c6a42c23          	sw	a0,-904(s0)
80004cc4:	c9840d13          	addi	s10,s0,-872
80004cc8:	000d2503          	lw	a0,0(s10)
80004ccc:	004d0993          	addi	s3,s10,4
80004cd0:	00a00613          	li	a2,10
80004cd4:	00000593          	li	a1,0
80004cd8:	00000693          	li	a3,0
80004cdc:	00005097          	auipc	ra,0x5
80004ce0:	534080e7          	jalr	1332(ra) # 8000a210 <__muldi3>
80004ce4:	01b50633          	add	a2,a0,s11
80004ce8:	ffca0a13          	addi	s4,s4,-4
80004cec:	00a63db3          	sltu	s11,a2,a0
80004cf0:	01b58db3          	add	s11,a1,s11
80004cf4:	00cd2023          	sw	a2,0(s10)
80004cf8:	00098d13          	mv	s10,s3
80004cfc:	fc0a16e3          	bnez	s4,80004cc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xa74>
80004d00:	060d8063          	beqz	s11,80004d60 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xb0c>
80004d04:	d3840093          	addi	ra,s0,-712
80004d08:	02900293          	li	t0,41
80004d0c:	02800513          	li	a0,40
80004d10:	2eab8863          	beq	s7,a0,80005000 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xdac>
80004d14:	c7842503          	lw	a0,-904(s0)
80004d18:	01b52023          	sw	s11,0(a0)
80004d1c:	001b8b93          	addi	s7,s7,1
80004d20:	00090993          	mv	s3,s2
80004d24:	c9442d03          	lw	s10,-876(s0)
80004d28:	c9042d83          	lw	s11,-880(s0)
80004d2c:	c8842303          	lw	t1,-888(s0)
80004d30:	c8442383          	lw	t2,-892(s0)
80004d34:	c8042e03          	lw	t3,-896(s0)
80004d38:	f2440e93          	addi	t4,s0,-220
80004d3c:	c9440f13          	addi	t5,s0,-876
80004d40:	e8040f93          	addi	t6,s0,-384
80004d44:	ddc40913          	addi	s2,s0,-548
80004d48:	d3742c23          	sw	s7,-712(s0)
80004d4c:	0154ba33          	sltu	s4,s1,s5
80004d50:	01448a33          	add	s4,s1,s4
80004d54:	001c0c13          	addi	s8,s8,1
80004d58:	c754e6e3          	bltu	s1,s5,800049c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x770>
80004d5c:	0480006f          	j	80004da4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xb50>
80004d60:	00090993          	mv	s3,s2
80004d64:	c9442d03          	lw	s10,-876(s0)
80004d68:	c9042d83          	lw	s11,-880(s0)
80004d6c:	c8842303          	lw	t1,-888(s0)
80004d70:	c8442383          	lw	t2,-892(s0)
80004d74:	c8042e03          	lw	t3,-896(s0)
80004d78:	f2440e93          	addi	t4,s0,-220
80004d7c:	c9440f13          	addi	t5,s0,-876
80004d80:	e8040f93          	addi	t6,s0,-384
80004d84:	ddc40913          	addi	s2,s0,-548
80004d88:	d3840093          	addi	ra,s0,-712
80004d8c:	02900293          	li	t0,41
80004d90:	d3742c23          	sw	s7,-712(s0)
80004d94:	0154ba33          	sltu	s4,s1,s5
80004d98:	01448a33          	add	s4,s1,s4
80004d9c:	001c0c13          	addi	s8,s8,1
80004da0:	c354e2e3          	bltu	s1,s5,800049c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x770>
80004da4:	00000593          	li	a1,0
80004da8:	c7c42903          	lw	s2,-900(s0)
80004dac:	a09ff06f          	j	800047b4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x560>
80004db0:	235d6063          	bltu	s10,s5,80004fd0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd7c>
80004db4:	098a8c63          	beq	s5,s8,80004e4c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf8>
80004db8:	01898533          	add	a0,s3,s8
80004dbc:	418a8633          	sub	a2,s5,s8
80004dc0:	03000593          	li	a1,48
80004dc4:	00006097          	auipc	ra,0x6
80004dc8:	620080e7          	jalr	1568(ra) # 8000b3e4 <memset>
80004dcc:	0800006f          	j	80004e4c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf8>
80004dd0:	02058863          	beqz	a1,80004e00 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbac>
80004dd4:	03100493          	li	s1,49
80004dd8:	001c8c93          	addi	s9,s9,1
80004ddc:	07b95063          	bge	s2,s11,80004e3c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbe8>
80004de0:	0680006f          	j	80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
80004de4:	fffa8513          	addi	a0,s5,-1
80004de8:	25a57463          	bgeu	a0,s10,80005030 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xddc>
80004dec:	00a98533          	add	a0,s3,a0
80004df0:	00054503          	lbu	a0,0(a0)
80004df4:	00157513          	andi	a0,a0,1
80004df8:	aa051ce3          	bnez	a0,800048b0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0x65c>
80004dfc:	04c0006f          	j	80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
80004e00:	03100513          	li	a0,49
80004e04:	fffa8613          	addi	a2,s5,-1
80004e08:	00a98023          	sb	a0,0(s3)
80004e0c:	02060263          	beqz	a2,80004e30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbdc>
80004e10:	00198513          	addi	a0,s3,1
80004e14:	03000593          	li	a1,48
80004e18:	03000493          	li	s1,48
80004e1c:	00006097          	auipc	ra,0x6
80004e20:	5c8080e7          	jalr	1480(ra) # 8000b3e4 <memset>
80004e24:	001c8c93          	addi	s9,s9,1
80004e28:	01b95a63          	bge	s2,s11,80004e3c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbe8>
80004e2c:	01c0006f          	j	80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
80004e30:	03000493          	li	s1,48
80004e34:	001c8c93          	addi	s9,s9,1
80004e38:	01b94863          	blt	s2,s11,80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
80004e3c:	01aaf663          	bgeu	s5,s10,80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xbf4>
80004e40:	009a0023          	sb	s1,0(s4)
80004e44:	001a8a93          	addi	s5,s5,1
80004e48:	155d6a63          	bltu	s10,s5,80004f9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E+0xd48>
80004e4c:	c8c42503          	lw	a0,-884(s0)
80004e50:	01352023          	sw	s3,0(a0)
80004e54:	01552223          	sw	s5,4(a0)
80004e58:	01951423          	sh	s9,8(a0)
80004e5c:	38c12083          	lw	ra,908(sp)
80004e60:	38812403          	lw	s0,904(sp)
80004e64:	38412483          	lw	s1,900(sp)
80004e68:	38012903          	lw	s2,896(sp)
80004e6c:	37c12983          	lw	s3,892(sp)
80004e70:	37812a03          	lw	s4,888(sp)
80004e74:	37412a83          	lw	s5,884(sp)
80004e78:	37012b03          	lw	s6,880(sp)
80004e7c:	36c12b83          	lw	s7,876(sp)
80004e80:	36812c03          	lw	s8,872(sp)
80004e84:	36412c83          	lw	s9,868(sp)
80004e88:	36012d03          	lw	s10,864(sp)
80004e8c:	35c12d83          	lw	s11,860(sp)
80004e90:	39010113          	addi	sp,sp,912
80004e94:	00008067          	ret
80004e98:	8000d637          	lui	a2,0x8000d
80004e9c:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004ea0:	02800593          	li	a1,40
80004ea4:	00004097          	auipc	ra,0x4
80004ea8:	0a0080e7          	jalr	160(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004eac:	8000d637          	lui	a2,0x8000d
80004eb0:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004eb4:	02800593          	li	a1,40
80004eb8:	000b0513          	mv	a0,s6
80004ebc:	00004097          	auipc	ra,0x4
80004ec0:	088080e7          	jalr	136(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004ec4:	8000d637          	lui	a2,0x8000d
80004ec8:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004ecc:	02800593          	li	a1,40
80004ed0:	00068513          	mv	a0,a3
80004ed4:	00004097          	auipc	ra,0x4
80004ed8:	070080e7          	jalr	112(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004edc:	8000d637          	lui	a2,0x8000d
80004ee0:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004ee4:	02800593          	li	a1,40
80004ee8:	000b8513          	mv	a0,s7
80004eec:	00004097          	auipc	ra,0x4
80004ef0:	058080e7          	jalr	88(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004ef4:	8000d537          	lui	a0,0x8000d
80004ef8:	89f50513          	addi	a0,a0,-1889 # 8000c89f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.27>
80004efc:	8000d637          	lui	a2,0x8000d
80004f00:	a2860613          	addi	a2,a2,-1496 # 8000ca28 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.42>
80004f04:	01c00593          	li	a1,28
80004f08:	00002097          	auipc	ra,0x2
80004f0c:	134080e7          	jalr	308(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004f10:	8000d537          	lui	a0,0x8000d
80004f14:	8cc50513          	addi	a0,a0,-1844 # 8000c8cc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.29>
80004f18:	8000d637          	lui	a2,0x8000d
80004f1c:	a3860613          	addi	a2,a2,-1480 # 8000ca38 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.43>
80004f20:	01d00593          	li	a1,29
80004f24:	00002097          	auipc	ra,0x2
80004f28:	118080e7          	jalr	280(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004f2c:	8000d537          	lui	a0,0x8000d
80004f30:	8fc50513          	addi	a0,a0,-1796 # 8000c8fc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.31>
80004f34:	8000d637          	lui	a2,0x8000d
80004f38:	a4860613          	addi	a2,a2,-1464 # 8000ca48 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.44>
80004f3c:	01c00593          	li	a1,28
80004f40:	00002097          	auipc	ra,0x2
80004f44:	0fc080e7          	jalr	252(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004f48:	8000d537          	lui	a0,0x8000d
80004f4c:	9e050513          	addi	a0,a0,-1568 # 8000c9e0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.40>
80004f50:	8000d637          	lui	a2,0x8000d
80004f54:	ab860613          	addi	a2,a2,-1352 # 8000cab8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.51>
80004f58:	03600593          	li	a1,54
80004f5c:	00002097          	auipc	ra,0x2
80004f60:	0e0080e7          	jalr	224(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004f64:	8000d537          	lui	a0,0x8000d
80004f68:	99850513          	addi	a0,a0,-1640 # 8000c998 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.38>
80004f6c:	8000d637          	lui	a2,0x8000d
80004f70:	aa860613          	addi	a2,a2,-1368 # 8000caa8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.50>
80004f74:	03700593          	li	a1,55
80004f78:	00002097          	auipc	ra,0x2
80004f7c:	0c4080e7          	jalr	196(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004f80:	8000d537          	lui	a0,0x8000d
80004f84:	58350513          	addi	a0,a0,1411 # 8000d583 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.423>
80004f88:	8000d637          	lui	a2,0x8000d
80004f8c:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004f90:	01b00593          	li	a1,27
80004f94:	00002097          	auipc	ra,0x2
80004f98:	0a8080e7          	jalr	168(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004f9c:	8000d637          	lui	a2,0x8000d
80004fa0:	a7860613          	addi	a2,a2,-1416 # 8000ca78 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.47>
80004fa4:	000a8513          	mv	a0,s5
80004fa8:	000d0593          	mv	a1,s10
80004fac:	00004097          	auipc	ra,0x4
80004fb0:	f98080e7          	jalr	-104(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004fb4:	8000d537          	lui	a0,0x8000d
80004fb8:	54c50513          	addi	a0,a0,1356 # 8000d54c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.421>
80004fbc:	8000d637          	lui	a2,0x8000d
80004fc0:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80004fc4:	01a00593          	li	a1,26
80004fc8:	00002097          	auipc	ra,0x2
80004fcc:	074080e7          	jalr	116(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80004fd0:	8000d637          	lui	a2,0x8000d
80004fd4:	a9860613          	addi	a2,a2,-1384 # 8000ca98 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.49>
80004fd8:	000a8513          	mv	a0,s5
80004fdc:	000d0593          	mv	a1,s10
80004fe0:	00004097          	auipc	ra,0x4
80004fe4:	f64080e7          	jalr	-156(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80004fe8:	8000d637          	lui	a2,0x8000d
80004fec:	a6860613          	addi	a2,a2,-1432 # 8000ca68 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.46>
80004ff0:	000a8513          	mv	a0,s5
80004ff4:	000d0593          	mv	a1,s10
80004ff8:	00004097          	auipc	ra,0x4
80004ffc:	f4c080e7          	jalr	-180(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80005000:	8000d637          	lui	a2,0x8000d
80005004:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80005008:	02800513          	li	a0,40
8000500c:	02800593          	li	a1,40
80005010:	00002097          	auipc	ra,0x2
80005014:	074080e7          	jalr	116(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80005018:	8000d637          	lui	a2,0x8000d
8000501c:	a8860613          	addi	a2,a2,-1400 # 8000ca88 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.48>
80005020:	000c0513          	mv	a0,s8
80005024:	000d0593          	mv	a1,s10
80005028:	00002097          	auipc	ra,0x2
8000502c:	05c080e7          	jalr	92(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80005030:	8000d637          	lui	a2,0x8000d
80005034:	a5860613          	addi	a2,a2,-1448 # 8000ca58 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.45>
80005038:	000d0593          	mv	a1,s10
8000503c:	00002097          	auipc	ra,0x2
80005040:	048080e7          	jalr	72(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

80005044 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E>:
80005044:	f4010113          	addi	sp,sp,-192
80005048:	0a112e23          	sw	ra,188(sp)
8000504c:	0a812c23          	sw	s0,184(sp)
80005050:	0a912a23          	sw	s1,180(sp)
80005054:	0b212823          	sw	s2,176(sp)
80005058:	0b312623          	sw	s3,172(sp)
8000505c:	0b412423          	sw	s4,168(sp)
80005060:	0b512223          	sw	s5,164(sp)
80005064:	0b612023          	sw	s6,160(sp)
80005068:	09712e23          	sw	s7,156(sp)
8000506c:	09812c23          	sw	s8,152(sp)
80005070:	09912a23          	sw	s9,148(sp)
80005074:	09a12823          	sw	s10,144(sp)
80005078:	09b12623          	sw	s11,140(sp)
8000507c:	0c010413          	addi	s0,sp,192
80005080:	f8d42823          	sw	a3,-112(s0)
80005084:	0005af03          	lw	t5,0(a1)
80005088:	0045a683          	lw	a3,4(a1)
8000508c:	00df6733          	or	a4,t5,a3
80005090:	720700e3          	beqz	a4,80005fb0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf6c>
80005094:	0085ae83          	lw	t4,8(a1)
80005098:	00c5a703          	lw	a4,12(a1)
8000509c:	00eee7b3          	or	a5,t4,a4
800050a0:	720786e3          	beqz	a5,80005fcc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf88>
800050a4:	0105a783          	lw	a5,16(a1)
800050a8:	0145a283          	lw	t0,20(a1)
800050ac:	0057e833          	or	a6,a5,t0
800050b0:	72080ce3          	beqz	a6,80005fe8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xfa4>
800050b4:	00ff04b3          	add	s1,t5,a5
800050b8:	01e4b833          	sltu	a6,s1,t5
800050bc:	005682b3          	add	t0,a3,t0
800050c0:	010288b3          	add	a7,t0,a6
800050c4:	00d88463          	beq	a7,a3,800050cc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x88>
800050c8:	00d8b833          	sltu	a6,a7,a3
800050cc:	72081ce3          	bnez	a6,80006004 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xfc0>
800050d0:	00e68663          	beq	a3,a4,800050dc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x98>
800050d4:	00e6b833          	sltu	a6,a3,a4
800050d8:	0080006f          	j	800050e0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x9c>
800050dc:	01df3833          	sltu	a6,t5,t4
800050e0:	740810e3          	bnez	a6,80006020 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xfdc>
800050e4:	01000813          	li	a6,16
800050e8:	f9042883          	lw	a7,-112(s0)
800050ec:	751878e3          	bgeu	a6,a7,8000603c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xff8>
800050f0:	00f4b7b3          	sltu	a5,s1,a5
800050f4:	00f282b3          	add	t0,t0,a5
800050f8:	01d2d793          	srli	a5,t0,0x1d
800050fc:	74079ee3          	bnez	a5,80006058 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x1014>
80005100:	0014d313          	srli	t1,s1,0x1
80005104:	555557b7          	lui	a5,0x55555
80005108:	33333837          	lui	a6,0x33333
8000510c:	0f0f13b7          	lui	t2,0xf0f1
80005110:	55578893          	addi	a7,a5,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
80005114:	33380813          	addi	a6,a6,819 # 33333333 <.Lline_table_start2+0x33331af9>
80005118:	f0f38793          	addi	a5,t2,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
8000511c:	08029863          	bnez	t0,800051ac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x168>
80005120:	0064e3b3          	or	t2,s1,t1
80005124:	0023de13          	srli	t3,t2,0x2
80005128:	01c3e3b3          	or	t2,t2,t3
8000512c:	0043de13          	srli	t3,t2,0x4
80005130:	01c3e3b3          	or	t2,t2,t3
80005134:	0083de13          	srli	t3,t2,0x8
80005138:	01c3e3b3          	or	t2,t2,t3
8000513c:	0103de13          	srli	t3,t2,0x10
80005140:	01c3e3b3          	or	t2,t2,t3
80005144:	fff3c393          	not	t2,t2
80005148:	0013de13          	srli	t3,t2,0x1
8000514c:	011e78b3          	and	a7,t3,a7
80005150:	411388b3          	sub	a7,t2,a7
80005154:	0108f3b3          	and	t2,a7,a6
80005158:	0028d893          	srli	a7,a7,0x2
8000515c:	0108f833          	and	a6,a7,a6
80005160:	01038833          	add	a6,t2,a6
80005164:	00485893          	srli	a7,a6,0x4
80005168:	01180833          	add	a6,a6,a7
8000516c:	00f877b3          	and	a5,a6,a5
80005170:	00879813          	slli	a6,a5,0x8
80005174:	010787b3          	add	a5,a5,a6
80005178:	01079813          	slli	a6,a5,0x10
8000517c:	010787b3          	add	a5,a5,a6
80005180:	0187d793          	srli	a5,a5,0x18
80005184:	02078913          	addi	s2,a5,32
80005188:	0185d583          	lhu	a1,24(a1)
8000518c:	03f97793          	andi	a5,s2,63
80005190:	fe078893          	addi	a7,a5,-32
80005194:	fff7c813          	not	a6,a5
80005198:	0808d863          	bgez	a7,80005228 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x1e4>
8000519c:	012292b3          	sll	t0,t0,s2
800051a0:	01035333          	srl	t1,t1,a6
800051a4:	0062ea33          	or	s4,t0,t1
800051a8:	0840006f          	j	8000522c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x1e8>
800051ac:	0012d393          	srli	t2,t0,0x1
800051b0:	0072e3b3          	or	t2,t0,t2
800051b4:	0023de13          	srli	t3,t2,0x2
800051b8:	01c3e3b3          	or	t2,t2,t3
800051bc:	0043de13          	srli	t3,t2,0x4
800051c0:	01c3e3b3          	or	t2,t2,t3
800051c4:	0083de13          	srli	t3,t2,0x8
800051c8:	01c3e3b3          	or	t2,t2,t3
800051cc:	0103de13          	srli	t3,t2,0x10
800051d0:	01c3e3b3          	or	t2,t2,t3
800051d4:	fff3c393          	not	t2,t2
800051d8:	0013de13          	srli	t3,t2,0x1
800051dc:	011e78b3          	and	a7,t3,a7
800051e0:	411388b3          	sub	a7,t2,a7
800051e4:	0108f3b3          	and	t2,a7,a6
800051e8:	0028d893          	srli	a7,a7,0x2
800051ec:	0108f833          	and	a6,a7,a6
800051f0:	01038833          	add	a6,t2,a6
800051f4:	00485893          	srli	a7,a6,0x4
800051f8:	01180833          	add	a6,a6,a7
800051fc:	00f877b3          	and	a5,a6,a5
80005200:	00879813          	slli	a6,a5,0x8
80005204:	010787b3          	add	a5,a5,a6
80005208:	01079813          	slli	a6,a5,0x10
8000520c:	010787b3          	add	a5,a5,a6
80005210:	0187d913          	srli	s2,a5,0x18
80005214:	0185d583          	lhu	a1,24(a1)
80005218:	03f97793          	andi	a5,s2,63
8000521c:	fe078893          	addi	a7,a5,-32
80005220:	fff7c813          	not	a6,a5
80005224:	f608cce3          	bltz	a7,8000519c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x158>
80005228:	00f49a33          	sll	s4,s1,a5
8000522c:	41f8d993          	srai	s3,a7,0x1f
80005230:	01df32b3          	sltu	t0,t5,t4
80005234:	40e68333          	sub	t1,a3,a4
80005238:	41df0733          	sub	a4,t5,t4
8000523c:	405303b3          	sub	t2,t1,t0
80005240:	f8e42c23          	sw	a4,-104(s0)
80005244:	f8742e23          	sw	t2,-100(s0)
80005248:	fab41023          	sh	a1,-96(s0)
8000524c:	0208c463          	bltz	a7,80005274 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x230>
80005250:	00f71ab3          	sll	s5,a4,a5
80005254:	012712b3          	sll	t0,a4,s2
80005258:	0059fe33          	and	t3,s3,t0
8000525c:	0208da63          	bgez	a7,80005290 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x24c>
80005260:	012e52b3          	srl	t0,t3,s2
80005264:	001a9313          	slli	t1,s5,0x1
80005268:	01031333          	sll	t1,t1,a6
8000526c:	0062e2b3          	or	t0,t0,t1
80005270:	0240006f          	j	80005294 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x250>
80005274:	012392b3          	sll	t0,t2,s2
80005278:	00175313          	srli	t1,a4,0x1
8000527c:	01035333          	srl	t1,t1,a6
80005280:	0062eab3          	or	s5,t0,t1
80005284:	012712b3          	sll	t0,a4,s2
80005288:	0059fe33          	and	t3,s3,t0
8000528c:	fc08cae3          	bltz	a7,80005260 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x21c>
80005290:	00fad2b3          	srl	t0,s5,a5
80005294:	012ad333          	srl	t1,s5,s2
80005298:	00e2c733          	xor	a4,t0,a4
8000529c:	0069f333          	and	t1,s3,t1
800052a0:	007343b3          	xor	t2,t1,t2
800052a4:	00776733          	or	a4,a4,t2
800052a8:	fa542423          	sw	t0,-88(s0)
800052ac:	fa642623          	sw	t1,-84(s0)
800052b0:	4c071ee3          	bnez	a4,80005f8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf48>
800052b4:	f9e42c23          	sw	t5,-104(s0)
800052b8:	f8d42e23          	sw	a3,-100(s0)
800052bc:	fab41023          	sh	a1,-96(s0)
800052c0:	00ff1333          	sll	t1,t5,a5
800052c4:	0208c463          	bltz	a7,800052ec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x2a8>
800052c8:	00030393          	mv	t2,t1
800052cc:	0069f333          	and	t1,s3,t1
800052d0:	00f3d2b3          	srl	t0,t2,a5
800052d4:	0208da63          	bgez	a7,80005308 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x2c4>
800052d8:	00139713          	slli	a4,t2,0x1
800052dc:	01071733          	sll	a4,a4,a6
800052e0:	00f357b3          	srl	a5,t1,a5
800052e4:	00e7e733          	or	a4,a5,a4
800052e8:	0240006f          	j	8000530c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x2c8>
800052ec:	001f5713          	srli	a4,t5,0x1
800052f0:	01075733          	srl	a4,a4,a6
800052f4:	00f692b3          	sll	t0,a3,a5
800052f8:	00e2e3b3          	or	t2,t0,a4
800052fc:	0069f333          	and	t1,s3,t1
80005300:	00f3d2b3          	srl	t0,t2,a5
80005304:	fc08cae3          	bltz	a7,800052d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x294>
80005308:	00028713          	mv	a4,t0
8000530c:	0059f7b3          	and	a5,s3,t0
80005310:	01e74833          	xor	a6,a4,t5
80005314:	00d7c6b3          	xor	a3,a5,a3
80005318:	00d866b3          	or	a3,a6,a3
8000531c:	fae42423          	sw	a4,-88(s0)
80005320:	faf42623          	sw	a5,-84(s0)
80005324:	460694e3          	bnez	a3,80005f8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf48>
80005328:	f9c42423          	sw	t3,-120(s0)
8000532c:	f8642623          	sw	t1,-116(s0)
80005330:	f8742a23          	sw	t2,-108(s0)
80005334:	f6c42823          	sw	a2,-144(s0)
80005338:	f6a42423          	sw	a0,-152(s0)
8000533c:	412585b3          	sub	a1,a1,s2
80005340:	fa000513          	li	a0,-96
80005344:	f8b42223          	sw	a1,-124(s0)
80005348:	40b50533          	sub	a0,a0,a1
8000534c:	01051513          	slli	a0,a0,0x10
80005350:	41055513          	srai	a0,a0,0x10
80005354:	43f50513          	addi	a0,a0,1087
80005358:	05000593          	li	a1,80
8000535c:	00005097          	auipc	ra,0x5
80005360:	e6c080e7          	jalr	-404(ra) # 8000a1c8 <__mulsi3>
80005364:	000015b7          	lui	a1,0x1
80005368:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start2+0x49c>
8000536c:	00006097          	auipc	ra,0x6
80005370:	014080e7          	jalr	20(ra) # 8000b380 <__divsi3>
80005374:	05100593          	li	a1,81
80005378:	52b576e3          	bgeu	a0,a1,800060a4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x1060>
8000537c:	00451513          	slli	a0,a0,0x4
80005380:	8000d5b7          	lui	a1,0x8000d
80005384:	ac858593          	addi	a1,a1,-1336 # 8000cac8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E>
80005388:	00a58533          	add	a0,a1,a0
8000538c:	00052d03          	lw	s10,0(a0)
80005390:	00452c03          	lw	s8,4(a0)
80005394:	00851583          	lh	a1,8(a0)
80005398:	f6b42e23          	sw	a1,-132(s0)
8000539c:	00a55503          	lhu	a0,10(a0)
800053a0:	f6a42a23          	sw	a0,-140(s0)
800053a4:	01249533          	sll	a0,s1,s2
800053a8:	00a9f933          	and	s2,s3,a0
800053ac:	00090513          	mv	a0,s2
800053b0:	000a0593          	mv	a1,s4
800053b4:	00000613          	li	a2,0
800053b8:	00000693          	li	a3,0
800053bc:	00005097          	auipc	ra,0x5
800053c0:	e54080e7          	jalr	-428(ra) # 8000a210 <__muldi3>
800053c4:	00050b13          	mv	s6,a0
800053c8:	00058c93          	mv	s9,a1
800053cc:	000d0513          	mv	a0,s10
800053d0:	000c0593          	mv	a1,s8
800053d4:	00000613          	li	a2,0
800053d8:	00000693          	li	a3,0
800053dc:	00005097          	auipc	ra,0x5
800053e0:	e34080e7          	jalr	-460(ra) # 8000a210 <__muldi3>
800053e4:	00050d93          	mv	s11,a0
800053e8:	00058493          	mv	s1,a1
800053ec:	019589b3          	add	s3,a1,s9
800053f0:	01650cb3          	add	s9,a0,s6
800053f4:	00acb533          	sltu	a0,s9,a0
800053f8:	00a989b3          	add	s3,s3,a0
800053fc:	000d0513          	mv	a0,s10
80005400:	00000593          	li	a1,0
80005404:	00090613          	mv	a2,s2
80005408:	00000693          	li	a3,0
8000540c:	00005097          	auipc	ra,0x5
80005410:	e04080e7          	jalr	-508(ra) # 8000a210 <__muldi3>
80005414:	00058b13          	mv	s6,a1
80005418:	000c0513          	mv	a0,s8
8000541c:	00000593          	li	a1,0
80005420:	00090613          	mv	a2,s2
80005424:	00000693          	li	a3,0
80005428:	00005097          	auipc	ra,0x5
8000542c:	de8080e7          	jalr	-536(ra) # 8000a210 <__muldi3>
80005430:	01650b33          	add	s6,a0,s6
80005434:	00ab3533          	sltu	a0,s6,a0
80005438:	00a58bb3          	add	s7,a1,a0
8000543c:	000d0513          	mv	a0,s10
80005440:	00000593          	li	a1,0
80005444:	000a0613          	mv	a2,s4
80005448:	00000693          	li	a3,0
8000544c:	00005097          	auipc	ra,0x5
80005450:	dc4080e7          	jalr	-572(ra) # 8000a210 <__muldi3>
80005454:	01650b33          	add	s6,a0,s6
80005458:	00ab3533          	sltu	a0,s6,a0
8000545c:	00a58533          	add	a0,a1,a0
80005460:	00ab8933          	add	s2,s7,a0
80005464:	000c0513          	mv	a0,s8
80005468:	00000593          	li	a1,0
8000546c:	000a0613          	mv	a2,s4
80005470:	00000693          	li	a3,0
80005474:	00005097          	auipc	ra,0x5
80005478:	d9c080e7          	jalr	-612(ra) # 8000a210 <__muldi3>
8000547c:	01250633          	add	a2,a0,s2
80005480:	017936b3          	sltu	a3,s2,s7
80005484:	01fb5713          	srli	a4,s6,0x1f
80005488:	f8e42023          	sw	a4,-128(s0)
8000548c:	f8442703          	lw	a4,-124(s0)
80005490:	40e00733          	neg	a4,a4
80005494:	00a63533          	sltu	a0,a2,a0
80005498:	00d585b3          	add	a1,a1,a3
8000549c:	01960b33          	add	s6,a2,s9
800054a0:	00a58533          	add	a0,a1,a0
800054a4:	00cb35b3          	sltu	a1,s6,a2
800054a8:	01350533          	add	a0,a0,s3
800054ac:	00b50533          	add	a0,a0,a1
800054b0:	f8a42223          	sw	a0,-124(s0)
800054b4:	f7c42503          	lw	a0,-132(s0)
800054b8:	40a70533          	sub	a0,a4,a0
800054bc:	f6a42c23          	sw	a0,-136(s0)
800054c0:	f8842b83          	lw	s7,-120(s0)
800054c4:	000b8513          	mv	a0,s7
800054c8:	000a8593          	mv	a1,s5
800054cc:	00000613          	li	a2,0
800054d0:	00000693          	li	a3,0
800054d4:	00005097          	auipc	ra,0x5
800054d8:	d3c080e7          	jalr	-708(ra) # 8000a210 <__muldi3>
800054dc:	00b485b3          	add	a1,s1,a1
800054e0:	00ad89b3          	add	s3,s11,a0
800054e4:	01b9b533          	sltu	a0,s3,s11
800054e8:	00a58a33          	add	s4,a1,a0
800054ec:	000d0513          	mv	a0,s10
800054f0:	00000593          	li	a1,0
800054f4:	000b8613          	mv	a2,s7
800054f8:	00000693          	li	a3,0
800054fc:	00005097          	auipc	ra,0x5
80005500:	d14080e7          	jalr	-748(ra) # 8000a210 <__muldi3>
80005504:	00058913          	mv	s2,a1
80005508:	000c0513          	mv	a0,s8
8000550c:	00000593          	li	a1,0
80005510:	000b8613          	mv	a2,s7
80005514:	00000693          	li	a3,0
80005518:	00005097          	auipc	ra,0x5
8000551c:	cf8080e7          	jalr	-776(ra) # 8000a210 <__muldi3>
80005520:	01250933          	add	s2,a0,s2
80005524:	00a93533          	sltu	a0,s2,a0
80005528:	00a58cb3          	add	s9,a1,a0
8000552c:	000d0513          	mv	a0,s10
80005530:	00000593          	li	a1,0
80005534:	000a8613          	mv	a2,s5
80005538:	00000693          	li	a3,0
8000553c:	00005097          	auipc	ra,0x5
80005540:	cd4080e7          	jalr	-812(ra) # 8000a210 <__muldi3>
80005544:	01250bb3          	add	s7,a0,s2
80005548:	00abb533          	sltu	a0,s7,a0
8000554c:	00a58533          	add	a0,a1,a0
80005550:	00ac8933          	add	s2,s9,a0
80005554:	000c0513          	mv	a0,s8
80005558:	00000593          	li	a1,0
8000555c:	000a8613          	mv	a2,s5
80005560:	00000693          	li	a3,0
80005564:	00005097          	auipc	ra,0x5
80005568:	cac080e7          	jalr	-852(ra) # 8000a210 <__muldi3>
8000556c:	01250633          	add	a2,a0,s2
80005570:	019936b3          	sltu	a3,s2,s9
80005574:	00a63533          	sltu	a0,a2,a0
80005578:	00d585b3          	add	a1,a1,a3
8000557c:	013609b3          	add	s3,a2,s3
80005580:	00a58533          	add	a0,a1,a0
80005584:	01450533          	add	a0,a0,s4
80005588:	f6a42623          	sw	a0,-148(s0)
8000558c:	f9342423          	sw	s3,-120(s0)
80005590:	00c9b9b3          	sltu	s3,s3,a2
80005594:	f8c42a03          	lw	s4,-116(s0)
80005598:	000a0513          	mv	a0,s4
8000559c:	f9442a83          	lw	s5,-108(s0)
800055a0:	000a8593          	mv	a1,s5
800055a4:	00000613          	li	a2,0
800055a8:	00000693          	li	a3,0
800055ac:	00005097          	auipc	ra,0x5
800055b0:	c64080e7          	jalr	-924(ra) # 8000a210 <__muldi3>
800055b4:	00b485b3          	add	a1,s1,a1
800055b8:	00ad8933          	add	s2,s11,a0
800055bc:	01b93db3          	sltu	s11,s2,s11
800055c0:	01b58db3          	add	s11,a1,s11
800055c4:	000d0513          	mv	a0,s10
800055c8:	00000593          	li	a1,0
800055cc:	000a0613          	mv	a2,s4
800055d0:	00000693          	li	a3,0
800055d4:	00005097          	auipc	ra,0x5
800055d8:	c3c080e7          	jalr	-964(ra) # 8000a210 <__muldi3>
800055dc:	00058493          	mv	s1,a1
800055e0:	000c0513          	mv	a0,s8
800055e4:	00000593          	li	a1,0
800055e8:	000a0613          	mv	a2,s4
800055ec:	00000693          	li	a3,0
800055f0:	00005097          	auipc	ra,0x5
800055f4:	c20080e7          	jalr	-992(ra) # 8000a210 <__muldi3>
800055f8:	009504b3          	add	s1,a0,s1
800055fc:	00a4b533          	sltu	a0,s1,a0
80005600:	00a58a33          	add	s4,a1,a0
80005604:	000d0513          	mv	a0,s10
80005608:	00000593          	li	a1,0
8000560c:	000a8613          	mv	a2,s5
80005610:	00000693          	li	a3,0
80005614:	00005097          	auipc	ra,0x5
80005618:	bfc080e7          	jalr	-1028(ra) # 8000a210 <__muldi3>
8000561c:	009504b3          	add	s1,a0,s1
80005620:	00a4b533          	sltu	a0,s1,a0
80005624:	00a58533          	add	a0,a1,a0
80005628:	00aa0cb3          	add	s9,s4,a0
8000562c:	000c0513          	mv	a0,s8
80005630:	00000593          	li	a1,0
80005634:	000a8613          	mv	a2,s5
80005638:	00000693          	li	a3,0
8000563c:	00005097          	auipc	ra,0x5
80005640:	bd4080e7          	jalr	-1068(ra) # 8000a210 <__muldi3>
80005644:	f7842303          	lw	t1,-136(s0)
80005648:	019506b3          	add	a3,a0,s9
8000564c:	014cb733          	sltu	a4,s9,s4
80005650:	01f4d613          	srli	a2,s1,0x1f
80005654:	f8042783          	lw	a5,-128(s0)
80005658:	00fb07b3          	add	a5,s6,a5
8000565c:	03f37293          	andi	t0,t1,63
80005660:	00a6b533          	sltu	a0,a3,a0
80005664:	00e585b3          	add	a1,a1,a4
80005668:	01268933          	add	s2,a3,s2
8000566c:	0167b733          	sltu	a4,a5,s6
80005670:	00178393          	addi	t2,a5,1
80005674:	fe028793          	addi	a5,t0,-32
80005678:	00a58533          	add	a0,a1,a0
8000567c:	00d936b3          	sltu	a3,s2,a3
80005680:	01260933          	add	s2,a2,s2
80005684:	f8442583          	lw	a1,-124(s0)
80005688:	00e58733          	add	a4,a1,a4
8000568c:	0013b593          	seqz	a1,t2
80005690:	01b50db3          	add	s11,a0,s11
80005694:	00b70e33          	add	t3,a4,a1
80005698:	fff2ce93          	not	t4,t0
8000569c:	f8f42a23          	sw	a5,-108(s0)
800056a0:	0007c663          	bltz	a5,800056ac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x668>
800056a4:	005e5b33          	srl	s6,t3,t0
800056a8:	0140006f          	j	800056bc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x678>
800056ac:	001e1513          	slli	a0,t3,0x1
800056b0:	01d51533          	sll	a0,a0,t4
800056b4:	0063d5b3          	srl	a1,t2,t1
800056b8:	00a5eb33          	or	s6,a1,a0
800056bc:	00dd86b3          	add	a3,s11,a3
800056c0:	00c93733          	sltu	a4,s2,a2
800056c4:	f6c42603          	lw	a2,-148(s0)
800056c8:	01360633          	add	a2,a2,s3
800056cc:	41fbd593          	srai	a1,s7,0x1f
800056d0:	f9442503          	lw	a0,-108(s0)
800056d4:	00052513          	slti	a0,a0,0
800056d8:	00100793          	li	a5,1
800056dc:	004b5813          	srli	a6,s6,0x4
800056e0:	27100893          	li	a7,625
800056e4:	f8542623          	sw	t0,-116(s0)
800056e8:	005792b3          	sll	t0,a5,t0
800056ec:	006797b3          	sll	a5,a5,t1
800056f0:	fff50313          	addi	t1,a0,-1
800056f4:	40a00533          	neg	a0,a0
800056f8:	005372b3          	and	t0,t1,t0
800056fc:	00f57333          	and	t1,a0,a5
80005700:	00133513          	seqz	a0,t1
80005704:	40a28533          	sub	a0,t0,a0
80005708:	f8a42223          	sw	a0,-124(s0)
8000570c:	fff30513          	addi	a0,t1,-1
80005710:	f8a42023          	sw	a0,-128(s0)
80005714:	f4542a23          	sw	t0,-172(s0)
80005718:	f4642823          	sw	t1,-176(s0)
8000571c:	f7242023          	sw	s2,-160(s0)
80005720:	f7d42e23          	sw	t4,-132(s0)
80005724:	03187063          	bgeu	a6,a7,80005744 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x700>
80005728:	06400513          	li	a0,100
8000572c:	04ab7263          	bgeu	s6,a0,80005770 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x72c>
80005730:	00900513          	li	a0,9
80005734:	00ab3793          	sltiu	a5,s6,10
80005738:	07656e63          	bltu	a0,s6,800057b4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x770>
8000573c:	00100513          	li	a0,1
80005740:	0780006f          	j	800057b8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x774>
80005744:	000f4537          	lui	a0,0xf4
80005748:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2a06>
8000574c:	02ab7e63          	bgeu	s6,a0,80005788 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x744>
80005750:	00018537          	lui	a0,0x18
80005754:	6a050513          	addi	a0,a0,1696 # 186a0 <.Lline_table_start2+0x16e66>
80005758:	00ab37b3          	sltu	a5,s6,a0
8000575c:	00ab7663          	bgeu	s6,a0,80005768 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x724>
80005760:	00002537          	lui	a0,0x2
80005764:	71050513          	addi	a0,a0,1808 # 2710 <.Lline_table_start2+0xed6>
80005768:	0057c793          	xori	a5,a5,5
8000576c:	06c0006f          	j	800057d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x794>
80005770:	3e800813          	li	a6,1000
80005774:	3e8b3793          	sltiu	a5,s6,1000
80005778:	010b6463          	bltu	s6,a6,80005780 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x73c>
8000577c:	3e800513          	li	a0,1000
80005780:	0037c793          	xori	a5,a5,3
80005784:	0540006f          	j	800057d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x794>
80005788:	05f5e537          	lui	a0,0x5f5e
8000578c:	10050513          	addi	a0,a0,256 # 5f5e100 <.Lline_table_start2+0x5f5c8c6>
80005790:	02ab7863          	bgeu	s6,a0,800057c0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x77c>
80005794:	00989537          	lui	a0,0x989
80005798:	68050513          	addi	a0,a0,1664 # 989680 <.Lline_table_start2+0x987e46>
8000579c:	00ab37b3          	sltu	a5,s6,a0
800057a0:	00ab7663          	bgeu	s6,a0,800057ac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x768>
800057a4:	000f4537          	lui	a0,0xf4
800057a8:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2a06>
800057ac:	0077c793          	xori	a5,a5,7
800057b0:	0280006f          	j	800057d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x794>
800057b4:	00a00513          	li	a0,10
800057b8:	0017c793          	xori	a5,a5,1
800057bc:	01c0006f          	j	800057d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x794>
800057c0:	3b9ad7b7          	lui	a5,0x3b9ad
800057c4:	a0078813          	addi	a6,a5,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab1c6>
800057c8:	010b37b3          	sltu	a5,s6,a6
800057cc:	010b6463          	bltu	s6,a6,800057d4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x790>
800057d0:	00080513          	mv	a0,a6
800057d4:	0097c793          	xori	a5,a5,9
800057d8:	00e686b3          	add	a3,a3,a4
800057dc:	f4d42c23          	sw	a3,-168(s0)
800057e0:	f8442803          	lw	a6,-124(s0)
800057e4:	010e7cb3          	and	s9,t3,a6
800057e8:	f8042883          	lw	a7,-128(s0)
800057ec:	0113fd33          	and	s10,t2,a7
800057f0:	f7442683          	lw	a3,-140(s0)
800057f4:	f6f42c23          	sw	a5,-136(s0)
800057f8:	40d786b3          	sub	a3,a5,a3
800057fc:	f8842783          	lw	a5,-120(s0)
80005800:	00f5b733          	sltu	a4,a1,a5
80005804:	40c58633          	sub	a2,a1,a2
80005808:	40f585b3          	sub	a1,a1,a5
8000580c:	fff00a13          	li	s4,-1
80005810:	f9442783          	lw	a5,-108(s0)
80005814:	41f7d793          	srai	a5,a5,0x1f
80005818:	f8f42423          	sw	a5,-120(s0)
8000581c:	f7042c03          	lw	s8,-144(s0)
80005820:	00168693          	addi	a3,a3,1
80005824:	f4d42623          	sw	a3,-180(s0)
80005828:	40e60633          	sub	a2,a2,a4
8000582c:	f6742223          	sw	t2,-156(s0)
80005830:	007586b3          	add	a3,a1,t2
80005834:	00b6b5b3          	sltu	a1,a3,a1
80005838:	f5c42e23          	sw	t3,-164(s0)
8000583c:	01c60633          	add	a2,a2,t3
80005840:	00168713          	addi	a4,a3,1
80005844:	00173693          	seqz	a3,a4
80005848:	f6e42a23          	sw	a4,-140(s0)
8000584c:	01177733          	and	a4,a4,a7
80005850:	f6e42623          	sw	a4,-148(s0)
80005854:	00d585b3          	add	a1,a1,a3
80005858:	00b605b3          	add	a1,a2,a1
8000585c:	00058d93          	mv	s11,a1
80005860:	0105fab3          	and	s5,a1,a6
80005864:	fff00993          	li	s3,-1
80005868:	00050493          	mv	s1,a0
8000586c:	f9042b83          	lw	s7,-112(s0)
80005870:	013b8bb3          	add	s7,s7,s3
80005874:	000b0513          	mv	a0,s6
80005878:	00048593          	mv	a1,s1
8000587c:	00005097          	auipc	ra,0x5
80005880:	d60080e7          	jalr	-672(ra) # 8000a5dc <__udivsi3>
80005884:	00050913          	mv	s2,a0
80005888:	00048593          	mv	a1,s1
8000588c:	00005097          	auipc	ra,0x5
80005890:	93c080e7          	jalr	-1732(ra) # 8000a1c8 <__mulsi3>
80005894:	7f4b8063          	beq	s7,s4,80006074 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x1030>
80005898:	40ab0b33          	sub	s6,s6,a0
8000589c:	03090613          	addi	a2,s2,48
800058a0:	00cc0023          	sb	a2,0(s8)
800058a4:	f8c42683          	lw	a3,-116(s0)
800058a8:	00db1533          	sll	a0,s6,a3
800058ac:	f9442583          	lw	a1,-108(s0)
800058b0:	0005c663          	bltz	a1,800058bc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x878>
800058b4:	00050593          	mv	a1,a0
800058b8:	0100006f          	j	800058c8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x884>
800058bc:	001b5593          	srli	a1,s6,0x1
800058c0:	f7c42703          	lw	a4,-132(s0)
800058c4:	00e5d5b3          	srl	a1,a1,a4
800058c8:	000d8913          	mv	s2,s11
800058cc:	f8842703          	lw	a4,-120(s0)
800058d0:	00a77533          	and	a0,a4,a0
800058d4:	019585b3          	add	a1,a1,s9
800058d8:	01a50333          	add	t1,a0,s10
800058dc:	00a333b3          	sltu	t2,t1,a0
800058e0:	007583b3          	add	t2,a1,t2
800058e4:	007d8863          	beq	s11,t2,800058f4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x8b0>
800058e8:	0123b533          	sltu	a0,t2,s2
800058ec:	00050a63          	beqz	a0,80005900 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x8bc>
800058f0:	04c0006f          	j	8000593c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x8f8>
800058f4:	f7442503          	lw	a0,-140(s0)
800058f8:	00a33533          	sltu	a0,t1,a0
800058fc:	04051063          	bnez	a0,8000593c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x8f8>
80005900:	f7842503          	lw	a0,-136(s0)
80005904:	01350533          	add	a0,a0,s3
80005908:	05450463          	beq	a0,s4,80005950 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x90c>
8000590c:	00a00593          	li	a1,10
80005910:	00048513          	mv	a0,s1
80005914:	00005097          	auipc	ra,0x5
80005918:	cc8080e7          	jalr	-824(ra) # 8000a5dc <__udivsi3>
8000591c:	fff98993          	addi	s3,s3,-1
80005920:	001c0c13          	addi	s8,s8,1
80005924:	00a00593          	li	a1,10
80005928:	f4b4f0e3          	bgeu	s1,a1,80005868 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x824>
8000592c:	8000d537          	lui	a0,0x8000d
80005930:	09850513          	addi	a0,a0,152 # 8000d098 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.60>
80005934:	00004097          	auipc	ra,0x4
80005938:	e78080e7          	jalr	-392(ra) # 800097ac <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h33ef9a5cfa7ae48aE>
8000593c:	00d496b3          	sll	a3,s1,a3
80005940:	f9442503          	lw	a0,-108(s0)
80005944:	16054463          	bltz	a0,80005aac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xa68>
80005948:	00068593          	mv	a1,a3
8000594c:	16c0006f          	j	80005ab8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xa74>
80005950:	00000d93          	li	s11,0
80005954:	41300b33          	neg	s6,s3
80005958:	00100493          	li	s1,1
8000595c:	f7042a03          	lw	s4,-144(s0)
80005960:	f6c42703          	lw	a4,-148(s0)
80005964:	0100006f          	j	80005974 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x930>
80005968:	015cb533          	sltu	a0,s9,s5
8000596c:	001b0b13          	addi	s6,s6,1
80005970:	0c051863          	bnez	a0,80005a40 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x9fc>
80005974:	f9042503          	lw	a0,-112(s0)
80005978:	70ab7a63          	bgeu	s6,a0,8000608c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x1048>
8000597c:	00070993          	mv	s3,a4
80005980:	000d8b93          	mv	s7,s11
80005984:	00048c13          	mv	s8,s1
80005988:	00a00613          	li	a2,10
8000598c:	000d0513          	mv	a0,s10
80005990:	000c8593          	mv	a1,s9
80005994:	00000693          	li	a3,0
80005998:	00005097          	auipc	ra,0x5
8000599c:	878080e7          	jalr	-1928(ra) # 8000a210 <__muldi3>
800059a0:	00050c93          	mv	s9,a0
800059a4:	00058913          	mv	s2,a1
800059a8:	00a00613          	li	a2,10
800059ac:	00048513          	mv	a0,s1
800059b0:	000d8593          	mv	a1,s11
800059b4:	00000693          	li	a3,0
800059b8:	00005097          	auipc	ra,0x5
800059bc:	858080e7          	jalr	-1960(ra) # 8000a210 <__muldi3>
800059c0:	00050493          	mv	s1,a0
800059c4:	00058d93          	mv	s11,a1
800059c8:	00a00613          	li	a2,10
800059cc:	00098513          	mv	a0,s3
800059d0:	000a8593          	mv	a1,s5
800059d4:	00000693          	li	a3,0
800059d8:	00005097          	auipc	ra,0x5
800059dc:	838080e7          	jalr	-1992(ra) # 8000a210 <__muldi3>
800059e0:	00050713          	mv	a4,a0
800059e4:	00058a93          	mv	s5,a1
800059e8:	f9442503          	lw	a0,-108(s0)
800059ec:	00054863          	bltz	a0,800059fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x9b8>
800059f0:	f8c42503          	lw	a0,-116(s0)
800059f4:	00a95533          	srl	a0,s2,a0
800059f8:	01c0006f          	j	80005a14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x9d0>
800059fc:	f8c42503          	lw	a0,-116(s0)
80005a00:	00acd533          	srl	a0,s9,a0
80005a04:	00191593          	slli	a1,s2,0x1
80005a08:	f7c42603          	lw	a2,-132(s0)
80005a0c:	00c595b3          	sll	a1,a1,a2
80005a10:	00b56533          	or	a0,a0,a1
80005a14:	f8042583          	lw	a1,-128(s0)
80005a18:	00bcfd33          	and	s10,s9,a1
80005a1c:	f8442583          	lw	a1,-124(s0)
80005a20:	00b97cb3          	and	s9,s2,a1
80005a24:	03050993          	addi	s3,a0,48
80005a28:	016a0533          	add	a0,s4,s6
80005a2c:	01350023          	sb	s3,0(a0)
80005a30:	f39a9ce3          	bne	s5,s9,80005968 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x924>
80005a34:	00ed3533          	sltu	a0,s10,a4
80005a38:	001b0b13          	addi	s6,s6,1
80005a3c:	f2050ce3          	beqz	a0,80005974 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0x930>
80005a40:	f6442583          	lw	a1,-156(s0)
80005a44:	f6042603          	lw	a2,-160(s0)
80005a48:	00c5b533          	sltu	a0,a1,a2
80005a4c:	f5c42683          	lw	a3,-164(s0)
80005a50:	f5842783          	lw	a5,-168(s0)
80005a54:	40f686b3          	sub	a3,a3,a5
80005a58:	40a686b3          	sub	a3,a3,a0
80005a5c:	40c58633          	sub	a2,a1,a2
80005a60:	00048513          	mv	a0,s1
80005a64:	000d8593          	mv	a1,s11
80005a68:	f6e42623          	sw	a4,-148(s0)
80005a6c:	00004097          	auipc	ra,0x4
80005a70:	7a4080e7          	jalr	1956(ra) # 8000a210 <__muldi3>
80005a74:	f6c42e03          	lw	t3,-148(s0)
80005a78:	00950633          	add	a2,a0,s1
80005a7c:	01ae3733          	sltu	a4,t3,s10
80005a80:	419a87b3          	sub	a5,s5,s9
80005a84:	00a636b3          	sltu	a3,a2,a0
80005a88:	40e787b3          	sub	a5,a5,a4
80005a8c:	01b58733          	add	a4,a1,s11
80005a90:	f5442303          	lw	t1,-172(s0)
80005a94:	0c678863          	beq	a5,t1,80005b64 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb20>
80005a98:	0067b7b3          	sltu	a5,a5,t1
80005a9c:	f5042383          	lw	t2,-176(s0)
80005aa0:	00d706b3          	add	a3,a4,a3
80005aa4:	0c078a63          	beqz	a5,80005b78 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb34>
80005aa8:	0ec0006f          	j	80005b94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb50>
80005aac:	0014d493          	srli	s1,s1,0x1
80005ab0:	f7c42503          	lw	a0,-132(s0)
80005ab4:	00a4d5b3          	srl	a1,s1,a0
80005ab8:	f6842f83          	lw	t6,-152(s0)
80005abc:	f7042483          	lw	s1,-144(s0)
80005ac0:	f6442783          	lw	a5,-156(s0)
80005ac4:	f6042803          	lw	a6,-160(s0)
80005ac8:	0107b533          	sltu	a0,a5,a6
80005acc:	f5c42703          	lw	a4,-164(s0)
80005ad0:	f5842883          	lw	a7,-168(s0)
80005ad4:	41170733          	sub	a4,a4,a7
80005ad8:	410782b3          	sub	t0,a5,a6
80005adc:	40a70733          	sub	a4,a4,a0
80005ae0:	00128513          	addi	a0,t0,1
80005ae4:	0012b793          	seqz	a5,t0
80005ae8:	40f708b3          	sub	a7,a4,a5
80005aec:	fff28293          	addi	t0,t0,-1
80005af0:	01138663          	beq	t2,a7,80005afc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xab8>
80005af4:	0113b7b3          	sltu	a5,t2,a7
80005af8:	0080006f          	j	80005b00 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xabc>
80005afc:	005337b3          	sltu	a5,t1,t0
80005b00:	f8842803          	lw	a6,-120(s0)
80005b04:	00d87833          	and	a6,a6,a3
80005b08:	00153f13          	seqz	t5,a0
80005b0c:	f7442e83          	lw	t4,-140(s0)
80005b10:	006eb6b3          	sltu	a3,t4,t1
80005b14:	40790e33          	sub	t3,s2,t2
80005b18:	40de06b3          	sub	a3,t3,a3
80005b1c:	406e8eb3          	sub	t4,t4,t1
80005b20:	00b68a63          	beq	a3,a1,80005b34 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xaf0>
80005b24:	00b6be33          	sltu	t3,a3,a1
80005b28:	01e70733          	add	a4,a4,t5
80005b2c:	00079a63          	bnez	a5,80005b40 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xafc>
80005b30:	01c0006f          	j	80005b4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb08>
80005b34:	010ebe33          	sltu	t3,t4,a6
80005b38:	01e70733          	add	a4,a4,t5
80005b3c:	00078863          	beqz	a5,80005b4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb08>
80005b40:	06b68663          	beq	a3,a1,80005bac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb68>
80005b44:	00b6b6b3          	sltu	a3,a3,a1
80005b48:	08068063          	beqz	a3,80005bc8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb84>
80005b4c:	00030693          	mv	a3,t1
80005b50:	00038793          	mv	a5,t2
80005b54:	12771c63          	bne	a4,t2,80005c8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc48>
80005b58:	00a6b633          	sltu	a2,a3,a0
80005b5c:	12061c63          	bnez	a2,80005c94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc50>
80005b60:	2f80006f          	j	80005e58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe14>
80005b64:	41ae07b3          	sub	a5,t3,s10
80005b68:	f5042383          	lw	t2,-176(s0)
80005b6c:	0077b7b3          	sltu	a5,a5,t2
80005b70:	00d706b3          	add	a3,a4,a3
80005b74:	02079063          	bnez	a5,80005b94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb50>
80005b78:	00953733          	sltu	a4,a0,s1
80005b7c:	41b585b3          	sub	a1,a1,s11
80005b80:	40e585b3          	sub	a1,a1,a4
80005b84:	40950533          	sub	a0,a0,s1
80005b88:	12bc8863          	beq	s9,a1,80005cb8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc74>
80005b8c:	00bcb733          	sltu	a4,s9,a1
80005b90:	12071863          	bnez	a4,80005cc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc7c>
80005b94:	000d0493          	mv	s1,s10
80005b98:	000c8913          	mv	s2,s9
80005b9c:	1f969c63          	bne	a3,s9,80005d94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd50>
80005ba0:	00c4b533          	sltu	a0,s1,a2
80005ba4:	1e051c63          	bnez	a0,80005d9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd58>
80005ba8:	3180006f          	j	80005ec0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe7c>
80005bac:	010eb6b3          	sltu	a3,t4,a6
80005bb0:	00068c63          	beqz	a3,80005bc8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb84>
80005bb4:	f99ff06f          	j	80005b4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb08>
80005bb8:	00b3beb3          	sltu	t4,t2,a1
80005bbc:	00068313          	mv	t1,a3
80005bc0:	00078393          	mv	t2,a5
80005bc4:	0c0e9263          	bnez	t4,80005c88 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc44>
80005bc8:	010306b3          	add	a3,t1,a6
80005bcc:	0066b7b3          	sltu	a5,a3,t1
80005bd0:	00b38e33          	add	t3,t2,a1
80005bd4:	00fe07b3          	add	a5,t3,a5
80005bd8:	01178863          	beq	a5,a7,80005be8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xba4>
80005bdc:	0117be33          	sltu	t3,a5,a7
80005be0:	000e0863          	beqz	t3,80005bf0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xbac>
80005be4:	0380006f          	j	80005c1c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xbd8>
80005be8:	0056be33          	sltu	t3,a3,t0
80005bec:	020e1863          	bnez	t3,80005c1c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xbd8>
80005bf0:	0062be33          	sltu	t3,t0,t1
80005bf4:	40788eb3          	sub	t4,a7,t2
80005bf8:	0056bf33          	sltu	t5,a3,t0
80005bfc:	41ce8e33          	sub	t3,t4,t3
80005c00:	41178eb3          	sub	t4,a5,a7
80005c04:	41ee8eb3          	sub	t4,t4,t5
80005c08:	01de1663          	bne	t3,t4,80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xbd0>
80005c0c:	40628e33          	sub	t3,t0,t1
80005c10:	40568eb3          	sub	t4,a3,t0
80005c14:	01de3e33          	sltu	t3,t3,t4
80005c18:	200e1463          	bnez	t3,80005e20 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xddc>
80005c1c:	fff60613          	addi	a2,a2,-1
80005c20:	00cc0023          	sb	a2,0(s8)
80005c24:	03178663          	beq	a5,a7,80005c50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc0c>
80005c28:	0117b333          	sltu	t1,a5,a7
80005c2c:	f7442e83          	lw	t4,-140(s0)
80005c30:	00deb3b3          	sltu	t2,t4,a3
80005c34:	40f90e33          	sub	t3,s2,a5
80005c38:	407e03b3          	sub	t2,t3,t2
80005c3c:	40de8eb3          	sub	t4,t4,a3
80005c40:	02b39663          	bne	t2,a1,80005c6c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc28>
80005c44:	010ebe33          	sltu	t3,t4,a6
80005c48:	02031663          	bnez	t1,80005c74 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc30>
80005c4c:	03c0006f          	j	80005c88 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc44>
80005c50:	0056b333          	sltu	t1,a3,t0
80005c54:	f7442e83          	lw	t4,-140(s0)
80005c58:	00deb3b3          	sltu	t2,t4,a3
80005c5c:	40f90e33          	sub	t3,s2,a5
80005c60:	407e03b3          	sub	t2,t3,t2
80005c64:	40de8eb3          	sub	t4,t4,a3
80005c68:	fcb38ee3          	beq	t2,a1,80005c44 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc00>
80005c6c:	00b3be33          	sltu	t3,t2,a1
80005c70:	00030c63          	beqz	t1,80005c88 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc44>
80005c74:	f4b392e3          	bne	t2,a1,80005bb8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb74>
80005c78:	010ebeb3          	sltu	t4,t4,a6
80005c7c:	00068313          	mv	t1,a3
80005c80:	00078393          	mv	t2,a5
80005c84:	f40e82e3          	beqz	t4,80005bc8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb84>
80005c88:	ecf708e3          	beq	a4,a5,80005b58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb14>
80005c8c:	00e7b633          	sltu	a2,a5,a4
80005c90:	1c060463          	beqz	a2,80005e58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe14>
80005c94:	1c0e1263          	bnez	t3,80005e58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe14>
80005c98:	01068833          	add	a6,a3,a6
80005c9c:	00d83633          	sltu	a2,a6,a3
80005ca0:	00b785b3          	add	a1,a5,a1
80005ca4:	00c585b3          	add	a1,a1,a2
80005ca8:	10e58c63          	beq	a1,a4,80005dc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd7c>
80005cac:	00e5b633          	sltu	a2,a1,a4
80005cb0:	10060c63          	beqz	a2,80005dc8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd84>
80005cb4:	1f40006f          	j	80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe64>
80005cb8:	00ad3733          	sltu	a4,s10,a0
80005cbc:	ec070ce3          	beqz	a4,80005b94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb50>
80005cc0:	016a0733          	add	a4,s4,s6
80005cc4:	0140006f          	j	80005cd8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc94>
80005cc8:	0068b833          	sltu	a6,a7,t1
80005ccc:	00048d13          	mv	s10,s1
80005cd0:	00090c93          	mv	s9,s2
80005cd4:	0a081e63          	bnez	a6,80005d90 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd4c>
80005cd8:	007d04b3          	add	s1,s10,t2
80005cdc:	01a4b933          	sltu	s2,s1,s10
80005ce0:	006c87b3          	add	a5,s9,t1
80005ce4:	01278933          	add	s2,a5,s2
80005ce8:	00b90863          	beq	s2,a1,80005cf8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xcb4>
80005cec:	00b937b3          	sltu	a5,s2,a1
80005cf0:	00078863          	beqz	a5,80005d00 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xcbc>
80005cf4:	0380006f          	j	80005d2c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xce8>
80005cf8:	00a4b7b3          	sltu	a5,s1,a0
80005cfc:	02079863          	bnez	a5,80005d2c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xce8>
80005d00:	01a537b3          	sltu	a5,a0,s10
80005d04:	41958833          	sub	a6,a1,s9
80005d08:	00a4b8b3          	sltu	a7,s1,a0
80005d0c:	40f807b3          	sub	a5,a6,a5
80005d10:	40b90833          	sub	a6,s2,a1
80005d14:	41180833          	sub	a6,a6,a7
80005d18:	01079663          	bne	a5,a6,80005d24 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xce0>
80005d1c:	41a507b3          	sub	a5,a0,s10
80005d20:	40a48833          	sub	a6,s1,a0
80005d24:	0107b7b3          	sltu	a5,a5,a6
80005d28:	10079663          	bnez	a5,80005e34 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xdf0>
80005d2c:	fff98993          	addi	s3,s3,-1
80005d30:	ff370fa3          	sb	s3,-1(a4)
80005d34:	02b90463          	beq	s2,a1,80005d5c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd18>
80005d38:	00b93833          	sltu	a6,s2,a1
80005d3c:	009e37b3          	sltu	a5,t3,s1
80005d40:	412a88b3          	sub	a7,s5,s2
80005d44:	40f888b3          	sub	a7,a7,a5
80005d48:	409e02b3          	sub	t0,t3,s1
80005d4c:	02689463          	bne	a7,t1,80005d74 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd30>
80005d50:	0072b7b3          	sltu	a5,t0,t2
80005d54:	02081463          	bnez	a6,80005d7c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd38>
80005d58:	0380006f          	j	80005d90 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd4c>
80005d5c:	00a4b833          	sltu	a6,s1,a0
80005d60:	009e37b3          	sltu	a5,t3,s1
80005d64:	412a88b3          	sub	a7,s5,s2
80005d68:	40f888b3          	sub	a7,a7,a5
80005d6c:	409e02b3          	sub	t0,t3,s1
80005d70:	fe6880e3          	beq	a7,t1,80005d50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd0c>
80005d74:	0068b7b3          	sltu	a5,a7,t1
80005d78:	00080c63          	beqz	a6,80005d90 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd4c>
80005d7c:	f46896e3          	bne	a7,t1,80005cc8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc84>
80005d80:	0072b833          	sltu	a6,t0,t2
80005d84:	00048d13          	mv	s10,s1
80005d88:	00090c93          	mv	s9,s2
80005d8c:	f40806e3          	beqz	a6,80005cd8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc94>
80005d90:	e12688e3          	beq	a3,s2,80005ba0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb5c>
80005d94:	00d93533          	sltu	a0,s2,a3
80005d98:	12050463          	beqz	a0,80005ec0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe7c>
80005d9c:	12079263          	bnez	a5,80005ec0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe7c>
80005da0:	00748533          	add	a0,s1,t2
80005da4:	009535b3          	sltu	a1,a0,s1
80005da8:	00690733          	add	a4,s2,t1
80005dac:	00b705b3          	add	a1,a4,a1
80005db0:	04d58063          	beq	a1,a3,80005df0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xdac>
80005db4:	00d5b733          	sltu	a4,a1,a3
80005db8:	04070063          	beqz	a4,80005df8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xdb4>
80005dbc:	18c0006f          	j	80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005dc0:	00a83633          	sltu	a2,a6,a0
80005dc4:	0e061263          	bnez	a2,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe64>
80005dc8:	00d53633          	sltu	a2,a0,a3
80005dcc:	40f708b3          	sub	a7,a4,a5
80005dd0:	40e58733          	sub	a4,a1,a4
80005dd4:	00a832b3          	sltu	t0,a6,a0
80005dd8:	40c885b3          	sub	a1,a7,a2
80005ddc:	40570633          	sub	a2,a4,t0
80005de0:	06c58463          	beq	a1,a2,80005e48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe04>
80005de4:	00c5b533          	sltu	a0,a1,a2
80005de8:	06051863          	bnez	a0,80005e58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe14>
80005dec:	0bc0006f          	j	80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe64>
80005df0:	00c53733          	sltu	a4,a0,a2
80005df4:	14071a63          	bnez	a4,80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005df8:	00963733          	sltu	a4,a2,s1
80005dfc:	412687b3          	sub	a5,a3,s2
80005e00:	40d586b3          	sub	a3,a1,a3
80005e04:	00c53833          	sltu	a6,a0,a2
80005e08:	40e785b3          	sub	a1,a5,a4
80005e0c:	410686b3          	sub	a3,a3,a6
80005e10:	0ad58063          	beq	a1,a3,80005eb0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe6c>
80005e14:	00d5b533          	sltu	a0,a1,a3
80005e18:	0a051463          	bnez	a0,80005ec0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe7c>
80005e1c:	12c0006f          	j	80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005e20:	00000e13          	li	t3,0
80005e24:	00030693          	mv	a3,t1
80005e28:	00038793          	mv	a5,t2
80005e2c:	e67710e3          	bne	a4,t2,80005c8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xc48>
80005e30:	d29ff06f          	j	80005b58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb14>
80005e34:	00000793          	li	a5,0
80005e38:	000d0493          	mv	s1,s10
80005e3c:	000c8913          	mv	s2,s9
80005e40:	f5969ae3          	bne	a3,s9,80005d94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xd50>
80005e44:	d5dff06f          	j	80005ba0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xb5c>
80005e48:	40d505b3          	sub	a1,a0,a3
80005e4c:	40a80533          	sub	a0,a6,a0
80005e50:	00a5b533          	sltu	a0,a1,a0
80005e54:	04050a63          	beqz	a0,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe64>
80005e58:	0026b513          	sltiu	a0,a3,2
80005e5c:	0017b593          	seqz	a1,a5
80005e60:	00a5f533          	and	a0,a1,a0
80005e64:	04051263          	bnez	a0,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe64>
80005e68:	f7442583          	lw	a1,-140(s0)
80005e6c:	ffc58513          	addi	a0,a1,-4
80005e70:	00b535b3          	sltu	a1,a0,a1
80005e74:	00b905b3          	add	a1,s2,a1
80005e78:	fff58593          	addi	a1,a1,-1
80005e7c:	02b78263          	beq	a5,a1,80005ea0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe5c>
80005e80:	00f5b533          	sltu	a0,a1,a5
80005e84:	02051263          	bnez	a0,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe64>
80005e88:	41300533          	neg	a0,s3
80005e8c:	009fa023          	sw	s1,0(t6)
80005e90:	00afa223          	sw	a0,4(t6)
80005e94:	f4c42503          	lw	a0,-180(s0)
80005e98:	00af9423          	sh	a0,8(t6)
80005e9c:	0b40006f          	j	80005f50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf0c>
80005ea0:	00d53533          	sltu	a0,a0,a3
80005ea4:	fe0502e3          	beqz	a0,80005e88 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xe44>
80005ea8:	000fa023          	sw	zero,0(t6)
80005eac:	0a40006f          	j	80005f50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf0c>
80005eb0:	409605b3          	sub	a1,a2,s1
80005eb4:	40c50533          	sub	a0,a0,a2
80005eb8:	00a5b533          	sltu	a0,a1,a0
80005ebc:	08050663          	beqz	a0,80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005ec0:	01400613          	li	a2,20
80005ec4:	000c0513          	mv	a0,s8
80005ec8:	000b8593          	mv	a1,s7
80005ecc:	00000693          	li	a3,0
80005ed0:	00004097          	auipc	ra,0x4
80005ed4:	340080e7          	jalr	832(ra) # 8000a210 <__muldi3>
80005ed8:	01258863          	beq	a1,s2,80005ee8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xea4>
80005edc:	00b93533          	sltu	a0,s2,a1
80005ee0:	00050863          	beqz	a0,80005ef0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xeac>
80005ee4:	0640006f          	j	80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005ee8:	00a4b533          	sltu	a0,s1,a0
80005eec:	04051e63          	bnez	a0,80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005ef0:	fd800613          	li	a2,-40
80005ef4:	fff00693          	li	a3,-1
80005ef8:	000c0513          	mv	a0,s8
80005efc:	000b8593          	mv	a1,s7
80005f00:	00004097          	auipc	ra,0x4
80005f04:	310080e7          	jalr	784(ra) # 8000a210 <__muldi3>
80005f08:	f6c42603          	lw	a2,-148(s0)
80005f0c:	00c50633          	add	a2,a0,a2
80005f10:	00a63533          	sltu	a0,a2,a0
80005f14:	015585b3          	add	a1,a1,s5
80005f18:	00a58533          	add	a0,a1,a0
80005f1c:	02a90263          	beq	s2,a0,80005f40 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xefc>
80005f20:	01253533          	sltu	a0,a0,s2
80005f24:	02051263          	bnez	a0,80005f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf04>
80005f28:	f6842503          	lw	a0,-152(s0)
80005f2c:	01452023          	sw	s4,0(a0)
80005f30:	01652223          	sw	s6,4(a0)
80005f34:	f4c42583          	lw	a1,-180(s0)
80005f38:	00b51423          	sh	a1,8(a0)
80005f3c:	0140006f          	j	80005f50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xf0c>
80005f40:	00963533          	sltu	a0,a2,s1
80005f44:	fe0502e3          	beqz	a0,80005f28 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E+0xee4>
80005f48:	f6842503          	lw	a0,-152(s0)
80005f4c:	00052023          	sw	zero,0(a0)
80005f50:	0bc12083          	lw	ra,188(sp)
80005f54:	0b812403          	lw	s0,184(sp)
80005f58:	0b412483          	lw	s1,180(sp)
80005f5c:	0b012903          	lw	s2,176(sp)
80005f60:	0ac12983          	lw	s3,172(sp)
80005f64:	0a812a03          	lw	s4,168(sp)
80005f68:	0a412a83          	lw	s5,164(sp)
80005f6c:	0a012b03          	lw	s6,160(sp)
80005f70:	09c12b83          	lw	s7,156(sp)
80005f74:	09812c03          	lw	s8,152(sp)
80005f78:	09412c83          	lw	s9,148(sp)
80005f7c:	09012d03          	lw	s10,144(sp)
80005f80:	08c12d83          	lw	s11,140(sp)
80005f84:	0c010113          	addi	sp,sp,192
80005f88:	00008067          	ret
80005f8c:	fa042a23          	sw	zero,-76(s0)
80005f90:	8000c737          	lui	a4,0x8000c
80005f94:	7c470713          	addi	a4,a4,1988 # 8000c7c4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.25>
80005f98:	fa840593          	addi	a1,s0,-88
80005f9c:	f9840613          	addi	a2,s0,-104
80005fa0:	fb440693          	addi	a3,s0,-76
80005fa4:	00000513          	li	a0,0
80005fa8:	00001097          	auipc	ra,0x1
80005fac:	148080e7          	jalr	328(ra) # 800070f0 <_ZN4core9panicking13assert_failed17h836042106c6d0953E>
80005fb0:	8000d537          	lui	a0,0x8000d
80005fb4:	89f50513          	addi	a0,a0,-1889 # 8000c89f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.27>
80005fb8:	8000d637          	lui	a2,0x8000d
80005fbc:	01860613          	addi	a2,a2,24 # 8000d018 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.54>
80005fc0:	01c00593          	li	a1,28
80005fc4:	00001097          	auipc	ra,0x1
80005fc8:	078080e7          	jalr	120(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80005fcc:	8000d537          	lui	a0,0x8000d
80005fd0:	8cc50513          	addi	a0,a0,-1844 # 8000c8cc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.29>
80005fd4:	8000d637          	lui	a2,0x8000d
80005fd8:	02860613          	addi	a2,a2,40 # 8000d028 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.55>
80005fdc:	01d00593          	li	a1,29
80005fe0:	00001097          	auipc	ra,0x1
80005fe4:	05c080e7          	jalr	92(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80005fe8:	8000d537          	lui	a0,0x8000d
80005fec:	8fc50513          	addi	a0,a0,-1796 # 8000c8fc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.31>
80005ff0:	8000d637          	lui	a2,0x8000d
80005ff4:	03860613          	addi	a2,a2,56 # 8000d038 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.56>
80005ff8:	01c00593          	li	a1,28
80005ffc:	00001097          	auipc	ra,0x1
80006000:	040080e7          	jalr	64(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006004:	8000d537          	lui	a0,0x8000d
80006008:	9e050513          	addi	a0,a0,-1568 # 8000c9e0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.40>
8000600c:	8000d637          	lui	a2,0x8000d
80006010:	0d860613          	addi	a2,a2,216 # 8000d0d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.64>
80006014:	03600593          	li	a1,54
80006018:	00001097          	auipc	ra,0x1
8000601c:	024080e7          	jalr	36(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006020:	8000d537          	lui	a0,0x8000d
80006024:	99850513          	addi	a0,a0,-1640 # 8000c998 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.38>
80006028:	8000d637          	lui	a2,0x8000d
8000602c:	0c860613          	addi	a2,a2,200 # 8000d0c8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.63>
80006030:	03700593          	li	a1,55
80006034:	00001097          	auipc	ra,0x1
80006038:	008080e7          	jalr	8(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
8000603c:	8000d537          	lui	a0,0x8000d
80006040:	92850513          	addi	a0,a0,-1752 # 8000c928 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.33>
80006044:	8000d637          	lui	a2,0x8000d
80006048:	04860613          	addi	a2,a2,72 # 8000d048 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.57>
8000604c:	02d00593          	li	a1,45
80006050:	00001097          	auipc	ra,0x1
80006054:	fec080e7          	jalr	-20(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006058:	8000d537          	lui	a0,0x8000d
8000605c:	05850513          	addi	a0,a0,88 # 8000d058 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.58>
80006060:	8000d637          	lui	a2,0x8000d
80006064:	08860613          	addi	a2,a2,136 # 8000d088 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.59>
80006068:	02d00593          	li	a1,45
8000606c:	00001097          	auipc	ra,0x1
80006070:	fd0080e7          	jalr	-48(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006074:	8000d637          	lui	a2,0x8000d
80006078:	0a860613          	addi	a2,a2,168 # 8000d0a8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.61>
8000607c:	f9042503          	lw	a0,-112(s0)
80006080:	00050593          	mv	a1,a0
80006084:	00001097          	auipc	ra,0x1
80006088:	000080e7          	jalr	ra # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000608c:	8000d637          	lui	a2,0x8000d
80006090:	0b860613          	addi	a2,a2,184 # 8000d0b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.62>
80006094:	000b0513          	mv	a0,s6
80006098:	f9042583          	lw	a1,-112(s0)
8000609c:	00001097          	auipc	ra,0x1
800060a0:	fe8080e7          	jalr	-24(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
800060a4:	8000d637          	lui	a2,0x8000d
800060a8:	00860613          	addi	a2,a2,8 # 8000d008 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.53>
800060ac:	05100593          	li	a1,81
800060b0:	00001097          	auipc	ra,0x1
800060b4:	fd4080e7          	jalr	-44(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

800060b8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E>:
800060b8:	f9010113          	addi	sp,sp,-112
800060bc:	06112623          	sw	ra,108(sp)
800060c0:	06812423          	sw	s0,104(sp)
800060c4:	06912223          	sw	s1,100(sp)
800060c8:	07212023          	sw	s2,96(sp)
800060cc:	05312e23          	sw	s3,92(sp)
800060d0:	05412c23          	sw	s4,88(sp)
800060d4:	05512a23          	sw	s5,84(sp)
800060d8:	05612823          	sw	s6,80(sp)
800060dc:	05712623          	sw	s7,76(sp)
800060e0:	05812423          	sw	s8,72(sp)
800060e4:	05912223          	sw	s9,68(sp)
800060e8:	05a12023          	sw	s10,64(sp)
800060ec:	03b12e23          	sw	s11,60(sp)
800060f0:	07010413          	addi	s0,sp,112
800060f4:	00070b13          	mv	s6,a4
800060f8:	0005aa03          	lw	s4,0(a1)
800060fc:	0045a483          	lw	s1,4(a1)
80006100:	009a6733          	or	a4,s4,s1
80006104:	7c070263          	beqz	a4,800068c8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x810>
80006108:	00050b93          	mv	s7,a0
8000610c:	01d4d513          	srli	a0,s1,0x1d
80006110:	7c051a63          	bnez	a0,800068e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x82c>
80006114:	7e068663          	beqz	a3,80006900 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x848>
80006118:	fac42a23          	sw	a2,-76(s0)
8000611c:	fcd42423          	sw	a3,-56(s0)
80006120:	01859503          	lh	a0,24(a1)
80006124:	001a5a93          	srli	s5,s4,0x1
80006128:	555555b7          	lui	a1,0x55555
8000612c:	33333637          	lui	a2,0x33333
80006130:	55558693          	addi	a3,a1,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
80006134:	33360613          	addi	a2,a2,819 # 33333333 <.Lline_table_start2+0x33331af9>
80006138:	0f0f15b7          	lui	a1,0xf0f1
8000613c:	f0f58593          	addi	a1,a1,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
80006140:	06049863          	bnez	s1,800061b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0xf8>
80006144:	015a6733          	or	a4,s4,s5
80006148:	00275793          	srli	a5,a4,0x2
8000614c:	00f76733          	or	a4,a4,a5
80006150:	00475793          	srli	a5,a4,0x4
80006154:	00f76733          	or	a4,a4,a5
80006158:	00875793          	srli	a5,a4,0x8
8000615c:	00f76733          	or	a4,a4,a5
80006160:	01075793          	srli	a5,a4,0x10
80006164:	00f76733          	or	a4,a4,a5
80006168:	fff74713          	not	a4,a4
8000616c:	00175793          	srli	a5,a4,0x1
80006170:	00d7f6b3          	and	a3,a5,a3
80006174:	40d70733          	sub	a4,a4,a3
80006178:	00c776b3          	and	a3,a4,a2
8000617c:	00275713          	srli	a4,a4,0x2
80006180:	00c77633          	and	a2,a4,a2
80006184:	00c68633          	add	a2,a3,a2
80006188:	00465693          	srli	a3,a2,0x4
8000618c:	00d60633          	add	a2,a2,a3
80006190:	00b675b3          	and	a1,a2,a1
80006194:	00859613          	slli	a2,a1,0x8
80006198:	00c585b3          	add	a1,a1,a2
8000619c:	01059613          	slli	a2,a1,0x10
800061a0:	00c585b3          	add	a1,a1,a2
800061a4:	0185d593          	srli	a1,a1,0x18
800061a8:	02058913          	addi	s2,a1,32
800061ac:	06c0006f          	j	80006218 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x160>
800061b0:	0014d713          	srli	a4,s1,0x1
800061b4:	00e4e733          	or	a4,s1,a4
800061b8:	00275793          	srli	a5,a4,0x2
800061bc:	00f76733          	or	a4,a4,a5
800061c0:	00475793          	srli	a5,a4,0x4
800061c4:	00f76733          	or	a4,a4,a5
800061c8:	00875793          	srli	a5,a4,0x8
800061cc:	00f76733          	or	a4,a4,a5
800061d0:	01075793          	srli	a5,a4,0x10
800061d4:	00f76733          	or	a4,a4,a5
800061d8:	fff74713          	not	a4,a4
800061dc:	00175793          	srli	a5,a4,0x1
800061e0:	00d7f6b3          	and	a3,a5,a3
800061e4:	40d70733          	sub	a4,a4,a3
800061e8:	00c776b3          	and	a3,a4,a2
800061ec:	00275713          	srli	a4,a4,0x2
800061f0:	00c77633          	and	a2,a4,a2
800061f4:	00c68633          	add	a2,a3,a2
800061f8:	00465693          	srli	a3,a2,0x4
800061fc:	00d60633          	add	a2,a2,a3
80006200:	00b675b3          	and	a1,a2,a1
80006204:	00859613          	slli	a2,a1,0x8
80006208:	00c585b3          	add	a1,a1,a2
8000620c:	01059613          	slli	a2,a1,0x10
80006210:	00c585b3          	add	a1,a1,a2
80006214:	0185d913          	srli	s2,a1,0x18
80006218:	412509b3          	sub	s3,a0,s2
8000621c:	fa000513          	li	a0,-96
80006220:	41350533          	sub	a0,a0,s3
80006224:	01051513          	slli	a0,a0,0x10
80006228:	41055513          	srai	a0,a0,0x10
8000622c:	43f50513          	addi	a0,a0,1087
80006230:	05000593          	li	a1,80
80006234:	00004097          	auipc	ra,0x4
80006238:	f94080e7          	jalr	-108(ra) # 8000a1c8 <__mulsi3>
8000623c:	000015b7          	lui	a1,0x1
80006240:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start2+0x49c>
80006244:	00005097          	auipc	ra,0x5
80006248:	13c080e7          	jalr	316(ra) # 8000b380 <__divsi3>
8000624c:	05100593          	li	a1,81
80006250:	6eb57e63          	bgeu	a0,a1,8000694c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x894>
80006254:	fe090613          	addi	a2,s2,-32
80006258:	012a15b3          	sll	a1,s4,s2
8000625c:	fb642823          	sw	s6,-80(s0)
80006260:	fb742623          	sw	s7,-84(s0)
80006264:	00064663          	bltz	a2,80006270 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x1b8>
80006268:	00058493          	mv	s1,a1
8000626c:	0140006f          	j	80006280 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x1c8>
80006270:	fff94693          	not	a3,s2
80006274:	00dad6b3          	srl	a3,s5,a3
80006278:	012494b3          	sll	s1,s1,s2
8000627c:	00d4e4b3          	or	s1,s1,a3
80006280:	00451513          	slli	a0,a0,0x4
80006284:	8000d6b7          	lui	a3,0x8000d
80006288:	ac868693          	addi	a3,a3,-1336 # 8000cac8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E>
8000628c:	00a68533          	add	a0,a3,a0
80006290:	00052a83          	lw	s5,0(a0)
80006294:	00452a03          	lw	s4,4(a0)
80006298:	00851683          	lh	a3,8(a0)
8000629c:	fcd42223          	sw	a3,-60(s0)
800062a0:	00a55503          	lhu	a0,10(a0)
800062a4:	faa42423          	sw	a0,-88(s0)
800062a8:	41f65613          	srai	a2,a2,0x1f
800062ac:	00b67b33          	and	s6,a2,a1
800062b0:	000a8513          	mv	a0,s5
800062b4:	00000593          	li	a1,0
800062b8:	000b0613          	mv	a2,s6
800062bc:	00000693          	li	a3,0
800062c0:	00004097          	auipc	ra,0x4
800062c4:	f50080e7          	jalr	-176(ra) # 8000a210 <__muldi3>
800062c8:	00058b93          	mv	s7,a1
800062cc:	000a0513          	mv	a0,s4
800062d0:	00000593          	li	a1,0
800062d4:	000b0613          	mv	a2,s6
800062d8:	00000693          	li	a3,0
800062dc:	00004097          	auipc	ra,0x4
800062e0:	f34080e7          	jalr	-204(ra) # 8000a210 <__muldi3>
800062e4:	01750bb3          	add	s7,a0,s7
800062e8:	00abb533          	sltu	a0,s7,a0
800062ec:	00a58cb3          	add	s9,a1,a0
800062f0:	000a8513          	mv	a0,s5
800062f4:	00000593          	li	a1,0
800062f8:	00048613          	mv	a2,s1
800062fc:	00000693          	li	a3,0
80006300:	00004097          	auipc	ra,0x4
80006304:	f10080e7          	jalr	-240(ra) # 8000a210 <__muldi3>
80006308:	01750d33          	add	s10,a0,s7
8000630c:	00ad3533          	sltu	a0,s10,a0
80006310:	00a58533          	add	a0,a1,a0
80006314:	00ac8db3          	add	s11,s9,a0
80006318:	000a0513          	mv	a0,s4
8000631c:	00000593          	li	a1,0
80006320:	00048613          	mv	a2,s1
80006324:	00000693          	li	a3,0
80006328:	00004097          	auipc	ra,0x4
8000632c:	ee8080e7          	jalr	-280(ra) # 8000a210 <__muldi3>
80006330:	00050b93          	mv	s7,a0
80006334:	00058c13          	mv	s8,a1
80006338:	01b50933          	add	s2,a0,s11
8000633c:	000b0513          	mv	a0,s6
80006340:	00048593          	mv	a1,s1
80006344:	00000613          	li	a2,0
80006348:	00000693          	li	a3,0
8000634c:	00004097          	auipc	ra,0x4
80006350:	ec4080e7          	jalr	-316(ra) # 8000a210 <__muldi3>
80006354:	00050493          	mv	s1,a0
80006358:	00058b13          	mv	s6,a1
8000635c:	000a8513          	mv	a0,s5
80006360:	000a0593          	mv	a1,s4
80006364:	00000613          	li	a2,0
80006368:	00000693          	li	a3,0
8000636c:	00004097          	auipc	ra,0x4
80006370:	ea4080e7          	jalr	-348(ra) # 8000a210 <__muldi3>
80006374:	009504b3          	add	s1,a0,s1
80006378:	01793733          	sltu	a4,s2,s7
8000637c:	019db633          	sltu	a2,s11,s9
80006380:	016585b3          	add	a1,a1,s6
80006384:	01fd5793          	srli	a5,s10,0x1f
80006388:	fc442683          	lw	a3,-60(s0)
8000638c:	00d989b3          	add	s3,s3,a3
80006390:	fc000813          	li	a6,-64
80006394:	009908b3          	add	a7,s2,s1
80006398:	00cc0c33          	add	s8,s8,a2
8000639c:	00a4b533          	sltu	a0,s1,a0
800063a0:	413006b3          	neg	a3,s3
800063a4:	41380633          	sub	a2,a6,s3
800063a8:	0128b833          	sltu	a6,a7,s2
800063ac:	00ec0733          	add	a4,s8,a4
800063b0:	00a585b3          	add	a1,a1,a0
800063b4:	01178533          	add	a0,a5,a7
800063b8:	03f67293          	andi	t0,a2,63
800063bc:	00b705b3          	add	a1,a4,a1
800063c0:	00f53733          	sltu	a4,a0,a5
800063c4:	fe028793          	addi	a5,t0,-32
800063c8:	010585b3          	add	a1,a1,a6
800063cc:	00e585b3          	add	a1,a1,a4
800063d0:	fff2cd93          	not	s11,t0
800063d4:	fcf42223          	sw	a5,-60(s0)
800063d8:	0007c663          	bltz	a5,800063e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x32c>
800063dc:	0055dd33          	srl	s10,a1,t0
800063e0:	0140006f          	j	800063f4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x33c>
800063e4:	00159713          	slli	a4,a1,0x1
800063e8:	01b71733          	sll	a4,a4,s11
800063ec:	00d557b3          	srl	a5,a0,a3
800063f0:	00e7ed33          	or	s10,a5,a4
800063f4:	fb042483          	lw	s1,-80(s0)
800063f8:	fc842903          	lw	s2,-56(s0)
800063fc:	fb442a83          	lw	s5,-76(s0)
80006400:	fc442703          	lw	a4,-60(s0)
80006404:	00072713          	slti	a4,a4,0
80006408:	00100793          	li	a5,1
8000640c:	00579833          	sll	a6,a5,t0
80006410:	fff70893          	addi	a7,a4,-1
80006414:	40e00733          	neg	a4,a4
80006418:	00d796b3          	sll	a3,a5,a3
8000641c:	0108f9b3          	and	s3,a7,a6
80006420:	00d77cb3          	and	s9,a4,a3
80006424:	001cb693          	seqz	a3,s9
80006428:	fffc8713          	addi	a4,s9,-1
8000642c:	40d986b3          	sub	a3,s3,a3
80006430:	fad42c23          	sw	a3,-72(s0)
80006434:	00b6fbb3          	and	s7,a3,a1
80006438:	fae42e23          	sw	a4,-68(s0)
8000643c:	00a77c33          	and	s8,a4,a0
80006440:	017c66b3          	or	a3,s8,s7
80006444:	02068863          	beqz	a3,80006474 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x3bc>
80006448:	004d5693          	srli	a3,s10,0x4
8000644c:	27100713          	li	a4,625
80006450:	fc542023          	sw	t0,-64(s0)
80006454:	04e6f663          	bgeu	a3,a4,800064a0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x3e8>
80006458:	06400a13          	li	s4,100
8000645c:	094d7463          	bgeu	s10,s4,800064e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x42c>
80006460:	00900713          	li	a4,9
80006464:	00ad3693          	sltiu	a3,s10,10
80006468:	0fa76863          	bltu	a4,s10,80006558 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4a0>
8000646c:	00100a13          	li	s4,1
80006470:	0ec0006f          	j	8000655c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4a4>
80006474:	00a00693          	li	a3,10
80006478:	0126ee63          	bltu	a3,s2,80006494 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x3dc>
8000647c:	00291693          	slli	a3,s2,0x2
80006480:	8000d737          	lui	a4,0x8000d
80006484:	16070713          	addi	a4,a4,352 # 8000d160 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.70>
80006488:	00d706b3          	add	a3,a4,a3
8000648c:	ffc6a683          	lw	a3,-4(a3)
80006490:	fadd7ce3          	bgeu	s10,a3,80006448 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x390>
80006494:	fac42503          	lw	a0,-84(s0)
80006498:	00052023          	sw	zero,0(a0)
8000649c:	3bc0006f          	j	80006858 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x7a0>
800064a0:	000f46b7          	lui	a3,0xf4
800064a4:	24068693          	addi	a3,a3,576 # f4240 <.Lline_table_start2+0xf2a06>
800064a8:	06dd7663          	bgeu	s10,a3,80006514 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x45c>
800064ac:	000186b7          	lui	a3,0x18
800064b0:	6a068a13          	addi	s4,a3,1696 # 186a0 <.Lline_table_start2+0x16e66>
800064b4:	014d36b3          	sltu	a3,s10,s4
800064b8:	014d7663          	bgeu	s10,s4,800064c4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x40c>
800064bc:	00002737          	lui	a4,0x2
800064c0:	71070a13          	addi	s4,a4,1808 # 2710 <.Lline_table_start2+0xed6>
800064c4:	0056cb13          	xori	s6,a3,5
800064c8:	fa842683          	lw	a3,-88(s0)
800064cc:	40db06b3          	sub	a3,s6,a3
800064d0:	00168693          	addi	a3,a3,1
800064d4:	01069693          	slli	a3,a3,0x10
800064d8:	4106d693          	srai	a3,a3,0x10
800064dc:	08d4ce63          	blt	s1,a3,80006578 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4c0>
800064e0:	3080006f          	j	800067e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x730>
800064e4:	3e800713          	li	a4,1000
800064e8:	3e8d3693          	sltiu	a3,s10,1000
800064ec:	00ed6463          	bltu	s10,a4,800064f4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x43c>
800064f0:	3e800a13          	li	s4,1000
800064f4:	0036cb13          	xori	s6,a3,3
800064f8:	fa842683          	lw	a3,-88(s0)
800064fc:	40db06b3          	sub	a3,s6,a3
80006500:	00168693          	addi	a3,a3,1
80006504:	01069693          	slli	a3,a3,0x10
80006508:	4106d693          	srai	a3,a3,0x10
8000650c:	06d4c663          	blt	s1,a3,80006578 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4c0>
80006510:	2d80006f          	j	800067e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x730>
80006514:	05f5e6b7          	lui	a3,0x5f5e
80006518:	10068a13          	addi	s4,a3,256 # 5f5e100 <.Lline_table_start2+0x5f5c8c6>
8000651c:	294d7e63          	bgeu	s10,s4,800067b8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x700>
80006520:	009896b7          	lui	a3,0x989
80006524:	68068a13          	addi	s4,a3,1664 # 989680 <.Lline_table_start2+0x987e46>
80006528:	014d36b3          	sltu	a3,s10,s4
8000652c:	014d7663          	bgeu	s10,s4,80006538 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x480>
80006530:	000f4737          	lui	a4,0xf4
80006534:	24070a13          	addi	s4,a4,576 # f4240 <.Lline_table_start2+0xf2a06>
80006538:	0076cb13          	xori	s6,a3,7
8000653c:	fa842683          	lw	a3,-88(s0)
80006540:	40db06b3          	sub	a3,s6,a3
80006544:	00168693          	addi	a3,a3,1
80006548:	01069693          	slli	a3,a3,0x10
8000654c:	4106d693          	srai	a3,a3,0x10
80006550:	02d4c463          	blt	s1,a3,80006578 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4c0>
80006554:	2940006f          	j	800067e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x730>
80006558:	00a00a13          	li	s4,10
8000655c:	0016cb13          	xori	s6,a3,1
80006560:	fa842683          	lw	a3,-88(s0)
80006564:	40db06b3          	sub	a3,s6,a3
80006568:	00168693          	addi	a3,a3,1
8000656c:	01069693          	slli	a3,a3,0x10
80006570:	4106d693          	srai	a3,a3,0x10
80006574:	26d4da63          	bge	s1,a3,800067e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x730>
80006578:	fbb42423          	sw	s11,-88(s0)
8000657c:	40968533          	sub	a0,a3,s1
80006580:	01061613          	slli	a2,a2,0x10
80006584:	fb342023          	sw	s3,-96(s0)
80006588:	f9942e23          	sw	s9,-100(s0)
8000658c:	f8d42c23          	sw	a3,-104(s0)
80006590:	01256663          	bltu	a0,s2,8000659c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4e4>
80006594:	00090d93          	mv	s11,s2
80006598:	00c0006f          	j	800065a4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4ec>
8000659c:	01051513          	slli	a0,a0,0x10
800065a0:	41055d93          	srai	s11,a0,0x10
800065a4:	01065613          	srli	a2,a2,0x10
800065a8:	fac42223          	sw	a2,-92(s0)
800065ac:	fff00993          	li	s3,-1
800065b0:	fff00c93          	li	s9,-1
800065b4:	000a0493          	mv	s1,s4
800065b8:	01990933          	add	s2,s2,s9
800065bc:	000d0513          	mv	a0,s10
800065c0:	000a0593          	mv	a1,s4
800065c4:	00004097          	auipc	ra,0x4
800065c8:	018080e7          	jalr	24(ra) # 8000a5dc <__udivsi3>
800065cc:	00050a13          	mv	s4,a0
800065d0:	00048593          	mv	a1,s1
800065d4:	00004097          	auipc	ra,0x4
800065d8:	bf4080e7          	jalr	-1036(ra) # 8000a1c8 <__mulsi3>
800065dc:	35390063          	beq	s2,s3,8000691c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x864>
800065e0:	40ad0d33          	sub	s10,s10,a0
800065e4:	030a0513          	addi	a0,s4,48
800065e8:	019d85b3          	add	a1,s11,s9
800065ec:	00aa8023          	sb	a0,0(s5)
800065f0:	04058263          	beqz	a1,80006634 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x57c>
800065f4:	019b0533          	add	a0,s6,s9
800065f8:	fc842903          	lw	s2,-56(s0)
800065fc:	05350a63          	beq	a0,s3,80006650 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x598>
80006600:	00a00593          	li	a1,10
80006604:	00048513          	mv	a0,s1
80006608:	00004097          	auipc	ra,0x4
8000660c:	fd4080e7          	jalr	-44(ra) # 8000a5dc <__udivsi3>
80006610:	00050a13          	mv	s4,a0
80006614:	fffc8c93          	addi	s9,s9,-1
80006618:	001a8a93          	addi	s5,s5,1
8000661c:	00a00513          	li	a0,10
80006620:	f8a4fae3          	bgeu	s1,a0,800065b4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4fc>
80006624:	8000d537          	lui	a0,0x8000d
80006628:	18850513          	addi	a0,a0,392 # 8000d188 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.71>
8000662c:	00003097          	auipc	ra,0x3
80006630:	180080e7          	jalr	384(ra) # 800097ac <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h33ef9a5cfa7ae48aE>
80006634:	fc042303          	lw	t1,-64(s0)
80006638:	006d1733          	sll	a4,s10,t1
8000663c:	fc842603          	lw	a2,-56(s0)
80006640:	fc442503          	lw	a0,-60(s0)
80006644:	10054663          	bltz	a0,80006750 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x698>
80006648:	00070693          	mv	a3,a4
8000664c:	1100006f          	j	8000675c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x6a4>
80006650:	00000a13          	li	s4,0
80006654:	fa442503          	lw	a0,-92(s0)
80006658:	fff50513          	addi	a0,a0,-1
8000665c:	419004b3          	neg	s1,s9
80006660:	00100d13          	li	s10,1
80006664:	03f57b13          	andi	s6,a0,63
80006668:	fffb4513          	not	a0,s6
8000666c:	faa42223          	sw	a0,-92(s0)
80006670:	fe0b0c93          	addi	s9,s6,-32
80006674:	41fcd993          	srai	s3,s9,0x1f
80006678:	fb442a83          	lw	s5,-76(s0)
8000667c:	0300006f          	j	800066ac <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x5f4>
80006680:	fc042503          	lw	a0,-64(s0)
80006684:	00abd533          	srl	a0,s7,a0
80006688:	fb842583          	lw	a1,-72(s0)
8000668c:	00bbfbb3          	and	s7,s7,a1
80006690:	fbc42583          	lw	a1,-68(s0)
80006694:	00bc7c33          	and	s8,s8,a1
80006698:	03050513          	addi	a0,a0,48
8000669c:	009a85b3          	add	a1,s5,s1
800066a0:	00148493          	addi	s1,s1,1
800066a4:	00a58023          	sb	a0,0(a1)
800066a8:	1e9d8663          	beq	s11,s1,80006894 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x7dc>
800066ac:	016a5533          	srl	a0,s4,s6
800066b0:	000ccc63          	bltz	s9,800066c8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x610>
800066b4:	00050593          	mv	a1,a0
800066b8:	00a9f533          	and	a0,s3,a0
800066bc:	00a5e533          	or	a0,a1,a0
800066c0:	02050463          	beqz	a0,800066e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x630>
800066c4:	dd1ff06f          	j	80006494 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x3dc>
800066c8:	016d55b3          	srl	a1,s10,s6
800066cc:	001a1613          	slli	a2,s4,0x1
800066d0:	fa442683          	lw	a3,-92(s0)
800066d4:	00d61633          	sll	a2,a2,a3
800066d8:	00c5e5b3          	or	a1,a1,a2
800066dc:	00a9f533          	and	a0,s3,a0
800066e0:	00a5e533          	or	a0,a1,a0
800066e4:	da0518e3          	bnez	a0,80006494 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x3dc>
800066e8:	2524f663          	bgeu	s1,s2,80006934 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x87c>
800066ec:	00a00613          	li	a2,10
800066f0:	000c0513          	mv	a0,s8
800066f4:	000b8593          	mv	a1,s7
800066f8:	00000693          	li	a3,0
800066fc:	00004097          	auipc	ra,0x4
80006700:	b14080e7          	jalr	-1260(ra) # 8000a210 <__muldi3>
80006704:	00050c13          	mv	s8,a0
80006708:	00058b93          	mv	s7,a1
8000670c:	00a00613          	li	a2,10
80006710:	000d0513          	mv	a0,s10
80006714:	000a0593          	mv	a1,s4
80006718:	00000693          	li	a3,0
8000671c:	00004097          	auipc	ra,0x4
80006720:	af4080e7          	jalr	-1292(ra) # 8000a210 <__muldi3>
80006724:	00050d13          	mv	s10,a0
80006728:	00058a13          	mv	s4,a1
8000672c:	fc442503          	lw	a0,-60(s0)
80006730:	f40558e3          	bgez	a0,80006680 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x5c8>
80006734:	fc042503          	lw	a0,-64(s0)
80006738:	00ac5533          	srl	a0,s8,a0
8000673c:	001b9593          	slli	a1,s7,0x1
80006740:	fa842603          	lw	a2,-88(s0)
80006744:	00c595b3          	sll	a1,a1,a2
80006748:	00b56533          	or	a0,a0,a1
8000674c:	f3dff06f          	j	80006688 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x5d0>
80006750:	001d5513          	srli	a0,s10,0x1
80006754:	fa842583          	lw	a1,-88(s0)
80006758:	00b556b3          	srl	a3,a0,a1
8000675c:	fb042783          	lw	a5,-80(s0)
80006760:	fb442583          	lw	a1,-76(s0)
80006764:	fa042f83          	lw	t6,-96(s0)
80006768:	f9c42f03          	lw	t5,-100(s0)
8000676c:	fc442503          	lw	a0,-60(s0)
80006770:	41f55293          	srai	t0,a0,0x1f
80006774:	017686b3          	add	a3,a3,s7
80006778:	00e2f733          	and	a4,t0,a4
8000677c:	01870833          	add	a6,a4,s8
80006780:	00e838b3          	sltu	a7,a6,a4
80006784:	011688b3          	add	a7,a3,a7
80006788:	006496b3          	sll	a3,s1,t1
8000678c:	00054663          	bltz	a0,80006798 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x6e0>
80006790:	00068e93          	mv	t4,a3
80006794:	0100006f          	j	800067a4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x6ec>
80006798:	0014d493          	srli	s1,s1,0x1
8000679c:	fa842503          	lw	a0,-88(s0)
800067a0:	00a4deb3          	srl	t4,s1,a0
800067a4:	fac42503          	lw	a0,-84(s0)
800067a8:	00d2fe33          	and	t3,t0,a3
800067ac:	000d8693          	mv	a3,s11
800067b0:	f9842703          	lw	a4,-104(s0)
800067b4:	09c0006f          	j	80006850 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x798>
800067b8:	3b9ad6b7          	lui	a3,0x3b9ad
800067bc:	a0068713          	addi	a4,a3,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab1c6>
800067c0:	00ed36b3          	sltu	a3,s10,a4
800067c4:	00ed6463          	bltu	s10,a4,800067cc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x714>
800067c8:	00070a13          	mv	s4,a4
800067cc:	0096cb13          	xori	s6,a3,9
800067d0:	fa842683          	lw	a3,-88(s0)
800067d4:	40db06b3          	sub	a3,s6,a3
800067d8:	00168693          	addi	a3,a3,1
800067dc:	01069693          	slli	a3,a3,0x10
800067e0:	4106d693          	srai	a3,a3,0x10
800067e4:	d8d4cae3          	blt	s1,a3,80006578 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x4c0>
800067e8:	00068b13          	mv	s6,a3
800067ec:	00a00613          	li	a2,10
800067f0:	00000693          	li	a3,0
800067f4:	00004097          	auipc	ra,0x4
800067f8:	6ec080e7          	jalr	1772(ra) # 8000aee0 <__udivdi3>
800067fc:	00050813          	mv	a6,a0
80006800:	00058893          	mv	a7,a1
80006804:	fc042503          	lw	a0,-64(s0)
80006808:	00aa1633          	sll	a2,s4,a0
8000680c:	fc442503          	lw	a0,-60(s0)
80006810:	00054663          	bltz	a0,8000681c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x764>
80006814:	00060e93          	mv	t4,a2
80006818:	00c0006f          	j	80006824 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x76c>
8000681c:	001a5593          	srli	a1,s4,0x1
80006820:	01b5deb3          	srl	t4,a1,s11
80006824:	fac42503          	lw	a0,-84(s0)
80006828:	fc442583          	lw	a1,-60(s0)
8000682c:	41f5d593          	srai	a1,a1,0x1f
80006830:	00c5fe33          	and	t3,a1,a2
80006834:	000a8593          	mv	a1,s5
80006838:	00090613          	mv	a2,s2
8000683c:	00000693          	li	a3,0
80006840:	000b0713          	mv	a4,s6
80006844:	00048793          	mv	a5,s1
80006848:	000c8f13          	mv	t5,s9
8000684c:	00098f93          	mv	t6,s3
80006850:	00000097          	auipc	ra,0x0
80006854:	110080e7          	jalr	272(ra) # 80006960 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E>
80006858:	06c12083          	lw	ra,108(sp)
8000685c:	06812403          	lw	s0,104(sp)
80006860:	06412483          	lw	s1,100(sp)
80006864:	06012903          	lw	s2,96(sp)
80006868:	05c12983          	lw	s3,92(sp)
8000686c:	05812a03          	lw	s4,88(sp)
80006870:	05412a83          	lw	s5,84(sp)
80006874:	05012b03          	lw	s6,80(sp)
80006878:	04c12b83          	lw	s7,76(sp)
8000687c:	04812c03          	lw	s8,72(sp)
80006880:	04412c83          	lw	s9,68(sp)
80006884:	04012d03          	lw	s10,64(sp)
80006888:	03c12d83          	lw	s11,60(sp)
8000688c:	07010113          	addi	sp,sp,112
80006890:	00008067          	ret
80006894:	fac42503          	lw	a0,-84(s0)
80006898:	000a8593          	mv	a1,s5
8000689c:	00090613          	mv	a2,s2
800068a0:	000d8693          	mv	a3,s11
800068a4:	f9842703          	lw	a4,-104(s0)
800068a8:	fb042783          	lw	a5,-80(s0)
800068ac:	000c0813          	mv	a6,s8
800068b0:	000b8893          	mv	a7,s7
800068b4:	f9c42e03          	lw	t3,-100(s0)
800068b8:	fa042e83          	lw	t4,-96(s0)
800068bc:	000d0f13          	mv	t5,s10
800068c0:	000a0f93          	mv	t6,s4
800068c4:	f8dff06f          	j	80006850 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E+0x798>
800068c8:	8000d537          	lui	a0,0x8000d
800068cc:	89f50513          	addi	a0,a0,-1889 # 8000c89f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.27>
800068d0:	8000d637          	lui	a2,0x8000d
800068d4:	10c60613          	addi	a2,a2,268 # 8000d10c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.66>
800068d8:	01c00593          	li	a1,28
800068dc:	00000097          	auipc	ra,0x0
800068e0:	760080e7          	jalr	1888(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
800068e4:	8000d537          	lui	a0,0x8000d
800068e8:	11c50513          	addi	a0,a0,284 # 8000d11c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.67>
800068ec:	8000d637          	lui	a2,0x8000d
800068f0:	14060613          	addi	a2,a2,320 # 8000d140 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.68>
800068f4:	02400593          	li	a1,36
800068f8:	00000097          	auipc	ra,0x0
800068fc:	744080e7          	jalr	1860(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006900:	8000d537          	lui	a0,0x8000d
80006904:	0e850513          	addi	a0,a0,232 # 8000d0e8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.65>
80006908:	8000d637          	lui	a2,0x8000d
8000690c:	15060613          	addi	a2,a2,336 # 8000d150 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.69>
80006910:	02100593          	li	a1,33
80006914:	00000097          	auipc	ra,0x0
80006918:	728080e7          	jalr	1832(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
8000691c:	8000d637          	lui	a2,0x8000d
80006920:	19860613          	addi	a2,a2,408 # 8000d198 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.72>
80006924:	fc842503          	lw	a0,-56(s0)
80006928:	00050593          	mv	a1,a0
8000692c:	00000097          	auipc	ra,0x0
80006930:	758080e7          	jalr	1880(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80006934:	8000d637          	lui	a2,0x8000d
80006938:	1a860613          	addi	a2,a2,424 # 8000d1a8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.73>
8000693c:	00048513          	mv	a0,s1
80006940:	00090593          	mv	a1,s2
80006944:	00000097          	auipc	ra,0x0
80006948:	740080e7          	jalr	1856(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000694c:	8000d637          	lui	a2,0x8000d
80006950:	00860613          	addi	a2,a2,8 # 8000d008 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.53>
80006954:	05100593          	li	a1,81
80006958:	00000097          	auipc	ra,0x0
8000695c:	72c080e7          	jalr	1836(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

80006960 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E>:
80006960:	fd010113          	addi	sp,sp,-48
80006964:	02112623          	sw	ra,44(sp)
80006968:	02812423          	sw	s0,40(sp)
8000696c:	02912223          	sw	s1,36(sp)
80006970:	03212023          	sw	s2,32(sp)
80006974:	01312e23          	sw	s3,28(sp)
80006978:	01412c23          	sw	s4,24(sp)
8000697c:	01512a23          	sw	s5,20(sp)
80006980:	01612823          	sw	s6,16(sp)
80006984:	01712623          	sw	s7,12(sp)
80006988:	01812423          	sw	s8,8(sp)
8000698c:	03010413          	addi	s0,sp,48
80006990:	01fe8863          	beq	t4,t6,800069a0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x40>
80006994:	01dfb2b3          	sltu	t0,t6,t4
80006998:	00029863          	bnez	t0,800069a8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x48>
8000699c:	19c0006f          	j	80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
800069a0:	01cf32b3          	sltu	t0,t5,t3
800069a4:	18028a63          	beqz	t0,80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
800069a8:	01ee32b3          	sltu	t0,t3,t5
800069ac:	41fe8333          	sub	t1,t4,t6
800069b0:	405302b3          	sub	t0,t1,t0
800069b4:	01f28863          	beq	t0,t6,800069c4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x64>
800069b8:	005fb2b3          	sltu	t0,t6,t0
800069bc:	00029a63          	bnez	t0,800069d0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x70>
800069c0:	1780006f          	j	80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
800069c4:	41ee02b3          	sub	t0,t3,t5
800069c8:	005f32b3          	sltu	t0,t5,t0
800069cc:	16028663          	beqz	t0,80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
800069d0:	010e32b3          	sltu	t0,t3,a6
800069d4:	411e8333          	sub	t1,t4,a7
800069d8:	405302b3          	sub	t0,t1,t0
800069dc:	01128863          	beq	t0,a7,800069ec <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x8c>
800069e0:	0058b2b3          	sltu	t0,a7,t0
800069e4:	00029a63          	bnez	t0,800069f8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x98>
800069e8:	0740006f          	j	80006a5c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0xfc>
800069ec:	410e02b3          	sub	t0,t3,a6
800069f0:	005832b3          	sltu	t0,a6,t0
800069f4:	06028463          	beqz	t0,80006a5c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0xfc>
800069f8:	01f85313          	srli	t1,a6,0x1f
800069fc:	00189393          	slli	t2,a7,0x1
80006a00:	00181293          	slli	t0,a6,0x1
80006a04:	01ff5493          	srli	s1,t5,0x1f
80006a08:	0063e333          	or	t1,t2,t1
80006a0c:	005e33b3          	sltu	t2,t3,t0
80006a10:	406e8333          	sub	t1,t4,t1
80006a14:	40730333          	sub	t1,t1,t2
80006a18:	001f9393          	slli	t2,t6,0x1
80006a1c:	0093e3b3          	or	t2,t2,s1
80006a20:	02730663          	beq	t1,t2,80006a4c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0xec>
80006a24:	007332b3          	sltu	t0,t1,t2
80006a28:	02029a63          	bnez	t0,80006a5c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0xfc>
80006a2c:	1cd67863          	bgeu	a2,a3,80006bfc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x29c>
80006a30:	8000d737          	lui	a4,0x8000d
80006a34:	1d870713          	addi	a4,a4,472 # 8000d1d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.76>
80006a38:	00068513          	mv	a0,a3
80006a3c:	00060593          	mv	a1,a2
80006a40:	00070613          	mv	a2,a4
80006a44:	00002097          	auipc	ra,0x2
80006a48:	500080e7          	jalr	1280(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80006a4c:	405e02b3          	sub	t0,t3,t0
80006a50:	001f1313          	slli	t1,t5,0x1
80006a54:	0062b2b3          	sltu	t0,t0,t1
80006a58:	fc028ae3          	beqz	t0,80006a2c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0xcc>
80006a5c:	01f88863          	beq	a7,t6,80006a6c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x10c>
80006a60:	011fb2b3          	sltu	t0,t6,a7
80006a64:	00029863          	bnez	t0,80006a74 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x114>
80006a68:	0d00006f          	j	80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
80006a6c:	010f32b3          	sltu	t0,t5,a6
80006a70:	0c028463          	beqz	t0,80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
80006a74:	01e832b3          	sltu	t0,a6,t5
80006a78:	41f888b3          	sub	a7,a7,t6
80006a7c:	41e80833          	sub	a6,a6,t5
80006a80:	405888b3          	sub	a7,a7,t0
80006a84:	411e82b3          	sub	t0,t4,a7
80006a88:	010e3333          	sltu	t1,t3,a6
80006a8c:	406282b3          	sub	t0,t0,t1
80006a90:	09128e63          	beq	t0,a7,80006b2c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1cc>
80006a94:	0058b833          	sltu	a6,a7,t0
80006a98:	0a081063          	bnez	a6,80006b38 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1d8>
80006a9c:	16d66863          	bltu	a2,a3,80006c0c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x2ac>
80006aa0:	00000893          	li	a7,0
80006aa4:	00d584b3          	add	s1,a1,a3
80006aa8:	fff00813          	li	a6,-1
80006aac:	03900313          	li	t1,57
80006ab0:	00058293          	mv	t0,a1
80006ab4:	0b168c63          	beq	a3,a7,80006b6c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x20c>
80006ab8:	00d283b3          	add	t2,t0,a3
80006abc:	fff3c383          	lbu	t2,-1(t2)
80006ac0:	00188893          	addi	a7,a7,1
80006ac4:	00180813          	addi	a6,a6,1
80006ac8:	fff28293          	addi	t0,t0,-1
80006acc:	fe6384e3          	beq	t2,t1,80006ab4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x154>
80006ad0:	00d287b3          	add	a5,t0,a3
80006ad4:	0007c883          	lbu	a7,0(a5)
80006ad8:	00188893          	addi	a7,a7,1
80006adc:	410682b3          	sub	t0,a3,a6
80006ae0:	01178023          	sb	a7,0(a5)
80006ae4:	10d2fa63          	bgeu	t0,a3,80006bf8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x298>
80006ae8:	00178793          	addi	a5,a5,1
80006aec:	00058493          	mv	s1,a1
80006af0:	03000593          	li	a1,48
80006af4:	00050913          	mv	s2,a0
80006af8:	00078513          	mv	a0,a5
80006afc:	00060993          	mv	s3,a2
80006b00:	00080613          	mv	a2,a6
80006b04:	00068a13          	mv	s4,a3
80006b08:	00070a93          	mv	s5,a4
80006b0c:	00005097          	auipc	ra,0x5
80006b10:	8d8080e7          	jalr	-1832(ra) # 8000b3e4 <memset>
80006b14:	00048593          	mv	a1,s1
80006b18:	000a8713          	mv	a4,s5
80006b1c:	00090513          	mv	a0,s2
80006b20:	00098613          	mv	a2,s3
80006b24:	000a0693          	mv	a3,s4
80006b28:	0d00006f          	j	80006bf8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x298>
80006b2c:	410e08b3          	sub	a7,t3,a6
80006b30:	01183833          	sltu	a6,a6,a7
80006b34:	f60804e3          	beqz	a6,80006a9c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x13c>
80006b38:	00052023          	sw	zero,0(a0)
80006b3c:	02c12083          	lw	ra,44(sp)
80006b40:	02812403          	lw	s0,40(sp)
80006b44:	02412483          	lw	s1,36(sp)
80006b48:	02012903          	lw	s2,32(sp)
80006b4c:	01c12983          	lw	s3,28(sp)
80006b50:	01812a03          	lw	s4,24(sp)
80006b54:	01412a83          	lw	s5,20(sp)
80006b58:	01012b03          	lw	s6,16(sp)
80006b5c:	00c12b83          	lw	s7,12(sp)
80006b60:	00812c03          	lw	s8,8(sp)
80006b64:	03010113          	addi	sp,sp,48
80006b68:	00008067          	ret
80006b6c:	06068263          	beqz	a3,80006bd0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x270>
80006b70:	03100893          	li	a7,49
80006b74:	fff68813          	addi	a6,a3,-1
80006b78:	01158023          	sb	a7,0(a1)
80006b7c:	04080e63          	beqz	a6,80006bd8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x278>
80006b80:	00158893          	addi	a7,a1,1
80006b84:	00058993          	mv	s3,a1
80006b88:	03000593          	li	a1,48
80006b8c:	03000913          	li	s2,48
80006b90:	00050a13          	mv	s4,a0
80006b94:	00088513          	mv	a0,a7
80006b98:	00060a93          	mv	s5,a2
80006b9c:	00080613          	mv	a2,a6
80006ba0:	00068b13          	mv	s6,a3
80006ba4:	00070c13          	mv	s8,a4
80006ba8:	00078b93          	mv	s7,a5
80006bac:	00005097          	auipc	ra,0x5
80006bb0:	838080e7          	jalr	-1992(ra) # 8000b3e4 <memset>
80006bb4:	000b8793          	mv	a5,s7
80006bb8:	00098593          	mv	a1,s3
80006bbc:	000c0713          	mv	a4,s8
80006bc0:	000a0513          	mv	a0,s4
80006bc4:	000a8613          	mv	a2,s5
80006bc8:	000b0693          	mv	a3,s6
80006bcc:	0100006f          	j	80006bdc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x27c>
80006bd0:	03100913          	li	s2,49
80006bd4:	0080006f          	j	80006bdc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x27c>
80006bd8:	03000913          	li	s2,48
80006bdc:	00170713          	addi	a4,a4,1
80006be0:	01071713          	slli	a4,a4,0x10
80006be4:	41075713          	srai	a4,a4,0x10
80006be8:	00c6f863          	bgeu	a3,a2,80006bf8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x298>
80006bec:	00e7d663          	bge	a5,a4,80006bf8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x298>
80006bf0:	01248023          	sb	s2,0(s1)
80006bf4:	00168693          	addi	a3,a3,1
80006bf8:	02d66863          	bltu	a2,a3,80006c28 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x2c8>
80006bfc:	00b52023          	sw	a1,0(a0)
80006c00:	00d52223          	sw	a3,4(a0)
80006c04:	00e51423          	sh	a4,8(a0)
80006c08:	f35ff06f          	j	80006b3c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h198474849d1a10a4E+0x1dc>
80006c0c:	8000d737          	lui	a4,0x8000d
80006c10:	1b870713          	addi	a4,a4,440 # 8000d1b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.74>
80006c14:	00068513          	mv	a0,a3
80006c18:	00060593          	mv	a1,a2
80006c1c:	00070613          	mv	a2,a4
80006c20:	00002097          	auipc	ra,0x2
80006c24:	324080e7          	jalr	804(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>
80006c28:	8000d737          	lui	a4,0x8000d
80006c2c:	1c870713          	addi	a4,a4,456 # 8000d1c8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.75>
80006c30:	00068513          	mv	a0,a3
80006c34:	00060593          	mv	a1,a2
80006c38:	00070613          	mv	a2,a4
80006c3c:	00002097          	auipc	ra,0x2
80006c40:	308080e7          	jalr	776(ra) # 80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>

80006c44 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E>:
80006c44:	ff010113          	addi	sp,sp,-16
80006c48:	00112623          	sw	ra,12(sp)
80006c4c:	00812423          	sw	s0,8(sp)
80006c50:	01010413          	addi	s0,sp,16
80006c54:	12058663          	beqz	a1,80006d80 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x13c>
80006c58:	00054803          	lbu	a6,0(a0)
80006c5c:	03000893          	li	a7,48
80006c60:	1308fe63          	bgeu	a7,a6,80006d9c <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x158>
80006c64:	00300813          	li	a6,3
80006c68:	14f87863          	bgeu	a6,a5,80006db8 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x174>
80006c6c:	00200813          	li	a6,2
80006c70:	01071023          	sh	a6,0(a4)
80006c74:	04c05663          	blez	a2,80006cc0 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x7c>
80006c78:	00a72223          	sw	a0,4(a4)
80006c7c:	08b67e63          	bgeu	a2,a1,80006d18 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0xd4>
80006c80:	00200793          	li	a5,2
80006c84:	8000d837          	lui	a6,0x8000d
80006c88:	28080813          	addi	a6,a6,640 # 8000d280 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.83>
80006c8c:	00100893          	li	a7,1
80006c90:	40c585b3          	sub	a1,a1,a2
80006c94:	00c50533          	add	a0,a0,a2
80006c98:	00c72423          	sw	a2,8(a4)
80006c9c:	00f71623          	sh	a5,12(a4)
80006ca0:	01072823          	sw	a6,16(a4)
80006ca4:	01172a23          	sw	a7,20(a4)
80006ca8:	00f71c23          	sh	a5,24(a4)
80006cac:	00a72e23          	sw	a0,28(a4)
80006cb0:	02b72023          	sw	a1,32(a4)
80006cb4:	04d5f663          	bgeu	a1,a3,80006d00 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0xbc>
80006cb8:	40b686b3          	sub	a3,a3,a1
80006cbc:	08c0006f          	j	80006d48 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x104>
80006cc0:	40c007b3          	neg	a5,a2
80006cc4:	8000d8b7          	lui	a7,0x8000d
80006cc8:	28188893          	addi	a7,a7,641 # 8000d281 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.84>
80006ccc:	01071c23          	sh	a6,24(a4)
80006cd0:	00a72e23          	sw	a0,28(a4)
80006cd4:	02b72023          	sw	a1,32(a4)
80006cd8:	01172223          	sw	a7,4(a4)
80006cdc:	01072423          	sw	a6,8(a4)
80006ce0:	00071623          	sh	zero,12(a4)
80006ce4:	00f72823          	sw	a5,16(a4)
80006ce8:	00d5fc63          	bgeu	a1,a3,80006d00 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0xbc>
80006cec:	40b686b3          	sub	a3,a3,a1
80006cf0:	00300593          	li	a1,3
80006cf4:	06d7f063          	bgeu	a5,a3,80006d54 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x110>
80006cf8:	00c686b3          	add	a3,a3,a2
80006cfc:	04c0006f          	j	80006d48 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x104>
80006d00:	00300593          	li	a1,3
80006d04:	00070513          	mv	a0,a4
80006d08:	00c12083          	lw	ra,12(sp)
80006d0c:	00812403          	lw	s0,8(sp)
80006d10:	01010113          	addi	sp,sp,16
80006d14:	00008067          	ret
80006d18:	40b60633          	sub	a2,a2,a1
80006d1c:	00b72423          	sw	a1,8(a4)
80006d20:	00071623          	sh	zero,12(a4)
80006d24:	00c72823          	sw	a2,16(a4)
80006d28:	04068063          	beqz	a3,80006d68 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E+0x124>
80006d2c:	00200513          	li	a0,2
80006d30:	8000d5b7          	lui	a1,0x8000d
80006d34:	28058593          	addi	a1,a1,640 # 8000d280 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.83>
80006d38:	00100613          	li	a2,1
80006d3c:	00a71c23          	sh	a0,24(a4)
80006d40:	00b72e23          	sw	a1,28(a4)
80006d44:	02c72023          	sw	a2,32(a4)
80006d48:	02071223          	sh	zero,36(a4)
80006d4c:	02d72423          	sw	a3,40(a4)
80006d50:	00400593          	li	a1,4
80006d54:	00070513          	mv	a0,a4
80006d58:	00c12083          	lw	ra,12(sp)
80006d5c:	00812403          	lw	s0,8(sp)
80006d60:	01010113          	addi	sp,sp,16
80006d64:	00008067          	ret
80006d68:	00200593          	li	a1,2
80006d6c:	00070513          	mv	a0,a4
80006d70:	00c12083          	lw	ra,12(sp)
80006d74:	00812403          	lw	s0,8(sp)
80006d78:	01010113          	addi	sp,sp,16
80006d7c:	00008067          	ret
80006d80:	8000d537          	lui	a0,0x8000d
80006d84:	0e850513          	addi	a0,a0,232 # 8000d0e8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.65>
80006d88:	8000d637          	lui	a2,0x8000d
80006d8c:	20c60613          	addi	a2,a2,524 # 8000d20c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.78>
80006d90:	02100593          	li	a1,33
80006d94:	00000097          	auipc	ra,0x0
80006d98:	2a8080e7          	jalr	680(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006d9c:	8000d537          	lui	a0,0x8000d
80006da0:	21c50513          	addi	a0,a0,540 # 8000d21c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.79>
80006da4:	8000d637          	lui	a2,0x8000d
80006da8:	23c60613          	addi	a2,a2,572 # 8000d23c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.80>
80006dac:	01f00593          	li	a1,31
80006db0:	00000097          	auipc	ra,0x0
80006db4:	28c080e7          	jalr	652(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80006db8:	8000d537          	lui	a0,0x8000d
80006dbc:	24c50513          	addi	a0,a0,588 # 8000d24c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.81>
80006dc0:	8000d637          	lui	a2,0x8000d
80006dc4:	27060613          	addi	a2,a2,624 # 8000d270 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.82>
80006dc8:	02200593          	li	a1,34
80006dcc:	00000097          	auipc	ra,0x0
80006dd0:	270080e7          	jalr	624(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>

80006dd4 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17h875dc6dfbc985940E>:
80006dd4:	fc010113          	addi	sp,sp,-64
80006dd8:	02112e23          	sw	ra,60(sp)
80006ddc:	02812c23          	sw	s0,56(sp)
80006de0:	02912a23          	sw	s1,52(sp)
80006de4:	04010413          	addi	s0,sp,64
80006de8:	00058493          	mv	s1,a1
80006dec:	00052503          	lw	a0,0(a0)
80006df0:	fea42623          	sw	a0,-20(s0)
80006df4:	40a005b3          	neg	a1,a0
80006df8:	00b57533          	and	a0,a0,a1
80006dfc:	077cb5b7          	lui	a1,0x77cb
80006e00:	53158593          	addi	a1,a1,1329 # 77cb531 <.Lline_table_start2+0x77c9cf7>
80006e04:	00003097          	auipc	ra,0x3
80006e08:	3c4080e7          	jalr	964(ra) # 8000a1c8 <__mulsi3>
80006e0c:	01b55513          	srli	a0,a0,0x1b
80006e10:	8000c5b7          	lui	a1,0x8000c
80006e14:	78058593          	addi	a1,a1,1920 # 8000c780 <.Lanon.f3530ec70e8849f250bed0a60b302330.8+0x28>
80006e18:	fec40613          	addi	a2,s0,-20
80006e1c:	800096b7          	lui	a3,0x80009
80006e20:	77868693          	addi	a3,a3,1912 # 80009778 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f08a2decfad5842E>
80006e24:	ff040713          	addi	a4,s0,-16
80006e28:	8000a7b7          	lui	a5,0x8000a
80006e2c:	98c78793          	addi	a5,a5,-1652 # 8000998c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE>
80006e30:	8000d837          	lui	a6,0x8000d
80006e34:	2cc80813          	addi	a6,a6,716 # 8000d2cc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.141>
80006e38:	00300893          	li	a7,3
80006e3c:	fc042a23          	sw	zero,-44(s0)
80006e40:	00a58533          	add	a0,a1,a0
80006e44:	fdc40293          	addi	t0,s0,-36
80006e48:	00054503          	lbu	a0,0(a0)
80006e4c:	fcc42e23          	sw	a2,-36(s0)
80006e50:	fed42023          	sw	a3,-32(s0)
80006e54:	fee42223          	sw	a4,-28(s0)
80006e58:	fef42423          	sw	a5,-24(s0)
80006e5c:	00200613          	li	a2,2
80006e60:	fea42823          	sw	a0,-16(s0)
80006e64:	0004a503          	lw	a0,0(s1)
80006e68:	0044a583          	lw	a1,4(s1)
80006e6c:	fd042223          	sw	a6,-60(s0)
80006e70:	fd142423          	sw	a7,-56(s0)
80006e74:	fc542623          	sw	t0,-52(s0)
80006e78:	fcc42823          	sw	a2,-48(s0)
80006e7c:	fc440613          	addi	a2,s0,-60
80006e80:	00001097          	auipc	ra,0x1
80006e84:	060080e7          	jalr	96(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80006e88:	03c12083          	lw	ra,60(sp)
80006e8c:	03812403          	lw	s0,56(sp)
80006e90:	03412483          	lw	s1,52(sp)
80006e94:	04010113          	addi	sp,sp,64
80006e98:	00008067          	ret

80006e9c <_ZN4core6option13unwrap_failed17h09e9f263c2c928a7E>:
80006e9c:	ff010113          	addi	sp,sp,-16
80006ea0:	00112623          	sw	ra,12(sp)
80006ea4:	00812423          	sw	s0,8(sp)
80006ea8:	01010413          	addi	s0,sp,16
80006eac:	00050613          	mv	a2,a0
80006eb0:	8000d537          	lui	a0,0x8000d
80006eb4:	2e550513          	addi	a0,a0,741 # 8000d2e5 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.220>
80006eb8:	02b00593          	li	a1,43
80006ebc:	00000097          	auipc	ra,0x0
80006ec0:	180080e7          	jalr	384(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>

80006ec4 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h7f9cc71eb05fbab2E>:
80006ec4:	fb010113          	addi	sp,sp,-80
80006ec8:	04112623          	sw	ra,76(sp)
80006ecc:	04812423          	sw	s0,72(sp)
80006ed0:	04912223          	sw	s1,68(sp)
80006ed4:	05212023          	sw	s2,64(sp)
80006ed8:	03312e23          	sw	s3,60(sp)
80006edc:	03412c23          	sw	s4,56(sp)
80006ee0:	03512a23          	sw	s5,52(sp)
80006ee4:	05010413          	addi	s0,sp,80
80006ee8:	0045a483          	lw	s1,4(a1)
80006eec:	0005a903          	lw	s2,0(a1)
80006ef0:	00c4aa83          	lw	s5,12(s1)
80006ef4:	00050993          	mv	s3,a0
80006ef8:	8000d5b7          	lui	a1,0x8000d
80006efc:	32858593          	addi	a1,a1,808 # 8000d328 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.222>
80006f00:	00c00613          	li	a2,12
80006f04:	00090513          	mv	a0,s2
80006f08:	000a80e7          	jalr	s5
80006f0c:	00100a13          	li	s4,1
80006f10:	0c051c63          	bnez	a0,80006fe8 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h7f9cc71eb05fbab2E+0x124>
80006f14:	0049a503          	lw	a0,4(s3)
80006f18:	8000a5b7          	lui	a1,0x8000a
80006f1c:	12858593          	addi	a1,a1,296 # 8000a128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h29e5c175f3355fa1E>
80006f20:	8000a637          	lui	a2,0x8000a
80006f24:	c1460613          	addi	a2,a2,-1004 # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
80006f28:	8000d6b7          	lui	a3,0x8000d
80006f2c:	31068693          	addi	a3,a3,784 # 8000d310 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.221>
80006f30:	00300713          	li	a4,3
80006f34:	fc042223          	sw	zero,-60(s0)
80006f38:	00850793          	addi	a5,a0,8
80006f3c:	00c50813          	addi	a6,a0,12
80006f40:	fca42623          	sw	a0,-52(s0)
80006f44:	fcb42823          	sw	a1,-48(s0)
80006f48:	fcf42a23          	sw	a5,-44(s0)
80006f4c:	fcc42c23          	sw	a2,-40(s0)
80006f50:	fd042e23          	sw	a6,-36(s0)
80006f54:	fec42023          	sw	a2,-32(s0)
80006f58:	fcc40513          	addi	a0,s0,-52
80006f5c:	fad42a23          	sw	a3,-76(s0)
80006f60:	fae42c23          	sw	a4,-72(s0)
80006f64:	faa42e23          	sw	a0,-68(s0)
80006f68:	fce42023          	sw	a4,-64(s0)
80006f6c:	fb440613          	addi	a2,s0,-76
80006f70:	00090513          	mv	a0,s2
80006f74:	00048593          	mv	a1,s1
80006f78:	00001097          	auipc	ra,0x1
80006f7c:	f68080e7          	jalr	-152(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80006f80:	06051463          	bnez	a0,80006fe8 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h7f9cc71eb05fbab2E+0x124>
80006f84:	8000d5b7          	lui	a1,0x8000d
80006f88:	33458593          	addi	a1,a1,820 # 8000d334 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.223>
80006f8c:	00200613          	li	a2,2
80006f90:	00090513          	mv	a0,s2
80006f94:	000a80e7          	jalr	s5
80006f98:	04051863          	bnez	a0,80006fe8 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h7f9cc71eb05fbab2E+0x124>
80006f9c:	0009a503          	lw	a0,0(s3)
80006fa0:	00052583          	lw	a1,0(a0)
80006fa4:	fcb42623          	sw	a1,-52(s0)
80006fa8:	00452583          	lw	a1,4(a0)
80006fac:	fcb42823          	sw	a1,-48(s0)
80006fb0:	00852583          	lw	a1,8(a0)
80006fb4:	fcb42a23          	sw	a1,-44(s0)
80006fb8:	00c52583          	lw	a1,12(a0)
80006fbc:	fcb42c23          	sw	a1,-40(s0)
80006fc0:	01052583          	lw	a1,16(a0)
80006fc4:	fcb42e23          	sw	a1,-36(s0)
80006fc8:	01452503          	lw	a0,20(a0)
80006fcc:	fea42023          	sw	a0,-32(s0)
80006fd0:	fcc40613          	addi	a2,s0,-52
80006fd4:	00090513          	mv	a0,s2
80006fd8:	00048593          	mv	a1,s1
80006fdc:	00001097          	auipc	ra,0x1
80006fe0:	f04080e7          	jalr	-252(ra) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>
80006fe4:	00050a13          	mv	s4,a0
80006fe8:	000a0513          	mv	a0,s4
80006fec:	04c12083          	lw	ra,76(sp)
80006ff0:	04812403          	lw	s0,72(sp)
80006ff4:	04412483          	lw	s1,68(sp)
80006ff8:	04012903          	lw	s2,64(sp)
80006ffc:	03c12983          	lw	s3,60(sp)
80007000:	03812a03          	lw	s4,56(sp)
80007004:	03412a83          	lw	s5,52(sp)
80007008:	05010113          	addi	sp,sp,80
8000700c:	00008067          	ret

80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>:
80007010:	fe010113          	addi	sp,sp,-32
80007014:	00112e23          	sw	ra,28(sp)
80007018:	00812c23          	sw	s0,24(sp)
8000701c:	02010413          	addi	s0,sp,32
80007020:	00100613          	li	a2,1
80007024:	fea42623          	sw	a0,-20(s0)
80007028:	feb42823          	sw	a1,-16(s0)
8000702c:	fec41a23          	sh	a2,-12(s0)
80007030:	fec40513          	addi	a0,s0,-20
80007034:	ffff9097          	auipc	ra,0xffff9
80007038:	3cc080e7          	jalr	972(ra) # 80000400 <_RNvCs77YZ1zEOoxS_7___rustc17rust_begin_unwind>

8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>:
8000703c:	fd010113          	addi	sp,sp,-48
80007040:	02112623          	sw	ra,44(sp)
80007044:	02812423          	sw	s0,40(sp)
80007048:	03010413          	addi	s0,sp,48
8000704c:	fea42823          	sw	a0,-16(s0)
80007050:	feb42a23          	sw	a1,-12(s0)
80007054:	ff040513          	addi	a0,s0,-16
80007058:	00100593          	li	a1,1
8000705c:	fe042423          	sw	zero,-24(s0)
80007060:	00400693          	li	a3,4
80007064:	fca42c23          	sw	a0,-40(s0)
80007068:	fcb42e23          	sw	a1,-36(s0)
8000706c:	fed42023          	sw	a3,-32(s0)
80007070:	fe042223          	sw	zero,-28(s0)
80007074:	fd840513          	addi	a0,s0,-40
80007078:	00060593          	mv	a1,a2
8000707c:	00000097          	auipc	ra,0x0
80007080:	f94080e7          	jalr	-108(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>:
80007084:	fc010113          	addi	sp,sp,-64
80007088:	02112e23          	sw	ra,60(sp)
8000708c:	02812c23          	sw	s0,56(sp)
80007090:	04010413          	addi	s0,sp,64
80007094:	fca42423          	sw	a0,-56(s0)
80007098:	fcb42623          	sw	a1,-52(s0)
8000709c:	fcc40513          	addi	a0,s0,-52
800070a0:	8000a5b7          	lui	a1,0x8000a
800070a4:	c1458593          	addi	a1,a1,-1004 # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
800070a8:	fc840693          	addi	a3,s0,-56
800070ac:	8000d737          	lui	a4,0x8000d
800070b0:	34870713          	addi	a4,a4,840 # 8000d348 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.231>
800070b4:	00200793          	li	a5,2
800070b8:	fe042023          	sw	zero,-32(s0)
800070bc:	fea42423          	sw	a0,-24(s0)
800070c0:	feb42623          	sw	a1,-20(s0)
800070c4:	fed42823          	sw	a3,-16(s0)
800070c8:	feb42a23          	sw	a1,-12(s0)
800070cc:	fe840513          	addi	a0,s0,-24
800070d0:	fce42823          	sw	a4,-48(s0)
800070d4:	fcf42a23          	sw	a5,-44(s0)
800070d8:	fca42c23          	sw	a0,-40(s0)
800070dc:	fcf42e23          	sw	a5,-36(s0)
800070e0:	fd040513          	addi	a0,s0,-48
800070e4:	00060593          	mv	a1,a2
800070e8:	00000097          	auipc	ra,0x0
800070ec:	f28080e7          	jalr	-216(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

800070f0 <_ZN4core9panicking13assert_failed17h836042106c6d0953E>:
800070f0:	ff010113          	addi	sp,sp,-16
800070f4:	00112623          	sw	ra,12(sp)
800070f8:	00812423          	sw	s0,8(sp)
800070fc:	01010413          	addi	s0,sp,16
80007100:	00070813          	mv	a6,a4
80007104:	00068793          	mv	a5,a3
80007108:	feb42823          	sw	a1,-16(s0)
8000710c:	fec42a23          	sw	a2,-12(s0)
80007110:	8000d637          	lui	a2,0x8000d
80007114:	35860613          	addi	a2,a2,856 # 8000d358 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.242>
80007118:	ff040593          	addi	a1,s0,-16
8000711c:	ff440693          	addi	a3,s0,-12
80007120:	00060713          	mv	a4,a2
80007124:	00000097          	auipc	ra,0x0
80007128:	008080e7          	jalr	8(ra) # 8000712c <_ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE>

8000712c <_ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE>:
8000712c:	f8010113          	addi	sp,sp,-128
80007130:	06112e23          	sw	ra,124(sp)
80007134:	06812c23          	sw	s0,120(sp)
80007138:	06912a23          	sw	s1,116(sp)
8000713c:	07212823          	sw	s2,112(sp)
80007140:	08010413          	addi	s0,sp,128
80007144:	00080493          	mv	s1,a6
80007148:	f8b42423          	sw	a1,-120(s0)
8000714c:	f8c42623          	sw	a2,-116(s0)
80007150:	00251513          	slli	a0,a0,0x2
80007154:	8000d5b7          	lui	a1,0x8000d
80007158:	5f458593          	addi	a1,a1,1524 # 8000d5f4 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE>
8000715c:	8000d637          	lui	a2,0x8000d
80007160:	60060613          	addi	a2,a2,1536 # 8000d600 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276>
80007164:	00a585b3          	add	a1,a1,a0
80007168:	00a60533          	add	a0,a2,a0
8000716c:	0007a603          	lw	a2,0(a5)
80007170:	0005a583          	lw	a1,0(a1)
80007174:	00052503          	lw	a0,0(a0)
80007178:	f8d42823          	sw	a3,-112(s0)
8000717c:	f8e42a23          	sw	a4,-108(s0)
80007180:	f8b42c23          	sw	a1,-104(s0)
80007184:	f8a42e23          	sw	a0,-100(s0)
80007188:	06061063          	bnez	a2,800071e8 <_ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE+0xbc>
8000718c:	f9840513          	addi	a0,s0,-104
80007190:	8000a5b7          	lui	a1,0x8000a
80007194:	12858593          	addi	a1,a1,296 # 8000a128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h29e5c175f3355fa1E>
80007198:	f8840613          	addi	a2,s0,-120
8000719c:	8000a6b7          	lui	a3,0x8000a
800071a0:	0fc68693          	addi	a3,a3,252 # 8000a0fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd0d93c14ce467faE>
800071a4:	f9040713          	addi	a4,s0,-112
800071a8:	8000d7b7          	lui	a5,0x8000d
800071ac:	39478793          	addi	a5,a5,916 # 8000d394 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.249>
800071b0:	00300813          	li	a6,3
800071b4:	fe042423          	sw	zero,-24(s0)
800071b8:	faa42c23          	sw	a0,-72(s0)
800071bc:	fab42e23          	sw	a1,-68(s0)
800071c0:	fcc42023          	sw	a2,-64(s0)
800071c4:	fcd42223          	sw	a3,-60(s0)
800071c8:	fce42423          	sw	a4,-56(s0)
800071cc:	fcd42623          	sw	a3,-52(s0)
800071d0:	fb840513          	addi	a0,s0,-72
800071d4:	fcf42c23          	sw	a5,-40(s0)
800071d8:	fd042e23          	sw	a6,-36(s0)
800071dc:	fea42023          	sw	a0,-32(s0)
800071e0:	ff042223          	sw	a6,-28(s0)
800071e4:	0840006f          	j	80007268 <_ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE+0x13c>
800071e8:	fa040513          	addi	a0,s0,-96
800071ec:	01800613          	li	a2,24
800071f0:	fa040913          	addi	s2,s0,-96
800071f4:	00078593          	mv	a1,a5
800071f8:	00004097          	auipc	ra,0x4
800071fc:	aa4080e7          	jalr	-1372(ra) # 8000ac9c <memcpy>
80007200:	f9840513          	addi	a0,s0,-104
80007204:	8000a5b7          	lui	a1,0x8000a
80007208:	12858593          	addi	a1,a1,296 # 8000a128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h29e5c175f3355fa1E>
8000720c:	80008637          	lui	a2,0x80008
80007210:	ea860613          	addi	a2,a2,-344 # 80007ea8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hd3395efd9ae95426E>
80007214:	f8840693          	addi	a3,s0,-120
80007218:	8000a737          	lui	a4,0x8000a
8000721c:	0fc70713          	addi	a4,a4,252 # 8000a0fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd0d93c14ce467faE>
80007220:	f9040793          	addi	a5,s0,-112
80007224:	8000d837          	lui	a6,0x8000d
80007228:	3b880813          	addi	a6,a6,952 # 8000d3b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.252>
8000722c:	faa42c23          	sw	a0,-72(s0)
80007230:	fab42e23          	sw	a1,-68(s0)
80007234:	fd242023          	sw	s2,-64(s0)
80007238:	fcc42223          	sw	a2,-60(s0)
8000723c:	00400513          	li	a0,4
80007240:	fe042423          	sw	zero,-24(s0)
80007244:	fcd42423          	sw	a3,-56(s0)
80007248:	fce42623          	sw	a4,-52(s0)
8000724c:	fcf42823          	sw	a5,-48(s0)
80007250:	fce42a23          	sw	a4,-44(s0)
80007254:	fb840593          	addi	a1,s0,-72
80007258:	fd042c23          	sw	a6,-40(s0)
8000725c:	fca42e23          	sw	a0,-36(s0)
80007260:	feb42023          	sw	a1,-32(s0)
80007264:	fea42223          	sw	a0,-28(s0)
80007268:	fd840513          	addi	a0,s0,-40
8000726c:	00048593          	mv	a1,s1
80007270:	00000097          	auipc	ra,0x0
80007274:	da0080e7          	jalr	-608(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

80007278 <_ZN4core6result13unwrap_failed17hec5fc5af20fc7d85E>:
80007278:	fc010113          	addi	sp,sp,-64
8000727c:	02112e23          	sw	ra,60(sp)
80007280:	02812c23          	sw	s0,56(sp)
80007284:	04010413          	addi	s0,sp,64
80007288:	fca42023          	sw	a0,-64(s0)
8000728c:	fcb42223          	sw	a1,-60(s0)
80007290:	fcc42423          	sw	a2,-56(s0)
80007294:	fcd42623          	sw	a3,-52(s0)
80007298:	fc040513          	addi	a0,s0,-64
8000729c:	8000a5b7          	lui	a1,0x8000a
800072a0:	12858593          	addi	a1,a1,296 # 8000a128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h29e5c175f3355fa1E>
800072a4:	fc840613          	addi	a2,s0,-56
800072a8:	8000a6b7          	lui	a3,0x8000a
800072ac:	0fc68693          	addi	a3,a3,252 # 8000a0fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd0d93c14ce467faE>
800072b0:	8000d7b7          	lui	a5,0x8000d
800072b4:	3dc78793          	addi	a5,a5,988 # 8000d3dc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.256>
800072b8:	00200813          	li	a6,2
800072bc:	fe042023          	sw	zero,-32(s0)
800072c0:	fe840893          	addi	a7,s0,-24
800072c4:	fea42423          	sw	a0,-24(s0)
800072c8:	feb42623          	sw	a1,-20(s0)
800072cc:	fec42823          	sw	a2,-16(s0)
800072d0:	fed42a23          	sw	a3,-12(s0)
800072d4:	fcf42823          	sw	a5,-48(s0)
800072d8:	fd042a23          	sw	a6,-44(s0)
800072dc:	fd142c23          	sw	a7,-40(s0)
800072e0:	fd042e23          	sw	a6,-36(s0)
800072e4:	fd040513          	addi	a0,s0,-48
800072e8:	00070593          	mv	a1,a4
800072ec:	00000097          	auipc	ra,0x0
800072f0:	d24080e7          	jalr	-732(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

800072f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E>:
800072f4:	fb010113          	addi	sp,sp,-80
800072f8:	04112623          	sw	ra,76(sp)
800072fc:	04812423          	sw	s0,72(sp)
80007300:	04912223          	sw	s1,68(sp)
80007304:	05212023          	sw	s2,64(sp)
80007308:	03312e23          	sw	s3,60(sp)
8000730c:	03412c23          	sw	s4,56(sp)
80007310:	03512a23          	sw	s5,52(sp)
80007314:	03612823          	sw	s6,48(sp)
80007318:	03712623          	sw	s7,44(sp)
8000731c:	03812423          	sw	s8,40(sp)
80007320:	03912223          	sw	s9,36(sp)
80007324:	03a12023          	sw	s10,32(sp)
80007328:	01b12e23          	sw	s11,28(sp)
8000732c:	05010413          	addi	s0,sp,80
80007330:	00060c13          	mv	s8,a2
80007334:	00058913          	mv	s2,a1
80007338:	00000b13          	li	s6,0
8000733c:	00000a93          	li	s5,0
80007340:	00000b93          	li	s7,0
80007344:	0a0a15b7          	lui	a1,0xa0a1
80007348:	01010637          	lui	a2,0x1010
8000734c:	00052683          	lw	a3,0(a0)
80007350:	fcd42223          	sw	a3,-60(s0)
80007354:	00452683          	lw	a3,4(a0)
80007358:	fcd42023          	sw	a3,-64(s0)
8000735c:	00852503          	lw	a0,8(a0)
80007360:	fca42423          	sw	a0,-56(s0)
80007364:	fff90513          	addi	a0,s2,-1
80007368:	faa42c23          	sw	a0,-72(s0)
8000736c:	41800533          	neg	a0,s8
80007370:	faa42e23          	sw	a0,-68(s0)
80007374:	a0a58a13          	addi	s4,a1,-1526 # a0a0a0a <.Lline_table_start2+0xa09f1d0>
80007378:	10060c93          	addi	s9,a2,256 # 1010100 <.Lline_table_start2+0x100e8c6>
8000737c:	00a00d13          	li	s10,10
80007380:	80808537          	lui	a0,0x80808
80007384:	08050d93          	addi	s11,a0,128 # 80808080 <KALLOC_BUFFER+0x7f8080>
80007388:	0400006f          	j	800073c8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0xd4>
8000738c:	fb842503          	lw	a0,-72(s0)
80007390:	00950533          	add	a0,a0,s1
80007394:	00054503          	lbu	a0,0(a0)
80007398:	ff650513          	addi	a0,a0,-10
8000739c:	00153513          	seqz	a0,a0
800073a0:	fc842583          	lw	a1,-56(s0)
800073a4:	00a58023          	sb	a0,0(a1)
800073a8:	fc042503          	lw	a0,-64(s0)
800073ac:	00c52683          	lw	a3,12(a0)
800073b0:	41648633          	sub	a2,s1,s6
800073b4:	016905b3          	add	a1,s2,s6
800073b8:	fc442503          	lw	a0,-60(s0)
800073bc:	000680e7          	jalr	a3
800073c0:	00098b13          	mv	s6,s3
800073c4:	18051463          	bnez	a0,8000754c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x258>
800073c8:	001bf513          	andi	a0,s7,1
800073cc:	16051c63          	bnez	a0,80007544 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x250>
800073d0:	015c7863          	bgeu	s8,s5,800073e0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0xec>
800073d4:	136c1663          	bne	s8,s6,80007500 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x20c>
800073d8:	16c0006f          	j	80007544 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x250>
800073dc:	ff5c6ce3          	bltu	s8,s5,800073d4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0xe0>
800073e0:	415c05b3          	sub	a1,s8,s5
800073e4:	01590533          	add	a0,s2,s5
800073e8:	00700613          	li	a2,7
800073ec:	02b66863          	bltu	a2,a1,8000741c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x128>
800073f0:	115c0463          	beq	s8,s5,800074f8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x204>
800073f4:	00000593          	li	a1,0
800073f8:	fbc42603          	lw	a2,-68(s0)
800073fc:	01560633          	add	a2,a2,s5
80007400:	00050693          	mv	a3,a0
80007404:	0006c703          	lbu	a4,0(a3)
80007408:	0ba70c63          	beq	a4,s10,800074c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x1cc>
8000740c:	fff58593          	addi	a1,a1,-1
80007410:	00168693          	addi	a3,a3,1
80007414:	feb618e3          	bne	a2,a1,80007404 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x110>
80007418:	0e00006f          	j	800074f8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x204>
8000741c:	00350713          	addi	a4,a0,3
80007420:	ffc77713          	andi	a4,a4,-4
80007424:	40a70633          	sub	a2,a4,a0
80007428:	02060463          	beqz	a2,80007450 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x15c>
8000742c:	00000693          	li	a3,0
80007430:	00d507b3          	add	a5,a0,a3
80007434:	0007c783          	lbu	a5,0(a5)
80007438:	09a78663          	beq	a5,s10,800074c4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x1d0>
8000743c:	00168693          	addi	a3,a3,1
80007440:	fed618e3          	bne	a2,a3,80007430 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x13c>
80007444:	ff858693          	addi	a3,a1,-8
80007448:	00c6f663          	bgeu	a3,a2,80007454 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x160>
8000744c:	0480006f          	j	80007494 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x1a0>
80007450:	ff858693          	addi	a3,a1,-8
80007454:	00400793          	li	a5,4
80007458:	00e78733          	add	a4,a5,a4
8000745c:	ffc72783          	lw	a5,-4(a4)
80007460:	00072803          	lw	a6,0(a4)
80007464:	0147c8b3          	xor	a7,a5,s4
80007468:	01484833          	xor	a6,a6,s4
8000746c:	411c88b3          	sub	a7,s9,a7
80007470:	00f8e7b3          	or	a5,a7,a5
80007474:	410c88b3          	sub	a7,s9,a6
80007478:	0108e833          	or	a6,a7,a6
8000747c:	0107f7b3          	and	a5,a5,a6
80007480:	01b7f7b3          	and	a5,a5,s11
80007484:	01b79863          	bne	a5,s11,80007494 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x1a0>
80007488:	00860613          	addi	a2,a2,8
8000748c:	00870713          	addi	a4,a4,8
80007490:	fcc6f6e3          	bgeu	a3,a2,8000745c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x168>
80007494:	06c58263          	beq	a1,a2,800074f8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x204>
80007498:	00c506b3          	add	a3,a0,a2
8000749c:	40c005b3          	neg	a1,a2
800074a0:	fbc42603          	lw	a2,-68(s0)
800074a4:	01560633          	add	a2,a2,s5
800074a8:	0006c703          	lbu	a4,0(a3)
800074ac:	01a70a63          	beq	a4,s10,800074c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x1cc>
800074b0:	fff58593          	addi	a1,a1,-1
800074b4:	00168693          	addi	a3,a3,1
800074b8:	feb618e3          	bne	a2,a1,800074a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x1b4>
800074bc:	03c0006f          	j	800074f8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x204>
800074c0:	40b006b3          	neg	a3,a1
800074c4:	015685b3          	add	a1,a3,s5
800074c8:	00158a93          	addi	s5,a1,1
800074cc:	f185f8e3          	bgeu	a1,s8,800073dc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0xe8>
800074d0:	00d50533          	add	a0,a0,a3
800074d4:	00054503          	lbu	a0,0(a0)
800074d8:	f1a512e3          	bne	a0,s10,800073dc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0xe8>
800074dc:	00000b93          	li	s7,0
800074e0:	000a8993          	mv	s3,s5
800074e4:	000a8493          	mv	s1,s5
800074e8:	fc842503          	lw	a0,-56(s0)
800074ec:	00054503          	lbu	a0,0(a0)
800074f0:	04050463          	beqz	a0,80007538 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x244>
800074f4:	0240006f          	j	80007518 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x224>
800074f8:	000c0a93          	mv	s5,s8
800074fc:	056c0463          	beq	s8,s6,80007544 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x250>
80007500:	00100b93          	li	s7,1
80007504:	000b0993          	mv	s3,s6
80007508:	000c0493          	mv	s1,s8
8000750c:	fc842503          	lw	a0,-56(s0)
80007510:	00054503          	lbu	a0,0(a0)
80007514:	02050263          	beqz	a0,80007538 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x244>
80007518:	fc042503          	lw	a0,-64(s0)
8000751c:	00c52683          	lw	a3,12(a0)
80007520:	00400613          	li	a2,4
80007524:	fc442503          	lw	a0,-60(s0)
80007528:	8000c5b7          	lui	a1,0x8000c
8000752c:	02e58593          	addi	a1,a1,46 # 8000c02e <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.4+0x6>
80007530:	000680e7          	jalr	a3
80007534:	00051c63          	bnez	a0,8000754c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x258>
80007538:	e5649ae3          	bne	s1,s6,8000738c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x98>
8000753c:	00000513          	li	a0,0
80007540:	e61ff06f          	j	800073a0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0xac>
80007544:	00000513          	li	a0,0
80007548:	0080006f          	j	80007550 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E+0x25c>
8000754c:	00100513          	li	a0,1
80007550:	04c12083          	lw	ra,76(sp)
80007554:	04812403          	lw	s0,72(sp)
80007558:	04412483          	lw	s1,68(sp)
8000755c:	04012903          	lw	s2,64(sp)
80007560:	03c12983          	lw	s3,60(sp)
80007564:	03812a03          	lw	s4,56(sp)
80007568:	03412a83          	lw	s5,52(sp)
8000756c:	03012b03          	lw	s6,48(sp)
80007570:	02c12b83          	lw	s7,44(sp)
80007574:	02812c03          	lw	s8,40(sp)
80007578:	02412c83          	lw	s9,36(sp)
8000757c:	02012d03          	lw	s10,32(sp)
80007580:	01c12d83          	lw	s11,28(sp)
80007584:	05010113          	addi	sp,sp,80
80007588:	00008067          	ret

8000758c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hf6d9b413ebf5c15fE>:
8000758c:	fe010113          	addi	sp,sp,-32
80007590:	00112e23          	sw	ra,28(sp)
80007594:	00812c23          	sw	s0,24(sp)
80007598:	00912a23          	sw	s1,20(sp)
8000759c:	01212823          	sw	s2,16(sp)
800075a0:	01312623          	sw	s3,12(sp)
800075a4:	01412423          	sw	s4,8(sp)
800075a8:	02010413          	addi	s0,sp,32
800075ac:	00852903          	lw	s2,8(a0)
800075b0:	00094603          	lbu	a2,0(s2)
800075b4:	00052483          	lw	s1,0(a0)
800075b8:	00452983          	lw	s3,4(a0)
800075bc:	04060863          	beqz	a2,8000760c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hf6d9b413ebf5c15fE+0x80>
800075c0:	00c9a703          	lw	a4,12(s3)
800075c4:	8000c6b7          	lui	a3,0x8000c
800075c8:	02e68693          	addi	a3,a3,46 # 8000c02e <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.4+0x6>
800075cc:	00400613          	li	a2,4
800075d0:	00048513          	mv	a0,s1
800075d4:	00058a13          	mv	s4,a1
800075d8:	00068593          	mv	a1,a3
800075dc:	000700e7          	jalr	a4
800075e0:	000a0593          	mv	a1,s4
800075e4:	02050463          	beqz	a0,8000760c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hf6d9b413ebf5c15fE+0x80>
800075e8:	00100513          	li	a0,1
800075ec:	01c12083          	lw	ra,28(sp)
800075f0:	01812403          	lw	s0,24(sp)
800075f4:	01412483          	lw	s1,20(sp)
800075f8:	01012903          	lw	s2,16(sp)
800075fc:	00c12983          	lw	s3,12(sp)
80007600:	00812a03          	lw	s4,8(sp)
80007604:	02010113          	addi	sp,sp,32
80007608:	00008067          	ret
8000760c:	ff658513          	addi	a0,a1,-10
80007610:	00153513          	seqz	a0,a0
80007614:	00a90023          	sb	a0,0(s2)
80007618:	0109a303          	lw	t1,16(s3)
8000761c:	00048513          	mv	a0,s1
80007620:	01c12083          	lw	ra,28(sp)
80007624:	01812403          	lw	s0,24(sp)
80007628:	01412483          	lw	s1,20(sp)
8000762c:	01012903          	lw	s2,16(sp)
80007630:	00c12983          	lw	s3,12(sp)
80007634:	00812a03          	lw	s4,8(sp)
80007638:	02010113          	addi	sp,sp,32
8000763c:	00030067          	jr	t1

80007640 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE>:
80007640:	fb010113          	addi	sp,sp,-80
80007644:	04112623          	sw	ra,76(sp)
80007648:	04812423          	sw	s0,72(sp)
8000764c:	04912223          	sw	s1,68(sp)
80007650:	05212023          	sw	s2,64(sp)
80007654:	03312e23          	sw	s3,60(sp)
80007658:	03412c23          	sw	s4,56(sp)
8000765c:	03512a23          	sw	s5,52(sp)
80007660:	03612823          	sw	s6,48(sp)
80007664:	03712623          	sw	s7,44(sp)
80007668:	03812423          	sw	s8,40(sp)
8000766c:	05010413          	addi	s0,sp,80
80007670:	00050493          	mv	s1,a0
80007674:	00454503          	lbu	a0,4(a0)
80007678:	00100b13          	li	s6,1
8000767c:	00100a93          	li	s5,1
80007680:	04050063          	beqz	a0,800076c0 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x80>
80007684:	01548223          	sb	s5,4(s1)
80007688:	016482a3          	sb	s6,5(s1)
8000768c:	00048513          	mv	a0,s1
80007690:	04c12083          	lw	ra,76(sp)
80007694:	04812403          	lw	s0,72(sp)
80007698:	04412483          	lw	s1,68(sp)
8000769c:	04012903          	lw	s2,64(sp)
800076a0:	03c12983          	lw	s3,60(sp)
800076a4:	03812a03          	lw	s4,56(sp)
800076a8:	03412a83          	lw	s5,52(sp)
800076ac:	03012b03          	lw	s6,48(sp)
800076b0:	02c12b83          	lw	s7,44(sp)
800076b4:	02812c03          	lw	s8,40(sp)
800076b8:	05010113          	addi	sp,sp,80
800076bc:	00008067          	ret
800076c0:	00070993          	mv	s3,a4
800076c4:	00068913          	mv	s2,a3
800076c8:	0004aa03          	lw	s4,0(s1)
800076cc:	0054c503          	lbu	a0,5(s1)
800076d0:	00aa4683          	lbu	a3,10(s4)
800076d4:	0806f693          	andi	a3,a3,128
800076d8:	02069063          	bnez	a3,800076f8 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0xb8>
800076dc:	00354693          	xori	a3,a0,3
800076e0:	00058b93          	mv	s7,a1
800076e4:	00060c13          	mv	s8,a2
800076e8:	0e051863          	bnez	a0,800077d8 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x198>
800076ec:	8000d5b7          	lui	a1,0x8000d
800076f0:	40458593          	addi	a1,a1,1028 # 8000d404 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.259>
800076f4:	0ec0006f          	j	800077e0 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x1a0>
800076f8:	02051e63          	bnez	a0,80007734 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0xf4>
800076fc:	004a2683          	lw	a3,4(s4)
80007700:	000a2503          	lw	a0,0(s4)
80007704:	00c6a703          	lw	a4,12(a3)
80007708:	8000d6b7          	lui	a3,0x8000d
8000770c:	40968693          	addi	a3,a3,1033 # 8000d409 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.261>
80007710:	00060a93          	mv	s5,a2
80007714:	00300613          	li	a2,3
80007718:	00058b93          	mv	s7,a1
8000771c:	00068593          	mv	a1,a3
80007720:	000700e7          	jalr	a4
80007724:	000b8593          	mv	a1,s7
80007728:	000a8613          	mv	a2,s5
8000772c:	00100a93          	li	s5,1
80007730:	f4051ae3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
80007734:	00100a93          	li	s5,1
80007738:	fc740513          	addi	a0,s0,-57
8000773c:	000a2683          	lw	a3,0(s4)
80007740:	004a2703          	lw	a4,4(s4)
80007744:	008a2783          	lw	a5,8(s4)
80007748:	00ca2803          	lw	a6,12(s4)
8000774c:	fb840893          	addi	a7,s0,-72
80007750:	fad42c23          	sw	a3,-72(s0)
80007754:	fae42e23          	sw	a4,-68(s0)
80007758:	fca42023          	sw	a0,-64(s0)
8000775c:	8000d537          	lui	a0,0x8000d
80007760:	3ec50513          	addi	a0,a0,1004 # 8000d3ec <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.257>
80007764:	fd5403a3          	sb	s5,-57(s0)
80007768:	fd142423          	sw	a7,-56(s0)
8000776c:	fca42623          	sw	a0,-52(s0)
80007770:	fcf42823          	sw	a5,-48(s0)
80007774:	fd042a23          	sw	a6,-44(s0)
80007778:	fb840513          	addi	a0,s0,-72
8000777c:	00000097          	auipc	ra,0x0
80007780:	b78080e7          	jalr	-1160(ra) # 800072f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E>
80007784:	f00510e3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
80007788:	8000d5b7          	lui	a1,0x8000d
8000778c:	3d858593          	addi	a1,a1,984 # 8000d3d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.255>
80007790:	fb840513          	addi	a0,s0,-72
80007794:	00200613          	li	a2,2
80007798:	00000097          	auipc	ra,0x0
8000779c:	b5c080e7          	jalr	-1188(ra) # 800072f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hafefa20386389cf6E>
800077a0:	ee0512e3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
800077a4:	00c9a603          	lw	a2,12(s3)
800077a8:	fc840593          	addi	a1,s0,-56
800077ac:	00090513          	mv	a0,s2
800077b0:	000600e7          	jalr	a2
800077b4:	ec0518e3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
800077b8:	fcc42583          	lw	a1,-52(s0)
800077bc:	fc842503          	lw	a0,-56(s0)
800077c0:	00c5a683          	lw	a3,12(a1)
800077c4:	8000d5b7          	lui	a1,0x8000d
800077c8:	40c58593          	addi	a1,a1,1036 # 8000d40c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.262>
800077cc:	00200613          	li	a2,2
800077d0:	000680e7          	jalr	a3
800077d4:	07c0006f          	j	80007850 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x210>
800077d8:	8000d5b7          	lui	a1,0x8000d
800077dc:	40758593          	addi	a1,a1,1031 # 8000d407 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.260>
800077e0:	004a2603          	lw	a2,4(s4)
800077e4:	000a2503          	lw	a0,0(s4)
800077e8:	00c62703          	lw	a4,12(a2)
800077ec:	00068613          	mv	a2,a3
800077f0:	000700e7          	jalr	a4
800077f4:	00100a93          	li	s5,1
800077f8:	e80516e3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
800077fc:	000c0613          	mv	a2,s8
80007800:	000b8593          	mv	a1,s7
80007804:	004a2683          	lw	a3,4(s4)
80007808:	000a2503          	lw	a0,0(s4)
8000780c:	00c6a683          	lw	a3,12(a3)
80007810:	000680e7          	jalr	a3
80007814:	00100a93          	li	s5,1
80007818:	e60516e3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
8000781c:	004a2583          	lw	a1,4(s4)
80007820:	000a2503          	lw	a0,0(s4)
80007824:	00c5a683          	lw	a3,12(a1)
80007828:	8000d5b7          	lui	a1,0x8000d
8000782c:	3d858593          	addi	a1,a1,984 # 8000d3d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.255>
80007830:	00200613          	li	a2,2
80007834:	000680e7          	jalr	a3
80007838:	00100a93          	li	s5,1
8000783c:	e40514e3          	bnez	a0,80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>
80007840:	00c9a603          	lw	a2,12(s3)
80007844:	00090513          	mv	a0,s2
80007848:	000a0593          	mv	a1,s4
8000784c:	000600e7          	jalr	a2
80007850:	00050a93          	mv	s5,a0
80007854:	e31ff06f          	j	80007684 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE+0x44>

80007858 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE>:
80007858:	b7010113          	addi	sp,sp,-1168
8000785c:	48112623          	sw	ra,1164(sp)
80007860:	48812423          	sw	s0,1160(sp)
80007864:	48912223          	sw	s1,1156(sp)
80007868:	49212023          	sw	s2,1152(sp)
8000786c:	47312e23          	sw	s3,1148(sp)
80007870:	47412c23          	sw	s4,1144(sp)
80007874:	47512a23          	sw	s5,1140(sp)
80007878:	47612823          	sw	s6,1136(sp)
8000787c:	49010413          	addi	s0,sp,1168
80007880:	00068493          	mv	s1,a3
80007884:	00159813          	slli	a6,a1,0x1
80007888:	01885693          	srli	a3,a6,0x18
8000788c:	00959713          	slli	a4,a1,0x9
80007890:	00975793          	srli	a5,a4,0x9
80007894:	02068e63          	beqz	a3,800078d0 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x78>
80007898:	00800737          	lui	a4,0x800
8000789c:	00e7e733          	or	a4,a5,a4
800078a0:	00185893          	srli	a7,a6,0x1
800078a4:	7f800837          	lui	a6,0x7f800
800078a8:	03088c63          	beq	a7,a6,800078e0 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x88>
800078ac:	0105f2b3          	and	t0,a1,a6
800078b0:	03028c63          	beq	t0,a6,800078e8 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x90>
800078b4:	00177893          	andi	a7,a4,1
800078b8:	02029c63          	bnez	t0,800078f0 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x98>
800078bc:	06078a63          	beqz	a5,80007930 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xd8>
800078c0:	00000793          	li	a5,0
800078c4:	00000813          	li	a6,0
800078c8:	f6a68693          	addi	a3,a3,-150
800078cc:	0580006f          	j	80007924 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xcc>
800078d0:	00875713          	srli	a4,a4,0x8
800078d4:	00185893          	srli	a7,a6,0x1
800078d8:	7f800837          	lui	a6,0x7f800
800078dc:	fd0898e3          	bne	a7,a6,800078ac <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x54>
800078e0:	00300893          	li	a7,3
800078e4:	0500006f          	j	80007934 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xdc>
800078e8:	00200893          	li	a7,2
800078ec:	0480006f          	j	80007934 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xdc>
800078f0:	008007b7          	lui	a5,0x800
800078f4:	02f71063          	bne	a4,a5,80007914 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xbc>
800078f8:	00000793          	li	a5,0
800078fc:	00000813          	li	a6,0
80007900:	f6868693          	addi	a3,a3,-152
80007904:	00200293          	li	t0,2
80007908:	02000737          	lui	a4,0x2000
8000790c:	00100893          	li	a7,1
80007910:	0240006f          	j	80007934 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xdc>
80007914:	00000793          	li	a5,0
80007918:	00000813          	li	a6,0
8000791c:	00171713          	slli	a4,a4,0x1
80007920:	f6968693          	addi	a3,a3,-151
80007924:	0018c893          	xori	a7,a7,1
80007928:	00100293          	li	t0,1
8000792c:	0080006f          	j	80007934 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0xdc>
80007930:	00400893          	li	a7,4
80007934:	00100a13          	li	s4,1
80007938:	ffe88313          	addi	t1,a7,-2
8000793c:	fae42c23          	sw	a4,-72(s0)
80007940:	faf42e23          	sw	a5,-68(s0)
80007944:	fd442023          	sw	s4,-64(s0)
80007948:	fc042223          	sw	zero,-60(s0)
8000794c:	fc542423          	sw	t0,-56(s0)
80007950:	fd042623          	sw	a6,-52(s0)
80007954:	fcd41823          	sh	a3,-48(s0)
80007958:	fd140923          	sb	a7,-46(s0)
8000795c:	02030863          	beqz	t1,8000798c <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x134>
80007960:	00300713          	li	a4,3
80007964:	00e36463          	bltu	t1,a4,8000796c <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x114>
80007968:	00300313          	li	t1,3
8000796c:	00100713          	li	a4,1
80007970:	0405c463          	bltz	a1,800079b8 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x160>
80007974:	8000da37          	lui	s4,0x8000d
80007978:	284a0a13          	addi	s4,s4,644 # 8000d284 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.94>
8000797c:	00100793          	li	a5,1
80007980:	00100a93          	li	s5,1
80007984:	04060463          	beqz	a2,800079cc <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x174>
80007988:	04c0006f          	j	800079d4 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x17c>
8000798c:	00000a93          	li	s5,0
80007990:	00200593          	li	a1,2
80007994:	8000d6b7          	lui	a3,0x8000d
80007998:	28568693          	addi	a3,a3,645 # 8000d285 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.95>
8000799c:	00300713          	li	a4,3
800079a0:	f7840613          	addi	a2,s0,-136
800079a4:	f6b41c23          	sh	a1,-136(s0)
800079a8:	f6d42e23          	sw	a3,-132(s0)
800079ac:	f8e42023          	sw	a4,-128(s0)
800079b0:	00100593          	li	a1,1
800079b4:	1bc0006f          	j	80007b70 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x318>
800079b8:	8000da37          	lui	s4,0x8000d
800079bc:	283a0a13          	addi	s4,s4,643 # 8000d283 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.93>
800079c0:	000a0793          	mv	a5,s4
800079c4:	00100a93          	li	s5,1
800079c8:	00061663          	bnez	a2,800079d4 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x17c>
800079cc:	01f5da93          	srli	s5,a1,0x1f
800079d0:	00078a13          	mv	s4,a5
800079d4:	02e30c63          	beq	t1,a4,80007a0c <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x1b4>
800079d8:	00200593          	li	a1,2
800079dc:	04b31c63          	bne	t1,a1,80007a34 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x1dc>
800079e0:	f6b41c23          	sh	a1,-136(s0)
800079e4:	10048463          	beqz	s1,80007aec <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x294>
800079e8:	8000d637          	lui	a2,0x8000d
800079ec:	28160613          	addi	a2,a2,641 # 8000d281 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.84>
800079f0:	00200593          	li	a1,2
800079f4:	f6c42e23          	sw	a2,-132(s0)
800079f8:	f8b42023          	sw	a1,-128(s0)
800079fc:	f8041223          	sh	zero,-124(s0)
80007a00:	f8942423          	sw	s1,-120(s0)
80007a04:	f7840613          	addi	a2,s0,-136
80007a08:	1680006f          	j	80007b70 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x318>
80007a0c:	00200613          	li	a2,2
80007a10:	8000d6b7          	lui	a3,0x8000d
80007a14:	28868693          	addi	a3,a3,648 # 8000d288 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.96>
80007a18:	00300713          	li	a4,3
80007a1c:	00100593          	li	a1,1
80007a20:	f6c41c23          	sh	a2,-136(s0)
80007a24:	f6d42e23          	sw	a3,-132(s0)
80007a28:	f8e42023          	sw	a4,-128(s0)
80007a2c:	f7840613          	addi	a2,s0,-136
80007a30:	1400006f          	j	80007b70 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x318>
80007a34:	00050b13          	mv	s6,a0
80007a38:	01069593          	slli	a1,a3,0x10
80007a3c:	41f5d513          	srai	a0,a1,0x1f
80007a40:	fef57513          	andi	a0,a0,-17
80007a44:	00550513          	addi	a0,a0,5
80007a48:	4105d593          	srai	a1,a1,0x10
80007a4c:	00002097          	auipc	ra,0x2
80007a50:	77c080e7          	jalr	1916(ra) # 8000a1c8 <__mulsi3>
80007a54:	00655593          	srli	a1,a0,0x6
80007a58:	0fb00613          	li	a2,251
80007a5c:	14c5fc63          	bgeu	a1,a2,80007bb4 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x35c>
80007a60:	00455513          	srli	a0,a0,0x4
80007a64:	01049593          	slli	a1,s1,0x10
80007a68:	01550993          	addi	s3,a0,21
80007a6c:	0005d663          	bgez	a1,80007a78 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x220>
80007a70:	ffff8537          	lui	a0,0xffff8
80007a74:	0080006f          	j	80007a7c <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x224>
80007a78:	40900533          	neg	a0,s1
80007a7c:	01051513          	slli	a0,a0,0x10
80007a80:	41055913          	srai	s2,a0,0x10
80007a84:	f7840513          	addi	a0,s0,-136
80007a88:	fb840593          	addi	a1,s0,-72
80007a8c:	b7840613          	addi	a2,s0,-1160
80007a90:	00098693          	mv	a3,s3
80007a94:	00090713          	mv	a4,s2
80007a98:	ffffe097          	auipc	ra,0xffffe
80007a9c:	620080e7          	jalr	1568(ra) # 800060b8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17h074407a44cc5f472E>
80007aa0:	f7842503          	lw	a0,-136(s0)
80007aa4:	06050263          	beqz	a0,80007b08 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x2b0>
80007aa8:	f7842503          	lw	a0,-136(s0)
80007aac:	f7c42583          	lw	a1,-132(s0)
80007ab0:	f8042603          	lw	a2,-128(s0)
80007ab4:	faa42423          	sw	a0,-88(s0)
80007ab8:	fab42623          	sw	a1,-84(s0)
80007abc:	fac42823          	sw	a2,-80(s0)
80007ac0:	fb041603          	lh	a2,-80(s0)
80007ac4:	06c95463          	bge	s2,a2,80007b2c <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x2d4>
80007ac8:	fa842503          	lw	a0,-88(s0)
80007acc:	fac42583          	lw	a1,-84(s0)
80007ad0:	f7840713          	addi	a4,s0,-136
80007ad4:	00400793          	li	a5,4
80007ad8:	00048693          	mv	a3,s1
80007adc:	fffff097          	auipc	ra,0xfffff
80007ae0:	168080e7          	jalr	360(ra) # 80006c44 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E>
80007ae4:	00050613          	mv	a2,a0
80007ae8:	0840006f          	j	80007b6c <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x314>
80007aec:	8000d637          	lui	a2,0x8000d
80007af0:	28b60613          	addi	a2,a2,651 # 8000d28b <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.97>
80007af4:	00100593          	li	a1,1
80007af8:	f6c42e23          	sw	a2,-132(s0)
80007afc:	f8b42023          	sw	a1,-128(s0)
80007b00:	f7840613          	addi	a2,s0,-136
80007b04:	06c0006f          	j	80007b70 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x318>
80007b08:	fa840513          	addi	a0,s0,-88
80007b0c:	fb840593          	addi	a1,s0,-72
80007b10:	b7840613          	addi	a2,s0,-1160
80007b14:	00098693          	mv	a3,s3
80007b18:	00090713          	mv	a4,s2
80007b1c:	ffffc097          	auipc	ra,0xffffc
80007b20:	738080e7          	jalr	1848(ra) # 80004254 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc7c0af95cc0f10e5E>
80007b24:	fb041603          	lh	a2,-80(s0)
80007b28:	fac940e3          	blt	s2,a2,80007ac8 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x270>
80007b2c:	00200593          	li	a1,2
80007b30:	f6b41c23          	sh	a1,-136(s0)
80007b34:	02048063          	beqz	s1,80007b54 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x2fc>
80007b38:	8000d537          	lui	a0,0x8000d
80007b3c:	28150513          	addi	a0,a0,641 # 8000d281 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.84>
80007b40:	f6a42e23          	sw	a0,-132(s0)
80007b44:	f8b42023          	sw	a1,-128(s0)
80007b48:	f8041223          	sh	zero,-124(s0)
80007b4c:	f8942423          	sw	s1,-120(s0)
80007b50:	0180006f          	j	80007b68 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE+0x310>
80007b54:	8000d537          	lui	a0,0x8000d
80007b58:	28b50513          	addi	a0,a0,651 # 8000d28b <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.97>
80007b5c:	00100593          	li	a1,1
80007b60:	f6a42e23          	sw	a0,-132(s0)
80007b64:	f8b42023          	sw	a1,-128(s0)
80007b68:	f7840613          	addi	a2,s0,-136
80007b6c:	000b0513          	mv	a0,s6
80007b70:	fb442423          	sw	s4,-88(s0)
80007b74:	fb542623          	sw	s5,-84(s0)
80007b78:	fac42823          	sw	a2,-80(s0)
80007b7c:	fab42a23          	sw	a1,-76(s0)
80007b80:	fa840593          	addi	a1,s0,-88
80007b84:	00001097          	auipc	ra,0x1
80007b88:	c54080e7          	jalr	-940(ra) # 800087d8 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE>
80007b8c:	48c12083          	lw	ra,1164(sp)
80007b90:	48812403          	lw	s0,1160(sp)
80007b94:	48412483          	lw	s1,1156(sp)
80007b98:	48012903          	lw	s2,1152(sp)
80007b9c:	47c12983          	lw	s3,1148(sp)
80007ba0:	47812a03          	lw	s4,1144(sp)
80007ba4:	47412a83          	lw	s5,1140(sp)
80007ba8:	47012b03          	lw	s6,1136(sp)
80007bac:	49010113          	addi	sp,sp,1168
80007bb0:	00008067          	ret
80007bb4:	8000d537          	lui	a0,0x8000d
80007bb8:	28c50513          	addi	a0,a0,652 # 8000d28c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.107>
80007bbc:	8000d637          	lui	a2,0x8000d
80007bc0:	2b460613          	addi	a2,a2,692 # 8000d2b4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.108>
80007bc4:	02500593          	li	a1,37
80007bc8:	fffff097          	auipc	ra,0xfffff
80007bcc:	474080e7          	jalr	1140(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>

80007bd0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E>:
80007bd0:	00159813          	slli	a6,a1,0x1
80007bd4:	01885893          	srli	a7,a6,0x18
80007bd8:	00959713          	slli	a4,a1,0x9
80007bdc:	00975793          	srli	a5,a4,0x9
80007be0:	02088e63          	beqz	a7,80007c1c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x4c>
80007be4:	00800737          	lui	a4,0x800
80007be8:	00e7e733          	or	a4,a5,a4
80007bec:	00185293          	srli	t0,a6,0x1
80007bf0:	7f800837          	lui	a6,0x7f800
80007bf4:	03028c63          	beq	t0,a6,80007c2c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x5c>
80007bf8:	0105f2b3          	and	t0,a1,a6
80007bfc:	03028c63          	beq	t0,a6,80007c34 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x64>
80007c00:	00177313          	andi	t1,a4,1
80007c04:	02029c63          	bnez	t0,80007c3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x6c>
80007c08:	06078a63          	beqz	a5,80007c7c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0xac>
80007c0c:	00000793          	li	a5,0
80007c10:	00000813          	li	a6,0
80007c14:	f6a88293          	addi	t0,a7,-150
80007c18:	0580006f          	j	80007c70 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0xa0>
80007c1c:	00875713          	srli	a4,a4,0x8
80007c20:	00185293          	srli	t0,a6,0x1
80007c24:	7f800837          	lui	a6,0x7f800
80007c28:	fd0298e3          	bne	t0,a6,80007bf8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x28>
80007c2c:	00300893          	li	a7,3
80007c30:	0500006f          	j	80007c80 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0xb0>
80007c34:	00200893          	li	a7,2
80007c38:	0480006f          	j	80007c80 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0xb0>
80007c3c:	008007b7          	lui	a5,0x800
80007c40:	02f71063          	bne	a4,a5,80007c60 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x90>
80007c44:	00000793          	li	a5,0
80007c48:	00000813          	li	a6,0
80007c4c:	f6888293          	addi	t0,a7,-152
80007c50:	00200313          	li	t1,2
80007c54:	02000737          	lui	a4,0x2000
80007c58:	00100893          	li	a7,1
80007c5c:	0240006f          	j	80007c80 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0xb0>
80007c60:	00000793          	li	a5,0
80007c64:	00000813          	li	a6,0
80007c68:	00171713          	slli	a4,a4,0x1
80007c6c:	f6988293          	addi	t0,a7,-151
80007c70:	00134893          	xori	a7,t1,1
80007c74:	00100313          	li	t1,1
80007c78:	0080006f          	j	80007c80 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0xb0>
80007c7c:	00400893          	li	a7,4
80007c80:	f7010113          	addi	sp,sp,-144
80007c84:	08112623          	sw	ra,140(sp)
80007c88:	08812423          	sw	s0,136(sp)
80007c8c:	08912223          	sw	s1,132(sp)
80007c90:	09212023          	sw	s2,128(sp)
80007c94:	07312e23          	sw	s3,124(sp)
80007c98:	07412c23          	sw	s4,120(sp)
80007c9c:	09010413          	addi	s0,sp,144
80007ca0:	00100913          	li	s2,1
80007ca4:	ffe88393          	addi	t2,a7,-2
80007ca8:	fce42423          	sw	a4,-56(s0)
80007cac:	fcf42623          	sw	a5,-52(s0)
80007cb0:	fd242823          	sw	s2,-48(s0)
80007cb4:	fc042a23          	sw	zero,-44(s0)
80007cb8:	fc642c23          	sw	t1,-40(s0)
80007cbc:	fd042e23          	sw	a6,-36(s0)
80007cc0:	fe541023          	sh	t0,-32(s0)
80007cc4:	ff140123          	sb	a7,-30(s0)
80007cc8:	02038863          	beqz	t2,80007cf8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x128>
80007ccc:	00300713          	li	a4,3
80007cd0:	00e3e463          	bltu	t2,a4,80007cd8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x108>
80007cd4:	00300393          	li	t2,3
80007cd8:	00100713          	li	a4,1
80007cdc:	0405c463          	bltz	a1,80007d24 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x154>
80007ce0:	8000d937          	lui	s2,0x8000d
80007ce4:	28490913          	addi	s2,s2,644 # 8000d284 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.94>
80007ce8:	00100793          	li	a5,1
80007cec:	00100993          	li	s3,1
80007cf0:	04060463          	beqz	a2,80007d38 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x168>
80007cf4:	04c0006f          	j	80007d40 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x170>
80007cf8:	00000993          	li	s3,0
80007cfc:	00200593          	li	a1,2
80007d00:	8000d6b7          	lui	a3,0x8000d
80007d04:	28568693          	addi	a3,a3,645 # 8000d285 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.95>
80007d08:	00300713          	li	a4,3
80007d0c:	f8840613          	addi	a2,s0,-120
80007d10:	f8b41423          	sh	a1,-120(s0)
80007d14:	f8d42623          	sw	a3,-116(s0)
80007d18:	f8e42823          	sw	a4,-112(s0)
80007d1c:	00100593          	li	a1,1
80007d20:	11c0006f          	j	80007e3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x26c>
80007d24:	8000d937          	lui	s2,0x8000d
80007d28:	28390913          	addi	s2,s2,643 # 8000d283 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.93>
80007d2c:	00090793          	mv	a5,s2
80007d30:	00100993          	li	s3,1
80007d34:	00061663          	bnez	a2,80007d40 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x170>
80007d38:	01f5d993          	srli	s3,a1,0x1f
80007d3c:	00078913          	mv	s2,a5
80007d40:	02e38c63          	beq	t2,a4,80007d78 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x1a8>
80007d44:	00200593          	li	a1,2
80007d48:	04b39a63          	bne	t2,a1,80007d9c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x1cc>
80007d4c:	f8b41423          	sh	a1,-120(s0)
80007d50:	08068863          	beqz	a3,80007de0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x210>
80007d54:	8000d637          	lui	a2,0x8000d
80007d58:	28160613          	addi	a2,a2,641 # 8000d281 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.84>
80007d5c:	00200593          	li	a1,2
80007d60:	00100693          	li	a3,1
80007d64:	f8c42623          	sw	a2,-116(s0)
80007d68:	f8b42823          	sw	a1,-112(s0)
80007d6c:	f8041a23          	sh	zero,-108(s0)
80007d70:	f8d42c23          	sw	a3,-104(s0)
80007d74:	0800006f          	j	80007df4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x224>
80007d78:	00200613          	li	a2,2
80007d7c:	8000d6b7          	lui	a3,0x8000d
80007d80:	28868693          	addi	a3,a3,648 # 8000d288 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.96>
80007d84:	00300713          	li	a4,3
80007d88:	00100593          	li	a1,1
80007d8c:	f8c41423          	sh	a2,-120(s0)
80007d90:	f8d42623          	sw	a3,-116(s0)
80007d94:	f8e42823          	sw	a4,-112(s0)
80007d98:	05c0006f          	j	80007df4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x224>
80007d9c:	00068493          	mv	s1,a3
80007da0:	00050a13          	mv	s4,a0
80007da4:	f8840513          	addi	a0,s0,-120
80007da8:	fc840593          	addi	a1,s0,-56
80007dac:	f7740613          	addi	a2,s0,-137
80007db0:	01100693          	li	a3,17
80007db4:	ffffd097          	auipc	ra,0xffffd
80007db8:	290080e7          	jalr	656(ra) # 80005044 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17hec376a8613542fc5E>
80007dbc:	f8842503          	lw	a0,-120(s0)
80007dc0:	02050e63          	beqz	a0,80007dfc <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x22c>
80007dc4:	f8842503          	lw	a0,-120(s0)
80007dc8:	f8c42583          	lw	a1,-116(s0)
80007dcc:	f9042603          	lw	a2,-112(s0)
80007dd0:	faa42c23          	sw	a0,-72(s0)
80007dd4:	fab42e23          	sw	a1,-68(s0)
80007dd8:	fcc42023          	sw	a2,-64(s0)
80007ddc:	0380006f          	j	80007e14 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x244>
80007de0:	8000d637          	lui	a2,0x8000d
80007de4:	28b60613          	addi	a2,a2,651 # 8000d28b <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.97>
80007de8:	00100593          	li	a1,1
80007dec:	f8c42623          	sw	a2,-116(s0)
80007df0:	f8b42823          	sw	a1,-112(s0)
80007df4:	f8840613          	addi	a2,s0,-120
80007df8:	0440006f          	j	80007e3c <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E+0x26c>
80007dfc:	fb840513          	addi	a0,s0,-72
80007e00:	fc840593          	addi	a1,s0,-56
80007e04:	f7740613          	addi	a2,s0,-137
80007e08:	01100693          	li	a3,17
80007e0c:	ffffb097          	auipc	ra,0xffffb
80007e10:	4e0080e7          	jalr	1248(ra) # 800032ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17h3712152298b25552E>
80007e14:	fb842503          	lw	a0,-72(s0)
80007e18:	fbc42583          	lw	a1,-68(s0)
80007e1c:	fc041603          	lh	a2,-64(s0)
80007e20:	f8840713          	addi	a4,s0,-120
80007e24:	00400793          	li	a5,4
80007e28:	00048693          	mv	a3,s1
80007e2c:	fffff097          	auipc	ra,0xfffff
80007e30:	e18080e7          	jalr	-488(ra) # 80006c44 <_ZN4core3num7flt2dec17digits_to_dec_str17h285dc3661a948530E>
80007e34:	00050613          	mv	a2,a0
80007e38:	000a0513          	mv	a0,s4
80007e3c:	fb242c23          	sw	s2,-72(s0)
80007e40:	fb342e23          	sw	s3,-68(s0)
80007e44:	fcc42023          	sw	a2,-64(s0)
80007e48:	fcb42223          	sw	a1,-60(s0)
80007e4c:	fb840593          	addi	a1,s0,-72
80007e50:	00001097          	auipc	ra,0x1
80007e54:	988080e7          	jalr	-1656(ra) # 800087d8 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE>
80007e58:	08c12083          	lw	ra,140(sp)
80007e5c:	08812403          	lw	s0,136(sp)
80007e60:	08412483          	lw	s1,132(sp)
80007e64:	08012903          	lw	s2,128(sp)
80007e68:	07c12983          	lw	s3,124(sp)
80007e6c:	07812a03          	lw	s4,120(sp)
80007e70:	09010113          	addi	sp,sp,144
80007e74:	00008067          	ret

80007e78 <_ZN4core3fmt5Write9write_fmt17hba415171514d6246E>:
80007e78:	ff010113          	addi	sp,sp,-16
80007e7c:	00112623          	sw	ra,12(sp)
80007e80:	00812423          	sw	s0,8(sp)
80007e84:	01010413          	addi	s0,sp,16
80007e88:	00058613          	mv	a2,a1
80007e8c:	8000d5b7          	lui	a1,0x8000d
80007e90:	3ec58593          	addi	a1,a1,1004 # 8000d3ec <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.257>
80007e94:	00c12083          	lw	ra,12(sp)
80007e98:	00812403          	lw	s0,8(sp)
80007e9c:	01010113          	addi	sp,sp,16
80007ea0:	00000317          	auipc	t1,0x0
80007ea4:	04030067          	jr	64(t1) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>

80007ea8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hd3395efd9ae95426E>:
80007ea8:	ff010113          	addi	sp,sp,-16
80007eac:	00112623          	sw	ra,12(sp)
80007eb0:	00812423          	sw	s0,8(sp)
80007eb4:	01010413          	addi	s0,sp,16
80007eb8:	0005a603          	lw	a2,0(a1)
80007ebc:	0045a583          	lw	a1,4(a1)
80007ec0:	00050693          	mv	a3,a0
80007ec4:	00060513          	mv	a0,a2
80007ec8:	00068613          	mv	a2,a3
80007ecc:	00c12083          	lw	ra,12(sp)
80007ed0:	00812403          	lw	s0,8(sp)
80007ed4:	01010113          	addi	sp,sp,16
80007ed8:	00000317          	auipc	t1,0x0
80007edc:	00830067          	jr	8(t1) # 80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>

80007ee0 <_ZN4core3fmt5write17hba302178da081ba5E>:
80007ee0:	fc010113          	addi	sp,sp,-64
80007ee4:	02112e23          	sw	ra,60(sp)
80007ee8:	02812c23          	sw	s0,56(sp)
80007eec:	02912a23          	sw	s1,52(sp)
80007ef0:	03212823          	sw	s2,48(sp)
80007ef4:	03312623          	sw	s3,44(sp)
80007ef8:	03412423          	sw	s4,40(sp)
80007efc:	03512223          	sw	s5,36(sp)
80007f00:	03612023          	sw	s6,32(sp)
80007f04:	01712e23          	sw	s7,28(sp)
80007f08:	01812c23          	sw	s8,24(sp)
80007f0c:	04010413          	addi	s0,sp,64
80007f10:	00060493          	mv	s1,a2
80007f14:	e0000637          	lui	a2,0xe0000
80007f18:	0104ab03          	lw	s6,16(s1)
80007f1c:	02060613          	addi	a2,a2,32 # e0000020 <KALLOC_BUFFER+0x5fff0020>
80007f20:	fca42423          	sw	a0,-56(s0)
80007f24:	fcb42623          	sw	a1,-52(s0)
80007f28:	fcc42823          	sw	a2,-48(s0)
80007f2c:	fc042a23          	sw	zero,-44(s0)
80007f30:	100b0663          	beqz	s6,8000803c <_ZN4core3fmt5write17hba302178da081ba5E+0x15c>
80007f34:	0144a503          	lw	a0,20(s1)
80007f38:	16050e63          	beqz	a0,800080b4 <_ZN4core3fmt5write17hba302178da081ba5E+0x1d4>
80007f3c:	0004aa83          	lw	s5,0(s1)
80007f40:	0084aa03          	lw	s4,8(s1)
80007f44:	fff50593          	addi	a1,a0,-1
80007f48:	00359593          	slli	a1,a1,0x3
80007f4c:	0035d593          	srli	a1,a1,0x3
80007f50:	00158993          	addi	s3,a1,1
80007f54:	004a8a93          	addi	s5,s5,4
80007f58:	01800593          	li	a1,24
80007f5c:	00002097          	auipc	ra,0x2
80007f60:	26c080e7          	jalr	620(ra) # 8000a1c8 <__mulsi3>
80007f64:	00050913          	mv	s2,a0
80007f68:	00ab0b13          	addi	s6,s6,10
80007f6c:	00200b93          	li	s7,2
80007f70:	00100c13          	li	s8,1
80007f74:	000aa603          	lw	a2,0(s5)
80007f78:	00060e63          	beqz	a2,80007f94 <_ZN4core3fmt5write17hba302178da081ba5E+0xb4>
80007f7c:	fcc42683          	lw	a3,-52(s0)
80007f80:	fc842503          	lw	a0,-56(s0)
80007f84:	ffcaa583          	lw	a1,-4(s5)
80007f88:	00c6a683          	lw	a3,12(a3)
80007f8c:	000680e7          	jalr	a3
80007f90:	14051c63          	bnez	a0,800080e8 <_ZN4core3fmt5write17hba302178da081ba5E+0x208>
80007f94:	ffeb5503          	lhu	a0,-2(s6)
80007f98:	02050c63          	beqz	a0,80007fd0 <_ZN4core3fmt5write17hba302178da081ba5E+0xf0>
80007f9c:	05851463          	bne	a0,s8,80007fe4 <_ZN4core3fmt5write17hba302178da081ba5E+0x104>
80007fa0:	002b2503          	lw	a0,2(s6)
80007fa4:	00351513          	slli	a0,a0,0x3
80007fa8:	00aa0533          	add	a0,s4,a0
80007fac:	00455583          	lhu	a1,4(a0)
80007fb0:	ff6b5503          	lhu	a0,-10(s6)
80007fb4:	03750463          	beq	a0,s7,80007fdc <_ZN4core3fmt5write17hba302178da081ba5E+0xfc>
80007fb8:	03851e63          	bne	a0,s8,80007ff4 <_ZN4core3fmt5write17hba302178da081ba5E+0x114>
80007fbc:	ffab2503          	lw	a0,-6(s6)
80007fc0:	00351513          	slli	a0,a0,0x3
80007fc4:	00aa0533          	add	a0,s4,a0
80007fc8:	00455603          	lhu	a2,4(a0)
80007fcc:	02c0006f          	j	80007ff8 <_ZN4core3fmt5write17hba302178da081ba5E+0x118>
80007fd0:	000b5583          	lhu	a1,0(s6)
80007fd4:	ff6b5503          	lhu	a0,-10(s6)
80007fd8:	ff7510e3          	bne	a0,s7,80007fb8 <_ZN4core3fmt5write17hba302178da081ba5E+0xd8>
80007fdc:	00000613          	li	a2,0
80007fe0:	0180006f          	j	80007ff8 <_ZN4core3fmt5write17hba302178da081ba5E+0x118>
80007fe4:	00000593          	li	a1,0
80007fe8:	ff6b5503          	lhu	a0,-10(s6)
80007fec:	fd7516e3          	bne	a0,s7,80007fb8 <_ZN4core3fmt5write17hba302178da081ba5E+0xd8>
80007ff0:	fedff06f          	j	80007fdc <_ZN4core3fmt5write17hba302178da081ba5E+0xfc>
80007ff4:	ff8b5603          	lhu	a2,-8(s6)
80007ff8:	006b2503          	lw	a0,6(s6)
80007ffc:	00ab2683          	lw	a3,10(s6)
80008000:	00351513          	slli	a0,a0,0x3
80008004:	00aa0733          	add	a4,s4,a0
80008008:	00072503          	lw	a0,0(a4) # 2000000 <.Lline_table_start2+0x1ffe7c6>
8000800c:	00472703          	lw	a4,4(a4)
80008010:	fcd42823          	sw	a3,-48(s0)
80008014:	fcb41a23          	sh	a1,-44(s0)
80008018:	fcc41b23          	sh	a2,-42(s0)
8000801c:	fc840593          	addi	a1,s0,-56
80008020:	000700e7          	jalr	a4
80008024:	0c051263          	bnez	a0,800080e8 <_ZN4core3fmt5write17hba302178da081ba5E+0x208>
80008028:	008a8a93          	addi	s5,s5,8
8000802c:	fe890913          	addi	s2,s2,-24
80008030:	018b0b13          	addi	s6,s6,24
80008034:	f40910e3          	bnez	s2,80007f74 <_ZN4core3fmt5write17hba302178da081ba5E+0x94>
80008038:	0700006f          	j	800080a8 <_ZN4core3fmt5write17hba302178da081ba5E+0x1c8>
8000803c:	00c4a503          	lw	a0,12(s1)
80008040:	06050a63          	beqz	a0,800080b4 <_ZN4core3fmt5write17hba302178da081ba5E+0x1d4>
80008044:	0004aa83          	lw	s5,0(s1)
80008048:	0084a903          	lw	s2,8(s1)
8000804c:	00351a13          	slli	s4,a0,0x3
80008050:	fff50513          	addi	a0,a0,-1
80008054:	00351513          	slli	a0,a0,0x3
80008058:	00355513          	srli	a0,a0,0x3
8000805c:	00150993          	addi	s3,a0,1
80008060:	01490a33          	add	s4,s2,s4
80008064:	004a8a93          	addi	s5,s5,4
80008068:	000aa603          	lw	a2,0(s5)
8000806c:	00060e63          	beqz	a2,80008088 <_ZN4core3fmt5write17hba302178da081ba5E+0x1a8>
80008070:	fcc42683          	lw	a3,-52(s0)
80008074:	fc842503          	lw	a0,-56(s0)
80008078:	ffcaa583          	lw	a1,-4(s5)
8000807c:	00c6a683          	lw	a3,12(a3)
80008080:	000680e7          	jalr	a3
80008084:	06051263          	bnez	a0,800080e8 <_ZN4core3fmt5write17hba302178da081ba5E+0x208>
80008088:	00092503          	lw	a0,0(s2)
8000808c:	00492603          	lw	a2,4(s2)
80008090:	fc840593          	addi	a1,s0,-56
80008094:	000600e7          	jalr	a2
80008098:	04051863          	bnez	a0,800080e8 <_ZN4core3fmt5write17hba302178da081ba5E+0x208>
8000809c:	00890913          	addi	s2,s2,8
800080a0:	008a8a93          	addi	s5,s5,8
800080a4:	fd4912e3          	bne	s2,s4,80008068 <_ZN4core3fmt5write17hba302178da081ba5E+0x188>
800080a8:	0044a503          	lw	a0,4(s1)
800080ac:	00a9ea63          	bltu	s3,a0,800080c0 <_ZN4core3fmt5write17hba302178da081ba5E+0x1e0>
800080b0:	0400006f          	j	800080f0 <_ZN4core3fmt5write17hba302178da081ba5E+0x210>
800080b4:	00000993          	li	s3,0
800080b8:	0044a503          	lw	a0,4(s1)
800080bc:	02a07a63          	bgeu	zero,a0,800080f0 <_ZN4core3fmt5write17hba302178da081ba5E+0x210>
800080c0:	0004a583          	lw	a1,0(s1)
800080c4:	00399993          	slli	s3,s3,0x3
800080c8:	fc842503          	lw	a0,-56(s0)
800080cc:	fcc42683          	lw	a3,-52(s0)
800080d0:	013589b3          	add	s3,a1,s3
800080d4:	0009a583          	lw	a1,0(s3)
800080d8:	0049a603          	lw	a2,4(s3)
800080dc:	00c6a683          	lw	a3,12(a3)
800080e0:	000680e7          	jalr	a3
800080e4:	00050663          	beqz	a0,800080f0 <_ZN4core3fmt5write17hba302178da081ba5E+0x210>
800080e8:	00100513          	li	a0,1
800080ec:	0080006f          	j	800080f4 <_ZN4core3fmt5write17hba302178da081ba5E+0x214>
800080f0:	00000513          	li	a0,0
800080f4:	03c12083          	lw	ra,60(sp)
800080f8:	03812403          	lw	s0,56(sp)
800080fc:	03412483          	lw	s1,52(sp)
80008100:	03012903          	lw	s2,48(sp)
80008104:	02c12983          	lw	s3,44(sp)
80008108:	02812a03          	lw	s4,40(sp)
8000810c:	02412a83          	lw	s5,36(sp)
80008110:	02012b03          	lw	s6,32(sp)
80008114:	01c12b83          	lw	s7,28(sp)
80008118:	01812c03          	lw	s8,24(sp)
8000811c:	04010113          	addi	sp,sp,64
80008120:	00008067          	ret

80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>:
80008124:	fc010113          	addi	sp,sp,-64
80008128:	02112e23          	sw	ra,60(sp)
8000812c:	02812c23          	sw	s0,56(sp)
80008130:	02912a23          	sw	s1,52(sp)
80008134:	03212823          	sw	s2,48(sp)
80008138:	03312623          	sw	s3,44(sp)
8000813c:	03412423          	sw	s4,40(sp)
80008140:	03512223          	sw	s5,36(sp)
80008144:	03612023          	sw	s6,32(sp)
80008148:	01712e23          	sw	s7,28(sp)
8000814c:	01812c23          	sw	s8,24(sp)
80008150:	01912a23          	sw	s9,20(sp)
80008154:	01a12823          	sw	s10,16(sp)
80008158:	01b12623          	sw	s11,12(sp)
8000815c:	04010413          	addi	s0,sp,64
80008160:	00078493          	mv	s1,a5
80008164:	00070913          	mv	s2,a4
80008168:	00068a13          	mv	s4,a3
8000816c:	00060a93          	mv	s5,a2
80008170:	00050993          	mv	s3,a0
80008174:	08058c63          	beqz	a1,8000820c <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0xe8>
80008178:	0089ab83          	lw	s7,8(s3)
8000817c:	00200537          	lui	a0,0x200
80008180:	00abf533          	and	a0,s7,a0
80008184:	00110b37          	lui	s6,0x110
80008188:	00050463          	beqz	a0,80008190 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x6c>
8000818c:	02b00b13          	li	s6,43
80008190:	01555513          	srli	a0,a0,0x15
80008194:	00950cb3          	add	s9,a0,s1
80008198:	008b9513          	slli	a0,s7,0x8
8000819c:	08055263          	bgez	a0,80008220 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0xfc>
800081a0:	01000513          	li	a0,16
800081a4:	0eaa7e63          	bgeu	s4,a0,800082a0 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x17c>
800081a8:	00000513          	li	a0,0
800081ac:	020a0263          	beqz	s4,800081d0 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0xac>
800081b0:	014a85b3          	add	a1,s5,s4
800081b4:	000a8613          	mv	a2,s5
800081b8:	00060683          	lb	a3,0(a2)
800081bc:	00160613          	addi	a2,a2,1
800081c0:	fc06a693          	slti	a3,a3,-64
800081c4:	0016c693          	xori	a3,a3,1
800081c8:	00d50533          	add	a0,a0,a3
800081cc:	feb616e3          	bne	a2,a1,800081b8 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x94>
800081d0:	01950cb3          	add	s9,a0,s9
800081d4:	00c9dd83          	lhu	s11,12(s3)
800081d8:	05bcfa63          	bgeu	s9,s11,8000822c <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x108>
800081dc:	007b9513          	slli	a0,s7,0x7
800081e0:	0e054063          	bltz	a0,800082c0 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x19c>
800081e4:	419d8633          	sub	a2,s11,s9
800081e8:	001b9513          	slli	a0,s7,0x1
800081ec:	01e55513          	srli	a0,a0,0x1e
800081f0:	00100593          	li	a1,1
800081f4:	00bb9b93          	slli	s7,s7,0xb
800081f8:	fd242423          	sw	s2,-56(s0)
800081fc:	14a5c663          	blt	a1,a0,80008348 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x224>
80008200:	18051663          	bnez	a0,8000838c <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x268>
80008204:	00000d13          	li	s10,0
80008208:	1880006f          	j	80008390 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x26c>
8000820c:	0089ab83          	lw	s7,8(s3)
80008210:	00148c93          	addi	s9,s1,1
80008214:	02d00b13          	li	s6,45
80008218:	008b9513          	slli	a0,s7,0x8
8000821c:	f80542e3          	bltz	a0,800081a0 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x7c>
80008220:	00000a93          	li	s5,0
80008224:	00c9dd83          	lhu	s11,12(s3)
80008228:	fbbceae3          	bltu	s9,s11,800081dc <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0xb8>
8000822c:	0009ab83          	lw	s7,0(s3)
80008230:	0049a983          	lw	s3,4(s3)
80008234:	000b8513          	mv	a0,s7
80008238:	00098593          	mv	a1,s3
8000823c:	000b0613          	mv	a2,s6
80008240:	000a8693          	mv	a3,s5
80008244:	000a0713          	mv	a4,s4
80008248:	00000097          	auipc	ra,0x0
8000824c:	248080e7          	jalr	584(ra) # 80008490 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E>
80008250:	18051063          	bnez	a0,800083d0 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2ac>
80008254:	00c9a303          	lw	t1,12(s3)
80008258:	000b8513          	mv	a0,s7
8000825c:	00090593          	mv	a1,s2
80008260:	00048613          	mv	a2,s1
80008264:	03c12083          	lw	ra,60(sp)
80008268:	03812403          	lw	s0,56(sp)
8000826c:	03412483          	lw	s1,52(sp)
80008270:	03012903          	lw	s2,48(sp)
80008274:	02c12983          	lw	s3,44(sp)
80008278:	02812a03          	lw	s4,40(sp)
8000827c:	02412a83          	lw	s5,36(sp)
80008280:	02012b03          	lw	s6,32(sp)
80008284:	01c12b83          	lw	s7,28(sp)
80008288:	01812c03          	lw	s8,24(sp)
8000828c:	01412c83          	lw	s9,20(sp)
80008290:	01012d03          	lw	s10,16(sp)
80008294:	00c12d83          	lw	s11,12(sp)
80008298:	04010113          	addi	sp,sp,64
8000829c:	00030067          	jr	t1
800082a0:	000a8513          	mv	a0,s5
800082a4:	000a0593          	mv	a1,s4
800082a8:	00001097          	auipc	ra,0x1
800082ac:	cb4080e7          	jalr	-844(ra) # 80008f5c <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E>
800082b0:	01950cb3          	add	s9,a0,s9
800082b4:	00c9dd83          	lhu	s11,12(s3)
800082b8:	f7bcfae3          	bgeu	s9,s11,8000822c <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x108>
800082bc:	f21ff06f          	j	800081dc <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0xb8>
800082c0:	0009ab83          	lw	s7,0(s3)
800082c4:	0049ac03          	lw	s8,4(s3)
800082c8:	0089ad03          	lw	s10,8(s3)
800082cc:	00c9a503          	lw	a0,12(s3)
800082d0:	fca42223          	sw	a0,-60(s0)
800082d4:	9fe00537          	lui	a0,0x9fe00
800082d8:	200005b7          	lui	a1,0x20000
800082dc:	00ad7533          	and	a0,s10,a0
800082e0:	03058593          	addi	a1,a1,48 # 20000030 <.Lline_table_start2+0x1fffe7f6>
800082e4:	00b56533          	or	a0,a0,a1
800082e8:	00a9a423          	sw	a0,8(s3)
800082ec:	000b8513          	mv	a0,s7
800082f0:	000c0593          	mv	a1,s8
800082f4:	000b0613          	mv	a2,s6
800082f8:	000a8693          	mv	a3,s5
800082fc:	000a0713          	mv	a4,s4
80008300:	00000097          	auipc	ra,0x0
80008304:	190080e7          	jalr	400(ra) # 80008490 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E>
80008308:	00100a13          	li	s4,1
8000830c:	0c051463          	bnez	a0,800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
80008310:	00000a93          	li	s5,0
80008314:	419d8533          	sub	a0,s11,s9
80008318:	00010b37          	lui	s6,0x10
8000831c:	fffb0b13          	addi	s6,s6,-1 # ffff <.Lline_table_start2+0xe7c5>
80008320:	01657cb3          	and	s9,a0,s6
80008324:	016af533          	and	a0,s5,s6
80008328:	03957c63          	bgeu	a0,s9,80008360 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x23c>
8000832c:	010c2603          	lw	a2,16(s8)
80008330:	001a8a93          	addi	s5,s5,1
80008334:	03000593          	li	a1,48
80008338:	000b8513          	mv	a0,s7
8000833c:	000600e7          	jalr	a2
80008340:	fe0502e3          	beqz	a0,80008324 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x200>
80008344:	0900006f          	j	800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
80008348:	00200593          	li	a1,2
8000834c:	00060d13          	mv	s10,a2
80008350:	04b51063          	bne	a0,a1,80008390 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x26c>
80008354:	01061513          	slli	a0,a2,0x10
80008358:	01155d13          	srli	s10,a0,0x11
8000835c:	0340006f          	j	80008390 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x26c>
80008360:	00cc2683          	lw	a3,12(s8)
80008364:	000b8513          	mv	a0,s7
80008368:	00090593          	mv	a1,s2
8000836c:	00048613          	mv	a2,s1
80008370:	000680e7          	jalr	a3
80008374:	06051063          	bnez	a0,800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
80008378:	00000a13          	li	s4,0
8000837c:	01a9a423          	sw	s10,8(s3)
80008380:	fc442503          	lw	a0,-60(s0)
80008384:	00a9a623          	sw	a0,12(s3)
80008388:	04c0006f          	j	800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
8000838c:	00060d13          	mv	s10,a2
80008390:	fcc42223          	sw	a2,-60(s0)
80008394:	00000d93          	li	s11,0
80008398:	00bbdb93          	srli	s7,s7,0xb
8000839c:	0009ac03          	lw	s8,0(s3)
800083a0:	0049a983          	lw	s3,4(s3)
800083a4:	00010937          	lui	s2,0x10
800083a8:	fff90913          	addi	s2,s2,-1 # ffff <.Lline_table_start2+0xe7c5>
800083ac:	012d7cb3          	and	s9,s10,s2
800083b0:	012df533          	and	a0,s11,s2
800083b4:	07957063          	bgeu	a0,s9,80008414 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2f0>
800083b8:	0109a603          	lw	a2,16(s3)
800083bc:	001d8d93          	addi	s11,s11,1
800083c0:	000c0513          	mv	a0,s8
800083c4:	000b8593          	mv	a1,s7
800083c8:	000600e7          	jalr	a2
800083cc:	fe0502e3          	beqz	a0,800083b0 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x28c>
800083d0:	00100a13          	li	s4,1
800083d4:	000a0513          	mv	a0,s4
800083d8:	03c12083          	lw	ra,60(sp)
800083dc:	03812403          	lw	s0,56(sp)
800083e0:	03412483          	lw	s1,52(sp)
800083e4:	03012903          	lw	s2,48(sp)
800083e8:	02c12983          	lw	s3,44(sp)
800083ec:	02812a03          	lw	s4,40(sp)
800083f0:	02412a83          	lw	s5,36(sp)
800083f4:	02012b03          	lw	s6,32(sp)
800083f8:	01c12b83          	lw	s7,28(sp)
800083fc:	01812c03          	lw	s8,24(sp)
80008400:	01412c83          	lw	s9,20(sp)
80008404:	01012d03          	lw	s10,16(sp)
80008408:	00c12d83          	lw	s11,12(sp)
8000840c:	04010113          	addi	sp,sp,64
80008410:	00008067          	ret
80008414:	000c0513          	mv	a0,s8
80008418:	00098593          	mv	a1,s3
8000841c:	000b0613          	mv	a2,s6
80008420:	000a8693          	mv	a3,s5
80008424:	000a0713          	mv	a4,s4
80008428:	00000097          	auipc	ra,0x0
8000842c:	068080e7          	jalr	104(ra) # 80008490 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E>
80008430:	00100a13          	li	s4,1
80008434:	fa0510e3          	bnez	a0,800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
80008438:	00c9a683          	lw	a3,12(s3)
8000843c:	000c0513          	mv	a0,s8
80008440:	fc842583          	lw	a1,-56(s0)
80008444:	00048613          	mv	a2,s1
80008448:	000680e7          	jalr	a3
8000844c:	f80514e3          	bnez	a0,800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
80008450:	00000493          	li	s1,0
80008454:	fc442503          	lw	a0,-60(s0)
80008458:	41a50533          	sub	a0,a0,s10
8000845c:	00010937          	lui	s2,0x10
80008460:	fff90913          	addi	s2,s2,-1 # ffff <.Lline_table_start2+0xe7c5>
80008464:	01257ab3          	and	s5,a0,s2
80008468:	0124f533          	and	a0,s1,s2
8000846c:	01553a33          	sltu	s4,a0,s5
80008470:	f75572e3          	bgeu	a0,s5,800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>
80008474:	0109a603          	lw	a2,16(s3)
80008478:	00148493          	addi	s1,s1,1
8000847c:	000c0513          	mv	a0,s8
80008480:	000b8593          	mv	a1,s7
80008484:	000600e7          	jalr	a2
80008488:	fe0500e3          	beqz	a0,80008468 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x344>
8000848c:	f49ff06f          	j	800083d4 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE+0x2b0>

80008490 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E>:
80008490:	fe010113          	addi	sp,sp,-32
80008494:	00112e23          	sw	ra,28(sp)
80008498:	00812c23          	sw	s0,24(sp)
8000849c:	00912a23          	sw	s1,20(sp)
800084a0:	01212823          	sw	s2,16(sp)
800084a4:	01312623          	sw	s3,12(sp)
800084a8:	01412423          	sw	s4,8(sp)
800084ac:	02010413          	addi	s0,sp,32
800084b0:	00070493          	mv	s1,a4
800084b4:	00068913          	mv	s2,a3
800084b8:	00058993          	mv	s3,a1
800084bc:	001105b7          	lui	a1,0x110
800084c0:	02b60463          	beq	a2,a1,800084e8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E+0x58>
800084c4:	0109a683          	lw	a3,16(s3)
800084c8:	00050a13          	mv	s4,a0
800084cc:	00060593          	mv	a1,a2
800084d0:	000680e7          	jalr	a3
800084d4:	00050593          	mv	a1,a0
800084d8:	000a0513          	mv	a0,s4
800084dc:	00058663          	beqz	a1,800084e8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E+0x58>
800084e0:	00100513          	li	a0,1
800084e4:	0380006f          	j	8000851c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E+0x8c>
800084e8:	02090863          	beqz	s2,80008518 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6ff5fe4b4a8a5754E+0x88>
800084ec:	00c9a303          	lw	t1,12(s3)
800084f0:	00090593          	mv	a1,s2
800084f4:	00048613          	mv	a2,s1
800084f8:	01c12083          	lw	ra,28(sp)
800084fc:	01812403          	lw	s0,24(sp)
80008500:	01412483          	lw	s1,20(sp)
80008504:	01012903          	lw	s2,16(sp)
80008508:	00c12983          	lw	s3,12(sp)
8000850c:	00812a03          	lw	s4,8(sp)
80008510:	02010113          	addi	sp,sp,32
80008514:	00030067          	jr	t1
80008518:	00000513          	li	a0,0
8000851c:	01c12083          	lw	ra,28(sp)
80008520:	01812403          	lw	s0,24(sp)
80008524:	01412483          	lw	s1,20(sp)
80008528:	01012903          	lw	s2,16(sp)
8000852c:	00c12983          	lw	s3,12(sp)
80008530:	00812a03          	lw	s4,8(sp)
80008534:	02010113          	addi	sp,sp,32
80008538:	00008067          	ret

8000853c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E>:
8000853c:	fd010113          	addi	sp,sp,-48
80008540:	02112623          	sw	ra,44(sp)
80008544:	02812423          	sw	s0,40(sp)
80008548:	02912223          	sw	s1,36(sp)
8000854c:	03212023          	sw	s2,32(sp)
80008550:	01312e23          	sw	s3,28(sp)
80008554:	01412c23          	sw	s4,24(sp)
80008558:	01512a23          	sw	s5,20(sp)
8000855c:	01612823          	sw	s6,16(sp)
80008560:	01712623          	sw	s7,12(sp)
80008564:	01812423          	sw	s8,8(sp)
80008568:	01912223          	sw	s9,4(sp)
8000856c:	01a12023          	sw	s10,0(sp)
80008570:	03010413          	addi	s0,sp,48
80008574:	00060913          	mv	s2,a2
80008578:	00852983          	lw	s3,8(a0) # 9fe00008 <KALLOC_BUFFER+0x1fdf0008>
8000857c:	18000637          	lui	a2,0x18000
80008580:	00c9f633          	and	a2,s3,a2
80008584:	00058493          	mv	s1,a1
80008588:	0e060263          	beqz	a2,8000866c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x130>
8000858c:	00399593          	slli	a1,s3,0x3
80008590:	0605c263          	bltz	a1,800085f4 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0xb8>
80008594:	01000593          	li	a1,16
80008598:	12b97063          	bgeu	s2,a1,800086b8 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x17c>
8000859c:	00000593          	li	a1,0
800085a0:	02090263          	beqz	s2,800085c4 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x88>
800085a4:	01248633          	add	a2,s1,s2
800085a8:	00048693          	mv	a3,s1
800085ac:	00068703          	lb	a4,0(a3)
800085b0:	00168693          	addi	a3,a3,1
800085b4:	fc072713          	slti	a4,a4,-64
800085b8:	00174713          	xori	a4,a4,1
800085bc:	00e585b3          	add	a1,a1,a4
800085c0:	fec696e3          	bne	a3,a2,800085ac <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x70>
800085c4:	00c55603          	lhu	a2,12(a0)
800085c8:	0ac5f263          	bgeu	a1,a2,8000866c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x130>
800085cc:	00000b13          	li	s6,0
800085d0:	40b60ab3          	sub	s5,a2,a1
800085d4:	00199593          	slli	a1,s3,0x1
800085d8:	01e5d593          	srli	a1,a1,0x1e
800085dc:	00100613          	li	a2,1
800085e0:	00b99993          	slli	s3,s3,0xb
800085e4:	0eb64e63          	blt	a2,a1,800086e0 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x1a4>
800085e8:	10058463          	beqz	a1,800086f0 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x1b4>
800085ec:	000a8b13          	mv	s6,s5
800085f0:	1000006f          	j	800086f0 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x1b4>
800085f4:	00e55583          	lhu	a1,14(a0)
800085f8:	18058863          	beqz	a1,80008788 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x24c>
800085fc:	012486b3          	add	a3,s1,s2
80008600:	0e000713          	li	a4,224
80008604:	0f000793          	li	a5,240
80008608:	00048813          	mv	a6,s1
8000860c:	00058613          	mv	a2,a1
80008610:	00000913          	li	s2,0
80008614:	01c0006f          	j	80008630 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0xf4>
80008618:	00180893          	addi	a7,a6,1 # 7f800001 <.Lline_table_start2+0x7f7fe7c7>
8000861c:	41280833          	sub	a6,a6,s2
80008620:	fff60613          	addi	a2,a2,-1 # 17ffffff <.Lline_table_start2+0x17ffe7c5>
80008624:	41088933          	sub	s2,a7,a6
80008628:	00088813          	mv	a6,a7
8000862c:	02060a63          	beqz	a2,80008660 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x124>
80008630:	02d80863          	beq	a6,a3,80008660 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x124>
80008634:	00080883          	lb	a7,0(a6)
80008638:	fe08d0e3          	bgez	a7,80008618 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0xdc>
8000863c:	0ff8f893          	zext.b	a7,a7
80008640:	00e8e863          	bltu	a7,a4,80008650 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x114>
80008644:	00f8ea63          	bltu	a7,a5,80008658 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x11c>
80008648:	00480893          	addi	a7,a6,4
8000864c:	fd1ff06f          	j	8000861c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0xe0>
80008650:	00280893          	addi	a7,a6,2
80008654:	fc9ff06f          	j	8000861c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0xe0>
80008658:	00380893          	addi	a7,a6,3
8000865c:	fc1ff06f          	j	8000861c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0xe0>
80008660:	40c585b3          	sub	a1,a1,a2
80008664:	00c55603          	lhu	a2,12(a0)
80008668:	f6c5e2e3          	bltu	a1,a2,800085cc <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x90>
8000866c:	00452583          	lw	a1,4(a0)
80008670:	00052503          	lw	a0,0(a0)
80008674:	00c5a303          	lw	t1,12(a1) # 11000c <.Lline_table_start2+0x10e7d2>
80008678:	00048593          	mv	a1,s1
8000867c:	00090613          	mv	a2,s2
80008680:	02c12083          	lw	ra,44(sp)
80008684:	02812403          	lw	s0,40(sp)
80008688:	02412483          	lw	s1,36(sp)
8000868c:	02012903          	lw	s2,32(sp)
80008690:	01c12983          	lw	s3,28(sp)
80008694:	01812a03          	lw	s4,24(sp)
80008698:	01412a83          	lw	s5,20(sp)
8000869c:	01012b03          	lw	s6,16(sp)
800086a0:	00c12b83          	lw	s7,12(sp)
800086a4:	00812c03          	lw	s8,8(sp)
800086a8:	00412c83          	lw	s9,4(sp)
800086ac:	00012d03          	lw	s10,0(sp)
800086b0:	03010113          	addi	sp,sp,48
800086b4:	00030067          	jr	t1
800086b8:	00050a13          	mv	s4,a0
800086bc:	00048513          	mv	a0,s1
800086c0:	00090593          	mv	a1,s2
800086c4:	00001097          	auipc	ra,0x1
800086c8:	898080e7          	jalr	-1896(ra) # 80008f5c <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E>
800086cc:	00050593          	mv	a1,a0
800086d0:	000a0513          	mv	a0,s4
800086d4:	00ca5603          	lhu	a2,12(s4)
800086d8:	f8c5fae3          	bgeu	a1,a2,8000866c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x130>
800086dc:	ef1ff06f          	j	800085cc <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x90>
800086e0:	00200613          	li	a2,2
800086e4:	00c59663          	bne	a1,a2,800086f0 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x1b4>
800086e8:	010a9593          	slli	a1,s5,0x10
800086ec:	0115db13          	srli	s6,a1,0x11
800086f0:	00000c13          	li	s8,0
800086f4:	00b9d993          	srli	s3,s3,0xb
800086f8:	00052a03          	lw	s4,0(a0)
800086fc:	00452b83          	lw	s7,4(a0)
80008700:	00010cb7          	lui	s9,0x10
80008704:	fffc8c93          	addi	s9,s9,-1 # ffff <.Lline_table_start2+0xe7c5>
80008708:	019b7d33          	and	s10,s6,s9
8000870c:	019c7533          	and	a0,s8,s9
80008710:	03a57063          	bgeu	a0,s10,80008730 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x1f4>
80008714:	010ba603          	lw	a2,16(s7)
80008718:	001c0c13          	addi	s8,s8,1
8000871c:	000a0513          	mv	a0,s4
80008720:	00098593          	mv	a1,s3
80008724:	000600e7          	jalr	a2
80008728:	fe0502e3          	beqz	a0,8000870c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x1d0>
8000872c:	01c0006f          	j	80008748 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x20c>
80008730:	00cba683          	lw	a3,12(s7)
80008734:	000a0513          	mv	a0,s4
80008738:	00048593          	mv	a1,s1
8000873c:	00090613          	mv	a2,s2
80008740:	000680e7          	jalr	a3
80008744:	04050c63          	beqz	a0,8000879c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x260>
80008748:	00100493          	li	s1,1
8000874c:	00048513          	mv	a0,s1
80008750:	02c12083          	lw	ra,44(sp)
80008754:	02812403          	lw	s0,40(sp)
80008758:	02412483          	lw	s1,36(sp)
8000875c:	02012903          	lw	s2,32(sp)
80008760:	01c12983          	lw	s3,28(sp)
80008764:	01812a03          	lw	s4,24(sp)
80008768:	01412a83          	lw	s5,20(sp)
8000876c:	01012b03          	lw	s6,16(sp)
80008770:	00c12b83          	lw	s7,12(sp)
80008774:	00812c03          	lw	s8,8(sp)
80008778:	00412c83          	lw	s9,4(sp)
8000877c:	00012d03          	lw	s10,0(sp)
80008780:	03010113          	addi	sp,sp,48
80008784:	00008067          	ret
80008788:	00000913          	li	s2,0
8000878c:	400585b3          	sub	a1,a1,zero
80008790:	00c55603          	lhu	a2,12(a0)
80008794:	e2c5ece3          	bltu	a1,a2,800085cc <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x90>
80008798:	ed5ff06f          	j	8000866c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x130>
8000879c:	00000913          	li	s2,0
800087a0:	416a8533          	sub	a0,s5,s6
800087a4:	00010ab7          	lui	s5,0x10
800087a8:	fffa8a93          	addi	s5,s5,-1 # ffff <.Lline_table_start2+0xe7c5>
800087ac:	01557b33          	and	s6,a0,s5
800087b0:	01597533          	and	a0,s2,s5
800087b4:	016534b3          	sltu	s1,a0,s6
800087b8:	f9657ae3          	bgeu	a0,s6,8000874c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x210>
800087bc:	010ba603          	lw	a2,16(s7)
800087c0:	00190913          	addi	s2,s2,1
800087c4:	000a0513          	mv	a0,s4
800087c8:	00098593          	mv	a1,s3
800087cc:	000600e7          	jalr	a2
800087d0:	fe0500e3          	beqz	a0,800087b0 <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x274>
800087d4:	f79ff06f          	j	8000874c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E+0x210>

800087d8 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE>:
800087d8:	fb010113          	addi	sp,sp,-80
800087dc:	04112623          	sw	ra,76(sp)
800087e0:	04812423          	sw	s0,72(sp)
800087e4:	04912223          	sw	s1,68(sp)
800087e8:	05212023          	sw	s2,64(sp)
800087ec:	03312e23          	sw	s3,60(sp)
800087f0:	03412c23          	sw	s4,56(sp)
800087f4:	03512a23          	sw	s5,52(sp)
800087f8:	03612823          	sw	s6,48(sp)
800087fc:	03712623          	sw	s7,44(sp)
80008800:	03812423          	sw	s8,40(sp)
80008804:	03912223          	sw	s9,36(sp)
80008808:	03a12023          	sw	s10,32(sp)
8000880c:	01b12e23          	sw	s11,28(sp)
80008810:	05010413          	addi	s0,sp,80
80008814:	00050493          	mv	s1,a0
80008818:	00c55983          	lhu	s3,12(a0)
8000881c:	00058613          	mv	a2,a1
80008820:	04098463          	beqz	s3,80008868 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x90>
80008824:	0084ab03          	lw	s6,8(s1)
80008828:	00062503          	lw	a0,0(a2)
8000882c:	00462583          	lw	a1,4(a2)
80008830:	00862683          	lw	a3,8(a2)
80008834:	00c62603          	lw	a2,12(a2)
80008838:	00c4ab83          	lw	s7,12(s1)
8000883c:	007b1713          	slli	a4,s6,0x7
80008840:	faa42e23          	sw	a0,-68(s0)
80008844:	fcb42023          	sw	a1,-64(s0)
80008848:	fcd42223          	sw	a3,-60(s0)
8000884c:	fcc42423          	sw	a2,-56(s0)
80008850:	06074063          	bltz	a4,800088b0 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0xd8>
80008854:	fc042a03          	lw	s4,-64(s0)
80008858:	000b0a93          	mv	s5,s6
8000885c:	fc842503          	lw	a0,-56(s0)
80008860:	0a051c63          	bnez	a0,80008918 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x140>
80008864:	1300006f          	j	80008994 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x1bc>
80008868:	0004a503          	lw	a0,0(s1)
8000886c:	0044a583          	lw	a1,4(s1)
80008870:	04c12083          	lw	ra,76(sp)
80008874:	04812403          	lw	s0,72(sp)
80008878:	04412483          	lw	s1,68(sp)
8000887c:	04012903          	lw	s2,64(sp)
80008880:	03c12983          	lw	s3,60(sp)
80008884:	03812a03          	lw	s4,56(sp)
80008888:	03412a83          	lw	s5,52(sp)
8000888c:	03012b03          	lw	s6,48(sp)
80008890:	02c12b83          	lw	s7,44(sp)
80008894:	02812c03          	lw	s8,40(sp)
80008898:	02412c83          	lw	s9,36(sp)
8000889c:	02012d03          	lw	s10,32(sp)
800088a0:	01c12d83          	lw	s11,28(sp)
800088a4:	05010113          	addi	sp,sp,80
800088a8:	00000317          	auipc	t1,0x0
800088ac:	23430067          	jr	564(t1) # 80008adc <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E>
800088b0:	0044a603          	lw	a2,4(s1)
800088b4:	0004a503          	lw	a0,0(s1)
800088b8:	fbc42583          	lw	a1,-68(s0)
800088bc:	fc042903          	lw	s2,-64(s0)
800088c0:	00c62683          	lw	a3,12(a2)
800088c4:	00090613          	mv	a2,s2
800088c8:	000680e7          	jalr	a3
800088cc:	18051863          	bnez	a0,80008a5c <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x284>
800088d0:	00000a13          	li	s4,0
800088d4:	9fe00537          	lui	a0,0x9fe00
800088d8:	200005b7          	lui	a1,0x20000
800088dc:	00ab7533          	and	a0,s6,a0
800088e0:	03058593          	addi	a1,a1,48 # 20000030 <.Lline_table_start2+0x1fffe7f6>
800088e4:	00b56ab3          	or	s5,a0,a1
800088e8:	01091913          	slli	s2,s2,0x10
800088ec:	01095513          	srli	a0,s2,0x10
800088f0:	40a98533          	sub	a0,s3,a0
800088f4:	00a9b5b3          	sltu	a1,s3,a0
800088f8:	fff58593          	addi	a1,a1,-1
800088fc:	00a5f9b3          	and	s3,a1,a0
80008900:	00100513          	li	a0,1
80008904:	faa42e23          	sw	a0,-68(s0)
80008908:	fc042023          	sw	zero,-64(s0)
8000890c:	0154a423          	sw	s5,8(s1)
80008910:	fc842503          	lw	a0,-56(s0)
80008914:	08050063          	beqz	a0,80008994 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x1bc>
80008918:	fc442903          	lw	s2,-60(s0)
8000891c:	00490913          	addi	s2,s2,4
80008920:	00c00593          	li	a1,12
80008924:	00002097          	auipc	ra,0x2
80008928:	8a4080e7          	jalr	-1884(ra) # 8000a1c8 <__mulsi3>
8000892c:	00100593          	li	a1,1
80008930:	3e800613          	li	a2,1000
80008934:	00a00693          	li	a3,10
80008938:	0180006f          	j	80008950 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x178>
8000893c:	00092703          	lw	a4,0(s2)
80008940:	01470a33          	add	s4,a4,s4
80008944:	ff450513          	addi	a0,a0,-12 # 9fdffff4 <KALLOC_BUFFER+0x1fdefff4>
80008948:	00c90913          	addi	s2,s2,12
8000894c:	04050463          	beqz	a0,80008994 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x1bc>
80008950:	ffc95703          	lhu	a4,-4(s2)
80008954:	fe0704e3          	beqz	a4,8000893c <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x164>
80008958:	00b71c63          	bne	a4,a1,80008970 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x198>
8000895c:	ffe95703          	lhu	a4,-2(s2)
80008960:	00c77c63          	bgeu	a4,a2,80008978 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x1a0>
80008964:	02d77263          	bgeu	a4,a3,80008988 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x1b0>
80008968:	00100713          	li	a4,1
8000896c:	fd5ff06f          	j	80008940 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x168>
80008970:	00492703          	lw	a4,4(s2)
80008974:	fcdff06f          	j	80008940 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x168>
80008978:	00475713          	srli	a4,a4,0x4
8000897c:	27173713          	sltiu	a4,a4,625
80008980:	00574713          	xori	a4,a4,5
80008984:	fbdff06f          	j	80008940 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x168>
80008988:	06473713          	sltiu	a4,a4,100
8000898c:	00374713          	xori	a4,a4,3
80008990:	fb1ff06f          	j	80008940 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x168>
80008994:	01099513          	slli	a0,s3,0x10
80008998:	01055513          	srli	a0,a0,0x10
8000899c:	02aa7463          	bgeu	s4,a0,800089c4 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x1ec>
800089a0:	41498c33          	sub	s8,s3,s4
800089a4:	001a9593          	slli	a1,s5,0x1
800089a8:	01e5d593          	srli	a1,a1,0x1e
800089ac:	00100613          	li	a2,1
800089b0:	00ba9513          	slli	a0,s5,0xb
800089b4:	02b64a63          	blt	a2,a1,800089e8 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x210>
800089b8:	04059463          	bnez	a1,80008a00 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x228>
800089bc:	00000a93          	li	s5,0
800089c0:	0440006f          	j	80008a04 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x22c>
800089c4:	0004a503          	lw	a0,0(s1)
800089c8:	0044a583          	lw	a1,4(s1)
800089cc:	fbc40613          	addi	a2,s0,-68
800089d0:	00000097          	auipc	ra,0x0
800089d4:	10c080e7          	jalr	268(ra) # 80008adc <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E>
800089d8:	00050a93          	mv	s5,a0
800089dc:	0164a423          	sw	s6,8(s1)
800089e0:	0174a623          	sw	s7,12(s1)
800089e4:	07c0006f          	j	80008a60 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x288>
800089e8:	00200613          	li	a2,2
800089ec:	000c0a93          	mv	s5,s8
800089f0:	00c59a63          	bne	a1,a2,80008a04 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x22c>
800089f4:	010c1593          	slli	a1,s8,0x10
800089f8:	0115da93          	srli	s5,a1,0x11
800089fc:	0080006f          	j	80008a04 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x22c>
80008a00:	000c0a93          	mv	s5,s8
80008a04:	00000c93          	li	s9,0
80008a08:	00b55913          	srli	s2,a0,0xb
80008a0c:	0004a983          	lw	s3,0(s1)
80008a10:	0044aa03          	lw	s4,4(s1)
80008a14:	00010d37          	lui	s10,0x10
80008a18:	fffd0d13          	addi	s10,s10,-1 # ffff <.Lline_table_start2+0xe7c5>
80008a1c:	01aafdb3          	and	s11,s5,s10
80008a20:	01acf533          	and	a0,s9,s10
80008a24:	03b57063          	bgeu	a0,s11,80008a44 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x26c>
80008a28:	010a2603          	lw	a2,16(s4)
80008a2c:	001c8c93          	addi	s9,s9,1
80008a30:	00098513          	mv	a0,s3
80008a34:	00090593          	mv	a1,s2
80008a38:	000600e7          	jalr	a2
80008a3c:	fe0502e3          	beqz	a0,80008a20 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x248>
80008a40:	01c0006f          	j	80008a5c <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x284>
80008a44:	fbc40613          	addi	a2,s0,-68
80008a48:	00098513          	mv	a0,s3
80008a4c:	000a0593          	mv	a1,s4
80008a50:	00000097          	auipc	ra,0x0
80008a54:	08c080e7          	jalr	140(ra) # 80008adc <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E>
80008a58:	04050463          	beqz	a0,80008aa0 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x2c8>
80008a5c:	00100a93          	li	s5,1
80008a60:	000a8513          	mv	a0,s5
80008a64:	04c12083          	lw	ra,76(sp)
80008a68:	04812403          	lw	s0,72(sp)
80008a6c:	04412483          	lw	s1,68(sp)
80008a70:	04012903          	lw	s2,64(sp)
80008a74:	03c12983          	lw	s3,60(sp)
80008a78:	03812a03          	lw	s4,56(sp)
80008a7c:	03412a83          	lw	s5,52(sp)
80008a80:	03012b03          	lw	s6,48(sp)
80008a84:	02c12b83          	lw	s7,44(sp)
80008a88:	02812c03          	lw	s8,40(sp)
80008a8c:	02412c83          	lw	s9,36(sp)
80008a90:	02012d03          	lw	s10,32(sp)
80008a94:	01c12d83          	lw	s11,28(sp)
80008a98:	05010113          	addi	sp,sp,80
80008a9c:	00008067          	ret
80008aa0:	00000c93          	li	s9,0
80008aa4:	415c0533          	sub	a0,s8,s5
80008aa8:	00010c37          	lui	s8,0x10
80008aac:	fffc0c13          	addi	s8,s8,-1 # ffff <.Lline_table_start2+0xe7c5>
80008ab0:	01857d33          	and	s10,a0,s8
80008ab4:	018cf533          	and	a0,s9,s8
80008ab8:	01a53ab3          	sltu	s5,a0,s10
80008abc:	f3a570e3          	bgeu	a0,s10,800089dc <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x204>
80008ac0:	010a2603          	lw	a2,16(s4)
80008ac4:	001c8c93          	addi	s9,s9,1
80008ac8:	00098513          	mv	a0,s3
80008acc:	00090593          	mv	a1,s2
80008ad0:	000600e7          	jalr	a2
80008ad4:	fe0500e3          	beqz	a0,80008ab4 <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x2dc>
80008ad8:	f05ff06f          	j	800089dc <_ZN4core3fmt9Formatter19pad_formatted_parts17h70b7e5dfd7a4e29eE+0x204>

80008adc <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E>:
80008adc:	fc010113          	addi	sp,sp,-64
80008ae0:	02112e23          	sw	ra,60(sp)
80008ae4:	02812c23          	sw	s0,56(sp)
80008ae8:	02912a23          	sw	s1,52(sp)
80008aec:	03212823          	sw	s2,48(sp)
80008af0:	03312623          	sw	s3,44(sp)
80008af4:	03412423          	sw	s4,40(sp)
80008af8:	03512223          	sw	s5,36(sp)
80008afc:	03612023          	sw	s6,32(sp)
80008b00:	01712e23          	sw	s7,28(sp)
80008b04:	01812c23          	sw	s8,24(sp)
80008b08:	01912a23          	sw	s9,20(sp)
80008b0c:	01a12823          	sw	s10,16(sp)
80008b10:	01b12623          	sw	s11,12(sp)
80008b14:	04010413          	addi	s0,sp,64
80008b18:	00060993          	mv	s3,a2
80008b1c:	00058493          	mv	s1,a1
80008b20:	00462603          	lw	a2,4(a2)
80008b24:	00050913          	mv	s2,a0
80008b28:	02060063          	beqz	a2,80008b48 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x6c>
80008b2c:	0009a583          	lw	a1,0(s3)
80008b30:	00c4a683          	lw	a3,12(s1)
80008b34:	00090513          	mv	a0,s2
80008b38:	000680e7          	jalr	a3
80008b3c:	00050663          	beqz	a0,80008b48 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x6c>
80008b40:	00100513          	li	a0,1
80008b44:	15c0006f          	j	80008ca0 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x1c4>
80008b48:	00c9a503          	lw	a0,12(s3)
80008b4c:	14050a63          	beqz	a0,80008ca0 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x1c4>
80008b50:	0089ab03          	lw	s6,8(s3)
80008b54:	00251593          	slli	a1,a0,0x2
80008b58:	00451513          	slli	a0,a0,0x4
80008b5c:	8000d9b7          	lui	s3,0x8000d
80008b60:	4db98993          	addi	s3,s3,1243 # 8000d4db <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.303>
80008b64:	04000c93          	li	s9,64
80008b68:	00100c13          	li	s8,1
80008b6c:	40b50533          	sub	a0,a0,a1
80008b70:	00ab0bb3          	add	s7,s6,a0
80008b74:	0200006f          	j	80008b94 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0xb8>
80008b78:	004b2583          	lw	a1,4(s6)
80008b7c:	008b2603          	lw	a2,8(s6)
80008b80:	00c4a683          	lw	a3,12(s1)
80008b84:	00090513          	mv	a0,s2
80008b88:	000680e7          	jalr	a3
80008b8c:	10050463          	beqz	a0,80008c94 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x1b8>
80008b90:	fb1ff06f          	j	80008b40 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x64>
80008b94:	000b5503          	lhu	a0,0(s6)
80008b98:	02050663          	beqz	a0,80008bc4 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0xe8>
80008b9c:	fd851ee3          	bne	a0,s8,80008b78 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x9c>
80008ba0:	002b5c03          	lhu	s8,2(s6)
80008ba4:	fc042223          	sw	zero,-60(s0)
80008ba8:	fc040423          	sb	zero,-56(s0)
80008bac:	3e800513          	li	a0,1000
80008bb0:	04ac7263          	bgeu	s8,a0,80008bf4 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x118>
80008bb4:	00a00513          	li	a0,10
80008bb8:	06ac7663          	bgeu	s8,a0,80008c24 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x148>
80008bbc:	00100d13          	li	s10,1
80008bc0:	06c0006f          	j	80008c2c <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x150>
80008bc4:	004b2a03          	lw	s4,4(s6)
80008bc8:	04100513          	li	a0,65
80008bcc:	02aa6c63          	bltu	s4,a0,80008c04 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x128>
80008bd0:	00c4aa83          	lw	s5,12(s1)
80008bd4:	04000613          	li	a2,64
80008bd8:	00090513          	mv	a0,s2
80008bdc:	00098593          	mv	a1,s3
80008be0:	000a80e7          	jalr	s5
80008be4:	f4051ee3          	bnez	a0,80008b40 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x64>
80008be8:	fc0a0a13          	addi	s4,s4,-64
80008bec:	ff4ce4e3          	bltu	s9,s4,80008bd4 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0xf8>
80008bf0:	0180006f          	j	80008c08 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x12c>
80008bf4:	004c5513          	srli	a0,s8,0x4
80008bf8:	27153513          	sltiu	a0,a0,625
80008bfc:	00554d13          	xori	s10,a0,5
80008c00:	02c0006f          	j	80008c2c <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x150>
80008c04:	080a0863          	beqz	s4,80008c94 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x1b8>
80008c08:	00c4a683          	lw	a3,12(s1)
80008c0c:	00090513          	mv	a0,s2
80008c10:	00098593          	mv	a1,s3
80008c14:	000a0613          	mv	a2,s4
80008c18:	000680e7          	jalr	a3
80008c1c:	06050c63          	beqz	a0,80008c94 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x1b8>
80008c20:	f21ff06f          	j	80008b40 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x64>
80008c24:	064c3513          	sltiu	a0,s8,100
80008c28:	00354d13          	xori	s10,a0,3
80008c2c:	41a00db3          	neg	s11,s10
80008c30:	fc340a13          	addi	s4,s0,-61
80008c34:	01aa0a33          	add	s4,s4,s10
80008c38:	010c1513          	slli	a0,s8,0x10
80008c3c:	01055513          	srli	a0,a0,0x10
80008c40:	00a00593          	li	a1,10
80008c44:	00002097          	auipc	ra,0x2
80008c48:	998080e7          	jalr	-1640(ra) # 8000a5dc <__udivsi3>
80008c4c:	00050a93          	mv	s5,a0
80008c50:	00a00593          	li	a1,10
80008c54:	00001097          	auipc	ra,0x1
80008c58:	574080e7          	jalr	1396(ra) # 8000a1c8 <__mulsi3>
80008c5c:	40ac0533          	sub	a0,s8,a0
80008c60:	001d8d93          	addi	s11,s11,1
80008c64:	03056513          	ori	a0,a0,48
80008c68:	00aa0023          	sb	a0,0(s4)
80008c6c:	fffa0a13          	addi	s4,s4,-1
80008c70:	000a8c13          	mv	s8,s5
80008c74:	fc0d92e3          	bnez	s11,80008c38 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x15c>
80008c78:	00c4a683          	lw	a3,12(s1)
80008c7c:	fc440593          	addi	a1,s0,-60
80008c80:	00090513          	mv	a0,s2
80008c84:	000d0613          	mv	a2,s10
80008c88:	000680e7          	jalr	a3
80008c8c:	00100c13          	li	s8,1
80008c90:	ea0518e3          	bnez	a0,80008b40 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0x64>
80008c94:	00cb0b13          	addi	s6,s6,12
80008c98:	ef7b1ee3          	bne	s6,s7,80008b94 <_ZN4core3fmt9Formatter21write_formatted_parts17hc3b3994e54e87506E+0xb8>
80008c9c:	00000513          	li	a0,0
80008ca0:	03c12083          	lw	ra,60(sp)
80008ca4:	03812403          	lw	s0,56(sp)
80008ca8:	03412483          	lw	s1,52(sp)
80008cac:	03012903          	lw	s2,48(sp)
80008cb0:	02c12983          	lw	s3,44(sp)
80008cb4:	02812a03          	lw	s4,40(sp)
80008cb8:	02412a83          	lw	s5,36(sp)
80008cbc:	02012b03          	lw	s6,32(sp)
80008cc0:	01c12b83          	lw	s7,28(sp)
80008cc4:	01812c03          	lw	s8,24(sp)
80008cc8:	01412c83          	lw	s9,20(sp)
80008ccc:	01012d03          	lw	s10,16(sp)
80008cd0:	00c12d83          	lw	s11,12(sp)
80008cd4:	04010113          	addi	sp,sp,64
80008cd8:	00008067          	ret

80008cdc <_ZN4core3fmt9Formatter9write_str17h2bacd4d389941491E>:
80008cdc:	ff010113          	addi	sp,sp,-16
80008ce0:	00112623          	sw	ra,12(sp)
80008ce4:	00812423          	sw	s0,8(sp)
80008ce8:	01010413          	addi	s0,sp,16
80008cec:	00452683          	lw	a3,4(a0)
80008cf0:	00052503          	lw	a0,0(a0)
80008cf4:	00c6a303          	lw	t1,12(a3)
80008cf8:	00c12083          	lw	ra,12(sp)
80008cfc:	00812403          	lw	s0,8(sp)
80008d00:	01010113          	addi	sp,sp,16
80008d04:	00030067          	jr	t1

80008d08 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h82b151015ae7f07eE>:
80008d08:	fc010113          	addi	sp,sp,-64
80008d0c:	02112e23          	sw	ra,60(sp)
80008d10:	02812c23          	sw	s0,56(sp)
80008d14:	02912a23          	sw	s1,52(sp)
80008d18:	03212823          	sw	s2,48(sp)
80008d1c:	03312623          	sw	s3,44(sp)
80008d20:	03412423          	sw	s4,40(sp)
80008d24:	03512223          	sw	s5,36(sp)
80008d28:	03612023          	sw	s6,32(sp)
80008d2c:	01712e23          	sw	s7,28(sp)
80008d30:	01812c23          	sw	s8,24(sp)
80008d34:	01912a23          	sw	s9,20(sp)
80008d38:	04010413          	addi	s0,sp,64
80008d3c:	00088493          	mv	s1,a7
80008d40:	00080913          	mv	s2,a6
80008d44:	00078993          	mv	s3,a5
80008d48:	00070a13          	mv	s4,a4
80008d4c:	00068a93          	mv	s5,a3
80008d50:	00050b13          	mv	s6,a0
80008d54:	00052503          	lw	a0,0(a0)
80008d58:	004b2683          	lw	a3,4(s6)
80008d5c:	00042b83          	lw	s7,0(s0)
80008d60:	00442c03          	lw	s8,4(s0)
80008d64:	00842c83          	lw	s9,8(s0)
80008d68:	00c6a683          	lw	a3,12(a3)
80008d6c:	000680e7          	jalr	a3
80008d70:	fd642623          	sw	s6,-52(s0)
80008d74:	fca40823          	sb	a0,-48(s0)
80008d78:	fc0408a3          	sb	zero,-47(s0)
80008d7c:	fcc40513          	addi	a0,s0,-52
80008d80:	000a8593          	mv	a1,s5
80008d84:	000a0613          	mv	a2,s4
80008d88:	00098693          	mv	a3,s3
80008d8c:	00090713          	mv	a4,s2
80008d90:	fffff097          	auipc	ra,0xfffff
80008d94:	8b0080e7          	jalr	-1872(ra) # 80007640 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE>
80008d98:	fcc40513          	addi	a0,s0,-52
80008d9c:	00048593          	mv	a1,s1
80008da0:	000b8613          	mv	a2,s7
80008da4:	000c0693          	mv	a3,s8
80008da8:	000c8713          	mv	a4,s9
80008dac:	fffff097          	auipc	ra,0xfffff
80008db0:	894080e7          	jalr	-1900(ra) # 80007640 <_ZN4core3fmt8builders11DebugStruct5field17h84fa43db32f934cdE>
80008db4:	fd044583          	lbu	a1,-48(s0)
80008db8:	fd144603          	lbu	a2,-47(s0)
80008dbc:	00b66533          	or	a0,a2,a1
80008dc0:	04060a63          	beqz	a2,80008e14 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h82b151015ae7f07eE+0x10c>
80008dc4:	0015f593          	andi	a1,a1,1
80008dc8:	04059663          	bnez	a1,80008e14 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h82b151015ae7f07eE+0x10c>
80008dcc:	fcc42503          	lw	a0,-52(s0)
80008dd0:	00a54583          	lbu	a1,10(a0)
80008dd4:	0805f593          	andi	a1,a1,128
80008dd8:	02059063          	bnez	a1,80008df8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h82b151015ae7f07eE+0xf0>
80008ddc:	00452583          	lw	a1,4(a0)
80008de0:	00052503          	lw	a0,0(a0)
80008de4:	00c5a683          	lw	a3,12(a1)
80008de8:	8000d5b7          	lui	a1,0x8000d
80008dec:	40f58593          	addi	a1,a1,1039 # 8000d40f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.267>
80008df0:	00200613          	li	a2,2
80008df4:	01c0006f          	j	80008e10 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h82b151015ae7f07eE+0x108>
80008df8:	00452583          	lw	a1,4(a0)
80008dfc:	00052503          	lw	a0,0(a0)
80008e00:	00c5a683          	lw	a3,12(a1)
80008e04:	8000d5b7          	lui	a1,0x8000d
80008e08:	40e58593          	addi	a1,a1,1038 # 8000d40e <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.266>
80008e0c:	00100613          	li	a2,1
80008e10:	000680e7          	jalr	a3
80008e14:	00157513          	andi	a0,a0,1
80008e18:	03c12083          	lw	ra,60(sp)
80008e1c:	03812403          	lw	s0,56(sp)
80008e20:	03412483          	lw	s1,52(sp)
80008e24:	03012903          	lw	s2,48(sp)
80008e28:	02c12983          	lw	s3,44(sp)
80008e2c:	02812a03          	lw	s4,40(sp)
80008e30:	02412a83          	lw	s5,36(sp)
80008e34:	02012b03          	lw	s6,32(sp)
80008e38:	01c12b83          	lw	s7,28(sp)
80008e3c:	01812c03          	lw	s8,24(sp)
80008e40:	01412c83          	lw	s9,20(sp)
80008e44:	04010113          	addi	sp,sp,64
80008e48:	00008067          	ret

80008e4c <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE>:
80008e4c:	f6010113          	addi	sp,sp,-160
80008e50:	08112e23          	sw	ra,156(sp)
80008e54:	08812c23          	sw	s0,152(sp)
80008e58:	08912a23          	sw	s1,148(sp)
80008e5c:	09212823          	sw	s2,144(sp)
80008e60:	09312623          	sw	s3,140(sp)
80008e64:	0a010413          	addi	s0,sp,160
80008e68:	00058493          	mv	s1,a1
80008e6c:	0085a983          	lw	s3,8(a1)
80008e70:	00c5a903          	lw	s2,12(a1)
80008e74:	00899613          	slli	a2,s3,0x8
80008e78:	00098593          	mv	a1,s3
80008e7c:	02065463          	bgez	a2,80008ea4 <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0x58>
80008e80:	00499593          	slli	a1,s3,0x4
80008e84:	0005cc63          	bltz	a1,80008e9c <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0x50>
80008e88:	090005b7          	lui	a1,0x9000
80008e8c:	00a00613          	li	a2,10
80008e90:	00b9e5b3          	or	a1,s3,a1
80008e94:	00c49623          	sh	a2,12(s1)
80008e98:	00c0006f          	j	80008ea4 <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0x58>
80008e9c:	010005b7          	lui	a1,0x1000
80008ea0:	00b9e5b3          	or	a1,s3,a1
80008ea4:	00000793          	li	a5,0
80008ea8:	00800637          	lui	a2,0x800
80008eac:	00c5e633          	or	a2,a1,a2
80008eb0:	feb40593          	addi	a1,s0,-21
80008eb4:	00c4a423          	sw	a2,8(s1)
80008eb8:	00a00613          	li	a2,10
80008ebc:	01c0006f          	j	80008ed8 <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0x8c>
80008ec0:	05768693          	addi	a3,a3,87
80008ec4:	00455513          	srli	a0,a0,0x4
80008ec8:	00d58023          	sb	a3,0(a1) # 1000000 <.Lline_table_start2+0xffe7c6>
80008ecc:	00178793          	addi	a5,a5,1 # 800001 <.Lline_table_start2+0x7fe7c7>
80008ed0:	fff58593          	addi	a1,a1,-1
80008ed4:	02050263          	beqz	a0,80008ef8 <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0xac>
80008ed8:	00f57693          	andi	a3,a0,15
80008edc:	fec6f2e3          	bgeu	a3,a2,80008ec0 <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0x74>
80008ee0:	03068693          	addi	a3,a3,48
80008ee4:	00455513          	srli	a0,a0,0x4
80008ee8:	00d58023          	sb	a3,0(a1)
80008eec:	00178793          	addi	a5,a5,1
80008ef0:	fff58593          	addi	a1,a1,-1
80008ef4:	fe0512e3          	bnez	a0,80008ed8 <_ZN4core3fmt17pointer_fmt_inner17he4e5e6dcee9e106dE+0x8c>
80008ef8:	f6c40513          	addi	a0,s0,-148
80008efc:	40f50533          	sub	a0,a0,a5
80008f00:	08050713          	addi	a4,a0,128
80008f04:	8000d637          	lui	a2,0x8000d
80008f08:	41160613          	addi	a2,a2,1041 # 8000d411 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.293>
80008f0c:	00100593          	li	a1,1
80008f10:	00200693          	li	a3,2
80008f14:	00048513          	mv	a0,s1
80008f18:	fffff097          	auipc	ra,0xfffff
80008f1c:	20c080e7          	jalr	524(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
80008f20:	0134a423          	sw	s3,8(s1)
80008f24:	0124a623          	sw	s2,12(s1)
80008f28:	09c12083          	lw	ra,156(sp)
80008f2c:	09812403          	lw	s0,152(sp)
80008f30:	09412483          	lw	s1,148(sp)
80008f34:	09012903          	lw	s2,144(sp)
80008f38:	08c12983          	lw	s3,140(sp)
80008f3c:	0a010113          	addi	sp,sp,160
80008f40:	00008067          	ret

80008f44 <_ZN4core5slice5index24slice_end_index_len_fail17h5321e3d89c7c5db2E>:
80008f44:	ff010113          	addi	sp,sp,-16
80008f48:	00112623          	sw	ra,12(sp)
80008f4c:	00812423          	sw	s0,8(sp)
80008f50:	01010413          	addi	s0,sp,16
80008f54:	00001097          	auipc	ra,0x1
80008f58:	208080e7          	jalr	520(ra) # 8000a15c <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h2945ef38c68d689fE>

80008f5c <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E>:
80008f5c:	ff010113          	addi	sp,sp,-16
80008f60:	00112623          	sw	ra,12(sp)
80008f64:	00812423          	sw	s0,8(sp)
80008f68:	00912223          	sw	s1,4(sp)
80008f6c:	01010413          	addi	s0,sp,16
80008f70:	00050613          	mv	a2,a0
80008f74:	00350513          	addi	a0,a0,3
80008f78:	ffc57513          	andi	a0,a0,-4
80008f7c:	40c508b3          	sub	a7,a0,a2
80008f80:	0315fe63          	bgeu	a1,a7,80008fbc <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x60>
80008f84:	00000513          	li	a0,0
80008f88:	02058063          	beqz	a1,80008fa8 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x4c>
80008f8c:	00b605b3          	add	a1,a2,a1
80008f90:	00060683          	lb	a3,0(a2)
80008f94:	00160613          	addi	a2,a2,1
80008f98:	fc06a693          	slti	a3,a3,-64
80008f9c:	0016c693          	xori	a3,a3,1
80008fa0:	00d50533          	add	a0,a0,a3
80008fa4:	feb616e3          	bne	a2,a1,80008f90 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x34>
80008fa8:	00c12083          	lw	ra,12(sp)
80008fac:	00812403          	lw	s0,8(sp)
80008fb0:	00412483          	lw	s1,4(sp)
80008fb4:	01010113          	addi	sp,sp,16
80008fb8:	00008067          	ret
80008fbc:	411586b3          	sub	a3,a1,a7
80008fc0:	0026d813          	srli	a6,a3,0x2
80008fc4:	fc0800e3          	beqz	a6,80008f84 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x28>
80008fc8:	011608b3          	add	a7,a2,a7
80008fcc:	0036f593          	andi	a1,a3,3
80008fd0:	00c51663          	bne	a0,a2,80008fdc <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x80>
80008fd4:	00000513          	li	a0,0
80008fd8:	0200006f          	j	80008ff8 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x9c>
80008fdc:	00000513          	li	a0,0
80008fe0:	00060703          	lb	a4,0(a2)
80008fe4:	00160613          	addi	a2,a2,1
80008fe8:	fc072713          	slti	a4,a4,-64
80008fec:	00174713          	xori	a4,a4,1
80008ff0:	00e50533          	add	a0,a0,a4
80008ff4:	ff1616e3          	bne	a2,a7,80008fe0 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x84>
80008ff8:	00000613          	li	a2,0
80008ffc:	02058463          	beqz	a1,80009024 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0xc8>
80009000:	ffc6f693          	andi	a3,a3,-4
80009004:	00d886b3          	add	a3,a7,a3
80009008:	00068703          	lb	a4,0(a3)
8000900c:	fff58593          	addi	a1,a1,-1
80009010:	fc072713          	slti	a4,a4,-64
80009014:	00174713          	xori	a4,a4,1
80009018:	00e60633          	add	a2,a2,a4
8000901c:	00168693          	addi	a3,a3,1
80009020:	fe0594e3          	bnez	a1,80009008 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0xac>
80009024:	010105b7          	lui	a1,0x1010
80009028:	00ff06b7          	lui	a3,0xff0
8000902c:	00a60533          	add	a0,a2,a0
80009030:	10158613          	addi	a2,a1,257 # 1010101 <.Lline_table_start2+0x100e8c7>
80009034:	0ff68593          	addi	a1,a3,255 # ff00ff <.Lline_table_start2+0xfee8c5>
80009038:	00400713          	li	a4,4
8000903c:	0340006f          	j	80009070 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x114>
80009040:	011788b3          	add	a7,a5,a7
80009044:	40568833          	sub	a6,a3,t0
80009048:	0032f393          	andi	t2,t0,3
8000904c:	00b37e33          	and	t3,t1,a1
80009050:	00835313          	srli	t1,t1,0x8
80009054:	00b37333          	and	t1,t1,a1
80009058:	01c30333          	add	t1,t1,t3
8000905c:	01031e13          	slli	t3,t1,0x10
80009060:	006e0333          	add	t1,t3,t1
80009064:	01035313          	srli	t1,t1,0x10
80009068:	00a30533          	add	a0,t1,a0
8000906c:	0a039a63          	bnez	t2,80009120 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x1c4>
80009070:	f2080ce3          	beqz	a6,80008fa8 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x4c>
80009074:	00080693          	mv	a3,a6
80009078:	00088793          	mv	a5,a7
8000907c:	0c000813          	li	a6,192
80009080:	00068293          	mv	t0,a3
80009084:	0106e463          	bltu	a3,a6,8000908c <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x130>
80009088:	0c000293          	li	t0,192
8000908c:	00229893          	slli	a7,t0,0x2
80009090:	00000313          	li	t1,0
80009094:	fae6e6e3          	bltu	a3,a4,80009040 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0xe4>
80009098:	3f08f813          	andi	a6,a7,1008
8000909c:	01078833          	add	a6,a5,a6
800090a0:	00078393          	mv	t2,a5
800090a4:	0003ae03          	lw	t3,0(t2)
800090a8:	0043ae83          	lw	t4,4(t2)
800090ac:	0083af03          	lw	t5,8(t2)
800090b0:	00c3af83          	lw	t6,12(t2)
800090b4:	fffe4493          	not	s1,t3
800090b8:	006e5e13          	srli	t3,t3,0x6
800090bc:	0074d493          	srli	s1,s1,0x7
800090c0:	01c4ee33          	or	t3,s1,t3
800090c4:	fffec493          	not	s1,t4
800090c8:	006ede93          	srli	t4,t4,0x6
800090cc:	0074d493          	srli	s1,s1,0x7
800090d0:	01d4eeb3          	or	t4,s1,t4
800090d4:	ffff4493          	not	s1,t5
800090d8:	006f5f13          	srli	t5,t5,0x6
800090dc:	0074d493          	srli	s1,s1,0x7
800090e0:	01e4ef33          	or	t5,s1,t5
800090e4:	ffffc493          	not	s1,t6
800090e8:	006fdf93          	srli	t6,t6,0x6
800090ec:	0074d493          	srli	s1,s1,0x7
800090f0:	01f4efb3          	or	t6,s1,t6
800090f4:	00ce7e33          	and	t3,t3,a2
800090f8:	006e0333          	add	t1,t3,t1
800090fc:	00cefe33          	and	t3,t4,a2
80009100:	00cf7eb3          	and	t4,t5,a2
80009104:	00cfff33          	and	t5,t6,a2
80009108:	01ce8e33          	add	t3,t4,t3
8000910c:	006e0333          	add	t1,t3,t1
80009110:	01038393          	addi	t2,t2,16
80009114:	006f0333          	add	t1,t5,t1
80009118:	f90396e3          	bne	t2,a6,800090a4 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x148>
8000911c:	f25ff06f          	j	80009040 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0xe4>
80009120:	00000713          	li	a4,0
80009124:	0fc2f813          	andi	a6,t0,252
80009128:	00281813          	slli	a6,a6,0x2
8000912c:	010787b3          	add	a5,a5,a6
80009130:	0c06b813          	sltiu	a6,a3,192
80009134:	41000833          	neg	a6,a6
80009138:	0106f6b3          	and	a3,a3,a6
8000913c:	0036f693          	andi	a3,a3,3
80009140:	00269693          	slli	a3,a3,0x2
80009144:	0007a803          	lw	a6,0(a5)
80009148:	00478793          	addi	a5,a5,4
8000914c:	fff84893          	not	a7,a6
80009150:	00685813          	srli	a6,a6,0x6
80009154:	0078d893          	srli	a7,a7,0x7
80009158:	0108e833          	or	a6,a7,a6
8000915c:	00c87833          	and	a6,a6,a2
80009160:	ffc68693          	addi	a3,a3,-4
80009164:	00e80733          	add	a4,a6,a4
80009168:	fc069ee3          	bnez	a3,80009144 <_ZN4core3str5count14do_count_chars17h19d66edc4ca3a622E+0x1e8>
8000916c:	00b77633          	and	a2,a4,a1
80009170:	00875713          	srli	a4,a4,0x8
80009174:	00b775b3          	and	a1,a4,a1
80009178:	00c585b3          	add	a1,a1,a2
8000917c:	01059613          	slli	a2,a1,0x10
80009180:	00b605b3          	add	a1,a2,a1
80009184:	0105d593          	srli	a1,a1,0x10
80009188:	00a58533          	add	a0,a1,a0
8000918c:	00c12083          	lw	ra,12(sp)
80009190:	00812403          	lw	s0,8(sp)
80009194:	00412483          	lw	s1,4(sp)
80009198:	01010113          	addi	sp,sp,16
8000919c:	00008067          	ret

800091a0 <_ZN4core5alloc6layout6Layout19is_size_align_valid17h8f83fbfbb598e937E>:
800091a0:	ff010113          	addi	sp,sp,-16
800091a4:	00112623          	sw	ra,12(sp)
800091a8:	00812423          	sw	s0,8(sp)
800091ac:	01010413          	addi	s0,sp,16
800091b0:	fff58613          	addi	a2,a1,-1
800091b4:	800006b7          	lui	a3,0x80000
800091b8:	40b686b3          	sub	a3,a3,a1
800091bc:	00c5c5b3          	xor	a1,a1,a2
800091c0:	00b635b3          	sltu	a1,a2,a1
800091c4:	00a6b533          	sltu	a0,a3,a0
800091c8:	00154513          	xori	a0,a0,1
800091cc:	00a5f533          	and	a0,a1,a0
800091d0:	00c12083          	lw	ra,12(sp)
800091d4:	00812403          	lw	s0,8(sp)
800091d8:	01010113          	addi	sp,sp,16
800091dc:	00008067          	ret

800091e0 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E>:
800091e0:	ff010113          	addi	sp,sp,-16
800091e4:	00112623          	sw	ra,12(sp)
800091e8:	00812423          	sw	s0,8(sp)
800091ec:	01010413          	addi	s0,sp,16
800091f0:	50000613          	li	a2,1280
800091f4:	30c5fa63          	bgeu	a1,a2,80009508 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x328>
800091f8:	0a052703          	lw	a4,160(a0)
800091fc:	0055d613          	srli	a2,a1,0x5
80009200:	04070c63          	beqz	a4,80009258 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x78>
80009204:	00100793          	li	a5,1
80009208:	00271693          	slli	a3,a4,0x2
8000920c:	00c702b3          	add	t0,a4,a2
80009210:	02900893          	li	a7,41
80009214:	40e78833          	sub	a6,a5,a4
80009218:	00a68333          	add	t1,a3,a0
8000921c:	fff28693          	addi	a3,t0,-1
80009220:	00229393          	slli	t2,t0,0x2
80009224:	ffc30293          	addi	t0,t1,-4
80009228:	00a38333          	add	t1,t2,a0
8000922c:	ffc30313          	addi	t1,t1,-4
80009230:	02800393          	li	t2,40
80009234:	31177463          	bgeu	a4,a7,8000953c <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x35c>
80009238:	2e76f663          	bgeu	a3,t2,80009524 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x344>
8000923c:	0002ae03          	lw	t3,0(t0)
80009240:	00180813          	addi	a6,a6,1
80009244:	ffc28293          	addi	t0,t0,-4
80009248:	fff68693          	addi	a3,a3,-1 # 7fffffff <.Lline_table_start2+0x7fffe7c5>
8000924c:	01c32023          	sw	t3,0(t1)
80009250:	ffc30313          	addi	t1,t1,-4
80009254:	fef810e3          	bne	a6,a5,80009234 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x54>
80009258:	02000693          	li	a3,32
8000925c:	00160793          	addi	a5,a2,1
80009260:	1ed5e263          	bltu	a1,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009264:	00200693          	li	a3,2
80009268:	00052023          	sw	zero,0(a0)
8000926c:	1cd78c63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009270:	00300693          	li	a3,3
80009274:	00052223          	sw	zero,4(a0)
80009278:	1cd78663          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
8000927c:	00400693          	li	a3,4
80009280:	00052423          	sw	zero,8(a0)
80009284:	1cd78063          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009288:	00500693          	li	a3,5
8000928c:	00052623          	sw	zero,12(a0)
80009290:	1ad78a63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009294:	00600693          	li	a3,6
80009298:	00052823          	sw	zero,16(a0)
8000929c:	1ad78463          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092a0:	00700693          	li	a3,7
800092a4:	00052a23          	sw	zero,20(a0)
800092a8:	18d78e63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092ac:	00800693          	li	a3,8
800092b0:	00052c23          	sw	zero,24(a0)
800092b4:	18d78863          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092b8:	00900693          	li	a3,9
800092bc:	00052e23          	sw	zero,28(a0)
800092c0:	18d78263          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092c4:	00a00693          	li	a3,10
800092c8:	02052023          	sw	zero,32(a0)
800092cc:	16d78c63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092d0:	00b00693          	li	a3,11
800092d4:	02052223          	sw	zero,36(a0)
800092d8:	16d78663          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092dc:	00c00693          	li	a3,12
800092e0:	02052423          	sw	zero,40(a0)
800092e4:	16d78063          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092e8:	00d00693          	li	a3,13
800092ec:	02052623          	sw	zero,44(a0)
800092f0:	14d78a63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800092f4:	00e00693          	li	a3,14
800092f8:	02052823          	sw	zero,48(a0)
800092fc:	14d78463          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009300:	00f00693          	li	a3,15
80009304:	02052a23          	sw	zero,52(a0)
80009308:	12d78e63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
8000930c:	01000693          	li	a3,16
80009310:	02052c23          	sw	zero,56(a0)
80009314:	12d78863          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009318:	01100693          	li	a3,17
8000931c:	02052e23          	sw	zero,60(a0)
80009320:	12d78263          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009324:	01200693          	li	a3,18
80009328:	04052023          	sw	zero,64(a0)
8000932c:	10d78c63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009330:	01300693          	li	a3,19
80009334:	04052223          	sw	zero,68(a0)
80009338:	10d78663          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
8000933c:	01400693          	li	a3,20
80009340:	04052423          	sw	zero,72(a0)
80009344:	10d78063          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009348:	01500693          	li	a3,21
8000934c:	04052623          	sw	zero,76(a0)
80009350:	0ed78a63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009354:	01600693          	li	a3,22
80009358:	04052823          	sw	zero,80(a0)
8000935c:	0ed78463          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009360:	01700693          	li	a3,23
80009364:	04052a23          	sw	zero,84(a0)
80009368:	0cd78e63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
8000936c:	01800693          	li	a3,24
80009370:	04052c23          	sw	zero,88(a0)
80009374:	0cd78863          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009378:	01900693          	li	a3,25
8000937c:	04052e23          	sw	zero,92(a0)
80009380:	0cd78263          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009384:	01a00693          	li	a3,26
80009388:	06052023          	sw	zero,96(a0)
8000938c:	0ad78c63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009390:	01b00693          	li	a3,27
80009394:	06052223          	sw	zero,100(a0)
80009398:	0ad78663          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
8000939c:	01c00693          	li	a3,28
800093a0:	06052423          	sw	zero,104(a0)
800093a4:	0ad78063          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093a8:	01d00693          	li	a3,29
800093ac:	06052623          	sw	zero,108(a0)
800093b0:	08d78a63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093b4:	01e00693          	li	a3,30
800093b8:	06052823          	sw	zero,112(a0)
800093bc:	08d78463          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093c0:	01f00693          	li	a3,31
800093c4:	06052a23          	sw	zero,116(a0)
800093c8:	06d78e63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093cc:	02000693          	li	a3,32
800093d0:	06052c23          	sw	zero,120(a0)
800093d4:	06d78863          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093d8:	02100693          	li	a3,33
800093dc:	06052e23          	sw	zero,124(a0)
800093e0:	06d78263          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093e4:	02200693          	li	a3,34
800093e8:	08052023          	sw	zero,128(a0)
800093ec:	04d78c63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093f0:	02300693          	li	a3,35
800093f4:	08052223          	sw	zero,132(a0)
800093f8:	04d78663          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
800093fc:	02400693          	li	a3,36
80009400:	08052423          	sw	zero,136(a0)
80009404:	04d78063          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009408:	02500693          	li	a3,37
8000940c:	08052623          	sw	zero,140(a0)
80009410:	02d78a63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009414:	02600693          	li	a3,38
80009418:	08052823          	sw	zero,144(a0)
8000941c:	02d78463          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009420:	02700693          	li	a3,39
80009424:	08052a23          	sw	zero,148(a0)
80009428:	00d78e63          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
8000942c:	02800693          	li	a3,40
80009430:	08052c23          	sw	zero,152(a0)
80009434:	00d78863          	beq	a5,a3,80009444 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x264>
80009438:	02900693          	li	a3,41
8000943c:	08052e23          	sw	zero,156(a0)
80009440:	12d79663          	bne	a5,a3,8000956c <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x38c>
80009444:	0a052703          	lw	a4,160(a0)
80009448:	01f5f813          	andi	a6,a1,31
8000944c:	00c70733          	add	a4,a4,a2
80009450:	0a080263          	beqz	a6,800094f4 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x314>
80009454:	fff70693          	addi	a3,a4,-1
80009458:	02700893          	li	a7,39
8000945c:	0cd8e463          	bltu	a7,a3,80009524 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x344>
80009460:	00269693          	slli	a3,a3,0x2
80009464:	00d506b3          	add	a3,a0,a3
80009468:	0006a883          	lw	a7,0(a3)
8000946c:	40b006b3          	neg	a3,a1
80009470:	00d8d2b3          	srl	t0,a7,a3
80009474:	00271893          	slli	a7,a4,0x2
80009478:	00070593          	mv	a1,a4
8000947c:	00028c63          	beqz	t0,80009494 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x2b4>
80009480:	02700593          	li	a1,39
80009484:	0ce5e863          	bltu	a1,a4,80009554 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x374>
80009488:	011505b3          	add	a1,a0,a7
8000948c:	0055a023          	sw	t0,0(a1)
80009490:	00170593          	addi	a1,a4,1
80009494:	02e7fc63          	bgeu	a5,a4,800094cc <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x2ec>
80009498:	01f6f693          	andi	a3,a3,31
8000949c:	00a888b3          	add	a7,a7,a0
800094a0:	ffc88893          	addi	a7,a7,-4
800094a4:	0008a283          	lw	t0,0(a7)
800094a8:	ffc8a303          	lw	t1,-4(a7)
800094ac:	fff70713          	addi	a4,a4,-1
800094b0:	010292b3          	sll	t0,t0,a6
800094b4:	00d35333          	srl	t1,t1,a3
800094b8:	ffc88393          	addi	t2,a7,-4
800094bc:	005362b3          	or	t0,t1,t0
800094c0:	0058a023          	sw	t0,0(a7)
800094c4:	00038893          	mv	a7,t2
800094c8:	fce7eee3          	bltu	a5,a4,800094a4 <_ZN4core3num6bignum8Big32x408mul_pow217ha34f761784c85ef4E+0x2c4>
800094cc:	00261613          	slli	a2,a2,0x2
800094d0:	00c50633          	add	a2,a0,a2
800094d4:	00062683          	lw	a3,0(a2)
800094d8:	010696b3          	sll	a3,a3,a6
800094dc:	00d62023          	sw	a3,0(a2)
800094e0:	0ab52023          	sw	a1,160(a0)
800094e4:	00c12083          	lw	ra,12(sp)
800094e8:	00812403          	lw	s0,8(sp)
800094ec:	01010113          	addi	sp,sp,16
800094f0:	00008067          	ret
800094f4:	0ae52023          	sw	a4,160(a0)
800094f8:	00c12083          	lw	ra,12(sp)
800094fc:	00812403          	lw	s0,8(sp)
80009500:	01010113          	addi	sp,sp,16
80009504:	00008067          	ret
80009508:	8000d537          	lui	a0,0x8000d
8000950c:	56650513          	addi	a0,a0,1382 # 8000d566 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.422>
80009510:	8000d637          	lui	a2,0x8000d
80009514:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80009518:	01d00593          	li	a1,29
8000951c:	ffffe097          	auipc	ra,0xffffe
80009520:	b20080e7          	jalr	-1248(ra) # 8000703c <_ZN4core9panicking5panic17h80dd864d745c2e04E>
80009524:	8000d637          	lui	a2,0x8000d
80009528:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
8000952c:	02800593          	li	a1,40
80009530:	00068513          	mv	a0,a3
80009534:	ffffe097          	auipc	ra,0xffffe
80009538:	b50080e7          	jalr	-1200(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000953c:	41000533          	neg	a0,a6
80009540:	8000d637          	lui	a2,0x8000d
80009544:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80009548:	02800593          	li	a1,40
8000954c:	ffffe097          	auipc	ra,0xffffe
80009550:	b38080e7          	jalr	-1224(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80009554:	8000d637          	lui	a2,0x8000d
80009558:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
8000955c:	02800593          	li	a1,40
80009560:	00070513          	mv	a0,a4
80009564:	ffffe097          	auipc	ra,0xffffe
80009568:	b20080e7          	jalr	-1248(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
8000956c:	8000d637          	lui	a2,0x8000d
80009570:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80009574:	02800513          	li	a0,40
80009578:	02800593          	li	a1,40
8000957c:	ffffe097          	auipc	ra,0xffffe
80009580:	b08080e7          	jalr	-1272(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

80009584 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE>:
80009584:	fb010113          	addi	sp,sp,-80
80009588:	04112623          	sw	ra,76(sp)
8000958c:	04812423          	sw	s0,72(sp)
80009590:	04912223          	sw	s1,68(sp)
80009594:	05212023          	sw	s2,64(sp)
80009598:	03312e23          	sw	s3,60(sp)
8000959c:	03412c23          	sw	s4,56(sp)
800095a0:	03512a23          	sw	s5,52(sp)
800095a4:	03612823          	sw	s6,48(sp)
800095a8:	03712623          	sw	s7,44(sp)
800095ac:	03812423          	sw	s8,40(sp)
800095b0:	03912223          	sw	s9,36(sp)
800095b4:	03a12023          	sw	s10,32(sp)
800095b8:	01b12e23          	sw	s11,28(sp)
800095bc:	05010413          	addi	s0,sp,80
800095c0:	00058913          	mv	s2,a1
800095c4:	00261613          	slli	a2,a2,0x2
800095c8:	00c58c33          	add	s8,a1,a2
800095cc:	10070463          	beqz	a4,800096d4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x150>
800095d0:	00050793          	mv	a5,a0
800095d4:	00000d13          	li	s10,0
800095d8:	00000513          	li	a0,0
800095dc:	00170593          	addi	a1,a4,1
800095e0:	fab42a23          	sw	a1,-76(s0)
800095e4:	00271a93          	slli	s5,a4,0x2
800095e8:	002d1613          	slli	a2,s10,0x2
800095ec:	00c78633          	add	a2,a5,a2
800095f0:	00090593          	mv	a1,s2
800095f4:	11858e63          	beq	a1,s8,80009710 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x18c>
800095f8:	000d0c93          	mv	s9,s10
800095fc:	00060a13          	mv	s4,a2
80009600:	0005ab03          	lw	s6,0(a1)
80009604:	00458913          	addi	s2,a1,4
80009608:	001d0d13          	addi	s10,s10,1
8000960c:	00460613          	addi	a2,a2,4
80009610:	00090593          	mv	a1,s2
80009614:	fe0b00e3          	beqz	s6,800095f4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x70>
80009618:	fcf42223          	sw	a5,-60(s0)
8000961c:	fce42423          	sw	a4,-56(s0)
80009620:	fca42023          	sw	a0,-64(s0)
80009624:	00000493          	li	s1,0
80009628:	fb542c23          	sw	s5,-72(s0)
8000962c:	000c8b93          	mv	s7,s9
80009630:	fad42e23          	sw	a3,-68(s0)
80009634:	00068d93          	mv	s11,a3
80009638:	02800513          	li	a0,40
8000963c:	10abf863          	bgeu	s7,a0,8000974c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x1c8>
80009640:	000da503          	lw	a0,0(s11)
80009644:	000a2983          	lw	s3,0(s4)
80009648:	004d8d93          	addi	s11,s11,4
8000964c:	00000593          	li	a1,0
80009650:	000b0613          	mv	a2,s6
80009654:	00000693          	li	a3,0
80009658:	00001097          	auipc	ra,0x1
8000965c:	bb8080e7          	jalr	-1096(ra) # 8000a210 <__muldi3>
80009660:	009984b3          	add	s1,s3,s1
80009664:	001b8b93          	addi	s7,s7,1
80009668:	ffca8a93          	addi	s5,s5,-4
8000966c:	0134b633          	sltu	a2,s1,s3
80009670:	00a48533          	add	a0,s1,a0
80009674:	009534b3          	sltu	s1,a0,s1
80009678:	00b605b3          	add	a1,a2,a1
8000967c:	00aa2023          	sw	a0,0(s4)
80009680:	009584b3          	add	s1,a1,s1
80009684:	004a0a13          	addi	s4,s4,4
80009688:	fa0a98e3          	bnez	s5,80009638 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0xb4>
8000968c:	fc842703          	lw	a4,-56(s0)
80009690:	00070513          	mv	a0,a4
80009694:	fc442783          	lw	a5,-60(s0)
80009698:	02048063          	beqz	s1,800096b8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x134>
8000969c:	00ec8533          	add	a0,s9,a4
800096a0:	02800593          	li	a1,40
800096a4:	0cb57063          	bgeu	a0,a1,80009764 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x1e0>
800096a8:	00251513          	slli	a0,a0,0x2
800096ac:	00a78533          	add	a0,a5,a0
800096b0:	00952023          	sw	s1,0(a0)
800096b4:	fb442503          	lw	a0,-76(s0)
800096b8:	01950cb3          	add	s9,a0,s9
800096bc:	fc042503          	lw	a0,-64(s0)
800096c0:	00ace463          	bltu	s9,a0,800096c8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x144>
800096c4:	000c8513          	mv	a0,s9
800096c8:	fbc42683          	lw	a3,-68(s0)
800096cc:	fb842a83          	lw	s5,-72(s0)
800096d0:	f19ff06f          	j	800095e8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x64>
800096d4:	00000593          	li	a1,0
800096d8:	00000513          	li	a0,0
800096dc:	40b006b3          	neg	a3,a1
800096e0:	00090593          	mv	a1,s2
800096e4:	03858663          	beq	a1,s8,80009710 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x18c>
800096e8:	0005a603          	lw	a2,0(a1)
800096ec:	00458913          	addi	s2,a1,4
800096f0:	fff68693          	addi	a3,a3,-1
800096f4:	00090593          	mv	a1,s2
800096f8:	fe0606e3          	beqz	a2,800096e4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x160>
800096fc:	fff6c593          	not	a1,a3
80009700:	00a5e463          	bltu	a1,a0,80009708 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x184>
80009704:	00058513          	mv	a0,a1
80009708:	40d005b3          	neg	a1,a3
8000970c:	fd1ff06f          	j	800096dc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17hf30b7c27100d65bdE+0x158>
80009710:	04c12083          	lw	ra,76(sp)
80009714:	04812403          	lw	s0,72(sp)
80009718:	04412483          	lw	s1,68(sp)
8000971c:	04012903          	lw	s2,64(sp)
80009720:	03c12983          	lw	s3,60(sp)
80009724:	03812a03          	lw	s4,56(sp)
80009728:	03412a83          	lw	s5,52(sp)
8000972c:	03012b03          	lw	s6,48(sp)
80009730:	02c12b83          	lw	s7,44(sp)
80009734:	02812c03          	lw	s8,40(sp)
80009738:	02412c83          	lw	s9,36(sp)
8000973c:	02012d03          	lw	s10,32(sp)
80009740:	01c12d83          	lw	s11,28(sp)
80009744:	05010113          	addi	sp,sp,80
80009748:	00008067          	ret
8000974c:	8000d637          	lui	a2,0x8000d
80009750:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
80009754:	02800593          	li	a1,40
80009758:	000b8513          	mv	a0,s7
8000975c:	ffffe097          	auipc	ra,0xffffe
80009760:	928080e7          	jalr	-1752(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>
80009764:	8000d637          	lui	a2,0x8000d
80009768:	53c60613          	addi	a2,a2,1340 # 8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>
8000976c:	02800593          	li	a1,40
80009770:	ffffe097          	auipc	ra,0xffffe
80009774:	914080e7          	jalr	-1772(ra) # 80007084 <_ZN4core9panicking18panic_bounds_check17h349a82ea46502428E>

80009778 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f08a2decfad5842E>:
80009778:	ff010113          	addi	sp,sp,-16
8000977c:	00112623          	sw	ra,12(sp)
80009780:	00812423          	sw	s0,8(sp)
80009784:	01010413          	addi	s0,sp,16
80009788:	00052503          	lw	a0,0(a0)
8000978c:	fea42a23          	sw	a0,-12(s0)
80009790:	ff440513          	addi	a0,s0,-12
80009794:	00000097          	auipc	ra,0x0
80009798:	1f8080e7          	jalr	504(ra) # 8000998c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE>
8000979c:	00c12083          	lw	ra,12(sp)
800097a0:	00812403          	lw	s0,8(sp)
800097a4:	01010113          	addi	sp,sp,16
800097a8:	00008067          	ret

800097ac <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h33ef9a5cfa7ae48aE>:
800097ac:	fe010113          	addi	sp,sp,-32
800097b0:	00112e23          	sw	ra,28(sp)
800097b4:	00812c23          	sw	s0,24(sp)
800097b8:	02010413          	addi	s0,sp,32
800097bc:	00050593          	mv	a1,a0
800097c0:	8000d537          	lui	a0,0x8000d
800097c4:	5b850513          	addi	a0,a0,1464 # 8000d5b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.446>
800097c8:	00100613          	li	a2,1
800097cc:	fe042823          	sw	zero,-16(s0)
800097d0:	00400693          	li	a3,4
800097d4:	fea42023          	sw	a0,-32(s0)
800097d8:	fec42223          	sw	a2,-28(s0)
800097dc:	fed42423          	sw	a3,-24(s0)
800097e0:	fe042623          	sw	zero,-20(s0)
800097e4:	fe040513          	addi	a0,s0,-32
800097e8:	ffffe097          	auipc	ra,0xffffe
800097ec:	828080e7          	jalr	-2008(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

800097f0 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h04eee215b38ad48bE>:
800097f0:	ff010113          	addi	sp,sp,-16
800097f4:	00112623          	sw	ra,12(sp)
800097f8:	00812423          	sw	s0,8(sp)
800097fc:	01010413          	addi	s0,sp,16
80009800:	00058713          	mv	a4,a1
80009804:	0085a603          	lw	a2,8(a1)
80009808:	00052583          	lw	a1,0(a0)
8000980c:	00200537          	lui	a0,0x200
80009810:	00361693          	slli	a3,a2,0x3
80009814:	00a67533          	and	a0,a2,a0
80009818:	0206c263          	bltz	a3,8000983c <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h04eee215b38ad48bE+0x4c>
8000981c:	00a03633          	snez	a2,a0
80009820:	00070513          	mv	a0,a4
80009824:	00000693          	li	a3,0
80009828:	00c12083          	lw	ra,12(sp)
8000982c:	00812403          	lw	s0,8(sp)
80009830:	01010113          	addi	sp,sp,16
80009834:	ffffe317          	auipc	t1,0xffffe
80009838:	39c30067          	jr	924(t1) # 80007bd0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17hdd63fd262cf44f91E>
8000983c:	00e75683          	lhu	a3,14(a4)
80009840:	00a03633          	snez	a2,a0
80009844:	00070513          	mv	a0,a4
80009848:	00c12083          	lw	ra,12(sp)
8000984c:	00812403          	lw	s0,8(sp)
80009850:	01010113          	addi	sp,sp,16
80009854:	ffffe317          	auipc	t1,0xffffe
80009858:	00430067          	jr	4(t1) # 80007858 <_ZN4core3fmt5float29float_to_decimal_common_exact17h4a44360b56f2b66aE>

8000985c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E>:
8000985c:	f7010113          	addi	sp,sp,-144
80009860:	08112623          	sw	ra,140(sp)
80009864:	08812423          	sw	s0,136(sp)
80009868:	09010413          	addi	s0,sp,144
8000986c:	00058813          	mv	a6,a1
80009870:	00000793          	li	a5,0
80009874:	00052503          	lw	a0,0(a0) # 200000 <.Lline_table_start2+0x1fe7c6>
80009878:	ff740593          	addi	a1,s0,-9
8000987c:	00a00613          	li	a2,10
80009880:	01c0006f          	j	8000989c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E+0x40>
80009884:	05768693          	addi	a3,a3,87
80009888:	00455513          	srli	a0,a0,0x4
8000988c:	00d58023          	sb	a3,0(a1)
80009890:	00178793          	addi	a5,a5,1
80009894:	fff58593          	addi	a1,a1,-1
80009898:	02050263          	beqz	a0,800098bc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E+0x60>
8000989c:	00f57693          	andi	a3,a0,15
800098a0:	fec6f2e3          	bgeu	a3,a2,80009884 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E+0x28>
800098a4:	03068693          	addi	a3,a3,48
800098a8:	00455513          	srli	a0,a0,0x4
800098ac:	00d58023          	sb	a3,0(a1)
800098b0:	00178793          	addi	a5,a5,1
800098b4:	fff58593          	addi	a1,a1,-1
800098b8:	fe0512e3          	bnez	a0,8000989c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he61b9e24ddbe5ef7E+0x40>
800098bc:	f7840513          	addi	a0,s0,-136
800098c0:	40f50533          	sub	a0,a0,a5
800098c4:	08050713          	addi	a4,a0,128
800098c8:	8000d637          	lui	a2,0x8000d
800098cc:	41160613          	addi	a2,a2,1041 # 8000d411 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.293>
800098d0:	00100593          	li	a1,1
800098d4:	00200693          	li	a3,2
800098d8:	00080513          	mv	a0,a6
800098dc:	fffff097          	auipc	ra,0xfffff
800098e0:	848080e7          	jalr	-1976(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
800098e4:	08c12083          	lw	ra,140(sp)
800098e8:	08812403          	lw	s0,136(sp)
800098ec:	09010113          	addi	sp,sp,144
800098f0:	00008067          	ret

800098f4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6f764a74d3e4708cE>:
800098f4:	f7010113          	addi	sp,sp,-144
800098f8:	08112623          	sw	ra,140(sp)
800098fc:	08812423          	sw	s0,136(sp)
80009900:	09010413          	addi	s0,sp,144
80009904:	00058813          	mv	a6,a1
80009908:	00000793          	li	a5,0
8000990c:	00052503          	lw	a0,0(a0)
80009910:	ff740593          	addi	a1,s0,-9
80009914:	00a00613          	li	a2,10
80009918:	01c0006f          	j	80009934 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6f764a74d3e4708cE+0x40>
8000991c:	03768693          	addi	a3,a3,55
80009920:	00455513          	srli	a0,a0,0x4
80009924:	00d58023          	sb	a3,0(a1)
80009928:	00178793          	addi	a5,a5,1
8000992c:	fff58593          	addi	a1,a1,-1
80009930:	02050263          	beqz	a0,80009954 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6f764a74d3e4708cE+0x60>
80009934:	00f57693          	andi	a3,a0,15
80009938:	fec6f2e3          	bgeu	a3,a2,8000991c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6f764a74d3e4708cE+0x28>
8000993c:	03068693          	addi	a3,a3,48
80009940:	00455513          	srli	a0,a0,0x4
80009944:	00d58023          	sb	a3,0(a1)
80009948:	00178793          	addi	a5,a5,1
8000994c:	fff58593          	addi	a1,a1,-1
80009950:	fe0512e3          	bnez	a0,80009934 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6f764a74d3e4708cE+0x40>
80009954:	f7840513          	addi	a0,s0,-136
80009958:	40f50533          	sub	a0,a0,a5
8000995c:	08050713          	addi	a4,a0,128
80009960:	8000d637          	lui	a2,0x8000d
80009964:	41160613          	addi	a2,a2,1041 # 8000d411 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.293>
80009968:	00100593          	li	a1,1
8000996c:	00200693          	li	a3,2
80009970:	00080513          	mv	a0,a6
80009974:	ffffe097          	auipc	ra,0xffffe
80009978:	7b0080e7          	jalr	1968(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
8000997c:	08c12083          	lw	ra,140(sp)
80009980:	08812403          	lw	s0,136(sp)
80009984:	09010113          	addi	sp,sp,144
80009988:	00008067          	ret

8000998c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE>:
8000998c:	f7010113          	addi	sp,sp,-144
80009990:	08112623          	sw	ra,140(sp)
80009994:	08812423          	sw	s0,136(sp)
80009998:	08912223          	sw	s1,132(sp)
8000999c:	09010413          	addi	s0,sp,144
800099a0:	00058493          	mv	s1,a1
800099a4:	0085a583          	lw	a1,8(a1)
800099a8:	00659613          	slli	a2,a1,0x6
800099ac:	04064a63          	bltz	a2,80009a00 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0x74>
800099b0:	00559593          	slli	a1,a1,0x5
800099b4:	0805ce63          	bltz	a1,80009a50 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0xc4>
800099b8:	00052503          	lw	a0,0(a0)
800099bc:	f7440593          	addi	a1,s0,-140
800099c0:	00a00613          	li	a2,10
800099c4:	00000097          	auipc	ra,0x0
800099c8:	2b0080e7          	jalr	688(ra) # 80009c74 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE>
800099cc:	00050713          	mv	a4,a0
800099d0:	00058793          	mv	a5,a1
800099d4:	00100593          	li	a1,1
800099d8:	00100613          	li	a2,1
800099dc:	00048513          	mv	a0,s1
800099e0:	00000693          	li	a3,0
800099e4:	ffffe097          	auipc	ra,0xffffe
800099e8:	740080e7          	jalr	1856(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
800099ec:	08c12083          	lw	ra,140(sp)
800099f0:	08812403          	lw	s0,136(sp)
800099f4:	08412483          	lw	s1,132(sp)
800099f8:	09010113          	addi	sp,sp,144
800099fc:	00008067          	ret
80009a00:	00000793          	li	a5,0
80009a04:	00052503          	lw	a0,0(a0)
80009a08:	ff340593          	addi	a1,s0,-13
80009a0c:	00a00613          	li	a2,10
80009a10:	01c0006f          	j	80009a2c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0xa0>
80009a14:	05768693          	addi	a3,a3,87
80009a18:	00455513          	srli	a0,a0,0x4
80009a1c:	00d58023          	sb	a3,0(a1)
80009a20:	00178793          	addi	a5,a5,1
80009a24:	fff58593          	addi	a1,a1,-1
80009a28:	06050a63          	beqz	a0,80009a9c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0x110>
80009a2c:	00f57693          	andi	a3,a0,15
80009a30:	fec6f2e3          	bgeu	a3,a2,80009a14 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0x88>
80009a34:	03068693          	addi	a3,a3,48
80009a38:	00455513          	srli	a0,a0,0x4
80009a3c:	00d58023          	sb	a3,0(a1)
80009a40:	00178793          	addi	a5,a5,1
80009a44:	fff58593          	addi	a1,a1,-1
80009a48:	fe0512e3          	bnez	a0,80009a2c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0xa0>
80009a4c:	0500006f          	j	80009a9c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0x110>
80009a50:	00000793          	li	a5,0
80009a54:	00052503          	lw	a0,0(a0)
80009a58:	ff340593          	addi	a1,s0,-13
80009a5c:	00a00613          	li	a2,10
80009a60:	01c0006f          	j	80009a7c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0xf0>
80009a64:	03768693          	addi	a3,a3,55
80009a68:	00455513          	srli	a0,a0,0x4
80009a6c:	00d58023          	sb	a3,0(a1)
80009a70:	00178793          	addi	a5,a5,1
80009a74:	fff58593          	addi	a1,a1,-1
80009a78:	02050263          	beqz	a0,80009a9c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0x110>
80009a7c:	00f57693          	andi	a3,a0,15
80009a80:	fec6f2e3          	bgeu	a3,a2,80009a64 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0xd8>
80009a84:	03068693          	addi	a3,a3,48
80009a88:	00455513          	srli	a0,a0,0x4
80009a8c:	00d58023          	sb	a3,0(a1)
80009a90:	00178793          	addi	a5,a5,1
80009a94:	fff58593          	addi	a1,a1,-1
80009a98:	fe0512e3          	bnez	a0,80009a7c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hff35748e88c8a07cE+0xf0>
80009a9c:	f7440513          	addi	a0,s0,-140
80009aa0:	40f50533          	sub	a0,a0,a5
80009aa4:	08050713          	addi	a4,a0,128
80009aa8:	8000d637          	lui	a2,0x8000d
80009aac:	41160613          	addi	a2,a2,1041 # 8000d411 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.293>
80009ab0:	00100593          	li	a1,1
80009ab4:	00200693          	li	a3,2
80009ab8:	00048513          	mv	a0,s1
80009abc:	ffffe097          	auipc	ra,0xffffe
80009ac0:	668080e7          	jalr	1640(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
80009ac4:	08c12083          	lw	ra,140(sp)
80009ac8:	08812403          	lw	s0,136(sp)
80009acc:	08412483          	lw	s1,132(sp)
80009ad0:	09010113          	addi	sp,sp,144
80009ad4:	00008067          	ret

80009ad8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE>:
80009ad8:	f7010113          	addi	sp,sp,-144
80009adc:	08112623          	sw	ra,140(sp)
80009ae0:	08812423          	sw	s0,136(sp)
80009ae4:	08912223          	sw	s1,132(sp)
80009ae8:	09010413          	addi	s0,sp,144
80009aec:	00060493          	mv	s1,a2
80009af0:	00862603          	lw	a2,8(a2)
80009af4:	00661693          	slli	a3,a2,0x6
80009af8:	0406c863          	bltz	a3,80009b48 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0x70>
80009afc:	00561613          	slli	a2,a2,0x5
80009b00:	08064863          	bltz	a2,80009b90 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0xb8>
80009b04:	f7440613          	addi	a2,s0,-140
80009b08:	01400693          	li	a3,20
80009b0c:	00000097          	auipc	ra,0x0
80009b10:	35c080e7          	jalr	860(ra) # 80009e68 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E>
80009b14:	00050713          	mv	a4,a0
80009b18:	00058793          	mv	a5,a1
80009b1c:	00100593          	li	a1,1
80009b20:	00100613          	li	a2,1
80009b24:	00048513          	mv	a0,s1
80009b28:	00000693          	li	a3,0
80009b2c:	ffffe097          	auipc	ra,0xffffe
80009b30:	5f8080e7          	jalr	1528(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
80009b34:	08c12083          	lw	ra,140(sp)
80009b38:	08812403          	lw	s0,136(sp)
80009b3c:	08412483          	lw	s1,132(sp)
80009b40:	09010113          	addi	sp,sp,144
80009b44:	00008067          	ret
80009b48:	00000793          	li	a5,0
80009b4c:	ff340613          	addi	a2,s0,-13
80009b50:	00a00693          	li	a3,10
80009b54:	02c0006f          	j	80009b80 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0xa8>
80009b58:	05770713          	addi	a4,a4,87
80009b5c:	00455513          	srli	a0,a0,0x4
80009b60:	01c59813          	slli	a6,a1,0x1c
80009b64:	0045d593          	srli	a1,a1,0x4
80009b68:	00e60023          	sb	a4,0(a2)
80009b6c:	01056533          	or	a0,a0,a6
80009b70:	00178793          	addi	a5,a5,1
80009b74:	00b56733          	or	a4,a0,a1
80009b78:	fff60613          	addi	a2,a2,-1
80009b7c:	04070e63          	beqz	a4,80009bd8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0x100>
80009b80:	00f57713          	andi	a4,a0,15
80009b84:	fcd77ae3          	bgeu	a4,a3,80009b58 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0x80>
80009b88:	03070713          	addi	a4,a4,48
80009b8c:	fd1ff06f          	j	80009b5c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0x84>
80009b90:	00000793          	li	a5,0
80009b94:	ff340613          	addi	a2,s0,-13
80009b98:	00a00693          	li	a3,10
80009b9c:	02c0006f          	j	80009bc8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0xf0>
80009ba0:	03770713          	addi	a4,a4,55
80009ba4:	00455513          	srli	a0,a0,0x4
80009ba8:	01c59813          	slli	a6,a1,0x1c
80009bac:	0045d593          	srli	a1,a1,0x4
80009bb0:	00e60023          	sb	a4,0(a2)
80009bb4:	01056533          	or	a0,a0,a6
80009bb8:	00178793          	addi	a5,a5,1
80009bbc:	00b56733          	or	a4,a0,a1
80009bc0:	fff60613          	addi	a2,a2,-1
80009bc4:	00070a63          	beqz	a4,80009bd8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0x100>
80009bc8:	00f57713          	andi	a4,a0,15
80009bcc:	fcd77ae3          	bgeu	a4,a3,80009ba0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0xc8>
80009bd0:	03070713          	addi	a4,a4,48
80009bd4:	fd1ff06f          	j	80009ba4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE+0xcc>
80009bd8:	f7440513          	addi	a0,s0,-140
80009bdc:	40f50533          	sub	a0,a0,a5
80009be0:	08050713          	addi	a4,a0,128
80009be4:	8000d637          	lui	a2,0x8000d
80009be8:	41160613          	addi	a2,a2,1041 # 8000d411 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.293>
80009bec:	00100593          	li	a1,1
80009bf0:	00200693          	li	a3,2
80009bf4:	00048513          	mv	a0,s1
80009bf8:	ffffe097          	auipc	ra,0xffffe
80009bfc:	52c080e7          	jalr	1324(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
80009c00:	08c12083          	lw	ra,140(sp)
80009c04:	08812403          	lw	s0,136(sp)
80009c08:	08412483          	lw	s1,132(sp)
80009c0c:	09010113          	addi	sp,sp,144
80009c10:	00008067          	ret

80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>:
80009c14:	fe010113          	addi	sp,sp,-32
80009c18:	00112e23          	sw	ra,28(sp)
80009c1c:	00812c23          	sw	s0,24(sp)
80009c20:	00912a23          	sw	s1,20(sp)
80009c24:	02010413          	addi	s0,sp,32
80009c28:	00052503          	lw	a0,0(a0)
80009c2c:	00058493          	mv	s1,a1
80009c30:	fea40593          	addi	a1,s0,-22
80009c34:	00a00613          	li	a2,10
80009c38:	00000097          	auipc	ra,0x0
80009c3c:	03c080e7          	jalr	60(ra) # 80009c74 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE>
80009c40:	00050713          	mv	a4,a0
80009c44:	00058793          	mv	a5,a1
80009c48:	00100593          	li	a1,1
80009c4c:	00100613          	li	a2,1
80009c50:	00048513          	mv	a0,s1
80009c54:	00000693          	li	a3,0
80009c58:	ffffe097          	auipc	ra,0xffffe
80009c5c:	4cc080e7          	jalr	1228(ra) # 80008124 <_ZN4core3fmt9Formatter12pad_integral17hdbad418a1f0cfc2cE>
80009c60:	01c12083          	lw	ra,28(sp)
80009c64:	01812403          	lw	s0,24(sp)
80009c68:	01412483          	lw	s1,20(sp)
80009c6c:	02010113          	addi	sp,sp,32
80009c70:	00008067          	ret

80009c74 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE>:
80009c74:	fc010113          	addi	sp,sp,-64
80009c78:	02112e23          	sw	ra,60(sp)
80009c7c:	02812c23          	sw	s0,56(sp)
80009c80:	02912a23          	sw	s1,52(sp)
80009c84:	03212823          	sw	s2,48(sp)
80009c88:	03312623          	sw	s3,44(sp)
80009c8c:	03412423          	sw	s4,40(sp)
80009c90:	03512223          	sw	s5,36(sp)
80009c94:	03612023          	sw	s6,32(sp)
80009c98:	01712e23          	sw	s7,28(sp)
80009c9c:	01812c23          	sw	s8,24(sp)
80009ca0:	01912a23          	sw	s9,20(sp)
80009ca4:	01a12823          	sw	s10,16(sp)
80009ca8:	01b12623          	sw	s11,12(sp)
80009cac:	04010413          	addi	s0,sp,64
80009cb0:	00060913          	mv	s2,a2
80009cb4:	00058b13          	mv	s6,a1
80009cb8:	00050993          	mv	s3,a0
80009cbc:	3e800513          	li	a0,1000
80009cc0:	8000dc37          	lui	s8,0x8000d
80009cc4:	413c0c13          	addi	s8,s8,1043 # 8000d413 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.296>
80009cc8:	00098a13          	mv	s4,s3
80009ccc:	00060c93          	mv	s9,a2
80009cd0:	00a9fa63          	bgeu	s3,a0,80009ce4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x70>
80009cd4:	00900513          	li	a0,9
80009cd8:	0d456863          	bltu	a0,s4,80009da8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x134>
80009cdc:	12099463          	bnez	s3,80009e04 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x190>
80009ce0:	1280006f          	j	80009e08 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x194>
80009ce4:	ffc90c93          	addi	s9,s2,-4
80009ce8:	fd642423          	sw	s6,-56(s0)
80009cec:	01690d33          	add	s10,s2,s6
80009cf0:	00002537          	lui	a0,0x2
80009cf4:	009895b7          	lui	a1,0x989
80009cf8:	ffed0d13          	addi	s10,s10,-2
80009cfc:	71050a93          	addi	s5,a0,1808 # 2710 <.Lline_table_start2+0xed6>
80009d00:	67f58d93          	addi	s11,a1,1663 # 98967f <.Lline_table_start2+0x987e45>
80009d04:	00098a13          	mv	s4,s3
80009d08:	000a0b13          	mv	s6,s4
80009d0c:	000a0513          	mv	a0,s4
80009d10:	000a8593          	mv	a1,s5
80009d14:	00001097          	auipc	ra,0x1
80009d18:	8c8080e7          	jalr	-1848(ra) # 8000a5dc <__udivsi3>
80009d1c:	00050a13          	mv	s4,a0
80009d20:	000a8593          	mv	a1,s5
80009d24:	00000097          	auipc	ra,0x0
80009d28:	4a4080e7          	jalr	1188(ra) # 8000a1c8 <__mulsi3>
80009d2c:	40ab04b3          	sub	s1,s6,a0
80009d30:	01049513          	slli	a0,s1,0x10
80009d34:	01055513          	srli	a0,a0,0x10
80009d38:	06400593          	li	a1,100
80009d3c:	00001097          	auipc	ra,0x1
80009d40:	8a0080e7          	jalr	-1888(ra) # 8000a5dc <__udivsi3>
80009d44:	00050b93          	mv	s7,a0
80009d48:	06400593          	li	a1,100
80009d4c:	00000097          	auipc	ra,0x0
80009d50:	47c080e7          	jalr	1148(ra) # 8000a1c8 <__mulsi3>
80009d54:	40a484b3          	sub	s1,s1,a0
80009d58:	001b9b93          	slli	s7,s7,0x1
80009d5c:	ffcc8c93          	addi	s9,s9,-4
80009d60:	017c0bb3          	add	s7,s8,s7
80009d64:	01149493          	slli	s1,s1,0x11
80009d68:	0104d493          	srli	s1,s1,0x10
80009d6c:	009c04b3          	add	s1,s8,s1
80009d70:	000bc503          	lbu	a0,0(s7)
80009d74:	001bc583          	lbu	a1,1(s7)
80009d78:	0004c603          	lbu	a2,0(s1)
80009d7c:	0014c683          	lbu	a3,1(s1)
80009d80:	fead0f23          	sb	a0,-2(s10)
80009d84:	febd0fa3          	sb	a1,-1(s10)
80009d88:	00cd0023          	sb	a2,0(s10)
80009d8c:	00dd00a3          	sb	a3,1(s10)
80009d90:	ffcd0d13          	addi	s10,s10,-4
80009d94:	f76deae3          	bltu	s11,s6,80009d08 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x94>
80009d98:	004c8c93          	addi	s9,s9,4
80009d9c:	fc842b03          	lw	s6,-56(s0)
80009da0:	00900513          	li	a0,9
80009da4:	f3457ce3          	bgeu	a0,s4,80009cdc <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x68>
80009da8:	ffec8493          	addi	s1,s9,-2
80009dac:	010a1513          	slli	a0,s4,0x10
80009db0:	01055513          	srli	a0,a0,0x10
80009db4:	06400593          	li	a1,100
80009db8:	00001097          	auipc	ra,0x1
80009dbc:	824080e7          	jalr	-2012(ra) # 8000a5dc <__udivsi3>
80009dc0:	00050a93          	mv	s5,a0
80009dc4:	06400593          	li	a1,100
80009dc8:	00000097          	auipc	ra,0x0
80009dcc:	400080e7          	jalr	1024(ra) # 8000a1c8 <__mulsi3>
80009dd0:	40aa0533          	sub	a0,s4,a0
80009dd4:	01151513          	slli	a0,a0,0x11
80009dd8:	01055513          	srli	a0,a0,0x10
80009ddc:	00ac0533          	add	a0,s8,a0
80009de0:	00054583          	lbu	a1,0(a0)
80009de4:	00154503          	lbu	a0,1(a0)
80009de8:	009b0633          	add	a2,s6,s1
80009dec:	019b0cb3          	add	s9,s6,s9
80009df0:	00b60023          	sb	a1,0(a2)
80009df4:	feac8fa3          	sb	a0,-1(s9)
80009df8:	000a8a13          	mv	s4,s5
80009dfc:	00048c93          	mv	s9,s1
80009e00:	00098463          	beqz	s3,80009e08 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x194>
80009e04:	020a0063          	beqz	s4,80009e24 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h27d094fe0e7b86dcE+0x1b0>
80009e08:	001a1a13          	slli	s4,s4,0x1
80009e0c:	01ea7513          	andi	a0,s4,30
80009e10:	00ac0533          	add	a0,s8,a0
80009e14:	00154503          	lbu	a0,1(a0)
80009e18:	fffc8c93          	addi	s9,s9,-1
80009e1c:	019b05b3          	add	a1,s6,s9
80009e20:	00a58023          	sb	a0,0(a1)
80009e24:	419905b3          	sub	a1,s2,s9
80009e28:	019b0533          	add	a0,s6,s9
80009e2c:	03c12083          	lw	ra,60(sp)
80009e30:	03812403          	lw	s0,56(sp)
80009e34:	03412483          	lw	s1,52(sp)
80009e38:	03012903          	lw	s2,48(sp)
80009e3c:	02c12983          	lw	s3,44(sp)
80009e40:	02812a03          	lw	s4,40(sp)
80009e44:	02412a83          	lw	s5,36(sp)
80009e48:	02012b03          	lw	s6,32(sp)
80009e4c:	01c12b83          	lw	s7,28(sp)
80009e50:	01812c03          	lw	s8,24(sp)
80009e54:	01412c83          	lw	s9,20(sp)
80009e58:	01012d03          	lw	s10,16(sp)
80009e5c:	00c12d83          	lw	s11,12(sp)
80009e60:	04010113          	addi	sp,sp,64
80009e64:	00008067          	ret

80009e68 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E>:
80009e68:	fb010113          	addi	sp,sp,-80
80009e6c:	04112623          	sw	ra,76(sp)
80009e70:	04812423          	sw	s0,72(sp)
80009e74:	04912223          	sw	s1,68(sp)
80009e78:	05212023          	sw	s2,64(sp)
80009e7c:	03312e23          	sw	s3,60(sp)
80009e80:	03412c23          	sw	s4,56(sp)
80009e84:	03512a23          	sw	s5,52(sp)
80009e88:	03612823          	sw	s6,48(sp)
80009e8c:	03712623          	sw	s7,44(sp)
80009e90:	03812423          	sw	s8,40(sp)
80009e94:	03912223          	sw	s9,36(sp)
80009e98:	03a12023          	sw	s10,32(sp)
80009e9c:	01b12e23          	sw	s11,28(sp)
80009ea0:	05010413          	addi	s0,sp,80
80009ea4:	00068a13          	mv	s4,a3
80009ea8:	00060993          	mv	s3,a2
80009eac:	00058c13          	mv	s8,a1
80009eb0:	00050c93          	mv	s9,a0
80009eb4:	3e853513          	sltiu	a0,a0,1000
80009eb8:	0015b593          	seqz	a1,a1
80009ebc:	00a5f533          	and	a0,a1,a0
80009ec0:	8000ddb7          	lui	s11,0x8000d
80009ec4:	413d8d93          	addi	s11,s11,1043 # 8000d413 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.296>
80009ec8:	10051863          	bnez	a0,80009fd8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x170>
80009ecc:	ffca0913          	addi	s2,s4,-4
80009ed0:	fd342423          	sw	s3,-56(s0)
80009ed4:	fd442223          	sw	s4,-60(s0)
80009ed8:	013a04b3          	add	s1,s4,s3
80009edc:	00002537          	lui	a0,0x2
80009ee0:	009895b7          	lui	a1,0x989
80009ee4:	ffe48493          	addi	s1,s1,-2
80009ee8:	71050b93          	addi	s7,a0,1808 # 2710 <.Lline_table_start2+0xed6>
80009eec:	67f58993          	addi	s3,a1,1663 # 98967f <.Lline_table_start2+0x987e45>
80009ef0:	fb942e23          	sw	s9,-68(s0)
80009ef4:	000c8a93          	mv	s5,s9
80009ef8:	fd842023          	sw	s8,-64(s0)
80009efc:	000c0b13          	mv	s6,s8
80009f00:	000b0c13          	mv	s8,s6
80009f04:	000a8c93          	mv	s9,s5
80009f08:	000a8513          	mv	a0,s5
80009f0c:	000b0593          	mv	a1,s6
80009f10:	000b8613          	mv	a2,s7
80009f14:	00000693          	li	a3,0
80009f18:	00001097          	auipc	ra,0x1
80009f1c:	fc8080e7          	jalr	-56(ra) # 8000aee0 <__udivdi3>
80009f20:	00050a93          	mv	s5,a0
80009f24:	00058b13          	mv	s6,a1
80009f28:	000b8613          	mv	a2,s7
80009f2c:	00000693          	li	a3,0
80009f30:	00000097          	auipc	ra,0x0
80009f34:	2e0080e7          	jalr	736(ra) # 8000a210 <__muldi3>
80009f38:	40ac8a33          	sub	s4,s9,a0
80009f3c:	010a1513          	slli	a0,s4,0x10
80009f40:	01055513          	srli	a0,a0,0x10
80009f44:	06400593          	li	a1,100
80009f48:	00000097          	auipc	ra,0x0
80009f4c:	694080e7          	jalr	1684(ra) # 8000a5dc <__udivsi3>
80009f50:	00050d13          	mv	s10,a0
80009f54:	06400593          	li	a1,100
80009f58:	00000097          	auipc	ra,0x0
80009f5c:	270080e7          	jalr	624(ra) # 8000a1c8 <__mulsi3>
80009f60:	40aa0533          	sub	a0,s4,a0
80009f64:	001d1d13          	slli	s10,s10,0x1
80009f68:	0199b5b3          	sltu	a1,s3,s9
80009f6c:	01803633          	snez	a2,s8
80009f70:	ffc90913          	addi	s2,s2,-4
80009f74:	01ad8d33          	add	s10,s11,s10
80009f78:	01151513          	slli	a0,a0,0x11
80009f7c:	00c5e5b3          	or	a1,a1,a2
80009f80:	01055513          	srli	a0,a0,0x10
80009f84:	00ad8533          	add	a0,s11,a0
80009f88:	000d4603          	lbu	a2,0(s10)
80009f8c:	001d4683          	lbu	a3,1(s10)
80009f90:	00054703          	lbu	a4,0(a0)
80009f94:	00154503          	lbu	a0,1(a0)
80009f98:	fec48f23          	sb	a2,-2(s1)
80009f9c:	fed48fa3          	sb	a3,-1(s1)
80009fa0:	00e48023          	sb	a4,0(s1)
80009fa4:	00a480a3          	sb	a0,1(s1)
80009fa8:	ffc48493          	addi	s1,s1,-4
80009fac:	f4059ae3          	bnez	a1,80009f00 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x98>
80009fb0:	00490913          	addi	s2,s2,4
80009fb4:	fc842983          	lw	s3,-56(s0)
80009fb8:	fc442a03          	lw	s4,-60(s0)
80009fbc:	fc042c03          	lw	s8,-64(s0)
80009fc0:	fbc42c83          	lw	s9,-68(s0)
80009fc4:	00aab513          	sltiu	a0,s5,10
80009fc8:	001b3593          	seqz	a1,s6
80009fcc:	00a5f533          	and	a0,a1,a0
80009fd0:	02050263          	beqz	a0,80009ff4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x18c>
80009fd4:	07c0006f          	j	8000a050 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x1e8>
80009fd8:	000c8a93          	mv	s5,s9
80009fdc:	000c0b13          	mv	s6,s8
80009fe0:	000a0913          	mv	s2,s4
80009fe4:	00acb513          	sltiu	a0,s9,10
80009fe8:	001c3593          	seqz	a1,s8
80009fec:	00a5f533          	and	a0,a1,a0
80009ff0:	06051063          	bnez	a0,8000a050 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x1e8>
80009ff4:	ffe90493          	addi	s1,s2,-2
80009ff8:	010a9513          	slli	a0,s5,0x10
80009ffc:	01055513          	srli	a0,a0,0x10
8000a000:	06400593          	li	a1,100
8000a004:	00000097          	auipc	ra,0x0
8000a008:	5d8080e7          	jalr	1496(ra) # 8000a5dc <__udivsi3>
8000a00c:	00050b93          	mv	s7,a0
8000a010:	06400593          	li	a1,100
8000a014:	00000097          	auipc	ra,0x0
8000a018:	1b4080e7          	jalr	436(ra) # 8000a1c8 <__mulsi3>
8000a01c:	00000b13          	li	s6,0
8000a020:	40aa8533          	sub	a0,s5,a0
8000a024:	01151513          	slli	a0,a0,0x11
8000a028:	01055513          	srli	a0,a0,0x10
8000a02c:	00ad8533          	add	a0,s11,a0
8000a030:	00054583          	lbu	a1,0(a0)
8000a034:	00154503          	lbu	a0,1(a0)
8000a038:	00998633          	add	a2,s3,s1
8000a03c:	01298933          	add	s2,s3,s2
8000a040:	00b60023          	sb	a1,0(a2)
8000a044:	fea90fa3          	sb	a0,-1(s2)
8000a048:	000b8a93          	mv	s5,s7
8000a04c:	00048913          	mv	s2,s1
8000a050:	018ce533          	or	a0,s9,s8
8000a054:	00050663          	beqz	a0,8000a060 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x1f8>
8000a058:	016ae533          	or	a0,s5,s6
8000a05c:	02050063          	beqz	a0,8000a07c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h645ea064e24b8c84E+0x214>
8000a060:	001a9a93          	slli	s5,s5,0x1
8000a064:	01eaf513          	andi	a0,s5,30
8000a068:	00ad8533          	add	a0,s11,a0
8000a06c:	00154503          	lbu	a0,1(a0)
8000a070:	fff90913          	addi	s2,s2,-1
8000a074:	012985b3          	add	a1,s3,s2
8000a078:	00a58023          	sb	a0,0(a1)
8000a07c:	412a05b3          	sub	a1,s4,s2
8000a080:	01298533          	add	a0,s3,s2
8000a084:	04c12083          	lw	ra,76(sp)
8000a088:	04812403          	lw	s0,72(sp)
8000a08c:	04412483          	lw	s1,68(sp)
8000a090:	04012903          	lw	s2,64(sp)
8000a094:	03c12983          	lw	s3,60(sp)
8000a098:	03812a03          	lw	s4,56(sp)
8000a09c:	03412a83          	lw	s5,52(sp)
8000a0a0:	03012b03          	lw	s6,48(sp)
8000a0a4:	02c12b83          	lw	s7,44(sp)
8000a0a8:	02812c03          	lw	s8,40(sp)
8000a0ac:	02412c83          	lw	s9,36(sp)
8000a0b0:	02012d03          	lw	s10,32(sp)
8000a0b4:	01c12d83          	lw	s11,28(sp)
8000a0b8:	05010113          	addi	sp,sp,80
8000a0bc:	00008067          	ret

8000a0c0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha978c8cc36bb14cfE>:
8000a0c0:	ff010113          	addi	sp,sp,-16
8000a0c4:	00112623          	sw	ra,12(sp)
8000a0c8:	00812423          	sw	s0,8(sp)
8000a0cc:	01010413          	addi	s0,sp,16
8000a0d0:	00052603          	lw	a2,0(a0)
8000a0d4:	00062503          	lw	a0,0(a2)
8000a0d8:	00462603          	lw	a2,4(a2)
8000a0dc:	00058693          	mv	a3,a1
8000a0e0:	00060593          	mv	a1,a2
8000a0e4:	00068613          	mv	a2,a3
8000a0e8:	00c12083          	lw	ra,12(sp)
8000a0ec:	00812403          	lw	s0,8(sp)
8000a0f0:	01010113          	addi	sp,sp,16
8000a0f4:	00000317          	auipc	t1,0x0
8000a0f8:	9e430067          	jr	-1564(t1) # 80009ad8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h8ecebc67a2902b1aE>

8000a0fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd0d93c14ce467faE>:
8000a0fc:	ff010113          	addi	sp,sp,-16
8000a100:	00112623          	sw	ra,12(sp)
8000a104:	00812423          	sw	s0,8(sp)
8000a108:	01010413          	addi	s0,sp,16
8000a10c:	00452603          	lw	a2,4(a0)
8000a110:	00052503          	lw	a0,0(a0)
8000a114:	00c62303          	lw	t1,12(a2)
8000a118:	00c12083          	lw	ra,12(sp)
8000a11c:	00812403          	lw	s0,8(sp)
8000a120:	01010113          	addi	sp,sp,16
8000a124:	00030067          	jr	t1

8000a128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h29e5c175f3355fa1E>:
8000a128:	ff010113          	addi	sp,sp,-16
8000a12c:	00112623          	sw	ra,12(sp)
8000a130:	00812423          	sw	s0,8(sp)
8000a134:	01010413          	addi	s0,sp,16
8000a138:	00052683          	lw	a3,0(a0)
8000a13c:	00452603          	lw	a2,4(a0)
8000a140:	00058513          	mv	a0,a1
8000a144:	00068593          	mv	a1,a3
8000a148:	00c12083          	lw	ra,12(sp)
8000a14c:	00812403          	lw	s0,8(sp)
8000a150:	01010113          	addi	sp,sp,16
8000a154:	ffffe317          	auipc	t1,0xffffe
8000a158:	3e830067          	jr	1000(t1) # 8000853c <_ZN4core3fmt9Formatter3pad17h04ecf05bf6642806E>

8000a15c <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h2945ef38c68d689fE>:
8000a15c:	fc010113          	addi	sp,sp,-64
8000a160:	02112e23          	sw	ra,60(sp)
8000a164:	02812c23          	sw	s0,56(sp)
8000a168:	04010413          	addi	s0,sp,64
8000a16c:	fca42423          	sw	a0,-56(s0)
8000a170:	fcb42623          	sw	a1,-52(s0)
8000a174:	fc840513          	addi	a0,s0,-56
8000a178:	8000a5b7          	lui	a1,0x8000a
8000a17c:	c1458593          	addi	a1,a1,-1004 # 80009c14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he8490270eaeb4a0cE>
8000a180:	fcc40693          	addi	a3,s0,-52
8000a184:	8000d737          	lui	a4,0x8000d
8000a188:	5e470713          	addi	a4,a4,1508 # 8000d5e4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.492>
8000a18c:	00200793          	li	a5,2
8000a190:	fe042023          	sw	zero,-32(s0)
8000a194:	fea42423          	sw	a0,-24(s0)
8000a198:	feb42623          	sw	a1,-20(s0)
8000a19c:	fed42823          	sw	a3,-16(s0)
8000a1a0:	feb42a23          	sw	a1,-12(s0)
8000a1a4:	fe840513          	addi	a0,s0,-24
8000a1a8:	fce42823          	sw	a4,-48(s0)
8000a1ac:	fcf42a23          	sw	a5,-44(s0)
8000a1b0:	fca42c23          	sw	a0,-40(s0)
8000a1b4:	fcf42e23          	sw	a5,-36(s0)
8000a1b8:	fd040513          	addi	a0,s0,-48
8000a1bc:	00060593          	mv	a1,a2
8000a1c0:	ffffd097          	auipc	ra,0xffffd
8000a1c4:	e50080e7          	jalr	-432(ra) # 80007010 <_ZN4core9panicking9panic_fmt17hc4b4a428d79bd40aE>

8000a1c8 <__mulsi3>:
8000a1c8:	ff010113          	addi	sp,sp,-16
8000a1cc:	00112623          	sw	ra,12(sp)
8000a1d0:	00812423          	sw	s0,8(sp)
8000a1d4:	01010413          	addi	s0,sp,16
8000a1d8:	00000613          	li	a2,0
8000a1dc:	02050063          	beqz	a0,8000a1fc <__mulsi3+0x34>
8000a1e0:	01f51693          	slli	a3,a0,0x1f
8000a1e4:	00155513          	srli	a0,a0,0x1
8000a1e8:	41f6d693          	srai	a3,a3,0x1f
8000a1ec:	00b6f6b3          	and	a3,a3,a1
8000a1f0:	00c68633          	add	a2,a3,a2
8000a1f4:	00159593          	slli	a1,a1,0x1
8000a1f8:	fe0514e3          	bnez	a0,8000a1e0 <__mulsi3+0x18>
8000a1fc:	00060513          	mv	a0,a2
8000a200:	00c12083          	lw	ra,12(sp)
8000a204:	00812403          	lw	s0,8(sp)
8000a208:	01010113          	addi	sp,sp,16
8000a20c:	00008067          	ret

8000a210 <__muldi3>:
8000a210:	ff010113          	addi	sp,sp,-16
8000a214:	00112623          	sw	ra,12(sp)
8000a218:	00812423          	sw	s0,8(sp)
8000a21c:	01010413          	addi	s0,sp,16
8000a220:	00b56733          	or	a4,a0,a1
8000a224:	06070663          	beqz	a4,8000a290 <__muldi3+0x80>
8000a228:	00000713          	li	a4,0
8000a22c:	00000793          	li	a5,0
8000a230:	01f51813          	slli	a6,a0,0x1f
8000a234:	00155513          	srli	a0,a0,0x1
8000a238:	01f59893          	slli	a7,a1,0x1f
8000a23c:	01f65293          	srli	t0,a2,0x1f
8000a240:	01156533          	or	a0,a0,a7
8000a244:	00169893          	slli	a7,a3,0x1
8000a248:	41f85813          	srai	a6,a6,0x1f
8000a24c:	00d87333          	and	t1,a6,a3
8000a250:	0058e6b3          	or	a3,a7,t0
8000a254:	0015d593          	srli	a1,a1,0x1
8000a258:	00c87833          	and	a6,a6,a2
8000a25c:	00f307b3          	add	a5,t1,a5
8000a260:	00b568b3          	or	a7,a0,a1
8000a264:	00e80733          	add	a4,a6,a4
8000a268:	01073833          	sltu	a6,a4,a6
8000a26c:	010787b3          	add	a5,a5,a6
8000a270:	00161613          	slli	a2,a2,0x1
8000a274:	fa089ee3          	bnez	a7,8000a230 <__muldi3+0x20>
8000a278:	00070513          	mv	a0,a4
8000a27c:	00078593          	mv	a1,a5
8000a280:	00c12083          	lw	ra,12(sp)
8000a284:	00812403          	lw	s0,8(sp)
8000a288:	01010113          	addi	sp,sp,16
8000a28c:	00008067          	ret
8000a290:	00070513          	mv	a0,a4
8000a294:	00000593          	li	a1,0
8000a298:	00c12083          	lw	ra,12(sp)
8000a29c:	00812403          	lw	s0,8(sp)
8000a2a0:	01010113          	addi	sp,sp,16
8000a2a4:	00008067          	ret

8000a2a8 <__mulsf3>:
8000a2a8:	ff010113          	addi	sp,sp,-16
8000a2ac:	00112623          	sw	ra,12(sp)
8000a2b0:	00812423          	sw	s0,8(sp)
8000a2b4:	01010413          	addi	s0,sp,16
8000a2b8:	00c12083          	lw	ra,12(sp)
8000a2bc:	00812403          	lw	s0,8(sp)
8000a2c0:	01010113          	addi	sp,sp,16
8000a2c4:	00000317          	auipc	t1,0x0
8000a2c8:	00830067          	jr	8(t1) # 8000a2cc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE>

8000a2cc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE>:
8000a2cc:	fe010113          	addi	sp,sp,-32
8000a2d0:	00112e23          	sw	ra,28(sp)
8000a2d4:	00812c23          	sw	s0,24(sp)
8000a2d8:	00912a23          	sw	s1,20(sp)
8000a2dc:	01212823          	sw	s2,16(sp)
8000a2e0:	01312623          	sw	s3,12(sp)
8000a2e4:	01412423          	sw	s4,8(sp)
8000a2e8:	01512223          	sw	s5,4(sp)
8000a2ec:	02010413          	addi	s0,sp,32
8000a2f0:	00800937          	lui	s2,0x800
8000a2f4:	00151613          	slli	a2,a0,0x1
8000a2f8:	00159693          	slli	a3,a1,0x1
8000a2fc:	00a5c4b3          	xor	s1,a1,a0
8000a300:	80000737          	lui	a4,0x80000
8000a304:	fff90913          	addi	s2,s2,-1 # 7fffff <.Lline_table_start2+0x7fe7c5>
8000a308:	01865993          	srli	s3,a2,0x18
8000a30c:	0186da13          	srli	s4,a3,0x18
8000a310:	00e4f4b3          	and	s1,s1,a4
8000a314:	01257633          	and	a2,a0,s2
8000a318:	f0198813          	addi	a6,s3,-255
8000a31c:	f0200793          	li	a5,-254
8000a320:	0125f6b3          	and	a3,a1,s2
8000a324:	06f86263          	bltu	a6,a5,8000a388 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0xbc>
8000a328:	f01a0813          	addi	a6,s4,-255
8000a32c:	04f86e63          	bltu	a6,a5,8000a388 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0xbc>
8000a330:	00000a93          	li	s5,0
8000a334:	00800537          	lui	a0,0x800
8000a338:	00869693          	slli	a3,a3,0x8
8000a33c:	00a66633          	or	a2,a2,a0
8000a340:	80000537          	lui	a0,0x80000
8000a344:	00a6e533          	or	a0,a3,a0
8000a348:	00000593          	li	a1,0
8000a34c:	00000693          	li	a3,0
8000a350:	00000097          	auipc	ra,0x0
8000a354:	ec0080e7          	jalr	-320(ra) # 8000a210 <__muldi3>
8000a358:	013a09b3          	add	s3,s4,s3
8000a35c:	00859613          	slli	a2,a1,0x8
8000a360:	01598ab3          	add	s5,s3,s5
8000a364:	04064063          	bltz	a2,8000a3a4 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0xd8>
8000a368:	f81a8613          	addi	a2,s5,-127
8000a36c:	01f55693          	srli	a3,a0,0x1f
8000a370:	00159593          	slli	a1,a1,0x1
8000a374:	00d5e5b3          	or	a1,a1,a3
8000a378:	00151513          	slli	a0,a0,0x1
8000a37c:	0fe00693          	li	a3,254
8000a380:	02c6d863          	bge	a3,a2,8000a3b0 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0xe4>
8000a384:	0700006f          	j	8000a3f4 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x128>
8000a388:	fff70793          	addi	a5,a4,-1 # 7fffffff <.Lline_table_start2+0x7fffe7c5>
8000a38c:	00f57733          	and	a4,a0,a5
8000a390:	7f800837          	lui	a6,0x7f800
8000a394:	04e87063          	bgeu	a6,a4,8000a3d4 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x108>
8000a398:	004004b7          	lui	s1,0x400
8000a39c:	009564b3          	or	s1,a0,s1
8000a3a0:	05c0006f          	j	8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a3a4:	f82a8613          	addi	a2,s5,-126
8000a3a8:	0fe00693          	li	a3,254
8000a3ac:	04c6c463          	blt	a3,a2,8000a3f4 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x128>
8000a3b0:	06c05a63          	blez	a2,8000a424 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x158>
8000a3b4:	0125f5b3          	and	a1,a1,s2
8000a3b8:	01761613          	slli	a2,a2,0x17
8000a3bc:	00b665b3          	or	a1,a2,a1
8000a3c0:	80000637          	lui	a2,0x80000
8000a3c4:	0095e4b3          	or	s1,a1,s1
8000a3c8:	08a67c63          	bgeu	a2,a0,8000a460 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x194>
8000a3cc:	00148493          	addi	s1,s1,1 # 400001 <.Lline_table_start2+0x3fe7c7>
8000a3d0:	02c0006f          	j	8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a3d4:	00f5f533          	and	a0,a1,a5
8000a3d8:	00a87863          	bgeu	a6,a0,8000a3e8 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x11c>
8000a3dc:	004004b7          	lui	s1,0x400
8000a3e0:	0095e4b3          	or	s1,a1,s1
8000a3e4:	0180006f          	j	8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a3e8:	7f8005b7          	lui	a1,0x7f800
8000a3ec:	08b71263          	bne	a4,a1,8000a470 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x1a4>
8000a3f0:	08050463          	beqz	a0,8000a478 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x1ac>
8000a3f4:	7f800537          	lui	a0,0x7f800
8000a3f8:	00a4e4b3          	or	s1,s1,a0
8000a3fc:	00048513          	mv	a0,s1
8000a400:	01c12083          	lw	ra,28(sp)
8000a404:	01812403          	lw	s0,24(sp)
8000a408:	01412483          	lw	s1,20(sp)
8000a40c:	01012903          	lw	s2,16(sp)
8000a410:	00c12983          	lw	s3,12(sp)
8000a414:	00812a03          	lw	s4,8(sp)
8000a418:	00412a83          	lw	s5,4(sp)
8000a41c:	02010113          	addi	sp,sp,32
8000a420:	00008067          	ret
8000a424:	00100693          	li	a3,1
8000a428:	40c686b3          	sub	a3,a3,a2
8000a42c:	01f00713          	li	a4,31
8000a430:	fcd766e3          	bltu	a4,a3,8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a434:	01f60613          	addi	a2,a2,31 # 8000001f <.bss_zero_loop+0xb>
8000a438:	00d55733          	srl	a4,a0,a3
8000a43c:	00c51533          	sll	a0,a0,a2
8000a440:	00c59633          	sll	a2,a1,a2
8000a444:	00a03533          	snez	a0,a0
8000a448:	00c76633          	or	a2,a4,a2
8000a44c:	00a66533          	or	a0,a2,a0
8000a450:	00d5d5b3          	srl	a1,a1,a3
8000a454:	80000637          	lui	a2,0x80000
8000a458:	0095e4b3          	or	s1,a1,s1
8000a45c:	f6a668e3          	bltu	a2,a0,8000a3cc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x100>
8000a460:	f8c51ee3          	bne	a0,a2,8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a464:	0015f593          	andi	a1,a1,1
8000a468:	00b484b3          	add	s1,s1,a1
8000a46c:	f91ff06f          	j	8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a470:	00b51863          	bne	a0,a1,8000a480 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x1b4>
8000a474:	f80710e3          	bnez	a4,8000a3f4 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x128>
8000a478:	7fc004b7          	lui	s1,0x7fc00
8000a47c:	f81ff06f          	j	8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a480:	f6070ee3          	beqz	a4,8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a484:	f6050ce3          	beqz	a0,8000a3fc <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x130>
8000a488:	01775713          	srli	a4,a4,0x17
8000a48c:	08071663          	bnez	a4,8000a518 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x24c>
8000a490:	08060863          	beqz	a2,8000a520 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x254>
8000a494:	00165593          	srli	a1,a2,0x1
8000a498:	55555737          	lui	a4,0x55555
8000a49c:	00b665b3          	or	a1,a2,a1
8000a4a0:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
8000a4a4:	0025d793          	srli	a5,a1,0x2
8000a4a8:	00f5e5b3          	or	a1,a1,a5
8000a4ac:	0045d793          	srli	a5,a1,0x4
8000a4b0:	00f5e5b3          	or	a1,a1,a5
8000a4b4:	0085d793          	srli	a5,a1,0x8
8000a4b8:	00f5e5b3          	or	a1,a1,a5
8000a4bc:	0105d793          	srli	a5,a1,0x10
8000a4c0:	00f5e5b3          	or	a1,a1,a5
8000a4c4:	fff5c593          	not	a1,a1
8000a4c8:	0015d793          	srli	a5,a1,0x1
8000a4cc:	00e7f733          	and	a4,a5,a4
8000a4d0:	333337b7          	lui	a5,0x33333
8000a4d4:	33378793          	addi	a5,a5,819 # 33333333 <.Lline_table_start2+0x33331af9>
8000a4d8:	40e585b3          	sub	a1,a1,a4
8000a4dc:	00f5f733          	and	a4,a1,a5
8000a4e0:	0025d593          	srli	a1,a1,0x2
8000a4e4:	00f5f5b3          	and	a1,a1,a5
8000a4e8:	0f0f17b7          	lui	a5,0xf0f1
8000a4ec:	00b705b3          	add	a1,a4,a1
8000a4f0:	0045d713          	srli	a4,a1,0x4
8000a4f4:	00e585b3          	add	a1,a1,a4
8000a4f8:	f0f78713          	addi	a4,a5,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
8000a4fc:	00e5f5b3          	and	a1,a1,a4
8000a500:	00859713          	slli	a4,a1,0x8
8000a504:	00e585b3          	add	a1,a1,a4
8000a508:	01059713          	slli	a4,a1,0x10
8000a50c:	00e585b3          	add	a1,a1,a4
8000a510:	0185d593          	srli	a1,a1,0x18
8000a514:	0100006f          	j	8000a524 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x258>
8000a518:	00000a93          	li	s5,0
8000a51c:	0180006f          	j	8000a534 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x268>
8000a520:	02000593          	li	a1,32
8000a524:	01858713          	addi	a4,a1,24 # 7f800018 <.Lline_table_start2+0x7f7fe7de>
8000a528:	00900793          	li	a5,9
8000a52c:	40b78ab3          	sub	s5,a5,a1
8000a530:	00e61633          	sll	a2,a2,a4
8000a534:	01755513          	srli	a0,a0,0x17
8000a538:	de051ee3          	bnez	a0,8000a334 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x68>
8000a53c:	08068463          	beqz	a3,8000a5c4 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x2f8>
8000a540:	0016d513          	srli	a0,a3,0x1
8000a544:	555555b7          	lui	a1,0x55555
8000a548:	00a6e533          	or	a0,a3,a0
8000a54c:	55558593          	addi	a1,a1,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
8000a550:	00255713          	srli	a4,a0,0x2
8000a554:	00e56533          	or	a0,a0,a4
8000a558:	00455713          	srli	a4,a0,0x4
8000a55c:	00e56533          	or	a0,a0,a4
8000a560:	00855713          	srli	a4,a0,0x8
8000a564:	00e56533          	or	a0,a0,a4
8000a568:	01055713          	srli	a4,a0,0x10
8000a56c:	00e56533          	or	a0,a0,a4
8000a570:	fff54513          	not	a0,a0
8000a574:	00155713          	srli	a4,a0,0x1
8000a578:	00b775b3          	and	a1,a4,a1
8000a57c:	33333737          	lui	a4,0x33333
8000a580:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331af9>
8000a584:	40b50533          	sub	a0,a0,a1
8000a588:	00e575b3          	and	a1,a0,a4
8000a58c:	00255513          	srli	a0,a0,0x2
8000a590:	00e57533          	and	a0,a0,a4
8000a594:	0f0f1737          	lui	a4,0xf0f1
8000a598:	00a58533          	add	a0,a1,a0
8000a59c:	00455593          	srli	a1,a0,0x4
8000a5a0:	00b50533          	add	a0,a0,a1
8000a5a4:	f0f70593          	addi	a1,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
8000a5a8:	00b57533          	and	a0,a0,a1
8000a5ac:	00851593          	slli	a1,a0,0x8
8000a5b0:	00b50533          	add	a0,a0,a1
8000a5b4:	01051593          	slli	a1,a0,0x10
8000a5b8:	00b50533          	add	a0,a0,a1
8000a5bc:	01855513          	srli	a0,a0,0x18
8000a5c0:	0080006f          	j	8000a5c8 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x2fc>
8000a5c4:	02000513          	li	a0,32
8000a5c8:	01850593          	addi	a1,a0,24 # 7f800018 <.Lline_table_start2+0x7f7fe7de>
8000a5cc:	40aa8ab3          	sub	s5,s5,a0
8000a5d0:	00b696b3          	sll	a3,a3,a1
8000a5d4:	009a8a93          	addi	s5,s5,9
8000a5d8:	d5dff06f          	j	8000a334 <_ZN17compiler_builtins5float3mul8__mulsf317hef90e822d0b876eeE+0x68>

8000a5dc <__udivsi3>:
8000a5dc:	ff010113          	addi	sp,sp,-16
8000a5e0:	00112623          	sw	ra,12(sp)
8000a5e4:	00812423          	sw	s0,8(sp)
8000a5e8:	01010413          	addi	s0,sp,16
8000a5ec:	00c12083          	lw	ra,12(sp)
8000a5f0:	00812403          	lw	s0,8(sp)
8000a5f4:	01010113          	addi	sp,sp,16
8000a5f8:	00000317          	auipc	t1,0x0
8000a5fc:	54030067          	jr	1344(t1) # 8000ab38 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E>

8000a600 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE>:
8000a600:	fd010113          	addi	sp,sp,-48
8000a604:	02112623          	sw	ra,44(sp)
8000a608:	02812423          	sw	s0,40(sp)
8000a60c:	02912223          	sw	s1,36(sp)
8000a610:	03212023          	sw	s2,32(sp)
8000a614:	01312e23          	sw	s3,28(sp)
8000a618:	01412c23          	sw	s4,24(sp)
8000a61c:	01512a23          	sw	s5,20(sp)
8000a620:	01612823          	sw	s6,16(sp)
8000a624:	01712623          	sw	s7,12(sp)
8000a628:	03010413          	addi	s0,sp,48
8000a62c:	00068993          	mv	s3,a3
8000a630:	00058913          	mv	s2,a1
8000a634:	00050493          	mv	s1,a0
8000a638:	06068a63          	beqz	a3,8000a6ac <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0xac>
8000a63c:	06071863          	bnez	a4,8000a6ac <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0xac>
8000a640:	1c060e63          	beqz	a2,8000a81c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x21c>
8000a644:	21367463          	bgeu	a2,s3,8000a84c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x24c>
8000a648:	0109d693          	srli	a3,s3,0x10
8000a64c:	00c6b533          	sltu	a0,a3,a2
8000a650:	00154593          	xori	a1,a0,1
8000a654:	00098513          	mv	a0,s3
8000a658:	22c6ee63          	bltu	a3,a2,8000a894 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x294>
8000a65c:	00068513          	mv	a0,a3
8000a660:	00459593          	slli	a1,a1,0x4
8000a664:	0086d793          	srli	a5,a3,0x8
8000a668:	00c7b6b3          	sltu	a3,a5,a2
8000a66c:	0016c693          	xori	a3,a3,1
8000a670:	22c7fc63          	bgeu	a5,a2,8000a8a8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x2a8>
8000a674:	00369793          	slli	a5,a3,0x3
8000a678:	00455693          	srli	a3,a0,0x4
8000a67c:	00b7e5b3          	or	a1,a5,a1
8000a680:	00c6b7b3          	sltu	a5,a3,a2
8000a684:	0017c793          	xori	a5,a5,1
8000a688:	22c6ee63          	bltu	a3,a2,8000a8c4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x2c4>
8000a68c:	00068513          	mv	a0,a3
8000a690:	00279793          	slli	a5,a5,0x2
8000a694:	0026d693          	srli	a3,a3,0x2
8000a698:	00f5e5b3          	or	a1,a1,a5
8000a69c:	00c6b7b3          	sltu	a5,a3,a2
8000a6a0:	0017c793          	xori	a5,a5,1
8000a6a4:	22c6fc63          	bgeu	a3,a2,8000a8dc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x2dc>
8000a6a8:	2380006f          	j	8000a8e0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x2e0>
8000a6ac:	00e60a63          	beq	a2,a4,8000a6c0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0xc0>
8000a6b0:	00e63533          	sltu	a0,a2,a4
8000a6b4:	00000a93          	li	s5,0
8000a6b8:	00050a63          	beqz	a0,8000a6cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0xcc>
8000a6bc:	0780006f          	j	8000a734 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x134>
8000a6c0:	01393533          	sltu	a0,s2,s3
8000a6c4:	00000a93          	li	s5,0
8000a6c8:	06051663          	bnez	a0,8000a734 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x134>
8000a6cc:	06060463          	beqz	a2,8000a734 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x134>
8000a6d0:	01065693          	srli	a3,a2,0x10
8000a6d4:	00e6b533          	sltu	a0,a3,a4
8000a6d8:	00154593          	xori	a1,a0,1
8000a6dc:	00060513          	mv	a0,a2
8000a6e0:	06e6e063          	bltu	a3,a4,8000a740 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x140>
8000a6e4:	00068513          	mv	a0,a3
8000a6e8:	00459593          	slli	a1,a1,0x4
8000a6ec:	0086d793          	srli	a5,a3,0x8
8000a6f0:	00e7b6b3          	sltu	a3,a5,a4
8000a6f4:	0016c693          	xori	a3,a3,1
8000a6f8:	04e7fe63          	bgeu	a5,a4,8000a754 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x154>
8000a6fc:	00369793          	slli	a5,a3,0x3
8000a700:	00455693          	srli	a3,a0,0x4
8000a704:	00b7e5b3          	or	a1,a5,a1
8000a708:	00e6b7b3          	sltu	a5,a3,a4
8000a70c:	0017c793          	xori	a5,a5,1
8000a710:	06e6e063          	bltu	a3,a4,8000a770 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x170>
8000a714:	00068513          	mv	a0,a3
8000a718:	00279693          	slli	a3,a5,0x2
8000a71c:	00255793          	srli	a5,a0,0x2
8000a720:	00d5e5b3          	or	a1,a1,a3
8000a724:	00e7b6b3          	sltu	a3,a5,a4
8000a728:	0016c693          	xori	a3,a3,1
8000a72c:	04e7fe63          	bgeu	a5,a4,8000a788 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x188>
8000a730:	05c0006f          	j	8000a78c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x18c>
8000a734:	000a8a13          	mv	s4,s5
8000a738:	00060593          	mv	a1,a2
8000a73c:	3280006f          	j	8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x464>
8000a740:	00459593          	slli	a1,a1,0x4
8000a744:	00855793          	srli	a5,a0,0x8
8000a748:	00e7b6b3          	sltu	a3,a5,a4
8000a74c:	0016c693          	xori	a3,a3,1
8000a750:	fae7e6e3          	bltu	a5,a4,8000a6fc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0xfc>
8000a754:	00078513          	mv	a0,a5
8000a758:	00369793          	slli	a5,a3,0x3
8000a75c:	00455693          	srli	a3,a0,0x4
8000a760:	00b7e5b3          	or	a1,a5,a1
8000a764:	00e6b7b3          	sltu	a5,a3,a4
8000a768:	0017c793          	xori	a5,a5,1
8000a76c:	fae6f4e3          	bgeu	a3,a4,8000a714 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x114>
8000a770:	00279693          	slli	a3,a5,0x2
8000a774:	00255793          	srli	a5,a0,0x2
8000a778:	00d5e5b3          	or	a1,a1,a3
8000a77c:	00e7b6b3          	sltu	a3,a5,a4
8000a780:	0016c693          	xori	a3,a3,1
8000a784:	00e7e463          	bltu	a5,a4,8000a78c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x18c>
8000a788:	00078513          	mv	a0,a5
8000a78c:	00000a93          	li	s5,0
8000a790:	00169693          	slli	a3,a3,0x1
8000a794:	00155513          	srli	a0,a0,0x1
8000a798:	00e53533          	sltu	a0,a0,a4
8000a79c:	00154513          	xori	a0,a0,1
8000a7a0:	00a6e533          	or	a0,a3,a0
8000a7a4:	0019d693          	srli	a3,s3,0x1
8000a7a8:	00a5e5b3          	or	a1,a1,a0
8000a7ac:	01f5c513          	xori	a0,a1,31
8000a7b0:	00a6d533          	srl	a0,a3,a0
8000a7b4:	00b716b3          	sll	a3,a4,a1
8000a7b8:	00a6e533          	or	a0,a3,a0
8000a7bc:	00100693          	li	a3,1
8000a7c0:	00b696b3          	sll	a3,a3,a1
8000a7c4:	00b997b3          	sll	a5,s3,a1
8000a7c8:	0280006f          	j	8000a7f0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x1f0>
8000a7cc:	01393633          	sltu	a2,s2,s3
8000a7d0:	0156eab3          	or	s5,a3,s5
8000a7d4:	04061063          	bnez	a2,8000a814 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x214>
8000a7d8:	00058613          	mv	a2,a1
8000a7dc:	0017d793          	srli	a5,a5,0x1
8000a7e0:	01f51593          	slli	a1,a0,0x1f
8000a7e4:	00155513          	srli	a0,a0,0x1
8000a7e8:	00b7e7b3          	or	a5,a5,a1
8000a7ec:	0016d693          	srli	a3,a3,0x1
8000a7f0:	00f935b3          	sltu	a1,s2,a5
8000a7f4:	40a60833          	sub	a6,a2,a0
8000a7f8:	40b805b3          	sub	a1,a6,a1
8000a7fc:	fe05c0e3          	bltz	a1,8000a7dc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x1dc>
8000a800:	40f90933          	sub	s2,s2,a5
8000a804:	fce584e3          	beq	a1,a4,8000a7cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x1cc>
8000a808:	00e5b633          	sltu	a2,a1,a4
8000a80c:	0156eab3          	or	s5,a3,s5
8000a810:	fc0604e3          	beqz	a2,8000a7d8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x1d8>
8000a814:	00000a13          	li	s4,0
8000a818:	24c0006f          	j	8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x464>
8000a81c:	00090513          	mv	a0,s2
8000a820:	00098593          	mv	a1,s3
8000a824:	00000097          	auipc	ra,0x0
8000a828:	db8080e7          	jalr	-584(ra) # 8000a5dc <__udivsi3>
8000a82c:	00050a93          	mv	s5,a0
8000a830:	00098593          	mv	a1,s3
8000a834:	00000097          	auipc	ra,0x0
8000a838:	994080e7          	jalr	-1644(ra) # 8000a1c8 <__mulsi3>
8000a83c:	00000a13          	li	s4,0
8000a840:	00000593          	li	a1,0
8000a844:	40a90933          	sub	s2,s2,a0
8000a848:	21c0006f          	j	8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x464>
8000a84c:	0d361c63          	bne	a2,s3,8000a924 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x324>
8000a850:	00090513          	mv	a0,s2
8000a854:	00060593          	mv	a1,a2
8000a858:	00060993          	mv	s3,a2
8000a85c:	00000097          	auipc	ra,0x0
8000a860:	d80080e7          	jalr	-640(ra) # 8000a5dc <__udivsi3>
8000a864:	00050a13          	mv	s4,a0
8000a868:	00098593          	mv	a1,s3
8000a86c:	00000097          	auipc	ra,0x0
8000a870:	95c080e7          	jalr	-1700(ra) # 8000a1c8 <__mulsi3>
8000a874:	00000593          	li	a1,0
8000a878:	40a90933          	sub	s2,s2,a0
8000a87c:	01403533          	snez	a0,s4
8000a880:	fffa0a13          	addi	s4,s4,-1
8000a884:	001a0a93          	addi	s5,s4,1
8000a888:	001aba13          	seqz	s4,s5
8000a88c:	01450a33          	add	s4,a0,s4
8000a890:	1d40006f          	j	8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x464>
8000a894:	00459593          	slli	a1,a1,0x4
8000a898:	00855793          	srli	a5,a0,0x8
8000a89c:	00c7b6b3          	sltu	a3,a5,a2
8000a8a0:	0016c693          	xori	a3,a3,1
8000a8a4:	dcc7e8e3          	bltu	a5,a2,8000a674 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x74>
8000a8a8:	00078513          	mv	a0,a5
8000a8ac:	00369793          	slli	a5,a3,0x3
8000a8b0:	00455693          	srli	a3,a0,0x4
8000a8b4:	00b7e5b3          	or	a1,a5,a1
8000a8b8:	00c6b7b3          	sltu	a5,a3,a2
8000a8bc:	0017c793          	xori	a5,a5,1
8000a8c0:	dcc6f6e3          	bgeu	a3,a2,8000a68c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x8c>
8000a8c4:	00279793          	slli	a5,a5,0x2
8000a8c8:	00255693          	srli	a3,a0,0x2
8000a8cc:	00f5e5b3          	or	a1,a1,a5
8000a8d0:	00c6b7b3          	sltu	a5,a3,a2
8000a8d4:	0017c793          	xori	a5,a5,1
8000a8d8:	00c6e463          	bltu	a3,a2,8000a8e0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x2e0>
8000a8dc:	00068513          	mv	a0,a3
8000a8e0:	00179793          	slli	a5,a5,0x1
8000a8e4:	00155513          	srli	a0,a0,0x1
8000a8e8:	00c53533          	sltu	a0,a0,a2
8000a8ec:	00154513          	xori	a0,a0,1
8000a8f0:	00a7e533          	or	a0,a5,a0
8000a8f4:	00a5e533          	or	a0,a1,a0
8000a8f8:	0c051a63          	bnez	a0,8000a9cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x3cc>
8000a8fc:	01f00593          	li	a1,31
8000a900:	fe058793          	addi	a5,a1,-32
8000a904:	00b996b3          	sll	a3,s3,a1
8000a908:	0c07dc63          	bgez	a5,8000a9e0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x3e0>
8000a90c:	00b71533          	sll	a0,a4,a1
8000a910:	fff5c713          	not	a4,a1
8000a914:	0019d813          	srli	a6,s3,0x1
8000a918:	00e85733          	srl	a4,a6,a4
8000a91c:	00e56533          	or	a0,a0,a4
8000a920:	0c40006f          	j	8000a9e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x3e4>
8000a924:	00070a93          	mv	s5,a4
8000a928:	0109db13          	srli	s6,s3,0x10
8000a92c:	00060513          	mv	a0,a2
8000a930:	00098593          	mv	a1,s3
8000a934:	00060b93          	mv	s7,a2
8000a938:	00000097          	auipc	ra,0x0
8000a93c:	ca4080e7          	jalr	-860(ra) # 8000a5dc <__udivsi3>
8000a940:	00050a13          	mv	s4,a0
8000a944:	00098593          	mv	a1,s3
8000a948:	00000097          	auipc	ra,0x0
8000a94c:	880080e7          	jalr	-1920(ra) # 8000a1c8 <__mulsi3>
8000a950:	40ab85b3          	sub	a1,s7,a0
8000a954:	140b1663          	bnez	s6,8000aaa0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4a0>
8000a958:	01095b13          	srli	s6,s2,0x10
8000a95c:	01059593          	slli	a1,a1,0x10
8000a960:	0165e533          	or	a0,a1,s6
8000a964:	00098593          	mv	a1,s3
8000a968:	00000097          	auipc	ra,0x0
8000a96c:	c74080e7          	jalr	-908(ra) # 8000a5dc <__udivsi3>
8000a970:	00050a93          	mv	s5,a0
8000a974:	01091913          	slli	s2,s2,0x10
8000a978:	01095913          	srli	s2,s2,0x10
8000a97c:	00098593          	mv	a1,s3
8000a980:	00000097          	auipc	ra,0x0
8000a984:	848080e7          	jalr	-1976(ra) # 8000a1c8 <__mulsi3>
8000a988:	40ab0533          	sub	a0,s6,a0
8000a98c:	01051513          	slli	a0,a0,0x10
8000a990:	01256933          	or	s2,a0,s2
8000a994:	00090513          	mv	a0,s2
8000a998:	00098593          	mv	a1,s3
8000a99c:	00000097          	auipc	ra,0x0
8000a9a0:	c40080e7          	jalr	-960(ra) # 8000a5dc <__udivsi3>
8000a9a4:	00050b13          	mv	s6,a0
8000a9a8:	00098593          	mv	a1,s3
8000a9ac:	00000097          	auipc	ra,0x0
8000a9b0:	81c080e7          	jalr	-2020(ra) # 8000a1c8 <__mulsi3>
8000a9b4:	00000593          	li	a1,0
8000a9b8:	40a90933          	sub	s2,s2,a0
8000a9bc:	010ad513          	srli	a0,s5,0x10
8000a9c0:	01456a33          	or	s4,a0,s4
8000a9c4:	010a9a93          	slli	s5,s5,0x10
8000a9c8:	0980006f          	j	8000aa60 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x460>
8000a9cc:	02000593          	li	a1,32
8000a9d0:	40a585b3          	sub	a1,a1,a0
8000a9d4:	fe058793          	addi	a5,a1,-32
8000a9d8:	00b996b3          	sll	a3,s3,a1
8000a9dc:	f207c8e3          	bltz	a5,8000a90c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x30c>
8000a9e0:	00068513          	mv	a0,a3
8000a9e4:	00000b13          	li	s6,0
8000a9e8:	41f7d793          	srai	a5,a5,0x1f
8000a9ec:	00d7f6b3          	and	a3,a5,a3
8000a9f0:	00100713          	li	a4,1
8000a9f4:	00b715b3          	sll	a1,a4,a1
8000a9f8:	0180006f          	j	8000aa10 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x410>
8000a9fc:	0016d693          	srli	a3,a3,0x1
8000aa00:	01f51713          	slli	a4,a0,0x1f
8000aa04:	00155513          	srli	a0,a0,0x1
8000aa08:	00e6e6b3          	or	a3,a3,a4
8000aa0c:	0015d593          	srli	a1,a1,0x1
8000aa10:	00d93733          	sltu	a4,s2,a3
8000aa14:	40a607b3          	sub	a5,a2,a0
8000aa18:	40e78733          	sub	a4,a5,a4
8000aa1c:	fe0740e3          	bltz	a4,8000a9fc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x3fc>
8000aa20:	40d90933          	sub	s2,s2,a3
8000aa24:	0165eb33          	or	s6,a1,s6
8000aa28:	00070663          	beqz	a4,8000aa34 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x434>
8000aa2c:	00070613          	mv	a2,a4
8000aa30:	fcdff06f          	j	8000a9fc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x3fc>
8000aa34:	00090513          	mv	a0,s2
8000aa38:	00098593          	mv	a1,s3
8000aa3c:	00000097          	auipc	ra,0x0
8000aa40:	ba0080e7          	jalr	-1120(ra) # 8000a5dc <__udivsi3>
8000aa44:	00050a93          	mv	s5,a0
8000aa48:	00098593          	mv	a1,s3
8000aa4c:	fffff097          	auipc	ra,0xfffff
8000aa50:	77c080e7          	jalr	1916(ra) # 8000a1c8 <__mulsi3>
8000aa54:	00000a13          	li	s4,0
8000aa58:	00000593          	li	a1,0
8000aa5c:	40a90933          	sub	s2,s2,a0
8000aa60:	016aeab3          	or	s5,s5,s6
8000aa64:	0154a023          	sw	s5,0(s1) # 7fc00000 <.Lline_table_start2+0x7fbfe7c6>
8000aa68:	0144a223          	sw	s4,4(s1)
8000aa6c:	0124a423          	sw	s2,8(s1)
8000aa70:	00b4a623          	sw	a1,12(s1)
8000aa74:	02c12083          	lw	ra,44(sp)
8000aa78:	02812403          	lw	s0,40(sp)
8000aa7c:	02412483          	lw	s1,36(sp)
8000aa80:	02012903          	lw	s2,32(sp)
8000aa84:	01c12983          	lw	s3,28(sp)
8000aa88:	01812a03          	lw	s4,24(sp)
8000aa8c:	01412a83          	lw	s5,20(sp)
8000aa90:	01012b03          	lw	s6,16(sp)
8000aa94:	00c12b83          	lw	s7,12(sp)
8000aa98:	03010113          	addi	sp,sp,48
8000aa9c:	00008067          	ret
8000aaa0:	000a8513          	mv	a0,s5
8000aaa4:	01558663          	beq	a1,s5,8000aab0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4b0>
8000aaa8:	00a5b633          	sltu	a2,a1,a0
8000aaac:	0080006f          	j	8000aab4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4b4>
8000aab0:	01393633          	sltu	a2,s2,s3
8000aab4:	00060663          	beqz	a2,8000aac0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4c0>
8000aab8:	00000a93          	li	s5,0
8000aabc:	fa9ff06f          	j	8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x464>
8000aac0:	00000b13          	li	s6,0
8000aac4:	0019d613          	srli	a2,s3,0x1
8000aac8:	01f51513          	slli	a0,a0,0x1f
8000aacc:	01f99693          	slli	a3,s3,0x1f
8000aad0:	00c56533          	or	a0,a0,a2
8000aad4:	80000637          	lui	a2,0x80000
8000aad8:	0180006f          	j	8000aaf0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4f0>
8000aadc:	0016d693          	srli	a3,a3,0x1
8000aae0:	01f51713          	slli	a4,a0,0x1f
8000aae4:	00155513          	srli	a0,a0,0x1
8000aae8:	00e6e6b3          	or	a3,a3,a4
8000aaec:	00165613          	srli	a2,a2,0x1
8000aaf0:	00d93733          	sltu	a4,s2,a3
8000aaf4:	40a587b3          	sub	a5,a1,a0
8000aaf8:	40e78733          	sub	a4,a5,a4
8000aafc:	fe0740e3          	bltz	a4,8000aadc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4dc>
8000ab00:	40d90933          	sub	s2,s2,a3
8000ab04:	01666b33          	or	s6,a2,s6
8000ab08:	00070663          	beqz	a4,8000ab14 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x514>
8000ab0c:	00070593          	mv	a1,a4
8000ab10:	fcdff06f          	j	8000aadc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x4dc>
8000ab14:	00090513          	mv	a0,s2
8000ab18:	00098593          	mv	a1,s3
8000ab1c:	00000097          	auipc	ra,0x0
8000ab20:	ac0080e7          	jalr	-1344(ra) # 8000a5dc <__udivsi3>
8000ab24:	00050a93          	mv	s5,a0
8000ab28:	00098593          	mv	a1,s3
8000ab2c:	fffff097          	auipc	ra,0xfffff
8000ab30:	69c080e7          	jalr	1692(ra) # 8000a1c8 <__mulsi3>
8000ab34:	f25ff06f          	j	8000aa58 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE+0x458>

8000ab38 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E>:
8000ab38:	ff010113          	addi	sp,sp,-16
8000ab3c:	00112623          	sw	ra,12(sp)
8000ab40:	00812423          	sw	s0,8(sp)
8000ab44:	01010413          	addi	s0,sp,16
8000ab48:	00050613          	mv	a2,a0
8000ab4c:	00b57e63          	bgeu	a0,a1,8000ab68 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x30>
8000ab50:	00000513          	li	a0,0
8000ab54:	00060593          	mv	a1,a2
8000ab58:	00c12083          	lw	ra,12(sp)
8000ab5c:	00812403          	lw	s0,8(sp)
8000ab60:	01010113          	addi	sp,sp,16
8000ab64:	00008067          	ret
8000ab68:	01065693          	srli	a3,a2,0x10
8000ab6c:	00060513          	mv	a0,a2
8000ab70:	08b6f863          	bgeu	a3,a1,8000ac00 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0xc8>
8000ab74:	00855793          	srli	a5,a0,0x8
8000ab78:	08b7fa63          	bgeu	a5,a1,8000ac0c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0xd4>
8000ab7c:	00455813          	srli	a6,a0,0x4
8000ab80:	00b86463          	bltu	a6,a1,8000ab88 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x50>
8000ab84:	00080513          	mv	a0,a6
8000ab88:	00255713          	srli	a4,a0,0x2
8000ab8c:	00b83833          	sltu	a6,a6,a1
8000ab90:	00b7b7b3          	sltu	a5,a5,a1
8000ab94:	00b6b6b3          	sltu	a3,a3,a1
8000ab98:	00b738b3          	sltu	a7,a4,a1
8000ab9c:	00184813          	xori	a6,a6,1
8000aba0:	0017c793          	xori	a5,a5,1
8000aba4:	0016c293          	xori	t0,a3,1
8000aba8:	0018c693          	xori	a3,a7,1
8000abac:	00429293          	slli	t0,t0,0x4
8000abb0:	00379793          	slli	a5,a5,0x3
8000abb4:	0057e7b3          	or	a5,a5,t0
8000abb8:	00281813          	slli	a6,a6,0x2
8000abbc:	0107e7b3          	or	a5,a5,a6
8000abc0:	00b76463          	bltu	a4,a1,8000abc8 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x90>
8000abc4:	00070513          	mv	a0,a4
8000abc8:	00169693          	slli	a3,a3,0x1
8000abcc:	00155513          	srli	a0,a0,0x1
8000abd0:	00b53533          	sltu	a0,a0,a1
8000abd4:	00154513          	xori	a0,a0,1
8000abd8:	00a6e533          	or	a0,a3,a0
8000abdc:	00a7e6b3          	or	a3,a5,a0
8000abe0:	00d59733          	sll	a4,a1,a3
8000abe4:	40e60633          	sub	a2,a2,a4
8000abe8:	00100513          	li	a0,1
8000abec:	00d51533          	sll	a0,a0,a3
8000abf0:	f6b662e3          	bltu	a2,a1,8000ab54 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x1c>
8000abf4:	02074463          	bltz	a4,8000ac1c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0xe4>
8000abf8:	00050793          	mv	a5,a0
8000abfc:	0540006f          	j	8000ac50 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x118>
8000ac00:	00068513          	mv	a0,a3
8000ac04:	0086d793          	srli	a5,a3,0x8
8000ac08:	f6b7eae3          	bltu	a5,a1,8000ab7c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x44>
8000ac0c:	00078513          	mv	a0,a5
8000ac10:	0047d813          	srli	a6,a5,0x4
8000ac14:	f6b878e3          	bgeu	a6,a1,8000ab84 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x4c>
8000ac18:	f71ff06f          	j	8000ab88 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x50>
8000ac1c:	00175713          	srli	a4,a4,0x1
8000ac20:	fff68693          	addi	a3,a3,-1
8000ac24:	00100793          	li	a5,1
8000ac28:	00d797b3          	sll	a5,a5,a3
8000ac2c:	40e60833          	sub	a6,a2,a4
8000ac30:	00082893          	slti	a7,a6,0
8000ac34:	fff88893          	addi	a7,a7,-1
8000ac38:	00f8f8b3          	and	a7,a7,a5
8000ac3c:	00085463          	bgez	a6,8000ac44 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x10c>
8000ac40:	00060813          	mv	a6,a2
8000ac44:	00a8e533          	or	a0,a7,a0
8000ac48:	00080613          	mv	a2,a6
8000ac4c:	f0b864e3          	bltu	a6,a1,8000ab54 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x1c>
8000ac50:	fff78793          	addi	a5,a5,-1
8000ac54:	02068663          	beqz	a3,8000ac80 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x148>
8000ac58:	00068593          	mv	a1,a3
8000ac5c:	00c0006f          	j	8000ac68 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x130>
8000ac60:	fff58593          	addi	a1,a1,-1
8000ac64:	00058e63          	beqz	a1,8000ac80 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x148>
8000ac68:	00161613          	slli	a2,a2,0x1
8000ac6c:	40e60833          	sub	a6,a2,a4
8000ac70:	00180813          	addi	a6,a6,1 # 7f800001 <.Lline_table_start2+0x7f7fe7c7>
8000ac74:	fe0846e3          	bltz	a6,8000ac60 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x128>
8000ac78:	00080613          	mv	a2,a6
8000ac7c:	fe5ff06f          	j	8000ac60 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E+0x128>
8000ac80:	00f677b3          	and	a5,a2,a5
8000ac84:	00a7e533          	or	a0,a5,a0
8000ac88:	00d655b3          	srl	a1,a2,a3
8000ac8c:	00c12083          	lw	ra,12(sp)
8000ac90:	00812403          	lw	s0,8(sp)
8000ac94:	01010113          	addi	sp,sp,16
8000ac98:	00008067          	ret

8000ac9c <memcpy>:
8000ac9c:	ff010113          	addi	sp,sp,-16
8000aca0:	00112623          	sw	ra,12(sp)
8000aca4:	00812423          	sw	s0,8(sp)
8000aca8:	01010413          	addi	s0,sp,16
8000acac:	00c12083          	lw	ra,12(sp)
8000acb0:	00812403          	lw	s0,8(sp)
8000acb4:	01010113          	addi	sp,sp,16
8000acb8:	00000317          	auipc	t1,0x0
8000acbc:	00830067          	jr	8(t1) # 8000acc0 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E>

8000acc0 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E>:
8000acc0:	fe010113          	addi	sp,sp,-32
8000acc4:	00112e23          	sw	ra,28(sp)
8000acc8:	00812c23          	sw	s0,24(sp)
8000accc:	02010413          	addi	s0,sp,32
8000acd0:	01000693          	li	a3,16
8000acd4:	08d66063          	bltu	a2,a3,8000ad54 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x94>
8000acd8:	40a006b3          	neg	a3,a0
8000acdc:	0036f693          	andi	a3,a3,3
8000ace0:	00d507b3          	add	a5,a0,a3
8000ace4:	02f57463          	bgeu	a0,a5,8000ad0c <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x4c>
8000ace8:	00068713          	mv	a4,a3
8000acec:	00050813          	mv	a6,a0
8000acf0:	00058893          	mv	a7,a1
8000acf4:	0008c283          	lbu	t0,0(a7)
8000acf8:	fff70713          	addi	a4,a4,-1
8000acfc:	00580023          	sb	t0,0(a6)
8000ad00:	00180813          	addi	a6,a6,1
8000ad04:	00188893          	addi	a7,a7,1
8000ad08:	fe0716e3          	bnez	a4,8000acf4 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x34>
8000ad0c:	00d585b3          	add	a1,a1,a3
8000ad10:	40d60633          	sub	a2,a2,a3
8000ad14:	ffc67713          	andi	a4,a2,-4
8000ad18:	0035f893          	andi	a7,a1,3
8000ad1c:	00e786b3          	add	a3,a5,a4
8000ad20:	06089463          	bnez	a7,8000ad88 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xc8>
8000ad24:	00d7fe63          	bgeu	a5,a3,8000ad40 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x80>
8000ad28:	00058813          	mv	a6,a1
8000ad2c:	00082883          	lw	a7,0(a6)
8000ad30:	0117a023          	sw	a7,0(a5)
8000ad34:	00478793          	addi	a5,a5,4
8000ad38:	00480813          	addi	a6,a6,4
8000ad3c:	fed7e8e3          	bltu	a5,a3,8000ad2c <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x6c>
8000ad40:	00e585b3          	add	a1,a1,a4
8000ad44:	00367613          	andi	a2,a2,3
8000ad48:	00c68733          	add	a4,a3,a2
8000ad4c:	00e6ea63          	bltu	a3,a4,8000ad60 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xa0>
8000ad50:	0280006f          	j	8000ad78 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xb8>
8000ad54:	00050693          	mv	a3,a0
8000ad58:	00c50733          	add	a4,a0,a2
8000ad5c:	00e57e63          	bgeu	a0,a4,8000ad78 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xb8>
8000ad60:	0005c703          	lbu	a4,0(a1)
8000ad64:	fff60613          	addi	a2,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffe7c5>
8000ad68:	00e68023          	sb	a4,0(a3)
8000ad6c:	00168693          	addi	a3,a3,1
8000ad70:	00158593          	addi	a1,a1,1
8000ad74:	fe0616e3          	bnez	a2,8000ad60 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xa0>
8000ad78:	01c12083          	lw	ra,28(sp)
8000ad7c:	01812403          	lw	s0,24(sp)
8000ad80:	02010113          	addi	sp,sp,32
8000ad84:	00008067          	ret
8000ad88:	00000813          	li	a6,0
8000ad8c:	00400293          	li	t0,4
8000ad90:	fe042a23          	sw	zero,-12(s0)
8000ad94:	41128333          	sub	t1,t0,a7
8000ad98:	ff440293          	addi	t0,s0,-12
8000ad9c:	00137393          	andi	t2,t1,1
8000ada0:	0112e2b3          	or	t0,t0,a7
8000ada4:	04039e63          	bnez	t2,8000ae00 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x140>
8000ada8:	00237313          	andi	t1,t1,2
8000adac:	06031463          	bnez	t1,8000ae14 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x154>
8000adb0:	ff442e83          	lw	t4,-12(s0)
8000adb4:	00389813          	slli	a6,a7,0x3
8000adb8:	00478293          	addi	t0,a5,4
8000adbc:	41158f33          	sub	t5,a1,a7
8000adc0:	06d2fc63          	bgeu	t0,a3,8000ae38 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x178>
8000adc4:	410002b3          	neg	t0,a6
8000adc8:	0182fe13          	andi	t3,t0,24
8000adcc:	004f2283          	lw	t0,4(t5)
8000add0:	004f0393          	addi	t2,t5,4
8000add4:	010edeb3          	srl	t4,t4,a6
8000add8:	00478313          	addi	t1,a5,4
8000addc:	01c29f33          	sll	t5,t0,t3
8000ade0:	01df6eb3          	or	t4,t5,t4
8000ade4:	00878f93          	addi	t6,a5,8
8000ade8:	01d7a023          	sw	t4,0(a5)
8000adec:	00030793          	mv	a5,t1
8000adf0:	00038f13          	mv	t5,t2
8000adf4:	00028e93          	mv	t4,t0
8000adf8:	fcdfeae3          	bltu	t6,a3,8000adcc <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x10c>
8000adfc:	0480006f          	j	8000ae44 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x184>
8000ae00:	0005c803          	lbu	a6,0(a1)
8000ae04:	01028023          	sb	a6,0(t0)
8000ae08:	00100813          	li	a6,1
8000ae0c:	00237313          	andi	t1,t1,2
8000ae10:	fa0300e3          	beqz	t1,8000adb0 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xf0>
8000ae14:	01058333          	add	t1,a1,a6
8000ae18:	00031303          	lh	t1,0(t1)
8000ae1c:	01028833          	add	a6,t0,a6
8000ae20:	00681023          	sh	t1,0(a6)
8000ae24:	ff442e83          	lw	t4,-12(s0)
8000ae28:	00389813          	slli	a6,a7,0x3
8000ae2c:	00478293          	addi	t0,a5,4
8000ae30:	41158f33          	sub	t5,a1,a7
8000ae34:	f8d2e8e3          	bltu	t0,a3,8000adc4 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x104>
8000ae38:	000e8293          	mv	t0,t4
8000ae3c:	000f0393          	mv	t2,t5
8000ae40:	00078313          	mv	t1,a5
8000ae44:	fe040823          	sb	zero,-16(s0)
8000ae48:	00100793          	li	a5,1
8000ae4c:	fe040723          	sb	zero,-18(s0)
8000ae50:	00f89c63          	bne	a7,a5,8000ae68 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x1a8>
8000ae54:	00000893          	li	a7,0
8000ae58:	00000793          	li	a5,0
8000ae5c:	00000e13          	li	t3,0
8000ae60:	ff040e93          	addi	t4,s0,-16
8000ae64:	01c0006f          	j	8000ae80 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x1c0>
8000ae68:	0043c883          	lbu	a7,4(t2)
8000ae6c:	0053c783          	lbu	a5,5(t2)
8000ae70:	00200e13          	li	t3,2
8000ae74:	ff140823          	sb	a7,-16(s0)
8000ae78:	00879793          	slli	a5,a5,0x8
8000ae7c:	fee40e93          	addi	t4,s0,-18
8000ae80:	0015ff13          	andi	t5,a1,1
8000ae84:	000f1663          	bnez	t5,8000ae90 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x1d0>
8000ae88:	00000393          	li	t2,0
8000ae8c:	0200006f          	j	8000aeac <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0x1ec>
8000ae90:	00438393          	addi	t2,t2,4
8000ae94:	01c383b3          	add	t2,t2,t3
8000ae98:	0003c883          	lbu	a7,0(t2)
8000ae9c:	011e8023          	sb	a7,0(t4)
8000aea0:	fee44383          	lbu	t2,-18(s0)
8000aea4:	ff044883          	lbu	a7,-16(s0)
8000aea8:	01039393          	slli	t2,t2,0x10
8000aeac:	0113e8b3          	or	a7,t2,a7
8000aeb0:	0102d2b3          	srl	t0,t0,a6
8000aeb4:	41000833          	neg	a6,a6
8000aeb8:	0117e7b3          	or	a5,a5,a7
8000aebc:	01887813          	andi	a6,a6,24
8000aec0:	010797b3          	sll	a5,a5,a6
8000aec4:	0057e7b3          	or	a5,a5,t0
8000aec8:	00f32023          	sw	a5,0(t1)
8000aecc:	00e585b3          	add	a1,a1,a4
8000aed0:	00367613          	andi	a2,a2,3
8000aed4:	00c68733          	add	a4,a3,a2
8000aed8:	e8e6e4e3          	bltu	a3,a4,8000ad60 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xa0>
8000aedc:	e9dff06f          	j	8000ad78 <_ZN17compiler_builtins3mem6memcpy17h86d69376d0560fe8E+0xb8>

8000aee0 <__udivdi3>:
8000aee0:	fe010113          	addi	sp,sp,-32
8000aee4:	00112e23          	sw	ra,28(sp)
8000aee8:	00812c23          	sw	s0,24(sp)
8000aeec:	02010413          	addi	s0,sp,32
8000aef0:	00068713          	mv	a4,a3
8000aef4:	00060693          	mv	a3,a2
8000aef8:	00058613          	mv	a2,a1
8000aefc:	00050593          	mv	a1,a0
8000af00:	fe840513          	addi	a0,s0,-24
8000af04:	fffff097          	auipc	ra,0xfffff
8000af08:	6fc080e7          	jalr	1788(ra) # 8000a600 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7d89ace76c07838eE>
8000af0c:	fe842503          	lw	a0,-24(s0)
8000af10:	fec42583          	lw	a1,-20(s0)
8000af14:	01c12083          	lw	ra,28(sp)
8000af18:	01812403          	lw	s0,24(sp)
8000af1c:	02010113          	addi	sp,sp,32
8000af20:	00008067          	ret

8000af24 <__addsf3>:
8000af24:	ff010113          	addi	sp,sp,-16
8000af28:	00112623          	sw	ra,12(sp)
8000af2c:	00812423          	sw	s0,8(sp)
8000af30:	01010413          	addi	s0,sp,16
8000af34:	00c12083          	lw	ra,12(sp)
8000af38:	00812403          	lw	s0,8(sp)
8000af3c:	01010113          	addi	sp,sp,16
8000af40:	00000317          	auipc	t1,0x0
8000af44:	00830067          	jr	8(t1) # 8000af48 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E>

8000af48 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E>:
8000af48:	ff010113          	addi	sp,sp,-16
8000af4c:	00112623          	sw	ra,12(sp)
8000af50:	00812423          	sw	s0,8(sp)
8000af54:	01010413          	addi	s0,sp,16
8000af58:	800006b7          	lui	a3,0x80000
8000af5c:	80800637          	lui	a2,0x80800
8000af60:	fff68713          	addi	a4,a3,-1 # 7fffffff <.Lline_table_start2+0x7fffe7c5>
8000af64:	00e576b3          	and	a3,a0,a4
8000af68:	00c68833          	add	a6,a3,a2
8000af6c:	00160793          	addi	a5,a2,1 # 80800001 <KALLOC_BUFFER+0x7f0001>
8000af70:	00e5f733          	and	a4,a1,a4
8000af74:	04f86263          	bltu	a6,a5,8000afb8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x70>
8000af78:	00c70633          	add	a2,a4,a2
8000af7c:	02f66e63          	bltu	a2,a5,8000afb8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x70>
8000af80:	00800637          	lui	a2,0x800
8000af84:	fff60613          	addi	a2,a2,-1 # 7fffff <.Lline_table_start2+0x7fe7c5>
8000af88:	04e6ea63          	bltu	a3,a4,8000afdc <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x94>
8000af8c:	00058893          	mv	a7,a1
8000af90:	00050713          	mv	a4,a0
8000af94:	00151693          	slli	a3,a0,0x1
8000af98:	00159793          	slli	a5,a1,0x1
8000af9c:	0186d693          	srli	a3,a3,0x18
8000afa0:	0187d813          	srli	a6,a5,0x18
8000afa4:	00c577b3          	and	a5,a0,a2
8000afa8:	04068a63          	beqz	a3,8000affc <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0xb4>
8000afac:	00c8f8b3          	and	a7,a7,a2
8000afb0:	1c081663          	bnez	a6,8000b17c <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x234>
8000afb4:	12c0006f          	j	8000b0e0 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x198>
8000afb8:	7f800637          	lui	a2,0x7f800
8000afbc:	0cd67463          	bgeu	a2,a3,8000b084 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x13c>
8000afc0:	00400637          	lui	a2,0x400
8000afc4:	00c6e633          	or	a2,a3,a2
8000afc8:	00060513          	mv	a0,a2
8000afcc:	00c12083          	lw	ra,12(sp)
8000afd0:	00812403          	lw	s0,8(sp)
8000afd4:	01010113          	addi	sp,sp,16
8000afd8:	00008067          	ret
8000afdc:	00050893          	mv	a7,a0
8000afe0:	00058713          	mv	a4,a1
8000afe4:	00159693          	slli	a3,a1,0x1
8000afe8:	00151793          	slli	a5,a0,0x1
8000afec:	0186d693          	srli	a3,a3,0x18
8000aff0:	0187d813          	srli	a6,a5,0x18
8000aff4:	00c5f7b3          	and	a5,a1,a2
8000aff8:	fa069ae3          	bnez	a3,8000afac <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x64>
8000affc:	0c078463          	beqz	a5,8000b0c4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x17c>
8000b000:	0017d693          	srli	a3,a5,0x1
8000b004:	555552b7          	lui	t0,0x55555
8000b008:	00d7e6b3          	or	a3,a5,a3
8000b00c:	55528293          	addi	t0,t0,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
8000b010:	0026d313          	srli	t1,a3,0x2
8000b014:	0066e6b3          	or	a3,a3,t1
8000b018:	0046d313          	srli	t1,a3,0x4
8000b01c:	0066e6b3          	or	a3,a3,t1
8000b020:	0086d313          	srli	t1,a3,0x8
8000b024:	0066e6b3          	or	a3,a3,t1
8000b028:	0106d313          	srli	t1,a3,0x10
8000b02c:	0066e6b3          	or	a3,a3,t1
8000b030:	fff6c693          	not	a3,a3
8000b034:	0016d313          	srli	t1,a3,0x1
8000b038:	005372b3          	and	t0,t1,t0
8000b03c:	33333337          	lui	t1,0x33333
8000b040:	33330313          	addi	t1,t1,819 # 33333333 <.Lline_table_start2+0x33331af9>
8000b044:	405686b3          	sub	a3,a3,t0
8000b048:	0066f2b3          	and	t0,a3,t1
8000b04c:	0026d693          	srli	a3,a3,0x2
8000b050:	0066f6b3          	and	a3,a3,t1
8000b054:	0f0f1337          	lui	t1,0xf0f1
8000b058:	00d286b3          	add	a3,t0,a3
8000b05c:	0046d293          	srli	t0,a3,0x4
8000b060:	005686b3          	add	a3,a3,t0
8000b064:	f0f30293          	addi	t0,t1,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
8000b068:	0056f6b3          	and	a3,a3,t0
8000b06c:	00869293          	slli	t0,a3,0x8
8000b070:	005686b3          	add	a3,a3,t0
8000b074:	01069293          	slli	t0,a3,0x10
8000b078:	005686b3          	add	a3,a3,t0
8000b07c:	0186d693          	srli	a3,a3,0x18
8000b080:	0480006f          	j	8000b0c8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x180>
8000b084:	00e67e63          	bgeu	a2,a4,8000b0a0 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x158>
8000b088:	00400637          	lui	a2,0x400
8000b08c:	00c76533          	or	a0,a4,a2
8000b090:	00c12083          	lw	ra,12(sp)
8000b094:	00812403          	lw	s0,8(sp)
8000b098:	01010113          	addi	sp,sp,16
8000b09c:	00008067          	ret
8000b0a0:	28c69e63          	bne	a3,a2,8000b33c <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x3f4>
8000b0a4:	00a5c5b3          	xor	a1,a1,a0
8000b0a8:	80000637          	lui	a2,0x80000
8000b0ac:	00c59463          	bne	a1,a2,8000b0b4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x16c>
8000b0b0:	7fc00537          	lui	a0,0x7fc00
8000b0b4:	00c12083          	lw	ra,12(sp)
8000b0b8:	00812403          	lw	s0,8(sp)
8000b0bc:	01010113          	addi	sp,sp,16
8000b0c0:	00008067          	ret
8000b0c4:	02000693          	li	a3,32
8000b0c8:	01868293          	addi	t0,a3,24
8000b0cc:	00900313          	li	t1,9
8000b0d0:	40d306b3          	sub	a3,t1,a3
8000b0d4:	005797b3          	sll	a5,a5,t0
8000b0d8:	00c8f8b3          	and	a7,a7,a2
8000b0dc:	0a081063          	bnez	a6,8000b17c <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x234>
8000b0e0:	08088463          	beqz	a7,8000b168 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x220>
8000b0e4:	0018d813          	srli	a6,a7,0x1
8000b0e8:	555552b7          	lui	t0,0x55555
8000b0ec:	0108e833          	or	a6,a7,a6
8000b0f0:	55528293          	addi	t0,t0,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
8000b0f4:	00285313          	srli	t1,a6,0x2
8000b0f8:	00686833          	or	a6,a6,t1
8000b0fc:	00485313          	srli	t1,a6,0x4
8000b100:	00686833          	or	a6,a6,t1
8000b104:	00885313          	srli	t1,a6,0x8
8000b108:	00686833          	or	a6,a6,t1
8000b10c:	01085313          	srli	t1,a6,0x10
8000b110:	00686833          	or	a6,a6,t1
8000b114:	fff84813          	not	a6,a6
8000b118:	00185313          	srli	t1,a6,0x1
8000b11c:	005372b3          	and	t0,t1,t0
8000b120:	33333337          	lui	t1,0x33333
8000b124:	33330313          	addi	t1,t1,819 # 33333333 <.Lline_table_start2+0x33331af9>
8000b128:	40580833          	sub	a6,a6,t0
8000b12c:	006872b3          	and	t0,a6,t1
8000b130:	00285813          	srli	a6,a6,0x2
8000b134:	00687833          	and	a6,a6,t1
8000b138:	0f0f1337          	lui	t1,0xf0f1
8000b13c:	01028833          	add	a6,t0,a6
8000b140:	00485293          	srli	t0,a6,0x4
8000b144:	00580833          	add	a6,a6,t0
8000b148:	f0f30293          	addi	t0,t1,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
8000b14c:	00587833          	and	a6,a6,t0
8000b150:	00881293          	slli	t0,a6,0x8
8000b154:	00580833          	add	a6,a6,t0
8000b158:	01081293          	slli	t0,a6,0x10
8000b15c:	00580833          	add	a6,a6,t0
8000b160:	01885813          	srli	a6,a6,0x18
8000b164:	0080006f          	j	8000b16c <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x224>
8000b168:	02000813          	li	a6,32
8000b16c:	01880293          	addi	t0,a6,24
8000b170:	00900313          	li	t1,9
8000b174:	41030833          	sub	a6,t1,a6
8000b178:	005898b3          	sll	a7,a7,t0
8000b17c:	800002b7          	lui	t0,0x80000
8000b180:	00a5c5b3          	xor	a1,a1,a0
8000b184:	00379313          	slli	t1,a5,0x3
8000b188:	040003b7          	lui	t2,0x4000
8000b18c:	00389893          	slli	a7,a7,0x3
8000b190:	0078e7b3          	or	a5,a7,t2
8000b194:	03068263          	beq	a3,a6,8000b1b8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x270>
8000b198:	41068533          	sub	a0,a3,a6
8000b19c:	02000813          	li	a6,32
8000b1a0:	05057263          	bgeu	a0,a6,8000b1e4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x29c>
8000b1a4:	40a00833          	neg	a6,a0
8000b1a8:	01079833          	sll	a6,a5,a6
8000b1ac:	01003833          	snez	a6,a6
8000b1b0:	00a7d533          	srl	a0,a5,a0
8000b1b4:	010567b3          	or	a5,a0,a6
8000b1b8:	00577533          	and	a0,a4,t0
8000b1bc:	00736733          	or	a4,t1,t2
8000b1c0:	0205ca63          	bltz	a1,8000b1f4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x2ac>
8000b1c4:	00e785b3          	add	a1,a5,a4
8000b1c8:	00459713          	slli	a4,a1,0x4
8000b1cc:	0c075463          	bgez	a4,8000b294 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x34c>
8000b1d0:	0017f793          	andi	a5,a5,1
8000b1d4:	0015d593          	srli	a1,a1,0x1
8000b1d8:	00f5e5b3          	or	a1,a1,a5
8000b1dc:	00168693          	addi	a3,a3,1
8000b1e0:	0b40006f          	j	8000b294 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x34c>
8000b1e4:	00100793          	li	a5,1
8000b1e8:	00577533          	and	a0,a4,t0
8000b1ec:	00736733          	or	a4,t1,t2
8000b1f0:	fc05dae3          	bgez	a1,8000b1c4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x27c>
8000b1f4:	40f705b3          	sub	a1,a4,a5
8000b1f8:	12058863          	beqz	a1,8000b328 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x3e0>
8000b1fc:	01a5d713          	srli	a4,a1,0x1a
8000b200:	08071a63          	bnez	a4,8000b294 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x34c>
8000b204:	0015d713          	srli	a4,a1,0x1
8000b208:	555557b7          	lui	a5,0x55555
8000b20c:	00e5e733          	or	a4,a1,a4
8000b210:	55578793          	addi	a5,a5,1365 # 55555555 <.Lline_table_start2+0x55553d1b>
8000b214:	00275813          	srli	a6,a4,0x2
8000b218:	01076733          	or	a4,a4,a6
8000b21c:	00475813          	srli	a6,a4,0x4
8000b220:	01076733          	or	a4,a4,a6
8000b224:	00875813          	srli	a6,a4,0x8
8000b228:	01076733          	or	a4,a4,a6
8000b22c:	01075813          	srli	a6,a4,0x10
8000b230:	01076733          	or	a4,a4,a6
8000b234:	fff74713          	not	a4,a4
8000b238:	00175813          	srli	a6,a4,0x1
8000b23c:	00f877b3          	and	a5,a6,a5
8000b240:	33333837          	lui	a6,0x33333
8000b244:	33380813          	addi	a6,a6,819 # 33333333 <.Lline_table_start2+0x33331af9>
8000b248:	40f70733          	sub	a4,a4,a5
8000b24c:	010777b3          	and	a5,a4,a6
8000b250:	00275713          	srli	a4,a4,0x2
8000b254:	01077733          	and	a4,a4,a6
8000b258:	0f0f1837          	lui	a6,0xf0f1
8000b25c:	f0f80813          	addi	a6,a6,-241 # f0f0f0f <.Lline_table_start2+0xf0ef6d5>
8000b260:	00e78733          	add	a4,a5,a4
8000b264:	00475793          	srli	a5,a4,0x4
8000b268:	00f70733          	add	a4,a4,a5
8000b26c:	01077733          	and	a4,a4,a6
8000b270:	00871793          	slli	a5,a4,0x8
8000b274:	00f70733          	add	a4,a4,a5
8000b278:	01071793          	slli	a5,a4,0x10
8000b27c:	00f70733          	add	a4,a4,a5
8000b280:	01875713          	srli	a4,a4,0x18
8000b284:	ffb70713          	addi	a4,a4,-5
8000b288:	00e595b3          	sll	a1,a1,a4
8000b28c:	40e686b3          	sub	a3,a3,a4
8000b290:	0240006f          	j	8000b2b4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x36c>
8000b294:	0fe00713          	li	a4,254
8000b298:	00d75e63          	bge	a4,a3,8000b2b4 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x36c>
8000b29c:	7f800637          	lui	a2,0x7f800
8000b2a0:	00c56533          	or	a0,a0,a2
8000b2a4:	00c12083          	lw	ra,12(sp)
8000b2a8:	00812403          	lw	s0,8(sp)
8000b2ac:	01010113          	addi	sp,sp,16
8000b2b0:	00008067          	ret
8000b2b4:	02d04263          	bgtz	a3,8000b2d8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x390>
8000b2b8:	00100713          	li	a4,1
8000b2bc:	40d70733          	sub	a4,a4,a3
8000b2c0:	fff68693          	addi	a3,a3,-1
8000b2c4:	00d596b3          	sll	a3,a1,a3
8000b2c8:	00d036b3          	snez	a3,a3
8000b2cc:	00e5d5b3          	srl	a1,a1,a4
8000b2d0:	00d5e5b3          	or	a1,a1,a3
8000b2d4:	00000693          	li	a3,0
8000b2d8:	0075f713          	andi	a4,a1,7
8000b2dc:	0035d593          	srli	a1,a1,0x3
8000b2e0:	01769693          	slli	a3,a3,0x17
8000b2e4:	00c5f633          	and	a2,a1,a2
8000b2e8:	00a6e6b3          	or	a3,a3,a0
8000b2ec:	00400513          	li	a0,4
8000b2f0:	00d66633          	or	a2,a2,a3
8000b2f4:	00e57c63          	bgeu	a0,a4,8000b30c <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x3c4>
8000b2f8:	00160513          	addi	a0,a2,1 # 7f800001 <.Lline_table_start2+0x7f7fe7c7>
8000b2fc:	00c12083          	lw	ra,12(sp)
8000b300:	00812403          	lw	s0,8(sp)
8000b304:	01010113          	addi	sp,sp,16
8000b308:	00008067          	ret
8000b30c:	caa71ee3          	bne	a4,a0,8000afc8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x80>
8000b310:	0015f593          	andi	a1,a1,1
8000b314:	00b60533          	add	a0,a2,a1
8000b318:	00c12083          	lw	ra,12(sp)
8000b31c:	00812403          	lw	s0,8(sp)
8000b320:	01010113          	addi	sp,sp,16
8000b324:	00008067          	ret
8000b328:	00000513          	li	a0,0
8000b32c:	00c12083          	lw	ra,12(sp)
8000b330:	00812403          	lw	s0,8(sp)
8000b334:	01010113          	addi	sp,sp,16
8000b338:	00008067          	ret
8000b33c:	00c71c63          	bne	a4,a2,8000b354 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x40c>
8000b340:	00058513          	mv	a0,a1
8000b344:	00c12083          	lw	ra,12(sp)
8000b348:	00812403          	lw	s0,8(sp)
8000b34c:	01010113          	addi	sp,sp,16
8000b350:	00008067          	ret
8000b354:	00068863          	beqz	a3,8000b364 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x41c>
8000b358:	00050613          	mv	a2,a0
8000b35c:	c20712e3          	bnez	a4,8000af80 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x38>
8000b360:	c69ff06f          	j	8000afc8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x80>
8000b364:	00058613          	mv	a2,a1
8000b368:	c60710e3          	bnez	a4,8000afc8 <_ZN17compiler_builtins5float3add8__addsf317he098218e85f56542E+0x80>
8000b36c:	00a5f533          	and	a0,a1,a0
8000b370:	00c12083          	lw	ra,12(sp)
8000b374:	00812403          	lw	s0,8(sp)
8000b378:	01010113          	addi	sp,sp,16
8000b37c:	00008067          	ret

8000b380 <__divsi3>:
8000b380:	ff010113          	addi	sp,sp,-16
8000b384:	00112623          	sw	ra,12(sp)
8000b388:	00812423          	sw	s0,8(sp)
8000b38c:	00912223          	sw	s1,4(sp)
8000b390:	01212023          	sw	s2,0(sp)
8000b394:	01010413          	addi	s0,sp,16
8000b398:	00058493          	mv	s1,a1
8000b39c:	00050913          	mv	s2,a0
8000b3a0:	41f55513          	srai	a0,a0,0x1f
8000b3a4:	41f5d593          	srai	a1,a1,0x1f
8000b3a8:	00a94633          	xor	a2,s2,a0
8000b3ac:	40a60533          	sub	a0,a2,a0
8000b3b0:	00b4c633          	xor	a2,s1,a1
8000b3b4:	40b605b3          	sub	a1,a2,a1
8000b3b8:	fffff097          	auipc	ra,0xfffff
8000b3bc:	780080e7          	jalr	1920(ra) # 8000ab38 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17hccb74f5a3f8e30c5E>
8000b3c0:	0124c5b3          	xor	a1,s1,s2
8000b3c4:	0005d463          	bgez	a1,8000b3cc <__divsi3+0x4c>
8000b3c8:	40a00533          	neg	a0,a0
8000b3cc:	00c12083          	lw	ra,12(sp)
8000b3d0:	00812403          	lw	s0,8(sp)
8000b3d4:	00412483          	lw	s1,4(sp)
8000b3d8:	00012903          	lw	s2,0(sp)
8000b3dc:	01010113          	addi	sp,sp,16
8000b3e0:	00008067          	ret

8000b3e4 <memset>:
8000b3e4:	fe010113          	addi	sp,sp,-32
8000b3e8:	00112e23          	sw	ra,28(sp)
8000b3ec:	00812c23          	sw	s0,24(sp)
8000b3f0:	00912a23          	sw	s1,20(sp)
8000b3f4:	01212823          	sw	s2,16(sp)
8000b3f8:	01312623          	sw	s3,12(sp)
8000b3fc:	01412423          	sw	s4,8(sp)
8000b400:	02010413          	addi	s0,sp,32
8000b404:	00058493          	mv	s1,a1
8000b408:	01000593          	li	a1,16
8000b40c:	00050913          	mv	s2,a0
8000b410:	08b66e63          	bltu	a2,a1,8000b4ac <memset+0xc8>
8000b414:	41200533          	neg	a0,s2
8000b418:	00357513          	andi	a0,a0,3
8000b41c:	00a909b3          	add	s3,s2,a0
8000b420:	01397e63          	bgeu	s2,s3,8000b43c <memset+0x58>
8000b424:	00050593          	mv	a1,a0
8000b428:	00090693          	mv	a3,s2
8000b42c:	00968023          	sb	s1,0(a3)
8000b430:	fff58593          	addi	a1,a1,-1
8000b434:	00168693          	addi	a3,a3,1
8000b438:	fe059ae3          	bnez	a1,8000b42c <memset+0x48>
8000b43c:	40a60a33          	sub	s4,a2,a0
8000b440:	0ff4f513          	zext.b	a0,s1
8000b444:	010105b7          	lui	a1,0x1010
8000b448:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start2+0x100e8c7>
8000b44c:	fffff097          	auipc	ra,0xfffff
8000b450:	d7c080e7          	jalr	-644(ra) # 8000a1c8 <__mulsi3>
8000b454:	ffca7593          	andi	a1,s4,-4
8000b458:	00b985b3          	add	a1,s3,a1
8000b45c:	00b9f863          	bgeu	s3,a1,8000b46c <memset+0x88>
8000b460:	00a9a023          	sw	a0,0(s3)
8000b464:	00498993          	addi	s3,s3,4
8000b468:	feb9ece3          	bltu	s3,a1,8000b460 <memset+0x7c>
8000b46c:	003a7613          	andi	a2,s4,3
8000b470:	00c58533          	add	a0,a1,a2
8000b474:	00a5fa63          	bgeu	a1,a0,8000b488 <memset+0xa4>
8000b478:	00958023          	sb	s1,0(a1)
8000b47c:	fff60613          	addi	a2,a2,-1
8000b480:	00158593          	addi	a1,a1,1
8000b484:	fe061ae3          	bnez	a2,8000b478 <memset+0x94>
8000b488:	00090513          	mv	a0,s2
8000b48c:	01c12083          	lw	ra,28(sp)
8000b490:	01812403          	lw	s0,24(sp)
8000b494:	01412483          	lw	s1,20(sp)
8000b498:	01012903          	lw	s2,16(sp)
8000b49c:	00c12983          	lw	s3,12(sp)
8000b4a0:	00812a03          	lw	s4,8(sp)
8000b4a4:	02010113          	addi	sp,sp,32
8000b4a8:	00008067          	ret
8000b4ac:	00090593          	mv	a1,s2
8000b4b0:	00c90533          	add	a0,s2,a2
8000b4b4:	fca962e3          	bltu	s2,a0,8000b478 <memset+0x94>
8000b4b8:	fd1ff06f          	j	8000b488 <memset+0xa4>
	...

Disassembly of section .rodata:

8000c000 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.1>:
8000c000:	7245                	.insn	2, 0x7245
8000c002:	6f72                	.insn	2, 0x6f72
8000c004:	0072                	.insn	2, 0x0072
	...

8000c008 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.2>:
8000c008:	0000                	.insn	2, 0x
8000c00a:	0000                	.insn	2, 0x
8000c00c:	0004                	.insn	2, 0x0004
8000c00e:	0000                	.insn	2, 0x
8000c010:	0004                	.insn	2, 0x0004
8000c012:	0000                	.insn	2, 0x
8000c014:	01ec                	.insn	2, 0x01ec
8000c016:	8000                	.insn	2, 0x8000

8000c018 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.3>:
8000c018:	0000                	.insn	2, 0x
8000c01a:	0000                	.insn	2, 0x
8000c01c:	0004                	.insn	2, 0x0004
8000c01e:	0000                	.insn	2, 0x
8000c020:	0004                	.insn	2, 0x0004
8000c022:	0000                	.insn	2, 0x
8000c024:	01d4                	.insn	2, 0x01d4
8000c026:	8000                	.insn	2, 0x8000

8000c028 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.4>:
8000c028:	614c                	.insn	2, 0x614c
8000c02a:	6f79                	.insn	2, 0x6f79
8000c02c:	7475                	.insn	2, 0x7475
8000c02e:	2020                	.insn	2, 0x2020
8000c030:	2020                	.insn	2, 0x2020
8000c032:	657a6973          	.insn	4, 0x657a6973

8000c036 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.6>:
8000c036:	6c61                	.insn	2, 0x6c61
8000c038:	6769                	.insn	2, 0x6769
8000c03a:	                	.insn	2, 0x496e

8000c03b <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.7>:
8000c03b:	6e49                	.insn	2, 0x6e49
8000c03d:	75727473          	.insn	4, 0x75727473
8000c041:	6f697463          	bgeu	s2,s6,8000c729 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.21+0x15>
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
8000c083:	06050403          	lb	s0,96(a0) # 7fc00060 <.Lline_table_start2+0x7fbfe826>
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

8000c0a0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.9>:
8000c0a0:	6c49                	.insn	2, 0x6c49
8000c0a2:	656c                	.insn	2, 0x656c
8000c0a4:	496c6167          	.insn	4, 0x496c6167
8000c0a8:	736e                	.insn	2, 0x736e
8000c0aa:	7274                	.insn	2, 0x7274
8000c0ac:	6375                	.insn	2, 0x6375
8000c0ae:	6974                	.insn	2, 0x6974
8000c0b0:	          	jal	t3,800327d4 <KALLOC_BUFFER+0x227d4>

8000c0b2 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.10>:
8000c0b2:	7242                	.insn	2, 0x7242
8000c0b4:	6165                	.insn	2, 0x6165
8000c0b6:	696f706b          	.insn	4, 0x696f706b
8000c0ba:	746e                	.insn	2, 0x746e

8000c0bc <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.11>:
8000c0bc:	6f4c                	.insn	2, 0x6f4c
8000c0be:	6461                	.insn	2, 0x6461
8000c0c0:	694d                	.insn	2, 0x694d
8000c0c2:	696c6173          	.insn	4, 0x696c6173
8000c0c6:	64656e67          	.insn	4, 0x64656e67

8000c0ca <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.12>:
8000c0ca:	6f4c                	.insn	2, 0x6f4c
8000c0cc:	6461                	.insn	2, 0x6461
8000c0ce:	6146                	.insn	2, 0x6146
8000c0d0:	6c75                	.insn	2, 0x6c75
8000c0d2:	                	.insn	2, 0x5374

8000c0d3 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.13>:
8000c0d3:	726f7453          	.insn	4, 0x726f7453
8000c0d7:	4d65                	.insn	2, 0x4d65
8000c0d9:	7369                	.insn	2, 0x7369
8000c0db:	6c61                	.insn	2, 0x6c61
8000c0dd:	6769                	.insn	2, 0x6769
8000c0df:	656e                	.insn	2, 0x656e
8000c0e1:	                	.insn	2, 0x5364

8000c0e2 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.14>:
8000c0e2:	726f7453          	.insn	4, 0x726f7453
8000c0e6:	4665                	.insn	2, 0x4665
8000c0e8:	7561                	.insn	2, 0x7561
8000c0ea:	746c                	.insn	2, 0x746c

8000c0ec <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.15>:
8000c0ec:	7355                	.insn	2, 0x7355
8000c0ee:	7265                	.insn	2, 0x7265
8000c0f0:	6e45                	.insn	2, 0x6e45
8000c0f2:	4376                	.insn	2, 0x4376
8000c0f4:	6c61                	.insn	2, 0x6c61
8000c0f6:	                	.insn	2, 0x536c

8000c0f7 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.16>:
8000c0f7:	65707553          	.insn	4, 0x65707553
8000c0fb:	7672                	.insn	2, 0x7672
8000c0fd:	7369                	.insn	2, 0x7369
8000c0ff:	6e45726f          	jal	tp,800637e3 <KALLOC_BUFFER+0x537e3>
8000c103:	4376                	.insn	2, 0x4376
8000c105:	6c61                	.insn	2, 0x6c61
8000c107:	                	.insn	2, 0x4d6c

8000c108 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.17>:
8000c108:	614d                	.insn	2, 0x614d
8000c10a:	6e696863          	bltu	s2,t1,8000c7fa <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417hec9340f5cd6dd05bE+0x12>
8000c10e:	4565                	.insn	2, 0x4565
8000c110:	766e                	.insn	2, 0x766e
8000c112:	6c6c6143          	.insn	4, 0x6c6c6143

8000c116 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.18>:
8000c116:	6e49                	.insn	2, 0x6e49
8000c118:	75727473          	.insn	4, 0x75727473
8000c11c:	6f697463          	bgeu	s2,s6,8000c804 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h0f360285d75974efE+0x8>
8000c120:	506e                	.insn	2, 0x506e
8000c122:	6761                	.insn	2, 0x6761
8000c124:	4665                	.insn	2, 0x4665
8000c126:	7561                	.insn	2, 0x7561
8000c128:	746c                	.insn	2, 0x746c

8000c12a <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.19>:
8000c12a:	6f4c                	.insn	2, 0x6f4c
8000c12c:	6461                	.insn	2, 0x6461
8000c12e:	6150                	.insn	2, 0x6150
8000c130:	61466567          	.insn	4, 0x61466567
8000c134:	6c75                	.insn	2, 0x6c75
8000c136:	                	.insn	2, 0x5374

8000c137 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.20>:
8000c137:	726f7453          	.insn	4, 0x726f7453
8000c13b:	5065                	.insn	2, 0x5065
8000c13d:	6761                	.insn	2, 0x6761
8000c13f:	4665                	.insn	2, 0x4665
8000c141:	7561                	.insn	2, 0x7561
8000c143:	746c                	.insn	2, 0x746c

8000c145 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.21>:
8000c145:	6e55                	.insn	2, 0x6e55
8000c147:	776f6e6b          	.insn	4, 0x776f6e6b
8000c14b:	                	.insn	2, 0x006e

8000c14c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.22>:
	...
8000c154:	0001                	.insn	2, 0x0001
8000c156:	0000                	.insn	2, 0x
8000c158:	03dc                	.insn	2, 0x03dc
8000c15a:	8000                	.insn	2, 0x8000
8000c15c:	0218                	.insn	2, 0x0218
8000c15e:	8000                	.insn	2, 0x8000
8000c160:	02f8                	.insn	2, 0x02f8
8000c162:	8000                	.insn	2, 0x8000

8000c164 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.23>:
	...
8000c16c:	0001                	.insn	2, 0x0001
8000c16e:	0000                	.insn	2, 0x
8000c170:	0318                	.insn	2, 0x0318
8000c172:	8000                	.insn	2, 0x8000

8000c174 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.24>:
8000c174:	6c6c6163          	bltu	s8,t1,8000c836 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617h1efb1f32dd7ad4c6E+0x12>
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

8000c19f <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.25>:
8000c19f:	2f637273          	.insn	4, 0x2f637273
8000c1a3:	7270                	.insn	2, 0x7270
8000c1a5:	6e69                	.insn	2, 0x6e69
8000c1a7:	6574                	.insn	2, 0x6574
8000c1a9:	2e72                	.insn	2, 0x2e72
8000c1ab:	7372                	.insn	2, 0x7372
8000c1ad:	0000                	.insn	2, 0x
	...

8000c1b0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.26>:
8000c1b0:	c19f 8000 000e      	.insn	6, 0x000e8000c19f
8000c1b6:	0000                	.insn	2, 0x
8000c1b8:	00000017          	auipc	zero,0x0
8000c1bc:	001c                	.insn	2, 0x001c
	...

8000c1c0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.27>:
8000c1c0:	636d                	.insn	2, 0x636d
8000c1c2:	7561                	.insn	2, 0x7561
8000c1c4:	203a6573          	.insn	4, 0x203a6573
8000c1c8:	7865                	.insn	2, 0x7865
8000c1ca:	74706563          	bltu	zero,t2,8000c914 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.31+0x18>
8000c1ce:	6f69                	.insn	2, 0x6f69
8000c1d0:	206e                	.insn	2, 0x206e
8000c1d2:	7461                	.insn	2, 0x7461
8000c1d4:	                	.insn	2, 0x2020

8000c1d5 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.28>:
8000c1d5:	                	.insn	2, 0x0a20

8000c1d6 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.29>:
8000c1d6:	000a                	.insn	2, 0x000a

8000c1d8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.30>:
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

8000c1f0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.31>:
8000c1f0:	6c6c616b          	.insn	4, 0x6c6c616b
8000c1f4:	6220636f          	jal	t1,80012816 <KALLOC_BUFFER+0x2816>
8000c1f8:	6675                	.insn	2, 0x6675
8000c1fa:	6566                	.insn	2, 0x6566
8000c1fc:	2072                	.insn	2, 0x2072
8000c1fe:	6162                	.insn	2, 0x6162
8000c200:	203a6573          	.insn	4, 0x203a6573

8000c204 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.32>:
8000c204:	c1f0                	.insn	2, 0xc1f0
8000c206:	8000                	.insn	2, 0x8000
8000c208:	0014                	.insn	2, 0x0014
8000c20a:	0000                	.insn	2, 0x
8000c20c:	c1d6                	.insn	2, 0xc1d6
8000c20e:	8000                	.insn	2, 0x8000
8000c210:	0001                	.insn	2, 0x0001
	...

8000c214 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.33>:
8000c214:	6170                	.insn	2, 0x6170
8000c216:	6c6c                	.insn	2, 0x6c6c
8000c218:	203a636f          	jal	t1,800b2c1a <KALLOC_BUFFER+0xa2c1a>
8000c21c:	6966                	.insn	2, 0x6966
8000c21e:	7372                	.insn	2, 0x7372
8000c220:	2074                	.insn	2, 0x2074

8000c222 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.34>:
8000c222:	6c20                	.insn	2, 0x6c20
8000c224:	7361                	.insn	2, 0x7361
8000c226:	2074                	.insn	2, 0x2074

8000c228 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.35>:
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

8000c240 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.36>:
8000c240:	0002                	.insn	2, 0x0002
8000c242:	0000                	.insn	2, 0x
8000c244:	0000                	.insn	2, 0x
8000c246:	0000                	.insn	2, 0x
8000c248:	0002                	.insn	2, 0x0002
	...
8000c252:	0000                	.insn	2, 0x
8000c254:	0020                	.insn	2, 0x0020
8000c256:	e080                	.insn	2, 0xe080
8000c258:	0002                	.insn	2, 0x0002
8000c25a:	0000                	.insn	2, 0x
8000c25c:	0000                	.insn	2, 0x
8000c25e:	0000                	.insn	2, 0x
8000c260:	0002                	.insn	2, 0x0002
8000c262:	0000                	.insn	2, 0x
8000c264:	0000                	.insn	2, 0x
8000c266:	0000                	.insn	2, 0x
8000c268:	0001                	.insn	2, 0x0001
8000c26a:	0000                	.insn	2, 0x
8000c26c:	0020                	.insn	2, 0x0020
8000c26e:	e080                	.insn	2, 0xe080

8000c270 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.37>:
8000c270:	2f637273          	.insn	4, 0x2f637273
8000c274:	6f70                	.insn	2, 0x6f70
8000c276:	6e69                	.insn	2, 0x6e69
8000c278:	6574                	.insn	2, 0x6574
8000c27a:	2e72                	.insn	2, 0x2e72
8000c27c:	7372                	.insn	2, 0x7372
	...

8000c280 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.38>:
8000c280:	c270                	.insn	2, 0xc270
8000c282:	8000                	.insn	2, 0x8000
8000c284:	000e                	.insn	2, 0x000e
8000c286:	0000                	.insn	2, 0x
8000c288:	0000002f          	.insn	4, 0x002f
8000c28c:	0030                	.insn	2, 0x0030
	...

8000c290 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.39>:
8000c290:	6170                	.insn	2, 0x6170
8000c292:	6c6c                	.insn	2, 0x6c6c
8000c294:	6220636f          	jal	t1,800128b6 <KALLOC_BUFFER+0x28b6>
8000c298:	7361                	.insn	2, 0x7361
8000c29a:	3a65                	.insn	2, 0x3a65
8000c29c:	3020                	.insn	2, 0x3020
8000c29e:	0078                	.insn	2, 0x0078

8000c2a0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.40>:
8000c2a0:	c290                	.insn	2, 0xc290
8000c2a2:	8000                	.insn	2, 0x8000
8000c2a4:	0000000f          	fence	unknown,unknown
8000c2a8:	c1d6                	.insn	2, 0xc1d6
8000c2aa:	8000                	.insn	2, 0x8000
8000c2ac:	0001                	.insn	2, 0x0001
	...

8000c2b0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.41>:
8000c2b0:	6f66                	.insn	2, 0x6f66
8000c2b2:	6e75                	.insn	2, 0x6e75
8000c2b4:	2064                	.insn	2, 0x2064

8000c2b6 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.42>:
8000c2b6:	6520                	.insn	2, 0x6520
8000c2b8:	656c                	.insn	2, 0x656c
8000c2ba:	656d                	.insn	2, 0x656d
8000c2bc:	746e                	.insn	2, 0x746e
8000c2be:	6e692073          	.insn	4, 0x6e692073
8000c2c2:	7420                	.insn	2, 0x7420
8000c2c4:	6568                	.insn	2, 0x6568
8000c2c6:	6c20                	.insn	2, 0x6c20
8000c2c8:	7369                	.insn	2, 0x7369
8000c2ca:	0a74                	.insn	2, 0x0a74

8000c2cc <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.43>:
8000c2cc:	c2b0                	.insn	2, 0xc2b0
8000c2ce:	8000                	.insn	2, 0x8000
8000c2d0:	0006                	.insn	2, 0x0006
8000c2d2:	0000                	.insn	2, 0x
8000c2d4:	c2b6                	.insn	2, 0xc2b6
8000c2d6:	8000                	.insn	2, 0x8000
8000c2d8:	0016                	.insn	2, 0x0016
	...

8000c2dc <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.44>:
8000c2dc:	2f637273          	.insn	4, 0x2f637273
8000c2e0:	616d                	.insn	2, 0x616d
8000c2e2:	6e69                	.insn	2, 0x6e69
8000c2e4:	722e                	.insn	2, 0x722e
8000c2e6:	          	.insn	4, 0xc2dc0073

8000c2e8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.45>:
8000c2e8:	c2dc                	.insn	2, 0xc2dc
8000c2ea:	8000                	.insn	2, 0x8000
8000c2ec:	0000000b          	.insn	4, 0x000b
8000c2f0:	0000004f          	.insn	4, 0x004f
8000c2f4:	000e                	.insn	2, 0x000e
	...

8000c2f8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.46>:
8000c2f8:	6361                	.insn	2, 0x6361
8000c2fa:	00203a63          	.insn	4, 0x00203a63
	...

8000c300 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.47>:
8000c300:	c2f8                	.insn	2, 0xc2f8
8000c302:	8000                	.insn	2, 0x8000
8000c304:	0005                	.insn	2, 0x0005
8000c306:	0000                	.insn	2, 0x
8000c308:	c1d6                	.insn	2, 0xc1d6
8000c30a:	8000                	.insn	2, 0x8000
8000c30c:	0001                	.insn	2, 0x0001
	...

8000c310 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.48>:
8000c310:	3a6d7573          	.insn	4, 0x3a6d7573
8000c314:	                	.insn	2, 0x2020

8000c315 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.49>:
8000c315:	6520                	.insn	2, 0x6520
8000c317:	7078                	.insn	2, 0x7078
8000c319:	6365                	.insn	2, 0x6365
8000c31b:	6574                	.insn	2, 0x6574
8000c31d:	3a64                	.insn	2, 0x3a64
8000c31f:	                	.insn	2, 0x1020

8000c320 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.50>:
8000c320:	c310                	.insn	2, 0xc310
8000c322:	8000                	.insn	2, 0x8000
8000c324:	0005                	.insn	2, 0x0005
8000c326:	0000                	.insn	2, 0x
8000c328:	c315                	.insn	2, 0xc315
8000c32a:	8000                	.insn	2, 0x8000
8000c32c:	0000000b          	.insn	4, 0x000b
8000c330:	c1d6                	.insn	2, 0xc1d6
8000c332:	8000                	.insn	2, 0x8000
8000c334:	0001                	.insn	2, 0x0001
	...

8000c338 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.51>:
8000c338:	c2dc                	.insn	2, 0xc2dc
8000c33a:	8000                	.insn	2, 0x8000
8000c33c:	0000000b          	.insn	4, 0x000b
8000c340:	0085                	.insn	2, 0x0085
8000c342:	0000                	.insn	2, 0x
8000c344:	0016                	.insn	2, 0x0016
	...

8000c348 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.52>:
8000c348:	c2dc                	.insn	2, 0xc2dc
8000c34a:	8000                	.insn	2, 0x8000
8000c34c:	0000000b          	.insn	4, 0x000b
8000c350:	0085                	.insn	2, 0x0085
8000c352:	0000                	.insn	2, 0x
8000c354:	0019                	.insn	2, 0x0019
	...

8000c358 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.53>:
8000c358:	c2dc                	.insn	2, 0xc2dc
8000c35a:	8000                	.insn	2, 0x8000
8000c35c:	0000000b          	.insn	4, 0x000b
8000c360:	007d                	.insn	2, 0x007d
8000c362:	0000                	.insn	2, 0x
8000c364:	001f 0000       	.insn	6, 0xc2dc0000001f

8000c368 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.54>:
8000c368:	c2dc                	.insn	2, 0xc2dc
8000c36a:	8000                	.insn	2, 0x8000
8000c36c:	0000000b          	.insn	4, 0x000b
8000c370:	007d                	.insn	2, 0x007d
8000c372:	0000                	.insn	2, 0x
8000c374:	0022                	.insn	2, 0x0022
	...

8000c378 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.55>:
8000c378:	c2dc                	.insn	2, 0xc2dc
8000c37a:	8000                	.insn	2, 0x8000
8000c37c:	0000000b          	.insn	4, 0x000b
8000c380:	007d                	.insn	2, 0x007d
8000c382:	0000                	.insn	2, 0x
8000c384:	002a                	.insn	2, 0x002a
	...

8000c388 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.56>:
8000c388:	c2dc                	.insn	2, 0xc2dc
8000c38a:	8000                	.insn	2, 0x8000
8000c38c:	0000000b          	.insn	4, 0x000b
8000c390:	007d                	.insn	2, 0x007d
8000c392:	0000                	.insn	2, 0x
8000c394:	002d                	.insn	2, 0x002d
	...

8000c398 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.57>:
8000c398:	c2dc                	.insn	2, 0xc2dc
8000c39a:	8000                	.insn	2, 0x8000
8000c39c:	0000000b          	.insn	4, 0x000b
8000c3a0:	007d                	.insn	2, 0x007d
8000c3a2:	0000                	.insn	2, 0x
8000c3a4:	00000013          	nop

8000c3a8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.58>:
8000c3a8:	c2dc                	.insn	2, 0xc2dc
8000c3aa:	8000                	.insn	2, 0x8000
8000c3ac:	0000000b          	.insn	4, 0x000b
8000c3b0:	007d                	.insn	2, 0x007d
8000c3b2:	0000                	.insn	2, 0x
8000c3b4:	0016                	.insn	2, 0x0016
	...

8000c3b8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.59>:
8000c3b8:	c2dc                	.insn	2, 0xc2dc
8000c3ba:	8000                	.insn	2, 0x8000
8000c3bc:	0000000b          	.insn	4, 0x000b
8000c3c0:	006c                	.insn	2, 0x006c
8000c3c2:	0000                	.insn	2, 0x
8000c3c4:	000c                	.insn	2, 0x000c
	...

8000c3c8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.60>:
8000c3c8:	c2dc                	.insn	2, 0xc2dc
8000c3ca:	8000                	.insn	2, 0x8000
8000c3cc:	0000000b          	.insn	4, 0x000b
8000c3d0:	006d                	.insn	2, 0x006d
8000c3d2:	0000                	.insn	2, 0x
8000c3d4:	000c                	.insn	2, 0x000c
	...

8000c3d8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.61>:
8000c3d8:	c2dc                	.insn	2, 0xc2dc
8000c3da:	8000                	.insn	2, 0x8000
8000c3dc:	0000000b          	.insn	4, 0x000b
8000c3e0:	006e                	.insn	2, 0x006e
8000c3e2:	0000                	.insn	2, 0x
8000c3e4:	000c                	.insn	2, 0x000c
	...

8000c3e8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.62>:
8000c3e8:	c2dc                	.insn	2, 0xc2dc
8000c3ea:	8000                	.insn	2, 0x8000
8000c3ec:	0000000b          	.insn	4, 0x000b
8000c3f0:	0070                	.insn	2, 0x0070
8000c3f2:	0000                	.insn	2, 0x
8000c3f4:	0000000f          	fence	unknown,unknown

8000c3f8 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.63>:
8000c3f8:	c2dc                	.insn	2, 0xc2dc
8000c3fa:	8000                	.insn	2, 0x8000
8000c3fc:	0000000b          	.insn	4, 0x000b
8000c400:	0070                	.insn	2, 0x0070
8000c402:	0000                	.insn	2, 0x
8000c404:	00000013          	nop

8000c408 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.64>:
8000c408:	c2dc                	.insn	2, 0xc2dc
8000c40a:	8000                	.insn	2, 0x8000
8000c40c:	0000000b          	.insn	4, 0x000b
8000c410:	0071                	.insn	2, 0x0071
8000c412:	0000                	.insn	2, 0x
8000c414:	0000000f          	fence	unknown,unknown

8000c418 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.65>:
8000c418:	c2dc                	.insn	2, 0xc2dc
8000c41a:	8000                	.insn	2, 0x8000
8000c41c:	0000000b          	.insn	4, 0x000b
8000c420:	0071                	.insn	2, 0x0071
8000c422:	0000                	.insn	2, 0x
8000c424:	00000013          	nop

8000c428 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.66>:
8000c428:	c2dc                	.insn	2, 0xc2dc
8000c42a:	8000                	.insn	2, 0x8000
8000c42c:	0000000b          	.insn	4, 0x000b
8000c430:	0072                	.insn	2, 0x0072
8000c432:	0000                	.insn	2, 0x
8000c434:	0000000f          	fence	unknown,unknown

8000c438 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.67>:
8000c438:	c2dc                	.insn	2, 0xc2dc
8000c43a:	8000                	.insn	2, 0x8000
8000c43c:	0000000b          	.insn	4, 0x000b
8000c440:	0072                	.insn	2, 0x0072
8000c442:	0000                	.insn	2, 0x
8000c444:	00000013          	nop

8000c448 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.68>:
8000c448:	31335b1b          	.insn	4, 0x31335b1b
8000c44c:	4b6d                	.insn	2, 0x4b6d
8000c44e:	5245                	.insn	2, 0x5245
8000c450:	454e                	.insn	2, 0x454e
8000c452:	204c                	.insn	2, 0x204c
8000c454:	4150                	.insn	2, 0x4150
8000c456:	494e                	.insn	2, 0x494e
8000c458:	5b1b3a43          	.insn	4, 0x5b1b3a43
8000c45c:	6d30                	.insn	2, 0x6d30
8000c45e:	0020                	.insn	2, 0x0020

8000c460 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.69>:
8000c460:	c448                	.insn	2, 0xc448
8000c462:	8000                	.insn	2, 0x8000
8000c464:	00000017          	auipc	zero,0x0
8000c468:	c1d6                	.insn	2, 0xc1d6
8000c46a:	8000                	.insn	2, 0x8000
8000c46c:	0001                	.insn	2, 0x0001
	...

8000c470 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.70>:
8000c470:	c2dc                	.insn	2, 0xc2dc
8000c472:	8000                	.insn	2, 0x8000
8000c474:	0000000b          	.insn	4, 0x000b
8000c478:	00d0                	.insn	2, 0x00d0
8000c47a:	0000                	.insn	2, 0x
8000c47c:	0026                	.insn	2, 0x0026
	...

8000c480 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.71>:
8000c480:	7375                	.insn	2, 0x7375
8000c482:	7265                	.insn	2, 0x7265
8000c484:	6d5f 6961 3a6e      	.insn	6, 0x3a6e69616d5f
8000c48a:	0020                	.insn	2, 0x0020

8000c48c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.72>:
8000c48c:	c480                	.insn	2, 0xc480
8000c48e:	8000                	.insn	2, 0x8000
8000c490:	0000000b          	.insn	4, 0x000b
8000c494:	c1d6                	.insn	2, 0xc1d6
8000c496:	8000                	.insn	2, 0x8000
8000c498:	0001                	.insn	2, 0x0001
	...

8000c49c <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.73>:
8000c49c:	6974                	.insn	2, 0x6974
8000c49e:	656d                	.insn	2, 0x656d
8000c4a0:	203a                	.insn	2, 0x203a

8000c4a2 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.74>:
8000c4a2:	6920                	.insn	2, 0x6920
8000c4a4:	736e                	.insn	2, 0x736e
8000c4a6:	7274                	.insn	2, 0x7274
8000c4a8:	7465                	.insn	2, 0x7465
8000c4aa:	203a                	.insn	2, 0x203a

8000c4ac <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.75>:
8000c4ac:	c49c                	.insn	2, 0xc49c
8000c4ae:	8000                	.insn	2, 0x8000
8000c4b0:	0006                	.insn	2, 0x0006
8000c4b2:	0000                	.insn	2, 0x
8000c4b4:	c4a2                	.insn	2, 0xc4a2
8000c4b6:	8000                	.insn	2, 0x8000
8000c4b8:	000a                	.insn	2, 0x000a
8000c4ba:	0000                	.insn	2, 0x
8000c4bc:	c1d6                	.insn	2, 0xc1d6
8000c4be:	8000                	.insn	2, 0x8000
8000c4c0:	0001                	.insn	2, 0x0001
	...

8000c4c4 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.76>:
8000c4c4:	6c6c616b          	.insn	4, 0x6c6c616b
8000c4c8:	6620636f          	jal	t1,80012b2a <KALLOC_BUFFER+0x2b2a>
8000c4cc:	6961                	.insn	2, 0x6961
8000c4ce:	3a6c                	.insn	2, 0x3a6c
8000c4d0:	0020                	.insn	2, 0x0020
	...

8000c4d4 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.77>:
8000c4d4:	c4c4                	.insn	2, 0xc4c4
8000c4d6:	8000                	.insn	2, 0x8000
8000c4d8:	000d                	.insn	2, 0x000d
	...

8000c4dc <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.78>:
8000c4dc:	2f637273          	.insn	4, 0x2f637273
8000c4e0:	6c6c616b          	.insn	4, 0x6c6c616b
8000c4e4:	722e636f          	jal	t1,800f2c06 <KALLOC_BUFFER+0xe2c06>
8000c4e8:	00000073          	ecall

8000c4ec <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.79>:
8000c4ec:	c4dc                	.insn	2, 0xc4dc
8000c4ee:	8000                	.insn	2, 0x8000
8000c4f0:	000d                	.insn	2, 0x000d
8000c4f2:	0000                	.insn	2, 0x
8000c4f4:	0019                	.insn	2, 0x0019
8000c4f6:	0000                	.insn	2, 0x
8000c4f8:	0005                	.insn	2, 0x0005
	...

8000c4fc <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17ha60309d5e41be102E>:
8000c4fc:	0015                	.insn	2, 0x0015
8000c4fe:	0000                	.insn	2, 0x
8000c500:	0010                	.insn	2, 0x0010
8000c502:	0000                	.insn	2, 0x
8000c504:	0012                	.insn	2, 0x0012
8000c506:	0000                	.insn	2, 0x
8000c508:	000a                	.insn	2, 0x000a
8000c50a:	0000                	.insn	2, 0x
8000c50c:	000e                	.insn	2, 0x000e
8000c50e:	0000                	.insn	2, 0x
8000c510:	0009                	.insn	2, 0x0009
8000c512:	0000                	.insn	2, 0x
8000c514:	0000000f          	fence	unknown,unknown
8000c518:	000a                	.insn	2, 0x000a
8000c51a:	0000                	.insn	2, 0x
8000c51c:	0000000b          	.insn	4, 0x000b
8000c520:	0011                	.insn	2, 0x0011
8000c522:	0000                	.insn	2, 0x
8000c524:	000e                	.insn	2, 0x000e
8000c526:	0000                	.insn	2, 0x
8000c528:	0014                	.insn	2, 0x0014
8000c52a:	0000                	.insn	2, 0x
8000c52c:	000d                	.insn	2, 0x000d
8000c52e:	0000                	.insn	2, 0x
8000c530:	000e                	.insn	2, 0x000e
8000c532:	0000                	.insn	2, 0x
8000c534:	00000007          	.insn	4, 0x0007

8000c538 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17ha60309d5e41be102E.9>:
8000c538:	8000c03b          	.insn	4, 0x8000c03b
8000c53c:	c060                	.insn	2, 0xc060
8000c53e:	8000                	.insn	2, 0x8000
8000c540:	c0a0                	.insn	2, 0xc0a0
8000c542:	8000                	.insn	2, 0x8000
8000c544:	c0b2                	.insn	2, 0xc0b2
8000c546:	8000                	.insn	2, 0x8000
8000c548:	c0bc                	.insn	2, 0xc0bc
8000c54a:	8000                	.insn	2, 0x8000
8000c54c:	c0ca                	.insn	2, 0xc0ca
8000c54e:	8000                	.insn	2, 0x8000
8000c550:	8000c0d3          	.insn	4, 0x8000c0d3
8000c554:	c0e2                	.insn	2, 0xc0e2
8000c556:	8000                	.insn	2, 0x8000
8000c558:	c0ec                	.insn	2, 0xc0ec
8000c55a:	8000                	.insn	2, 0x8000
8000c55c:	8000c0f7          	.insn	4, 0x8000c0f7
8000c560:	c108                	.insn	2, 0xc108
8000c562:	8000                	.insn	2, 0x8000
8000c564:	c116                	.insn	2, 0xc116
8000c566:	8000                	.insn	2, 0x8000
8000c568:	c12a                	.insn	2, 0xc12a
8000c56a:	8000                	.insn	2, 0x8000
8000c56c:	8000c137          	lui	sp,0x8000c
8000c570:	c145                	.insn	2, 0xc145
8000c572:	8000                	.insn	2, 0x8000

8000c574 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.0>:
8000c574:	614c                	.insn	2, 0x614c
8000c576:	6f79                	.insn	2, 0x6f79
8000c578:	7475                	.insn	2, 0x7475
8000c57a:	7245                	.insn	2, 0x7245
8000c57c:	6f72                	.insn	2, 0x6f72
8000c57e:	                	.insn	2, 0x7372

8000c57f <anon.9c2f42d2d0ea81396c08cbc005ef22b3.1.llvm.4667740125062790890>:
8000c57f:	2f637273          	.insn	4, 0x2f637273
8000c583:	6f68                	.insn	2, 0x6f68
8000c585:	656c                	.insn	2, 0x656c
8000c587:	722e                	.insn	2, 0x722e
8000c589:	          	.insn	4, 0x696c6173

8000c58a <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.2>:
8000c58a:	6c61                	.insn	2, 0x6c61
8000c58c:	6769                	.insn	2, 0x6769
8000c58e:	5f6e                	.insn	2, 0x5f6e
8000c590:	7366666f          	jal	a2,80072cc6 <KALLOC_BUFFER+0x62cc6>
8000c594:	7465                	.insn	2, 0x7465
8000c596:	203a                	.insn	2, 0x203a
8000c598:	6c61                	.insn	2, 0x6c61
8000c59a:	6769                	.insn	2, 0x6769
8000c59c:	206e                	.insn	2, 0x206e
8000c59e:	7369                	.insn	2, 0x7369
8000c5a0:	6e20                	.insn	2, 0x6e20
8000c5a2:	6120746f          	jal	s0,80013bb4 <KALLOC_BUFFER+0x3bb4>
8000c5a6:	7020                	.insn	2, 0x7020
8000c5a8:	7265776f          	jal	a4,80063cce <KALLOC_BUFFER+0x53cce>
8000c5ac:	6f2d                	.insn	2, 0x6f2d
8000c5ae:	2d66                	.insn	2, 0x2d66
8000c5b0:	7774                	.insn	2, 0x7774
8000c5b2:	          	j	7ffaca0a <.Lline_table_start2+0x7ffab1d0>

8000c5b4 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.3>:
8000c5b4:	c58a                	.insn	2, 0xc58a
8000c5b6:	8000                	.insn	2, 0x8000
8000c5b8:	0029                	.insn	2, 0x0029
	...

8000c5bc <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.4>:
8000c5bc:	6d6f682f          	.insn	4, 0x6d6f682f
8000c5c0:	2f65                	.insn	2, 0x2f65
8000c5c2:	6572                	.insn	2, 0x6572
8000c5c4:	796d                	.insn	2, 0x796d
8000c5c6:	75722e2f          	.insn	4, 0x75722e2f
8000c5ca:	70757473          	.insn	4, 0x70757473
8000c5ce:	6f6f742f          	.insn	4, 0x6f6f742f
8000c5d2:	636c                	.insn	2, 0x636c
8000c5d4:	6168                	.insn	2, 0x6168
8000c5d6:	6e69                	.insn	2, 0x6e69
8000c5d8:	696e2f73          	.insn	4, 0x696e2f73
8000c5dc:	6c746867          	.insn	4, 0x6c746867
8000c5e0:	2d79                	.insn	2, 0x2d79
8000c5e2:	3878                	.insn	2, 0x3878
8000c5e4:	5f36                	.insn	2, 0x5f36
8000c5e6:	3436                	.insn	2, 0x3436
8000c5e8:	752d                	.insn	2, 0x752d
8000c5ea:	6b6e                	.insn	2, 0x6b6e
8000c5ec:	6f6e                	.insn	2, 0x6f6e
8000c5ee:	6c2d6e77          	.insn	4, 0x6c2d6e77
8000c5f2:	6e69                	.insn	2, 0x6e69
8000c5f4:	7875                	.insn	2, 0x7875
8000c5f6:	672d                	.insn	2, 0x672d
8000c5f8:	756e                	.insn	2, 0x756e
8000c5fa:	62696c2f          	.insn	4, 0x62696c2f
8000c5fe:	7375722f          	.insn	4, 0x7375722f
8000c602:	6c74                	.insn	2, 0x6c74
8000c604:	6269                	.insn	2, 0x6269
8000c606:	6372732f          	.insn	4, 0x6372732f
8000c60a:	7375722f          	.insn	4, 0x7375722f
8000c60e:	2f74                	.insn	2, 0x2f74
8000c610:	696c                	.insn	2, 0x696c
8000c612:	7262                	.insn	2, 0x7262
8000c614:	7261                	.insn	2, 0x7261
8000c616:	2f79                	.insn	2, 0x2f79
8000c618:	65726f63          	bltu	tp,s7,8000cc76 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x1ae>
8000c61c:	6372732f          	.insn	4, 0x6372732f
8000c620:	7274702f          	.insn	4, 0x7274702f
8000c624:	74756d2f          	.insn	4, 0x74756d2f
8000c628:	705f 7274 722e      	.insn	6, 0x722e7274705f
8000c62e:	          	.insn	4, 0xc5bc0073

8000c630 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.5>:
8000c630:	c5bc                	.insn	2, 0xc5bc
8000c632:	8000                	.insn	2, 0x8000
8000c634:	00000073          	ecall
8000c638:	0000068f          	.insn	4, 0x068f
8000c63c:	000d                	.insn	2, 0x000d
	...

8000c640 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.10>:
	...
8000c648:	0001                	.insn	2, 0x0001
8000c64a:	0000                	.insn	2, 0x
8000c64c:	1ea4                	.insn	2, 0x1ea4
8000c64e:	8000                	.insn	2, 0x8000

8000c650 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.11>:
8000c650:	6c6c6163          	bltu	s8,t1,8000cd12 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x24a>
8000c654:	6465                	.insn	2, 0x6465
8000c656:	6020                	.insn	2, 0x6020
8000c658:	6552                	.insn	2, 0x6552
8000c65a:	746c7573          	.insn	4, 0x746c7573
8000c65e:	3a3a                	.insn	2, 0x3a3a
8000c660:	6e75                	.insn	2, 0x6e75
8000c662:	70617277          	.insn	4, 0x70617277
8000c666:	2928                	.insn	2, 0x2928
8000c668:	2060                	.insn	2, 0x2060
8000c66a:	61206e6f          	jal	t3,80012c7c <KALLOC_BUFFER+0x2c7c>
8000c66e:	206e                	.insn	2, 0x206e
8000c670:	4560                	.insn	2, 0x4560
8000c672:	7272                	.insn	2, 0x7272
8000c674:	2060                	.insn	2, 0x2060
8000c676:	6176                	.insn	2, 0x6176
8000c678:	756c                	.insn	2, 0x756c
8000c67a:	0065                	.insn	2, 0x0065

8000c67c <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.12>:
8000c67c:	c57f 8000 000b 0000 	.insn	18, 0x724600000039000001b80000000b8000c57f
8000c684:	01b8 0000 0039 0000 
8000c68c:	 

8000c68c <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.13>:
8000c68c:	7246                	.insn	2, 0x7246
8000c68e:	6565                	.insn	2, 0x6565
8000c690:	2064                	.insn	2, 0x2064
8000c692:	6f6e                	.insn	2, 0x6f6e
8000c694:	6564                	.insn	2, 0x6564
8000c696:	6120                	.insn	2, 0x6120
8000c698:	696c                	.insn	2, 0x696c
8000c69a:	7361                	.insn	2, 0x7361
8000c69c:	7365                	.insn	2, 0x7365
8000c69e:	6520                	.insn	2, 0x6520
8000c6a0:	6978                	.insn	2, 0x6978
8000c6a2:	6e697473          	.insn	4, 0x6e697473
8000c6a6:	6f682067          	.insn	4, 0x6f682067
8000c6aa:	656c                	.insn	2, 0x656c
8000c6ac:	2021                	.insn	2, 0x2021
8000c6ae:	6142                	.insn	2, 0x6142
8000c6b0:	2064                	.insn	2, 0x2064
8000c6b2:	7266                	.insn	2, 0x7266
8000c6b4:	6565                	.insn	2, 0x6565
8000c6b6:	  	.insn	8, 0x002b8000c68c003f

8000c6b8 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.14>:
8000c6b8:	c68c                	.insn	2, 0xc68c
8000c6ba:	8000                	.insn	2, 0x8000
8000c6bc:	0000002b          	.insn	4, 0x002b

8000c6c0 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.15>:
8000c6c0:	c57f 8000 000b 0000 	.insn	18, 0xc57f0000000d000002060000000b8000c57f
8000c6c8:	0206 0000 000d 0000 
8000c6d0:	 

8000c6d0 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.16>:
8000c6d0:	c57f 8000 000b 0000 	.insn	18, 0x724600000011000002280000000b8000c57f
8000c6d8:	0228 0000 0011 0000 
8000c6e0:	 

8000c6e0 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.17>:
8000c6e0:	7246                	.insn	2, 0x7246
8000c6e2:	6565                	.insn	2, 0x6565
8000c6e4:	2064                	.insn	2, 0x2064
8000c6e6:	6f6e                	.insn	2, 0x6f6e
8000c6e8:	6564                	.insn	2, 0x6564
8000c6ea:	2820                	.insn	2, 0x2820

8000c6ec <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.18>:
8000c6ec:	2029                	.insn	2, 0x2029
8000c6ee:	6c61                	.insn	2, 0x6c61
8000c6f0:	6169                	.insn	2, 0x6169
8000c6f2:	20736573          	.insn	4, 0x20736573
8000c6f6:	7865                	.insn	2, 0x7865
8000c6f8:	7369                	.insn	2, 0x7369
8000c6fa:	6974                	.insn	2, 0x6974
8000c6fc:	676e                	.insn	2, 0x676e
8000c6fe:	6820                	.insn	2, 0x6820
8000c700:	20656c6f          	jal	s8,80062906 <KALLOC_BUFFER+0x52906>
8000c704:	                	.insn	2, 0x5b28

8000c705 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.19>:
8000c705:	          	.insn	4, 0x21295d5b

8000c706 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.20>:
8000c706:	295d                	.insn	2, 0x295d
8000c708:	2021                	.insn	2, 0x2021
8000c70a:	6142                	.insn	2, 0x6142
8000c70c:	2064                	.insn	2, 0x2064
8000c70e:	7266                	.insn	2, 0x7266
8000c710:	6565                	.insn	2, 0x6565
8000c712:	  	.insn	8, 0x000c8000c6e0003f

8000c714 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.21>:
8000c714:	c6e0                	.insn	2, 0xc6e0
8000c716:	8000                	.insn	2, 0x8000
8000c718:	000c                	.insn	2, 0x000c
8000c71a:	0000                	.insn	2, 0x
8000c71c:	c6ec                	.insn	2, 0xc6ec
8000c71e:	8000                	.insn	2, 0x8000
8000c720:	0019                	.insn	2, 0x0019
8000c722:	0000                	.insn	2, 0x
8000c724:	c705                	.insn	2, 0xc705
8000c726:	8000                	.insn	2, 0x8000
8000c728:	0001                	.insn	2, 0x0001
8000c72a:	0000                	.insn	2, 0x
8000c72c:	c706                	.insn	2, 0xc706
8000c72e:	8000                	.insn	2, 0x8000
8000c730:	000d                	.insn	2, 0x000d
	...

8000c734 <.Lanon.9c2f42d2d0ea81396c08cbc005ef22b3.22>:
8000c734:	c57f 8000 000b 0000 	.insn	18, 0x6163000000090000023b0000000b8000c57f
8000c73c:	023b 0000 0009 0000 
8000c744:	 

8000c744 <.Lanon.f3530ec70e8849f250bed0a60b302330.7>:
8000c744:	61706163          	bltu	zero,s7,8000cd46 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x27e>
8000c748:	79746963          	bltu	s0,s7,8000ceda <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x412>
8000c74c:	6f20                	.insn	2, 0x6f20
8000c74e:	6576                	.insn	2, 0x6576
8000c750:	6672                	.insn	2, 0x6672
8000c752:	6f6c                	.insn	2, 0x6f6c
8000c754:	00000077          	.insn	4, 0x0077

8000c758 <.Lanon.f3530ec70e8849f250bed0a60b302330.8>:
8000c758:	c744                	.insn	2, 0xc744
8000c75a:	8000                	.insn	2, 0x8000
8000c75c:	0011                	.insn	2, 0x0011
8000c75e:	0000                	.insn	2, 0x
8000c760:	6e69                	.insn	2, 0x6e69
8000c762:	6564                	.insn	2, 0x6564
8000c764:	2078                	.insn	2, 0x2078
8000c766:	2074756f          	jal	a0,8005416c <KALLOC_BUFFER+0x4416c>
8000c76a:	6220666f          	jal	a2,80012d8c <KALLOC_BUFFER+0x2d8c>
8000c76e:	646e756f          	jal	a0,800f3db4 <KALLOC_BUFFER+0xe3db4>
8000c772:	74203a73          	.insn	4, 0x74203a73
8000c776:	6568                	.insn	2, 0x6568
8000c778:	6c20                	.insn	2, 0x6c20
8000c77a:	6e65                	.insn	2, 0x6e65
8000c77c:	6920                	.insn	2, 0x6920
8000c77e:	01002073          	.insn	4, 0x01002073
8000c782:	021c                	.insn	2, 0x021c
8000c784:	0e1d                	.insn	2, 0x0e1d
8000c786:	0318                	.insn	2, 0x0318
8000c788:	161e                	.insn	2, 0x161e
8000c78a:	0f14                	.insn	2, 0x0f14
8000c78c:	1119                	.insn	2, 0x1119
8000c78e:	0804                	.insn	2, 0x0804
8000c790:	1b1f 170d 1315      	.insn	6, 0x1315170d1b1f
8000c796:	0710                	.insn	2, 0x0710
8000c798:	0c1a                	.insn	2, 0x0c1a
8000c79a:	0612                	.insn	2, 0x0612
8000c79c:	090a050b          	.insn	4, 0x090a050b

8000c7a0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.23>:
8000c7a0:	696c                	.insn	2, 0x696c
8000c7a2:	7262                	.insn	2, 0x7262
8000c7a4:	7261                	.insn	2, 0x7261
8000c7a6:	2f79                	.insn	2, 0x2f79
8000c7a8:	65726f63          	bltu	tp,s7,8000ce06 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x33e>
8000c7ac:	6372732f          	.insn	4, 0x6372732f
8000c7b0:	6d756e2f          	.insn	4, 0x6d756e2f
8000c7b4:	7969642f          	.insn	4, 0x7969642f
8000c7b8:	665f 6f6c 7461      	.insn	6, 0x74616f6c665f
8000c7be:	722e                	.insn	2, 0x722e
8000c7c0:	00000073          	ecall

8000c7c4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.25>:
8000c7c4:	c7a0                	.insn	2, 0xc7a0
8000c7c6:	8000                	.insn	2, 0x8000
8000c7c8:	0021                	.insn	2, 0x0021
8000c7ca:	0000                	.insn	2, 0x
8000c7cc:	002e                	.insn	2, 0x002e
8000c7ce:	0000                	.insn	2, 0x
8000c7d0:	0009                	.insn	2, 0x0009
	...

8000c7d4 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h65e3f94d7050fd1aE>:
8000c7d4:	6fc1                	.insn	2, 0x6fc1
8000c7d6:	86f2                	.insn	2, 0x86f2
8000c7d8:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>

8000c7dc <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217hc2f725999e4bf2d7E>:
8000c7dc:	ef81                	.insn	2, 0xef81
8000c7de:	85ac                	.insn	2, 0x85ac
8000c7e0:	2d6d415b          	.insn	4, 0x2d6d415b
8000c7e4:	04ee                	.insn	2, 0x04ee
	...

8000c7e8 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417hec9340f5cd6dd05bE>:
8000c7e8:	1f01                	.insn	2, 0x1f01
8000c7ea:	bf6a                	.insn	2, 0xbf6a
8000c7ec:	ed64                	.insn	2, 0xed64
8000c7ee:	6e38                	.insn	2, 0x6e38
8000c7f0:	97ed                	.insn	2, 0x97ed
8000c7f2:	f9f4daa7          	.insn	4, 0xf9f4daa7
8000c7f6:	4f03e93f  	.insn	8, 0x3e0100184f03e93f

8000c7fc <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h0f360285d75974efE>:
8000c7fc:	3e01                	.insn	2, 0x3e01
8000c7fe:	2e95                	.insn	2, 0x2e95
8000c800:	9909                	.insn	2, 0x9909
8000c802:	03df 38fd 0f15      	.insn	6, 0x0f1538fd03df
8000c808:	2374e42f          	.insn	4, 0x2374e42f
8000c80c:	f5ec                	.insn	2, 0xf5ec
8000c80e:	dc08d3cf          	.insn	4, 0xdc08d3cf
8000c812:	c404                	.insn	2, 0xc404
8000c814:	b0da                	.insn	2, 0xb0da
8000c816:	bccd                	.insn	2, 0xbccd
8000c818:	7f19                	.insn	2, 0x7f19
8000c81a:	2603a633          	.insn	4, 0x2603a633
8000c81e:	e91f 024e 0000      	.insn	6, 0x024ee91f

8000c824 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617h1efb1f32dd7ad4c6E>:
8000c824:	7c01                	.insn	2, 0x7c01
8000c826:	982e                	.insn	2, 0x982e
8000c828:	bed3875b          	.insn	4, 0xbed3875b
8000c82c:	9f72                	.insn	2, 0x9f72
8000c82e:	d8d9                	.insn	2, 0xd8d9
8000c830:	12152f87          	.insn	4, 0x12152f87
8000c834:	50c6                	.insn	2, 0x50c6
8000c836:	6bde                	.insn	2, 0x6bde
8000c838:	6e70                	.insn	2, 0x6e70
8000c83a:	cf4a                	.insn	2, 0xcf4a
8000c83c:	d595d80f          	.insn	4, 0xd595d80f
8000c840:	716e                	.insn	2, 0x716e
8000c842:	26b2                	.insn	2, 0x26b2
8000c844:	66b0                	.insn	2, 0x66b0
8000c846:	adc6                	.insn	2, 0xadc6
8000c848:	3624                	.insn	2, 0x3624
8000c84a:	1d15                	.insn	2, 0x1d15
8000c84c:	d35a                	.insn	2, 0xd35a
8000c84e:	3c42                	.insn	2, 0x3c42
8000c850:	540e                	.insn	2, 0x540e
8000c852:	63ff 73c0 cc55 ef17 	.insn	22, 0xf46eeddc80dcc7f755bc28f265f9ef17cc5573c063ff
8000c85a:	65f9 28f2 55bc c7f7 
8000c862:	80dc eddc f46e 
8000c868:	efce                	.insn	2, 0xefce
8000c86a:	5fdc                	.insn	2, 0x5fdc
8000c86c:	000553f7          	.insn	4, 0x000553f7

8000c870 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.26>:
8000c870:	696c                	.insn	2, 0x696c
8000c872:	7262                	.insn	2, 0x7262
8000c874:	7261                	.insn	2, 0x7261
8000c876:	2f79                	.insn	2, 0x2f79
8000c878:	65726f63          	bltu	tp,s7,8000ced6 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x40e>
8000c87c:	6372732f          	.insn	4, 0x6372732f
8000c880:	6d756e2f          	.insn	4, 0x6d756e2f
8000c884:	746c662f          	.insn	4, 0x746c662f
8000c888:	6432                	.insn	2, 0x6432
8000c88a:	6365                	.insn	2, 0x6365
8000c88c:	7274732f          	.insn	4, 0x7274732f
8000c890:	7461                	.insn	2, 0x7461
8000c892:	6765                	.insn	2, 0x6765
8000c894:	2f79                	.insn	2, 0x2f79
8000c896:	7264                	.insn	2, 0x7264
8000c898:	6761                	.insn	2, 0x6761
8000c89a:	722e6e6f          	jal	t3,800f2fbc <KALLOC_BUFFER+0xe2fbc>
8000c89e:	          	.insn	4, 0x73736173

8000c89f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.27>:
8000c89f:	7361                	.insn	2, 0x7361
8000c8a1:	74726573          	.insn	4, 0x74726573
8000c8a5:	6f69                	.insn	2, 0x6f69
8000c8a7:	206e                	.insn	2, 0x206e
8000c8a9:	6166                	.insn	2, 0x6166
8000c8ab:	6c69                	.insn	2, 0x6c69
8000c8ad:	6465                	.insn	2, 0x6465
8000c8af:	203a                	.insn	2, 0x203a
8000c8b1:	2e64                	.insn	2, 0x2e64
8000c8b3:	616d                	.insn	2, 0x616d
8000c8b5:	746e                	.insn	2, 0x746e
8000c8b7:	3e20                	.insn	2, 0x3e20
8000c8b9:	3020                	.insn	2, 0x3020
	...

8000c8bc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.28>:
8000c8bc:	c870                	.insn	2, 0xc870
8000c8be:	8000                	.insn	2, 0x8000
8000c8c0:	0000002f          	.insn	4, 0x002f
8000c8c4:	0076                	.insn	2, 0x0076
8000c8c6:	0000                	.insn	2, 0x
8000c8c8:	0005                	.insn	2, 0x0005
	...

8000c8cc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.29>:
8000c8cc:	7361                	.insn	2, 0x7361
8000c8ce:	74726573          	.insn	4, 0x74726573
8000c8d2:	6f69                	.insn	2, 0x6f69
8000c8d4:	206e                	.insn	2, 0x206e
8000c8d6:	6166                	.insn	2, 0x6166
8000c8d8:	6c69                	.insn	2, 0x6c69
8000c8da:	6465                	.insn	2, 0x6465
8000c8dc:	203a                	.insn	2, 0x203a
8000c8de:	2e64                	.insn	2, 0x2e64
8000c8e0:	696d                	.insn	2, 0x696d
8000c8e2:	756e                	.insn	2, 0x756e
8000c8e4:	203e2073          	.insn	4, 0x203e2073
8000c8e8:	0030                	.insn	2, 0x0030
	...

8000c8ec <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.30>:
8000c8ec:	c870                	.insn	2, 0xc870
8000c8ee:	8000                	.insn	2, 0x8000
8000c8f0:	0000002f          	.insn	4, 0x002f
8000c8f4:	00000077          	.insn	4, 0x0077
8000c8f8:	0005                	.insn	2, 0x0005
	...

8000c8fc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.31>:
8000c8fc:	7361                	.insn	2, 0x7361
8000c8fe:	74726573          	.insn	4, 0x74726573
8000c902:	6f69                	.insn	2, 0x6f69
8000c904:	206e                	.insn	2, 0x206e
8000c906:	6166                	.insn	2, 0x6166
8000c908:	6c69                	.insn	2, 0x6c69
8000c90a:	6465                	.insn	2, 0x6465
8000c90c:	203a                	.insn	2, 0x203a
8000c90e:	2e64                	.insn	2, 0x2e64
8000c910:	6c70                	.insn	2, 0x6c70
8000c912:	7375                	.insn	2, 0x7375
8000c914:	3e20                	.insn	2, 0x3e20
8000c916:	3020                	.insn	2, 0x3020

8000c918 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.32>:
8000c918:	c870                	.insn	2, 0xc870
8000c91a:	8000                	.insn	2, 0x8000
8000c91c:	0000002f          	.insn	4, 0x002f
8000c920:	0078                	.insn	2, 0x0078
8000c922:	0000                	.insn	2, 0x
8000c924:	0005                	.insn	2, 0x0005
	...

8000c928 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.33>:
8000c928:	7361                	.insn	2, 0x7361
8000c92a:	74726573          	.insn	4, 0x74726573
8000c92e:	6f69                	.insn	2, 0x6f69
8000c930:	206e                	.insn	2, 0x206e
8000c932:	6166                	.insn	2, 0x6166
8000c934:	6c69                	.insn	2, 0x6c69
8000c936:	6465                	.insn	2, 0x6465
8000c938:	203a                	.insn	2, 0x203a
8000c93a:	7562                	.insn	2, 0x7562
8000c93c:	2e66                	.insn	2, 0x2e66
8000c93e:	656c                	.insn	2, 0x656c
8000c940:	286e                	.insn	2, 0x286e
8000c942:	2029                	.insn	2, 0x2029
8000c944:	3d3e                	.insn	2, 0x3d3e
8000c946:	4d20                	.insn	2, 0x4d20
8000c948:	5841                	.insn	2, 0x5841
8000c94a:	535f 4749 445f      	.insn	6, 0x445f4749535f
8000c950:	4749                	.insn	2, 0x4749
8000c952:	5449                	.insn	2, 0x5449
8000c954:	00000053          	.insn	4, 0x0053

8000c958 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.34>:
8000c958:	c870                	.insn	2, 0xc870
8000c95a:	8000                	.insn	2, 0x8000
8000c95c:	0000002f          	.insn	4, 0x002f
8000c960:	0000007b          	.insn	4, 0x007b
8000c964:	0005                	.insn	2, 0x0005
	...

8000c968 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.35>:
8000c968:	c870                	.insn	2, 0xc870
8000c96a:	8000                	.insn	2, 0x8000
8000c96c:	0000002f          	.insn	4, 0x002f
8000c970:	00c2                	.insn	2, 0x00c2
8000c972:	0000                	.insn	2, 0x
8000c974:	0009                	.insn	2, 0x0009
	...

8000c978 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.36>:
8000c978:	c870                	.insn	2, 0xc870
8000c97a:	8000                	.insn	2, 0x8000
8000c97c:	0000002f          	.insn	4, 0x002f
8000c980:	000000fb          	.insn	4, 0x00fb
8000c984:	000d                	.insn	2, 0x000d
	...

8000c988 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.37>:
8000c988:	c870                	.insn	2, 0xc870
8000c98a:	8000                	.insn	2, 0x8000
8000c98c:	0000002f          	.insn	4, 0x002f
8000c990:	0102                	.insn	2, 0x0102
8000c992:	0000                	.insn	2, 0x
8000c994:	0012                	.insn	2, 0x0012
	...

8000c998 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.38>:
8000c998:	7361                	.insn	2, 0x7361
8000c99a:	74726573          	.insn	4, 0x74726573
8000c99e:	6f69                	.insn	2, 0x6f69
8000c9a0:	206e                	.insn	2, 0x206e
8000c9a2:	6166                	.insn	2, 0x6166
8000c9a4:	6c69                	.insn	2, 0x6c69
8000c9a6:	6465                	.insn	2, 0x6465
8000c9a8:	203a                	.insn	2, 0x203a
8000c9aa:	2e64                	.insn	2, 0x2e64
8000c9ac:	616d                	.insn	2, 0x616d
8000c9ae:	746e                	.insn	2, 0x746e
8000c9b0:	632e                	.insn	2, 0x632e
8000c9b2:	6568                	.insn	2, 0x6568
8000c9b4:	64656b63          	bltu	a0,t1,8000d00a <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.53+0x2>
8000c9b8:	735f 6275 6428      	.insn	6, 0x64286275735f
8000c9be:	6d2e                	.insn	2, 0x6d2e
8000c9c0:	6e69                	.insn	2, 0x6e69
8000c9c2:	7375                	.insn	2, 0x7375
8000c9c4:	2e29                	.insn	2, 0x2e29
8000c9c6:	7369                	.insn	2, 0x7369
8000c9c8:	735f 6d6f 2865      	.insn	6, 0x28656d6f735f
8000c9ce:	0029                	.insn	2, 0x0029

8000c9d0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.39>:
8000c9d0:	c870                	.insn	2, 0xc870
8000c9d2:	8000                	.insn	2, 0x8000
8000c9d4:	0000002f          	.insn	4, 0x002f
8000c9d8:	007a                	.insn	2, 0x007a
8000c9da:	0000                	.insn	2, 0x
8000c9dc:	0005                	.insn	2, 0x0005
	...

8000c9e0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.40>:
8000c9e0:	7361                	.insn	2, 0x7361
8000c9e2:	74726573          	.insn	4, 0x74726573
8000c9e6:	6f69                	.insn	2, 0x6f69
8000c9e8:	206e                	.insn	2, 0x206e
8000c9ea:	6166                	.insn	2, 0x6166
8000c9ec:	6c69                	.insn	2, 0x6c69
8000c9ee:	6465                	.insn	2, 0x6465
8000c9f0:	203a                	.insn	2, 0x203a
8000c9f2:	2e64                	.insn	2, 0x2e64
8000c9f4:	616d                	.insn	2, 0x616d
8000c9f6:	746e                	.insn	2, 0x746e
8000c9f8:	632e                	.insn	2, 0x632e
8000c9fa:	6568                	.insn	2, 0x6568
8000c9fc:	64656b63          	bltu	a0,t1,8000d052 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.57+0xa>
8000ca00:	615f 6464 6428      	.insn	6, 0x64286464615f
8000ca06:	702e                	.insn	2, 0x702e
8000ca08:	756c                	.insn	2, 0x756c
8000ca0a:	692e2973          	.insn	4, 0x692e2973
8000ca0e:	6f735f73          	.insn	4, 0x6f735f73
8000ca12:	656d                	.insn	2, 0x656d
8000ca14:	2928                	.insn	2, 0x2928
	...

8000ca18 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.41>:
8000ca18:	c870                	.insn	2, 0xc870
8000ca1a:	8000                	.insn	2, 0x8000
8000ca1c:	0000002f          	.insn	4, 0x002f
8000ca20:	0079                	.insn	2, 0x0079
8000ca22:	0000                	.insn	2, 0x
8000ca24:	0005                	.insn	2, 0x0005
	...

8000ca28 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.42>:
8000ca28:	c870                	.insn	2, 0xc870
8000ca2a:	8000                	.insn	2, 0x8000
8000ca2c:	0000002f          	.insn	4, 0x002f
8000ca30:	0000010b          	.insn	4, 0x010b
8000ca34:	0005                	.insn	2, 0x0005
	...

8000ca38 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.43>:
8000ca38:	c870                	.insn	2, 0xc870
8000ca3a:	8000                	.insn	2, 0x8000
8000ca3c:	0000002f          	.insn	4, 0x002f
8000ca40:	010c                	.insn	2, 0x010c
8000ca42:	0000                	.insn	2, 0x
8000ca44:	0005                	.insn	2, 0x0005
	...

8000ca48 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.44>:
8000ca48:	c870                	.insn	2, 0xc870
8000ca4a:	8000                	.insn	2, 0x8000
8000ca4c:	0000002f          	.insn	4, 0x002f
8000ca50:	010d                	.insn	2, 0x010d
8000ca52:	0000                	.insn	2, 0x
8000ca54:	0005                	.insn	2, 0x0005
	...

8000ca58 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.45>:
8000ca58:	c870                	.insn	2, 0xc870
8000ca5a:	8000                	.insn	2, 0x8000
8000ca5c:	0000002f          	.insn	4, 0x002f
8000ca60:	0172                	.insn	2, 0x0172
8000ca62:	0000                	.insn	2, 0x
8000ca64:	0024                	.insn	2, 0x0024
	...

8000ca68 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.46>:
8000ca68:	c870                	.insn	2, 0xc870
8000ca6a:	8000                	.insn	2, 0x8000
8000ca6c:	0000002f          	.insn	4, 0x002f
8000ca70:	00000177          	.insn	4, 0x0177
8000ca74:	0000002f          	.insn	4, 0x002f

8000ca78 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.47>:
8000ca78:	c870                	.insn	2, 0xc870
8000ca7a:	8000                	.insn	2, 0x8000
8000ca7c:	0000002f          	.insn	4, 0x002f
8000ca80:	0184                	.insn	2, 0x0184
8000ca82:	0000                	.insn	2, 0x
8000ca84:	0012                	.insn	2, 0x0012
	...

8000ca88 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.48>:
8000ca88:	c870                	.insn	2, 0xc870
8000ca8a:	8000                	.insn	2, 0x8000
8000ca8c:	0000002f          	.insn	4, 0x002f
8000ca90:	0166                	.insn	2, 0x0166
8000ca92:	0000                	.insn	2, 0x
8000ca94:	000d                	.insn	2, 0x000d
	...

8000ca98 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.49>:
8000ca98:	c870                	.insn	2, 0xc870
8000ca9a:	8000                	.insn	2, 0x8000
8000ca9c:	0000002f          	.insn	4, 0x002f
8000caa0:	014c                	.insn	2, 0x014c
8000caa2:	0000                	.insn	2, 0x
8000caa4:	0022                	.insn	2, 0x0022
	...

8000caa8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.50>:
8000caa8:	c870                	.insn	2, 0xc870
8000caaa:	8000                	.insn	2, 0x8000
8000caac:	0000002f          	.insn	4, 0x002f
8000cab0:	0000010f          	.insn	4, 0x010f
8000cab4:	0005                	.insn	2, 0x0005
	...

8000cab8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.51>:
8000cab8:	c870                	.insn	2, 0xc870
8000caba:	8000                	.insn	2, 0x8000
8000cabc:	0000002f          	.insn	4, 0x002f
8000cac0:	010e                	.insn	2, 0x010e
8000cac2:	0000                	.insn	2, 0x
8000cac4:	0005                	.insn	2, 0x0005
	...

8000cac8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E>:
8000cac8:	45df 3d1a cf03      	.insn	6, 0xcf033d1a45df
8000cace:	e61a                	.insn	2, 0xe61a
8000cad0:	fbc1                	.insn	2, 0xfbc1
8000cad2:	fecc                	.insn	2, 0xfecc
8000cad4:	0000                	.insn	2, 0x
8000cad6:	0000                	.insn	2, 0x
8000cad8:	c6ca                	.insn	2, 0xc6ca
8000cada:	c79a                	.insn	2, 0xc79a
8000cadc:	ab70fe17          	auipc	t3,0xab70f
8000cae0:	fbdc                	.insn	2, 0xfbdc
8000cae2:	fed4                	.insn	2, 0xfed4
8000cae4:	0000                	.insn	2, 0x
8000cae6:	0000                	.insn	2, 0x
8000cae8:	bebcdc4f          	.insn	4, 0xbebcdc4f
8000caec:	b1fc                	.insn	2, 0xb1fc
8000caee:	fbf6ff77          	.insn	4, 0xfbf6ff77
8000caf2:	fedc                	.insn	2, 0xfedc
8000caf4:	0000                	.insn	2, 0x
8000caf6:	0000                	.insn	2, 0x
8000caf8:	d60c                	.insn	2, 0xd60c
8000cafa:	91ef416b          	.insn	4, 0x91ef416b
8000cafe:	be56                	.insn	2, 0xbe56
8000cb00:	fc11                	.insn	2, 0xfc11
8000cb02:	fee4                	.insn	2, 0xfee4
8000cb04:	0000                	.insn	2, 0x
8000cb06:	0000                	.insn	2, 0x
8000cb08:	fc3c                	.insn	2, 0xfc3c
8000cb0a:	1fad907f fc2c8dd0 	.insn	12, 0xfeecfc2c8dd01fad907f
8000cb12:	0000feec 
8000cb16:	0000                	.insn	2, 0x
8000cb18:	31559a83          	lh	s5,789(a1)
8000cb1c:	5c28                	.insn	2, 0x5c28
8000cb1e:	d351                	.insn	2, 0xd351
8000cb20:	fc46                	.insn	2, 0xfc46
8000cb22:	fef4                	.insn	2, 0xfef4
8000cb24:	0000                	.insn	2, 0x
8000cb26:	0000                	.insn	2, 0x
8000cb28:	c9b5                	.insn	2, 0xc9b5
8000cb2a:	ada6                	.insn	2, 0xada6
8000cb2c:	9d71ac8f          	.insn	4, 0x9d71ac8f
8000cb30:	fc61                	.insn	2, 0xfc61
8000cb32:	fefc                	.insn	2, 0xfefc
8000cb34:	0000                	.insn	2, 0x
8000cb36:	0000                	.insn	2, 0x
8000cb38:	23ee8bcb          	.insn	4, 0x23ee8bcb
8000cb3c:	ea9c2277          	.insn	4, 0xea9c2277
8000cb40:	ff04fc7b          	.insn	4, 0xff04fc7b
8000cb44:	0000                	.insn	2, 0x
8000cb46:	0000                	.insn	2, 0x
8000cb48:	536d                	.insn	2, 0x536d
8000cb4a:	4078                	.insn	2, 0x4078
8000cb4c:	4991                	.insn	2, 0x4991
8000cb4e:	aecc                	.insn	2, 0xaecc
8000cb50:	fc96                	.insn	2, 0xfc96
8000cb52:	ff0c                	.insn	2, 0xff0c
8000cb54:	0000                	.insn	2, 0x
8000cb56:	0000                	.insn	2, 0x
8000cb58:	5db6ce57          	.insn	4, 0x5db6ce57
8000cb5c:	1279                	.insn	2, 0x1279
8000cb5e:	823c                	.insn	2, 0x823c
8000cb60:	fcb1                	.insn	2, 0xfcb1
8000cb62:	ff14                	.insn	2, 0xff14
8000cb64:	0000                	.insn	2, 0x
8000cb66:	0000                	.insn	2, 0x
8000cb68:	4dfb5637          	lui	a2,0x4dfb5
8000cb6c:	9436                	.insn	2, 0x9436
8000cb6e:	c210                	.insn	2, 0xc210
8000cb70:	ff1cfccb          	.insn	4, 0xff1cfccb
8000cb74:	0000                	.insn	2, 0x
8000cb76:	0000                	.insn	2, 0x
8000cb78:	3848984f          	.insn	4, 0x3848984f
8000cb7c:	9096ea6f          	jal	s4,7ff7b484 <.Lline_table_start2+0x7ff79c4a>
8000cb80:	fce6                	.insn	2, 0xfce6
8000cb82:	ff24                	.insn	2, 0xff24
8000cb84:	0000                	.insn	2, 0x
8000cb86:	0000                	.insn	2, 0x
8000cb88:	25823ac7          	.insn	4, 0x25823ac7
8000cb8c:	d77485cb          	.insn	4, 0xd77485cb
8000cb90:	fd00                	.insn	2, 0xfd00
8000cb92:	ff2c                	.insn	2, 0xff2c
8000cb94:	0000                	.insn	2, 0x
8000cb96:	0000                	.insn	2, 0x
8000cb98:	97f4                	.insn	2, 0x97f4
8000cb9a:	cfcd97bf fd1ba086 	.insn	8, 0xfd1ba086cfcd97bf
8000cba2:	ff34                	.insn	2, 0xff34
8000cba4:	0000                	.insn	2, 0x
8000cba6:	0000                	.insn	2, 0x
8000cba8:	ace5                	.insn	2, 0xace5
8000cbaa:	172a                	.insn	2, 0x172a
8000cbac:	0a98                	.insn	2, 0x0a98
8000cbae:	ef34                	.insn	2, 0xef34
8000cbb0:	fd35                	.insn	2, 0xfd35
8000cbb2:	ff3c                	.insn	2, 0xff3c
8000cbb4:	0000                	.insn	2, 0x
8000cbb6:	0000                	.insn	2, 0x
8000cbb8:	b28e                	.insn	2, 0xb28e
8000cbba:	2a35                	.insn	2, 0x2a35
8000cbbc:	b23867fb          	.insn	4, 0xb23867fb
8000cbc0:	fd50                	.insn	2, 0xfd50
8000cbc2:	ff44                	.insn	2, 0xff44
8000cbc4:	0000                	.insn	2, 0x
8000cbc6:	0000                	.insn	2, 0x
8000cbc8:	d2c63f3b          	.insn	4, 0xd2c63f3b
8000cbcc:	d4df 84c8 fd6b      	.insn	6, 0xfd6b84c8d4df
8000cbd2:	ff4c                	.insn	2, 0xff4c
8000cbd4:	0000                	.insn	2, 0x
8000cbd6:	0000                	.insn	2, 0x
8000cbd8:	cdba                	.insn	2, 0xcdba
8000cbda:	44271ad3          	.insn	4, 0x44271ad3
8000cbde:	c5dd                	.insn	2, 0xc5dd
8000cbe0:	fd85                	.insn	2, 0xfd85
8000cbe2:	ff54                	.insn	2, 0xff54
8000cbe4:	0000                	.insn	2, 0x
8000cbe6:	0000                	.insn	2, 0x
8000cbe8:	c996                	.insn	2, 0xc996
8000cbea:	bb25                	.insn	2, 0xbb25
8000cbec:	9fce                	.insn	2, 0x9fce
8000cbee:	fda0936b          	.insn	4, 0xfda0936b
8000cbf2:	ff5c                	.insn	2, 0xff5c
8000cbf4:	0000                	.insn	2, 0x
8000cbf6:	0000                	.insn	2, 0x
8000cbf8:	a584                	.insn	2, 0xa584
8000cbfa:	7d62                	.insn	2, 0x7d62
8000cbfc:	6c24                	.insn	2, 0x6c24
8000cbfe:	dbac                	.insn	2, 0xdbac
8000cc00:	fdba                	.insn	2, 0xfdba
8000cc02:	ff64                	.insn	2, 0xff64
8000cc04:	0000                	.insn	2, 0x
8000cc06:	0000                	.insn	2, 0x
8000cc08:	daf6                	.insn	2, 0xdaf6
8000cc0a:	0d5f 6658 a3ab      	.insn	6, 0xa3ab66580d5f
8000cc10:	fdd5                	.insn	2, 0xfdd5
8000cc12:	ff6c                	.insn	2, 0xff6c
8000cc14:	0000                	.insn	2, 0x
8000cc16:	0000                	.insn	2, 0x
8000cc18:	f126                	.insn	2, 0xf126
8000cc1a:	f893dec3          	.insn	4, 0xf893dec3
8000cc1e:	f3e2                	.insn	2, 0xf3e2
8000cc20:	ff74fdef          	jal	s11,7ff5cc16 <.Lline_table_start2+0x7ff5b3dc>
8000cc24:	0000                	.insn	2, 0x
8000cc26:	0000                	.insn	2, 0x
8000cc28:	80b8                	.insn	2, 0x80b8
8000cc2a:	aaff ada8 b5b5 fe0a 	.insn	14, 0xff7cfe0ab5b5ada8aaff
8000cc32:	ff7c 0000 0000 
8000cc38:	6c7c4a8b          	.insn	4, 0x6c7c4a8b
8000cc3c:	5f05                	.insn	2, 0x5f05
8000cc3e:	8762                	.insn	2, 0x8762
8000cc40:	fe25                	.insn	2, 0xfe25
8000cc42:	ff84                	.insn	2, 0xff84
8000cc44:	0000                	.insn	2, 0x
8000cc46:	0000                	.insn	2, 0x
8000cc48:	34c13053          	.insn	4, 0x34c13053
8000cc4c:	ff60                	.insn	2, 0xff60
8000cc4e:	c9bc                	.insn	2, 0xc9bc
8000cc50:	ff8cfe3f 00000000 	.insn	8, 0xff8cfe3f
8000cc58:	2655                	.insn	2, 0x2655
8000cc5a:	91ba                	.insn	2, 0x91ba
8000cc5c:	858c                	.insn	2, 0x858c
8000cc5e:	964e                	.insn	2, 0x964e
8000cc60:	fe5a                	.insn	2, 0xfe5a
8000cc62:	ff94                	.insn	2, 0xff94
8000cc64:	0000                	.insn	2, 0x
8000cc66:	0000                	.insn	2, 0x
8000cc68:	7ebd                	.insn	2, 0x7ebd
8000cc6a:	7029                	.insn	2, 0x7029
8000cc6c:	7724                	.insn	2, 0x7724
8000cc6e:	dff9                	.insn	2, 0xdff9
8000cc70:	fe74                	.insn	2, 0xfe74
8000cc72:	ff9c                	.insn	2, 0xff9c
8000cc74:	0000                	.insn	2, 0x
8000cc76:	0000                	.insn	2, 0x
8000cc78:	b8e5b88f          	.insn	4, 0xb8e5b88f
8000cc7c:	bd9f a6df fe8f      	.insn	6, 0xfe8fa6dfbd9f
8000cc82:	ffa4                	.insn	2, 0xffa4
8000cc84:	0000                	.insn	2, 0x
8000cc86:	0000                	.insn	2, 0x
8000cc88:	7d94                	.insn	2, 0x7d94
8000cc8a:	8874                	.insn	2, 0x8874
8000cc8c:	f8a95fcf          	.insn	4, 0xf8a95fcf
8000cc90:	fea9                	.insn	2, 0xfea9
8000cc92:	ffac                	.insn	2, 0xffac
8000cc94:	0000                	.insn	2, 0x
8000cc96:	0000                	.insn	2, 0x
8000cc98:	8fa89bcf          	.insn	4, 0x8fa89bcf
8000cc9c:	b9447093          	andi	ra,s0,-1132
8000cca0:	fec4                	.insn	2, 0xfec4
8000cca2:	ffb4                	.insn	2, 0xffb4
8000cca4:	0000                	.insn	2, 0x
8000cca6:	0000                	.insn	2, 0x
8000cca8:	bf0f156b          	.insn	4, 0xbf0f156b
8000ccac:	f0f8                	.insn	2, 0xf0f8
8000ccae:	8a08                	.insn	2, 0x8a08
8000ccb0:	fedf ffbc 0000      	.insn	6, 0xffbcfedf
8000ccb6:	0000                	.insn	2, 0x
8000ccb8:	31b6                	.insn	2, 0x31b6
8000ccba:	6531                	.insn	2, 0x6531
8000ccbc:	2555                	.insn	2, 0x2555
8000ccbe:	cdb0                	.insn	2, 0xcdb0
8000ccc0:	fef9                	.insn	2, 0xfef9
8000ccc2:	ffc4                	.insn	2, 0xffc4
8000ccc4:	0000                	.insn	2, 0x
8000ccc6:	0000                	.insn	2, 0x
8000ccc8:	7fac                	.insn	2, 0x7fac
8000ccca:	e2c6d07b          	.insn	4, 0xe2c6d07b
8000ccce:	ff14993f 0000ffcc 	.insn	8, 0xffccff14993f
8000ccd6:	0000                	.insn	2, 0x
8000ccd8:	3b06                	.insn	2, 0x3b06
8000ccda:	10c42a2b          	.insn	4, 0x10c42a2b
8000ccde:	e45c                	.insn	2, 0xe45c
8000cce0:	ff2e                	.insn	2, 0xff2e
8000cce2:	ffd4                	.insn	2, 0xffd4
8000cce4:	0000                	.insn	2, 0x
8000cce6:	0000                	.insn	2, 0x
8000cce8:	697392d3          	.insn	4, 0x697392d3
8000ccec:	2499                	.insn	2, 0x2499
8000ccee:	aa24                	.insn	2, 0xaa24
8000ccf0:	ff49                	.insn	2, 0xff49
8000ccf2:	ffdc                	.insn	2, 0xffdc
8000ccf4:	0000                	.insn	2, 0x
8000ccf6:	0000                	.insn	2, 0x
8000ccf8:	ca0e                	.insn	2, 0xca0e
8000ccfa:	8300                	.insn	2, 0x8300
8000ccfc:	b5f2                	.insn	2, 0xb5f2
8000ccfe:	ff63fd87          	.insn	4, 0xff63fd87
8000cd02:	ffe4                	.insn	2, 0xffe4
8000cd04:	0000                	.insn	2, 0x
8000cd06:	0000                	.insn	2, 0x
8000cd08:	92111aeb          	.insn	4, 0x92111aeb
8000cd0c:	0864                	.insn	2, 0x0864
8000cd0e:	bce5                	.insn	2, 0xbce5
8000cd10:	ff7e                	.insn	2, 0xff7e
8000cd12:	ffec                	.insn	2, 0xffec
8000cd14:	0000                	.insn	2, 0x
8000cd16:	0000                	.insn	2, 0x
8000cd18:	88cc                	.insn	2, 0x88cc
8000cd1a:	6f50                	.insn	2, 0x6f50
8000cd1c:	cc09                	.insn	2, 0xcc09
8000cd1e:	8cbc                	.insn	2, 0x8cbc
8000cd20:	ff99                	.insn	2, 0xff99
8000cd22:	fff4                	.insn	2, 0xfff4
8000cd24:	0000                	.insn	2, 0x
8000cd26:	0000                	.insn	2, 0x
8000cd28:	652c                	.insn	2, 0x652c
8000cd2a:	e219                	.insn	2, 0xe219
8000cd2c:	1758                	.insn	2, 0x1758
8000cd2e:	ffb3d1b7          	lui	gp,0xffb3d
8000cd32:	fffc                	.insn	2, 0xfffc
	...
8000cd3c:	0000                	.insn	2, 0x
8000cd3e:	9c40                	.insn	2, 0x9c40
8000cd40:	ffce                	.insn	2, 0xffce
8000cd42:	0004                	.insn	2, 0x0004
	...
8000cd4c:	a510                	.insn	2, 0xa510
8000cd4e:	e8d4                	.insn	2, 0xe8d4
8000cd50:	ffe8                	.insn	2, 0xffe8
8000cd52:	000c                	.insn	2, 0x000c
8000cd54:	0000                	.insn	2, 0x
8000cd56:	0000                	.insn	2, 0x
8000cd58:	0000                	.insn	2, 0x
8000cd5a:	ac62                	.insn	2, 0xac62
8000cd5c:	ebc5                	.insn	2, 0xebc5
8000cd5e:	ad78                	.insn	2, 0xad78
8000cd60:	00140003          	lb	zero,1(s0)
8000cd64:	0000                	.insn	2, 0x
8000cd66:	0000                	.insn	2, 0x
8000cd68:	0984                	.insn	2, 0x0984
8000cd6a:	f894                	.insn	2, 0xf894
8000cd6c:	3978                	.insn	2, 0x3978
8000cd6e:	001e813f 0000001c 	.insn	8, 0x001c001e813f
8000cd76:	0000                	.insn	2, 0x
8000cd78:	c90715b3          	.insn	4, 0xc90715b3
8000cd7c:	c097ce7b          	.insn	4, 0xc097ce7b
8000cd80:	0038                	.insn	2, 0x0038
8000cd82:	0024                	.insn	2, 0x0024
8000cd84:	0000                	.insn	2, 0x
8000cd86:	0000                	.insn	2, 0x
8000cd88:	5c70                	.insn	2, 0x5c70
8000cd8a:	7bea                	.insn	2, 0x7bea
8000cd8c:	32ce                	.insn	2, 0x32ce
8000cd8e:	8f7e                	.insn	2, 0x8f7e
8000cd90:	002c0053          	.insn	4, 0x002c0053
8000cd94:	0000                	.insn	2, 0x
8000cd96:	0000                	.insn	2, 0x
8000cd98:	8068                	.insn	2, 0x8068
8000cd9a:	abe9                	.insn	2, 0xabe9
8000cd9c:	38a4                	.insn	2, 0x38a4
8000cd9e:	d5d2                	.insn	2, 0xd5d2
8000cda0:	006d                	.insn	2, 0x006d
8000cda2:	0034                	.insn	2, 0x0034
8000cda4:	0000                	.insn	2, 0x
8000cda6:	0000                	.insn	2, 0x
8000cda8:	2245                	.insn	2, 0x2245
8000cdaa:	179a                	.insn	2, 0x179a
8000cdac:	2726                	.insn	2, 0x2726
8000cdae:	00889f4f          	.insn	4, 0x00889f4f
8000cdb2:	003c                	.insn	2, 0x003c
8000cdb4:	0000                	.insn	2, 0x
8000cdb6:	0000                	.insn	2, 0x
8000cdb8:	d4c4fb27          	.insn	4, 0xd4c4fb27
8000cdbc:	a231                	.insn	2, 0xa231
8000cdbe:	00a2ed63          	bltu	t0,a0,8000cdd8 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x310>
8000cdc2:	0044                	.insn	2, 0x0044
8000cdc4:	0000                	.insn	2, 0x
8000cdc6:	0000                	.insn	2, 0x
8000cdc8:	ada8                	.insn	2, 0xada8
8000cdca:	8cc8                	.insn	2, 0x8cc8
8000cdcc:	6538                	.insn	2, 0x6538
8000cdce:	b0de                	.insn	2, 0xb0de
8000cdd0:	00bd                	.insn	2, 0x00bd
8000cdd2:	004c                	.insn	2, 0x004c
8000cdd4:	0000                	.insn	2, 0x
8000cdd6:	0000                	.insn	2, 0x
8000cdd8:	1aab65db          	.insn	4, 0x1aab65db
8000cddc:	088e                	.insn	2, 0x088e
8000cdde:	00d883c7          	.insn	4, 0x00d883c7
8000cde2:	0054                	.insn	2, 0x0054
8000cde4:	0000                	.insn	2, 0x
8000cde6:	0000                	.insn	2, 0x
8000cde8:	1d9a                	.insn	2, 0x1d9a
8000cdea:	4271                	.insn	2, 0x4271
8000cdec:	1df9                	.insn	2, 0x1df9
8000cdee:	c45d                	.insn	2, 0xc45d
8000cdf0:	00f2                	.insn	2, 0x00f2
8000cdf2:	005c                	.insn	2, 0x005c
8000cdf4:	0000                	.insn	2, 0x
8000cdf6:	0000                	.insn	2, 0x
8000cdf8:	e758                	.insn	2, 0xe758
8000cdfa:	692ca61b          	.insn	4, 0x692ca61b
8000cdfe:	924d                	.insn	2, 0x924d
8000ce00:	010d                	.insn	2, 0x010d
8000ce02:	0064                	.insn	2, 0x0064
8000ce04:	0000                	.insn	2, 0x
8000ce06:	0000                	.insn	2, 0x
8000ce08:	8dea                	.insn	2, 0x8dea
8000ce0a:	1a70                	.insn	2, 0x1a70
8000ce0c:	ee64                	.insn	2, 0xee64
8000ce0e:	da01                	.insn	2, 0xda01
8000ce10:	006c0127          	.insn	4, 0x006c0127
8000ce14:	0000                	.insn	2, 0x
8000ce16:	0000                	.insn	2, 0x
8000ce18:	774a                	.insn	2, 0x774a
8000ce1a:	a3999aef          	jal	s5,7ffa6852 <.Lline_table_start2+0x7ffa5018>
8000ce1e:	a26d                	.insn	2, 0xa26d
8000ce20:	0142                	.insn	2, 0x0142
8000ce22:	0074                	.insn	2, 0x0074
8000ce24:	0000                	.insn	2, 0x
8000ce26:	0000                	.insn	2, 0x
8000ce28:	6b85                	.insn	2, 0x6b85
8000ce2a:	b47d                	.insn	2, 0xb47d
8000ce2c:	f209787b          	.insn	4, 0xf209787b
8000ce30:	015c                	.insn	2, 0x015c
8000ce32:	007c                	.insn	2, 0x007c
8000ce34:	0000                	.insn	2, 0x
8000ce36:	0000                	.insn	2, 0x
8000ce38:	79dd1877          	.insn	4, 0x79dd1877
8000ce3c:	e4a1                	.insn	2, 0xe4a1
8000ce3e:	b454                	.insn	2, 0xb454
8000ce40:	00840177          	.insn	4, 0x00840177
8000ce44:	0000                	.insn	2, 0x
8000ce46:	0000                	.insn	2, 0x
8000ce48:	c5c2                	.insn	2, 0xc5c2
8000ce4a:	86925b9b          	.insn	4, 0x86925b9b
8000ce4e:	0192865b          	.insn	4, 0x0192865b
8000ce52:	008c                	.insn	2, 0x008c
8000ce54:	0000                	.insn	2, 0x
8000ce56:	0000                	.insn	2, 0x
8000ce58:	5d3d                	.insn	2, 0x5d3d
8000ce5a:	c896                	.insn	2, 0xc896
8000ce5c:	53c5                	.insn	2, 0x53c5
8000ce5e:	c835                	.insn	2, 0xc835
8000ce60:	01ac                	.insn	2, 0x01ac
8000ce62:	0094                	.insn	2, 0x0094
8000ce64:	0000                	.insn	2, 0x
8000ce66:	0000                	.insn	2, 0x
8000ce68:	fa97a0b3          	.insn	4, 0xfa97a0b3
8000ce6c:	b45c                	.insn	2, 0xb45c
8000ce6e:	952a                	.insn	2, 0x952a
8000ce70:	009c01c7          	.insn	4, 0x009c01c7
8000ce74:	0000                	.insn	2, 0x
8000ce76:	0000                	.insn	2, 0x
8000ce78:	99a05fe3          	blez	s10,8000c816 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h0f360285d75974efE+0x1a>
8000ce7c:	9fbd                	.insn	2, 0x9fbd
8000ce7e:	de46                	.insn	2, 0xde46
8000ce80:	01e1                	.insn	2, 0x01e1
8000ce82:	00a4                	.insn	2, 0x00a4
8000ce84:	0000                	.insn	2, 0x
8000ce86:	0000                	.insn	2, 0x
8000ce88:	8c25                	.insn	2, 0x8c25
8000ce8a:	db39                	.insn	2, 0xdb39
8000ce8c:	c234                	.insn	2, 0xc234
8000ce8e:	01fca59b          	.insn	4, 0x01fca59b
8000ce92:	00ac                	.insn	2, 0x00ac
8000ce94:	0000                	.insn	2, 0x
8000ce96:	0000                	.insn	2, 0x
8000ce98:	9f5c                	.insn	2, 0x9f5c
8000ce9a:	a398                	.insn	2, 0xa398
8000ce9c:	9a72                	.insn	2, 0x9a72
8000ce9e:	f6c6                	.insn	2, 0xf6c6
8000cea0:	0216                	.insn	2, 0x0216
8000cea2:	00b4                	.insn	2, 0x00b4
8000cea4:	0000                	.insn	2, 0x
8000cea6:	0000                	.insn	2, 0x
8000cea8:	bece                	.insn	2, 0xbece
8000ceaa:	54e9                	.insn	2, 0x54e9
8000ceac:	b7dcbf53          	.insn	4, 0xb7dcbf53
8000ceb0:	0231                	.insn	2, 0x0231
8000ceb2:	00bc                	.insn	2, 0x00bc
8000ceb4:	0000                	.insn	2, 0x
8000ceb6:	0000                	.insn	2, 0x
8000ceb8:	41e2                	.insn	2, 0x41e2
8000ceba:	f222                	.insn	2, 0xf222
8000cebc:	88fcf317          	auipc	t1,0x88fcf
8000cec0:	024c                	.insn	2, 0x024c
8000cec2:	00c4                	.insn	2, 0x00c4
8000cec4:	0000                	.insn	2, 0x
8000cec6:	0000                	.insn	2, 0x
8000cec8:	78a5                	.insn	2, 0x78a5
8000ceca:	d35c                	.insn	2, 0xd35c
8000cecc:	cc20ce9b          	.insn	4, 0xcc20ce9b
8000ced0:	0266                	.insn	2, 0x0266
8000ced2:	00cc                	.insn	2, 0x00cc
8000ced4:	0000                	.insn	2, 0x
8000ced6:	0000                	.insn	2, 0x
8000ced8:	53df 7b21 5af3      	.insn	6, 0x5af37b2153df
8000cede:	9816                	.insn	2, 0x9816
8000cee0:	0281                	.insn	2, 0x0281
8000cee2:	00d4                	.insn	2, 0x00d4
8000cee4:	0000                	.insn	2, 0x
8000cee6:	0000                	.insn	2, 0x
8000cee8:	303a                	.insn	2, 0x303a
8000ceea:	971f b5dc e2a0      	.insn	6, 0xe2a0b5dc971f
8000cef0:	00dc029b          	.insn	4, 0x00dc029b
8000cef4:	0000                	.insn	2, 0x
8000cef6:	0000                	.insn	2, 0x
8000cef8:	b396                	.insn	2, 0xb396
8000cefa:	d1535ce3          	bge	t1,s5,8000cc12 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h3dfe3b6f3a552e94E+0x14a>
8000cefe:	a8d9                	.insn	2, 0xa8d9
8000cf00:	02b6                	.insn	2, 0x02b6
8000cf02:	00e4                	.insn	2, 0x00e4
8000cf04:	0000                	.insn	2, 0x
8000cf06:	0000                	.insn	2, 0x
8000cf08:	443c                	.insn	2, 0x443c
8000cf0a:	7cd9a4a7          	.insn	4, 0x7cd9a4a7
8000cf0e:	02d0fb9b          	.insn	4, 0x02d0fb9b
8000cf12:	00ec                	.insn	2, 0x00ec
8000cf14:	0000                	.insn	2, 0x
8000cf16:	0000                	.insn	2, 0x
8000cf18:	4410                	.insn	2, 0x4410
8000cf1a:	a7a4                	.insn	2, 0xa7a4
8000cf1c:	4c4c                	.insn	2, 0x4c4c
8000cf1e:	bb76                	.insn	2, 0xbb76
8000cf20:	00f402eb          	.insn	4, 0x00f402eb
8000cf24:	0000                	.insn	2, 0x
8000cf26:	0000                	.insn	2, 0x
8000cf28:	9c1a                	.insn	2, 0x9c1a
8000cf2a:	b640                	.insn	2, 0xb640
8000cf2c:	8bab8eef          	jal	t4,7ffc4fe6 <.Lline_table_start2+0x7ffc37ac>
8000cf30:	0306                	.insn	2, 0x0306
8000cf32:	00fc                	.insn	2, 0x00fc
8000cf34:	0000                	.insn	2, 0x
8000cf36:	0000                	.insn	2, 0x
8000cf38:	842c                	.insn	2, 0x842c
8000cf3a:	ef10a657          	.insn	4, 0xef10a657
8000cf3e:	d01f 0320 0104      	.insn	6, 0x01040320d01f
8000cf44:	0000                	.insn	2, 0x
8000cf46:	0000                	.insn	2, 0x
8000cf48:	3129                	.insn	2, 0x3129
8000cf4a:	e991                	.insn	2, 0xe991
8000cf4c:	a4e5                	.insn	2, 0xa4e5
8000cf4e:	9b10                	.insn	2, 0x9b10
8000cf50:	010c033b          	.insn	4, 0x010c033b
8000cf54:	0000                	.insn	2, 0x
8000cf56:	0000                	.insn	2, 0x
8000cf58:	0c9d                	.insn	2, 0x0c9d
8000cf5a:	a19c                	.insn	2, 0xa19c
8000cf5c:	e7109bfb          	.insn	4, 0xe7109bfb
8000cf60:	0355                	.insn	2, 0x0355
8000cf62:	0114                	.insn	2, 0x0114
8000cf64:	0000                	.insn	2, 0x
8000cf66:	0000                	.insn	2, 0x
8000cf68:	f429                	.insn	2, 0xf429
8000cf6a:	20d9623b          	.insn	4, 0x20d9623b
8000cf6e:	ac28                	.insn	2, 0xac28
8000cf70:	0370                	.insn	2, 0x0370
8000cf72:	011c                	.insn	2, 0x011c
8000cf74:	0000                	.insn	2, 0x
8000cf76:	0000                	.insn	2, 0x
8000cf78:	cf85                	.insn	2, 0xcf85
8000cf7a:	4b5e7aa7          	.insn	4, 0x4b5e7aa7
8000cf7e:	8044                	.insn	2, 0x8044
8000cf80:	0124038b          	.insn	4, 0x0124038b
8000cf84:	0000                	.insn	2, 0x
8000cf86:	0000                	.insn	2, 0x
8000cf88:	dd2d                	.insn	2, 0xdd2d
8000cf8a:	03ac                	.insn	2, 0x03ac
8000cf8c:	e440                	.insn	2, 0xe440
8000cf8e:	bf21                	.insn	2, 0xbf21
8000cf90:	03a5                	.insn	2, 0x03a5
8000cf92:	012c                	.insn	2, 0x012c
8000cf94:	0000                	.insn	2, 0x
8000cf96:	0000                	.insn	2, 0x
8000cf98:	5e44ff8f          	.insn	4, 0x5e44ff8f
8000cf9c:	8e679c2f          	.insn	4, 0x8e679c2f
8000cfa0:	03c0                	.insn	2, 0x03c0
8000cfa2:	0134                	.insn	2, 0x0134
8000cfa4:	0000                	.insn	2, 0x
8000cfa6:	0000                	.insn	2, 0x
8000cfa8:	b841                	.insn	2, 0xb841
8000cfaa:	9c8c                	.insn	2, 0x9c8c
8000cfac:	179d                	.insn	2, 0x179d
8000cfae:	03dad433          	.insn	4, 0x03dad433
8000cfb2:	013c                	.insn	2, 0x013c
8000cfb4:	0000                	.insn	2, 0x
8000cfb6:	0000                	.insn	2, 0x
8000cfb8:	1ba9                	.insn	2, 0x1ba9
8000cfba:	db92b4e3          	.insn	4, 0xdb92b4e3
8000cfbe:	9e19                	.insn	2, 0x9e19
8000cfc0:	03f5                	.insn	2, 0x03f5
8000cfc2:	0144                	.insn	2, 0x0144
8000cfc4:	0000                	.insn	2, 0x
8000cfc6:	0000                	.insn	2, 0x
8000cfc8:	77d9                	.insn	2, 0x77d9
8000cfca:	badf bf6e eb96      	.insn	6, 0xeb96bf6ebadf
8000cfd0:	014c040f          	.insn	4, 0x014c040f
8000cfd4:	0000                	.insn	2, 0x
	...

8000cfd8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.52>:
8000cfd8:	696c                	.insn	2, 0x696c
8000cfda:	7262                	.insn	2, 0x7262
8000cfdc:	7261                	.insn	2, 0x7261
8000cfde:	2f79                	.insn	2, 0x2f79
8000cfe0:	65726f63          	bltu	tp,s7,8000d63e <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276+0x3e>
8000cfe4:	6372732f          	.insn	4, 0x6372732f
8000cfe8:	6d756e2f          	.insn	4, 0x6d756e2f
8000cfec:	746c662f          	.insn	4, 0x746c662f
8000cff0:	6432                	.insn	2, 0x6432
8000cff2:	6365                	.insn	2, 0x6365
8000cff4:	7274732f          	.insn	4, 0x7274732f
8000cff8:	7461                	.insn	2, 0x7461
8000cffa:	6765                	.insn	2, 0x6765
8000cffc:	2f79                	.insn	2, 0x2f79
8000cffe:	73697267          	.insn	4, 0x73697267
8000d002:	2e75                	.insn	2, 0x2e75
8000d004:	7372                	.insn	2, 0x7372
	...

8000d008 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.53>:
8000d008:	cfd8                	.insn	2, 0xcfd8
8000d00a:	8000                	.insn	2, 0x8000
8000d00c:	002e                	.insn	2, 0x002e
8000d00e:	0000                	.insn	2, 0x
8000d010:	007d                	.insn	2, 0x007d
8000d012:	0000                	.insn	2, 0x
8000d014:	0015                	.insn	2, 0x0015
	...

8000d018 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.54>:
8000d018:	cfd8                	.insn	2, 0xcfd8
8000d01a:	8000                	.insn	2, 0x8000
8000d01c:	002e                	.insn	2, 0x002e
8000d01e:	0000                	.insn	2, 0x
8000d020:	00a9                	.insn	2, 0x00a9
8000d022:	0000                	.insn	2, 0x
8000d024:	0005                	.insn	2, 0x0005
	...

8000d028 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.55>:
8000d028:	cfd8                	.insn	2, 0xcfd8
8000d02a:	8000                	.insn	2, 0x8000
8000d02c:	002e                	.insn	2, 0x002e
8000d02e:	0000                	.insn	2, 0x
8000d030:	00aa                	.insn	2, 0x00aa
8000d032:	0000                	.insn	2, 0x
8000d034:	0005                	.insn	2, 0x0005
	...

8000d038 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.56>:
8000d038:	cfd8                	.insn	2, 0xcfd8
8000d03a:	8000                	.insn	2, 0x8000
8000d03c:	002e                	.insn	2, 0x002e
8000d03e:	0000                	.insn	2, 0x
8000d040:	000000ab          	.insn	4, 0x00ab
8000d044:	0005                	.insn	2, 0x0005
	...

8000d048 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.57>:
8000d048:	cfd8                	.insn	2, 0xcfd8
8000d04a:	8000                	.insn	2, 0x8000
8000d04c:	002e                	.insn	2, 0x002e
8000d04e:	0000                	.insn	2, 0x
8000d050:	00ae                	.insn	2, 0x00ae
8000d052:	0000                	.insn	2, 0x
8000d054:	0005                	.insn	2, 0x0005
	...

8000d058 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.58>:
8000d058:	7361                	.insn	2, 0x7361
8000d05a:	74726573          	.insn	4, 0x74726573
8000d05e:	6f69                	.insn	2, 0x6f69
8000d060:	206e                	.insn	2, 0x206e
8000d062:	6166                	.insn	2, 0x6166
8000d064:	6c69                	.insn	2, 0x6c69
8000d066:	6465                	.insn	2, 0x6465
8000d068:	203a                	.insn	2, 0x203a
8000d06a:	2e64                	.insn	2, 0x2e64
8000d06c:	616d                	.insn	2, 0x616d
8000d06e:	746e                	.insn	2, 0x746e
8000d070:	2b20                	.insn	2, 0x2b20
8000d072:	6420                	.insn	2, 0x6420
8000d074:	702e                	.insn	2, 0x702e
8000d076:	756c                	.insn	2, 0x756c
8000d078:	203c2073          	.insn	4, 0x203c2073
8000d07c:	3128                	.insn	2, 0x3128
8000d07e:	3c20                	.insn	2, 0x3c20
8000d080:	203c                	.insn	2, 0x203c
8000d082:	3136                	.insn	2, 0x3136
8000d084:	0029                	.insn	2, 0x0029
	...

8000d088 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.59>:
8000d088:	cfd8                	.insn	2, 0xcfd8
8000d08a:	8000                	.insn	2, 0x8000
8000d08c:	002e                	.insn	2, 0x002e
8000d08e:	0000                	.insn	2, 0x
8000d090:	000000af          	.insn	4, 0x00af
8000d094:	0005                	.insn	2, 0x0005
	...

8000d098 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.60>:
8000d098:	cfd8                	.insn	2, 0xcfd8
8000d09a:	8000                	.insn	2, 0x8000
8000d09c:	002e                	.insn	2, 0x002e
8000d09e:	0000                	.insn	2, 0x
8000d0a0:	010a                	.insn	2, 0x010a
8000d0a2:	0000                	.insn	2, 0x
8000d0a4:	0011                	.insn	2, 0x0011
	...

8000d0a8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.61>:
8000d0a8:	cfd8                	.insn	2, 0xcfd8
8000d0aa:	8000                	.insn	2, 0x8000
8000d0ac:	002e                	.insn	2, 0x002e
8000d0ae:	0000                	.insn	2, 0x
8000d0b0:	010d                	.insn	2, 0x010d
8000d0b2:	0000                	.insn	2, 0x
8000d0b4:	0009                	.insn	2, 0x0009
	...

8000d0b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.62>:
8000d0b8:	cfd8                	.insn	2, 0xcfd8
8000d0ba:	8000                	.insn	2, 0x8000
8000d0bc:	002e                	.insn	2, 0x002e
8000d0be:	0000                	.insn	2, 0x
8000d0c0:	0140                	.insn	2, 0x0140
8000d0c2:	0000                	.insn	2, 0x
8000d0c4:	0009                	.insn	2, 0x0009
	...

8000d0c8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.63>:
8000d0c8:	cfd8                	.insn	2, 0xcfd8
8000d0ca:	8000                	.insn	2, 0x8000
8000d0cc:	002e                	.insn	2, 0x002e
8000d0ce:	0000                	.insn	2, 0x
8000d0d0:	00ad                	.insn	2, 0x00ad
8000d0d2:	0000                	.insn	2, 0x
8000d0d4:	0005                	.insn	2, 0x0005
	...

8000d0d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.64>:
8000d0d8:	cfd8                	.insn	2, 0xcfd8
8000d0da:	8000                	.insn	2, 0x8000
8000d0dc:	002e                	.insn	2, 0x002e
8000d0de:	0000                	.insn	2, 0x
8000d0e0:	00ac                	.insn	2, 0x00ac
8000d0e2:	0000                	.insn	2, 0x
8000d0e4:	0005                	.insn	2, 0x0005
	...

8000d0e8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.65>:
8000d0e8:	7361                	.insn	2, 0x7361
8000d0ea:	74726573          	.insn	4, 0x74726573
8000d0ee:	6f69                	.insn	2, 0x6f69
8000d0f0:	206e                	.insn	2, 0x206e
8000d0f2:	6166                	.insn	2, 0x6166
8000d0f4:	6c69                	.insn	2, 0x6c69
8000d0f6:	6465                	.insn	2, 0x6465
8000d0f8:	203a                	.insn	2, 0x203a
8000d0fa:	6221                	.insn	2, 0x6221
8000d0fc:	6675                	.insn	2, 0x6675
8000d0fe:	692e                	.insn	2, 0x692e
8000d100:	6d655f73          	.insn	4, 0x6d655f73
8000d104:	7470                	.insn	2, 0x7470
8000d106:	2879                	.insn	2, 0x2879
8000d108:	0029                	.insn	2, 0x0029
	...

8000d10c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.66>:
8000d10c:	cfd8                	.insn	2, 0xcfd8
8000d10e:	8000                	.insn	2, 0x8000
8000d110:	002e                	.insn	2, 0x002e
8000d112:	0000                	.insn	2, 0x
8000d114:	01dc                	.insn	2, 0x01dc
8000d116:	0000                	.insn	2, 0x
8000d118:	0005                	.insn	2, 0x0005
	...

8000d11c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.67>:
8000d11c:	7361                	.insn	2, 0x7361
8000d11e:	74726573          	.insn	4, 0x74726573
8000d122:	6f69                	.insn	2, 0x6f69
8000d124:	206e                	.insn	2, 0x206e
8000d126:	6166                	.insn	2, 0x6166
8000d128:	6c69                	.insn	2, 0x6c69
8000d12a:	6465                	.insn	2, 0x6465
8000d12c:	203a                	.insn	2, 0x203a
8000d12e:	2e64                	.insn	2, 0x2e64
8000d130:	616d                	.insn	2, 0x616d
8000d132:	746e                	.insn	2, 0x746e
8000d134:	3c20                	.insn	2, 0x3c20
8000d136:	2820                	.insn	2, 0x2820
8000d138:	2031                	.insn	2, 0x2031
8000d13a:	3c3c                	.insn	2, 0x3c3c
8000d13c:	3620                	.insn	2, 0x3620
8000d13e:	2931                	.insn	2, 0x2931

8000d140 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.68>:
8000d140:	cfd8                	.insn	2, 0xcfd8
8000d142:	8000                	.insn	2, 0x8000
8000d144:	002e                	.insn	2, 0x002e
8000d146:	0000                	.insn	2, 0x
8000d148:	01dd                	.insn	2, 0x01dd
8000d14a:	0000                	.insn	2, 0x
8000d14c:	0005                	.insn	2, 0x0005
	...

8000d150 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.69>:
8000d150:	cfd8                	.insn	2, 0xcfd8
8000d152:	8000                	.insn	2, 0x8000
8000d154:	002e                	.insn	2, 0x002e
8000d156:	0000                	.insn	2, 0x
8000d158:	01de                	.insn	2, 0x01de
8000d15a:	0000                	.insn	2, 0x
8000d15c:	0005                	.insn	2, 0x0005
	...

8000d160 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.70>:
8000d160:	0001                	.insn	2, 0x0001
8000d162:	0000                	.insn	2, 0x
8000d164:	000a                	.insn	2, 0x000a
8000d166:	0000                	.insn	2, 0x
8000d168:	0064                	.insn	2, 0x0064
8000d16a:	0000                	.insn	2, 0x
8000d16c:	03e8                	.insn	2, 0x03e8
8000d16e:	0000                	.insn	2, 0x
8000d170:	2710                	.insn	2, 0x2710
8000d172:	0000                	.insn	2, 0x
8000d174:	86a0                	.insn	2, 0x86a0
8000d176:	0001                	.insn	2, 0x0001
8000d178:	4240                	.insn	2, 0x4240
8000d17a:	9680000f          	.insn	4, 0x9680000f
8000d17e:	0098                	.insn	2, 0x0098
8000d180:	e100                	.insn	2, 0xe100
8000d182:	05f5                	.insn	2, 0x05f5
8000d184:	ca00                	.insn	2, 0xca00
8000d186:	3b9a                	.insn	2, 0x3b9a

8000d188 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.71>:
8000d188:	cfd8                	.insn	2, 0xcfd8
8000d18a:	8000                	.insn	2, 0x8000
8000d18c:	002e                	.insn	2, 0x002e
8000d18e:	0000                	.insn	2, 0x
8000d190:	00000233          	add	tp,zero,zero
8000d194:	0011                	.insn	2, 0x0011
	...

8000d198 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.72>:
8000d198:	cfd8                	.insn	2, 0xcfd8
8000d19a:	8000                	.insn	2, 0x8000
8000d19c:	002e                	.insn	2, 0x002e
8000d19e:	0000                	.insn	2, 0x
8000d1a0:	0236                	.insn	2, 0x0236
8000d1a2:	0000                	.insn	2, 0x
8000d1a4:	0009                	.insn	2, 0x0009
	...

8000d1a8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.73>:
8000d1a8:	cfd8                	.insn	2, 0xcfd8
8000d1aa:	8000                	.insn	2, 0x8000
8000d1ac:	002e                	.insn	2, 0x002e
8000d1ae:	0000                	.insn	2, 0x
8000d1b0:	026c                	.insn	2, 0x026c
8000d1b2:	0000                	.insn	2, 0x
8000d1b4:	0009                	.insn	2, 0x0009
	...

8000d1b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.74>:
8000d1b8:	cfd8                	.insn	2, 0xcfd8
8000d1ba:	8000                	.insn	2, 0x8000
8000d1bc:	002e                	.insn	2, 0x002e
8000d1be:	0000                	.insn	2, 0x
8000d1c0:	000002e3          	beqz	zero,8000d9c4 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276+0x3c4>
8000d1c4:	0026                	.insn	2, 0x0026
	...

8000d1c8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.75>:
8000d1c8:	cfd8                	.insn	2, 0xcfd8
8000d1ca:	8000                	.insn	2, 0x8000
8000d1cc:	002e                	.insn	2, 0x002e
8000d1ce:	0000                	.insn	2, 0x
8000d1d0:	000002ef          	jal	t0,8000d1d0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.75+0x8>
8000d1d4:	0026                	.insn	2, 0x0026
	...

8000d1d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.76>:
8000d1d8:	cfd8                	.insn	2, 0xcfd8
8000d1da:	8000                	.insn	2, 0x8000
8000d1dc:	002e                	.insn	2, 0x002e
8000d1de:	0000                	.insn	2, 0x
8000d1e0:	02cc                	.insn	2, 0x02cc
8000d1e2:	0000                	.insn	2, 0x
8000d1e4:	0026                	.insn	2, 0x0026
	...

8000d1e8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.77>:
8000d1e8:	696c                	.insn	2, 0x696c
8000d1ea:	7262                	.insn	2, 0x7262
8000d1ec:	7261                	.insn	2, 0x7261
8000d1ee:	2f79                	.insn	2, 0x2f79
8000d1f0:	65726f63          	bltu	tp,s7,8000d84e <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276+0x24e>
8000d1f4:	6372732f          	.insn	4, 0x6372732f
8000d1f8:	6d756e2f          	.insn	4, 0x6d756e2f
8000d1fc:	746c662f          	.insn	4, 0x746c662f
8000d200:	6432                	.insn	2, 0x6432
8000d202:	6365                	.insn	2, 0x6365
8000d204:	646f6d2f          	.insn	4, 0x646f6d2f
8000d208:	722e                	.insn	2, 0x722e
8000d20a:	          	.insn	4, 0xd1e80073

8000d20c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.78>:
8000d20c:	d1e8                	.insn	2, 0xd1e8
8000d20e:	8000                	.insn	2, 0x8000
8000d210:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>
8000d214:	000000bb          	.insn	4, 0x00bb
8000d218:	0005                	.insn	2, 0x0005
	...

8000d21c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.79>:
8000d21c:	7361                	.insn	2, 0x7361
8000d21e:	74726573          	.insn	4, 0x74726573
8000d222:	6f69                	.insn	2, 0x6f69
8000d224:	206e                	.insn	2, 0x206e
8000d226:	6166                	.insn	2, 0x6166
8000d228:	6c69                	.insn	2, 0x6c69
8000d22a:	6465                	.insn	2, 0x6465
8000d22c:	203a                	.insn	2, 0x203a
8000d22e:	7562                	.insn	2, 0x7562
8000d230:	5b66                	.insn	2, 0x5b66
8000d232:	5d30                	.insn	2, 0x5d30
8000d234:	3e20                	.insn	2, 0x3e20
8000d236:	6220                	.insn	2, 0x6220
8000d238:	00273027          	.insn	4, 0x00273027

8000d23c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.80>:
8000d23c:	d1e8                	.insn	2, 0xd1e8
8000d23e:	8000                	.insn	2, 0x8000
8000d240:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>
8000d244:	00bc                	.insn	2, 0x00bc
8000d246:	0000                	.insn	2, 0x
8000d248:	0005                	.insn	2, 0x0005
	...

8000d24c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.81>:
8000d24c:	7361                	.insn	2, 0x7361
8000d24e:	74726573          	.insn	4, 0x74726573
8000d252:	6f69                	.insn	2, 0x6f69
8000d254:	206e                	.insn	2, 0x206e
8000d256:	6166                	.insn	2, 0x6166
8000d258:	6c69                	.insn	2, 0x6c69
8000d25a:	6465                	.insn	2, 0x6465
8000d25c:	203a                	.insn	2, 0x203a
8000d25e:	6170                	.insn	2, 0x6170
8000d260:	7472                	.insn	2, 0x7472
8000d262:	656c2e73          	.insn	4, 0x656c2e73
8000d266:	286e                	.insn	2, 0x286e
8000d268:	2029                	.insn	2, 0x2029
8000d26a:	3d3e                	.insn	2, 0x3d3e
8000d26c:	3420                	.insn	2, 0x3420
	...

8000d270 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.82>:
8000d270:	d1e8                	.insn	2, 0xd1e8
8000d272:	8000                	.insn	2, 0x8000
8000d274:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>
8000d278:	00bd                	.insn	2, 0x00bd
8000d27a:	0000                	.insn	2, 0x
8000d27c:	0005                	.insn	2, 0x0005
	...

8000d280 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.83>:
8000d280:	                	.insn	2, 0x302e

8000d281 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.84>:
8000d281:	2e30                	.insn	2, 0x2e30

8000d283 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.93>:
8000d283:	                	.insn	2, 0x2b2d

8000d284 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.94>:
8000d284:	          	.insn	4, 0x4e614e2b

8000d285 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.95>:
8000d285:	614e                	.insn	2, 0x614e
8000d287:	                	.insn	2, 0x694e

8000d288 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.96>:
8000d288:	6e69                	.insn	2, 0x6e69
8000d28a:	                	.insn	2, 0x3066

8000d28b <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.97>:
8000d28b:	                	.insn	2, 0x6130

8000d28c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.107>:
8000d28c:	7361                	.insn	2, 0x7361
8000d28e:	74726573          	.insn	4, 0x74726573
8000d292:	6f69                	.insn	2, 0x6f69
8000d294:	206e                	.insn	2, 0x206e
8000d296:	6166                	.insn	2, 0x6166
8000d298:	6c69                	.insn	2, 0x6c69
8000d29a:	6465                	.insn	2, 0x6465
8000d29c:	203a                	.insn	2, 0x203a
8000d29e:	7562                	.insn	2, 0x7562
8000d2a0:	2e66                	.insn	2, 0x2e66
8000d2a2:	656c                	.insn	2, 0x656c
8000d2a4:	286e                	.insn	2, 0x286e
8000d2a6:	2029                	.insn	2, 0x2029
8000d2a8:	3d3e                	.insn	2, 0x3d3e
8000d2aa:	6d20                	.insn	2, 0x6d20
8000d2ac:	7861                	.insn	2, 0x7861
8000d2ae:	656c                	.insn	2, 0x656c
8000d2b0:	006e                	.insn	2, 0x006e
	...

8000d2b4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.108>:
8000d2b4:	d1e8                	.insn	2, 0xd1e8
8000d2b6:	8000                	.insn	2, 0x8000
8000d2b8:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>
8000d2bc:	027e                	.insn	2, 0x027e
8000d2be:	0000                	.insn	2, 0x
8000d2c0:	000d                	.insn	2, 0x000d
	...

8000d2c4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.139>:
8000d2c4:	2820                	.insn	2, 0x2820
8000d2c6:	2031                	.insn	2, 0x2031
8000d2c8:	3c3c                	.insn	2, 0x3c3c
8000d2ca:	                	.insn	2, 0x2920

8000d2cb <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.140>:
8000d2cb:	                	.insn	2, 0x0129

8000d2cc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.141>:
8000d2cc:	0001                	.insn	2, 0x0001
8000d2ce:	0000                	.insn	2, 0x
8000d2d0:	0000                	.insn	2, 0x
8000d2d2:	0000                	.insn	2, 0x
8000d2d4:	d2c4                	.insn	2, 0xd2c4
8000d2d6:	8000                	.insn	2, 0x8000
8000d2d8:	00000007          	.insn	4, 0x0007
8000d2dc:	8000d2cb          	.insn	4, 0x8000d2cb
8000d2e0:	0001                	.insn	2, 0x0001
	...

8000d2e4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.210>:
8000d2e4:	                	.insn	2, 0x633a

8000d2e5 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.220>:
8000d2e5:	6c6c6163          	bltu	s8,t1,8000d9a7 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276+0x3a7>
8000d2e9:	6465                	.insn	2, 0x6465
8000d2eb:	6020                	.insn	2, 0x6020
8000d2ed:	6974704f          	.insn	4, 0x6974704f
8000d2f1:	3a3a6e6f          	jal	t3,800b3e93 <KALLOC_BUFFER+0xa3e93>
8000d2f5:	6e75                	.insn	2, 0x6e75
8000d2f7:	70617277          	.insn	4, 0x70617277
8000d2fb:	2928                	.insn	2, 0x2928
8000d2fd:	2060                	.insn	2, 0x2060
8000d2ff:	61206e6f          	jal	t3,80013911 <KALLOC_BUFFER+0x3911>
8000d303:	6020                	.insn	2, 0x6020
8000d305:	6f4e                	.insn	2, 0x6f4e
8000d307:	656e                	.insn	2, 0x656e
8000d309:	2060                	.insn	2, 0x2060
8000d30b:	6176                	.insn	2, 0x6176
8000d30d:	756c                	.insn	2, 0x756c
8000d30f:	                	.insn	2, 0x0165

8000d310 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.221>:
8000d310:	0001                	.insn	2, 0x0001
8000d312:	0000                	.insn	2, 0x
8000d314:	0000                	.insn	2, 0x
8000d316:	0000                	.insn	2, 0x
8000d318:	d2e4                	.insn	2, 0xd2e4
8000d31a:	8000                	.insn	2, 0x8000
8000d31c:	0001                	.insn	2, 0x0001
8000d31e:	0000                	.insn	2, 0x
8000d320:	d2e4                	.insn	2, 0xd2e4
8000d322:	8000                	.insn	2, 0x8000
8000d324:	0001                	.insn	2, 0x0001
	...

8000d328 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.222>:
8000d328:	6170                	.insn	2, 0x6170
8000d32a:	696e                	.insn	2, 0x696e
8000d32c:	64656b63          	bltu	a0,t1,8000d982 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276+0x382>
8000d330:	6120                	.insn	2, 0x6120
8000d332:	2074                	.insn	2, 0x2074

8000d334 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.223>:
8000d334:	0a3a                	.insn	2, 0x0a3a

8000d336 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.230>:
8000d336:	6220                	.insn	2, 0x6220
8000d338:	7475                	.insn	2, 0x7475
8000d33a:	7420                	.insn	2, 0x7420
8000d33c:	6568                	.insn	2, 0x6568
8000d33e:	6920                	.insn	2, 0x6920
8000d340:	646e                	.insn	2, 0x646e
8000d342:	7865                	.insn	2, 0x7865
8000d344:	6920                	.insn	2, 0x6920
8000d346:	          	.insn	4, 0xc7602073

8000d348 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.231>:
8000d348:	c760                	.insn	2, 0xc760
8000d34a:	8000                	.insn	2, 0x8000
8000d34c:	0020                	.insn	2, 0x0020
8000d34e:	0000                	.insn	2, 0x
8000d350:	d336                	.insn	2, 0xd336
8000d352:	8000                	.insn	2, 0x8000
8000d354:	0012                	.insn	2, 0x0012
	...

8000d358 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.242>:
8000d358:	0000                	.insn	2, 0x
8000d35a:	0000                	.insn	2, 0x
8000d35c:	0004                	.insn	2, 0x0004
8000d35e:	0000                	.insn	2, 0x
8000d360:	0004                	.insn	2, 0x0004
8000d362:	0000                	.insn	2, 0x
8000d364:	a0c0                	.insn	2, 0xa0c0
8000d366:	8000                	.insn	2, 0x8000

8000d368 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.243>:
8000d368:	3d3d                	.insn	2, 0x3d3d

8000d36a <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.244>:
8000d36a:	3d21                	.insn	2, 0x3d21

8000d36c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.245>:
8000d36c:	616d                	.insn	2, 0x616d
8000d36e:	6374                	.insn	2, 0x6374
8000d370:	6568                	.insn	2, 0x6568
8000d372:	          	.insn	4, 0x69722073

8000d373 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.247>:
8000d373:	7220                	.insn	2, 0x7220
8000d375:	6769                	.insn	2, 0x6769
8000d377:	7468                	.insn	2, 0x7468
8000d379:	2060                	.insn	2, 0x2060
8000d37b:	6166                	.insn	2, 0x6166
8000d37d:	6c69                	.insn	2, 0x6c69
8000d37f:	6465                	.insn	2, 0x6465
8000d381:	200a                	.insn	2, 0x200a
8000d383:	6c20                	.insn	2, 0x6c20
8000d385:	6665                	.insn	2, 0x6665
8000d387:	3a74                	.insn	2, 0x3a74
8000d389:	                	.insn	2, 0x0a20

8000d38a <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.248>:
8000d38a:	200a                	.insn	2, 0x200a
8000d38c:	6972                	.insn	2, 0x6972
8000d38e:	3a746867          	.insn	4, 0x3a746867
8000d392:	0020                	.insn	2, 0x0020

8000d394 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.249>:
8000d394:	c050                	.insn	2, 0xc050
8000d396:	8000                	.insn	2, 0x8000
8000d398:	0010                	.insn	2, 0x0010
8000d39a:	0000                	.insn	2, 0x
8000d39c:	8000d373          	.insn	4, 0x8000d373
8000d3a0:	00000017          	auipc	zero,0x0
8000d3a4:	d38a                	.insn	2, 0xd38a
8000d3a6:	8000                	.insn	2, 0x8000
8000d3a8:	0009                	.insn	2, 0x0009
	...

8000d3ac <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.251>:
8000d3ac:	200a                	.insn	2, 0x200a
8000d3ae:	6c20                	.insn	2, 0x6c20
8000d3b0:	6665                	.insn	2, 0x6665
8000d3b2:	3a74                	.insn	2, 0x3a74
8000d3b4:	0020                	.insn	2, 0x0020
	...

8000d3b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.252>:
8000d3b8:	c050                	.insn	2, 0xc050
8000d3ba:	8000                	.insn	2, 0x8000
8000d3bc:	0010                	.insn	2, 0x0010
8000d3be:	0000                	.insn	2, 0x
8000d3c0:	c090                	.insn	2, 0xc090
8000d3c2:	8000                	.insn	2, 0x8000
8000d3c4:	0010                	.insn	2, 0x0010
8000d3c6:	0000                	.insn	2, 0x
8000d3c8:	d3ac                	.insn	2, 0xd3ac
8000d3ca:	8000                	.insn	2, 0x8000
8000d3cc:	0009                	.insn	2, 0x0009
8000d3ce:	0000                	.insn	2, 0x
8000d3d0:	d38a                	.insn	2, 0xd38a
8000d3d2:	8000                	.insn	2, 0x8000
8000d3d4:	0009                	.insn	2, 0x0009
	...

8000d3d8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.255>:
8000d3d8:	203a                	.insn	2, 0x203a
	...

8000d3dc <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.256>:
8000d3dc:	0001                	.insn	2, 0x0001
8000d3de:	0000                	.insn	2, 0x
8000d3e0:	0000                	.insn	2, 0x
8000d3e2:	0000                	.insn	2, 0x
8000d3e4:	d3d8                	.insn	2, 0xd3d8
8000d3e6:	8000                	.insn	2, 0x8000
8000d3e8:	0002                	.insn	2, 0x0002
	...

8000d3ec <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.257>:
8000d3ec:	0000                	.insn	2, 0x
8000d3ee:	0000                	.insn	2, 0x
8000d3f0:	000c                	.insn	2, 0x000c
8000d3f2:	0000                	.insn	2, 0x
8000d3f4:	0004                	.insn	2, 0x0004
8000d3f6:	0000                	.insn	2, 0x
8000d3f8:	72f4                	.insn	2, 0x72f4
8000d3fa:	8000                	.insn	2, 0x8000
8000d3fc:	758c                	.insn	2, 0x758c
8000d3fe:	8000                	.insn	2, 0x8000
8000d400:	7e78                	.insn	2, 0x7e78
8000d402:	8000                	.insn	2, 0x8000

8000d404 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.259>:
8000d404:	7b20                	.insn	2, 0x7b20
8000d406:	                	.insn	2, 0x2c20

8000d407 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.260>:
8000d407:	202c                	.insn	2, 0x202c

8000d409 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.261>:
8000d409:	7b20                	.insn	2, 0x7b20
8000d40b:	                	.insn	2, 0x2c0a

8000d40c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.262>:
8000d40c:	0a2c                	.insn	2, 0x0a2c

8000d40e <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.266>:
8000d40e:	                	.insn	2, 0x207d

8000d40f <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.267>:
8000d40f:	7d20                	.insn	2, 0x7d20

8000d411 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.293>:
8000d411:	7830                	.insn	2, 0x7830

8000d413 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.296>:
8000d413:	3030                	.insn	2, 0x3030
8000d415:	3130                	.insn	2, 0x3130
8000d417:	3230                	.insn	2, 0x3230
8000d419:	3330                	.insn	2, 0x3330
8000d41b:	3430                	.insn	2, 0x3430
8000d41d:	3530                	.insn	2, 0x3530
8000d41f:	3630                	.insn	2, 0x3630
8000d421:	3730                	.insn	2, 0x3730
8000d423:	3830                	.insn	2, 0x3830
8000d425:	3930                	.insn	2, 0x3930
8000d427:	3031                	.insn	2, 0x3031
8000d429:	3131                	.insn	2, 0x3131
8000d42b:	3231                	.insn	2, 0x3231
8000d42d:	3331                	.insn	2, 0x3331
8000d42f:	3431                	.insn	2, 0x3431
8000d431:	3531                	.insn	2, 0x3531
8000d433:	3631                	.insn	2, 0x3631
8000d435:	3731                	.insn	2, 0x3731
8000d437:	3831                	.insn	2, 0x3831
8000d439:	3931                	.insn	2, 0x3931
8000d43b:	3032                	.insn	2, 0x3032
8000d43d:	3132                	.insn	2, 0x3132
8000d43f:	3232                	.insn	2, 0x3232
8000d441:	3332                	.insn	2, 0x3332
8000d443:	3432                	.insn	2, 0x3432
8000d445:	3532                	.insn	2, 0x3532
8000d447:	3632                	.insn	2, 0x3632
8000d449:	3732                	.insn	2, 0x3732
8000d44b:	3832                	.insn	2, 0x3832
8000d44d:	3932                	.insn	2, 0x3932
8000d44f:	31333033          	.insn	4, 0x31333033
8000d453:	33333233          	.insn	4, 0x33333233
8000d457:	35333433          	.insn	4, 0x35333433
8000d45b:	37333633          	.insn	4, 0x37333633
8000d45f:	39333833          	.insn	4, 0x39333833
8000d463:	3034                	.insn	2, 0x3034
8000d465:	3134                	.insn	2, 0x3134
8000d467:	3234                	.insn	2, 0x3234
8000d469:	3334                	.insn	2, 0x3334
8000d46b:	3434                	.insn	2, 0x3434
8000d46d:	3534                	.insn	2, 0x3534
8000d46f:	3634                	.insn	2, 0x3634
8000d471:	3734                	.insn	2, 0x3734
8000d473:	3834                	.insn	2, 0x3834
8000d475:	3934                	.insn	2, 0x3934
8000d477:	3035                	.insn	2, 0x3035
8000d479:	3135                	.insn	2, 0x3135
8000d47b:	3235                	.insn	2, 0x3235
8000d47d:	3335                	.insn	2, 0x3335
8000d47f:	3435                	.insn	2, 0x3435
8000d481:	3535                	.insn	2, 0x3535
8000d483:	3635                	.insn	2, 0x3635
8000d485:	3735                	.insn	2, 0x3735
8000d487:	3835                	.insn	2, 0x3835
8000d489:	3935                	.insn	2, 0x3935
8000d48b:	3036                	.insn	2, 0x3036
8000d48d:	3136                	.insn	2, 0x3136
8000d48f:	3236                	.insn	2, 0x3236
8000d491:	3336                	.insn	2, 0x3336
8000d493:	3436                	.insn	2, 0x3436
8000d495:	3536                	.insn	2, 0x3536
8000d497:	3636                	.insn	2, 0x3636
8000d499:	3736                	.insn	2, 0x3736
8000d49b:	3836                	.insn	2, 0x3836
8000d49d:	3936                	.insn	2, 0x3936
8000d49f:	31373037          	lui	zero,0x31373
8000d4a3:	33373237          	lui	tp,0x33373
8000d4a7:	35373437          	lui	s0,0x35373
8000d4ab:	37373637          	lui	a2,0x37373
8000d4af:	39373837          	lui	a6,0x39373
8000d4b3:	3038                	.insn	2, 0x3038
8000d4b5:	3138                	.insn	2, 0x3138
8000d4b7:	3238                	.insn	2, 0x3238
8000d4b9:	3338                	.insn	2, 0x3338
8000d4bb:	3438                	.insn	2, 0x3438
8000d4bd:	3538                	.insn	2, 0x3538
8000d4bf:	3638                	.insn	2, 0x3638
8000d4c1:	3738                	.insn	2, 0x3738
8000d4c3:	3838                	.insn	2, 0x3838
8000d4c5:	3938                	.insn	2, 0x3938
8000d4c7:	3039                	.insn	2, 0x3039
8000d4c9:	3139                	.insn	2, 0x3139
8000d4cb:	3239                	.insn	2, 0x3239
8000d4cd:	3339                	.insn	2, 0x3339
8000d4cf:	3439                	.insn	2, 0x3439
8000d4d1:	3539                	.insn	2, 0x3539
8000d4d3:	3639                	.insn	2, 0x3639
8000d4d5:	3739                	.insn	2, 0x3739
8000d4d7:	3839                	.insn	2, 0x3839
8000d4d9:	3939                	.insn	2, 0x3939

8000d4db <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.303>:
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
8000d4fb:	3030                	.insn	2, 0x3030
8000d4fd:	3030                	.insn	2, 0x3030
8000d4ff:	3030                	.insn	2, 0x3030
8000d501:	3030                	.insn	2, 0x3030
8000d503:	3030                	.insn	2, 0x3030
8000d505:	3030                	.insn	2, 0x3030
8000d507:	3030                	.insn	2, 0x3030
8000d509:	3030                	.insn	2, 0x3030
8000d50b:	3030                	.insn	2, 0x3030
8000d50d:	3030                	.insn	2, 0x3030
8000d50f:	3030                	.insn	2, 0x3030
8000d511:	3030                	.insn	2, 0x3030
8000d513:	3030                	.insn	2, 0x3030
8000d515:	3030                	.insn	2, 0x3030
8000d517:	3030                	.insn	2, 0x3030
8000d519:	3030                	.insn	2, 0x3030

8000d51b <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.418>:
8000d51b:	696c                	.insn	2, 0x696c
8000d51d:	7262                	.insn	2, 0x7262
8000d51f:	7261                	.insn	2, 0x7261
8000d521:	2f79                	.insn	2, 0x2f79
8000d523:	65726f63          	bltu	tp,s7,8000db81 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276+0x581>
8000d527:	6372732f          	.insn	4, 0x6372732f
8000d52b:	6d756e2f          	.insn	4, 0x6d756e2f
8000d52f:	6769622f          	.insn	4, 0x6769622f
8000d533:	756e                	.insn	2, 0x756e
8000d535:	2e6d                	.insn	2, 0x2e6d
8000d537:	7372                	.insn	2, 0x7372
8000d539:	0000                	.insn	2, 0x
	...

8000d53c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.420>:
8000d53c:	8000d51b          	.insn	4, 0x8000d51b
8000d540:	001e                	.insn	2, 0x001e
8000d542:	0000                	.insn	2, 0x
8000d544:	000001ab          	.insn	4, 0x01ab
8000d548:	0001                	.insn	2, 0x0001
	...

8000d54c <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.421>:
8000d54c:	7361                	.insn	2, 0x7361
8000d54e:	74726573          	.insn	4, 0x74726573
8000d552:	6f69                	.insn	2, 0x6f69
8000d554:	206e                	.insn	2, 0x206e
8000d556:	6166                	.insn	2, 0x6166
8000d558:	6c69                	.insn	2, 0x6c69
8000d55a:	6465                	.insn	2, 0x6465
8000d55c:	203a                	.insn	2, 0x203a
8000d55e:	6f6e                	.insn	2, 0x6f6e
8000d560:	6f62                	.insn	2, 0x6f62
8000d562:	7272                	.insn	2, 0x7272
8000d564:	          	jal	a4,80024c9a <KALLOC_BUFFER+0x14c9a>

8000d566 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.422>:
8000d566:	7361                	.insn	2, 0x7361
8000d568:	74726573          	.insn	4, 0x74726573
8000d56c:	6f69                	.insn	2, 0x6f69
8000d56e:	206e                	.insn	2, 0x206e
8000d570:	6166                	.insn	2, 0x6166
8000d572:	6c69                	.insn	2, 0x6c69
8000d574:	6465                	.insn	2, 0x6465
8000d576:	203a                	.insn	2, 0x203a
8000d578:	6964                	.insn	2, 0x6964
8000d57a:	73746967          	.insn	4, 0x73746967
8000d57e:	3c20                	.insn	2, 0x3c20
8000d580:	3420                	.insn	2, 0x3420
8000d582:	                	.insn	2, 0x6130

8000d583 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.423>:
8000d583:	7361                	.insn	2, 0x7361
8000d585:	74726573          	.insn	4, 0x74726573
8000d589:	6f69                	.insn	2, 0x6f69
8000d58b:	206e                	.insn	2, 0x206e
8000d58d:	6166                	.insn	2, 0x6166
8000d58f:	6c69                	.insn	2, 0x6c69
8000d591:	6465                	.insn	2, 0x6465
8000d593:	203a                	.insn	2, 0x203a
8000d595:	6568746f          	jal	s0,80094beb <KALLOC_BUFFER+0x84beb>
8000d599:	2072                	.insn	2, 0x2072
8000d59b:	203e                	.insn	2, 0x203e
8000d59d:	                	.insn	2, 0x6130

8000d59e <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.445>:
8000d59e:	7461                	.insn	2, 0x7461
8000d5a0:	6574                	.insn	2, 0x6574
8000d5a2:	706d                	.insn	2, 0x706d
8000d5a4:	2074                	.insn	2, 0x2074
8000d5a6:	6f74                	.insn	2, 0x6f74
8000d5a8:	6420                	.insn	2, 0x6420
8000d5aa:	7669                	.insn	2, 0x7669
8000d5ac:	6469                	.insn	2, 0x6469
8000d5ae:	2065                	.insn	2, 0x2065
8000d5b0:	7962                	.insn	2, 0x7962
8000d5b2:	7a20                	.insn	2, 0x7a20
8000d5b4:	7265                	.insn	2, 0x7265
8000d5b6:	          	j	7ffee30e <.Lline_table_start2+0x7ffecad4>

8000d5b8 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.446>:
8000d5b8:	d59e                	.insn	2, 0xd59e
8000d5ba:	8000                	.insn	2, 0x8000
8000d5bc:	0019                	.insn	2, 0x0019
	...

8000d5c0 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.489>:
8000d5c0:	6f20                	.insn	2, 0x6f20
8000d5c2:	7475                	.insn	2, 0x7475
8000d5c4:	6f20                	.insn	2, 0x6f20
8000d5c6:	2066                	.insn	2, 0x2066
8000d5c8:	6172                	.insn	2, 0x6172
8000d5ca:	676e                	.insn	2, 0x676e
8000d5cc:	2065                	.insn	2, 0x2065
8000d5ce:	6f66                	.insn	2, 0x6f66
8000d5d0:	2072                	.insn	2, 0x2072
8000d5d2:	63696c73          	.insn	4, 0x63696c73
8000d5d6:	2065                	.insn	2, 0x2065
8000d5d8:	6c20666f          	jal	a2,80013c9a <KALLOC_BUFFER+0x3c9a>
8000d5dc:	6e65                	.insn	2, 0x6e65
8000d5de:	20687467          	.insn	4, 0x20687467
	...

8000d5e4 <.Lanon.c399944bd594a9ed0ed5137ad23e4d15.492>:
8000d5e4:	c070                	.insn	2, 0xc070
8000d5e6:	8000                	.insn	2, 0x8000
8000d5e8:	0010                	.insn	2, 0x0010
8000d5ea:	0000                	.insn	2, 0x
8000d5ec:	d5c0                	.insn	2, 0xd5c0
8000d5ee:	8000                	.insn	2, 0x8000
8000d5f0:	0022                	.insn	2, 0x0022
	...

8000d5f4 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE>:
8000d5f4:	d368                	.insn	2, 0xd368
8000d5f6:	8000                	.insn	2, 0x8000
8000d5f8:	d36a                	.insn	2, 0xd36a
8000d5fa:	8000                	.insn	2, 0x8000
8000d5fc:	d36c                	.insn	2, 0xd36c
8000d5fe:	8000                	.insn	2, 0x8000

8000d600 <.Lswitch.table._ZN4core9panicking19assert_failed_inner17h9b3021f20b1eb58eE.276>:
8000d600:	0002                	.insn	2, 0x0002
8000d602:	0000                	.insn	2, 0x
8000d604:	0002                	.insn	2, 0x0002
8000d606:	0000                	.insn	2, 0x
8000d608:	00000007          	.insn	4, 0x0007

Disassembly of section .eh_frame:

8000d610 <__bss_start-0xf0c>:
8000d610:	0010                	.insn	2, 0x0010
8000d612:	0000                	.insn	2, 0x
8000d614:	0000                	.insn	2, 0x
8000d616:	0000                	.insn	2, 0x
8000d618:	7a01                	.insn	2, 0x7a01
8000d61a:	0052                	.insn	2, 0x0052
8000d61c:	7c01                	.insn	2, 0x7c01
8000d61e:	0101                	.insn	2, 0x0101
8000d620:	00020c1b          	.insn	4, 0x00020c1b
8000d624:	0010                	.insn	2, 0x0010
8000d626:	0000                	.insn	2, 0x
8000d628:	0018                	.insn	2, 0x0018
8000d62a:	0000                	.insn	2, 0x
8000d62c:	4d68                	.insn	2, 0x4d68
8000d62e:	ffff                	.insn	2, 0xffff
8000d630:	0008                	.insn	2, 0x0008
8000d632:	0000                	.insn	2, 0x
8000d634:	0000                	.insn	2, 0x
8000d636:	0000                	.insn	2, 0x
8000d638:	001c                	.insn	2, 0x001c
8000d63a:	0000                	.insn	2, 0x
8000d63c:	002c                	.insn	2, 0x002c
8000d63e:	0000                	.insn	2, 0x
8000d640:	4d5c                	.insn	2, 0x4d5c
8000d642:	ffff                	.insn	2, 0xffff
8000d644:	0044                	.insn	2, 0x0044
8000d646:	0000                	.insn	2, 0x
8000d648:	4400                	.insn	2, 0x4400
8000d64a:	200e                	.insn	2, 0x200e
8000d64c:	8148                	.insn	2, 0x8148
8000d64e:	8801                	.insn	2, 0x8801
8000d650:	4402                	.insn	2, 0x4402
8000d652:	080c                	.insn	2, 0x080c
8000d654:	0000                	.insn	2, 0x
8000d656:	0000                	.insn	2, 0x
8000d658:	001c                	.insn	2, 0x001c
8000d65a:	0000                	.insn	2, 0x
8000d65c:	004c                	.insn	2, 0x004c
8000d65e:	0000                	.insn	2, 0x
8000d660:	4d80                	.insn	2, 0x4d80
8000d662:	ffff                	.insn	2, 0xffff
8000d664:	0028                	.insn	2, 0x0028
8000d666:	0000                	.insn	2, 0x
8000d668:	4400                	.insn	2, 0x4400
8000d66a:	100e                	.insn	2, 0x100e
8000d66c:	8148                	.insn	2, 0x8148
8000d66e:	8801                	.insn	2, 0x8801
8000d670:	4402                	.insn	2, 0x4402
8000d672:	080c                	.insn	2, 0x080c
8000d674:	0000                	.insn	2, 0x
8000d676:	0000                	.insn	2, 0x
8000d678:	001c                	.insn	2, 0x001c
8000d67a:	0000                	.insn	2, 0x
8000d67c:	006c                	.insn	2, 0x006c
8000d67e:	0000                	.insn	2, 0x
8000d680:	4d88                	.insn	2, 0x4d88
8000d682:	ffff                	.insn	2, 0xffff
8000d684:	0024                	.insn	2, 0x0024
8000d686:	0000                	.insn	2, 0x
8000d688:	4400                	.insn	2, 0x4400
8000d68a:	100e                	.insn	2, 0x100e
8000d68c:	8148                	.insn	2, 0x8148
8000d68e:	8801                	.insn	2, 0x8801
8000d690:	4402                	.insn	2, 0x4402
8000d692:	080c                	.insn	2, 0x080c
8000d694:	0000                	.insn	2, 0x
8000d696:	0000                	.insn	2, 0x
8000d698:	004c                	.insn	2, 0x004c
8000d69a:	0000                	.insn	2, 0x
8000d69c:	008c                	.insn	2, 0x008c
8000d69e:	0000                	.insn	2, 0x
8000d6a0:	4d8c                	.insn	2, 0x4d8c
8000d6a2:	ffff                	.insn	2, 0xffff
8000d6a4:	0ec0                	.insn	2, 0x0ec0
8000d6a6:	0000                	.insn	2, 0x
8000d6a8:	4400                	.insn	2, 0x4400
8000d6aa:	900e                	.insn	2, 0x900e
8000d6ac:	7402                	.insn	2, 0x7402
8000d6ae:	0181                	.insn	2, 0x0181
8000d6b0:	0288                	.insn	2, 0x0288
8000d6b2:	0389                	.insn	2, 0x0389
8000d6b4:	0492                	.insn	2, 0x0492
8000d6b6:	06940593          	addi	a1,s0,105 # 35373069 <.Lline_table_start2+0x3537182f>
8000d6ba:	0795                	.insn	2, 0x0795
8000d6bc:	0896                	.insn	2, 0x0896
8000d6be:	0a980997          	auipc	s3,0xa980
8000d6c2:	0b99                	.insn	2, 0x0b99
8000d6c4:	0c9a                	.insn	2, 0x0c9a
8000d6c6:	0c440d9b          	.insn	4, 0x0c440d9b
8000d6ca:	0008                	.insn	2, 0x0008
8000d6cc:	030a                	.insn	2, 0x030a
8000d6ce:	0d00                	.insn	2, 0x0d00
8000d6d0:	020c                	.insn	2, 0x020c
8000d6d2:	0290                	.insn	2, 0x0290
8000d6d4:	c174                	.insn	2, 0xc174
8000d6d6:	c9c8                	.insn	2, 0xc9c8
8000d6d8:	d3d2                	.insn	2, 0xd3d2
8000d6da:	d5d4                	.insn	2, 0xd5d4
8000d6dc:	d7d6                	.insn	2, 0xd7d6
8000d6de:	d9d8                	.insn	2, 0xd9d8
8000d6e0:	dbda                	.insn	2, 0xdbda
8000d6e2:	0e44                	.insn	2, 0x0e44
8000d6e4:	4400                	.insn	2, 0x4400
8000d6e6:	004c000b          	.insn	4, 0x004c000b
8000d6ea:	0000                	.insn	2, 0x
8000d6ec:	00dc                	.insn	2, 0x00dc
8000d6ee:	0000                	.insn	2, 0x
8000d6f0:	5bfc                	.insn	2, 0x5bfc
8000d6f2:	ffff                	.insn	2, 0xffff
8000d6f4:	0f68                	.insn	2, 0x0f68
8000d6f6:	0000                	.insn	2, 0x
8000d6f8:	4400                	.insn	2, 0x4400
8000d6fa:	800e                	.insn	2, 0x800e
8000d6fc:	0181740b          	.insn	4, 0x0181740b
8000d700:	0288                	.insn	2, 0x0288
8000d702:	0389                	.insn	2, 0x0389
8000d704:	0492                	.insn	2, 0x0492
8000d706:	06940593          	addi	a1,s0,105
8000d70a:	0795                	.insn	2, 0x0795
8000d70c:	0896                	.insn	2, 0x0896
8000d70e:	0a980997          	auipc	s3,0xa980
8000d712:	0b99                	.insn	2, 0x0b99
8000d714:	0c9a                	.insn	2, 0x0c9a
8000d716:	0c440d9b          	.insn	4, 0x0c440d9b
8000d71a:	0008                	.insn	2, 0x0008
8000d71c:	030a                	.insn	2, 0x030a
8000d71e:	0d64                	.insn	2, 0x0d64
8000d720:	020c                	.insn	2, 0x020c
8000d722:	0b80                	.insn	2, 0x0b80
8000d724:	c174                	.insn	2, 0xc174
8000d726:	c9c8                	.insn	2, 0xc9c8
8000d728:	d3d2                	.insn	2, 0xd3d2
8000d72a:	d5d4                	.insn	2, 0xd5d4
8000d72c:	d7d6                	.insn	2, 0xd7d6
8000d72e:	d9d8                	.insn	2, 0xd9d8
8000d730:	dbda                	.insn	2, 0xdbda
8000d732:	0e44                	.insn	2, 0x0e44
8000d734:	4400                	.insn	2, 0x4400
8000d736:	004c000b          	.insn	4, 0x004c000b
8000d73a:	0000                	.insn	2, 0x
8000d73c:	012c                	.insn	2, 0x012c
8000d73e:	0000                	.insn	2, 0x
8000d740:	6b14                	.insn	2, 0x6b14
8000d742:	ffff                	.insn	2, 0xffff
8000d744:	0df0                	.insn	2, 0x0df0
8000d746:	0000                	.insn	2, 0x
8000d748:	4400                	.insn	2, 0x4400
8000d74a:	900e                	.insn	2, 0x900e
8000d74c:	01817407          	.insn	4, 0x01817407
8000d750:	0288                	.insn	2, 0x0288
8000d752:	0389                	.insn	2, 0x0389
8000d754:	0492                	.insn	2, 0x0492
8000d756:	06940593          	addi	a1,s0,105
8000d75a:	0795                	.insn	2, 0x0795
8000d75c:	0896                	.insn	2, 0x0896
8000d75e:	0a980997          	auipc	s3,0xa980
8000d762:	0b99                	.insn	2, 0x0b99
8000d764:	0c9a                	.insn	2, 0x0c9a
8000d766:	0c440d9b          	.insn	4, 0x0c440d9b
8000d76a:	0008                	.insn	2, 0x0008
8000d76c:	030a                	.insn	2, 0x030a
8000d76e:	0bcc                	.insn	2, 0x0bcc
8000d770:	020c                	.insn	2, 0x020c
8000d772:	0790                	.insn	2, 0x0790
8000d774:	c174                	.insn	2, 0xc174
8000d776:	c9c8                	.insn	2, 0xc9c8
8000d778:	d3d2                	.insn	2, 0xd3d2
8000d77a:	d5d4                	.insn	2, 0xd5d4
8000d77c:	d7d6                	.insn	2, 0xd7d6
8000d77e:	d9d8                	.insn	2, 0xd9d8
8000d780:	dbda                	.insn	2, 0xdbda
8000d782:	0e44                	.insn	2, 0x0e44
8000d784:	4400                	.insn	2, 0x4400
8000d786:	004c000b          	.insn	4, 0x004c000b
8000d78a:	0000                	.insn	2, 0x
8000d78c:	017c                	.insn	2, 0x017c
8000d78e:	0000                	.insn	2, 0x
8000d790:	78b4                	.insn	2, 0x78b4
8000d792:	ffff                	.insn	2, 0xffff
8000d794:	1074                	.insn	2, 0x1074
8000d796:	0000                	.insn	2, 0x
8000d798:	4400                	.insn	2, 0x4400
8000d79a:	c00e                	.insn	2, 0xc00e
8000d79c:	7401                	.insn	2, 0x7401
8000d79e:	0181                	.insn	2, 0x0181
8000d7a0:	0288                	.insn	2, 0x0288
8000d7a2:	0389                	.insn	2, 0x0389
8000d7a4:	0492                	.insn	2, 0x0492
8000d7a6:	06940593          	addi	a1,s0,105
8000d7aa:	0795                	.insn	2, 0x0795
8000d7ac:	0896                	.insn	2, 0x0896
8000d7ae:	0a980997          	auipc	s3,0xa980
8000d7b2:	0b99                	.insn	2, 0x0b99
8000d7b4:	0c9a                	.insn	2, 0x0c9a
8000d7b6:	0c440d9b          	.insn	4, 0x0c440d9b
8000d7ba:	0008                	.insn	2, 0x0008
8000d7bc:	030a                	.insn	2, 0x030a
8000d7be:	0ed0                	.insn	2, 0x0ed0
8000d7c0:	020c                	.insn	2, 0x020c
8000d7c2:	01c0                	.insn	2, 0x01c0
8000d7c4:	c174                	.insn	2, 0xc174
8000d7c6:	c9c8                	.insn	2, 0xc9c8
8000d7c8:	d3d2                	.insn	2, 0xd3d2
8000d7ca:	d5d4                	.insn	2, 0xd5d4
8000d7cc:	d7d6                	.insn	2, 0xd7d6
8000d7ce:	d9d8                	.insn	2, 0xd9d8
8000d7d0:	dbda                	.insn	2, 0xdbda
8000d7d2:	0e44                	.insn	2, 0x0e44
8000d7d4:	4400                	.insn	2, 0x4400
8000d7d6:	0054000b          	.insn	4, 0x0054000b
8000d7da:	0000                	.insn	2, 0x
8000d7dc:	01cc                	.insn	2, 0x01cc
8000d7de:	0000                	.insn	2, 0x
8000d7e0:	88d8                	.insn	2, 0x88d8
8000d7e2:	ffff                	.insn	2, 0xffff
8000d7e4:	08a8                	.insn	2, 0x08a8
8000d7e6:	0000                	.insn	2, 0x
8000d7e8:	4400                	.insn	2, 0x4400
8000d7ea:	700e                	.insn	2, 0x700e
8000d7ec:	8174                	.insn	2, 0x8174
8000d7ee:	8801                	.insn	2, 0x8801
8000d7f0:	8902                	.insn	2, 0x8902
8000d7f2:	93049203          	lh	tp,-1744(s1)
8000d7f6:	9405                	.insn	2, 0x9405
8000d7f8:	9506                	.insn	2, 0x9506
8000d7fa:	97089607          	.insn	4, 0x97089607
8000d7fe:	9809                	.insn	2, 0x9809
8000d800:	990a                	.insn	2, 0x990a
8000d802:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000d806:	440d                	.insn	2, 0x440d
8000d808:	080c                	.insn	2, 0x080c
8000d80a:	0a00                	.insn	2, 0x0a00
8000d80c:	0c03a803          	lw	a6,192(t2) # 40000c0 <.Lline_table_start2+0x3ffe886>
8000d810:	7002                	.insn	2, 0x7002
8000d812:	0b44                	.insn	2, 0x0b44
8000d814:	030a                	.insn	2, 0x030a
8000d816:	03b8                	.insn	2, 0x03b8
8000d818:	020c                	.insn	2, 0x020c
8000d81a:	7470                	.insn	2, 0x7470
8000d81c:	c8c1                	.insn	2, 0xc8c1
8000d81e:	d2c9                	.insn	2, 0xd2c9
8000d820:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000d824:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000d828:	000e44db          	.insn	4, 0x000e44db
8000d82c:	0b44                	.insn	2, 0x0b44
8000d82e:	0000                	.insn	2, 0x
8000d830:	0040                	.insn	2, 0x0040
8000d832:	0000                	.insn	2, 0x
8000d834:	0224                	.insn	2, 0x0224
8000d836:	0000                	.insn	2, 0x
8000d838:	9128                	.insn	2, 0x9128
8000d83a:	ffff                	.insn	2, 0xffff
8000d83c:	02e4                	.insn	2, 0x02e4
8000d83e:	0000                	.insn	2, 0x
8000d840:	4400                	.insn	2, 0x4400
8000d842:	300e                	.insn	2, 0x300e
8000d844:	8168                	.insn	2, 0x8168
8000d846:	8801                	.insn	2, 0x8801
8000d848:	8902                	.insn	2, 0x8902
8000d84a:	93049203          	lh	tp,-1744(s1)
8000d84e:	9405                	.insn	2, 0x9405
8000d850:	9506                	.insn	2, 0x9506
8000d852:	97089607          	.insn	4, 0x97089607
8000d856:	9809                	.insn	2, 0x9809
8000d858:	440a                	.insn	2, 0x440a
8000d85a:	080c                	.insn	2, 0x080c
8000d85c:	0a00                	.insn	2, 0x0a00
8000d85e:	0c01ac03          	lw	s8,192(gp) # ffb3d0c0 <KALLOC_BUFFER+0x7fb2d0c0>
8000d862:	3002                	.insn	2, 0x3002
8000d864:	c168                	.insn	2, 0xc168
8000d866:	c9c8                	.insn	2, 0xc9c8
8000d868:	d3d2                	.insn	2, 0xd3d2
8000d86a:	d5d4                	.insn	2, 0xd5d4
8000d86c:	d7d6                	.insn	2, 0xd7d6
8000d86e:	44d8                	.insn	2, 0x44d8
8000d870:	000e                	.insn	2, 0x000e
8000d872:	0b44                	.insn	2, 0x0b44
8000d874:	0044                	.insn	2, 0x0044
8000d876:	0000                	.insn	2, 0x
8000d878:	0268                	.insn	2, 0x0268
8000d87a:	0000                	.insn	2, 0x
8000d87c:	93c8                	.insn	2, 0x93c8
8000d87e:	ffff                	.insn	2, 0xffff
8000d880:	0190                	.insn	2, 0x0190
8000d882:	0000                	.insn	2, 0x
8000d884:	4400                	.insn	2, 0x4400
8000d886:	100e                	.insn	2, 0x100e
8000d888:	8148                	.insn	2, 0x8148
8000d88a:	8801                	.insn	2, 0x8801
8000d88c:	4402                	.insn	2, 0x4402
8000d88e:	080c                	.insn	2, 0x080c
8000d890:	0a00                	.insn	2, 0x0a00
8000d892:	b402                	.insn	2, 0xb402
8000d894:	020c                	.insn	2, 0x020c
8000d896:	4810                	.insn	2, 0x4810
8000d898:	c8c1                	.insn	2, 0xc8c1
8000d89a:	0e44                	.insn	2, 0x0e44
8000d89c:	4400                	.insn	2, 0x4400
8000d89e:	40020a0b          	.insn	4, 0x40020a0b
8000d8a2:	020c                	.insn	2, 0x020c
8000d8a4:	4810                	.insn	2, 0x4810
8000d8a6:	c8c1                	.insn	2, 0xc8c1
8000d8a8:	0e44                	.insn	2, 0x0e44
8000d8aa:	4400                	.insn	2, 0x4400
8000d8ac:	0c480a0b          	.insn	4, 0x0c480a0b
8000d8b0:	1002                	.insn	2, 0x1002
8000d8b2:	c148                	.insn	2, 0xc148
8000d8b4:	44c8                	.insn	2, 0x44c8
8000d8b6:	000e                	.insn	2, 0x000e
8000d8b8:	0b44                	.insn	2, 0x0b44
8000d8ba:	0000                	.insn	2, 0x
8000d8bc:	0028                	.insn	2, 0x0028
8000d8be:	0000                	.insn	2, 0x
8000d8c0:	02b0                	.insn	2, 0x02b0
8000d8c2:	0000                	.insn	2, 0x
8000d8c4:	9510                	.insn	2, 0x9510
8000d8c6:	ffff                	.insn	2, 0xffff
8000d8c8:	00c8                	.insn	2, 0x00c8
8000d8ca:	0000                	.insn	2, 0x
8000d8cc:	4400                	.insn	2, 0x4400
8000d8ce:	400e                	.insn	2, 0x400e
8000d8d0:	814c                	.insn	2, 0x814c
8000d8d2:	8801                	.insn	2, 0x8801
8000d8d4:	8902                	.insn	2, 0x8902
8000d8d6:	080c4403          	lbu	s0,128(s8)
8000d8da:	0200                	.insn	2, 0x0200
8000d8dc:	0ca0                	.insn	2, 0x0ca0
8000d8de:	4002                	.insn	2, 0x4002
8000d8e0:	c14c                	.insn	2, 0xc14c
8000d8e2:	c9c8                	.insn	2, 0xc9c8
8000d8e4:	0e44                	.insn	2, 0x0e44
8000d8e6:	0000                	.insn	2, 0x
8000d8e8:	001c                	.insn	2, 0x001c
8000d8ea:	0000                	.insn	2, 0x
8000d8ec:	02dc                	.insn	2, 0x02dc
8000d8ee:	0000                	.insn	2, 0x
8000d8f0:	95ac                	.insn	2, 0x95ac
8000d8f2:	ffff                	.insn	2, 0xffff
8000d8f4:	0028                	.insn	2, 0x0028
8000d8f6:	0000                	.insn	2, 0x
8000d8f8:	4400                	.insn	2, 0x4400
8000d8fa:	100e                	.insn	2, 0x100e
8000d8fc:	8148                	.insn	2, 0x8148
8000d8fe:	8801                	.insn	2, 0x8801
8000d900:	4402                	.insn	2, 0x4402
8000d902:	080c                	.insn	2, 0x080c
8000d904:	0000                	.insn	2, 0x
8000d906:	0000                	.insn	2, 0x
8000d908:	0034                	.insn	2, 0x0034
8000d90a:	0000                	.insn	2, 0x
8000d90c:	02fc                	.insn	2, 0x02fc
8000d90e:	0000                	.insn	2, 0x
8000d910:	95b4                	.insn	2, 0x95b4
8000d912:	ffff                	.insn	2, 0xffff
8000d914:	014c                	.insn	2, 0x014c
8000d916:	0000                	.insn	2, 0x
8000d918:	4400                	.insn	2, 0x4400
8000d91a:	500e                	.insn	2, 0x500e
8000d91c:	815c                	.insn	2, 0x815c
8000d91e:	8801                	.insn	2, 0x8801
8000d920:	8902                	.insn	2, 0x8902
8000d922:	93049203          	lh	tp,-1744(s1)
8000d926:	9405                	.insn	2, 0x9405
8000d928:	9506                	.insn	2, 0x9506
8000d92a:	080c4407          	.insn	4, 0x080c4407
8000d92e:	0300                	.insn	2, 0x0300
8000d930:	0104                	.insn	2, 0x0104
8000d932:	020c                	.insn	2, 0x020c
8000d934:	5c50                	.insn	2, 0x5c50
8000d936:	c8c1                	.insn	2, 0xc8c1
8000d938:	d2c9                	.insn	2, 0xd2c9
8000d93a:	44d5d4d3          	.insn	4, 0x44d5d4d3
8000d93e:	000e                	.insn	2, 0x000e
8000d940:	001c                	.insn	2, 0x001c
8000d942:	0000                	.insn	2, 0x
8000d944:	0334                	.insn	2, 0x0334
8000d946:	0000                	.insn	2, 0x
8000d948:	96c8                	.insn	2, 0x96c8
8000d94a:	ffff                	.insn	2, 0xffff
8000d94c:	002c                	.insn	2, 0x002c
8000d94e:	0000                	.insn	2, 0x
8000d950:	4400                	.insn	2, 0x4400
8000d952:	200e                	.insn	2, 0x200e
8000d954:	8148                	.insn	2, 0x8148
8000d956:	8801                	.insn	2, 0x8801
8000d958:	4402                	.insn	2, 0x4402
8000d95a:	080c                	.insn	2, 0x080c
8000d95c:	0000                	.insn	2, 0x
8000d95e:	0000                	.insn	2, 0x
8000d960:	001c                	.insn	2, 0x001c
8000d962:	0000                	.insn	2, 0x
8000d964:	0354                	.insn	2, 0x0354
8000d966:	0000                	.insn	2, 0x
8000d968:	96d4                	.insn	2, 0x96d4
8000d96a:	ffff                	.insn	2, 0xffff
8000d96c:	0048                	.insn	2, 0x0048
8000d96e:	0000                	.insn	2, 0x
8000d970:	4400                	.insn	2, 0x4400
8000d972:	300e                	.insn	2, 0x300e
8000d974:	8148                	.insn	2, 0x8148
8000d976:	8801                	.insn	2, 0x8801
8000d978:	4402                	.insn	2, 0x4402
8000d97a:	080c                	.insn	2, 0x080c
8000d97c:	0000                	.insn	2, 0x
8000d97e:	0000                	.insn	2, 0x
8000d980:	001c                	.insn	2, 0x001c
8000d982:	0000                	.insn	2, 0x
8000d984:	0374                	.insn	2, 0x0374
8000d986:	0000                	.insn	2, 0x
8000d988:	96fc                	.insn	2, 0x96fc
8000d98a:	ffff                	.insn	2, 0xffff
8000d98c:	006c                	.insn	2, 0x006c
8000d98e:	0000                	.insn	2, 0x
8000d990:	4400                	.insn	2, 0x4400
8000d992:	400e                	.insn	2, 0x400e
8000d994:	8148                	.insn	2, 0x8148
8000d996:	8801                	.insn	2, 0x8801
8000d998:	4402                	.insn	2, 0x4402
8000d99a:	080c                	.insn	2, 0x080c
8000d99c:	0000                	.insn	2, 0x
8000d99e:	0000                	.insn	2, 0x
8000d9a0:	001c                	.insn	2, 0x001c
8000d9a2:	0000                	.insn	2, 0x
8000d9a4:	0394                	.insn	2, 0x0394
8000d9a6:	0000                	.insn	2, 0x
8000d9a8:	9748                	.insn	2, 0x9748
8000d9aa:	ffff                	.insn	2, 0xffff
8000d9ac:	003c                	.insn	2, 0x003c
8000d9ae:	0000                	.insn	2, 0x
8000d9b0:	4400                	.insn	2, 0x4400
8000d9b2:	100e                	.insn	2, 0x100e
8000d9b4:	8148                	.insn	2, 0x8148
8000d9b6:	8801                	.insn	2, 0x8801
8000d9b8:	4402                	.insn	2, 0x4402
8000d9ba:	080c                	.insn	2, 0x080c
8000d9bc:	0000                	.insn	2, 0x
8000d9be:	0000                	.insn	2, 0x
8000d9c0:	0020                	.insn	2, 0x0020
8000d9c2:	0000                	.insn	2, 0x
8000d9c4:	03b4                	.insn	2, 0x03b4
8000d9c6:	0000                	.insn	2, 0x
8000d9c8:	9764                	.insn	2, 0x9764
8000d9ca:	ffff                	.insn	2, 0xffff
8000d9cc:	014c                	.insn	2, 0x014c
8000d9ce:	0000                	.insn	2, 0x
8000d9d0:	4400                	.insn	2, 0x4400
8000d9d2:	800e                	.insn	2, 0x800e
8000d9d4:	5001                	.insn	2, 0x5001
8000d9d6:	0181                	.insn	2, 0x0181
8000d9d8:	0288                	.insn	2, 0x0288
8000d9da:	0389                	.insn	2, 0x0389
8000d9dc:	0492                	.insn	2, 0x0492
8000d9de:	0c44                	.insn	2, 0x0c44
8000d9e0:	0008                	.insn	2, 0x0008
8000d9e2:	0000                	.insn	2, 0x
8000d9e4:	001c                	.insn	2, 0x001c
8000d9e6:	0000                	.insn	2, 0x
8000d9e8:	03d8                	.insn	2, 0x03d8
8000d9ea:	0000                	.insn	2, 0x
8000d9ec:	988c                	.insn	2, 0x988c
8000d9ee:	ffff                	.insn	2, 0xffff
8000d9f0:	007c                	.insn	2, 0x007c
8000d9f2:	0000                	.insn	2, 0x
8000d9f4:	4400                	.insn	2, 0x4400
8000d9f6:	400e                	.insn	2, 0x400e
8000d9f8:	8148                	.insn	2, 0x8148
8000d9fa:	8801                	.insn	2, 0x8801
8000d9fc:	4402                	.insn	2, 0x4402
8000d9fe:	080c                	.insn	2, 0x080c
8000da00:	0000                	.insn	2, 0x
8000da02:	0000                	.insn	2, 0x
8000da04:	0048                	.insn	2, 0x0048
8000da06:	0000                	.insn	2, 0x
8000da08:	03f8                	.insn	2, 0x03f8
8000da0a:	0000                	.insn	2, 0x
8000da0c:	98e8                	.insn	2, 0x98e8
8000da0e:	ffff                	.insn	2, 0xffff
8000da10:	0298                	.insn	2, 0x0298
8000da12:	0000                	.insn	2, 0x
8000da14:	4400                	.insn	2, 0x4400
8000da16:	500e                	.insn	2, 0x500e
8000da18:	8174                	.insn	2, 0x8174
8000da1a:	8801                	.insn	2, 0x8801
8000da1c:	8902                	.insn	2, 0x8902
8000da1e:	93049203          	lh	tp,-1744(s1)
8000da22:	9405                	.insn	2, 0x9405
8000da24:	9506                	.insn	2, 0x9506
8000da26:	97089607          	.insn	4, 0x97089607
8000da2a:	9809                	.insn	2, 0x9809
8000da2c:	990a                	.insn	2, 0x990a
8000da2e:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000da32:	440d                	.insn	2, 0x440d
8000da34:	080c                	.insn	2, 0x080c
8000da36:	0300                	.insn	2, 0x0300
8000da38:	0220                	.insn	2, 0x0220
8000da3a:	020c                	.insn	2, 0x020c
8000da3c:	7450                	.insn	2, 0x7450
8000da3e:	c8c1                	.insn	2, 0xc8c1
8000da40:	d2c9                	.insn	2, 0xd2c9
8000da42:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000da46:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000da4a:	000e44db          	.insn	4, 0x000e44db
8000da4e:	0000                	.insn	2, 0x
8000da50:	0044                	.insn	2, 0x0044
8000da52:	0000                	.insn	2, 0x
8000da54:	0444                	.insn	2, 0x0444
8000da56:	0000                	.insn	2, 0x
8000da58:	9b34                	.insn	2, 0x9b34
8000da5a:	ffff                	.insn	2, 0xffff
8000da5c:	00b4                	.insn	2, 0x00b4
8000da5e:	0000                	.insn	2, 0x
8000da60:	4400                	.insn	2, 0x4400
8000da62:	200e                	.insn	2, 0x200e
8000da64:	8158                	.insn	2, 0x8158
8000da66:	8801                	.insn	2, 0x8801
8000da68:	8902                	.insn	2, 0x8902
8000da6a:	93049203          	lh	tp,-1744(s1)
8000da6e:	9405                	.insn	2, 0x9405
8000da70:	4406                	.insn	2, 0x4406
8000da72:	080c                	.insn	2, 0x080c
8000da74:	0a00                	.insn	2, 0x0a00
8000da76:	4002                	.insn	2, 0x4002
8000da78:	020c                	.insn	2, 0x020c
8000da7a:	5820                	.insn	2, 0x5820
8000da7c:	c8c1                	.insn	2, 0xc8c1
8000da7e:	d2c9                	.insn	2, 0xd2c9
8000da80:	0e44d4d3          	.insn	4, 0x0e44d4d3
8000da84:	4400                	.insn	2, 0x4400
8000da86:	020c540b          	.insn	4, 0x020c540b
8000da8a:	5820                	.insn	2, 0x5820
8000da8c:	c8c1                	.insn	2, 0xc8c1
8000da8e:	d2c9                	.insn	2, 0xd2c9
8000da90:	0e44d4d3          	.insn	4, 0x0e44d4d3
8000da94:	0000                	.insn	2, 0x
8000da96:	0000                	.insn	2, 0x
8000da98:	0040                	.insn	2, 0x0040
8000da9a:	0000                	.insn	2, 0x
8000da9c:	048c                	.insn	2, 0x048c
8000da9e:	0000                	.insn	2, 0x
8000daa0:	9ba0                	.insn	2, 0x9ba0
8000daa2:	ffff                	.insn	2, 0xffff
8000daa4:	0218                	.insn	2, 0x0218
8000daa6:	0000                	.insn	2, 0x
8000daa8:	4400                	.insn	2, 0x4400
8000daaa:	500e                	.insn	2, 0x500e
8000daac:	8168                	.insn	2, 0x8168
8000daae:	8801                	.insn	2, 0x8801
8000dab0:	8902                	.insn	2, 0x8902
8000dab2:	93049203          	lh	tp,-1744(s1)
8000dab6:	9405                	.insn	2, 0x9405
8000dab8:	9506                	.insn	2, 0x9506
8000daba:	97089607          	.insn	4, 0x97089607
8000dabe:	9809                	.insn	2, 0x9809
8000dac0:	440a                	.insn	2, 0x440a
8000dac2:	080c                	.insn	2, 0x080c
8000dac4:	0a00                	.insn	2, 0x0a00
8000dac6:	0c60                	.insn	2, 0x0c60
8000dac8:	5002                	.insn	2, 0x5002
8000daca:	c168                	.insn	2, 0xc168
8000dacc:	c9c8                	.insn	2, 0xc9c8
8000dace:	d3d2                	.insn	2, 0xd3d2
8000dad0:	d5d4                	.insn	2, 0xd5d4
8000dad2:	d7d6                	.insn	2, 0xd7d6
8000dad4:	44d8                	.insn	2, 0x44d8
8000dad6:	000e                	.insn	2, 0x000e
8000dad8:	0b44                	.insn	2, 0x0b44
8000dada:	0000                	.insn	2, 0x
8000dadc:	003c                	.insn	2, 0x003c
8000dade:	0000                	.insn	2, 0x
8000dae0:	04d0                	.insn	2, 0x04d0
8000dae2:	0000                	.insn	2, 0x
8000dae4:	9d74                	.insn	2, 0x9d74
8000dae6:	ffff                	.insn	2, 0xffff
8000dae8:	0378                	.insn	2, 0x0378
8000daea:	0000                	.insn	2, 0x
8000daec:	4400                	.insn	2, 0x4400
8000daee:	900e                	.insn	2, 0x900e
8000daf0:	6009                	.insn	2, 0x6009
8000daf2:	0181                	.insn	2, 0x0181
8000daf4:	0288                	.insn	2, 0x0288
8000daf6:	0389                	.insn	2, 0x0389
8000daf8:	0492                	.insn	2, 0x0492
8000dafa:	06940593          	addi	a1,s0,105
8000dafe:	0795                	.insn	2, 0x0795
8000db00:	0896                	.insn	2, 0x0896
8000db02:	0c44                	.insn	2, 0x0c44
8000db04:	0008                	.insn	2, 0x0008
8000db06:	030a                	.insn	2, 0x030a
8000db08:	030c                	.insn	2, 0x030c
8000db0a:	020c                	.insn	2, 0x020c
8000db0c:	0990                	.insn	2, 0x0990
8000db0e:	c160                	.insn	2, 0xc160
8000db10:	c9c8                	.insn	2, 0xc9c8
8000db12:	d3d2                	.insn	2, 0xd3d2
8000db14:	d5d4                	.insn	2, 0xd5d4
8000db16:	44d6                	.insn	2, 0x44d6
8000db18:	000e                	.insn	2, 0x000e
8000db1a:	0b44                	.insn	2, 0x0b44
8000db1c:	0034                	.insn	2, 0x0034
8000db1e:	0000                	.insn	2, 0x
8000db20:	0510                	.insn	2, 0x0510
8000db22:	0000                	.insn	2, 0x
8000db24:	a0ac                	.insn	2, 0xa0ac
8000db26:	ffff                	.insn	2, 0xffff
8000db28:	02a8                	.insn	2, 0x02a8
8000db2a:	0000                	.insn	2, 0x
8000db2c:	0200                	.insn	2, 0x0200
8000db2e:	0eb4                	.insn	2, 0x0eb4
8000db30:	0190                	.insn	2, 0x0190
8000db32:	8158                	.insn	2, 0x8158
8000db34:	8801                	.insn	2, 0x8801
8000db36:	8902                	.insn	2, 0x8902
8000db38:	93049203          	lh	tp,-1744(s1)
8000db3c:	9405                	.insn	2, 0x9405
8000db3e:	4406                	.insn	2, 0x4406
8000db40:	080c                	.insn	2, 0x080c
8000db42:	0300                	.insn	2, 0x0300
8000db44:	01b8                	.insn	2, 0x01b8
8000db46:	020c                	.insn	2, 0x020c
8000db48:	0190                	.insn	2, 0x0190
8000db4a:	c158                	.insn	2, 0xc158
8000db4c:	c9c8                	.insn	2, 0xc9c8
8000db4e:	d3d2                	.insn	2, 0xd3d2
8000db50:	44d4                	.insn	2, 0x44d4
8000db52:	000e                	.insn	2, 0x000e
8000db54:	0024                	.insn	2, 0x0024
8000db56:	0000                	.insn	2, 0x
8000db58:	0548                	.insn	2, 0x0548
8000db5a:	0000                	.insn	2, 0x
8000db5c:	a31c                	.insn	2, 0xa31c
8000db5e:	ffff                	.insn	2, 0xffff
8000db60:	0030                	.insn	2, 0x0030
8000db62:	0000                	.insn	2, 0x
8000db64:	4400                	.insn	2, 0x4400
8000db66:	100e                	.insn	2, 0x100e
8000db68:	8148                	.insn	2, 0x8148
8000db6a:	8801                	.insn	2, 0x8801
8000db6c:	4402                	.insn	2, 0x4402
8000db6e:	080c                	.insn	2, 0x080c
8000db70:	4c00                	.insn	2, 0x4c00
8000db72:	020c                	.insn	2, 0x020c
8000db74:	4810                	.insn	2, 0x4810
8000db76:	c8c1                	.insn	2, 0xc8c1
8000db78:	0e44                	.insn	2, 0x0e44
8000db7a:	0000                	.insn	2, 0x
8000db7c:	0024                	.insn	2, 0x0024
8000db7e:	0000                	.insn	2, 0x
8000db80:	0570                	.insn	2, 0x0570
8000db82:	0000                	.insn	2, 0x
8000db84:	a324                	.insn	2, 0xa324
8000db86:	ffff                	.insn	2, 0xffff
8000db88:	0038                	.insn	2, 0x0038
8000db8a:	0000                	.insn	2, 0x
8000db8c:	4400                	.insn	2, 0x4400
8000db8e:	100e                	.insn	2, 0x100e
8000db90:	8148                	.insn	2, 0x8148
8000db92:	8801                	.insn	2, 0x8801
8000db94:	4402                	.insn	2, 0x4402
8000db96:	080c                	.insn	2, 0x080c
8000db98:	5400                	.insn	2, 0x5400
8000db9a:	020c                	.insn	2, 0x020c
8000db9c:	4810                	.insn	2, 0x4810
8000db9e:	c8c1                	.insn	2, 0xc8c1
8000dba0:	0e44                	.insn	2, 0x0e44
8000dba2:	0000                	.insn	2, 0x
8000dba4:	0040                	.insn	2, 0x0040
8000dba6:	0000                	.insn	2, 0x
8000dba8:	0598                	.insn	2, 0x0598
8000dbaa:	0000                	.insn	2, 0x
8000dbac:	a334                	.insn	2, 0xa334
8000dbae:	ffff                	.insn	2, 0xffff
8000dbb0:	0244                	.insn	2, 0x0244
8000dbb2:	0000                	.insn	2, 0x
8000dbb4:	4400                	.insn	2, 0x4400
8000dbb6:	400e                	.insn	2, 0x400e
8000dbb8:	8168                	.insn	2, 0x8168
8000dbba:	8801                	.insn	2, 0x8801
8000dbbc:	8902                	.insn	2, 0x8902
8000dbbe:	93049203          	lh	tp,-1744(s1)
8000dbc2:	9405                	.insn	2, 0x9405
8000dbc4:	9506                	.insn	2, 0x9506
8000dbc6:	97089607          	.insn	4, 0x97089607
8000dbca:	9809                	.insn	2, 0x9809
8000dbcc:	440a                	.insn	2, 0x440a
8000dbce:	080c                	.insn	2, 0x080c
8000dbd0:	0300                	.insn	2, 0x0300
8000dbd2:	01e4                	.insn	2, 0x01e4
8000dbd4:	020c                	.insn	2, 0x020c
8000dbd6:	6840                	.insn	2, 0x6840
8000dbd8:	c8c1                	.insn	2, 0xc8c1
8000dbda:	d2c9                	.insn	2, 0xd2c9
8000dbdc:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000dbe0:	0e44d8d7          	.insn	4, 0x0e44d8d7
8000dbe4:	0000                	.insn	2, 0x
8000dbe6:	0000                	.insn	2, 0x
8000dbe8:	0064                	.insn	2, 0x0064
8000dbea:	0000                	.insn	2, 0x
8000dbec:	05dc                	.insn	2, 0x05dc
8000dbee:	0000                	.insn	2, 0x
8000dbf0:	a534                	.insn	2, 0xa534
8000dbf2:	ffff                	.insn	2, 0xffff
8000dbf4:	036c                	.insn	2, 0x036c
8000dbf6:	0000                	.insn	2, 0x
8000dbf8:	4400                	.insn	2, 0x4400
8000dbfa:	400e                	.insn	2, 0x400e
8000dbfc:	8174                	.insn	2, 0x8174
8000dbfe:	8801                	.insn	2, 0x8801
8000dc00:	8902                	.insn	2, 0x8902
8000dc02:	93049203          	lh	tp,-1744(s1)
8000dc06:	9405                	.insn	2, 0x9405
8000dc08:	9506                	.insn	2, 0x9506
8000dc0a:	97089607          	.insn	4, 0x97089607
8000dc0e:	9809                	.insn	2, 0x9809
8000dc10:	990a                	.insn	2, 0x990a
8000dc12:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dc16:	440d                	.insn	2, 0x440d
8000dc18:	080c                	.insn	2, 0x080c
8000dc1a:	0a00                	.insn	2, 0x0a00
8000dc1c:	0c010403          	lb	s0,192(sp) # 8000c0c0 <.Lanon.499f5b3e62e046339c2f5fff2ce9dd18.11+0x4>
8000dc20:	4002                	.insn	2, 0x4002
8000dc22:	c174                	.insn	2, 0xc174
8000dc24:	c9c8                	.insn	2, 0xc9c8
8000dc26:	d3d2                	.insn	2, 0xd3d2
8000dc28:	d5d4                	.insn	2, 0xd5d4
8000dc2a:	d7d6                	.insn	2, 0xd7d6
8000dc2c:	d9d8                	.insn	2, 0xd9d8
8000dc2e:	dbda                	.insn	2, 0xdbda
8000dc30:	0e44                	.insn	2, 0x0e44
8000dc32:	4400                	.insn	2, 0x4400
8000dc34:	38030a0b          	.insn	4, 0x38030a0b
8000dc38:	0c01                	.insn	2, 0x0c01
8000dc3a:	4002                	.insn	2, 0x4002
8000dc3c:	c174                	.insn	2, 0xc174
8000dc3e:	c9c8                	.insn	2, 0xc9c8
8000dc40:	d3d2                	.insn	2, 0xd3d2
8000dc42:	d5d4                	.insn	2, 0xd5d4
8000dc44:	d7d6                	.insn	2, 0xd7d6
8000dc46:	d9d8                	.insn	2, 0xd9d8
8000dc48:	dbda                	.insn	2, 0xdbda
8000dc4a:	0e44                	.insn	2, 0x0e44
8000dc4c:	4400                	.insn	2, 0x4400
8000dc4e:	0044000b          	.insn	4, 0x0044000b
8000dc52:	0000                	.insn	2, 0x
8000dc54:	0644                	.insn	2, 0x0644
8000dc56:	0000                	.insn	2, 0x
8000dc58:	a838                	.insn	2, 0xa838
8000dc5a:	ffff                	.insn	2, 0xffff
8000dc5c:	00ac                	.insn	2, 0x00ac
8000dc5e:	0000                	.insn	2, 0x
8000dc60:	4400                	.insn	2, 0x4400
8000dc62:	200e                	.insn	2, 0x200e
8000dc64:	8158                	.insn	2, 0x8158
8000dc66:	8801                	.insn	2, 0x8801
8000dc68:	8902                	.insn	2, 0x8902
8000dc6a:	93049203          	lh	tp,-1744(s1)
8000dc6e:	9405                	.insn	2, 0x9405
8000dc70:	4406                	.insn	2, 0x4406
8000dc72:	080c                	.insn	2, 0x080c
8000dc74:	0a00                	.insn	2, 0x0a00
8000dc76:	4802                	.insn	2, 0x4802
8000dc78:	020c                	.insn	2, 0x020c
8000dc7a:	5820                	.insn	2, 0x5820
8000dc7c:	c8c1                	.insn	2, 0xc8c1
8000dc7e:	d2c9                	.insn	2, 0xd2c9
8000dc80:	0e44d4d3          	.insn	4, 0x0e44d4d3
8000dc84:	4400                	.insn	2, 0x4400
8000dc86:	020c440b          	.insn	4, 0x020c440b
8000dc8a:	5820                	.insn	2, 0x5820
8000dc8c:	c8c1                	.insn	2, 0xc8c1
8000dc8e:	d2c9                	.insn	2, 0xd2c9
8000dc90:	0e44d4d3          	.insn	4, 0x0e44d4d3
8000dc94:	0000                	.insn	2, 0x
8000dc96:	0000                	.insn	2, 0x
8000dc98:	0060                	.insn	2, 0x0060
8000dc9a:	0000                	.insn	2, 0x
8000dc9c:	068c                	.insn	2, 0x068c
8000dc9e:	0000                	.insn	2, 0x
8000dca0:	a89c                	.insn	2, 0xa89c
8000dca2:	ffff                	.insn	2, 0xffff
8000dca4:	029c                	.insn	2, 0x029c
8000dca6:	0000                	.insn	2, 0x
8000dca8:	4400                	.insn	2, 0x4400
8000dcaa:	300e                	.insn	2, 0x300e
8000dcac:	8170                	.insn	2, 0x8170
8000dcae:	8801                	.insn	2, 0x8801
8000dcb0:	8902                	.insn	2, 0x8902
8000dcb2:	93049203          	lh	tp,-1744(s1)
8000dcb6:	9405                	.insn	2, 0x9405
8000dcb8:	9506                	.insn	2, 0x9506
8000dcba:	97089607          	.insn	4, 0x97089607
8000dcbe:	9809                	.insn	2, 0x9809
8000dcc0:	990a                	.insn	2, 0x990a
8000dcc2:	440c9a0b          	.insn	4, 0x440c9a0b
8000dcc6:	080c                	.insn	2, 0x080c
8000dcc8:	0a00                	.insn	2, 0x0a00
8000dcca:	0c010c03          	lb	s8,192(sp)
8000dcce:	3002                	.insn	2, 0x3002
8000dcd0:	c170                	.insn	2, 0xc170
8000dcd2:	c9c8                	.insn	2, 0xc9c8
8000dcd4:	d3d2                	.insn	2, 0xd3d2
8000dcd6:	d5d4                	.insn	2, 0xd5d4
8000dcd8:	d7d6                	.insn	2, 0xd7d6
8000dcda:	d9d8                	.insn	2, 0xd9d8
8000dcdc:	44da                	.insn	2, 0x44da
8000dcde:	000e                	.insn	2, 0x000e
8000dce0:	0b44                	.insn	2, 0x0b44
8000dce2:	020a                	.insn	2, 0x020a
8000dce4:	0c98                	.insn	2, 0x0c98
8000dce6:	3002                	.insn	2, 0x3002
8000dce8:	c170                	.insn	2, 0xc170
8000dcea:	c9c8                	.insn	2, 0xc9c8
8000dcec:	d3d2                	.insn	2, 0xd3d2
8000dcee:	d5d4                	.insn	2, 0xd5d4
8000dcf0:	d7d6                	.insn	2, 0xd7d6
8000dcf2:	d9d8                	.insn	2, 0xd9d8
8000dcf4:	44da                	.insn	2, 0x44da
8000dcf6:	000e                	.insn	2, 0x000e
8000dcf8:	0b44                	.insn	2, 0x0b44
8000dcfa:	0000                	.insn	2, 0x
8000dcfc:	0064                	.insn	2, 0x0064
8000dcfe:	0000                	.insn	2, 0x
8000dd00:	06f0                	.insn	2, 0x06f0
8000dd02:	0000                	.insn	2, 0x
8000dd04:	aad4                	.insn	2, 0xaad4
8000dd06:	ffff                	.insn	2, 0xffff
8000dd08:	0304                	.insn	2, 0x0304
8000dd0a:	0000                	.insn	2, 0x
8000dd0c:	4400                	.insn	2, 0x4400
8000dd0e:	500e                	.insn	2, 0x500e
8000dd10:	8174                	.insn	2, 0x8174
8000dd12:	8801                	.insn	2, 0x8801
8000dd14:	8902                	.insn	2, 0x8902
8000dd16:	93049203          	lh	tp,-1744(s1)
8000dd1a:	9405                	.insn	2, 0x9405
8000dd1c:	9506                	.insn	2, 0x9506
8000dd1e:	97089607          	.insn	4, 0x97089607
8000dd22:	9809                	.insn	2, 0x9809
8000dd24:	990a                	.insn	2, 0x990a
8000dd26:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dd2a:	440d                	.insn	2, 0x440d
8000dd2c:	080c                	.insn	2, 0x080c
8000dd2e:	0a00                	.insn	2, 0x0a00
8000dd30:	5c02                	.insn	2, 0x5c02
8000dd32:	020c                	.insn	2, 0x020c
8000dd34:	7450                	.insn	2, 0x7450
8000dd36:	c8c1                	.insn	2, 0xc8c1
8000dd38:	d2c9                	.insn	2, 0xd2c9
8000dd3a:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000dd3e:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000dd42:	000e44db          	.insn	4, 0x000e44db
8000dd46:	0b48                	.insn	2, 0x0b48
8000dd48:	030a                	.insn	2, 0x030a
8000dd4a:	01b4                	.insn	2, 0x01b4
8000dd4c:	020c                	.insn	2, 0x020c
8000dd4e:	7450                	.insn	2, 0x7450
8000dd50:	c8c1                	.insn	2, 0xc8c1
8000dd52:	d2c9                	.insn	2, 0xd2c9
8000dd54:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000dd58:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000dd5c:	000e44db          	.insn	4, 0x000e44db
8000dd60:	0b44                	.insn	2, 0x0b44
8000dd62:	0000                	.insn	2, 0x
8000dd64:	0048                	.insn	2, 0x0048
8000dd66:	0000                	.insn	2, 0x
8000dd68:	0758                	.insn	2, 0x0758
8000dd6a:	0000                	.insn	2, 0x
8000dd6c:	ad70                	.insn	2, 0xad70
8000dd6e:	ffff                	.insn	2, 0xffff
8000dd70:	0200                	.insn	2, 0x0200
8000dd72:	0000                	.insn	2, 0x
8000dd74:	4400                	.insn	2, 0x4400
8000dd76:	400e                	.insn	2, 0x400e
8000dd78:	8174                	.insn	2, 0x8174
8000dd7a:	8801                	.insn	2, 0x8801
8000dd7c:	8902                	.insn	2, 0x8902
8000dd7e:	93049203          	lh	tp,-1744(s1)
8000dd82:	9405                	.insn	2, 0x9405
8000dd84:	9506                	.insn	2, 0x9506
8000dd86:	97089607          	.insn	4, 0x97089607
8000dd8a:	9809                	.insn	2, 0x9809
8000dd8c:	990a                	.insn	2, 0x990a
8000dd8e:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dd92:	440d                	.insn	2, 0x440d
8000dd94:	080c                	.insn	2, 0x080c
8000dd96:	0300                	.insn	2, 0x0300
8000dd98:	0188                	.insn	2, 0x0188
8000dd9a:	020c                	.insn	2, 0x020c
8000dd9c:	7440                	.insn	2, 0x7440
8000dd9e:	c8c1                	.insn	2, 0xc8c1
8000dda0:	d2c9                	.insn	2, 0xd2c9
8000dda2:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000dda6:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000ddaa:	000e44db          	.insn	4, 0x000e44db
8000ddae:	0000                	.insn	2, 0x
8000ddb0:	0024                	.insn	2, 0x0024
8000ddb2:	0000                	.insn	2, 0x
8000ddb4:	07a4                	.insn	2, 0x07a4
8000ddb6:	0000                	.insn	2, 0x
8000ddb8:	af24                	.insn	2, 0xaf24
8000ddba:	ffff                	.insn	2, 0xffff
8000ddbc:	002c                	.insn	2, 0x002c
8000ddbe:	0000                	.insn	2, 0x
8000ddc0:	4400                	.insn	2, 0x4400
8000ddc2:	100e                	.insn	2, 0x100e
8000ddc4:	8148                	.insn	2, 0x8148
8000ddc6:	8801                	.insn	2, 0x8801
8000ddc8:	4402                	.insn	2, 0x4402
8000ddca:	080c                	.insn	2, 0x080c
8000ddcc:	4c00                	.insn	2, 0x4c00
8000ddce:	020c                	.insn	2, 0x020c
8000ddd0:	4810                	.insn	2, 0x4810
8000ddd2:	c8c1                	.insn	2, 0xc8c1
8000ddd4:	0e44                	.insn	2, 0x0e44
8000ddd6:	0000                	.insn	2, 0x
8000ddd8:	0040                	.insn	2, 0x0040
8000ddda:	0000                	.insn	2, 0x
8000dddc:	07cc                	.insn	2, 0x07cc
8000ddde:	0000                	.insn	2, 0x
8000dde0:	af28                	.insn	2, 0xaf28
8000dde2:	ffff                	.insn	2, 0xffff
8000dde4:	0144                	.insn	2, 0x0144
8000dde6:	0000                	.insn	2, 0x
8000dde8:	4400                	.insn	2, 0x4400
8000ddea:	400e                	.insn	2, 0x400e
8000ddec:	816c                	.insn	2, 0x816c
8000ddee:	8801                	.insn	2, 0x8801
8000ddf0:	8902                	.insn	2, 0x8902
8000ddf2:	93049203          	lh	tp,-1744(s1)
8000ddf6:	9405                	.insn	2, 0x9405
8000ddf8:	9506                	.insn	2, 0x9506
8000ddfa:	97089607          	.insn	4, 0x97089607
8000ddfe:	9809                	.insn	2, 0x9809
8000de00:	990a                	.insn	2, 0x990a
8000de02:	080c440b          	.insn	4, 0x080c440b
8000de06:	0200                	.insn	2, 0x0200
8000de08:	0cdc                	.insn	2, 0x0cdc
8000de0a:	4002                	.insn	2, 0x4002
8000de0c:	c16c                	.insn	2, 0xc16c
8000de0e:	c9c8                	.insn	2, 0xc9c8
8000de10:	d3d2                	.insn	2, 0xd3d2
8000de12:	d5d4                	.insn	2, 0xd5d4
8000de14:	d7d6                	.insn	2, 0xd7d6
8000de16:	d9d8                	.insn	2, 0xd9d8
8000de18:	0e44                	.insn	2, 0x0e44
8000de1a:	0000                	.insn	2, 0x
8000de1c:	0030                	.insn	2, 0x0030
8000de1e:	0000                	.insn	2, 0x
8000de20:	0810                	.insn	2, 0x0810
8000de22:	0000                	.insn	2, 0x
8000de24:	b028                	.insn	2, 0xb028
8000de26:	ffff                	.insn	2, 0xffff
8000de28:	00f8                	.insn	2, 0x00f8
8000de2a:	0000                	.insn	2, 0x
8000de2c:	4400                	.insn	2, 0x4400
8000de2e:	a00e                	.insn	2, 0xa00e
8000de30:	5401                	.insn	2, 0x5401
8000de32:	0181                	.insn	2, 0x0181
8000de34:	0288                	.insn	2, 0x0288
8000de36:	0389                	.insn	2, 0x0389
8000de38:	0492                	.insn	2, 0x0492
8000de3a:	0c440593          	addi	a1,s0,196
8000de3e:	0008                	.insn	2, 0x0008
8000de40:	c002                	.insn	2, 0xc002
8000de42:	020c                	.insn	2, 0x020c
8000de44:	01a0                	.insn	2, 0x01a0
8000de46:	c154                	.insn	2, 0xc154
8000de48:	c9c8                	.insn	2, 0xc9c8
8000de4a:	d3d2                	.insn	2, 0xd3d2
8000de4c:	0e44                	.insn	2, 0x0e44
8000de4e:	0000                	.insn	2, 0x
8000de50:	001c                	.insn	2, 0x001c
8000de52:	0000                	.insn	2, 0x
8000de54:	0844                	.insn	2, 0x0844
8000de56:	0000                	.insn	2, 0x
8000de58:	b0ec                	.insn	2, 0xb0ec
8000de5a:	ffff                	.insn	2, 0xffff
8000de5c:	0018                	.insn	2, 0x0018
8000de5e:	0000                	.insn	2, 0x
8000de60:	4400                	.insn	2, 0x4400
8000de62:	100e                	.insn	2, 0x100e
8000de64:	8148                	.insn	2, 0x8148
8000de66:	8801                	.insn	2, 0x8801
8000de68:	4402                	.insn	2, 0x4402
8000de6a:	080c                	.insn	2, 0x080c
8000de6c:	0000                	.insn	2, 0x
8000de6e:	0000                	.insn	2, 0x
8000de70:	0038                	.insn	2, 0x0038
8000de72:	0000                	.insn	2, 0x
8000de74:	0864                	.insn	2, 0x0864
8000de76:	0000                	.insn	2, 0x
8000de78:	b0e4                	.insn	2, 0xb0e4
8000de7a:	ffff                	.insn	2, 0xffff
8000de7c:	0244                	.insn	2, 0x0244
8000de7e:	0000                	.insn	2, 0x
8000de80:	4400                	.insn	2, 0x4400
8000de82:	100e                	.insn	2, 0x100e
8000de84:	814c                	.insn	2, 0x814c
8000de86:	8801                	.insn	2, 0x8801
8000de88:	8902                	.insn	2, 0x8902
8000de8a:	080c4403          	lbu	s0,128(s8)
8000de8e:	0a00                	.insn	2, 0x0a00
8000de90:	0c78                	.insn	2, 0x0c78
8000de92:	1002                	.insn	2, 0x1002
8000de94:	c14c                	.insn	2, 0xc14c
8000de96:	c9c8                	.insn	2, 0xc9c8
8000de98:	0e44                	.insn	2, 0x0e44
8000de9a:	4400                	.insn	2, 0x4400
8000de9c:	01d0030b          	.insn	4, 0x01d0030b
8000dea0:	020c                	.insn	2, 0x020c
8000dea2:	4c10                	.insn	2, 0x4c10
8000dea4:	c8c1                	.insn	2, 0xc8c1
8000dea6:	44c9                	.insn	2, 0x44c9
8000dea8:	000e                	.insn	2, 0x000e
8000deaa:	0000                	.insn	2, 0x
8000deac:	0024                	.insn	2, 0x0024
8000deae:	0000                	.insn	2, 0x
8000deb0:	08a0                	.insn	2, 0x08a0
8000deb2:	0000                	.insn	2, 0x
8000deb4:	b2ec                	.insn	2, 0xb2ec
8000deb6:	ffff                	.insn	2, 0xffff
8000deb8:	0040                	.insn	2, 0x0040
8000deba:	0000                	.insn	2, 0x
8000debc:	4400                	.insn	2, 0x4400
8000debe:	100e                	.insn	2, 0x100e
8000dec0:	8148                	.insn	2, 0x8148
8000dec2:	8801                	.insn	2, 0x8801
8000dec4:	4402                	.insn	2, 0x4402
8000dec6:	080c                	.insn	2, 0x080c
8000dec8:	6000                	.insn	2, 0x6000
8000deca:	020c                	.insn	2, 0x020c
8000decc:	4810                	.insn	2, 0x4810
8000dece:	c8c1                	.insn	2, 0xc8c1
8000ded0:	0e44                	.insn	2, 0x0e44
8000ded2:	0000                	.insn	2, 0x
8000ded4:	0038                	.insn	2, 0x0038
8000ded6:	0000                	.insn	2, 0x
8000ded8:	08c8                	.insn	2, 0x08c8
8000deda:	0000                	.insn	2, 0x
8000dedc:	b304                	.insn	2, 0xb304
8000dede:	ffff                	.insn	2, 0xffff
8000dee0:	03a4                	.insn	2, 0x03a4
8000dee2:	0000                	.insn	2, 0x
8000dee4:	4400                	.insn	2, 0x4400
8000dee6:	100e                	.insn	2, 0x100e
8000dee8:	8148                	.insn	2, 0x8148
8000deea:	8801                	.insn	2, 0x8801
8000deec:	4402                	.insn	2, 0x4402
8000deee:	080c                	.insn	2, 0x080c
8000def0:	0a00                	.insn	2, 0x0a00
8000def2:	0c02f403          	.insn	4, 0x0c02f403
8000def6:	1002                	.insn	2, 0x1002
8000def8:	c148                	.insn	2, 0xc148
8000defa:	44c8                	.insn	2, 0x44c8
8000defc:	000e                	.insn	2, 0x000e
8000defe:	0b44                	.insn	2, 0x0b44
8000df00:	440a                	.insn	2, 0x440a
8000df02:	020c                	.insn	2, 0x020c
8000df04:	4810                	.insn	2, 0x4810
8000df06:	c8c1                	.insn	2, 0xc8c1
8000df08:	0e44                	.insn	2, 0x0e44
8000df0a:	4400                	.insn	2, 0x4400
8000df0c:	0000000b          	.insn	4, 0x000b
8000df10:	004c                	.insn	2, 0x004c
8000df12:	0000                	.insn	2, 0x
8000df14:	0904                	.insn	2, 0x0904
8000df16:	0000                	.insn	2, 0x
8000df18:	b66c                	.insn	2, 0xb66c
8000df1a:	ffff                	.insn	2, 0xffff
8000df1c:	01f4                	.insn	2, 0x01f4
8000df1e:	0000                	.insn	2, 0x
8000df20:	4400                	.insn	2, 0x4400
8000df22:	500e                	.insn	2, 0x500e
8000df24:	8174                	.insn	2, 0x8174
8000df26:	8801                	.insn	2, 0x8801
8000df28:	8902                	.insn	2, 0x8902
8000df2a:	93049203          	lh	tp,-1744(s1)
8000df2e:	9405                	.insn	2, 0x9405
8000df30:	9506                	.insn	2, 0x9506
8000df32:	97089607          	.insn	4, 0x97089607
8000df36:	9809                	.insn	2, 0x9809
8000df38:	990a                	.insn	2, 0x990a
8000df3a:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000df3e:	440d                	.insn	2, 0x440d
8000df40:	080c                	.insn	2, 0x080c
8000df42:	0a00                	.insn	2, 0x0a00
8000df44:	0c015003          	lhu	zero,192(sp)
8000df48:	5002                	.insn	2, 0x5002
8000df4a:	c174                	.insn	2, 0xc174
8000df4c:	c9c8                	.insn	2, 0xc9c8
8000df4e:	d3d2                	.insn	2, 0xd3d2
8000df50:	d5d4                	.insn	2, 0xd5d4
8000df52:	d7d6                	.insn	2, 0xd7d6
8000df54:	d9d8                	.insn	2, 0xd9d8
8000df56:	dbda                	.insn	2, 0xdbda
8000df58:	0e44                	.insn	2, 0x0e44
8000df5a:	4400                	.insn	2, 0x4400
8000df5c:	0000000b          	.insn	4, 0x000b
8000df60:	0024                	.insn	2, 0x0024
8000df62:	0000                	.insn	2, 0x
8000df64:	0954                	.insn	2, 0x0954
8000df66:	0000                	.insn	2, 0x
8000df68:	b810                	.insn	2, 0xb810
8000df6a:	ffff                	.insn	2, 0xffff
8000df6c:	0034                	.insn	2, 0x0034
8000df6e:	0000                	.insn	2, 0x
8000df70:	4400                	.insn	2, 0x4400
8000df72:	100e                	.insn	2, 0x100e
8000df74:	8148                	.insn	2, 0x8148
8000df76:	8801                	.insn	2, 0x8801
8000df78:	4402                	.insn	2, 0x4402
8000df7a:	080c                	.insn	2, 0x080c
8000df7c:	5400                	.insn	2, 0x5400
8000df7e:	020c                	.insn	2, 0x020c
8000df80:	4810                	.insn	2, 0x4810
8000df82:	c8c1                	.insn	2, 0xc8c1
8000df84:	0e44                	.insn	2, 0x0e44
8000df86:	0000                	.insn	2, 0x
8000df88:	001c                	.insn	2, 0x001c
8000df8a:	0000                	.insn	2, 0x
8000df8c:	097c                	.insn	2, 0x097c
8000df8e:	0000                	.insn	2, 0x
8000df90:	b81c                	.insn	2, 0xb81c
8000df92:	ffff                	.insn	2, 0xffff
8000df94:	0044                	.insn	2, 0x0044
8000df96:	0000                	.insn	2, 0x
8000df98:	4400                	.insn	2, 0x4400
8000df9a:	200e                	.insn	2, 0x200e
8000df9c:	8148                	.insn	2, 0x8148
8000df9e:	8801                	.insn	2, 0x8801
8000dfa0:	4402                	.insn	2, 0x4402
8000dfa2:	080c                	.insn	2, 0x080c
8000dfa4:	0000                	.insn	2, 0x
8000dfa6:	0000                	.insn	2, 0x
8000dfa8:	0030                	.insn	2, 0x0030
8000dfaa:	0000                	.insn	2, 0x
8000dfac:	099c                	.insn	2, 0x099c
8000dfae:	0000                	.insn	2, 0x
8000dfb0:	b840                	.insn	2, 0xb840
8000dfb2:	ffff                	.insn	2, 0xffff
8000dfb4:	006c                	.insn	2, 0x006c
8000dfb6:	0000                	.insn	2, 0x
8000dfb8:	4400                	.insn	2, 0x4400
8000dfba:	100e                	.insn	2, 0x100e
8000dfbc:	8148                	.insn	2, 0x8148
8000dfbe:	8801                	.insn	2, 0x8801
8000dfc0:	4402                	.insn	2, 0x4402
8000dfc2:	080c                	.insn	2, 0x080c
8000dfc4:	0a00                	.insn	2, 0x0a00
8000dfc6:	0c68                	.insn	2, 0x0c68
8000dfc8:	1002                	.insn	2, 0x1002
8000dfca:	c148                	.insn	2, 0xc148
8000dfcc:	44c8                	.insn	2, 0x44c8
8000dfce:	000e                	.insn	2, 0x000e
8000dfd0:	0b48                	.insn	2, 0x0b48
8000dfd2:	0c4c                	.insn	2, 0x0c4c
8000dfd4:	1002                	.insn	2, 0x1002
8000dfd6:	c148                	.insn	2, 0xc148
8000dfd8:	44c8                	.insn	2, 0x44c8
8000dfda:	000e                	.insn	2, 0x000e
8000dfdc:	0028                	.insn	2, 0x0028
8000dfde:	0000                	.insn	2, 0x
8000dfe0:	09d0                	.insn	2, 0x09d0
8000dfe2:	0000                	.insn	2, 0x
8000dfe4:	b878                	.insn	2, 0xb878
8000dfe6:	ffff                	.insn	2, 0xffff
8000dfe8:	0098                	.insn	2, 0x0098
8000dfea:	0000                	.insn	2, 0x
8000dfec:	4400                	.insn	2, 0x4400
8000dfee:	900e                	.insn	2, 0x900e
8000dff0:	4801                	.insn	2, 0x4801
8000dff2:	0181                	.insn	2, 0x0181
8000dff4:	0288                	.insn	2, 0x0288
8000dff6:	0c44                	.insn	2, 0x0c44
8000dff8:	0008                	.insn	2, 0x0008
8000dffa:	7802                	.insn	2, 0x7802
8000dffc:	020c                	.insn	2, 0x020c
8000dffe:	0190                	.insn	2, 0x0190
8000e000:	c148                	.insn	2, 0xc148
8000e002:	44c8                	.insn	2, 0x44c8
8000e004:	000e                	.insn	2, 0x000e
8000e006:	0000                	.insn	2, 0x
8000e008:	0028                	.insn	2, 0x0028
8000e00a:	0000                	.insn	2, 0x
8000e00c:	09fc                	.insn	2, 0x09fc
8000e00e:	0000                	.insn	2, 0x
8000e010:	b8e4                	.insn	2, 0xb8e4
8000e012:	ffff                	.insn	2, 0xffff
8000e014:	0098                	.insn	2, 0x0098
8000e016:	0000                	.insn	2, 0x
8000e018:	4400                	.insn	2, 0x4400
8000e01a:	900e                	.insn	2, 0x900e
8000e01c:	4801                	.insn	2, 0x4801
8000e01e:	0181                	.insn	2, 0x0181
8000e020:	0288                	.insn	2, 0x0288
8000e022:	0c44                	.insn	2, 0x0c44
8000e024:	0008                	.insn	2, 0x0008
8000e026:	7802                	.insn	2, 0x7802
8000e028:	020c                	.insn	2, 0x020c
8000e02a:	0190                	.insn	2, 0x0190
8000e02c:	c148                	.insn	2, 0xc148
8000e02e:	44c8                	.insn	2, 0x44c8
8000e030:	000e                	.insn	2, 0x000e
8000e032:	0000                	.insn	2, 0x
8000e034:	003c                	.insn	2, 0x003c
8000e036:	0000                	.insn	2, 0x
8000e038:	0a28                	.insn	2, 0x0a28
8000e03a:	0000                	.insn	2, 0x
8000e03c:	b950                	.insn	2, 0xb950
8000e03e:	ffff                	.insn	2, 0xffff
8000e040:	014c                	.insn	2, 0x014c
8000e042:	0000                	.insn	2, 0x
8000e044:	4400                	.insn	2, 0x4400
8000e046:	900e                	.insn	2, 0x900e
8000e048:	4c01                	.insn	2, 0x4c01
8000e04a:	0181                	.insn	2, 0x0181
8000e04c:	0288                	.insn	2, 0x0288
8000e04e:	0389                	.insn	2, 0x0389
8000e050:	0c44                	.insn	2, 0x0c44
8000e052:	0008                	.insn	2, 0x0008
8000e054:	020a                	.insn	2, 0x020a
8000e056:	0c4c                	.insn	2, 0x0c4c
8000e058:	9002                	.insn	2, 0x9002
8000e05a:	4c01                	.insn	2, 0x4c01
8000e05c:	c8c1                	.insn	2, 0xc8c1
8000e05e:	44c9                	.insn	2, 0x44c9
8000e060:	000e                	.insn	2, 0x000e
8000e062:	0b44                	.insn	2, 0x0b44
8000e064:	c402                	.insn	2, 0xc402
8000e066:	020c                	.insn	2, 0x020c
8000e068:	0190                	.insn	2, 0x0190
8000e06a:	c14c                	.insn	2, 0xc14c
8000e06c:	c9c8                	.insn	2, 0xc9c8
8000e06e:	0e44                	.insn	2, 0x0e44
8000e070:	0000                	.insn	2, 0x
8000e072:	0000                	.insn	2, 0x
8000e074:	003c                	.insn	2, 0x003c
8000e076:	0000                	.insn	2, 0x
8000e078:	0a68                	.insn	2, 0x0a68
8000e07a:	0000                	.insn	2, 0x
8000e07c:	ba5c                	.insn	2, 0xba5c
8000e07e:	ffff                	.insn	2, 0xffff
8000e080:	013c                	.insn	2, 0x013c
8000e082:	0000                	.insn	2, 0x
8000e084:	4400                	.insn	2, 0x4400
8000e086:	900e                	.insn	2, 0x900e
8000e088:	4c01                	.insn	2, 0x4c01
8000e08a:	0181                	.insn	2, 0x0181
8000e08c:	0288                	.insn	2, 0x0288
8000e08e:	0389                	.insn	2, 0x0389
8000e090:	0c44                	.insn	2, 0x0c44
8000e092:	0008                	.insn	2, 0x0008
8000e094:	020a                	.insn	2, 0x020a
8000e096:	0c48                	.insn	2, 0x0c48
8000e098:	9002                	.insn	2, 0x9002
8000e09a:	4c01                	.insn	2, 0x4c01
8000e09c:	c8c1                	.insn	2, 0xc8c1
8000e09e:	44c9                	.insn	2, 0x44c9
8000e0a0:	000e                	.insn	2, 0x000e
8000e0a2:	0b44                	.insn	2, 0x0b44
8000e0a4:	b802                	.insn	2, 0xb802
8000e0a6:	020c                	.insn	2, 0x020c
8000e0a8:	0190                	.insn	2, 0x0190
8000e0aa:	c14c                	.insn	2, 0xc14c
8000e0ac:	c9c8                	.insn	2, 0xc9c8
8000e0ae:	0e44                	.insn	2, 0x0e44
8000e0b0:	0000                	.insn	2, 0x
8000e0b2:	0000                	.insn	2, 0x
8000e0b4:	0028                	.insn	2, 0x0028
8000e0b6:	0000                	.insn	2, 0x
8000e0b8:	0aa8                	.insn	2, 0x0aa8
8000e0ba:	0000                	.insn	2, 0x
8000e0bc:	bb58                	.insn	2, 0xbb58
8000e0be:	ffff                	.insn	2, 0xffff
8000e0c0:	0060                	.insn	2, 0x0060
8000e0c2:	0000                	.insn	2, 0x
8000e0c4:	4400                	.insn	2, 0x4400
8000e0c6:	200e                	.insn	2, 0x200e
8000e0c8:	814c                	.insn	2, 0x814c
8000e0ca:	8801                	.insn	2, 0x8801
8000e0cc:	8902                	.insn	2, 0x8902
8000e0ce:	080c4403          	lbu	s0,128(s8)
8000e0d2:	7800                	.insn	2, 0x7800
8000e0d4:	020c                	.insn	2, 0x020c
8000e0d6:	4c20                	.insn	2, 0x4c20
8000e0d8:	c8c1                	.insn	2, 0xc8c1
8000e0da:	44c9                	.insn	2, 0x44c9
8000e0dc:	000e                	.insn	2, 0x000e
8000e0de:	0000                	.insn	2, 0x
8000e0e0:	0048                	.insn	2, 0x0048
8000e0e2:	0000                	.insn	2, 0x
8000e0e4:	0ad4                	.insn	2, 0x0ad4
8000e0e6:	0000                	.insn	2, 0x
8000e0e8:	bb8c                	.insn	2, 0xbb8c
8000e0ea:	ffff                	.insn	2, 0xffff
8000e0ec:	01f4                	.insn	2, 0x01f4
8000e0ee:	0000                	.insn	2, 0x
8000e0f0:	4400                	.insn	2, 0x4400
8000e0f2:	400e                	.insn	2, 0x400e
8000e0f4:	8174                	.insn	2, 0x8174
8000e0f6:	8801                	.insn	2, 0x8801
8000e0f8:	8902                	.insn	2, 0x8902
8000e0fa:	93049203          	lh	tp,-1744(s1)
8000e0fe:	9405                	.insn	2, 0x9405
8000e100:	9506                	.insn	2, 0x9506
8000e102:	97089607          	.insn	4, 0x97089607
8000e106:	9809                	.insn	2, 0x9809
8000e108:	990a                	.insn	2, 0x990a
8000e10a:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000e10e:	440d                	.insn	2, 0x440d
8000e110:	080c                	.insn	2, 0x080c
8000e112:	0300                	.insn	2, 0x0300
8000e114:	017c                	.insn	2, 0x017c
8000e116:	020c                	.insn	2, 0x020c
8000e118:	7440                	.insn	2, 0x7440
8000e11a:	c8c1                	.insn	2, 0xc8c1
8000e11c:	d2c9                	.insn	2, 0xd2c9
8000e11e:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000e122:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000e126:	000e44db          	.insn	4, 0x000e44db
8000e12a:	0000                	.insn	2, 0x
8000e12c:	0048                	.insn	2, 0x0048
8000e12e:	0000                	.insn	2, 0x
8000e130:	0b20                	.insn	2, 0x0b20
8000e132:	0000                	.insn	2, 0x
8000e134:	bd34                	.insn	2, 0xbd34
8000e136:	ffff                	.insn	2, 0xffff
8000e138:	0258                	.insn	2, 0x0258
8000e13a:	0000                	.insn	2, 0x
8000e13c:	4400                	.insn	2, 0x4400
8000e13e:	500e                	.insn	2, 0x500e
8000e140:	8174                	.insn	2, 0x8174
8000e142:	8801                	.insn	2, 0x8801
8000e144:	8902                	.insn	2, 0x8902
8000e146:	93049203          	lh	tp,-1744(s1)
8000e14a:	9405                	.insn	2, 0x9405
8000e14c:	9506                	.insn	2, 0x9506
8000e14e:	97089607          	.insn	4, 0x97089607
8000e152:	9809                	.insn	2, 0x9809
8000e154:	990a                	.insn	2, 0x990a
8000e156:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000e15a:	440d                	.insn	2, 0x440d
8000e15c:	080c                	.insn	2, 0x080c
8000e15e:	0300                	.insn	2, 0x0300
8000e160:	01e0                	.insn	2, 0x01e0
8000e162:	020c                	.insn	2, 0x020c
8000e164:	7450                	.insn	2, 0x7450
8000e166:	c8c1                	.insn	2, 0xc8c1
8000e168:	d2c9                	.insn	2, 0xd2c9
8000e16a:	d6d5d4d3          	.insn	4, 0xd6d5d4d3
8000e16e:	dad9d8d7          	.insn	4, 0xdad9d8d7
8000e172:	000e44db          	.insn	4, 0x000e44db
8000e176:	0000                	.insn	2, 0x
8000e178:	0024                	.insn	2, 0x0024
8000e17a:	0000                	.insn	2, 0x
8000e17c:	0b6c                	.insn	2, 0x0b6c
8000e17e:	0000                	.insn	2, 0x
8000e180:	bf40                	.insn	2, 0xbf40
8000e182:	ffff                	.insn	2, 0xffff
8000e184:	003c                	.insn	2, 0x003c
8000e186:	0000                	.insn	2, 0x
8000e188:	4400                	.insn	2, 0x4400
8000e18a:	100e                	.insn	2, 0x100e
8000e18c:	8148                	.insn	2, 0x8148
8000e18e:	8801                	.insn	2, 0x8801
8000e190:	4402                	.insn	2, 0x4402
8000e192:	080c                	.insn	2, 0x080c
8000e194:	5800                	.insn	2, 0x5800
8000e196:	020c                	.insn	2, 0x020c
8000e198:	4810                	.insn	2, 0x4810
8000e19a:	c8c1                	.insn	2, 0xc8c1
8000e19c:	0e44                	.insn	2, 0x0e44
8000e19e:	0000                	.insn	2, 0x
8000e1a0:	0024                	.insn	2, 0x0024
8000e1a2:	0000                	.insn	2, 0x
8000e1a4:	0b94                	.insn	2, 0x0b94
8000e1a6:	0000                	.insn	2, 0x
8000e1a8:	bf54                	.insn	2, 0xbf54
8000e1aa:	ffff                	.insn	2, 0xffff
8000e1ac:	002c                	.insn	2, 0x002c
8000e1ae:	0000                	.insn	2, 0x
8000e1b0:	4400                	.insn	2, 0x4400
8000e1b2:	100e                	.insn	2, 0x100e
8000e1b4:	8148                	.insn	2, 0x8148
8000e1b6:	8801                	.insn	2, 0x8801
8000e1b8:	4402                	.insn	2, 0x4402
8000e1ba:	080c                	.insn	2, 0x080c
8000e1bc:	4c00                	.insn	2, 0x4c00
8000e1be:	020c                	.insn	2, 0x020c
8000e1c0:	4810                	.insn	2, 0x4810
8000e1c2:	c8c1                	.insn	2, 0xc8c1
8000e1c4:	0e44                	.insn	2, 0x0e44
8000e1c6:	0000                	.insn	2, 0x
8000e1c8:	0024                	.insn	2, 0x0024
8000e1ca:	0000                	.insn	2, 0x
8000e1cc:	0bbc                	.insn	2, 0x0bbc
8000e1ce:	0000                	.insn	2, 0x
8000e1d0:	bf58                	.insn	2, 0xbf58
8000e1d2:	ffff                	.insn	2, 0xffff
8000e1d4:	0034                	.insn	2, 0x0034
8000e1d6:	0000                	.insn	2, 0x
8000e1d8:	4400                	.insn	2, 0x4400
8000e1da:	100e                	.insn	2, 0x100e
8000e1dc:	8148                	.insn	2, 0x8148
8000e1de:	8801                	.insn	2, 0x8801
8000e1e0:	4402                	.insn	2, 0x4402
8000e1e2:	080c                	.insn	2, 0x080c
8000e1e4:	5000                	.insn	2, 0x5000
8000e1e6:	020c                	.insn	2, 0x020c
8000e1e8:	4810                	.insn	2, 0x4810
8000e1ea:	c8c1                	.insn	2, 0xc8c1
8000e1ec:	0e44                	.insn	2, 0x0e44
8000e1ee:	0000                	.insn	2, 0x
8000e1f0:	001c                	.insn	2, 0x001c
8000e1f2:	0000                	.insn	2, 0x
8000e1f4:	0be4                	.insn	2, 0x0be4
8000e1f6:	0000                	.insn	2, 0x
8000e1f8:	bf64                	.insn	2, 0xbf64
8000e1fa:	ffff                	.insn	2, 0xffff
8000e1fc:	006c                	.insn	2, 0x006c
8000e1fe:	0000                	.insn	2, 0x
8000e200:	4400                	.insn	2, 0x4400
8000e202:	400e                	.insn	2, 0x400e
8000e204:	8148                	.insn	2, 0x8148
8000e206:	8801                	.insn	2, 0x8801
8000e208:	4402                	.insn	2, 0x4402
8000e20a:	080c                	.insn	2, 0x080c
8000e20c:	0000                	.insn	2, 0x
8000e20e:	0000                	.insn	2, 0x
8000e210:	0024                	.insn	2, 0x0024
8000e212:	0000                	.insn	2, 0x
8000e214:	0c04                	.insn	2, 0x0c04
8000e216:	0000                	.insn	2, 0x
8000e218:	bfb0                	.insn	2, 0xbfb0
8000e21a:	ffff                	.insn	2, 0xffff
8000e21c:	0048                	.insn	2, 0x0048
8000e21e:	0000                	.insn	2, 0x
8000e220:	4400                	.insn	2, 0x4400
8000e222:	100e                	.insn	2, 0x100e
8000e224:	8148                	.insn	2, 0x8148
8000e226:	8801                	.insn	2, 0x8801
8000e228:	4402                	.insn	2, 0x4402
8000e22a:	080c                	.insn	2, 0x080c
8000e22c:	6800                	.insn	2, 0x6800
8000e22e:	020c                	.insn	2, 0x020c
8000e230:	4810                	.insn	2, 0x4810
8000e232:	c8c1                	.insn	2, 0xc8c1
8000e234:	0e44                	.insn	2, 0x0e44
8000e236:	0000                	.insn	2, 0x
8000e238:	0034                	.insn	2, 0x0034
8000e23a:	0000                	.insn	2, 0x
8000e23c:	0c2c                	.insn	2, 0x0c2c
8000e23e:	0000                	.insn	2, 0x
8000e240:	bfd0                	.insn	2, 0xbfd0
8000e242:	ffff                	.insn	2, 0xffff
8000e244:	0098                	.insn	2, 0x0098
8000e246:	0000                	.insn	2, 0x
8000e248:	4400                	.insn	2, 0x4400
8000e24a:	100e                	.insn	2, 0x100e
8000e24c:	8148                	.insn	2, 0x8148
8000e24e:	8801                	.insn	2, 0x8801
8000e250:	4402                	.insn	2, 0x4402
8000e252:	080c                	.insn	2, 0x080c
8000e254:	0a00                	.insn	2, 0x0a00
8000e256:	6002                	.insn	2, 0x6002
8000e258:	020c                	.insn	2, 0x020c
8000e25a:	4810                	.insn	2, 0x4810
8000e25c:	c8c1                	.insn	2, 0xc8c1
8000e25e:	0e44                	.insn	2, 0x0e44
8000e260:	4400                	.insn	2, 0x4400
8000e262:	020c480b          	.insn	4, 0x020c480b
8000e266:	4810                	.insn	2, 0x4810
8000e268:	c8c1                	.insn	2, 0xc8c1
8000e26a:	0e44                	.insn	2, 0x0e44
8000e26c:	0000                	.insn	2, 0x
8000e26e:	0000                	.insn	2, 0x
8000e270:	0024                	.insn	2, 0x0024
8000e272:	0000                	.insn	2, 0x
8000e274:	0c64                	.insn	2, 0x0c64
8000e276:	0000                	.insn	2, 0x
8000e278:	c030                	.insn	2, 0xc030
8000e27a:	ffff                	.insn	2, 0xffff
8000e27c:	0024                	.insn	2, 0x0024
8000e27e:	0000                	.insn	2, 0x
8000e280:	4400                	.insn	2, 0x4400
8000e282:	100e                	.insn	2, 0x100e
8000e284:	8148                	.insn	2, 0x8148
8000e286:	8801                	.insn	2, 0x8801
8000e288:	4402                	.insn	2, 0x4402
8000e28a:	080c                	.insn	2, 0x080c
8000e28c:	0c00                	.insn	2, 0x0c00
8000e28e:	1002                	.insn	2, 0x1002
8000e290:	c148                	.insn	2, 0xc148
8000e292:	44c8                	.insn	2, 0x44c8
8000e294:	000e                	.insn	2, 0x000e
8000e296:	0000                	.insn	2, 0x
8000e298:	0038                	.insn	2, 0x0038
8000e29a:	0000                	.insn	2, 0x
8000e29c:	0c8c                	.insn	2, 0x0c8c
8000e29e:	0000                	.insn	2, 0x
8000e2a0:	c02c                	.insn	2, 0xc02c
8000e2a2:	ffff                	.insn	2, 0xffff
8000e2a4:	0310                	.insn	2, 0x0310
8000e2a6:	0000                	.insn	2, 0x
8000e2a8:	4400                	.insn	2, 0x4400
8000e2aa:	200e                	.insn	2, 0x200e
8000e2ac:	815c                	.insn	2, 0x815c
8000e2ae:	8801                	.insn	2, 0x8801
8000e2b0:	8902                	.insn	2, 0x8902
8000e2b2:	93049203          	lh	tp,-1744(s1)
8000e2b6:	9405                	.insn	2, 0x9405
8000e2b8:	9506                	.insn	2, 0x9506
8000e2ba:	080c4407          	.insn	4, 0x080c4407
8000e2be:	0a00                	.insn	2, 0x0a00
8000e2c0:	0c011003          	lh	zero,192(sp)
8000e2c4:	2002                	.insn	2, 0x2002
8000e2c6:	c15c                	.insn	2, 0xc15c
8000e2c8:	c9c8                	.insn	2, 0xc9c8
8000e2ca:	d3d2                	.insn	2, 0xd3d2
8000e2cc:	d5d4                	.insn	2, 0xd5d4
8000e2ce:	0e44                	.insn	2, 0x0e44
8000e2d0:	4400                	.insn	2, 0x4400
8000e2d2:	0024000b          	.insn	4, 0x0024000b
8000e2d6:	0000                	.insn	2, 0x
8000e2d8:	0cc8                	.insn	2, 0x0cc8
8000e2da:	0000                	.insn	2, 0x
8000e2dc:	c300                	.insn	2, 0xc300
8000e2de:	ffff                	.insn	2, 0xffff
8000e2e0:	0024                	.insn	2, 0x0024
8000e2e2:	0000                	.insn	2, 0x
8000e2e4:	4400                	.insn	2, 0x4400
8000e2e6:	100e                	.insn	2, 0x100e
8000e2e8:	8148                	.insn	2, 0x8148
8000e2ea:	8801                	.insn	2, 0x8801
8000e2ec:	4402                	.insn	2, 0x4402
8000e2ee:	080c                	.insn	2, 0x080c
8000e2f0:	0c00                	.insn	2, 0x0c00
8000e2f2:	1002                	.insn	2, 0x1002
8000e2f4:	c148                	.insn	2, 0xc148
8000e2f6:	44c8                	.insn	2, 0x44c8
8000e2f8:	000e                	.insn	2, 0x000e
8000e2fa:	0000                	.insn	2, 0x
8000e2fc:	0040                	.insn	2, 0x0040
8000e2fe:	0000                	.insn	2, 0x
8000e300:	0cf0                	.insn	2, 0x0cf0
8000e302:	0000                	.insn	2, 0x
8000e304:	c2fc                	.insn	2, 0xc2fc
8000e306:	ffff                	.insn	2, 0xffff
8000e308:	0538                	.insn	2, 0x0538
8000e30a:	0000                	.insn	2, 0x
8000e30c:	4400                	.insn	2, 0x4400
8000e30e:	300e                	.insn	2, 0x300e
8000e310:	8164                	.insn	2, 0x8164
8000e312:	8801                	.insn	2, 0x8801
8000e314:	8902                	.insn	2, 0x8902
8000e316:	93049203          	lh	tp,-1744(s1)
8000e31a:	9405                	.insn	2, 0x9405
8000e31c:	9506                	.insn	2, 0x9506
8000e31e:	97089607          	.insn	4, 0x97089607
8000e322:	4409                	.insn	2, 0x4409
8000e324:	080c                	.insn	2, 0x080c
8000e326:	0a00                	.insn	2, 0x0a00
8000e328:	0c044803          	lbu	a6,192(s0)
8000e32c:	3002                	.insn	2, 0x3002
8000e32e:	c164                	.insn	2, 0xc164
8000e330:	c9c8                	.insn	2, 0xc9c8
8000e332:	d3d2                	.insn	2, 0xd3d2
8000e334:	d5d4                	.insn	2, 0xd5d4
8000e336:	d7d6                	.insn	2, 0xd7d6
8000e338:	0e44                	.insn	2, 0x0e44
8000e33a:	4400                	.insn	2, 0x4400
8000e33c:	0000000b          	.insn	4, 0x000b
8000e340:	0034                	.insn	2, 0x0034
8000e342:	0000                	.insn	2, 0x
8000e344:	0d34                	.insn	2, 0x0d34
8000e346:	0000                	.insn	2, 0x
8000e348:	c7f0                	.insn	2, 0xc7f0
8000e34a:	ffff                	.insn	2, 0xffff
8000e34c:	0164                	.insn	2, 0x0164
8000e34e:	0000                	.insn	2, 0x
8000e350:	4400                	.insn	2, 0x4400
8000e352:	100e                	.insn	2, 0x100e
8000e354:	8148                	.insn	2, 0x8148
8000e356:	8801                	.insn	2, 0x8801
8000e358:	4402                	.insn	2, 0x4402
8000e35a:	080c                	.insn	2, 0x080c
8000e35c:	0a00                	.insn	2, 0x0a00
8000e35e:	0c50                	.insn	2, 0x0c50
8000e360:	1002                	.insn	2, 0x1002
8000e362:	c148                	.insn	2, 0xc148
8000e364:	44c8                	.insn	2, 0x44c8
8000e366:	000e                	.insn	2, 0x000e
8000e368:	0b44                	.insn	2, 0x0b44
8000e36a:	0c012403          	lw	s0,192(sp)
8000e36e:	1002                	.insn	2, 0x1002
8000e370:	c148                	.insn	2, 0xc148
8000e372:	44c8                	.insn	2, 0x44c8
8000e374:	000e                	.insn	2, 0x000e
8000e376:	0000                	.insn	2, 0x
8000e378:	0024                	.insn	2, 0x0024
8000e37a:	0000                	.insn	2, 0x
8000e37c:	0d6c                	.insn	2, 0x0d6c
8000e37e:	0000                	.insn	2, 0x
8000e380:	c91c                	.insn	2, 0xc91c
8000e382:	ffff                	.insn	2, 0xffff
8000e384:	0024                	.insn	2, 0x0024
8000e386:	0000                	.insn	2, 0x
8000e388:	4400                	.insn	2, 0x4400
8000e38a:	100e                	.insn	2, 0x100e
8000e38c:	8148                	.insn	2, 0x8148
8000e38e:	8801                	.insn	2, 0x8801
8000e390:	4402                	.insn	2, 0x4402
8000e392:	080c                	.insn	2, 0x080c
8000e394:	0c00                	.insn	2, 0x0c00
8000e396:	1002                	.insn	2, 0x1002
8000e398:	c148                	.insn	2, 0xc148
8000e39a:	44c8                	.insn	2, 0x44c8
8000e39c:	000e                	.insn	2, 0x000e
8000e39e:	0000                	.insn	2, 0x
8000e3a0:	0028                	.insn	2, 0x0028
8000e3a2:	0000                	.insn	2, 0x
8000e3a4:	0d94                	.insn	2, 0x0d94
8000e3a6:	0000                	.insn	2, 0x
8000e3a8:	c918                	.insn	2, 0xc918
8000e3aa:	ffff                	.insn	2, 0xffff
8000e3ac:	0220                	.insn	2, 0x0220
8000e3ae:	0000                	.insn	2, 0x
8000e3b0:	4400                	.insn	2, 0x4400
8000e3b2:	200e                	.insn	2, 0x200e
8000e3b4:	8148                	.insn	2, 0x8148
8000e3b6:	8801                	.insn	2, 0x8801
8000e3b8:	4402                	.insn	2, 0x4402
8000e3ba:	080c                	.insn	2, 0x080c
8000e3bc:	0a00                	.insn	2, 0x0a00
8000e3be:	a802                	.insn	2, 0xa802
8000e3c0:	020c                	.insn	2, 0x020c
8000e3c2:	4820                	.insn	2, 0x4820
8000e3c4:	c8c1                	.insn	2, 0xc8c1
8000e3c6:	0e44                	.insn	2, 0x0e44
8000e3c8:	4400                	.insn	2, 0x4400
8000e3ca:	0024000b          	.insn	4, 0x0024000b
8000e3ce:	0000                	.insn	2, 0x
8000e3d0:	0dc0                	.insn	2, 0x0dc0
8000e3d2:	0000                	.insn	2, 0x
8000e3d4:	cb0c                	.insn	2, 0xcb0c
8000e3d6:	ffff                	.insn	2, 0xffff
8000e3d8:	0044                	.insn	2, 0x0044
8000e3da:	0000                	.insn	2, 0x
8000e3dc:	4400                	.insn	2, 0x4400
8000e3de:	200e                	.insn	2, 0x200e
8000e3e0:	8148                	.insn	2, 0x8148
8000e3e2:	8801                	.insn	2, 0x8801
8000e3e4:	4402                	.insn	2, 0x4402
8000e3e6:	080c                	.insn	2, 0x080c
8000e3e8:	6400                	.insn	2, 0x6400
8000e3ea:	020c                	.insn	2, 0x020c
8000e3ec:	4820                	.insn	2, 0x4820
8000e3ee:	c8c1                	.insn	2, 0xc8c1
8000e3f0:	0e44                	.insn	2, 0x0e44
8000e3f2:	0000                	.insn	2, 0x
8000e3f4:	0024                	.insn	2, 0x0024
8000e3f6:	0000                	.insn	2, 0x
8000e3f8:	0de8                	.insn	2, 0x0de8
8000e3fa:	0000                	.insn	2, 0x
8000e3fc:	cb28                	.insn	2, 0xcb28
8000e3fe:	ffff                	.insn	2, 0xffff
8000e400:	0024                	.insn	2, 0x0024
8000e402:	0000                	.insn	2, 0x
8000e404:	4400                	.insn	2, 0x4400
8000e406:	100e                	.insn	2, 0x100e
8000e408:	8148                	.insn	2, 0x8148
8000e40a:	8801                	.insn	2, 0x8801
8000e40c:	4402                	.insn	2, 0x4402
8000e40e:	080c                	.insn	2, 0x080c
8000e410:	0c00                	.insn	2, 0x0c00
8000e412:	1002                	.insn	2, 0x1002
8000e414:	c148                	.insn	2, 0xc148
8000e416:	44c8                	.insn	2, 0x44c8
8000e418:	000e                	.insn	2, 0x000e
8000e41a:	0000                	.insn	2, 0x
8000e41c:	0090                	.insn	2, 0x0090
8000e41e:	0000                	.insn	2, 0x
8000e420:	0e10                	.insn	2, 0x0e10
8000e422:	0000                	.insn	2, 0x
8000e424:	cb24                	.insn	2, 0xcb24
8000e426:	ffff                	.insn	2, 0xffff
8000e428:	0438                	.insn	2, 0x0438
8000e42a:	0000                	.insn	2, 0x
8000e42c:	4400                	.insn	2, 0x4400
8000e42e:	100e                	.insn	2, 0x100e
8000e430:	8148                	.insn	2, 0x8148
8000e432:	8801                	.insn	2, 0x8801
8000e434:	4402                	.insn	2, 0x4402
8000e436:	080c                	.insn	2, 0x080c
8000e438:	0a00                	.insn	2, 0x0a00
8000e43a:	7402                	.insn	2, 0x7402
8000e43c:	020c                	.insn	2, 0x020c
8000e43e:	4810                	.insn	2, 0x4810
8000e440:	c8c1                	.insn	2, 0xc8c1
8000e442:	0e44                	.insn	2, 0x0e44
8000e444:	4400                	.insn	2, 0x4400
8000e446:	b4020a0b          	.insn	4, 0xb4020a0b
8000e44a:	020c                	.insn	2, 0x020c
8000e44c:	4810                	.insn	2, 0x4810
8000e44e:	c8c1                	.insn	2, 0xc8c1
8000e450:	0e44                	.insn	2, 0x0e44
8000e452:	4400                	.insn	2, 0x4400
8000e454:	0c540a0b          	.insn	4, 0x0c540a0b
8000e458:	1002                	.insn	2, 0x1002
8000e45a:	c148                	.insn	2, 0xc148
8000e45c:	44c8                	.insn	2, 0x44c8
8000e45e:	000e                	.insn	2, 0x000e
8000e460:	0b44                	.insn	2, 0x0b44
8000e462:	030a                	.insn	2, 0x030a
8000e464:	01e0                	.insn	2, 0x01e0
8000e466:	020c                	.insn	2, 0x020c
8000e468:	4810                	.insn	2, 0x4810
8000e46a:	c8c1                	.insn	2, 0xc8c1
8000e46c:	0e44                	.insn	2, 0x0e44
8000e46e:	4400                	.insn	2, 0x4400
8000e470:	48020a0b          	.insn	4, 0x48020a0b
8000e474:	020c                	.insn	2, 0x020c
8000e476:	4810                	.insn	2, 0x4810
8000e478:	c8c1                	.insn	2, 0xc8c1
8000e47a:	0e44                	.insn	2, 0x0e44
8000e47c:	4400                	.insn	2, 0x4400
8000e47e:	0c4c0a0b          	.insn	4, 0x0c4c0a0b
8000e482:	1002                	.insn	2, 0x1002
8000e484:	c148                	.insn	2, 0xc148
8000e486:	44c8                	.insn	2, 0x44c8
8000e488:	000e                	.insn	2, 0x000e
8000e48a:	0b44                	.insn	2, 0x0b44
8000e48c:	440a                	.insn	2, 0x440a
8000e48e:	020c                	.insn	2, 0x020c
8000e490:	4810                	.insn	2, 0x4810
8000e492:	c8c1                	.insn	2, 0xc8c1
8000e494:	0e44                	.insn	2, 0x0e44
8000e496:	4400                	.insn	2, 0x4400
8000e498:	0c480a0b          	.insn	4, 0x0c480a0b
8000e49c:	1002                	.insn	2, 0x1002
8000e49e:	c148                	.insn	2, 0xc148
8000e4a0:	44c8                	.insn	2, 0x44c8
8000e4a2:	000e                	.insn	2, 0x000e
8000e4a4:	0b44                	.insn	2, 0x0b44
8000e4a6:	0c5c                	.insn	2, 0x0c5c
8000e4a8:	1002                	.insn	2, 0x1002
8000e4aa:	c148                	.insn	2, 0xc148
8000e4ac:	44c8                	.insn	2, 0x44c8
8000e4ae:	000e                	.insn	2, 0x000e
8000e4b0:	002c                	.insn	2, 0x002c
8000e4b2:	0000                	.insn	2, 0x
8000e4b4:	0ea4                	.insn	2, 0x0ea4
8000e4b6:	0000                	.insn	2, 0x
8000e4b8:	cec8                	.insn	2, 0xcec8
8000e4ba:	ffff                	.insn	2, 0xffff
8000e4bc:	0064                	.insn	2, 0x0064
8000e4be:	0000                	.insn	2, 0x
8000e4c0:	4400                	.insn	2, 0x4400
8000e4c2:	100e                	.insn	2, 0x100e
8000e4c4:	8150                	.insn	2, 0x8150
8000e4c6:	8801                	.insn	2, 0x8801
8000e4c8:	8902                	.insn	2, 0x8902
8000e4ca:	44049203          	lh	tp,1088(s1)
8000e4ce:	080c                	.insn	2, 0x080c
8000e4d0:	7400                	.insn	2, 0x7400
8000e4d2:	020c                	.insn	2, 0x020c
8000e4d4:	5010                	.insn	2, 0x5010
8000e4d6:	c8c1                	.insn	2, 0xc8c1
8000e4d8:	d2c9                	.insn	2, 0xd2c9
8000e4da:	0e44                	.insn	2, 0x0e44
8000e4dc:	0000                	.insn	2, 0x
8000e4de:	0000                	.insn	2, 0x
8000e4e0:	0034                	.insn	2, 0x0034
8000e4e2:	0000                	.insn	2, 0x
8000e4e4:	0ed4                	.insn	2, 0x0ed4
8000e4e6:	0000                	.insn	2, 0x
8000e4e8:	cefc                	.insn	2, 0xcefc
8000e4ea:	ffff                	.insn	2, 0xffff
8000e4ec:	00d8                	.insn	2, 0x00d8
8000e4ee:	0000                	.insn	2, 0x
8000e4f0:	4400                	.insn	2, 0x4400
8000e4f2:	200e                	.insn	2, 0x200e
8000e4f4:	8158                	.insn	2, 0x8158
8000e4f6:	8801                	.insn	2, 0x8801
8000e4f8:	8902                	.insn	2, 0x8902
8000e4fa:	93049203          	lh	tp,-1744(s1)
8000e4fe:	9405                	.insn	2, 0x9405
8000e500:	4406                	.insn	2, 0x4406
8000e502:	080c                	.insn	2, 0x080c
8000e504:	0a00                	.insn	2, 0x0a00
8000e506:	8802                	.insn	2, 0x8802
8000e508:	020c                	.insn	2, 0x020c
8000e50a:	5820                	.insn	2, 0x5820
8000e50c:	c8c1                	.insn	2, 0xc8c1
8000e50e:	d2c9                	.insn	2, 0xd2c9
8000e510:	0e44d4d3          	.insn	4, 0x0e44d4d3
8000e514:	4400                	.insn	2, 0x4400
8000e516:	0000000b          	.insn	4, 0x000b
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	7572                	.insn	2, 0x7572
   2:	20637473          	.insn	4, 0x20637473
   6:	6576                	.insn	2, 0x6576
   8:	7372                	.insn	2, 0x7372
   a:	6f69                	.insn	2, 0x6f69
   c:	206e                	.insn	2, 0x206e
   e:	2e31                	.insn	2, 0x2e31
  10:	3938                	.insn	2, 0x3938
  12:	302e                	.insn	2, 0x302e
  14:	6e2d                	.insn	2, 0x6e2d
  16:	6769                	.insn	2, 0x6769
  18:	7468                	.insn	2, 0x7468
  1a:	796c                	.insn	2, 0x796c
  1c:	2820                	.insn	2, 0x2820
  1e:	3832                	.insn	2, 0x3832
  20:	37626433          	.insn	4, 0x37626433
  24:	6130                	.insn	2, 0x6130
  26:	30322063          	.insn	4, 0x30322063
  2a:	3532                	.insn	2, 0x3532
  2c:	302d                	.insn	2, 0x302d
  2e:	2d35                	.insn	2, 0x2d35
  30:	3532                	.insn	2, 0x3532
  32:	0029                	.insn	2, 0x0029
  34:	4c00                	.insn	2, 0x4c00
  36:	6e69                	.insn	2, 0x6e69
  38:	3a72656b          	.insn	4, 0x3a72656b
  3c:	4c20                	.insn	2, 0x4c20
  3e:	444c                	.insn	2, 0x444c
  40:	3220                	.insn	2, 0x3220
  42:	2e30                	.insn	2, 0x2e30
  44:	2e31                	.insn	2, 0x2e31
  46:	2035                	.insn	2, 0x2035
  48:	2f28                	.insn	2, 0x2f28
  4a:	63656863          	bltu	a0,s6,67a <.Lline_table_start2+0x2c8>
  4e:	74756f6b          	.insn	4, 0x74756f6b
  52:	6372732f          	.insn	4, 0x6372732f
  56:	766c6c2f          	.insn	4, 0x766c6c2f
  5a:	2d6d                	.insn	2, 0x2d6d
  5c:	7270                	.insn	2, 0x7270
  5e:	63656a6f          	jal	s4,56694 <.Lline_table_start2+0x54e5a>
  62:	2f74                	.insn	2, 0x2f74
  64:	6c6c                	.insn	2, 0x6c6c
  66:	6d76                	.insn	2, 0x6d76
  68:	6320                	.insn	2, 0x6320
  6a:	3131                	.insn	2, 0x3131
  6c:	3831                	.insn	2, 0x3831
  6e:	6466                	.insn	2, 0x6466
  70:	6262                	.insn	2, 0x6262
  72:	34323033          	.insn	4, 0x34323033
  76:	3531                	.insn	2, 0x3531
  78:	37666437          	lui	s0,0x37666
  7c:	3466                	.insn	2, 0x3466
  7e:	37656663          	bltu	a0,s6,3ea <.Lline_table_start2+0x38>
  82:	3536                	.insn	2, 0x3536
  84:	3266                	.insn	2, 0x3266
  86:	3062                	.insn	2, 0x3062
  88:	3462                	.insn	2, 0x3462
  8a:	65393333          	.insn	4, 0x65393333
  8e:	6138                	.insn	2, 0x6138
  90:	2932                	.insn	2, 0x2932
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
  1e:	6d6f6263          	bltu	t5,s6,6e2 <.Lline_table_start2+0x330>
  22:	7031                	.insn	2, 0x7031
  24:	0030                	.insn	2, 0x0030
