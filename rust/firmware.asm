
./rust/target/riscv32i-unknown-none-elf/release/SuperOS:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	0000e297          	auipc	t0,0xe
80000004:	fa828293          	addi	t0,t0,-88 # 8000dfa8 <__bss_start>

80000008 <.Lpcrel_hi1>:
80000008:	0000f317          	auipc	t1,0xf
8000000c:	fd830313          	addi	t1,t1,-40 # 8000efe0 <__bss_end>
80000010:	0062f863          	bgeu	t0,t1,80000020 <.Lpcrel_hi2>

80000014 <.bss_zero_loop>:
80000014:	00028023          	sb	zero,0(t0)
80000018:	00128293          	addi	t0,t0,1
8000001c:	fe62ece3          	bltu	t0,t1,80000014 <.bss_zero_loop>

80000020 <.Lpcrel_hi2>:
80000020:	0000f117          	auipc	sp,0xf
80000024:	fc010113          	addi	sp,sp,-64 # 8000efe0 <__bss_end>
80000028:	3d5010ef          	jal	80001bfc <kernel_main>

8000002c <.infinite_loop>:
8000002c:	0000006f          	j	8000002c <.infinite_loop>

80000030 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h474e3d1cccdd721fE>:
80000030:	00052503          	lw	a0,0(a0)
80000034:	00007317          	auipc	t1,0x7
80000038:	d3c30067          	jr	-708(t1) # 80006d70 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa05253f8c12d2c8E>

8000003c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h04315e1379c69354E>:
8000003c:	00052503          	lw	a0,0(a0)
80000040:	00007317          	auipc	t1,0x7
80000044:	e2030067          	jr	-480(t1) # 80006e60 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E>

80000048 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E>:
80000048:	01c5a603          	lw	a2,28(a1)
8000004c:	01067693          	andi	a3,a2,16
80000050:	00069a63          	bnez	a3,80000064 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E+0x1c>
80000054:	02067613          	andi	a2,a2,32
80000058:	00061a63          	bnez	a2,8000006c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbdb4c5791627bc87E+0x24>
8000005c:	0000a317          	auipc	t1,0xa
80000060:	87830067          	jr	-1928(t1) # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80000064:	00009317          	auipc	t1,0x9
80000068:	67030067          	jr	1648(t1) # 800096d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
8000006c:	00009317          	auipc	t1,0x9
80000070:	6ec30067          	jr	1772(t1) # 80009758 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E>

80000074 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739>:
80000074:	ff010113          	addi	sp,sp,-16
80000078:	08000513          	li	a0,128
8000007c:	00012623          	sw	zero,12(sp)
80000080:	00a5f863          	bgeu	a1,a0,80000090 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0x1c>
80000084:	00d10513          	addi	a0,sp,13
80000088:	00b10623          	sb	a1,12(sp)
8000008c:	0a00006f          	j	8000012c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0xb8>
80000090:	00b5d513          	srli	a0,a1,0xb
80000094:	02051263          	bnez	a0,800000b8 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0x44>
80000098:	00e10513          	addi	a0,sp,14
8000009c:	0065d613          	srli	a2,a1,0x6
800000a0:	0c066613          	ori	a2,a2,192
800000a4:	00c10623          	sb	a2,12(sp)
800000a8:	03f5f593          	andi	a1,a1,63
800000ac:	08058593          	addi	a1,a1,128
800000b0:	00b106a3          	sb	a1,13(sp)
800000b4:	0780006f          	j	8000012c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0xb8>
800000b8:	0105d513          	srli	a0,a1,0x10
800000bc:	02051a63          	bnez	a0,800000f0 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0x7c>
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
800000ec:	0400006f          	j	8000012c <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0xb8>
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
80000144:	fea718e3          	bne	a4,a0,80000134 <_ZN4core3fmt5Write10write_char17hb2fec6dd2c9b1130E.llvm.14191420167725335739+0xc0>
80000148:	00000513          	li	a0,0
8000014c:	01010113          	addi	sp,sp,16
80000150:	00008067          	ret

80000154 <_ZN4core3fmt5Write9write_fmt17hfc336d22037d8a30E.llvm.14191420167725335739>:
80000154:	8000c637          	lui	a2,0x8000c
80000158:	15c60613          	addi	a2,a2,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
8000015c:	00058693          	mv	a3,a1
80000160:	00060593          	mv	a1,a2
80000164:	00068613          	mv	a2,a3
80000168:	00008317          	auipc	t1,0x8
8000016c:	d4430067          	jr	-700(t1) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80000170 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>:
80000170:	00052503          	lw	a0,0(a0)
80000174:	00009317          	auipc	t1,0x9
80000178:	c5030067          	jr	-944(t1) # 80008dc4 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E>

8000017c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hba1ddd0fb8e63500E.llvm.14191420167725335739>:
8000017c:	8000c6b7          	lui	a3,0x8000c
80000180:	01068693          	addi	a3,a3,16 # 8000c010 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.1>
80000184:	00500613          	li	a2,5
80000188:	00058513          	mv	a0,a1
8000018c:	00068593          	mv	a1,a3
80000190:	00009317          	auipc	t1,0x9
80000194:	ac430067          	jr	-1340(t1) # 80008c54 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

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
800001d8:	8000e5b7          	lui	a1,0x8000e
800001dc:	fc458593          	addi	a1,a1,-60 # 8000dfc4 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739+0x4>
800001e0:	00410513          	addi	a0,sp,4
800001e4:	00400613          	li	a2,4
800001e8:	00048693          	mv	a3,s1
800001ec:	00001097          	auipc	ra,0x1
800001f0:	c04080e7          	jalr	-1020(ra) # 80000df0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>
800001f4:	00812503          	lw	a0,8(sp)
800001f8:	0c050463          	beqz	a0,800002c0 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x128>
800001fc:	00c12503          	lw	a0,12(sp)
80000200:	8000eab7          	lui	s5,0x8000e
80000204:	fc0aa583          	lw	a1,-64(s5) # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
80000208:	00412903          	lw	s2,4(sp)
8000020c:	fc0a8b13          	addi	s6,s5,-64
80000210:	00a58533          	add	a0,a1,a0
80000214:	fcaaa023          	sw	a0,-64(s5)
80000218:	00090513          	mv	a0,s2
8000021c:	000a0593          	mv	a1,s4
80000220:	00098613          	mv	a2,s3
80000224:	0000a097          	auipc	ra,0xa
80000228:	e28080e7          	jalr	-472(ra) # 8000a04c <memcpy>
8000022c:	004b0513          	addi	a0,s6,4
80000230:	00400613          	li	a2,4
80000234:	000a0593          	mv	a1,s4
80000238:	00098693          	mv	a3,s3
8000023c:	00001097          	auipc	ra,0x1
80000240:	d9c080e7          	jalr	-612(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80000244:	fc0aa503          	lw	a0,-64(s5)
80000248:	40b50533          	sub	a0,a0,a1
8000024c:	fcaaa023          	sw	a0,-64(s5)
80000250:	0640006f          	j	800002b4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x11c>
80000254:	04048863          	beqz	s1,800002a4 <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x10c>
80000258:	8000e537          	lui	a0,0x8000e
8000025c:	fbe54003          	lbu	zero,-66(a0) # 8000dfbe <__rust_no_alloc_shim_is_unstable>
80000260:	8000e5b7          	lui	a1,0x8000e
80000264:	fc458593          	addi	a1,a1,-60 # 8000dfc4 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739+0x4>
80000268:	00410513          	addi	a0,sp,4
8000026c:	00400613          	li	a2,4
80000270:	00048693          	mv	a3,s1
80000274:	00001097          	auipc	ra,0x1
80000278:	b7c080e7          	jalr	-1156(ra) # 80000df0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>
8000027c:	00812503          	lw	a0,8(sp)
80000280:	02050663          	beqz	a0,800002ac <_ZN5alloc7raw_vec11finish_grow17h182efa19389c14adE+0x114>
80000284:	00c12503          	lw	a0,12(sp)
80000288:	8000e5b7          	lui	a1,0x8000e
8000028c:	fc05a603          	lw	a2,-64(a1) # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
80000290:	00412903          	lw	s2,4(sp)
80000294:	00a60533          	add	a0,a2,a0
80000298:	fca5a023          	sw	a0,-64(a1)
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
80000318:	00168513          	addi	a0,a3,1
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
800003d4:	f60080e7          	jalr	-160(ra) # 80002330 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>

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
80000430:	b98080e7          	jalr	-1128(ra) # 80009fc4 <__muldi3>
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
8000045c:	b24080e7          	jalr	-1244(ra) # 80009f7c <__mulsi3>
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
800004d0:	e64080e7          	jalr	-412(ra) # 80002330 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>
800004d4:	00412503          	lw	a0,4(sp)
800004d8:	00812583          	lw	a1,8(sp)
800004dc:	00040613          	mv	a2,s0
800004e0:	00002097          	auipc	ra,0x2
800004e4:	e50080e7          	jalr	-432(ra) # 80002330 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>

800004e8 <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7c70724592f5f6eE>:
800004e8:	fe010113          	addi	sp,sp,-32
800004ec:	00112e23          	sw	ra,28(sp)
800004f0:	00058293          	mv	t0,a1
800004f4:	00450793          	addi	a5,a0,4
800004f8:	00a12c23          	sw	a0,24(sp)
800004fc:	8000c537          	lui	a0,0x8000c
80000500:	02850513          	addi	a0,a0,40 # 8000c028 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.3>
80000504:	00a12423          	sw	a0,8(sp)
80000508:	01810513          	addi	a0,sp,24
8000050c:	00a12223          	sw	a0,4(sp)
80000510:	00500513          	li	a0,5
80000514:	8000c5b7          	lui	a1,0x8000c
80000518:	03858593          	addi	a1,a1,56 # 8000c038 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4>
8000051c:	8000c6b7          	lui	a3,0x8000c
80000520:	04268693          	addi	a3,a3,66 # 8000c042 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4+0xa>
80000524:	8000c837          	lui	a6,0x8000c
80000528:	01880813          	addi	a6,a6,24 # 8000c018 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.2>
8000052c:	8000c8b7          	lui	a7,0x8000c
80000530:	04688893          	addi	a7,a7,70 # 8000c046 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.6>
80000534:	00600613          	li	a2,6
80000538:	00400713          	li	a4,4
8000053c:	00a12023          	sw	a0,0(sp)
80000540:	00028513          	mv	a0,t0
80000544:	00008097          	auipc	ra,0x8
80000548:	73c080e7          	jalr	1852(ra) # 80008c80 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E>
8000054c:	01c12083          	lw	ra,28(sp)
80000550:	02010113          	addi	sp,sp,32
80000554:	00008067          	ret

80000558 <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.14191420167725335739>:
80000558:	00054503          	lbu	a0,0(a0)
8000055c:	00251513          	slli	a0,a0,0x2
80000560:	8000c637          	lui	a2,0x8000c
80000564:	2c860613          	addi	a2,a2,712 # 8000c2c8 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.14191420167725335739>
80000568:	00a60633          	add	a2,a2,a0
8000056c:	00062603          	lw	a2,0(a2)
80000570:	8000c6b7          	lui	a3,0x8000c
80000574:	30468693          	addi	a3,a3,772 # 8000c304 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.14191420167725335739.3>
80000578:	00a68533          	add	a0,a3,a0
8000057c:	00052683          	lw	a3,0(a0)
80000580:	00058513          	mv	a0,a1
80000584:	00068593          	mv	a1,a3
80000588:	00008317          	auipc	t1,0x8
8000058c:	6cc30067          	jr	1740(t1) # 80008c54 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

80000590 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE.llvm.14191420167725335739>:
80000590:	00060e63          	beqz	a2,800005ac <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE.llvm.14191420167725335739+0x1c>
80000594:	10000537          	lui	a0,0x10000
80000598:	0005c683          	lbu	a3,0(a1)
8000059c:	00158593          	addi	a1,a1,1
800005a0:	fff60613          	addi	a2,a2,-1
800005a4:	00d50023          	sb	a3,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
800005a8:	fe0618e3          	bnez	a2,80000598 <_ZN61_$LT$SuperOS..printer..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h5e7fba0b5fa497fbE.llvm.14191420167725335739+0x8>
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
800005d8:	8000c537          	lui	a0,0x8000c
800005dc:	09050513          	addi	a0,a0,144 # 8000c090 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.7+0x45>
800005e0:	00b50533          	add	a0,a0,a1
800005e4:	00054503          	lbu	a0,0(a0)
800005e8:	00a103a3          	sb	a0,7(sp)
800005ec:	34102573          	.insn	4, 0x34102573
800005f0:	02a12823          	sw	a0,48(sp)
800005f4:	03010513          	addi	a0,sp,48
800005f8:	02a12023          	sw	a0,32(sp)
800005fc:	80009537          	lui	a0,0x80009
80000600:	6d450513          	addi	a0,a0,1748 # 800096d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000604:	02a12223          	sw	a0,36(sp)
80000608:	00710513          	addi	a0,sp,7
8000060c:	02a12423          	sw	a0,40(sp)
80000610:	80000537          	lui	a0,0x80000
80000614:	55850513          	addi	a0,a0,1368 # 80000558 <_ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.14191420167725335739>
80000618:	02a12623          	sw	a0,44(sp)
8000061c:	8000c537          	lui	a0,0x8000c
80000620:	1e850513          	addi	a0,a0,488 # 8000c1e8 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.30.llvm.14191420167725335739>
80000624:	00a12423          	sw	a0,8(sp)
80000628:	00300513          	li	a0,3
8000062c:	00a12623          	sw	a0,12(sp)
80000630:	00012c23          	sw	zero,24(sp)
80000634:	02010513          	addi	a0,sp,32
80000638:	00a12823          	sw	a0,16(sp)
8000063c:	00200513          	li	a0,2
80000640:	00a12a23          	sw	a0,20(sp)
80000644:	8000c5b7          	lui	a1,0x8000c
80000648:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
8000064c:	03410513          	addi	a0,sp,52
80000650:	00810613          	addi	a2,sp,8
80000654:	00008097          	auipc	ra,0x8
80000658:	858080e7          	jalr	-1960(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
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
80000704:	8000c537          	lui	a0,0x8000c
80000708:	18450513          	addi	a0,a0,388 # 8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>
8000070c:	8000c6b7          	lui	a3,0x8000c
80000710:	17468693          	addi	a3,a3,372 # 8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>
80000714:	8000c737          	lui	a4,0x8000c
80000718:	1c070713          	addi	a4,a4,448 # 8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>
8000071c:	02b00593          	li	a1,43
80000720:	03410613          	addi	a2,sp,52
80000724:	00007097          	auipc	ra,0x7
80000728:	af8080e7          	jalr	-1288(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

8000072c <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE>:
8000072c:	f7010113          	addi	sp,sp,-144
80000730:	08112623          	sw	ra,140(sp)
80000734:	08812423          	sw	s0,136(sp)
80000738:	08912223          	sw	s1,132(sp)
8000073c:	09212023          	sw	s2,128(sp)
80000740:	07312e23          	sw	s3,124(sp)
80000744:	8000f937          	lui	s2,0x8000f
80000748:	00090913          	mv	s2,s2
8000074c:	03212023          	sw	s2,32(sp)
80000750:	02010513          	addi	a0,sp,32
80000754:	00a12423          	sw	a0,8(sp)
80000758:	800099b7          	lui	s3,0x80009
8000075c:	6d498993          	addi	s3,s3,1748 # 800096d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
80000760:	01312623          	sw	s3,12(sp)
80000764:	8000c537          	lui	a0,0x8000c
80000768:	28050513          	addi	a0,a0,640 # 8000c280 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.39>
8000076c:	02a12c23          	sw	a0,56(sp)
80000770:	00200513          	li	a0,2
80000774:	02a12e23          	sw	a0,60(sp)
80000778:	04012423          	sw	zero,72(sp)
8000077c:	00810513          	addi	a0,sp,8
80000780:	04a12023          	sw	a0,64(sp)
80000784:	00100513          	li	a0,1
80000788:	04a12223          	sw	a0,68(sp)
8000078c:	8000c5b7          	lui	a1,0x8000c
80000790:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
80000794:	07b10513          	addi	a0,sp,123
80000798:	03810613          	addi	a2,sp,56
8000079c:	00007097          	auipc	ra,0x7
800007a0:	710080e7          	jalr	1808(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800007a4:	16051663          	bnez	a0,80000910 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1e4>
800007a8:	8000e537          	lui	a0,0x8000e
800007ac:	fbc54583          	lbu	a1,-68(a0) # 8000dfbc <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.14191420167725335739>
800007b0:	00058463          	beqz	a1,800007b8 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x8c>
800007b4:	0000006f          	j	800007b4 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x88>
800007b8:	00100593          	li	a1,1
800007bc:	fab50e23          	sb	a1,-68(a0)
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
80000838:	8000c5b7          	lui	a1,0x8000c
8000083c:	23858593          	addi	a1,a1,568 # 8000c238 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.35>
80000840:	00b12423          	sw	a1,8(sp)
80000844:	00e12623          	sw	a4,12(sp)
80000848:	03810593          	addi	a1,sp,56
8000084c:	00b12c23          	sw	a1,24(sp)
80000850:	00a12e23          	sw	a0,28(sp)
80000854:	02010593          	addi	a1,sp,32
80000858:	00b12823          	sw	a1,16(sp)
8000085c:	00a12a23          	sw	a0,20(sp)
80000860:	8000c5b7          	lui	a1,0x8000c
80000864:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
80000868:	07b10513          	addi	a0,sp,123
8000086c:	00810613          	addi	a2,sp,8
80000870:	00007097          	auipc	ra,0x7
80000874:	63c080e7          	jalr	1596(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80000878:	08051c63          	bnez	a0,80000910 <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1e4>
8000087c:	803fe537          	lui	a0,0x803fe
80000880:	fff50513          	addi	a0,a0,-1 # 803fdfff <KALLOC_BUFFER+0x3eefff>
80000884:	07256463          	bltu	a0,s2,800008ec <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1c0>
80000888:	8000e537          	lui	a0,0x8000e
8000088c:	fb052603          	lw	a2,-80(a0) # 8000dfb0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0.llvm.14191420167725335739>
80000890:	8000e5b7          	lui	a1,0x8000e
80000894:	fb45a683          	lw	a3,-76(a1) # 8000dfb4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1.llvm.14191420167725335739>
80000898:	00c41713          	slli	a4,s0,0xc
8000089c:	00c72023          	sw	a2,0(a4)
800008a0:	00d72223          	sw	a3,4(a4)
800008a4:	00100613          	li	a2,1
800008a8:	fac52823          	sw	a2,-80(a0)
800008ac:	000806b7          	lui	a3,0x80
800008b0:	3fd68693          	addi	a3,a3,1021 # 803fd <.Lline_table_start2+0x7f04f>
800008b4:	fa85aa23          	sw	s0,-76(a1)
800008b8:	02d48a63          	beq	s1,a3,800008ec <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1c0>
800008bc:	00c49713          	slli	a4,s1,0xc
800008c0:	000027b7          	lui	a5,0x2
800008c4:	00f70733          	add	a4,a4,a5
800008c8:	000017b7          	lui	a5,0x1
800008cc:	00040813          	mv	a6,s0
800008d0:	00c72023          	sw	a2,0(a4)
800008d4:	00872223          	sw	s0,4(a4)
800008d8:	fac52823          	sw	a2,-80(a0)
800008dc:	00140413          	addi	s0,s0,1
800008e0:	fa85aa23          	sw	s0,-76(a1)
800008e4:	00f70733          	add	a4,a4,a5
800008e8:	fed812e3          	bne	a6,a3,800008cc <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE+0x1a0>
800008ec:	8000e537          	lui	a0,0x8000e
800008f0:	fa050e23          	sb	zero,-68(a0) # 8000dfbc <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.14191420167725335739>
800008f4:	08c12083          	lw	ra,140(sp)
800008f8:	08812403          	lw	s0,136(sp)
800008fc:	08412483          	lw	s1,132(sp)
80000900:	08012903          	lw	s2,128(sp)
80000904:	07c12983          	lw	s3,124(sp)
80000908:	09010113          	addi	sp,sp,144
8000090c:	00008067          	ret
80000910:	8000c537          	lui	a0,0x8000c
80000914:	18450513          	addi	a0,a0,388 # 8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>
80000918:	8000c6b7          	lui	a3,0x8000c
8000091c:	17468693          	addi	a3,a3,372 # 8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>
80000920:	8000c737          	lui	a4,0x8000c
80000924:	1c070713          	addi	a4,a4,448 # 8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>
80000928:	02b00593          	li	a1,43
8000092c:	07b10613          	addi	a2,sp,123
80000930:	00007097          	auipc	ra,0x7
80000934:	8ec080e7          	jalr	-1812(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80000938 <_ZN7SuperOS6kalloc18handle_alloc_error17he72829956feb0252E>:
80000938:	fd010113          	addi	sp,sp,-48
8000093c:	00a12423          	sw	a0,8(sp)
80000940:	00b12623          	sw	a1,12(sp)
80000944:	00810513          	addi	a0,sp,8
80000948:	02a12423          	sw	a0,40(sp)
8000094c:	80000537          	lui	a0,0x80000
80000950:	4e850513          	addi	a0,a0,1256 # 800004e8 <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7c70724592f5f6eE>
80000954:	02a12623          	sw	a0,44(sp)
80000958:	8000c537          	lui	a0,0x8000c
8000095c:	2a050513          	addi	a0,a0,672 # 8000c2a0 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.41>
80000960:	00a12823          	sw	a0,16(sp)
80000964:	00100513          	li	a0,1
80000968:	00a12a23          	sw	a0,20(sp)
8000096c:	02012023          	sw	zero,32(sp)
80000970:	02810593          	addi	a1,sp,40
80000974:	00b12c23          	sw	a1,24(sp)
80000978:	00a12e23          	sw	a0,28(sp)
8000097c:	8000c5b7          	lui	a1,0x8000c
80000980:	2b858593          	addi	a1,a1,696 # 8000c2b8 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.43>
80000984:	01010513          	addi	a0,sp,16
80000988:	00006097          	auipc	ra,0x6
8000098c:	624080e7          	jalr	1572(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80000990 <__rg_oom>:
80000990:	00050613          	mv	a2,a0
80000994:	00058513          	mv	a0,a1
80000998:	00060593          	mv	a1,a2
8000099c:	00000097          	auipc	ra,0x0
800009a0:	f9c080e7          	jalr	-100(ra) # 80000938 <_ZN7SuperOS6kalloc18handle_alloc_error17he72829956feb0252E>

800009a4 <latency_bench>:
800009a4:	0000b297          	auipc	t0,0xb
800009a8:	65c28293          	addi	t0,t0,1628 # 8000c000 <my_block>
800009ac:	fd010113          	addi	sp,sp,-48
800009b0:	00812023          	sw	s0,0(sp)
800009b4:	00912223          	sw	s1,4(sp)
800009b8:	01212423          	sw	s2,8(sp)
800009bc:	01312623          	sw	s3,12(sp)
800009c0:	01412823          	sw	s4,16(sp)
800009c4:	01512a23          	sw	s5,20(sp)
800009c8:	01612c23          	sw	s6,24(sp)
800009cc:	01712e23          	sw	s7,28(sp)
800009d0:	03812023          	sw	s8,32(sp)
800009d4:	03912223          	sw	s9,36(sp)
800009d8:	03a12423          	sw	s10,40(sp)
800009dc:	03b12623          	sw	s11,44(sp)
800009e0:	00000013          	nop
800009e4:	00000013          	nop
800009e8:	00000013          	nop
800009ec:	00000013          	nop
800009f0:	00000013          	nop
800009f4:	00000013          	nop
800009f8:	00000013          	nop
800009fc:	00000013          	nop
80000a00:	00000013          	nop
80000a04:	00000013          	nop
80000a08:	00000013          	nop
80000a0c:	0ff0000f          	fence
80000a10:	0002a503          	lw	a0,0(t0)
80000a14:	0002a583          	lw	a1,0(t0)
80000a18:	0002a603          	lw	a2,0(t0)
80000a1c:	0002a683          	lw	a3,0(t0)
80000a20:	0002a703          	lw	a4,0(t0)
80000a24:	0002a783          	lw	a5,0(t0)
80000a28:	0002a803          	lw	a6,0(t0)
80000a2c:	0002a883          	lw	a7,0(t0)
80000a30:	0002a403          	lw	s0,0(t0)
80000a34:	0002a483          	lw	s1,0(t0)
80000a38:	0002a903          	lw	s2,0(t0)
80000a3c:	0002a983          	lw	s3,0(t0)
80000a40:	0002aa03          	lw	s4,0(t0)
80000a44:	0002aa83          	lw	s5,0(t0)
80000a48:	0002ab03          	lw	s6,0(t0)
80000a4c:	0002ab83          	lw	s7,0(t0)
80000a50:	0002ac03          	lw	s8,0(t0)
80000a54:	0002ac83          	lw	s9,0(t0)
80000a58:	0002ad03          	lw	s10,0(t0)
80000a5c:	0002ad83          	lw	s11,0(t0)
80000a60:	0002a503          	lw	a0,0(t0)
80000a64:	0002a583          	lw	a1,0(t0)
80000a68:	0002a603          	lw	a2,0(t0)
80000a6c:	0002a683          	lw	a3,0(t0)
80000a70:	0002a703          	lw	a4,0(t0)
80000a74:	0002a783          	lw	a5,0(t0)
80000a78:	0002a803          	lw	a6,0(t0)
80000a7c:	0002a883          	lw	a7,0(t0)
80000a80:	0002a403          	lw	s0,0(t0)
80000a84:	0002a483          	lw	s1,0(t0)
80000a88:	0002a903          	lw	s2,0(t0)
80000a8c:	0002a983          	lw	s3,0(t0)
80000a90:	0002aa03          	lw	s4,0(t0)
80000a94:	0002aa83          	lw	s5,0(t0)
80000a98:	0002ab03          	lw	s6,0(t0)
80000a9c:	0002ab83          	lw	s7,0(t0)
80000aa0:	0002ac03          	lw	s8,0(t0)
80000aa4:	0002ac83          	lw	s9,0(t0)
80000aa8:	0002ad03          	lw	s10,0(t0)
80000aac:	0002ad83          	lw	s11,0(t0)
80000ab0:	0002a503          	lw	a0,0(t0)
80000ab4:	0002a583          	lw	a1,0(t0)
80000ab8:	0002a603          	lw	a2,0(t0)
80000abc:	0002a683          	lw	a3,0(t0)
80000ac0:	0002a703          	lw	a4,0(t0)
80000ac4:	0002a783          	lw	a5,0(t0)
80000ac8:	0002a803          	lw	a6,0(t0)
80000acc:	0002a883          	lw	a7,0(t0)
80000ad0:	0002a403          	lw	s0,0(t0)
80000ad4:	0002a483          	lw	s1,0(t0)
80000ad8:	0002a903          	lw	s2,0(t0)
80000adc:	0002a983          	lw	s3,0(t0)
80000ae0:	0002aa03          	lw	s4,0(t0)
80000ae4:	0002aa83          	lw	s5,0(t0)
80000ae8:	0002ab03          	lw	s6,0(t0)
80000aec:	0002ab83          	lw	s7,0(t0)
80000af0:	0002ac03          	lw	s8,0(t0)
80000af4:	0002ac83          	lw	s9,0(t0)
80000af8:	0002ad03          	lw	s10,0(t0)
80000afc:	0002ad83          	lw	s11,0(t0)
80000b00:	0002a503          	lw	a0,0(t0)
80000b04:	0002a583          	lw	a1,0(t0)
80000b08:	0002a603          	lw	a2,0(t0)
80000b0c:	0002a683          	lw	a3,0(t0)
80000b10:	0002a703          	lw	a4,0(t0)
80000b14:	0002a783          	lw	a5,0(t0)
80000b18:	0002a803          	lw	a6,0(t0)
80000b1c:	0002a883          	lw	a7,0(t0)
80000b20:	0002a403          	lw	s0,0(t0)
80000b24:	0002a483          	lw	s1,0(t0)
80000b28:	0002a903          	lw	s2,0(t0)
80000b2c:	0002a983          	lw	s3,0(t0)
80000b30:	0002aa03          	lw	s4,0(t0)
80000b34:	0002aa83          	lw	s5,0(t0)
80000b38:	0002ab03          	lw	s6,0(t0)
80000b3c:	0002ab83          	lw	s7,0(t0)
80000b40:	0002ac03          	lw	s8,0(t0)
80000b44:	0002ac83          	lw	s9,0(t0)
80000b48:	0002ad03          	lw	s10,0(t0)
80000b4c:	0002ad83          	lw	s11,0(t0)
80000b50:	0002a503          	lw	a0,0(t0)
80000b54:	0002a583          	lw	a1,0(t0)
80000b58:	0002a603          	lw	a2,0(t0)
80000b5c:	0002a683          	lw	a3,0(t0)
80000b60:	0002a703          	lw	a4,0(t0)
80000b64:	0002a783          	lw	a5,0(t0)
80000b68:	0002a803          	lw	a6,0(t0)
80000b6c:	0002a883          	lw	a7,0(t0)
80000b70:	0002a403          	lw	s0,0(t0)
80000b74:	0002a483          	lw	s1,0(t0)
80000b78:	0002a903          	lw	s2,0(t0)
80000b7c:	0002a983          	lw	s3,0(t0)
80000b80:	0002aa03          	lw	s4,0(t0)
80000b84:	0002aa83          	lw	s5,0(t0)
80000b88:	0002ab03          	lw	s6,0(t0)
80000b8c:	0002ab83          	lw	s7,0(t0)
80000b90:	0002ac03          	lw	s8,0(t0)
80000b94:	0002ac83          	lw	s9,0(t0)
80000b98:	0002ad03          	lw	s10,0(t0)
80000b9c:	0002ad83          	lw	s11,0(t0)
80000ba0:	0002a503          	lw	a0,0(t0)
80000ba4:	0002a583          	lw	a1,0(t0)
80000ba8:	0002a603          	lw	a2,0(t0)
80000bac:	0002a683          	lw	a3,0(t0)
80000bb0:	0002a703          	lw	a4,0(t0)
80000bb4:	0002a783          	lw	a5,0(t0)
80000bb8:	0002a803          	lw	a6,0(t0)
80000bbc:	0002a883          	lw	a7,0(t0)
80000bc0:	0002a403          	lw	s0,0(t0)
80000bc4:	0002a483          	lw	s1,0(t0)
80000bc8:	0002a903          	lw	s2,0(t0)
80000bcc:	0002a983          	lw	s3,0(t0)
80000bd0:	0002aa03          	lw	s4,0(t0)
80000bd4:	0002aa83          	lw	s5,0(t0)
80000bd8:	0002ab03          	lw	s6,0(t0)
80000bdc:	0002ab83          	lw	s7,0(t0)
80000be0:	0002ac03          	lw	s8,0(t0)
80000be4:	0002ac83          	lw	s9,0(t0)
80000be8:	0002ad03          	lw	s10,0(t0)
80000bec:	0002ad83          	lw	s11,0(t0)
80000bf0:	0ff0000f          	fence
80000bf4:	00012403          	lw	s0,0(sp)
80000bf8:	00412483          	lw	s1,4(sp)
80000bfc:	00812903          	lw	s2,8(sp)
80000c00:	00c12983          	lw	s3,12(sp)
80000c04:	01012a03          	lw	s4,16(sp)
80000c08:	01412a83          	lw	s5,20(sp)
80000c0c:	01812b03          	lw	s6,24(sp)
80000c10:	01c12b83          	lw	s7,28(sp)
80000c14:	02012c03          	lw	s8,32(sp)
80000c18:	02412c83          	lw	s9,36(sp)
80000c1c:	02812d03          	lw	s10,40(sp)
80000c20:	02c12d83          	lw	s11,44(sp)
80000c24:	00008067          	ret
	...

80000c30 <run_user>:
80000c30:	fc410113          	addi	sp,sp,-60
80000c34:	00312023          	sw	gp,0(sp)
80000c38:	00412223          	sw	tp,4(sp)
80000c3c:	00112423          	sw	ra,8(sp)
80000c40:	00812623          	sw	s0,12(sp)
80000c44:	00912823          	sw	s1,16(sp)
80000c48:	01212a23          	sw	s2,20(sp)
80000c4c:	01312c23          	sw	s3,24(sp)
80000c50:	01412e23          	sw	s4,28(sp)
80000c54:	03512023          	sw	s5,32(sp)
80000c58:	03612223          	sw	s6,36(sp)
80000c5c:	03712423          	sw	s7,40(sp)
80000c60:	03812623          	sw	s8,44(sp)
80000c64:	03912823          	sw	s9,48(sp)
80000c68:	03a12a23          	sw	s10,52(sp)
80000c6c:	03b12c23          	sw	s11,56(sp)
80000c70:	34051073          	.insn	4, 0x34051073
80000c74:	08252023          	sw	sp,128(a0)
80000c78:	07c52283          	lw	t0,124(a0)
80000c7c:	34129073          	.insn	4, 0x34129073
80000c80:	00052083          	lw	ra,0(a0)
80000c84:	00452103          	lw	sp,4(a0)
80000c88:	00852183          	lw	gp,8(a0)
80000c8c:	00c52203          	lw	tp,12(a0)
80000c90:	01052283          	lw	t0,16(a0)
80000c94:	01452303          	lw	t1,20(a0)
80000c98:	01852383          	lw	t2,24(a0)
80000c9c:	01c52403          	lw	s0,28(a0)
80000ca0:	02052483          	lw	s1,32(a0)
80000ca4:	02852583          	lw	a1,40(a0)
80000ca8:	02c52603          	lw	a2,44(a0)
80000cac:	03052683          	lw	a3,48(a0)
80000cb0:	03452703          	lw	a4,52(a0)
80000cb4:	03852783          	lw	a5,56(a0)
80000cb8:	03c52803          	lw	a6,60(a0)
80000cbc:	04052883          	lw	a7,64(a0)
80000cc0:	04452903          	lw	s2,68(a0)
80000cc4:	04852983          	lw	s3,72(a0)
80000cc8:	04c52a03          	lw	s4,76(a0)
80000ccc:	05052a83          	lw	s5,80(a0)
80000cd0:	05452b03          	lw	s6,84(a0)
80000cd4:	05852b83          	lw	s7,88(a0)
80000cd8:	05c52c03          	lw	s8,92(a0)
80000cdc:	06052c83          	lw	s9,96(a0)
80000ce0:	06452d03          	lw	s10,100(a0)
80000ce4:	06852d83          	lw	s11,104(a0)
80000ce8:	06c52e03          	lw	t3,108(a0)
80000cec:	07052e83          	lw	t4,112(a0)
80000cf0:	07452f03          	lw	t5,116(a0)
80000cf4:	07852f83          	lw	t6,120(a0)
80000cf8:	02452503          	lw	a0,36(a0)
80000cfc:	30200073          	mret

80000d00 <user_trap>:
80000d00:	34051573          	.insn	4, 0x34051573
80000d04:	00152023          	sw	ra,0(a0)
80000d08:	00252223          	sw	sp,4(a0)
80000d0c:	00352423          	sw	gp,8(a0)
80000d10:	00452623          	sw	tp,12(a0)
80000d14:	00552823          	sw	t0,16(a0)
80000d18:	00652a23          	sw	t1,20(a0)
80000d1c:	00752c23          	sw	t2,24(a0)
80000d20:	00852e23          	sw	s0,28(a0)
80000d24:	02952023          	sw	s1,32(a0)
80000d28:	02b52423          	sw	a1,40(a0)
80000d2c:	02c52623          	sw	a2,44(a0)
80000d30:	02d52823          	sw	a3,48(a0)
80000d34:	02e52a23          	sw	a4,52(a0)
80000d38:	02f52c23          	sw	a5,56(a0)
80000d3c:	03052e23          	sw	a6,60(a0)
80000d40:	05152023          	sw	a7,64(a0)
80000d44:	05252223          	sw	s2,68(a0)
80000d48:	05352423          	sw	s3,72(a0)
80000d4c:	05452623          	sw	s4,76(a0)
80000d50:	05552823          	sw	s5,80(a0)
80000d54:	05652a23          	sw	s6,84(a0)
80000d58:	05752c23          	sw	s7,88(a0)
80000d5c:	05852e23          	sw	s8,92(a0)
80000d60:	07952023          	sw	s9,96(a0)
80000d64:	07a52223          	sw	s10,100(a0)
80000d68:	07b52423          	sw	s11,104(a0)
80000d6c:	07c52623          	sw	t3,108(a0)
80000d70:	07d52823          	sw	t4,112(a0)
80000d74:	07e52a23          	sw	t5,116(a0)
80000d78:	07f52c23          	sw	t6,120(a0)
80000d7c:	340022f3          	.insn	4, 0x340022f3
80000d80:	02552223          	sw	t0,36(a0)
80000d84:	08052103          	lw	sp,128(a0)
80000d88:	341022f3          	.insn	4, 0x341022f3
80000d8c:	06552e23          	sw	t0,124(a0)
80000d90:	00012183          	lw	gp,0(sp)
80000d94:	00412203          	lw	tp,4(sp)
80000d98:	00812083          	lw	ra,8(sp)
80000d9c:	00c12403          	lw	s0,12(sp)
80000da0:	01012483          	lw	s1,16(sp)
80000da4:	01412903          	lw	s2,20(sp)
80000da8:	01812983          	lw	s3,24(sp)
80000dac:	01c12a03          	lw	s4,28(sp)
80000db0:	02012a83          	lw	s5,32(sp)
80000db4:	02412b03          	lw	s6,36(sp)
80000db8:	02812b83          	lw	s7,40(sp)
80000dbc:	02c12c03          	lw	s8,44(sp)
80000dc0:	03012c83          	lw	s9,48(sp)
80000dc4:	03412d03          	lw	s10,52(sp)
80000dc8:	03812d83          	lw	s11,56(sp)
80000dcc:	03c10113          	addi	sp,sp,60
80000dd0:	00008067          	ret

80000dd4 <_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbde0ebcc99cf027bE>:
80000dd4:	8000c6b7          	lui	a3,0x8000c
80000dd8:	34068693          	addi	a3,a3,832 # 8000c340 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.4>
80000ddc:	00b00613          	li	a2,11
80000de0:	00058513          	mv	a0,a1
80000de4:	00068593          	mv	a1,a3
80000de8:	00008317          	auipc	t1,0x8
80000dec:	e6c30067          	jr	-404(t1) # 80008c54 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>

80000df0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE>:
80000df0:	fd010113          	addi	sp,sp,-48
80000df4:	02112623          	sw	ra,44(sp)
80000df8:	02812423          	sw	s0,40(sp)
80000dfc:	02912223          	sw	s1,36(sp)
80000e00:	03212023          	sw	s2,32(sp)
80000e04:	01312e23          	sw	s3,28(sp)
80000e08:	00800713          	li	a4,8
80000e0c:	00060993          	mv	s3,a2
80000e10:	00058913          	mv	s2,a1
80000e14:	00050413          	mv	s0,a0
80000e18:	00d76463          	bltu	a4,a3,80000e20 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x30>
80000e1c:	00800693          	li	a3,8
80000e20:	00368693          	addi	a3,a3,3
80000e24:	ffc6f493          	andi	s1,a3,-4
80000e28:	00048513          	mv	a0,s1
80000e2c:	00098593          	mv	a1,s3
80000e30:	00008097          	auipc	ra,0x8
80000e34:	2cc080e7          	jalr	716(ra) # 800090fc <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>
80000e38:	00400593          	li	a1,4
80000e3c:	10050a63          	beqz	a0,80000f50 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000e40:	00492603          	lw	a2,4(s2) # 8000f004 <KALLOC_BUFFER+0x4>
80000e44:	10060663          	beqz	a2,80000f50 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000e48:	40a00533          	neg	a0,a0
80000e4c:	01357533          	and	a0,a0,s3
80000e50:	0019d693          	srli	a3,s3,0x1
80000e54:	55555737          	lui	a4,0x55555
80000e58:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80000e5c:	00e6f6b3          	and	a3,a3,a4
80000e60:	40d986b3          	sub	a3,s3,a3
80000e64:	33333737          	lui	a4,0x33333
80000e68:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331f85>
80000e6c:	00e6f7b3          	and	a5,a3,a4
80000e70:	0026d693          	srli	a3,a3,0x2
80000e74:	00e6f6b3          	and	a3,a3,a4
80000e78:	00d786b3          	add	a3,a5,a3
80000e7c:	0046d713          	srli	a4,a3,0x4
80000e80:	00e686b3          	add	a3,a3,a4
80000e84:	0f0f1737          	lui	a4,0xf0f1
80000e88:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80000e8c:	00e6f6b3          	and	a3,a3,a4
80000e90:	00869713          	slli	a4,a3,0x8
80000e94:	00e686b3          	add	a3,a3,a4
80000e98:	01069713          	slli	a4,a3,0x10
80000e9c:	00e686b3          	add	a3,a3,a4
80000ea0:	0186d713          	srli	a4,a3,0x18
80000ea4:	fff98793          	addi	a5,s3,-1
80000ea8:	41300833          	neg	a6,s3
80000eac:	00100893          	li	a7,1
80000eb0:	0140006f          	j	80000ec4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xd4>
80000eb4:	00462683          	lw	a3,4(a2)
80000eb8:	00060913          	mv	s2,a2
80000ebc:	00068613          	mv	a2,a3
80000ec0:	08068863          	beqz	a3,80000f50 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000ec4:	00062383          	lw	t2,0(a2)
80000ec8:	fe93e6e3          	bltu	t2,s1,80000eb4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80000ecc:	0d171a63          	bne	a4,a7,80000fa0 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1b0>
80000ed0:	00c78e33          	add	t3,a5,a2
80000ed4:	010e7333          	and	t1,t3,a6
80000ed8:	00060693          	mv	a3,a2
80000edc:	00c30863          	beq	t1,a2,80000eec <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xfc>
80000ee0:	008e0e13          	addi	t3,t3,8
80000ee4:	010e76b3          	and	a3,t3,a6
80000ee8:	40c682b3          	sub	t0,a3,a2
80000eec:	00968f33          	add	t5,a3,s1
80000ef0:	00760eb3          	add	t4,a2,t2
80000ef4:	fdeee0e3          	bltu	t4,t5,80000eb4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80000ef8:	41ee8e33          	sub	t3,t4,t5
80000efc:	020e0e63          	beqz	t3,80000f38 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x148>
80000f00:	003f0f13          	addi	t5,t5,3
80000f04:	ffcf7393          	andi	t2,t5,-4
80000f08:	00838f13          	addi	t5,t2,8
80000f0c:	fbeee4e3          	bltu	t4,t5,80000eb4 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0xc4>
80000f10:	00092223          	sw	zero,4(s2)
80000f14:	00462703          	lw	a4,4(a2)
80000f18:	00062223          	sw	zero,4(a2)
80000f1c:	06c30263          	beq	t1,a2,80000f80 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x190>
80000f20:	01c3a023          	sw	t3,0(t2)
80000f24:	00e3a223          	sw	a4,4(t2)
80000f28:	00562023          	sw	t0,0(a2)
80000f2c:	00762223          	sw	t2,4(a2)
80000f30:	00c92223          	sw	a2,4(s2)
80000f34:	05c0006f          	j	80000f90 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1a0>
80000f38:	00092223          	sw	zero,4(s2)
80000f3c:	00462703          	lw	a4,4(a2)
80000f40:	00062223          	sw	zero,4(a2)
80000f44:	02c31a63          	bne	t1,a2,80000f78 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x188>
80000f48:	00e92223          	sw	a4,4(s2)
80000f4c:	04069263          	bnez	a3,80000f90 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x1a0>
80000f50:	00000493          	li	s1,0
80000f54:	00b405b3          	add	a1,s0,a1
80000f58:	0095a023          	sw	s1,0(a1)
80000f5c:	02c12083          	lw	ra,44(sp)
80000f60:	02812403          	lw	s0,40(sp)
80000f64:	02412483          	lw	s1,36(sp)
80000f68:	02012903          	lw	s2,32(sp)
80000f6c:	01c12983          	lw	s3,28(sp)
80000f70:	03010113          	addi	sp,sp,48
80000f74:	00008067          	ret
80000f78:	00060393          	mv	t2,a2
80000f7c:	00028e13          	mv	t3,t0
80000f80:	01c3a023          	sw	t3,0(t2)
80000f84:	00e3a223          	sw	a4,4(t2)
80000f88:	00792223          	sw	t2,4(s2)
80000f8c:	fc0682e3          	beqz	a3,80000f50 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x160>
80000f90:	00d42023          	sw	a3,0(s0)
80000f94:	00a42223          	sw	a0,4(s0)
80000f98:	00800593          	li	a1,8
80000f9c:	fb9ff06f          	j	80000f54 <_ZN7SuperOS4hole8HoleList18allocate_first_fit17h8aa3b84f2abf2f8cE+0x164>
80000fa0:	8000c537          	lui	a0,0x8000c
80000fa4:	38050513          	addi	a0,a0,896 # 8000c380 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.7>
80000fa8:	00a12223          	sw	a0,4(sp)
80000fac:	00100513          	li	a0,1
80000fb0:	00a12423          	sw	a0,8(sp)
80000fb4:	00012a23          	sw	zero,20(sp)
80000fb8:	00400513          	li	a0,4
80000fbc:	00a12623          	sw	a0,12(sp)
80000fc0:	00012823          	sw	zero,16(sp)
80000fc4:	8000c5b7          	lui	a1,0x8000c
80000fc8:	3fc58593          	addi	a1,a1,1020 # 8000c3fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.9>
80000fcc:	00410513          	addi	a0,sp,4
80000fd0:	00006097          	auipc	ra,0x6
80000fd4:	fdc080e7          	jalr	-36(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>:
80000fd8:	fa010113          	addi	sp,sp,-96
80000fdc:	04112e23          	sw	ra,92(sp)
80000fe0:	04812c23          	sw	s0,88(sp)
80000fe4:	04912a23          	sw	s1,84(sp)
80000fe8:	05212823          	sw	s2,80(sp)
80000fec:	05312623          	sw	s3,76(sp)
80000ff0:	00800713          	li	a4,8
80000ff4:	00060413          	mv	s0,a2
80000ff8:	00058913          	mv	s2,a1
80000ffc:	00050993          	mv	s3,a0
80001000:	00d76463          	bltu	a4,a3,80001008 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x30>
80001004:	00800693          	li	a3,8
80001008:	00368693          	addi	a3,a3,3
8000100c:	ffc6f493          	andi	s1,a3,-4
80001010:	00048513          	mv	a0,s1
80001014:	00040593          	mv	a1,s0
80001018:	00008097          	auipc	ra,0x8
8000101c:	0e4080e7          	jalr	228(ra) # 800090fc <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>
80001020:	26050663          	beqz	a0,8000128c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x2b4>
80001024:	0049a583          	lw	a1,4(s3)
80001028:	00992023          	sw	s1,0(s2)
8000102c:	00092223          	sw	zero,4(s2)
80001030:	04058263          	beqz	a1,80001074 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x9c>
80001034:	00c9a503          	lw	a0,12(s3)
80001038:	04b97e63          	bgeu	s2,a1,80001094 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xbc>
8000103c:	009906b3          	add	a3,s2,s1
80001040:	16d5e663          	bltu	a1,a3,800011ac <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1d4>
80001044:	0089a603          	lw	a2,8(s3)
80001048:	00860793          	addi	a5,a2,8
8000104c:	00090713          	mv	a4,s2
80001050:	00f97a63          	bgeu	s2,a5,80001064 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x8c>
80001054:	40c686b3          	sub	a3,a3,a2
80001058:	00d62023          	sw	a3,0(a2)
8000105c:	00062223          	sw	zero,4(a2)
80001060:	00060713          	mv	a4,a2
80001064:	00e9a223          	sw	a4,4(s3)
80001068:	00b72223          	sw	a1,4(a4)
8000106c:	00100613          	li	a2,1
80001070:	09c0006f          	j	8000110c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
80001074:	0089a503          	lw	a0,8(s3)
80001078:	00850593          	addi	a1,a0,8
8000107c:	0cb97c63          	bgeu	s2,a1,80001154 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x17c>
80001080:	012485b3          	add	a1,s1,s2
80001084:	40a585b3          	sub	a1,a1,a0
80001088:	00b52023          	sw	a1,0(a0)
8000108c:	00052223          	sw	zero,4(a0)
80001090:	0cc0006f          	j	8000115c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x184>
80001094:	0045a603          	lw	a2,4(a1)
80001098:	01212623          	sw	s2,12(sp)
8000109c:	02060263          	beqz	a2,800010c0 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe8>
800010a0:	00c96c63          	bltu	s2,a2,800010b8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe0>
800010a4:	00060593          	mv	a1,a2
800010a8:	00462603          	lw	a2,4(a2)
800010ac:	01212623          	sw	s2,12(sp)
800010b0:	00060863          	beqz	a2,800010c0 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xe8>
800010b4:	fec978e3          	bgeu	s2,a2,800010a4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0xcc>
800010b8:	009906b3          	add	a3,s2,s1
800010bc:	18d66c63          	bltu	a2,a3,80001254 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x27c>
800010c0:	00b12823          	sw	a1,16(sp)
800010c4:	0005a683          	lw	a3,0(a1)
800010c8:	00d58733          	add	a4,a1,a3
800010cc:	00d12a23          	sw	a3,20(sp)
800010d0:	10e96a63          	bltu	s2,a4,800011e4 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x20c>
800010d4:	0125a223          	sw	s2,4(a1)
800010d8:	00c92223          	sw	a2,4(s2)
800010dc:	00200613          	li	a2,2
800010e0:	00058913          	mv	s2,a1
800010e4:	0280006f          	j	8000110c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
800010e8:	00072583          	lw	a1,0(a4)
800010ec:	00472683          	lw	a3,4(a4)
800010f0:	00072223          	sw	zero,4(a4)
800010f4:	00092703          	lw	a4,0(s2)
800010f8:	00d92223          	sw	a3,4(s2)
800010fc:	00b705b3          	add	a1,a4,a1
80001100:	00b92023          	sw	a1,0(s2)
80001104:	fff60613          	addi	a2,a2,-1
80001108:	08060063          	beqz	a2,80001188 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
8000110c:	00492703          	lw	a4,4(s2)
80001110:	00092683          	lw	a3,0(s2)
80001114:	00d905b3          	add	a1,s2,a3
80001118:	00070c63          	beqz	a4,80001130 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x158>
8000111c:	fce586e3          	beq	a1,a4,800010e8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x110>
80001120:	00070913          	mv	s2,a4
80001124:	fff60613          	addi	a2,a2,-1
80001128:	fe0612e3          	bnez	a2,8000110c <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x134>
8000112c:	05c0006f          	j	80001188 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80001130:	04a5fc63          	bgeu	a1,a0,80001188 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80001134:	00358613          	addi	a2,a1,3
80001138:	ffc67613          	andi	a2,a2,-4
8000113c:	00860613          	addi	a2,a2,8
80001140:	04c57463          	bgeu	a0,a2,80001188 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80001144:	00a68533          	add	a0,a3,a0
80001148:	40b50533          	sub	a0,a0,a1
8000114c:	00a92023          	sw	a0,0(s2)
80001150:	0380006f          	j	80001188 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1b0>
80001154:	00048593          	mv	a1,s1
80001158:	00090513          	mv	a0,s2
8000115c:	00c9a603          	lw	a2,12(s3)
80001160:	00b506b3          	add	a3,a0,a1
80001164:	02c6f063          	bgeu	a3,a2,80001184 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1ac>
80001168:	00368713          	addi	a4,a3,3
8000116c:	ffc77713          	andi	a4,a4,-4
80001170:	00870713          	addi	a4,a4,8
80001174:	00e67863          	bgeu	a2,a4,80001184 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E+0x1ac>
80001178:	40d60633          	sub	a2,a2,a3
8000117c:	00b605b3          	add	a1,a2,a1
80001180:	00b52023          	sw	a1,0(a0)
80001184:	00a9a223          	sw	a0,4(s3)
80001188:	00040513          	mv	a0,s0
8000118c:	00048593          	mv	a1,s1
80001190:	05c12083          	lw	ra,92(sp)
80001194:	05812403          	lw	s0,88(sp)
80001198:	05412483          	lw	s1,84(sp)
8000119c:	05012903          	lw	s2,80(sp)
800011a0:	04c12983          	lw	s3,76(sp)
800011a4:	06010113          	addi	sp,sp,96
800011a8:	00008067          	ret
800011ac:	8000c537          	lui	a0,0x8000c
800011b0:	48450513          	addi	a0,a0,1156 # 8000c484 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.18>
800011b4:	02a12823          	sw	a0,48(sp)
800011b8:	00100513          	li	a0,1
800011bc:	02a12a23          	sw	a0,52(sp)
800011c0:	04012023          	sw	zero,64(sp)
800011c4:	00400513          	li	a0,4
800011c8:	02a12c23          	sw	a0,56(sp)
800011cc:	02012e23          	sw	zero,60(sp)
800011d0:	8000c5b7          	lui	a1,0x8000c
800011d4:	48c58593          	addi	a1,a1,1164 # 8000c48c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.19>
800011d8:	03010513          	addi	a0,sp,48
800011dc:	00006097          	auipc	ra,0x6
800011e0:	dd0080e7          	jalr	-560(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
800011e4:	00c10513          	addi	a0,sp,12
800011e8:	02a12823          	sw	a0,48(sp)
800011ec:	80000537          	lui	a0,0x80000
800011f0:	17050513          	addi	a0,a0,368 # 80000170 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>
800011f4:	02a12a23          	sw	a0,52(sp)
800011f8:	01010593          	addi	a1,sp,16
800011fc:	02b12c23          	sw	a1,56(sp)
80001200:	02a12e23          	sw	a0,60(sp)
80001204:	01410513          	addi	a0,sp,20
80001208:	04a12023          	sw	a0,64(sp)
8000120c:	8000a537          	lui	a0,0x8000a
80001210:	8d450513          	addi	a0,a0,-1836 # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80001214:	04a12223          	sw	a0,68(sp)
80001218:	8000c537          	lui	a0,0x8000c
8000121c:	4e050513          	addi	a0,a0,1248 # 8000c4e0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.25>
80001220:	00a12c23          	sw	a0,24(sp)
80001224:	00400513          	li	a0,4
80001228:	00a12e23          	sw	a0,28(sp)
8000122c:	02012423          	sw	zero,40(sp)
80001230:	03010513          	addi	a0,sp,48
80001234:	02a12023          	sw	a0,32(sp)
80001238:	00300513          	li	a0,3
8000123c:	02a12223          	sw	a0,36(sp)
80001240:	8000c5b7          	lui	a1,0x8000c
80001244:	50058593          	addi	a1,a1,1280 # 8000c500 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.26>
80001248:	01810513          	addi	a0,sp,24
8000124c:	00006097          	auipc	ra,0x6
80001250:	d60080e7          	jalr	-672(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
80001254:	8000c537          	lui	a0,0x8000c
80001258:	48450513          	addi	a0,a0,1156 # 8000c484 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.18>
8000125c:	02a12823          	sw	a0,48(sp)
80001260:	00100513          	li	a0,1
80001264:	02a12a23          	sw	a0,52(sp)
80001268:	04012023          	sw	zero,64(sp)
8000126c:	00400513          	li	a0,4
80001270:	02a12c23          	sw	a0,56(sp)
80001274:	02012e23          	sw	zero,60(sp)
80001278:	8000c5b7          	lui	a1,0x8000c
8000127c:	49c58593          	addi	a1,a1,1180 # 8000c49c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.20>
80001280:	03010513          	addi	a0,sp,48
80001284:	00006097          	auipc	ra,0x6
80001288:	d28080e7          	jalr	-728(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>
8000128c:	8000c537          	lui	a0,0x8000c
80001290:	41c50513          	addi	a0,a0,1052 # 8000c41c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.15>
80001294:	8000c6b7          	lui	a3,0x8000c
80001298:	40c68693          	addi	a3,a3,1036 # 8000c40c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.14>
8000129c:	8000c737          	lui	a4,0x8000c
800012a0:	44870713          	addi	a4,a4,1096 # 8000c448 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.16>
800012a4:	02b00593          	li	a1,43
800012a8:	04b10613          	addi	a2,sp,75
800012ac:	00006097          	auipc	ra,0x6
800012b0:	f70080e7          	jalr	-144(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

800012b4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E>:
800012b4:	f6010113          	addi	sp,sp,-160
800012b8:	08112e23          	sw	ra,156(sp)
800012bc:	08812c23          	sw	s0,152(sp)
800012c0:	08912a23          	sw	s1,148(sp)
800012c4:	09212823          	sw	s2,144(sp)
800012c8:	09312623          	sw	s3,140(sp)
800012cc:	09412423          	sw	s4,136(sp)
800012d0:	09512223          	sw	s5,132(sp)
800012d4:	09612023          	sw	s6,128(sp)
800012d8:	07712e23          	sw	s7,124(sp)
800012dc:	07812c23          	sw	s8,120(sp)
800012e0:	07912a23          	sw	s9,116(sp)
800012e4:	07a12823          	sw	s10,112(sp)
800012e8:	07b12623          	sw	s11,108(sp)
800012ec:	00000413          	li	s0,0
800012f0:	00012823          	sw	zero,16(sp)
800012f4:	00400c13          	li	s8,4
800012f8:	01812a23          	sw	s8,20(sp)
800012fc:	00012c23          	sw	zero,24(sp)
80001300:	00012e23          	sw	zero,28(sp)
80001304:	03812023          	sw	s8,32(sp)
80001308:	02012223          	sw	zero,36(sp)
8000130c:	02012423          	sw	zero,40(sp)
80001310:	03812623          	sw	s8,44(sp)
80001314:	02012823          	sw	zero,48(sp)
80001318:	02012a23          	sw	zero,52(sp)
8000131c:	8000ca37          	lui	s4,0x8000c
80001320:	61ca0a13          	addi	s4,s4,1564 # 8000c61c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.46>
80001324:	8000cab7          	lui	s5,0x8000c
80001328:	63ca8a93          	addi	s5,s5,1596 # 8000c63c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.48>
8000132c:	8000cb37          	lui	s6,0x8000c
80001330:	65cb0b13          	addi	s6,s6,1628 # 8000c65c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.50>
80001334:	00a00c93          	li	s9,10
80001338:	0200006f          	j	80001358 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0xa4>
8000133c:	03412503          	lw	a0,52(sp)
80001340:	3f8005b7          	lui	a1,0x3f800
80001344:	00009097          	auipc	ra,0x9
80001348:	e18080e7          	jalr	-488(ra) # 8000a15c <__addsf3>
8000134c:	02a12a23          	sw	a0,52(sp)
80001350:	000d0413          	mv	s0,s10
80001354:	1d9d0c63          	beq	s10,s9,8000152c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x278>
80001358:	01812b83          	lw	s7,24(sp)
8000135c:	01012503          	lw	a0,16(sp)
80001360:	00ab9c63          	bne	s7,a0,80001378 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0xc4>
80001364:	01010513          	addi	a0,sp,16
80001368:	8000c5b7          	lui	a1,0x8000c
8000136c:	5dc58593          	addi	a1,a1,1500 # 8000c5dc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.42>
80001370:	fffff097          	auipc	ra,0xfffff
80001374:	068080e7          	jalr	104(ra) # 800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80001378:	01412503          	lw	a0,20(sp)
8000137c:	002b9593          	slli	a1,s7,0x2
80001380:	004b9613          	slli	a2,s7,0x4
80001384:	40b60633          	sub	a2,a2,a1
80001388:	00c50533          	add	a0,a0,a2
8000138c:	00052023          	sw	zero,0(a0)
80001390:	01852223          	sw	s8,4(a0)
80001394:	00052423          	sw	zero,8(a0)
80001398:	02412483          	lw	s1,36(sp)
8000139c:	01c12503          	lw	a0,28(sp)
800013a0:	001b8b93          	addi	s7,s7,1
800013a4:	01712c23          	sw	s7,24(sp)
800013a8:	00a49c63          	bne	s1,a0,800013c0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x10c>
800013ac:	01c10513          	addi	a0,sp,28
800013b0:	8000c5b7          	lui	a1,0x8000c
800013b4:	5ec58593          	addi	a1,a1,1516 # 8000c5ec <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.43>
800013b8:	fffff097          	auipc	ra,0xfffff
800013bc:	020080e7          	jalr	32(ra) # 800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
800013c0:	02012503          	lw	a0,32(sp)
800013c4:	00249593          	slli	a1,s1,0x2
800013c8:	00449613          	slli	a2,s1,0x4
800013cc:	40b60633          	sub	a2,a2,a1
800013d0:	00c50533          	add	a0,a0,a2
800013d4:	00052023          	sw	zero,0(a0)
800013d8:	01852223          	sw	s8,4(a0)
800013dc:	00052423          	sw	zero,8(a0)
800013e0:	03012b83          	lw	s7,48(sp)
800013e4:	02812503          	lw	a0,40(sp)
800013e8:	00148493          	addi	s1,s1,1
800013ec:	02912223          	sw	s1,36(sp)
800013f0:	00ab9c63          	bne	s7,a0,80001408 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x154>
800013f4:	02810513          	addi	a0,sp,40
800013f8:	8000c5b7          	lui	a1,0x8000c
800013fc:	5fc58593          	addi	a1,a1,1532 # 8000c5fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.44>
80001400:	fffff097          	auipc	ra,0xfffff
80001404:	fd8080e7          	jalr	-40(ra) # 800003d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8e952279f235115dE>
80001408:	02c12483          	lw	s1,44(sp)
8000140c:	00140d13          	addi	s10,s0,1
80001410:	00c00593          	li	a1,12
80001414:	000b8513          	mv	a0,s7
80001418:	00009097          	auipc	ra,0x9
8000141c:	b64080e7          	jalr	-1180(ra) # 80009f7c <__mulsi3>
80001420:	00a48533          	add	a0,s1,a0
80001424:	00052023          	sw	zero,0(a0)
80001428:	01852223          	sw	s8,4(a0)
8000142c:	00052423          	sw	zero,8(a0)
80001430:	001b8b93          	addi	s7,s7,1
80001434:	03712823          	sw	s7,48(sp)
80001438:	00a00d93          	li	s11,10
8000143c:	00241513          	slli	a0,s0,0x2
80001440:	00441493          	slli	s1,s0,0x4
80001444:	40a484b3          	sub	s1,s1,a0
80001448:	0240006f          	j	8000146c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x1b8>
8000144c:	004ba503          	lw	a0,4(s7)
80001450:	00291593          	slli	a1,s2,0x2
80001454:	00b50533          	add	a0,a0,a1
80001458:	01352023          	sw	s3,0(a0)
8000145c:	00190913          	addi	s2,s2,1
80001460:	fffd8d93          	addi	s11,s11,-1
80001464:	012ba423          	sw	s2,8(s7)
80001468:	ec0d8ae3          	beqz	s11,8000133c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x88>
8000146c:	01812583          	lw	a1,24(sp)
80001470:	64b47463          	bgeu	s0,a1,80001ab8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x804>
80001474:	01412b83          	lw	s7,20(sp)
80001478:	009b8bb3          	add	s7,s7,s1
8000147c:	008ba903          	lw	s2,8(s7)
80001480:	000ba503          	lw	a0,0(s7)
80001484:	00a91a63          	bne	s2,a0,80001498 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x1e4>
80001488:	000b8513          	mv	a0,s7
8000148c:	000a0593          	mv	a1,s4
80001490:	fffff097          	auipc	ra,0xfffff
80001494:	e6c080e7          	jalr	-404(ra) # 800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80001498:	004ba503          	lw	a0,4(s7)
8000149c:	00291593          	slli	a1,s2,0x2
800014a0:	00b50533          	add	a0,a0,a1
800014a4:	00052023          	sw	zero,0(a0)
800014a8:	00190913          	addi	s2,s2,1
800014ac:	012ba423          	sw	s2,8(s7)
800014b0:	02412583          	lw	a1,36(sp)
800014b4:	60b47c63          	bgeu	s0,a1,80001acc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x818>
800014b8:	02012b83          	lw	s7,32(sp)
800014bc:	009b8bb3          	add	s7,s7,s1
800014c0:	008ba903          	lw	s2,8(s7)
800014c4:	000ba503          	lw	a0,0(s7)
800014c8:	03412983          	lw	s3,52(sp)
800014cc:	00a91a63          	bne	s2,a0,800014e0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x22c>
800014d0:	000b8513          	mv	a0,s7
800014d4:	000a8593          	mv	a1,s5
800014d8:	fffff097          	auipc	ra,0xfffff
800014dc:	e24080e7          	jalr	-476(ra) # 800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
800014e0:	004ba503          	lw	a0,4(s7)
800014e4:	00291593          	slli	a1,s2,0x2
800014e8:	00b50533          	add	a0,a0,a1
800014ec:	01352023          	sw	s3,0(a0)
800014f0:	00190913          	addi	s2,s2,1
800014f4:	012ba423          	sw	s2,8(s7)
800014f8:	03012583          	lw	a1,48(sp)
800014fc:	5eb47263          	bgeu	s0,a1,80001ae0 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x82c>
80001500:	02c12b83          	lw	s7,44(sp)
80001504:	009b8bb3          	add	s7,s7,s1
80001508:	008ba903          	lw	s2,8(s7)
8000150c:	000ba503          	lw	a0,0(s7)
80001510:	03412983          	lw	s3,52(sp)
80001514:	f2a91ce3          	bne	s2,a0,8000144c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x198>
80001518:	000b8513          	mv	a0,s7
8000151c:	000b0593          	mv	a1,s6
80001520:	fffff097          	auipc	ra,0xfffff
80001524:	ddc080e7          	jalr	-548(ra) # 800002fc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h288f66cf655227ceE>
80001528:	f25ff06f          	j	8000144c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x198>
8000152c:	03410513          	addi	a0,sp,52
80001530:	04a12a23          	sw	a0,84(sp)
80001534:	80009537          	lui	a0,0x80009
80001538:	67850513          	addi	a0,a0,1656 # 80009678 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>
8000153c:	04a12c23          	sw	a0,88(sp)
80001540:	8000c537          	lui	a0,0x8000c
80001544:	51850513          	addi	a0,a0,1304 # 8000c518 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.29>
80001548:	02a12e23          	sw	a0,60(sp)
8000154c:	00200513          	li	a0,2
80001550:	04a12023          	sw	a0,64(sp)
80001554:	04012623          	sw	zero,76(sp)
80001558:	05410513          	addi	a0,sp,84
8000155c:	04a12223          	sw	a0,68(sp)
80001560:	00100513          	li	a0,1
80001564:	04a12423          	sw	a0,72(sp)
80001568:	8000c5b7          	lui	a1,0x8000c
8000156c:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
80001570:	06b10513          	addi	a0,sp,107
80001574:	03c10613          	addi	a2,sp,60
80001578:	00007097          	auipc	ra,0x7
8000157c:	934080e7          	jalr	-1740(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001580:	5c051263          	bnez	a0,80001b44 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x890>
80001584:	00000413          	li	s0,0
80001588:	00a00a13          	li	s4,10
8000158c:	00b00a93          	li	s5,11
80001590:	00000993          	li	s3,0
80001594:	00140513          	addi	a0,s0,1
80001598:	00a12623          	sw	a0,12(sp)
8000159c:	00100513          	li	a0,1
800015a0:	00241593          	slli	a1,s0,0x2
800015a4:	00441613          	slli	a2,s0,0x4
800015a8:	40b60bb3          	sub	s7,a2,a1
800015ac:	00000c13          	li	s8,0
800015b0:	00000493          	li	s1,0
800015b4:	00098b13          	mv	s6,s3
800015b8:	00050993          	mv	s3,a0
800015bc:	00400c93          	li	s9,4
800015c0:	00800d13          	li	s10,8
800015c4:	002b1913          	slli	s2,s6,0x2
800015c8:	02412583          	lw	a1,36(sp)
800015cc:	46b47a63          	bgeu	s0,a1,80001a40 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x78c>
800015d0:	02012503          	lw	a0,32(sp)
800015d4:	01750533          	add	a0,a0,s7
800015d8:	00852583          	lw	a1,8(a0)
800015dc:	46b4fc63          	bgeu	s1,a1,80001a54 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7a0>
800015e0:	03012583          	lw	a1,48(sp)
800015e4:	48b4f263          	bgeu	s1,a1,80001a68 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7b4>
800015e8:	02c12603          	lw	a2,44(sp)
800015ec:	01a605b3          	add	a1,a2,s10
800015f0:	0005a583          	lw	a1,0(a1)
800015f4:	48bb7463          	bgeu	s6,a1,80001a7c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7c8>
800015f8:	00452503          	lw	a0,4(a0)
800015fc:	01960633          	add	a2,a2,s9
80001600:	00062583          	lw	a1,0(a2)
80001604:	01850533          	add	a0,a0,s8
80001608:	00052503          	lw	a0,0(a0)
8000160c:	012585b3          	add	a1,a1,s2
80001610:	0005a583          	lw	a1,0(a1)
80001614:	00009097          	auipc	ra,0x9
80001618:	590080e7          	jalr	1424(ra) # 8000aba4 <__mulsf3>
8000161c:	01812583          	lw	a1,24(sp)
80001620:	46b47863          	bgeu	s0,a1,80001a90 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7dc>
80001624:	01412603          	lw	a2,20(sp)
80001628:	01760633          	add	a2,a2,s7
8000162c:	00862583          	lw	a1,8(a2)
80001630:	46bb7a63          	bgeu	s6,a1,80001aa4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x7f0>
80001634:	00462583          	lw	a1,4(a2)
80001638:	01258db3          	add	s11,a1,s2
8000163c:	000da583          	lw	a1,0(s11)
80001640:	00148493          	addi	s1,s1,1
80001644:	00009097          	auipc	ra,0x9
80001648:	b18080e7          	jalr	-1256(ra) # 8000a15c <__addsf3>
8000164c:	00ada023          	sw	a0,0(s11)
80001650:	00cc8c93          	addi	s9,s9,12
80001654:	00cd0d13          	addi	s10,s10,12
80001658:	004c0c13          	addi	s8,s8,4
8000165c:	f74496e3          	bne	s1,s4,800015c8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x314>
80001660:	00198513          	addi	a0,s3,1
80001664:	f55514e3          	bne	a0,s5,800015ac <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x2f8>
80001668:	00c12403          	lw	s0,12(sp)
8000166c:	f34412e3          	bne	s0,s4,80001590 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x2dc>
80001670:	01412d03          	lw	s10,20(sp)
80001674:	00000513          	li	a0,0
80001678:	01812403          	lw	s0,24(sp)
8000167c:	008d0d13          	addi	s10,s10,8
80001680:	00a00c93          	li	s9,10
80001684:	019405b3          	add	a1,s0,s9
80001688:	00a00613          	li	a2,10
8000168c:	48c58463          	beq	a1,a2,80001b14 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x860>
80001690:	000d2603          	lw	a2,0(s10)
80001694:	48060c63          	beqz	a2,80001b2c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x878>
80001698:	00100593          	li	a1,1
8000169c:	48b60a63          	beq	a2,a1,80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
800016a0:	00300593          	li	a1,3
800016a4:	44b66863          	bltu	a2,a1,80001af4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x840>
800016a8:	00300593          	li	a1,3
800016ac:	48b60263          	beq	a2,a1,80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
800016b0:	00500593          	li	a1,5
800016b4:	44b66463          	bltu	a2,a1,80001afc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x848>
800016b8:	00500593          	li	a1,5
800016bc:	46b60a63          	beq	a2,a1,80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
800016c0:	00700593          	li	a1,7
800016c4:	44b66063          	bltu	a2,a1,80001b04 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x850>
800016c8:	00700593          	li	a1,7
800016cc:	46b60263          	beq	a2,a1,80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
800016d0:	00900593          	li	a1,9
800016d4:	42b66c63          	bltu	a2,a1,80001b0c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x858>
800016d8:	00900593          	li	a1,9
800016dc:	44b60a63          	beq	a2,a1,80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
800016e0:	ffcd2d83          	lw	s11,-4(s10)
800016e4:	020da483          	lw	s1,32(s11)
800016e8:	01cda903          	lw	s2,28(s11)
800016ec:	018da983          	lw	s3,24(s11)
800016f0:	014daa03          	lw	s4,20(s11)
800016f4:	010daa83          	lw	s5,16(s11)
800016f8:	00cdab03          	lw	s6,12(s11)
800016fc:	008dab83          	lw	s7,8(s11)
80001700:	004dac03          	lw	s8,4(s11)
80001704:	000da583          	lw	a1,0(s11)
80001708:	00009097          	auipc	ra,0x9
8000170c:	a54080e7          	jalr	-1452(ra) # 8000a15c <__addsf3>
80001710:	00050593          	mv	a1,a0
80001714:	000c0513          	mv	a0,s8
80001718:	00009097          	auipc	ra,0x9
8000171c:	a44080e7          	jalr	-1468(ra) # 8000a15c <__addsf3>
80001720:	00050593          	mv	a1,a0
80001724:	000b8513          	mv	a0,s7
80001728:	00009097          	auipc	ra,0x9
8000172c:	a34080e7          	jalr	-1484(ra) # 8000a15c <__addsf3>
80001730:	00050593          	mv	a1,a0
80001734:	000b0513          	mv	a0,s6
80001738:	00009097          	auipc	ra,0x9
8000173c:	a24080e7          	jalr	-1500(ra) # 8000a15c <__addsf3>
80001740:	00050593          	mv	a1,a0
80001744:	000a8513          	mv	a0,s5
80001748:	00009097          	auipc	ra,0x9
8000174c:	a14080e7          	jalr	-1516(ra) # 8000a15c <__addsf3>
80001750:	00050593          	mv	a1,a0
80001754:	000a0513          	mv	a0,s4
80001758:	00009097          	auipc	ra,0x9
8000175c:	a04080e7          	jalr	-1532(ra) # 8000a15c <__addsf3>
80001760:	00050593          	mv	a1,a0
80001764:	00098513          	mv	a0,s3
80001768:	00009097          	auipc	ra,0x9
8000176c:	9f4080e7          	jalr	-1548(ra) # 8000a15c <__addsf3>
80001770:	00050593          	mv	a1,a0
80001774:	00090513          	mv	a0,s2
80001778:	00009097          	auipc	ra,0x9
8000177c:	9e4080e7          	jalr	-1564(ra) # 8000a15c <__addsf3>
80001780:	00050593          	mv	a1,a0
80001784:	00048513          	mv	a0,s1
80001788:	00009097          	auipc	ra,0x9
8000178c:	9d4080e7          	jalr	-1580(ra) # 8000a15c <__addsf3>
80001790:	024da583          	lw	a1,36(s11)
80001794:	00050613          	mv	a2,a0
80001798:	00058513          	mv	a0,a1
8000179c:	00060593          	mv	a1,a2
800017a0:	00009097          	auipc	ra,0x9
800017a4:	9bc080e7          	jalr	-1604(ra) # 8000a15c <__addsf3>
800017a8:	02a12c23          	sw	a0,56(sp)
800017ac:	fffc8c93          	addi	s9,s9,-1
800017b0:	00cd0d13          	addi	s10,s10,12
800017b4:	ec0c98e3          	bnez	s9,80001684 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x3d0>
800017b8:	00005537          	lui	a0,0x5
800017bc:	f1a50513          	addi	a0,a0,-230 # 4f1a <.Lline_table_start2+0x3b6c>
800017c0:	06a12223          	sw	a0,100(sp)
800017c4:	03810513          	addi	a0,sp,56
800017c8:	04a12a23          	sw	a0,84(sp)
800017cc:	80009537          	lui	a0,0x80009
800017d0:	67850513          	addi	a0,a0,1656 # 80009678 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>
800017d4:	04a12c23          	sw	a0,88(sp)
800017d8:	06410513          	addi	a0,sp,100
800017dc:	04a12e23          	sw	a0,92(sp)
800017e0:	8000a537          	lui	a0,0x8000a
800017e4:	8d450513          	addi	a0,a0,-1836 # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
800017e8:	06a12023          	sw	a0,96(sp)
800017ec:	8000c537          	lui	a0,0x8000c
800017f0:	53850513          	addi	a0,a0,1336 # 8000c538 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.32>
800017f4:	02a12e23          	sw	a0,60(sp)
800017f8:	00300513          	li	a0,3
800017fc:	04a12023          	sw	a0,64(sp)
80001800:	04012623          	sw	zero,76(sp)
80001804:	05410513          	addi	a0,sp,84
80001808:	04a12223          	sw	a0,68(sp)
8000180c:	00200513          	li	a0,2
80001810:	04a12423          	sw	a0,72(sp)
80001814:	8000c5b7          	lui	a1,0x8000c
80001818:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
8000181c:	06b10513          	addi	a0,sp,107
80001820:	03c10613          	addi	a2,sp,60
80001824:	00006097          	auipc	ra,0x6
80001828:	688080e7          	jalr	1672(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
8000182c:	30051c63          	bnez	a0,80001b44 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x890>
80001830:	03012483          	lw	s1,48(sp)
80001834:	04048c63          	beqz	s1,8000188c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x5d8>
80001838:	02c12903          	lw	s2,44(sp)
8000183c:	00490913          	addi	s2,s2,4
80001840:	8000e9b7          	lui	s3,0x8000e
80001844:	fc098413          	addi	s0,s3,-64 # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
80001848:	00440413          	addi	s0,s0,4
8000184c:	0100006f          	j	8000185c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x5a8>
80001850:	fff48493          	addi	s1,s1,-1
80001854:	00c90913          	addi	s2,s2,12
80001858:	02048a63          	beqz	s1,8000188c <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x5d8>
8000185c:	ffc92683          	lw	a3,-4(s2)
80001860:	fe0688e3          	beqz	a3,80001850 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x59c>
80001864:	00092583          	lw	a1,0(s2)
80001868:	00269693          	slli	a3,a3,0x2
8000186c:	00400613          	li	a2,4
80001870:	00040513          	mv	a0,s0
80001874:	fffff097          	auipc	ra,0xfffff
80001878:	764080e7          	jalr	1892(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
8000187c:	fc09a503          	lw	a0,-64(s3)
80001880:	40b50533          	sub	a0,a0,a1
80001884:	fca9a023          	sw	a0,-64(s3)
80001888:	fc9ff06f          	j	80001850 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x59c>
8000188c:	02812503          	lw	a0,40(sp)
80001890:	02050e63          	beqz	a0,800018cc <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x618>
80001894:	00c00593          	li	a1,12
80001898:	00008097          	auipc	ra,0x8
8000189c:	6e4080e7          	jalr	1764(ra) # 80009f7c <__mulsi3>
800018a0:	02c12583          	lw	a1,44(sp)
800018a4:	00050693          	mv	a3,a0
800018a8:	8000e437          	lui	s0,0x8000e
800018ac:	fc040513          	addi	a0,s0,-64 # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
800018b0:	00450513          	addi	a0,a0,4
800018b4:	00400613          	li	a2,4
800018b8:	fffff097          	auipc	ra,0xfffff
800018bc:	720080e7          	jalr	1824(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800018c0:	fc042503          	lw	a0,-64(s0)
800018c4:	40b50533          	sub	a0,a0,a1
800018c8:	fca42023          	sw	a0,-64(s0)
800018cc:	02412483          	lw	s1,36(sp)
800018d0:	04048c63          	beqz	s1,80001928 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x674>
800018d4:	02012903          	lw	s2,32(sp)
800018d8:	00490913          	addi	s2,s2,4
800018dc:	8000e9b7          	lui	s3,0x8000e
800018e0:	fc098413          	addi	s0,s3,-64 # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
800018e4:	00440413          	addi	s0,s0,4
800018e8:	0100006f          	j	800018f8 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x644>
800018ec:	fff48493          	addi	s1,s1,-1
800018f0:	00c90913          	addi	s2,s2,12
800018f4:	02048a63          	beqz	s1,80001928 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x674>
800018f8:	ffc92683          	lw	a3,-4(s2)
800018fc:	fe0688e3          	beqz	a3,800018ec <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x638>
80001900:	00092583          	lw	a1,0(s2)
80001904:	00269693          	slli	a3,a3,0x2
80001908:	00400613          	li	a2,4
8000190c:	00040513          	mv	a0,s0
80001910:	fffff097          	auipc	ra,0xfffff
80001914:	6c8080e7          	jalr	1736(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
80001918:	fc09a503          	lw	a0,-64(s3)
8000191c:	40b50533          	sub	a0,a0,a1
80001920:	fca9a023          	sw	a0,-64(s3)
80001924:	fc9ff06f          	j	800018ec <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x638>
80001928:	01c12503          	lw	a0,28(sp)
8000192c:	02050e63          	beqz	a0,80001968 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6b4>
80001930:	00c00593          	li	a1,12
80001934:	00008097          	auipc	ra,0x8
80001938:	648080e7          	jalr	1608(ra) # 80009f7c <__mulsi3>
8000193c:	02012583          	lw	a1,32(sp)
80001940:	00050693          	mv	a3,a0
80001944:	8000e437          	lui	s0,0x8000e
80001948:	fc040513          	addi	a0,s0,-64 # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
8000194c:	00450513          	addi	a0,a0,4
80001950:	00400613          	li	a2,4
80001954:	fffff097          	auipc	ra,0xfffff
80001958:	684080e7          	jalr	1668(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
8000195c:	fc042503          	lw	a0,-64(s0)
80001960:	40b50533          	sub	a0,a0,a1
80001964:	fca42023          	sw	a0,-64(s0)
80001968:	01812483          	lw	s1,24(sp)
8000196c:	04048c63          	beqz	s1,800019c4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x710>
80001970:	01412903          	lw	s2,20(sp)
80001974:	00490913          	addi	s2,s2,4
80001978:	8000e9b7          	lui	s3,0x8000e
8000197c:	fc098413          	addi	s0,s3,-64 # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
80001980:	00440413          	addi	s0,s0,4
80001984:	0100006f          	j	80001994 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6e0>
80001988:	fff48493          	addi	s1,s1,-1
8000198c:	00c90913          	addi	s2,s2,12
80001990:	02048a63          	beqz	s1,800019c4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x710>
80001994:	ffc92683          	lw	a3,-4(s2)
80001998:	fe0688e3          	beqz	a3,80001988 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6d4>
8000199c:	00092583          	lw	a1,0(s2)
800019a0:	00269693          	slli	a3,a3,0x2
800019a4:	00400613          	li	a2,4
800019a8:	00040513          	mv	a0,s0
800019ac:	fffff097          	auipc	ra,0xfffff
800019b0:	62c080e7          	jalr	1580(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800019b4:	fc09a503          	lw	a0,-64(s3)
800019b8:	40b50533          	sub	a0,a0,a1
800019bc:	fca9a023          	sw	a0,-64(s3)
800019c0:	fc9ff06f          	j	80001988 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x6d4>
800019c4:	01012503          	lw	a0,16(sp)
800019c8:	02050e63          	beqz	a0,80001a04 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x750>
800019cc:	00c00593          	li	a1,12
800019d0:	00008097          	auipc	ra,0x8
800019d4:	5ac080e7          	jalr	1452(ra) # 80009f7c <__mulsi3>
800019d8:	01412583          	lw	a1,20(sp)
800019dc:	00050693          	mv	a3,a0
800019e0:	8000e437          	lui	s0,0x8000e
800019e4:	fc040513          	addi	a0,s0,-64 # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
800019e8:	00450513          	addi	a0,a0,4
800019ec:	00400613          	li	a2,4
800019f0:	fffff097          	auipc	ra,0xfffff
800019f4:	5e8080e7          	jalr	1512(ra) # 80000fd8 <_ZN7SuperOS4hole8HoleList10deallocate17h97ba67f80e05da93E>
800019f8:	fc042503          	lw	a0,-64(s0)
800019fc:	40b50533          	sub	a0,a0,a1
80001a00:	fca42023          	sw	a0,-64(s0)
80001a04:	09c12083          	lw	ra,156(sp)
80001a08:	09812403          	lw	s0,152(sp)
80001a0c:	09412483          	lw	s1,148(sp)
80001a10:	09012903          	lw	s2,144(sp)
80001a14:	08c12983          	lw	s3,140(sp)
80001a18:	08812a03          	lw	s4,136(sp)
80001a1c:	08412a83          	lw	s5,132(sp)
80001a20:	08012b03          	lw	s6,128(sp)
80001a24:	07c12b83          	lw	s7,124(sp)
80001a28:	07812c03          	lw	s8,120(sp)
80001a2c:	07412c83          	lw	s9,116(sp)
80001a30:	07012d03          	lw	s10,112(sp)
80001a34:	06c12d83          	lw	s11,108(sp)
80001a38:	0a010113          	addi	sp,sp,160
80001a3c:	00008067          	ret
80001a40:	8000c637          	lui	a2,0x8000c
80001a44:	57c60613          	addi	a2,a2,1404 # 8000c57c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.36>
80001a48:	00040513          	mv	a0,s0
80001a4c:	00005097          	auipc	ra,0x5
80001a50:	5d4080e7          	jalr	1492(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a54:	8000c637          	lui	a2,0x8000c
80001a58:	58c60613          	addi	a2,a2,1420 # 8000c58c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.37>
80001a5c:	00048513          	mv	a0,s1
80001a60:	00005097          	auipc	ra,0x5
80001a64:	5c0080e7          	jalr	1472(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a68:	8000c637          	lui	a2,0x8000c
80001a6c:	59c60613          	addi	a2,a2,1436 # 8000c59c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.38>
80001a70:	00048513          	mv	a0,s1
80001a74:	00005097          	auipc	ra,0x5
80001a78:	5ac080e7          	jalr	1452(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a7c:	8000c637          	lui	a2,0x8000c
80001a80:	5ac60613          	addi	a2,a2,1452 # 8000c5ac <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.39>
80001a84:	000b0513          	mv	a0,s6
80001a88:	00005097          	auipc	ra,0x5
80001a8c:	598080e7          	jalr	1432(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001a90:	8000c637          	lui	a2,0x8000c
80001a94:	5bc60613          	addi	a2,a2,1468 # 8000c5bc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.40>
80001a98:	00040513          	mv	a0,s0
80001a9c:	00005097          	auipc	ra,0x5
80001aa0:	584080e7          	jalr	1412(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001aa4:	8000c637          	lui	a2,0x8000c
80001aa8:	5cc60613          	addi	a2,a2,1484 # 8000c5cc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.41>
80001aac:	000b0513          	mv	a0,s6
80001ab0:	00005097          	auipc	ra,0x5
80001ab4:	570080e7          	jalr	1392(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001ab8:	8000c637          	lui	a2,0x8000c
80001abc:	60c60613          	addi	a2,a2,1548 # 8000c60c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.45>
80001ac0:	00040513          	mv	a0,s0
80001ac4:	00005097          	auipc	ra,0x5
80001ac8:	55c080e7          	jalr	1372(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001acc:	8000c637          	lui	a2,0x8000c
80001ad0:	62c60613          	addi	a2,a2,1580 # 8000c62c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.47>
80001ad4:	00040513          	mv	a0,s0
80001ad8:	00005097          	auipc	ra,0x5
80001adc:	548080e7          	jalr	1352(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001ae0:	8000c637          	lui	a2,0x8000c
80001ae4:	64c60613          	addi	a2,a2,1612 # 8000c64c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.49>
80001ae8:	00040513          	mv	a0,s0
80001aec:	00005097          	auipc	ra,0x5
80001af0:	534080e7          	jalr	1332(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001af4:	00200593          	li	a1,2
80001af8:	0380006f          	j	80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001afc:	00400593          	li	a1,4
80001b00:	0300006f          	j	80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001b04:	00600593          	li	a1,6
80001b08:	0280006f          	j	80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001b0c:	00800593          	li	a1,8
80001b10:	0200006f          	j	80001b30 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E+0x87c>
80001b14:	8000c637          	lui	a2,0x8000c
80001b18:	55c60613          	addi	a2,a2,1372 # 8000c55c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.34>
80001b1c:	00040513          	mv	a0,s0
80001b20:	00040593          	mv	a1,s0
80001b24:	00005097          	auipc	ra,0x5
80001b28:	4fc080e7          	jalr	1276(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001b2c:	00000593          	li	a1,0
80001b30:	8000c637          	lui	a2,0x8000c
80001b34:	56c60613          	addi	a2,a2,1388 # 8000c56c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.35>
80001b38:	00058513          	mv	a0,a1
80001b3c:	00005097          	auipc	ra,0x5
80001b40:	4e4080e7          	jalr	1252(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80001b44:	8000c537          	lui	a0,0x8000c
80001b48:	18450513          	addi	a0,a0,388 # 8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>
80001b4c:	8000c6b7          	lui	a3,0x8000c
80001b50:	17468693          	addi	a3,a3,372 # 8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>
80001b54:	8000c737          	lui	a4,0x8000c
80001b58:	1c070713          	addi	a4,a4,448 # 8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>
80001b5c:	02b00593          	li	a1,43
80001b60:	06b10613          	addi	a2,sp,107
80001b64:	00005097          	auipc	ra,0x5
80001b68:	6b8080e7          	jalr	1720(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80001b6c <rust_begin_unwind>:
80001b6c:	fd010113          	addi	sp,sp,-48
80001b70:	02112623          	sw	ra,44(sp)
80001b74:	00a12223          	sw	a0,4(sp)
80001b78:	00410513          	addi	a0,sp,4
80001b7c:	02a12023          	sw	a0,32(sp)
80001b80:	80000537          	lui	a0,0x80000
80001b84:	03c50513          	addi	a0,a0,60 # 8000003c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h04315e1379c69354E>
80001b88:	02a12223          	sw	a0,36(sp)
80001b8c:	8000c537          	lui	a0,0x8000c
80001b90:	68450513          	addi	a0,a0,1668 # 8000c684 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.52>
80001b94:	00a12423          	sw	a0,8(sp)
80001b98:	00200513          	li	a0,2
80001b9c:	00a12623          	sw	a0,12(sp)
80001ba0:	00012c23          	sw	zero,24(sp)
80001ba4:	02010513          	addi	a0,sp,32
80001ba8:	00a12823          	sw	a0,16(sp)
80001bac:	00100513          	li	a0,1
80001bb0:	00a12a23          	sw	a0,20(sp)
80001bb4:	8000c5b7          	lui	a1,0x8000c
80001bb8:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
80001bbc:	02b10513          	addi	a0,sp,43
80001bc0:	00810613          	addi	a2,sp,8
80001bc4:	00006097          	auipc	ra,0x6
80001bc8:	2e8080e7          	jalr	744(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001bcc:	00051463          	bnez	a0,80001bd4 <rust_begin_unwind+0x68>
80001bd0:	0000006f          	j	80001bd0 <rust_begin_unwind+0x64>
80001bd4:	8000c537          	lui	a0,0x8000c
80001bd8:	18450513          	addi	a0,a0,388 # 8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>
80001bdc:	8000c6b7          	lui	a3,0x8000c
80001be0:	17468693          	addi	a3,a3,372 # 8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>
80001be4:	8000c737          	lui	a4,0x8000c
80001be8:	1c070713          	addi	a4,a4,448 # 8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>
80001bec:	02b00593          	li	a1,43
80001bf0:	02b10613          	addi	a2,sp,43
80001bf4:	00005097          	auipc	ra,0x5
80001bf8:	628080e7          	jalr	1576(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

80001bfc <kernel_main>:
80001bfc:	f2010113          	addi	sp,sp,-224
80001c00:	0c112e23          	sw	ra,220(sp)
80001c04:	0c812c23          	sw	s0,216(sp)
80001c08:	0c912a23          	sw	s1,212(sp)
80001c0c:	0d212823          	sw	s2,208(sp)
80001c10:	0d312623          	sw	s3,204(sp)
80001c14:	0d412423          	sw	s4,200(sp)
80001c18:	0d512223          	sw	s5,196(sp)
80001c1c:	0d612023          	sw	s6,192(sp)
80001c20:	0b712e23          	sw	s7,188(sp)
80001c24:	0b812c23          	sw	s8,184(sp)
80001c28:	0b912a23          	sw	s9,180(sp)
80001c2c:	0ba12823          	sw	s10,176(sp)
80001c30:	0bb12623          	sw	s11,172(sp)
80001c34:	10000437          	lui	s0,0x10000
80001c38:	07300593          	li	a1,115
80001c3c:	00b40023          	sb	a1,0(s0) # 10000000 <.Lline_table_start2+0xfffec52>
80001c40:	07400913          	li	s2,116
80001c44:	01240023          	sb	s2,0(s0)
80001c48:	06100993          	li	s3,97
80001c4c:	01340023          	sb	s3,0(s0)
80001c50:	07200513          	li	a0,114
80001c54:	00a40023          	sb	a0,0(s0)
80001c58:	07200613          	li	a2,114
80001c5c:	01240023          	sb	s2,0(s0)
80001c60:	06500a13          	li	s4,101
80001c64:	01440023          	sb	s4,0(s0)
80001c68:	06400513          	li	a0,100
80001c6c:	00a40023          	sb	a0,0(s0)
80001c70:	02100513          	li	a0,33
80001c74:	00a40023          	sb	a0,0(s0)
80001c78:	00a00a93          	li	s5,10
80001c7c:	01540023          	sb	s5,0(s0)
80001c80:	04400513          	li	a0,68
80001c84:	00a40023          	sb	a0,0(s0)
80001c88:	04f00513          	li	a0,79
80001c8c:	00a40023          	sb	a0,0(s0)
80001c90:	06f00c93          	li	s9,111
80001c94:	01940023          	sb	s9,0(s0)
80001c98:	00a40023          	sb	a0,0(s0)
80001c9c:	04d00513          	li	a0,77
80001ca0:	00a40023          	sb	a0,0(s0)
80001ca4:	02000d93          	li	s11,32
80001ca8:	01b40023          	sb	s11,0(s0)
80001cac:	01940023          	sb	s9,0(s0)
80001cb0:	00b40023          	sb	a1,0(s0)
80001cb4:	01540023          	sb	s5,0(s0)
80001cb8:	06900d13          	li	s10,105
80001cbc:	01a40023          	sb	s10,0(s0)
80001cc0:	06e00c13          	li	s8,110
80001cc4:	01840023          	sb	s8,0(s0)
80001cc8:	01a40023          	sb	s10,0(s0)
80001ccc:	01240023          	sb	s2,0(s0)
80001cd0:	01b40023          	sb	s11,0(s0)
80001cd4:	07000493          	li	s1,112
80001cd8:	00940023          	sb	s1,0(s0)
80001cdc:	01340023          	sb	s3,0(s0)
80001ce0:	06700b93          	li	s7,103
80001ce4:	01740023          	sb	s7,0(s0)
80001ce8:	01440023          	sb	s4,0(s0)
80001cec:	01b40023          	sb	s11,0(s0)
80001cf0:	01340023          	sb	s3,0(s0)
80001cf4:	06c00b13          	li	s6,108
80001cf8:	01640023          	sb	s6,0(s0)
80001cfc:	01640023          	sb	s6,0(s0)
80001d00:	01940023          	sb	s9,0(s0)
80001d04:	06300513          	li	a0,99
80001d08:	00a40023          	sb	a0,0(s0)
80001d0c:	01340023          	sb	s3,0(s0)
80001d10:	01240023          	sb	s2,0(s0)
80001d14:	01940023          	sb	s9,0(s0)
80001d18:	00c40023          	sb	a2,0(s0)
80001d1c:	01540023          	sb	s5,0(s0)
80001d20:	fffff097          	auipc	ra,0xfffff
80001d24:	a0c080e7          	jalr	-1524(ra) # 8000072c <_ZN7SuperOS6palloc4init17hf43a1ce3900c094dE>
80001d28:	00940023          	sb	s1,0(s0)
80001d2c:	01340023          	sb	s3,0(s0)
80001d30:	01740023          	sb	s7,0(s0)
80001d34:	07300513          	li	a0,115
80001d38:	01440023          	sb	s4,0(s0)
80001d3c:	01b40023          	sb	s11,0(s0)
80001d40:	01340023          	sb	s3,0(s0)
80001d44:	01640023          	sb	s6,0(s0)
80001d48:	01640023          	sb	s6,0(s0)
80001d4c:	01940023          	sb	s9,0(s0)
80001d50:	06300613          	li	a2,99
80001d54:	00c40023          	sb	a2,0(s0)
80001d58:	01340023          	sb	s3,0(s0)
80001d5c:	01240023          	sb	s2,0(s0)
80001d60:	01940023          	sb	s9,0(s0)
80001d64:	07200593          	li	a1,114
80001d68:	00b40023          	sb	a1,0(s0)
80001d6c:	01b40023          	sb	s11,0(s0)
80001d70:	01a40023          	sb	s10,0(s0)
80001d74:	01840023          	sb	s8,0(s0)
80001d78:	01a40023          	sb	s10,0(s0)
80001d7c:	01240023          	sb	s2,0(s0)
80001d80:	01a40023          	sb	s10,0(s0)
80001d84:	01340023          	sb	s3,0(s0)
80001d88:	01640023          	sb	s6,0(s0)
80001d8c:	01a40023          	sb	s10,0(s0)
80001d90:	00a40023          	sb	a0,0(s0)
80001d94:	01440023          	sb	s4,0(s0)
80001d98:	06400513          	li	a0,100
80001d9c:	00a40023          	sb	a0,0(s0)
80001da0:	02100513          	li	a0,33
80001da4:	00a40023          	sb	a0,0(s0)
80001da8:	01540023          	sb	s5,0(s0)
80001dac:	01a40023          	sb	s10,0(s0)
80001db0:	01840023          	sb	s8,0(s0)
80001db4:	01a40023          	sb	s10,0(s0)
80001db8:	01240023          	sb	s2,0(s0)
80001dbc:	01b40023          	sb	s11,0(s0)
80001dc0:	06b00513          	li	a0,107
80001dc4:	00a40023          	sb	a0,0(s0)
80001dc8:	01440023          	sb	s4,0(s0)
80001dcc:	00b40023          	sb	a1,0(s0)
80001dd0:	01840023          	sb	s8,0(s0)
80001dd4:	07200c13          	li	s8,114
80001dd8:	01440023          	sb	s4,0(s0)
80001ddc:	01640023          	sb	s6,0(s0)
80001de0:	01b40023          	sb	s11,0(s0)
80001de4:	01340023          	sb	s3,0(s0)
80001de8:	01640023          	sb	s6,0(s0)
80001dec:	01640023          	sb	s6,0(s0)
80001df0:	01940023          	sb	s9,0(s0)
80001df4:	06300b93          	li	s7,99
80001df8:	00c40023          	sb	a2,0(s0)
80001dfc:	01340023          	sb	s3,0(s0)
80001e00:	01240023          	sb	s2,0(s0)
80001e04:	01940023          	sb	s9,0(s0)
80001e08:	01840023          	sb	s8,0(s0)
80001e0c:	01540023          	sb	s5,0(s0)
80001e10:	8000f4b7          	lui	s1,0x8000f
80001e14:	00048493          	mv	s1,s1
80001e18:	0a912023          	sw	s1,160(sp)
80001e1c:	0a010513          	addi	a0,sp,160
80001e20:	08a12423          	sw	a0,136(sp)
80001e24:	80000537          	lui	a0,0x80000
80001e28:	17050513          	addi	a0,a0,368 # 80000170 <_ZN50_$LT$$BP$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1208718559632fcE>
80001e2c:	08a12623          	sw	a0,140(sp)
80001e30:	8000c537          	lui	a0,0x8000c
80001e34:	21450513          	addi	a0,a0,532 # 8000c214 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.32.llvm.14191420167725335739>
80001e38:	00a12223          	sw	a0,4(sp)
80001e3c:	00200513          	li	a0,2
80001e40:	00a12423          	sw	a0,8(sp)
80001e44:	00012a23          	sw	zero,20(sp)
80001e48:	08810513          	addi	a0,sp,136
80001e4c:	00a12623          	sw	a0,12(sp)
80001e50:	00100513          	li	a0,1
80001e54:	00a12823          	sw	a0,16(sp)
80001e58:	8000c5b7          	lui	a1,0x8000c
80001e5c:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
80001e60:	0a810513          	addi	a0,sp,168
80001e64:	00410613          	addi	a2,sp,4
80001e68:	00006097          	auipc	ra,0x6
80001e6c:	044080e7          	jalr	68(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80001e70:	2c051063          	bnez	a0,80002130 <kernel_main+0x534>
80001e74:	8000e537          	lui	a0,0x8000e
80001e78:	fc052023          	sw	zero,-64(a0) # 8000dfc0 <_ZN7SuperOS6kalloc16KERNEL_ALLOCATOR17hfe4bb1a5821a8c85E.llvm.14191420167725335739>
80001e7c:	fc050513          	addi	a0,a0,-64
80001e80:	00348593          	addi	a1,s1,3 # 8000f003 <KALLOC_BUFFER+0x3>
80001e84:	ffc5f593          	andi	a1,a1,-4
80001e88:	00200637          	lui	a2,0x200
80001e8c:	00c48633          	add	a2,s1,a2
80001e90:	40b60633          	sub	a2,a2,a1
80001e94:	004006b7          	lui	a3,0x400
80001e98:	ffc68693          	addi	a3,a3,-4 # 3ffffc <.Lline_table_start2+0x3fec4e>
80001e9c:	00d676b3          	and	a3,a2,a3
80001ea0:	00d5a023          	sw	a3,0(a1)
80001ea4:	0005a223          	sw	zero,4(a1)
80001ea8:	00d586b3          	add	a3,a1,a3
80001eac:	00367613          	andi	a2,a2,3
80001eb0:	00052223          	sw	zero,4(a0)
80001eb4:	00b52423          	sw	a1,8(a0)
80001eb8:	00b52623          	sw	a1,12(a0)
80001ebc:	00d52823          	sw	a3,16(a0)
80001ec0:	00c50a23          	sb	a2,20(a0)
80001ec4:	06b00513          	li	a0,107
80001ec8:	00a40023          	sb	a0,0(s0)
80001ecc:	06500593          	li	a1,101
80001ed0:	00b40023          	sb	a1,0(s0)
80001ed4:	01840023          	sb	s8,0(s0)
80001ed8:	06e00513          	li	a0,110
80001edc:	00a40023          	sb	a0,0(s0)
80001ee0:	00b40023          	sb	a1,0(s0)
80001ee4:	01640023          	sb	s6,0(s0)
80001ee8:	01b40023          	sb	s11,0(s0)
80001eec:	01340023          	sb	s3,0(s0)
80001ef0:	01640023          	sb	s6,0(s0)
80001ef4:	01640023          	sb	s6,0(s0)
80001ef8:	01940023          	sb	s9,0(s0)
80001efc:	01740023          	sb	s7,0(s0)
80001f00:	01340023          	sb	s3,0(s0)
80001f04:	01240023          	sb	s2,0(s0)
80001f08:	01940023          	sb	s9,0(s0)
80001f0c:	01840023          	sb	s8,0(s0)
80001f10:	01b40023          	sb	s11,0(s0)
80001f14:	01a40023          	sb	s10,0(s0)
80001f18:	00a40023          	sb	a0,0(s0)
80001f1c:	01a40023          	sb	s10,0(s0)
80001f20:	01240023          	sb	s2,0(s0)
80001f24:	01a40023          	sb	s10,0(s0)
80001f28:	01340023          	sb	s3,0(s0)
80001f2c:	01640023          	sb	s6,0(s0)
80001f30:	01a40023          	sb	s10,0(s0)
80001f34:	07300513          	li	a0,115
80001f38:	00a40023          	sb	a0,0(s0)
80001f3c:	00b40023          	sb	a1,0(s0)
80001f40:	06400513          	li	a0,100
80001f44:	00a40023          	sb	a0,0(s0)
80001f48:	02100513          	li	a0,33
80001f4c:	00a40023          	sb	a0,0(s0)
80001f50:	00a00513          	li	a0,10
80001f54:	00a40023          	sb	a0,0(s0)
80001f58:	fffff097          	auipc	ra,0xfffff
80001f5c:	a4c080e7          	jalr	-1460(ra) # 800009a4 <latency_bench>
80001f60:	fffff097          	auipc	ra,0xfffff
80001f64:	a44080e7          	jalr	-1468(ra) # 800009a4 <latency_bench>
80001f68:	0ff0000f          	fence
80001f6c:	fffff097          	auipc	ra,0xfffff
80001f70:	348080e7          	jalr	840(ra) # 800012b4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E>
80001f74:	0ff0000f          	fence
80001f78:	00040023          	sb	zero,0(s0)
80001f7c:	80001537          	lui	a0,0x80001
80001f80:	d0050513          	addi	a0,a0,-768 # 80000d00 <user_trap>
80001f84:	30551073          	.insn	4, 0x30551073
80001f88:	30002573          	.insn	4, 0x30002573
80001f8c:	00300593          	li	a1,3
80001f90:	00b59593          	slli	a1,a1,0xb
80001f94:	00b56533          	or	a0,a0,a1
80001f98:	30051073          	.insn	4, 0x30051073
80001f9c:	08000513          	li	a0,128
80001fa0:	30052073          	.insn	4, 0x30052073
80001fa4:	8000e537          	lui	a0,0x8000e
80001fa8:	fbc54583          	lbu	a1,-68(a0) # 8000dfbc <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.14191420167725335739>
80001fac:	00058463          	beqz	a1,80001fb4 <kernel_main+0x3b8>
80001fb0:	0000006f          	j	80001fb0 <kernel_main+0x3b4>
80001fb4:	8000e5b7          	lui	a1,0x8000e
80001fb8:	fb85a603          	lw	a2,-72(a1) # 8000dfb8 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.2.llvm.14191420167725335739>
80001fbc:	8000e6b7          	lui	a3,0x8000e
80001fc0:	fb06a683          	lw	a3,-80(a3) # 8000dfb0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0.llvm.14191420167725335739>
80001fc4:	00100713          	li	a4,1
80001fc8:	fae50e23          	sb	a4,-68(a0)
80001fcc:	00160613          	addi	a2,a2,1 # 200001 <.Lline_table_start2+0x1fec53>
80001fd0:	fac5ac23          	sw	a2,-72(a1)
80001fd4:	18068263          	beqz	a3,80002158 <kernel_main+0x55c>
80001fd8:	8000e537          	lui	a0,0x8000e
80001fdc:	fb452403          	lw	s0,-76(a0) # 8000dfb4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1.llvm.14191420167725335739>
80001fe0:	00c41413          	slli	s0,s0,0xc
80001fe4:	12040e63          	beqz	s0,80002120 <kernel_main+0x524>
80001fe8:	00042503          	lw	a0,0(s0)
80001fec:	00050863          	beqz	a0,80001ffc <kernel_main+0x400>
80001ff0:	00442503          	lw	a0,4(s0)
80001ff4:	00100593          	li	a1,1
80001ff8:	0080006f          	j	80002000 <kernel_main+0x404>
80001ffc:	00000593          	li	a1,0
80002000:	8000e637          	lui	a2,0x8000e
80002004:	fab62823          	sw	a1,-80(a2) # 8000dfb0 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.0.llvm.14191420167725335739>
80002008:	8000e5b7          	lui	a1,0x8000e
8000200c:	faa5aa23          	sw	a0,-76(a1) # 8000dfb4 <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.1.llvm.14191420167725335739>
80002010:	8000e537          	lui	a0,0x8000e
80002014:	fa050e23          	sb	zero,-68(a0) # 8000dfbc <_ZN7SuperOS6palloc14PAGE_ALLOCATOR17haa0bf1794b2a2064E.3.llvm.14191420167725335739>
80002018:	08010493          	addi	s1,sp,128
8000201c:	00410513          	addi	a0,sp,4
80002020:	07c00613          	li	a2,124
80002024:	00000593          	li	a1,0
80002028:	00009097          	auipc	ra,0x9
8000202c:	eb0080e7          	jalr	-336(ra) # 8000aed8 <memset>
80002030:	80002537          	lui	a0,0x80002
80002034:	16c50513          	addi	a0,a0,364 # 8000216c <_ZN7SuperOS9user_main17hdb789cef18ee1961E>
80002038:	08a12023          	sw	a0,128(sp)
8000203c:	08012223          	sw	zero,132(sp)
80002040:	0a912023          	sw	s1,160(sp)
80002044:	80009537          	lui	a0,0x80009
80002048:	6d450513          	addi	a0,a0,1748 # 800096d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>
8000204c:	0aa12223          	sw	a0,164(sp)
80002050:	8000c537          	lui	a0,0x8000c
80002054:	6b050513          	addi	a0,a0,1712 # 8000c6b0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.69>
80002058:	08a12423          	sw	a0,136(sp)
8000205c:	00200513          	li	a0,2
80002060:	08a12623          	sw	a0,140(sp)
80002064:	08012c23          	sw	zero,152(sp)
80002068:	0a010513          	addi	a0,sp,160
8000206c:	08a12823          	sw	a0,144(sp)
80002070:	00100513          	li	a0,1
80002074:	08a12a23          	sw	a0,148(sp)
80002078:	8000c5b7          	lui	a1,0x8000c
8000207c:	15c58593          	addi	a1,a1,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
80002080:	0a810513          	addi	a0,sp,168
80002084:	08810613          	addi	a2,sp,136
80002088:	00006097          	auipc	ra,0x6
8000208c:	e24080e7          	jalr	-476(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80002090:	0a051063          	bnez	a0,80002130 <kernel_main+0x534>
80002094:	00001537          	lui	a0,0x1
80002098:	ff850513          	addi	a0,a0,-8 # ff8 <.Lline_table_start2+0xc>
8000209c:	00a46533          	or	a0,s0,a0
800020a0:	00a12423          	sw	a0,8(sp)
800020a4:	10000537          	lui	a0,0x10000
800020a8:	04800593          	li	a1,72
800020ac:	00b50023          	sb	a1,0(a0) # 10000000 <.Lline_table_start2+0xfffec52>
800020b0:	06500593          	li	a1,101
800020b4:	00b50023          	sb	a1,0(a0)
800020b8:	06c00593          	li	a1,108
800020bc:	00b50023          	sb	a1,0(a0)
800020c0:	00b50023          	sb	a1,0(a0)
800020c4:	06f00613          	li	a2,111
800020c8:	00c50023          	sb	a2,0(a0)
800020cc:	02000693          	li	a3,32
800020d0:	00d50023          	sb	a3,0(a0)
800020d4:	07700693          	li	a3,119
800020d8:	00d50023          	sb	a3,0(a0)
800020dc:	00c50023          	sb	a2,0(a0)
800020e0:	07200613          	li	a2,114
800020e4:	00c50023          	sb	a2,0(a0)
800020e8:	00b50023          	sb	a1,0(a0)
800020ec:	06400593          	li	a1,100
800020f0:	00b50023          	sb	a1,0(a0)
800020f4:	02100593          	li	a1,33
800020f8:	00b50023          	sb	a1,0(a0)
800020fc:	00a00593          	li	a1,10
80002100:	00b50023          	sb	a1,0(a0)
80002104:	00410513          	addi	a0,sp,4
80002108:	fffff097          	auipc	ra,0xfffff
8000210c:	b28080e7          	jalr	-1240(ra) # 80000c30 <run_user>
80002110:	00410513          	addi	a0,sp,4
80002114:	ffffe097          	auipc	ra,0xffffe
80002118:	4a0080e7          	jalr	1184(ra) # 800005b4 <_ZN7SuperOS7handler7handler17h2213965921875da5E>
8000211c:	fe9ff06f          	j	80002104 <kernel_main+0x508>
80002120:	8000c537          	lui	a0,0x8000c
80002124:	26050513          	addi	a0,a0,608 # 8000c260 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.37.llvm.14191420167725335739>
80002128:	00005097          	auipc	ra,0x5
8000212c:	d10080e7          	jalr	-752(ra) # 80006e38 <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>
80002130:	8000c537          	lui	a0,0x8000c
80002134:	18450513          	addi	a0,a0,388 # 8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>
80002138:	8000c6b7          	lui	a3,0x8000c
8000213c:	17468693          	addi	a3,a3,372 # 8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>
80002140:	8000c737          	lui	a4,0x8000c
80002144:	1c070713          	addi	a4,a4,448 # 8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>
80002148:	02b00593          	li	a1,43
8000214c:	0a810613          	addi	a2,sp,168
80002150:	00005097          	auipc	ra,0x5
80002154:	0cc080e7          	jalr	204(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>
80002158:	fa050e23          	sb	zero,-68(a0)
8000215c:	8000c537          	lui	a0,0x8000c
80002160:	69450513          	addi	a0,a0,1684 # 8000c694 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.67>
80002164:	00005097          	auipc	ra,0x5
80002168:	cd4080e7          	jalr	-812(ra) # 80006e38 <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>

8000216c <_ZN7SuperOS9user_main17hdb789cef18ee1961E>:
8000216c:	f9010113          	addi	sp,sp,-112
80002170:	06112623          	sw	ra,108(sp)
80002174:	06812423          	sw	s0,104(sp)
80002178:	06912223          	sw	s1,100(sp)
8000217c:	07212023          	sw	s2,96(sp)
80002180:	05312e23          	sw	s3,92(sp)
80002184:	05412c23          	sw	s4,88(sp)
80002188:	05512a23          	sw	s5,84(sp)
8000218c:	05612823          	sw	s6,80(sp)
80002190:	05712623          	sw	s7,76(sp)
80002194:	05812423          	sw	s8,72(sp)
80002198:	05912223          	sw	s9,68(sp)
8000219c:	05a12023          	sw	s10,64(sp)
800021a0:	03b12e23          	sw	s11,60(sp)
800021a4:	100004b7          	lui	s1,0x10000
800021a8:	06500993          	li	s3,101
800021ac:	06c00a13          	li	s4,108
800021b0:	07300c13          	li	s8,115
800021b4:	02100d13          	li	s10,33
800021b8:	8000aab7          	lui	s5,0x8000a
800021bc:	8d4a8a93          	addi	s5,s5,-1836 # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
800021c0:	00c10b13          	addi	s6,sp,12
800021c4:	8000cbb7          	lui	s7,0x8000c
800021c8:	6d0b8b93          	addi	s7,s7,1744 # 8000c6d0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.76>
800021cc:	00300c93          	li	s9,3
800021d0:	02810d93          	addi	s11,sp,40
800021d4:	00200913          	li	s2,2
800021d8:	8000c437          	lui	s0,0x8000c
800021dc:	15c40413          	addi	s0,s0,348 # 8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>
800021e0:	04800513          	li	a0,72
800021e4:	00a48023          	sb	a0,0(s1) # 10000000 <.Lline_table_start2+0xfffec52>
800021e8:	01348023          	sb	s3,0(s1)
800021ec:	01448023          	sb	s4,0(s1)
800021f0:	01448023          	sb	s4,0(s1)
800021f4:	06f00513          	li	a0,111
800021f8:	00a48023          	sb	a0,0(s1)
800021fc:	02000513          	li	a0,32
80002200:	00a48023          	sb	a0,0(s1)
80002204:	07500513          	li	a0,117
80002208:	00a48023          	sb	a0,0(s1)
8000220c:	01848023          	sb	s8,0(s1)
80002210:	01348023          	sb	s3,0(s1)
80002214:	07200513          	li	a0,114
80002218:	00a48023          	sb	a0,0(s1)
8000221c:	01848023          	sb	s8,0(s1)
80002220:	01a48023          	sb	s10,0(s1)
80002224:	01a48023          	sb	s10,0(s1)
80002228:	01a48023          	sb	s10,0(s1)
8000222c:	00a00513          	li	a0,10
80002230:	00a48023          	sb	a0,0(s1)
80002234:	b0002573          	.insn	4, 0xb0002573
80002238:	40a00533          	neg	a0,a0
8000223c:	00a12423          	sw	a0,8(sp)
80002240:	b0202573          	.insn	4, 0xb0202573
80002244:	40a00533          	neg	a0,a0
80002248:	00a12623          	sw	a0,12(sp)
8000224c:	fffff097          	auipc	ra,0xfffff
80002250:	068080e7          	jalr	104(ra) # 800012b4 <_ZN7SuperOS12matmul_bench17h436cf635b5f385c1E>
80002254:	b0002573          	.insn	4, 0xb0002573
80002258:	00812583          	lw	a1,8(sp)
8000225c:	00a58533          	add	a0,a1,a0
80002260:	00a12423          	sw	a0,8(sp)
80002264:	b0202573          	.insn	4, 0xb0202573
80002268:	00c12583          	lw	a1,12(sp)
8000226c:	00a58533          	add	a0,a1,a0
80002270:	00a12623          	sw	a0,12(sp)
80002274:	00810513          	addi	a0,sp,8
80002278:	02a12423          	sw	a0,40(sp)
8000227c:	03512623          	sw	s5,44(sp)
80002280:	03612823          	sw	s6,48(sp)
80002284:	03512a23          	sw	s5,52(sp)
80002288:	01712823          	sw	s7,16(sp)
8000228c:	01912a23          	sw	s9,20(sp)
80002290:	02012023          	sw	zero,32(sp)
80002294:	01b12c23          	sw	s11,24(sp)
80002298:	01212e23          	sw	s2,28(sp)
8000229c:	03b10513          	addi	a0,sp,59
800022a0:	01010613          	addi	a2,sp,16
800022a4:	00040593          	mv	a1,s0
800022a8:	00006097          	auipc	ra,0x6
800022ac:	c04080e7          	jalr	-1020(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
800022b0:	00051663          	bnez	a0,800022bc <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x150>
800022b4:	00000073          	ecall
800022b8:	f29ff06f          	j	800021e0 <_ZN7SuperOS9user_main17hdb789cef18ee1961E+0x74>
800022bc:	8000c537          	lui	a0,0x8000c
800022c0:	18450513          	addi	a0,a0,388 # 8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>
800022c4:	8000c6b7          	lui	a3,0x8000c
800022c8:	17468693          	addi	a3,a3,372 # 8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>
800022cc:	8000c737          	lui	a4,0x8000c
800022d0:	1c070713          	addi	a4,a4,448 # 8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>
800022d4:	02b00593          	li	a1,43
800022d8:	03b10613          	addi	a2,sp,59
800022dc:	00005097          	auipc	ra,0x5
800022e0:	f40080e7          	jalr	-192(ra) # 8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>

800022e4 <__rust_alloc_error_handler>:
800022e4:	ffffe317          	auipc	t1,0xffffe
800022e8:	6ac30067          	jr	1708(t1) # 80000990 <__rg_oom>

800022ec <_ZN5alloc7raw_vec17capacity_overflow17h26ecbcc11cda3850E>:
800022ec:	fe010113          	addi	sp,sp,-32
800022f0:	00112e23          	sw	ra,28(sp)
800022f4:	00812c23          	sw	s0,24(sp)
800022f8:	02010413          	addi	s0,sp,32
800022fc:	00050593          	mv	a1,a0
80002300:	8000c537          	lui	a0,0x8000c
80002304:	6fc50513          	addi	a0,a0,1788 # 8000c6fc <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4>
80002308:	fea42023          	sw	a0,-32(s0)
8000230c:	00100513          	li	a0,1
80002310:	fea42223          	sw	a0,-28(s0)
80002314:	fe042823          	sw	zero,-16(s0)
80002318:	00400513          	li	a0,4
8000231c:	fea42423          	sw	a0,-24(s0)
80002320:	fe042623          	sw	zero,-20(s0)
80002324:	fe040513          	addi	a0,s0,-32
80002328:	00005097          	auipc	ra,0x5
8000232c:	c84080e7          	jalr	-892(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80002330 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E>:
80002330:	ff010113          	addi	sp,sp,-16
80002334:	00112623          	sw	ra,12(sp)
80002338:	00812423          	sw	s0,8(sp)
8000233c:	01010413          	addi	s0,sp,16
80002340:	00051863          	bnez	a0,80002350 <_ZN5alloc7raw_vec12handle_error17hbbb20bfda831dbc2E+0x20>
80002344:	00060513          	mv	a0,a2
80002348:	00000097          	auipc	ra,0x0
8000234c:	fa4080e7          	jalr	-92(ra) # 800022ec <_ZN5alloc7raw_vec17capacity_overflow17h26ecbcc11cda3850E>
80002350:	00000097          	auipc	ra,0x0
80002354:	008080e7          	jalr	8(ra) # 80002358 <_ZN5alloc5alloc18handle_alloc_error17ha730bc427c9442a1E>

80002358 <_ZN5alloc5alloc18handle_alloc_error17ha730bc427c9442a1E>:
80002358:	ff010113          	addi	sp,sp,-16
8000235c:	00112623          	sw	ra,12(sp)
80002360:	00812423          	sw	s0,8(sp)
80002364:	01010413          	addi	s0,sp,16
80002368:	00050613          	mv	a2,a0
8000236c:	00058513          	mv	a0,a1
80002370:	00060593          	mv	a1,a2
80002374:	00000097          	auipc	ra,0x0
80002378:	f70080e7          	jalr	-144(ra) # 800022e4 <__rust_alloc_error_handler>

8000237c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>:
8000237c:	f0010113          	addi	sp,sp,-256
80002380:	0e112e23          	sw	ra,252(sp)
80002384:	0e812c23          	sw	s0,248(sp)
80002388:	0e912a23          	sw	s1,244(sp)
8000238c:	0f212823          	sw	s2,240(sp)
80002390:	0f312623          	sw	s3,236(sp)
80002394:	0f412423          	sw	s4,232(sp)
80002398:	0f512223          	sw	s5,228(sp)
8000239c:	0f612023          	sw	s6,224(sp)
800023a0:	0d712e23          	sw	s7,220(sp)
800023a4:	0d812c23          	sw	s8,216(sp)
800023a8:	0d912a23          	sw	s9,212(sp)
800023ac:	0da12823          	sw	s10,208(sp)
800023b0:	0db12623          	sw	s11,204(sp)
800023b4:	10010413          	addi	s0,sp,256
800023b8:	00800613          	li	a2,8
800023bc:	00058d13          	mv	s10,a1
800023c0:	00050c93          	mv	s9,a0
800023c4:	08c5f663          	bgeu	a1,a2,80002450 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd4>
800023c8:	0a0ca983          	lw	s3,160(s9)
800023cc:	02900513          	li	a0,41
800023d0:	52a9f2e3          	bgeu	s3,a0,800030f4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
800023d4:	06098a63          	beqz	s3,80002448 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcc>
800023d8:	002d1513          	slli	a0,s10,0x2
800023dc:	8000d5b7          	lui	a1,0x8000d
800023e0:	11858593          	addi	a1,a1,280 # 8000d118 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
800023e4:	00a58533          	add	a0,a1,a0
800023e8:	00052903          	lw	s2,0(a0)
800023ec:	00000a13          	li	s4,0
800023f0:	00299a93          	slli	s5,s3,0x2
800023f4:	015c84b3          	add	s1,s9,s5
800023f8:	000c8b13          	mv	s6,s9
800023fc:	000b2503          	lw	a0,0(s6)
80002400:	004b0b93          	addi	s7,s6,4
80002404:	00000593          	li	a1,0
80002408:	00090613          	mv	a2,s2
8000240c:	00000693          	li	a3,0
80002410:	00008097          	auipc	ra,0x8
80002414:	bb4080e7          	jalr	-1100(ra) # 80009fc4 <__muldi3>
80002418:	01450633          	add	a2,a0,s4
8000241c:	00a63a33          	sltu	s4,a2,a0
80002420:	01458a33          	add	s4,a1,s4
80002424:	ffca8a93          	addi	s5,s5,-4
80002428:	00cb2023          	sw	a2,0(s6)
8000242c:	000b8b13          	mv	s6,s7
80002430:	fc0a96e3          	bnez	s5,800023fc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x80>
80002434:	000a0a63          	beqz	s4,80002448 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcc>
80002438:	02800513          	li	a0,40
8000243c:	4ea984e3          	beq	s3,a0,80003124 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
80002440:	0144a023          	sw	s4,0(s1)
80002444:	00198993          	addi	s3,s3,1
80002448:	0b3ca023          	sw	s3,160(s9)
8000244c:	4690006f          	j	800030b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd38>
80002450:	007d7513          	andi	a0,s10,7
80002454:	08050663          	beqz	a0,800024e0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x164>
80002458:	0a0ca983          	lw	s3,160(s9)
8000245c:	02900593          	li	a1,41
80002460:	48b9fae3          	bgeu	s3,a1,800030f4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
80002464:	06098c63          	beqz	s3,800024dc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x160>
80002468:	00251593          	slli	a1,a0,0x2
8000246c:	8000d637          	lui	a2,0x8000d
80002470:	11860613          	addi	a2,a2,280 # 8000d118 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
80002474:	00b605b3          	add	a1,a2,a1
80002478:	0005a583          	lw	a1,0(a1)
8000247c:	00000493          	li	s1,0
80002480:	00a5da33          	srl	s4,a1,a0
80002484:	00299a93          	slli	s5,s3,0x2
80002488:	015c8933          	add	s2,s9,s5
8000248c:	000c8b13          	mv	s6,s9
80002490:	000b2503          	lw	a0,0(s6)
80002494:	004b0b93          	addi	s7,s6,4
80002498:	00000593          	li	a1,0
8000249c:	000a0613          	mv	a2,s4
800024a0:	00000693          	li	a3,0
800024a4:	00008097          	auipc	ra,0x8
800024a8:	b20080e7          	jalr	-1248(ra) # 80009fc4 <__muldi3>
800024ac:	00950633          	add	a2,a0,s1
800024b0:	00a634b3          	sltu	s1,a2,a0
800024b4:	009584b3          	add	s1,a1,s1
800024b8:	ffca8a93          	addi	s5,s5,-4
800024bc:	00cb2023          	sw	a2,0(s6)
800024c0:	000b8b13          	mv	s6,s7
800024c4:	fc0a96e3          	bnez	s5,80002490 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x114>
800024c8:	00048a63          	beqz	s1,800024dc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x160>
800024cc:	02800513          	li	a0,40
800024d0:	44a98ae3          	beq	s3,a0,80003124 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
800024d4:	00992023          	sw	s1,0(s2)
800024d8:	00198993          	addi	s3,s3,1
800024dc:	0b3ca023          	sw	s3,160(s9)
800024e0:	008d7513          	andi	a0,s10,8
800024e4:	06050e63          	beqz	a0,80002560 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e4>
800024e8:	0a0ca983          	lw	s3,160(s9)
800024ec:	02900513          	li	a0,41
800024f0:	40a9f2e3          	bgeu	s3,a0,800030f4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd78>
800024f4:	06098463          	beqz	s3,8000255c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e0>
800024f8:	00000913          	li	s2,0
800024fc:	00299a93          	slli	s5,s3,0x2
80002500:	015c84b3          	add	s1,s9,s5
80002504:	0005f537          	lui	a0,0x5f
80002508:	5e150a13          	addi	s4,a0,1505 # 5f5e1 <.Lline_table_start2+0x5e233>
8000250c:	000c8b13          	mv	s6,s9
80002510:	000b2503          	lw	a0,0(s6)
80002514:	004b0b93          	addi	s7,s6,4
80002518:	00000593          	li	a1,0
8000251c:	000a0613          	mv	a2,s4
80002520:	00000693          	li	a3,0
80002524:	00008097          	auipc	ra,0x8
80002528:	aa0080e7          	jalr	-1376(ra) # 80009fc4 <__muldi3>
8000252c:	01250633          	add	a2,a0,s2
80002530:	00a63933          	sltu	s2,a2,a0
80002534:	01258933          	add	s2,a1,s2
80002538:	ffca8a93          	addi	s5,s5,-4
8000253c:	00cb2023          	sw	a2,0(s6)
80002540:	000b8b13          	mv	s6,s7
80002544:	fc0a96e3          	bnez	s5,80002510 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x194>
80002548:	00090a63          	beqz	s2,8000255c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x1e0>
8000254c:	02800513          	li	a0,40
80002550:	3ca98ae3          	beq	s3,a0,80003124 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xda8>
80002554:	0124a023          	sw	s2,0(s1)
80002558:	00198993          	addi	s3,s3,1
8000255c:	0b3ca023          	sw	s3,160(s9)
80002560:	010d7513          	andi	a0,s10,16
80002564:	f3942223          	sw	s9,-220(s0)
80002568:	f3a42423          	sw	s10,-216(s0)
8000256c:	16050863          	beqz	a0,800026dc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x360>
80002570:	f2c40513          	addi	a0,s0,-212
80002574:	0a000613          	li	a2,160
80002578:	f2c40c13          	addi	s8,s0,-212
8000257c:	00000593          	li	a1,0
80002580:	00009097          	auipc	ra,0x9
80002584:	958080e7          	jalr	-1704(ra) # 8000aed8 <memset>
80002588:	0a0ca703          	lw	a4,160(s9)
8000258c:	00200513          	li	a0,2
80002590:	10a77663          	bgeu	a4,a0,8000269c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x320>
80002594:	00000d13          	li	s10,0
80002598:	00000993          	li	s3,0
8000259c:	00271713          	slli	a4,a4,0x2
800025a0:	00ec8bb3          	add	s7,s9,a4
800025a4:	02800593          	li	a1,40
800025a8:	86f27537          	lui	a0,0x86f27
800025ac:	fc150a13          	addi	s4,a0,-63 # 86f26fc1 <KALLOC_BUFFER+0x6f17fc1>
800025b0:	000c8d93          	mv	s11,s9
800025b4:	fffd0a93          	addi	s5,s10,-1
800025b8:	002d1493          	slli	s1,s10,0x2
800025bc:	009c04b3          	add	s1,s8,s1
800025c0:	000d8513          	mv	a0,s11
800025c4:	f2842d03          	lw	s10,-216(s0)
800025c8:	0f750e63          	beq	a0,s7,800026c4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x348>
800025cc:	00052b03          	lw	s6,0(a0)
800025d0:	00450d93          	addi	s11,a0,4
800025d4:	001a8a93          	addi	s5,s5,1
800025d8:	00448493          	addi	s1,s1,4
800025dc:	000d8513          	mv	a0,s11
800025e0:	fe0b04e3          	beqz	s6,800025c8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x24c>
800025e4:	34bafee3          	bgeu	s5,a1,80003140 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdc4>
800025e8:	ffc4a903          	lw	s2,-4(s1)
800025ec:	001a8d13          	addi	s10,s5,1
800025f0:	000b0513          	mv	a0,s6
800025f4:	00000593          	li	a1,0
800025f8:	000a0613          	mv	a2,s4
800025fc:	00000693          	li	a3,0
80002600:	00008097          	auipc	ra,0x8
80002604:	9c4080e7          	jalr	-1596(ra) # 80009fc4 <__muldi3>
80002608:	01250633          	add	a2,a0,s2
8000260c:	fec4ae23          	sw	a2,-4(s1)
80002610:	02700693          	li	a3,39
80002614:	33a6e4e3          	bltu	a3,s10,8000313c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdc0>
80002618:	0004a903          	lw	s2,0(s1)
8000261c:	00a63533          	sltu	a0,a2,a0
80002620:	00a58cb3          	add	s9,a1,a0
80002624:	02300613          	li	a2,35
80002628:	000b0513          	mv	a0,s6
8000262c:	00000593          	li	a1,0
80002630:	00000693          	li	a3,0
80002634:	00008097          	auipc	ra,0x8
80002638:	990080e7          	jalr	-1648(ra) # 80009fc4 <__muldi3>
8000263c:	012c8933          	add	s2,s9,s2
80002640:	01993633          	sltu	a2,s2,s9
80002644:	00a906b3          	add	a3,s2,a0
80002648:	0126b533          	sltu	a0,a3,s2
8000264c:	00b605b3          	add	a1,a2,a1
80002650:	00a58533          	add	a0,a1,a0
80002654:	00d4a023          	sw	a3,0(s1)
80002658:	02050463          	beqz	a0,80002680 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x304>
8000265c:	f2442c83          	lw	s9,-220(s0)
80002660:	02800593          	li	a1,40
80002664:	02600613          	li	a2,38
80002668:	34caf2e3          	bgeu	s5,a2,800031ac <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe30>
8000266c:	00a4a223          	sw	a0,4(s1)
80002670:	00300513          	li	a0,3
80002674:	01550533          	add	a0,a0,s5
80002678:	f3356ee3          	bltu	a0,s3,800025b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
8000267c:	0180006f          	j	80002694 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x318>
80002680:	00200513          	li	a0,2
80002684:	f2442c83          	lw	s9,-220(s0)
80002688:	02800593          	li	a1,40
8000268c:	01550533          	add	a0,a0,s5
80002690:	f33562e3          	bltu	a0,s3,800025b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
80002694:	00050993          	mv	s3,a0
80002698:	f1dff06f          	j	800025b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x238>
8000269c:	02900513          	li	a0,41
800026a0:	26a776e3          	bgeu	a4,a0,8000310c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
800026a4:	8000c5b7          	lui	a1,0x8000c
800026a8:	79c58593          	addi	a1,a1,1948 # 8000c79c <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h99816a37407431b1E>
800026ac:	f2c40513          	addi	a0,s0,-212
800026b0:	00200613          	li	a2,2
800026b4:	000c8693          	mv	a3,s9
800026b8:	00007097          	auipc	ra,0x7
800026bc:	c98080e7          	jalr	-872(ra) # 80009350 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
800026c0:	00050993          	mv	s3,a0
800026c4:	f2c40593          	addi	a1,s0,-212
800026c8:	0a000613          	li	a2,160
800026cc:	000c8513          	mv	a0,s9
800026d0:	00008097          	auipc	ra,0x8
800026d4:	97c080e7          	jalr	-1668(ra) # 8000a04c <memcpy>
800026d8:	0b3ca023          	sw	s3,160(s9)
800026dc:	020d7513          	andi	a0,s10,32
800026e0:	1c050a63          	beqz	a0,800028b4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x538>
800026e4:	f2c40513          	addi	a0,s0,-212
800026e8:	0a000613          	li	a2,160
800026ec:	00000593          	li	a1,0
800026f0:	00008097          	auipc	ra,0x8
800026f4:	7e8080e7          	jalr	2024(ra) # 8000aed8 <memset>
800026f8:	0a0ca703          	lw	a4,160(s9)
800026fc:	00300513          	li	a0,3
80002700:	16a77663          	bgeu	a4,a0,8000286c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4f0>
80002704:	00000d93          	li	s11,0
80002708:	00000913          	li	s2,0
8000270c:	00271713          	slli	a4,a4,0x2
80002710:	00ec84b3          	add	s1,s9,a4
80002714:	f3040a93          	addi	s5,s0,-208
80002718:	02800593          	li	a1,40
8000271c:	85acf537          	lui	a0,0x85acf
80002720:	f8150613          	addi	a2,a0,-127 # 85acef81 <KALLOC_BUFFER+0x5abff81>
80002724:	2d6d4537          	lui	a0,0x2d6d4
80002728:	15b50513          	addi	a0,a0,347 # 2d6d415b <.Lline_table_start2+0x2d6d2dad>
8000272c:	f2a42023          	sw	a0,-224(s0)
80002730:	000c8d13          	mv	s10,s9
80002734:	fffd8b93          	addi	s7,s11,-1
80002738:	002d9c13          	slli	s8,s11,0x2
8000273c:	018a8c33          	add	s8,s5,s8
80002740:	000d0513          	mv	a0,s10
80002744:	14950a63          	beq	a0,s1,80002898 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x51c>
80002748:	00052b03          	lw	s6,0(a0)
8000274c:	00450d13          	addi	s10,a0,4
80002750:	001b8b93          	addi	s7,s7,1
80002754:	004c0c13          	addi	s8,s8,4
80002758:	000d0513          	mv	a0,s10
8000275c:	fe0b04e3          	beqz	s6,80002744 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3c8>
80002760:	1ebbfce3          	bgeu	s7,a1,80003158 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xddc>
80002764:	f1242e23          	sw	s2,-228(s0)
80002768:	ff8c2903          	lw	s2,-8(s8)
8000276c:	001b8d93          	addi	s11,s7,1
80002770:	000b0513          	mv	a0,s6
80002774:	00000593          	li	a1,0
80002778:	00060993          	mv	s3,a2
8000277c:	00000693          	li	a3,0
80002780:	00008097          	auipc	ra,0x8
80002784:	844080e7          	jalr	-1980(ra) # 80009fc4 <__muldi3>
80002788:	01250633          	add	a2,a0,s2
8000278c:	02800c93          	li	s9,40
80002790:	fecc2c23          	sw	a2,-8(s8)
80002794:	1d9df4e3          	bgeu	s11,s9,8000315c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xde0>
80002798:	ffcc2a03          	lw	s4,-4(s8)
8000279c:	00a63933          	sltu	s2,a2,a0
800027a0:	01258933          	add	s2,a1,s2
800027a4:	000b0513          	mv	a0,s6
800027a8:	00000593          	li	a1,0
800027ac:	f2042603          	lw	a2,-224(s0)
800027b0:	00000693          	li	a3,0
800027b4:	00008097          	auipc	ra,0x8
800027b8:	810080e7          	jalr	-2032(ra) # 80009fc4 <__muldi3>
800027bc:	01490633          	add	a2,s2,s4
800027c0:	00a60533          	add	a0,a2,a0
800027c4:	feac2e23          	sw	a0,-4(s8)
800027c8:	02500693          	li	a3,37
800027cc:	1976e8e3          	bltu	a3,s7,8000315c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xde0>
800027d0:	012636b3          	sltu	a3,a2,s2
800027d4:	000c2903          	lw	s2,0(s8)
800027d8:	00c53533          	sltu	a0,a0,a2
800027dc:	00b685b3          	add	a1,a3,a1
800027e0:	00a58a33          	add	s4,a1,a0
800027e4:	4ee00613          	li	a2,1262
800027e8:	000b0513          	mv	a0,s6
800027ec:	00000593          	li	a1,0
800027f0:	00000693          	li	a3,0
800027f4:	00007097          	auipc	ra,0x7
800027f8:	7d0080e7          	jalr	2000(ra) # 80009fc4 <__muldi3>
800027fc:	012a0933          	add	s2,s4,s2
80002800:	01493633          	sltu	a2,s2,s4
80002804:	00a906b3          	add	a3,s2,a0
80002808:	0126b533          	sltu	a0,a3,s2
8000280c:	00b605b3          	add	a1,a2,a1
80002810:	00a58533          	add	a0,a1,a0
80002814:	00dc2023          	sw	a3,0(s8)
80002818:	02050863          	beqz	a0,80002848 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4cc>
8000281c:	f2442c83          	lw	s9,-220(s0)
80002820:	02800593          	li	a1,40
80002824:	f1c42903          	lw	s2,-228(s0)
80002828:	02500693          	li	a3,37
8000282c:	18db8ce3          	beq	s7,a3,800031c4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe48>
80002830:	00098613          	mv	a2,s3
80002834:	00ac2223          	sw	a0,4(s8)
80002838:	00400513          	li	a0,4
8000283c:	01750533          	add	a0,a0,s7
80002840:	ef256ae3          	bltu	a0,s2,80002734 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
80002844:	0200006f          	j	80002864 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x4e8>
80002848:	00300513          	li	a0,3
8000284c:	f2442c83          	lw	s9,-220(s0)
80002850:	02800593          	li	a1,40
80002854:	00098613          	mv	a2,s3
80002858:	f1c42903          	lw	s2,-228(s0)
8000285c:	01750533          	add	a0,a0,s7
80002860:	ed256ae3          	bltu	a0,s2,80002734 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
80002864:	00050913          	mv	s2,a0
80002868:	ecdff06f          	j	80002734 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x3b8>
8000286c:	02900513          	li	a0,41
80002870:	08a77ee3          	bgeu	a4,a0,8000310c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002874:	8000c5b7          	lui	a1,0x8000c
80002878:	7a458593          	addi	a1,a1,1956 # 8000c7a4 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217he851a7b51f37758fE>
8000287c:	f2c40513          	addi	a0,s0,-212
80002880:	00300613          	li	a2,3
80002884:	000c8693          	mv	a3,s9
80002888:	00007097          	auipc	ra,0x7
8000288c:	ac8080e7          	jalr	-1336(ra) # 80009350 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002890:	00050913          	mv	s2,a0
80002894:	0080006f          	j	8000289c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x520>
80002898:	f2842d03          	lw	s10,-216(s0)
8000289c:	f2c40593          	addi	a1,s0,-212
800028a0:	0a000613          	li	a2,160
800028a4:	000c8513          	mv	a0,s9
800028a8:	00007097          	auipc	ra,0x7
800028ac:	7a4080e7          	jalr	1956(ra) # 8000a04c <memcpy>
800028b0:	0b2ca023          	sw	s2,160(s9)
800028b4:	040d7513          	andi	a0,s10,64
800028b8:	28050063          	beqz	a0,80002b38 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7bc>
800028bc:	f2c40513          	addi	a0,s0,-212
800028c0:	0a000613          	li	a2,160
800028c4:	00000593          	li	a1,0
800028c8:	00008097          	auipc	ra,0x8
800028cc:	610080e7          	jalr	1552(ra) # 8000aed8 <memset>
800028d0:	0a0ca703          	lw	a4,160(s9)
800028d4:	00500513          	li	a0,5
800028d8:	20a77c63          	bgeu	a4,a0,80002af0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x774>
800028dc:	00000a13          	li	s4,0
800028e0:	00000913          	li	s2,0
800028e4:	00271713          	slli	a4,a4,0x2
800028e8:	00ec8db3          	add	s11,s9,a4
800028ec:	f3440693          	addi	a3,s0,-204
800028f0:	02800593          	li	a1,40
800028f4:	bf6a2537          	lui	a0,0xbf6a2
800028f8:	f0150613          	addi	a2,a0,-255 # bf6a1f01 <KALLOC_BUFFER+0x3f692f01>
800028fc:	6e38f537          	lui	a0,0x6e38f
80002900:	d6450513          	addi	a0,a0,-668 # 6e38ed64 <.Lline_table_start2+0x6e38d9b6>
80002904:	f2a42023          	sw	a0,-224(s0)
80002908:	daa79537          	lui	a0,0xdaa79
8000290c:	7ed50513          	addi	a0,a0,2029 # daa797ed <KALLOC_BUFFER+0x5aa6a7ed>
80002910:	f0a42e23          	sw	a0,-228(s0)
80002914:	e9400537          	lui	a0,0xe9400
80002918:	9f450993          	addi	s3,a0,-1548 # e93ff9f4 <KALLOC_BUFFER+0x693f09f4>
8000291c:	00185537          	lui	a0,0x185
80002920:	f0350493          	addi	s1,a0,-253 # 184f03 <.Lline_table_start2+0x183b55>
80002924:	000c8c13          	mv	s8,s9
80002928:	fffa0a93          	addi	s5,s4,-1
8000292c:	002a1a13          	slli	s4,s4,0x2
80002930:	01468bb3          	add	s7,a3,s4
80002934:	000c0513          	mv	a0,s8
80002938:	1fb50263          	beq	a0,s11,80002b1c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7a0>
8000293c:	00052c83          	lw	s9,0(a0)
80002940:	00450c13          	addi	s8,a0,4
80002944:	001a8a93          	addi	s5,s5,1
80002948:	004b8b93          	addi	s7,s7,4
8000294c:	000c0513          	mv	a0,s8
80002950:	fe0c84e3          	beqz	s9,80002938 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5bc>
80002954:	f0942c23          	sw	s1,-232(s0)
80002958:	f1242a23          	sw	s2,-236(s0)
8000295c:	00bafce3          	bgeu	s5,a1,80003174 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdf8>
80002960:	00098b13          	mv	s6,s3
80002964:	ff4ba903          	lw	s2,-12(s7)
80002968:	001a8a13          	addi	s4,s5,1
8000296c:	000c8513          	mv	a0,s9
80002970:	00000593          	li	a1,0
80002974:	f0c42823          	sw	a2,-240(s0)
80002978:	00000693          	li	a3,0
8000297c:	00007097          	auipc	ra,0x7
80002980:	648080e7          	jalr	1608(ra) # 80009fc4 <__muldi3>
80002984:	01250633          	add	a2,a0,s2
80002988:	02800493          	li	s1,40
8000298c:	fecbaa23          	sw	a2,-12(s7)
80002990:	7e9a7463          	bgeu	s4,s1,80003178 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002994:	ff8bad03          	lw	s10,-8(s7)
80002998:	00a63933          	sltu	s2,a2,a0
8000299c:	01258933          	add	s2,a1,s2
800029a0:	000c8513          	mv	a0,s9
800029a4:	00000593          	li	a1,0
800029a8:	f2042603          	lw	a2,-224(s0)
800029ac:	00000693          	li	a3,0
800029b0:	00007097          	auipc	ra,0x7
800029b4:	614080e7          	jalr	1556(ra) # 80009fc4 <__muldi3>
800029b8:	01a90633          	add	a2,s2,s10
800029bc:	00a60533          	add	a0,a2,a0
800029c0:	feabac23          	sw	a0,-8(s7)
800029c4:	02500993          	li	s3,37
800029c8:	7b59e863          	bltu	s3,s5,80003178 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
800029cc:	012636b3          	sltu	a3,a2,s2
800029d0:	ffcbad03          	lw	s10,-4(s7)
800029d4:	00c53933          	sltu	s2,a0,a2
800029d8:	00b685b3          	add	a1,a3,a1
800029dc:	01258933          	add	s2,a1,s2
800029e0:	000c8513          	mv	a0,s9
800029e4:	00000593          	li	a1,0
800029e8:	f1c42603          	lw	a2,-228(s0)
800029ec:	00000693          	li	a3,0
800029f0:	00007097          	auipc	ra,0x7
800029f4:	5d4080e7          	jalr	1492(ra) # 80009fc4 <__muldi3>
800029f8:	01a90633          	add	a2,s2,s10
800029fc:	00a60533          	add	a0,a2,a0
80002a00:	feabae23          	sw	a0,-4(s7)
80002a04:	773a8a63          	beq	s5,s3,80003178 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002a08:	012636b3          	sltu	a3,a2,s2
80002a0c:	000bad03          	lw	s10,0(s7)
80002a10:	00c53933          	sltu	s2,a0,a2
80002a14:	00b685b3          	add	a1,a3,a1
80002a18:	01258933          	add	s2,a1,s2
80002a1c:	000c8513          	mv	a0,s9
80002a20:	00000593          	li	a1,0
80002a24:	000b0993          	mv	s3,s6
80002a28:	000b0613          	mv	a2,s6
80002a2c:	00000693          	li	a3,0
80002a30:	00007097          	auipc	ra,0x7
80002a34:	594080e7          	jalr	1428(ra) # 80009fc4 <__muldi3>
80002a38:	01a90633          	add	a2,s2,s10
80002a3c:	00a60533          	add	a0,a2,a0
80002a40:	00aba023          	sw	a0,0(s7)
80002a44:	02300693          	li	a3,35
80002a48:	7356e863          	bltu	a3,s5,80003178 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xdfc>
80002a4c:	012636b3          	sltu	a3,a2,s2
80002a50:	004ba903          	lw	s2,4(s7)
80002a54:	00c53533          	sltu	a0,a0,a2
80002a58:	00b685b3          	add	a1,a3,a1
80002a5c:	00a58b33          	add	s6,a1,a0
80002a60:	000c8513          	mv	a0,s9
80002a64:	00000593          	li	a1,0
80002a68:	f1842483          	lw	s1,-232(s0)
80002a6c:	00048613          	mv	a2,s1
80002a70:	00000693          	li	a3,0
80002a74:	00007097          	auipc	ra,0x7
80002a78:	550080e7          	jalr	1360(ra) # 80009fc4 <__muldi3>
80002a7c:	012b0933          	add	s2,s6,s2
80002a80:	01693633          	sltu	a2,s2,s6
80002a84:	00a906b3          	add	a3,s2,a0
80002a88:	0126b533          	sltu	a0,a3,s2
80002a8c:	00b605b3          	add	a1,a2,a1
80002a90:	00a58533          	add	a0,a1,a0
80002a94:	00dba223          	sw	a3,4(s7)
80002a98:	f2842d03          	lw	s10,-216(s0)
80002a9c:	02050863          	beqz	a0,80002acc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x750>
80002aa0:	f3440693          	addi	a3,s0,-204
80002aa4:	02800593          	li	a1,40
80002aa8:	f1042603          	lw	a2,-240(s0)
80002aac:	02300713          	li	a4,35
80002ab0:	72ea8663          	beq	s5,a4,800031dc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe60>
80002ab4:	00aba423          	sw	a0,8(s7)
80002ab8:	00600513          	li	a0,6
80002abc:	f1442903          	lw	s2,-236(s0)
80002ac0:	01550533          	add	a0,a0,s5
80002ac4:	e72562e3          	bltu	a0,s2,80002928 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002ac8:	0200006f          	j	80002ae8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x76c>
80002acc:	00500513          	li	a0,5
80002ad0:	f3440693          	addi	a3,s0,-204
80002ad4:	02800593          	li	a1,40
80002ad8:	f1042603          	lw	a2,-240(s0)
80002adc:	f1442903          	lw	s2,-236(s0)
80002ae0:	01550533          	add	a0,a0,s5
80002ae4:	e52562e3          	bltu	a0,s2,80002928 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002ae8:	00050913          	mv	s2,a0
80002aec:	e3dff06f          	j	80002928 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x5ac>
80002af0:	02900513          	li	a0,41
80002af4:	60a77c63          	bgeu	a4,a0,8000310c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002af8:	8000c5b7          	lui	a1,0x8000c
80002afc:	7b058593          	addi	a1,a1,1968 # 8000c7b0 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417h3fd4a7811adefa4aE>
80002b00:	f2c40513          	addi	a0,s0,-212
80002b04:	00500613          	li	a2,5
80002b08:	000c8693          	mv	a3,s9
80002b0c:	00007097          	auipc	ra,0x7
80002b10:	844080e7          	jalr	-1980(ra) # 80009350 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002b14:	00050913          	mv	s2,a0
80002b18:	0080006f          	j	80002b20 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x7a4>
80002b1c:	f2442c83          	lw	s9,-220(s0)
80002b20:	f2c40593          	addi	a1,s0,-212
80002b24:	0a000613          	li	a2,160
80002b28:	000c8513          	mv	a0,s9
80002b2c:	00007097          	auipc	ra,0x7
80002b30:	520080e7          	jalr	1312(ra) # 8000a04c <memcpy>
80002b34:	0b2ca023          	sw	s2,160(s9)
80002b38:	080d7513          	andi	a0,s10,128
80002b3c:	3c050e63          	beqz	a0,80002f18 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb9c>
80002b40:	f2c40513          	addi	a0,s0,-212
80002b44:	0a000613          	li	a2,160
80002b48:	00000593          	li	a1,0
80002b4c:	00008097          	auipc	ra,0x8
80002b50:	38c080e7          	jalr	908(ra) # 8000aed8 <memset>
80002b54:	0a0ca703          	lw	a4,160(s9)
80002b58:	00a00513          	li	a0,10
80002b5c:	36a77e63          	bgeu	a4,a0,80002ed8 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb5c>
80002b60:	000c8d93          	mv	s11,s9
80002b64:	00000c93          	li	s9,0
80002b68:	00000913          	li	s2,0
80002b6c:	00271713          	slli	a4,a4,0x2
80002b70:	00ed84b3          	add	s1,s11,a4
80002b74:	f3c40693          	addi	a3,s0,-196
80002b78:	02800593          	li	a1,40
80002b7c:	2e954537          	lui	a0,0x2e954
80002b80:	e0150613          	addi	a2,a0,-511 # 2e953e01 <.Lline_table_start2+0x2e952a53>
80002b84:	03dfa537          	lui	a0,0x3dfa
80002b88:	90950513          	addi	a0,a0,-1783 # 3df9909 <.Lline_table_start2+0x3df855b>
80002b8c:	f2a42023          	sw	a0,-224(s0)
80002b90:	0f154537          	lui	a0,0xf154
80002b94:	8fd50513          	addi	a0,a0,-1795 # f1538fd <.Lline_table_start2+0xf15254f>
80002b98:	f0a42e23          	sw	a0,-228(s0)
80002b9c:	2374e537          	lui	a0,0x2374e
80002ba0:	42f50993          	addi	s3,a0,1071 # 2374e42f <.Lline_table_start2+0x2374d081>
80002ba4:	d3cff537          	lui	a0,0xd3cff
80002ba8:	5ec50513          	addi	a0,a0,1516 # d3cff5ec <KALLOC_BUFFER+0x53cf05ec>
80002bac:	f0a42c23          	sw	a0,-232(s0)
80002bb0:	c404e537          	lui	a0,0xc404e
80002bb4:	c0850513          	addi	a0,a0,-1016 # c404dc08 <KALLOC_BUFFER+0x4403ec08>
80002bb8:	f0a42a23          	sw	a0,-236(s0)
80002bbc:	bccdb537          	lui	a0,0xbccdb
80002bc0:	0da50513          	addi	a0,a0,218 # bccdb0da <KALLOC_BUFFER+0x3cccc0da>
80002bc4:	f0a42823          	sw	a0,-240(s0)
80002bc8:	a6338537          	lui	a0,0xa6338
80002bcc:	f1950513          	addi	a0,a0,-231 # a6337f19 <KALLOC_BUFFER+0x26328f19>
80002bd0:	f0a42623          	sw	a0,-244(s0)
80002bd4:	e91f2537          	lui	a0,0xe91f2
80002bd8:	60350513          	addi	a0,a0,1539 # e91f2603 <KALLOC_BUFFER+0x691e3603>
80002bdc:	f0a42423          	sw	a0,-248(s0)
80002be0:	fffc8b13          	addi	s6,s9,-1
80002be4:	002c9b93          	slli	s7,s9,0x2
80002be8:	01768bb3          	add	s7,a3,s7
80002bec:	000d8513          	mv	a0,s11
80002bf0:	f2442c83          	lw	s9,-220(s0)
80002bf4:	30950663          	beq	a0,s1,80002f00 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb84>
80002bf8:	00052a83          	lw	s5,0(a0)
80002bfc:	00450d93          	addi	s11,a0,4
80002c00:	001b0b13          	addi	s6,s6,1
80002c04:	004b8b93          	addi	s7,s7,4
80002c08:	000d8513          	mv	a0,s11
80002c0c:	fe0a84e3          	beqz	s5,80002bf4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x878>
80002c10:	f1242223          	sw	s2,-252(s0)
80002c14:	56bb7e63          	bgeu	s6,a1,80003190 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe14>
80002c18:	00098c13          	mv	s8,s3
80002c1c:	fecba903          	lw	s2,-20(s7)
80002c20:	001b0c93          	addi	s9,s6,1
80002c24:	000a8513          	mv	a0,s5
80002c28:	00000593          	li	a1,0
80002c2c:	f0c42023          	sw	a2,-256(s0)
80002c30:	00000693          	li	a3,0
80002c34:	00007097          	auipc	ra,0x7
80002c38:	390080e7          	jalr	912(ra) # 80009fc4 <__muldi3>
80002c3c:	01250633          	add	a2,a0,s2
80002c40:	02800a13          	li	s4,40
80002c44:	fecba623          	sw	a2,-20(s7)
80002c48:	554cf663          	bgeu	s9,s4,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002c4c:	ff0bad03          	lw	s10,-16(s7)
80002c50:	00a63933          	sltu	s2,a2,a0
80002c54:	01258933          	add	s2,a1,s2
80002c58:	000a8513          	mv	a0,s5
80002c5c:	00000593          	li	a1,0
80002c60:	f2042603          	lw	a2,-224(s0)
80002c64:	00000693          	li	a3,0
80002c68:	00007097          	auipc	ra,0x7
80002c6c:	35c080e7          	jalr	860(ra) # 80009fc4 <__muldi3>
80002c70:	01a90633          	add	a2,s2,s10
80002c74:	00a60533          	add	a0,a2,a0
80002c78:	feaba823          	sw	a0,-16(s7)
80002c7c:	02500993          	li	s3,37
80002c80:	5169ea63          	bltu	s3,s6,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002c84:	012636b3          	sltu	a3,a2,s2
80002c88:	ff4bad03          	lw	s10,-12(s7)
80002c8c:	00c53933          	sltu	s2,a0,a2
80002c90:	00b685b3          	add	a1,a3,a1
80002c94:	01258933          	add	s2,a1,s2
80002c98:	000a8513          	mv	a0,s5
80002c9c:	00000593          	li	a1,0
80002ca0:	f1c42603          	lw	a2,-228(s0)
80002ca4:	00000693          	li	a3,0
80002ca8:	00007097          	auipc	ra,0x7
80002cac:	31c080e7          	jalr	796(ra) # 80009fc4 <__muldi3>
80002cb0:	01a90633          	add	a2,s2,s10
80002cb4:	00a60533          	add	a0,a2,a0
80002cb8:	feabaa23          	sw	a0,-12(s7)
80002cbc:	4d3b0c63          	beq	s6,s3,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002cc0:	012636b3          	sltu	a3,a2,s2
80002cc4:	ff8bad03          	lw	s10,-8(s7)
80002cc8:	00c53933          	sltu	s2,a0,a2
80002ccc:	00b685b3          	add	a1,a3,a1
80002cd0:	01258933          	add	s2,a1,s2
80002cd4:	000a8513          	mv	a0,s5
80002cd8:	00000593          	li	a1,0
80002cdc:	000c0993          	mv	s3,s8
80002ce0:	000c0613          	mv	a2,s8
80002ce4:	00000693          	li	a3,0
80002ce8:	00007097          	auipc	ra,0x7
80002cec:	2dc080e7          	jalr	732(ra) # 80009fc4 <__muldi3>
80002cf0:	01a90633          	add	a2,s2,s10
80002cf4:	00a60533          	add	a0,a2,a0
80002cf8:	feabac23          	sw	a0,-8(s7)
80002cfc:	02300c13          	li	s8,35
80002d00:	496c6a63          	bltu	s8,s6,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002d04:	012636b3          	sltu	a3,a2,s2
80002d08:	ffcbad03          	lw	s10,-4(s7)
80002d0c:	00c53933          	sltu	s2,a0,a2
80002d10:	00b685b3          	add	a1,a3,a1
80002d14:	01258933          	add	s2,a1,s2
80002d18:	000a8513          	mv	a0,s5
80002d1c:	00000593          	li	a1,0
80002d20:	f1842603          	lw	a2,-232(s0)
80002d24:	00000693          	li	a3,0
80002d28:	00007097          	auipc	ra,0x7
80002d2c:	29c080e7          	jalr	668(ra) # 80009fc4 <__muldi3>
80002d30:	01a90633          	add	a2,s2,s10
80002d34:	00a60533          	add	a0,a2,a0
80002d38:	feabae23          	sw	a0,-4(s7)
80002d3c:	458b0c63          	beq	s6,s8,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002d40:	012636b3          	sltu	a3,a2,s2
80002d44:	000bad03          	lw	s10,0(s7)
80002d48:	00c53933          	sltu	s2,a0,a2
80002d4c:	00b685b3          	add	a1,a3,a1
80002d50:	01258933          	add	s2,a1,s2
80002d54:	000a8513          	mv	a0,s5
80002d58:	00000593          	li	a1,0
80002d5c:	f1442603          	lw	a2,-236(s0)
80002d60:	00000693          	li	a3,0
80002d64:	00007097          	auipc	ra,0x7
80002d68:	260080e7          	jalr	608(ra) # 80009fc4 <__muldi3>
80002d6c:	01a90633          	add	a2,s2,s10
80002d70:	00a60533          	add	a0,a2,a0
80002d74:	00aba023          	sw	a0,0(s7)
80002d78:	02100c13          	li	s8,33
80002d7c:	416c6c63          	bltu	s8,s6,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002d80:	012636b3          	sltu	a3,a2,s2
80002d84:	004bad03          	lw	s10,4(s7)
80002d88:	00c53933          	sltu	s2,a0,a2
80002d8c:	00b685b3          	add	a1,a3,a1
80002d90:	01258933          	add	s2,a1,s2
80002d94:	000a8513          	mv	a0,s5
80002d98:	00000593          	li	a1,0
80002d9c:	f1042603          	lw	a2,-240(s0)
80002da0:	00000693          	li	a3,0
80002da4:	00007097          	auipc	ra,0x7
80002da8:	220080e7          	jalr	544(ra) # 80009fc4 <__muldi3>
80002dac:	01a90633          	add	a2,s2,s10
80002db0:	00a60533          	add	a0,a2,a0
80002db4:	00aba223          	sw	a0,4(s7)
80002db8:	3d8b0e63          	beq	s6,s8,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002dbc:	012636b3          	sltu	a3,a2,s2
80002dc0:	008bad03          	lw	s10,8(s7)
80002dc4:	00c53933          	sltu	s2,a0,a2
80002dc8:	00b685b3          	add	a1,a3,a1
80002dcc:	01258933          	add	s2,a1,s2
80002dd0:	000a8513          	mv	a0,s5
80002dd4:	00000593          	li	a1,0
80002dd8:	f0c42603          	lw	a2,-244(s0)
80002ddc:	00000693          	li	a3,0
80002de0:	00007097          	auipc	ra,0x7
80002de4:	1e4080e7          	jalr	484(ra) # 80009fc4 <__muldi3>
80002de8:	01a90633          	add	a2,s2,s10
80002dec:	00a60533          	add	a0,a2,a0
80002df0:	00aba423          	sw	a0,8(s7)
80002df4:	01f00c13          	li	s8,31
80002df8:	396c6e63          	bltu	s8,s6,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002dfc:	012636b3          	sltu	a3,a2,s2
80002e00:	00cbad03          	lw	s10,12(s7)
80002e04:	00c53933          	sltu	s2,a0,a2
80002e08:	00b685b3          	add	a1,a3,a1
80002e0c:	01258933          	add	s2,a1,s2
80002e10:	000a8513          	mv	a0,s5
80002e14:	00000593          	li	a1,0
80002e18:	f0842603          	lw	a2,-248(s0)
80002e1c:	00000693          	li	a3,0
80002e20:	00007097          	auipc	ra,0x7
80002e24:	1a4080e7          	jalr	420(ra) # 80009fc4 <__muldi3>
80002e28:	01a90633          	add	a2,s2,s10
80002e2c:	00a60533          	add	a0,a2,a0
80002e30:	00aba623          	sw	a0,12(s7)
80002e34:	378b0063          	beq	s6,s8,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002e38:	012636b3          	sltu	a3,a2,s2
80002e3c:	010ba903          	lw	s2,16(s7)
80002e40:	00c53533          	sltu	a0,a0,a2
80002e44:	00b685b3          	add	a1,a3,a1
80002e48:	00a58c33          	add	s8,a1,a0
80002e4c:	24e00613          	li	a2,590
80002e50:	000a8513          	mv	a0,s5
80002e54:	00000593          	li	a1,0
80002e58:	00000693          	li	a3,0
80002e5c:	00007097          	auipc	ra,0x7
80002e60:	168080e7          	jalr	360(ra) # 80009fc4 <__muldi3>
80002e64:	012c0933          	add	s2,s8,s2
80002e68:	01893633          	sltu	a2,s2,s8
80002e6c:	00a906b3          	add	a3,s2,a0
80002e70:	0126b533          	sltu	a0,a3,s2
80002e74:	00b605b3          	add	a1,a2,a1
80002e78:	00a58533          	add	a0,a1,a0
80002e7c:	00dba823          	sw	a3,16(s7)
80002e80:	f2842d03          	lw	s10,-216(s0)
80002e84:	02050863          	beqz	a0,80002eb4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb38>
80002e88:	f3c40693          	addi	a3,s0,-196
80002e8c:	02800593          	li	a1,40
80002e90:	f0042603          	lw	a2,-256(s0)
80002e94:	f0442903          	lw	s2,-252(s0)
80002e98:	01e00713          	li	a4,30
80002e9c:	34eb7c63          	bgeu	s6,a4,800031f4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe78>
80002ea0:	00abaa23          	sw	a0,20(s7)
80002ea4:	00b00513          	li	a0,11
80002ea8:	01650533          	add	a0,a0,s6
80002eac:	d3256ae3          	bltu	a0,s2,80002be0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002eb0:	0200006f          	j	80002ed0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xb54>
80002eb4:	00a00513          	li	a0,10
80002eb8:	f3c40693          	addi	a3,s0,-196
80002ebc:	02800593          	li	a1,40
80002ec0:	f0042603          	lw	a2,-256(s0)
80002ec4:	f0442903          	lw	s2,-252(s0)
80002ec8:	01650533          	add	a0,a0,s6
80002ecc:	d1256ae3          	bltu	a0,s2,80002be0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002ed0:	00050913          	mv	s2,a0
80002ed4:	d0dff06f          	j	80002be0 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0x864>
80002ed8:	02900513          	li	a0,41
80002edc:	22a77863          	bgeu	a4,a0,8000310c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80002ee0:	8000c5b7          	lui	a1,0x8000c
80002ee4:	7c458593          	addi	a1,a1,1988 # 8000c7c4 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E>
80002ee8:	f2c40513          	addi	a0,s0,-212
80002eec:	00a00613          	li	a2,10
80002ef0:	000c8693          	mv	a3,s9
80002ef4:	00006097          	auipc	ra,0x6
80002ef8:	45c080e7          	jalr	1116(ra) # 80009350 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80002efc:	00050913          	mv	s2,a0
80002f00:	f2c40593          	addi	a1,s0,-212
80002f04:	0a000613          	li	a2,160
80002f08:	000c8513          	mv	a0,s9
80002f0c:	00007097          	auipc	ra,0x7
80002f10:	140080e7          	jalr	320(ra) # 8000a04c <memcpy>
80002f14:	0b2ca023          	sw	s2,160(s9)
80002f18:	100d7513          	andi	a0,s10,256
80002f1c:	18050463          	beqz	a0,800030a4 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd28>
80002f20:	f2c40513          	addi	a0,s0,-212
80002f24:	0a000613          	li	a2,160
80002f28:	f2c40493          	addi	s1,s0,-212
80002f2c:	00000593          	li	a1,0
80002f30:	00008097          	auipc	ra,0x8
80002f34:	fa8080e7          	jalr	-88(ra) # 8000aed8 <memset>
80002f38:	0a0ca703          	lw	a4,160(s9)
80002f3c:	01300513          	li	a0,19
80002f40:	10a77e63          	bgeu	a4,a0,8000305c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xce0>
80002f44:	00000c13          	li	s8,0
80002f48:	00000913          	li	s2,0
80002f4c:	00271713          	slli	a4,a4,0x2
80002f50:	00ec8733          	add	a4,s9,a4
80002f54:	f2840b93          	addi	s7,s0,-216
80002f58:	8000c637          	lui	a2,0x8000c
80002f5c:	7ec60613          	addi	a2,a2,2028 # 8000c7ec <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80002f60:	000c8d13          	mv	s10,s9
80002f64:	fffc0d93          	addi	s11,s8,-1
80002f68:	002c1513          	slli	a0,s8,0x2
80002f6c:	00ab8bb3          	add	s7,s7,a0
80002f70:	00a48533          	add	a0,s1,a0
80002f74:	000d0593          	mv	a1,s10
80002f78:	10e58863          	beq	a1,a4,80003088 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd0c>
80002f7c:	000c0a13          	mv	s4,s8
80002f80:	00050493          	mv	s1,a0
80002f84:	00458d13          	addi	s10,a1,4
80002f88:	0005aa83          	lw	s5,0(a1)
80002f8c:	001d8d93          	addi	s11,s11,1
80002f90:	004b8b93          	addi	s7,s7,4
80002f94:	001c0c13          	addi	s8,s8,1
80002f98:	00450513          	addi	a0,a0,4
80002f9c:	000d0593          	mv	a1,s10
80002fa0:	fc0a8ce3          	beqz	s5,80002f78 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbfc>
80002fa4:	f0e42e23          	sw	a4,-228(s0)
80002fa8:	f3242023          	sw	s2,-224(s0)
80002fac:	00000993          	li	s3,0
80002fb0:	001d8c13          	addi	s8,s11,1
80002fb4:	04c00913          	li	s2,76
80002fb8:	00060c93          	mv	s9,a2
80002fbc:	02800513          	li	a0,40
80002fc0:	1caa7a63          	bgeu	s4,a0,80003194 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe18>
80002fc4:	000ca503          	lw	a0,0(s9)
80002fc8:	0004ab03          	lw	s6,0(s1)
80002fcc:	00000593          	li	a1,0
80002fd0:	000a8613          	mv	a2,s5
80002fd4:	00000693          	li	a3,0
80002fd8:	00007097          	auipc	ra,0x7
80002fdc:	fec080e7          	jalr	-20(ra) # 80009fc4 <__muldi3>
80002fe0:	013b09b3          	add	s3,s6,s3
80002fe4:	0169b633          	sltu	a2,s3,s6
80002fe8:	00a98533          	add	a0,s3,a0
80002fec:	013539b3          	sltu	s3,a0,s3
80002ff0:	00b605b3          	add	a1,a2,a1
80002ff4:	013589b3          	add	s3,a1,s3
80002ff8:	00a4a023          	sw	a0,0(s1)
80002ffc:	001a0a13          	addi	s4,s4,1
80003000:	00448493          	addi	s1,s1,4
80003004:	ffc90913          	addi	s2,s2,-4
80003008:	004c8c93          	addi	s9,s9,4
8000300c:	fa0918e3          	bnez	s2,80002fbc <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xc40>
80003010:	00098e63          	beqz	s3,8000302c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcb0>
80003014:	f2442c83          	lw	s9,-220(s0)
80003018:	01500513          	li	a0,21
8000301c:	1eadf863          	bgeu	s11,a0,8000320c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xe90>
80003020:	053ba623          	sw	s3,76(s7)
80003024:	01400513          	li	a0,20
80003028:	00c0006f          	j	80003034 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xcb8>
8000302c:	01300513          	li	a0,19
80003030:	f2442c83          	lw	s9,-220(s0)
80003034:	f2c40493          	addi	s1,s0,-212
80003038:	f1c42703          	lw	a4,-228(s0)
8000303c:	f2840b93          	addi	s7,s0,-216
80003040:	01b50533          	add	a0,a0,s11
80003044:	f2042903          	lw	s2,-224(s0)
80003048:	8000c637          	lui	a2,0x8000c
8000304c:	7ec60613          	addi	a2,a2,2028 # 8000c7ec <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
80003050:	f1256ae3          	bltu	a0,s2,80002f64 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbe8>
80003054:	00050913          	mv	s2,a0
80003058:	f0dff06f          	j	80002f64 <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xbe8>
8000305c:	02900513          	li	a0,41
80003060:	0aa77663          	bgeu	a4,a0,8000310c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd90>
80003064:	8000c5b7          	lui	a1,0x8000c
80003068:	7ec58593          	addi	a1,a1,2028 # 8000c7ec <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>
8000306c:	f2c40513          	addi	a0,s0,-212
80003070:	01300613          	li	a2,19
80003074:	000c8693          	mv	a3,s9
80003078:	00006097          	auipc	ra,0x6
8000307c:	2d8080e7          	jalr	728(ra) # 80009350 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>
80003080:	00050913          	mv	s2,a0
80003084:	0080006f          	j	8000308c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E+0xd10>
80003088:	f2842d03          	lw	s10,-216(s0)
8000308c:	f2c40593          	addi	a1,s0,-212
80003090:	0a000613          	li	a2,160
80003094:	000c8513          	mv	a0,s9
80003098:	00007097          	auipc	ra,0x7
8000309c:	fb4080e7          	jalr	-76(ra) # 8000a04c <memcpy>
800030a0:	0b2ca023          	sw	s2,160(s9)
800030a4:	000c8513          	mv	a0,s9
800030a8:	000d0593          	mv	a1,s10
800030ac:	00006097          	auipc	ra,0x6
800030b0:	0a0080e7          	jalr	160(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800030b4:	000c8513          	mv	a0,s9
800030b8:	0fc12083          	lw	ra,252(sp)
800030bc:	0f812403          	lw	s0,248(sp)
800030c0:	0f412483          	lw	s1,244(sp)
800030c4:	0f012903          	lw	s2,240(sp)
800030c8:	0ec12983          	lw	s3,236(sp)
800030cc:	0e812a03          	lw	s4,232(sp)
800030d0:	0e412a83          	lw	s5,228(sp)
800030d4:	0e012b03          	lw	s6,224(sp)
800030d8:	0dc12b83          	lw	s7,220(sp)
800030dc:	0d812c03          	lw	s8,216(sp)
800030e0:	0d412c83          	lw	s9,212(sp)
800030e4:	0d012d03          	lw	s10,208(sp)
800030e8:	0cc12d83          	lw	s11,204(sp)
800030ec:	10010113          	addi	sp,sp,256
800030f0:	00008067          	ret
800030f4:	8000d637          	lui	a2,0x8000d
800030f8:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800030fc:	02800593          	li	a1,40
80003100:	00098513          	mv	a0,s3
80003104:	00006097          	auipc	ra,0x6
80003108:	da8080e7          	jalr	-600(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
8000310c:	8000d637          	lui	a2,0x8000d
80003110:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003114:	02800593          	li	a1,40
80003118:	00070513          	mv	a0,a4
8000311c:	00006097          	auipc	ra,0x6
80003120:	d90080e7          	jalr	-624(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80003124:	8000d637          	lui	a2,0x8000d
80003128:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000312c:	02800513          	li	a0,40
80003130:	02800593          	li	a1,40
80003134:	00004097          	auipc	ra,0x4
80003138:	eec080e7          	jalr	-276(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000313c:	02800a93          	li	s5,40
80003140:	8000d637          	lui	a2,0x8000d
80003144:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003148:	02800593          	li	a1,40
8000314c:	000a8513          	mv	a0,s5
80003150:	00004097          	auipc	ra,0x4
80003154:	ed0080e7          	jalr	-304(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003158:	000b8c93          	mv	s9,s7
8000315c:	8000d637          	lui	a2,0x8000d
80003160:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003164:	02800593          	li	a1,40
80003168:	000c8513          	mv	a0,s9
8000316c:	00004097          	auipc	ra,0x4
80003170:	eb4080e7          	jalr	-332(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003174:	000a8493          	mv	s1,s5
80003178:	8000d637          	lui	a2,0x8000d
8000317c:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003180:	02800593          	li	a1,40
80003184:	00048513          	mv	a0,s1
80003188:	00004097          	auipc	ra,0x4
8000318c:	e98080e7          	jalr	-360(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80003190:	000b0a13          	mv	s4,s6
80003194:	8000d637          	lui	a2,0x8000d
80003198:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000319c:	02800593          	li	a1,40
800031a0:	000a0513          	mv	a0,s4
800031a4:	00004097          	auipc	ra,0x4
800031a8:	e7c080e7          	jalr	-388(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800031ac:	002a8513          	addi	a0,s5,2
800031b0:	8000d637          	lui	a2,0x8000d
800031b4:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800031b8:	02800593          	li	a1,40
800031bc:	00004097          	auipc	ra,0x4
800031c0:	e64080e7          	jalr	-412(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800031c4:	003b8513          	addi	a0,s7,3
800031c8:	8000d637          	lui	a2,0x8000d
800031cc:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800031d0:	02800593          	li	a1,40
800031d4:	00004097          	auipc	ra,0x4
800031d8:	e4c080e7          	jalr	-436(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800031dc:	005a8513          	addi	a0,s5,5
800031e0:	8000d637          	lui	a2,0x8000d
800031e4:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800031e8:	02800593          	li	a1,40
800031ec:	00004097          	auipc	ra,0x4
800031f0:	e34080e7          	jalr	-460(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800031f4:	00ab0513          	addi	a0,s6,10
800031f8:	8000d637          	lui	a2,0x8000d
800031fc:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003200:	02800593          	li	a1,40
80003204:	00004097          	auipc	ra,0x4
80003208:	e1c080e7          	jalr	-484(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
8000320c:	013d8513          	addi	a0,s11,19
80003210:	8000d637          	lui	a2,0x8000d
80003214:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80003218:	02800593          	li	a1,40
8000321c:	00004097          	auipc	ra,0x4
80003220:	e04080e7          	jalr	-508(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80003224 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE>:
80003224:	a8010113          	addi	sp,sp,-1408
80003228:	56112e23          	sw	ra,1404(sp)
8000322c:	56812c23          	sw	s0,1400(sp)
80003230:	56912a23          	sw	s1,1396(sp)
80003234:	57212823          	sw	s2,1392(sp)
80003238:	57312623          	sw	s3,1388(sp)
8000323c:	57412423          	sw	s4,1384(sp)
80003240:	57512223          	sw	s5,1380(sp)
80003244:	57612023          	sw	s6,1376(sp)
80003248:	55712e23          	sw	s7,1372(sp)
8000324c:	55812c23          	sw	s8,1368(sp)
80003250:	55912a23          	sw	s9,1364(sp)
80003254:	55a12823          	sw	s10,1360(sp)
80003258:	55b12623          	sw	s11,1356(sp)
8000325c:	58010413          	addi	s0,sp,1408
80003260:	0045ab83          	lw	s7,4(a1)
80003264:	0005ab03          	lw	s6,0(a1)
80003268:	017b6733          	or	a4,s6,s7
8000326c:	6e0702e3          	beqz	a4,80004150 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf2c>
80003270:	a8c42623          	sw	a2,-1396(s0)
80003274:	00c5aa83          	lw	s5,12(a1)
80003278:	0085a983          	lw	s3,8(a1)
8000327c:	0159e633          	or	a2,s3,s5
80003280:	6e0606e3          	beqz	a2,8000416c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf48>
80003284:	0145a903          	lw	s2,20(a1)
80003288:	0105a483          	lw	s1,16(a1)
8000328c:	0124e633          	or	a2,s1,s2
80003290:	6e060ce3          	beqz	a2,80004188 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf64>
80003294:	00068c93          	mv	s9,a3
80003298:	009b0633          	add	a2,s6,s1
8000329c:	016636b3          	sltu	a3,a2,s6
800032a0:	012b87b3          	add	a5,s7,s2
800032a4:	00d78733          	add	a4,a5,a3
800032a8:	01770463          	beq	a4,s7,800032b0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8c>
800032ac:	017736b3          	sltu	a3,a4,s7
800032b0:	74069ce3          	bnez	a3,80004208 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfe4>
800032b4:	015b8663          	beq	s7,s5,800032c0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9c>
800032b8:	015bb6b3          	sltu	a3,s7,s5
800032bc:	0080006f          	j	800032c4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa0>
800032c0:	013b36b3          	sltu	a3,s6,s3
800032c4:	760690e3          	bnez	a3,80004224 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x1000>
800032c8:	01000693          	li	a3,16
800032cc:	6d96fce3          	bgeu	a3,s9,800041a4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf80>
800032d0:	a8a42223          	sw	a0,-1404(s0)
800032d4:	01859a03          	lh	s4,24(a1)
800032d8:	016636b3          	sltu	a3,a2,s6
800032dc:	00d78533          	add	a0,a5,a3
800032e0:	00163693          	seqz	a3,a2
800032e4:	40d507b3          	sub	a5,a0,a3
800032e8:	55555537          	lui	a0,0x55555
800032ec:	55550713          	addi	a4,a0,1365 # 55555555 <.Lline_table_start2+0x555541a7>
800032f0:	33333537          	lui	a0,0x33333
800032f4:	33350693          	addi	a3,a0,819 # 33333333 <.Lline_table_start2+0x33331f85>
800032f8:	0f0f1537          	lui	a0,0xf0f1
800032fc:	f0f50513          	addi	a0,a0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80003300:	06079c63          	bnez	a5,80003378 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x154>
80003304:	fff60613          	addi	a2,a2,-1
80003308:	00165793          	srli	a5,a2,0x1
8000330c:	00f66633          	or	a2,a2,a5
80003310:	00265793          	srli	a5,a2,0x2
80003314:	00f66633          	or	a2,a2,a5
80003318:	00465793          	srli	a5,a2,0x4
8000331c:	00f66633          	or	a2,a2,a5
80003320:	00865793          	srli	a5,a2,0x8
80003324:	00f66633          	or	a2,a2,a5
80003328:	01065793          	srli	a5,a2,0x10
8000332c:	00f66633          	or	a2,a2,a5
80003330:	fff64613          	not	a2,a2
80003334:	00165793          	srli	a5,a2,0x1
80003338:	00e7f733          	and	a4,a5,a4
8000333c:	40e60633          	sub	a2,a2,a4
80003340:	00d67733          	and	a4,a2,a3
80003344:	00265613          	srli	a2,a2,0x2
80003348:	00d67633          	and	a2,a2,a3
8000334c:	00c70633          	add	a2,a4,a2
80003350:	00465693          	srli	a3,a2,0x4
80003354:	00d60633          	add	a2,a2,a3
80003358:	00a67533          	and	a0,a2,a0
8000335c:	00851613          	slli	a2,a0,0x8
80003360:	00c50533          	add	a0,a0,a2
80003364:	01051613          	slli	a2,a0,0x10
80003368:	00c50533          	add	a0,a0,a2
8000336c:	01855513          	srli	a0,a0,0x18
80003370:	02050613          	addi	a2,a0,32
80003374:	06c0006f          	j	800033e0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x1bc>
80003378:	0017d613          	srli	a2,a5,0x1
8000337c:	00c7e633          	or	a2,a5,a2
80003380:	00265793          	srli	a5,a2,0x2
80003384:	00f66633          	or	a2,a2,a5
80003388:	00465793          	srli	a5,a2,0x4
8000338c:	00f66633          	or	a2,a2,a5
80003390:	00865793          	srli	a5,a2,0x8
80003394:	00f66633          	or	a2,a2,a5
80003398:	01065793          	srli	a5,a2,0x10
8000339c:	00f66633          	or	a2,a2,a5
800033a0:	fff64613          	not	a2,a2
800033a4:	00165793          	srli	a5,a2,0x1
800033a8:	00e7f733          	and	a4,a5,a4
800033ac:	40e60633          	sub	a2,a2,a4
800033b0:	00d67733          	and	a4,a2,a3
800033b4:	00265613          	srli	a2,a2,0x2
800033b8:	00d67633          	and	a2,a2,a3
800033bc:	00c70633          	add	a2,a4,a2
800033c0:	00465693          	srli	a3,a2,0x4
800033c4:	00d60633          	add	a2,a2,a3
800033c8:	00a67533          	and	a0,a2,a0
800033cc:	00851613          	slli	a2,a0,0x8
800033d0:	00c50533          	add	a0,a0,a2
800033d4:	01051613          	slli	a2,a0,0x10
800033d8:	00c50533          	add	a0,a0,a2
800033dc:	01855613          	srli	a2,a0,0x18
800033e0:	01a58503          	lb	a0,26(a1)
800033e4:	a8a42e23          	sw	a0,-1380(s0)
800033e8:	41fa5593          	srai	a1,s4,0x1f
800033ec:	40ca0533          	sub	a0,s4,a2
800033f0:	00ca3633          	sltu	a2,s4,a2
800033f4:	40c585b3          	sub	a1,a1,a2
800033f8:	4d105637          	lui	a2,0x4d105
800033fc:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103994>
80003400:	00000693          	li	a3,0
80003404:	00007097          	auipc	ra,0x7
80003408:	bc0080e7          	jalr	-1088(ra) # 80009fc4 <__muldi3>
8000340c:	44135637          	lui	a2,0x44135
80003410:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133cd2>
80003414:	00c50633          	add	a2,a0,a2
80003418:	00a63533          	sltu	a0,a2,a0
8000341c:	00a58533          	add	a0,a1,a0
80003420:	01350c13          	addi	s8,a0,19
80003424:	010c1513          	slli	a0,s8,0x10
80003428:	41055513          	srai	a0,a0,0x10
8000342c:	a8a42423          	sw	a0,-1400(s0)
80003430:	001bb513          	seqz	a0,s7
80003434:	fff50593          	addi	a1,a0,-1
80003438:	0175f5b3          	and	a1,a1,s7
8000343c:	00200b93          	li	s7,2
80003440:	40ab8533          	sub	a0,s7,a0
80003444:	b4a42423          	sw	a0,-1208(s0)
80003448:	ab642423          	sw	s6,-1368(s0)
8000344c:	aab42623          	sw	a1,-1364(s0)
80003450:	ab040513          	addi	a0,s0,-1360
80003454:	09800613          	li	a2,152
80003458:	00000593          	li	a1,0
8000345c:	00008097          	auipc	ra,0x8
80003460:	a7c080e7          	jalr	-1412(ra) # 8000aed8 <memset>
80003464:	001ab513          	seqz	a0,s5
80003468:	fff50593          	addi	a1,a0,-1
8000346c:	0155f5b3          	and	a1,a1,s5
80003470:	40ab8533          	sub	a0,s7,a0
80003474:	bea42623          	sw	a0,-1044(s0)
80003478:	b5342623          	sw	s3,-1204(s0)
8000347c:	b4b42823          	sw	a1,-1200(s0)
80003480:	b5440513          	addi	a0,s0,-1196
80003484:	09800613          	li	a2,152
80003488:	00000593          	li	a1,0
8000348c:	00008097          	auipc	ra,0x8
80003490:	a4c080e7          	jalr	-1460(ra) # 8000aed8 <memset>
80003494:	00193513          	seqz	a0,s2
80003498:	fff50593          	addi	a1,a0,-1
8000349c:	0125f5b3          	and	a1,a1,s2
800034a0:	40ab8533          	sub	a0,s7,a0
800034a4:	c8a42823          	sw	a0,-880(s0)
800034a8:	be942823          	sw	s1,-1040(s0)
800034ac:	beb42a23          	sw	a1,-1036(s0)
800034b0:	bf840513          	addi	a0,s0,-1032
800034b4:	09800613          	li	a2,152
800034b8:	00000593          	li	a1,0
800034bc:	00008097          	auipc	ra,0x8
800034c0:	a1c080e7          	jalr	-1508(ra) # 8000aed8 <memset>
800034c4:	c9840513          	addi	a0,s0,-872
800034c8:	09c00613          	li	a2,156
800034cc:	00000593          	li	a1,0
800034d0:	00008097          	auipc	ra,0x8
800034d4:	a08080e7          	jalr	-1528(ra) # 8000aed8 <memset>
800034d8:	00100513          	li	a0,1
800034dc:	d2a42a23          	sw	a0,-716(s0)
800034e0:	c8a42a23          	sw	a0,-876(s0)
800034e4:	040a4663          	bltz	s4,80003530 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x30c>
800034e8:	aa840513          	addi	a0,s0,-1368
800034ec:	000a0593          	mv	a1,s4
800034f0:	00006097          	auipc	ra,0x6
800034f4:	c5c080e7          	jalr	-932(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800034f8:	b4c40513          	addi	a0,s0,-1204
800034fc:	000a0593          	mv	a1,s4
80003500:	00006097          	auipc	ra,0x6
80003504:	c4c080e7          	jalr	-948(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003508:	bf040513          	addi	a0,s0,-1040
8000350c:	000a0593          	mv	a1,s4
80003510:	00006097          	auipc	ra,0x6
80003514:	c3c080e7          	jalr	-964(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003518:	a8842503          	lw	a0,-1400(s0)
8000351c:	02054a63          	bltz	a0,80003550 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x32c>
80003520:	011c1593          	slli	a1,s8,0x11
80003524:	0115d593          	srli	a1,a1,0x11
80003528:	c9440513          	addi	a0,s0,-876
8000352c:	0580006f          	j	80003584 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x360>
80003530:	41400533          	neg	a0,s4
80003534:	01051513          	slli	a0,a0,0x10
80003538:	41055593          	srai	a1,a0,0x10
8000353c:	c9440513          	addi	a0,s0,-876
80003540:	00006097          	auipc	ra,0x6
80003544:	c0c080e7          	jalr	-1012(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003548:	a8842503          	lw	a0,-1400(s0)
8000354c:	fc055ae3          	bgez	a0,80003520 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x2fc>
80003550:	40a00533          	neg	a0,a0
80003554:	01051513          	slli	a0,a0,0x10
80003558:	01055a13          	srli	s4,a0,0x10
8000355c:	aa840513          	addi	a0,s0,-1368
80003560:	000a0593          	mv	a1,s4
80003564:	fffff097          	auipc	ra,0xfffff
80003568:	e18080e7          	jalr	-488(ra) # 8000237c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
8000356c:	b4c40513          	addi	a0,s0,-1204
80003570:	000a0593          	mv	a1,s4
80003574:	fffff097          	auipc	ra,0xfffff
80003578:	e08080e7          	jalr	-504(ra) # 8000237c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
8000357c:	bf040513          	addi	a0,s0,-1040
80003580:	000a0593          	mv	a1,s4
80003584:	fffff097          	auipc	ra,0xfffff
80003588:	df8080e7          	jalr	-520(ra) # 8000237c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
8000358c:	b4842983          	lw	s3,-1208(s0)
80003590:	f2440513          	addi	a0,s0,-220
80003594:	aa840593          	addi	a1,s0,-1368
80003598:	0a000613          	li	a2,160
8000359c:	00007097          	auipc	ra,0x7
800035a0:	ab0080e7          	jalr	-1360(ra) # 8000a04c <memcpy>
800035a4:	c9042483          	lw	s1,-880(s0)
800035a8:	fd342223          	sw	s3,-60(s0)
800035ac:	00098513          	mv	a0,s3
800035b0:	0134e463          	bltu	s1,s3,800035b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x394>
800035b4:	00048513          	mv	a0,s1
800035b8:	02800593          	li	a1,40
800035bc:	32a5eae3          	bltu	a1,a0,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
800035c0:	06050663          	beqz	a0,8000362c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x408>
800035c4:	00000613          	li	a2,0
800035c8:	bf040593          	addi	a1,s0,-1040
800035cc:	f2440693          	addi	a3,s0,-220
800035d0:	00050713          	mv	a4,a0
800035d4:	0006a783          	lw	a5,0(a3)
800035d8:	0005a803          	lw	a6,0(a1)
800035dc:	01078833          	add	a6,a5,a6
800035e0:	00f837b3          	sltu	a5,a6,a5
800035e4:	00167613          	andi	a2,a2,1
800035e8:	00c808b3          	add	a7,a6,a2
800035ec:	0108b633          	sltu	a2,a7,a6
800035f0:	00c7e633          	or	a2,a5,a2
800035f4:	0116a023          	sw	a7,0(a3)
800035f8:	00458593          	addi	a1,a1,4
800035fc:	fff70713          	addi	a4,a4,-1
80003600:	00468693          	addi	a3,a3,4
80003604:	fc0718e3          	bnez	a4,800035d4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x3b0>
80003608:	02060263          	beqz	a2,8000362c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x408>
8000360c:	02800593          	li	a1,40
80003610:	3cb504e3          	beq	a0,a1,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003614:	00251593          	slli	a1,a0,0x2
80003618:	f2440613          	addi	a2,s0,-220
8000361c:	00b605b3          	add	a1,a2,a1
80003620:	00100613          	li	a2,1
80003624:	00c5a023          	sw	a2,0(a1)
80003628:	00150513          	addi	a0,a0,1
8000362c:	d3442903          	lw	s2,-716(s0)
80003630:	fca42223          	sw	a0,-60(s0)
80003634:	00090693          	mv	a3,s2
80003638:	01256463          	bltu	a0,s2,80003640 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x41c>
8000363c:	00050693          	mv	a3,a0
80003640:	02900513          	li	a0,41
80003644:	2ca6f0e3          	bgeu	a3,a0,80004104 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
80003648:	00269693          	slli	a3,a3,0x2
8000364c:	40d00533          	neg	a0,a3
80003650:	ffc68613          	addi	a2,a3,-4
80003654:	f2440593          	addi	a1,s0,-220
80003658:	00c585b3          	add	a1,a1,a2
8000365c:	c9440693          	addi	a3,s0,-876
80003660:	00c68633          	add	a2,a3,a2
80003664:	04050463          	beqz	a0,800036ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x488>
80003668:	00062683          	lw	a3,0(a2)
8000366c:	0005a703          	lw	a4,0(a1)
80003670:	00e6b7b3          	sltu	a5,a3,a4
80003674:	00d746b3          	xor	a3,a4,a3
80003678:	00d036b3          	snez	a3,a3
8000367c:	40f00733          	neg	a4,a5
80003680:	00d766b3          	or	a3,a4,a3
80003684:	00450513          	addi	a0,a0,4
80003688:	ffc58593          	addi	a1,a1,-4
8000368c:	ffc60613          	addi	a2,a2,-4
80003690:	fc068ae3          	beqz	a3,80003664 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x440>
80003694:	a9c42503          	lw	a0,-1380(s0)
80003698:	02a6d263          	bge	a3,a0,800036bc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x498>
8000369c:	a8842503          	lw	a0,-1400(s0)
800036a0:	00150513          	addi	a0,a0,1
800036a4:	a8a42423          	sw	a0,-1400(s0)
800036a8:	14c0006f          	j	800037f4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5d0>
800036ac:	00153693          	seqz	a3,a0
800036b0:	fff68693          	addi	a3,a3,-1
800036b4:	a9c42503          	lw	a0,-1380(s0)
800036b8:	fea6c2e3          	blt	a3,a0,8000369c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x478>
800036bc:	06098063          	beqz	s3,8000371c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4f8>
800036c0:	00000a13          	li	s4,0
800036c4:	00299b13          	slli	s6,s3,0x2
800036c8:	aa840b93          	addi	s7,s0,-1368
800036cc:	016b8ab3          	add	s5,s7,s6
800036d0:	000ba503          	lw	a0,0(s7)
800036d4:	004b8c13          	addi	s8,s7,4
800036d8:	00a00613          	li	a2,10
800036dc:	00000593          	li	a1,0
800036e0:	00000693          	li	a3,0
800036e4:	00007097          	auipc	ra,0x7
800036e8:	8e0080e7          	jalr	-1824(ra) # 80009fc4 <__muldi3>
800036ec:	01450633          	add	a2,a0,s4
800036f0:	00a63a33          	sltu	s4,a2,a0
800036f4:	01458a33          	add	s4,a1,s4
800036f8:	ffcb0b13          	addi	s6,s6,-4
800036fc:	00cba023          	sw	a2,0(s7)
80003700:	000c0b93          	mv	s7,s8
80003704:	fc0b16e3          	bnez	s6,800036d0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4ac>
80003708:	000a0a63          	beqz	s4,8000371c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x4f8>
8000370c:	02800513          	li	a0,40
80003710:	2ca984e3          	beq	s3,a0,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003714:	014aa023          	sw	s4,0(s5)
80003718:	00198993          	addi	s3,s3,1
8000371c:	bec42a03          	lw	s4,-1044(s0)
80003720:	02900513          	li	a0,41
80003724:	b5342423          	sw	s3,-1208(s0)
80003728:	28aa7ce3          	bgeu	s4,a0,800041c0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf9c>
8000372c:	060a0063          	beqz	s4,8000378c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x568>
80003730:	00000993          	li	s3,0
80003734:	002a1b13          	slli	s6,s4,0x2
80003738:	b4c40b93          	addi	s7,s0,-1204
8000373c:	016b8ab3          	add	s5,s7,s6
80003740:	000ba503          	lw	a0,0(s7)
80003744:	004b8c13          	addi	s8,s7,4
80003748:	00a00613          	li	a2,10
8000374c:	00000593          	li	a1,0
80003750:	00000693          	li	a3,0
80003754:	00007097          	auipc	ra,0x7
80003758:	870080e7          	jalr	-1936(ra) # 80009fc4 <__muldi3>
8000375c:	01350633          	add	a2,a0,s3
80003760:	00a639b3          	sltu	s3,a2,a0
80003764:	013589b3          	add	s3,a1,s3
80003768:	ffcb0b13          	addi	s6,s6,-4
8000376c:	00cba023          	sw	a2,0(s7)
80003770:	000c0b93          	mv	s7,s8
80003774:	fc0b16e3          	bnez	s6,80003740 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x51c>
80003778:	00098a63          	beqz	s3,8000378c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x568>
8000377c:	02800513          	li	a0,40
80003780:	24aa0ce3          	beq	s4,a0,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003784:	013aa023          	sw	s3,0(s5)
80003788:	001a0a13          	addi	s4,s4,1
8000378c:	bf442623          	sw	s4,-1044(s0)
80003790:	06048063          	beqz	s1,800037f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5cc>
80003794:	00000993          	li	s3,0
80003798:	00249a93          	slli	s5,s1,0x2
8000379c:	bf040b13          	addi	s6,s0,-1040
800037a0:	015b0a33          	add	s4,s6,s5
800037a4:	000b2503          	lw	a0,0(s6)
800037a8:	004b0b93          	addi	s7,s6,4
800037ac:	00a00613          	li	a2,10
800037b0:	00000593          	li	a1,0
800037b4:	00000693          	li	a3,0
800037b8:	00007097          	auipc	ra,0x7
800037bc:	80c080e7          	jalr	-2036(ra) # 80009fc4 <__muldi3>
800037c0:	01350633          	add	a2,a0,s3
800037c4:	00a639b3          	sltu	s3,a2,a0
800037c8:	013589b3          	add	s3,a1,s3
800037cc:	ffca8a93          	addi	s5,s5,-4
800037d0:	00cb2023          	sw	a2,0(s6)
800037d4:	000b8b13          	mv	s6,s7
800037d8:	fc0a96e3          	bnez	s5,800037a4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x580>
800037dc:	00098a63          	beqz	s3,800037f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x5cc>
800037e0:	02800513          	li	a0,40
800037e4:	1ea48ae3          	beq	s1,a0,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
800037e8:	013a2023          	sw	s3,0(s4)
800037ec:	00148493          	addi	s1,s1,1
800037f0:	c8942823          	sw	s1,-880(s0)
800037f4:	d3840513          	addi	a0,s0,-712
800037f8:	c9440593          	addi	a1,s0,-876
800037fc:	0a000613          	li	a2,160
80003800:	00007097          	auipc	ra,0x7
80003804:	84c080e7          	jalr	-1972(ra) # 8000a04c <memcpy>
80003808:	dd242c23          	sw	s2,-552(s0)
8000380c:	d3840513          	addi	a0,s0,-712
80003810:	00100593          	li	a1,1
80003814:	00006097          	auipc	ra,0x6
80003818:	938080e7          	jalr	-1736(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
8000381c:	d3442483          	lw	s1,-716(s0)
80003820:	ddc40513          	addi	a0,s0,-548
80003824:	c9440593          	addi	a1,s0,-876
80003828:	0a000613          	li	a2,160
8000382c:	00007097          	auipc	ra,0x7
80003830:	820080e7          	jalr	-2016(ra) # 8000a04c <memcpy>
80003834:	e6942e23          	sw	s1,-388(s0)
80003838:	ddc40513          	addi	a0,s0,-548
8000383c:	00200593          	li	a1,2
80003840:	00006097          	auipc	ra,0x6
80003844:	90c080e7          	jalr	-1780(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003848:	d3442483          	lw	s1,-716(s0)
8000384c:	e8040513          	addi	a0,s0,-384
80003850:	c9440593          	addi	a1,s0,-876
80003854:	0a000613          	li	a2,160
80003858:	00006097          	auipc	ra,0x6
8000385c:	7f4080e7          	jalr	2036(ra) # 8000a04c <memcpy>
80003860:	f2942023          	sw	s1,-224(s0)
80003864:	e8040513          	addi	a0,s0,-384
80003868:	00300593          	li	a1,3
8000386c:	00006097          	auipc	ra,0x6
80003870:	8e0080e7          	jalr	-1824(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003874:	f2042583          	lw	a1,-224(s0)
80003878:	b4842a83          	lw	s5,-1208(s0)
8000387c:	000a8513          	mv	a0,s5
80003880:	a8b42823          	sw	a1,-1392(s0)
80003884:	0155e463          	bltu	a1,s5,8000388c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x668>
80003888:	a9042503          	lw	a0,-1392(s0)
8000388c:	02800593          	li	a1,40
80003890:	a9c42483          	lw	s1,-1380(s0)
80003894:	04a5eee3          	bltu	a1,a0,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003898:	00000b13          	li	s6,0
8000389c:	e7c42583          	lw	a1,-388(s0)
800038a0:	a8b42c23          	sw	a1,-1384(s0)
800038a4:	dd842583          	lw	a1,-552(s0)
800038a8:	a8b42a23          	sw	a1,-1388(s0)
800038ac:	d3442583          	lw	a1,-716(s0)
800038b0:	aab42223          	sw	a1,-1372(s0)
800038b4:	aa440913          	addi	s2,s0,-1372
800038b8:	00100393          	li	t2,1
800038bc:	02900e13          	li	t3,41
800038c0:	01c0006f          	j	800038dc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6b8>
800038c4:	000c0c93          	mv	s9,s8
800038c8:	02800593          	li	a1,40
800038cc:	00100393          	li	t2,1
800038d0:	02900e13          	li	t3,41
800038d4:	aa042b03          	lw	s6,-1376(s0)
800038d8:	00a5ece3          	bltu	a1,a0,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
800038dc:	00251693          	slli	a3,a0,0x2
800038e0:	40d005b3          	neg	a1,a3
800038e4:	e7c40613          	addi	a2,s0,-388
800038e8:	00d60633          	add	a2,a2,a3
800038ec:	00d906b3          	add	a3,s2,a3
800038f0:	08058e63          	beqz	a1,8000398c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x768>
800038f4:	0006a703          	lw	a4,0(a3)
800038f8:	00062783          	lw	a5,0(a2)
800038fc:	00f73833          	sltu	a6,a4,a5
80003900:	00e7c733          	xor	a4,a5,a4
80003904:	00e03733          	snez	a4,a4
80003908:	410007b3          	neg	a5,a6
8000390c:	00e7e733          	or	a4,a5,a4
80003910:	00458593          	addi	a1,a1,4
80003914:	ffc60613          	addi	a2,a2,-4
80003918:	ffc68693          	addi	a3,a3,-4
8000391c:	fc070ae3          	beqz	a4,800038f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6cc>
80003920:	06e3ec63          	bltu	t2,a4,80003998 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x774>
80003924:	04050863          	beqz	a0,80003974 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x750>
80003928:	00100613          	li	a2,1
8000392c:	e8040593          	addi	a1,s0,-384
80003930:	aa840693          	addi	a3,s0,-1368
80003934:	00050713          	mv	a4,a0
80003938:	0005a783          	lw	a5,0(a1)
8000393c:	0006a803          	lw	a6,0(a3)
80003940:	fff7c793          	not	a5,a5
80003944:	00f807b3          	add	a5,a6,a5
80003948:	0107b833          	sltu	a6,a5,a6
8000394c:	00167613          	andi	a2,a2,1
80003950:	00c788b3          	add	a7,a5,a2
80003954:	00f8b633          	sltu	a2,a7,a5
80003958:	00c86633          	or	a2,a6,a2
8000395c:	0116a023          	sw	a7,0(a3)
80003960:	00458593          	addi	a1,a1,4
80003964:	fff70713          	addi	a4,a4,-1
80003968:	00468693          	addi	a3,a3,4
8000396c:	fc0716e3          	bnez	a4,80003938 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x714>
80003970:	7a060663          	beqz	a2,8000411c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003974:	b4a42423          	sw	a0,-1208(s0)
80003978:	00800593          	li	a1,8
8000397c:	00050693          	mv	a3,a0
80003980:	a9842603          	lw	a2,-1384(s0)
80003984:	02a67463          	bgeu	a2,a0,800039ac <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x788>
80003988:	0280006f          	j	800039b0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x78c>
8000398c:	0015b713          	seqz	a4,a1
80003990:	fff70713          	addi	a4,a4,-1
80003994:	f8e3f8e3          	bgeu	t2,a4,80003924 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x700>
80003998:	00000593          	li	a1,0
8000399c:	000a8513          	mv	a0,s5
800039a0:	00050693          	mv	a3,a0
800039a4:	a9842603          	lw	a2,-1384(s0)
800039a8:	01566463          	bltu	a2,s5,800039b0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x78c>
800039ac:	a9842683          	lw	a3,-1384(s0)
800039b0:	75c6fa63          	bgeu	a3,t3,80004104 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
800039b4:	00269793          	slli	a5,a3,0x2
800039b8:	40f00633          	neg	a2,a5
800039bc:	dd840713          	addi	a4,s0,-552
800039c0:	00f70733          	add	a4,a4,a5
800039c4:	00f907b3          	add	a5,s2,a5
800039c8:	08060e63          	beqz	a2,80003a64 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x840>
800039cc:	0007a803          	lw	a6,0(a5) # 1000 <.Lline_table_start2+0x14>
800039d0:	00072883          	lw	a7,0(a4)
800039d4:	011832b3          	sltu	t0,a6,a7
800039d8:	0108c833          	xor	a6,a7,a6
800039dc:	01003833          	snez	a6,a6
800039e0:	405008b3          	neg	a7,t0
800039e4:	0108e833          	or	a6,a7,a6
800039e8:	00460613          	addi	a2,a2,4
800039ec:	ffc70713          	addi	a4,a4,-4
800039f0:	ffc78793          	addi	a5,a5,-4
800039f4:	fc080ae3          	beqz	a6,800039c8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7a4>
800039f8:	0703ec63          	bltu	t2,a6,80003a70 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x84c>
800039fc:	04068863          	beqz	a3,80003a4c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x828>
80003a00:	00100613          	li	a2,1
80003a04:	ddc40513          	addi	a0,s0,-548
80003a08:	aa840713          	addi	a4,s0,-1368
80003a0c:	00068793          	mv	a5,a3
80003a10:	00052803          	lw	a6,0(a0)
80003a14:	00072883          	lw	a7,0(a4)
80003a18:	fff84813          	not	a6,a6
80003a1c:	01088833          	add	a6,a7,a6
80003a20:	011838b3          	sltu	a7,a6,a7
80003a24:	00167613          	andi	a2,a2,1
80003a28:	00c802b3          	add	t0,a6,a2
80003a2c:	0102b633          	sltu	a2,t0,a6
80003a30:	00c8e633          	or	a2,a7,a2
80003a34:	00572023          	sw	t0,0(a4)
80003a38:	00450513          	addi	a0,a0,4
80003a3c:	fff78793          	addi	a5,a5,-1
80003a40:	00470713          	addi	a4,a4,4
80003a44:	fc0796e3          	bnez	a5,80003a10 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7ec>
80003a48:	6c060a63          	beqz	a2,8000411c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003a4c:	b4d42423          	sw	a3,-1208(s0)
80003a50:	0045e593          	ori	a1,a1,4
80003a54:	00068513          	mv	a0,a3
80003a58:	a9442603          	lw	a2,-1388(s0)
80003a5c:	02d67063          	bgeu	a2,a3,80003a7c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x858>
80003a60:	0200006f          	j	80003a80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x85c>
80003a64:	00163813          	seqz	a6,a2
80003a68:	fff80813          	addi	a6,a6,-1
80003a6c:	f903f8e3          	bgeu	t2,a6,800039fc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x7d8>
80003a70:	00050693          	mv	a3,a0
80003a74:	a9442603          	lw	a2,-1388(s0)
80003a78:	00a66463          	bltu	a2,a0,80003a80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x85c>
80003a7c:	a9442503          	lw	a0,-1388(s0)
80003a80:	67c57863          	bgeu	a0,t3,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003a84:	00251793          	slli	a5,a0,0x2
80003a88:	40f00633          	neg	a2,a5
80003a8c:	d3440713          	addi	a4,s0,-716
80003a90:	00f70733          	add	a4,a4,a5
80003a94:	00f907b3          	add	a5,s2,a5
80003a98:	08060e63          	beqz	a2,80003b34 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x910>
80003a9c:	0007a803          	lw	a6,0(a5)
80003aa0:	00072883          	lw	a7,0(a4)
80003aa4:	011832b3          	sltu	t0,a6,a7
80003aa8:	0108c833          	xor	a6,a7,a6
80003aac:	01003833          	snez	a6,a6
80003ab0:	405008b3          	neg	a7,t0
80003ab4:	0108e833          	or	a6,a7,a6
80003ab8:	00460613          	addi	a2,a2,4
80003abc:	ffc70713          	addi	a4,a4,-4
80003ac0:	ffc78793          	addi	a5,a5,-4
80003ac4:	fc080ae3          	beqz	a6,80003a98 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x874>
80003ac8:	0703ec63          	bltu	t2,a6,80003b40 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x91c>
80003acc:	04050863          	beqz	a0,80003b1c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8f8>
80003ad0:	00100693          	li	a3,1
80003ad4:	d3840613          	addi	a2,s0,-712
80003ad8:	aa840713          	addi	a4,s0,-1368
80003adc:	00050793          	mv	a5,a0
80003ae0:	00062803          	lw	a6,0(a2)
80003ae4:	00072883          	lw	a7,0(a4)
80003ae8:	fff84813          	not	a6,a6
80003aec:	01088833          	add	a6,a7,a6
80003af0:	011838b3          	sltu	a7,a6,a7
80003af4:	0016f693          	andi	a3,a3,1
80003af8:	00d802b3          	add	t0,a6,a3
80003afc:	0102b6b3          	sltu	a3,t0,a6
80003b00:	00d8e6b3          	or	a3,a7,a3
80003b04:	00572023          	sw	t0,0(a4)
80003b08:	00460613          	addi	a2,a2,4
80003b0c:	fff78793          	addi	a5,a5,-1
80003b10:	00470713          	addi	a4,a4,4
80003b14:	fc0796e3          	bnez	a5,80003ae0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8bc>
80003b18:	60068263          	beqz	a3,8000411c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003b1c:	b4a42423          	sw	a0,-1208(s0)
80003b20:	00258593          	addi	a1,a1,2
80003b24:	00050a93          	mv	s5,a0
80003b28:	aa442603          	lw	a2,-1372(s0)
80003b2c:	02a67263          	bgeu	a2,a0,80003b50 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x92c>
80003b30:	0240006f          	j	80003b54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x930>
80003b34:	00163813          	seqz	a6,a2
80003b38:	fff80813          	addi	a6,a6,-1
80003b3c:	f903f8e3          	bgeu	t2,a6,80003acc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x8a8>
80003b40:	00068513          	mv	a0,a3
80003b44:	00050a93          	mv	s5,a0
80003b48:	aa442603          	lw	a2,-1372(s0)
80003b4c:	00d66463          	bltu	a2,a3,80003b54 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x930>
80003b50:	aa442a83          	lw	s5,-1372(s0)
80003b54:	5fcaf263          	bgeu	s5,t3,80004138 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xf14>
80003b58:	002a9713          	slli	a4,s5,0x2
80003b5c:	40e00633          	neg	a2,a4
80003b60:	c9040693          	addi	a3,s0,-880
80003b64:	00e686b3          	add	a3,a3,a4
80003b68:	00e90733          	add	a4,s2,a4
80003b6c:	08060863          	beqz	a2,80003bfc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9d8>
80003b70:	00072783          	lw	a5,0(a4)
80003b74:	0006a803          	lw	a6,0(a3)
80003b78:	0107b8b3          	sltu	a7,a5,a6
80003b7c:	00f847b3          	xor	a5,a6,a5
80003b80:	00f037b3          	snez	a5,a5
80003b84:	41100833          	neg	a6,a7
80003b88:	00f867b3          	or	a5,a6,a5
80003b8c:	00460613          	addi	a2,a2,4
80003b90:	ffc68693          	addi	a3,a3,-4
80003b94:	ffc70713          	addi	a4,a4,-4
80003b98:	fc078ae3          	beqz	a5,80003b6c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x948>
80003b9c:	06f3e663          	bltu	t2,a5,80003c08 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9e4>
80003ba0:	040a8863          	beqz	s5,80003bf0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9cc>
80003ba4:	00100613          	li	a2,1
80003ba8:	c9440513          	addi	a0,s0,-876
80003bac:	aa840693          	addi	a3,s0,-1368
80003bb0:	000a8713          	mv	a4,s5
80003bb4:	00052783          	lw	a5,0(a0)
80003bb8:	0006a803          	lw	a6,0(a3)
80003bbc:	fff7c793          	not	a5,a5
80003bc0:	00f807b3          	add	a5,a6,a5
80003bc4:	0107b833          	sltu	a6,a5,a6
80003bc8:	00167613          	andi	a2,a2,1
80003bcc:	00c788b3          	add	a7,a5,a2
80003bd0:	00f8b633          	sltu	a2,a7,a5
80003bd4:	00c86633          	or	a2,a6,a2
80003bd8:	0116a023          	sw	a7,0(a3)
80003bdc:	00450513          	addi	a0,a0,4
80003be0:	fff70713          	addi	a4,a4,-1
80003be4:	00468693          	addi	a3,a3,4
80003be8:	fc0716e3          	bnez	a4,80003bb4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x990>
80003bec:	52060863          	beqz	a2,8000411c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xef8>
80003bf0:	b5542423          	sw	s5,-1208(s0)
80003bf4:	00158593          	addi	a1,a1,1
80003bf8:	0140006f          	j	80003c0c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x9e8>
80003bfc:	00163793          	seqz	a5,a2
80003c00:	fff78793          	addi	a5,a5,-1
80003c04:	f8f3fee3          	bgeu	t2,a5,80003ba0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x97c>
80003c08:	00050a93          	mv	s5,a0
80003c0c:	5f9b0263          	beq	s6,s9,800041f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfcc>
80003c10:	bec42d83          	lw	s11,-1044(s0)
80003c14:	03058513          	addi	a0,a1,48
80003c18:	a8c42a03          	lw	s4,-1396(s0)
80003c1c:	016a0a33          	add	s4,s4,s6
80003c20:	00aa0023          	sb	a0,0(s4)
80003c24:	000a8513          	mv	a0,s5
80003c28:	015de463          	bltu	s11,s5,80003c30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa0c>
80003c2c:	000d8513          	mv	a0,s11
80003c30:	4dc57063          	bgeu	a0,t3,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003c34:	001b0813          	addi	a6,s6,1
80003c38:	00251613          	slli	a2,a0,0x2
80003c3c:	40c00533          	neg	a0,a2
80003c40:	b4840593          	addi	a1,s0,-1208
80003c44:	00c585b3          	add	a1,a1,a2
80003c48:	00c90633          	add	a2,s2,a2
80003c4c:	02050a63          	beqz	a0,80003c80 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa5c>
80003c50:	00062683          	lw	a3,0(a2)
80003c54:	0005a703          	lw	a4,0(a1)
80003c58:	00e6b7b3          	sltu	a5,a3,a4
80003c5c:	00d746b3          	xor	a3,a4,a3
80003c60:	00d036b3          	snez	a3,a3
80003c64:	40f00733          	neg	a4,a5
80003c68:	00d76d33          	or	s10,a4,a3
80003c6c:	00450513          	addi	a0,a0,4
80003c70:	ffc58593          	addi	a1,a1,-4
80003c74:	ffc60613          	addi	a2,a2,-4
80003c78:	fc0d0ae3          	beqz	s10,80003c4c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa28>
80003c7c:	00c0006f          	j	80003c88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa64>
80003c80:	00153d13          	seqz	s10,a0
80003c84:	fffd0d13          	addi	s10,s10,-1
80003c88:	ab042023          	sw	a6,-1376(s0)
80003c8c:	02900b93          	li	s7,41
80003c90:	00100993          	li	s3,1
80003c94:	000c8c13          	mv	s8,s9
80003c98:	f2440513          	addi	a0,s0,-220
80003c9c:	aa840593          	addi	a1,s0,-1368
80003ca0:	0a000613          	li	a2,160
80003ca4:	00006097          	auipc	ra,0x6
80003ca8:	3a8080e7          	jalr	936(ra) # 8000a04c <memcpy>
80003cac:	c9042c83          	lw	s9,-880(s0)
80003cb0:	fd542223          	sw	s5,-60(s0)
80003cb4:	000a8513          	mv	a0,s5
80003cb8:	015ce463          	bltu	s9,s5,80003cc0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xa9c>
80003cbc:	000c8513          	mv	a0,s9
80003cc0:	02800593          	li	a1,40
80003cc4:	42a5e663          	bltu	a1,a0,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003cc8:	06050463          	beqz	a0,80003d30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb0c>
80003ccc:	00000613          	li	a2,0
80003cd0:	bf040593          	addi	a1,s0,-1040
80003cd4:	f2440693          	addi	a3,s0,-220
80003cd8:	00050713          	mv	a4,a0
80003cdc:	0006a783          	lw	a5,0(a3)
80003ce0:	0005a803          	lw	a6,0(a1)
80003ce4:	01078833          	add	a6,a5,a6
80003ce8:	00f837b3          	sltu	a5,a6,a5
80003cec:	00167613          	andi	a2,a2,1
80003cf0:	00c808b3          	add	a7,a6,a2
80003cf4:	0108b633          	sltu	a2,a7,a6
80003cf8:	00c7e633          	or	a2,a5,a2
80003cfc:	0116a023          	sw	a7,0(a3)
80003d00:	00458593          	addi	a1,a1,4
80003d04:	fff70713          	addi	a4,a4,-1
80003d08:	00468693          	addi	a3,a3,4
80003d0c:	fc0718e3          	bnez	a4,80003cdc <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xab8>
80003d10:	02060063          	beqz	a2,80003d30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb0c>
80003d14:	02800593          	li	a1,40
80003d18:	4cb50063          	beq	a0,a1,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003d1c:	00251593          	slli	a1,a0,0x2
80003d20:	f2440613          	addi	a2,s0,-220
80003d24:	00b605b3          	add	a1,a2,a1
80003d28:	0135a023          	sw	s3,0(a1)
80003d2c:	00150513          	addi	a0,a0,1
80003d30:	fca42223          	sw	a0,-60(s0)
80003d34:	aa442583          	lw	a1,-1372(s0)
80003d38:	00058693          	mv	a3,a1
80003d3c:	00b56463          	bltu	a0,a1,80003d44 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb20>
80003d40:	00050693          	mv	a3,a0
80003d44:	3d76f063          	bgeu	a3,s7,80004104 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xee0>
80003d48:	00269613          	slli	a2,a3,0x2
80003d4c:	40c00533          	neg	a0,a2
80003d50:	f2040593          	addi	a1,s0,-224
80003d54:	00c585b3          	add	a1,a1,a2
80003d58:	c9040693          	addi	a3,s0,-880
80003d5c:	00c68633          	add	a2,a3,a2
80003d60:	02050c63          	beqz	a0,80003d98 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb74>
80003d64:	00062683          	lw	a3,0(a2)
80003d68:	0005a703          	lw	a4,0(a1)
80003d6c:	00e6b7b3          	sltu	a5,a3,a4
80003d70:	00d746b3          	xor	a3,a4,a3
80003d74:	00d036b3          	snez	a3,a3
80003d78:	40f00733          	neg	a4,a5
80003d7c:	00d766b3          	or	a3,a4,a3
80003d80:	00450513          	addi	a0,a0,4
80003d84:	ffc58593          	addi	a1,a1,-4
80003d88:	ffc60613          	addi	a2,a2,-4
80003d8c:	fc068ae3          	beqz	a3,80003d60 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb3c>
80003d90:	009d5a63          	bge	s10,s1,80003da4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb80>
80003d94:	19c0006f          	j	80003f30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003d98:	00153693          	seqz	a3,a0
80003d9c:	fff68693          	addi	a3,a3,-1
80003da0:	189d4863          	blt	s10,s1,80003f30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003da4:	1896c663          	blt	a3,s1,80003f30 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd0c>
80003da8:	060a8463          	beqz	s5,80003e10 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xbec>
80003dac:	00000b13          	li	s6,0
80003db0:	002a9d13          	slli	s10,s5,0x2
80003db4:	aa840a13          	addi	s4,s0,-1368
80003db8:	01aa0a33          	add	s4,s4,s10
80003dbc:	aa840493          	addi	s1,s0,-1368
80003dc0:	0004a503          	lw	a0,0(s1)
80003dc4:	00448993          	addi	s3,s1,4
80003dc8:	00a00613          	li	a2,10
80003dcc:	00000593          	li	a1,0
80003dd0:	00000693          	li	a3,0
80003dd4:	00006097          	auipc	ra,0x6
80003dd8:	1f0080e7          	jalr	496(ra) # 80009fc4 <__muldi3>
80003ddc:	01650633          	add	a2,a0,s6
80003de0:	00a63b33          	sltu	s6,a2,a0
80003de4:	01658b33          	add	s6,a1,s6
80003de8:	ffcd0d13          	addi	s10,s10,-4
80003dec:	00c4a023          	sw	a2,0(s1)
80003df0:	00098493          	mv	s1,s3
80003df4:	fc0d16e3          	bnez	s10,80003dc0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xb9c>
80003df8:	080b0863          	beqz	s6,80003e88 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc64>
80003dfc:	a9c42483          	lw	s1,-1380(s0)
80003e00:	02800513          	li	a0,40
80003e04:	3caa8a63          	beq	s5,a0,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003e08:	016a2023          	sw	s6,0(s4)
80003e0c:	001a8a93          	addi	s5,s5,1
80003e10:	b5542423          	sw	s5,-1208(s0)
80003e14:	080d8063          	beqz	s11,80003e94 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc70>
80003e18:	00000b13          	li	s6,0
80003e1c:	002d9d13          	slli	s10,s11,0x2
80003e20:	b4c40a13          	addi	s4,s0,-1204
80003e24:	01aa0a33          	add	s4,s4,s10
80003e28:	b4c40493          	addi	s1,s0,-1204
80003e2c:	0004a503          	lw	a0,0(s1)
80003e30:	00448993          	addi	s3,s1,4
80003e34:	00a00613          	li	a2,10
80003e38:	00000593          	li	a1,0
80003e3c:	00000693          	li	a3,0
80003e40:	00006097          	auipc	ra,0x6
80003e44:	184080e7          	jalr	388(ra) # 80009fc4 <__muldi3>
80003e48:	01650633          	add	a2,a0,s6
80003e4c:	00a63b33          	sltu	s6,a2,a0
80003e50:	01658b33          	add	s6,a1,s6
80003e54:	ffcd0d13          	addi	s10,s10,-4
80003e58:	00c4a023          	sw	a2,0(s1)
80003e5c:	00098493          	mv	s1,s3
80003e60:	fc0d16e3          	bnez	s10,80003e2c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc08>
80003e64:	0a0b0063          	beqz	s6,80003f04 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xce0>
80003e68:	a9c42483          	lw	s1,-1380(s0)
80003e6c:	02800513          	li	a0,40
80003e70:	36ad8463          	beq	s11,a0,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003e74:	016a2023          	sw	s6,0(s4)
80003e78:	001d8d93          	addi	s11,s11,1
80003e7c:	bfb42623          	sw	s11,-1044(s0)
80003e80:	000c9e63          	bnez	s9,80003e9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc78>
80003e84:	0940006f          	j	80003f18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003e88:	a9c42483          	lw	s1,-1380(s0)
80003e8c:	b5542423          	sw	s5,-1208(s0)
80003e90:	f80d94e3          	bnez	s11,80003e18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xbf4>
80003e94:	bfb42623          	sw	s11,-1044(s0)
80003e98:	080c8063          	beqz	s9,80003f18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003e9c:	00000b13          	li	s6,0
80003ea0:	002c9d13          	slli	s10,s9,0x2
80003ea4:	bf040a13          	addi	s4,s0,-1040
80003ea8:	01aa0a33          	add	s4,s4,s10
80003eac:	bf040493          	addi	s1,s0,-1040
80003eb0:	0004a503          	lw	a0,0(s1)
80003eb4:	00448993          	addi	s3,s1,4
80003eb8:	00a00613          	li	a2,10
80003ebc:	00000593          	li	a1,0
80003ec0:	00000693          	li	a3,0
80003ec4:	00006097          	auipc	ra,0x6
80003ec8:	100080e7          	jalr	256(ra) # 80009fc4 <__muldi3>
80003ecc:	01650633          	add	a2,a0,s6
80003ed0:	00a63b33          	sltu	s6,a2,a0
80003ed4:	01658b33          	add	s6,a1,s6
80003ed8:	ffcd0d13          	addi	s10,s10,-4
80003edc:	00c4a023          	sw	a2,0(s1)
80003ee0:	00098493          	mv	s1,s3
80003ee4:	fc0d16e3          	bnez	s10,80003eb0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc8c>
80003ee8:	020b0663          	beqz	s6,80003f14 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf0>
80003eec:	a9c42483          	lw	s1,-1380(s0)
80003ef0:	02800513          	li	a0,40
80003ef4:	2eac8263          	beq	s9,a0,800041d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xfb4>
80003ef8:	016a2023          	sw	s6,0(s4)
80003efc:	001c8c93          	addi	s9,s9,1
80003f00:	0180006f          	j	80003f18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003f04:	a9c42483          	lw	s1,-1380(s0)
80003f08:	bfb42623          	sw	s11,-1044(s0)
80003f0c:	f80c98e3          	bnez	s9,80003e9c <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xc78>
80003f10:	0080006f          	j	80003f18 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xcf4>
80003f14:	a9c42483          	lw	s1,-1380(s0)
80003f18:	c9942823          	sw	s9,-880(s0)
80003f1c:	000a8513          	mv	a0,s5
80003f20:	a9042583          	lw	a1,-1392(s0)
80003f24:	9b55e0e3          	bltu	a1,s5,800038c4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6a0>
80003f28:	a9042503          	lw	a0,-1392(s0)
80003f2c:	999ff06f          	j	800038c4 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x6a0>
80003f30:	0896d863          	bge	a3,s1,80003fc0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd9c>
80003f34:	a8c42a83          	lw	s5,-1396(s0)
80003f38:	aa042903          	lw	s2,-1376(s0)
80003f3c:	0a9d5663          	bge	s10,s1,80003fe8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdc4>
80003f40:	aa840513          	addi	a0,s0,-1368
80003f44:	00100593          	li	a1,1
80003f48:	00005097          	auipc	ra,0x5
80003f4c:	204080e7          	jalr	516(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80003f50:	b4842503          	lw	a0,-1208(s0)
80003f54:	d3442583          	lw	a1,-716(s0)
80003f58:	00a5e463          	bltu	a1,a0,80003f60 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd3c>
80003f5c:	00058513          	mv	a0,a1
80003f60:	02900593          	li	a1,41
80003f64:	18b57663          	bgeu	a0,a1,800040f0 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xecc>
80003f68:	00251593          	slli	a1,a0,0x2
80003f6c:	40b00533          	neg	a0,a1
80003f70:	ffc58613          	addi	a2,a1,-4
80003f74:	c9440593          	addi	a1,s0,-876
80003f78:	00c585b3          	add	a1,a1,a2
80003f7c:	aa840693          	addi	a3,s0,-1368
80003f80:	00c68633          	add	a2,a3,a2
80003f84:	04050a63          	beqz	a0,80003fd8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdb4>
80003f88:	00062683          	lw	a3,0(a2)
80003f8c:	0005a703          	lw	a4,0(a1)
80003f90:	00e6b7b3          	sltu	a5,a3,a4
80003f94:	00d746b3          	xor	a3,a4,a3
80003f98:	00d036b3          	snez	a3,a3
80003f9c:	40f00733          	neg	a4,a5
80003fa0:	00d766b3          	or	a3,a4,a3
80003fa4:	00450513          	addi	a0,a0,4
80003fa8:	ffc58593          	addi	a1,a1,-4
80003fac:	ffc60613          	addi	a2,a2,-4
80003fb0:	fc068ae3          	beqz	a3,80003f84 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xd60>
80003fb4:	00200513          	li	a0,2
80003fb8:	02a6e863          	bltu	a3,a0,80003fe8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdc4>
80003fbc:	0880006f          	j	80004044 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
80003fc0:	a8442583          	lw	a1,-1404(s0)
80003fc4:	a8c42a83          	lw	s5,-1396(s0)
80003fc8:	a8842503          	lw	a0,-1400(s0)
80003fcc:	aa042903          	lw	s2,-1376(s0)
80003fd0:	092c7063          	bgeu	s8,s2,80004050 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe2c>
80003fd4:	1040006f          	j	800040d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xeb4>
80003fd8:	00153693          	seqz	a3,a0
80003fdc:	fff68693          	addi	a3,a3,-1
80003fe0:	00200513          	li	a0,2
80003fe4:	06a6f063          	bgeu	a3,a0,80004044 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
80003fe8:	00000513          	li	a0,0
80003fec:	012a84b3          	add	s1,s5,s2
80003ff0:	fff00593          	li	a1,-1
80003ff4:	03900613          	li	a2,57
80003ff8:	00ab06b3          	add	a3,s6,a0
80003ffc:	08b68e63          	beq	a3,a1,80004098 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe74>
80004000:	00aa06b3          	add	a3,s4,a0
80004004:	0006c683          	lbu	a3,0(a3)
80004008:	fff50513          	addi	a0,a0,-1
8000400c:	fec686e3          	beq	a3,a2,80003ff8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xdd4>
80004010:	00ab05b3          	add	a1,s6,a0
80004014:	01558633          	add	a2,a1,s5
80004018:	00164683          	lbu	a3,1(a2)
8000401c:	00168693          	addi	a3,a3,1
80004020:	00258593          	addi	a1,a1,2
80004024:	00d600a3          	sb	a3,1(a2)
80004028:	00bb6e63          	bltu	s6,a1,80004044 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe20>
8000402c:	fff54613          	not	a2,a0
80004030:	00aa0533          	add	a0,s4,a0
80004034:	00250513          	addi	a0,a0,2
80004038:	03000593          	li	a1,48
8000403c:	00007097          	auipc	ra,0x7
80004040:	e9c080e7          	jalr	-356(ra) # 8000aed8 <memset>
80004044:	a8442583          	lw	a1,-1404(s0)
80004048:	a8842503          	lw	a0,-1400(s0)
8000404c:	092c6663          	bltu	s8,s2,800040d8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xeb4>
80004050:	0155a023          	sw	s5,0(a1)
80004054:	0125a223          	sw	s2,4(a1)
80004058:	00a59423          	sh	a0,8(a1)
8000405c:	57c12083          	lw	ra,1404(sp)
80004060:	57812403          	lw	s0,1400(sp)
80004064:	57412483          	lw	s1,1396(sp)
80004068:	57012903          	lw	s2,1392(sp)
8000406c:	56c12983          	lw	s3,1388(sp)
80004070:	56812a03          	lw	s4,1384(sp)
80004074:	56412a83          	lw	s5,1380(sp)
80004078:	56012b03          	lw	s6,1376(sp)
8000407c:	55c12b83          	lw	s7,1372(sp)
80004080:	55812c03          	lw	s8,1368(sp)
80004084:	55412c83          	lw	s9,1364(sp)
80004088:	55012d03          	lw	s10,1360(sp)
8000408c:	54c12d83          	lw	s11,1356(sp)
80004090:	58010113          	addi	sp,sp,1408
80004094:	00008067          	ret
80004098:	03100513          	li	a0,49
8000409c:	00aa8023          	sb	a0,0(s5)
800040a0:	000b0c63          	beqz	s6,800040b8 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe94>
800040a4:	001a8513          	addi	a0,s5,1
800040a8:	03000593          	li	a1,48
800040ac:	000b0613          	mv	a2,s6
800040b0:	00007097          	auipc	ra,0x7
800040b4:	e28080e7          	jalr	-472(ra) # 8000aed8 <memset>
800040b8:	a8442583          	lw	a1,-1404(s0)
800040bc:	19897263          	bgeu	s2,s8,80004240 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0x101c>
800040c0:	03000513          	li	a0,48
800040c4:	00a48023          	sb	a0,0(s1)
800040c8:	002b0913          	addi	s2,s6,2
800040cc:	a8842503          	lw	a0,-1400(s0)
800040d0:	00150513          	addi	a0,a0,1
800040d4:	f72c7ee3          	bgeu	s8,s2,80004050 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE+0xe2c>
800040d8:	8000d637          	lui	a2,0x8000d
800040dc:	94860613          	addi	a2,a2,-1720 # 8000c948 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.36>
800040e0:	00090513          	mv	a0,s2
800040e4:	000c0593          	mv	a1,s8
800040e8:	00005097          	auipc	ra,0x5
800040ec:	dc4080e7          	jalr	-572(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800040f0:	8000d637          	lui	a2,0x8000d
800040f4:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800040f8:	02800593          	li	a1,40
800040fc:	00005097          	auipc	ra,0x5
80004100:	db0080e7          	jalr	-592(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004104:	8000d637          	lui	a2,0x8000d
80004108:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000410c:	02800593          	li	a1,40
80004110:	00068513          	mv	a0,a3
80004114:	00005097          	auipc	ra,0x5
80004118:	d98080e7          	jalr	-616(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
8000411c:	8000d537          	lui	a0,0x8000d
80004120:	4f450513          	addi	a0,a0,1268 # 8000d4f4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>
80004124:	8000d637          	lui	a2,0x8000d
80004128:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000412c:	01a00593          	li	a1,26
80004130:	00003097          	auipc	ra,0x3
80004134:	ea8080e7          	jalr	-344(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004138:	8000d637          	lui	a2,0x8000d
8000413c:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004140:	02800593          	li	a1,40
80004144:	000a8513          	mv	a0,s5
80004148:	00005097          	auipc	ra,0x5
8000414c:	d64080e7          	jalr	-668(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004150:	8000d537          	lui	a0,0x8000d
80004154:	85f50513          	addi	a0,a0,-1953 # 8000c85f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80004158:	8000d637          	lui	a2,0x8000d
8000415c:	87c60613          	addi	a2,a2,-1924 # 8000c87c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.27>
80004160:	01c00593          	li	a1,28
80004164:	00003097          	auipc	ra,0x3
80004168:	e74080e7          	jalr	-396(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000416c:	8000d537          	lui	a0,0x8000d
80004170:	88c50513          	addi	a0,a0,-1908 # 8000c88c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80004174:	8000d637          	lui	a2,0x8000d
80004178:	8ac60613          	addi	a2,a2,-1876 # 8000c8ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.29>
8000417c:	01d00593          	li	a1,29
80004180:	00003097          	auipc	ra,0x3
80004184:	e58080e7          	jalr	-424(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004188:	8000d537          	lui	a0,0x8000d
8000418c:	8bc50513          	addi	a0,a0,-1860 # 8000c8bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80004190:	8000d637          	lui	a2,0x8000d
80004194:	8d860613          	addi	a2,a2,-1832 # 8000c8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.31>
80004198:	01c00593          	li	a1,28
8000419c:	00003097          	auipc	ra,0x3
800041a0:	e3c080e7          	jalr	-452(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800041a4:	8000d537          	lui	a0,0x8000d
800041a8:	8e850513          	addi	a0,a0,-1816 # 8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
800041ac:	8000d637          	lui	a2,0x8000d
800041b0:	91860613          	addi	a2,a2,-1768 # 8000c918 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33>
800041b4:	02d00593          	li	a1,45
800041b8:	00003097          	auipc	ra,0x3
800041bc:	e20080e7          	jalr	-480(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800041c0:	8000d637          	lui	a2,0x8000d
800041c4:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800041c8:	02800593          	li	a1,40
800041cc:	000a0513          	mv	a0,s4
800041d0:	00005097          	auipc	ra,0x5
800041d4:	cdc080e7          	jalr	-804(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800041d8:	8000d637          	lui	a2,0x8000d
800041dc:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800041e0:	02800513          	li	a0,40
800041e4:	02800593          	li	a1,40
800041e8:	00003097          	auipc	ra,0x3
800041ec:	e38080e7          	jalr	-456(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800041f0:	8000d637          	lui	a2,0x8000d
800041f4:	92860613          	addi	a2,a2,-1752 # 8000c928 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.34>
800041f8:	000c8513          	mv	a0,s9
800041fc:	000c8593          	mv	a1,s9
80004200:	00003097          	auipc	ra,0x3
80004204:	e20080e7          	jalr	-480(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80004208:	8000d537          	lui	a0,0x8000d
8000420c:	9a050513          	addi	a0,a0,-1632 # 8000c9a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
80004210:	8000d637          	lui	a2,0x8000d
80004214:	9d860613          	addi	a2,a2,-1576 # 8000c9d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.40>
80004218:	03600593          	li	a1,54
8000421c:	00003097          	auipc	ra,0x3
80004220:	dbc080e7          	jalr	-580(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004224:	8000d537          	lui	a0,0x8000d
80004228:	95850513          	addi	a0,a0,-1704 # 8000c958 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
8000422c:	8000d637          	lui	a2,0x8000d
80004230:	99060613          	addi	a2,a2,-1648 # 8000c990 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.38>
80004234:	03700593          	li	a1,55
80004238:	00003097          	auipc	ra,0x3
8000423c:	da0080e7          	jalr	-608(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004240:	8000d637          	lui	a2,0x8000d
80004244:	93860613          	addi	a2,a2,-1736 # 8000c938 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.35>
80004248:	00090513          	mv	a0,s2
8000424c:	000c0593          	mv	a1,s8
80004250:	00003097          	auipc	ra,0x3
80004254:	dd0080e7          	jalr	-560(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80004258 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E>:
80004258:	c7010113          	addi	sp,sp,-912
8000425c:	38112623          	sw	ra,908(sp)
80004260:	38812423          	sw	s0,904(sp)
80004264:	38912223          	sw	s1,900(sp)
80004268:	39212023          	sw	s2,896(sp)
8000426c:	37312e23          	sw	s3,892(sp)
80004270:	37412c23          	sw	s4,888(sp)
80004274:	37512a23          	sw	s5,884(sp)
80004278:	37612823          	sw	s6,880(sp)
8000427c:	37712623          	sw	s7,876(sp)
80004280:	37812423          	sw	s8,872(sp)
80004284:	37912223          	sw	s9,868(sp)
80004288:	37a12023          	sw	s10,864(sp)
8000428c:	35b12e23          	sw	s11,860(sp)
80004290:	39010413          	addi	s0,sp,912
80004294:	0045ab83          	lw	s7,4(a1)
80004298:	0005ab03          	lw	s6,0(a1)
8000429c:	017b67b3          	or	a5,s6,s7
800042a0:	50078ee3          	beqz	a5,80004fbc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd64>
800042a4:	00068993          	mv	s3,a3
800042a8:	00060493          	mv	s1,a2
800042ac:	00c5a803          	lw	a6,12(a1)
800042b0:	0085a603          	lw	a2,8(a1)
800042b4:	010666b3          	or	a3,a2,a6
800042b8:	520680e3          	beqz	a3,80004fd8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd80>
800042bc:	00070a13          	mv	s4,a4
800042c0:	0145a703          	lw	a4,20(a1)
800042c4:	0105a683          	lw	a3,16(a1)
800042c8:	00e6e7b3          	or	a5,a3,a4
800042cc:	520784e3          	beqz	a5,80004ff4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd9c>
800042d0:	00db06b3          	add	a3,s6,a3
800042d4:	0166b6b3          	sltu	a3,a3,s6
800042d8:	00eb8733          	add	a4,s7,a4
800042dc:	00d70733          	add	a4,a4,a3
800042e0:	01770463          	beq	a4,s7,800042e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x90>
800042e4:	017736b3          	sltu	a3,a4,s7
800042e8:	5c069ce3          	bnez	a3,800050c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe68>
800042ec:	010b8663          	beq	s7,a6,800042f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa0>
800042f0:	010bb633          	sltu	a2,s7,a6
800042f4:	0080006f          	j	800042fc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa4>
800042f8:	00cb3633          	sltu	a2,s6,a2
800042fc:	5e0610e3          	bnez	a2,800050dc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe84>
80004300:	01859a83          	lh	s5,24(a1)
80004304:	001b3593          	seqz	a1,s6
80004308:	40bb86b3          	sub	a3,s7,a1
8000430c:	555555b7          	lui	a1,0x55555
80004310:	55558613          	addi	a2,a1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
80004314:	333335b7          	lui	a1,0x33333
80004318:	33358593          	addi	a1,a1,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000431c:	0f0f1737          	lui	a4,0xf0f1
80004320:	f0f70793          	addi	a5,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
80004324:	c8a42423          	sw	a0,-888(s0)
80004328:	06069c63          	bnez	a3,800043a0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x148>
8000432c:	fffb0693          	addi	a3,s6,-1
80004330:	0016d713          	srli	a4,a3,0x1
80004334:	00e6e6b3          	or	a3,a3,a4
80004338:	0026d713          	srli	a4,a3,0x2
8000433c:	00e6e6b3          	or	a3,a3,a4
80004340:	0046d713          	srli	a4,a3,0x4
80004344:	00e6e6b3          	or	a3,a3,a4
80004348:	0086d713          	srli	a4,a3,0x8
8000434c:	00e6e6b3          	or	a3,a3,a4
80004350:	0106d713          	srli	a4,a3,0x10
80004354:	00e6e6b3          	or	a3,a3,a4
80004358:	fff6c693          	not	a3,a3
8000435c:	0016d713          	srli	a4,a3,0x1
80004360:	00c77633          	and	a2,a4,a2
80004364:	40c686b3          	sub	a3,a3,a2
80004368:	00b6f633          	and	a2,a3,a1
8000436c:	0026d693          	srli	a3,a3,0x2
80004370:	00b6f5b3          	and	a1,a3,a1
80004374:	00b605b3          	add	a1,a2,a1
80004378:	0045d613          	srli	a2,a1,0x4
8000437c:	00c585b3          	add	a1,a1,a2
80004380:	00f5f533          	and	a0,a1,a5
80004384:	00851593          	slli	a1,a0,0x8
80004388:	00b50533          	add	a0,a0,a1
8000438c:	01051593          	slli	a1,a0,0x10
80004390:	00b50533          	add	a0,a0,a1
80004394:	01855513          	srli	a0,a0,0x18
80004398:	02050593          	addi	a1,a0,32
8000439c:	06c0006f          	j	80004408 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x1b0>
800043a0:	0016d713          	srli	a4,a3,0x1
800043a4:	00e6e6b3          	or	a3,a3,a4
800043a8:	0026d713          	srli	a4,a3,0x2
800043ac:	00e6e6b3          	or	a3,a3,a4
800043b0:	0046d713          	srli	a4,a3,0x4
800043b4:	00e6e6b3          	or	a3,a3,a4
800043b8:	0086d713          	srli	a4,a3,0x8
800043bc:	00e6e6b3          	or	a3,a3,a4
800043c0:	0106d713          	srli	a4,a3,0x10
800043c4:	00e6e6b3          	or	a3,a3,a4
800043c8:	fff6c693          	not	a3,a3
800043cc:	0016d713          	srli	a4,a3,0x1
800043d0:	00c77633          	and	a2,a4,a2
800043d4:	40c686b3          	sub	a3,a3,a2
800043d8:	00b6f633          	and	a2,a3,a1
800043dc:	0026d693          	srli	a3,a3,0x2
800043e0:	00b6f5b3          	and	a1,a3,a1
800043e4:	00b605b3          	add	a1,a2,a1
800043e8:	0045d613          	srli	a2,a1,0x4
800043ec:	00c585b3          	add	a1,a1,a2
800043f0:	00f5f533          	and	a0,a1,a5
800043f4:	00851593          	slli	a1,a0,0x8
800043f8:	00b50533          	add	a0,a0,a1
800043fc:	01051593          	slli	a1,a0,0x10
80004400:	00b50533          	add	a0,a0,a1
80004404:	01855593          	srli	a1,a0,0x18
80004408:	41fad613          	srai	a2,s5,0x1f
8000440c:	40ba8533          	sub	a0,s5,a1
80004410:	00bab5b3          	sltu	a1,s5,a1
80004414:	40b605b3          	sub	a1,a2,a1
80004418:	4d105637          	lui	a2,0x4d105
8000441c:	d4260613          	addi	a2,a2,-702 # 4d104d42 <.Lline_table_start2+0x4d103994>
80004420:	00000693          	li	a3,0
80004424:	00006097          	auipc	ra,0x6
80004428:	ba0080e7          	jalr	-1120(ra) # 80009fc4 <__muldi3>
8000442c:	44135637          	lui	a2,0x44135
80004430:	08060613          	addi	a2,a2,128 # 44135080 <.Lline_table_start2+0x44133cd2>
80004434:	00c50633          	add	a2,a0,a2
80004438:	00a63533          	sltu	a0,a2,a0
8000443c:	00a58533          	add	a0,a1,a0
80004440:	01350913          	addi	s2,a0,19
80004444:	01091513          	slli	a0,s2,0x10
80004448:	41055c93          	srai	s9,a0,0x10
8000444c:	001bb513          	seqz	a0,s7
80004450:	fff50593          	addi	a1,a0,-1
80004454:	0175f5b3          	and	a1,a1,s7
80004458:	00200613          	li	a2,2
8000445c:	40a60633          	sub	a2,a2,a0
80004460:	d2c42c23          	sw	a2,-712(s0)
80004464:	c9642c23          	sw	s6,-872(s0)
80004468:	c8b42e23          	sw	a1,-868(s0)
8000446c:	ca040513          	addi	a0,s0,-864
80004470:	09800613          	li	a2,152
80004474:	00000593          	li	a1,0
80004478:	00007097          	auipc	ra,0x7
8000447c:	a60080e7          	jalr	-1440(ra) # 8000aed8 <memset>
80004480:	d4040513          	addi	a0,s0,-704
80004484:	09c00613          	li	a2,156
80004488:	00000593          	li	a1,0
8000448c:	00007097          	auipc	ra,0x7
80004490:	a4c080e7          	jalr	-1460(ra) # 8000aed8 <memset>
80004494:	00100513          	li	a0,1
80004498:	dca42e23          	sw	a0,-548(s0)
8000449c:	d2a42e23          	sw	a0,-708(s0)
800044a0:	020ac863          	bltz	s5,800044d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x278>
800044a4:	c9840513          	addi	a0,s0,-872
800044a8:	000a8593          	mv	a1,s5
800044ac:	00005097          	auipc	ra,0x5
800044b0:	ca0080e7          	jalr	-864(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800044b4:	c8942623          	sw	s1,-884(s0)
800044b8:	c9442823          	sw	s4,-880(s0)
800044bc:	020ccc63          	bltz	s9,800044f4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x29c>
800044c0:	01191593          	slli	a1,s2,0x11
800044c4:	0115d593          	srli	a1,a1,0x11
800044c8:	d3c40513          	addi	a0,s0,-708
800044cc:	0380006f          	j	80004504 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2ac>
800044d0:	41500533          	neg	a0,s5
800044d4:	01051513          	slli	a0,a0,0x10
800044d8:	41055593          	srai	a1,a0,0x10
800044dc:	d3c40513          	addi	a0,s0,-708
800044e0:	00005097          	auipc	ra,0x5
800044e4:	c6c080e7          	jalr	-916(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800044e8:	c8942623          	sw	s1,-884(s0)
800044ec:	c9442823          	sw	s4,-880(s0)
800044f0:	fc0cd8e3          	bgez	s9,800044c0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x268>
800044f4:	41900533          	neg	a0,s9
800044f8:	01051513          	slli	a0,a0,0x10
800044fc:	01055593          	srli	a1,a0,0x10
80004500:	c9840513          	addi	a0,s0,-872
80004504:	ffffe097          	auipc	ra,0xffffe
80004508:	e78080e7          	jalr	-392(ra) # 8000237c <_ZN4core3num7flt2dec8strategy6dragon9mul_pow1017hb16ebfc37aa179a3E>
8000450c:	ddc42a83          	lw	s5,-548(s0)
80004510:	f2840513          	addi	a0,s0,-216
80004514:	d3c40593          	addi	a1,s0,-708
80004518:	0a000613          	li	a2,160
8000451c:	00006097          	auipc	ra,0x6
80004520:	b30080e7          	jalr	-1232(ra) # 8000a04c <memcpy>
80004524:	00a00513          	li	a0,10
80004528:	fd542423          	sw	s5,-56(s0)
8000452c:	00098d93          	mv	s11,s3
80004530:	c9342a23          	sw	s3,-876(s0)
80004534:	08a9e463          	bltu	s3,a0,800045bc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x364>
80004538:	f2440993          	addi	s3,s0,-220
8000453c:	02900a13          	li	s4,41
80004540:	00900913          	li	s2,9
80004544:	3b9ad537          	lui	a0,0x3b9ad
80004548:	a0050b13          	addi	s6,a0,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
8000454c:	c9442d83          	lw	s11,-876(s0)
80004550:	00c0006f          	j	8000455c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x304>
80004554:	ff7d8d93          	addi	s11,s11,-9
80004558:	07b97263          	bgeu	s2,s11,800045bc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x364>
8000455c:	fc842503          	lw	a0,-56(s0)
80004560:	234578e3          	bgeu	a0,s4,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004564:	fe0508e3          	beqz	a0,80004554 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2fc>
80004568:	00000593          	li	a1,0
8000456c:	00251513          	slli	a0,a0,0x2
80004570:	40a004b3          	neg	s1,a0
80004574:	00a98d33          	add	s10,s3,a0
80004578:	000d2b83          	lw	s7,0(s10)
8000457c:	000b8513          	mv	a0,s7
80004580:	000b0613          	mv	a2,s6
80004584:	00000693          	li	a3,0
80004588:	00006097          	auipc	ra,0x6
8000458c:	5d8080e7          	jalr	1496(ra) # 8000ab60 <__udivdi3>
80004590:	00050c13          	mv	s8,a0
80004594:	000b0613          	mv	a2,s6
80004598:	00000693          	li	a3,0
8000459c:	00006097          	auipc	ra,0x6
800045a0:	a28080e7          	jalr	-1496(ra) # 80009fc4 <__muldi3>
800045a4:	40ab85b3          	sub	a1,s7,a0
800045a8:	018d2023          	sw	s8,0(s10)
800045ac:	00448493          	addi	s1,s1,4
800045b0:	ffcd0d13          	addi	s10,s10,-4
800045b4:	fc0492e3          	bnez	s1,80004578 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x320>
800045b8:	f9dff06f          	j	80004554 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x2fc>
800045bc:	002d9d93          	slli	s11,s11,0x2
800045c0:	8000d537          	lui	a0,0x8000d
800045c4:	11850513          	addi	a0,a0,280 # 8000d118 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
800045c8:	01b50533          	add	a0,a0,s11
800045cc:	00052b03          	lw	s6,0(a0)
800045d0:	001b1b13          	slli	s6,s6,0x1
800045d4:	220b0ee3          	beqz	s6,80005010 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdb8>
800045d8:	fc842503          	lw	a0,-56(s0)
800045dc:	02900593          	li	a1,41
800045e0:	1ab578e3          	bgeu	a0,a1,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800045e4:	20050863          	beqz	a0,800047f4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x59c>
800045e8:	00000593          	li	a1,0
800045ec:	00251513          	slli	a0,a0,0x2
800045f0:	40a00933          	neg	s2,a0
800045f4:	f2840613          	addi	a2,s0,-216
800045f8:	00c50533          	add	a0,a0,a2
800045fc:	ffc50493          	addi	s1,a0,-4
80004600:	c8c42d83          	lw	s11,-884(s0)
80004604:	c9442983          	lw	s3,-876(s0)
80004608:	c9042a03          	lw	s4,-880(s0)
8000460c:	0004ab83          	lw	s7,0(s1)
80004610:	000b8513          	mv	a0,s7
80004614:	000b0613          	mv	a2,s6
80004618:	00000693          	li	a3,0
8000461c:	00006097          	auipc	ra,0x6
80004620:	544080e7          	jalr	1348(ra) # 8000ab60 <__udivdi3>
80004624:	00050c13          	mv	s8,a0
80004628:	000b0613          	mv	a2,s6
8000462c:	00000693          	li	a3,0
80004630:	00006097          	auipc	ra,0x6
80004634:	994080e7          	jalr	-1644(ra) # 80009fc4 <__muldi3>
80004638:	40ab85b3          	sub	a1,s7,a0
8000463c:	0184a023          	sw	s8,0(s1)
80004640:	00490913          	addi	s2,s2,4
80004644:	ffc48493          	addi	s1,s1,-4
80004648:	fc0912e3          	bnez	s2,8000460c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x3b4>
8000464c:	fc842503          	lw	a0,-56(s0)
80004650:	d3842b83          	lw	s7,-712(s0)
80004654:	00abe463          	bltu	s7,a0,8000465c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x404>
80004658:	000b8513          	mv	a0,s7
8000465c:	02800593          	li	a1,40
80004660:	12a5e8e3          	bltu	a1,a0,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
80004664:	06050663          	beqz	a0,800046d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x478>
80004668:	00000613          	li	a2,0
8000466c:	c9840593          	addi	a1,s0,-872
80004670:	f2840693          	addi	a3,s0,-216
80004674:	00050713          	mv	a4,a0
80004678:	0006a783          	lw	a5,0(a3)
8000467c:	0005a803          	lw	a6,0(a1)
80004680:	01078833          	add	a6,a5,a6
80004684:	00f837b3          	sltu	a5,a6,a5
80004688:	00167613          	andi	a2,a2,1
8000468c:	00c808b3          	add	a7,a6,a2
80004690:	0108b633          	sltu	a2,a7,a6
80004694:	00c7e633          	or	a2,a5,a2
80004698:	0116a023          	sw	a7,0(a3)
8000469c:	00458593          	addi	a1,a1,4
800046a0:	fff70713          	addi	a4,a4,-1
800046a4:	00468693          	addi	a3,a3,4
800046a8:	fc0718e3          	bnez	a4,80004678 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x420>
800046ac:	02060263          	beqz	a2,800046d0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x478>
800046b0:	02800593          	li	a1,40
800046b4:	24b502e3          	beq	a0,a1,800050f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
800046b8:	00251593          	slli	a1,a0,0x2
800046bc:	f2840613          	addi	a2,s0,-216
800046c0:	00b605b3          	add	a1,a2,a1
800046c4:	00100613          	li	a2,1
800046c8:	00c5a023          	sw	a2,0(a1)
800046cc:	00150513          	addi	a0,a0,1
800046d0:	fca42423          	sw	a0,-56(s0)
800046d4:	00aae463          	bltu	s5,a0,800046dc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x484>
800046d8:	000a8513          	mv	a0,s5
800046dc:	02900593          	li	a1,41
800046e0:	0ab578e3          	bgeu	a0,a1,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800046e4:	00251593          	slli	a1,a0,0x2
800046e8:	40b00533          	neg	a0,a1
800046ec:	ffc58613          	addi	a2,a1,-4
800046f0:	d3c40593          	addi	a1,s0,-708
800046f4:	00c585b3          	add	a1,a1,a2
800046f8:	f2840693          	addi	a3,s0,-216
800046fc:	00c68633          	add	a2,a3,a2
80004700:	04050a63          	beqz	a0,80004754 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4fc>
80004704:	00062683          	lw	a3,0(a2)
80004708:	0005a703          	lw	a4,0(a1)
8000470c:	00e6b7b3          	sltu	a5,a3,a4
80004710:	00d746b3          	xor	a3,a4,a3
80004714:	00d036b3          	snez	a3,a3
80004718:	40f00733          	neg	a4,a5
8000471c:	00d766b3          	or	a3,a4,a3
80004720:	00450513          	addi	a0,a0,4
80004724:	ffc58593          	addi	a1,a1,-4
80004728:	ffc60613          	addi	a2,a2,-4
8000472c:	fc068ae3          	beqz	a3,80004700 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4a8>
80004730:	00200513          	li	a0,2
80004734:	02a6f863          	bgeu	a3,a0,80004764 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x50c>
80004738:	001c8c93          	addi	s9,s9,1
8000473c:	010c9513          	slli	a0,s9,0x10
80004740:	41055c13          	srai	s8,a0,0x10
80004744:	00100593          	li	a1,1
80004748:	094c5c63          	bge	s8,s4,800047e0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x588>
8000474c:	00000b13          	li	s6,0
80004750:	6180006f          	j	80004d68 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
80004754:	00153693          	seqz	a3,a0
80004758:	fff68693          	addi	a3,a3,-1
8000475c:	00200513          	li	a0,2
80004760:	fca6ece3          	bltu	a3,a0,80004738 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4e0>
80004764:	060b8463          	beqz	s7,800047cc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x574>
80004768:	00000913          	li	s2,0
8000476c:	002b9493          	slli	s1,s7,0x2
80004770:	c9840993          	addi	s3,s0,-872
80004774:	00998a33          	add	s4,s3,s1
80004778:	0009a503          	lw	a0,0(s3)
8000477c:	00498b13          	addi	s6,s3,4
80004780:	00a00613          	li	a2,10
80004784:	00000593          	li	a1,0
80004788:	00000693          	li	a3,0
8000478c:	00006097          	auipc	ra,0x6
80004790:	838080e7          	jalr	-1992(ra) # 80009fc4 <__muldi3>
80004794:	01250633          	add	a2,a0,s2
80004798:	00a63933          	sltu	s2,a2,a0
8000479c:	01258933          	add	s2,a1,s2
800047a0:	ffc48493          	addi	s1,s1,-4
800047a4:	00c9a023          	sw	a2,0(s3)
800047a8:	000b0993          	mv	s3,s6
800047ac:	fc0496e3          	bnez	s1,80004778 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x520>
800047b0:	00090a63          	beqz	s2,800047c4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x56c>
800047b4:	02800513          	li	a0,40
800047b8:	14ab80e3          	beq	s7,a0,800050f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
800047bc:	012a2023          	sw	s2,0(s4)
800047c0:	001b8b93          	addi	s7,s7,1
800047c4:	c9442983          	lw	s3,-876(s0)
800047c8:	c9042a03          	lw	s4,-880(s0)
800047cc:	d3742c23          	sw	s7,-712(s0)
800047d0:	010c9513          	slli	a0,s9,0x10
800047d4:	41055c13          	srai	s8,a0,0x10
800047d8:	00100593          	li	a1,1
800047dc:	f74c48e3          	blt	s8,s4,8000474c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x4f4>
800047e0:	414c0533          	sub	a0,s8,s4
800047e4:	03356463          	bltu	a0,s3,8000480c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x5b4>
800047e8:	00098b13          	mv	s6,s3
800047ec:	02099863          	bnez	s3,8000481c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x5c4>
800047f0:	5780006f          	j	80004d68 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
800047f4:	c8c42d83          	lw	s11,-884(s0)
800047f8:	c9442983          	lw	s3,-876(s0)
800047fc:	c9042a03          	lw	s4,-880(s0)
80004800:	d3842b83          	lw	s7,-712(s0)
80004804:	e4abfae3          	bgeu	s7,a0,80004658 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x400>
80004808:	e55ff06f          	j	8000465c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x404>
8000480c:	414c8533          	sub	a0,s9,s4
80004810:	01051513          	slli	a0,a0,0x10
80004814:	41055b13          	srai	s6,a0,0x10
80004818:	540b0863          	beqz	s6,80004d68 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb10>
8000481c:	c7842e23          	sw	s8,-900(s0)
80004820:	de040513          	addi	a0,s0,-544
80004824:	d3c40593          	addi	a1,s0,-708
80004828:	0a000613          	li	a2,160
8000482c:	00006097          	auipc	ra,0x6
80004830:	820080e7          	jalr	-2016(ra) # 8000a04c <memcpy>
80004834:	e9542023          	sw	s5,-384(s0)
80004838:	de040513          	addi	a0,s0,-544
8000483c:	00100593          	li	a1,1
80004840:	00100c13          	li	s8,1
80004844:	00005097          	auipc	ra,0x5
80004848:	908080e7          	jalr	-1784(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
8000484c:	ddc42483          	lw	s1,-548(s0)
80004850:	e8440513          	addi	a0,s0,-380
80004854:	d3c40593          	addi	a1,s0,-708
80004858:	0a000613          	li	a2,160
8000485c:	00005097          	auipc	ra,0x5
80004860:	7f0080e7          	jalr	2032(ra) # 8000a04c <memcpy>
80004864:	f2942223          	sw	s1,-220(s0)
80004868:	e8440513          	addi	a0,s0,-380
8000486c:	00200593          	li	a1,2
80004870:	00005097          	auipc	ra,0x5
80004874:	8dc080e7          	jalr	-1828(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
80004878:	ddc42483          	lw	s1,-548(s0)
8000487c:	f2840513          	addi	a0,s0,-216
80004880:	d3c40593          	addi	a1,s0,-708
80004884:	0a000613          	li	a2,160
80004888:	00005097          	auipc	ra,0x5
8000488c:	7c4080e7          	jalr	1988(ra) # 8000a04c <memcpy>
80004890:	fc942423          	sw	s1,-56(s0)
80004894:	f2840513          	addi	a0,s0,-216
80004898:	00300593          	li	a1,3
8000489c:	00005097          	auipc	ra,0x5
800048a0:	8b0080e7          	jalr	-1872(ra) # 8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>
800048a4:	00000f13          	li	t5,0
800048a8:	fc842383          	lw	t2,-56(s0)
800048ac:	f2442e03          	lw	t3,-220(s0)
800048b0:	e8042e83          	lw	t4,-384(s0)
800048b4:	ddc42a83          	lw	s5,-548(s0)
800048b8:	d3842b83          	lw	s7,-712(s0)
800048bc:	f2440f93          	addi	t6,s0,-220
800048c0:	c9440493          	addi	s1,s0,-876
800048c4:	e8040913          	addi	s2,s0,-384
800048c8:	ddc40d13          	addi	s10,s0,-548
800048cc:	d3840093          	addi	ra,s0,-712
800048d0:	02900713          	li	a4,41
800048d4:	6cebf863          	bgeu	s7,a4,80004fa4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
800048d8:	000f0593          	mv	a1,t5
800048dc:	001f0f13          	addi	t5,t5,1
800048e0:	002b9513          	slli	a0,s7,0x2
800048e4:	c9840613          	addi	a2,s0,-872
800048e8:	5c050663          	beqz	a0,80004eb4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc5c>
800048ec:	00062683          	lw	a3,0(a2)
800048f0:	00460613          	addi	a2,a2,4
800048f4:	ffc50513          	addi	a0,a0,-4
800048f8:	fe0688e3          	beqz	a3,800048e8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x690>
800048fc:	000b8513          	mv	a0,s7
80004900:	0173e463          	bltu	t2,s7,80004908 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6b0>
80004904:	00038513          	mv	a0,t2
80004908:	68e57463          	bgeu	a0,a4,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
8000490c:	00251713          	slli	a4,a0,0x2
80004910:	40e00633          	neg	a2,a4
80004914:	00ef86b3          	add	a3,t6,a4
80004918:	00e48733          	add	a4,s1,a4
8000491c:	08060e63          	beqz	a2,800049b8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x760>
80004920:	00072783          	lw	a5,0(a4)
80004924:	0006a803          	lw	a6,0(a3)
80004928:	0107b8b3          	sltu	a7,a5,a6
8000492c:	00f847b3          	xor	a5,a6,a5
80004930:	00f037b3          	snez	a5,a5
80004934:	41100833          	neg	a6,a7
80004938:	00f867b3          	or	a5,a6,a5
8000493c:	00460613          	addi	a2,a2,4
80004940:	ffc68693          	addi	a3,a3,-4
80004944:	ffc70713          	addi	a4,a4,-4
80004948:	fc078ae3          	beqz	a5,8000491c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6c4>
8000494c:	00200613          	li	a2,2
80004950:	06c7fc63          	bgeu	a5,a2,800049c8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x770>
80004954:	00100693          	li	a3,1
80004958:	f2840613          	addi	a2,s0,-216
8000495c:	c9840713          	addi	a4,s0,-872
80004960:	00050793          	mv	a5,a0
80004964:	00062803          	lw	a6,0(a2)
80004968:	00072883          	lw	a7,0(a4)
8000496c:	fff84813          	not	a6,a6
80004970:	01088833          	add	a6,a7,a6
80004974:	011838b3          	sltu	a7,a6,a7
80004978:	0016f693          	andi	a3,a3,1
8000497c:	00d802b3          	add	t0,a6,a3
80004980:	0102b6b3          	sltu	a3,t0,a6
80004984:	00d8e6b3          	or	a3,a7,a3
80004988:	00572023          	sw	t0,0(a4)
8000498c:	00460613          	addi	a2,a2,4
80004990:	fff78793          	addi	a5,a5,-1
80004994:	00470713          	addi	a4,a4,4
80004998:	fc0796e3          	bnez	a5,80004964 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x70c>
8000499c:	6c068063          	beqz	a3,8000505c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
800049a0:	d2a42c23          	sw	a0,-712(s0)
800049a4:	00800613          	li	a2,8
800049a8:	00050b93          	mv	s7,a0
800049ac:	02900693          	li	a3,41
800049b0:	02ae7463          	bgeu	t3,a0,800049d8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x780>
800049b4:	0280006f          	j	800049dc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x784>
800049b8:	00163793          	seqz	a5,a2
800049bc:	fff78793          	addi	a5,a5,-1
800049c0:	00200613          	li	a2,2
800049c4:	f8c7e8e3          	bltu	a5,a2,80004954 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x6fc>
800049c8:	00000613          	li	a2,0
800049cc:	02900693          	li	a3,41
800049d0:	000b8513          	mv	a0,s7
800049d4:	017e6463          	bltu	t3,s7,800049dc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x784>
800049d8:	000e0513          	mv	a0,t3
800049dc:	5ad57a63          	bgeu	a0,a3,80004f90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd38>
800049e0:	00251793          	slli	a5,a0,0x2
800049e4:	40f006b3          	neg	a3,a5
800049e8:	00f90733          	add	a4,s2,a5
800049ec:	00f487b3          	add	a5,s1,a5
800049f0:	08068e63          	beqz	a3,80004a8c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x834>
800049f4:	0007a803          	lw	a6,0(a5)
800049f8:	00072883          	lw	a7,0(a4)
800049fc:	011832b3          	sltu	t0,a6,a7
80004a00:	0108c833          	xor	a6,a7,a6
80004a04:	01003833          	snez	a6,a6
80004a08:	405008b3          	neg	a7,t0
80004a0c:	0108e833          	or	a6,a7,a6
80004a10:	00468693          	addi	a3,a3,4
80004a14:	ffc70713          	addi	a4,a4,-4
80004a18:	ffc78793          	addi	a5,a5,-4
80004a1c:	fc080ae3          	beqz	a6,800049f0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x798>
80004a20:	070c6c63          	bltu	s8,a6,80004a98 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x840>
80004a24:	04050863          	beqz	a0,80004a74 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x81c>
80004a28:	00100713          	li	a4,1
80004a2c:	e8440693          	addi	a3,s0,-380
80004a30:	c9840793          	addi	a5,s0,-872
80004a34:	00050813          	mv	a6,a0
80004a38:	0006a883          	lw	a7,0(a3)
80004a3c:	0007a283          	lw	t0,0(a5)
80004a40:	fff8c893          	not	a7,a7
80004a44:	011288b3          	add	a7,t0,a7
80004a48:	0058b2b3          	sltu	t0,a7,t0
80004a4c:	00177713          	andi	a4,a4,1
80004a50:	00e88333          	add	t1,a7,a4
80004a54:	01133733          	sltu	a4,t1,a7
80004a58:	00e2e733          	or	a4,t0,a4
80004a5c:	0067a023          	sw	t1,0(a5)
80004a60:	00468693          	addi	a3,a3,4
80004a64:	fff80813          	addi	a6,a6,-1
80004a68:	00478793          	addi	a5,a5,4
80004a6c:	fc0816e3          	bnez	a6,80004a38 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x7e0>
80004a70:	5e070663          	beqz	a4,8000505c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004a74:	d2a42c23          	sw	a0,-712(s0)
80004a78:	00466613          	ori	a2,a2,4
80004a7c:	00050693          	mv	a3,a0
80004a80:	02900713          	li	a4,41
80004a84:	02aef263          	bgeu	t4,a0,80004aa8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x850>
80004a88:	0240006f          	j	80004aac <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x854>
80004a8c:	0016b813          	seqz	a6,a3
80004a90:	fff80813          	addi	a6,a6,-1
80004a94:	f90c78e3          	bgeu	s8,a6,80004a24 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x7cc>
80004a98:	000b8513          	mv	a0,s7
80004a9c:	00050693          	mv	a3,a0
80004aa0:	02900713          	li	a4,41
80004aa4:	017ee463          	bltu	t4,s7,80004aac <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x854>
80004aa8:	000e8693          	mv	a3,t4
80004aac:	5ee6f263          	bgeu	a3,a4,80005090 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe38>
80004ab0:	00269813          	slli	a6,a3,0x2
80004ab4:	41000733          	neg	a4,a6
80004ab8:	010d07b3          	add	a5,s10,a6
80004abc:	01048833          	add	a6,s1,a6
80004ac0:	08070e63          	beqz	a4,80004b5c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x904>
80004ac4:	00082883          	lw	a7,0(a6)
80004ac8:	0007a283          	lw	t0,0(a5)
80004acc:	0058b333          	sltu	t1,a7,t0
80004ad0:	0112c8b3          	xor	a7,t0,a7
80004ad4:	011038b3          	snez	a7,a7
80004ad8:	406002b3          	neg	t0,t1
80004adc:	0112e8b3          	or	a7,t0,a7
80004ae0:	00470713          	addi	a4,a4,4
80004ae4:	ffc78793          	addi	a5,a5,-4
80004ae8:	ffc80813          	addi	a6,a6,-4
80004aec:	fc088ae3          	beqz	a7,80004ac0 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x868>
80004af0:	071c6c63          	bltu	s8,a7,80004b68 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x910>
80004af4:	04068863          	beqz	a3,80004b44 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x8ec>
80004af8:	00100713          	li	a4,1
80004afc:	de040513          	addi	a0,s0,-544
80004b00:	c9840793          	addi	a5,s0,-872
80004b04:	00068813          	mv	a6,a3
80004b08:	00052883          	lw	a7,0(a0)
80004b0c:	0007a283          	lw	t0,0(a5)
80004b10:	fff8c893          	not	a7,a7
80004b14:	011288b3          	add	a7,t0,a7
80004b18:	0058b2b3          	sltu	t0,a7,t0
80004b1c:	00177713          	andi	a4,a4,1
80004b20:	00e88333          	add	t1,a7,a4
80004b24:	01133733          	sltu	a4,t1,a7
80004b28:	00e2e733          	or	a4,t0,a4
80004b2c:	0067a023          	sw	t1,0(a5)
80004b30:	00450513          	addi	a0,a0,4
80004b34:	fff80813          	addi	a6,a6,-1
80004b38:	00478793          	addi	a5,a5,4
80004b3c:	fc0816e3          	bnez	a6,80004b08 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x8b0>
80004b40:	50070e63          	beqz	a4,8000505c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004b44:	d2d42c23          	sw	a3,-712(s0)
80004b48:	00260613          	addi	a2,a2,2
80004b4c:	00068b93          	mv	s7,a3
80004b50:	02900513          	li	a0,41
80004b54:	02daf263          	bgeu	s5,a3,80004b78 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x920>
80004b58:	0240006f          	j	80004b7c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x924>
80004b5c:	00173893          	seqz	a7,a4
80004b60:	fff88893          	addi	a7,a7,-1
80004b64:	f91c78e3          	bgeu	s8,a7,80004af4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x89c>
80004b68:	00050693          	mv	a3,a0
80004b6c:	00068b93          	mv	s7,a3
80004b70:	02900513          	li	a0,41
80004b74:	00dae463          	bltu	s5,a3,80004b7c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x924>
80004b78:	000a8b93          	mv	s7,s5
80004b7c:	42abf463          	bgeu	s7,a0,80004fa4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004b80:	002b9793          	slli	a5,s7,0x2
80004b84:	40f00533          	neg	a0,a5
80004b88:	00f08733          	add	a4,ra,a5
80004b8c:	00f487b3          	add	a5,s1,a5
80004b90:	08050863          	beqz	a0,80004c20 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9c8>
80004b94:	0007a803          	lw	a6,0(a5)
80004b98:	00072883          	lw	a7,0(a4)
80004b9c:	011832b3          	sltu	t0,a6,a7
80004ba0:	0108c833          	xor	a6,a7,a6
80004ba4:	01003833          	snez	a6,a6
80004ba8:	405008b3          	neg	a7,t0
80004bac:	0108e833          	or	a6,a7,a6
80004bb0:	00450513          	addi	a0,a0,4
80004bb4:	ffc70713          	addi	a4,a4,-4
80004bb8:	ffc78793          	addi	a5,a5,-4
80004bbc:	fc080ae3          	beqz	a6,80004b90 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x938>
80004bc0:	070c6663          	bltu	s8,a6,80004c2c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9d4>
80004bc4:	040b8863          	beqz	s7,80004c14 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9bc>
80004bc8:	00100693          	li	a3,1
80004bcc:	d3c40513          	addi	a0,s0,-708
80004bd0:	c9840713          	addi	a4,s0,-872
80004bd4:	000b8793          	mv	a5,s7
80004bd8:	00052803          	lw	a6,0(a0)
80004bdc:	00072883          	lw	a7,0(a4)
80004be0:	fff84813          	not	a6,a6
80004be4:	01088833          	add	a6,a7,a6
80004be8:	011838b3          	sltu	a7,a6,a7
80004bec:	0016f693          	andi	a3,a3,1
80004bf0:	00d802b3          	add	t0,a6,a3
80004bf4:	0102b6b3          	sltu	a3,t0,a6
80004bf8:	00d8e6b3          	or	a3,a7,a3
80004bfc:	00572023          	sw	t0,0(a4)
80004c00:	00450513          	addi	a0,a0,4
80004c04:	fff78793          	addi	a5,a5,-1
80004c08:	00470713          	addi	a4,a4,4
80004c0c:	fc0796e3          	bnez	a5,80004bd8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x980>
80004c10:	44068663          	beqz	a3,8000505c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe04>
80004c14:	d3742c23          	sw	s7,-712(s0)
80004c18:	00160613          	addi	a2,a2,1
80004c1c:	0140006f          	j	80004c30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x9d8>
80004c20:	00153813          	seqz	a6,a0
80004c24:	fff80813          	addi	a6,a6,-1
80004c28:	f90c7ee3          	bgeu	s8,a6,80004bc4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x96c>
80004c2c:	00068b93          	mv	s7,a3
80004c30:	02900713          	li	a4,41
80004c34:	4d358e63          	beq	a1,s3,80005110 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xeb8>
80004c38:	03060513          	addi	a0,a2,48
80004c3c:	00bd85b3          	add	a1,s11,a1
80004c40:	00a58023          	sb	a0,0(a1)
80004c44:	36ebf063          	bgeu	s7,a4,80004fa4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004c48:	0c0b8263          	beqz	s7,80004d0c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xab4>
80004c4c:	000c8513          	mv	a0,s9
80004c50:	00008c93          	mv	s9,ra
80004c54:	c9e42023          	sw	t5,-896(s0)
80004c58:	c8a42223          	sw	a0,-892(s0)
80004c5c:	000e8913          	mv	s2,t4
80004c60:	000e0d13          	mv	s10,t3
80004c64:	00038c13          	mv	s8,t2
80004c68:	00000a13          	li	s4,0
80004c6c:	002b9493          	slli	s1,s7,0x2
80004c70:	c9840513          	addi	a0,s0,-872
80004c74:	00950533          	add	a0,a0,s1
80004c78:	c6a42c23          	sw	a0,-904(s0)
80004c7c:	c9840993          	addi	s3,s0,-872
80004c80:	0009a503          	lw	a0,0(s3)
80004c84:	00498d93          	addi	s11,s3,4
80004c88:	00a00613          	li	a2,10
80004c8c:	00000593          	li	a1,0
80004c90:	00000693          	li	a3,0
80004c94:	00005097          	auipc	ra,0x5
80004c98:	330080e7          	jalr	816(ra) # 80009fc4 <__muldi3>
80004c9c:	01450633          	add	a2,a0,s4
80004ca0:	00a63a33          	sltu	s4,a2,a0
80004ca4:	01458a33          	add	s4,a1,s4
80004ca8:	ffc48493          	addi	s1,s1,-4
80004cac:	00c9a023          	sw	a2,0(s3)
80004cb0:	000d8993          	mv	s3,s11
80004cb4:	fc0496e3          	bnez	s1,80004c80 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xa28>
80004cb8:	060a0063          	beqz	s4,80004d18 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xac0>
80004cbc:	02900713          	li	a4,41
80004cc0:	02800513          	li	a0,40
80004cc4:	42ab8a63          	beq	s7,a0,800050f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004cc8:	000c0393          	mv	t2,s8
80004ccc:	000c8093          	mv	ra,s9
80004cd0:	c7842503          	lw	a0,-904(s0)
80004cd4:	01452023          	sw	s4,0(a0)
80004cd8:	001b8b93          	addi	s7,s7,1
80004cdc:	c8c42d83          	lw	s11,-884(s0)
80004ce0:	c9442983          	lw	s3,-876(s0)
80004ce4:	c9042a03          	lw	s4,-880(s0)
80004ce8:	00100c13          	li	s8,1
80004cec:	000d0e13          	mv	t3,s10
80004cf0:	00090e93          	mv	t4,s2
80004cf4:	c8442c83          	lw	s9,-892(s0)
80004cf8:	c8042f03          	lw	t5,-896(s0)
80004cfc:	f2440f93          	addi	t6,s0,-220
80004d00:	c9440493          	addi	s1,s0,-876
80004d04:	e8040913          	addi	s2,s0,-384
80004d08:	ddc40d13          	addi	s10,s0,-548
80004d0c:	d3742c23          	sw	s7,-712(s0)
80004d10:	bd6f12e3          	bne	t5,s6,800048d4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x67c>
80004d14:	04c0006f          	j	80004d60 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb08>
80004d18:	c8c42d83          	lw	s11,-884(s0)
80004d1c:	c9442983          	lw	s3,-876(s0)
80004d20:	c9042a03          	lw	s4,-880(s0)
80004d24:	000c0393          	mv	t2,s8
80004d28:	00100c13          	li	s8,1
80004d2c:	000d0e13          	mv	t3,s10
80004d30:	00090e93          	mv	t4,s2
80004d34:	c8442503          	lw	a0,-892(s0)
80004d38:	c8042f03          	lw	t5,-896(s0)
80004d3c:	f2440f93          	addi	t6,s0,-220
80004d40:	c9440493          	addi	s1,s0,-876
80004d44:	e8040913          	addi	s2,s0,-384
80004d48:	ddc40d13          	addi	s10,s0,-548
80004d4c:	000c8093          	mv	ra,s9
80004d50:	00050c93          	mv	s9,a0
80004d54:	02900713          	li	a4,41
80004d58:	d3742c23          	sw	s7,-712(s0)
80004d5c:	b76f1ce3          	bne	t5,s6,800048d4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0x67c>
80004d60:	00000593          	li	a1,0
80004d64:	c7c42c03          	lw	s8,-900(s0)
80004d68:	02900513          	li	a0,41
80004d6c:	2caaf063          	bgeu	s5,a0,8000502c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdd4>
80004d70:	040a8e63          	beqz	s5,80004dcc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb74>
80004d74:	00000693          	li	a3,0
80004d78:	002a9613          	slli	a2,s5,0x2
80004d7c:	d3c40713          	addi	a4,s0,-708
80004d80:	00c70533          	add	a0,a4,a2
80004d84:	00072783          	lw	a5,0(a4)
80004d88:	00279813          	slli	a6,a5,0x2
80004d8c:	00f808b3          	add	a7,a6,a5
80004d90:	00d886b3          	add	a3,a7,a3
80004d94:	00d72023          	sw	a3,0(a4)
80004d98:	00470713          	addi	a4,a4,4
80004d9c:	0108b833          	sltu	a6,a7,a6
80004da0:	01e7d793          	srli	a5,a5,0x1e
80004da4:	010787b3          	add	a5,a5,a6
80004da8:	0116b6b3          	sltu	a3,a3,a7
80004dac:	ffc60613          	addi	a2,a2,-4
80004db0:	00d786b3          	add	a3,a5,a3
80004db4:	fc0618e3          	bnez	a2,80004d84 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb2c>
80004db8:	00068a63          	beqz	a3,80004dcc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb74>
80004dbc:	02800613          	li	a2,40
80004dc0:	32ca8c63          	beq	s5,a2,800050f8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xea0>
80004dc4:	00d52023          	sw	a3,0(a0)
80004dc8:	001a8a93          	addi	s5,s5,1
80004dcc:	dd542e23          	sw	s5,-548(s0)
80004dd0:	017ae463          	bltu	s5,s7,80004dd8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xb80>
80004dd4:	000a8b93          	mv	s7,s5
80004dd8:	02900513          	li	a0,41
80004ddc:	1cabf463          	bgeu	s7,a0,80004fa4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd4c>
80004de0:	002b9b93          	slli	s7,s7,0x2
80004de4:	41700533          	neg	a0,s7
80004de8:	ffcb8693          	addi	a3,s7,-4
80004dec:	d3c40613          	addi	a2,s0,-708
80004df0:	00d60633          	add	a2,a2,a3
80004df4:	c9840713          	addi	a4,s0,-872
80004df8:	00d706b3          	add	a3,a4,a3
80004dfc:	0a050063          	beqz	a0,80004e9c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc44>
80004e00:	0006a703          	lw	a4,0(a3)
80004e04:	00062783          	lw	a5,0(a2)
80004e08:	00f73833          	sltu	a6,a4,a5
80004e0c:	00e7c733          	xor	a4,a5,a4
80004e10:	00e03733          	snez	a4,a4
80004e14:	410007b3          	neg	a5,a6
80004e18:	00e7e733          	or	a4,a5,a4
80004e1c:	00450513          	addi	a0,a0,4
80004e20:	ffc60613          	addi	a2,a2,-4
80004e24:	ffc68693          	addi	a3,a3,-4
80004e28:	fc070ae3          	beqz	a4,80004dfc <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xba4>
80004e2c:	06070e63          	beqz	a4,80004ea8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc50>
80004e30:	0ff77513          	zext.b	a0,a4
80004e34:	00100613          	li	a2,1
80004e38:	0ec51c63          	bne	a0,a2,80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004e3c:	2769e663          	bltu	s3,s6,800050a8 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe50>
80004e40:	00000513          	li	a0,0
80004e44:	016d8933          	add	s2,s11,s6
80004e48:	fff00613          	li	a2,-1
80004e4c:	03900713          	li	a4,57
80004e50:	000d8693          	mv	a3,s11
80004e54:	08ab0063          	beq	s6,a0,80004ed4 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xc7c>
80004e58:	016687b3          	add	a5,a3,s6
80004e5c:	fff7c783          	lbu	a5,-1(a5)
80004e60:	00150513          	addi	a0,a0,1
80004e64:	00160613          	addi	a2,a2,1
80004e68:	fff68693          	addi	a3,a3,-1
80004e6c:	fee784e3          	beq	a5,a4,80004e54 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbfc>
80004e70:	01668533          	add	a0,a3,s6
80004e74:	00054583          	lbu	a1,0(a0)
80004e78:	00158593          	addi	a1,a1,1
80004e7c:	40cb06b3          	sub	a3,s6,a2
80004e80:	00b50023          	sb	a1,0(a0)
80004e84:	0b66f663          	bgeu	a3,s6,80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004e88:	00150513          	addi	a0,a0,1
80004e8c:	03000593          	li	a1,48
80004e90:	00006097          	auipc	ra,0x6
80004e94:	048080e7          	jalr	72(ra) # 8000aed8 <memset>
80004e98:	0980006f          	j	80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004e9c:	00153713          	seqz	a4,a0
80004ea0:	fff70713          	addi	a4,a4,-1
80004ea4:	f80716e3          	bnez	a4,80004e30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbd8>
80004ea8:	06058863          	beqz	a1,80004f18 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcc0>
80004eac:	00000b13          	li	s6,0
80004eb0:	0840006f          	j	80004f34 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004eb4:	1d69e263          	bltu	s3,s6,80005078 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xe20>
80004eb8:	06bb0e63          	beq	s6,a1,80004f34 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004ebc:	00bd8533          	add	a0,s11,a1
80004ec0:	40bb0633          	sub	a2,s6,a1
80004ec4:	03000593          	li	a1,48
80004ec8:	00006097          	auipc	ra,0x6
80004ecc:	010080e7          	jalr	16(ra) # 8000aed8 <memset>
80004ed0:	0640006f          	j	80004f34 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcdc>
80004ed4:	03100493          	li	s1,49
80004ed8:	02059463          	bnez	a1,80004f00 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xca8>
80004edc:	03100513          	li	a0,49
80004ee0:	fffb0613          	addi	a2,s6,-1
80004ee4:	00ad8023          	sb	a0,0(s11)
80004ee8:	08060c63          	beqz	a2,80004f80 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xd28>
80004eec:	001d8513          	addi	a0,s11,1
80004ef0:	03000593          	li	a1,48
80004ef4:	03000493          	li	s1,48
80004ef8:	00006097          	auipc	ra,0x6
80004efc:	fe0080e7          	jalr	-32(ra) # 8000aed8 <memset>
80004f00:	001c8c93          	addi	s9,s9,1
80004f04:	034c4663          	blt	s8,s4,80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f08:	033b7463          	bgeu	s6,s3,80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f0c:	00990023          	sb	s1,0(s2)
80004f10:	001b0b13          	addi	s6,s6,1
80004f14:	01c0006f          	j	80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f18:	fffb0513          	addi	a0,s6,-1
80004f1c:	21357663          	bgeu	a0,s3,80005128 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xed0>
80004f20:	00ad8533          	add	a0,s11,a0
80004f24:	00054503          	lbu	a0,0(a0)
80004f28:	00157513          	andi	a0,a0,1
80004f2c:	f00518e3          	bnez	a0,80004e3c <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xbe4>
80004f30:	1169ea63          	bltu	s3,s6,80005044 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xdec>
80004f34:	c8842503          	lw	a0,-888(s0)
80004f38:	01b52023          	sw	s11,0(a0)
80004f3c:	01652223          	sw	s6,4(a0)
80004f40:	01951423          	sh	s9,8(a0)
80004f44:	38c12083          	lw	ra,908(sp)
80004f48:	38812403          	lw	s0,904(sp)
80004f4c:	38412483          	lw	s1,900(sp)
80004f50:	38012903          	lw	s2,896(sp)
80004f54:	37c12983          	lw	s3,892(sp)
80004f58:	37812a03          	lw	s4,888(sp)
80004f5c:	37412a83          	lw	s5,884(sp)
80004f60:	37012b03          	lw	s6,880(sp)
80004f64:	36c12b83          	lw	s7,876(sp)
80004f68:	36812c03          	lw	s8,872(sp)
80004f6c:	36412c83          	lw	s9,868(sp)
80004f70:	36012d03          	lw	s10,864(sp)
80004f74:	35c12d83          	lw	s11,860(sp)
80004f78:	39010113          	addi	sp,sp,912
80004f7c:	00008067          	ret
80004f80:	03000493          	li	s1,48
80004f84:	001c8c93          	addi	s9,s9,1
80004f88:	f94c50e3          	bge	s8,s4,80004f08 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcb0>
80004f8c:	fa5ff06f          	j	80004f30 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E+0xcd8>
80004f90:	8000d637          	lui	a2,0x8000d
80004f94:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004f98:	02800593          	li	a1,40
80004f9c:	00004097          	auipc	ra,0x4
80004fa0:	f10080e7          	jalr	-240(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004fa4:	8000d637          	lui	a2,0x8000d
80004fa8:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80004fac:	02800593          	li	a1,40
80004fb0:	000b8513          	mv	a0,s7
80004fb4:	00004097          	auipc	ra,0x4
80004fb8:	ef8080e7          	jalr	-264(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80004fbc:	8000d537          	lui	a0,0x8000d
80004fc0:	85f50513          	addi	a0,a0,-1953 # 8000c85f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80004fc4:	8000d637          	lui	a2,0x8000d
80004fc8:	9e860613          	addi	a2,a2,-1560 # 8000c9e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.41>
80004fcc:	01c00593          	li	a1,28
80004fd0:	00002097          	auipc	ra,0x2
80004fd4:	008080e7          	jalr	8(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004fd8:	8000d537          	lui	a0,0x8000d
80004fdc:	88c50513          	addi	a0,a0,-1908 # 8000c88c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
80004fe0:	8000d637          	lui	a2,0x8000d
80004fe4:	9f860613          	addi	a2,a2,-1544 # 8000c9f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.42>
80004fe8:	01d00593          	li	a1,29
80004fec:	00002097          	auipc	ra,0x2
80004ff0:	fec080e7          	jalr	-20(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80004ff4:	8000d537          	lui	a0,0x8000d
80004ff8:	8bc50513          	addi	a0,a0,-1860 # 8000c8bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80004ffc:	8000d637          	lui	a2,0x8000d
80005000:	a0860613          	addi	a2,a2,-1528 # 8000ca08 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.43>
80005004:	01c00593          	li	a1,28
80005008:	00002097          	auipc	ra,0x2
8000500c:	fd0080e7          	jalr	-48(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005010:	8000d537          	lui	a0,0x8000d
80005014:	52b50513          	addi	a0,a0,1323 # 8000d52b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.418>
80005018:	8000d637          	lui	a2,0x8000d
8000501c:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005020:	01b00593          	li	a1,27
80005024:	00002097          	auipc	ra,0x2
80005028:	fb4080e7          	jalr	-76(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000502c:	8000d637          	lui	a2,0x8000d
80005030:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005034:	02800593          	li	a1,40
80005038:	000a8513          	mv	a0,s5
8000503c:	00004097          	auipc	ra,0x4
80005040:	e70080e7          	jalr	-400(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80005044:	8000d637          	lui	a2,0x8000d
80005048:	a3860613          	addi	a2,a2,-1480 # 8000ca38 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46>
8000504c:	000b0513          	mv	a0,s6
80005050:	00098593          	mv	a1,s3
80005054:	00004097          	auipc	ra,0x4
80005058:	e58080e7          	jalr	-424(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
8000505c:	8000d537          	lui	a0,0x8000d
80005060:	4f450513          	addi	a0,a0,1268 # 8000d4f4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>
80005064:	8000d637          	lui	a2,0x8000d
80005068:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
8000506c:	01a00593          	li	a1,26
80005070:	00002097          	auipc	ra,0x2
80005074:	f68080e7          	jalr	-152(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80005078:	8000d637          	lui	a2,0x8000d
8000507c:	a5860613          	addi	a2,a2,-1448 # 8000ca58 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.48>
80005080:	000b0513          	mv	a0,s6
80005084:	00098593          	mv	a1,s3
80005088:	00004097          	auipc	ra,0x4
8000508c:	e24080e7          	jalr	-476(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80005090:	8000d637          	lui	a2,0x8000d
80005094:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005098:	02800593          	li	a1,40
8000509c:	00068513          	mv	a0,a3
800050a0:	00004097          	auipc	ra,0x4
800050a4:	e0c080e7          	jalr	-500(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800050a8:	8000d637          	lui	a2,0x8000d
800050ac:	a2860613          	addi	a2,a2,-1496 # 8000ca28 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.45>
800050b0:	000b0513          	mv	a0,s6
800050b4:	00098593          	mv	a1,s3
800050b8:	00004097          	auipc	ra,0x4
800050bc:	df4080e7          	jalr	-524(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
800050c0:	8000d537          	lui	a0,0x8000d
800050c4:	9a050513          	addi	a0,a0,-1632 # 8000c9a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
800050c8:	8000d637          	lui	a2,0x8000d
800050cc:	a7860613          	addi	a2,a2,-1416 # 8000ca78 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.50>
800050d0:	03600593          	li	a1,54
800050d4:	00002097          	auipc	ra,0x2
800050d8:	f04080e7          	jalr	-252(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800050dc:	8000d537          	lui	a0,0x8000d
800050e0:	95850513          	addi	a0,a0,-1704 # 8000c958 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
800050e4:	8000d637          	lui	a2,0x8000d
800050e8:	a6860613          	addi	a2,a2,-1432 # 8000ca68 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.49>
800050ec:	03700593          	li	a1,55
800050f0:	00002097          	auipc	ra,0x2
800050f4:	ee8080e7          	jalr	-280(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800050f8:	8000d637          	lui	a2,0x8000d
800050fc:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80005100:	02800513          	li	a0,40
80005104:	02800593          	li	a1,40
80005108:	00002097          	auipc	ra,0x2
8000510c:	f18080e7          	jalr	-232(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80005110:	8000d637          	lui	a2,0x8000d
80005114:	a4860613          	addi	a2,a2,-1464 # 8000ca48 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.47>
80005118:	00098513          	mv	a0,s3
8000511c:	00098593          	mv	a1,s3
80005120:	00002097          	auipc	ra,0x2
80005124:	f00080e7          	jalr	-256(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80005128:	8000d637          	lui	a2,0x8000d
8000512c:	a1860613          	addi	a2,a2,-1512 # 8000ca18 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.44>
80005130:	00098593          	mv	a1,s3
80005134:	00002097          	auipc	ra,0x2
80005138:	eec080e7          	jalr	-276(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

8000513c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE>:
8000513c:	f4010113          	addi	sp,sp,-192
80005140:	0a112e23          	sw	ra,188(sp)
80005144:	0a812c23          	sw	s0,184(sp)
80005148:	0a912a23          	sw	s1,180(sp)
8000514c:	0b212823          	sw	s2,176(sp)
80005150:	0b312623          	sw	s3,172(sp)
80005154:	0b412423          	sw	s4,168(sp)
80005158:	0b512223          	sw	s5,164(sp)
8000515c:	0b612023          	sw	s6,160(sp)
80005160:	09712e23          	sw	s7,156(sp)
80005164:	09812c23          	sw	s8,152(sp)
80005168:	09912a23          	sw	s9,148(sp)
8000516c:	09a12823          	sw	s10,144(sp)
80005170:	09b12623          	sw	s11,140(sp)
80005174:	0c010413          	addi	s0,sp,192
80005178:	0045a703          	lw	a4,4(a1)
8000517c:	0005a783          	lw	a5,0(a1)
80005180:	00e7e833          	or	a6,a5,a4
80005184:	f8d42823          	sw	a3,-112(s0)
80005188:	660808e3          	beqz	a6,80005ff8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xebc>
8000518c:	00050e93          	mv	t4,a0
80005190:	00c5a683          	lw	a3,12(a1)
80005194:	0085ae03          	lw	t3,8(a1)
80005198:	00de6533          	or	a0,t3,a3
8000519c:	66050ce3          	beqz	a0,80006014 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xed8>
800051a0:	0145a883          	lw	a7,20(a1)
800051a4:	0105a503          	lw	a0,16(a1)
800051a8:	01156833          	or	a6,a0,a7
800051ac:	680802e3          	beqz	a6,80006030 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xef4>
800051b0:	00a78833          	add	a6,a5,a0
800051b4:	00f832b3          	sltu	t0,a6,a5
800051b8:	011708b3          	add	a7,a4,a7
800051bc:	00588333          	add	t1,a7,t0
800051c0:	00e30463          	beq	t1,a4,800051c8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8c>
800051c4:	00e332b3          	sltu	t0,t1,a4
800051c8:	700294e3          	bnez	t0,800060d0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf94>
800051cc:	00d70663          	beq	a4,a3,800051d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9c>
800051d0:	00d732b3          	sltu	t0,a4,a3
800051d4:	0080006f          	j	800051dc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa0>
800051d8:	01c7b2b3          	sltu	t0,a5,t3
800051dc:	700298e3          	bnez	t0,800060ec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xfb0>
800051e0:	01000293          	li	t0,16
800051e4:	f9042303          	lw	t1,-112(s0)
800051e8:	6662f2e3          	bgeu	t0,t1,8000604c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf10>
800051ec:	00a83533          	sltu	a0,a6,a0
800051f0:	00a888b3          	add	a7,a7,a0
800051f4:	01d8d513          	srli	a0,a7,0x1d
800051f8:	660518e3          	bnez	a0,80006068 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf2c>
800051fc:	0185d503          	lhu	a0,24(a1)
80005200:	0018b393          	seqz	t2,a7
80005204:	407005b3          	neg	a1,t2
80005208:	fe05f593          	andi	a1,a1,-32
8000520c:	00b505b3          	add	a1,a0,a1
80005210:	00539393          	slli	t2,t2,0x5
80005214:	fe038313          	addi	t1,t2,-32
80005218:	007812b3          	sll	t0,a6,t2
8000521c:	f6c42a23          	sw	a2,-140(s0)
80005220:	00034663          	bltz	t1,8000522c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf0>
80005224:	00028813          	mv	a6,t0
80005228:	0080006f          	j	80005230 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf4>
8000522c:	00789833          	sll	a6,a7,t2
80005230:	41f35893          	srai	a7,t1,0x1f
80005234:	0058f8b3          	and	a7,a7,t0
80005238:	01085293          	srli	t0,a6,0x10
8000523c:	0012b293          	seqz	t0,t0
80005240:	40500333          	neg	t1,t0
80005244:	ff037313          	andi	t1,t1,-16
80005248:	006585b3          	add	a1,a1,t1
8000524c:	00429293          	slli	t0,t0,0x4
80005250:	00581833          	sll	a6,a6,t0
80005254:	01f2c313          	xori	t1,t0,31
80005258:	0018d393          	srli	t2,a7,0x1
8000525c:	0063d333          	srl	t1,t2,t1
80005260:	00686333          	or	t1,a6,t1
80005264:	005898b3          	sll	a7,a7,t0
80005268:	01885813          	srli	a6,a6,0x18
8000526c:	00183813          	seqz	a6,a6
80005270:	410002b3          	neg	t0,a6
80005274:	ff82f293          	andi	t0,t0,-8
80005278:	005585b3          	add	a1,a1,t0
8000527c:	00381813          	slli	a6,a6,0x3
80005280:	010312b3          	sll	t0,t1,a6
80005284:	01f84313          	xori	t1,a6,31
80005288:	0018d393          	srli	t2,a7,0x1
8000528c:	0063d333          	srl	t1,t2,t1
80005290:	0062e333          	or	t1,t0,t1
80005294:	01089833          	sll	a6,a7,a6
80005298:	01c2d893          	srli	a7,t0,0x1c
8000529c:	0018b893          	seqz	a7,a7
800052a0:	411002b3          	neg	t0,a7
800052a4:	ffc2f293          	andi	t0,t0,-4
800052a8:	005585b3          	add	a1,a1,t0
800052ac:	00289893          	slli	a7,a7,0x2
800052b0:	011312b3          	sll	t0,t1,a7
800052b4:	01f8c313          	xori	t1,a7,31
800052b8:	00185393          	srli	t2,a6,0x1
800052bc:	0063d333          	srl	t1,t2,t1
800052c0:	0062e333          	or	t1,t0,t1
800052c4:	011814b3          	sll	s1,a6,a7
800052c8:	01e2d813          	srli	a6,t0,0x1e
800052cc:	00183a93          	seqz	s5,a6
800052d0:	41500833          	neg	a6,s5
800052d4:	ffe87813          	andi	a6,a6,-2
800052d8:	010585b3          	add	a1,a1,a6
800052dc:	001a9a93          	slli	s5,s5,0x1
800052e0:	01531833          	sll	a6,t1,s5
800052e4:	01fac893          	xori	a7,s5,31
800052e8:	0014d293          	srli	t0,s1,0x1
800052ec:	0112d8b3          	srl	a7,t0,a7
800052f0:	01186933          	or	s2,a6,a7
800052f4:	00092b13          	slti	s6,s2,0
800052f8:	001b4a13          	xori	s4,s6,1
800052fc:	414589b3          	sub	s3,a1,s4
80005300:	01c7b5b3          	sltu	a1,a5,t3
80005304:	40d706b3          	sub	a3,a4,a3
80005308:	40b688b3          	sub	a7,a3,a1
8000530c:	41c782b3          	sub	t0,a5,t3
80005310:	f8542c23          	sw	t0,-104(s0)
80005314:	f9142e23          	sw	a7,-100(s0)
80005318:	413505b3          	sub	a1,a0,s3
8000531c:	01059593          	slli	a1,a1,0x10
80005320:	faa41023          	sh	a0,-96(s0)
80005324:	5605c0e3          	bltz	a1,80006084 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf48>
80005328:	4105d313          	srai	t1,a1,0x10
8000532c:	03f37593          	andi	a1,t1,63
80005330:	fe058693          	addi	a3,a1,-32
80005334:	fff5c613          	not	a2,a1
80005338:	0206c663          	bltz	a3,80005364 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x228>
8000533c:	00b29c33          	sll	s8,t0,a1
80005340:	006293b3          	sll	t2,t0,t1
80005344:	41f6d813          	srai	a6,a3,0x1f
80005348:	00787f33          	and	t5,a6,t2
8000534c:	0206dc63          	bgez	a3,80005384 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x248>
80005350:	001c1393          	slli	t2,s8,0x1
80005354:	00c393b3          	sll	t2,t2,a2
80005358:	006f5e33          	srl	t3,t5,t1
8000535c:	007e63b3          	or	t2,t3,t2
80005360:	0280006f          	j	80005388 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x24c>
80005364:	00689833          	sll	a6,a7,t1
80005368:	0012d393          	srli	t2,t0,0x1
8000536c:	00c3d3b3          	srl	t2,t2,a2
80005370:	00786c33          	or	s8,a6,t2
80005374:	006293b3          	sll	t2,t0,t1
80005378:	41f6d813          	srai	a6,a3,0x1f
8000537c:	00787f33          	and	t5,a6,t2
80005380:	fc06c8e3          	bltz	a3,80005350 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x214>
80005384:	00bc53b3          	srl	t2,s8,a1
80005388:	006c5333          	srl	t1,s8,t1
8000538c:	00687333          	and	t1,a6,t1
80005390:	fa642623          	sw	t1,-84(s0)
80005394:	0053c2b3          	xor	t0,t2,t0
80005398:	011348b3          	xor	a7,t1,a7
8000539c:	0112e8b3          	or	a7,t0,a7
800053a0:	fa742423          	sw	t2,-88(s0)
800053a4:	42089ee3          	bnez	a7,80005fe0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xea4>
800053a8:	f8e42e23          	sw	a4,-100(s0)
800053ac:	f8f42c23          	sw	a5,-104(s0)
800053b0:	faa41023          	sh	a0,-96(s0)
800053b4:	00b79533          	sll	a0,a5,a1
800053b8:	0206c463          	bltz	a3,800053e0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2a4>
800053bc:	00050d13          	mv	s10,a0
800053c0:	00a87bb3          	and	s7,a6,a0
800053c4:	00b55533          	srl	a0,a0,a1
800053c8:	0206da63          	bgez	a3,800053fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2c0>
800053cc:	001d1693          	slli	a3,s10,0x1
800053d0:	00c69633          	sll	a2,a3,a2
800053d4:	00bbd5b3          	srl	a1,s7,a1
800053d8:	00c5e5b3          	or	a1,a1,a2
800053dc:	0240006f          	j	80005400 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x2c4>
800053e0:	0017d893          	srli	a7,a5,0x1
800053e4:	00c8d8b3          	srl	a7,a7,a2
800053e8:	00b712b3          	sll	t0,a4,a1
800053ec:	0112ed33          	or	s10,t0,a7
800053f0:	00a87bb3          	and	s7,a6,a0
800053f4:	00bd5533          	srl	a0,s10,a1
800053f8:	fc06cae3          	bltz	a3,800053cc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x290>
800053fc:	00050593          	mv	a1,a0
80005400:	00a87533          	and	a0,a6,a0
80005404:	faa42623          	sw	a0,-84(s0)
80005408:	00f5c7b3          	xor	a5,a1,a5
8000540c:	00e54533          	xor	a0,a0,a4
80005410:	00a7e533          	or	a0,a5,a0
80005414:	fab42423          	sw	a1,-88(s0)
80005418:	3c0514e3          	bnez	a0,80005fe0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xea4>
8000541c:	f9e42a23          	sw	t5,-108(s0)
80005420:	f9742623          	sw	s7,-116(s0)
80005424:	f5d42e23          	sw	t4,-164(s0)
80005428:	fa000513          	li	a0,-96
8000542c:	41350533          	sub	a0,a0,s3
80005430:	01051513          	slli	a0,a0,0x10
80005434:	41055513          	srai	a0,a0,0x10
80005438:	43f50513          	addi	a0,a0,1087
8000543c:	05000593          	li	a1,80
80005440:	00005097          	auipc	ra,0x5
80005444:	b3c080e7          	jalr	-1220(ra) # 80009f7c <__mulsi3>
80005448:	000015b7          	lui	a1,0x1
8000544c:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start1+0x3f>
80005450:	00006097          	auipc	ra,0x6
80005454:	b60080e7          	jalr	-1184(ra) # 8000afb0 <__divsi3>
80005458:	05100593          	li	a1,81
8000545c:	4ab576e3          	bgeu	a0,a1,80006108 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xfcc>
80005460:	015495b3          	sll	a1,s1,s5
80005464:	01eb0b13          	addi	s6,s6,30
80005468:	0015d613          	srli	a2,a1,0x1
8000546c:	01665633          	srl	a2,a2,s6
80005470:	00451513          	slli	a0,a0,0x4
80005474:	8000d6b7          	lui	a3,0x8000d
80005478:	a8868693          	addi	a3,a3,-1400 # 8000ca88 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>
8000547c:	00a68533          	add	a0,a3,a0
80005480:	00052a83          	lw	s5,0(a0)
80005484:	00452483          	lw	s1,4(a0)
80005488:	00851c83          	lh	s9,8(a0)
8000548c:	00a55503          	lhu	a0,10(a0)
80005490:	f8a42423          	sw	a0,-120(s0)
80005494:	01491533          	sll	a0,s2,s4
80005498:	00c56933          	or	s2,a0,a2
8000549c:	01459b33          	sll	s6,a1,s4
800054a0:	00048513          	mv	a0,s1
800054a4:	00000593          	li	a1,0
800054a8:	00090613          	mv	a2,s2
800054ac:	00000693          	li	a3,0
800054b0:	00005097          	auipc	ra,0x5
800054b4:	b14080e7          	jalr	-1260(ra) # 80009fc4 <__muldi3>
800054b8:	00050d93          	mv	s11,a0
800054bc:	f8b42223          	sw	a1,-124(s0)
800054c0:	00048513          	mv	a0,s1
800054c4:	00000593          	li	a1,0
800054c8:	000b0613          	mv	a2,s6
800054cc:	00000693          	li	a3,0
800054d0:	00005097          	auipc	ra,0x5
800054d4:	af4080e7          	jalr	-1292(ra) # 80009fc4 <__muldi3>
800054d8:	00050a13          	mv	s4,a0
800054dc:	f8b42023          	sw	a1,-128(s0)
800054e0:	000a8513          	mv	a0,s5
800054e4:	00000593          	li	a1,0
800054e8:	00090613          	mv	a2,s2
800054ec:	00000693          	li	a3,0
800054f0:	00005097          	auipc	ra,0x5
800054f4:	ad4080e7          	jalr	-1324(ra) # 80009fc4 <__muldi3>
800054f8:	00050913          	mv	s2,a0
800054fc:	f6b42e23          	sw	a1,-132(s0)
80005500:	000a8513          	mv	a0,s5
80005504:	00000593          	li	a1,0
80005508:	000b0613          	mv	a2,s6
8000550c:	00000693          	li	a3,0
80005510:	00005097          	auipc	ra,0x5
80005514:	ab4080e7          	jalr	-1356(ra) # 80009fc4 <__muldi3>
80005518:	00b905b3          	add	a1,s2,a1
8000551c:	0125b533          	sltu	a0,a1,s2
80005520:	01458a33          	add	s4,a1,s4
80005524:	00ba35b3          	sltu	a1,s4,a1
80005528:	00b50533          	add	a0,a0,a1
8000552c:	800005b7          	lui	a1,0x80000
80005530:	00ba05b3          	add	a1,s4,a1
80005534:	80000bb7          	lui	s7,0x80000
80005538:	0145b5b3          	sltu	a1,a1,s4
8000553c:	00b50533          	add	a0,a0,a1
80005540:	f6a42223          	sw	a0,-156(s0)
80005544:	41300533          	neg	a0,s3
80005548:	419509b3          	sub	s3,a0,s9
8000554c:	00048513          	mv	a0,s1
80005550:	00000593          	li	a1,0
80005554:	000c0613          	mv	a2,s8
80005558:	00000693          	li	a3,0
8000555c:	00005097          	auipc	ra,0x5
80005560:	a68080e7          	jalr	-1432(ra) # 80009fc4 <__muldi3>
80005564:	f6a42c23          	sw	a0,-136(s0)
80005568:	f6b42823          	sw	a1,-144(s0)
8000556c:	00048513          	mv	a0,s1
80005570:	00000593          	li	a1,0
80005574:	f9442b03          	lw	s6,-108(s0)
80005578:	000b0613          	mv	a2,s6
8000557c:	00000693          	li	a3,0
80005580:	00005097          	auipc	ra,0x5
80005584:	a44080e7          	jalr	-1468(ra) # 80009fc4 <__muldi3>
80005588:	00050913          	mv	s2,a0
8000558c:	f6b42623          	sw	a1,-148(s0)
80005590:	000a8513          	mv	a0,s5
80005594:	00000593          	li	a1,0
80005598:	000c0613          	mv	a2,s8
8000559c:	00000693          	li	a3,0
800055a0:	00005097          	auipc	ra,0x5
800055a4:	a24080e7          	jalr	-1500(ra) # 80009fc4 <__muldi3>
800055a8:	00050a13          	mv	s4,a0
800055ac:	f6b42423          	sw	a1,-152(s0)
800055b0:	000a8513          	mv	a0,s5
800055b4:	00000593          	li	a1,0
800055b8:	000b0613          	mv	a2,s6
800055bc:	00000693          	li	a3,0
800055c0:	00005097          	auipc	ra,0x5
800055c4:	a04080e7          	jalr	-1532(ra) # 80009fc4 <__muldi3>
800055c8:	00ba05b3          	add	a1,s4,a1
800055cc:	0145b533          	sltu	a0,a1,s4
800055d0:	01258933          	add	s2,a1,s2
800055d4:	00b935b3          	sltu	a1,s2,a1
800055d8:	00b50533          	add	a0,a0,a1
800055dc:	f6a42023          	sw	a0,-160(s0)
800055e0:	01790533          	add	a0,s2,s7
800055e4:	01253c33          	sltu	s8,a0,s2
800055e8:	00048513          	mv	a0,s1
800055ec:	00000593          	li	a1,0
800055f0:	000d0613          	mv	a2,s10
800055f4:	00000693          	li	a3,0
800055f8:	00005097          	auipc	ra,0x5
800055fc:	9cc080e7          	jalr	-1588(ra) # 80009fc4 <__muldi3>
80005600:	00050913          	mv	s2,a0
80005604:	00058a13          	mv	s4,a1
80005608:	00048513          	mv	a0,s1
8000560c:	00000593          	li	a1,0
80005610:	f8c42b83          	lw	s7,-116(s0)
80005614:	000b8613          	mv	a2,s7
80005618:	00000693          	li	a3,0
8000561c:	00005097          	auipc	ra,0x5
80005620:	9a8080e7          	jalr	-1624(ra) # 80009fc4 <__muldi3>
80005624:	00050493          	mv	s1,a0
80005628:	00058b13          	mv	s6,a1
8000562c:	000a8513          	mv	a0,s5
80005630:	00000593          	li	a1,0
80005634:	000d0613          	mv	a2,s10
80005638:	00000693          	li	a3,0
8000563c:	00005097          	auipc	ra,0x5
80005640:	988080e7          	jalr	-1656(ra) # 80009fc4 <__muldi3>
80005644:	00050c93          	mv	s9,a0
80005648:	00058d13          	mv	s10,a1
8000564c:	000a8513          	mv	a0,s5
80005650:	00000593          	li	a1,0
80005654:	000b8613          	mv	a2,s7
80005658:	00000693          	li	a3,0
8000565c:	00005097          	auipc	ra,0x5
80005660:	968080e7          	jalr	-1688(ra) # 80009fc4 <__muldi3>
80005664:	00bc85b3          	add	a1,s9,a1
80005668:	0195b533          	sltu	a0,a1,s9
8000566c:	009584b3          	add	s1,a1,s1
80005670:	00b4b5b3          	sltu	a1,s1,a1
80005674:	00b50533          	add	a0,a0,a1
80005678:	80000bb7          	lui	s7,0x80000
8000567c:	01748bb3          	add	s7,s1,s7
80005680:	009bb5b3          	sltu	a1,s7,s1
80005684:	00b505b3          	add	a1,a0,a1
80005688:	012d0933          	add	s2,s10,s2
8000568c:	01a93633          	sltu	a2,s2,s10
80005690:	00ca0633          	add	a2,s4,a2
80005694:	01690b33          	add	s6,s2,s6
80005698:	012b3533          	sltu	a0,s6,s2
8000569c:	00bb02b3          	add	t0,s6,a1
800056a0:	f7c42583          	lw	a1,-132(s0)
800056a4:	00bd85b3          	add	a1,s11,a1
800056a8:	01b5b6b3          	sltu	a3,a1,s11
800056ac:	f8442703          	lw	a4,-124(s0)
800056b0:	00d706b3          	add	a3,a4,a3
800056b4:	f8042703          	lw	a4,-128(s0)
800056b8:	00e58733          	add	a4,a1,a4
800056bc:	00b735b3          	sltu	a1,a4,a1
800056c0:	00b685b3          	add	a1,a3,a1
800056c4:	f6442683          	lw	a3,-156(s0)
800056c8:	00d706b3          	add	a3,a4,a3
800056cc:	00e6b733          	sltu	a4,a3,a4
800056d0:	00e585b3          	add	a1,a1,a4
800056d4:	00168313          	addi	t1,a3,1
800056d8:	00133693          	seqz	a3,t1
800056dc:	00d583b3          	add	t2,a1,a3
800056e0:	03f9f793          	andi	a5,s3,63
800056e4:	fe078593          	addi	a1,a5,-32
800056e8:	fff7ce13          	not	t3,a5
800056ec:	f8b42a23          	sw	a1,-108(s0)
800056f0:	0005c663          	bltz	a1,800056fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x5c0>
800056f4:	00f3dbb3          	srl	s7,t2,a5
800056f8:	0140006f          	j	8000570c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x5d0>
800056fc:	00139593          	slli	a1,t2,0x1
80005700:	01c595b3          	sll	a1,a1,t3
80005704:	013356b3          	srl	a3,t1,s3
80005708:	00b6ebb3          	or	s7,a3,a1
8000570c:	00a60633          	add	a2,a2,a0
80005710:	0162b6b3          	sltu	a3,t0,s6
80005714:	f6042583          	lw	a1,-160(s0)
80005718:	018585b3          	add	a1,a1,s8
8000571c:	f9442503          	lw	a0,-108(s0)
80005720:	00052513          	slti	a0,a0,0
80005724:	00100713          	li	a4,1
80005728:	f8f42623          	sw	a5,-116(s0)
8000572c:	00f717b3          	sll	a5,a4,a5
80005730:	fff50813          	addi	a6,a0,-1
80005734:	00f87833          	and	a6,a6,a5
80005738:	40a00533          	neg	a0,a0
8000573c:	01371733          	sll	a4,a4,s3
80005740:	00e578b3          	and	a7,a0,a4
80005744:	0018b513          	seqz	a0,a7
80005748:	40a80533          	sub	a0,a6,a0
8000574c:	f8a42223          	sw	a0,-124(s0)
80005750:	004bd513          	srli	a0,s7,0x4
80005754:	27100713          	li	a4,625
80005758:	fff88793          	addi	a5,a7,-1
8000575c:	f8f42023          	sw	a5,-128(s0)
80005760:	f5042823          	sw	a6,-176(s0)
80005764:	f5142a23          	sw	a7,-172(s0)
80005768:	f4542c23          	sw	t0,-168(s0)
8000576c:	f7c42e23          	sw	t3,-132(s0)
80005770:	02e57263          	bgeu	a0,a4,80005794 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x658>
80005774:	06400513          	li	a0,100
80005778:	04abf463          	bgeu	s7,a0,800057c0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x684>
8000577c:	00a00513          	li	a0,10
80005780:	00abb713          	sltiu	a4,s7,10
80005784:	00abf463          	bgeu	s7,a0,8000578c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x650>
80005788:	00100513          	li	a0,1
8000578c:	00174713          	xori	a4,a4,1
80005790:	08c0006f          	j	8000581c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
80005794:	000f4537          	lui	a0,0xf4
80005798:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2e92>
8000579c:	02abfe63          	bgeu	s7,a0,800057d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x69c>
800057a0:	00018537          	lui	a0,0x18
800057a4:	6a050513          	addi	a0,a0,1696 # 186a0 <.Lline_table_start2+0x172f2>
800057a8:	00abb733          	sltu	a4,s7,a0
800057ac:	00abf663          	bgeu	s7,a0,800057b8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x67c>
800057b0:	00002537          	lui	a0,0x2
800057b4:	71050513          	addi	a0,a0,1808 # 2710 <.Lline_table_start2+0x1362>
800057b8:	00574713          	xori	a4,a4,5
800057bc:	0600006f          	j	8000581c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
800057c0:	3e800793          	li	a5,1000
800057c4:	3e8bb713          	sltiu	a4,s7,1000
800057c8:	00fbe463          	bltu	s7,a5,800057d0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x694>
800057cc:	3e800513          	li	a0,1000
800057d0:	00374713          	xori	a4,a4,3
800057d4:	0480006f          	j	8000581c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
800057d8:	05f5e537          	lui	a0,0x5f5e
800057dc:	10050513          	addi	a0,a0,256 # 5f5e100 <.Lline_table_start2+0x5f5cd52>
800057e0:	02abf263          	bgeu	s7,a0,80005804 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6c8>
800057e4:	00989537          	lui	a0,0x989
800057e8:	68050513          	addi	a0,a0,1664 # 989680 <.Lline_table_start2+0x9882d2>
800057ec:	00abb733          	sltu	a4,s7,a0
800057f0:	00abf663          	bgeu	s7,a0,800057fc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6c0>
800057f4:	000f4537          	lui	a0,0xf4
800057f8:	24050513          	addi	a0,a0,576 # f4240 <.Lline_table_start2+0xf2e92>
800057fc:	00774713          	xori	a4,a4,7
80005800:	01c0006f          	j	8000581c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6e0>
80005804:	3b9ad737          	lui	a4,0x3b9ad
80005808:	a0070793          	addi	a5,a4,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
8000580c:	00fbb733          	sltu	a4,s7,a5
80005810:	00fbe463          	bltu	s7,a5,80005818 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x6dc>
80005814:	00078513          	mv	a0,a5
80005818:	00974713          	xori	a4,a4,9
8000581c:	00d60633          	add	a2,a2,a3
80005820:	f6c42223          	sw	a2,-156(s0)
80005824:	f8442783          	lw	a5,-124(s0)
80005828:	00f3fcb3          	and	s9,t2,a5
8000582c:	f8042803          	lw	a6,-128(s0)
80005830:	01037d33          	and	s10,t1,a6
80005834:	f8842603          	lw	a2,-120(s0)
80005838:	00070a13          	mv	s4,a4
8000583c:	40c70633          	sub	a2,a4,a2
80005840:	00160613          	addi	a2,a2,1
80005844:	f4c42223          	sw	a2,-188(s0)
80005848:	f7842683          	lw	a3,-136(s0)
8000584c:	f6842603          	lw	a2,-152(s0)
80005850:	00c68633          	add	a2,a3,a2
80005854:	00d636b3          	sltu	a3,a2,a3
80005858:	f7042703          	lw	a4,-144(s0)
8000585c:	00d706b3          	add	a3,a4,a3
80005860:	f6c42703          	lw	a4,-148(s0)
80005864:	00e60733          	add	a4,a2,a4
80005868:	00c73633          	sltu	a2,a4,a2
8000586c:	00c68633          	add	a2,a3,a2
80005870:	00b705b3          	add	a1,a4,a1
80005874:	00e5b6b3          	sltu	a3,a1,a4
80005878:	00d60633          	add	a2,a2,a3
8000587c:	00b336b3          	sltu	a3,t1,a1
80005880:	00d60633          	add	a2,a2,a3
80005884:	f6742423          	sw	t2,-152(s0)
80005888:	40c38633          	sub	a2,t2,a2
8000588c:	f6642623          	sw	t1,-148(s0)
80005890:	40b305b3          	sub	a1,t1,a1
80005894:	f4b42423          	sw	a1,-184(s0)
80005898:	00158593          	addi	a1,a1,1 # 80000001 <_start+0x1>
8000589c:	0015bc13          	seqz	s8,a1
800058a0:	f4c42623          	sw	a2,-180(s0)
800058a4:	01860633          	add	a2,a2,s8
800058a8:	00060a93          	mv	s5,a2
800058ac:	00f67633          	and	a2,a2,a5
800058b0:	f6c42023          	sw	a2,-160(s0)
800058b4:	f6b42c23          	sw	a1,-136(s0)
800058b8:	0105f5b3          	and	a1,a1,a6
800058bc:	f6b42823          	sw	a1,-144(s0)
800058c0:	fff00993          	li	s3,-1
800058c4:	f9442583          	lw	a1,-108(s0)
800058c8:	41f5d593          	srai	a1,a1,0x1f
800058cc:	f8b42423          	sw	a1,-120(s0)
800058d0:	f7442d83          	lw	s11,-140(s0)
800058d4:	fff00c13          	li	s8,-1
800058d8:	00050493          	mv	s1,a0
800058dc:	f9042b03          	lw	s6,-112(s0)
800058e0:	018b0b33          	add	s6,s6,s8
800058e4:	000b8513          	mv	a0,s7
800058e8:	00048593          	mv	a1,s1
800058ec:	00005097          	auipc	ra,0x5
800058f0:	250080e7          	jalr	592(ra) # 8000ab3c <__udivsi3>
800058f4:	00050913          	mv	s2,a0
800058f8:	00048593          	mv	a1,s1
800058fc:	00004097          	auipc	ra,0x4
80005900:	680080e7          	jalr	1664(ra) # 80009f7c <__mulsi3>
80005904:	793b0e63          	beq	s6,s3,800060a0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf64>
80005908:	40ab8bb3          	sub	s7,s7,a0
8000590c:	03090613          	addi	a2,s2,48
80005910:	00cd8023          	sb	a2,0(s11)
80005914:	f8c42703          	lw	a4,-116(s0)
80005918:	00eb9533          	sll	a0,s7,a4
8000591c:	f9442583          	lw	a1,-108(s0)
80005920:	0005c663          	bltz	a1,8000592c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x7f0>
80005924:	00050593          	mv	a1,a0
80005928:	0100006f          	j	80005938 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x7fc>
8000592c:	001bd593          	srli	a1,s7,0x1
80005930:	f7c42683          	lw	a3,-132(s0)
80005934:	00d5d5b3          	srl	a1,a1,a3
80005938:	000a8913          	mv	s2,s5
8000593c:	f8842683          	lw	a3,-120(s0)
80005940:	00a6f533          	and	a0,a3,a0
80005944:	019585b3          	add	a1,a1,s9
80005948:	01a50333          	add	t1,a0,s10
8000594c:	00a333b3          	sltu	t2,t1,a0
80005950:	007583b3          	add	t2,a1,t2
80005954:	007a8863          	beq	s5,t2,80005964 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x828>
80005958:	0123b533          	sltu	a0,t2,s2
8000595c:	00050a63          	beqz	a0,80005970 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x834>
80005960:	0480006f          	j	800059a8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x86c>
80005964:	f7842503          	lw	a0,-136(s0)
80005968:	00a33533          	sltu	a0,t1,a0
8000596c:	02051e63          	bnez	a0,800059a8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x86c>
80005970:	018a0533          	add	a0,s4,s8
80005974:	05350463          	beq	a0,s3,800059bc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x880>
80005978:	00a00593          	li	a1,10
8000597c:	00048513          	mv	a0,s1
80005980:	00005097          	auipc	ra,0x5
80005984:	1bc080e7          	jalr	444(ra) # 8000ab3c <__udivsi3>
80005988:	fffc0c13          	addi	s8,s8,-1
8000598c:	001d8d93          	addi	s11,s11,1
80005990:	00a00593          	li	a1,10
80005994:	f4b4f2e3          	bgeu	s1,a1,800058d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x79c>
80005998:	8000d537          	lui	a0,0x8000d
8000599c:	05050513          	addi	a0,a0,80 # 8000d050 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.59>
800059a0:	00004097          	auipc	ra,0x4
800059a4:	c94080e7          	jalr	-876(ra) # 80009634 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>
800059a8:	00e49733          	sll	a4,s1,a4
800059ac:	f9442503          	lw	a0,-108(s0)
800059b0:	16054663          	bltz	a0,80005b1c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9e0>
800059b4:	00070593          	mv	a1,a4
800059b8:	1700006f          	j	80005b28 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x9ec>
800059bc:	00000d93          	li	s11,0
800059c0:	41800b33          	neg	s6,s8
800059c4:	00100493          	li	s1,1
800059c8:	f7442a83          	lw	s5,-140(s0)
800059cc:	f7042703          	lw	a4,-144(s0)
800059d0:	f6042a03          	lw	s4,-160(s0)
800059d4:	0100006f          	j	800059e4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8a8>
800059d8:	014cb533          	sltu	a0,s9,s4
800059dc:	001b0b13          	addi	s6,s6,1
800059e0:	0c051863          	bnez	a0,80005ab0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x974>
800059e4:	f9042503          	lw	a0,-112(s0)
800059e8:	6cab7863          	bgeu	s6,a0,800060b8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xf7c>
800059ec:	00070993          	mv	s3,a4
800059f0:	000d8b93          	mv	s7,s11
800059f4:	00048c13          	mv	s8,s1
800059f8:	00a00613          	li	a2,10
800059fc:	000d0513          	mv	a0,s10
80005a00:	000c8593          	mv	a1,s9
80005a04:	00000693          	li	a3,0
80005a08:	00004097          	auipc	ra,0x4
80005a0c:	5bc080e7          	jalr	1468(ra) # 80009fc4 <__muldi3>
80005a10:	00050c93          	mv	s9,a0
80005a14:	00058913          	mv	s2,a1
80005a18:	00a00613          	li	a2,10
80005a1c:	00048513          	mv	a0,s1
80005a20:	000d8593          	mv	a1,s11
80005a24:	00000693          	li	a3,0
80005a28:	00004097          	auipc	ra,0x4
80005a2c:	59c080e7          	jalr	1436(ra) # 80009fc4 <__muldi3>
80005a30:	00050493          	mv	s1,a0
80005a34:	00058d93          	mv	s11,a1
80005a38:	00a00613          	li	a2,10
80005a3c:	00098513          	mv	a0,s3
80005a40:	000a0593          	mv	a1,s4
80005a44:	00000693          	li	a3,0
80005a48:	00004097          	auipc	ra,0x4
80005a4c:	57c080e7          	jalr	1404(ra) # 80009fc4 <__muldi3>
80005a50:	00050713          	mv	a4,a0
80005a54:	00058a13          	mv	s4,a1
80005a58:	f9442503          	lw	a0,-108(s0)
80005a5c:	00054863          	bltz	a0,80005a6c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x930>
80005a60:	f8c42503          	lw	a0,-116(s0)
80005a64:	00a95533          	srl	a0,s2,a0
80005a68:	01c0006f          	j	80005a84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x948>
80005a6c:	f8c42503          	lw	a0,-116(s0)
80005a70:	00acd533          	srl	a0,s9,a0
80005a74:	00191593          	slli	a1,s2,0x1
80005a78:	f7c42603          	lw	a2,-132(s0)
80005a7c:	00c595b3          	sll	a1,a1,a2
80005a80:	00b56533          	or	a0,a0,a1
80005a84:	f8042583          	lw	a1,-128(s0)
80005a88:	00bcfd33          	and	s10,s9,a1
80005a8c:	f8442583          	lw	a1,-124(s0)
80005a90:	00b97cb3          	and	s9,s2,a1
80005a94:	03050993          	addi	s3,a0,48
80005a98:	016a8533          	add	a0,s5,s6
80005a9c:	01350023          	sb	s3,0(a0)
80005aa0:	f39a1ce3          	bne	s4,s9,800059d8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x89c>
80005aa4:	00ed3533          	sltu	a0,s10,a4
80005aa8:	001b0b13          	addi	s6,s6,1
80005aac:	f2050ce3          	beqz	a0,800059e4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0x8a8>
80005ab0:	f5842583          	lw	a1,-168(s0)
80005ab4:	f6c42603          	lw	a2,-148(s0)
80005ab8:	00b63533          	sltu	a0,a2,a1
80005abc:	f6842683          	lw	a3,-152(s0)
80005ac0:	f6442783          	lw	a5,-156(s0)
80005ac4:	40f686b3          	sub	a3,a3,a5
80005ac8:	40a686b3          	sub	a3,a3,a0
80005acc:	40b60633          	sub	a2,a2,a1
80005ad0:	00048513          	mv	a0,s1
80005ad4:	000d8593          	mv	a1,s11
80005ad8:	f6e42823          	sw	a4,-144(s0)
80005adc:	00004097          	auipc	ra,0x4
80005ae0:	4e8080e7          	jalr	1256(ra) # 80009fc4 <__muldi3>
80005ae4:	f7042e03          	lw	t3,-144(s0)
80005ae8:	00950633          	add	a2,a0,s1
80005aec:	00a636b3          	sltu	a3,a2,a0
80005af0:	01ae3733          	sltu	a4,t3,s10
80005af4:	419a07b3          	sub	a5,s4,s9
80005af8:	40e787b3          	sub	a5,a5,a4
80005afc:	01b58733          	add	a4,a1,s11
80005b00:	f5042303          	lw	t1,-176(s0)
80005b04:	0c678a63          	beq	a5,t1,80005bd8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa9c>
80005b08:	0067b7b3          	sltu	a5,a5,t1
80005b0c:	f5442383          	lw	t2,-172(s0)
80005b10:	00d706b3          	add	a3,a4,a3
80005b14:	0c078c63          	beqz	a5,80005bec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xab0>
80005b18:	0f00006f          	j	80005c08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005b1c:	0014d493          	srli	s1,s1,0x1
80005b20:	f7c42503          	lw	a0,-132(s0)
80005b24:	00a4d5b3          	srl	a1,s1,a0
80005b28:	f5c42f83          	lw	t6,-164(s0)
80005b2c:	f5842783          	lw	a5,-168(s0)
80005b30:	f6c42803          	lw	a6,-148(s0)
80005b34:	00f83533          	sltu	a0,a6,a5
80005b38:	f6842683          	lw	a3,-152(s0)
80005b3c:	f6442883          	lw	a7,-156(s0)
80005b40:	411686b3          	sub	a3,a3,a7
80005b44:	40a686b3          	sub	a3,a3,a0
80005b48:	40f802b3          	sub	t0,a6,a5
80005b4c:	00128513          	addi	a0,t0,1
80005b50:	0012b793          	seqz	a5,t0
80005b54:	40f688b3          	sub	a7,a3,a5
80005b58:	fff28293          	addi	t0,t0,-1
80005b5c:	00788663          	beq	a7,t2,80005b68 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa2c>
80005b60:	0113b833          	sltu	a6,t2,a7
80005b64:	0080006f          	j	80005b6c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa30>
80005b68:	00533833          	sltu	a6,t1,t0
80005b6c:	f8842783          	lw	a5,-120(s0)
80005b70:	00e7f7b3          	and	a5,a5,a4
80005b74:	00153f13          	seqz	t5,a0
80005b78:	f7842e83          	lw	t4,-136(s0)
80005b7c:	006eb733          	sltu	a4,t4,t1
80005b80:	40790e33          	sub	t3,s2,t2
80005b84:	40ee0733          	sub	a4,t3,a4
80005b88:	406e8eb3          	sub	t4,t4,t1
80005b8c:	00b70c63          	beq	a4,a1,80005ba4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa68>
80005b90:	00b73e33          	sltu	t3,a4,a1
80005b94:	f7442483          	lw	s1,-140(s0)
80005b98:	01e686b3          	add	a3,a3,t5
80005b9c:	00081c63          	bnez	a6,80005bb4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa78>
80005ba0:	0200006f          	j	80005bc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005ba4:	00febe33          	sltu	t3,t4,a5
80005ba8:	f7442483          	lw	s1,-140(s0)
80005bac:	01e686b3          	add	a3,a3,t5
80005bb0:	00080863          	beqz	a6,80005bc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005bb4:	06b70663          	beq	a4,a1,80005c20 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xae4>
80005bb8:	00b73733          	sltu	a4,a4,a1
80005bbc:	08070063          	beqz	a4,80005c3c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005bc0:	00030713          	mv	a4,t1
80005bc4:	00038813          	mv	a6,t2
80005bc8:	12769263          	bne	a3,t2,80005cec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb0>
80005bcc:	00a73633          	sltu	a2,a4,a0
80005bd0:	12061263          	bnez	a2,80005cf4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb8>
80005bd4:	2d40006f          	j	80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005bd8:	41ae07b3          	sub	a5,t3,s10
80005bdc:	f5442383          	lw	t2,-172(s0)
80005be0:	0077b7b3          	sltu	a5,a5,t2
80005be4:	00d706b3          	add	a3,a4,a3
80005be8:	02079063          	bnez	a5,80005c08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005bec:	00953733          	sltu	a4,a0,s1
80005bf0:	41b585b3          	sub	a1,a1,s11
80005bf4:	40e585b3          	sub	a1,a1,a4
80005bf8:	40950533          	sub	a0,a0,s1
80005bfc:	11958e63          	beq	a1,s9,80005d18 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbdc>
80005c00:	00bcb733          	sltu	a4,s9,a1
80005c04:	10071e63          	bnez	a4,80005d20 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbe4>
80005c08:	000d0493          	mv	s1,s10
80005c0c:	000c8913          	mv	s2,s9
80005c10:	1d969a63          	bne	a3,s9,80005de4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca8>
80005c14:	00c4b533          	sltu	a0,s1,a2
80005c18:	1c051a63          	bnez	a0,80005dec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcb0>
80005c1c:	2f80006f          	j	80005f14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005c20:	00feb733          	sltu	a4,t4,a5
80005c24:	00070c63          	beqz	a4,80005c3c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005c28:	f99ff06f          	j	80005bc0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa84>
80005c2c:	00b3beb3          	sltu	t4,t2,a1
80005c30:	00070313          	mv	t1,a4
80005c34:	00080393          	mv	t2,a6
80005c38:	0a0e9863          	bnez	t4,80005ce8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005c3c:	00f30733          	add	a4,t1,a5
80005c40:	00673833          	sltu	a6,a4,t1
80005c44:	00b38e33          	add	t3,t2,a1
80005c48:	010e0833          	add	a6,t3,a6
80005c4c:	01180863          	beq	a6,a7,80005c5c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb20>
80005c50:	01183e33          	sltu	t3,a6,a7
80005c54:	000e0863          	beqz	t3,80005c64 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb28>
80005c58:	0380006f          	j	80005c90 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb54>
80005c5c:	00573e33          	sltu	t3,a4,t0
80005c60:	020e1863          	bnez	t3,80005c90 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb54>
80005c64:	0062be33          	sltu	t3,t0,t1
80005c68:	40788eb3          	sub	t4,a7,t2
80005c6c:	41ce8e33          	sub	t3,t4,t3
80005c70:	00573eb3          	sltu	t4,a4,t0
80005c74:	41180f33          	sub	t5,a6,a7
80005c78:	41df0eb3          	sub	t4,t5,t4
80005c7c:	01de1663          	bne	t3,t4,80005c88 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb4c>
80005c80:	40628e33          	sub	t3,t0,t1
80005c84:	40570eb3          	sub	t4,a4,t0
80005c88:	01de3e33          	sltu	t3,t3,t4
80005c8c:	1e0e1263          	bnez	t3,80005e70 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd34>
80005c90:	fff60613          	addi	a2,a2,-1
80005c94:	00cd8023          	sb	a2,0(s11)
80005c98:	01180663          	beq	a6,a7,80005ca4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb68>
80005c9c:	01183333          	sltu	t1,a6,a7
80005ca0:	0080006f          	j	80005ca8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb6c>
80005ca4:	00573333          	sltu	t1,a4,t0
80005ca8:	f7842e83          	lw	t4,-136(s0)
80005cac:	00eeb3b3          	sltu	t2,t4,a4
80005cb0:	41090e33          	sub	t3,s2,a6
80005cb4:	407e03b3          	sub	t2,t3,t2
80005cb8:	40ee8eb3          	sub	t4,t4,a4
80005cbc:	00b38863          	beq	t2,a1,80005ccc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb90>
80005cc0:	00b3be33          	sltu	t3,t2,a1
80005cc4:	00031863          	bnez	t1,80005cd4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb98>
80005cc8:	0200006f          	j	80005ce8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005ccc:	00febe33          	sltu	t3,t4,a5
80005cd0:	00030c63          	beqz	t1,80005ce8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbac>
80005cd4:	f4b39ce3          	bne	t2,a1,80005c2c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xaf0>
80005cd8:	00febeb3          	sltu	t4,t4,a5
80005cdc:	00070313          	mv	t1,a4
80005ce0:	00080393          	mv	t2,a6
80005ce4:	f40e8ce3          	beqz	t4,80005c3c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xb00>
80005ce8:	ef0682e3          	beq	a3,a6,80005bcc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa90>
80005cec:	00d83633          	sltu	a2,a6,a3
80005cf0:	1a060c63          	beqz	a2,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005cf4:	1a0e1a63          	bnez	t3,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005cf8:	00f707b3          	add	a5,a4,a5
80005cfc:	00e7b633          	sltu	a2,a5,a4
80005d00:	00b805b3          	add	a1,a6,a1
80005d04:	00c585b3          	add	a1,a1,a2
80005d08:	10d58463          	beq	a1,a3,80005e10 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcd4>
80005d0c:	00d5b633          	sltu	a2,a1,a3
80005d10:	10060463          	beqz	a2,80005e18 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xcdc>
80005d14:	1e80006f          	j	80005efc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005d18:	00ad3733          	sltu	a4,s10,a0
80005d1c:	ee0706e3          	beqz	a4,80005c08 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xacc>
80005d20:	016a8733          	add	a4,s5,s6
80005d24:	0140006f          	j	80005d38 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbfc>
80005d28:	0068b833          	sltu	a6,a7,t1
80005d2c:	00048d13          	mv	s10,s1
80005d30:	00090c93          	mv	s9,s2
80005d34:	0a081663          	bnez	a6,80005de0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005d38:	007d04b3          	add	s1,s10,t2
80005d3c:	01a4b933          	sltu	s2,s1,s10
80005d40:	006c87b3          	add	a5,s9,t1
80005d44:	01278933          	add	s2,a5,s2
80005d48:	00b90863          	beq	s2,a1,80005d58 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc1c>
80005d4c:	00b937b3          	sltu	a5,s2,a1
80005d50:	00078863          	beqz	a5,80005d60 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc24>
80005d54:	0380006f          	j	80005d8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc50>
80005d58:	00a4b7b3          	sltu	a5,s1,a0
80005d5c:	02079863          	bnez	a5,80005d8c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc50>
80005d60:	01a537b3          	sltu	a5,a0,s10
80005d64:	41958833          	sub	a6,a1,s9
80005d68:	40f807b3          	sub	a5,a6,a5
80005d6c:	00a4b833          	sltu	a6,s1,a0
80005d70:	40b908b3          	sub	a7,s2,a1
80005d74:	41088833          	sub	a6,a7,a6
80005d78:	01079663          	bne	a5,a6,80005d84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc48>
80005d7c:	41a507b3          	sub	a5,a0,s10
80005d80:	40a48833          	sub	a6,s1,a0
80005d84:	0107b7b3          	sltu	a5,a5,a6
80005d88:	0e079e63          	bnez	a5,80005e84 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd48>
80005d8c:	fff98993          	addi	s3,s3,-1
80005d90:	ff370fa3          	sb	s3,-1(a4)
80005d94:	00b90663          	beq	s2,a1,80005da0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc64>
80005d98:	00b93833          	sltu	a6,s2,a1
80005d9c:	0080006f          	j	80005da4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc68>
80005da0:	00a4b833          	sltu	a6,s1,a0
80005da4:	009e37b3          	sltu	a5,t3,s1
80005da8:	412a08b3          	sub	a7,s4,s2
80005dac:	40f888b3          	sub	a7,a7,a5
80005db0:	409e02b3          	sub	t0,t3,s1
80005db4:	00688863          	beq	a7,t1,80005dc4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc88>
80005db8:	0068b7b3          	sltu	a5,a7,t1
80005dbc:	00081863          	bnez	a6,80005dcc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xc90>
80005dc0:	0200006f          	j	80005de0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005dc4:	0072b7b3          	sltu	a5,t0,t2
80005dc8:	00080c63          	beqz	a6,80005de0 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca4>
80005dcc:	f4689ee3          	bne	a7,t1,80005d28 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbec>
80005dd0:	0072b833          	sltu	a6,t0,t2
80005dd4:	00048d13          	mv	s10,s1
80005dd8:	00090c93          	mv	s9,s2
80005ddc:	f4080ee3          	beqz	a6,80005d38 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbfc>
80005de0:	e3268ae3          	beq	a3,s2,80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xad8>
80005de4:	00d93533          	sltu	a0,s2,a3
80005de8:	12050663          	beqz	a0,80005f14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005dec:	12079463          	bnez	a5,80005f14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005df0:	00748533          	add	a0,s1,t2
80005df4:	009535b3          	sltu	a1,a0,s1
80005df8:	00690733          	add	a4,s2,t1
80005dfc:	00b705b3          	add	a1,a4,a1
80005e00:	04d58063          	beq	a1,a3,80005e40 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd04>
80005e04:	00d5b733          	sltu	a4,a1,a3
80005e08:	04070063          	beqz	a4,80005e48 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd0c>
80005e0c:	1900006f          	j	80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005e10:	00a7b633          	sltu	a2,a5,a0
80005e14:	0e061463          	bnez	a2,80005efc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005e18:	00e53633          	sltu	a2,a0,a4
80005e1c:	410688b3          	sub	a7,a3,a6
80005e20:	40c88633          	sub	a2,a7,a2
80005e24:	00a7b8b3          	sltu	a7,a5,a0
80005e28:	40d585b3          	sub	a1,a1,a3
80005e2c:	411585b3          	sub	a1,a1,a7
80005e30:	06b60463          	beq	a2,a1,80005e98 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd5c>
80005e34:	00b63533          	sltu	a0,a2,a1
80005e38:	06051863          	bnez	a0,80005ea8 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xd6c>
80005e3c:	0c00006f          	j	80005efc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005e40:	00c53733          	sltu	a4,a0,a2
80005e44:	14071c63          	bnez	a4,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005e48:	00963733          	sltu	a4,a2,s1
80005e4c:	412687b3          	sub	a5,a3,s2
80005e50:	40e78733          	sub	a4,a5,a4
80005e54:	00c537b3          	sltu	a5,a0,a2
80005e58:	40d585b3          	sub	a1,a1,a3
80005e5c:	40f585b3          	sub	a1,a1,a5
80005e60:	0ab70263          	beq	a4,a1,80005f04 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc8>
80005e64:	00b73533          	sltu	a0,a4,a1
80005e68:	0a051663          	bnez	a0,80005f14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdd8>
80005e6c:	1300006f          	j	80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005e70:	00000e13          	li	t3,0
80005e74:	00030713          	mv	a4,t1
80005e78:	00038813          	mv	a6,t2
80005e7c:	e67698e3          	bne	a3,t2,80005cec <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xbb0>
80005e80:	d4dff06f          	j	80005bcc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xa90>
80005e84:	00000793          	li	a5,0
80005e88:	000d0493          	mv	s1,s10
80005e8c:	000c8913          	mv	s2,s9
80005e90:	f5969ae3          	bne	a3,s9,80005de4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xca8>
80005e94:	d81ff06f          	j	80005c14 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xad8>
80005e98:	40e505b3          	sub	a1,a0,a4
80005e9c:	40a787b3          	sub	a5,a5,a0
80005ea0:	00f5b533          	sltu	a0,a1,a5
80005ea4:	04050c63          	beqz	a0,80005efc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005ea8:	00273513          	sltiu	a0,a4,2
80005eac:	00183593          	seqz	a1,a6
80005eb0:	00a5f533          	and	a0,a1,a0
80005eb4:	04051463          	bnez	a0,80005efc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005eb8:	f4842583          	lw	a1,-184(s0)
80005ebc:	ffd58513          	addi	a0,a1,-3
80005ec0:	00b535b3          	sltu	a1,a0,a1
80005ec4:	f4c42603          	lw	a2,-180(s0)
80005ec8:	00b605b3          	add	a1,a2,a1
80005ecc:	fff58593          	addi	a1,a1,-1
80005ed0:	02b80263          	beq	a6,a1,80005ef4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdb8>
80005ed4:	0105b533          	sltu	a0,a1,a6
80005ed8:	02051263          	bnez	a0,80005efc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xdc0>
80005edc:	41800533          	neg	a0,s8
80005ee0:	009fa023          	sw	s1,0(t6)
80005ee4:	00afa223          	sw	a0,4(t6)
80005ee8:	f4442503          	lw	a0,-188(s0)
80005eec:	00af9423          	sh	a0,8(t6)
80005ef0:	0b40006f          	j	80005fa4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005ef4:	00e53533          	sltu	a0,a0,a4
80005ef8:	fe0502e3          	beqz	a0,80005edc <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xda0>
80005efc:	000fa023          	sw	zero,0(t6)
80005f00:	0a40006f          	j	80005fa4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005f04:	409605b3          	sub	a1,a2,s1
80005f08:	40c50533          	sub	a0,a0,a2
80005f0c:	00a5b533          	sltu	a0,a1,a0
80005f10:	08050663          	beqz	a0,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f14:	01400613          	li	a2,20
80005f18:	000c0513          	mv	a0,s8
80005f1c:	000b8593          	mv	a1,s7
80005f20:	00000693          	li	a3,0
80005f24:	00004097          	auipc	ra,0x4
80005f28:	0a0080e7          	jalr	160(ra) # 80009fc4 <__muldi3>
80005f2c:	01258863          	beq	a1,s2,80005f3c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe00>
80005f30:	00b93533          	sltu	a0,s2,a1
80005f34:	00050863          	beqz	a0,80005f44 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe08>
80005f38:	0640006f          	j	80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f3c:	00a4b533          	sltu	a0,s1,a0
80005f40:	04051e63          	bnez	a0,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f44:	fd800613          	li	a2,-40
80005f48:	fff00693          	li	a3,-1
80005f4c:	000c0513          	mv	a0,s8
80005f50:	000b8593          	mv	a1,s7
80005f54:	00004097          	auipc	ra,0x4
80005f58:	070080e7          	jalr	112(ra) # 80009fc4 <__muldi3>
80005f5c:	f7042603          	lw	a2,-144(s0)
80005f60:	00c50633          	add	a2,a0,a2
80005f64:	00a63533          	sltu	a0,a2,a0
80005f68:	014585b3          	add	a1,a1,s4
80005f6c:	00a58533          	add	a0,a1,a0
80005f70:	02a90263          	beq	s2,a0,80005f94 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe58>
80005f74:	01253533          	sltu	a0,a0,s2
80005f78:	02051263          	bnez	a0,80005f9c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe60>
80005f7c:	f5c42503          	lw	a0,-164(s0)
80005f80:	01552023          	sw	s5,0(a0)
80005f84:	01652223          	sw	s6,4(a0)
80005f88:	f4442583          	lw	a1,-188(s0)
80005f8c:	00b51423          	sh	a1,8(a0)
80005f90:	0140006f          	j	80005fa4 <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe68>
80005f94:	00963533          	sltu	a0,a2,s1
80005f98:	fe0502e3          	beqz	a0,80005f7c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE+0xe40>
80005f9c:	f5c42503          	lw	a0,-164(s0)
80005fa0:	00052023          	sw	zero,0(a0)
80005fa4:	0bc12083          	lw	ra,188(sp)
80005fa8:	0b812403          	lw	s0,184(sp)
80005fac:	0b412483          	lw	s1,180(sp)
80005fb0:	0b012903          	lw	s2,176(sp)
80005fb4:	0ac12983          	lw	s3,172(sp)
80005fb8:	0a812a03          	lw	s4,168(sp)
80005fbc:	0a412a83          	lw	s5,164(sp)
80005fc0:	0a012b03          	lw	s6,160(sp)
80005fc4:	09c12b83          	lw	s7,156(sp)
80005fc8:	09812c03          	lw	s8,152(sp)
80005fcc:	09412c83          	lw	s9,148(sp)
80005fd0:	09012d03          	lw	s10,144(sp)
80005fd4:	08c12d83          	lw	s11,140(sp)
80005fd8:	0c010113          	addi	sp,sp,192
80005fdc:	00008067          	ret
80005fe0:	fa042a23          	sw	zero,-76(s0)
80005fe4:	fa840513          	addi	a0,s0,-88
80005fe8:	f9840593          	addi	a1,s0,-104
80005fec:	fb440613          	addi	a2,s0,-76
80005ff0:	00001097          	auipc	ra,0x1
80005ff4:	09c080e7          	jalr	156(ra) # 8000708c <_ZN4core9panicking13assert_failed17h4fcb3a6812de271fE>
80005ff8:	8000d537          	lui	a0,0x8000d
80005ffc:	85f50513          	addi	a0,a0,-1953 # 8000c85f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80006000:	8000d637          	lui	a2,0x8000d
80006004:	fd060613          	addi	a2,a2,-48 # 8000cfd0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.53>
80006008:	01c00593          	li	a1,28
8000600c:	00001097          	auipc	ra,0x1
80006010:	fcc080e7          	jalr	-52(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006014:	8000d537          	lui	a0,0x8000d
80006018:	88c50513          	addi	a0,a0,-1908 # 8000c88c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>
8000601c:	8000d637          	lui	a2,0x8000d
80006020:	fe060613          	addi	a2,a2,-32 # 8000cfe0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.54>
80006024:	01d00593          	li	a1,29
80006028:	00001097          	auipc	ra,0x1
8000602c:	fb0080e7          	jalr	-80(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006030:	8000d537          	lui	a0,0x8000d
80006034:	8bc50513          	addi	a0,a0,-1860 # 8000c8bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>
80006038:	8000d637          	lui	a2,0x8000d
8000603c:	ff060613          	addi	a2,a2,-16 # 8000cff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.55>
80006040:	01c00593          	li	a1,28
80006044:	00001097          	auipc	ra,0x1
80006048:	f94080e7          	jalr	-108(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000604c:	8000d537          	lui	a0,0x8000d
80006050:	8e850513          	addi	a0,a0,-1816 # 8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>
80006054:	8000d637          	lui	a2,0x8000d
80006058:	00060613          	mv	a2,a2
8000605c:	02d00593          	li	a1,45
80006060:	00001097          	auipc	ra,0x1
80006064:	f78080e7          	jalr	-136(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006068:	8000d537          	lui	a0,0x8000d
8000606c:	01050513          	addi	a0,a0,16 # 8000d010 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57>
80006070:	8000d637          	lui	a2,0x8000d
80006074:	04060613          	addi	a2,a2,64 # 8000d040 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.58>
80006078:	02d00593          	li	a1,45
8000607c:	00001097          	auipc	ra,0x1
80006080:	f5c080e7          	jalr	-164(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006084:	8000c537          	lui	a0,0x8000c
80006088:	74450513          	addi	a0,a0,1860 # 8000c744 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.21>
8000608c:	8000c637          	lui	a2,0x8000c
80006090:	77c60613          	addi	a2,a2,1916 # 8000c77c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.23>
80006094:	01d00593          	li	a1,29
80006098:	00001097          	auipc	ra,0x1
8000609c:	f40080e7          	jalr	-192(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800060a0:	8000d637          	lui	a2,0x8000d
800060a4:	06060613          	addi	a2,a2,96 # 8000d060 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.60>
800060a8:	f9042503          	lw	a0,-112(s0)
800060ac:	00050593          	mv	a1,a0
800060b0:	00001097          	auipc	ra,0x1
800060b4:	f70080e7          	jalr	-144(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800060b8:	8000d637          	lui	a2,0x8000d
800060bc:	07060613          	addi	a2,a2,112 # 8000d070 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.61>
800060c0:	000b0513          	mv	a0,s6
800060c4:	f9042583          	lw	a1,-112(s0)
800060c8:	00001097          	auipc	ra,0x1
800060cc:	f58080e7          	jalr	-168(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800060d0:	8000d537          	lui	a0,0x8000d
800060d4:	9a050513          	addi	a0,a0,-1632 # 8000c9a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>
800060d8:	8000d637          	lui	a2,0x8000d
800060dc:	09060613          	addi	a2,a2,144 # 8000d090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.63>
800060e0:	03600593          	li	a1,54
800060e4:	00001097          	auipc	ra,0x1
800060e8:	ef4080e7          	jalr	-268(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800060ec:	8000d537          	lui	a0,0x8000d
800060f0:	95850513          	addi	a0,a0,-1704 # 8000c958 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>
800060f4:	8000d637          	lui	a2,0x8000d
800060f8:	08060613          	addi	a2,a2,128 # 8000d080 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.62>
800060fc:	03700593          	li	a1,55
80006100:	00001097          	auipc	ra,0x1
80006104:	ed8080e7          	jalr	-296(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006108:	8000d637          	lui	a2,0x8000d
8000610c:	fc060613          	addi	a2,a2,-64 # 8000cfc0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>
80006110:	05100593          	li	a1,81
80006114:	00001097          	auipc	ra,0x1
80006118:	f0c080e7          	jalr	-244(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

8000611c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E>:
8000611c:	f9010113          	addi	sp,sp,-112
80006120:	06112623          	sw	ra,108(sp)
80006124:	06812423          	sw	s0,104(sp)
80006128:	06912223          	sw	s1,100(sp)
8000612c:	07212023          	sw	s2,96(sp)
80006130:	05312e23          	sw	s3,92(sp)
80006134:	05412c23          	sw	s4,88(sp)
80006138:	05512a23          	sw	s5,84(sp)
8000613c:	05612823          	sw	s6,80(sp)
80006140:	05712623          	sw	s7,76(sp)
80006144:	05812423          	sw	s8,72(sp)
80006148:	05912223          	sw	s9,68(sp)
8000614c:	05a12023          	sw	s10,64(sp)
80006150:	03b12e23          	sw	s11,60(sp)
80006154:	07010413          	addi	s0,sp,112
80006158:	0045a783          	lw	a5,4(a1)
8000615c:	0005a803          	lw	a6,0(a1)
80006160:	00f868b3          	or	a7,a6,a5
80006164:	70088e63          	beqz	a7,80006880 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x764>
80006168:	01d7d893          	srli	a7,a5,0x1d
8000616c:	72089863          	bnez	a7,8000689c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x780>
80006170:	74068463          	beqz	a3,800068b8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x79c>
80006174:	01859283          	lh	t0,24(a1)
80006178:	0017b593          	seqz	a1,a5
8000617c:	40b008b3          	neg	a7,a1
80006180:	fe08f893          	andi	a7,a7,-32
80006184:	011282b3          	add	t0,t0,a7
80006188:	00559593          	slli	a1,a1,0x5
8000618c:	fe058893          	addi	a7,a1,-32
80006190:	00b81833          	sll	a6,a6,a1
80006194:	fae42a23          	sw	a4,-76(s0)
80006198:	fad42623          	sw	a3,-84(s0)
8000619c:	faa42423          	sw	a0,-88(s0)
800061a0:	fac42c23          	sw	a2,-72(s0)
800061a4:	0008c663          	bltz	a7,800061b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x94>
800061a8:	00080593          	mv	a1,a6
800061ac:	0080006f          	j	800061b4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x98>
800061b0:	00b795b3          	sll	a1,a5,a1
800061b4:	41f8d693          	srai	a3,a7,0x1f
800061b8:	0106f633          	and	a2,a3,a6
800061bc:	0105d693          	srli	a3,a1,0x10
800061c0:	0016b693          	seqz	a3,a3
800061c4:	40d00733          	neg	a4,a3
800061c8:	ff077713          	andi	a4,a4,-16
800061cc:	00e28533          	add	a0,t0,a4
800061d0:	00469693          	slli	a3,a3,0x4
800061d4:	00d595b3          	sll	a1,a1,a3
800061d8:	01f6c713          	xori	a4,a3,31
800061dc:	00165793          	srli	a5,a2,0x1
800061e0:	00e7d733          	srl	a4,a5,a4
800061e4:	00e5e733          	or	a4,a1,a4
800061e8:	00d61633          	sll	a2,a2,a3
800061ec:	0185d593          	srli	a1,a1,0x18
800061f0:	0015b593          	seqz	a1,a1
800061f4:	40b006b3          	neg	a3,a1
800061f8:	ff86f693          	andi	a3,a3,-8
800061fc:	00d50533          	add	a0,a0,a3
80006200:	00359593          	slli	a1,a1,0x3
80006204:	00b716b3          	sll	a3,a4,a1
80006208:	01f5c713          	xori	a4,a1,31
8000620c:	00165793          	srli	a5,a2,0x1
80006210:	00e7d733          	srl	a4,a5,a4
80006214:	00e6e733          	or	a4,a3,a4
80006218:	00b615b3          	sll	a1,a2,a1
8000621c:	01c6d693          	srli	a3,a3,0x1c
80006220:	0016b613          	seqz	a2,a3
80006224:	40c006b3          	neg	a3,a2
80006228:	ffc6f693          	andi	a3,a3,-4
8000622c:	00d50533          	add	a0,a0,a3
80006230:	00261613          	slli	a2,a2,0x2
80006234:	00c716b3          	sll	a3,a4,a2
80006238:	01f64713          	xori	a4,a2,31
8000623c:	0015d793          	srli	a5,a1,0x1
80006240:	00e7d733          	srl	a4,a5,a4
80006244:	00e6e733          	or	a4,a3,a4
80006248:	00c594b3          	sll	s1,a1,a2
8000624c:	01e6d693          	srli	a3,a3,0x1e
80006250:	0016b993          	seqz	s3,a3
80006254:	413005b3          	neg	a1,s3
80006258:	ffe5f593          	andi	a1,a1,-2
8000625c:	00b50533          	add	a0,a0,a1
80006260:	00199993          	slli	s3,s3,0x1
80006264:	013715b3          	sll	a1,a4,s3
80006268:	01f9c613          	xori	a2,s3,31
8000626c:	0014d693          	srli	a3,s1,0x1
80006270:	00c6d633          	srl	a2,a3,a2
80006274:	00c5e933          	or	s2,a1,a2
80006278:	00092a93          	slti	s5,s2,0
8000627c:	001acb13          	xori	s6,s5,1
80006280:	41650a33          	sub	s4,a0,s6
80006284:	fa000513          	li	a0,-96
80006288:	41450533          	sub	a0,a0,s4
8000628c:	01051513          	slli	a0,a0,0x10
80006290:	41055513          	srai	a0,a0,0x10
80006294:	43f50513          	addi	a0,a0,1087
80006298:	05000593          	li	a1,80
8000629c:	00004097          	auipc	ra,0x4
800062a0:	ce0080e7          	jalr	-800(ra) # 80009f7c <__mulsi3>
800062a4:	000015b7          	lui	a1,0x1
800062a8:	84e58593          	addi	a1,a1,-1970 # 84e <.Lline_table_start1+0x3f>
800062ac:	00005097          	auipc	ra,0x5
800062b0:	d04080e7          	jalr	-764(ra) # 8000afb0 <__divsi3>
800062b4:	05100593          	li	a1,81
800062b8:	64b57663          	bgeu	a0,a1,80006904 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7e8>
800062bc:	013495b3          	sll	a1,s1,s3
800062c0:	0015d613          	srli	a2,a1,0x1
800062c4:	01ea8a93          	addi	s5,s5,30
800062c8:	01565633          	srl	a2,a2,s5
800062cc:	00451513          	slli	a0,a0,0x4
800062d0:	8000d6b7          	lui	a3,0x8000d
800062d4:	a8868693          	addi	a3,a3,-1400 # 8000ca88 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>
800062d8:	00a68533          	add	a0,a3,a0
800062dc:	00052483          	lw	s1,0(a0)
800062e0:	00452983          	lw	s3,4(a0)
800062e4:	00851d83          	lh	s11,8(a0)
800062e8:	00a55503          	lhu	a0,10(a0)
800062ec:	fca42423          	sw	a0,-56(s0)
800062f0:	01691533          	sll	a0,s2,s6
800062f4:	00c56ab3          	or	s5,a0,a2
800062f8:	01659b33          	sll	s6,a1,s6
800062fc:	00098513          	mv	a0,s3
80006300:	00000593          	li	a1,0
80006304:	000a8613          	mv	a2,s5
80006308:	00000693          	li	a3,0
8000630c:	00004097          	auipc	ra,0x4
80006310:	cb8080e7          	jalr	-840(ra) # 80009fc4 <__muldi3>
80006314:	00050b93          	mv	s7,a0
80006318:	00058c13          	mv	s8,a1
8000631c:	00098513          	mv	a0,s3
80006320:	00000593          	li	a1,0
80006324:	000b0613          	mv	a2,s6
80006328:	00000693          	li	a3,0
8000632c:	00004097          	auipc	ra,0x4
80006330:	c98080e7          	jalr	-872(ra) # 80009fc4 <__muldi3>
80006334:	00050993          	mv	s3,a0
80006338:	00058c93          	mv	s9,a1
8000633c:	00048513          	mv	a0,s1
80006340:	00000593          	li	a1,0
80006344:	000a8613          	mv	a2,s5
80006348:	00000693          	li	a3,0
8000634c:	00004097          	auipc	ra,0x4
80006350:	c78080e7          	jalr	-904(ra) # 80009fc4 <__muldi3>
80006354:	00050a93          	mv	s5,a0
80006358:	00058d13          	mv	s10,a1
8000635c:	00048513          	mv	a0,s1
80006360:	00000593          	li	a1,0
80006364:	000b0613          	mv	a2,s6
80006368:	00000693          	li	a3,0
8000636c:	00004097          	auipc	ra,0x4
80006370:	c58080e7          	jalr	-936(ra) # 80009fc4 <__muldi3>
80006374:	00ba85b3          	add	a1,s5,a1
80006378:	0155b533          	sltu	a0,a1,s5
8000637c:	013589b3          	add	s3,a1,s3
80006380:	00b9b5b3          	sltu	a1,s3,a1
80006384:	00b50533          	add	a0,a0,a1
80006388:	800005b7          	lui	a1,0x80000
8000638c:	00b985b3          	add	a1,s3,a1
80006390:	0135b5b3          	sltu	a1,a1,s3
80006394:	00b50533          	add	a0,a0,a1
80006398:	017d0bb3          	add	s7,s10,s7
8000639c:	01abb5b3          	sltu	a1,s7,s10
800063a0:	00bc05b3          	add	a1,s8,a1
800063a4:	019b8cb3          	add	s9,s7,s9
800063a8:	017cb633          	sltu	a2,s9,s7
800063ac:	00c585b3          	add	a1,a1,a2
800063b0:	00ac8533          	add	a0,s9,a0
800063b4:	01953633          	sltu	a2,a0,s9
800063b8:	00c585b3          	add	a1,a1,a2
800063bc:	01ba0a33          	add	s4,s4,s11
800063c0:	414006b3          	neg	a3,s4
800063c4:	fc000613          	li	a2,-64
800063c8:	41460633          	sub	a2,a2,s4
800063cc:	03f67293          	andi	t0,a2,63
800063d0:	fe028813          	addi	a6,t0,-32
800063d4:	fff2cc93          	not	s9,t0
800063d8:	00084663          	bltz	a6,800063e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x2c8>
800063dc:	0055dd33          	srl	s10,a1,t0
800063e0:	0140006f          	j	800063f4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x2d8>
800063e4:	00d55733          	srl	a4,a0,a3
800063e8:	00159793          	slli	a5,a1,0x1
800063ec:	019797b3          	sll	a5,a5,s9
800063f0:	00f76d33          	or	s10,a4,a5
800063f4:	fb442483          	lw	s1,-76(s0)
800063f8:	fac42d83          	lw	s11,-84(s0)
800063fc:	fb842903          	lw	s2,-72(s0)
80006400:	fb042823          	sw	a6,-80(s0)
80006404:	00082713          	slti	a4,a6,0
80006408:	00100793          	li	a5,1
8000640c:	00579833          	sll	a6,a5,t0
80006410:	fff70893          	addi	a7,a4,-1
80006414:	0108fa33          	and	s4,a7,a6
80006418:	40e00733          	neg	a4,a4
8000641c:	00d796b3          	sll	a3,a5,a3
80006420:	00d77ab3          	and	s5,a4,a3
80006424:	001ab693          	seqz	a3,s5
80006428:	40da06b3          	sub	a3,s4,a3
8000642c:	fffa8713          	addi	a4,s5,-1
80006430:	fae42e23          	sw	a4,-68(s0)
80006434:	00e57c33          	and	s8,a0,a4
80006438:	fcd42023          	sw	a3,-64(s0)
8000643c:	00d5fbb3          	and	s7,a1,a3
80006440:	017c66b3          	or	a3,s8,s7
80006444:	02068a63          	beqz	a3,80006478 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x35c>
80006448:	004d5693          	srli	a3,s10,0x4
8000644c:	27100713          	li	a4,625
80006450:	fc542223          	sw	t0,-60(s0)
80006454:	04e6f863          	bgeu	a3,a4,800064a4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x388>
80006458:	06400993          	li	s3,100
8000645c:	073d7a63          	bgeu	s10,s3,800064d0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3b4>
80006460:	00a00993          	li	s3,10
80006464:	00ad3693          	sltiu	a3,s10,10
80006468:	013d7463          	bgeu	s10,s3,80006470 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x354>
8000646c:	00100993          	li	s3,1
80006470:	0016cb13          	xori	s6,a3,1
80006474:	0b80006f          	j	8000652c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
80006478:	00a00693          	li	a3,10
8000647c:	01b6ee63          	bltu	a3,s11,80006498 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006480:	002d9693          	slli	a3,s11,0x2
80006484:	8000d737          	lui	a4,0x8000d
80006488:	11870713          	addi	a4,a4,280 # 8000d118 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>
8000648c:	00e686b3          	add	a3,a3,a4
80006490:	ffc6a683          	lw	a3,-4(a3)
80006494:	fadd7ae3          	bgeu	s10,a3,80006448 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x32c>
80006498:	fa842503          	lw	a0,-88(s0)
8000649c:	00052023          	sw	zero,0(a0)
800064a0:	3a40006f          	j	80006844 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x728>
800064a4:	000f46b7          	lui	a3,0xf4
800064a8:	24068693          	addi	a3,a3,576 # f4240 <.Lline_table_start2+0xf2e92>
800064ac:	02dd7e63          	bgeu	s10,a3,800064e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3cc>
800064b0:	000186b7          	lui	a3,0x18
800064b4:	6a068993          	addi	s3,a3,1696 # 186a0 <.Lline_table_start2+0x172f2>
800064b8:	013d36b3          	sltu	a3,s10,s3
800064bc:	013d7663          	bgeu	s10,s3,800064c8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3ac>
800064c0:	00002737          	lui	a4,0x2
800064c4:	71070993          	addi	s3,a4,1808 # 2710 <.Lline_table_start2+0x1362>
800064c8:	0056cb13          	xori	s6,a3,5
800064cc:	0600006f          	j	8000652c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
800064d0:	3e800713          	li	a4,1000
800064d4:	3e8d3693          	sltiu	a3,s10,1000
800064d8:	00ed6463          	bltu	s10,a4,800064e0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3c4>
800064dc:	3e800993          	li	s3,1000
800064e0:	0036cb13          	xori	s6,a3,3
800064e4:	0480006f          	j	8000652c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
800064e8:	05f5e6b7          	lui	a3,0x5f5e
800064ec:	10068993          	addi	s3,a3,256 # 5f5e100 <.Lline_table_start2+0x5f5cd52>
800064f0:	033d7263          	bgeu	s10,s3,80006514 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3f8>
800064f4:	009896b7          	lui	a3,0x989
800064f8:	68068993          	addi	s3,a3,1664 # 989680 <.Lline_table_start2+0x9882d2>
800064fc:	013d36b3          	sltu	a3,s10,s3
80006500:	013d7663          	bgeu	s10,s3,8000650c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x3f0>
80006504:	000f4737          	lui	a4,0xf4
80006508:	24070993          	addi	s3,a4,576 # f4240 <.Lline_table_start2+0xf2e92>
8000650c:	0076cb13          	xori	s6,a3,7
80006510:	01c0006f          	j	8000652c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x410>
80006514:	3b9ad6b7          	lui	a3,0x3b9ad
80006518:	a0068713          	addi	a4,a3,-1536 # 3b9aca00 <.Lline_table_start2+0x3b9ab652>
8000651c:	00ed36b3          	sltu	a3,s10,a4
80006520:	00ed6463          	bltu	s10,a4,80006528 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x40c>
80006524:	00070993          	mv	s3,a4
80006528:	0096cb13          	xori	s6,a3,9
8000652c:	fc842683          	lw	a3,-56(s0)
80006530:	40db06b3          	sub	a3,s6,a3
80006534:	00168693          	addi	a3,a3,1
80006538:	01069693          	slli	a3,a3,0x10
8000653c:	4106d693          	srai	a3,a3,0x10
80006540:	02d4d463          	bge	s1,a3,80006568 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x44c>
80006544:	40968533          	sub	a0,a3,s1
80006548:	01061613          	slli	a2,a2,0x10
8000654c:	f9442e23          	sw	s4,-100(s0)
80006550:	f9542c23          	sw	s5,-104(s0)
80006554:	fb942223          	sw	s9,-92(s0)
80006558:	f8d42a23          	sw	a3,-108(s0)
8000655c:	05b56063          	bltu	a0,s11,8000659c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x480>
80006560:	fdb42423          	sw	s11,-56(s0)
80006564:	0440006f          	j	800065a8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x48c>
80006568:	00068b13          	mv	s6,a3
8000656c:	00a00613          	li	a2,10
80006570:	00000693          	li	a3,0
80006574:	00004097          	auipc	ra,0x4
80006578:	5ec080e7          	jalr	1516(ra) # 8000ab60 <__udivdi3>
8000657c:	00050813          	mv	a6,a0
80006580:	00058893          	mv	a7,a1
80006584:	fc442503          	lw	a0,-60(s0)
80006588:	00a99533          	sll	a0,s3,a0
8000658c:	fb042583          	lw	a1,-80(s0)
80006590:	0c05ce63          	bltz	a1,8000666c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x550>
80006594:	00050e93          	mv	t4,a0
80006598:	0dc0006f          	j	80006674 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x558>
8000659c:	01051513          	slli	a0,a0,0x10
800065a0:	41055513          	srai	a0,a0,0x10
800065a4:	fca42423          	sw	a0,-56(s0)
800065a8:	01065613          	srli	a2,a2,0x10
800065ac:	fac42023          	sw	a2,-96(s0)
800065b0:	fff00a13          	li	s4,-1
800065b4:	00090a93          	mv	s5,s2
800065b8:	fff00c93          	li	s9,-1
800065bc:	00098493          	mv	s1,s3
800065c0:	000d8913          	mv	s2,s11
800065c4:	019d8db3          	add	s11,s11,s9
800065c8:	000d0513          	mv	a0,s10
800065cc:	00098593          	mv	a1,s3
800065d0:	00004097          	auipc	ra,0x4
800065d4:	56c080e7          	jalr	1388(ra) # 8000ab3c <__udivsi3>
800065d8:	00050993          	mv	s3,a0
800065dc:	00048593          	mv	a1,s1
800065e0:	00004097          	auipc	ra,0x4
800065e4:	99c080e7          	jalr	-1636(ra) # 80009f7c <__mulsi3>
800065e8:	2f4d8663          	beq	s11,s4,800068d4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7b8>
800065ec:	40ad0d33          	sub	s10,s10,a0
800065f0:	03098513          	addi	a0,s3,48
800065f4:	fc842583          	lw	a1,-56(s0)
800065f8:	019585b3          	add	a1,a1,s9
800065fc:	00aa8023          	sb	a0,0(s5)
80006600:	04058263          	beqz	a1,80006644 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x528>
80006604:	019b0533          	add	a0,s6,s9
80006608:	00090d93          	mv	s11,s2
8000660c:	09450c63          	beq	a0,s4,800066a4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x588>
80006610:	00a00593          	li	a1,10
80006614:	00048513          	mv	a0,s1
80006618:	00004097          	auipc	ra,0x4
8000661c:	524080e7          	jalr	1316(ra) # 8000ab3c <__udivsi3>
80006620:	00050993          	mv	s3,a0
80006624:	fffc8c93          	addi	s9,s9,-1
80006628:	001a8a93          	addi	s5,s5,1
8000662c:	00a00513          	li	a0,10
80006630:	f8a4f6e3          	bgeu	s1,a0,800065bc <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x4a0>
80006634:	8000d537          	lui	a0,0x8000d
80006638:	14050513          	addi	a0,a0,320 # 8000d140 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.70>
8000663c:	00003097          	auipc	ra,0x3
80006640:	ff8080e7          	jalr	-8(ra) # 80009634 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>
80006644:	fc442303          	lw	t1,-60(s0)
80006648:	006d1733          	sll	a4,s10,t1
8000664c:	fb042783          	lw	a5,-80(s0)
80006650:	1407cc63          	bltz	a5,800067a8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x68c>
80006654:	00070693          	mv	a3,a4
80006658:	fb842583          	lw	a1,-72(s0)
8000665c:	f9c42f83          	lw	t6,-100(s0)
80006660:	f9842f03          	lw	t5,-104(s0)
80006664:	fa442283          	lw	t0,-92(s0)
80006668:	1580006f          	j	800067c0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6a4>
8000666c:	0019d593          	srli	a1,s3,0x1
80006670:	0195deb3          	srl	t4,a1,s9
80006674:	fb042583          	lw	a1,-80(s0)
80006678:	41f5d593          	srai	a1,a1,0x1f
8000667c:	00a5fe33          	and	t3,a1,a0
80006680:	fa842503          	lw	a0,-88(s0)
80006684:	00090593          	mv	a1,s2
80006688:	000d8613          	mv	a2,s11
8000668c:	00000693          	li	a3,0
80006690:	000b0713          	mv	a4,s6
80006694:	00048793          	mv	a5,s1
80006698:	000a8f13          	mv	t5,s5
8000669c:	000a0f93          	mv	t6,s4
800066a0:	19c0006f          	j	8000683c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x720>
800066a4:	00000993          	li	s3,0
800066a8:	fa042503          	lw	a0,-96(s0)
800066ac:	fff50513          	addi	a0,a0,-1
800066b0:	03f57b13          	andi	s6,a0,63
800066b4:	419004b3          	neg	s1,s9
800066b8:	00100d13          	li	s10,1
800066bc:	fffb4513          	not	a0,s6
800066c0:	faa42023          	sw	a0,-96(s0)
800066c4:	fe0b0c93          	addi	s9,s6,-32
800066c8:	41fcda13          	srai	s4,s9,0x1f
800066cc:	fb842903          	lw	s2,-72(s0)
800066d0:	fb042a83          	lw	s5,-80(s0)
800066d4:	0340006f          	j	80006708 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5ec>
800066d8:	fc442503          	lw	a0,-60(s0)
800066dc:	00abd533          	srl	a0,s7,a0
800066e0:	fc042583          	lw	a1,-64(s0)
800066e4:	00bbfbb3          	and	s7,s7,a1
800066e8:	fbc42583          	lw	a1,-68(s0)
800066ec:	00bc7c33          	and	s8,s8,a1
800066f0:	03050513          	addi	a0,a0,48
800066f4:	009905b3          	add	a1,s2,s1
800066f8:	00148493          	addi	s1,s1,1
800066fc:	00a58023          	sb	a0,0(a1) # 80000000 <_start>
80006700:	fc842503          	lw	a0,-56(s0)
80006704:	10950463          	beq	a0,s1,8000680c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6f0>
80006708:	0169d533          	srl	a0,s3,s6
8000670c:	000ccc63          	bltz	s9,80006724 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x608>
80006710:	00050593          	mv	a1,a0
80006714:	00aa7533          	and	a0,s4,a0
80006718:	00a5e533          	or	a0,a1,a0
8000671c:	02050463          	beqz	a0,80006744 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x628>
80006720:	d79ff06f          	j	80006498 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006724:	016d55b3          	srl	a1,s10,s6
80006728:	00199613          	slli	a2,s3,0x1
8000672c:	fa042683          	lw	a3,-96(s0)
80006730:	00d61633          	sll	a2,a2,a3
80006734:	00c5e5b3          	or	a1,a1,a2
80006738:	00aa7533          	and	a0,s4,a0
8000673c:	00a5e533          	or	a0,a1,a0
80006740:	d4051ce3          	bnez	a0,80006498 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x37c>
80006744:	1bb4f463          	bgeu	s1,s11,800068ec <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x7d0>
80006748:	00a00613          	li	a2,10
8000674c:	000c0513          	mv	a0,s8
80006750:	000b8593          	mv	a1,s7
80006754:	00000693          	li	a3,0
80006758:	00004097          	auipc	ra,0x4
8000675c:	86c080e7          	jalr	-1940(ra) # 80009fc4 <__muldi3>
80006760:	00050c13          	mv	s8,a0
80006764:	00058b93          	mv	s7,a1
80006768:	00a00613          	li	a2,10
8000676c:	000d0513          	mv	a0,s10
80006770:	00098593          	mv	a1,s3
80006774:	00000693          	li	a3,0
80006778:	00004097          	auipc	ra,0x4
8000677c:	84c080e7          	jalr	-1972(ra) # 80009fc4 <__muldi3>
80006780:	00050d13          	mv	s10,a0
80006784:	00058993          	mv	s3,a1
80006788:	f40ad8e3          	bgez	s5,800066d8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5bc>
8000678c:	fc442503          	lw	a0,-60(s0)
80006790:	00ac5533          	srl	a0,s8,a0
80006794:	001b9593          	slli	a1,s7,0x1
80006798:	fa442603          	lw	a2,-92(s0)
8000679c:	00c595b3          	sll	a1,a1,a2
800067a0:	00b56533          	or	a0,a0,a1
800067a4:	f3dff06f          	j	800066e0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x5c4>
800067a8:	001d5513          	srli	a0,s10,0x1
800067ac:	fa442283          	lw	t0,-92(s0)
800067b0:	005556b3          	srl	a3,a0,t0
800067b4:	fb842583          	lw	a1,-72(s0)
800067b8:	f9c42f83          	lw	t6,-100(s0)
800067bc:	f9842f03          	lw	t5,-104(s0)
800067c0:	41f7d513          	srai	a0,a5,0x1f
800067c4:	00e57733          	and	a4,a0,a4
800067c8:	017686b3          	add	a3,a3,s7
800067cc:	01870833          	add	a6,a4,s8
800067d0:	00e838b3          	sltu	a7,a6,a4
800067d4:	011688b3          	add	a7,a3,a7
800067d8:	006496b3          	sll	a3,s1,t1
800067dc:	0007c663          	bltz	a5,800067e8 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6cc>
800067e0:	00068e93          	mv	t4,a3
800067e4:	00c0006f          	j	800067f0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x6d4>
800067e8:	0014d493          	srli	s1,s1,0x1
800067ec:	0054deb3          	srl	t4,s1,t0
800067f0:	00d57e33          	and	t3,a0,a3
800067f4:	fa842503          	lw	a0,-88(s0)
800067f8:	00090613          	mv	a2,s2
800067fc:	fc842683          	lw	a3,-56(s0)
80006800:	f9442703          	lw	a4,-108(s0)
80006804:	fb442783          	lw	a5,-76(s0)
80006808:	0340006f          	j	8000683c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E+0x720>
8000680c:	fa842503          	lw	a0,-88(s0)
80006810:	00090593          	mv	a1,s2
80006814:	000d8613          	mv	a2,s11
80006818:	fc842683          	lw	a3,-56(s0)
8000681c:	f9442703          	lw	a4,-108(s0)
80006820:	fb442783          	lw	a5,-76(s0)
80006824:	000c0813          	mv	a6,s8
80006828:	000b8893          	mv	a7,s7
8000682c:	f9842e03          	lw	t3,-104(s0)
80006830:	f9c42e83          	lw	t4,-100(s0)
80006834:	000d0f13          	mv	t5,s10
80006838:	00098f93          	mv	t6,s3
8000683c:	00000097          	auipc	ra,0x0
80006840:	0dc080e7          	jalr	220(ra) # 80006918 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E>
80006844:	06c12083          	lw	ra,108(sp)
80006848:	06812403          	lw	s0,104(sp)
8000684c:	06412483          	lw	s1,100(sp)
80006850:	06012903          	lw	s2,96(sp)
80006854:	05c12983          	lw	s3,92(sp)
80006858:	05812a03          	lw	s4,88(sp)
8000685c:	05412a83          	lw	s5,84(sp)
80006860:	05012b03          	lw	s6,80(sp)
80006864:	04c12b83          	lw	s7,76(sp)
80006868:	04812c03          	lw	s8,72(sp)
8000686c:	04412c83          	lw	s9,68(sp)
80006870:	04012d03          	lw	s10,64(sp)
80006874:	03c12d83          	lw	s11,60(sp)
80006878:	07010113          	addi	sp,sp,112
8000687c:	00008067          	ret
80006880:	8000d537          	lui	a0,0x8000d
80006884:	85f50513          	addi	a0,a0,-1953 # 8000c85f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>
80006888:	8000d637          	lui	a2,0x8000d
8000688c:	0c460613          	addi	a2,a2,196 # 8000d0c4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.65>
80006890:	01c00593          	li	a1,28
80006894:	00000097          	auipc	ra,0x0
80006898:	744080e7          	jalr	1860(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
8000689c:	8000d537          	lui	a0,0x8000d
800068a0:	0d450513          	addi	a0,a0,212 # 8000d0d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.66>
800068a4:	8000d637          	lui	a2,0x8000d
800068a8:	0f860613          	addi	a2,a2,248 # 8000d0f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.67>
800068ac:	02400593          	li	a1,36
800068b0:	00000097          	auipc	ra,0x0
800068b4:	728080e7          	jalr	1832(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800068b8:	8000d537          	lui	a0,0x8000d
800068bc:	0a050513          	addi	a0,a0,160 # 8000d0a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>
800068c0:	8000d637          	lui	a2,0x8000d
800068c4:	10860613          	addi	a2,a2,264 # 8000d108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.68>
800068c8:	02100593          	li	a1,33
800068cc:	00000097          	auipc	ra,0x0
800068d0:	70c080e7          	jalr	1804(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800068d4:	8000d637          	lui	a2,0x8000d
800068d8:	15060613          	addi	a2,a2,336 # 8000d150 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.71>
800068dc:	00090513          	mv	a0,s2
800068e0:	00090593          	mv	a1,s2
800068e4:	00000097          	auipc	ra,0x0
800068e8:	73c080e7          	jalr	1852(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
800068ec:	8000d637          	lui	a2,0x8000d
800068f0:	16060613          	addi	a2,a2,352 # 8000d160 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.72>
800068f4:	00048513          	mv	a0,s1
800068f8:	000d8593          	mv	a1,s11
800068fc:	00000097          	auipc	ra,0x0
80006900:	724080e7          	jalr	1828(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80006904:	8000d637          	lui	a2,0x8000d
80006908:	fc060613          	addi	a2,a2,-64 # 8000cfc0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>
8000690c:	05100593          	li	a1,81
80006910:	00000097          	auipc	ra,0x0
80006914:	710080e7          	jalr	1808(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80006918 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E>:
80006918:	fd010113          	addi	sp,sp,-48
8000691c:	02112623          	sw	ra,44(sp)
80006920:	02812423          	sw	s0,40(sp)
80006924:	02912223          	sw	s1,36(sp)
80006928:	03212023          	sw	s2,32(sp)
8000692c:	01312e23          	sw	s3,28(sp)
80006930:	01412c23          	sw	s4,24(sp)
80006934:	01512a23          	sw	s5,20(sp)
80006938:	01612823          	sw	s6,16(sp)
8000693c:	01712623          	sw	s7,12(sp)
80006940:	01812423          	sw	s8,8(sp)
80006944:	03010413          	addi	s0,sp,48
80006948:	01fe8863          	beq	t4,t6,80006958 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x40>
8000694c:	01dfb2b3          	sltu	t0,t6,t4
80006950:	00029863          	bnez	t0,80006960 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x48>
80006954:	19c0006f          	j	80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006958:	01cf32b3          	sltu	t0,t5,t3
8000695c:	18028a63          	beqz	t0,80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006960:	01ee32b3          	sltu	t0,t3,t5
80006964:	41fe8333          	sub	t1,t4,t6
80006968:	405302b3          	sub	t0,t1,t0
8000696c:	01f28863          	beq	t0,t6,8000697c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x64>
80006970:	005fb2b3          	sltu	t0,t6,t0
80006974:	00029a63          	bnez	t0,80006988 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x70>
80006978:	1780006f          	j	80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
8000697c:	41ee02b3          	sub	t0,t3,t5
80006980:	005f32b3          	sltu	t0,t5,t0
80006984:	16028663          	beqz	t0,80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006988:	010e32b3          	sltu	t0,t3,a6
8000698c:	411e8333          	sub	t1,t4,a7
80006990:	405302b3          	sub	t0,t1,t0
80006994:	01128863          	beq	t0,a7,800069a4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x8c>
80006998:	0058b2b3          	sltu	t0,a7,t0
8000699c:	00029a63          	bnez	t0,800069b0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x98>
800069a0:	0740006f          	j	80006a14 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
800069a4:	410e02b3          	sub	t0,t3,a6
800069a8:	005832b3          	sltu	t0,a6,t0
800069ac:	06028463          	beqz	t0,80006a14 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
800069b0:	01f85293          	srli	t0,a6,0x1f
800069b4:	00189313          	slli	t1,a7,0x1
800069b8:	00536333          	or	t1,t1,t0
800069bc:	00181293          	slli	t0,a6,0x1
800069c0:	005e33b3          	sltu	t2,t3,t0
800069c4:	406e8333          	sub	t1,t4,t1
800069c8:	40730333          	sub	t1,t1,t2
800069cc:	01ff5393          	srli	t2,t5,0x1f
800069d0:	001f9493          	slli	s1,t6,0x1
800069d4:	0074e3b3          	or	t2,s1,t2
800069d8:	02730663          	beq	t1,t2,80006a04 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xec>
800069dc:	007332b3          	sltu	t0,t1,t2
800069e0:	02029a63          	bnez	t0,80006a14 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xfc>
800069e4:	1cd67863          	bgeu	a2,a3,80006bb4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x29c>
800069e8:	8000d737          	lui	a4,0x8000d
800069ec:	19070713          	addi	a4,a4,400 # 8000d190 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.75>
800069f0:	00068513          	mv	a0,a3
800069f4:	00060593          	mv	a1,a2
800069f8:	00070613          	mv	a2,a4
800069fc:	00002097          	auipc	ra,0x2
80006a00:	4b0080e7          	jalr	1200(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80006a04:	405e02b3          	sub	t0,t3,t0
80006a08:	001f1313          	slli	t1,t5,0x1
80006a0c:	0062b2b3          	sltu	t0,t0,t1
80006a10:	fc028ae3          	beqz	t0,800069e4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0xcc>
80006a14:	01f88863          	beq	a7,t6,80006a24 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x10c>
80006a18:	011fb2b3          	sltu	t0,t6,a7
80006a1c:	00029863          	bnez	t0,80006a2c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x114>
80006a20:	0d00006f          	j	80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a24:	010f32b3          	sltu	t0,t5,a6
80006a28:	0c028463          	beqz	t0,80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a2c:	01e832b3          	sltu	t0,a6,t5
80006a30:	41f888b3          	sub	a7,a7,t6
80006a34:	405888b3          	sub	a7,a7,t0
80006a38:	41e80833          	sub	a6,a6,t5
80006a3c:	411e82b3          	sub	t0,t4,a7
80006a40:	010e3333          	sltu	t1,t3,a6
80006a44:	406282b3          	sub	t0,t0,t1
80006a48:	09128e63          	beq	t0,a7,80006ae4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1cc>
80006a4c:	0058b833          	sltu	a6,a7,t0
80006a50:	0a081063          	bnez	a6,80006af0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1d8>
80006a54:	16d66863          	bltu	a2,a3,80006bc4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x2ac>
80006a58:	00000893          	li	a7,0
80006a5c:	00d584b3          	add	s1,a1,a3
80006a60:	fff00813          	li	a6,-1
80006a64:	03900313          	li	t1,57
80006a68:	00058293          	mv	t0,a1
80006a6c:	0b168c63          	beq	a3,a7,80006b24 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x20c>
80006a70:	00d283b3          	add	t2,t0,a3
80006a74:	fff3c383          	lbu	t2,-1(t2)
80006a78:	00188893          	addi	a7,a7,1
80006a7c:	00180813          	addi	a6,a6,1
80006a80:	fff28293          	addi	t0,t0,-1
80006a84:	fe6384e3          	beq	t2,t1,80006a6c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x154>
80006a88:	00d287b3          	add	a5,t0,a3
80006a8c:	0007c883          	lbu	a7,0(a5)
80006a90:	00188893          	addi	a7,a7,1
80006a94:	410682b3          	sub	t0,a3,a6
80006a98:	01178023          	sb	a7,0(a5)
80006a9c:	10d2fa63          	bgeu	t0,a3,80006bb0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006aa0:	00178793          	addi	a5,a5,1
80006aa4:	00058493          	mv	s1,a1
80006aa8:	03000593          	li	a1,48
80006aac:	00050913          	mv	s2,a0
80006ab0:	00078513          	mv	a0,a5
80006ab4:	00060993          	mv	s3,a2
80006ab8:	00080613          	mv	a2,a6
80006abc:	00068a13          	mv	s4,a3
80006ac0:	00070a93          	mv	s5,a4
80006ac4:	00004097          	auipc	ra,0x4
80006ac8:	414080e7          	jalr	1044(ra) # 8000aed8 <memset>
80006acc:	00048593          	mv	a1,s1
80006ad0:	000a8713          	mv	a4,s5
80006ad4:	00090513          	mv	a0,s2
80006ad8:	00098613          	mv	a2,s3
80006adc:	000a0693          	mv	a3,s4
80006ae0:	0d00006f          	j	80006bb0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006ae4:	410e08b3          	sub	a7,t3,a6
80006ae8:	01183833          	sltu	a6,a6,a7
80006aec:	f60804e3          	beqz	a6,80006a54 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x13c>
80006af0:	00052023          	sw	zero,0(a0)
80006af4:	02c12083          	lw	ra,44(sp)
80006af8:	02812403          	lw	s0,40(sp)
80006afc:	02412483          	lw	s1,36(sp)
80006b00:	02012903          	lw	s2,32(sp)
80006b04:	01c12983          	lw	s3,28(sp)
80006b08:	01812a03          	lw	s4,24(sp)
80006b0c:	01412a83          	lw	s5,20(sp)
80006b10:	01012b03          	lw	s6,16(sp)
80006b14:	00c12b83          	lw	s7,12(sp)
80006b18:	00812c03          	lw	s8,8(sp)
80006b1c:	03010113          	addi	sp,sp,48
80006b20:	00008067          	ret
80006b24:	06068263          	beqz	a3,80006b88 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x270>
80006b28:	03100893          	li	a7,49
80006b2c:	fff68813          	addi	a6,a3,-1
80006b30:	01158023          	sb	a7,0(a1)
80006b34:	04080e63          	beqz	a6,80006b90 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x278>
80006b38:	00158893          	addi	a7,a1,1
80006b3c:	00058993          	mv	s3,a1
80006b40:	03000593          	li	a1,48
80006b44:	03000913          	li	s2,48
80006b48:	00050a13          	mv	s4,a0
80006b4c:	00088513          	mv	a0,a7
80006b50:	00060a93          	mv	s5,a2
80006b54:	00080613          	mv	a2,a6
80006b58:	00068b13          	mv	s6,a3
80006b5c:	00070c13          	mv	s8,a4
80006b60:	00078b93          	mv	s7,a5
80006b64:	00004097          	auipc	ra,0x4
80006b68:	374080e7          	jalr	884(ra) # 8000aed8 <memset>
80006b6c:	000b8793          	mv	a5,s7
80006b70:	00098593          	mv	a1,s3
80006b74:	000c0713          	mv	a4,s8
80006b78:	000a0513          	mv	a0,s4
80006b7c:	000a8613          	mv	a2,s5
80006b80:	000b0693          	mv	a3,s6
80006b84:	0100006f          	j	80006b94 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x27c>
80006b88:	03100913          	li	s2,49
80006b8c:	0080006f          	j	80006b94 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x27c>
80006b90:	03000913          	li	s2,48
80006b94:	00170713          	addi	a4,a4,1
80006b98:	01071713          	slli	a4,a4,0x10
80006b9c:	41075713          	srai	a4,a4,0x10
80006ba0:	00c6f863          	bgeu	a3,a2,80006bb0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006ba4:	00e7d663          	bge	a5,a4,80006bb0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x298>
80006ba8:	01248023          	sb	s2,0(s1)
80006bac:	00168693          	addi	a3,a3,1
80006bb0:	02d66863          	bltu	a2,a3,80006be0 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x2c8>
80006bb4:	00b52023          	sw	a1,0(a0)
80006bb8:	00d52223          	sw	a3,4(a0)
80006bbc:	00e51423          	sh	a4,8(a0)
80006bc0:	f35ff06f          	j	80006af4 <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt14possibly_round17h759ec99f4efaeab1E+0x1dc>
80006bc4:	8000d737          	lui	a4,0x8000d
80006bc8:	17070713          	addi	a4,a4,368 # 8000d170 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.73>
80006bcc:	00068513          	mv	a0,a3
80006bd0:	00060593          	mv	a1,a2
80006bd4:	00070613          	mv	a2,a4
80006bd8:	00002097          	auipc	ra,0x2
80006bdc:	2d4080e7          	jalr	724(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>
80006be0:	8000d737          	lui	a4,0x8000d
80006be4:	18070713          	addi	a4,a4,384 # 8000d180 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74>
80006be8:	00068513          	mv	a0,a3
80006bec:	00060593          	mv	a1,a2
80006bf0:	00070613          	mv	a2,a4
80006bf4:	00002097          	auipc	ra,0x2
80006bf8:	2b8080e7          	jalr	696(ra) # 80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>

80006bfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>:
80006bfc:	ff010113          	addi	sp,sp,-16
80006c00:	00112623          	sw	ra,12(sp)
80006c04:	00812423          	sw	s0,8(sp)
80006c08:	01010413          	addi	s0,sp,16
80006c0c:	10058863          	beqz	a1,80006d1c <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x120>
80006c10:	00054803          	lbu	a6,0(a0)
80006c14:	03000893          	li	a7,48
80006c18:	1308f063          	bgeu	a7,a6,80006d38 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x13c>
80006c1c:	00300813          	li	a6,3
80006c20:	12f87a63          	bgeu	a6,a5,80006d54 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x158>
80006c24:	00200813          	li	a6,2
80006c28:	01071023          	sh	a6,0(a4)
80006c2c:	04c05863          	blez	a2,80006c7c <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x80>
80006c30:	00a72223          	sw	a0,4(a4)
80006c34:	08b67463          	bgeu	a2,a1,80006cbc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xc0>
80006c38:	00c72423          	sw	a2,8(a4)
80006c3c:	00200813          	li	a6,2
80006c40:	01071623          	sh	a6,12(a4)
80006c44:	8000d7b7          	lui	a5,0x8000d
80006c48:	23078793          	addi	a5,a5,560 # 8000d230 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>
80006c4c:	00f72823          	sw	a5,16(a4)
80006c50:	00100793          	li	a5,1
80006c54:	00f72a23          	sw	a5,20(a4)
80006c58:	40c587b3          	sub	a5,a1,a2
80006c5c:	00c50533          	add	a0,a0,a2
80006c60:	01071c23          	sh	a6,24(a4)
80006c64:	00a72e23          	sw	a0,28(a4)
80006c68:	02f72023          	sw	a5,32(a4)
80006c6c:	00300593          	li	a1,3
80006c70:	08d7fc63          	bgeu	a5,a3,80006d08 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006c74:	40f686b3          	sub	a3,a3,a5
80006c78:	0740006f          	j	80006cec <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xf0>
80006c7c:	40c007b3          	neg	a5,a2
80006c80:	8000d8b7          	lui	a7,0x8000d
80006c84:	23188893          	addi	a7,a7,561 # 8000d231 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80006c88:	01172223          	sw	a7,4(a4)
80006c8c:	01072423          	sw	a6,8(a4)
80006c90:	00071623          	sh	zero,12(a4)
80006c94:	00f72823          	sw	a5,16(a4)
80006c98:	01071c23          	sh	a6,24(a4)
80006c9c:	00a72e23          	sw	a0,28(a4)
80006ca0:	02b72023          	sw	a1,32(a4)
80006ca4:	04d5fc63          	bgeu	a1,a3,80006cfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x100>
80006ca8:	40b686b3          	sub	a3,a3,a1
80006cac:	00300593          	li	a1,3
80006cb0:	04d7fc63          	bgeu	a5,a3,80006d08 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006cb4:	00c686b3          	add	a3,a3,a2
80006cb8:	0340006f          	j	80006cec <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0xf0>
80006cbc:	00b72423          	sw	a1,8(a4)
80006cc0:	40b60633          	sub	a2,a2,a1
80006cc4:	00071623          	sh	zero,12(a4)
80006cc8:	00c72823          	sw	a2,16(a4)
80006ccc:	02068c63          	beqz	a3,80006d04 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x108>
80006cd0:	00200513          	li	a0,2
80006cd4:	00a71c23          	sh	a0,24(a4)
80006cd8:	8000d537          	lui	a0,0x8000d
80006cdc:	23050513          	addi	a0,a0,560 # 8000d230 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>
80006ce0:	00a72e23          	sw	a0,28(a4)
80006ce4:	00100513          	li	a0,1
80006ce8:	02a72023          	sw	a0,32(a4)
80006cec:	02071223          	sh	zero,36(a4)
80006cf0:	02d72423          	sw	a3,40(a4)
80006cf4:	00400593          	li	a1,4
80006cf8:	0100006f          	j	80006d08 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006cfc:	00300593          	li	a1,3
80006d00:	0080006f          	j	80006d08 <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E+0x10c>
80006d04:	00200593          	li	a1,2
80006d08:	00070513          	mv	a0,a4
80006d0c:	00c12083          	lw	ra,12(sp)
80006d10:	00812403          	lw	s0,8(sp)
80006d14:	01010113          	addi	sp,sp,16
80006d18:	00008067          	ret
80006d1c:	8000d537          	lui	a0,0x8000d
80006d20:	0a050513          	addi	a0,a0,160 # 8000d0a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>
80006d24:	8000d637          	lui	a2,0x8000d
80006d28:	1bc60613          	addi	a2,a2,444 # 8000d1bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.77>
80006d2c:	02100593          	li	a1,33
80006d30:	00000097          	auipc	ra,0x0
80006d34:	2a8080e7          	jalr	680(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006d38:	8000d537          	lui	a0,0x8000d
80006d3c:	1cc50513          	addi	a0,a0,460 # 8000d1cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.78>
80006d40:	8000d637          	lui	a2,0x8000d
80006d44:	1ec60613          	addi	a2,a2,492 # 8000d1ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.79>
80006d48:	01f00593          	li	a1,31
80006d4c:	00000097          	auipc	ra,0x0
80006d50:	28c080e7          	jalr	652(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
80006d54:	8000d537          	lui	a0,0x8000d
80006d58:	1fc50513          	addi	a0,a0,508 # 8000d1fc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.80>
80006d5c:	8000d637          	lui	a2,0x8000d
80006d60:	22060613          	addi	a2,a2,544 # 8000d220 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.81>
80006d64:	02200593          	li	a1,34
80006d68:	00000097          	auipc	ra,0x0
80006d6c:	270080e7          	jalr	624(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80006d70 <_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa05253f8c12d2c8E>:
80006d70:	fc010113          	addi	sp,sp,-64
80006d74:	02112e23          	sw	ra,60(sp)
80006d78:	02812c23          	sw	s0,56(sp)
80006d7c:	02912a23          	sw	s1,52(sp)
80006d80:	04010413          	addi	s0,sp,64
80006d84:	00052503          	lw	a0,0(a0)
80006d88:	00058493          	mv	s1,a1
80006d8c:	fea42623          	sw	a0,-20(s0)
80006d90:	40a005b3          	neg	a1,a0
80006d94:	00b57533          	and	a0,a0,a1
80006d98:	077cb5b7          	lui	a1,0x77cb
80006d9c:	53158593          	addi	a1,a1,1329 # 77cb531 <.Lline_table_start2+0x77ca183>
80006da0:	00003097          	auipc	ra,0x3
80006da4:	1dc080e7          	jalr	476(ra) # 80009f7c <__mulsi3>
80006da8:	01b55513          	srli	a0,a0,0x1b
80006dac:	8000c5b7          	lui	a1,0x8000c
80006db0:	72458593          	addi	a1,a1,1828 # 8000c724 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4+0x28>
80006db4:	00a58533          	add	a0,a1,a0
80006db8:	00054503          	lbu	a0,0(a0)
80006dbc:	fea42823          	sw	a0,-16(s0)
80006dc0:	fec40513          	addi	a0,s0,-20
80006dc4:	fca42e23          	sw	a0,-36(s0)
80006dc8:	80009537          	lui	a0,0x80009
80006dcc:	54450513          	addi	a0,a0,1348 # 80009544 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E>
80006dd0:	fea42023          	sw	a0,-32(s0)
80006dd4:	ff040513          	addi	a0,s0,-16
80006dd8:	fea42223          	sw	a0,-28(s0)
80006ddc:	80009537          	lui	a0,0x80009
80006de0:	7dc50513          	addi	a0,a0,2012 # 800097dc <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE>
80006de4:	fea42423          	sw	a0,-24(s0)
80006de8:	8000d537          	lui	a0,0x8000d
80006dec:	27c50513          	addi	a0,a0,636 # 8000d27c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.140>
80006df0:	fca42223          	sw	a0,-60(s0)
80006df4:	00300513          	li	a0,3
80006df8:	fca42423          	sw	a0,-56(s0)
80006dfc:	fc042a23          	sw	zero,-44(s0)
80006e00:	fdc40613          	addi	a2,s0,-36
80006e04:	0144a503          	lw	a0,20(s1)
80006e08:	0184a583          	lw	a1,24(s1)
80006e0c:	fcc42623          	sw	a2,-52(s0)
80006e10:	00200613          	li	a2,2
80006e14:	fcc42823          	sw	a2,-48(s0)
80006e18:	fc440613          	addi	a2,s0,-60
80006e1c:	00001097          	auipc	ra,0x1
80006e20:	090080e7          	jalr	144(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006e24:	03c12083          	lw	ra,60(sp)
80006e28:	03812403          	lw	s0,56(sp)
80006e2c:	03412483          	lw	s1,52(sp)
80006e30:	04010113          	addi	sp,sp,64
80006e34:	00008067          	ret

80006e38 <_ZN4core6option13unwrap_failed17hb2bcafd498ce3bc5E>:
80006e38:	ff010113          	addi	sp,sp,-16
80006e3c:	00112623          	sw	ra,12(sp)
80006e40:	00812423          	sw	s0,8(sp)
80006e44:	01010413          	addi	s0,sp,16
80006e48:	00050613          	mv	a2,a0
80006e4c:	8000d537          	lui	a0,0x8000d
80006e50:	29550513          	addi	a0,a0,661 # 8000d295 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.220>
80006e54:	02b00593          	li	a1,43
80006e58:	00000097          	auipc	ra,0x0
80006e5c:	180080e7          	jalr	384(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80006e60 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E>:
80006e60:	fb010113          	addi	sp,sp,-80
80006e64:	04112623          	sw	ra,76(sp)
80006e68:	04812423          	sw	s0,72(sp)
80006e6c:	04912223          	sw	s1,68(sp)
80006e70:	05212023          	sw	s2,64(sp)
80006e74:	03312e23          	sw	s3,60(sp)
80006e78:	03412c23          	sw	s4,56(sp)
80006e7c:	03512a23          	sw	s5,52(sp)
80006e80:	05010413          	addi	s0,sp,80
80006e84:	0185a483          	lw	s1,24(a1)
80006e88:	0145a903          	lw	s2,20(a1)
80006e8c:	00c4aa83          	lw	s5,12(s1)
80006e90:	00050993          	mv	s3,a0
80006e94:	8000d5b7          	lui	a1,0x8000d
80006e98:	2d858593          	addi	a1,a1,728 # 8000d2d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.222>
80006e9c:	00c00613          	li	a2,12
80006ea0:	00090513          	mv	a0,s2
80006ea4:	000a80e7          	jalr	s5
80006ea8:	00100a13          	li	s4,1
80006eac:	0c051c63          	bnez	a0,80006f84 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006eb0:	0049a503          	lw	a0,4(s3)
80006eb4:	00850593          	addi	a1,a0,8
80006eb8:	00c50613          	addi	a2,a0,12
80006ebc:	fca42623          	sw	a0,-52(s0)
80006ec0:	8000a537          	lui	a0,0x8000a
80006ec4:	edc50513          	addi	a0,a0,-292 # 80009edc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80006ec8:	fca42823          	sw	a0,-48(s0)
80006ecc:	fcb42a23          	sw	a1,-44(s0)
80006ed0:	8000a537          	lui	a0,0x8000a
80006ed4:	8d450513          	addi	a0,a0,-1836 # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80006ed8:	fca42c23          	sw	a0,-40(s0)
80006edc:	fcc42e23          	sw	a2,-36(s0)
80006ee0:	fea42023          	sw	a0,-32(s0)
80006ee4:	8000d537          	lui	a0,0x8000d
80006ee8:	2c050513          	addi	a0,a0,704 # 8000d2c0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.221>
80006eec:	faa42a23          	sw	a0,-76(s0)
80006ef0:	00300513          	li	a0,3
80006ef4:	faa42c23          	sw	a0,-72(s0)
80006ef8:	fc042223          	sw	zero,-60(s0)
80006efc:	fcc40593          	addi	a1,s0,-52
80006f00:	fab42e23          	sw	a1,-68(s0)
80006f04:	fca42023          	sw	a0,-64(s0)
80006f08:	fb440613          	addi	a2,s0,-76
80006f0c:	00090513          	mv	a0,s2
80006f10:	00048593          	mv	a1,s1
80006f14:	00001097          	auipc	ra,0x1
80006f18:	f98080e7          	jalr	-104(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006f1c:	06051463          	bnez	a0,80006f84 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006f20:	8000d5b7          	lui	a1,0x8000d
80006f24:	2e458593          	addi	a1,a1,740 # 8000d2e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.223>
80006f28:	00200613          	li	a2,2
80006f2c:	00090513          	mv	a0,s2
80006f30:	000a80e7          	jalr	s5
80006f34:	04051863          	bnez	a0,80006f84 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h21b19c8dc1785bf2E+0x124>
80006f38:	0009a503          	lw	a0,0(s3)
80006f3c:	00052583          	lw	a1,0(a0)
80006f40:	fcb42623          	sw	a1,-52(s0)
80006f44:	00452583          	lw	a1,4(a0)
80006f48:	fcb42823          	sw	a1,-48(s0)
80006f4c:	00852583          	lw	a1,8(a0)
80006f50:	fcb42a23          	sw	a1,-44(s0)
80006f54:	00c52583          	lw	a1,12(a0)
80006f58:	fcb42c23          	sw	a1,-40(s0)
80006f5c:	01052583          	lw	a1,16(a0)
80006f60:	fcb42e23          	sw	a1,-36(s0)
80006f64:	01452503          	lw	a0,20(a0)
80006f68:	fea42023          	sw	a0,-32(s0)
80006f6c:	fcc40613          	addi	a2,s0,-52
80006f70:	00090513          	mv	a0,s2
80006f74:	00048593          	mv	a1,s1
80006f78:	00001097          	auipc	ra,0x1
80006f7c:	f34080e7          	jalr	-204(ra) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>
80006f80:	00050a13          	mv	s4,a0
80006f84:	000a0513          	mv	a0,s4
80006f88:	04c12083          	lw	ra,76(sp)
80006f8c:	04812403          	lw	s0,72(sp)
80006f90:	04412483          	lw	s1,68(sp)
80006f94:	04012903          	lw	s2,64(sp)
80006f98:	03c12983          	lw	s3,60(sp)
80006f9c:	03812a03          	lw	s4,56(sp)
80006fa0:	03412a83          	lw	s5,52(sp)
80006fa4:	05010113          	addi	sp,sp,80
80006fa8:	00008067          	ret

80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>:
80006fac:	fe010113          	addi	sp,sp,-32
80006fb0:	00112e23          	sw	ra,28(sp)
80006fb4:	00812c23          	sw	s0,24(sp)
80006fb8:	02010413          	addi	s0,sp,32
80006fbc:	fea42623          	sw	a0,-20(s0)
80006fc0:	feb42823          	sw	a1,-16(s0)
80006fc4:	00100513          	li	a0,1
80006fc8:	fea41a23          	sh	a0,-12(s0)
80006fcc:	fec40513          	addi	a0,s0,-20
80006fd0:	ffffb097          	auipc	ra,0xffffb
80006fd4:	b9c080e7          	jalr	-1124(ra) # 80001b6c <rust_begin_unwind>

80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>:
80006fd8:	fd010113          	addi	sp,sp,-48
80006fdc:	02112623          	sw	ra,44(sp)
80006fe0:	02812423          	sw	s0,40(sp)
80006fe4:	03010413          	addi	s0,sp,48
80006fe8:	fea42823          	sw	a0,-16(s0)
80006fec:	feb42a23          	sw	a1,-12(s0)
80006ff0:	ff040513          	addi	a0,s0,-16
80006ff4:	fca42c23          	sw	a0,-40(s0)
80006ff8:	00100513          	li	a0,1
80006ffc:	fca42e23          	sw	a0,-36(s0)
80007000:	fe042423          	sw	zero,-24(s0)
80007004:	00400513          	li	a0,4
80007008:	fea42023          	sw	a0,-32(s0)
8000700c:	fe042223          	sw	zero,-28(s0)
80007010:	fd840513          	addi	a0,s0,-40
80007014:	00060593          	mv	a1,a2
80007018:	00000097          	auipc	ra,0x0
8000701c:	f94080e7          	jalr	-108(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>:
80007020:	fc010113          	addi	sp,sp,-64
80007024:	02112e23          	sw	ra,60(sp)
80007028:	02812c23          	sw	s0,56(sp)
8000702c:	04010413          	addi	s0,sp,64
80007030:	fca42423          	sw	a0,-56(s0)
80007034:	fcb42623          	sw	a1,-52(s0)
80007038:	fcc40513          	addi	a0,s0,-52
8000703c:	fea42423          	sw	a0,-24(s0)
80007040:	8000a537          	lui	a0,0x8000a
80007044:	8d450513          	addi	a0,a0,-1836 # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80007048:	fea42623          	sw	a0,-20(s0)
8000704c:	fc840593          	addi	a1,s0,-56
80007050:	feb42823          	sw	a1,-16(s0)
80007054:	fea42a23          	sw	a0,-12(s0)
80007058:	8000d537          	lui	a0,0x8000d
8000705c:	2f850513          	addi	a0,a0,760 # 8000d2f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.231>
80007060:	fca42823          	sw	a0,-48(s0)
80007064:	00200513          	li	a0,2
80007068:	fca42a23          	sw	a0,-44(s0)
8000706c:	fe042023          	sw	zero,-32(s0)
80007070:	fe840593          	addi	a1,s0,-24
80007074:	fcb42c23          	sw	a1,-40(s0)
80007078:	fca42e23          	sw	a0,-36(s0)
8000707c:	fd040513          	addi	a0,s0,-48
80007080:	00060593          	mv	a1,a2
80007084:	00000097          	auipc	ra,0x0
80007088:	f28080e7          	jalr	-216(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

8000708c <_ZN4core9panicking13assert_failed17h4fcb3a6812de271fE>:
8000708c:	ff010113          	addi	sp,sp,-16
80007090:	00112623          	sw	ra,12(sp)
80007094:	00812423          	sw	s0,8(sp)
80007098:	01010413          	addi	s0,sp,16
8000709c:	00060793          	mv	a5,a2
800070a0:	fea42823          	sw	a0,-16(s0)
800070a4:	feb42a23          	sw	a1,-12(s0)
800070a8:	8000d637          	lui	a2,0x8000d
800070ac:	30860613          	addi	a2,a2,776 # 8000d308 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.238>
800070b0:	8000c837          	lui	a6,0x8000c
800070b4:	78c80813          	addi	a6,a6,1932 # 8000c78c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.24>
800070b8:	ff040593          	addi	a1,s0,-16
800070bc:	ff440693          	addi	a3,s0,-12
800070c0:	00000513          	li	a0,0
800070c4:	00060713          	mv	a4,a2
800070c8:	00000097          	auipc	ra,0x0
800070cc:	008080e7          	jalr	8(ra) # 800070d0 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E>

800070d0 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E>:
800070d0:	f8010113          	addi	sp,sp,-128
800070d4:	06112e23          	sw	ra,124(sp)
800070d8:	06812c23          	sw	s0,120(sp)
800070dc:	06912a23          	sw	s1,116(sp)
800070e0:	07212823          	sw	s2,112(sp)
800070e4:	08010413          	addi	s0,sp,128
800070e8:	00080493          	mv	s1,a6
800070ec:	f8b42423          	sw	a1,-120(s0)
800070f0:	f8c42623          	sw	a2,-116(s0)
800070f4:	f8d42823          	sw	a3,-112(s0)
800070f8:	f8e42a23          	sw	a4,-108(s0)
800070fc:	00050c63          	beqz	a0,80007114 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x44>
80007100:	00100593          	li	a1,1
80007104:	02b51263          	bne	a0,a1,80007128 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x58>
80007108:	8000d537          	lui	a0,0x8000d
8000710c:	31a50513          	addi	a0,a0,794 # 8000d31a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.241>
80007110:	00c0006f          	j	8000711c <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x4c>
80007114:	8000d537          	lui	a0,0x8000d
80007118:	31850513          	addi	a0,a0,792 # 8000d318 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.240>
8000711c:	f8a42c23          	sw	a0,-104(s0)
80007120:	00200513          	li	a0,2
80007124:	0140006f          	j	80007138 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x68>
80007128:	8000d537          	lui	a0,0x8000d
8000712c:	31c50513          	addi	a0,a0,796 # 8000d31c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.242>
80007130:	f8a42c23          	sw	a0,-104(s0)
80007134:	00700513          	li	a0,7
80007138:	0007a583          	lw	a1,0(a5)
8000713c:	f8a42e23          	sw	a0,-100(s0)
80007140:	04059663          	bnez	a1,8000718c <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0xbc>
80007144:	f9840513          	addi	a0,s0,-104
80007148:	faa42c23          	sw	a0,-72(s0)
8000714c:	8000a537          	lui	a0,0x8000a
80007150:	edc50513          	addi	a0,a0,-292 # 80009edc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
80007154:	faa42e23          	sw	a0,-68(s0)
80007158:	f8840513          	addi	a0,s0,-120
8000715c:	fca42023          	sw	a0,-64(s0)
80007160:	8000a537          	lui	a0,0x8000a
80007164:	d9850513          	addi	a0,a0,-616 # 80009d98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
80007168:	fca42223          	sw	a0,-60(s0)
8000716c:	f9040593          	addi	a1,s0,-112
80007170:	fcb42423          	sw	a1,-56(s0)
80007174:	fca42623          	sw	a0,-52(s0)
80007178:	8000d537          	lui	a0,0x8000d
8000717c:	34450513          	addi	a0,a0,836 # 8000d344 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.246>
80007180:	fca42c23          	sw	a0,-40(s0)
80007184:	00300513          	li	a0,3
80007188:	0700006f          	j	800071f8 <_ZN4core9panicking19assert_failed_inner17hd8c487846e85a271E+0x128>
8000718c:	fa040513          	addi	a0,s0,-96
80007190:	01800613          	li	a2,24
80007194:	fa040913          	addi	s2,s0,-96
80007198:	00078593          	mv	a1,a5
8000719c:	00003097          	auipc	ra,0x3
800071a0:	eb0080e7          	jalr	-336(ra) # 8000a04c <memcpy>
800071a4:	f9840513          	addi	a0,s0,-104
800071a8:	faa42c23          	sw	a0,-72(s0)
800071ac:	8000a537          	lui	a0,0x8000a
800071b0:	edc50513          	addi	a0,a0,-292 # 80009edc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
800071b4:	faa42e23          	sw	a0,-68(s0)
800071b8:	fd242023          	sw	s2,-64(s0)
800071bc:	80008537          	lui	a0,0x80008
800071c0:	e7450513          	addi	a0,a0,-396 # 80007e74 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hefd8b8a880068ae0E>
800071c4:	fca42223          	sw	a0,-60(s0)
800071c8:	f8840513          	addi	a0,s0,-120
800071cc:	fca42423          	sw	a0,-56(s0)
800071d0:	8000a537          	lui	a0,0x8000a
800071d4:	d9850513          	addi	a0,a0,-616 # 80009d98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
800071d8:	fca42623          	sw	a0,-52(s0)
800071dc:	f9040593          	addi	a1,s0,-112
800071e0:	fcb42823          	sw	a1,-48(s0)
800071e4:	fca42a23          	sw	a0,-44(s0)
800071e8:	8000d537          	lui	a0,0x8000d
800071ec:	36850513          	addi	a0,a0,872 # 8000d368 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.249>
800071f0:	fca42c23          	sw	a0,-40(s0)
800071f4:	00400513          	li	a0,4
800071f8:	fca42e23          	sw	a0,-36(s0)
800071fc:	fe042423          	sw	zero,-24(s0)
80007200:	fb840593          	addi	a1,s0,-72
80007204:	feb42023          	sw	a1,-32(s0)
80007208:	fea42223          	sw	a0,-28(s0)
8000720c:	fd840513          	addi	a0,s0,-40
80007210:	00048593          	mv	a1,s1
80007214:	00000097          	auipc	ra,0x0
80007218:	d98080e7          	jalr	-616(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

8000721c <_ZN4core6result13unwrap_failed17h9dc91f16af2b2b67E>:
8000721c:	fc010113          	addi	sp,sp,-64
80007220:	02112e23          	sw	ra,60(sp)
80007224:	02812c23          	sw	s0,56(sp)
80007228:	04010413          	addi	s0,sp,64
8000722c:	fca42023          	sw	a0,-64(s0)
80007230:	fcb42223          	sw	a1,-60(s0)
80007234:	fcc42423          	sw	a2,-56(s0)
80007238:	fcd42623          	sw	a3,-52(s0)
8000723c:	fc040513          	addi	a0,s0,-64
80007240:	fea42423          	sw	a0,-24(s0)
80007244:	8000a537          	lui	a0,0x8000a
80007248:	edc50513          	addi	a0,a0,-292 # 80009edc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>
8000724c:	fea42623          	sw	a0,-20(s0)
80007250:	fc840513          	addi	a0,s0,-56
80007254:	fea42823          	sw	a0,-16(s0)
80007258:	8000a537          	lui	a0,0x8000a
8000725c:	d9850513          	addi	a0,a0,-616 # 80009d98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>
80007260:	fea42a23          	sw	a0,-12(s0)
80007264:	8000d537          	lui	a0,0x8000d
80007268:	38c50513          	addi	a0,a0,908 # 8000d38c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.251>
8000726c:	fca42823          	sw	a0,-48(s0)
80007270:	00200513          	li	a0,2
80007274:	fca42a23          	sw	a0,-44(s0)
80007278:	fe042023          	sw	zero,-32(s0)
8000727c:	fe840593          	addi	a1,s0,-24
80007280:	fcb42c23          	sw	a1,-40(s0)
80007284:	fca42e23          	sw	a0,-36(s0)
80007288:	fd040513          	addi	a0,s0,-48
8000728c:	00070593          	mv	a1,a4
80007290:	00000097          	auipc	ra,0x0
80007294:	d1c080e7          	jalr	-740(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80007298 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>:
80007298:	fb010113          	addi	sp,sp,-80
8000729c:	04112623          	sw	ra,76(sp)
800072a0:	04812423          	sw	s0,72(sp)
800072a4:	04912223          	sw	s1,68(sp)
800072a8:	05212023          	sw	s2,64(sp)
800072ac:	03312e23          	sw	s3,60(sp)
800072b0:	03412c23          	sw	s4,56(sp)
800072b4:	03512a23          	sw	s5,52(sp)
800072b8:	03612823          	sw	s6,48(sp)
800072bc:	03712623          	sw	s7,44(sp)
800072c0:	03812423          	sw	s8,40(sp)
800072c4:	03912223          	sw	s9,36(sp)
800072c8:	03a12023          	sw	s10,32(sp)
800072cc:	01b12e23          	sw	s11,28(sp)
800072d0:	05010413          	addi	s0,sp,80
800072d4:	00060c13          	mv	s8,a2
800072d8:	00058913          	mv	s2,a1
800072dc:	00000993          	li	s3,0
800072e0:	00000b93          	li	s7,0
800072e4:	00000d13          	li	s10,0
800072e8:	0a0a15b7          	lui	a1,0xa0a1
800072ec:	a0a58a93          	addi	s5,a1,-1526 # a0a0a0a <.Lline_table_start2+0xa09f65c>
800072f0:	010105b7          	lui	a1,0x1010
800072f4:	10058b13          	addi	s6,a1,256 # 1010100 <.Lline_table_start2+0x100ed52>
800072f8:	00852583          	lw	a1,8(a0)
800072fc:	fcb42423          	sw	a1,-56(s0)
80007300:	00052583          	lw	a1,0(a0)
80007304:	fcb42223          	sw	a1,-60(s0)
80007308:	00452503          	lw	a0,4(a0)
8000730c:	fca42023          	sw	a0,-64(s0)
80007310:	fff90513          	addi	a0,s2,-1
80007314:	faa42c23          	sw	a0,-72(s0)
80007318:	40c00533          	neg	a0,a2
8000731c:	faa42e23          	sw	a0,-68(s0)
80007320:	00a00d93          	li	s11,10
80007324:	80808537          	lui	a0,0x80808
80007328:	08050a13          	addi	s4,a0,128 # 80808080 <KALLOC_BUFFER+0x7f9080>
8000732c:	0400006f          	j	8000736c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xd4>
80007330:	fb842503          	lw	a0,-72(s0)
80007334:	00950533          	add	a0,a0,s1
80007338:	00054503          	lbu	a0,0(a0)
8000733c:	ff650513          	addi	a0,a0,-10
80007340:	00153513          	seqz	a0,a0
80007344:	fc842583          	lw	a1,-56(s0)
80007348:	00a58023          	sb	a0,0(a1)
8000734c:	fc042503          	lw	a0,-64(s0)
80007350:	00c52683          	lw	a3,12(a0)
80007354:	41348633          	sub	a2,s1,s3
80007358:	013905b3          	add	a1,s2,s3
8000735c:	fc442503          	lw	a0,-60(s0)
80007360:	000680e7          	jalr	a3
80007364:	000c8993          	mv	s3,s9
80007368:	18051663          	bnez	a0,800074f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x25c>
8000736c:	001d7513          	andi	a0,s10,1
80007370:	16051e63          	bnez	a0,800074ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x254>
80007374:	057c7863          	bgeu	s8,s7,800073c4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x12c>
80007378:	00100d13          	li	s10,1
8000737c:	00098c93          	mv	s9,s3
80007380:	000c0493          	mv	s1,s8
80007384:	17898463          	beq	s3,s8,800074ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x254>
80007388:	fc842503          	lw	a0,-56(s0)
8000738c:	00054503          	lbu	a0,0(a0)
80007390:	02050263          	beqz	a0,800073b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x11c>
80007394:	fc042503          	lw	a0,-64(s0)
80007398:	00c52683          	lw	a3,12(a0)
8000739c:	00400613          	li	a2,4
800073a0:	fc442503          	lw	a0,-60(s0)
800073a4:	8000c5b7          	lui	a1,0x8000c
800073a8:	03e58593          	addi	a1,a1,62 # 8000c03e <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4+0x6>
800073ac:	000680e7          	jalr	a3
800073b0:	14051263          	bnez	a0,800074f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x25c>
800073b4:	f7349ee3          	bne	s1,s3,80007330 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x98>
800073b8:	00000513          	li	a0,0
800073bc:	f89ff06f          	j	80007344 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xac>
800073c0:	fb7c6ce3          	bltu	s8,s7,80007378 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xe0>
800073c4:	417c05b3          	sub	a1,s8,s7
800073c8:	01790533          	add	a0,s2,s7
800073cc:	00700613          	li	a2,7
800073d0:	02b66863          	bltu	a2,a1,80007400 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x168>
800073d4:	117c0263          	beq	s8,s7,800074d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
800073d8:	00000593          	li	a1,0
800073dc:	fbc42603          	lw	a2,-68(s0)
800073e0:	01760633          	add	a2,a2,s7
800073e4:	00050693          	mv	a3,a0
800073e8:	0006c703          	lbu	a4,0(a3)
800073ec:	0bb70c63          	beq	a4,s11,800074a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x20c>
800073f0:	fff58593          	addi	a1,a1,-1
800073f4:	00168693          	addi	a3,a3,1
800073f8:	feb618e3          	bne	a2,a1,800073e8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x150>
800073fc:	0dc0006f          	j	800074d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
80007400:	00350713          	addi	a4,a0,3
80007404:	ffc77713          	andi	a4,a4,-4
80007408:	40a70633          	sub	a2,a4,a0
8000740c:	02060463          	beqz	a2,80007434 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x19c>
80007410:	00000693          	li	a3,0
80007414:	00d507b3          	add	a5,a0,a3
80007418:	0007c783          	lbu	a5,0(a5)
8000741c:	09b78663          	beq	a5,s11,800074a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x210>
80007420:	00168693          	addi	a3,a3,1
80007424:	fed618e3          	bne	a2,a3,80007414 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x17c>
80007428:	ff858693          	addi	a3,a1,-8
8000742c:	00c6f663          	bgeu	a3,a2,80007438 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1a0>
80007430:	0480006f          	j	80007478 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1e0>
80007434:	ff858693          	addi	a3,a1,-8
80007438:	00400793          	li	a5,4
8000743c:	00e78733          	add	a4,a5,a4
80007440:	ffc72783          	lw	a5,-4(a4)
80007444:	00072803          	lw	a6,0(a4)
80007448:	0157c8b3          	xor	a7,a5,s5
8000744c:	01584833          	xor	a6,a6,s5
80007450:	410b02b3          	sub	t0,s6,a6
80007454:	0102e833          	or	a6,t0,a6
80007458:	411b08b3          	sub	a7,s6,a7
8000745c:	00f8e7b3          	or	a5,a7,a5
80007460:	0107f7b3          	and	a5,a5,a6
80007464:	0147f7b3          	and	a5,a5,s4
80007468:	01479863          	bne	a5,s4,80007478 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1e0>
8000746c:	00860613          	addi	a2,a2,8
80007470:	00870713          	addi	a4,a4,8
80007474:	fcc6f6e3          	bgeu	a3,a2,80007440 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1a8>
80007478:	06b60063          	beq	a2,a1,800074d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
8000747c:	00c506b3          	add	a3,a0,a2
80007480:	40c005b3          	neg	a1,a2
80007484:	fbc42603          	lw	a2,-68(s0)
80007488:	01760633          	add	a2,a2,s7
8000748c:	0006c703          	lbu	a4,0(a3)
80007490:	01b70a63          	beq	a4,s11,800074a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x20c>
80007494:	fff58593          	addi	a1,a1,-1
80007498:	00168693          	addi	a3,a3,1
8000749c:	feb618e3          	bne	a2,a1,8000748c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x1f4>
800074a0:	0380006f          	j	800074d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x240>
800074a4:	40b006b3          	neg	a3,a1
800074a8:	017685b3          	add	a1,a3,s7
800074ac:	00158b93          	addi	s7,a1,1
800074b0:	f185f8e3          	bgeu	a1,s8,800073c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x128>
800074b4:	00d50533          	add	a0,a0,a3
800074b8:	00054503          	lbu	a0,0(a0)
800074bc:	f1b512e3          	bne	a0,s11,800073c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x128>
800074c0:	000b8c93          	mv	s9,s7
800074c4:	000b8493          	mv	s1,s7
800074c8:	fc842503          	lw	a0,-56(s0)
800074cc:	00054503          	lbu	a0,0(a0)
800074d0:	ee0502e3          	beqz	a0,800073b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x11c>
800074d4:	ec1ff06f          	j	80007394 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xfc>
800074d8:	000c0b93          	mv	s7,s8
800074dc:	00100d13          	li	s10,1
800074e0:	00098c93          	mv	s9,s3
800074e4:	000c0493          	mv	s1,s8
800074e8:	eb8990e3          	bne	s3,s8,80007388 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0xf0>
800074ec:	00000513          	li	a0,0
800074f0:	0080006f          	j	800074f8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E+0x260>
800074f4:	00100513          	li	a0,1
800074f8:	04c12083          	lw	ra,76(sp)
800074fc:	04812403          	lw	s0,72(sp)
80007500:	04412483          	lw	s1,68(sp)
80007504:	04012903          	lw	s2,64(sp)
80007508:	03c12983          	lw	s3,60(sp)
8000750c:	03812a03          	lw	s4,56(sp)
80007510:	03412a83          	lw	s5,52(sp)
80007514:	03012b03          	lw	s6,48(sp)
80007518:	02c12b83          	lw	s7,44(sp)
8000751c:	02812c03          	lw	s8,40(sp)
80007520:	02412c83          	lw	s9,36(sp)
80007524:	02012d03          	lw	s10,32(sp)
80007528:	01c12d83          	lw	s11,28(sp)
8000752c:	05010113          	addi	sp,sp,80
80007530:	00008067          	ret

80007534 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E>:
80007534:	fe010113          	addi	sp,sp,-32
80007538:	00112e23          	sw	ra,28(sp)
8000753c:	00812c23          	sw	s0,24(sp)
80007540:	00912a23          	sw	s1,20(sp)
80007544:	01212823          	sw	s2,16(sp)
80007548:	01312623          	sw	s3,12(sp)
8000754c:	01412423          	sw	s4,8(sp)
80007550:	02010413          	addi	s0,sp,32
80007554:	00852903          	lw	s2,8(a0)
80007558:	00094603          	lbu	a2,0(s2)
8000755c:	00052483          	lw	s1,0(a0)
80007560:	00452983          	lw	s3,4(a0)
80007564:	04060863          	beqz	a2,800075b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E+0x80>
80007568:	00c9a703          	lw	a4,12(s3)
8000756c:	8000c6b7          	lui	a3,0x8000c
80007570:	03e68693          	addi	a3,a3,62 # 8000c03e <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4+0x6>
80007574:	00400613          	li	a2,4
80007578:	00048513          	mv	a0,s1
8000757c:	00058a13          	mv	s4,a1
80007580:	00068593          	mv	a1,a3
80007584:	000700e7          	jalr	a4
80007588:	000a0593          	mv	a1,s4
8000758c:	02050463          	beqz	a0,800075b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hfb9e40f1a918b641E+0x80>
80007590:	00100513          	li	a0,1
80007594:	01c12083          	lw	ra,28(sp)
80007598:	01812403          	lw	s0,24(sp)
8000759c:	01412483          	lw	s1,20(sp)
800075a0:	01012903          	lw	s2,16(sp)
800075a4:	00c12983          	lw	s3,12(sp)
800075a8:	00812a03          	lw	s4,8(sp)
800075ac:	02010113          	addi	sp,sp,32
800075b0:	00008067          	ret
800075b4:	ff658513          	addi	a0,a1,-10
800075b8:	00153513          	seqz	a0,a0
800075bc:	00a90023          	sb	a0,0(s2)
800075c0:	0109a303          	lw	t1,16(s3)
800075c4:	00048513          	mv	a0,s1
800075c8:	01c12083          	lw	ra,28(sp)
800075cc:	01812403          	lw	s0,24(sp)
800075d0:	01412483          	lw	s1,20(sp)
800075d4:	01012903          	lw	s2,16(sp)
800075d8:	00c12983          	lw	s3,12(sp)
800075dc:	00812a03          	lw	s4,8(sp)
800075e0:	02010113          	addi	sp,sp,32
800075e4:	00030067          	jr	t1

800075e8 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>:
800075e8:	fa010113          	addi	sp,sp,-96
800075ec:	04112e23          	sw	ra,92(sp)
800075f0:	04812c23          	sw	s0,88(sp)
800075f4:	04912a23          	sw	s1,84(sp)
800075f8:	05212823          	sw	s2,80(sp)
800075fc:	05312623          	sw	s3,76(sp)
80007600:	05412423          	sw	s4,72(sp)
80007604:	05512223          	sw	s5,68(sp)
80007608:	05612023          	sw	s6,64(sp)
8000760c:	03712e23          	sw	s7,60(sp)
80007610:	03812c23          	sw	s8,56(sp)
80007614:	06010413          	addi	s0,sp,96
80007618:	00050493          	mv	s1,a0
8000761c:	00454503          	lbu	a0,4(a0)
80007620:	00100b13          	li	s6,1
80007624:	00100a93          	li	s5,1
80007628:	04050063          	beqz	a0,80007668 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x80>
8000762c:	01548223          	sb	s5,4(s1)
80007630:	016482a3          	sb	s6,5(s1)
80007634:	00048513          	mv	a0,s1
80007638:	05c12083          	lw	ra,92(sp)
8000763c:	05812403          	lw	s0,88(sp)
80007640:	05412483          	lw	s1,84(sp)
80007644:	05012903          	lw	s2,80(sp)
80007648:	04c12983          	lw	s3,76(sp)
8000764c:	04812a03          	lw	s4,72(sp)
80007650:	04412a83          	lw	s5,68(sp)
80007654:	04012b03          	lw	s6,64(sp)
80007658:	03c12b83          	lw	s7,60(sp)
8000765c:	03812c03          	lw	s8,56(sp)
80007660:	06010113          	addi	sp,sp,96
80007664:	00008067          	ret
80007668:	00070993          	mv	s3,a4
8000766c:	00068913          	mv	s2,a3
80007670:	0004aa03          	lw	s4,0(s1)
80007674:	01ca2503          	lw	a0,28(s4)
80007678:	0054c683          	lbu	a3,5(s1)
8000767c:	00457713          	andi	a4,a0,4
80007680:	00071e63          	bnez	a4,8000769c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0xb4>
80007684:	00058b93          	mv	s7,a1
80007688:	00060c13          	mv	s8,a2
8000768c:	10069c63          	bnez	a3,800077a4 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x1bc>
80007690:	8000d5b7          	lui	a1,0x8000d
80007694:	3b458593          	addi	a1,a1,948 # 8000d3b4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.254>
80007698:	1140006f          	j	800077ac <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x1c4>
8000769c:	04069063          	bnez	a3,800076dc <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0xf4>
800076a0:	018a2683          	lw	a3,24(s4)
800076a4:	014a2503          	lw	a0,20(s4)
800076a8:	00c6a703          	lw	a4,12(a3)
800076ac:	8000d6b7          	lui	a3,0x8000d
800076b0:	3b968693          	addi	a3,a3,953 # 8000d3b9 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.256>
800076b4:	00060a93          	mv	s5,a2
800076b8:	00300613          	li	a2,3
800076bc:	00058b93          	mv	s7,a1
800076c0:	00068593          	mv	a1,a3
800076c4:	000700e7          	jalr	a4
800076c8:	000a8613          	mv	a2,s5
800076cc:	00100a93          	li	s5,1
800076d0:	f4051ee3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800076d4:	000b8593          	mv	a1,s7
800076d8:	01ca2503          	lw	a0,28(s4)
800076dc:	014a2683          	lw	a3,20(s4)
800076e0:	018a2703          	lw	a4,24(s4)
800076e4:	00100a93          	li	s5,1
800076e8:	fb5409a3          	sb	s5,-77(s0)
800076ec:	fad42223          	sw	a3,-92(s0)
800076f0:	fae42423          	sw	a4,-88(s0)
800076f4:	fb340693          	addi	a3,s0,-77
800076f8:	fad42623          	sw	a3,-84(s0)
800076fc:	010a2683          	lw	a3,16(s4)
80007700:	020a4703          	lbu	a4,32(s4)
80007704:	000a2783          	lw	a5,0(s4)
80007708:	004a2803          	lw	a6,4(s4)
8000770c:	008a2883          	lw	a7,8(s4)
80007710:	00ca2283          	lw	t0,12(s4)
80007714:	fca42823          	sw	a0,-48(s0)
80007718:	fcd42223          	sw	a3,-60(s0)
8000771c:	fce40a23          	sb	a4,-44(s0)
80007720:	faf42a23          	sw	a5,-76(s0)
80007724:	fb042c23          	sw	a6,-72(s0)
80007728:	fb142e23          	sw	a7,-68(s0)
8000772c:	fc542023          	sw	t0,-64(s0)
80007730:	fa440513          	addi	a0,s0,-92
80007734:	fca42423          	sw	a0,-56(s0)
80007738:	8000d537          	lui	a0,0x8000d
8000773c:	39c50513          	addi	a0,a0,924 # 8000d39c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>
80007740:	fca42623          	sw	a0,-52(s0)
80007744:	fa440513          	addi	a0,s0,-92
80007748:	00000097          	auipc	ra,0x0
8000774c:	b50080e7          	jalr	-1200(ra) # 80007298 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>
80007750:	ec051ee3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007754:	8000d5b7          	lui	a1,0x8000d
80007758:	38858593          	addi	a1,a1,904 # 8000d388 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>
8000775c:	fa440513          	addi	a0,s0,-92
80007760:	00200613          	li	a2,2
80007764:	00000097          	auipc	ra,0x0
80007768:	b34080e7          	jalr	-1228(ra) # 80007298 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h0bff4080e4a1e761E>
8000776c:	ec0510e3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007770:	00c9a603          	lw	a2,12(s3)
80007774:	fb440593          	addi	a1,s0,-76
80007778:	00090513          	mv	a0,s2
8000777c:	000600e7          	jalr	a2
80007780:	ea0516e3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
80007784:	fcc42583          	lw	a1,-52(s0)
80007788:	fc842503          	lw	a0,-56(s0)
8000778c:	00c5a683          	lw	a3,12(a1)
80007790:	8000d5b7          	lui	a1,0x8000d
80007794:	3bc58593          	addi	a1,a1,956 # 8000d3bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.257>
80007798:	00200613          	li	a2,2
8000779c:	000680e7          	jalr	a3
800077a0:	07c0006f          	j	8000781c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x234>
800077a4:	8000d5b7          	lui	a1,0x8000d
800077a8:	3b758593          	addi	a1,a1,951 # 8000d3b7 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.255>
800077ac:	018a2603          	lw	a2,24(s4)
800077b0:	014a2503          	lw	a0,20(s4)
800077b4:	00c62703          	lw	a4,12(a2)
800077b8:	0036c613          	xori	a2,a3,3
800077bc:	000700e7          	jalr	a4
800077c0:	00100a93          	li	s5,1
800077c4:	e60514e3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800077c8:	000c0613          	mv	a2,s8
800077cc:	000b8593          	mv	a1,s7
800077d0:	018a2683          	lw	a3,24(s4)
800077d4:	014a2503          	lw	a0,20(s4)
800077d8:	00c6a683          	lw	a3,12(a3)
800077dc:	000680e7          	jalr	a3
800077e0:	00100a93          	li	s5,1
800077e4:	e40514e3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
800077e8:	018a2583          	lw	a1,24(s4)
800077ec:	014a2503          	lw	a0,20(s4)
800077f0:	00c5a683          	lw	a3,12(a1)
800077f4:	8000d5b7          	lui	a1,0x8000d
800077f8:	38858593          	addi	a1,a1,904 # 8000d388 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>
800077fc:	00200613          	li	a2,2
80007800:	000680e7          	jalr	a3
80007804:	00100a93          	li	s5,1
80007808:	e20512e3          	bnez	a0,8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>
8000780c:	00c9a603          	lw	a2,12(s3)
80007810:	00090513          	mv	a0,s2
80007814:	000a0593          	mv	a1,s4
80007818:	000600e7          	jalr	a2
8000781c:	00050a93          	mv	s5,a0
80007820:	e0dff06f          	j	8000762c <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E+0x44>

80007824 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E>:
80007824:	b7010113          	addi	sp,sp,-1168
80007828:	48112623          	sw	ra,1164(sp)
8000782c:	48812423          	sw	s0,1160(sp)
80007830:	48912223          	sw	s1,1156(sp)
80007834:	49212023          	sw	s2,1152(sp)
80007838:	47312e23          	sw	s3,1148(sp)
8000783c:	47412c23          	sw	s4,1144(sp)
80007840:	47512a23          	sw	s5,1140(sp)
80007844:	47612823          	sw	s6,1136(sp)
80007848:	49010413          	addi	s0,sp,1168
8000784c:	00068493          	mv	s1,a3
80007850:	00159793          	slli	a5,a1,0x1
80007854:	0187d713          	srli	a4,a5,0x18
80007858:	00959693          	slli	a3,a1,0x9
8000785c:	0096d813          	srli	a6,a3,0x9
80007860:	02070e63          	beqz	a4,8000789c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x78>
80007864:	008006b7          	lui	a3,0x800
80007868:	00d866b3          	or	a3,a6,a3
8000786c:	0017d893          	srli	a7,a5,0x1
80007870:	7f8007b7          	lui	a5,0x7f800
80007874:	02f88c63          	beq	a7,a5,800078ac <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x88>
80007878:	00f5f8b3          	and	a7,a1,a5
8000787c:	02f88c63          	beq	a7,a5,800078b4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x90>
80007880:	0016f793          	andi	a5,a3,1
80007884:	02089c63          	bnez	a7,800078bc <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x98>
80007888:	06080a63          	beqz	a6,800078fc <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xd8>
8000788c:	00000813          	li	a6,0
80007890:	00000893          	li	a7,0
80007894:	f6a70713          	addi	a4,a4,-150
80007898:	0580006f          	j	800078f0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xcc>
8000789c:	0086d693          	srli	a3,a3,0x8
800078a0:	0017d893          	srli	a7,a5,0x1
800078a4:	7f8007b7          	lui	a5,0x7f800
800078a8:	fcf898e3          	bne	a7,a5,80007878 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x54>
800078ac:	00300793          	li	a5,3
800078b0:	0500006f          	j	80007900 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800078b4:	00200793          	li	a5,2
800078b8:	0480006f          	j	80007900 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800078bc:	00800837          	lui	a6,0x800
800078c0:	03069063          	bne	a3,a6,800078e0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xbc>
800078c4:	00000813          	li	a6,0
800078c8:	00000893          	li	a7,0
800078cc:	f6870713          	addi	a4,a4,-152
800078d0:	00200293          	li	t0,2
800078d4:	020006b7          	lui	a3,0x2000
800078d8:	00100793          	li	a5,1
800078dc:	0240006f          	j	80007900 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800078e0:	00000813          	li	a6,0
800078e4:	00000893          	li	a7,0
800078e8:	00169693          	slli	a3,a3,0x1
800078ec:	f6970713          	addi	a4,a4,-151
800078f0:	0017c793          	xori	a5,a5,1
800078f4:	00100293          	li	t0,1
800078f8:	0080006f          	j	80007900 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0xdc>
800078fc:	00400793          	li	a5,4
80007900:	fad42c23          	sw	a3,-72(s0)
80007904:	fb042e23          	sw	a6,-68(s0)
80007908:	fc042223          	sw	zero,-60(s0)
8000790c:	00100a13          	li	s4,1
80007910:	fd442023          	sw	s4,-64(s0)
80007914:	fc542423          	sw	t0,-56(s0)
80007918:	fd142623          	sw	a7,-52(s0)
8000791c:	fce41823          	sh	a4,-48(s0)
80007920:	ffe78693          	addi	a3,a5,-2 # 7f7ffffe <.Lline_table_start2+0x7f7fec50>
80007924:	fcf40923          	sb	a5,-46(s0)
80007928:	02068863          	beqz	a3,80007958 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x134>
8000792c:	00300793          	li	a5,3
80007930:	00f6e463          	bltu	a3,a5,80007938 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x114>
80007934:	00300693          	li	a3,3
80007938:	00100793          	li	a5,1
8000793c:	0405c463          	bltz	a1,80007984 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x160>
80007940:	8000da37          	lui	s4,0x8000d
80007944:	234a0a13          	addi	s4,s4,564 # 8000d234 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>
80007948:	00100813          	li	a6,1
8000794c:	00100a93          	li	s5,1
80007950:	04060463          	beqz	a2,80007998 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x174>
80007954:	04c0006f          	j	800079a0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x17c>
80007958:	00000a93          	li	s5,0
8000795c:	00200593          	li	a1,2
80007960:	f6b41c23          	sh	a1,-136(s0)
80007964:	8000d5b7          	lui	a1,0x8000d
80007968:	23558593          	addi	a1,a1,565 # 8000d235 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>
8000796c:	f6b42e23          	sw	a1,-132(s0)
80007970:	00300593          	li	a1,3
80007974:	f8b42023          	sw	a1,-128(s0)
80007978:	f7840613          	addi	a2,s0,-136
8000797c:	00100593          	li	a1,1
80007980:	1b80006f          	j	80007b38 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007984:	8000d837          	lui	a6,0x8000d
80007988:	23380813          	addi	a6,a6,563 # 8000d233 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>
8000798c:	00080a13          	mv	s4,a6
80007990:	00100a93          	li	s5,1
80007994:	00061663          	bnez	a2,800079a0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x17c>
80007998:	01f5da93          	srli	s5,a1,0x1f
8000799c:	00080a13          	mv	s4,a6
800079a0:	00200593          	li	a1,2
800079a4:	02f68a63          	beq	a3,a5,800079d8 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x1b4>
800079a8:	04b69a63          	bne	a3,a1,800079fc <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x1d8>
800079ac:	f6b41c23          	sh	a1,-136(s0)
800079b0:	10048263          	beqz	s1,80007ab4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x290>
800079b4:	8000d5b7          	lui	a1,0x8000d
800079b8:	23158593          	addi	a1,a1,561 # 8000d231 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
800079bc:	f6b42e23          	sw	a1,-132(s0)
800079c0:	00200593          	li	a1,2
800079c4:	f8b42023          	sw	a1,-128(s0)
800079c8:	f8041223          	sh	zero,-124(s0)
800079cc:	f8942423          	sw	s1,-120(s0)
800079d0:	f7840613          	addi	a2,s0,-136
800079d4:	1640006f          	j	80007b38 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
800079d8:	f6b41c23          	sh	a1,-136(s0)
800079dc:	8000d5b7          	lui	a1,0x8000d
800079e0:	23858593          	addi	a1,a1,568 # 8000d238 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>
800079e4:	f6b42e23          	sw	a1,-132(s0)
800079e8:	00300593          	li	a1,3
800079ec:	f8b42023          	sw	a1,-128(s0)
800079f0:	00100593          	li	a1,1
800079f4:	f7840613          	addi	a2,s0,-136
800079f8:	1400006f          	j	80007b38 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
800079fc:	00050b13          	mv	s6,a0
80007a00:	01071593          	slli	a1,a4,0x10
80007a04:	41f5d513          	srai	a0,a1,0x1f
80007a08:	fef57513          	andi	a0,a0,-17
80007a0c:	00550513          	addi	a0,a0,5
80007a10:	4105d593          	srai	a1,a1,0x10
80007a14:	00002097          	auipc	ra,0x2
80007a18:	568080e7          	jalr	1384(ra) # 80009f7c <__mulsi3>
80007a1c:	00655593          	srli	a1,a0,0x6
80007a20:	0fb00613          	li	a2,251
80007a24:	14c5fc63          	bgeu	a1,a2,80007b7c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x358>
80007a28:	00455513          	srli	a0,a0,0x4
80007a2c:	00f4d593          	srli	a1,s1,0xf
80007a30:	01550993          	addi	s3,a0,21
80007a34:	00058663          	beqz	a1,80007a40 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x21c>
80007a38:	ffff8537          	lui	a0,0xffff8
80007a3c:	0080006f          	j	80007a44 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x220>
80007a40:	40900533          	neg	a0,s1
80007a44:	01051513          	slli	a0,a0,0x10
80007a48:	41055913          	srai	s2,a0,0x10
80007a4c:	f7840513          	addi	a0,s0,-136
80007a50:	fb840593          	addi	a1,s0,-72
80007a54:	b7840613          	addi	a2,s0,-1160
80007a58:	00098693          	mv	a3,s3
80007a5c:	00090713          	mv	a4,s2
80007a60:	ffffe097          	auipc	ra,0xffffe
80007a64:	6bc080e7          	jalr	1724(ra) # 8000611c <_ZN4core3num7flt2dec8strategy5grisu16format_exact_opt17hb40d0664603f1a82E>
80007a68:	f7842503          	lw	a0,-136(s0)
80007a6c:	06050263          	beqz	a0,80007ad0 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2ac>
80007a70:	f8042503          	lw	a0,-128(s0)
80007a74:	f7c42583          	lw	a1,-132(s0)
80007a78:	f7842603          	lw	a2,-136(s0)
80007a7c:	faa42823          	sw	a0,-80(s0)
80007a80:	fab42623          	sw	a1,-84(s0)
80007a84:	fac42423          	sw	a2,-88(s0)
80007a88:	fb041603          	lh	a2,-80(s0)
80007a8c:	06c95463          	bge	s2,a2,80007af4 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2d0>
80007a90:	fa842503          	lw	a0,-88(s0)
80007a94:	fac42583          	lw	a1,-84(s0)
80007a98:	f7840713          	addi	a4,s0,-136
80007a9c:	00400793          	li	a5,4
80007aa0:	00048693          	mv	a3,s1
80007aa4:	fffff097          	auipc	ra,0xfffff
80007aa8:	158080e7          	jalr	344(ra) # 80006bfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>
80007aac:	00050613          	mv	a2,a0
80007ab0:	0840006f          	j	80007b34 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x310>
80007ab4:	8000d5b7          	lui	a1,0x8000d
80007ab8:	23b58593          	addi	a1,a1,571 # 8000d23b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007abc:	f6b42e23          	sw	a1,-132(s0)
80007ac0:	00100593          	li	a1,1
80007ac4:	f8b42023          	sw	a1,-128(s0)
80007ac8:	f7840613          	addi	a2,s0,-136
80007acc:	06c0006f          	j	80007b38 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x314>
80007ad0:	fa840513          	addi	a0,s0,-88
80007ad4:	fb840593          	addi	a1,s0,-72
80007ad8:	b7840613          	addi	a2,s0,-1160
80007adc:	00098693          	mv	a3,s3
80007ae0:	00090713          	mv	a4,s2
80007ae4:	ffffc097          	auipc	ra,0xffffc
80007ae8:	774080e7          	jalr	1908(ra) # 80004258 <_ZN4core3num7flt2dec8strategy6dragon12format_exact17hc29d541919047a12E>
80007aec:	fb041603          	lh	a2,-80(s0)
80007af0:	fac940e3          	blt	s2,a2,80007a90 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x26c>
80007af4:	00200593          	li	a1,2
80007af8:	f6b41c23          	sh	a1,-136(s0)
80007afc:	02048063          	beqz	s1,80007b1c <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x2f8>
80007b00:	8000d537          	lui	a0,0x8000d
80007b04:	23150513          	addi	a0,a0,561 # 8000d231 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007b08:	f6a42e23          	sw	a0,-132(s0)
80007b0c:	f8b42023          	sw	a1,-128(s0)
80007b10:	f8041223          	sh	zero,-124(s0)
80007b14:	f8942423          	sw	s1,-120(s0)
80007b18:	0180006f          	j	80007b30 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E+0x30c>
80007b1c:	8000d537          	lui	a0,0x8000d
80007b20:	23b50513          	addi	a0,a0,571 # 8000d23b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007b24:	f6a42e23          	sw	a0,-132(s0)
80007b28:	00100593          	li	a1,1
80007b2c:	f8b42023          	sw	a1,-128(s0)
80007b30:	f7840613          	addi	a2,s0,-136
80007b34:	000b0513          	mv	a0,s6
80007b38:	fb442423          	sw	s4,-88(s0)
80007b3c:	fb542623          	sw	s5,-84(s0)
80007b40:	fac42823          	sw	a2,-80(s0)
80007b44:	fab42a23          	sw	a1,-76(s0)
80007b48:	fa840593          	addi	a1,s0,-88
80007b4c:	00001097          	auipc	ra,0x1
80007b50:	c5c080e7          	jalr	-932(ra) # 800087a8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>
80007b54:	48c12083          	lw	ra,1164(sp)
80007b58:	48812403          	lw	s0,1160(sp)
80007b5c:	48412483          	lw	s1,1156(sp)
80007b60:	48012903          	lw	s2,1152(sp)
80007b64:	47c12983          	lw	s3,1148(sp)
80007b68:	47812a03          	lw	s4,1144(sp)
80007b6c:	47412a83          	lw	s5,1140(sp)
80007b70:	47012b03          	lw	s6,1136(sp)
80007b74:	49010113          	addi	sp,sp,1168
80007b78:	00008067          	ret
80007b7c:	8000d537          	lui	a0,0x8000d
80007b80:	23c50513          	addi	a0,a0,572 # 8000d23c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.106>
80007b84:	8000d637          	lui	a2,0x8000d
80007b88:	26460613          	addi	a2,a2,612 # 8000d264 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.107>
80007b8c:	02500593          	li	a1,37
80007b90:	fffff097          	auipc	ra,0xfffff
80007b94:	448080e7          	jalr	1096(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>

80007b98 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E>:
80007b98:	00159893          	slli	a7,a1,0x1
80007b9c:	0188d793          	srli	a5,a7,0x18
80007ba0:	00959713          	slli	a4,a1,0x9
80007ba4:	00975813          	srli	a6,a4,0x9
80007ba8:	02078e63          	beqz	a5,80007be4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x4c>
80007bac:	00800737          	lui	a4,0x800
80007bb0:	00e86733          	or	a4,a6,a4
80007bb4:	0018d293          	srli	t0,a7,0x1
80007bb8:	7f8008b7          	lui	a7,0x7f800
80007bbc:	03128c63          	beq	t0,a7,80007bf4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x5c>
80007bc0:	0115f2b3          	and	t0,a1,a7
80007bc4:	03128c63          	beq	t0,a7,80007bfc <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x64>
80007bc8:	00177313          	andi	t1,a4,1
80007bcc:	02029c63          	bnez	t0,80007c04 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x6c>
80007bd0:	06080a63          	beqz	a6,80007c44 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xac>
80007bd4:	00000813          	li	a6,0
80007bd8:	00000893          	li	a7,0
80007bdc:	f6a78293          	addi	t0,a5,-150
80007be0:	0580006f          	j	80007c38 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xa0>
80007be4:	00875713          	srli	a4,a4,0x8
80007be8:	0018d293          	srli	t0,a7,0x1
80007bec:	7f8008b7          	lui	a7,0x7f800
80007bf0:	fd1298e3          	bne	t0,a7,80007bc0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x28>
80007bf4:	00300793          	li	a5,3
80007bf8:	0500006f          	j	80007c48 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007bfc:	00200793          	li	a5,2
80007c00:	0480006f          	j	80007c48 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007c04:	00800837          	lui	a6,0x800
80007c08:	03071063          	bne	a4,a6,80007c28 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x90>
80007c0c:	00000813          	li	a6,0
80007c10:	00000893          	li	a7,0
80007c14:	f6878293          	addi	t0,a5,-152
80007c18:	00200313          	li	t1,2
80007c1c:	02000737          	lui	a4,0x2000
80007c20:	00100793          	li	a5,1
80007c24:	0240006f          	j	80007c48 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007c28:	00000813          	li	a6,0
80007c2c:	00000893          	li	a7,0
80007c30:	00171713          	slli	a4,a4,0x1
80007c34:	f6978293          	addi	t0,a5,-151
80007c38:	00134793          	xori	a5,t1,1
80007c3c:	00100313          	li	t1,1
80007c40:	0080006f          	j	80007c48 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0xb0>
80007c44:	00400793          	li	a5,4
80007c48:	f7010113          	addi	sp,sp,-144
80007c4c:	08112623          	sw	ra,140(sp)
80007c50:	08812423          	sw	s0,136(sp)
80007c54:	08912223          	sw	s1,132(sp)
80007c58:	09212023          	sw	s2,128(sp)
80007c5c:	07312e23          	sw	s3,124(sp)
80007c60:	07412c23          	sw	s4,120(sp)
80007c64:	09010413          	addi	s0,sp,144
80007c68:	fce42423          	sw	a4,-56(s0)
80007c6c:	fd042623          	sw	a6,-52(s0)
80007c70:	fc042a23          	sw	zero,-44(s0)
80007c74:	00100913          	li	s2,1
80007c78:	fd242823          	sw	s2,-48(s0)
80007c7c:	fc642c23          	sw	t1,-40(s0)
80007c80:	fd142e23          	sw	a7,-36(s0)
80007c84:	fe541023          	sh	t0,-32(s0)
80007c88:	ffe78713          	addi	a4,a5,-2
80007c8c:	fef40123          	sb	a5,-30(s0)
80007c90:	02070863          	beqz	a4,80007cc0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x128>
80007c94:	00300793          	li	a5,3
80007c98:	00f76463          	bltu	a4,a5,80007ca0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x108>
80007c9c:	00300713          	li	a4,3
80007ca0:	00100793          	li	a5,1
80007ca4:	0405c463          	bltz	a1,80007cec <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x154>
80007ca8:	8000d937          	lui	s2,0x8000d
80007cac:	23490913          	addi	s2,s2,564 # 8000d234 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>
80007cb0:	00100813          	li	a6,1
80007cb4:	00100993          	li	s3,1
80007cb8:	04060463          	beqz	a2,80007d00 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x168>
80007cbc:	04c0006f          	j	80007d08 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x170>
80007cc0:	00000993          	li	s3,0
80007cc4:	00200593          	li	a1,2
80007cc8:	f8b41423          	sh	a1,-120(s0)
80007ccc:	8000d5b7          	lui	a1,0x8000d
80007cd0:	23558593          	addi	a1,a1,565 # 8000d235 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>
80007cd4:	f8b42623          	sw	a1,-116(s0)
80007cd8:	00300593          	li	a1,3
80007cdc:	f8b42823          	sw	a1,-112(s0)
80007ce0:	f8840613          	addi	a2,s0,-120
80007ce4:	00100593          	li	a1,1
80007ce8:	1180006f          	j	80007e00 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x268>
80007cec:	8000d837          	lui	a6,0x8000d
80007cf0:	23380813          	addi	a6,a6,563 # 8000d233 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>
80007cf4:	00080913          	mv	s2,a6
80007cf8:	00100993          	li	s3,1
80007cfc:	00061663          	bnez	a2,80007d08 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x170>
80007d00:	01f5d993          	srli	s3,a1,0x1f
80007d04:	00080913          	mv	s2,a6
80007d08:	00200593          	li	a1,2
80007d0c:	02f70a63          	beq	a4,a5,80007d40 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x1a8>
80007d10:	04b71863          	bne	a4,a1,80007d60 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x1c8>
80007d14:	f8b41423          	sh	a1,-120(s0)
80007d18:	08068663          	beqz	a3,80007da4 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x20c>
80007d1c:	8000d5b7          	lui	a1,0x8000d
80007d20:	23158593          	addi	a1,a1,561 # 8000d231 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>
80007d24:	f8b42623          	sw	a1,-116(s0)
80007d28:	00200593          	li	a1,2
80007d2c:	f8b42823          	sw	a1,-112(s0)
80007d30:	f8041a23          	sh	zero,-108(s0)
80007d34:	00100613          	li	a2,1
80007d38:	f8c42c23          	sw	a2,-104(s0)
80007d3c:	07c0006f          	j	80007db8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x220>
80007d40:	f8b41423          	sh	a1,-120(s0)
80007d44:	8000d5b7          	lui	a1,0x8000d
80007d48:	23858593          	addi	a1,a1,568 # 8000d238 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>
80007d4c:	f8b42623          	sw	a1,-116(s0)
80007d50:	00300593          	li	a1,3
80007d54:	f8b42823          	sw	a1,-112(s0)
80007d58:	00100593          	li	a1,1
80007d5c:	05c0006f          	j	80007db8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x220>
80007d60:	00068493          	mv	s1,a3
80007d64:	00050a13          	mv	s4,a0
80007d68:	f8840513          	addi	a0,s0,-120
80007d6c:	fc840593          	addi	a1,s0,-56
80007d70:	f7740613          	addi	a2,s0,-137
80007d74:	01100693          	li	a3,17
80007d78:	ffffd097          	auipc	ra,0xffffd
80007d7c:	3c4080e7          	jalr	964(ra) # 8000513c <_ZN4core3num7flt2dec8strategy5grisu19format_shortest_opt17h8d287f8fe7af771dE>
80007d80:	f8842503          	lw	a0,-120(s0)
80007d84:	02050e63          	beqz	a0,80007dc0 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x228>
80007d88:	f9042503          	lw	a0,-112(s0)
80007d8c:	f8c42583          	lw	a1,-116(s0)
80007d90:	f8842603          	lw	a2,-120(s0)
80007d94:	fca42023          	sw	a0,-64(s0)
80007d98:	fab42e23          	sw	a1,-68(s0)
80007d9c:	fac42c23          	sw	a2,-72(s0)
80007da0:	0380006f          	j	80007dd8 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x240>
80007da4:	8000d5b7          	lui	a1,0x8000d
80007da8:	23b58593          	addi	a1,a1,571 # 8000d23b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>
80007dac:	f8b42623          	sw	a1,-116(s0)
80007db0:	00100593          	li	a1,1
80007db4:	f8b42823          	sw	a1,-112(s0)
80007db8:	f8840613          	addi	a2,s0,-120
80007dbc:	0440006f          	j	80007e00 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E+0x268>
80007dc0:	fb840513          	addi	a0,s0,-72
80007dc4:	fc840593          	addi	a1,s0,-56
80007dc8:	f7740613          	addi	a2,s0,-137
80007dcc:	01100693          	li	a3,17
80007dd0:	ffffb097          	auipc	ra,0xffffb
80007dd4:	454080e7          	jalr	1108(ra) # 80003224 <_ZN4core3num7flt2dec8strategy6dragon15format_shortest17he71fd0e7ecf42d6fE>
80007dd8:	fb842503          	lw	a0,-72(s0)
80007ddc:	fbc42583          	lw	a1,-68(s0)
80007de0:	fc041603          	lh	a2,-64(s0)
80007de4:	f8840713          	addi	a4,s0,-120
80007de8:	00400793          	li	a5,4
80007dec:	00048693          	mv	a3,s1
80007df0:	fffff097          	auipc	ra,0xfffff
80007df4:	e0c080e7          	jalr	-500(ra) # 80006bfc <_ZN4core3num7flt2dec17digits_to_dec_str17hd36d8cda92104ff1E>
80007df8:	00050613          	mv	a2,a0
80007dfc:	000a0513          	mv	a0,s4
80007e00:	fb242c23          	sw	s2,-72(s0)
80007e04:	fb342e23          	sw	s3,-68(s0)
80007e08:	fcc42023          	sw	a2,-64(s0)
80007e0c:	fcb42223          	sw	a1,-60(s0)
80007e10:	fb840593          	addi	a1,s0,-72
80007e14:	00001097          	auipc	ra,0x1
80007e18:	994080e7          	jalr	-1644(ra) # 800087a8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>
80007e1c:	08c12083          	lw	ra,140(sp)
80007e20:	08812403          	lw	s0,136(sp)
80007e24:	08412483          	lw	s1,132(sp)
80007e28:	08012903          	lw	s2,128(sp)
80007e2c:	07c12983          	lw	s3,124(sp)
80007e30:	07812a03          	lw	s4,120(sp)
80007e34:	09010113          	addi	sp,sp,144
80007e38:	00008067          	ret

80007e3c <_ZN4core3fmt5Write9write_fmt17h2deade9dea7b58f9E>:
80007e3c:	ff010113          	addi	sp,sp,-16
80007e40:	00112623          	sw	ra,12(sp)
80007e44:	00812423          	sw	s0,8(sp)
80007e48:	01010413          	addi	s0,sp,16
80007e4c:	8000d637          	lui	a2,0x8000d
80007e50:	39c60613          	addi	a2,a2,924 # 8000d39c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>
80007e54:	00058693          	mv	a3,a1
80007e58:	00060593          	mv	a1,a2
80007e5c:	00068613          	mv	a2,a3
80007e60:	00c12083          	lw	ra,12(sp)
80007e64:	00812403          	lw	s0,8(sp)
80007e68:	01010113          	addi	sp,sp,16
80007e6c:	00000317          	auipc	t1,0x0
80007e70:	04030067          	jr	64(t1) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80007e74 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hefd8b8a880068ae0E>:
80007e74:	ff010113          	addi	sp,sp,-16
80007e78:	00112623          	sw	ra,12(sp)
80007e7c:	00812423          	sw	s0,8(sp)
80007e80:	01010413          	addi	s0,sp,16
80007e84:	0145a603          	lw	a2,20(a1)
80007e88:	0185a583          	lw	a1,24(a1)
80007e8c:	00050693          	mv	a3,a0
80007e90:	00060513          	mv	a0,a2
80007e94:	00068613          	mv	a2,a3
80007e98:	00c12083          	lw	ra,12(sp)
80007e9c:	00812403          	lw	s0,8(sp)
80007ea0:	01010113          	addi	sp,sp,16
80007ea4:	00000317          	auipc	t1,0x0
80007ea8:	00830067          	jr	8(t1) # 80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>

80007eac <_ZN4core3fmt5write17h91900dfa3f2b3af3E>:
80007eac:	fb010113          	addi	sp,sp,-80
80007eb0:	04112623          	sw	ra,76(sp)
80007eb4:	04812423          	sw	s0,72(sp)
80007eb8:	04912223          	sw	s1,68(sp)
80007ebc:	05212023          	sw	s2,64(sp)
80007ec0:	03312e23          	sw	s3,60(sp)
80007ec4:	03412c23          	sw	s4,56(sp)
80007ec8:	03512a23          	sw	s5,52(sp)
80007ecc:	03612823          	sw	s6,48(sp)
80007ed0:	03712623          	sw	s7,44(sp)
80007ed4:	03812423          	sw	s8,40(sp)
80007ed8:	05010413          	addi	s0,sp,80
80007edc:	00060493          	mv	s1,a2
80007ee0:	fc042823          	sw	zero,-48(s0)
80007ee4:	02000613          	li	a2,32
80007ee8:	fcc42223          	sw	a2,-60(s0)
80007eec:	00300613          	li	a2,3
80007ef0:	fcc40a23          	sb	a2,-44(s0)
80007ef4:	0104ab03          	lw	s6,16(s1)
80007ef8:	fa042a23          	sw	zero,-76(s0)
80007efc:	fa042e23          	sw	zero,-68(s0)
80007f00:	fca42423          	sw	a0,-56(s0)
80007f04:	fcb42623          	sw	a1,-52(s0)
80007f08:	120b0063          	beqz	s6,80008028 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x17c>
80007f0c:	0144aa83          	lw	s5,20(s1)
80007f10:	180a8863          	beqz	s5,800080a0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1f4>
80007f14:	0004aa03          	lw	s4,0(s1)
80007f18:	0084a983          	lw	s3,8(s1)
80007f1c:	fffa8513          	addi	a0,s5,-1
80007f20:	00551513          	slli	a0,a0,0x5
80007f24:	00555513          	srli	a0,a0,0x5
80007f28:	00150913          	addi	s2,a0,1
80007f2c:	004a0a13          	addi	s4,s4,4
80007f30:	005a9a93          	slli	s5,s5,0x5
80007f34:	010b0b13          	addi	s6,s6,16
80007f38:	00200b93          	li	s7,2
80007f3c:	00100c13          	li	s8,1
80007f40:	000a2603          	lw	a2,0(s4)
80007f44:	00060e63          	beqz	a2,80007f60 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0xb4>
80007f48:	fcc42683          	lw	a3,-52(s0)
80007f4c:	fc842503          	lw	a0,-56(s0)
80007f50:	ffca2583          	lw	a1,-4(s4)
80007f54:	00c6a683          	lw	a3,12(a3) # 200000c <.Lline_table_start2+0x1ffec5e>
80007f58:	000680e7          	jalr	a3
80007f5c:	16051c63          	bnez	a0,800080d4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80007f60:	000b2603          	lw	a2,0(s6)
80007f64:	00cb4683          	lbu	a3,12(s6)
80007f68:	008b2703          	lw	a4,8(s6)
80007f6c:	ff8b2583          	lw	a1,-8(s6)
80007f70:	ffcb2503          	lw	a0,-4(s6)
80007f74:	fcc42223          	sw	a2,-60(s0)
80007f78:	fcd40a23          	sb	a3,-44(s0)
80007f7c:	fce42823          	sw	a4,-48(s0)
80007f80:	02058863          	beqz	a1,80007fb0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x104>
80007f84:	01859a63          	bne	a1,s8,80007f98 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0xec>
80007f88:	00351513          	slli	a0,a0,0x3
80007f8c:	00a98533          	add	a0,s3,a0
80007f90:	00052583          	lw	a1,0(a0)
80007f94:	00058c63          	beqz	a1,80007fac <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x100>
80007f98:	ff0b2603          	lw	a2,-16(s6)
80007f9c:	fa042a23          	sw	zero,-76(s0)
80007fa0:	faa42c23          	sw	a0,-72(s0)
80007fa4:	03761063          	bne	a2,s7,80007fc4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x118>
80007fa8:	0340006f          	j	80007fdc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x130>
80007fac:	00452503          	lw	a0,4(a0)
80007fb0:	00100593          	li	a1,1
80007fb4:	ff0b2603          	lw	a2,-16(s6)
80007fb8:	fab42a23          	sw	a1,-76(s0)
80007fbc:	faa42c23          	sw	a0,-72(s0)
80007fc0:	01760e63          	beq	a2,s7,80007fdc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x130>
80007fc4:	ff4b2583          	lw	a1,-12(s6)
80007fc8:	03861063          	bne	a2,s8,80007fe8 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x13c>
80007fcc:	00359513          	slli	a0,a1,0x3
80007fd0:	00a98533          	add	a0,s3,a0
80007fd4:	00052583          	lw	a1,0(a0)
80007fd8:	00058663          	beqz	a1,80007fe4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x138>
80007fdc:	00000613          	li	a2,0
80007fe0:	00c0006f          	j	80007fec <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x140>
80007fe4:	00452583          	lw	a1,4(a0)
80007fe8:	00100613          	li	a2,1
80007fec:	004b2503          	lw	a0,4(s6)
80007ff0:	00351513          	slli	a0,a0,0x3
80007ff4:	00a986b3          	add	a3,s3,a0
80007ff8:	0006a503          	lw	a0,0(a3)
80007ffc:	0046a683          	lw	a3,4(a3)
80008000:	fac42e23          	sw	a2,-68(s0)
80008004:	fcb42023          	sw	a1,-64(s0)
80008008:	fb440593          	addi	a1,s0,-76
8000800c:	000680e7          	jalr	a3
80008010:	0c051263          	bnez	a0,800080d4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80008014:	008a0a13          	addi	s4,s4,8
80008018:	fe0a8a93          	addi	s5,s5,-32
8000801c:	020b0b13          	addi	s6,s6,32
80008020:	f20a90e3          	bnez	s5,80007f40 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x94>
80008024:	0700006f          	j	80008094 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1e8>
80008028:	00c4a503          	lw	a0,12(s1)
8000802c:	06050a63          	beqz	a0,800080a0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1f4>
80008030:	0084a983          	lw	s3,8(s1)
80008034:	00351a13          	slli	s4,a0,0x3
80008038:	01498a33          	add	s4,s3,s4
8000803c:	0004aa83          	lw	s5,0(s1)
80008040:	fff50513          	addi	a0,a0,-1
80008044:	00351513          	slli	a0,a0,0x3
80008048:	00355513          	srli	a0,a0,0x3
8000804c:	00150913          	addi	s2,a0,1
80008050:	004a8a93          	addi	s5,s5,4
80008054:	000aa603          	lw	a2,0(s5)
80008058:	00060e63          	beqz	a2,80008074 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1c8>
8000805c:	fcc42683          	lw	a3,-52(s0)
80008060:	fc842503          	lw	a0,-56(s0)
80008064:	ffcaa583          	lw	a1,-4(s5)
80008068:	00c6a683          	lw	a3,12(a3)
8000806c:	000680e7          	jalr	a3
80008070:	06051263          	bnez	a0,800080d4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80008074:	0009a503          	lw	a0,0(s3)
80008078:	0049a603          	lw	a2,4(s3)
8000807c:	fb440593          	addi	a1,s0,-76
80008080:	000600e7          	jalr	a2
80008084:	04051863          	bnez	a0,800080d4 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x228>
80008088:	00898993          	addi	s3,s3,8
8000808c:	008a8a93          	addi	s5,s5,8
80008090:	fd4992e3          	bne	s3,s4,80008054 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x1a8>
80008094:	0044a503          	lw	a0,4(s1)
80008098:	00a96a63          	bltu	s2,a0,800080ac <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x200>
8000809c:	0400006f          	j	800080dc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
800080a0:	00000913          	li	s2,0
800080a4:	0044a503          	lw	a0,4(s1)
800080a8:	02a07a63          	bgeu	zero,a0,800080dc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
800080ac:	0004a503          	lw	a0,0(s1)
800080b0:	00391913          	slli	s2,s2,0x3
800080b4:	01250933          	add	s2,a0,s2
800080b8:	fcc42683          	lw	a3,-52(s0)
800080bc:	fc842503          	lw	a0,-56(s0)
800080c0:	00092583          	lw	a1,0(s2)
800080c4:	00492603          	lw	a2,4(s2)
800080c8:	00c6a683          	lw	a3,12(a3)
800080cc:	000680e7          	jalr	a3
800080d0:	00050663          	beqz	a0,800080dc <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x230>
800080d4:	00100513          	li	a0,1
800080d8:	0080006f          	j	800080e0 <_ZN4core3fmt5write17h91900dfa3f2b3af3E+0x234>
800080dc:	00000513          	li	a0,0
800080e0:	04c12083          	lw	ra,76(sp)
800080e4:	04812403          	lw	s0,72(sp)
800080e8:	04412483          	lw	s1,68(sp)
800080ec:	04012903          	lw	s2,64(sp)
800080f0:	03c12983          	lw	s3,60(sp)
800080f4:	03812a03          	lw	s4,56(sp)
800080f8:	03412a83          	lw	s5,52(sp)
800080fc:	03012b03          	lw	s6,48(sp)
80008100:	02c12b83          	lw	s7,44(sp)
80008104:	02812c03          	lw	s8,40(sp)
80008108:	05010113          	addi	sp,sp,80
8000810c:	00008067          	ret

80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>:
80008110:	fc010113          	addi	sp,sp,-64
80008114:	02112e23          	sw	ra,60(sp)
80008118:	02812c23          	sw	s0,56(sp)
8000811c:	02912a23          	sw	s1,52(sp)
80008120:	03212823          	sw	s2,48(sp)
80008124:	03312623          	sw	s3,44(sp)
80008128:	03412423          	sw	s4,40(sp)
8000812c:	03512223          	sw	s5,36(sp)
80008130:	03612023          	sw	s6,32(sp)
80008134:	01712e23          	sw	s7,28(sp)
80008138:	01812c23          	sw	s8,24(sp)
8000813c:	01912a23          	sw	s9,20(sp)
80008140:	01a12823          	sw	s10,16(sp)
80008144:	01b12623          	sw	s11,12(sp)
80008148:	04010413          	addi	s0,sp,64
8000814c:	00078493          	mv	s1,a5
80008150:	00070913          	mv	s2,a4
80008154:	00068993          	mv	s3,a3
80008158:	00060a13          	mv	s4,a2
8000815c:	06058263          	beqz	a1,800081c0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xb0>
80008160:	01c52b03          	lw	s6,28(a0)
80008164:	001b7c13          	andi	s8,s6,1
80008168:	00110ab7          	lui	s5,0x110
8000816c:	000c0463          	beqz	s8,80008174 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x64>
80008170:	02b00a93          	li	s5,43
80008174:	009c0c33          	add	s8,s8,s1
80008178:	004b7593          	andi	a1,s6,4
8000817c:	04058c63          	beqz	a1,800081d4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xc4>
80008180:	01000593          	li	a1,16
80008184:	06b9f063          	bgeu	s3,a1,800081e4 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xd4>
80008188:	00000593          	li	a1,0
8000818c:	02098263          	beqz	s3,800081b0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xa0>
80008190:	013a0633          	add	a2,s4,s3
80008194:	000a0693          	mv	a3,s4
80008198:	00068703          	lb	a4,0(a3)
8000819c:	fc072713          	slti	a4,a4,-64
800081a0:	00174713          	xori	a4,a4,1
800081a4:	00168693          	addi	a3,a3,1
800081a8:	00e585b3          	add	a1,a1,a4
800081ac:	fec696e3          	bne	a3,a2,80008198 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x88>
800081b0:	01858c33          	add	s8,a1,s8
800081b4:	00052583          	lw	a1,0(a0)
800081b8:	06058e63          	beqz	a1,80008234 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
800081bc:	0500006f          	j	8000820c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xfc>
800081c0:	01c52b03          	lw	s6,28(a0)
800081c4:	00148c13          	addi	s8,s1,1
800081c8:	02d00a93          	li	s5,45
800081cc:	004b7593          	andi	a1,s6,4
800081d0:	fa0598e3          	bnez	a1,80008180 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x70>
800081d4:	00000a13          	li	s4,0
800081d8:	00052583          	lw	a1,0(a0)
800081dc:	02059863          	bnez	a1,8000820c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0xfc>
800081e0:	0540006f          	j	80008234 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
800081e4:	00050b93          	mv	s7,a0
800081e8:	000a0513          	mv	a0,s4
800081ec:	00098593          	mv	a1,s3
800081f0:	00001097          	auipc	ra,0x1
800081f4:	cd4080e7          	jalr	-812(ra) # 80008ec4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>
800081f8:	00050593          	mv	a1,a0
800081fc:	000b8513          	mv	a0,s7
80008200:	01858c33          	add	s8,a1,s8
80008204:	000ba583          	lw	a1,0(s7) # 80000000 <_start>
80008208:	02058663          	beqz	a1,80008234 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
8000820c:	00452c83          	lw	s9,4(a0)
80008210:	039c7263          	bgeu	s8,s9,80008234 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x124>
80008214:	008b7593          	andi	a1,s6,8
80008218:	08059c63          	bnez	a1,800082b0 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x1a0>
8000821c:	02054583          	lbu	a1,32(a0)
80008220:	00100613          	li	a2,1
80008224:	418c8cb3          	sub	s9,s9,s8
80008228:	0eb64c63          	blt	a2,a1,80008320 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x210>
8000822c:	10058a63          	beqz	a1,80008340 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x230>
80008230:	1080006f          	j	80008338 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x228>
80008234:	01452b03          	lw	s6,20(a0)
80008238:	01852b83          	lw	s7,24(a0)
8000823c:	000b0513          	mv	a0,s6
80008240:	000b8593          	mv	a1,s7
80008244:	000a8613          	mv	a2,s5
80008248:	000a0693          	mv	a3,s4
8000824c:	00098713          	mv	a4,s3
80008250:	00000097          	auipc	ra,0x0
80008254:	214080e7          	jalr	532(ra) # 80008464 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
80008258:	00050593          	mv	a1,a0
8000825c:	00100513          	li	a0,1
80008260:	10059863          	bnez	a1,80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008264:	00cba303          	lw	t1,12(s7)
80008268:	000b0513          	mv	a0,s6
8000826c:	00090593          	mv	a1,s2
80008270:	00048613          	mv	a2,s1
80008274:	03c12083          	lw	ra,60(sp)
80008278:	03812403          	lw	s0,56(sp)
8000827c:	03412483          	lw	s1,52(sp)
80008280:	03012903          	lw	s2,48(sp)
80008284:	02c12983          	lw	s3,44(sp)
80008288:	02812a03          	lw	s4,40(sp)
8000828c:	02412a83          	lw	s5,36(sp)
80008290:	02012b03          	lw	s6,32(sp)
80008294:	01c12b83          	lw	s7,28(sp)
80008298:	01812c03          	lw	s8,24(sp)
8000829c:	01412c83          	lw	s9,20(sp)
800082a0:	01012d03          	lw	s10,16(sp)
800082a4:	00c12d83          	lw	s11,12(sp)
800082a8:	04010113          	addi	sp,sp,64
800082ac:	00030067          	jr	t1
800082b0:	01052583          	lw	a1,16(a0)
800082b4:	fcb42423          	sw	a1,-56(s0)
800082b8:	03000593          	li	a1,48
800082bc:	02054d03          	lbu	s10,32(a0)
800082c0:	01452b03          	lw	s6,20(a0)
800082c4:	01852b83          	lw	s7,24(a0)
800082c8:	00b52823          	sw	a1,16(a0)
800082cc:	00100593          	li	a1,1
800082d0:	00050d93          	mv	s11,a0
800082d4:	02b50023          	sb	a1,32(a0)
800082d8:	000b0513          	mv	a0,s6
800082dc:	000b8593          	mv	a1,s7
800082e0:	000a8613          	mv	a2,s5
800082e4:	000a0693          	mv	a3,s4
800082e8:	00098713          	mv	a4,s3
800082ec:	00000097          	auipc	ra,0x0
800082f0:	178080e7          	jalr	376(ra) # 80008464 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
800082f4:	06051c63          	bnez	a0,8000836c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x25c>
800082f8:	418c89b3          	sub	s3,s9,s8
800082fc:	00198993          	addi	s3,s3,1
80008300:	fff98993          	addi	s3,s3,-1
80008304:	12098263          	beqz	s3,80008428 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x318>
80008308:	010ba603          	lw	a2,16(s7)
8000830c:	03000593          	li	a1,48
80008310:	000b0513          	mv	a0,s6
80008314:	000600e7          	jalr	a2
80008318:	fe0504e3          	beqz	a0,80008300 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x1f0>
8000831c:	0500006f          	j	8000836c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x25c>
80008320:	00200613          	li	a2,2
80008324:	00c59a63          	bne	a1,a2,80008338 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x228>
80008328:	001cd593          	srli	a1,s9,0x1
8000832c:	001c8c93          	addi	s9,s9,1
80008330:	001cdc93          	srli	s9,s9,0x1
80008334:	00c0006f          	j	80008340 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x230>
80008338:	000c8593          	mv	a1,s9
8000833c:	00000c93          	li	s9,0
80008340:	01452b03          	lw	s6,20(a0)
80008344:	01852b83          	lw	s7,24(a0)
80008348:	01052c03          	lw	s8,16(a0)
8000834c:	00158d13          	addi	s10,a1,1
80008350:	fffd0d13          	addi	s10,s10,-1
80008354:	040d0c63          	beqz	s10,800083ac <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x29c>
80008358:	010ba603          	lw	a2,16(s7)
8000835c:	000b0513          	mv	a0,s6
80008360:	000c0593          	mv	a1,s8
80008364:	000600e7          	jalr	a2
80008368:	fe0504e3          	beqz	a0,80008350 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x240>
8000836c:	00100513          	li	a0,1
80008370:	03c12083          	lw	ra,60(sp)
80008374:	03812403          	lw	s0,56(sp)
80008378:	03412483          	lw	s1,52(sp)
8000837c:	03012903          	lw	s2,48(sp)
80008380:	02c12983          	lw	s3,44(sp)
80008384:	02812a03          	lw	s4,40(sp)
80008388:	02412a83          	lw	s5,36(sp)
8000838c:	02012b03          	lw	s6,32(sp)
80008390:	01c12b83          	lw	s7,28(sp)
80008394:	01812c03          	lw	s8,24(sp)
80008398:	01412c83          	lw	s9,20(sp)
8000839c:	01012d03          	lw	s10,16(sp)
800083a0:	00c12d83          	lw	s11,12(sp)
800083a4:	04010113          	addi	sp,sp,64
800083a8:	00008067          	ret
800083ac:	000b0513          	mv	a0,s6
800083b0:	000b8593          	mv	a1,s7
800083b4:	000a8613          	mv	a2,s5
800083b8:	000a0693          	mv	a3,s4
800083bc:	00098713          	mv	a4,s3
800083c0:	00000097          	auipc	ra,0x0
800083c4:	0a4080e7          	jalr	164(ra) # 80008464 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>
800083c8:	00050593          	mv	a1,a0
800083cc:	00100513          	li	a0,1
800083d0:	fa0590e3          	bnez	a1,80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
800083d4:	00cba683          	lw	a3,12(s7)
800083d8:	000b0513          	mv	a0,s6
800083dc:	00090593          	mv	a1,s2
800083e0:	00048613          	mv	a2,s1
800083e4:	000680e7          	jalr	a3
800083e8:	00050593          	mv	a1,a0
800083ec:	00100513          	li	a0,1
800083f0:	f80590e3          	bnez	a1,80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
800083f4:	41900933          	neg	s2,s9
800083f8:	fff00993          	li	s3,-1
800083fc:	fff00493          	li	s1,-1
80008400:	00990533          	add	a0,s2,s1
80008404:	05350c63          	beq	a0,s3,8000845c <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x34c>
80008408:	010ba603          	lw	a2,16(s7)
8000840c:	000b0513          	mv	a0,s6
80008410:	000c0593          	mv	a1,s8
80008414:	000600e7          	jalr	a2
80008418:	00148493          	addi	s1,s1,1
8000841c:	fe0502e3          	beqz	a0,80008400 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x2f0>
80008420:	0194b533          	sltu	a0,s1,s9
80008424:	f4dff06f          	j	80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008428:	00cba683          	lw	a3,12(s7)
8000842c:	000b0513          	mv	a0,s6
80008430:	00090593          	mv	a1,s2
80008434:	00048613          	mv	a2,s1
80008438:	000680e7          	jalr	a3
8000843c:	00050593          	mv	a1,a0
80008440:	00100513          	li	a0,1
80008444:	f20596e3          	bnez	a1,80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
80008448:	00000513          	li	a0,0
8000844c:	fc842583          	lw	a1,-56(s0)
80008450:	00bda823          	sw	a1,16(s11)
80008454:	03ad8023          	sb	s10,32(s11)
80008458:	f19ff06f          	j	80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>
8000845c:	019cb533          	sltu	a0,s9,s9
80008460:	f11ff06f          	j	80008370 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E+0x260>

80008464 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E>:
80008464:	fe010113          	addi	sp,sp,-32
80008468:	00112e23          	sw	ra,28(sp)
8000846c:	00812c23          	sw	s0,24(sp)
80008470:	00912a23          	sw	s1,20(sp)
80008474:	01212823          	sw	s2,16(sp)
80008478:	01312623          	sw	s3,12(sp)
8000847c:	01412423          	sw	s4,8(sp)
80008480:	02010413          	addi	s0,sp,32
80008484:	001107b7          	lui	a5,0x110
80008488:	00070493          	mv	s1,a4
8000848c:	00068913          	mv	s2,a3
80008490:	00058993          	mv	s3,a1
80008494:	02f60263          	beq	a2,a5,800084b8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x54>
80008498:	0109a683          	lw	a3,16(s3)
8000849c:	00050a13          	mv	s4,a0
800084a0:	00060593          	mv	a1,a2
800084a4:	000680e7          	jalr	a3
800084a8:	00050613          	mv	a2,a0
800084ac:	000a0513          	mv	a0,s4
800084b0:	00100593          	li	a1,1
800084b4:	02061c63          	bnez	a2,800084ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x88>
800084b8:	02090863          	beqz	s2,800084e8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h098bbe2055cb2b02E+0x84>
800084bc:	00c9a303          	lw	t1,12(s3)
800084c0:	00090593          	mv	a1,s2
800084c4:	00048613          	mv	a2,s1
800084c8:	01c12083          	lw	ra,28(sp)
800084cc:	01812403          	lw	s0,24(sp)
800084d0:	01412483          	lw	s1,20(sp)
800084d4:	01012903          	lw	s2,16(sp)
800084d8:	00c12983          	lw	s3,12(sp)
800084dc:	00812a03          	lw	s4,8(sp)
800084e0:	02010113          	addi	sp,sp,32
800084e4:	00030067          	jr	t1
800084e8:	00000593          	li	a1,0
800084ec:	00058513          	mv	a0,a1
800084f0:	01c12083          	lw	ra,28(sp)
800084f4:	01812403          	lw	s0,24(sp)
800084f8:	01412483          	lw	s1,20(sp)
800084fc:	01012903          	lw	s2,16(sp)
80008500:	00c12983          	lw	s3,12(sp)
80008504:	00812a03          	lw	s4,8(sp)
80008508:	02010113          	addi	sp,sp,32
8000850c:	00008067          	ret

80008510 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E>:
80008510:	fd010113          	addi	sp,sp,-48
80008514:	02112623          	sw	ra,44(sp)
80008518:	02812423          	sw	s0,40(sp)
8000851c:	02912223          	sw	s1,36(sp)
80008520:	03212023          	sw	s2,32(sp)
80008524:	01312e23          	sw	s3,28(sp)
80008528:	01412c23          	sw	s4,24(sp)
8000852c:	01512a23          	sw	s5,20(sp)
80008530:	01612823          	sw	s6,16(sp)
80008534:	01712623          	sw	s7,12(sp)
80008538:	03010413          	addi	s0,sp,48
8000853c:	00052683          	lw	a3,0(a0)
80008540:	00852703          	lw	a4,8(a0)
80008544:	00060493          	mv	s1,a2
80008548:	00058913          	mv	s2,a1
8000854c:	00177593          	andi	a1,a4,1
80008550:	00069463          	bnez	a3,80008558 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x48>
80008554:	14058463          	beqz	a1,8000869c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
80008558:	0c058263          	beqz	a1,8000861c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
8000855c:	00c52703          	lw	a4,12(a0)
80008560:	00990633          	add	a2,s2,s1
80008564:	00000593          	li	a1,0
80008568:	04070e63          	beqz	a4,800085c4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xb4>
8000856c:	0e000793          	li	a5,224
80008570:	0f000813          	li	a6,240
80008574:	00090893          	mv	a7,s2
80008578:	01c0006f          	j	80008594 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x84>
8000857c:	00188293          	addi	t0,a7,1 # 7f800001 <.Lline_table_start2+0x7f7fec53>
80008580:	40b885b3          	sub	a1,a7,a1
80008584:	fff70713          	addi	a4,a4,-1 # 1ffffff <.Lline_table_start2+0x1ffec51>
80008588:	40b285b3          	sub	a1,t0,a1
8000858c:	00028893          	mv	a7,t0
80008590:	02070c63          	beqz	a4,800085c8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xb8>
80008594:	08c88463          	beq	a7,a2,8000861c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008598:	00088283          	lb	t0,0(a7)
8000859c:	fe02d0e3          	bgez	t0,8000857c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x6c>
800085a0:	0ff2f293          	zext.b	t0,t0
800085a4:	00f2e863          	bltu	t0,a5,800085b4 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xa4>
800085a8:	0102ea63          	bltu	t0,a6,800085bc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xac>
800085ac:	00488293          	addi	t0,a7,4
800085b0:	fd1ff06f          	j	80008580 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
800085b4:	00288293          	addi	t0,a7,2
800085b8:	fc9ff06f          	j	80008580 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
800085bc:	00388293          	addi	t0,a7,3
800085c0:	fc1ff06f          	j	80008580 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x70>
800085c4:	00090293          	mv	t0,s2
800085c8:	04c28a63          	beq	t0,a2,8000861c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
800085cc:	00028603          	lb	a2,0(t0)
800085d0:	00064663          	bltz	a2,800085dc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xcc>
800085d4:	00059a63          	bnez	a1,800085e8 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xd8>
800085d8:	0340006f          	j	8000860c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
800085dc:	0ff67613          	zext.b	a2,a2
800085e0:	0e000713          	li	a4,224
800085e4:	02058463          	beqz	a1,8000860c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
800085e8:	0295f063          	bgeu	a1,s1,80008608 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xf8>
800085ec:	00b90633          	add	a2,s2,a1
800085f0:	00060603          	lb	a2,0(a2)
800085f4:	fc000713          	li	a4,-64
800085f8:	00e65a63          	bge	a2,a4,8000860c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xfc>
800085fc:	00000613          	li	a2,0
80008600:	00001a63          	bnez	zero,80008614 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x104>
80008604:	0180006f          	j	8000861c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008608:	fe959ae3          	bne	a1,s1,800085fc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0xec>
8000860c:	00090613          	mv	a2,s2
80008610:	00090663          	beqz	s2,8000861c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x10c>
80008614:	00058493          	mv	s1,a1
80008618:	00060913          	mv	s2,a2
8000861c:	08068063          	beqz	a3,8000869c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
80008620:	00452983          	lw	s3,4(a0)
80008624:	01000593          	li	a1,16
80008628:	04b4fa63          	bgeu	s1,a1,8000867c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x16c>
8000862c:	00000593          	li	a1,0
80008630:	02048263          	beqz	s1,80008654 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x144>
80008634:	00990633          	add	a2,s2,s1
80008638:	00090693          	mv	a3,s2
8000863c:	00068703          	lb	a4,0(a3)
80008640:	fc072713          	slti	a4,a4,-64
80008644:	00174713          	xori	a4,a4,1
80008648:	00168693          	addi	a3,a3,1
8000864c:	00e585b3          	add	a1,a1,a4
80008650:	fec696e3          	bne	a3,a2,8000863c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x12c>
80008654:	0535f463          	bgeu	a1,s3,8000869c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x18c>
80008658:	02054683          	lbu	a3,32(a0)
8000865c:	00000613          	li	a2,0
80008660:	00100713          	li	a4,1
80008664:	40b98ab3          	sub	s5,s3,a1
80008668:	06d74a63          	blt	a4,a3,800086dc <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1cc>
8000866c:	08068263          	beqz	a3,800086f0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
80008670:	000a8613          	mv	a2,s5
80008674:	00000a93          	li	s5,0
80008678:	0780006f          	j	800086f0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
8000867c:	00050a13          	mv	s4,a0
80008680:	00090513          	mv	a0,s2
80008684:	00048593          	mv	a1,s1
80008688:	00001097          	auipc	ra,0x1
8000868c:	83c080e7          	jalr	-1988(ra) # 80008ec4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>
80008690:	00050593          	mv	a1,a0
80008694:	000a0513          	mv	a0,s4
80008698:	fd35e0e3          	bltu	a1,s3,80008658 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x148>
8000869c:	01852583          	lw	a1,24(a0)
800086a0:	01452503          	lw	a0,20(a0)
800086a4:	00c5a303          	lw	t1,12(a1)
800086a8:	00090593          	mv	a1,s2
800086ac:	00048613          	mv	a2,s1
800086b0:	02c12083          	lw	ra,44(sp)
800086b4:	02812403          	lw	s0,40(sp)
800086b8:	02412483          	lw	s1,36(sp)
800086bc:	02012903          	lw	s2,32(sp)
800086c0:	01c12983          	lw	s3,28(sp)
800086c4:	01812a03          	lw	s4,24(sp)
800086c8:	01412a83          	lw	s5,20(sp)
800086cc:	01012b03          	lw	s6,16(sp)
800086d0:	00c12b83          	lw	s7,12(sp)
800086d4:	03010113          	addi	sp,sp,48
800086d8:	00030067          	jr	t1
800086dc:	00200593          	li	a1,2
800086e0:	00b69863          	bne	a3,a1,800086f0 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1e0>
800086e4:	001ad613          	srli	a2,s5,0x1
800086e8:	001a8a93          	addi	s5,s5,1 # 110001 <.Lline_table_start2+0x10ec53>
800086ec:	001ada93          	srli	s5,s5,0x1
800086f0:	01452983          	lw	s3,20(a0)
800086f4:	01852b03          	lw	s6,24(a0)
800086f8:	01052a03          	lw	s4,16(a0)
800086fc:	00160b93          	addi	s7,a2,1
80008700:	fffb8b93          	addi	s7,s7,-1
80008704:	020b8063          	beqz	s7,80008724 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x214>
80008708:	010b2603          	lw	a2,16(s6)
8000870c:	00098513          	mv	a0,s3
80008710:	000a0593          	mv	a1,s4
80008714:	000600e7          	jalr	a2
80008718:	fe0504e3          	beqz	a0,80008700 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x1f0>
8000871c:	00100513          	li	a0,1
80008720:	05c0006f          	j	8000877c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x26c>
80008724:	00cb2683          	lw	a3,12(s6)
80008728:	00098513          	mv	a0,s3
8000872c:	00090593          	mv	a1,s2
80008730:	00048613          	mv	a2,s1
80008734:	000680e7          	jalr	a3
80008738:	00050593          	mv	a1,a0
8000873c:	00100513          	li	a0,1
80008740:	02059e63          	bnez	a1,8000877c <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x26c>
80008744:	41500933          	neg	s2,s5
80008748:	fff00b93          	li	s7,-1
8000874c:	fff00493          	li	s1,-1
80008750:	00990533          	add	a0,s2,s1
80008754:	03750063          	beq	a0,s7,80008774 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x264>
80008758:	010b2603          	lw	a2,16(s6)
8000875c:	00098513          	mv	a0,s3
80008760:	000a0593          	mv	a1,s4
80008764:	000600e7          	jalr	a2
80008768:	00148493          	addi	s1,s1,1
8000876c:	fe0502e3          	beqz	a0,80008750 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x240>
80008770:	0080006f          	j	80008778 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E+0x268>
80008774:	000a8493          	mv	s1,s5
80008778:	0154b533          	sltu	a0,s1,s5
8000877c:	02c12083          	lw	ra,44(sp)
80008780:	02812403          	lw	s0,40(sp)
80008784:	02412483          	lw	s1,36(sp)
80008788:	02012903          	lw	s2,32(sp)
8000878c:	01c12983          	lw	s3,28(sp)
80008790:	01812a03          	lw	s4,24(sp)
80008794:	01412a83          	lw	s5,20(sp)
80008798:	01012b03          	lw	s6,16(sp)
8000879c:	00c12b83          	lw	s7,12(sp)
800087a0:	03010113          	addi	sp,sp,48
800087a4:	00008067          	ret

800087a8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE>:
800087a8:	fc010113          	addi	sp,sp,-64
800087ac:	02112e23          	sw	ra,60(sp)
800087b0:	02812c23          	sw	s0,56(sp)
800087b4:	02912a23          	sw	s1,52(sp)
800087b8:	03212823          	sw	s2,48(sp)
800087bc:	03312623          	sw	s3,44(sp)
800087c0:	03412423          	sw	s4,40(sp)
800087c4:	03512223          	sw	s5,36(sp)
800087c8:	03612023          	sw	s6,32(sp)
800087cc:	01712e23          	sw	s7,28(sp)
800087d0:	01812c23          	sw	s8,24(sp)
800087d4:	01912a23          	sw	s9,20(sp)
800087d8:	01a12823          	sw	s10,16(sp)
800087dc:	04010413          	addi	s0,sp,64
800087e0:	00050493          	mv	s1,a0
800087e4:	00052503          	lw	a0,0(a0)
800087e8:	00058613          	mv	a2,a1
800087ec:	04050663          	beqz	a0,80008838 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x90>
800087f0:	0044ab83          	lw	s7,4(s1)
800087f4:	00062583          	lw	a1,0(a2)
800087f8:	00462983          	lw	s3,4(a2)
800087fc:	00862c83          	lw	s9,8(a2)
80008800:	00c62a03          	lw	s4,12(a2)
80008804:	fcb42023          	sw	a1,-64(s0)
80008808:	fd342223          	sw	s3,-60(s0)
8000880c:	01c4c503          	lbu	a0,28(s1)
80008810:	0104aa83          	lw	s5,16(s1)
80008814:	0204cb03          	lbu	s6,32(s1)
80008818:	fd942423          	sw	s9,-56(s0)
8000881c:	00857513          	andi	a0,a0,8
80008820:	fd442623          	sw	s4,-52(s0)
80008824:	04051c63          	bnez	a0,8000887c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0xd4>
80008828:	000a8913          	mv	s2,s5
8000882c:	000b0c13          	mv	s8,s6
80008830:	080a1a63          	bnez	s4,800088c4 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x11c>
80008834:	1080006f          	j	8000893c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
80008838:	0144a503          	lw	a0,20(s1)
8000883c:	0184a583          	lw	a1,24(s1)
80008840:	03c12083          	lw	ra,60(sp)
80008844:	03812403          	lw	s0,56(sp)
80008848:	03412483          	lw	s1,52(sp)
8000884c:	03012903          	lw	s2,48(sp)
80008850:	02c12983          	lw	s3,44(sp)
80008854:	02812a03          	lw	s4,40(sp)
80008858:	02412a83          	lw	s5,36(sp)
8000885c:	02012b03          	lw	s6,32(sp)
80008860:	01c12b83          	lw	s7,28(sp)
80008864:	01812c03          	lw	s8,24(sp)
80008868:	01412c83          	lw	s9,20(sp)
8000886c:	01012d03          	lw	s10,16(sp)
80008870:	04010113          	addi	sp,sp,64
80008874:	00000317          	auipc	t1,0x0
80008878:	1dc30067          	jr	476(t1) # 80008a50 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
8000887c:	0184a603          	lw	a2,24(s1)
80008880:	0144a503          	lw	a0,20(s1)
80008884:	00c62683          	lw	a3,12(a2)
80008888:	00098613          	mv	a2,s3
8000888c:	000680e7          	jalr	a3
80008890:	14051063          	bnez	a0,800089d0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x228>
80008894:	00100c13          	li	s8,1
80008898:	fd842023          	sw	s8,-64(s0)
8000889c:	fc042223          	sw	zero,-60(s0)
800088a0:	413b8533          	sub	a0,s7,s3
800088a4:	00abb5b3          	sltu	a1,s7,a0
800088a8:	fff58593          	addi	a1,a1,-1
800088ac:	00a5fbb3          	and	s7,a1,a0
800088b0:	03000913          	li	s2,48
800088b4:	0124a823          	sw	s2,16(s1)
800088b8:	03848023          	sb	s8,32(s1)
800088bc:	00000993          	li	s3,0
800088c0:	060a0e63          	beqz	s4,8000893c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
800088c4:	004c8c93          	addi	s9,s9,4
800088c8:	00c00593          	li	a1,12
800088cc:	000a0513          	mv	a0,s4
800088d0:	00001097          	auipc	ra,0x1
800088d4:	6ac080e7          	jalr	1708(ra) # 80009f7c <__mulsi3>
800088d8:	00100593          	li	a1,1
800088dc:	3e800613          	li	a2,1000
800088e0:	00a00693          	li	a3,10
800088e4:	0180006f          	j	800088fc <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x154>
800088e8:	000ca703          	lw	a4,0(s9)
800088ec:	013709b3          	add	s3,a4,s3
800088f0:	ff450513          	addi	a0,a0,-12
800088f4:	00cc8c93          	addi	s9,s9,12
800088f8:	04050263          	beqz	a0,8000893c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x194>
800088fc:	ffccd703          	lhu	a4,-4(s9)
80008900:	fe0704e3          	beqz	a4,800088e8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x140>
80008904:	02b71063          	bne	a4,a1,80008924 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x17c>
80008908:	ffecd783          	lhu	a5,-2(s9)
8000890c:	02c7f063          	bgeu	a5,a2,8000892c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x184>
80008910:	00100713          	li	a4,1
80008914:	fcd7ece3          	bltu	a5,a3,800088ec <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008918:	0647b713          	sltiu	a4,a5,100
8000891c:	00374713          	xori	a4,a4,3
80008920:	fcdff06f          	j	800088ec <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
80008924:	004ca703          	lw	a4,4(s9)
80008928:	fc5ff06f          	j	800088ec <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
8000892c:	0047d793          	srli	a5,a5,0x4
80008930:	2717b713          	sltiu	a4,a5,625
80008934:	00574713          	xori	a4,a4,5
80008938:	fb5ff06f          	j	800088ec <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x144>
8000893c:	0179fc63          	bgeu	s3,s7,80008954 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1ac>
80008940:	00100513          	li	a0,1
80008944:	413b8bb3          	sub	s7,s7,s3
80008948:	03854263          	blt	a0,s8,8000896c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1c4>
8000894c:	020c1c63          	bnez	s8,80008984 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1dc>
80008950:	03c0006f          	j	8000898c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1e4>
80008954:	0144a503          	lw	a0,20(s1)
80008958:	0184a583          	lw	a1,24(s1)
8000895c:	fc040613          	addi	a2,s0,-64
80008960:	00000097          	auipc	ra,0x0
80008964:	0f0080e7          	jalr	240(ra) # 80008a50 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
80008968:	0a80006f          	j	80008a10 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x268>
8000896c:	00200513          	li	a0,2
80008970:	00ac1a63          	bne	s8,a0,80008984 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1dc>
80008974:	001bdc13          	srli	s8,s7,0x1
80008978:	001b8b93          	addi	s7,s7,1
8000897c:	001bdb93          	srli	s7,s7,0x1
80008980:	00c0006f          	j	8000898c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1e4>
80008984:	000b8c13          	mv	s8,s7
80008988:	00000b93          	li	s7,0
8000898c:	0144a983          	lw	s3,20(s1)
80008990:	0184aa03          	lw	s4,24(s1)
80008994:	001c0c13          	addi	s8,s8,1
80008998:	fffc0c13          	addi	s8,s8,-1
8000899c:	000c0e63          	beqz	s8,800089b8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x210>
800089a0:	010a2603          	lw	a2,16(s4)
800089a4:	00098513          	mv	a0,s3
800089a8:	00090593          	mv	a1,s2
800089ac:	000600e7          	jalr	a2
800089b0:	fe0504e3          	beqz	a0,80008998 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x1f0>
800089b4:	01c0006f          	j	800089d0 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x228>
800089b8:	fc040613          	addi	a2,s0,-64
800089bc:	00098513          	mv	a0,s3
800089c0:	000a0593          	mv	a1,s4
800089c4:	00000097          	auipc	ra,0x0
800089c8:	08c080e7          	jalr	140(ra) # 80008a50 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>
800089cc:	00050663          	beqz	a0,800089d8 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x230>
800089d0:	00100513          	li	a0,1
800089d4:	0440006f          	j	80008a18 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x270>
800089d8:	41700cb3          	neg	s9,s7
800089dc:	fff00d13          	li	s10,-1
800089e0:	fff00c13          	li	s8,-1
800089e4:	018c8533          	add	a0,s9,s8
800089e8:	03a50063          	beq	a0,s10,80008a08 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x260>
800089ec:	010a2603          	lw	a2,16(s4)
800089f0:	00098513          	mv	a0,s3
800089f4:	00090593          	mv	a1,s2
800089f8:	000600e7          	jalr	a2
800089fc:	001c0c13          	addi	s8,s8,1
80008a00:	fe0502e3          	beqz	a0,800089e4 <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x23c>
80008a04:	0080006f          	j	80008a0c <_ZN4core3fmt9Formatter19pad_formatted_parts17hef5655f4e5d02ebdE+0x264>
80008a08:	000b8c13          	mv	s8,s7
80008a0c:	017c3533          	sltu	a0,s8,s7
80008a10:	0154a823          	sw	s5,16(s1)
80008a14:	03648023          	sb	s6,32(s1)
80008a18:	03c12083          	lw	ra,60(sp)
80008a1c:	03812403          	lw	s0,56(sp)
80008a20:	03412483          	lw	s1,52(sp)
80008a24:	03012903          	lw	s2,48(sp)
80008a28:	02c12983          	lw	s3,44(sp)
80008a2c:	02812a03          	lw	s4,40(sp)
80008a30:	02412a83          	lw	s5,36(sp)
80008a34:	02012b03          	lw	s6,32(sp)
80008a38:	01c12b83          	lw	s7,28(sp)
80008a3c:	01812c03          	lw	s8,24(sp)
80008a40:	01412c83          	lw	s9,20(sp)
80008a44:	01012d03          	lw	s10,16(sp)
80008a48:	04010113          	addi	sp,sp,64
80008a4c:	00008067          	ret

80008a50 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E>:
80008a50:	fc010113          	addi	sp,sp,-64
80008a54:	02112e23          	sw	ra,60(sp)
80008a58:	02812c23          	sw	s0,56(sp)
80008a5c:	02912a23          	sw	s1,52(sp)
80008a60:	03212823          	sw	s2,48(sp)
80008a64:	03312623          	sw	s3,44(sp)
80008a68:	03412423          	sw	s4,40(sp)
80008a6c:	03512223          	sw	s5,36(sp)
80008a70:	03612023          	sw	s6,32(sp)
80008a74:	01712e23          	sw	s7,28(sp)
80008a78:	01812c23          	sw	s8,24(sp)
80008a7c:	01912a23          	sw	s9,20(sp)
80008a80:	01a12823          	sw	s10,16(sp)
80008a84:	01b12623          	sw	s11,12(sp)
80008a88:	04010413          	addi	s0,sp,64
80008a8c:	00060993          	mv	s3,a2
80008a90:	00462603          	lw	a2,4(a2)
80008a94:	00058493          	mv	s1,a1
80008a98:	00050913          	mv	s2,a0
80008a9c:	02060063          	beqz	a2,80008abc <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x6c>
80008aa0:	0009a583          	lw	a1,0(s3)
80008aa4:	00c4a683          	lw	a3,12(s1)
80008aa8:	00090513          	mv	a0,s2
80008aac:	000680e7          	jalr	a3
80008ab0:	00050593          	mv	a1,a0
80008ab4:	00100513          	li	a0,1
80008ab8:	16059063          	bnez	a1,80008c18 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008abc:	00c9a503          	lw	a0,12(s3)
80008ac0:	14050c63          	beqz	a0,80008c18 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008ac4:	0089ab03          	lw	s6,8(s3)
80008ac8:	00251593          	slli	a1,a0,0x2
80008acc:	00451513          	slli	a0,a0,0x4
80008ad0:	40b50533          	sub	a0,a0,a1
80008ad4:	00ab0bb3          	add	s7,s6,a0
80008ad8:	8000d9b7          	lui	s3,0x8000d
80008adc:	48b98993          	addi	s3,s3,1163 # 8000d48b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.299>
80008ae0:	04000d13          	li	s10,64
80008ae4:	00100c13          	li	s8,1
80008ae8:	0200006f          	j	80008b08 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xb8>
80008aec:	004b2583          	lw	a1,4(s6)
80008af0:	008b2603          	lw	a2,8(s6)
80008af4:	00c4a683          	lw	a3,12(s1)
80008af8:	00090513          	mv	a0,s2
80008afc:	000680e7          	jalr	a3
80008b00:	10050263          	beqz	a0,80008c04 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008b04:	1100006f          	j	80008c14 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008b08:	000b5503          	lhu	a0,0(s6)
80008b0c:	02050a63          	beqz	a0,80008b40 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xf0>
80008b10:	fd851ee3          	bne	a0,s8,80008aec <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x9c>
80008b14:	002b5c83          	lhu	s9,2(s6)
80008b18:	fc040423          	sb	zero,-56(s0)
80008b1c:	fc042223          	sw	zero,-60(s0)
80008b20:	3e800513          	li	a0,1000
80008b24:	04acf663          	bgeu	s9,a0,80008b70 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x120>
80008b28:	00100d93          	li	s11,1
80008b2c:	00a00513          	li	a0,10
80008b30:	04ace663          	bltu	s9,a0,80008b7c <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x12c>
80008b34:	064cb513          	sltiu	a0,s9,100
80008b38:	00354d93          	xori	s11,a0,3
80008b3c:	0400006f          	j	80008b7c <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x12c>
80008b40:	004b2a03          	lw	s4,4(s6)
80008b44:	04100513          	li	a0,65
80008b48:	0aaa6063          	bltu	s4,a0,80008be8 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x198>
80008b4c:	00c4aa83          	lw	s5,12(s1)
80008b50:	04000613          	li	a2,64
80008b54:	00090513          	mv	a0,s2
80008b58:	00098593          	mv	a1,s3
80008b5c:	000a80e7          	jalr	s5
80008b60:	0a051a63          	bnez	a0,80008c14 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008b64:	fc0a0a13          	addi	s4,s4,-64
80008b68:	ff4d64e3          	bltu	s10,s4,80008b50 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x100>
80008b6c:	0800006f          	j	80008bec <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x19c>
80008b70:	004cd513          	srli	a0,s9,0x4
80008b74:	27153513          	sltiu	a0,a0,625
80008b78:	00554d93          	xori	s11,a0,5
80008b7c:	41b00c33          	neg	s8,s11
80008b80:	fc340a13          	addi	s4,s0,-61
80008b84:	01ba0a33          	add	s4,s4,s11
80008b88:	010c9513          	slli	a0,s9,0x10
80008b8c:	01055513          	srli	a0,a0,0x10
80008b90:	00a00593          	li	a1,10
80008b94:	00002097          	auipc	ra,0x2
80008b98:	fa8080e7          	jalr	-88(ra) # 8000ab3c <__udivsi3>
80008b9c:	00050a93          	mv	s5,a0
80008ba0:	00a00593          	li	a1,10
80008ba4:	00001097          	auipc	ra,0x1
80008ba8:	3d8080e7          	jalr	984(ra) # 80009f7c <__mulsi3>
80008bac:	40ac8533          	sub	a0,s9,a0
80008bb0:	03056513          	ori	a0,a0,48
80008bb4:	00aa0023          	sb	a0,0(s4)
80008bb8:	001c0c13          	addi	s8,s8,1
80008bbc:	fffa0a13          	addi	s4,s4,-1
80008bc0:	000a8c93          	mv	s9,s5
80008bc4:	fc0c12e3          	bnez	s8,80008b88 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x138>
80008bc8:	00c4a683          	lw	a3,12(s1)
80008bcc:	fc440593          	addi	a1,s0,-60
80008bd0:	00090513          	mv	a0,s2
80008bd4:	000d8613          	mv	a2,s11
80008bd8:	000680e7          	jalr	a3
80008bdc:	00100c13          	li	s8,1
80008be0:	02050263          	beqz	a0,80008c04 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008be4:	0300006f          	j	80008c14 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008be8:	000a0e63          	beqz	s4,80008c04 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1b4>
80008bec:	00c4a683          	lw	a3,12(s1)
80008bf0:	00090513          	mv	a0,s2
80008bf4:	00098593          	mv	a1,s3
80008bf8:	000a0613          	mv	a2,s4
80008bfc:	000680e7          	jalr	a3
80008c00:	00051a63          	bnez	a0,80008c14 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c4>
80008c04:	00cb0b13          	addi	s6,s6,12
80008c08:	f17b10e3          	bne	s6,s7,80008b08 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0xb8>
80008c0c:	00000513          	li	a0,0
80008c10:	0080006f          	j	80008c18 <_ZN4core3fmt9Formatter21write_formatted_parts17h30aa7364f1f3dc34E+0x1c8>
80008c14:	00100513          	li	a0,1
80008c18:	03c12083          	lw	ra,60(sp)
80008c1c:	03812403          	lw	s0,56(sp)
80008c20:	03412483          	lw	s1,52(sp)
80008c24:	03012903          	lw	s2,48(sp)
80008c28:	02c12983          	lw	s3,44(sp)
80008c2c:	02812a03          	lw	s4,40(sp)
80008c30:	02412a83          	lw	s5,36(sp)
80008c34:	02012b03          	lw	s6,32(sp)
80008c38:	01c12b83          	lw	s7,28(sp)
80008c3c:	01812c03          	lw	s8,24(sp)
80008c40:	01412c83          	lw	s9,20(sp)
80008c44:	01012d03          	lw	s10,16(sp)
80008c48:	00c12d83          	lw	s11,12(sp)
80008c4c:	04010113          	addi	sp,sp,64
80008c50:	00008067          	ret

80008c54 <_ZN4core3fmt9Formatter9write_str17h11ae34547589f6b4E>:
80008c54:	ff010113          	addi	sp,sp,-16
80008c58:	00112623          	sw	ra,12(sp)
80008c5c:	00812423          	sw	s0,8(sp)
80008c60:	01010413          	addi	s0,sp,16
80008c64:	01852683          	lw	a3,24(a0)
80008c68:	01452503          	lw	a0,20(a0)
80008c6c:	00c6a303          	lw	t1,12(a3)
80008c70:	00c12083          	lw	ra,12(sp)
80008c74:	00812403          	lw	s0,8(sp)
80008c78:	01010113          	addi	sp,sp,16
80008c7c:	00030067          	jr	t1

80008c80 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E>:
80008c80:	fc010113          	addi	sp,sp,-64
80008c84:	02112e23          	sw	ra,60(sp)
80008c88:	02812c23          	sw	s0,56(sp)
80008c8c:	02912a23          	sw	s1,52(sp)
80008c90:	03212823          	sw	s2,48(sp)
80008c94:	03312623          	sw	s3,44(sp)
80008c98:	03412423          	sw	s4,40(sp)
80008c9c:	03512223          	sw	s5,36(sp)
80008ca0:	03612023          	sw	s6,32(sp)
80008ca4:	01712e23          	sw	s7,28(sp)
80008ca8:	01812c23          	sw	s8,24(sp)
80008cac:	01912a23          	sw	s9,20(sp)
80008cb0:	04010413          	addi	s0,sp,64
80008cb4:	00050493          	mv	s1,a0
80008cb8:	00042903          	lw	s2,0(s0)
80008cbc:	01852283          	lw	t0,24(a0)
80008cc0:	00442983          	lw	s3,4(s0)
80008cc4:	00842a03          	lw	s4,8(s0)
80008cc8:	01452503          	lw	a0,20(a0)
80008ccc:	00c2a303          	lw	t1,12(t0)
80008cd0:	00088a93          	mv	s5,a7
80008cd4:	00080b13          	mv	s6,a6
80008cd8:	00078b93          	mv	s7,a5
80008cdc:	00070c13          	mv	s8,a4
80008ce0:	00068c93          	mv	s9,a3
80008ce4:	000300e7          	jalr	t1
80008ce8:	fc942623          	sw	s1,-52(s0)
80008cec:	fca40823          	sb	a0,-48(s0)
80008cf0:	fc0408a3          	sb	zero,-47(s0)
80008cf4:	fcc40513          	addi	a0,s0,-52
80008cf8:	000c8593          	mv	a1,s9
80008cfc:	000c0613          	mv	a2,s8
80008d00:	000b8693          	mv	a3,s7
80008d04:	000b0713          	mv	a4,s6
80008d08:	fffff097          	auipc	ra,0xfffff
80008d0c:	8e0080e7          	jalr	-1824(ra) # 800075e8 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>
80008d10:	fcc40513          	addi	a0,s0,-52
80008d14:	000a8593          	mv	a1,s5
80008d18:	00090613          	mv	a2,s2
80008d1c:	00098693          	mv	a3,s3
80008d20:	000a0713          	mv	a4,s4
80008d24:	fffff097          	auipc	ra,0xfffff
80008d28:	8c4080e7          	jalr	-1852(ra) # 800075e8 <_ZN4core3fmt8builders11DebugStruct5field17h4f67c523ce44f4f5E>
80008d2c:	fd144603          	lbu	a2,-47(s0)
80008d30:	fd044583          	lbu	a1,-48(s0)
80008d34:	00b66533          	or	a0,a2,a1
80008d38:	04060a63          	beqz	a2,80008d8c <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x10c>
80008d3c:	0015f593          	andi	a1,a1,1
80008d40:	04059663          	bnez	a1,80008d8c <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x10c>
80008d44:	fcc42503          	lw	a0,-52(s0)
80008d48:	01c54583          	lbu	a1,28(a0)
80008d4c:	0045f593          	andi	a1,a1,4
80008d50:	02059063          	bnez	a1,80008d70 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0xf0>
80008d54:	01852583          	lw	a1,24(a0)
80008d58:	01452503          	lw	a0,20(a0)
80008d5c:	00c5a683          	lw	a3,12(a1)
80008d60:	8000d5b7          	lui	a1,0x8000d
80008d64:	3bf58593          	addi	a1,a1,959 # 8000d3bf <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.262>
80008d68:	00200613          	li	a2,2
80008d6c:	01c0006f          	j	80008d88 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h79c99e4380bb6242E+0x108>
80008d70:	01852583          	lw	a1,24(a0)
80008d74:	01452503          	lw	a0,20(a0)
80008d78:	00c5a683          	lw	a3,12(a1)
80008d7c:	8000d5b7          	lui	a1,0x8000d
80008d80:	3be58593          	addi	a1,a1,958 # 8000d3be <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.261>
80008d84:	00100613          	li	a2,1
80008d88:	000680e7          	jalr	a3
80008d8c:	00157513          	andi	a0,a0,1
80008d90:	03c12083          	lw	ra,60(sp)
80008d94:	03812403          	lw	s0,56(sp)
80008d98:	03412483          	lw	s1,52(sp)
80008d9c:	03012903          	lw	s2,48(sp)
80008da0:	02c12983          	lw	s3,44(sp)
80008da4:	02812a03          	lw	s4,40(sp)
80008da8:	02412a83          	lw	s5,36(sp)
80008dac:	02012b03          	lw	s6,32(sp)
80008db0:	01c12b83          	lw	s7,28(sp)
80008db4:	01812c03          	lw	s8,24(sp)
80008db8:	01412c83          	lw	s9,20(sp)
80008dbc:	04010113          	addi	sp,sp,64
80008dc0:	00008067          	ret

80008dc4 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E>:
80008dc4:	f6010113          	addi	sp,sp,-160
80008dc8:	08112e23          	sw	ra,156(sp)
80008dcc:	08812c23          	sw	s0,152(sp)
80008dd0:	08912a23          	sw	s1,148(sp)
80008dd4:	09212823          	sw	s2,144(sp)
80008dd8:	09312623          	sw	s3,140(sp)
80008ddc:	09412423          	sw	s4,136(sp)
80008de0:	0a010413          	addi	s0,sp,160
80008de4:	00058493          	mv	s1,a1
80008de8:	01c5a903          	lw	s2,28(a1)
80008dec:	0005a983          	lw	s3,0(a1)
80008df0:	0045aa03          	lw	s4,4(a1)
80008df4:	00497613          	andi	a2,s2,4
80008df8:	00090593          	mv	a1,s2
80008dfc:	00060e63          	beqz	a2,80008e18 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x54>
80008e00:	00896593          	ori	a1,s2,8
80008e04:	00099a63          	bnez	s3,80008e18 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x54>
80008e08:	00100613          	li	a2,1
80008e0c:	00c4a023          	sw	a2,0(s1)
80008e10:	00a00613          	li	a2,10
80008e14:	00c4a223          	sw	a2,4(s1)
80008e18:	00000793          	li	a5,0
80008e1c:	0045e593          	ori	a1,a1,4
80008e20:	00b4ae23          	sw	a1,28(s1)
80008e24:	fe740593          	addi	a1,s0,-25
80008e28:	00a00613          	li	a2,10
80008e2c:	01c0006f          	j	80008e48 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x84>
80008e30:	05768693          	addi	a3,a3,87
80008e34:	00455513          	srli	a0,a0,0x4
80008e38:	00d58023          	sb	a3,0(a1)
80008e3c:	00178793          	addi	a5,a5,1 # 110001 <.Lline_table_start2+0x10ec53>
80008e40:	fff58593          	addi	a1,a1,-1
80008e44:	00050a63          	beqz	a0,80008e58 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x94>
80008e48:	00f57693          	andi	a3,a0,15
80008e4c:	fec6f2e3          	bgeu	a3,a2,80008e30 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x6c>
80008e50:	03068693          	addi	a3,a3,48
80008e54:	fe1ff06f          	j	80008e34 <_ZN4core3fmt17pointer_fmt_inner17h3793917cde08d5c5E+0x70>
80008e58:	f6840513          	addi	a0,s0,-152
80008e5c:	40f50533          	sub	a0,a0,a5
80008e60:	08050713          	addi	a4,a0,128
80008e64:	8000d637          	lui	a2,0x8000d
80008e68:	3c160613          	addi	a2,a2,961 # 8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80008e6c:	00100593          	li	a1,1
80008e70:	00200693          	li	a3,2
80008e74:	00048513          	mv	a0,s1
80008e78:	fffff097          	auipc	ra,0xfffff
80008e7c:	298080e7          	jalr	664(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80008e80:	0134a023          	sw	s3,0(s1)
80008e84:	0144a223          	sw	s4,4(s1)
80008e88:	0124ae23          	sw	s2,28(s1)
80008e8c:	09c12083          	lw	ra,156(sp)
80008e90:	09812403          	lw	s0,152(sp)
80008e94:	09412483          	lw	s1,148(sp)
80008e98:	09012903          	lw	s2,144(sp)
80008e9c:	08c12983          	lw	s3,140(sp)
80008ea0:	08812a03          	lw	s4,136(sp)
80008ea4:	0a010113          	addi	sp,sp,160
80008ea8:	00008067          	ret

80008eac <_ZN4core5slice5index24slice_end_index_len_fail17hdfa577aeb23ef352E>:
80008eac:	ff010113          	addi	sp,sp,-16
80008eb0:	00112623          	sw	ra,12(sp)
80008eb4:	00812423          	sw	s0,8(sp)
80008eb8:	01010413          	addi	s0,sp,16
80008ebc:	00001097          	auipc	ra,0x1
80008ec0:	054080e7          	jalr	84(ra) # 80009f10 <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h54d6dc839f74746cE>

80008ec4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE>:
80008ec4:	ff010113          	addi	sp,sp,-16
80008ec8:	00112623          	sw	ra,12(sp)
80008ecc:	00812423          	sw	s0,8(sp)
80008ed0:	01010413          	addi	s0,sp,16
80008ed4:	00050613          	mv	a2,a0
80008ed8:	00350513          	addi	a0,a0,3
80008edc:	ffc57513          	andi	a0,a0,-4
80008ee0:	40c502b3          	sub	t0,a0,a2
80008ee4:	0255fc63          	bgeu	a1,t0,80008f1c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x58>
80008ee8:	00000513          	li	a0,0
80008eec:	02058063          	beqz	a1,80008f0c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x48>
80008ef0:	00b605b3          	add	a1,a2,a1
80008ef4:	00060683          	lb	a3,0(a2)
80008ef8:	fc06a693          	slti	a3,a3,-64
80008efc:	0016c693          	xori	a3,a3,1
80008f00:	00160613          	addi	a2,a2,1
80008f04:	00d50533          	add	a0,a0,a3
80008f08:	feb616e3          	bne	a2,a1,80008ef4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x30>
80008f0c:	00c12083          	lw	ra,12(sp)
80008f10:	00812403          	lw	s0,8(sp)
80008f14:	01010113          	addi	sp,sp,16
80008f18:	00008067          	ret
80008f1c:	405586b3          	sub	a3,a1,t0
80008f20:	0026d893          	srli	a7,a3,0x2
80008f24:	fc0882e3          	beqz	a7,80008ee8 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x24>
80008f28:	005602b3          	add	t0,a2,t0
80008f2c:	0036f593          	andi	a1,a3,3
80008f30:	00c51663          	bne	a0,a2,80008f3c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x78>
80008f34:	00000513          	li	a0,0
80008f38:	0200006f          	j	80008f58 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x94>
80008f3c:	00000513          	li	a0,0
80008f40:	00060703          	lb	a4,0(a2)
80008f44:	fc072713          	slti	a4,a4,-64
80008f48:	00174713          	xori	a4,a4,1
80008f4c:	00160613          	addi	a2,a2,1
80008f50:	00e50533          	add	a0,a0,a4
80008f54:	fe5616e3          	bne	a2,t0,80008f40 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x7c>
80008f58:	00000713          	li	a4,0
80008f5c:	02058463          	beqz	a1,80008f84 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xc0>
80008f60:	ffc6f613          	andi	a2,a3,-4
80008f64:	00c28633          	add	a2,t0,a2
80008f68:	00060683          	lb	a3,0(a2)
80008f6c:	fc06a693          	slti	a3,a3,-64
80008f70:	0016c693          	xori	a3,a3,1
80008f74:	00d70733          	add	a4,a4,a3
80008f78:	fff58593          	addi	a1,a1,-1
80008f7c:	00160613          	addi	a2,a2,1
80008f80:	fe0594e3          	bnez	a1,80008f68 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xa4>
80008f84:	010105b7          	lui	a1,0x1010
80008f88:	10158613          	addi	a2,a1,257 # 1010101 <.Lline_table_start2+0x100ed53>
80008f8c:	00ff05b7          	lui	a1,0xff0
80008f90:	0ff58593          	addi	a1,a1,255 # ff00ff <.Lline_table_start2+0xfeed51>
80008f94:	00a70533          	add	a0,a4,a0
80008f98:	00400793          	li	a5,4
80008f9c:	0340006f          	j	80008fd0 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x10c>
80008fa0:	005702b3          	add	t0,a4,t0
80008fa4:	410688b3          	sub	a7,a3,a6
80008fa8:	00387313          	andi	t1,a6,3
80008fac:	00b3fe33          	and	t3,t2,a1
80008fb0:	0083d393          	srli	t2,t2,0x8
80008fb4:	00b3f3b3          	and	t2,t2,a1
80008fb8:	01c383b3          	add	t2,t2,t3
80008fbc:	01039e13          	slli	t3,t2,0x10
80008fc0:	007e03b3          	add	t2,t3,t2
80008fc4:	0103d393          	srli	t2,t2,0x10
80008fc8:	00a38533          	add	a0,t2,a0
80008fcc:	0a031a63          	bnez	t1,80009080 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x1bc>
80008fd0:	f2088ee3          	beqz	a7,80008f0c <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x48>
80008fd4:	00088693          	mv	a3,a7
80008fd8:	00028713          	mv	a4,t0
80008fdc:	0c000893          	li	a7,192
80008fe0:	00068813          	mv	a6,a3
80008fe4:	0116e463          	bltu	a3,a7,80008fec <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x128>
80008fe8:	0c000813          	li	a6,192
80008fec:	00281293          	slli	t0,a6,0x2
80008ff0:	00000393          	li	t2,0
80008ff4:	faf6e6e3          	bltu	a3,a5,80008fa0 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xdc>
80008ff8:	3f02f893          	andi	a7,t0,1008
80008ffc:	011708b3          	add	a7,a4,a7
80009000:	00070313          	mv	t1,a4
80009004:	00032e03          	lw	t3,0(t1)
80009008:	fffe4e93          	not	t4,t3
8000900c:	007ede93          	srli	t4,t4,0x7
80009010:	006e5e13          	srli	t3,t3,0x6
80009014:	00432f03          	lw	t5,4(t1)
80009018:	01ceee33          	or	t3,t4,t3
8000901c:	00ce7e33          	and	t3,t3,a2
80009020:	007e03b3          	add	t2,t3,t2
80009024:	ffff4e13          	not	t3,t5
80009028:	007e5e13          	srli	t3,t3,0x7
8000902c:	00832e83          	lw	t4,8(t1)
80009030:	006f5f13          	srli	t5,t5,0x6
80009034:	01ee6e33          	or	t3,t3,t5
80009038:	00ce7e33          	and	t3,t3,a2
8000903c:	fffecf13          	not	t5,t4
80009040:	007f5f13          	srli	t5,t5,0x7
80009044:	006ede93          	srli	t4,t4,0x6
80009048:	01df6eb3          	or	t4,t5,t4
8000904c:	00c32f03          	lw	t5,12(t1)
80009050:	00cefeb3          	and	t4,t4,a2
80009054:	01ce8e33          	add	t3,t4,t3
80009058:	007e03b3          	add	t2,t3,t2
8000905c:	ffff4e13          	not	t3,t5
80009060:	007e5e13          	srli	t3,t3,0x7
80009064:	006f5e93          	srli	t4,t5,0x6
80009068:	01de6e33          	or	t3,t3,t4
8000906c:	00ce7e33          	and	t3,t3,a2
80009070:	01030313          	addi	t1,t1,16
80009074:	007e03b3          	add	t2,t3,t2
80009078:	f91316e3          	bne	t1,a7,80009004 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x140>
8000907c:	f25ff06f          	j	80008fa0 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0xdc>
80009080:	00000793          	li	a5,0
80009084:	0fc87813          	andi	a6,a6,252
80009088:	00281813          	slli	a6,a6,0x2
8000908c:	01070733          	add	a4,a4,a6
80009090:	0c06b813          	sltiu	a6,a3,192
80009094:	41000833          	neg	a6,a6
80009098:	0106f6b3          	and	a3,a3,a6
8000909c:	0036f693          	andi	a3,a3,3
800090a0:	00269693          	slli	a3,a3,0x2
800090a4:	00072803          	lw	a6,0(a4)
800090a8:	00470713          	addi	a4,a4,4
800090ac:	fff84893          	not	a7,a6
800090b0:	0078d893          	srli	a7,a7,0x7
800090b4:	00685813          	srli	a6,a6,0x6
800090b8:	0108e833          	or	a6,a7,a6
800090bc:	00c87833          	and	a6,a6,a2
800090c0:	ffc68693          	addi	a3,a3,-4
800090c4:	00f807b3          	add	a5,a6,a5
800090c8:	fc069ee3          	bnez	a3,800090a4 <_ZN4core3str5count14do_count_chars17ha053d1fc8832921aE+0x1e0>
800090cc:	00b7f633          	and	a2,a5,a1
800090d0:	0087d793          	srli	a5,a5,0x8
800090d4:	00b7f5b3          	and	a1,a5,a1
800090d8:	00c585b3          	add	a1,a1,a2
800090dc:	01059613          	slli	a2,a1,0x10
800090e0:	00b605b3          	add	a1,a2,a1
800090e4:	0105d593          	srli	a1,a1,0x10
800090e8:	00a58533          	add	a0,a1,a0
800090ec:	00c12083          	lw	ra,12(sp)
800090f0:	00812403          	lw	s0,8(sp)
800090f4:	01010113          	addi	sp,sp,16
800090f8:	00008067          	ret

800090fc <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E>:
800090fc:	ff010113          	addi	sp,sp,-16
80009100:	00112623          	sw	ra,12(sp)
80009104:	00812423          	sw	s0,8(sp)
80009108:	01010413          	addi	s0,sp,16
8000910c:	fff58613          	addi	a2,a1,-1
80009110:	00c5c6b3          	xor	a3,a1,a2
80009114:	02d67263          	bgeu	a2,a3,80009138 <_ZN4core5alloc6layout6Layout19is_size_align_valid17ha885039872b1f836E+0x3c>
80009118:	80000637          	lui	a2,0x80000
8000911c:	40b60633          	sub	a2,a2,a1
80009120:	00a63533          	sltu	a0,a2,a0
80009124:	00154513          	xori	a0,a0,1
80009128:	00c12083          	lw	ra,12(sp)
8000912c:	00812403          	lw	s0,8(sp)
80009130:	01010113          	addi	sp,sp,16
80009134:	00008067          	ret
80009138:	00000513          	li	a0,0
8000913c:	00c12083          	lw	ra,12(sp)
80009140:	00812403          	lw	s0,8(sp)
80009144:	01010113          	addi	sp,sp,16
80009148:	00008067          	ret

8000914c <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E>:
8000914c:	fe010113          	addi	sp,sp,-32
80009150:	00112e23          	sw	ra,28(sp)
80009154:	00812c23          	sw	s0,24(sp)
80009158:	00912a23          	sw	s1,20(sp)
8000915c:	01212823          	sw	s2,16(sp)
80009160:	01312623          	sw	s3,12(sp)
80009164:	01412423          	sw	s4,8(sp)
80009168:	01512223          	sw	s5,4(sp)
8000916c:	02010413          	addi	s0,sp,32
80009170:	50000613          	li	a2,1280
80009174:	16c5f063          	bgeu	a1,a2,800092d4 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x188>
80009178:	00058493          	mv	s1,a1
8000917c:	0a052583          	lw	a1,160(a0)
80009180:	0054da13          	srli	s4,s1,0x5
80009184:	04058c63          	beqz	a1,800091dc <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x90>
80009188:	00100713          	li	a4,1
8000918c:	40b70633          	sub	a2,a4,a1
80009190:	014587b3          	add	a5,a1,s4
80009194:	fff78693          	addi	a3,a5,-1
80009198:	00279793          	slli	a5,a5,0x2
8000919c:	00a787b3          	add	a5,a5,a0
800091a0:	ffc78793          	addi	a5,a5,-4
800091a4:	00259813          	slli	a6,a1,0x2
800091a8:	00a80833          	add	a6,a6,a0
800091ac:	ffc80813          	addi	a6,a6,-4
800091b0:	02900893          	li	a7,41
800091b4:	02800293          	li	t0,40
800091b8:	1515f863          	bgeu	a1,a7,80009308 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1bc>
800091bc:	1256fa63          	bgeu	a3,t0,800092f0 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1a4>
800091c0:	00082303          	lw	t1,0(a6)
800091c4:	0067a023          	sw	t1,0(a5)
800091c8:	00160613          	addi	a2,a2,1 # 80000001 <_start+0x1>
800091cc:	fff68693          	addi	a3,a3,-1
800091d0:	ffc78793          	addi	a5,a5,-4
800091d4:	ffc80813          	addi	a6,a6,-4
800091d8:	fee610e3          	bne	a2,a4,800091b8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x6c>
800091dc:	01f4fa93          	andi	s5,s1,31
800091e0:	02000593          	li	a1,32
800091e4:	002a1913          	slli	s2,s4,0x2
800091e8:	00b4ee63          	bltu	s1,a1,80009204 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0xb8>
800091ec:	00050993          	mv	s3,a0
800091f0:	00000593          	li	a1,0
800091f4:	00090613          	mv	a2,s2
800091f8:	00002097          	auipc	ra,0x2
800091fc:	ce0080e7          	jalr	-800(ra) # 8000aed8 <memset>
80009200:	00098513          	mv	a0,s3
80009204:	0a052703          	lw	a4,160(a0)
80009208:	01470733          	add	a4,a4,s4
8000920c:	080a8e63          	beqz	s5,800092a8 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x15c>
80009210:	fff70693          	addi	a3,a4,-1
80009214:	02700593          	li	a1,39
80009218:	0cd5ec63          	bltu	a1,a3,800092f0 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1a4>
8000921c:	00269693          	slli	a3,a3,0x2
80009220:	00d506b3          	add	a3,a0,a3
80009224:	0006a583          	lw	a1,0(a3)
80009228:	409006b3          	neg	a3,s1
8000922c:	00d5d833          	srl	a6,a1,a3
80009230:	00271793          	slli	a5,a4,0x2
80009234:	00070613          	mv	a2,a4
80009238:	00080c63          	beqz	a6,80009250 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x104>
8000923c:	02700613          	li	a2,39
80009240:	0ee66c63          	bltu	a2,a4,80009338 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1ec>
80009244:	00f50633          	add	a2,a0,a5
80009248:	01062023          	sw	a6,0(a2)
8000924c:	00170613          	addi	a2,a4,1
80009250:	001a0a13          	addi	s4,s4,1
80009254:	04ea7063          	bgeu	s4,a4,80009294 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x148>
80009258:	01f6f693          	andi	a3,a3,31
8000925c:	00a787b3          	add	a5,a5,a0
80009260:	ffc78813          	addi	a6,a5,-4
80009264:	02800793          	li	a5,40
80009268:	ffe70893          	addi	a7,a4,-2
8000926c:	0af8fa63          	bgeu	a7,a5,80009320 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x1d4>
80009270:	015598b3          	sll	a7,a1,s5
80009274:	ffc82583          	lw	a1,-4(a6)
80009278:	fff70713          	addi	a4,a4,-1
8000927c:	ffc80293          	addi	t0,a6,-4
80009280:	00d5d333          	srl	t1,a1,a3
80009284:	011368b3          	or	a7,t1,a7
80009288:	01182023          	sw	a7,0(a6)
8000928c:	00028813          	mv	a6,t0
80009290:	fcea6ce3          	bltu	s4,a4,80009268 <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x11c>
80009294:	01250933          	add	s2,a0,s2
80009298:	00092583          	lw	a1,0(s2)
8000929c:	015595b3          	sll	a1,a1,s5
800092a0:	00b92023          	sw	a1,0(s2)
800092a4:	0080006f          	j	800092ac <_ZN4core3num6bignum8Big32x408mul_pow217hbf49792ac756f5d5E+0x160>
800092a8:	00070613          	mv	a2,a4
800092ac:	0ac52023          	sw	a2,160(a0)
800092b0:	01c12083          	lw	ra,28(sp)
800092b4:	01812403          	lw	s0,24(sp)
800092b8:	01412483          	lw	s1,20(sp)
800092bc:	01012903          	lw	s2,16(sp)
800092c0:	00c12983          	lw	s3,12(sp)
800092c4:	00812a03          	lw	s4,8(sp)
800092c8:	00412a83          	lw	s5,4(sp)
800092cc:	02010113          	addi	sp,sp,32
800092d0:	00008067          	ret
800092d4:	8000d537          	lui	a0,0x8000d
800092d8:	50e50513          	addi	a0,a0,1294 # 8000d50e <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.417>
800092dc:	8000d637          	lui	a2,0x8000d
800092e0:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800092e4:	01d00593          	li	a1,29
800092e8:	ffffe097          	auipc	ra,0xffffe
800092ec:	cf0080e7          	jalr	-784(ra) # 80006fd8 <_ZN4core9panicking5panic17hf15f8dd1ea2c64a5E>
800092f0:	8000d637          	lui	a2,0x8000d
800092f4:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
800092f8:	02800593          	li	a1,40
800092fc:	00068513          	mv	a0,a3
80009300:	ffffe097          	auipc	ra,0xffffe
80009304:	d20080e7          	jalr	-736(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009308:	40c00533          	neg	a0,a2
8000930c:	8000d637          	lui	a2,0x8000d
80009310:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009314:	02800593          	li	a1,40
80009318:	ffffe097          	auipc	ra,0xffffe
8000931c:	d08080e7          	jalr	-760(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009320:	8000d637          	lui	a2,0x8000d
80009324:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009328:	fff00513          	li	a0,-1
8000932c:	02800593          	li	a1,40
80009330:	ffffe097          	auipc	ra,0xffffe
80009334:	cf0080e7          	jalr	-784(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009338:	8000d637          	lui	a2,0x8000d
8000933c:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009340:	02800593          	li	a1,40
80009344:	00070513          	mv	a0,a4
80009348:	ffffe097          	auipc	ra,0xffffe
8000934c:	cd8080e7          	jalr	-808(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80009350 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE>:
80009350:	fb010113          	addi	sp,sp,-80
80009354:	04112623          	sw	ra,76(sp)
80009358:	04812423          	sw	s0,72(sp)
8000935c:	04912223          	sw	s1,68(sp)
80009360:	05212023          	sw	s2,64(sp)
80009364:	03312e23          	sw	s3,60(sp)
80009368:	03412c23          	sw	s4,56(sp)
8000936c:	03512a23          	sw	s5,52(sp)
80009370:	03612823          	sw	s6,48(sp)
80009374:	03712623          	sw	s7,44(sp)
80009378:	03812423          	sw	s8,40(sp)
8000937c:	03912223          	sw	s9,36(sp)
80009380:	03a12023          	sw	s10,32(sp)
80009384:	01b12e23          	sw	s11,28(sp)
80009388:	05010413          	addi	s0,sp,80
8000938c:	00058913          	mv	s2,a1
80009390:	00261613          	slli	a2,a2,0x2
80009394:	00c58c33          	add	s8,a1,a2
80009398:	10070463          	beqz	a4,800094a0 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x150>
8000939c:	00050793          	mv	a5,a0
800093a0:	00000d13          	li	s10,0
800093a4:	00000513          	li	a0,0
800093a8:	00170593          	addi	a1,a4,1
800093ac:	fab42a23          	sw	a1,-76(s0)
800093b0:	00271493          	slli	s1,a4,0x2
800093b4:	002d1613          	slli	a2,s10,0x2
800093b8:	00c78633          	add	a2,a5,a2
800093bc:	00090593          	mv	a1,s2
800093c0:	11858e63          	beq	a1,s8,800094dc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x18c>
800093c4:	000d0c93          	mv	s9,s10
800093c8:	00060a13          	mv	s4,a2
800093cc:	0005ab03          	lw	s6,0(a1)
800093d0:	00458913          	addi	s2,a1,4
800093d4:	001d0d13          	addi	s10,s10,1
800093d8:	00460613          	addi	a2,a2,4
800093dc:	00090593          	mv	a1,s2
800093e0:	fe0b00e3          	beqz	s6,800093c0 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x70>
800093e4:	fcf42223          	sw	a5,-60(s0)
800093e8:	fce42423          	sw	a4,-56(s0)
800093ec:	fca42023          	sw	a0,-64(s0)
800093f0:	00000a93          	li	s5,0
800093f4:	fa942c23          	sw	s1,-72(s0)
800093f8:	000c8b93          	mv	s7,s9
800093fc:	fad42e23          	sw	a3,-68(s0)
80009400:	00068d93          	mv	s11,a3
80009404:	02800513          	li	a0,40
80009408:	10abf863          	bgeu	s7,a0,80009518 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x1c8>
8000940c:	000da503          	lw	a0,0(s11)
80009410:	000a2983          	lw	s3,0(s4)
80009414:	004d8d93          	addi	s11,s11,4
80009418:	00000593          	li	a1,0
8000941c:	000b0613          	mv	a2,s6
80009420:	00000693          	li	a3,0
80009424:	00001097          	auipc	ra,0x1
80009428:	ba0080e7          	jalr	-1120(ra) # 80009fc4 <__muldi3>
8000942c:	01598ab3          	add	s5,s3,s5
80009430:	013ab633          	sltu	a2,s5,s3
80009434:	00aa8533          	add	a0,s5,a0
80009438:	01553ab3          	sltu	s5,a0,s5
8000943c:	00b605b3          	add	a1,a2,a1
80009440:	01558ab3          	add	s5,a1,s5
80009444:	00aa2023          	sw	a0,0(s4)
80009448:	001b8b93          	addi	s7,s7,1
8000944c:	ffc48493          	addi	s1,s1,-4
80009450:	004a0a13          	addi	s4,s4,4
80009454:	fa0498e3          	bnez	s1,80009404 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0xb4>
80009458:	fc842703          	lw	a4,-56(s0)
8000945c:	00070513          	mv	a0,a4
80009460:	fc442783          	lw	a5,-60(s0)
80009464:	020a8063          	beqz	s5,80009484 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x134>
80009468:	00ec8533          	add	a0,s9,a4
8000946c:	02800593          	li	a1,40
80009470:	0cb57063          	bgeu	a0,a1,80009530 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x1e0>
80009474:	00251513          	slli	a0,a0,0x2
80009478:	00a78533          	add	a0,a5,a0
8000947c:	01552023          	sw	s5,0(a0)
80009480:	fb442503          	lw	a0,-76(s0)
80009484:	01950cb3          	add	s9,a0,s9
80009488:	fc042503          	lw	a0,-64(s0)
8000948c:	00ace463          	bltu	s9,a0,80009494 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x144>
80009490:	000c8513          	mv	a0,s9
80009494:	fbc42683          	lw	a3,-68(s0)
80009498:	fb842483          	lw	s1,-72(s0)
8000949c:	f19ff06f          	j	800093b4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x64>
800094a0:	00000593          	li	a1,0
800094a4:	00000513          	li	a0,0
800094a8:	40b006b3          	neg	a3,a1
800094ac:	00090593          	mv	a1,s2
800094b0:	03858663          	beq	a1,s8,800094dc <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x18c>
800094b4:	0005a603          	lw	a2,0(a1)
800094b8:	00458913          	addi	s2,a1,4
800094bc:	fff68693          	addi	a3,a3,-1
800094c0:	00090593          	mv	a1,s2
800094c4:	fe0606e3          	beqz	a2,800094b0 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x160>
800094c8:	fff6c593          	not	a1,a3
800094cc:	00a5e463          	bltu	a1,a0,800094d4 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x184>
800094d0:	00058513          	mv	a0,a1
800094d4:	40d005b3          	neg	a1,a3
800094d8:	fd1ff06f          	j	800094a8 <_ZN4core3num6bignum8Big32x4010mul_digits9mul_inner17h93fcd762898b75beE+0x158>
800094dc:	04c12083          	lw	ra,76(sp)
800094e0:	04812403          	lw	s0,72(sp)
800094e4:	04412483          	lw	s1,68(sp)
800094e8:	04012903          	lw	s2,64(sp)
800094ec:	03c12983          	lw	s3,60(sp)
800094f0:	03812a03          	lw	s4,56(sp)
800094f4:	03412a83          	lw	s5,52(sp)
800094f8:	03012b03          	lw	s6,48(sp)
800094fc:	02c12b83          	lw	s7,44(sp)
80009500:	02812c03          	lw	s8,40(sp)
80009504:	02412c83          	lw	s9,36(sp)
80009508:	02012d03          	lw	s10,32(sp)
8000950c:	01c12d83          	lw	s11,28(sp)
80009510:	05010113          	addi	sp,sp,80
80009514:	00008067          	ret
80009518:	8000d637          	lui	a2,0x8000d
8000951c:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009520:	02800593          	li	a1,40
80009524:	000b8513          	mv	a0,s7
80009528:	ffffe097          	auipc	ra,0xffffe
8000952c:	af8080e7          	jalr	-1288(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>
80009530:	8000d637          	lui	a2,0x8000d
80009534:	4e460613          	addi	a2,a2,1252 # 8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>
80009538:	02800593          	li	a1,40
8000953c:	ffffe097          	auipc	ra,0xffffe
80009540:	ae4080e7          	jalr	-1308(ra) # 80007020 <_ZN4core9panicking18panic_bounds_check17h80613859df9a79fcE>

80009544 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E>:
80009544:	f7010113          	addi	sp,sp,-144
80009548:	08112623          	sw	ra,140(sp)
8000954c:	08812423          	sw	s0,136(sp)
80009550:	09010413          	addi	s0,sp,144
80009554:	00058813          	mv	a6,a1
80009558:	01c5a583          	lw	a1,28(a1)
8000955c:	00052503          	lw	a0,0(a0)
80009560:	0105f613          	andi	a2,a1,16
80009564:	02061463          	bnez	a2,8000958c <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x48>
80009568:	0205f593          	andi	a1,a1,32
8000956c:	04059c63          	bnez	a1,800095c4 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x80>
80009570:	00100593          	li	a1,1
80009574:	00080613          	mv	a2,a6
80009578:	08c12083          	lw	ra,140(sp)
8000957c:	08812403          	lw	s0,136(sp)
80009580:	09010113          	addi	sp,sp,144
80009584:	00000317          	auipc	t1,0x0
80009588:	38030067          	jr	896(t1) # 80009904 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>
8000958c:	00000793          	li	a5,0
80009590:	ff740593          	addi	a1,s0,-9
80009594:	00a00613          	li	a2,10
80009598:	01c0006f          	j	800095b4 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x70>
8000959c:	05768693          	addi	a3,a3,87
800095a0:	00455513          	srli	a0,a0,0x4
800095a4:	00d58023          	sb	a3,0(a1)
800095a8:	00178793          	addi	a5,a5,1
800095ac:	fff58593          	addi	a1,a1,-1
800095b0:	04050663          	beqz	a0,800095fc <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xb8>
800095b4:	00f57693          	andi	a3,a0,15
800095b8:	fec6f2e3          	bgeu	a3,a2,8000959c <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x58>
800095bc:	03068693          	addi	a3,a3,48
800095c0:	fe1ff06f          	j	800095a0 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x5c>
800095c4:	00000793          	li	a5,0
800095c8:	ff740593          	addi	a1,s0,-9
800095cc:	00a00613          	li	a2,10
800095d0:	01c0006f          	j	800095ec <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xa8>
800095d4:	03768693          	addi	a3,a3,55
800095d8:	00455513          	srli	a0,a0,0x4
800095dc:	00d58023          	sb	a3,0(a1)
800095e0:	00178793          	addi	a5,a5,1
800095e4:	fff58593          	addi	a1,a1,-1
800095e8:	00050a63          	beqz	a0,800095fc <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0xb8>
800095ec:	00f57693          	andi	a3,a0,15
800095f0:	fec6f2e3          	bgeu	a3,a2,800095d4 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x90>
800095f4:	03068693          	addi	a3,a3,48
800095f8:	fe1ff06f          	j	800095d8 <_ZN73_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c73ff837a0e49c9E+0x94>
800095fc:	f7840513          	addi	a0,s0,-136
80009600:	40f50533          	sub	a0,a0,a5
80009604:	08050713          	addi	a4,a0,128
80009608:	8000d637          	lui	a2,0x8000d
8000960c:	3c160613          	addi	a2,a2,961 # 8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009610:	00100593          	li	a1,1
80009614:	00200693          	li	a3,2
80009618:	00080513          	mv	a0,a6
8000961c:	fffff097          	auipc	ra,0xfffff
80009620:	af4080e7          	jalr	-1292(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009624:	08c12083          	lw	ra,140(sp)
80009628:	08812403          	lw	s0,136(sp)
8000962c:	09010113          	addi	sp,sp,144
80009630:	00008067          	ret

80009634 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h331c0944b890ee9cE>:
80009634:	fe010113          	addi	sp,sp,-32
80009638:	00112e23          	sw	ra,28(sp)
8000963c:	00812c23          	sw	s0,24(sp)
80009640:	02010413          	addi	s0,sp,32
80009644:	00050593          	mv	a1,a0
80009648:	8000d537          	lui	a0,0x8000d
8000964c:	56050513          	addi	a0,a0,1376 # 8000d560 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.433>
80009650:	fea42023          	sw	a0,-32(s0)
80009654:	00100513          	li	a0,1
80009658:	fea42223          	sw	a0,-28(s0)
8000965c:	fe042823          	sw	zero,-16(s0)
80009660:	00400513          	li	a0,4
80009664:	fea42423          	sw	a0,-24(s0)
80009668:	fe042623          	sw	zero,-20(s0)
8000966c:	fe040513          	addi	a0,s0,-32
80009670:	ffffe097          	auipc	ra,0xffffe
80009674:	93c080e7          	jalr	-1732(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80009678 <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E>:
80009678:	ff010113          	addi	sp,sp,-16
8000967c:	00112623          	sw	ra,12(sp)
80009680:	00812423          	sw	s0,8(sp)
80009684:	01010413          	addi	s0,sp,16
80009688:	00058713          	mv	a4,a1
8000968c:	01c5a603          	lw	a2,28(a1)
80009690:	0085a683          	lw	a3,8(a1)
80009694:	00052583          	lw	a1,0(a0)
80009698:	00167613          	andi	a2,a2,1
8000969c:	02068063          	beqz	a3,800096bc <_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h7a2ebb3a5d4d2959E+0x44>
800096a0:	00c72683          	lw	a3,12(a4)
800096a4:	00070513          	mv	a0,a4
800096a8:	00c12083          	lw	ra,12(sp)
800096ac:	00812403          	lw	s0,8(sp)
800096b0:	01010113          	addi	sp,sp,16
800096b4:	ffffe317          	auipc	t1,0xffffe
800096b8:	17030067          	jr	368(t1) # 80007824 <_ZN4core3fmt5float29float_to_decimal_common_exact17ha4c72863ae349062E>
800096bc:	00070513          	mv	a0,a4
800096c0:	00c12083          	lw	ra,12(sp)
800096c4:	00812403          	lw	s0,8(sp)
800096c8:	01010113          	addi	sp,sp,16
800096cc:	ffffe317          	auipc	t1,0xffffe
800096d0:	4cc30067          	jr	1228(t1) # 80007b98 <_ZN4core3fmt5float32float_to_decimal_common_shortest17ha6e14029597949e1E>

800096d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E>:
800096d4:	f7010113          	addi	sp,sp,-144
800096d8:	08112623          	sw	ra,140(sp)
800096dc:	08812423          	sw	s0,136(sp)
800096e0:	09010413          	addi	s0,sp,144
800096e4:	00052603          	lw	a2,0(a0)
800096e8:	00058513          	mv	a0,a1
800096ec:	00000793          	li	a5,0
800096f0:	ff740593          	addi	a1,s0,-9
800096f4:	00a00693          	li	a3,10
800096f8:	01c0006f          	j	80009714 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x40>
800096fc:	05770713          	addi	a4,a4,87
80009700:	00465613          	srli	a2,a2,0x4
80009704:	00e58023          	sb	a4,0(a1)
80009708:	00178793          	addi	a5,a5,1
8000970c:	fff58593          	addi	a1,a1,-1
80009710:	00060a63          	beqz	a2,80009724 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x50>
80009714:	00f67713          	andi	a4,a2,15
80009718:	fed772e3          	bgeu	a4,a3,800096fc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x28>
8000971c:	03070713          	addi	a4,a4,48
80009720:	fe1ff06f          	j	80009700 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h0dc1fbf09e2c7683E+0x2c>
80009724:	f7840593          	addi	a1,s0,-136
80009728:	40f585b3          	sub	a1,a1,a5
8000972c:	08058713          	addi	a4,a1,128
80009730:	8000d637          	lui	a2,0x8000d
80009734:	3c160613          	addi	a2,a2,961 # 8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009738:	00100593          	li	a1,1
8000973c:	00200693          	li	a3,2
80009740:	fffff097          	auipc	ra,0xfffff
80009744:	9d0080e7          	jalr	-1584(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009748:	08c12083          	lw	ra,140(sp)
8000974c:	08812403          	lw	s0,136(sp)
80009750:	09010113          	addi	sp,sp,144
80009754:	00008067          	ret

80009758 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E>:
80009758:	f7010113          	addi	sp,sp,-144
8000975c:	08112623          	sw	ra,140(sp)
80009760:	08812423          	sw	s0,136(sp)
80009764:	09010413          	addi	s0,sp,144
80009768:	00052603          	lw	a2,0(a0)
8000976c:	00058513          	mv	a0,a1
80009770:	00000793          	li	a5,0
80009774:	ff740593          	addi	a1,s0,-9
80009778:	00a00693          	li	a3,10
8000977c:	01c0006f          	j	80009798 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x40>
80009780:	03770713          	addi	a4,a4,55
80009784:	00465613          	srli	a2,a2,0x4
80009788:	00e58023          	sb	a4,0(a1)
8000978c:	00178793          	addi	a5,a5,1
80009790:	fff58593          	addi	a1,a1,-1
80009794:	00060a63          	beqz	a2,800097a8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x50>
80009798:	00f67713          	andi	a4,a2,15
8000979c:	fed772e3          	bgeu	a4,a3,80009780 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x28>
800097a0:	03070713          	addi	a4,a4,48
800097a4:	fe1ff06f          	j	80009784 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h2f3745f04c0965b7E+0x2c>
800097a8:	f7840593          	addi	a1,s0,-136
800097ac:	40f585b3          	sub	a1,a1,a5
800097b0:	08058713          	addi	a4,a1,128
800097b4:	8000d637          	lui	a2,0x8000d
800097b8:	3c160613          	addi	a2,a2,961 # 8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
800097bc:	00100593          	li	a1,1
800097c0:	00200693          	li	a3,2
800097c4:	fffff097          	auipc	ra,0xfffff
800097c8:	94c080e7          	jalr	-1716(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
800097cc:	08c12083          	lw	ra,140(sp)
800097d0:	08812403          	lw	s0,136(sp)
800097d4:	09010113          	addi	sp,sp,144
800097d8:	00008067          	ret

800097dc <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE>:
800097dc:	f7010113          	addi	sp,sp,-144
800097e0:	08112623          	sw	ra,140(sp)
800097e4:	08812423          	sw	s0,136(sp)
800097e8:	09010413          	addi	s0,sp,144
800097ec:	00058813          	mv	a6,a1
800097f0:	01c5a583          	lw	a1,28(a1)
800097f4:	0105f613          	andi	a2,a1,16
800097f8:	02061663          	bnez	a2,80009824 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x48>
800097fc:	0205f593          	andi	a1,a1,32
80009800:	06059063          	bnez	a1,80009860 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x84>
80009804:	00052503          	lw	a0,0(a0)
80009808:	00100593          	li	a1,1
8000980c:	00080613          	mv	a2,a6
80009810:	08c12083          	lw	ra,140(sp)
80009814:	08812403          	lw	s0,136(sp)
80009818:	09010113          	addi	sp,sp,144
8000981c:	00000317          	auipc	t1,0x0
80009820:	0e830067          	jr	232(t1) # 80009904 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>
80009824:	00052503          	lw	a0,0(a0)
80009828:	00000793          	li	a5,0
8000982c:	ff740593          	addi	a1,s0,-9
80009830:	00a00613          	li	a2,10
80009834:	01c0006f          	j	80009850 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x74>
80009838:	05768693          	addi	a3,a3,87
8000983c:	00455513          	srli	a0,a0,0x4
80009840:	00d58023          	sb	a3,0(a1)
80009844:	00178793          	addi	a5,a5,1
80009848:	fff58593          	addi	a1,a1,-1
8000984c:	04050863          	beqz	a0,8000989c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xc0>
80009850:	00f57693          	andi	a3,a0,15
80009854:	fec6f2e3          	bgeu	a3,a2,80009838 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x5c>
80009858:	03068693          	addi	a3,a3,48
8000985c:	fe1ff06f          	j	8000983c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x60>
80009860:	00052503          	lw	a0,0(a0)
80009864:	00000793          	li	a5,0
80009868:	ff740593          	addi	a1,s0,-9
8000986c:	00a00613          	li	a2,10
80009870:	01c0006f          	j	8000988c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xb0>
80009874:	03768693          	addi	a3,a3,55
80009878:	00455513          	srli	a0,a0,0x4
8000987c:	00d58023          	sb	a3,0(a1)
80009880:	00178793          	addi	a5,a5,1
80009884:	fff58593          	addi	a1,a1,-1
80009888:	00050a63          	beqz	a0,8000989c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0xc0>
8000988c:	00f57693          	andi	a3,a0,15
80009890:	fec6f2e3          	bgeu	a3,a2,80009874 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x98>
80009894:	03068693          	addi	a3,a3,48
80009898:	fe1ff06f          	j	80009878 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h39498e129b3d8a3cE+0x9c>
8000989c:	f7840513          	addi	a0,s0,-136
800098a0:	40f50533          	sub	a0,a0,a5
800098a4:	08050713          	addi	a4,a0,128
800098a8:	8000d637          	lui	a2,0x8000d
800098ac:	3c160613          	addi	a2,a2,961 # 8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
800098b0:	00100593          	li	a1,1
800098b4:	00200693          	li	a3,2
800098b8:	00080513          	mv	a0,a6
800098bc:	fffff097          	auipc	ra,0xfffff
800098c0:	854080e7          	jalr	-1964(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
800098c4:	08c12083          	lw	ra,140(sp)
800098c8:	08812403          	lw	s0,136(sp)
800098cc:	09010113          	addi	sp,sp,144
800098d0:	00008067          	ret

800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>:
800098d4:	ff010113          	addi	sp,sp,-16
800098d8:	00112623          	sw	ra,12(sp)
800098dc:	00812423          	sw	s0,8(sp)
800098e0:	01010413          	addi	s0,sp,16
800098e4:	00052503          	lw	a0,0(a0)
800098e8:	00058613          	mv	a2,a1
800098ec:	00100593          	li	a1,1
800098f0:	00c12083          	lw	ra,12(sp)
800098f4:	00812403          	lw	s0,8(sp)
800098f8:	01010113          	addi	sp,sp,16
800098fc:	00000317          	auipc	t1,0x0
80009900:	00830067          	jr	8(t1) # 80009904 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>

80009904 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE>:
80009904:	fb010113          	addi	sp,sp,-80
80009908:	04112623          	sw	ra,76(sp)
8000990c:	04812423          	sw	s0,72(sp)
80009910:	04912223          	sw	s1,68(sp)
80009914:	05212023          	sw	s2,64(sp)
80009918:	03312e23          	sw	s3,60(sp)
8000991c:	03412c23          	sw	s4,56(sp)
80009920:	03512a23          	sw	s5,52(sp)
80009924:	03612823          	sw	s6,48(sp)
80009928:	03712623          	sw	s7,44(sp)
8000992c:	03812423          	sw	s8,40(sp)
80009930:	03912223          	sw	s9,36(sp)
80009934:	03a12023          	sw	s10,32(sp)
80009938:	01b12e23          	sw	s11,28(sp)
8000993c:	05010413          	addi	s0,sp,80
80009940:	00060493          	mv	s1,a2
80009944:	00058913          	mv	s2,a1
80009948:	00050993          	mv	s3,a0
8000994c:	00455513          	srli	a0,a0,0x4
80009950:	00a00b93          	li	s7,10
80009954:	27100593          	li	a1,625
80009958:	8000db37          	lui	s6,0x8000d
8000995c:	3c3b0b13          	addi	s6,s6,963 # 8000d3c3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>
80009960:	02b57663          	bgeu	a0,a1,8000998c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x88>
80009964:	06300513          	li	a0,99
80009968:	0f356263          	bltu	a0,s3,80009a4c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x148>
8000996c:	00a00513          	li	a0,10
80009970:	12a9fc63          	bgeu	s3,a0,80009aa8 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x1a4>
80009974:	fffb8b93          	addi	s7,s7,-1
80009978:	fc240513          	addi	a0,s0,-62
8000997c:	01750533          	add	a0,a0,s7
80009980:	0309e593          	ori	a1,s3,48
80009984:	00b50023          	sb	a1,0(a0)
80009988:	1440006f          	j	80009acc <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x1c8>
8000998c:	fa942e23          	sw	s1,-68(s0)
80009990:	00000b93          	li	s7,0
80009994:	fc840c13          	addi	s8,s0,-56
80009998:	fca40c93          	addi	s9,s0,-54
8000999c:	00002537          	lui	a0,0x2
800099a0:	71050a13          	addi	s4,a0,1808 # 2710 <.Lline_table_start2+0x1362>
800099a4:	05f5e537          	lui	a0,0x5f5e
800099a8:	0ff50d13          	addi	s10,a0,255 # 5f5e0ff <.Lline_table_start2+0x5f5cd51>
800099ac:	00098a93          	mv	s5,s3
800099b0:	00098513          	mv	a0,s3
800099b4:	000a0593          	mv	a1,s4
800099b8:	00001097          	auipc	ra,0x1
800099bc:	184080e7          	jalr	388(ra) # 8000ab3c <__udivsi3>
800099c0:	00050993          	mv	s3,a0
800099c4:	000a0593          	mv	a1,s4
800099c8:	00000097          	auipc	ra,0x0
800099cc:	5b4080e7          	jalr	1460(ra) # 80009f7c <__mulsi3>
800099d0:	40aa8db3          	sub	s11,s5,a0
800099d4:	010d9513          	slli	a0,s11,0x10
800099d8:	01055513          	srli	a0,a0,0x10
800099dc:	06400593          	li	a1,100
800099e0:	00001097          	auipc	ra,0x1
800099e4:	15c080e7          	jalr	348(ra) # 8000ab3c <__udivsi3>
800099e8:	00151493          	slli	s1,a0,0x1
800099ec:	06400593          	li	a1,100
800099f0:	00000097          	auipc	ra,0x0
800099f4:	58c080e7          	jalr	1420(ra) # 80009f7c <__mulsi3>
800099f8:	40ad8533          	sub	a0,s11,a0
800099fc:	01151513          	slli	a0,a0,0x11
80009a00:	009b04b3          	add	s1,s6,s1
80009a04:	0014c583          	lbu	a1,1(s1)
80009a08:	01055513          	srli	a0,a0,0x10
80009a0c:	017c0633          	add	a2,s8,s7
80009a10:	0004c683          	lbu	a3,0(s1)
80009a14:	00b600a3          	sb	a1,1(a2)
80009a18:	00ab0533          	add	a0,s6,a0
80009a1c:	00154583          	lbu	a1,1(a0)
80009a20:	00054503          	lbu	a0,0(a0)
80009a24:	00d60023          	sb	a3,0(a2)
80009a28:	017c8633          	add	a2,s9,s7
80009a2c:	00b600a3          	sb	a1,1(a2)
80009a30:	00a60023          	sb	a0,0(a2)
80009a34:	ffcb8b93          	addi	s7,s7,-4
80009a38:	f75d6ae3          	bltu	s10,s5,800099ac <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0xa8>
80009a3c:	00ab8b93          	addi	s7,s7,10
80009a40:	fbc42483          	lw	s1,-68(s0)
80009a44:	06300513          	li	a0,99
80009a48:	f33572e3          	bgeu	a0,s3,8000996c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x68>
80009a4c:	01099513          	slli	a0,s3,0x10
80009a50:	01055513          	srli	a0,a0,0x10
80009a54:	06400593          	li	a1,100
80009a58:	00001097          	auipc	ra,0x1
80009a5c:	0e4080e7          	jalr	228(ra) # 8000ab3c <__udivsi3>
80009a60:	00050a13          	mv	s4,a0
80009a64:	06400593          	li	a1,100
80009a68:	00000097          	auipc	ra,0x0
80009a6c:	514080e7          	jalr	1300(ra) # 80009f7c <__mulsi3>
80009a70:	40a98533          	sub	a0,s3,a0
80009a74:	01151513          	slli	a0,a0,0x11
80009a78:	01055513          	srli	a0,a0,0x10
80009a7c:	ffeb8b93          	addi	s7,s7,-2
80009a80:	00ab0533          	add	a0,s6,a0
80009a84:	00154583          	lbu	a1,1(a0)
80009a88:	00054503          	lbu	a0,0(a0)
80009a8c:	fc240613          	addi	a2,s0,-62
80009a90:	01760633          	add	a2,a2,s7
80009a94:	00b600a3          	sb	a1,1(a2)
80009a98:	00a60023          	sb	a0,0(a2)
80009a9c:	000a0993          	mv	s3,s4
80009aa0:	00a00513          	li	a0,10
80009aa4:	ecaa68e3          	bltu	s4,a0,80009974 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1066264f3e13b5cdE+0x70>
80009aa8:	00199993          	slli	s3,s3,0x1
80009aac:	ffeb8b93          	addi	s7,s7,-2
80009ab0:	013b09b3          	add	s3,s6,s3
80009ab4:	0019c503          	lbu	a0,1(s3)
80009ab8:	0009c583          	lbu	a1,0(s3)
80009abc:	fc240613          	addi	a2,s0,-62
80009ac0:	01760633          	add	a2,a2,s7
80009ac4:	00a600a3          	sb	a0,1(a2)
80009ac8:	00b60023          	sb	a1,0(a2)
80009acc:	fc240713          	addi	a4,s0,-62
80009ad0:	01770733          	add	a4,a4,s7
80009ad4:	00a00513          	li	a0,10
80009ad8:	417507b3          	sub	a5,a0,s7
80009adc:	00100613          	li	a2,1
80009ae0:	00048513          	mv	a0,s1
80009ae4:	00090593          	mv	a1,s2
80009ae8:	00000693          	li	a3,0
80009aec:	ffffe097          	auipc	ra,0xffffe
80009af0:	624080e7          	jalr	1572(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009af4:	04c12083          	lw	ra,76(sp)
80009af8:	04812403          	lw	s0,72(sp)
80009afc:	04412483          	lw	s1,68(sp)
80009b00:	04012903          	lw	s2,64(sp)
80009b04:	03c12983          	lw	s3,60(sp)
80009b08:	03812a03          	lw	s4,56(sp)
80009b0c:	03412a83          	lw	s5,52(sp)
80009b10:	03012b03          	lw	s6,48(sp)
80009b14:	02c12b83          	lw	s7,44(sp)
80009b18:	02812c03          	lw	s8,40(sp)
80009b1c:	02412c83          	lw	s9,36(sp)
80009b20:	02012d03          	lw	s10,32(sp)
80009b24:	01c12d83          	lw	s11,28(sp)
80009b28:	05010113          	addi	sp,sp,80
80009b2c:	00008067          	ret

80009b30 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE>:
80009b30:	fb010113          	addi	sp,sp,-80
80009b34:	04112623          	sw	ra,76(sp)
80009b38:	04812423          	sw	s0,72(sp)
80009b3c:	04912223          	sw	s1,68(sp)
80009b40:	05212023          	sw	s2,64(sp)
80009b44:	03312e23          	sw	s3,60(sp)
80009b48:	03412c23          	sw	s4,56(sp)
80009b4c:	03512a23          	sw	s5,52(sp)
80009b50:	03612823          	sw	s6,48(sp)
80009b54:	03712623          	sw	s7,44(sp)
80009b58:	03812423          	sw	s8,40(sp)
80009b5c:	03912223          	sw	s9,36(sp)
80009b60:	03a12023          	sw	s10,32(sp)
80009b64:	01b12e23          	sw	s11,28(sp)
80009b68:	05010413          	addi	s0,sp,80
80009b6c:	00068493          	mv	s1,a3
80009b70:	00060913          	mv	s2,a2
80009b74:	00058a13          	mv	s4,a1
80009b78:	00050993          	mv	s3,a0
80009b7c:	01c59513          	slli	a0,a1,0x1c
80009b80:	0049d593          	srli	a1,s3,0x4
80009b84:	00a5e533          	or	a0,a1,a0
80009b88:	27153513          	sltiu	a0,a0,625
80009b8c:	004a5593          	srli	a1,s4,0x4
80009b90:	0015b593          	seqz	a1,a1
80009b94:	00a5f533          	and	a0,a1,a0
80009b98:	8000dc37          	lui	s8,0x8000d
80009b9c:	3c3c0c13          	addi	s8,s8,963 # 8000d3c3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>
80009ba0:	0e051863          	bnez	a0,80009c90 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x160>
80009ba4:	fb242823          	sw	s2,-80(s0)
80009ba8:	fa942a23          	sw	s1,-76(s0)
80009bac:	00000c93          	li	s9,0
80009bb0:	fca40d93          	addi	s11,s0,-54
80009bb4:	00002537          	lui	a0,0x2
80009bb8:	71050a93          	addi	s5,a0,1808 # 2710 <.Lline_table_start2+0x1362>
80009bbc:	05f5e537          	lui	a0,0x5f5e
80009bc0:	0ff50493          	addi	s1,a0,255 # 5f5e0ff <.Lline_table_start2+0x5f5cd51>
80009bc4:	00098b13          	mv	s6,s3
80009bc8:	00098513          	mv	a0,s3
80009bcc:	000a0593          	mv	a1,s4
80009bd0:	000a8613          	mv	a2,s5
80009bd4:	00000693          	li	a3,0
80009bd8:	00001097          	auipc	ra,0x1
80009bdc:	f88080e7          	jalr	-120(ra) # 8000ab60 <__udivdi3>
80009be0:	00050993          	mv	s3,a0
80009be4:	00058b93          	mv	s7,a1
80009be8:	000a8613          	mv	a2,s5
80009bec:	00000693          	li	a3,0
80009bf0:	00000097          	auipc	ra,0x0
80009bf4:	3d4080e7          	jalr	980(ra) # 80009fc4 <__muldi3>
80009bf8:	40ab0933          	sub	s2,s6,a0
80009bfc:	01091513          	slli	a0,s2,0x10
80009c00:	01055513          	srli	a0,a0,0x10
80009c04:	06400593          	li	a1,100
80009c08:	00001097          	auipc	ra,0x1
80009c0c:	f34080e7          	jalr	-204(ra) # 8000ab3c <__udivsi3>
80009c10:	00151d13          	slli	s10,a0,0x1
80009c14:	06400593          	li	a1,100
80009c18:	00000097          	auipc	ra,0x0
80009c1c:	364080e7          	jalr	868(ra) # 80009f7c <__mulsi3>
80009c20:	40a90533          	sub	a0,s2,a0
80009c24:	01151513          	slli	a0,a0,0x11
80009c28:	01ac0d33          	add	s10,s8,s10
80009c2c:	001d4583          	lbu	a1,1(s10)
80009c30:	01055513          	srli	a0,a0,0x10
80009c34:	fc840613          	addi	a2,s0,-56
80009c38:	01960633          	add	a2,a2,s9
80009c3c:	000d4683          	lbu	a3,0(s10)
80009c40:	00b600a3          	sb	a1,1(a2)
80009c44:	00ac0533          	add	a0,s8,a0
80009c48:	00154583          	lbu	a1,1(a0)
80009c4c:	00054503          	lbu	a0,0(a0)
80009c50:	00d60023          	sb	a3,0(a2)
80009c54:	019d8633          	add	a2,s11,s9
80009c58:	00b600a3          	sb	a1,1(a2)
80009c5c:	00a60023          	sb	a0,0(a2)
80009c60:	0164b533          	sltu	a0,s1,s6
80009c64:	014035b3          	snez	a1,s4
80009c68:	00b56533          	or	a0,a0,a1
80009c6c:	ffcc8c93          	addi	s9,s9,-4
80009c70:	000b8a13          	mv	s4,s7
80009c74:	f40518e3          	bnez	a0,80009bc4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x94>
80009c78:	014c8c93          	addi	s9,s9,20
80009c7c:	fb442483          	lw	s1,-76(s0)
80009c80:	fb042903          	lw	s2,-80(s0)
80009c84:	06300513          	li	a0,99
80009c88:	01356a63          	bltu	a0,s3,80009c9c <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x16c>
80009c8c:	0640006f          	j	80009cf0 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1c0>
80009c90:	01400c93          	li	s9,20
80009c94:	06300513          	li	a0,99
80009c98:	05357c63          	bgeu	a0,s3,80009cf0 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1c0>
80009c9c:	01099513          	slli	a0,s3,0x10
80009ca0:	01055513          	srli	a0,a0,0x10
80009ca4:	06400593          	li	a1,100
80009ca8:	00001097          	auipc	ra,0x1
80009cac:	e94080e7          	jalr	-364(ra) # 8000ab3c <__udivsi3>
80009cb0:	00050a13          	mv	s4,a0
80009cb4:	06400593          	li	a1,100
80009cb8:	00000097          	auipc	ra,0x0
80009cbc:	2c4080e7          	jalr	708(ra) # 80009f7c <__mulsi3>
80009cc0:	40a98533          	sub	a0,s3,a0
80009cc4:	01151513          	slli	a0,a0,0x11
80009cc8:	01055513          	srli	a0,a0,0x10
80009ccc:	ffec8c93          	addi	s9,s9,-2
80009cd0:	00ac0533          	add	a0,s8,a0
80009cd4:	00154583          	lbu	a1,1(a0)
80009cd8:	00054503          	lbu	a0,0(a0)
80009cdc:	fb840613          	addi	a2,s0,-72
80009ce0:	01960633          	add	a2,a2,s9
80009ce4:	00b600a3          	sb	a1,1(a2)
80009ce8:	00a60023          	sb	a0,0(a2)
80009cec:	000a0993          	mv	s3,s4
80009cf0:	00a00513          	li	a0,10
80009cf4:	00a9fe63          	bgeu	s3,a0,80009d10 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x1e0>
80009cf8:	fffc8c93          	addi	s9,s9,-1
80009cfc:	fb840513          	addi	a0,s0,-72
80009d00:	01950533          	add	a0,a0,s9
80009d04:	0309e593          	ori	a1,s3,48
80009d08:	00b50023          	sb	a1,0(a0)
80009d0c:	0280006f          	j	80009d34 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE+0x204>
80009d10:	00199993          	slli	s3,s3,0x1
80009d14:	ffec8c93          	addi	s9,s9,-2
80009d18:	013c09b3          	add	s3,s8,s3
80009d1c:	0019c503          	lbu	a0,1(s3)
80009d20:	0009c583          	lbu	a1,0(s3)
80009d24:	fb840613          	addi	a2,s0,-72
80009d28:	01960633          	add	a2,a2,s9
80009d2c:	00a600a3          	sb	a0,1(a2)
80009d30:	00b60023          	sb	a1,0(a2)
80009d34:	fb840713          	addi	a4,s0,-72
80009d38:	01970733          	add	a4,a4,s9
80009d3c:	01400513          	li	a0,20
80009d40:	419507b3          	sub	a5,a0,s9
80009d44:	00100613          	li	a2,1
80009d48:	00048513          	mv	a0,s1
80009d4c:	00090593          	mv	a1,s2
80009d50:	00000693          	li	a3,0
80009d54:	ffffe097          	auipc	ra,0xffffe
80009d58:	3bc080e7          	jalr	956(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009d5c:	04c12083          	lw	ra,76(sp)
80009d60:	04812403          	lw	s0,72(sp)
80009d64:	04412483          	lw	s1,68(sp)
80009d68:	04012903          	lw	s2,64(sp)
80009d6c:	03c12983          	lw	s3,60(sp)
80009d70:	03812a03          	lw	s4,56(sp)
80009d74:	03412a83          	lw	s5,52(sp)
80009d78:	03012b03          	lw	s6,48(sp)
80009d7c:	02c12b83          	lw	s7,44(sp)
80009d80:	02812c03          	lw	s8,40(sp)
80009d84:	02412c83          	lw	s9,36(sp)
80009d88:	02012d03          	lw	s10,32(sp)
80009d8c:	01c12d83          	lw	s11,28(sp)
80009d90:	05010113          	addi	sp,sp,80
80009d94:	00008067          	ret

80009d98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f7a135895224f69E>:
80009d98:	ff010113          	addi	sp,sp,-16
80009d9c:	00112623          	sw	ra,12(sp)
80009da0:	00812423          	sw	s0,8(sp)
80009da4:	01010413          	addi	s0,sp,16
80009da8:	00452603          	lw	a2,4(a0)
80009dac:	00052503          	lw	a0,0(a0)
80009db0:	00c62303          	lw	t1,12(a2)
80009db4:	00c12083          	lw	ra,12(sp)
80009db8:	00812403          	lw	s0,8(sp)
80009dbc:	01010113          	addi	sp,sp,16
80009dc0:	00030067          	jr	t1

80009dc4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE>:
80009dc4:	f7010113          	addi	sp,sp,-144
80009dc8:	08112623          	sw	ra,140(sp)
80009dcc:	08812423          	sw	s0,136(sp)
80009dd0:	09010413          	addi	s0,sp,144
80009dd4:	00052503          	lw	a0,0(a0)
80009dd8:	00058813          	mv	a6,a1
80009ddc:	01c5a603          	lw	a2,28(a1)
80009de0:	00452583          	lw	a1,4(a0)
80009de4:	00052503          	lw	a0,0(a0)
80009de8:	01067693          	andi	a3,a2,16
80009dec:	02069463          	bnez	a3,80009e14 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x50>
80009df0:	02067613          	andi	a2,a2,32
80009df4:	06061463          	bnez	a2,80009e5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x98>
80009df8:	00100613          	li	a2,1
80009dfc:	00080693          	mv	a3,a6
80009e00:	08c12083          	lw	ra,140(sp)
80009e04:	08812403          	lw	s0,136(sp)
80009e08:	09010113          	addi	sp,sp,144
80009e0c:	00000317          	auipc	t1,0x0
80009e10:	d2430067          	jr	-732(t1) # 80009b30 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hc549486285d0dd5dE>
80009e14:	00000793          	li	a5,0
80009e18:	ff740613          	addi	a2,s0,-9
80009e1c:	00a00693          	li	a3,10
80009e20:	02c0006f          	j	80009e4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x88>
80009e24:	05770713          	addi	a4,a4,87
80009e28:	00455513          	srli	a0,a0,0x4
80009e2c:	01c59893          	slli	a7,a1,0x1c
80009e30:	01156533          	or	a0,a0,a7
80009e34:	0045d593          	srli	a1,a1,0x4
80009e38:	00e60023          	sb	a4,0(a2)
80009e3c:	00178793          	addi	a5,a5,1
80009e40:	00b56733          	or	a4,a0,a1
80009e44:	fff60613          	addi	a2,a2,-1
80009e48:	04070e63          	beqz	a4,80009ea4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xe0>
80009e4c:	00f57713          	andi	a4,a0,15
80009e50:	fcd77ae3          	bgeu	a4,a3,80009e24 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x60>
80009e54:	03070713          	addi	a4,a4,48
80009e58:	fd1ff06f          	j	80009e28 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0x64>
80009e5c:	00000793          	li	a5,0
80009e60:	ff740613          	addi	a2,s0,-9
80009e64:	00a00693          	li	a3,10
80009e68:	02c0006f          	j	80009e94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xd0>
80009e6c:	03770713          	addi	a4,a4,55
80009e70:	00455513          	srli	a0,a0,0x4
80009e74:	01c59893          	slli	a7,a1,0x1c
80009e78:	01156533          	or	a0,a0,a7
80009e7c:	0045d593          	srli	a1,a1,0x4
80009e80:	00e60023          	sb	a4,0(a2)
80009e84:	00178793          	addi	a5,a5,1
80009e88:	00b56733          	or	a4,a0,a1
80009e8c:	fff60613          	addi	a2,a2,-1
80009e90:	00070a63          	beqz	a4,80009ea4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xe0>
80009e94:	00f57713          	andi	a4,a0,15
80009e98:	fcd77ae3          	bgeu	a4,a3,80009e6c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xa8>
80009e9c:	03070713          	addi	a4,a4,48
80009ea0:	fd1ff06f          	j	80009e70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h96a3b34762702a9cE+0xac>
80009ea4:	f7840513          	addi	a0,s0,-136
80009ea8:	40f50533          	sub	a0,a0,a5
80009eac:	08050713          	addi	a4,a0,128
80009eb0:	8000d637          	lui	a2,0x8000d
80009eb4:	3c160613          	addi	a2,a2,961 # 8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>
80009eb8:	00100593          	li	a1,1
80009ebc:	00200693          	li	a3,2
80009ec0:	00080513          	mv	a0,a6
80009ec4:	ffffe097          	auipc	ra,0xffffe
80009ec8:	24c080e7          	jalr	588(ra) # 80008110 <_ZN4core3fmt9Formatter12pad_integral17h412bb1f13ecefca9E>
80009ecc:	08c12083          	lw	ra,140(sp)
80009ed0:	08812403          	lw	s0,136(sp)
80009ed4:	09010113          	addi	sp,sp,144
80009ed8:	00008067          	ret

80009edc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7333284de930dfcbE>:
80009edc:	ff010113          	addi	sp,sp,-16
80009ee0:	00112623          	sw	ra,12(sp)
80009ee4:	00812423          	sw	s0,8(sp)
80009ee8:	01010413          	addi	s0,sp,16
80009eec:	00052683          	lw	a3,0(a0)
80009ef0:	00452603          	lw	a2,4(a0)
80009ef4:	00058513          	mv	a0,a1
80009ef8:	00068593          	mv	a1,a3
80009efc:	00c12083          	lw	ra,12(sp)
80009f00:	00812403          	lw	s0,8(sp)
80009f04:	01010113          	addi	sp,sp,16
80009f08:	ffffe317          	auipc	t1,0xffffe
80009f0c:	60830067          	jr	1544(t1) # 80008510 <_ZN4core3fmt9Formatter3pad17h4dc33a73bb86b090E>

80009f10 <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h54d6dc839f74746cE>:
80009f10:	fc010113          	addi	sp,sp,-64
80009f14:	02112e23          	sw	ra,60(sp)
80009f18:	02812c23          	sw	s0,56(sp)
80009f1c:	04010413          	addi	s0,sp,64
80009f20:	fca42423          	sw	a0,-56(s0)
80009f24:	fcb42623          	sw	a1,-52(s0)
80009f28:	fc840513          	addi	a0,s0,-56
80009f2c:	fea42423          	sw	a0,-24(s0)
80009f30:	8000a537          	lui	a0,0x8000a
80009f34:	8d450513          	addi	a0,a0,-1836 # 800098d4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h5bdcf88810cc7da1E>
80009f38:	fea42623          	sw	a0,-20(s0)
80009f3c:	fcc40593          	addi	a1,s0,-52
80009f40:	feb42823          	sw	a1,-16(s0)
80009f44:	fea42a23          	sw	a0,-12(s0)
80009f48:	8000d537          	lui	a0,0x8000d
80009f4c:	58c50513          	addi	a0,a0,1420 # 8000d58c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469>
80009f50:	fca42823          	sw	a0,-48(s0)
80009f54:	00200513          	li	a0,2
80009f58:	fca42a23          	sw	a0,-44(s0)
80009f5c:	fe042023          	sw	zero,-32(s0)
80009f60:	fe840593          	addi	a1,s0,-24
80009f64:	fcb42c23          	sw	a1,-40(s0)
80009f68:	fca42e23          	sw	a0,-36(s0)
80009f6c:	fd040513          	addi	a0,s0,-48
80009f70:	00060593          	mv	a1,a2
80009f74:	ffffd097          	auipc	ra,0xffffd
80009f78:	038080e7          	jalr	56(ra) # 80006fac <_ZN4core9panicking9panic_fmt17h3155f12001daba98E>

80009f7c <__mulsi3>:
80009f7c:	ff010113          	addi	sp,sp,-16
80009f80:	00112623          	sw	ra,12(sp)
80009f84:	00812423          	sw	s0,8(sp)
80009f88:	01010413          	addi	s0,sp,16
80009f8c:	00000613          	li	a2,0
80009f90:	02050063          	beqz	a0,80009fb0 <__mulsi3+0x34>
80009f94:	01f51693          	slli	a3,a0,0x1f
80009f98:	41f6d693          	srai	a3,a3,0x1f
80009f9c:	00b6f6b3          	and	a3,a3,a1
80009fa0:	00c68633          	add	a2,a3,a2
80009fa4:	00155513          	srli	a0,a0,0x1
80009fa8:	00159593          	slli	a1,a1,0x1
80009fac:	fe0514e3          	bnez	a0,80009f94 <__mulsi3+0x18>
80009fb0:	00060513          	mv	a0,a2
80009fb4:	00c12083          	lw	ra,12(sp)
80009fb8:	00812403          	lw	s0,8(sp)
80009fbc:	01010113          	addi	sp,sp,16
80009fc0:	00008067          	ret

80009fc4 <__muldi3>:
80009fc4:	ff010113          	addi	sp,sp,-16
80009fc8:	00112623          	sw	ra,12(sp)
80009fcc:	00812423          	sw	s0,8(sp)
80009fd0:	01010413          	addi	s0,sp,16
80009fd4:	00b56733          	or	a4,a0,a1
80009fd8:	04070c63          	beqz	a4,8000a030 <__muldi3+0x6c>
80009fdc:	00000713          	li	a4,0
80009fe0:	00000793          	li	a5,0
80009fe4:	01f51813          	slli	a6,a0,0x1f
80009fe8:	41f85813          	srai	a6,a6,0x1f
80009fec:	00d878b3          	and	a7,a6,a3
80009ff0:	00c87833          	and	a6,a6,a2
80009ff4:	00e80733          	add	a4,a6,a4
80009ff8:	01073833          	sltu	a6,a4,a6
80009ffc:	00f887b3          	add	a5,a7,a5
8000a000:	010787b3          	add	a5,a5,a6
8000a004:	00155513          	srli	a0,a0,0x1
8000a008:	01f59813          	slli	a6,a1,0x1f
8000a00c:	01056533          	or	a0,a0,a6
8000a010:	0015d593          	srli	a1,a1,0x1
8000a014:	01f65813          	srli	a6,a2,0x1f
8000a018:	00169693          	slli	a3,a3,0x1
8000a01c:	0106e6b3          	or	a3,a3,a6
8000a020:	00b56833          	or	a6,a0,a1
8000a024:	00161613          	slli	a2,a2,0x1
8000a028:	fa081ee3          	bnez	a6,80009fe4 <__muldi3+0x20>
8000a02c:	0080006f          	j	8000a034 <__muldi3+0x70>
8000a030:	00000793          	li	a5,0
8000a034:	00070513          	mv	a0,a4
8000a038:	00078593          	mv	a1,a5
8000a03c:	00c12083          	lw	ra,12(sp)
8000a040:	00812403          	lw	s0,8(sp)
8000a044:	01010113          	addi	sp,sp,16
8000a048:	00008067          	ret

8000a04c <memcpy>:
8000a04c:	ff010113          	addi	sp,sp,-16
8000a050:	00112623          	sw	ra,12(sp)
8000a054:	00812423          	sw	s0,8(sp)
8000a058:	01010413          	addi	s0,sp,16
8000a05c:	01000693          	li	a3,16
8000a060:	08d66063          	bltu	a2,a3,8000a0e0 <memcpy+0x94>
8000a064:	40a006b3          	neg	a3,a0
8000a068:	0036f693          	andi	a3,a3,3
8000a06c:	00d50733          	add	a4,a0,a3
8000a070:	02e57463          	bgeu	a0,a4,8000a098 <memcpy+0x4c>
8000a074:	00068793          	mv	a5,a3
8000a078:	00050813          	mv	a6,a0
8000a07c:	00058893          	mv	a7,a1
8000a080:	0008c283          	lbu	t0,0(a7)
8000a084:	00580023          	sb	t0,0(a6)
8000a088:	00180813          	addi	a6,a6,1
8000a08c:	fff78793          	addi	a5,a5,-1
8000a090:	00188893          	addi	a7,a7,1
8000a094:	fe0796e3          	bnez	a5,8000a080 <memcpy+0x34>
8000a098:	00d585b3          	add	a1,a1,a3
8000a09c:	40d60633          	sub	a2,a2,a3
8000a0a0:	ffc67793          	andi	a5,a2,-4
8000a0a4:	0035f813          	andi	a6,a1,3
8000a0a8:	00f706b3          	add	a3,a4,a5
8000a0ac:	06081463          	bnez	a6,8000a114 <memcpy+0xc8>
8000a0b0:	00d77e63          	bgeu	a4,a3,8000a0cc <memcpy+0x80>
8000a0b4:	00058813          	mv	a6,a1
8000a0b8:	00082883          	lw	a7,0(a6)
8000a0bc:	01172023          	sw	a7,0(a4)
8000a0c0:	00470713          	addi	a4,a4,4
8000a0c4:	00480813          	addi	a6,a6,4
8000a0c8:	fed768e3          	bltu	a4,a3,8000a0b8 <memcpy+0x6c>
8000a0cc:	00f585b3          	add	a1,a1,a5
8000a0d0:	00367613          	andi	a2,a2,3
8000a0d4:	00c68733          	add	a4,a3,a2
8000a0d8:	00e6ea63          	bltu	a3,a4,8000a0ec <memcpy+0xa0>
8000a0dc:	0280006f          	j	8000a104 <memcpy+0xb8>
8000a0e0:	00050693          	mv	a3,a0
8000a0e4:	00c50733          	add	a4,a0,a2
8000a0e8:	00e57e63          	bgeu	a0,a4,8000a104 <memcpy+0xb8>
8000a0ec:	0005c703          	lbu	a4,0(a1)
8000a0f0:	00e68023          	sb	a4,0(a3)
8000a0f4:	00168693          	addi	a3,a3,1
8000a0f8:	fff60613          	addi	a2,a2,-1
8000a0fc:	00158593          	addi	a1,a1,1
8000a100:	fe0616e3          	bnez	a2,8000a0ec <memcpy+0xa0>
8000a104:	00c12083          	lw	ra,12(sp)
8000a108:	00812403          	lw	s0,8(sp)
8000a10c:	01010113          	addi	sp,sp,16
8000a110:	00008067          	ret
8000a114:	fad77ce3          	bgeu	a4,a3,8000a0cc <memcpy+0x80>
8000a118:	00359893          	slli	a7,a1,0x3
8000a11c:	0188f813          	andi	a6,a7,24
8000a120:	ffc5f293          	andi	t0,a1,-4
8000a124:	0002a303          	lw	t1,0(t0)
8000a128:	411008b3          	neg	a7,a7
8000a12c:	0188f893          	andi	a7,a7,24
8000a130:	00428293          	addi	t0,t0,4
8000a134:	0002a383          	lw	t2,0(t0)
8000a138:	01035333          	srl	t1,t1,a6
8000a13c:	01139e33          	sll	t3,t2,a7
8000a140:	006e6333          	or	t1,t3,t1
8000a144:	00672023          	sw	t1,0(a4)
8000a148:	00470713          	addi	a4,a4,4
8000a14c:	00428293          	addi	t0,t0,4
8000a150:	00038313          	mv	t1,t2
8000a154:	fed760e3          	bltu	a4,a3,8000a134 <memcpy+0xe8>
8000a158:	f75ff06f          	j	8000a0cc <memcpy+0x80>

8000a15c <__addsf3>:
8000a15c:	ff010113          	addi	sp,sp,-16
8000a160:	00112623          	sw	ra,12(sp)
8000a164:	00812423          	sw	s0,8(sp)
8000a168:	01010413          	addi	s0,sp,16
8000a16c:	00c12083          	lw	ra,12(sp)
8000a170:	00812403          	lw	s0,8(sp)
8000a174:	01010113          	addi	sp,sp,16
8000a178:	00000317          	auipc	t1,0x0
8000a17c:	00830067          	jr	8(t1) # 8000a180 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E>

8000a180 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E>:
8000a180:	ff010113          	addi	sp,sp,-16
8000a184:	00112623          	sw	ra,12(sp)
8000a188:	00812423          	sw	s0,8(sp)
8000a18c:	01010413          	addi	s0,sp,16
8000a190:	80000637          	lui	a2,0x80000
8000a194:	fff60713          	addi	a4,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000a198:	00e576b3          	and	a3,a0,a4
8000a19c:	80800637          	lui	a2,0x80800
8000a1a0:	00c68833          	add	a6,a3,a2
8000a1a4:	00160793          	addi	a5,a2,1 # 80800001 <KALLOC_BUFFER+0x7f1001>
8000a1a8:	00e5f733          	and	a4,a1,a4
8000a1ac:	02f86263          	bltu	a6,a5,8000a1d0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x50>
8000a1b0:	00c70633          	add	a2,a4,a2
8000a1b4:	00f66e63          	bltu	a2,a5,8000a1d0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x50>
8000a1b8:	00800637          	lui	a2,0x800
8000a1bc:	fff60613          	addi	a2,a2,-1 # 7fffff <.Lline_table_start2+0x7fec51>
8000a1c0:	02e6e263          	bltu	a3,a4,8000a1e4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x64>
8000a1c4:	00058893          	mv	a7,a1
8000a1c8:	00050713          	mv	a4,a0
8000a1cc:	0200006f          	j	8000a1ec <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x6c>
8000a1d0:	7f800637          	lui	a2,0x7f800
8000a1d4:	02d67e63          	bgeu	a2,a3,8000a210 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x90>
8000a1d8:	00400637          	lui	a2,0x400
8000a1dc:	00c6e633          	or	a2,a3,a2
8000a1e0:	3300006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a1e4:	00050893          	mv	a7,a0
8000a1e8:	00058713          	mv	a4,a1
8000a1ec:	00171693          	slli	a3,a4,0x1
8000a1f0:	0186d693          	srli	a3,a3,0x18
8000a1f4:	00189793          	slli	a5,a7,0x1
8000a1f8:	0187d813          	srli	a6,a5,0x18
8000a1fc:	00c777b3          	and	a5,a4,a2
8000a200:	02068063          	beqz	a3,8000a220 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0xa0>
8000a204:	00c8f8b3          	and	a7,a7,a2
8000a208:	16081a63          	bnez	a6,8000a37c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1fc>
8000a20c:	0d40006f          	j	8000a2e0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x160>
8000a210:	08e67c63          	bgeu	a2,a4,8000a2a8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x128>
8000a214:	00400637          	lui	a2,0x400
8000a218:	00c76633          	or	a2,a4,a2
8000a21c:	2f40006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a220:	0a078263          	beqz	a5,8000a2c4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x144>
8000a224:	0017d693          	srli	a3,a5,0x1
8000a228:	00d7e6b3          	or	a3,a5,a3
8000a22c:	0026d293          	srli	t0,a3,0x2
8000a230:	0056e6b3          	or	a3,a3,t0
8000a234:	0046d293          	srli	t0,a3,0x4
8000a238:	0056e6b3          	or	a3,a3,t0
8000a23c:	0086d293          	srli	t0,a3,0x8
8000a240:	0056e6b3          	or	a3,a3,t0
8000a244:	0106d293          	srli	t0,a3,0x10
8000a248:	0056e6b3          	or	a3,a3,t0
8000a24c:	fff6c693          	not	a3,a3
8000a250:	0016d293          	srli	t0,a3,0x1
8000a254:	55555337          	lui	t1,0x55555
8000a258:	55530313          	addi	t1,t1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a25c:	0062f2b3          	and	t0,t0,t1
8000a260:	405686b3          	sub	a3,a3,t0
8000a264:	333332b7          	lui	t0,0x33333
8000a268:	33328293          	addi	t0,t0,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a26c:	0056f333          	and	t1,a3,t0
8000a270:	0026d693          	srli	a3,a3,0x2
8000a274:	0056f6b3          	and	a3,a3,t0
8000a278:	00d306b3          	add	a3,t1,a3
8000a27c:	0046d293          	srli	t0,a3,0x4
8000a280:	005686b3          	add	a3,a3,t0
8000a284:	0f0f12b7          	lui	t0,0xf0f1
8000a288:	f0f28293          	addi	t0,t0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a28c:	0056f6b3          	and	a3,a3,t0
8000a290:	00869293          	slli	t0,a3,0x8
8000a294:	005686b3          	add	a3,a3,t0
8000a298:	01069293          	slli	t0,a3,0x10
8000a29c:	005686b3          	add	a3,a3,t0
8000a2a0:	0186d693          	srli	a3,a3,0x18
8000a2a4:	0240006f          	j	8000a2c8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x148>
8000a2a8:	26c69063          	bne	a3,a2,8000a508 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x388>
8000a2ac:	00a5c5b3          	xor	a1,a1,a0
8000a2b0:	80000637          	lui	a2,0x80000
8000a2b4:	00c59463          	bne	a1,a2,8000a2bc <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x13c>
8000a2b8:	7fc00537          	lui	a0,0x7fc00
8000a2bc:	00050613          	mv	a2,a0
8000a2c0:	2500006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a2c4:	02000693          	li	a3,32
8000a2c8:	01868293          	addi	t0,a3,24
8000a2cc:	00900313          	li	t1,9
8000a2d0:	40d306b3          	sub	a3,t1,a3
8000a2d4:	005797b3          	sll	a5,a5,t0
8000a2d8:	00c8f8b3          	and	a7,a7,a2
8000a2dc:	0a081063          	bnez	a6,8000a37c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1fc>
8000a2e0:	08088463          	beqz	a7,8000a368 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1e8>
8000a2e4:	0018d813          	srli	a6,a7,0x1
8000a2e8:	0108e833          	or	a6,a7,a6
8000a2ec:	00285293          	srli	t0,a6,0x2
8000a2f0:	00586833          	or	a6,a6,t0
8000a2f4:	00485293          	srli	t0,a6,0x4
8000a2f8:	00586833          	or	a6,a6,t0
8000a2fc:	00885293          	srli	t0,a6,0x8
8000a300:	00586833          	or	a6,a6,t0
8000a304:	01085293          	srli	t0,a6,0x10
8000a308:	00586833          	or	a6,a6,t0
8000a30c:	fff84813          	not	a6,a6
8000a310:	00185293          	srli	t0,a6,0x1
8000a314:	55555337          	lui	t1,0x55555
8000a318:	55530313          	addi	t1,t1,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a31c:	0062f2b3          	and	t0,t0,t1
8000a320:	40580833          	sub	a6,a6,t0
8000a324:	333332b7          	lui	t0,0x33333
8000a328:	33328293          	addi	t0,t0,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a32c:	00587333          	and	t1,a6,t0
8000a330:	00285813          	srli	a6,a6,0x2
8000a334:	00587833          	and	a6,a6,t0
8000a338:	01030833          	add	a6,t1,a6
8000a33c:	00485293          	srli	t0,a6,0x4
8000a340:	00580833          	add	a6,a6,t0
8000a344:	0f0f12b7          	lui	t0,0xf0f1
8000a348:	f0f28293          	addi	t0,t0,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a34c:	00587833          	and	a6,a6,t0
8000a350:	00881293          	slli	t0,a6,0x8
8000a354:	00580833          	add	a6,a6,t0
8000a358:	01081293          	slli	t0,a6,0x10
8000a35c:	00580833          	add	a6,a6,t0
8000a360:	01885813          	srli	a6,a6,0x18
8000a364:	0080006f          	j	8000a36c <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x1ec>
8000a368:	02000813          	li	a6,32
8000a36c:	01880293          	addi	t0,a6,24
8000a370:	00900313          	li	t1,9
8000a374:	41030833          	sub	a6,t1,a6
8000a378:	005898b3          	sll	a7,a7,t0
8000a37c:	800002b7          	lui	t0,0x80000
8000a380:	00a5c5b3          	xor	a1,a1,a0
8000a384:	00379793          	slli	a5,a5,0x3
8000a388:	04000337          	lui	t1,0x4000
8000a38c:	00389893          	slli	a7,a7,0x3
8000a390:	0068e533          	or	a0,a7,t1
8000a394:	01069663          	bne	a3,a6,8000a3a0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x220>
8000a398:	00050813          	mv	a6,a0
8000a39c:	0280006f          	j	8000a3c4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x244>
8000a3a0:	410688b3          	sub	a7,a3,a6
8000a3a4:	02000393          	li	t2,32
8000a3a8:	00100813          	li	a6,1
8000a3ac:	0078fc63          	bgeu	a7,t2,8000a3c4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x244>
8000a3b0:	41100833          	neg	a6,a7
8000a3b4:	01051833          	sll	a6,a0,a6
8000a3b8:	01003833          	snez	a6,a6
8000a3bc:	01155533          	srl	a0,a0,a7
8000a3c0:	01056833          	or	a6,a0,a6
8000a3c4:	00577533          	and	a0,a4,t0
8000a3c8:	0067e733          	or	a4,a5,t1
8000a3cc:	0205c263          	bltz	a1,8000a3f0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x270>
8000a3d0:	00e805b3          	add	a1,a6,a4
8000a3d4:	00459713          	slli	a4,a1,0x4
8000a3d8:	0a075c63          	bgez	a4,8000a490 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a3dc:	00187713          	andi	a4,a6,1
8000a3e0:	0015d593          	srli	a1,a1,0x1
8000a3e4:	00e5e5b3          	or	a1,a1,a4
8000a3e8:	00168693          	addi	a3,a3,1
8000a3ec:	0a40006f          	j	8000a490 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a3f0:	410705b3          	sub	a1,a4,a6
8000a3f4:	10058663          	beqz	a1,8000a500 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x380>
8000a3f8:	01a5d713          	srli	a4,a1,0x1a
8000a3fc:	08071a63          	bnez	a4,8000a490 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x310>
8000a400:	0015d713          	srli	a4,a1,0x1
8000a404:	00e5e733          	or	a4,a1,a4
8000a408:	00275793          	srli	a5,a4,0x2
8000a40c:	00f76733          	or	a4,a4,a5
8000a410:	00475793          	srli	a5,a4,0x4
8000a414:	00f76733          	or	a4,a4,a5
8000a418:	00875793          	srli	a5,a4,0x8
8000a41c:	00f76733          	or	a4,a4,a5
8000a420:	01075793          	srli	a5,a4,0x10
8000a424:	00f76733          	or	a4,a4,a5
8000a428:	fff74713          	not	a4,a4
8000a42c:	00175793          	srli	a5,a4,0x1
8000a430:	55555837          	lui	a6,0x55555
8000a434:	55580813          	addi	a6,a6,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000a438:	0107f7b3          	and	a5,a5,a6
8000a43c:	40f70733          	sub	a4,a4,a5
8000a440:	333337b7          	lui	a5,0x33333
8000a444:	33378793          	addi	a5,a5,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000a448:	00f77833          	and	a6,a4,a5
8000a44c:	00275713          	srli	a4,a4,0x2
8000a450:	00f77733          	and	a4,a4,a5
8000a454:	00e80733          	add	a4,a6,a4
8000a458:	00475793          	srli	a5,a4,0x4
8000a45c:	00f70733          	add	a4,a4,a5
8000a460:	0f0f17b7          	lui	a5,0xf0f1
8000a464:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000a468:	00f77733          	and	a4,a4,a5
8000a46c:	00871793          	slli	a5,a4,0x8
8000a470:	00f70733          	add	a4,a4,a5
8000a474:	01071793          	slli	a5,a4,0x10
8000a478:	00f70733          	add	a4,a4,a5
8000a47c:	01875713          	srli	a4,a4,0x18
8000a480:	ffb70713          	addi	a4,a4,-5
8000a484:	00e595b3          	sll	a1,a1,a4
8000a488:	40e686b3          	sub	a3,a3,a4
8000a48c:	0180006f          	j	8000a4a4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x324>
8000a490:	0fe00713          	li	a4,254
8000a494:	00d75863          	bge	a4,a3,8000a4a4 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x324>
8000a498:	7f800637          	lui	a2,0x7f800
8000a49c:	00c56633          	or	a2,a0,a2
8000a4a0:	0700006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a4a4:	02d04263          	bgtz	a3,8000a4c8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x348>
8000a4a8:	00100713          	li	a4,1
8000a4ac:	40d70733          	sub	a4,a4,a3
8000a4b0:	fff68693          	addi	a3,a3,-1
8000a4b4:	00d596b3          	sll	a3,a1,a3
8000a4b8:	00d036b3          	snez	a3,a3
8000a4bc:	00e5d5b3          	srl	a1,a1,a4
8000a4c0:	00d5e5b3          	or	a1,a1,a3
8000a4c4:	00000693          	li	a3,0
8000a4c8:	0075f713          	andi	a4,a1,7
8000a4cc:	0035d593          	srli	a1,a1,0x3
8000a4d0:	00c5f633          	and	a2,a1,a2
8000a4d4:	01769693          	slli	a3,a3,0x17
8000a4d8:	00a6e6b3          	or	a3,a3,a0
8000a4dc:	00400513          	li	a0,4
8000a4e0:	00d66633          	or	a2,a2,a3
8000a4e4:	00e57663          	bgeu	a0,a4,8000a4f0 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x370>
8000a4e8:	00160613          	addi	a2,a2,1 # 7f800001 <.Lline_table_start2+0x7f7fec53>
8000a4ec:	0240006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a4f0:	02a71063          	bne	a4,a0,8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a4f4:	0015f593          	andi	a1,a1,1
8000a4f8:	00b60633          	add	a2,a2,a1
8000a4fc:	0140006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a500:	00000613          	li	a2,0
8000a504:	00c0006f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a508:	00c71e63          	bne	a4,a2,8000a524 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x3a4>
8000a50c:	00058613          	mv	a2,a1
8000a510:	00060513          	mv	a0,a2
8000a514:	00c12083          	lw	ra,12(sp)
8000a518:	00812403          	lw	s0,8(sp)
8000a51c:	01010113          	addi	sp,sp,16
8000a520:	00008067          	ret
8000a524:	00068863          	beqz	a3,8000a534 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x3b4>
8000a528:	00050613          	mv	a2,a0
8000a52c:	c80716e3          	bnez	a4,8000a1b8 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x38>
8000a530:	fe1ff06f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a534:	00058613          	mv	a2,a1
8000a538:	fc071ce3          	bnez	a4,8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>
8000a53c:	00a5f633          	and	a2,a1,a0
8000a540:	fd1ff06f          	j	8000a510 <_ZN17compiler_builtins5float3add8__addsf317hae1601621f3c79e3E+0x390>

8000a544 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE>:
8000a544:	fd010113          	addi	sp,sp,-48
8000a548:	02112623          	sw	ra,44(sp)
8000a54c:	02812423          	sw	s0,40(sp)
8000a550:	02912223          	sw	s1,36(sp)
8000a554:	03212023          	sw	s2,32(sp)
8000a558:	01312e23          	sw	s3,28(sp)
8000a55c:	01412c23          	sw	s4,24(sp)
8000a560:	01512a23          	sw	s5,20(sp)
8000a564:	01612823          	sw	s6,16(sp)
8000a568:	01712623          	sw	s7,12(sp)
8000a56c:	03010413          	addi	s0,sp,48
8000a570:	00068993          	mv	s3,a3
8000a574:	00058913          	mv	s2,a1
8000a578:	00050493          	mv	s1,a0
8000a57c:	0a068e63          	beqz	a3,8000a638 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xf4>
8000a580:	0a071c63          	bnez	a4,8000a638 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xf4>
8000a584:	1e060263          	beqz	a2,8000a768 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x224>
8000a588:	21367863          	bgeu	a2,s3,8000a798 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x254>
8000a58c:	0109d693          	srli	a3,s3,0x10
8000a590:	00c6b533          	sltu	a0,a3,a2
8000a594:	00154593          	xori	a1,a0,1
8000a598:	00098513          	mv	a0,s3
8000a59c:	00c6e463          	bltu	a3,a2,8000a5a4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x60>
8000a5a0:	00068513          	mv	a0,a3
8000a5a4:	00459593          	slli	a1,a1,0x4
8000a5a8:	00855793          	srli	a5,a0,0x8
8000a5ac:	00c7b6b3          	sltu	a3,a5,a2
8000a5b0:	0016c693          	xori	a3,a3,1
8000a5b4:	00c7e463          	bltu	a5,a2,8000a5bc <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x78>
8000a5b8:	00078513          	mv	a0,a5
8000a5bc:	00369693          	slli	a3,a3,0x3
8000a5c0:	00b6e5b3          	or	a1,a3,a1
8000a5c4:	00455793          	srli	a5,a0,0x4
8000a5c8:	00c7b6b3          	sltu	a3,a5,a2
8000a5cc:	0016c693          	xori	a3,a3,1
8000a5d0:	00c7e463          	bltu	a5,a2,8000a5d8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x94>
8000a5d4:	00078513          	mv	a0,a5
8000a5d8:	00269693          	slli	a3,a3,0x2
8000a5dc:	00d5e5b3          	or	a1,a1,a3
8000a5e0:	00255793          	srli	a5,a0,0x2
8000a5e4:	00c7b6b3          	sltu	a3,a5,a2
8000a5e8:	0016c693          	xori	a3,a3,1
8000a5ec:	00c7e463          	bltu	a5,a2,8000a5f4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xb0>
8000a5f0:	00078513          	mv	a0,a5
8000a5f4:	00169693          	slli	a3,a3,0x1
8000a5f8:	00155513          	srli	a0,a0,0x1
8000a5fc:	00c53533          	sltu	a0,a0,a2
8000a600:	00154513          	xori	a0,a0,1
8000a604:	00a6e533          	or	a0,a3,a0
8000a608:	00a5e533          	or	a0,a1,a0
8000a60c:	1c051a63          	bnez	a0,8000a7e0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x29c>
8000a610:	01f00593          	li	a1,31
8000a614:	fe058793          	addi	a5,a1,-32
8000a618:	00b996b3          	sll	a3,s3,a1
8000a61c:	1c07dc63          	bgez	a5,8000a7f4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2b0>
8000a620:	00b71533          	sll	a0,a4,a1
8000a624:	fff5c713          	not	a4,a1
8000a628:	0019d813          	srli	a6,s3,0x1
8000a62c:	00e85733          	srl	a4,a6,a4
8000a630:	00e56533          	or	a0,a0,a4
8000a634:	1c40006f          	j	8000a7f8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2b4>
8000a638:	00e60a63          	beq	a2,a4,8000a64c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x108>
8000a63c:	00e63533          	sltu	a0,a2,a4
8000a640:	00000a93          	li	s5,0
8000a644:	00050a63          	beqz	a0,8000a658 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x114>
8000a648:	10c0006f          	j	8000a754 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a64c:	01393533          	sltu	a0,s2,s3
8000a650:	00000a93          	li	s5,0
8000a654:	10051063          	bnez	a0,8000a754 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a658:	0e060e63          	beqz	a2,8000a754 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x210>
8000a65c:	01065693          	srli	a3,a2,0x10
8000a660:	00e6b533          	sltu	a0,a3,a4
8000a664:	00154593          	xori	a1,a0,1
8000a668:	00060513          	mv	a0,a2
8000a66c:	00e6e463          	bltu	a3,a4,8000a674 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x130>
8000a670:	00068513          	mv	a0,a3
8000a674:	00459593          	slli	a1,a1,0x4
8000a678:	00855793          	srli	a5,a0,0x8
8000a67c:	00e7b6b3          	sltu	a3,a5,a4
8000a680:	0016c693          	xori	a3,a3,1
8000a684:	00e7e463          	bltu	a5,a4,8000a68c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x148>
8000a688:	00078513          	mv	a0,a5
8000a68c:	00369693          	slli	a3,a3,0x3
8000a690:	00b6e5b3          	or	a1,a3,a1
8000a694:	00455793          	srli	a5,a0,0x4
8000a698:	00e7b6b3          	sltu	a3,a5,a4
8000a69c:	0016c693          	xori	a3,a3,1
8000a6a0:	00e7e463          	bltu	a5,a4,8000a6a8 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x164>
8000a6a4:	00078513          	mv	a0,a5
8000a6a8:	00269693          	slli	a3,a3,0x2
8000a6ac:	00d5e5b3          	or	a1,a1,a3
8000a6b0:	00255793          	srli	a5,a0,0x2
8000a6b4:	00e7b6b3          	sltu	a3,a5,a4
8000a6b8:	0016c693          	xori	a3,a3,1
8000a6bc:	00e7e463          	bltu	a5,a4,8000a6c4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x180>
8000a6c0:	00078513          	mv	a0,a5
8000a6c4:	00000a93          	li	s5,0
8000a6c8:	00169693          	slli	a3,a3,0x1
8000a6cc:	00155513          	srli	a0,a0,0x1
8000a6d0:	00e53533          	sltu	a0,a0,a4
8000a6d4:	00154513          	xori	a0,a0,1
8000a6d8:	00a6e533          	or	a0,a3,a0
8000a6dc:	00a5e5b3          	or	a1,a1,a0
8000a6e0:	01f5c513          	xori	a0,a1,31
8000a6e4:	0019d693          	srli	a3,s3,0x1
8000a6e8:	00a6d533          	srl	a0,a3,a0
8000a6ec:	00b716b3          	sll	a3,a4,a1
8000a6f0:	00a6e533          	or	a0,a3,a0
8000a6f4:	00100693          	li	a3,1
8000a6f8:	00b696b3          	sll	a3,a3,a1
8000a6fc:	00b997b3          	sll	a5,s3,a1
8000a700:	0180006f          	j	8000a718 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1d4>
8000a704:	0017d793          	srli	a5,a5,0x1
8000a708:	01f51593          	slli	a1,a0,0x1f
8000a70c:	00b7e7b3          	or	a5,a5,a1
8000a710:	00155513          	srli	a0,a0,0x1
8000a714:	0016d693          	srli	a3,a3,0x1
8000a718:	00f935b3          	sltu	a1,s2,a5
8000a71c:	40a60833          	sub	a6,a2,a0
8000a720:	40b805b3          	sub	a1,a6,a1
8000a724:	fe05c0e3          	bltz	a1,8000a704 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1c0>
8000a728:	40f90933          	sub	s2,s2,a5
8000a72c:	00e58a63          	beq	a1,a4,8000a740 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1fc>
8000a730:	00e5b633          	sltu	a2,a1,a4
8000a734:	0156eab3          	or	s5,a3,s5
8000a738:	00060a63          	beqz	a2,8000a74c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x208>
8000a73c:	0240006f          	j	8000a760 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x21c>
8000a740:	01393633          	sltu	a2,s2,s3
8000a744:	0156eab3          	or	s5,a3,s5
8000a748:	00061c63          	bnez	a2,8000a760 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x21c>
8000a74c:	00058613          	mv	a2,a1
8000a750:	fb5ff06f          	j	8000a704 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x1c0>
8000a754:	000a8a13          	mv	s4,s5
8000a758:	00060593          	mv	a1,a2
8000a75c:	11c0006f          	j	8000a878 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a760:	00000a13          	li	s4,0
8000a764:	1140006f          	j	8000a878 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a768:	00090513          	mv	a0,s2
8000a76c:	00098593          	mv	a1,s3
8000a770:	00000097          	auipc	ra,0x0
8000a774:	3cc080e7          	jalr	972(ra) # 8000ab3c <__udivsi3>
8000a778:	00050a93          	mv	s5,a0
8000a77c:	00098593          	mv	a1,s3
8000a780:	fffff097          	auipc	ra,0xfffff
8000a784:	7fc080e7          	jalr	2044(ra) # 80009f7c <__mulsi3>
8000a788:	00000a13          	li	s4,0
8000a78c:	00000593          	li	a1,0
8000a790:	40a90933          	sub	s2,s2,a0
8000a794:	0e40006f          	j	8000a878 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a798:	11361e63          	bne	a2,s3,8000a8b4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x370>
8000a79c:	00090513          	mv	a0,s2
8000a7a0:	00060593          	mv	a1,a2
8000a7a4:	00060993          	mv	s3,a2
8000a7a8:	00000097          	auipc	ra,0x0
8000a7ac:	394080e7          	jalr	916(ra) # 8000ab3c <__udivsi3>
8000a7b0:	00050a13          	mv	s4,a0
8000a7b4:	00098593          	mv	a1,s3
8000a7b8:	fffff097          	auipc	ra,0xfffff
8000a7bc:	7c4080e7          	jalr	1988(ra) # 80009f7c <__mulsi3>
8000a7c0:	00000593          	li	a1,0
8000a7c4:	40a90933          	sub	s2,s2,a0
8000a7c8:	01403533          	snez	a0,s4
8000a7cc:	fffa0a13          	addi	s4,s4,-1
8000a7d0:	001a0a93          	addi	s5,s4,1
8000a7d4:	001aba13          	seqz	s4,s5
8000a7d8:	01450a33          	add	s4,a0,s4
8000a7dc:	09c0006f          	j	8000a878 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a7e0:	02000593          	li	a1,32
8000a7e4:	40a585b3          	sub	a1,a1,a0
8000a7e8:	fe058793          	addi	a5,a1,-32
8000a7ec:	00b996b3          	sll	a3,s3,a1
8000a7f0:	e207c8e3          	bltz	a5,8000a620 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0xdc>
8000a7f4:	00068513          	mv	a0,a3
8000a7f8:	00000b13          	li	s6,0
8000a7fc:	41f7d793          	srai	a5,a5,0x1f
8000a800:	00d7f6b3          	and	a3,a5,a3
8000a804:	00100713          	li	a4,1
8000a808:	00b715b3          	sll	a1,a4,a1
8000a80c:	0180006f          	j	8000a824 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2e0>
8000a810:	0016d693          	srli	a3,a3,0x1
8000a814:	01f51713          	slli	a4,a0,0x1f
8000a818:	00e6e6b3          	or	a3,a3,a4
8000a81c:	00155513          	srli	a0,a0,0x1
8000a820:	0015d593          	srli	a1,a1,0x1
8000a824:	00d93733          	sltu	a4,s2,a3
8000a828:	40a607b3          	sub	a5,a2,a0
8000a82c:	40e78733          	sub	a4,a5,a4
8000a830:	fe0740e3          	bltz	a4,8000a810 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2cc>
8000a834:	40d90933          	sub	s2,s2,a3
8000a838:	0165eb33          	or	s6,a1,s6
8000a83c:	00070663          	beqz	a4,8000a848 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x304>
8000a840:	00070613          	mv	a2,a4
8000a844:	fcdff06f          	j	8000a810 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x2cc>
8000a848:	00090513          	mv	a0,s2
8000a84c:	00098593          	mv	a1,s3
8000a850:	00000097          	auipc	ra,0x0
8000a854:	2ec080e7          	jalr	748(ra) # 8000ab3c <__udivsi3>
8000a858:	00050a93          	mv	s5,a0
8000a85c:	00098593          	mv	a1,s3
8000a860:	fffff097          	auipc	ra,0xfffff
8000a864:	71c080e7          	jalr	1820(ra) # 80009f7c <__mulsi3>
8000a868:	00000a13          	li	s4,0
8000a86c:	00000593          	li	a1,0
8000a870:	40a90933          	sub	s2,s2,a0
8000a874:	016aeab3          	or	s5,s5,s6
8000a878:	0154a023          	sw	s5,0(s1)
8000a87c:	0144a223          	sw	s4,4(s1)
8000a880:	0124a423          	sw	s2,8(s1)
8000a884:	00b4a623          	sw	a1,12(s1)
8000a888:	02c12083          	lw	ra,44(sp)
8000a88c:	02812403          	lw	s0,40(sp)
8000a890:	02412483          	lw	s1,36(sp)
8000a894:	02012903          	lw	s2,32(sp)
8000a898:	01c12983          	lw	s3,28(sp)
8000a89c:	01812a03          	lw	s4,24(sp)
8000a8a0:	01412a83          	lw	s5,20(sp)
8000a8a4:	01012b03          	lw	s6,16(sp)
8000a8a8:	00c12b83          	lw	s7,12(sp)
8000a8ac:	03010113          	addi	sp,sp,48
8000a8b0:	00008067          	ret
8000a8b4:	00070a93          	mv	s5,a4
8000a8b8:	0109db13          	srli	s6,s3,0x10
8000a8bc:	00060513          	mv	a0,a2
8000a8c0:	00098593          	mv	a1,s3
8000a8c4:	00060b93          	mv	s7,a2
8000a8c8:	00000097          	auipc	ra,0x0
8000a8cc:	274080e7          	jalr	628(ra) # 8000ab3c <__udivsi3>
8000a8d0:	00050a13          	mv	s4,a0
8000a8d4:	00098593          	mv	a1,s3
8000a8d8:	fffff097          	auipc	ra,0xfffff
8000a8dc:	6a4080e7          	jalr	1700(ra) # 80009f7c <__mulsi3>
8000a8e0:	40ab85b3          	sub	a1,s7,a0
8000a8e4:	060b1e63          	bnez	s6,8000a960 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x41c>
8000a8e8:	01095b13          	srli	s6,s2,0x10
8000a8ec:	01059593          	slli	a1,a1,0x10
8000a8f0:	0165e533          	or	a0,a1,s6
8000a8f4:	00098593          	mv	a1,s3
8000a8f8:	00000097          	auipc	ra,0x0
8000a8fc:	244080e7          	jalr	580(ra) # 8000ab3c <__udivsi3>
8000a900:	00050a93          	mv	s5,a0
8000a904:	01091913          	slli	s2,s2,0x10
8000a908:	01095913          	srli	s2,s2,0x10
8000a90c:	00098593          	mv	a1,s3
8000a910:	fffff097          	auipc	ra,0xfffff
8000a914:	66c080e7          	jalr	1644(ra) # 80009f7c <__mulsi3>
8000a918:	40ab0533          	sub	a0,s6,a0
8000a91c:	01051513          	slli	a0,a0,0x10
8000a920:	01256933          	or	s2,a0,s2
8000a924:	00090513          	mv	a0,s2
8000a928:	00098593          	mv	a1,s3
8000a92c:	00000097          	auipc	ra,0x0
8000a930:	210080e7          	jalr	528(ra) # 8000ab3c <__udivsi3>
8000a934:	00050b13          	mv	s6,a0
8000a938:	00098593          	mv	a1,s3
8000a93c:	fffff097          	auipc	ra,0xfffff
8000a940:	640080e7          	jalr	1600(ra) # 80009f7c <__mulsi3>
8000a944:	00000593          	li	a1,0
8000a948:	40a90933          	sub	s2,s2,a0
8000a94c:	010a9513          	slli	a0,s5,0x10
8000a950:	010ad613          	srli	a2,s5,0x10
8000a954:	01466a33          	or	s4,a2,s4
8000a958:	01656ab3          	or	s5,a0,s6
8000a95c:	f1dff06f          	j	8000a878 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a960:	000a8513          	mv	a0,s5
8000a964:	01558663          	beq	a1,s5,8000a970 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x42c>
8000a968:	00a5b633          	sltu	a2,a1,a0
8000a96c:	0080006f          	j	8000a974 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x430>
8000a970:	01393633          	sltu	a2,s2,s3
8000a974:	00060663          	beqz	a2,8000a980 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x43c>
8000a978:	00000a93          	li	s5,0
8000a97c:	efdff06f          	j	8000a878 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x334>
8000a980:	00000b13          	li	s6,0
8000a984:	0019d613          	srli	a2,s3,0x1
8000a988:	01f51513          	slli	a0,a0,0x1f
8000a98c:	00c56533          	or	a0,a0,a2
8000a990:	01f99693          	slli	a3,s3,0x1f
8000a994:	80000637          	lui	a2,0x80000
8000a998:	0180006f          	j	8000a9b0 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x46c>
8000a99c:	0016d693          	srli	a3,a3,0x1
8000a9a0:	01f51713          	slli	a4,a0,0x1f
8000a9a4:	00e6e6b3          	or	a3,a3,a4
8000a9a8:	00155513          	srli	a0,a0,0x1
8000a9ac:	00165613          	srli	a2,a2,0x1
8000a9b0:	00d93733          	sltu	a4,s2,a3
8000a9b4:	40a587b3          	sub	a5,a1,a0
8000a9b8:	40e78733          	sub	a4,a5,a4
8000a9bc:	fe0740e3          	bltz	a4,8000a99c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x458>
8000a9c0:	40d90933          	sub	s2,s2,a3
8000a9c4:	01666b33          	or	s6,a2,s6
8000a9c8:	00070663          	beqz	a4,8000a9d4 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x490>
8000a9cc:	00070593          	mv	a1,a4
8000a9d0:	fcdff06f          	j	8000a99c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x458>
8000a9d4:	00090513          	mv	a0,s2
8000a9d8:	00098593          	mv	a1,s3
8000a9dc:	00000097          	auipc	ra,0x0
8000a9e0:	160080e7          	jalr	352(ra) # 8000ab3c <__udivsi3>
8000a9e4:	00050a93          	mv	s5,a0
8000a9e8:	00098593          	mv	a1,s3
8000a9ec:	fffff097          	auipc	ra,0xfffff
8000a9f0:	590080e7          	jalr	1424(ra) # 80009f7c <__mulsi3>
8000a9f4:	e79ff06f          	j	8000a86c <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE+0x328>

8000a9f8 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>:
8000a9f8:	ff010113          	addi	sp,sp,-16
8000a9fc:	00112623          	sw	ra,12(sp)
8000aa00:	00812423          	sw	s0,8(sp)
8000aa04:	01010413          	addi	s0,sp,16
8000aa08:	00050613          	mv	a2,a0
8000aa0c:	00b57663          	bgeu	a0,a1,8000aa18 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x20>
8000aa10:	00000513          	li	a0,0
8000aa14:	1140006f          	j	8000ab28 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000aa18:	01065713          	srli	a4,a2,0x10
8000aa1c:	00b73533          	sltu	a0,a4,a1
8000aa20:	00154693          	xori	a3,a0,1
8000aa24:	00060513          	mv	a0,a2
8000aa28:	00b76463          	bltu	a4,a1,8000aa30 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x38>
8000aa2c:	00070513          	mv	a0,a4
8000aa30:	00469693          	slli	a3,a3,0x4
8000aa34:	00855793          	srli	a5,a0,0x8
8000aa38:	00b7b733          	sltu	a4,a5,a1
8000aa3c:	00174713          	xori	a4,a4,1
8000aa40:	00b7e463          	bltu	a5,a1,8000aa48 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x50>
8000aa44:	00078513          	mv	a0,a5
8000aa48:	00371713          	slli	a4,a4,0x3
8000aa4c:	00d766b3          	or	a3,a4,a3
8000aa50:	00455793          	srli	a5,a0,0x4
8000aa54:	00b7b733          	sltu	a4,a5,a1
8000aa58:	00174713          	xori	a4,a4,1
8000aa5c:	00b7e463          	bltu	a5,a1,8000aa64 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x6c>
8000aa60:	00078513          	mv	a0,a5
8000aa64:	00271713          	slli	a4,a4,0x2
8000aa68:	00e6e6b3          	or	a3,a3,a4
8000aa6c:	00255793          	srli	a5,a0,0x2
8000aa70:	00b7b733          	sltu	a4,a5,a1
8000aa74:	00174713          	xori	a4,a4,1
8000aa78:	00b7e463          	bltu	a5,a1,8000aa80 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x88>
8000aa7c:	00078513          	mv	a0,a5
8000aa80:	00171713          	slli	a4,a4,0x1
8000aa84:	00155513          	srli	a0,a0,0x1
8000aa88:	00b53533          	sltu	a0,a0,a1
8000aa8c:	00154513          	xori	a0,a0,1
8000aa90:	00a76533          	or	a0,a4,a0
8000aa94:	00a6e6b3          	or	a3,a3,a0
8000aa98:	00d59733          	sll	a4,a1,a3
8000aa9c:	40e60633          	sub	a2,a2,a4
8000aaa0:	00100513          	li	a0,1
8000aaa4:	00d51533          	sll	a0,a0,a3
8000aaa8:	08b66063          	bltu	a2,a1,8000ab28 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000aaac:	00074663          	bltz	a4,8000aab8 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xc0>
8000aab0:	00050793          	mv	a5,a0
8000aab4:	0380006f          	j	8000aaec <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xf4>
8000aab8:	00175713          	srli	a4,a4,0x1
8000aabc:	fff68693          	addi	a3,a3,-1
8000aac0:	00100793          	li	a5,1
8000aac4:	00d797b3          	sll	a5,a5,a3
8000aac8:	40e60833          	sub	a6,a2,a4
8000aacc:	00082893          	slti	a7,a6,0
8000aad0:	fff88893          	addi	a7,a7,-1
8000aad4:	00f8f8b3          	and	a7,a7,a5
8000aad8:	00085463          	bgez	a6,8000aae0 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0xe8>
8000aadc:	00060813          	mv	a6,a2
8000aae0:	00a8e533          	or	a0,a7,a0
8000aae4:	00080613          	mv	a2,a6
8000aae8:	04b86063          	bltu	a6,a1,8000ab28 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x130>
8000aaec:	fff78793          	addi	a5,a5,-1
8000aaf0:	02068663          	beqz	a3,8000ab1c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x124>
8000aaf4:	00068593          	mv	a1,a3
8000aaf8:	00c0006f          	j	8000ab04 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x10c>
8000aafc:	fff58593          	addi	a1,a1,-1
8000ab00:	00058e63          	beqz	a1,8000ab1c <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x124>
8000ab04:	00161613          	slli	a2,a2,0x1
8000ab08:	40e60833          	sub	a6,a2,a4
8000ab0c:	00180813          	addi	a6,a6,1
8000ab10:	fe0846e3          	bltz	a6,8000aafc <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x104>
8000ab14:	00080613          	mv	a2,a6
8000ab18:	fe5ff06f          	j	8000aafc <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE+0x104>
8000ab1c:	00f677b3          	and	a5,a2,a5
8000ab20:	00a7e533          	or	a0,a5,a0
8000ab24:	00d65633          	srl	a2,a2,a3
8000ab28:	00060593          	mv	a1,a2
8000ab2c:	00c12083          	lw	ra,12(sp)
8000ab30:	00812403          	lw	s0,8(sp)
8000ab34:	01010113          	addi	sp,sp,16
8000ab38:	00008067          	ret

8000ab3c <__udivsi3>:
8000ab3c:	ff010113          	addi	sp,sp,-16
8000ab40:	00112623          	sw	ra,12(sp)
8000ab44:	00812423          	sw	s0,8(sp)
8000ab48:	01010413          	addi	s0,sp,16
8000ab4c:	00c12083          	lw	ra,12(sp)
8000ab50:	00812403          	lw	s0,8(sp)
8000ab54:	01010113          	addi	sp,sp,16
8000ab58:	00000317          	auipc	t1,0x0
8000ab5c:	ea030067          	jr	-352(t1) # 8000a9f8 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>

8000ab60 <__udivdi3>:
8000ab60:	fe010113          	addi	sp,sp,-32
8000ab64:	00112e23          	sw	ra,28(sp)
8000ab68:	00812c23          	sw	s0,24(sp)
8000ab6c:	02010413          	addi	s0,sp,32
8000ab70:	00068713          	mv	a4,a3
8000ab74:	00060693          	mv	a3,a2
8000ab78:	00058613          	mv	a2,a1
8000ab7c:	00050593          	mv	a1,a0
8000ab80:	fe840513          	addi	a0,s0,-24
8000ab84:	00000097          	auipc	ra,0x0
8000ab88:	9c0080e7          	jalr	-1600(ra) # 8000a544 <_ZN17compiler_builtins3int19specialized_div_rem11u64_div_rem17h7dbad812ff56900aE>
8000ab8c:	fec42583          	lw	a1,-20(s0)
8000ab90:	fe842503          	lw	a0,-24(s0)
8000ab94:	01c12083          	lw	ra,28(sp)
8000ab98:	01812403          	lw	s0,24(sp)
8000ab9c:	02010113          	addi	sp,sp,32
8000aba0:	00008067          	ret

8000aba4 <__mulsf3>:
8000aba4:	ff010113          	addi	sp,sp,-16
8000aba8:	00112623          	sw	ra,12(sp)
8000abac:	00812423          	sw	s0,8(sp)
8000abb0:	01010413          	addi	s0,sp,16
8000abb4:	00c12083          	lw	ra,12(sp)
8000abb8:	00812403          	lw	s0,8(sp)
8000abbc:	01010113          	addi	sp,sp,16
8000abc0:	00000317          	auipc	t1,0x0
8000abc4:	00830067          	jr	8(t1) # 8000abc8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E>

8000abc8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E>:
8000abc8:	fe010113          	addi	sp,sp,-32
8000abcc:	00112e23          	sw	ra,28(sp)
8000abd0:	00812c23          	sw	s0,24(sp)
8000abd4:	00912a23          	sw	s1,20(sp)
8000abd8:	01212823          	sw	s2,16(sp)
8000abdc:	01312623          	sw	s3,12(sp)
8000abe0:	01412423          	sw	s4,8(sp)
8000abe4:	01512223          	sw	s5,4(sp)
8000abe8:	02010413          	addi	s0,sp,32
8000abec:	00800937          	lui	s2,0x800
8000abf0:	fff90913          	addi	s2,s2,-1 # 7fffff <.Lline_table_start2+0x7fec51>
8000abf4:	00151613          	slli	a2,a0,0x1
8000abf8:	01865993          	srli	s3,a2,0x18
8000abfc:	00159613          	slli	a2,a1,0x1
8000ac00:	01865a13          	srli	s4,a2,0x18
8000ac04:	00a5c4b3          	xor	s1,a1,a0
8000ac08:	80000737          	lui	a4,0x80000
8000ac0c:	00e4f4b3          	and	s1,s1,a4
8000ac10:	01257633          	and	a2,a0,s2
8000ac14:	f0198813          	addi	a6,s3,-255
8000ac18:	f0200793          	li	a5,-254
8000ac1c:	0125f6b3          	and	a3,a1,s2
8000ac20:	06f86263          	bltu	a6,a5,8000ac84 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xbc>
8000ac24:	f01a0813          	addi	a6,s4,-255
8000ac28:	04f86e63          	bltu	a6,a5,8000ac84 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xbc>
8000ac2c:	00000a93          	li	s5,0
8000ac30:	00800537          	lui	a0,0x800
8000ac34:	00a66633          	or	a2,a2,a0
8000ac38:	00869693          	slli	a3,a3,0x8
8000ac3c:	80000537          	lui	a0,0x80000
8000ac40:	00a6e533          	or	a0,a3,a0
8000ac44:	00000593          	li	a1,0
8000ac48:	00000693          	li	a3,0
8000ac4c:	fffff097          	auipc	ra,0xfffff
8000ac50:	378080e7          	jalr	888(ra) # 80009fc4 <__muldi3>
8000ac54:	013a09b3          	add	s3,s4,s3
8000ac58:	00859613          	slli	a2,a1,0x8
8000ac5c:	01598ab3          	add	s5,s3,s5
8000ac60:	04064063          	bltz	a2,8000aca0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xd8>
8000ac64:	f81a8613          	addi	a2,s5,-127
8000ac68:	01f55693          	srli	a3,a0,0x1f
8000ac6c:	00159593          	slli	a1,a1,0x1
8000ac70:	00d5e5b3          	or	a1,a1,a3
8000ac74:	00151513          	slli	a0,a0,0x1
8000ac78:	0fe00693          	li	a3,254
8000ac7c:	02c6d863          	bge	a3,a2,8000acac <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0xe4>
8000ac80:	0700006f          	j	8000acf0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000ac84:	fff70793          	addi	a5,a4,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000ac88:	00f57733          	and	a4,a0,a5
8000ac8c:	7f800837          	lui	a6,0x7f800
8000ac90:	04e87063          	bgeu	a6,a4,8000acd0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x108>
8000ac94:	004004b7          	lui	s1,0x400
8000ac98:	009564b3          	or	s1,a0,s1
8000ac9c:	05c0006f          	j	8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000aca0:	f82a8613          	addi	a2,s5,-126
8000aca4:	0fe00693          	li	a3,254
8000aca8:	04c6c463          	blt	a3,a2,8000acf0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000acac:	06c05a63          	blez	a2,8000ad20 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x158>
8000acb0:	0125f5b3          	and	a1,a1,s2
8000acb4:	01761613          	slli	a2,a2,0x17
8000acb8:	00b665b3          	or	a1,a2,a1
8000acbc:	80000637          	lui	a2,0x80000
8000acc0:	0095e4b3          	or	s1,a1,s1
8000acc4:	08a67c63          	bgeu	a2,a0,8000ad5c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x194>
8000acc8:	00148493          	addi	s1,s1,1 # 400001 <.Lline_table_start2+0x3fec53>
8000accc:	02c0006f          	j	8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000acd0:	00f5f533          	and	a0,a1,a5
8000acd4:	00a87863          	bgeu	a6,a0,8000ace4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x11c>
8000acd8:	004004b7          	lui	s1,0x400
8000acdc:	0095e4b3          	or	s1,a1,s1
8000ace0:	0180006f          	j	8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ace4:	7f8005b7          	lui	a1,0x7f800
8000ace8:	08b71263          	bne	a4,a1,8000ad6c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1a4>
8000acec:	08050463          	beqz	a0,8000ad74 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1ac>
8000acf0:	7f800537          	lui	a0,0x7f800
8000acf4:	00a4e4b3          	or	s1,s1,a0
8000acf8:	00048513          	mv	a0,s1
8000acfc:	01c12083          	lw	ra,28(sp)
8000ad00:	01812403          	lw	s0,24(sp)
8000ad04:	01412483          	lw	s1,20(sp)
8000ad08:	01012903          	lw	s2,16(sp)
8000ad0c:	00c12983          	lw	s3,12(sp)
8000ad10:	00812a03          	lw	s4,8(sp)
8000ad14:	00412a83          	lw	s5,4(sp)
8000ad18:	02010113          	addi	sp,sp,32
8000ad1c:	00008067          	ret
8000ad20:	00100693          	li	a3,1
8000ad24:	40c686b3          	sub	a3,a3,a2
8000ad28:	01f00713          	li	a4,31
8000ad2c:	fcd766e3          	bltu	a4,a3,8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad30:	01f60613          	addi	a2,a2,31 # 8000001f <.bss_zero_loop+0xb>
8000ad34:	00c51733          	sll	a4,a0,a2
8000ad38:	00e03733          	snez	a4,a4
8000ad3c:	00c59633          	sll	a2,a1,a2
8000ad40:	00d55533          	srl	a0,a0,a3
8000ad44:	00c56533          	or	a0,a0,a2
8000ad48:	00e56533          	or	a0,a0,a4
8000ad4c:	00d5d5b3          	srl	a1,a1,a3
8000ad50:	80000637          	lui	a2,0x80000
8000ad54:	0095e4b3          	or	s1,a1,s1
8000ad58:	f6a668e3          	bltu	a2,a0,8000acc8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x100>
8000ad5c:	f8c51ee3          	bne	a0,a2,8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad60:	0015f593          	andi	a1,a1,1
8000ad64:	00b484b3          	add	s1,s1,a1
8000ad68:	f91ff06f          	j	8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad6c:	00b51863          	bne	a0,a1,8000ad7c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x1b4>
8000ad70:	f80710e3          	bnez	a4,8000acf0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x128>
8000ad74:	7fc004b7          	lui	s1,0x7fc00
8000ad78:	f81ff06f          	j	8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad7c:	f6070ee3          	beqz	a4,8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad80:	f6050ce3          	beqz	a0,8000acf8 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x130>
8000ad84:	01775713          	srli	a4,a4,0x17
8000ad88:	08071663          	bnez	a4,8000ae14 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x24c>
8000ad8c:	08060863          	beqz	a2,8000ae1c <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x254>
8000ad90:	00165593          	srli	a1,a2,0x1
8000ad94:	00b665b3          	or	a1,a2,a1
8000ad98:	0025d713          	srli	a4,a1,0x2
8000ad9c:	00e5e5b3          	or	a1,a1,a4
8000ada0:	0045d713          	srli	a4,a1,0x4
8000ada4:	00e5e5b3          	or	a1,a1,a4
8000ada8:	0085d713          	srli	a4,a1,0x8
8000adac:	00e5e5b3          	or	a1,a1,a4
8000adb0:	0105d713          	srli	a4,a1,0x10
8000adb4:	00e5e5b3          	or	a1,a1,a4
8000adb8:	fff5c593          	not	a1,a1
8000adbc:	0015d713          	srli	a4,a1,0x1
8000adc0:	555557b7          	lui	a5,0x55555
8000adc4:	55578793          	addi	a5,a5,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000adc8:	00f77733          	and	a4,a4,a5
8000adcc:	40e585b3          	sub	a1,a1,a4
8000add0:	33333737          	lui	a4,0x33333
8000add4:	33370713          	addi	a4,a4,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000add8:	00e5f7b3          	and	a5,a1,a4
8000addc:	0025d593          	srli	a1,a1,0x2
8000ade0:	00e5f5b3          	and	a1,a1,a4
8000ade4:	00b785b3          	add	a1,a5,a1
8000ade8:	0045d713          	srli	a4,a1,0x4
8000adec:	00e585b3          	add	a1,a1,a4
8000adf0:	0f0f1737          	lui	a4,0xf0f1
8000adf4:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000adf8:	00e5f5b3          	and	a1,a1,a4
8000adfc:	00859713          	slli	a4,a1,0x8
8000ae00:	00e585b3          	add	a1,a1,a4
8000ae04:	01059713          	slli	a4,a1,0x10
8000ae08:	00e585b3          	add	a1,a1,a4
8000ae0c:	0185d593          	srli	a1,a1,0x18
8000ae10:	0100006f          	j	8000ae20 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x258>
8000ae14:	00000a93          	li	s5,0
8000ae18:	0180006f          	j	8000ae30 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x268>
8000ae1c:	02000593          	li	a1,32
8000ae20:	01858713          	addi	a4,a1,24 # 7f800018 <.Lline_table_start2+0x7f7fec6a>
8000ae24:	00900793          	li	a5,9
8000ae28:	40b78ab3          	sub	s5,a5,a1
8000ae2c:	00e61633          	sll	a2,a2,a4
8000ae30:	01755513          	srli	a0,a0,0x17
8000ae34:	de051ee3          	bnez	a0,8000ac30 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x68>
8000ae38:	08068463          	beqz	a3,8000aec0 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x2f8>
8000ae3c:	0016d513          	srli	a0,a3,0x1
8000ae40:	00a6e533          	or	a0,a3,a0
8000ae44:	00255593          	srli	a1,a0,0x2
8000ae48:	00b56533          	or	a0,a0,a1
8000ae4c:	00455593          	srli	a1,a0,0x4
8000ae50:	00b56533          	or	a0,a0,a1
8000ae54:	00855593          	srli	a1,a0,0x8
8000ae58:	00b56533          	or	a0,a0,a1
8000ae5c:	01055593          	srli	a1,a0,0x10
8000ae60:	00b56533          	or	a0,a0,a1
8000ae64:	fff54513          	not	a0,a0
8000ae68:	00155593          	srli	a1,a0,0x1
8000ae6c:	55555737          	lui	a4,0x55555
8000ae70:	55570713          	addi	a4,a4,1365 # 55555555 <.Lline_table_start2+0x555541a7>
8000ae74:	00e5f5b3          	and	a1,a1,a4
8000ae78:	40b50533          	sub	a0,a0,a1
8000ae7c:	333335b7          	lui	a1,0x33333
8000ae80:	33358593          	addi	a1,a1,819 # 33333333 <.Lline_table_start2+0x33331f85>
8000ae84:	00b57733          	and	a4,a0,a1
8000ae88:	00255513          	srli	a0,a0,0x2
8000ae8c:	00b57533          	and	a0,a0,a1
8000ae90:	00a70533          	add	a0,a4,a0
8000ae94:	00455593          	srli	a1,a0,0x4
8000ae98:	00b50533          	add	a0,a0,a1
8000ae9c:	0f0f15b7          	lui	a1,0xf0f1
8000aea0:	f0f58593          	addi	a1,a1,-241 # f0f0f0f <.Lline_table_start2+0xf0efb61>
8000aea4:	00b57533          	and	a0,a0,a1
8000aea8:	00851593          	slli	a1,a0,0x8
8000aeac:	00b50533          	add	a0,a0,a1
8000aeb0:	01051593          	slli	a1,a0,0x10
8000aeb4:	00b50533          	add	a0,a0,a1
8000aeb8:	01855513          	srli	a0,a0,0x18
8000aebc:	0080006f          	j	8000aec4 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x2fc>
8000aec0:	02000513          	li	a0,32
8000aec4:	01850593          	addi	a1,a0,24 # 7f800018 <.Lline_table_start2+0x7f7fec6a>
8000aec8:	00b696b3          	sll	a3,a3,a1
8000aecc:	40aa8ab3          	sub	s5,s5,a0
8000aed0:	009a8a93          	addi	s5,s5,9
8000aed4:	d5dff06f          	j	8000ac30 <_ZN17compiler_builtins5float3mul8__mulsf317h99b78879c2a7e713E+0x68>

8000aed8 <memset>:
8000aed8:	fe010113          	addi	sp,sp,-32
8000aedc:	00112e23          	sw	ra,28(sp)
8000aee0:	00812c23          	sw	s0,24(sp)
8000aee4:	00912a23          	sw	s1,20(sp)
8000aee8:	01212823          	sw	s2,16(sp)
8000aeec:	01312623          	sw	s3,12(sp)
8000aef0:	01412423          	sw	s4,8(sp)
8000aef4:	02010413          	addi	s0,sp,32
8000aef8:	01000693          	li	a3,16
8000aefc:	00058913          	mv	s2,a1
8000af00:	00050493          	mv	s1,a0
8000af04:	08d66e63          	bltu	a2,a3,8000afa0 <memset+0xc8>
8000af08:	40900533          	neg	a0,s1
8000af0c:	00357513          	andi	a0,a0,3
8000af10:	00a489b3          	add	s3,s1,a0
8000af14:	0134fe63          	bgeu	s1,s3,8000af30 <memset+0x58>
8000af18:	00050593          	mv	a1,a0
8000af1c:	00048693          	mv	a3,s1
8000af20:	01268023          	sb	s2,0(a3)
8000af24:	fff58593          	addi	a1,a1,-1
8000af28:	00168693          	addi	a3,a3,1
8000af2c:	fe059ae3          	bnez	a1,8000af20 <memset+0x48>
8000af30:	40a60a33          	sub	s4,a2,a0
8000af34:	0ff97513          	zext.b	a0,s2
8000af38:	010105b7          	lui	a1,0x1010
8000af3c:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start2+0x100ed53>
8000af40:	fffff097          	auipc	ra,0xfffff
8000af44:	03c080e7          	jalr	60(ra) # 80009f7c <__mulsi3>
8000af48:	ffca7593          	andi	a1,s4,-4
8000af4c:	00b985b3          	add	a1,s3,a1
8000af50:	00b9f863          	bgeu	s3,a1,8000af60 <memset+0x88>
8000af54:	00a9a023          	sw	a0,0(s3)
8000af58:	00498993          	addi	s3,s3,4
8000af5c:	feb9ece3          	bltu	s3,a1,8000af54 <memset+0x7c>
8000af60:	003a7613          	andi	a2,s4,3
8000af64:	00c58533          	add	a0,a1,a2
8000af68:	00a5fa63          	bgeu	a1,a0,8000af7c <memset+0xa4>
8000af6c:	01258023          	sb	s2,0(a1)
8000af70:	fff60613          	addi	a2,a2,-1 # 7fffffff <.Lline_table_start2+0x7fffec51>
8000af74:	00158593          	addi	a1,a1,1
8000af78:	fe061ae3          	bnez	a2,8000af6c <memset+0x94>
8000af7c:	00048513          	mv	a0,s1
8000af80:	01c12083          	lw	ra,28(sp)
8000af84:	01812403          	lw	s0,24(sp)
8000af88:	01412483          	lw	s1,20(sp)
8000af8c:	01012903          	lw	s2,16(sp)
8000af90:	00c12983          	lw	s3,12(sp)
8000af94:	00812a03          	lw	s4,8(sp)
8000af98:	02010113          	addi	sp,sp,32
8000af9c:	00008067          	ret
8000afa0:	00048593          	mv	a1,s1
8000afa4:	00c48533          	add	a0,s1,a2
8000afa8:	fca4e2e3          	bltu	s1,a0,8000af6c <memset+0x94>
8000afac:	fd1ff06f          	j	8000af7c <memset+0xa4>

8000afb0 <__divsi3>:
8000afb0:	ff010113          	addi	sp,sp,-16
8000afb4:	00112623          	sw	ra,12(sp)
8000afb8:	00812423          	sw	s0,8(sp)
8000afbc:	00912223          	sw	s1,4(sp)
8000afc0:	01212023          	sw	s2,0(sp)
8000afc4:	01010413          	addi	s0,sp,16
8000afc8:	00058493          	mv	s1,a1
8000afcc:	00050913          	mv	s2,a0
8000afd0:	41f55513          	srai	a0,a0,0x1f
8000afd4:	00a945b3          	xor	a1,s2,a0
8000afd8:	40a58533          	sub	a0,a1,a0
8000afdc:	41f4d593          	srai	a1,s1,0x1f
8000afe0:	00b4c633          	xor	a2,s1,a1
8000afe4:	40b605b3          	sub	a1,a2,a1
8000afe8:	00000097          	auipc	ra,0x0
8000afec:	a10080e7          	jalr	-1520(ra) # 8000a9f8 <_ZN17compiler_builtins3int19specialized_div_rem11u32_div_rem17h1c1ad2f0f388c8faE>
8000aff0:	0124c5b3          	xor	a1,s1,s2
8000aff4:	0005d463          	bgez	a1,8000affc <__divsi3+0x4c>
8000aff8:	40a00533          	neg	a0,a0
8000affc:	00c12083          	lw	ra,12(sp)
8000b000:	00812403          	lw	s0,8(sp)
8000b004:	00412483          	lw	s1,4(sp)
8000b008:	00012903          	lw	s2,0(sp)
8000b00c:	01010113          	addi	sp,sp,16
8000b010:	00008067          	ret
	...

Disassembly of section .data:

8000c000 <my_block>:
	...

Disassembly of section .rodata:

8000c010 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.1>:
8000c010:	7245                	.insn	2, 0x7245
8000c012:	6f72                	.insn	2, 0x6f72
8000c014:	0072                	.insn	2, 0x0072
	...

8000c018 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.2>:
8000c018:	0000                	.insn	2, 0x
8000c01a:	0000                	.insn	2, 0x
8000c01c:	0004                	.insn	2, 0x0004
8000c01e:	0000                	.insn	2, 0x
8000c020:	0004                	.insn	2, 0x0004
8000c022:	0000                	.insn	2, 0x
8000c024:	0048                	.insn	2, 0x0048
8000c026:	8000                	.insn	2, 0x8000

8000c028 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.3>:
8000c028:	0000                	.insn	2, 0x
8000c02a:	0000                	.insn	2, 0x
8000c02c:	0004                	.insn	2, 0x0004
8000c02e:	0000                	.insn	2, 0x
8000c030:	0004                	.insn	2, 0x0004
8000c032:	0000                	.insn	2, 0x
8000c034:	0030                	.insn	2, 0x0030
8000c036:	8000                	.insn	2, 0x8000

8000c038 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.4>:
8000c038:	614c                	.insn	2, 0x614c
8000c03a:	6f79                	.insn	2, 0x6f79
8000c03c:	7475                	.insn	2, 0x7475
8000c03e:	2020                	.insn	2, 0x2020
8000c040:	2020                	.insn	2, 0x2020
8000c042:	657a6973          	.insn	4, 0x657a6973

8000c046 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.6>:
8000c046:	6c61                	.insn	2, 0x6c61
8000c048:	6769                	.insn	2, 0x6769
8000c04a:	                	.insn	2, 0x496e

8000c04b <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.7>:
8000c04b:	6e49                	.insn	2, 0x6e49
8000c04d:	75727473          	.insn	4, 0x75727473
8000c051:	6f697463          	bgeu	s2,s6,8000c739 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4+0x3d>
8000c055:	4d6e                	.insn	2, 0x4d6e
8000c057:	7369                	.insn	2, 0x7369
8000c059:	6c61                	.insn	2, 0x6c61
8000c05b:	6769                	.insn	2, 0x6769
8000c05d:	656e                	.insn	2, 0x656e
8000c05f:	6164                	.insn	2, 0x6164
8000c061:	72657373          	.insn	4, 0x72657373
8000c065:	6974                	.insn	2, 0x6974
8000c067:	60206e6f          	jal	t3,80012669 <KALLOC_BUFFER+0x3669>
8000c06b:	656c                	.insn	2, 0x656c
8000c06d:	7466                	.insn	2, 0x7466
8000c06f:	4920                	.insn	2, 0x4920
8000c071:	736e                	.insn	2, 0x736e
8000c073:	7274                	.insn	2, 0x7274
8000c075:	6375                	.insn	2, 0x6375
8000c077:	6974                	.insn	2, 0x6974
8000c079:	61466e6f          	jal	t3,8007268d <KALLOC_BUFFER+0x6368d>
8000c07d:	6c75                	.insn	2, 0x6c75
8000c07f:	7274                	.insn	2, 0x7274
8000c081:	6e61                	.insn	2, 0x6e61
8000c083:	65206567          	.insn	4, 0x65206567
8000c087:	646e                	.insn	2, 0x646e
8000c089:	6920                	.insn	2, 0x6920
8000c08b:	646e                	.insn	2, 0x646e
8000c08d:	7865                	.insn	2, 0x7865
8000c08f:	0020                	.insn	2, 0x0020
8000c091:	0201                	.insn	2, 0x0201
8000c093:	06050403          	lb	s0,96(a0)
8000c097:	0e090807          	.insn	4, 0x0e090807
8000c09b:	0b0a                	.insn	2, 0x0b0a
8000c09d:	0e0c                	.insn	2, 0x0e0c
8000c09f:	200d                	.insn	2, 0x200d
8000c0a1:	6972                	.insn	2, 0x6972
8000c0a3:	60746867          	.insn	4, 0x60746867
8000c0a7:	6620                	.insn	2, 0x6620
8000c0a9:	6961                	.insn	2, 0x6961
8000c0ab:	656c                	.insn	2, 0x656c
8000c0ad:	3a64                	.insn	2, 0x3a64
8000c0af:	                	.insn	2, 0x4920

8000c0b0 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.9>:
8000c0b0:	6c49                	.insn	2, 0x6c49
8000c0b2:	656c                	.insn	2, 0x656c
8000c0b4:	496c6167          	.insn	4, 0x496c6167
8000c0b8:	736e                	.insn	2, 0x736e
8000c0ba:	7274                	.insn	2, 0x7274
8000c0bc:	6375                	.insn	2, 0x6375
8000c0be:	6974                	.insn	2, 0x6974
8000c0c0:	          	jal	t3,800327e4 <KALLOC_BUFFER+0x237e4>

8000c0c2 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.10>:
8000c0c2:	7242                	.insn	2, 0x7242
8000c0c4:	6165                	.insn	2, 0x6165
8000c0c6:	696f706b          	.insn	4, 0x696f706b
8000c0ca:	746e                	.insn	2, 0x746e

8000c0cc <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.11>:
8000c0cc:	6f4c                	.insn	2, 0x6f4c
8000c0ce:	6461                	.insn	2, 0x6461
8000c0d0:	694d                	.insn	2, 0x694d
8000c0d2:	696c6173          	.insn	4, 0x696c6173
8000c0d6:	64656e67          	.insn	4, 0x64656e67

8000c0da <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.12>:
8000c0da:	6f4c                	.insn	2, 0x6f4c
8000c0dc:	6461                	.insn	2, 0x6461
8000c0de:	6146                	.insn	2, 0x6146
8000c0e0:	6c75                	.insn	2, 0x6c75
8000c0e2:	                	.insn	2, 0x5374

8000c0e3 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.13>:
8000c0e3:	726f7453          	.insn	4, 0x726f7453
8000c0e7:	4d65                	.insn	2, 0x4d65
8000c0e9:	7369                	.insn	2, 0x7369
8000c0eb:	6c61                	.insn	2, 0x6c61
8000c0ed:	6769                	.insn	2, 0x6769
8000c0ef:	656e                	.insn	2, 0x656e
8000c0f1:	                	.insn	2, 0x5364

8000c0f2 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.14>:
8000c0f2:	726f7453          	.insn	4, 0x726f7453
8000c0f6:	4665                	.insn	2, 0x4665
8000c0f8:	7561                	.insn	2, 0x7561
8000c0fa:	746c                	.insn	2, 0x746c

8000c0fc <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.15>:
8000c0fc:	7355                	.insn	2, 0x7355
8000c0fe:	7265                	.insn	2, 0x7265
8000c100:	6e45                	.insn	2, 0x6e45
8000c102:	4376                	.insn	2, 0x4376
8000c104:	6c61                	.insn	2, 0x6c61
8000c106:	                	.insn	2, 0x536c

8000c107 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.16>:
8000c107:	65707553          	.insn	4, 0x65707553
8000c10b:	7672                	.insn	2, 0x7672
8000c10d:	7369                	.insn	2, 0x7369
8000c10f:	6e45726f          	jal	tp,800637f3 <KALLOC_BUFFER+0x547f3>
8000c113:	4376                	.insn	2, 0x4376
8000c115:	6c61                	.insn	2, 0x6c61
8000c117:	                	.insn	2, 0x4d6c

8000c118 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.17>:
8000c118:	614d                	.insn	2, 0x614d
8000c11a:	6e696863          	bltu	s2,t1,8000c80a <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E+0x1e>
8000c11e:	4565                	.insn	2, 0x4565
8000c120:	766e                	.insn	2, 0x766e
8000c122:	6c6c6143          	.insn	4, 0x6c6c6143

8000c126 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.18>:
8000c126:	6e49                	.insn	2, 0x6e49
8000c128:	75727473          	.insn	4, 0x75727473
8000c12c:	6f697463          	bgeu	s2,s6,8000c814 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E+0x28>
8000c130:	506e                	.insn	2, 0x506e
8000c132:	6761                	.insn	2, 0x6761
8000c134:	4665                	.insn	2, 0x4665
8000c136:	7561                	.insn	2, 0x7561
8000c138:	746c                	.insn	2, 0x746c

8000c13a <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.19>:
8000c13a:	6f4c                	.insn	2, 0x6f4c
8000c13c:	6461                	.insn	2, 0x6461
8000c13e:	6150                	.insn	2, 0x6150
8000c140:	61466567          	.insn	4, 0x61466567
8000c144:	6c75                	.insn	2, 0x6c75
8000c146:	                	.insn	2, 0x5374

8000c147 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.20>:
8000c147:	726f7453          	.insn	4, 0x726f7453
8000c14b:	5065                	.insn	2, 0x5065
8000c14d:	6761                	.insn	2, 0x6761
8000c14f:	4665                	.insn	2, 0x4665
8000c151:	7561                	.insn	2, 0x7561
8000c153:	746c                	.insn	2, 0x746c

8000c155 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.21>:
8000c155:	6e55                	.insn	2, 0x6e55
8000c157:	776f6e6b          	.insn	4, 0x776f6e6b
8000c15b:	                	.insn	2, 0x006e

8000c15c <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.22.llvm.14191420167725335739>:
	...
8000c164:	0001                	.insn	2, 0x0001
8000c166:	0000                	.insn	2, 0x
8000c168:	0590                	.insn	2, 0x0590
8000c16a:	8000                	.insn	2, 0x8000
8000c16c:	0074                	.insn	2, 0x0074
8000c16e:	8000                	.insn	2, 0x8000
8000c170:	0154                	.insn	2, 0x0154
8000c172:	8000                	.insn	2, 0x8000

8000c174 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.23.llvm.14191420167725335739>:
	...
8000c17c:	0001                	.insn	2, 0x0001
8000c17e:	0000                	.insn	2, 0x
8000c180:	017c                	.insn	2, 0x017c
8000c182:	8000                	.insn	2, 0x8000

8000c184 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.24.llvm.14191420167725335739>:
8000c184:	6c6c6163          	bltu	s8,t1,8000c846 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.25+0xe>
8000c188:	6465                	.insn	2, 0x6465
8000c18a:	6020                	.insn	2, 0x6020
8000c18c:	6552                	.insn	2, 0x6552
8000c18e:	746c7573          	.insn	4, 0x746c7573
8000c192:	3a3a                	.insn	2, 0x3a3a
8000c194:	6e75                	.insn	2, 0x6e75
8000c196:	70617277          	.insn	4, 0x70617277
8000c19a:	2928                	.insn	2, 0x2928
8000c19c:	2060                	.insn	2, 0x2060
8000c19e:	61206e6f          	jal	t3,800127b0 <KALLOC_BUFFER+0x37b0>
8000c1a2:	206e                	.insn	2, 0x206e
8000c1a4:	4560                	.insn	2, 0x4560
8000c1a6:	7272                	.insn	2, 0x7272
8000c1a8:	2060                	.insn	2, 0x2060
8000c1aa:	6176                	.insn	2, 0x6176
8000c1ac:	756c                	.insn	2, 0x756c
8000c1ae:	                	.insn	2, 0x7365

8000c1af <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.25.llvm.14191420167725335739>:
8000c1af:	2f637273          	.insn	4, 0x2f637273
8000c1b3:	7270                	.insn	2, 0x7270
8000c1b5:	6e69                	.insn	2, 0x6e69
8000c1b7:	6574                	.insn	2, 0x6574
8000c1b9:	2e72                	.insn	2, 0x2e72
8000c1bb:	7372                	.insn	2, 0x7372
8000c1bd:	0000                	.insn	2, 0x
	...

8000c1c0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.26.llvm.14191420167725335739>:
8000c1c0:	8000c1af          	.insn	4, 0x8000c1af
8000c1c4:	000e                	.insn	2, 0x000e
8000c1c6:	0000                	.insn	2, 0x
8000c1c8:	00000017          	auipc	zero,0x0
8000c1cc:	001c                	.insn	2, 0x001c
	...

8000c1d0 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.27.llvm.14191420167725335739>:
8000c1d0:	636d                	.insn	2, 0x636d
8000c1d2:	7561                	.insn	2, 0x7561
8000c1d4:	203a6573          	.insn	4, 0x203a6573
8000c1d8:	7865                	.insn	2, 0x7865
8000c1da:	74706563          	bltu	zero,t2,8000c924 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33+0xc>
8000c1de:	6f69                	.insn	2, 0x6f69
8000c1e0:	206e                	.insn	2, 0x206e
8000c1e2:	7461                	.insn	2, 0x7461
8000c1e4:	                	.insn	2, 0x2020

8000c1e5 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.28.llvm.14191420167725335739>:
8000c1e5:	                	.insn	2, 0x0a20

8000c1e6 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.29.llvm.14191420167725335739>:
8000c1e6:	000a                	.insn	2, 0x000a

8000c1e8 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.30.llvm.14191420167725335739>:
8000c1e8:	c1d0                	.insn	2, 0xc1d0
8000c1ea:	8000                	.insn	2, 0x8000
8000c1ec:	0015                	.insn	2, 0x0015
8000c1ee:	0000                	.insn	2, 0x
8000c1f0:	c1e5                	.insn	2, 0xc1e5
8000c1f2:	8000                	.insn	2, 0x8000
8000c1f4:	0001                	.insn	2, 0x0001
8000c1f6:	0000                	.insn	2, 0x
8000c1f8:	c1e6                	.insn	2, 0xc1e6
8000c1fa:	8000                	.insn	2, 0x8000
8000c1fc:	0001                	.insn	2, 0x0001
	...

8000c200 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.31.llvm.14191420167725335739>:
8000c200:	6c6c616b          	.insn	4, 0x6c6c616b
8000c204:	6220636f          	jal	t1,80012826 <KALLOC_BUFFER+0x3826>
8000c208:	6675                	.insn	2, 0x6675
8000c20a:	6566                	.insn	2, 0x6566
8000c20c:	2072                	.insn	2, 0x2072
8000c20e:	6162                	.insn	2, 0x6162
8000c210:	203a6573          	.insn	4, 0x203a6573

8000c214 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.32.llvm.14191420167725335739>:
8000c214:	c200                	.insn	2, 0xc200
8000c216:	8000                	.insn	2, 0x8000
8000c218:	0014                	.insn	2, 0x0014
8000c21a:	0000                	.insn	2, 0x
8000c21c:	c1e6                	.insn	2, 0xc1e6
8000c21e:	8000                	.insn	2, 0x8000
8000c220:	0001                	.insn	2, 0x0001
	...

8000c224 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.33>:
8000c224:	6170                	.insn	2, 0x6170
8000c226:	6c6c                	.insn	2, 0x6c6c
8000c228:	203a636f          	jal	t1,800b2c2a <KALLOC_BUFFER+0xa3c2a>
8000c22c:	6966                	.insn	2, 0x6966
8000c22e:	7372                	.insn	2, 0x7372
8000c230:	2074                	.insn	2, 0x2074

8000c232 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.34>:
8000c232:	6c20                	.insn	2, 0x6c20
8000c234:	7361                	.insn	2, 0x7361
8000c236:	2074                	.insn	2, 0x2074

8000c238 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.35>:
8000c238:	c224                	.insn	2, 0xc224
8000c23a:	8000                	.insn	2, 0x8000
8000c23c:	000e                	.insn	2, 0x000e
8000c23e:	0000                	.insn	2, 0x
8000c240:	c232                	.insn	2, 0xc232
8000c242:	8000                	.insn	2, 0x8000
8000c244:	0006                	.insn	2, 0x0006
8000c246:	0000                	.insn	2, 0x
8000c248:	c1e6                	.insn	2, 0xc1e6
8000c24a:	8000                	.insn	2, 0x8000
8000c24c:	0001                	.insn	2, 0x0001
	...

8000c250 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.36.llvm.14191420167725335739>:
8000c250:	2f637273          	.insn	4, 0x2f637273
8000c254:	6f70                	.insn	2, 0x6f70
8000c256:	6e69                	.insn	2, 0x6e69
8000c258:	6574                	.insn	2, 0x6574
8000c25a:	2e72                	.insn	2, 0x2e72
8000c25c:	7372                	.insn	2, 0x7372
	...

8000c260 <anon.d9ce0655aa1b7cfc0b75f7400f6da96e.37.llvm.14191420167725335739>:
8000c260:	c250                	.insn	2, 0xc250
8000c262:	8000                	.insn	2, 0x8000
8000c264:	000e                	.insn	2, 0x000e
8000c266:	0000                	.insn	2, 0x
8000c268:	0000002f          	.insn	4, 0x002f
8000c26c:	0030                	.insn	2, 0x0030
	...

8000c270 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.38>:
8000c270:	6170                	.insn	2, 0x6170
8000c272:	6c6c                	.insn	2, 0x6c6c
8000c274:	6220636f          	jal	t1,80012896 <KALLOC_BUFFER+0x3896>
8000c278:	7361                	.insn	2, 0x7361
8000c27a:	3a65                	.insn	2, 0x3a65
8000c27c:	3020                	.insn	2, 0x3020
8000c27e:	0078                	.insn	2, 0x0078

8000c280 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.39>:
8000c280:	c270                	.insn	2, 0xc270
8000c282:	8000                	.insn	2, 0x8000
8000c284:	0000000f          	fence	unknown,unknown
8000c288:	c1e6                	.insn	2, 0xc1e6
8000c28a:	8000                	.insn	2, 0x8000
8000c28c:	0001                	.insn	2, 0x0001
	...

8000c290 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.40>:
8000c290:	6c6c616b          	.insn	4, 0x6c6c616b
8000c294:	6620636f          	jal	t1,800128f6 <KALLOC_BUFFER+0x38f6>
8000c298:	6961                	.insn	2, 0x6961
8000c29a:	3a6c                	.insn	2, 0x3a6c
8000c29c:	0020                	.insn	2, 0x0020
	...

8000c2a0 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.41>:
8000c2a0:	c290                	.insn	2, 0xc290
8000c2a2:	8000                	.insn	2, 0x8000
8000c2a4:	000d                	.insn	2, 0x000d
	...

8000c2a8 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.42>:
8000c2a8:	2f637273          	.insn	4, 0x2f637273
8000c2ac:	6c6c616b          	.insn	4, 0x6c6c616b
8000c2b0:	722e636f          	jal	t1,800f29d2 <KALLOC_BUFFER+0xe39d2>
8000c2b4:	00000073          	ecall

8000c2b8 <.Lanon.d9ce0655aa1b7cfc0b75f7400f6da96e.43>:
8000c2b8:	c2a8                	.insn	2, 0xc2a8
8000c2ba:	8000                	.insn	2, 0x8000
8000c2bc:	000d                	.insn	2, 0x000d
8000c2be:	0000                	.insn	2, 0x
8000c2c0:	0019                	.insn	2, 0x0019
8000c2c2:	0000                	.insn	2, 0x
8000c2c4:	0005                	.insn	2, 0x0005
	...

8000c2c8 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.14191420167725335739>:
8000c2c8:	0015                	.insn	2, 0x0015
8000c2ca:	0000                	.insn	2, 0x
8000c2cc:	0010                	.insn	2, 0x0010
8000c2ce:	0000                	.insn	2, 0x
8000c2d0:	0012                	.insn	2, 0x0012
8000c2d2:	0000                	.insn	2, 0x
8000c2d4:	000a                	.insn	2, 0x000a
8000c2d6:	0000                	.insn	2, 0x
8000c2d8:	000e                	.insn	2, 0x000e
8000c2da:	0000                	.insn	2, 0x
8000c2dc:	0009                	.insn	2, 0x0009
8000c2de:	0000                	.insn	2, 0x
8000c2e0:	0000000f          	fence	unknown,unknown
8000c2e4:	000a                	.insn	2, 0x000a
8000c2e6:	0000                	.insn	2, 0x
8000c2e8:	0000000b          	.insn	4, 0x000b
8000c2ec:	0011                	.insn	2, 0x0011
8000c2ee:	0000                	.insn	2, 0x
8000c2f0:	000e                	.insn	2, 0x000e
8000c2f2:	0000                	.insn	2, 0x
8000c2f4:	0014                	.insn	2, 0x0014
8000c2f6:	0000                	.insn	2, 0x
8000c2f8:	000d                	.insn	2, 0x000d
8000c2fa:	0000                	.insn	2, 0x
8000c2fc:	000e                	.insn	2, 0x000e
8000c2fe:	0000                	.insn	2, 0x
8000c300:	00000007          	.insn	4, 0x0007

8000c304 <.Lswitch.table._ZN71_$LT$riscv..register..mcause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5abffdeddc02f3adE.llvm.14191420167725335739.3>:
8000c304:	8000c04b          	.insn	4, 0x8000c04b
8000c308:	c070                	.insn	2, 0xc070
8000c30a:	8000                	.insn	2, 0x8000
8000c30c:	c0b0                	.insn	2, 0xc0b0
8000c30e:	8000                	.insn	2, 0x8000
8000c310:	c0c2                	.insn	2, 0xc0c2
8000c312:	8000                	.insn	2, 0x8000
8000c314:	c0cc                	.insn	2, 0xc0cc
8000c316:	8000                	.insn	2, 0x8000
8000c318:	c0da                	.insn	2, 0xc0da
8000c31a:	8000                	.insn	2, 0x8000
8000c31c:	8000c0e3          	bltz	ra,8000bb1c <__divsi3+0xb6c>
8000c320:	c0f2                	.insn	2, 0xc0f2
8000c322:	8000                	.insn	2, 0x8000
8000c324:	c0fc                	.insn	2, 0xc0fc
8000c326:	8000                	.insn	2, 0x8000
8000c328:	8000c107          	.insn	4, 0x8000c107
8000c32c:	c118                	.insn	2, 0xc118
8000c32e:	8000                	.insn	2, 0x8000
8000c330:	c126                	.insn	2, 0xc126
8000c332:	8000                	.insn	2, 0x8000
8000c334:	c13a                	.insn	2, 0xc13a
8000c336:	8000                	.insn	2, 0x8000
8000c338:	8000c147          	.insn	4, 0x8000c147
8000c33c:	c155                	.insn	2, 0xc155
8000c33e:	8000                	.insn	2, 0x8000

8000c340 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.4>:
8000c340:	614c                	.insn	2, 0x614c
8000c342:	6f79                	.insn	2, 0x6f79
8000c344:	7475                	.insn	2, 0x7475
8000c346:	7245                	.insn	2, 0x7245
8000c348:	6f72                	.insn	2, 0x6f72
8000c34a:	                	.insn	2, 0x7372

8000c34b <anon.60ddcc21ddc4099cb2bdf06c3dc58ce5.5.llvm.18221114886602790718>:
8000c34b:	2f637273          	.insn	4, 0x2f637273
8000c34f:	6f68                	.insn	2, 0x6f68
8000c351:	656c                	.insn	2, 0x656c
8000c353:	722e                	.insn	2, 0x722e
8000c355:	          	.insn	4, 0x696c6173

8000c356 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.6>:
8000c356:	6c61                	.insn	2, 0x6c61
8000c358:	6769                	.insn	2, 0x6769
8000c35a:	5f6e                	.insn	2, 0x5f6e
8000c35c:	7366666f          	jal	a2,80072a92 <KALLOC_BUFFER+0x63a92>
8000c360:	7465                	.insn	2, 0x7465
8000c362:	203a                	.insn	2, 0x203a
8000c364:	6c61                	.insn	2, 0x6c61
8000c366:	6769                	.insn	2, 0x6769
8000c368:	206e                	.insn	2, 0x206e
8000c36a:	7369                	.insn	2, 0x7369
8000c36c:	6e20                	.insn	2, 0x6e20
8000c36e:	6120746f          	jal	s0,80013980 <KALLOC_BUFFER+0x4980>
8000c372:	7020                	.insn	2, 0x7020
8000c374:	7265776f          	jal	a4,80063a9a <KALLOC_BUFFER+0x54a9a>
8000c378:	6f2d                	.insn	2, 0x6f2d
8000c37a:	2d66                	.insn	2, 0x2d66
8000c37c:	7774                	.insn	2, 0x7774
8000c37e:	          	j	7ff6cfb2 <.Lline_table_start2+0x7ff6bc04>

8000c380 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.7>:
8000c380:	c356                	.insn	2, 0xc356
8000c382:	8000                	.insn	2, 0x8000
8000c384:	0029                	.insn	2, 0x0029
	...

8000c388 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.8>:
8000c388:	6d6f682f          	.insn	4, 0x6d6f682f
8000c38c:	2f65                	.insn	2, 0x2f65
8000c38e:	6572                	.insn	2, 0x6572
8000c390:	796d                	.insn	2, 0x796d
8000c392:	75722e2f          	.insn	4, 0x75722e2f
8000c396:	70757473          	.insn	4, 0x70757473
8000c39a:	6f6f742f          	.insn	4, 0x6f6f742f
8000c39e:	636c                	.insn	2, 0x636c
8000c3a0:	6168                	.insn	2, 0x6168
8000c3a2:	6e69                	.insn	2, 0x6e69
8000c3a4:	696e2f73          	.insn	4, 0x696e2f73
8000c3a8:	6c746867          	.insn	4, 0x6c746867
8000c3ac:	2d79                	.insn	2, 0x2d79
8000c3ae:	3878                	.insn	2, 0x3878
8000c3b0:	5f36                	.insn	2, 0x5f36
8000c3b2:	3436                	.insn	2, 0x3436
8000c3b4:	752d                	.insn	2, 0x752d
8000c3b6:	6b6e                	.insn	2, 0x6b6e
8000c3b8:	6f6e                	.insn	2, 0x6f6e
8000c3ba:	6c2d6e77          	.insn	4, 0x6c2d6e77
8000c3be:	6e69                	.insn	2, 0x6e69
8000c3c0:	7875                	.insn	2, 0x7875
8000c3c2:	672d                	.insn	2, 0x672d
8000c3c4:	756e                	.insn	2, 0x756e
8000c3c6:	62696c2f          	.insn	4, 0x62696c2f
8000c3ca:	7375722f          	.insn	4, 0x7375722f
8000c3ce:	6c74                	.insn	2, 0x6c74
8000c3d0:	6269                	.insn	2, 0x6269
8000c3d2:	6372732f          	.insn	4, 0x6372732f
8000c3d6:	7375722f          	.insn	4, 0x7375722f
8000c3da:	2f74                	.insn	2, 0x2f74
8000c3dc:	696c                	.insn	2, 0x696c
8000c3de:	7262                	.insn	2, 0x7262
8000c3e0:	7261                	.insn	2, 0x7261
8000c3e2:	2f79                	.insn	2, 0x2f79
8000c3e4:	65726f63          	bltu	tp,s7,8000ca42 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46+0xa>
8000c3e8:	6372732f          	.insn	4, 0x6372732f
8000c3ec:	7274702f          	.insn	4, 0x7274702f
8000c3f0:	74756d2f          	.insn	4, 0x74756d2f
8000c3f4:	705f 7274 722e      	.insn	6, 0x722e7274705f
8000c3fa:	          	.insn	4, 0xc3880073

8000c3fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.9>:
8000c3fc:	c388                	.insn	2, 0xc388
8000c3fe:	8000                	.insn	2, 0x8000
8000c400:	00000073          	ecall
8000c404:	0666                	.insn	2, 0x0666
8000c406:	0000                	.insn	2, 0x
8000c408:	000d                	.insn	2, 0x000d
	...

8000c40c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.14>:
	...
8000c414:	0001                	.insn	2, 0x0001
8000c416:	0000                	.insn	2, 0x
8000c418:	0dd4                	.insn	2, 0x0dd4
8000c41a:	8000                	.insn	2, 0x8000

8000c41c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.15>:
8000c41c:	6c6c6163          	bltu	s8,t1,8000cade <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x56>
8000c420:	6465                	.insn	2, 0x6465
8000c422:	6020                	.insn	2, 0x6020
8000c424:	6552                	.insn	2, 0x6552
8000c426:	746c7573          	.insn	4, 0x746c7573
8000c42a:	3a3a                	.insn	2, 0x3a3a
8000c42c:	6e75                	.insn	2, 0x6e75
8000c42e:	70617277          	.insn	4, 0x70617277
8000c432:	2928                	.insn	2, 0x2928
8000c434:	2060                	.insn	2, 0x2060
8000c436:	61206e6f          	jal	t3,80012a48 <KALLOC_BUFFER+0x3a48>
8000c43a:	206e                	.insn	2, 0x206e
8000c43c:	4560                	.insn	2, 0x4560
8000c43e:	7272                	.insn	2, 0x7272
8000c440:	2060                	.insn	2, 0x2060
8000c442:	6176                	.insn	2, 0x6176
8000c444:	756c                	.insn	2, 0x756c
8000c446:	0065                	.insn	2, 0x0065

8000c448 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.16>:
8000c448:	8000c34b          	.insn	4, 0x8000c34b
8000c44c:	0000000b          	.insn	4, 0x000b
8000c450:	01b8                	.insn	2, 0x01b8
8000c452:	0000                	.insn	2, 0x
8000c454:	0039                	.insn	2, 0x0039
	...

8000c458 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.17>:
8000c458:	7246                	.insn	2, 0x7246
8000c45a:	6565                	.insn	2, 0x6565
8000c45c:	2064                	.insn	2, 0x2064
8000c45e:	6f6e                	.insn	2, 0x6f6e
8000c460:	6564                	.insn	2, 0x6564
8000c462:	6120                	.insn	2, 0x6120
8000c464:	696c                	.insn	2, 0x696c
8000c466:	7361                	.insn	2, 0x7361
8000c468:	7365                	.insn	2, 0x7365
8000c46a:	6520                	.insn	2, 0x6520
8000c46c:	6978                	.insn	2, 0x6978
8000c46e:	6e697473          	.insn	4, 0x6e697473
8000c472:	6f682067          	.insn	4, 0x6f682067
8000c476:	656c                	.insn	2, 0x656c
8000c478:	2021                	.insn	2, 0x2021
8000c47a:	6142                	.insn	2, 0x6142
8000c47c:	2064                	.insn	2, 0x2064
8000c47e:	7266                	.insn	2, 0x7266
8000c480:	6565                	.insn	2, 0x6565
8000c482:	  	.insn	8, 0x002b8000c458003f

8000c484 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.18>:
8000c484:	c458                	.insn	2, 0xc458
8000c486:	8000                	.insn	2, 0x8000
8000c488:	0000002b          	.insn	4, 0x002b

8000c48c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.19>:
8000c48c:	8000c34b          	.insn	4, 0x8000c34b
8000c490:	0000000b          	.insn	4, 0x000b
8000c494:	0206                	.insn	2, 0x0206
8000c496:	0000                	.insn	2, 0x
8000c498:	000d                	.insn	2, 0x000d
	...

8000c49c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.20>:
8000c49c:	8000c34b          	.insn	4, 0x8000c34b
8000c4a0:	0000000b          	.insn	4, 0x000b
8000c4a4:	0228                	.insn	2, 0x0228
8000c4a6:	0000                	.insn	2, 0x
8000c4a8:	0011                	.insn	2, 0x0011
	...

8000c4ac <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.21>:
8000c4ac:	7246                	.insn	2, 0x7246
8000c4ae:	6565                	.insn	2, 0x6565
8000c4b0:	2064                	.insn	2, 0x2064
8000c4b2:	6f6e                	.insn	2, 0x6f6e
8000c4b4:	6564                	.insn	2, 0x6564
8000c4b6:	2820                	.insn	2, 0x2820

8000c4b8 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.22>:
8000c4b8:	2029                	.insn	2, 0x2029
8000c4ba:	6c61                	.insn	2, 0x6c61
8000c4bc:	6169                	.insn	2, 0x6169
8000c4be:	20736573          	.insn	4, 0x20736573
8000c4c2:	7865                	.insn	2, 0x7865
8000c4c4:	7369                	.insn	2, 0x7369
8000c4c6:	6974                	.insn	2, 0x6974
8000c4c8:	676e                	.insn	2, 0x676e
8000c4ca:	6820                	.insn	2, 0x6820
8000c4cc:	20656c6f          	jal	s8,800626d2 <KALLOC_BUFFER+0x536d2>
8000c4d0:	                	.insn	2, 0x5b28

8000c4d1 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.23>:
8000c4d1:	          	.insn	4, 0x21295d5b

8000c4d2 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.24>:
8000c4d2:	295d                	.insn	2, 0x295d
8000c4d4:	2021                	.insn	2, 0x2021
8000c4d6:	6142                	.insn	2, 0x6142
8000c4d8:	2064                	.insn	2, 0x2064
8000c4da:	7266                	.insn	2, 0x7266
8000c4dc:	6565                	.insn	2, 0x6565
8000c4de:	  	.insn	8, 0x000c8000c4ac003f

8000c4e0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.25>:
8000c4e0:	c4ac                	.insn	2, 0xc4ac
8000c4e2:	8000                	.insn	2, 0x8000
8000c4e4:	000c                	.insn	2, 0x000c
8000c4e6:	0000                	.insn	2, 0x
8000c4e8:	c4b8                	.insn	2, 0xc4b8
8000c4ea:	8000                	.insn	2, 0x8000
8000c4ec:	0019                	.insn	2, 0x0019
8000c4ee:	0000                	.insn	2, 0x
8000c4f0:	c4d1                	.insn	2, 0xc4d1
8000c4f2:	8000                	.insn	2, 0x8000
8000c4f4:	0001                	.insn	2, 0x0001
8000c4f6:	0000                	.insn	2, 0x
8000c4f8:	c4d2                	.insn	2, 0xc4d2
8000c4fa:	8000                	.insn	2, 0x8000
8000c4fc:	000d                	.insn	2, 0x000d
	...

8000c500 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.26>:
8000c500:	8000c34b          	.insn	4, 0x8000c34b
8000c504:	0000000b          	.insn	4, 0x000b
8000c508:	0000023b          	.insn	4, 0x023b
8000c50c:	0009                	.insn	2, 0x0009
	...

8000c510 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.27>:
8000c510:	6361                	.insn	2, 0x6361
8000c512:	          	.insn	4, 0x0a203a63

8000c515 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.28>:
8000c515:	000a                	.insn	2, 0x000a
	...

8000c518 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.29>:
8000c518:	c510                	.insn	2, 0xc510
8000c51a:	8000                	.insn	2, 0x8000
8000c51c:	0005                	.insn	2, 0x0005
8000c51e:	0000                	.insn	2, 0x
8000c520:	c515                	.insn	2, 0xc515
8000c522:	8000                	.insn	2, 0x8000
8000c524:	0001                	.insn	2, 0x0001
	...

8000c528 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.30>:
8000c528:	3a6d7573          	.insn	4, 0x3a6d7573
8000c52c:	                	.insn	2, 0x2020

8000c52d <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.31>:
8000c52d:	6520                	.insn	2, 0x6520
8000c52f:	7078                	.insn	2, 0x7078
8000c531:	6365                	.insn	2, 0x6365
8000c533:	6574                	.insn	2, 0x6574
8000c535:	3a64                	.insn	2, 0x3a64
8000c537:	                	.insn	2, 0x2820

8000c538 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.32>:
8000c538:	c528                	.insn	2, 0xc528
8000c53a:	8000                	.insn	2, 0x8000
8000c53c:	0005                	.insn	2, 0x0005
8000c53e:	0000                	.insn	2, 0x
8000c540:	c52d                	.insn	2, 0xc52d
8000c542:	8000                	.insn	2, 0x8000
8000c544:	0000000b          	.insn	4, 0x000b
8000c548:	c515                	.insn	2, 0xc515
8000c54a:	8000                	.insn	2, 0x8000
8000c54c:	0001                	.insn	2, 0x0001
	...

8000c550 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.33>:
8000c550:	2f637273          	.insn	4, 0x2f637273
8000c554:	616d                	.insn	2, 0x616d
8000c556:	6e69                	.insn	2, 0x6e69
8000c558:	722e                	.insn	2, 0x722e
8000c55a:	          	.insn	4, 0xc5500073

8000c55c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.34>:
8000c55c:	c550                	.insn	2, 0xc550
8000c55e:	8000                	.insn	2, 0x8000
8000c560:	0000000b          	.insn	4, 0x000b
8000c564:	0088                	.insn	2, 0x0088
8000c566:	0000                	.insn	2, 0x
8000c568:	0016                	.insn	2, 0x0016
	...

8000c56c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.35>:
8000c56c:	c550                	.insn	2, 0xc550
8000c56e:	8000                	.insn	2, 0x8000
8000c570:	0000000b          	.insn	4, 0x000b
8000c574:	0088                	.insn	2, 0x0088
8000c576:	0000                	.insn	2, 0x
8000c578:	0019                	.insn	2, 0x0019
	...

8000c57c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.36>:
8000c57c:	c550                	.insn	2, 0xc550
8000c57e:	8000                	.insn	2, 0x8000
8000c580:	0000000b          	.insn	4, 0x000b
8000c584:	0080                	.insn	2, 0x0080
8000c586:	0000                	.insn	2, 0x
8000c588:	001f 0000       	.insn	6, 0xc5500000001f

8000c58c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.37>:
8000c58c:	c550                	.insn	2, 0xc550
8000c58e:	8000                	.insn	2, 0x8000
8000c590:	0000000b          	.insn	4, 0x000b
8000c594:	0080                	.insn	2, 0x0080
8000c596:	0000                	.insn	2, 0x
8000c598:	0022                	.insn	2, 0x0022
	...

8000c59c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.38>:
8000c59c:	c550                	.insn	2, 0xc550
8000c59e:	8000                	.insn	2, 0x8000
8000c5a0:	0000000b          	.insn	4, 0x000b
8000c5a4:	0080                	.insn	2, 0x0080
8000c5a6:	0000                	.insn	2, 0x
8000c5a8:	002a                	.insn	2, 0x002a
	...

8000c5ac <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.39>:
8000c5ac:	c550                	.insn	2, 0xc550
8000c5ae:	8000                	.insn	2, 0x8000
8000c5b0:	0000000b          	.insn	4, 0x000b
8000c5b4:	0080                	.insn	2, 0x0080
8000c5b6:	0000                	.insn	2, 0x
8000c5b8:	002d                	.insn	2, 0x002d
	...

8000c5bc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.40>:
8000c5bc:	c550                	.insn	2, 0xc550
8000c5be:	8000                	.insn	2, 0x8000
8000c5c0:	0000000b          	.insn	4, 0x000b
8000c5c4:	0080                	.insn	2, 0x0080
8000c5c6:	0000                	.insn	2, 0x
8000c5c8:	00000013          	nop

8000c5cc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.41>:
8000c5cc:	c550                	.insn	2, 0xc550
8000c5ce:	8000                	.insn	2, 0x8000
8000c5d0:	0000000b          	.insn	4, 0x000b
8000c5d4:	0080                	.insn	2, 0x0080
8000c5d6:	0000                	.insn	2, 0x
8000c5d8:	0016                	.insn	2, 0x0016
	...

8000c5dc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.42>:
8000c5dc:	c550                	.insn	2, 0xc550
8000c5de:	8000                	.insn	2, 0x8000
8000c5e0:	0000000b          	.insn	4, 0x000b
8000c5e4:	0000006f          	j	8000c5e4 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.42+0x8>
8000c5e8:	000c                	.insn	2, 0x000c
	...

8000c5ec <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.43>:
8000c5ec:	c550                	.insn	2, 0xc550
8000c5ee:	8000                	.insn	2, 0x8000
8000c5f0:	0000000b          	.insn	4, 0x000b
8000c5f4:	0070                	.insn	2, 0x0070
8000c5f6:	0000                	.insn	2, 0x
8000c5f8:	000c                	.insn	2, 0x000c
	...

8000c5fc <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.44>:
8000c5fc:	c550                	.insn	2, 0xc550
8000c5fe:	8000                	.insn	2, 0x8000
8000c600:	0000000b          	.insn	4, 0x000b
8000c604:	0071                	.insn	2, 0x0071
8000c606:	0000                	.insn	2, 0x
8000c608:	000c                	.insn	2, 0x000c
	...

8000c60c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.45>:
8000c60c:	c550                	.insn	2, 0xc550
8000c60e:	8000                	.insn	2, 0x8000
8000c610:	0000000b          	.insn	4, 0x000b
8000c614:	00000073          	ecall
8000c618:	0000000f          	fence	unknown,unknown

8000c61c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.46>:
8000c61c:	c550                	.insn	2, 0xc550
8000c61e:	8000                	.insn	2, 0x8000
8000c620:	0000000b          	.insn	4, 0x000b
8000c624:	00000073          	ecall
8000c628:	00000013          	nop

8000c62c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.47>:
8000c62c:	c550                	.insn	2, 0xc550
8000c62e:	8000                	.insn	2, 0x8000
8000c630:	0000000b          	.insn	4, 0x000b
8000c634:	0074                	.insn	2, 0x0074
8000c636:	0000                	.insn	2, 0x
8000c638:	0000000f          	fence	unknown,unknown

8000c63c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.48>:
8000c63c:	c550                	.insn	2, 0xc550
8000c63e:	8000                	.insn	2, 0x8000
8000c640:	0000000b          	.insn	4, 0x000b
8000c644:	0074                	.insn	2, 0x0074
8000c646:	0000                	.insn	2, 0x
8000c648:	00000013          	nop

8000c64c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.49>:
8000c64c:	c550                	.insn	2, 0xc550
8000c64e:	8000                	.insn	2, 0x8000
8000c650:	0000000b          	.insn	4, 0x000b
8000c654:	0075                	.insn	2, 0x0075
8000c656:	0000                	.insn	2, 0x
8000c658:	0000000f          	fence	unknown,unknown

8000c65c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.50>:
8000c65c:	c550                	.insn	2, 0xc550
8000c65e:	8000                	.insn	2, 0x8000
8000c660:	0000000b          	.insn	4, 0x000b
8000c664:	0075                	.insn	2, 0x0075
8000c666:	0000                	.insn	2, 0x
8000c668:	00000013          	nop

8000c66c <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.51>:
8000c66c:	31335b1b          	.insn	4, 0x31335b1b
8000c670:	4b6d                	.insn	2, 0x4b6d
8000c672:	5245                	.insn	2, 0x5245
8000c674:	454e                	.insn	2, 0x454e
8000c676:	204c                	.insn	2, 0x204c
8000c678:	4150                	.insn	2, 0x4150
8000c67a:	494e                	.insn	2, 0x494e
8000c67c:	5b1b3a43          	.insn	4, 0x5b1b3a43
8000c680:	6d30                	.insn	2, 0x6d30
8000c682:	0020                	.insn	2, 0x0020

8000c684 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.52>:
8000c684:	c66c                	.insn	2, 0xc66c
8000c686:	8000                	.insn	2, 0x8000
8000c688:	00000017          	auipc	zero,0x0
8000c68c:	c515                	.insn	2, 0xc515
8000c68e:	8000                	.insn	2, 0x8000
8000c690:	0001                	.insn	2, 0x0001
	...

8000c694 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.67>:
8000c694:	c550                	.insn	2, 0xc550
8000c696:	8000                	.insn	2, 0x8000
8000c698:	0000000b          	.insn	4, 0x000b
8000c69c:	00d8                	.insn	2, 0x00d8
8000c69e:	0000                	.insn	2, 0x
8000c6a0:	0026                	.insn	2, 0x0026
	...

8000c6a4 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.68>:
8000c6a4:	7375                	.insn	2, 0x7375
8000c6a6:	7265                	.insn	2, 0x7265
8000c6a8:	6d5f 6961 3a6e      	.insn	6, 0x3a6e69616d5f
8000c6ae:	0020                	.insn	2, 0x0020

8000c6b0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.69>:
8000c6b0:	c6a4                	.insn	2, 0xc6a4
8000c6b2:	8000                	.insn	2, 0x8000
8000c6b4:	0000000b          	.insn	4, 0x000b
8000c6b8:	c515                	.insn	2, 0xc515
8000c6ba:	8000                	.insn	2, 0x8000
8000c6bc:	0001                	.insn	2, 0x0001
	...

8000c6c0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.74>:
8000c6c0:	6974                	.insn	2, 0x6974
8000c6c2:	656d                	.insn	2, 0x656d
8000c6c4:	203a                	.insn	2, 0x203a

8000c6c6 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.75>:
8000c6c6:	6920                	.insn	2, 0x6920
8000c6c8:	736e                	.insn	2, 0x736e
8000c6ca:	7274                	.insn	2, 0x7274
8000c6cc:	7465                	.insn	2, 0x7465
8000c6ce:	203a                	.insn	2, 0x203a

8000c6d0 <.Lanon.60ddcc21ddc4099cb2bdf06c3dc58ce5.76>:
8000c6d0:	c6c0                	.insn	2, 0xc6c0
8000c6d2:	8000                	.insn	2, 0x8000
8000c6d4:	0006                	.insn	2, 0x0006
8000c6d6:	0000                	.insn	2, 0x
8000c6d8:	c6c6                	.insn	2, 0xc6c6
8000c6da:	8000                	.insn	2, 0x8000
8000c6dc:	000a                	.insn	2, 0x000a
8000c6de:	0000                	.insn	2, 0x
8000c6e0:	c515                	.insn	2, 0xc515
8000c6e2:	8000                	.insn	2, 0x8000
8000c6e4:	0001                	.insn	2, 0x0001
	...

8000c6e8 <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.3>:
8000c6e8:	61706163          	bltu	zero,s7,8000ccea <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x262>
8000c6ec:	79746963          	bltu	s0,s7,8000ce7e <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x3f6>
8000c6f0:	6f20                	.insn	2, 0x6f20
8000c6f2:	6576                	.insn	2, 0x6576
8000c6f4:	6672                	.insn	2, 0x6672
8000c6f6:	6f6c                	.insn	2, 0x6f6c
8000c6f8:	00000077          	.insn	4, 0x0077

8000c6fc <.Lanon.e5955b03d991d6c0114e0dca83dd2a24.4>:
8000c6fc:	c6e8                	.insn	2, 0xc6e8
8000c6fe:	8000                	.insn	2, 0x8000
8000c700:	0011                	.insn	2, 0x0011
8000c702:	0000                	.insn	2, 0x
8000c704:	6e69                	.insn	2, 0x6e69
8000c706:	6564                	.insn	2, 0x6564
8000c708:	2078                	.insn	2, 0x2078
8000c70a:	2074756f          	jal	a0,80054110 <KALLOC_BUFFER+0x45110>
8000c70e:	6220666f          	jal	a2,80012d30 <KALLOC_BUFFER+0x3d30>
8000c712:	646e756f          	jal	a0,800f3d58 <KALLOC_BUFFER+0xe4d58>
8000c716:	74203a73          	.insn	4, 0x74203a73
8000c71a:	6568                	.insn	2, 0x6568
8000c71c:	6c20                	.insn	2, 0x6c20
8000c71e:	6e65                	.insn	2, 0x6e65
8000c720:	6920                	.insn	2, 0x6920
8000c722:	01002073          	.insn	4, 0x01002073
8000c726:	021c                	.insn	2, 0x021c
8000c728:	0e1d                	.insn	2, 0x0e1d
8000c72a:	0318                	.insn	2, 0x0318
8000c72c:	161e                	.insn	2, 0x161e
8000c72e:	0f14                	.insn	2, 0x0f14
8000c730:	1119                	.insn	2, 0x1119
8000c732:	0804                	.insn	2, 0x0804
8000c734:	1b1f 170d 1315      	.insn	6, 0x1315170d1b1f
8000c73a:	0710                	.insn	2, 0x0710
8000c73c:	0c1a                	.insn	2, 0x0c1a
8000c73e:	0612                	.insn	2, 0x0612
8000c740:	090a050b          	.insn	4, 0x090a050b

8000c744 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.21>:
8000c744:	7361                	.insn	2, 0x7361
8000c746:	74726573          	.insn	4, 0x74726573
8000c74a:	6f69                	.insn	2, 0x6f69
8000c74c:	206e                	.insn	2, 0x206e
8000c74e:	6166                	.insn	2, 0x6166
8000c750:	6c69                	.insn	2, 0x6c69
8000c752:	6465                	.insn	2, 0x6465
8000c754:	203a                	.insn	2, 0x203a
8000c756:	6465                	.insn	2, 0x6465
8000c758:	6c65                	.insn	2, 0x6c65
8000c75a:	6174                	.insn	2, 0x6174
8000c75c:	3e20                	.insn	2, 0x3e20
8000c75e:	203d                	.insn	2, 0x203d
8000c760:	                	.insn	2, 0x6330

8000c761 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.22>:
8000c761:	65726f63          	bltu	tp,s7,8000cdbf <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x337>
8000c765:	6372732f          	.insn	4, 0x6372732f
8000c769:	6d756e2f          	.insn	4, 0x6d756e2f
8000c76d:	7969642f          	.insn	4, 0x7969642f
8000c771:	665f 6f6c 7461      	.insn	6, 0x74616f6c665f
8000c777:	722e                	.insn	2, 0x722e
8000c779:	          	.insn	4, 0x61000073

8000c77c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.23>:
8000c77c:	c761                	.insn	2, 0xc761
8000c77e:	8000                	.insn	2, 0x8000
8000c780:	0019                	.insn	2, 0x0019
8000c782:	0000                	.insn	2, 0x
8000c784:	004c                	.insn	2, 0x004c
8000c786:	0000                	.insn	2, 0x
8000c788:	0009                	.insn	2, 0x0009
	...

8000c78c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.24>:
8000c78c:	c761                	.insn	2, 0xc761
8000c78e:	8000                	.insn	2, 0x8000
8000c790:	0019                	.insn	2, 0x0019
8000c792:	0000                	.insn	2, 0x
8000c794:	004e                	.insn	2, 0x004e
8000c796:	0000                	.insn	2, 0x
8000c798:	0009                	.insn	2, 0x0009
	...

8000c79c <_ZN4core3num7flt2dec8strategy6dragon8POW5TO1617h99816a37407431b1E>:
8000c79c:	6fc1                	.insn	2, 0x6fc1
8000c79e:	86f2                	.insn	2, 0x86f2
8000c7a0:	00000023          	sb	zero,0(zero) # 0 <.Lline_table_start0>

8000c7a4 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO3217he851a7b51f37758fE>:
8000c7a4:	ef81                	.insn	2, 0xef81
8000c7a6:	85ac                	.insn	2, 0x85ac
8000c7a8:	2d6d415b          	.insn	4, 0x2d6d415b
8000c7ac:	04ee                	.insn	2, 0x04ee
	...

8000c7b0 <_ZN4core3num7flt2dec8strategy6dragon8POW5TO6417h3fd4a7811adefa4aE>:
8000c7b0:	1f01                	.insn	2, 0x1f01
8000c7b2:	bf6a                	.insn	2, 0xbf6a
8000c7b4:	ed64                	.insn	2, 0xed64
8000c7b6:	6e38                	.insn	2, 0x6e38
8000c7b8:	97ed                	.insn	2, 0x97ed
8000c7ba:	f9f4daa7          	.insn	4, 0xf9f4daa7
8000c7be:	4f03e93f  	.insn	8, 0x3e0100184f03e93f

8000c7c4 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E>:
8000c7c4:	3e01                	.insn	2, 0x3e01
8000c7c6:	2e95                	.insn	2, 0x2e95
8000c7c8:	9909                	.insn	2, 0x9909
8000c7ca:	03df 38fd 0f15      	.insn	6, 0x0f1538fd03df
8000c7d0:	2374e42f          	.insn	4, 0x2374e42f
8000c7d4:	f5ec                	.insn	2, 0xf5ec
8000c7d6:	dc08d3cf          	.insn	4, 0xdc08d3cf
8000c7da:	c404                	.insn	2, 0xc404
8000c7dc:	b0da                	.insn	2, 0xb0da
8000c7de:	bccd                	.insn	2, 0xbccd
8000c7e0:	7f19                	.insn	2, 0x7f19
8000c7e2:	2603a633          	.insn	4, 0x2603a633
8000c7e6:	e91f 024e 0000      	.insn	6, 0x024ee91f

8000c7ec <_ZN4core3num7flt2dec8strategy6dragon9POW5TO25617ha27145c78327fd11E>:
8000c7ec:	7c01                	.insn	2, 0x7c01
8000c7ee:	982e                	.insn	2, 0x982e
8000c7f0:	bed3875b          	.insn	4, 0xbed3875b
8000c7f4:	9f72                	.insn	2, 0x9f72
8000c7f6:	d8d9                	.insn	2, 0xd8d9
8000c7f8:	12152f87          	.insn	4, 0x12152f87
8000c7fc:	50c6                	.insn	2, 0x50c6
8000c7fe:	6bde                	.insn	2, 0x6bde
8000c800:	6e70                	.insn	2, 0x6e70
8000c802:	cf4a                	.insn	2, 0xcf4a
8000c804:	d595d80f          	.insn	4, 0xd595d80f
8000c808:	716e                	.insn	2, 0x716e
8000c80a:	26b2                	.insn	2, 0x26b2
8000c80c:	66b0                	.insn	2, 0x66b0
8000c80e:	adc6                	.insn	2, 0xadc6
8000c810:	3624                	.insn	2, 0x3624
8000c812:	1d15                	.insn	2, 0x1d15
8000c814:	d35a                	.insn	2, 0xd35a
8000c816:	3c42                	.insn	2, 0x3c42
8000c818:	540e                	.insn	2, 0x540e
8000c81a:	63ff 73c0 cc55 ef17 	.insn	22, 0xf46eeddc80dcc7f755bc28f265f9ef17cc5573c063ff
8000c822:	65f9 28f2 55bc c7f7 
8000c82a:	80dc eddc f46e 
8000c830:	efce                	.insn	2, 0xefce
8000c832:	5fdc                	.insn	2, 0x5fdc
8000c834:	000553f7          	.insn	4, 0x000553f7

8000c838 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.25>:
8000c838:	65726f63          	bltu	tp,s7,8000ce96 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x40e>
8000c83c:	6372732f          	.insn	4, 0x6372732f
8000c840:	6d756e2f          	.insn	4, 0x6d756e2f
8000c844:	746c662f          	.insn	4, 0x746c662f
8000c848:	6432                	.insn	2, 0x6432
8000c84a:	6365                	.insn	2, 0x6365
8000c84c:	7274732f          	.insn	4, 0x7274732f
8000c850:	7461                	.insn	2, 0x7461
8000c852:	6765                	.insn	2, 0x6765
8000c854:	2f79                	.insn	2, 0x2f79
8000c856:	7264                	.insn	2, 0x7264
8000c858:	6761                	.insn	2, 0x6761
8000c85a:	722e6e6f          	jal	t3,800f2f7c <KALLOC_BUFFER+0xe3f7c>
8000c85e:	          	.insn	4, 0x73736173

8000c85f <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.26>:
8000c85f:	7361                	.insn	2, 0x7361
8000c861:	74726573          	.insn	4, 0x74726573
8000c865:	6f69                	.insn	2, 0x6f69
8000c867:	206e                	.insn	2, 0x206e
8000c869:	6166                	.insn	2, 0x6166
8000c86b:	6c69                	.insn	2, 0x6c69
8000c86d:	6465                	.insn	2, 0x6465
8000c86f:	203a                	.insn	2, 0x203a
8000c871:	2e64                	.insn	2, 0x2e64
8000c873:	616d                	.insn	2, 0x616d
8000c875:	746e                	.insn	2, 0x746e
8000c877:	3e20                	.insn	2, 0x3e20
8000c879:	3020                	.insn	2, 0x3020
	...

8000c87c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.27>:
8000c87c:	c838                	.insn	2, 0xc838
8000c87e:	8000                	.insn	2, 0x8000
8000c880:	00000027          	.insn	4, 0x0027
8000c884:	0076                	.insn	2, 0x0076
8000c886:	0000                	.insn	2, 0x
8000c888:	0005                	.insn	2, 0x0005
	...

8000c88c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.28>:
8000c88c:	7361                	.insn	2, 0x7361
8000c88e:	74726573          	.insn	4, 0x74726573
8000c892:	6f69                	.insn	2, 0x6f69
8000c894:	206e                	.insn	2, 0x206e
8000c896:	6166                	.insn	2, 0x6166
8000c898:	6c69                	.insn	2, 0x6c69
8000c89a:	6465                	.insn	2, 0x6465
8000c89c:	203a                	.insn	2, 0x203a
8000c89e:	2e64                	.insn	2, 0x2e64
8000c8a0:	696d                	.insn	2, 0x696d
8000c8a2:	756e                	.insn	2, 0x756e
8000c8a4:	203e2073          	.insn	4, 0x203e2073
8000c8a8:	0030                	.insn	2, 0x0030
	...

8000c8ac <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.29>:
8000c8ac:	c838                	.insn	2, 0xc838
8000c8ae:	8000                	.insn	2, 0x8000
8000c8b0:	00000027          	.insn	4, 0x0027
8000c8b4:	00000077          	.insn	4, 0x0077
8000c8b8:	0005                	.insn	2, 0x0005
	...

8000c8bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.30>:
8000c8bc:	7361                	.insn	2, 0x7361
8000c8be:	74726573          	.insn	4, 0x74726573
8000c8c2:	6f69                	.insn	2, 0x6f69
8000c8c4:	206e                	.insn	2, 0x206e
8000c8c6:	6166                	.insn	2, 0x6166
8000c8c8:	6c69                	.insn	2, 0x6c69
8000c8ca:	6465                	.insn	2, 0x6465
8000c8cc:	203a                	.insn	2, 0x203a
8000c8ce:	2e64                	.insn	2, 0x2e64
8000c8d0:	6c70                	.insn	2, 0x6c70
8000c8d2:	7375                	.insn	2, 0x7375
8000c8d4:	3e20                	.insn	2, 0x3e20
8000c8d6:	3020                	.insn	2, 0x3020

8000c8d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.31>:
8000c8d8:	c838                	.insn	2, 0xc838
8000c8da:	8000                	.insn	2, 0x8000
8000c8dc:	00000027          	.insn	4, 0x0027
8000c8e0:	0078                	.insn	2, 0x0078
8000c8e2:	0000                	.insn	2, 0x
8000c8e4:	0005                	.insn	2, 0x0005
	...

8000c8e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.32>:
8000c8e8:	7361                	.insn	2, 0x7361
8000c8ea:	74726573          	.insn	4, 0x74726573
8000c8ee:	6f69                	.insn	2, 0x6f69
8000c8f0:	206e                	.insn	2, 0x206e
8000c8f2:	6166                	.insn	2, 0x6166
8000c8f4:	6c69                	.insn	2, 0x6c69
8000c8f6:	6465                	.insn	2, 0x6465
8000c8f8:	203a                	.insn	2, 0x203a
8000c8fa:	7562                	.insn	2, 0x7562
8000c8fc:	2e66                	.insn	2, 0x2e66
8000c8fe:	656c                	.insn	2, 0x656c
8000c900:	286e                	.insn	2, 0x286e
8000c902:	2029                	.insn	2, 0x2029
8000c904:	3d3e                	.insn	2, 0x3d3e
8000c906:	4d20                	.insn	2, 0x4d20
8000c908:	5841                	.insn	2, 0x5841
8000c90a:	535f 4749 445f      	.insn	6, 0x445f4749535f
8000c910:	4749                	.insn	2, 0x4749
8000c912:	5449                	.insn	2, 0x5449
8000c914:	00000053          	.insn	4, 0x0053

8000c918 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.33>:
8000c918:	c838                	.insn	2, 0xc838
8000c91a:	8000                	.insn	2, 0x8000
8000c91c:	00000027          	.insn	4, 0x0027
8000c920:	0000007b          	.insn	4, 0x007b
8000c924:	0005                	.insn	2, 0x0005
	...

8000c928 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.34>:
8000c928:	c838                	.insn	2, 0xc838
8000c92a:	8000                	.insn	2, 0x8000
8000c92c:	00000027          	.insn	4, 0x0027
8000c930:	00c2                	.insn	2, 0x00c2
8000c932:	0000                	.insn	2, 0x
8000c934:	0009                	.insn	2, 0x0009
	...

8000c938 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.35>:
8000c938:	c838                	.insn	2, 0xc838
8000c93a:	8000                	.insn	2, 0x8000
8000c93c:	00000027          	.insn	4, 0x0027
8000c940:	000000fb          	.insn	4, 0x00fb
8000c944:	000d                	.insn	2, 0x000d
	...

8000c948 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.36>:
8000c948:	c838                	.insn	2, 0xc838
8000c94a:	8000                	.insn	2, 0x8000
8000c94c:	00000027          	.insn	4, 0x0027
8000c950:	0102                	.insn	2, 0x0102
8000c952:	0000                	.insn	2, 0x
8000c954:	0036                	.insn	2, 0x0036
	...

8000c958 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.37>:
8000c958:	7361                	.insn	2, 0x7361
8000c95a:	74726573          	.insn	4, 0x74726573
8000c95e:	6f69                	.insn	2, 0x6f69
8000c960:	206e                	.insn	2, 0x206e
8000c962:	6166                	.insn	2, 0x6166
8000c964:	6c69                	.insn	2, 0x6c69
8000c966:	6465                	.insn	2, 0x6465
8000c968:	203a                	.insn	2, 0x203a
8000c96a:	2e64                	.insn	2, 0x2e64
8000c96c:	616d                	.insn	2, 0x616d
8000c96e:	746e                	.insn	2, 0x746e
8000c970:	632e                	.insn	2, 0x632e
8000c972:	6568                	.insn	2, 0x6568
8000c974:	64656b63          	bltu	a0,t1,8000cfca <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52+0xa>
8000c978:	735f 6275 6428      	.insn	6, 0x64286275735f
8000c97e:	6d2e                	.insn	2, 0x6d2e
8000c980:	6e69                	.insn	2, 0x6e69
8000c982:	7375                	.insn	2, 0x7375
8000c984:	2e29                	.insn	2, 0x2e29
8000c986:	7369                	.insn	2, 0x7369
8000c988:	735f 6d6f 2865      	.insn	6, 0x28656d6f735f
8000c98e:	0029                	.insn	2, 0x0029

8000c990 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.38>:
8000c990:	c838                	.insn	2, 0xc838
8000c992:	8000                	.insn	2, 0x8000
8000c994:	00000027          	.insn	4, 0x0027
8000c998:	007a                	.insn	2, 0x007a
8000c99a:	0000                	.insn	2, 0x
8000c99c:	0005                	.insn	2, 0x0005
	...

8000c9a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.39>:
8000c9a0:	7361                	.insn	2, 0x7361
8000c9a2:	74726573          	.insn	4, 0x74726573
8000c9a6:	6f69                	.insn	2, 0x6f69
8000c9a8:	206e                	.insn	2, 0x206e
8000c9aa:	6166                	.insn	2, 0x6166
8000c9ac:	6c69                	.insn	2, 0x6c69
8000c9ae:	6465                	.insn	2, 0x6465
8000c9b0:	203a                	.insn	2, 0x203a
8000c9b2:	2e64                	.insn	2, 0x2e64
8000c9b4:	616d                	.insn	2, 0x616d
8000c9b6:	746e                	.insn	2, 0x746e
8000c9b8:	632e                	.insn	2, 0x632e
8000c9ba:	6568                	.insn	2, 0x6568
8000c9bc:	64656b63          	bltu	a0,t1,8000d012 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57+0x2>
8000c9c0:	615f 6464 6428      	.insn	6, 0x64286464615f
8000c9c6:	702e                	.insn	2, 0x702e
8000c9c8:	756c                	.insn	2, 0x756c
8000c9ca:	692e2973          	.insn	4, 0x692e2973
8000c9ce:	6f735f73          	.insn	4, 0x6f735f73
8000c9d2:	656d                	.insn	2, 0x656d
8000c9d4:	2928                	.insn	2, 0x2928
	...

8000c9d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.40>:
8000c9d8:	c838                	.insn	2, 0xc838
8000c9da:	8000                	.insn	2, 0x8000
8000c9dc:	00000027          	.insn	4, 0x0027
8000c9e0:	0079                	.insn	2, 0x0079
8000c9e2:	0000                	.insn	2, 0x
8000c9e4:	0005                	.insn	2, 0x0005
	...

8000c9e8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.41>:
8000c9e8:	c838                	.insn	2, 0xc838
8000c9ea:	8000                	.insn	2, 0x8000
8000c9ec:	00000027          	.insn	4, 0x0027
8000c9f0:	0000010b          	.insn	4, 0x010b
8000c9f4:	0005                	.insn	2, 0x0005
	...

8000c9f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.42>:
8000c9f8:	c838                	.insn	2, 0xc838
8000c9fa:	8000                	.insn	2, 0x8000
8000c9fc:	00000027          	.insn	4, 0x0027
8000ca00:	010c                	.insn	2, 0x010c
8000ca02:	0000                	.insn	2, 0x
8000ca04:	0005                	.insn	2, 0x0005
	...

8000ca08 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.43>:
8000ca08:	c838                	.insn	2, 0xc838
8000ca0a:	8000                	.insn	2, 0x8000
8000ca0c:	00000027          	.insn	4, 0x0027
8000ca10:	010d                	.insn	2, 0x010d
8000ca12:	0000                	.insn	2, 0x
8000ca14:	0005                	.insn	2, 0x0005
	...

8000ca18 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.44>:
8000ca18:	c838                	.insn	2, 0xc838
8000ca1a:	8000                	.insn	2, 0x8000
8000ca1c:	00000027          	.insn	4, 0x0027
8000ca20:	0172                	.insn	2, 0x0172
8000ca22:	0000                	.insn	2, 0x
8000ca24:	0024                	.insn	2, 0x0024
	...

8000ca28 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.45>:
8000ca28:	c838                	.insn	2, 0xc838
8000ca2a:	8000                	.insn	2, 0x8000
8000ca2c:	00000027          	.insn	4, 0x0027
8000ca30:	00000177          	.insn	4, 0x0177
8000ca34:	00000057          	.insn	4, 0x0057

8000ca38 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.46>:
8000ca38:	c838                	.insn	2, 0xc838
8000ca3a:	8000                	.insn	2, 0x8000
8000ca3c:	00000027          	.insn	4, 0x0027
8000ca40:	0184                	.insn	2, 0x0184
8000ca42:	0000                	.insn	2, 0x
8000ca44:	0036                	.insn	2, 0x0036
	...

8000ca48 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.47>:
8000ca48:	c838                	.insn	2, 0xc838
8000ca4a:	8000                	.insn	2, 0x8000
8000ca4c:	00000027          	.insn	4, 0x0027
8000ca50:	0166                	.insn	2, 0x0166
8000ca52:	0000                	.insn	2, 0x
8000ca54:	000d                	.insn	2, 0x000d
	...

8000ca58 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.48>:
8000ca58:	c838                	.insn	2, 0xc838
8000ca5a:	8000                	.insn	2, 0x8000
8000ca5c:	00000027          	.insn	4, 0x0027
8000ca60:	014c                	.insn	2, 0x014c
8000ca62:	0000                	.insn	2, 0x
8000ca64:	0022                	.insn	2, 0x0022
	...

8000ca68 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.49>:
8000ca68:	c838                	.insn	2, 0xc838
8000ca6a:	8000                	.insn	2, 0x8000
8000ca6c:	00000027          	.insn	4, 0x0027
8000ca70:	0000010f          	.insn	4, 0x010f
8000ca74:	0005                	.insn	2, 0x0005
	...

8000ca78 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.50>:
8000ca78:	c838                	.insn	2, 0xc838
8000ca7a:	8000                	.insn	2, 0x8000
8000ca7c:	00000027          	.insn	4, 0x0027
8000ca80:	010e                	.insn	2, 0x010e
8000ca82:	0000                	.insn	2, 0x
8000ca84:	0005                	.insn	2, 0x0005
	...

8000ca88 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E>:
8000ca88:	45df 3d1a cf03      	.insn	6, 0xcf033d1a45df
8000ca8e:	e61a                	.insn	2, 0xe61a
8000ca90:	fbc1                	.insn	2, 0xfbc1
8000ca92:	fecc                	.insn	2, 0xfecc
8000ca94:	0000                	.insn	2, 0x
8000ca96:	0000                	.insn	2, 0x
8000ca98:	c6ca                	.insn	2, 0xc6ca
8000ca9a:	c79a                	.insn	2, 0xc79a
8000ca9c:	ab70fe17          	auipc	t3,0xab70f
8000caa0:	fbdc                	.insn	2, 0xfbdc
8000caa2:	fed4                	.insn	2, 0xfed4
8000caa4:	0000                	.insn	2, 0x
8000caa6:	0000                	.insn	2, 0x
8000caa8:	bebcdc4f          	.insn	4, 0xbebcdc4f
8000caac:	b1fc                	.insn	2, 0xb1fc
8000caae:	fbf6ff77          	.insn	4, 0xfbf6ff77
8000cab2:	fedc                	.insn	2, 0xfedc
8000cab4:	0000                	.insn	2, 0x
8000cab6:	0000                	.insn	2, 0x
8000cab8:	d60c                	.insn	2, 0xd60c
8000caba:	91ef416b          	.insn	4, 0x91ef416b
8000cabe:	be56                	.insn	2, 0xbe56
8000cac0:	fc11                	.insn	2, 0xfc11
8000cac2:	fee4                	.insn	2, 0xfee4
8000cac4:	0000                	.insn	2, 0x
8000cac6:	0000                	.insn	2, 0x
8000cac8:	fc3c                	.insn	2, 0xfc3c
8000caca:	1fad907f fc2c8dd0 	.insn	12, 0xfeecfc2c8dd01fad907f
8000cad2:	0000feec 
8000cad6:	0000                	.insn	2, 0x
8000cad8:	31559a83          	lh	s5,789(a1)
8000cadc:	5c28                	.insn	2, 0x5c28
8000cade:	d351                	.insn	2, 0xd351
8000cae0:	fc46                	.insn	2, 0xfc46
8000cae2:	fef4                	.insn	2, 0xfef4
8000cae4:	0000                	.insn	2, 0x
8000cae6:	0000                	.insn	2, 0x
8000cae8:	c9b5                	.insn	2, 0xc9b5
8000caea:	ada6                	.insn	2, 0xada6
8000caec:	9d71ac8f          	.insn	4, 0x9d71ac8f
8000caf0:	fc61                	.insn	2, 0xfc61
8000caf2:	fefc                	.insn	2, 0xfefc
8000caf4:	0000                	.insn	2, 0x
8000caf6:	0000                	.insn	2, 0x
8000caf8:	23ee8bcb          	.insn	4, 0x23ee8bcb
8000cafc:	ea9c2277          	.insn	4, 0xea9c2277
8000cb00:	ff04fc7b          	.insn	4, 0xff04fc7b
8000cb04:	0000                	.insn	2, 0x
8000cb06:	0000                	.insn	2, 0x
8000cb08:	536d                	.insn	2, 0x536d
8000cb0a:	4078                	.insn	2, 0x4078
8000cb0c:	4991                	.insn	2, 0x4991
8000cb0e:	aecc                	.insn	2, 0xaecc
8000cb10:	fc96                	.insn	2, 0xfc96
8000cb12:	ff0c                	.insn	2, 0xff0c
8000cb14:	0000                	.insn	2, 0x
8000cb16:	0000                	.insn	2, 0x
8000cb18:	5db6ce57          	.insn	4, 0x5db6ce57
8000cb1c:	1279                	.insn	2, 0x1279
8000cb1e:	823c                	.insn	2, 0x823c
8000cb20:	fcb1                	.insn	2, 0xfcb1
8000cb22:	ff14                	.insn	2, 0xff14
8000cb24:	0000                	.insn	2, 0x
8000cb26:	0000                	.insn	2, 0x
8000cb28:	4dfb5637          	lui	a2,0x4dfb5
8000cb2c:	9436                	.insn	2, 0x9436
8000cb2e:	c210                	.insn	2, 0xc210
8000cb30:	ff1cfccb          	.insn	4, 0xff1cfccb
8000cb34:	0000                	.insn	2, 0x
8000cb36:	0000                	.insn	2, 0x
8000cb38:	3848984f          	.insn	4, 0x3848984f
8000cb3c:	9096ea6f          	jal	s4,7ff7b444 <.Lline_table_start2+0x7ff7a096>
8000cb40:	fce6                	.insn	2, 0xfce6
8000cb42:	ff24                	.insn	2, 0xff24
8000cb44:	0000                	.insn	2, 0x
8000cb46:	0000                	.insn	2, 0x
8000cb48:	25823ac7          	.insn	4, 0x25823ac7
8000cb4c:	d77485cb          	.insn	4, 0xd77485cb
8000cb50:	fd00                	.insn	2, 0xfd00
8000cb52:	ff2c                	.insn	2, 0xff2c
8000cb54:	0000                	.insn	2, 0x
8000cb56:	0000                	.insn	2, 0x
8000cb58:	97f4                	.insn	2, 0x97f4
8000cb5a:	cfcd97bf fd1ba086 	.insn	8, 0xfd1ba086cfcd97bf
8000cb62:	ff34                	.insn	2, 0xff34
8000cb64:	0000                	.insn	2, 0x
8000cb66:	0000                	.insn	2, 0x
8000cb68:	ace5                	.insn	2, 0xace5
8000cb6a:	172a                	.insn	2, 0x172a
8000cb6c:	0a98                	.insn	2, 0x0a98
8000cb6e:	ef34                	.insn	2, 0xef34
8000cb70:	fd35                	.insn	2, 0xfd35
8000cb72:	ff3c                	.insn	2, 0xff3c
8000cb74:	0000                	.insn	2, 0x
8000cb76:	0000                	.insn	2, 0x
8000cb78:	b28e                	.insn	2, 0xb28e
8000cb7a:	2a35                	.insn	2, 0x2a35
8000cb7c:	b23867fb          	.insn	4, 0xb23867fb
8000cb80:	fd50                	.insn	2, 0xfd50
8000cb82:	ff44                	.insn	2, 0xff44
8000cb84:	0000                	.insn	2, 0x
8000cb86:	0000                	.insn	2, 0x
8000cb88:	d2c63f3b          	.insn	4, 0xd2c63f3b
8000cb8c:	d4df 84c8 fd6b      	.insn	6, 0xfd6b84c8d4df
8000cb92:	ff4c                	.insn	2, 0xff4c
8000cb94:	0000                	.insn	2, 0x
8000cb96:	0000                	.insn	2, 0x
8000cb98:	cdba                	.insn	2, 0xcdba
8000cb9a:	44271ad3          	.insn	4, 0x44271ad3
8000cb9e:	c5dd                	.insn	2, 0xc5dd
8000cba0:	fd85                	.insn	2, 0xfd85
8000cba2:	ff54                	.insn	2, 0xff54
8000cba4:	0000                	.insn	2, 0x
8000cba6:	0000                	.insn	2, 0x
8000cba8:	c996                	.insn	2, 0xc996
8000cbaa:	bb25                	.insn	2, 0xbb25
8000cbac:	9fce                	.insn	2, 0x9fce
8000cbae:	fda0936b          	.insn	4, 0xfda0936b
8000cbb2:	ff5c                	.insn	2, 0xff5c
8000cbb4:	0000                	.insn	2, 0x
8000cbb6:	0000                	.insn	2, 0x
8000cbb8:	a584                	.insn	2, 0xa584
8000cbba:	7d62                	.insn	2, 0x7d62
8000cbbc:	6c24                	.insn	2, 0x6c24
8000cbbe:	dbac                	.insn	2, 0xdbac
8000cbc0:	fdba                	.insn	2, 0xfdba
8000cbc2:	ff64                	.insn	2, 0xff64
8000cbc4:	0000                	.insn	2, 0x
8000cbc6:	0000                	.insn	2, 0x
8000cbc8:	daf6                	.insn	2, 0xdaf6
8000cbca:	0d5f 6658 a3ab      	.insn	6, 0xa3ab66580d5f
8000cbd0:	fdd5                	.insn	2, 0xfdd5
8000cbd2:	ff6c                	.insn	2, 0xff6c
8000cbd4:	0000                	.insn	2, 0x
8000cbd6:	0000                	.insn	2, 0x
8000cbd8:	f126                	.insn	2, 0xf126
8000cbda:	f893dec3          	.insn	4, 0xf893dec3
8000cbde:	f3e2                	.insn	2, 0xf3e2
8000cbe0:	ff74fdef          	jal	s11,7ff5cbd6 <.Lline_table_start2+0x7ff5b828>
8000cbe4:	0000                	.insn	2, 0x
8000cbe6:	0000                	.insn	2, 0x
8000cbe8:	80b8                	.insn	2, 0x80b8
8000cbea:	aaff ada8 b5b5 fe0a 	.insn	14, 0xff7cfe0ab5b5ada8aaff
8000cbf2:	ff7c 0000 0000 
8000cbf8:	6c7c4a8b          	.insn	4, 0x6c7c4a8b
8000cbfc:	5f05                	.insn	2, 0x5f05
8000cbfe:	8762                	.insn	2, 0x8762
8000cc00:	fe25                	.insn	2, 0xfe25
8000cc02:	ff84                	.insn	2, 0xff84
8000cc04:	0000                	.insn	2, 0x
8000cc06:	0000                	.insn	2, 0x
8000cc08:	34c13053          	.insn	4, 0x34c13053
8000cc0c:	ff60                	.insn	2, 0xff60
8000cc0e:	c9bc                	.insn	2, 0xc9bc
8000cc10:	ff8cfe3f 00000000 	.insn	8, 0xff8cfe3f
8000cc18:	2655                	.insn	2, 0x2655
8000cc1a:	91ba                	.insn	2, 0x91ba
8000cc1c:	858c                	.insn	2, 0x858c
8000cc1e:	964e                	.insn	2, 0x964e
8000cc20:	fe5a                	.insn	2, 0xfe5a
8000cc22:	ff94                	.insn	2, 0xff94
8000cc24:	0000                	.insn	2, 0x
8000cc26:	0000                	.insn	2, 0x
8000cc28:	7ebd                	.insn	2, 0x7ebd
8000cc2a:	7029                	.insn	2, 0x7029
8000cc2c:	7724                	.insn	2, 0x7724
8000cc2e:	dff9                	.insn	2, 0xdff9
8000cc30:	fe74                	.insn	2, 0xfe74
8000cc32:	ff9c                	.insn	2, 0xff9c
8000cc34:	0000                	.insn	2, 0x
8000cc36:	0000                	.insn	2, 0x
8000cc38:	b8e5b88f          	.insn	4, 0xb8e5b88f
8000cc3c:	bd9f a6df fe8f      	.insn	6, 0xfe8fa6dfbd9f
8000cc42:	ffa4                	.insn	2, 0xffa4
8000cc44:	0000                	.insn	2, 0x
8000cc46:	0000                	.insn	2, 0x
8000cc48:	7d94                	.insn	2, 0x7d94
8000cc4a:	8874                	.insn	2, 0x8874
8000cc4c:	f8a95fcf          	.insn	4, 0xf8a95fcf
8000cc50:	fea9                	.insn	2, 0xfea9
8000cc52:	ffac                	.insn	2, 0xffac
8000cc54:	0000                	.insn	2, 0x
8000cc56:	0000                	.insn	2, 0x
8000cc58:	8fa89bcf          	.insn	4, 0x8fa89bcf
8000cc5c:	b9447093          	andi	ra,s0,-1132
8000cc60:	fec4                	.insn	2, 0xfec4
8000cc62:	ffb4                	.insn	2, 0xffb4
8000cc64:	0000                	.insn	2, 0x
8000cc66:	0000                	.insn	2, 0x
8000cc68:	bf0f156b          	.insn	4, 0xbf0f156b
8000cc6c:	f0f8                	.insn	2, 0xf0f8
8000cc6e:	8a08                	.insn	2, 0x8a08
8000cc70:	fedf ffbc 0000      	.insn	6, 0xffbcfedf
8000cc76:	0000                	.insn	2, 0x
8000cc78:	31b6                	.insn	2, 0x31b6
8000cc7a:	6531                	.insn	2, 0x6531
8000cc7c:	2555                	.insn	2, 0x2555
8000cc7e:	cdb0                	.insn	2, 0xcdb0
8000cc80:	fef9                	.insn	2, 0xfef9
8000cc82:	ffc4                	.insn	2, 0xffc4
8000cc84:	0000                	.insn	2, 0x
8000cc86:	0000                	.insn	2, 0x
8000cc88:	7fac                	.insn	2, 0x7fac
8000cc8a:	e2c6d07b          	.insn	4, 0xe2c6d07b
8000cc8e:	ff14993f 0000ffcc 	.insn	8, 0xffccff14993f
8000cc96:	0000                	.insn	2, 0x
8000cc98:	3b06                	.insn	2, 0x3b06
8000cc9a:	10c42a2b          	.insn	4, 0x10c42a2b
8000cc9e:	e45c                	.insn	2, 0xe45c
8000cca0:	ff2e                	.insn	2, 0xff2e
8000cca2:	ffd4                	.insn	2, 0xffd4
8000cca4:	0000                	.insn	2, 0x
8000cca6:	0000                	.insn	2, 0x
8000cca8:	697392d3          	.insn	4, 0x697392d3
8000ccac:	2499                	.insn	2, 0x2499
8000ccae:	aa24                	.insn	2, 0xaa24
8000ccb0:	ff49                	.insn	2, 0xff49
8000ccb2:	ffdc                	.insn	2, 0xffdc
8000ccb4:	0000                	.insn	2, 0x
8000ccb6:	0000                	.insn	2, 0x
8000ccb8:	ca0e                	.insn	2, 0xca0e
8000ccba:	8300                	.insn	2, 0x8300
8000ccbc:	b5f2                	.insn	2, 0xb5f2
8000ccbe:	ff63fd87          	.insn	4, 0xff63fd87
8000ccc2:	ffe4                	.insn	2, 0xffe4
8000ccc4:	0000                	.insn	2, 0x
8000ccc6:	0000                	.insn	2, 0x
8000ccc8:	92111aeb          	.insn	4, 0x92111aeb
8000cccc:	0864                	.insn	2, 0x0864
8000ccce:	bce5                	.insn	2, 0xbce5
8000ccd0:	ff7e                	.insn	2, 0xff7e
8000ccd2:	ffec                	.insn	2, 0xffec
8000ccd4:	0000                	.insn	2, 0x
8000ccd6:	0000                	.insn	2, 0x
8000ccd8:	88cc                	.insn	2, 0x88cc
8000ccda:	6f50                	.insn	2, 0x6f50
8000ccdc:	cc09                	.insn	2, 0xcc09
8000ccde:	8cbc                	.insn	2, 0x8cbc
8000cce0:	ff99                	.insn	2, 0xff99
8000cce2:	fff4                	.insn	2, 0xfff4
8000cce4:	0000                	.insn	2, 0x
8000cce6:	0000                	.insn	2, 0x
8000cce8:	652c                	.insn	2, 0x652c
8000ccea:	e219                	.insn	2, 0xe219
8000ccec:	1758                	.insn	2, 0x1758
8000ccee:	ffb3d1b7          	lui	gp,0xffb3d
8000ccf2:	fffc                	.insn	2, 0xfffc
	...
8000ccfc:	0000                	.insn	2, 0x
8000ccfe:	9c40                	.insn	2, 0x9c40
8000cd00:	ffce                	.insn	2, 0xffce
8000cd02:	0004                	.insn	2, 0x0004
	...
8000cd0c:	a510                	.insn	2, 0xa510
8000cd0e:	e8d4                	.insn	2, 0xe8d4
8000cd10:	ffe8                	.insn	2, 0xffe8
8000cd12:	000c                	.insn	2, 0x000c
8000cd14:	0000                	.insn	2, 0x
8000cd16:	0000                	.insn	2, 0x
8000cd18:	0000                	.insn	2, 0x
8000cd1a:	ac62                	.insn	2, 0xac62
8000cd1c:	ebc5                	.insn	2, 0xebc5
8000cd1e:	ad78                	.insn	2, 0xad78
8000cd20:	00140003          	lb	zero,1(s0)
8000cd24:	0000                	.insn	2, 0x
8000cd26:	0000                	.insn	2, 0x
8000cd28:	0984                	.insn	2, 0x0984
8000cd2a:	f894                	.insn	2, 0xf894
8000cd2c:	3978                	.insn	2, 0x3978
8000cd2e:	001e813f 0000001c 	.insn	8, 0x001c001e813f
8000cd36:	0000                	.insn	2, 0x
8000cd38:	c90715b3          	.insn	4, 0xc90715b3
8000cd3c:	c097ce7b          	.insn	4, 0xc097ce7b
8000cd40:	0038                	.insn	2, 0x0038
8000cd42:	0024                	.insn	2, 0x0024
8000cd44:	0000                	.insn	2, 0x
8000cd46:	0000                	.insn	2, 0x
8000cd48:	5c70                	.insn	2, 0x5c70
8000cd4a:	7bea                	.insn	2, 0x7bea
8000cd4c:	32ce                	.insn	2, 0x32ce
8000cd4e:	8f7e                	.insn	2, 0x8f7e
8000cd50:	002c0053          	.insn	4, 0x002c0053
8000cd54:	0000                	.insn	2, 0x
8000cd56:	0000                	.insn	2, 0x
8000cd58:	8068                	.insn	2, 0x8068
8000cd5a:	abe9                	.insn	2, 0xabe9
8000cd5c:	38a4                	.insn	2, 0x38a4
8000cd5e:	d5d2                	.insn	2, 0xd5d2
8000cd60:	006d                	.insn	2, 0x006d
8000cd62:	0034                	.insn	2, 0x0034
8000cd64:	0000                	.insn	2, 0x
8000cd66:	0000                	.insn	2, 0x
8000cd68:	2245                	.insn	2, 0x2245
8000cd6a:	179a                	.insn	2, 0x179a
8000cd6c:	2726                	.insn	2, 0x2726
8000cd6e:	00889f4f          	.insn	4, 0x00889f4f
8000cd72:	003c                	.insn	2, 0x003c
8000cd74:	0000                	.insn	2, 0x
8000cd76:	0000                	.insn	2, 0x
8000cd78:	d4c4fb27          	.insn	4, 0xd4c4fb27
8000cd7c:	a231                	.insn	2, 0xa231
8000cd7e:	00a2ed63          	bltu	t0,a0,8000cd98 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x310>
8000cd82:	0044                	.insn	2, 0x0044
8000cd84:	0000                	.insn	2, 0x
8000cd86:	0000                	.insn	2, 0x
8000cd88:	ada8                	.insn	2, 0xada8
8000cd8a:	8cc8                	.insn	2, 0x8cc8
8000cd8c:	6538                	.insn	2, 0x6538
8000cd8e:	b0de                	.insn	2, 0xb0de
8000cd90:	00bd                	.insn	2, 0x00bd
8000cd92:	004c                	.insn	2, 0x004c
8000cd94:	0000                	.insn	2, 0x
8000cd96:	0000                	.insn	2, 0x
8000cd98:	1aab65db          	.insn	4, 0x1aab65db
8000cd9c:	088e                	.insn	2, 0x088e
8000cd9e:	00d883c7          	.insn	4, 0x00d883c7
8000cda2:	0054                	.insn	2, 0x0054
8000cda4:	0000                	.insn	2, 0x
8000cda6:	0000                	.insn	2, 0x
8000cda8:	1d9a                	.insn	2, 0x1d9a
8000cdaa:	4271                	.insn	2, 0x4271
8000cdac:	1df9                	.insn	2, 0x1df9
8000cdae:	c45d                	.insn	2, 0xc45d
8000cdb0:	00f2                	.insn	2, 0x00f2
8000cdb2:	005c                	.insn	2, 0x005c
8000cdb4:	0000                	.insn	2, 0x
8000cdb6:	0000                	.insn	2, 0x
8000cdb8:	e758                	.insn	2, 0xe758
8000cdba:	692ca61b          	.insn	4, 0x692ca61b
8000cdbe:	924d                	.insn	2, 0x924d
8000cdc0:	010d                	.insn	2, 0x010d
8000cdc2:	0064                	.insn	2, 0x0064
8000cdc4:	0000                	.insn	2, 0x
8000cdc6:	0000                	.insn	2, 0x
8000cdc8:	8dea                	.insn	2, 0x8dea
8000cdca:	1a70                	.insn	2, 0x1a70
8000cdcc:	ee64                	.insn	2, 0xee64
8000cdce:	da01                	.insn	2, 0xda01
8000cdd0:	006c0127          	.insn	4, 0x006c0127
8000cdd4:	0000                	.insn	2, 0x
8000cdd6:	0000                	.insn	2, 0x
8000cdd8:	774a                	.insn	2, 0x774a
8000cdda:	a3999aef          	jal	s5,7ffa6812 <.Lline_table_start2+0x7ffa5464>
8000cdde:	a26d                	.insn	2, 0xa26d
8000cde0:	0142                	.insn	2, 0x0142
8000cde2:	0074                	.insn	2, 0x0074
8000cde4:	0000                	.insn	2, 0x
8000cde6:	0000                	.insn	2, 0x
8000cde8:	6b85                	.insn	2, 0x6b85
8000cdea:	b47d                	.insn	2, 0xb47d
8000cdec:	f209787b          	.insn	4, 0xf209787b
8000cdf0:	015c                	.insn	2, 0x015c
8000cdf2:	007c                	.insn	2, 0x007c
8000cdf4:	0000                	.insn	2, 0x
8000cdf6:	0000                	.insn	2, 0x
8000cdf8:	79dd1877          	.insn	4, 0x79dd1877
8000cdfc:	e4a1                	.insn	2, 0xe4a1
8000cdfe:	b454                	.insn	2, 0xb454
8000ce00:	00840177          	.insn	4, 0x00840177
8000ce04:	0000                	.insn	2, 0x
8000ce06:	0000                	.insn	2, 0x
8000ce08:	c5c2                	.insn	2, 0xc5c2
8000ce0a:	86925b9b          	.insn	4, 0x86925b9b
8000ce0e:	0192865b          	.insn	4, 0x0192865b
8000ce12:	008c                	.insn	2, 0x008c
8000ce14:	0000                	.insn	2, 0x
8000ce16:	0000                	.insn	2, 0x
8000ce18:	5d3d                	.insn	2, 0x5d3d
8000ce1a:	c896                	.insn	2, 0xc896
8000ce1c:	53c5                	.insn	2, 0x53c5
8000ce1e:	c835                	.insn	2, 0xc835
8000ce20:	01ac                	.insn	2, 0x01ac
8000ce22:	0094                	.insn	2, 0x0094
8000ce24:	0000                	.insn	2, 0x
8000ce26:	0000                	.insn	2, 0x
8000ce28:	fa97a0b3          	.insn	4, 0xfa97a0b3
8000ce2c:	b45c                	.insn	2, 0xb45c
8000ce2e:	952a                	.insn	2, 0x952a
8000ce30:	009c01c7          	.insn	4, 0x009c01c7
8000ce34:	0000                	.insn	2, 0x
8000ce36:	0000                	.insn	2, 0x
8000ce38:	99a05fe3          	blez	s10,8000c7d6 <_ZN4core3num7flt2dec8strategy6dragon9POW5TO12817h9026540719425d78E+0x12>
8000ce3c:	9fbd                	.insn	2, 0x9fbd
8000ce3e:	de46                	.insn	2, 0xde46
8000ce40:	01e1                	.insn	2, 0x01e1
8000ce42:	00a4                	.insn	2, 0x00a4
8000ce44:	0000                	.insn	2, 0x
8000ce46:	0000                	.insn	2, 0x
8000ce48:	8c25                	.insn	2, 0x8c25
8000ce4a:	db39                	.insn	2, 0xdb39
8000ce4c:	c234                	.insn	2, 0xc234
8000ce4e:	01fca59b          	.insn	4, 0x01fca59b
8000ce52:	00ac                	.insn	2, 0x00ac
8000ce54:	0000                	.insn	2, 0x
8000ce56:	0000                	.insn	2, 0x
8000ce58:	9f5c                	.insn	2, 0x9f5c
8000ce5a:	a398                	.insn	2, 0xa398
8000ce5c:	9a72                	.insn	2, 0x9a72
8000ce5e:	f6c6                	.insn	2, 0xf6c6
8000ce60:	0216                	.insn	2, 0x0216
8000ce62:	00b4                	.insn	2, 0x00b4
8000ce64:	0000                	.insn	2, 0x
8000ce66:	0000                	.insn	2, 0x
8000ce68:	bece                	.insn	2, 0xbece
8000ce6a:	54e9                	.insn	2, 0x54e9
8000ce6c:	b7dcbf53          	.insn	4, 0xb7dcbf53
8000ce70:	0231                	.insn	2, 0x0231
8000ce72:	00bc                	.insn	2, 0x00bc
8000ce74:	0000                	.insn	2, 0x
8000ce76:	0000                	.insn	2, 0x
8000ce78:	41e2                	.insn	2, 0x41e2
8000ce7a:	f222                	.insn	2, 0xf222
8000ce7c:	88fcf317          	auipc	t1,0x88fcf
8000ce80:	024c                	.insn	2, 0x024c
8000ce82:	00c4                	.insn	2, 0x00c4
8000ce84:	0000                	.insn	2, 0x
8000ce86:	0000                	.insn	2, 0x
8000ce88:	78a5                	.insn	2, 0x78a5
8000ce8a:	d35c                	.insn	2, 0xd35c
8000ce8c:	cc20ce9b          	.insn	4, 0xcc20ce9b
8000ce90:	0266                	.insn	2, 0x0266
8000ce92:	00cc                	.insn	2, 0x00cc
8000ce94:	0000                	.insn	2, 0x
8000ce96:	0000                	.insn	2, 0x
8000ce98:	53df 7b21 5af3      	.insn	6, 0x5af37b2153df
8000ce9e:	9816                	.insn	2, 0x9816
8000cea0:	0281                	.insn	2, 0x0281
8000cea2:	00d4                	.insn	2, 0x00d4
8000cea4:	0000                	.insn	2, 0x
8000cea6:	0000                	.insn	2, 0x
8000cea8:	303a                	.insn	2, 0x303a
8000ceaa:	971f b5dc e2a0      	.insn	6, 0xe2a0b5dc971f
8000ceb0:	00dc029b          	.insn	4, 0x00dc029b
8000ceb4:	0000                	.insn	2, 0x
8000ceb6:	0000                	.insn	2, 0x
8000ceb8:	b396                	.insn	2, 0xb396
8000ceba:	d1535ce3          	bge	t1,s5,8000cbd2 <_ZN4core3num7flt2dec8strategy5grisu12CACHED_POW1017h26d25e3c67901c33E+0x14a>
8000cebe:	a8d9                	.insn	2, 0xa8d9
8000cec0:	02b6                	.insn	2, 0x02b6
8000cec2:	00e4                	.insn	2, 0x00e4
8000cec4:	0000                	.insn	2, 0x
8000cec6:	0000                	.insn	2, 0x
8000cec8:	443c                	.insn	2, 0x443c
8000ceca:	7cd9a4a7          	.insn	4, 0x7cd9a4a7
8000cece:	02d0fb9b          	.insn	4, 0x02d0fb9b
8000ced2:	00ec                	.insn	2, 0x00ec
8000ced4:	0000                	.insn	2, 0x
8000ced6:	0000                	.insn	2, 0x
8000ced8:	4410                	.insn	2, 0x4410
8000ceda:	a7a4                	.insn	2, 0xa7a4
8000cedc:	4c4c                	.insn	2, 0x4c4c
8000cede:	bb76                	.insn	2, 0xbb76
8000cee0:	00f402eb          	.insn	4, 0x00f402eb
8000cee4:	0000                	.insn	2, 0x
8000cee6:	0000                	.insn	2, 0x
8000cee8:	9c1a                	.insn	2, 0x9c1a
8000ceea:	b640                	.insn	2, 0xb640
8000ceec:	8bab8eef          	jal	t4,7ffc4fa6 <.Lline_table_start2+0x7ffc3bf8>
8000cef0:	0306                	.insn	2, 0x0306
8000cef2:	00fc                	.insn	2, 0x00fc
8000cef4:	0000                	.insn	2, 0x
8000cef6:	0000                	.insn	2, 0x
8000cef8:	842c                	.insn	2, 0x842c
8000cefa:	ef10a657          	.insn	4, 0xef10a657
8000cefe:	d01f 0320 0104      	.insn	6, 0x01040320d01f
8000cf04:	0000                	.insn	2, 0x
8000cf06:	0000                	.insn	2, 0x
8000cf08:	3129                	.insn	2, 0x3129
8000cf0a:	e991                	.insn	2, 0xe991
8000cf0c:	a4e5                	.insn	2, 0xa4e5
8000cf0e:	9b10                	.insn	2, 0x9b10
8000cf10:	010c033b          	.insn	4, 0x010c033b
8000cf14:	0000                	.insn	2, 0x
8000cf16:	0000                	.insn	2, 0x
8000cf18:	0c9d                	.insn	2, 0x0c9d
8000cf1a:	a19c                	.insn	2, 0xa19c
8000cf1c:	e7109bfb          	.insn	4, 0xe7109bfb
8000cf20:	0355                	.insn	2, 0x0355
8000cf22:	0114                	.insn	2, 0x0114
8000cf24:	0000                	.insn	2, 0x
8000cf26:	0000                	.insn	2, 0x
8000cf28:	f429                	.insn	2, 0xf429
8000cf2a:	20d9623b          	.insn	4, 0x20d9623b
8000cf2e:	ac28                	.insn	2, 0xac28
8000cf30:	0370                	.insn	2, 0x0370
8000cf32:	011c                	.insn	2, 0x011c
8000cf34:	0000                	.insn	2, 0x
8000cf36:	0000                	.insn	2, 0x
8000cf38:	cf85                	.insn	2, 0xcf85
8000cf3a:	4b5e7aa7          	.insn	4, 0x4b5e7aa7
8000cf3e:	8044                	.insn	2, 0x8044
8000cf40:	0124038b          	.insn	4, 0x0124038b
8000cf44:	0000                	.insn	2, 0x
8000cf46:	0000                	.insn	2, 0x
8000cf48:	dd2d                	.insn	2, 0xdd2d
8000cf4a:	03ac                	.insn	2, 0x03ac
8000cf4c:	e440                	.insn	2, 0xe440
8000cf4e:	bf21                	.insn	2, 0xbf21
8000cf50:	03a5                	.insn	2, 0x03a5
8000cf52:	012c                	.insn	2, 0x012c
8000cf54:	0000                	.insn	2, 0x
8000cf56:	0000                	.insn	2, 0x
8000cf58:	5e44ff8f          	.insn	4, 0x5e44ff8f
8000cf5c:	8e679c2f          	.insn	4, 0x8e679c2f
8000cf60:	03c0                	.insn	2, 0x03c0
8000cf62:	0134                	.insn	2, 0x0134
8000cf64:	0000                	.insn	2, 0x
8000cf66:	0000                	.insn	2, 0x
8000cf68:	b841                	.insn	2, 0xb841
8000cf6a:	9c8c                	.insn	2, 0x9c8c
8000cf6c:	179d                	.insn	2, 0x179d
8000cf6e:	03dad433          	.insn	4, 0x03dad433
8000cf72:	013c                	.insn	2, 0x013c
8000cf74:	0000                	.insn	2, 0x
8000cf76:	0000                	.insn	2, 0x
8000cf78:	1ba9                	.insn	2, 0x1ba9
8000cf7a:	db92b4e3          	.insn	4, 0xdb92b4e3
8000cf7e:	9e19                	.insn	2, 0x9e19
8000cf80:	03f5                	.insn	2, 0x03f5
8000cf82:	0144                	.insn	2, 0x0144
8000cf84:	0000                	.insn	2, 0x
8000cf86:	0000                	.insn	2, 0x
8000cf88:	77d9                	.insn	2, 0x77d9
8000cf8a:	badf bf6e eb96      	.insn	6, 0xeb96bf6ebadf
8000cf90:	014c040f          	.insn	4, 0x014c040f
8000cf94:	0000                	.insn	2, 0x
	...

8000cf98 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.51>:
8000cf98:	65726f63          	bltu	tp,s7,8000d5f6 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x6a>
8000cf9c:	6372732f          	.insn	4, 0x6372732f
8000cfa0:	6d756e2f          	.insn	4, 0x6d756e2f
8000cfa4:	746c662f          	.insn	4, 0x746c662f
8000cfa8:	6432                	.insn	2, 0x6432
8000cfaa:	6365                	.insn	2, 0x6365
8000cfac:	7274732f          	.insn	4, 0x7274732f
8000cfb0:	7461                	.insn	2, 0x7461
8000cfb2:	6765                	.insn	2, 0x6765
8000cfb4:	2f79                	.insn	2, 0x2f79
8000cfb6:	73697267          	.insn	4, 0x73697267
8000cfba:	2e75                	.insn	2, 0x2e75
8000cfbc:	7372                	.insn	2, 0x7372
	...

8000cfc0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.52>:
8000cfc0:	cf98                	.insn	2, 0xcf98
8000cfc2:	8000                	.insn	2, 0x8000
8000cfc4:	0026                	.insn	2, 0x0026
8000cfc6:	0000                	.insn	2, 0x
8000cfc8:	007d                	.insn	2, 0x007d
8000cfca:	0000                	.insn	2, 0x
8000cfcc:	0015                	.insn	2, 0x0015
	...

8000cfd0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.53>:
8000cfd0:	cf98                	.insn	2, 0xcf98
8000cfd2:	8000                	.insn	2, 0x8000
8000cfd4:	0026                	.insn	2, 0x0026
8000cfd6:	0000                	.insn	2, 0x
8000cfd8:	00a9                	.insn	2, 0x00a9
8000cfda:	0000                	.insn	2, 0x
8000cfdc:	0005                	.insn	2, 0x0005
	...

8000cfe0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.54>:
8000cfe0:	cf98                	.insn	2, 0xcf98
8000cfe2:	8000                	.insn	2, 0x8000
8000cfe4:	0026                	.insn	2, 0x0026
8000cfe6:	0000                	.insn	2, 0x
8000cfe8:	00aa                	.insn	2, 0x00aa
8000cfea:	0000                	.insn	2, 0x
8000cfec:	0005                	.insn	2, 0x0005
	...

8000cff0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.55>:
8000cff0:	cf98                	.insn	2, 0xcf98
8000cff2:	8000                	.insn	2, 0x8000
8000cff4:	0026                	.insn	2, 0x0026
8000cff6:	0000                	.insn	2, 0x
8000cff8:	000000ab          	.insn	4, 0x00ab
8000cffc:	0005                	.insn	2, 0x0005
	...

8000d000 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.56>:
8000d000:	cf98                	.insn	2, 0xcf98
8000d002:	8000                	.insn	2, 0x8000
8000d004:	0026                	.insn	2, 0x0026
8000d006:	0000                	.insn	2, 0x
8000d008:	00ae                	.insn	2, 0x00ae
8000d00a:	0000                	.insn	2, 0x
8000d00c:	0005                	.insn	2, 0x0005
	...

8000d010 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.57>:
8000d010:	7361                	.insn	2, 0x7361
8000d012:	74726573          	.insn	4, 0x74726573
8000d016:	6f69                	.insn	2, 0x6f69
8000d018:	206e                	.insn	2, 0x206e
8000d01a:	6166                	.insn	2, 0x6166
8000d01c:	6c69                	.insn	2, 0x6c69
8000d01e:	6465                	.insn	2, 0x6465
8000d020:	203a                	.insn	2, 0x203a
8000d022:	2e64                	.insn	2, 0x2e64
8000d024:	616d                	.insn	2, 0x616d
8000d026:	746e                	.insn	2, 0x746e
8000d028:	2b20                	.insn	2, 0x2b20
8000d02a:	6420                	.insn	2, 0x6420
8000d02c:	702e                	.insn	2, 0x702e
8000d02e:	756c                	.insn	2, 0x756c
8000d030:	203c2073          	.insn	4, 0x203c2073
8000d034:	3128                	.insn	2, 0x3128
8000d036:	3c20                	.insn	2, 0x3c20
8000d038:	203c                	.insn	2, 0x203c
8000d03a:	3136                	.insn	2, 0x3136
8000d03c:	0029                	.insn	2, 0x0029
	...

8000d040 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.58>:
8000d040:	cf98                	.insn	2, 0xcf98
8000d042:	8000                	.insn	2, 0x8000
8000d044:	0026                	.insn	2, 0x0026
8000d046:	0000                	.insn	2, 0x
8000d048:	000000af          	.insn	4, 0x00af
8000d04c:	0005                	.insn	2, 0x0005
	...

8000d050 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.59>:
8000d050:	cf98                	.insn	2, 0xcf98
8000d052:	8000                	.insn	2, 0x8000
8000d054:	0026                	.insn	2, 0x0026
8000d056:	0000                	.insn	2, 0x
8000d058:	010a                	.insn	2, 0x010a
8000d05a:	0000                	.insn	2, 0x
8000d05c:	0011                	.insn	2, 0x0011
	...

8000d060 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.60>:
8000d060:	cf98                	.insn	2, 0xcf98
8000d062:	8000                	.insn	2, 0x8000
8000d064:	0026                	.insn	2, 0x0026
8000d066:	0000                	.insn	2, 0x
8000d068:	010d                	.insn	2, 0x010d
8000d06a:	0000                	.insn	2, 0x
8000d06c:	0009                	.insn	2, 0x0009
	...

8000d070 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.61>:
8000d070:	cf98                	.insn	2, 0xcf98
8000d072:	8000                	.insn	2, 0x8000
8000d074:	0026                	.insn	2, 0x0026
8000d076:	0000                	.insn	2, 0x
8000d078:	0140                	.insn	2, 0x0140
8000d07a:	0000                	.insn	2, 0x
8000d07c:	0009                	.insn	2, 0x0009
	...

8000d080 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.62>:
8000d080:	cf98                	.insn	2, 0xcf98
8000d082:	8000                	.insn	2, 0x8000
8000d084:	0026                	.insn	2, 0x0026
8000d086:	0000                	.insn	2, 0x
8000d088:	00ad                	.insn	2, 0x00ad
8000d08a:	0000                	.insn	2, 0x
8000d08c:	0005                	.insn	2, 0x0005
	...

8000d090 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.63>:
8000d090:	cf98                	.insn	2, 0xcf98
8000d092:	8000                	.insn	2, 0x8000
8000d094:	0026                	.insn	2, 0x0026
8000d096:	0000                	.insn	2, 0x
8000d098:	00ac                	.insn	2, 0x00ac
8000d09a:	0000                	.insn	2, 0x
8000d09c:	0005                	.insn	2, 0x0005
	...

8000d0a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.64>:
8000d0a0:	7361                	.insn	2, 0x7361
8000d0a2:	74726573          	.insn	4, 0x74726573
8000d0a6:	6f69                	.insn	2, 0x6f69
8000d0a8:	206e                	.insn	2, 0x206e
8000d0aa:	6166                	.insn	2, 0x6166
8000d0ac:	6c69                	.insn	2, 0x6c69
8000d0ae:	6465                	.insn	2, 0x6465
8000d0b0:	203a                	.insn	2, 0x203a
8000d0b2:	6221                	.insn	2, 0x6221
8000d0b4:	6675                	.insn	2, 0x6675
8000d0b6:	692e                	.insn	2, 0x692e
8000d0b8:	6d655f73          	.insn	4, 0x6d655f73
8000d0bc:	7470                	.insn	2, 0x7470
8000d0be:	2879                	.insn	2, 0x2879
8000d0c0:	0029                	.insn	2, 0x0029
	...

8000d0c4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.65>:
8000d0c4:	cf98                	.insn	2, 0xcf98
8000d0c6:	8000                	.insn	2, 0x8000
8000d0c8:	0026                	.insn	2, 0x0026
8000d0ca:	0000                	.insn	2, 0x
8000d0cc:	01dc                	.insn	2, 0x01dc
8000d0ce:	0000                	.insn	2, 0x
8000d0d0:	0005                	.insn	2, 0x0005
	...

8000d0d4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.66>:
8000d0d4:	7361                	.insn	2, 0x7361
8000d0d6:	74726573          	.insn	4, 0x74726573
8000d0da:	6f69                	.insn	2, 0x6f69
8000d0dc:	206e                	.insn	2, 0x206e
8000d0de:	6166                	.insn	2, 0x6166
8000d0e0:	6c69                	.insn	2, 0x6c69
8000d0e2:	6465                	.insn	2, 0x6465
8000d0e4:	203a                	.insn	2, 0x203a
8000d0e6:	2e64                	.insn	2, 0x2e64
8000d0e8:	616d                	.insn	2, 0x616d
8000d0ea:	746e                	.insn	2, 0x746e
8000d0ec:	3c20                	.insn	2, 0x3c20
8000d0ee:	2820                	.insn	2, 0x2820
8000d0f0:	2031                	.insn	2, 0x2031
8000d0f2:	3c3c                	.insn	2, 0x3c3c
8000d0f4:	3620                	.insn	2, 0x3620
8000d0f6:	2931                	.insn	2, 0x2931

8000d0f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.67>:
8000d0f8:	cf98                	.insn	2, 0xcf98
8000d0fa:	8000                	.insn	2, 0x8000
8000d0fc:	0026                	.insn	2, 0x0026
8000d0fe:	0000                	.insn	2, 0x
8000d100:	01dd                	.insn	2, 0x01dd
8000d102:	0000                	.insn	2, 0x
8000d104:	0005                	.insn	2, 0x0005
	...

8000d108 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.68>:
8000d108:	cf98                	.insn	2, 0xcf98
8000d10a:	8000                	.insn	2, 0x8000
8000d10c:	0026                	.insn	2, 0x0026
8000d10e:	0000                	.insn	2, 0x
8000d110:	01de                	.insn	2, 0x01de
8000d112:	0000                	.insn	2, 0x
8000d114:	0005                	.insn	2, 0x0005
	...

8000d118 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.69>:
8000d118:	0001                	.insn	2, 0x0001
8000d11a:	0000                	.insn	2, 0x
8000d11c:	000a                	.insn	2, 0x000a
8000d11e:	0000                	.insn	2, 0x
8000d120:	0064                	.insn	2, 0x0064
8000d122:	0000                	.insn	2, 0x
8000d124:	03e8                	.insn	2, 0x03e8
8000d126:	0000                	.insn	2, 0x
8000d128:	2710                	.insn	2, 0x2710
8000d12a:	0000                	.insn	2, 0x
8000d12c:	86a0                	.insn	2, 0x86a0
8000d12e:	0001                	.insn	2, 0x0001
8000d130:	4240                	.insn	2, 0x4240
8000d132:	9680000f          	.insn	4, 0x9680000f
8000d136:	0098                	.insn	2, 0x0098
8000d138:	e100                	.insn	2, 0xe100
8000d13a:	05f5                	.insn	2, 0x05f5
8000d13c:	ca00                	.insn	2, 0xca00
8000d13e:	3b9a                	.insn	2, 0x3b9a

8000d140 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.70>:
8000d140:	cf98                	.insn	2, 0xcf98
8000d142:	8000                	.insn	2, 0x8000
8000d144:	0026                	.insn	2, 0x0026
8000d146:	0000                	.insn	2, 0x
8000d148:	00000233          	add	tp,zero,zero
8000d14c:	0011                	.insn	2, 0x0011
	...

8000d150 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.71>:
8000d150:	cf98                	.insn	2, 0xcf98
8000d152:	8000                	.insn	2, 0x8000
8000d154:	0026                	.insn	2, 0x0026
8000d156:	0000                	.insn	2, 0x
8000d158:	0236                	.insn	2, 0x0236
8000d15a:	0000                	.insn	2, 0x
8000d15c:	0009                	.insn	2, 0x0009
	...

8000d160 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.72>:
8000d160:	cf98                	.insn	2, 0xcf98
8000d162:	8000                	.insn	2, 0x8000
8000d164:	0026                	.insn	2, 0x0026
8000d166:	0000                	.insn	2, 0x
8000d168:	026c                	.insn	2, 0x026c
8000d16a:	0000                	.insn	2, 0x
8000d16c:	0009                	.insn	2, 0x0009
	...

8000d170 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.73>:
8000d170:	cf98                	.insn	2, 0xcf98
8000d172:	8000                	.insn	2, 0x8000
8000d174:	0026                	.insn	2, 0x0026
8000d176:	0000                	.insn	2, 0x
8000d178:	000002e3          	beqz	zero,8000d97c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3f0>
8000d17c:	004e                	.insn	2, 0x004e
	...

8000d180 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74>:
8000d180:	cf98                	.insn	2, 0xcf98
8000d182:	8000                	.insn	2, 0x8000
8000d184:	0026                	.insn	2, 0x0026
8000d186:	0000                	.insn	2, 0x
8000d188:	000002ef          	jal	t0,8000d188 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.74+0x8>
8000d18c:	004a                	.insn	2, 0x004a
	...

8000d190 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.75>:
8000d190:	cf98                	.insn	2, 0xcf98
8000d192:	8000                	.insn	2, 0x8000
8000d194:	0026                	.insn	2, 0x0026
8000d196:	0000                	.insn	2, 0x
8000d198:	02cc                	.insn	2, 0x02cc
8000d19a:	0000                	.insn	2, 0x
8000d19c:	004a                	.insn	2, 0x004a
	...

8000d1a0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.76>:
8000d1a0:	65726f63          	bltu	tp,s7,8000d7fe <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x272>
8000d1a4:	6372732f          	.insn	4, 0x6372732f
8000d1a8:	6d756e2f          	.insn	4, 0x6d756e2f
8000d1ac:	746c662f          	.insn	4, 0x746c662f
8000d1b0:	6432                	.insn	2, 0x6432
8000d1b2:	6365                	.insn	2, 0x6365
8000d1b4:	646f6d2f          	.insn	4, 0x646f6d2f
8000d1b8:	722e                	.insn	2, 0x722e
8000d1ba:	          	.insn	4, 0xd1a00073

8000d1bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.77>:
8000d1bc:	d1a0                	.insn	2, 0xd1a0
8000d1be:	8000                	.insn	2, 0x8000
8000d1c0:	0000001b          	.insn	4, 0x001b
8000d1c4:	000000bb          	.insn	4, 0x00bb
8000d1c8:	0005                	.insn	2, 0x0005
	...

8000d1cc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.78>:
8000d1cc:	7361                	.insn	2, 0x7361
8000d1ce:	74726573          	.insn	4, 0x74726573
8000d1d2:	6f69                	.insn	2, 0x6f69
8000d1d4:	206e                	.insn	2, 0x206e
8000d1d6:	6166                	.insn	2, 0x6166
8000d1d8:	6c69                	.insn	2, 0x6c69
8000d1da:	6465                	.insn	2, 0x6465
8000d1dc:	203a                	.insn	2, 0x203a
8000d1de:	7562                	.insn	2, 0x7562
8000d1e0:	5b66                	.insn	2, 0x5b66
8000d1e2:	5d30                	.insn	2, 0x5d30
8000d1e4:	3e20                	.insn	2, 0x3e20
8000d1e6:	6220                	.insn	2, 0x6220
8000d1e8:	00273027          	.insn	4, 0x00273027

8000d1ec <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.79>:
8000d1ec:	d1a0                	.insn	2, 0xd1a0
8000d1ee:	8000                	.insn	2, 0x8000
8000d1f0:	0000001b          	.insn	4, 0x001b
8000d1f4:	00bc                	.insn	2, 0x00bc
8000d1f6:	0000                	.insn	2, 0x
8000d1f8:	0005                	.insn	2, 0x0005
	...

8000d1fc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.80>:
8000d1fc:	7361                	.insn	2, 0x7361
8000d1fe:	74726573          	.insn	4, 0x74726573
8000d202:	6f69                	.insn	2, 0x6f69
8000d204:	206e                	.insn	2, 0x206e
8000d206:	6166                	.insn	2, 0x6166
8000d208:	6c69                	.insn	2, 0x6c69
8000d20a:	6465                	.insn	2, 0x6465
8000d20c:	203a                	.insn	2, 0x203a
8000d20e:	6170                	.insn	2, 0x6170
8000d210:	7472                	.insn	2, 0x7472
8000d212:	656c2e73          	.insn	4, 0x656c2e73
8000d216:	286e                	.insn	2, 0x286e
8000d218:	2029                	.insn	2, 0x2029
8000d21a:	3d3e                	.insn	2, 0x3d3e
8000d21c:	3420                	.insn	2, 0x3420
	...

8000d220 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.81>:
8000d220:	d1a0                	.insn	2, 0xd1a0
8000d222:	8000                	.insn	2, 0x8000
8000d224:	0000001b          	.insn	4, 0x001b
8000d228:	00bd                	.insn	2, 0x00bd
8000d22a:	0000                	.insn	2, 0x
8000d22c:	0005                	.insn	2, 0x0005
	...

8000d230 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.82>:
8000d230:	                	.insn	2, 0x302e

8000d231 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.83>:
8000d231:	2e30                	.insn	2, 0x2e30

8000d233 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.92>:
8000d233:	                	.insn	2, 0x2b2d

8000d234 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.93>:
8000d234:	          	.insn	4, 0x4e614e2b

8000d235 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.94>:
8000d235:	614e                	.insn	2, 0x614e
8000d237:	                	.insn	2, 0x694e

8000d238 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.95>:
8000d238:	6e69                	.insn	2, 0x6e69
8000d23a:	                	.insn	2, 0x3066

8000d23b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.96>:
8000d23b:	                	.insn	2, 0x6130

8000d23c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.106>:
8000d23c:	7361                	.insn	2, 0x7361
8000d23e:	74726573          	.insn	4, 0x74726573
8000d242:	6f69                	.insn	2, 0x6f69
8000d244:	206e                	.insn	2, 0x206e
8000d246:	6166                	.insn	2, 0x6166
8000d248:	6c69                	.insn	2, 0x6c69
8000d24a:	6465                	.insn	2, 0x6465
8000d24c:	203a                	.insn	2, 0x203a
8000d24e:	7562                	.insn	2, 0x7562
8000d250:	2e66                	.insn	2, 0x2e66
8000d252:	656c                	.insn	2, 0x656c
8000d254:	286e                	.insn	2, 0x286e
8000d256:	2029                	.insn	2, 0x2029
8000d258:	3d3e                	.insn	2, 0x3d3e
8000d25a:	6d20                	.insn	2, 0x6d20
8000d25c:	7861                	.insn	2, 0x7861
8000d25e:	656c                	.insn	2, 0x656c
8000d260:	006e                	.insn	2, 0x006e
	...

8000d264 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.107>:
8000d264:	d1a0                	.insn	2, 0xd1a0
8000d266:	8000                	.insn	2, 0x8000
8000d268:	0000001b          	.insn	4, 0x001b
8000d26c:	027e                	.insn	2, 0x027e
8000d26e:	0000                	.insn	2, 0x
8000d270:	000d                	.insn	2, 0x000d
	...

8000d274 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.138>:
8000d274:	2820                	.insn	2, 0x2820
8000d276:	2031                	.insn	2, 0x2031
8000d278:	3c3c                	.insn	2, 0x3c3c
8000d27a:	                	.insn	2, 0x2920

8000d27b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.139>:
8000d27b:	                	.insn	2, 0x0129

8000d27c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.140>:
8000d27c:	0001                	.insn	2, 0x0001
8000d27e:	0000                	.insn	2, 0x
8000d280:	0000                	.insn	2, 0x
8000d282:	0000                	.insn	2, 0x
8000d284:	d274                	.insn	2, 0xd274
8000d286:	8000                	.insn	2, 0x8000
8000d288:	00000007          	.insn	4, 0x0007
8000d28c:	8000d27b          	.insn	4, 0x8000d27b
8000d290:	0001                	.insn	2, 0x0001
	...

8000d294 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.210>:
8000d294:	                	.insn	2, 0x633a

8000d295 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.220>:
8000d295:	6c6c6163          	bltu	s8,t1,8000d957 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3cb>
8000d299:	6465                	.insn	2, 0x6465
8000d29b:	6020                	.insn	2, 0x6020
8000d29d:	6974704f          	.insn	4, 0x6974704f
8000d2a1:	3a3a6e6f          	jal	t3,800b3e43 <KALLOC_BUFFER+0xa4e43>
8000d2a5:	6e75                	.insn	2, 0x6e75
8000d2a7:	70617277          	.insn	4, 0x70617277
8000d2ab:	2928                	.insn	2, 0x2928
8000d2ad:	2060                	.insn	2, 0x2060
8000d2af:	61206e6f          	jal	t3,800138c1 <KALLOC_BUFFER+0x48c1>
8000d2b3:	6020                	.insn	2, 0x6020
8000d2b5:	6f4e                	.insn	2, 0x6f4e
8000d2b7:	656e                	.insn	2, 0x656e
8000d2b9:	2060                	.insn	2, 0x2060
8000d2bb:	6176                	.insn	2, 0x6176
8000d2bd:	756c                	.insn	2, 0x756c
8000d2bf:	                	.insn	2, 0x0165

8000d2c0 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.221>:
8000d2c0:	0001                	.insn	2, 0x0001
8000d2c2:	0000                	.insn	2, 0x
8000d2c4:	0000                	.insn	2, 0x
8000d2c6:	0000                	.insn	2, 0x
8000d2c8:	d294                	.insn	2, 0xd294
8000d2ca:	8000                	.insn	2, 0x8000
8000d2cc:	0001                	.insn	2, 0x0001
8000d2ce:	0000                	.insn	2, 0x
8000d2d0:	d294                	.insn	2, 0xd294
8000d2d2:	8000                	.insn	2, 0x8000
8000d2d4:	0001                	.insn	2, 0x0001
	...

8000d2d8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.222>:
8000d2d8:	6170                	.insn	2, 0x6170
8000d2da:	696e                	.insn	2, 0x696e
8000d2dc:	64656b63          	bltu	a0,t1,8000d932 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x3a6>
8000d2e0:	6120                	.insn	2, 0x6120
8000d2e2:	2074                	.insn	2, 0x2074

8000d2e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.223>:
8000d2e4:	0a3a                	.insn	2, 0x0a3a

8000d2e6 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.230>:
8000d2e6:	6220                	.insn	2, 0x6220
8000d2e8:	7475                	.insn	2, 0x7475
8000d2ea:	7420                	.insn	2, 0x7420
8000d2ec:	6568                	.insn	2, 0x6568
8000d2ee:	6920                	.insn	2, 0x6920
8000d2f0:	646e                	.insn	2, 0x646e
8000d2f2:	7865                	.insn	2, 0x7865
8000d2f4:	6920                	.insn	2, 0x6920
8000d2f6:	          	.insn	4, 0xc7042073

8000d2f8 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.231>:
8000d2f8:	c704                	.insn	2, 0xc704
8000d2fa:	8000                	.insn	2, 0x8000
8000d2fc:	0020                	.insn	2, 0x0020
8000d2fe:	0000                	.insn	2, 0x
8000d300:	d2e6                	.insn	2, 0xd2e6
8000d302:	8000                	.insn	2, 0x8000
8000d304:	0012                	.insn	2, 0x0012
	...

8000d308 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.238>:
8000d308:	0000                	.insn	2, 0x
8000d30a:	0000                	.insn	2, 0x
8000d30c:	0004                	.insn	2, 0x0004
8000d30e:	0000                	.insn	2, 0x
8000d310:	0004                	.insn	2, 0x0004
8000d312:	0000                	.insn	2, 0x
8000d314:	9dc4                	.insn	2, 0x9dc4
8000d316:	8000                	.insn	2, 0x8000

8000d318 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.240>:
8000d318:	3d3d                	.insn	2, 0x3d3d

8000d31a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.241>:
8000d31a:	3d21                	.insn	2, 0x3d21

8000d31c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.242>:
8000d31c:	616d                	.insn	2, 0x616d
8000d31e:	6374                	.insn	2, 0x6374
8000d320:	6568                	.insn	2, 0x6568
8000d322:	          	.insn	4, 0x69722073

8000d323 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.244>:
8000d323:	7220                	.insn	2, 0x7220
8000d325:	6769                	.insn	2, 0x6769
8000d327:	7468                	.insn	2, 0x7468
8000d329:	2060                	.insn	2, 0x2060
8000d32b:	6166                	.insn	2, 0x6166
8000d32d:	6c69                	.insn	2, 0x6c69
8000d32f:	6465                	.insn	2, 0x6465
8000d331:	200a                	.insn	2, 0x200a
8000d333:	6c20                	.insn	2, 0x6c20
8000d335:	6665                	.insn	2, 0x6665
8000d337:	3a74                	.insn	2, 0x3a74
8000d339:	                	.insn	2, 0x0a20

8000d33a <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.245>:
8000d33a:	200a                	.insn	2, 0x200a
8000d33c:	6972                	.insn	2, 0x6972
8000d33e:	3a746867          	.insn	4, 0x3a746867
8000d342:	0020                	.insn	2, 0x0020

8000d344 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.246>:
8000d344:	c060                	.insn	2, 0xc060
8000d346:	8000                	.insn	2, 0x8000
8000d348:	0010                	.insn	2, 0x0010
8000d34a:	0000                	.insn	2, 0x
8000d34c:	8000d323          	.insn	4, 0x8000d323
8000d350:	00000017          	auipc	zero,0x0
8000d354:	d33a                	.insn	2, 0xd33a
8000d356:	8000                	.insn	2, 0x8000
8000d358:	0009                	.insn	2, 0x0009
	...

8000d35c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.248>:
8000d35c:	200a                	.insn	2, 0x200a
8000d35e:	6c20                	.insn	2, 0x6c20
8000d360:	6665                	.insn	2, 0x6665
8000d362:	3a74                	.insn	2, 0x3a74
8000d364:	0020                	.insn	2, 0x0020
	...

8000d368 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.249>:
8000d368:	c060                	.insn	2, 0xc060
8000d36a:	8000                	.insn	2, 0x8000
8000d36c:	0010                	.insn	2, 0x0010
8000d36e:	0000                	.insn	2, 0x
8000d370:	c0a0                	.insn	2, 0xc0a0
8000d372:	8000                	.insn	2, 0x8000
8000d374:	0010                	.insn	2, 0x0010
8000d376:	0000                	.insn	2, 0x
8000d378:	d35c                	.insn	2, 0xd35c
8000d37a:	8000                	.insn	2, 0x8000
8000d37c:	0009                	.insn	2, 0x0009
8000d37e:	0000                	.insn	2, 0x
8000d380:	d33a                	.insn	2, 0xd33a
8000d382:	8000                	.insn	2, 0x8000
8000d384:	0009                	.insn	2, 0x0009
	...

8000d388 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.250>:
8000d388:	203a                	.insn	2, 0x203a
	...

8000d38c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.251>:
8000d38c:	0001                	.insn	2, 0x0001
8000d38e:	0000                	.insn	2, 0x
8000d390:	0000                	.insn	2, 0x
8000d392:	0000                	.insn	2, 0x
8000d394:	d388                	.insn	2, 0xd388
8000d396:	8000                	.insn	2, 0x8000
8000d398:	0002                	.insn	2, 0x0002
	...

8000d39c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.252>:
8000d39c:	0000                	.insn	2, 0x
8000d39e:	0000                	.insn	2, 0x
8000d3a0:	000c                	.insn	2, 0x000c
8000d3a2:	0000                	.insn	2, 0x
8000d3a4:	0004                	.insn	2, 0x0004
8000d3a6:	0000                	.insn	2, 0x
8000d3a8:	7298                	.insn	2, 0x7298
8000d3aa:	8000                	.insn	2, 0x8000
8000d3ac:	7534                	.insn	2, 0x7534
8000d3ae:	8000                	.insn	2, 0x8000
8000d3b0:	7e3c                	.insn	2, 0x7e3c
8000d3b2:	8000                	.insn	2, 0x8000

8000d3b4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.254>:
8000d3b4:	7b20                	.insn	2, 0x7b20
8000d3b6:	                	.insn	2, 0x2c20

8000d3b7 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.255>:
8000d3b7:	202c                	.insn	2, 0x202c

8000d3b9 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.256>:
8000d3b9:	7b20                	.insn	2, 0x7b20
8000d3bb:	                	.insn	2, 0x2c0a

8000d3bc <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.257>:
8000d3bc:	0a2c                	.insn	2, 0x0a2c

8000d3be <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.261>:
8000d3be:	                	.insn	2, 0x207d

8000d3bf <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.262>:
8000d3bf:	7d20                	.insn	2, 0x7d20

8000d3c1 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.290>:
8000d3c1:	7830                	.insn	2, 0x7830

8000d3c3 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.292>:
8000d3c3:	3030                	.insn	2, 0x3030
8000d3c5:	3130                	.insn	2, 0x3130
8000d3c7:	3230                	.insn	2, 0x3230
8000d3c9:	3330                	.insn	2, 0x3330
8000d3cb:	3430                	.insn	2, 0x3430
8000d3cd:	3530                	.insn	2, 0x3530
8000d3cf:	3630                	.insn	2, 0x3630
8000d3d1:	3730                	.insn	2, 0x3730
8000d3d3:	3830                	.insn	2, 0x3830
8000d3d5:	3930                	.insn	2, 0x3930
8000d3d7:	3031                	.insn	2, 0x3031
8000d3d9:	3131                	.insn	2, 0x3131
8000d3db:	3231                	.insn	2, 0x3231
8000d3dd:	3331                	.insn	2, 0x3331
8000d3df:	3431                	.insn	2, 0x3431
8000d3e1:	3531                	.insn	2, 0x3531
8000d3e3:	3631                	.insn	2, 0x3631
8000d3e5:	3731                	.insn	2, 0x3731
8000d3e7:	3831                	.insn	2, 0x3831
8000d3e9:	3931                	.insn	2, 0x3931
8000d3eb:	3032                	.insn	2, 0x3032
8000d3ed:	3132                	.insn	2, 0x3132
8000d3ef:	3232                	.insn	2, 0x3232
8000d3f1:	3332                	.insn	2, 0x3332
8000d3f3:	3432                	.insn	2, 0x3432
8000d3f5:	3532                	.insn	2, 0x3532
8000d3f7:	3632                	.insn	2, 0x3632
8000d3f9:	3732                	.insn	2, 0x3732
8000d3fb:	3832                	.insn	2, 0x3832
8000d3fd:	3932                	.insn	2, 0x3932
8000d3ff:	31333033          	.insn	4, 0x31333033
8000d403:	33333233          	.insn	4, 0x33333233
8000d407:	35333433          	.insn	4, 0x35333433
8000d40b:	37333633          	.insn	4, 0x37333633
8000d40f:	39333833          	.insn	4, 0x39333833
8000d413:	3034                	.insn	2, 0x3034
8000d415:	3134                	.insn	2, 0x3134
8000d417:	3234                	.insn	2, 0x3234
8000d419:	3334                	.insn	2, 0x3334
8000d41b:	3434                	.insn	2, 0x3434
8000d41d:	3534                	.insn	2, 0x3534
8000d41f:	3634                	.insn	2, 0x3634
8000d421:	3734                	.insn	2, 0x3734
8000d423:	3834                	.insn	2, 0x3834
8000d425:	3934                	.insn	2, 0x3934
8000d427:	3035                	.insn	2, 0x3035
8000d429:	3135                	.insn	2, 0x3135
8000d42b:	3235                	.insn	2, 0x3235
8000d42d:	3335                	.insn	2, 0x3335
8000d42f:	3435                	.insn	2, 0x3435
8000d431:	3535                	.insn	2, 0x3535
8000d433:	3635                	.insn	2, 0x3635
8000d435:	3735                	.insn	2, 0x3735
8000d437:	3835                	.insn	2, 0x3835
8000d439:	3935                	.insn	2, 0x3935
8000d43b:	3036                	.insn	2, 0x3036
8000d43d:	3136                	.insn	2, 0x3136
8000d43f:	3236                	.insn	2, 0x3236
8000d441:	3336                	.insn	2, 0x3336
8000d443:	3436                	.insn	2, 0x3436
8000d445:	3536                	.insn	2, 0x3536
8000d447:	3636                	.insn	2, 0x3636
8000d449:	3736                	.insn	2, 0x3736
8000d44b:	3836                	.insn	2, 0x3836
8000d44d:	3936                	.insn	2, 0x3936
8000d44f:	31373037          	lui	zero,0x31373
8000d453:	33373237          	lui	tp,0x33373
8000d457:	35373437          	lui	s0,0x35373
8000d45b:	37373637          	lui	a2,0x37373
8000d45f:	39373837          	lui	a6,0x39373
8000d463:	3038                	.insn	2, 0x3038
8000d465:	3138                	.insn	2, 0x3138
8000d467:	3238                	.insn	2, 0x3238
8000d469:	3338                	.insn	2, 0x3338
8000d46b:	3438                	.insn	2, 0x3438
8000d46d:	3538                	.insn	2, 0x3538
8000d46f:	3638                	.insn	2, 0x3638
8000d471:	3738                	.insn	2, 0x3738
8000d473:	3838                	.insn	2, 0x3838
8000d475:	3938                	.insn	2, 0x3938
8000d477:	3039                	.insn	2, 0x3039
8000d479:	3139                	.insn	2, 0x3139
8000d47b:	3239                	.insn	2, 0x3239
8000d47d:	3339                	.insn	2, 0x3339
8000d47f:	3439                	.insn	2, 0x3439
8000d481:	3539                	.insn	2, 0x3539
8000d483:	3639                	.insn	2, 0x3639
8000d485:	3739                	.insn	2, 0x3739
8000d487:	3839                	.insn	2, 0x3839
8000d489:	3939                	.insn	2, 0x3939

8000d48b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.299>:
8000d48b:	3030                	.insn	2, 0x3030
8000d48d:	3030                	.insn	2, 0x3030
8000d48f:	3030                	.insn	2, 0x3030
8000d491:	3030                	.insn	2, 0x3030
8000d493:	3030                	.insn	2, 0x3030
8000d495:	3030                	.insn	2, 0x3030
8000d497:	3030                	.insn	2, 0x3030
8000d499:	3030                	.insn	2, 0x3030
8000d49b:	3030                	.insn	2, 0x3030
8000d49d:	3030                	.insn	2, 0x3030
8000d49f:	3030                	.insn	2, 0x3030
8000d4a1:	3030                	.insn	2, 0x3030
8000d4a3:	3030                	.insn	2, 0x3030
8000d4a5:	3030                	.insn	2, 0x3030
8000d4a7:	3030                	.insn	2, 0x3030
8000d4a9:	3030                	.insn	2, 0x3030
8000d4ab:	3030                	.insn	2, 0x3030
8000d4ad:	3030                	.insn	2, 0x3030
8000d4af:	3030                	.insn	2, 0x3030
8000d4b1:	3030                	.insn	2, 0x3030
8000d4b3:	3030                	.insn	2, 0x3030
8000d4b5:	3030                	.insn	2, 0x3030
8000d4b7:	3030                	.insn	2, 0x3030
8000d4b9:	3030                	.insn	2, 0x3030
8000d4bb:	3030                	.insn	2, 0x3030
8000d4bd:	3030                	.insn	2, 0x3030
8000d4bf:	3030                	.insn	2, 0x3030
8000d4c1:	3030                	.insn	2, 0x3030
8000d4c3:	3030                	.insn	2, 0x3030
8000d4c5:	3030                	.insn	2, 0x3030
8000d4c7:	3030                	.insn	2, 0x3030
8000d4c9:	3030                	.insn	2, 0x3030

8000d4cb <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.413>:
8000d4cb:	65726f63          	bltu	tp,s7,8000db29 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469+0x59d>
8000d4cf:	6372732f          	.insn	4, 0x6372732f
8000d4d3:	6d756e2f          	.insn	4, 0x6d756e2f
8000d4d7:	6769622f          	.insn	4, 0x6769622f
8000d4db:	756e                	.insn	2, 0x756e
8000d4dd:	2e6d                	.insn	2, 0x2e6d
8000d4df:	7372                	.insn	2, 0x7372
8000d4e1:	0000                	.insn	2, 0x
	...

8000d4e4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.415>:
8000d4e4:	8000d4cb          	.insn	4, 0x8000d4cb
8000d4e8:	0016                	.insn	2, 0x0016
8000d4ea:	0000                	.insn	2, 0x
8000d4ec:	01aa                	.insn	2, 0x01aa
8000d4ee:	0000                	.insn	2, 0x
8000d4f0:	0001                	.insn	2, 0x0001
	...

8000d4f4 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.416>:
8000d4f4:	7361                	.insn	2, 0x7361
8000d4f6:	74726573          	.insn	4, 0x74726573
8000d4fa:	6f69                	.insn	2, 0x6f69
8000d4fc:	206e                	.insn	2, 0x206e
8000d4fe:	6166                	.insn	2, 0x6166
8000d500:	6c69                	.insn	2, 0x6c69
8000d502:	6465                	.insn	2, 0x6465
8000d504:	203a                	.insn	2, 0x203a
8000d506:	6f6e                	.insn	2, 0x6f6e
8000d508:	6f62                	.insn	2, 0x6f62
8000d50a:	7272                	.insn	2, 0x7272
8000d50c:	          	jal	a4,80024c42 <KALLOC_BUFFER+0x15c42>

8000d50e <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.417>:
8000d50e:	7361                	.insn	2, 0x7361
8000d510:	74726573          	.insn	4, 0x74726573
8000d514:	6f69                	.insn	2, 0x6f69
8000d516:	206e                	.insn	2, 0x206e
8000d518:	6166                	.insn	2, 0x6166
8000d51a:	6c69                	.insn	2, 0x6c69
8000d51c:	6465                	.insn	2, 0x6465
8000d51e:	203a                	.insn	2, 0x203a
8000d520:	6964                	.insn	2, 0x6964
8000d522:	73746967          	.insn	4, 0x73746967
8000d526:	3c20                	.insn	2, 0x3c20
8000d528:	3420                	.insn	2, 0x3420
8000d52a:	                	.insn	2, 0x6130

8000d52b <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.418>:
8000d52b:	7361                	.insn	2, 0x7361
8000d52d:	74726573          	.insn	4, 0x74726573
8000d531:	6f69                	.insn	2, 0x6f69
8000d533:	206e                	.insn	2, 0x206e
8000d535:	6166                	.insn	2, 0x6166
8000d537:	6c69                	.insn	2, 0x6c69
8000d539:	6465                	.insn	2, 0x6465
8000d53b:	203a                	.insn	2, 0x203a
8000d53d:	6568746f          	jal	s0,80094b93 <KALLOC_BUFFER+0x85b93>
8000d541:	2072                	.insn	2, 0x2072
8000d543:	203e                	.insn	2, 0x203e
8000d545:	                	.insn	2, 0x6130

8000d546 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.432>:
8000d546:	7461                	.insn	2, 0x7461
8000d548:	6574                	.insn	2, 0x6574
8000d54a:	706d                	.insn	2, 0x706d
8000d54c:	2074                	.insn	2, 0x2074
8000d54e:	6f74                	.insn	2, 0x6f74
8000d550:	6420                	.insn	2, 0x6420
8000d552:	7669                	.insn	2, 0x7669
8000d554:	6469                	.insn	2, 0x6469
8000d556:	2065                	.insn	2, 0x2065
8000d558:	7962                	.insn	2, 0x7962
8000d55a:	7a20                	.insn	2, 0x7a20
8000d55c:	7265                	.insn	2, 0x7265
8000d55e:	          	j	7ff6dab2 <.Lline_table_start2+0x7ff6c704>

8000d560 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.433>:
8000d560:	d546                	.insn	2, 0xd546
8000d562:	8000                	.insn	2, 0x8000
8000d564:	0019                	.insn	2, 0x0019
	...

8000d568 <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.466>:
8000d568:	6f20                	.insn	2, 0x6f20
8000d56a:	7475                	.insn	2, 0x7475
8000d56c:	6f20                	.insn	2, 0x6f20
8000d56e:	2066                	.insn	2, 0x2066
8000d570:	6172                	.insn	2, 0x6172
8000d572:	676e                	.insn	2, 0x676e
8000d574:	2065                	.insn	2, 0x2065
8000d576:	6f66                	.insn	2, 0x6f66
8000d578:	2072                	.insn	2, 0x2072
8000d57a:	63696c73          	.insn	4, 0x63696c73
8000d57e:	2065                	.insn	2, 0x2065
8000d580:	6c20666f          	jal	a2,80013c42 <KALLOC_BUFFER+0x4c42>
8000d584:	6e65                	.insn	2, 0x6e65
8000d586:	20687467          	.insn	4, 0x20687467
	...

8000d58c <.Lanon.89c2b4078d80f99b5bf635ef4aa3cfe0.469>:
8000d58c:	c080                	.insn	2, 0xc080
8000d58e:	8000                	.insn	2, 0x8000
8000d590:	0010                	.insn	2, 0x0010
8000d592:	0000                	.insn	2, 0x
8000d594:	d568                	.insn	2, 0xd568
8000d596:	8000                	.insn	2, 0x8000
8000d598:	0022                	.insn	2, 0x0022
	...

Disassembly of section .eh_frame:

8000d5a0 <__bss_start-0xa08>:
8000d5a0:	0010                	.insn	2, 0x0010
8000d5a2:	0000                	.insn	2, 0x
8000d5a4:	0000                	.insn	2, 0x
8000d5a6:	0000                	.insn	2, 0x
8000d5a8:	7a01                	.insn	2, 0x7a01
8000d5aa:	0052                	.insn	2, 0x0052
8000d5ac:	7c01                	.insn	2, 0x7c01
8000d5ae:	0101                	.insn	2, 0x0101
8000d5b0:	00020c1b          	.insn	4, 0x00020c1b
8000d5b4:	0010                	.insn	2, 0x0010
8000d5b6:	0000                	.insn	2, 0x
8000d5b8:	0018                	.insn	2, 0x0018
8000d5ba:	0000                	.insn	2, 0x
8000d5bc:	4d28                	.insn	2, 0x4d28
8000d5be:	ffff                	.insn	2, 0xffff
8000d5c0:	0008                	.insn	2, 0x0008
8000d5c2:	0000                	.insn	2, 0x
8000d5c4:	0000                	.insn	2, 0x
8000d5c6:	0000                	.insn	2, 0x
8000d5c8:	001c                	.insn	2, 0x001c
8000d5ca:	0000                	.insn	2, 0x
8000d5cc:	002c                	.insn	2, 0x002c
8000d5ce:	0000                	.insn	2, 0x
8000d5d0:	4d1c                	.insn	2, 0x4d1c
8000d5d2:	ffff                	.insn	2, 0xffff
8000d5d4:	0044                	.insn	2, 0x0044
8000d5d6:	0000                	.insn	2, 0x
8000d5d8:	4400                	.insn	2, 0x4400
8000d5da:	200e                	.insn	2, 0x200e
8000d5dc:	8148                	.insn	2, 0x8148
8000d5de:	8801                	.insn	2, 0x8801
8000d5e0:	4402                	.insn	2, 0x4402
8000d5e2:	080c                	.insn	2, 0x080c
8000d5e4:	0000                	.insn	2, 0x
8000d5e6:	0000                	.insn	2, 0x
8000d5e8:	001c                	.insn	2, 0x001c
8000d5ea:	0000                	.insn	2, 0x
8000d5ec:	004c                	.insn	2, 0x004c
8000d5ee:	0000                	.insn	2, 0x
8000d5f0:	4d40                	.insn	2, 0x4d40
8000d5f2:	ffff                	.insn	2, 0xffff
8000d5f4:	0028                	.insn	2, 0x0028
8000d5f6:	0000                	.insn	2, 0x
8000d5f8:	4400                	.insn	2, 0x4400
8000d5fa:	100e                	.insn	2, 0x100e
8000d5fc:	8148                	.insn	2, 0x8148
8000d5fe:	8801                	.insn	2, 0x8801
8000d600:	4402                	.insn	2, 0x4402
8000d602:	080c                	.insn	2, 0x080c
8000d604:	0000                	.insn	2, 0x
8000d606:	0000                	.insn	2, 0x
8000d608:	001c                	.insn	2, 0x001c
8000d60a:	0000                	.insn	2, 0x
8000d60c:	006c                	.insn	2, 0x006c
8000d60e:	0000                	.insn	2, 0x
8000d610:	4d48                	.insn	2, 0x4d48
8000d612:	ffff                	.insn	2, 0xffff
8000d614:	0024                	.insn	2, 0x0024
8000d616:	0000                	.insn	2, 0x
8000d618:	4400                	.insn	2, 0x4400
8000d61a:	100e                	.insn	2, 0x100e
8000d61c:	8148                	.insn	2, 0x8148
8000d61e:	8801                	.insn	2, 0x8801
8000d620:	4402                	.insn	2, 0x4402
8000d622:	080c                	.insn	2, 0x080c
8000d624:	0000                	.insn	2, 0x
8000d626:	0000                	.insn	2, 0x
8000d628:	0030                	.insn	2, 0x0030
8000d62a:	0000                	.insn	2, 0x
8000d62c:	008c                	.insn	2, 0x008c
8000d62e:	0000                	.insn	2, 0x
8000d630:	4d4c                	.insn	2, 0x4d4c
8000d632:	ffff                	.insn	2, 0xffff
8000d634:	0ea8                	.insn	2, 0x0ea8
8000d636:	0000                	.insn	2, 0x
8000d638:	4400                	.insn	2, 0x4400
8000d63a:	800e                	.insn	2, 0x800e
8000d63c:	7402                	.insn	2, 0x7402
8000d63e:	0181                	.insn	2, 0x0181
8000d640:	0288                	.insn	2, 0x0288
8000d642:	0389                	.insn	2, 0x0389
8000d644:	0492                	.insn	2, 0x0492
8000d646:	06940593          	addi	a1,s0,105 # 35373069 <.Lline_table_start2+0x35371cbb>
8000d64a:	0795                	.insn	2, 0x0795
8000d64c:	0896                	.insn	2, 0x0896
8000d64e:	0a980997          	auipc	s3,0xa980
8000d652:	0b99                	.insn	2, 0x0b99
8000d654:	0c9a                	.insn	2, 0x0c9a
8000d656:	0c440d9b          	.insn	4, 0x0c440d9b
8000d65a:	0008                	.insn	2, 0x0008
8000d65c:	0030                	.insn	2, 0x0030
8000d65e:	0000                	.insn	2, 0x
8000d660:	00c0                	.insn	2, 0x00c0
8000d662:	0000                	.insn	2, 0x
8000d664:	5bc0                	.insn	2, 0x5bc0
8000d666:	ffff                	.insn	2, 0xffff
8000d668:	1034                	.insn	2, 0x1034
8000d66a:	0000                	.insn	2, 0x
8000d66c:	4400                	.insn	2, 0x4400
8000d66e:	800e                	.insn	2, 0x800e
8000d670:	0181740b          	.insn	4, 0x0181740b
8000d674:	0288                	.insn	2, 0x0288
8000d676:	0389                	.insn	2, 0x0389
8000d678:	0492                	.insn	2, 0x0492
8000d67a:	06940593          	addi	a1,s0,105
8000d67e:	0795                	.insn	2, 0x0795
8000d680:	0896                	.insn	2, 0x0896
8000d682:	0a980997          	auipc	s3,0xa980
8000d686:	0b99                	.insn	2, 0x0b99
8000d688:	0c9a                	.insn	2, 0x0c9a
8000d68a:	0c440d9b          	.insn	4, 0x0c440d9b
8000d68e:	0008                	.insn	2, 0x0008
8000d690:	0030                	.insn	2, 0x0030
8000d692:	0000                	.insn	2, 0x
8000d694:	00f4                	.insn	2, 0x00f4
8000d696:	0000                	.insn	2, 0x
8000d698:	6bc0                	.insn	2, 0x6bc0
8000d69a:	ffff                	.insn	2, 0xffff
8000d69c:	0ee4                	.insn	2, 0x0ee4
8000d69e:	0000                	.insn	2, 0x
8000d6a0:	4400                	.insn	2, 0x4400
8000d6a2:	900e                	.insn	2, 0x900e
8000d6a4:	01817407          	.insn	4, 0x01817407
8000d6a8:	0288                	.insn	2, 0x0288
8000d6aa:	0389                	.insn	2, 0x0389
8000d6ac:	0492                	.insn	2, 0x0492
8000d6ae:	06940593          	addi	a1,s0,105
8000d6b2:	0795                	.insn	2, 0x0795
8000d6b4:	0896                	.insn	2, 0x0896
8000d6b6:	0a980997          	auipc	s3,0xa980
8000d6ba:	0b99                	.insn	2, 0x0b99
8000d6bc:	0c9a                	.insn	2, 0x0c9a
8000d6be:	0c440d9b          	.insn	4, 0x0c440d9b
8000d6c2:	0008                	.insn	2, 0x0008
8000d6c4:	0030                	.insn	2, 0x0030
8000d6c6:	0000                	.insn	2, 0x
8000d6c8:	0128                	.insn	2, 0x0128
8000d6ca:	0000                	.insn	2, 0x
8000d6cc:	7a70                	.insn	2, 0x7a70
8000d6ce:	ffff                	.insn	2, 0xffff
8000d6d0:	0fe0                	.insn	2, 0x0fe0
8000d6d2:	0000                	.insn	2, 0x
8000d6d4:	4400                	.insn	2, 0x4400
8000d6d6:	c00e                	.insn	2, 0xc00e
8000d6d8:	7401                	.insn	2, 0x7401
8000d6da:	0181                	.insn	2, 0x0181
8000d6dc:	0288                	.insn	2, 0x0288
8000d6de:	0389                	.insn	2, 0x0389
8000d6e0:	0492                	.insn	2, 0x0492
8000d6e2:	06940593          	addi	a1,s0,105
8000d6e6:	0795                	.insn	2, 0x0795
8000d6e8:	0896                	.insn	2, 0x0896
8000d6ea:	0a980997          	auipc	s3,0xa980
8000d6ee:	0b99                	.insn	2, 0x0b99
8000d6f0:	0c9a                	.insn	2, 0x0c9a
8000d6f2:	0c440d9b          	.insn	4, 0x0c440d9b
8000d6f6:	0008                	.insn	2, 0x0008
8000d6f8:	0030                	.insn	2, 0x0030
8000d6fa:	0000                	.insn	2, 0x
8000d6fc:	015c                	.insn	2, 0x015c
8000d6fe:	0000                	.insn	2, 0x
8000d700:	8a1c                	.insn	2, 0x8a1c
8000d702:	ffff                	.insn	2, 0xffff
8000d704:	07fc                	.insn	2, 0x07fc
8000d706:	0000                	.insn	2, 0x
8000d708:	4400                	.insn	2, 0x4400
8000d70a:	700e                	.insn	2, 0x700e
8000d70c:	8174                	.insn	2, 0x8174
8000d70e:	8801                	.insn	2, 0x8801
8000d710:	8902                	.insn	2, 0x8902
8000d712:	93049203          	lh	tp,-1744(s1) # 7fbff930 <.Lline_table_start2+0x7fbfe582>
8000d716:	9405                	.insn	2, 0x9405
8000d718:	9506                	.insn	2, 0x9506
8000d71a:	97089607          	.insn	4, 0x97089607
8000d71e:	9809                	.insn	2, 0x9809
8000d720:	990a                	.insn	2, 0x990a
8000d722:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000d726:	440d                	.insn	2, 0x440d
8000d728:	080c                	.insn	2, 0x080c
8000d72a:	0000                	.insn	2, 0x
8000d72c:	002c                	.insn	2, 0x002c
8000d72e:	0000                	.insn	2, 0x
8000d730:	0190                	.insn	2, 0x0190
8000d732:	0000                	.insn	2, 0x
8000d734:	91e4                	.insn	2, 0x91e4
8000d736:	ffff                	.insn	2, 0xffff
8000d738:	02e4                	.insn	2, 0x02e4
8000d73a:	0000                	.insn	2, 0x
8000d73c:	4400                	.insn	2, 0x4400
8000d73e:	300e                	.insn	2, 0x300e
8000d740:	8168                	.insn	2, 0x8168
8000d742:	8801                	.insn	2, 0x8801
8000d744:	8902                	.insn	2, 0x8902
8000d746:	93049203          	lh	tp,-1744(s1)
8000d74a:	9405                	.insn	2, 0x9405
8000d74c:	9506                	.insn	2, 0x9506
8000d74e:	97089607          	.insn	4, 0x97089607
8000d752:	9809                	.insn	2, 0x9809
8000d754:	440a                	.insn	2, 0x440a
8000d756:	080c                	.insn	2, 0x080c
8000d758:	0000                	.insn	2, 0x
8000d75a:	0000                	.insn	2, 0x
8000d75c:	001c                	.insn	2, 0x001c
8000d75e:	0000                	.insn	2, 0x
8000d760:	01c0                	.insn	2, 0x01c0
8000d762:	0000                	.insn	2, 0x
8000d764:	9498                	.insn	2, 0x9498
8000d766:	ffff                	.insn	2, 0xffff
8000d768:	0174                	.insn	2, 0x0174
8000d76a:	0000                	.insn	2, 0x
8000d76c:	4400                	.insn	2, 0x4400
8000d76e:	100e                	.insn	2, 0x100e
8000d770:	8148                	.insn	2, 0x8148
8000d772:	8801                	.insn	2, 0x8801
8000d774:	4402                	.insn	2, 0x4402
8000d776:	080c                	.insn	2, 0x080c
8000d778:	0000                	.insn	2, 0x
8000d77a:	0000                	.insn	2, 0x
8000d77c:	001c                	.insn	2, 0x001c
8000d77e:	0000                	.insn	2, 0x
8000d780:	01e0                	.insn	2, 0x01e0
8000d782:	0000                	.insn	2, 0x
8000d784:	95ec                	.insn	2, 0x95ec
8000d786:	ffff                	.insn	2, 0xffff
8000d788:	00c8                	.insn	2, 0x00c8
8000d78a:	0000                	.insn	2, 0x
8000d78c:	4400                	.insn	2, 0x4400
8000d78e:	400e                	.insn	2, 0x400e
8000d790:	814c                	.insn	2, 0x814c
8000d792:	8801                	.insn	2, 0x8801
8000d794:	8902                	.insn	2, 0x8902
8000d796:	080c4403          	lbu	s0,128(s8)
8000d79a:	0000                	.insn	2, 0x
8000d79c:	001c                	.insn	2, 0x001c
8000d79e:	0000                	.insn	2, 0x
8000d7a0:	0200                	.insn	2, 0x0200
8000d7a2:	0000                	.insn	2, 0x
8000d7a4:	9694                	.insn	2, 0x9694
8000d7a6:	ffff                	.insn	2, 0xffff
8000d7a8:	0028                	.insn	2, 0x0028
8000d7aa:	0000                	.insn	2, 0x
8000d7ac:	4400                	.insn	2, 0x4400
8000d7ae:	100e                	.insn	2, 0x100e
8000d7b0:	8148                	.insn	2, 0x8148
8000d7b2:	8801                	.insn	2, 0x8801
8000d7b4:	4402                	.insn	2, 0x4402
8000d7b6:	080c                	.insn	2, 0x080c
8000d7b8:	0000                	.insn	2, 0x
8000d7ba:	0000                	.insn	2, 0x
8000d7bc:	0024                	.insn	2, 0x0024
8000d7be:	0000                	.insn	2, 0x
8000d7c0:	0220                	.insn	2, 0x0220
8000d7c2:	0000                	.insn	2, 0x
8000d7c4:	969c                	.insn	2, 0x969c
8000d7c6:	ffff                	.insn	2, 0xffff
8000d7c8:	014c                	.insn	2, 0x014c
8000d7ca:	0000                	.insn	2, 0x
8000d7cc:	4400                	.insn	2, 0x4400
8000d7ce:	500e                	.insn	2, 0x500e
8000d7d0:	815c                	.insn	2, 0x815c
8000d7d2:	8801                	.insn	2, 0x8801
8000d7d4:	8902                	.insn	2, 0x8902
8000d7d6:	93049203          	lh	tp,-1744(s1)
8000d7da:	9405                	.insn	2, 0x9405
8000d7dc:	9506                	.insn	2, 0x9506
8000d7de:	080c4407          	.insn	4, 0x080c4407
8000d7e2:	0000                	.insn	2, 0x
8000d7e4:	001c                	.insn	2, 0x001c
8000d7e6:	0000                	.insn	2, 0x
8000d7e8:	0248                	.insn	2, 0x0248
8000d7ea:	0000                	.insn	2, 0x
8000d7ec:	97c0                	.insn	2, 0x97c0
8000d7ee:	ffff                	.insn	2, 0xffff
8000d7f0:	002c                	.insn	2, 0x002c
8000d7f2:	0000                	.insn	2, 0x
8000d7f4:	4400                	.insn	2, 0x4400
8000d7f6:	200e                	.insn	2, 0x200e
8000d7f8:	8148                	.insn	2, 0x8148
8000d7fa:	8801                	.insn	2, 0x8801
8000d7fc:	4402                	.insn	2, 0x4402
8000d7fe:	080c                	.insn	2, 0x080c
8000d800:	0000                	.insn	2, 0x
8000d802:	0000                	.insn	2, 0x
8000d804:	001c                	.insn	2, 0x001c
8000d806:	0000                	.insn	2, 0x
8000d808:	0268                	.insn	2, 0x0268
8000d80a:	0000                	.insn	2, 0x
8000d80c:	97cc                	.insn	2, 0x97cc
8000d80e:	ffff                	.insn	2, 0xffff
8000d810:	0048                	.insn	2, 0x0048
8000d812:	0000                	.insn	2, 0x
8000d814:	4400                	.insn	2, 0x4400
8000d816:	300e                	.insn	2, 0x300e
8000d818:	8148                	.insn	2, 0x8148
8000d81a:	8801                	.insn	2, 0x8801
8000d81c:	4402                	.insn	2, 0x4402
8000d81e:	080c                	.insn	2, 0x080c
8000d820:	0000                	.insn	2, 0x
8000d822:	0000                	.insn	2, 0x
8000d824:	001c                	.insn	2, 0x001c
8000d826:	0000                	.insn	2, 0x
8000d828:	0288                	.insn	2, 0x0288
8000d82a:	0000                	.insn	2, 0x
8000d82c:	97f4                	.insn	2, 0x97f4
8000d82e:	ffff                	.insn	2, 0xffff
8000d830:	006c                	.insn	2, 0x006c
8000d832:	0000                	.insn	2, 0x
8000d834:	4400                	.insn	2, 0x4400
8000d836:	400e                	.insn	2, 0x400e
8000d838:	8148                	.insn	2, 0x8148
8000d83a:	8801                	.insn	2, 0x8801
8000d83c:	4402                	.insn	2, 0x4402
8000d83e:	080c                	.insn	2, 0x080c
8000d840:	0000                	.insn	2, 0x
8000d842:	0000                	.insn	2, 0x
8000d844:	001c                	.insn	2, 0x001c
8000d846:	0000                	.insn	2, 0x
8000d848:	02a8                	.insn	2, 0x02a8
8000d84a:	0000                	.insn	2, 0x
8000d84c:	9840                	.insn	2, 0x9840
8000d84e:	ffff                	.insn	2, 0xffff
8000d850:	0044                	.insn	2, 0x0044
8000d852:	0000                	.insn	2, 0x
8000d854:	4400                	.insn	2, 0x4400
8000d856:	100e                	.insn	2, 0x100e
8000d858:	8148                	.insn	2, 0x8148
8000d85a:	8801                	.insn	2, 0x8801
8000d85c:	4402                	.insn	2, 0x4402
8000d85e:	080c                	.insn	2, 0x080c
8000d860:	0000                	.insn	2, 0x
8000d862:	0000                	.insn	2, 0x
8000d864:	0020                	.insn	2, 0x0020
8000d866:	0000                	.insn	2, 0x
8000d868:	02c8                	.insn	2, 0x02c8
8000d86a:	0000                	.insn	2, 0x
8000d86c:	9864                	.insn	2, 0x9864
8000d86e:	ffff                	.insn	2, 0xffff
8000d870:	014c                	.insn	2, 0x014c
8000d872:	0000                	.insn	2, 0x
8000d874:	4400                	.insn	2, 0x4400
8000d876:	800e                	.insn	2, 0x800e
8000d878:	5001                	.insn	2, 0x5001
8000d87a:	0181                	.insn	2, 0x0181
8000d87c:	0288                	.insn	2, 0x0288
8000d87e:	0389                	.insn	2, 0x0389
8000d880:	0492                	.insn	2, 0x0492
8000d882:	0c44                	.insn	2, 0x0c44
8000d884:	0008                	.insn	2, 0x0008
8000d886:	0000                	.insn	2, 0x
8000d888:	001c                	.insn	2, 0x001c
8000d88a:	0000                	.insn	2, 0x
8000d88c:	02ec                	.insn	2, 0x02ec
8000d88e:	0000                	.insn	2, 0x
8000d890:	998c                	.insn	2, 0x998c
8000d892:	ffff                	.insn	2, 0xffff
8000d894:	007c                	.insn	2, 0x007c
8000d896:	0000                	.insn	2, 0x
8000d898:	4400                	.insn	2, 0x4400
8000d89a:	400e                	.insn	2, 0x400e
8000d89c:	8148                	.insn	2, 0x8148
8000d89e:	8801                	.insn	2, 0x8801
8000d8a0:	4402                	.insn	2, 0x4402
8000d8a2:	080c                	.insn	2, 0x080c
8000d8a4:	0000                	.insn	2, 0x
8000d8a6:	0000                	.insn	2, 0x
8000d8a8:	0030                	.insn	2, 0x0030
8000d8aa:	0000                	.insn	2, 0x
8000d8ac:	030c                	.insn	2, 0x030c
8000d8ae:	0000                	.insn	2, 0x
8000d8b0:	99e8                	.insn	2, 0x99e8
8000d8b2:	ffff                	.insn	2, 0xffff
8000d8b4:	029c                	.insn	2, 0x029c
8000d8b6:	0000                	.insn	2, 0x
8000d8b8:	4400                	.insn	2, 0x4400
8000d8ba:	500e                	.insn	2, 0x500e
8000d8bc:	8174                	.insn	2, 0x8174
8000d8be:	8801                	.insn	2, 0x8801
8000d8c0:	8902                	.insn	2, 0x8902
8000d8c2:	93049203          	lh	tp,-1744(s1)
8000d8c6:	9405                	.insn	2, 0x9405
8000d8c8:	9506                	.insn	2, 0x9506
8000d8ca:	97089607          	.insn	4, 0x97089607
8000d8ce:	9809                	.insn	2, 0x9809
8000d8d0:	990a                	.insn	2, 0x990a
8000d8d2:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000d8d6:	440d                	.insn	2, 0x440d
8000d8d8:	080c                	.insn	2, 0x080c
8000d8da:	0000                	.insn	2, 0x
8000d8dc:	0024                	.insn	2, 0x0024
8000d8de:	0000                	.insn	2, 0x
8000d8e0:	0340                	.insn	2, 0x0340
8000d8e2:	0000                	.insn	2, 0x
8000d8e4:	9c50                	.insn	2, 0x9c50
8000d8e6:	ffff                	.insn	2, 0xffff
8000d8e8:	00b4                	.insn	2, 0x00b4
8000d8ea:	0000                	.insn	2, 0x
8000d8ec:	4400                	.insn	2, 0x4400
8000d8ee:	200e                	.insn	2, 0x200e
8000d8f0:	8158                	.insn	2, 0x8158
8000d8f2:	8801                	.insn	2, 0x8801
8000d8f4:	8902                	.insn	2, 0x8902
8000d8f6:	93049203          	lh	tp,-1744(s1)
8000d8fa:	9405                	.insn	2, 0x9405
8000d8fc:	4406                	.insn	2, 0x4406
8000d8fe:	080c                	.insn	2, 0x080c
8000d900:	0000                	.insn	2, 0x
8000d902:	0000                	.insn	2, 0x
8000d904:	002c                	.insn	2, 0x002c
8000d906:	0000                	.insn	2, 0x
8000d908:	0368                	.insn	2, 0x0368
8000d90a:	0000                	.insn	2, 0x
8000d90c:	9cdc                	.insn	2, 0x9cdc
8000d90e:	ffff                	.insn	2, 0xffff
8000d910:	023c                	.insn	2, 0x023c
8000d912:	0000                	.insn	2, 0x
8000d914:	4400                	.insn	2, 0x4400
8000d916:	600e                	.insn	2, 0x600e
8000d918:	8168                	.insn	2, 0x8168
8000d91a:	8801                	.insn	2, 0x8801
8000d91c:	8902                	.insn	2, 0x8902
8000d91e:	93049203          	lh	tp,-1744(s1)
8000d922:	9405                	.insn	2, 0x9405
8000d924:	9506                	.insn	2, 0x9506
8000d926:	97089607          	.insn	4, 0x97089607
8000d92a:	9809                	.insn	2, 0x9809
8000d92c:	440a                	.insn	2, 0x440a
8000d92e:	080c                	.insn	2, 0x080c
8000d930:	0000                	.insn	2, 0x
8000d932:	0000                	.insn	2, 0x
8000d934:	0028                	.insn	2, 0x0028
8000d936:	0000                	.insn	2, 0x
8000d938:	0398                	.insn	2, 0x0398
8000d93a:	0000                	.insn	2, 0x
8000d93c:	9ee8                	.insn	2, 0x9ee8
8000d93e:	ffff                	.insn	2, 0xffff
8000d940:	0374                	.insn	2, 0x0374
8000d942:	0000                	.insn	2, 0x
8000d944:	4400                	.insn	2, 0x4400
8000d946:	900e                	.insn	2, 0x900e
8000d948:	6009                	.insn	2, 0x6009
8000d94a:	0181                	.insn	2, 0x0181
8000d94c:	0288                	.insn	2, 0x0288
8000d94e:	0389                	.insn	2, 0x0389
8000d950:	0492                	.insn	2, 0x0492
8000d952:	06940593          	addi	a1,s0,105
8000d956:	0795                	.insn	2, 0x0795
8000d958:	0896                	.insn	2, 0x0896
8000d95a:	0c44                	.insn	2, 0x0c44
8000d95c:	0008                	.insn	2, 0x0008
8000d95e:	0000                	.insn	2, 0x
8000d960:	0024                	.insn	2, 0x0024
8000d962:	0000                	.insn	2, 0x
8000d964:	03c4                	.insn	2, 0x03c4
8000d966:	0000                	.insn	2, 0x
8000d968:	a230                	.insn	2, 0xa230
8000d96a:	ffff                	.insn	2, 0xffff
8000d96c:	02a4                	.insn	2, 0x02a4
8000d96e:	0000                	.insn	2, 0x
8000d970:	0200                	.insn	2, 0x0200
8000d972:	0eb4                	.insn	2, 0x0eb4
8000d974:	0190                	.insn	2, 0x0190
8000d976:	8158                	.insn	2, 0x8158
8000d978:	8801                	.insn	2, 0x8801
8000d97a:	8902                	.insn	2, 0x8902
8000d97c:	93049203          	lh	tp,-1744(s1)
8000d980:	9405                	.insn	2, 0x9405
8000d982:	4406                	.insn	2, 0x4406
8000d984:	080c                	.insn	2, 0x080c
8000d986:	0000                	.insn	2, 0x
8000d988:	001c                	.insn	2, 0x001c
8000d98a:	0000                	.insn	2, 0x
8000d98c:	03ec                	.insn	2, 0x03ec
8000d98e:	0000                	.insn	2, 0x
8000d990:	a4ac                	.insn	2, 0xa4ac
8000d992:	ffff                	.insn	2, 0xffff
8000d994:	0038                	.insn	2, 0x0038
8000d996:	0000                	.insn	2, 0x
8000d998:	4400                	.insn	2, 0x4400
8000d99a:	100e                	.insn	2, 0x100e
8000d99c:	8148                	.insn	2, 0x8148
8000d99e:	8801                	.insn	2, 0x8801
8000d9a0:	4402                	.insn	2, 0x4402
8000d9a2:	080c                	.insn	2, 0x080c
8000d9a4:	0000                	.insn	2, 0x
8000d9a6:	0000                	.insn	2, 0x
8000d9a8:	001c                	.insn	2, 0x001c
8000d9aa:	0000                	.insn	2, 0x
8000d9ac:	040c                	.insn	2, 0x040c
8000d9ae:	0000                	.insn	2, 0x
8000d9b0:	a4c4                	.insn	2, 0xa4c4
8000d9b2:	ffff                	.insn	2, 0xffff
8000d9b4:	0038                	.insn	2, 0x0038
8000d9b6:	0000                	.insn	2, 0x
8000d9b8:	4400                	.insn	2, 0x4400
8000d9ba:	100e                	.insn	2, 0x100e
8000d9bc:	8148                	.insn	2, 0x8148
8000d9be:	8801                	.insn	2, 0x8801
8000d9c0:	4402                	.insn	2, 0x4402
8000d9c2:	080c                	.insn	2, 0x080c
8000d9c4:	0000                	.insn	2, 0x
8000d9c6:	0000                	.insn	2, 0x
8000d9c8:	002c                	.insn	2, 0x002c
8000d9ca:	0000                	.insn	2, 0x
8000d9cc:	042c                	.insn	2, 0x042c
8000d9ce:	0000                	.insn	2, 0x
8000d9d0:	a4dc                	.insn	2, 0xa4dc
8000d9d2:	ffff                	.insn	2, 0xffff
8000d9d4:	0264                	.insn	2, 0x0264
8000d9d6:	0000                	.insn	2, 0x
8000d9d8:	4400                	.insn	2, 0x4400
8000d9da:	500e                	.insn	2, 0x500e
8000d9dc:	8168                	.insn	2, 0x8168
8000d9de:	8801                	.insn	2, 0x8801
8000d9e0:	8902                	.insn	2, 0x8902
8000d9e2:	93049203          	lh	tp,-1744(s1)
8000d9e6:	9405                	.insn	2, 0x9405
8000d9e8:	9506                	.insn	2, 0x9506
8000d9ea:	97089607          	.insn	4, 0x97089607
8000d9ee:	9809                	.insn	2, 0x9809
8000d9f0:	440a                	.insn	2, 0x440a
8000d9f2:	080c                	.insn	2, 0x080c
8000d9f4:	0000                	.insn	2, 0x
8000d9f6:	0000                	.insn	2, 0x
8000d9f8:	0030                	.insn	2, 0x0030
8000d9fa:	0000                	.insn	2, 0x
8000d9fc:	045c                	.insn	2, 0x045c
8000d9fe:	0000                	.insn	2, 0x
8000da00:	a710                	.insn	2, 0xa710
8000da02:	ffff                	.insn	2, 0xffff
8000da04:	0354                	.insn	2, 0x0354
8000da06:	0000                	.insn	2, 0x
8000da08:	4400                	.insn	2, 0x4400
8000da0a:	400e                	.insn	2, 0x400e
8000da0c:	8174                	.insn	2, 0x8174
8000da0e:	8801                	.insn	2, 0x8801
8000da10:	8902                	.insn	2, 0x8902
8000da12:	93049203          	lh	tp,-1744(s1)
8000da16:	9405                	.insn	2, 0x9405
8000da18:	9506                	.insn	2, 0x9506
8000da1a:	97089607          	.insn	4, 0x97089607
8000da1e:	9809                	.insn	2, 0x9809
8000da20:	990a                	.insn	2, 0x990a
8000da22:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000da26:	440d                	.insn	2, 0x440d
8000da28:	080c                	.insn	2, 0x080c
8000da2a:	0000                	.insn	2, 0x
8000da2c:	0024                	.insn	2, 0x0024
8000da2e:	0000                	.insn	2, 0x
8000da30:	0490                	.insn	2, 0x0490
8000da32:	0000                	.insn	2, 0x
8000da34:	aa30                	.insn	2, 0xaa30
8000da36:	ffff                	.insn	2, 0xffff
8000da38:	00ac                	.insn	2, 0x00ac
8000da3a:	0000                	.insn	2, 0x
8000da3c:	4400                	.insn	2, 0x4400
8000da3e:	200e                	.insn	2, 0x200e
8000da40:	8158                	.insn	2, 0x8158
8000da42:	8801                	.insn	2, 0x8801
8000da44:	8902                	.insn	2, 0x8902
8000da46:	93049203          	lh	tp,-1744(s1)
8000da4a:	9405                	.insn	2, 0x9405
8000da4c:	4406                	.insn	2, 0x4406
8000da4e:	080c                	.insn	2, 0x080c
8000da50:	0000                	.insn	2, 0x
8000da52:	0000                	.insn	2, 0x
8000da54:	0028                	.insn	2, 0x0028
8000da56:	0000                	.insn	2, 0x
8000da58:	04b8                	.insn	2, 0x04b8
8000da5a:	0000                	.insn	2, 0x
8000da5c:	aab4                	.insn	2, 0xaab4
8000da5e:	ffff                	.insn	2, 0xffff
8000da60:	0298                	.insn	2, 0x0298
8000da62:	0000                	.insn	2, 0x
8000da64:	4400                	.insn	2, 0x4400
8000da66:	300e                	.insn	2, 0x300e
8000da68:	8164                	.insn	2, 0x8164
8000da6a:	8801                	.insn	2, 0x8801
8000da6c:	8902                	.insn	2, 0x8902
8000da6e:	93049203          	lh	tp,-1744(s1)
8000da72:	9405                	.insn	2, 0x9405
8000da74:	9506                	.insn	2, 0x9506
8000da76:	97089607          	.insn	4, 0x97089607
8000da7a:	4409                	.insn	2, 0x4409
8000da7c:	080c                	.insn	2, 0x080c
8000da7e:	0000                	.insn	2, 0x
8000da80:	0030                	.insn	2, 0x0030
8000da82:	0000                	.insn	2, 0x
8000da84:	04e4                	.insn	2, 0x04e4
8000da86:	0000                	.insn	2, 0x
8000da88:	ad20                	.insn	2, 0xad20
8000da8a:	ffff                	.insn	2, 0xffff
8000da8c:	02a8                	.insn	2, 0x02a8
8000da8e:	0000                	.insn	2, 0x
8000da90:	4400                	.insn	2, 0x4400
8000da92:	400e                	.insn	2, 0x400e
8000da94:	8170                	.insn	2, 0x8170
8000da96:	8801                	.insn	2, 0x8801
8000da98:	8902                	.insn	2, 0x8902
8000da9a:	93049203          	lh	tp,-1744(s1)
8000da9e:	9405                	.insn	2, 0x9405
8000daa0:	9506                	.insn	2, 0x9506
8000daa2:	97089607          	.insn	4, 0x97089607
8000daa6:	9809                	.insn	2, 0x9809
8000daa8:	990a                	.insn	2, 0x990a
8000daaa:	440c9a0b          	.insn	4, 0x440c9a0b
8000daae:	080c                	.insn	2, 0x080c
8000dab0:	0000                	.insn	2, 0x
8000dab2:	0000                	.insn	2, 0x
8000dab4:	0030                	.insn	2, 0x0030
8000dab6:	0000                	.insn	2, 0x
8000dab8:	0518                	.insn	2, 0x0518
8000daba:	0000                	.insn	2, 0x
8000dabc:	af94                	.insn	2, 0xaf94
8000dabe:	ffff                	.insn	2, 0xffff
8000dac0:	0204                	.insn	2, 0x0204
8000dac2:	0000                	.insn	2, 0x
8000dac4:	4400                	.insn	2, 0x4400
8000dac6:	400e                	.insn	2, 0x400e
8000dac8:	8174                	.insn	2, 0x8174
8000daca:	8801                	.insn	2, 0x8801
8000dacc:	8902                	.insn	2, 0x8902
8000dace:	93049203          	lh	tp,-1744(s1)
8000dad2:	9405                	.insn	2, 0x9405
8000dad4:	9506                	.insn	2, 0x9506
8000dad6:	97089607          	.insn	4, 0x97089607
8000dada:	9809                	.insn	2, 0x9809
8000dadc:	990a                	.insn	2, 0x990a
8000dade:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dae2:	440d                	.insn	2, 0x440d
8000dae4:	080c                	.insn	2, 0x080c
8000dae6:	0000                	.insn	2, 0x
8000dae8:	001c                	.insn	2, 0x001c
8000daea:	0000                	.insn	2, 0x
8000daec:	054c                	.insn	2, 0x054c
8000daee:	0000                	.insn	2, 0x
8000daf0:	b164                	.insn	2, 0xb164
8000daf2:	ffff                	.insn	2, 0xffff
8000daf4:	002c                	.insn	2, 0x002c
8000daf6:	0000                	.insn	2, 0x
8000daf8:	4400                	.insn	2, 0x4400
8000dafa:	100e                	.insn	2, 0x100e
8000dafc:	8148                	.insn	2, 0x8148
8000dafe:	8801                	.insn	2, 0x8801
8000db00:	4402                	.insn	2, 0x4402
8000db02:	080c                	.insn	2, 0x080c
8000db04:	0000                	.insn	2, 0x
8000db06:	0000                	.insn	2, 0x
8000db08:	002c                	.insn	2, 0x002c
8000db0a:	0000                	.insn	2, 0x
8000db0c:	056c                	.insn	2, 0x056c
8000db0e:	0000                	.insn	2, 0x
8000db10:	b170                	.insn	2, 0xb170
8000db12:	ffff                	.insn	2, 0xffff
8000db14:	0144                	.insn	2, 0x0144
8000db16:	0000                	.insn	2, 0x
8000db18:	4400                	.insn	2, 0x4400
8000db1a:	400e                	.insn	2, 0x400e
8000db1c:	816c                	.insn	2, 0x816c
8000db1e:	8801                	.insn	2, 0x8801
8000db20:	8902                	.insn	2, 0x8902
8000db22:	93049203          	lh	tp,-1744(s1)
8000db26:	9405                	.insn	2, 0x9405
8000db28:	9506                	.insn	2, 0x9506
8000db2a:	97089607          	.insn	4, 0x97089607
8000db2e:	9809                	.insn	2, 0x9809
8000db30:	990a                	.insn	2, 0x990a
8000db32:	080c440b          	.insn	4, 0x080c440b
8000db36:	0000                	.insn	2, 0x
8000db38:	0024                	.insn	2, 0x0024
8000db3a:	0000                	.insn	2, 0x
8000db3c:	059c                	.insn	2, 0x059c
8000db3e:	0000                	.insn	2, 0x
8000db40:	b284                	.insn	2, 0xb284
8000db42:	ffff                	.insn	2, 0xffff
8000db44:	00e8                	.insn	2, 0x00e8
8000db46:	0000                	.insn	2, 0x
8000db48:	4400                	.insn	2, 0x4400
8000db4a:	a00e                	.insn	2, 0xa00e
8000db4c:	5801                	.insn	2, 0x5801
8000db4e:	0181                	.insn	2, 0x0181
8000db50:	0288                	.insn	2, 0x0288
8000db52:	0389                	.insn	2, 0x0389
8000db54:	0492                	.insn	2, 0x0492
8000db56:	06940593          	addi	a1,s0,105
8000db5a:	0c44                	.insn	2, 0x0c44
8000db5c:	0008                	.insn	2, 0x0008
8000db5e:	0000                	.insn	2, 0x
8000db60:	001c                	.insn	2, 0x001c
8000db62:	0000                	.insn	2, 0x
8000db64:	05c4                	.insn	2, 0x05c4
8000db66:	0000                	.insn	2, 0x
8000db68:	b344                	.insn	2, 0xb344
8000db6a:	ffff                	.insn	2, 0xffff
8000db6c:	0018                	.insn	2, 0x0018
8000db6e:	0000                	.insn	2, 0x
8000db70:	4400                	.insn	2, 0x4400
8000db72:	100e                	.insn	2, 0x100e
8000db74:	8148                	.insn	2, 0x8148
8000db76:	8801                	.insn	2, 0x8801
8000db78:	4402                	.insn	2, 0x4402
8000db7a:	080c                	.insn	2, 0x080c
8000db7c:	0000                	.insn	2, 0x
8000db7e:	0000                	.insn	2, 0x
8000db80:	001c                	.insn	2, 0x001c
8000db82:	0000                	.insn	2, 0x
8000db84:	05e4                	.insn	2, 0x05e4
8000db86:	0000                	.insn	2, 0x
8000db88:	b33c                	.insn	2, 0xb33c
8000db8a:	ffff                	.insn	2, 0xffff
8000db8c:	0238                	.insn	2, 0x0238
8000db8e:	0000                	.insn	2, 0x
8000db90:	4400                	.insn	2, 0x4400
8000db92:	100e                	.insn	2, 0x100e
8000db94:	8148                	.insn	2, 0x8148
8000db96:	8801                	.insn	2, 0x8801
8000db98:	4402                	.insn	2, 0x4402
8000db9a:	080c                	.insn	2, 0x080c
8000db9c:	0000                	.insn	2, 0x
8000db9e:	0000                	.insn	2, 0x
8000dba0:	001c                	.insn	2, 0x001c
8000dba2:	0000                	.insn	2, 0x
8000dba4:	0604                	.insn	2, 0x0604
8000dba6:	0000                	.insn	2, 0x
8000dba8:	b554                	.insn	2, 0xb554
8000dbaa:	ffff                	.insn	2, 0xffff
8000dbac:	0050                	.insn	2, 0x0050
8000dbae:	0000                	.insn	2, 0x
8000dbb0:	4400                	.insn	2, 0x4400
8000dbb2:	100e                	.insn	2, 0x100e
8000dbb4:	8148                	.insn	2, 0x8148
8000dbb6:	8801                	.insn	2, 0x8801
8000dbb8:	4402                	.insn	2, 0x4402
8000dbba:	080c                	.insn	2, 0x080c
8000dbbc:	0000                	.insn	2, 0x
8000dbbe:	0000                	.insn	2, 0x
8000dbc0:	0024                	.insn	2, 0x0024
8000dbc2:	0000                	.insn	2, 0x
8000dbc4:	0624                	.insn	2, 0x0624
8000dbc6:	0000                	.insn	2, 0x
8000dbc8:	b584                	.insn	2, 0xb584
8000dbca:	ffff                	.insn	2, 0xffff
8000dbcc:	0204                	.insn	2, 0x0204
8000dbce:	0000                	.insn	2, 0x
8000dbd0:	4400                	.insn	2, 0x4400
8000dbd2:	200e                	.insn	2, 0x200e
8000dbd4:	815c                	.insn	2, 0x815c
8000dbd6:	8801                	.insn	2, 0x8801
8000dbd8:	8902                	.insn	2, 0x8902
8000dbda:	93049203          	lh	tp,-1744(s1)
8000dbde:	9405                	.insn	2, 0x9405
8000dbe0:	9506                	.insn	2, 0x9506
8000dbe2:	080c4407          	.insn	4, 0x080c4407
8000dbe6:	0000                	.insn	2, 0x
8000dbe8:	0030                	.insn	2, 0x0030
8000dbea:	0000                	.insn	2, 0x
8000dbec:	064c                	.insn	2, 0x064c
8000dbee:	0000                	.insn	2, 0x
8000dbf0:	b760                	.insn	2, 0xb760
8000dbf2:	ffff                	.insn	2, 0xffff
8000dbf4:	01f4                	.insn	2, 0x01f4
8000dbf6:	0000                	.insn	2, 0x
8000dbf8:	4400                	.insn	2, 0x4400
8000dbfa:	500e                	.insn	2, 0x500e
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
8000dc1a:	0000                	.insn	2, 0x
8000dc1c:	001c                	.insn	2, 0x001c
8000dc1e:	0000                	.insn	2, 0x
8000dc20:	0680                	.insn	2, 0x0680
8000dc22:	0000                	.insn	2, 0x
8000dc24:	b920                	.insn	2, 0xb920
8000dc26:	ffff                	.insn	2, 0xffff
8000dc28:	00f0                	.insn	2, 0x00f0
8000dc2a:	0000                	.insn	2, 0x
8000dc2c:	4400                	.insn	2, 0x4400
8000dc2e:	900e                	.insn	2, 0x900e
8000dc30:	4801                	.insn	2, 0x4801
8000dc32:	0181                	.insn	2, 0x0181
8000dc34:	0288                	.insn	2, 0x0288
8000dc36:	0c44                	.insn	2, 0x0c44
8000dc38:	0008                	.insn	2, 0x0008
8000dc3a:	0000                	.insn	2, 0x
8000dc3c:	001c                	.insn	2, 0x001c
8000dc3e:	0000                	.insn	2, 0x
8000dc40:	06a0                	.insn	2, 0x06a0
8000dc42:	0000                	.insn	2, 0x
8000dc44:	b9f0                	.insn	2, 0xb9f0
8000dc46:	ffff                	.insn	2, 0xffff
8000dc48:	0044                	.insn	2, 0x0044
8000dc4a:	0000                	.insn	2, 0x
8000dc4c:	4400                	.insn	2, 0x4400
8000dc4e:	200e                	.insn	2, 0x200e
8000dc50:	8148                	.insn	2, 0x8148
8000dc52:	8801                	.insn	2, 0x8801
8000dc54:	4402                	.insn	2, 0x4402
8000dc56:	080c                	.insn	2, 0x080c
8000dc58:	0000                	.insn	2, 0x
8000dc5a:	0000                	.insn	2, 0x
8000dc5c:	001c                	.insn	2, 0x001c
8000dc5e:	0000                	.insn	2, 0x
8000dc60:	06c0                	.insn	2, 0x06c0
8000dc62:	0000                	.insn	2, 0x
8000dc64:	ba14                	.insn	2, 0xba14
8000dc66:	ffff                	.insn	2, 0xffff
8000dc68:	005c                	.insn	2, 0x005c
8000dc6a:	0000                	.insn	2, 0x
8000dc6c:	4400                	.insn	2, 0x4400
8000dc6e:	100e                	.insn	2, 0x100e
8000dc70:	8148                	.insn	2, 0x8148
8000dc72:	8801                	.insn	2, 0x8801
8000dc74:	4402                	.insn	2, 0x4402
8000dc76:	080c                	.insn	2, 0x080c
8000dc78:	0000                	.insn	2, 0x
8000dc7a:	0000                	.insn	2, 0x
8000dc7c:	001c                	.insn	2, 0x001c
8000dc7e:	0000                	.insn	2, 0x
8000dc80:	06e0                	.insn	2, 0x06e0
8000dc82:	0000                	.insn	2, 0x
8000dc84:	ba50                	.insn	2, 0xba50
8000dc86:	ffff                	.insn	2, 0xffff
8000dc88:	0084                	.insn	2, 0x0084
8000dc8a:	0000                	.insn	2, 0x
8000dc8c:	4400                	.insn	2, 0x4400
8000dc8e:	900e                	.insn	2, 0x900e
8000dc90:	4801                	.insn	2, 0x4801
8000dc92:	0181                	.insn	2, 0x0181
8000dc94:	0288                	.insn	2, 0x0288
8000dc96:	0c44                	.insn	2, 0x0c44
8000dc98:	0008                	.insn	2, 0x0008
8000dc9a:	0000                	.insn	2, 0x
8000dc9c:	001c                	.insn	2, 0x001c
8000dc9e:	0000                	.insn	2, 0x
8000dca0:	0700                	.insn	2, 0x0700
8000dca2:	0000                	.insn	2, 0x
8000dca4:	bab4                	.insn	2, 0xbab4
8000dca6:	ffff                	.insn	2, 0xffff
8000dca8:	0084                	.insn	2, 0x0084
8000dcaa:	0000                	.insn	2, 0x
8000dcac:	4400                	.insn	2, 0x4400
8000dcae:	900e                	.insn	2, 0x900e
8000dcb0:	4801                	.insn	2, 0x4801
8000dcb2:	0181                	.insn	2, 0x0181
8000dcb4:	0288                	.insn	2, 0x0288
8000dcb6:	0c44                	.insn	2, 0x0c44
8000dcb8:	0008                	.insn	2, 0x0008
8000dcba:	0000                	.insn	2, 0x
8000dcbc:	001c                	.insn	2, 0x001c
8000dcbe:	0000                	.insn	2, 0x
8000dcc0:	0720                	.insn	2, 0x0720
8000dcc2:	0000                	.insn	2, 0x
8000dcc4:	bb18                	.insn	2, 0xbb18
8000dcc6:	ffff                	.insn	2, 0xffff
8000dcc8:	00f8                	.insn	2, 0x00f8
8000dcca:	0000                	.insn	2, 0x
8000dccc:	4400                	.insn	2, 0x4400
8000dcce:	900e                	.insn	2, 0x900e
8000dcd0:	4801                	.insn	2, 0x4801
8000dcd2:	0181                	.insn	2, 0x0181
8000dcd4:	0288                	.insn	2, 0x0288
8000dcd6:	0c44                	.insn	2, 0x0c44
8000dcd8:	0008                	.insn	2, 0x0008
8000dcda:	0000                	.insn	2, 0x
8000dcdc:	001c                	.insn	2, 0x001c
8000dcde:	0000                	.insn	2, 0x
8000dce0:	0740                	.insn	2, 0x0740
8000dce2:	0000                	.insn	2, 0x
8000dce4:	bbf0                	.insn	2, 0xbbf0
8000dce6:	ffff                	.insn	2, 0xffff
8000dce8:	0030                	.insn	2, 0x0030
8000dcea:	0000                	.insn	2, 0x
8000dcec:	4400                	.insn	2, 0x4400
8000dcee:	100e                	.insn	2, 0x100e
8000dcf0:	8148                	.insn	2, 0x8148
8000dcf2:	8801                	.insn	2, 0x8801
8000dcf4:	4402                	.insn	2, 0x4402
8000dcf6:	080c                	.insn	2, 0x080c
8000dcf8:	0000                	.insn	2, 0x
8000dcfa:	0000                	.insn	2, 0x
8000dcfc:	0030                	.insn	2, 0x0030
8000dcfe:	0000                	.insn	2, 0x
8000dd00:	0760                	.insn	2, 0x0760
8000dd02:	0000                	.insn	2, 0x
8000dd04:	bc00                	.insn	2, 0xbc00
8000dd06:	ffff                	.insn	2, 0xffff
8000dd08:	022c                	.insn	2, 0x022c
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
8000dd2e:	0000                	.insn	2, 0x
8000dd30:	0030                	.insn	2, 0x0030
8000dd32:	0000                	.insn	2, 0x
8000dd34:	0794                	.insn	2, 0x0794
8000dd36:	0000                	.insn	2, 0x
8000dd38:	bdf8                	.insn	2, 0xbdf8
8000dd3a:	ffff                	.insn	2, 0xffff
8000dd3c:	0268                	.insn	2, 0x0268
8000dd3e:	0000                	.insn	2, 0x
8000dd40:	4400                	.insn	2, 0x4400
8000dd42:	500e                	.insn	2, 0x500e
8000dd44:	8174                	.insn	2, 0x8174
8000dd46:	8801                	.insn	2, 0x8801
8000dd48:	8902                	.insn	2, 0x8902
8000dd4a:	93049203          	lh	tp,-1744(s1)
8000dd4e:	9405                	.insn	2, 0x9405
8000dd50:	9506                	.insn	2, 0x9506
8000dd52:	97089607          	.insn	4, 0x97089607
8000dd56:	9809                	.insn	2, 0x9809
8000dd58:	990a                	.insn	2, 0x990a
8000dd5a:	9b0c9a0b          	.insn	4, 0x9b0c9a0b
8000dd5e:	440d                	.insn	2, 0x440d
8000dd60:	080c                	.insn	2, 0x080c
8000dd62:	0000                	.insn	2, 0x
8000dd64:	001c                	.insn	2, 0x001c
8000dd66:	0000                	.insn	2, 0x
8000dd68:	07c8                	.insn	2, 0x07c8
8000dd6a:	0000                	.insn	2, 0x
8000dd6c:	c02c                	.insn	2, 0xc02c
8000dd6e:	ffff                	.insn	2, 0xffff
8000dd70:	002c                	.insn	2, 0x002c
8000dd72:	0000                	.insn	2, 0x
8000dd74:	4400                	.insn	2, 0x4400
8000dd76:	100e                	.insn	2, 0x100e
8000dd78:	8148                	.insn	2, 0x8148
8000dd7a:	8801                	.insn	2, 0x8801
8000dd7c:	4402                	.insn	2, 0x4402
8000dd7e:	080c                	.insn	2, 0x080c
8000dd80:	0000                	.insn	2, 0x
8000dd82:	0000                	.insn	2, 0x
8000dd84:	001c                	.insn	2, 0x001c
8000dd86:	0000                	.insn	2, 0x
8000dd88:	07e8                	.insn	2, 0x07e8
8000dd8a:	0000                	.insn	2, 0x
8000dd8c:	c038                	.insn	2, 0xc038
8000dd8e:	ffff                	.insn	2, 0xffff
8000dd90:	0118                	.insn	2, 0x0118
8000dd92:	0000                	.insn	2, 0x
8000dd94:	4400                	.insn	2, 0x4400
8000dd96:	900e                	.insn	2, 0x900e
8000dd98:	4801                	.insn	2, 0x4801
8000dd9a:	0181                	.insn	2, 0x0181
8000dd9c:	0288                	.insn	2, 0x0288
8000dd9e:	0c44                	.insn	2, 0x0c44
8000dda0:	0008                	.insn	2, 0x0008
8000dda2:	0000                	.insn	2, 0x
8000dda4:	001c                	.insn	2, 0x001c
8000dda6:	0000                	.insn	2, 0x
8000dda8:	0808                	.insn	2, 0x0808
8000ddaa:	0000                	.insn	2, 0x
8000ddac:	c130                	.insn	2, 0xc130
8000ddae:	ffff                	.insn	2, 0xffff
8000ddb0:	0034                	.insn	2, 0x0034
8000ddb2:	0000                	.insn	2, 0x
8000ddb4:	4400                	.insn	2, 0x4400
8000ddb6:	100e                	.insn	2, 0x100e
8000ddb8:	8148                	.insn	2, 0x8148
8000ddba:	8801                	.insn	2, 0x8801
8000ddbc:	4402                	.insn	2, 0x4402
8000ddbe:	080c                	.insn	2, 0x080c
8000ddc0:	0000                	.insn	2, 0x
8000ddc2:	0000                	.insn	2, 0x
8000ddc4:	001c                	.insn	2, 0x001c
8000ddc6:	0000                	.insn	2, 0x
8000ddc8:	0828                	.insn	2, 0x0828
8000ddca:	0000                	.insn	2, 0x
8000ddcc:	c144                	.insn	2, 0xc144
8000ddce:	ffff                	.insn	2, 0xffff
8000ddd0:	006c                	.insn	2, 0x006c
8000ddd2:	0000                	.insn	2, 0x
8000ddd4:	4400                	.insn	2, 0x4400
8000ddd6:	400e                	.insn	2, 0x400e
8000ddd8:	8148                	.insn	2, 0x8148
8000ddda:	8801                	.insn	2, 0x8801
8000dddc:	4402                	.insn	2, 0x4402
8000ddde:	080c                	.insn	2, 0x080c
8000dde0:	0000                	.insn	2, 0x
8000dde2:	0000                	.insn	2, 0x
8000dde4:	001c                	.insn	2, 0x001c
8000dde6:	0000                	.insn	2, 0x
8000dde8:	0848                	.insn	2, 0x0848
8000ddea:	0000                	.insn	2, 0x
8000ddec:	c190                	.insn	2, 0xc190
8000ddee:	ffff                	.insn	2, 0xffff
8000ddf0:	0048                	.insn	2, 0x0048
8000ddf2:	0000                	.insn	2, 0x
8000ddf4:	4400                	.insn	2, 0x4400
8000ddf6:	100e                	.insn	2, 0x100e
8000ddf8:	8148                	.insn	2, 0x8148
8000ddfa:	8801                	.insn	2, 0x8801
8000ddfc:	4402                	.insn	2, 0x4402
8000ddfe:	080c                	.insn	2, 0x080c
8000de00:	0000                	.insn	2, 0x
8000de02:	0000                	.insn	2, 0x
8000de04:	001c                	.insn	2, 0x001c
8000de06:	0000                	.insn	2, 0x
8000de08:	0868                	.insn	2, 0x0868
8000de0a:	0000                	.insn	2, 0x
8000de0c:	c1b8                	.insn	2, 0xc1b8
8000de0e:	ffff                	.insn	2, 0xffff
8000de10:	0088                	.insn	2, 0x0088
8000de12:	0000                	.insn	2, 0x
8000de14:	4400                	.insn	2, 0x4400
8000de16:	100e                	.insn	2, 0x100e
8000de18:	8148                	.insn	2, 0x8148
8000de1a:	8801                	.insn	2, 0x8801
8000de1c:	4402                	.insn	2, 0x4402
8000de1e:	080c                	.insn	2, 0x080c
8000de20:	0000                	.insn	2, 0x
8000de22:	0000                	.insn	2, 0x
8000de24:	001c                	.insn	2, 0x001c
8000de26:	0000                	.insn	2, 0x
8000de28:	0888                	.insn	2, 0x0888
8000de2a:	0000                	.insn	2, 0x
8000de2c:	c220                	.insn	2, 0xc220
8000de2e:	ffff                	.insn	2, 0xffff
8000de30:	0110                	.insn	2, 0x0110
8000de32:	0000                	.insn	2, 0x
8000de34:	4400                	.insn	2, 0x4400
8000de36:	100e                	.insn	2, 0x100e
8000de38:	8148                	.insn	2, 0x8148
8000de3a:	8801                	.insn	2, 0x8801
8000de3c:	4402                	.insn	2, 0x4402
8000de3e:	080c                	.insn	2, 0x080c
8000de40:	0000                	.insn	2, 0x
8000de42:	0000                	.insn	2, 0x
8000de44:	001c                	.insn	2, 0x001c
8000de46:	0000                	.insn	2, 0x
8000de48:	08a8                	.insn	2, 0x08a8
8000de4a:	0000                	.insn	2, 0x
8000de4c:	c310                	.insn	2, 0xc310
8000de4e:	ffff                	.insn	2, 0xffff
8000de50:	0024                	.insn	2, 0x0024
8000de52:	0000                	.insn	2, 0x
8000de54:	4400                	.insn	2, 0x4400
8000de56:	100e                	.insn	2, 0x100e
8000de58:	8148                	.insn	2, 0x8148
8000de5a:	8801                	.insn	2, 0x8801
8000de5c:	4402                	.insn	2, 0x4402
8000de5e:	080c                	.insn	2, 0x080c
8000de60:	0000                	.insn	2, 0x
8000de62:	0000                	.insn	2, 0x
8000de64:	001c                	.insn	2, 0x001c
8000de66:	0000                	.insn	2, 0x
8000de68:	08c8                	.insn	2, 0x08c8
8000de6a:	0000                	.insn	2, 0x
8000de6c:	c314                	.insn	2, 0xc314
8000de6e:	ffff                	.insn	2, 0xffff
8000de70:	03c4                	.insn	2, 0x03c4
8000de72:	0000                	.insn	2, 0x
8000de74:	4400                	.insn	2, 0x4400
8000de76:	100e                	.insn	2, 0x100e
8000de78:	8148                	.insn	2, 0x8148
8000de7a:	8801                	.insn	2, 0x8801
8000de7c:	4402                	.insn	2, 0x4402
8000de7e:	080c                	.insn	2, 0x080c
8000de80:	0000                	.insn	2, 0x
8000de82:	0000                	.insn	2, 0x
8000de84:	0028                	.insn	2, 0x0028
8000de86:	0000                	.insn	2, 0x
8000de88:	08e8                	.insn	2, 0x08e8
8000de8a:	0000                	.insn	2, 0x
8000de8c:	c6b8                	.insn	2, 0xc6b8
8000de8e:	ffff                	.insn	2, 0xffff
8000de90:	04b4                	.insn	2, 0x04b4
8000de92:	0000                	.insn	2, 0x
8000de94:	4400                	.insn	2, 0x4400
8000de96:	300e                	.insn	2, 0x300e
8000de98:	8164                	.insn	2, 0x8164
8000de9a:	8801                	.insn	2, 0x8801
8000de9c:	8902                	.insn	2, 0x8902
8000de9e:	93049203          	lh	tp,-1744(s1)
8000dea2:	9405                	.insn	2, 0x9405
8000dea4:	9506                	.insn	2, 0x9506
8000dea6:	97089607          	.insn	4, 0x97089607
8000deaa:	4409                	.insn	2, 0x4409
8000deac:	080c                	.insn	2, 0x080c
8000deae:	0000                	.insn	2, 0x
8000deb0:	001c                	.insn	2, 0x001c
8000deb2:	0000                	.insn	2, 0x
8000deb4:	0914                	.insn	2, 0x0914
8000deb6:	0000                	.insn	2, 0x
8000deb8:	cb40                	.insn	2, 0xcb40
8000deba:	ffff                	.insn	2, 0xffff
8000debc:	0144                	.insn	2, 0x0144
8000debe:	0000                	.insn	2, 0x
8000dec0:	4400                	.insn	2, 0x4400
8000dec2:	100e                	.insn	2, 0x100e
8000dec4:	8148                	.insn	2, 0x8148
8000dec6:	8801                	.insn	2, 0x8801
8000dec8:	4402                	.insn	2, 0x4402
8000deca:	080c                	.insn	2, 0x080c
8000decc:	0000                	.insn	2, 0x
8000dece:	0000                	.insn	2, 0x
8000ded0:	001c                	.insn	2, 0x001c
8000ded2:	0000                	.insn	2, 0x
8000ded4:	0934                	.insn	2, 0x0934
8000ded6:	0000                	.insn	2, 0x
8000ded8:	cc64                	.insn	2, 0xcc64
8000deda:	ffff                	.insn	2, 0xffff
8000dedc:	0024                	.insn	2, 0x0024
8000dede:	0000                	.insn	2, 0x
8000dee0:	4400                	.insn	2, 0x4400
8000dee2:	100e                	.insn	2, 0x100e
8000dee4:	8148                	.insn	2, 0x8148
8000dee6:	8801                	.insn	2, 0x8801
8000dee8:	4402                	.insn	2, 0x4402
8000deea:	080c                	.insn	2, 0x080c
8000deec:	0000                	.insn	2, 0x
8000deee:	0000                	.insn	2, 0x
8000def0:	001c                	.insn	2, 0x001c
8000def2:	0000                	.insn	2, 0x
8000def4:	0954                	.insn	2, 0x0954
8000def6:	0000                	.insn	2, 0x
8000def8:	cc68                	.insn	2, 0xcc68
8000defa:	ffff                	.insn	2, 0xffff
8000defc:	0044                	.insn	2, 0x0044
8000defe:	0000                	.insn	2, 0x
8000df00:	4400                	.insn	2, 0x4400
8000df02:	200e                	.insn	2, 0x200e
8000df04:	8148                	.insn	2, 0x8148
8000df06:	8801                	.insn	2, 0x8801
8000df08:	4402                	.insn	2, 0x4402
8000df0a:	080c                	.insn	2, 0x080c
8000df0c:	0000                	.insn	2, 0x
8000df0e:	0000                	.insn	2, 0x
8000df10:	001c                	.insn	2, 0x001c
8000df12:	0000                	.insn	2, 0x
8000df14:	0974                	.insn	2, 0x0974
8000df16:	0000                	.insn	2, 0x
8000df18:	cc8c                	.insn	2, 0xcc8c
8000df1a:	ffff                	.insn	2, 0xffff
8000df1c:	0024                	.insn	2, 0x0024
8000df1e:	0000                	.insn	2, 0x
8000df20:	4400                	.insn	2, 0x4400
8000df22:	100e                	.insn	2, 0x100e
8000df24:	8148                	.insn	2, 0x8148
8000df26:	8801                	.insn	2, 0x8801
8000df28:	4402                	.insn	2, 0x4402
8000df2a:	080c                	.insn	2, 0x080c
8000df2c:	0000                	.insn	2, 0x
8000df2e:	0000                	.insn	2, 0x
8000df30:	0024                	.insn	2, 0x0024
8000df32:	0000                	.insn	2, 0x
8000df34:	0994                	.insn	2, 0x0994
8000df36:	0000                	.insn	2, 0x
8000df38:	cc90                	.insn	2, 0xcc90
8000df3a:	ffff                	.insn	2, 0xffff
8000df3c:	0310                	.insn	2, 0x0310
8000df3e:	0000                	.insn	2, 0x
8000df40:	4400                	.insn	2, 0x4400
8000df42:	200e                	.insn	2, 0x200e
8000df44:	815c                	.insn	2, 0x815c
8000df46:	8801                	.insn	2, 0x8801
8000df48:	8902                	.insn	2, 0x8902
8000df4a:	93049203          	lh	tp,-1744(s1)
8000df4e:	9405                	.insn	2, 0x9405
8000df50:	9506                	.insn	2, 0x9506
8000df52:	080c4407          	.insn	4, 0x080c4407
8000df56:	0000                	.insn	2, 0x
8000df58:	0024                	.insn	2, 0x0024
8000df5a:	0000                	.insn	2, 0x
8000df5c:	09bc                	.insn	2, 0x09bc
8000df5e:	0000                	.insn	2, 0x
8000df60:	cf78                	.insn	2, 0xcf78
8000df62:	ffff                	.insn	2, 0xffff
8000df64:	00d8                	.insn	2, 0x00d8
8000df66:	0000                	.insn	2, 0x
8000df68:	4400                	.insn	2, 0x4400
8000df6a:	200e                	.insn	2, 0x200e
8000df6c:	8158                	.insn	2, 0x8158
8000df6e:	8801                	.insn	2, 0x8801
8000df70:	8902                	.insn	2, 0x8902
8000df72:	93049203          	lh	tp,-1744(s1)
8000df76:	9405                	.insn	2, 0x9405
8000df78:	4406                	.insn	2, 0x4406
8000df7a:	080c                	.insn	2, 0x080c
8000df7c:	0000                	.insn	2, 0x
8000df7e:	0000                	.insn	2, 0x
8000df80:	0020                	.insn	2, 0x0020
8000df82:	0000                	.insn	2, 0x
8000df84:	09e4                	.insn	2, 0x09e4
8000df86:	0000                	.insn	2, 0x
8000df88:	d028                	.insn	2, 0xd028
8000df8a:	ffff                	.insn	2, 0xffff
8000df8c:	0064                	.insn	2, 0x0064
8000df8e:	0000                	.insn	2, 0x
8000df90:	4400                	.insn	2, 0x4400
8000df92:	100e                	.insn	2, 0x100e
8000df94:	8150                	.insn	2, 0x8150
8000df96:	8801                	.insn	2, 0x8801
8000df98:	8902                	.insn	2, 0x8902
8000df9a:	44049203          	lh	tp,1088(s1)
8000df9e:	080c                	.insn	2, 0x080c
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
