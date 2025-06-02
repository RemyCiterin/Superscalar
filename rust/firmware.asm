
./rust/target/riscv32i-unknown-none-elf/release/SuperOS:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	0000d297          	auipc	t0,0xd
80000004:	f9828293          	addi	t0,t0,-104 # 8000cf98 <__bss_start>

80000008 <.Lpcrel_hi1>:
80000008:	0000e317          	auipc	t1,0xe
8000000c:	fc830313          	addi	t1,t1,-56 # 8000dfd0 <__bss_end>
80000010:	0062f863          	bgeu	t0,t1,80000020 <.Lpcrel_hi2>

80000014 <.bss_zero_loop>:
80000014:	00028023          	sb	zero,0(t0)
80000018:	00128293          	addi	t0,t0,1
8000001c:	fe62ece3          	bltu	t0,t1,80000014 <.bss_zero_loop>

80000020 <.Lpcrel_hi2>:
80000020:	0000e117          	auipc	sp,0xe
80000024:	fb010113          	addi	sp,sp,-80 # 8000dfd0 <__bss_end>
80000028:	155010ef          	jal	8000197c <kernel_main>

8000002c <.infinite_loop>:
8000002c:	0000006f          	j	8000002c <.infinite_loop>

80000030 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h474e3d1cccdd721fE>:
80000030:	00052503          	lw	a0,0(a0)
80000034:	00007317          	auipc	t1,0x7
80000038:	aa830067          	jr	-1368(t1) # 80006adc <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa05253f8c12d2c8E>

8000003c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h04315e1379c69354E>:
8000003c:	00052503          	lw	a0,0(a0)
80000040:	00007317          	auipc	t1,0x7
80000044:	b8c30067          	jr	-1140(t1) # 80006bcc <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E>

80000048 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E>:
80000048:	01c5a603          	lw	a2,28(a1)
8000004c:	01067693          	andi	a3,a2,16
80000050:	00069a63          	bnez	a3,80000064 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E+0x1c>
80000054:	02067613          	andi	a2,a2,32
80000058:	00061a63          	bnez	a2,8000006c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E+0x24>
8000005c:	00009317          	auipc	t1,0x9
80000060:	5e430067          	jr	1508(t1) # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80000064:	00009317          	auipc	t1,0x9
80000068:	3dc30067          	jr	988(t1) # 80009440 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
8000006c:	00009317          	auipc	t1,0x9
80000070:	45830067          	jr	1112(t1) # 800094c4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E>

80000074 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531>:
80000074:	ff010113          	addi	sp,sp,-16
80000078:	08000513          	li	a0,128
8000007c:	00012623          	sw	zero,12(sp)
80000080:	00a5f863          	bgeu	a1,a0,80000090 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0x1c>
80000084:	00d10513          	addi	a0,sp,13
80000088:	00b10623          	sb	a1,12(sp)
8000008c:	0a00006f          	j	8000012c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0xb8>
80000090:	00b5d513          	srli	a0,a1,0xb
80000094:	02051263          	bnez	a0,800000b8 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0x44>
80000098:	00e10513          	addi	a0,sp,14
8000009c:	0065d613          	srli	a2,a1,0x6
800000a0:	0c066613          	ori	a2,a2,192
800000a4:	00c10623          	sb	a2,12(sp)
800000a8:	03f5f593          	andi	a1,a1,63
800000ac:	08058593          	addi	a1,a1,128
800000b0:	00b106a3          	sb	a1,13(sp)
800000b4:	0780006f          	j	8000012c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0xb8>
800000b8:	0105d513          	srli	a0,a1,0x10
800000bc:	02051a63          	bnez	a0,800000f0 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0x7c>
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
800000ec:	0400006f          	j	8000012c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0xb8>
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
8000013c:	00d58023          	sb	a3,0(a1) # 10000000 <.Lline_table_start2+0xfffec52>
80000140:	00070613          	mv	a2,a4
80000144:	fea718e3          	bne	a4,a0,80000134 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.11087050053344146531+0xc0>
80000148:	00000513          	li	a0,0
8000014c:	01010113          	addi	sp,sp,16
80000150:	00008067          	ret

80000154 <_ZN4core3fmt5Write9write_fmt17hfc336d22037d8a30E.llvm.11087050053344146531>:
80000154:	8000b637          	lui	a2,0x8000b
80000158:	14c60613          	addi	a2,a2,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
8000015c:	00058693          	mv	a3,a1
80000160:	00060593          	mv	a1,a2
80000164:	00068613          	mv	a2,a3
80000168:	00008317          	auipc	t1,0x8
8000016c:	ab030067          	jr	-1360(t1) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80000170 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>:
80000170:	00052503          	lw	a0,0(a0)
80000174:	00009317          	auipc	t1,0x9
80000178:	9bc30067          	jr	-1604(t1) # 80008b30 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E>

8000017c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hba1ddd0fb8e63500E.llvm.11087050053344146531>:
8000017c:	8000b6b7          	lui	a3,0x8000b
80000180:	00068693          	mv	a3,a3
80000184:	00500613          	li	a2,5
80000188:	00058513          	mv	a0,a1
8000018c:	00068593          	mv	a1,a3
80000190:	00009317          	auipc	t1,0x9
80000194:	83030067          	jr	-2000(t1) # 800089c0 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

80000198 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE>:
80000198:	fd010113          	addi	sp,sp,-48
8000019c:	02112623          	sw	ra,44(sp)
800001a0:	02812423          	sw	s0,40(sp)
800001a4:	02912223          	sw	s1,36(sp)
800001a8:	03212023          	sw	s2,32(sp)
800001ac:	01312e23          	sw	s3,28(sp)
800001b0:	01412c23          	sw	s4,24(sp)
800001b4:	01512a23          	sw	s5,20(sp)
800001b8:	01612823          	sw	s6,16(sp)
800001bc:	00462683          	lw	a3,4(a2)
800001c0:	00058493          	mv	s1,a1
800001c4:	00050413          	mv	s0,a0
800001c8:	08068663          	beqz	a3,80000254 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0xbc>
800001cc:	00862983          	lw	s3,8(a2)
800001d0:	08098263          	beqz	s3,80000254 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0xbc>
800001d4:	00062a03          	lw	s4,0(a2)
800001d8:	8000d5b7          	lui	a1,0x8000d
800001dc:	fb458593          	addi	a1,a1,-76 # 8000cfb4 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531+0x4>
800001e0:	00410513          	addi	a0,sp,4
800001e4:	00400613          	li	a2,4
800001e8:	00048693          	mv	a3,s1
800001ec:	00001097          	auipc	ra,0x1
800001f0:	984080e7          	jalr	-1660(ra) # 80000b70 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>
800001f4:	00812503          	lw	a0,8(sp)
800001f8:	0c050463          	beqz	a0,800002c0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
800001fc:	00c12503          	lw	a0,12(sp)
80000200:	8000dab7          	lui	s5,0x8000d
80000204:	fb0aa583          	lw	a1,-80(s5) # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80000208:	00412903          	lw	s2,4(sp)
8000020c:	fb0a8b13          	addi	s6,s5,-80
80000210:	00a58533          	add	a0,a1,a0
80000214:	faaaa823          	sw	a0,-80(s5)
80000218:	00090513          	mv	a0,s2
8000021c:	000a0593          	mv	a1,s4
80000220:	00098613          	mv	a2,s3
80000224:	0000a097          	auipc	ra,0xa
80000228:	b94080e7          	jalr	-1132(ra) # 80009db8 <memcpy>
8000022c:	004b0513          	addi	a0,s6,4
80000230:	00400613          	li	a2,4
80000234:	000a0593          	mv	a1,s4
80000238:	00098693          	mv	a3,s3
8000023c:	00001097          	auipc	ra,0x1
80000240:	b1c080e7          	jalr	-1252(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80000244:	fb0aa503          	lw	a0,-80(s5)
80000248:	40b50533          	sub	a0,a0,a1
8000024c:	faaaa823          	sw	a0,-80(s5)
80000250:	0640006f          	j	800002b4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x11c>
80000254:	04048863          	beqz	s1,800002a4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x10c>
80000258:	8000d537          	lui	a0,0x8000d
8000025c:	fae54003          	lbu	zero,-82(a0) # 8000cfae <__rust_no_alloc_shim_is_unstable>
80000260:	8000d5b7          	lui	a1,0x8000d
80000264:	fb458593          	addi	a1,a1,-76 # 8000cfb4 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531+0x4>
80000268:	00410513          	addi	a0,sp,4
8000026c:	00400613          	li	a2,4
80000270:	00048693          	mv	a3,s1
80000274:	00001097          	auipc	ra,0x1
80000278:	8fc080e7          	jalr	-1796(ra) # 80000b70 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>
8000027c:	00812503          	lw	a0,8(sp)
80000280:	02050663          	beqz	a0,800002ac <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x114>
80000284:	00c12503          	lw	a0,12(sp)
80000288:	8000d5b7          	lui	a1,0x8000d
8000028c:	fb05a603          	lw	a2,-80(a1) # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80000290:	00412903          	lw	s2,4(sp)
80000294:	00a60533          	add	a0,a2,a0
80000298:	faa5a823          	sw	a0,-80(a1)
8000029c:	00091c63          	bnez	s2,800002b4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x11c>
800002a0:	0200006f          	j	800002c0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
800002a4:	00400913          	li	s2,4
800002a8:	00c0006f          	j	800002b4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x11c>
800002ac:	00000913          	li	s2,0
800002b0:	00000863          	beqz	zero,800002c0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
800002b4:	00000513          	li	a0,0
800002b8:	01242223          	sw	s2,4(s0)
800002bc:	0100006f          	j	800002cc <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x134>
800002c0:	00400513          	li	a0,4
800002c4:	00a42223          	sw	a0,4(s0)
800002c8:	00100513          	li	a0,1
800002cc:	00942423          	sw	s1,8(s0)
800002d0:	00a42023          	sw	a0,0(s0)
800002d4:	02c12083          	lw	ra,44(sp)
800002d8:	02812403          	lw	s0,40(sp)
800002dc:	02412483          	lw	s1,36(sp)
800002e0:	02012903          	lw	s2,32(sp)
800002e4:	01c12983          	lw	s3,28(sp)
800002e8:	01812a03          	lw	s4,24(sp)
800002ec:	01412a83          	lw	s5,20(sp)
800002f0:	01012b03          	lw	s6,16(sp)
800002f4:	03010113          	addi	sp,sp,48
800002f8:	00008067          	ret

800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>:
800002fc:	fd010113          	addi	sp,sp,-48
80000300:	02112623          	sw	ra,44(sp)
80000304:	02812423          	sw	s0,40(sp)
80000308:	02912223          	sw	s1,36(sp)
8000030c:	03212023          	sw	s2,32(sp)
80000310:	00050493          	mv	s1,a0
80000314:	00052683          	lw	a3,0(a0)
80000318:	00168513          	addi	a0,a3,1 # 8000b001 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.1+0x1>
8000031c:	00058413          	mv	s0,a1
80000320:	0a050463          	beqz	a0,800003c8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xcc>
80000324:	00d05463          	blez	a3,8000032c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x30>
80000328:	00169513          	slli	a0,a3,0x1
8000032c:	00400593          	li	a1,4
80000330:	00050913          	mv	s2,a0
80000334:	00a5e463          	bltu	a1,a0,8000033c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x40>
80000338:	00400913          	li	s2,4
8000033c:	01e55513          	srli	a0,a0,0x1e
80000340:	08051263          	bnez	a0,800003c4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xc8>
80000344:	00291593          	slli	a1,s2,0x2
80000348:	80000537          	lui	a0,0x80000
8000034c:	ffc50713          	addi	a4,a0,-4 # 7ffffffc <.Lline_table_start2+0x7fffec4e>
80000350:	00000513          	li	a0,0
80000354:	06b76a63          	bltu	a4,a1,800003c8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xcc>
80000358:	00068e63          	beqz	a3,80000374 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x78>
8000035c:	0044a503          	lw	a0,4(s1)
80000360:	00269693          	slli	a3,a3,0x2
80000364:	00a12a23          	sw	a0,20(sp)
80000368:	00d12e23          	sw	a3,28(sp)
8000036c:	00400513          	li	a0,4
80000370:	0080006f          	j	80000378 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0x7c>
80000374:	00000513          	li	a0,0
80000378:	00a12c23          	sw	a0,24(sp)
8000037c:	00810513          	addi	a0,sp,8
80000380:	01410613          	addi	a2,sp,20
80000384:	00000097          	auipc	ra,0x0
80000388:	e14080e7          	jalr	-492(ra) # 80000198 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE>
8000038c:	00812503          	lw	a0,8(sp)
80000390:	02051463          	bnez	a0,800003b8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xbc>
80000394:	00c12503          	lw	a0,12(sp)
80000398:	00a4a223          	sw	a0,4(s1)
8000039c:	0124a023          	sw	s2,0(s1)
800003a0:	02c12083          	lw	ra,44(sp)
800003a4:	02812403          	lw	s0,40(sp)
800003a8:	02412483          	lw	s1,36(sp)
800003ac:	02012903          	lw	s2,32(sp)
800003b0:	03010113          	addi	sp,sp,48
800003b4:	00008067          	ret
800003b8:	00c12503          	lw	a0,12(sp)
800003bc:	01012603          	lw	a2,16(sp)
800003c0:	0080006f          	j	800003c8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE+0xcc>
800003c4:	00000513          	li	a0,0
800003c8:	00060593          	mv	a1,a2
800003cc:	00040613          	mv	a2,s0
800003d0:	00002097          	auipc	ra,0x2
800003d4:	ccc080e7          	jalr	-820(ra) # 8000209c <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>

800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>:
800003d8:	fd010113          	addi	sp,sp,-48
800003dc:	02112623          	sw	ra,44(sp)
800003e0:	02812423          	sw	s0,40(sp)
800003e4:	02912223          	sw	s1,36(sp)
800003e8:	03212023          	sw	s2,32(sp)
800003ec:	01312e23          	sw	s3,28(sp)
800003f0:	01412c23          	sw	s4,24(sp)
800003f4:	00052983          	lw	s3,0(a0)
800003f8:	00198913          	addi	s2,s3,1
800003fc:	00058413          	mv	s0,a1
80000400:	0c090263          	beqz	s2,800004c4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xec>
80000404:	00050493          	mv	s1,a0
80000408:	01305463          	blez	s3,80000410 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x38>
8000040c:	00199913          	slli	s2,s3,0x1
80000410:	00400513          	li	a0,4
80000414:	01256463          	bltu	a0,s2,8000041c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x44>
80000418:	00400913          	li	s2,4
8000041c:	00c00613          	li	a2,12
80000420:	00090513          	mv	a0,s2
80000424:	00000593          	li	a1,0
80000428:	00000693          	li	a3,0
8000042c:	0000a097          	auipc	ra,0xa
80000430:	904080e7          	jalr	-1788(ra) # 80009d30 <__muldi3>
80000434:	08059863          	bnez	a1,800004c4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xec>
80000438:	00050a13          	mv	s4,a0
8000043c:	80000537          	lui	a0,0x80000
80000440:	ffc50613          	addi	a2,a0,-4 # 7ffffffc <.Lline_table_start2+0x7fffec4e>
80000444:	00000513          	li	a0,0
80000448:	09466a63          	bltu	a2,s4,800004dc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x104>
8000044c:	02098463          	beqz	s3,80000474 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0x9c>
80000450:	00c00593          	li	a1,12
80000454:	00098513          	mv	a0,s3
80000458:	0000a097          	auipc	ra,0xa
8000045c:	890080e7          	jalr	-1904(ra) # 80009ce8 <__mulsi3>
80000460:	0044a583          	lw	a1,4(s1)
80000464:	00b12623          	sw	a1,12(sp)
80000468:	00a12a23          	sw	a0,20(sp)
8000046c:	00400513          	li	a0,4
80000470:	0080006f          	j	80000478 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xa0>
80000474:	00000513          	li	a0,0
80000478:	00a12823          	sw	a0,16(sp)
8000047c:	00010513          	mv	a0,sp
80000480:	00c10613          	addi	a2,sp,12
80000484:	000a0593          	mv	a1,s4
80000488:	00000097          	auipc	ra,0x0
8000048c:	d10080e7          	jalr	-752(ra) # 80000198 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE>
80000490:	00012503          	lw	a0,0(sp)
80000494:	04051063          	bnez	a0,800004d4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE+0xfc>
80000498:	00412503          	lw	a0,4(sp)
8000049c:	00a4a223          	sw	a0,4(s1)
800004a0:	0124a023          	sw	s2,0(s1)
800004a4:	02c12083          	lw	ra,44(sp)
800004a8:	02812403          	lw	s0,40(sp)
800004ac:	02412483          	lw	s1,36(sp)
800004b0:	02012903          	lw	s2,32(sp)
800004b4:	01c12983          	lw	s3,28(sp)
800004b8:	01812a03          	lw	s4,24(sp)
800004bc:	03010113          	addi	sp,sp,48
800004c0:	00008067          	ret
800004c4:	00000513          	li	a0,0
800004c8:	00040613          	mv	a2,s0
800004cc:	00002097          	auipc	ra,0x2
800004d0:	bd0080e7          	jalr	-1072(ra) # 8000209c <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>
800004d4:	00412503          	lw	a0,4(sp)
800004d8:	00812583          	lw	a1,8(sp)
800004dc:	00040613          	mv	a2,s0
800004e0:	00002097          	auipc	ra,0x2
800004e4:	bbc080e7          	jalr	-1092(ra) # 8000209c <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>

800004e8 <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7c70724592f5f6eE>:
800004e8:	fe010113          	addi	sp,sp,-32
800004ec:	00112e23          	sw	ra,28(sp)
800004f0:	00058293          	mv	t0,a1
800004f4:	00450793          	addi	a5,a0,4
800004f8:	00a12c23          	sw	a0,24(sp)
800004fc:	8000b537          	lui	a0,0x8000b
80000500:	01850513          	addi	a0,a0,24 # 8000b018 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.3>
80000504:	00a12423          	sw	a0,8(sp)
80000508:	01810513          	addi	a0,sp,24
8000050c:	00a12223          	sw	a0,4(sp)
80000510:	00500513          	li	a0,5
80000514:	8000b5b7          	lui	a1,0x8000b
80000518:	02858593          	addi	a1,a1,40 # 8000b028 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4>
8000051c:	8000b6b7          	lui	a3,0x8000b
80000520:	03268693          	addi	a3,a3,50 # 8000b032 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4+0xa>
80000524:	8000b837          	lui	a6,0x8000b
80000528:	00880813          	addi	a6,a6,8 # 8000b008 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.2>
8000052c:	8000b8b7          	lui	a7,0x8000b
80000530:	03688893          	addi	a7,a7,54 # 8000b036 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.6>
80000534:	00600613          	li	a2,6
80000538:	00400713          	li	a4,4
8000053c:	00a12023          	sw	a0,0(sp)
80000540:	00028513          	mv	a0,t0
80000544:	00008097          	auipc	ra,0x8
80000548:	4a8080e7          	jalr	1192(ra) # 800089ec <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E>
8000054c:	01c12083          	lw	ra,28(sp)
80000550:	02010113          	addi	sp,sp,32
80000554:	00008067          	ret

80000558 <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.11087050053344146531>:
80000558:	00054503          	lbu	a0,0(a0)
8000055c:	00251513          	slli	a0,a0,0x2
80000560:	8000b637          	lui	a2,0x8000b
80000564:	2b860613          	addi	a2,a2,696 # 8000b2b8 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.11087050053344146531>
80000568:	00a60633          	add	a2,a2,a0
8000056c:	00062603          	lw	a2,0(a2)
80000570:	8000b6b7          	lui	a3,0x8000b
80000574:	2f468693          	addi	a3,a3,756 # 8000b2f4 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.11087050053344146531.3>
80000578:	00a68533          	add	a0,a3,a0
8000057c:	00052683          	lw	a3,0(a0)
80000580:	00058513          	mv	a0,a1
80000584:	00068593          	mv	a1,a3
80000588:	00008317          	auipc	t1,0x8
8000058c:	43830067          	jr	1080(t1) # 800089c0 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

80000590 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE.llvm.11087050053344146531>:
80000590:	00060e63          	beqz	a2,800005ac <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE.llvm.11087050053344146531+0x1c>
80000594:	10000537          	lui	a0,0x10000
80000598:	0005c683          	lbu	a3,0(a1)
8000059c:	00158593          	addi	a1,a1,1
800005a0:	fff60613          	addi	a2,a2,-1
800005a4:	00d50023          	sb	a3,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
800005a8:	fe0618e3          	bnez	a2,80000598 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE.llvm.11087050053344146531+0x8>
800005ac:	00000513          	li	a0,0
800005b0:	00008067          	ret

800005b4 <_ZN7SuperOS7handler7handler17h2213965921875da5E>:
800005b4:	fc010113          	addi	sp,sp,-64
800005b8:	02112e23          	sw	ra,60(sp)
800005bc:	02812c23          	sw	s0,56(sp)
800005c0:	342025f3          	.insn	4, 0x342025f3
800005c4:	0a05c663          	bltz	a1,80000670 <_ZN7SuperOS7handler7handler17h2213965921875da5E+0xbc>
800005c8:	00050413          	mv	s0,a0
800005cc:	00f00613          	li	a2,15
800005d0:	00e00513          	li	a0,14
800005d4:	00b66a63          	bltu	a2,a1,800005e8 <_ZN7SuperOS7handler7handler17h2213965921875da5E+0x34>
800005d8:	8000b537          	lui	a0,0x8000b
800005dc:	08050513          	addi	a0,a0,128 # 8000b080 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.7+0x45>
800005e0:	00b50533          	add	a0,a0,a1
800005e4:	00054503          	lbu	a0,0(a0)
800005e8:	00a103a3          	sb	a0,7(sp)
800005ec:	34102573          	.insn	4, 0x34102573
800005f0:	02a12823          	sw	a0,48(sp)
800005f4:	03010513          	addi	a0,sp,48
800005f8:	02a12023          	sw	a0,32(sp)
800005fc:	80009537          	lui	a0,0x80009
80000600:	44050513          	addi	a0,a0,1088 # 80009440 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000604:	02a12223          	sw	a0,36(sp)
80000608:	00710513          	addi	a0,sp,7
8000060c:	02a12423          	sw	a0,40(sp)
80000610:	80000537          	lui	a0,0x80000
80000614:	55850513          	addi	a0,a0,1368 # 80000558 <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.11087050053344146531>
80000618:	02a12623          	sw	a0,44(sp)
8000061c:	8000b537          	lui	a0,0x8000b
80000620:	1d850513          	addi	a0,a0,472 # 8000b1d8 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.30.llvm.11087050053344146531>
80000624:	00a12423          	sw	a0,8(sp)
80000628:	00300513          	li	a0,3
8000062c:	00a12623          	sw	a0,12(sp)
80000630:	00012c23          	sw	zero,24(sp)
80000634:	02010513          	addi	a0,sp,32
80000638:	00a12823          	sw	a0,16(sp)
8000063c:	00200513          	li	a0,2
80000640:	00a12a23          	sw	a0,20(sp)
80000644:	8000b5b7          	lui	a1,0x8000b
80000648:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
8000064c:	03410513          	addi	a0,sp,52
80000650:	00810613          	addi	a2,sp,8
80000654:	00007097          	auipc	ra,0x7
80000658:	5c4080e7          	jalr	1476(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
8000065c:	0a051463          	bnez	a0,80000704 <_ZN7SuperOS7handler7handler17h2213965921875da5E+0x150>
80000660:	07c42503          	lw	a0,124(s0)
80000664:	00450513          	addi	a0,a0,4
80000668:	06a42e23          	sw	a0,124(s0)
8000066c:	0880006f          	j	800006f4 <_ZN7SuperOS7handler7handler17h2213965921875da5E+0x140>
80000670:	10000537          	lui	a0,0x10000
80000674:	06d00593          	li	a1,109
80000678:	00b50023          	sb	a1,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
8000067c:	06300593          	li	a1,99
80000680:	00b50023          	sb	a1,0(a0)
80000684:	06100593          	li	a1,97
80000688:	00b50023          	sb	a1,0(a0)
8000068c:	07500593          	li	a1,117
80000690:	00b50023          	sb	a1,0(a0)
80000694:	07300613          	li	a2,115
80000698:	00c50023          	sb	a2,0(a0)
8000069c:	06500613          	li	a2,101
800006a0:	00c50023          	sb	a2,0(a0)
800006a4:	03a00693          	li	a3,58
800006a8:	00d50023          	sb	a3,0(a0)
800006ac:	02000693          	li	a3,32
800006b0:	00d50023          	sb	a3,0(a0)
800006b4:	06900693          	li	a3,105
800006b8:	00d50023          	sb	a3,0(a0)
800006bc:	06e00693          	li	a3,110
800006c0:	00d50023          	sb	a3,0(a0)
800006c4:	07400693          	li	a3,116
800006c8:	00d50023          	sb	a3,0(a0)
800006cc:	00c50023          	sb	a2,0(a0)
800006d0:	07200613          	li	a2,114
800006d4:	00c50023          	sb	a2,0(a0)
800006d8:	00c50023          	sb	a2,0(a0)
800006dc:	00b50023          	sb	a1,0(a0)
800006e0:	07000593          	li	a1,112
800006e4:	00b50023          	sb	a1,0(a0)
800006e8:	00d50023          	sb	a3,0(a0)
800006ec:	00a00593          	li	a1,10
800006f0:	00b50023          	sb	a1,0(a0)
800006f4:	03c12083          	lw	ra,60(sp)
800006f8:	03812403          	lw	s0,56(sp)
800006fc:	04010113          	addi	sp,sp,64
80000700:	00008067          	ret
80000704:	8000b537          	lui	a0,0x8000b
80000708:	17450513          	addi	a0,a0,372 # 8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>
8000070c:	8000b6b7          	lui	a3,0x8000b
80000710:	16468693          	addi	a3,a3,356 # 8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>
80000714:	8000b737          	lui	a4,0x8000b
80000718:	1b070713          	addi	a4,a4,432 # 8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>
8000071c:	02b00593          	li	a1,43
80000720:	03410613          	addi	a2,sp,52
80000724:	00007097          	auipc	ra,0x7
80000728:	864080e7          	jalr	-1948(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

8000072c <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE>:
8000072c:	f7010113          	addi	sp,sp,-144
80000730:	08112623          	sw	ra,140(sp)
80000734:	08812423          	sw	s0,136(sp)
80000738:	08912223          	sw	s1,132(sp)
8000073c:	09212023          	sw	s2,128(sp)
80000740:	07312e23          	sw	s3,124(sp)
80000744:	8000e937          	lui	s2,0x8000e
80000748:	00090913          	mv	s2,s2
8000074c:	03212023          	sw	s2,32(sp)
80000750:	02010513          	addi	a0,sp,32
80000754:	00a12423          	sw	a0,8(sp)
80000758:	800099b7          	lui	s3,0x80009
8000075c:	44098993          	addi	s3,s3,1088 # 80009440 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000760:	01312623          	sw	s3,12(sp)
80000764:	8000b537          	lui	a0,0x8000b
80000768:	27050513          	addi	a0,a0,624 # 8000b270 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.39>
8000076c:	02a12c23          	sw	a0,56(sp)
80000770:	00200513          	li	a0,2
80000774:	02a12e23          	sw	a0,60(sp)
80000778:	04012423          	sw	zero,72(sp)
8000077c:	00810513          	addi	a0,sp,8
80000780:	04a12023          	sw	a0,64(sp)
80000784:	00100513          	li	a0,1
80000788:	04a12223          	sw	a0,68(sp)
8000078c:	8000b5b7          	lui	a1,0x8000b
80000790:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
80000794:	07b10513          	addi	a0,sp,123
80000798:	03810613          	addi	a2,sp,56
8000079c:	00007097          	auipc	ra,0x7
800007a0:	47c080e7          	jalr	1148(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800007a4:	16051663          	bnez	a0,80000910 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1e4>
800007a8:	8000d537          	lui	a0,0x8000d
800007ac:	fac54583          	lbu	a1,-84(a0) # 8000cfac <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.11087050053344146531>
800007b0:	00058463          	beqz	a1,800007b8 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x8c>
800007b4:	0000006f          	j	800007b4 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x88>
800007b8:	00100593          	li	a1,1
800007bc:	fab50623          	sb	a1,-84(a0)
800007c0:	00200537          	lui	a0,0x200
800007c4:	00a90933          	add	s2,s2,a0
800007c8:	00c95493          	srli	s1,s2,0xc
800007cc:	00148413          	addi	s0,s1,1
800007d0:	02812823          	sw	s0,48(sp)
800007d4:	00080537          	lui	a0,0x80
800007d8:	3ff50513          	addi	a0,a0,1023 # 803ff <.Lline_table_start2+0x7f051>
800007dc:	02a12a23          	sw	a0,52(sp)
800007e0:	03010513          	addi	a0,sp,48
800007e4:	02a12023          	sw	a0,32(sp)
800007e8:	03312223          	sw	s3,36(sp)
800007ec:	03410513          	addi	a0,sp,52
800007f0:	02a12423          	sw	a0,40(sp)
800007f4:	03312623          	sw	s3,44(sp)
800007f8:	00200513          	li	a0,2
800007fc:	02a12c23          	sw	a0,56(sp)
80000800:	04a12023          	sw	a0,64(sp)
80000804:	02000613          	li	a2,32
80000808:	04c12423          	sw	a2,72(sp)
8000080c:	04012623          	sw	zero,76(sp)
80000810:	00400693          	li	a3,4
80000814:	04d12823          	sw	a3,80(sp)
80000818:	00300713          	li	a4,3
8000081c:	04e10a23          	sb	a4,84(sp)
80000820:	04a12c23          	sw	a0,88(sp)
80000824:	06a12023          	sw	a0,96(sp)
80000828:	06c12423          	sw	a2,104(sp)
8000082c:	06b12623          	sw	a1,108(sp)
80000830:	06d12823          	sw	a3,112(sp)
80000834:	06e10a23          	sb	a4,116(sp)
80000838:	8000b5b7          	lui	a1,0x8000b
8000083c:	22858593          	addi	a1,a1,552 # 8000b228 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.35>
80000840:	00b12423          	sw	a1,8(sp)
80000844:	00e12623          	sw	a4,12(sp)
80000848:	03810593          	addi	a1,sp,56
8000084c:	00b12c23          	sw	a1,24(sp)
80000850:	00a12e23          	sw	a0,28(sp)
80000854:	02010593          	addi	a1,sp,32
80000858:	00b12823          	sw	a1,16(sp)
8000085c:	00a12a23          	sw	a0,20(sp)
80000860:	8000b5b7          	lui	a1,0x8000b
80000864:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
80000868:	07b10513          	addi	a0,sp,123
8000086c:	00810613          	addi	a2,sp,8
80000870:	00007097          	auipc	ra,0x7
80000874:	3a8080e7          	jalr	936(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000878:	08051c63          	bnez	a0,80000910 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1e4>
8000087c:	803fe537          	lui	a0,0x803fe
80000880:	fff50513          	addi	a0,a0,-1 # 803fdfff <KALLOC_BUFFER+0x3effff>
80000884:	07256463          	bltu	a0,s2,800008ec <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1c0>
80000888:	8000d537          	lui	a0,0x8000d
8000088c:	fa052603          	lw	a2,-96(a0) # 8000cfa0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0.llvm.11087050053344146531>
80000890:	8000d5b7          	lui	a1,0x8000d
80000894:	fa45a683          	lw	a3,-92(a1) # 8000cfa4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1.llvm.11087050053344146531>
80000898:	00c41713          	slli	a4,s0,0xc
8000089c:	00c72023          	sw	a2,0(a4)
800008a0:	00d72223          	sw	a3,4(a4)
800008a4:	00100613          	li	a2,1
800008a8:	fac52023          	sw	a2,-96(a0)
800008ac:	000806b7          	lui	a3,0x80
800008b0:	3fd68693          	addi	a3,a3,1021 # 803fd <.Lline_table_start2+0x7f04f>
800008b4:	fa85a223          	sw	s0,-92(a1)
800008b8:	02d48a63          	beq	s1,a3,800008ec <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1c0>
800008bc:	00c49713          	slli	a4,s1,0xc
800008c0:	000027b7          	lui	a5,0x2
800008c4:	00f70733          	add	a4,a4,a5
800008c8:	000017b7          	lui	a5,0x1
800008cc:	00040813          	mv	a6,s0
800008d0:	00c72023          	sw	a2,0(a4)
800008d4:	00872223          	sw	s0,4(a4)
800008d8:	fac52023          	sw	a2,-96(a0)
800008dc:	00140413          	addi	s0,s0,1
800008e0:	fa85a223          	sw	s0,-92(a1)
800008e4:	00f70733          	add	a4,a4,a5
800008e8:	fed812e3          	bne	a6,a3,800008cc <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1a0>
800008ec:	8000d537          	lui	a0,0x8000d
800008f0:	fa050623          	sb	zero,-84(a0) # 8000cfac <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.11087050053344146531>
800008f4:	08c12083          	lw	ra,140(sp)
800008f8:	08812403          	lw	s0,136(sp)
800008fc:	08412483          	lw	s1,132(sp)
80000900:	08012903          	lw	s2,128(sp)
80000904:	07c12983          	lw	s3,124(sp)
80000908:	09010113          	addi	sp,sp,144
8000090c:	00008067          	ret
80000910:	8000b537          	lui	a0,0x8000b
80000914:	17450513          	addi	a0,a0,372 # 8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>
80000918:	8000b6b7          	lui	a3,0x8000b
8000091c:	16468693          	addi	a3,a3,356 # 8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>
80000920:	8000b737          	lui	a4,0x8000b
80000924:	1b070713          	addi	a4,a4,432 # 8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>
80000928:	02b00593          	li	a1,43
8000092c:	07b10613          	addi	a2,sp,123
80000930:	00006097          	auipc	ra,0x6
80000934:	658080e7          	jalr	1624(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80000938 <_ZN7SuperOS6kalloc18handle_alloc_error17he72829956feb0252E>:
80000938:	fd010113          	addi	sp,sp,-48
8000093c:	00a12423          	sw	a0,8(sp)
80000940:	00b12623          	sw	a1,12(sp)
80000944:	00810513          	addi	a0,sp,8
80000948:	02a12423          	sw	a0,40(sp)
8000094c:	80000537          	lui	a0,0x80000
80000950:	4e850513          	addi	a0,a0,1256 # 800004e8 <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7c70724592f5f6eE>
80000954:	02a12623          	sw	a0,44(sp)
80000958:	8000b537          	lui	a0,0x8000b
8000095c:	29050513          	addi	a0,a0,656 # 8000b290 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.41>
80000960:	00a12823          	sw	a0,16(sp)
80000964:	00100513          	li	a0,1
80000968:	00a12a23          	sw	a0,20(sp)
8000096c:	02012023          	sw	zero,32(sp)
80000970:	02810593          	addi	a1,sp,40
80000974:	00b12c23          	sw	a1,24(sp)
80000978:	00a12e23          	sw	a0,28(sp)
8000097c:	8000b5b7          	lui	a1,0x8000b
80000980:	2a858593          	addi	a1,a1,680 # 8000b2a8 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.43>
80000984:	01010513          	addi	a0,sp,16
80000988:	00006097          	auipc	ra,0x6
8000098c:	390080e7          	jalr	912(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80000990 <__rg_oom>:
80000990:	00050613          	mv	a2,a0
80000994:	00058513          	mv	a0,a1
80000998:	00060593          	mv	a1,a2
8000099c:	00000097          	auipc	ra,0x0
800009a0:	f9c080e7          	jalr	-100(ra) # 80000938 <_ZN7SuperOS6kalloc18handle_alloc_error17he72829956feb0252E>
	...

800009b0 <run_user>:
800009b0:	fc410113          	addi	sp,sp,-60
800009b4:	00312023          	sw	gp,0(sp)
800009b8:	00412223          	sw	tp,4(sp)
800009bc:	00112423          	sw	ra,8(sp)
800009c0:	00812623          	sw	s0,12(sp)
800009c4:	00912823          	sw	s1,16(sp)
800009c8:	01212a23          	sw	s2,20(sp)
800009cc:	01312c23          	sw	s3,24(sp)
800009d0:	01412e23          	sw	s4,28(sp)
800009d4:	03512023          	sw	s5,32(sp)
800009d8:	03612223          	sw	s6,36(sp)
800009dc:	03712423          	sw	s7,40(sp)
800009e0:	03812623          	sw	s8,44(sp)
800009e4:	03912823          	sw	s9,48(sp)
800009e8:	03a12a23          	sw	s10,52(sp)
800009ec:	03b12c23          	sw	s11,56(sp)
800009f0:	34051073          	.insn	4, 0x34051073
800009f4:	08252023          	sw	sp,128(a0)
800009f8:	07c52283          	lw	t0,124(a0)
800009fc:	34129073          	.insn	4, 0x34129073
80000a00:	00052083          	lw	ra,0(a0)
80000a04:	00452103          	lw	sp,4(a0)
80000a08:	00852183          	lw	gp,8(a0)
80000a0c:	00c52203          	lw	tp,12(a0)
80000a10:	01052283          	lw	t0,16(a0)
80000a14:	01452303          	lw	t1,20(a0)
80000a18:	01852383          	lw	t2,24(a0)
80000a1c:	01c52403          	lw	s0,28(a0)
80000a20:	02052483          	lw	s1,32(a0)
80000a24:	02852583          	lw	a1,40(a0)
80000a28:	02c52603          	lw	a2,44(a0)
80000a2c:	03052683          	lw	a3,48(a0)
80000a30:	03452703          	lw	a4,52(a0)
80000a34:	03852783          	lw	a5,56(a0)
80000a38:	03c52803          	lw	a6,60(a0)
80000a3c:	04052883          	lw	a7,64(a0)
80000a40:	04452903          	lw	s2,68(a0)
80000a44:	04852983          	lw	s3,72(a0)
80000a48:	04c52a03          	lw	s4,76(a0)
80000a4c:	05052a83          	lw	s5,80(a0)
80000a50:	05452b03          	lw	s6,84(a0)
80000a54:	05852b83          	lw	s7,88(a0)
80000a58:	05c52c03          	lw	s8,92(a0)
80000a5c:	06052c83          	lw	s9,96(a0)
80000a60:	06452d03          	lw	s10,100(a0)
80000a64:	06852d83          	lw	s11,104(a0)
80000a68:	06c52e03          	lw	t3,108(a0)
80000a6c:	07052e83          	lw	t4,112(a0)
80000a70:	07452f03          	lw	t5,116(a0)
80000a74:	07852f83          	lw	t6,120(a0)
80000a78:	02452503          	lw	a0,36(a0)
80000a7c:	30200073          	mret

80000a80 <user_trap>:
80000a80:	34051573          	.insn	4, 0x34051573
80000a84:	00152023          	sw	ra,0(a0)
80000a88:	00252223          	sw	sp,4(a0)
80000a8c:	00352423          	sw	gp,8(a0)
80000a90:	00452623          	sw	tp,12(a0)
80000a94:	00552823          	sw	t0,16(a0)
80000a98:	00652a23          	sw	t1,20(a0)
80000a9c:	00752c23          	sw	t2,24(a0)
80000aa0:	00852e23          	sw	s0,28(a0)
80000aa4:	02952023          	sw	s1,32(a0)
80000aa8:	02b52423          	sw	a1,40(a0)
80000aac:	02c52623          	sw	a2,44(a0)
80000ab0:	02d52823          	sw	a3,48(a0)
80000ab4:	02e52a23          	sw	a4,52(a0)
80000ab8:	02f52c23          	sw	a5,56(a0)
80000abc:	03052e23          	sw	a6,60(a0)
80000ac0:	05152023          	sw	a7,64(a0)
80000ac4:	05252223          	sw	s2,68(a0)
80000ac8:	05352423          	sw	s3,72(a0)
80000acc:	05452623          	sw	s4,76(a0)
80000ad0:	05552823          	sw	s5,80(a0)
80000ad4:	05652a23          	sw	s6,84(a0)
80000ad8:	05752c23          	sw	s7,88(a0)
80000adc:	05852e23          	sw	s8,92(a0)
80000ae0:	07952023          	sw	s9,96(a0)
80000ae4:	07a52223          	sw	s10,100(a0)
80000ae8:	07b52423          	sw	s11,104(a0)
80000aec:	07c52623          	sw	t3,108(a0)
80000af0:	07d52823          	sw	t4,112(a0)
80000af4:	07e52a23          	sw	t5,116(a0)
80000af8:	07f52c23          	sw	t6,120(a0)
80000afc:	340022f3          	.insn	4, 0x340022f3
80000b00:	02552223          	sw	t0,36(a0)
80000b04:	08052103          	lw	sp,128(a0)
80000b08:	341022f3          	.insn	4, 0x341022f3
80000b0c:	06552e23          	sw	t0,124(a0)
80000b10:	00012183          	lw	gp,0(sp)
80000b14:	00412203          	lw	tp,4(sp)
80000b18:	00812083          	lw	ra,8(sp)
80000b1c:	00c12403          	lw	s0,12(sp)
80000b20:	01012483          	lw	s1,16(sp)
80000b24:	01412903          	lw	s2,20(sp)
80000b28:	01812983          	lw	s3,24(sp)
80000b2c:	01c12a03          	lw	s4,28(sp)
80000b30:	02012a83          	lw	s5,32(sp)
80000b34:	02412b03          	lw	s6,36(sp)
80000b38:	02812b83          	lw	s7,40(sp)
80000b3c:	02c12c03          	lw	s8,44(sp)
80000b40:	03012c83          	lw	s9,48(sp)
80000b44:	03412d03          	lw	s10,52(sp)
80000b48:	03812d83          	lw	s11,56(sp)
80000b4c:	03c10113          	addi	sp,sp,60
80000b50:	00008067          	ret

80000b54 <_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbde0ebcc99cf027bE>:
80000b54:	8000b6b7          	lui	a3,0x8000b
80000b58:	33068693          	addi	a3,a3,816 # 8000b330 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.4>
80000b5c:	00b00613          	li	a2,11
80000b60:	00058513          	mv	a0,a1
80000b64:	00068593          	mv	a1,a3
80000b68:	00008317          	auipc	t1,0x8
80000b6c:	e5830067          	jr	-424(t1) # 800089c0 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

80000b70 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>:
80000b70:	fd010113          	addi	sp,sp,-48
80000b74:	02112623          	sw	ra,44(sp)
80000b78:	02812423          	sw	s0,40(sp)
80000b7c:	02912223          	sw	s1,36(sp)
80000b80:	03212023          	sw	s2,32(sp)
80000b84:	01312e23          	sw	s3,28(sp)
80000b88:	00800713          	li	a4,8
80000b8c:	00060993          	mv	s3,a2
80000b90:	00058913          	mv	s2,a1
80000b94:	00050413          	mv	s0,a0
80000b98:	00d76463          	bltu	a4,a3,80000ba0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x30>
80000b9c:	00800693          	li	a3,8
80000ba0:	00368693          	addi	a3,a3,3
80000ba4:	ffc6f493          	andi	s1,a3,-4
80000ba8:	00048513          	mv	a0,s1
80000bac:	00098593          	mv	a1,s3
80000bb0:	00008097          	auipc	ra,0x8
80000bb4:	2b8080e7          	jalr	696(ra) # 80008e68 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>
80000bb8:	00400593          	li	a1,4
80000bbc:	10050a63          	beqz	a0,80000cd0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000bc0:	00492603          	lw	a2,4(s2) # 8000e004 <KALLOC_BUFFER+0x4>
80000bc4:	10060663          	beqz	a2,80000cd0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000bc8:	40a00533          	neg	a0,a0
80000bcc:	01357533          	and	a0,a0,s3
80000bd0:	0019d693          	srli	a3,s3,0x1
80000bd4:	55555737          	lui	a4,0x55555
80000bd8:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80000bdc:	00e6f6b3          	and	a3,a3,a4
80000be0:	40d986b3          	sub	a3,s3,a3
80000be4:	33333737          	lui	a4,0x33333
80000be8:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331f85>
80000bec:	00e6f7b3          	and	a5,a3,a4
80000bf0:	0026d693          	srli	a3,a3,0x2
80000bf4:	00e6f6b3          	and	a3,a3,a4
80000bf8:	00d786b3          	add	a3,a5,a3
80000bfc:	0046d713          	srli	a4,a3,0x4
80000c00:	00e686b3          	add	a3,a3,a4
80000c04:	0f0f1737          	lui	a4,0xf0f1
80000c08:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80000c0c:	00e6f6b3          	and	a3,a3,a4
80000c10:	00869713          	slli	a4,a3,0x8
80000c14:	00e686b3          	add	a3,a3,a4
80000c18:	01069713          	slli	a4,a3,0x10
80000c1c:	00e686b3          	add	a3,a3,a4
80000c20:	0186d713          	srli	a4,a3,0x18
80000c24:	fff98793          	addi	a5,s3,-1
80000c28:	41300833          	neg	a6,s3
80000c2c:	00100893          	li	a7,1
80000c30:	0140006f          	j	80000c44 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xd4>
80000c34:	00462683          	lw	a3,4(a2)
80000c38:	00060913          	mv	s2,a2
80000c3c:	00068613          	mv	a2,a3
80000c40:	08068863          	beqz	a3,80000cd0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000c44:	00062383          	lw	t2,0(a2)
80000c48:	fe93e6e3          	bltu	t2,s1,80000c34 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80000c4c:	0d171a63          	bne	a4,a7,80000d20 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1b0>
80000c50:	00c78e33          	add	t3,a5,a2
80000c54:	010e7333          	and	t1,t3,a6
80000c58:	00060693          	mv	a3,a2
80000c5c:	00c30863          	beq	t1,a2,80000c6c <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xfc>
80000c60:	008e0e13          	addi	t3,t3,8
80000c64:	010e76b3          	and	a3,t3,a6
80000c68:	40c682b3          	sub	t0,a3,a2
80000c6c:	00968f33          	add	t5,a3,s1
80000c70:	00760eb3          	add	t4,a2,t2
80000c74:	fdeee0e3          	bltu	t4,t5,80000c34 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80000c78:	41ee8e33          	sub	t3,t4,t5
80000c7c:	020e0e63          	beqz	t3,80000cb8 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x148>
80000c80:	003f0f13          	addi	t5,t5,3
80000c84:	ffcf7393          	andi	t2,t5,-4
80000c88:	00838f13          	addi	t5,t2,8
80000c8c:	fbeee4e3          	bltu	t4,t5,80000c34 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80000c90:	00092223          	sw	zero,4(s2)
80000c94:	00462703          	lw	a4,4(a2)
80000c98:	00062223          	sw	zero,4(a2)
80000c9c:	06c30263          	beq	t1,a2,80000d00 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x190>
80000ca0:	01c3a023          	sw	t3,0(t2)
80000ca4:	00e3a223          	sw	a4,4(t2)
80000ca8:	00562023          	sw	t0,0(a2)
80000cac:	00762223          	sw	t2,4(a2)
80000cb0:	00c92223          	sw	a2,4(s2)
80000cb4:	05c0006f          	j	80000d10 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1a0>
80000cb8:	00092223          	sw	zero,4(s2)
80000cbc:	00462703          	lw	a4,4(a2)
80000cc0:	00062223          	sw	zero,4(a2)
80000cc4:	02c31a63          	bne	t1,a2,80000cf8 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x188>
80000cc8:	00e92223          	sw	a4,4(s2)
80000ccc:	04069263          	bnez	a3,80000d10 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1a0>
80000cd0:	00000493          	li	s1,0
80000cd4:	00b405b3          	add	a1,s0,a1
80000cd8:	0095a023          	sw	s1,0(a1)
80000cdc:	02c12083          	lw	ra,44(sp)
80000ce0:	02812403          	lw	s0,40(sp)
80000ce4:	02412483          	lw	s1,36(sp)
80000ce8:	02012903          	lw	s2,32(sp)
80000cec:	01c12983          	lw	s3,28(sp)
80000cf0:	03010113          	addi	sp,sp,48
80000cf4:	00008067          	ret
80000cf8:	00060393          	mv	t2,a2
80000cfc:	00028e13          	mv	t3,t0
80000d00:	01c3a023          	sw	t3,0(t2)
80000d04:	00e3a223          	sw	a4,4(t2)
80000d08:	00792223          	sw	t2,4(s2)
80000d0c:	fc0682e3          	beqz	a3,80000cd0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000d10:	00d42023          	sw	a3,0(s0)
80000d14:	00a42223          	sw	a0,4(s0)
80000d18:	00800593          	li	a1,8
80000d1c:	fb9ff06f          	j	80000cd4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x164>
80000d20:	8000b537          	lui	a0,0x8000b
80000d24:	37050513          	addi	a0,a0,880 # 8000b370 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.7>
80000d28:	00a12223          	sw	a0,4(sp)
80000d2c:	00100513          	li	a0,1
80000d30:	00a12423          	sw	a0,8(sp)
80000d34:	00012a23          	sw	zero,20(sp)
80000d38:	00400513          	li	a0,4
80000d3c:	00a12623          	sw	a0,12(sp)
80000d40:	00012823          	sw	zero,16(sp)
80000d44:	8000b5b7          	lui	a1,0x8000b
80000d48:	3ec58593          	addi	a1,a1,1004 # 8000b3ec <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.9>
80000d4c:	00410513          	addi	a0,sp,4
80000d50:	00006097          	auipc	ra,0x6
80000d54:	fc8080e7          	jalr	-56(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>:
80000d58:	fa010113          	addi	sp,sp,-96
80000d5c:	04112e23          	sw	ra,92(sp)
80000d60:	04812c23          	sw	s0,88(sp)
80000d64:	04912a23          	sw	s1,84(sp)
80000d68:	05212823          	sw	s2,80(sp)
80000d6c:	05312623          	sw	s3,76(sp)
80000d70:	00800713          	li	a4,8
80000d74:	00060413          	mv	s0,a2
80000d78:	00058913          	mv	s2,a1
80000d7c:	00050993          	mv	s3,a0
80000d80:	00d76463          	bltu	a4,a3,80000d88 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x30>
80000d84:	00800693          	li	a3,8
80000d88:	00368693          	addi	a3,a3,3
80000d8c:	ffc6f493          	andi	s1,a3,-4
80000d90:	00048513          	mv	a0,s1
80000d94:	00040593          	mv	a1,s0
80000d98:	00008097          	auipc	ra,0x8
80000d9c:	0d0080e7          	jalr	208(ra) # 80008e68 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>
80000da0:	26050663          	beqz	a0,8000100c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x2b4>
80000da4:	0049a583          	lw	a1,4(s3)
80000da8:	00992023          	sw	s1,0(s2)
80000dac:	00092223          	sw	zero,4(s2)
80000db0:	04058263          	beqz	a1,80000df4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x9c>
80000db4:	00c9a503          	lw	a0,12(s3)
80000db8:	04b97e63          	bgeu	s2,a1,80000e14 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xbc>
80000dbc:	009906b3          	add	a3,s2,s1
80000dc0:	16d5e663          	bltu	a1,a3,80000f2c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1d4>
80000dc4:	0089a603          	lw	a2,8(s3)
80000dc8:	00860793          	addi	a5,a2,8
80000dcc:	00090713          	mv	a4,s2
80000dd0:	00f97a63          	bgeu	s2,a5,80000de4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x8c>
80000dd4:	40c686b3          	sub	a3,a3,a2
80000dd8:	00d62023          	sw	a3,0(a2)
80000ddc:	00062223          	sw	zero,4(a2)
80000de0:	00060713          	mv	a4,a2
80000de4:	00e9a223          	sw	a4,4(s3)
80000de8:	00b72223          	sw	a1,4(a4)
80000dec:	00100613          	li	a2,1
80000df0:	09c0006f          	j	80000e8c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
80000df4:	0089a503          	lw	a0,8(s3)
80000df8:	00850593          	addi	a1,a0,8
80000dfc:	0cb97c63          	bgeu	s2,a1,80000ed4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x17c>
80000e00:	012485b3          	add	a1,s1,s2
80000e04:	40a585b3          	sub	a1,a1,a0
80000e08:	00b52023          	sw	a1,0(a0)
80000e0c:	00052223          	sw	zero,4(a0)
80000e10:	0cc0006f          	j	80000edc <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x184>
80000e14:	0045a603          	lw	a2,4(a1)
80000e18:	01212623          	sw	s2,12(sp)
80000e1c:	02060263          	beqz	a2,80000e40 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe8>
80000e20:	00c96c63          	bltu	s2,a2,80000e38 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe0>
80000e24:	00060593          	mv	a1,a2
80000e28:	00462603          	lw	a2,4(a2)
80000e2c:	01212623          	sw	s2,12(sp)
80000e30:	00060863          	beqz	a2,80000e40 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe8>
80000e34:	fec978e3          	bgeu	s2,a2,80000e24 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xcc>
80000e38:	009906b3          	add	a3,s2,s1
80000e3c:	18d66c63          	bltu	a2,a3,80000fd4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x27c>
80000e40:	00b12823          	sw	a1,16(sp)
80000e44:	0005a683          	lw	a3,0(a1)
80000e48:	00d58733          	add	a4,a1,a3
80000e4c:	00d12a23          	sw	a3,20(sp)
80000e50:	10e96a63          	bltu	s2,a4,80000f64 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x20c>
80000e54:	0125a223          	sw	s2,4(a1)
80000e58:	00c92223          	sw	a2,4(s2)
80000e5c:	00200613          	li	a2,2
80000e60:	00058913          	mv	s2,a1
80000e64:	0280006f          	j	80000e8c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
80000e68:	00072583          	lw	a1,0(a4)
80000e6c:	00472683          	lw	a3,4(a4)
80000e70:	00072223          	sw	zero,4(a4)
80000e74:	00092703          	lw	a4,0(s2)
80000e78:	00d92223          	sw	a3,4(s2)
80000e7c:	00b705b3          	add	a1,a4,a1
80000e80:	00b92023          	sw	a1,0(s2)
80000e84:	fff60613          	addi	a2,a2,-1
80000e88:	08060063          	beqz	a2,80000f08 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80000e8c:	00492703          	lw	a4,4(s2)
80000e90:	00092683          	lw	a3,0(s2)
80000e94:	00d905b3          	add	a1,s2,a3
80000e98:	00070c63          	beqz	a4,80000eb0 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x158>
80000e9c:	fce586e3          	beq	a1,a4,80000e68 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x110>
80000ea0:	00070913          	mv	s2,a4
80000ea4:	fff60613          	addi	a2,a2,-1
80000ea8:	fe0612e3          	bnez	a2,80000e8c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
80000eac:	05c0006f          	j	80000f08 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80000eb0:	04a5fc63          	bgeu	a1,a0,80000f08 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80000eb4:	00358613          	addi	a2,a1,3
80000eb8:	ffc67613          	andi	a2,a2,-4
80000ebc:	00860613          	addi	a2,a2,8
80000ec0:	04c57463          	bgeu	a0,a2,80000f08 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80000ec4:	00a68533          	add	a0,a3,a0
80000ec8:	40b50533          	sub	a0,a0,a1
80000ecc:	00a92023          	sw	a0,0(s2)
80000ed0:	0380006f          	j	80000f08 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80000ed4:	00048593          	mv	a1,s1
80000ed8:	00090513          	mv	a0,s2
80000edc:	00c9a603          	lw	a2,12(s3)
80000ee0:	00b506b3          	add	a3,a0,a1
80000ee4:	02c6f063          	bgeu	a3,a2,80000f04 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1ac>
80000ee8:	00368713          	addi	a4,a3,3
80000eec:	ffc77713          	andi	a4,a4,-4
80000ef0:	00870713          	addi	a4,a4,8
80000ef4:	00e67863          	bgeu	a2,a4,80000f04 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1ac>
80000ef8:	40d60633          	sub	a2,a2,a3
80000efc:	00b605b3          	add	a1,a2,a1
80000f00:	00b52023          	sw	a1,0(a0)
80000f04:	00a9a223          	sw	a0,4(s3)
80000f08:	00040513          	mv	a0,s0
80000f0c:	00048593          	mv	a1,s1
80000f10:	05c12083          	lw	ra,92(sp)
80000f14:	05812403          	lw	s0,88(sp)
80000f18:	05412483          	lw	s1,84(sp)
80000f1c:	05012903          	lw	s2,80(sp)
80000f20:	04c12983          	lw	s3,76(sp)
80000f24:	06010113          	addi	sp,sp,96
80000f28:	00008067          	ret
80000f2c:	8000b537          	lui	a0,0x8000b
80000f30:	47450513          	addi	a0,a0,1140 # 8000b474 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.18>
80000f34:	02a12823          	sw	a0,48(sp)
80000f38:	00100513          	li	a0,1
80000f3c:	02a12a23          	sw	a0,52(sp)
80000f40:	04012023          	sw	zero,64(sp)
80000f44:	00400513          	li	a0,4
80000f48:	02a12c23          	sw	a0,56(sp)
80000f4c:	02012e23          	sw	zero,60(sp)
80000f50:	8000b5b7          	lui	a1,0x8000b
80000f54:	47c58593          	addi	a1,a1,1148 # 8000b47c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.19>
80000f58:	03010513          	addi	a0,sp,48
80000f5c:	00006097          	auipc	ra,0x6
80000f60:	dbc080e7          	jalr	-580(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
80000f64:	00c10513          	addi	a0,sp,12
80000f68:	02a12823          	sw	a0,48(sp)
80000f6c:	80000537          	lui	a0,0x80000
80000f70:	17050513          	addi	a0,a0,368 # 80000170 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>
80000f74:	02a12a23          	sw	a0,52(sp)
80000f78:	01010593          	addi	a1,sp,16
80000f7c:	02b12c23          	sw	a1,56(sp)
80000f80:	02a12e23          	sw	a0,60(sp)
80000f84:	01410513          	addi	a0,sp,20
80000f88:	04a12023          	sw	a0,64(sp)
80000f8c:	80009537          	lui	a0,0x80009
80000f90:	64050513          	addi	a0,a0,1600 # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80000f94:	04a12223          	sw	a0,68(sp)
80000f98:	8000b537          	lui	a0,0x8000b
80000f9c:	4d050513          	addi	a0,a0,1232 # 8000b4d0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.25>
80000fa0:	00a12c23          	sw	a0,24(sp)
80000fa4:	00400513          	li	a0,4
80000fa8:	00a12e23          	sw	a0,28(sp)
80000fac:	02012423          	sw	zero,40(sp)
80000fb0:	03010513          	addi	a0,sp,48
80000fb4:	02a12023          	sw	a0,32(sp)
80000fb8:	00300513          	li	a0,3
80000fbc:	02a12223          	sw	a0,36(sp)
80000fc0:	8000b5b7          	lui	a1,0x8000b
80000fc4:	4f058593          	addi	a1,a1,1264 # 8000b4f0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.26>
80000fc8:	01810513          	addi	a0,sp,24
80000fcc:	00006097          	auipc	ra,0x6
80000fd0:	d4c080e7          	jalr	-692(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
80000fd4:	8000b537          	lui	a0,0x8000b
80000fd8:	47450513          	addi	a0,a0,1140 # 8000b474 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.18>
80000fdc:	02a12823          	sw	a0,48(sp)
80000fe0:	00100513          	li	a0,1
80000fe4:	02a12a23          	sw	a0,52(sp)
80000fe8:	04012023          	sw	zero,64(sp)
80000fec:	00400513          	li	a0,4
80000ff0:	02a12c23          	sw	a0,56(sp)
80000ff4:	02012e23          	sw	zero,60(sp)
80000ff8:	8000b5b7          	lui	a1,0x8000b
80000ffc:	48c58593          	addi	a1,a1,1164 # 8000b48c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.20>
80001000:	03010513          	addi	a0,sp,48
80001004:	00006097          	auipc	ra,0x6
80001008:	d14080e7          	jalr	-748(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
8000100c:	8000b537          	lui	a0,0x8000b
80001010:	40c50513          	addi	a0,a0,1036 # 8000b40c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.15>
80001014:	8000b6b7          	lui	a3,0x8000b
80001018:	3fc68693          	addi	a3,a3,1020 # 8000b3fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.14>
8000101c:	8000b737          	lui	a4,0x8000b
80001020:	43870713          	addi	a4,a4,1080 # 8000b438 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.16>
80001024:	02b00593          	li	a1,43
80001028:	04b10613          	addi	a2,sp,75
8000102c:	00006097          	auipc	ra,0x6
80001030:	f5c080e7          	jalr	-164(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80001034 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E>:
80001034:	f6010113          	addi	sp,sp,-160
80001038:	08112e23          	sw	ra,156(sp)
8000103c:	08812c23          	sw	s0,152(sp)
80001040:	08912a23          	sw	s1,148(sp)
80001044:	09212823          	sw	s2,144(sp)
80001048:	09312623          	sw	s3,140(sp)
8000104c:	09412423          	sw	s4,136(sp)
80001050:	09512223          	sw	s5,132(sp)
80001054:	09612023          	sw	s6,128(sp)
80001058:	07712e23          	sw	s7,124(sp)
8000105c:	07812c23          	sw	s8,120(sp)
80001060:	07912a23          	sw	s9,116(sp)
80001064:	07a12823          	sw	s10,112(sp)
80001068:	07b12623          	sw	s11,108(sp)
8000106c:	00000413          	li	s0,0
80001070:	00012823          	sw	zero,16(sp)
80001074:	00400c13          	li	s8,4
80001078:	01812a23          	sw	s8,20(sp)
8000107c:	00012c23          	sw	zero,24(sp)
80001080:	00012e23          	sw	zero,28(sp)
80001084:	03812023          	sw	s8,32(sp)
80001088:	02012223          	sw	zero,36(sp)
8000108c:	02012423          	sw	zero,40(sp)
80001090:	03812623          	sw	s8,44(sp)
80001094:	02012823          	sw	zero,48(sp)
80001098:	02012a23          	sw	zero,52(sp)
8000109c:	8000ba37          	lui	s4,0x8000b
800010a0:	60ca0a13          	addi	s4,s4,1548 # 8000b60c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.46>
800010a4:	8000bab7          	lui	s5,0x8000b
800010a8:	62ca8a93          	addi	s5,s5,1580 # 8000b62c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.48>
800010ac:	8000bb37          	lui	s6,0x8000b
800010b0:	64cb0b13          	addi	s6,s6,1612 # 8000b64c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.50>
800010b4:	00a00c93          	li	s9,10
800010b8:	0200006f          	j	800010d8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0xa4>
800010bc:	03412503          	lw	a0,52(sp)
800010c0:	3f8005b7          	lui	a1,0x3f800
800010c4:	00009097          	auipc	ra,0x9
800010c8:	e04080e7          	jalr	-508(ra) # 80009ec8 <__addsf3>
800010cc:	02a12a23          	sw	a0,52(sp)
800010d0:	000d0413          	mv	s0,s10
800010d4:	1d9d0c63          	beq	s10,s9,800012ac <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x278>
800010d8:	01812b83          	lw	s7,24(sp)
800010dc:	01012503          	lw	a0,16(sp)
800010e0:	00ab9c63          	bne	s7,a0,800010f8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0xc4>
800010e4:	01010513          	addi	a0,sp,16
800010e8:	8000b5b7          	lui	a1,0x8000b
800010ec:	5cc58593          	addi	a1,a1,1484 # 8000b5cc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.42>
800010f0:	fffff097          	auipc	ra,0xfffff
800010f4:	2e8080e7          	jalr	744(ra) # 800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
800010f8:	01412503          	lw	a0,20(sp)
800010fc:	002b9593          	slli	a1,s7,0x2
80001100:	004b9613          	slli	a2,s7,0x4
80001104:	40b60633          	sub	a2,a2,a1
80001108:	00c50533          	add	a0,a0,a2
8000110c:	00052023          	sw	zero,0(a0)
80001110:	01852223          	sw	s8,4(a0)
80001114:	00052423          	sw	zero,8(a0)
80001118:	02412483          	lw	s1,36(sp)
8000111c:	01c12503          	lw	a0,28(sp)
80001120:	001b8b93          	addi	s7,s7,1
80001124:	01712c23          	sw	s7,24(sp)
80001128:	00a49c63          	bne	s1,a0,80001140 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x10c>
8000112c:	01c10513          	addi	a0,sp,28
80001130:	8000b5b7          	lui	a1,0x8000b
80001134:	5dc58593          	addi	a1,a1,1500 # 8000b5dc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.43>
80001138:	fffff097          	auipc	ra,0xfffff
8000113c:	2a0080e7          	jalr	672(ra) # 800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80001140:	02012503          	lw	a0,32(sp)
80001144:	00249593          	slli	a1,s1,0x2
80001148:	00449613          	slli	a2,s1,0x4
8000114c:	40b60633          	sub	a2,a2,a1
80001150:	00c50533          	add	a0,a0,a2
80001154:	00052023          	sw	zero,0(a0)
80001158:	01852223          	sw	s8,4(a0)
8000115c:	00052423          	sw	zero,8(a0)
80001160:	03012b83          	lw	s7,48(sp)
80001164:	02812503          	lw	a0,40(sp)
80001168:	00148493          	addi	s1,s1,1
8000116c:	02912223          	sw	s1,36(sp)
80001170:	00ab9c63          	bne	s7,a0,80001188 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x154>
80001174:	02810513          	addi	a0,sp,40
80001178:	8000b5b7          	lui	a1,0x8000b
8000117c:	5ec58593          	addi	a1,a1,1516 # 8000b5ec <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.44>
80001180:	fffff097          	auipc	ra,0xfffff
80001184:	258080e7          	jalr	600(ra) # 800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80001188:	02c12483          	lw	s1,44(sp)
8000118c:	00140d13          	addi	s10,s0,1
80001190:	00c00593          	li	a1,12
80001194:	000b8513          	mv	a0,s7
80001198:	00009097          	auipc	ra,0x9
8000119c:	b50080e7          	jalr	-1200(ra) # 80009ce8 <__mulsi3>
800011a0:	00a48533          	add	a0,s1,a0
800011a4:	00052023          	sw	zero,0(a0)
800011a8:	01852223          	sw	s8,4(a0)
800011ac:	00052423          	sw	zero,8(a0)
800011b0:	001b8b93          	addi	s7,s7,1
800011b4:	03712823          	sw	s7,48(sp)
800011b8:	00a00d93          	li	s11,10
800011bc:	00241513          	slli	a0,s0,0x2
800011c0:	00441493          	slli	s1,s0,0x4
800011c4:	40a484b3          	sub	s1,s1,a0
800011c8:	0240006f          	j	800011ec <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x1b8>
800011cc:	004ba503          	lw	a0,4(s7)
800011d0:	00291593          	slli	a1,s2,0x2
800011d4:	00b50533          	add	a0,a0,a1
800011d8:	01352023          	sw	s3,0(a0)
800011dc:	00190913          	addi	s2,s2,1
800011e0:	fffd8d93          	addi	s11,s11,-1
800011e4:	012ba423          	sw	s2,8(s7)
800011e8:	ec0d8ae3          	beqz	s11,800010bc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x88>
800011ec:	01812583          	lw	a1,24(sp)
800011f0:	64b47463          	bgeu	s0,a1,80001838 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x804>
800011f4:	01412b83          	lw	s7,20(sp)
800011f8:	009b8bb3          	add	s7,s7,s1
800011fc:	008ba903          	lw	s2,8(s7)
80001200:	000ba503          	lw	a0,0(s7)
80001204:	00a91a63          	bne	s2,a0,80001218 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x1e4>
80001208:	000b8513          	mv	a0,s7
8000120c:	000a0593          	mv	a1,s4
80001210:	fffff097          	auipc	ra,0xfffff
80001214:	0ec080e7          	jalr	236(ra) # 800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80001218:	004ba503          	lw	a0,4(s7)
8000121c:	00291593          	slli	a1,s2,0x2
80001220:	00b50533          	add	a0,a0,a1
80001224:	00052023          	sw	zero,0(a0)
80001228:	00190913          	addi	s2,s2,1
8000122c:	012ba423          	sw	s2,8(s7)
80001230:	02412583          	lw	a1,36(sp)
80001234:	60b47c63          	bgeu	s0,a1,8000184c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x818>
80001238:	02012b83          	lw	s7,32(sp)
8000123c:	009b8bb3          	add	s7,s7,s1
80001240:	008ba903          	lw	s2,8(s7)
80001244:	000ba503          	lw	a0,0(s7)
80001248:	03412983          	lw	s3,52(sp)
8000124c:	00a91a63          	bne	s2,a0,80001260 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x22c>
80001250:	000b8513          	mv	a0,s7
80001254:	000a8593          	mv	a1,s5
80001258:	fffff097          	auipc	ra,0xfffff
8000125c:	0a4080e7          	jalr	164(ra) # 800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80001260:	004ba503          	lw	a0,4(s7)
80001264:	00291593          	slli	a1,s2,0x2
80001268:	00b50533          	add	a0,a0,a1
8000126c:	01352023          	sw	s3,0(a0)
80001270:	00190913          	addi	s2,s2,1
80001274:	012ba423          	sw	s2,8(s7)
80001278:	03012583          	lw	a1,48(sp)
8000127c:	5eb47263          	bgeu	s0,a1,80001860 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x82c>
80001280:	02c12b83          	lw	s7,44(sp)
80001284:	009b8bb3          	add	s7,s7,s1
80001288:	008ba903          	lw	s2,8(s7)
8000128c:	000ba503          	lw	a0,0(s7)
80001290:	03412983          	lw	s3,52(sp)
80001294:	f2a91ce3          	bne	s2,a0,800011cc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x198>
80001298:	000b8513          	mv	a0,s7
8000129c:	000b0593          	mv	a1,s6
800012a0:	fffff097          	auipc	ra,0xfffff
800012a4:	05c080e7          	jalr	92(ra) # 800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
800012a8:	f25ff06f          	j	800011cc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x198>
800012ac:	03410513          	addi	a0,sp,52
800012b0:	04a12a23          	sw	a0,84(sp)
800012b4:	80009537          	lui	a0,0x80009
800012b8:	3e450513          	addi	a0,a0,996 # 800093e4 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>
800012bc:	04a12c23          	sw	a0,88(sp)
800012c0:	8000b537          	lui	a0,0x8000b
800012c4:	50850513          	addi	a0,a0,1288 # 8000b508 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.29>
800012c8:	02a12e23          	sw	a0,60(sp)
800012cc:	00200513          	li	a0,2
800012d0:	04a12023          	sw	a0,64(sp)
800012d4:	04012623          	sw	zero,76(sp)
800012d8:	05410513          	addi	a0,sp,84
800012dc:	04a12223          	sw	a0,68(sp)
800012e0:	00100513          	li	a0,1
800012e4:	04a12423          	sw	a0,72(sp)
800012e8:	8000b5b7          	lui	a1,0x8000b
800012ec:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
800012f0:	06b10513          	addi	a0,sp,107
800012f4:	03c10613          	addi	a2,sp,60
800012f8:	00007097          	auipc	ra,0x7
800012fc:	920080e7          	jalr	-1760(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001300:	5c051263          	bnez	a0,800018c4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x890>
80001304:	00000413          	li	s0,0
80001308:	00a00a13          	li	s4,10
8000130c:	00b00a93          	li	s5,11
80001310:	00000993          	li	s3,0
80001314:	00140513          	addi	a0,s0,1
80001318:	00a12623          	sw	a0,12(sp)
8000131c:	00100513          	li	a0,1
80001320:	00241593          	slli	a1,s0,0x2
80001324:	00441613          	slli	a2,s0,0x4
80001328:	40b60bb3          	sub	s7,a2,a1
8000132c:	00000c13          	li	s8,0
80001330:	00000493          	li	s1,0
80001334:	00098b13          	mv	s6,s3
80001338:	00050993          	mv	s3,a0
8000133c:	00400c93          	li	s9,4
80001340:	00800d13          	li	s10,8
80001344:	002b1913          	slli	s2,s6,0x2
80001348:	02412583          	lw	a1,36(sp)
8000134c:	46b47a63          	bgeu	s0,a1,800017c0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x78c>
80001350:	02012503          	lw	a0,32(sp)
80001354:	01750533          	add	a0,a0,s7
80001358:	00852583          	lw	a1,8(a0)
8000135c:	46b4fc63          	bgeu	s1,a1,800017d4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7a0>
80001360:	03012583          	lw	a1,48(sp)
80001364:	48b4f263          	bgeu	s1,a1,800017e8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7b4>
80001368:	02c12603          	lw	a2,44(sp)
8000136c:	01a605b3          	add	a1,a2,s10
80001370:	0005a583          	lw	a1,0(a1)
80001374:	48bb7463          	bgeu	s6,a1,800017fc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7c8>
80001378:	00452503          	lw	a0,4(a0)
8000137c:	01960633          	add	a2,a2,s9
80001380:	00062583          	lw	a1,0(a2)
80001384:	01850533          	add	a0,a0,s8
80001388:	00052503          	lw	a0,0(a0)
8000138c:	012585b3          	add	a1,a1,s2
80001390:	0005a583          	lw	a1,0(a1)
80001394:	00009097          	auipc	ra,0x9
80001398:	57c080e7          	jalr	1404(ra) # 8000a910 <__mulsf3>
8000139c:	01812583          	lw	a1,24(sp)
800013a0:	46b47863          	bgeu	s0,a1,80001810 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7dc>
800013a4:	01412603          	lw	a2,20(sp)
800013a8:	01760633          	add	a2,a2,s7
800013ac:	00862583          	lw	a1,8(a2)
800013b0:	46bb7a63          	bgeu	s6,a1,80001824 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7f0>
800013b4:	00462583          	lw	a1,4(a2)
800013b8:	01258db3          	add	s11,a1,s2
800013bc:	000da583          	lw	a1,0(s11)
800013c0:	00148493          	addi	s1,s1,1
800013c4:	00009097          	auipc	ra,0x9
800013c8:	b04080e7          	jalr	-1276(ra) # 80009ec8 <__addsf3>
800013cc:	00ada023          	sw	a0,0(s11)
800013d0:	00cc8c93          	addi	s9,s9,12
800013d4:	00cd0d13          	addi	s10,s10,12
800013d8:	004c0c13          	addi	s8,s8,4
800013dc:	f74496e3          	bne	s1,s4,80001348 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x314>
800013e0:	00198513          	addi	a0,s3,1
800013e4:	f55514e3          	bne	a0,s5,8000132c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x2f8>
800013e8:	00c12403          	lw	s0,12(sp)
800013ec:	f34412e3          	bne	s0,s4,80001310 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x2dc>
800013f0:	01412d03          	lw	s10,20(sp)
800013f4:	00000513          	li	a0,0
800013f8:	01812403          	lw	s0,24(sp)
800013fc:	008d0d13          	addi	s10,s10,8
80001400:	00a00c93          	li	s9,10
80001404:	019405b3          	add	a1,s0,s9
80001408:	00a00613          	li	a2,10
8000140c:	48c58463          	beq	a1,a2,80001894 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x860>
80001410:	000d2603          	lw	a2,0(s10)
80001414:	48060c63          	beqz	a2,800018ac <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x878>
80001418:	00100593          	li	a1,1
8000141c:	48b60a63          	beq	a2,a1,800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001420:	00300593          	li	a1,3
80001424:	44b66863          	bltu	a2,a1,80001874 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x840>
80001428:	00300593          	li	a1,3
8000142c:	48b60263          	beq	a2,a1,800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001430:	00500593          	li	a1,5
80001434:	44b66463          	bltu	a2,a1,8000187c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x848>
80001438:	00500593          	li	a1,5
8000143c:	46b60a63          	beq	a2,a1,800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001440:	00700593          	li	a1,7
80001444:	44b66063          	bltu	a2,a1,80001884 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x850>
80001448:	00700593          	li	a1,7
8000144c:	46b60263          	beq	a2,a1,800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001450:	00900593          	li	a1,9
80001454:	42b66c63          	bltu	a2,a1,8000188c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x858>
80001458:	00900593          	li	a1,9
8000145c:	44b60a63          	beq	a2,a1,800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001460:	ffcd2d83          	lw	s11,-4(s10)
80001464:	020da483          	lw	s1,32(s11)
80001468:	01cda903          	lw	s2,28(s11)
8000146c:	018da983          	lw	s3,24(s11)
80001470:	014daa03          	lw	s4,20(s11)
80001474:	010daa83          	lw	s5,16(s11)
80001478:	00cdab03          	lw	s6,12(s11)
8000147c:	008dab83          	lw	s7,8(s11)
80001480:	004dac03          	lw	s8,4(s11)
80001484:	000da583          	lw	a1,0(s11)
80001488:	00009097          	auipc	ra,0x9
8000148c:	a40080e7          	jalr	-1472(ra) # 80009ec8 <__addsf3>
80001490:	00050593          	mv	a1,a0
80001494:	000c0513          	mv	a0,s8
80001498:	00009097          	auipc	ra,0x9
8000149c:	a30080e7          	jalr	-1488(ra) # 80009ec8 <__addsf3>
800014a0:	00050593          	mv	a1,a0
800014a4:	000b8513          	mv	a0,s7
800014a8:	00009097          	auipc	ra,0x9
800014ac:	a20080e7          	jalr	-1504(ra) # 80009ec8 <__addsf3>
800014b0:	00050593          	mv	a1,a0
800014b4:	000b0513          	mv	a0,s6
800014b8:	00009097          	auipc	ra,0x9
800014bc:	a10080e7          	jalr	-1520(ra) # 80009ec8 <__addsf3>
800014c0:	00050593          	mv	a1,a0
800014c4:	000a8513          	mv	a0,s5
800014c8:	00009097          	auipc	ra,0x9
800014cc:	a00080e7          	jalr	-1536(ra) # 80009ec8 <__addsf3>
800014d0:	00050593          	mv	a1,a0
800014d4:	000a0513          	mv	a0,s4
800014d8:	00009097          	auipc	ra,0x9
800014dc:	9f0080e7          	jalr	-1552(ra) # 80009ec8 <__addsf3>
800014e0:	00050593          	mv	a1,a0
800014e4:	00098513          	mv	a0,s3
800014e8:	00009097          	auipc	ra,0x9
800014ec:	9e0080e7          	jalr	-1568(ra) # 80009ec8 <__addsf3>
800014f0:	00050593          	mv	a1,a0
800014f4:	00090513          	mv	a0,s2
800014f8:	00009097          	auipc	ra,0x9
800014fc:	9d0080e7          	jalr	-1584(ra) # 80009ec8 <__addsf3>
80001500:	00050593          	mv	a1,a0
80001504:	00048513          	mv	a0,s1
80001508:	00009097          	auipc	ra,0x9
8000150c:	9c0080e7          	jalr	-1600(ra) # 80009ec8 <__addsf3>
80001510:	024da583          	lw	a1,36(s11)
80001514:	00050613          	mv	a2,a0
80001518:	00058513          	mv	a0,a1
8000151c:	00060593          	mv	a1,a2
80001520:	00009097          	auipc	ra,0x9
80001524:	9a8080e7          	jalr	-1624(ra) # 80009ec8 <__addsf3>
80001528:	02a12c23          	sw	a0,56(sp)
8000152c:	fffc8c93          	addi	s9,s9,-1
80001530:	00cd0d13          	addi	s10,s10,12
80001534:	ec0c98e3          	bnez	s9,80001404 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x3d0>
80001538:	00005537          	lui	a0,0x5
8000153c:	f1a50513          	addi	a0,a0,-230 # 4f1a <.Lline_table_start2+0x3b6c>
80001540:	06a12223          	sw	a0,100(sp)
80001544:	03810513          	addi	a0,sp,56
80001548:	04a12a23          	sw	a0,84(sp)
8000154c:	80009537          	lui	a0,0x80009
80001550:	3e450513          	addi	a0,a0,996 # 800093e4 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>
80001554:	04a12c23          	sw	a0,88(sp)
80001558:	06410513          	addi	a0,sp,100
8000155c:	04a12e23          	sw	a0,92(sp)
80001560:	80009537          	lui	a0,0x80009
80001564:	64050513          	addi	a0,a0,1600 # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80001568:	06a12023          	sw	a0,96(sp)
8000156c:	8000b537          	lui	a0,0x8000b
80001570:	52850513          	addi	a0,a0,1320 # 8000b528 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.32>
80001574:	02a12e23          	sw	a0,60(sp)
80001578:	00300513          	li	a0,3
8000157c:	04a12023          	sw	a0,64(sp)
80001580:	04012623          	sw	zero,76(sp)
80001584:	05410513          	addi	a0,sp,84
80001588:	04a12223          	sw	a0,68(sp)
8000158c:	00200513          	li	a0,2
80001590:	04a12423          	sw	a0,72(sp)
80001594:	8000b5b7          	lui	a1,0x8000b
80001598:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
8000159c:	06b10513          	addi	a0,sp,107
800015a0:	03c10613          	addi	a2,sp,60
800015a4:	00006097          	auipc	ra,0x6
800015a8:	674080e7          	jalr	1652(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800015ac:	30051c63          	bnez	a0,800018c4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x890>
800015b0:	03012483          	lw	s1,48(sp)
800015b4:	04048c63          	beqz	s1,8000160c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x5d8>
800015b8:	02c12903          	lw	s2,44(sp)
800015bc:	00490913          	addi	s2,s2,4
800015c0:	8000d9b7          	lui	s3,0x8000d
800015c4:	fb098413          	addi	s0,s3,-80 # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
800015c8:	00440413          	addi	s0,s0,4
800015cc:	0100006f          	j	800015dc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x5a8>
800015d0:	fff48493          	addi	s1,s1,-1
800015d4:	00c90913          	addi	s2,s2,12
800015d8:	02048a63          	beqz	s1,8000160c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x5d8>
800015dc:	ffc92683          	lw	a3,-4(s2)
800015e0:	fe0688e3          	beqz	a3,800015d0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x59c>
800015e4:	00092583          	lw	a1,0(s2)
800015e8:	00269693          	slli	a3,a3,0x2
800015ec:	00400613          	li	a2,4
800015f0:	00040513          	mv	a0,s0
800015f4:	fffff097          	auipc	ra,0xfffff
800015f8:	764080e7          	jalr	1892(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800015fc:	fb09a503          	lw	a0,-80(s3)
80001600:	40b50533          	sub	a0,a0,a1
80001604:	faa9a823          	sw	a0,-80(s3)
80001608:	fc9ff06f          	j	800015d0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x59c>
8000160c:	02812503          	lw	a0,40(sp)
80001610:	02050e63          	beqz	a0,8000164c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x618>
80001614:	00c00593          	li	a1,12
80001618:	00008097          	auipc	ra,0x8
8000161c:	6d0080e7          	jalr	1744(ra) # 80009ce8 <__mulsi3>
80001620:	02c12583          	lw	a1,44(sp)
80001624:	00050693          	mv	a3,a0
80001628:	8000d437          	lui	s0,0x8000d
8000162c:	fb040513          	addi	a0,s0,-80 # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80001630:	00450513          	addi	a0,a0,4
80001634:	00400613          	li	a2,4
80001638:	fffff097          	auipc	ra,0xfffff
8000163c:	720080e7          	jalr	1824(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001640:	fb042503          	lw	a0,-80(s0)
80001644:	40b50533          	sub	a0,a0,a1
80001648:	faa42823          	sw	a0,-80(s0)
8000164c:	02412483          	lw	s1,36(sp)
80001650:	04048c63          	beqz	s1,800016a8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x674>
80001654:	02012903          	lw	s2,32(sp)
80001658:	00490913          	addi	s2,s2,4
8000165c:	8000d9b7          	lui	s3,0x8000d
80001660:	fb098413          	addi	s0,s3,-80 # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80001664:	00440413          	addi	s0,s0,4
80001668:	0100006f          	j	80001678 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x644>
8000166c:	fff48493          	addi	s1,s1,-1
80001670:	00c90913          	addi	s2,s2,12
80001674:	02048a63          	beqz	s1,800016a8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x674>
80001678:	ffc92683          	lw	a3,-4(s2)
8000167c:	fe0688e3          	beqz	a3,8000166c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x638>
80001680:	00092583          	lw	a1,0(s2)
80001684:	00269693          	slli	a3,a3,0x2
80001688:	00400613          	li	a2,4
8000168c:	00040513          	mv	a0,s0
80001690:	fffff097          	auipc	ra,0xfffff
80001694:	6c8080e7          	jalr	1736(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001698:	fb09a503          	lw	a0,-80(s3)
8000169c:	40b50533          	sub	a0,a0,a1
800016a0:	faa9a823          	sw	a0,-80(s3)
800016a4:	fc9ff06f          	j	8000166c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x638>
800016a8:	01c12503          	lw	a0,28(sp)
800016ac:	02050e63          	beqz	a0,800016e8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6b4>
800016b0:	00c00593          	li	a1,12
800016b4:	00008097          	auipc	ra,0x8
800016b8:	634080e7          	jalr	1588(ra) # 80009ce8 <__mulsi3>
800016bc:	02012583          	lw	a1,32(sp)
800016c0:	00050693          	mv	a3,a0
800016c4:	8000d437          	lui	s0,0x8000d
800016c8:	fb040513          	addi	a0,s0,-80 # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
800016cc:	00450513          	addi	a0,a0,4
800016d0:	00400613          	li	a2,4
800016d4:	fffff097          	auipc	ra,0xfffff
800016d8:	684080e7          	jalr	1668(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800016dc:	fb042503          	lw	a0,-80(s0)
800016e0:	40b50533          	sub	a0,a0,a1
800016e4:	faa42823          	sw	a0,-80(s0)
800016e8:	01812483          	lw	s1,24(sp)
800016ec:	04048c63          	beqz	s1,80001744 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x710>
800016f0:	01412903          	lw	s2,20(sp)
800016f4:	00490913          	addi	s2,s2,4
800016f8:	8000d9b7          	lui	s3,0x8000d
800016fc:	fb098413          	addi	s0,s3,-80 # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80001700:	00440413          	addi	s0,s0,4
80001704:	0100006f          	j	80001714 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6e0>
80001708:	fff48493          	addi	s1,s1,-1
8000170c:	00c90913          	addi	s2,s2,12
80001710:	02048a63          	beqz	s1,80001744 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x710>
80001714:	ffc92683          	lw	a3,-4(s2)
80001718:	fe0688e3          	beqz	a3,80001708 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6d4>
8000171c:	00092583          	lw	a1,0(s2)
80001720:	00269693          	slli	a3,a3,0x2
80001724:	00400613          	li	a2,4
80001728:	00040513          	mv	a0,s0
8000172c:	fffff097          	auipc	ra,0xfffff
80001730:	62c080e7          	jalr	1580(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001734:	fb09a503          	lw	a0,-80(s3)
80001738:	40b50533          	sub	a0,a0,a1
8000173c:	faa9a823          	sw	a0,-80(s3)
80001740:	fc9ff06f          	j	80001708 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6d4>
80001744:	01012503          	lw	a0,16(sp)
80001748:	02050e63          	beqz	a0,80001784 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x750>
8000174c:	00c00593          	li	a1,12
80001750:	00008097          	auipc	ra,0x8
80001754:	598080e7          	jalr	1432(ra) # 80009ce8 <__mulsi3>
80001758:	01412583          	lw	a1,20(sp)
8000175c:	00050693          	mv	a3,a0
80001760:	8000d437          	lui	s0,0x8000d
80001764:	fb040513          	addi	a0,s0,-80 # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80001768:	00450513          	addi	a0,a0,4
8000176c:	00400613          	li	a2,4
80001770:	fffff097          	auipc	ra,0xfffff
80001774:	5e8080e7          	jalr	1512(ra) # 80000d58 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001778:	fb042503          	lw	a0,-80(s0)
8000177c:	40b50533          	sub	a0,a0,a1
80001780:	faa42823          	sw	a0,-80(s0)
80001784:	09c12083          	lw	ra,156(sp)
80001788:	09812403          	lw	s0,152(sp)
8000178c:	09412483          	lw	s1,148(sp)
80001790:	09012903          	lw	s2,144(sp)
80001794:	08c12983          	lw	s3,140(sp)
80001798:	08812a03          	lw	s4,136(sp)
8000179c:	08412a83          	lw	s5,132(sp)
800017a0:	08012b03          	lw	s6,128(sp)
800017a4:	07c12b83          	lw	s7,124(sp)
800017a8:	07812c03          	lw	s8,120(sp)
800017ac:	07412c83          	lw	s9,116(sp)
800017b0:	07012d03          	lw	s10,112(sp)
800017b4:	06c12d83          	lw	s11,108(sp)
800017b8:	0a010113          	addi	sp,sp,160
800017bc:	00008067          	ret
800017c0:	8000b637          	lui	a2,0x8000b
800017c4:	56c60613          	addi	a2,a2,1388 # 8000b56c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.36>
800017c8:	00040513          	mv	a0,s0
800017cc:	00005097          	auipc	ra,0x5
800017d0:	5c0080e7          	jalr	1472(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800017d4:	8000b637          	lui	a2,0x8000b
800017d8:	57c60613          	addi	a2,a2,1404 # 8000b57c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.37>
800017dc:	00048513          	mv	a0,s1
800017e0:	00005097          	auipc	ra,0x5
800017e4:	5ac080e7          	jalr	1452(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800017e8:	8000b637          	lui	a2,0x8000b
800017ec:	58c60613          	addi	a2,a2,1420 # 8000b58c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.38>
800017f0:	00048513          	mv	a0,s1
800017f4:	00005097          	auipc	ra,0x5
800017f8:	598080e7          	jalr	1432(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800017fc:	8000b637          	lui	a2,0x8000b
80001800:	59c60613          	addi	a2,a2,1436 # 8000b59c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.39>
80001804:	000b0513          	mv	a0,s6
80001808:	00005097          	auipc	ra,0x5
8000180c:	584080e7          	jalr	1412(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001810:	8000b637          	lui	a2,0x8000b
80001814:	5ac60613          	addi	a2,a2,1452 # 8000b5ac <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.40>
80001818:	00040513          	mv	a0,s0
8000181c:	00005097          	auipc	ra,0x5
80001820:	570080e7          	jalr	1392(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001824:	8000b637          	lui	a2,0x8000b
80001828:	5bc60613          	addi	a2,a2,1468 # 8000b5bc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.41>
8000182c:	000b0513          	mv	a0,s6
80001830:	00005097          	auipc	ra,0x5
80001834:	55c080e7          	jalr	1372(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001838:	8000b637          	lui	a2,0x8000b
8000183c:	5fc60613          	addi	a2,a2,1532 # 8000b5fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.45>
80001840:	00040513          	mv	a0,s0
80001844:	00005097          	auipc	ra,0x5
80001848:	548080e7          	jalr	1352(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000184c:	8000b637          	lui	a2,0x8000b
80001850:	61c60613          	addi	a2,a2,1564 # 8000b61c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.47>
80001854:	00040513          	mv	a0,s0
80001858:	00005097          	auipc	ra,0x5
8000185c:	534080e7          	jalr	1332(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001860:	8000b637          	lui	a2,0x8000b
80001864:	63c60613          	addi	a2,a2,1596 # 8000b63c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.49>
80001868:	00040513          	mv	a0,s0
8000186c:	00005097          	auipc	ra,0x5
80001870:	520080e7          	jalr	1312(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001874:	00200593          	li	a1,2
80001878:	0380006f          	j	800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
8000187c:	00400593          	li	a1,4
80001880:	0300006f          	j	800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001884:	00600593          	li	a1,6
80001888:	0280006f          	j	800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
8000188c:	00800593          	li	a1,8
80001890:	0200006f          	j	800018b0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001894:	8000b637          	lui	a2,0x8000b
80001898:	54c60613          	addi	a2,a2,1356 # 8000b54c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.34>
8000189c:	00040513          	mv	a0,s0
800018a0:	00040593          	mv	a1,s0
800018a4:	00005097          	auipc	ra,0x5
800018a8:	4e8080e7          	jalr	1256(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800018ac:	00000593          	li	a1,0
800018b0:	8000b637          	lui	a2,0x8000b
800018b4:	55c60613          	addi	a2,a2,1372 # 8000b55c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.35>
800018b8:	00058513          	mv	a0,a1
800018bc:	00005097          	auipc	ra,0x5
800018c0:	4d0080e7          	jalr	1232(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800018c4:	8000b537          	lui	a0,0x8000b
800018c8:	17450513          	addi	a0,a0,372 # 8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>
800018cc:	8000b6b7          	lui	a3,0x8000b
800018d0:	16468693          	addi	a3,a3,356 # 8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>
800018d4:	8000b737          	lui	a4,0x8000b
800018d8:	1b070713          	addi	a4,a4,432 # 8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>
800018dc:	02b00593          	li	a1,43
800018e0:	06b10613          	addi	a2,sp,107
800018e4:	00005097          	auipc	ra,0x5
800018e8:	6a4080e7          	jalr	1700(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

800018ec <rust_begin_unwind>:
800018ec:	fd010113          	addi	sp,sp,-48
800018f0:	02112623          	sw	ra,44(sp)
800018f4:	00a12223          	sw	a0,4(sp)
800018f8:	00410513          	addi	a0,sp,4
800018fc:	02a12023          	sw	a0,32(sp)
80001900:	80000537          	lui	a0,0x80000
80001904:	03c50513          	addi	a0,a0,60 # 8000003c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h04315e1379c69354E>
80001908:	02a12223          	sw	a0,36(sp)
8000190c:	8000b537          	lui	a0,0x8000b
80001910:	67450513          	addi	a0,a0,1652 # 8000b674 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.52>
80001914:	00a12423          	sw	a0,8(sp)
80001918:	00200513          	li	a0,2
8000191c:	00a12623          	sw	a0,12(sp)
80001920:	00012c23          	sw	zero,24(sp)
80001924:	02010513          	addi	a0,sp,32
80001928:	00a12823          	sw	a0,16(sp)
8000192c:	00100513          	li	a0,1
80001930:	00a12a23          	sw	a0,20(sp)
80001934:	8000b5b7          	lui	a1,0x8000b
80001938:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
8000193c:	02b10513          	addi	a0,sp,43
80001940:	00810613          	addi	a2,sp,8
80001944:	00006097          	auipc	ra,0x6
80001948:	2d4080e7          	jalr	724(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
8000194c:	00051463          	bnez	a0,80001954 <rust_begin_unwind+0x68>
80001950:	0000006f          	j	80001950 <rust_begin_unwind+0x64>
80001954:	8000b537          	lui	a0,0x8000b
80001958:	17450513          	addi	a0,a0,372 # 8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>
8000195c:	8000b6b7          	lui	a3,0x8000b
80001960:	16468693          	addi	a3,a3,356 # 8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>
80001964:	8000b737          	lui	a4,0x8000b
80001968:	1b070713          	addi	a4,a4,432 # 8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>
8000196c:	02b00593          	li	a1,43
80001970:	02b10613          	addi	a2,sp,43
80001974:	00005097          	auipc	ra,0x5
80001978:	614080e7          	jalr	1556(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

8000197c <kernel_main>:
8000197c:	f2010113          	addi	sp,sp,-224
80001980:	0c112e23          	sw	ra,220(sp)
80001984:	0c812c23          	sw	s0,216(sp)
80001988:	0c912a23          	sw	s1,212(sp)
8000198c:	0d212823          	sw	s2,208(sp)
80001990:	0d312623          	sw	s3,204(sp)
80001994:	0d412423          	sw	s4,200(sp)
80001998:	0d512223          	sw	s5,196(sp)
8000199c:	0d612023          	sw	s6,192(sp)
800019a0:	0b712e23          	sw	s7,188(sp)
800019a4:	0b812c23          	sw	s8,184(sp)
800019a8:	0b912a23          	sw	s9,180(sp)
800019ac:	0ba12823          	sw	s10,176(sp)
800019b0:	0bb12623          	sw	s11,172(sp)
800019b4:	10000437          	lui	s0,0x10000
800019b8:	07300593          	li	a1,115
800019bc:	00b40023          	sb	a1,0(s0) # 10000000 <.Lline_table_start2+0xfffec52>
800019c0:	07400913          	li	s2,116
800019c4:	01240023          	sb	s2,0(s0)
800019c8:	06100993          	li	s3,97
800019cc:	01340023          	sb	s3,0(s0)
800019d0:	07200513          	li	a0,114
800019d4:	00a40023          	sb	a0,0(s0)
800019d8:	07200613          	li	a2,114
800019dc:	01240023          	sb	s2,0(s0)
800019e0:	06500a13          	li	s4,101
800019e4:	01440023          	sb	s4,0(s0)
800019e8:	06400513          	li	a0,100
800019ec:	00a40023          	sb	a0,0(s0)
800019f0:	02100513          	li	a0,33
800019f4:	00a40023          	sb	a0,0(s0)
800019f8:	00a00a93          	li	s5,10
800019fc:	01540023          	sb	s5,0(s0)
80001a00:	04400513          	li	a0,68
80001a04:	00a40023          	sb	a0,0(s0)
80001a08:	04f00513          	li	a0,79
80001a0c:	00a40023          	sb	a0,0(s0)
80001a10:	06f00c93          	li	s9,111
80001a14:	01940023          	sb	s9,0(s0)
80001a18:	00a40023          	sb	a0,0(s0)
80001a1c:	04d00513          	li	a0,77
80001a20:	00a40023          	sb	a0,0(s0)
80001a24:	02000d93          	li	s11,32
80001a28:	01b40023          	sb	s11,0(s0)
80001a2c:	01940023          	sb	s9,0(s0)
80001a30:	00b40023          	sb	a1,0(s0)
80001a34:	01540023          	sb	s5,0(s0)
80001a38:	06900d13          	li	s10,105
80001a3c:	01a40023          	sb	s10,0(s0)
80001a40:	06e00c13          	li	s8,110
80001a44:	01840023          	sb	s8,0(s0)
80001a48:	01a40023          	sb	s10,0(s0)
80001a4c:	01240023          	sb	s2,0(s0)
80001a50:	01b40023          	sb	s11,0(s0)
80001a54:	07000493          	li	s1,112
80001a58:	00940023          	sb	s1,0(s0)
80001a5c:	01340023          	sb	s3,0(s0)
80001a60:	06700b93          	li	s7,103
80001a64:	01740023          	sb	s7,0(s0)
80001a68:	01440023          	sb	s4,0(s0)
80001a6c:	01b40023          	sb	s11,0(s0)
80001a70:	01340023          	sb	s3,0(s0)
80001a74:	06c00b13          	li	s6,108
80001a78:	01640023          	sb	s6,0(s0)
80001a7c:	01640023          	sb	s6,0(s0)
80001a80:	01940023          	sb	s9,0(s0)
80001a84:	06300513          	li	a0,99
80001a88:	00a40023          	sb	a0,0(s0)
80001a8c:	01340023          	sb	s3,0(s0)
80001a90:	01240023          	sb	s2,0(s0)
80001a94:	01940023          	sb	s9,0(s0)
80001a98:	00c40023          	sb	a2,0(s0)
80001a9c:	01540023          	sb	s5,0(s0)
80001aa0:	fffff097          	auipc	ra,0xfffff
80001aa4:	c8c080e7          	jalr	-884(ra) # 8000072c <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE>
80001aa8:	00940023          	sb	s1,0(s0)
80001aac:	01340023          	sb	s3,0(s0)
80001ab0:	01740023          	sb	s7,0(s0)
80001ab4:	07300513          	li	a0,115
80001ab8:	01440023          	sb	s4,0(s0)
80001abc:	01b40023          	sb	s11,0(s0)
80001ac0:	01340023          	sb	s3,0(s0)
80001ac4:	01640023          	sb	s6,0(s0)
80001ac8:	01640023          	sb	s6,0(s0)
80001acc:	01940023          	sb	s9,0(s0)
80001ad0:	06300613          	li	a2,99
80001ad4:	00c40023          	sb	a2,0(s0)
80001ad8:	01340023          	sb	s3,0(s0)
80001adc:	01240023          	sb	s2,0(s0)
80001ae0:	01940023          	sb	s9,0(s0)
80001ae4:	07200593          	li	a1,114
80001ae8:	00b40023          	sb	a1,0(s0)
80001aec:	01b40023          	sb	s11,0(s0)
80001af0:	01a40023          	sb	s10,0(s0)
80001af4:	01840023          	sb	s8,0(s0)
80001af8:	01a40023          	sb	s10,0(s0)
80001afc:	01240023          	sb	s2,0(s0)
80001b00:	01a40023          	sb	s10,0(s0)
80001b04:	01340023          	sb	s3,0(s0)
80001b08:	01640023          	sb	s6,0(s0)
80001b0c:	01a40023          	sb	s10,0(s0)
80001b10:	00a40023          	sb	a0,0(s0)
80001b14:	01440023          	sb	s4,0(s0)
80001b18:	06400513          	li	a0,100
80001b1c:	00a40023          	sb	a0,0(s0)
80001b20:	02100513          	li	a0,33
80001b24:	00a40023          	sb	a0,0(s0)
80001b28:	01540023          	sb	s5,0(s0)
80001b2c:	01a40023          	sb	s10,0(s0)
80001b30:	01840023          	sb	s8,0(s0)
80001b34:	01a40023          	sb	s10,0(s0)
80001b38:	01240023          	sb	s2,0(s0)
80001b3c:	01b40023          	sb	s11,0(s0)
80001b40:	06b00513          	li	a0,107
80001b44:	00a40023          	sb	a0,0(s0)
80001b48:	01440023          	sb	s4,0(s0)
80001b4c:	00b40023          	sb	a1,0(s0)
80001b50:	01840023          	sb	s8,0(s0)
80001b54:	07200c13          	li	s8,114
80001b58:	01440023          	sb	s4,0(s0)
80001b5c:	01640023          	sb	s6,0(s0)
80001b60:	01b40023          	sb	s11,0(s0)
80001b64:	01340023          	sb	s3,0(s0)
80001b68:	01640023          	sb	s6,0(s0)
80001b6c:	01640023          	sb	s6,0(s0)
80001b70:	01940023          	sb	s9,0(s0)
80001b74:	06300b93          	li	s7,99
80001b78:	00c40023          	sb	a2,0(s0)
80001b7c:	01340023          	sb	s3,0(s0)
80001b80:	01240023          	sb	s2,0(s0)
80001b84:	01940023          	sb	s9,0(s0)
80001b88:	01840023          	sb	s8,0(s0)
80001b8c:	01540023          	sb	s5,0(s0)
80001b90:	8000e4b7          	lui	s1,0x8000e
80001b94:	00048493          	mv	s1,s1
80001b98:	0a912023          	sw	s1,160(sp)
80001b9c:	0a010513          	addi	a0,sp,160
80001ba0:	08a12423          	sw	a0,136(sp)
80001ba4:	80000537          	lui	a0,0x80000
80001ba8:	17050513          	addi	a0,a0,368 # 80000170 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>
80001bac:	08a12623          	sw	a0,140(sp)
80001bb0:	8000b537          	lui	a0,0x8000b
80001bb4:	20450513          	addi	a0,a0,516 # 8000b204 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.32.llvm.11087050053344146531>
80001bb8:	00a12223          	sw	a0,4(sp)
80001bbc:	00200513          	li	a0,2
80001bc0:	00a12423          	sw	a0,8(sp)
80001bc4:	00012a23          	sw	zero,20(sp)
80001bc8:	08810513          	addi	a0,sp,136
80001bcc:	00a12623          	sw	a0,12(sp)
80001bd0:	00100513          	li	a0,1
80001bd4:	00a12823          	sw	a0,16(sp)
80001bd8:	8000b5b7          	lui	a1,0x8000b
80001bdc:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
80001be0:	0a810513          	addi	a0,sp,168
80001be4:	00410613          	addi	a2,sp,4
80001be8:	00006097          	auipc	ra,0x6
80001bec:	030080e7          	jalr	48(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001bf0:	2a051663          	bnez	a0,80001e9c <kernel_main+0x520>
80001bf4:	8000d537          	lui	a0,0x8000d
80001bf8:	fa052823          	sw	zero,-80(a0) # 8000cfb0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.11087050053344146531>
80001bfc:	fb050513          	addi	a0,a0,-80
80001c00:	00348593          	addi	a1,s1,3 # 8000e003 <KALLOC_BUFFER+0x3>
80001c04:	ffc5f593          	andi	a1,a1,-4
80001c08:	00200637          	lui	a2,0x200
80001c0c:	00c48633          	add	a2,s1,a2
80001c10:	40b60633          	sub	a2,a2,a1
80001c14:	004006b7          	lui	a3,0x400
80001c18:	ffc68693          	addi	a3,a3,-4 # 3ffffc <.Lline_table_start2+0x3fec4e>
80001c1c:	00d676b3          	and	a3,a2,a3
80001c20:	00d5a023          	sw	a3,0(a1)
80001c24:	0005a223          	sw	zero,4(a1)
80001c28:	00d586b3          	add	a3,a1,a3
80001c2c:	00367613          	andi	a2,a2,3
80001c30:	00052223          	sw	zero,4(a0)
80001c34:	00b52423          	sw	a1,8(a0)
80001c38:	00b52623          	sw	a1,12(a0)
80001c3c:	00d52823          	sw	a3,16(a0)
80001c40:	00c50a23          	sb	a2,20(a0)
80001c44:	06b00513          	li	a0,107
80001c48:	00a40023          	sb	a0,0(s0)
80001c4c:	06500593          	li	a1,101
80001c50:	00b40023          	sb	a1,0(s0)
80001c54:	01840023          	sb	s8,0(s0)
80001c58:	06e00513          	li	a0,110
80001c5c:	00a40023          	sb	a0,0(s0)
80001c60:	00b40023          	sb	a1,0(s0)
80001c64:	01640023          	sb	s6,0(s0)
80001c68:	01b40023          	sb	s11,0(s0)
80001c6c:	01340023          	sb	s3,0(s0)
80001c70:	01640023          	sb	s6,0(s0)
80001c74:	01640023          	sb	s6,0(s0)
80001c78:	01940023          	sb	s9,0(s0)
80001c7c:	01740023          	sb	s7,0(s0)
80001c80:	01340023          	sb	s3,0(s0)
80001c84:	01240023          	sb	s2,0(s0)
80001c88:	01940023          	sb	s9,0(s0)
80001c8c:	01840023          	sb	s8,0(s0)
80001c90:	01b40023          	sb	s11,0(s0)
80001c94:	01a40023          	sb	s10,0(s0)
80001c98:	00a40023          	sb	a0,0(s0)
80001c9c:	01a40023          	sb	s10,0(s0)
80001ca0:	01240023          	sb	s2,0(s0)
80001ca4:	01a40023          	sb	s10,0(s0)
80001ca8:	01340023          	sb	s3,0(s0)
80001cac:	01640023          	sb	s6,0(s0)
80001cb0:	01a40023          	sb	s10,0(s0)
80001cb4:	07300513          	li	a0,115
80001cb8:	00a40023          	sb	a0,0(s0)
80001cbc:	00b40023          	sb	a1,0(s0)
80001cc0:	06400513          	li	a0,100
80001cc4:	00a40023          	sb	a0,0(s0)
80001cc8:	02100513          	li	a0,33
80001ccc:	00a40023          	sb	a0,0(s0)
80001cd0:	00a00513          	li	a0,10
80001cd4:	00a40023          	sb	a0,0(s0)
80001cd8:	0ff0000f          	fence
80001cdc:	fffff097          	auipc	ra,0xfffff
80001ce0:	358080e7          	jalr	856(ra) # 80001034 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E>
80001ce4:	0ff0000f          	fence
80001ce8:	80001537          	lui	a0,0x80001
80001cec:	a8050513          	addi	a0,a0,-1408 # 80000a80 <user_trap>
80001cf0:	30551073          	.insn	4, 0x30551073
80001cf4:	30002573          	.insn	4, 0x30002573
80001cf8:	00300593          	li	a1,3
80001cfc:	00b59593          	slli	a1,a1,0xb
80001d00:	00b56533          	or	a0,a0,a1
80001d04:	30051073          	.insn	4, 0x30051073
80001d08:	08000513          	li	a0,128
80001d0c:	30052073          	.insn	4, 0x30052073
80001d10:	8000d537          	lui	a0,0x8000d
80001d14:	fac54583          	lbu	a1,-84(a0) # 8000cfac <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.11087050053344146531>
80001d18:	00058463          	beqz	a1,80001d20 <kernel_main+0x3a4>
80001d1c:	0000006f          	j	80001d1c <kernel_main+0x3a0>
80001d20:	8000d5b7          	lui	a1,0x8000d
80001d24:	fa85a603          	lw	a2,-88(a1) # 8000cfa8 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.2.llvm.11087050053344146531>
80001d28:	8000d6b7          	lui	a3,0x8000d
80001d2c:	fa06a683          	lw	a3,-96(a3) # 8000cfa0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0.llvm.11087050053344146531>
80001d30:	00100713          	li	a4,1
80001d34:	fae50623          	sb	a4,-84(a0)
80001d38:	00160613          	addi	a2,a2,1 # 200001 <.Lline_table_start2+0x1fec53>
80001d3c:	fac5a423          	sw	a2,-88(a1)
80001d40:	18068263          	beqz	a3,80001ec4 <kernel_main+0x548>
80001d44:	8000d537          	lui	a0,0x8000d
80001d48:	fa452403          	lw	s0,-92(a0) # 8000cfa4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1.llvm.11087050053344146531>
80001d4c:	00c41413          	slli	s0,s0,0xc
80001d50:	12040e63          	beqz	s0,80001e8c <kernel_main+0x510>
80001d54:	00042503          	lw	a0,0(s0)
80001d58:	00050863          	beqz	a0,80001d68 <kernel_main+0x3ec>
80001d5c:	00442503          	lw	a0,4(s0)
80001d60:	00100593          	li	a1,1
80001d64:	0080006f          	j	80001d6c <kernel_main+0x3f0>
80001d68:	00000593          	li	a1,0
80001d6c:	8000d637          	lui	a2,0x8000d
80001d70:	fab62023          	sw	a1,-96(a2) # 8000cfa0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0.llvm.11087050053344146531>
80001d74:	8000d5b7          	lui	a1,0x8000d
80001d78:	faa5a223          	sw	a0,-92(a1) # 8000cfa4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1.llvm.11087050053344146531>
80001d7c:	8000d537          	lui	a0,0x8000d
80001d80:	fa050623          	sb	zero,-84(a0) # 8000cfac <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.11087050053344146531>
80001d84:	08010493          	addi	s1,sp,128
80001d88:	00410513          	addi	a0,sp,4
80001d8c:	07c00613          	li	a2,124
80001d90:	00000593          	li	a1,0
80001d94:	00009097          	auipc	ra,0x9
80001d98:	eb0080e7          	jalr	-336(ra) # 8000ac44 <memset>
80001d9c:	80002537          	lui	a0,0x80002
80001da0:	ed850513          	addi	a0,a0,-296 # 80001ed8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E>
80001da4:	08a12023          	sw	a0,128(sp)
80001da8:	08012223          	sw	zero,132(sp)
80001dac:	0a912023          	sw	s1,160(sp)
80001db0:	80009537          	lui	a0,0x80009
80001db4:	44050513          	addi	a0,a0,1088 # 80009440 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80001db8:	0aa12223          	sw	a0,164(sp)
80001dbc:	8000b537          	lui	a0,0x8000b
80001dc0:	6a050513          	addi	a0,a0,1696 # 8000b6a0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.69>
80001dc4:	08a12423          	sw	a0,136(sp)
80001dc8:	00200513          	li	a0,2
80001dcc:	08a12623          	sw	a0,140(sp)
80001dd0:	08012c23          	sw	zero,152(sp)
80001dd4:	0a010513          	addi	a0,sp,160
80001dd8:	08a12823          	sw	a0,144(sp)
80001ddc:	00100513          	li	a0,1
80001de0:	08a12a23          	sw	a0,148(sp)
80001de4:	8000b5b7          	lui	a1,0x8000b
80001de8:	14c58593          	addi	a1,a1,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
80001dec:	0a810513          	addi	a0,sp,168
80001df0:	08810613          	addi	a2,sp,136
80001df4:	00006097          	auipc	ra,0x6
80001df8:	e24080e7          	jalr	-476(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001dfc:	0a051063          	bnez	a0,80001e9c <kernel_main+0x520>
80001e00:	00001537          	lui	a0,0x1
80001e04:	ff850513          	addi	a0,a0,-8 # ff8 <.Lline_table_start2+0xc>
80001e08:	00a46533          	or	a0,s0,a0
80001e0c:	00a12423          	sw	a0,8(sp)
80001e10:	10000537          	lui	a0,0x10000
80001e14:	04800593          	li	a1,72
80001e18:	00b50023          	sb	a1,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
80001e1c:	06500593          	li	a1,101
80001e20:	00b50023          	sb	a1,0(a0)
80001e24:	06c00593          	li	a1,108
80001e28:	00b50023          	sb	a1,0(a0)
80001e2c:	00b50023          	sb	a1,0(a0)
80001e30:	06f00613          	li	a2,111
80001e34:	00c50023          	sb	a2,0(a0)
80001e38:	02000693          	li	a3,32
80001e3c:	00d50023          	sb	a3,0(a0)
80001e40:	07700693          	li	a3,119
80001e44:	00d50023          	sb	a3,0(a0)
80001e48:	00c50023          	sb	a2,0(a0)
80001e4c:	07200613          	li	a2,114
80001e50:	00c50023          	sb	a2,0(a0)
80001e54:	00b50023          	sb	a1,0(a0)
80001e58:	06400593          	li	a1,100
80001e5c:	00b50023          	sb	a1,0(a0)
80001e60:	02100593          	li	a1,33
80001e64:	00b50023          	sb	a1,0(a0)
80001e68:	00a00593          	li	a1,10
80001e6c:	00b50023          	sb	a1,0(a0)
80001e70:	00410513          	addi	a0,sp,4
80001e74:	fffff097          	auipc	ra,0xfffff
80001e78:	b3c080e7          	jalr	-1220(ra) # 800009b0 <run_user>
80001e7c:	00410513          	addi	a0,sp,4
80001e80:	ffffe097          	auipc	ra,0xffffe
80001e84:	734080e7          	jalr	1844(ra) # 800005b4 <_ZN7SuperOS7handler7handler17h2213965921875da5E>
80001e88:	fe9ff06f          	j	80001e70 <kernel_main+0x4f4>
80001e8c:	8000b537          	lui	a0,0x8000b
80001e90:	25050513          	addi	a0,a0,592 # 8000b250 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.37.llvm.11087050053344146531>
80001e94:	00005097          	auipc	ra,0x5
80001e98:	d10080e7          	jalr	-752(ra) # 80006ba4 <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>
80001e9c:	8000b537          	lui	a0,0x8000b
80001ea0:	17450513          	addi	a0,a0,372 # 8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>
80001ea4:	8000b6b7          	lui	a3,0x8000b
80001ea8:	16468693          	addi	a3,a3,356 # 8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>
80001eac:	8000b737          	lui	a4,0x8000b
80001eb0:	1b070713          	addi	a4,a4,432 # 8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>
80001eb4:	02b00593          	li	a1,43
80001eb8:	0a810613          	addi	a2,sp,168
80001ebc:	00005097          	auipc	ra,0x5
80001ec0:	0cc080e7          	jalr	204(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>
80001ec4:	fa050623          	sb	zero,-84(a0)
80001ec8:	8000b537          	lui	a0,0x8000b
80001ecc:	68450513          	addi	a0,a0,1668 # 8000b684 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.67>
80001ed0:	00005097          	auipc	ra,0x5
80001ed4:	cd4080e7          	jalr	-812(ra) # 80006ba4 <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>

80001ed8 <_ZN7SuperOS9user_main17hdb789cef18ee1961E>:
80001ed8:	f9010113          	addi	sp,sp,-112
80001edc:	06112623          	sw	ra,108(sp)
80001ee0:	06812423          	sw	s0,104(sp)
80001ee4:	06912223          	sw	s1,100(sp)
80001ee8:	07212023          	sw	s2,96(sp)
80001eec:	05312e23          	sw	s3,92(sp)
80001ef0:	05412c23          	sw	s4,88(sp)
80001ef4:	05512a23          	sw	s5,84(sp)
80001ef8:	05612823          	sw	s6,80(sp)
80001efc:	05712623          	sw	s7,76(sp)
80001f00:	05812423          	sw	s8,72(sp)
80001f04:	05912223          	sw	s9,68(sp)
80001f08:	05a12023          	sw	s10,64(sp)
80001f0c:	03b12e23          	sw	s11,60(sp)
80001f10:	100004b7          	lui	s1,0x10000
80001f14:	06500993          	li	s3,101
80001f18:	06c00a13          	li	s4,108
80001f1c:	07300c13          	li	s8,115
80001f20:	02100d13          	li	s10,33
80001f24:	80009ab7          	lui	s5,0x80009
80001f28:	640a8a93          	addi	s5,s5,1600 # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80001f2c:	00c10b13          	addi	s6,sp,12
80001f30:	8000bbb7          	lui	s7,0x8000b
80001f34:	6c0b8b93          	addi	s7,s7,1728 # 8000b6c0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.76>
80001f38:	00300c93          	li	s9,3
80001f3c:	02810d93          	addi	s11,sp,40
80001f40:	00200913          	li	s2,2
80001f44:	8000b437          	lui	s0,0x8000b
80001f48:	14c40413          	addi	s0,s0,332 # 8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>
80001f4c:	04800513          	li	a0,72
80001f50:	00a48023          	sb	a0,0(s1) # 10000000 <.Lline_table_start2+0xfffec52>
80001f54:	01348023          	sb	s3,0(s1)
80001f58:	01448023          	sb	s4,0(s1)
80001f5c:	01448023          	sb	s4,0(s1)
80001f60:	06f00513          	li	a0,111
80001f64:	00a48023          	sb	a0,0(s1)
80001f68:	02000513          	li	a0,32
80001f6c:	00a48023          	sb	a0,0(s1)
80001f70:	07500513          	li	a0,117
80001f74:	00a48023          	sb	a0,0(s1)
80001f78:	01848023          	sb	s8,0(s1)
80001f7c:	01348023          	sb	s3,0(s1)
80001f80:	07200513          	li	a0,114
80001f84:	00a48023          	sb	a0,0(s1)
80001f88:	01848023          	sb	s8,0(s1)
80001f8c:	01a48023          	sb	s10,0(s1)
80001f90:	01a48023          	sb	s10,0(s1)
80001f94:	01a48023          	sb	s10,0(s1)
80001f98:	00a00513          	li	a0,10
80001f9c:	00a48023          	sb	a0,0(s1)
80001fa0:	b0002573          	.insn	4, 0xb0002573
80001fa4:	40a00533          	neg	a0,a0
80001fa8:	00a12423          	sw	a0,8(sp)
80001fac:	b0202573          	.insn	4, 0xb0202573
80001fb0:	40a00533          	neg	a0,a0
80001fb4:	00a12623          	sw	a0,12(sp)
80001fb8:	fffff097          	auipc	ra,0xfffff
80001fbc:	07c080e7          	jalr	124(ra) # 80001034 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E>
80001fc0:	b0002573          	.insn	4, 0xb0002573
80001fc4:	00812583          	lw	a1,8(sp)
80001fc8:	00a58533          	add	a0,a1,a0
80001fcc:	00a12423          	sw	a0,8(sp)
80001fd0:	b0202573          	.insn	4, 0xb0202573
80001fd4:	00c12583          	lw	a1,12(sp)
80001fd8:	00a58533          	add	a0,a1,a0
80001fdc:	00a12623          	sw	a0,12(sp)
80001fe0:	00810513          	addi	a0,sp,8
80001fe4:	02a12423          	sw	a0,40(sp)
80001fe8:	03512623          	sw	s5,44(sp)
80001fec:	03612823          	sw	s6,48(sp)
80001ff0:	03512a23          	sw	s5,52(sp)
80001ff4:	01712823          	sw	s7,16(sp)
80001ff8:	01912a23          	sw	s9,20(sp)
80001ffc:	02012023          	sw	zero,32(sp)
80002000:	01b12c23          	sw	s11,24(sp)
80002004:	01212e23          	sw	s2,28(sp)
80002008:	03b10513          	addi	a0,sp,59
8000200c:	01010613          	addi	a2,sp,16
80002010:	00040593          	mv	a1,s0
80002014:	00006097          	auipc	ra,0x6
80002018:	c04080e7          	jalr	-1020(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
8000201c:	00051663          	bnez	a0,80002028 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x150>
80002020:	00000073          	ecall
80002024:	f29ff06f          	j	80001f4c <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x74>
80002028:	8000b537          	lui	a0,0x8000b
8000202c:	17450513          	addi	a0,a0,372 # 8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>
80002030:	8000b6b7          	lui	a3,0x8000b
80002034:	16468693          	addi	a3,a3,356 # 8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>
80002038:	8000b737          	lui	a4,0x8000b
8000203c:	1b070713          	addi	a4,a4,432 # 8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>
80002040:	02b00593          	li	a1,43
80002044:	03b10613          	addi	a2,sp,59
80002048:	00005097          	auipc	ra,0x5
8000204c:	f40080e7          	jalr	-192(ra) # 80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80002050 <__rust_alloc_error_handler>:
80002050:	fffff317          	auipc	t1,0xfffff
80002054:	94030067          	jr	-1728(t1) # 80000990 <__rg_oom>

80002058 <_ZN5alloc7raw_vec17capacity_overflow17h26ecbcc11cda3850E>:
80002058:	fe010113          	addi	sp,sp,-32
8000205c:	00112e23          	sw	ra,28(sp)
80002060:	00812c23          	sw	s0,24(sp)
80002064:	02010413          	addi	s0,sp,32
80002068:	00050593          	mv	a1,a0
8000206c:	8000b537          	lui	a0,0x8000b
80002070:	6ec50513          	addi	a0,a0,1772 # 8000b6ec <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4>
80002074:	fea42023          	sw	a0,-32(s0)
80002078:	00100513          	li	a0,1
8000207c:	fea42223          	sw	a0,-28(s0)
80002080:	fe042823          	sw	zero,-16(s0)
80002084:	00400513          	li	a0,4
80002088:	fea42423          	sw	a0,-24(s0)
8000208c:	fe042623          	sw	zero,-20(s0)
80002090:	fe040513          	addi	a0,s0,-32
80002094:	00005097          	auipc	ra,0x5
80002098:	c84080e7          	jalr	-892(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

8000209c <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>:
8000209c:	ff010113          	addi	sp,sp,-16
800020a0:	00112623          	sw	ra,12(sp)
800020a4:	00812423          	sw	s0,8(sp)
800020a8:	01010413          	addi	s0,sp,16
800020ac:	00051863          	bnez	a0,800020bc <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E+0x20>
800020b0:	00060513          	mv	a0,a2
800020b4:	00000097          	auipc	ra,0x0
800020b8:	fa4080e7          	jalr	-92(ra) # 80002058 <_ZN5alloc7raw_vec17capacity_overflow17h26ecbcc11cda3850E>
800020bc:	00000097          	auipc	ra,0x0
800020c0:	008080e7          	jalr	8(ra) # 800020c4 <_ZN5alloc5alloc18handle_alloc_error17ha730bc427c9442a1E>

800020c4 <_ZN5alloc5alloc18handle_alloc_error17ha730bc427c9442a1E>:
800020c4:	ff010113          	addi	sp,sp,-16
800020c8:	00112623          	sw	ra,12(sp)
800020cc:	00812423          	sw	s0,8(sp)
800020d0:	01010413          	addi	s0,sp,16
800020d4:	00050613          	mv	a2,a0
800020d8:	00058513          	mv	a0,a1
800020dc:	00060593          	mv	a1,a2
800020e0:	00000097          	auipc	ra,0x0
800020e4:	f70080e7          	jalr	-144(ra) # 80002050 <__rust_alloc_error_handler>

800020e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>:
800020e8:	f0010113          	addi	sp,sp,-256
800020ec:	0e112e23          	sw	ra,252(sp)
800020f0:	0e812c23          	sw	s0,248(sp)
800020f4:	0e912a23          	sw	s1,244(sp)
800020f8:	0f212823          	sw	s2,240(sp)
800020fc:	0f312623          	sw	s3,236(sp)
80002100:	0f412423          	sw	s4,232(sp)
80002104:	0f512223          	sw	s5,228(sp)
80002108:	0f612023          	sw	s6,224(sp)
8000210c:	0d712e23          	sw	s7,220(sp)
80002110:	0d812c23          	sw	s8,216(sp)
80002114:	0d912a23          	sw	s9,212(sp)
80002118:	0da12823          	sw	s10,208(sp)
8000211c:	0db12623          	sw	s11,204(sp)
80002120:	10010413          	addi	s0,sp,256
80002124:	00800613          	li	a2,8
80002128:	00058d13          	mv	s10,a1
8000212c:	00050c93          	mv	s9,a0
80002130:	08c5f663          	bgeu	a1,a2,800021bc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd4>
80002134:	0a0ca983          	lw	s3,160(s9)
80002138:	02900513          	li	a0,41
8000213c:	52a9f2e3          	bgeu	s3,a0,80002e60 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
80002140:	06098a63          	beqz	s3,800021b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcc>
80002144:	002d1513          	slli	a0,s10,0x2
80002148:	8000c5b7          	lui	a1,0x8000c
8000214c:	10858593          	addi	a1,a1,264 # 8000c108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
80002150:	00a58533          	add	a0,a1,a0
80002154:	00052903          	lw	s2,0(a0)
80002158:	00000a13          	li	s4,0
8000215c:	00299a93          	slli	s5,s3,0x2
80002160:	015c84b3          	add	s1,s9,s5
80002164:	000c8b13          	mv	s6,s9
80002168:	000b2503          	lw	a0,0(s6)
8000216c:	004b0b93          	addi	s7,s6,4
80002170:	00000593          	li	a1,0
80002174:	00090613          	mv	a2,s2
80002178:	00000693          	li	a3,0
8000217c:	00008097          	auipc	ra,0x8
80002180:	bb4080e7          	jalr	-1100(ra) # 80009d30 <__muldi3>
80002184:	01450633          	add	a2,a0,s4
80002188:	00a63a33          	sltu	s4,a2,a0
8000218c:	01458a33          	add	s4,a1,s4
80002190:	ffca8a93          	addi	s5,s5,-4
80002194:	00cb2023          	sw	a2,0(s6)
80002198:	000b8b13          	mv	s6,s7
8000219c:	fc0a96e3          	bnez	s5,80002168 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x80>
800021a0:	000a0a63          	beqz	s4,800021b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcc>
800021a4:	02800513          	li	a0,40
800021a8:	4ea984e3          	beq	s3,a0,80002e90 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
800021ac:	0144a023          	sw	s4,0(s1)
800021b0:	00198993          	addi	s3,s3,1
800021b4:	0b3ca023          	sw	s3,160(s9)
800021b8:	4690006f          	j	80002e20 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd38>
800021bc:	007d7513          	andi	a0,s10,7
800021c0:	08050663          	beqz	a0,8000224c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x164>
800021c4:	0a0ca983          	lw	s3,160(s9)
800021c8:	02900593          	li	a1,41
800021cc:	48b9fae3          	bgeu	s3,a1,80002e60 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
800021d0:	06098c63          	beqz	s3,80002248 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x160>
800021d4:	00251593          	slli	a1,a0,0x2
800021d8:	8000c637          	lui	a2,0x8000c
800021dc:	10860613          	addi	a2,a2,264 # 8000c108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
800021e0:	00b605b3          	add	a1,a2,a1
800021e4:	0005a583          	lw	a1,0(a1)
800021e8:	00000493          	li	s1,0
800021ec:	00a5da33          	srl	s4,a1,a0
800021f0:	00299a93          	slli	s5,s3,0x2
800021f4:	015c8933          	add	s2,s9,s5
800021f8:	000c8b13          	mv	s6,s9
800021fc:	000b2503          	lw	a0,0(s6)
80002200:	004b0b93          	addi	s7,s6,4
80002204:	00000593          	li	a1,0
80002208:	000a0613          	mv	a2,s4
8000220c:	00000693          	li	a3,0
80002210:	00008097          	auipc	ra,0x8
80002214:	b20080e7          	jalr	-1248(ra) # 80009d30 <__muldi3>
80002218:	00950633          	add	a2,a0,s1
8000221c:	00a634b3          	sltu	s1,a2,a0
80002220:	009584b3          	add	s1,a1,s1
80002224:	ffca8a93          	addi	s5,s5,-4
80002228:	00cb2023          	sw	a2,0(s6)
8000222c:	000b8b13          	mv	s6,s7
80002230:	fc0a96e3          	bnez	s5,800021fc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x114>
80002234:	00048a63          	beqz	s1,80002248 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x160>
80002238:	02800513          	li	a0,40
8000223c:	44a98ae3          	beq	s3,a0,80002e90 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
80002240:	00992023          	sw	s1,0(s2)
80002244:	00198993          	addi	s3,s3,1
80002248:	0b3ca023          	sw	s3,160(s9)
8000224c:	008d7513          	andi	a0,s10,8
80002250:	06050e63          	beqz	a0,800022cc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e4>
80002254:	0a0ca983          	lw	s3,160(s9)
80002258:	02900513          	li	a0,41
8000225c:	40a9f2e3          	bgeu	s3,a0,80002e60 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
80002260:	06098463          	beqz	s3,800022c8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e0>
80002264:	00000913          	li	s2,0
80002268:	00299a93          	slli	s5,s3,0x2
8000226c:	015c84b3          	add	s1,s9,s5
80002270:	0005f537          	lui	a0,0x5f
80002274:	5e150a13          	addi	s4,a0,1505 # 5f5e1 <.Lline_table_start2+0x5e233>
80002278:	000c8b13          	mv	s6,s9
8000227c:	000b2503          	lw	a0,0(s6)
80002280:	004b0b93          	addi	s7,s6,4
80002284:	00000593          	li	a1,0
80002288:	000a0613          	mv	a2,s4
8000228c:	00000693          	li	a3,0
80002290:	00008097          	auipc	ra,0x8
80002294:	aa0080e7          	jalr	-1376(ra) # 80009d30 <__muldi3>
80002298:	01250633          	add	a2,a0,s2
8000229c:	00a63933          	sltu	s2,a2,a0
800022a0:	01258933          	add	s2,a1,s2
800022a4:	ffca8a93          	addi	s5,s5,-4
800022a8:	00cb2023          	sw	a2,0(s6)
800022ac:	000b8b13          	mv	s6,s7
800022b0:	fc0a96e3          	bnez	s5,8000227c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x194>
800022b4:	00090a63          	beqz	s2,800022c8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e0>
800022b8:	02800513          	li	a0,40
800022bc:	3ca98ae3          	beq	s3,a0,80002e90 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
800022c0:	0124a023          	sw	s2,0(s1)
800022c4:	00198993          	addi	s3,s3,1
800022c8:	0b3ca023          	sw	s3,160(s9)
800022cc:	010d7513          	andi	a0,s10,16
800022d0:	f3942223          	sw	s9,-220(s0)
800022d4:	f3a42423          	sw	s10,-216(s0)
800022d8:	16050863          	beqz	a0,80002448 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x360>
800022dc:	f2c40513          	addi	a0,s0,-212
800022e0:	0a000613          	li	a2,160
800022e4:	f2c40c13          	addi	s8,s0,-212
800022e8:	00000593          	li	a1,0
800022ec:	00009097          	auipc	ra,0x9
800022f0:	958080e7          	jalr	-1704(ra) # 8000ac44 <memset>
800022f4:	0a0ca703          	lw	a4,160(s9)
800022f8:	00200513          	li	a0,2
800022fc:	10a77663          	bgeu	a4,a0,80002408 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x320>
80002300:	00000d13          	li	s10,0
80002304:	00000993          	li	s3,0
80002308:	00271713          	slli	a4,a4,0x2
8000230c:	00ec8bb3          	add	s7,s9,a4
80002310:	02800593          	li	a1,40
80002314:	86f27537          	lui	a0,0x86f27
80002318:	fc150a13          	addi	s4,a0,-63 # 86f26fc1 <KALLOC_BUFFER+0x6f18fc1>
8000231c:	000c8d93          	mv	s11,s9
80002320:	fffd0a93          	addi	s5,s10,-1
80002324:	002d1493          	slli	s1,s10,0x2
80002328:	009c04b3          	add	s1,s8,s1
8000232c:	000d8513          	mv	a0,s11
80002330:	f2842d03          	lw	s10,-216(s0)
80002334:	0f750e63          	beq	a0,s7,80002430 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x348>
80002338:	00052b03          	lw	s6,0(a0)
8000233c:	00450d93          	addi	s11,a0,4
80002340:	001a8a93          	addi	s5,s5,1
80002344:	00448493          	addi	s1,s1,4
80002348:	000d8513          	mv	a0,s11
8000234c:	fe0b04e3          	beqz	s6,80002334 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x24c>
80002350:	34bafee3          	bgeu	s5,a1,80002eac <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdc4>
80002354:	ffc4a903          	lw	s2,-4(s1)
80002358:	001a8d13          	addi	s10,s5,1
8000235c:	000b0513          	mv	a0,s6
80002360:	00000593          	li	a1,0
80002364:	000a0613          	mv	a2,s4
80002368:	00000693          	li	a3,0
8000236c:	00008097          	auipc	ra,0x8
80002370:	9c4080e7          	jalr	-1596(ra) # 80009d30 <__muldi3>
80002374:	01250633          	add	a2,a0,s2
80002378:	fec4ae23          	sw	a2,-4(s1)
8000237c:	02700693          	li	a3,39
80002380:	33a6e4e3          	bltu	a3,s10,80002ea8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdc0>
80002384:	0004a903          	lw	s2,0(s1)
80002388:	00a63533          	sltu	a0,a2,a0
8000238c:	00a58cb3          	add	s9,a1,a0
80002390:	02300613          	li	a2,35
80002394:	000b0513          	mv	a0,s6
80002398:	00000593          	li	a1,0
8000239c:	00000693          	li	a3,0
800023a0:	00008097          	auipc	ra,0x8
800023a4:	990080e7          	jalr	-1648(ra) # 80009d30 <__muldi3>
800023a8:	012c8933          	add	s2,s9,s2
800023ac:	01993633          	sltu	a2,s2,s9
800023b0:	00a906b3          	add	a3,s2,a0
800023b4:	0126b533          	sltu	a0,a3,s2
800023b8:	00b605b3          	add	a1,a2,a1
800023bc:	00a58533          	add	a0,a1,a0
800023c0:	00d4a023          	sw	a3,0(s1)
800023c4:	02050463          	beqz	a0,800023ec <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x304>
800023c8:	f2442c83          	lw	s9,-220(s0)
800023cc:	02800593          	li	a1,40
800023d0:	02600613          	li	a2,38
800023d4:	34caf2e3          	bgeu	s5,a2,80002f18 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe30>
800023d8:	00a4a223          	sw	a0,4(s1)
800023dc:	00300513          	li	a0,3
800023e0:	01550533          	add	a0,a0,s5
800023e4:	f3356ee3          	bltu	a0,s3,80002320 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
800023e8:	0180006f          	j	80002400 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x318>
800023ec:	00200513          	li	a0,2
800023f0:	f2442c83          	lw	s9,-220(s0)
800023f4:	02800593          	li	a1,40
800023f8:	01550533          	add	a0,a0,s5
800023fc:	f33562e3          	bltu	a0,s3,80002320 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
80002400:	00050993          	mv	s3,a0
80002404:	f1dff06f          	j	80002320 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
80002408:	02900513          	li	a0,41
8000240c:	26a776e3          	bgeu	a4,a0,80002e78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002410:	8000b5b7          	lui	a1,0x8000b
80002414:	78c58593          	addi	a1,a1,1932 # 8000b78c <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h99816a37407431b1E>
80002418:	f2c40513          	addi	a0,s0,-212
8000241c:	00200613          	li	a2,2
80002420:	000c8693          	mv	a3,s9
80002424:	00007097          	auipc	ra,0x7
80002428:	c98080e7          	jalr	-872(ra) # 800090bc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
8000242c:	00050993          	mv	s3,a0
80002430:	f2c40593          	addi	a1,s0,-212
80002434:	0a000613          	li	a2,160
80002438:	000c8513          	mv	a0,s9
8000243c:	00008097          	auipc	ra,0x8
80002440:	97c080e7          	jalr	-1668(ra) # 80009db8 <memcpy>
80002444:	0b3ca023          	sw	s3,160(s9)
80002448:	020d7513          	andi	a0,s10,32
8000244c:	1c050a63          	beqz	a0,80002620 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x538>
80002450:	f2c40513          	addi	a0,s0,-212
80002454:	0a000613          	li	a2,160
80002458:	00000593          	li	a1,0
8000245c:	00008097          	auipc	ra,0x8
80002460:	7e8080e7          	jalr	2024(ra) # 8000ac44 <memset>
80002464:	0a0ca703          	lw	a4,160(s9)
80002468:	00300513          	li	a0,3
8000246c:	16a77663          	bgeu	a4,a0,800025d8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4f0>
80002470:	00000d93          	li	s11,0
80002474:	00000913          	li	s2,0
80002478:	00271713          	slli	a4,a4,0x2
8000247c:	00ec84b3          	add	s1,s9,a4
80002480:	f3040a93          	addi	s5,s0,-208
80002484:	02800593          	li	a1,40
80002488:	85acf537          	lui	a0,0x85acf
8000248c:	f8150613          	addi	a2,a0,-127 # 85acef81 <KALLOC_BUFFER+0x5ac0f81>
80002490:	2d6d4537          	lui	a0,0x2d6d4
80002494:	15b50513          	addi	a0,a0,347 # 2d6d415b <.Lline_table_start2+0x2d6d2dad>
80002498:	f2a42023          	sw	a0,-224(s0)
8000249c:	000c8d13          	mv	s10,s9
800024a0:	fffd8b93          	addi	s7,s11,-1
800024a4:	002d9c13          	slli	s8,s11,0x2
800024a8:	018a8c33          	add	s8,s5,s8
800024ac:	000d0513          	mv	a0,s10
800024b0:	14950a63          	beq	a0,s1,80002604 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x51c>
800024b4:	00052b03          	lw	s6,0(a0)
800024b8:	00450d13          	addi	s10,a0,4
800024bc:	001b8b93          	addi	s7,s7,1
800024c0:	004c0c13          	addi	s8,s8,4
800024c4:	000d0513          	mv	a0,s10
800024c8:	fe0b04e3          	beqz	s6,800024b0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3c8>
800024cc:	1ebbfce3          	bgeu	s7,a1,80002ec4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xddc>
800024d0:	f1242e23          	sw	s2,-228(s0)
800024d4:	ff8c2903          	lw	s2,-8(s8)
800024d8:	001b8d93          	addi	s11,s7,1
800024dc:	000b0513          	mv	a0,s6
800024e0:	00000593          	li	a1,0
800024e4:	00060993          	mv	s3,a2
800024e8:	00000693          	li	a3,0
800024ec:	00008097          	auipc	ra,0x8
800024f0:	844080e7          	jalr	-1980(ra) # 80009d30 <__muldi3>
800024f4:	01250633          	add	a2,a0,s2
800024f8:	02800c93          	li	s9,40
800024fc:	fecc2c23          	sw	a2,-8(s8)
80002500:	1d9df4e3          	bgeu	s11,s9,80002ec8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xde0>
80002504:	ffcc2a03          	lw	s4,-4(s8)
80002508:	00a63933          	sltu	s2,a2,a0
8000250c:	01258933          	add	s2,a1,s2
80002510:	000b0513          	mv	a0,s6
80002514:	00000593          	li	a1,0
80002518:	f2042603          	lw	a2,-224(s0)
8000251c:	00000693          	li	a3,0
80002520:	00008097          	auipc	ra,0x8
80002524:	810080e7          	jalr	-2032(ra) # 80009d30 <__muldi3>
80002528:	01490633          	add	a2,s2,s4
8000252c:	00a60533          	add	a0,a2,a0
80002530:	feac2e23          	sw	a0,-4(s8)
80002534:	02500693          	li	a3,37
80002538:	1976e8e3          	bltu	a3,s7,80002ec8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xde0>
8000253c:	012636b3          	sltu	a3,a2,s2
80002540:	000c2903          	lw	s2,0(s8)
80002544:	00c53533          	sltu	a0,a0,a2
80002548:	00b685b3          	add	a1,a3,a1
8000254c:	00a58a33          	add	s4,a1,a0
80002550:	4ee00613          	li	a2,1262
80002554:	000b0513          	mv	a0,s6
80002558:	00000593          	li	a1,0
8000255c:	00000693          	li	a3,0
80002560:	00007097          	auipc	ra,0x7
80002564:	7d0080e7          	jalr	2000(ra) # 80009d30 <__muldi3>
80002568:	012a0933          	add	s2,s4,s2
8000256c:	01493633          	sltu	a2,s2,s4
80002570:	00a906b3          	add	a3,s2,a0
80002574:	0126b533          	sltu	a0,a3,s2
80002578:	00b605b3          	add	a1,a2,a1
8000257c:	00a58533          	add	a0,a1,a0
80002580:	00dc2023          	sw	a3,0(s8)
80002584:	02050863          	beqz	a0,800025b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4cc>
80002588:	f2442c83          	lw	s9,-220(s0)
8000258c:	02800593          	li	a1,40
80002590:	f1c42903          	lw	s2,-228(s0)
80002594:	02500693          	li	a3,37
80002598:	18db8ce3          	beq	s7,a3,80002f30 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe48>
8000259c:	00098613          	mv	a2,s3
800025a0:	00ac2223          	sw	a0,4(s8)
800025a4:	00400513          	li	a0,4
800025a8:	01750533          	add	a0,a0,s7
800025ac:	ef256ae3          	bltu	a0,s2,800024a0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
800025b0:	0200006f          	j	800025d0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4e8>
800025b4:	00300513          	li	a0,3
800025b8:	f2442c83          	lw	s9,-220(s0)
800025bc:	02800593          	li	a1,40
800025c0:	00098613          	mv	a2,s3
800025c4:	f1c42903          	lw	s2,-228(s0)
800025c8:	01750533          	add	a0,a0,s7
800025cc:	ed256ae3          	bltu	a0,s2,800024a0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
800025d0:	00050913          	mv	s2,a0
800025d4:	ecdff06f          	j	800024a0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
800025d8:	02900513          	li	a0,41
800025dc:	08a77ee3          	bgeu	a4,a0,80002e78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
800025e0:	8000b5b7          	lui	a1,0x8000b
800025e4:	79458593          	addi	a1,a1,1940 # 8000b794 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217he851a7b51f37758fE>
800025e8:	f2c40513          	addi	a0,s0,-212
800025ec:	00300613          	li	a2,3
800025f0:	000c8693          	mv	a3,s9
800025f4:	00007097          	auipc	ra,0x7
800025f8:	ac8080e7          	jalr	-1336(ra) # 800090bc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
800025fc:	00050913          	mv	s2,a0
80002600:	0080006f          	j	80002608 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x520>
80002604:	f2842d03          	lw	s10,-216(s0)
80002608:	f2c40593          	addi	a1,s0,-212
8000260c:	0a000613          	li	a2,160
80002610:	000c8513          	mv	a0,s9
80002614:	00007097          	auipc	ra,0x7
80002618:	7a4080e7          	jalr	1956(ra) # 80009db8 <memcpy>
8000261c:	0b2ca023          	sw	s2,160(s9)
80002620:	040d7513          	andi	a0,s10,64
80002624:	28050063          	beqz	a0,800028a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7bc>
80002628:	f2c40513          	addi	a0,s0,-212
8000262c:	0a000613          	li	a2,160
80002630:	00000593          	li	a1,0
80002634:	00008097          	auipc	ra,0x8
80002638:	610080e7          	jalr	1552(ra) # 8000ac44 <memset>
8000263c:	0a0ca703          	lw	a4,160(s9)
80002640:	00500513          	li	a0,5
80002644:	20a77c63          	bgeu	a4,a0,8000285c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x774>
80002648:	00000a13          	li	s4,0
8000264c:	00000913          	li	s2,0
80002650:	00271713          	slli	a4,a4,0x2
80002654:	00ec8db3          	add	s11,s9,a4
80002658:	f3440693          	addi	a3,s0,-204
8000265c:	02800593          	li	a1,40
80002660:	bf6a2537          	lui	a0,0xbf6a2
80002664:	f0150613          	addi	a2,a0,-255 # bf6a1f01 <KALLOC_BUFFER+0x3f693f01>
80002668:	6e38f537          	lui	a0,0x6e38f
8000266c:	d6450513          	addi	a0,a0,-668 # 6e38ed64 <.Lline_table_start2+0x6e38d9b6>
80002670:	f2a42023          	sw	a0,-224(s0)
80002674:	daa79537          	lui	a0,0xdaa79
80002678:	7ed50513          	addi	a0,a0,2029 # daa797ed <KALLOC_BUFFER+0x5aa6b7ed>
8000267c:	f0a42e23          	sw	a0,-228(s0)
80002680:	e9400537          	lui	a0,0xe9400
80002684:	9f450993          	addi	s3,a0,-1548 # e93ff9f4 <KALLOC_BUFFER+0x693f19f4>
80002688:	00185537          	lui	a0,0x185
8000268c:	f0350493          	addi	s1,a0,-253 # 184f03 <.Lline_table_start2+0x183b55>
80002690:	000c8c13          	mv	s8,s9
80002694:	fffa0a93          	addi	s5,s4,-1
80002698:	002a1a13          	slli	s4,s4,0x2
8000269c:	01468bb3          	add	s7,a3,s4
800026a0:	000c0513          	mv	a0,s8
800026a4:	1fb50263          	beq	a0,s11,80002888 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7a0>
800026a8:	00052c83          	lw	s9,0(a0)
800026ac:	00450c13          	addi	s8,a0,4
800026b0:	001a8a93          	addi	s5,s5,1
800026b4:	004b8b93          	addi	s7,s7,4
800026b8:	000c0513          	mv	a0,s8
800026bc:	fe0c84e3          	beqz	s9,800026a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5bc>
800026c0:	f0942c23          	sw	s1,-232(s0)
800026c4:	f1242a23          	sw	s2,-236(s0)
800026c8:	00bafce3          	bgeu	s5,a1,80002ee0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdf8>
800026cc:	00098b13          	mv	s6,s3
800026d0:	ff4ba903          	lw	s2,-12(s7)
800026d4:	001a8a13          	addi	s4,s5,1
800026d8:	000c8513          	mv	a0,s9
800026dc:	00000593          	li	a1,0
800026e0:	f0c42823          	sw	a2,-240(s0)
800026e4:	00000693          	li	a3,0
800026e8:	00007097          	auipc	ra,0x7
800026ec:	648080e7          	jalr	1608(ra) # 80009d30 <__muldi3>
800026f0:	01250633          	add	a2,a0,s2
800026f4:	02800493          	li	s1,40
800026f8:	fecbaa23          	sw	a2,-12(s7)
800026fc:	7e9a7463          	bgeu	s4,s1,80002ee4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002700:	ff8bad03          	lw	s10,-8(s7)
80002704:	00a63933          	sltu	s2,a2,a0
80002708:	01258933          	add	s2,a1,s2
8000270c:	000c8513          	mv	a0,s9
80002710:	00000593          	li	a1,0
80002714:	f2042603          	lw	a2,-224(s0)
80002718:	00000693          	li	a3,0
8000271c:	00007097          	auipc	ra,0x7
80002720:	614080e7          	jalr	1556(ra) # 80009d30 <__muldi3>
80002724:	01a90633          	add	a2,s2,s10
80002728:	00a60533          	add	a0,a2,a0
8000272c:	feabac23          	sw	a0,-8(s7)
80002730:	02500993          	li	s3,37
80002734:	7b59e863          	bltu	s3,s5,80002ee4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002738:	012636b3          	sltu	a3,a2,s2
8000273c:	ffcbad03          	lw	s10,-4(s7)
80002740:	00c53933          	sltu	s2,a0,a2
80002744:	00b685b3          	add	a1,a3,a1
80002748:	01258933          	add	s2,a1,s2
8000274c:	000c8513          	mv	a0,s9
80002750:	00000593          	li	a1,0
80002754:	f1c42603          	lw	a2,-228(s0)
80002758:	00000693          	li	a3,0
8000275c:	00007097          	auipc	ra,0x7
80002760:	5d4080e7          	jalr	1492(ra) # 80009d30 <__muldi3>
80002764:	01a90633          	add	a2,s2,s10
80002768:	00a60533          	add	a0,a2,a0
8000276c:	feabae23          	sw	a0,-4(s7)
80002770:	773a8a63          	beq	s5,s3,80002ee4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002774:	012636b3          	sltu	a3,a2,s2
80002778:	000bad03          	lw	s10,0(s7)
8000277c:	00c53933          	sltu	s2,a0,a2
80002780:	00b685b3          	add	a1,a3,a1
80002784:	01258933          	add	s2,a1,s2
80002788:	000c8513          	mv	a0,s9
8000278c:	00000593          	li	a1,0
80002790:	000b0993          	mv	s3,s6
80002794:	000b0613          	mv	a2,s6
80002798:	00000693          	li	a3,0
8000279c:	00007097          	auipc	ra,0x7
800027a0:	594080e7          	jalr	1428(ra) # 80009d30 <__muldi3>
800027a4:	01a90633          	add	a2,s2,s10
800027a8:	00a60533          	add	a0,a2,a0
800027ac:	00aba023          	sw	a0,0(s7)
800027b0:	02300693          	li	a3,35
800027b4:	7356e863          	bltu	a3,s5,80002ee4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
800027b8:	012636b3          	sltu	a3,a2,s2
800027bc:	004ba903          	lw	s2,4(s7)
800027c0:	00c53533          	sltu	a0,a0,a2
800027c4:	00b685b3          	add	a1,a3,a1
800027c8:	00a58b33          	add	s6,a1,a0
800027cc:	000c8513          	mv	a0,s9
800027d0:	00000593          	li	a1,0
800027d4:	f1842483          	lw	s1,-232(s0)
800027d8:	00048613          	mv	a2,s1
800027dc:	00000693          	li	a3,0
800027e0:	00007097          	auipc	ra,0x7
800027e4:	550080e7          	jalr	1360(ra) # 80009d30 <__muldi3>
800027e8:	012b0933          	add	s2,s6,s2
800027ec:	01693633          	sltu	a2,s2,s6
800027f0:	00a906b3          	add	a3,s2,a0
800027f4:	0126b533          	sltu	a0,a3,s2
800027f8:	00b605b3          	add	a1,a2,a1
800027fc:	00a58533          	add	a0,a1,a0
80002800:	00dba223          	sw	a3,4(s7)
80002804:	f2842d03          	lw	s10,-216(s0)
80002808:	02050863          	beqz	a0,80002838 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x750>
8000280c:	f3440693          	addi	a3,s0,-204
80002810:	02800593          	li	a1,40
80002814:	f1042603          	lw	a2,-240(s0)
80002818:	02300713          	li	a4,35
8000281c:	72ea8663          	beq	s5,a4,80002f48 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe60>
80002820:	00aba423          	sw	a0,8(s7)
80002824:	00600513          	li	a0,6
80002828:	f1442903          	lw	s2,-236(s0)
8000282c:	01550533          	add	a0,a0,s5
80002830:	e72562e3          	bltu	a0,s2,80002694 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002834:	0200006f          	j	80002854 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x76c>
80002838:	00500513          	li	a0,5
8000283c:	f3440693          	addi	a3,s0,-204
80002840:	02800593          	li	a1,40
80002844:	f1042603          	lw	a2,-240(s0)
80002848:	f1442903          	lw	s2,-236(s0)
8000284c:	01550533          	add	a0,a0,s5
80002850:	e52562e3          	bltu	a0,s2,80002694 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002854:	00050913          	mv	s2,a0
80002858:	e3dff06f          	j	80002694 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
8000285c:	02900513          	li	a0,41
80002860:	60a77c63          	bgeu	a4,a0,80002e78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002864:	8000b5b7          	lui	a1,0x8000b
80002868:	7a058593          	addi	a1,a1,1952 # 8000b7a0 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417h3fd4a7811adefa4aE>
8000286c:	f2c40513          	addi	a0,s0,-212
80002870:	00500613          	li	a2,5
80002874:	000c8693          	mv	a3,s9
80002878:	00007097          	auipc	ra,0x7
8000287c:	844080e7          	jalr	-1980(ra) # 800090bc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002880:	00050913          	mv	s2,a0
80002884:	0080006f          	j	8000288c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7a4>
80002888:	f2442c83          	lw	s9,-220(s0)
8000288c:	f2c40593          	addi	a1,s0,-212
80002890:	0a000613          	li	a2,160
80002894:	000c8513          	mv	a0,s9
80002898:	00007097          	auipc	ra,0x7
8000289c:	520080e7          	jalr	1312(ra) # 80009db8 <memcpy>
800028a0:	0b2ca023          	sw	s2,160(s9)
800028a4:	080d7513          	andi	a0,s10,128
800028a8:	3c050e63          	beqz	a0,80002c84 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb9c>
800028ac:	f2c40513          	addi	a0,s0,-212
800028b0:	0a000613          	li	a2,160
800028b4:	00000593          	li	a1,0
800028b8:	00008097          	auipc	ra,0x8
800028bc:	38c080e7          	jalr	908(ra) # 8000ac44 <memset>
800028c0:	0a0ca703          	lw	a4,160(s9)
800028c4:	00a00513          	li	a0,10
800028c8:	36a77e63          	bgeu	a4,a0,80002c44 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb5c>
800028cc:	000c8d93          	mv	s11,s9
800028d0:	00000c93          	li	s9,0
800028d4:	00000913          	li	s2,0
800028d8:	00271713          	slli	a4,a4,0x2
800028dc:	00ed84b3          	add	s1,s11,a4
800028e0:	f3c40693          	addi	a3,s0,-196
800028e4:	02800593          	li	a1,40
800028e8:	2e954537          	lui	a0,0x2e954
800028ec:	e0150613          	addi	a2,a0,-511 # 2e953e01 <.Lline_table_start2+0x2e952a53>
800028f0:	03dfa537          	lui	a0,0x3dfa
800028f4:	90950513          	addi	a0,a0,-1783 # 3df9909 <.Lline_table_start2+0x3df855b>
800028f8:	f2a42023          	sw	a0,-224(s0)
800028fc:	0f154537          	lui	a0,0xf154
80002900:	8fd50513          	addi	a0,a0,-1795 # f1538fd <.Lline_table_start2+0xf15254f>
80002904:	f0a42e23          	sw	a0,-228(s0)
80002908:	2374e537          	lui	a0,0x2374e
8000290c:	42f50993          	addi	s3,a0,1071 # 2374e42f <.Lline_table_start2+0x2374d081>
80002910:	d3cff537          	lui	a0,0xd3cff
80002914:	5ec50513          	addi	a0,a0,1516 # d3cff5ec <KALLOC_BUFFER+0x53cf15ec>
80002918:	f0a42c23          	sw	a0,-232(s0)
8000291c:	c404e537          	lui	a0,0xc404e
80002920:	c0850513          	addi	a0,a0,-1016 # c404dc08 <KALLOC_BUFFER+0x4403fc08>
80002924:	f0a42a23          	sw	a0,-236(s0)
80002928:	bccdb537          	lui	a0,0xbccdb
8000292c:	0da50513          	addi	a0,a0,218 # bccdb0da <KALLOC_BUFFER+0x3cccd0da>
80002930:	f0a42823          	sw	a0,-240(s0)
80002934:	a6338537          	lui	a0,0xa6338
80002938:	f1950513          	addi	a0,a0,-231 # a6337f19 <KALLOC_BUFFER+0x26329f19>
8000293c:	f0a42623          	sw	a0,-244(s0)
80002940:	e91f2537          	lui	a0,0xe91f2
80002944:	60350513          	addi	a0,a0,1539 # e91f2603 <KALLOC_BUFFER+0x691e4603>
80002948:	f0a42423          	sw	a0,-248(s0)
8000294c:	fffc8b13          	addi	s6,s9,-1
80002950:	002c9b93          	slli	s7,s9,0x2
80002954:	01768bb3          	add	s7,a3,s7
80002958:	000d8513          	mv	a0,s11
8000295c:	f2442c83          	lw	s9,-220(s0)
80002960:	30950663          	beq	a0,s1,80002c6c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb84>
80002964:	00052a83          	lw	s5,0(a0)
80002968:	00450d93          	addi	s11,a0,4
8000296c:	001b0b13          	addi	s6,s6,1
80002970:	004b8b93          	addi	s7,s7,4
80002974:	000d8513          	mv	a0,s11
80002978:	fe0a84e3          	beqz	s5,80002960 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x878>
8000297c:	f1242223          	sw	s2,-252(s0)
80002980:	56bb7e63          	bgeu	s6,a1,80002efc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe14>
80002984:	00098c13          	mv	s8,s3
80002988:	fecba903          	lw	s2,-20(s7)
8000298c:	001b0c93          	addi	s9,s6,1
80002990:	000a8513          	mv	a0,s5
80002994:	00000593          	li	a1,0
80002998:	f0c42023          	sw	a2,-256(s0)
8000299c:	00000693          	li	a3,0
800029a0:	00007097          	auipc	ra,0x7
800029a4:	390080e7          	jalr	912(ra) # 80009d30 <__muldi3>
800029a8:	01250633          	add	a2,a0,s2
800029ac:	02800a13          	li	s4,40
800029b0:	fecba623          	sw	a2,-20(s7)
800029b4:	554cf663          	bgeu	s9,s4,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
800029b8:	ff0bad03          	lw	s10,-16(s7)
800029bc:	00a63933          	sltu	s2,a2,a0
800029c0:	01258933          	add	s2,a1,s2
800029c4:	000a8513          	mv	a0,s5
800029c8:	00000593          	li	a1,0
800029cc:	f2042603          	lw	a2,-224(s0)
800029d0:	00000693          	li	a3,0
800029d4:	00007097          	auipc	ra,0x7
800029d8:	35c080e7          	jalr	860(ra) # 80009d30 <__muldi3>
800029dc:	01a90633          	add	a2,s2,s10
800029e0:	00a60533          	add	a0,a2,a0
800029e4:	feaba823          	sw	a0,-16(s7)
800029e8:	02500993          	li	s3,37
800029ec:	5169ea63          	bltu	s3,s6,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
800029f0:	012636b3          	sltu	a3,a2,s2
800029f4:	ff4bad03          	lw	s10,-12(s7)
800029f8:	00c53933          	sltu	s2,a0,a2
800029fc:	00b685b3          	add	a1,a3,a1
80002a00:	01258933          	add	s2,a1,s2
80002a04:	000a8513          	mv	a0,s5
80002a08:	00000593          	li	a1,0
80002a0c:	f1c42603          	lw	a2,-228(s0)
80002a10:	00000693          	li	a3,0
80002a14:	00007097          	auipc	ra,0x7
80002a18:	31c080e7          	jalr	796(ra) # 80009d30 <__muldi3>
80002a1c:	01a90633          	add	a2,s2,s10
80002a20:	00a60533          	add	a0,a2,a0
80002a24:	feabaa23          	sw	a0,-12(s7)
80002a28:	4d3b0c63          	beq	s6,s3,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002a2c:	012636b3          	sltu	a3,a2,s2
80002a30:	ff8bad03          	lw	s10,-8(s7)
80002a34:	00c53933          	sltu	s2,a0,a2
80002a38:	00b685b3          	add	a1,a3,a1
80002a3c:	01258933          	add	s2,a1,s2
80002a40:	000a8513          	mv	a0,s5
80002a44:	00000593          	li	a1,0
80002a48:	000c0993          	mv	s3,s8
80002a4c:	000c0613          	mv	a2,s8
80002a50:	00000693          	li	a3,0
80002a54:	00007097          	auipc	ra,0x7
80002a58:	2dc080e7          	jalr	732(ra) # 80009d30 <__muldi3>
80002a5c:	01a90633          	add	a2,s2,s10
80002a60:	00a60533          	add	a0,a2,a0
80002a64:	feabac23          	sw	a0,-8(s7)
80002a68:	02300c13          	li	s8,35
80002a6c:	496c6a63          	bltu	s8,s6,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002a70:	012636b3          	sltu	a3,a2,s2
80002a74:	ffcbad03          	lw	s10,-4(s7)
80002a78:	00c53933          	sltu	s2,a0,a2
80002a7c:	00b685b3          	add	a1,a3,a1
80002a80:	01258933          	add	s2,a1,s2
80002a84:	000a8513          	mv	a0,s5
80002a88:	00000593          	li	a1,0
80002a8c:	f1842603          	lw	a2,-232(s0)
80002a90:	00000693          	li	a3,0
80002a94:	00007097          	auipc	ra,0x7
80002a98:	29c080e7          	jalr	668(ra) # 80009d30 <__muldi3>
80002a9c:	01a90633          	add	a2,s2,s10
80002aa0:	00a60533          	add	a0,a2,a0
80002aa4:	feabae23          	sw	a0,-4(s7)
80002aa8:	458b0c63          	beq	s6,s8,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002aac:	012636b3          	sltu	a3,a2,s2
80002ab0:	000bad03          	lw	s10,0(s7)
80002ab4:	00c53933          	sltu	s2,a0,a2
80002ab8:	00b685b3          	add	a1,a3,a1
80002abc:	01258933          	add	s2,a1,s2
80002ac0:	000a8513          	mv	a0,s5
80002ac4:	00000593          	li	a1,0
80002ac8:	f1442603          	lw	a2,-236(s0)
80002acc:	00000693          	li	a3,0
80002ad0:	00007097          	auipc	ra,0x7
80002ad4:	260080e7          	jalr	608(ra) # 80009d30 <__muldi3>
80002ad8:	01a90633          	add	a2,s2,s10
80002adc:	00a60533          	add	a0,a2,a0
80002ae0:	00aba023          	sw	a0,0(s7)
80002ae4:	02100c13          	li	s8,33
80002ae8:	416c6c63          	bltu	s8,s6,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002aec:	012636b3          	sltu	a3,a2,s2
80002af0:	004bad03          	lw	s10,4(s7)
80002af4:	00c53933          	sltu	s2,a0,a2
80002af8:	00b685b3          	add	a1,a3,a1
80002afc:	01258933          	add	s2,a1,s2
80002b00:	000a8513          	mv	a0,s5
80002b04:	00000593          	li	a1,0
80002b08:	f1042603          	lw	a2,-240(s0)
80002b0c:	00000693          	li	a3,0
80002b10:	00007097          	auipc	ra,0x7
80002b14:	220080e7          	jalr	544(ra) # 80009d30 <__muldi3>
80002b18:	01a90633          	add	a2,s2,s10
80002b1c:	00a60533          	add	a0,a2,a0
80002b20:	00aba223          	sw	a0,4(s7)
80002b24:	3d8b0e63          	beq	s6,s8,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002b28:	012636b3          	sltu	a3,a2,s2
80002b2c:	008bad03          	lw	s10,8(s7)
80002b30:	00c53933          	sltu	s2,a0,a2
80002b34:	00b685b3          	add	a1,a3,a1
80002b38:	01258933          	add	s2,a1,s2
80002b3c:	000a8513          	mv	a0,s5
80002b40:	00000593          	li	a1,0
80002b44:	f0c42603          	lw	a2,-244(s0)
80002b48:	00000693          	li	a3,0
80002b4c:	00007097          	auipc	ra,0x7
80002b50:	1e4080e7          	jalr	484(ra) # 80009d30 <__muldi3>
80002b54:	01a90633          	add	a2,s2,s10
80002b58:	00a60533          	add	a0,a2,a0
80002b5c:	00aba423          	sw	a0,8(s7)
80002b60:	01f00c13          	li	s8,31
80002b64:	396c6e63          	bltu	s8,s6,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002b68:	012636b3          	sltu	a3,a2,s2
80002b6c:	00cbad03          	lw	s10,12(s7)
80002b70:	00c53933          	sltu	s2,a0,a2
80002b74:	00b685b3          	add	a1,a3,a1
80002b78:	01258933          	add	s2,a1,s2
80002b7c:	000a8513          	mv	a0,s5
80002b80:	00000593          	li	a1,0
80002b84:	f0842603          	lw	a2,-248(s0)
80002b88:	00000693          	li	a3,0
80002b8c:	00007097          	auipc	ra,0x7
80002b90:	1a4080e7          	jalr	420(ra) # 80009d30 <__muldi3>
80002b94:	01a90633          	add	a2,s2,s10
80002b98:	00a60533          	add	a0,a2,a0
80002b9c:	00aba623          	sw	a0,12(s7)
80002ba0:	378b0063          	beq	s6,s8,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002ba4:	012636b3          	sltu	a3,a2,s2
80002ba8:	010ba903          	lw	s2,16(s7)
80002bac:	00c53533          	sltu	a0,a0,a2
80002bb0:	00b685b3          	add	a1,a3,a1
80002bb4:	00a58c33          	add	s8,a1,a0
80002bb8:	24e00613          	li	a2,590
80002bbc:	000a8513          	mv	a0,s5
80002bc0:	00000593          	li	a1,0
80002bc4:	00000693          	li	a3,0
80002bc8:	00007097          	auipc	ra,0x7
80002bcc:	168080e7          	jalr	360(ra) # 80009d30 <__muldi3>
80002bd0:	012c0933          	add	s2,s8,s2
80002bd4:	01893633          	sltu	a2,s2,s8
80002bd8:	00a906b3          	add	a3,s2,a0
80002bdc:	0126b533          	sltu	a0,a3,s2
80002be0:	00b605b3          	add	a1,a2,a1
80002be4:	00a58533          	add	a0,a1,a0
80002be8:	00dba823          	sw	a3,16(s7)
80002bec:	f2842d03          	lw	s10,-216(s0)
80002bf0:	02050863          	beqz	a0,80002c20 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb38>
80002bf4:	f3c40693          	addi	a3,s0,-196
80002bf8:	02800593          	li	a1,40
80002bfc:	f0042603          	lw	a2,-256(s0)
80002c00:	f0442903          	lw	s2,-252(s0)
80002c04:	01e00713          	li	a4,30
80002c08:	34eb7c63          	bgeu	s6,a4,80002f60 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe78>
80002c0c:	00abaa23          	sw	a0,20(s7)
80002c10:	00b00513          	li	a0,11
80002c14:	01650533          	add	a0,a0,s6
80002c18:	d3256ae3          	bltu	a0,s2,8000294c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002c1c:	0200006f          	j	80002c3c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb54>
80002c20:	00a00513          	li	a0,10
80002c24:	f3c40693          	addi	a3,s0,-196
80002c28:	02800593          	li	a1,40
80002c2c:	f0042603          	lw	a2,-256(s0)
80002c30:	f0442903          	lw	s2,-252(s0)
80002c34:	01650533          	add	a0,a0,s6
80002c38:	d1256ae3          	bltu	a0,s2,8000294c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002c3c:	00050913          	mv	s2,a0
80002c40:	d0dff06f          	j	8000294c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002c44:	02900513          	li	a0,41
80002c48:	22a77863          	bgeu	a4,a0,80002e78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002c4c:	8000b5b7          	lui	a1,0x8000b
80002c50:	7b458593          	addi	a1,a1,1972 # 8000b7b4 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E>
80002c54:	f2c40513          	addi	a0,s0,-212
80002c58:	00a00613          	li	a2,10
80002c5c:	000c8693          	mv	a3,s9
80002c60:	00006097          	auipc	ra,0x6
80002c64:	45c080e7          	jalr	1116(ra) # 800090bc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002c68:	00050913          	mv	s2,a0
80002c6c:	f2c40593          	addi	a1,s0,-212
80002c70:	0a000613          	li	a2,160
80002c74:	000c8513          	mv	a0,s9
80002c78:	00007097          	auipc	ra,0x7
80002c7c:	140080e7          	jalr	320(ra) # 80009db8 <memcpy>
80002c80:	0b2ca023          	sw	s2,160(s9)
80002c84:	100d7513          	andi	a0,s10,256
80002c88:	18050463          	beqz	a0,80002e10 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd28>
80002c8c:	f2c40513          	addi	a0,s0,-212
80002c90:	0a000613          	li	a2,160
80002c94:	f2c40493          	addi	s1,s0,-212
80002c98:	00000593          	li	a1,0
80002c9c:	00008097          	auipc	ra,0x8
80002ca0:	fa8080e7          	jalr	-88(ra) # 8000ac44 <memset>
80002ca4:	0a0ca703          	lw	a4,160(s9)
80002ca8:	01300513          	li	a0,19
80002cac:	10a77e63          	bgeu	a4,a0,80002dc8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xce0>
80002cb0:	00000c13          	li	s8,0
80002cb4:	00000913          	li	s2,0
80002cb8:	00271713          	slli	a4,a4,0x2
80002cbc:	00ec8733          	add	a4,s9,a4
80002cc0:	f2840b93          	addi	s7,s0,-216
80002cc4:	8000b637          	lui	a2,0x8000b
80002cc8:	7dc60613          	addi	a2,a2,2012 # 8000b7dc <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80002ccc:	000c8d13          	mv	s10,s9
80002cd0:	fffc0d93          	addi	s11,s8,-1
80002cd4:	002c1513          	slli	a0,s8,0x2
80002cd8:	00ab8bb3          	add	s7,s7,a0
80002cdc:	00a48533          	add	a0,s1,a0
80002ce0:	000d0593          	mv	a1,s10
80002ce4:	10e58863          	beq	a1,a4,80002df4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd0c>
80002ce8:	000c0a13          	mv	s4,s8
80002cec:	00050493          	mv	s1,a0
80002cf0:	00458d13          	addi	s10,a1,4
80002cf4:	0005aa83          	lw	s5,0(a1)
80002cf8:	001d8d93          	addi	s11,s11,1
80002cfc:	004b8b93          	addi	s7,s7,4
80002d00:	001c0c13          	addi	s8,s8,1
80002d04:	00450513          	addi	a0,a0,4
80002d08:	000d0593          	mv	a1,s10
80002d0c:	fc0a8ce3          	beqz	s5,80002ce4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbfc>
80002d10:	f0e42e23          	sw	a4,-228(s0)
80002d14:	f3242023          	sw	s2,-224(s0)
80002d18:	00000993          	li	s3,0
80002d1c:	001d8c13          	addi	s8,s11,1
80002d20:	04c00913          	li	s2,76
80002d24:	00060c93          	mv	s9,a2
80002d28:	02800513          	li	a0,40
80002d2c:	1caa7a63          	bgeu	s4,a0,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002d30:	000ca503          	lw	a0,0(s9)
80002d34:	0004ab03          	lw	s6,0(s1)
80002d38:	00000593          	li	a1,0
80002d3c:	000a8613          	mv	a2,s5
80002d40:	00000693          	li	a3,0
80002d44:	00007097          	auipc	ra,0x7
80002d48:	fec080e7          	jalr	-20(ra) # 80009d30 <__muldi3>
80002d4c:	013b09b3          	add	s3,s6,s3
80002d50:	0169b633          	sltu	a2,s3,s6
80002d54:	00a98533          	add	a0,s3,a0
80002d58:	013539b3          	sltu	s3,a0,s3
80002d5c:	00b605b3          	add	a1,a2,a1
80002d60:	013589b3          	add	s3,a1,s3
80002d64:	00a4a023          	sw	a0,0(s1)
80002d68:	001a0a13          	addi	s4,s4,1
80002d6c:	00448493          	addi	s1,s1,4
80002d70:	ffc90913          	addi	s2,s2,-4
80002d74:	004c8c93          	addi	s9,s9,4
80002d78:	fa0918e3          	bnez	s2,80002d28 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xc40>
80002d7c:	00098e63          	beqz	s3,80002d98 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcb0>
80002d80:	f2442c83          	lw	s9,-220(s0)
80002d84:	01500513          	li	a0,21
80002d88:	1eadf863          	bgeu	s11,a0,80002f78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe90>
80002d8c:	053ba623          	sw	s3,76(s7)
80002d90:	01400513          	li	a0,20
80002d94:	00c0006f          	j	80002da0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcb8>
80002d98:	01300513          	li	a0,19
80002d9c:	f2442c83          	lw	s9,-220(s0)
80002da0:	f2c40493          	addi	s1,s0,-212
80002da4:	f1c42703          	lw	a4,-228(s0)
80002da8:	f2840b93          	addi	s7,s0,-216
80002dac:	01b50533          	add	a0,a0,s11
80002db0:	f2042903          	lw	s2,-224(s0)
80002db4:	8000b637          	lui	a2,0x8000b
80002db8:	7dc60613          	addi	a2,a2,2012 # 8000b7dc <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80002dbc:	f1256ae3          	bltu	a0,s2,80002cd0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbe8>
80002dc0:	00050913          	mv	s2,a0
80002dc4:	f0dff06f          	j	80002cd0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbe8>
80002dc8:	02900513          	li	a0,41
80002dcc:	0aa77663          	bgeu	a4,a0,80002e78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002dd0:	8000b5b7          	lui	a1,0x8000b
80002dd4:	7dc58593          	addi	a1,a1,2012 # 8000b7dc <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80002dd8:	f2c40513          	addi	a0,s0,-212
80002ddc:	01300613          	li	a2,19
80002de0:	000c8693          	mv	a3,s9
80002de4:	00006097          	auipc	ra,0x6
80002de8:	2d8080e7          	jalr	728(ra) # 800090bc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002dec:	00050913          	mv	s2,a0
80002df0:	0080006f          	j	80002df8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd10>
80002df4:	f2842d03          	lw	s10,-216(s0)
80002df8:	f2c40593          	addi	a1,s0,-212
80002dfc:	0a000613          	li	a2,160
80002e00:	000c8513          	mv	a0,s9
80002e04:	00007097          	auipc	ra,0x7
80002e08:	fb4080e7          	jalr	-76(ra) # 80009db8 <memcpy>
80002e0c:	0b2ca023          	sw	s2,160(s9)
80002e10:	000c8513          	mv	a0,s9
80002e14:	000d0593          	mv	a1,s10
80002e18:	00006097          	auipc	ra,0x6
80002e1c:	0a0080e7          	jalr	160(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80002e20:	000c8513          	mv	a0,s9
80002e24:	0fc12083          	lw	ra,252(sp)
80002e28:	0f812403          	lw	s0,248(sp)
80002e2c:	0f412483          	lw	s1,244(sp)
80002e30:	0f012903          	lw	s2,240(sp)
80002e34:	0ec12983          	lw	s3,236(sp)
80002e38:	0e812a03          	lw	s4,232(sp)
80002e3c:	0e412a83          	lw	s5,228(sp)
80002e40:	0e012b03          	lw	s6,224(sp)
80002e44:	0dc12b83          	lw	s7,220(sp)
80002e48:	0d812c03          	lw	s8,216(sp)
80002e4c:	0d412c83          	lw	s9,212(sp)
80002e50:	0d012d03          	lw	s10,208(sp)
80002e54:	0cc12d83          	lw	s11,204(sp)
80002e58:	10010113          	addi	sp,sp,256
80002e5c:	00008067          	ret
80002e60:	8000c637          	lui	a2,0x8000c
80002e64:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002e68:	02800593          	li	a1,40
80002e6c:	00098513          	mv	a0,s3
80002e70:	00006097          	auipc	ra,0x6
80002e74:	da8080e7          	jalr	-600(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80002e78:	8000c637          	lui	a2,0x8000c
80002e7c:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002e80:	02800593          	li	a1,40
80002e84:	00070513          	mv	a0,a4
80002e88:	00006097          	auipc	ra,0x6
80002e8c:	d90080e7          	jalr	-624(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80002e90:	8000c637          	lui	a2,0x8000c
80002e94:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002e98:	02800513          	li	a0,40
80002e9c:	02800593          	li	a1,40
80002ea0:	00004097          	auipc	ra,0x4
80002ea4:	eec080e7          	jalr	-276(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002ea8:	02800a93          	li	s5,40
80002eac:	8000c637          	lui	a2,0x8000c
80002eb0:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002eb4:	02800593          	li	a1,40
80002eb8:	000a8513          	mv	a0,s5
80002ebc:	00004097          	auipc	ra,0x4
80002ec0:	ed0080e7          	jalr	-304(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002ec4:	000b8c93          	mv	s9,s7
80002ec8:	8000c637          	lui	a2,0x8000c
80002ecc:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002ed0:	02800593          	li	a1,40
80002ed4:	000c8513          	mv	a0,s9
80002ed8:	00004097          	auipc	ra,0x4
80002edc:	eb4080e7          	jalr	-332(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002ee0:	000a8493          	mv	s1,s5
80002ee4:	8000c637          	lui	a2,0x8000c
80002ee8:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002eec:	02800593          	li	a1,40
80002ef0:	00048513          	mv	a0,s1
80002ef4:	00004097          	auipc	ra,0x4
80002ef8:	e98080e7          	jalr	-360(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002efc:	000b0a13          	mv	s4,s6
80002f00:	8000c637          	lui	a2,0x8000c
80002f04:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002f08:	02800593          	li	a1,40
80002f0c:	000a0513          	mv	a0,s4
80002f10:	00004097          	auipc	ra,0x4
80002f14:	e7c080e7          	jalr	-388(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002f18:	002a8513          	addi	a0,s5,2
80002f1c:	8000c637          	lui	a2,0x8000c
80002f20:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002f24:	02800593          	li	a1,40
80002f28:	00004097          	auipc	ra,0x4
80002f2c:	e64080e7          	jalr	-412(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002f30:	003b8513          	addi	a0,s7,3
80002f34:	8000c637          	lui	a2,0x8000c
80002f38:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002f3c:	02800593          	li	a1,40
80002f40:	00004097          	auipc	ra,0x4
80002f44:	e4c080e7          	jalr	-436(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002f48:	005a8513          	addi	a0,s5,5
80002f4c:	8000c637          	lui	a2,0x8000c
80002f50:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002f54:	02800593          	li	a1,40
80002f58:	00004097          	auipc	ra,0x4
80002f5c:	e34080e7          	jalr	-460(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002f60:	00ab0513          	addi	a0,s6,10
80002f64:	8000c637          	lui	a2,0x8000c
80002f68:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002f6c:	02800593          	li	a1,40
80002f70:	00004097          	auipc	ra,0x4
80002f74:	e1c080e7          	jalr	-484(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80002f78:	013d8513          	addi	a0,s11,19
80002f7c:	8000c637          	lui	a2,0x8000c
80002f80:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80002f84:	02800593          	li	a1,40
80002f88:	00004097          	auipc	ra,0x4
80002f8c:	e04080e7          	jalr	-508(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80002f90 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE>:
80002f90:	a8010113          	addi	sp,sp,-1408
80002f94:	56112e23          	sw	ra,1404(sp)
80002f98:	56812c23          	sw	s0,1400(sp)
80002f9c:	56912a23          	sw	s1,1396(sp)
80002fa0:	57212823          	sw	s2,1392(sp)
80002fa4:	57312623          	sw	s3,1388(sp)
80002fa8:	57412423          	sw	s4,1384(sp)
80002fac:	57512223          	sw	s5,1380(sp)
80002fb0:	57612023          	sw	s6,1376(sp)
80002fb4:	55712e23          	sw	s7,1372(sp)
80002fb8:	55812c23          	sw	s8,1368(sp)
80002fbc:	55912a23          	sw	s9,1364(sp)
80002fc0:	55a12823          	sw	s10,1360(sp)
80002fc4:	55b12623          	sw	s11,1356(sp)
80002fc8:	58010413          	addi	s0,sp,1408
80002fcc:	0045ab83          	lw	s7,4(a1)
80002fd0:	0005ab03          	lw	s6,0(a1)
80002fd4:	017b6733          	or	a4,s6,s7
80002fd8:	6e0702e3          	beqz	a4,80003ebc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf2c>
80002fdc:	a8c42623          	sw	a2,-1396(s0)
80002fe0:	00c5aa83          	lw	s5,12(a1)
80002fe4:	0085a983          	lw	s3,8(a1)
80002fe8:	0159e633          	or	a2,s3,s5
80002fec:	6e0606e3          	beqz	a2,80003ed8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf48>
80002ff0:	0145a903          	lw	s2,20(a1)
80002ff4:	0105a483          	lw	s1,16(a1)
80002ff8:	0124e633          	or	a2,s1,s2
80002ffc:	6e060ce3          	beqz	a2,80003ef4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf64>
80003000:	00068c93          	mv	s9,a3
80003004:	009b0633          	add	a2,s6,s1
80003008:	016636b3          	sltu	a3,a2,s6
8000300c:	012b87b3          	add	a5,s7,s2
80003010:	00d78733          	add	a4,a5,a3
80003014:	01770463          	beq	a4,s7,8000301c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8c>
80003018:	017736b3          	sltu	a3,a4,s7
8000301c:	74069ce3          	bnez	a3,80003f74 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfe4>
80003020:	015b8663          	beq	s7,s5,8000302c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9c>
80003024:	015bb6b3          	sltu	a3,s7,s5
80003028:	0080006f          	j	80003030 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa0>
8000302c:	013b36b3          	sltu	a3,s6,s3
80003030:	760690e3          	bnez	a3,80003f90 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x1000>
80003034:	01000693          	li	a3,16
80003038:	6d96fce3          	bgeu	a3,s9,80003f10 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf80>
8000303c:	a8a42223          	sw	a0,-1404(s0)
80003040:	01859a03          	lh	s4,24(a1)
80003044:	016636b3          	sltu	a3,a2,s6
80003048:	00d78533          	add	a0,a5,a3
8000304c:	00163693          	seqz	a3,a2
80003050:	40d507b3          	sub	a5,a0,a3
80003054:	55555537          	lui	a0,0x55555
80003058:	55550713          	addi	a4,a0,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000305c:	33333537          	lui	a0,0x33333
80003060:	33350693          	addi	a3,a0,819 # 33333333 <.Lline_table_start2+0x33331f85>
80003064:	0f0f1537          	lui	a0,0xf0f1
80003068:	f0f50513          	addi	a0,a0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000306c:	06079c63          	bnez	a5,800030e4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x154>
80003070:	fff60613          	addi	a2,a2,-1
80003074:	00165793          	srli	a5,a2,0x1
80003078:	00f66633          	or	a2,a2,a5
8000307c:	00265793          	srli	a5,a2,0x2
80003080:	00f66633          	or	a2,a2,a5
80003084:	00465793          	srli	a5,a2,0x4
80003088:	00f66633          	or	a2,a2,a5
8000308c:	00865793          	srli	a5,a2,0x8
80003090:	00f66633          	or	a2,a2,a5
80003094:	01065793          	srli	a5,a2,0x10
80003098:	00f66633          	or	a2,a2,a5
8000309c:	fff64613          	not	a2,a2
800030a0:	00165793          	srli	a5,a2,0x1
800030a4:	00e7f733          	and	a4,a5,a4
800030a8:	40e60633          	sub	a2,a2,a4
800030ac:	00d67733          	and	a4,a2,a3
800030b0:	00265613          	srli	a2,a2,0x2
800030b4:	00d67633          	and	a2,a2,a3
800030b8:	00c70633          	add	a2,a4,a2
800030bc:	00465693          	srli	a3,a2,0x4
800030c0:	00d60633          	add	a2,a2,a3
800030c4:	00a67533          	and	a0,a2,a0
800030c8:	00851613          	slli	a2,a0,0x8
800030cc:	00c50533          	add	a0,a0,a2
800030d0:	01051613          	slli	a2,a0,0x10
800030d4:	00c50533          	add	a0,a0,a2
800030d8:	01855513          	srli	a0,a0,0x18
800030dc:	02050613          	addi	a2,a0,32
800030e0:	06c0006f          	j	8000314c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x1bc>
800030e4:	0017d613          	srli	a2,a5,0x1
800030e8:	00c7e633          	or	a2,a5,a2
800030ec:	00265793          	srli	a5,a2,0x2
800030f0:	00f66633          	or	a2,a2,a5
800030f4:	00465793          	srli	a5,a2,0x4
800030f8:	00f66633          	or	a2,a2,a5
800030fc:	00865793          	srli	a5,a2,0x8
80003100:	00f66633          	or	a2,a2,a5
80003104:	01065793          	srli	a5,a2,0x10
80003108:	00f66633          	or	a2,a2,a5
8000310c:	fff64613          	not	a2,a2
80003110:	00165793          	srli	a5,a2,0x1
80003114:	00e7f733          	and	a4,a5,a4
80003118:	40e60633          	sub	a2,a2,a4
8000311c:	00d67733          	and	a4,a2,a3
80003120:	00265613          	srli	a2,a2,0x2
80003124:	00d67633          	and	a2,a2,a3
80003128:	00c70633          	add	a2,a4,a2
8000312c:	00465693          	srli	a3,a2,0x4
80003130:	00d60633          	add	a2,a2,a3
80003134:	00a67533          	and	a0,a2,a0
80003138:	00851613          	slli	a2,a0,0x8
8000313c:	00c50533          	add	a0,a0,a2
80003140:	01051613          	slli	a2,a0,0x10
80003144:	00c50533          	add	a0,a0,a2
80003148:	01855613          	srli	a2,a0,0x18
8000314c:	01a58503          	lb	a0,26(a1)
80003150:	a8a42e23          	sw	a0,-1380(s0)
80003154:	41fa5593          	srai	a1,s4,0x1f
80003158:	40ca0533          	sub	a0,s4,a2
8000315c:	00ca3633          	sltu	a2,s4,a2
80003160:	40c585b3          	sub	a1,a1,a2
80003164:	4d105637          	lui	a2,0x4d105
80003168:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103994>
8000316c:	00000693          	li	a3,0
80003170:	00007097          	auipc	ra,0x7
80003174:	bc0080e7          	jalr	-1088(ra) # 80009d30 <__muldi3>
80003178:	44135637          	lui	a2,0x44135
8000317c:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133cd2>
80003180:	00c50633          	add	a2,a0,a2
80003184:	00a63533          	sltu	a0,a2,a0
80003188:	00a58533          	add	a0,a1,a0
8000318c:	01350c13          	addi	s8,a0,19
80003190:	010c1513          	slli	a0,s8,0x10
80003194:	41055513          	srai	a0,a0,0x10
80003198:	a8a42423          	sw	a0,-1400(s0)
8000319c:	001bb513          	seqz	a0,s7
800031a0:	fff50593          	addi	a1,a0,-1
800031a4:	0175f5b3          	and	a1,a1,s7
800031a8:	00200b93          	li	s7,2
800031ac:	40ab8533          	sub	a0,s7,a0
800031b0:	b4a42423          	sw	a0,-1208(s0)
800031b4:	ab642423          	sw	s6,-1368(s0)
800031b8:	aab42623          	sw	a1,-1364(s0)
800031bc:	ab040513          	addi	a0,s0,-1360
800031c0:	09800613          	li	a2,152
800031c4:	00000593          	li	a1,0
800031c8:	00008097          	auipc	ra,0x8
800031cc:	a7c080e7          	jalr	-1412(ra) # 8000ac44 <memset>
800031d0:	001ab513          	seqz	a0,s5
800031d4:	fff50593          	addi	a1,a0,-1
800031d8:	0155f5b3          	and	a1,a1,s5
800031dc:	40ab8533          	sub	a0,s7,a0
800031e0:	bea42623          	sw	a0,-1044(s0)
800031e4:	b5342623          	sw	s3,-1204(s0)
800031e8:	b4b42823          	sw	a1,-1200(s0)
800031ec:	b5440513          	addi	a0,s0,-1196
800031f0:	09800613          	li	a2,152
800031f4:	00000593          	li	a1,0
800031f8:	00008097          	auipc	ra,0x8
800031fc:	a4c080e7          	jalr	-1460(ra) # 8000ac44 <memset>
80003200:	00193513          	seqz	a0,s2
80003204:	fff50593          	addi	a1,a0,-1
80003208:	0125f5b3          	and	a1,a1,s2
8000320c:	40ab8533          	sub	a0,s7,a0
80003210:	c8a42823          	sw	a0,-880(s0)
80003214:	be942823          	sw	s1,-1040(s0)
80003218:	beb42a23          	sw	a1,-1036(s0)
8000321c:	bf840513          	addi	a0,s0,-1032
80003220:	09800613          	li	a2,152
80003224:	00000593          	li	a1,0
80003228:	00008097          	auipc	ra,0x8
8000322c:	a1c080e7          	jalr	-1508(ra) # 8000ac44 <memset>
80003230:	c9840513          	addi	a0,s0,-872
80003234:	09c00613          	li	a2,156
80003238:	00000593          	li	a1,0
8000323c:	00008097          	auipc	ra,0x8
80003240:	a08080e7          	jalr	-1528(ra) # 8000ac44 <memset>
80003244:	00100513          	li	a0,1
80003248:	d2a42a23          	sw	a0,-716(s0)
8000324c:	c8a42a23          	sw	a0,-876(s0)
80003250:	040a4663          	bltz	s4,8000329c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x30c>
80003254:	aa840513          	addi	a0,s0,-1368
80003258:	000a0593          	mv	a1,s4
8000325c:	00006097          	auipc	ra,0x6
80003260:	c5c080e7          	jalr	-932(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003264:	b4c40513          	addi	a0,s0,-1204
80003268:	000a0593          	mv	a1,s4
8000326c:	00006097          	auipc	ra,0x6
80003270:	c4c080e7          	jalr	-948(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003274:	bf040513          	addi	a0,s0,-1040
80003278:	000a0593          	mv	a1,s4
8000327c:	00006097          	auipc	ra,0x6
80003280:	c3c080e7          	jalr	-964(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003284:	a8842503          	lw	a0,-1400(s0)
80003288:	02054a63          	bltz	a0,800032bc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x32c>
8000328c:	011c1593          	slli	a1,s8,0x11
80003290:	0115d593          	srli	a1,a1,0x11
80003294:	c9440513          	addi	a0,s0,-876
80003298:	0580006f          	j	800032f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x360>
8000329c:	41400533          	neg	a0,s4
800032a0:	01051513          	slli	a0,a0,0x10
800032a4:	41055593          	srai	a1,a0,0x10
800032a8:	c9440513          	addi	a0,s0,-876
800032ac:	00006097          	auipc	ra,0x6
800032b0:	c0c080e7          	jalr	-1012(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800032b4:	a8842503          	lw	a0,-1400(s0)
800032b8:	fc055ae3          	bgez	a0,8000328c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x2fc>
800032bc:	40a00533          	neg	a0,a0
800032c0:	01051513          	slli	a0,a0,0x10
800032c4:	01055a13          	srli	s4,a0,0x10
800032c8:	aa840513          	addi	a0,s0,-1368
800032cc:	000a0593          	mv	a1,s4
800032d0:	fffff097          	auipc	ra,0xfffff
800032d4:	e18080e7          	jalr	-488(ra) # 800020e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
800032d8:	b4c40513          	addi	a0,s0,-1204
800032dc:	000a0593          	mv	a1,s4
800032e0:	fffff097          	auipc	ra,0xfffff
800032e4:	e08080e7          	jalr	-504(ra) # 800020e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
800032e8:	bf040513          	addi	a0,s0,-1040
800032ec:	000a0593          	mv	a1,s4
800032f0:	fffff097          	auipc	ra,0xfffff
800032f4:	df8080e7          	jalr	-520(ra) # 800020e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
800032f8:	b4842983          	lw	s3,-1208(s0)
800032fc:	f2440513          	addi	a0,s0,-220
80003300:	aa840593          	addi	a1,s0,-1368
80003304:	0a000613          	li	a2,160
80003308:	00007097          	auipc	ra,0x7
8000330c:	ab0080e7          	jalr	-1360(ra) # 80009db8 <memcpy>
80003310:	c9042483          	lw	s1,-880(s0)
80003314:	fd342223          	sw	s3,-60(s0)
80003318:	00098513          	mv	a0,s3
8000331c:	0134e463          	bltu	s1,s3,80003324 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x394>
80003320:	00048513          	mv	a0,s1
80003324:	02800593          	li	a1,40
80003328:	32a5eae3          	bltu	a1,a0,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
8000332c:	06050663          	beqz	a0,80003398 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x408>
80003330:	00000613          	li	a2,0
80003334:	bf040593          	addi	a1,s0,-1040
80003338:	f2440693          	addi	a3,s0,-220
8000333c:	00050713          	mv	a4,a0
80003340:	0006a783          	lw	a5,0(a3)
80003344:	0005a803          	lw	a6,0(a1)
80003348:	01078833          	add	a6,a5,a6
8000334c:	00f837b3          	sltu	a5,a6,a5
80003350:	00167613          	andi	a2,a2,1
80003354:	00c808b3          	add	a7,a6,a2
80003358:	0108b633          	sltu	a2,a7,a6
8000335c:	00c7e633          	or	a2,a5,a2
80003360:	0116a023          	sw	a7,0(a3)
80003364:	00458593          	addi	a1,a1,4
80003368:	fff70713          	addi	a4,a4,-1
8000336c:	00468693          	addi	a3,a3,4
80003370:	fc0718e3          	bnez	a4,80003340 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x3b0>
80003374:	02060263          	beqz	a2,80003398 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x408>
80003378:	02800593          	li	a1,40
8000337c:	3cb504e3          	beq	a0,a1,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003380:	00251593          	slli	a1,a0,0x2
80003384:	f2440613          	addi	a2,s0,-220
80003388:	00b605b3          	add	a1,a2,a1
8000338c:	00100613          	li	a2,1
80003390:	00c5a023          	sw	a2,0(a1)
80003394:	00150513          	addi	a0,a0,1
80003398:	d3442903          	lw	s2,-716(s0)
8000339c:	fca42223          	sw	a0,-60(s0)
800033a0:	00090693          	mv	a3,s2
800033a4:	01256463          	bltu	a0,s2,800033ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x41c>
800033a8:	00050693          	mv	a3,a0
800033ac:	02900513          	li	a0,41
800033b0:	2ca6f0e3          	bgeu	a3,a0,80003e70 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
800033b4:	00269693          	slli	a3,a3,0x2
800033b8:	40d00533          	neg	a0,a3
800033bc:	ffc68613          	addi	a2,a3,-4
800033c0:	f2440593          	addi	a1,s0,-220
800033c4:	00c585b3          	add	a1,a1,a2
800033c8:	c9440693          	addi	a3,s0,-876
800033cc:	00c68633          	add	a2,a3,a2
800033d0:	04050463          	beqz	a0,80003418 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x488>
800033d4:	00062683          	lw	a3,0(a2)
800033d8:	0005a703          	lw	a4,0(a1)
800033dc:	00e6b7b3          	sltu	a5,a3,a4
800033e0:	00d746b3          	xor	a3,a4,a3
800033e4:	00d036b3          	snez	a3,a3
800033e8:	40f00733          	neg	a4,a5
800033ec:	00d766b3          	or	a3,a4,a3
800033f0:	00450513          	addi	a0,a0,4
800033f4:	ffc58593          	addi	a1,a1,-4
800033f8:	ffc60613          	addi	a2,a2,-4
800033fc:	fc068ae3          	beqz	a3,800033d0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x440>
80003400:	a9c42503          	lw	a0,-1380(s0)
80003404:	02a6d263          	bge	a3,a0,80003428 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x498>
80003408:	a8842503          	lw	a0,-1400(s0)
8000340c:	00150513          	addi	a0,a0,1
80003410:	a8a42423          	sw	a0,-1400(s0)
80003414:	14c0006f          	j	80003560 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5d0>
80003418:	00153693          	seqz	a3,a0
8000341c:	fff68693          	addi	a3,a3,-1
80003420:	a9c42503          	lw	a0,-1380(s0)
80003424:	fea6c2e3          	blt	a3,a0,80003408 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x478>
80003428:	06098063          	beqz	s3,80003488 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4f8>
8000342c:	00000a13          	li	s4,0
80003430:	00299b13          	slli	s6,s3,0x2
80003434:	aa840b93          	addi	s7,s0,-1368
80003438:	016b8ab3          	add	s5,s7,s6
8000343c:	000ba503          	lw	a0,0(s7)
80003440:	004b8c13          	addi	s8,s7,4
80003444:	00a00613          	li	a2,10
80003448:	00000593          	li	a1,0
8000344c:	00000693          	li	a3,0
80003450:	00007097          	auipc	ra,0x7
80003454:	8e0080e7          	jalr	-1824(ra) # 80009d30 <__muldi3>
80003458:	01450633          	add	a2,a0,s4
8000345c:	00a63a33          	sltu	s4,a2,a0
80003460:	01458a33          	add	s4,a1,s4
80003464:	ffcb0b13          	addi	s6,s6,-4
80003468:	00cba023          	sw	a2,0(s7)
8000346c:	000c0b93          	mv	s7,s8
80003470:	fc0b16e3          	bnez	s6,8000343c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4ac>
80003474:	000a0a63          	beqz	s4,80003488 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4f8>
80003478:	02800513          	li	a0,40
8000347c:	2ca984e3          	beq	s3,a0,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003480:	014aa023          	sw	s4,0(s5)
80003484:	00198993          	addi	s3,s3,1
80003488:	bec42a03          	lw	s4,-1044(s0)
8000348c:	02900513          	li	a0,41
80003490:	b5342423          	sw	s3,-1208(s0)
80003494:	28aa7ce3          	bgeu	s4,a0,80003f2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf9c>
80003498:	060a0063          	beqz	s4,800034f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x568>
8000349c:	00000993          	li	s3,0
800034a0:	002a1b13          	slli	s6,s4,0x2
800034a4:	b4c40b93          	addi	s7,s0,-1204
800034a8:	016b8ab3          	add	s5,s7,s6
800034ac:	000ba503          	lw	a0,0(s7)
800034b0:	004b8c13          	addi	s8,s7,4
800034b4:	00a00613          	li	a2,10
800034b8:	00000593          	li	a1,0
800034bc:	00000693          	li	a3,0
800034c0:	00007097          	auipc	ra,0x7
800034c4:	870080e7          	jalr	-1936(ra) # 80009d30 <__muldi3>
800034c8:	01350633          	add	a2,a0,s3
800034cc:	00a639b3          	sltu	s3,a2,a0
800034d0:	013589b3          	add	s3,a1,s3
800034d4:	ffcb0b13          	addi	s6,s6,-4
800034d8:	00cba023          	sw	a2,0(s7)
800034dc:	000c0b93          	mv	s7,s8
800034e0:	fc0b16e3          	bnez	s6,800034ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x51c>
800034e4:	00098a63          	beqz	s3,800034f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x568>
800034e8:	02800513          	li	a0,40
800034ec:	24aa0ce3          	beq	s4,a0,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
800034f0:	013aa023          	sw	s3,0(s5)
800034f4:	001a0a13          	addi	s4,s4,1
800034f8:	bf442623          	sw	s4,-1044(s0)
800034fc:	06048063          	beqz	s1,8000355c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5cc>
80003500:	00000993          	li	s3,0
80003504:	00249a93          	slli	s5,s1,0x2
80003508:	bf040b13          	addi	s6,s0,-1040
8000350c:	015b0a33          	add	s4,s6,s5
80003510:	000b2503          	lw	a0,0(s6)
80003514:	004b0b93          	addi	s7,s6,4
80003518:	00a00613          	li	a2,10
8000351c:	00000593          	li	a1,0
80003520:	00000693          	li	a3,0
80003524:	00007097          	auipc	ra,0x7
80003528:	80c080e7          	jalr	-2036(ra) # 80009d30 <__muldi3>
8000352c:	01350633          	add	a2,a0,s3
80003530:	00a639b3          	sltu	s3,a2,a0
80003534:	013589b3          	add	s3,a1,s3
80003538:	ffca8a93          	addi	s5,s5,-4
8000353c:	00cb2023          	sw	a2,0(s6)
80003540:	000b8b13          	mv	s6,s7
80003544:	fc0a96e3          	bnez	s5,80003510 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x580>
80003548:	00098a63          	beqz	s3,8000355c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5cc>
8000354c:	02800513          	li	a0,40
80003550:	1ea48ae3          	beq	s1,a0,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003554:	013a2023          	sw	s3,0(s4)
80003558:	00148493          	addi	s1,s1,1
8000355c:	c8942823          	sw	s1,-880(s0)
80003560:	d3840513          	addi	a0,s0,-712
80003564:	c9440593          	addi	a1,s0,-876
80003568:	0a000613          	li	a2,160
8000356c:	00007097          	auipc	ra,0x7
80003570:	84c080e7          	jalr	-1972(ra) # 80009db8 <memcpy>
80003574:	dd242c23          	sw	s2,-552(s0)
80003578:	d3840513          	addi	a0,s0,-712
8000357c:	00100593          	li	a1,1
80003580:	00006097          	auipc	ra,0x6
80003584:	938080e7          	jalr	-1736(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003588:	d3442483          	lw	s1,-716(s0)
8000358c:	ddc40513          	addi	a0,s0,-548
80003590:	c9440593          	addi	a1,s0,-876
80003594:	0a000613          	li	a2,160
80003598:	00007097          	auipc	ra,0x7
8000359c:	820080e7          	jalr	-2016(ra) # 80009db8 <memcpy>
800035a0:	e6942e23          	sw	s1,-388(s0)
800035a4:	ddc40513          	addi	a0,s0,-548
800035a8:	00200593          	li	a1,2
800035ac:	00006097          	auipc	ra,0x6
800035b0:	90c080e7          	jalr	-1780(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800035b4:	d3442483          	lw	s1,-716(s0)
800035b8:	e8040513          	addi	a0,s0,-384
800035bc:	c9440593          	addi	a1,s0,-876
800035c0:	0a000613          	li	a2,160
800035c4:	00006097          	auipc	ra,0x6
800035c8:	7f4080e7          	jalr	2036(ra) # 80009db8 <memcpy>
800035cc:	f2942023          	sw	s1,-224(s0)
800035d0:	e8040513          	addi	a0,s0,-384
800035d4:	00300593          	li	a1,3
800035d8:	00006097          	auipc	ra,0x6
800035dc:	8e0080e7          	jalr	-1824(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800035e0:	f2042583          	lw	a1,-224(s0)
800035e4:	b4842a83          	lw	s5,-1208(s0)
800035e8:	000a8513          	mv	a0,s5
800035ec:	a8b42823          	sw	a1,-1392(s0)
800035f0:	0155e463          	bltu	a1,s5,800035f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x668>
800035f4:	a9042503          	lw	a0,-1392(s0)
800035f8:	02800593          	li	a1,40
800035fc:	a9c42483          	lw	s1,-1380(s0)
80003600:	04a5eee3          	bltu	a1,a0,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003604:	00000b13          	li	s6,0
80003608:	e7c42583          	lw	a1,-388(s0)
8000360c:	a8b42c23          	sw	a1,-1384(s0)
80003610:	dd842583          	lw	a1,-552(s0)
80003614:	a8b42a23          	sw	a1,-1388(s0)
80003618:	d3442583          	lw	a1,-716(s0)
8000361c:	aab42223          	sw	a1,-1372(s0)
80003620:	aa440913          	addi	s2,s0,-1372
80003624:	00100393          	li	t2,1
80003628:	02900e13          	li	t3,41
8000362c:	01c0006f          	j	80003648 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6b8>
80003630:	000c0c93          	mv	s9,s8
80003634:	02800593          	li	a1,40
80003638:	00100393          	li	t2,1
8000363c:	02900e13          	li	t3,41
80003640:	aa042b03          	lw	s6,-1376(s0)
80003644:	00a5ece3          	bltu	a1,a0,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003648:	00251693          	slli	a3,a0,0x2
8000364c:	40d005b3          	neg	a1,a3
80003650:	e7c40613          	addi	a2,s0,-388
80003654:	00d60633          	add	a2,a2,a3
80003658:	00d906b3          	add	a3,s2,a3
8000365c:	08058e63          	beqz	a1,800036f8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x768>
80003660:	0006a703          	lw	a4,0(a3)
80003664:	00062783          	lw	a5,0(a2)
80003668:	00f73833          	sltu	a6,a4,a5
8000366c:	00e7c733          	xor	a4,a5,a4
80003670:	00e03733          	snez	a4,a4
80003674:	410007b3          	neg	a5,a6
80003678:	00e7e733          	or	a4,a5,a4
8000367c:	00458593          	addi	a1,a1,4
80003680:	ffc60613          	addi	a2,a2,-4
80003684:	ffc68693          	addi	a3,a3,-4
80003688:	fc070ae3          	beqz	a4,8000365c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6cc>
8000368c:	06e3ec63          	bltu	t2,a4,80003704 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x774>
80003690:	04050863          	beqz	a0,800036e0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x750>
80003694:	00100613          	li	a2,1
80003698:	e8040593          	addi	a1,s0,-384
8000369c:	aa840693          	addi	a3,s0,-1368
800036a0:	00050713          	mv	a4,a0
800036a4:	0005a783          	lw	a5,0(a1)
800036a8:	0006a803          	lw	a6,0(a3)
800036ac:	fff7c793          	not	a5,a5
800036b0:	00f807b3          	add	a5,a6,a5
800036b4:	0107b833          	sltu	a6,a5,a6
800036b8:	00167613          	andi	a2,a2,1
800036bc:	00c788b3          	add	a7,a5,a2
800036c0:	00f8b633          	sltu	a2,a7,a5
800036c4:	00c86633          	or	a2,a6,a2
800036c8:	0116a023          	sw	a7,0(a3)
800036cc:	00458593          	addi	a1,a1,4
800036d0:	fff70713          	addi	a4,a4,-1
800036d4:	00468693          	addi	a3,a3,4
800036d8:	fc0716e3          	bnez	a4,800036a4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x714>
800036dc:	7a060663          	beqz	a2,80003e88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
800036e0:	b4a42423          	sw	a0,-1208(s0)
800036e4:	00800593          	li	a1,8
800036e8:	00050693          	mv	a3,a0
800036ec:	a9842603          	lw	a2,-1384(s0)
800036f0:	02a67463          	bgeu	a2,a0,80003718 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x788>
800036f4:	0280006f          	j	8000371c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x78c>
800036f8:	0015b713          	seqz	a4,a1
800036fc:	fff70713          	addi	a4,a4,-1
80003700:	f8e3f8e3          	bgeu	t2,a4,80003690 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x700>
80003704:	00000593          	li	a1,0
80003708:	000a8513          	mv	a0,s5
8000370c:	00050693          	mv	a3,a0
80003710:	a9842603          	lw	a2,-1384(s0)
80003714:	01566463          	bltu	a2,s5,8000371c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x78c>
80003718:	a9842683          	lw	a3,-1384(s0)
8000371c:	75c6fa63          	bgeu	a3,t3,80003e70 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
80003720:	00269793          	slli	a5,a3,0x2
80003724:	40f00633          	neg	a2,a5
80003728:	dd840713          	addi	a4,s0,-552
8000372c:	00f70733          	add	a4,a4,a5
80003730:	00f907b3          	add	a5,s2,a5
80003734:	08060e63          	beqz	a2,800037d0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x840>
80003738:	0007a803          	lw	a6,0(a5) # 1000 <.Lline_table_start2+0x14>
8000373c:	00072883          	lw	a7,0(a4)
80003740:	011832b3          	sltu	t0,a6,a7
80003744:	0108c833          	xor	a6,a7,a6
80003748:	01003833          	snez	a6,a6
8000374c:	405008b3          	neg	a7,t0
80003750:	0108e833          	or	a6,a7,a6
80003754:	00460613          	addi	a2,a2,4
80003758:	ffc70713          	addi	a4,a4,-4
8000375c:	ffc78793          	addi	a5,a5,-4
80003760:	fc080ae3          	beqz	a6,80003734 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7a4>
80003764:	0703ec63          	bltu	t2,a6,800037dc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x84c>
80003768:	04068863          	beqz	a3,800037b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x828>
8000376c:	00100613          	li	a2,1
80003770:	ddc40513          	addi	a0,s0,-548
80003774:	aa840713          	addi	a4,s0,-1368
80003778:	00068793          	mv	a5,a3
8000377c:	00052803          	lw	a6,0(a0)
80003780:	00072883          	lw	a7,0(a4)
80003784:	fff84813          	not	a6,a6
80003788:	01088833          	add	a6,a7,a6
8000378c:	011838b3          	sltu	a7,a6,a7
80003790:	00167613          	andi	a2,a2,1
80003794:	00c802b3          	add	t0,a6,a2
80003798:	0102b633          	sltu	a2,t0,a6
8000379c:	00c8e633          	or	a2,a7,a2
800037a0:	00572023          	sw	t0,0(a4)
800037a4:	00450513          	addi	a0,a0,4
800037a8:	fff78793          	addi	a5,a5,-1
800037ac:	00470713          	addi	a4,a4,4
800037b0:	fc0796e3          	bnez	a5,8000377c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7ec>
800037b4:	6c060a63          	beqz	a2,80003e88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
800037b8:	b4d42423          	sw	a3,-1208(s0)
800037bc:	0045e593          	ori	a1,a1,4
800037c0:	00068513          	mv	a0,a3
800037c4:	a9442603          	lw	a2,-1388(s0)
800037c8:	02d67063          	bgeu	a2,a3,800037e8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x858>
800037cc:	0200006f          	j	800037ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x85c>
800037d0:	00163813          	seqz	a6,a2
800037d4:	fff80813          	addi	a6,a6,-1
800037d8:	f903f8e3          	bgeu	t2,a6,80003768 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7d8>
800037dc:	00050693          	mv	a3,a0
800037e0:	a9442603          	lw	a2,-1388(s0)
800037e4:	00a66463          	bltu	a2,a0,800037ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x85c>
800037e8:	a9442503          	lw	a0,-1388(s0)
800037ec:	67c57863          	bgeu	a0,t3,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
800037f0:	00251793          	slli	a5,a0,0x2
800037f4:	40f00633          	neg	a2,a5
800037f8:	d3440713          	addi	a4,s0,-716
800037fc:	00f70733          	add	a4,a4,a5
80003800:	00f907b3          	add	a5,s2,a5
80003804:	08060e63          	beqz	a2,800038a0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x910>
80003808:	0007a803          	lw	a6,0(a5)
8000380c:	00072883          	lw	a7,0(a4)
80003810:	011832b3          	sltu	t0,a6,a7
80003814:	0108c833          	xor	a6,a7,a6
80003818:	01003833          	snez	a6,a6
8000381c:	405008b3          	neg	a7,t0
80003820:	0108e833          	or	a6,a7,a6
80003824:	00460613          	addi	a2,a2,4
80003828:	ffc70713          	addi	a4,a4,-4
8000382c:	ffc78793          	addi	a5,a5,-4
80003830:	fc080ae3          	beqz	a6,80003804 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x874>
80003834:	0703ec63          	bltu	t2,a6,800038ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x91c>
80003838:	04050863          	beqz	a0,80003888 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8f8>
8000383c:	00100693          	li	a3,1
80003840:	d3840613          	addi	a2,s0,-712
80003844:	aa840713          	addi	a4,s0,-1368
80003848:	00050793          	mv	a5,a0
8000384c:	00062803          	lw	a6,0(a2)
80003850:	00072883          	lw	a7,0(a4)
80003854:	fff84813          	not	a6,a6
80003858:	01088833          	add	a6,a7,a6
8000385c:	011838b3          	sltu	a7,a6,a7
80003860:	0016f693          	andi	a3,a3,1
80003864:	00d802b3          	add	t0,a6,a3
80003868:	0102b6b3          	sltu	a3,t0,a6
8000386c:	00d8e6b3          	or	a3,a7,a3
80003870:	00572023          	sw	t0,0(a4)
80003874:	00460613          	addi	a2,a2,4
80003878:	fff78793          	addi	a5,a5,-1
8000387c:	00470713          	addi	a4,a4,4
80003880:	fc0796e3          	bnez	a5,8000384c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8bc>
80003884:	60068263          	beqz	a3,80003e88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003888:	b4a42423          	sw	a0,-1208(s0)
8000388c:	00258593          	addi	a1,a1,2
80003890:	00050a93          	mv	s5,a0
80003894:	aa442603          	lw	a2,-1372(s0)
80003898:	02a67263          	bgeu	a2,a0,800038bc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x92c>
8000389c:	0240006f          	j	800038c0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x930>
800038a0:	00163813          	seqz	a6,a2
800038a4:	fff80813          	addi	a6,a6,-1
800038a8:	f903f8e3          	bgeu	t2,a6,80003838 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8a8>
800038ac:	00068513          	mv	a0,a3
800038b0:	00050a93          	mv	s5,a0
800038b4:	aa442603          	lw	a2,-1372(s0)
800038b8:	00d66463          	bltu	a2,a3,800038c0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x930>
800038bc:	aa442a83          	lw	s5,-1372(s0)
800038c0:	5fcaf263          	bgeu	s5,t3,80003ea4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf14>
800038c4:	002a9713          	slli	a4,s5,0x2
800038c8:	40e00633          	neg	a2,a4
800038cc:	c9040693          	addi	a3,s0,-880
800038d0:	00e686b3          	add	a3,a3,a4
800038d4:	00e90733          	add	a4,s2,a4
800038d8:	08060863          	beqz	a2,80003968 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9d8>
800038dc:	00072783          	lw	a5,0(a4)
800038e0:	0006a803          	lw	a6,0(a3)
800038e4:	0107b8b3          	sltu	a7,a5,a6
800038e8:	00f847b3          	xor	a5,a6,a5
800038ec:	00f037b3          	snez	a5,a5
800038f0:	41100833          	neg	a6,a7
800038f4:	00f867b3          	or	a5,a6,a5
800038f8:	00460613          	addi	a2,a2,4
800038fc:	ffc68693          	addi	a3,a3,-4
80003900:	ffc70713          	addi	a4,a4,-4
80003904:	fc078ae3          	beqz	a5,800038d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x948>
80003908:	06f3e663          	bltu	t2,a5,80003974 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9e4>
8000390c:	040a8863          	beqz	s5,8000395c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9cc>
80003910:	00100613          	li	a2,1
80003914:	c9440513          	addi	a0,s0,-876
80003918:	aa840693          	addi	a3,s0,-1368
8000391c:	000a8713          	mv	a4,s5
80003920:	00052783          	lw	a5,0(a0)
80003924:	0006a803          	lw	a6,0(a3)
80003928:	fff7c793          	not	a5,a5
8000392c:	00f807b3          	add	a5,a6,a5
80003930:	0107b833          	sltu	a6,a5,a6
80003934:	00167613          	andi	a2,a2,1
80003938:	00c788b3          	add	a7,a5,a2
8000393c:	00f8b633          	sltu	a2,a7,a5
80003940:	00c86633          	or	a2,a6,a2
80003944:	0116a023          	sw	a7,0(a3)
80003948:	00450513          	addi	a0,a0,4
8000394c:	fff70713          	addi	a4,a4,-1
80003950:	00468693          	addi	a3,a3,4
80003954:	fc0716e3          	bnez	a4,80003920 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x990>
80003958:	52060863          	beqz	a2,80003e88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
8000395c:	b5542423          	sw	s5,-1208(s0)
80003960:	00158593          	addi	a1,a1,1
80003964:	0140006f          	j	80003978 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9e8>
80003968:	00163793          	seqz	a5,a2
8000396c:	fff78793          	addi	a5,a5,-1
80003970:	f8f3fee3          	bgeu	t2,a5,8000390c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x97c>
80003974:	00050a93          	mv	s5,a0
80003978:	5f9b0263          	beq	s6,s9,80003f5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfcc>
8000397c:	bec42d83          	lw	s11,-1044(s0)
80003980:	03058513          	addi	a0,a1,48
80003984:	a8c42a03          	lw	s4,-1396(s0)
80003988:	016a0a33          	add	s4,s4,s6
8000398c:	00aa0023          	sb	a0,0(s4)
80003990:	000a8513          	mv	a0,s5
80003994:	015de463          	bltu	s11,s5,8000399c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa0c>
80003998:	000d8513          	mv	a0,s11
8000399c:	4dc57063          	bgeu	a0,t3,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
800039a0:	001b0813          	addi	a6,s6,1
800039a4:	00251613          	slli	a2,a0,0x2
800039a8:	40c00533          	neg	a0,a2
800039ac:	b4840593          	addi	a1,s0,-1208
800039b0:	00c585b3          	add	a1,a1,a2
800039b4:	00c90633          	add	a2,s2,a2
800039b8:	02050a63          	beqz	a0,800039ec <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa5c>
800039bc:	00062683          	lw	a3,0(a2)
800039c0:	0005a703          	lw	a4,0(a1)
800039c4:	00e6b7b3          	sltu	a5,a3,a4
800039c8:	00d746b3          	xor	a3,a4,a3
800039cc:	00d036b3          	snez	a3,a3
800039d0:	40f00733          	neg	a4,a5
800039d4:	00d76d33          	or	s10,a4,a3
800039d8:	00450513          	addi	a0,a0,4
800039dc:	ffc58593          	addi	a1,a1,-4
800039e0:	ffc60613          	addi	a2,a2,-4
800039e4:	fc0d0ae3          	beqz	s10,800039b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa28>
800039e8:	00c0006f          	j	800039f4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa64>
800039ec:	00153d13          	seqz	s10,a0
800039f0:	fffd0d13          	addi	s10,s10,-1
800039f4:	ab042023          	sw	a6,-1376(s0)
800039f8:	02900b93          	li	s7,41
800039fc:	00100993          	li	s3,1
80003a00:	000c8c13          	mv	s8,s9
80003a04:	f2440513          	addi	a0,s0,-220
80003a08:	aa840593          	addi	a1,s0,-1368
80003a0c:	0a000613          	li	a2,160
80003a10:	00006097          	auipc	ra,0x6
80003a14:	3a8080e7          	jalr	936(ra) # 80009db8 <memcpy>
80003a18:	c9042c83          	lw	s9,-880(s0)
80003a1c:	fd542223          	sw	s5,-60(s0)
80003a20:	000a8513          	mv	a0,s5
80003a24:	015ce463          	bltu	s9,s5,80003a2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa9c>
80003a28:	000c8513          	mv	a0,s9
80003a2c:	02800593          	li	a1,40
80003a30:	42a5e663          	bltu	a1,a0,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003a34:	06050463          	beqz	a0,80003a9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb0c>
80003a38:	00000613          	li	a2,0
80003a3c:	bf040593          	addi	a1,s0,-1040
80003a40:	f2440693          	addi	a3,s0,-220
80003a44:	00050713          	mv	a4,a0
80003a48:	0006a783          	lw	a5,0(a3)
80003a4c:	0005a803          	lw	a6,0(a1)
80003a50:	01078833          	add	a6,a5,a6
80003a54:	00f837b3          	sltu	a5,a6,a5
80003a58:	00167613          	andi	a2,a2,1
80003a5c:	00c808b3          	add	a7,a6,a2
80003a60:	0108b633          	sltu	a2,a7,a6
80003a64:	00c7e633          	or	a2,a5,a2
80003a68:	0116a023          	sw	a7,0(a3)
80003a6c:	00458593          	addi	a1,a1,4
80003a70:	fff70713          	addi	a4,a4,-1
80003a74:	00468693          	addi	a3,a3,4
80003a78:	fc0718e3          	bnez	a4,80003a48 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xab8>
80003a7c:	02060063          	beqz	a2,80003a9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb0c>
80003a80:	02800593          	li	a1,40
80003a84:	4cb50063          	beq	a0,a1,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003a88:	00251593          	slli	a1,a0,0x2
80003a8c:	f2440613          	addi	a2,s0,-220
80003a90:	00b605b3          	add	a1,a2,a1
80003a94:	0135a023          	sw	s3,0(a1)
80003a98:	00150513          	addi	a0,a0,1
80003a9c:	fca42223          	sw	a0,-60(s0)
80003aa0:	aa442583          	lw	a1,-1372(s0)
80003aa4:	00058693          	mv	a3,a1
80003aa8:	00b56463          	bltu	a0,a1,80003ab0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb20>
80003aac:	00050693          	mv	a3,a0
80003ab0:	3d76f063          	bgeu	a3,s7,80003e70 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
80003ab4:	00269613          	slli	a2,a3,0x2
80003ab8:	40c00533          	neg	a0,a2
80003abc:	f2040593          	addi	a1,s0,-224
80003ac0:	00c585b3          	add	a1,a1,a2
80003ac4:	c9040693          	addi	a3,s0,-880
80003ac8:	00c68633          	add	a2,a3,a2
80003acc:	02050c63          	beqz	a0,80003b04 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb74>
80003ad0:	00062683          	lw	a3,0(a2)
80003ad4:	0005a703          	lw	a4,0(a1)
80003ad8:	00e6b7b3          	sltu	a5,a3,a4
80003adc:	00d746b3          	xor	a3,a4,a3
80003ae0:	00d036b3          	snez	a3,a3
80003ae4:	40f00733          	neg	a4,a5
80003ae8:	00d766b3          	or	a3,a4,a3
80003aec:	00450513          	addi	a0,a0,4
80003af0:	ffc58593          	addi	a1,a1,-4
80003af4:	ffc60613          	addi	a2,a2,-4
80003af8:	fc068ae3          	beqz	a3,80003acc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb3c>
80003afc:	009d5a63          	bge	s10,s1,80003b10 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb80>
80003b00:	19c0006f          	j	80003c9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003b04:	00153693          	seqz	a3,a0
80003b08:	fff68693          	addi	a3,a3,-1
80003b0c:	189d4863          	blt	s10,s1,80003c9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003b10:	1896c663          	blt	a3,s1,80003c9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003b14:	060a8463          	beqz	s5,80003b7c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xbec>
80003b18:	00000b13          	li	s6,0
80003b1c:	002a9d13          	slli	s10,s5,0x2
80003b20:	aa840a13          	addi	s4,s0,-1368
80003b24:	01aa0a33          	add	s4,s4,s10
80003b28:	aa840493          	addi	s1,s0,-1368
80003b2c:	0004a503          	lw	a0,0(s1)
80003b30:	00448993          	addi	s3,s1,4
80003b34:	00a00613          	li	a2,10
80003b38:	00000593          	li	a1,0
80003b3c:	00000693          	li	a3,0
80003b40:	00006097          	auipc	ra,0x6
80003b44:	1f0080e7          	jalr	496(ra) # 80009d30 <__muldi3>
80003b48:	01650633          	add	a2,a0,s6
80003b4c:	00a63b33          	sltu	s6,a2,a0
80003b50:	01658b33          	add	s6,a1,s6
80003b54:	ffcd0d13          	addi	s10,s10,-4
80003b58:	00c4a023          	sw	a2,0(s1)
80003b5c:	00098493          	mv	s1,s3
80003b60:	fc0d16e3          	bnez	s10,80003b2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb9c>
80003b64:	080b0863          	beqz	s6,80003bf4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc64>
80003b68:	a9c42483          	lw	s1,-1380(s0)
80003b6c:	02800513          	li	a0,40
80003b70:	3caa8a63          	beq	s5,a0,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003b74:	016a2023          	sw	s6,0(s4)
80003b78:	001a8a93          	addi	s5,s5,1
80003b7c:	b5542423          	sw	s5,-1208(s0)
80003b80:	080d8063          	beqz	s11,80003c00 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc70>
80003b84:	00000b13          	li	s6,0
80003b88:	002d9d13          	slli	s10,s11,0x2
80003b8c:	b4c40a13          	addi	s4,s0,-1204
80003b90:	01aa0a33          	add	s4,s4,s10
80003b94:	b4c40493          	addi	s1,s0,-1204
80003b98:	0004a503          	lw	a0,0(s1)
80003b9c:	00448993          	addi	s3,s1,4
80003ba0:	00a00613          	li	a2,10
80003ba4:	00000593          	li	a1,0
80003ba8:	00000693          	li	a3,0
80003bac:	00006097          	auipc	ra,0x6
80003bb0:	184080e7          	jalr	388(ra) # 80009d30 <__muldi3>
80003bb4:	01650633          	add	a2,a0,s6
80003bb8:	00a63b33          	sltu	s6,a2,a0
80003bbc:	01658b33          	add	s6,a1,s6
80003bc0:	ffcd0d13          	addi	s10,s10,-4
80003bc4:	00c4a023          	sw	a2,0(s1)
80003bc8:	00098493          	mv	s1,s3
80003bcc:	fc0d16e3          	bnez	s10,80003b98 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc08>
80003bd0:	0a0b0063          	beqz	s6,80003c70 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xce0>
80003bd4:	a9c42483          	lw	s1,-1380(s0)
80003bd8:	02800513          	li	a0,40
80003bdc:	36ad8463          	beq	s11,a0,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003be0:	016a2023          	sw	s6,0(s4)
80003be4:	001d8d93          	addi	s11,s11,1
80003be8:	bfb42623          	sw	s11,-1044(s0)
80003bec:	000c9e63          	bnez	s9,80003c08 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc78>
80003bf0:	0940006f          	j	80003c84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003bf4:	a9c42483          	lw	s1,-1380(s0)
80003bf8:	b5542423          	sw	s5,-1208(s0)
80003bfc:	f80d94e3          	bnez	s11,80003b84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xbf4>
80003c00:	bfb42623          	sw	s11,-1044(s0)
80003c04:	080c8063          	beqz	s9,80003c84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003c08:	00000b13          	li	s6,0
80003c0c:	002c9d13          	slli	s10,s9,0x2
80003c10:	bf040a13          	addi	s4,s0,-1040
80003c14:	01aa0a33          	add	s4,s4,s10
80003c18:	bf040493          	addi	s1,s0,-1040
80003c1c:	0004a503          	lw	a0,0(s1)
80003c20:	00448993          	addi	s3,s1,4
80003c24:	00a00613          	li	a2,10
80003c28:	00000593          	li	a1,0
80003c2c:	00000693          	li	a3,0
80003c30:	00006097          	auipc	ra,0x6
80003c34:	100080e7          	jalr	256(ra) # 80009d30 <__muldi3>
80003c38:	01650633          	add	a2,a0,s6
80003c3c:	00a63b33          	sltu	s6,a2,a0
80003c40:	01658b33          	add	s6,a1,s6
80003c44:	ffcd0d13          	addi	s10,s10,-4
80003c48:	00c4a023          	sw	a2,0(s1)
80003c4c:	00098493          	mv	s1,s3
80003c50:	fc0d16e3          	bnez	s10,80003c1c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc8c>
80003c54:	020b0663          	beqz	s6,80003c80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf0>
80003c58:	a9c42483          	lw	s1,-1380(s0)
80003c5c:	02800513          	li	a0,40
80003c60:	2eac8263          	beq	s9,a0,80003f44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003c64:	016a2023          	sw	s6,0(s4)
80003c68:	001c8c93          	addi	s9,s9,1
80003c6c:	0180006f          	j	80003c84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003c70:	a9c42483          	lw	s1,-1380(s0)
80003c74:	bfb42623          	sw	s11,-1044(s0)
80003c78:	f80c98e3          	bnez	s9,80003c08 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc78>
80003c7c:	0080006f          	j	80003c84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003c80:	a9c42483          	lw	s1,-1380(s0)
80003c84:	c9942823          	sw	s9,-880(s0)
80003c88:	000a8513          	mv	a0,s5
80003c8c:	a9042583          	lw	a1,-1392(s0)
80003c90:	9b55e0e3          	bltu	a1,s5,80003630 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6a0>
80003c94:	a9042503          	lw	a0,-1392(s0)
80003c98:	999ff06f          	j	80003630 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6a0>
80003c9c:	0896d863          	bge	a3,s1,80003d2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd9c>
80003ca0:	a8c42a83          	lw	s5,-1396(s0)
80003ca4:	aa042903          	lw	s2,-1376(s0)
80003ca8:	0a9d5663          	bge	s10,s1,80003d54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdc4>
80003cac:	aa840513          	addi	a0,s0,-1368
80003cb0:	00100593          	li	a1,1
80003cb4:	00005097          	auipc	ra,0x5
80003cb8:	204080e7          	jalr	516(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003cbc:	b4842503          	lw	a0,-1208(s0)
80003cc0:	d3442583          	lw	a1,-716(s0)
80003cc4:	00a5e463          	bltu	a1,a0,80003ccc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd3c>
80003cc8:	00058513          	mv	a0,a1
80003ccc:	02900593          	li	a1,41
80003cd0:	18b57663          	bgeu	a0,a1,80003e5c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003cd4:	00251593          	slli	a1,a0,0x2
80003cd8:	40b00533          	neg	a0,a1
80003cdc:	ffc58613          	addi	a2,a1,-4
80003ce0:	c9440593          	addi	a1,s0,-876
80003ce4:	00c585b3          	add	a1,a1,a2
80003ce8:	aa840693          	addi	a3,s0,-1368
80003cec:	00c68633          	add	a2,a3,a2
80003cf0:	04050a63          	beqz	a0,80003d44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdb4>
80003cf4:	00062683          	lw	a3,0(a2)
80003cf8:	0005a703          	lw	a4,0(a1)
80003cfc:	00e6b7b3          	sltu	a5,a3,a4
80003d00:	00d746b3          	xor	a3,a4,a3
80003d04:	00d036b3          	snez	a3,a3
80003d08:	40f00733          	neg	a4,a5
80003d0c:	00d766b3          	or	a3,a4,a3
80003d10:	00450513          	addi	a0,a0,4
80003d14:	ffc58593          	addi	a1,a1,-4
80003d18:	ffc60613          	addi	a2,a2,-4
80003d1c:	fc068ae3          	beqz	a3,80003cf0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd60>
80003d20:	00200513          	li	a0,2
80003d24:	02a6e863          	bltu	a3,a0,80003d54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdc4>
80003d28:	0880006f          	j	80003db0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
80003d2c:	a8442583          	lw	a1,-1404(s0)
80003d30:	a8c42a83          	lw	s5,-1396(s0)
80003d34:	a8842503          	lw	a0,-1400(s0)
80003d38:	aa042903          	lw	s2,-1376(s0)
80003d3c:	092c7063          	bgeu	s8,s2,80003dbc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe2c>
80003d40:	1040006f          	j	80003e44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xeb4>
80003d44:	00153693          	seqz	a3,a0
80003d48:	fff68693          	addi	a3,a3,-1
80003d4c:	00200513          	li	a0,2
80003d50:	06a6f063          	bgeu	a3,a0,80003db0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
80003d54:	00000513          	li	a0,0
80003d58:	012a84b3          	add	s1,s5,s2
80003d5c:	fff00593          	li	a1,-1
80003d60:	03900613          	li	a2,57
80003d64:	00ab06b3          	add	a3,s6,a0
80003d68:	08b68e63          	beq	a3,a1,80003e04 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe74>
80003d6c:	00aa06b3          	add	a3,s4,a0
80003d70:	0006c683          	lbu	a3,0(a3)
80003d74:	fff50513          	addi	a0,a0,-1
80003d78:	fec686e3          	beq	a3,a2,80003d64 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdd4>
80003d7c:	00ab05b3          	add	a1,s6,a0
80003d80:	01558633          	add	a2,a1,s5
80003d84:	00164683          	lbu	a3,1(a2)
80003d88:	00168693          	addi	a3,a3,1
80003d8c:	00258593          	addi	a1,a1,2
80003d90:	00d600a3          	sb	a3,1(a2)
80003d94:	00bb6e63          	bltu	s6,a1,80003db0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
80003d98:	fff54613          	not	a2,a0
80003d9c:	00aa0533          	add	a0,s4,a0
80003da0:	00250513          	addi	a0,a0,2
80003da4:	03000593          	li	a1,48
80003da8:	00007097          	auipc	ra,0x7
80003dac:	e9c080e7          	jalr	-356(ra) # 8000ac44 <memset>
80003db0:	a8442583          	lw	a1,-1404(s0)
80003db4:	a8842503          	lw	a0,-1400(s0)
80003db8:	092c6663          	bltu	s8,s2,80003e44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xeb4>
80003dbc:	0155a023          	sw	s5,0(a1)
80003dc0:	0125a223          	sw	s2,4(a1)
80003dc4:	00a59423          	sh	a0,8(a1)
80003dc8:	57c12083          	lw	ra,1404(sp)
80003dcc:	57812403          	lw	s0,1400(sp)
80003dd0:	57412483          	lw	s1,1396(sp)
80003dd4:	57012903          	lw	s2,1392(sp)
80003dd8:	56c12983          	lw	s3,1388(sp)
80003ddc:	56812a03          	lw	s4,1384(sp)
80003de0:	56412a83          	lw	s5,1380(sp)
80003de4:	56012b03          	lw	s6,1376(sp)
80003de8:	55c12b83          	lw	s7,1372(sp)
80003dec:	55812c03          	lw	s8,1368(sp)
80003df0:	55412c83          	lw	s9,1364(sp)
80003df4:	55012d03          	lw	s10,1360(sp)
80003df8:	54c12d83          	lw	s11,1356(sp)
80003dfc:	58010113          	addi	sp,sp,1408
80003e00:	00008067          	ret
80003e04:	03100513          	li	a0,49
80003e08:	00aa8023          	sb	a0,0(s5)
80003e0c:	000b0c63          	beqz	s6,80003e24 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe94>
80003e10:	001a8513          	addi	a0,s5,1
80003e14:	03000593          	li	a1,48
80003e18:	000b0613          	mv	a2,s6
80003e1c:	00007097          	auipc	ra,0x7
80003e20:	e28080e7          	jalr	-472(ra) # 8000ac44 <memset>
80003e24:	a8442583          	lw	a1,-1404(s0)
80003e28:	19897263          	bgeu	s2,s8,80003fac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x101c>
80003e2c:	03000513          	li	a0,48
80003e30:	00a48023          	sb	a0,0(s1)
80003e34:	002b0913          	addi	s2,s6,2
80003e38:	a8842503          	lw	a0,-1400(s0)
80003e3c:	00150513          	addi	a0,a0,1
80003e40:	f72c7ee3          	bgeu	s8,s2,80003dbc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe2c>
80003e44:	8000c637          	lui	a2,0x8000c
80003e48:	93860613          	addi	a2,a2,-1736 # 8000b938 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.36>
80003e4c:	00090513          	mv	a0,s2
80003e50:	000c0593          	mv	a1,s8
80003e54:	00005097          	auipc	ra,0x5
80003e58:	dc4080e7          	jalr	-572(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003e5c:	8000c637          	lui	a2,0x8000c
80003e60:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003e64:	02800593          	li	a1,40
80003e68:	00005097          	auipc	ra,0x5
80003e6c:	db0080e7          	jalr	-592(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003e70:	8000c637          	lui	a2,0x8000c
80003e74:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003e78:	02800593          	li	a1,40
80003e7c:	00068513          	mv	a0,a3
80003e80:	00005097          	auipc	ra,0x5
80003e84:	d98080e7          	jalr	-616(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003e88:	8000c537          	lui	a0,0x8000c
80003e8c:	4e450513          	addi	a0,a0,1252 # 8000c4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>
80003e90:	8000c637          	lui	a2,0x8000c
80003e94:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003e98:	01a00593          	li	a1,26
80003e9c:	00003097          	auipc	ra,0x3
80003ea0:	ea8080e7          	jalr	-344(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003ea4:	8000c637          	lui	a2,0x8000c
80003ea8:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003eac:	02800593          	li	a1,40
80003eb0:	000a8513          	mv	a0,s5
80003eb4:	00005097          	auipc	ra,0x5
80003eb8:	d64080e7          	jalr	-668(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003ebc:	8000c537          	lui	a0,0x8000c
80003ec0:	84f50513          	addi	a0,a0,-1969 # 8000b84f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80003ec4:	8000c637          	lui	a2,0x8000c
80003ec8:	86c60613          	addi	a2,a2,-1940 # 8000b86c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.27>
80003ecc:	01c00593          	li	a1,28
80003ed0:	00003097          	auipc	ra,0x3
80003ed4:	e74080e7          	jalr	-396(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003ed8:	8000c537          	lui	a0,0x8000c
80003edc:	87c50513          	addi	a0,a0,-1924 # 8000b87c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80003ee0:	8000c637          	lui	a2,0x8000c
80003ee4:	89c60613          	addi	a2,a2,-1892 # 8000b89c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.29>
80003ee8:	01d00593          	li	a1,29
80003eec:	00003097          	auipc	ra,0x3
80003ef0:	e58080e7          	jalr	-424(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003ef4:	8000c537          	lui	a0,0x8000c
80003ef8:	8ac50513          	addi	a0,a0,-1876 # 8000b8ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80003efc:	8000c637          	lui	a2,0x8000c
80003f00:	8c860613          	addi	a2,a2,-1848 # 8000b8c8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.31>
80003f04:	01c00593          	li	a1,28
80003f08:	00003097          	auipc	ra,0x3
80003f0c:	e3c080e7          	jalr	-452(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003f10:	8000c537          	lui	a0,0x8000c
80003f14:	8d850513          	addi	a0,a0,-1832 # 8000b8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
80003f18:	8000c637          	lui	a2,0x8000c
80003f1c:	90860613          	addi	a2,a2,-1784 # 8000b908 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33>
80003f20:	02d00593          	li	a1,45
80003f24:	00003097          	auipc	ra,0x3
80003f28:	e20080e7          	jalr	-480(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003f2c:	8000c637          	lui	a2,0x8000c
80003f30:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003f34:	02800593          	li	a1,40
80003f38:	000a0513          	mv	a0,s4
80003f3c:	00005097          	auipc	ra,0x5
80003f40:	cdc080e7          	jalr	-804(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003f44:	8000c637          	lui	a2,0x8000c
80003f48:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003f4c:	02800513          	li	a0,40
80003f50:	02800593          	li	a1,40
80003f54:	00003097          	auipc	ra,0x3
80003f58:	e38080e7          	jalr	-456(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003f5c:	8000c637          	lui	a2,0x8000c
80003f60:	91860613          	addi	a2,a2,-1768 # 8000b918 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.34>
80003f64:	000c8513          	mv	a0,s9
80003f68:	000c8593          	mv	a1,s9
80003f6c:	00003097          	auipc	ra,0x3
80003f70:	e20080e7          	jalr	-480(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003f74:	8000c537          	lui	a0,0x8000c
80003f78:	99050513          	addi	a0,a0,-1648 # 8000b990 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
80003f7c:	8000c637          	lui	a2,0x8000c
80003f80:	9c860613          	addi	a2,a2,-1592 # 8000b9c8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.40>
80003f84:	03600593          	li	a1,54
80003f88:	00003097          	auipc	ra,0x3
80003f8c:	dbc080e7          	jalr	-580(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003f90:	8000c537          	lui	a0,0x8000c
80003f94:	94850513          	addi	a0,a0,-1720 # 8000b948 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
80003f98:	8000c637          	lui	a2,0x8000c
80003f9c:	98060613          	addi	a2,a2,-1664 # 8000b980 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.38>
80003fa0:	03700593          	li	a1,55
80003fa4:	00003097          	auipc	ra,0x3
80003fa8:	da0080e7          	jalr	-608(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80003fac:	8000c637          	lui	a2,0x8000c
80003fb0:	92860613          	addi	a2,a2,-1752 # 8000b928 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.35>
80003fb4:	00090513          	mv	a0,s2
80003fb8:	000c0593          	mv	a1,s8
80003fbc:	00003097          	auipc	ra,0x3
80003fc0:	dd0080e7          	jalr	-560(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80003fc4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E>:
80003fc4:	c7010113          	addi	sp,sp,-912
80003fc8:	38112623          	sw	ra,908(sp)
80003fcc:	38812423          	sw	s0,904(sp)
80003fd0:	38912223          	sw	s1,900(sp)
80003fd4:	39212023          	sw	s2,896(sp)
80003fd8:	37312e23          	sw	s3,892(sp)
80003fdc:	37412c23          	sw	s4,888(sp)
80003fe0:	37512a23          	sw	s5,884(sp)
80003fe4:	37612823          	sw	s6,880(sp)
80003fe8:	37712623          	sw	s7,876(sp)
80003fec:	37812423          	sw	s8,872(sp)
80003ff0:	37912223          	sw	s9,868(sp)
80003ff4:	37a12023          	sw	s10,864(sp)
80003ff8:	35b12e23          	sw	s11,860(sp)
80003ffc:	39010413          	addi	s0,sp,912
80004000:	0045ab83          	lw	s7,4(a1)
80004004:	0005ab03          	lw	s6,0(a1)
80004008:	017b67b3          	or	a5,s6,s7
8000400c:	50078ee3          	beqz	a5,80004d28 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd64>
80004010:	00068993          	mv	s3,a3
80004014:	00060493          	mv	s1,a2
80004018:	00c5a803          	lw	a6,12(a1)
8000401c:	0085a603          	lw	a2,8(a1)
80004020:	010666b3          	or	a3,a2,a6
80004024:	520680e3          	beqz	a3,80004d44 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd80>
80004028:	00070a13          	mv	s4,a4
8000402c:	0145a703          	lw	a4,20(a1)
80004030:	0105a683          	lw	a3,16(a1)
80004034:	00e6e7b3          	or	a5,a3,a4
80004038:	520784e3          	beqz	a5,80004d60 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd9c>
8000403c:	00db06b3          	add	a3,s6,a3
80004040:	0166b6b3          	sltu	a3,a3,s6
80004044:	00eb8733          	add	a4,s7,a4
80004048:	00d70733          	add	a4,a4,a3
8000404c:	01770463          	beq	a4,s7,80004054 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x90>
80004050:	017736b3          	sltu	a3,a4,s7
80004054:	5c069ce3          	bnez	a3,80004e2c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe68>
80004058:	010b8663          	beq	s7,a6,80004064 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa0>
8000405c:	010bb633          	sltu	a2,s7,a6
80004060:	0080006f          	j	80004068 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa4>
80004064:	00cb3633          	sltu	a2,s6,a2
80004068:	5e0610e3          	bnez	a2,80004e48 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe84>
8000406c:	01859a83          	lh	s5,24(a1)
80004070:	001b3593          	seqz	a1,s6
80004074:	40bb86b3          	sub	a3,s7,a1
80004078:	555555b7          	lui	a1,0x55555
8000407c:	55558613          	addi	a2,a1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80004080:	333335b7          	lui	a1,0x33333
80004084:	33358593          	addi	a1,a1,819 # 33333333 <.Lline_table_start2+0x33331f85>
80004088:	0f0f1737          	lui	a4,0xf0f1
8000408c:	f0f70793          	addi	a5,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80004090:	c8a42423          	sw	a0,-888(s0)
80004094:	06069c63          	bnez	a3,8000410c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x148>
80004098:	fffb0693          	addi	a3,s6,-1
8000409c:	0016d713          	srli	a4,a3,0x1
800040a0:	00e6e6b3          	or	a3,a3,a4
800040a4:	0026d713          	srli	a4,a3,0x2
800040a8:	00e6e6b3          	or	a3,a3,a4
800040ac:	0046d713          	srli	a4,a3,0x4
800040b0:	00e6e6b3          	or	a3,a3,a4
800040b4:	0086d713          	srli	a4,a3,0x8
800040b8:	00e6e6b3          	or	a3,a3,a4
800040bc:	0106d713          	srli	a4,a3,0x10
800040c0:	00e6e6b3          	or	a3,a3,a4
800040c4:	fff6c693          	not	a3,a3
800040c8:	0016d713          	srli	a4,a3,0x1
800040cc:	00c77633          	and	a2,a4,a2
800040d0:	40c686b3          	sub	a3,a3,a2
800040d4:	00b6f633          	and	a2,a3,a1
800040d8:	0026d693          	srli	a3,a3,0x2
800040dc:	00b6f5b3          	and	a1,a3,a1
800040e0:	00b605b3          	add	a1,a2,a1
800040e4:	0045d613          	srli	a2,a1,0x4
800040e8:	00c585b3          	add	a1,a1,a2
800040ec:	00f5f533          	and	a0,a1,a5
800040f0:	00851593          	slli	a1,a0,0x8
800040f4:	00b50533          	add	a0,a0,a1
800040f8:	01051593          	slli	a1,a0,0x10
800040fc:	00b50533          	add	a0,a0,a1
80004100:	01855513          	srli	a0,a0,0x18
80004104:	02050593          	addi	a1,a0,32
80004108:	06c0006f          	j	80004174 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x1b0>
8000410c:	0016d713          	srli	a4,a3,0x1
80004110:	00e6e6b3          	or	a3,a3,a4
80004114:	0026d713          	srli	a4,a3,0x2
80004118:	00e6e6b3          	or	a3,a3,a4
8000411c:	0046d713          	srli	a4,a3,0x4
80004120:	00e6e6b3          	or	a3,a3,a4
80004124:	0086d713          	srli	a4,a3,0x8
80004128:	00e6e6b3          	or	a3,a3,a4
8000412c:	0106d713          	srli	a4,a3,0x10
80004130:	00e6e6b3          	or	a3,a3,a4
80004134:	fff6c693          	not	a3,a3
80004138:	0016d713          	srli	a4,a3,0x1
8000413c:	00c77633          	and	a2,a4,a2
80004140:	40c686b3          	sub	a3,a3,a2
80004144:	00b6f633          	and	a2,a3,a1
80004148:	0026d693          	srli	a3,a3,0x2
8000414c:	00b6f5b3          	and	a1,a3,a1
80004150:	00b605b3          	add	a1,a2,a1
80004154:	0045d613          	srli	a2,a1,0x4
80004158:	00c585b3          	add	a1,a1,a2
8000415c:	00f5f533          	and	a0,a1,a5
80004160:	00851593          	slli	a1,a0,0x8
80004164:	00b50533          	add	a0,a0,a1
80004168:	01051593          	slli	a1,a0,0x10
8000416c:	00b50533          	add	a0,a0,a1
80004170:	01855593          	srli	a1,a0,0x18
80004174:	41fad613          	srai	a2,s5,0x1f
80004178:	40ba8533          	sub	a0,s5,a1
8000417c:	00bab5b3          	sltu	a1,s5,a1
80004180:	40b605b3          	sub	a1,a2,a1
80004184:	4d105637          	lui	a2,0x4d105
80004188:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103994>
8000418c:	00000693          	li	a3,0
80004190:	00006097          	auipc	ra,0x6
80004194:	ba0080e7          	jalr	-1120(ra) # 80009d30 <__muldi3>
80004198:	44135637          	lui	a2,0x44135
8000419c:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133cd2>
800041a0:	00c50633          	add	a2,a0,a2
800041a4:	00a63533          	sltu	a0,a2,a0
800041a8:	00a58533          	add	a0,a1,a0
800041ac:	01350913          	addi	s2,a0,19
800041b0:	01091513          	slli	a0,s2,0x10
800041b4:	41055c93          	srai	s9,a0,0x10
800041b8:	001bb513          	seqz	a0,s7
800041bc:	fff50593          	addi	a1,a0,-1
800041c0:	0175f5b3          	and	a1,a1,s7
800041c4:	00200613          	li	a2,2
800041c8:	40a60633          	sub	a2,a2,a0
800041cc:	d2c42c23          	sw	a2,-712(s0)
800041d0:	c9642c23          	sw	s6,-872(s0)
800041d4:	c8b42e23          	sw	a1,-868(s0)
800041d8:	ca040513          	addi	a0,s0,-864
800041dc:	09800613          	li	a2,152
800041e0:	00000593          	li	a1,0
800041e4:	00007097          	auipc	ra,0x7
800041e8:	a60080e7          	jalr	-1440(ra) # 8000ac44 <memset>
800041ec:	d4040513          	addi	a0,s0,-704
800041f0:	09c00613          	li	a2,156
800041f4:	00000593          	li	a1,0
800041f8:	00007097          	auipc	ra,0x7
800041fc:	a4c080e7          	jalr	-1460(ra) # 8000ac44 <memset>
80004200:	00100513          	li	a0,1
80004204:	dca42e23          	sw	a0,-548(s0)
80004208:	d2a42e23          	sw	a0,-708(s0)
8000420c:	020ac863          	bltz	s5,8000423c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x278>
80004210:	c9840513          	addi	a0,s0,-872
80004214:	000a8593          	mv	a1,s5
80004218:	00005097          	auipc	ra,0x5
8000421c:	ca0080e7          	jalr	-864(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004220:	c8942623          	sw	s1,-884(s0)
80004224:	c9442823          	sw	s4,-880(s0)
80004228:	020ccc63          	bltz	s9,80004260 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x29c>
8000422c:	01191593          	slli	a1,s2,0x11
80004230:	0115d593          	srli	a1,a1,0x11
80004234:	d3c40513          	addi	a0,s0,-708
80004238:	0380006f          	j	80004270 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2ac>
8000423c:	41500533          	neg	a0,s5
80004240:	01051513          	slli	a0,a0,0x10
80004244:	41055593          	srai	a1,a0,0x10
80004248:	d3c40513          	addi	a0,s0,-708
8000424c:	00005097          	auipc	ra,0x5
80004250:	c6c080e7          	jalr	-916(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004254:	c8942623          	sw	s1,-884(s0)
80004258:	c9442823          	sw	s4,-880(s0)
8000425c:	fc0cd8e3          	bgez	s9,8000422c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x268>
80004260:	41900533          	neg	a0,s9
80004264:	01051513          	slli	a0,a0,0x10
80004268:	01055593          	srli	a1,a0,0x10
8000426c:	c9840513          	addi	a0,s0,-872
80004270:	ffffe097          	auipc	ra,0xffffe
80004274:	e78080e7          	jalr	-392(ra) # 800020e8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
80004278:	ddc42a83          	lw	s5,-548(s0)
8000427c:	f2840513          	addi	a0,s0,-216
80004280:	d3c40593          	addi	a1,s0,-708
80004284:	0a000613          	li	a2,160
80004288:	00006097          	auipc	ra,0x6
8000428c:	b30080e7          	jalr	-1232(ra) # 80009db8 <memcpy>
80004290:	00a00513          	li	a0,10
80004294:	fd542423          	sw	s5,-56(s0)
80004298:	00098d93          	mv	s11,s3
8000429c:	c9342a23          	sw	s3,-876(s0)
800042a0:	08a9e463          	bltu	s3,a0,80004328 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x364>
800042a4:	f2440993          	addi	s3,s0,-220
800042a8:	02900a13          	li	s4,41
800042ac:	00900913          	li	s2,9
800042b0:	3b9ad537          	lui	a0,0x3b9ad
800042b4:	a0050b13          	addi	s6,a0,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
800042b8:	c9442d83          	lw	s11,-876(s0)
800042bc:	00c0006f          	j	800042c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x304>
800042c0:	ff7d8d93          	addi	s11,s11,-9
800042c4:	07b97263          	bgeu	s2,s11,80004328 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x364>
800042c8:	fc842503          	lw	a0,-56(s0)
800042cc:	234578e3          	bgeu	a0,s4,80004cfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800042d0:	fe0508e3          	beqz	a0,800042c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2fc>
800042d4:	00000593          	li	a1,0
800042d8:	00251513          	slli	a0,a0,0x2
800042dc:	40a004b3          	neg	s1,a0
800042e0:	00a98d33          	add	s10,s3,a0
800042e4:	000d2b83          	lw	s7,0(s10)
800042e8:	000b8513          	mv	a0,s7
800042ec:	000b0613          	mv	a2,s6
800042f0:	00000693          	li	a3,0
800042f4:	00006097          	auipc	ra,0x6
800042f8:	5d8080e7          	jalr	1496(ra) # 8000a8cc <__udivdi3>
800042fc:	00050c13          	mv	s8,a0
80004300:	000b0613          	mv	a2,s6
80004304:	00000693          	li	a3,0
80004308:	00006097          	auipc	ra,0x6
8000430c:	a28080e7          	jalr	-1496(ra) # 80009d30 <__muldi3>
80004310:	40ab85b3          	sub	a1,s7,a0
80004314:	018d2023          	sw	s8,0(s10)
80004318:	00448493          	addi	s1,s1,4
8000431c:	ffcd0d13          	addi	s10,s10,-4
80004320:	fc0492e3          	bnez	s1,800042e4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x320>
80004324:	f9dff06f          	j	800042c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2fc>
80004328:	002d9d93          	slli	s11,s11,0x2
8000432c:	8000c537          	lui	a0,0x8000c
80004330:	10850513          	addi	a0,a0,264 # 8000c108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
80004334:	01b50533          	add	a0,a0,s11
80004338:	00052b03          	lw	s6,0(a0)
8000433c:	001b1b13          	slli	s6,s6,0x1
80004340:	220b0ee3          	beqz	s6,80004d7c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdb8>
80004344:	fc842503          	lw	a0,-56(s0)
80004348:	02900593          	li	a1,41
8000434c:	1ab578e3          	bgeu	a0,a1,80004cfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004350:	20050863          	beqz	a0,80004560 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x59c>
80004354:	00000593          	li	a1,0
80004358:	00251513          	slli	a0,a0,0x2
8000435c:	40a00933          	neg	s2,a0
80004360:	f2840613          	addi	a2,s0,-216
80004364:	00c50533          	add	a0,a0,a2
80004368:	ffc50493          	addi	s1,a0,-4
8000436c:	c8c42d83          	lw	s11,-884(s0)
80004370:	c9442983          	lw	s3,-876(s0)
80004374:	c9042a03          	lw	s4,-880(s0)
80004378:	0004ab83          	lw	s7,0(s1)
8000437c:	000b8513          	mv	a0,s7
80004380:	000b0613          	mv	a2,s6
80004384:	00000693          	li	a3,0
80004388:	00006097          	auipc	ra,0x6
8000438c:	544080e7          	jalr	1348(ra) # 8000a8cc <__udivdi3>
80004390:	00050c13          	mv	s8,a0
80004394:	000b0613          	mv	a2,s6
80004398:	00000693          	li	a3,0
8000439c:	00006097          	auipc	ra,0x6
800043a0:	994080e7          	jalr	-1644(ra) # 80009d30 <__muldi3>
800043a4:	40ab85b3          	sub	a1,s7,a0
800043a8:	0184a023          	sw	s8,0(s1)
800043ac:	00490913          	addi	s2,s2,4
800043b0:	ffc48493          	addi	s1,s1,-4
800043b4:	fc0912e3          	bnez	s2,80004378 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x3b4>
800043b8:	fc842503          	lw	a0,-56(s0)
800043bc:	d3842b83          	lw	s7,-712(s0)
800043c0:	00abe463          	bltu	s7,a0,800043c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x404>
800043c4:	000b8513          	mv	a0,s7
800043c8:	02800593          	li	a1,40
800043cc:	12a5e8e3          	bltu	a1,a0,80004cfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800043d0:	06050663          	beqz	a0,8000443c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x478>
800043d4:	00000613          	li	a2,0
800043d8:	c9840593          	addi	a1,s0,-872
800043dc:	f2840693          	addi	a3,s0,-216
800043e0:	00050713          	mv	a4,a0
800043e4:	0006a783          	lw	a5,0(a3)
800043e8:	0005a803          	lw	a6,0(a1)
800043ec:	01078833          	add	a6,a5,a6
800043f0:	00f837b3          	sltu	a5,a6,a5
800043f4:	00167613          	andi	a2,a2,1
800043f8:	00c808b3          	add	a7,a6,a2
800043fc:	0108b633          	sltu	a2,a7,a6
80004400:	00c7e633          	or	a2,a5,a2
80004404:	0116a023          	sw	a7,0(a3)
80004408:	00458593          	addi	a1,a1,4
8000440c:	fff70713          	addi	a4,a4,-1
80004410:	00468693          	addi	a3,a3,4
80004414:	fc0718e3          	bnez	a4,800043e4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x420>
80004418:	02060263          	beqz	a2,8000443c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x478>
8000441c:	02800593          	li	a1,40
80004420:	24b502e3          	beq	a0,a1,80004e64 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004424:	00251593          	slli	a1,a0,0x2
80004428:	f2840613          	addi	a2,s0,-216
8000442c:	00b605b3          	add	a1,a2,a1
80004430:	00100613          	li	a2,1
80004434:	00c5a023          	sw	a2,0(a1)
80004438:	00150513          	addi	a0,a0,1
8000443c:	fca42423          	sw	a0,-56(s0)
80004440:	00aae463          	bltu	s5,a0,80004448 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x484>
80004444:	000a8513          	mv	a0,s5
80004448:	02900593          	li	a1,41
8000444c:	0ab578e3          	bgeu	a0,a1,80004cfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004450:	00251593          	slli	a1,a0,0x2
80004454:	40b00533          	neg	a0,a1
80004458:	ffc58613          	addi	a2,a1,-4
8000445c:	d3c40593          	addi	a1,s0,-708
80004460:	00c585b3          	add	a1,a1,a2
80004464:	f2840693          	addi	a3,s0,-216
80004468:	00c68633          	add	a2,a3,a2
8000446c:	04050a63          	beqz	a0,800044c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4fc>
80004470:	00062683          	lw	a3,0(a2)
80004474:	0005a703          	lw	a4,0(a1)
80004478:	00e6b7b3          	sltu	a5,a3,a4
8000447c:	00d746b3          	xor	a3,a4,a3
80004480:	00d036b3          	snez	a3,a3
80004484:	40f00733          	neg	a4,a5
80004488:	00d766b3          	or	a3,a4,a3
8000448c:	00450513          	addi	a0,a0,4
80004490:	ffc58593          	addi	a1,a1,-4
80004494:	ffc60613          	addi	a2,a2,-4
80004498:	fc068ae3          	beqz	a3,8000446c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4a8>
8000449c:	00200513          	li	a0,2
800044a0:	02a6f863          	bgeu	a3,a0,800044d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x50c>
800044a4:	001c8c93          	addi	s9,s9,1
800044a8:	010c9513          	slli	a0,s9,0x10
800044ac:	41055c13          	srai	s8,a0,0x10
800044b0:	00100593          	li	a1,1
800044b4:	094c5c63          	bge	s8,s4,8000454c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x588>
800044b8:	00000b13          	li	s6,0
800044bc:	6180006f          	j	80004ad4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
800044c0:	00153693          	seqz	a3,a0
800044c4:	fff68693          	addi	a3,a3,-1
800044c8:	00200513          	li	a0,2
800044cc:	fca6ece3          	bltu	a3,a0,800044a4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4e0>
800044d0:	060b8463          	beqz	s7,80004538 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x574>
800044d4:	00000913          	li	s2,0
800044d8:	002b9493          	slli	s1,s7,0x2
800044dc:	c9840993          	addi	s3,s0,-872
800044e0:	00998a33          	add	s4,s3,s1
800044e4:	0009a503          	lw	a0,0(s3)
800044e8:	00498b13          	addi	s6,s3,4
800044ec:	00a00613          	li	a2,10
800044f0:	00000593          	li	a1,0
800044f4:	00000693          	li	a3,0
800044f8:	00006097          	auipc	ra,0x6
800044fc:	838080e7          	jalr	-1992(ra) # 80009d30 <__muldi3>
80004500:	01250633          	add	a2,a0,s2
80004504:	00a63933          	sltu	s2,a2,a0
80004508:	01258933          	add	s2,a1,s2
8000450c:	ffc48493          	addi	s1,s1,-4
80004510:	00c9a023          	sw	a2,0(s3)
80004514:	000b0993          	mv	s3,s6
80004518:	fc0496e3          	bnez	s1,800044e4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x520>
8000451c:	00090a63          	beqz	s2,80004530 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x56c>
80004520:	02800513          	li	a0,40
80004524:	14ab80e3          	beq	s7,a0,80004e64 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004528:	012a2023          	sw	s2,0(s4)
8000452c:	001b8b93          	addi	s7,s7,1
80004530:	c9442983          	lw	s3,-876(s0)
80004534:	c9042a03          	lw	s4,-880(s0)
80004538:	d3742c23          	sw	s7,-712(s0)
8000453c:	010c9513          	slli	a0,s9,0x10
80004540:	41055c13          	srai	s8,a0,0x10
80004544:	00100593          	li	a1,1
80004548:	f74c48e3          	blt	s8,s4,800044b8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4f4>
8000454c:	414c0533          	sub	a0,s8,s4
80004550:	03356463          	bltu	a0,s3,80004578 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x5b4>
80004554:	00098b13          	mv	s6,s3
80004558:	02099863          	bnez	s3,80004588 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x5c4>
8000455c:	5780006f          	j	80004ad4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
80004560:	c8c42d83          	lw	s11,-884(s0)
80004564:	c9442983          	lw	s3,-876(s0)
80004568:	c9042a03          	lw	s4,-880(s0)
8000456c:	d3842b83          	lw	s7,-712(s0)
80004570:	e4abfae3          	bgeu	s7,a0,800043c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x400>
80004574:	e55ff06f          	j	800043c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x404>
80004578:	414c8533          	sub	a0,s9,s4
8000457c:	01051513          	slli	a0,a0,0x10
80004580:	41055b13          	srai	s6,a0,0x10
80004584:	540b0863          	beqz	s6,80004ad4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
80004588:	c7842e23          	sw	s8,-900(s0)
8000458c:	de040513          	addi	a0,s0,-544
80004590:	d3c40593          	addi	a1,s0,-708
80004594:	0a000613          	li	a2,160
80004598:	00006097          	auipc	ra,0x6
8000459c:	820080e7          	jalr	-2016(ra) # 80009db8 <memcpy>
800045a0:	e9542023          	sw	s5,-384(s0)
800045a4:	de040513          	addi	a0,s0,-544
800045a8:	00100593          	li	a1,1
800045ac:	00100c13          	li	s8,1
800045b0:	00005097          	auipc	ra,0x5
800045b4:	908080e7          	jalr	-1784(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800045b8:	ddc42483          	lw	s1,-548(s0)
800045bc:	e8440513          	addi	a0,s0,-380
800045c0:	d3c40593          	addi	a1,s0,-708
800045c4:	0a000613          	li	a2,160
800045c8:	00005097          	auipc	ra,0x5
800045cc:	7f0080e7          	jalr	2032(ra) # 80009db8 <memcpy>
800045d0:	f2942223          	sw	s1,-220(s0)
800045d4:	e8440513          	addi	a0,s0,-380
800045d8:	00200593          	li	a1,2
800045dc:	00005097          	auipc	ra,0x5
800045e0:	8dc080e7          	jalr	-1828(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800045e4:	ddc42483          	lw	s1,-548(s0)
800045e8:	f2840513          	addi	a0,s0,-216
800045ec:	d3c40593          	addi	a1,s0,-708
800045f0:	0a000613          	li	a2,160
800045f4:	00005097          	auipc	ra,0x5
800045f8:	7c4080e7          	jalr	1988(ra) # 80009db8 <memcpy>
800045fc:	fc942423          	sw	s1,-56(s0)
80004600:	f2840513          	addi	a0,s0,-216
80004604:	00300593          	li	a1,3
80004608:	00005097          	auipc	ra,0x5
8000460c:	8b0080e7          	jalr	-1872(ra) # 80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004610:	00000f13          	li	t5,0
80004614:	fc842383          	lw	t2,-56(s0)
80004618:	f2442e03          	lw	t3,-220(s0)
8000461c:	e8042e83          	lw	t4,-384(s0)
80004620:	ddc42a83          	lw	s5,-548(s0)
80004624:	d3842b83          	lw	s7,-712(s0)
80004628:	f2440f93          	addi	t6,s0,-220
8000462c:	c9440493          	addi	s1,s0,-876
80004630:	e8040913          	addi	s2,s0,-384
80004634:	ddc40d13          	addi	s10,s0,-548
80004638:	d3840093          	addi	ra,s0,-712
8000463c:	02900713          	li	a4,41
80004640:	6cebf863          	bgeu	s7,a4,80004d10 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004644:	000f0593          	mv	a1,t5
80004648:	001f0f13          	addi	t5,t5,1
8000464c:	002b9513          	slli	a0,s7,0x2
80004650:	c9840613          	addi	a2,s0,-872
80004654:	5c050663          	beqz	a0,80004c20 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc5c>
80004658:	00062683          	lw	a3,0(a2)
8000465c:	00460613          	addi	a2,a2,4
80004660:	ffc50513          	addi	a0,a0,-4
80004664:	fe0688e3          	beqz	a3,80004654 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x690>
80004668:	000b8513          	mv	a0,s7
8000466c:	0173e463          	bltu	t2,s7,80004674 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6b0>
80004670:	00038513          	mv	a0,t2
80004674:	68e57463          	bgeu	a0,a4,80004cfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004678:	00251713          	slli	a4,a0,0x2
8000467c:	40e00633          	neg	a2,a4
80004680:	00ef86b3          	add	a3,t6,a4
80004684:	00e48733          	add	a4,s1,a4
80004688:	08060e63          	beqz	a2,80004724 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x760>
8000468c:	00072783          	lw	a5,0(a4)
80004690:	0006a803          	lw	a6,0(a3)
80004694:	0107b8b3          	sltu	a7,a5,a6
80004698:	00f847b3          	xor	a5,a6,a5
8000469c:	00f037b3          	snez	a5,a5
800046a0:	41100833          	neg	a6,a7
800046a4:	00f867b3          	or	a5,a6,a5
800046a8:	00460613          	addi	a2,a2,4
800046ac:	ffc68693          	addi	a3,a3,-4
800046b0:	ffc70713          	addi	a4,a4,-4
800046b4:	fc078ae3          	beqz	a5,80004688 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6c4>
800046b8:	00200613          	li	a2,2
800046bc:	06c7fc63          	bgeu	a5,a2,80004734 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x770>
800046c0:	00100693          	li	a3,1
800046c4:	f2840613          	addi	a2,s0,-216
800046c8:	c9840713          	addi	a4,s0,-872
800046cc:	00050793          	mv	a5,a0
800046d0:	00062803          	lw	a6,0(a2)
800046d4:	00072883          	lw	a7,0(a4)
800046d8:	fff84813          	not	a6,a6
800046dc:	01088833          	add	a6,a7,a6
800046e0:	011838b3          	sltu	a7,a6,a7
800046e4:	0016f693          	andi	a3,a3,1
800046e8:	00d802b3          	add	t0,a6,a3
800046ec:	0102b6b3          	sltu	a3,t0,a6
800046f0:	00d8e6b3          	or	a3,a7,a3
800046f4:	00572023          	sw	t0,0(a4)
800046f8:	00460613          	addi	a2,a2,4
800046fc:	fff78793          	addi	a5,a5,-1
80004700:	00470713          	addi	a4,a4,4
80004704:	fc0796e3          	bnez	a5,800046d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x70c>
80004708:	6c068063          	beqz	a3,80004dc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
8000470c:	d2a42c23          	sw	a0,-712(s0)
80004710:	00800613          	li	a2,8
80004714:	00050b93          	mv	s7,a0
80004718:	02900693          	li	a3,41
8000471c:	02ae7463          	bgeu	t3,a0,80004744 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x780>
80004720:	0280006f          	j	80004748 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x784>
80004724:	00163793          	seqz	a5,a2
80004728:	fff78793          	addi	a5,a5,-1
8000472c:	00200613          	li	a2,2
80004730:	f8c7e8e3          	bltu	a5,a2,800046c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6fc>
80004734:	00000613          	li	a2,0
80004738:	02900693          	li	a3,41
8000473c:	000b8513          	mv	a0,s7
80004740:	017e6463          	bltu	t3,s7,80004748 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x784>
80004744:	000e0513          	mv	a0,t3
80004748:	5ad57a63          	bgeu	a0,a3,80004cfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
8000474c:	00251793          	slli	a5,a0,0x2
80004750:	40f006b3          	neg	a3,a5
80004754:	00f90733          	add	a4,s2,a5
80004758:	00f487b3          	add	a5,s1,a5
8000475c:	08068e63          	beqz	a3,800047f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x834>
80004760:	0007a803          	lw	a6,0(a5)
80004764:	00072883          	lw	a7,0(a4)
80004768:	011832b3          	sltu	t0,a6,a7
8000476c:	0108c833          	xor	a6,a7,a6
80004770:	01003833          	snez	a6,a6
80004774:	405008b3          	neg	a7,t0
80004778:	0108e833          	or	a6,a7,a6
8000477c:	00468693          	addi	a3,a3,4
80004780:	ffc70713          	addi	a4,a4,-4
80004784:	ffc78793          	addi	a5,a5,-4
80004788:	fc080ae3          	beqz	a6,8000475c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x798>
8000478c:	070c6c63          	bltu	s8,a6,80004804 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x840>
80004790:	04050863          	beqz	a0,800047e0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x81c>
80004794:	00100713          	li	a4,1
80004798:	e8440693          	addi	a3,s0,-380
8000479c:	c9840793          	addi	a5,s0,-872
800047a0:	00050813          	mv	a6,a0
800047a4:	0006a883          	lw	a7,0(a3)
800047a8:	0007a283          	lw	t0,0(a5)
800047ac:	fff8c893          	not	a7,a7
800047b0:	011288b3          	add	a7,t0,a7
800047b4:	0058b2b3          	sltu	t0,a7,t0
800047b8:	00177713          	andi	a4,a4,1
800047bc:	00e88333          	add	t1,a7,a4
800047c0:	01133733          	sltu	a4,t1,a7
800047c4:	00e2e733          	or	a4,t0,a4
800047c8:	0067a023          	sw	t1,0(a5)
800047cc:	00468693          	addi	a3,a3,4
800047d0:	fff80813          	addi	a6,a6,-1
800047d4:	00478793          	addi	a5,a5,4
800047d8:	fc0816e3          	bnez	a6,800047a4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x7e0>
800047dc:	5e070663          	beqz	a4,80004dc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
800047e0:	d2a42c23          	sw	a0,-712(s0)
800047e4:	00466613          	ori	a2,a2,4
800047e8:	00050693          	mv	a3,a0
800047ec:	02900713          	li	a4,41
800047f0:	02aef263          	bgeu	t4,a0,80004814 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x850>
800047f4:	0240006f          	j	80004818 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x854>
800047f8:	0016b813          	seqz	a6,a3
800047fc:	fff80813          	addi	a6,a6,-1
80004800:	f90c78e3          	bgeu	s8,a6,80004790 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x7cc>
80004804:	000b8513          	mv	a0,s7
80004808:	00050693          	mv	a3,a0
8000480c:	02900713          	li	a4,41
80004810:	017ee463          	bltu	t4,s7,80004818 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x854>
80004814:	000e8693          	mv	a3,t4
80004818:	5ee6f263          	bgeu	a3,a4,80004dfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe38>
8000481c:	00269813          	slli	a6,a3,0x2
80004820:	41000733          	neg	a4,a6
80004824:	010d07b3          	add	a5,s10,a6
80004828:	01048833          	add	a6,s1,a6
8000482c:	08070e63          	beqz	a4,800048c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x904>
80004830:	00082883          	lw	a7,0(a6)
80004834:	0007a283          	lw	t0,0(a5)
80004838:	0058b333          	sltu	t1,a7,t0
8000483c:	0112c8b3          	xor	a7,t0,a7
80004840:	011038b3          	snez	a7,a7
80004844:	406002b3          	neg	t0,t1
80004848:	0112e8b3          	or	a7,t0,a7
8000484c:	00470713          	addi	a4,a4,4
80004850:	ffc78793          	addi	a5,a5,-4
80004854:	ffc80813          	addi	a6,a6,-4
80004858:	fc088ae3          	beqz	a7,8000482c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x868>
8000485c:	071c6c63          	bltu	s8,a7,800048d4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x910>
80004860:	04068863          	beqz	a3,800048b0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x8ec>
80004864:	00100713          	li	a4,1
80004868:	de040513          	addi	a0,s0,-544
8000486c:	c9840793          	addi	a5,s0,-872
80004870:	00068813          	mv	a6,a3
80004874:	00052883          	lw	a7,0(a0)
80004878:	0007a283          	lw	t0,0(a5)
8000487c:	fff8c893          	not	a7,a7
80004880:	011288b3          	add	a7,t0,a7
80004884:	0058b2b3          	sltu	t0,a7,t0
80004888:	00177713          	andi	a4,a4,1
8000488c:	00e88333          	add	t1,a7,a4
80004890:	01133733          	sltu	a4,t1,a7
80004894:	00e2e733          	or	a4,t0,a4
80004898:	0067a023          	sw	t1,0(a5)
8000489c:	00450513          	addi	a0,a0,4
800048a0:	fff80813          	addi	a6,a6,-1
800048a4:	00478793          	addi	a5,a5,4
800048a8:	fc0816e3          	bnez	a6,80004874 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x8b0>
800048ac:	50070e63          	beqz	a4,80004dc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
800048b0:	d2d42c23          	sw	a3,-712(s0)
800048b4:	00260613          	addi	a2,a2,2
800048b8:	00068b93          	mv	s7,a3
800048bc:	02900513          	li	a0,41
800048c0:	02daf263          	bgeu	s5,a3,800048e4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x920>
800048c4:	0240006f          	j	800048e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x924>
800048c8:	00173893          	seqz	a7,a4
800048cc:	fff88893          	addi	a7,a7,-1
800048d0:	f91c78e3          	bgeu	s8,a7,80004860 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x89c>
800048d4:	00050693          	mv	a3,a0
800048d8:	00068b93          	mv	s7,a3
800048dc:	02900513          	li	a0,41
800048e0:	00dae463          	bltu	s5,a3,800048e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x924>
800048e4:	000a8b93          	mv	s7,s5
800048e8:	42abf463          	bgeu	s7,a0,80004d10 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
800048ec:	002b9793          	slli	a5,s7,0x2
800048f0:	40f00533          	neg	a0,a5
800048f4:	00f08733          	add	a4,ra,a5
800048f8:	00f487b3          	add	a5,s1,a5
800048fc:	08050863          	beqz	a0,8000498c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9c8>
80004900:	0007a803          	lw	a6,0(a5)
80004904:	00072883          	lw	a7,0(a4)
80004908:	011832b3          	sltu	t0,a6,a7
8000490c:	0108c833          	xor	a6,a7,a6
80004910:	01003833          	snez	a6,a6
80004914:	405008b3          	neg	a7,t0
80004918:	0108e833          	or	a6,a7,a6
8000491c:	00450513          	addi	a0,a0,4
80004920:	ffc70713          	addi	a4,a4,-4
80004924:	ffc78793          	addi	a5,a5,-4
80004928:	fc080ae3          	beqz	a6,800048fc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x938>
8000492c:	070c6663          	bltu	s8,a6,80004998 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9d4>
80004930:	040b8863          	beqz	s7,80004980 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9bc>
80004934:	00100693          	li	a3,1
80004938:	d3c40513          	addi	a0,s0,-708
8000493c:	c9840713          	addi	a4,s0,-872
80004940:	000b8793          	mv	a5,s7
80004944:	00052803          	lw	a6,0(a0)
80004948:	00072883          	lw	a7,0(a4)
8000494c:	fff84813          	not	a6,a6
80004950:	01088833          	add	a6,a7,a6
80004954:	011838b3          	sltu	a7,a6,a7
80004958:	0016f693          	andi	a3,a3,1
8000495c:	00d802b3          	add	t0,a6,a3
80004960:	0102b6b3          	sltu	a3,t0,a6
80004964:	00d8e6b3          	or	a3,a7,a3
80004968:	00572023          	sw	t0,0(a4)
8000496c:	00450513          	addi	a0,a0,4
80004970:	fff78793          	addi	a5,a5,-1
80004974:	00470713          	addi	a4,a4,4
80004978:	fc0796e3          	bnez	a5,80004944 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x980>
8000497c:	44068663          	beqz	a3,80004dc8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004980:	d3742c23          	sw	s7,-712(s0)
80004984:	00160613          	addi	a2,a2,1
80004988:	0140006f          	j	8000499c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9d8>
8000498c:	00153813          	seqz	a6,a0
80004990:	fff80813          	addi	a6,a6,-1
80004994:	f90c7ee3          	bgeu	s8,a6,80004930 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x96c>
80004998:	00068b93          	mv	s7,a3
8000499c:	02900713          	li	a4,41
800049a0:	4d358e63          	beq	a1,s3,80004e7c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xeb8>
800049a4:	03060513          	addi	a0,a2,48
800049a8:	00bd85b3          	add	a1,s11,a1
800049ac:	00a58023          	sb	a0,0(a1)
800049b0:	36ebf063          	bgeu	s7,a4,80004d10 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
800049b4:	0c0b8263          	beqz	s7,80004a78 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xab4>
800049b8:	000c8513          	mv	a0,s9
800049bc:	00008c93          	mv	s9,ra
800049c0:	c9e42023          	sw	t5,-896(s0)
800049c4:	c8a42223          	sw	a0,-892(s0)
800049c8:	000e8913          	mv	s2,t4
800049cc:	000e0d13          	mv	s10,t3
800049d0:	00038c13          	mv	s8,t2
800049d4:	00000a13          	li	s4,0
800049d8:	002b9493          	slli	s1,s7,0x2
800049dc:	c9840513          	addi	a0,s0,-872
800049e0:	00950533          	add	a0,a0,s1
800049e4:	c6a42c23          	sw	a0,-904(s0)
800049e8:	c9840993          	addi	s3,s0,-872
800049ec:	0009a503          	lw	a0,0(s3)
800049f0:	00498d93          	addi	s11,s3,4
800049f4:	00a00613          	li	a2,10
800049f8:	00000593          	li	a1,0
800049fc:	00000693          	li	a3,0
80004a00:	00005097          	auipc	ra,0x5
80004a04:	330080e7          	jalr	816(ra) # 80009d30 <__muldi3>
80004a08:	01450633          	add	a2,a0,s4
80004a0c:	00a63a33          	sltu	s4,a2,a0
80004a10:	01458a33          	add	s4,a1,s4
80004a14:	ffc48493          	addi	s1,s1,-4
80004a18:	00c9a023          	sw	a2,0(s3)
80004a1c:	000d8993          	mv	s3,s11
80004a20:	fc0496e3          	bnez	s1,800049ec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa28>
80004a24:	060a0063          	beqz	s4,80004a84 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xac0>
80004a28:	02900713          	li	a4,41
80004a2c:	02800513          	li	a0,40
80004a30:	42ab8a63          	beq	s7,a0,80004e64 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004a34:	000c0393          	mv	t2,s8
80004a38:	000c8093          	mv	ra,s9
80004a3c:	c7842503          	lw	a0,-904(s0)
80004a40:	01452023          	sw	s4,0(a0)
80004a44:	001b8b93          	addi	s7,s7,1
80004a48:	c8c42d83          	lw	s11,-884(s0)
80004a4c:	c9442983          	lw	s3,-876(s0)
80004a50:	c9042a03          	lw	s4,-880(s0)
80004a54:	00100c13          	li	s8,1
80004a58:	000d0e13          	mv	t3,s10
80004a5c:	00090e93          	mv	t4,s2
80004a60:	c8442c83          	lw	s9,-892(s0)
80004a64:	c8042f03          	lw	t5,-896(s0)
80004a68:	f2440f93          	addi	t6,s0,-220
80004a6c:	c9440493          	addi	s1,s0,-876
80004a70:	e8040913          	addi	s2,s0,-384
80004a74:	ddc40d13          	addi	s10,s0,-548
80004a78:	d3742c23          	sw	s7,-712(s0)
80004a7c:	bd6f12e3          	bne	t5,s6,80004640 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x67c>
80004a80:	04c0006f          	j	80004acc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb08>
80004a84:	c8c42d83          	lw	s11,-884(s0)
80004a88:	c9442983          	lw	s3,-876(s0)
80004a8c:	c9042a03          	lw	s4,-880(s0)
80004a90:	000c0393          	mv	t2,s8
80004a94:	00100c13          	li	s8,1
80004a98:	000d0e13          	mv	t3,s10
80004a9c:	00090e93          	mv	t4,s2
80004aa0:	c8442503          	lw	a0,-892(s0)
80004aa4:	c8042f03          	lw	t5,-896(s0)
80004aa8:	f2440f93          	addi	t6,s0,-220
80004aac:	c9440493          	addi	s1,s0,-876
80004ab0:	e8040913          	addi	s2,s0,-384
80004ab4:	ddc40d13          	addi	s10,s0,-548
80004ab8:	000c8093          	mv	ra,s9
80004abc:	00050c93          	mv	s9,a0
80004ac0:	02900713          	li	a4,41
80004ac4:	d3742c23          	sw	s7,-712(s0)
80004ac8:	b76f1ce3          	bne	t5,s6,80004640 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x67c>
80004acc:	00000593          	li	a1,0
80004ad0:	c7c42c03          	lw	s8,-900(s0)
80004ad4:	02900513          	li	a0,41
80004ad8:	2caaf063          	bgeu	s5,a0,80004d98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdd4>
80004adc:	040a8e63          	beqz	s5,80004b38 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb74>
80004ae0:	00000693          	li	a3,0
80004ae4:	002a9613          	slli	a2,s5,0x2
80004ae8:	d3c40713          	addi	a4,s0,-708
80004aec:	00c70533          	add	a0,a4,a2
80004af0:	00072783          	lw	a5,0(a4)
80004af4:	00279813          	slli	a6,a5,0x2
80004af8:	00f808b3          	add	a7,a6,a5
80004afc:	00d886b3          	add	a3,a7,a3
80004b00:	00d72023          	sw	a3,0(a4)
80004b04:	00470713          	addi	a4,a4,4
80004b08:	0108b833          	sltu	a6,a7,a6
80004b0c:	01e7d793          	srli	a5,a5,0x1e
80004b10:	010787b3          	add	a5,a5,a6
80004b14:	0116b6b3          	sltu	a3,a3,a7
80004b18:	ffc60613          	addi	a2,a2,-4
80004b1c:	00d786b3          	add	a3,a5,a3
80004b20:	fc0618e3          	bnez	a2,80004af0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb2c>
80004b24:	00068a63          	beqz	a3,80004b38 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb74>
80004b28:	02800613          	li	a2,40
80004b2c:	32ca8c63          	beq	s5,a2,80004e64 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004b30:	00d52023          	sw	a3,0(a0)
80004b34:	001a8a93          	addi	s5,s5,1
80004b38:	dd542e23          	sw	s5,-548(s0)
80004b3c:	017ae463          	bltu	s5,s7,80004b44 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb80>
80004b40:	000a8b93          	mv	s7,s5
80004b44:	02900513          	li	a0,41
80004b48:	1cabf463          	bgeu	s7,a0,80004d10 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004b4c:	002b9b93          	slli	s7,s7,0x2
80004b50:	41700533          	neg	a0,s7
80004b54:	ffcb8693          	addi	a3,s7,-4
80004b58:	d3c40613          	addi	a2,s0,-708
80004b5c:	00d60633          	add	a2,a2,a3
80004b60:	c9840713          	addi	a4,s0,-872
80004b64:	00d706b3          	add	a3,a4,a3
80004b68:	0a050063          	beqz	a0,80004c08 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc44>
80004b6c:	0006a703          	lw	a4,0(a3)
80004b70:	00062783          	lw	a5,0(a2)
80004b74:	00f73833          	sltu	a6,a4,a5
80004b78:	00e7c733          	xor	a4,a5,a4
80004b7c:	00e03733          	snez	a4,a4
80004b80:	410007b3          	neg	a5,a6
80004b84:	00e7e733          	or	a4,a5,a4
80004b88:	00450513          	addi	a0,a0,4
80004b8c:	ffc60613          	addi	a2,a2,-4
80004b90:	ffc68693          	addi	a3,a3,-4
80004b94:	fc070ae3          	beqz	a4,80004b68 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xba4>
80004b98:	06070e63          	beqz	a4,80004c14 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc50>
80004b9c:	0ff77513          	zext.b	a0,a4
80004ba0:	00100613          	li	a2,1
80004ba4:	0ec51c63          	bne	a0,a2,80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004ba8:	2769e663          	bltu	s3,s6,80004e14 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe50>
80004bac:	00000513          	li	a0,0
80004bb0:	016d8933          	add	s2,s11,s6
80004bb4:	fff00613          	li	a2,-1
80004bb8:	03900713          	li	a4,57
80004bbc:	000d8693          	mv	a3,s11
80004bc0:	08ab0063          	beq	s6,a0,80004c40 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc7c>
80004bc4:	016687b3          	add	a5,a3,s6
80004bc8:	fff7c783          	lbu	a5,-1(a5)
80004bcc:	00150513          	addi	a0,a0,1
80004bd0:	00160613          	addi	a2,a2,1
80004bd4:	fff68693          	addi	a3,a3,-1
80004bd8:	fee784e3          	beq	a5,a4,80004bc0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbfc>
80004bdc:	01668533          	add	a0,a3,s6
80004be0:	00054583          	lbu	a1,0(a0)
80004be4:	00158593          	addi	a1,a1,1
80004be8:	40cb06b3          	sub	a3,s6,a2
80004bec:	00b50023          	sb	a1,0(a0)
80004bf0:	0b66f663          	bgeu	a3,s6,80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004bf4:	00150513          	addi	a0,a0,1
80004bf8:	03000593          	li	a1,48
80004bfc:	00006097          	auipc	ra,0x6
80004c00:	048080e7          	jalr	72(ra) # 8000ac44 <memset>
80004c04:	0980006f          	j	80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004c08:	00153713          	seqz	a4,a0
80004c0c:	fff70713          	addi	a4,a4,-1
80004c10:	f80716e3          	bnez	a4,80004b9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbd8>
80004c14:	06058863          	beqz	a1,80004c84 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcc0>
80004c18:	00000b13          	li	s6,0
80004c1c:	0840006f          	j	80004ca0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004c20:	1d69e263          	bltu	s3,s6,80004de4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe20>
80004c24:	06bb0e63          	beq	s6,a1,80004ca0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004c28:	00bd8533          	add	a0,s11,a1
80004c2c:	40bb0633          	sub	a2,s6,a1
80004c30:	03000593          	li	a1,48
80004c34:	00006097          	auipc	ra,0x6
80004c38:	010080e7          	jalr	16(ra) # 8000ac44 <memset>
80004c3c:	0640006f          	j	80004ca0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004c40:	03100493          	li	s1,49
80004c44:	02059463          	bnez	a1,80004c6c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xca8>
80004c48:	03100513          	li	a0,49
80004c4c:	fffb0613          	addi	a2,s6,-1
80004c50:	00ad8023          	sb	a0,0(s11)
80004c54:	08060c63          	beqz	a2,80004cec <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd28>
80004c58:	001d8513          	addi	a0,s11,1
80004c5c:	03000593          	li	a1,48
80004c60:	03000493          	li	s1,48
80004c64:	00006097          	auipc	ra,0x6
80004c68:	fe0080e7          	jalr	-32(ra) # 8000ac44 <memset>
80004c6c:	001c8c93          	addi	s9,s9,1
80004c70:	034c4663          	blt	s8,s4,80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004c74:	033b7463          	bgeu	s6,s3,80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004c78:	00990023          	sb	s1,0(s2)
80004c7c:	001b0b13          	addi	s6,s6,1
80004c80:	01c0006f          	j	80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004c84:	fffb0513          	addi	a0,s6,-1
80004c88:	21357663          	bgeu	a0,s3,80004e94 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xed0>
80004c8c:	00ad8533          	add	a0,s11,a0
80004c90:	00054503          	lbu	a0,0(a0)
80004c94:	00157513          	andi	a0,a0,1
80004c98:	f00518e3          	bnez	a0,80004ba8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbe4>
80004c9c:	1169ea63          	bltu	s3,s6,80004db0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdec>
80004ca0:	c8842503          	lw	a0,-888(s0)
80004ca4:	01b52023          	sw	s11,0(a0)
80004ca8:	01652223          	sw	s6,4(a0)
80004cac:	01951423          	sh	s9,8(a0)
80004cb0:	38c12083          	lw	ra,908(sp)
80004cb4:	38812403          	lw	s0,904(sp)
80004cb8:	38412483          	lw	s1,900(sp)
80004cbc:	38012903          	lw	s2,896(sp)
80004cc0:	37c12983          	lw	s3,892(sp)
80004cc4:	37812a03          	lw	s4,888(sp)
80004cc8:	37412a83          	lw	s5,884(sp)
80004ccc:	37012b03          	lw	s6,880(sp)
80004cd0:	36c12b83          	lw	s7,876(sp)
80004cd4:	36812c03          	lw	s8,872(sp)
80004cd8:	36412c83          	lw	s9,868(sp)
80004cdc:	36012d03          	lw	s10,864(sp)
80004ce0:	35c12d83          	lw	s11,860(sp)
80004ce4:	39010113          	addi	sp,sp,912
80004ce8:	00008067          	ret
80004cec:	03000493          	li	s1,48
80004cf0:	001c8c93          	addi	s9,s9,1
80004cf4:	f94c50e3          	bge	s8,s4,80004c74 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcb0>
80004cf8:	fa5ff06f          	j	80004c9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004cfc:	8000c637          	lui	a2,0x8000c
80004d00:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004d04:	02800593          	li	a1,40
80004d08:	00004097          	auipc	ra,0x4
80004d0c:	f10080e7          	jalr	-240(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004d10:	8000c637          	lui	a2,0x8000c
80004d14:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004d18:	02800593          	li	a1,40
80004d1c:	000b8513          	mv	a0,s7
80004d20:	00004097          	auipc	ra,0x4
80004d24:	ef8080e7          	jalr	-264(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004d28:	8000c537          	lui	a0,0x8000c
80004d2c:	84f50513          	addi	a0,a0,-1969 # 8000b84f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80004d30:	8000c637          	lui	a2,0x8000c
80004d34:	9d860613          	addi	a2,a2,-1576 # 8000b9d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.41>
80004d38:	01c00593          	li	a1,28
80004d3c:	00002097          	auipc	ra,0x2
80004d40:	008080e7          	jalr	8(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004d44:	8000c537          	lui	a0,0x8000c
80004d48:	87c50513          	addi	a0,a0,-1924 # 8000b87c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80004d4c:	8000c637          	lui	a2,0x8000c
80004d50:	9e860613          	addi	a2,a2,-1560 # 8000b9e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.42>
80004d54:	01d00593          	li	a1,29
80004d58:	00002097          	auipc	ra,0x2
80004d5c:	fec080e7          	jalr	-20(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004d60:	8000c537          	lui	a0,0x8000c
80004d64:	8ac50513          	addi	a0,a0,-1876 # 8000b8ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80004d68:	8000c637          	lui	a2,0x8000c
80004d6c:	9f860613          	addi	a2,a2,-1544 # 8000b9f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.43>
80004d70:	01c00593          	li	a1,28
80004d74:	00002097          	auipc	ra,0x2
80004d78:	fd0080e7          	jalr	-48(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004d7c:	8000c537          	lui	a0,0x8000c
80004d80:	51b50513          	addi	a0,a0,1307 # 8000c51b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.418>
80004d84:	8000c637          	lui	a2,0x8000c
80004d88:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004d8c:	01b00593          	li	a1,27
80004d90:	00002097          	auipc	ra,0x2
80004d94:	fb4080e7          	jalr	-76(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004d98:	8000c637          	lui	a2,0x8000c
80004d9c:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004da0:	02800593          	li	a1,40
80004da4:	000a8513          	mv	a0,s5
80004da8:	00004097          	auipc	ra,0x4
80004dac:	e70080e7          	jalr	-400(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004db0:	8000c637          	lui	a2,0x8000c
80004db4:	a2860613          	addi	a2,a2,-1496 # 8000ba28 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46>
80004db8:	000b0513          	mv	a0,s6
80004dbc:	00098593          	mv	a1,s3
80004dc0:	00004097          	auipc	ra,0x4
80004dc4:	e58080e7          	jalr	-424(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004dc8:	8000c537          	lui	a0,0x8000c
80004dcc:	4e450513          	addi	a0,a0,1252 # 8000c4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>
80004dd0:	8000c637          	lui	a2,0x8000c
80004dd4:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004dd8:	01a00593          	li	a1,26
80004ddc:	00002097          	auipc	ra,0x2
80004de0:	f68080e7          	jalr	-152(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004de4:	8000c637          	lui	a2,0x8000c
80004de8:	a4860613          	addi	a2,a2,-1464 # 8000ba48 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.48>
80004dec:	000b0513          	mv	a0,s6
80004df0:	00098593          	mv	a1,s3
80004df4:	00004097          	auipc	ra,0x4
80004df8:	e24080e7          	jalr	-476(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004dfc:	8000c637          	lui	a2,0x8000c
80004e00:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004e04:	02800593          	li	a1,40
80004e08:	00068513          	mv	a0,a3
80004e0c:	00004097          	auipc	ra,0x4
80004e10:	e0c080e7          	jalr	-500(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004e14:	8000c637          	lui	a2,0x8000c
80004e18:	a1860613          	addi	a2,a2,-1512 # 8000ba18 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.45>
80004e1c:	000b0513          	mv	a0,s6
80004e20:	00098593          	mv	a1,s3
80004e24:	00004097          	auipc	ra,0x4
80004e28:	df4080e7          	jalr	-524(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004e2c:	8000c537          	lui	a0,0x8000c
80004e30:	99050513          	addi	a0,a0,-1648 # 8000b990 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
80004e34:	8000c637          	lui	a2,0x8000c
80004e38:	a6860613          	addi	a2,a2,-1432 # 8000ba68 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.50>
80004e3c:	03600593          	li	a1,54
80004e40:	00002097          	auipc	ra,0x2
80004e44:	f04080e7          	jalr	-252(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004e48:	8000c537          	lui	a0,0x8000c
80004e4c:	94850513          	addi	a0,a0,-1720 # 8000b948 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
80004e50:	8000c637          	lui	a2,0x8000c
80004e54:	a5860613          	addi	a2,a2,-1448 # 8000ba58 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.49>
80004e58:	03700593          	li	a1,55
80004e5c:	00002097          	auipc	ra,0x2
80004e60:	ee8080e7          	jalr	-280(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004e64:	8000c637          	lui	a2,0x8000c
80004e68:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004e6c:	02800513          	li	a0,40
80004e70:	02800593          	li	a1,40
80004e74:	00002097          	auipc	ra,0x2
80004e78:	f18080e7          	jalr	-232(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80004e7c:	8000c637          	lui	a2,0x8000c
80004e80:	a3860613          	addi	a2,a2,-1480 # 8000ba38 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.47>
80004e84:	00098513          	mv	a0,s3
80004e88:	00098593          	mv	a1,s3
80004e8c:	00002097          	auipc	ra,0x2
80004e90:	f00080e7          	jalr	-256(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80004e94:	8000c637          	lui	a2,0x8000c
80004e98:	a0860613          	addi	a2,a2,-1528 # 8000ba08 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.44>
80004e9c:	00098593          	mv	a1,s3
80004ea0:	00002097          	auipc	ra,0x2
80004ea4:	eec080e7          	jalr	-276(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80004ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE>:
80004ea8:	f4010113          	addi	sp,sp,-192
80004eac:	0a112e23          	sw	ra,188(sp)
80004eb0:	0a812c23          	sw	s0,184(sp)
80004eb4:	0a912a23          	sw	s1,180(sp)
80004eb8:	0b212823          	sw	s2,176(sp)
80004ebc:	0b312623          	sw	s3,172(sp)
80004ec0:	0b412423          	sw	s4,168(sp)
80004ec4:	0b512223          	sw	s5,164(sp)
80004ec8:	0b612023          	sw	s6,160(sp)
80004ecc:	09712e23          	sw	s7,156(sp)
80004ed0:	09812c23          	sw	s8,152(sp)
80004ed4:	09912a23          	sw	s9,148(sp)
80004ed8:	09a12823          	sw	s10,144(sp)
80004edc:	09b12623          	sw	s11,140(sp)
80004ee0:	0c010413          	addi	s0,sp,192
80004ee4:	0045a703          	lw	a4,4(a1)
80004ee8:	0005a783          	lw	a5,0(a1)
80004eec:	00e7e833          	or	a6,a5,a4
80004ef0:	f8d42823          	sw	a3,-112(s0)
80004ef4:	660808e3          	beqz	a6,80005d64 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xebc>
80004ef8:	00050e93          	mv	t4,a0
80004efc:	00c5a683          	lw	a3,12(a1)
80004f00:	0085ae03          	lw	t3,8(a1)
80004f04:	00de6533          	or	a0,t3,a3
80004f08:	66050ce3          	beqz	a0,80005d80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xed8>
80004f0c:	0145a883          	lw	a7,20(a1)
80004f10:	0105a503          	lw	a0,16(a1)
80004f14:	01156833          	or	a6,a0,a7
80004f18:	680802e3          	beqz	a6,80005d9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xef4>
80004f1c:	00a78833          	add	a6,a5,a0
80004f20:	00f832b3          	sltu	t0,a6,a5
80004f24:	011708b3          	add	a7,a4,a7
80004f28:	00588333          	add	t1,a7,t0
80004f2c:	00e30463          	beq	t1,a4,80004f34 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8c>
80004f30:	00e332b3          	sltu	t0,t1,a4
80004f34:	700294e3          	bnez	t0,80005e3c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf94>
80004f38:	00d70663          	beq	a4,a3,80004f44 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9c>
80004f3c:	00d732b3          	sltu	t0,a4,a3
80004f40:	0080006f          	j	80004f48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa0>
80004f44:	01c7b2b3          	sltu	t0,a5,t3
80004f48:	700298e3          	bnez	t0,80005e58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xfb0>
80004f4c:	01000293          	li	t0,16
80004f50:	f9042303          	lw	t1,-112(s0)
80004f54:	6662f2e3          	bgeu	t0,t1,80005db8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf10>
80004f58:	00a83533          	sltu	a0,a6,a0
80004f5c:	00a888b3          	add	a7,a7,a0
80004f60:	01d8d513          	srli	a0,a7,0x1d
80004f64:	660518e3          	bnez	a0,80005dd4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf2c>
80004f68:	0185d503          	lhu	a0,24(a1)
80004f6c:	0018b393          	seqz	t2,a7
80004f70:	407005b3          	neg	a1,t2
80004f74:	fe05f593          	andi	a1,a1,-32
80004f78:	00b505b3          	add	a1,a0,a1
80004f7c:	00539393          	slli	t2,t2,0x5
80004f80:	fe038313          	addi	t1,t2,-32
80004f84:	007812b3          	sll	t0,a6,t2
80004f88:	f6c42a23          	sw	a2,-140(s0)
80004f8c:	00034663          	bltz	t1,80004f98 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf0>
80004f90:	00028813          	mv	a6,t0
80004f94:	0080006f          	j	80004f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf4>
80004f98:	00789833          	sll	a6,a7,t2
80004f9c:	41f35893          	srai	a7,t1,0x1f
80004fa0:	0058f8b3          	and	a7,a7,t0
80004fa4:	01085293          	srli	t0,a6,0x10
80004fa8:	0012b293          	seqz	t0,t0
80004fac:	40500333          	neg	t1,t0
80004fb0:	ff037313          	andi	t1,t1,-16
80004fb4:	006585b3          	add	a1,a1,t1
80004fb8:	00429293          	slli	t0,t0,0x4
80004fbc:	00581833          	sll	a6,a6,t0
80004fc0:	01f2c313          	xori	t1,t0,31
80004fc4:	0018d393          	srli	t2,a7,0x1
80004fc8:	0063d333          	srl	t1,t2,t1
80004fcc:	00686333          	or	t1,a6,t1
80004fd0:	005898b3          	sll	a7,a7,t0
80004fd4:	01885813          	srli	a6,a6,0x18
80004fd8:	00183813          	seqz	a6,a6
80004fdc:	410002b3          	neg	t0,a6
80004fe0:	ff82f293          	andi	t0,t0,-8
80004fe4:	005585b3          	add	a1,a1,t0
80004fe8:	00381813          	slli	a6,a6,0x3
80004fec:	010312b3          	sll	t0,t1,a6
80004ff0:	01f84313          	xori	t1,a6,31
80004ff4:	0018d393          	srli	t2,a7,0x1
80004ff8:	0063d333          	srl	t1,t2,t1
80004ffc:	0062e333          	or	t1,t0,t1
80005000:	01089833          	sll	a6,a7,a6
80005004:	01c2d893          	srli	a7,t0,0x1c
80005008:	0018b893          	seqz	a7,a7
8000500c:	411002b3          	neg	t0,a7
80005010:	ffc2f293          	andi	t0,t0,-4
80005014:	005585b3          	add	a1,a1,t0
80005018:	00289893          	slli	a7,a7,0x2
8000501c:	011312b3          	sll	t0,t1,a7
80005020:	01f8c313          	xori	t1,a7,31
80005024:	00185393          	srli	t2,a6,0x1
80005028:	0063d333          	srl	t1,t2,t1
8000502c:	0062e333          	or	t1,t0,t1
80005030:	011814b3          	sll	s1,a6,a7
80005034:	01e2d813          	srli	a6,t0,0x1e
80005038:	00183a93          	seqz	s5,a6
8000503c:	41500833          	neg	a6,s5
80005040:	ffe87813          	andi	a6,a6,-2
80005044:	010585b3          	add	a1,a1,a6
80005048:	001a9a93          	slli	s5,s5,0x1
8000504c:	01531833          	sll	a6,t1,s5
80005050:	01fac893          	xori	a7,s5,31
80005054:	0014d293          	srli	t0,s1,0x1
80005058:	0112d8b3          	srl	a7,t0,a7
8000505c:	01186933          	or	s2,a6,a7
80005060:	00092b13          	slti	s6,s2,0
80005064:	001b4a13          	xori	s4,s6,1
80005068:	414589b3          	sub	s3,a1,s4
8000506c:	01c7b5b3          	sltu	a1,a5,t3
80005070:	40d706b3          	sub	a3,a4,a3
80005074:	40b688b3          	sub	a7,a3,a1
80005078:	41c782b3          	sub	t0,a5,t3
8000507c:	f8542c23          	sw	t0,-104(s0)
80005080:	f9142e23          	sw	a7,-100(s0)
80005084:	413505b3          	sub	a1,a0,s3
80005088:	01059593          	slli	a1,a1,0x10
8000508c:	faa41023          	sh	a0,-96(s0)
80005090:	5605c0e3          	bltz	a1,80005df0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf48>
80005094:	4105d313          	srai	t1,a1,0x10
80005098:	03f37593          	andi	a1,t1,63
8000509c:	fe058693          	addi	a3,a1,-32
800050a0:	fff5c613          	not	a2,a1
800050a4:	0206c663          	bltz	a3,800050d0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x228>
800050a8:	00b29c33          	sll	s8,t0,a1
800050ac:	006293b3          	sll	t2,t0,t1
800050b0:	41f6d813          	srai	a6,a3,0x1f
800050b4:	00787f33          	and	t5,a6,t2
800050b8:	0206dc63          	bgez	a3,800050f0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x248>
800050bc:	001c1393          	slli	t2,s8,0x1
800050c0:	00c393b3          	sll	t2,t2,a2
800050c4:	006f5e33          	srl	t3,t5,t1
800050c8:	007e63b3          	or	t2,t3,t2
800050cc:	0280006f          	j	800050f4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x24c>
800050d0:	00689833          	sll	a6,a7,t1
800050d4:	0012d393          	srli	t2,t0,0x1
800050d8:	00c3d3b3          	srl	t2,t2,a2
800050dc:	00786c33          	or	s8,a6,t2
800050e0:	006293b3          	sll	t2,t0,t1
800050e4:	41f6d813          	srai	a6,a3,0x1f
800050e8:	00787f33          	and	t5,a6,t2
800050ec:	fc06c8e3          	bltz	a3,800050bc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x214>
800050f0:	00bc53b3          	srl	t2,s8,a1
800050f4:	006c5333          	srl	t1,s8,t1
800050f8:	00687333          	and	t1,a6,t1
800050fc:	fa642623          	sw	t1,-84(s0)
80005100:	0053c2b3          	xor	t0,t2,t0
80005104:	011348b3          	xor	a7,t1,a7
80005108:	0112e8b3          	or	a7,t0,a7
8000510c:	fa742423          	sw	t2,-88(s0)
80005110:	42089ee3          	bnez	a7,80005d4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xea4>
80005114:	f8e42e23          	sw	a4,-100(s0)
80005118:	f8f42c23          	sw	a5,-104(s0)
8000511c:	faa41023          	sh	a0,-96(s0)
80005120:	00b79533          	sll	a0,a5,a1
80005124:	0206c463          	bltz	a3,8000514c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2a4>
80005128:	00050d13          	mv	s10,a0
8000512c:	00a87bb3          	and	s7,a6,a0
80005130:	00b55533          	srl	a0,a0,a1
80005134:	0206da63          	bgez	a3,80005168 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2c0>
80005138:	001d1693          	slli	a3,s10,0x1
8000513c:	00c69633          	sll	a2,a3,a2
80005140:	00bbd5b3          	srl	a1,s7,a1
80005144:	00c5e5b3          	or	a1,a1,a2
80005148:	0240006f          	j	8000516c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2c4>
8000514c:	0017d893          	srli	a7,a5,0x1
80005150:	00c8d8b3          	srl	a7,a7,a2
80005154:	00b712b3          	sll	t0,a4,a1
80005158:	0112ed33          	or	s10,t0,a7
8000515c:	00a87bb3          	and	s7,a6,a0
80005160:	00bd5533          	srl	a0,s10,a1
80005164:	fc06cae3          	bltz	a3,80005138 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x290>
80005168:	00050593          	mv	a1,a0
8000516c:	00a87533          	and	a0,a6,a0
80005170:	faa42623          	sw	a0,-84(s0)
80005174:	00f5c7b3          	xor	a5,a1,a5
80005178:	00e54533          	xor	a0,a0,a4
8000517c:	00a7e533          	or	a0,a5,a0
80005180:	fab42423          	sw	a1,-88(s0)
80005184:	3c0514e3          	bnez	a0,80005d4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xea4>
80005188:	f9e42a23          	sw	t5,-108(s0)
8000518c:	f9742623          	sw	s7,-116(s0)
80005190:	f5d42e23          	sw	t4,-164(s0)
80005194:	fa000513          	li	a0,-96
80005198:	41350533          	sub	a0,a0,s3
8000519c:	01051513          	slli	a0,a0,0x10
800051a0:	41055513          	srai	a0,a0,0x10
800051a4:	43f50513          	addi	a0,a0,1087
800051a8:	05000593          	li	a1,80
800051ac:	00005097          	auipc	ra,0x5
800051b0:	b3c080e7          	jalr	-1220(ra) # 80009ce8 <__mulsi3>
800051b4:	000015b7          	lui	a1,0x1
800051b8:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start1+0x3f>
800051bc:	00006097          	auipc	ra,0x6
800051c0:	b60080e7          	jalr	-1184(ra) # 8000ad1c <__divsi3>
800051c4:	05100593          	li	a1,81
800051c8:	4ab576e3          	bgeu	a0,a1,80005e74 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xfcc>
800051cc:	015495b3          	sll	a1,s1,s5
800051d0:	01eb0b13          	addi	s6,s6,30
800051d4:	0015d613          	srli	a2,a1,0x1
800051d8:	01665633          	srl	a2,a2,s6
800051dc:	00451513          	slli	a0,a0,0x4
800051e0:	8000c6b7          	lui	a3,0x8000c
800051e4:	a7868693          	addi	a3,a3,-1416 # 8000ba78 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>
800051e8:	00a68533          	add	a0,a3,a0
800051ec:	00052a83          	lw	s5,0(a0)
800051f0:	00452483          	lw	s1,4(a0)
800051f4:	00851c83          	lh	s9,8(a0)
800051f8:	00a55503          	lhu	a0,10(a0)
800051fc:	f8a42423          	sw	a0,-120(s0)
80005200:	01491533          	sll	a0,s2,s4
80005204:	00c56933          	or	s2,a0,a2
80005208:	01459b33          	sll	s6,a1,s4
8000520c:	00048513          	mv	a0,s1
80005210:	00000593          	li	a1,0
80005214:	00090613          	mv	a2,s2
80005218:	00000693          	li	a3,0
8000521c:	00005097          	auipc	ra,0x5
80005220:	b14080e7          	jalr	-1260(ra) # 80009d30 <__muldi3>
80005224:	00050d93          	mv	s11,a0
80005228:	f8b42223          	sw	a1,-124(s0)
8000522c:	00048513          	mv	a0,s1
80005230:	00000593          	li	a1,0
80005234:	000b0613          	mv	a2,s6
80005238:	00000693          	li	a3,0
8000523c:	00005097          	auipc	ra,0x5
80005240:	af4080e7          	jalr	-1292(ra) # 80009d30 <__muldi3>
80005244:	00050a13          	mv	s4,a0
80005248:	f8b42023          	sw	a1,-128(s0)
8000524c:	000a8513          	mv	a0,s5
80005250:	00000593          	li	a1,0
80005254:	00090613          	mv	a2,s2
80005258:	00000693          	li	a3,0
8000525c:	00005097          	auipc	ra,0x5
80005260:	ad4080e7          	jalr	-1324(ra) # 80009d30 <__muldi3>
80005264:	00050913          	mv	s2,a0
80005268:	f6b42e23          	sw	a1,-132(s0)
8000526c:	000a8513          	mv	a0,s5
80005270:	00000593          	li	a1,0
80005274:	000b0613          	mv	a2,s6
80005278:	00000693          	li	a3,0
8000527c:	00005097          	auipc	ra,0x5
80005280:	ab4080e7          	jalr	-1356(ra) # 80009d30 <__muldi3>
80005284:	00b905b3          	add	a1,s2,a1
80005288:	0125b533          	sltu	a0,a1,s2
8000528c:	01458a33          	add	s4,a1,s4
80005290:	00ba35b3          	sltu	a1,s4,a1
80005294:	00b50533          	add	a0,a0,a1
80005298:	800005b7          	lui	a1,0x80000
8000529c:	00ba05b3          	add	a1,s4,a1
800052a0:	80000bb7          	lui	s7,0x80000
800052a4:	0145b5b3          	sltu	a1,a1,s4
800052a8:	00b50533          	add	a0,a0,a1
800052ac:	f6a42223          	sw	a0,-156(s0)
800052b0:	41300533          	neg	a0,s3
800052b4:	419509b3          	sub	s3,a0,s9
800052b8:	00048513          	mv	a0,s1
800052bc:	00000593          	li	a1,0
800052c0:	000c0613          	mv	a2,s8
800052c4:	00000693          	li	a3,0
800052c8:	00005097          	auipc	ra,0x5
800052cc:	a68080e7          	jalr	-1432(ra) # 80009d30 <__muldi3>
800052d0:	f6a42c23          	sw	a0,-136(s0)
800052d4:	f6b42823          	sw	a1,-144(s0)
800052d8:	00048513          	mv	a0,s1
800052dc:	00000593          	li	a1,0
800052e0:	f9442b03          	lw	s6,-108(s0)
800052e4:	000b0613          	mv	a2,s6
800052e8:	00000693          	li	a3,0
800052ec:	00005097          	auipc	ra,0x5
800052f0:	a44080e7          	jalr	-1468(ra) # 80009d30 <__muldi3>
800052f4:	00050913          	mv	s2,a0
800052f8:	f6b42623          	sw	a1,-148(s0)
800052fc:	000a8513          	mv	a0,s5
80005300:	00000593          	li	a1,0
80005304:	000c0613          	mv	a2,s8
80005308:	00000693          	li	a3,0
8000530c:	00005097          	auipc	ra,0x5
80005310:	a24080e7          	jalr	-1500(ra) # 80009d30 <__muldi3>
80005314:	00050a13          	mv	s4,a0
80005318:	f6b42423          	sw	a1,-152(s0)
8000531c:	000a8513          	mv	a0,s5
80005320:	00000593          	li	a1,0
80005324:	000b0613          	mv	a2,s6
80005328:	00000693          	li	a3,0
8000532c:	00005097          	auipc	ra,0x5
80005330:	a04080e7          	jalr	-1532(ra) # 80009d30 <__muldi3>
80005334:	00ba05b3          	add	a1,s4,a1
80005338:	0145b533          	sltu	a0,a1,s4
8000533c:	01258933          	add	s2,a1,s2
80005340:	00b935b3          	sltu	a1,s2,a1
80005344:	00b50533          	add	a0,a0,a1
80005348:	f6a42023          	sw	a0,-160(s0)
8000534c:	01790533          	add	a0,s2,s7
80005350:	01253c33          	sltu	s8,a0,s2
80005354:	00048513          	mv	a0,s1
80005358:	00000593          	li	a1,0
8000535c:	000d0613          	mv	a2,s10
80005360:	00000693          	li	a3,0
80005364:	00005097          	auipc	ra,0x5
80005368:	9cc080e7          	jalr	-1588(ra) # 80009d30 <__muldi3>
8000536c:	00050913          	mv	s2,a0
80005370:	00058a13          	mv	s4,a1
80005374:	00048513          	mv	a0,s1
80005378:	00000593          	li	a1,0
8000537c:	f8c42b83          	lw	s7,-116(s0)
80005380:	000b8613          	mv	a2,s7
80005384:	00000693          	li	a3,0
80005388:	00005097          	auipc	ra,0x5
8000538c:	9a8080e7          	jalr	-1624(ra) # 80009d30 <__muldi3>
80005390:	00050493          	mv	s1,a0
80005394:	00058b13          	mv	s6,a1
80005398:	000a8513          	mv	a0,s5
8000539c:	00000593          	li	a1,0
800053a0:	000d0613          	mv	a2,s10
800053a4:	00000693          	li	a3,0
800053a8:	00005097          	auipc	ra,0x5
800053ac:	988080e7          	jalr	-1656(ra) # 80009d30 <__muldi3>
800053b0:	00050c93          	mv	s9,a0
800053b4:	00058d13          	mv	s10,a1
800053b8:	000a8513          	mv	a0,s5
800053bc:	00000593          	li	a1,0
800053c0:	000b8613          	mv	a2,s7
800053c4:	00000693          	li	a3,0
800053c8:	00005097          	auipc	ra,0x5
800053cc:	968080e7          	jalr	-1688(ra) # 80009d30 <__muldi3>
800053d0:	00bc85b3          	add	a1,s9,a1
800053d4:	0195b533          	sltu	a0,a1,s9
800053d8:	009584b3          	add	s1,a1,s1
800053dc:	00b4b5b3          	sltu	a1,s1,a1
800053e0:	00b50533          	add	a0,a0,a1
800053e4:	80000bb7          	lui	s7,0x80000
800053e8:	01748bb3          	add	s7,s1,s7
800053ec:	009bb5b3          	sltu	a1,s7,s1
800053f0:	00b505b3          	add	a1,a0,a1
800053f4:	012d0933          	add	s2,s10,s2
800053f8:	01a93633          	sltu	a2,s2,s10
800053fc:	00ca0633          	add	a2,s4,a2
80005400:	01690b33          	add	s6,s2,s6
80005404:	012b3533          	sltu	a0,s6,s2
80005408:	00bb02b3          	add	t0,s6,a1
8000540c:	f7c42583          	lw	a1,-132(s0)
80005410:	00bd85b3          	add	a1,s11,a1
80005414:	01b5b6b3          	sltu	a3,a1,s11
80005418:	f8442703          	lw	a4,-124(s0)
8000541c:	00d706b3          	add	a3,a4,a3
80005420:	f8042703          	lw	a4,-128(s0)
80005424:	00e58733          	add	a4,a1,a4
80005428:	00b735b3          	sltu	a1,a4,a1
8000542c:	00b685b3          	add	a1,a3,a1
80005430:	f6442683          	lw	a3,-156(s0)
80005434:	00d706b3          	add	a3,a4,a3
80005438:	00e6b733          	sltu	a4,a3,a4
8000543c:	00e585b3          	add	a1,a1,a4
80005440:	00168313          	addi	t1,a3,1
80005444:	00133693          	seqz	a3,t1
80005448:	00d583b3          	add	t2,a1,a3
8000544c:	03f9f793          	andi	a5,s3,63
80005450:	fe078593          	addi	a1,a5,-32
80005454:	fff7ce13          	not	t3,a5
80005458:	f8b42a23          	sw	a1,-108(s0)
8000545c:	0005c663          	bltz	a1,80005468 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x5c0>
80005460:	00f3dbb3          	srl	s7,t2,a5
80005464:	0140006f          	j	80005478 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x5d0>
80005468:	00139593          	slli	a1,t2,0x1
8000546c:	01c595b3          	sll	a1,a1,t3
80005470:	013356b3          	srl	a3,t1,s3
80005474:	00b6ebb3          	or	s7,a3,a1
80005478:	00a60633          	add	a2,a2,a0
8000547c:	0162b6b3          	sltu	a3,t0,s6
80005480:	f6042583          	lw	a1,-160(s0)
80005484:	018585b3          	add	a1,a1,s8
80005488:	f9442503          	lw	a0,-108(s0)
8000548c:	00052513          	slti	a0,a0,0
80005490:	00100713          	li	a4,1
80005494:	f8f42623          	sw	a5,-116(s0)
80005498:	00f717b3          	sll	a5,a4,a5
8000549c:	fff50813          	addi	a6,a0,-1
800054a0:	00f87833          	and	a6,a6,a5
800054a4:	40a00533          	neg	a0,a0
800054a8:	01371733          	sll	a4,a4,s3
800054ac:	00e578b3          	and	a7,a0,a4
800054b0:	0018b513          	seqz	a0,a7
800054b4:	40a80533          	sub	a0,a6,a0
800054b8:	f8a42223          	sw	a0,-124(s0)
800054bc:	004bd513          	srli	a0,s7,0x4
800054c0:	27100713          	li	a4,625
800054c4:	fff88793          	addi	a5,a7,-1
800054c8:	f8f42023          	sw	a5,-128(s0)
800054cc:	f5042823          	sw	a6,-176(s0)
800054d0:	f5142a23          	sw	a7,-172(s0)
800054d4:	f4542c23          	sw	t0,-168(s0)
800054d8:	f7c42e23          	sw	t3,-132(s0)
800054dc:	02e57263          	bgeu	a0,a4,80005500 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x658>
800054e0:	06400513          	li	a0,100
800054e4:	04abf463          	bgeu	s7,a0,8000552c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x684>
800054e8:	00a00513          	li	a0,10
800054ec:	00abb713          	sltiu	a4,s7,10
800054f0:	00abf463          	bgeu	s7,a0,800054f8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x650>
800054f4:	00100513          	li	a0,1
800054f8:	00174713          	xori	a4,a4,1
800054fc:	08c0006f          	j	80005588 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
80005500:	000f4537          	lui	a0,0xf4
80005504:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2e92>
80005508:	02abfe63          	bgeu	s7,a0,80005544 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x69c>
8000550c:	00018537          	lui	a0,0x18
80005510:	6a050513          	addi	a0,a0,1696 # 186a0 <.Lline_table_start2+0x172f2>
80005514:	00abb733          	sltu	a4,s7,a0
80005518:	00abf663          	bgeu	s7,a0,80005524 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x67c>
8000551c:	00002537          	lui	a0,0x2
80005520:	71050513          	addi	a0,a0,1808 # 2710 <.Lline_table_start2+0x1362>
80005524:	00574713          	xori	a4,a4,5
80005528:	0600006f          	j	80005588 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
8000552c:	3e800793          	li	a5,1000
80005530:	3e8bb713          	sltiu	a4,s7,1000
80005534:	00fbe463          	bltu	s7,a5,8000553c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x694>
80005538:	3e800513          	li	a0,1000
8000553c:	00374713          	xori	a4,a4,3
80005540:	0480006f          	j	80005588 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
80005544:	05f5e537          	lui	a0,0x5f5e
80005548:	10050513          	addi	a0,a0,256 # 5f5e100 <.Lline_table_start2+0x5f5cd52>
8000554c:	02abf263          	bgeu	s7,a0,80005570 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6c8>
80005550:	00989537          	lui	a0,0x989
80005554:	68050513          	addi	a0,a0,1664 # 989680 <.Lline_table_start2+0x9882d2>
80005558:	00abb733          	sltu	a4,s7,a0
8000555c:	00abf663          	bgeu	s7,a0,80005568 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6c0>
80005560:	000f4537          	lui	a0,0xf4
80005564:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2e92>
80005568:	00774713          	xori	a4,a4,7
8000556c:	01c0006f          	j	80005588 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
80005570:	3b9ad737          	lui	a4,0x3b9ad
80005574:	a0070793          	addi	a5,a4,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
80005578:	00fbb733          	sltu	a4,s7,a5
8000557c:	00fbe463          	bltu	s7,a5,80005584 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6dc>
80005580:	00078513          	mv	a0,a5
80005584:	00974713          	xori	a4,a4,9
80005588:	00d60633          	add	a2,a2,a3
8000558c:	f6c42223          	sw	a2,-156(s0)
80005590:	f8442783          	lw	a5,-124(s0)
80005594:	00f3fcb3          	and	s9,t2,a5
80005598:	f8042803          	lw	a6,-128(s0)
8000559c:	01037d33          	and	s10,t1,a6
800055a0:	f8842603          	lw	a2,-120(s0)
800055a4:	00070a13          	mv	s4,a4
800055a8:	40c70633          	sub	a2,a4,a2
800055ac:	00160613          	addi	a2,a2,1
800055b0:	f4c42223          	sw	a2,-188(s0)
800055b4:	f7842683          	lw	a3,-136(s0)
800055b8:	f6842603          	lw	a2,-152(s0)
800055bc:	00c68633          	add	a2,a3,a2
800055c0:	00d636b3          	sltu	a3,a2,a3
800055c4:	f7042703          	lw	a4,-144(s0)
800055c8:	00d706b3          	add	a3,a4,a3
800055cc:	f6c42703          	lw	a4,-148(s0)
800055d0:	00e60733          	add	a4,a2,a4
800055d4:	00c73633          	sltu	a2,a4,a2
800055d8:	00c68633          	add	a2,a3,a2
800055dc:	00b705b3          	add	a1,a4,a1
800055e0:	00e5b6b3          	sltu	a3,a1,a4
800055e4:	00d60633          	add	a2,a2,a3
800055e8:	00b336b3          	sltu	a3,t1,a1
800055ec:	00d60633          	add	a2,a2,a3
800055f0:	f6742423          	sw	t2,-152(s0)
800055f4:	40c38633          	sub	a2,t2,a2
800055f8:	f6642623          	sw	t1,-148(s0)
800055fc:	40b305b3          	sub	a1,t1,a1
80005600:	f4b42423          	sw	a1,-184(s0)
80005604:	00158593          	addi	a1,a1,1 # 80000001 <_start+0x1>
80005608:	0015bc13          	seqz	s8,a1
8000560c:	f4c42623          	sw	a2,-180(s0)
80005610:	01860633          	add	a2,a2,s8
80005614:	00060a93          	mv	s5,a2
80005618:	00f67633          	and	a2,a2,a5
8000561c:	f6c42023          	sw	a2,-160(s0)
80005620:	f6b42c23          	sw	a1,-136(s0)
80005624:	0105f5b3          	and	a1,a1,a6
80005628:	f6b42823          	sw	a1,-144(s0)
8000562c:	fff00993          	li	s3,-1
80005630:	f9442583          	lw	a1,-108(s0)
80005634:	41f5d593          	srai	a1,a1,0x1f
80005638:	f8b42423          	sw	a1,-120(s0)
8000563c:	f7442d83          	lw	s11,-140(s0)
80005640:	fff00c13          	li	s8,-1
80005644:	00050493          	mv	s1,a0
80005648:	f9042b03          	lw	s6,-112(s0)
8000564c:	018b0b33          	add	s6,s6,s8
80005650:	000b8513          	mv	a0,s7
80005654:	00048593          	mv	a1,s1
80005658:	00005097          	auipc	ra,0x5
8000565c:	250080e7          	jalr	592(ra) # 8000a8a8 <__udivsi3>
80005660:	00050913          	mv	s2,a0
80005664:	00048593          	mv	a1,s1
80005668:	00004097          	auipc	ra,0x4
8000566c:	680080e7          	jalr	1664(ra) # 80009ce8 <__mulsi3>
80005670:	793b0e63          	beq	s6,s3,80005e0c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf64>
80005674:	40ab8bb3          	sub	s7,s7,a0
80005678:	03090613          	addi	a2,s2,48
8000567c:	00cd8023          	sb	a2,0(s11)
80005680:	f8c42703          	lw	a4,-116(s0)
80005684:	00eb9533          	sll	a0,s7,a4
80005688:	f9442583          	lw	a1,-108(s0)
8000568c:	0005c663          	bltz	a1,80005698 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x7f0>
80005690:	00050593          	mv	a1,a0
80005694:	0100006f          	j	800056a4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x7fc>
80005698:	001bd593          	srli	a1,s7,0x1
8000569c:	f7c42683          	lw	a3,-132(s0)
800056a0:	00d5d5b3          	srl	a1,a1,a3
800056a4:	000a8913          	mv	s2,s5
800056a8:	f8842683          	lw	a3,-120(s0)
800056ac:	00a6f533          	and	a0,a3,a0
800056b0:	019585b3          	add	a1,a1,s9
800056b4:	01a50333          	add	t1,a0,s10
800056b8:	00a333b3          	sltu	t2,t1,a0
800056bc:	007583b3          	add	t2,a1,t2
800056c0:	007a8863          	beq	s5,t2,800056d0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x828>
800056c4:	0123b533          	sltu	a0,t2,s2
800056c8:	00050a63          	beqz	a0,800056dc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x834>
800056cc:	0480006f          	j	80005714 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x86c>
800056d0:	f7842503          	lw	a0,-136(s0)
800056d4:	00a33533          	sltu	a0,t1,a0
800056d8:	02051e63          	bnez	a0,80005714 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x86c>
800056dc:	018a0533          	add	a0,s4,s8
800056e0:	05350463          	beq	a0,s3,80005728 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x880>
800056e4:	00a00593          	li	a1,10
800056e8:	00048513          	mv	a0,s1
800056ec:	00005097          	auipc	ra,0x5
800056f0:	1bc080e7          	jalr	444(ra) # 8000a8a8 <__udivsi3>
800056f4:	fffc0c13          	addi	s8,s8,-1
800056f8:	001d8d93          	addi	s11,s11,1
800056fc:	00a00593          	li	a1,10
80005700:	f4b4f2e3          	bgeu	s1,a1,80005644 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x79c>
80005704:	8000c537          	lui	a0,0x8000c
80005708:	04050513          	addi	a0,a0,64 # 8000c040 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.59>
8000570c:	00004097          	auipc	ra,0x4
80005710:	c94080e7          	jalr	-876(ra) # 800093a0 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>
80005714:	00e49733          	sll	a4,s1,a4
80005718:	f9442503          	lw	a0,-108(s0)
8000571c:	16054663          	bltz	a0,80005888 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9e0>
80005720:	00070593          	mv	a1,a4
80005724:	1700006f          	j	80005894 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9ec>
80005728:	00000d93          	li	s11,0
8000572c:	41800b33          	neg	s6,s8
80005730:	00100493          	li	s1,1
80005734:	f7442a83          	lw	s5,-140(s0)
80005738:	f7042703          	lw	a4,-144(s0)
8000573c:	f6042a03          	lw	s4,-160(s0)
80005740:	0100006f          	j	80005750 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8a8>
80005744:	014cb533          	sltu	a0,s9,s4
80005748:	001b0b13          	addi	s6,s6,1
8000574c:	0c051863          	bnez	a0,8000581c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x974>
80005750:	f9042503          	lw	a0,-112(s0)
80005754:	6cab7863          	bgeu	s6,a0,80005e24 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf7c>
80005758:	00070993          	mv	s3,a4
8000575c:	000d8b93          	mv	s7,s11
80005760:	00048c13          	mv	s8,s1
80005764:	00a00613          	li	a2,10
80005768:	000d0513          	mv	a0,s10
8000576c:	000c8593          	mv	a1,s9
80005770:	00000693          	li	a3,0
80005774:	00004097          	auipc	ra,0x4
80005778:	5bc080e7          	jalr	1468(ra) # 80009d30 <__muldi3>
8000577c:	00050c93          	mv	s9,a0
80005780:	00058913          	mv	s2,a1
80005784:	00a00613          	li	a2,10
80005788:	00048513          	mv	a0,s1
8000578c:	000d8593          	mv	a1,s11
80005790:	00000693          	li	a3,0
80005794:	00004097          	auipc	ra,0x4
80005798:	59c080e7          	jalr	1436(ra) # 80009d30 <__muldi3>
8000579c:	00050493          	mv	s1,a0
800057a0:	00058d93          	mv	s11,a1
800057a4:	00a00613          	li	a2,10
800057a8:	00098513          	mv	a0,s3
800057ac:	000a0593          	mv	a1,s4
800057b0:	00000693          	li	a3,0
800057b4:	00004097          	auipc	ra,0x4
800057b8:	57c080e7          	jalr	1404(ra) # 80009d30 <__muldi3>
800057bc:	00050713          	mv	a4,a0
800057c0:	00058a13          	mv	s4,a1
800057c4:	f9442503          	lw	a0,-108(s0)
800057c8:	00054863          	bltz	a0,800057d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x930>
800057cc:	f8c42503          	lw	a0,-116(s0)
800057d0:	00a95533          	srl	a0,s2,a0
800057d4:	01c0006f          	j	800057f0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x948>
800057d8:	f8c42503          	lw	a0,-116(s0)
800057dc:	00acd533          	srl	a0,s9,a0
800057e0:	00191593          	slli	a1,s2,0x1
800057e4:	f7c42603          	lw	a2,-132(s0)
800057e8:	00c595b3          	sll	a1,a1,a2
800057ec:	00b56533          	or	a0,a0,a1
800057f0:	f8042583          	lw	a1,-128(s0)
800057f4:	00bcfd33          	and	s10,s9,a1
800057f8:	f8442583          	lw	a1,-124(s0)
800057fc:	00b97cb3          	and	s9,s2,a1
80005800:	03050993          	addi	s3,a0,48
80005804:	016a8533          	add	a0,s5,s6
80005808:	01350023          	sb	s3,0(a0)
8000580c:	f39a1ce3          	bne	s4,s9,80005744 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x89c>
80005810:	00ed3533          	sltu	a0,s10,a4
80005814:	001b0b13          	addi	s6,s6,1
80005818:	f2050ce3          	beqz	a0,80005750 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8a8>
8000581c:	f5842583          	lw	a1,-168(s0)
80005820:	f6c42603          	lw	a2,-148(s0)
80005824:	00b63533          	sltu	a0,a2,a1
80005828:	f6842683          	lw	a3,-152(s0)
8000582c:	f6442783          	lw	a5,-156(s0)
80005830:	40f686b3          	sub	a3,a3,a5
80005834:	40a686b3          	sub	a3,a3,a0
80005838:	40b60633          	sub	a2,a2,a1
8000583c:	00048513          	mv	a0,s1
80005840:	000d8593          	mv	a1,s11
80005844:	f6e42823          	sw	a4,-144(s0)
80005848:	00004097          	auipc	ra,0x4
8000584c:	4e8080e7          	jalr	1256(ra) # 80009d30 <__muldi3>
80005850:	f7042e03          	lw	t3,-144(s0)
80005854:	00950633          	add	a2,a0,s1
80005858:	00a636b3          	sltu	a3,a2,a0
8000585c:	01ae3733          	sltu	a4,t3,s10
80005860:	419a07b3          	sub	a5,s4,s9
80005864:	40e787b3          	sub	a5,a5,a4
80005868:	01b58733          	add	a4,a1,s11
8000586c:	f5042303          	lw	t1,-176(s0)
80005870:	0c678a63          	beq	a5,t1,80005944 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa9c>
80005874:	0067b7b3          	sltu	a5,a5,t1
80005878:	f5442383          	lw	t2,-172(s0)
8000587c:	00d706b3          	add	a3,a4,a3
80005880:	0c078c63          	beqz	a5,80005958 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xab0>
80005884:	0f00006f          	j	80005974 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005888:	0014d493          	srli	s1,s1,0x1
8000588c:	f7c42503          	lw	a0,-132(s0)
80005890:	00a4d5b3          	srl	a1,s1,a0
80005894:	f5c42f83          	lw	t6,-164(s0)
80005898:	f5842783          	lw	a5,-168(s0)
8000589c:	f6c42803          	lw	a6,-148(s0)
800058a0:	00f83533          	sltu	a0,a6,a5
800058a4:	f6842683          	lw	a3,-152(s0)
800058a8:	f6442883          	lw	a7,-156(s0)
800058ac:	411686b3          	sub	a3,a3,a7
800058b0:	40a686b3          	sub	a3,a3,a0
800058b4:	40f802b3          	sub	t0,a6,a5
800058b8:	00128513          	addi	a0,t0,1
800058bc:	0012b793          	seqz	a5,t0
800058c0:	40f688b3          	sub	a7,a3,a5
800058c4:	fff28293          	addi	t0,t0,-1
800058c8:	00788663          	beq	a7,t2,800058d4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa2c>
800058cc:	0113b833          	sltu	a6,t2,a7
800058d0:	0080006f          	j	800058d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa30>
800058d4:	00533833          	sltu	a6,t1,t0
800058d8:	f8842783          	lw	a5,-120(s0)
800058dc:	00e7f7b3          	and	a5,a5,a4
800058e0:	00153f13          	seqz	t5,a0
800058e4:	f7842e83          	lw	t4,-136(s0)
800058e8:	006eb733          	sltu	a4,t4,t1
800058ec:	40790e33          	sub	t3,s2,t2
800058f0:	40ee0733          	sub	a4,t3,a4
800058f4:	406e8eb3          	sub	t4,t4,t1
800058f8:	00b70c63          	beq	a4,a1,80005910 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa68>
800058fc:	00b73e33          	sltu	t3,a4,a1
80005900:	f7442483          	lw	s1,-140(s0)
80005904:	01e686b3          	add	a3,a3,t5
80005908:	00081c63          	bnez	a6,80005920 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa78>
8000590c:	0200006f          	j	8000592c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005910:	00febe33          	sltu	t3,t4,a5
80005914:	f7442483          	lw	s1,-140(s0)
80005918:	01e686b3          	add	a3,a3,t5
8000591c:	00080863          	beqz	a6,8000592c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005920:	06b70663          	beq	a4,a1,8000598c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xae4>
80005924:	00b73733          	sltu	a4,a4,a1
80005928:	08070063          	beqz	a4,800059a8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
8000592c:	00030713          	mv	a4,t1
80005930:	00038813          	mv	a6,t2
80005934:	12769263          	bne	a3,t2,80005a58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb0>
80005938:	00a73633          	sltu	a2,a4,a0
8000593c:	12061263          	bnez	a2,80005a60 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb8>
80005940:	2d40006f          	j	80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005944:	41ae07b3          	sub	a5,t3,s10
80005948:	f5442383          	lw	t2,-172(s0)
8000594c:	0077b7b3          	sltu	a5,a5,t2
80005950:	00d706b3          	add	a3,a4,a3
80005954:	02079063          	bnez	a5,80005974 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005958:	00953733          	sltu	a4,a0,s1
8000595c:	41b585b3          	sub	a1,a1,s11
80005960:	40e585b3          	sub	a1,a1,a4
80005964:	40950533          	sub	a0,a0,s1
80005968:	11958e63          	beq	a1,s9,80005a84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbdc>
8000596c:	00bcb733          	sltu	a4,s9,a1
80005970:	10071e63          	bnez	a4,80005a8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbe4>
80005974:	000d0493          	mv	s1,s10
80005978:	000c8913          	mv	s2,s9
8000597c:	1d969a63          	bne	a3,s9,80005b50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca8>
80005980:	00c4b533          	sltu	a0,s1,a2
80005984:	1c051a63          	bnez	a0,80005b58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcb0>
80005988:	2f80006f          	j	80005c80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
8000598c:	00feb733          	sltu	a4,t4,a5
80005990:	00070c63          	beqz	a4,800059a8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005994:	f99ff06f          	j	8000592c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005998:	00b3beb3          	sltu	t4,t2,a1
8000599c:	00070313          	mv	t1,a4
800059a0:	00080393          	mv	t2,a6
800059a4:	0a0e9863          	bnez	t4,80005a54 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
800059a8:	00f30733          	add	a4,t1,a5
800059ac:	00673833          	sltu	a6,a4,t1
800059b0:	00b38e33          	add	t3,t2,a1
800059b4:	010e0833          	add	a6,t3,a6
800059b8:	01180863          	beq	a6,a7,800059c8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb20>
800059bc:	01183e33          	sltu	t3,a6,a7
800059c0:	000e0863          	beqz	t3,800059d0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb28>
800059c4:	0380006f          	j	800059fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb54>
800059c8:	00573e33          	sltu	t3,a4,t0
800059cc:	020e1863          	bnez	t3,800059fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb54>
800059d0:	0062be33          	sltu	t3,t0,t1
800059d4:	40788eb3          	sub	t4,a7,t2
800059d8:	41ce8e33          	sub	t3,t4,t3
800059dc:	00573eb3          	sltu	t4,a4,t0
800059e0:	41180f33          	sub	t5,a6,a7
800059e4:	41df0eb3          	sub	t4,t5,t4
800059e8:	01de1663          	bne	t3,t4,800059f4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb4c>
800059ec:	40628e33          	sub	t3,t0,t1
800059f0:	40570eb3          	sub	t4,a4,t0
800059f4:	01de3e33          	sltu	t3,t3,t4
800059f8:	1e0e1263          	bnez	t3,80005bdc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd34>
800059fc:	fff60613          	addi	a2,a2,-1
80005a00:	00cd8023          	sb	a2,0(s11)
80005a04:	01180663          	beq	a6,a7,80005a10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb68>
80005a08:	01183333          	sltu	t1,a6,a7
80005a0c:	0080006f          	j	80005a14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb6c>
80005a10:	00573333          	sltu	t1,a4,t0
80005a14:	f7842e83          	lw	t4,-136(s0)
80005a18:	00eeb3b3          	sltu	t2,t4,a4
80005a1c:	41090e33          	sub	t3,s2,a6
80005a20:	407e03b3          	sub	t2,t3,t2
80005a24:	40ee8eb3          	sub	t4,t4,a4
80005a28:	00b38863          	beq	t2,a1,80005a38 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb90>
80005a2c:	00b3be33          	sltu	t3,t2,a1
80005a30:	00031863          	bnez	t1,80005a40 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb98>
80005a34:	0200006f          	j	80005a54 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005a38:	00febe33          	sltu	t3,t4,a5
80005a3c:	00030c63          	beqz	t1,80005a54 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005a40:	f4b39ce3          	bne	t2,a1,80005998 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xaf0>
80005a44:	00febeb3          	sltu	t4,t4,a5
80005a48:	00070313          	mv	t1,a4
80005a4c:	00080393          	mv	t2,a6
80005a50:	f40e8ce3          	beqz	t4,800059a8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005a54:	ef0682e3          	beq	a3,a6,80005938 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa90>
80005a58:	00d83633          	sltu	a2,a6,a3
80005a5c:	1a060c63          	beqz	a2,80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005a60:	1a0e1a63          	bnez	t3,80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005a64:	00f707b3          	add	a5,a4,a5
80005a68:	00e7b633          	sltu	a2,a5,a4
80005a6c:	00b805b3          	add	a1,a6,a1
80005a70:	00c585b3          	add	a1,a1,a2
80005a74:	10d58463          	beq	a1,a3,80005b7c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcd4>
80005a78:	00d5b633          	sltu	a2,a1,a3
80005a7c:	10060463          	beqz	a2,80005b84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcdc>
80005a80:	1e80006f          	j	80005c68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005a84:	00ad3733          	sltu	a4,s10,a0
80005a88:	ee0706e3          	beqz	a4,80005974 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005a8c:	016a8733          	add	a4,s5,s6
80005a90:	0140006f          	j	80005aa4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbfc>
80005a94:	0068b833          	sltu	a6,a7,t1
80005a98:	00048d13          	mv	s10,s1
80005a9c:	00090c93          	mv	s9,s2
80005aa0:	0a081663          	bnez	a6,80005b4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005aa4:	007d04b3          	add	s1,s10,t2
80005aa8:	01a4b933          	sltu	s2,s1,s10
80005aac:	006c87b3          	add	a5,s9,t1
80005ab0:	01278933          	add	s2,a5,s2
80005ab4:	00b90863          	beq	s2,a1,80005ac4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc1c>
80005ab8:	00b937b3          	sltu	a5,s2,a1
80005abc:	00078863          	beqz	a5,80005acc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc24>
80005ac0:	0380006f          	j	80005af8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc50>
80005ac4:	00a4b7b3          	sltu	a5,s1,a0
80005ac8:	02079863          	bnez	a5,80005af8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc50>
80005acc:	01a537b3          	sltu	a5,a0,s10
80005ad0:	41958833          	sub	a6,a1,s9
80005ad4:	40f807b3          	sub	a5,a6,a5
80005ad8:	00a4b833          	sltu	a6,s1,a0
80005adc:	40b908b3          	sub	a7,s2,a1
80005ae0:	41088833          	sub	a6,a7,a6
80005ae4:	01079663          	bne	a5,a6,80005af0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc48>
80005ae8:	41a507b3          	sub	a5,a0,s10
80005aec:	40a48833          	sub	a6,s1,a0
80005af0:	0107b7b3          	sltu	a5,a5,a6
80005af4:	0e079e63          	bnez	a5,80005bf0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd48>
80005af8:	fff98993          	addi	s3,s3,-1
80005afc:	ff370fa3          	sb	s3,-1(a4)
80005b00:	00b90663          	beq	s2,a1,80005b0c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc64>
80005b04:	00b93833          	sltu	a6,s2,a1
80005b08:	0080006f          	j	80005b10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc68>
80005b0c:	00a4b833          	sltu	a6,s1,a0
80005b10:	009e37b3          	sltu	a5,t3,s1
80005b14:	412a08b3          	sub	a7,s4,s2
80005b18:	40f888b3          	sub	a7,a7,a5
80005b1c:	409e02b3          	sub	t0,t3,s1
80005b20:	00688863          	beq	a7,t1,80005b30 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc88>
80005b24:	0068b7b3          	sltu	a5,a7,t1
80005b28:	00081863          	bnez	a6,80005b38 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc90>
80005b2c:	0200006f          	j	80005b4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005b30:	0072b7b3          	sltu	a5,t0,t2
80005b34:	00080c63          	beqz	a6,80005b4c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005b38:	f4689ee3          	bne	a7,t1,80005a94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbec>
80005b3c:	0072b833          	sltu	a6,t0,t2
80005b40:	00048d13          	mv	s10,s1
80005b44:	00090c93          	mv	s9,s2
80005b48:	f4080ee3          	beqz	a6,80005aa4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbfc>
80005b4c:	e3268ae3          	beq	a3,s2,80005980 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xad8>
80005b50:	00d93533          	sltu	a0,s2,a3
80005b54:	12050663          	beqz	a0,80005c80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005b58:	12079463          	bnez	a5,80005c80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005b5c:	00748533          	add	a0,s1,t2
80005b60:	009535b3          	sltu	a1,a0,s1
80005b64:	00690733          	add	a4,s2,t1
80005b68:	00b705b3          	add	a1,a4,a1
80005b6c:	04d58063          	beq	a1,a3,80005bac <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd04>
80005b70:	00d5b733          	sltu	a4,a1,a3
80005b74:	04070063          	beqz	a4,80005bb4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd0c>
80005b78:	1900006f          	j	80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005b7c:	00a7b633          	sltu	a2,a5,a0
80005b80:	0e061463          	bnez	a2,80005c68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005b84:	00e53633          	sltu	a2,a0,a4
80005b88:	410688b3          	sub	a7,a3,a6
80005b8c:	40c88633          	sub	a2,a7,a2
80005b90:	00a7b8b3          	sltu	a7,a5,a0
80005b94:	40d585b3          	sub	a1,a1,a3
80005b98:	411585b3          	sub	a1,a1,a7
80005b9c:	06b60463          	beq	a2,a1,80005c04 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd5c>
80005ba0:	00b63533          	sltu	a0,a2,a1
80005ba4:	06051863          	bnez	a0,80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005ba8:	0c00006f          	j	80005c68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005bac:	00c53733          	sltu	a4,a0,a2
80005bb0:	14071c63          	bnez	a4,80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005bb4:	00963733          	sltu	a4,a2,s1
80005bb8:	412687b3          	sub	a5,a3,s2
80005bbc:	40e78733          	sub	a4,a5,a4
80005bc0:	00c537b3          	sltu	a5,a0,a2
80005bc4:	40d585b3          	sub	a1,a1,a3
80005bc8:	40f585b3          	sub	a1,a1,a5
80005bcc:	0ab70263          	beq	a4,a1,80005c70 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc8>
80005bd0:	00b73533          	sltu	a0,a4,a1
80005bd4:	0a051663          	bnez	a0,80005c80 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005bd8:	1300006f          	j	80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005bdc:	00000e13          	li	t3,0
80005be0:	00030713          	mv	a4,t1
80005be4:	00038813          	mv	a6,t2
80005be8:	e67698e3          	bne	a3,t2,80005a58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb0>
80005bec:	d4dff06f          	j	80005938 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa90>
80005bf0:	00000793          	li	a5,0
80005bf4:	000d0493          	mv	s1,s10
80005bf8:	000c8913          	mv	s2,s9
80005bfc:	f5969ae3          	bne	a3,s9,80005b50 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca8>
80005c00:	d81ff06f          	j	80005980 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xad8>
80005c04:	40e505b3          	sub	a1,a0,a4
80005c08:	40a787b3          	sub	a5,a5,a0
80005c0c:	00f5b533          	sltu	a0,a1,a5
80005c10:	04050c63          	beqz	a0,80005c68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005c14:	00273513          	sltiu	a0,a4,2
80005c18:	00183593          	seqz	a1,a6
80005c1c:	00a5f533          	and	a0,a1,a0
80005c20:	04051463          	bnez	a0,80005c68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005c24:	f4842583          	lw	a1,-184(s0)
80005c28:	ffd58513          	addi	a0,a1,-3
80005c2c:	00b535b3          	sltu	a1,a0,a1
80005c30:	f4c42603          	lw	a2,-180(s0)
80005c34:	00b605b3          	add	a1,a2,a1
80005c38:	fff58593          	addi	a1,a1,-1
80005c3c:	02b80263          	beq	a6,a1,80005c60 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdb8>
80005c40:	0105b533          	sltu	a0,a1,a6
80005c44:	02051263          	bnez	a0,80005c68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005c48:	41800533          	neg	a0,s8
80005c4c:	009fa023          	sw	s1,0(t6)
80005c50:	00afa223          	sw	a0,4(t6)
80005c54:	f4442503          	lw	a0,-188(s0)
80005c58:	00af9423          	sh	a0,8(t6)
80005c5c:	0b40006f          	j	80005d10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005c60:	00e53533          	sltu	a0,a0,a4
80005c64:	fe0502e3          	beqz	a0,80005c48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xda0>
80005c68:	000fa023          	sw	zero,0(t6)
80005c6c:	0a40006f          	j	80005d10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005c70:	409605b3          	sub	a1,a2,s1
80005c74:	40c50533          	sub	a0,a0,a2
80005c78:	00a5b533          	sltu	a0,a1,a0
80005c7c:	08050663          	beqz	a0,80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005c80:	01400613          	li	a2,20
80005c84:	000c0513          	mv	a0,s8
80005c88:	000b8593          	mv	a1,s7
80005c8c:	00000693          	li	a3,0
80005c90:	00004097          	auipc	ra,0x4
80005c94:	0a0080e7          	jalr	160(ra) # 80009d30 <__muldi3>
80005c98:	01258863          	beq	a1,s2,80005ca8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe00>
80005c9c:	00b93533          	sltu	a0,s2,a1
80005ca0:	00050863          	beqz	a0,80005cb0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe08>
80005ca4:	0640006f          	j	80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005ca8:	00a4b533          	sltu	a0,s1,a0
80005cac:	04051e63          	bnez	a0,80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005cb0:	fd800613          	li	a2,-40
80005cb4:	fff00693          	li	a3,-1
80005cb8:	000c0513          	mv	a0,s8
80005cbc:	000b8593          	mv	a1,s7
80005cc0:	00004097          	auipc	ra,0x4
80005cc4:	070080e7          	jalr	112(ra) # 80009d30 <__muldi3>
80005cc8:	f7042603          	lw	a2,-144(s0)
80005ccc:	00c50633          	add	a2,a0,a2
80005cd0:	00a63533          	sltu	a0,a2,a0
80005cd4:	014585b3          	add	a1,a1,s4
80005cd8:	00a58533          	add	a0,a1,a0
80005cdc:	02a90263          	beq	s2,a0,80005d00 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe58>
80005ce0:	01253533          	sltu	a0,a0,s2
80005ce4:	02051263          	bnez	a0,80005d08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005ce8:	f5c42503          	lw	a0,-164(s0)
80005cec:	01552023          	sw	s5,0(a0)
80005cf0:	01652223          	sw	s6,4(a0)
80005cf4:	f4442583          	lw	a1,-188(s0)
80005cf8:	00b51423          	sh	a1,8(a0)
80005cfc:	0140006f          	j	80005d10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005d00:	00963533          	sltu	a0,a2,s1
80005d04:	fe0502e3          	beqz	a0,80005ce8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe40>
80005d08:	f5c42503          	lw	a0,-164(s0)
80005d0c:	00052023          	sw	zero,0(a0)
80005d10:	0bc12083          	lw	ra,188(sp)
80005d14:	0b812403          	lw	s0,184(sp)
80005d18:	0b412483          	lw	s1,180(sp)
80005d1c:	0b012903          	lw	s2,176(sp)
80005d20:	0ac12983          	lw	s3,172(sp)
80005d24:	0a812a03          	lw	s4,168(sp)
80005d28:	0a412a83          	lw	s5,164(sp)
80005d2c:	0a012b03          	lw	s6,160(sp)
80005d30:	09c12b83          	lw	s7,156(sp)
80005d34:	09812c03          	lw	s8,152(sp)
80005d38:	09412c83          	lw	s9,148(sp)
80005d3c:	09012d03          	lw	s10,144(sp)
80005d40:	08c12d83          	lw	s11,140(sp)
80005d44:	0c010113          	addi	sp,sp,192
80005d48:	00008067          	ret
80005d4c:	fa042a23          	sw	zero,-76(s0)
80005d50:	fa840513          	addi	a0,s0,-88
80005d54:	f9840593          	addi	a1,s0,-104
80005d58:	fb440613          	addi	a2,s0,-76
80005d5c:	00001097          	auipc	ra,0x1
80005d60:	09c080e7          	jalr	156(ra) # 80006df8 <_ZN4core9panicking13assert_failed17h4fcb3a6812de271fE>
80005d64:	8000c537          	lui	a0,0x8000c
80005d68:	84f50513          	addi	a0,a0,-1969 # 8000b84f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80005d6c:	8000c637          	lui	a2,0x8000c
80005d70:	fc060613          	addi	a2,a2,-64 # 8000bfc0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.53>
80005d74:	01c00593          	li	a1,28
80005d78:	00001097          	auipc	ra,0x1
80005d7c:	fcc080e7          	jalr	-52(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005d80:	8000c537          	lui	a0,0x8000c
80005d84:	87c50513          	addi	a0,a0,-1924 # 8000b87c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80005d88:	8000c637          	lui	a2,0x8000c
80005d8c:	fd060613          	addi	a2,a2,-48 # 8000bfd0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.54>
80005d90:	01d00593          	li	a1,29
80005d94:	00001097          	auipc	ra,0x1
80005d98:	fb0080e7          	jalr	-80(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005d9c:	8000c537          	lui	a0,0x8000c
80005da0:	8ac50513          	addi	a0,a0,-1876 # 8000b8ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80005da4:	8000c637          	lui	a2,0x8000c
80005da8:	fe060613          	addi	a2,a2,-32 # 8000bfe0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.55>
80005dac:	01c00593          	li	a1,28
80005db0:	00001097          	auipc	ra,0x1
80005db4:	f94080e7          	jalr	-108(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005db8:	8000c537          	lui	a0,0x8000c
80005dbc:	8d850513          	addi	a0,a0,-1832 # 8000b8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
80005dc0:	8000c637          	lui	a2,0x8000c
80005dc4:	ff060613          	addi	a2,a2,-16 # 8000bff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.56>
80005dc8:	02d00593          	li	a1,45
80005dcc:	00001097          	auipc	ra,0x1
80005dd0:	f78080e7          	jalr	-136(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005dd4:	8000c537          	lui	a0,0x8000c
80005dd8:	00050513          	mv	a0,a0
80005ddc:	8000c637          	lui	a2,0x8000c
80005de0:	03060613          	addi	a2,a2,48 # 8000c030 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.58>
80005de4:	02d00593          	li	a1,45
80005de8:	00001097          	auipc	ra,0x1
80005dec:	f5c080e7          	jalr	-164(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005df0:	8000b537          	lui	a0,0x8000b
80005df4:	73450513          	addi	a0,a0,1844 # 8000b734 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.21>
80005df8:	8000b637          	lui	a2,0x8000b
80005dfc:	76c60613          	addi	a2,a2,1900 # 8000b76c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.23>
80005e00:	01d00593          	li	a1,29
80005e04:	00001097          	auipc	ra,0x1
80005e08:	f40080e7          	jalr	-192(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005e0c:	8000c637          	lui	a2,0x8000c
80005e10:	05060613          	addi	a2,a2,80 # 8000c050 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.60>
80005e14:	f9042503          	lw	a0,-112(s0)
80005e18:	00050593          	mv	a1,a0
80005e1c:	00001097          	auipc	ra,0x1
80005e20:	f70080e7          	jalr	-144(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80005e24:	8000c637          	lui	a2,0x8000c
80005e28:	06060613          	addi	a2,a2,96 # 8000c060 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.61>
80005e2c:	000b0513          	mv	a0,s6
80005e30:	f9042583          	lw	a1,-112(s0)
80005e34:	00001097          	auipc	ra,0x1
80005e38:	f58080e7          	jalr	-168(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80005e3c:	8000c537          	lui	a0,0x8000c
80005e40:	99050513          	addi	a0,a0,-1648 # 8000b990 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
80005e44:	8000c637          	lui	a2,0x8000c
80005e48:	08060613          	addi	a2,a2,128 # 8000c080 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.63>
80005e4c:	03600593          	li	a1,54
80005e50:	00001097          	auipc	ra,0x1
80005e54:	ef4080e7          	jalr	-268(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005e58:	8000c537          	lui	a0,0x8000c
80005e5c:	94850513          	addi	a0,a0,-1720 # 8000b948 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
80005e60:	8000c637          	lui	a2,0x8000c
80005e64:	07060613          	addi	a2,a2,112 # 8000c070 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.62>
80005e68:	03700593          	li	a1,55
80005e6c:	00001097          	auipc	ra,0x1
80005e70:	ed8080e7          	jalr	-296(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005e74:	8000c637          	lui	a2,0x8000c
80005e78:	fb060613          	addi	a2,a2,-80 # 8000bfb0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>
80005e7c:	05100593          	li	a1,81
80005e80:	00001097          	auipc	ra,0x1
80005e84:	f0c080e7          	jalr	-244(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80005e88 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E>:
80005e88:	f9010113          	addi	sp,sp,-112
80005e8c:	06112623          	sw	ra,108(sp)
80005e90:	06812423          	sw	s0,104(sp)
80005e94:	06912223          	sw	s1,100(sp)
80005e98:	07212023          	sw	s2,96(sp)
80005e9c:	05312e23          	sw	s3,92(sp)
80005ea0:	05412c23          	sw	s4,88(sp)
80005ea4:	05512a23          	sw	s5,84(sp)
80005ea8:	05612823          	sw	s6,80(sp)
80005eac:	05712623          	sw	s7,76(sp)
80005eb0:	05812423          	sw	s8,72(sp)
80005eb4:	05912223          	sw	s9,68(sp)
80005eb8:	05a12023          	sw	s10,64(sp)
80005ebc:	03b12e23          	sw	s11,60(sp)
80005ec0:	07010413          	addi	s0,sp,112
80005ec4:	0045a783          	lw	a5,4(a1)
80005ec8:	0005a803          	lw	a6,0(a1)
80005ecc:	00f868b3          	or	a7,a6,a5
80005ed0:	70088e63          	beqz	a7,800065ec <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x764>
80005ed4:	01d7d893          	srli	a7,a5,0x1d
80005ed8:	72089863          	bnez	a7,80006608 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x780>
80005edc:	74068463          	beqz	a3,80006624 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x79c>
80005ee0:	01859283          	lh	t0,24(a1)
80005ee4:	0017b593          	seqz	a1,a5
80005ee8:	40b008b3          	neg	a7,a1
80005eec:	fe08f893          	andi	a7,a7,-32
80005ef0:	011282b3          	add	t0,t0,a7
80005ef4:	00559593          	slli	a1,a1,0x5
80005ef8:	fe058893          	addi	a7,a1,-32
80005efc:	00b81833          	sll	a6,a6,a1
80005f00:	fae42a23          	sw	a4,-76(s0)
80005f04:	fad42623          	sw	a3,-84(s0)
80005f08:	faa42423          	sw	a0,-88(s0)
80005f0c:	fac42c23          	sw	a2,-72(s0)
80005f10:	0008c663          	bltz	a7,80005f1c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x94>
80005f14:	00080593          	mv	a1,a6
80005f18:	0080006f          	j	80005f20 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x98>
80005f1c:	00b795b3          	sll	a1,a5,a1
80005f20:	41f8d693          	srai	a3,a7,0x1f
80005f24:	0106f633          	and	a2,a3,a6
80005f28:	0105d693          	srli	a3,a1,0x10
80005f2c:	0016b693          	seqz	a3,a3
80005f30:	40d00733          	neg	a4,a3
80005f34:	ff077713          	andi	a4,a4,-16
80005f38:	00e28533          	add	a0,t0,a4
80005f3c:	00469693          	slli	a3,a3,0x4
80005f40:	00d595b3          	sll	a1,a1,a3
80005f44:	01f6c713          	xori	a4,a3,31
80005f48:	00165793          	srli	a5,a2,0x1
80005f4c:	00e7d733          	srl	a4,a5,a4
80005f50:	00e5e733          	or	a4,a1,a4
80005f54:	00d61633          	sll	a2,a2,a3
80005f58:	0185d593          	srli	a1,a1,0x18
80005f5c:	0015b593          	seqz	a1,a1
80005f60:	40b006b3          	neg	a3,a1
80005f64:	ff86f693          	andi	a3,a3,-8
80005f68:	00d50533          	add	a0,a0,a3
80005f6c:	00359593          	slli	a1,a1,0x3
80005f70:	00b716b3          	sll	a3,a4,a1
80005f74:	01f5c713          	xori	a4,a1,31
80005f78:	00165793          	srli	a5,a2,0x1
80005f7c:	00e7d733          	srl	a4,a5,a4
80005f80:	00e6e733          	or	a4,a3,a4
80005f84:	00b615b3          	sll	a1,a2,a1
80005f88:	01c6d693          	srli	a3,a3,0x1c
80005f8c:	0016b613          	seqz	a2,a3
80005f90:	40c006b3          	neg	a3,a2
80005f94:	ffc6f693          	andi	a3,a3,-4
80005f98:	00d50533          	add	a0,a0,a3
80005f9c:	00261613          	slli	a2,a2,0x2
80005fa0:	00c716b3          	sll	a3,a4,a2
80005fa4:	01f64713          	xori	a4,a2,31
80005fa8:	0015d793          	srli	a5,a1,0x1
80005fac:	00e7d733          	srl	a4,a5,a4
80005fb0:	00e6e733          	or	a4,a3,a4
80005fb4:	00c594b3          	sll	s1,a1,a2
80005fb8:	01e6d693          	srli	a3,a3,0x1e
80005fbc:	0016b993          	seqz	s3,a3
80005fc0:	413005b3          	neg	a1,s3
80005fc4:	ffe5f593          	andi	a1,a1,-2
80005fc8:	00b50533          	add	a0,a0,a1
80005fcc:	00199993          	slli	s3,s3,0x1
80005fd0:	013715b3          	sll	a1,a4,s3
80005fd4:	01f9c613          	xori	a2,s3,31
80005fd8:	0014d693          	srli	a3,s1,0x1
80005fdc:	00c6d633          	srl	a2,a3,a2
80005fe0:	00c5e933          	or	s2,a1,a2
80005fe4:	00092a93          	slti	s5,s2,0
80005fe8:	001acb13          	xori	s6,s5,1
80005fec:	41650a33          	sub	s4,a0,s6
80005ff0:	fa000513          	li	a0,-96
80005ff4:	41450533          	sub	a0,a0,s4
80005ff8:	01051513          	slli	a0,a0,0x10
80005ffc:	41055513          	srai	a0,a0,0x10
80006000:	43f50513          	addi	a0,a0,1087
80006004:	05000593          	li	a1,80
80006008:	00004097          	auipc	ra,0x4
8000600c:	ce0080e7          	jalr	-800(ra) # 80009ce8 <__mulsi3>
80006010:	000015b7          	lui	a1,0x1
80006014:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start1+0x3f>
80006018:	00005097          	auipc	ra,0x5
8000601c:	d04080e7          	jalr	-764(ra) # 8000ad1c <__divsi3>
80006020:	05100593          	li	a1,81
80006024:	64b57663          	bgeu	a0,a1,80006670 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7e8>
80006028:	013495b3          	sll	a1,s1,s3
8000602c:	0015d613          	srli	a2,a1,0x1
80006030:	01ea8a93          	addi	s5,s5,30
80006034:	01565633          	srl	a2,a2,s5
80006038:	00451513          	slli	a0,a0,0x4
8000603c:	8000c6b7          	lui	a3,0x8000c
80006040:	a7868693          	addi	a3,a3,-1416 # 8000ba78 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>
80006044:	00a68533          	add	a0,a3,a0
80006048:	00052483          	lw	s1,0(a0)
8000604c:	00452983          	lw	s3,4(a0)
80006050:	00851d83          	lh	s11,8(a0)
80006054:	00a55503          	lhu	a0,10(a0)
80006058:	fca42423          	sw	a0,-56(s0)
8000605c:	01691533          	sll	a0,s2,s6
80006060:	00c56ab3          	or	s5,a0,a2
80006064:	01659b33          	sll	s6,a1,s6
80006068:	00098513          	mv	a0,s3
8000606c:	00000593          	li	a1,0
80006070:	000a8613          	mv	a2,s5
80006074:	00000693          	li	a3,0
80006078:	00004097          	auipc	ra,0x4
8000607c:	cb8080e7          	jalr	-840(ra) # 80009d30 <__muldi3>
80006080:	00050b93          	mv	s7,a0
80006084:	00058c13          	mv	s8,a1
80006088:	00098513          	mv	a0,s3
8000608c:	00000593          	li	a1,0
80006090:	000b0613          	mv	a2,s6
80006094:	00000693          	li	a3,0
80006098:	00004097          	auipc	ra,0x4
8000609c:	c98080e7          	jalr	-872(ra) # 80009d30 <__muldi3>
800060a0:	00050993          	mv	s3,a0
800060a4:	00058c93          	mv	s9,a1
800060a8:	00048513          	mv	a0,s1
800060ac:	00000593          	li	a1,0
800060b0:	000a8613          	mv	a2,s5
800060b4:	00000693          	li	a3,0
800060b8:	00004097          	auipc	ra,0x4
800060bc:	c78080e7          	jalr	-904(ra) # 80009d30 <__muldi3>
800060c0:	00050a93          	mv	s5,a0
800060c4:	00058d13          	mv	s10,a1
800060c8:	00048513          	mv	a0,s1
800060cc:	00000593          	li	a1,0
800060d0:	000b0613          	mv	a2,s6
800060d4:	00000693          	li	a3,0
800060d8:	00004097          	auipc	ra,0x4
800060dc:	c58080e7          	jalr	-936(ra) # 80009d30 <__muldi3>
800060e0:	00ba85b3          	add	a1,s5,a1
800060e4:	0155b533          	sltu	a0,a1,s5
800060e8:	013589b3          	add	s3,a1,s3
800060ec:	00b9b5b3          	sltu	a1,s3,a1
800060f0:	00b50533          	add	a0,a0,a1
800060f4:	800005b7          	lui	a1,0x80000
800060f8:	00b985b3          	add	a1,s3,a1
800060fc:	0135b5b3          	sltu	a1,a1,s3
80006100:	00b50533          	add	a0,a0,a1
80006104:	017d0bb3          	add	s7,s10,s7
80006108:	01abb5b3          	sltu	a1,s7,s10
8000610c:	00bc05b3          	add	a1,s8,a1
80006110:	019b8cb3          	add	s9,s7,s9
80006114:	017cb633          	sltu	a2,s9,s7
80006118:	00c585b3          	add	a1,a1,a2
8000611c:	00ac8533          	add	a0,s9,a0
80006120:	01953633          	sltu	a2,a0,s9
80006124:	00c585b3          	add	a1,a1,a2
80006128:	01ba0a33          	add	s4,s4,s11
8000612c:	414006b3          	neg	a3,s4
80006130:	fc000613          	li	a2,-64
80006134:	41460633          	sub	a2,a2,s4
80006138:	03f67293          	andi	t0,a2,63
8000613c:	fe028813          	addi	a6,t0,-32
80006140:	fff2cc93          	not	s9,t0
80006144:	00084663          	bltz	a6,80006150 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x2c8>
80006148:	0055dd33          	srl	s10,a1,t0
8000614c:	0140006f          	j	80006160 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x2d8>
80006150:	00d55733          	srl	a4,a0,a3
80006154:	00159793          	slli	a5,a1,0x1
80006158:	019797b3          	sll	a5,a5,s9
8000615c:	00f76d33          	or	s10,a4,a5
80006160:	fb442483          	lw	s1,-76(s0)
80006164:	fac42d83          	lw	s11,-84(s0)
80006168:	fb842903          	lw	s2,-72(s0)
8000616c:	fb042823          	sw	a6,-80(s0)
80006170:	00082713          	slti	a4,a6,0
80006174:	00100793          	li	a5,1
80006178:	00579833          	sll	a6,a5,t0
8000617c:	fff70893          	addi	a7,a4,-1
80006180:	0108fa33          	and	s4,a7,a6
80006184:	40e00733          	neg	a4,a4
80006188:	00d796b3          	sll	a3,a5,a3
8000618c:	00d77ab3          	and	s5,a4,a3
80006190:	001ab693          	seqz	a3,s5
80006194:	40da06b3          	sub	a3,s4,a3
80006198:	fffa8713          	addi	a4,s5,-1
8000619c:	fae42e23          	sw	a4,-68(s0)
800061a0:	00e57c33          	and	s8,a0,a4
800061a4:	fcd42023          	sw	a3,-64(s0)
800061a8:	00d5fbb3          	and	s7,a1,a3
800061ac:	017c66b3          	or	a3,s8,s7
800061b0:	02068a63          	beqz	a3,800061e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x35c>
800061b4:	004d5693          	srli	a3,s10,0x4
800061b8:	27100713          	li	a4,625
800061bc:	fc542223          	sw	t0,-60(s0)
800061c0:	04e6f863          	bgeu	a3,a4,80006210 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x388>
800061c4:	06400993          	li	s3,100
800061c8:	073d7a63          	bgeu	s10,s3,8000623c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3b4>
800061cc:	00a00993          	li	s3,10
800061d0:	00ad3693          	sltiu	a3,s10,10
800061d4:	013d7463          	bgeu	s10,s3,800061dc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x354>
800061d8:	00100993          	li	s3,1
800061dc:	0016cb13          	xori	s6,a3,1
800061e0:	0b80006f          	j	80006298 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
800061e4:	00a00693          	li	a3,10
800061e8:	01b6ee63          	bltu	a3,s11,80006204 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
800061ec:	002d9693          	slli	a3,s11,0x2
800061f0:	8000c737          	lui	a4,0x8000c
800061f4:	10870713          	addi	a4,a4,264 # 8000c108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
800061f8:	00e686b3          	add	a3,a3,a4
800061fc:	ffc6a683          	lw	a3,-4(a3)
80006200:	fadd7ae3          	bgeu	s10,a3,800061b4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x32c>
80006204:	fa842503          	lw	a0,-88(s0)
80006208:	00052023          	sw	zero,0(a0)
8000620c:	3a40006f          	j	800065b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x728>
80006210:	000f46b7          	lui	a3,0xf4
80006214:	24068693          	addi	a3,a3,576 # f4240 <.Lline_table_start2+0xf2e92>
80006218:	02dd7e63          	bgeu	s10,a3,80006254 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3cc>
8000621c:	000186b7          	lui	a3,0x18
80006220:	6a068993          	addi	s3,a3,1696 # 186a0 <.Lline_table_start2+0x172f2>
80006224:	013d36b3          	sltu	a3,s10,s3
80006228:	013d7663          	bgeu	s10,s3,80006234 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3ac>
8000622c:	00002737          	lui	a4,0x2
80006230:	71070993          	addi	s3,a4,1808 # 2710 <.Lline_table_start2+0x1362>
80006234:	0056cb13          	xori	s6,a3,5
80006238:	0600006f          	j	80006298 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
8000623c:	3e800713          	li	a4,1000
80006240:	3e8d3693          	sltiu	a3,s10,1000
80006244:	00ed6463          	bltu	s10,a4,8000624c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3c4>
80006248:	3e800993          	li	s3,1000
8000624c:	0036cb13          	xori	s6,a3,3
80006250:	0480006f          	j	80006298 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
80006254:	05f5e6b7          	lui	a3,0x5f5e
80006258:	10068993          	addi	s3,a3,256 # 5f5e100 <.Lline_table_start2+0x5f5cd52>
8000625c:	033d7263          	bgeu	s10,s3,80006280 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3f8>
80006260:	009896b7          	lui	a3,0x989
80006264:	68068993          	addi	s3,a3,1664 # 989680 <.Lline_table_start2+0x9882d2>
80006268:	013d36b3          	sltu	a3,s10,s3
8000626c:	013d7663          	bgeu	s10,s3,80006278 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3f0>
80006270:	000f4737          	lui	a4,0xf4
80006274:	24070993          	addi	s3,a4,576 # f4240 <.Lline_table_start2+0xf2e92>
80006278:	0076cb13          	xori	s6,a3,7
8000627c:	01c0006f          	j	80006298 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
80006280:	3b9ad6b7          	lui	a3,0x3b9ad
80006284:	a0068713          	addi	a4,a3,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
80006288:	00ed36b3          	sltu	a3,s10,a4
8000628c:	00ed6463          	bltu	s10,a4,80006294 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x40c>
80006290:	00070993          	mv	s3,a4
80006294:	0096cb13          	xori	s6,a3,9
80006298:	fc842683          	lw	a3,-56(s0)
8000629c:	40db06b3          	sub	a3,s6,a3
800062a0:	00168693          	addi	a3,a3,1
800062a4:	01069693          	slli	a3,a3,0x10
800062a8:	4106d693          	srai	a3,a3,0x10
800062ac:	02d4d463          	bge	s1,a3,800062d4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x44c>
800062b0:	40968533          	sub	a0,a3,s1
800062b4:	01061613          	slli	a2,a2,0x10
800062b8:	f9442e23          	sw	s4,-100(s0)
800062bc:	f9542c23          	sw	s5,-104(s0)
800062c0:	fb942223          	sw	s9,-92(s0)
800062c4:	f8d42a23          	sw	a3,-108(s0)
800062c8:	05b56063          	bltu	a0,s11,80006308 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x480>
800062cc:	fdb42423          	sw	s11,-56(s0)
800062d0:	0440006f          	j	80006314 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x48c>
800062d4:	00068b13          	mv	s6,a3
800062d8:	00a00613          	li	a2,10
800062dc:	00000693          	li	a3,0
800062e0:	00004097          	auipc	ra,0x4
800062e4:	5ec080e7          	jalr	1516(ra) # 8000a8cc <__udivdi3>
800062e8:	00050813          	mv	a6,a0
800062ec:	00058893          	mv	a7,a1
800062f0:	fc442503          	lw	a0,-60(s0)
800062f4:	00a99533          	sll	a0,s3,a0
800062f8:	fb042583          	lw	a1,-80(s0)
800062fc:	0c05ce63          	bltz	a1,800063d8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x550>
80006300:	00050e93          	mv	t4,a0
80006304:	0dc0006f          	j	800063e0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x558>
80006308:	01051513          	slli	a0,a0,0x10
8000630c:	41055513          	srai	a0,a0,0x10
80006310:	fca42423          	sw	a0,-56(s0)
80006314:	01065613          	srli	a2,a2,0x10
80006318:	fac42023          	sw	a2,-96(s0)
8000631c:	fff00a13          	li	s4,-1
80006320:	00090a93          	mv	s5,s2
80006324:	fff00c93          	li	s9,-1
80006328:	00098493          	mv	s1,s3
8000632c:	000d8913          	mv	s2,s11
80006330:	019d8db3          	add	s11,s11,s9
80006334:	000d0513          	mv	a0,s10
80006338:	00098593          	mv	a1,s3
8000633c:	00004097          	auipc	ra,0x4
80006340:	56c080e7          	jalr	1388(ra) # 8000a8a8 <__udivsi3>
80006344:	00050993          	mv	s3,a0
80006348:	00048593          	mv	a1,s1
8000634c:	00004097          	auipc	ra,0x4
80006350:	99c080e7          	jalr	-1636(ra) # 80009ce8 <__mulsi3>
80006354:	2f4d8663          	beq	s11,s4,80006640 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7b8>
80006358:	40ad0d33          	sub	s10,s10,a0
8000635c:	03098513          	addi	a0,s3,48
80006360:	fc842583          	lw	a1,-56(s0)
80006364:	019585b3          	add	a1,a1,s9
80006368:	00aa8023          	sb	a0,0(s5)
8000636c:	04058263          	beqz	a1,800063b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x528>
80006370:	019b0533          	add	a0,s6,s9
80006374:	00090d93          	mv	s11,s2
80006378:	09450c63          	beq	a0,s4,80006410 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x588>
8000637c:	00a00593          	li	a1,10
80006380:	00048513          	mv	a0,s1
80006384:	00004097          	auipc	ra,0x4
80006388:	524080e7          	jalr	1316(ra) # 8000a8a8 <__udivsi3>
8000638c:	00050993          	mv	s3,a0
80006390:	fffc8c93          	addi	s9,s9,-1
80006394:	001a8a93          	addi	s5,s5,1
80006398:	00a00513          	li	a0,10
8000639c:	f8a4f6e3          	bgeu	s1,a0,80006328 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x4a0>
800063a0:	8000c537          	lui	a0,0x8000c
800063a4:	13050513          	addi	a0,a0,304 # 8000c130 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.70>
800063a8:	00003097          	auipc	ra,0x3
800063ac:	ff8080e7          	jalr	-8(ra) # 800093a0 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>
800063b0:	fc442303          	lw	t1,-60(s0)
800063b4:	006d1733          	sll	a4,s10,t1
800063b8:	fb042783          	lw	a5,-80(s0)
800063bc:	1407cc63          	bltz	a5,80006514 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x68c>
800063c0:	00070693          	mv	a3,a4
800063c4:	fb842583          	lw	a1,-72(s0)
800063c8:	f9c42f83          	lw	t6,-100(s0)
800063cc:	f9842f03          	lw	t5,-104(s0)
800063d0:	fa442283          	lw	t0,-92(s0)
800063d4:	1580006f          	j	8000652c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6a4>
800063d8:	0019d593          	srli	a1,s3,0x1
800063dc:	0195deb3          	srl	t4,a1,s9
800063e0:	fb042583          	lw	a1,-80(s0)
800063e4:	41f5d593          	srai	a1,a1,0x1f
800063e8:	00a5fe33          	and	t3,a1,a0
800063ec:	fa842503          	lw	a0,-88(s0)
800063f0:	00090593          	mv	a1,s2
800063f4:	000d8613          	mv	a2,s11
800063f8:	00000693          	li	a3,0
800063fc:	000b0713          	mv	a4,s6
80006400:	00048793          	mv	a5,s1
80006404:	000a8f13          	mv	t5,s5
80006408:	000a0f93          	mv	t6,s4
8000640c:	19c0006f          	j	800065a8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x720>
80006410:	00000993          	li	s3,0
80006414:	fa042503          	lw	a0,-96(s0)
80006418:	fff50513          	addi	a0,a0,-1
8000641c:	03f57b13          	andi	s6,a0,63
80006420:	419004b3          	neg	s1,s9
80006424:	00100d13          	li	s10,1
80006428:	fffb4513          	not	a0,s6
8000642c:	faa42023          	sw	a0,-96(s0)
80006430:	fe0b0c93          	addi	s9,s6,-32
80006434:	41fcda13          	srai	s4,s9,0x1f
80006438:	fb842903          	lw	s2,-72(s0)
8000643c:	fb042a83          	lw	s5,-80(s0)
80006440:	0340006f          	j	80006474 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5ec>
80006444:	fc442503          	lw	a0,-60(s0)
80006448:	00abd533          	srl	a0,s7,a0
8000644c:	fc042583          	lw	a1,-64(s0)
80006450:	00bbfbb3          	and	s7,s7,a1
80006454:	fbc42583          	lw	a1,-68(s0)
80006458:	00bc7c33          	and	s8,s8,a1
8000645c:	03050513          	addi	a0,a0,48
80006460:	009905b3          	add	a1,s2,s1
80006464:	00148493          	addi	s1,s1,1
80006468:	00a58023          	sb	a0,0(a1) # 80000000 <_start>
8000646c:	fc842503          	lw	a0,-56(s0)
80006470:	10950463          	beq	a0,s1,80006578 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6f0>
80006474:	0169d533          	srl	a0,s3,s6
80006478:	000ccc63          	bltz	s9,80006490 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x608>
8000647c:	00050593          	mv	a1,a0
80006480:	00aa7533          	and	a0,s4,a0
80006484:	00a5e533          	or	a0,a1,a0
80006488:	02050463          	beqz	a0,800064b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x628>
8000648c:	d79ff06f          	j	80006204 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006490:	016d55b3          	srl	a1,s10,s6
80006494:	00199613          	slli	a2,s3,0x1
80006498:	fa042683          	lw	a3,-96(s0)
8000649c:	00d61633          	sll	a2,a2,a3
800064a0:	00c5e5b3          	or	a1,a1,a2
800064a4:	00aa7533          	and	a0,s4,a0
800064a8:	00a5e533          	or	a0,a1,a0
800064ac:	d4051ce3          	bnez	a0,80006204 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
800064b0:	1bb4f463          	bgeu	s1,s11,80006658 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7d0>
800064b4:	00a00613          	li	a2,10
800064b8:	000c0513          	mv	a0,s8
800064bc:	000b8593          	mv	a1,s7
800064c0:	00000693          	li	a3,0
800064c4:	00004097          	auipc	ra,0x4
800064c8:	86c080e7          	jalr	-1940(ra) # 80009d30 <__muldi3>
800064cc:	00050c13          	mv	s8,a0
800064d0:	00058b93          	mv	s7,a1
800064d4:	00a00613          	li	a2,10
800064d8:	000d0513          	mv	a0,s10
800064dc:	00098593          	mv	a1,s3
800064e0:	00000693          	li	a3,0
800064e4:	00004097          	auipc	ra,0x4
800064e8:	84c080e7          	jalr	-1972(ra) # 80009d30 <__muldi3>
800064ec:	00050d13          	mv	s10,a0
800064f0:	00058993          	mv	s3,a1
800064f4:	f40ad8e3          	bgez	s5,80006444 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5bc>
800064f8:	fc442503          	lw	a0,-60(s0)
800064fc:	00ac5533          	srl	a0,s8,a0
80006500:	001b9593          	slli	a1,s7,0x1
80006504:	fa442603          	lw	a2,-92(s0)
80006508:	00c595b3          	sll	a1,a1,a2
8000650c:	00b56533          	or	a0,a0,a1
80006510:	f3dff06f          	j	8000644c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5c4>
80006514:	001d5513          	srli	a0,s10,0x1
80006518:	fa442283          	lw	t0,-92(s0)
8000651c:	005556b3          	srl	a3,a0,t0
80006520:	fb842583          	lw	a1,-72(s0)
80006524:	f9c42f83          	lw	t6,-100(s0)
80006528:	f9842f03          	lw	t5,-104(s0)
8000652c:	41f7d513          	srai	a0,a5,0x1f
80006530:	00e57733          	and	a4,a0,a4
80006534:	017686b3          	add	a3,a3,s7
80006538:	01870833          	add	a6,a4,s8
8000653c:	00e838b3          	sltu	a7,a6,a4
80006540:	011688b3          	add	a7,a3,a7
80006544:	006496b3          	sll	a3,s1,t1
80006548:	0007c663          	bltz	a5,80006554 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6cc>
8000654c:	00068e93          	mv	t4,a3
80006550:	00c0006f          	j	8000655c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6d4>
80006554:	0014d493          	srli	s1,s1,0x1
80006558:	0054deb3          	srl	t4,s1,t0
8000655c:	00d57e33          	and	t3,a0,a3
80006560:	fa842503          	lw	a0,-88(s0)
80006564:	00090613          	mv	a2,s2
80006568:	fc842683          	lw	a3,-56(s0)
8000656c:	f9442703          	lw	a4,-108(s0)
80006570:	fb442783          	lw	a5,-76(s0)
80006574:	0340006f          	j	800065a8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x720>
80006578:	fa842503          	lw	a0,-88(s0)
8000657c:	00090593          	mv	a1,s2
80006580:	000d8613          	mv	a2,s11
80006584:	fc842683          	lw	a3,-56(s0)
80006588:	f9442703          	lw	a4,-108(s0)
8000658c:	fb442783          	lw	a5,-76(s0)
80006590:	000c0813          	mv	a6,s8
80006594:	000b8893          	mv	a7,s7
80006598:	f9842e03          	lw	t3,-104(s0)
8000659c:	f9c42e83          	lw	t4,-100(s0)
800065a0:	000d0f13          	mv	t5,s10
800065a4:	00098f93          	mv	t6,s3
800065a8:	00000097          	auipc	ra,0x0
800065ac:	0dc080e7          	jalr	220(ra) # 80006684 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E>
800065b0:	06c12083          	lw	ra,108(sp)
800065b4:	06812403          	lw	s0,104(sp)
800065b8:	06412483          	lw	s1,100(sp)
800065bc:	06012903          	lw	s2,96(sp)
800065c0:	05c12983          	lw	s3,92(sp)
800065c4:	05812a03          	lw	s4,88(sp)
800065c8:	05412a83          	lw	s5,84(sp)
800065cc:	05012b03          	lw	s6,80(sp)
800065d0:	04c12b83          	lw	s7,76(sp)
800065d4:	04812c03          	lw	s8,72(sp)
800065d8:	04412c83          	lw	s9,68(sp)
800065dc:	04012d03          	lw	s10,64(sp)
800065e0:	03c12d83          	lw	s11,60(sp)
800065e4:	07010113          	addi	sp,sp,112
800065e8:	00008067          	ret
800065ec:	8000c537          	lui	a0,0x8000c
800065f0:	84f50513          	addi	a0,a0,-1969 # 8000b84f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
800065f4:	8000c637          	lui	a2,0x8000c
800065f8:	0b460613          	addi	a2,a2,180 # 8000c0b4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.65>
800065fc:	01c00593          	li	a1,28
80006600:	00000097          	auipc	ra,0x0
80006604:	744080e7          	jalr	1860(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006608:	8000c537          	lui	a0,0x8000c
8000660c:	0c450513          	addi	a0,a0,196 # 8000c0c4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.66>
80006610:	8000c637          	lui	a2,0x8000c
80006614:	0e860613          	addi	a2,a2,232 # 8000c0e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.67>
80006618:	02400593          	li	a1,36
8000661c:	00000097          	auipc	ra,0x0
80006620:	728080e7          	jalr	1832(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006624:	8000c537          	lui	a0,0x8000c
80006628:	09050513          	addi	a0,a0,144 # 8000c090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>
8000662c:	8000c637          	lui	a2,0x8000c
80006630:	0f860613          	addi	a2,a2,248 # 8000c0f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.68>
80006634:	02100593          	li	a1,33
80006638:	00000097          	auipc	ra,0x0
8000663c:	70c080e7          	jalr	1804(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006640:	8000c637          	lui	a2,0x8000c
80006644:	14060613          	addi	a2,a2,320 # 8000c140 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.71>
80006648:	00090513          	mv	a0,s2
8000664c:	00090593          	mv	a1,s2
80006650:	00000097          	auipc	ra,0x0
80006654:	73c080e7          	jalr	1852(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80006658:	8000c637          	lui	a2,0x8000c
8000665c:	15060613          	addi	a2,a2,336 # 8000c150 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.72>
80006660:	00048513          	mv	a0,s1
80006664:	000d8593          	mv	a1,s11
80006668:	00000097          	auipc	ra,0x0
8000666c:	724080e7          	jalr	1828(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80006670:	8000c637          	lui	a2,0x8000c
80006674:	fb060613          	addi	a2,a2,-80 # 8000bfb0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>
80006678:	05100593          	li	a1,81
8000667c:	00000097          	auipc	ra,0x0
80006680:	710080e7          	jalr	1808(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80006684 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E>:
80006684:	fd010113          	addi	sp,sp,-48
80006688:	02112623          	sw	ra,44(sp)
8000668c:	02812423          	sw	s0,40(sp)
80006690:	02912223          	sw	s1,36(sp)
80006694:	03212023          	sw	s2,32(sp)
80006698:	01312e23          	sw	s3,28(sp)
8000669c:	01412c23          	sw	s4,24(sp)
800066a0:	01512a23          	sw	s5,20(sp)
800066a4:	01612823          	sw	s6,16(sp)
800066a8:	01712623          	sw	s7,12(sp)
800066ac:	01812423          	sw	s8,8(sp)
800066b0:	03010413          	addi	s0,sp,48
800066b4:	01fe8863          	beq	t4,t6,800066c4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x40>
800066b8:	01dfb2b3          	sltu	t0,t6,t4
800066bc:	00029863          	bnez	t0,800066cc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x48>
800066c0:	19c0006f          	j	8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
800066c4:	01cf32b3          	sltu	t0,t5,t3
800066c8:	18028a63          	beqz	t0,8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
800066cc:	01ee32b3          	sltu	t0,t3,t5
800066d0:	41fe8333          	sub	t1,t4,t6
800066d4:	405302b3          	sub	t0,t1,t0
800066d8:	01f28863          	beq	t0,t6,800066e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x64>
800066dc:	005fb2b3          	sltu	t0,t6,t0
800066e0:	00029a63          	bnez	t0,800066f4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x70>
800066e4:	1780006f          	j	8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
800066e8:	41ee02b3          	sub	t0,t3,t5
800066ec:	005f32b3          	sltu	t0,t5,t0
800066f0:	16028663          	beqz	t0,8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
800066f4:	010e32b3          	sltu	t0,t3,a6
800066f8:	411e8333          	sub	t1,t4,a7
800066fc:	405302b3          	sub	t0,t1,t0
80006700:	01128863          	beq	t0,a7,80006710 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x8c>
80006704:	0058b2b3          	sltu	t0,a7,t0
80006708:	00029a63          	bnez	t0,8000671c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x98>
8000670c:	0740006f          	j	80006780 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
80006710:	410e02b3          	sub	t0,t3,a6
80006714:	005832b3          	sltu	t0,a6,t0
80006718:	06028463          	beqz	t0,80006780 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
8000671c:	01f85293          	srli	t0,a6,0x1f
80006720:	00189313          	slli	t1,a7,0x1
80006724:	00536333          	or	t1,t1,t0
80006728:	00181293          	slli	t0,a6,0x1
8000672c:	005e33b3          	sltu	t2,t3,t0
80006730:	406e8333          	sub	t1,t4,t1
80006734:	40730333          	sub	t1,t1,t2
80006738:	01ff5393          	srli	t2,t5,0x1f
8000673c:	001f9493          	slli	s1,t6,0x1
80006740:	0074e3b3          	or	t2,s1,t2
80006744:	02730663          	beq	t1,t2,80006770 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xec>
80006748:	007332b3          	sltu	t0,t1,t2
8000674c:	02029a63          	bnez	t0,80006780 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
80006750:	1cd67863          	bgeu	a2,a3,80006920 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x29c>
80006754:	8000c737          	lui	a4,0x8000c
80006758:	18070713          	addi	a4,a4,384 # 8000c180 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.75>
8000675c:	00068513          	mv	a0,a3
80006760:	00060593          	mv	a1,a2
80006764:	00070613          	mv	a2,a4
80006768:	00002097          	auipc	ra,0x2
8000676c:	4b0080e7          	jalr	1200(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80006770:	405e02b3          	sub	t0,t3,t0
80006774:	001f1313          	slli	t1,t5,0x1
80006778:	0062b2b3          	sltu	t0,t0,t1
8000677c:	fc028ae3          	beqz	t0,80006750 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xcc>
80006780:	01f88863          	beq	a7,t6,80006790 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x10c>
80006784:	011fb2b3          	sltu	t0,t6,a7
80006788:	00029863          	bnez	t0,80006798 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x114>
8000678c:	0d00006f          	j	8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006790:	010f32b3          	sltu	t0,t5,a6
80006794:	0c028463          	beqz	t0,8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006798:	01e832b3          	sltu	t0,a6,t5
8000679c:	41f888b3          	sub	a7,a7,t6
800067a0:	405888b3          	sub	a7,a7,t0
800067a4:	41e80833          	sub	a6,a6,t5
800067a8:	411e82b3          	sub	t0,t4,a7
800067ac:	010e3333          	sltu	t1,t3,a6
800067b0:	406282b3          	sub	t0,t0,t1
800067b4:	09128e63          	beq	t0,a7,80006850 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1cc>
800067b8:	0058b833          	sltu	a6,a7,t0
800067bc:	0a081063          	bnez	a6,8000685c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
800067c0:	16d66863          	bltu	a2,a3,80006930 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x2ac>
800067c4:	00000893          	li	a7,0
800067c8:	00d584b3          	add	s1,a1,a3
800067cc:	fff00813          	li	a6,-1
800067d0:	03900313          	li	t1,57
800067d4:	00058293          	mv	t0,a1
800067d8:	0b168c63          	beq	a3,a7,80006890 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x20c>
800067dc:	00d283b3          	add	t2,t0,a3
800067e0:	fff3c383          	lbu	t2,-1(t2)
800067e4:	00188893          	addi	a7,a7,1
800067e8:	00180813          	addi	a6,a6,1
800067ec:	fff28293          	addi	t0,t0,-1
800067f0:	fe6384e3          	beq	t2,t1,800067d8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x154>
800067f4:	00d287b3          	add	a5,t0,a3
800067f8:	0007c883          	lbu	a7,0(a5)
800067fc:	00188893          	addi	a7,a7,1
80006800:	410682b3          	sub	t0,a3,a6
80006804:	01178023          	sb	a7,0(a5)
80006808:	10d2fa63          	bgeu	t0,a3,8000691c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
8000680c:	00178793          	addi	a5,a5,1
80006810:	00058493          	mv	s1,a1
80006814:	03000593          	li	a1,48
80006818:	00050913          	mv	s2,a0
8000681c:	00078513          	mv	a0,a5
80006820:	00060993          	mv	s3,a2
80006824:	00080613          	mv	a2,a6
80006828:	00068a13          	mv	s4,a3
8000682c:	00070a93          	mv	s5,a4
80006830:	00004097          	auipc	ra,0x4
80006834:	414080e7          	jalr	1044(ra) # 8000ac44 <memset>
80006838:	00048593          	mv	a1,s1
8000683c:	000a8713          	mv	a4,s5
80006840:	00090513          	mv	a0,s2
80006844:	00098613          	mv	a2,s3
80006848:	000a0693          	mv	a3,s4
8000684c:	0d00006f          	j	8000691c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006850:	410e08b3          	sub	a7,t3,a6
80006854:	01183833          	sltu	a6,a6,a7
80006858:	f60804e3          	beqz	a6,800067c0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x13c>
8000685c:	00052023          	sw	zero,0(a0)
80006860:	02c12083          	lw	ra,44(sp)
80006864:	02812403          	lw	s0,40(sp)
80006868:	02412483          	lw	s1,36(sp)
8000686c:	02012903          	lw	s2,32(sp)
80006870:	01c12983          	lw	s3,28(sp)
80006874:	01812a03          	lw	s4,24(sp)
80006878:	01412a83          	lw	s5,20(sp)
8000687c:	01012b03          	lw	s6,16(sp)
80006880:	00c12b83          	lw	s7,12(sp)
80006884:	00812c03          	lw	s8,8(sp)
80006888:	03010113          	addi	sp,sp,48
8000688c:	00008067          	ret
80006890:	06068263          	beqz	a3,800068f4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x270>
80006894:	03100893          	li	a7,49
80006898:	fff68813          	addi	a6,a3,-1
8000689c:	01158023          	sb	a7,0(a1)
800068a0:	04080e63          	beqz	a6,800068fc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x278>
800068a4:	00158893          	addi	a7,a1,1
800068a8:	00058993          	mv	s3,a1
800068ac:	03000593          	li	a1,48
800068b0:	03000913          	li	s2,48
800068b4:	00050a13          	mv	s4,a0
800068b8:	00088513          	mv	a0,a7
800068bc:	00060a93          	mv	s5,a2
800068c0:	00080613          	mv	a2,a6
800068c4:	00068b13          	mv	s6,a3
800068c8:	00070c13          	mv	s8,a4
800068cc:	00078b93          	mv	s7,a5
800068d0:	00004097          	auipc	ra,0x4
800068d4:	374080e7          	jalr	884(ra) # 8000ac44 <memset>
800068d8:	000b8793          	mv	a5,s7
800068dc:	00098593          	mv	a1,s3
800068e0:	000c0713          	mv	a4,s8
800068e4:	000a0513          	mv	a0,s4
800068e8:	000a8613          	mv	a2,s5
800068ec:	000b0693          	mv	a3,s6
800068f0:	0100006f          	j	80006900 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x27c>
800068f4:	03100913          	li	s2,49
800068f8:	0080006f          	j	80006900 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x27c>
800068fc:	03000913          	li	s2,48
80006900:	00170713          	addi	a4,a4,1
80006904:	01071713          	slli	a4,a4,0x10
80006908:	41075713          	srai	a4,a4,0x10
8000690c:	00c6f863          	bgeu	a3,a2,8000691c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006910:	00e7d663          	bge	a5,a4,8000691c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006914:	01248023          	sb	s2,0(s1)
80006918:	00168693          	addi	a3,a3,1
8000691c:	02d66863          	bltu	a2,a3,8000694c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x2c8>
80006920:	00b52023          	sw	a1,0(a0)
80006924:	00d52223          	sw	a3,4(a0)
80006928:	00e51423          	sh	a4,8(a0)
8000692c:	f35ff06f          	j	80006860 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1dc>
80006930:	8000c737          	lui	a4,0x8000c
80006934:	16070713          	addi	a4,a4,352 # 8000c160 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.73>
80006938:	00068513          	mv	a0,a3
8000693c:	00060593          	mv	a1,a2
80006940:	00070613          	mv	a2,a4
80006944:	00002097          	auipc	ra,0x2
80006948:	2d4080e7          	jalr	724(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
8000694c:	8000c737          	lui	a4,0x8000c
80006950:	17070713          	addi	a4,a4,368 # 8000c170 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74>
80006954:	00068513          	mv	a0,a3
80006958:	00060593          	mv	a1,a2
8000695c:	00070613          	mv	a2,a4
80006960:	00002097          	auipc	ra,0x2
80006964:	2b8080e7          	jalr	696(ra) # 80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>

80006968 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>:
80006968:	ff010113          	addi	sp,sp,-16
8000696c:	00112623          	sw	ra,12(sp)
80006970:	00812423          	sw	s0,8(sp)
80006974:	01010413          	addi	s0,sp,16
80006978:	10058863          	beqz	a1,80006a88 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x120>
8000697c:	00054803          	lbu	a6,0(a0)
80006980:	03000893          	li	a7,48
80006984:	1308f063          	bgeu	a7,a6,80006aa4 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x13c>
80006988:	00300813          	li	a6,3
8000698c:	12f87a63          	bgeu	a6,a5,80006ac0 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x158>
80006990:	00200813          	li	a6,2
80006994:	01071023          	sh	a6,0(a4)
80006998:	04c05863          	blez	a2,800069e8 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x80>
8000699c:	00a72223          	sw	a0,4(a4)
800069a0:	08b67463          	bgeu	a2,a1,80006a28 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xc0>
800069a4:	00c72423          	sw	a2,8(a4)
800069a8:	00200813          	li	a6,2
800069ac:	01071623          	sh	a6,12(a4)
800069b0:	8000c7b7          	lui	a5,0x8000c
800069b4:	22078793          	addi	a5,a5,544 # 8000c220 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>
800069b8:	00f72823          	sw	a5,16(a4)
800069bc:	00100793          	li	a5,1
800069c0:	00f72a23          	sw	a5,20(a4)
800069c4:	40c587b3          	sub	a5,a1,a2
800069c8:	00c50533          	add	a0,a0,a2
800069cc:	01071c23          	sh	a6,24(a4)
800069d0:	00a72e23          	sw	a0,28(a4)
800069d4:	02f72023          	sw	a5,32(a4)
800069d8:	00300593          	li	a1,3
800069dc:	08d7fc63          	bgeu	a5,a3,80006a74 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
800069e0:	40f686b3          	sub	a3,a3,a5
800069e4:	0740006f          	j	80006a58 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xf0>
800069e8:	40c007b3          	neg	a5,a2
800069ec:	8000c8b7          	lui	a7,0x8000c
800069f0:	22188893          	addi	a7,a7,545 # 8000c221 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
800069f4:	01172223          	sw	a7,4(a4)
800069f8:	01072423          	sw	a6,8(a4)
800069fc:	00071623          	sh	zero,12(a4)
80006a00:	00f72823          	sw	a5,16(a4)
80006a04:	01071c23          	sh	a6,24(a4)
80006a08:	00a72e23          	sw	a0,28(a4)
80006a0c:	02b72023          	sw	a1,32(a4)
80006a10:	04d5fc63          	bgeu	a1,a3,80006a68 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x100>
80006a14:	40b686b3          	sub	a3,a3,a1
80006a18:	00300593          	li	a1,3
80006a1c:	04d7fc63          	bgeu	a5,a3,80006a74 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006a20:	00c686b3          	add	a3,a3,a2
80006a24:	0340006f          	j	80006a58 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xf0>
80006a28:	00b72423          	sw	a1,8(a4)
80006a2c:	40b60633          	sub	a2,a2,a1
80006a30:	00071623          	sh	zero,12(a4)
80006a34:	00c72823          	sw	a2,16(a4)
80006a38:	02068c63          	beqz	a3,80006a70 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x108>
80006a3c:	00200513          	li	a0,2
80006a40:	00a71c23          	sh	a0,24(a4)
80006a44:	8000c537          	lui	a0,0x8000c
80006a48:	22050513          	addi	a0,a0,544 # 8000c220 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>
80006a4c:	00a72e23          	sw	a0,28(a4)
80006a50:	00100513          	li	a0,1
80006a54:	02a72023          	sw	a0,32(a4)
80006a58:	02071223          	sh	zero,36(a4)
80006a5c:	02d72423          	sw	a3,40(a4)
80006a60:	00400593          	li	a1,4
80006a64:	0100006f          	j	80006a74 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006a68:	00300593          	li	a1,3
80006a6c:	0080006f          	j	80006a74 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006a70:	00200593          	li	a1,2
80006a74:	00070513          	mv	a0,a4
80006a78:	00c12083          	lw	ra,12(sp)
80006a7c:	00812403          	lw	s0,8(sp)
80006a80:	01010113          	addi	sp,sp,16
80006a84:	00008067          	ret
80006a88:	8000c537          	lui	a0,0x8000c
80006a8c:	09050513          	addi	a0,a0,144 # 8000c090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>
80006a90:	8000c637          	lui	a2,0x8000c
80006a94:	1ac60613          	addi	a2,a2,428 # 8000c1ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.77>
80006a98:	02100593          	li	a1,33
80006a9c:	00000097          	auipc	ra,0x0
80006aa0:	2a8080e7          	jalr	680(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006aa4:	8000c537          	lui	a0,0x8000c
80006aa8:	1bc50513          	addi	a0,a0,444 # 8000c1bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.78>
80006aac:	8000c637          	lui	a2,0x8000c
80006ab0:	1dc60613          	addi	a2,a2,476 # 8000c1dc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.79>
80006ab4:	01f00593          	li	a1,31
80006ab8:	00000097          	auipc	ra,0x0
80006abc:	28c080e7          	jalr	652(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006ac0:	8000c537          	lui	a0,0x8000c
80006ac4:	1ec50513          	addi	a0,a0,492 # 8000c1ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.80>
80006ac8:	8000c637          	lui	a2,0x8000c
80006acc:	21060613          	addi	a2,a2,528 # 8000c210 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.81>
80006ad0:	02200593          	li	a1,34
80006ad4:	00000097          	auipc	ra,0x0
80006ad8:	270080e7          	jalr	624(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80006adc <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa05253f8c12d2c8E>:
80006adc:	fc010113          	addi	sp,sp,-64
80006ae0:	02112e23          	sw	ra,60(sp)
80006ae4:	02812c23          	sw	s0,56(sp)
80006ae8:	02912a23          	sw	s1,52(sp)
80006aec:	04010413          	addi	s0,sp,64
80006af0:	00052503          	lw	a0,0(a0)
80006af4:	00058493          	mv	s1,a1
80006af8:	fea42623          	sw	a0,-20(s0)
80006afc:	40a005b3          	neg	a1,a0
80006b00:	00b57533          	and	a0,a0,a1
80006b04:	077cb5b7          	lui	a1,0x77cb
80006b08:	53158593          	addi	a1,a1,1329 # 77cb531 <.Lline_table_start2+0x77ca183>
80006b0c:	00003097          	auipc	ra,0x3
80006b10:	1dc080e7          	jalr	476(ra) # 80009ce8 <__mulsi3>
80006b14:	01b55513          	srli	a0,a0,0x1b
80006b18:	8000b5b7          	lui	a1,0x8000b
80006b1c:	71458593          	addi	a1,a1,1812 # 8000b714 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4+0x28>
80006b20:	00a58533          	add	a0,a1,a0
80006b24:	00054503          	lbu	a0,0(a0)
80006b28:	fea42823          	sw	a0,-16(s0)
80006b2c:	fec40513          	addi	a0,s0,-20
80006b30:	fca42e23          	sw	a0,-36(s0)
80006b34:	80009537          	lui	a0,0x80009
80006b38:	2b050513          	addi	a0,a0,688 # 800092b0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E>
80006b3c:	fea42023          	sw	a0,-32(s0)
80006b40:	ff040513          	addi	a0,s0,-16
80006b44:	fea42223          	sw	a0,-28(s0)
80006b48:	80009537          	lui	a0,0x80009
80006b4c:	54850513          	addi	a0,a0,1352 # 80009548 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE>
80006b50:	fea42423          	sw	a0,-24(s0)
80006b54:	8000c537          	lui	a0,0x8000c
80006b58:	26c50513          	addi	a0,a0,620 # 8000c26c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.140>
80006b5c:	fca42223          	sw	a0,-60(s0)
80006b60:	00300513          	li	a0,3
80006b64:	fca42423          	sw	a0,-56(s0)
80006b68:	fc042a23          	sw	zero,-44(s0)
80006b6c:	fdc40613          	addi	a2,s0,-36
80006b70:	0144a503          	lw	a0,20(s1)
80006b74:	0184a583          	lw	a1,24(s1)
80006b78:	fcc42623          	sw	a2,-52(s0)
80006b7c:	00200613          	li	a2,2
80006b80:	fcc42823          	sw	a2,-48(s0)
80006b84:	fc440613          	addi	a2,s0,-60
80006b88:	00001097          	auipc	ra,0x1
80006b8c:	090080e7          	jalr	144(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006b90:	03c12083          	lw	ra,60(sp)
80006b94:	03812403          	lw	s0,56(sp)
80006b98:	03412483          	lw	s1,52(sp)
80006b9c:	04010113          	addi	sp,sp,64
80006ba0:	00008067          	ret

80006ba4 <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>:
80006ba4:	ff010113          	addi	sp,sp,-16
80006ba8:	00112623          	sw	ra,12(sp)
80006bac:	00812423          	sw	s0,8(sp)
80006bb0:	01010413          	addi	s0,sp,16
80006bb4:	00050613          	mv	a2,a0
80006bb8:	8000c537          	lui	a0,0x8000c
80006bbc:	28550513          	addi	a0,a0,645 # 8000c285 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.220>
80006bc0:	02b00593          	li	a1,43
80006bc4:	00000097          	auipc	ra,0x0
80006bc8:	180080e7          	jalr	384(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80006bcc <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E>:
80006bcc:	fb010113          	addi	sp,sp,-80
80006bd0:	04112623          	sw	ra,76(sp)
80006bd4:	04812423          	sw	s0,72(sp)
80006bd8:	04912223          	sw	s1,68(sp)
80006bdc:	05212023          	sw	s2,64(sp)
80006be0:	03312e23          	sw	s3,60(sp)
80006be4:	03412c23          	sw	s4,56(sp)
80006be8:	03512a23          	sw	s5,52(sp)
80006bec:	05010413          	addi	s0,sp,80
80006bf0:	0185a483          	lw	s1,24(a1)
80006bf4:	0145a903          	lw	s2,20(a1)
80006bf8:	00c4aa83          	lw	s5,12(s1)
80006bfc:	00050993          	mv	s3,a0
80006c00:	8000c5b7          	lui	a1,0x8000c
80006c04:	2c858593          	addi	a1,a1,712 # 8000c2c8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.222>
80006c08:	00c00613          	li	a2,12
80006c0c:	00090513          	mv	a0,s2
80006c10:	000a80e7          	jalr	s5
80006c14:	00100a13          	li	s4,1
80006c18:	0c051c63          	bnez	a0,80006cf0 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006c1c:	0049a503          	lw	a0,4(s3)
80006c20:	00850593          	addi	a1,a0,8
80006c24:	00c50613          	addi	a2,a0,12
80006c28:	fca42623          	sw	a0,-52(s0)
80006c2c:	8000a537          	lui	a0,0x8000a
80006c30:	c4850513          	addi	a0,a0,-952 # 80009c48 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80006c34:	fca42823          	sw	a0,-48(s0)
80006c38:	fcb42a23          	sw	a1,-44(s0)
80006c3c:	80009537          	lui	a0,0x80009
80006c40:	64050513          	addi	a0,a0,1600 # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80006c44:	fca42c23          	sw	a0,-40(s0)
80006c48:	fcc42e23          	sw	a2,-36(s0)
80006c4c:	fea42023          	sw	a0,-32(s0)
80006c50:	8000c537          	lui	a0,0x8000c
80006c54:	2b050513          	addi	a0,a0,688 # 8000c2b0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.221>
80006c58:	faa42a23          	sw	a0,-76(s0)
80006c5c:	00300513          	li	a0,3
80006c60:	faa42c23          	sw	a0,-72(s0)
80006c64:	fc042223          	sw	zero,-60(s0)
80006c68:	fcc40593          	addi	a1,s0,-52
80006c6c:	fab42e23          	sw	a1,-68(s0)
80006c70:	fca42023          	sw	a0,-64(s0)
80006c74:	fb440613          	addi	a2,s0,-76
80006c78:	00090513          	mv	a0,s2
80006c7c:	00048593          	mv	a1,s1
80006c80:	00001097          	auipc	ra,0x1
80006c84:	f98080e7          	jalr	-104(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006c88:	06051463          	bnez	a0,80006cf0 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006c8c:	8000c5b7          	lui	a1,0x8000c
80006c90:	2d458593          	addi	a1,a1,724 # 8000c2d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.223>
80006c94:	00200613          	li	a2,2
80006c98:	00090513          	mv	a0,s2
80006c9c:	000a80e7          	jalr	s5
80006ca0:	04051863          	bnez	a0,80006cf0 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006ca4:	0009a503          	lw	a0,0(s3)
80006ca8:	00052583          	lw	a1,0(a0)
80006cac:	fcb42623          	sw	a1,-52(s0)
80006cb0:	00452583          	lw	a1,4(a0)
80006cb4:	fcb42823          	sw	a1,-48(s0)
80006cb8:	00852583          	lw	a1,8(a0)
80006cbc:	fcb42a23          	sw	a1,-44(s0)
80006cc0:	00c52583          	lw	a1,12(a0)
80006cc4:	fcb42c23          	sw	a1,-40(s0)
80006cc8:	01052583          	lw	a1,16(a0)
80006ccc:	fcb42e23          	sw	a1,-36(s0)
80006cd0:	01452503          	lw	a0,20(a0)
80006cd4:	fea42023          	sw	a0,-32(s0)
80006cd8:	fcc40613          	addi	a2,s0,-52
80006cdc:	00090513          	mv	a0,s2
80006ce0:	00048593          	mv	a1,s1
80006ce4:	00001097          	auipc	ra,0x1
80006ce8:	f34080e7          	jalr	-204(ra) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006cec:	00050a13          	mv	s4,a0
80006cf0:	000a0513          	mv	a0,s4
80006cf4:	04c12083          	lw	ra,76(sp)
80006cf8:	04812403          	lw	s0,72(sp)
80006cfc:	04412483          	lw	s1,68(sp)
80006d00:	04012903          	lw	s2,64(sp)
80006d04:	03c12983          	lw	s3,60(sp)
80006d08:	03812a03          	lw	s4,56(sp)
80006d0c:	03412a83          	lw	s5,52(sp)
80006d10:	05010113          	addi	sp,sp,80
80006d14:	00008067          	ret

80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>:
80006d18:	fe010113          	addi	sp,sp,-32
80006d1c:	00112e23          	sw	ra,28(sp)
80006d20:	00812c23          	sw	s0,24(sp)
80006d24:	02010413          	addi	s0,sp,32
80006d28:	fea42623          	sw	a0,-20(s0)
80006d2c:	feb42823          	sw	a1,-16(s0)
80006d30:	00100513          	li	a0,1
80006d34:	fea41a23          	sh	a0,-12(s0)
80006d38:	fec40513          	addi	a0,s0,-20
80006d3c:	ffffb097          	auipc	ra,0xffffb
80006d40:	bb0080e7          	jalr	-1104(ra) # 800018ec <rust_begin_unwind>

80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>:
80006d44:	fd010113          	addi	sp,sp,-48
80006d48:	02112623          	sw	ra,44(sp)
80006d4c:	02812423          	sw	s0,40(sp)
80006d50:	03010413          	addi	s0,sp,48
80006d54:	fea42823          	sw	a0,-16(s0)
80006d58:	feb42a23          	sw	a1,-12(s0)
80006d5c:	ff040513          	addi	a0,s0,-16
80006d60:	fca42c23          	sw	a0,-40(s0)
80006d64:	00100513          	li	a0,1
80006d68:	fca42e23          	sw	a0,-36(s0)
80006d6c:	fe042423          	sw	zero,-24(s0)
80006d70:	00400513          	li	a0,4
80006d74:	fea42023          	sw	a0,-32(s0)
80006d78:	fe042223          	sw	zero,-28(s0)
80006d7c:	fd840513          	addi	a0,s0,-40
80006d80:	00060593          	mv	a1,a2
80006d84:	00000097          	auipc	ra,0x0
80006d88:	f94080e7          	jalr	-108(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>:
80006d8c:	fc010113          	addi	sp,sp,-64
80006d90:	02112e23          	sw	ra,60(sp)
80006d94:	02812c23          	sw	s0,56(sp)
80006d98:	04010413          	addi	s0,sp,64
80006d9c:	fca42423          	sw	a0,-56(s0)
80006da0:	fcb42623          	sw	a1,-52(s0)
80006da4:	fcc40513          	addi	a0,s0,-52
80006da8:	fea42423          	sw	a0,-24(s0)
80006dac:	80009537          	lui	a0,0x80009
80006db0:	64050513          	addi	a0,a0,1600 # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80006db4:	fea42623          	sw	a0,-20(s0)
80006db8:	fc840593          	addi	a1,s0,-56
80006dbc:	feb42823          	sw	a1,-16(s0)
80006dc0:	fea42a23          	sw	a0,-12(s0)
80006dc4:	8000c537          	lui	a0,0x8000c
80006dc8:	2e850513          	addi	a0,a0,744 # 8000c2e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.231>
80006dcc:	fca42823          	sw	a0,-48(s0)
80006dd0:	00200513          	li	a0,2
80006dd4:	fca42a23          	sw	a0,-44(s0)
80006dd8:	fe042023          	sw	zero,-32(s0)
80006ddc:	fe840593          	addi	a1,s0,-24
80006de0:	fcb42c23          	sw	a1,-40(s0)
80006de4:	fca42e23          	sw	a0,-36(s0)
80006de8:	fd040513          	addi	a0,s0,-48
80006dec:	00060593          	mv	a1,a2
80006df0:	00000097          	auipc	ra,0x0
80006df4:	f28080e7          	jalr	-216(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80006df8 <_ZN4core9panicking13assert_failed17h4fcb3a6812de271fE>:
80006df8:	ff010113          	addi	sp,sp,-16
80006dfc:	00112623          	sw	ra,12(sp)
80006e00:	00812423          	sw	s0,8(sp)
80006e04:	01010413          	addi	s0,sp,16
80006e08:	00060793          	mv	a5,a2
80006e0c:	fea42823          	sw	a0,-16(s0)
80006e10:	feb42a23          	sw	a1,-12(s0)
80006e14:	8000c637          	lui	a2,0x8000c
80006e18:	2f860613          	addi	a2,a2,760 # 8000c2f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.238>
80006e1c:	8000b837          	lui	a6,0x8000b
80006e20:	77c80813          	addi	a6,a6,1916 # 8000b77c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.24>
80006e24:	ff040593          	addi	a1,s0,-16
80006e28:	ff440693          	addi	a3,s0,-12
80006e2c:	00000513          	li	a0,0
80006e30:	00060713          	mv	a4,a2
80006e34:	00000097          	auipc	ra,0x0
80006e38:	008080e7          	jalr	8(ra) # 80006e3c <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E>

80006e3c <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E>:
80006e3c:	f8010113          	addi	sp,sp,-128
80006e40:	06112e23          	sw	ra,124(sp)
80006e44:	06812c23          	sw	s0,120(sp)
80006e48:	06912a23          	sw	s1,116(sp)
80006e4c:	07212823          	sw	s2,112(sp)
80006e50:	08010413          	addi	s0,sp,128
80006e54:	00080493          	mv	s1,a6
80006e58:	f8b42423          	sw	a1,-120(s0)
80006e5c:	f8c42623          	sw	a2,-116(s0)
80006e60:	f8d42823          	sw	a3,-112(s0)
80006e64:	f8e42a23          	sw	a4,-108(s0)
80006e68:	00050c63          	beqz	a0,80006e80 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x44>
80006e6c:	00100593          	li	a1,1
80006e70:	02b51263          	bne	a0,a1,80006e94 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x58>
80006e74:	8000c537          	lui	a0,0x8000c
80006e78:	30a50513          	addi	a0,a0,778 # 8000c30a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.241>
80006e7c:	00c0006f          	j	80006e88 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x4c>
80006e80:	8000c537          	lui	a0,0x8000c
80006e84:	30850513          	addi	a0,a0,776 # 8000c308 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.240>
80006e88:	f8a42c23          	sw	a0,-104(s0)
80006e8c:	00200513          	li	a0,2
80006e90:	0140006f          	j	80006ea4 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x68>
80006e94:	8000c537          	lui	a0,0x8000c
80006e98:	30c50513          	addi	a0,a0,780 # 8000c30c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.242>
80006e9c:	f8a42c23          	sw	a0,-104(s0)
80006ea0:	00700513          	li	a0,7
80006ea4:	0007a583          	lw	a1,0(a5)
80006ea8:	f8a42e23          	sw	a0,-100(s0)
80006eac:	04059663          	bnez	a1,80006ef8 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0xbc>
80006eb0:	f9840513          	addi	a0,s0,-104
80006eb4:	faa42c23          	sw	a0,-72(s0)
80006eb8:	8000a537          	lui	a0,0x8000a
80006ebc:	c4850513          	addi	a0,a0,-952 # 80009c48 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80006ec0:	faa42e23          	sw	a0,-68(s0)
80006ec4:	f8840513          	addi	a0,s0,-120
80006ec8:	fca42023          	sw	a0,-64(s0)
80006ecc:	8000a537          	lui	a0,0x8000a
80006ed0:	b0450513          	addi	a0,a0,-1276 # 80009b04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
80006ed4:	fca42223          	sw	a0,-60(s0)
80006ed8:	f9040593          	addi	a1,s0,-112
80006edc:	fcb42423          	sw	a1,-56(s0)
80006ee0:	fca42623          	sw	a0,-52(s0)
80006ee4:	8000c537          	lui	a0,0x8000c
80006ee8:	33450513          	addi	a0,a0,820 # 8000c334 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.246>
80006eec:	fca42c23          	sw	a0,-40(s0)
80006ef0:	00300513          	li	a0,3
80006ef4:	0700006f          	j	80006f64 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x128>
80006ef8:	fa040513          	addi	a0,s0,-96
80006efc:	01800613          	li	a2,24
80006f00:	fa040913          	addi	s2,s0,-96
80006f04:	00078593          	mv	a1,a5
80006f08:	00003097          	auipc	ra,0x3
80006f0c:	eb0080e7          	jalr	-336(ra) # 80009db8 <memcpy>
80006f10:	f9840513          	addi	a0,s0,-104
80006f14:	faa42c23          	sw	a0,-72(s0)
80006f18:	8000a537          	lui	a0,0x8000a
80006f1c:	c4850513          	addi	a0,a0,-952 # 80009c48 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80006f20:	faa42e23          	sw	a0,-68(s0)
80006f24:	fd242023          	sw	s2,-64(s0)
80006f28:	80008537          	lui	a0,0x80008
80006f2c:	be050513          	addi	a0,a0,-1056 # 80007be0 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hefd8b8a880068ae0E>
80006f30:	fca42223          	sw	a0,-60(s0)
80006f34:	f8840513          	addi	a0,s0,-120
80006f38:	fca42423          	sw	a0,-56(s0)
80006f3c:	8000a537          	lui	a0,0x8000a
80006f40:	b0450513          	addi	a0,a0,-1276 # 80009b04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
80006f44:	fca42623          	sw	a0,-52(s0)
80006f48:	f9040593          	addi	a1,s0,-112
80006f4c:	fcb42823          	sw	a1,-48(s0)
80006f50:	fca42a23          	sw	a0,-44(s0)
80006f54:	8000c537          	lui	a0,0x8000c
80006f58:	35850513          	addi	a0,a0,856 # 8000c358 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.249>
80006f5c:	fca42c23          	sw	a0,-40(s0)
80006f60:	00400513          	li	a0,4
80006f64:	fca42e23          	sw	a0,-36(s0)
80006f68:	fe042423          	sw	zero,-24(s0)
80006f6c:	fb840593          	addi	a1,s0,-72
80006f70:	feb42023          	sw	a1,-32(s0)
80006f74:	fea42223          	sw	a0,-28(s0)
80006f78:	fd840513          	addi	a0,s0,-40
80006f7c:	00048593          	mv	a1,s1
80006f80:	00000097          	auipc	ra,0x0
80006f84:	d98080e7          	jalr	-616(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80006f88 <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>:
80006f88:	fc010113          	addi	sp,sp,-64
80006f8c:	02112e23          	sw	ra,60(sp)
80006f90:	02812c23          	sw	s0,56(sp)
80006f94:	04010413          	addi	s0,sp,64
80006f98:	fca42023          	sw	a0,-64(s0)
80006f9c:	fcb42223          	sw	a1,-60(s0)
80006fa0:	fcc42423          	sw	a2,-56(s0)
80006fa4:	fcd42623          	sw	a3,-52(s0)
80006fa8:	fc040513          	addi	a0,s0,-64
80006fac:	fea42423          	sw	a0,-24(s0)
80006fb0:	8000a537          	lui	a0,0x8000a
80006fb4:	c4850513          	addi	a0,a0,-952 # 80009c48 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80006fb8:	fea42623          	sw	a0,-20(s0)
80006fbc:	fc840513          	addi	a0,s0,-56
80006fc0:	fea42823          	sw	a0,-16(s0)
80006fc4:	8000a537          	lui	a0,0x8000a
80006fc8:	b0450513          	addi	a0,a0,-1276 # 80009b04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
80006fcc:	fea42a23          	sw	a0,-12(s0)
80006fd0:	8000c537          	lui	a0,0x8000c
80006fd4:	37c50513          	addi	a0,a0,892 # 8000c37c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.251>
80006fd8:	fca42823          	sw	a0,-48(s0)
80006fdc:	00200513          	li	a0,2
80006fe0:	fca42a23          	sw	a0,-44(s0)
80006fe4:	fe042023          	sw	zero,-32(s0)
80006fe8:	fe840593          	addi	a1,s0,-24
80006fec:	fcb42c23          	sw	a1,-40(s0)
80006ff0:	fca42e23          	sw	a0,-36(s0)
80006ff4:	fd040513          	addi	a0,s0,-48
80006ff8:	00070593          	mv	a1,a4
80006ffc:	00000097          	auipc	ra,0x0
80007000:	d1c080e7          	jalr	-740(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80007004 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>:
80007004:	fb010113          	addi	sp,sp,-80
80007008:	04112623          	sw	ra,76(sp)
8000700c:	04812423          	sw	s0,72(sp)
80007010:	04912223          	sw	s1,68(sp)
80007014:	05212023          	sw	s2,64(sp)
80007018:	03312e23          	sw	s3,60(sp)
8000701c:	03412c23          	sw	s4,56(sp)
80007020:	03512a23          	sw	s5,52(sp)
80007024:	03612823          	sw	s6,48(sp)
80007028:	03712623          	sw	s7,44(sp)
8000702c:	03812423          	sw	s8,40(sp)
80007030:	03912223          	sw	s9,36(sp)
80007034:	03a12023          	sw	s10,32(sp)
80007038:	01b12e23          	sw	s11,28(sp)
8000703c:	05010413          	addi	s0,sp,80
80007040:	00060c13          	mv	s8,a2
80007044:	00058913          	mv	s2,a1
80007048:	00000993          	li	s3,0
8000704c:	00000b93          	li	s7,0
80007050:	00000d13          	li	s10,0
80007054:	0a0a15b7          	lui	a1,0xa0a1
80007058:	a0a58a93          	addi	s5,a1,-1526 # a0a0a0a <.Lline_table_start2+0xa09f65c>
8000705c:	010105b7          	lui	a1,0x1010
80007060:	10058b13          	addi	s6,a1,256 # 1010100 <.Lline_table_start2+0x100ed52>
80007064:	00852583          	lw	a1,8(a0)
80007068:	fcb42423          	sw	a1,-56(s0)
8000706c:	00052583          	lw	a1,0(a0)
80007070:	fcb42223          	sw	a1,-60(s0)
80007074:	00452503          	lw	a0,4(a0)
80007078:	fca42023          	sw	a0,-64(s0)
8000707c:	fff90513          	addi	a0,s2,-1
80007080:	faa42c23          	sw	a0,-72(s0)
80007084:	40c00533          	neg	a0,a2
80007088:	faa42e23          	sw	a0,-68(s0)
8000708c:	00a00d93          	li	s11,10
80007090:	80808537          	lui	a0,0x80808
80007094:	08050a13          	addi	s4,a0,128 # 80808080 <KALLOC_BUFFER+0x7fa080>
80007098:	0400006f          	j	800070d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xd4>
8000709c:	fb842503          	lw	a0,-72(s0)
800070a0:	00950533          	add	a0,a0,s1
800070a4:	00054503          	lbu	a0,0(a0)
800070a8:	ff650513          	addi	a0,a0,-10
800070ac:	00153513          	seqz	a0,a0
800070b0:	fc842583          	lw	a1,-56(s0)
800070b4:	00a58023          	sb	a0,0(a1)
800070b8:	fc042503          	lw	a0,-64(s0)
800070bc:	00c52683          	lw	a3,12(a0)
800070c0:	41348633          	sub	a2,s1,s3
800070c4:	013905b3          	add	a1,s2,s3
800070c8:	fc442503          	lw	a0,-60(s0)
800070cc:	000680e7          	jalr	a3
800070d0:	000c8993          	mv	s3,s9
800070d4:	18051663          	bnez	a0,80007260 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x25c>
800070d8:	001d7513          	andi	a0,s10,1
800070dc:	16051e63          	bnez	a0,80007258 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x254>
800070e0:	057c7863          	bgeu	s8,s7,80007130 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x12c>
800070e4:	00100d13          	li	s10,1
800070e8:	00098c93          	mv	s9,s3
800070ec:	000c0493          	mv	s1,s8
800070f0:	17898463          	beq	s3,s8,80007258 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x254>
800070f4:	fc842503          	lw	a0,-56(s0)
800070f8:	00054503          	lbu	a0,0(a0)
800070fc:	02050263          	beqz	a0,80007120 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x11c>
80007100:	fc042503          	lw	a0,-64(s0)
80007104:	00c52683          	lw	a3,12(a0)
80007108:	00400613          	li	a2,4
8000710c:	fc442503          	lw	a0,-60(s0)
80007110:	8000b5b7          	lui	a1,0x8000b
80007114:	02e58593          	addi	a1,a1,46 # 8000b02e <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4+0x6>
80007118:	000680e7          	jalr	a3
8000711c:	14051263          	bnez	a0,80007260 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x25c>
80007120:	f7349ee3          	bne	s1,s3,8000709c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x98>
80007124:	00000513          	li	a0,0
80007128:	f89ff06f          	j	800070b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xac>
8000712c:	fb7c6ce3          	bltu	s8,s7,800070e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xe0>
80007130:	417c05b3          	sub	a1,s8,s7
80007134:	01790533          	add	a0,s2,s7
80007138:	00700613          	li	a2,7
8000713c:	02b66863          	bltu	a2,a1,8000716c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x168>
80007140:	117c0263          	beq	s8,s7,80007244 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
80007144:	00000593          	li	a1,0
80007148:	fbc42603          	lw	a2,-68(s0)
8000714c:	01760633          	add	a2,a2,s7
80007150:	00050693          	mv	a3,a0
80007154:	0006c703          	lbu	a4,0(a3)
80007158:	0bb70c63          	beq	a4,s11,80007210 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x20c>
8000715c:	fff58593          	addi	a1,a1,-1
80007160:	00168693          	addi	a3,a3,1
80007164:	feb618e3          	bne	a2,a1,80007154 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x150>
80007168:	0dc0006f          	j	80007244 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
8000716c:	00350713          	addi	a4,a0,3
80007170:	ffc77713          	andi	a4,a4,-4
80007174:	40a70633          	sub	a2,a4,a0
80007178:	02060463          	beqz	a2,800071a0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x19c>
8000717c:	00000693          	li	a3,0
80007180:	00d507b3          	add	a5,a0,a3
80007184:	0007c783          	lbu	a5,0(a5)
80007188:	09b78663          	beq	a5,s11,80007214 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x210>
8000718c:	00168693          	addi	a3,a3,1
80007190:	fed618e3          	bne	a2,a3,80007180 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x17c>
80007194:	ff858693          	addi	a3,a1,-8
80007198:	00c6f663          	bgeu	a3,a2,800071a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1a0>
8000719c:	0480006f          	j	800071e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1e0>
800071a0:	ff858693          	addi	a3,a1,-8
800071a4:	00400793          	li	a5,4
800071a8:	00e78733          	add	a4,a5,a4
800071ac:	ffc72783          	lw	a5,-4(a4)
800071b0:	00072803          	lw	a6,0(a4)
800071b4:	0157c8b3          	xor	a7,a5,s5
800071b8:	01584833          	xor	a6,a6,s5
800071bc:	410b02b3          	sub	t0,s6,a6
800071c0:	0102e833          	or	a6,t0,a6
800071c4:	411b08b3          	sub	a7,s6,a7
800071c8:	00f8e7b3          	or	a5,a7,a5
800071cc:	0107f7b3          	and	a5,a5,a6
800071d0:	0147f7b3          	and	a5,a5,s4
800071d4:	01479863          	bne	a5,s4,800071e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1e0>
800071d8:	00860613          	addi	a2,a2,8
800071dc:	00870713          	addi	a4,a4,8
800071e0:	fcc6f6e3          	bgeu	a3,a2,800071ac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1a8>
800071e4:	06b60063          	beq	a2,a1,80007244 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
800071e8:	00c506b3          	add	a3,a0,a2
800071ec:	40c005b3          	neg	a1,a2
800071f0:	fbc42603          	lw	a2,-68(s0)
800071f4:	01760633          	add	a2,a2,s7
800071f8:	0006c703          	lbu	a4,0(a3)
800071fc:	01b70a63          	beq	a4,s11,80007210 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x20c>
80007200:	fff58593          	addi	a1,a1,-1
80007204:	00168693          	addi	a3,a3,1
80007208:	feb618e3          	bne	a2,a1,800071f8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1f4>
8000720c:	0380006f          	j	80007244 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
80007210:	40b006b3          	neg	a3,a1
80007214:	017685b3          	add	a1,a3,s7
80007218:	00158b93          	addi	s7,a1,1
8000721c:	f185f8e3          	bgeu	a1,s8,8000712c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x128>
80007220:	00d50533          	add	a0,a0,a3
80007224:	00054503          	lbu	a0,0(a0)
80007228:	f1b512e3          	bne	a0,s11,8000712c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x128>
8000722c:	000b8c93          	mv	s9,s7
80007230:	000b8493          	mv	s1,s7
80007234:	fc842503          	lw	a0,-56(s0)
80007238:	00054503          	lbu	a0,0(a0)
8000723c:	ee0502e3          	beqz	a0,80007120 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x11c>
80007240:	ec1ff06f          	j	80007100 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xfc>
80007244:	000c0b93          	mv	s7,s8
80007248:	00100d13          	li	s10,1
8000724c:	00098c93          	mv	s9,s3
80007250:	000c0493          	mv	s1,s8
80007254:	eb8990e3          	bne	s3,s8,800070f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xf0>
80007258:	00000513          	li	a0,0
8000725c:	0080006f          	j	80007264 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x260>
80007260:	00100513          	li	a0,1
80007264:	04c12083          	lw	ra,76(sp)
80007268:	04812403          	lw	s0,72(sp)
8000726c:	04412483          	lw	s1,68(sp)
80007270:	04012903          	lw	s2,64(sp)
80007274:	03c12983          	lw	s3,60(sp)
80007278:	03812a03          	lw	s4,56(sp)
8000727c:	03412a83          	lw	s5,52(sp)
80007280:	03012b03          	lw	s6,48(sp)
80007284:	02c12b83          	lw	s7,44(sp)
80007288:	02812c03          	lw	s8,40(sp)
8000728c:	02412c83          	lw	s9,36(sp)
80007290:	02012d03          	lw	s10,32(sp)
80007294:	01c12d83          	lw	s11,28(sp)
80007298:	05010113          	addi	sp,sp,80
8000729c:	00008067          	ret

800072a0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E>:
800072a0:	fe010113          	addi	sp,sp,-32
800072a4:	00112e23          	sw	ra,28(sp)
800072a8:	00812c23          	sw	s0,24(sp)
800072ac:	00912a23          	sw	s1,20(sp)
800072b0:	01212823          	sw	s2,16(sp)
800072b4:	01312623          	sw	s3,12(sp)
800072b8:	01412423          	sw	s4,8(sp)
800072bc:	02010413          	addi	s0,sp,32
800072c0:	00852903          	lw	s2,8(a0)
800072c4:	00094603          	lbu	a2,0(s2)
800072c8:	00052483          	lw	s1,0(a0)
800072cc:	00452983          	lw	s3,4(a0)
800072d0:	04060863          	beqz	a2,80007320 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E+0x80>
800072d4:	00c9a703          	lw	a4,12(s3)
800072d8:	8000b6b7          	lui	a3,0x8000b
800072dc:	02e68693          	addi	a3,a3,46 # 8000b02e <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4+0x6>
800072e0:	00400613          	li	a2,4
800072e4:	00048513          	mv	a0,s1
800072e8:	00058a13          	mv	s4,a1
800072ec:	00068593          	mv	a1,a3
800072f0:	000700e7          	jalr	a4
800072f4:	000a0593          	mv	a1,s4
800072f8:	02050463          	beqz	a0,80007320 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E+0x80>
800072fc:	00100513          	li	a0,1
80007300:	01c12083          	lw	ra,28(sp)
80007304:	01812403          	lw	s0,24(sp)
80007308:	01412483          	lw	s1,20(sp)
8000730c:	01012903          	lw	s2,16(sp)
80007310:	00c12983          	lw	s3,12(sp)
80007314:	00812a03          	lw	s4,8(sp)
80007318:	02010113          	addi	sp,sp,32
8000731c:	00008067          	ret
80007320:	ff658513          	addi	a0,a1,-10
80007324:	00153513          	seqz	a0,a0
80007328:	00a90023          	sb	a0,0(s2)
8000732c:	0109a303          	lw	t1,16(s3)
80007330:	00048513          	mv	a0,s1
80007334:	01c12083          	lw	ra,28(sp)
80007338:	01812403          	lw	s0,24(sp)
8000733c:	01412483          	lw	s1,20(sp)
80007340:	01012903          	lw	s2,16(sp)
80007344:	00c12983          	lw	s3,12(sp)
80007348:	00812a03          	lw	s4,8(sp)
8000734c:	02010113          	addi	sp,sp,32
80007350:	00030067          	jr	t1

80007354 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>:
80007354:	fa010113          	addi	sp,sp,-96
80007358:	04112e23          	sw	ra,92(sp)
8000735c:	04812c23          	sw	s0,88(sp)
80007360:	04912a23          	sw	s1,84(sp)
80007364:	05212823          	sw	s2,80(sp)
80007368:	05312623          	sw	s3,76(sp)
8000736c:	05412423          	sw	s4,72(sp)
80007370:	05512223          	sw	s5,68(sp)
80007374:	05612023          	sw	s6,64(sp)
80007378:	03712e23          	sw	s7,60(sp)
8000737c:	03812c23          	sw	s8,56(sp)
80007380:	06010413          	addi	s0,sp,96
80007384:	00050493          	mv	s1,a0
80007388:	00454503          	lbu	a0,4(a0)
8000738c:	00100b13          	li	s6,1
80007390:	00100a93          	li	s5,1
80007394:	04050063          	beqz	a0,800073d4 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x80>
80007398:	01548223          	sb	s5,4(s1)
8000739c:	016482a3          	sb	s6,5(s1)
800073a0:	00048513          	mv	a0,s1
800073a4:	05c12083          	lw	ra,92(sp)
800073a8:	05812403          	lw	s0,88(sp)
800073ac:	05412483          	lw	s1,84(sp)
800073b0:	05012903          	lw	s2,80(sp)
800073b4:	04c12983          	lw	s3,76(sp)
800073b8:	04812a03          	lw	s4,72(sp)
800073bc:	04412a83          	lw	s5,68(sp)
800073c0:	04012b03          	lw	s6,64(sp)
800073c4:	03c12b83          	lw	s7,60(sp)
800073c8:	03812c03          	lw	s8,56(sp)
800073cc:	06010113          	addi	sp,sp,96
800073d0:	00008067          	ret
800073d4:	00070993          	mv	s3,a4
800073d8:	00068913          	mv	s2,a3
800073dc:	0004aa03          	lw	s4,0(s1)
800073e0:	01ca2503          	lw	a0,28(s4)
800073e4:	0054c683          	lbu	a3,5(s1)
800073e8:	00457713          	andi	a4,a0,4
800073ec:	00071e63          	bnez	a4,80007408 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0xb4>
800073f0:	00058b93          	mv	s7,a1
800073f4:	00060c13          	mv	s8,a2
800073f8:	10069c63          	bnez	a3,80007510 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x1bc>
800073fc:	8000c5b7          	lui	a1,0x8000c
80007400:	3a458593          	addi	a1,a1,932 # 8000c3a4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.254>
80007404:	1140006f          	j	80007518 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x1c4>
80007408:	04069063          	bnez	a3,80007448 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0xf4>
8000740c:	018a2683          	lw	a3,24(s4)
80007410:	014a2503          	lw	a0,20(s4)
80007414:	00c6a703          	lw	a4,12(a3)
80007418:	8000c6b7          	lui	a3,0x8000c
8000741c:	3a968693          	addi	a3,a3,937 # 8000c3a9 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.256>
80007420:	00060a93          	mv	s5,a2
80007424:	00300613          	li	a2,3
80007428:	00058b93          	mv	s7,a1
8000742c:	00068593          	mv	a1,a3
80007430:	000700e7          	jalr	a4
80007434:	000a8613          	mv	a2,s5
80007438:	00100a93          	li	s5,1
8000743c:	f4051ee3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007440:	000b8593          	mv	a1,s7
80007444:	01ca2503          	lw	a0,28(s4)
80007448:	014a2683          	lw	a3,20(s4)
8000744c:	018a2703          	lw	a4,24(s4)
80007450:	00100a93          	li	s5,1
80007454:	fb5409a3          	sb	s5,-77(s0)
80007458:	fad42223          	sw	a3,-92(s0)
8000745c:	fae42423          	sw	a4,-88(s0)
80007460:	fb340693          	addi	a3,s0,-77
80007464:	fad42623          	sw	a3,-84(s0)
80007468:	010a2683          	lw	a3,16(s4)
8000746c:	020a4703          	lbu	a4,32(s4)
80007470:	000a2783          	lw	a5,0(s4)
80007474:	004a2803          	lw	a6,4(s4)
80007478:	008a2883          	lw	a7,8(s4)
8000747c:	00ca2283          	lw	t0,12(s4)
80007480:	fca42823          	sw	a0,-48(s0)
80007484:	fcd42223          	sw	a3,-60(s0)
80007488:	fce40a23          	sb	a4,-44(s0)
8000748c:	faf42a23          	sw	a5,-76(s0)
80007490:	fb042c23          	sw	a6,-72(s0)
80007494:	fb142e23          	sw	a7,-68(s0)
80007498:	fc542023          	sw	t0,-64(s0)
8000749c:	fa440513          	addi	a0,s0,-92
800074a0:	fca42423          	sw	a0,-56(s0)
800074a4:	8000c537          	lui	a0,0x8000c
800074a8:	38c50513          	addi	a0,a0,908 # 8000c38c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>
800074ac:	fca42623          	sw	a0,-52(s0)
800074b0:	fa440513          	addi	a0,s0,-92
800074b4:	00000097          	auipc	ra,0x0
800074b8:	b50080e7          	jalr	-1200(ra) # 80007004 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>
800074bc:	ec051ee3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800074c0:	8000c5b7          	lui	a1,0x8000c
800074c4:	37858593          	addi	a1,a1,888 # 8000c378 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>
800074c8:	fa440513          	addi	a0,s0,-92
800074cc:	00200613          	li	a2,2
800074d0:	00000097          	auipc	ra,0x0
800074d4:	b34080e7          	jalr	-1228(ra) # 80007004 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>
800074d8:	ec0510e3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800074dc:	00c9a603          	lw	a2,12(s3)
800074e0:	fb440593          	addi	a1,s0,-76
800074e4:	00090513          	mv	a0,s2
800074e8:	000600e7          	jalr	a2
800074ec:	ea0516e3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800074f0:	fcc42583          	lw	a1,-52(s0)
800074f4:	fc842503          	lw	a0,-56(s0)
800074f8:	00c5a683          	lw	a3,12(a1)
800074fc:	8000c5b7          	lui	a1,0x8000c
80007500:	3ac58593          	addi	a1,a1,940 # 8000c3ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.257>
80007504:	00200613          	li	a2,2
80007508:	000680e7          	jalr	a3
8000750c:	07c0006f          	j	80007588 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x234>
80007510:	8000c5b7          	lui	a1,0x8000c
80007514:	3a758593          	addi	a1,a1,935 # 8000c3a7 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.255>
80007518:	018a2603          	lw	a2,24(s4)
8000751c:	014a2503          	lw	a0,20(s4)
80007520:	00c62703          	lw	a4,12(a2)
80007524:	0036c613          	xori	a2,a3,3
80007528:	000700e7          	jalr	a4
8000752c:	00100a93          	li	s5,1
80007530:	e60514e3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007534:	000c0613          	mv	a2,s8
80007538:	000b8593          	mv	a1,s7
8000753c:	018a2683          	lw	a3,24(s4)
80007540:	014a2503          	lw	a0,20(s4)
80007544:	00c6a683          	lw	a3,12(a3)
80007548:	000680e7          	jalr	a3
8000754c:	00100a93          	li	s5,1
80007550:	e40514e3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007554:	018a2583          	lw	a1,24(s4)
80007558:	014a2503          	lw	a0,20(s4)
8000755c:	00c5a683          	lw	a3,12(a1)
80007560:	8000c5b7          	lui	a1,0x8000c
80007564:	37858593          	addi	a1,a1,888 # 8000c378 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>
80007568:	00200613          	li	a2,2
8000756c:	000680e7          	jalr	a3
80007570:	00100a93          	li	s5,1
80007574:	e20512e3          	bnez	a0,80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007578:	00c9a603          	lw	a2,12(s3)
8000757c:	00090513          	mv	a0,s2
80007580:	000a0593          	mv	a1,s4
80007584:	000600e7          	jalr	a2
80007588:	00050a93          	mv	s5,a0
8000758c:	e0dff06f          	j	80007398 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>

80007590 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E>:
80007590:	b7010113          	addi	sp,sp,-1168
80007594:	48112623          	sw	ra,1164(sp)
80007598:	48812423          	sw	s0,1160(sp)
8000759c:	48912223          	sw	s1,1156(sp)
800075a0:	49212023          	sw	s2,1152(sp)
800075a4:	47312e23          	sw	s3,1148(sp)
800075a8:	47412c23          	sw	s4,1144(sp)
800075ac:	47512a23          	sw	s5,1140(sp)
800075b0:	47612823          	sw	s6,1136(sp)
800075b4:	49010413          	addi	s0,sp,1168
800075b8:	00068493          	mv	s1,a3
800075bc:	00159793          	slli	a5,a1,0x1
800075c0:	0187d713          	srli	a4,a5,0x18
800075c4:	00959693          	slli	a3,a1,0x9
800075c8:	0096d813          	srli	a6,a3,0x9
800075cc:	02070e63          	beqz	a4,80007608 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x78>
800075d0:	008006b7          	lui	a3,0x800
800075d4:	00d866b3          	or	a3,a6,a3
800075d8:	0017d893          	srli	a7,a5,0x1
800075dc:	7f8007b7          	lui	a5,0x7f800
800075e0:	02f88c63          	beq	a7,a5,80007618 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x88>
800075e4:	00f5f8b3          	and	a7,a1,a5
800075e8:	02f88c63          	beq	a7,a5,80007620 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x90>
800075ec:	0016f793          	andi	a5,a3,1
800075f0:	02089c63          	bnez	a7,80007628 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x98>
800075f4:	06080a63          	beqz	a6,80007668 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xd8>
800075f8:	00000813          	li	a6,0
800075fc:	00000893          	li	a7,0
80007600:	f6a70713          	addi	a4,a4,-150
80007604:	0580006f          	j	8000765c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xcc>
80007608:	0086d693          	srli	a3,a3,0x8
8000760c:	0017d893          	srli	a7,a5,0x1
80007610:	7f8007b7          	lui	a5,0x7f800
80007614:	fcf898e3          	bne	a7,a5,800075e4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x54>
80007618:	00300793          	li	a5,3
8000761c:	0500006f          	j	8000766c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
80007620:	00200793          	li	a5,2
80007624:	0480006f          	j	8000766c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
80007628:	00800837          	lui	a6,0x800
8000762c:	03069063          	bne	a3,a6,8000764c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xbc>
80007630:	00000813          	li	a6,0
80007634:	00000893          	li	a7,0
80007638:	f6870713          	addi	a4,a4,-152
8000763c:	00200293          	li	t0,2
80007640:	020006b7          	lui	a3,0x2000
80007644:	00100793          	li	a5,1
80007648:	0240006f          	j	8000766c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
8000764c:	00000813          	li	a6,0
80007650:	00000893          	li	a7,0
80007654:	00169693          	slli	a3,a3,0x1
80007658:	f6970713          	addi	a4,a4,-151
8000765c:	0017c793          	xori	a5,a5,1
80007660:	00100293          	li	t0,1
80007664:	0080006f          	j	8000766c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
80007668:	00400793          	li	a5,4
8000766c:	fad42c23          	sw	a3,-72(s0)
80007670:	fb042e23          	sw	a6,-68(s0)
80007674:	fc042223          	sw	zero,-60(s0)
80007678:	00100a13          	li	s4,1
8000767c:	fd442023          	sw	s4,-64(s0)
80007680:	fc542423          	sw	t0,-56(s0)
80007684:	fd142623          	sw	a7,-52(s0)
80007688:	fce41823          	sh	a4,-48(s0)
8000768c:	ffe78693          	addi	a3,a5,-2 # 7f7ffffe <.Lline_table_start2+0x7f7fec50>
80007690:	fcf40923          	sb	a5,-46(s0)
80007694:	02068863          	beqz	a3,800076c4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x134>
80007698:	00300793          	li	a5,3
8000769c:	00f6e463          	bltu	a3,a5,800076a4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x114>
800076a0:	00300693          	li	a3,3
800076a4:	00100793          	li	a5,1
800076a8:	0405c463          	bltz	a1,800076f0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x160>
800076ac:	8000ca37          	lui	s4,0x8000c
800076b0:	224a0a13          	addi	s4,s4,548 # 8000c224 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>
800076b4:	00100813          	li	a6,1
800076b8:	00100a93          	li	s5,1
800076bc:	04060463          	beqz	a2,80007704 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x174>
800076c0:	04c0006f          	j	8000770c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x17c>
800076c4:	00000a93          	li	s5,0
800076c8:	00200593          	li	a1,2
800076cc:	f6b41c23          	sh	a1,-136(s0)
800076d0:	8000c5b7          	lui	a1,0x8000c
800076d4:	22558593          	addi	a1,a1,549 # 8000c225 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>
800076d8:	f6b42e23          	sw	a1,-132(s0)
800076dc:	00300593          	li	a1,3
800076e0:	f8b42023          	sw	a1,-128(s0)
800076e4:	f7840613          	addi	a2,s0,-136
800076e8:	00100593          	li	a1,1
800076ec:	1b80006f          	j	800078a4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
800076f0:	8000c837          	lui	a6,0x8000c
800076f4:	22380813          	addi	a6,a6,547 # 8000c223 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>
800076f8:	00080a13          	mv	s4,a6
800076fc:	00100a93          	li	s5,1
80007700:	00061663          	bnez	a2,8000770c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x17c>
80007704:	01f5da93          	srli	s5,a1,0x1f
80007708:	00080a13          	mv	s4,a6
8000770c:	00200593          	li	a1,2
80007710:	02f68a63          	beq	a3,a5,80007744 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x1b4>
80007714:	04b69a63          	bne	a3,a1,80007768 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x1d8>
80007718:	f6b41c23          	sh	a1,-136(s0)
8000771c:	10048263          	beqz	s1,80007820 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x290>
80007720:	8000c5b7          	lui	a1,0x8000c
80007724:	22158593          	addi	a1,a1,545 # 8000c221 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007728:	f6b42e23          	sw	a1,-132(s0)
8000772c:	00200593          	li	a1,2
80007730:	f8b42023          	sw	a1,-128(s0)
80007734:	f8041223          	sh	zero,-124(s0)
80007738:	f8942423          	sw	s1,-120(s0)
8000773c:	f7840613          	addi	a2,s0,-136
80007740:	1640006f          	j	800078a4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007744:	f6b41c23          	sh	a1,-136(s0)
80007748:	8000c5b7          	lui	a1,0x8000c
8000774c:	22858593          	addi	a1,a1,552 # 8000c228 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>
80007750:	f6b42e23          	sw	a1,-132(s0)
80007754:	00300593          	li	a1,3
80007758:	f8b42023          	sw	a1,-128(s0)
8000775c:	00100593          	li	a1,1
80007760:	f7840613          	addi	a2,s0,-136
80007764:	1400006f          	j	800078a4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007768:	00050b13          	mv	s6,a0
8000776c:	01071593          	slli	a1,a4,0x10
80007770:	41f5d513          	srai	a0,a1,0x1f
80007774:	fef57513          	andi	a0,a0,-17
80007778:	00550513          	addi	a0,a0,5
8000777c:	4105d593          	srai	a1,a1,0x10
80007780:	00002097          	auipc	ra,0x2
80007784:	568080e7          	jalr	1384(ra) # 80009ce8 <__mulsi3>
80007788:	00655593          	srli	a1,a0,0x6
8000778c:	0fb00613          	li	a2,251
80007790:	14c5fc63          	bgeu	a1,a2,800078e8 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x358>
80007794:	00455513          	srli	a0,a0,0x4
80007798:	00f4d593          	srli	a1,s1,0xf
8000779c:	01550993          	addi	s3,a0,21
800077a0:	00058663          	beqz	a1,800077ac <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x21c>
800077a4:	ffff8537          	lui	a0,0xffff8
800077a8:	0080006f          	j	800077b0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x220>
800077ac:	40900533          	neg	a0,s1
800077b0:	01051513          	slli	a0,a0,0x10
800077b4:	41055913          	srai	s2,a0,0x10
800077b8:	f7840513          	addi	a0,s0,-136
800077bc:	fb840593          	addi	a1,s0,-72
800077c0:	b7840613          	addi	a2,s0,-1160
800077c4:	00098693          	mv	a3,s3
800077c8:	00090713          	mv	a4,s2
800077cc:	ffffe097          	auipc	ra,0xffffe
800077d0:	6bc080e7          	jalr	1724(ra) # 80005e88 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E>
800077d4:	f7842503          	lw	a0,-136(s0)
800077d8:	06050263          	beqz	a0,8000783c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2ac>
800077dc:	f8042503          	lw	a0,-128(s0)
800077e0:	f7c42583          	lw	a1,-132(s0)
800077e4:	f7842603          	lw	a2,-136(s0)
800077e8:	faa42823          	sw	a0,-80(s0)
800077ec:	fab42623          	sw	a1,-84(s0)
800077f0:	fac42423          	sw	a2,-88(s0)
800077f4:	fb041603          	lh	a2,-80(s0)
800077f8:	06c95463          	bge	s2,a2,80007860 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2d0>
800077fc:	fa842503          	lw	a0,-88(s0)
80007800:	fac42583          	lw	a1,-84(s0)
80007804:	f7840713          	addi	a4,s0,-136
80007808:	00400793          	li	a5,4
8000780c:	00048693          	mv	a3,s1
80007810:	fffff097          	auipc	ra,0xfffff
80007814:	158080e7          	jalr	344(ra) # 80006968 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>
80007818:	00050613          	mv	a2,a0
8000781c:	0840006f          	j	800078a0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x310>
80007820:	8000c5b7          	lui	a1,0x8000c
80007824:	22b58593          	addi	a1,a1,555 # 8000c22b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007828:	f6b42e23          	sw	a1,-132(s0)
8000782c:	00100593          	li	a1,1
80007830:	f8b42023          	sw	a1,-128(s0)
80007834:	f7840613          	addi	a2,s0,-136
80007838:	06c0006f          	j	800078a4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
8000783c:	fa840513          	addi	a0,s0,-88
80007840:	fb840593          	addi	a1,s0,-72
80007844:	b7840613          	addi	a2,s0,-1160
80007848:	00098693          	mv	a3,s3
8000784c:	00090713          	mv	a4,s2
80007850:	ffffc097          	auipc	ra,0xffffc
80007854:	774080e7          	jalr	1908(ra) # 80003fc4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E>
80007858:	fb041603          	lh	a2,-80(s0)
8000785c:	fac940e3          	blt	s2,a2,800077fc <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x26c>
80007860:	00200593          	li	a1,2
80007864:	f6b41c23          	sh	a1,-136(s0)
80007868:	02048063          	beqz	s1,80007888 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2f8>
8000786c:	8000c537          	lui	a0,0x8000c
80007870:	22150513          	addi	a0,a0,545 # 8000c221 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007874:	f6a42e23          	sw	a0,-132(s0)
80007878:	f8b42023          	sw	a1,-128(s0)
8000787c:	f8041223          	sh	zero,-124(s0)
80007880:	f8942423          	sw	s1,-120(s0)
80007884:	0180006f          	j	8000789c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x30c>
80007888:	8000c537          	lui	a0,0x8000c
8000788c:	22b50513          	addi	a0,a0,555 # 8000c22b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007890:	f6a42e23          	sw	a0,-132(s0)
80007894:	00100593          	li	a1,1
80007898:	f8b42023          	sw	a1,-128(s0)
8000789c:	f7840613          	addi	a2,s0,-136
800078a0:	000b0513          	mv	a0,s6
800078a4:	fb442423          	sw	s4,-88(s0)
800078a8:	fb542623          	sw	s5,-84(s0)
800078ac:	fac42823          	sw	a2,-80(s0)
800078b0:	fab42a23          	sw	a1,-76(s0)
800078b4:	fa840593          	addi	a1,s0,-88
800078b8:	00001097          	auipc	ra,0x1
800078bc:	c5c080e7          	jalr	-932(ra) # 80008514 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>
800078c0:	48c12083          	lw	ra,1164(sp)
800078c4:	48812403          	lw	s0,1160(sp)
800078c8:	48412483          	lw	s1,1156(sp)
800078cc:	48012903          	lw	s2,1152(sp)
800078d0:	47c12983          	lw	s3,1148(sp)
800078d4:	47812a03          	lw	s4,1144(sp)
800078d8:	47412a83          	lw	s5,1140(sp)
800078dc:	47012b03          	lw	s6,1136(sp)
800078e0:	49010113          	addi	sp,sp,1168
800078e4:	00008067          	ret
800078e8:	8000c537          	lui	a0,0x8000c
800078ec:	22c50513          	addi	a0,a0,556 # 8000c22c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.106>
800078f0:	8000c637          	lui	a2,0x8000c
800078f4:	25460613          	addi	a2,a2,596 # 8000c254 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.107>
800078f8:	02500593          	li	a1,37
800078fc:	fffff097          	auipc	ra,0xfffff
80007900:	448080e7          	jalr	1096(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80007904 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E>:
80007904:	00159893          	slli	a7,a1,0x1
80007908:	0188d793          	srli	a5,a7,0x18
8000790c:	00959713          	slli	a4,a1,0x9
80007910:	00975813          	srli	a6,a4,0x9
80007914:	02078e63          	beqz	a5,80007950 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x4c>
80007918:	00800737          	lui	a4,0x800
8000791c:	00e86733          	or	a4,a6,a4
80007920:	0018d293          	srli	t0,a7,0x1
80007924:	7f8008b7          	lui	a7,0x7f800
80007928:	03128c63          	beq	t0,a7,80007960 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x5c>
8000792c:	0115f2b3          	and	t0,a1,a7
80007930:	03128c63          	beq	t0,a7,80007968 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x64>
80007934:	00177313          	andi	t1,a4,1
80007938:	02029c63          	bnez	t0,80007970 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x6c>
8000793c:	06080a63          	beqz	a6,800079b0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xac>
80007940:	00000813          	li	a6,0
80007944:	00000893          	li	a7,0
80007948:	f6a78293          	addi	t0,a5,-150
8000794c:	0580006f          	j	800079a4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xa0>
80007950:	00875713          	srli	a4,a4,0x8
80007954:	0018d293          	srli	t0,a7,0x1
80007958:	7f8008b7          	lui	a7,0x7f800
8000795c:	fd1298e3          	bne	t0,a7,8000792c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x28>
80007960:	00300793          	li	a5,3
80007964:	0500006f          	j	800079b4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007968:	00200793          	li	a5,2
8000796c:	0480006f          	j	800079b4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007970:	00800837          	lui	a6,0x800
80007974:	03071063          	bne	a4,a6,80007994 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x90>
80007978:	00000813          	li	a6,0
8000797c:	00000893          	li	a7,0
80007980:	f6878293          	addi	t0,a5,-152
80007984:	00200313          	li	t1,2
80007988:	02000737          	lui	a4,0x2000
8000798c:	00100793          	li	a5,1
80007990:	0240006f          	j	800079b4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007994:	00000813          	li	a6,0
80007998:	00000893          	li	a7,0
8000799c:	00171713          	slli	a4,a4,0x1
800079a0:	f6978293          	addi	t0,a5,-151
800079a4:	00134793          	xori	a5,t1,1
800079a8:	00100313          	li	t1,1
800079ac:	0080006f          	j	800079b4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
800079b0:	00400793          	li	a5,4
800079b4:	f7010113          	addi	sp,sp,-144
800079b8:	08112623          	sw	ra,140(sp)
800079bc:	08812423          	sw	s0,136(sp)
800079c0:	08912223          	sw	s1,132(sp)
800079c4:	09212023          	sw	s2,128(sp)
800079c8:	07312e23          	sw	s3,124(sp)
800079cc:	07412c23          	sw	s4,120(sp)
800079d0:	09010413          	addi	s0,sp,144
800079d4:	fce42423          	sw	a4,-56(s0)
800079d8:	fd042623          	sw	a6,-52(s0)
800079dc:	fc042a23          	sw	zero,-44(s0)
800079e0:	00100913          	li	s2,1
800079e4:	fd242823          	sw	s2,-48(s0)
800079e8:	fc642c23          	sw	t1,-40(s0)
800079ec:	fd142e23          	sw	a7,-36(s0)
800079f0:	fe541023          	sh	t0,-32(s0)
800079f4:	ffe78713          	addi	a4,a5,-2
800079f8:	fef40123          	sb	a5,-30(s0)
800079fc:	02070863          	beqz	a4,80007a2c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x128>
80007a00:	00300793          	li	a5,3
80007a04:	00f76463          	bltu	a4,a5,80007a0c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x108>
80007a08:	00300713          	li	a4,3
80007a0c:	00100793          	li	a5,1
80007a10:	0405c463          	bltz	a1,80007a58 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x154>
80007a14:	8000c937          	lui	s2,0x8000c
80007a18:	22490913          	addi	s2,s2,548 # 8000c224 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>
80007a1c:	00100813          	li	a6,1
80007a20:	00100993          	li	s3,1
80007a24:	04060463          	beqz	a2,80007a6c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x168>
80007a28:	04c0006f          	j	80007a74 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x170>
80007a2c:	00000993          	li	s3,0
80007a30:	00200593          	li	a1,2
80007a34:	f8b41423          	sh	a1,-120(s0)
80007a38:	8000c5b7          	lui	a1,0x8000c
80007a3c:	22558593          	addi	a1,a1,549 # 8000c225 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>
80007a40:	f8b42623          	sw	a1,-116(s0)
80007a44:	00300593          	li	a1,3
80007a48:	f8b42823          	sw	a1,-112(s0)
80007a4c:	f8840613          	addi	a2,s0,-120
80007a50:	00100593          	li	a1,1
80007a54:	1180006f          	j	80007b6c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x268>
80007a58:	8000c837          	lui	a6,0x8000c
80007a5c:	22380813          	addi	a6,a6,547 # 8000c223 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>
80007a60:	00080913          	mv	s2,a6
80007a64:	00100993          	li	s3,1
80007a68:	00061663          	bnez	a2,80007a74 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x170>
80007a6c:	01f5d993          	srli	s3,a1,0x1f
80007a70:	00080913          	mv	s2,a6
80007a74:	00200593          	li	a1,2
80007a78:	02f70a63          	beq	a4,a5,80007aac <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x1a8>
80007a7c:	04b71863          	bne	a4,a1,80007acc <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x1c8>
80007a80:	f8b41423          	sh	a1,-120(s0)
80007a84:	08068663          	beqz	a3,80007b10 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x20c>
80007a88:	8000c5b7          	lui	a1,0x8000c
80007a8c:	22158593          	addi	a1,a1,545 # 8000c221 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007a90:	f8b42623          	sw	a1,-116(s0)
80007a94:	00200593          	li	a1,2
80007a98:	f8b42823          	sw	a1,-112(s0)
80007a9c:	f8041a23          	sh	zero,-108(s0)
80007aa0:	00100613          	li	a2,1
80007aa4:	f8c42c23          	sw	a2,-104(s0)
80007aa8:	07c0006f          	j	80007b24 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x220>
80007aac:	f8b41423          	sh	a1,-120(s0)
80007ab0:	8000c5b7          	lui	a1,0x8000c
80007ab4:	22858593          	addi	a1,a1,552 # 8000c228 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>
80007ab8:	f8b42623          	sw	a1,-116(s0)
80007abc:	00300593          	li	a1,3
80007ac0:	f8b42823          	sw	a1,-112(s0)
80007ac4:	00100593          	li	a1,1
80007ac8:	05c0006f          	j	80007b24 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x220>
80007acc:	00068493          	mv	s1,a3
80007ad0:	00050a13          	mv	s4,a0
80007ad4:	f8840513          	addi	a0,s0,-120
80007ad8:	fc840593          	addi	a1,s0,-56
80007adc:	f7740613          	addi	a2,s0,-137
80007ae0:	01100693          	li	a3,17
80007ae4:	ffffd097          	auipc	ra,0xffffd
80007ae8:	3c4080e7          	jalr	964(ra) # 80004ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE>
80007aec:	f8842503          	lw	a0,-120(s0)
80007af0:	02050e63          	beqz	a0,80007b2c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x228>
80007af4:	f9042503          	lw	a0,-112(s0)
80007af8:	f8c42583          	lw	a1,-116(s0)
80007afc:	f8842603          	lw	a2,-120(s0)
80007b00:	fca42023          	sw	a0,-64(s0)
80007b04:	fab42e23          	sw	a1,-68(s0)
80007b08:	fac42c23          	sw	a2,-72(s0)
80007b0c:	0380006f          	j	80007b44 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x240>
80007b10:	8000c5b7          	lui	a1,0x8000c
80007b14:	22b58593          	addi	a1,a1,555 # 8000c22b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007b18:	f8b42623          	sw	a1,-116(s0)
80007b1c:	00100593          	li	a1,1
80007b20:	f8b42823          	sw	a1,-112(s0)
80007b24:	f8840613          	addi	a2,s0,-120
80007b28:	0440006f          	j	80007b6c <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x268>
80007b2c:	fb840513          	addi	a0,s0,-72
80007b30:	fc840593          	addi	a1,s0,-56
80007b34:	f7740613          	addi	a2,s0,-137
80007b38:	01100693          	li	a3,17
80007b3c:	ffffb097          	auipc	ra,0xffffb
80007b40:	454080e7          	jalr	1108(ra) # 80002f90 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE>
80007b44:	fb842503          	lw	a0,-72(s0)
80007b48:	fbc42583          	lw	a1,-68(s0)
80007b4c:	fc041603          	lh	a2,-64(s0)
80007b50:	f8840713          	addi	a4,s0,-120
80007b54:	00400793          	li	a5,4
80007b58:	00048693          	mv	a3,s1
80007b5c:	fffff097          	auipc	ra,0xfffff
80007b60:	e0c080e7          	jalr	-500(ra) # 80006968 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>
80007b64:	00050613          	mv	a2,a0
80007b68:	000a0513          	mv	a0,s4
80007b6c:	fb242c23          	sw	s2,-72(s0)
80007b70:	fb342e23          	sw	s3,-68(s0)
80007b74:	fcc42023          	sw	a2,-64(s0)
80007b78:	fcb42223          	sw	a1,-60(s0)
80007b7c:	fb840593          	addi	a1,s0,-72
80007b80:	00001097          	auipc	ra,0x1
80007b84:	994080e7          	jalr	-1644(ra) # 80008514 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>
80007b88:	08c12083          	lw	ra,140(sp)
80007b8c:	08812403          	lw	s0,136(sp)
80007b90:	08412483          	lw	s1,132(sp)
80007b94:	08012903          	lw	s2,128(sp)
80007b98:	07c12983          	lw	s3,124(sp)
80007b9c:	07812a03          	lw	s4,120(sp)
80007ba0:	09010113          	addi	sp,sp,144
80007ba4:	00008067          	ret

80007ba8 <_ZN4core3fmt5Write9write_fmt17h2deade9dea7b58f9E>:
80007ba8:	ff010113          	addi	sp,sp,-16
80007bac:	00112623          	sw	ra,12(sp)
80007bb0:	00812423          	sw	s0,8(sp)
80007bb4:	01010413          	addi	s0,sp,16
80007bb8:	8000c637          	lui	a2,0x8000c
80007bbc:	38c60613          	addi	a2,a2,908 # 8000c38c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>
80007bc0:	00058693          	mv	a3,a1
80007bc4:	00060593          	mv	a1,a2
80007bc8:	00068613          	mv	a2,a3
80007bcc:	00c12083          	lw	ra,12(sp)
80007bd0:	00812403          	lw	s0,8(sp)
80007bd4:	01010113          	addi	sp,sp,16
80007bd8:	00000317          	auipc	t1,0x0
80007bdc:	04030067          	jr	64(t1) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80007be0 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hefd8b8a880068ae0E>:
80007be0:	ff010113          	addi	sp,sp,-16
80007be4:	00112623          	sw	ra,12(sp)
80007be8:	00812423          	sw	s0,8(sp)
80007bec:	01010413          	addi	s0,sp,16
80007bf0:	0145a603          	lw	a2,20(a1)
80007bf4:	0185a583          	lw	a1,24(a1)
80007bf8:	00050693          	mv	a3,a0
80007bfc:	00060513          	mv	a0,a2
80007c00:	00068613          	mv	a2,a3
80007c04:	00c12083          	lw	ra,12(sp)
80007c08:	00812403          	lw	s0,8(sp)
80007c0c:	01010113          	addi	sp,sp,16
80007c10:	00000317          	auipc	t1,0x0
80007c14:	00830067          	jr	8(t1) # 80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80007c18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E>:
80007c18:	fb010113          	addi	sp,sp,-80
80007c1c:	04112623          	sw	ra,76(sp)
80007c20:	04812423          	sw	s0,72(sp)
80007c24:	04912223          	sw	s1,68(sp)
80007c28:	05212023          	sw	s2,64(sp)
80007c2c:	03312e23          	sw	s3,60(sp)
80007c30:	03412c23          	sw	s4,56(sp)
80007c34:	03512a23          	sw	s5,52(sp)
80007c38:	03612823          	sw	s6,48(sp)
80007c3c:	03712623          	sw	s7,44(sp)
80007c40:	03812423          	sw	s8,40(sp)
80007c44:	05010413          	addi	s0,sp,80
80007c48:	00060493          	mv	s1,a2
80007c4c:	fc042823          	sw	zero,-48(s0)
80007c50:	02000613          	li	a2,32
80007c54:	fcc42223          	sw	a2,-60(s0)
80007c58:	00300613          	li	a2,3
80007c5c:	fcc40a23          	sb	a2,-44(s0)
80007c60:	0104ab03          	lw	s6,16(s1)
80007c64:	fa042a23          	sw	zero,-76(s0)
80007c68:	fa042e23          	sw	zero,-68(s0)
80007c6c:	fca42423          	sw	a0,-56(s0)
80007c70:	fcb42623          	sw	a1,-52(s0)
80007c74:	120b0063          	beqz	s6,80007d94 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x17c>
80007c78:	0144aa83          	lw	s5,20(s1)
80007c7c:	180a8863          	beqz	s5,80007e0c <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1f4>
80007c80:	0004aa03          	lw	s4,0(s1)
80007c84:	0084a983          	lw	s3,8(s1)
80007c88:	fffa8513          	addi	a0,s5,-1
80007c8c:	00551513          	slli	a0,a0,0x5
80007c90:	00555513          	srli	a0,a0,0x5
80007c94:	00150913          	addi	s2,a0,1
80007c98:	004a0a13          	addi	s4,s4,4
80007c9c:	005a9a93          	slli	s5,s5,0x5
80007ca0:	010b0b13          	addi	s6,s6,16
80007ca4:	00200b93          	li	s7,2
80007ca8:	00100c13          	li	s8,1
80007cac:	000a2603          	lw	a2,0(s4)
80007cb0:	00060e63          	beqz	a2,80007ccc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0xb4>
80007cb4:	fcc42683          	lw	a3,-52(s0)
80007cb8:	fc842503          	lw	a0,-56(s0)
80007cbc:	ffca2583          	lw	a1,-4(s4)
80007cc0:	00c6a683          	lw	a3,12(a3) # 200000c <.Lline_table_start2+0x1ffec5e>
80007cc4:	000680e7          	jalr	a3
80007cc8:	16051c63          	bnez	a0,80007e40 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80007ccc:	000b2603          	lw	a2,0(s6)
80007cd0:	00cb4683          	lbu	a3,12(s6)
80007cd4:	008b2703          	lw	a4,8(s6)
80007cd8:	ff8b2583          	lw	a1,-8(s6)
80007cdc:	ffcb2503          	lw	a0,-4(s6)
80007ce0:	fcc42223          	sw	a2,-60(s0)
80007ce4:	fcd40a23          	sb	a3,-44(s0)
80007ce8:	fce42823          	sw	a4,-48(s0)
80007cec:	02058863          	beqz	a1,80007d1c <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x104>
80007cf0:	01859a63          	bne	a1,s8,80007d04 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0xec>
80007cf4:	00351513          	slli	a0,a0,0x3
80007cf8:	00a98533          	add	a0,s3,a0
80007cfc:	00052583          	lw	a1,0(a0)
80007d00:	00058c63          	beqz	a1,80007d18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x100>
80007d04:	ff0b2603          	lw	a2,-16(s6)
80007d08:	fa042a23          	sw	zero,-76(s0)
80007d0c:	faa42c23          	sw	a0,-72(s0)
80007d10:	03761063          	bne	a2,s7,80007d30 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x118>
80007d14:	0340006f          	j	80007d48 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x130>
80007d18:	00452503          	lw	a0,4(a0)
80007d1c:	00100593          	li	a1,1
80007d20:	ff0b2603          	lw	a2,-16(s6)
80007d24:	fab42a23          	sw	a1,-76(s0)
80007d28:	faa42c23          	sw	a0,-72(s0)
80007d2c:	01760e63          	beq	a2,s7,80007d48 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x130>
80007d30:	ff4b2583          	lw	a1,-12(s6)
80007d34:	03861063          	bne	a2,s8,80007d54 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x13c>
80007d38:	00359513          	slli	a0,a1,0x3
80007d3c:	00a98533          	add	a0,s3,a0
80007d40:	00052583          	lw	a1,0(a0)
80007d44:	00058663          	beqz	a1,80007d50 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x138>
80007d48:	00000613          	li	a2,0
80007d4c:	00c0006f          	j	80007d58 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x140>
80007d50:	00452583          	lw	a1,4(a0)
80007d54:	00100613          	li	a2,1
80007d58:	004b2503          	lw	a0,4(s6)
80007d5c:	00351513          	slli	a0,a0,0x3
80007d60:	00a986b3          	add	a3,s3,a0
80007d64:	0006a503          	lw	a0,0(a3)
80007d68:	0046a683          	lw	a3,4(a3)
80007d6c:	fac42e23          	sw	a2,-68(s0)
80007d70:	fcb42023          	sw	a1,-64(s0)
80007d74:	fb440593          	addi	a1,s0,-76
80007d78:	000680e7          	jalr	a3
80007d7c:	0c051263          	bnez	a0,80007e40 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80007d80:	008a0a13          	addi	s4,s4,8
80007d84:	fe0a8a93          	addi	s5,s5,-32
80007d88:	020b0b13          	addi	s6,s6,32
80007d8c:	f20a90e3          	bnez	s5,80007cac <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x94>
80007d90:	0700006f          	j	80007e00 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1e8>
80007d94:	00c4a503          	lw	a0,12(s1)
80007d98:	06050a63          	beqz	a0,80007e0c <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1f4>
80007d9c:	0084a983          	lw	s3,8(s1)
80007da0:	00351a13          	slli	s4,a0,0x3
80007da4:	01498a33          	add	s4,s3,s4
80007da8:	0004aa83          	lw	s5,0(s1)
80007dac:	fff50513          	addi	a0,a0,-1
80007db0:	00351513          	slli	a0,a0,0x3
80007db4:	00355513          	srli	a0,a0,0x3
80007db8:	00150913          	addi	s2,a0,1
80007dbc:	004a8a93          	addi	s5,s5,4
80007dc0:	000aa603          	lw	a2,0(s5)
80007dc4:	00060e63          	beqz	a2,80007de0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1c8>
80007dc8:	fcc42683          	lw	a3,-52(s0)
80007dcc:	fc842503          	lw	a0,-56(s0)
80007dd0:	ffcaa583          	lw	a1,-4(s5)
80007dd4:	00c6a683          	lw	a3,12(a3)
80007dd8:	000680e7          	jalr	a3
80007ddc:	06051263          	bnez	a0,80007e40 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80007de0:	0009a503          	lw	a0,0(s3)
80007de4:	0049a603          	lw	a2,4(s3)
80007de8:	fb440593          	addi	a1,s0,-76
80007dec:	000600e7          	jalr	a2
80007df0:	04051863          	bnez	a0,80007e40 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80007df4:	00898993          	addi	s3,s3,8
80007df8:	008a8a93          	addi	s5,s5,8
80007dfc:	fd4992e3          	bne	s3,s4,80007dc0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1a8>
80007e00:	0044a503          	lw	a0,4(s1)
80007e04:	00a96a63          	bltu	s2,a0,80007e18 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x200>
80007e08:	0400006f          	j	80007e48 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
80007e0c:	00000913          	li	s2,0
80007e10:	0044a503          	lw	a0,4(s1)
80007e14:	02a07a63          	bgeu	zero,a0,80007e48 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
80007e18:	0004a503          	lw	a0,0(s1)
80007e1c:	00391913          	slli	s2,s2,0x3
80007e20:	01250933          	add	s2,a0,s2
80007e24:	fcc42683          	lw	a3,-52(s0)
80007e28:	fc842503          	lw	a0,-56(s0)
80007e2c:	00092583          	lw	a1,0(s2)
80007e30:	00492603          	lw	a2,4(s2)
80007e34:	00c6a683          	lw	a3,12(a3)
80007e38:	000680e7          	jalr	a3
80007e3c:	00050663          	beqz	a0,80007e48 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
80007e40:	00100513          	li	a0,1
80007e44:	0080006f          	j	80007e4c <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x234>
80007e48:	00000513          	li	a0,0
80007e4c:	04c12083          	lw	ra,76(sp)
80007e50:	04812403          	lw	s0,72(sp)
80007e54:	04412483          	lw	s1,68(sp)
80007e58:	04012903          	lw	s2,64(sp)
80007e5c:	03c12983          	lw	s3,60(sp)
80007e60:	03812a03          	lw	s4,56(sp)
80007e64:	03412a83          	lw	s5,52(sp)
80007e68:	03012b03          	lw	s6,48(sp)
80007e6c:	02c12b83          	lw	s7,44(sp)
80007e70:	02812c03          	lw	s8,40(sp)
80007e74:	05010113          	addi	sp,sp,80
80007e78:	00008067          	ret

80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>:
80007e7c:	fc010113          	addi	sp,sp,-64
80007e80:	02112e23          	sw	ra,60(sp)
80007e84:	02812c23          	sw	s0,56(sp)
80007e88:	02912a23          	sw	s1,52(sp)
80007e8c:	03212823          	sw	s2,48(sp)
80007e90:	03312623          	sw	s3,44(sp)
80007e94:	03412423          	sw	s4,40(sp)
80007e98:	03512223          	sw	s5,36(sp)
80007e9c:	03612023          	sw	s6,32(sp)
80007ea0:	01712e23          	sw	s7,28(sp)
80007ea4:	01812c23          	sw	s8,24(sp)
80007ea8:	01912a23          	sw	s9,20(sp)
80007eac:	01a12823          	sw	s10,16(sp)
80007eb0:	01b12623          	sw	s11,12(sp)
80007eb4:	04010413          	addi	s0,sp,64
80007eb8:	00078493          	mv	s1,a5
80007ebc:	00070913          	mv	s2,a4
80007ec0:	00068993          	mv	s3,a3
80007ec4:	00060a13          	mv	s4,a2
80007ec8:	06058263          	beqz	a1,80007f2c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xb0>
80007ecc:	01c52b03          	lw	s6,28(a0)
80007ed0:	001b7c13          	andi	s8,s6,1
80007ed4:	00110ab7          	lui	s5,0x110
80007ed8:	000c0463          	beqz	s8,80007ee0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x64>
80007edc:	02b00a93          	li	s5,43
80007ee0:	009c0c33          	add	s8,s8,s1
80007ee4:	004b7593          	andi	a1,s6,4
80007ee8:	04058c63          	beqz	a1,80007f40 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xc4>
80007eec:	01000593          	li	a1,16
80007ef0:	06b9f063          	bgeu	s3,a1,80007f50 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xd4>
80007ef4:	00000593          	li	a1,0
80007ef8:	02098263          	beqz	s3,80007f1c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xa0>
80007efc:	013a0633          	add	a2,s4,s3
80007f00:	000a0693          	mv	a3,s4
80007f04:	00068703          	lb	a4,0(a3)
80007f08:	fc072713          	slti	a4,a4,-64
80007f0c:	00174713          	xori	a4,a4,1
80007f10:	00168693          	addi	a3,a3,1
80007f14:	00e585b3          	add	a1,a1,a4
80007f18:	fec696e3          	bne	a3,a2,80007f04 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x88>
80007f1c:	01858c33          	add	s8,a1,s8
80007f20:	00052583          	lw	a1,0(a0)
80007f24:	06058e63          	beqz	a1,80007fa0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80007f28:	0500006f          	j	80007f78 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xfc>
80007f2c:	01c52b03          	lw	s6,28(a0)
80007f30:	00148c13          	addi	s8,s1,1
80007f34:	02d00a93          	li	s5,45
80007f38:	004b7593          	andi	a1,s6,4
80007f3c:	fa0598e3          	bnez	a1,80007eec <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x70>
80007f40:	00000a13          	li	s4,0
80007f44:	00052583          	lw	a1,0(a0)
80007f48:	02059863          	bnez	a1,80007f78 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xfc>
80007f4c:	0540006f          	j	80007fa0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80007f50:	00050b93          	mv	s7,a0
80007f54:	000a0513          	mv	a0,s4
80007f58:	00098593          	mv	a1,s3
80007f5c:	00001097          	auipc	ra,0x1
80007f60:	cd4080e7          	jalr	-812(ra) # 80008c30 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>
80007f64:	00050593          	mv	a1,a0
80007f68:	000b8513          	mv	a0,s7
80007f6c:	01858c33          	add	s8,a1,s8
80007f70:	000ba583          	lw	a1,0(s7) # 80000000 <_start>
80007f74:	02058663          	beqz	a1,80007fa0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80007f78:	00452c83          	lw	s9,4(a0)
80007f7c:	039c7263          	bgeu	s8,s9,80007fa0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80007f80:	008b7593          	andi	a1,s6,8
80007f84:	08059c63          	bnez	a1,8000801c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x1a0>
80007f88:	02054583          	lbu	a1,32(a0)
80007f8c:	00100613          	li	a2,1
80007f90:	418c8cb3          	sub	s9,s9,s8
80007f94:	0eb64c63          	blt	a2,a1,8000808c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x210>
80007f98:	10058a63          	beqz	a1,800080ac <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x230>
80007f9c:	1080006f          	j	800080a4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x228>
80007fa0:	01452b03          	lw	s6,20(a0)
80007fa4:	01852b83          	lw	s7,24(a0)
80007fa8:	000b0513          	mv	a0,s6
80007fac:	000b8593          	mv	a1,s7
80007fb0:	000a8613          	mv	a2,s5
80007fb4:	000a0693          	mv	a3,s4
80007fb8:	00098713          	mv	a4,s3
80007fbc:	00000097          	auipc	ra,0x0
80007fc0:	214080e7          	jalr	532(ra) # 800081d0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
80007fc4:	00050593          	mv	a1,a0
80007fc8:	00100513          	li	a0,1
80007fcc:	10059863          	bnez	a1,800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80007fd0:	00cba303          	lw	t1,12(s7)
80007fd4:	000b0513          	mv	a0,s6
80007fd8:	00090593          	mv	a1,s2
80007fdc:	00048613          	mv	a2,s1
80007fe0:	03c12083          	lw	ra,60(sp)
80007fe4:	03812403          	lw	s0,56(sp)
80007fe8:	03412483          	lw	s1,52(sp)
80007fec:	03012903          	lw	s2,48(sp)
80007ff0:	02c12983          	lw	s3,44(sp)
80007ff4:	02812a03          	lw	s4,40(sp)
80007ff8:	02412a83          	lw	s5,36(sp)
80007ffc:	02012b03          	lw	s6,32(sp)
80008000:	01c12b83          	lw	s7,28(sp)
80008004:	01812c03          	lw	s8,24(sp)
80008008:	01412c83          	lw	s9,20(sp)
8000800c:	01012d03          	lw	s10,16(sp)
80008010:	00c12d83          	lw	s11,12(sp)
80008014:	04010113          	addi	sp,sp,64
80008018:	00030067          	jr	t1
8000801c:	01052583          	lw	a1,16(a0)
80008020:	fcb42423          	sw	a1,-56(s0)
80008024:	03000593          	li	a1,48
80008028:	02054d03          	lbu	s10,32(a0)
8000802c:	01452b03          	lw	s6,20(a0)
80008030:	01852b83          	lw	s7,24(a0)
80008034:	00b52823          	sw	a1,16(a0)
80008038:	00100593          	li	a1,1
8000803c:	00050d93          	mv	s11,a0
80008040:	02b50023          	sb	a1,32(a0)
80008044:	000b0513          	mv	a0,s6
80008048:	000b8593          	mv	a1,s7
8000804c:	000a8613          	mv	a2,s5
80008050:	000a0693          	mv	a3,s4
80008054:	00098713          	mv	a4,s3
80008058:	00000097          	auipc	ra,0x0
8000805c:	178080e7          	jalr	376(ra) # 800081d0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
80008060:	06051c63          	bnez	a0,800080d8 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x25c>
80008064:	418c89b3          	sub	s3,s9,s8
80008068:	00198993          	addi	s3,s3,1
8000806c:	fff98993          	addi	s3,s3,-1
80008070:	12098263          	beqz	s3,80008194 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x318>
80008074:	010ba603          	lw	a2,16(s7)
80008078:	03000593          	li	a1,48
8000807c:	000b0513          	mv	a0,s6
80008080:	000600e7          	jalr	a2
80008084:	fe0504e3          	beqz	a0,8000806c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x1f0>
80008088:	0500006f          	j	800080d8 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x25c>
8000808c:	00200613          	li	a2,2
80008090:	00c59a63          	bne	a1,a2,800080a4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x228>
80008094:	001cd593          	srli	a1,s9,0x1
80008098:	001c8c93          	addi	s9,s9,1
8000809c:	001cdc93          	srli	s9,s9,0x1
800080a0:	00c0006f          	j	800080ac <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x230>
800080a4:	000c8593          	mv	a1,s9
800080a8:	00000c93          	li	s9,0
800080ac:	01452b03          	lw	s6,20(a0)
800080b0:	01852b83          	lw	s7,24(a0)
800080b4:	01052c03          	lw	s8,16(a0)
800080b8:	00158d13          	addi	s10,a1,1
800080bc:	fffd0d13          	addi	s10,s10,-1
800080c0:	040d0c63          	beqz	s10,80008118 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x29c>
800080c4:	010ba603          	lw	a2,16(s7)
800080c8:	000b0513          	mv	a0,s6
800080cc:	000c0593          	mv	a1,s8
800080d0:	000600e7          	jalr	a2
800080d4:	fe0504e3          	beqz	a0,800080bc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x240>
800080d8:	00100513          	li	a0,1
800080dc:	03c12083          	lw	ra,60(sp)
800080e0:	03812403          	lw	s0,56(sp)
800080e4:	03412483          	lw	s1,52(sp)
800080e8:	03012903          	lw	s2,48(sp)
800080ec:	02c12983          	lw	s3,44(sp)
800080f0:	02812a03          	lw	s4,40(sp)
800080f4:	02412a83          	lw	s5,36(sp)
800080f8:	02012b03          	lw	s6,32(sp)
800080fc:	01c12b83          	lw	s7,28(sp)
80008100:	01812c03          	lw	s8,24(sp)
80008104:	01412c83          	lw	s9,20(sp)
80008108:	01012d03          	lw	s10,16(sp)
8000810c:	00c12d83          	lw	s11,12(sp)
80008110:	04010113          	addi	sp,sp,64
80008114:	00008067          	ret
80008118:	000b0513          	mv	a0,s6
8000811c:	000b8593          	mv	a1,s7
80008120:	000a8613          	mv	a2,s5
80008124:	000a0693          	mv	a3,s4
80008128:	00098713          	mv	a4,s3
8000812c:	00000097          	auipc	ra,0x0
80008130:	0a4080e7          	jalr	164(ra) # 800081d0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
80008134:	00050593          	mv	a1,a0
80008138:	00100513          	li	a0,1
8000813c:	fa0590e3          	bnez	a1,800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008140:	00cba683          	lw	a3,12(s7)
80008144:	000b0513          	mv	a0,s6
80008148:	00090593          	mv	a1,s2
8000814c:	00048613          	mv	a2,s1
80008150:	000680e7          	jalr	a3
80008154:	00050593          	mv	a1,a0
80008158:	00100513          	li	a0,1
8000815c:	f80590e3          	bnez	a1,800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008160:	41900933          	neg	s2,s9
80008164:	fff00993          	li	s3,-1
80008168:	fff00493          	li	s1,-1
8000816c:	00990533          	add	a0,s2,s1
80008170:	05350c63          	beq	a0,s3,800081c8 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x34c>
80008174:	010ba603          	lw	a2,16(s7)
80008178:	000b0513          	mv	a0,s6
8000817c:	000c0593          	mv	a1,s8
80008180:	000600e7          	jalr	a2
80008184:	00148493          	addi	s1,s1,1
80008188:	fe0502e3          	beqz	a0,8000816c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x2f0>
8000818c:	0194b533          	sltu	a0,s1,s9
80008190:	f4dff06f          	j	800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008194:	00cba683          	lw	a3,12(s7)
80008198:	000b0513          	mv	a0,s6
8000819c:	00090593          	mv	a1,s2
800081a0:	00048613          	mv	a2,s1
800081a4:	000680e7          	jalr	a3
800081a8:	00050593          	mv	a1,a0
800081ac:	00100513          	li	a0,1
800081b0:	f20596e3          	bnez	a1,800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
800081b4:	00000513          	li	a0,0
800081b8:	fc842583          	lw	a1,-56(s0)
800081bc:	00bda823          	sw	a1,16(s11)
800081c0:	03ad8023          	sb	s10,32(s11)
800081c4:	f19ff06f          	j	800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
800081c8:	019cb533          	sltu	a0,s9,s9
800081cc:	f11ff06f          	j	800080dc <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>

800081d0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>:
800081d0:	fe010113          	addi	sp,sp,-32
800081d4:	00112e23          	sw	ra,28(sp)
800081d8:	00812c23          	sw	s0,24(sp)
800081dc:	00912a23          	sw	s1,20(sp)
800081e0:	01212823          	sw	s2,16(sp)
800081e4:	01312623          	sw	s3,12(sp)
800081e8:	01412423          	sw	s4,8(sp)
800081ec:	02010413          	addi	s0,sp,32
800081f0:	001107b7          	lui	a5,0x110
800081f4:	00070493          	mv	s1,a4
800081f8:	00068913          	mv	s2,a3
800081fc:	00058993          	mv	s3,a1
80008200:	02f60263          	beq	a2,a5,80008224 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x54>
80008204:	0109a683          	lw	a3,16(s3)
80008208:	00050a13          	mv	s4,a0
8000820c:	00060593          	mv	a1,a2
80008210:	000680e7          	jalr	a3
80008214:	00050613          	mv	a2,a0
80008218:	000a0513          	mv	a0,s4
8000821c:	00100593          	li	a1,1
80008220:	02061c63          	bnez	a2,80008258 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x88>
80008224:	02090863          	beqz	s2,80008254 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x84>
80008228:	00c9a303          	lw	t1,12(s3)
8000822c:	00090593          	mv	a1,s2
80008230:	00048613          	mv	a2,s1
80008234:	01c12083          	lw	ra,28(sp)
80008238:	01812403          	lw	s0,24(sp)
8000823c:	01412483          	lw	s1,20(sp)
80008240:	01012903          	lw	s2,16(sp)
80008244:	00c12983          	lw	s3,12(sp)
80008248:	00812a03          	lw	s4,8(sp)
8000824c:	02010113          	addi	sp,sp,32
80008250:	00030067          	jr	t1
80008254:	00000593          	li	a1,0
80008258:	00058513          	mv	a0,a1
8000825c:	01c12083          	lw	ra,28(sp)
80008260:	01812403          	lw	s0,24(sp)
80008264:	01412483          	lw	s1,20(sp)
80008268:	01012903          	lw	s2,16(sp)
8000826c:	00c12983          	lw	s3,12(sp)
80008270:	00812a03          	lw	s4,8(sp)
80008274:	02010113          	addi	sp,sp,32
80008278:	00008067          	ret

8000827c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E>:
8000827c:	fd010113          	addi	sp,sp,-48
80008280:	02112623          	sw	ra,44(sp)
80008284:	02812423          	sw	s0,40(sp)
80008288:	02912223          	sw	s1,36(sp)
8000828c:	03212023          	sw	s2,32(sp)
80008290:	01312e23          	sw	s3,28(sp)
80008294:	01412c23          	sw	s4,24(sp)
80008298:	01512a23          	sw	s5,20(sp)
8000829c:	01612823          	sw	s6,16(sp)
800082a0:	01712623          	sw	s7,12(sp)
800082a4:	03010413          	addi	s0,sp,48
800082a8:	00052683          	lw	a3,0(a0)
800082ac:	00852703          	lw	a4,8(a0)
800082b0:	00060493          	mv	s1,a2
800082b4:	00058913          	mv	s2,a1
800082b8:	00177593          	andi	a1,a4,1
800082bc:	00069463          	bnez	a3,800082c4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x48>
800082c0:	14058463          	beqz	a1,80008408 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
800082c4:	0c058263          	beqz	a1,80008388 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
800082c8:	00c52703          	lw	a4,12(a0)
800082cc:	00990633          	add	a2,s2,s1
800082d0:	00000593          	li	a1,0
800082d4:	04070e63          	beqz	a4,80008330 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xb4>
800082d8:	0e000793          	li	a5,224
800082dc:	0f000813          	li	a6,240
800082e0:	00090893          	mv	a7,s2
800082e4:	01c0006f          	j	80008300 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x84>
800082e8:	00188293          	addi	t0,a7,1 # 7f800001 <.Lline_table_start2+0x7f7fec53>
800082ec:	40b885b3          	sub	a1,a7,a1
800082f0:	fff70713          	addi	a4,a4,-1 # 1ffffff <.Lline_table_start2+0x1ffec51>
800082f4:	40b285b3          	sub	a1,t0,a1
800082f8:	00028893          	mv	a7,t0
800082fc:	02070c63          	beqz	a4,80008334 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xb8>
80008300:	08c88463          	beq	a7,a2,80008388 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008304:	00088283          	lb	t0,0(a7)
80008308:	fe02d0e3          	bgez	t0,800082e8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x6c>
8000830c:	0ff2f293          	zext.b	t0,t0
80008310:	00f2e863          	bltu	t0,a5,80008320 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xa4>
80008314:	0102ea63          	bltu	t0,a6,80008328 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xac>
80008318:	00488293          	addi	t0,a7,4
8000831c:	fd1ff06f          	j	800082ec <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
80008320:	00288293          	addi	t0,a7,2
80008324:	fc9ff06f          	j	800082ec <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
80008328:	00388293          	addi	t0,a7,3
8000832c:	fc1ff06f          	j	800082ec <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
80008330:	00090293          	mv	t0,s2
80008334:	04c28a63          	beq	t0,a2,80008388 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008338:	00028603          	lb	a2,0(t0)
8000833c:	00064663          	bltz	a2,80008348 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xcc>
80008340:	00059a63          	bnez	a1,80008354 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xd8>
80008344:	0340006f          	j	80008378 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
80008348:	0ff67613          	zext.b	a2,a2
8000834c:	0e000713          	li	a4,224
80008350:	02058463          	beqz	a1,80008378 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
80008354:	0295f063          	bgeu	a1,s1,80008374 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xf8>
80008358:	00b90633          	add	a2,s2,a1
8000835c:	00060603          	lb	a2,0(a2)
80008360:	fc000713          	li	a4,-64
80008364:	00e65a63          	bge	a2,a4,80008378 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
80008368:	00000613          	li	a2,0
8000836c:	00001a63          	bnez	zero,80008380 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x104>
80008370:	0180006f          	j	80008388 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008374:	fe959ae3          	bne	a1,s1,80008368 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xec>
80008378:	00090613          	mv	a2,s2
8000837c:	00090663          	beqz	s2,80008388 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008380:	00058493          	mv	s1,a1
80008384:	00060913          	mv	s2,a2
80008388:	08068063          	beqz	a3,80008408 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
8000838c:	00452983          	lw	s3,4(a0)
80008390:	01000593          	li	a1,16
80008394:	04b4fa63          	bgeu	s1,a1,800083e8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x16c>
80008398:	00000593          	li	a1,0
8000839c:	02048263          	beqz	s1,800083c0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x144>
800083a0:	00990633          	add	a2,s2,s1
800083a4:	00090693          	mv	a3,s2
800083a8:	00068703          	lb	a4,0(a3)
800083ac:	fc072713          	slti	a4,a4,-64
800083b0:	00174713          	xori	a4,a4,1
800083b4:	00168693          	addi	a3,a3,1
800083b8:	00e585b3          	add	a1,a1,a4
800083bc:	fec696e3          	bne	a3,a2,800083a8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x12c>
800083c0:	0535f463          	bgeu	a1,s3,80008408 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
800083c4:	02054683          	lbu	a3,32(a0)
800083c8:	00000613          	li	a2,0
800083cc:	00100713          	li	a4,1
800083d0:	40b98ab3          	sub	s5,s3,a1
800083d4:	06d74a63          	blt	a4,a3,80008448 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1cc>
800083d8:	08068263          	beqz	a3,8000845c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
800083dc:	000a8613          	mv	a2,s5
800083e0:	00000a93          	li	s5,0
800083e4:	0780006f          	j	8000845c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
800083e8:	00050a13          	mv	s4,a0
800083ec:	00090513          	mv	a0,s2
800083f0:	00048593          	mv	a1,s1
800083f4:	00001097          	auipc	ra,0x1
800083f8:	83c080e7          	jalr	-1988(ra) # 80008c30 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>
800083fc:	00050593          	mv	a1,a0
80008400:	000a0513          	mv	a0,s4
80008404:	fd35e0e3          	bltu	a1,s3,800083c4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x148>
80008408:	01852583          	lw	a1,24(a0)
8000840c:	01452503          	lw	a0,20(a0)
80008410:	00c5a303          	lw	t1,12(a1)
80008414:	00090593          	mv	a1,s2
80008418:	00048613          	mv	a2,s1
8000841c:	02c12083          	lw	ra,44(sp)
80008420:	02812403          	lw	s0,40(sp)
80008424:	02412483          	lw	s1,36(sp)
80008428:	02012903          	lw	s2,32(sp)
8000842c:	01c12983          	lw	s3,28(sp)
80008430:	01812a03          	lw	s4,24(sp)
80008434:	01412a83          	lw	s5,20(sp)
80008438:	01012b03          	lw	s6,16(sp)
8000843c:	00c12b83          	lw	s7,12(sp)
80008440:	03010113          	addi	sp,sp,48
80008444:	00030067          	jr	t1
80008448:	00200593          	li	a1,2
8000844c:	00b69863          	bne	a3,a1,8000845c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
80008450:	001ad613          	srli	a2,s5,0x1
80008454:	001a8a93          	addi	s5,s5,1 # 110001 <.Lline_table_start2+0x10ec53>
80008458:	001ada93          	srli	s5,s5,0x1
8000845c:	01452983          	lw	s3,20(a0)
80008460:	01852b03          	lw	s6,24(a0)
80008464:	01052a03          	lw	s4,16(a0)
80008468:	00160b93          	addi	s7,a2,1
8000846c:	fffb8b93          	addi	s7,s7,-1
80008470:	020b8063          	beqz	s7,80008490 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x214>
80008474:	010b2603          	lw	a2,16(s6)
80008478:	00098513          	mv	a0,s3
8000847c:	000a0593          	mv	a1,s4
80008480:	000600e7          	jalr	a2
80008484:	fe0504e3          	beqz	a0,8000846c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1f0>
80008488:	00100513          	li	a0,1
8000848c:	05c0006f          	j	800084e8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x26c>
80008490:	00cb2683          	lw	a3,12(s6)
80008494:	00098513          	mv	a0,s3
80008498:	00090593          	mv	a1,s2
8000849c:	00048613          	mv	a2,s1
800084a0:	000680e7          	jalr	a3
800084a4:	00050593          	mv	a1,a0
800084a8:	00100513          	li	a0,1
800084ac:	02059e63          	bnez	a1,800084e8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x26c>
800084b0:	41500933          	neg	s2,s5
800084b4:	fff00b93          	li	s7,-1
800084b8:	fff00493          	li	s1,-1
800084bc:	00990533          	add	a0,s2,s1
800084c0:	03750063          	beq	a0,s7,800084e0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x264>
800084c4:	010b2603          	lw	a2,16(s6)
800084c8:	00098513          	mv	a0,s3
800084cc:	000a0593          	mv	a1,s4
800084d0:	000600e7          	jalr	a2
800084d4:	00148493          	addi	s1,s1,1
800084d8:	fe0502e3          	beqz	a0,800084bc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x240>
800084dc:	0080006f          	j	800084e4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x268>
800084e0:	000a8493          	mv	s1,s5
800084e4:	0154b533          	sltu	a0,s1,s5
800084e8:	02c12083          	lw	ra,44(sp)
800084ec:	02812403          	lw	s0,40(sp)
800084f0:	02412483          	lw	s1,36(sp)
800084f4:	02012903          	lw	s2,32(sp)
800084f8:	01c12983          	lw	s3,28(sp)
800084fc:	01812a03          	lw	s4,24(sp)
80008500:	01412a83          	lw	s5,20(sp)
80008504:	01012b03          	lw	s6,16(sp)
80008508:	00c12b83          	lw	s7,12(sp)
8000850c:	03010113          	addi	sp,sp,48
80008510:	00008067          	ret

80008514 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>:
80008514:	fc010113          	addi	sp,sp,-64
80008518:	02112e23          	sw	ra,60(sp)
8000851c:	02812c23          	sw	s0,56(sp)
80008520:	02912a23          	sw	s1,52(sp)
80008524:	03212823          	sw	s2,48(sp)
80008528:	03312623          	sw	s3,44(sp)
8000852c:	03412423          	sw	s4,40(sp)
80008530:	03512223          	sw	s5,36(sp)
80008534:	03612023          	sw	s6,32(sp)
80008538:	01712e23          	sw	s7,28(sp)
8000853c:	01812c23          	sw	s8,24(sp)
80008540:	01912a23          	sw	s9,20(sp)
80008544:	01a12823          	sw	s10,16(sp)
80008548:	04010413          	addi	s0,sp,64
8000854c:	00050493          	mv	s1,a0
80008550:	00052503          	lw	a0,0(a0)
80008554:	00058613          	mv	a2,a1
80008558:	04050663          	beqz	a0,800085a4 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x90>
8000855c:	0044ab83          	lw	s7,4(s1)
80008560:	00062583          	lw	a1,0(a2)
80008564:	00462983          	lw	s3,4(a2)
80008568:	00862c83          	lw	s9,8(a2)
8000856c:	00c62a03          	lw	s4,12(a2)
80008570:	fcb42023          	sw	a1,-64(s0)
80008574:	fd342223          	sw	s3,-60(s0)
80008578:	01c4c503          	lbu	a0,28(s1)
8000857c:	0104aa83          	lw	s5,16(s1)
80008580:	0204cb03          	lbu	s6,32(s1)
80008584:	fd942423          	sw	s9,-56(s0)
80008588:	00857513          	andi	a0,a0,8
8000858c:	fd442623          	sw	s4,-52(s0)
80008590:	04051c63          	bnez	a0,800085e8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0xd4>
80008594:	000a8913          	mv	s2,s5
80008598:	000b0c13          	mv	s8,s6
8000859c:	080a1a63          	bnez	s4,80008630 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x11c>
800085a0:	1080006f          	j	800086a8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
800085a4:	0144a503          	lw	a0,20(s1)
800085a8:	0184a583          	lw	a1,24(s1)
800085ac:	03c12083          	lw	ra,60(sp)
800085b0:	03812403          	lw	s0,56(sp)
800085b4:	03412483          	lw	s1,52(sp)
800085b8:	03012903          	lw	s2,48(sp)
800085bc:	02c12983          	lw	s3,44(sp)
800085c0:	02812a03          	lw	s4,40(sp)
800085c4:	02412a83          	lw	s5,36(sp)
800085c8:	02012b03          	lw	s6,32(sp)
800085cc:	01c12b83          	lw	s7,28(sp)
800085d0:	01812c03          	lw	s8,24(sp)
800085d4:	01412c83          	lw	s9,20(sp)
800085d8:	01012d03          	lw	s10,16(sp)
800085dc:	04010113          	addi	sp,sp,64
800085e0:	00000317          	auipc	t1,0x0
800085e4:	1dc30067          	jr	476(t1) # 800087bc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
800085e8:	0184a603          	lw	a2,24(s1)
800085ec:	0144a503          	lw	a0,20(s1)
800085f0:	00c62683          	lw	a3,12(a2)
800085f4:	00098613          	mv	a2,s3
800085f8:	000680e7          	jalr	a3
800085fc:	14051063          	bnez	a0,8000873c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x228>
80008600:	00100c13          	li	s8,1
80008604:	fd842023          	sw	s8,-64(s0)
80008608:	fc042223          	sw	zero,-60(s0)
8000860c:	413b8533          	sub	a0,s7,s3
80008610:	00abb5b3          	sltu	a1,s7,a0
80008614:	fff58593          	addi	a1,a1,-1
80008618:	00a5fbb3          	and	s7,a1,a0
8000861c:	03000913          	li	s2,48
80008620:	0124a823          	sw	s2,16(s1)
80008624:	03848023          	sb	s8,32(s1)
80008628:	00000993          	li	s3,0
8000862c:	060a0e63          	beqz	s4,800086a8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
80008630:	004c8c93          	addi	s9,s9,4
80008634:	00c00593          	li	a1,12
80008638:	000a0513          	mv	a0,s4
8000863c:	00001097          	auipc	ra,0x1
80008640:	6ac080e7          	jalr	1708(ra) # 80009ce8 <__mulsi3>
80008644:	00100593          	li	a1,1
80008648:	3e800613          	li	a2,1000
8000864c:	00a00693          	li	a3,10
80008650:	0180006f          	j	80008668 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x154>
80008654:	000ca703          	lw	a4,0(s9)
80008658:	013709b3          	add	s3,a4,s3
8000865c:	ff450513          	addi	a0,a0,-12
80008660:	00cc8c93          	addi	s9,s9,12
80008664:	04050263          	beqz	a0,800086a8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
80008668:	ffccd703          	lhu	a4,-4(s9)
8000866c:	fe0704e3          	beqz	a4,80008654 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x140>
80008670:	02b71063          	bne	a4,a1,80008690 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x17c>
80008674:	ffecd783          	lhu	a5,-2(s9)
80008678:	02c7f063          	bgeu	a5,a2,80008698 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x184>
8000867c:	00100713          	li	a4,1
80008680:	fcd7ece3          	bltu	a5,a3,80008658 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008684:	0647b713          	sltiu	a4,a5,100
80008688:	00374713          	xori	a4,a4,3
8000868c:	fcdff06f          	j	80008658 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008690:	004ca703          	lw	a4,4(s9)
80008694:	fc5ff06f          	j	80008658 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008698:	0047d793          	srli	a5,a5,0x4
8000869c:	2717b713          	sltiu	a4,a5,625
800086a0:	00574713          	xori	a4,a4,5
800086a4:	fb5ff06f          	j	80008658 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
800086a8:	0179fc63          	bgeu	s3,s7,800086c0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1ac>
800086ac:	00100513          	li	a0,1
800086b0:	413b8bb3          	sub	s7,s7,s3
800086b4:	03854263          	blt	a0,s8,800086d8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1c4>
800086b8:	020c1c63          	bnez	s8,800086f0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1dc>
800086bc:	03c0006f          	j	800086f8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1e4>
800086c0:	0144a503          	lw	a0,20(s1)
800086c4:	0184a583          	lw	a1,24(s1)
800086c8:	fc040613          	addi	a2,s0,-64
800086cc:	00000097          	auipc	ra,0x0
800086d0:	0f0080e7          	jalr	240(ra) # 800087bc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
800086d4:	0a80006f          	j	8000877c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x268>
800086d8:	00200513          	li	a0,2
800086dc:	00ac1a63          	bne	s8,a0,800086f0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1dc>
800086e0:	001bdc13          	srli	s8,s7,0x1
800086e4:	001b8b93          	addi	s7,s7,1
800086e8:	001bdb93          	srli	s7,s7,0x1
800086ec:	00c0006f          	j	800086f8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1e4>
800086f0:	000b8c13          	mv	s8,s7
800086f4:	00000b93          	li	s7,0
800086f8:	0144a983          	lw	s3,20(s1)
800086fc:	0184aa03          	lw	s4,24(s1)
80008700:	001c0c13          	addi	s8,s8,1
80008704:	fffc0c13          	addi	s8,s8,-1
80008708:	000c0e63          	beqz	s8,80008724 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x210>
8000870c:	010a2603          	lw	a2,16(s4)
80008710:	00098513          	mv	a0,s3
80008714:	00090593          	mv	a1,s2
80008718:	000600e7          	jalr	a2
8000871c:	fe0504e3          	beqz	a0,80008704 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1f0>
80008720:	01c0006f          	j	8000873c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x228>
80008724:	fc040613          	addi	a2,s0,-64
80008728:	00098513          	mv	a0,s3
8000872c:	000a0593          	mv	a1,s4
80008730:	00000097          	auipc	ra,0x0
80008734:	08c080e7          	jalr	140(ra) # 800087bc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
80008738:	00050663          	beqz	a0,80008744 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x230>
8000873c:	00100513          	li	a0,1
80008740:	0440006f          	j	80008784 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x270>
80008744:	41700cb3          	neg	s9,s7
80008748:	fff00d13          	li	s10,-1
8000874c:	fff00c13          	li	s8,-1
80008750:	018c8533          	add	a0,s9,s8
80008754:	03a50063          	beq	a0,s10,80008774 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x260>
80008758:	010a2603          	lw	a2,16(s4)
8000875c:	00098513          	mv	a0,s3
80008760:	00090593          	mv	a1,s2
80008764:	000600e7          	jalr	a2
80008768:	001c0c13          	addi	s8,s8,1
8000876c:	fe0502e3          	beqz	a0,80008750 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x23c>
80008770:	0080006f          	j	80008778 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x264>
80008774:	000b8c13          	mv	s8,s7
80008778:	017c3533          	sltu	a0,s8,s7
8000877c:	0154a823          	sw	s5,16(s1)
80008780:	03648023          	sb	s6,32(s1)
80008784:	03c12083          	lw	ra,60(sp)
80008788:	03812403          	lw	s0,56(sp)
8000878c:	03412483          	lw	s1,52(sp)
80008790:	03012903          	lw	s2,48(sp)
80008794:	02c12983          	lw	s3,44(sp)
80008798:	02812a03          	lw	s4,40(sp)
8000879c:	02412a83          	lw	s5,36(sp)
800087a0:	02012b03          	lw	s6,32(sp)
800087a4:	01c12b83          	lw	s7,28(sp)
800087a8:	01812c03          	lw	s8,24(sp)
800087ac:	01412c83          	lw	s9,20(sp)
800087b0:	01012d03          	lw	s10,16(sp)
800087b4:	04010113          	addi	sp,sp,64
800087b8:	00008067          	ret

800087bc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>:
800087bc:	fc010113          	addi	sp,sp,-64
800087c0:	02112e23          	sw	ra,60(sp)
800087c4:	02812c23          	sw	s0,56(sp)
800087c8:	02912a23          	sw	s1,52(sp)
800087cc:	03212823          	sw	s2,48(sp)
800087d0:	03312623          	sw	s3,44(sp)
800087d4:	03412423          	sw	s4,40(sp)
800087d8:	03512223          	sw	s5,36(sp)
800087dc:	03612023          	sw	s6,32(sp)
800087e0:	01712e23          	sw	s7,28(sp)
800087e4:	01812c23          	sw	s8,24(sp)
800087e8:	01912a23          	sw	s9,20(sp)
800087ec:	01a12823          	sw	s10,16(sp)
800087f0:	01b12623          	sw	s11,12(sp)
800087f4:	04010413          	addi	s0,sp,64
800087f8:	00060993          	mv	s3,a2
800087fc:	00462603          	lw	a2,4(a2)
80008800:	00058493          	mv	s1,a1
80008804:	00050913          	mv	s2,a0
80008808:	02060063          	beqz	a2,80008828 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x6c>
8000880c:	0009a583          	lw	a1,0(s3)
80008810:	00c4a683          	lw	a3,12(s1)
80008814:	00090513          	mv	a0,s2
80008818:	000680e7          	jalr	a3
8000881c:	00050593          	mv	a1,a0
80008820:	00100513          	li	a0,1
80008824:	16059063          	bnez	a1,80008984 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008828:	00c9a503          	lw	a0,12(s3)
8000882c:	14050c63          	beqz	a0,80008984 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008830:	0089ab03          	lw	s6,8(s3)
80008834:	00251593          	slli	a1,a0,0x2
80008838:	00451513          	slli	a0,a0,0x4
8000883c:	40b50533          	sub	a0,a0,a1
80008840:	00ab0bb3          	add	s7,s6,a0
80008844:	8000c9b7          	lui	s3,0x8000c
80008848:	47b98993          	addi	s3,s3,1147 # 8000c47b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.299>
8000884c:	04000d13          	li	s10,64
80008850:	00100c13          	li	s8,1
80008854:	0200006f          	j	80008874 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xb8>
80008858:	004b2583          	lw	a1,4(s6)
8000885c:	008b2603          	lw	a2,8(s6)
80008860:	00c4a683          	lw	a3,12(s1)
80008864:	00090513          	mv	a0,s2
80008868:	000680e7          	jalr	a3
8000886c:	10050263          	beqz	a0,80008970 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008870:	1100006f          	j	80008980 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008874:	000b5503          	lhu	a0,0(s6)
80008878:	02050a63          	beqz	a0,800088ac <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xf0>
8000887c:	fd851ee3          	bne	a0,s8,80008858 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x9c>
80008880:	002b5c83          	lhu	s9,2(s6)
80008884:	fc040423          	sb	zero,-56(s0)
80008888:	fc042223          	sw	zero,-60(s0)
8000888c:	3e800513          	li	a0,1000
80008890:	04acf663          	bgeu	s9,a0,800088dc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x120>
80008894:	00100d93          	li	s11,1
80008898:	00a00513          	li	a0,10
8000889c:	04ace663          	bltu	s9,a0,800088e8 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x12c>
800088a0:	064cb513          	sltiu	a0,s9,100
800088a4:	00354d93          	xori	s11,a0,3
800088a8:	0400006f          	j	800088e8 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x12c>
800088ac:	004b2a03          	lw	s4,4(s6)
800088b0:	04100513          	li	a0,65
800088b4:	0aaa6063          	bltu	s4,a0,80008954 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x198>
800088b8:	00c4aa83          	lw	s5,12(s1)
800088bc:	04000613          	li	a2,64
800088c0:	00090513          	mv	a0,s2
800088c4:	00098593          	mv	a1,s3
800088c8:	000a80e7          	jalr	s5
800088cc:	0a051a63          	bnez	a0,80008980 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
800088d0:	fc0a0a13          	addi	s4,s4,-64
800088d4:	ff4d64e3          	bltu	s10,s4,800088bc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x100>
800088d8:	0800006f          	j	80008958 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x19c>
800088dc:	004cd513          	srli	a0,s9,0x4
800088e0:	27153513          	sltiu	a0,a0,625
800088e4:	00554d93          	xori	s11,a0,5
800088e8:	41b00c33          	neg	s8,s11
800088ec:	fc340a13          	addi	s4,s0,-61
800088f0:	01ba0a33          	add	s4,s4,s11
800088f4:	010c9513          	slli	a0,s9,0x10
800088f8:	01055513          	srli	a0,a0,0x10
800088fc:	00a00593          	li	a1,10
80008900:	00002097          	auipc	ra,0x2
80008904:	fa8080e7          	jalr	-88(ra) # 8000a8a8 <__udivsi3>
80008908:	00050a93          	mv	s5,a0
8000890c:	00a00593          	li	a1,10
80008910:	00001097          	auipc	ra,0x1
80008914:	3d8080e7          	jalr	984(ra) # 80009ce8 <__mulsi3>
80008918:	40ac8533          	sub	a0,s9,a0
8000891c:	03056513          	ori	a0,a0,48
80008920:	00aa0023          	sb	a0,0(s4)
80008924:	001c0c13          	addi	s8,s8,1
80008928:	fffa0a13          	addi	s4,s4,-1
8000892c:	000a8c93          	mv	s9,s5
80008930:	fc0c12e3          	bnez	s8,800088f4 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x138>
80008934:	00c4a683          	lw	a3,12(s1)
80008938:	fc440593          	addi	a1,s0,-60
8000893c:	00090513          	mv	a0,s2
80008940:	000d8613          	mv	a2,s11
80008944:	000680e7          	jalr	a3
80008948:	00100c13          	li	s8,1
8000894c:	02050263          	beqz	a0,80008970 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008950:	0300006f          	j	80008980 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008954:	000a0e63          	beqz	s4,80008970 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008958:	00c4a683          	lw	a3,12(s1)
8000895c:	00090513          	mv	a0,s2
80008960:	00098593          	mv	a1,s3
80008964:	000a0613          	mv	a2,s4
80008968:	000680e7          	jalr	a3
8000896c:	00051a63          	bnez	a0,80008980 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008970:	00cb0b13          	addi	s6,s6,12
80008974:	f17b10e3          	bne	s6,s7,80008874 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xb8>
80008978:	00000513          	li	a0,0
8000897c:	0080006f          	j	80008984 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008980:	00100513          	li	a0,1
80008984:	03c12083          	lw	ra,60(sp)
80008988:	03812403          	lw	s0,56(sp)
8000898c:	03412483          	lw	s1,52(sp)
80008990:	03012903          	lw	s2,48(sp)
80008994:	02c12983          	lw	s3,44(sp)
80008998:	02812a03          	lw	s4,40(sp)
8000899c:	02412a83          	lw	s5,36(sp)
800089a0:	02012b03          	lw	s6,32(sp)
800089a4:	01c12b83          	lw	s7,28(sp)
800089a8:	01812c03          	lw	s8,24(sp)
800089ac:	01412c83          	lw	s9,20(sp)
800089b0:	01012d03          	lw	s10,16(sp)
800089b4:	00c12d83          	lw	s11,12(sp)
800089b8:	04010113          	addi	sp,sp,64
800089bc:	00008067          	ret

800089c0 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>:
800089c0:	ff010113          	addi	sp,sp,-16
800089c4:	00112623          	sw	ra,12(sp)
800089c8:	00812423          	sw	s0,8(sp)
800089cc:	01010413          	addi	s0,sp,16
800089d0:	01852683          	lw	a3,24(a0)
800089d4:	01452503          	lw	a0,20(a0)
800089d8:	00c6a303          	lw	t1,12(a3)
800089dc:	00c12083          	lw	ra,12(sp)
800089e0:	00812403          	lw	s0,8(sp)
800089e4:	01010113          	addi	sp,sp,16
800089e8:	00030067          	jr	t1

800089ec <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E>:
800089ec:	fc010113          	addi	sp,sp,-64
800089f0:	02112e23          	sw	ra,60(sp)
800089f4:	02812c23          	sw	s0,56(sp)
800089f8:	02912a23          	sw	s1,52(sp)
800089fc:	03212823          	sw	s2,48(sp)
80008a00:	03312623          	sw	s3,44(sp)
80008a04:	03412423          	sw	s4,40(sp)
80008a08:	03512223          	sw	s5,36(sp)
80008a0c:	03612023          	sw	s6,32(sp)
80008a10:	01712e23          	sw	s7,28(sp)
80008a14:	01812c23          	sw	s8,24(sp)
80008a18:	01912a23          	sw	s9,20(sp)
80008a1c:	04010413          	addi	s0,sp,64
80008a20:	00050493          	mv	s1,a0
80008a24:	00042903          	lw	s2,0(s0)
80008a28:	01852283          	lw	t0,24(a0)
80008a2c:	00442983          	lw	s3,4(s0)
80008a30:	00842a03          	lw	s4,8(s0)
80008a34:	01452503          	lw	a0,20(a0)
80008a38:	00c2a303          	lw	t1,12(t0)
80008a3c:	00088a93          	mv	s5,a7
80008a40:	00080b13          	mv	s6,a6
80008a44:	00078b93          	mv	s7,a5
80008a48:	00070c13          	mv	s8,a4
80008a4c:	00068c93          	mv	s9,a3
80008a50:	000300e7          	jalr	t1
80008a54:	fc942623          	sw	s1,-52(s0)
80008a58:	fca40823          	sb	a0,-48(s0)
80008a5c:	fc0408a3          	sb	zero,-47(s0)
80008a60:	fcc40513          	addi	a0,s0,-52
80008a64:	000c8593          	mv	a1,s9
80008a68:	000c0613          	mv	a2,s8
80008a6c:	000b8693          	mv	a3,s7
80008a70:	000b0713          	mv	a4,s6
80008a74:	fffff097          	auipc	ra,0xfffff
80008a78:	8e0080e7          	jalr	-1824(ra) # 80007354 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>
80008a7c:	fcc40513          	addi	a0,s0,-52
80008a80:	000a8593          	mv	a1,s5
80008a84:	00090613          	mv	a2,s2
80008a88:	00098693          	mv	a3,s3
80008a8c:	000a0713          	mv	a4,s4
80008a90:	fffff097          	auipc	ra,0xfffff
80008a94:	8c4080e7          	jalr	-1852(ra) # 80007354 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>
80008a98:	fd144603          	lbu	a2,-47(s0)
80008a9c:	fd044583          	lbu	a1,-48(s0)
80008aa0:	00b66533          	or	a0,a2,a1
80008aa4:	04060a63          	beqz	a2,80008af8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x10c>
80008aa8:	0015f593          	andi	a1,a1,1
80008aac:	04059663          	bnez	a1,80008af8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x10c>
80008ab0:	fcc42503          	lw	a0,-52(s0)
80008ab4:	01c54583          	lbu	a1,28(a0)
80008ab8:	0045f593          	andi	a1,a1,4
80008abc:	02059063          	bnez	a1,80008adc <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0xf0>
80008ac0:	01852583          	lw	a1,24(a0)
80008ac4:	01452503          	lw	a0,20(a0)
80008ac8:	00c5a683          	lw	a3,12(a1)
80008acc:	8000c5b7          	lui	a1,0x8000c
80008ad0:	3af58593          	addi	a1,a1,943 # 8000c3af <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.262>
80008ad4:	00200613          	li	a2,2
80008ad8:	01c0006f          	j	80008af4 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x108>
80008adc:	01852583          	lw	a1,24(a0)
80008ae0:	01452503          	lw	a0,20(a0)
80008ae4:	00c5a683          	lw	a3,12(a1)
80008ae8:	8000c5b7          	lui	a1,0x8000c
80008aec:	3ae58593          	addi	a1,a1,942 # 8000c3ae <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.261>
80008af0:	00100613          	li	a2,1
80008af4:	000680e7          	jalr	a3
80008af8:	00157513          	andi	a0,a0,1
80008afc:	03c12083          	lw	ra,60(sp)
80008b00:	03812403          	lw	s0,56(sp)
80008b04:	03412483          	lw	s1,52(sp)
80008b08:	03012903          	lw	s2,48(sp)
80008b0c:	02c12983          	lw	s3,44(sp)
80008b10:	02812a03          	lw	s4,40(sp)
80008b14:	02412a83          	lw	s5,36(sp)
80008b18:	02012b03          	lw	s6,32(sp)
80008b1c:	01c12b83          	lw	s7,28(sp)
80008b20:	01812c03          	lw	s8,24(sp)
80008b24:	01412c83          	lw	s9,20(sp)
80008b28:	04010113          	addi	sp,sp,64
80008b2c:	00008067          	ret

80008b30 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E>:
80008b30:	f6010113          	addi	sp,sp,-160
80008b34:	08112e23          	sw	ra,156(sp)
80008b38:	08812c23          	sw	s0,152(sp)
80008b3c:	08912a23          	sw	s1,148(sp)
80008b40:	09212823          	sw	s2,144(sp)
80008b44:	09312623          	sw	s3,140(sp)
80008b48:	09412423          	sw	s4,136(sp)
80008b4c:	0a010413          	addi	s0,sp,160
80008b50:	00058493          	mv	s1,a1
80008b54:	01c5a903          	lw	s2,28(a1)
80008b58:	0005a983          	lw	s3,0(a1)
80008b5c:	0045aa03          	lw	s4,4(a1)
80008b60:	00497613          	andi	a2,s2,4
80008b64:	00090593          	mv	a1,s2
80008b68:	00060e63          	beqz	a2,80008b84 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x54>
80008b6c:	00896593          	ori	a1,s2,8
80008b70:	00099a63          	bnez	s3,80008b84 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x54>
80008b74:	00100613          	li	a2,1
80008b78:	00c4a023          	sw	a2,0(s1)
80008b7c:	00a00613          	li	a2,10
80008b80:	00c4a223          	sw	a2,4(s1)
80008b84:	00000793          	li	a5,0
80008b88:	0045e593          	ori	a1,a1,4
80008b8c:	00b4ae23          	sw	a1,28(s1)
80008b90:	fe740593          	addi	a1,s0,-25
80008b94:	00a00613          	li	a2,10
80008b98:	01c0006f          	j	80008bb4 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x84>
80008b9c:	05768693          	addi	a3,a3,87
80008ba0:	00455513          	srli	a0,a0,0x4
80008ba4:	00d58023          	sb	a3,0(a1)
80008ba8:	00178793          	addi	a5,a5,1 # 110001 <.Lline_table_start2+0x10ec53>
80008bac:	fff58593          	addi	a1,a1,-1
80008bb0:	00050a63          	beqz	a0,80008bc4 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x94>
80008bb4:	00f57693          	andi	a3,a0,15
80008bb8:	fec6f2e3          	bgeu	a3,a2,80008b9c <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x6c>
80008bbc:	03068693          	addi	a3,a3,48
80008bc0:	fe1ff06f          	j	80008ba0 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x70>
80008bc4:	f6840513          	addi	a0,s0,-152
80008bc8:	40f50533          	sub	a0,a0,a5
80008bcc:	08050713          	addi	a4,a0,128
80008bd0:	8000c637          	lui	a2,0x8000c
80008bd4:	3b160613          	addi	a2,a2,945 # 8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80008bd8:	00100593          	li	a1,1
80008bdc:	00200693          	li	a3,2
80008be0:	00048513          	mv	a0,s1
80008be4:	fffff097          	auipc	ra,0xfffff
80008be8:	298080e7          	jalr	664(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80008bec:	0134a023          	sw	s3,0(s1)
80008bf0:	0144a223          	sw	s4,4(s1)
80008bf4:	0124ae23          	sw	s2,28(s1)
80008bf8:	09c12083          	lw	ra,156(sp)
80008bfc:	09812403          	lw	s0,152(sp)
80008c00:	09412483          	lw	s1,148(sp)
80008c04:	09012903          	lw	s2,144(sp)
80008c08:	08c12983          	lw	s3,140(sp)
80008c0c:	08812a03          	lw	s4,136(sp)
80008c10:	0a010113          	addi	sp,sp,160
80008c14:	00008067          	ret

80008c18 <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>:
80008c18:	ff010113          	addi	sp,sp,-16
80008c1c:	00112623          	sw	ra,12(sp)
80008c20:	00812423          	sw	s0,8(sp)
80008c24:	01010413          	addi	s0,sp,16
80008c28:	00001097          	auipc	ra,0x1
80008c2c:	054080e7          	jalr	84(ra) # 80009c7c <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h54d6dc839f74746cE>

80008c30 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>:
80008c30:	ff010113          	addi	sp,sp,-16
80008c34:	00112623          	sw	ra,12(sp)
80008c38:	00812423          	sw	s0,8(sp)
80008c3c:	01010413          	addi	s0,sp,16
80008c40:	00050613          	mv	a2,a0
80008c44:	00350513          	addi	a0,a0,3
80008c48:	ffc57513          	andi	a0,a0,-4
80008c4c:	40c502b3          	sub	t0,a0,a2
80008c50:	0255fc63          	bgeu	a1,t0,80008c88 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x58>
80008c54:	00000513          	li	a0,0
80008c58:	02058063          	beqz	a1,80008c78 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x48>
80008c5c:	00b605b3          	add	a1,a2,a1
80008c60:	00060683          	lb	a3,0(a2)
80008c64:	fc06a693          	slti	a3,a3,-64
80008c68:	0016c693          	xori	a3,a3,1
80008c6c:	00160613          	addi	a2,a2,1
80008c70:	00d50533          	add	a0,a0,a3
80008c74:	feb616e3          	bne	a2,a1,80008c60 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x30>
80008c78:	00c12083          	lw	ra,12(sp)
80008c7c:	00812403          	lw	s0,8(sp)
80008c80:	01010113          	addi	sp,sp,16
80008c84:	00008067          	ret
80008c88:	405586b3          	sub	a3,a1,t0
80008c8c:	0026d893          	srli	a7,a3,0x2
80008c90:	fc0882e3          	beqz	a7,80008c54 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x24>
80008c94:	005602b3          	add	t0,a2,t0
80008c98:	0036f593          	andi	a1,a3,3
80008c9c:	00c51663          	bne	a0,a2,80008ca8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x78>
80008ca0:	00000513          	li	a0,0
80008ca4:	0200006f          	j	80008cc4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x94>
80008ca8:	00000513          	li	a0,0
80008cac:	00060703          	lb	a4,0(a2)
80008cb0:	fc072713          	slti	a4,a4,-64
80008cb4:	00174713          	xori	a4,a4,1
80008cb8:	00160613          	addi	a2,a2,1
80008cbc:	00e50533          	add	a0,a0,a4
80008cc0:	fe5616e3          	bne	a2,t0,80008cac <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x7c>
80008cc4:	00000713          	li	a4,0
80008cc8:	02058463          	beqz	a1,80008cf0 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xc0>
80008ccc:	ffc6f613          	andi	a2,a3,-4
80008cd0:	00c28633          	add	a2,t0,a2
80008cd4:	00060683          	lb	a3,0(a2)
80008cd8:	fc06a693          	slti	a3,a3,-64
80008cdc:	0016c693          	xori	a3,a3,1
80008ce0:	00d70733          	add	a4,a4,a3
80008ce4:	fff58593          	addi	a1,a1,-1
80008ce8:	00160613          	addi	a2,a2,1
80008cec:	fe0594e3          	bnez	a1,80008cd4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xa4>
80008cf0:	010105b7          	lui	a1,0x1010
80008cf4:	10158613          	addi	a2,a1,257 # 1010101 <.Lline_table_start2+0x100ed53>
80008cf8:	00ff05b7          	lui	a1,0xff0
80008cfc:	0ff58593          	addi	a1,a1,255 # ff00ff <.Lline_table_start2+0xfeed51>
80008d00:	00a70533          	add	a0,a4,a0
80008d04:	00400793          	li	a5,4
80008d08:	0340006f          	j	80008d3c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x10c>
80008d0c:	005702b3          	add	t0,a4,t0
80008d10:	410688b3          	sub	a7,a3,a6
80008d14:	00387313          	andi	t1,a6,3
80008d18:	00b3fe33          	and	t3,t2,a1
80008d1c:	0083d393          	srli	t2,t2,0x8
80008d20:	00b3f3b3          	and	t2,t2,a1
80008d24:	01c383b3          	add	t2,t2,t3
80008d28:	01039e13          	slli	t3,t2,0x10
80008d2c:	007e03b3          	add	t2,t3,t2
80008d30:	0103d393          	srli	t2,t2,0x10
80008d34:	00a38533          	add	a0,t2,a0
80008d38:	0a031a63          	bnez	t1,80008dec <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x1bc>
80008d3c:	f2088ee3          	beqz	a7,80008c78 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x48>
80008d40:	00088693          	mv	a3,a7
80008d44:	00028713          	mv	a4,t0
80008d48:	0c000893          	li	a7,192
80008d4c:	00068813          	mv	a6,a3
80008d50:	0116e463          	bltu	a3,a7,80008d58 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x128>
80008d54:	0c000813          	li	a6,192
80008d58:	00281293          	slli	t0,a6,0x2
80008d5c:	00000393          	li	t2,0
80008d60:	faf6e6e3          	bltu	a3,a5,80008d0c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xdc>
80008d64:	3f02f893          	andi	a7,t0,1008
80008d68:	011708b3          	add	a7,a4,a7
80008d6c:	00070313          	mv	t1,a4
80008d70:	00032e03          	lw	t3,0(t1)
80008d74:	fffe4e93          	not	t4,t3
80008d78:	007ede93          	srli	t4,t4,0x7
80008d7c:	006e5e13          	srli	t3,t3,0x6
80008d80:	00432f03          	lw	t5,4(t1)
80008d84:	01ceee33          	or	t3,t4,t3
80008d88:	00ce7e33          	and	t3,t3,a2
80008d8c:	007e03b3          	add	t2,t3,t2
80008d90:	ffff4e13          	not	t3,t5
80008d94:	007e5e13          	srli	t3,t3,0x7
80008d98:	00832e83          	lw	t4,8(t1)
80008d9c:	006f5f13          	srli	t5,t5,0x6
80008da0:	01ee6e33          	or	t3,t3,t5
80008da4:	00ce7e33          	and	t3,t3,a2
80008da8:	fffecf13          	not	t5,t4
80008dac:	007f5f13          	srli	t5,t5,0x7
80008db0:	006ede93          	srli	t4,t4,0x6
80008db4:	01df6eb3          	or	t4,t5,t4
80008db8:	00c32f03          	lw	t5,12(t1)
80008dbc:	00cefeb3          	and	t4,t4,a2
80008dc0:	01ce8e33          	add	t3,t4,t3
80008dc4:	007e03b3          	add	t2,t3,t2
80008dc8:	ffff4e13          	not	t3,t5
80008dcc:	007e5e13          	srli	t3,t3,0x7
80008dd0:	006f5e93          	srli	t4,t5,0x6
80008dd4:	01de6e33          	or	t3,t3,t4
80008dd8:	00ce7e33          	and	t3,t3,a2
80008ddc:	01030313          	addi	t1,t1,16
80008de0:	007e03b3          	add	t2,t3,t2
80008de4:	f91316e3          	bne	t1,a7,80008d70 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x140>
80008de8:	f25ff06f          	j	80008d0c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xdc>
80008dec:	00000793          	li	a5,0
80008df0:	0fc87813          	andi	a6,a6,252
80008df4:	00281813          	slli	a6,a6,0x2
80008df8:	01070733          	add	a4,a4,a6
80008dfc:	0c06b813          	sltiu	a6,a3,192
80008e00:	41000833          	neg	a6,a6
80008e04:	0106f6b3          	and	a3,a3,a6
80008e08:	0036f693          	andi	a3,a3,3
80008e0c:	00269693          	slli	a3,a3,0x2
80008e10:	00072803          	lw	a6,0(a4)
80008e14:	00470713          	addi	a4,a4,4
80008e18:	fff84893          	not	a7,a6
80008e1c:	0078d893          	srli	a7,a7,0x7
80008e20:	00685813          	srli	a6,a6,0x6
80008e24:	0108e833          	or	a6,a7,a6
80008e28:	00c87833          	and	a6,a6,a2
80008e2c:	ffc68693          	addi	a3,a3,-4
80008e30:	00f807b3          	add	a5,a6,a5
80008e34:	fc069ee3          	bnez	a3,80008e10 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x1e0>
80008e38:	00b7f633          	and	a2,a5,a1
80008e3c:	0087d793          	srli	a5,a5,0x8
80008e40:	00b7f5b3          	and	a1,a5,a1
80008e44:	00c585b3          	add	a1,a1,a2
80008e48:	01059613          	slli	a2,a1,0x10
80008e4c:	00b605b3          	add	a1,a2,a1
80008e50:	0105d593          	srli	a1,a1,0x10
80008e54:	00a58533          	add	a0,a1,a0
80008e58:	00c12083          	lw	ra,12(sp)
80008e5c:	00812403          	lw	s0,8(sp)
80008e60:	01010113          	addi	sp,sp,16
80008e64:	00008067          	ret

80008e68 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>:
80008e68:	ff010113          	addi	sp,sp,-16
80008e6c:	00112623          	sw	ra,12(sp)
80008e70:	00812423          	sw	s0,8(sp)
80008e74:	01010413          	addi	s0,sp,16
80008e78:	fff58613          	addi	a2,a1,-1
80008e7c:	00c5c6b3          	xor	a3,a1,a2
80008e80:	02d67263          	bgeu	a2,a3,80008ea4 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E+0x3c>
80008e84:	80000637          	lui	a2,0x80000
80008e88:	40b60633          	sub	a2,a2,a1
80008e8c:	00a63533          	sltu	a0,a2,a0
80008e90:	00154513          	xori	a0,a0,1
80008e94:	00c12083          	lw	ra,12(sp)
80008e98:	00812403          	lw	s0,8(sp)
80008e9c:	01010113          	addi	sp,sp,16
80008ea0:	00008067          	ret
80008ea4:	00000513          	li	a0,0
80008ea8:	00c12083          	lw	ra,12(sp)
80008eac:	00812403          	lw	s0,8(sp)
80008eb0:	01010113          	addi	sp,sp,16
80008eb4:	00008067          	ret

80008eb8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>:
80008eb8:	fe010113          	addi	sp,sp,-32
80008ebc:	00112e23          	sw	ra,28(sp)
80008ec0:	00812c23          	sw	s0,24(sp)
80008ec4:	00912a23          	sw	s1,20(sp)
80008ec8:	01212823          	sw	s2,16(sp)
80008ecc:	01312623          	sw	s3,12(sp)
80008ed0:	01412423          	sw	s4,8(sp)
80008ed4:	01512223          	sw	s5,4(sp)
80008ed8:	02010413          	addi	s0,sp,32
80008edc:	50000613          	li	a2,1280
80008ee0:	16c5f063          	bgeu	a1,a2,80009040 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x188>
80008ee4:	00058493          	mv	s1,a1
80008ee8:	0a052583          	lw	a1,160(a0)
80008eec:	0054da13          	srli	s4,s1,0x5
80008ef0:	04058c63          	beqz	a1,80008f48 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x90>
80008ef4:	00100713          	li	a4,1
80008ef8:	40b70633          	sub	a2,a4,a1
80008efc:	014587b3          	add	a5,a1,s4
80008f00:	fff78693          	addi	a3,a5,-1
80008f04:	00279793          	slli	a5,a5,0x2
80008f08:	00a787b3          	add	a5,a5,a0
80008f0c:	ffc78793          	addi	a5,a5,-4
80008f10:	00259813          	slli	a6,a1,0x2
80008f14:	00a80833          	add	a6,a6,a0
80008f18:	ffc80813          	addi	a6,a6,-4
80008f1c:	02900893          	li	a7,41
80008f20:	02800293          	li	t0,40
80008f24:	1515f863          	bgeu	a1,a7,80009074 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1bc>
80008f28:	1256fa63          	bgeu	a3,t0,8000905c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1a4>
80008f2c:	00082303          	lw	t1,0(a6)
80008f30:	0067a023          	sw	t1,0(a5)
80008f34:	00160613          	addi	a2,a2,1 # 80000001 <_start+0x1>
80008f38:	fff68693          	addi	a3,a3,-1
80008f3c:	ffc78793          	addi	a5,a5,-4
80008f40:	ffc80813          	addi	a6,a6,-4
80008f44:	fee610e3          	bne	a2,a4,80008f24 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x6c>
80008f48:	01f4fa93          	andi	s5,s1,31
80008f4c:	02000593          	li	a1,32
80008f50:	002a1913          	slli	s2,s4,0x2
80008f54:	00b4ee63          	bltu	s1,a1,80008f70 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0xb8>
80008f58:	00050993          	mv	s3,a0
80008f5c:	00000593          	li	a1,0
80008f60:	00090613          	mv	a2,s2
80008f64:	00002097          	auipc	ra,0x2
80008f68:	ce0080e7          	jalr	-800(ra) # 8000ac44 <memset>
80008f6c:	00098513          	mv	a0,s3
80008f70:	0a052703          	lw	a4,160(a0)
80008f74:	01470733          	add	a4,a4,s4
80008f78:	080a8e63          	beqz	s5,80009014 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x15c>
80008f7c:	fff70693          	addi	a3,a4,-1
80008f80:	02700593          	li	a1,39
80008f84:	0cd5ec63          	bltu	a1,a3,8000905c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1a4>
80008f88:	00269693          	slli	a3,a3,0x2
80008f8c:	00d506b3          	add	a3,a0,a3
80008f90:	0006a583          	lw	a1,0(a3)
80008f94:	409006b3          	neg	a3,s1
80008f98:	00d5d833          	srl	a6,a1,a3
80008f9c:	00271793          	slli	a5,a4,0x2
80008fa0:	00070613          	mv	a2,a4
80008fa4:	00080c63          	beqz	a6,80008fbc <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x104>
80008fa8:	02700613          	li	a2,39
80008fac:	0ee66c63          	bltu	a2,a4,800090a4 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1ec>
80008fb0:	00f50633          	add	a2,a0,a5
80008fb4:	01062023          	sw	a6,0(a2)
80008fb8:	00170613          	addi	a2,a4,1
80008fbc:	001a0a13          	addi	s4,s4,1
80008fc0:	04ea7063          	bgeu	s4,a4,80009000 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x148>
80008fc4:	01f6f693          	andi	a3,a3,31
80008fc8:	00a787b3          	add	a5,a5,a0
80008fcc:	ffc78813          	addi	a6,a5,-4
80008fd0:	02800793          	li	a5,40
80008fd4:	ffe70893          	addi	a7,a4,-2
80008fd8:	0af8fa63          	bgeu	a7,a5,8000908c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1d4>
80008fdc:	015598b3          	sll	a7,a1,s5
80008fe0:	ffc82583          	lw	a1,-4(a6)
80008fe4:	fff70713          	addi	a4,a4,-1
80008fe8:	ffc80293          	addi	t0,a6,-4
80008fec:	00d5d333          	srl	t1,a1,a3
80008ff0:	011368b3          	or	a7,t1,a7
80008ff4:	01182023          	sw	a7,0(a6)
80008ff8:	00028813          	mv	a6,t0
80008ffc:	fcea6ce3          	bltu	s4,a4,80008fd4 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x11c>
80009000:	01250933          	add	s2,a0,s2
80009004:	00092583          	lw	a1,0(s2)
80009008:	015595b3          	sll	a1,a1,s5
8000900c:	00b92023          	sw	a1,0(s2)
80009010:	0080006f          	j	80009018 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x160>
80009014:	00070613          	mv	a2,a4
80009018:	0ac52023          	sw	a2,160(a0)
8000901c:	01c12083          	lw	ra,28(sp)
80009020:	01812403          	lw	s0,24(sp)
80009024:	01412483          	lw	s1,20(sp)
80009028:	01012903          	lw	s2,16(sp)
8000902c:	00c12983          	lw	s3,12(sp)
80009030:	00812a03          	lw	s4,8(sp)
80009034:	00412a83          	lw	s5,4(sp)
80009038:	02010113          	addi	sp,sp,32
8000903c:	00008067          	ret
80009040:	8000c537          	lui	a0,0x8000c
80009044:	4fe50513          	addi	a0,a0,1278 # 8000c4fe <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.417>
80009048:	8000c637          	lui	a2,0x8000c
8000904c:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009050:	01d00593          	li	a1,29
80009054:	ffffe097          	auipc	ra,0xffffe
80009058:	cf0080e7          	jalr	-784(ra) # 80006d44 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000905c:	8000c637          	lui	a2,0x8000c
80009060:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009064:	02800593          	li	a1,40
80009068:	00068513          	mv	a0,a3
8000906c:	ffffe097          	auipc	ra,0xffffe
80009070:	d20080e7          	jalr	-736(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009074:	40c00533          	neg	a0,a2
80009078:	8000c637          	lui	a2,0x8000c
8000907c:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009080:	02800593          	li	a1,40
80009084:	ffffe097          	auipc	ra,0xffffe
80009088:	d08080e7          	jalr	-760(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000908c:	8000c637          	lui	a2,0x8000c
80009090:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009094:	fff00513          	li	a0,-1
80009098:	02800593          	li	a1,40
8000909c:	ffffe097          	auipc	ra,0xffffe
800090a0:	cf0080e7          	jalr	-784(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800090a4:	8000c637          	lui	a2,0x8000c
800090a8:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800090ac:	02800593          	li	a1,40
800090b0:	00070513          	mv	a0,a4
800090b4:	ffffe097          	auipc	ra,0xffffe
800090b8:	cd8080e7          	jalr	-808(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

800090bc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>:
800090bc:	fb010113          	addi	sp,sp,-80
800090c0:	04112623          	sw	ra,76(sp)
800090c4:	04812423          	sw	s0,72(sp)
800090c8:	04912223          	sw	s1,68(sp)
800090cc:	05212023          	sw	s2,64(sp)
800090d0:	03312e23          	sw	s3,60(sp)
800090d4:	03412c23          	sw	s4,56(sp)
800090d8:	03512a23          	sw	s5,52(sp)
800090dc:	03612823          	sw	s6,48(sp)
800090e0:	03712623          	sw	s7,44(sp)
800090e4:	03812423          	sw	s8,40(sp)
800090e8:	03912223          	sw	s9,36(sp)
800090ec:	03a12023          	sw	s10,32(sp)
800090f0:	01b12e23          	sw	s11,28(sp)
800090f4:	05010413          	addi	s0,sp,80
800090f8:	00058913          	mv	s2,a1
800090fc:	00261613          	slli	a2,a2,0x2
80009100:	00c58c33          	add	s8,a1,a2
80009104:	10070463          	beqz	a4,8000920c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x150>
80009108:	00050793          	mv	a5,a0
8000910c:	00000d13          	li	s10,0
80009110:	00000513          	li	a0,0
80009114:	00170593          	addi	a1,a4,1
80009118:	fab42a23          	sw	a1,-76(s0)
8000911c:	00271493          	slli	s1,a4,0x2
80009120:	002d1613          	slli	a2,s10,0x2
80009124:	00c78633          	add	a2,a5,a2
80009128:	00090593          	mv	a1,s2
8000912c:	11858e63          	beq	a1,s8,80009248 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x18c>
80009130:	000d0c93          	mv	s9,s10
80009134:	00060a13          	mv	s4,a2
80009138:	0005ab03          	lw	s6,0(a1)
8000913c:	00458913          	addi	s2,a1,4
80009140:	001d0d13          	addi	s10,s10,1
80009144:	00460613          	addi	a2,a2,4
80009148:	00090593          	mv	a1,s2
8000914c:	fe0b00e3          	beqz	s6,8000912c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x70>
80009150:	fcf42223          	sw	a5,-60(s0)
80009154:	fce42423          	sw	a4,-56(s0)
80009158:	fca42023          	sw	a0,-64(s0)
8000915c:	00000a93          	li	s5,0
80009160:	fa942c23          	sw	s1,-72(s0)
80009164:	000c8b93          	mv	s7,s9
80009168:	fad42e23          	sw	a3,-68(s0)
8000916c:	00068d93          	mv	s11,a3
80009170:	02800513          	li	a0,40
80009174:	10abf863          	bgeu	s7,a0,80009284 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x1c8>
80009178:	000da503          	lw	a0,0(s11)
8000917c:	000a2983          	lw	s3,0(s4)
80009180:	004d8d93          	addi	s11,s11,4
80009184:	00000593          	li	a1,0
80009188:	000b0613          	mv	a2,s6
8000918c:	00000693          	li	a3,0
80009190:	00001097          	auipc	ra,0x1
80009194:	ba0080e7          	jalr	-1120(ra) # 80009d30 <__muldi3>
80009198:	01598ab3          	add	s5,s3,s5
8000919c:	013ab633          	sltu	a2,s5,s3
800091a0:	00aa8533          	add	a0,s5,a0
800091a4:	01553ab3          	sltu	s5,a0,s5
800091a8:	00b605b3          	add	a1,a2,a1
800091ac:	01558ab3          	add	s5,a1,s5
800091b0:	00aa2023          	sw	a0,0(s4)
800091b4:	001b8b93          	addi	s7,s7,1
800091b8:	ffc48493          	addi	s1,s1,-4
800091bc:	004a0a13          	addi	s4,s4,4
800091c0:	fa0498e3          	bnez	s1,80009170 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0xb4>
800091c4:	fc842703          	lw	a4,-56(s0)
800091c8:	00070513          	mv	a0,a4
800091cc:	fc442783          	lw	a5,-60(s0)
800091d0:	020a8063          	beqz	s5,800091f0 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x134>
800091d4:	00ec8533          	add	a0,s9,a4
800091d8:	02800593          	li	a1,40
800091dc:	0cb57063          	bgeu	a0,a1,8000929c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x1e0>
800091e0:	00251513          	slli	a0,a0,0x2
800091e4:	00a78533          	add	a0,a5,a0
800091e8:	01552023          	sw	s5,0(a0)
800091ec:	fb442503          	lw	a0,-76(s0)
800091f0:	01950cb3          	add	s9,a0,s9
800091f4:	fc042503          	lw	a0,-64(s0)
800091f8:	00ace463          	bltu	s9,a0,80009200 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x144>
800091fc:	000c8513          	mv	a0,s9
80009200:	fbc42683          	lw	a3,-68(s0)
80009204:	fb842483          	lw	s1,-72(s0)
80009208:	f19ff06f          	j	80009120 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x64>
8000920c:	00000593          	li	a1,0
80009210:	00000513          	li	a0,0
80009214:	40b006b3          	neg	a3,a1
80009218:	00090593          	mv	a1,s2
8000921c:	03858663          	beq	a1,s8,80009248 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x18c>
80009220:	0005a603          	lw	a2,0(a1)
80009224:	00458913          	addi	s2,a1,4
80009228:	fff68693          	addi	a3,a3,-1
8000922c:	00090593          	mv	a1,s2
80009230:	fe0606e3          	beqz	a2,8000921c <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x160>
80009234:	fff6c593          	not	a1,a3
80009238:	00a5e463          	bltu	a1,a0,80009240 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x184>
8000923c:	00058513          	mv	a0,a1
80009240:	40d005b3          	neg	a1,a3
80009244:	fd1ff06f          	j	80009214 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x158>
80009248:	04c12083          	lw	ra,76(sp)
8000924c:	04812403          	lw	s0,72(sp)
80009250:	04412483          	lw	s1,68(sp)
80009254:	04012903          	lw	s2,64(sp)
80009258:	03c12983          	lw	s3,60(sp)
8000925c:	03812a03          	lw	s4,56(sp)
80009260:	03412a83          	lw	s5,52(sp)
80009264:	03012b03          	lw	s6,48(sp)
80009268:	02c12b83          	lw	s7,44(sp)
8000926c:	02812c03          	lw	s8,40(sp)
80009270:	02412c83          	lw	s9,36(sp)
80009274:	02012d03          	lw	s10,32(sp)
80009278:	01c12d83          	lw	s11,28(sp)
8000927c:	05010113          	addi	sp,sp,80
80009280:	00008067          	ret
80009284:	8000c637          	lui	a2,0x8000c
80009288:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000928c:	02800593          	li	a1,40
80009290:	000b8513          	mv	a0,s7
80009294:	ffffe097          	auipc	ra,0xffffe
80009298:	af8080e7          	jalr	-1288(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000929c:	8000c637          	lui	a2,0x8000c
800092a0:	4d460613          	addi	a2,a2,1236 # 8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800092a4:	02800593          	li	a1,40
800092a8:	ffffe097          	auipc	ra,0xffffe
800092ac:	ae4080e7          	jalr	-1308(ra) # 80006d8c <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

800092b0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E>:
800092b0:	f7010113          	addi	sp,sp,-144
800092b4:	08112623          	sw	ra,140(sp)
800092b8:	08812423          	sw	s0,136(sp)
800092bc:	09010413          	addi	s0,sp,144
800092c0:	00058813          	mv	a6,a1
800092c4:	01c5a583          	lw	a1,28(a1)
800092c8:	00052503          	lw	a0,0(a0)
800092cc:	0105f613          	andi	a2,a1,16
800092d0:	02061463          	bnez	a2,800092f8 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x48>
800092d4:	0205f593          	andi	a1,a1,32
800092d8:	04059c63          	bnez	a1,80009330 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x80>
800092dc:	00100593          	li	a1,1
800092e0:	00080613          	mv	a2,a6
800092e4:	08c12083          	lw	ra,140(sp)
800092e8:	08812403          	lw	s0,136(sp)
800092ec:	09010113          	addi	sp,sp,144
800092f0:	00000317          	auipc	t1,0x0
800092f4:	38030067          	jr	896(t1) # 80009670 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>
800092f8:	00000793          	li	a5,0
800092fc:	ff740593          	addi	a1,s0,-9
80009300:	00a00613          	li	a2,10
80009304:	01c0006f          	j	80009320 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x70>
80009308:	05768693          	addi	a3,a3,87
8000930c:	00455513          	srli	a0,a0,0x4
80009310:	00d58023          	sb	a3,0(a1)
80009314:	00178793          	addi	a5,a5,1
80009318:	fff58593          	addi	a1,a1,-1
8000931c:	04050663          	beqz	a0,80009368 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xb8>
80009320:	00f57693          	andi	a3,a0,15
80009324:	fec6f2e3          	bgeu	a3,a2,80009308 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x58>
80009328:	03068693          	addi	a3,a3,48
8000932c:	fe1ff06f          	j	8000930c <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x5c>
80009330:	00000793          	li	a5,0
80009334:	ff740593          	addi	a1,s0,-9
80009338:	00a00613          	li	a2,10
8000933c:	01c0006f          	j	80009358 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xa8>
80009340:	03768693          	addi	a3,a3,55
80009344:	00455513          	srli	a0,a0,0x4
80009348:	00d58023          	sb	a3,0(a1)
8000934c:	00178793          	addi	a5,a5,1
80009350:	fff58593          	addi	a1,a1,-1
80009354:	00050a63          	beqz	a0,80009368 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xb8>
80009358:	00f57693          	andi	a3,a0,15
8000935c:	fec6f2e3          	bgeu	a3,a2,80009340 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x90>
80009360:	03068693          	addi	a3,a3,48
80009364:	fe1ff06f          	j	80009344 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x94>
80009368:	f7840513          	addi	a0,s0,-136
8000936c:	40f50533          	sub	a0,a0,a5
80009370:	08050713          	addi	a4,a0,128
80009374:	8000c637          	lui	a2,0x8000c
80009378:	3b160613          	addi	a2,a2,945 # 8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
8000937c:	00100593          	li	a1,1
80009380:	00200693          	li	a3,2
80009384:	00080513          	mv	a0,a6
80009388:	fffff097          	auipc	ra,0xfffff
8000938c:	af4080e7          	jalr	-1292(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009390:	08c12083          	lw	ra,140(sp)
80009394:	08812403          	lw	s0,136(sp)
80009398:	09010113          	addi	sp,sp,144
8000939c:	00008067          	ret

800093a0 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>:
800093a0:	fe010113          	addi	sp,sp,-32
800093a4:	00112e23          	sw	ra,28(sp)
800093a8:	00812c23          	sw	s0,24(sp)
800093ac:	02010413          	addi	s0,sp,32
800093b0:	00050593          	mv	a1,a0
800093b4:	8000c537          	lui	a0,0x8000c
800093b8:	55050513          	addi	a0,a0,1360 # 8000c550 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.433>
800093bc:	fea42023          	sw	a0,-32(s0)
800093c0:	00100513          	li	a0,1
800093c4:	fea42223          	sw	a0,-28(s0)
800093c8:	fe042823          	sw	zero,-16(s0)
800093cc:	00400513          	li	a0,4
800093d0:	fea42423          	sw	a0,-24(s0)
800093d4:	fe042623          	sw	zero,-20(s0)
800093d8:	fe040513          	addi	a0,s0,-32
800093dc:	ffffe097          	auipc	ra,0xffffe
800093e0:	93c080e7          	jalr	-1732(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

800093e4 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>:
800093e4:	ff010113          	addi	sp,sp,-16
800093e8:	00112623          	sw	ra,12(sp)
800093ec:	00812423          	sw	s0,8(sp)
800093f0:	01010413          	addi	s0,sp,16
800093f4:	00058713          	mv	a4,a1
800093f8:	01c5a603          	lw	a2,28(a1)
800093fc:	0085a683          	lw	a3,8(a1)
80009400:	00052583          	lw	a1,0(a0)
80009404:	00167613          	andi	a2,a2,1
80009408:	02068063          	beqz	a3,80009428 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E+0x44>
8000940c:	00c72683          	lw	a3,12(a4)
80009410:	00070513          	mv	a0,a4
80009414:	00c12083          	lw	ra,12(sp)
80009418:	00812403          	lw	s0,8(sp)
8000941c:	01010113          	addi	sp,sp,16
80009420:	ffffe317          	auipc	t1,0xffffe
80009424:	17030067          	jr	368(t1) # 80007590 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E>
80009428:	00070513          	mv	a0,a4
8000942c:	00c12083          	lw	ra,12(sp)
80009430:	00812403          	lw	s0,8(sp)
80009434:	01010113          	addi	sp,sp,16
80009438:	ffffe317          	auipc	t1,0xffffe
8000943c:	4cc30067          	jr	1228(t1) # 80007904 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E>

80009440 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>:
80009440:	f7010113          	addi	sp,sp,-144
80009444:	08112623          	sw	ra,140(sp)
80009448:	08812423          	sw	s0,136(sp)
8000944c:	09010413          	addi	s0,sp,144
80009450:	00052603          	lw	a2,0(a0)
80009454:	00058513          	mv	a0,a1
80009458:	00000793          	li	a5,0
8000945c:	ff740593          	addi	a1,s0,-9
80009460:	00a00693          	li	a3,10
80009464:	01c0006f          	j	80009480 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x40>
80009468:	05770713          	addi	a4,a4,87
8000946c:	00465613          	srli	a2,a2,0x4
80009470:	00e58023          	sb	a4,0(a1)
80009474:	00178793          	addi	a5,a5,1
80009478:	fff58593          	addi	a1,a1,-1
8000947c:	00060a63          	beqz	a2,80009490 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x50>
80009480:	00f67713          	andi	a4,a2,15
80009484:	fed772e3          	bgeu	a4,a3,80009468 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x28>
80009488:	03070713          	addi	a4,a4,48
8000948c:	fe1ff06f          	j	8000946c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x2c>
80009490:	f7840593          	addi	a1,s0,-136
80009494:	40f585b3          	sub	a1,a1,a5
80009498:	08058713          	addi	a4,a1,128
8000949c:	8000c637          	lui	a2,0x8000c
800094a0:	3b160613          	addi	a2,a2,945 # 8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
800094a4:	00100593          	li	a1,1
800094a8:	00200693          	li	a3,2
800094ac:	fffff097          	auipc	ra,0xfffff
800094b0:	9d0080e7          	jalr	-1584(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
800094b4:	08c12083          	lw	ra,140(sp)
800094b8:	08812403          	lw	s0,136(sp)
800094bc:	09010113          	addi	sp,sp,144
800094c0:	00008067          	ret

800094c4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E>:
800094c4:	f7010113          	addi	sp,sp,-144
800094c8:	08112623          	sw	ra,140(sp)
800094cc:	08812423          	sw	s0,136(sp)
800094d0:	09010413          	addi	s0,sp,144
800094d4:	00052603          	lw	a2,0(a0)
800094d8:	00058513          	mv	a0,a1
800094dc:	00000793          	li	a5,0
800094e0:	ff740593          	addi	a1,s0,-9
800094e4:	00a00693          	li	a3,10
800094e8:	01c0006f          	j	80009504 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x40>
800094ec:	03770713          	addi	a4,a4,55
800094f0:	00465613          	srli	a2,a2,0x4
800094f4:	00e58023          	sb	a4,0(a1)
800094f8:	00178793          	addi	a5,a5,1
800094fc:	fff58593          	addi	a1,a1,-1
80009500:	00060a63          	beqz	a2,80009514 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x50>
80009504:	00f67713          	andi	a4,a2,15
80009508:	fed772e3          	bgeu	a4,a3,800094ec <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x28>
8000950c:	03070713          	addi	a4,a4,48
80009510:	fe1ff06f          	j	800094f0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x2c>
80009514:	f7840593          	addi	a1,s0,-136
80009518:	40f585b3          	sub	a1,a1,a5
8000951c:	08058713          	addi	a4,a1,128
80009520:	8000c637          	lui	a2,0x8000c
80009524:	3b160613          	addi	a2,a2,945 # 8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009528:	00100593          	li	a1,1
8000952c:	00200693          	li	a3,2
80009530:	fffff097          	auipc	ra,0xfffff
80009534:	94c080e7          	jalr	-1716(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009538:	08c12083          	lw	ra,140(sp)
8000953c:	08812403          	lw	s0,136(sp)
80009540:	09010113          	addi	sp,sp,144
80009544:	00008067          	ret

80009548 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE>:
80009548:	f7010113          	addi	sp,sp,-144
8000954c:	08112623          	sw	ra,140(sp)
80009550:	08812423          	sw	s0,136(sp)
80009554:	09010413          	addi	s0,sp,144
80009558:	00058813          	mv	a6,a1
8000955c:	01c5a583          	lw	a1,28(a1)
80009560:	0105f613          	andi	a2,a1,16
80009564:	02061663          	bnez	a2,80009590 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x48>
80009568:	0205f593          	andi	a1,a1,32
8000956c:	06059063          	bnez	a1,800095cc <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x84>
80009570:	00052503          	lw	a0,0(a0)
80009574:	00100593          	li	a1,1
80009578:	00080613          	mv	a2,a6
8000957c:	08c12083          	lw	ra,140(sp)
80009580:	08812403          	lw	s0,136(sp)
80009584:	09010113          	addi	sp,sp,144
80009588:	00000317          	auipc	t1,0x0
8000958c:	0e830067          	jr	232(t1) # 80009670 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>
80009590:	00052503          	lw	a0,0(a0)
80009594:	00000793          	li	a5,0
80009598:	ff740593          	addi	a1,s0,-9
8000959c:	00a00613          	li	a2,10
800095a0:	01c0006f          	j	800095bc <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x74>
800095a4:	05768693          	addi	a3,a3,87
800095a8:	00455513          	srli	a0,a0,0x4
800095ac:	00d58023          	sb	a3,0(a1)
800095b0:	00178793          	addi	a5,a5,1
800095b4:	fff58593          	addi	a1,a1,-1
800095b8:	04050863          	beqz	a0,80009608 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xc0>
800095bc:	00f57693          	andi	a3,a0,15
800095c0:	fec6f2e3          	bgeu	a3,a2,800095a4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x5c>
800095c4:	03068693          	addi	a3,a3,48
800095c8:	fe1ff06f          	j	800095a8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x60>
800095cc:	00052503          	lw	a0,0(a0)
800095d0:	00000793          	li	a5,0
800095d4:	ff740593          	addi	a1,s0,-9
800095d8:	00a00613          	li	a2,10
800095dc:	01c0006f          	j	800095f8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xb0>
800095e0:	03768693          	addi	a3,a3,55
800095e4:	00455513          	srli	a0,a0,0x4
800095e8:	00d58023          	sb	a3,0(a1)
800095ec:	00178793          	addi	a5,a5,1
800095f0:	fff58593          	addi	a1,a1,-1
800095f4:	00050a63          	beqz	a0,80009608 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xc0>
800095f8:	00f57693          	andi	a3,a0,15
800095fc:	fec6f2e3          	bgeu	a3,a2,800095e0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x98>
80009600:	03068693          	addi	a3,a3,48
80009604:	fe1ff06f          	j	800095e4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x9c>
80009608:	f7840513          	addi	a0,s0,-136
8000960c:	40f50533          	sub	a0,a0,a5
80009610:	08050713          	addi	a4,a0,128
80009614:	8000c637          	lui	a2,0x8000c
80009618:	3b160613          	addi	a2,a2,945 # 8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
8000961c:	00100593          	li	a1,1
80009620:	00200693          	li	a3,2
80009624:	00080513          	mv	a0,a6
80009628:	fffff097          	auipc	ra,0xfffff
8000962c:	854080e7          	jalr	-1964(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009630:	08c12083          	lw	ra,140(sp)
80009634:	08812403          	lw	s0,136(sp)
80009638:	09010113          	addi	sp,sp,144
8000963c:	00008067          	ret

80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>:
80009640:	ff010113          	addi	sp,sp,-16
80009644:	00112623          	sw	ra,12(sp)
80009648:	00812423          	sw	s0,8(sp)
8000964c:	01010413          	addi	s0,sp,16
80009650:	00052503          	lw	a0,0(a0)
80009654:	00058613          	mv	a2,a1
80009658:	00100593          	li	a1,1
8000965c:	00c12083          	lw	ra,12(sp)
80009660:	00812403          	lw	s0,8(sp)
80009664:	01010113          	addi	sp,sp,16
80009668:	00000317          	auipc	t1,0x0
8000966c:	00830067          	jr	8(t1) # 80009670 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>

80009670 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>:
80009670:	fb010113          	addi	sp,sp,-80
80009674:	04112623          	sw	ra,76(sp)
80009678:	04812423          	sw	s0,72(sp)
8000967c:	04912223          	sw	s1,68(sp)
80009680:	05212023          	sw	s2,64(sp)
80009684:	03312e23          	sw	s3,60(sp)
80009688:	03412c23          	sw	s4,56(sp)
8000968c:	03512a23          	sw	s5,52(sp)
80009690:	03612823          	sw	s6,48(sp)
80009694:	03712623          	sw	s7,44(sp)
80009698:	03812423          	sw	s8,40(sp)
8000969c:	03912223          	sw	s9,36(sp)
800096a0:	03a12023          	sw	s10,32(sp)
800096a4:	01b12e23          	sw	s11,28(sp)
800096a8:	05010413          	addi	s0,sp,80
800096ac:	00060493          	mv	s1,a2
800096b0:	00058913          	mv	s2,a1
800096b4:	00050993          	mv	s3,a0
800096b8:	00455513          	srli	a0,a0,0x4
800096bc:	00a00b93          	li	s7,10
800096c0:	27100593          	li	a1,625
800096c4:	8000cb37          	lui	s6,0x8000c
800096c8:	3b3b0b13          	addi	s6,s6,947 # 8000c3b3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>
800096cc:	02b57663          	bgeu	a0,a1,800096f8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x88>
800096d0:	06300513          	li	a0,99
800096d4:	0f356263          	bltu	a0,s3,800097b8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x148>
800096d8:	00a00513          	li	a0,10
800096dc:	12a9fc63          	bgeu	s3,a0,80009814 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x1a4>
800096e0:	fffb8b93          	addi	s7,s7,-1
800096e4:	fc240513          	addi	a0,s0,-62
800096e8:	01750533          	add	a0,a0,s7
800096ec:	0309e593          	ori	a1,s3,48
800096f0:	00b50023          	sb	a1,0(a0)
800096f4:	1440006f          	j	80009838 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x1c8>
800096f8:	fa942e23          	sw	s1,-68(s0)
800096fc:	00000b93          	li	s7,0
80009700:	fc840c13          	addi	s8,s0,-56
80009704:	fca40c93          	addi	s9,s0,-54
80009708:	00002537          	lui	a0,0x2
8000970c:	71050a13          	addi	s4,a0,1808 # 2710 <.Lline_table_start2+0x1362>
80009710:	05f5e537          	lui	a0,0x5f5e
80009714:	0ff50d13          	addi	s10,a0,255 # 5f5e0ff <.Lline_table_start2+0x5f5cd51>
80009718:	00098a93          	mv	s5,s3
8000971c:	00098513          	mv	a0,s3
80009720:	000a0593          	mv	a1,s4
80009724:	00001097          	auipc	ra,0x1
80009728:	184080e7          	jalr	388(ra) # 8000a8a8 <__udivsi3>
8000972c:	00050993          	mv	s3,a0
80009730:	000a0593          	mv	a1,s4
80009734:	00000097          	auipc	ra,0x0
80009738:	5b4080e7          	jalr	1460(ra) # 80009ce8 <__mulsi3>
8000973c:	40aa8db3          	sub	s11,s5,a0
80009740:	010d9513          	slli	a0,s11,0x10
80009744:	01055513          	srli	a0,a0,0x10
80009748:	06400593          	li	a1,100
8000974c:	00001097          	auipc	ra,0x1
80009750:	15c080e7          	jalr	348(ra) # 8000a8a8 <__udivsi3>
80009754:	00151493          	slli	s1,a0,0x1
80009758:	06400593          	li	a1,100
8000975c:	00000097          	auipc	ra,0x0
80009760:	58c080e7          	jalr	1420(ra) # 80009ce8 <__mulsi3>
80009764:	40ad8533          	sub	a0,s11,a0
80009768:	01151513          	slli	a0,a0,0x11
8000976c:	009b04b3          	add	s1,s6,s1
80009770:	0014c583          	lbu	a1,1(s1)
80009774:	01055513          	srli	a0,a0,0x10
80009778:	017c0633          	add	a2,s8,s7
8000977c:	0004c683          	lbu	a3,0(s1)
80009780:	00b600a3          	sb	a1,1(a2)
80009784:	00ab0533          	add	a0,s6,a0
80009788:	00154583          	lbu	a1,1(a0)
8000978c:	00054503          	lbu	a0,0(a0)
80009790:	00d60023          	sb	a3,0(a2)
80009794:	017c8633          	add	a2,s9,s7
80009798:	00b600a3          	sb	a1,1(a2)
8000979c:	00a60023          	sb	a0,0(a2)
800097a0:	ffcb8b93          	addi	s7,s7,-4
800097a4:	f75d6ae3          	bltu	s10,s5,80009718 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0xa8>
800097a8:	00ab8b93          	addi	s7,s7,10
800097ac:	fbc42483          	lw	s1,-68(s0)
800097b0:	06300513          	li	a0,99
800097b4:	f33572e3          	bgeu	a0,s3,800096d8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x68>
800097b8:	01099513          	slli	a0,s3,0x10
800097bc:	01055513          	srli	a0,a0,0x10
800097c0:	06400593          	li	a1,100
800097c4:	00001097          	auipc	ra,0x1
800097c8:	0e4080e7          	jalr	228(ra) # 8000a8a8 <__udivsi3>
800097cc:	00050a13          	mv	s4,a0
800097d0:	06400593          	li	a1,100
800097d4:	00000097          	auipc	ra,0x0
800097d8:	514080e7          	jalr	1300(ra) # 80009ce8 <__mulsi3>
800097dc:	40a98533          	sub	a0,s3,a0
800097e0:	01151513          	slli	a0,a0,0x11
800097e4:	01055513          	srli	a0,a0,0x10
800097e8:	ffeb8b93          	addi	s7,s7,-2
800097ec:	00ab0533          	add	a0,s6,a0
800097f0:	00154583          	lbu	a1,1(a0)
800097f4:	00054503          	lbu	a0,0(a0)
800097f8:	fc240613          	addi	a2,s0,-62
800097fc:	01760633          	add	a2,a2,s7
80009800:	00b600a3          	sb	a1,1(a2)
80009804:	00a60023          	sb	a0,0(a2)
80009808:	000a0993          	mv	s3,s4
8000980c:	00a00513          	li	a0,10
80009810:	ecaa68e3          	bltu	s4,a0,800096e0 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x70>
80009814:	00199993          	slli	s3,s3,0x1
80009818:	ffeb8b93          	addi	s7,s7,-2
8000981c:	013b09b3          	add	s3,s6,s3
80009820:	0019c503          	lbu	a0,1(s3)
80009824:	0009c583          	lbu	a1,0(s3)
80009828:	fc240613          	addi	a2,s0,-62
8000982c:	01760633          	add	a2,a2,s7
80009830:	00a600a3          	sb	a0,1(a2)
80009834:	00b60023          	sb	a1,0(a2)
80009838:	fc240713          	addi	a4,s0,-62
8000983c:	01770733          	add	a4,a4,s7
80009840:	00a00513          	li	a0,10
80009844:	417507b3          	sub	a5,a0,s7
80009848:	00100613          	li	a2,1
8000984c:	00048513          	mv	a0,s1
80009850:	00090593          	mv	a1,s2
80009854:	00000693          	li	a3,0
80009858:	ffffe097          	auipc	ra,0xffffe
8000985c:	624080e7          	jalr	1572(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009860:	04c12083          	lw	ra,76(sp)
80009864:	04812403          	lw	s0,72(sp)
80009868:	04412483          	lw	s1,68(sp)
8000986c:	04012903          	lw	s2,64(sp)
80009870:	03c12983          	lw	s3,60(sp)
80009874:	03812a03          	lw	s4,56(sp)
80009878:	03412a83          	lw	s5,52(sp)
8000987c:	03012b03          	lw	s6,48(sp)
80009880:	02c12b83          	lw	s7,44(sp)
80009884:	02812c03          	lw	s8,40(sp)
80009888:	02412c83          	lw	s9,36(sp)
8000988c:	02012d03          	lw	s10,32(sp)
80009890:	01c12d83          	lw	s11,28(sp)
80009894:	05010113          	addi	sp,sp,80
80009898:	00008067          	ret

8000989c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE>:
8000989c:	fb010113          	addi	sp,sp,-80
800098a0:	04112623          	sw	ra,76(sp)
800098a4:	04812423          	sw	s0,72(sp)
800098a8:	04912223          	sw	s1,68(sp)
800098ac:	05212023          	sw	s2,64(sp)
800098b0:	03312e23          	sw	s3,60(sp)
800098b4:	03412c23          	sw	s4,56(sp)
800098b8:	03512a23          	sw	s5,52(sp)
800098bc:	03612823          	sw	s6,48(sp)
800098c0:	03712623          	sw	s7,44(sp)
800098c4:	03812423          	sw	s8,40(sp)
800098c8:	03912223          	sw	s9,36(sp)
800098cc:	03a12023          	sw	s10,32(sp)
800098d0:	01b12e23          	sw	s11,28(sp)
800098d4:	05010413          	addi	s0,sp,80
800098d8:	00068493          	mv	s1,a3
800098dc:	00060913          	mv	s2,a2
800098e0:	00058a13          	mv	s4,a1
800098e4:	00050993          	mv	s3,a0
800098e8:	01c59513          	slli	a0,a1,0x1c
800098ec:	0049d593          	srli	a1,s3,0x4
800098f0:	00a5e533          	or	a0,a1,a0
800098f4:	27153513          	sltiu	a0,a0,625
800098f8:	004a5593          	srli	a1,s4,0x4
800098fc:	0015b593          	seqz	a1,a1
80009900:	00a5f533          	and	a0,a1,a0
80009904:	8000cc37          	lui	s8,0x8000c
80009908:	3b3c0c13          	addi	s8,s8,947 # 8000c3b3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>
8000990c:	0e051863          	bnez	a0,800099fc <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x160>
80009910:	fb242823          	sw	s2,-80(s0)
80009914:	fa942a23          	sw	s1,-76(s0)
80009918:	00000c93          	li	s9,0
8000991c:	fca40d93          	addi	s11,s0,-54
80009920:	00002537          	lui	a0,0x2
80009924:	71050a93          	addi	s5,a0,1808 # 2710 <.Lline_table_start2+0x1362>
80009928:	05f5e537          	lui	a0,0x5f5e
8000992c:	0ff50493          	addi	s1,a0,255 # 5f5e0ff <.Lline_table_start2+0x5f5cd51>
80009930:	00098b13          	mv	s6,s3
80009934:	00098513          	mv	a0,s3
80009938:	000a0593          	mv	a1,s4
8000993c:	000a8613          	mv	a2,s5
80009940:	00000693          	li	a3,0
80009944:	00001097          	auipc	ra,0x1
80009948:	f88080e7          	jalr	-120(ra) # 8000a8cc <__udivdi3>
8000994c:	00050993          	mv	s3,a0
80009950:	00058b93          	mv	s7,a1
80009954:	000a8613          	mv	a2,s5
80009958:	00000693          	li	a3,0
8000995c:	00000097          	auipc	ra,0x0
80009960:	3d4080e7          	jalr	980(ra) # 80009d30 <__muldi3>
80009964:	40ab0933          	sub	s2,s6,a0
80009968:	01091513          	slli	a0,s2,0x10
8000996c:	01055513          	srli	a0,a0,0x10
80009970:	06400593          	li	a1,100
80009974:	00001097          	auipc	ra,0x1
80009978:	f34080e7          	jalr	-204(ra) # 8000a8a8 <__udivsi3>
8000997c:	00151d13          	slli	s10,a0,0x1
80009980:	06400593          	li	a1,100
80009984:	00000097          	auipc	ra,0x0
80009988:	364080e7          	jalr	868(ra) # 80009ce8 <__mulsi3>
8000998c:	40a90533          	sub	a0,s2,a0
80009990:	01151513          	slli	a0,a0,0x11
80009994:	01ac0d33          	add	s10,s8,s10
80009998:	001d4583          	lbu	a1,1(s10)
8000999c:	01055513          	srli	a0,a0,0x10
800099a0:	fc840613          	addi	a2,s0,-56
800099a4:	01960633          	add	a2,a2,s9
800099a8:	000d4683          	lbu	a3,0(s10)
800099ac:	00b600a3          	sb	a1,1(a2)
800099b0:	00ac0533          	add	a0,s8,a0
800099b4:	00154583          	lbu	a1,1(a0)
800099b8:	00054503          	lbu	a0,0(a0)
800099bc:	00d60023          	sb	a3,0(a2)
800099c0:	019d8633          	add	a2,s11,s9
800099c4:	00b600a3          	sb	a1,1(a2)
800099c8:	00a60023          	sb	a0,0(a2)
800099cc:	0164b533          	sltu	a0,s1,s6
800099d0:	014035b3          	snez	a1,s4
800099d4:	00b56533          	or	a0,a0,a1
800099d8:	ffcc8c93          	addi	s9,s9,-4
800099dc:	000b8a13          	mv	s4,s7
800099e0:	f40518e3          	bnez	a0,80009930 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x94>
800099e4:	014c8c93          	addi	s9,s9,20
800099e8:	fb442483          	lw	s1,-76(s0)
800099ec:	fb042903          	lw	s2,-80(s0)
800099f0:	06300513          	li	a0,99
800099f4:	01356a63          	bltu	a0,s3,80009a08 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x16c>
800099f8:	0640006f          	j	80009a5c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1c0>
800099fc:	01400c93          	li	s9,20
80009a00:	06300513          	li	a0,99
80009a04:	05357c63          	bgeu	a0,s3,80009a5c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1c0>
80009a08:	01099513          	slli	a0,s3,0x10
80009a0c:	01055513          	srli	a0,a0,0x10
80009a10:	06400593          	li	a1,100
80009a14:	00001097          	auipc	ra,0x1
80009a18:	e94080e7          	jalr	-364(ra) # 8000a8a8 <__udivsi3>
80009a1c:	00050a13          	mv	s4,a0
80009a20:	06400593          	li	a1,100
80009a24:	00000097          	auipc	ra,0x0
80009a28:	2c4080e7          	jalr	708(ra) # 80009ce8 <__mulsi3>
80009a2c:	40a98533          	sub	a0,s3,a0
80009a30:	01151513          	slli	a0,a0,0x11
80009a34:	01055513          	srli	a0,a0,0x10
80009a38:	ffec8c93          	addi	s9,s9,-2
80009a3c:	00ac0533          	add	a0,s8,a0
80009a40:	00154583          	lbu	a1,1(a0)
80009a44:	00054503          	lbu	a0,0(a0)
80009a48:	fb840613          	addi	a2,s0,-72
80009a4c:	01960633          	add	a2,a2,s9
80009a50:	00b600a3          	sb	a1,1(a2)
80009a54:	00a60023          	sb	a0,0(a2)
80009a58:	000a0993          	mv	s3,s4
80009a5c:	00a00513          	li	a0,10
80009a60:	00a9fe63          	bgeu	s3,a0,80009a7c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1e0>
80009a64:	fffc8c93          	addi	s9,s9,-1
80009a68:	fb840513          	addi	a0,s0,-72
80009a6c:	01950533          	add	a0,a0,s9
80009a70:	0309e593          	ori	a1,s3,48
80009a74:	00b50023          	sb	a1,0(a0)
80009a78:	0280006f          	j	80009aa0 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x204>
80009a7c:	00199993          	slli	s3,s3,0x1
80009a80:	ffec8c93          	addi	s9,s9,-2
80009a84:	013c09b3          	add	s3,s8,s3
80009a88:	0019c503          	lbu	a0,1(s3)
80009a8c:	0009c583          	lbu	a1,0(s3)
80009a90:	fb840613          	addi	a2,s0,-72
80009a94:	01960633          	add	a2,a2,s9
80009a98:	00a600a3          	sb	a0,1(a2)
80009a9c:	00b60023          	sb	a1,0(a2)
80009aa0:	fb840713          	addi	a4,s0,-72
80009aa4:	01970733          	add	a4,a4,s9
80009aa8:	01400513          	li	a0,20
80009aac:	419507b3          	sub	a5,a0,s9
80009ab0:	00100613          	li	a2,1
80009ab4:	00048513          	mv	a0,s1
80009ab8:	00090593          	mv	a1,s2
80009abc:	00000693          	li	a3,0
80009ac0:	ffffe097          	auipc	ra,0xffffe
80009ac4:	3bc080e7          	jalr	956(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009ac8:	04c12083          	lw	ra,76(sp)
80009acc:	04812403          	lw	s0,72(sp)
80009ad0:	04412483          	lw	s1,68(sp)
80009ad4:	04012903          	lw	s2,64(sp)
80009ad8:	03c12983          	lw	s3,60(sp)
80009adc:	03812a03          	lw	s4,56(sp)
80009ae0:	03412a83          	lw	s5,52(sp)
80009ae4:	03012b03          	lw	s6,48(sp)
80009ae8:	02c12b83          	lw	s7,44(sp)
80009aec:	02812c03          	lw	s8,40(sp)
80009af0:	02412c83          	lw	s9,36(sp)
80009af4:	02012d03          	lw	s10,32(sp)
80009af8:	01c12d83          	lw	s11,28(sp)
80009afc:	05010113          	addi	sp,sp,80
80009b00:	00008067          	ret

80009b04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>:
80009b04:	ff010113          	addi	sp,sp,-16
80009b08:	00112623          	sw	ra,12(sp)
80009b0c:	00812423          	sw	s0,8(sp)
80009b10:	01010413          	addi	s0,sp,16
80009b14:	00452603          	lw	a2,4(a0)
80009b18:	00052503          	lw	a0,0(a0)
80009b1c:	00c62303          	lw	t1,12(a2)
80009b20:	00c12083          	lw	ra,12(sp)
80009b24:	00812403          	lw	s0,8(sp)
80009b28:	01010113          	addi	sp,sp,16
80009b2c:	00030067          	jr	t1

80009b30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE>:
80009b30:	f7010113          	addi	sp,sp,-144
80009b34:	08112623          	sw	ra,140(sp)
80009b38:	08812423          	sw	s0,136(sp)
80009b3c:	09010413          	addi	s0,sp,144
80009b40:	00052503          	lw	a0,0(a0)
80009b44:	00058813          	mv	a6,a1
80009b48:	01c5a603          	lw	a2,28(a1)
80009b4c:	00452583          	lw	a1,4(a0)
80009b50:	00052503          	lw	a0,0(a0)
80009b54:	01067693          	andi	a3,a2,16
80009b58:	02069463          	bnez	a3,80009b80 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x50>
80009b5c:	02067613          	andi	a2,a2,32
80009b60:	06061463          	bnez	a2,80009bc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x98>
80009b64:	00100613          	li	a2,1
80009b68:	00080693          	mv	a3,a6
80009b6c:	08c12083          	lw	ra,140(sp)
80009b70:	08812403          	lw	s0,136(sp)
80009b74:	09010113          	addi	sp,sp,144
80009b78:	00000317          	auipc	t1,0x0
80009b7c:	d2430067          	jr	-732(t1) # 8000989c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE>
80009b80:	00000793          	li	a5,0
80009b84:	ff740613          	addi	a2,s0,-9
80009b88:	00a00693          	li	a3,10
80009b8c:	02c0006f          	j	80009bb8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x88>
80009b90:	05770713          	addi	a4,a4,87
80009b94:	00455513          	srli	a0,a0,0x4
80009b98:	01c59893          	slli	a7,a1,0x1c
80009b9c:	01156533          	or	a0,a0,a7
80009ba0:	0045d593          	srli	a1,a1,0x4
80009ba4:	00e60023          	sb	a4,0(a2)
80009ba8:	00178793          	addi	a5,a5,1
80009bac:	00b56733          	or	a4,a0,a1
80009bb0:	fff60613          	addi	a2,a2,-1
80009bb4:	04070e63          	beqz	a4,80009c10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xe0>
80009bb8:	00f57713          	andi	a4,a0,15
80009bbc:	fcd77ae3          	bgeu	a4,a3,80009b90 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x60>
80009bc0:	03070713          	addi	a4,a4,48
80009bc4:	fd1ff06f          	j	80009b94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x64>
80009bc8:	00000793          	li	a5,0
80009bcc:	ff740613          	addi	a2,s0,-9
80009bd0:	00a00693          	li	a3,10
80009bd4:	02c0006f          	j	80009c00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xd0>
80009bd8:	03770713          	addi	a4,a4,55
80009bdc:	00455513          	srli	a0,a0,0x4
80009be0:	01c59893          	slli	a7,a1,0x1c
80009be4:	01156533          	or	a0,a0,a7
80009be8:	0045d593          	srli	a1,a1,0x4
80009bec:	00e60023          	sb	a4,0(a2)
80009bf0:	00178793          	addi	a5,a5,1
80009bf4:	00b56733          	or	a4,a0,a1
80009bf8:	fff60613          	addi	a2,a2,-1
80009bfc:	00070a63          	beqz	a4,80009c10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xe0>
80009c00:	00f57713          	andi	a4,a0,15
80009c04:	fcd77ae3          	bgeu	a4,a3,80009bd8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xa8>
80009c08:	03070713          	addi	a4,a4,48
80009c0c:	fd1ff06f          	j	80009bdc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xac>
80009c10:	f7840513          	addi	a0,s0,-136
80009c14:	40f50533          	sub	a0,a0,a5
80009c18:	08050713          	addi	a4,a0,128
80009c1c:	8000c637          	lui	a2,0x8000c
80009c20:	3b160613          	addi	a2,a2,945 # 8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009c24:	00100593          	li	a1,1
80009c28:	00200693          	li	a3,2
80009c2c:	00080513          	mv	a0,a6
80009c30:	ffffe097          	auipc	ra,0xffffe
80009c34:	24c080e7          	jalr	588(ra) # 80007e7c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009c38:	08c12083          	lw	ra,140(sp)
80009c3c:	08812403          	lw	s0,136(sp)
80009c40:	09010113          	addi	sp,sp,144
80009c44:	00008067          	ret

80009c48 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>:
80009c48:	ff010113          	addi	sp,sp,-16
80009c4c:	00112623          	sw	ra,12(sp)
80009c50:	00812423          	sw	s0,8(sp)
80009c54:	01010413          	addi	s0,sp,16
80009c58:	00052683          	lw	a3,0(a0)
80009c5c:	00452603          	lw	a2,4(a0)
80009c60:	00058513          	mv	a0,a1
80009c64:	00068593          	mv	a1,a3
80009c68:	00c12083          	lw	ra,12(sp)
80009c6c:	00812403          	lw	s0,8(sp)
80009c70:	01010113          	addi	sp,sp,16
80009c74:	ffffe317          	auipc	t1,0xffffe
80009c78:	60830067          	jr	1544(t1) # 8000827c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E>

80009c7c <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h54d6dc839f74746cE>:
80009c7c:	fc010113          	addi	sp,sp,-64
80009c80:	02112e23          	sw	ra,60(sp)
80009c84:	02812c23          	sw	s0,56(sp)
80009c88:	04010413          	addi	s0,sp,64
80009c8c:	fca42423          	sw	a0,-56(s0)
80009c90:	fcb42623          	sw	a1,-52(s0)
80009c94:	fc840513          	addi	a0,s0,-56
80009c98:	fea42423          	sw	a0,-24(s0)
80009c9c:	80009537          	lui	a0,0x80009
80009ca0:	64050513          	addi	a0,a0,1600 # 80009640 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80009ca4:	fea42623          	sw	a0,-20(s0)
80009ca8:	fcc40593          	addi	a1,s0,-52
80009cac:	feb42823          	sw	a1,-16(s0)
80009cb0:	fea42a23          	sw	a0,-12(s0)
80009cb4:	8000c537          	lui	a0,0x8000c
80009cb8:	57c50513          	addi	a0,a0,1404 # 8000c57c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469>
80009cbc:	fca42823          	sw	a0,-48(s0)
80009cc0:	00200513          	li	a0,2
80009cc4:	fca42a23          	sw	a0,-44(s0)
80009cc8:	fe042023          	sw	zero,-32(s0)
80009ccc:	fe840593          	addi	a1,s0,-24
80009cd0:	fcb42c23          	sw	a1,-40(s0)
80009cd4:	fca42e23          	sw	a0,-36(s0)
80009cd8:	fd040513          	addi	a0,s0,-48
80009cdc:	00060593          	mv	a1,a2
80009ce0:	ffffd097          	auipc	ra,0xffffd
80009ce4:	038080e7          	jalr	56(ra) # 80006d18 <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80009ce8 <__mulsi3>:
80009ce8:	ff010113          	addi	sp,sp,-16
80009cec:	00112623          	sw	ra,12(sp)
80009cf0:	00812423          	sw	s0,8(sp)
80009cf4:	01010413          	addi	s0,sp,16
80009cf8:	00000613          	li	a2,0
80009cfc:	02050063          	beqz	a0,80009d1c <__mulsi3+0x34>
80009d00:	01f51693          	slli	a3,a0,0x1f
80009d04:	41f6d693          	srai	a3,a3,0x1f
80009d08:	00b6f6b3          	and	a3,a3,a1
80009d0c:	00c68633          	add	a2,a3,a2
80009d10:	00155513          	srli	a0,a0,0x1
80009d14:	00159593          	slli	a1,a1,0x1
80009d18:	fe0514e3          	bnez	a0,80009d00 <__mulsi3+0x18>
80009d1c:	00060513          	mv	a0,a2
80009d20:	00c12083          	lw	ra,12(sp)
80009d24:	00812403          	lw	s0,8(sp)
80009d28:	01010113          	addi	sp,sp,16
80009d2c:	00008067          	ret

80009d30 <__muldi3>:
80009d30:	ff010113          	addi	sp,sp,-16
80009d34:	00112623          	sw	ra,12(sp)
80009d38:	00812423          	sw	s0,8(sp)
80009d3c:	01010413          	addi	s0,sp,16
80009d40:	00b56733          	or	a4,a0,a1
80009d44:	04070c63          	beqz	a4,80009d9c <__muldi3+0x6c>
80009d48:	00000713          	li	a4,0
80009d4c:	00000793          	li	a5,0
80009d50:	01f51813          	slli	a6,a0,0x1f
80009d54:	41f85813          	srai	a6,a6,0x1f
80009d58:	00d878b3          	and	a7,a6,a3
80009d5c:	00c87833          	and	a6,a6,a2
80009d60:	00e80733          	add	a4,a6,a4
80009d64:	01073833          	sltu	a6,a4,a6
80009d68:	00f887b3          	add	a5,a7,a5
80009d6c:	010787b3          	add	a5,a5,a6
80009d70:	00155513          	srli	a0,a0,0x1
80009d74:	01f59813          	slli	a6,a1,0x1f
80009d78:	01056533          	or	a0,a0,a6
80009d7c:	0015d593          	srli	a1,a1,0x1
80009d80:	01f65813          	srli	a6,a2,0x1f
80009d84:	00169693          	slli	a3,a3,0x1
80009d88:	0106e6b3          	or	a3,a3,a6
80009d8c:	00b56833          	or	a6,a0,a1
80009d90:	00161613          	slli	a2,a2,0x1
80009d94:	fa081ee3          	bnez	a6,80009d50 <__muldi3+0x20>
80009d98:	0080006f          	j	80009da0 <__muldi3+0x70>
80009d9c:	00000793          	li	a5,0
80009da0:	00070513          	mv	a0,a4
80009da4:	00078593          	mv	a1,a5
80009da8:	00c12083          	lw	ra,12(sp)
80009dac:	00812403          	lw	s0,8(sp)
80009db0:	01010113          	addi	sp,sp,16
80009db4:	00008067          	ret

80009db8 <memcpy>:
80009db8:	ff010113          	addi	sp,sp,-16
80009dbc:	00112623          	sw	ra,12(sp)
80009dc0:	00812423          	sw	s0,8(sp)
80009dc4:	01010413          	addi	s0,sp,16
80009dc8:	01000693          	li	a3,16
80009dcc:	08d66063          	bltu	a2,a3,80009e4c <memcpy+0x94>
80009dd0:	40a006b3          	neg	a3,a0
80009dd4:	0036f693          	andi	a3,a3,3
80009dd8:	00d50733          	add	a4,a0,a3
80009ddc:	02e57463          	bgeu	a0,a4,80009e04 <memcpy+0x4c>
80009de0:	00068793          	mv	a5,a3
80009de4:	00050813          	mv	a6,a0
80009de8:	00058893          	mv	a7,a1
80009dec:	0008c283          	lbu	t0,0(a7)
80009df0:	00580023          	sb	t0,0(a6)
80009df4:	00180813          	addi	a6,a6,1
80009df8:	fff78793          	addi	a5,a5,-1
80009dfc:	00188893          	addi	a7,a7,1
80009e00:	fe0796e3          	bnez	a5,80009dec <memcpy+0x34>
80009e04:	00d585b3          	add	a1,a1,a3
80009e08:	40d60633          	sub	a2,a2,a3
80009e0c:	ffc67793          	andi	a5,a2,-4
80009e10:	0035f813          	andi	a6,a1,3
80009e14:	00f706b3          	add	a3,a4,a5
80009e18:	06081463          	bnez	a6,80009e80 <memcpy+0xc8>
80009e1c:	00d77e63          	bgeu	a4,a3,80009e38 <memcpy+0x80>
80009e20:	00058813          	mv	a6,a1
80009e24:	00082883          	lw	a7,0(a6)
80009e28:	01172023          	sw	a7,0(a4)
80009e2c:	00470713          	addi	a4,a4,4
80009e30:	00480813          	addi	a6,a6,4
80009e34:	fed768e3          	bltu	a4,a3,80009e24 <memcpy+0x6c>
80009e38:	00f585b3          	add	a1,a1,a5
80009e3c:	00367613          	andi	a2,a2,3
80009e40:	00c68733          	add	a4,a3,a2
80009e44:	00e6ea63          	bltu	a3,a4,80009e58 <memcpy+0xa0>
80009e48:	0280006f          	j	80009e70 <memcpy+0xb8>
80009e4c:	00050693          	mv	a3,a0
80009e50:	00c50733          	add	a4,a0,a2
80009e54:	00e57e63          	bgeu	a0,a4,80009e70 <memcpy+0xb8>
80009e58:	0005c703          	lbu	a4,0(a1)
80009e5c:	00e68023          	sb	a4,0(a3)
80009e60:	00168693          	addi	a3,a3,1
80009e64:	fff60613          	addi	a2,a2,-1
80009e68:	00158593          	addi	a1,a1,1
80009e6c:	fe0616e3          	bnez	a2,80009e58 <memcpy+0xa0>
80009e70:	00c12083          	lw	ra,12(sp)
80009e74:	00812403          	lw	s0,8(sp)
80009e78:	01010113          	addi	sp,sp,16
80009e7c:	00008067          	ret
80009e80:	fad77ce3          	bgeu	a4,a3,80009e38 <memcpy+0x80>
80009e84:	00359893          	slli	a7,a1,0x3
80009e88:	0188f813          	andi	a6,a7,24
80009e8c:	ffc5f293          	andi	t0,a1,-4
80009e90:	0002a303          	lw	t1,0(t0)
80009e94:	411008b3          	neg	a7,a7
80009e98:	0188f893          	andi	a7,a7,24
80009e9c:	00428293          	addi	t0,t0,4
80009ea0:	0002a383          	lw	t2,0(t0)
80009ea4:	01035333          	srl	t1,t1,a6
80009ea8:	01139e33          	sll	t3,t2,a7
80009eac:	006e6333          	or	t1,t3,t1
80009eb0:	00672023          	sw	t1,0(a4)
80009eb4:	00470713          	addi	a4,a4,4
80009eb8:	00428293          	addi	t0,t0,4
80009ebc:	00038313          	mv	t1,t2
80009ec0:	fed760e3          	bltu	a4,a3,80009ea0 <memcpy+0xe8>
80009ec4:	f75ff06f          	j	80009e38 <memcpy+0x80>

80009ec8 <__addsf3>:
80009ec8:	ff010113          	addi	sp,sp,-16
80009ecc:	00112623          	sw	ra,12(sp)
80009ed0:	00812423          	sw	s0,8(sp)
80009ed4:	01010413          	addi	s0,sp,16
80009ed8:	00c12083          	lw	ra,12(sp)
80009edc:	00812403          	lw	s0,8(sp)
80009ee0:	01010113          	addi	sp,sp,16
80009ee4:	00000317          	auipc	t1,0x0
80009ee8:	00830067          	jr	8(t1) # 80009eec <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E>

80009eec <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E>:
80009eec:	ff010113          	addi	sp,sp,-16
80009ef0:	00112623          	sw	ra,12(sp)
80009ef4:	00812423          	sw	s0,8(sp)
80009ef8:	01010413          	addi	s0,sp,16
80009efc:	80000637          	lui	a2,0x80000
80009f00:	fff60713          	addi	a4,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
80009f04:	00e576b3          	and	a3,a0,a4
80009f08:	80800637          	lui	a2,0x80800
80009f0c:	00c68833          	add	a6,a3,a2
80009f10:	00160793          	addi	a5,a2,1 # 80800001 <KALLOC_BUFFER+0x7f2001>
80009f14:	00e5f733          	and	a4,a1,a4
80009f18:	02f86263          	bltu	a6,a5,80009f3c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x50>
80009f1c:	00c70633          	add	a2,a4,a2
80009f20:	00f66e63          	bltu	a2,a5,80009f3c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x50>
80009f24:	00800637          	lui	a2,0x800
80009f28:	fff60613          	addi	a2,a2,-1 # 7fffff <.Lline_table_start2+0x7fec51>
80009f2c:	02e6e263          	bltu	a3,a4,80009f50 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x64>
80009f30:	00058893          	mv	a7,a1
80009f34:	00050713          	mv	a4,a0
80009f38:	0200006f          	j	80009f58 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x6c>
80009f3c:	7f800637          	lui	a2,0x7f800
80009f40:	02d67e63          	bgeu	a2,a3,80009f7c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x90>
80009f44:	00400637          	lui	a2,0x400
80009f48:	00c6e633          	or	a2,a3,a2
80009f4c:	3300006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
80009f50:	00050893          	mv	a7,a0
80009f54:	00058713          	mv	a4,a1
80009f58:	00171693          	slli	a3,a4,0x1
80009f5c:	0186d693          	srli	a3,a3,0x18
80009f60:	00189793          	slli	a5,a7,0x1
80009f64:	0187d813          	srli	a6,a5,0x18
80009f68:	00c777b3          	and	a5,a4,a2
80009f6c:	02068063          	beqz	a3,80009f8c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0xa0>
80009f70:	00c8f8b3          	and	a7,a7,a2
80009f74:	16081a63          	bnez	a6,8000a0e8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1fc>
80009f78:	0d40006f          	j	8000a04c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x160>
80009f7c:	08e67c63          	bgeu	a2,a4,8000a014 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x128>
80009f80:	00400637          	lui	a2,0x400
80009f84:	00c76633          	or	a2,a4,a2
80009f88:	2f40006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
80009f8c:	0a078263          	beqz	a5,8000a030 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x144>
80009f90:	0017d693          	srli	a3,a5,0x1
80009f94:	00d7e6b3          	or	a3,a5,a3
80009f98:	0026d293          	srli	t0,a3,0x2
80009f9c:	0056e6b3          	or	a3,a3,t0
80009fa0:	0046d293          	srli	t0,a3,0x4
80009fa4:	0056e6b3          	or	a3,a3,t0
80009fa8:	0086d293          	srli	t0,a3,0x8
80009fac:	0056e6b3          	or	a3,a3,t0
80009fb0:	0106d293          	srli	t0,a3,0x10
80009fb4:	0056e6b3          	or	a3,a3,t0
80009fb8:	fff6c693          	not	a3,a3
80009fbc:	0016d293          	srli	t0,a3,0x1
80009fc0:	55555337          	lui	t1,0x55555
80009fc4:	55530313          	addi	t1,t1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80009fc8:	0062f2b3          	and	t0,t0,t1
80009fcc:	405686b3          	sub	a3,a3,t0
80009fd0:	333332b7          	lui	t0,0x33333
80009fd4:	33328293          	addi	t0,t0,819 # 33333333 <.Lline_table_start2+0x33331f85>
80009fd8:	0056f333          	and	t1,a3,t0
80009fdc:	0026d693          	srli	a3,a3,0x2
80009fe0:	0056f6b3          	and	a3,a3,t0
80009fe4:	00d306b3          	add	a3,t1,a3
80009fe8:	0046d293          	srli	t0,a3,0x4
80009fec:	005686b3          	add	a3,a3,t0
80009ff0:	0f0f12b7          	lui	t0,0xf0f1
80009ff4:	f0f28293          	addi	t0,t0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80009ff8:	0056f6b3          	and	a3,a3,t0
80009ffc:	00869293          	slli	t0,a3,0x8
8000a000:	005686b3          	add	a3,a3,t0
8000a004:	01069293          	slli	t0,a3,0x10
8000a008:	005686b3          	add	a3,a3,t0
8000a00c:	0186d693          	srli	a3,a3,0x18
8000a010:	0240006f          	j	8000a034 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x148>
8000a014:	26c69063          	bne	a3,a2,8000a274 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x388>
8000a018:	00a5c5b3          	xor	a1,a1,a0
8000a01c:	80000637          	lui	a2,0x80000
8000a020:	00c59463          	bne	a1,a2,8000a028 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x13c>
8000a024:	7fc00537          	lui	a0,0x7fc00
8000a028:	00050613          	mv	a2,a0
8000a02c:	2500006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a030:	02000693          	li	a3,32
8000a034:	01868293          	addi	t0,a3,24
8000a038:	00900313          	li	t1,9
8000a03c:	40d306b3          	sub	a3,t1,a3
8000a040:	005797b3          	sll	a5,a5,t0
8000a044:	00c8f8b3          	and	a7,a7,a2
8000a048:	0a081063          	bnez	a6,8000a0e8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1fc>
8000a04c:	08088463          	beqz	a7,8000a0d4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1e8>
8000a050:	0018d813          	srli	a6,a7,0x1
8000a054:	0108e833          	or	a6,a7,a6
8000a058:	00285293          	srli	t0,a6,0x2
8000a05c:	00586833          	or	a6,a6,t0
8000a060:	00485293          	srli	t0,a6,0x4
8000a064:	00586833          	or	a6,a6,t0
8000a068:	00885293          	srli	t0,a6,0x8
8000a06c:	00586833          	or	a6,a6,t0
8000a070:	01085293          	srli	t0,a6,0x10
8000a074:	00586833          	or	a6,a6,t0
8000a078:	fff84813          	not	a6,a6
8000a07c:	00185293          	srli	t0,a6,0x1
8000a080:	55555337          	lui	t1,0x55555
8000a084:	55530313          	addi	t1,t1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a088:	0062f2b3          	and	t0,t0,t1
8000a08c:	40580833          	sub	a6,a6,t0
8000a090:	333332b7          	lui	t0,0x33333
8000a094:	33328293          	addi	t0,t0,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a098:	00587333          	and	t1,a6,t0
8000a09c:	00285813          	srli	a6,a6,0x2
8000a0a0:	00587833          	and	a6,a6,t0
8000a0a4:	01030833          	add	a6,t1,a6
8000a0a8:	00485293          	srli	t0,a6,0x4
8000a0ac:	00580833          	add	a6,a6,t0
8000a0b0:	0f0f12b7          	lui	t0,0xf0f1
8000a0b4:	f0f28293          	addi	t0,t0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a0b8:	00587833          	and	a6,a6,t0
8000a0bc:	00881293          	slli	t0,a6,0x8
8000a0c0:	00580833          	add	a6,a6,t0
8000a0c4:	01081293          	slli	t0,a6,0x10
8000a0c8:	00580833          	add	a6,a6,t0
8000a0cc:	01885813          	srli	a6,a6,0x18
8000a0d0:	0080006f          	j	8000a0d8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1ec>
8000a0d4:	02000813          	li	a6,32
8000a0d8:	01880293          	addi	t0,a6,24
8000a0dc:	00900313          	li	t1,9
8000a0e0:	41030833          	sub	a6,t1,a6
8000a0e4:	005898b3          	sll	a7,a7,t0
8000a0e8:	800002b7          	lui	t0,0x80000
8000a0ec:	00a5c5b3          	xor	a1,a1,a0
8000a0f0:	00379793          	slli	a5,a5,0x3
8000a0f4:	04000337          	lui	t1,0x4000
8000a0f8:	00389893          	slli	a7,a7,0x3
8000a0fc:	0068e533          	or	a0,a7,t1
8000a100:	01069663          	bne	a3,a6,8000a10c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x220>
8000a104:	00050813          	mv	a6,a0
8000a108:	0280006f          	j	8000a130 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x244>
8000a10c:	410688b3          	sub	a7,a3,a6
8000a110:	02000393          	li	t2,32
8000a114:	00100813          	li	a6,1
8000a118:	0078fc63          	bgeu	a7,t2,8000a130 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x244>
8000a11c:	41100833          	neg	a6,a7
8000a120:	01051833          	sll	a6,a0,a6
8000a124:	01003833          	snez	a6,a6
8000a128:	01155533          	srl	a0,a0,a7
8000a12c:	01056833          	or	a6,a0,a6
8000a130:	00577533          	and	a0,a4,t0
8000a134:	0067e733          	or	a4,a5,t1
8000a138:	0205c263          	bltz	a1,8000a15c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x270>
8000a13c:	00e805b3          	add	a1,a6,a4
8000a140:	00459713          	slli	a4,a1,0x4
8000a144:	0a075c63          	bgez	a4,8000a1fc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a148:	00187713          	andi	a4,a6,1
8000a14c:	0015d593          	srli	a1,a1,0x1
8000a150:	00e5e5b3          	or	a1,a1,a4
8000a154:	00168693          	addi	a3,a3,1
8000a158:	0a40006f          	j	8000a1fc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a15c:	410705b3          	sub	a1,a4,a6
8000a160:	10058663          	beqz	a1,8000a26c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x380>
8000a164:	01a5d713          	srli	a4,a1,0x1a
8000a168:	08071a63          	bnez	a4,8000a1fc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a16c:	0015d713          	srli	a4,a1,0x1
8000a170:	00e5e733          	or	a4,a1,a4
8000a174:	00275793          	srli	a5,a4,0x2
8000a178:	00f76733          	or	a4,a4,a5
8000a17c:	00475793          	srli	a5,a4,0x4
8000a180:	00f76733          	or	a4,a4,a5
8000a184:	00875793          	srli	a5,a4,0x8
8000a188:	00f76733          	or	a4,a4,a5
8000a18c:	01075793          	srli	a5,a4,0x10
8000a190:	00f76733          	or	a4,a4,a5
8000a194:	fff74713          	not	a4,a4
8000a198:	00175793          	srli	a5,a4,0x1
8000a19c:	55555837          	lui	a6,0x55555
8000a1a0:	55580813          	addi	a6,a6,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a1a4:	0107f7b3          	and	a5,a5,a6
8000a1a8:	40f70733          	sub	a4,a4,a5
8000a1ac:	333337b7          	lui	a5,0x33333
8000a1b0:	33378793          	addi	a5,a5,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a1b4:	00f77833          	and	a6,a4,a5
8000a1b8:	00275713          	srli	a4,a4,0x2
8000a1bc:	00f77733          	and	a4,a4,a5
8000a1c0:	00e80733          	add	a4,a6,a4
8000a1c4:	00475793          	srli	a5,a4,0x4
8000a1c8:	00f70733          	add	a4,a4,a5
8000a1cc:	0f0f17b7          	lui	a5,0xf0f1
8000a1d0:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a1d4:	00f77733          	and	a4,a4,a5
8000a1d8:	00871793          	slli	a5,a4,0x8
8000a1dc:	00f70733          	add	a4,a4,a5
8000a1e0:	01071793          	slli	a5,a4,0x10
8000a1e4:	00f70733          	add	a4,a4,a5
8000a1e8:	01875713          	srli	a4,a4,0x18
8000a1ec:	ffb70713          	addi	a4,a4,-5
8000a1f0:	00e595b3          	sll	a1,a1,a4
8000a1f4:	40e686b3          	sub	a3,a3,a4
8000a1f8:	0180006f          	j	8000a210 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x324>
8000a1fc:	0fe00713          	li	a4,254
8000a200:	00d75863          	bge	a4,a3,8000a210 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x324>
8000a204:	7f800637          	lui	a2,0x7f800
8000a208:	00c56633          	or	a2,a0,a2
8000a20c:	0700006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a210:	02d04263          	bgtz	a3,8000a234 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x348>
8000a214:	00100713          	li	a4,1
8000a218:	40d70733          	sub	a4,a4,a3
8000a21c:	fff68693          	addi	a3,a3,-1
8000a220:	00d596b3          	sll	a3,a1,a3
8000a224:	00d036b3          	snez	a3,a3
8000a228:	00e5d5b3          	srl	a1,a1,a4
8000a22c:	00d5e5b3          	or	a1,a1,a3
8000a230:	00000693          	li	a3,0
8000a234:	0075f713          	andi	a4,a1,7
8000a238:	0035d593          	srli	a1,a1,0x3
8000a23c:	00c5f633          	and	a2,a1,a2
8000a240:	01769693          	slli	a3,a3,0x17
8000a244:	00a6e6b3          	or	a3,a3,a0
8000a248:	00400513          	li	a0,4
8000a24c:	00d66633          	or	a2,a2,a3
8000a250:	00e57663          	bgeu	a0,a4,8000a25c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x370>
8000a254:	00160613          	addi	a2,a2,1 # 7f800001 <.Lline_table_start2+0x7f7fec53>
8000a258:	0240006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a25c:	02a71063          	bne	a4,a0,8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a260:	0015f593          	andi	a1,a1,1
8000a264:	00b60633          	add	a2,a2,a1
8000a268:	0140006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a26c:	00000613          	li	a2,0
8000a270:	00c0006f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a274:	00c71e63          	bne	a4,a2,8000a290 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x3a4>
8000a278:	00058613          	mv	a2,a1
8000a27c:	00060513          	mv	a0,a2
8000a280:	00c12083          	lw	ra,12(sp)
8000a284:	00812403          	lw	s0,8(sp)
8000a288:	01010113          	addi	sp,sp,16
8000a28c:	00008067          	ret
8000a290:	00068863          	beqz	a3,8000a2a0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x3b4>
8000a294:	00050613          	mv	a2,a0
8000a298:	c80716e3          	bnez	a4,80009f24 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x38>
8000a29c:	fe1ff06f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a2a0:	00058613          	mv	a2,a1
8000a2a4:	fc071ce3          	bnez	a4,8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a2a8:	00a5f633          	and	a2,a1,a0
8000a2ac:	fd1ff06f          	j	8000a27c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>

8000a2b0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE>:
8000a2b0:	fd010113          	addi	sp,sp,-48
8000a2b4:	02112623          	sw	ra,44(sp)
8000a2b8:	02812423          	sw	s0,40(sp)
8000a2bc:	02912223          	sw	s1,36(sp)
8000a2c0:	03212023          	sw	s2,32(sp)
8000a2c4:	01312e23          	sw	s3,28(sp)
8000a2c8:	01412c23          	sw	s4,24(sp)
8000a2cc:	01512a23          	sw	s5,20(sp)
8000a2d0:	01612823          	sw	s6,16(sp)
8000a2d4:	01712623          	sw	s7,12(sp)
8000a2d8:	03010413          	addi	s0,sp,48
8000a2dc:	00068993          	mv	s3,a3
8000a2e0:	00058913          	mv	s2,a1
8000a2e4:	00050493          	mv	s1,a0
8000a2e8:	0a068e63          	beqz	a3,8000a3a4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xf4>
8000a2ec:	0a071c63          	bnez	a4,8000a3a4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xf4>
8000a2f0:	1e060263          	beqz	a2,8000a4d4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x224>
8000a2f4:	21367863          	bgeu	a2,s3,8000a504 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x254>
8000a2f8:	0109d693          	srli	a3,s3,0x10
8000a2fc:	00c6b533          	sltu	a0,a3,a2
8000a300:	00154593          	xori	a1,a0,1
8000a304:	00098513          	mv	a0,s3
8000a308:	00c6e463          	bltu	a3,a2,8000a310 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x60>
8000a30c:	00068513          	mv	a0,a3
8000a310:	00459593          	slli	a1,a1,0x4
8000a314:	00855793          	srli	a5,a0,0x8
8000a318:	00c7b6b3          	sltu	a3,a5,a2
8000a31c:	0016c693          	xori	a3,a3,1
8000a320:	00c7e463          	bltu	a5,a2,8000a328 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x78>
8000a324:	00078513          	mv	a0,a5
8000a328:	00369693          	slli	a3,a3,0x3
8000a32c:	00b6e5b3          	or	a1,a3,a1
8000a330:	00455793          	srli	a5,a0,0x4
8000a334:	00c7b6b3          	sltu	a3,a5,a2
8000a338:	0016c693          	xori	a3,a3,1
8000a33c:	00c7e463          	bltu	a5,a2,8000a344 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x94>
8000a340:	00078513          	mv	a0,a5
8000a344:	00269693          	slli	a3,a3,0x2
8000a348:	00d5e5b3          	or	a1,a1,a3
8000a34c:	00255793          	srli	a5,a0,0x2
8000a350:	00c7b6b3          	sltu	a3,a5,a2
8000a354:	0016c693          	xori	a3,a3,1
8000a358:	00c7e463          	bltu	a5,a2,8000a360 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xb0>
8000a35c:	00078513          	mv	a0,a5
8000a360:	00169693          	slli	a3,a3,0x1
8000a364:	00155513          	srli	a0,a0,0x1
8000a368:	00c53533          	sltu	a0,a0,a2
8000a36c:	00154513          	xori	a0,a0,1
8000a370:	00a6e533          	or	a0,a3,a0
8000a374:	00a5e533          	or	a0,a1,a0
8000a378:	1c051a63          	bnez	a0,8000a54c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x29c>
8000a37c:	01f00593          	li	a1,31
8000a380:	fe058793          	addi	a5,a1,-32
8000a384:	00b996b3          	sll	a3,s3,a1
8000a388:	1c07dc63          	bgez	a5,8000a560 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2b0>
8000a38c:	00b71533          	sll	a0,a4,a1
8000a390:	fff5c713          	not	a4,a1
8000a394:	0019d813          	srli	a6,s3,0x1
8000a398:	00e85733          	srl	a4,a6,a4
8000a39c:	00e56533          	or	a0,a0,a4
8000a3a0:	1c40006f          	j	8000a564 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2b4>
8000a3a4:	00e60a63          	beq	a2,a4,8000a3b8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x108>
8000a3a8:	00e63533          	sltu	a0,a2,a4
8000a3ac:	00000a93          	li	s5,0
8000a3b0:	00050a63          	beqz	a0,8000a3c4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x114>
8000a3b4:	10c0006f          	j	8000a4c0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a3b8:	01393533          	sltu	a0,s2,s3
8000a3bc:	00000a93          	li	s5,0
8000a3c0:	10051063          	bnez	a0,8000a4c0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a3c4:	0e060e63          	beqz	a2,8000a4c0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a3c8:	01065693          	srli	a3,a2,0x10
8000a3cc:	00e6b533          	sltu	a0,a3,a4
8000a3d0:	00154593          	xori	a1,a0,1
8000a3d4:	00060513          	mv	a0,a2
8000a3d8:	00e6e463          	bltu	a3,a4,8000a3e0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x130>
8000a3dc:	00068513          	mv	a0,a3
8000a3e0:	00459593          	slli	a1,a1,0x4
8000a3e4:	00855793          	srli	a5,a0,0x8
8000a3e8:	00e7b6b3          	sltu	a3,a5,a4
8000a3ec:	0016c693          	xori	a3,a3,1
8000a3f0:	00e7e463          	bltu	a5,a4,8000a3f8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x148>
8000a3f4:	00078513          	mv	a0,a5
8000a3f8:	00369693          	slli	a3,a3,0x3
8000a3fc:	00b6e5b3          	or	a1,a3,a1
8000a400:	00455793          	srli	a5,a0,0x4
8000a404:	00e7b6b3          	sltu	a3,a5,a4
8000a408:	0016c693          	xori	a3,a3,1
8000a40c:	00e7e463          	bltu	a5,a4,8000a414 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x164>
8000a410:	00078513          	mv	a0,a5
8000a414:	00269693          	slli	a3,a3,0x2
8000a418:	00d5e5b3          	or	a1,a1,a3
8000a41c:	00255793          	srli	a5,a0,0x2
8000a420:	00e7b6b3          	sltu	a3,a5,a4
8000a424:	0016c693          	xori	a3,a3,1
8000a428:	00e7e463          	bltu	a5,a4,8000a430 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x180>
8000a42c:	00078513          	mv	a0,a5
8000a430:	00000a93          	li	s5,0
8000a434:	00169693          	slli	a3,a3,0x1
8000a438:	00155513          	srli	a0,a0,0x1
8000a43c:	00e53533          	sltu	a0,a0,a4
8000a440:	00154513          	xori	a0,a0,1
8000a444:	00a6e533          	or	a0,a3,a0
8000a448:	00a5e5b3          	or	a1,a1,a0
8000a44c:	01f5c513          	xori	a0,a1,31
8000a450:	0019d693          	srli	a3,s3,0x1
8000a454:	00a6d533          	srl	a0,a3,a0
8000a458:	00b716b3          	sll	a3,a4,a1
8000a45c:	00a6e533          	or	a0,a3,a0
8000a460:	00100693          	li	a3,1
8000a464:	00b696b3          	sll	a3,a3,a1
8000a468:	00b997b3          	sll	a5,s3,a1
8000a46c:	0180006f          	j	8000a484 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1d4>
8000a470:	0017d793          	srli	a5,a5,0x1
8000a474:	01f51593          	slli	a1,a0,0x1f
8000a478:	00b7e7b3          	or	a5,a5,a1
8000a47c:	00155513          	srli	a0,a0,0x1
8000a480:	0016d693          	srli	a3,a3,0x1
8000a484:	00f935b3          	sltu	a1,s2,a5
8000a488:	40a60833          	sub	a6,a2,a0
8000a48c:	40b805b3          	sub	a1,a6,a1
8000a490:	fe05c0e3          	bltz	a1,8000a470 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1c0>
8000a494:	40f90933          	sub	s2,s2,a5
8000a498:	00e58a63          	beq	a1,a4,8000a4ac <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1fc>
8000a49c:	00e5b633          	sltu	a2,a1,a4
8000a4a0:	0156eab3          	or	s5,a3,s5
8000a4a4:	00060a63          	beqz	a2,8000a4b8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x208>
8000a4a8:	0240006f          	j	8000a4cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x21c>
8000a4ac:	01393633          	sltu	a2,s2,s3
8000a4b0:	0156eab3          	or	s5,a3,s5
8000a4b4:	00061c63          	bnez	a2,8000a4cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x21c>
8000a4b8:	00058613          	mv	a2,a1
8000a4bc:	fb5ff06f          	j	8000a470 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1c0>
8000a4c0:	000a8a13          	mv	s4,s5
8000a4c4:	00060593          	mv	a1,a2
8000a4c8:	11c0006f          	j	8000a5e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a4cc:	00000a13          	li	s4,0
8000a4d0:	1140006f          	j	8000a5e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a4d4:	00090513          	mv	a0,s2
8000a4d8:	00098593          	mv	a1,s3
8000a4dc:	00000097          	auipc	ra,0x0
8000a4e0:	3cc080e7          	jalr	972(ra) # 8000a8a8 <__udivsi3>
8000a4e4:	00050a93          	mv	s5,a0
8000a4e8:	00098593          	mv	a1,s3
8000a4ec:	fffff097          	auipc	ra,0xfffff
8000a4f0:	7fc080e7          	jalr	2044(ra) # 80009ce8 <__mulsi3>
8000a4f4:	00000a13          	li	s4,0
8000a4f8:	00000593          	li	a1,0
8000a4fc:	40a90933          	sub	s2,s2,a0
8000a500:	0e40006f          	j	8000a5e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a504:	11361e63          	bne	a2,s3,8000a620 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x370>
8000a508:	00090513          	mv	a0,s2
8000a50c:	00060593          	mv	a1,a2
8000a510:	00060993          	mv	s3,a2
8000a514:	00000097          	auipc	ra,0x0
8000a518:	394080e7          	jalr	916(ra) # 8000a8a8 <__udivsi3>
8000a51c:	00050a13          	mv	s4,a0
8000a520:	00098593          	mv	a1,s3
8000a524:	fffff097          	auipc	ra,0xfffff
8000a528:	7c4080e7          	jalr	1988(ra) # 80009ce8 <__mulsi3>
8000a52c:	00000593          	li	a1,0
8000a530:	40a90933          	sub	s2,s2,a0
8000a534:	01403533          	snez	a0,s4
8000a538:	fffa0a13          	addi	s4,s4,-1
8000a53c:	001a0a93          	addi	s5,s4,1
8000a540:	001aba13          	seqz	s4,s5
8000a544:	01450a33          	add	s4,a0,s4
8000a548:	09c0006f          	j	8000a5e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a54c:	02000593          	li	a1,32
8000a550:	40a585b3          	sub	a1,a1,a0
8000a554:	fe058793          	addi	a5,a1,-32
8000a558:	00b996b3          	sll	a3,s3,a1
8000a55c:	e207c8e3          	bltz	a5,8000a38c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xdc>
8000a560:	00068513          	mv	a0,a3
8000a564:	00000b13          	li	s6,0
8000a568:	41f7d793          	srai	a5,a5,0x1f
8000a56c:	00d7f6b3          	and	a3,a5,a3
8000a570:	00100713          	li	a4,1
8000a574:	00b715b3          	sll	a1,a4,a1
8000a578:	0180006f          	j	8000a590 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2e0>
8000a57c:	0016d693          	srli	a3,a3,0x1
8000a580:	01f51713          	slli	a4,a0,0x1f
8000a584:	00e6e6b3          	or	a3,a3,a4
8000a588:	00155513          	srli	a0,a0,0x1
8000a58c:	0015d593          	srli	a1,a1,0x1
8000a590:	00d93733          	sltu	a4,s2,a3
8000a594:	40a607b3          	sub	a5,a2,a0
8000a598:	40e78733          	sub	a4,a5,a4
8000a59c:	fe0740e3          	bltz	a4,8000a57c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2cc>
8000a5a0:	40d90933          	sub	s2,s2,a3
8000a5a4:	0165eb33          	or	s6,a1,s6
8000a5a8:	00070663          	beqz	a4,8000a5b4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x304>
8000a5ac:	00070613          	mv	a2,a4
8000a5b0:	fcdff06f          	j	8000a57c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2cc>
8000a5b4:	00090513          	mv	a0,s2
8000a5b8:	00098593          	mv	a1,s3
8000a5bc:	00000097          	auipc	ra,0x0
8000a5c0:	2ec080e7          	jalr	748(ra) # 8000a8a8 <__udivsi3>
8000a5c4:	00050a93          	mv	s5,a0
8000a5c8:	00098593          	mv	a1,s3
8000a5cc:	fffff097          	auipc	ra,0xfffff
8000a5d0:	71c080e7          	jalr	1820(ra) # 80009ce8 <__mulsi3>
8000a5d4:	00000a13          	li	s4,0
8000a5d8:	00000593          	li	a1,0
8000a5dc:	40a90933          	sub	s2,s2,a0
8000a5e0:	016aeab3          	or	s5,s5,s6
8000a5e4:	0154a023          	sw	s5,0(s1)
8000a5e8:	0144a223          	sw	s4,4(s1)
8000a5ec:	0124a423          	sw	s2,8(s1)
8000a5f0:	00b4a623          	sw	a1,12(s1)
8000a5f4:	02c12083          	lw	ra,44(sp)
8000a5f8:	02812403          	lw	s0,40(sp)
8000a5fc:	02412483          	lw	s1,36(sp)
8000a600:	02012903          	lw	s2,32(sp)
8000a604:	01c12983          	lw	s3,28(sp)
8000a608:	01812a03          	lw	s4,24(sp)
8000a60c:	01412a83          	lw	s5,20(sp)
8000a610:	01012b03          	lw	s6,16(sp)
8000a614:	00c12b83          	lw	s7,12(sp)
8000a618:	03010113          	addi	sp,sp,48
8000a61c:	00008067          	ret
8000a620:	00070a93          	mv	s5,a4
8000a624:	0109db13          	srli	s6,s3,0x10
8000a628:	00060513          	mv	a0,a2
8000a62c:	00098593          	mv	a1,s3
8000a630:	00060b93          	mv	s7,a2
8000a634:	00000097          	auipc	ra,0x0
8000a638:	274080e7          	jalr	628(ra) # 8000a8a8 <__udivsi3>
8000a63c:	00050a13          	mv	s4,a0
8000a640:	00098593          	mv	a1,s3
8000a644:	fffff097          	auipc	ra,0xfffff
8000a648:	6a4080e7          	jalr	1700(ra) # 80009ce8 <__mulsi3>
8000a64c:	40ab85b3          	sub	a1,s7,a0
8000a650:	060b1e63          	bnez	s6,8000a6cc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x41c>
8000a654:	01095b13          	srli	s6,s2,0x10
8000a658:	01059593          	slli	a1,a1,0x10
8000a65c:	0165e533          	or	a0,a1,s6
8000a660:	00098593          	mv	a1,s3
8000a664:	00000097          	auipc	ra,0x0
8000a668:	244080e7          	jalr	580(ra) # 8000a8a8 <__udivsi3>
8000a66c:	00050a93          	mv	s5,a0
8000a670:	01091913          	slli	s2,s2,0x10
8000a674:	01095913          	srli	s2,s2,0x10
8000a678:	00098593          	mv	a1,s3
8000a67c:	fffff097          	auipc	ra,0xfffff
8000a680:	66c080e7          	jalr	1644(ra) # 80009ce8 <__mulsi3>
8000a684:	40ab0533          	sub	a0,s6,a0
8000a688:	01051513          	slli	a0,a0,0x10
8000a68c:	01256933          	or	s2,a0,s2
8000a690:	00090513          	mv	a0,s2
8000a694:	00098593          	mv	a1,s3
8000a698:	00000097          	auipc	ra,0x0
8000a69c:	210080e7          	jalr	528(ra) # 8000a8a8 <__udivsi3>
8000a6a0:	00050b13          	mv	s6,a0
8000a6a4:	00098593          	mv	a1,s3
8000a6a8:	fffff097          	auipc	ra,0xfffff
8000a6ac:	640080e7          	jalr	1600(ra) # 80009ce8 <__mulsi3>
8000a6b0:	00000593          	li	a1,0
8000a6b4:	40a90933          	sub	s2,s2,a0
8000a6b8:	010a9513          	slli	a0,s5,0x10
8000a6bc:	010ad613          	srli	a2,s5,0x10
8000a6c0:	01466a33          	or	s4,a2,s4
8000a6c4:	01656ab3          	or	s5,a0,s6
8000a6c8:	f1dff06f          	j	8000a5e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a6cc:	000a8513          	mv	a0,s5
8000a6d0:	01558663          	beq	a1,s5,8000a6dc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x42c>
8000a6d4:	00a5b633          	sltu	a2,a1,a0
8000a6d8:	0080006f          	j	8000a6e0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x430>
8000a6dc:	01393633          	sltu	a2,s2,s3
8000a6e0:	00060663          	beqz	a2,8000a6ec <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x43c>
8000a6e4:	00000a93          	li	s5,0
8000a6e8:	efdff06f          	j	8000a5e4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a6ec:	00000b13          	li	s6,0
8000a6f0:	0019d613          	srli	a2,s3,0x1
8000a6f4:	01f51513          	slli	a0,a0,0x1f
8000a6f8:	00c56533          	or	a0,a0,a2
8000a6fc:	01f99693          	slli	a3,s3,0x1f
8000a700:	80000637          	lui	a2,0x80000
8000a704:	0180006f          	j	8000a71c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x46c>
8000a708:	0016d693          	srli	a3,a3,0x1
8000a70c:	01f51713          	slli	a4,a0,0x1f
8000a710:	00e6e6b3          	or	a3,a3,a4
8000a714:	00155513          	srli	a0,a0,0x1
8000a718:	00165613          	srli	a2,a2,0x1
8000a71c:	00d93733          	sltu	a4,s2,a3
8000a720:	40a587b3          	sub	a5,a1,a0
8000a724:	40e78733          	sub	a4,a5,a4
8000a728:	fe0740e3          	bltz	a4,8000a708 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x458>
8000a72c:	40d90933          	sub	s2,s2,a3
8000a730:	01666b33          	or	s6,a2,s6
8000a734:	00070663          	beqz	a4,8000a740 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x490>
8000a738:	00070593          	mv	a1,a4
8000a73c:	fcdff06f          	j	8000a708 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x458>
8000a740:	00090513          	mv	a0,s2
8000a744:	00098593          	mv	a1,s3
8000a748:	00000097          	auipc	ra,0x0
8000a74c:	160080e7          	jalr	352(ra) # 8000a8a8 <__udivsi3>
8000a750:	00050a93          	mv	s5,a0
8000a754:	00098593          	mv	a1,s3
8000a758:	fffff097          	auipc	ra,0xfffff
8000a75c:	590080e7          	jalr	1424(ra) # 80009ce8 <__mulsi3>
8000a760:	e79ff06f          	j	8000a5d8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x328>

8000a764 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>:
8000a764:	ff010113          	addi	sp,sp,-16
8000a768:	00112623          	sw	ra,12(sp)
8000a76c:	00812423          	sw	s0,8(sp)
8000a770:	01010413          	addi	s0,sp,16
8000a774:	00050613          	mv	a2,a0
8000a778:	00b57663          	bgeu	a0,a1,8000a784 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x20>
8000a77c:	00000513          	li	a0,0
8000a780:	1140006f          	j	8000a894 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000a784:	01065713          	srli	a4,a2,0x10
8000a788:	00b73533          	sltu	a0,a4,a1
8000a78c:	00154693          	xori	a3,a0,1
8000a790:	00060513          	mv	a0,a2
8000a794:	00b76463          	bltu	a4,a1,8000a79c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x38>
8000a798:	00070513          	mv	a0,a4
8000a79c:	00469693          	slli	a3,a3,0x4
8000a7a0:	00855793          	srli	a5,a0,0x8
8000a7a4:	00b7b733          	sltu	a4,a5,a1
8000a7a8:	00174713          	xori	a4,a4,1
8000a7ac:	00b7e463          	bltu	a5,a1,8000a7b4 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x50>
8000a7b0:	00078513          	mv	a0,a5
8000a7b4:	00371713          	slli	a4,a4,0x3
8000a7b8:	00d766b3          	or	a3,a4,a3
8000a7bc:	00455793          	srli	a5,a0,0x4
8000a7c0:	00b7b733          	sltu	a4,a5,a1
8000a7c4:	00174713          	xori	a4,a4,1
8000a7c8:	00b7e463          	bltu	a5,a1,8000a7d0 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x6c>
8000a7cc:	00078513          	mv	a0,a5
8000a7d0:	00271713          	slli	a4,a4,0x2
8000a7d4:	00e6e6b3          	or	a3,a3,a4
8000a7d8:	00255793          	srli	a5,a0,0x2
8000a7dc:	00b7b733          	sltu	a4,a5,a1
8000a7e0:	00174713          	xori	a4,a4,1
8000a7e4:	00b7e463          	bltu	a5,a1,8000a7ec <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x88>
8000a7e8:	00078513          	mv	a0,a5
8000a7ec:	00171713          	slli	a4,a4,0x1
8000a7f0:	00155513          	srli	a0,a0,0x1
8000a7f4:	00b53533          	sltu	a0,a0,a1
8000a7f8:	00154513          	xori	a0,a0,1
8000a7fc:	00a76533          	or	a0,a4,a0
8000a800:	00a6e6b3          	or	a3,a3,a0
8000a804:	00d59733          	sll	a4,a1,a3
8000a808:	40e60633          	sub	a2,a2,a4
8000a80c:	00100513          	li	a0,1
8000a810:	00d51533          	sll	a0,a0,a3
8000a814:	08b66063          	bltu	a2,a1,8000a894 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000a818:	00074663          	bltz	a4,8000a824 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xc0>
8000a81c:	00050793          	mv	a5,a0
8000a820:	0380006f          	j	8000a858 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xf4>
8000a824:	00175713          	srli	a4,a4,0x1
8000a828:	fff68693          	addi	a3,a3,-1
8000a82c:	00100793          	li	a5,1
8000a830:	00d797b3          	sll	a5,a5,a3
8000a834:	40e60833          	sub	a6,a2,a4
8000a838:	00082893          	slti	a7,a6,0
8000a83c:	fff88893          	addi	a7,a7,-1
8000a840:	00f8f8b3          	and	a7,a7,a5
8000a844:	00085463          	bgez	a6,8000a84c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xe8>
8000a848:	00060813          	mv	a6,a2
8000a84c:	00a8e533          	or	a0,a7,a0
8000a850:	00080613          	mv	a2,a6
8000a854:	04b86063          	bltu	a6,a1,8000a894 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000a858:	fff78793          	addi	a5,a5,-1
8000a85c:	02068663          	beqz	a3,8000a888 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x124>
8000a860:	00068593          	mv	a1,a3
8000a864:	00c0006f          	j	8000a870 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x10c>
8000a868:	fff58593          	addi	a1,a1,-1
8000a86c:	00058e63          	beqz	a1,8000a888 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x124>
8000a870:	00161613          	slli	a2,a2,0x1
8000a874:	40e60833          	sub	a6,a2,a4
8000a878:	00180813          	addi	a6,a6,1
8000a87c:	fe0846e3          	bltz	a6,8000a868 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x104>
8000a880:	00080613          	mv	a2,a6
8000a884:	fe5ff06f          	j	8000a868 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x104>
8000a888:	00f677b3          	and	a5,a2,a5
8000a88c:	00a7e533          	or	a0,a5,a0
8000a890:	00d65633          	srl	a2,a2,a3
8000a894:	00060593          	mv	a1,a2
8000a898:	00c12083          	lw	ra,12(sp)
8000a89c:	00812403          	lw	s0,8(sp)
8000a8a0:	01010113          	addi	sp,sp,16
8000a8a4:	00008067          	ret

8000a8a8 <__udivsi3>:
8000a8a8:	ff010113          	addi	sp,sp,-16
8000a8ac:	00112623          	sw	ra,12(sp)
8000a8b0:	00812423          	sw	s0,8(sp)
8000a8b4:	01010413          	addi	s0,sp,16
8000a8b8:	00c12083          	lw	ra,12(sp)
8000a8bc:	00812403          	lw	s0,8(sp)
8000a8c0:	01010113          	addi	sp,sp,16
8000a8c4:	00000317          	auipc	t1,0x0
8000a8c8:	ea030067          	jr	-352(t1) # 8000a764 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>

8000a8cc <__udivdi3>:
8000a8cc:	fe010113          	addi	sp,sp,-32
8000a8d0:	00112e23          	sw	ra,28(sp)
8000a8d4:	00812c23          	sw	s0,24(sp)
8000a8d8:	02010413          	addi	s0,sp,32
8000a8dc:	00068713          	mv	a4,a3
8000a8e0:	00060693          	mv	a3,a2
8000a8e4:	00058613          	mv	a2,a1
8000a8e8:	00050593          	mv	a1,a0
8000a8ec:	fe840513          	addi	a0,s0,-24
8000a8f0:	00000097          	auipc	ra,0x0
8000a8f4:	9c0080e7          	jalr	-1600(ra) # 8000a2b0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE>
8000a8f8:	fec42583          	lw	a1,-20(s0)
8000a8fc:	fe842503          	lw	a0,-24(s0)
8000a900:	01c12083          	lw	ra,28(sp)
8000a904:	01812403          	lw	s0,24(sp)
8000a908:	02010113          	addi	sp,sp,32
8000a90c:	00008067          	ret

8000a910 <__mulsf3>:
8000a910:	ff010113          	addi	sp,sp,-16
8000a914:	00112623          	sw	ra,12(sp)
8000a918:	00812423          	sw	s0,8(sp)
8000a91c:	01010413          	addi	s0,sp,16
8000a920:	00c12083          	lw	ra,12(sp)
8000a924:	00812403          	lw	s0,8(sp)
8000a928:	01010113          	addi	sp,sp,16
8000a92c:	00000317          	auipc	t1,0x0
8000a930:	00830067          	jr	8(t1) # 8000a934 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E>

8000a934 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E>:
8000a934:	fe010113          	addi	sp,sp,-32
8000a938:	00112e23          	sw	ra,28(sp)
8000a93c:	00812c23          	sw	s0,24(sp)
8000a940:	00912a23          	sw	s1,20(sp)
8000a944:	01212823          	sw	s2,16(sp)
8000a948:	01312623          	sw	s3,12(sp)
8000a94c:	01412423          	sw	s4,8(sp)
8000a950:	01512223          	sw	s5,4(sp)
8000a954:	02010413          	addi	s0,sp,32
8000a958:	00800937          	lui	s2,0x800
8000a95c:	fff90913          	addi	s2,s2,-1 # 7fffff <.Lline_table_start2+0x7fec51>
8000a960:	00151613          	slli	a2,a0,0x1
8000a964:	01865993          	srli	s3,a2,0x18
8000a968:	00159613          	slli	a2,a1,0x1
8000a96c:	01865a13          	srli	s4,a2,0x18
8000a970:	00a5c4b3          	xor	s1,a1,a0
8000a974:	80000737          	lui	a4,0x80000
8000a978:	00e4f4b3          	and	s1,s1,a4
8000a97c:	01257633          	and	a2,a0,s2
8000a980:	f0198813          	addi	a6,s3,-255
8000a984:	f0200793          	li	a5,-254
8000a988:	0125f6b3          	and	a3,a1,s2
8000a98c:	06f86263          	bltu	a6,a5,8000a9f0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xbc>
8000a990:	f01a0813          	addi	a6,s4,-255
8000a994:	04f86e63          	bltu	a6,a5,8000a9f0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xbc>
8000a998:	00000a93          	li	s5,0
8000a99c:	00800537          	lui	a0,0x800
8000a9a0:	00a66633          	or	a2,a2,a0
8000a9a4:	00869693          	slli	a3,a3,0x8
8000a9a8:	80000537          	lui	a0,0x80000
8000a9ac:	00a6e533          	or	a0,a3,a0
8000a9b0:	00000593          	li	a1,0
8000a9b4:	00000693          	li	a3,0
8000a9b8:	fffff097          	auipc	ra,0xfffff
8000a9bc:	378080e7          	jalr	888(ra) # 80009d30 <__muldi3>
8000a9c0:	013a09b3          	add	s3,s4,s3
8000a9c4:	00859613          	slli	a2,a1,0x8
8000a9c8:	01598ab3          	add	s5,s3,s5
8000a9cc:	04064063          	bltz	a2,8000aa0c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xd8>
8000a9d0:	f81a8613          	addi	a2,s5,-127
8000a9d4:	01f55693          	srli	a3,a0,0x1f
8000a9d8:	00159593          	slli	a1,a1,0x1
8000a9dc:	00d5e5b3          	or	a1,a1,a3
8000a9e0:	00151513          	slli	a0,a0,0x1
8000a9e4:	0fe00693          	li	a3,254
8000a9e8:	02c6d863          	bge	a3,a2,8000aa18 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xe4>
8000a9ec:	0700006f          	j	8000aa5c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000a9f0:	fff70793          	addi	a5,a4,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000a9f4:	00f57733          	and	a4,a0,a5
8000a9f8:	7f800837          	lui	a6,0x7f800
8000a9fc:	04e87063          	bgeu	a6,a4,8000aa3c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x108>
8000aa00:	004004b7          	lui	s1,0x400
8000aa04:	009564b3          	or	s1,a0,s1
8000aa08:	05c0006f          	j	8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aa0c:	f82a8613          	addi	a2,s5,-126
8000aa10:	0fe00693          	li	a3,254
8000aa14:	04c6c463          	blt	a3,a2,8000aa5c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000aa18:	06c05a63          	blez	a2,8000aa8c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x158>
8000aa1c:	0125f5b3          	and	a1,a1,s2
8000aa20:	01761613          	slli	a2,a2,0x17
8000aa24:	00b665b3          	or	a1,a2,a1
8000aa28:	80000637          	lui	a2,0x80000
8000aa2c:	0095e4b3          	or	s1,a1,s1
8000aa30:	08a67c63          	bgeu	a2,a0,8000aac8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x194>
8000aa34:	00148493          	addi	s1,s1,1 # 400001 <.Lline_table_start2+0x3fec53>
8000aa38:	02c0006f          	j	8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aa3c:	00f5f533          	and	a0,a1,a5
8000aa40:	00a87863          	bgeu	a6,a0,8000aa50 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x11c>
8000aa44:	004004b7          	lui	s1,0x400
8000aa48:	0095e4b3          	or	s1,a1,s1
8000aa4c:	0180006f          	j	8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aa50:	7f8005b7          	lui	a1,0x7f800
8000aa54:	08b71263          	bne	a4,a1,8000aad8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1a4>
8000aa58:	08050463          	beqz	a0,8000aae0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1ac>
8000aa5c:	7f800537          	lui	a0,0x7f800
8000aa60:	00a4e4b3          	or	s1,s1,a0
8000aa64:	00048513          	mv	a0,s1
8000aa68:	01c12083          	lw	ra,28(sp)
8000aa6c:	01812403          	lw	s0,24(sp)
8000aa70:	01412483          	lw	s1,20(sp)
8000aa74:	01012903          	lw	s2,16(sp)
8000aa78:	00c12983          	lw	s3,12(sp)
8000aa7c:	00812a03          	lw	s4,8(sp)
8000aa80:	00412a83          	lw	s5,4(sp)
8000aa84:	02010113          	addi	sp,sp,32
8000aa88:	00008067          	ret
8000aa8c:	00100693          	li	a3,1
8000aa90:	40c686b3          	sub	a3,a3,a2
8000aa94:	01f00713          	li	a4,31
8000aa98:	fcd766e3          	bltu	a4,a3,8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aa9c:	01f60613          	addi	a2,a2,31 # 8000001f <.bss_zero_loop+0xb>
8000aaa0:	00c51733          	sll	a4,a0,a2
8000aaa4:	00e03733          	snez	a4,a4
8000aaa8:	00c59633          	sll	a2,a1,a2
8000aaac:	00d55533          	srl	a0,a0,a3
8000aab0:	00c56533          	or	a0,a0,a2
8000aab4:	00e56533          	or	a0,a0,a4
8000aab8:	00d5d5b3          	srl	a1,a1,a3
8000aabc:	80000637          	lui	a2,0x80000
8000aac0:	0095e4b3          	or	s1,a1,s1
8000aac4:	f6a668e3          	bltu	a2,a0,8000aa34 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x100>
8000aac8:	f8c51ee3          	bne	a0,a2,8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aacc:	0015f593          	andi	a1,a1,1
8000aad0:	00b484b3          	add	s1,s1,a1
8000aad4:	f91ff06f          	j	8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aad8:	00b51863          	bne	a0,a1,8000aae8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1b4>
8000aadc:	f80710e3          	bnez	a4,8000aa5c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000aae0:	7fc004b7          	lui	s1,0x7fc00
8000aae4:	f81ff06f          	j	8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aae8:	f6070ee3          	beqz	a4,8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aaec:	f6050ce3          	beqz	a0,8000aa64 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aaf0:	01775713          	srli	a4,a4,0x17
8000aaf4:	08071663          	bnez	a4,8000ab80 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x24c>
8000aaf8:	08060863          	beqz	a2,8000ab88 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x254>
8000aafc:	00165593          	srli	a1,a2,0x1
8000ab00:	00b665b3          	or	a1,a2,a1
8000ab04:	0025d713          	srli	a4,a1,0x2
8000ab08:	00e5e5b3          	or	a1,a1,a4
8000ab0c:	0045d713          	srli	a4,a1,0x4
8000ab10:	00e5e5b3          	or	a1,a1,a4
8000ab14:	0085d713          	srli	a4,a1,0x8
8000ab18:	00e5e5b3          	or	a1,a1,a4
8000ab1c:	0105d713          	srli	a4,a1,0x10
8000ab20:	00e5e5b3          	or	a1,a1,a4
8000ab24:	fff5c593          	not	a1,a1
8000ab28:	0015d713          	srli	a4,a1,0x1
8000ab2c:	555557b7          	lui	a5,0x55555
8000ab30:	55578793          	addi	a5,a5,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000ab34:	00f77733          	and	a4,a4,a5
8000ab38:	40e585b3          	sub	a1,a1,a4
8000ab3c:	33333737          	lui	a4,0x33333
8000ab40:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000ab44:	00e5f7b3          	and	a5,a1,a4
8000ab48:	0025d593          	srli	a1,a1,0x2
8000ab4c:	00e5f5b3          	and	a1,a1,a4
8000ab50:	00b785b3          	add	a1,a5,a1
8000ab54:	0045d713          	srli	a4,a1,0x4
8000ab58:	00e585b3          	add	a1,a1,a4
8000ab5c:	0f0f1737          	lui	a4,0xf0f1
8000ab60:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000ab64:	00e5f5b3          	and	a1,a1,a4
8000ab68:	00859713          	slli	a4,a1,0x8
8000ab6c:	00e585b3          	add	a1,a1,a4
8000ab70:	01059713          	slli	a4,a1,0x10
8000ab74:	00e585b3          	add	a1,a1,a4
8000ab78:	0185d593          	srli	a1,a1,0x18
8000ab7c:	0100006f          	j	8000ab8c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x258>
8000ab80:	00000a93          	li	s5,0
8000ab84:	0180006f          	j	8000ab9c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x268>
8000ab88:	02000593          	li	a1,32
8000ab8c:	01858713          	addi	a4,a1,24 # 7f800018 <.Lline_table_start2+0x7f7fec6a>
8000ab90:	00900793          	li	a5,9
8000ab94:	40b78ab3          	sub	s5,a5,a1
8000ab98:	00e61633          	sll	a2,a2,a4
8000ab9c:	01755513          	srli	a0,a0,0x17
8000aba0:	de051ee3          	bnez	a0,8000a99c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x68>
8000aba4:	08068463          	beqz	a3,8000ac2c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x2f8>
8000aba8:	0016d513          	srli	a0,a3,0x1
8000abac:	00a6e533          	or	a0,a3,a0
8000abb0:	00255593          	srli	a1,a0,0x2
8000abb4:	00b56533          	or	a0,a0,a1
8000abb8:	00455593          	srli	a1,a0,0x4
8000abbc:	00b56533          	or	a0,a0,a1
8000abc0:	00855593          	srli	a1,a0,0x8
8000abc4:	00b56533          	or	a0,a0,a1
8000abc8:	01055593          	srli	a1,a0,0x10
8000abcc:	00b56533          	or	a0,a0,a1
8000abd0:	fff54513          	not	a0,a0
8000abd4:	00155593          	srli	a1,a0,0x1
8000abd8:	55555737          	lui	a4,0x55555
8000abdc:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000abe0:	00e5f5b3          	and	a1,a1,a4
8000abe4:	40b50533          	sub	a0,a0,a1
8000abe8:	333335b7          	lui	a1,0x33333
8000abec:	33358593          	addi	a1,a1,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000abf0:	00b57733          	and	a4,a0,a1
8000abf4:	00255513          	srli	a0,a0,0x2
8000abf8:	00b57533          	and	a0,a0,a1
8000abfc:	00a70533          	add	a0,a4,a0
8000ac00:	00455593          	srli	a1,a0,0x4
8000ac04:	00b50533          	add	a0,a0,a1
8000ac08:	0f0f15b7          	lui	a1,0xf0f1
8000ac0c:	f0f58593          	addi	a1,a1,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000ac10:	00b57533          	and	a0,a0,a1
8000ac14:	00851593          	slli	a1,a0,0x8
8000ac18:	00b50533          	add	a0,a0,a1
8000ac1c:	01051593          	slli	a1,a0,0x10
8000ac20:	00b50533          	add	a0,a0,a1
8000ac24:	01855513          	srli	a0,a0,0x18
8000ac28:	0080006f          	j	8000ac30 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x2fc>
8000ac2c:	02000513          	li	a0,32
8000ac30:	01850593          	addi	a1,a0,24 # 7f800018 <.Lline_table_start2+0x7f7fec6a>
8000ac34:	00b696b3          	sll	a3,a3,a1
8000ac38:	40aa8ab3          	sub	s5,s5,a0
8000ac3c:	009a8a93          	addi	s5,s5,9
8000ac40:	d5dff06f          	j	8000a99c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x68>

8000ac44 <memset>:
8000ac44:	fe010113          	addi	sp,sp,-32
8000ac48:	00112e23          	sw	ra,28(sp)
8000ac4c:	00812c23          	sw	s0,24(sp)
8000ac50:	00912a23          	sw	s1,20(sp)
8000ac54:	01212823          	sw	s2,16(sp)
8000ac58:	01312623          	sw	s3,12(sp)
8000ac5c:	01412423          	sw	s4,8(sp)
8000ac60:	02010413          	addi	s0,sp,32
8000ac64:	01000693          	li	a3,16
8000ac68:	00058913          	mv	s2,a1
8000ac6c:	00050493          	mv	s1,a0
8000ac70:	08d66e63          	bltu	a2,a3,8000ad0c <memset+0xc8>
8000ac74:	40900533          	neg	a0,s1
8000ac78:	00357513          	andi	a0,a0,3
8000ac7c:	00a489b3          	add	s3,s1,a0
8000ac80:	0134fe63          	bgeu	s1,s3,8000ac9c <memset+0x58>
8000ac84:	00050593          	mv	a1,a0
8000ac88:	00048693          	mv	a3,s1
8000ac8c:	01268023          	sb	s2,0(a3)
8000ac90:	fff58593          	addi	a1,a1,-1
8000ac94:	00168693          	addi	a3,a3,1
8000ac98:	fe059ae3          	bnez	a1,8000ac8c <memset+0x48>
8000ac9c:	40a60a33          	sub	s4,a2,a0
8000aca0:	0ff97513          	zext.b	a0,s2
8000aca4:	010105b7          	lui	a1,0x1010
8000aca8:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start2+0x100ed53>
8000acac:	fffff097          	auipc	ra,0xfffff
8000acb0:	03c080e7          	jalr	60(ra) # 80009ce8 <__mulsi3>
8000acb4:	ffca7593          	andi	a1,s4,-4
8000acb8:	00b985b3          	add	a1,s3,a1
8000acbc:	00b9f863          	bgeu	s3,a1,8000accc <memset+0x88>
8000acc0:	00a9a023          	sw	a0,0(s3)
8000acc4:	00498993          	addi	s3,s3,4
8000acc8:	feb9ece3          	bltu	s3,a1,8000acc0 <memset+0x7c>
8000accc:	003a7613          	andi	a2,s4,3
8000acd0:	00c58533          	add	a0,a1,a2
8000acd4:	00a5fa63          	bgeu	a1,a0,8000ace8 <memset+0xa4>
8000acd8:	01258023          	sb	s2,0(a1)
8000acdc:	fff60613          	addi	a2,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000ace0:	00158593          	addi	a1,a1,1
8000ace4:	fe061ae3          	bnez	a2,8000acd8 <memset+0x94>
8000ace8:	00048513          	mv	a0,s1
8000acec:	01c12083          	lw	ra,28(sp)
8000acf0:	01812403          	lw	s0,24(sp)
8000acf4:	01412483          	lw	s1,20(sp)
8000acf8:	01012903          	lw	s2,16(sp)
8000acfc:	00c12983          	lw	s3,12(sp)
8000ad00:	00812a03          	lw	s4,8(sp)
8000ad04:	02010113          	addi	sp,sp,32
8000ad08:	00008067          	ret
8000ad0c:	00048593          	mv	a1,s1
8000ad10:	00c48533          	add	a0,s1,a2
8000ad14:	fca4e2e3          	bltu	s1,a0,8000acd8 <memset+0x94>
8000ad18:	fd1ff06f          	j	8000ace8 <memset+0xa4>

8000ad1c <__divsi3>:
8000ad1c:	ff010113          	addi	sp,sp,-16
8000ad20:	00112623          	sw	ra,12(sp)
8000ad24:	00812423          	sw	s0,8(sp)
8000ad28:	00912223          	sw	s1,4(sp)
8000ad2c:	01212023          	sw	s2,0(sp)
8000ad30:	01010413          	addi	s0,sp,16
8000ad34:	00058493          	mv	s1,a1
8000ad38:	00050913          	mv	s2,a0
8000ad3c:	41f55513          	srai	a0,a0,0x1f
8000ad40:	00a945b3          	xor	a1,s2,a0
8000ad44:	40a58533          	sub	a0,a1,a0
8000ad48:	41f4d593          	srai	a1,s1,0x1f
8000ad4c:	00b4c633          	xor	a2,s1,a1
8000ad50:	40b605b3          	sub	a1,a2,a1
8000ad54:	00000097          	auipc	ra,0x0
8000ad58:	a10080e7          	jalr	-1520(ra) # 8000a764 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>
8000ad5c:	0124c5b3          	xor	a1,s1,s2
8000ad60:	0005d463          	bgez	a1,8000ad68 <__divsi3+0x4c>
8000ad64:	40a00533          	neg	a0,a0
8000ad68:	00c12083          	lw	ra,12(sp)
8000ad6c:	00812403          	lw	s0,8(sp)
8000ad70:	00412483          	lw	s1,4(sp)
8000ad74:	00012903          	lw	s2,0(sp)
8000ad78:	01010113          	addi	sp,sp,16
8000ad7c:	00008067          	ret
	...

Disassembly of section .rodata:

8000b000 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.1>:
8000b000:	7245                	.insn	2, 0x7245
8000b002:	6f72                	.insn	2, 0x6f72
8000b004:	0072                	.insn	2, 0x0072
	...

8000b008 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.2>:
8000b008:	0000                	.insn	2, 0x
8000b00a:	0000                	.insn	2, 0x
8000b00c:	0004                	.insn	2, 0x0004
8000b00e:	0000                	.insn	2, 0x
8000b010:	0004                	.insn	2, 0x0004
8000b012:	0000                	.insn	2, 0x
8000b014:	0048                	.insn	2, 0x0048
8000b016:	8000                	.insn	2, 0x8000

8000b018 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.3>:
8000b018:	0000                	.insn	2, 0x
8000b01a:	0000                	.insn	2, 0x
8000b01c:	0004                	.insn	2, 0x0004
8000b01e:	0000                	.insn	2, 0x
8000b020:	0004                	.insn	2, 0x0004
8000b022:	0000                	.insn	2, 0x
8000b024:	0030                	.insn	2, 0x0030
8000b026:	8000                	.insn	2, 0x8000

8000b028 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4>:
8000b028:	614c                	.insn	2, 0x614c
8000b02a:	6f79                	.insn	2, 0x6f79
8000b02c:	7475                	.insn	2, 0x7475
8000b02e:	2020                	.insn	2, 0x2020
8000b030:	2020                	.insn	2, 0x2020
8000b032:	657a6973          	.insn	4, 0x657a6973

8000b036 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.6>:
8000b036:	6c61                	.insn	2, 0x6c61
8000b038:	6769                	.insn	2, 0x6769
8000b03a:	                	.insn	2, 0x496e

8000b03b <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.7>:
8000b03b:	6e49                	.insn	2, 0x6e49
8000b03d:	75727473          	.insn	4, 0x75727473
8000b041:	6f697463          	bgeu	s2,s6,8000b729 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4+0x3d>
8000b045:	4d6e                	.insn	2, 0x4d6e
8000b047:	7369                	.insn	2, 0x7369
8000b049:	6c61                	.insn	2, 0x6c61
8000b04b:	6769                	.insn	2, 0x6769
8000b04d:	656e                	.insn	2, 0x656e
8000b04f:	6164                	.insn	2, 0x6164
8000b051:	72657373          	.insn	4, 0x72657373
8000b055:	6974                	.insn	2, 0x6974
8000b057:	60206e6f          	jal	t3,80011659 <KALLOC_BUFFER+0x3659>
8000b05b:	656c                	.insn	2, 0x656c
8000b05d:	7466                	.insn	2, 0x7466
8000b05f:	4920                	.insn	2, 0x4920
8000b061:	736e                	.insn	2, 0x736e
8000b063:	7274                	.insn	2, 0x7274
8000b065:	6375                	.insn	2, 0x6375
8000b067:	6974                	.insn	2, 0x6974
8000b069:	61466e6f          	jal	t3,8007167d <KALLOC_BUFFER+0x6367d>
8000b06d:	6c75                	.insn	2, 0x6c75
8000b06f:	7274                	.insn	2, 0x7274
8000b071:	6e61                	.insn	2, 0x6e61
8000b073:	65206567          	.insn	4, 0x65206567
8000b077:	646e                	.insn	2, 0x646e
8000b079:	6920                	.insn	2, 0x6920
8000b07b:	646e                	.insn	2, 0x646e
8000b07d:	7865                	.insn	2, 0x7865
8000b07f:	0020                	.insn	2, 0x0020
8000b081:	0201                	.insn	2, 0x0201
8000b083:	06050403          	lb	s0,96(a0)
8000b087:	0e090807          	.insn	4, 0x0e090807
8000b08b:	0b0a                	.insn	2, 0x0b0a
8000b08d:	0e0c                	.insn	2, 0x0e0c
8000b08f:	200d                	.insn	2, 0x200d
8000b091:	6972                	.insn	2, 0x6972
8000b093:	60746867          	.insn	4, 0x60746867
8000b097:	6620                	.insn	2, 0x6620
8000b099:	6961                	.insn	2, 0x6961
8000b09b:	656c                	.insn	2, 0x656c
8000b09d:	3a64                	.insn	2, 0x3a64
8000b09f:	                	.insn	2, 0x4920

8000b0a0 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.9>:
8000b0a0:	6c49                	.insn	2, 0x6c49
8000b0a2:	656c                	.insn	2, 0x656c
8000b0a4:	496c6167          	.insn	4, 0x496c6167
8000b0a8:	736e                	.insn	2, 0x736e
8000b0aa:	7274                	.insn	2, 0x7274
8000b0ac:	6375                	.insn	2, 0x6375
8000b0ae:	6974                	.insn	2, 0x6974
8000b0b0:	          	jal	t3,800317d4 <KALLOC_BUFFER+0x237d4>

8000b0b2 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.10>:
8000b0b2:	7242                	.insn	2, 0x7242
8000b0b4:	6165                	.insn	2, 0x6165
8000b0b6:	696f706b          	.insn	4, 0x696f706b
8000b0ba:	746e                	.insn	2, 0x746e

8000b0bc <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.11>:
8000b0bc:	6f4c                	.insn	2, 0x6f4c
8000b0be:	6461                	.insn	2, 0x6461
8000b0c0:	694d                	.insn	2, 0x694d
8000b0c2:	696c6173          	.insn	4, 0x696c6173
8000b0c6:	64656e67          	.insn	4, 0x64656e67

8000b0ca <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.12>:
8000b0ca:	6f4c                	.insn	2, 0x6f4c
8000b0cc:	6461                	.insn	2, 0x6461
8000b0ce:	6146                	.insn	2, 0x6146
8000b0d0:	6c75                	.insn	2, 0x6c75
8000b0d2:	                	.insn	2, 0x5374

8000b0d3 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.13>:
8000b0d3:	726f7453          	.insn	4, 0x726f7453
8000b0d7:	4d65                	.insn	2, 0x4d65
8000b0d9:	7369                	.insn	2, 0x7369
8000b0db:	6c61                	.insn	2, 0x6c61
8000b0dd:	6769                	.insn	2, 0x6769
8000b0df:	656e                	.insn	2, 0x656e
8000b0e1:	                	.insn	2, 0x5364

8000b0e2 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.14>:
8000b0e2:	726f7453          	.insn	4, 0x726f7453
8000b0e6:	4665                	.insn	2, 0x4665
8000b0e8:	7561                	.insn	2, 0x7561
8000b0ea:	746c                	.insn	2, 0x746c

8000b0ec <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.15>:
8000b0ec:	7355                	.insn	2, 0x7355
8000b0ee:	7265                	.insn	2, 0x7265
8000b0f0:	6e45                	.insn	2, 0x6e45
8000b0f2:	4376                	.insn	2, 0x4376
8000b0f4:	6c61                	.insn	2, 0x6c61
8000b0f6:	                	.insn	2, 0x536c

8000b0f7 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.16>:
8000b0f7:	65707553          	.insn	4, 0x65707553
8000b0fb:	7672                	.insn	2, 0x7672
8000b0fd:	7369                	.insn	2, 0x7369
8000b0ff:	6e45726f          	jal	tp,800627e3 <KALLOC_BUFFER+0x547e3>
8000b103:	4376                	.insn	2, 0x4376
8000b105:	6c61                	.insn	2, 0x6c61
8000b107:	                	.insn	2, 0x4d6c

8000b108 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.17>:
8000b108:	614d                	.insn	2, 0x614d
8000b10a:	6e696863          	bltu	s2,t1,8000b7fa <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E+0x1e>
8000b10e:	4565                	.insn	2, 0x4565
8000b110:	766e                	.insn	2, 0x766e
8000b112:	6c6c6143          	.insn	4, 0x6c6c6143

8000b116 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.18>:
8000b116:	6e49                	.insn	2, 0x6e49
8000b118:	75727473          	.insn	4, 0x75727473
8000b11c:	6f697463          	bgeu	s2,s6,8000b804 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E+0x28>
8000b120:	506e                	.insn	2, 0x506e
8000b122:	6761                	.insn	2, 0x6761
8000b124:	4665                	.insn	2, 0x4665
8000b126:	7561                	.insn	2, 0x7561
8000b128:	746c                	.insn	2, 0x746c

8000b12a <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.19>:
8000b12a:	6f4c                	.insn	2, 0x6f4c
8000b12c:	6461                	.insn	2, 0x6461
8000b12e:	6150                	.insn	2, 0x6150
8000b130:	61466567          	.insn	4, 0x61466567
8000b134:	6c75                	.insn	2, 0x6c75
8000b136:	                	.insn	2, 0x5374

8000b137 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.20>:
8000b137:	726f7453          	.insn	4, 0x726f7453
8000b13b:	5065                	.insn	2, 0x5065
8000b13d:	6761                	.insn	2, 0x6761
8000b13f:	4665                	.insn	2, 0x4665
8000b141:	7561                	.insn	2, 0x7561
8000b143:	746c                	.insn	2, 0x746c

8000b145 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.21>:
8000b145:	6e55                	.insn	2, 0x6e55
8000b147:	776f6e6b          	.insn	4, 0x776f6e6b
8000b14b:	                	.insn	2, 0x006e

8000b14c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.11087050053344146531>:
	...
8000b154:	0001                	.insn	2, 0x0001
8000b156:	0000                	.insn	2, 0x
8000b158:	0590                	.insn	2, 0x0590
8000b15a:	8000                	.insn	2, 0x8000
8000b15c:	0074                	.insn	2, 0x0074
8000b15e:	8000                	.insn	2, 0x8000
8000b160:	0154                	.insn	2, 0x0154
8000b162:	8000                	.insn	2, 0x8000

8000b164 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.11087050053344146531>:
	...
8000b16c:	0001                	.insn	2, 0x0001
8000b16e:	0000                	.insn	2, 0x
8000b170:	017c                	.insn	2, 0x017c
8000b172:	8000                	.insn	2, 0x8000

8000b174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.11087050053344146531>:
8000b174:	6c6c6163          	bltu	s8,t1,8000b836 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.25+0xe>
8000b178:	6465                	.insn	2, 0x6465
8000b17a:	6020                	.insn	2, 0x6020
8000b17c:	6552                	.insn	2, 0x6552
8000b17e:	746c7573          	.insn	4, 0x746c7573
8000b182:	3a3a                	.insn	2, 0x3a3a
8000b184:	6e75                	.insn	2, 0x6e75
8000b186:	70617277          	.insn	4, 0x70617277
8000b18a:	2928                	.insn	2, 0x2928
8000b18c:	2060                	.insn	2, 0x2060
8000b18e:	61206e6f          	jal	t3,800117a0 <KALLOC_BUFFER+0x37a0>
8000b192:	206e                	.insn	2, 0x206e
8000b194:	4560                	.insn	2, 0x4560
8000b196:	7272                	.insn	2, 0x7272
8000b198:	2060                	.insn	2, 0x2060
8000b19a:	6176                	.insn	2, 0x6176
8000b19c:	756c                	.insn	2, 0x756c
8000b19e:	                	.insn	2, 0x7365

8000b19f <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.25.llvm.11087050053344146531>:
8000b19f:	2f637273          	.insn	4, 0x2f637273
8000b1a3:	7270                	.insn	2, 0x7270
8000b1a5:	6e69                	.insn	2, 0x6e69
8000b1a7:	6574                	.insn	2, 0x6574
8000b1a9:	2e72                	.insn	2, 0x2e72
8000b1ab:	7372                	.insn	2, 0x7372
8000b1ad:	0000                	.insn	2, 0x
	...

8000b1b0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.11087050053344146531>:
8000b1b0:	b19f 8000 000e      	.insn	6, 0x000e8000b19f
8000b1b6:	0000                	.insn	2, 0x
8000b1b8:	00000017          	auipc	zero,0x0
8000b1bc:	001c                	.insn	2, 0x001c
	...

8000b1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.27.llvm.11087050053344146531>:
8000b1c0:	636d                	.insn	2, 0x636d
8000b1c2:	7561                	.insn	2, 0x7561
8000b1c4:	203a6573          	.insn	4, 0x203a6573
8000b1c8:	7865                	.insn	2, 0x7865
8000b1ca:	74706563          	bltu	zero,t2,8000b914 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33+0xc>
8000b1ce:	6f69                	.insn	2, 0x6f69
8000b1d0:	206e                	.insn	2, 0x206e
8000b1d2:	7461                	.insn	2, 0x7461
8000b1d4:	                	.insn	2, 0x2020

8000b1d5 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.28.llvm.11087050053344146531>:
8000b1d5:	                	.insn	2, 0x0a20

8000b1d6 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.29.llvm.11087050053344146531>:
8000b1d6:	000a                	.insn	2, 0x000a

8000b1d8 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.30.llvm.11087050053344146531>:
8000b1d8:	b1c0                	.insn	2, 0xb1c0
8000b1da:	8000                	.insn	2, 0x8000
8000b1dc:	0015                	.insn	2, 0x0015
8000b1de:	0000                	.insn	2, 0x
8000b1e0:	b1d5                	.insn	2, 0xb1d5
8000b1e2:	8000                	.insn	2, 0x8000
8000b1e4:	0001                	.insn	2, 0x0001
8000b1e6:	0000                	.insn	2, 0x
8000b1e8:	b1d6                	.insn	2, 0xb1d6
8000b1ea:	8000                	.insn	2, 0x8000
8000b1ec:	0001                	.insn	2, 0x0001
	...

8000b1f0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.31.llvm.11087050053344146531>:
8000b1f0:	6c6c616b          	.insn	4, 0x6c6c616b
8000b1f4:	6220636f          	jal	t1,80011816 <KALLOC_BUFFER+0x3816>
8000b1f8:	6675                	.insn	2, 0x6675
8000b1fa:	6566                	.insn	2, 0x6566
8000b1fc:	2072                	.insn	2, 0x2072
8000b1fe:	6162                	.insn	2, 0x6162
8000b200:	203a6573          	.insn	4, 0x203a6573

8000b204 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.32.llvm.11087050053344146531>:
8000b204:	b1f0                	.insn	2, 0xb1f0
8000b206:	8000                	.insn	2, 0x8000
8000b208:	0014                	.insn	2, 0x0014
8000b20a:	0000                	.insn	2, 0x
8000b20c:	b1d6                	.insn	2, 0xb1d6
8000b20e:	8000                	.insn	2, 0x8000
8000b210:	0001                	.insn	2, 0x0001
	...

8000b214 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.33>:
8000b214:	6170                	.insn	2, 0x6170
8000b216:	6c6c                	.insn	2, 0x6c6c
8000b218:	203a636f          	jal	t1,800b1c1a <KALLOC_BUFFER+0xa3c1a>
8000b21c:	6966                	.insn	2, 0x6966
8000b21e:	7372                	.insn	2, 0x7372
8000b220:	2074                	.insn	2, 0x2074

8000b222 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.34>:
8000b222:	6c20                	.insn	2, 0x6c20
8000b224:	7361                	.insn	2, 0x7361
8000b226:	2074                	.insn	2, 0x2074

8000b228 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.35>:
8000b228:	b214                	.insn	2, 0xb214
8000b22a:	8000                	.insn	2, 0x8000
8000b22c:	000e                	.insn	2, 0x000e
8000b22e:	0000                	.insn	2, 0x
8000b230:	b222                	.insn	2, 0xb222
8000b232:	8000                	.insn	2, 0x8000
8000b234:	0006                	.insn	2, 0x0006
8000b236:	0000                	.insn	2, 0x
8000b238:	b1d6                	.insn	2, 0xb1d6
8000b23a:	8000                	.insn	2, 0x8000
8000b23c:	0001                	.insn	2, 0x0001
	...

8000b240 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.36.llvm.11087050053344146531>:
8000b240:	2f637273          	.insn	4, 0x2f637273
8000b244:	6f70                	.insn	2, 0x6f70
8000b246:	6e69                	.insn	2, 0x6e69
8000b248:	6574                	.insn	2, 0x6574
8000b24a:	2e72                	.insn	2, 0x2e72
8000b24c:	7372                	.insn	2, 0x7372
	...

8000b250 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.37.llvm.11087050053344146531>:
8000b250:	b240                	.insn	2, 0xb240
8000b252:	8000                	.insn	2, 0x8000
8000b254:	000e                	.insn	2, 0x000e
8000b256:	0000                	.insn	2, 0x
8000b258:	0000002f          	.insn	4, 0x002f
8000b25c:	0030                	.insn	2, 0x0030
	...

8000b260 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.38>:
8000b260:	6170                	.insn	2, 0x6170
8000b262:	6c6c                	.insn	2, 0x6c6c
8000b264:	6220636f          	jal	t1,80011886 <KALLOC_BUFFER+0x3886>
8000b268:	7361                	.insn	2, 0x7361
8000b26a:	3a65                	.insn	2, 0x3a65
8000b26c:	3020                	.insn	2, 0x3020
8000b26e:	0078                	.insn	2, 0x0078

8000b270 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.39>:
8000b270:	b260                	.insn	2, 0xb260
8000b272:	8000                	.insn	2, 0x8000
8000b274:	0000000f          	fence	unknown,unknown
8000b278:	b1d6                	.insn	2, 0xb1d6
8000b27a:	8000                	.insn	2, 0x8000
8000b27c:	0001                	.insn	2, 0x0001
	...

8000b280 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.40>:
8000b280:	6c6c616b          	.insn	4, 0x6c6c616b
8000b284:	6620636f          	jal	t1,800118e6 <KALLOC_BUFFER+0x38e6>
8000b288:	6961                	.insn	2, 0x6961
8000b28a:	3a6c                	.insn	2, 0x3a6c
8000b28c:	0020                	.insn	2, 0x0020
	...

8000b290 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.41>:
8000b290:	b280                	.insn	2, 0xb280
8000b292:	8000                	.insn	2, 0x8000
8000b294:	000d                	.insn	2, 0x000d
	...

8000b298 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.42>:
8000b298:	2f637273          	.insn	4, 0x2f637273
8000b29c:	6c6c616b          	.insn	4, 0x6c6c616b
8000b2a0:	722e636f          	jal	t1,800f19c2 <KALLOC_BUFFER+0xe39c2>
8000b2a4:	00000073          	ecall

8000b2a8 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.43>:
8000b2a8:	b298                	.insn	2, 0xb298
8000b2aa:	8000                	.insn	2, 0x8000
8000b2ac:	000d                	.insn	2, 0x000d
8000b2ae:	0000                	.insn	2, 0x
8000b2b0:	0019                	.insn	2, 0x0019
8000b2b2:	0000                	.insn	2, 0x
8000b2b4:	0005                	.insn	2, 0x0005
	...

8000b2b8 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.11087050053344146531>:
8000b2b8:	0015                	.insn	2, 0x0015
8000b2ba:	0000                	.insn	2, 0x
8000b2bc:	0010                	.insn	2, 0x0010
8000b2be:	0000                	.insn	2, 0x
8000b2c0:	0012                	.insn	2, 0x0012
8000b2c2:	0000                	.insn	2, 0x
8000b2c4:	000a                	.insn	2, 0x000a
8000b2c6:	0000                	.insn	2, 0x
8000b2c8:	000e                	.insn	2, 0x000e
8000b2ca:	0000                	.insn	2, 0x
8000b2cc:	0009                	.insn	2, 0x0009
8000b2ce:	0000                	.insn	2, 0x
8000b2d0:	0000000f          	fence	unknown,unknown
8000b2d4:	000a                	.insn	2, 0x000a
8000b2d6:	0000                	.insn	2, 0x
8000b2d8:	0000000b          	.insn	4, 0x000b
8000b2dc:	0011                	.insn	2, 0x0011
8000b2de:	0000                	.insn	2, 0x
8000b2e0:	000e                	.insn	2, 0x000e
8000b2e2:	0000                	.insn	2, 0x
8000b2e4:	0014                	.insn	2, 0x0014
8000b2e6:	0000                	.insn	2, 0x
8000b2e8:	000d                	.insn	2, 0x000d
8000b2ea:	0000                	.insn	2, 0x
8000b2ec:	000e                	.insn	2, 0x000e
8000b2ee:	0000                	.insn	2, 0x
8000b2f0:	00000007          	.insn	4, 0x0007

8000b2f4 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.11087050053344146531.3>:
8000b2f4:	8000b03b          	.insn	4, 0x8000b03b
8000b2f8:	b060                	.insn	2, 0xb060
8000b2fa:	8000                	.insn	2, 0x8000
8000b2fc:	b0a0                	.insn	2, 0xb0a0
8000b2fe:	8000                	.insn	2, 0x8000
8000b300:	b0b2                	.insn	2, 0xb0b2
8000b302:	8000                	.insn	2, 0x8000
8000b304:	b0bc                	.insn	2, 0xb0bc
8000b306:	8000                	.insn	2, 0x8000
8000b308:	b0ca                	.insn	2, 0xb0ca
8000b30a:	8000                	.insn	2, 0x8000
8000b30c:	8000b0d3          	.insn	4, 0x8000b0d3
8000b310:	b0e2                	.insn	2, 0xb0e2
8000b312:	8000                	.insn	2, 0x8000
8000b314:	b0ec                	.insn	2, 0xb0ec
8000b316:	8000                	.insn	2, 0x8000
8000b318:	8000b0f7          	.insn	4, 0x8000b0f7
8000b31c:	b108                	.insn	2, 0xb108
8000b31e:	8000                	.insn	2, 0x8000
8000b320:	b116                	.insn	2, 0xb116
8000b322:	8000                	.insn	2, 0x8000
8000b324:	b12a                	.insn	2, 0xb12a
8000b326:	8000                	.insn	2, 0x8000
8000b328:	8000b137          	lui	sp,0x8000b
8000b32c:	b145                	.insn	2, 0xb145
8000b32e:	8000                	.insn	2, 0x8000

8000b330 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.4>:
8000b330:	614c                	.insn	2, 0x614c
8000b332:	6f79                	.insn	2, 0x6f79
8000b334:	7475                	.insn	2, 0x7475
8000b336:	7245                	.insn	2, 0x7245
8000b338:	6f72                	.insn	2, 0x6f72
8000b33a:	                	.insn	2, 0x7372

8000b33b <anon.60ddcc21ddc4099cb2bdf06c3dc58ce5.5.llvm.11773750751705326585>:
8000b33b:	2f637273          	.insn	4, 0x2f637273
8000b33f:	6f68                	.insn	2, 0x6f68
8000b341:	656c                	.insn	2, 0x656c
8000b343:	722e                	.insn	2, 0x722e
8000b345:	          	.insn	4, 0x696c6173

8000b346 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.6>:
8000b346:	6c61                	.insn	2, 0x6c61
8000b348:	6769                	.insn	2, 0x6769
8000b34a:	5f6e                	.insn	2, 0x5f6e
8000b34c:	7366666f          	jal	a2,80071a82 <KALLOC_BUFFER+0x63a82>
8000b350:	7465                	.insn	2, 0x7465
8000b352:	203a                	.insn	2, 0x203a
8000b354:	6c61                	.insn	2, 0x6c61
8000b356:	6769                	.insn	2, 0x6769
8000b358:	206e                	.insn	2, 0x206e
8000b35a:	7369                	.insn	2, 0x7369
8000b35c:	6e20                	.insn	2, 0x6e20
8000b35e:	6120746f          	jal	s0,80012970 <KALLOC_BUFFER+0x4970>
8000b362:	7020                	.insn	2, 0x7020
8000b364:	7265776f          	jal	a4,80062a8a <KALLOC_BUFFER+0x54a8a>
8000b368:	6f2d                	.insn	2, 0x6f2d
8000b36a:	2d66                	.insn	2, 0x2d66
8000b36c:	7774                	.insn	2, 0x7774
8000b36e:	          	j	7ff6b6a2 <.Lline_table_start2+0x7ff6a2f4>

8000b370 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.7>:
8000b370:	b346                	.insn	2, 0xb346
8000b372:	8000                	.insn	2, 0x8000
8000b374:	0029                	.insn	2, 0x0029
	...

8000b378 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.8>:
8000b378:	6d6f682f          	.insn	4, 0x6d6f682f
8000b37c:	2f65                	.insn	2, 0x2f65
8000b37e:	6572                	.insn	2, 0x6572
8000b380:	796d                	.insn	2, 0x796d
8000b382:	75722e2f          	.insn	4, 0x75722e2f
8000b386:	70757473          	.insn	4, 0x70757473
8000b38a:	6f6f742f          	.insn	4, 0x6f6f742f
8000b38e:	636c                	.insn	2, 0x636c
8000b390:	6168                	.insn	2, 0x6168
8000b392:	6e69                	.insn	2, 0x6e69
8000b394:	696e2f73          	.insn	4, 0x696e2f73
8000b398:	6c746867          	.insn	4, 0x6c746867
8000b39c:	2d79                	.insn	2, 0x2d79
8000b39e:	3878                	.insn	2, 0x3878
8000b3a0:	5f36                	.insn	2, 0x5f36
8000b3a2:	3436                	.insn	2, 0x3436
8000b3a4:	752d                	.insn	2, 0x752d
8000b3a6:	6b6e                	.insn	2, 0x6b6e
8000b3a8:	6f6e                	.insn	2, 0x6f6e
8000b3aa:	6c2d6e77          	.insn	4, 0x6c2d6e77
8000b3ae:	6e69                	.insn	2, 0x6e69
8000b3b0:	7875                	.insn	2, 0x7875
8000b3b2:	672d                	.insn	2, 0x672d
8000b3b4:	756e                	.insn	2, 0x756e
8000b3b6:	62696c2f          	.insn	4, 0x62696c2f
8000b3ba:	7375722f          	.insn	4, 0x7375722f
8000b3be:	6c74                	.insn	2, 0x6c74
8000b3c0:	6269                	.insn	2, 0x6269
8000b3c2:	6372732f          	.insn	4, 0x6372732f
8000b3c6:	7375722f          	.insn	4, 0x7375722f
8000b3ca:	2f74                	.insn	2, 0x2f74
8000b3cc:	696c                	.insn	2, 0x696c
8000b3ce:	7262                	.insn	2, 0x7262
8000b3d0:	7261                	.insn	2, 0x7261
8000b3d2:	2f79                	.insn	2, 0x2f79
8000b3d4:	65726f63          	bltu	tp,s7,8000ba32 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46+0xa>
8000b3d8:	6372732f          	.insn	4, 0x6372732f
8000b3dc:	7274702f          	.insn	4, 0x7274702f
8000b3e0:	74756d2f          	.insn	4, 0x74756d2f
8000b3e4:	705f 7274 722e      	.insn	6, 0x722e7274705f
8000b3ea:	          	.insn	4, 0xb3780073

8000b3ec <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.9>:
8000b3ec:	b378                	.insn	2, 0xb378
8000b3ee:	8000                	.insn	2, 0x8000
8000b3f0:	00000073          	ecall
8000b3f4:	0666                	.insn	2, 0x0666
8000b3f6:	0000                	.insn	2, 0x
8000b3f8:	000d                	.insn	2, 0x000d
	...

8000b3fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.14>:
	...
8000b404:	0001                	.insn	2, 0x0001
8000b406:	0000                	.insn	2, 0x
8000b408:	0b54                	.insn	2, 0x0b54
8000b40a:	8000                	.insn	2, 0x8000

8000b40c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.15>:
8000b40c:	6c6c6163          	bltu	s8,t1,8000bace <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x56>
8000b410:	6465                	.insn	2, 0x6465
8000b412:	6020                	.insn	2, 0x6020
8000b414:	6552                	.insn	2, 0x6552
8000b416:	746c7573          	.insn	4, 0x746c7573
8000b41a:	3a3a                	.insn	2, 0x3a3a
8000b41c:	6e75                	.insn	2, 0x6e75
8000b41e:	70617277          	.insn	4, 0x70617277
8000b422:	2928                	.insn	2, 0x2928
8000b424:	2060                	.insn	2, 0x2060
8000b426:	61206e6f          	jal	t3,80011a38 <KALLOC_BUFFER+0x3a38>
8000b42a:	206e                	.insn	2, 0x206e
8000b42c:	4560                	.insn	2, 0x4560
8000b42e:	7272                	.insn	2, 0x7272
8000b430:	2060                	.insn	2, 0x2060
8000b432:	6176                	.insn	2, 0x6176
8000b434:	756c                	.insn	2, 0x756c
8000b436:	0065                	.insn	2, 0x0065

8000b438 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.16>:
8000b438:	8000b33b          	.insn	4, 0x8000b33b
8000b43c:	0000000b          	.insn	4, 0x000b
8000b440:	01b8                	.insn	2, 0x01b8
8000b442:	0000                	.insn	2, 0x
8000b444:	0039                	.insn	2, 0x0039
	...

8000b448 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.17>:
8000b448:	7246                	.insn	2, 0x7246
8000b44a:	6565                	.insn	2, 0x6565
8000b44c:	2064                	.insn	2, 0x2064
8000b44e:	6f6e                	.insn	2, 0x6f6e
8000b450:	6564                	.insn	2, 0x6564
8000b452:	6120                	.insn	2, 0x6120
8000b454:	696c                	.insn	2, 0x696c
8000b456:	7361                	.insn	2, 0x7361
8000b458:	7365                	.insn	2, 0x7365
8000b45a:	6520                	.insn	2, 0x6520
8000b45c:	6978                	.insn	2, 0x6978
8000b45e:	6e697473          	.insn	4, 0x6e697473
8000b462:	6f682067          	.insn	4, 0x6f682067
8000b466:	656c                	.insn	2, 0x656c
8000b468:	2021                	.insn	2, 0x2021
8000b46a:	6142                	.insn	2, 0x6142
8000b46c:	2064                	.insn	2, 0x2064
8000b46e:	7266                	.insn	2, 0x7266
8000b470:	6565                	.insn	2, 0x6565
8000b472:	  	.insn	8, 0x002b8000b448003f

8000b474 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.18>:
8000b474:	b448                	.insn	2, 0xb448
8000b476:	8000                	.insn	2, 0x8000
8000b478:	0000002b          	.insn	4, 0x002b

8000b47c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.19>:
8000b47c:	8000b33b          	.insn	4, 0x8000b33b
8000b480:	0000000b          	.insn	4, 0x000b
8000b484:	0206                	.insn	2, 0x0206
8000b486:	0000                	.insn	2, 0x
8000b488:	000d                	.insn	2, 0x000d
	...

8000b48c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.20>:
8000b48c:	8000b33b          	.insn	4, 0x8000b33b
8000b490:	0000000b          	.insn	4, 0x000b
8000b494:	0228                	.insn	2, 0x0228
8000b496:	0000                	.insn	2, 0x
8000b498:	0011                	.insn	2, 0x0011
	...

8000b49c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.21>:
8000b49c:	7246                	.insn	2, 0x7246
8000b49e:	6565                	.insn	2, 0x6565
8000b4a0:	2064                	.insn	2, 0x2064
8000b4a2:	6f6e                	.insn	2, 0x6f6e
8000b4a4:	6564                	.insn	2, 0x6564
8000b4a6:	2820                	.insn	2, 0x2820

8000b4a8 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.22>:
8000b4a8:	2029                	.insn	2, 0x2029
8000b4aa:	6c61                	.insn	2, 0x6c61
8000b4ac:	6169                	.insn	2, 0x6169
8000b4ae:	20736573          	.insn	4, 0x20736573
8000b4b2:	7865                	.insn	2, 0x7865
8000b4b4:	7369                	.insn	2, 0x7369
8000b4b6:	6974                	.insn	2, 0x6974
8000b4b8:	676e                	.insn	2, 0x676e
8000b4ba:	6820                	.insn	2, 0x6820
8000b4bc:	20656c6f          	jal	s8,800616c2 <KALLOC_BUFFER+0x536c2>
8000b4c0:	                	.insn	2, 0x5b28

8000b4c1 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.23>:
8000b4c1:	          	.insn	4, 0x21295d5b

8000b4c2 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.24>:
8000b4c2:	295d                	.insn	2, 0x295d
8000b4c4:	2021                	.insn	2, 0x2021
8000b4c6:	6142                	.insn	2, 0x6142
8000b4c8:	2064                	.insn	2, 0x2064
8000b4ca:	7266                	.insn	2, 0x7266
8000b4cc:	6565                	.insn	2, 0x6565
8000b4ce:	  	.insn	8, 0x000c8000b49c003f

8000b4d0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.25>:
8000b4d0:	b49c                	.insn	2, 0xb49c
8000b4d2:	8000                	.insn	2, 0x8000
8000b4d4:	000c                	.insn	2, 0x000c
8000b4d6:	0000                	.insn	2, 0x
8000b4d8:	b4a8                	.insn	2, 0xb4a8
8000b4da:	8000                	.insn	2, 0x8000
8000b4dc:	0019                	.insn	2, 0x0019
8000b4de:	0000                	.insn	2, 0x
8000b4e0:	b4c1                	.insn	2, 0xb4c1
8000b4e2:	8000                	.insn	2, 0x8000
8000b4e4:	0001                	.insn	2, 0x0001
8000b4e6:	0000                	.insn	2, 0x
8000b4e8:	b4c2                	.insn	2, 0xb4c2
8000b4ea:	8000                	.insn	2, 0x8000
8000b4ec:	000d                	.insn	2, 0x000d
	...

8000b4f0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.26>:
8000b4f0:	8000b33b          	.insn	4, 0x8000b33b
8000b4f4:	0000000b          	.insn	4, 0x000b
8000b4f8:	0000023b          	.insn	4, 0x023b
8000b4fc:	0009                	.insn	2, 0x0009
	...

8000b500 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.27>:
8000b500:	6361                	.insn	2, 0x6361
8000b502:	          	.insn	4, 0x0a203a63

8000b505 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.28>:
8000b505:	000a                	.insn	2, 0x000a
	...

8000b508 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.29>:
8000b508:	b500                	.insn	2, 0xb500
8000b50a:	8000                	.insn	2, 0x8000
8000b50c:	0005                	.insn	2, 0x0005
8000b50e:	0000                	.insn	2, 0x
8000b510:	b505                	.insn	2, 0xb505
8000b512:	8000                	.insn	2, 0x8000
8000b514:	0001                	.insn	2, 0x0001
	...

8000b518 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.30>:
8000b518:	3a6d7573          	.insn	4, 0x3a6d7573
8000b51c:	                	.insn	2, 0x2020

8000b51d <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.31>:
8000b51d:	6520                	.insn	2, 0x6520
8000b51f:	7078                	.insn	2, 0x7078
8000b521:	6365                	.insn	2, 0x6365
8000b523:	6574                	.insn	2, 0x6574
8000b525:	3a64                	.insn	2, 0x3a64
8000b527:	                	.insn	2, 0x1820

8000b528 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.32>:
8000b528:	b518                	.insn	2, 0xb518
8000b52a:	8000                	.insn	2, 0x8000
8000b52c:	0005                	.insn	2, 0x0005
8000b52e:	0000                	.insn	2, 0x
8000b530:	b51d                	.insn	2, 0xb51d
8000b532:	8000                	.insn	2, 0x8000
8000b534:	0000000b          	.insn	4, 0x000b
8000b538:	b505                	.insn	2, 0xb505
8000b53a:	8000                	.insn	2, 0x8000
8000b53c:	0001                	.insn	2, 0x0001
	...

8000b540 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.33>:
8000b540:	2f637273          	.insn	4, 0x2f637273
8000b544:	616d                	.insn	2, 0x616d
8000b546:	6e69                	.insn	2, 0x6e69
8000b548:	722e                	.insn	2, 0x722e
8000b54a:	          	.insn	4, 0xb5400073

8000b54c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.34>:
8000b54c:	b540                	.insn	2, 0xb540
8000b54e:	8000                	.insn	2, 0x8000
8000b550:	0000000b          	.insn	4, 0x000b
8000b554:	0085                	.insn	2, 0x0085
8000b556:	0000                	.insn	2, 0x
8000b558:	0016                	.insn	2, 0x0016
	...

8000b55c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.35>:
8000b55c:	b540                	.insn	2, 0xb540
8000b55e:	8000                	.insn	2, 0x8000
8000b560:	0000000b          	.insn	4, 0x000b
8000b564:	0085                	.insn	2, 0x0085
8000b566:	0000                	.insn	2, 0x
8000b568:	0019                	.insn	2, 0x0019
	...

8000b56c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.36>:
8000b56c:	b540                	.insn	2, 0xb540
8000b56e:	8000                	.insn	2, 0x8000
8000b570:	0000000b          	.insn	4, 0x000b
8000b574:	007d                	.insn	2, 0x007d
8000b576:	0000                	.insn	2, 0x
8000b578:	001f 0000       	.insn	6, 0xb5400000001f

8000b57c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.37>:
8000b57c:	b540                	.insn	2, 0xb540
8000b57e:	8000                	.insn	2, 0x8000
8000b580:	0000000b          	.insn	4, 0x000b
8000b584:	007d                	.insn	2, 0x007d
8000b586:	0000                	.insn	2, 0x
8000b588:	0022                	.insn	2, 0x0022
	...

8000b58c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.38>:
8000b58c:	b540                	.insn	2, 0xb540
8000b58e:	8000                	.insn	2, 0x8000
8000b590:	0000000b          	.insn	4, 0x000b
8000b594:	007d                	.insn	2, 0x007d
8000b596:	0000                	.insn	2, 0x
8000b598:	002a                	.insn	2, 0x002a
	...

8000b59c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.39>:
8000b59c:	b540                	.insn	2, 0xb540
8000b59e:	8000                	.insn	2, 0x8000
8000b5a0:	0000000b          	.insn	4, 0x000b
8000b5a4:	007d                	.insn	2, 0x007d
8000b5a6:	0000                	.insn	2, 0x
8000b5a8:	002d                	.insn	2, 0x002d
	...

8000b5ac <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.40>:
8000b5ac:	b540                	.insn	2, 0xb540
8000b5ae:	8000                	.insn	2, 0x8000
8000b5b0:	0000000b          	.insn	4, 0x000b
8000b5b4:	007d                	.insn	2, 0x007d
8000b5b6:	0000                	.insn	2, 0x
8000b5b8:	00000013          	nop

8000b5bc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.41>:
8000b5bc:	b540                	.insn	2, 0xb540
8000b5be:	8000                	.insn	2, 0x8000
8000b5c0:	0000000b          	.insn	4, 0x000b
8000b5c4:	007d                	.insn	2, 0x007d
8000b5c6:	0000                	.insn	2, 0x
8000b5c8:	0016                	.insn	2, 0x0016
	...

8000b5cc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.42>:
8000b5cc:	b540                	.insn	2, 0xb540
8000b5ce:	8000                	.insn	2, 0x8000
8000b5d0:	0000000b          	.insn	4, 0x000b
8000b5d4:	006c                	.insn	2, 0x006c
8000b5d6:	0000                	.insn	2, 0x
8000b5d8:	000c                	.insn	2, 0x000c
	...

8000b5dc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.43>:
8000b5dc:	b540                	.insn	2, 0xb540
8000b5de:	8000                	.insn	2, 0x8000
8000b5e0:	0000000b          	.insn	4, 0x000b
8000b5e4:	006d                	.insn	2, 0x006d
8000b5e6:	0000                	.insn	2, 0x
8000b5e8:	000c                	.insn	2, 0x000c
	...

8000b5ec <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.44>:
8000b5ec:	b540                	.insn	2, 0xb540
8000b5ee:	8000                	.insn	2, 0x8000
8000b5f0:	0000000b          	.insn	4, 0x000b
8000b5f4:	006e                	.insn	2, 0x006e
8000b5f6:	0000                	.insn	2, 0x
8000b5f8:	000c                	.insn	2, 0x000c
	...

8000b5fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.45>:
8000b5fc:	b540                	.insn	2, 0xb540
8000b5fe:	8000                	.insn	2, 0x8000
8000b600:	0000000b          	.insn	4, 0x000b
8000b604:	0070                	.insn	2, 0x0070
8000b606:	0000                	.insn	2, 0x
8000b608:	0000000f          	fence	unknown,unknown

8000b60c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.46>:
8000b60c:	b540                	.insn	2, 0xb540
8000b60e:	8000                	.insn	2, 0x8000
8000b610:	0000000b          	.insn	4, 0x000b
8000b614:	0070                	.insn	2, 0x0070
8000b616:	0000                	.insn	2, 0x
8000b618:	00000013          	nop

8000b61c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.47>:
8000b61c:	b540                	.insn	2, 0xb540
8000b61e:	8000                	.insn	2, 0x8000
8000b620:	0000000b          	.insn	4, 0x000b
8000b624:	0071                	.insn	2, 0x0071
8000b626:	0000                	.insn	2, 0x
8000b628:	0000000f          	fence	unknown,unknown

8000b62c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.48>:
8000b62c:	b540                	.insn	2, 0xb540
8000b62e:	8000                	.insn	2, 0x8000
8000b630:	0000000b          	.insn	4, 0x000b
8000b634:	0071                	.insn	2, 0x0071
8000b636:	0000                	.insn	2, 0x
8000b638:	00000013          	nop

8000b63c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.49>:
8000b63c:	b540                	.insn	2, 0xb540
8000b63e:	8000                	.insn	2, 0x8000
8000b640:	0000000b          	.insn	4, 0x000b
8000b644:	0072                	.insn	2, 0x0072
8000b646:	0000                	.insn	2, 0x
8000b648:	0000000f          	fence	unknown,unknown

8000b64c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.50>:
8000b64c:	b540                	.insn	2, 0xb540
8000b64e:	8000                	.insn	2, 0x8000
8000b650:	0000000b          	.insn	4, 0x000b
8000b654:	0072                	.insn	2, 0x0072
8000b656:	0000                	.insn	2, 0x
8000b658:	00000013          	nop

8000b65c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.51>:
8000b65c:	31335b1b          	.insn	4, 0x31335b1b
8000b660:	4b6d                	.insn	2, 0x4b6d
8000b662:	5245                	.insn	2, 0x5245
8000b664:	454e                	.insn	2, 0x454e
8000b666:	204c                	.insn	2, 0x204c
8000b668:	4150                	.insn	2, 0x4150
8000b66a:	494e                	.insn	2, 0x494e
8000b66c:	5b1b3a43          	.insn	4, 0x5b1b3a43
8000b670:	6d30                	.insn	2, 0x6d30
8000b672:	0020                	.insn	2, 0x0020

8000b674 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.52>:
8000b674:	b65c                	.insn	2, 0xb65c
8000b676:	8000                	.insn	2, 0x8000
8000b678:	00000017          	auipc	zero,0x0
8000b67c:	b505                	.insn	2, 0xb505
8000b67e:	8000                	.insn	2, 0x8000
8000b680:	0001                	.insn	2, 0x0001
	...

8000b684 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.67>:
8000b684:	b540                	.insn	2, 0xb540
8000b686:	8000                	.insn	2, 0x8000
8000b688:	0000000b          	.insn	4, 0x000b
8000b68c:	00ce                	.insn	2, 0x00ce
8000b68e:	0000                	.insn	2, 0x
8000b690:	0026                	.insn	2, 0x0026
	...

8000b694 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.68>:
8000b694:	7375                	.insn	2, 0x7375
8000b696:	7265                	.insn	2, 0x7265
8000b698:	6d5f 6961 3a6e      	.insn	6, 0x3a6e69616d5f
8000b69e:	0020                	.insn	2, 0x0020

8000b6a0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.69>:
8000b6a0:	b694                	.insn	2, 0xb694
8000b6a2:	8000                	.insn	2, 0x8000
8000b6a4:	0000000b          	.insn	4, 0x000b
8000b6a8:	b505                	.insn	2, 0xb505
8000b6aa:	8000                	.insn	2, 0x8000
8000b6ac:	0001                	.insn	2, 0x0001
	...

8000b6b0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.74>:
8000b6b0:	6974                	.insn	2, 0x6974
8000b6b2:	656d                	.insn	2, 0x656d
8000b6b4:	203a                	.insn	2, 0x203a

8000b6b6 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.75>:
8000b6b6:	6920                	.insn	2, 0x6920
8000b6b8:	736e                	.insn	2, 0x736e
8000b6ba:	7274                	.insn	2, 0x7274
8000b6bc:	7465                	.insn	2, 0x7465
8000b6be:	203a                	.insn	2, 0x203a

8000b6c0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.76>:
8000b6c0:	b6b0                	.insn	2, 0xb6b0
8000b6c2:	8000                	.insn	2, 0x8000
8000b6c4:	0006                	.insn	2, 0x0006
8000b6c6:	0000                	.insn	2, 0x
8000b6c8:	b6b6                	.insn	2, 0xb6b6
8000b6ca:	8000                	.insn	2, 0x8000
8000b6cc:	000a                	.insn	2, 0x000a
8000b6ce:	0000                	.insn	2, 0x
8000b6d0:	b505                	.insn	2, 0xb505
8000b6d2:	8000                	.insn	2, 0x8000
8000b6d4:	0001                	.insn	2, 0x0001
	...

8000b6d8 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.3>:
8000b6d8:	61706163          	bltu	zero,s7,8000bcda <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x262>
8000b6dc:	79746963          	bltu	s0,s7,8000be6e <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x3f6>
8000b6e0:	6f20                	.insn	2, 0x6f20
8000b6e2:	6576                	.insn	2, 0x6576
8000b6e4:	6672                	.insn	2, 0x6672
8000b6e6:	6f6c                	.insn	2, 0x6f6c
8000b6e8:	00000077          	.insn	4, 0x0077

8000b6ec <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4>:
8000b6ec:	b6d8                	.insn	2, 0xb6d8
8000b6ee:	8000                	.insn	2, 0x8000
8000b6f0:	0011                	.insn	2, 0x0011
8000b6f2:	0000                	.insn	2, 0x
8000b6f4:	6e69                	.insn	2, 0x6e69
8000b6f6:	6564                	.insn	2, 0x6564
8000b6f8:	2078                	.insn	2, 0x2078
8000b6fa:	2074756f          	jal	a0,80053100 <KALLOC_BUFFER+0x45100>
8000b6fe:	6220666f          	jal	a2,80011d20 <KALLOC_BUFFER+0x3d20>
8000b702:	646e756f          	jal	a0,800f2d48 <KALLOC_BUFFER+0xe4d48>
8000b706:	74203a73          	.insn	4, 0x74203a73
8000b70a:	6568                	.insn	2, 0x6568
8000b70c:	6c20                	.insn	2, 0x6c20
8000b70e:	6e65                	.insn	2, 0x6e65
8000b710:	6920                	.insn	2, 0x6920
8000b712:	01002073          	.insn	4, 0x01002073
8000b716:	021c                	.insn	2, 0x021c
8000b718:	0e1d                	.insn	2, 0x0e1d
8000b71a:	0318                	.insn	2, 0x0318
8000b71c:	161e                	.insn	2, 0x161e
8000b71e:	0f14                	.insn	2, 0x0f14
8000b720:	1119                	.insn	2, 0x1119
8000b722:	0804                	.insn	2, 0x0804
8000b724:	1b1f 170d 1315      	.insn	6, 0x1315170d1b1f
8000b72a:	0710                	.insn	2, 0x0710
8000b72c:	0c1a                	.insn	2, 0x0c1a
8000b72e:	0612                	.insn	2, 0x0612
8000b730:	090a050b          	.insn	4, 0x090a050b

8000b734 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.21>:
8000b734:	7361                	.insn	2, 0x7361
8000b736:	74726573          	.insn	4, 0x74726573
8000b73a:	6f69                	.insn	2, 0x6f69
8000b73c:	206e                	.insn	2, 0x206e
8000b73e:	6166                	.insn	2, 0x6166
8000b740:	6c69                	.insn	2, 0x6c69
8000b742:	6465                	.insn	2, 0x6465
8000b744:	203a                	.insn	2, 0x203a
8000b746:	6465                	.insn	2, 0x6465
8000b748:	6c65                	.insn	2, 0x6c65
8000b74a:	6174                	.insn	2, 0x6174
8000b74c:	3e20                	.insn	2, 0x3e20
8000b74e:	203d                	.insn	2, 0x203d
8000b750:	                	.insn	2, 0x6330

8000b751 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.22>:
8000b751:	65726f63          	bltu	tp,s7,8000bdaf <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x337>
8000b755:	6372732f          	.insn	4, 0x6372732f
8000b759:	6d756e2f          	.insn	4, 0x6d756e2f
8000b75d:	7969642f          	.insn	4, 0x7969642f
8000b761:	665f 6f6c 7461      	.insn	6, 0x74616f6c665f
8000b767:	722e                	.insn	2, 0x722e
8000b769:	          	.insn	4, 0x51000073

8000b76c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.23>:
8000b76c:	b751                	.insn	2, 0xb751
8000b76e:	8000                	.insn	2, 0x8000
8000b770:	0019                	.insn	2, 0x0019
8000b772:	0000                	.insn	2, 0x
8000b774:	004c                	.insn	2, 0x004c
8000b776:	0000                	.insn	2, 0x
8000b778:	0009                	.insn	2, 0x0009
	...

8000b77c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.24>:
8000b77c:	b751                	.insn	2, 0xb751
8000b77e:	8000                	.insn	2, 0x8000
8000b780:	0019                	.insn	2, 0x0019
8000b782:	0000                	.insn	2, 0x
8000b784:	004e                	.insn	2, 0x004e
8000b786:	0000                	.insn	2, 0x
8000b788:	0009                	.insn	2, 0x0009
	...

8000b78c <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h99816a37407431b1E>:
8000b78c:	6fc1                	.insn	2, 0x6fc1
8000b78e:	86f2                	.insn	2, 0x86f2
8000b790:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>

8000b794 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217he851a7b51f37758fE>:
8000b794:	ef81                	.insn	2, 0xef81
8000b796:	85ac                	.insn	2, 0x85ac
8000b798:	2d6d415b          	.insn	4, 0x2d6d415b
8000b79c:	04ee                	.insn	2, 0x04ee
	...

8000b7a0 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417h3fd4a7811adefa4aE>:
8000b7a0:	1f01                	.insn	2, 0x1f01
8000b7a2:	bf6a                	.insn	2, 0xbf6a
8000b7a4:	ed64                	.insn	2, 0xed64
8000b7a6:	6e38                	.insn	2, 0x6e38
8000b7a8:	97ed                	.insn	2, 0x97ed
8000b7aa:	f9f4daa7          	.insn	4, 0xf9f4daa7
8000b7ae:	4f03e93f  	.insn	8, 0x3e0100184f03e93f

8000b7b4 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E>:
8000b7b4:	3e01                	.insn	2, 0x3e01
8000b7b6:	2e95                	.insn	2, 0x2e95
8000b7b8:	9909                	.insn	2, 0x9909
8000b7ba:	03df 38fd 0f15      	.insn	6, 0x0f1538fd03df
8000b7c0:	2374e42f          	.insn	4, 0x2374e42f
8000b7c4:	f5ec                	.insn	2, 0xf5ec
8000b7c6:	dc08d3cf          	.insn	4, 0xdc08d3cf
8000b7ca:	c404                	.insn	2, 0xc404
8000b7cc:	b0da                	.insn	2, 0xb0da
8000b7ce:	bccd                	.insn	2, 0xbccd
8000b7d0:	7f19                	.insn	2, 0x7f19
8000b7d2:	2603a633          	.insn	4, 0x2603a633
8000b7d6:	e91f 024e 0000      	.insn	6, 0x024ee91f

8000b7dc <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>:
8000b7dc:	7c01                	.insn	2, 0x7c01
8000b7de:	982e                	.insn	2, 0x982e
8000b7e0:	bed3875b          	.insn	4, 0xbed3875b
8000b7e4:	9f72                	.insn	2, 0x9f72
8000b7e6:	d8d9                	.insn	2, 0xd8d9
8000b7e8:	12152f87          	.insn	4, 0x12152f87
8000b7ec:	50c6                	.insn	2, 0x50c6
8000b7ee:	6bde                	.insn	2, 0x6bde
8000b7f0:	6e70                	.insn	2, 0x6e70
8000b7f2:	cf4a                	.insn	2, 0xcf4a
8000b7f4:	d595d80f          	.insn	4, 0xd595d80f
8000b7f8:	716e                	.insn	2, 0x716e
8000b7fa:	26b2                	.insn	2, 0x26b2
8000b7fc:	66b0                	.insn	2, 0x66b0
8000b7fe:	adc6                	.insn	2, 0xadc6
8000b800:	3624                	.insn	2, 0x3624
8000b802:	1d15                	.insn	2, 0x1d15
8000b804:	d35a                	.insn	2, 0xd35a
8000b806:	3c42                	.insn	2, 0x3c42
8000b808:	540e                	.insn	2, 0x540e
8000b80a:	63ff 73c0 cc55 ef17 	.insn	22, 0xf46eeddc80dcc7f755bc28f265f9ef17cc5573c063ff
8000b812:	65f9 28f2 55bc c7f7 
8000b81a:	80dc eddc f46e 
8000b820:	efce                	.insn	2, 0xefce
8000b822:	5fdc                	.insn	2, 0x5fdc
8000b824:	000553f7          	.insn	4, 0x000553f7

8000b828 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.25>:
8000b828:	65726f63          	bltu	tp,s7,8000be86 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x40e>
8000b82c:	6372732f          	.insn	4, 0x6372732f
8000b830:	6d756e2f          	.insn	4, 0x6d756e2f
8000b834:	746c662f          	.insn	4, 0x746c662f
8000b838:	6432                	.insn	2, 0x6432
8000b83a:	6365                	.insn	2, 0x6365
8000b83c:	7274732f          	.insn	4, 0x7274732f
8000b840:	7461                	.insn	2, 0x7461
8000b842:	6765                	.insn	2, 0x6765
8000b844:	2f79                	.insn	2, 0x2f79
8000b846:	7264                	.insn	2, 0x7264
8000b848:	6761                	.insn	2, 0x6761
8000b84a:	722e6e6f          	jal	t3,800f1f6c <KALLOC_BUFFER+0xe3f6c>
8000b84e:	          	.insn	4, 0x73736173

8000b84f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>:
8000b84f:	7361                	.insn	2, 0x7361
8000b851:	74726573          	.insn	4, 0x74726573
8000b855:	6f69                	.insn	2, 0x6f69
8000b857:	206e                	.insn	2, 0x206e
8000b859:	6166                	.insn	2, 0x6166
8000b85b:	6c69                	.insn	2, 0x6c69
8000b85d:	6465                	.insn	2, 0x6465
8000b85f:	203a                	.insn	2, 0x203a
8000b861:	2e64                	.insn	2, 0x2e64
8000b863:	616d                	.insn	2, 0x616d
8000b865:	746e                	.insn	2, 0x746e
8000b867:	3e20                	.insn	2, 0x3e20
8000b869:	3020                	.insn	2, 0x3020
	...

8000b86c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.27>:
8000b86c:	b828                	.insn	2, 0xb828
8000b86e:	8000                	.insn	2, 0x8000
8000b870:	00000027          	.insn	4, 0x0027
8000b874:	0076                	.insn	2, 0x0076
8000b876:	0000                	.insn	2, 0x
8000b878:	0005                	.insn	2, 0x0005
	...

8000b87c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>:
8000b87c:	7361                	.insn	2, 0x7361
8000b87e:	74726573          	.insn	4, 0x74726573
8000b882:	6f69                	.insn	2, 0x6f69
8000b884:	206e                	.insn	2, 0x206e
8000b886:	6166                	.insn	2, 0x6166
8000b888:	6c69                	.insn	2, 0x6c69
8000b88a:	6465                	.insn	2, 0x6465
8000b88c:	203a                	.insn	2, 0x203a
8000b88e:	2e64                	.insn	2, 0x2e64
8000b890:	696d                	.insn	2, 0x696d
8000b892:	756e                	.insn	2, 0x756e
8000b894:	203e2073          	.insn	4, 0x203e2073
8000b898:	0030                	.insn	2, 0x0030
	...

8000b89c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.29>:
8000b89c:	b828                	.insn	2, 0xb828
8000b89e:	8000                	.insn	2, 0x8000
8000b8a0:	00000027          	.insn	4, 0x0027
8000b8a4:	00000077          	.insn	4, 0x0077
8000b8a8:	0005                	.insn	2, 0x0005
	...

8000b8ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>:
8000b8ac:	7361                	.insn	2, 0x7361
8000b8ae:	74726573          	.insn	4, 0x74726573
8000b8b2:	6f69                	.insn	2, 0x6f69
8000b8b4:	206e                	.insn	2, 0x206e
8000b8b6:	6166                	.insn	2, 0x6166
8000b8b8:	6c69                	.insn	2, 0x6c69
8000b8ba:	6465                	.insn	2, 0x6465
8000b8bc:	203a                	.insn	2, 0x203a
8000b8be:	2e64                	.insn	2, 0x2e64
8000b8c0:	6c70                	.insn	2, 0x6c70
8000b8c2:	7375                	.insn	2, 0x7375
8000b8c4:	3e20                	.insn	2, 0x3e20
8000b8c6:	3020                	.insn	2, 0x3020

8000b8c8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.31>:
8000b8c8:	b828                	.insn	2, 0xb828
8000b8ca:	8000                	.insn	2, 0x8000
8000b8cc:	00000027          	.insn	4, 0x0027
8000b8d0:	0078                	.insn	2, 0x0078
8000b8d2:	0000                	.insn	2, 0x
8000b8d4:	0005                	.insn	2, 0x0005
	...

8000b8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>:
8000b8d8:	7361                	.insn	2, 0x7361
8000b8da:	74726573          	.insn	4, 0x74726573
8000b8de:	6f69                	.insn	2, 0x6f69
8000b8e0:	206e                	.insn	2, 0x206e
8000b8e2:	6166                	.insn	2, 0x6166
8000b8e4:	6c69                	.insn	2, 0x6c69
8000b8e6:	6465                	.insn	2, 0x6465
8000b8e8:	203a                	.insn	2, 0x203a
8000b8ea:	7562                	.insn	2, 0x7562
8000b8ec:	2e66                	.insn	2, 0x2e66
8000b8ee:	656c                	.insn	2, 0x656c
8000b8f0:	286e                	.insn	2, 0x286e
8000b8f2:	2029                	.insn	2, 0x2029
8000b8f4:	3d3e                	.insn	2, 0x3d3e
8000b8f6:	4d20                	.insn	2, 0x4d20
8000b8f8:	5841                	.insn	2, 0x5841
8000b8fa:	535f 4749 445f      	.insn	6, 0x445f4749535f
8000b900:	4749                	.insn	2, 0x4749
8000b902:	5449                	.insn	2, 0x5449
8000b904:	00000053          	.insn	4, 0x0053

8000b908 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33>:
8000b908:	b828                	.insn	2, 0xb828
8000b90a:	8000                	.insn	2, 0x8000
8000b90c:	00000027          	.insn	4, 0x0027
8000b910:	0000007b          	.insn	4, 0x007b
8000b914:	0005                	.insn	2, 0x0005
	...

8000b918 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.34>:
8000b918:	b828                	.insn	2, 0xb828
8000b91a:	8000                	.insn	2, 0x8000
8000b91c:	00000027          	.insn	4, 0x0027
8000b920:	00c2                	.insn	2, 0x00c2
8000b922:	0000                	.insn	2, 0x
8000b924:	0009                	.insn	2, 0x0009
	...

8000b928 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.35>:
8000b928:	b828                	.insn	2, 0xb828
8000b92a:	8000                	.insn	2, 0x8000
8000b92c:	00000027          	.insn	4, 0x0027
8000b930:	000000fb          	.insn	4, 0x00fb
8000b934:	000d                	.insn	2, 0x000d
	...

8000b938 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.36>:
8000b938:	b828                	.insn	2, 0xb828
8000b93a:	8000                	.insn	2, 0x8000
8000b93c:	00000027          	.insn	4, 0x0027
8000b940:	0102                	.insn	2, 0x0102
8000b942:	0000                	.insn	2, 0x
8000b944:	0036                	.insn	2, 0x0036
	...

8000b948 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>:
8000b948:	7361                	.insn	2, 0x7361
8000b94a:	74726573          	.insn	4, 0x74726573
8000b94e:	6f69                	.insn	2, 0x6f69
8000b950:	206e                	.insn	2, 0x206e
8000b952:	6166                	.insn	2, 0x6166
8000b954:	6c69                	.insn	2, 0x6c69
8000b956:	6465                	.insn	2, 0x6465
8000b958:	203a                	.insn	2, 0x203a
8000b95a:	2e64                	.insn	2, 0x2e64
8000b95c:	616d                	.insn	2, 0x616d
8000b95e:	746e                	.insn	2, 0x746e
8000b960:	632e                	.insn	2, 0x632e
8000b962:	6568                	.insn	2, 0x6568
8000b964:	64656b63          	bltu	a0,t1,8000bfba <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52+0xa>
8000b968:	735f 6275 6428      	.insn	6, 0x64286275735f
8000b96e:	6d2e                	.insn	2, 0x6d2e
8000b970:	6e69                	.insn	2, 0x6e69
8000b972:	7375                	.insn	2, 0x7375
8000b974:	2e29                	.insn	2, 0x2e29
8000b976:	7369                	.insn	2, 0x7369
8000b978:	735f 6d6f 2865      	.insn	6, 0x28656d6f735f
8000b97e:	0029                	.insn	2, 0x0029

8000b980 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.38>:
8000b980:	b828                	.insn	2, 0xb828
8000b982:	8000                	.insn	2, 0x8000
8000b984:	00000027          	.insn	4, 0x0027
8000b988:	007a                	.insn	2, 0x007a
8000b98a:	0000                	.insn	2, 0x
8000b98c:	0005                	.insn	2, 0x0005
	...

8000b990 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>:
8000b990:	7361                	.insn	2, 0x7361
8000b992:	74726573          	.insn	4, 0x74726573
8000b996:	6f69                	.insn	2, 0x6f69
8000b998:	206e                	.insn	2, 0x206e
8000b99a:	6166                	.insn	2, 0x6166
8000b99c:	6c69                	.insn	2, 0x6c69
8000b99e:	6465                	.insn	2, 0x6465
8000b9a0:	203a                	.insn	2, 0x203a
8000b9a2:	2e64                	.insn	2, 0x2e64
8000b9a4:	616d                	.insn	2, 0x616d
8000b9a6:	746e                	.insn	2, 0x746e
8000b9a8:	632e                	.insn	2, 0x632e
8000b9aa:	6568                	.insn	2, 0x6568
8000b9ac:	64656b63          	bltu	a0,t1,8000c002 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57+0x2>
8000b9b0:	615f 6464 6428      	.insn	6, 0x64286464615f
8000b9b6:	702e                	.insn	2, 0x702e
8000b9b8:	756c                	.insn	2, 0x756c
8000b9ba:	692e2973          	.insn	4, 0x692e2973
8000b9be:	6f735f73          	.insn	4, 0x6f735f73
8000b9c2:	656d                	.insn	2, 0x656d
8000b9c4:	2928                	.insn	2, 0x2928
	...

8000b9c8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.40>:
8000b9c8:	b828                	.insn	2, 0xb828
8000b9ca:	8000                	.insn	2, 0x8000
8000b9cc:	00000027          	.insn	4, 0x0027
8000b9d0:	0079                	.insn	2, 0x0079
8000b9d2:	0000                	.insn	2, 0x
8000b9d4:	0005                	.insn	2, 0x0005
	...

8000b9d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.41>:
8000b9d8:	b828                	.insn	2, 0xb828
8000b9da:	8000                	.insn	2, 0x8000
8000b9dc:	00000027          	.insn	4, 0x0027
8000b9e0:	0000010b          	.insn	4, 0x010b
8000b9e4:	0005                	.insn	2, 0x0005
	...

8000b9e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.42>:
8000b9e8:	b828                	.insn	2, 0xb828
8000b9ea:	8000                	.insn	2, 0x8000
8000b9ec:	00000027          	.insn	4, 0x0027
8000b9f0:	010c                	.insn	2, 0x010c
8000b9f2:	0000                	.insn	2, 0x
8000b9f4:	0005                	.insn	2, 0x0005
	...

8000b9f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.43>:
8000b9f8:	b828                	.insn	2, 0xb828
8000b9fa:	8000                	.insn	2, 0x8000
8000b9fc:	00000027          	.insn	4, 0x0027
8000ba00:	010d                	.insn	2, 0x010d
8000ba02:	0000                	.insn	2, 0x
8000ba04:	0005                	.insn	2, 0x0005
	...

8000ba08 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.44>:
8000ba08:	b828                	.insn	2, 0xb828
8000ba0a:	8000                	.insn	2, 0x8000
8000ba0c:	00000027          	.insn	4, 0x0027
8000ba10:	0172                	.insn	2, 0x0172
8000ba12:	0000                	.insn	2, 0x
8000ba14:	0024                	.insn	2, 0x0024
	...

8000ba18 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.45>:
8000ba18:	b828                	.insn	2, 0xb828
8000ba1a:	8000                	.insn	2, 0x8000
8000ba1c:	00000027          	.insn	4, 0x0027
8000ba20:	00000177          	.insn	4, 0x0177
8000ba24:	00000057          	.insn	4, 0x0057

8000ba28 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46>:
8000ba28:	b828                	.insn	2, 0xb828
8000ba2a:	8000                	.insn	2, 0x8000
8000ba2c:	00000027          	.insn	4, 0x0027
8000ba30:	0184                	.insn	2, 0x0184
8000ba32:	0000                	.insn	2, 0x
8000ba34:	0036                	.insn	2, 0x0036
	...

8000ba38 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.47>:
8000ba38:	b828                	.insn	2, 0xb828
8000ba3a:	8000                	.insn	2, 0x8000
8000ba3c:	00000027          	.insn	4, 0x0027
8000ba40:	0166                	.insn	2, 0x0166
8000ba42:	0000                	.insn	2, 0x
8000ba44:	000d                	.insn	2, 0x000d
	...

8000ba48 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.48>:
8000ba48:	b828                	.insn	2, 0xb828
8000ba4a:	8000                	.insn	2, 0x8000
8000ba4c:	00000027          	.insn	4, 0x0027
8000ba50:	014c                	.insn	2, 0x014c
8000ba52:	0000                	.insn	2, 0x
8000ba54:	0022                	.insn	2, 0x0022
	...

8000ba58 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.49>:
8000ba58:	b828                	.insn	2, 0xb828
8000ba5a:	8000                	.insn	2, 0x8000
8000ba5c:	00000027          	.insn	4, 0x0027
8000ba60:	0000010f          	.insn	4, 0x010f
8000ba64:	0005                	.insn	2, 0x0005
	...

8000ba68 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.50>:
8000ba68:	b828                	.insn	2, 0xb828
8000ba6a:	8000                	.insn	2, 0x8000
8000ba6c:	00000027          	.insn	4, 0x0027
8000ba70:	010e                	.insn	2, 0x010e
8000ba72:	0000                	.insn	2, 0x
8000ba74:	0005                	.insn	2, 0x0005
	...

8000ba78 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>:
8000ba78:	45df 3d1a cf03      	.insn	6, 0xcf033d1a45df
8000ba7e:	e61a                	.insn	2, 0xe61a
8000ba80:	fbc1                	.insn	2, 0xfbc1
8000ba82:	fecc                	.insn	2, 0xfecc
8000ba84:	0000                	.insn	2, 0x
8000ba86:	0000                	.insn	2, 0x
8000ba88:	c6ca                	.insn	2, 0xc6ca
8000ba8a:	c79a                	.insn	2, 0xc79a
8000ba8c:	ab70fe17          	auipc	t3,0xab70f
8000ba90:	fbdc                	.insn	2, 0xfbdc
8000ba92:	fed4                	.insn	2, 0xfed4
8000ba94:	0000                	.insn	2, 0x
8000ba96:	0000                	.insn	2, 0x
8000ba98:	bebcdc4f          	.insn	4, 0xbebcdc4f
8000ba9c:	b1fc                	.insn	2, 0xb1fc
8000ba9e:	fbf6ff77          	.insn	4, 0xfbf6ff77
8000baa2:	fedc                	.insn	2, 0xfedc
8000baa4:	0000                	.insn	2, 0x
8000baa6:	0000                	.insn	2, 0x
8000baa8:	d60c                	.insn	2, 0xd60c
8000baaa:	91ef416b          	.insn	4, 0x91ef416b
8000baae:	be56                	.insn	2, 0xbe56
8000bab0:	fc11                	.insn	2, 0xfc11
8000bab2:	fee4                	.insn	2, 0xfee4
8000bab4:	0000                	.insn	2, 0x
8000bab6:	0000                	.insn	2, 0x
8000bab8:	fc3c                	.insn	2, 0xfc3c
8000baba:	1fad907f fc2c8dd0 	.insn	12, 0xfeecfc2c8dd01fad907f
8000bac2:	0000feec 
8000bac6:	0000                	.insn	2, 0x
8000bac8:	31559a83          	lh	s5,789(a1)
8000bacc:	5c28                	.insn	2, 0x5c28
8000bace:	d351                	.insn	2, 0xd351
8000bad0:	fc46                	.insn	2, 0xfc46
8000bad2:	fef4                	.insn	2, 0xfef4
8000bad4:	0000                	.insn	2, 0x
8000bad6:	0000                	.insn	2, 0x
8000bad8:	c9b5                	.insn	2, 0xc9b5
8000bada:	ada6                	.insn	2, 0xada6
8000badc:	9d71ac8f          	.insn	4, 0x9d71ac8f
8000bae0:	fc61                	.insn	2, 0xfc61
8000bae2:	fefc                	.insn	2, 0xfefc
8000bae4:	0000                	.insn	2, 0x
8000bae6:	0000                	.insn	2, 0x
8000bae8:	23ee8bcb          	.insn	4, 0x23ee8bcb
8000baec:	ea9c2277          	.insn	4, 0xea9c2277
8000baf0:	ff04fc7b          	.insn	4, 0xff04fc7b
8000baf4:	0000                	.insn	2, 0x
8000baf6:	0000                	.insn	2, 0x
8000baf8:	536d                	.insn	2, 0x536d
8000bafa:	4078                	.insn	2, 0x4078
8000bafc:	4991                	.insn	2, 0x4991
8000bafe:	aecc                	.insn	2, 0xaecc
8000bb00:	fc96                	.insn	2, 0xfc96
8000bb02:	ff0c                	.insn	2, 0xff0c
8000bb04:	0000                	.insn	2, 0x
8000bb06:	0000                	.insn	2, 0x
8000bb08:	5db6ce57          	.insn	4, 0x5db6ce57
8000bb0c:	1279                	.insn	2, 0x1279
8000bb0e:	823c                	.insn	2, 0x823c
8000bb10:	fcb1                	.insn	2, 0xfcb1
8000bb12:	ff14                	.insn	2, 0xff14
8000bb14:	0000                	.insn	2, 0x
8000bb16:	0000                	.insn	2, 0x
8000bb18:	4dfb5637          	lui	a2,0x4dfb5
8000bb1c:	9436                	.insn	2, 0x9436
8000bb1e:	c210                	.insn	2, 0xc210
8000bb20:	ff1cfccb          	.insn	4, 0xff1cfccb
8000bb24:	0000                	.insn	2, 0x
8000bb26:	0000                	.insn	2, 0x
8000bb28:	3848984f          	.insn	4, 0x3848984f
8000bb2c:	9096ea6f          	jal	s4,7ff7a434 <.Lline_table_start2+0x7ff79086>
8000bb30:	fce6                	.insn	2, 0xfce6
8000bb32:	ff24                	.insn	2, 0xff24
8000bb34:	0000                	.insn	2, 0x
8000bb36:	0000                	.insn	2, 0x
8000bb38:	25823ac7          	.insn	4, 0x25823ac7
8000bb3c:	d77485cb          	.insn	4, 0xd77485cb
8000bb40:	fd00                	.insn	2, 0xfd00
8000bb42:	ff2c                	.insn	2, 0xff2c
8000bb44:	0000                	.insn	2, 0x
8000bb46:	0000                	.insn	2, 0x
8000bb48:	97f4                	.insn	2, 0x97f4
8000bb4a:	cfcd97bf fd1ba086 	.insn	8, 0xfd1ba086cfcd97bf
8000bb52:	ff34                	.insn	2, 0xff34
8000bb54:	0000                	.insn	2, 0x
8000bb56:	0000                	.insn	2, 0x
8000bb58:	ace5                	.insn	2, 0xace5
8000bb5a:	172a                	.insn	2, 0x172a
8000bb5c:	0a98                	.insn	2, 0x0a98
8000bb5e:	ef34                	.insn	2, 0xef34
8000bb60:	fd35                	.insn	2, 0xfd35
8000bb62:	ff3c                	.insn	2, 0xff3c
8000bb64:	0000                	.insn	2, 0x
8000bb66:	0000                	.insn	2, 0x
8000bb68:	b28e                	.insn	2, 0xb28e
8000bb6a:	2a35                	.insn	2, 0x2a35
8000bb6c:	b23867fb          	.insn	4, 0xb23867fb
8000bb70:	fd50                	.insn	2, 0xfd50
8000bb72:	ff44                	.insn	2, 0xff44
8000bb74:	0000                	.insn	2, 0x
8000bb76:	0000                	.insn	2, 0x
8000bb78:	d2c63f3b          	.insn	4, 0xd2c63f3b
8000bb7c:	d4df 84c8 fd6b      	.insn	6, 0xfd6b84c8d4df
8000bb82:	ff4c                	.insn	2, 0xff4c
8000bb84:	0000                	.insn	2, 0x
8000bb86:	0000                	.insn	2, 0x
8000bb88:	cdba                	.insn	2, 0xcdba
8000bb8a:	44271ad3          	.insn	4, 0x44271ad3
8000bb8e:	c5dd                	.insn	2, 0xc5dd
8000bb90:	fd85                	.insn	2, 0xfd85
8000bb92:	ff54                	.insn	2, 0xff54
8000bb94:	0000                	.insn	2, 0x
8000bb96:	0000                	.insn	2, 0x
8000bb98:	c996                	.insn	2, 0xc996
8000bb9a:	bb25                	.insn	2, 0xbb25
8000bb9c:	9fce                	.insn	2, 0x9fce
8000bb9e:	fda0936b          	.insn	4, 0xfda0936b
8000bba2:	ff5c                	.insn	2, 0xff5c
8000bba4:	0000                	.insn	2, 0x
8000bba6:	0000                	.insn	2, 0x
8000bba8:	a584                	.insn	2, 0xa584
8000bbaa:	7d62                	.insn	2, 0x7d62
8000bbac:	6c24                	.insn	2, 0x6c24
8000bbae:	dbac                	.insn	2, 0xdbac
8000bbb0:	fdba                	.insn	2, 0xfdba
8000bbb2:	ff64                	.insn	2, 0xff64
8000bbb4:	0000                	.insn	2, 0x
8000bbb6:	0000                	.insn	2, 0x
8000bbb8:	daf6                	.insn	2, 0xdaf6
8000bbba:	0d5f 6658 a3ab      	.insn	6, 0xa3ab66580d5f
8000bbc0:	fdd5                	.insn	2, 0xfdd5
8000bbc2:	ff6c                	.insn	2, 0xff6c
8000bbc4:	0000                	.insn	2, 0x
8000bbc6:	0000                	.insn	2, 0x
8000bbc8:	f126                	.insn	2, 0xf126
8000bbca:	f893dec3          	.insn	4, 0xf893dec3
8000bbce:	f3e2                	.insn	2, 0xf3e2
8000bbd0:	ff74fdef          	jal	s11,7ff5bbc6 <.Lline_table_start2+0x7ff5a818>
8000bbd4:	0000                	.insn	2, 0x
8000bbd6:	0000                	.insn	2, 0x
8000bbd8:	80b8                	.insn	2, 0x80b8
8000bbda:	aaff ada8 b5b5 fe0a 	.insn	14, 0xff7cfe0ab5b5ada8aaff
8000bbe2:	ff7c 0000 0000 
8000bbe8:	6c7c4a8b          	.insn	4, 0x6c7c4a8b
8000bbec:	5f05                	.insn	2, 0x5f05
8000bbee:	8762                	.insn	2, 0x8762
8000bbf0:	fe25                	.insn	2, 0xfe25
8000bbf2:	ff84                	.insn	2, 0xff84
8000bbf4:	0000                	.insn	2, 0x
8000bbf6:	0000                	.insn	2, 0x
8000bbf8:	34c13053          	.insn	4, 0x34c13053
8000bbfc:	ff60                	.insn	2, 0xff60
8000bbfe:	c9bc                	.insn	2, 0xc9bc
8000bc00:	ff8cfe3f 00000000 	.insn	8, 0xff8cfe3f
8000bc08:	2655                	.insn	2, 0x2655
8000bc0a:	91ba                	.insn	2, 0x91ba
8000bc0c:	858c                	.insn	2, 0x858c
8000bc0e:	964e                	.insn	2, 0x964e
8000bc10:	fe5a                	.insn	2, 0xfe5a
8000bc12:	ff94                	.insn	2, 0xff94
8000bc14:	0000                	.insn	2, 0x
8000bc16:	0000                	.insn	2, 0x
8000bc18:	7ebd                	.insn	2, 0x7ebd
8000bc1a:	7029                	.insn	2, 0x7029
8000bc1c:	7724                	.insn	2, 0x7724
8000bc1e:	dff9                	.insn	2, 0xdff9
8000bc20:	fe74                	.insn	2, 0xfe74
8000bc22:	ff9c                	.insn	2, 0xff9c
8000bc24:	0000                	.insn	2, 0x
8000bc26:	0000                	.insn	2, 0x
8000bc28:	b8e5b88f          	.insn	4, 0xb8e5b88f
8000bc2c:	bd9f a6df fe8f      	.insn	6, 0xfe8fa6dfbd9f
8000bc32:	ffa4                	.insn	2, 0xffa4
8000bc34:	0000                	.insn	2, 0x
8000bc36:	0000                	.insn	2, 0x
8000bc38:	7d94                	.insn	2, 0x7d94
8000bc3a:	8874                	.insn	2, 0x8874
8000bc3c:	f8a95fcf          	.insn	4, 0xf8a95fcf
8000bc40:	fea9                	.insn	2, 0xfea9
8000bc42:	ffac                	.insn	2, 0xffac
8000bc44:	0000                	.insn	2, 0x
8000bc46:	0000                	.insn	2, 0x
8000bc48:	8fa89bcf          	.insn	4, 0x8fa89bcf
8000bc4c:	b9447093          	andi	ra,s0,-1132
8000bc50:	fec4                	.insn	2, 0xfec4
8000bc52:	ffb4                	.insn	2, 0xffb4
8000bc54:	0000                	.insn	2, 0x
8000bc56:	0000                	.insn	2, 0x
8000bc58:	bf0f156b          	.insn	4, 0xbf0f156b
8000bc5c:	f0f8                	.insn	2, 0xf0f8
8000bc5e:	8a08                	.insn	2, 0x8a08
8000bc60:	fedf ffbc 0000      	.insn	6, 0xffbcfedf
8000bc66:	0000                	.insn	2, 0x
8000bc68:	31b6                	.insn	2, 0x31b6
8000bc6a:	6531                	.insn	2, 0x6531
8000bc6c:	2555                	.insn	2, 0x2555
8000bc6e:	cdb0                	.insn	2, 0xcdb0
8000bc70:	fef9                	.insn	2, 0xfef9
8000bc72:	ffc4                	.insn	2, 0xffc4
8000bc74:	0000                	.insn	2, 0x
8000bc76:	0000                	.insn	2, 0x
8000bc78:	7fac                	.insn	2, 0x7fac
8000bc7a:	e2c6d07b          	.insn	4, 0xe2c6d07b
8000bc7e:	ff14993f 0000ffcc 	.insn	8, 0xffccff14993f
8000bc86:	0000                	.insn	2, 0x
8000bc88:	3b06                	.insn	2, 0x3b06
8000bc8a:	10c42a2b          	.insn	4, 0x10c42a2b
8000bc8e:	e45c                	.insn	2, 0xe45c
8000bc90:	ff2e                	.insn	2, 0xff2e
8000bc92:	ffd4                	.insn	2, 0xffd4
8000bc94:	0000                	.insn	2, 0x
8000bc96:	0000                	.insn	2, 0x
8000bc98:	697392d3          	.insn	4, 0x697392d3
8000bc9c:	2499                	.insn	2, 0x2499
8000bc9e:	aa24                	.insn	2, 0xaa24
8000bca0:	ff49                	.insn	2, 0xff49
8000bca2:	ffdc                	.insn	2, 0xffdc
8000bca4:	0000                	.insn	2, 0x
8000bca6:	0000                	.insn	2, 0x
8000bca8:	ca0e                	.insn	2, 0xca0e
8000bcaa:	8300                	.insn	2, 0x8300
8000bcac:	b5f2                	.insn	2, 0xb5f2
8000bcae:	ff63fd87          	.insn	4, 0xff63fd87
8000bcb2:	ffe4                	.insn	2, 0xffe4
8000bcb4:	0000                	.insn	2, 0x
8000bcb6:	0000                	.insn	2, 0x
8000bcb8:	92111aeb          	.insn	4, 0x92111aeb
8000bcbc:	0864                	.insn	2, 0x0864
8000bcbe:	bce5                	.insn	2, 0xbce5
8000bcc0:	ff7e                	.insn	2, 0xff7e
8000bcc2:	ffec                	.insn	2, 0xffec
8000bcc4:	0000                	.insn	2, 0x
8000bcc6:	0000                	.insn	2, 0x
8000bcc8:	88cc                	.insn	2, 0x88cc
8000bcca:	6f50                	.insn	2, 0x6f50
8000bccc:	cc09                	.insn	2, 0xcc09
8000bcce:	8cbc                	.insn	2, 0x8cbc
8000bcd0:	ff99                	.insn	2, 0xff99
8000bcd2:	fff4                	.insn	2, 0xfff4
8000bcd4:	0000                	.insn	2, 0x
8000bcd6:	0000                	.insn	2, 0x
8000bcd8:	652c                	.insn	2, 0x652c
8000bcda:	e219                	.insn	2, 0xe219
8000bcdc:	1758                	.insn	2, 0x1758
8000bcde:	ffb3d1b7          	lui	gp,0xffb3d
8000bce2:	fffc                	.insn	2, 0xfffc
	...
8000bcec:	0000                	.insn	2, 0x
8000bcee:	9c40                	.insn	2, 0x9c40
8000bcf0:	ffce                	.insn	2, 0xffce
8000bcf2:	0004                	.insn	2, 0x0004
	...
8000bcfc:	a510                	.insn	2, 0xa510
8000bcfe:	e8d4                	.insn	2, 0xe8d4
8000bd00:	ffe8                	.insn	2, 0xffe8
8000bd02:	000c                	.insn	2, 0x000c
8000bd04:	0000                	.insn	2, 0x
8000bd06:	0000                	.insn	2, 0x
8000bd08:	0000                	.insn	2, 0x
8000bd0a:	ac62                	.insn	2, 0xac62
8000bd0c:	ebc5                	.insn	2, 0xebc5
8000bd0e:	ad78                	.insn	2, 0xad78
8000bd10:	00140003          	lb	zero,1(s0)
8000bd14:	0000                	.insn	2, 0x
8000bd16:	0000                	.insn	2, 0x
8000bd18:	0984                	.insn	2, 0x0984
8000bd1a:	f894                	.insn	2, 0xf894
8000bd1c:	3978                	.insn	2, 0x3978
8000bd1e:	001e813f 0000001c 	.insn	8, 0x001c001e813f
8000bd26:	0000                	.insn	2, 0x
8000bd28:	c90715b3          	.insn	4, 0xc90715b3
8000bd2c:	c097ce7b          	.insn	4, 0xc097ce7b
8000bd30:	0038                	.insn	2, 0x0038
8000bd32:	0024                	.insn	2, 0x0024
8000bd34:	0000                	.insn	2, 0x
8000bd36:	0000                	.insn	2, 0x
8000bd38:	5c70                	.insn	2, 0x5c70
8000bd3a:	7bea                	.insn	2, 0x7bea
8000bd3c:	32ce                	.insn	2, 0x32ce
8000bd3e:	8f7e                	.insn	2, 0x8f7e
8000bd40:	002c0053          	.insn	4, 0x002c0053
8000bd44:	0000                	.insn	2, 0x
8000bd46:	0000                	.insn	2, 0x
8000bd48:	8068                	.insn	2, 0x8068
8000bd4a:	abe9                	.insn	2, 0xabe9
8000bd4c:	38a4                	.insn	2, 0x38a4
8000bd4e:	d5d2                	.insn	2, 0xd5d2
8000bd50:	006d                	.insn	2, 0x006d
8000bd52:	0034                	.insn	2, 0x0034
8000bd54:	0000                	.insn	2, 0x
8000bd56:	0000                	.insn	2, 0x
8000bd58:	2245                	.insn	2, 0x2245
8000bd5a:	179a                	.insn	2, 0x179a
8000bd5c:	2726                	.insn	2, 0x2726
8000bd5e:	00889f4f          	.insn	4, 0x00889f4f
8000bd62:	003c                	.insn	2, 0x003c
8000bd64:	0000                	.insn	2, 0x
8000bd66:	0000                	.insn	2, 0x
8000bd68:	d4c4fb27          	.insn	4, 0xd4c4fb27
8000bd6c:	a231                	.insn	2, 0xa231
8000bd6e:	00a2ed63          	bltu	t0,a0,8000bd88 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x310>
8000bd72:	0044                	.insn	2, 0x0044
8000bd74:	0000                	.insn	2, 0x
8000bd76:	0000                	.insn	2, 0x
8000bd78:	ada8                	.insn	2, 0xada8
8000bd7a:	8cc8                	.insn	2, 0x8cc8
8000bd7c:	6538                	.insn	2, 0x6538
8000bd7e:	b0de                	.insn	2, 0xb0de
8000bd80:	00bd                	.insn	2, 0x00bd
8000bd82:	004c                	.insn	2, 0x004c
8000bd84:	0000                	.insn	2, 0x
8000bd86:	0000                	.insn	2, 0x
8000bd88:	1aab65db          	.insn	4, 0x1aab65db
8000bd8c:	088e                	.insn	2, 0x088e
8000bd8e:	00d883c7          	.insn	4, 0x00d883c7
8000bd92:	0054                	.insn	2, 0x0054
8000bd94:	0000                	.insn	2, 0x
8000bd96:	0000                	.insn	2, 0x
8000bd98:	1d9a                	.insn	2, 0x1d9a
8000bd9a:	4271                	.insn	2, 0x4271
8000bd9c:	1df9                	.insn	2, 0x1df9
8000bd9e:	c45d                	.insn	2, 0xc45d
8000bda0:	00f2                	.insn	2, 0x00f2
8000bda2:	005c                	.insn	2, 0x005c
8000bda4:	0000                	.insn	2, 0x
8000bda6:	0000                	.insn	2, 0x
8000bda8:	e758                	.insn	2, 0xe758
8000bdaa:	692ca61b          	.insn	4, 0x692ca61b
8000bdae:	924d                	.insn	2, 0x924d
8000bdb0:	010d                	.insn	2, 0x010d
8000bdb2:	0064                	.insn	2, 0x0064
8000bdb4:	0000                	.insn	2, 0x
8000bdb6:	0000                	.insn	2, 0x
8000bdb8:	8dea                	.insn	2, 0x8dea
8000bdba:	1a70                	.insn	2, 0x1a70
8000bdbc:	ee64                	.insn	2, 0xee64
8000bdbe:	da01                	.insn	2, 0xda01
8000bdc0:	006c0127          	.insn	4, 0x006c0127
8000bdc4:	0000                	.insn	2, 0x
8000bdc6:	0000                	.insn	2, 0x
8000bdc8:	774a                	.insn	2, 0x774a
8000bdca:	a3999aef          	jal	s5,7ffa5802 <.Lline_table_start2+0x7ffa4454>
8000bdce:	a26d                	.insn	2, 0xa26d
8000bdd0:	0142                	.insn	2, 0x0142
8000bdd2:	0074                	.insn	2, 0x0074
8000bdd4:	0000                	.insn	2, 0x
8000bdd6:	0000                	.insn	2, 0x
8000bdd8:	6b85                	.insn	2, 0x6b85
8000bdda:	b47d                	.insn	2, 0xb47d
8000bddc:	f209787b          	.insn	4, 0xf209787b
8000bde0:	015c                	.insn	2, 0x015c
8000bde2:	007c                	.insn	2, 0x007c
8000bde4:	0000                	.insn	2, 0x
8000bde6:	0000                	.insn	2, 0x
8000bde8:	79dd1877          	.insn	4, 0x79dd1877
8000bdec:	e4a1                	.insn	2, 0xe4a1
8000bdee:	b454                	.insn	2, 0xb454
8000bdf0:	00840177          	.insn	4, 0x00840177
8000bdf4:	0000                	.insn	2, 0x
8000bdf6:	0000                	.insn	2, 0x
8000bdf8:	c5c2                	.insn	2, 0xc5c2
8000bdfa:	86925b9b          	.insn	4, 0x86925b9b
8000bdfe:	0192865b          	.insn	4, 0x0192865b
8000be02:	008c                	.insn	2, 0x008c
8000be04:	0000                	.insn	2, 0x
8000be06:	0000                	.insn	2, 0x
8000be08:	5d3d                	.insn	2, 0x5d3d
8000be0a:	c896                	.insn	2, 0xc896
8000be0c:	53c5                	.insn	2, 0x53c5
8000be0e:	c835                	.insn	2, 0xc835
8000be10:	01ac                	.insn	2, 0x01ac
8000be12:	0094                	.insn	2, 0x0094
8000be14:	0000                	.insn	2, 0x
8000be16:	0000                	.insn	2, 0x
8000be18:	fa97a0b3          	.insn	4, 0xfa97a0b3
8000be1c:	b45c                	.insn	2, 0xb45c
8000be1e:	952a                	.insn	2, 0x952a
8000be20:	009c01c7          	.insn	4, 0x009c01c7
8000be24:	0000                	.insn	2, 0x
8000be26:	0000                	.insn	2, 0x
8000be28:	99a05fe3          	blez	s10,8000b7c6 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E+0x12>
8000be2c:	9fbd                	.insn	2, 0x9fbd
8000be2e:	de46                	.insn	2, 0xde46
8000be30:	01e1                	.insn	2, 0x01e1
8000be32:	00a4                	.insn	2, 0x00a4
8000be34:	0000                	.insn	2, 0x
8000be36:	0000                	.insn	2, 0x
8000be38:	8c25                	.insn	2, 0x8c25
8000be3a:	db39                	.insn	2, 0xdb39
8000be3c:	c234                	.insn	2, 0xc234
8000be3e:	01fca59b          	.insn	4, 0x01fca59b
8000be42:	00ac                	.insn	2, 0x00ac
8000be44:	0000                	.insn	2, 0x
8000be46:	0000                	.insn	2, 0x
8000be48:	9f5c                	.insn	2, 0x9f5c
8000be4a:	a398                	.insn	2, 0xa398
8000be4c:	9a72                	.insn	2, 0x9a72
8000be4e:	f6c6                	.insn	2, 0xf6c6
8000be50:	0216                	.insn	2, 0x0216
8000be52:	00b4                	.insn	2, 0x00b4
8000be54:	0000                	.insn	2, 0x
8000be56:	0000                	.insn	2, 0x
8000be58:	bece                	.insn	2, 0xbece
8000be5a:	54e9                	.insn	2, 0x54e9
8000be5c:	b7dcbf53          	.insn	4, 0xb7dcbf53
8000be60:	0231                	.insn	2, 0x0231
8000be62:	00bc                	.insn	2, 0x00bc
8000be64:	0000                	.insn	2, 0x
8000be66:	0000                	.insn	2, 0x
8000be68:	41e2                	.insn	2, 0x41e2
8000be6a:	f222                	.insn	2, 0xf222
8000be6c:	88fcf317          	auipc	t1,0x88fcf
8000be70:	024c                	.insn	2, 0x024c
8000be72:	00c4                	.insn	2, 0x00c4
8000be74:	0000                	.insn	2, 0x
8000be76:	0000                	.insn	2, 0x
8000be78:	78a5                	.insn	2, 0x78a5
8000be7a:	d35c                	.insn	2, 0xd35c
8000be7c:	cc20ce9b          	.insn	4, 0xcc20ce9b
8000be80:	0266                	.insn	2, 0x0266
8000be82:	00cc                	.insn	2, 0x00cc
8000be84:	0000                	.insn	2, 0x
8000be86:	0000                	.insn	2, 0x
8000be88:	53df 7b21 5af3      	.insn	6, 0x5af37b2153df
8000be8e:	9816                	.insn	2, 0x9816
8000be90:	0281                	.insn	2, 0x0281
8000be92:	00d4                	.insn	2, 0x00d4
8000be94:	0000                	.insn	2, 0x
8000be96:	0000                	.insn	2, 0x
8000be98:	303a                	.insn	2, 0x303a
8000be9a:	971f b5dc e2a0      	.insn	6, 0xe2a0b5dc971f
8000bea0:	00dc029b          	.insn	4, 0x00dc029b
8000bea4:	0000                	.insn	2, 0x
8000bea6:	0000                	.insn	2, 0x
8000bea8:	b396                	.insn	2, 0xb396
8000beaa:	d1535ce3          	bge	t1,s5,8000bbc2 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x14a>
8000beae:	a8d9                	.insn	2, 0xa8d9
8000beb0:	02b6                	.insn	2, 0x02b6
8000beb2:	00e4                	.insn	2, 0x00e4
8000beb4:	0000                	.insn	2, 0x
8000beb6:	0000                	.insn	2, 0x
8000beb8:	443c                	.insn	2, 0x443c
8000beba:	7cd9a4a7          	.insn	4, 0x7cd9a4a7
8000bebe:	02d0fb9b          	.insn	4, 0x02d0fb9b
8000bec2:	00ec                	.insn	2, 0x00ec
8000bec4:	0000                	.insn	2, 0x
8000bec6:	0000                	.insn	2, 0x
8000bec8:	4410                	.insn	2, 0x4410
8000beca:	a7a4                	.insn	2, 0xa7a4
8000becc:	4c4c                	.insn	2, 0x4c4c
8000bece:	bb76                	.insn	2, 0xbb76
8000bed0:	00f402eb          	.insn	4, 0x00f402eb
8000bed4:	0000                	.insn	2, 0x
8000bed6:	0000                	.insn	2, 0x
8000bed8:	9c1a                	.insn	2, 0x9c1a
8000beda:	b640                	.insn	2, 0xb640
8000bedc:	8bab8eef          	jal	t4,7ffc3f96 <.Lline_table_start2+0x7ffc2be8>
8000bee0:	0306                	.insn	2, 0x0306
8000bee2:	00fc                	.insn	2, 0x00fc
8000bee4:	0000                	.insn	2, 0x
8000bee6:	0000                	.insn	2, 0x
8000bee8:	842c                	.insn	2, 0x842c
8000beea:	ef10a657          	.insn	4, 0xef10a657
8000beee:	d01f 0320 0104      	.insn	6, 0x01040320d01f
8000bef4:	0000                	.insn	2, 0x
8000bef6:	0000                	.insn	2, 0x
8000bef8:	3129                	.insn	2, 0x3129
8000befa:	e991                	.insn	2, 0xe991
8000befc:	a4e5                	.insn	2, 0xa4e5
8000befe:	9b10                	.insn	2, 0x9b10
8000bf00:	010c033b          	.insn	4, 0x010c033b
8000bf04:	0000                	.insn	2, 0x
8000bf06:	0000                	.insn	2, 0x
8000bf08:	0c9d                	.insn	2, 0x0c9d
8000bf0a:	a19c                	.insn	2, 0xa19c
8000bf0c:	e7109bfb          	.insn	4, 0xe7109bfb
8000bf10:	0355                	.insn	2, 0x0355
8000bf12:	0114                	.insn	2, 0x0114
8000bf14:	0000                	.insn	2, 0x
8000bf16:	0000                	.insn	2, 0x
8000bf18:	f429                	.insn	2, 0xf429
8000bf1a:	20d9623b          	.insn	4, 0x20d9623b
8000bf1e:	ac28                	.insn	2, 0xac28
8000bf20:	0370                	.insn	2, 0x0370
8000bf22:	011c                	.insn	2, 0x011c
8000bf24:	0000                	.insn	2, 0x
8000bf26:	0000                	.insn	2, 0x
8000bf28:	cf85                	.insn	2, 0xcf85
8000bf2a:	4b5e7aa7          	.insn	4, 0x4b5e7aa7
8000bf2e:	8044                	.insn	2, 0x8044
8000bf30:	0124038b          	.insn	4, 0x0124038b
8000bf34:	0000                	.insn	2, 0x
8000bf36:	0000                	.insn	2, 0x
8000bf38:	dd2d                	.insn	2, 0xdd2d
8000bf3a:	03ac                	.insn	2, 0x03ac
8000bf3c:	e440                	.insn	2, 0xe440
8000bf3e:	bf21                	.insn	2, 0xbf21
8000bf40:	03a5                	.insn	2, 0x03a5
8000bf42:	012c                	.insn	2, 0x012c
8000bf44:	0000                	.insn	2, 0x
8000bf46:	0000                	.insn	2, 0x
8000bf48:	5e44ff8f          	.insn	4, 0x5e44ff8f
8000bf4c:	8e679c2f          	.insn	4, 0x8e679c2f
8000bf50:	03c0                	.insn	2, 0x03c0
8000bf52:	0134                	.insn	2, 0x0134
8000bf54:	0000                	.insn	2, 0x
8000bf56:	0000                	.insn	2, 0x
8000bf58:	b841                	.insn	2, 0xb841
8000bf5a:	9c8c                	.insn	2, 0x9c8c
8000bf5c:	179d                	.insn	2, 0x179d
8000bf5e:	03dad433          	.insn	4, 0x03dad433
8000bf62:	013c                	.insn	2, 0x013c
8000bf64:	0000                	.insn	2, 0x
8000bf66:	0000                	.insn	2, 0x
8000bf68:	1ba9                	.insn	2, 0x1ba9
8000bf6a:	db92b4e3          	.insn	4, 0xdb92b4e3
8000bf6e:	9e19                	.insn	2, 0x9e19
8000bf70:	03f5                	.insn	2, 0x03f5
8000bf72:	0144                	.insn	2, 0x0144
8000bf74:	0000                	.insn	2, 0x
8000bf76:	0000                	.insn	2, 0x
8000bf78:	77d9                	.insn	2, 0x77d9
8000bf7a:	badf bf6e eb96      	.insn	6, 0xeb96bf6ebadf
8000bf80:	014c040f          	.insn	4, 0x014c040f
8000bf84:	0000                	.insn	2, 0x
	...

8000bf88 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.51>:
8000bf88:	65726f63          	bltu	tp,s7,8000c5e6 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x6a>
8000bf8c:	6372732f          	.insn	4, 0x6372732f
8000bf90:	6d756e2f          	.insn	4, 0x6d756e2f
8000bf94:	746c662f          	.insn	4, 0x746c662f
8000bf98:	6432                	.insn	2, 0x6432
8000bf9a:	6365                	.insn	2, 0x6365
8000bf9c:	7274732f          	.insn	4, 0x7274732f
8000bfa0:	7461                	.insn	2, 0x7461
8000bfa2:	6765                	.insn	2, 0x6765
8000bfa4:	2f79                	.insn	2, 0x2f79
8000bfa6:	73697267          	.insn	4, 0x73697267
8000bfaa:	2e75                	.insn	2, 0x2e75
8000bfac:	7372                	.insn	2, 0x7372
	...

8000bfb0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>:
8000bfb0:	bf88                	.insn	2, 0xbf88
8000bfb2:	8000                	.insn	2, 0x8000
8000bfb4:	0026                	.insn	2, 0x0026
8000bfb6:	0000                	.insn	2, 0x
8000bfb8:	007d                	.insn	2, 0x007d
8000bfba:	0000                	.insn	2, 0x
8000bfbc:	0015                	.insn	2, 0x0015
	...

8000bfc0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.53>:
8000bfc0:	bf88                	.insn	2, 0xbf88
8000bfc2:	8000                	.insn	2, 0x8000
8000bfc4:	0026                	.insn	2, 0x0026
8000bfc6:	0000                	.insn	2, 0x
8000bfc8:	00a9                	.insn	2, 0x00a9
8000bfca:	0000                	.insn	2, 0x
8000bfcc:	0005                	.insn	2, 0x0005
	...

8000bfd0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.54>:
8000bfd0:	bf88                	.insn	2, 0xbf88
8000bfd2:	8000                	.insn	2, 0x8000
8000bfd4:	0026                	.insn	2, 0x0026
8000bfd6:	0000                	.insn	2, 0x
8000bfd8:	00aa                	.insn	2, 0x00aa
8000bfda:	0000                	.insn	2, 0x
8000bfdc:	0005                	.insn	2, 0x0005
	...

8000bfe0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.55>:
8000bfe0:	bf88                	.insn	2, 0xbf88
8000bfe2:	8000                	.insn	2, 0x8000
8000bfe4:	0026                	.insn	2, 0x0026
8000bfe6:	0000                	.insn	2, 0x
8000bfe8:	000000ab          	.insn	4, 0x00ab
8000bfec:	0005                	.insn	2, 0x0005
	...

8000bff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.56>:
8000bff0:	bf88                	.insn	2, 0xbf88
8000bff2:	8000                	.insn	2, 0x8000
8000bff4:	0026                	.insn	2, 0x0026
8000bff6:	0000                	.insn	2, 0x
8000bff8:	00ae                	.insn	2, 0x00ae
8000bffa:	0000                	.insn	2, 0x
8000bffc:	0005                	.insn	2, 0x0005
	...

8000c000 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57>:
8000c000:	7361                	.insn	2, 0x7361
8000c002:	74726573          	.insn	4, 0x74726573
8000c006:	6f69                	.insn	2, 0x6f69
8000c008:	206e                	.insn	2, 0x206e
8000c00a:	6166                	.insn	2, 0x6166
8000c00c:	6c69                	.insn	2, 0x6c69
8000c00e:	6465                	.insn	2, 0x6465
8000c010:	203a                	.insn	2, 0x203a
8000c012:	2e64                	.insn	2, 0x2e64
8000c014:	616d                	.insn	2, 0x616d
8000c016:	746e                	.insn	2, 0x746e
8000c018:	2b20                	.insn	2, 0x2b20
8000c01a:	6420                	.insn	2, 0x6420
8000c01c:	702e                	.insn	2, 0x702e
8000c01e:	756c                	.insn	2, 0x756c
8000c020:	203c2073          	.insn	4, 0x203c2073
8000c024:	3128                	.insn	2, 0x3128
8000c026:	3c20                	.insn	2, 0x3c20
8000c028:	203c                	.insn	2, 0x203c
8000c02a:	3136                	.insn	2, 0x3136
8000c02c:	0029                	.insn	2, 0x0029
	...

8000c030 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.58>:
8000c030:	bf88                	.insn	2, 0xbf88
8000c032:	8000                	.insn	2, 0x8000
8000c034:	0026                	.insn	2, 0x0026
8000c036:	0000                	.insn	2, 0x
8000c038:	000000af          	.insn	4, 0x00af
8000c03c:	0005                	.insn	2, 0x0005
	...

8000c040 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.59>:
8000c040:	bf88                	.insn	2, 0xbf88
8000c042:	8000                	.insn	2, 0x8000
8000c044:	0026                	.insn	2, 0x0026
8000c046:	0000                	.insn	2, 0x
8000c048:	010a                	.insn	2, 0x010a
8000c04a:	0000                	.insn	2, 0x
8000c04c:	0011                	.insn	2, 0x0011
	...

8000c050 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.60>:
8000c050:	bf88                	.insn	2, 0xbf88
8000c052:	8000                	.insn	2, 0x8000
8000c054:	0026                	.insn	2, 0x0026
8000c056:	0000                	.insn	2, 0x
8000c058:	010d                	.insn	2, 0x010d
8000c05a:	0000                	.insn	2, 0x
8000c05c:	0009                	.insn	2, 0x0009
	...

8000c060 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.61>:
8000c060:	bf88                	.insn	2, 0xbf88
8000c062:	8000                	.insn	2, 0x8000
8000c064:	0026                	.insn	2, 0x0026
8000c066:	0000                	.insn	2, 0x
8000c068:	0140                	.insn	2, 0x0140
8000c06a:	0000                	.insn	2, 0x
8000c06c:	0009                	.insn	2, 0x0009
	...

8000c070 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.62>:
8000c070:	bf88                	.insn	2, 0xbf88
8000c072:	8000                	.insn	2, 0x8000
8000c074:	0026                	.insn	2, 0x0026
8000c076:	0000                	.insn	2, 0x
8000c078:	00ad                	.insn	2, 0x00ad
8000c07a:	0000                	.insn	2, 0x
8000c07c:	0005                	.insn	2, 0x0005
	...

8000c080 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.63>:
8000c080:	bf88                	.insn	2, 0xbf88
8000c082:	8000                	.insn	2, 0x8000
8000c084:	0026                	.insn	2, 0x0026
8000c086:	0000                	.insn	2, 0x
8000c088:	00ac                	.insn	2, 0x00ac
8000c08a:	0000                	.insn	2, 0x
8000c08c:	0005                	.insn	2, 0x0005
	...

8000c090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>:
8000c090:	7361                	.insn	2, 0x7361
8000c092:	74726573          	.insn	4, 0x74726573
8000c096:	6f69                	.insn	2, 0x6f69
8000c098:	206e                	.insn	2, 0x206e
8000c09a:	6166                	.insn	2, 0x6166
8000c09c:	6c69                	.insn	2, 0x6c69
8000c09e:	6465                	.insn	2, 0x6465
8000c0a0:	203a                	.insn	2, 0x203a
8000c0a2:	6221                	.insn	2, 0x6221
8000c0a4:	6675                	.insn	2, 0x6675
8000c0a6:	692e                	.insn	2, 0x692e
8000c0a8:	6d655f73          	.insn	4, 0x6d655f73
8000c0ac:	7470                	.insn	2, 0x7470
8000c0ae:	2879                	.insn	2, 0x2879
8000c0b0:	0029                	.insn	2, 0x0029
	...

8000c0b4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.65>:
8000c0b4:	bf88                	.insn	2, 0xbf88
8000c0b6:	8000                	.insn	2, 0x8000
8000c0b8:	0026                	.insn	2, 0x0026
8000c0ba:	0000                	.insn	2, 0x
8000c0bc:	01dc                	.insn	2, 0x01dc
8000c0be:	0000                	.insn	2, 0x
8000c0c0:	0005                	.insn	2, 0x0005
	...

8000c0c4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.66>:
8000c0c4:	7361                	.insn	2, 0x7361
8000c0c6:	74726573          	.insn	4, 0x74726573
8000c0ca:	6f69                	.insn	2, 0x6f69
8000c0cc:	206e                	.insn	2, 0x206e
8000c0ce:	6166                	.insn	2, 0x6166
8000c0d0:	6c69                	.insn	2, 0x6c69
8000c0d2:	6465                	.insn	2, 0x6465
8000c0d4:	203a                	.insn	2, 0x203a
8000c0d6:	2e64                	.insn	2, 0x2e64
8000c0d8:	616d                	.insn	2, 0x616d
8000c0da:	746e                	.insn	2, 0x746e
8000c0dc:	3c20                	.insn	2, 0x3c20
8000c0de:	2820                	.insn	2, 0x2820
8000c0e0:	2031                	.insn	2, 0x2031
8000c0e2:	3c3c                	.insn	2, 0x3c3c
8000c0e4:	3620                	.insn	2, 0x3620
8000c0e6:	2931                	.insn	2, 0x2931

8000c0e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.67>:
8000c0e8:	bf88                	.insn	2, 0xbf88
8000c0ea:	8000                	.insn	2, 0x8000
8000c0ec:	0026                	.insn	2, 0x0026
8000c0ee:	0000                	.insn	2, 0x
8000c0f0:	01dd                	.insn	2, 0x01dd
8000c0f2:	0000                	.insn	2, 0x
8000c0f4:	0005                	.insn	2, 0x0005
	...

8000c0f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.68>:
8000c0f8:	bf88                	.insn	2, 0xbf88
8000c0fa:	8000                	.insn	2, 0x8000
8000c0fc:	0026                	.insn	2, 0x0026
8000c0fe:	0000                	.insn	2, 0x
8000c100:	01de                	.insn	2, 0x01de
8000c102:	0000                	.insn	2, 0x
8000c104:	0005                	.insn	2, 0x0005
	...

8000c108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>:
8000c108:	0001                	.insn	2, 0x0001
8000c10a:	0000                	.insn	2, 0x
8000c10c:	000a                	.insn	2, 0x000a
8000c10e:	0000                	.insn	2, 0x
8000c110:	0064                	.insn	2, 0x0064
8000c112:	0000                	.insn	2, 0x
8000c114:	03e8                	.insn	2, 0x03e8
8000c116:	0000                	.insn	2, 0x
8000c118:	2710                	.insn	2, 0x2710
8000c11a:	0000                	.insn	2, 0x
8000c11c:	86a0                	.insn	2, 0x86a0
8000c11e:	0001                	.insn	2, 0x0001
8000c120:	4240                	.insn	2, 0x4240
8000c122:	9680000f          	.insn	4, 0x9680000f
8000c126:	0098                	.insn	2, 0x0098
8000c128:	e100                	.insn	2, 0xe100
8000c12a:	05f5                	.insn	2, 0x05f5
8000c12c:	ca00                	.insn	2, 0xca00
8000c12e:	3b9a                	.insn	2, 0x3b9a

8000c130 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.70>:
8000c130:	bf88                	.insn	2, 0xbf88
8000c132:	8000                	.insn	2, 0x8000
8000c134:	0026                	.insn	2, 0x0026
8000c136:	0000                	.insn	2, 0x
8000c138:	00000233          	add	tp,zero,zero
8000c13c:	0011                	.insn	2, 0x0011
	...

8000c140 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.71>:
8000c140:	bf88                	.insn	2, 0xbf88
8000c142:	8000                	.insn	2, 0x8000
8000c144:	0026                	.insn	2, 0x0026
8000c146:	0000                	.insn	2, 0x
8000c148:	0236                	.insn	2, 0x0236
8000c14a:	0000                	.insn	2, 0x
8000c14c:	0009                	.insn	2, 0x0009
	...

8000c150 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.72>:
8000c150:	bf88                	.insn	2, 0xbf88
8000c152:	8000                	.insn	2, 0x8000
8000c154:	0026                	.insn	2, 0x0026
8000c156:	0000                	.insn	2, 0x
8000c158:	026c                	.insn	2, 0x026c
8000c15a:	0000                	.insn	2, 0x
8000c15c:	0009                	.insn	2, 0x0009
	...

8000c160 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.73>:
8000c160:	bf88                	.insn	2, 0xbf88
8000c162:	8000                	.insn	2, 0x8000
8000c164:	0026                	.insn	2, 0x0026
8000c166:	0000                	.insn	2, 0x
8000c168:	000002e3          	beqz	zero,8000c96c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3f0>
8000c16c:	004e                	.insn	2, 0x004e
	...

8000c170 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74>:
8000c170:	bf88                	.insn	2, 0xbf88
8000c172:	8000                	.insn	2, 0x8000
8000c174:	0026                	.insn	2, 0x0026
8000c176:	0000                	.insn	2, 0x
8000c178:	000002ef          	jal	t0,8000c178 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74+0x8>
8000c17c:	004a                	.insn	2, 0x004a
	...

8000c180 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.75>:
8000c180:	bf88                	.insn	2, 0xbf88
8000c182:	8000                	.insn	2, 0x8000
8000c184:	0026                	.insn	2, 0x0026
8000c186:	0000                	.insn	2, 0x
8000c188:	02cc                	.insn	2, 0x02cc
8000c18a:	0000                	.insn	2, 0x
8000c18c:	004a                	.insn	2, 0x004a
	...

8000c190 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.76>:
8000c190:	65726f63          	bltu	tp,s7,8000c7ee <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x272>
8000c194:	6372732f          	.insn	4, 0x6372732f
8000c198:	6d756e2f          	.insn	4, 0x6d756e2f
8000c19c:	746c662f          	.insn	4, 0x746c662f
8000c1a0:	6432                	.insn	2, 0x6432
8000c1a2:	6365                	.insn	2, 0x6365
8000c1a4:	646f6d2f          	.insn	4, 0x646f6d2f
8000c1a8:	722e                	.insn	2, 0x722e
8000c1aa:	          	.insn	4, 0xc1900073

8000c1ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.77>:
8000c1ac:	c190                	.insn	2, 0xc190
8000c1ae:	8000                	.insn	2, 0x8000
8000c1b0:	0000001b          	.insn	4, 0x001b
8000c1b4:	000000bb          	.insn	4, 0x00bb
8000c1b8:	0005                	.insn	2, 0x0005
	...

8000c1bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.78>:
8000c1bc:	7361                	.insn	2, 0x7361
8000c1be:	74726573          	.insn	4, 0x74726573
8000c1c2:	6f69                	.insn	2, 0x6f69
8000c1c4:	206e                	.insn	2, 0x206e
8000c1c6:	6166                	.insn	2, 0x6166
8000c1c8:	6c69                	.insn	2, 0x6c69
8000c1ca:	6465                	.insn	2, 0x6465
8000c1cc:	203a                	.insn	2, 0x203a
8000c1ce:	7562                	.insn	2, 0x7562
8000c1d0:	5b66                	.insn	2, 0x5b66
8000c1d2:	5d30                	.insn	2, 0x5d30
8000c1d4:	3e20                	.insn	2, 0x3e20
8000c1d6:	6220                	.insn	2, 0x6220
8000c1d8:	00273027          	.insn	4, 0x00273027

8000c1dc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.79>:
8000c1dc:	c190                	.insn	2, 0xc190
8000c1de:	8000                	.insn	2, 0x8000
8000c1e0:	0000001b          	.insn	4, 0x001b
8000c1e4:	00bc                	.insn	2, 0x00bc
8000c1e6:	0000                	.insn	2, 0x
8000c1e8:	0005                	.insn	2, 0x0005
	...

8000c1ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.80>:
8000c1ec:	7361                	.insn	2, 0x7361
8000c1ee:	74726573          	.insn	4, 0x74726573
8000c1f2:	6f69                	.insn	2, 0x6f69
8000c1f4:	206e                	.insn	2, 0x206e
8000c1f6:	6166                	.insn	2, 0x6166
8000c1f8:	6c69                	.insn	2, 0x6c69
8000c1fa:	6465                	.insn	2, 0x6465
8000c1fc:	203a                	.insn	2, 0x203a
8000c1fe:	6170                	.insn	2, 0x6170
8000c200:	7472                	.insn	2, 0x7472
8000c202:	656c2e73          	.insn	4, 0x656c2e73
8000c206:	286e                	.insn	2, 0x286e
8000c208:	2029                	.insn	2, 0x2029
8000c20a:	3d3e                	.insn	2, 0x3d3e
8000c20c:	3420                	.insn	2, 0x3420
	...

8000c210 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.81>:
8000c210:	c190                	.insn	2, 0xc190
8000c212:	8000                	.insn	2, 0x8000
8000c214:	0000001b          	.insn	4, 0x001b
8000c218:	00bd                	.insn	2, 0x00bd
8000c21a:	0000                	.insn	2, 0x
8000c21c:	0005                	.insn	2, 0x0005
	...

8000c220 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>:
8000c220:	                	.insn	2, 0x302e

8000c221 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>:
8000c221:	2e30                	.insn	2, 0x2e30

8000c223 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>:
8000c223:	                	.insn	2, 0x2b2d

8000c224 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>:
8000c224:	          	.insn	4, 0x4e614e2b

8000c225 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>:
8000c225:	614e                	.insn	2, 0x614e
8000c227:	                	.insn	2, 0x694e

8000c228 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>:
8000c228:	6e69                	.insn	2, 0x6e69
8000c22a:	                	.insn	2, 0x3066

8000c22b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>:
8000c22b:	                	.insn	2, 0x6130

8000c22c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.106>:
8000c22c:	7361                	.insn	2, 0x7361
8000c22e:	74726573          	.insn	4, 0x74726573
8000c232:	6f69                	.insn	2, 0x6f69
8000c234:	206e                	.insn	2, 0x206e
8000c236:	6166                	.insn	2, 0x6166
8000c238:	6c69                	.insn	2, 0x6c69
8000c23a:	6465                	.insn	2, 0x6465
8000c23c:	203a                	.insn	2, 0x203a
8000c23e:	7562                	.insn	2, 0x7562
8000c240:	2e66                	.insn	2, 0x2e66
8000c242:	656c                	.insn	2, 0x656c
8000c244:	286e                	.insn	2, 0x286e
8000c246:	2029                	.insn	2, 0x2029
8000c248:	3d3e                	.insn	2, 0x3d3e
8000c24a:	6d20                	.insn	2, 0x6d20
8000c24c:	7861                	.insn	2, 0x7861
8000c24e:	656c                	.insn	2, 0x656c
8000c250:	006e                	.insn	2, 0x006e
	...

8000c254 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.107>:
8000c254:	c190                	.insn	2, 0xc190
8000c256:	8000                	.insn	2, 0x8000
8000c258:	0000001b          	.insn	4, 0x001b
8000c25c:	027e                	.insn	2, 0x027e
8000c25e:	0000                	.insn	2, 0x
8000c260:	000d                	.insn	2, 0x000d
	...

8000c264 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.138>:
8000c264:	2820                	.insn	2, 0x2820
8000c266:	2031                	.insn	2, 0x2031
8000c268:	3c3c                	.insn	2, 0x3c3c
8000c26a:	                	.insn	2, 0x2920

8000c26b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.139>:
8000c26b:	                	.insn	2, 0x0129

8000c26c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.140>:
8000c26c:	0001                	.insn	2, 0x0001
8000c26e:	0000                	.insn	2, 0x
8000c270:	0000                	.insn	2, 0x
8000c272:	0000                	.insn	2, 0x
8000c274:	c264                	.insn	2, 0xc264
8000c276:	8000                	.insn	2, 0x8000
8000c278:	00000007          	.insn	4, 0x0007
8000c27c:	8000c26b          	.insn	4, 0x8000c26b
8000c280:	0001                	.insn	2, 0x0001
	...

8000c284 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.210>:
8000c284:	                	.insn	2, 0x633a

8000c285 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.220>:
8000c285:	6c6c6163          	bltu	s8,t1,8000c947 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3cb>
8000c289:	6465                	.insn	2, 0x6465
8000c28b:	6020                	.insn	2, 0x6020
8000c28d:	6974704f          	.insn	4, 0x6974704f
8000c291:	3a3a6e6f          	jal	t3,800b2e33 <KALLOC_BUFFER+0xa4e33>
8000c295:	6e75                	.insn	2, 0x6e75
8000c297:	70617277          	.insn	4, 0x70617277
8000c29b:	2928                	.insn	2, 0x2928
8000c29d:	2060                	.insn	2, 0x2060
8000c29f:	61206e6f          	jal	t3,800128b1 <KALLOC_BUFFER+0x48b1>
8000c2a3:	6020                	.insn	2, 0x6020
8000c2a5:	6f4e                	.insn	2, 0x6f4e
8000c2a7:	656e                	.insn	2, 0x656e
8000c2a9:	2060                	.insn	2, 0x2060
8000c2ab:	6176                	.insn	2, 0x6176
8000c2ad:	756c                	.insn	2, 0x756c
8000c2af:	                	.insn	2, 0x0165

8000c2b0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.221>:
8000c2b0:	0001                	.insn	2, 0x0001
8000c2b2:	0000                	.insn	2, 0x
8000c2b4:	0000                	.insn	2, 0x
8000c2b6:	0000                	.insn	2, 0x
8000c2b8:	c284                	.insn	2, 0xc284
8000c2ba:	8000                	.insn	2, 0x8000
8000c2bc:	0001                	.insn	2, 0x0001
8000c2be:	0000                	.insn	2, 0x
8000c2c0:	c284                	.insn	2, 0xc284
8000c2c2:	8000                	.insn	2, 0x8000
8000c2c4:	0001                	.insn	2, 0x0001
	...

8000c2c8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.222>:
8000c2c8:	6170                	.insn	2, 0x6170
8000c2ca:	696e                	.insn	2, 0x696e
8000c2cc:	64656b63          	bltu	a0,t1,8000c922 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3a6>
8000c2d0:	6120                	.insn	2, 0x6120
8000c2d2:	2074                	.insn	2, 0x2074

8000c2d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.223>:
8000c2d4:	0a3a                	.insn	2, 0x0a3a

8000c2d6 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.230>:
8000c2d6:	6220                	.insn	2, 0x6220
8000c2d8:	7475                	.insn	2, 0x7475
8000c2da:	7420                	.insn	2, 0x7420
8000c2dc:	6568                	.insn	2, 0x6568
8000c2de:	6920                	.insn	2, 0x6920
8000c2e0:	646e                	.insn	2, 0x646e
8000c2e2:	7865                	.insn	2, 0x7865
8000c2e4:	6920                	.insn	2, 0x6920
8000c2e6:	          	.insn	4, 0xb6f42073

8000c2e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.231>:
8000c2e8:	b6f4                	.insn	2, 0xb6f4
8000c2ea:	8000                	.insn	2, 0x8000
8000c2ec:	0020                	.insn	2, 0x0020
8000c2ee:	0000                	.insn	2, 0x
8000c2f0:	c2d6                	.insn	2, 0xc2d6
8000c2f2:	8000                	.insn	2, 0x8000
8000c2f4:	0012                	.insn	2, 0x0012
	...

8000c2f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.238>:
8000c2f8:	0000                	.insn	2, 0x
8000c2fa:	0000                	.insn	2, 0x
8000c2fc:	0004                	.insn	2, 0x0004
8000c2fe:	0000                	.insn	2, 0x
8000c300:	0004                	.insn	2, 0x0004
8000c302:	0000                	.insn	2, 0x
8000c304:	9b30                	.insn	2, 0x9b30
8000c306:	8000                	.insn	2, 0x8000

8000c308 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.240>:
8000c308:	3d3d                	.insn	2, 0x3d3d

8000c30a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.241>:
8000c30a:	3d21                	.insn	2, 0x3d21

8000c30c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.242>:
8000c30c:	616d                	.insn	2, 0x616d
8000c30e:	6374                	.insn	2, 0x6374
8000c310:	6568                	.insn	2, 0x6568
8000c312:	          	.insn	4, 0x69722073

8000c313 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.244>:
8000c313:	7220                	.insn	2, 0x7220
8000c315:	6769                	.insn	2, 0x6769
8000c317:	7468                	.insn	2, 0x7468
8000c319:	2060                	.insn	2, 0x2060
8000c31b:	6166                	.insn	2, 0x6166
8000c31d:	6c69                	.insn	2, 0x6c69
8000c31f:	6465                	.insn	2, 0x6465
8000c321:	200a                	.insn	2, 0x200a
8000c323:	6c20                	.insn	2, 0x6c20
8000c325:	6665                	.insn	2, 0x6665
8000c327:	3a74                	.insn	2, 0x3a74
8000c329:	                	.insn	2, 0x0a20

8000c32a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.245>:
8000c32a:	200a                	.insn	2, 0x200a
8000c32c:	6972                	.insn	2, 0x6972
8000c32e:	3a746867          	.insn	4, 0x3a746867
8000c332:	0020                	.insn	2, 0x0020

8000c334 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.246>:
8000c334:	b050                	.insn	2, 0xb050
8000c336:	8000                	.insn	2, 0x8000
8000c338:	0010                	.insn	2, 0x0010
8000c33a:	0000                	.insn	2, 0x
8000c33c:	8000c313          	xori	t1,ra,-2048
8000c340:	00000017          	auipc	zero,0x0
8000c344:	c32a                	.insn	2, 0xc32a
8000c346:	8000                	.insn	2, 0x8000
8000c348:	0009                	.insn	2, 0x0009
	...

8000c34c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.248>:
8000c34c:	200a                	.insn	2, 0x200a
8000c34e:	6c20                	.insn	2, 0x6c20
8000c350:	6665                	.insn	2, 0x6665
8000c352:	3a74                	.insn	2, 0x3a74
8000c354:	0020                	.insn	2, 0x0020
	...

8000c358 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.249>:
8000c358:	b050                	.insn	2, 0xb050
8000c35a:	8000                	.insn	2, 0x8000
8000c35c:	0010                	.insn	2, 0x0010
8000c35e:	0000                	.insn	2, 0x
8000c360:	b090                	.insn	2, 0xb090
8000c362:	8000                	.insn	2, 0x8000
8000c364:	0010                	.insn	2, 0x0010
8000c366:	0000                	.insn	2, 0x
8000c368:	c34c                	.insn	2, 0xc34c
8000c36a:	8000                	.insn	2, 0x8000
8000c36c:	0009                	.insn	2, 0x0009
8000c36e:	0000                	.insn	2, 0x
8000c370:	c32a                	.insn	2, 0xc32a
8000c372:	8000                	.insn	2, 0x8000
8000c374:	0009                	.insn	2, 0x0009
	...

8000c378 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>:
8000c378:	203a                	.insn	2, 0x203a
	...

8000c37c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.251>:
8000c37c:	0001                	.insn	2, 0x0001
8000c37e:	0000                	.insn	2, 0x
8000c380:	0000                	.insn	2, 0x
8000c382:	0000                	.insn	2, 0x
8000c384:	c378                	.insn	2, 0xc378
8000c386:	8000                	.insn	2, 0x8000
8000c388:	0002                	.insn	2, 0x0002
	...

8000c38c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>:
8000c38c:	0000                	.insn	2, 0x
8000c38e:	0000                	.insn	2, 0x
8000c390:	000c                	.insn	2, 0x000c
8000c392:	0000                	.insn	2, 0x
8000c394:	0004                	.insn	2, 0x0004
8000c396:	0000                	.insn	2, 0x
8000c398:	7004                	.insn	2, 0x7004
8000c39a:	8000                	.insn	2, 0x8000
8000c39c:	72a0                	.insn	2, 0x72a0
8000c39e:	8000                	.insn	2, 0x8000
8000c3a0:	7ba8                	.insn	2, 0x7ba8
8000c3a2:	8000                	.insn	2, 0x8000

8000c3a4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.254>:
8000c3a4:	7b20                	.insn	2, 0x7b20
8000c3a6:	                	.insn	2, 0x2c20

8000c3a7 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.255>:
8000c3a7:	202c                	.insn	2, 0x202c

8000c3a9 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.256>:
8000c3a9:	7b20                	.insn	2, 0x7b20
8000c3ab:	                	.insn	2, 0x2c0a

8000c3ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.257>:
8000c3ac:	0a2c                	.insn	2, 0x0a2c

8000c3ae <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.261>:
8000c3ae:	                	.insn	2, 0x207d

8000c3af <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.262>:
8000c3af:	7d20                	.insn	2, 0x7d20

8000c3b1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>:
8000c3b1:	7830                	.insn	2, 0x7830

8000c3b3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>:
8000c3b3:	3030                	.insn	2, 0x3030
8000c3b5:	3130                	.insn	2, 0x3130
8000c3b7:	3230                	.insn	2, 0x3230
8000c3b9:	3330                	.insn	2, 0x3330
8000c3bb:	3430                	.insn	2, 0x3430
8000c3bd:	3530                	.insn	2, 0x3530
8000c3bf:	3630                	.insn	2, 0x3630
8000c3c1:	3730                	.insn	2, 0x3730
8000c3c3:	3830                	.insn	2, 0x3830
8000c3c5:	3930                	.insn	2, 0x3930
8000c3c7:	3031                	.insn	2, 0x3031
8000c3c9:	3131                	.insn	2, 0x3131
8000c3cb:	3231                	.insn	2, 0x3231
8000c3cd:	3331                	.insn	2, 0x3331
8000c3cf:	3431                	.insn	2, 0x3431
8000c3d1:	3531                	.insn	2, 0x3531
8000c3d3:	3631                	.insn	2, 0x3631
8000c3d5:	3731                	.insn	2, 0x3731
8000c3d7:	3831                	.insn	2, 0x3831
8000c3d9:	3931                	.insn	2, 0x3931
8000c3db:	3032                	.insn	2, 0x3032
8000c3dd:	3132                	.insn	2, 0x3132
8000c3df:	3232                	.insn	2, 0x3232
8000c3e1:	3332                	.insn	2, 0x3332
8000c3e3:	3432                	.insn	2, 0x3432
8000c3e5:	3532                	.insn	2, 0x3532
8000c3e7:	3632                	.insn	2, 0x3632
8000c3e9:	3732                	.insn	2, 0x3732
8000c3eb:	3832                	.insn	2, 0x3832
8000c3ed:	3932                	.insn	2, 0x3932
8000c3ef:	31333033          	.insn	4, 0x31333033
8000c3f3:	33333233          	.insn	4, 0x33333233
8000c3f7:	35333433          	.insn	4, 0x35333433
8000c3fb:	37333633          	.insn	4, 0x37333633
8000c3ff:	39333833          	.insn	4, 0x39333833
8000c403:	3034                	.insn	2, 0x3034
8000c405:	3134                	.insn	2, 0x3134
8000c407:	3234                	.insn	2, 0x3234
8000c409:	3334                	.insn	2, 0x3334
8000c40b:	3434                	.insn	2, 0x3434
8000c40d:	3534                	.insn	2, 0x3534
8000c40f:	3634                	.insn	2, 0x3634
8000c411:	3734                	.insn	2, 0x3734
8000c413:	3834                	.insn	2, 0x3834
8000c415:	3934                	.insn	2, 0x3934
8000c417:	3035                	.insn	2, 0x3035
8000c419:	3135                	.insn	2, 0x3135
8000c41b:	3235                	.insn	2, 0x3235
8000c41d:	3335                	.insn	2, 0x3335
8000c41f:	3435                	.insn	2, 0x3435
8000c421:	3535                	.insn	2, 0x3535
8000c423:	3635                	.insn	2, 0x3635
8000c425:	3735                	.insn	2, 0x3735
8000c427:	3835                	.insn	2, 0x3835
8000c429:	3935                	.insn	2, 0x3935
8000c42b:	3036                	.insn	2, 0x3036
8000c42d:	3136                	.insn	2, 0x3136
8000c42f:	3236                	.insn	2, 0x3236
8000c431:	3336                	.insn	2, 0x3336
8000c433:	3436                	.insn	2, 0x3436
8000c435:	3536                	.insn	2, 0x3536
8000c437:	3636                	.insn	2, 0x3636
8000c439:	3736                	.insn	2, 0x3736
8000c43b:	3836                	.insn	2, 0x3836
8000c43d:	3936                	.insn	2, 0x3936
8000c43f:	31373037          	lui	zero,0x31373
8000c443:	33373237          	lui	tp,0x33373
8000c447:	35373437          	lui	s0,0x35373
8000c44b:	37373637          	lui	a2,0x37373
8000c44f:	39373837          	lui	a6,0x39373
8000c453:	3038                	.insn	2, 0x3038
8000c455:	3138                	.insn	2, 0x3138
8000c457:	3238                	.insn	2, 0x3238
8000c459:	3338                	.insn	2, 0x3338
8000c45b:	3438                	.insn	2, 0x3438
8000c45d:	3538                	.insn	2, 0x3538
8000c45f:	3638                	.insn	2, 0x3638
8000c461:	3738                	.insn	2, 0x3738
8000c463:	3838                	.insn	2, 0x3838
8000c465:	3938                	.insn	2, 0x3938
8000c467:	3039                	.insn	2, 0x3039
8000c469:	3139                	.insn	2, 0x3139
8000c46b:	3239                	.insn	2, 0x3239
8000c46d:	3339                	.insn	2, 0x3339
8000c46f:	3439                	.insn	2, 0x3439
8000c471:	3539                	.insn	2, 0x3539
8000c473:	3639                	.insn	2, 0x3639
8000c475:	3739                	.insn	2, 0x3739
8000c477:	3839                	.insn	2, 0x3839
8000c479:	3939                	.insn	2, 0x3939

8000c47b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.299>:
8000c47b:	3030                	.insn	2, 0x3030
8000c47d:	3030                	.insn	2, 0x3030
8000c47f:	3030                	.insn	2, 0x3030
8000c481:	3030                	.insn	2, 0x3030
8000c483:	3030                	.insn	2, 0x3030
8000c485:	3030                	.insn	2, 0x3030
8000c487:	3030                	.insn	2, 0x3030
8000c489:	3030                	.insn	2, 0x3030
8000c48b:	3030                	.insn	2, 0x3030
8000c48d:	3030                	.insn	2, 0x3030
8000c48f:	3030                	.insn	2, 0x3030
8000c491:	3030                	.insn	2, 0x3030
8000c493:	3030                	.insn	2, 0x3030
8000c495:	3030                	.insn	2, 0x3030
8000c497:	3030                	.insn	2, 0x3030
8000c499:	3030                	.insn	2, 0x3030
8000c49b:	3030                	.insn	2, 0x3030
8000c49d:	3030                	.insn	2, 0x3030
8000c49f:	3030                	.insn	2, 0x3030
8000c4a1:	3030                	.insn	2, 0x3030
8000c4a3:	3030                	.insn	2, 0x3030
8000c4a5:	3030                	.insn	2, 0x3030
8000c4a7:	3030                	.insn	2, 0x3030
8000c4a9:	3030                	.insn	2, 0x3030
8000c4ab:	3030                	.insn	2, 0x3030
8000c4ad:	3030                	.insn	2, 0x3030
8000c4af:	3030                	.insn	2, 0x3030
8000c4b1:	3030                	.insn	2, 0x3030
8000c4b3:	3030                	.insn	2, 0x3030
8000c4b5:	3030                	.insn	2, 0x3030
8000c4b7:	3030                	.insn	2, 0x3030
8000c4b9:	3030                	.insn	2, 0x3030

8000c4bb <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.413>:
8000c4bb:	65726f63          	bltu	tp,s7,8000cb19 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x59d>
8000c4bf:	6372732f          	.insn	4, 0x6372732f
8000c4c3:	6d756e2f          	.insn	4, 0x6d756e2f
8000c4c7:	6769622f          	.insn	4, 0x6769622f
8000c4cb:	756e                	.insn	2, 0x756e
8000c4cd:	2e6d                	.insn	2, 0x2e6d
8000c4cf:	7372                	.insn	2, 0x7372
8000c4d1:	0000                	.insn	2, 0x
	...

8000c4d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>:
8000c4d4:	8000c4bb          	.insn	4, 0x8000c4bb
8000c4d8:	0016                	.insn	2, 0x0016
8000c4da:	0000                	.insn	2, 0x
8000c4dc:	01aa                	.insn	2, 0x01aa
8000c4de:	0000                	.insn	2, 0x
8000c4e0:	0001                	.insn	2, 0x0001
	...

8000c4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>:
8000c4e4:	7361                	.insn	2, 0x7361
8000c4e6:	74726573          	.insn	4, 0x74726573
8000c4ea:	6f69                	.insn	2, 0x6f69
8000c4ec:	206e                	.insn	2, 0x206e
8000c4ee:	6166                	.insn	2, 0x6166
8000c4f0:	6c69                	.insn	2, 0x6c69
8000c4f2:	6465                	.insn	2, 0x6465
8000c4f4:	203a                	.insn	2, 0x203a
8000c4f6:	6f6e                	.insn	2, 0x6f6e
8000c4f8:	6f62                	.insn	2, 0x6f62
8000c4fa:	7272                	.insn	2, 0x7272
8000c4fc:	          	jal	a4,80023c32 <KALLOC_BUFFER+0x15c32>

8000c4fe <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.417>:
8000c4fe:	7361                	.insn	2, 0x7361
8000c500:	74726573          	.insn	4, 0x74726573
8000c504:	6f69                	.insn	2, 0x6f69
8000c506:	206e                	.insn	2, 0x206e
8000c508:	6166                	.insn	2, 0x6166
8000c50a:	6c69                	.insn	2, 0x6c69
8000c50c:	6465                	.insn	2, 0x6465
8000c50e:	203a                	.insn	2, 0x203a
8000c510:	6964                	.insn	2, 0x6964
8000c512:	73746967          	.insn	4, 0x73746967
8000c516:	3c20                	.insn	2, 0x3c20
8000c518:	3420                	.insn	2, 0x3420
8000c51a:	                	.insn	2, 0x6130

8000c51b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.418>:
8000c51b:	7361                	.insn	2, 0x7361
8000c51d:	74726573          	.insn	4, 0x74726573
8000c521:	6f69                	.insn	2, 0x6f69
8000c523:	206e                	.insn	2, 0x206e
8000c525:	6166                	.insn	2, 0x6166
8000c527:	6c69                	.insn	2, 0x6c69
8000c529:	6465                	.insn	2, 0x6465
8000c52b:	203a                	.insn	2, 0x203a
8000c52d:	6568746f          	jal	s0,80093b83 <KALLOC_BUFFER+0x85b83>
8000c531:	2072                	.insn	2, 0x2072
8000c533:	203e                	.insn	2, 0x203e
8000c535:	                	.insn	2, 0x6130

8000c536 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.432>:
8000c536:	7461                	.insn	2, 0x7461
8000c538:	6574                	.insn	2, 0x6574
8000c53a:	706d                	.insn	2, 0x706d
8000c53c:	2074                	.insn	2, 0x2074
8000c53e:	6f74                	.insn	2, 0x6f74
8000c540:	6420                	.insn	2, 0x6420
8000c542:	7669                	.insn	2, 0x7669
8000c544:	6469                	.insn	2, 0x6469
8000c546:	2065                	.insn	2, 0x2065
8000c548:	7962                	.insn	2, 0x7962
8000c54a:	7a20                	.insn	2, 0x7a20
8000c54c:	7265                	.insn	2, 0x7265
8000c54e:	          	j	7ff6d1a0 <.Lline_table_start2+0x7ff6bdf2>

8000c550 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.433>:
8000c550:	c536                	.insn	2, 0xc536
8000c552:	8000                	.insn	2, 0x8000
8000c554:	0019                	.insn	2, 0x0019
	...

8000c558 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.466>:
8000c558:	6f20                	.insn	2, 0x6f20
8000c55a:	7475                	.insn	2, 0x7475
8000c55c:	6f20                	.insn	2, 0x6f20
8000c55e:	2066                	.insn	2, 0x2066
8000c560:	6172                	.insn	2, 0x6172
8000c562:	676e                	.insn	2, 0x676e
8000c564:	2065                	.insn	2, 0x2065
8000c566:	6f66                	.insn	2, 0x6f66
8000c568:	2072                	.insn	2, 0x2072
8000c56a:	63696c73          	.insn	4, 0x63696c73
8000c56e:	2065                	.insn	2, 0x2065
8000c570:	6c20666f          	jal	a2,80012c32 <KALLOC_BUFFER+0x4c32>
8000c574:	6e65                	.insn	2, 0x6e65
8000c576:	20687467          	.insn	4, 0x20687467
	...

8000c57c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469>:
8000c57c:	b070                	.insn	2, 0xb070
8000c57e:	8000                	.insn	2, 0x8000
8000c580:	0010                	.insn	2, 0x0010
8000c582:	0000                	.insn	2, 0x
8000c584:	c558                	.insn	2, 0xc558
8000c586:	8000                	.insn	2, 0x8000
8000c588:	0022                	.insn	2, 0x0022
	...

Disassembly of section .eh_frame:

8000c590 <__bss_start-0xa08>:
8000c590:	0010                	.insn	2, 0x0010
8000c592:	0000                	.insn	2, 0x
8000c594:	0000                	.insn	2, 0x
8000c596:	0000                	.insn	2, 0x
8000c598:	7a01                	.insn	2, 0x7a01
8000c59a:	0052                	.insn	2, 0x0052
8000c59c:	7c01                	.insn	2, 0x7c01
8000c59e:	0101                	.insn	2, 0x0101
8000c5a0:	00020c1b          	.insn	4, 0x00020c1b
8000c5a4:	0010                	.insn	2, 0x0010
8000c5a6:	0000                	.insn	2, 0x
8000c5a8:	0018                	.insn	2, 0x0018
8000c5aa:	0000                	.insn	2, 0x
8000c5ac:	5aa4                	.insn	2, 0x5aa4
8000c5ae:	ffff                	.insn	2, 0xffff
8000c5b0:	0008                	.insn	2, 0x0008
8000c5b2:	0000                	.insn	2, 0x
8000c5b4:	0000                	.insn	2, 0x
8000c5b6:	0000                	.insn	2, 0x
8000c5b8:	001c                	.insn	2, 0x001c
8000c5ba:	0000                	.insn	2, 0x
8000c5bc:	002c                	.insn	2, 0x002c
8000c5be:	0000                	.insn	2, 0x
8000c5c0:	5a98                	.insn	2, 0x5a98
8000c5c2:	ffff                	.insn	2, 0xffff
8000c5c4:	0044                	.insn	2, 0x0044
8000c5c6:	0000                	.insn	2, 0x
8000c5c8:	4400                	.insn	2, 0x4400
8000c5ca:	200e                	.insn	2, 0x200e
8000c5cc:	8148                	.insn	2, 0x8148
8000c5ce:	8801                	.insn	2, 0x8801
8000c5d0:	4402                	.insn	2, 0x4402
8000c5d2:	080c                	.insn	2, 0x080c
8000c5d4:	0000                	.insn	2, 0x
8000c5d6:	0000                	.insn	2, 0x
8000c5d8:	001c                	.insn	2, 0x001c
8000c5da:	0000                	.insn	2, 0x
8000c5dc:	004c                	.insn	2, 0x004c
8000c5de:	0000                	.insn	2, 0x
8000c5e0:	5abc                	.insn	2, 0x5abc
8000c5e2:	ffff                	.insn	2, 0xffff
8000c5e4:	0028                	.insn	2, 0x0028
8000c5e6:	0000                	.insn	2, 0x
8000c5e8:	4400                	.insn	2, 0x4400
8000c5ea:	100e                	.insn	2, 0x100e
8000c5ec:	8148                	.insn	2, 0x8148
8000c5ee:	8801                	.insn	2, 0x8801
8000c5f0:	4402                	.insn	2, 0x4402
8000c5f2:	080c                	.insn	2, 0x080c
8000c5f4:	0000                	.insn	2, 0x
8000c5f6:	0000                	.insn	2, 0x
8000c5f8:	001c                	.insn	2, 0x001c
8000c5fa:	0000                	.insn	2, 0x
8000c5fc:	006c                	.insn	2, 0x006c
8000c5fe:	0000                	.insn	2, 0x
8000c600:	5ac4                	.insn	2, 0x5ac4
8000c602:	ffff                	.insn	2, 0xffff
8000c604:	0024                	.insn	2, 0x0024
8000c606:	0000                	.insn	2, 0x
8000c608:	4400                	.insn	2, 0x4400
8000c60a:	100e                	.insn	2, 0x100e
8000c60c:	8148                	.insn	2, 0x8148
8000c60e:	8801                	.insn	2, 0x8801
8000c610:	4402                	.insn	2, 0x4402
8000c612:	080c                	.insn	2, 0x080c
8000c614:	0000                	.insn	2, 0x
8000c616:	0000                	.insn	2, 0x
8000c618:	0030                	.insn	2, 0x0030
8000c61a:	0000                	.insn	2, 0x
8000c61c:	008c                	.insn	2, 0x008c
8000c61e:	0000                	.insn	2, 0x
8000c620:	5ac8                	.insn	2, 0x5ac8
8000c622:	ffff                	.insn	2, 0xffff
8000c624:	0ea8                	.insn	2, 0x0ea8
8000c626:	0000                	.insn	2, 0x
8000c628:	4400                	.insn	2, 0x4400
8000c62a:	800e                	.insn	2, 0x800e
8000c62c:	7402                	.insn	2, 0x7402
8000c62e:	0181                	.insn	2, 0x0181
8000c630:	0288                	.insn	2, 0x0288
8000c632:	0389                	.insn	2, 0x0389
8000c634:	0492                	.insn	2, 0x0492
8000c636:	06940593          	addi	a1,s0,105 # 35373069 <.Lline_table_start2+0x35371cbb>
8000c63a:	0795                	.insn	2, 0x0795
8000c63c:	0896                	.insn	2, 0x0896
8000c63e:	0a980997          	auipc	s3,0xa980
8000c642:	0b99                	.insn	2, 0x0b99
8000c644:	0c9a                	.insn	2, 0x0c9a
8000c646:	0c440d9b          	.insn	4, 0x0c440d9b
8000c64a:	0008                	.insn	2, 0x0008
8000c64c:	0030                	.insn	2, 0x0030
8000c64e:	0000                	.insn	2, 0x
8000c650:	00c0                	.insn	2, 0x00c0
8000c652:	0000                	.insn	2, 0x
8000c654:	693c                	.insn	2, 0x693c
8000c656:	ffff                	.insn	2, 0xffff
8000c658:	1034                	.insn	2, 0x1034
8000c65a:	0000                	.insn	2, 0x
8000c65c:	4400                	.insn	2, 0x4400
8000c65e:	800e                	.insn	2, 0x800e
8000c660:	0181740b          	.insn	4, 0x0181740b
8000c664:	0288                	.insn	2, 0x0288
8000c666:	0389                	.insn	2, 0x0389
8000c668:	0492                	.insn	2, 0x0492
8000c66a:	06940593          	addi	a1,s0,105
8000c66e:	0795                	.insn	2, 0x0795
8000c670:	0896                	.insn	2, 0x0896
8000c672:	0a980997          	auipc	s3,0xa980
8000c676:	0b99                	.insn	2, 0x0b99
8000c678:	0c9a                	.insn	2, 0x0c9a
8000c67a:	0c440d9b          	.insn	4, 0x0c440d9b
8000c67e:	0008                	.insn	2, 0x0008
8000c680:	0030                	.insn	2, 0x0030
8000c682:	0000                	.insn	2, 0x
8000c684:	00f4                	.insn	2, 0x00f4
8000c686:	0000                	.insn	2, 0x
8000c688:	793c                	.insn	2, 0x793c
8000c68a:	ffff                	.insn	2, 0xffff
8000c68c:	0ee4                	.insn	2, 0x0ee4
8000c68e:	0000                	.insn	2, 0x
8000c690:	4400                	.insn	2, 0x4400
8000c692:	900e                	.insn	2, 0x900e
8000c694:	01817407          	.insn	4, 0x01817407
8000c698:	0288                	.insn	2, 0x0288
8000c69a:	0389                	.insn	2, 0x0389
8000c69c:	0492                	.insn	2, 0x0492
8000c69e:	06940593          	addi	a1,s0,105
8000c6a2:	0795                	.insn	2, 0x0795
8000c6a4:	0896                	.insn	2, 0x0896
8000c6a6:	0a980997          	auipc	s3,0xa980
8000c6aa:	0b99                	.insn	2, 0x0b99
8000c6ac:	0c9a                	.insn	2, 0x0c9a
8000c6ae:	0c440d9b          	.insn	4, 0x0c440d9b
8000c6b2:	0008                	.insn	2, 0x0008
8000c6b4:	0030                	.insn	2, 0x0030
8000c6b6:	0000                	.insn	2, 0x
8000c6b8:	0128                	.insn	2, 0x0128
8000c6ba:	0000                	.insn	2, 0x
8000c6bc:	87ec                	.insn	2, 0x87ec
8000c6be:	ffff                	.insn	2, 0xffff
8000c6c0:	0fe0                	.insn	2, 0x0fe0
8000c6c2:	0000                	.insn	2, 0x
8000c6c4:	4400                	.insn	2, 0x4400
8000c6c6:	c00e                	.insn	2, 0xc00e
8000c6c8:	7401                	.insn	2, 0x7401
8000c6ca:	0181                	.insn	2, 0x0181
8000c6cc:	0288                	.insn	2, 0x0288
8000c6ce:	0389                	.insn	2, 0x0389
8000c6d0:	0492                	.insn	2, 0x0492
8000c6d2:	06940593          	addi	a1,s0,105
8000c6d6:	0795                	.insn	2, 0x0795
8000c6d8:	0896                	.insn	2, 0x0896
8000c6da:	0a980997          	auipc	s3,0xa980
8000c6de:	0b99                	.insn	2, 0x0b99
8000c6e0:	0c9a                	.insn	2, 0x0c9a
8000c6e2:	0c440d9b          	.insn	4, 0x0c440d9b
8000c6e6:	0008                	.insn	2, 0x0008
8000c6e8:	0030                	.insn	2, 0x0030
8000c6ea:	0000                	.insn	2, 0x
8000c6ec:	015c                	.insn	2, 0x015c
8000c6ee:	0000                	.insn	2, 0x
8000c6f0:	9798                	.insn	2, 0x9798
8000c6f2:	ffff                	.insn	2, 0xffff
8000c6f4:	07fc                	.insn	2, 0x07fc
8000c6f6:	0000                	.insn	2, 0x
8000c6f8:	4400                	.insn	2, 0x4400
8000c6fa:	700e                	.insn	2, 0x700e
8000c6fc:	8174                	.insn	2, 0x8174
8000c6fe:	8801                	.insn	2, 0x8801
8000c700:	8902                	.insn	2, 0x8902
8000c702:	93049203          	lh	tp,-1744(s1) # 7fbff930 <.Lline_table_start2+0x7fbfe582>
8000c706:	9405                	.insn	2, 0x9405
8000c708:	9506                	.insn	2, 0x9506
8000c70a:	97089607          	.insn	4, 0x97089607
8000c70e:	9809                	.insn	2, 0x9809
8000c710:	990a                	.insn	2, 0x990a
8000c712:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000c716:	440d                	.insn	2, 0x440d
8000c718:	080c                	.insn	2, 0x080c
8000c71a:	0000                	.insn	2, 0x
8000c71c:	002c                	.insn	2, 0x002c
8000c71e:	0000                	.insn	2, 0x
8000c720:	0190                	.insn	2, 0x0190
8000c722:	0000                	.insn	2, 0x
8000c724:	9f60                	.insn	2, 0x9f60
8000c726:	ffff                	.insn	2, 0xffff
8000c728:	02e4                	.insn	2, 0x02e4
8000c72a:	0000                	.insn	2, 0x
8000c72c:	4400                	.insn	2, 0x4400
8000c72e:	300e                	.insn	2, 0x300e
8000c730:	8168                	.insn	2, 0x8168
8000c732:	8801                	.insn	2, 0x8801
8000c734:	8902                	.insn	2, 0x8902
8000c736:	93049203          	lh	tp,-1744(s1)
8000c73a:	9405                	.insn	2, 0x9405
8000c73c:	9506                	.insn	2, 0x9506
8000c73e:	97089607          	.insn	4, 0x97089607
8000c742:	9809                	.insn	2, 0x9809
8000c744:	440a                	.insn	2, 0x440a
8000c746:	080c                	.insn	2, 0x080c
8000c748:	0000                	.insn	2, 0x
8000c74a:	0000                	.insn	2, 0x
8000c74c:	001c                	.insn	2, 0x001c
8000c74e:	0000                	.insn	2, 0x
8000c750:	01c0                	.insn	2, 0x01c0
8000c752:	0000                	.insn	2, 0x
8000c754:	a214                	.insn	2, 0xa214
8000c756:	ffff                	.insn	2, 0xffff
8000c758:	0174                	.insn	2, 0x0174
8000c75a:	0000                	.insn	2, 0x
8000c75c:	4400                	.insn	2, 0x4400
8000c75e:	100e                	.insn	2, 0x100e
8000c760:	8148                	.insn	2, 0x8148
8000c762:	8801                	.insn	2, 0x8801
8000c764:	4402                	.insn	2, 0x4402
8000c766:	080c                	.insn	2, 0x080c
8000c768:	0000                	.insn	2, 0x
8000c76a:	0000                	.insn	2, 0x
8000c76c:	001c                	.insn	2, 0x001c
8000c76e:	0000                	.insn	2, 0x
8000c770:	01e0                	.insn	2, 0x01e0
8000c772:	0000                	.insn	2, 0x
8000c774:	a368                	.insn	2, 0xa368
8000c776:	ffff                	.insn	2, 0xffff
8000c778:	00c8                	.insn	2, 0x00c8
8000c77a:	0000                	.insn	2, 0x
8000c77c:	4400                	.insn	2, 0x4400
8000c77e:	400e                	.insn	2, 0x400e
8000c780:	814c                	.insn	2, 0x814c
8000c782:	8801                	.insn	2, 0x8801
8000c784:	8902                	.insn	2, 0x8902
8000c786:	080c4403          	lbu	s0,128(s8)
8000c78a:	0000                	.insn	2, 0x
8000c78c:	001c                	.insn	2, 0x001c
8000c78e:	0000                	.insn	2, 0x
8000c790:	0200                	.insn	2, 0x0200
8000c792:	0000                	.insn	2, 0x
8000c794:	a410                	.insn	2, 0xa410
8000c796:	ffff                	.insn	2, 0xffff
8000c798:	0028                	.insn	2, 0x0028
8000c79a:	0000                	.insn	2, 0x
8000c79c:	4400                	.insn	2, 0x4400
8000c79e:	100e                	.insn	2, 0x100e
8000c7a0:	8148                	.insn	2, 0x8148
8000c7a2:	8801                	.insn	2, 0x8801
8000c7a4:	4402                	.insn	2, 0x4402
8000c7a6:	080c                	.insn	2, 0x080c
8000c7a8:	0000                	.insn	2, 0x
8000c7aa:	0000                	.insn	2, 0x
8000c7ac:	0024                	.insn	2, 0x0024
8000c7ae:	0000                	.insn	2, 0x
8000c7b0:	0220                	.insn	2, 0x0220
8000c7b2:	0000                	.insn	2, 0x
8000c7b4:	a418                	.insn	2, 0xa418
8000c7b6:	ffff                	.insn	2, 0xffff
8000c7b8:	014c                	.insn	2, 0x014c
8000c7ba:	0000                	.insn	2, 0x
8000c7bc:	4400                	.insn	2, 0x4400
8000c7be:	500e                	.insn	2, 0x500e
8000c7c0:	815c                	.insn	2, 0x815c
8000c7c2:	8801                	.insn	2, 0x8801
8000c7c4:	8902                	.insn	2, 0x8902
8000c7c6:	93049203          	lh	tp,-1744(s1)
8000c7ca:	9405                	.insn	2, 0x9405
8000c7cc:	9506                	.insn	2, 0x9506
8000c7ce:	080c4407          	.insn	4, 0x080c4407
8000c7d2:	0000                	.insn	2, 0x
8000c7d4:	001c                	.insn	2, 0x001c
8000c7d6:	0000                	.insn	2, 0x
8000c7d8:	0248                	.insn	2, 0x0248
8000c7da:	0000                	.insn	2, 0x
8000c7dc:	a53c                	.insn	2, 0xa53c
8000c7de:	ffff                	.insn	2, 0xffff
8000c7e0:	002c                	.insn	2, 0x002c
8000c7e2:	0000                	.insn	2, 0x
8000c7e4:	4400                	.insn	2, 0x4400
8000c7e6:	200e                	.insn	2, 0x200e
8000c7e8:	8148                	.insn	2, 0x8148
8000c7ea:	8801                	.insn	2, 0x8801
8000c7ec:	4402                	.insn	2, 0x4402
8000c7ee:	080c                	.insn	2, 0x080c
8000c7f0:	0000                	.insn	2, 0x
8000c7f2:	0000                	.insn	2, 0x
8000c7f4:	001c                	.insn	2, 0x001c
8000c7f6:	0000                	.insn	2, 0x
8000c7f8:	0268                	.insn	2, 0x0268
8000c7fa:	0000                	.insn	2, 0x
8000c7fc:	a548                	.insn	2, 0xa548
8000c7fe:	ffff                	.insn	2, 0xffff
8000c800:	0048                	.insn	2, 0x0048
8000c802:	0000                	.insn	2, 0x
8000c804:	4400                	.insn	2, 0x4400
8000c806:	300e                	.insn	2, 0x300e
8000c808:	8148                	.insn	2, 0x8148
8000c80a:	8801                	.insn	2, 0x8801
8000c80c:	4402                	.insn	2, 0x4402
8000c80e:	080c                	.insn	2, 0x080c
8000c810:	0000                	.insn	2, 0x
8000c812:	0000                	.insn	2, 0x
8000c814:	001c                	.insn	2, 0x001c
8000c816:	0000                	.insn	2, 0x
8000c818:	0288                	.insn	2, 0x0288
8000c81a:	0000                	.insn	2, 0x
8000c81c:	a570                	.insn	2, 0xa570
8000c81e:	ffff                	.insn	2, 0xffff
8000c820:	006c                	.insn	2, 0x006c
8000c822:	0000                	.insn	2, 0x
8000c824:	4400                	.insn	2, 0x4400
8000c826:	400e                	.insn	2, 0x400e
8000c828:	8148                	.insn	2, 0x8148
8000c82a:	8801                	.insn	2, 0x8801
8000c82c:	4402                	.insn	2, 0x4402
8000c82e:	080c                	.insn	2, 0x080c
8000c830:	0000                	.insn	2, 0x
8000c832:	0000                	.insn	2, 0x
8000c834:	001c                	.insn	2, 0x001c
8000c836:	0000                	.insn	2, 0x
8000c838:	02a8                	.insn	2, 0x02a8
8000c83a:	0000                	.insn	2, 0x
8000c83c:	a5bc                	.insn	2, 0xa5bc
8000c83e:	ffff                	.insn	2, 0xffff
8000c840:	0044                	.insn	2, 0x0044
8000c842:	0000                	.insn	2, 0x
8000c844:	4400                	.insn	2, 0x4400
8000c846:	100e                	.insn	2, 0x100e
8000c848:	8148                	.insn	2, 0x8148
8000c84a:	8801                	.insn	2, 0x8801
8000c84c:	4402                	.insn	2, 0x4402
8000c84e:	080c                	.insn	2, 0x080c
8000c850:	0000                	.insn	2, 0x
8000c852:	0000                	.insn	2, 0x
8000c854:	0020                	.insn	2, 0x0020
8000c856:	0000                	.insn	2, 0x
8000c858:	02c8                	.insn	2, 0x02c8
8000c85a:	0000                	.insn	2, 0x
8000c85c:	a5e0                	.insn	2, 0xa5e0
8000c85e:	ffff                	.insn	2, 0xffff
8000c860:	014c                	.insn	2, 0x014c
8000c862:	0000                	.insn	2, 0x
8000c864:	4400                	.insn	2, 0x4400
8000c866:	800e                	.insn	2, 0x800e
8000c868:	5001                	.insn	2, 0x5001
8000c86a:	0181                	.insn	2, 0x0181
8000c86c:	0288                	.insn	2, 0x0288
8000c86e:	0389                	.insn	2, 0x0389
8000c870:	0492                	.insn	2, 0x0492
8000c872:	0c44                	.insn	2, 0x0c44
8000c874:	0008                	.insn	2, 0x0008
8000c876:	0000                	.insn	2, 0x
8000c878:	001c                	.insn	2, 0x001c
8000c87a:	0000                	.insn	2, 0x
8000c87c:	02ec                	.insn	2, 0x02ec
8000c87e:	0000                	.insn	2, 0x
8000c880:	a708                	.insn	2, 0xa708
8000c882:	ffff                	.insn	2, 0xffff
8000c884:	007c                	.insn	2, 0x007c
8000c886:	0000                	.insn	2, 0x
8000c888:	4400                	.insn	2, 0x4400
8000c88a:	400e                	.insn	2, 0x400e
8000c88c:	8148                	.insn	2, 0x8148
8000c88e:	8801                	.insn	2, 0x8801
8000c890:	4402                	.insn	2, 0x4402
8000c892:	080c                	.insn	2, 0x080c
8000c894:	0000                	.insn	2, 0x
8000c896:	0000                	.insn	2, 0x
8000c898:	0030                	.insn	2, 0x0030
8000c89a:	0000                	.insn	2, 0x
8000c89c:	030c                	.insn	2, 0x030c
8000c89e:	0000                	.insn	2, 0x
8000c8a0:	a764                	.insn	2, 0xa764
8000c8a2:	ffff                	.insn	2, 0xffff
8000c8a4:	029c                	.insn	2, 0x029c
8000c8a6:	0000                	.insn	2, 0x
8000c8a8:	4400                	.insn	2, 0x4400
8000c8aa:	500e                	.insn	2, 0x500e
8000c8ac:	8174                	.insn	2, 0x8174
8000c8ae:	8801                	.insn	2, 0x8801
8000c8b0:	8902                	.insn	2, 0x8902
8000c8b2:	93049203          	lh	tp,-1744(s1)
8000c8b6:	9405                	.insn	2, 0x9405
8000c8b8:	9506                	.insn	2, 0x9506
8000c8ba:	97089607          	.insn	4, 0x97089607
8000c8be:	9809                	.insn	2, 0x9809
8000c8c0:	990a                	.insn	2, 0x990a
8000c8c2:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000c8c6:	440d                	.insn	2, 0x440d
8000c8c8:	080c                	.insn	2, 0x080c
8000c8ca:	0000                	.insn	2, 0x
8000c8cc:	0024                	.insn	2, 0x0024
8000c8ce:	0000                	.insn	2, 0x
8000c8d0:	0340                	.insn	2, 0x0340
8000c8d2:	0000                	.insn	2, 0x
8000c8d4:	a9cc                	.insn	2, 0xa9cc
8000c8d6:	ffff                	.insn	2, 0xffff
8000c8d8:	00b4                	.insn	2, 0x00b4
8000c8da:	0000                	.insn	2, 0x
8000c8dc:	4400                	.insn	2, 0x4400
8000c8de:	200e                	.insn	2, 0x200e
8000c8e0:	8158                	.insn	2, 0x8158
8000c8e2:	8801                	.insn	2, 0x8801
8000c8e4:	8902                	.insn	2, 0x8902
8000c8e6:	93049203          	lh	tp,-1744(s1)
8000c8ea:	9405                	.insn	2, 0x9405
8000c8ec:	4406                	.insn	2, 0x4406
8000c8ee:	080c                	.insn	2, 0x080c
8000c8f0:	0000                	.insn	2, 0x
8000c8f2:	0000                	.insn	2, 0x
8000c8f4:	002c                	.insn	2, 0x002c
8000c8f6:	0000                	.insn	2, 0x
8000c8f8:	0368                	.insn	2, 0x0368
8000c8fa:	0000                	.insn	2, 0x
8000c8fc:	aa58                	.insn	2, 0xaa58
8000c8fe:	ffff                	.insn	2, 0xffff
8000c900:	023c                	.insn	2, 0x023c
8000c902:	0000                	.insn	2, 0x
8000c904:	4400                	.insn	2, 0x4400
8000c906:	600e                	.insn	2, 0x600e
8000c908:	8168                	.insn	2, 0x8168
8000c90a:	8801                	.insn	2, 0x8801
8000c90c:	8902                	.insn	2, 0x8902
8000c90e:	93049203          	lh	tp,-1744(s1)
8000c912:	9405                	.insn	2, 0x9405
8000c914:	9506                	.insn	2, 0x9506
8000c916:	97089607          	.insn	4, 0x97089607
8000c91a:	9809                	.insn	2, 0x9809
8000c91c:	440a                	.insn	2, 0x440a
8000c91e:	080c                	.insn	2, 0x080c
8000c920:	0000                	.insn	2, 0x
8000c922:	0000                	.insn	2, 0x
8000c924:	0028                	.insn	2, 0x0028
8000c926:	0000                	.insn	2, 0x
8000c928:	0398                	.insn	2, 0x0398
8000c92a:	0000                	.insn	2, 0x
8000c92c:	ac64                	.insn	2, 0xac64
8000c92e:	ffff                	.insn	2, 0xffff
8000c930:	0374                	.insn	2, 0x0374
8000c932:	0000                	.insn	2, 0x
8000c934:	4400                	.insn	2, 0x4400
8000c936:	900e                	.insn	2, 0x900e
8000c938:	6009                	.insn	2, 0x6009
8000c93a:	0181                	.insn	2, 0x0181
8000c93c:	0288                	.insn	2, 0x0288
8000c93e:	0389                	.insn	2, 0x0389
8000c940:	0492                	.insn	2, 0x0492
8000c942:	06940593          	addi	a1,s0,105
8000c946:	0795                	.insn	2, 0x0795
8000c948:	0896                	.insn	2, 0x0896
8000c94a:	0c44                	.insn	2, 0x0c44
8000c94c:	0008                	.insn	2, 0x0008
8000c94e:	0000                	.insn	2, 0x
8000c950:	0024                	.insn	2, 0x0024
8000c952:	0000                	.insn	2, 0x
8000c954:	03c4                	.insn	2, 0x03c4
8000c956:	0000                	.insn	2, 0x
8000c958:	afac                	.insn	2, 0xafac
8000c95a:	ffff                	.insn	2, 0xffff
8000c95c:	02a4                	.insn	2, 0x02a4
8000c95e:	0000                	.insn	2, 0x
8000c960:	0200                	.insn	2, 0x0200
8000c962:	0eb4                	.insn	2, 0x0eb4
8000c964:	0190                	.insn	2, 0x0190
8000c966:	8158                	.insn	2, 0x8158
8000c968:	8801                	.insn	2, 0x8801
8000c96a:	8902                	.insn	2, 0x8902
8000c96c:	93049203          	lh	tp,-1744(s1)
8000c970:	9405                	.insn	2, 0x9405
8000c972:	4406                	.insn	2, 0x4406
8000c974:	080c                	.insn	2, 0x080c
8000c976:	0000                	.insn	2, 0x
8000c978:	001c                	.insn	2, 0x001c
8000c97a:	0000                	.insn	2, 0x
8000c97c:	03ec                	.insn	2, 0x03ec
8000c97e:	0000                	.insn	2, 0x
8000c980:	b228                	.insn	2, 0xb228
8000c982:	ffff                	.insn	2, 0xffff
8000c984:	0038                	.insn	2, 0x0038
8000c986:	0000                	.insn	2, 0x
8000c988:	4400                	.insn	2, 0x4400
8000c98a:	100e                	.insn	2, 0x100e
8000c98c:	8148                	.insn	2, 0x8148
8000c98e:	8801                	.insn	2, 0x8801
8000c990:	4402                	.insn	2, 0x4402
8000c992:	080c                	.insn	2, 0x080c
8000c994:	0000                	.insn	2, 0x
8000c996:	0000                	.insn	2, 0x
8000c998:	001c                	.insn	2, 0x001c
8000c99a:	0000                	.insn	2, 0x
8000c99c:	040c                	.insn	2, 0x040c
8000c99e:	0000                	.insn	2, 0x
8000c9a0:	b240                	.insn	2, 0xb240
8000c9a2:	ffff                	.insn	2, 0xffff
8000c9a4:	0038                	.insn	2, 0x0038
8000c9a6:	0000                	.insn	2, 0x
8000c9a8:	4400                	.insn	2, 0x4400
8000c9aa:	100e                	.insn	2, 0x100e
8000c9ac:	8148                	.insn	2, 0x8148
8000c9ae:	8801                	.insn	2, 0x8801
8000c9b0:	4402                	.insn	2, 0x4402
8000c9b2:	080c                	.insn	2, 0x080c
8000c9b4:	0000                	.insn	2, 0x
8000c9b6:	0000                	.insn	2, 0x
8000c9b8:	002c                	.insn	2, 0x002c
8000c9ba:	0000                	.insn	2, 0x
8000c9bc:	042c                	.insn	2, 0x042c
8000c9be:	0000                	.insn	2, 0x
8000c9c0:	b258                	.insn	2, 0xb258
8000c9c2:	ffff                	.insn	2, 0xffff
8000c9c4:	0264                	.insn	2, 0x0264
8000c9c6:	0000                	.insn	2, 0x
8000c9c8:	4400                	.insn	2, 0x4400
8000c9ca:	500e                	.insn	2, 0x500e
8000c9cc:	8168                	.insn	2, 0x8168
8000c9ce:	8801                	.insn	2, 0x8801
8000c9d0:	8902                	.insn	2, 0x8902
8000c9d2:	93049203          	lh	tp,-1744(s1)
8000c9d6:	9405                	.insn	2, 0x9405
8000c9d8:	9506                	.insn	2, 0x9506
8000c9da:	97089607          	.insn	4, 0x97089607
8000c9de:	9809                	.insn	2, 0x9809
8000c9e0:	440a                	.insn	2, 0x440a
8000c9e2:	080c                	.insn	2, 0x080c
8000c9e4:	0000                	.insn	2, 0x
8000c9e6:	0000                	.insn	2, 0x
8000c9e8:	0030                	.insn	2, 0x0030
8000c9ea:	0000                	.insn	2, 0x
8000c9ec:	045c                	.insn	2, 0x045c
8000c9ee:	0000                	.insn	2, 0x
8000c9f0:	b48c                	.insn	2, 0xb48c
8000c9f2:	ffff                	.insn	2, 0xffff
8000c9f4:	0354                	.insn	2, 0x0354
8000c9f6:	0000                	.insn	2, 0x
8000c9f8:	4400                	.insn	2, 0x4400
8000c9fa:	400e                	.insn	2, 0x400e
8000c9fc:	8174                	.insn	2, 0x8174
8000c9fe:	8801                	.insn	2, 0x8801
8000ca00:	8902                	.insn	2, 0x8902
8000ca02:	93049203          	lh	tp,-1744(s1)
8000ca06:	9405                	.insn	2, 0x9405
8000ca08:	9506                	.insn	2, 0x9506
8000ca0a:	97089607          	.insn	4, 0x97089607
8000ca0e:	9809                	.insn	2, 0x9809
8000ca10:	990a                	.insn	2, 0x990a
8000ca12:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000ca16:	440d                	.insn	2, 0x440d
8000ca18:	080c                	.insn	2, 0x080c
8000ca1a:	0000                	.insn	2, 0x
8000ca1c:	0024                	.insn	2, 0x0024
8000ca1e:	0000                	.insn	2, 0x
8000ca20:	0490                	.insn	2, 0x0490
8000ca22:	0000                	.insn	2, 0x
8000ca24:	b7ac                	.insn	2, 0xb7ac
8000ca26:	ffff                	.insn	2, 0xffff
8000ca28:	00ac                	.insn	2, 0x00ac
8000ca2a:	0000                	.insn	2, 0x
8000ca2c:	4400                	.insn	2, 0x4400
8000ca2e:	200e                	.insn	2, 0x200e
8000ca30:	8158                	.insn	2, 0x8158
8000ca32:	8801                	.insn	2, 0x8801
8000ca34:	8902                	.insn	2, 0x8902
8000ca36:	93049203          	lh	tp,-1744(s1)
8000ca3a:	9405                	.insn	2, 0x9405
8000ca3c:	4406                	.insn	2, 0x4406
8000ca3e:	080c                	.insn	2, 0x080c
8000ca40:	0000                	.insn	2, 0x
8000ca42:	0000                	.insn	2, 0x
8000ca44:	0028                	.insn	2, 0x0028
8000ca46:	0000                	.insn	2, 0x
8000ca48:	04b8                	.insn	2, 0x04b8
8000ca4a:	0000                	.insn	2, 0x
8000ca4c:	b830                	.insn	2, 0xb830
8000ca4e:	ffff                	.insn	2, 0xffff
8000ca50:	0298                	.insn	2, 0x0298
8000ca52:	0000                	.insn	2, 0x
8000ca54:	4400                	.insn	2, 0x4400
8000ca56:	300e                	.insn	2, 0x300e
8000ca58:	8164                	.insn	2, 0x8164
8000ca5a:	8801                	.insn	2, 0x8801
8000ca5c:	8902                	.insn	2, 0x8902
8000ca5e:	93049203          	lh	tp,-1744(s1)
8000ca62:	9405                	.insn	2, 0x9405
8000ca64:	9506                	.insn	2, 0x9506
8000ca66:	97089607          	.insn	4, 0x97089607
8000ca6a:	4409                	.insn	2, 0x4409
8000ca6c:	080c                	.insn	2, 0x080c
8000ca6e:	0000                	.insn	2, 0x
8000ca70:	0030                	.insn	2, 0x0030
8000ca72:	0000                	.insn	2, 0x
8000ca74:	04e4                	.insn	2, 0x04e4
8000ca76:	0000                	.insn	2, 0x
8000ca78:	ba9c                	.insn	2, 0xba9c
8000ca7a:	ffff                	.insn	2, 0xffff
8000ca7c:	02a8                	.insn	2, 0x02a8
8000ca7e:	0000                	.insn	2, 0x
8000ca80:	4400                	.insn	2, 0x4400
8000ca82:	400e                	.insn	2, 0x400e
8000ca84:	8170                	.insn	2, 0x8170
8000ca86:	8801                	.insn	2, 0x8801
8000ca88:	8902                	.insn	2, 0x8902
8000ca8a:	93049203          	lh	tp,-1744(s1)
8000ca8e:	9405                	.insn	2, 0x9405
8000ca90:	9506                	.insn	2, 0x9506
8000ca92:	97089607          	.insn	4, 0x97089607
8000ca96:	9809                	.insn	2, 0x9809
8000ca98:	990a                	.insn	2, 0x990a
8000ca9a:	440c9a0b          	.insn	4, 0x440c9a0b
8000ca9e:	080c                	.insn	2, 0x080c
8000caa0:	0000                	.insn	2, 0x
8000caa2:	0000                	.insn	2, 0x
8000caa4:	0030                	.insn	2, 0x0030
8000caa6:	0000                	.insn	2, 0x
8000caa8:	0518                	.insn	2, 0x0518
8000caaa:	0000                	.insn	2, 0x
8000caac:	bd10                	.insn	2, 0xbd10
8000caae:	ffff                	.insn	2, 0xffff
8000cab0:	0204                	.insn	2, 0x0204
8000cab2:	0000                	.insn	2, 0x
8000cab4:	4400                	.insn	2, 0x4400
8000cab6:	400e                	.insn	2, 0x400e
8000cab8:	8174                	.insn	2, 0x8174
8000caba:	8801                	.insn	2, 0x8801
8000cabc:	8902                	.insn	2, 0x8902
8000cabe:	93049203          	lh	tp,-1744(s1)
8000cac2:	9405                	.insn	2, 0x9405
8000cac4:	9506                	.insn	2, 0x9506
8000cac6:	97089607          	.insn	4, 0x97089607
8000caca:	9809                	.insn	2, 0x9809
8000cacc:	990a                	.insn	2, 0x990a
8000cace:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000cad2:	440d                	.insn	2, 0x440d
8000cad4:	080c                	.insn	2, 0x080c
8000cad6:	0000                	.insn	2, 0x
8000cad8:	001c                	.insn	2, 0x001c
8000cada:	0000                	.insn	2, 0x
8000cadc:	054c                	.insn	2, 0x054c
8000cade:	0000                	.insn	2, 0x
8000cae0:	bee0                	.insn	2, 0xbee0
8000cae2:	ffff                	.insn	2, 0xffff
8000cae4:	002c                	.insn	2, 0x002c
8000cae6:	0000                	.insn	2, 0x
8000cae8:	4400                	.insn	2, 0x4400
8000caea:	100e                	.insn	2, 0x100e
8000caec:	8148                	.insn	2, 0x8148
8000caee:	8801                	.insn	2, 0x8801
8000caf0:	4402                	.insn	2, 0x4402
8000caf2:	080c                	.insn	2, 0x080c
8000caf4:	0000                	.insn	2, 0x
8000caf6:	0000                	.insn	2, 0x
8000caf8:	002c                	.insn	2, 0x002c
8000cafa:	0000                	.insn	2, 0x
8000cafc:	056c                	.insn	2, 0x056c
8000cafe:	0000                	.insn	2, 0x
8000cb00:	beec                	.insn	2, 0xbeec
8000cb02:	ffff                	.insn	2, 0xffff
8000cb04:	0144                	.insn	2, 0x0144
8000cb06:	0000                	.insn	2, 0x
8000cb08:	4400                	.insn	2, 0x4400
8000cb0a:	400e                	.insn	2, 0x400e
8000cb0c:	816c                	.insn	2, 0x816c
8000cb0e:	8801                	.insn	2, 0x8801
8000cb10:	8902                	.insn	2, 0x8902
8000cb12:	93049203          	lh	tp,-1744(s1)
8000cb16:	9405                	.insn	2, 0x9405
8000cb18:	9506                	.insn	2, 0x9506
8000cb1a:	97089607          	.insn	4, 0x97089607
8000cb1e:	9809                	.insn	2, 0x9809
8000cb20:	990a                	.insn	2, 0x990a
8000cb22:	080c440b          	.insn	4, 0x080c440b
8000cb26:	0000                	.insn	2, 0x
8000cb28:	0024                	.insn	2, 0x0024
8000cb2a:	0000                	.insn	2, 0x
8000cb2c:	059c                	.insn	2, 0x059c
8000cb2e:	0000                	.insn	2, 0x
8000cb30:	c000                	.insn	2, 0xc000
8000cb32:	ffff                	.insn	2, 0xffff
8000cb34:	00e8                	.insn	2, 0x00e8
8000cb36:	0000                	.insn	2, 0x
8000cb38:	4400                	.insn	2, 0x4400
8000cb3a:	a00e                	.insn	2, 0xa00e
8000cb3c:	5801                	.insn	2, 0x5801
8000cb3e:	0181                	.insn	2, 0x0181
8000cb40:	0288                	.insn	2, 0x0288
8000cb42:	0389                	.insn	2, 0x0389
8000cb44:	0492                	.insn	2, 0x0492
8000cb46:	06940593          	addi	a1,s0,105
8000cb4a:	0c44                	.insn	2, 0x0c44
8000cb4c:	0008                	.insn	2, 0x0008
8000cb4e:	0000                	.insn	2, 0x
8000cb50:	001c                	.insn	2, 0x001c
8000cb52:	0000                	.insn	2, 0x
8000cb54:	05c4                	.insn	2, 0x05c4
8000cb56:	0000                	.insn	2, 0x
8000cb58:	c0c0                	.insn	2, 0xc0c0
8000cb5a:	ffff                	.insn	2, 0xffff
8000cb5c:	0018                	.insn	2, 0x0018
8000cb5e:	0000                	.insn	2, 0x
8000cb60:	4400                	.insn	2, 0x4400
8000cb62:	100e                	.insn	2, 0x100e
8000cb64:	8148                	.insn	2, 0x8148
8000cb66:	8801                	.insn	2, 0x8801
8000cb68:	4402                	.insn	2, 0x4402
8000cb6a:	080c                	.insn	2, 0x080c
8000cb6c:	0000                	.insn	2, 0x
8000cb6e:	0000                	.insn	2, 0x
8000cb70:	001c                	.insn	2, 0x001c
8000cb72:	0000                	.insn	2, 0x
8000cb74:	05e4                	.insn	2, 0x05e4
8000cb76:	0000                	.insn	2, 0x
8000cb78:	c0b8                	.insn	2, 0xc0b8
8000cb7a:	ffff                	.insn	2, 0xffff
8000cb7c:	0238                	.insn	2, 0x0238
8000cb7e:	0000                	.insn	2, 0x
8000cb80:	4400                	.insn	2, 0x4400
8000cb82:	100e                	.insn	2, 0x100e
8000cb84:	8148                	.insn	2, 0x8148
8000cb86:	8801                	.insn	2, 0x8801
8000cb88:	4402                	.insn	2, 0x4402
8000cb8a:	080c                	.insn	2, 0x080c
8000cb8c:	0000                	.insn	2, 0x
8000cb8e:	0000                	.insn	2, 0x
8000cb90:	001c                	.insn	2, 0x001c
8000cb92:	0000                	.insn	2, 0x
8000cb94:	0604                	.insn	2, 0x0604
8000cb96:	0000                	.insn	2, 0x
8000cb98:	c2d0                	.insn	2, 0xc2d0
8000cb9a:	ffff                	.insn	2, 0xffff
8000cb9c:	0050                	.insn	2, 0x0050
8000cb9e:	0000                	.insn	2, 0x
8000cba0:	4400                	.insn	2, 0x4400
8000cba2:	100e                	.insn	2, 0x100e
8000cba4:	8148                	.insn	2, 0x8148
8000cba6:	8801                	.insn	2, 0x8801
8000cba8:	4402                	.insn	2, 0x4402
8000cbaa:	080c                	.insn	2, 0x080c
8000cbac:	0000                	.insn	2, 0x
8000cbae:	0000                	.insn	2, 0x
8000cbb0:	0024                	.insn	2, 0x0024
8000cbb2:	0000                	.insn	2, 0x
8000cbb4:	0624                	.insn	2, 0x0624
8000cbb6:	0000                	.insn	2, 0x
8000cbb8:	c300                	.insn	2, 0xc300
8000cbba:	ffff                	.insn	2, 0xffff
8000cbbc:	0204                	.insn	2, 0x0204
8000cbbe:	0000                	.insn	2, 0x
8000cbc0:	4400                	.insn	2, 0x4400
8000cbc2:	200e                	.insn	2, 0x200e
8000cbc4:	815c                	.insn	2, 0x815c
8000cbc6:	8801                	.insn	2, 0x8801
8000cbc8:	8902                	.insn	2, 0x8902
8000cbca:	93049203          	lh	tp,-1744(s1)
8000cbce:	9405                	.insn	2, 0x9405
8000cbd0:	9506                	.insn	2, 0x9506
8000cbd2:	080c4407          	.insn	4, 0x080c4407
8000cbd6:	0000                	.insn	2, 0x
8000cbd8:	0030                	.insn	2, 0x0030
8000cbda:	0000                	.insn	2, 0x
8000cbdc:	064c                	.insn	2, 0x064c
8000cbde:	0000                	.insn	2, 0x
8000cbe0:	c4dc                	.insn	2, 0xc4dc
8000cbe2:	ffff                	.insn	2, 0xffff
8000cbe4:	01f4                	.insn	2, 0x01f4
8000cbe6:	0000                	.insn	2, 0x
8000cbe8:	4400                	.insn	2, 0x4400
8000cbea:	500e                	.insn	2, 0x500e
8000cbec:	8174                	.insn	2, 0x8174
8000cbee:	8801                	.insn	2, 0x8801
8000cbf0:	8902                	.insn	2, 0x8902
8000cbf2:	93049203          	lh	tp,-1744(s1)
8000cbf6:	9405                	.insn	2, 0x9405
8000cbf8:	9506                	.insn	2, 0x9506
8000cbfa:	97089607          	.insn	4, 0x97089607
8000cbfe:	9809                	.insn	2, 0x9809
8000cc00:	990a                	.insn	2, 0x990a
8000cc02:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000cc06:	440d                	.insn	2, 0x440d
8000cc08:	080c                	.insn	2, 0x080c
8000cc0a:	0000                	.insn	2, 0x
8000cc0c:	001c                	.insn	2, 0x001c
8000cc0e:	0000                	.insn	2, 0x
8000cc10:	0680                	.insn	2, 0x0680
8000cc12:	0000                	.insn	2, 0x
8000cc14:	c69c                	.insn	2, 0xc69c
8000cc16:	ffff                	.insn	2, 0xffff
8000cc18:	00f0                	.insn	2, 0x00f0
8000cc1a:	0000                	.insn	2, 0x
8000cc1c:	4400                	.insn	2, 0x4400
8000cc1e:	900e                	.insn	2, 0x900e
8000cc20:	4801                	.insn	2, 0x4801
8000cc22:	0181                	.insn	2, 0x0181
8000cc24:	0288                	.insn	2, 0x0288
8000cc26:	0c44                	.insn	2, 0x0c44
8000cc28:	0008                	.insn	2, 0x0008
8000cc2a:	0000                	.insn	2, 0x
8000cc2c:	001c                	.insn	2, 0x001c
8000cc2e:	0000                	.insn	2, 0x
8000cc30:	06a0                	.insn	2, 0x06a0
8000cc32:	0000                	.insn	2, 0x
8000cc34:	c76c                	.insn	2, 0xc76c
8000cc36:	ffff                	.insn	2, 0xffff
8000cc38:	0044                	.insn	2, 0x0044
8000cc3a:	0000                	.insn	2, 0x
8000cc3c:	4400                	.insn	2, 0x4400
8000cc3e:	200e                	.insn	2, 0x200e
8000cc40:	8148                	.insn	2, 0x8148
8000cc42:	8801                	.insn	2, 0x8801
8000cc44:	4402                	.insn	2, 0x4402
8000cc46:	080c                	.insn	2, 0x080c
8000cc48:	0000                	.insn	2, 0x
8000cc4a:	0000                	.insn	2, 0x
8000cc4c:	001c                	.insn	2, 0x001c
8000cc4e:	0000                	.insn	2, 0x
8000cc50:	06c0                	.insn	2, 0x06c0
8000cc52:	0000                	.insn	2, 0x
8000cc54:	c790                	.insn	2, 0xc790
8000cc56:	ffff                	.insn	2, 0xffff
8000cc58:	005c                	.insn	2, 0x005c
8000cc5a:	0000                	.insn	2, 0x
8000cc5c:	4400                	.insn	2, 0x4400
8000cc5e:	100e                	.insn	2, 0x100e
8000cc60:	8148                	.insn	2, 0x8148
8000cc62:	8801                	.insn	2, 0x8801
8000cc64:	4402                	.insn	2, 0x4402
8000cc66:	080c                	.insn	2, 0x080c
8000cc68:	0000                	.insn	2, 0x
8000cc6a:	0000                	.insn	2, 0x
8000cc6c:	001c                	.insn	2, 0x001c
8000cc6e:	0000                	.insn	2, 0x
8000cc70:	06e0                	.insn	2, 0x06e0
8000cc72:	0000                	.insn	2, 0x
8000cc74:	c7cc                	.insn	2, 0xc7cc
8000cc76:	ffff                	.insn	2, 0xffff
8000cc78:	0084                	.insn	2, 0x0084
8000cc7a:	0000                	.insn	2, 0x
8000cc7c:	4400                	.insn	2, 0x4400
8000cc7e:	900e                	.insn	2, 0x900e
8000cc80:	4801                	.insn	2, 0x4801
8000cc82:	0181                	.insn	2, 0x0181
8000cc84:	0288                	.insn	2, 0x0288
8000cc86:	0c44                	.insn	2, 0x0c44
8000cc88:	0008                	.insn	2, 0x0008
8000cc8a:	0000                	.insn	2, 0x
8000cc8c:	001c                	.insn	2, 0x001c
8000cc8e:	0000                	.insn	2, 0x
8000cc90:	0700                	.insn	2, 0x0700
8000cc92:	0000                	.insn	2, 0x
8000cc94:	c830                	.insn	2, 0xc830
8000cc96:	ffff                	.insn	2, 0xffff
8000cc98:	0084                	.insn	2, 0x0084
8000cc9a:	0000                	.insn	2, 0x
8000cc9c:	4400                	.insn	2, 0x4400
8000cc9e:	900e                	.insn	2, 0x900e
8000cca0:	4801                	.insn	2, 0x4801
8000cca2:	0181                	.insn	2, 0x0181
8000cca4:	0288                	.insn	2, 0x0288
8000cca6:	0c44                	.insn	2, 0x0c44
8000cca8:	0008                	.insn	2, 0x0008
8000ccaa:	0000                	.insn	2, 0x
8000ccac:	001c                	.insn	2, 0x001c
8000ccae:	0000                	.insn	2, 0x
8000ccb0:	0720                	.insn	2, 0x0720
8000ccb2:	0000                	.insn	2, 0x
8000ccb4:	c894                	.insn	2, 0xc894
8000ccb6:	ffff                	.insn	2, 0xffff
8000ccb8:	00f8                	.insn	2, 0x00f8
8000ccba:	0000                	.insn	2, 0x
8000ccbc:	4400                	.insn	2, 0x4400
8000ccbe:	900e                	.insn	2, 0x900e
8000ccc0:	4801                	.insn	2, 0x4801
8000ccc2:	0181                	.insn	2, 0x0181
8000ccc4:	0288                	.insn	2, 0x0288
8000ccc6:	0c44                	.insn	2, 0x0c44
8000ccc8:	0008                	.insn	2, 0x0008
8000ccca:	0000                	.insn	2, 0x
8000cccc:	001c                	.insn	2, 0x001c
8000ccce:	0000                	.insn	2, 0x
8000ccd0:	0740                	.insn	2, 0x0740
8000ccd2:	0000                	.insn	2, 0x
8000ccd4:	c96c                	.insn	2, 0xc96c
8000ccd6:	ffff                	.insn	2, 0xffff
8000ccd8:	0030                	.insn	2, 0x0030
8000ccda:	0000                	.insn	2, 0x
8000ccdc:	4400                	.insn	2, 0x4400
8000ccde:	100e                	.insn	2, 0x100e
8000cce0:	8148                	.insn	2, 0x8148
8000cce2:	8801                	.insn	2, 0x8801
8000cce4:	4402                	.insn	2, 0x4402
8000cce6:	080c                	.insn	2, 0x080c
8000cce8:	0000                	.insn	2, 0x
8000ccea:	0000                	.insn	2, 0x
8000ccec:	0030                	.insn	2, 0x0030
8000ccee:	0000                	.insn	2, 0x
8000ccf0:	0760                	.insn	2, 0x0760
8000ccf2:	0000                	.insn	2, 0x
8000ccf4:	c97c                	.insn	2, 0xc97c
8000ccf6:	ffff                	.insn	2, 0xffff
8000ccf8:	022c                	.insn	2, 0x022c
8000ccfa:	0000                	.insn	2, 0x
8000ccfc:	4400                	.insn	2, 0x4400
8000ccfe:	500e                	.insn	2, 0x500e
8000cd00:	8174                	.insn	2, 0x8174
8000cd02:	8801                	.insn	2, 0x8801
8000cd04:	8902                	.insn	2, 0x8902
8000cd06:	93049203          	lh	tp,-1744(s1)
8000cd0a:	9405                	.insn	2, 0x9405
8000cd0c:	9506                	.insn	2, 0x9506
8000cd0e:	97089607          	.insn	4, 0x97089607
8000cd12:	9809                	.insn	2, 0x9809
8000cd14:	990a                	.insn	2, 0x990a
8000cd16:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000cd1a:	440d                	.insn	2, 0x440d
8000cd1c:	080c                	.insn	2, 0x080c
8000cd1e:	0000                	.insn	2, 0x
8000cd20:	0030                	.insn	2, 0x0030
8000cd22:	0000                	.insn	2, 0x
8000cd24:	0794                	.insn	2, 0x0794
8000cd26:	0000                	.insn	2, 0x
8000cd28:	cb74                	.insn	2, 0xcb74
8000cd2a:	ffff                	.insn	2, 0xffff
8000cd2c:	0268                	.insn	2, 0x0268
8000cd2e:	0000                	.insn	2, 0x
8000cd30:	4400                	.insn	2, 0x4400
8000cd32:	500e                	.insn	2, 0x500e
8000cd34:	8174                	.insn	2, 0x8174
8000cd36:	8801                	.insn	2, 0x8801
8000cd38:	8902                	.insn	2, 0x8902
8000cd3a:	93049203          	lh	tp,-1744(s1)
8000cd3e:	9405                	.insn	2, 0x9405
8000cd40:	9506                	.insn	2, 0x9506
8000cd42:	97089607          	.insn	4, 0x97089607
8000cd46:	9809                	.insn	2, 0x9809
8000cd48:	990a                	.insn	2, 0x990a
8000cd4a:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000cd4e:	440d                	.insn	2, 0x440d
8000cd50:	080c                	.insn	2, 0x080c
8000cd52:	0000                	.insn	2, 0x
8000cd54:	001c                	.insn	2, 0x001c
8000cd56:	0000                	.insn	2, 0x
8000cd58:	07c8                	.insn	2, 0x07c8
8000cd5a:	0000                	.insn	2, 0x
8000cd5c:	cda8                	.insn	2, 0xcda8
8000cd5e:	ffff                	.insn	2, 0xffff
8000cd60:	002c                	.insn	2, 0x002c
8000cd62:	0000                	.insn	2, 0x
8000cd64:	4400                	.insn	2, 0x4400
8000cd66:	100e                	.insn	2, 0x100e
8000cd68:	8148                	.insn	2, 0x8148
8000cd6a:	8801                	.insn	2, 0x8801
8000cd6c:	4402                	.insn	2, 0x4402
8000cd6e:	080c                	.insn	2, 0x080c
8000cd70:	0000                	.insn	2, 0x
8000cd72:	0000                	.insn	2, 0x
8000cd74:	001c                	.insn	2, 0x001c
8000cd76:	0000                	.insn	2, 0x
8000cd78:	07e8                	.insn	2, 0x07e8
8000cd7a:	0000                	.insn	2, 0x
8000cd7c:	cdb4                	.insn	2, 0xcdb4
8000cd7e:	ffff                	.insn	2, 0xffff
8000cd80:	0118                	.insn	2, 0x0118
8000cd82:	0000                	.insn	2, 0x
8000cd84:	4400                	.insn	2, 0x4400
8000cd86:	900e                	.insn	2, 0x900e
8000cd88:	4801                	.insn	2, 0x4801
8000cd8a:	0181                	.insn	2, 0x0181
8000cd8c:	0288                	.insn	2, 0x0288
8000cd8e:	0c44                	.insn	2, 0x0c44
8000cd90:	0008                	.insn	2, 0x0008
8000cd92:	0000                	.insn	2, 0x
8000cd94:	001c                	.insn	2, 0x001c
8000cd96:	0000                	.insn	2, 0x
8000cd98:	0808                	.insn	2, 0x0808
8000cd9a:	0000                	.insn	2, 0x
8000cd9c:	ceac                	.insn	2, 0xceac
8000cd9e:	ffff                	.insn	2, 0xffff
8000cda0:	0034                	.insn	2, 0x0034
8000cda2:	0000                	.insn	2, 0x
8000cda4:	4400                	.insn	2, 0x4400
8000cda6:	100e                	.insn	2, 0x100e
8000cda8:	8148                	.insn	2, 0x8148
8000cdaa:	8801                	.insn	2, 0x8801
8000cdac:	4402                	.insn	2, 0x4402
8000cdae:	080c                	.insn	2, 0x080c
8000cdb0:	0000                	.insn	2, 0x
8000cdb2:	0000                	.insn	2, 0x
8000cdb4:	001c                	.insn	2, 0x001c
8000cdb6:	0000                	.insn	2, 0x
8000cdb8:	0828                	.insn	2, 0x0828
8000cdba:	0000                	.insn	2, 0x
8000cdbc:	cec0                	.insn	2, 0xcec0
8000cdbe:	ffff                	.insn	2, 0xffff
8000cdc0:	006c                	.insn	2, 0x006c
8000cdc2:	0000                	.insn	2, 0x
8000cdc4:	4400                	.insn	2, 0x4400
8000cdc6:	400e                	.insn	2, 0x400e
8000cdc8:	8148                	.insn	2, 0x8148
8000cdca:	8801                	.insn	2, 0x8801
8000cdcc:	4402                	.insn	2, 0x4402
8000cdce:	080c                	.insn	2, 0x080c
8000cdd0:	0000                	.insn	2, 0x
8000cdd2:	0000                	.insn	2, 0x
8000cdd4:	001c                	.insn	2, 0x001c
8000cdd6:	0000                	.insn	2, 0x
8000cdd8:	0848                	.insn	2, 0x0848
8000cdda:	0000                	.insn	2, 0x
8000cddc:	cf0c                	.insn	2, 0xcf0c
8000cdde:	ffff                	.insn	2, 0xffff
8000cde0:	0048                	.insn	2, 0x0048
8000cde2:	0000                	.insn	2, 0x
8000cde4:	4400                	.insn	2, 0x4400
8000cde6:	100e                	.insn	2, 0x100e
8000cde8:	8148                	.insn	2, 0x8148
8000cdea:	8801                	.insn	2, 0x8801
8000cdec:	4402                	.insn	2, 0x4402
8000cdee:	080c                	.insn	2, 0x080c
8000cdf0:	0000                	.insn	2, 0x
8000cdf2:	0000                	.insn	2, 0x
8000cdf4:	001c                	.insn	2, 0x001c
8000cdf6:	0000                	.insn	2, 0x
8000cdf8:	0868                	.insn	2, 0x0868
8000cdfa:	0000                	.insn	2, 0x
8000cdfc:	cf34                	.insn	2, 0xcf34
8000cdfe:	ffff                	.insn	2, 0xffff
8000ce00:	0088                	.insn	2, 0x0088
8000ce02:	0000                	.insn	2, 0x
8000ce04:	4400                	.insn	2, 0x4400
8000ce06:	100e                	.insn	2, 0x100e
8000ce08:	8148                	.insn	2, 0x8148
8000ce0a:	8801                	.insn	2, 0x8801
8000ce0c:	4402                	.insn	2, 0x4402
8000ce0e:	080c                	.insn	2, 0x080c
8000ce10:	0000                	.insn	2, 0x
8000ce12:	0000                	.insn	2, 0x
8000ce14:	001c                	.insn	2, 0x001c
8000ce16:	0000                	.insn	2, 0x
8000ce18:	0888                	.insn	2, 0x0888
8000ce1a:	0000                	.insn	2, 0x
8000ce1c:	cf9c                	.insn	2, 0xcf9c
8000ce1e:	ffff                	.insn	2, 0xffff
8000ce20:	0110                	.insn	2, 0x0110
8000ce22:	0000                	.insn	2, 0x
8000ce24:	4400                	.insn	2, 0x4400
8000ce26:	100e                	.insn	2, 0x100e
8000ce28:	8148                	.insn	2, 0x8148
8000ce2a:	8801                	.insn	2, 0x8801
8000ce2c:	4402                	.insn	2, 0x4402
8000ce2e:	080c                	.insn	2, 0x080c
8000ce30:	0000                	.insn	2, 0x
8000ce32:	0000                	.insn	2, 0x
8000ce34:	001c                	.insn	2, 0x001c
8000ce36:	0000                	.insn	2, 0x
8000ce38:	08a8                	.insn	2, 0x08a8
8000ce3a:	0000                	.insn	2, 0x
8000ce3c:	d08c                	.insn	2, 0xd08c
8000ce3e:	ffff                	.insn	2, 0xffff
8000ce40:	0024                	.insn	2, 0x0024
8000ce42:	0000                	.insn	2, 0x
8000ce44:	4400                	.insn	2, 0x4400
8000ce46:	100e                	.insn	2, 0x100e
8000ce48:	8148                	.insn	2, 0x8148
8000ce4a:	8801                	.insn	2, 0x8801
8000ce4c:	4402                	.insn	2, 0x4402
8000ce4e:	080c                	.insn	2, 0x080c
8000ce50:	0000                	.insn	2, 0x
8000ce52:	0000                	.insn	2, 0x
8000ce54:	001c                	.insn	2, 0x001c
8000ce56:	0000                	.insn	2, 0x
8000ce58:	08c8                	.insn	2, 0x08c8
8000ce5a:	0000                	.insn	2, 0x
8000ce5c:	d090                	.insn	2, 0xd090
8000ce5e:	ffff                	.insn	2, 0xffff
8000ce60:	03c4                	.insn	2, 0x03c4
8000ce62:	0000                	.insn	2, 0x
8000ce64:	4400                	.insn	2, 0x4400
8000ce66:	100e                	.insn	2, 0x100e
8000ce68:	8148                	.insn	2, 0x8148
8000ce6a:	8801                	.insn	2, 0x8801
8000ce6c:	4402                	.insn	2, 0x4402
8000ce6e:	080c                	.insn	2, 0x080c
8000ce70:	0000                	.insn	2, 0x
8000ce72:	0000                	.insn	2, 0x
8000ce74:	0028                	.insn	2, 0x0028
8000ce76:	0000                	.insn	2, 0x
8000ce78:	08e8                	.insn	2, 0x08e8
8000ce7a:	0000                	.insn	2, 0x
8000ce7c:	d434                	.insn	2, 0xd434
8000ce7e:	ffff                	.insn	2, 0xffff
8000ce80:	04b4                	.insn	2, 0x04b4
8000ce82:	0000                	.insn	2, 0x
8000ce84:	4400                	.insn	2, 0x4400
8000ce86:	300e                	.insn	2, 0x300e
8000ce88:	8164                	.insn	2, 0x8164
8000ce8a:	8801                	.insn	2, 0x8801
8000ce8c:	8902                	.insn	2, 0x8902
8000ce8e:	93049203          	lh	tp,-1744(s1)
8000ce92:	9405                	.insn	2, 0x9405
8000ce94:	9506                	.insn	2, 0x9506
8000ce96:	97089607          	.insn	4, 0x97089607
8000ce9a:	4409                	.insn	2, 0x4409
8000ce9c:	080c                	.insn	2, 0x080c
8000ce9e:	0000                	.insn	2, 0x
8000cea0:	001c                	.insn	2, 0x001c
8000cea2:	0000                	.insn	2, 0x
8000cea4:	0914                	.insn	2, 0x0914
8000cea6:	0000                	.insn	2, 0x
8000cea8:	d8bc                	.insn	2, 0xd8bc
8000ceaa:	ffff                	.insn	2, 0xffff
8000ceac:	0144                	.insn	2, 0x0144
8000ceae:	0000                	.insn	2, 0x
8000ceb0:	4400                	.insn	2, 0x4400
8000ceb2:	100e                	.insn	2, 0x100e
8000ceb4:	8148                	.insn	2, 0x8148
8000ceb6:	8801                	.insn	2, 0x8801
8000ceb8:	4402                	.insn	2, 0x4402
8000ceba:	080c                	.insn	2, 0x080c
8000cebc:	0000                	.insn	2, 0x
8000cebe:	0000                	.insn	2, 0x
8000cec0:	001c                	.insn	2, 0x001c
8000cec2:	0000                	.insn	2, 0x
8000cec4:	0934                	.insn	2, 0x0934
8000cec6:	0000                	.insn	2, 0x
8000cec8:	d9e0                	.insn	2, 0xd9e0
8000ceca:	ffff                	.insn	2, 0xffff
8000cecc:	0024                	.insn	2, 0x0024
8000cece:	0000                	.insn	2, 0x
8000ced0:	4400                	.insn	2, 0x4400
8000ced2:	100e                	.insn	2, 0x100e
8000ced4:	8148                	.insn	2, 0x8148
8000ced6:	8801                	.insn	2, 0x8801
8000ced8:	4402                	.insn	2, 0x4402
8000ceda:	080c                	.insn	2, 0x080c
8000cedc:	0000                	.insn	2, 0x
8000cede:	0000                	.insn	2, 0x
8000cee0:	001c                	.insn	2, 0x001c
8000cee2:	0000                	.insn	2, 0x
8000cee4:	0954                	.insn	2, 0x0954
8000cee6:	0000                	.insn	2, 0x
8000cee8:	d9e4                	.insn	2, 0xd9e4
8000ceea:	ffff                	.insn	2, 0xffff
8000ceec:	0044                	.insn	2, 0x0044
8000ceee:	0000                	.insn	2, 0x
8000cef0:	4400                	.insn	2, 0x4400
8000cef2:	200e                	.insn	2, 0x200e
8000cef4:	8148                	.insn	2, 0x8148
8000cef6:	8801                	.insn	2, 0x8801
8000cef8:	4402                	.insn	2, 0x4402
8000cefa:	080c                	.insn	2, 0x080c
8000cefc:	0000                	.insn	2, 0x
8000cefe:	0000                	.insn	2, 0x
8000cf00:	001c                	.insn	2, 0x001c
8000cf02:	0000                	.insn	2, 0x
8000cf04:	0974                	.insn	2, 0x0974
8000cf06:	0000                	.insn	2, 0x
8000cf08:	da08                	.insn	2, 0xda08
8000cf0a:	ffff                	.insn	2, 0xffff
8000cf0c:	0024                	.insn	2, 0x0024
8000cf0e:	0000                	.insn	2, 0x
8000cf10:	4400                	.insn	2, 0x4400
8000cf12:	100e                	.insn	2, 0x100e
8000cf14:	8148                	.insn	2, 0x8148
8000cf16:	8801                	.insn	2, 0x8801
8000cf18:	4402                	.insn	2, 0x4402
8000cf1a:	080c                	.insn	2, 0x080c
8000cf1c:	0000                	.insn	2, 0x
8000cf1e:	0000                	.insn	2, 0x
8000cf20:	0024                	.insn	2, 0x0024
8000cf22:	0000                	.insn	2, 0x
8000cf24:	0994                	.insn	2, 0x0994
8000cf26:	0000                	.insn	2, 0x
8000cf28:	da0c                	.insn	2, 0xda0c
8000cf2a:	ffff                	.insn	2, 0xffff
8000cf2c:	0310                	.insn	2, 0x0310
8000cf2e:	0000                	.insn	2, 0x
8000cf30:	4400                	.insn	2, 0x4400
8000cf32:	200e                	.insn	2, 0x200e
8000cf34:	815c                	.insn	2, 0x815c
8000cf36:	8801                	.insn	2, 0x8801
8000cf38:	8902                	.insn	2, 0x8902
8000cf3a:	93049203          	lh	tp,-1744(s1)
8000cf3e:	9405                	.insn	2, 0x9405
8000cf40:	9506                	.insn	2, 0x9506
8000cf42:	080c4407          	.insn	4, 0x080c4407
8000cf46:	0000                	.insn	2, 0x
8000cf48:	0024                	.insn	2, 0x0024
8000cf4a:	0000                	.insn	2, 0x
8000cf4c:	09bc                	.insn	2, 0x09bc
8000cf4e:	0000                	.insn	2, 0x
8000cf50:	dcf4                	.insn	2, 0xdcf4
8000cf52:	ffff                	.insn	2, 0xffff
8000cf54:	00d8                	.insn	2, 0x00d8
8000cf56:	0000                	.insn	2, 0x
8000cf58:	4400                	.insn	2, 0x4400
8000cf5a:	200e                	.insn	2, 0x200e
8000cf5c:	8158                	.insn	2, 0x8158
8000cf5e:	8801                	.insn	2, 0x8801
8000cf60:	8902                	.insn	2, 0x8902
8000cf62:	93049203          	lh	tp,-1744(s1)
8000cf66:	9405                	.insn	2, 0x9405
8000cf68:	4406                	.insn	2, 0x4406
8000cf6a:	080c                	.insn	2, 0x080c
8000cf6c:	0000                	.insn	2, 0x
8000cf6e:	0000                	.insn	2, 0x
8000cf70:	0020                	.insn	2, 0x0020
8000cf72:	0000                	.insn	2, 0x
8000cf74:	09e4                	.insn	2, 0x09e4
8000cf76:	0000                	.insn	2, 0x
8000cf78:	dda4                	.insn	2, 0xdda4
8000cf7a:	ffff                	.insn	2, 0xffff
8000cf7c:	0064                	.insn	2, 0x0064
8000cf7e:	0000                	.insn	2, 0x
8000cf80:	4400                	.insn	2, 0x4400
8000cf82:	100e                	.insn	2, 0x100e
8000cf84:	8150                	.insn	2, 0x8150
8000cf86:	8801                	.insn	2, 0x8801
8000cf88:	8902                	.insn	2, 0x8902
8000cf8a:	44049203          	lh	tp,1088(s1)
8000cf8e:	080c                	.insn	2, 0x080c
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
