
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 fecb 	bl	c0de6da0 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fc5b 	bl	c0de68d0 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fc22 	bl	c0de6864 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fc13 	bl	c0de684e <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fb67 	bl	c0de7708 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fe49 	bl	c0de6cd4 <assert_exit>
c0de0042:	2e14      	cmp	r6, #20
c0de0044:	d30a      	bcc.n	c0de005c <address_from_pubkey+0x34>
c0de0046:	2040      	movs	r0, #64	@ 0x40
c0de0048:	2101      	movs	r1, #1
c0de004a:	9009      	str	r0, [sp, #36]	@ 0x24
c0de004c:	1c68      	adds	r0, r5, #1
c0de004e:	466d      	mov	r5, sp
c0de0050:	9008      	str	r0, [sp, #32]
c0de0052:	a808      	add	r0, sp, #32
c0de0054:	462a      	mov	r2, r5
c0de0056:	f006 fe01 	bl	c0de6c5c <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fb44 	bl	c0de76f4 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 fe2b 	bl	c0de6cd4 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d14e      	bne.n	c0de0122 <apdu_dispatcher+0xb0>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2818      	cmp	r0, #24
c0de0090:	d04a      	beq.n	c0de0128 <apdu_dispatcher+0xb6>
c0de0092:	2804      	cmp	r0, #4
c0de0094:	d05a      	beq.n	c0de014c <apdu_dispatcher+0xda>
c0de0096:	2805      	cmp	r0, #5
c0de0098:	d064      	beq.n	c0de0164 <apdu_dispatcher+0xf2>
c0de009a:	2806      	cmp	r0, #6
c0de009c:	d078      	beq.n	c0de0190 <apdu_dispatcher+0x11e>
c0de009e:	2807      	cmp	r0, #7
c0de00a0:	f000 8084 	beq.w	c0de01ac <apdu_dispatcher+0x13a>
c0de00a4:	2808      	cmp	r0, #8
c0de00a6:	f000 808b 	beq.w	c0de01c0 <apdu_dispatcher+0x14e>
c0de00aa:	2809      	cmp	r0, #9
c0de00ac:	f000 8092 	beq.w	c0de01d4 <apdu_dispatcher+0x162>
c0de00b0:	280a      	cmp	r0, #10
c0de00b2:	f000 8099 	beq.w	c0de01e8 <apdu_dispatcher+0x176>
c0de00b6:	280b      	cmp	r0, #11
c0de00b8:	f000 80a0 	beq.w	c0de01fc <apdu_dispatcher+0x18a>
c0de00bc:	280c      	cmp	r0, #12
c0de00be:	f000 80a7 	beq.w	c0de0210 <apdu_dispatcher+0x19e>
c0de00c2:	280d      	cmp	r0, #13
c0de00c4:	f000 80ad 	beq.w	c0de0222 <apdu_dispatcher+0x1b0>
c0de00c8:	280e      	cmp	r0, #14
c0de00ca:	f000 80b3 	beq.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de00ce:	280f      	cmp	r0, #15
c0de00d0:	f000 80b9 	beq.w	c0de0246 <apdu_dispatcher+0x1d4>
c0de00d4:	2810      	cmp	r0, #16
c0de00d6:	f000 80bf 	beq.w	c0de0258 <apdu_dispatcher+0x1e6>
c0de00da:	2811      	cmp	r0, #17
c0de00dc:	f000 80c5 	beq.w	c0de026a <apdu_dispatcher+0x1f8>
c0de00e0:	2812      	cmp	r0, #18
c0de00e2:	f000 80cb 	beq.w	c0de027c <apdu_dispatcher+0x20a>
c0de00e6:	2813      	cmp	r0, #19
c0de00e8:	f000 80d1 	beq.w	c0de028e <apdu_dispatcher+0x21c>
c0de00ec:	2814      	cmp	r0, #20
c0de00ee:	f000 80d6 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de00f2:	2815      	cmp	r0, #21
c0de00f4:	f000 80db 	beq.w	c0de02ae <apdu_dispatcher+0x23c>
c0de00f8:	2816      	cmp	r0, #22
c0de00fa:	f000 80e0 	beq.w	c0de02be <apdu_dispatcher+0x24c>
c0de00fe:	2817      	cmp	r0, #23
c0de0100:	f000 80ea 	beq.w	c0de02d8 <apdu_dispatcher+0x266>
c0de0104:	2803      	cmp	r0, #3
c0de0106:	f040 80ef 	bne.w	c0de02e8 <apdu_dispatcher+0x276>
c0de010a:	78a0      	ldrb	r0, [r4, #2]
c0de010c:	2800      	cmp	r0, #0
c0de010e:	f040 8100 	bne.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de0112:	78e0      	ldrb	r0, [r4, #3]
c0de0114:	2800      	cmp	r0, #0
c0de0116:	f040 80fc 	bne.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de011a:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de011e:	f000 b9bc 	b.w	c0de049a <handler_get_version>
c0de0122:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0126:	e0f6      	b.n	c0de0316 <apdu_dispatcher+0x2a4>
c0de0128:	78a0      	ldrb	r0, [r4, #2]
c0de012a:	2801      	cmp	r0, #1
c0de012c:	f200 80f1 	bhi.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de0130:	78e0      	ldrb	r0, [r4, #3]
c0de0132:	2800      	cmp	r0, #0
c0de0134:	f040 80ed 	bne.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de0138:	68a0      	ldr	r0, [r4, #8]
c0de013a:	2800      	cmp	r0, #0
c0de013c:	f000 80e6 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de0140:	f000 f8f5 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0144:	a801      	add	r0, sp, #4
c0de0146:	f001 f8b9 	bl	c0de12bc <handler_get_insecure_public>
c0de014a:	e0dd      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de014c:	78a0      	ldrb	r0, [r4, #2]
c0de014e:	2800      	cmp	r0, #0
c0de0150:	f040 80df 	bne.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de0154:	78e0      	ldrb	r0, [r4, #3]
c0de0156:	2800      	cmp	r0, #0
c0de0158:	f040 80db 	bne.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de015c:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0160:	f000 b934 	b.w	c0de03cc <handler_get_app_name>
c0de0164:	78a1      	ldrb	r1, [r4, #2]
c0de0166:	2901      	cmp	r1, #1
c0de0168:	f200 80d3 	bhi.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de016c:	78e0      	ldrb	r0, [r4, #3]
c0de016e:	2800      	cmp	r0, #0
c0de0170:	f040 80cf 	bne.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de0174:	68a0      	ldr	r0, [r4, #8]
c0de0176:	2800      	cmp	r0, #0
c0de0178:	f000 80c8 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de017c:	9001      	str	r0, [sp, #4]
c0de017e:	7920      	ldrb	r0, [r4, #4]
c0de0180:	2900      	cmp	r1, #0
c0de0182:	9002      	str	r0, [sp, #8]
c0de0184:	bf18      	it	ne
c0de0186:	2101      	movne	r1, #1
c0de0188:	a801      	add	r0, sp, #4
c0de018a:	f000 f933 	bl	c0de03f4 <handler_get_public_key>
c0de018e:	e0bb      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0190:	78a1      	ldrb	r1, [r4, #2]
c0de0192:	2900      	cmp	r1, #0
c0de0194:	f000 80ab 	beq.w	c0de02ee <apdu_dispatcher+0x27c>
c0de0198:	2903      	cmp	r1, #3
c0de019a:	f200 80ba 	bhi.w	c0de0312 <apdu_dispatcher+0x2a0>
c0de019e:	78e0      	ldrb	r0, [r4, #3]
c0de01a0:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de01a4:	2a80      	cmp	r2, #128	@ 0x80
c0de01a6:	f000 80a6 	beq.w	c0de02f6 <apdu_dispatcher+0x284>
c0de01aa:	e0b2      	b.n	c0de0312 <apdu_dispatcher+0x2a0>
c0de01ac:	68a0      	ldr	r0, [r4, #8]
c0de01ae:	2800      	cmp	r0, #0
c0de01b0:	f000 80ac 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01b4:	f000 f8bb 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01b8:	a801      	add	r0, sp, #4
c0de01ba:	f000 fa6d 	bl	c0de0698 <handler_cmd_keccakH>
c0de01be:	e0a3      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01c0:	68a0      	ldr	r0, [r4, #8]
c0de01c2:	2800      	cmp	r0, #0
c0de01c4:	f000 80a2 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01c8:	f000 f8b1 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01cc:	a801      	add	r0, sp, #4
c0de01ce:	f000 fa2a 	bl	c0de0626 <handler_cmd_blake2b512>
c0de01d2:	e099      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01d4:	68a0      	ldr	r0, [r4, #8]
c0de01d6:	2800      	cmp	r0, #0
c0de01d8:	f000 8098 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01dc:	f000 f8a7 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01e0:	a801      	add	r0, sp, #4
c0de01e2:	f000 fac1 	bl	c0de0768 <handler_cmd_Poseidon>
c0de01e6:	e08f      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01e8:	68a0      	ldr	r0, [r4, #8]
c0de01ea:	2800      	cmp	r0, #0
c0de01ec:	f000 808e 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01f0:	f000 f89d 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01f4:	a801      	add	r0, sp, #4
c0de01f6:	f000 fc1d 	bl	c0de0a34 <handler_cmd_tEddsaPoseidon>
c0de01fa:	e085      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01fc:	68a0      	ldr	r0, [r4, #8]
c0de01fe:	2800      	cmp	r0, #0
c0de0200:	f000 8084 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de0204:	f000 f893 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0208:	a801      	add	r0, sp, #4
c0de020a:	f000 fb79 	bl	c0de0900 <handler_cmd_tEddsaPoseidon_Kpub>
c0de020e:	e07b      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0210:	68a0      	ldr	r0, [r4, #8]
c0de0212:	2800      	cmp	r0, #0
c0de0214:	d07a      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0216:	f000 f88a 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de021a:	a801      	add	r0, sp, #4
c0de021c:	f000 fbb1 	bl	c0de0982 <handler_cmd_tEddsaPoseidon_Sign>
c0de0220:	e072      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0222:	68a0      	ldr	r0, [r4, #8]
c0de0224:	2800      	cmp	r0, #0
c0de0226:	d071      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0228:	f000 f881 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de022c:	a801      	add	r0, sp, #4
c0de022e:	f000 fb21 	bl	c0de0874 <handler_cmd_Poseidon_ithRC>
c0de0232:	e069      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0234:	68a0      	ldr	r0, [r4, #8]
c0de0236:	2800      	cmp	r0, #0
c0de0238:	d068      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de023a:	f000 f878 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de023e:	a801      	add	r0, sp, #4
c0de0240:	f000 fc6c 	bl	c0de0b1c <handler_cmd_tEdwards>
c0de0244:	e060      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0246:	68a0      	ldr	r0, [r4, #8]
c0de0248:	2800      	cmp	r0, #0
c0de024a:	d05f      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de024c:	f000 f86f 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0250:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0254:	f000 ba3e 	b.w	c0de06d4 <handler_cmd_bolos_stretch>
c0de0258:	68a0      	ldr	r0, [r4, #8]
c0de025a:	2800      	cmp	r0, #0
c0de025c:	d056      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de025e:	f000 f866 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0262:	a801      	add	r0, sp, #4
c0de0264:	f000 fd10 	bl	c0de0c88 <handler_cmd_Interpolate>
c0de0268:	e04e      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de026a:	68a0      	ldr	r0, [r4, #8]
c0de026c:	2800      	cmp	r0, #0
c0de026e:	d04d      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0270:	f000 f85d 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0274:	a801      	add	r0, sp, #4
c0de0276:	f000 fdbc 	bl	c0de0df2 <handler_cmd_Split>
c0de027a:	e045      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de027c:	68a0      	ldr	r0, [r4, #8]
c0de027e:	2800      	cmp	r0, #0
c0de0280:	d044      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0282:	f000 f854 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0286:	a801      	add	r0, sp, #4
c0de0288:	f000 fe7b 	bl	c0de0f82 <handler_cmd_frostH>
c0de028c:	e03c      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de028e:	68a0      	ldr	r0, [r4, #8]
c0de0290:	b3e0      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de0292:	f000 f84c 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0296:	a801      	add	r0, sp, #4
c0de0298:	f000 fec4 	bl	c0de1024 <handler_cmd_encodeCommitment>
c0de029c:	e034      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de029e:	68a0      	ldr	r0, [r4, #8]
c0de02a0:	b3a0      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02a2:	f000 f844 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02a6:	a801      	add	r0, sp, #4
c0de02a8:	f000 fef2 	bl	c0de1090 <handler_cmd_GroupCommitment>
c0de02ac:	e02c      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de02ae:	68a0      	ldr	r0, [r4, #8]
c0de02b0:	b360      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02b2:	f000 f83c 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02b6:	a801      	add	r0, sp, #4
c0de02b8:	f000 ff2c 	bl	c0de1114 <handler_cmd_BindingFactors>
c0de02bc:	e024      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de02be:	78a0      	ldrb	r0, [r4, #2]
c0de02c0:	2801      	cmp	r0, #1
c0de02c2:	d826      	bhi.n	c0de0312 <apdu_dispatcher+0x2a0>
c0de02c4:	78e0      	ldrb	r0, [r4, #3]
c0de02c6:	bb20      	cbnz	r0, c0de0312 <apdu_dispatcher+0x2a0>
c0de02c8:	68a0      	ldr	r0, [r4, #8]
c0de02ca:	b1f8      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02cc:	f000 f82f 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02d0:	a801      	add	r0, sp, #4
c0de02d2:	f000 ff93 	bl	c0de11fc <handler_get_insecure_secret>
c0de02d6:	e017      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de02d8:	68a0      	ldr	r0, [r4, #8]
c0de02da:	b1b8      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02dc:	f000 f827 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02e0:	a801      	add	r0, sp, #4
c0de02e2:	f001 f823 	bl	c0de132c <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de02e6:	e00f      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de02e8:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de02ec:	e013      	b.n	c0de0316 <apdu_dispatcher+0x2a4>
c0de02ee:	78e0      	ldrb	r0, [r4, #3]
c0de02f0:	2880      	cmp	r0, #128	@ 0x80
c0de02f2:	d10e      	bne.n	c0de0312 <apdu_dispatcher+0x2a0>
c0de02f4:	2080      	movs	r0, #128	@ 0x80
c0de02f6:	68a2      	ldr	r2, [r4, #8]
c0de02f8:	b142      	cbz	r2, c0de030c <apdu_dispatcher+0x29a>
c0de02fa:	9201      	str	r2, [sp, #4]
c0de02fc:	7922      	ldrb	r2, [r4, #4]
c0de02fe:	9202      	str	r2, [sp, #8]
c0de0300:	09c2      	lsrs	r2, r0, #7
c0de0302:	a801      	add	r0, sp, #4
c0de0304:	f000 f8e0 	bl	c0de04c8 <handler_sign_tx>
c0de0308:	b004      	add	sp, #16
c0de030a:	bd10      	pop	{r4, pc}
c0de030c:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0310:	e001      	b.n	c0de0316 <apdu_dispatcher+0x2a4>
c0de0312:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0316:	b004      	add	sp, #16
c0de0318:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de031c:	f000 b800 	b.w	c0de0320 <io_send_sw>

c0de0320 <io_send_sw>:
c0de0320:	b580      	push	{r7, lr}
c0de0322:	4602      	mov	r2, r0
c0de0324:	2000      	movs	r0, #0
c0de0326:	2100      	movs	r1, #0
c0de0328:	f006 fa38 	bl	c0de679c <io_send_response_buffers>
c0de032c:	bd80      	pop	{r7, pc}

c0de032e <OUTLINED_FUNCTION_0>:
c0de032e:	9001      	str	r0, [sp, #4]
c0de0330:	7920      	ldrb	r0, [r4, #4]
c0de0332:	9002      	str	r0, [sp, #8]
c0de0334:	4770      	bx	lr
	...

c0de0338 <app_main>:
c0de0338:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de033a:	f006 fa11 	bl	c0de6760 <io_init>
c0de033e:	481e      	ldr	r0, [pc, #120]	@ (c0de03b8 <app_main+0x80>)
c0de0340:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0344:	b908      	cbnz	r0, c0de034a <app_main+0x12>
c0de0346:	f001 fab1 	bl	c0de18ac <ui_menu_main>
c0de034a:	481c      	ldr	r0, [pc, #112]	@ (c0de03bc <app_main+0x84>)
c0de034c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0350:	4448      	add	r0, r9
c0de0352:	f007 f9e7 	bl	c0de7724 <explicit_bzero>
c0de0356:	481b      	ldr	r0, [pc, #108]	@ (c0de03c4 <app_main+0x8c>)
c0de0358:	4478      	add	r0, pc
c0de035a:	f006 fec9 	bl	c0de70f0 <pic>
c0de035e:	7880      	ldrb	r0, [r0, #2]
c0de0360:	2801      	cmp	r0, #1
c0de0362:	d00d      	beq.n	c0de0380 <app_main+0x48>
c0de0364:	2001      	movs	r0, #1
c0de0366:	f88d 0002 	strb.w	r0, [sp, #2]
c0de036a:	2000      	movs	r0, #0
c0de036c:	f8ad 0000 	strh.w	r0, [sp]
c0de0370:	4815      	ldr	r0, [pc, #84]	@ (c0de03c8 <app_main+0x90>)
c0de0372:	4478      	add	r0, pc
c0de0374:	f006 febc 	bl	c0de70f0 <pic>
c0de0378:	4669      	mov	r1, sp
c0de037a:	2203      	movs	r2, #3
c0de037c:	f006 fee8 	bl	c0de7150 <nvm_write>
c0de0380:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03c0 <app_main+0x88>)
c0de0382:	ac01      	add	r4, sp, #4
c0de0384:	f006 f9f4 	bl	c0de6770 <io_recv_command>
c0de0388:	2800      	cmp	r0, #0
c0de038a:	d414      	bmi.n	c0de03b6 <app_main+0x7e>
c0de038c:	4602      	mov	r2, r0
c0de038e:	eb09 0105 	add.w	r1, r9, r5
c0de0392:	4620      	mov	r0, r4
c0de0394:	f006 faec 	bl	c0de6970 <apdu_parser>
c0de0398:	b130      	cbz	r0, c0de03a8 <app_main+0x70>
c0de039a:	4620      	mov	r0, r4
c0de039c:	f7ff fe69 	bl	c0de0072 <apdu_dispatcher>
c0de03a0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03a4:	dcee      	bgt.n	c0de0384 <app_main+0x4c>
c0de03a6:	e006      	b.n	c0de03b6 <app_main+0x7e>
c0de03a8:	2000      	movs	r0, #0
c0de03aa:	2100      	movs	r1, #0
c0de03ac:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03b0:	f006 f9f4 	bl	c0de679c <io_send_response_buffers>
c0de03b4:	e7e6      	b.n	c0de0384 <app_main+0x4c>
c0de03b6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de03b8:	000008d8 	.word	0x000008d8
c0de03bc:	00000000 	.word	0x00000000
c0de03c0:	00000414 	.word	0x00000414
c0de03c4:	000088a4 	.word	0x000088a4
c0de03c8:	0000888a 	.word	0x0000888a

c0de03cc <handler_get_app_name>:
c0de03cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03ce:	4808      	ldr	r0, [pc, #32]	@ (c0de03f0 <handler_get_app_name+0x24>)
c0de03d0:	4478      	add	r0, pc
c0de03d2:	f006 fe8d 	bl	c0de70f0 <pic>
c0de03d6:	2100      	movs	r1, #0
c0de03d8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03dc:	9103      	str	r1, [sp, #12]
c0de03de:	2107      	movs	r1, #7
c0de03e0:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de03e4:	a801      	add	r0, sp, #4
c0de03e6:	2101      	movs	r1, #1
c0de03e8:	f006 f9d8 	bl	c0de679c <io_send_response_buffers>
c0de03ec:	b004      	add	sp, #16
c0de03ee:	bd80      	pop	{r7, pc}
c0de03f0:	00007930 	.word	0x00007930

c0de03f4 <handler_get_public_key>:
c0de03f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de03f6:	b085      	sub	sp, #20
c0de03f8:	4f23      	ldr	r7, [pc, #140]	@ (c0de0488 <handler_get_public_key+0x94>)
c0de03fa:	460c      	mov	r4, r1
c0de03fc:	4605      	mov	r5, r0
c0de03fe:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0402:	eb09 0607 	add.w	r6, r9, r7
c0de0406:	4630      	mov	r0, r6
c0de0408:	f007 f98c 	bl	c0de7724 <explicit_bzero>
c0de040c:	2000      	movs	r0, #0
c0de040e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0412:	f809 0007 	strb.w	r0, [r9, r7]
c0de0416:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de041a:	4628      	mov	r0, r5
c0de041c:	f005 ff92 	bl	c0de6344 <buffer_read_u8>
c0de0420:	b308      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0422:	eb09 0007 	add.w	r0, r9, r7
c0de0426:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de042a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de042e:	4628      	mov	r0, r5
c0de0430:	f005 ffdb 	bl	c0de63ea <buffer_read_bip32_path>
c0de0434:	b1b8      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0436:	eb09 0007 	add.w	r0, r9, r7
c0de043a:	2100      	movs	r1, #0
c0de043c:	2205      	movs	r2, #5
c0de043e:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de0442:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de0446:	9104      	str	r1, [sp, #16]
c0de0448:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de044c:	f100 0608 	add.w	r6, r0, #8
c0de0450:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de0454:	2000      	movs	r0, #0
c0de0456:	2121      	movs	r1, #33	@ 0x21
c0de0458:	e9cd 6500 	strd	r6, r5, [sp]
c0de045c:	f006 f886 	bl	c0de656c <bip32_derive_with_seed_get_pubkey_256>
c0de0460:	b140      	cbz	r0, c0de0474 <handler_get_public_key+0x80>
c0de0462:	b280      	uxth	r0, r0
c0de0464:	e001      	b.n	c0de046a <handler_get_public_key+0x76>
c0de0466:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de046a:	b005      	add	sp, #20
c0de046c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0470:	f000 b80c 	b.w	c0de048c <io_send_sw>
c0de0474:	2c00      	cmp	r4, #0
c0de0476:	b005      	add	sp, #20
c0de0478:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de047c:	bf08      	it	eq
c0de047e:	f000 bfd9 	beq.w	c0de1434 <helper_send_response_pubkey>
c0de0482:	f001 baf7 	b.w	c0de1a74 <ui_display_address>
c0de0486:	bf00      	nop
c0de0488:	00000000 	.word	0x00000000

c0de048c <io_send_sw>:
c0de048c:	b580      	push	{r7, lr}
c0de048e:	4602      	mov	r2, r0
c0de0490:	2000      	movs	r0, #0
c0de0492:	2100      	movs	r1, #0
c0de0494:	f006 f982 	bl	c0de679c <io_send_response_buffers>
c0de0498:	bd80      	pop	{r7, pc}

c0de049a <handler_get_version>:
c0de049a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de049c:	2000      	movs	r0, #0
c0de049e:	2101      	movs	r1, #1
c0de04a0:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de04a4:	f88d 0002 	strb.w	r0, [sp, #2]
c0de04a8:	f88d 0001 	strb.w	r0, [sp, #1]
c0de04ac:	9003      	str	r0, [sp, #12]
c0de04ae:	2003      	movs	r0, #3
c0de04b0:	f88d 1003 	strb.w	r1, [sp, #3]
c0de04b4:	2101      	movs	r1, #1
c0de04b6:	9002      	str	r0, [sp, #8]
c0de04b8:	f10d 0001 	add.w	r0, sp, #1
c0de04bc:	9001      	str	r0, [sp, #4]
c0de04be:	a801      	add	r0, sp, #4
c0de04c0:	f006 f96c 	bl	c0de679c <io_send_response_buffers>
c0de04c4:	b004      	add	sp, #16
c0de04c6:	bd80      	pop	{r7, pc}

c0de04c8 <handler_sign_tx>:
c0de04c8:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de04ca:	4e4f      	ldr	r6, [pc, #316]	@ (c0de0608 <handler_sign_tx+0x140>)
c0de04cc:	4604      	mov	r4, r0
c0de04ce:	b191      	cbz	r1, c0de04f6 <handler_sign_tx+0x2e>
c0de04d0:	eb09 0006 	add.w	r0, r9, r6
c0de04d4:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de04d8:	2801      	cmp	r0, #1
c0de04da:	d12c      	bne.n	c0de0536 <handler_sign_tx+0x6e>
c0de04dc:	eb09 0006 	add.w	r0, r9, r6
c0de04e0:	4615      	mov	r5, r2
c0de04e2:	6862      	ldr	r2, [r4, #4]
c0de04e4:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de04e8:	1811      	adds	r1, r2, r0
c0de04ea:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de04ee:	d925      	bls.n	c0de053c <handler_sign_tx+0x74>
c0de04f0:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de04f4:	e039      	b.n	c0de056a <handler_sign_tx+0xa2>
c0de04f6:	eb09 0506 	add.w	r5, r9, r6
c0de04fa:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de04fe:	4628      	mov	r0, r5
c0de0500:	f007 f910 	bl	c0de7724 <explicit_bzero>
c0de0504:	2000      	movs	r0, #0
c0de0506:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de050a:	f809 0006 	strb.w	r0, [r9, r6]
c0de050e:	2001      	movs	r0, #1
c0de0510:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0514:	4620      	mov	r0, r4
c0de0516:	f005 ff15 	bl	c0de6344 <buffer_read_u8>
c0de051a:	b148      	cbz	r0, c0de0530 <handler_sign_tx+0x68>
c0de051c:	eb09 0006 	add.w	r0, r9, r6
c0de0520:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0524:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de0528:	4620      	mov	r0, r4
c0de052a:	f005 ff5e 	bl	c0de63ea <buffer_read_bip32_path>
c0de052e:	b9b8      	cbnz	r0, c0de0560 <handler_sign_tx+0x98>
c0de0530:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0534:	e019      	b.n	c0de056a <handler_sign_tx+0xa2>
c0de0536:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de053a:	e016      	b.n	c0de056a <handler_sign_tx+0xa2>
c0de053c:	eb09 0106 	add.w	r1, r9, r6
c0de0540:	4408      	add	r0, r1
c0de0542:	f100 0108 	add.w	r1, r0, #8
c0de0546:	4620      	mov	r0, r4
c0de0548:	f005 ff79 	bl	c0de643e <buffer_move>
c0de054c:	b158      	cbz	r0, c0de0566 <handler_sign_tx+0x9e>
c0de054e:	eb09 0106 	add.w	r1, r9, r6
c0de0552:	6862      	ldr	r2, [r4, #4]
c0de0554:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de0558:	4410      	add	r0, r2
c0de055a:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de055e:	b14d      	cbz	r5, c0de0574 <handler_sign_tx+0xac>
c0de0560:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de0564:	e001      	b.n	c0de056a <handler_sign_tx+0xa2>
c0de0566:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de056a:	b004      	add	sp, #16
c0de056c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0570:	f000 b852 	b.w	c0de0618 <io_send_sw>
c0de0574:	2100      	movs	r1, #0
c0de0576:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de057a:	eb09 0006 	add.w	r0, r9, r6
c0de057e:	f100 0108 	add.w	r1, r0, #8
c0de0582:	9101      	str	r1, [sp, #4]
c0de0584:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de0588:	a801      	add	r0, sp, #4
c0de058a:	f001 f8b1 	bl	c0de16f0 <transaction_deserialize>
c0de058e:	2801      	cmp	r0, #1
c0de0590:	d122      	bne.n	c0de05d8 <handler_sign_tx+0x110>
c0de0592:	eb09 0106 	add.w	r1, r9, r6
c0de0596:	2201      	movs	r2, #1
c0de0598:	f501 700e 	add.w	r0, r1, #568	@ 0x238
c0de059c:	f801 2b2d 	strb.w	r2, [r1], #45
c0de05a0:	2220      	movs	r2, #32
c0de05a2:	f007 f8a7 	bl	c0de76f4 <__aeabi_memcpy>
c0de05a6:	4819      	ldr	r0, [pc, #100]	@ (c0de060c <handler_sign_tx+0x144>)
c0de05a8:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de05ac:	b1d0      	cbz	r0, c0de05e4 <handler_sign_tx+0x11c>
c0de05ae:	4818      	ldr	r0, [pc, #96]	@ (c0de0610 <handler_sign_tx+0x148>)
c0de05b0:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de05b4:	bb29      	cbnz	r1, c0de0602 <handler_sign_tx+0x13a>
c0de05b6:	eb09 0406 	add.w	r4, r9, r6
c0de05ba:	2101      	movs	r1, #1
c0de05bc:	f809 1000 	strb.w	r1, [r9, r0]
c0de05c0:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de05c4:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de05c6:	9400      	str	r4, [sp, #0]
c0de05c8:	f001 f852 	bl	c0de1670 <swap_check_validity>
c0de05cc:	b110      	cbz	r0, c0de05d4 <handler_sign_tx+0x10c>
c0de05ce:	2001      	movs	r0, #1
c0de05d0:	f001 f918 	bl	c0de1804 <validate_transaction>
c0de05d4:	2000      	movs	r0, #0
c0de05d6:	e003      	b.n	c0de05e0 <handler_sign_tx+0x118>
c0de05d8:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05dc:	f000 f81c 	bl	c0de0618 <io_send_sw>
c0de05e0:	b004      	add	sp, #16
c0de05e2:	bd70      	pop	{r4, r5, r6, pc}
c0de05e4:	eb09 0006 	add.w	r0, r9, r6
c0de05e8:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de05ec:	4909      	ldr	r1, [pc, #36]	@ (c0de0614 <handler_sign_tx+0x14c>)
c0de05ee:	4479      	add	r1, pc
c0de05f0:	f007 f8dc 	bl	c0de77ac <strcmp>
c0de05f4:	b110      	cbz	r0, c0de05fc <handler_sign_tx+0x134>
c0de05f6:	f001 fb2e 	bl	c0de1c56 <ui_display_transaction>
c0de05fa:	e7f1      	b.n	c0de05e0 <handler_sign_tx+0x118>
c0de05fc:	f001 fb28 	bl	c0de1c50 <ui_display_blind_signed_transaction>
c0de0600:	e7ee      	b.n	c0de05e0 <handler_sign_tx+0x118>
c0de0602:	20ff      	movs	r0, #255	@ 0xff
c0de0604:	f006 ff3a 	bl	c0de747c <os_sched_exit>
c0de0608:	00000000 	.word	0x00000000
c0de060c:	000008d8 	.word	0x000008d8
c0de0610:	000008d9 	.word	0x000008d9
c0de0614:	0000740c 	.word	0x0000740c

c0de0618 <io_send_sw>:
c0de0618:	b580      	push	{r7, lr}
c0de061a:	4602      	mov	r2, r0
c0de061c:	2000      	movs	r0, #0
c0de061e:	2100      	movs	r1, #0
c0de0620:	f006 f8bc 	bl	c0de679c <io_send_response_buffers>
c0de0624:	bd80      	pop	{r7, pc}

c0de0626 <handler_cmd_blake2b512>:
c0de0626:	b510      	push	{r4, lr}
c0de0628:	b0d0      	sub	sp, #320	@ 0x140
c0de062a:	4604      	mov	r4, r0
c0de062c:	6840      	ldr	r0, [r0, #4]
c0de062e:	2820      	cmp	r0, #32
c0de0630:	d10b      	bne.n	c0de064a <handler_cmd_blake2b512+0x24>
c0de0632:	6820      	ldr	r0, [r4, #0]
c0de0634:	a940      	add	r1, sp, #256	@ 0x100
c0de0636:	2220      	movs	r2, #32
c0de0638:	f001 fb10 	bl	c0de1c5c <zkn_prv_hash>
c0de063c:	b988      	cbnz	r0, c0de0662 <handler_cmd_blake2b512+0x3c>
c0de063e:	a840      	add	r0, sp, #256	@ 0x100
c0de0640:	2140      	movs	r1, #64	@ 0x40
c0de0642:	f000 f817 	bl	c0de0674 <io_send_response_pointer>
c0de0646:	2000      	movs	r0, #0
c0de0648:	e00d      	b.n	c0de0666 <handler_cmd_blake2b512+0x40>
c0de064a:	4668      	mov	r0, sp
c0de064c:	2109      	movs	r1, #9
c0de064e:	2240      	movs	r2, #64	@ 0x40
c0de0650:	f006 fb2d 	bl	c0de6cae <cx_hash_init_ex>
c0de0654:	b928      	cbnz	r0, c0de0662 <handler_cmd_blake2b512+0x3c>
c0de0656:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de065a:	4668      	mov	r0, sp
c0de065c:	f006 fb2c 	bl	c0de6cb8 <cx_hash_update>
c0de0660:	b118      	cbz	r0, c0de066a <handler_cmd_blake2b512+0x44>
c0de0662:	f000 feb5 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0666:	b050      	add	sp, #320	@ 0x140
c0de0668:	bd10      	pop	{r4, pc}
c0de066a:	4668      	mov	r0, sp
c0de066c:	a940      	add	r1, sp, #256	@ 0x100
c0de066e:	f006 fb19 	bl	c0de6ca4 <cx_hash_final>
c0de0672:	e7e3      	b.n	c0de063c <handler_cmd_blake2b512+0x16>

c0de0674 <io_send_response_pointer>:
c0de0674:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0676:	2200      	movs	r2, #0
c0de0678:	ab01      	add	r3, sp, #4
c0de067a:	c307      	stmia	r3!, {r0, r1, r2}
c0de067c:	a801      	add	r0, sp, #4
c0de067e:	2101      	movs	r1, #1
c0de0680:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0684:	f006 f88a 	bl	c0de679c <io_send_response_buffers>
c0de0688:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de068a <io_send_sw>:
c0de068a:	b580      	push	{r7, lr}
c0de068c:	4602      	mov	r2, r0
c0de068e:	2000      	movs	r0, #0
c0de0690:	2100      	movs	r1, #0
c0de0692:	f006 f883 	bl	c0de679c <io_send_response_buffers>
c0de0696:	bd80      	pop	{r7, pc}

c0de0698 <handler_cmd_keccakH>:
c0de0698:	b510      	push	{r4, lr}
c0de069a:	b0f2      	sub	sp, #456	@ 0x1c8
c0de069c:	4604      	mov	r4, r0
c0de069e:	4668      	mov	r0, sp
c0de06a0:	2106      	movs	r1, #6
c0de06a2:	2220      	movs	r2, #32
c0de06a4:	f006 fb03 	bl	c0de6cae <cx_hash_init_ex>
c0de06a8:	b950      	cbnz	r0, c0de06c0 <handler_cmd_keccakH+0x28>
c0de06aa:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06ae:	4668      	mov	r0, sp
c0de06b0:	f006 fb02 	bl	c0de6cb8 <cx_hash_update>
c0de06b4:	b920      	cbnz	r0, c0de06c0 <handler_cmd_keccakH+0x28>
c0de06b6:	4668      	mov	r0, sp
c0de06b8:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06ba:	f006 faf3 	bl	c0de6ca4 <cx_hash_final>
c0de06be:	b118      	cbz	r0, c0de06c8 <handler_cmd_keccakH+0x30>
c0de06c0:	f000 fe86 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de06c4:	b072      	add	sp, #456	@ 0x1c8
c0de06c6:	bd10      	pop	{r4, pc}
c0de06c8:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de06ca:	f000 feb0 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de06ce:	2000      	movs	r0, #0
c0de06d0:	e7f8      	b.n	c0de06c4 <handler_cmd_keccakH+0x2c>
	...

c0de06d4 <handler_cmd_bolos_stretch>:
c0de06d4:	b510      	push	{r4, lr}
c0de06d6:	b0a4      	sub	sp, #144	@ 0x90
c0de06d8:	f000 fe76 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de06dc:	bba0      	cbnz	r0, c0de0748 <handler_cmd_bolos_stretch+0x74>
c0de06de:	ac14      	add	r4, sp, #80	@ 0x50
c0de06e0:	491e      	ldr	r1, [pc, #120]	@ (c0de075c <handler_cmd_bolos_stretch+0x88>)
c0de06e2:	2220      	movs	r2, #32
c0de06e4:	4620      	mov	r0, r4
c0de06e6:	4479      	add	r1, pc
c0de06e8:	f007 f804 	bl	c0de76f4 <__aeabi_memcpy>
c0de06ec:	a80c      	add	r0, sp, #48	@ 0x30
c0de06ee:	491c      	ldr	r1, [pc, #112]	@ (c0de0760 <handler_cmd_bolos_stretch+0x8c>)
c0de06f0:	2220      	movs	r2, #32
c0de06f2:	4479      	add	r1, pc
c0de06f4:	f006 fffe 	bl	c0de76f4 <__aeabi_memcpy>
c0de06f8:	a804      	add	r0, sp, #16
c0de06fa:	491a      	ldr	r1, [pc, #104]	@ (c0de0764 <handler_cmd_bolos_stretch+0x90>)
c0de06fc:	2220      	movs	r2, #32
c0de06fe:	4479      	add	r1, pc
c0de0700:	f006 fff8 	bl	c0de76f4 <__aeabi_memcpy>
c0de0704:	a803      	add	r0, sp, #12
c0de0706:	2120      	movs	r1, #32
c0de0708:	4622      	mov	r2, r4
c0de070a:	f000 fe75 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de070e:	b9d8      	cbnz	r0, c0de0748 <handler_cmd_bolos_stretch+0x74>
c0de0710:	a802      	add	r0, sp, #8
c0de0712:	aa0c      	add	r2, sp, #48	@ 0x30
c0de0714:	2120      	movs	r1, #32
c0de0716:	f000 fe6f 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de071a:	b9a8      	cbnz	r0, c0de0748 <handler_cmd_bolos_stretch+0x74>
c0de071c:	a801      	add	r0, sp, #4
c0de071e:	aa04      	add	r2, sp, #16
c0de0720:	2120      	movs	r1, #32
c0de0722:	f000 fe69 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de0726:	b978      	cbnz	r0, c0de0748 <handler_cmd_bolos_stretch+0x74>
c0de0728:	4668      	mov	r0, sp
c0de072a:	f000 fe57 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de072e:	b958      	cbnz	r0, c0de0748 <handler_cmd_bolos_stretch+0x74>
c0de0730:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de0734:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0738:	f006 fda0 	bl	c0de727c <cx_bn_mod_add>
c0de073c:	b920      	cbnz	r0, c0de0748 <handler_cmd_bolos_stretch+0x74>
c0de073e:	9800      	ldr	r0, [sp, #0]
c0de0740:	a91c      	add	r1, sp, #112	@ 0x70
c0de0742:	f000 fe48 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0746:	b118      	cbz	r0, c0de0750 <handler_cmd_bolos_stretch+0x7c>
c0de0748:	f000 fe42 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de074c:	b024      	add	sp, #144	@ 0x90
c0de074e:	bd10      	pop	{r4, pc}
c0de0750:	a81c      	add	r0, sp, #112	@ 0x70
c0de0752:	f000 fe6c 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de0756:	2000      	movs	r0, #0
c0de0758:	e7f8      	b.n	c0de074c <handler_cmd_bolos_stretch+0x78>
c0de075a:	bf00      	nop
c0de075c:	00007726 	.word	0x00007726
c0de0760:	0000769a 	.word	0x0000769a
c0de0764:	000077ae 	.word	0x000077ae

c0de0768 <handler_cmd_Poseidon>:
c0de0768:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de076c:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0770:	4604      	mov	r4, r0
c0de0772:	a860      	add	r0, sp, #384	@ 0x180
c0de0774:	493d      	ldr	r1, [pc, #244]	@ (c0de086c <handler_cmd_Poseidon+0x104>)
c0de0776:	22a0      	movs	r2, #160	@ 0xa0
c0de0778:	4479      	add	r1, pc
c0de077a:	f006 ffbb 	bl	c0de76f4 <__aeabi_memcpy>
c0de077e:	f000 fe23 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0782:	bb68      	cbnz	r0, c0de07e0 <handler_cmd_Poseidon+0x78>
c0de0784:	2000      	movs	r0, #0
c0de0786:	a948      	add	r1, sp, #288	@ 0x120
c0de0788:	22ff      	movs	r2, #255	@ 0xff
c0de078a:	2860      	cmp	r0, #96	@ 0x60
c0de078c:	d002      	beq.n	c0de0794 <handler_cmd_Poseidon+0x2c>
c0de078e:	540a      	strb	r2, [r1, r0]
c0de0790:	3001      	adds	r0, #1
c0de0792:	e7fa      	b.n	c0de078a <handler_cmd_Poseidon+0x22>
c0de0794:	4936      	ldr	r1, [pc, #216]	@ (c0de0870 <handler_cmd_Poseidon+0x108>)
c0de0796:	466d      	mov	r5, sp
c0de0798:	2220      	movs	r2, #32
c0de079a:	4628      	mov	r0, r5
c0de079c:	4479      	add	r1, pc
c0de079e:	f006 ffa9 	bl	c0de76f4 <__aeabi_memcpy>
c0de07a2:	a809      	add	r0, sp, #36	@ 0x24
c0de07a4:	2120      	movs	r1, #32
c0de07a6:	462a      	mov	r2, r5
c0de07a8:	f000 fe26 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de07ac:	b9c0      	cbnz	r0, c0de07e0 <handler_cmd_Poseidon+0x78>
c0de07ae:	a808      	add	r0, sp, #32
c0de07b0:	466a      	mov	r2, sp
c0de07b2:	2120      	movs	r1, #32
c0de07b4:	f000 fe20 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de07b8:	b990      	cbnz	r0, c0de07e0 <handler_cmd_Poseidon+0x78>
c0de07ba:	a80a      	add	r0, sp, #40	@ 0x28
c0de07bc:	2120      	movs	r1, #32
c0de07be:	f006 fda3 	bl	c0de7308 <cx_mont_alloc>
c0de07c2:	b968      	cbnz	r0, c0de07e0 <handler_cmd_Poseidon+0x78>
c0de07c4:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07c6:	a80a      	add	r0, sp, #40	@ 0x28
c0de07c8:	f006 fda8 	bl	c0de731c <cx_mont_init>
c0de07cc:	b940      	cbnz	r0, c0de07e0 <handler_cmd_Poseidon+0x78>
c0de07ce:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de07d2:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07d4:	2105      	movs	r1, #5
c0de07d6:	2205      	movs	r2, #5
c0de07d8:	4640      	mov	r0, r8
c0de07da:	f002 fb83 	bl	c0de2ee4 <Poseidon_alloc_init>
c0de07de:	b128      	cbz	r0, c0de07ec <handler_cmd_Poseidon+0x84>
c0de07e0:	f000 fdf6 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de07e4:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de07e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de07ec:	2700      	movs	r7, #0
c0de07ee:	ae60      	add	r6, sp, #384	@ 0x180
c0de07f0:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de07f2:	4287      	cmp	r7, r0
c0de07f4:	d212      	bcs.n	c0de081c <handler_cmd_Poseidon+0xb4>
c0de07f6:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de07fa:	4631      	mov	r1, r6
c0de07fc:	2220      	movs	r2, #32
c0de07fe:	69e8      	ldr	r0, [r5, #28]
c0de0800:	f006 fcec 	bl	c0de71dc <cx_bn_init>
c0de0804:	2800      	cmp	r0, #0
c0de0806:	d1eb      	bne.n	c0de07e0 <handler_cmd_Poseidon+0x78>
c0de0808:	69e8      	ldr	r0, [r5, #28]
c0de080a:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de080c:	4601      	mov	r1, r0
c0de080e:	f006 fd8f 	bl	c0de7330 <cx_mont_to_montgomery>
c0de0812:	3701      	adds	r7, #1
c0de0814:	3620      	adds	r6, #32
c0de0816:	2800      	cmp	r0, #0
c0de0818:	d0ea      	beq.n	c0de07f0 <handler_cmd_Poseidon+0x88>
c0de081a:	e7e1      	b.n	c0de07e0 <handler_cmd_Poseidon+0x78>
c0de081c:	aa08      	add	r2, sp, #32
c0de081e:	4640      	mov	r0, r8
c0de0820:	2100      	movs	r1, #0
c0de0822:	2301      	movs	r3, #1
c0de0824:	f002 fbc4 	bl	c0de2fb0 <Poseidon>
c0de0828:	6820      	ldr	r0, [r4, #0]
c0de082a:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de082c:	7800      	ldrb	r0, [r0, #0]
c0de082e:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de0832:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de0836:	4601      	mov	r1, r0
c0de0838:	f006 fd86 	bl	c0de7348 <cx_mont_from_montgomery>
c0de083c:	2800      	cmp	r0, #0
c0de083e:	d1cf      	bne.n	c0de07e0 <handler_cmd_Poseidon+0x78>
c0de0840:	6820      	ldr	r0, [r4, #0]
c0de0842:	a948      	add	r1, sp, #288	@ 0x120
c0de0844:	f000 fdc7 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0848:	2800      	cmp	r0, #0
c0de084a:	d1c9      	bne.n	c0de07e0 <handler_cmd_Poseidon+0x78>
c0de084c:	a848      	add	r0, sp, #288	@ 0x120
c0de084e:	2160      	movs	r1, #96	@ 0x60
c0de0850:	f7ff ff10 	bl	c0de0674 <io_send_response_pointer>
c0de0854:	a808      	add	r0, sp, #32
c0de0856:	f006 fcad 	bl	c0de71b4 <cx_bn_destroy>
c0de085a:	2800      	cmp	r0, #0
c0de085c:	d1c0      	bne.n	c0de07e0 <handler_cmd_Poseidon+0x78>
c0de085e:	f006 fc8b 	bl	c0de7178 <cx_bn_unlock>
c0de0862:	2800      	cmp	r0, #0
c0de0864:	d1bc      	bne.n	c0de07e0 <handler_cmd_Poseidon+0x78>
c0de0866:	2000      	movs	r0, #0
c0de0868:	e7bc      	b.n	c0de07e4 <handler_cmd_Poseidon+0x7c>
c0de086a:	bf00      	nop
c0de086c:	00007814 	.word	0x00007814
c0de0870:	00007770 	.word	0x00007770

c0de0874 <handler_cmd_Poseidon_ithRC>:
c0de0874:	b570      	push	{r4, r5, r6, lr}
c0de0876:	b0d0      	sub	sp, #320	@ 0x140
c0de0878:	4604      	mov	r4, r0
c0de087a:	f000 fda5 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de087e:	bba0      	cbnz	r0, c0de08ea <handler_cmd_Poseidon_ithRC+0x76>
c0de0880:	a848      	add	r0, sp, #288	@ 0x120
c0de0882:	491d      	ldr	r1, [pc, #116]	@ (c0de08f8 <handler_cmd_Poseidon_ithRC+0x84>)
c0de0884:	2220      	movs	r2, #32
c0de0886:	4479      	add	r1, pc
c0de0888:	f006 ff34 	bl	c0de76f4 <__aeabi_memcpy>
c0de088c:	ad01      	add	r5, sp, #4
c0de088e:	491b      	ldr	r1, [pc, #108]	@ (c0de08fc <handler_cmd_Poseidon_ithRC+0x88>)
c0de0890:	2220      	movs	r2, #32
c0de0892:	4628      	mov	r0, r5
c0de0894:	4479      	add	r1, pc
c0de0896:	f006 ff2d 	bl	c0de76f4 <__aeabi_memcpy>
c0de089a:	a809      	add	r0, sp, #36	@ 0x24
c0de089c:	2120      	movs	r1, #32
c0de089e:	462a      	mov	r2, r5
c0de08a0:	f000 fdaa 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de08a4:	bb08      	cbnz	r0, c0de08ea <handler_cmd_Poseidon_ithRC+0x76>
c0de08a6:	a80a      	add	r0, sp, #40	@ 0x28
c0de08a8:	2120      	movs	r1, #32
c0de08aa:	f006 fd2d 	bl	c0de7308 <cx_mont_alloc>
c0de08ae:	b9e0      	cbnz	r0, c0de08ea <handler_cmd_Poseidon_ithRC+0x76>
c0de08b0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08b2:	a80a      	add	r0, sp, #40	@ 0x28
c0de08b4:	f006 fd32 	bl	c0de731c <cx_mont_init>
c0de08b8:	b9b8      	cbnz	r0, c0de08ea <handler_cmd_Poseidon_ithRC+0x76>
c0de08ba:	a80c      	add	r0, sp, #48	@ 0x30
c0de08bc:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08be:	2105      	movs	r1, #5
c0de08c0:	2205      	movs	r2, #5
c0de08c2:	f002 fb0f 	bl	c0de2ee4 <Poseidon_alloc_init>
c0de08c6:	b980      	cbnz	r0, c0de08ea <handler_cmd_Poseidon_ithRC+0x76>
c0de08c8:	6820      	ldr	r0, [r4, #0]
c0de08ca:	7806      	ldrb	r6, [r0, #0]
c0de08cc:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08ce:	ad48      	add	r5, sp, #288	@ 0x120
c0de08d0:	b12e      	cbz	r6, c0de08de <handler_cmd_Poseidon_ithRC+0x6a>
c0de08d2:	4620      	mov	r0, r4
c0de08d4:	4629      	mov	r1, r5
c0de08d6:	f002 fb01 	bl	c0de2edc <Poseidon_getNext_RC>
c0de08da:	3e01      	subs	r6, #1
c0de08dc:	e7f8      	b.n	c0de08d0 <handler_cmd_Poseidon_ithRC+0x5c>
c0de08de:	a848      	add	r0, sp, #288	@ 0x120
c0de08e0:	f000 fda5 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de08e4:	f006 fc48 	bl	c0de7178 <cx_bn_unlock>
c0de08e8:	b118      	cbz	r0, c0de08f2 <handler_cmd_Poseidon_ithRC+0x7e>
c0de08ea:	f000 fd71 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de08ee:	b050      	add	sp, #320	@ 0x140
c0de08f0:	bd70      	pop	{r4, r5, r6, pc}
c0de08f2:	2000      	movs	r0, #0
c0de08f4:	e7fb      	b.n	c0de08ee <handler_cmd_Poseidon_ithRC+0x7a>
c0de08f6:	bf00      	nop
c0de08f8:	000074e6 	.word	0x000074e6
c0de08fc:	00007678 	.word	0x00007678

c0de0900 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0900:	b5b0      	push	{r4, r5, r7, lr}
c0de0902:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de0906:	6801      	ldr	r1, [r0, #0]
c0de0908:	2200      	movs	r2, #0
c0de090a:	23ff      	movs	r3, #255	@ 0xff
c0de090c:	780d      	ldrb	r5, [r1, #0]
c0de090e:	ac5a      	add	r4, sp, #360	@ 0x168
c0de0910:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de0914:	d002      	beq.n	c0de091c <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de0916:	54a3      	strb	r3, [r4, r2]
c0de0918:	3201      	adds	r2, #1
c0de091a:	e7f9      	b.n	c0de0910 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de091c:	6840      	ldr	r0, [r0, #4]
c0de091e:	3101      	adds	r1, #1
c0de0920:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0922:	3801      	subs	r0, #1
c0de0924:	b128      	cbz	r0, c0de0932 <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de0926:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de092a:	3801      	subs	r0, #1
c0de092c:	f802 3b01 	strb.w	r3, [r2], #1
c0de0930:	e7f8      	b.n	c0de0924 <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de0932:	f000 fd49 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0936:	b9e8      	cbnz	r0, c0de0974 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0938:	a804      	add	r0, sp, #16
c0de093a:	f000 fd75 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de093e:	b9c8      	cbnz	r0, c0de0974 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0940:	a804      	add	r0, sp, #16
c0de0942:	a901      	add	r1, sp, #4
c0de0944:	f001 fdb2 	bl	c0de24ac <tEdwards_alloc>
c0de0948:	b9a0      	cbnz	r0, c0de0974 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de094a:	a804      	add	r0, sp, #16
c0de094c:	a91a      	add	r1, sp, #104	@ 0x68
c0de094e:	aa01      	add	r2, sp, #4
c0de0950:	f001 f9ba 	bl	c0de1cc8 <zkn_prv2pub>
c0de0954:	b970      	cbnz	r0, c0de0974 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0956:	a804      	add	r0, sp, #16
c0de0958:	f104 0320 	add.w	r3, r4, #32
c0de095c:	a901      	add	r1, sp, #4
c0de095e:	f000 fd4e 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0962:	b938      	cbnz	r0, c0de0974 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0964:	9804      	ldr	r0, [sp, #16]
c0de0966:	0041      	lsls	r1, r0, #1
c0de0968:	a85a      	add	r0, sp, #360	@ 0x168
c0de096a:	f7ff fe83 	bl	c0de0674 <io_send_response_pointer>
c0de096e:	f006 fc03 	bl	c0de7178 <cx_bn_unlock>
c0de0972:	b120      	cbz	r0, c0de097e <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de0974:	f000 fd2c 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0978:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de097c:	bdb0      	pop	{r4, r5, r7, pc}
c0de097e:	2000      	movs	r0, #0
c0de0980:	e7fa      	b.n	c0de0978 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de0982 <handler_cmd_tEddsaPoseidon_Sign>:
c0de0982:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0984:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de0988:	4606      	mov	r6, r0
c0de098a:	6800      	ldr	r0, [r0, #0]
c0de098c:	2100      	movs	r1, #0
c0de098e:	22ff      	movs	r2, #255	@ 0xff
c0de0990:	7805      	ldrb	r5, [r0, #0]
c0de0992:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de0994:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de0998:	d002      	beq.n	c0de09a0 <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de099a:	5462      	strb	r2, [r4, r1]
c0de099c:	3101      	adds	r1, #1
c0de099e:	e7f9      	b.n	c0de0994 <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de09a0:	6871      	ldr	r1, [r6, #4]
c0de09a2:	3001      	adds	r0, #1
c0de09a4:	aa2b      	add	r2, sp, #172	@ 0xac
c0de09a6:	3901      	subs	r1, #1
c0de09a8:	b129      	cbz	r1, c0de09b6 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de09aa:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de09ae:	3901      	subs	r1, #1
c0de09b0:	f802 3b01 	strb.w	r3, [r2], #1
c0de09b4:	e7f8      	b.n	c0de09a8 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de09b6:	f000 fd07 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de09ba:	bba0      	cbnz	r0, c0de0a26 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09bc:	6830      	ldr	r0, [r6, #0]
c0de09be:	aa0a      	add	r2, sp, #40	@ 0x28
c0de09c0:	2100      	movs	r1, #0
c0de09c2:	ab02      	add	r3, sp, #8
c0de09c4:	2920      	cmp	r1, #32
c0de09c6:	d007      	beq.n	c0de09d8 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de09c8:	1846      	adds	r6, r0, r1
c0de09ca:	7877      	ldrb	r7, [r6, #1]
c0de09cc:	5457      	strb	r7, [r2, r1]
c0de09ce:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de09d2:	545e      	strb	r6, [r3, r1]
c0de09d4:	3101      	adds	r1, #1
c0de09d6:	e7f5      	b.n	c0de09c4 <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de09d8:	a815      	add	r0, sp, #84	@ 0x54
c0de09da:	f000 fd25 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de09de:	bb10      	cbnz	r0, c0de0a26 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09e0:	a815      	add	r0, sp, #84	@ 0x54
c0de09e2:	a912      	add	r1, sp, #72	@ 0x48
c0de09e4:	f001 fd62 	bl	c0de24ac <tEdwards_alloc>
c0de09e8:	b9e8      	cbnz	r0, c0de0a26 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09ea:	a815      	add	r0, sp, #84	@ 0x54
c0de09ec:	a92b      	add	r1, sp, #172	@ 0xac
c0de09ee:	aa12      	add	r2, sp, #72	@ 0x48
c0de09f0:	f001 f96a 	bl	c0de1cc8 <zkn_prv2pub>
c0de09f4:	b9b8      	cbnz	r0, c0de0a26 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09f6:	a815      	add	r0, sp, #84	@ 0x54
c0de09f8:	f104 0320 	add.w	r3, r4, #32
c0de09fc:	a912      	add	r1, sp, #72	@ 0x48
c0de09fe:	f000 fcfe 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0a02:	b980      	cbnz	r0, c0de0a26 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a04:	2020      	movs	r0, #32
c0de0a06:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a0a:	a815      	add	r0, sp, #84	@ 0x54
c0de0a0c:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a0e:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a10:	ab02      	add	r3, sp, #8
c0de0a12:	f001 f981 	bl	c0de1d18 <EddsaPoseidon_Sign_final>
c0de0a16:	b930      	cbnz	r0, c0de0a26 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a18:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a1a:	2160      	movs	r1, #96	@ 0x60
c0de0a1c:	f7ff fe2a 	bl	c0de0674 <io_send_response_pointer>
c0de0a20:	f006 fbaa 	bl	c0de7178 <cx_bn_unlock>
c0de0a24:	b120      	cbz	r0, c0de0a30 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a26:	f000 fcd3 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0a2a:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0a2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a30:	2000      	movs	r0, #0
c0de0a32:	e7fa      	b.n	c0de0a2a <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0a34 <handler_cmd_tEddsaPoseidon>:
c0de0a34:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0a38:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0a3a:	4605      	mov	r5, r0
c0de0a3c:	6800      	ldr	r0, [r0, #0]
c0de0a3e:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0a42:	21ff      	movs	r1, #255	@ 0xff
c0de0a44:	7806      	ldrb	r6, [r0, #0]
c0de0a46:	2000      	movs	r0, #0
c0de0a48:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a4c:	d002      	beq.n	c0de0a54 <handler_cmd_tEddsaPoseidon+0x20>
c0de0a4e:	5421      	strb	r1, [r4, r0]
c0de0a50:	3001      	adds	r0, #1
c0de0a52:	e7f9      	b.n	c0de0a48 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a54:	f000 fcb8 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0a58:	2800      	cmp	r0, #0
c0de0a5a:	d154      	bne.n	c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a5c:	af14      	add	r7, sp, #80	@ 0x50
c0de0a5e:	4631      	mov	r1, r6
c0de0a60:	4638      	mov	r0, r7
c0de0a62:	f001 fea3 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de0a66:	2800      	cmp	r0, #0
c0de0a68:	d14d      	bne.n	c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a6a:	f107 060c 	add.w	r6, r7, #12
c0de0a6e:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a72:	4638      	mov	r0, r7
c0de0a74:	4631      	mov	r1, r6
c0de0a76:	f001 fe42 	bl	c0de26fe <tEdwards_IsOnCurve>
c0de0a7a:	2800      	cmp	r0, #0
c0de0a7c:	d143      	bne.n	c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a7e:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0a82:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a86:	2901      	cmp	r1, #1
c0de0a88:	d13d      	bne.n	c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a8a:	4922      	ldr	r1, [pc, #136]	@ (c0de0b14 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0a8c:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0a90:	2220      	movs	r2, #32
c0de0a92:	4650      	mov	r0, sl
c0de0a94:	4479      	add	r1, pc
c0de0a96:	f006 fe2d 	bl	c0de76f4 <__aeabi_memcpy>
c0de0a9a:	af01      	add	r7, sp, #4
c0de0a9c:	491e      	ldr	r1, [pc, #120]	@ (c0de0b18 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0a9e:	2220      	movs	r2, #32
c0de0aa0:	4638      	mov	r0, r7
c0de0aa2:	4479      	add	r1, pc
c0de0aa4:	f006 fe26 	bl	c0de76f4 <__aeabi_memcpy>
c0de0aa8:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0aac:	a814      	add	r0, sp, #80	@ 0x50
c0de0aae:	4651      	mov	r1, sl
c0de0ab0:	463a      	mov	r2, r7
c0de0ab2:	4643      	mov	r3, r8
c0de0ab4:	f002 f86b 	bl	c0de2b8e <tEdwards_alloc_init>
c0de0ab8:	bb28      	cbnz	r0, c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aba:	a814      	add	r0, sp, #80	@ 0x50
c0de0abc:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0ac0:	4631      	mov	r1, r6
c0de0ac2:	f001 fe1c 	bl	c0de26fe <tEdwards_IsOnCurve>
c0de0ac6:	b9f0      	cbnz	r0, c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ac8:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0acc:	2801      	cmp	r0, #1
c0de0ace:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0ad2:	d118      	bne.n	c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad4:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0ad8:	f8cd 8000 	str.w	r8, [sp]
c0de0adc:	1c42      	adds	r2, r0, #1
c0de0ade:	1e4b      	subs	r3, r1, #1
c0de0ae0:	a814      	add	r0, sp, #80	@ 0x50
c0de0ae2:	4631      	mov	r1, r6
c0de0ae4:	f002 f8d8 	bl	c0de2c98 <tEdwards_scalarMul>
c0de0ae8:	b968      	cbnz	r0, c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aea:	a814      	add	r0, sp, #80	@ 0x50
c0de0aec:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0af0:	a911      	add	r1, sp, #68	@ 0x44
c0de0af2:	f000 fc84 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0af6:	b930      	cbnz	r0, c0de0b06 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0af8:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0afc:	f000 fc78 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de0b00:	f006 fb3a 	bl	c0de7178 <cx_bn_unlock>
c0de0b04:	b120      	cbz	r0, c0de0b10 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b06:	f000 fc63 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0b0a:	b06b      	add	sp, #428	@ 0x1ac
c0de0b0c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b10:	2000      	movs	r0, #0
c0de0b12:	e7fa      	b.n	c0de0b0a <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b14:	00007498 	.word	0x00007498
c0de0b18:	000074aa 	.word	0x000074aa

c0de0b1c <handler_cmd_tEdwards>:
c0de0b1c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b1e:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0b20:	4605      	mov	r5, r0
c0de0b22:	6840      	ldr	r0, [r0, #4]
c0de0b24:	2841      	cmp	r0, #65	@ 0x41
c0de0b26:	d801      	bhi.n	c0de0b2c <handler_cmd_tEdwards+0x10>
c0de0b28:	2802      	cmp	r0, #2
c0de0b2a:	d202      	bcs.n	c0de0b32 <handler_cmd_tEdwards+0x16>
c0de0b2c:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0b30:	e015      	b.n	c0de0b5e <handler_cmd_tEdwards+0x42>
c0de0b32:	6828      	ldr	r0, [r5, #0]
c0de0b34:	21ff      	movs	r1, #255	@ 0xff
c0de0b36:	7806      	ldrb	r6, [r0, #0]
c0de0b38:	2000      	movs	r0, #0
c0de0b3a:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0b3c:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0b40:	d002      	beq.n	c0de0b48 <handler_cmd_tEdwards+0x2c>
c0de0b42:	5421      	strb	r1, [r4, r0]
c0de0b44:	3001      	adds	r0, #1
c0de0b46:	e7f9      	b.n	c0de0b3c <handler_cmd_tEdwards+0x20>
c0de0b48:	f000 fc3e 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0b4c:	b920      	cbnz	r0, c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0b4e:	a819      	add	r0, sp, #100	@ 0x64
c0de0b50:	4631      	mov	r1, r6
c0de0b52:	f001 fe2b 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de0b56:	b120      	cbz	r0, c0de0b62 <handler_cmd_tEdwards+0x46>
c0de0b58:	b280      	uxth	r0, r0
c0de0b5a:	f7ff fd96 	bl	c0de068a <io_send_sw>
c0de0b5e:	b06f      	add	sp, #444	@ 0x1bc
c0de0b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0b62:	2e02      	cmp	r6, #2
c0de0b64:	d00c      	beq.n	c0de0b80 <handler_cmd_tEdwards+0x64>
c0de0b66:	2e01      	cmp	r6, #1
c0de0b68:	d128      	bne.n	c0de0bbc <handler_cmd_tEdwards+0xa0>
c0de0b6a:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b6c:	4942      	ldr	r1, [pc, #264]	@ (c0de0c78 <handler_cmd_tEdwards+0x15c>)
c0de0b6e:	2220      	movs	r2, #32
c0de0b70:	4630      	mov	r0, r6
c0de0b72:	4479      	add	r1, pc
c0de0b74:	f006 fdbe 	bl	c0de76f4 <__aeabi_memcpy>
c0de0b78:	af03      	add	r7, sp, #12
c0de0b7a:	4940      	ldr	r1, [pc, #256]	@ (c0de0c7c <handler_cmd_tEdwards+0x160>)
c0de0b7c:	4479      	add	r1, pc
c0de0b7e:	e009      	b.n	c0de0b94 <handler_cmd_tEdwards+0x78>
c0de0b80:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b82:	493f      	ldr	r1, [pc, #252]	@ (c0de0c80 <handler_cmd_tEdwards+0x164>)
c0de0b84:	2220      	movs	r2, #32
c0de0b86:	4630      	mov	r0, r6
c0de0b88:	4479      	add	r1, pc
c0de0b8a:	f006 fdb3 	bl	c0de76f4 <__aeabi_memcpy>
c0de0b8e:	af03      	add	r7, sp, #12
c0de0b90:	493c      	ldr	r1, [pc, #240]	@ (c0de0c84 <handler_cmd_tEdwards+0x168>)
c0de0b92:	4479      	add	r1, pc
c0de0b94:	4638      	mov	r0, r7
c0de0b96:	2220      	movs	r2, #32
c0de0b98:	f006 fdac 	bl	c0de76f4 <__aeabi_memcpy>
c0de0b9c:	a819      	add	r0, sp, #100	@ 0x64
c0de0b9e:	ab16      	add	r3, sp, #88	@ 0x58
c0de0ba0:	4631      	mov	r1, r6
c0de0ba2:	463a      	mov	r2, r7
c0de0ba4:	f001 fff3 	bl	c0de2b8e <tEdwards_alloc_init>
c0de0ba8:	2800      	cmp	r0, #0
c0de0baa:	d1d5      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0bac:	a819      	add	r0, sp, #100	@ 0x64
c0de0bae:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bb0:	aa03      	add	r2, sp, #12
c0de0bb2:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bb4:	f001 ffeb 	bl	c0de2b8e <tEdwards_alloc_init>
c0de0bb8:	2800      	cmp	r0, #0
c0de0bba:	d1cd      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0bbc:	2000      	movs	r0, #0
c0de0bbe:	f10d 020b 	add.w	r2, sp, #11
c0de0bc2:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bc6:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc8:	a916      	add	r1, sp, #88	@ 0x58
c0de0bca:	f001 fd98 	bl	c0de26fe <tEdwards_IsOnCurve>
c0de0bce:	2800      	cmp	r0, #0
c0de0bd0:	d1c2      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0bd2:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bd6:	2801      	cmp	r0, #1
c0de0bd8:	d142      	bne.n	c0de0c60 <handler_cmd_tEdwards+0x144>
c0de0bda:	a819      	add	r0, sp, #100	@ 0x64
c0de0bdc:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0bde:	f10d 020b 	add.w	r2, sp, #11
c0de0be2:	4631      	mov	r1, r6
c0de0be4:	f001 fd8b 	bl	c0de26fe <tEdwards_IsOnCurve>
c0de0be8:	2800      	cmp	r0, #0
c0de0bea:	d1b5      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0bec:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bf0:	2801      	cmp	r0, #1
c0de0bf2:	d138      	bne.n	c0de0c66 <handler_cmd_tEdwards+0x14a>
c0de0bf4:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0bf6:	f10d 010b 	add.w	r1, sp, #11
c0de0bfa:	f006 fb7b 	bl	c0de72f4 <cx_bn_is_prime>
c0de0bfe:	2800      	cmp	r0, #0
c0de0c00:	d1aa      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0c02:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c06:	2801      	cmp	r0, #1
c0de0c08:	d130      	bne.n	c0de0c6c <handler_cmd_tEdwards+0x150>
c0de0c0a:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c0c:	f10d 010b 	add.w	r1, sp, #11
c0de0c10:	f006 fb70 	bl	c0de72f4 <cx_bn_is_prime>
c0de0c14:	2800      	cmp	r0, #0
c0de0c16:	d19f      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0c18:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1c:	2801      	cmp	r0, #1
c0de0c1e:	d128      	bne.n	c0de0c72 <handler_cmd_tEdwards+0x156>
c0de0c20:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0c24:	9600      	str	r6, [sp, #0]
c0de0c26:	1c42      	adds	r2, r0, #1
c0de0c28:	1e4b      	subs	r3, r1, #1
c0de0c2a:	a819      	add	r0, sp, #100	@ 0x64
c0de0c2c:	a916      	add	r1, sp, #88	@ 0x58
c0de0c2e:	f002 f833 	bl	c0de2c98 <tEdwards_scalarMul>
c0de0c32:	2800      	cmp	r0, #0
c0de0c34:	d190      	bne.n	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0c36:	a819      	add	r0, sp, #100	@ 0x64
c0de0c38:	f104 0320 	add.w	r3, r4, #32
c0de0c3c:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c3e:	f000 fbde 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0c42:	2800      	cmp	r0, #0
c0de0c44:	f47f af88 	bne.w	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0c48:	f006 fa96 	bl	c0de7178 <cx_bn_unlock>
c0de0c4c:	2800      	cmp	r0, #0
c0de0c4e:	f47f af83 	bne.w	c0de0b58 <handler_cmd_tEdwards+0x3c>
c0de0c52:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c54:	0041      	lsls	r1, r0, #1
c0de0c56:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0c58:	f7ff fd0c 	bl	c0de0674 <io_send_response_pointer>
c0de0c5c:	2000      	movs	r0, #0
c0de0c5e:	e77e      	b.n	c0de0b5e <handler_cmd_tEdwards+0x42>
c0de0c60:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0c64:	e779      	b.n	c0de0b5a <handler_cmd_tEdwards+0x3e>
c0de0c66:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0c6a:	e776      	b.n	c0de0b5a <handler_cmd_tEdwards+0x3e>
c0de0c6c:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0c70:	e773      	b.n	c0de0b5a <handler_cmd_tEdwards+0x3e>
c0de0c72:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0c76:	e770      	b.n	c0de0b5a <handler_cmd_tEdwards+0x3e>
c0de0c78:	0000723a 	.word	0x0000723a
c0de0c7c:	000072b0 	.word	0x000072b0
c0de0c80:	00007244 	.word	0x00007244
c0de0c84:	000071ba 	.word	0x000071ba

c0de0c88 <handler_cmd_Interpolate>:
c0de0c88:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0c8c:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0c90:	4605      	mov	r5, r0
c0de0c92:	6800      	ldr	r0, [r0, #0]
c0de0c94:	22ff      	movs	r2, #255	@ 0xff
c0de0c96:	7804      	ldrb	r4, [r0, #0]
c0de0c98:	2000      	movs	r0, #0
c0de0c9a:	a944      	add	r1, sp, #272	@ 0x110
c0de0c9c:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0ca0:	d002      	beq.n	c0de0ca8 <handler_cmd_Interpolate+0x20>
c0de0ca2:	540a      	strb	r2, [r1, r0]
c0de0ca4:	3001      	adds	r0, #1
c0de0ca6:	e7f9      	b.n	c0de0c9c <handler_cmd_Interpolate+0x14>
c0de0ca8:	f000 fb8e 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0cac:	bb28      	cbnz	r0, c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0cae:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0cb2:	4621      	mov	r1, r4
c0de0cb4:	4640      	mov	r0, r8
c0de0cb6:	f001 fd79 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de0cba:	b9f0      	cbnz	r0, c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0cbc:	a827      	add	r0, sp, #156	@ 0x9c
c0de0cbe:	f000 fb8d 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0cc2:	b9d0      	cbnz	r0, c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0cc4:	6828      	ldr	r0, [r5, #0]
c0de0cc6:	2100      	movs	r1, #0
c0de0cc8:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0cca:	3001      	adds	r0, #1
c0de0ccc:	2960      	cmp	r1, #96	@ 0x60
c0de0cce:	d003      	beq.n	c0de0cd8 <handler_cmd_Interpolate+0x50>
c0de0cd0:	5c43      	ldrb	r3, [r0, r1]
c0de0cd2:	5453      	strb	r3, [r2, r1]
c0de0cd4:	3101      	adds	r1, #1
c0de0cd6:	e7f9      	b.n	c0de0ccc <handler_cmd_Interpolate+0x44>
c0de0cd8:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0cda:	2100      	movs	r1, #0
c0de0cdc:	af2b      	add	r7, sp, #172	@ 0xac
c0de0cde:	1d0c      	adds	r4, r1, #4
c0de0ce0:	2c10      	cmp	r4, #16
c0de0ce2:	d010      	beq.n	c0de0d06 <handler_cmd_Interpolate+0x7e>
c0de0ce4:	1878      	adds	r0, r7, r1
c0de0ce6:	2120      	movs	r1, #32
c0de0ce8:	2320      	movs	r3, #32
c0de0cea:	f102 0520 	add.w	r5, r2, #32
c0de0cee:	f006 fa55 	bl	c0de719c <cx_bn_alloc_init>
c0de0cf2:	2800      	cmp	r0, #0
c0de0cf4:	462a      	mov	r2, r5
c0de0cf6:	4621      	mov	r1, r4
c0de0cf8:	d0f1      	beq.n	c0de0cde <handler_cmd_Interpolate+0x56>
c0de0cfa:	f000 fb69 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0cfe:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d02:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d06:	f108 000c 	add.w	r0, r8, #12
c0de0d0a:	f04f 0a00 	mov.w	sl, #0
c0de0d0e:	2601      	movs	r6, #1
c0de0d10:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d14:	9001      	str	r0, [sp, #4]
c0de0d16:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d18:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d1c:	d03b      	beq.n	c0de0d96 <handler_cmd_Interpolate+0x10e>
c0de0d1e:	a828      	add	r0, sp, #160	@ 0xa0
c0de0d20:	2120      	movs	r1, #32
c0de0d22:	eb00 040a 	add.w	r4, r0, sl
c0de0d26:	4620      	mov	r0, r4
c0de0d28:	f006 fa2e 	bl	c0de7188 <cx_bn_alloc>
c0de0d2c:	2800      	cmp	r0, #0
c0de0d2e:	d1e4      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d30:	6820      	ldr	r0, [r4, #0]
c0de0d32:	4631      	mov	r1, r6
c0de0d34:	f006 fa68 	bl	c0de7208 <cx_bn_set_u32>
c0de0d38:	2800      	cmp	r0, #0
c0de0d3a:	d1de      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d3c:	4640      	mov	r0, r8
c0de0d3e:	4659      	mov	r1, fp
c0de0d40:	f001 fbb4 	bl	c0de24ac <tEdwards_alloc>
c0de0d44:	2800      	cmp	r0, #0
c0de0d46:	d1d8      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d48:	9602      	str	r6, [sp, #8]
c0de0d4a:	eb07 060a 	add.w	r6, r7, sl
c0de0d4e:	9901      	ldr	r1, [sp, #4]
c0de0d50:	4640      	mov	r0, r8
c0de0d52:	465b      	mov	r3, fp
c0de0d54:	4632      	mov	r2, r6
c0de0d56:	f001 ff39 	bl	c0de2bcc <tEdwards_scalarMul_bn>
c0de0d5a:	2800      	cmp	r0, #0
c0de0d5c:	d1cd      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d5e:	6820      	ldr	r0, [r4, #0]
c0de0d60:	4629      	mov	r1, r5
c0de0d62:	f000 fb38 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0d66:	2800      	cmp	r0, #0
c0de0d68:	d1c7      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d6a:	6830      	ldr	r0, [r6, #0]
c0de0d6c:	f105 0120 	add.w	r1, r5, #32
c0de0d70:	f000 fb31 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1c0      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d78:	4640      	mov	r0, r8
c0de0d7a:	4659      	mov	r1, fp
c0de0d7c:	f001 fec7 	bl	c0de2b0e <tEdwards_normalize>
c0de0d80:	9e02      	ldr	r6, [sp, #8]
c0de0d82:	3540      	adds	r5, #64	@ 0x40
c0de0d84:	f10b 0b0c 	add.w	fp, fp, #12
c0de0d88:	f10a 0a04 	add.w	sl, sl, #4
c0de0d8c:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d8e:	3601      	adds	r6, #1
c0de0d90:	2800      	cmp	r0, #0
c0de0d92:	d0c1      	beq.n	c0de0d18 <handler_cmd_Interpolate+0x90>
c0de0d94:	e7b1      	b.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0d96:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d98:	2303      	movs	r3, #3
c0de0d9a:	9000      	str	r0, [sp, #0]
c0de0d9c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d9e:	a928      	add	r1, sp, #160	@ 0xa0
c0de0da0:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0da2:	f001 f980 	bl	c0de20a6 <zkn_frost_interpolate_secrets>
c0de0da6:	2800      	cmp	r0, #0
c0de0da8:	d1a7      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0daa:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dac:	a944      	add	r1, sp, #272	@ 0x110
c0de0dae:	2220      	movs	r2, #32
c0de0db0:	31c0      	adds	r1, #192	@ 0xc0
c0de0db2:	f006 fa33 	bl	c0de721c <cx_bn_export>
c0de0db6:	2800      	cmp	r0, #0
c0de0db8:	d19f      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0dba:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dbc:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dbe:	ab03      	add	r3, sp, #12
c0de0dc0:	9901      	ldr	r1, [sp, #4]
c0de0dc2:	f001 ff03 	bl	c0de2bcc <tEdwards_scalarMul_bn>
c0de0dc6:	2800      	cmp	r0, #0
c0de0dc8:	d197      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0dca:	a844      	add	r0, sp, #272	@ 0x110
c0de0dcc:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0dd0:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dd2:	a903      	add	r1, sp, #12
c0de0dd4:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0dd6:	f001 fe74 	bl	c0de2ac2 <tEdwards_export>
c0de0dda:	2800      	cmp	r0, #0
c0de0ddc:	d18d      	bne.n	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0dde:	a844      	add	r0, sp, #272	@ 0x110
c0de0de0:	f000 fb06 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de0de4:	f006 f9c8 	bl	c0de7178 <cx_bn_unlock>
c0de0de8:	2800      	cmp	r0, #0
c0de0dea:	f47f af86 	bne.w	c0de0cfa <handler_cmd_Interpolate+0x72>
c0de0dee:	2000      	movs	r0, #0
c0de0df0:	e785      	b.n	c0de0cfe <handler_cmd_Interpolate+0x76>

c0de0df2 <handler_cmd_Split>:
c0de0df2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0df6:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0dfa:	4604      	mov	r4, r0
c0de0dfc:	6800      	ldr	r0, [r0, #0]
c0de0dfe:	22ff      	movs	r2, #255	@ 0xff
c0de0e00:	7805      	ldrb	r5, [r0, #0]
c0de0e02:	2000      	movs	r0, #0
c0de0e04:	a948      	add	r1, sp, #288	@ 0x120
c0de0e06:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0e0a:	d002      	beq.n	c0de0e12 <handler_cmd_Split+0x20>
c0de0e0c:	540a      	strb	r2, [r1, r0]
c0de0e0e:	3001      	adds	r0, #1
c0de0e10:	e7f9      	b.n	c0de0e06 <handler_cmd_Split+0x14>
c0de0e12:	f000 fad9 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0e16:	bb90      	cbnz	r0, c0de0e7e <handler_cmd_Split+0x8c>
c0de0e18:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e1a:	f000 fb05 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de0e1e:	bb70      	cbnz	r0, c0de0e7e <handler_cmd_Split+0x8c>
c0de0e20:	6820      	ldr	r0, [r4, #0]
c0de0e22:	2200      	movs	r2, #0
c0de0e24:	a91a      	add	r1, sp, #104	@ 0x68
c0de0e26:	3002      	adds	r0, #2
c0de0e28:	2a20      	cmp	r2, #32
c0de0e2a:	d003      	beq.n	c0de0e34 <handler_cmd_Split+0x42>
c0de0e2c:	5c83      	ldrb	r3, [r0, r2]
c0de0e2e:	548b      	strb	r3, [r1, r2]
c0de0e30:	3201      	adds	r2, #1
c0de0e32:	e7f9      	b.n	c0de0e28 <handler_cmd_Split+0x36>
c0de0e34:	6862      	ldr	r2, [r4, #4]
c0de0e36:	3a02      	subs	r2, #2
c0de0e38:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0e3c:	f101 0220 	add.w	r2, r1, #32
c0de0e40:	a888      	add	r0, sp, #544	@ 0x220
c0de0e42:	2101      	movs	r1, #1
c0de0e44:	f005 ff17 	bl	c0de6c76 <cx_blake2b_512_hash_iovec>
c0de0e48:	b9c8      	cbnz	r0, c0de0e7e <handler_cmd_Split+0x8c>
c0de0e4a:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0e4c:	2100      	movs	r1, #0
c0de0e4e:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0e50:	1d0d      	adds	r5, r1, #4
c0de0e52:	2d10      	cmp	r5, #16
c0de0e54:	d00b      	beq.n	c0de0e6e <handler_cmd_Split+0x7c>
c0de0e56:	1860      	adds	r0, r4, r1
c0de0e58:	2120      	movs	r1, #32
c0de0e5a:	2320      	movs	r3, #32
c0de0e5c:	f102 0620 	add.w	r6, r2, #32
c0de0e60:	f006 f99c 	bl	c0de719c <cx_bn_alloc_init>
c0de0e64:	2800      	cmp	r0, #0
c0de0e66:	4632      	mov	r2, r6
c0de0e68:	4629      	mov	r1, r5
c0de0e6a:	d0f1      	beq.n	c0de0e50 <handler_cmd_Split+0x5e>
c0de0e6c:	e007      	b.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0e6e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e70:	f000 fab4 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0e74:	b918      	cbnz	r0, c0de0e7e <handler_cmd_Split+0x8c>
c0de0e76:	a809      	add	r0, sp, #36	@ 0x24
c0de0e78:	f000 fab0 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0e7c:	b128      	cbz	r0, c0de0e8a <handler_cmd_Split+0x98>
c0de0e7e:	f000 faa7 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0e82:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0e86:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0e8a:	f04f 0800 	mov.w	r8, #0
c0de0e8e:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0e92:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0e94:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0e98:	2400      	movs	r4, #0
c0de0e9a:	f1b8 0f10 	cmp.w	r8, #16
c0de0e9e:	d04d      	beq.n	c0de0f3c <handler_cmd_Split+0x14a>
c0de0ea0:	a805      	add	r0, sp, #20
c0de0ea2:	2120      	movs	r1, #32
c0de0ea4:	eb00 0708 	add.w	r7, r0, r8
c0de0ea8:	4638      	mov	r0, r7
c0de0eaa:	f006 f96d 	bl	c0de7188 <cx_bn_alloc>
c0de0eae:	2800      	cmp	r0, #0
c0de0eb0:	d1e5      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0eb2:	a801      	add	r0, sp, #4
c0de0eb4:	2120      	movs	r1, #32
c0de0eb6:	eb00 0508 	add.w	r5, r0, r8
c0de0eba:	4628      	mov	r0, r5
c0de0ebc:	f006 f964 	bl	c0de7188 <cx_bn_alloc>
c0de0ec0:	2800      	cmp	r0, #0
c0de0ec2:	d1dc      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0ec4:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ec6:	4621      	mov	r1, r4
c0de0ec8:	f006 f99e 	bl	c0de7208 <cx_bn_set_u32>
c0de0ecc:	2800      	cmp	r0, #0
c0de0ece:	d1d6      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0ed0:	6828      	ldr	r0, [r5, #0]
c0de0ed2:	4621      	mov	r1, r4
c0de0ed4:	f006 f998 	bl	c0de7208 <cx_bn_set_u32>
c0de0ed8:	2800      	cmp	r0, #0
c0de0eda:	d1d0      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0edc:	4650      	mov	r0, sl
c0de0ede:	4631      	mov	r1, r6
c0de0ee0:	f001 fae4 	bl	c0de24ac <tEdwards_alloc>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d1ca      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0ee8:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0eec:	2202      	movs	r2, #2
c0de0eee:	9000      	str	r0, [sp, #0]
c0de0ef0:	4650      	mov	r0, sl
c0de0ef2:	a917      	add	r1, sp, #92	@ 0x5c
c0de0ef4:	f001 f919 	bl	c0de212a <zkn_evalshare>
c0de0ef8:	2800      	cmp	r0, #0
c0de0efa:	d1c0      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0efc:	6838      	ldr	r0, [r7, #0]
c0de0efe:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f00:	f006 f978 	bl	c0de71f4 <cx_bn_copy>
c0de0f04:	2800      	cmp	r0, #0
c0de0f06:	d1ba      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f08:	4650      	mov	r0, sl
c0de0f0a:	4631      	mov	r1, r6
c0de0f0c:	f001 fdff 	bl	c0de2b0e <tEdwards_normalize>
c0de0f10:	2800      	cmp	r0, #0
c0de0f12:	d1b4      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f14:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f16:	4659      	mov	r1, fp
c0de0f18:	f000 fa5d 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0f1c:	2800      	cmp	r0, #0
c0de0f1e:	d1ae      	bne.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f20:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f22:	f10b 0120 	add.w	r1, fp, #32
c0de0f26:	f000 fa56 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0f2a:	360c      	adds	r6, #12
c0de0f2c:	3401      	adds	r4, #1
c0de0f2e:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0f32:	f108 0804 	add.w	r8, r8, #4
c0de0f36:	2800      	cmp	r0, #0
c0de0f38:	d0af      	beq.n	c0de0e9a <handler_cmd_Split+0xa8>
c0de0f3a:	e7a0      	b.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f3c:	2100      	movs	r1, #0
c0de0f3e:	1d0c      	adds	r4, r1, #4
c0de0f40:	2c10      	cmp	r4, #16
c0de0f42:	d007      	beq.n	c0de0f54 <handler_cmd_Split+0x162>
c0de0f44:	a817      	add	r0, sp, #92	@ 0x5c
c0de0f46:	4408      	add	r0, r1
c0de0f48:	f006 f934 	bl	c0de71b4 <cx_bn_destroy>
c0de0f4c:	2800      	cmp	r0, #0
c0de0f4e:	4621      	mov	r1, r4
c0de0f50:	d0f5      	beq.n	c0de0f3e <handler_cmd_Split+0x14c>
c0de0f52:	e794      	b.n	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f54:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f56:	2303      	movs	r3, #3
c0de0f58:	9000      	str	r0, [sp, #0]
c0de0f5a:	a801      	add	r0, sp, #4
c0de0f5c:	1d01      	adds	r1, r0, #4
c0de0f5e:	a805      	add	r0, sp, #20
c0de0f60:	1d02      	adds	r2, r0, #4
c0de0f62:	a832      	add	r0, sp, #200	@ 0xc8
c0de0f64:	f001 f89f 	bl	c0de20a6 <zkn_frost_interpolate_secrets>
c0de0f68:	2800      	cmp	r0, #0
c0de0f6a:	f47f af88 	bne.w	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f6e:	a848      	add	r0, sp, #288	@ 0x120
c0de0f70:	f000 fa3e 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de0f74:	f006 f900 	bl	c0de7178 <cx_bn_unlock>
c0de0f78:	2800      	cmp	r0, #0
c0de0f7a:	f47f af80 	bne.w	c0de0e7e <handler_cmd_Split+0x8c>
c0de0f7e:	2000      	movs	r0, #0
c0de0f80:	e77f      	b.n	c0de0e82 <handler_cmd_Split+0x90>

c0de0f82 <handler_cmd_frostH>:
c0de0f82:	b5b0      	push	{r4, r5, r7, lr}
c0de0f84:	b0d8      	sub	sp, #352	@ 0x160
c0de0f86:	4604      	mov	r4, r0
c0de0f88:	f000 fa1e 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0f8c:	2800      	cmp	r0, #0
c0de0f8e:	d142      	bne.n	c0de1016 <handler_cmd_frostH+0x94>
c0de0f90:	6820      	ldr	r0, [r4, #0]
c0de0f92:	7801      	ldrb	r1, [r0, #0]
c0de0f94:	a802      	add	r0, sp, #8
c0de0f96:	f001 fc09 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de0f9a:	bbe0      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0f9c:	a801      	add	r0, sp, #4
c0de0f9e:	f000 fa1d 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0fa2:	bbc0      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fa4:	f000 fa1d 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fa8:	f002 f91e 	bl	c0de31e8 <Babyfrost_H1>
c0de0fac:	bb98      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fae:	9801      	ldr	r0, [sp, #4]
c0de0fb0:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fb2:	2220      	movs	r2, #32
c0de0fb4:	4629      	mov	r1, r5
c0de0fb6:	f006 f931 	bl	c0de721c <cx_bn_export>
c0de0fba:	bb60      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fbc:	f000 fa11 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fc0:	f002 f920 	bl	c0de3204 <Babyfrost_H3>
c0de0fc4:	bb38      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fc6:	9801      	ldr	r0, [sp, #4]
c0de0fc8:	f105 0120 	add.w	r1, r5, #32
c0de0fcc:	f000 fa03 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0fd0:	bb08      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fd2:	f000 fa06 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fd6:	f002 f929 	bl	c0de322c <Babyfrost_H4>
c0de0fda:	b9e0      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fdc:	9801      	ldr	r0, [sp, #4]
c0de0fde:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0fe2:	f000 f9f8 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0fe6:	b9b0      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0fe8:	f000 f9fb 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fec:	f002 f92c 	bl	c0de3248 <Babyfrost_H5>
c0de0ff0:	b988      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0ff2:	9801      	ldr	r0, [sp, #4]
c0de0ff4:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de0ff8:	f000 f9ed 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0ffc:	b958      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de0ffe:	9804      	ldr	r0, [sp, #16]
c0de1000:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de1004:	f000 f9e7 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de1008:	b928      	cbnz	r0, c0de1016 <handler_cmd_frostH+0x94>
c0de100a:	a818      	add	r0, sp, #96	@ 0x60
c0de100c:	f000 f9f0 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de1010:	f006 f8b2 	bl	c0de7178 <cx_bn_unlock>
c0de1014:	b118      	cbz	r0, c0de101e <handler_cmd_frostH+0x9c>
c0de1016:	f000 f9db 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de101a:	b058      	add	sp, #352	@ 0x160
c0de101c:	bdb0      	pop	{r4, r5, r7, pc}
c0de101e:	2000      	movs	r0, #0
c0de1020:	e7fb      	b.n	c0de101a <handler_cmd_frostH+0x98>
	...

c0de1024 <handler_cmd_encodeCommitment>:
c0de1024:	b510      	push	{r4, lr}
c0de1026:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de102a:	4604      	mov	r4, r0
c0de102c:	f000 f9cc 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de1030:	bb10      	cbnz	r0, c0de1078 <handler_cmd_encodeCommitment+0x54>
c0de1032:	6820      	ldr	r0, [r4, #0]
c0de1034:	7801      	ldrb	r1, [r0, #0]
c0de1036:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1038:	f001 fbb8 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de103c:	b9e0      	cbnz	r0, c0de1078 <handler_cmd_encodeCommitment+0x54>
c0de103e:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1040:	f000 f9cc 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de1044:	b9c0      	cbnz	r0, c0de1078 <handler_cmd_encodeCommitment+0x54>
c0de1046:	ac01      	add	r4, sp, #4
c0de1048:	4910      	ldr	r1, [pc, #64]	@ (c0de108c <handler_cmd_encodeCommitment+0x68>)
c0de104a:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de104e:	4620      	mov	r0, r4
c0de1050:	4479      	add	r1, pc
c0de1052:	f006 fb4f 	bl	c0de76f4 <__aeabi_memcpy>
c0de1056:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1058:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de105a:	4621      	mov	r1, r4
c0de105c:	2203      	movs	r2, #3
c0de105e:	f001 f89d 	bl	c0de219c <zkn_encode_group_commitmentHash>
c0de1062:	b948      	cbnz	r0, c0de1078 <handler_cmd_encodeCommitment+0x54>
c0de1064:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1066:	a990      	add	r1, sp, #576	@ 0x240
c0de1068:	2220      	movs	r2, #32
c0de106a:	3120      	adds	r1, #32
c0de106c:	f006 f8d6 	bl	c0de721c <cx_bn_export>
c0de1070:	b910      	cbnz	r0, c0de1078 <handler_cmd_encodeCommitment+0x54>
c0de1072:	f006 f881 	bl	c0de7178 <cx_bn_unlock>
c0de1076:	b120      	cbz	r0, c0de1082 <handler_cmd_encodeCommitment+0x5e>
c0de1078:	f000 f9aa 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de107c:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de1080:	bd10      	pop	{r4, pc}
c0de1082:	a890      	add	r0, sp, #576	@ 0x240
c0de1084:	f000 f9d3 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de1088:	2000      	movs	r0, #0
c0de108a:	e7f7      	b.n	c0de107c <handler_cmd_encodeCommitment+0x58>
c0de108c:	00006fdc 	.word	0x00006fdc

c0de1090 <handler_cmd_GroupCommitment>:
c0de1090:	b570      	push	{r4, r5, r6, lr}
c0de1092:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1096:	4604      	mov	r4, r0
c0de1098:	f000 f996 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de109c:	bb58      	cbnz	r0, c0de10f6 <handler_cmd_GroupCommitment+0x66>
c0de109e:	6820      	ldr	r0, [r4, #0]
c0de10a0:	7801      	ldrb	r1, [r0, #0]
c0de10a2:	a894      	add	r0, sp, #592	@ 0x250
c0de10a4:	f001 fb82 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de10a8:	bb28      	cbnz	r0, c0de10f6 <handler_cmd_GroupCommitment+0x66>
c0de10aa:	a894      	add	r0, sp, #592	@ 0x250
c0de10ac:	ac91      	add	r4, sp, #580	@ 0x244
c0de10ae:	4621      	mov	r1, r4
c0de10b0:	f001 f9fc 	bl	c0de24ac <tEdwards_alloc>
c0de10b4:	b9f8      	cbnz	r0, c0de10f6 <handler_cmd_GroupCommitment+0x66>
c0de10b6:	ad19      	add	r5, sp, #100	@ 0x64
c0de10b8:	4914      	ldr	r1, [pc, #80]	@ (c0de110c <handler_cmd_GroupCommitment+0x7c>)
c0de10ba:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10be:	4628      	mov	r0, r5
c0de10c0:	4479      	add	r1, pc
c0de10c2:	f006 fb17 	bl	c0de76f4 <__aeabi_memcpy>
c0de10c6:	ae01      	add	r6, sp, #4
c0de10c8:	4911      	ldr	r1, [pc, #68]	@ (c0de1110 <handler_cmd_GroupCommitment+0x80>)
c0de10ca:	2260      	movs	r2, #96	@ 0x60
c0de10cc:	4630      	mov	r0, r6
c0de10ce:	4479      	add	r1, pc
c0de10d0:	f006 fb10 	bl	c0de76f4 <__aeabi_memcpy>
c0de10d4:	9400      	str	r4, [sp, #0]
c0de10d6:	a894      	add	r0, sp, #592	@ 0x250
c0de10d8:	4629      	mov	r1, r5
c0de10da:	f000 f9a1 	bl	c0de1420 <OUTLINED_FUNCTION_10>
c0de10de:	b950      	cbnz	r0, c0de10f6 <handler_cmd_GroupCommitment+0x66>
c0de10e0:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de10e2:	a894      	add	r0, sp, #592	@ 0x250
c0de10e4:	a991      	add	r1, sp, #580	@ 0x244
c0de10e6:	f102 0320 	add.w	r3, r2, #32
c0de10ea:	f001 fcea 	bl	c0de2ac2 <tEdwards_export>
c0de10ee:	b910      	cbnz	r0, c0de10f6 <handler_cmd_GroupCommitment+0x66>
c0de10f0:	f006 f842 	bl	c0de7178 <cx_bn_unlock>
c0de10f4:	b120      	cbz	r0, c0de1100 <handler_cmd_GroupCommitment+0x70>
c0de10f6:	f000 f96b 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de10fa:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de10fe:	bd70      	pop	{r4, r5, r6, pc}
c0de1100:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de1102:	2140      	movs	r1, #64	@ 0x40
c0de1104:	f7ff fab6 	bl	c0de0674 <io_send_response_pointer>
c0de1108:	2000      	movs	r0, #0
c0de110a:	e7f6      	b.n	c0de10fa <handler_cmd_GroupCommitment+0x6a>
c0de110c:	0000714c 	.word	0x0000714c
c0de1110:	0000731e 	.word	0x0000731e

c0de1114 <handler_cmd_BindingFactors>:
c0de1114:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1118:	f5ad 7d65 	sub.w	sp, sp, #916	@ 0x394
c0de111c:	4604      	mov	r4, r0
c0de111e:	f000 f953 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de1122:	2800      	cmp	r0, #0
c0de1124:	d15c      	bne.n	c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de1126:	6820      	ldr	r0, [r4, #0]
c0de1128:	7801      	ldrb	r1, [r0, #0]
c0de112a:	a88f      	add	r0, sp, #572	@ 0x23c
c0de112c:	f001 fb3e 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de1130:	2800      	cmp	r0, #0
c0de1132:	d155      	bne.n	c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de1134:	a88e      	add	r0, sp, #568	@ 0x238
c0de1136:	f000 f951 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de113a:	2800      	cmp	r0, #0
c0de113c:	d150      	bne.n	c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de113e:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1140:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de1142:	4621      	mov	r1, r4
c0de1144:	f001 f9b2 	bl	c0de24ac <tEdwards_alloc>
c0de1148:	2800      	cmp	r0, #0
c0de114a:	d149      	bne.n	c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de114c:	ad13      	add	r5, sp, #76	@ 0x4c
c0de114e:	4928      	ldr	r1, [pc, #160]	@ (c0de11f0 <handler_cmd_BindingFactors+0xdc>)
c0de1150:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1154:	4628      	mov	r0, r5
c0de1156:	4479      	add	r1, pc
c0de1158:	f006 facc 	bl	c0de76f4 <__aeabi_memcpy>
c0de115c:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de115e:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1160:	4629      	mov	r1, r5
c0de1162:	2203      	movs	r2, #3
c0de1164:	f001 f81a 	bl	c0de219c <zkn_encode_group_commitmentHash>
c0de1168:	bbd0      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de116a:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de116e:	f000 f951 	bl	c0de1414 <OUTLINED_FUNCTION_9>
c0de1172:	bba8      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de1174:	491f      	ldr	r1, [pc, #124]	@ (c0de11f4 <handler_cmd_BindingFactors+0xe0>)
c0de1176:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de117a:	2220      	movs	r2, #32
c0de117c:	4650      	mov	r0, sl
c0de117e:	4479      	add	r1, pc
c0de1180:	f006 fab8 	bl	c0de76f4 <__aeabi_memcpy>
c0de1184:	ad03      	add	r5, sp, #12
c0de1186:	491c      	ldr	r1, [pc, #112]	@ (c0de11f8 <handler_cmd_BindingFactors+0xe4>)
c0de1188:	2220      	movs	r2, #32
c0de118a:	4628      	mov	r0, r5
c0de118c:	4479      	add	r1, pc
c0de118e:	f006 fab1 	bl	c0de76f4 <__aeabi_memcpy>
c0de1192:	f000 f937 	bl	c0de1404 <OUTLINED_FUNCTION_8>
c0de1196:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1198:	aa13      	add	r2, sp, #76	@ 0x4c
c0de119a:	f001 f8e7 	bl	c0de236c <zkn_compute_binding_factors>
c0de119e:	b9f8      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de11a0:	9400      	str	r4, [sp, #0]
c0de11a2:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11a4:	a913      	add	r1, sp, #76	@ 0x4c
c0de11a6:	f000 f93b 	bl	c0de1420 <OUTLINED_FUNCTION_10>
c0de11aa:	b9c8      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de11ac:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11ae:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de11b2:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de11b6:	a98b      	add	r1, sp, #556	@ 0x22c
c0de11b8:	f001 fc83 	bl	c0de2ac2 <tEdwards_export>
c0de11bc:	b980      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de11be:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11c0:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11c4:	f000 f907 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de11c8:	b950      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de11ca:	a8a5      	add	r0, sp, #660	@ 0x294
c0de11cc:	21e0      	movs	r1, #224	@ 0xe0
c0de11ce:	f7ff fa51 	bl	c0de0674 <io_send_response_pointer>
c0de11d2:	a88e      	add	r0, sp, #568	@ 0x238
c0de11d4:	f005 ffee 	bl	c0de71b4 <cx_bn_destroy>
c0de11d8:	b910      	cbnz	r0, c0de11e0 <handler_cmd_BindingFactors+0xcc>
c0de11da:	f005 ffcd 	bl	c0de7178 <cx_bn_unlock>
c0de11de:	b128      	cbz	r0, c0de11ec <handler_cmd_BindingFactors+0xd8>
c0de11e0:	f000 f8f6 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de11e4:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de11e8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de11ec:	2000      	movs	r0, #0
c0de11ee:	e7f9      	b.n	c0de11e4 <handler_cmd_BindingFactors+0xd0>
c0de11f0:	000072f6 	.word	0x000072f6
c0de11f4:	00006cce 	.word	0x00006cce
c0de11f8:	00006de0 	.word	0x00006de0

c0de11fc <handler_get_insecure_secret>:
c0de11fc:	b570      	push	{r4, r5, r6, lr}
c0de11fe:	b0f0      	sub	sp, #448	@ 0x1c0
c0de1200:	4e2c      	ldr	r6, [pc, #176]	@ (c0de12b4 <handler_get_insecure_secret+0xb8>)
c0de1202:	4604      	mov	r4, r0
c0de1204:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de1208:	eb09 0506 	add.w	r5, r9, r6
c0de120c:	4628      	mov	r0, r5
c0de120e:	f006 fa89 	bl	c0de7724 <explicit_bzero>
c0de1212:	2000      	movs	r0, #0
c0de1214:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de1218:	f809 0006 	strb.w	r0, [r9, r6]
c0de121c:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de1220:	4620      	mov	r0, r4
c0de1222:	f005 f88f 	bl	c0de6344 <buffer_read_u8>
c0de1226:	b3c0      	cbz	r0, c0de129a <handler_get_insecure_secret+0x9e>
c0de1228:	eb09 0006 	add.w	r0, r9, r6
c0de122c:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de1230:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de1234:	4620      	mov	r0, r4
c0de1236:	f005 f8d8 	bl	c0de63ea <buffer_read_bip32_path>
c0de123a:	b370      	cbz	r0, c0de129a <handler_get_insecure_secret+0x9e>
c0de123c:	eb09 0006 	add.w	r0, r9, r6
c0de1240:	2100      	movs	r1, #0
c0de1242:	2205      	movs	r2, #5
c0de1244:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1248:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de124c:	9104      	str	r1, [sp, #16]
c0de124e:	f100 0449 	add.w	r4, r0, #73	@ 0x49
c0de1252:	f100 0508 	add.w	r5, r0, #8
c0de1256:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de125a:	2000      	movs	r0, #0
c0de125c:	2121      	movs	r1, #33	@ 0x21
c0de125e:	e9cd 5400 	strd	r5, r4, [sp]
c0de1262:	f005 f983 	bl	c0de656c <bip32_derive_with_seed_get_pubkey_256>
c0de1266:	a806      	add	r0, sp, #24
c0de1268:	2106      	movs	r1, #6
c0de126a:	2220      	movs	r2, #32
c0de126c:	f005 fd1f 	bl	c0de6cae <cx_hash_init_ex>
c0de1270:	b978      	cbnz	r0, c0de1292 <handler_get_insecure_secret+0x96>
c0de1272:	eb09 0006 	add.w	r0, r9, r6
c0de1276:	2241      	movs	r2, #65	@ 0x41
c0de1278:	f100 0108 	add.w	r1, r0, #8
c0de127c:	a806      	add	r0, sp, #24
c0de127e:	f005 fd1b 	bl	c0de6cb8 <cx_hash_update>
c0de1282:	b930      	cbnz	r0, c0de1292 <handler_get_insecure_secret+0x96>
c0de1284:	4c0c      	ldr	r4, [pc, #48]	@ (c0de12b8 <handler_get_insecure_secret+0xbc>)
c0de1286:	a806      	add	r0, sp, #24
c0de1288:	eb09 0104 	add.w	r1, r9, r4
c0de128c:	f005 fd0a 	bl	c0de6ca4 <cx_hash_final>
c0de1290:	b150      	cbz	r0, c0de12a8 <handler_get_insecure_secret+0xac>
c0de1292:	f000 f89d 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de1296:	b070      	add	sp, #448	@ 0x1c0
c0de1298:	bd70      	pop	{r4, r5, r6, pc}
c0de129a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de129e:	b070      	add	sp, #448	@ 0x1c0
c0de12a0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de12a4:	f7ff b9f1 	b.w	c0de068a <io_send_sw>
c0de12a8:	eb09 0004 	add.w	r0, r9, r4
c0de12ac:	f000 f8bf 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de12b0:	2000      	movs	r0, #0
c0de12b2:	e7f0      	b.n	c0de1296 <handler_get_insecure_secret+0x9a>
c0de12b4:	00000000 	.word	0x00000000
c0de12b8:	000002f0 	.word	0x000002f0

c0de12bc <handler_get_insecure_public>:
c0de12bc:	b5b0      	push	{r4, r5, r7, lr}
c0de12be:	b0aa      	sub	sp, #168	@ 0xa8
c0de12c0:	6800      	ldr	r0, [r0, #0]
c0de12c2:	21ff      	movs	r1, #255	@ 0xff
c0de12c4:	7805      	ldrb	r5, [r0, #0]
c0de12c6:	2000      	movs	r0, #0
c0de12c8:	ac1a      	add	r4, sp, #104	@ 0x68
c0de12ca:	2840      	cmp	r0, #64	@ 0x40
c0de12cc:	d002      	beq.n	c0de12d4 <handler_get_insecure_public+0x18>
c0de12ce:	5421      	strb	r1, [r4, r0]
c0de12d0:	3001      	adds	r0, #1
c0de12d2:	e7fa      	b.n	c0de12ca <handler_get_insecure_public+0xe>
c0de12d4:	f000 f878 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de12d8:	b9f8      	cbnz	r0, c0de131a <handler_get_insecure_public+0x5e>
c0de12da:	a804      	add	r0, sp, #16
c0de12dc:	f000 f8a4 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de12e0:	b9d8      	cbnz	r0, c0de131a <handler_get_insecure_public+0x5e>
c0de12e2:	a804      	add	r0, sp, #16
c0de12e4:	a901      	add	r1, sp, #4
c0de12e6:	f001 f8e1 	bl	c0de24ac <tEdwards_alloc>
c0de12ea:	b9b0      	cbnz	r0, c0de131a <handler_get_insecure_public+0x5e>
c0de12ec:	480e      	ldr	r0, [pc, #56]	@ (c0de1328 <handler_get_insecure_public+0x6c>)
c0de12ee:	eb09 0100 	add.w	r1, r9, r0
c0de12f2:	a804      	add	r0, sp, #16
c0de12f4:	aa01      	add	r2, sp, #4
c0de12f6:	f000 fce7 	bl	c0de1cc8 <zkn_prv2pub>
c0de12fa:	b970      	cbnz	r0, c0de131a <handler_get_insecure_public+0x5e>
c0de12fc:	a804      	add	r0, sp, #16
c0de12fe:	f104 0320 	add.w	r3, r4, #32
c0de1302:	a901      	add	r1, sp, #4
c0de1304:	f000 f87b 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de1308:	b938      	cbnz	r0, c0de131a <handler_get_insecure_public+0x5e>
c0de130a:	9804      	ldr	r0, [sp, #16]
c0de130c:	0041      	lsls	r1, r0, #1
c0de130e:	a81a      	add	r0, sp, #104	@ 0x68
c0de1310:	f7ff f9b0 	bl	c0de0674 <io_send_response_pointer>
c0de1314:	f005 ff30 	bl	c0de7178 <cx_bn_unlock>
c0de1318:	b118      	cbz	r0, c0de1322 <handler_get_insecure_public+0x66>
c0de131a:	f000 f859 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de131e:	b02a      	add	sp, #168	@ 0xa8
c0de1320:	bdb0      	pop	{r4, r5, r7, pc}
c0de1322:	2000      	movs	r0, #0
c0de1324:	e7fb      	b.n	c0de131e <handler_get_insecure_public+0x62>
c0de1326:	bf00      	nop
c0de1328:	000002f0 	.word	0x000002f0

c0de132c <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de132c:	b570      	push	{r4, r5, r6, lr}
c0de132e:	b0e4      	sub	sp, #400	@ 0x190
c0de1330:	4606      	mov	r6, r0
c0de1332:	6800      	ldr	r0, [r0, #0]
c0de1334:	21ff      	movs	r1, #255	@ 0xff
c0de1336:	7805      	ldrb	r5, [r0, #0]
c0de1338:	2000      	movs	r0, #0
c0de133a:	ac24      	add	r4, sp, #144	@ 0x90
c0de133c:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de1340:	d002      	beq.n	c0de1348 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1c>
c0de1342:	5421      	strb	r1, [r4, r0]
c0de1344:	3001      	adds	r0, #1
c0de1346:	e7f9      	b.n	c0de133c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de1348:	f000 f83e 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de134c:	bb98      	cbnz	r0, c0de13b6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de134e:	6830      	ldr	r0, [r6, #0]
c0de1350:	2100      	movs	r1, #0
c0de1352:	aa03      	add	r2, sp, #12
c0de1354:	3001      	adds	r0, #1
c0de1356:	2920      	cmp	r1, #32
c0de1358:	d003      	beq.n	c0de1362 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x36>
c0de135a:	5c43      	ldrb	r3, [r0, r1]
c0de135c:	5453      	strb	r3, [r2, r1]
c0de135e:	3101      	adds	r1, #1
c0de1360:	e7f9      	b.n	c0de1356 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x2a>
c0de1362:	a80e      	add	r0, sp, #56	@ 0x38
c0de1364:	f000 f860 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de1368:	bb28      	cbnz	r0, c0de13b6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de136a:	a80e      	add	r0, sp, #56	@ 0x38
c0de136c:	a90b      	add	r1, sp, #44	@ 0x2c
c0de136e:	f001 f89d 	bl	c0de24ac <tEdwards_alloc>
c0de1372:	bb00      	cbnz	r0, c0de13b6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de1374:	4d13      	ldr	r5, [pc, #76]	@ (c0de13c4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x98>)
c0de1376:	a80e      	add	r0, sp, #56	@ 0x38
c0de1378:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de137a:	eb09 0105 	add.w	r1, r9, r5
c0de137e:	f000 fca3 	bl	c0de1cc8 <zkn_prv2pub>
c0de1382:	b9c0      	cbnz	r0, c0de13b6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de1384:	a80e      	add	r0, sp, #56	@ 0x38
c0de1386:	f104 0320 	add.w	r3, r4, #32
c0de138a:	a90b      	add	r1, sp, #44	@ 0x2c
c0de138c:	f000 f837 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de1390:	b988      	cbnz	r0, c0de13b6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de1392:	2020      	movs	r0, #32
c0de1394:	eb09 0105 	add.w	r1, r9, r5
c0de1398:	e9cd 0400 	strd	r0, r4, [sp]
c0de139c:	a80e      	add	r0, sp, #56	@ 0x38
c0de139e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de13a0:	ab03      	add	r3, sp, #12
c0de13a2:	f000 fcb9 	bl	c0de1d18 <EddsaPoseidon_Sign_final>
c0de13a6:	b930      	cbnz	r0, c0de13b6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de13a8:	a824      	add	r0, sp, #144	@ 0x90
c0de13aa:	2160      	movs	r1, #96	@ 0x60
c0de13ac:	f7ff f962 	bl	c0de0674 <io_send_response_pointer>
c0de13b0:	f005 fee2 	bl	c0de7178 <cx_bn_unlock>
c0de13b4:	b118      	cbz	r0, c0de13be <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x92>
c0de13b6:	f000 f80b 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de13ba:	b064      	add	sp, #400	@ 0x190
c0de13bc:	bd70      	pop	{r4, r5, r6, pc}
c0de13be:	2000      	movs	r0, #0
c0de13c0:	e7fb      	b.n	c0de13ba <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8e>
c0de13c2:	bf00      	nop
c0de13c4:	000002f0 	.word	0x000002f0

c0de13c8 <OUTLINED_FUNCTION_0>:
c0de13c8:	2020      	movs	r0, #32
c0de13ca:	2100      	movs	r1, #0
c0de13cc:	f005 beca 	b.w	c0de7164 <cx_bn_lock>

c0de13d0 <OUTLINED_FUNCTION_1>:
c0de13d0:	b280      	uxth	r0, r0
c0de13d2:	f7ff b95a 	b.w	c0de068a <io_send_sw>

c0de13d6 <OUTLINED_FUNCTION_2>:
c0de13d6:	2220      	movs	r2, #32
c0de13d8:	f005 bf20 	b.w	c0de721c <cx_bn_export>

c0de13dc <OUTLINED_FUNCTION_3>:
c0de13dc:	2120      	movs	r1, #32
c0de13de:	f005 bed3 	b.w	c0de7188 <cx_bn_alloc>

c0de13e2 <OUTLINED_FUNCTION_4>:
c0de13e2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de13e6:	9b01      	ldr	r3, [sp, #4]
c0de13e8:	9a04      	ldr	r2, [sp, #16]
c0de13ea:	3001      	adds	r0, #1
c0de13ec:	3901      	subs	r1, #1
c0de13ee:	4770      	bx	lr

c0de13f0 <OUTLINED_FUNCTION_5>:
c0de13f0:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de13f4:	f7ff b93e 	b.w	c0de0674 <io_send_response_pointer>

c0de13f8 <OUTLINED_FUNCTION_6>:
c0de13f8:	2320      	movs	r3, #32
c0de13fa:	f005 becf 	b.w	c0de719c <cx_bn_alloc_init>

c0de13fe <OUTLINED_FUNCTION_7>:
c0de13fe:	4622      	mov	r2, r4
c0de1400:	f001 bb5f 	b.w	c0de2ac2 <tEdwards_export>

c0de1404 <OUTLINED_FUNCTION_8>:
c0de1404:	f108 0620 	add.w	r6, r8, #32
c0de1408:	e9cd 5700 	strd	r5, r7, [sp]
c0de140c:	4651      	mov	r1, sl
c0de140e:	2303      	movs	r3, #3
c0de1410:	9602      	str	r6, [sp, #8]
c0de1412:	4770      	bx	lr

c0de1414 <OUTLINED_FUNCTION_9>:
c0de1414:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de1416:	2220      	movs	r2, #32
c0de1418:	2720      	movs	r7, #32
c0de141a:	4641      	mov	r1, r8
c0de141c:	f005 befe 	b.w	c0de721c <cx_bn_export>

c0de1420 <OUTLINED_FUNCTION_10>:
c0de1420:	4632      	mov	r2, r6
c0de1422:	2303      	movs	r3, #3
c0de1424:	f000 bf37 	b.w	c0de2296 <zkn_compute_group_commitment>

c0de1428 <OUTLINED_FUNCTION_11>:
c0de1428:	4629      	mov	r1, r5
c0de142a:	f001 b9bf 	b.w	c0de27ac <tEdwards_Curve_alloc_init>

c0de142e <OUTLINED_FUNCTION_12>:
c0de142e:	2120      	movs	r1, #32
c0de1430:	f7ff b920 	b.w	c0de0674 <io_send_response_pointer>

c0de1434 <helper_send_response_pubkey>:
c0de1434:	b5b0      	push	{r4, r5, r7, lr}
c0de1436:	b09a      	sub	sp, #104	@ 0x68
c0de1438:	2041      	movs	r0, #65	@ 0x41
c0de143a:	f10d 0405 	add.w	r4, sp, #5
c0de143e:	2241      	movs	r2, #65	@ 0x41
c0de1440:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1444:	480b      	ldr	r0, [pc, #44]	@ (c0de1474 <helper_send_response_pubkey+0x40>)
c0de1446:	eb09 0500 	add.w	r5, r9, r0
c0de144a:	1c60      	adds	r0, r4, #1
c0de144c:	f105 0108 	add.w	r1, r5, #8
c0de1450:	f006 f950 	bl	c0de76f4 <__aeabi_memcpy>
c0de1454:	2020      	movs	r0, #32
c0de1456:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de145a:	2220      	movs	r2, #32
c0de145c:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1460:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1464:	f006 f946 	bl	c0de76f4 <__aeabi_memcpy>
c0de1468:	4620      	mov	r0, r4
c0de146a:	2163      	movs	r1, #99	@ 0x63
c0de146c:	f000 f804 	bl	c0de1478 <io_send_response_pointer>
c0de1470:	b01a      	add	sp, #104	@ 0x68
c0de1472:	bdb0      	pop	{r4, r5, r7, pc}
c0de1474:	00000000 	.word	0x00000000

c0de1478 <io_send_response_pointer>:
c0de1478:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de147a:	2200      	movs	r2, #0
c0de147c:	ab01      	add	r3, sp, #4
c0de147e:	c307      	stmia	r3!, {r0, r1, r2}
c0de1480:	a801      	add	r0, sp, #4
c0de1482:	2101      	movs	r1, #1
c0de1484:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de1488:	f005 f988 	bl	c0de679c <io_send_response_buffers>
c0de148c:	b004      	add	sp, #16
c0de148e:	bd80      	pop	{r7, pc}

c0de1490 <helper_send_response_sig_zkn>:
c0de1490:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1492:	b0a1      	sub	sp, #132	@ 0x84
c0de1494:	f10d 0403 	add.w	r4, sp, #3
c0de1498:	2180      	movs	r1, #128	@ 0x80
c0de149a:	1c65      	adds	r5, r4, #1
c0de149c:	4628      	mov	r0, r5
c0de149e:	f006 f933 	bl	c0de7708 <__aeabi_memclr>
c0de14a2:	480a      	ldr	r0, [pc, #40]	@ (c0de14cc <helper_send_response_sig_zkn+0x3c>)
c0de14a4:	f000 f814 	bl	c0de14d0 <OUTLINED_FUNCTION_0>
c0de14a8:	f88d 6003 	strb.w	r6, [sp, #3]
c0de14ac:	f006 f922 	bl	c0de76f4 <__aeabi_memcpy>
c0de14b0:	1930      	adds	r0, r6, r4
c0de14b2:	f507 710e 	add.w	r1, r7, #568	@ 0x238
c0de14b6:	2220      	movs	r2, #32
c0de14b8:	3001      	adds	r0, #1
c0de14ba:	f006 f91b 	bl	c0de76f4 <__aeabi_memcpy>
c0de14be:	f106 0121 	add.w	r1, r6, #33	@ 0x21
c0de14c2:	4620      	mov	r0, r4
c0de14c4:	f7ff ffd8 	bl	c0de1478 <io_send_response_pointer>
c0de14c8:	b021      	add	sp, #132	@ 0x84
c0de14ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de14cc:	00000000 	.word	0x00000000

c0de14d0 <OUTLINED_FUNCTION_0>:
c0de14d0:	eb09 0700 	add.w	r7, r9, r0
c0de14d4:	4628      	mov	r0, r5
c0de14d6:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de14da:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de14de:	4632      	mov	r2, r6
c0de14e0:	4770      	bx	lr

c0de14e2 <swap_handle_check_address>:
c0de14e2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de14e6:	b0bc      	sub	sp, #240	@ 0xf0
c0de14e8:	4604      	mov	r4, r0
c0de14ea:	2000      	movs	r0, #0
c0de14ec:	68a5      	ldr	r5, [r4, #8]
c0de14ee:	61a0      	str	r0, [r4, #24]
c0de14f0:	2d00      	cmp	r5, #0
c0de14f2:	d04d      	beq.n	c0de1590 <swap_handle_check_address+0xae>
c0de14f4:	6920      	ldr	r0, [r4, #16]
c0de14f6:	2800      	cmp	r0, #0
c0de14f8:	d04a      	beq.n	c0de1590 <swap_handle_check_address+0xae>
c0de14fa:	f006 f961 	bl	c0de77c0 <strlen>
c0de14fe:	2828      	cmp	r0, #40	@ 0x28
c0de1500:	d146      	bne.n	c0de1590 <swap_handle_check_address+0xae>
c0de1502:	7b20      	ldrb	r0, [r4, #12]
c0de1504:	f04f 0800 	mov.w	r8, #0
c0de1508:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de150a:	2161      	movs	r1, #97	@ 0x61
c0de150c:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de1510:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de1512:	ad15      	add	r5, sp, #84	@ 0x54
c0de1514:	4628      	mov	r0, r5
c0de1516:	f006 f8f7 	bl	c0de7708 <__aeabi_memclr>
c0de151a:	ae39      	add	r6, sp, #228	@ 0xe4
c0de151c:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de1520:	4630      	mov	r0, r6
c0de1522:	f004 ff0f 	bl	c0de6344 <buffer_read_u8>
c0de1526:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de152a:	af2e      	add	r7, sp, #184	@ 0xb8
c0de152c:	4630      	mov	r0, r6
c0de152e:	4639      	mov	r1, r7
c0de1530:	f004 ff5b 	bl	c0de63ea <buffer_read_bip32_path>
c0de1534:	2005      	movs	r0, #5
c0de1536:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de153a:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de153e:	463a      	mov	r2, r7
c0de1540:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1544:	e9cd 5100 	strd	r5, r1, [sp]
c0de1548:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de154c:	2000      	movs	r0, #0
c0de154e:	2121      	movs	r1, #33	@ 0x21
c0de1550:	f005 f80c 	bl	c0de656c <bip32_derive_with_seed_get_pubkey_256>
c0de1554:	b9e0      	cbnz	r0, c0de1590 <swap_handle_check_address+0xae>
c0de1556:	ad10      	add	r5, sp, #64	@ 0x40
c0de1558:	2114      	movs	r1, #20
c0de155a:	4628      	mov	r0, r5
c0de155c:	f006 f8d4 	bl	c0de7708 <__aeabi_memclr>
c0de1560:	a815      	add	r0, sp, #84	@ 0x54
c0de1562:	4629      	mov	r1, r5
c0de1564:	2214      	movs	r2, #20
c0de1566:	f7fe fd5f 	bl	c0de0028 <address_from_pubkey>
c0de156a:	ae05      	add	r6, sp, #20
c0de156c:	2129      	movs	r1, #41	@ 0x29
c0de156e:	4630      	mov	r0, r6
c0de1570:	f006 f8ca 	bl	c0de7708 <__aeabi_memclr>
c0de1574:	4628      	mov	r0, r5
c0de1576:	2114      	movs	r1, #20
c0de1578:	4632      	mov	r2, r6
c0de157a:	2329      	movs	r3, #41	@ 0x29
c0de157c:	f005 f8ae 	bl	c0de66dc <format_hex>
c0de1580:	6921      	ldr	r1, [r4, #16]
c0de1582:	4630      	mov	r0, r6
c0de1584:	2229      	movs	r2, #41	@ 0x29
c0de1586:	f006 f923 	bl	c0de77d0 <strncmp>
c0de158a:	b908      	cbnz	r0, c0de1590 <swap_handle_check_address+0xae>
c0de158c:	2001      	movs	r0, #1
c0de158e:	61a0      	str	r0, [r4, #24]
c0de1590:	b03c      	add	sp, #240	@ 0xf0
c0de1592:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de1598 <swap_handle_get_printable_amount>:
c0de1598:	b570      	push	{r4, r5, r6, lr}
c0de159a:	b08c      	sub	sp, #48	@ 0x30
c0de159c:	ac04      	add	r4, sp, #16
c0de159e:	4606      	mov	r6, r0
c0de15a0:	211e      	movs	r1, #30
c0de15a2:	4620      	mov	r0, r4
c0de15a4:	f006 f8b0 	bl	c0de7708 <__aeabi_memclr>
c0de15a8:	f106 050e 	add.w	r5, r6, #14
c0de15ac:	2132      	movs	r1, #50	@ 0x32
c0de15ae:	4628      	mov	r0, r5
c0de15b0:	f006 f8aa 	bl	c0de7708 <__aeabi_memclr>
c0de15b4:	2000      	movs	r0, #0
c0de15b6:	7b31      	ldrb	r1, [r6, #12]
c0de15b8:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de15bc:	68b0      	ldr	r0, [r6, #8]
c0de15be:	aa02      	add	r2, sp, #8
c0de15c0:	f005 fa78 	bl	c0de6ab4 <swap_str_to_u64>
c0de15c4:	b178      	cbz	r0, c0de15e6 <swap_handle_get_printable_amount+0x4e>
c0de15c6:	2003      	movs	r0, #3
c0de15c8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de15cc:	211e      	movs	r1, #30
c0de15ce:	9000      	str	r0, [sp, #0]
c0de15d0:	4620      	mov	r0, r4
c0de15d2:	f005 f83b 	bl	c0de664c <format_fpu64>
c0de15d6:	9400      	str	r4, [sp, #0]
c0de15d8:	4628      	mov	r0, r5
c0de15da:	2132      	movs	r1, #50	@ 0x32
c0de15dc:	231e      	movs	r3, #30
c0de15de:	4a03      	ldr	r2, [pc, #12]	@ (c0de15ec <swap_handle_get_printable_amount+0x54>)
c0de15e0:	447a      	add	r2, pc
c0de15e2:	f005 fbf3 	bl	c0de6dcc <snprintf>
c0de15e6:	b00c      	add	sp, #48	@ 0x30
c0de15e8:	bd70      	pop	{r4, r5, r6, pc}
c0de15ea:	bf00      	nop
c0de15ec:	00006660 	.word	0x00006660

c0de15f0 <swap_copy_transaction_parameters>:
c0de15f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de15f2:	b093      	sub	sp, #76	@ 0x4c
c0de15f4:	6985      	ldr	r5, [r0, #24]
c0de15f6:	b3ad      	cbz	r5, c0de1664 <swap_copy_transaction_parameters+0x74>
c0de15f8:	4604      	mov	r4, r0
c0de15fa:	4628      	mov	r0, r5
c0de15fc:	f006 f8e0 	bl	c0de77c0 <strlen>
c0de1600:	2828      	cmp	r0, #40	@ 0x28
c0de1602:	d12f      	bne.n	c0de1664 <swap_copy_transaction_parameters+0x74>
c0de1604:	68a7      	ldr	r7, [r4, #8]
c0de1606:	b36f      	cbz	r7, c0de1664 <swap_copy_transaction_parameters+0x74>
c0de1608:	466e      	mov	r6, sp
c0de160a:	2148      	movs	r1, #72	@ 0x48
c0de160c:	4630      	mov	r0, r6
c0de160e:	f006 f87b 	bl	c0de7708 <__aeabi_memclr>
c0de1612:	f106 0018 	add.w	r0, r6, #24
c0de1616:	2100      	movs	r1, #0
c0de1618:	2928      	cmp	r1, #40	@ 0x28
c0de161a:	d009      	beq.n	c0de1630 <swap_copy_transaction_parameters+0x40>
c0de161c:	5c6a      	ldrb	r2, [r5, r1]
c0de161e:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de1622:	b2db      	uxtb	r3, r3
c0de1624:	2b1a      	cmp	r3, #26
c0de1626:	bf38      	it	cc
c0de1628:	3a20      	subcc	r2, #32
c0de162a:	5442      	strb	r2, [r0, r1]
c0de162c:	3101      	adds	r1, #1
c0de162e:	e7f3      	b.n	c0de1618 <swap_copy_transaction_parameters+0x28>
c0de1630:	7b21      	ldrb	r1, [r4, #12]
c0de1632:	f106 0208 	add.w	r2, r6, #8
c0de1636:	4638      	mov	r0, r7
c0de1638:	f005 fa3c 	bl	c0de6ab4 <swap_str_to_u64>
c0de163c:	b190      	cbz	r0, c0de1664 <swap_copy_transaction_parameters+0x74>
c0de163e:	7d21      	ldrb	r1, [r4, #20]
c0de1640:	6920      	ldr	r0, [r4, #16]
c0de1642:	f106 0210 	add.w	r2, r6, #16
c0de1646:	f005 fa35 	bl	c0de6ab4 <swap_str_to_u64>
c0de164a:	b158      	cbz	r0, c0de1664 <swap_copy_transaction_parameters+0x74>
c0de164c:	2401      	movs	r4, #1
c0de164e:	f88d 4000 	strb.w	r4, [sp]
c0de1652:	f005 fbaf 	bl	c0de6db4 <os_explicit_zero_BSS_segment>
c0de1656:	4805      	ldr	r0, [pc, #20]	@ (c0de166c <swap_copy_transaction_parameters+0x7c>)
c0de1658:	4669      	mov	r1, sp
c0de165a:	2248      	movs	r2, #72	@ 0x48
c0de165c:	4448      	add	r0, r9
c0de165e:	f006 f849 	bl	c0de76f4 <__aeabi_memcpy>
c0de1662:	e000      	b.n	c0de1666 <swap_copy_transaction_parameters+0x76>
c0de1664:	2400      	movs	r4, #0
c0de1666:	4620      	mov	r0, r4
c0de1668:	b013      	add	sp, #76	@ 0x4c
c0de166a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de166c:	00000310 	.word	0x00000310

c0de1670 <swap_check_validity>:
c0de1670:	b570      	push	{r4, r5, r6, lr}
c0de1672:	b08c      	sub	sp, #48	@ 0x30
c0de1674:	4e1d      	ldr	r6, [pc, #116]	@ (c0de16ec <swap_check_validity+0x7c>)
c0de1676:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de167a:	b32c      	cbz	r4, c0de16c8 <swap_check_validity+0x58>
c0de167c:	eb09 0406 	add.w	r4, r9, r6
c0de1680:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1684:	4069      	eors	r1, r5
c0de1686:	4060      	eors	r0, r4
c0de1688:	4308      	orrs	r0, r1
c0de168a:	d121      	bne.n	c0de16d0 <swap_check_validity+0x60>
c0de168c:	eb09 0006 	add.w	r0, r9, r6
c0de1690:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1694:	4059      	eors	r1, r3
c0de1696:	4050      	eors	r0, r2
c0de1698:	4308      	orrs	r0, r1
c0de169a:	d11d      	bne.n	c0de16d8 <swap_check_validity+0x68>
c0de169c:	ad01      	add	r5, sp, #4
c0de169e:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de16a0:	2129      	movs	r1, #41	@ 0x29
c0de16a2:	4628      	mov	r0, r5
c0de16a4:	f006 f830 	bl	c0de7708 <__aeabi_memclr>
c0de16a8:	4620      	mov	r0, r4
c0de16aa:	2114      	movs	r1, #20
c0de16ac:	462a      	mov	r2, r5
c0de16ae:	2329      	movs	r3, #41	@ 0x29
c0de16b0:	f005 f814 	bl	c0de66dc <format_hex>
c0de16b4:	eb09 0006 	add.w	r0, r9, r6
c0de16b8:	4629      	mov	r1, r5
c0de16ba:	3018      	adds	r0, #24
c0de16bc:	f006 f876 	bl	c0de77ac <strcmp>
c0de16c0:	b970      	cbnz	r0, c0de16e0 <swap_check_validity+0x70>
c0de16c2:	2001      	movs	r0, #1
c0de16c4:	b00c      	add	sp, #48	@ 0x30
c0de16c6:	bd70      	pop	{r4, r5, r6, pc}
c0de16c8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16cc:	21ff      	movs	r1, #255	@ 0xff
c0de16ce:	e00a      	b.n	c0de16e6 <swap_check_validity+0x76>
c0de16d0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16d4:	2101      	movs	r1, #1
c0de16d6:	e006      	b.n	c0de16e6 <swap_check_validity+0x76>
c0de16d8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16dc:	2103      	movs	r1, #3
c0de16de:	e002      	b.n	c0de16e6 <swap_check_validity+0x76>
c0de16e0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16e4:	2102      	movs	r1, #2
c0de16e6:	2200      	movs	r2, #0
c0de16e8:	f005 f9ab 	bl	c0de6a42 <send_swap_error_simple>
c0de16ec:	00000310 	.word	0x00000310

c0de16f0 <transaction_deserialize>:
c0de16f0:	b570      	push	{r4, r5, r6, lr}
c0de16f2:	460d      	mov	r5, r1
c0de16f4:	4604      	mov	r4, r0
c0de16f6:	b910      	cbnz	r0, c0de16fe <transaction_deserialize+0xe>
c0de16f8:	2001      	movs	r0, #1
c0de16fa:	f005 faeb 	bl	c0de6cd4 <assert_exit>
c0de16fe:	b915      	cbnz	r5, c0de1706 <transaction_deserialize+0x16>
c0de1700:	2001      	movs	r0, #1
c0de1702:	f005 fae7 	bl	c0de6cd4 <assert_exit>
c0de1706:	6860      	ldr	r0, [r4, #4]
c0de1708:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de170c:	d901      	bls.n	c0de1712 <transaction_deserialize+0x22>
c0de170e:	20f9      	movs	r0, #249	@ 0xf9
c0de1710:	e04b      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de1712:	4620      	mov	r0, r4
c0de1714:	4629      	mov	r1, r5
c0de1716:	2200      	movs	r2, #0
c0de1718:	f004 fe2a 	bl	c0de6370 <buffer_read_u64>
c0de171c:	b330      	cbz	r0, c0de176c <transaction_deserialize+0x7c>
c0de171e:	6820      	ldr	r0, [r4, #0]
c0de1720:	68a1      	ldr	r1, [r4, #8]
c0de1722:	4408      	add	r0, r1
c0de1724:	2114      	movs	r1, #20
c0de1726:	61a8      	str	r0, [r5, #24]
c0de1728:	4620      	mov	r0, r4
c0de172a:	f004 fe00 	bl	c0de632e <buffer_seek_cur>
c0de172e:	b1f8      	cbz	r0, c0de1770 <transaction_deserialize+0x80>
c0de1730:	f105 0108 	add.w	r1, r5, #8
c0de1734:	4620      	mov	r0, r4
c0de1736:	2200      	movs	r2, #0
c0de1738:	2600      	movs	r6, #0
c0de173a:	f004 fe19 	bl	c0de6370 <buffer_read_u64>
c0de173e:	b1c8      	cbz	r0, c0de1774 <transaction_deserialize+0x84>
c0de1740:	f105 0120 	add.w	r1, r5, #32
c0de1744:	4620      	mov	r0, r4
c0de1746:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de174a:	f004 fe31 	bl	c0de63b0 <buffer_read_varint>
c0de174e:	6a29      	ldr	r1, [r5, #32]
c0de1750:	b990      	cbnz	r0, c0de1778 <transaction_deserialize+0x88>
c0de1752:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1754:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1758:	ea4f 0231 	mov.w	r2, r1, rrx
c0de175c:	2300      	movs	r3, #0
c0de175e:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de1762:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1766:	d207      	bcs.n	c0de1778 <transaction_deserialize+0x88>
c0de1768:	20fc      	movs	r0, #252	@ 0xfc
c0de176a:	e01e      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de176c:	20ff      	movs	r0, #255	@ 0xff
c0de176e:	e01c      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de1770:	20fe      	movs	r0, #254	@ 0xfe
c0de1772:	e01a      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de1774:	20fd      	movs	r0, #253	@ 0xfd
c0de1776:	e018      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de1778:	6820      	ldr	r0, [r4, #0]
c0de177a:	68a2      	ldr	r2, [r4, #8]
c0de177c:	4410      	add	r0, r2
c0de177e:	61e8      	str	r0, [r5, #28]
c0de1780:	4620      	mov	r0, r4
c0de1782:	f004 fdd4 	bl	c0de632e <buffer_seek_cur>
c0de1786:	b168      	cbz	r0, c0de17a4 <transaction_deserialize+0xb4>
c0de1788:	f105 031c 	add.w	r3, r5, #28
c0de178c:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de178e:	f000 f80e 	bl	c0de17ae <transaction_utils_check_encoding>
c0de1792:	b148      	cbz	r0, c0de17a8 <transaction_deserialize+0xb8>
c0de1794:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1798:	f06f 0006 	mvn.w	r0, #6
c0de179c:	428a      	cmp	r2, r1
c0de179e:	bf08      	it	eq
c0de17a0:	2001      	moveq	r0, #1
c0de17a2:	e002      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de17a4:	20fb      	movs	r0, #251	@ 0xfb
c0de17a6:	e000      	b.n	c0de17aa <transaction_deserialize+0xba>
c0de17a8:	20fa      	movs	r0, #250	@ 0xfa
c0de17aa:	b240      	sxtb	r0, r0
c0de17ac:	bd70      	pop	{r4, r5, r6, pc}

c0de17ae <transaction_utils_check_encoding>:
c0de17ae:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de17b0:	461c      	mov	r4, r3
c0de17b2:	4615      	mov	r5, r2
c0de17b4:	4606      	mov	r6, r0
c0de17b6:	b910      	cbnz	r0, c0de17be <transaction_utils_check_encoding+0x10>
c0de17b8:	2001      	movs	r0, #1
c0de17ba:	f005 fa8b 	bl	c0de6cd4 <assert_exit>
c0de17be:	2000      	movs	r0, #0
c0de17c0:	2300      	movs	r3, #0
c0de17c2:	4602      	mov	r2, r0
c0de17c4:	1b40      	subs	r0, r0, r5
c0de17c6:	4619      	mov	r1, r3
c0de17c8:	eb73 0004 	sbcs.w	r0, r3, r4
c0de17cc:	d206      	bcs.n	c0de17dc <transaction_utils_check_encoding+0x2e>
c0de17ce:	56b7      	ldrsb	r7, [r6, r2]
c0de17d0:	1c50      	adds	r0, r2, #1
c0de17d2:	f141 0300 	adc.w	r3, r1, #0
c0de17d6:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de17da:	dcf2      	bgt.n	c0de17c2 <transaction_utils_check_encoding+0x14>
c0de17dc:	2000      	movs	r0, #0
c0de17de:	1b52      	subs	r2, r2, r5
c0de17e0:	41a1      	sbcs	r1, r4
c0de17e2:	bf28      	it	cs
c0de17e4:	2001      	movcs	r0, #1
c0de17e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de17e8 <validate_pubkey>:
c0de17e8:	b108      	cbz	r0, c0de17ee <validate_pubkey+0x6>
c0de17ea:	f7ff be23 	b.w	c0de1434 <helper_send_response_pubkey>
c0de17ee:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de17f2:	f000 b800 	b.w	c0de17f6 <io_send_sw>

c0de17f6 <io_send_sw>:
c0de17f6:	b580      	push	{r7, lr}
c0de17f8:	4602      	mov	r2, r0
c0de17fa:	2000      	movs	r0, #0
c0de17fc:	2100      	movs	r1, #0
c0de17fe:	f004 ffcd 	bl	c0de679c <io_send_response_buffers>
c0de1802:	bd80      	pop	{r7, pc}

c0de1804 <validate_transaction>:
c0de1804:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1808:	b09b      	sub	sp, #108	@ 0x6c
c0de180a:	b390      	cbz	r0, c0de1872 <validate_transaction+0x6e>
c0de180c:	4f23      	ldr	r7, [pc, #140]	@ (c0de189c <validate_transaction+0x98>)
c0de180e:	2002      	movs	r0, #2
c0de1810:	2100      	movs	r1, #0
c0de1812:	f04f 0a20 	mov.w	sl, #32
c0de1816:	f04f 0800 	mov.w	r8, #0
c0de181a:	f809 0007 	strb.w	r0, [r9, r7]
c0de181e:	2020      	movs	r0, #32
c0de1820:	f005 fca0 	bl	c0de7164 <cx_bn_lock>
c0de1824:	ac05      	add	r4, sp, #20
c0de1826:	2102      	movs	r1, #2
c0de1828:	4620      	mov	r0, r4
c0de182a:	f000 ffbf 	bl	c0de27ac <tEdwards_Curve_alloc_init>
c0de182e:	ad02      	add	r5, sp, #8
c0de1830:	4620      	mov	r0, r4
c0de1832:	4629      	mov	r1, r5
c0de1834:	f000 fe3a 	bl	c0de24ac <tEdwards_alloc>
c0de1838:	4819      	ldr	r0, [pc, #100]	@ (c0de18a0 <validate_transaction+0x9c>)
c0de183a:	462a      	mov	r2, r5
c0de183c:	eb09 0600 	add.w	r6, r9, r0
c0de1840:	4620      	mov	r0, r4
c0de1842:	4631      	mov	r1, r6
c0de1844:	f000 fa40 	bl	c0de1cc8 <zkn_prv2pub>
c0de1848:	eb09 0007 	add.w	r0, r9, r7
c0de184c:	462a      	mov	r2, r5
c0de184e:	f500 7116 	add.w	r1, r0, #600	@ 0x258
c0de1852:	f500 730e 	add.w	r3, r0, #568	@ 0x238
c0de1856:	4620      	mov	r0, r4
c0de1858:	e9cd a100 	strd	sl, r1, [sp]
c0de185c:	4631      	mov	r1, r6
c0de185e:	f000 fa5b 	bl	c0de1d18 <EddsaPoseidon_Sign_final>
c0de1862:	b188      	cbz	r0, c0de1888 <validate_transaction+0x84>
c0de1864:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1868:	f809 8007 	strb.w	r8, [r9, r7]
c0de186c:	f7ff ffc3 	bl	c0de17f6 <io_send_sw>
c0de1870:	e011      	b.n	c0de1896 <validate_transaction+0x92>
c0de1872:	480a      	ldr	r0, [pc, #40]	@ (c0de189c <validate_transaction+0x98>)
c0de1874:	2100      	movs	r1, #0
c0de1876:	f809 1000 	strb.w	r1, [r9, r0]
c0de187a:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de187e:	b01b      	add	sp, #108	@ 0x6c
c0de1880:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1884:	f7ff bfb7 	b.w	c0de17f6 <io_send_sw>
c0de1888:	eb09 0007 	add.w	r0, r9, r7
c0de188c:	2160      	movs	r1, #96	@ 0x60
c0de188e:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1892:	f7ff fdfd 	bl	c0de1490 <helper_send_response_sig_zkn>
c0de1896:	b01b      	add	sp, #108	@ 0x6c
c0de1898:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de189c:	00000000 	.word	0x00000000
c0de18a0:	000002f0 	.word	0x000002f0

c0de18a4 <app_quit>:
c0de18a4:	20ff      	movs	r0, #255	@ 0xff
c0de18a6:	f005 fde9 	bl	c0de747c <os_sched_exit>
	...

c0de18ac <ui_menu_main>:
c0de18ac:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de18ae:	4c19      	ldr	r4, [pc, #100]	@ (c0de1914 <ui_menu_main+0x68>)
c0de18b0:	4817      	ldr	r0, [pc, #92]	@ (c0de1910 <ui_menu_main+0x64>)
c0de18b2:	447c      	add	r4, pc
c0de18b4:	eb09 0500 	add.w	r5, r9, r0
c0de18b8:	f000 f8d8 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de18bc:	2114      	movs	r1, #20
c0de18be:	7369      	strb	r1, [r5, #13]
c0de18c0:	4915      	ldr	r1, [pc, #84]	@ (c0de1918 <ui_menu_main+0x6c>)
c0de18c2:	4a16      	ldr	r2, [pc, #88]	@ (c0de191c <ui_menu_main+0x70>)
c0de18c4:	4479      	add	r1, pc
c0de18c6:	447a      	add	r2, pc
c0de18c8:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de18cc:	7800      	ldrb	r0, [r0, #0]
c0de18ce:	7328      	strb	r0, [r5, #12]
c0de18d0:	f000 f8cc 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de18d4:	2115      	movs	r1, #21
c0de18d6:	7669      	strb	r1, [r5, #25]
c0de18d8:	4911      	ldr	r1, [pc, #68]	@ (c0de1920 <ui_menu_main+0x74>)
c0de18da:	4a12      	ldr	r2, [pc, #72]	@ (c0de1924 <ui_menu_main+0x78>)
c0de18dc:	4479      	add	r1, pc
c0de18de:	447a      	add	r2, pc
c0de18e0:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de18e4:	2100      	movs	r1, #0
c0de18e6:	7840      	ldrb	r0, [r0, #1]
c0de18e8:	7628      	strb	r0, [r5, #24]
c0de18ea:	480f      	ldr	r0, [pc, #60]	@ (c0de1928 <ui_menu_main+0x7c>)
c0de18ec:	4a0f      	ldr	r2, [pc, #60]	@ (c0de192c <ui_menu_main+0x80>)
c0de18ee:	4b10      	ldr	r3, [pc, #64]	@ (c0de1930 <ui_menu_main+0x84>)
c0de18f0:	4478      	add	r0, pc
c0de18f2:	447a      	add	r2, pc
c0de18f4:	447b      	add	r3, pc
c0de18f6:	e9cd 3200 	strd	r3, r2, [sp]
c0de18fa:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de18fe:	2200      	movs	r2, #0
c0de1900:	23ff      	movs	r3, #255	@ 0xff
c0de1902:	480c      	ldr	r0, [pc, #48]	@ (c0de1934 <ui_menu_main+0x88>)
c0de1904:	490c      	ldr	r1, [pc, #48]	@ (c0de1938 <ui_menu_main+0x8c>)
c0de1906:	4478      	add	r0, pc
c0de1908:	4479      	add	r1, pc
c0de190a:	f003 f807 	bl	c0de491c <nbgl_useCaseHomeAndSettings>
c0de190e:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1910:	00000358 	.word	0x00000358
c0de1914:	0000734a 	.word	0x0000734a
c0de1918:	00006229 	.word	0x00006229
c0de191c:	00006390 	.word	0x00006390
c0de1920:	0000628c 	.word	0x0000628c
c0de1924:	000060f8 	.word	0x000060f8
c0de1928:	ffffffb1 	.word	0xffffffb1
c0de192c:	00006d46 	.word	0x00006d46
c0de1930:	00006d38 	.word	0x00006d38
c0de1934:	000063fa 	.word	0x000063fa
c0de1938:	00005f27 	.word	0x00005f27

c0de193c <controls_callback>:
c0de193c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de193e:	4c22      	ldr	r4, [pc, #136]	@ (c0de19c8 <controls_callback+0x8c>)
c0de1940:	2815      	cmp	r0, #21
c0de1942:	f809 2004 	strb.w	r2, [r9, r4]
c0de1946:	d011      	beq.n	c0de196c <controls_callback+0x30>
c0de1948:	2814      	cmp	r0, #20
c0de194a:	d12a      	bne.n	c0de19a2 <controls_callback+0x66>
c0de194c:	eb09 0504 	add.w	r5, r9, r4
c0de1950:	4c1e      	ldr	r4, [pc, #120]	@ (c0de19cc <controls_callback+0x90>)
c0de1952:	447c      	add	r4, pc
c0de1954:	f000 f88a 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de1958:	7800      	ldrb	r0, [r0, #0]
c0de195a:	fab0 f080 	clz	r0, r0
c0de195e:	0940      	lsrs	r0, r0, #5
c0de1960:	7328      	strb	r0, [r5, #12]
c0de1962:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1966:	f000 f881 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de196a:	e015      	b.n	c0de1998 <controls_callback+0x5c>
c0de196c:	4818      	ldr	r0, [pc, #96]	@ (c0de19d0 <controls_callback+0x94>)
c0de196e:	4478      	add	r0, pc
c0de1970:	f005 fbbe 	bl	c0de70f0 <pic>
c0de1974:	7840      	ldrb	r0, [r0, #1]
c0de1976:	b1a8      	cbz	r0, c0de19a4 <controls_callback+0x68>
c0de1978:	eb09 0504 	add.w	r5, r9, r4
c0de197c:	4c15      	ldr	r4, [pc, #84]	@ (c0de19d4 <controls_callback+0x98>)
c0de197e:	447c      	add	r4, pc
c0de1980:	f000 f874 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de1984:	7840      	ldrb	r0, [r0, #1]
c0de1986:	fab0 f080 	clz	r0, r0
c0de198a:	0940      	lsrs	r0, r0, #5
c0de198c:	7628      	strb	r0, [r5, #24]
c0de198e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1992:	f000 f86b 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de1996:	3001      	adds	r0, #1
c0de1998:	f10d 010f 	add.w	r1, sp, #15
c0de199c:	2201      	movs	r2, #1
c0de199e:	f005 fbd7 	bl	c0de7150 <nvm_write>
c0de19a2:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de19a4:	480c      	ldr	r0, [pc, #48]	@ (c0de19d8 <controls_callback+0x9c>)
c0de19a6:	490d      	ldr	r1, [pc, #52]	@ (c0de19dc <controls_callback+0xa0>)
c0de19a8:	4478      	add	r0, pc
c0de19aa:	4479      	add	r1, pc
c0de19ac:	e9cd 1000 	strd	r1, r0, [sp]
c0de19b0:	480b      	ldr	r0, [pc, #44]	@ (c0de19e0 <controls_callback+0xa4>)
c0de19b2:	490c      	ldr	r1, [pc, #48]	@ (c0de19e4 <controls_callback+0xa8>)
c0de19b4:	4a0c      	ldr	r2, [pc, #48]	@ (c0de19e8 <controls_callback+0xac>)
c0de19b6:	4b0d      	ldr	r3, [pc, #52]	@ (c0de19ec <controls_callback+0xb0>)
c0de19b8:	4478      	add	r0, pc
c0de19ba:	4479      	add	r1, pc
c0de19bc:	447a      	add	r2, pc
c0de19be:	447b      	add	r3, pc
c0de19c0:	f003 fc22 	bl	c0de5208 <nbgl_useCaseChoice>
c0de19c4:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de19c6:	bf00      	nop
c0de19c8:	00000358 	.word	0x00000358
c0de19cc:	000072aa 	.word	0x000072aa
c0de19d0:	0000728e 	.word	0x0000728e
c0de19d4:	0000727e 	.word	0x0000727e
c0de19d8:	00000045 	.word	0x00000045
c0de19dc:	000061e4 	.word	0x000061e4
c0de19e0:	00005ff1 	.word	0x00005ff1
c0de19e4:	0000601c 	.word	0x0000601c
c0de19e8:	000060ba 	.word	0x000060ba
c0de19ec:	000062a0 	.word	0x000062a0

c0de19f0 <review_warning_choice>:
c0de19f0:	b5b0      	push	{r4, r5, r7, lr}
c0de19f2:	b086      	sub	sp, #24
c0de19f4:	b1a8      	cbz	r0, c0de1a22 <review_warning_choice+0x32>
c0de19f6:	4c17      	ldr	r4, [pc, #92]	@ (c0de1a54 <review_warning_choice+0x64>)
c0de19f8:	4815      	ldr	r0, [pc, #84]	@ (c0de1a50 <review_warning_choice+0x60>)
c0de19fa:	447c      	add	r4, pc
c0de19fc:	eb09 0500 	add.w	r5, r9, r0
c0de1a00:	f000 f834 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de1a04:	7840      	ldrb	r0, [r0, #1]
c0de1a06:	fab0 f080 	clz	r0, r0
c0de1a0a:	0940      	lsrs	r0, r0, #5
c0de1a0c:	7628      	strb	r0, [r5, #24]
c0de1a0e:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1a12:	f000 f82b 	bl	c0de1a6c <OUTLINED_FUNCTION_0>
c0de1a16:	3001      	adds	r0, #1
c0de1a18:	f10d 0117 	add.w	r1, sp, #23
c0de1a1c:	2201      	movs	r2, #1
c0de1a1e:	f005 fb97 	bl	c0de7150 <nvm_write>
c0de1a22:	480b      	ldr	r0, [pc, #44]	@ (c0de1a50 <review_warning_choice+0x60>)
c0de1a24:	2100      	movs	r1, #0
c0de1a26:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1a2a:	480b      	ldr	r0, [pc, #44]	@ (c0de1a58 <review_warning_choice+0x68>)
c0de1a2c:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1a5c <review_warning_choice+0x6c>)
c0de1a2e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1a60 <review_warning_choice+0x70>)
c0de1a30:	4478      	add	r0, pc
c0de1a32:	447a      	add	r2, pc
c0de1a34:	447c      	add	r4, pc
c0de1a36:	e9cd 4200 	strd	r4, r2, [sp]
c0de1a3a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1a3e:	2200      	movs	r2, #0
c0de1a40:	4808      	ldr	r0, [pc, #32]	@ (c0de1a64 <review_warning_choice+0x74>)
c0de1a42:	4909      	ldr	r1, [pc, #36]	@ (c0de1a68 <review_warning_choice+0x78>)
c0de1a44:	4478      	add	r0, pc
c0de1a46:	4479      	add	r1, pc
c0de1a48:	f002 ff68 	bl	c0de491c <nbgl_useCaseHomeAndSettings>
c0de1a4c:	b006      	add	sp, #24
c0de1a4e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1a50:	00000358 	.word	0x00000358
c0de1a54:	00007202 	.word	0x00007202
c0de1a58:	fffffe71 	.word	0xfffffe71
c0de1a5c:	00006c06 	.word	0x00006c06
c0de1a60:	00006bf8 	.word	0x00006bf8
c0de1a64:	000062bc 	.word	0x000062bc
c0de1a68:	00005de9 	.word	0x00005de9

c0de1a6c <OUTLINED_FUNCTION_0>:
c0de1a6c:	4620      	mov	r0, r4
c0de1a6e:	f005 bb3f 	b.w	c0de70f0 <pic>
	...

c0de1a74 <ui_display_address>:
c0de1a74:	b570      	push	{r4, r5, r6, lr}
c0de1a76:	b088      	sub	sp, #32
c0de1a78:	4e22      	ldr	r6, [pc, #136]	@ (c0de1b04 <ui_display_address+0x90>)
c0de1a7a:	eb09 0106 	add.w	r1, r9, r6
c0de1a7e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1a82:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1a86:	4308      	orrs	r0, r1
c0de1a88:	d12a      	bne.n	c0de1ae0 <ui_display_address+0x6c>
c0de1a8a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1b08 <ui_display_address+0x94>)
c0de1a8c:	212b      	movs	r1, #43	@ 0x2b
c0de1a8e:	eb09 0005 	add.w	r0, r9, r5
c0de1a92:	f005 fe39 	bl	c0de7708 <__aeabi_memclr>
c0de1a96:	ac03      	add	r4, sp, #12
c0de1a98:	2114      	movs	r1, #20
c0de1a9a:	4620      	mov	r0, r4
c0de1a9c:	f005 fe34 	bl	c0de7708 <__aeabi_memclr>
c0de1aa0:	eb09 0006 	add.w	r0, r9, r6
c0de1aa4:	4621      	mov	r1, r4
c0de1aa6:	2214      	movs	r2, #20
c0de1aa8:	3008      	adds	r0, #8
c0de1aaa:	f7fe fabd 	bl	c0de0028 <address_from_pubkey>
c0de1aae:	b308      	cbz	r0, c0de1af4 <ui_display_address+0x80>
c0de1ab0:	eb09 0205 	add.w	r2, r9, r5
c0de1ab4:	a803      	add	r0, sp, #12
c0de1ab6:	2114      	movs	r1, #20
c0de1ab8:	232b      	movs	r3, #43	@ 0x2b
c0de1aba:	f004 fe0f 	bl	c0de66dc <format_hex>
c0de1abe:	3001      	adds	r0, #1
c0de1ac0:	d018      	beq.n	c0de1af4 <ui_display_address+0x80>
c0de1ac2:	4812      	ldr	r0, [pc, #72]	@ (c0de1b0c <ui_display_address+0x98>)
c0de1ac4:	2400      	movs	r4, #0
c0de1ac6:	2100      	movs	r1, #0
c0de1ac8:	4478      	add	r0, pc
c0de1aca:	e9cd 4000 	strd	r4, r0, [sp]
c0de1ace:	eb09 0005 	add.w	r0, r9, r5
c0de1ad2:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1b10 <ui_display_address+0x9c>)
c0de1ad4:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1b14 <ui_display_address+0xa0>)
c0de1ad6:	447a      	add	r2, pc
c0de1ad8:	447b      	add	r3, pc
c0de1ada:	f003 f879 	bl	c0de4bd0 <nbgl_useCaseAddressReview>
c0de1ade:	e00e      	b.n	c0de1afe <ui_display_address+0x8a>
c0de1ae0:	2000      	movs	r0, #0
c0de1ae2:	f809 0006 	strb.w	r0, [r9, r6]
c0de1ae6:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1aea:	b008      	add	sp, #32
c0de1aec:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1af0:	f000 b812 	b.w	c0de1b18 <io_send_sw>
c0de1af4:	f24b 0009 	movw	r0, #45065	@ 0xb009
c0de1af8:	f000 f80e 	bl	c0de1b18 <io_send_sw>
c0de1afc:	4604      	mov	r4, r0
c0de1afe:	4620      	mov	r0, r4
c0de1b00:	b008      	add	sp, #32
c0de1b02:	bd70      	pop	{r4, r5, r6, pc}
c0de1b04:	00000000 	.word	0x00000000
c0de1b08:	00000374 	.word	0x00000374
c0de1b0c:	0000005d 	.word	0x0000005d
c0de1b10:	00005ef6 	.word	0x00005ef6
c0de1b14:	000061f6 	.word	0x000061f6

c0de1b18 <io_send_sw>:
c0de1b18:	b580      	push	{r7, lr}
c0de1b1a:	4602      	mov	r2, r0
c0de1b1c:	2000      	movs	r0, #0
c0de1b1e:	2100      	movs	r1, #0
c0de1b20:	f004 fe3c 	bl	c0de679c <io_send_response_buffers>
c0de1b24:	bd80      	pop	{r7, pc}
	...

c0de1b28 <review_choice>:
c0de1b28:	b510      	push	{r4, lr}
c0de1b2a:	4604      	mov	r4, r0
c0de1b2c:	f7ff fe5c 	bl	c0de17e8 <validate_pubkey>
c0de1b30:	2007      	movs	r0, #7
c0de1b32:	2c00      	cmp	r4, #0
c0de1b34:	bf18      	it	ne
c0de1b36:	2006      	movne	r0, #6
c0de1b38:	4902      	ldr	r1, [pc, #8]	@ (c0de1b44 <review_choice+0x1c>)
c0de1b3a:	4479      	add	r1, pc
c0de1b3c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1b40:	f003 ba38 	b.w	c0de4fb4 <nbgl_useCaseReviewStatus>
c0de1b44:	fffffd6f 	.word	0xfffffd6f

c0de1b48 <ui_display_transaction_bs_choice>:
c0de1b48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1b4a:	b085      	sub	sp, #20
c0de1b4c:	4f2d      	ldr	r7, [pc, #180]	@ (c0de1c04 <ui_display_transaction_bs_choice+0xbc>)
c0de1b4e:	4604      	mov	r4, r0
c0de1b50:	eb09 0007 	add.w	r0, r9, r7
c0de1b54:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1b58:	2801      	cmp	r0, #1
c0de1b5a:	d137      	bne.n	c0de1bcc <ui_display_transaction_bs_choice+0x84>
c0de1b5c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1b60:	2801      	cmp	r0, #1
c0de1b62:	d133      	bne.n	c0de1bcc <ui_display_transaction_bs_choice+0x84>
c0de1b64:	4e28      	ldr	r6, [pc, #160]	@ (c0de1c08 <ui_display_transaction_bs_choice+0xc0>)
c0de1b66:	2140      	movs	r1, #64	@ 0x40
c0de1b68:	eb09 0006 	add.w	r0, r9, r6
c0de1b6c:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1b70:	4628      	mov	r0, r5
c0de1b72:	f005 fdc9 	bl	c0de7708 <__aeabi_memclr>
c0de1b76:	eb09 0007 	add.w	r0, r9, r7
c0de1b7a:	2114      	movs	r1, #20
c0de1b7c:	462a      	mov	r2, r5
c0de1b7e:	2340      	movs	r3, #64	@ 0x40
c0de1b80:	302d      	adds	r0, #45	@ 0x2d
c0de1b82:	f004 fdab 	bl	c0de66dc <format_hex>
c0de1b86:	3001      	adds	r0, #1
c0de1b88:	d026      	beq.n	c0de1bd8 <ui_display_transaction_bs_choice+0x90>
c0de1b8a:	4920      	ldr	r1, [pc, #128]	@ (c0de1c0c <ui_display_transaction_bs_choice+0xc4>)
c0de1b8c:	eb09 0006 	add.w	r0, r9, r6
c0de1b90:	4602      	mov	r2, r0
c0de1b92:	4479      	add	r1, pc
c0de1b94:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1b98:	2101      	movs	r1, #1
c0de1b9a:	7281      	strb	r1, [r0, #10]
c0de1b9c:	7201      	strb	r1, [r0, #8]
c0de1b9e:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1ba2:	f849 2006 	str.w	r2, [r9, r6]
c0de1ba6:	6181      	str	r1, [r0, #24]
c0de1ba8:	2100      	movs	r1, #0
c0de1baa:	4819      	ldr	r0, [pc, #100]	@ (c0de1c10 <ui_display_transaction_bs_choice+0xc8>)
c0de1bac:	4478      	add	r0, pc
c0de1bae:	b1d4      	cbz	r4, c0de1be6 <ui_display_transaction_bs_choice+0x9e>
c0de1bb0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1bb4:	e9cd 1100 	strd	r1, r1, [sp]
c0de1bb8:	eb09 0106 	add.w	r1, r9, r6
c0de1bbc:	2000      	movs	r0, #0
c0de1bbe:	4a15      	ldr	r2, [pc, #84]	@ (c0de1c14 <ui_display_transaction_bs_choice+0xcc>)
c0de1bc0:	4b15      	ldr	r3, [pc, #84]	@ (c0de1c18 <ui_display_transaction_bs_choice+0xd0>)
c0de1bc2:	447a      	add	r2, pc
c0de1bc4:	447b      	add	r3, pc
c0de1bc6:	f002 fff1 	bl	c0de4bac <nbgl_useCaseReviewBlindSigning>
c0de1bca:	e018      	b.n	c0de1bfe <ui_display_transaction_bs_choice+0xb6>
c0de1bcc:	2000      	movs	r0, #0
c0de1bce:	f809 0007 	strb.w	r0, [r9, r7]
c0de1bd2:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1bd6:	e001      	b.n	c0de1bdc <ui_display_transaction_bs_choice+0x94>
c0de1bd8:	f24b 0009 	movw	r0, #45065	@ 0xb009
c0de1bdc:	b005      	add	sp, #20
c0de1bde:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1be2:	f000 b81f 	b.w	c0de1c24 <io_send_sw>
c0de1be6:	e9cd 1100 	strd	r1, r1, [sp]
c0de1bea:	9002      	str	r0, [sp, #8]
c0de1bec:	eb09 0106 	add.w	r1, r9, r6
c0de1bf0:	2000      	movs	r0, #0
c0de1bf2:	4a0a      	ldr	r2, [pc, #40]	@ (c0de1c1c <ui_display_transaction_bs_choice+0xd4>)
c0de1bf4:	4b0a      	ldr	r3, [pc, #40]	@ (c0de1c20 <ui_display_transaction_bs_choice+0xd8>)
c0de1bf6:	447a      	add	r2, pc
c0de1bf8:	447b      	add	r3, pc
c0de1bfa:	f002 ff37 	bl	c0de4a6c <nbgl_useCaseReview>
c0de1bfe:	2000      	movs	r0, #0
c0de1c00:	b005      	add	sp, #20
c0de1c02:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1c04:	00000000 	.word	0x00000000
c0de1c08:	000003a0 	.word	0x000003a0
c0de1c0c:	000060e2 	.word	0x000060e2
c0de1c10:	00000085 	.word	0x00000085
c0de1c14:	00005e0a 	.word	0x00005e0a
c0de1c18:	0000611d 	.word	0x0000611d
c0de1c1c:	00005dd6 	.word	0x00005dd6
c0de1c20:	000060e9 	.word	0x000060e9

c0de1c24 <io_send_sw>:
c0de1c24:	b580      	push	{r7, lr}
c0de1c26:	4602      	mov	r2, r0
c0de1c28:	2000      	movs	r0, #0
c0de1c2a:	2100      	movs	r1, #0
c0de1c2c:	f004 fdb6 	bl	c0de679c <io_send_response_buffers>
c0de1c30:	bd80      	pop	{r7, pc}
	...

c0de1c34 <review_choice>:
c0de1c34:	b510      	push	{r4, lr}
c0de1c36:	4604      	mov	r4, r0
c0de1c38:	f7ff fde4 	bl	c0de1804 <validate_transaction>
c0de1c3c:	4903      	ldr	r1, [pc, #12]	@ (c0de1c4c <review_choice+0x18>)
c0de1c3e:	f084 0001 	eor.w	r0, r4, #1
c0de1c42:	4479      	add	r1, pc
c0de1c44:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1c48:	f003 b9b4 	b.w	c0de4fb4 <nbgl_useCaseReviewStatus>
c0de1c4c:	fffffc67 	.word	0xfffffc67

c0de1c50 <ui_display_blind_signed_transaction>:
c0de1c50:	2001      	movs	r0, #1
c0de1c52:	f7ff bf79 	b.w	c0de1b48 <ui_display_transaction_bs_choice>

c0de1c56 <ui_display_transaction>:
c0de1c56:	2000      	movs	r0, #0
c0de1c58:	f7ff bf76 	b.w	c0de1b48 <ui_display_transaction_bs_choice>

c0de1c5c <zkn_prv_hash>:
c0de1c5c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1c60:	460c      	mov	r4, r1
c0de1c62:	e9cd 0200 	strd	r0, r2, [sp]
c0de1c66:	4668      	mov	r0, sp
c0de1c68:	2101      	movs	r1, #1
c0de1c6a:	2601      	movs	r6, #1
c0de1c6c:	4622      	mov	r2, r4
c0de1c6e:	f005 f802 	bl	c0de6c76 <cx_blake2b_512_hash_iovec>
c0de1c72:	4605      	mov	r5, r0
c0de1c74:	bb18      	cbnz	r0, c0de1cbe <zkn_prv_hash+0x62>
c0de1c76:	7820      	ldrb	r0, [r4, #0]
c0de1c78:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1c7c:	7020      	strb	r0, [r4, #0]
c0de1c7e:	7fe0      	ldrb	r0, [r4, #31]
c0de1c80:	f366 109f 	bfi	r0, r6, #6, #26
c0de1c84:	77e0      	strb	r0, [r4, #31]
c0de1c86:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1c8a:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1cc4 <zkn_prv_hash+0x68>)
c0de1c8c:	447e      	add	r6, pc
c0de1c8e:	47b0      	blx	r6
c0de1c90:	4680      	mov	r8, r0
c0de1c92:	468a      	mov	sl, r1
c0de1c94:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1c98:	47b0      	blx	r6
c0de1c9a:	4683      	mov	fp, r0
c0de1c9c:	460f      	mov	r7, r1
c0de1c9e:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1ca2:	47b0      	blx	r6
c0de1ca4:	e9c4 0100 	strd	r0, r1, [r4]
c0de1ca8:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1cac:	47b0      	blx	r6
c0de1cae:	f104 0208 	add.w	r2, r4, #8
c0de1cb2:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1cb6:	f104 0014 	add.w	r0, r4, #20
c0de1cba:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1cbe:	4628      	mov	r0, r5
c0de1cc0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1cc4:	00000341 	.word	0x00000341

c0de1cc8 <zkn_prv2pub>:
c0de1cc8:	b570      	push	{r4, r5, r6, lr}
c0de1cca:	b092      	sub	sp, #72	@ 0x48
c0de1ccc:	4614      	mov	r4, r2
c0de1cce:	6802      	ldr	r2, [r0, #0]
c0de1cd0:	ae02      	add	r6, sp, #8
c0de1cd2:	4605      	mov	r5, r0
c0de1cd4:	4608      	mov	r0, r1
c0de1cd6:	4631      	mov	r1, r6
c0de1cd8:	f7ff ffc0 	bl	c0de1c5c <zkn_prv_hash>
c0de1cdc:	2000      	movs	r0, #0
c0de1cde:	2100      	movs	r1, #0
c0de1ce0:	2820      	cmp	r0, #32
c0de1ce2:	d009      	beq.n	c0de1cf8 <zkn_prv2pub+0x30>
c0de1ce4:	5c32      	ldrb	r2, [r6, r0]
c0de1ce6:	0149      	lsls	r1, r1, #5
c0de1ce8:	0613      	lsls	r3, r2, #24
c0de1cea:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1cee:	5431      	strb	r1, [r6, r0]
c0de1cf0:	f002 0107 	and.w	r1, r2, #7
c0de1cf4:	3001      	adds	r0, #1
c0de1cf6:	e7f3      	b.n	c0de1ce0 <zkn_prv2pub+0x18>
c0de1cf8:	4629      	mov	r1, r5
c0de1cfa:	4628      	mov	r0, r5
c0de1cfc:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1d00:	9400      	str	r4, [sp, #0]
c0de1d02:	aa02      	add	r2, sp, #8
c0de1d04:	f000 ffc8 	bl	c0de2c98 <tEdwards_scalarMul>
c0de1d08:	b918      	cbnz	r0, c0de1d12 <zkn_prv2pub+0x4a>
c0de1d0a:	4628      	mov	r0, r5
c0de1d0c:	4621      	mov	r1, r4
c0de1d0e:	f000 fefe 	bl	c0de2b0e <tEdwards_normalize>
c0de1d12:	b012      	add	sp, #72	@ 0x48
c0de1d14:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1d18 <EddsaPoseidon_Sign_final>:
c0de1d18:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1d1c:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1d20:	4605      	mov	r5, r0
c0de1d22:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1d24:	2820      	cmp	r0, #32
c0de1d26:	d118      	bne.n	c0de1d5a <EddsaPoseidon_Sign_final+0x42>
c0de1d28:	460f      	mov	r7, r1
c0de1d2a:	a982      	add	r1, sp, #520	@ 0x208
c0de1d2c:	4628      	mov	r0, r5
c0de1d2e:	461e      	mov	r6, r3
c0de1d30:	4692      	mov	sl, r2
c0de1d32:	f000 fbbb 	bl	c0de24ac <tEdwards_alloc>
c0de1d36:	b988      	cbnz	r0, c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1d38:	682a      	ldr	r2, [r5, #0]
c0de1d3a:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1d3c:	4638      	mov	r0, r7
c0de1d3e:	4621      	mov	r1, r4
c0de1d40:	f7ff ff8c 	bl	c0de1c5c <zkn_prv_hash>
c0de1d44:	b950      	cbnz	r0, c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1d46:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1d4a:	2000      	movs	r0, #0
c0de1d4c:	a95a      	add	r1, sp, #360	@ 0x168
c0de1d4e:	2820      	cmp	r0, #32
c0de1d50:	d008      	beq.n	c0de1d64 <EddsaPoseidon_Sign_final+0x4c>
c0de1d52:	5c22      	ldrb	r2, [r4, r0]
c0de1d54:	540a      	strb	r2, [r1, r0]
c0de1d56:	3001      	adds	r0, #1
c0de1d58:	e7f9      	b.n	c0de1d4e <EddsaPoseidon_Sign_final+0x36>
c0de1d5a:	489b      	ldr	r0, [pc, #620]	@ (c0de1fc8 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1d5c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1d60:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1d64:	a812      	add	r0, sp, #72	@ 0x48
c0de1d66:	2109      	movs	r1, #9
c0de1d68:	2240      	movs	r2, #64	@ 0x40
c0de1d6a:	f004 ffa0 	bl	c0de6cae <cx_hash_init_ex>
c0de1d6e:	2800      	cmp	r0, #0
c0de1d70:	d1f4      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1d72:	f104 0120 	add.w	r1, r4, #32
c0de1d76:	a812      	add	r0, sp, #72	@ 0x48
c0de1d78:	2220      	movs	r2, #32
c0de1d7a:	f004 ff9d 	bl	c0de6cb8 <cx_hash_update>
c0de1d7e:	2800      	cmp	r0, #0
c0de1d80:	d1ec      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1d82:	a812      	add	r0, sp, #72	@ 0x48
c0de1d84:	4631      	mov	r1, r6
c0de1d86:	2220      	movs	r2, #32
c0de1d88:	f004 ff96 	bl	c0de6cb8 <cx_hash_update>
c0de1d8c:	2800      	cmp	r0, #0
c0de1d8e:	d1e5      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1d90:	a812      	add	r0, sp, #72	@ 0x48
c0de1d92:	ac62      	add	r4, sp, #392	@ 0x188
c0de1d94:	4621      	mov	r1, r4
c0de1d96:	f004 ff85 	bl	c0de6ca4 <cx_hash_final>
c0de1d9a:	2800      	cmp	r0, #0
c0de1d9c:	d1de      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1d9e:	203f      	movs	r0, #63	@ 0x3f
c0de1da0:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1da2:	1c42      	adds	r2, r0, #1
c0de1da4:	d004      	beq.n	c0de1db0 <EddsaPoseidon_Sign_final+0x98>
c0de1da6:	5c22      	ldrb	r2, [r4, r0]
c0de1da8:	3801      	subs	r0, #1
c0de1daa:	f801 2b01 	strb.w	r2, [r1], #1
c0de1dae:	e7f8      	b.n	c0de1da2 <EddsaPoseidon_Sign_final+0x8a>
c0de1db0:	a889      	add	r0, sp, #548	@ 0x224
c0de1db2:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1db4:	2140      	movs	r1, #64	@ 0x40
c0de1db6:	2340      	movs	r3, #64	@ 0x40
c0de1db8:	f005 f9f0 	bl	c0de719c <cx_bn_alloc_init>
c0de1dbc:	2800      	cmp	r0, #0
c0de1dbe:	d1cd      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1dc0:	a887      	add	r0, sp, #540	@ 0x21c
c0de1dc2:	2140      	movs	r1, #64	@ 0x40
c0de1dc4:	f005 f9e0 	bl	c0de7188 <cx_bn_alloc>
c0de1dc8:	2800      	cmp	r0, #0
c0de1dca:	d1c7      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1dcc:	497f      	ldr	r1, [pc, #508]	@ (c0de1fcc <EddsaPoseidon_Sign_final+0x2b4>)
c0de1dce:	f10d 0808 	add.w	r8, sp, #8
c0de1dd2:	2240      	movs	r2, #64	@ 0x40
c0de1dd4:	4640      	mov	r0, r8
c0de1dd6:	4479      	add	r1, pc
c0de1dd8:	f005 fc8c 	bl	c0de76f4 <__aeabi_memcpy>
c0de1ddc:	a888      	add	r0, sp, #544	@ 0x220
c0de1dde:	2140      	movs	r1, #64	@ 0x40
c0de1de0:	4642      	mov	r2, r8
c0de1de2:	2340      	movs	r3, #64	@ 0x40
c0de1de4:	f005 f9da 	bl	c0de719c <cx_bn_alloc_init>
c0de1de8:	2800      	cmp	r0, #0
c0de1dea:	d1b7      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1dec:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1dee:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1df2:	f005 fa67 	bl	c0de72c4 <cx_bn_reduce>
c0de1df6:	2800      	cmp	r0, #0
c0de1df8:	d1b0      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1dfa:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1dfc:	f105 010c 	add.w	r1, r5, #12
c0de1e00:	ab82      	add	r3, sp, #520	@ 0x208
c0de1e02:	4628      	mov	r0, r5
c0de1e04:	f000 fee2 	bl	c0de2bcc <tEdwards_scalarMul_bn>
c0de1e08:	2800      	cmp	r0, #0
c0de1e0a:	d1a7      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e0c:	a982      	add	r1, sp, #520	@ 0x208
c0de1e0e:	4628      	mov	r0, r5
c0de1e10:	f000 fe7d 	bl	c0de2b0e <tEdwards_normalize>
c0de1e14:	2800      	cmp	r0, #0
c0de1e16:	d1a1      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e18:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1e1a:	a952      	add	r1, sp, #328	@ 0x148
c0de1e1c:	f000 f8e0 	bl	c0de1fe0 <OUTLINED_FUNCTION_1>
c0de1e20:	2800      	cmp	r0, #0
c0de1e22:	d19b      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e24:	a888      	add	r0, sp, #544	@ 0x220
c0de1e26:	f005 f9c5 	bl	c0de71b4 <cx_bn_destroy>
c0de1e2a:	2800      	cmp	r0, #0
c0de1e2c:	d196      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e2e:	a889      	add	r0, sp, #548	@ 0x224
c0de1e30:	f005 f9c0 	bl	c0de71b4 <cx_bn_destroy>
c0de1e34:	2800      	cmp	r0, #0
c0de1e36:	d191      	bne.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e38:	a887      	add	r0, sp, #540	@ 0x21c
c0de1e3a:	f005 f9bb 	bl	c0de71b4 <cx_bn_destroy>
c0de1e3e:	2800      	cmp	r0, #0
c0de1e40:	f47f af8c 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e44:	4628      	mov	r0, r5
c0de1e46:	f000 fde0 	bl	c0de2a0a <tEdwards_Curve_partial_destroy>
c0de1e4a:	2800      	cmp	r0, #0
c0de1e4c:	f47f af86 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e50:	f105 0420 	add.w	r4, r5, #32
c0de1e54:	a88a      	add	r0, sp, #552	@ 0x228
c0de1e56:	2105      	movs	r1, #5
c0de1e58:	2205      	movs	r2, #5
c0de1e5a:	4623      	mov	r3, r4
c0de1e5c:	f001 f842 	bl	c0de2ee4 <Poseidon_alloc_init>
c0de1e60:	2800      	cmp	r0, #0
c0de1e62:	f47f af7b 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e66:	201f      	movs	r0, #31
c0de1e68:	a962      	add	r1, sp, #392	@ 0x188
c0de1e6a:	1c42      	adds	r2, r0, #1
c0de1e6c:	d004      	beq.n	c0de1e78 <EddsaPoseidon_Sign_final+0x160>
c0de1e6e:	5c32      	ldrb	r2, [r6, r0]
c0de1e70:	3801      	subs	r0, #1
c0de1e72:	f801 2b01 	strb.w	r2, [r1], #1
c0de1e76:	e7f8      	b.n	c0de1e6a <EddsaPoseidon_Sign_final+0x152>
c0de1e78:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1e7a:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1e7c:	f005 f9ba 	bl	c0de71f4 <cx_bn_copy>
c0de1e80:	2800      	cmp	r0, #0
c0de1e82:	f47f af6b 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e86:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1e88:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1e8a:	f005 f9b3 	bl	c0de71f4 <cx_bn_copy>
c0de1e8e:	2800      	cmp	r0, #0
c0de1e90:	f47f af64 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1e94:	f8da 1000 	ldr.w	r1, [sl]
c0de1e98:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1e9a:	f005 f9ab 	bl	c0de71f4 <cx_bn_copy>
c0de1e9e:	2800      	cmp	r0, #0
c0de1ea0:	f47f af5c 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1ea4:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1ea8:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1eaa:	f005 f9a3 	bl	c0de71f4 <cx_bn_copy>
c0de1eae:	2800      	cmp	r0, #0
c0de1eb0:	f47f af54 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1eb4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1eb6:	a962      	add	r1, sp, #392	@ 0x188
c0de1eb8:	2220      	movs	r2, #32
c0de1eba:	f005 f98f 	bl	c0de71dc <cx_bn_init>
c0de1ebe:	2800      	cmp	r0, #0
c0de1ec0:	f47f af4c 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1ec4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1ec6:	4622      	mov	r2, r4
c0de1ec8:	4601      	mov	r1, r0
c0de1eca:	f005 fa31 	bl	c0de7330 <cx_mont_to_montgomery>
c0de1ece:	2800      	cmp	r0, #0
c0de1ed0:	f47f af44 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1ed4:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1ed6:	f000 f87f 	bl	c0de1fd8 <OUTLINED_FUNCTION_0>
c0de1eda:	2800      	cmp	r0, #0
c0de1edc:	f47f af3e 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1ee0:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1ee2:	f000 f879 	bl	c0de1fd8 <OUTLINED_FUNCTION_0>
c0de1ee6:	2800      	cmp	r0, #0
c0de1ee8:	f47f af38 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1eec:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1eee:	4659      	mov	r1, fp
c0de1ef0:	f000 f876 	bl	c0de1fe0 <OUTLINED_FUNCTION_1>
c0de1ef4:	2800      	cmp	r0, #0
c0de1ef6:	f47f af31 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1efa:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1efc:	f10b 0120 	add.w	r1, fp, #32
c0de1f00:	f000 f86e 	bl	c0de1fe0 <OUTLINED_FUNCTION_1>
c0de1f04:	2800      	cmp	r0, #0
c0de1f06:	f47f af29 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f0a:	a982      	add	r1, sp, #520	@ 0x208
c0de1f0c:	4628      	mov	r0, r5
c0de1f0e:	f000 fae2 	bl	c0de24d6 <tEdwards_destroy>
c0de1f12:	2800      	cmp	r0, #0
c0de1f14:	f47f af22 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f18:	a885      	add	r0, sp, #532	@ 0x214
c0de1f1a:	2120      	movs	r1, #32
c0de1f1c:	f005 f934 	bl	c0de7188 <cx_bn_alloc>
c0de1f20:	2800      	cmp	r0, #0
c0de1f22:	f47f af1b 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f26:	a88a      	add	r0, sp, #552	@ 0x228
c0de1f28:	aa85      	add	r2, sp, #532	@ 0x214
c0de1f2a:	2100      	movs	r1, #0
c0de1f2c:	2301      	movs	r3, #1
c0de1f2e:	f001 f83f 	bl	c0de2fb0 <Poseidon>
c0de1f32:	2800      	cmp	r0, #0
c0de1f34:	f47f af12 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f38:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f3a:	f000 f84d 	bl	c0de1fd8 <OUTLINED_FUNCTION_0>
c0de1f3e:	2800      	cmp	r0, #0
c0de1f40:	f47f af0c 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f44:	a886      	add	r0, sp, #536	@ 0x218
c0de1f46:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1f48:	2120      	movs	r1, #32
c0de1f4a:	2320      	movs	r3, #32
c0de1f4c:	f005 f926 	bl	c0de719c <cx_bn_alloc_init>
c0de1f50:	2800      	cmp	r0, #0
c0de1f52:	f47f af03 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f56:	a801      	add	r0, sp, #4
c0de1f58:	2120      	movs	r1, #32
c0de1f5a:	f005 f915 	bl	c0de7188 <cx_bn_alloc>
c0de1f5e:	2800      	cmp	r0, #0
c0de1f60:	f47f aefc 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f64:	f108 0220 	add.w	r2, r8, #32
c0de1f68:	a888      	add	r0, sp, #544	@ 0x220
c0de1f6a:	2120      	movs	r1, #32
c0de1f6c:	2320      	movs	r3, #32
c0de1f6e:	f005 f915 	bl	c0de719c <cx_bn_alloc_init>
c0de1f72:	2800      	cmp	r0, #0
c0de1f74:	f47f aef2 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f78:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1f7a:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1f7e:	9801      	ldr	r0, [sp, #4]
c0de1f80:	f005 f994 	bl	c0de72ac <cx_bn_mod_mul>
c0de1f84:	2800      	cmp	r0, #0
c0de1f86:	f47f aee9 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f8a:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f8c:	a952      	add	r1, sp, #328	@ 0x148
c0de1f8e:	2220      	movs	r2, #32
c0de1f90:	f005 f924 	bl	c0de71dc <cx_bn_init>
c0de1f94:	2800      	cmp	r0, #0
c0de1f96:	f47f aee1 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1f9a:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1f9c:	9a01      	ldr	r2, [sp, #4]
c0de1f9e:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1fa2:	f005 f96b 	bl	c0de727c <cx_bn_mod_add>
c0de1fa6:	2800      	cmp	r0, #0
c0de1fa8:	f47f aed8 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1fac:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de1fae:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de1fb2:	f005 f987 	bl	c0de72c4 <cx_bn_reduce>
c0de1fb6:	2800      	cmp	r0, #0
c0de1fb8:	f47f aed0 	bne.w	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1fbc:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1fbe:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de1fc2:	f000 f80d 	bl	c0de1fe0 <OUTLINED_FUNCTION_1>
c0de1fc6:	e6c9      	b.n	c0de1d5c <EddsaPoseidon_Sign_final+0x44>
c0de1fc8:	5a4b4e03 	.word	0x5a4b4e03
c0de1fcc:	000068ba 	.word	0x000068ba

c0de1fd0 <rev64>:
c0de1fd0:	ba0a      	rev	r2, r1
c0de1fd2:	ba01      	rev	r1, r0
c0de1fd4:	4610      	mov	r0, r2
c0de1fd6:	4770      	bx	lr

c0de1fd8 <OUTLINED_FUNCTION_0>:
c0de1fd8:	4622      	mov	r2, r4
c0de1fda:	4601      	mov	r1, r0
c0de1fdc:	f005 b9b4 	b.w	c0de7348 <cx_mont_from_montgomery>

c0de1fe0 <OUTLINED_FUNCTION_1>:
c0de1fe0:	2220      	movs	r2, #32
c0de1fe2:	f005 b91b 	b.w	c0de721c <cx_bn_export>

c0de1fe6 <zkn_frost_interpolate>:
c0de1fe6:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1fea:	b085      	sub	sp, #20
c0de1fec:	460e      	mov	r6, r1
c0de1fee:	4607      	mov	r7, r0
c0de1ff0:	a803      	add	r0, sp, #12
c0de1ff2:	2120      	movs	r1, #32
c0de1ff4:	f000 fa50 	bl	c0de2498 <OUTLINED_FUNCTION_2>
c0de1ff8:	b988      	cbnz	r0, c0de201e <zkn_frost_interpolate+0x38>
c0de1ffa:	a802      	add	r0, sp, #8
c0de1ffc:	f000 fa53 	bl	c0de24a6 <OUTLINED_FUNCTION_4>
c0de2000:	b968      	cbnz	r0, c0de201e <zkn_frost_interpolate+0x38>
c0de2002:	a801      	add	r0, sp, #4
c0de2004:	f000 fa4f 	bl	c0de24a6 <OUTLINED_FUNCTION_4>
c0de2008:	b948      	cbnz	r0, c0de201e <zkn_frost_interpolate+0x38>
c0de200a:	9803      	ldr	r0, [sp, #12]
c0de200c:	2101      	movs	r1, #1
c0de200e:	f005 f8fb 	bl	c0de7208 <cx_bn_set_u32>
c0de2012:	b920      	cbnz	r0, c0de201e <zkn_frost_interpolate+0x38>
c0de2014:	9802      	ldr	r0, [sp, #8]
c0de2016:	2101      	movs	r1, #1
c0de2018:	f005 f8f6 	bl	c0de7208 <cx_bn_set_u32>
c0de201c:	b110      	cbz	r0, c0de2024 <zkn_frost_interpolate+0x3e>
c0de201e:	b005      	add	sp, #20
c0de2020:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2024:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2028:	f10d 0a10 	add.w	sl, sp, #16
c0de202c:	b31e      	cbz	r6, c0de2076 <zkn_frost_interpolate+0x90>
c0de202e:	6838      	ldr	r0, [r7, #0]
c0de2030:	4629      	mov	r1, r5
c0de2032:	4652      	mov	r2, sl
c0de2034:	f005 f8fe 	bl	c0de7234 <cx_bn_cmp>
c0de2038:	2800      	cmp	r0, #0
c0de203a:	d1f0      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de203c:	9804      	ldr	r0, [sp, #16]
c0de203e:	b1b8      	cbz	r0, c0de2070 <zkn_frost_interpolate+0x8a>
c0de2040:	9802      	ldr	r0, [sp, #8]
c0de2042:	683a      	ldr	r2, [r7, #0]
c0de2044:	4623      	mov	r3, r4
c0de2046:	4601      	mov	r1, r0
c0de2048:	f005 f930 	bl	c0de72ac <cx_bn_mod_mul>
c0de204c:	2800      	cmp	r0, #0
c0de204e:	d1e6      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de2050:	6839      	ldr	r1, [r7, #0]
c0de2052:	9801      	ldr	r0, [sp, #4]
c0de2054:	462a      	mov	r2, r5
c0de2056:	4623      	mov	r3, r4
c0de2058:	f005 f91c 	bl	c0de7294 <cx_bn_mod_sub>
c0de205c:	2800      	cmp	r0, #0
c0de205e:	d1de      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de2060:	9803      	ldr	r0, [sp, #12]
c0de2062:	9a01      	ldr	r2, [sp, #4]
c0de2064:	4623      	mov	r3, r4
c0de2066:	4601      	mov	r1, r0
c0de2068:	f005 f920 	bl	c0de72ac <cx_bn_mod_mul>
c0de206c:	2800      	cmp	r0, #0
c0de206e:	d1d6      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de2070:	3704      	adds	r7, #4
c0de2072:	3e01      	subs	r6, #1
c0de2074:	e7da      	b.n	c0de202c <zkn_frost_interpolate+0x46>
c0de2076:	9903      	ldr	r1, [sp, #12]
c0de2078:	4640      	mov	r0, r8
c0de207a:	4622      	mov	r2, r4
c0de207c:	f005 f92e 	bl	c0de72dc <cx_bn_mod_invert_nprime>
c0de2080:	2800      	cmp	r0, #0
c0de2082:	d1cc      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de2084:	9a02      	ldr	r2, [sp, #8]
c0de2086:	4640      	mov	r0, r8
c0de2088:	4641      	mov	r1, r8
c0de208a:	4623      	mov	r3, r4
c0de208c:	f005 f90e 	bl	c0de72ac <cx_bn_mod_mul>
c0de2090:	2800      	cmp	r0, #0
c0de2092:	d1c4      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de2094:	a803      	add	r0, sp, #12
c0de2096:	f005 f88d 	bl	c0de71b4 <cx_bn_destroy>
c0de209a:	2800      	cmp	r0, #0
c0de209c:	d1bf      	bne.n	c0de201e <zkn_frost_interpolate+0x38>
c0de209e:	a802      	add	r0, sp, #8
c0de20a0:	f005 f888 	bl	c0de71b4 <cx_bn_destroy>
c0de20a4:	e7bb      	b.n	c0de201e <zkn_frost_interpolate+0x38>

c0de20a6 <zkn_frost_interpolate_secrets>:
c0de20a6:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de20aa:	460f      	mov	r7, r1
c0de20ac:	4606      	mov	r6, r0
c0de20ae:	a802      	add	r0, sp, #8
c0de20b0:	2120      	movs	r1, #32
c0de20b2:	461c      	mov	r4, r3
c0de20b4:	4692      	mov	sl, r2
c0de20b6:	f005 f867 	bl	c0de7188 <cx_bn_alloc>
c0de20ba:	b108      	cbz	r0, c0de20c0 <zkn_frost_interpolate_secrets+0x1a>
c0de20bc:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de20c0:	a801      	add	r0, sp, #4
c0de20c2:	f000 f9f0 	bl	c0de24a6 <OUTLINED_FUNCTION_4>
c0de20c6:	2800      	cmp	r0, #0
c0de20c8:	d1f8      	bne.n	c0de20bc <zkn_frost_interpolate_secrets+0x16>
c0de20ca:	9802      	ldr	r0, [sp, #8]
c0de20cc:	2100      	movs	r1, #0
c0de20ce:	f005 f89b 	bl	c0de7208 <cx_bn_set_u32>
c0de20d2:	2800      	cmp	r0, #0
c0de20d4:	d1f2      	bne.n	c0de20bc <zkn_frost_interpolate_secrets+0x16>
c0de20d6:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de20da:	2500      	movs	r5, #0
c0de20dc:	42ac      	cmp	r4, r5
c0de20de:	d01d      	beq.n	c0de211c <zkn_frost_interpolate_secrets+0x76>
c0de20e0:	9801      	ldr	r0, [sp, #4]
c0de20e2:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de20e6:	68b3      	ldr	r3, [r6, #8]
c0de20e8:	4621      	mov	r1, r4
c0de20ea:	9000      	str	r0, [sp, #0]
c0de20ec:	4638      	mov	r0, r7
c0de20ee:	f7ff ff7a 	bl	c0de1fe6 <zkn_frost_interpolate>
c0de20f2:	2800      	cmp	r0, #0
c0de20f4:	d1e2      	bne.n	c0de20bc <zkn_frost_interpolate_secrets+0x16>
c0de20f6:	9801      	ldr	r0, [sp, #4]
c0de20f8:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de20fc:	68b3      	ldr	r3, [r6, #8]
c0de20fe:	4601      	mov	r1, r0
c0de2100:	f005 f8d4 	bl	c0de72ac <cx_bn_mod_mul>
c0de2104:	2800      	cmp	r0, #0
c0de2106:	d1d9      	bne.n	c0de20bc <zkn_frost_interpolate_secrets+0x16>
c0de2108:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de210c:	68b3      	ldr	r3, [r6, #8]
c0de210e:	4601      	mov	r1, r0
c0de2110:	f005 f8b4 	bl	c0de727c <cx_bn_mod_add>
c0de2114:	3501      	adds	r5, #1
c0de2116:	2800      	cmp	r0, #0
c0de2118:	d0e0      	beq.n	c0de20dc <zkn_frost_interpolate_secrets+0x36>
c0de211a:	e7cf      	b.n	c0de20bc <zkn_frost_interpolate_secrets+0x16>
c0de211c:	68b2      	ldr	r2, [r6, #8]
c0de211e:	9902      	ldr	r1, [sp, #8]
c0de2120:	4640      	mov	r0, r8
c0de2122:	f005 f8cf 	bl	c0de72c4 <cx_bn_reduce>
c0de2126:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de212a <zkn_evalshare>:
c0de212a:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de212e:	460e      	mov	r6, r1
c0de2130:	6801      	ldr	r1, [r0, #0]
c0de2132:	4607      	mov	r7, r0
c0de2134:	a801      	add	r0, sp, #4
c0de2136:	f000 f9af 	bl	c0de2498 <OUTLINED_FUNCTION_2>
c0de213a:	b108      	cbz	r0, c0de2140 <zkn_evalshare+0x16>
c0de213c:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2140:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2144:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2148:	4640      	mov	r0, r8
c0de214a:	f005 f853 	bl	c0de71f4 <cx_bn_copy>
c0de214e:	2800      	cmp	r0, #0
c0de2150:	d1f4      	bne.n	c0de213c <zkn_evalshare+0x12>
c0de2152:	3e04      	subs	r6, #4
c0de2154:	68bb      	ldr	r3, [r7, #8]
c0de2156:	9801      	ldr	r0, [sp, #4]
c0de2158:	4641      	mov	r1, r8
c0de215a:	b17d      	cbz	r5, c0de217c <zkn_evalshare+0x52>
c0de215c:	4622      	mov	r2, r4
c0de215e:	f005 f8a5 	bl	c0de72ac <cx_bn_mod_mul>
c0de2162:	2800      	cmp	r0, #0
c0de2164:	d1ea      	bne.n	c0de213c <zkn_evalshare+0x12>
c0de2166:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de216a:	68bb      	ldr	r3, [r7, #8]
c0de216c:	9901      	ldr	r1, [sp, #4]
c0de216e:	4640      	mov	r0, r8
c0de2170:	f005 f884 	bl	c0de727c <cx_bn_mod_add>
c0de2174:	3d01      	subs	r5, #1
c0de2176:	2800      	cmp	r0, #0
c0de2178:	d0ec      	beq.n	c0de2154 <zkn_evalshare+0x2a>
c0de217a:	e7df      	b.n	c0de213c <zkn_evalshare+0x12>
c0de217c:	461a      	mov	r2, r3
c0de217e:	f005 f8a1 	bl	c0de72c4 <cx_bn_reduce>
c0de2182:	2800      	cmp	r0, #0
c0de2184:	d1da      	bne.n	c0de213c <zkn_evalshare+0x12>
c0de2186:	9901      	ldr	r1, [sp, #4]
c0de2188:	4640      	mov	r0, r8
c0de218a:	f005 f833 	bl	c0de71f4 <cx_bn_copy>
c0de218e:	2800      	cmp	r0, #0
c0de2190:	d1d4      	bne.n	c0de213c <zkn_evalshare+0x12>
c0de2192:	a801      	add	r0, sp, #4
c0de2194:	f005 f80e 	bl	c0de71b4 <cx_bn_destroy>
c0de2198:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de219c <zkn_encode_group_commitmentHash>:
c0de219c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de21a0:	b0d6      	sub	sp, #344	@ 0x158
c0de21a2:	4606      	mov	r6, r0
c0de21a4:	a816      	add	r0, sp, #88	@ 0x58
c0de21a6:	461c      	mov	r4, r3
c0de21a8:	4615      	mov	r5, r2
c0de21aa:	460f      	mov	r7, r1
c0de21ac:	f001 f88a 	bl	c0de32c4 <zkn_frost_H5_init>
c0de21b0:	b110      	cbz	r0, c0de21b8 <zkn_encode_group_commitmentHash+0x1c>
c0de21b2:	b056      	add	sp, #344	@ 0x158
c0de21b4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de21b8:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de21bc:	9401      	str	r4, [sp, #4]
c0de21be:	a806      	add	r0, sp, #24
c0de21c0:	f04f 0a00 	mov.w	sl, #0
c0de21c4:	f04f 0b02 	mov.w	fp, #2
c0de21c8:	2604      	movs	r6, #4
c0de21ca:	2400      	movs	r4, #0
c0de21cc:	9502      	str	r5, [sp, #8]
c0de21ce:	f1a0 0801 	sub.w	r8, r0, #1
c0de21d2:	42ac      	cmp	r4, r5
c0de21d4:	d058      	beq.n	c0de2288 <zkn_encode_group_commitmentHash+0xec>
c0de21d6:	9805      	ldr	r0, [sp, #20]
c0de21d8:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de21dc:	9103      	str	r1, [sp, #12]
c0de21de:	6805      	ldr	r5, [r0, #0]
c0de21e0:	9804      	ldr	r0, [sp, #16]
c0de21e2:	fb05 000a 	mla	r0, r5, sl, r0
c0de21e6:	4629      	mov	r1, r5
c0de21e8:	b129      	cbz	r1, c0de21f6 <zkn_encode_group_commitmentHash+0x5a>
c0de21ea:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de21ee:	f808 2001 	strb.w	r2, [r8, r1]
c0de21f2:	3901      	subs	r1, #1
c0de21f4:	e7f8      	b.n	c0de21e8 <zkn_encode_group_commitmentHash+0x4c>
c0de21f6:	a816      	add	r0, sp, #88	@ 0x58
c0de21f8:	a906      	add	r1, sp, #24
c0de21fa:	462a      	mov	r2, r5
c0de21fc:	f001 f87c 	bl	c0de32f8 <zkn_frost_hash_update>
c0de2200:	2800      	cmp	r0, #0
c0de2202:	d1d6      	bne.n	c0de21b2 <zkn_encode_group_commitmentHash+0x16>
c0de2204:	9803      	ldr	r0, [sp, #12]
c0de2206:	9f04      	ldr	r7, [sp, #16]
c0de2208:	1c43      	adds	r3, r0, #1
c0de220a:	9805      	ldr	r0, [sp, #20]
c0de220c:	fb05 710b 	mla	r1, r5, fp, r7
c0de2210:	6802      	ldr	r2, [r0, #0]
c0de2212:	1e50      	subs	r0, r2, #1
c0de2214:	4615      	mov	r5, r2
c0de2216:	fb02 0303 	mla	r3, r2, r3, r0
c0de221a:	5cfb      	ldrb	r3, [r7, r3]
c0de221c:	b12d      	cbz	r5, c0de222a <zkn_encode_group_commitmentHash+0x8e>
c0de221e:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2222:	f808 7005 	strb.w	r7, [r8, r5]
c0de2226:	3d01      	subs	r5, #1
c0de2228:	e7f8      	b.n	c0de221c <zkn_encode_group_commitmentHash+0x80>
c0de222a:	a906      	add	r1, sp, #24
c0de222c:	5c0d      	ldrb	r5, [r1, r0]
c0de222e:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2232:	540b      	strb	r3, [r1, r0]
c0de2234:	a816      	add	r0, sp, #88	@ 0x58
c0de2236:	f001 f85f 	bl	c0de32f8 <zkn_frost_hash_update>
c0de223a:	2800      	cmp	r0, #0
c0de223c:	d1b9      	bne.n	c0de21b2 <zkn_encode_group_commitmentHash+0x16>
c0de223e:	9805      	ldr	r0, [sp, #20]
c0de2240:	9d04      	ldr	r5, [sp, #16]
c0de2242:	6802      	ldr	r2, [r0, #0]
c0de2244:	9803      	ldr	r0, [sp, #12]
c0de2246:	1cc3      	adds	r3, r0, #3
c0de2248:	1e50      	subs	r0, r2, #1
c0de224a:	fb02 5106 	mla	r1, r2, r6, r5
c0de224e:	fb02 0303 	mla	r3, r2, r3, r0
c0de2252:	5ceb      	ldrb	r3, [r5, r3]
c0de2254:	4615      	mov	r5, r2
c0de2256:	b12d      	cbz	r5, c0de2264 <zkn_encode_group_commitmentHash+0xc8>
c0de2258:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de225c:	f808 7005 	strb.w	r7, [r8, r5]
c0de2260:	3d01      	subs	r5, #1
c0de2262:	e7f8      	b.n	c0de2256 <zkn_encode_group_commitmentHash+0xba>
c0de2264:	a906      	add	r1, sp, #24
c0de2266:	5c0d      	ldrb	r5, [r1, r0]
c0de2268:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de226c:	540b      	strb	r3, [r1, r0]
c0de226e:	a816      	add	r0, sp, #88	@ 0x58
c0de2270:	f001 f842 	bl	c0de32f8 <zkn_frost_hash_update>
c0de2274:	3605      	adds	r6, #5
c0de2276:	3401      	adds	r4, #1
c0de2278:	9d02      	ldr	r5, [sp, #8]
c0de227a:	f10b 0b05 	add.w	fp, fp, #5
c0de227e:	f10a 0a05 	add.w	sl, sl, #5
c0de2282:	2800      	cmp	r0, #0
c0de2284:	d0a5      	beq.n	c0de21d2 <zkn_encode_group_commitmentHash+0x36>
c0de2286:	e794      	b.n	c0de21b2 <zkn_encode_group_commitmentHash+0x16>
c0de2288:	9805      	ldr	r0, [sp, #20]
c0de228a:	6881      	ldr	r1, [r0, #8]
c0de228c:	a816      	add	r0, sp, #88	@ 0x58
c0de228e:	9a01      	ldr	r2, [sp, #4]
c0de2290:	f001 f834 	bl	c0de32fc <zkn_frost_hash_final>
c0de2294:	e78d      	b.n	c0de21b2 <zkn_encode_group_commitmentHash+0x16>

c0de2296 <zkn_compute_group_commitment>:
c0de2296:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de229a:	b088      	sub	sp, #32
c0de229c:	460d      	mov	r5, r1
c0de229e:	a905      	add	r1, sp, #20
c0de22a0:	461f      	mov	r7, r3
c0de22a2:	4692      	mov	sl, r2
c0de22a4:	4604      	mov	r4, r0
c0de22a6:	f000 f901 	bl	c0de24ac <tEdwards_alloc>
c0de22aa:	b948      	cbnz	r0, c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de22ac:	a902      	add	r1, sp, #8
c0de22ae:	4620      	mov	r0, r4
c0de22b0:	f000 f8fc 	bl	c0de24ac <tEdwards_alloc>
c0de22b4:	b920      	cbnz	r0, c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de22b6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de22b8:	4620      	mov	r0, r4
c0de22ba:	f000 fbef 	bl	c0de2a9c <tEdwards_SetNeutral>
c0de22be:	b110      	cbz	r0, c0de22c6 <zkn_compute_group_commitment+0x30>
c0de22c0:	b008      	add	sp, #32
c0de22c2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de22c6:	ae05      	add	r6, sp, #20
c0de22c8:	f04f 0800 	mov.w	r8, #0
c0de22cc:	f04f 0b04 	mov.w	fp, #4
c0de22d0:	9501      	str	r5, [sp, #4]
c0de22d2:	4547      	cmp	r7, r8
c0de22d4:	d041      	beq.n	c0de235a <zkn_compute_group_commitment+0xc4>
c0de22d6:	6822      	ldr	r2, [r4, #0]
c0de22d8:	f1ab 0003 	sub.w	r0, fp, #3
c0de22dc:	4633      	mov	r3, r6
c0de22de:	fb02 5100 	mla	r1, r2, r0, r5
c0de22e2:	f1ab 0002 	sub.w	r0, fp, #2
c0de22e6:	fb02 5200 	mla	r2, r2, r0, r5
c0de22ea:	4620      	mov	r0, r4
c0de22ec:	f000 fb4e 	bl	c0de298c <tEdwards_init>
c0de22f0:	2800      	cmp	r0, #0
c0de22f2:	d1e5      	bne.n	c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de22f4:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de22f6:	4620      	mov	r0, r4
c0de22f8:	4632      	mov	r2, r6
c0de22fa:	460b      	mov	r3, r1
c0de22fc:	f000 f967 	bl	c0de25ce <tEdwards_add>
c0de2300:	2800      	cmp	r0, #0
c0de2302:	d1dd      	bne.n	c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de2304:	6822      	ldr	r2, [r4, #0]
c0de2306:	f1ab 0001 	sub.w	r0, fp, #1
c0de230a:	4633      	mov	r3, r6
c0de230c:	fb02 5100 	mla	r1, r2, r0, r5
c0de2310:	fb02 520b 	mla	r2, r2, fp, r5
c0de2314:	4620      	mov	r0, r4
c0de2316:	f000 fb39 	bl	c0de298c <tEdwards_init>
c0de231a:	2800      	cmp	r0, #0
c0de231c:	d1d0      	bne.n	c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de231e:	6823      	ldr	r3, [r4, #0]
c0de2320:	4650      	mov	r0, sl
c0de2322:	f10d 0a08 	add.w	sl, sp, #8
c0de2326:	4631      	mov	r1, r6
c0de2328:	4605      	mov	r5, r0
c0de232a:	f8cd a000 	str.w	sl, [sp]
c0de232e:	fb03 0208 	mla	r2, r3, r8, r0
c0de2332:	4620      	mov	r0, r4
c0de2334:	f000 fcb0 	bl	c0de2c98 <tEdwards_scalarMul>
c0de2338:	2800      	cmp	r0, #0
c0de233a:	d1c1      	bne.n	c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de233c:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de233e:	4620      	mov	r0, r4
c0de2340:	4652      	mov	r2, sl
c0de2342:	460b      	mov	r3, r1
c0de2344:	f000 f943 	bl	c0de25ce <tEdwards_add>
c0de2348:	46aa      	mov	sl, r5
c0de234a:	9d01      	ldr	r5, [sp, #4]
c0de234c:	f10b 0b05 	add.w	fp, fp, #5
c0de2350:	f108 0801 	add.w	r8, r8, #1
c0de2354:	2800      	cmp	r0, #0
c0de2356:	d0bc      	beq.n	c0de22d2 <zkn_compute_group_commitment+0x3c>
c0de2358:	e7b2      	b.n	c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de235a:	a905      	add	r1, sp, #20
c0de235c:	f000 f8a0 	bl	c0de24a0 <OUTLINED_FUNCTION_3>
c0de2360:	2800      	cmp	r0, #0
c0de2362:	d1ad      	bne.n	c0de22c0 <zkn_compute_group_commitment+0x2a>
c0de2364:	a902      	add	r1, sp, #8
c0de2366:	f000 f89b 	bl	c0de24a0 <OUTLINED_FUNCTION_3>
c0de236a:	e7a9      	b.n	c0de22c0 <zkn_compute_group_commitment+0x2a>

c0de236c <zkn_compute_binding_factors>:
c0de236c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2370:	b0f4      	sub	sp, #464	@ 0x1d0
c0de2372:	460e      	mov	r6, r1
c0de2374:	6801      	ldr	r1, [r0, #0]
c0de2376:	4607      	mov	r7, r0
c0de2378:	a873      	add	r0, sp, #460	@ 0x1cc
c0de237a:	f000 f88d 	bl	c0de2498 <OUTLINED_FUNCTION_2>
c0de237e:	b9f0      	cbnz	r0, c0de23be <zkn_compute_binding_factors+0x52>
c0de2380:	6839      	ldr	r1, [r7, #0]
c0de2382:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2384:	f004 ff00 	bl	c0de7188 <cx_bn_alloc>
c0de2388:	b9c8      	cbnz	r0, c0de23be <zkn_compute_binding_factors+0x52>
c0de238a:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de238e:	68ba      	ldr	r2, [r7, #8]
c0de2390:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de2392:	f000 ff4b 	bl	c0de322c <Babyfrost_H4>
c0de2396:	b990      	cbnz	r0, c0de23be <zkn_compute_binding_factors+0x52>
c0de2398:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de239a:	4638      	mov	r0, r7
c0de239c:	4629      	mov	r1, r5
c0de239e:	4622      	mov	r2, r4
c0de23a0:	f7ff fefc 	bl	c0de219c <zkn_encode_group_commitmentHash>
c0de23a4:	b958      	cbnz	r0, c0de23be <zkn_compute_binding_factors+0x52>
c0de23a6:	683a      	ldr	r2, [r7, #0]
c0de23a8:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de23aa:	a912      	add	r1, sp, #72	@ 0x48
c0de23ac:	f004 ff36 	bl	c0de721c <cx_bn_export>
c0de23b0:	b928      	cbnz	r0, c0de23be <zkn_compute_binding_factors+0x52>
c0de23b2:	683a      	ldr	r2, [r7, #0]
c0de23b4:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de23b6:	a902      	add	r1, sp, #8
c0de23b8:	f004 ff30 	bl	c0de721c <cx_bn_export>
c0de23bc:	b110      	cbz	r0, c0de23c4 <zkn_compute_binding_factors+0x58>
c0de23be:	b074      	add	sp, #464	@ 0x1d0
c0de23c0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de23c4:	2000      	movs	r0, #0
c0de23c6:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de23ca:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de23ce:	f04f 0800 	mov.w	r8, #0
c0de23d2:	9000      	str	r0, [sp, #0]
c0de23d4:	4544      	cmp	r4, r8
c0de23d6:	d043      	beq.n	c0de2460 <zkn_compute_binding_factors+0xf4>
c0de23d8:	6839      	ldr	r1, [r7, #0]
c0de23da:	a801      	add	r0, sp, #4
c0de23dc:	f004 fed4 	bl	c0de7188 <cx_bn_alloc>
c0de23e0:	2800      	cmp	r0, #0
c0de23e2:	d1ec      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de23e4:	4650      	mov	r0, sl
c0de23e6:	f000 ff53 	bl	c0de3290 <zkn_frost_H1_init>
c0de23ea:	2800      	cmp	r0, #0
c0de23ec:	d1e7      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de23ee:	6839      	ldr	r1, [r7, #0]
c0de23f0:	4630      	mov	r0, r6
c0de23f2:	465a      	mov	r2, fp
c0de23f4:	f000 f845 	bl	c0de2482 <OUTLINED_FUNCTION_0>
c0de23f8:	2800      	cmp	r0, #0
c0de23fa:	d1e0      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de23fc:	6839      	ldr	r1, [r7, #0]
c0de23fe:	a812      	add	r0, sp, #72	@ 0x48
c0de2400:	465a      	mov	r2, fp
c0de2402:	f000 f83e 	bl	c0de2482 <OUTLINED_FUNCTION_0>
c0de2406:	2800      	cmp	r0, #0
c0de2408:	d1d9      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de240a:	6839      	ldr	r1, [r7, #0]
c0de240c:	a802      	add	r0, sp, #8
c0de240e:	465a      	mov	r2, fp
c0de2410:	f000 f837 	bl	c0de2482 <OUTLINED_FUNCTION_0>
c0de2414:	2800      	cmp	r0, #0
c0de2416:	d1d2      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de2418:	6839      	ldr	r1, [r7, #0]
c0de241a:	9800      	ldr	r0, [sp, #0]
c0de241c:	465a      	mov	r2, fp
c0de241e:	fb00 5001 	mla	r0, r0, r1, r5
c0de2422:	f000 f82e 	bl	c0de2482 <OUTLINED_FUNCTION_0>
c0de2426:	2800      	cmp	r0, #0
c0de2428:	d1c9      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de242a:	68b9      	ldr	r1, [r7, #8]
c0de242c:	9a01      	ldr	r2, [sp, #4]
c0de242e:	4650      	mov	r0, sl
c0de2430:	f000 ff64 	bl	c0de32fc <zkn_frost_hash_final>
c0de2434:	2800      	cmp	r0, #0
c0de2436:	d1c2      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de2438:	683a      	ldr	r2, [r7, #0]
c0de243a:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de243c:	fb02 0108 	mla	r1, r2, r8, r0
c0de2440:	9801      	ldr	r0, [sp, #4]
c0de2442:	f004 feeb 	bl	c0de721c <cx_bn_export>
c0de2446:	2800      	cmp	r0, #0
c0de2448:	d1b9      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de244a:	a801      	add	r0, sp, #4
c0de244c:	f004 feb2 	bl	c0de71b4 <cx_bn_destroy>
c0de2450:	2800      	cmp	r0, #0
c0de2452:	d1b4      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de2454:	9800      	ldr	r0, [sp, #0]
c0de2456:	f108 0801 	add.w	r8, r8, #1
c0de245a:	3005      	adds	r0, #5
c0de245c:	9000      	str	r0, [sp, #0]
c0de245e:	e7b9      	b.n	c0de23d4 <zkn_compute_binding_factors+0x68>
c0de2460:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2462:	f004 fea7 	bl	c0de71b4 <cx_bn_destroy>
c0de2466:	2800      	cmp	r0, #0
c0de2468:	d1a9      	bne.n	c0de23be <zkn_compute_binding_factors+0x52>
c0de246a:	a872      	add	r0, sp, #456	@ 0x1c8
c0de246c:	f004 fea2 	bl	c0de71b4 <cx_bn_destroy>
c0de2470:	e7a5      	b.n	c0de23be <zkn_compute_binding_factors+0x52>

c0de2472 <zkn_serialize_scalar_for_hash>:
c0de2472:	3a01      	subs	r2, #1
c0de2474:	b121      	cbz	r1, c0de2480 <zkn_serialize_scalar_for_hash+0xe>
c0de2476:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de247a:	5453      	strb	r3, [r2, r1]
c0de247c:	3901      	subs	r1, #1
c0de247e:	e7f9      	b.n	c0de2474 <zkn_serialize_scalar_for_hash+0x2>
c0de2480:	4770      	bx	lr

c0de2482 <OUTLINED_FUNCTION_0>:
c0de2482:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2486:	f7ff fff4 	bl	c0de2472 <zkn_serialize_scalar_for_hash>
c0de248a:	683a      	ldr	r2, [r7, #0]
c0de248c:	4650      	mov	r0, sl
c0de248e:	4659      	mov	r1, fp
c0de2490:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2494:	f000 bf30 	b.w	c0de32f8 <zkn_frost_hash_update>

c0de2498 <OUTLINED_FUNCTION_2>:
c0de2498:	461c      	mov	r4, r3
c0de249a:	4615      	mov	r5, r2
c0de249c:	f004 be74 	b.w	c0de7188 <cx_bn_alloc>

c0de24a0 <OUTLINED_FUNCTION_3>:
c0de24a0:	4620      	mov	r0, r4
c0de24a2:	f000 b818 	b.w	c0de24d6 <tEdwards_destroy>

c0de24a6 <OUTLINED_FUNCTION_4>:
c0de24a6:	2120      	movs	r1, #32
c0de24a8:	f004 be6e 	b.w	c0de7188 <cx_bn_alloc>

c0de24ac <tEdwards_alloc>:
c0de24ac:	b5b0      	push	{r4, r5, r7, lr}
c0de24ae:	460d      	mov	r5, r1
c0de24b0:	6801      	ldr	r1, [r0, #0]
c0de24b2:	4604      	mov	r4, r0
c0de24b4:	4628      	mov	r0, r5
c0de24b6:	f004 fe67 	bl	c0de7188 <cx_bn_alloc>
c0de24ba:	b920      	cbnz	r0, c0de24c6 <tEdwards_alloc+0x1a>
c0de24bc:	6821      	ldr	r1, [r4, #0]
c0de24be:	1d28      	adds	r0, r5, #4
c0de24c0:	f004 fe62 	bl	c0de7188 <cx_bn_alloc>
c0de24c4:	b100      	cbz	r0, c0de24c8 <tEdwards_alloc+0x1c>
c0de24c6:	bdb0      	pop	{r4, r5, r7, pc}
c0de24c8:	6821      	ldr	r1, [r4, #0]
c0de24ca:	f105 0008 	add.w	r0, r5, #8
c0de24ce:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de24d2:	f004 be59 	b.w	c0de7188 <cx_bn_alloc>

c0de24d6 <tEdwards_destroy>:
c0de24d6:	b510      	push	{r4, lr}
c0de24d8:	4608      	mov	r0, r1
c0de24da:	460c      	mov	r4, r1
c0de24dc:	f004 fe6a 	bl	c0de71b4 <cx_bn_destroy>
c0de24e0:	b918      	cbnz	r0, c0de24ea <tEdwards_destroy+0x14>
c0de24e2:	1d20      	adds	r0, r4, #4
c0de24e4:	f004 fe66 	bl	c0de71b4 <cx_bn_destroy>
c0de24e8:	b100      	cbz	r0, c0de24ec <tEdwards_destroy+0x16>
c0de24ea:	bd10      	pop	{r4, pc}
c0de24ec:	f104 0008 	add.w	r0, r4, #8
c0de24f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de24f4:	f004 be5e 	b.w	c0de71b4 <cx_bn_destroy>

c0de24f8 <tEdwards_double>:
c0de24f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de24fa:	460f      	mov	r7, r1
c0de24fc:	4614      	mov	r4, r2
c0de24fe:	4605      	mov	r5, r0
c0de2500:	6843      	ldr	r3, [r0, #4]
c0de2502:	6809      	ldr	r1, [r1, #0]
c0de2504:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2506:	687a      	ldr	r2, [r7, #4]
c0de2508:	f004 feb8 	bl	c0de727c <cx_bn_mod_add>
c0de250c:	2800      	cmp	r0, #0
c0de250e:	d154      	bne.n	c0de25ba <tEdwards_double+0xc2>
c0de2510:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2514:	f105 0620 	add.w	r6, r5, #32
c0de2518:	f000 fbe4 	bl	c0de2ce4 <OUTLINED_FUNCTION_2>
c0de251c:	2800      	cmp	r0, #0
c0de251e:	d14c      	bne.n	c0de25ba <tEdwards_double+0xc2>
c0de2520:	6839      	ldr	r1, [r7, #0]
c0de2522:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2524:	f000 fbde 	bl	c0de2ce4 <OUTLINED_FUNCTION_2>
c0de2528:	2800      	cmp	r0, #0
c0de252a:	d146      	bne.n	c0de25ba <tEdwards_double+0xc2>
c0de252c:	6879      	ldr	r1, [r7, #4]
c0de252e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2530:	f000 fbd8 	bl	c0de2ce4 <OUTLINED_FUNCTION_2>
c0de2534:	2800      	cmp	r0, #0
c0de2536:	d140      	bne.n	c0de25ba <tEdwards_double+0xc2>
c0de2538:	69a9      	ldr	r1, [r5, #24]
c0de253a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de253c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de253e:	f000 fbcb 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2542:	bbd0      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de2544:	686b      	ldr	r3, [r5, #4]
c0de2546:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de254a:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de254c:	f004 fe96 	bl	c0de727c <cx_bn_mod_add>
c0de2550:	bb98      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de2552:	68b9      	ldr	r1, [r7, #8]
c0de2554:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2556:	f000 fbc5 	bl	c0de2ce4 <OUTLINED_FUNCTION_2>
c0de255a:	bb70      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de255c:	686b      	ldr	r3, [r5, #4]
c0de255e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2560:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2562:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2564:	f004 fe96 	bl	c0de7294 <cx_bn_mod_sub>
c0de2568:	bb38      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de256a:	686b      	ldr	r3, [r5, #4]
c0de256c:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de256e:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2572:	f004 fe8f 	bl	c0de7294 <cx_bn_mod_sub>
c0de2576:	bb00      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de2578:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de257c:	686b      	ldr	r3, [r5, #4]
c0de257e:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2580:	f004 fe88 	bl	c0de7294 <cx_bn_mod_sub>
c0de2584:	b9c8      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de2586:	686b      	ldr	r3, [r5, #4]
c0de2588:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de258c:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de258e:	f004 fe81 	bl	c0de7294 <cx_bn_mod_sub>
c0de2592:	b990      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de2594:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2596:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2598:	6820      	ldr	r0, [r4, #0]
c0de259a:	f000 fb9d 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de259e:	b960      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de25a0:	686b      	ldr	r3, [r5, #4]
c0de25a2:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de25a6:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de25a8:	f004 fe74 	bl	c0de7294 <cx_bn_mod_sub>
c0de25ac:	b928      	cbnz	r0, c0de25ba <tEdwards_double+0xc2>
c0de25ae:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de25b0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de25b2:	6860      	ldr	r0, [r4, #4]
c0de25b4:	f000 fb90 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de25b8:	b100      	cbz	r0, c0de25bc <tEdwards_double+0xc4>
c0de25ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de25bc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de25be:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de25c0:	68a0      	ldr	r0, [r4, #8]
c0de25c2:	4633      	mov	r3, r6
c0de25c4:	b001      	add	sp, #4
c0de25c6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de25ca:	f004 bec9 	b.w	c0de7360 <cx_mont_mul>

c0de25ce <tEdwards_add>:
c0de25ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de25d2:	4606      	mov	r6, r0
c0de25d4:	4617      	mov	r7, r2
c0de25d6:	460c      	mov	r4, r1
c0de25d8:	6892      	ldr	r2, [r2, #8]
c0de25da:	6889      	ldr	r1, [r1, #8]
c0de25dc:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de25de:	4698      	mov	r8, r3
c0de25e0:	f106 0520 	add.w	r5, r6, #32
c0de25e4:	f000 fb7b 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de25e8:	2800      	cmp	r0, #0
c0de25ea:	d17d      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de25ec:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de25f0:	462b      	mov	r3, r5
c0de25f2:	460a      	mov	r2, r1
c0de25f4:	f004 feb4 	bl	c0de7360 <cx_mont_mul>
c0de25f8:	2800      	cmp	r0, #0
c0de25fa:	d175      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de25fc:	683a      	ldr	r2, [r7, #0]
c0de25fe:	6821      	ldr	r1, [r4, #0]
c0de2600:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2602:	f000 fb6c 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de2606:	2800      	cmp	r0, #0
c0de2608:	d16e      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de260a:	687a      	ldr	r2, [r7, #4]
c0de260c:	6861      	ldr	r1, [r4, #4]
c0de260e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2610:	f000 fb65 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de2614:	2800      	cmp	r0, #0
c0de2616:	d167      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de2618:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de261c:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de261e:	f000 fb5e 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de2622:	2800      	cmp	r0, #0
c0de2624:	d160      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de2626:	69f2      	ldr	r2, [r6, #28]
c0de2628:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de262a:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de262c:	f000 fb57 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de2630:	2800      	cmp	r0, #0
c0de2632:	d159      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de2634:	6873      	ldr	r3, [r6, #4]
c0de2636:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2638:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de263c:	f004 fe2a 	bl	c0de7294 <cx_bn_mod_sub>
c0de2640:	2800      	cmp	r0, #0
c0de2642:	d151      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de2644:	6873      	ldr	r3, [r6, #4]
c0de2646:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2648:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de264a:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de264c:	f004 fe16 	bl	c0de727c <cx_bn_mod_add>
c0de2650:	2800      	cmp	r0, #0
c0de2652:	d149      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de2654:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2658:	6873      	ldr	r3, [r6, #4]
c0de265a:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de265c:	f004 fe0e 	bl	c0de727c <cx_bn_mod_add>
c0de2660:	2800      	cmp	r0, #0
c0de2662:	d141      	bne.n	c0de26e8 <tEdwards_add+0x11a>
c0de2664:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2668:	6873      	ldr	r3, [r6, #4]
c0de266a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de266c:	f004 fe06 	bl	c0de727c <cx_bn_mod_add>
c0de2670:	bbd0      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de2672:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2674:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2678:	f000 fb31 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de267c:	bba0      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de267e:	6873      	ldr	r3, [r6, #4]
c0de2680:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2684:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2686:	f004 fe05 	bl	c0de7294 <cx_bn_mod_sub>
c0de268a:	bb68      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de268c:	6873      	ldr	r3, [r6, #4]
c0de268e:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2690:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2694:	f004 fdfe 	bl	c0de7294 <cx_bn_mod_sub>
c0de2698:	bb30      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de269a:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de269e:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de26a0:	f000 fb1d 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de26a4:	bb00      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de26a6:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de26a8:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de26aa:	f8d8 0000 	ldr.w	r0, [r8]
c0de26ae:	f000 fb16 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de26b2:	b9c8      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de26b4:	69b1      	ldr	r1, [r6, #24]
c0de26b6:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de26ba:	f000 fb10 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de26be:	b998      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de26c0:	6873      	ldr	r3, [r6, #4]
c0de26c2:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de26c4:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de26c6:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de26c8:	f004 fde4 	bl	c0de7294 <cx_bn_mod_sub>
c0de26cc:	b960      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de26ce:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de26d0:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de26d2:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de26d4:	f000 fb03 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de26d8:	b930      	cbnz	r0, c0de26e8 <tEdwards_add+0x11a>
c0de26da:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de26de:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de26e2:	f000 fafc 	bl	c0de2cde <OUTLINED_FUNCTION_1>
c0de26e6:	b108      	cbz	r0, c0de26ec <tEdwards_add+0x11e>
c0de26e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de26ec:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de26f0:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de26f4:	462b      	mov	r3, r5
c0de26f6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de26fa:	f004 be31 	b.w	c0de7360 <cx_mont_mul>

c0de26fe <tEdwards_IsOnCurve>:
c0de26fe:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2700:	4605      	mov	r5, r0
c0de2702:	460f      	mov	r7, r1
c0de2704:	2005      	movs	r0, #5
c0de2706:	6809      	ldr	r1, [r1, #0]
c0de2708:	4614      	mov	r4, r2
c0de270a:	9000      	str	r0, [sp, #0]
c0de270c:	f105 0620 	add.w	r6, r5, #32
c0de2710:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2712:	460a      	mov	r2, r1
c0de2714:	f000 fae0 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2718:	b100      	cbz	r0, c0de271c <tEdwards_IsOnCurve+0x1e>
c0de271a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de271c:	6879      	ldr	r1, [r7, #4]
c0de271e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2720:	f000 fae0 	bl	c0de2ce4 <OUTLINED_FUNCTION_2>
c0de2724:	2800      	cmp	r0, #0
c0de2726:	d1f8      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2728:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de272c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de272e:	f000 fad3 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2732:	2800      	cmp	r0, #0
c0de2734:	d1f1      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2736:	69a9      	ldr	r1, [r5, #24]
c0de2738:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de273a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de273c:	f000 facc 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2740:	2800      	cmp	r0, #0
c0de2742:	d1ea      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2744:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2746:	686b      	ldr	r3, [r5, #4]
c0de2748:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de274a:	4601      	mov	r1, r0
c0de274c:	f004 fd96 	bl	c0de727c <cx_bn_mod_add>
c0de2750:	2800      	cmp	r0, #0
c0de2752:	d1e2      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2754:	69e9      	ldr	r1, [r5, #28]
c0de2756:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2758:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de275a:	f000 fabd 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de275e:	2800      	cmp	r0, #0
c0de2760:	d1db      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2762:	686b      	ldr	r3, [r5, #4]
c0de2764:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2766:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2768:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de276a:	f004 fd87 	bl	c0de727c <cx_bn_mod_add>
c0de276e:	2800      	cmp	r0, #0
c0de2770:	d1d3      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2772:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2774:	4632      	mov	r2, r6
c0de2776:	4601      	mov	r1, r0
c0de2778:	f004 fde6 	bl	c0de7348 <cx_mont_from_montgomery>
c0de277c:	2800      	cmp	r0, #0
c0de277e:	d1cc      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de2780:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2782:	4632      	mov	r2, r6
c0de2784:	4601      	mov	r1, r0
c0de2786:	f004 fddf 	bl	c0de7348 <cx_mont_from_montgomery>
c0de278a:	2800      	cmp	r0, #0
c0de278c:	d1c5      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de278e:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2792:	466a      	mov	r2, sp
c0de2794:	f004 fd4e 	bl	c0de7234 <cx_bn_cmp>
c0de2798:	2800      	cmp	r0, #0
c0de279a:	d1be      	bne.n	c0de271a <tEdwards_IsOnCurve+0x1c>
c0de279c:	9800      	ldr	r0, [sp, #0]
c0de279e:	fab0 f080 	clz	r0, r0
c0de27a2:	0940      	lsrs	r0, r0, #5
c0de27a4:	7020      	strb	r0, [r4, #0]
c0de27a6:	2000      	movs	r0, #0
c0de27a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de27ac <tEdwards_Curve_alloc_init>:
c0de27ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de27b0:	b0d2      	sub	sp, #328	@ 0x148
c0de27b2:	4604      	mov	r4, r0
c0de27b4:	2902      	cmp	r1, #2
c0de27b6:	d022      	beq.n	c0de27fe <tEdwards_Curve_alloc_init+0x52>
c0de27b8:	2901      	cmp	r1, #1
c0de27ba:	f040 80cd 	bne.w	c0de2958 <tEdwards_Curve_alloc_init+0x1ac>
c0de27be:	2020      	movs	r0, #32
c0de27c0:	2220      	movs	r2, #32
c0de27c2:	6020      	str	r0, [r4, #0]
c0de27c4:	af4a      	add	r7, sp, #296	@ 0x128
c0de27c6:	4967      	ldr	r1, [pc, #412]	@ (c0de2964 <tEdwards_Curve_alloc_init+0x1b8>)
c0de27c8:	4638      	mov	r0, r7
c0de27ca:	4479      	add	r1, pc
c0de27cc:	f004 ff92 	bl	c0de76f4 <__aeabi_memcpy>
c0de27d0:	ae42      	add	r6, sp, #264	@ 0x108
c0de27d2:	4965      	ldr	r1, [pc, #404]	@ (c0de2968 <tEdwards_Curve_alloc_init+0x1bc>)
c0de27d4:	2220      	movs	r2, #32
c0de27d6:	4630      	mov	r0, r6
c0de27d8:	4479      	add	r1, pc
c0de27da:	f004 ff8b 	bl	c0de76f4 <__aeabi_memcpy>
c0de27de:	4963      	ldr	r1, [pc, #396]	@ (c0de296c <tEdwards_Curve_alloc_init+0x1c0>)
c0de27e0:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de27e4:	2220      	movs	r2, #32
c0de27e6:	4650      	mov	r0, sl
c0de27e8:	4479      	add	r1, pc
c0de27ea:	f004 ff83 	bl	c0de76f4 <__aeabi_memcpy>
c0de27ee:	ad32      	add	r5, sp, #200	@ 0xc8
c0de27f0:	495f      	ldr	r1, [pc, #380]	@ (c0de2970 <tEdwards_Curve_alloc_init+0x1c4>)
c0de27f2:	2220      	movs	r2, #32
c0de27f4:	4628      	mov	r0, r5
c0de27f6:	4479      	add	r1, pc
c0de27f8:	f004 ff7c 	bl	c0de76f4 <__aeabi_memcpy>
c0de27fc:	e02d      	b.n	c0de285a <tEdwards_Curve_alloc_init+0xae>
c0de27fe:	2020      	movs	r0, #32
c0de2800:	2220      	movs	r2, #32
c0de2802:	6020      	str	r0, [r4, #0]
c0de2804:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2806:	495b      	ldr	r1, [pc, #364]	@ (c0de2974 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2808:	4638      	mov	r0, r7
c0de280a:	4479      	add	r1, pc
c0de280c:	f004 ff72 	bl	c0de76f4 <__aeabi_memcpy>
c0de2810:	ae22      	add	r6, sp, #136	@ 0x88
c0de2812:	4959      	ldr	r1, [pc, #356]	@ (c0de2978 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2814:	2220      	movs	r2, #32
c0de2816:	4630      	mov	r0, r6
c0de2818:	4479      	add	r1, pc
c0de281a:	f004 ff6b 	bl	c0de76f4 <__aeabi_memcpy>
c0de281e:	4957      	ldr	r1, [pc, #348]	@ (c0de297c <tEdwards_Curve_alloc_init+0x1d0>)
c0de2820:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2824:	2220      	movs	r2, #32
c0de2826:	4650      	mov	r0, sl
c0de2828:	4479      	add	r1, pc
c0de282a:	f004 ff63 	bl	c0de76f4 <__aeabi_memcpy>
c0de282e:	a812      	add	r0, sp, #72	@ 0x48
c0de2830:	4953      	ldr	r1, [pc, #332]	@ (c0de2980 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2832:	2220      	movs	r2, #32
c0de2834:	9001      	str	r0, [sp, #4]
c0de2836:	4479      	add	r1, pc
c0de2838:	f004 ff5c 	bl	c0de76f4 <__aeabi_memcpy>
c0de283c:	4951      	ldr	r1, [pc, #324]	@ (c0de2984 <tEdwards_Curve_alloc_init+0x1d8>)
c0de283e:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2842:	2220      	movs	r2, #32
c0de2844:	4658      	mov	r0, fp
c0de2846:	4479      	add	r1, pc
c0de2848:	f004 ff54 	bl	c0de76f4 <__aeabi_memcpy>
c0de284c:	ad02      	add	r5, sp, #8
c0de284e:	494e      	ldr	r1, [pc, #312]	@ (c0de2988 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2850:	2220      	movs	r2, #32
c0de2852:	4628      	mov	r0, r5
c0de2854:	4479      	add	r1, pc
c0de2856:	f004 ff4d 	bl	c0de76f4 <__aeabi_memcpy>
c0de285a:	f104 0804 	add.w	r8, r4, #4
c0de285e:	2120      	movs	r1, #32
c0de2860:	463a      	mov	r2, r7
c0de2862:	2320      	movs	r3, #32
c0de2864:	4640      	mov	r0, r8
c0de2866:	f004 fc99 	bl	c0de719c <cx_bn_alloc_init>
c0de286a:	2800      	cmp	r0, #0
c0de286c:	d175      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de286e:	4620      	mov	r0, r4
c0de2870:	462a      	mov	r2, r5
c0de2872:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2876:	460b      	mov	r3, r1
c0de2878:	f004 fc90 	bl	c0de719c <cx_bn_alloc_init>
c0de287c:	2800      	cmp	r0, #0
c0de287e:	d16c      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2880:	f104 0520 	add.w	r5, r4, #32
c0de2884:	2120      	movs	r1, #32
c0de2886:	4628      	mov	r0, r5
c0de2888:	f004 fd3e 	bl	c0de7308 <cx_mont_alloc>
c0de288c:	2800      	cmp	r0, #0
c0de288e:	d164      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2890:	f8d8 1000 	ldr.w	r1, [r8]
c0de2894:	4628      	mov	r0, r5
c0de2896:	f004 fd41 	bl	c0de731c <cx_mont_init>
c0de289a:	2800      	cmp	r0, #0
c0de289c:	d15d      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de289e:	4627      	mov	r7, r4
c0de28a0:	f857 1b28 	ldr.w	r1, [r7], #40
c0de28a4:	4638      	mov	r0, r7
c0de28a6:	f004 fc6f 	bl	c0de7188 <cx_bn_alloc>
c0de28aa:	2800      	cmp	r0, #0
c0de28ac:	d155      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28ae:	6838      	ldr	r0, [r7, #0]
c0de28b0:	2101      	movs	r1, #1
c0de28b2:	f004 fca9 	bl	c0de7208 <cx_bn_set_u32>
c0de28b6:	2800      	cmp	r0, #0
c0de28b8:	d14f      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28ba:	6838      	ldr	r0, [r7, #0]
c0de28bc:	f000 fa16 	bl	c0de2cec <OUTLINED_FUNCTION_3>
c0de28c0:	2800      	cmp	r0, #0
c0de28c2:	d14a      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28c4:	f104 070c 	add.w	r7, r4, #12
c0de28c8:	4620      	mov	r0, r4
c0de28ca:	4639      	mov	r1, r7
c0de28cc:	f7ff fdee 	bl	c0de24ac <tEdwards_alloc>
c0de28d0:	2800      	cmp	r0, #0
c0de28d2:	d142      	bne.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28d4:	9901      	ldr	r1, [sp, #4]
c0de28d6:	4620      	mov	r0, r4
c0de28d8:	465a      	mov	r2, fp
c0de28da:	463b      	mov	r3, r7
c0de28dc:	f000 f856 	bl	c0de298c <tEdwards_init>
c0de28e0:	bbd8      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28e2:	4627      	mov	r7, r4
c0de28e4:	4632      	mov	r2, r6
c0de28e6:	f857 1b18 	ldr.w	r1, [r7], #24
c0de28ea:	4638      	mov	r0, r7
c0de28ec:	460b      	mov	r3, r1
c0de28ee:	f004 fc55 	bl	c0de719c <cx_bn_alloc_init>
c0de28f2:	bb90      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28f4:	6838      	ldr	r0, [r7, #0]
c0de28f6:	f000 f9f9 	bl	c0de2cec <OUTLINED_FUNCTION_3>
c0de28fa:	bb70      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de28fc:	4626      	mov	r6, r4
c0de28fe:	4652      	mov	r2, sl
c0de2900:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2904:	4630      	mov	r0, r6
c0de2906:	460b      	mov	r3, r1
c0de2908:	f004 fc48 	bl	c0de719c <cx_bn_alloc_init>
c0de290c:	bb28      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de290e:	6830      	ldr	r0, [r6, #0]
c0de2910:	f000 f9ec 	bl	c0de2cec <OUTLINED_FUNCTION_3>
c0de2914:	bb08      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2916:	4620      	mov	r0, r4
c0de2918:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de291c:	f004 fc34 	bl	c0de7188 <cx_bn_alloc>
c0de2920:	b9d8      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2922:	f000 f9fb 	bl	c0de2d1c <OUTLINED_FUNCTION_8>
c0de2926:	b9c0      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2928:	f000 f9e4 	bl	c0de2cf4 <OUTLINED_FUNCTION_4>
c0de292c:	b9a8      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de292e:	f000 f9f0 	bl	c0de2d12 <OUTLINED_FUNCTION_7>
c0de2932:	b990      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2934:	f000 f9fc 	bl	c0de2d30 <OUTLINED_FUNCTION_10>
c0de2938:	b978      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de293a:	f000 f9e5 	bl	c0de2d08 <OUTLINED_FUNCTION_6>
c0de293e:	b960      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2940:	f000 f9f1 	bl	c0de2d26 <OUTLINED_FUNCTION_9>
c0de2944:	b948      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2946:	f000 f9da 	bl	c0de2cfe <OUTLINED_FUNCTION_5>
c0de294a:	b930      	cbnz	r0, c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de294c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2950:	4620      	mov	r0, r4
c0de2952:	f004 fc19 	bl	c0de7188 <cx_bn_alloc>
c0de2956:	e000      	b.n	c0de295a <tEdwards_Curve_alloc_init+0x1ae>
c0de2958:	4801      	ldr	r0, [pc, #4]	@ (c0de2960 <tEdwards_Curve_alloc_init+0x1b4>)
c0de295a:	b052      	add	sp, #328	@ 0x148
c0de295c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2960:	5a4b4e01 	.word	0x5a4b4e01
c0de2964:	00005562 	.word	0x00005562
c0de2968:	000056f4 	.word	0x000056f4
c0de296c:	000056a4 	.word	0x000056a4
c0de2970:	000055f6 	.word	0x000055f6
c0de2974:	00005702 	.word	0x00005702
c0de2978:	00005654 	.word	0x00005654
c0de297c:	000056c4 	.word	0x000056c4
c0de2980:	000056f6 	.word	0x000056f6
c0de2984:	00005706 	.word	0x00005706
c0de2988:	000055b8 	.word	0x000055b8

c0de298c <tEdwards_init>:
c0de298c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de298e:	6806      	ldr	r6, [r0, #0]
c0de2990:	461c      	mov	r4, r3
c0de2992:	4617      	mov	r7, r2
c0de2994:	460a      	mov	r2, r1
c0de2996:	4605      	mov	r5, r0
c0de2998:	a802      	add	r0, sp, #8
c0de299a:	4631      	mov	r1, r6
c0de299c:	4633      	mov	r3, r6
c0de299e:	f004 fbfd 	bl	c0de719c <cx_bn_alloc_init>
c0de29a2:	b100      	cbz	r0, c0de29a6 <tEdwards_init+0x1a>
c0de29a4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de29a6:	a801      	add	r0, sp, #4
c0de29a8:	4631      	mov	r1, r6
c0de29aa:	463a      	mov	r2, r7
c0de29ac:	4633      	mov	r3, r6
c0de29ae:	f004 fbf5 	bl	c0de719c <cx_bn_alloc_init>
c0de29b2:	2800      	cmp	r0, #0
c0de29b4:	d1f6      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de29b6:	4668      	mov	r0, sp
c0de29b8:	4631      	mov	r1, r6
c0de29ba:	f004 fbe5 	bl	c0de7188 <cx_bn_alloc>
c0de29be:	2800      	cmp	r0, #0
c0de29c0:	d1f0      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de29c2:	f105 0620 	add.w	r6, r5, #32
c0de29c6:	6820      	ldr	r0, [r4, #0]
c0de29c8:	9902      	ldr	r1, [sp, #8]
c0de29ca:	4632      	mov	r2, r6
c0de29cc:	f004 fcb0 	bl	c0de7330 <cx_mont_to_montgomery>
c0de29d0:	2800      	cmp	r0, #0
c0de29d2:	d1e7      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de29d4:	6860      	ldr	r0, [r4, #4]
c0de29d6:	9901      	ldr	r1, [sp, #4]
c0de29d8:	4632      	mov	r2, r6
c0de29da:	f004 fca9 	bl	c0de7330 <cx_mont_to_montgomery>
c0de29de:	2800      	cmp	r0, #0
c0de29e0:	d1e0      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de29e2:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de29e4:	68a0      	ldr	r0, [r4, #8]
c0de29e6:	f004 fc05 	bl	c0de71f4 <cx_bn_copy>
c0de29ea:	2800      	cmp	r0, #0
c0de29ec:	d1da      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de29ee:	a802      	add	r0, sp, #8
c0de29f0:	f004 fbe0 	bl	c0de71b4 <cx_bn_destroy>
c0de29f4:	2800      	cmp	r0, #0
c0de29f6:	d1d5      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de29f8:	a801      	add	r0, sp, #4
c0de29fa:	f004 fbdb 	bl	c0de71b4 <cx_bn_destroy>
c0de29fe:	2800      	cmp	r0, #0
c0de2a00:	d1d0      	bne.n	c0de29a4 <tEdwards_init+0x18>
c0de2a02:	4668      	mov	r0, sp
c0de2a04:	f004 fbd6 	bl	c0de71b4 <cx_bn_destroy>
c0de2a08:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2a0a <tEdwards_Curve_partial_destroy>:
c0de2a0a:	b510      	push	{r4, lr}
c0de2a0c:	4604      	mov	r4, r0
c0de2a0e:	302c      	adds	r0, #44	@ 0x2c
c0de2a10:	f004 fbd0 	bl	c0de71b4 <cx_bn_destroy>
c0de2a14:	bbd8      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a16:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2a1a:	f004 fbcb 	bl	c0de71b4 <cx_bn_destroy>
c0de2a1e:	bbb0      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a20:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2a24:	f004 fbc6 	bl	c0de71b4 <cx_bn_destroy>
c0de2a28:	bb88      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a2a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2a2e:	f004 fbc1 	bl	c0de71b4 <cx_bn_destroy>
c0de2a32:	bb60      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a34:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2a38:	f004 fbbc 	bl	c0de71b4 <cx_bn_destroy>
c0de2a3c:	bb38      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a3e:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2a42:	f004 fbb7 	bl	c0de71b4 <cx_bn_destroy>
c0de2a46:	bb10      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a48:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2a4c:	f004 fbb2 	bl	c0de71b4 <cx_bn_destroy>
c0de2a50:	b9e8      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a52:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2a56:	f004 fbad 	bl	c0de71b4 <cx_bn_destroy>
c0de2a5a:	b9c0      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a5c:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2a60:	f004 fba8 	bl	c0de71b4 <cx_bn_destroy>
c0de2a64:	b998      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a66:	f104 010c 	add.w	r1, r4, #12
c0de2a6a:	f7ff fd34 	bl	c0de24d6 <tEdwards_destroy>
c0de2a6e:	b970      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a70:	f104 0018 	add.w	r0, r4, #24
c0de2a74:	f004 fb9e 	bl	c0de71b4 <cx_bn_destroy>
c0de2a78:	b948      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a7a:	f104 001c 	add.w	r0, r4, #28
c0de2a7e:	f004 fb99 	bl	c0de71b4 <cx_bn_destroy>
c0de2a82:	b920      	cbnz	r0, c0de2a8e <tEdwards_Curve_partial_destroy+0x84>
c0de2a84:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2a88:	f004 fb94 	bl	c0de71b4 <cx_bn_destroy>
c0de2a8c:	b100      	cbz	r0, c0de2a90 <tEdwards_Curve_partial_destroy+0x86>
c0de2a8e:	bd10      	pop	{r4, pc}
c0de2a90:	f104 0008 	add.w	r0, r4, #8
c0de2a94:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2a98:	f004 bb8c 	b.w	c0de71b4 <cx_bn_destroy>

c0de2a9c <tEdwards_SetNeutral>:
c0de2a9c:	b5b0      	push	{r4, r5, r7, lr}
c0de2a9e:	4605      	mov	r5, r0
c0de2aa0:	6808      	ldr	r0, [r1, #0]
c0de2aa2:	460c      	mov	r4, r1
c0de2aa4:	2100      	movs	r1, #0
c0de2aa6:	f004 fbaf 	bl	c0de7208 <cx_bn_set_u32>
c0de2aaa:	b918      	cbnz	r0, c0de2ab4 <tEdwards_SetNeutral+0x18>
c0de2aac:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2aae:	f000 f944 	bl	c0de2d3a <OUTLINED_FUNCTION_11>
c0de2ab2:	b100      	cbz	r0, c0de2ab6 <tEdwards_SetNeutral+0x1a>
c0de2ab4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2ab6:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2ab8:	68a0      	ldr	r0, [r4, #8]
c0de2aba:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2abe:	f004 bb99 	b.w	c0de71f4 <cx_bn_copy>

c0de2ac2 <tEdwards_export>:
c0de2ac2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ac6:	4698      	mov	r8, r3
c0de2ac8:	4616      	mov	r6, r2
c0de2aca:	460f      	mov	r7, r1
c0de2acc:	4605      	mov	r5, r0
c0de2ace:	f000 f81e 	bl	c0de2b0e <tEdwards_normalize>
c0de2ad2:	b998      	cbnz	r0, c0de2afc <tEdwards_export+0x3a>
c0de2ad4:	f105 0420 	add.w	r4, r5, #32
c0de2ad8:	6839      	ldr	r1, [r7, #0]
c0de2ada:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2adc:	4622      	mov	r2, r4
c0de2ade:	f004 fc33 	bl	c0de7348 <cx_mont_from_montgomery>
c0de2ae2:	b958      	cbnz	r0, c0de2afc <tEdwards_export+0x3a>
c0de2ae4:	6879      	ldr	r1, [r7, #4]
c0de2ae6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2ae8:	4622      	mov	r2, r4
c0de2aea:	f004 fc2d 	bl	c0de7348 <cx_mont_from_montgomery>
c0de2aee:	b928      	cbnz	r0, c0de2afc <tEdwards_export+0x3a>
c0de2af0:	682a      	ldr	r2, [r5, #0]
c0de2af2:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2af4:	4631      	mov	r1, r6
c0de2af6:	f004 fb91 	bl	c0de721c <cx_bn_export>
c0de2afa:	b108      	cbz	r0, c0de2b00 <tEdwards_export+0x3e>
c0de2afc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b00:	682a      	ldr	r2, [r5, #0]
c0de2b02:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2b04:	4641      	mov	r1, r8
c0de2b06:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b0a:	f004 bb87 	b.w	c0de721c <cx_bn_export>

c0de2b0e <tEdwards_normalize>:
c0de2b0e:	b570      	push	{r4, r5, r6, lr}
c0de2b10:	4605      	mov	r5, r0
c0de2b12:	460c      	mov	r4, r1
c0de2b14:	6889      	ldr	r1, [r1, #8]
c0de2b16:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2b18:	f105 0620 	add.w	r6, r5, #32
c0de2b1c:	4632      	mov	r2, r6
c0de2b1e:	f004 fc3b 	bl	c0de7398 <cx_mont_invert_nprime>
c0de2b22:	b9d0      	cbnz	r0, c0de2b5a <tEdwards_normalize+0x4c>
c0de2b24:	6822      	ldr	r2, [r4, #0]
c0de2b26:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2b2a:	f000 f8d5 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2b2e:	b9a0      	cbnz	r0, c0de2b5a <tEdwards_normalize+0x4c>
c0de2b30:	6862      	ldr	r2, [r4, #4]
c0de2b32:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b34:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2b36:	f000 f8cf 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2b3a:	b970      	cbnz	r0, c0de2b5a <tEdwards_normalize+0x4c>
c0de2b3c:	68a2      	ldr	r2, [r4, #8]
c0de2b3e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b40:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2b42:	f000 f8c9 	bl	c0de2cd8 <OUTLINED_FUNCTION_0>
c0de2b46:	b940      	cbnz	r0, c0de2b5a <tEdwards_normalize+0x4c>
c0de2b48:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2b4a:	6820      	ldr	r0, [r4, #0]
c0de2b4c:	f004 fb52 	bl	c0de71f4 <cx_bn_copy>
c0de2b50:	b918      	cbnz	r0, c0de2b5a <tEdwards_normalize+0x4c>
c0de2b52:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2b54:	f000 f8f1 	bl	c0de2d3a <OUTLINED_FUNCTION_11>
c0de2b58:	b100      	cbz	r0, c0de2b5c <tEdwards_normalize+0x4e>
c0de2b5a:	bd70      	pop	{r4, r5, r6, pc}
c0de2b5c:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2b5e:	68a0      	ldr	r0, [r4, #8]
c0de2b60:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2b64:	f004 bb46 	b.w	c0de71f4 <cx_bn_copy>

c0de2b68 <tEdwards_copy>:
c0de2b68:	b5b0      	push	{r4, r5, r7, lr}
c0de2b6a:	460c      	mov	r4, r1
c0de2b6c:	4605      	mov	r5, r0
c0de2b6e:	6801      	ldr	r1, [r0, #0]
c0de2b70:	6820      	ldr	r0, [r4, #0]
c0de2b72:	f004 fb3f 	bl	c0de71f4 <cx_bn_copy>
c0de2b76:	b918      	cbnz	r0, c0de2b80 <tEdwards_copy+0x18>
c0de2b78:	6869      	ldr	r1, [r5, #4]
c0de2b7a:	f000 f8de 	bl	c0de2d3a <OUTLINED_FUNCTION_11>
c0de2b7e:	b100      	cbz	r0, c0de2b82 <tEdwards_copy+0x1a>
c0de2b80:	bdb0      	pop	{r4, r5, r7, pc}
c0de2b82:	68a9      	ldr	r1, [r5, #8]
c0de2b84:	68a0      	ldr	r0, [r4, #8]
c0de2b86:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2b8a:	f004 bb33 	b.w	c0de71f4 <cx_bn_copy>

c0de2b8e <tEdwards_alloc_init>:
c0de2b8e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2b90:	460e      	mov	r6, r1
c0de2b92:	6801      	ldr	r1, [r0, #0]
c0de2b94:	4607      	mov	r7, r0
c0de2b96:	4618      	mov	r0, r3
c0de2b98:	461c      	mov	r4, r3
c0de2b9a:	4615      	mov	r5, r2
c0de2b9c:	f004 faf4 	bl	c0de7188 <cx_bn_alloc>
c0de2ba0:	b950      	cbnz	r0, c0de2bb8 <tEdwards_alloc_init+0x2a>
c0de2ba2:	6839      	ldr	r1, [r7, #0]
c0de2ba4:	1d20      	adds	r0, r4, #4
c0de2ba6:	f004 faef 	bl	c0de7188 <cx_bn_alloc>
c0de2baa:	b928      	cbnz	r0, c0de2bb8 <tEdwards_alloc_init+0x2a>
c0de2bac:	6839      	ldr	r1, [r7, #0]
c0de2bae:	f104 0008 	add.w	r0, r4, #8
c0de2bb2:	f004 fae9 	bl	c0de7188 <cx_bn_alloc>
c0de2bb6:	b100      	cbz	r0, c0de2bba <tEdwards_alloc_init+0x2c>
c0de2bb8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2bba:	4638      	mov	r0, r7
c0de2bbc:	4631      	mov	r1, r6
c0de2bbe:	462a      	mov	r2, r5
c0de2bc0:	4623      	mov	r3, r4
c0de2bc2:	b001      	add	sp, #4
c0de2bc4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2bc8:	f7ff bee0 	b.w	c0de298c <tEdwards_init>

c0de2bcc <tEdwards_scalarMul_bn>:
c0de2bcc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2bd0:	4607      	mov	r7, r0
c0de2bd2:	2000      	movs	r0, #0
c0de2bd4:	4688      	mov	r8, r1
c0de2bd6:	4615      	mov	r5, r2
c0de2bd8:	2100      	movs	r1, #0
c0de2bda:	469b      	mov	fp, r3
c0de2bdc:	9003      	str	r0, [sp, #12]
c0de2bde:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2be2:	6810      	ldr	r0, [r2, #0]
c0de2be4:	aa03      	add	r2, sp, #12
c0de2be6:	f004 fb31 	bl	c0de724c <cx_bn_cmp_u32>
c0de2bea:	bb38      	cbnz	r0, c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2bec:	9803      	ldr	r0, [sp, #12]
c0de2bee:	b1d0      	cbz	r0, c0de2c26 <tEdwards_scalarMul_bn+0x5a>
c0de2bf0:	6828      	ldr	r0, [r5, #0]
c0de2bf2:	a901      	add	r1, sp, #4
c0de2bf4:	f004 fae8 	bl	c0de71c8 <cx_bn_nbytes>
c0de2bf8:	bb00      	cbnz	r0, c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2bfa:	2002      	movs	r0, #2
c0de2bfc:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2c00:	f10d 040b 	add.w	r4, sp, #11
c0de2c04:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c06:	9801      	ldr	r0, [sp, #4]
c0de2c08:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2c0c:	2000      	movs	r0, #0
c0de2c0e:	2801      	cmp	r0, #1
c0de2c10:	d00f      	beq.n	c0de2c32 <tEdwards_scalarMul_bn+0x66>
c0de2c12:	6828      	ldr	r0, [r5, #0]
c0de2c14:	4631      	mov	r1, r6
c0de2c16:	4622      	mov	r2, r4
c0de2c18:	f004 fb24 	bl	c0de7264 <cx_bn_tst_bit>
c0de2c1c:	b970      	cbnz	r0, c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2c1e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2c22:	3e01      	subs	r6, #1
c0de2c24:	e7f3      	b.n	c0de2c0e <tEdwards_scalarMul_bn+0x42>
c0de2c26:	4638      	mov	r0, r7
c0de2c28:	4659      	mov	r1, fp
c0de2c2a:	f7ff ff37 	bl	c0de2a9c <tEdwards_SetNeutral>
c0de2c2e:	b928      	cbnz	r0, c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2c30:	e7de      	b.n	c0de2bf0 <tEdwards_scalarMul_bn+0x24>
c0de2c32:	4640      	mov	r0, r8
c0de2c34:	4659      	mov	r1, fp
c0de2c36:	f7ff ff97 	bl	c0de2b68 <tEdwards_copy>
c0de2c3a:	b110      	cbz	r0, c0de2c42 <tEdwards_scalarMul_bn+0x76>
c0de2c3c:	b004      	add	sp, #16
c0de2c3e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2c42:	2001      	movs	r0, #1
c0de2c44:	f10d 0a0b 	add.w	sl, sp, #11
c0de2c48:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2c4c:	2e00      	cmp	r6, #0
c0de2c4e:	d420      	bmi.n	c0de2c92 <tEdwards_scalarMul_bn+0xc6>
c0de2c50:	4638      	mov	r0, r7
c0de2c52:	4659      	mov	r1, fp
c0de2c54:	465a      	mov	r2, fp
c0de2c56:	f7ff fc4f 	bl	c0de24f8 <tEdwards_double>
c0de2c5a:	2800      	cmp	r0, #0
c0de2c5c:	d1ee      	bne.n	c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2c5e:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2c60:	4631      	mov	r1, r6
c0de2c62:	4652      	mov	r2, sl
c0de2c64:	0040      	lsls	r0, r0, #1
c0de2c66:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c68:	6828      	ldr	r0, [r5, #0]
c0de2c6a:	f004 fafb 	bl	c0de7264 <cx_bn_tst_bit>
c0de2c6e:	2800      	cmp	r0, #0
c0de2c70:	d1e4      	bne.n	c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2c72:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2c76:	b150      	cbz	r0, c0de2c8e <tEdwards_scalarMul_bn+0xc2>
c0de2c78:	4638      	mov	r0, r7
c0de2c7a:	4659      	mov	r1, fp
c0de2c7c:	4642      	mov	r2, r8
c0de2c7e:	465b      	mov	r3, fp
c0de2c80:	f7ff fca5 	bl	c0de25ce <tEdwards_add>
c0de2c84:	2800      	cmp	r0, #0
c0de2c86:	d1d9      	bne.n	c0de2c3c <tEdwards_scalarMul_bn+0x70>
c0de2c88:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2c8a:	3001      	adds	r0, #1
c0de2c8c:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c8e:	3e01      	subs	r6, #1
c0de2c90:	e7dc      	b.n	c0de2c4c <tEdwards_scalarMul_bn+0x80>
c0de2c92:	2000      	movs	r0, #0
c0de2c94:	e7d2      	b.n	c0de2c3c <tEdwards_scalarMul_bn+0x70>
	...

c0de2c98 <tEdwards_scalarMul>:
c0de2c98:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2c9a:	460c      	mov	r4, r1
c0de2c9c:	6801      	ldr	r1, [r0, #0]
c0de2c9e:	4299      	cmp	r1, r3
c0de2ca0:	bf3c      	itt	cc
c0de2ca2:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2cd4 <tEdwards_scalarMul+0x3c>)
c0de2ca4:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2ca6:	4605      	mov	r5, r0
c0de2ca8:	20ca      	movs	r0, #202	@ 0xca
c0de2caa:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2cac:	a801      	add	r0, sp, #4
c0de2cae:	f004 fa75 	bl	c0de719c <cx_bn_alloc_init>
c0de2cb2:	b100      	cbz	r0, c0de2cb6 <tEdwards_scalarMul+0x1e>
c0de2cb4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2cb6:	20b3      	movs	r0, #179	@ 0xb3
c0de2cb8:	9b06      	ldr	r3, [sp, #24]
c0de2cba:	4621      	mov	r1, r4
c0de2cbc:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2cbe:	aa01      	add	r2, sp, #4
c0de2cc0:	4628      	mov	r0, r5
c0de2cc2:	f7ff ff83 	bl	c0de2bcc <tEdwards_scalarMul_bn>
c0de2cc6:	2800      	cmp	r0, #0
c0de2cc8:	d1f4      	bne.n	c0de2cb4 <tEdwards_scalarMul+0x1c>
c0de2cca:	a801      	add	r0, sp, #4
c0de2ccc:	f004 fa72 	bl	c0de71b4 <cx_bn_destroy>
c0de2cd0:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2cd2:	bf00      	nop
c0de2cd4:	5a4b4e01 	.word	0x5a4b4e01

c0de2cd8 <OUTLINED_FUNCTION_0>:
c0de2cd8:	4633      	mov	r3, r6
c0de2cda:	f004 bb41 	b.w	c0de7360 <cx_mont_mul>

c0de2cde <OUTLINED_FUNCTION_1>:
c0de2cde:	462b      	mov	r3, r5
c0de2ce0:	f004 bb3e 	b.w	c0de7360 <cx_mont_mul>

c0de2ce4 <OUTLINED_FUNCTION_2>:
c0de2ce4:	4633      	mov	r3, r6
c0de2ce6:	460a      	mov	r2, r1
c0de2ce8:	f004 bb3a 	b.w	c0de7360 <cx_mont_mul>

c0de2cec <OUTLINED_FUNCTION_3>:
c0de2cec:	462a      	mov	r2, r5
c0de2cee:	4601      	mov	r1, r0
c0de2cf0:	f004 bb1e 	b.w	c0de7330 <cx_mont_to_montgomery>

c0de2cf4 <OUTLINED_FUNCTION_4>:
c0de2cf4:	4620      	mov	r0, r4
c0de2cf6:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2cfa:	f004 ba45 	b.w	c0de7188 <cx_bn_alloc>

c0de2cfe <OUTLINED_FUNCTION_5>:
c0de2cfe:	4620      	mov	r0, r4
c0de2d00:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2d04:	f004 ba40 	b.w	c0de7188 <cx_bn_alloc>

c0de2d08 <OUTLINED_FUNCTION_6>:
c0de2d08:	4620      	mov	r0, r4
c0de2d0a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2d0e:	f004 ba3b 	b.w	c0de7188 <cx_bn_alloc>

c0de2d12 <OUTLINED_FUNCTION_7>:
c0de2d12:	4620      	mov	r0, r4
c0de2d14:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2d18:	f004 ba36 	b.w	c0de7188 <cx_bn_alloc>

c0de2d1c <OUTLINED_FUNCTION_8>:
c0de2d1c:	4620      	mov	r0, r4
c0de2d1e:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2d22:	f004 ba31 	b.w	c0de7188 <cx_bn_alloc>

c0de2d26 <OUTLINED_FUNCTION_9>:
c0de2d26:	4620      	mov	r0, r4
c0de2d28:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2d2c:	f004 ba2c 	b.w	c0de7188 <cx_bn_alloc>

c0de2d30 <OUTLINED_FUNCTION_10>:
c0de2d30:	4620      	mov	r0, r4
c0de2d32:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2d36:	f004 ba27 	b.w	c0de7188 <cx_bn_alloc>

c0de2d3a <OUTLINED_FUNCTION_11>:
c0de2d3a:	6860      	ldr	r0, [r4, #4]
c0de2d3c:	f004 ba5a 	b.w	c0de71f4 <cx_bn_copy>

c0de2d40 <grain_lfsr_advance>:
c0de2d40:	b5b0      	push	{r4, r5, r7, lr}
c0de2d42:	68c2      	ldr	r2, [r0, #12]
c0de2d44:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2d48:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2d4c:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2d50:	07e4      	lsls	r4, r4, #31
c0de2d52:	60c5      	str	r5, [r0, #12]
c0de2d54:	07dd      	lsls	r5, r3, #31
c0de2d56:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2d5a:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2d5e:	6044      	str	r4, [r0, #4]
c0de2d60:	4c15      	ldr	r4, [pc, #84]	@ (c0de2db8 <grain_lfsr_advance+0x78>)
c0de2d62:	6005      	str	r5, [r0, #0]
c0de2d64:	4021      	ands	r1, r4
c0de2d66:	4c15      	ldr	r4, [pc, #84]	@ (c0de2dbc <grain_lfsr_advance+0x7c>)
c0de2d68:	4023      	ands	r3, r4
c0de2d6a:	4419      	add	r1, r3
c0de2d6c:	0c0c      	lsrs	r4, r1, #16
c0de2d6e:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2d72:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2d76:	4421      	add	r1, r4
c0de2d78:	0a0c      	lsrs	r4, r1, #8
c0de2d7a:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2d7e:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2d82:	4061      	eors	r1, r4
c0de2d84:	090c      	lsrs	r4, r1, #4
c0de2d86:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2d8a:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2d8e:	4061      	eors	r1, r4
c0de2d90:	088c      	lsrs	r4, r1, #2
c0de2d92:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2d96:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2d9a:	4061      	eors	r1, r4
c0de2d9c:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2da0:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2da4:	4059      	eors	r1, r3
c0de2da6:	f001 0101 	and.w	r1, r1, #1
c0de2daa:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2dae:	6082      	str	r2, [r0, #8]
c0de2db0:	4608      	mov	r0, r1
c0de2db2:	2100      	movs	r1, #0
c0de2db4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2db6:	bf00      	nop
c0de2db8:	00802001 	.word	0x00802001
c0de2dbc:	40080040 	.word	0x40080040

c0de2dc0 <next64_graingen>:
c0de2dc0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2dc4:	460c      	mov	r4, r1
c0de2dc6:	4605      	mov	r5, r0
c0de2dc8:	f04f 0a00 	mov.w	sl, #0
c0de2dcc:	f04f 0800 	mov.w	r8, #0
c0de2dd0:	2700      	movs	r7, #0
c0de2dd2:	42a7      	cmp	r7, r4
c0de2dd4:	d215      	bcs.n	c0de2e02 <next64_graingen+0x42>
c0de2dd6:	4628      	mov	r0, r5
c0de2dd8:	f7ff ffb2 	bl	c0de2d40 <grain_lfsr_advance>
c0de2ddc:	4606      	mov	r6, r0
c0de2dde:	4628      	mov	r0, r5
c0de2de0:	f7ff ffae 	bl	c0de2d40 <grain_lfsr_advance>
c0de2de4:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2de8:	0781      	lsls	r1, r0, #30
c0de2dea:	d5f2      	bpl.n	c0de2dd2 <next64_graingen+0x12>
c0de2dec:	f000 0001 	and.w	r0, r0, #1
c0de2df0:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2df4:	3701      	adds	r7, #1
c0de2df6:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2dfa:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2dfe:	4682      	mov	sl, r0
c0de2e00:	e7e7      	b.n	c0de2dd2 <next64_graingen+0x12>
c0de2e02:	4650      	mov	r0, sl
c0de2e04:	4641      	mov	r1, r8
c0de2e06:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2e0c <init_generator>:
c0de2e0c:	b5b0      	push	{r4, r5, r7, lr}
c0de2e0e:	4a09      	ldr	r2, [pc, #36]	@ (c0de2e34 <init_generator+0x28>)
c0de2e10:	4b09      	ldr	r3, [pc, #36]	@ (c0de2e38 <init_generator+0x2c>)
c0de2e12:	4604      	mov	r4, r0
c0de2e14:	25a0      	movs	r5, #160	@ 0xa0
c0de2e16:	2000      	movs	r0, #0
c0de2e18:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2e1c:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2e20:	e9c4 3200 	strd	r3, r2, [r4]
c0de2e24:	b125      	cbz	r5, c0de2e30 <init_generator+0x24>
c0de2e26:	4620      	mov	r0, r4
c0de2e28:	f7ff ff8a 	bl	c0de2d40 <grain_lfsr_advance>
c0de2e2c:	3d01      	subs	r5, #1
c0de2e2e:	e7f9      	b.n	c0de2e24 <init_generator+0x18>
c0de2e30:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e32:	bf00      	nop
c0de2e34:	fffcf010 	.word	0xfffcf010
c0de2e38:	1801fc02 	.word	0x1801fc02

c0de2e3c <gen_integer>:
c0de2e3c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e40:	4f20      	ldr	r7, [pc, #128]	@ (c0de2ec4 <gen_integer+0x88>)
c0de2e42:	4e22      	ldr	r6, [pc, #136]	@ (c0de2ecc <gen_integer+0x90>)
c0de2e44:	4605      	mov	r5, r0
c0de2e46:	460c      	mov	r4, r1
c0de2e48:	2000      	movs	r0, #0
c0de2e4a:	46b8      	mov	r8, r7
c0de2e4c:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2ec8 <gen_integer+0x8c>)
c0de2e4e:	447e      	add	r6, pc
c0de2e50:	b9f8      	cbnz	r0, c0de2e92 <gen_integer+0x56>
c0de2e52:	4628      	mov	r0, r5
c0de2e54:	213e      	movs	r1, #62	@ 0x3e
c0de2e56:	47b0      	blx	r6
c0de2e58:	e9c4 0100 	strd	r0, r1, [r4]
c0de2e5c:	4628      	mov	r0, r5
c0de2e5e:	2140      	movs	r1, #64	@ 0x40
c0de2e60:	47b0      	blx	r6
c0de2e62:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2e66:	4628      	mov	r0, r5
c0de2e68:	2140      	movs	r1, #64	@ 0x40
c0de2e6a:	47b0      	blx	r6
c0de2e6c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2e70:	4628      	mov	r0, r5
c0de2e72:	2140      	movs	r1, #64	@ 0x40
c0de2e74:	47b0      	blx	r6
c0de2e76:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2e7a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2e7e:	463a      	mov	r2, r7
c0de2e80:	1bc0      	subs	r0, r0, r7
c0de2e82:	4640      	mov	r0, r8
c0de2e84:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2e88:	f04f 0000 	mov.w	r0, #0
c0de2e8c:	bf38      	it	cc
c0de2e8e:	2001      	movcc	r0, #1
c0de2e90:	e7de      	b.n	c0de2e50 <gen_integer+0x14>
c0de2e92:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2e96:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2ed0 <gen_integer+0x94>)
c0de2e98:	447d      	add	r5, pc
c0de2e9a:	47a8      	blx	r5
c0de2e9c:	e9c4 0100 	strd	r0, r1, [r4]
c0de2ea0:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2ea4:	47a8      	blx	r5
c0de2ea6:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2eaa:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2eae:	47a8      	blx	r5
c0de2eb0:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2eb4:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2eb8:	47a8      	blx	r5
c0de2eba:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2ebe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2ec2:	bf00      	nop
c0de2ec4:	305a4b4e 	.word	0x305a4b4e
c0de2ec8:	4f582122 	.word	0x4f582122
c0de2ecc:	ffffff6f 	.word	0xffffff6f
c0de2ed0:	00000039 	.word	0x00000039

c0de2ed4 <rev64>:
c0de2ed4:	ba0a      	rev	r2, r1
c0de2ed6:	ba01      	rev	r1, r0
c0de2ed8:	4610      	mov	r0, r2
c0de2eda:	4770      	bx	lr

c0de2edc <Poseidon_getNext_RC>:
c0de2edc:	30c0      	adds	r0, #192	@ 0xc0
c0de2ede:	f7ff bfad 	b.w	c0de2e3c <gen_integer>
	...

c0de2ee4 <Poseidon_alloc_init>:
c0de2ee4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ee8:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2eec:	4604      	mov	r4, r0
c0de2eee:	30c0      	adds	r0, #192	@ 0xc0
c0de2ef0:	461e      	mov	r6, r3
c0de2ef2:	4617      	mov	r7, r2
c0de2ef4:	460d      	mov	r5, r1
c0de2ef6:	f7ff ff89 	bl	c0de2e0c <init_generator>
c0de2efa:	492c      	ldr	r1, [pc, #176]	@ (c0de2fac <Poseidon_alloc_init+0xc8>)
c0de2efc:	46e8      	mov	r8, sp
c0de2efe:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2f02:	4640      	mov	r0, r8
c0de2f04:	4479      	add	r1, pc
c0de2f06:	f004 fbf5 	bl	c0de76f4 <__aeabi_memcpy>
c0de2f0a:	2000      	movs	r0, #0
c0de2f0c:	7325      	strb	r5, [r4, #12]
c0de2f0e:	6166      	str	r6, [r4, #20]
c0de2f10:	4621      	mov	r1, r4
c0de2f12:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2f16:	1c78      	adds	r0, r7, #1
c0de2f18:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2f1c:	6830      	ldr	r0, [r6, #0]
c0de2f1e:	f004 f953 	bl	c0de71c8 <cx_bn_nbytes>
c0de2f22:	b930      	cbnz	r0, c0de2f32 <Poseidon_alloc_init+0x4e>
c0de2f24:	4620      	mov	r0, r4
c0de2f26:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2f2a:	4631      	mov	r1, r6
c0de2f2c:	f004 f92c 	bl	c0de7188 <cx_bn_alloc>
c0de2f30:	b118      	cbz	r0, c0de2f3a <Poseidon_alloc_init+0x56>
c0de2f32:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2f36:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2f3a:	68a0      	ldr	r0, [r4, #8]
c0de2f3c:	2500      	movs	r5, #0
c0de2f3e:	4285      	cmp	r5, r0
c0de2f40:	d230      	bcs.n	c0de2fa4 <Poseidon_alloc_init+0xc0>
c0de2f42:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2f46:	4631      	mov	r1, r6
c0de2f48:	f107 0018 	add.w	r0, r7, #24
c0de2f4c:	f004 f91c 	bl	c0de7188 <cx_bn_alloc>
c0de2f50:	2800      	cmp	r0, #0
c0de2f52:	d1ee      	bne.n	c0de2f32 <Poseidon_alloc_init+0x4e>
c0de2f54:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2f58:	4631      	mov	r1, r6
c0de2f5a:	f004 f915 	bl	c0de7188 <cx_bn_alloc>
c0de2f5e:	2800      	cmp	r0, #0
c0de2f60:	d1e7      	bne.n	c0de2f32 <Poseidon_alloc_init+0x4e>
c0de2f62:	2700      	movs	r7, #0
c0de2f64:	68a0      	ldr	r0, [r4, #8]
c0de2f66:	4287      	cmp	r7, r0
c0de2f68:	d21a      	bcs.n	c0de2fa0 <Poseidon_alloc_init+0xbc>
c0de2f6a:	fb05 7000 	mla	r0, r5, r0, r7
c0de2f6e:	4631      	mov	r1, r6
c0de2f70:	4633      	mov	r3, r6
c0de2f72:	fb00 8206 	mla	r2, r0, r6, r8
c0de2f76:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2f7a:	3030      	adds	r0, #48	@ 0x30
c0de2f7c:	f004 f90e 	bl	c0de719c <cx_bn_alloc_init>
c0de2f80:	2800      	cmp	r0, #0
c0de2f82:	d1d6      	bne.n	c0de2f32 <Poseidon_alloc_init+0x4e>
c0de2f84:	68a0      	ldr	r0, [r4, #8]
c0de2f86:	6962      	ldr	r2, [r4, #20]
c0de2f88:	fb05 7000 	mla	r0, r5, r0, r7
c0de2f8c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2f90:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2f92:	4601      	mov	r1, r0
c0de2f94:	f004 f9cc 	bl	c0de7330 <cx_mont_to_montgomery>
c0de2f98:	3701      	adds	r7, #1
c0de2f9a:	2800      	cmp	r0, #0
c0de2f9c:	d0e2      	beq.n	c0de2f64 <Poseidon_alloc_init+0x80>
c0de2f9e:	e7c8      	b.n	c0de2f32 <Poseidon_alloc_init+0x4e>
c0de2fa0:	3501      	adds	r5, #1
c0de2fa2:	e7cc      	b.n	c0de2f3e <Poseidon_alloc_init+0x5a>
c0de2fa4:	2001      	movs	r0, #1
c0de2fa6:	6120      	str	r0, [r4, #16]
c0de2fa8:	2000      	movs	r0, #0
c0de2faa:	e7c2      	b.n	c0de2f32 <Poseidon_alloc_init+0x4e>
c0de2fac:	000057cc 	.word	0x000057cc

c0de2fb0 <Poseidon>:
c0de2fb0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2fb4:	b08c      	sub	sp, #48	@ 0x30
c0de2fb6:	4606      	mov	r6, r0
c0de2fb8:	6900      	ldr	r0, [r0, #16]
c0de2fba:	2801      	cmp	r0, #1
c0de2fbc:	f040 80b4 	bne.w	c0de3128 <Poseidon+0x178>
c0de2fc0:	69b0      	ldr	r0, [r6, #24]
c0de2fc2:	461f      	mov	r7, r3
c0de2fc4:	4692      	mov	sl, r2
c0de2fc6:	f004 f91f 	bl	c0de7208 <cx_bn_set_u32>
c0de2fca:	2800      	cmp	r0, #0
c0de2fcc:	f040 80ad 	bne.w	c0de312a <Poseidon+0x17a>
c0de2fd0:	f106 000c 	add.w	r0, r6, #12
c0de2fd4:	f106 0818 	add.w	r8, r6, #24
c0de2fd8:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de2fdc:	9001      	str	r0, [sp, #4]
c0de2fde:	2000      	movs	r0, #0
c0de2fe0:	2844      	cmp	r0, #68	@ 0x44
c0de2fe2:	f000 80ae 	beq.w	c0de3142 <Poseidon+0x192>
c0de2fe6:	6834      	ldr	r4, [r6, #0]
c0de2fe8:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de2fec:	f04f 0a00 	mov.w	sl, #0
c0de2ff0:	68b0      	ldr	r0, [r6, #8]
c0de2ff2:	4582      	cmp	sl, r0
c0de2ff4:	d224      	bcs.n	c0de3040 <Poseidon+0x90>
c0de2ff6:	ad04      	add	r5, sp, #16
c0de2ff8:	4658      	mov	r0, fp
c0de2ffa:	4629      	mov	r1, r5
c0de2ffc:	f7ff ff1e 	bl	c0de2e3c <gen_integer>
c0de3000:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3004:	4629      	mov	r1, r5
c0de3006:	4622      	mov	r2, r4
c0de3008:	f004 f8e8 	bl	c0de71dc <cx_bn_init>
c0de300c:	2800      	cmp	r0, #0
c0de300e:	f040 808c 	bne.w	c0de312a <Poseidon+0x17a>
c0de3012:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3016:	6972      	ldr	r2, [r6, #20]
c0de3018:	4601      	mov	r1, r0
c0de301a:	f004 f989 	bl	c0de7330 <cx_mont_to_montgomery>
c0de301e:	2800      	cmp	r0, #0
c0de3020:	f040 8083 	bne.w	c0de312a <Poseidon+0x17a>
c0de3024:	6972      	ldr	r2, [r6, #20]
c0de3026:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de302a:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de302e:	6813      	ldr	r3, [r2, #0]
c0de3030:	4602      	mov	r2, r0
c0de3032:	f004 f923 	bl	c0de727c <cx_bn_mod_add>
c0de3036:	f10a 0a01 	add.w	sl, sl, #1
c0de303a:	2800      	cmp	r0, #0
c0de303c:	d0d8      	beq.n	c0de2ff0 <Poseidon+0x40>
c0de303e:	e074      	b.n	c0de312a <Poseidon+0x17a>
c0de3040:	9902      	ldr	r1, [sp, #8]
c0de3042:	2904      	cmp	r1, #4
c0de3044:	d301      	bcc.n	c0de304a <Poseidon+0x9a>
c0de3046:	2940      	cmp	r1, #64	@ 0x40
c0de3048:	d323      	bcc.n	c0de3092 <Poseidon+0xe2>
c0de304a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de304e:	2400      	movs	r4, #0
c0de3050:	4284      	cmp	r4, r0
c0de3052:	d22b      	bcs.n	c0de30ac <Poseidon+0xfc>
c0de3054:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3058:	6973      	ldr	r3, [r6, #20]
c0de305a:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de305e:	460a      	mov	r2, r1
c0de3060:	f004 f97e 	bl	c0de7360 <cx_mont_mul>
c0de3064:	2800      	cmp	r0, #0
c0de3066:	d160      	bne.n	c0de312a <Poseidon+0x17a>
c0de3068:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de306c:	6973      	ldr	r3, [r6, #20]
c0de306e:	460a      	mov	r2, r1
c0de3070:	f004 f976 	bl	c0de7360 <cx_mont_mul>
c0de3074:	2800      	cmp	r0, #0
c0de3076:	d158      	bne.n	c0de312a <Poseidon+0x17a>
c0de3078:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de307c:	6973      	ldr	r3, [r6, #20]
c0de307e:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de3082:	4601      	mov	r1, r0
c0de3084:	f004 f96c 	bl	c0de7360 <cx_mont_mul>
c0de3088:	2800      	cmp	r0, #0
c0de308a:	d14e      	bne.n	c0de312a <Poseidon+0x17a>
c0de308c:	68b0      	ldr	r0, [r6, #8]
c0de308e:	3401      	adds	r4, #1
c0de3090:	e7de      	b.n	c0de3050 <Poseidon+0xa0>
c0de3092:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3096:	9a01      	ldr	r2, [sp, #4]
c0de3098:	2301      	movs	r3, #1
c0de309a:	9100      	str	r1, [sp, #0]
c0de309c:	4601      	mov	r1, r0
c0de309e:	f004 f96b 	bl	c0de7378 <cx_mont_pow>
c0de30a2:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de30a6:	2800      	cmp	r0, #0
c0de30a8:	d13f      	bne.n	c0de312a <Poseidon+0x17a>
c0de30aa:	68b0      	ldr	r0, [r6, #8]
c0de30ac:	2500      	movs	r5, #0
c0de30ae:	4285      	cmp	r5, r0
c0de30b0:	d229      	bcs.n	c0de3106 <Poseidon+0x156>
c0de30b2:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de30b6:	2100      	movs	r1, #0
c0de30b8:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de30bc:	f004 f8a4 	bl	c0de7208 <cx_bn_set_u32>
c0de30c0:	bb98      	cbnz	r0, c0de312a <Poseidon+0x17a>
c0de30c2:	9503      	str	r5, [sp, #12]
c0de30c4:	2500      	movs	r5, #0
c0de30c6:	68b0      	ldr	r0, [r6, #8]
c0de30c8:	4285      	cmp	r5, r0
c0de30ca:	d219      	bcs.n	c0de3100 <Poseidon+0x150>
c0de30cc:	9903      	ldr	r1, [sp, #12]
c0de30ce:	6973      	ldr	r3, [r6, #20]
c0de30d0:	fb01 5000 	mla	r0, r1, r0, r5
c0de30d4:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de30d8:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de30dc:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de30de:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de30e2:	f004 f93d 	bl	c0de7360 <cx_mont_mul>
c0de30e6:	bb00      	cbnz	r0, c0de312a <Poseidon+0x17a>
c0de30e8:	6971      	ldr	r1, [r6, #20]
c0de30ea:	6820      	ldr	r0, [r4, #0]
c0de30ec:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de30f0:	680b      	ldr	r3, [r1, #0]
c0de30f2:	4601      	mov	r1, r0
c0de30f4:	f004 f8c2 	bl	c0de727c <cx_bn_mod_add>
c0de30f8:	3501      	adds	r5, #1
c0de30fa:	2800      	cmp	r0, #0
c0de30fc:	d0e3      	beq.n	c0de30c6 <Poseidon+0x116>
c0de30fe:	e014      	b.n	c0de312a <Poseidon+0x17a>
c0de3100:	9d03      	ldr	r5, [sp, #12]
c0de3102:	3501      	adds	r5, #1
c0de3104:	e7d3      	b.n	c0de30ae <Poseidon+0xfe>
c0de3106:	2400      	movs	r4, #0
c0de3108:	4284      	cmp	r4, r0
c0de310a:	d20a      	bcs.n	c0de3122 <Poseidon+0x172>
c0de310c:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3110:	6988      	ldr	r0, [r1, #24]
c0de3112:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3116:	f004 f86d 	bl	c0de71f4 <cx_bn_copy>
c0de311a:	b930      	cbnz	r0, c0de312a <Poseidon+0x17a>
c0de311c:	68b0      	ldr	r0, [r6, #8]
c0de311e:	3401      	adds	r4, #1
c0de3120:	e7f2      	b.n	c0de3108 <Poseidon+0x158>
c0de3122:	9802      	ldr	r0, [sp, #8]
c0de3124:	3001      	adds	r0, #1
c0de3126:	e75b      	b.n	c0de2fe0 <Poseidon+0x30>
c0de3128:	4808      	ldr	r0, [pc, #32]	@ (c0de314c <Poseidon+0x19c>)
c0de312a:	b00c      	add	sp, #48	@ 0x30
c0de312c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3130:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3134:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3138:	f004 f85c 	bl	c0de71f4 <cx_bn_copy>
c0de313c:	3f01      	subs	r7, #1
c0de313e:	2800      	cmp	r0, #0
c0de3140:	d1f3      	bne.n	c0de312a <Poseidon+0x17a>
c0de3142:	2f00      	cmp	r7, #0
c0de3144:	d1f4      	bne.n	c0de3130 <Poseidon+0x180>
c0de3146:	2000      	movs	r0, #0
c0de3148:	e7ef      	b.n	c0de312a <Poseidon+0x17a>
c0de314a:	bf00      	nop
c0de314c:	5a4b4e02 	.word	0x5a4b4e02

c0de3150 <RFC9591_taggedHash>:
c0de3150:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3152:	b0d9      	sub	sp, #356	@ 0x164
c0de3154:	460e      	mov	r6, r1
c0de3156:	4607      	mov	r7, r0
c0de3158:	a858      	add	r0, sp, #352	@ 0x160
c0de315a:	2140      	movs	r1, #64	@ 0x40
c0de315c:	461c      	mov	r4, r3
c0de315e:	4615      	mov	r5, r2
c0de3160:	f004 f812 	bl	c0de7188 <cx_bn_alloc>
c0de3164:	bbd8      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de3166:	491f      	ldr	r1, [pc, #124]	@ (c0de31e4 <RFC9591_taggedHash+0x94>)
c0de3168:	4668      	mov	r0, sp
c0de316a:	221d      	movs	r2, #29
c0de316c:	4479      	add	r1, pc
c0de316e:	f004 fac1 	bl	c0de76f4 <__aeabi_memcpy>
c0de3172:	a808      	add	r0, sp, #32
c0de3174:	2109      	movs	r1, #9
c0de3176:	2240      	movs	r2, #64	@ 0x40
c0de3178:	f003 fd99 	bl	c0de6cae <cx_hash_init_ex>
c0de317c:	bb78      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de317e:	a808      	add	r0, sp, #32
c0de3180:	4669      	mov	r1, sp
c0de3182:	221d      	movs	r2, #29
c0de3184:	f003 fd98 	bl	c0de6cb8 <cx_hash_update>
c0de3188:	bb48      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de318a:	a808      	add	r0, sp, #32
c0de318c:	4639      	mov	r1, r7
c0de318e:	4632      	mov	r2, r6
c0de3190:	f003 fd92 	bl	c0de6cb8 <cx_hash_update>
c0de3194:	bb18      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de3196:	a808      	add	r0, sp, #32
c0de3198:	4629      	mov	r1, r5
c0de319a:	4622      	mov	r2, r4
c0de319c:	f003 fd8c 	bl	c0de6cb8 <cx_hash_update>
c0de31a0:	b9e8      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de31a2:	a808      	add	r0, sp, #32
c0de31a4:	ae48      	add	r6, sp, #288	@ 0x120
c0de31a6:	4631      	mov	r1, r6
c0de31a8:	f003 fd7c 	bl	c0de6ca4 <cx_hash_final>
c0de31ac:	b9b8      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de31ae:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de31b2:	2000      	movs	r0, #0
c0de31b4:	213f      	movs	r1, #63	@ 0x3f
c0de31b6:	2820      	cmp	r0, #32
c0de31b8:	d002      	beq.n	c0de31c0 <RFC9591_taggedHash+0x70>
c0de31ba:	f000 f8dd 	bl	c0de3378 <OUTLINED_FUNCTION_3>
c0de31be:	e7fa      	b.n	c0de31b6 <RFC9591_taggedHash+0x66>
c0de31c0:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de31c2:	a948      	add	r1, sp, #288	@ 0x120
c0de31c4:	2240      	movs	r2, #64	@ 0x40
c0de31c6:	f004 f809 	bl	c0de71dc <cx_bn_init>
c0de31ca:	b940      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de31cc:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de31ce:	4628      	mov	r0, r5
c0de31d0:	4622      	mov	r2, r4
c0de31d2:	f004 f877 	bl	c0de72c4 <cx_bn_reduce>
c0de31d6:	b910      	cbnz	r0, c0de31de <RFC9591_taggedHash+0x8e>
c0de31d8:	a858      	add	r0, sp, #352	@ 0x160
c0de31da:	f003 ffeb 	bl	c0de71b4 <cx_bn_destroy>
c0de31de:	b059      	add	sp, #356	@ 0x164
c0de31e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de31e2:	bf00      	nop
c0de31e4:	000059e4 	.word	0x000059e4

c0de31e8 <Babyfrost_H1>:
c0de31e8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de31ea:	4605      	mov	r5, r0
c0de31ec:	206f      	movs	r0, #111	@ 0x6f
c0de31ee:	f000 f8b7 	bl	c0de3360 <OUTLINED_FUNCTION_1>
c0de31f2:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de31f6:	f000 f8ba 	bl	c0de336e <OUTLINED_FUNCTION_2>
c0de31fa:	a803      	add	r0, sp, #12
c0de31fc:	f7ff ffa8 	bl	c0de3150 <RFC9591_taggedHash>
c0de3200:	b004      	add	sp, #16
c0de3202:	bdb0      	pop	{r4, r5, r7, pc}

c0de3204 <Babyfrost_H3>:
c0de3204:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3206:	4605      	mov	r5, r0
c0de3208:	2065      	movs	r0, #101	@ 0x65
c0de320a:	460c      	mov	r4, r1
c0de320c:	e9cd 2300 	strd	r2, r3, [sp]
c0de3210:	2105      	movs	r1, #5
c0de3212:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3216:	4804      	ldr	r0, [pc, #16]	@ (c0de3228 <Babyfrost_H3+0x24>)
c0de3218:	462a      	mov	r2, r5
c0de321a:	4623      	mov	r3, r4
c0de321c:	9002      	str	r0, [sp, #8]
c0de321e:	a802      	add	r0, sp, #8
c0de3220:	f7ff ff96 	bl	c0de3150 <RFC9591_taggedHash>
c0de3224:	b004      	add	sp, #16
c0de3226:	bdb0      	pop	{r4, r5, r7, pc}
c0de3228:	636e6f6e 	.word	0x636e6f6e

c0de322c <Babyfrost_H4>:
c0de322c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de322e:	4605      	mov	r5, r0
c0de3230:	2067      	movs	r0, #103	@ 0x67
c0de3232:	f000 f895 	bl	c0de3360 <OUTLINED_FUNCTION_1>
c0de3236:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de323a:	f000 f898 	bl	c0de336e <OUTLINED_FUNCTION_2>
c0de323e:	a803      	add	r0, sp, #12
c0de3240:	f7ff ff86 	bl	c0de3150 <RFC9591_taggedHash>
c0de3244:	b004      	add	sp, #16
c0de3246:	bdb0      	pop	{r4, r5, r7, pc}

c0de3248 <Babyfrost_H5>:
c0de3248:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de324a:	4605      	mov	r5, r0
c0de324c:	206d      	movs	r0, #109	@ 0x6d
c0de324e:	f000 f887 	bl	c0de3360 <OUTLINED_FUNCTION_1>
c0de3252:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3256:	f000 f88a 	bl	c0de336e <OUTLINED_FUNCTION_2>
c0de325a:	a803      	add	r0, sp, #12
c0de325c:	f7ff ff78 	bl	c0de3150 <RFC9591_taggedHash>
c0de3260:	b004      	add	sp, #16
c0de3262:	bdb0      	pop	{r4, r5, r7, pc}

c0de3264 <zkn_frost_hash_init>:
c0de3264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3266:	461d      	mov	r5, r3
c0de3268:	4604      	mov	r4, r0
c0de326a:	f003 fd20 	bl	c0de6cae <cx_hash_init_ex>
c0de326e:	b938      	cbnz	r0, c0de3280 <zkn_frost_hash_init+0x1c>
c0de3270:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de3274:	9e08      	ldr	r6, [sp, #32]
c0de3276:	4620      	mov	r0, r4
c0de3278:	4629      	mov	r1, r5
c0de327a:	f003 fd1d 	bl	c0de6cb8 <cx_hash_update>
c0de327e:	b100      	cbz	r0, c0de3282 <zkn_frost_hash_init+0x1e>
c0de3280:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3282:	4620      	mov	r0, r4
c0de3284:	4639      	mov	r1, r7
c0de3286:	4632      	mov	r2, r6
c0de3288:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de328c:	f003 bd14 	b.w	c0de6cb8 <cx_hash_update>

c0de3290 <zkn_frost_H1_init>:
c0de3290:	b570      	push	{r4, r5, r6, lr}
c0de3292:	b08c      	sub	sp, #48	@ 0x30
c0de3294:	4604      	mov	r4, r0
c0de3296:	206f      	movs	r0, #111	@ 0x6f
c0de3298:	221d      	movs	r2, #29
c0de329a:	261d      	movs	r6, #29
c0de329c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de32a0:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de32a4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de32a8:	ad03      	add	r5, sp, #12
c0de32aa:	4905      	ldr	r1, [pc, #20]	@ (c0de32c0 <zkn_frost_H1_init+0x30>)
c0de32ac:	4628      	mov	r0, r5
c0de32ae:	4479      	add	r1, pc
c0de32b0:	f004 fa20 	bl	c0de76f4 <__aeabi_memcpy>
c0de32b4:	a90b      	add	r1, sp, #44	@ 0x2c
c0de32b6:	f000 f849 	bl	c0de334c <OUTLINED_FUNCTION_0>
c0de32ba:	b00c      	add	sp, #48	@ 0x30
c0de32bc:	bd70      	pop	{r4, r5, r6, pc}
c0de32be:	bf00      	nop
c0de32c0:	000058a2 	.word	0x000058a2

c0de32c4 <zkn_frost_H5_init>:
c0de32c4:	b570      	push	{r4, r5, r6, lr}
c0de32c6:	b08c      	sub	sp, #48	@ 0x30
c0de32c8:	4604      	mov	r4, r0
c0de32ca:	206d      	movs	r0, #109	@ 0x6d
c0de32cc:	221d      	movs	r2, #29
c0de32ce:	261d      	movs	r6, #29
c0de32d0:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de32d4:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de32d8:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de32dc:	ad03      	add	r5, sp, #12
c0de32de:	4905      	ldr	r1, [pc, #20]	@ (c0de32f4 <zkn_frost_H5_init+0x30>)
c0de32e0:	4628      	mov	r0, r5
c0de32e2:	4479      	add	r1, pc
c0de32e4:	f004 fa06 	bl	c0de76f4 <__aeabi_memcpy>
c0de32e8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de32ea:	f000 f82f 	bl	c0de334c <OUTLINED_FUNCTION_0>
c0de32ee:	b00c      	add	sp, #48	@ 0x30
c0de32f0:	bd70      	pop	{r4, r5, r6, pc}
c0de32f2:	bf00      	nop
c0de32f4:	0000586e 	.word	0x0000586e

c0de32f8 <zkn_frost_hash_update>:
c0de32f8:	f003 bcde 	b.w	c0de6cb8 <cx_hash_update>

c0de32fc <zkn_frost_hash_final>:
c0de32fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de32fe:	b091      	sub	sp, #68	@ 0x44
c0de3300:	460c      	mov	r4, r1
c0de3302:	4607      	mov	r7, r0
c0de3304:	a810      	add	r0, sp, #64	@ 0x40
c0de3306:	2140      	movs	r1, #64	@ 0x40
c0de3308:	4615      	mov	r5, r2
c0de330a:	f003 ff3d 	bl	c0de7188 <cx_bn_alloc>
c0de330e:	b9d8      	cbnz	r0, c0de3348 <zkn_frost_hash_final+0x4c>
c0de3310:	466e      	mov	r6, sp
c0de3312:	4638      	mov	r0, r7
c0de3314:	4631      	mov	r1, r6
c0de3316:	f003 fcc5 	bl	c0de6ca4 <cx_hash_final>
c0de331a:	b9a8      	cbnz	r0, c0de3348 <zkn_frost_hash_final+0x4c>
c0de331c:	2000      	movs	r0, #0
c0de331e:	213f      	movs	r1, #63	@ 0x3f
c0de3320:	2820      	cmp	r0, #32
c0de3322:	d002      	beq.n	c0de332a <zkn_frost_hash_final+0x2e>
c0de3324:	f000 f828 	bl	c0de3378 <OUTLINED_FUNCTION_3>
c0de3328:	e7fa      	b.n	c0de3320 <zkn_frost_hash_final+0x24>
c0de332a:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de332c:	4669      	mov	r1, sp
c0de332e:	2240      	movs	r2, #64	@ 0x40
c0de3330:	f003 ff54 	bl	c0de71dc <cx_bn_init>
c0de3334:	b940      	cbnz	r0, c0de3348 <zkn_frost_hash_final+0x4c>
c0de3336:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3338:	4628      	mov	r0, r5
c0de333a:	4622      	mov	r2, r4
c0de333c:	f003 ffc2 	bl	c0de72c4 <cx_bn_reduce>
c0de3340:	b910      	cbnz	r0, c0de3348 <zkn_frost_hash_final+0x4c>
c0de3342:	a810      	add	r0, sp, #64	@ 0x40
c0de3344:	f003 ff36 	bl	c0de71b4 <cx_bn_destroy>
c0de3348:	b011      	add	sp, #68	@ 0x44
c0de334a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de334c <OUTLINED_FUNCTION_0>:
c0de334c:	2003      	movs	r0, #3
c0de334e:	2240      	movs	r2, #64	@ 0x40
c0de3350:	462b      	mov	r3, r5
c0de3352:	e9cd 6100 	strd	r6, r1, [sp]
c0de3356:	9002      	str	r0, [sp, #8]
c0de3358:	4620      	mov	r0, r4
c0de335a:	2109      	movs	r1, #9
c0de335c:	f7ff bf82 	b.w	c0de3264 <zkn_frost_hash_init>

c0de3360 <OUTLINED_FUNCTION_1>:
c0de3360:	460c      	mov	r4, r1
c0de3362:	e9cd 2300 	strd	r2, r3, [sp]
c0de3366:	2103      	movs	r1, #3
c0de3368:	f88d 000e 	strb.w	r0, [sp, #14]
c0de336c:	4770      	bx	lr

c0de336e <OUTLINED_FUNCTION_2>:
c0de336e:	462a      	mov	r2, r5
c0de3370:	4623      	mov	r3, r4
c0de3372:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3376:	4770      	bx	lr

c0de3378 <OUTLINED_FUNCTION_3>:
c0de3378:	5c32      	ldrb	r2, [r6, r0]
c0de337a:	5c73      	ldrb	r3, [r6, r1]
c0de337c:	5433      	strb	r3, [r6, r0]
c0de337e:	5472      	strb	r2, [r6, r1]
c0de3380:	3901      	subs	r1, #1
c0de3382:	3001      	adds	r0, #1
c0de3384:	4770      	bx	lr

c0de3386 <os_io_handle_default_apdu>:
c0de3386:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3388:	b09d      	sub	sp, #116	@ 0x74
c0de338a:	4615      	mov	r5, r2
c0de338c:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de338e:	b3c8      	cbz	r0, c0de3404 <os_io_handle_default_apdu+0x7e>
c0de3390:	b3c1      	cbz	r1, c0de3404 <os_io_handle_default_apdu+0x7e>
c0de3392:	b3bd      	cbz	r5, c0de3404 <os_io_handle_default_apdu+0x7e>
c0de3394:	461c      	mov	r4, r3
c0de3396:	b3ab      	cbz	r3, c0de3404 <os_io_handle_default_apdu+0x7e>
c0de3398:	b10a      	cbz	r2, c0de339e <os_io_handle_default_apdu+0x18>
c0de339a:	2100      	movs	r1, #0
c0de339c:	7011      	strb	r1, [r2, #0]
c0de339e:	7801      	ldrb	r1, [r0, #0]
c0de33a0:	29b0      	cmp	r1, #176	@ 0xb0
c0de33a2:	d131      	bne.n	c0de3408 <os_io_handle_default_apdu+0x82>
c0de33a4:	7841      	ldrb	r1, [r0, #1]
c0de33a6:	29a7      	cmp	r1, #167	@ 0xa7
c0de33a8:	d031      	beq.n	c0de340e <os_io_handle_default_apdu+0x88>
c0de33aa:	2906      	cmp	r1, #6
c0de33ac:	d036      	beq.n	c0de341c <os_io_handle_default_apdu+0x96>
c0de33ae:	2901      	cmp	r1, #1
c0de33b0:	d131      	bne.n	c0de3416 <os_io_handle_default_apdu+0x90>
c0de33b2:	7881      	ldrb	r1, [r0, #2]
c0de33b4:	bb79      	cbnz	r1, c0de3416 <os_io_handle_default_apdu+0x90>
c0de33b6:	78c0      	ldrb	r0, [r0, #3]
c0de33b8:	bb68      	cbnz	r0, c0de3416 <os_io_handle_default_apdu+0x90>
c0de33ba:	6820      	ldr	r0, [r4, #0]
c0de33bc:	2100      	movs	r1, #0
c0de33be:	6021      	str	r1, [r4, #0]
c0de33c0:	2803      	cmp	r0, #3
c0de33c2:	d321      	bcc.n	c0de3408 <os_io_handle_default_apdu+0x82>
c0de33c4:	2601      	movs	r6, #1
c0de33c6:	1ec7      	subs	r7, r0, #3
c0de33c8:	6026      	str	r6, [r4, #0]
c0de33ca:	702e      	strb	r6, [r5, #0]
c0de33cc:	6820      	ldr	r0, [r4, #0]
c0de33ce:	1a3a      	subs	r2, r7, r0
c0de33d0:	4428      	add	r0, r5
c0de33d2:	1c41      	adds	r1, r0, #1
c0de33d4:	2001      	movs	r0, #1
c0de33d6:	f004 f845 	bl	c0de7464 <os_registry_get_current_app_tag>
c0de33da:	f000 f83f 	bl	c0de345c <OUTLINED_FUNCTION_0>
c0de33de:	6020      	str	r0, [r4, #0]
c0de33e0:	1a3a      	subs	r2, r7, r0
c0de33e2:	4428      	add	r0, r5
c0de33e4:	1c41      	adds	r1, r0, #1
c0de33e6:	2002      	movs	r0, #2
c0de33e8:	f004 f83c 	bl	c0de7464 <os_registry_get_current_app_tag>
c0de33ec:	f000 f836 	bl	c0de345c <OUTLINED_FUNCTION_0>
c0de33f0:	1c41      	adds	r1, r0, #1
c0de33f2:	6021      	str	r1, [r4, #0]
c0de33f4:	542e      	strb	r6, [r5, r0]
c0de33f6:	f004 f82d 	bl	c0de7454 <os_flags>
c0de33fa:	6821      	ldr	r1, [r4, #0]
c0de33fc:	1c4a      	adds	r2, r1, #1
c0de33fe:	6022      	str	r2, [r4, #0]
c0de3400:	5468      	strb	r0, [r5, r1]
c0de3402:	e028      	b.n	c0de3456 <os_io_handle_default_apdu+0xd0>
c0de3404:	7814      	ldrb	r4, [r2, #0]
c0de3406:	e01e      	b.n	c0de3446 <os_io_handle_default_apdu+0xc0>
c0de3408:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de340c:	e01b      	b.n	c0de3446 <os_io_handle_default_apdu+0xc0>
c0de340e:	7881      	ldrb	r1, [r0, #2]
c0de3410:	b909      	cbnz	r1, c0de3416 <os_io_handle_default_apdu+0x90>
c0de3412:	78c0      	ldrb	r0, [r0, #3]
c0de3414:	b1d0      	cbz	r0, c0de344c <os_io_handle_default_apdu+0xc6>
c0de3416:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de341a:	e014      	b.n	c0de3446 <os_io_handle_default_apdu+0xc0>
c0de341c:	2100      	movs	r1, #0
c0de341e:	6021      	str	r1, [r4, #0]
c0de3420:	7883      	ldrb	r3, [r0, #2]
c0de3422:	7902      	ldrb	r2, [r0, #4]
c0de3424:	ad02      	add	r5, sp, #8
c0de3426:	e9cd 1500 	strd	r1, r5, [sp]
c0de342a:	1d41      	adds	r1, r0, #5
c0de342c:	4618      	mov	r0, r3
c0de342e:	2300      	movs	r3, #0
c0de3430:	f003 ffdc 	bl	c0de73ec <os_pki_load_certificate>
c0de3434:	4604      	mov	r4, r0
c0de3436:	4628      	mov	r0, r5
c0de3438:	216c      	movs	r1, #108	@ 0x6c
c0de343a:	f004 f973 	bl	c0de7724 <explicit_bzero>
c0de343e:	2c00      	cmp	r4, #0
c0de3440:	bf08      	it	eq
c0de3442:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3446:	4620      	mov	r0, r4
c0de3448:	b01d      	add	sp, #116	@ 0x74
c0de344a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de344c:	2000      	movs	r0, #0
c0de344e:	6020      	str	r0, [r4, #0]
c0de3450:	b10a      	cbz	r2, c0de3456 <os_io_handle_default_apdu+0xd0>
c0de3452:	2001      	movs	r0, #1
c0de3454:	7010      	strb	r0, [r2, #0]
c0de3456:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de345a:	e7f4      	b.n	c0de3446 <os_io_handle_default_apdu+0xc0>

c0de345c <OUTLINED_FUNCTION_0>:
c0de345c:	6821      	ldr	r1, [r4, #0]
c0de345e:	1c4a      	adds	r2, r1, #1
c0de3460:	6022      	str	r2, [r4, #0]
c0de3462:	5468      	strb	r0, [r5, r1]
c0de3464:	6821      	ldr	r1, [r4, #0]
c0de3466:	4408      	add	r0, r1
c0de3468:	4770      	bx	lr

c0de346a <io_process_itc_ux_event>:
c0de346a:	b580      	push	{r7, lr}
c0de346c:	78c0      	ldrb	r0, [r0, #3]
c0de346e:	2820      	cmp	r0, #32
c0de3470:	d107      	bne.n	c0de3482 <io_process_itc_ux_event+0x18>
c0de3472:	2001      	movs	r0, #1
c0de3474:	f003 fc3b 	bl	c0de6cee <nbgl_objAllowDrawing>
c0de3478:	f003 fc48 	bl	c0de6d0c <nbgl_screenRedraw>
c0de347c:	f003 fc2d 	bl	c0de6cda <nbgl_refresh>
c0de3480:	2100      	movs	r1, #0
c0de3482:	4608      	mov	r0, r1
c0de3484:	bd80      	pop	{r7, pc}
	...

c0de3488 <io_legacy_apdu_tx>:
c0de3488:	b5b0      	push	{r4, r5, r7, lr}
c0de348a:	460a      	mov	r2, r1
c0de348c:	4601      	mov	r1, r0
c0de348e:	4806      	ldr	r0, [pc, #24]	@ (c0de34a8 <io_legacy_apdu_tx+0x20>)
c0de3490:	2300      	movs	r3, #0
c0de3492:	2500      	movs	r5, #0
c0de3494:	eb09 0400 	add.w	r4, r9, r0
c0de3498:	7860      	ldrb	r0, [r4, #1]
c0de349a:	f004 f80d 	bl	c0de74b8 <os_io_tx_cmd>
c0de349e:	4903      	ldr	r1, [pc, #12]	@ (c0de34ac <io_legacy_apdu_tx+0x24>)
c0de34a0:	7065      	strb	r5, [r4, #1]
c0de34a2:	4449      	add	r1, r9
c0de34a4:	718d      	strb	r5, [r1, #6]
c0de34a6:	bdb0      	pop	{r4, r5, r7, pc}
c0de34a8:	0000063e 	.word	0x0000063e
c0de34ac:	00000636 	.word	0x00000636

c0de34b0 <io_legacy_apdu_rx>:
c0de34b0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de34b2:	4e65      	ldr	r6, [pc, #404]	@ (c0de3648 <io_legacy_apdu_rx+0x198>)
c0de34b4:	2100      	movs	r1, #0
c0de34b6:	4605      	mov	r5, r0
c0de34b8:	2200      	movs	r2, #0
c0de34ba:	2301      	movs	r3, #1
c0de34bc:	f88d 100b 	strb.w	r1, [sp, #11]
c0de34c0:	f240 1111 	movw	r1, #273	@ 0x111
c0de34c4:	eb09 0006 	add.w	r0, r9, r6
c0de34c8:	f004 f802 	bl	c0de74d0 <os_io_rx_evt>
c0de34cc:	4604      	mov	r4, r0
c0de34ce:	2801      	cmp	r0, #1
c0de34d0:	f2c0 80b5 	blt.w	c0de363e <io_legacy_apdu_rx+0x18e>
c0de34d4:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de34d8:	f1a0 0110 	sub.w	r1, r0, #16
c0de34dc:	2916      	cmp	r1, #22
c0de34de:	d843      	bhi.n	c0de3568 <io_legacy_apdu_rx+0xb8>
c0de34e0:	2201      	movs	r2, #1
c0de34e2:	fa02 f101 	lsl.w	r1, r2, r1
c0de34e6:	4a59      	ldr	r2, [pc, #356]	@ (c0de364c <io_legacy_apdu_rx+0x19c>)
c0de34e8:	4211      	tst	r1, r2
c0de34ea:	d03d      	beq.n	c0de3568 <io_legacy_apdu_rx+0xb8>
c0de34ec:	4f58      	ldr	r7, [pc, #352]	@ (c0de3650 <io_legacy_apdu_rx+0x1a0>)
c0de34ee:	eb09 0107 	add.w	r1, r9, r7
c0de34f2:	7048      	strb	r0, [r1, #1]
c0de34f4:	f003 ff8a 	bl	c0de740c <os_perso_is_pin_set>
c0de34f8:	28aa      	cmp	r0, #170	@ 0xaa
c0de34fa:	d103      	bne.n	c0de3504 <io_legacy_apdu_rx+0x54>
c0de34fc:	f003 ff8f 	bl	c0de741e <os_global_pin_is_validated>
c0de3500:	28aa      	cmp	r0, #170	@ 0xaa
c0de3502:	d14d      	bne.n	c0de35a0 <io_legacy_apdu_rx+0xf0>
c0de3504:	eb09 0006 	add.w	r0, r9, r6
c0de3508:	7840      	ldrb	r0, [r0, #1]
c0de350a:	28b0      	cmp	r0, #176	@ 0xb0
c0de350c:	d134      	bne.n	c0de3578 <io_legacy_apdu_rx+0xc8>
c0de350e:	f240 1011 	movw	r0, #273	@ 0x111
c0de3512:	1e61      	subs	r1, r4, #1
c0de3514:	9001      	str	r0, [sp, #4]
c0de3516:	f10d 000b 	add.w	r0, sp, #11
c0de351a:	9000      	str	r0, [sp, #0]
c0de351c:	484d      	ldr	r0, [pc, #308]	@ (c0de3654 <io_legacy_apdu_rx+0x1a4>)
c0de351e:	ab01      	add	r3, sp, #4
c0de3520:	eb09 0500 	add.w	r5, r9, r0
c0de3524:	eb09 0006 	add.w	r0, r9, r6
c0de3528:	3001      	adds	r0, #1
c0de352a:	462a      	mov	r2, r5
c0de352c:	f7ff ff2b 	bl	c0de3386 <os_io_handle_default_apdu>
c0de3530:	2400      	movs	r4, #0
c0de3532:	9901      	ldr	r1, [sp, #4]
c0de3534:	eb09 0607 	add.w	r6, r9, r7
c0de3538:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de353c:	bf18      	it	ne
c0de353e:	4621      	movne	r1, r4
c0de3540:	0a02      	lsrs	r2, r0, #8
c0de3542:	2300      	movs	r3, #0
c0de3544:	546a      	strb	r2, [r5, r1]
c0de3546:	186a      	adds	r2, r5, r1
c0de3548:	7050      	strb	r0, [r2, #1]
c0de354a:	1c88      	adds	r0, r1, #2
c0de354c:	4629      	mov	r1, r5
c0de354e:	9001      	str	r0, [sp, #4]
c0de3550:	b282      	uxth	r2, r0
c0de3552:	7870      	ldrb	r0, [r6, #1]
c0de3554:	f003 ffb0 	bl	c0de74b8 <os_io_tx_cmd>
c0de3558:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de355c:	7074      	strb	r4, [r6, #1]
c0de355e:	2901      	cmp	r1, #1
c0de3560:	d06f      	beq.n	c0de3642 <io_legacy_apdu_rx+0x192>
c0de3562:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3566:	e06a      	b.n	c0de363e <io_legacy_apdu_rx+0x18e>
c0de3568:	1e41      	subs	r1, r0, #1
c0de356a:	2902      	cmp	r1, #2
c0de356c:	d32a      	bcc.n	c0de35c4 <io_legacy_apdu_rx+0x114>
c0de356e:	2830      	cmp	r0, #48	@ 0x30
c0de3570:	d0bc      	beq.n	c0de34ec <io_legacy_apdu_rx+0x3c>
c0de3572:	2840      	cmp	r0, #64	@ 0x40
c0de3574:	d0ba      	beq.n	c0de34ec <io_legacy_apdu_rx+0x3c>
c0de3576:	e061      	b.n	c0de363c <io_legacy_apdu_rx+0x18c>
c0de3578:	eb09 0007 	add.w	r0, r9, r7
c0de357c:	7840      	ldrb	r0, [r0, #1]
c0de357e:	2810      	cmp	r0, #16
c0de3580:	d040      	beq.n	c0de3604 <io_legacy_apdu_rx+0x154>
c0de3582:	2840      	cmp	r0, #64	@ 0x40
c0de3584:	d040      	beq.n	c0de3608 <io_legacy_apdu_rx+0x158>
c0de3586:	2821      	cmp	r0, #33	@ 0x21
c0de3588:	d040      	beq.n	c0de360c <io_legacy_apdu_rx+0x15c>
c0de358a:	2822      	cmp	r0, #34	@ 0x22
c0de358c:	d034      	beq.n	c0de35f8 <io_legacy_apdu_rx+0x148>
c0de358e:	2823      	cmp	r0, #35	@ 0x23
c0de3590:	d034      	beq.n	c0de35fc <io_legacy_apdu_rx+0x14c>
c0de3592:	2830      	cmp	r0, #48	@ 0x30
c0de3594:	d034      	beq.n	c0de3600 <io_legacy_apdu_rx+0x150>
c0de3596:	2820      	cmp	r0, #32
c0de3598:	bf14      	ite	ne
c0de359a:	2000      	movne	r0, #0
c0de359c:	2001      	moveq	r0, #1
c0de359e:	e036      	b.n	c0de360e <io_legacy_apdu_rx+0x15e>
c0de35a0:	482c      	ldr	r0, [pc, #176]	@ (c0de3654 <io_legacy_apdu_rx+0x1a4>)
c0de35a2:	2155      	movs	r1, #85	@ 0x55
c0de35a4:	2202      	movs	r2, #2
c0de35a6:	2300      	movs	r3, #0
c0de35a8:	f809 1000 	strb.w	r1, [r9, r0]
c0de35ac:	eb09 0100 	add.w	r1, r9, r0
c0de35b0:	2015      	movs	r0, #21
c0de35b2:	7048      	strb	r0, [r1, #1]
c0de35b4:	eb09 0007 	add.w	r0, r9, r7
c0de35b8:	7840      	ldrb	r0, [r0, #1]
c0de35ba:	b003      	add	sp, #12
c0de35bc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de35c0:	f003 bf7a 	b.w	c0de74b8 <os_io_tx_cmd>
c0de35c4:	4f25      	ldr	r7, [pc, #148]	@ (c0de365c <io_legacy_apdu_rx+0x1ac>)
c0de35c6:	444e      	add	r6, r9
c0de35c8:	3c01      	subs	r4, #1
c0de35ca:	1c71      	adds	r1, r6, #1
c0de35cc:	4622      	mov	r2, r4
c0de35ce:	eb09 0007 	add.w	r0, r9, r7
c0de35d2:	f004 f88f 	bl	c0de76f4 <__aeabi_memcpy>
c0de35d6:	7870      	ldrb	r0, [r6, #1]
c0de35d8:	281a      	cmp	r0, #26
c0de35da:	d107      	bne.n	c0de35ec <io_legacy_apdu_rx+0x13c>
c0de35dc:	eb09 0007 	add.w	r0, r9, r7
c0de35e0:	4621      	mov	r1, r4
c0de35e2:	b003      	add	sp, #12
c0de35e4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de35e8:	f7ff bf3f 	b.w	c0de346a <io_process_itc_ux_event>
c0de35ec:	b1e5      	cbz	r5, c0de3628 <io_legacy_apdu_rx+0x178>
c0de35ee:	2000      	movs	r0, #0
c0de35f0:	2400      	movs	r4, #0
c0de35f2:	f003 f89d 	bl	c0de6730 <io_event>
c0de35f6:	e022      	b.n	c0de363e <io_legacy_apdu_rx+0x18e>
c0de35f8:	2004      	movs	r0, #4
c0de35fa:	e008      	b.n	c0de360e <io_legacy_apdu_rx+0x15e>
c0de35fc:	2007      	movs	r0, #7
c0de35fe:	e006      	b.n	c0de360e <io_legacy_apdu_rx+0x15e>
c0de3600:	2002      	movs	r0, #2
c0de3602:	e004      	b.n	c0de360e <io_legacy_apdu_rx+0x15e>
c0de3604:	2006      	movs	r0, #6
c0de3606:	e002      	b.n	c0de360e <io_legacy_apdu_rx+0x15e>
c0de3608:	2003      	movs	r0, #3
c0de360a:	e000      	b.n	c0de360e <io_legacy_apdu_rx+0x15e>
c0de360c:	2005      	movs	r0, #5
c0de360e:	4912      	ldr	r1, [pc, #72]	@ (c0de3658 <io_legacy_apdu_rx+0x1a8>)
c0de3610:	3c01      	subs	r4, #1
c0de3612:	4622      	mov	r2, r4
c0de3614:	4449      	add	r1, r9
c0de3616:	7188      	strb	r0, [r1, #6]
c0de3618:	480e      	ldr	r0, [pc, #56]	@ (c0de3654 <io_legacy_apdu_rx+0x1a4>)
c0de361a:	eb09 0106 	add.w	r1, r9, r6
c0de361e:	3101      	adds	r1, #1
c0de3620:	4448      	add	r0, r9
c0de3622:	f004 f867 	bl	c0de76f4 <__aeabi_memcpy>
c0de3626:	e00a      	b.n	c0de363e <io_legacy_apdu_rx+0x18e>
c0de3628:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de362c:	2815      	cmp	r0, #21
c0de362e:	d8de      	bhi.n	c0de35ee <io_legacy_apdu_rx+0x13e>
c0de3630:	2101      	movs	r1, #1
c0de3632:	fa01 f000 	lsl.w	r0, r1, r0
c0de3636:	490a      	ldr	r1, [pc, #40]	@ (c0de3660 <io_legacy_apdu_rx+0x1b0>)
c0de3638:	4208      	tst	r0, r1
c0de363a:	d0d8      	beq.n	c0de35ee <io_legacy_apdu_rx+0x13e>
c0de363c:	2400      	movs	r4, #0
c0de363e:	4620      	mov	r0, r4
c0de3640:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3642:	20ff      	movs	r0, #255	@ 0xff
c0de3644:	f003 ff1a 	bl	c0de747c <os_sched_exit>
c0de3648:	00000525 	.word	0x00000525
c0de364c:	007f0001 	.word	0x007f0001
c0de3650:	0000063e 	.word	0x0000063e
c0de3654:	00000414 	.word	0x00000414
c0de3658:	00000636 	.word	0x00000636
c0de365c:	000007b8 	.word	0x000007b8
c0de3660:	00205020 	.word	0x00205020

c0de3664 <io_seproxyhal_init>:
c0de3664:	b570      	push	{r4, r5, r6, lr}
c0de3666:	b08a      	sub	sp, #40	@ 0x28
c0de3668:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3698 <io_seproxyhal_init+0x34>)
c0de366a:	2600      	movs	r6, #0
c0de366c:	2118      	movs	r1, #24
c0de366e:	eb09 0005 	add.w	r0, r9, r5
c0de3672:	7046      	strb	r6, [r0, #1]
c0de3674:	ac01      	add	r4, sp, #4
c0de3676:	4620      	mov	r0, r4
c0de3678:	f004 f846 	bl	c0de7708 <__aeabi_memclr>
c0de367c:	2011      	movs	r0, #17
c0de367e:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3682:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3686:	4620      	mov	r0, r4
c0de3688:	f003 ff02 	bl	c0de7490 <os_io_init>
c0de368c:	2001      	movs	r0, #1
c0de368e:	f809 0005 	strb.w	r0, [r9, r5]
c0de3692:	b00a      	add	sp, #40	@ 0x28
c0de3694:	bd70      	pop	{r4, r5, r6, pc}
c0de3696:	bf00      	nop
c0de3698:	0000063e 	.word	0x0000063e

c0de369c <getTextMaxLenAndWidth>:
c0de369c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36a0:	461c      	mov	r4, r3
c0de36a2:	4690      	mov	r8, r2
c0de36a4:	460e      	mov	r6, r1
c0de36a6:	4682      	mov	sl, r0
c0de36a8:	f003 fb49 	bl	c0de6d3e <nbgl_getFont>
c0de36ac:	4607      	mov	r7, r0
c0de36ae:	4630      	mov	r0, r6
c0de36b0:	f004 f886 	bl	c0de77c0 <strlen>
c0de36b4:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de36b8:	4605      	mov	r5, r0
c0de36ba:	2000      	movs	r0, #0
c0de36bc:	f8ab 0000 	strh.w	r0, [fp]
c0de36c0:	8020      	strh	r0, [r4, #0]
c0de36c2:	0428      	lsls	r0, r5, #16
c0de36c4:	d03e      	beq.n	c0de3744 <getTextMaxLenAndWidth+0xa8>
c0de36c6:	7830      	ldrb	r0, [r6, #0]
c0de36c8:	3d01      	subs	r5, #1
c0de36ca:	2808      	cmp	r0, #8
c0de36cc:	d025      	beq.n	c0de371a <getTextMaxLenAndWidth+0x7e>
c0de36ce:	280c      	cmp	r0, #12
c0de36d0:	d035      	beq.n	c0de373e <getTextMaxLenAndWidth+0xa2>
c0de36d2:	280a      	cmp	r0, #10
c0de36d4:	d033      	beq.n	c0de373e <getTextMaxLenAndWidth+0xa2>
c0de36d6:	7af9      	ldrb	r1, [r7, #11]
c0de36d8:	4288      	cmp	r0, r1
c0de36da:	d32d      	bcc.n	c0de3738 <getTextMaxLenAndWidth+0x9c>
c0de36dc:	7b3a      	ldrb	r2, [r7, #12]
c0de36de:	4290      	cmp	r0, r2
c0de36e0:	d82a      	bhi.n	c0de3738 <getTextMaxLenAndWidth+0x9c>
c0de36e2:	1a40      	subs	r0, r0, r1
c0de36e4:	6939      	ldr	r1, [r7, #16]
c0de36e6:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de36ea:	f003 fd01 	bl	c0de70f0 <pic>
c0de36ee:	7900      	ldrb	r0, [r0, #4]
c0de36f0:	7a39      	ldrb	r1, [r7, #8]
c0de36f2:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de36f6:	1a40      	subs	r0, r0, r1
c0de36f8:	0601      	lsls	r1, r0, #24
c0de36fa:	d01d      	beq.n	c0de3738 <getTextMaxLenAndWidth+0x9c>
c0de36fc:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3700:	b2c0      	uxtb	r0, r0
c0de3702:	4401      	add	r1, r0
c0de3704:	4541      	cmp	r1, r8
c0de3706:	d81d      	bhi.n	c0de3744 <getTextMaxLenAndWidth+0xa8>
c0de3708:	8821      	ldrh	r1, [r4, #0]
c0de370a:	3101      	adds	r1, #1
c0de370c:	8021      	strh	r1, [r4, #0]
c0de370e:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3712:	4408      	add	r0, r1
c0de3714:	f8ab 0000 	strh.w	r0, [fp]
c0de3718:	e7d3      	b.n	c0de36c2 <getTextMaxLenAndWidth+0x26>
c0de371a:	fa5f f08a 	uxtb.w	r0, sl
c0de371e:	280a      	cmp	r0, #10
c0de3720:	d004      	beq.n	c0de372c <getTextMaxLenAndWidth+0x90>
c0de3722:	2808      	cmp	r0, #8
c0de3724:	d108      	bne.n	c0de3738 <getTextMaxLenAndWidth+0x9c>
c0de3726:	f04f 0a0a 	mov.w	sl, #10
c0de372a:	e001      	b.n	c0de3730 <getTextMaxLenAndWidth+0x94>
c0de372c:	f04f 0a08 	mov.w	sl, #8
c0de3730:	4650      	mov	r0, sl
c0de3732:	f003 fb04 	bl	c0de6d3e <nbgl_getFont>
c0de3736:	4607      	mov	r7, r0
c0de3738:	8820      	ldrh	r0, [r4, #0]
c0de373a:	3001      	adds	r0, #1
c0de373c:	e7c0      	b.n	c0de36c0 <getTextMaxLenAndWidth+0x24>
c0de373e:	8820      	ldrh	r0, [r4, #0]
c0de3740:	3001      	adds	r0, #1
c0de3742:	8020      	strh	r0, [r4, #0]
c0de3744:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3748 <nbgl_layoutGet>:
c0de3748:	b570      	push	{r4, r5, r6, lr}
c0de374a:	4605      	mov	r5, r0
c0de374c:	7800      	ldrb	r0, [r0, #0]
c0de374e:	b148      	cbz	r0, c0de3764 <nbgl_layoutGet+0x1c>
c0de3750:	4819      	ldr	r0, [pc, #100]	@ (c0de37b8 <nbgl_layoutGet+0x70>)
c0de3752:	eb09 0100 	add.w	r1, r9, r0
c0de3756:	7b8a      	ldrb	r2, [r1, #14]
c0de3758:	b152      	cbz	r2, c0de3770 <nbgl_layoutGet+0x28>
c0de375a:	4448      	add	r0, r9
c0de375c:	7e81      	ldrb	r1, [r0, #26]
c0de375e:	b151      	cbz	r1, c0de3776 <nbgl_layoutGet+0x2e>
c0de3760:	2400      	movs	r4, #0
c0de3762:	e026      	b.n	c0de37b2 <nbgl_layoutGet+0x6a>
c0de3764:	4814      	ldr	r0, [pc, #80]	@ (c0de37b8 <nbgl_layoutGet+0x70>)
c0de3766:	eb09 0400 	add.w	r4, r9, r0
c0de376a:	2000      	movs	r0, #0
c0de376c:	70a0      	strb	r0, [r4, #2]
c0de376e:	e004      	b.n	c0de377a <nbgl_layoutGet+0x32>
c0de3770:	f101 040c 	add.w	r4, r1, #12
c0de3774:	e001      	b.n	c0de377a <nbgl_layoutGet+0x32>
c0de3776:	f100 0418 	add.w	r4, r0, #24
c0de377a:	2000      	movs	r0, #0
c0de377c:	4626      	mov	r6, r4
c0de377e:	60a0      	str	r0, [r4, #8]
c0de3780:	6020      	str	r0, [r4, #0]
c0de3782:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3786:	6868      	ldr	r0, [r5, #4]
c0de3788:	f003 fcb2 	bl	c0de70f0 <pic>
c0de378c:	60a0      	str	r0, [r4, #8]
c0de378e:	7828      	ldrb	r0, [r5, #0]
c0de3790:	f105 0208 	add.w	r2, r5, #8
c0de3794:	7020      	strb	r0, [r4, #0]
c0de3796:	4b09      	ldr	r3, [pc, #36]	@ (c0de37bc <nbgl_layoutGet+0x74>)
c0de3798:	447b      	add	r3, pc
c0de379a:	b120      	cbz	r0, c0de37a6 <nbgl_layoutGet+0x5e>
c0de379c:	4630      	mov	r0, r6
c0de379e:	2107      	movs	r1, #7
c0de37a0:	f003 faaf 	bl	c0de6d02 <nbgl_screenPush>
c0de37a4:	e004      	b.n	c0de37b0 <nbgl_layoutGet+0x68>
c0de37a6:	4630      	mov	r0, r6
c0de37a8:	2107      	movs	r1, #7
c0de37aa:	f003 faa5 	bl	c0de6cf8 <nbgl_screenSet>
c0de37ae:	2000      	movs	r0, #0
c0de37b0:	7060      	strb	r0, [r4, #1]
c0de37b2:	4620      	mov	r0, r4
c0de37b4:	bd70      	pop	{r4, r5, r6, pc}
c0de37b6:	bf00      	nop
c0de37b8:	00000640 	.word	0x00000640
c0de37bc:	00000025 	.word	0x00000025

c0de37c0 <buttonCallback>:
c0de37c0:	b5b0      	push	{r4, r5, r7, lr}
c0de37c2:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de37c6:	4811      	ldr	r0, [pc, #68]	@ (c0de380c <buttonCallback+0x4c>)
c0de37c8:	2302      	movs	r3, #2
c0de37ca:	1c5c      	adds	r4, r3, #1
c0de37cc:	d01d      	beq.n	c0de380a <buttonCallback+0x4a>
c0de37ce:	b2dc      	uxtb	r4, r3
c0de37d0:	eb09 0500 	add.w	r5, r9, r0
c0de37d4:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de37d8:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de37dc:	786d      	ldrb	r5, [r5, #1]
c0de37de:	42aa      	cmp	r2, r5
c0de37e0:	d105      	bne.n	c0de37ee <buttonCallback+0x2e>
c0de37e2:	eb09 0500 	add.w	r5, r9, r0
c0de37e6:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de37ea:	78ad      	ldrb	r5, [r5, #2]
c0de37ec:	b90d      	cbnz	r5, c0de37f2 <buttonCallback+0x32>
c0de37ee:	3b01      	subs	r3, #1
c0de37f0:	e7eb      	b.n	c0de37ca <buttonCallback+0xa>
c0de37f2:	eb09 0200 	add.w	r2, r9, r0
c0de37f6:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de37fa:	6892      	ldr	r2, [r2, #8]
c0de37fc:	b12a      	cbz	r2, c0de380a <buttonCallback+0x4a>
c0de37fe:	4448      	add	r0, r9
c0de3800:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3804:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3808:	4710      	bx	r2
c0de380a:	bdb0      	pop	{r4, r5, r7, pc}
c0de380c:	00000640 	.word	0x00000640

c0de3810 <nbgl_layoutAddNavigation>:
c0de3810:	b570      	push	{r4, r5, r6, lr}
c0de3812:	2800      	cmp	r0, #0
c0de3814:	d04d      	beq.n	c0de38b2 <nbgl_layoutAddNavigation+0xa2>
c0de3816:	460d      	mov	r5, r1
c0de3818:	7849      	ldrb	r1, [r1, #1]
c0de381a:	4604      	mov	r4, r0
c0de381c:	07c8      	lsls	r0, r1, #31
c0de381e:	d022      	beq.n	c0de3866 <nbgl_layoutAddNavigation+0x56>
c0de3820:	7861      	ldrb	r1, [r4, #1]
c0de3822:	2002      	movs	r0, #2
c0de3824:	f003 fa81 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3828:	782a      	ldrb	r2, [r5, #0]
c0de382a:	7869      	ldrb	r1, [r5, #1]
c0de382c:	4b23      	ldr	r3, [pc, #140]	@ (c0de38bc <nbgl_layoutAddNavigation+0xac>)
c0de382e:	4e24      	ldr	r6, [pc, #144]	@ (c0de38c0 <nbgl_layoutAddNavigation+0xb0>)
c0de3830:	2a00      	cmp	r2, #0
c0de3832:	447b      	add	r3, pc
c0de3834:	447e      	add	r6, pc
c0de3836:	4602      	mov	r2, r0
c0de3838:	bf08      	it	eq
c0de383a:	461e      	moveq	r6, r3
c0de383c:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3840:	0e33      	lsrs	r3, r6, #24
c0de3842:	70d3      	strb	r3, [r2, #3]
c0de3844:	0c33      	lsrs	r3, r6, #16
c0de3846:	7093      	strb	r3, [r2, #2]
c0de3848:	0a32      	lsrs	r2, r6, #8
c0de384a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de384e:	6862      	ldr	r2, [r4, #4]
c0de3850:	78a3      	ldrb	r3, [r4, #2]
c0de3852:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3856:	2203      	movs	r2, #3
c0de3858:	77c2      	strb	r2, [r0, #31]
c0de385a:	2204      	movs	r2, #4
c0de385c:	7582      	strb	r2, [r0, #22]
c0de385e:	2200      	movs	r2, #0
c0de3860:	7242      	strb	r2, [r0, #9]
c0de3862:	1c58      	adds	r0, r3, #1
c0de3864:	70a0      	strb	r0, [r4, #2]
c0de3866:	0788      	lsls	r0, r1, #30
c0de3868:	f04f 0600 	mov.w	r6, #0
c0de386c:	d523      	bpl.n	c0de38b6 <nbgl_layoutAddNavigation+0xa6>
c0de386e:	7861      	ldrb	r1, [r4, #1]
c0de3870:	2002      	movs	r0, #2
c0de3872:	f003 fa5a 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3876:	7829      	ldrb	r1, [r5, #0]
c0de3878:	4a12      	ldr	r2, [pc, #72]	@ (c0de38c4 <nbgl_layoutAddNavigation+0xb4>)
c0de387a:	4b13      	ldr	r3, [pc, #76]	@ (c0de38c8 <nbgl_layoutAddNavigation+0xb8>)
c0de387c:	2900      	cmp	r1, #0
c0de387e:	447a      	add	r2, pc
c0de3880:	447b      	add	r3, pc
c0de3882:	4601      	mov	r1, r0
c0de3884:	bf08      	it	eq
c0de3886:	4613      	moveq	r3, r2
c0de3888:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de388c:	0e1a      	lsrs	r2, r3, #24
c0de388e:	7246      	strb	r6, [r0, #9]
c0de3890:	70ca      	strb	r2, [r1, #3]
c0de3892:	0c1a      	lsrs	r2, r3, #16
c0de3894:	708a      	strb	r2, [r1, #2]
c0de3896:	0a19      	lsrs	r1, r3, #8
c0de3898:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de389c:	6861      	ldr	r1, [r4, #4]
c0de389e:	78a2      	ldrb	r2, [r4, #2]
c0de38a0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de38a4:	2103      	movs	r1, #3
c0de38a6:	77c1      	strb	r1, [r0, #31]
c0de38a8:	2106      	movs	r1, #6
c0de38aa:	7581      	strb	r1, [r0, #22]
c0de38ac:	1c50      	adds	r0, r2, #1
c0de38ae:	70a0      	strb	r0, [r4, #2]
c0de38b0:	e001      	b.n	c0de38b6 <nbgl_layoutAddNavigation+0xa6>
c0de38b2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de38b6:	4630      	mov	r0, r6
c0de38b8:	bd70      	pop	{r4, r5, r6, pc}
c0de38ba:	bf00      	nop
c0de38bc:	000040f4 	.word	0x000040f4
c0de38c0:	00004131 	.word	0x00004131
c0de38c4:	000040d9 	.word	0x000040d9
c0de38c8:	00004098 	.word	0x00004098

c0de38cc <nbgl_layoutAddText>:
c0de38cc:	2800      	cmp	r0, #0
c0de38ce:	f000 8140 	beq.w	c0de3b52 <nbgl_layoutAddText+0x286>
c0de38d2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de38d6:	b088      	sub	sp, #32
c0de38d8:	460e      	mov	r6, r1
c0de38da:	7841      	ldrb	r1, [r0, #1]
c0de38dc:	4605      	mov	r5, r0
c0de38de:	2001      	movs	r0, #1
c0de38e0:	4617      	mov	r7, r2
c0de38e2:	461c      	mov	r4, r3
c0de38e4:	f003 fa21 	bl	c0de6d2a <nbgl_objPoolGet>
c0de38e8:	4680      	mov	r8, r0
c0de38ea:	2003      	movs	r0, #3
c0de38ec:	2f00      	cmp	r7, #0
c0de38ee:	bf08      	it	eq
c0de38f0:	2001      	moveq	r0, #1
c0de38f2:	7869      	ldrb	r1, [r5, #1]
c0de38f4:	f888 0020 	strb.w	r0, [r8, #32]
c0de38f8:	f003 fa1c 	bl	c0de6d34 <nbgl_containerPoolGet>
c0de38fc:	4641      	mov	r1, r8
c0de38fe:	0e02      	lsrs	r2, r0, #24
c0de3900:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3904:	f04f 0b00 	mov.w	fp, #0
c0de3908:	9704      	str	r7, [sp, #16]
c0de390a:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de390e:	f888 a004 	strb.w	sl, [r8, #4]
c0de3912:	f888 b005 	strb.w	fp, [r8, #5]
c0de3916:	70ca      	strb	r2, [r1, #3]
c0de3918:	0c02      	lsrs	r2, r0, #16
c0de391a:	0a00      	lsrs	r0, r0, #8
c0de391c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3920:	708a      	strb	r2, [r1, #2]
c0de3922:	2004      	movs	r0, #4
c0de3924:	7869      	ldrb	r1, [r5, #1]
c0de3926:	f003 fa00 	bl	c0de6d2a <nbgl_objPoolGet>
c0de392a:	4607      	mov	r7, r0
c0de392c:	2003      	movs	r0, #3
c0de392e:	77f8      	strb	r0, [r7, #31]
c0de3930:	4630      	mov	r0, r6
c0de3932:	f003 fbdd 	bl	c0de70f0 <pic>
c0de3936:	4601      	mov	r1, r0
c0de3938:	2008      	movs	r0, #8
c0de393a:	f887 a004 	strb.w	sl, [r7, #4]
c0de393e:	f887 b005 	strb.w	fp, [r7, #5]
c0de3942:	9403      	str	r4, [sp, #12]
c0de3944:	f04f 0a01 	mov.w	sl, #1
c0de3948:	2c00      	cmp	r4, #0
c0de394a:	bf08      	it	eq
c0de394c:	200a      	moveq	r0, #10
c0de394e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3952:	2205      	movs	r2, #5
c0de3954:	0e0b      	lsrs	r3, r1, #24
c0de3956:	f887 2020 	strb.w	r2, [r7, #32]
c0de395a:	463a      	mov	r2, r7
c0de395c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3960:	70d3      	strb	r3, [r2, #3]
c0de3962:	0c0b      	lsrs	r3, r1, #16
c0de3964:	7093      	strb	r3, [r2, #2]
c0de3966:	0a0a      	lsrs	r2, r1, #8
c0de3968:	2301      	movs	r3, #1
c0de396a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de396e:	2272      	movs	r2, #114	@ 0x72
c0de3970:	f003 f9ef 	bl	c0de6d52 <nbgl_getTextNbLinesInWidth>
c0de3974:	4606      	mov	r6, r0
c0de3976:	2805      	cmp	r0, #5
c0de3978:	9505      	str	r5, [sp, #20]
c0de397a:	d31d      	bcc.n	c0de39b8 <nbgl_layoutAddText+0xec>
c0de397c:	463e      	mov	r6, r7
c0de397e:	2004      	movs	r0, #4
c0de3980:	f10d 051e 	add.w	r5, sp, #30
c0de3984:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de3988:	7872      	ldrb	r2, [r6, #1]
c0de398a:	78b3      	ldrb	r3, [r6, #2]
c0de398c:	78f4      	ldrb	r4, [r6, #3]
c0de398e:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3992:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3996:	9500      	str	r5, [sp, #0]
c0de3998:	9d05      	ldr	r5, [sp, #20]
c0de399a:	f8cd a004 	str.w	sl, [sp, #4]
c0de399e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de39a2:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de39a6:	2304      	movs	r3, #4
c0de39a8:	f000 fc6d 	bl	c0de4286 <OUTLINED_FUNCTION_5>
c0de39ac:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de39b0:	7130      	strb	r0, [r6, #4]
c0de39b2:	0a00      	lsrs	r0, r0, #8
c0de39b4:	7170      	strb	r0, [r6, #5]
c0de39b6:	2604      	movs	r6, #4
c0de39b8:	f000 fc72 	bl	c0de42a0 <OUTLINED_FUNCTION_7>
c0de39bc:	4683      	mov	fp, r0
c0de39be:	2002      	movs	r0, #2
c0de39c0:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de39c4:	9c04      	ldr	r4, [sp, #16]
c0de39c6:	75b8      	strb	r0, [r7, #22]
c0de39c8:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de39cc:	2c00      	cmp	r4, #0
c0de39ce:	fb06 fa00 	mul.w	sl, r6, r0
c0de39d2:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de39d6:	f887 a006 	strb.w	sl, [r7, #6]
c0de39da:	71f8      	strb	r0, [r7, #7]
c0de39dc:	4640      	mov	r0, r8
c0de39de:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de39e2:	7842      	ldrb	r2, [r0, #1]
c0de39e4:	7883      	ldrb	r3, [r0, #2]
c0de39e6:	78c0      	ldrb	r0, [r0, #3]
c0de39e8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de39ec:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de39f0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de39f4:	6007      	str	r7, [r0, #0]
c0de39f6:	f000 8111 	beq.w	c0de3c1c <nbgl_layoutAddText+0x350>
c0de39fa:	9803      	ldr	r0, [sp, #12]
c0de39fc:	7869      	ldrb	r1, [r5, #1]
c0de39fe:	2802      	cmp	r0, #2
c0de3a00:	f040 80a9 	bne.w	c0de3b56 <nbgl_layoutAddText+0x28a>
c0de3a04:	2005      	movs	r0, #5
c0de3a06:	2505      	movs	r5, #5
c0de3a08:	f003 f98f 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3a0c:	2600      	movs	r6, #0
c0de3a0e:	4607      	mov	r7, r0
c0de3a10:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3a14:	2001      	movs	r0, #1
c0de3a16:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3a1a:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3a1e:	f000 fc46 	bl	c0de42ae <OUTLINED_FUNCTION_9>
c0de3a22:	4620      	mov	r0, r4
c0de3a24:	f003 fb64 	bl	c0de70f0 <pic>
c0de3a28:	4601      	mov	r1, r0
c0de3a2a:	200e      	movs	r0, #14
c0de3a2c:	71fe      	strb	r6, [r7, #7]
c0de3a2e:	75bd      	strb	r5, [r7, #22]
c0de3a30:	71b8      	strb	r0, [r7, #6]
c0de3a32:	2008      	movs	r0, #8
c0de3a34:	0e0a      	lsrs	r2, r1, #24
c0de3a36:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3a3a:	4638      	mov	r0, r7
c0de3a3c:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3a40:	f000 fc15 	bl	c0de426e <OUTLINED_FUNCTION_3>
c0de3a44:	2865      	cmp	r0, #101	@ 0x65
c0de3a46:	f240 80d9 	bls.w	c0de3bfc <nbgl_layoutAddText+0x330>
c0de3a4a:	46bb      	mov	fp, r7
c0de3a4c:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3a50:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3a54:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3a58:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3a5c:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3a60:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3a64:	ae06      	add	r6, sp, #24
c0de3a66:	9600      	str	r6, [sp, #0]
c0de3a68:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3a6c:	f10d 031a 	add.w	r3, sp, #26
c0de3a70:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3a74:	2266      	movs	r2, #102	@ 0x66
c0de3a76:	f7ff fe11 	bl	c0de369c <getTextMaxLenAndWidth>
c0de3a7a:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3a7e:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3a82:	9003      	str	r0, [sp, #12]
c0de3a84:	300c      	adds	r0, #12
c0de3a86:	9602      	str	r6, [sp, #8]
c0de3a88:	7138      	strb	r0, [r7, #4]
c0de3a8a:	0a00      	lsrs	r0, r0, #8
c0de3a8c:	7178      	strb	r0, [r7, #5]
c0de3a8e:	486e      	ldr	r0, [pc, #440]	@ (c0de3c48 <nbgl_layoutAddText+0x37c>)
c0de3a90:	2e13      	cmp	r6, #19
c0de3a92:	bf28      	it	cs
c0de3a94:	2613      	movcs	r6, #19
c0de3a96:	f89b 1000 	ldrb.w	r1, [fp]
c0de3a9a:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3a9e:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3aa2:	eb09 0400 	add.w	r4, r9, r0
c0de3aa6:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3aaa:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3aae:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3ab2:	4632      	mov	r2, r6
c0de3ab4:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3ab8:	4620      	mov	r0, r4
c0de3aba:	f003 fe1b 	bl	c0de76f4 <__aeabi_memcpy>
c0de3abe:	2500      	movs	r5, #0
c0de3ac0:	4620      	mov	r0, r4
c0de3ac2:	55a5      	strb	r5, [r4, r6]
c0de3ac4:	f003 fb14 	bl	c0de70f0 <pic>
c0de3ac8:	2101      	movs	r1, #1
c0de3aca:	f88b 0000 	strb.w	r0, [fp]
c0de3ace:	76bd      	strb	r5, [r7, #26]
c0de3ad0:	9d05      	ldr	r5, [sp, #20]
c0de3ad2:	7679      	strb	r1, [r7, #25]
c0de3ad4:	0e01      	lsrs	r1, r0, #24
c0de3ad6:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3ada:	0c01      	lsrs	r1, r0, #16
c0de3adc:	0a00      	lsrs	r0, r0, #8
c0de3ade:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3ae2:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3ae6:	4640      	mov	r0, r8
c0de3ae8:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3aec:	7842      	ldrb	r2, [r0, #1]
c0de3aee:	7883      	ldrb	r3, [r0, #2]
c0de3af0:	78c0      	ldrb	r0, [r0, #3]
c0de3af2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3af6:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3afa:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3afe:	6047      	str	r7, [r0, #4]
c0de3b00:	9803      	ldr	r0, [sp, #12]
c0de3b02:	2800      	cmp	r0, #0
c0de3b04:	f000 8088 	beq.w	c0de3c18 <nbgl_layoutAddText+0x34c>
c0de3b08:	7869      	ldrb	r1, [r5, #1]
c0de3b0a:	2005      	movs	r0, #5
c0de3b0c:	2605      	movs	r6, #5
c0de3b0e:	f003 f90c 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3b12:	2500      	movs	r5, #0
c0de3b14:	4607      	mov	r7, r0
c0de3b16:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3b1a:	2001      	movs	r0, #1
c0de3b1c:	f000 fbc7 	bl	c0de42ae <OUTLINED_FUNCTION_9>
c0de3b20:	9804      	ldr	r0, [sp, #16]
c0de3b22:	f003 fae5 	bl	c0de70f0 <pic>
c0de3b26:	210e      	movs	r1, #14
c0de3b28:	71fd      	strb	r5, [r7, #7]
c0de3b2a:	71b9      	strb	r1, [r7, #6]
c0de3b2c:	2108      	movs	r1, #8
c0de3b2e:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3b32:	9902      	ldr	r1, [sp, #8]
c0de3b34:	4401      	add	r1, r0
c0de3b36:	4638      	mov	r0, r7
c0de3b38:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3b3c:	0e0a      	lsrs	r2, r1, #24
c0de3b3e:	f000 fb96 	bl	c0de426e <OUTLINED_FUNCTION_3>
c0de3b42:	300c      	adds	r0, #12
c0de3b44:	210f      	movs	r1, #15
c0de3b46:	75be      	strb	r6, [r7, #22]
c0de3b48:	7138      	strb	r0, [r7, #4]
c0de3b4a:	0a00      	lsrs	r0, r0, #8
c0de3b4c:	7178      	strb	r0, [r7, #5]
c0de3b4e:	2002      	movs	r0, #2
c0de3b50:	e05a      	b.n	c0de3c08 <nbgl_layoutAddText+0x33c>
c0de3b52:	f000 bba9 	b.w	c0de42a8 <OUTLINED_FUNCTION_8>
c0de3b56:	f000 fb93 	bl	c0de4280 <OUTLINED_FUNCTION_4>
c0de3b5a:	2603      	movs	r6, #3
c0de3b5c:	4607      	mov	r7, r0
c0de3b5e:	77c6      	strb	r6, [r0, #31]
c0de3b60:	4620      	mov	r0, r4
c0de3b62:	f003 fac5 	bl	c0de70f0 <pic>
c0de3b66:	4601      	mov	r1, r0
c0de3b68:	2072      	movs	r0, #114	@ 0x72
c0de3b6a:	2400      	movs	r4, #0
c0de3b6c:	2301      	movs	r3, #1
c0de3b6e:	7138      	strb	r0, [r7, #4]
c0de3b70:	2001      	movs	r0, #1
c0de3b72:	0e0a      	lsrs	r2, r1, #24
c0de3b74:	717c      	strb	r4, [r7, #5]
c0de3b76:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3b7a:	200a      	movs	r0, #10
c0de3b7c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3b80:	f000 fb5b 	bl	c0de423a <OUTLINED_FUNCTION_1>
c0de3b84:	2804      	cmp	r0, #4
c0de3b86:	d31e      	bcc.n	c0de3bc6 <nbgl_layoutAddText+0x2fa>
c0de3b88:	463d      	mov	r5, r7
c0de3b8a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3b8e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3b92:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3b96:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3b9a:	78ab      	ldrb	r3, [r5, #2]
c0de3b9c:	78e9      	ldrb	r1, [r5, #3]
c0de3b9e:	aa07      	add	r2, sp, #28
c0de3ba0:	9200      	str	r2, [sp, #0]
c0de3ba2:	2201      	movs	r2, #1
c0de3ba4:	9201      	str	r2, [sp, #4]
c0de3ba6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3baa:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3bae:	2303      	movs	r3, #3
c0de3bb0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3bb4:	2272      	movs	r2, #114	@ 0x72
c0de3bb6:	f003 f8db 	bl	c0de6d70 <nbgl_getTextMaxLenInNbLines>
c0de3bba:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3bbe:	7128      	strb	r0, [r5, #4]
c0de3bc0:	0a00      	lsrs	r0, r0, #8
c0de3bc2:	7168      	strb	r0, [r5, #5]
c0de3bc4:	2003      	movs	r0, #3
c0de3bc6:	9903      	ldr	r1, [sp, #12]
c0de3bc8:	2900      	cmp	r1, #0
c0de3bca:	bf08      	it	eq
c0de3bcc:	4606      	moveq	r6, r0
c0de3bce:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3bd2:	76bc      	strb	r4, [r7, #26]
c0de3bd4:	75bc      	strb	r4, [r7, #22]
c0de3bd6:	fb06 f100 	mul.w	r1, r6, r0
c0de3bda:	fb06 a000 	mla	r0, r6, r0, sl
c0de3bde:	71b9      	strb	r1, [r7, #6]
c0de3be0:	0a09      	lsrs	r1, r1, #8
c0de3be2:	71f9      	strb	r1, [r7, #7]
c0de3be4:	2102      	movs	r1, #2
c0de3be6:	f100 0a02 	add.w	sl, r0, #2
c0de3bea:	7679      	strb	r1, [r7, #25]
c0de3bec:	2105      	movs	r1, #5
c0de3bee:	f887 1020 	strb.w	r1, [r7, #32]
c0de3bf2:	4641      	mov	r1, r8
c0de3bf4:	f000 fb2e 	bl	c0de4254 <OUTLINED_FUNCTION_2>
c0de3bf8:	604f      	str	r7, [r1, #4]
c0de3bfa:	e00f      	b.n	c0de3c1c <nbgl_layoutAddText+0x350>
c0de3bfc:	300c      	adds	r0, #12
c0de3bfe:	2108      	movs	r1, #8
c0de3c00:	7138      	strb	r0, [r7, #4]
c0de3c02:	0a00      	lsrs	r0, r0, #8
c0de3c04:	7178      	strb	r0, [r7, #5]
c0de3c06:	2001      	movs	r0, #1
c0de3c08:	2200      	movs	r2, #0
c0de3c0a:	7679      	strb	r1, [r7, #25]
c0de3c0c:	4641      	mov	r1, r8
c0de3c0e:	76ba      	strb	r2, [r7, #26]
c0de3c10:	f000 fb20 	bl	c0de4254 <OUTLINED_FUNCTION_2>
c0de3c14:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3c18:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3c1c:	6868      	ldr	r0, [r5, #4]
c0de3c1e:	78a9      	ldrb	r1, [r5, #2]
c0de3c20:	2205      	movs	r2, #5
c0de3c22:	f888 2016 	strb.w	r2, [r8, #22]
c0de3c26:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3c2a:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3c2e:	2000      	movs	r0, #0
c0de3c30:	3101      	adds	r1, #1
c0de3c32:	f888 a006 	strb.w	sl, [r8, #6]
c0de3c36:	f888 2007 	strb.w	r2, [r8, #7]
c0de3c3a:	f888 001f 	strb.w	r0, [r8, #31]
c0de3c3e:	70a9      	strb	r1, [r5, #2]
c0de3c40:	b008      	add	sp, #32
c0de3c42:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c46:	bf00      	nop
c0de3c48:	00000664 	.word	0x00000664

c0de3c4c <nbgl_layoutAddMenuList>:
c0de3c4c:	2800      	cmp	r0, #0
c0de3c4e:	d04f      	beq.n	c0de3cf0 <nbgl_layoutAddMenuList+0xa4>
c0de3c50:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3c54:	460c      	mov	r4, r1
c0de3c56:	4605      	mov	r5, r0
c0de3c58:	2700      	movs	r7, #0
c0de3c5a:	f04f 0b05 	mov.w	fp, #5
c0de3c5e:	f04f 0803 	mov.w	r8, #3
c0de3c62:	f04f 0a00 	mov.w	sl, #0
c0de3c66:	7920      	ldrb	r0, [r4, #4]
c0de3c68:	4582      	cmp	sl, r0
c0de3c6a:	d23e      	bcs.n	c0de3cea <nbgl_layoutAddMenuList+0x9e>
c0de3c6c:	7960      	ldrb	r0, [r4, #5]
c0de3c6e:	2803      	cmp	r0, #3
c0de3c70:	d302      	bcc.n	c0de3c78 <nbgl_layoutAddMenuList+0x2c>
c0de3c72:	1e81      	subs	r1, r0, #2
c0de3c74:	4551      	cmp	r1, sl
c0de3c76:	dc35      	bgt.n	c0de3ce4 <nbgl_layoutAddMenuList+0x98>
c0de3c78:	3002      	adds	r0, #2
c0de3c7a:	4550      	cmp	r0, sl
c0de3c7c:	d332      	bcc.n	c0de3ce4 <nbgl_layoutAddMenuList+0x98>
c0de3c7e:	7869      	ldrb	r1, [r5, #1]
c0de3c80:	f000 fafe 	bl	c0de4280 <OUTLINED_FUNCTION_4>
c0de3c84:	6821      	ldr	r1, [r4, #0]
c0de3c86:	4606      	mov	r6, r0
c0de3c88:	fa5f f08a 	uxtb.w	r0, sl
c0de3c8c:	4788      	blx	r1
c0de3c8e:	7961      	ldrb	r1, [r4, #5]
c0de3c90:	220a      	movs	r2, #10
c0de3c92:	458a      	cmp	sl, r1
c0de3c94:	bf08      	it	eq
c0de3c96:	2208      	moveq	r2, #8
c0de3c98:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3c9c:	71f7      	strb	r7, [r6, #7]
c0de3c9e:	7177      	strb	r7, [r6, #5]
c0de3ca0:	f886 b020 	strb.w	fp, [r6, #32]
c0de3ca4:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3ca8:	f886 b016 	strb.w	fp, [r6, #22]
c0de3cac:	f886 801f 	strb.w	r8, [r6, #31]
c0de3cb0:	4632      	mov	r2, r6
c0de3cb2:	0e03      	lsrs	r3, r0, #24
c0de3cb4:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3cb8:	70d3      	strb	r3, [r2, #3]
c0de3cba:	0c03      	lsrs	r3, r0, #16
c0de3cbc:	0a00      	lsrs	r0, r0, #8
c0de3cbe:	7093      	strb	r3, [r2, #2]
c0de3cc0:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3cc4:	6868      	ldr	r0, [r5, #4]
c0de3cc6:	78aa      	ldrb	r2, [r5, #2]
c0de3cc8:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3ccc:	200c      	movs	r0, #12
c0de3cce:	71b0      	strb	r0, [r6, #6]
c0de3cd0:	2072      	movs	r0, #114	@ 0x72
c0de3cd2:	7130      	strb	r0, [r6, #4]
c0de3cd4:	ebaa 0001 	sub.w	r0, sl, r1
c0de3cd8:	0901      	lsrs	r1, r0, #4
c0de3cda:	0100      	lsls	r0, r0, #4
c0de3cdc:	7670      	strb	r0, [r6, #25]
c0de3cde:	1c50      	adds	r0, r2, #1
c0de3ce0:	76b1      	strb	r1, [r6, #26]
c0de3ce2:	70a8      	strb	r0, [r5, #2]
c0de3ce4:	f10a 0a01 	add.w	sl, sl, #1
c0de3ce8:	e7bd      	b.n	c0de3c66 <nbgl_layoutAddMenuList+0x1a>
c0de3cea:	2000      	movs	r0, #0
c0de3cec:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3cf0:	f000 bada 	b.w	c0de42a8 <OUTLINED_FUNCTION_8>

c0de3cf4 <nbgl_layoutAddCenteredInfo>:
c0de3cf4:	2800      	cmp	r0, #0
c0de3cf6:	f000 80d9 	beq.w	c0de3eac <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3cfa:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3cfe:	b086      	sub	sp, #24
c0de3d00:	460c      	mov	r4, r1
c0de3d02:	7841      	ldrb	r1, [r0, #1]
c0de3d04:	4682      	mov	sl, r0
c0de3d06:	2001      	movs	r0, #1
c0de3d08:	f003 f80f 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3d0c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d10:	4680      	mov	r8, r0
c0de3d12:	2003      	movs	r0, #3
c0de3d14:	2703      	movs	r7, #3
c0de3d16:	f003 f80d 	bl	c0de6d34 <nbgl_containerPoolGet>
c0de3d1a:	4641      	mov	r1, r8
c0de3d1c:	0e02      	lsrs	r2, r0, #24
c0de3d1e:	f04f 0b00 	mov.w	fp, #0
c0de3d22:	9404      	str	r4, [sp, #16]
c0de3d24:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3d28:	f888 b020 	strb.w	fp, [r8, #32]
c0de3d2c:	70ca      	strb	r2, [r1, #3]
c0de3d2e:	0c02      	lsrs	r2, r0, #16
c0de3d30:	0a00      	lsrs	r0, r0, #8
c0de3d32:	708a      	strb	r2, [r1, #2]
c0de3d34:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3d38:	68a0      	ldr	r0, [r4, #8]
c0de3d3a:	b3c0      	cbz	r0, c0de3dae <nbgl_layoutAddCenteredInfo+0xba>
c0de3d3c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d40:	2002      	movs	r0, #2
c0de3d42:	f002 fff2 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3d46:	4606      	mov	r6, r0
c0de3d48:	77c7      	strb	r7, [r0, #31]
c0de3d4a:	68a0      	ldr	r0, [r4, #8]
c0de3d4c:	f003 f9d0 	bl	c0de70f0 <pic>
c0de3d50:	4631      	mov	r1, r6
c0de3d52:	0e02      	lsrs	r2, r0, #24
c0de3d54:	f886 b013 	strb.w	fp, [r6, #19]
c0de3d58:	f886 b009 	strb.w	fp, [r6, #9]
c0de3d5c:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3d60:	70ca      	strb	r2, [r1, #3]
c0de3d62:	0c02      	lsrs	r2, r0, #16
c0de3d64:	708a      	strb	r2, [r1, #2]
c0de3d66:	0a01      	lsrs	r1, r0, #8
c0de3d68:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3d6c:	4631      	mov	r1, r6
c0de3d6e:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3d72:	f881 b003 	strb.w	fp, [r1, #3]
c0de3d76:	f881 b002 	strb.w	fp, [r1, #2]
c0de3d7a:	4641      	mov	r1, r8
c0de3d7c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3d80:	784f      	ldrb	r7, [r1, #1]
c0de3d82:	788c      	ldrb	r4, [r1, #2]
c0de3d84:	78cd      	ldrb	r5, [r1, #3]
c0de3d86:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3d8a:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3d8e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3d92:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3d96:	9c04      	ldr	r4, [sp, #16]
c0de3d98:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3d9c:	2202      	movs	r2, #2
c0de3d9e:	75b2      	strb	r2, [r6, #22]
c0de3da0:	1c5a      	adds	r2, r3, #1
c0de3da2:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3da6:	7881      	ldrb	r1, [r0, #2]
c0de3da8:	78c0      	ldrb	r0, [r0, #3]
c0de3daa:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3dae:	6820      	ldr	r0, [r4, #0]
c0de3db0:	2800      	cmp	r0, #0
c0de3db2:	f000 80a2 	beq.w	c0de3efa <nbgl_layoutAddCenteredInfo+0x206>
c0de3db6:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3dba:	f000 fa61 	bl	c0de4280 <OUTLINED_FUNCTION_4>
c0de3dbe:	4607      	mov	r7, r0
c0de3dc0:	2003      	movs	r0, #3
c0de3dc2:	77f8      	strb	r0, [r7, #31]
c0de3dc4:	6820      	ldr	r0, [r4, #0]
c0de3dc6:	f003 f993 	bl	c0de70f0 <pic>
c0de3dca:	4601      	mov	r1, r0
c0de3dcc:	2072      	movs	r0, #114	@ 0x72
c0de3dce:	2500      	movs	r5, #0
c0de3dd0:	7138      	strb	r0, [r7, #4]
c0de3dd2:	2005      	movs	r0, #5
c0de3dd4:	0e0a      	lsrs	r2, r1, #24
c0de3dd6:	717d      	strb	r5, [r7, #5]
c0de3dd8:	f887 0020 	strb.w	r0, [r7, #32]
c0de3ddc:	2001      	movs	r0, #1
c0de3dde:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3de2:	4638      	mov	r0, r7
c0de3de4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3de8:	70c2      	strb	r2, [r0, #3]
c0de3dea:	0c0a      	lsrs	r2, r1, #16
c0de3dec:	7082      	strb	r2, [r0, #2]
c0de3dee:	0a08      	lsrs	r0, r1, #8
c0de3df0:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3df4:	2008      	movs	r0, #8
c0de3df6:	7b62      	ldrb	r2, [r4, #13]
c0de3df8:	2a00      	cmp	r2, #0
c0de3dfa:	bf08      	it	eq
c0de3dfc:	200a      	moveq	r0, #10
c0de3dfe:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e02:	2272      	movs	r2, #114	@ 0x72
c0de3e04:	2301      	movs	r3, #1
c0de3e06:	f002 ffa4 	bl	c0de6d52 <nbgl_getTextNbLinesInWidth>
c0de3e0a:	4606      	mov	r6, r0
c0de3e0c:	2805      	cmp	r0, #5
c0de3e0e:	d31e      	bcc.n	c0de3e4e <nbgl_layoutAddCenteredInfo+0x15a>
c0de3e10:	463d      	mov	r5, r7
c0de3e12:	2004      	movs	r0, #4
c0de3e14:	2101      	movs	r1, #1
c0de3e16:	f10d 0416 	add.w	r4, sp, #22
c0de3e1a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3e1e:	786a      	ldrb	r2, [r5, #1]
c0de3e20:	78ab      	ldrb	r3, [r5, #2]
c0de3e22:	78ee      	ldrb	r6, [r5, #3]
c0de3e24:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3e28:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3e2c:	9101      	str	r1, [sp, #4]
c0de3e2e:	9400      	str	r4, [sp, #0]
c0de3e30:	9c04      	ldr	r4, [sp, #16]
c0de3e32:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3e36:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3e3a:	2304      	movs	r3, #4
c0de3e3c:	f000 fa23 	bl	c0de4286 <OUTLINED_FUNCTION_5>
c0de3e40:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3e44:	2604      	movs	r6, #4
c0de3e46:	7128      	strb	r0, [r5, #4]
c0de3e48:	0a00      	lsrs	r0, r0, #8
c0de3e4a:	7168      	strb	r0, [r5, #5]
c0de3e4c:	2500      	movs	r5, #0
c0de3e4e:	f000 fa27 	bl	c0de42a0 <OUTLINED_FUNCTION_7>
c0de3e52:	79c0      	ldrb	r0, [r0, #7]
c0de3e54:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3e58:	4370      	muls	r0, r6
c0de3e5a:	0a01      	lsrs	r1, r0, #8
c0de3e5c:	71b8      	strb	r0, [r7, #6]
c0de3e5e:	71f9      	strb	r1, [r7, #7]
c0de3e60:	68a1      	ldr	r1, [r4, #8]
c0de3e62:	b329      	cbz	r1, c0de3eb0 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3e64:	4641      	mov	r1, r8
c0de3e66:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3e6a:	784c      	ldrb	r4, [r1, #1]
c0de3e6c:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3e70:	788d      	ldrb	r5, [r1, #2]
c0de3e72:	78c9      	ldrb	r1, [r1, #3]
c0de3e74:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3e78:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3e7c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3e80:	463a      	mov	r2, r7
c0de3e82:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3e86:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3e8a:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3e8e:	0e0b      	lsrs	r3, r1, #24
c0de3e90:	70d3      	strb	r3, [r2, #3]
c0de3e92:	0c0b      	lsrs	r3, r1, #16
c0de3e94:	0a09      	lsrs	r1, r1, #8
c0de3e96:	7051      	strb	r1, [r2, #1]
c0de3e98:	2100      	movs	r1, #0
c0de3e9a:	7093      	strb	r3, [r2, #2]
c0de3e9c:	7211      	strb	r1, [r2, #8]
c0de3e9e:	2e03      	cmp	r6, #3
c0de3ea0:	bf38      	it	cc
c0de3ea2:	2101      	movcc	r1, #1
c0de3ea4:	0089      	lsls	r1, r1, #2
c0de3ea6:	71d1      	strb	r1, [r2, #7]
c0de3ea8:	2108      	movs	r1, #8
c0de3eaa:	e00a      	b.n	c0de3ec2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3eac:	f000 b9fc 	b.w	c0de42a8 <OUTLINED_FUNCTION_8>
c0de3eb0:	6861      	ldr	r1, [r4, #4]
c0de3eb2:	b119      	cbz	r1, c0de3ebc <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3eb4:	f000 f9ec 	bl	c0de4290 <OUTLINED_FUNCTION_6>
c0de3eb8:	2102      	movs	r1, #2
c0de3eba:	e002      	b.n	c0de3ec2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3ebc:	f000 f9e8 	bl	c0de4290 <OUTLINED_FUNCTION_6>
c0de3ec0:	2105      	movs	r1, #5
c0de3ec2:	7111      	strb	r1, [r2, #4]
c0de3ec4:	4641      	mov	r1, r8
c0de3ec6:	4458      	add	r0, fp
c0de3ec8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3ecc:	784c      	ldrb	r4, [r1, #1]
c0de3ece:	788d      	ldrb	r5, [r1, #2]
c0de3ed0:	78ce      	ldrb	r6, [r1, #3]
c0de3ed2:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3ed6:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3eda:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3ede:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3ee2:	9c04      	ldr	r4, [sp, #16]
c0de3ee4:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3ee8:	1c5a      	adds	r2, r3, #1
c0de3eea:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3eee:	7e79      	ldrb	r1, [r7, #25]
c0de3ef0:	7eba      	ldrb	r2, [r7, #26]
c0de3ef2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3ef6:	eb00 0b01 	add.w	fp, r0, r1
c0de3efa:	6860      	ldr	r0, [r4, #4]
c0de3efc:	2800      	cmp	r0, #0
c0de3efe:	d074      	beq.n	c0de3fea <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3f00:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3f04:	2004      	movs	r0, #4
c0de3f06:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3f0a:	f002 ff0e 	bl	c0de6d2a <nbgl_objPoolGet>
c0de3f0e:	2603      	movs	r6, #3
c0de3f10:	4607      	mov	r7, r0
c0de3f12:	77c6      	strb	r6, [r0, #31]
c0de3f14:	6860      	ldr	r0, [r4, #4]
c0de3f16:	f003 f8eb 	bl	c0de70f0 <pic>
c0de3f1a:	4601      	mov	r1, r0
c0de3f1c:	2000      	movs	r0, #0
c0de3f1e:	2301      	movs	r3, #1
c0de3f20:	7178      	strb	r0, [r7, #5]
c0de3f22:	2072      	movs	r0, #114	@ 0x72
c0de3f24:	0e0a      	lsrs	r2, r1, #24
c0de3f26:	7138      	strb	r0, [r7, #4]
c0de3f28:	200a      	movs	r0, #10
c0de3f2a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3f2e:	2005      	movs	r0, #5
c0de3f30:	f887 0020 	strb.w	r0, [r7, #32]
c0de3f34:	2001      	movs	r0, #1
c0de3f36:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3f3a:	f000 f97e 	bl	c0de423a <OUTLINED_FUNCTION_1>
c0de3f3e:	4682      	mov	sl, r0
c0de3f40:	2804      	cmp	r0, #4
c0de3f42:	d31c      	bcc.n	c0de3f7e <nbgl_layoutAddCenteredInfo+0x28a>
c0de3f44:	463d      	mov	r5, r7
c0de3f46:	f04f 0c01 	mov.w	ip, #1
c0de3f4a:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de3f4e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3f52:	786a      	ldrb	r2, [r5, #1]
c0de3f54:	78ab      	ldrb	r3, [r5, #2]
c0de3f56:	78ee      	ldrb	r6, [r5, #3]
c0de3f58:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3f5c:	ac05      	add	r4, sp, #20
c0de3f5e:	e9cd 4c00 	strd	r4, ip, [sp]
c0de3f62:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3f66:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3f6a:	2303      	movs	r3, #3
c0de3f6c:	f000 f98b 	bl	c0de4286 <OUTLINED_FUNCTION_5>
c0de3f70:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de3f74:	f04f 0a03 	mov.w	sl, #3
c0de3f78:	7128      	strb	r0, [r5, #4]
c0de3f7a:	0a00      	lsrs	r0, r0, #8
c0de3f7c:	7168      	strb	r0, [r5, #5]
c0de3f7e:	f000 f98f 	bl	c0de42a0 <OUTLINED_FUNCTION_7>
c0de3f82:	4641      	mov	r1, r8
c0de3f84:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de3f88:	784c      	ldrb	r4, [r1, #1]
c0de3f8a:	788d      	ldrb	r5, [r1, #2]
c0de3f8c:	78ce      	ldrb	r6, [r1, #3]
c0de3f8e:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de3f92:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de3f96:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3f9a:	463d      	mov	r5, r7
c0de3f9c:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de3fa0:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de3fa4:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de3fa8:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de3fac:	0e26      	lsrs	r6, r4, #24
c0de3fae:	70ee      	strb	r6, [r5, #3]
c0de3fb0:	0c26      	lsrs	r6, r4, #16
c0de3fb2:	0a24      	lsrs	r4, r4, #8
c0de3fb4:	74fc      	strb	r4, [r7, #19]
c0de3fb6:	70ae      	strb	r6, [r5, #2]
c0de3fb8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de3fbc:	2302      	movs	r3, #2
c0de3fbe:	2400      	movs	r4, #0
c0de3fc0:	3201      	adds	r2, #1
c0de3fc2:	767b      	strb	r3, [r7, #25]
c0de3fc4:	2308      	movs	r3, #8
c0de3fc6:	76bc      	strb	r4, [r7, #26]
c0de3fc8:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de3fcc:	79c0      	ldrb	r0, [r0, #7]
c0de3fce:	75bb      	strb	r3, [r7, #22]
c0de3fd0:	fb0a f300 	mul.w	r3, sl, r0
c0de3fd4:	fb0a b000 	mla	r0, sl, r0, fp
c0de3fd8:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de3fdc:	71bb      	strb	r3, [r7, #6]
c0de3fde:	0a1b      	lsrs	r3, r3, #8
c0de3fe0:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3fe4:	f100 0b02 	add.w	fp, r0, #2
c0de3fe8:	71fb      	strb	r3, [r7, #7]
c0de3fea:	7b20      	ldrb	r0, [r4, #12]
c0de3fec:	2102      	movs	r1, #2
c0de3fee:	2800      	cmp	r0, #0
c0de3ff0:	bf08      	it	eq
c0de3ff2:	2105      	moveq	r1, #5
c0de3ff4:	f888 1016 	strb.w	r1, [r8, #22]
c0de3ff8:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de3ffc:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4000:	2272      	movs	r2, #114	@ 0x72
c0de4002:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4006:	2000      	movs	r0, #0
c0de4008:	f888 2004 	strb.w	r2, [r8, #4]
c0de400c:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de4010:	3101      	adds	r1, #1
c0de4012:	f888 b006 	strb.w	fp, [r8, #6]
c0de4016:	f888 0019 	strb.w	r0, [r8, #25]
c0de401a:	f888 001a 	strb.w	r0, [r8, #26]
c0de401e:	f888 0005 	strb.w	r0, [r8, #5]
c0de4022:	f888 001f 	strb.w	r0, [r8, #31]
c0de4026:	f888 2007 	strb.w	r2, [r8, #7]
c0de402a:	f88a 1002 	strb.w	r1, [sl, #2]
c0de402e:	b006      	add	sp, #24
c0de4030:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4034 <nbgl_layoutAddSwitch>:
c0de4034:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4038:	2800      	cmp	r0, #0
c0de403a:	d07d      	beq.n	c0de4138 <nbgl_layoutAddSwitch+0x104>
c0de403c:	460d      	mov	r5, r1
c0de403e:	7841      	ldrb	r1, [r0, #1]
c0de4040:	4604      	mov	r4, r0
c0de4042:	f000 f91d 	bl	c0de4280 <OUTLINED_FUNCTION_4>
c0de4046:	f04f 0803 	mov.w	r8, #3
c0de404a:	4606      	mov	r6, r0
c0de404c:	f880 801f 	strb.w	r8, [r0, #31]
c0de4050:	6828      	ldr	r0, [r5, #0]
c0de4052:	f003 f84d 	bl	c0de70f0 <pic>
c0de4056:	4601      	mov	r1, r0
c0de4058:	2072      	movs	r0, #114	@ 0x72
c0de405a:	2700      	movs	r7, #0
c0de405c:	2301      	movs	r3, #1
c0de405e:	7130      	strb	r0, [r6, #4]
c0de4060:	2008      	movs	r0, #8
c0de4062:	0e0a      	lsrs	r2, r1, #24
c0de4064:	7177      	strb	r7, [r6, #5]
c0de4066:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de406a:	2005      	movs	r0, #5
c0de406c:	f886 0020 	strb.w	r0, [r6, #32]
c0de4070:	2001      	movs	r0, #1
c0de4072:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4076:	4630      	mov	r0, r6
c0de4078:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de407c:	70c2      	strb	r2, [r0, #3]
c0de407e:	0c0a      	lsrs	r2, r1, #16
c0de4080:	7082      	strb	r2, [r0, #2]
c0de4082:	0a08      	lsrs	r0, r1, #8
c0de4084:	2272      	movs	r2, #114	@ 0x72
c0de4086:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de408a:	2008      	movs	r0, #8
c0de408c:	f002 fe61 	bl	c0de6d52 <nbgl_getTextNbLinesInWidth>
c0de4090:	2801      	cmp	r0, #1
c0de4092:	d851      	bhi.n	c0de4138 <nbgl_layoutAddSwitch+0x104>
c0de4094:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4098:	f002 fe56 	bl	c0de6d48 <nbgl_getFontLineHeight>
c0de409c:	6861      	ldr	r1, [r4, #4]
c0de409e:	78a2      	ldrb	r2, [r4, #2]
c0de40a0:	76b7      	strb	r7, [r6, #26]
c0de40a2:	71f7      	strb	r7, [r6, #7]
c0de40a4:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de40a8:	71b0      	strb	r0, [r6, #6]
c0de40aa:	2002      	movs	r0, #2
c0de40ac:	f886 8019 	strb.w	r8, [r6, #25]
c0de40b0:	75b0      	strb	r0, [r6, #22]
c0de40b2:	1c50      	adds	r0, r2, #1
c0de40b4:	70a0      	strb	r0, [r4, #2]
c0de40b6:	6868      	ldr	r0, [r5, #4]
c0de40b8:	2800      	cmp	r0, #0
c0de40ba:	d04c      	beq.n	c0de4156 <nbgl_layoutAddSwitch+0x122>
c0de40bc:	7861      	ldrb	r1, [r4, #1]
c0de40be:	f000 f8df 	bl	c0de4280 <OUTLINED_FUNCTION_4>
c0de40c2:	4606      	mov	r6, r0
c0de40c4:	2003      	movs	r0, #3
c0de40c6:	77f0      	strb	r0, [r6, #31]
c0de40c8:	6868      	ldr	r0, [r5, #4]
c0de40ca:	f003 f811 	bl	c0de70f0 <pic>
c0de40ce:	2172      	movs	r1, #114	@ 0x72
c0de40d0:	4637      	mov	r7, r6
c0de40d2:	f04f 0800 	mov.w	r8, #0
c0de40d6:	f04f 0a05 	mov.w	sl, #5
c0de40da:	7131      	strb	r1, [r6, #4]
c0de40dc:	210a      	movs	r1, #10
c0de40de:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de40e2:	f886 8005 	strb.w	r8, [r6, #5]
c0de40e6:	f886 a020 	strb.w	sl, [r6, #32]
c0de40ea:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de40ee:	0e01      	lsrs	r1, r0, #24
c0de40f0:	70f9      	strb	r1, [r7, #3]
c0de40f2:	0c01      	lsrs	r1, r0, #16
c0de40f4:	0a00      	lsrs	r0, r0, #8
c0de40f6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de40fa:	200a      	movs	r0, #10
c0de40fc:	70b9      	strb	r1, [r7, #2]
c0de40fe:	f002 fe23 	bl	c0de6d48 <nbgl_getFontLineHeight>
c0de4102:	09c1      	lsrs	r1, r0, #7
c0de4104:	783a      	ldrb	r2, [r7, #0]
c0de4106:	78bb      	ldrb	r3, [r7, #2]
c0de4108:	78ff      	ldrb	r7, [r7, #3]
c0de410a:	0040      	lsls	r0, r0, #1
c0de410c:	f04f 0b01 	mov.w	fp, #1
c0de4110:	71f1      	strb	r1, [r6, #7]
c0de4112:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de4116:	71b0      	strb	r0, [r6, #6]
c0de4118:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de411c:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de4120:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4124:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de4128:	2301      	movs	r3, #1
c0de412a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de412e:	2272      	movs	r2, #114	@ 0x72
c0de4130:	f002 fe0f 	bl	c0de6d52 <nbgl_getTextNbLinesInWidth>
c0de4134:	2802      	cmp	r0, #2
c0de4136:	d902      	bls.n	c0de413e <nbgl_layoutAddSwitch+0x10a>
c0de4138:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de413c:	e05d      	b.n	c0de41fa <nbgl_layoutAddSwitch+0x1c6>
c0de413e:	6860      	ldr	r0, [r4, #4]
c0de4140:	78a1      	ldrb	r1, [r4, #2]
c0de4142:	f886 801a 	strb.w	r8, [r6, #26]
c0de4146:	f886 a016 	strb.w	sl, [r6, #22]
c0de414a:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de414e:	1c48      	adds	r0, r1, #1
c0de4150:	f886 b019 	strb.w	fp, [r6, #25]
c0de4154:	70a0      	strb	r0, [r4, #2]
c0de4156:	7861      	ldrb	r1, [r4, #1]
c0de4158:	2005      	movs	r0, #5
c0de415a:	f002 fde6 	bl	c0de6d2a <nbgl_objPoolGet>
c0de415e:	2600      	movs	r6, #0
c0de4160:	4607      	mov	r7, r0
c0de4162:	f04f 0a03 	mov.w	sl, #3
c0de4166:	f04f 0808 	mov.w	r8, #8
c0de416a:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de416e:	2001      	movs	r0, #1
c0de4170:	f887 a020 	strb.w	sl, [r7, #32]
c0de4174:	f887 a01f 	strb.w	sl, [r7, #31]
c0de4178:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de417c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4180:	7a28      	ldrb	r0, [r5, #8]
c0de4182:	4a1f      	ldr	r2, [pc, #124]	@ (c0de4200 <nbgl_layoutAddSwitch+0x1cc>)
c0de4184:	491f      	ldr	r1, [pc, #124]	@ (c0de4204 <nbgl_layoutAddSwitch+0x1d0>)
c0de4186:	2801      	cmp	r0, #1
c0de4188:	447a      	add	r2, pc
c0de418a:	4479      	add	r1, pc
c0de418c:	bf08      	it	eq
c0de418e:	4611      	moveq	r1, r2
c0de4190:	463a      	mov	r2, r7
c0de4192:	0e0b      	lsrs	r3, r1, #24
c0de4194:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4198:	70d3      	strb	r3, [r2, #3]
c0de419a:	0c0b      	lsrs	r3, r1, #16
c0de419c:	7093      	strb	r3, [r2, #2]
c0de419e:	0a0a      	lsrs	r2, r1, #8
c0de41a0:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de41a4:	2801      	cmp	r0, #1
c0de41a6:	4638      	mov	r0, r7
c0de41a8:	4a17      	ldr	r2, [pc, #92]	@ (c0de4208 <nbgl_layoutAddSwitch+0x1d4>)
c0de41aa:	4d18      	ldr	r5, [pc, #96]	@ (c0de420c <nbgl_layoutAddSwitch+0x1d8>)
c0de41ac:	447a      	add	r2, pc
c0de41ae:	447d      	add	r5, pc
c0de41b0:	bf18      	it	ne
c0de41b2:	462a      	movne	r2, r5
c0de41b4:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de41b8:	0e13      	lsrs	r3, r2, #24
c0de41ba:	70c3      	strb	r3, [r0, #3]
c0de41bc:	0c13      	lsrs	r3, r2, #16
c0de41be:	7083      	strb	r3, [r0, #2]
c0de41c0:	0a10      	lsrs	r0, r2, #8
c0de41c2:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de41c6:	2008      	movs	r0, #8
c0de41c8:	f002 fdcd 	bl	c0de6d66 <nbgl_getTextWidth>
c0de41cc:	6861      	ldr	r1, [r4, #4]
c0de41ce:	78a2      	ldrb	r2, [r4, #2]
c0de41d0:	786b      	ldrb	r3, [r5, #1]
c0de41d2:	76be      	strb	r6, [r7, #26]
c0de41d4:	71fe      	strb	r6, [r7, #7]
c0de41d6:	f887 8016 	strb.w	r8, [r7, #22]
c0de41da:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de41de:	210c      	movs	r1, #12
c0de41e0:	f887 a019 	strb.w	sl, [r7, #25]
c0de41e4:	71b9      	strb	r1, [r7, #6]
c0de41e6:	7829      	ldrb	r1, [r5, #0]
c0de41e8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de41ec:	4408      	add	r0, r1
c0de41ee:	1c51      	adds	r1, r2, #1
c0de41f0:	300a      	adds	r0, #10
c0de41f2:	7138      	strb	r0, [r7, #4]
c0de41f4:	0a00      	lsrs	r0, r0, #8
c0de41f6:	70a1      	strb	r1, [r4, #2]
c0de41f8:	7178      	strb	r0, [r7, #5]
c0de41fa:	4630      	mov	r0, r6
c0de41fc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4200:	0000395d 	.word	0x0000395d
c0de4204:	00003a2a 	.word	0x00003a2a
c0de4208:	000036f5 	.word	0x000036f5
c0de420c:	000036dd 	.word	0x000036dd

c0de4210 <nbgl_layoutDraw>:
c0de4210:	b120      	cbz	r0, c0de421c <nbgl_layoutDraw+0xc>
c0de4212:	b580      	push	{r7, lr}
c0de4214:	f002 fd7a 	bl	c0de6d0c <nbgl_screenRedraw>
c0de4218:	2000      	movs	r0, #0
c0de421a:	bd80      	pop	{r7, pc}
c0de421c:	f000 b844 	b.w	c0de42a8 <OUTLINED_FUNCTION_8>

c0de4220 <nbgl_layoutRelease>:
c0de4220:	b148      	cbz	r0, c0de4236 <nbgl_layoutRelease+0x16>
c0de4222:	b510      	push	{r4, lr}
c0de4224:	4604      	mov	r4, r0
c0de4226:	7800      	ldrb	r0, [r0, #0]
c0de4228:	b110      	cbz	r0, c0de4230 <nbgl_layoutRelease+0x10>
c0de422a:	7860      	ldrb	r0, [r4, #1]
c0de422c:	f002 fd73 	bl	c0de6d16 <nbgl_screenPop>
c0de4230:	2000      	movs	r0, #0
c0de4232:	70a0      	strb	r0, [r4, #2]
c0de4234:	bd10      	pop	{r4, pc}
c0de4236:	f000 b837 	b.w	c0de42a8 <OUTLINED_FUNCTION_8>

c0de423a <OUTLINED_FUNCTION_1>:
c0de423a:	4638      	mov	r0, r7
c0de423c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4240:	70c2      	strb	r2, [r0, #3]
c0de4242:	0c0a      	lsrs	r2, r1, #16
c0de4244:	7082      	strb	r2, [r0, #2]
c0de4246:	0a08      	lsrs	r0, r1, #8
c0de4248:	2272      	movs	r2, #114	@ 0x72
c0de424a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de424e:	200a      	movs	r0, #10
c0de4250:	f002 bd7f 	b.w	c0de6d52 <nbgl_getTextNbLinesInWidth>

c0de4254 <OUTLINED_FUNCTION_2>:
c0de4254:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4258:	784b      	ldrb	r3, [r1, #1]
c0de425a:	788d      	ldrb	r5, [r1, #2]
c0de425c:	78c9      	ldrb	r1, [r1, #3]
c0de425e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4262:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4266:	9d05      	ldr	r5, [sp, #20]
c0de4268:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de426c:	4770      	bx	lr

c0de426e <OUTLINED_FUNCTION_3>:
c0de426e:	70c2      	strb	r2, [r0, #3]
c0de4270:	0c0a      	lsrs	r2, r1, #16
c0de4272:	7082      	strb	r2, [r0, #2]
c0de4274:	0a08      	lsrs	r0, r1, #8
c0de4276:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de427a:	2008      	movs	r0, #8
c0de427c:	f002 bd73 	b.w	c0de6d66 <nbgl_getTextWidth>

c0de4280 <OUTLINED_FUNCTION_4>:
c0de4280:	2004      	movs	r0, #4
c0de4282:	f002 bd52 	b.w	c0de6d2a <nbgl_objPoolGet>

c0de4286 <OUTLINED_FUNCTION_5>:
c0de4286:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de428a:	2272      	movs	r2, #114	@ 0x72
c0de428c:	f002 bd70 	b.w	c0de6d70 <nbgl_getTextMaxLenInNbLines>

c0de4290 <OUTLINED_FUNCTION_6>:
c0de4290:	2100      	movs	r1, #0
c0de4292:	463a      	mov	r2, r7
c0de4294:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4298:	70d1      	strb	r1, [r2, #3]
c0de429a:	7091      	strb	r1, [r2, #2]
c0de429c:	7051      	strb	r1, [r2, #1]
c0de429e:	4770      	bx	lr

c0de42a0 <OUTLINED_FUNCTION_7>:
c0de42a0:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de42a4:	f002 bd4b 	b.w	c0de6d3e <nbgl_getFont>

c0de42a8 <OUTLINED_FUNCTION_8>:
c0de42a8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de42ac:	4770      	bx	lr

c0de42ae <OUTLINED_FUNCTION_9>:
c0de42ae:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de42b2:	2003      	movs	r0, #3
c0de42b4:	f887 0020 	strb.w	r0, [r7, #32]
c0de42b8:	77f8      	strb	r0, [r7, #31]
c0de42ba:	4770      	bx	lr

c0de42bc <nbgl_stepDrawText>:
c0de42bc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de42c0:	460e      	mov	r6, r1
c0de42c2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de42c4:	4605      	mov	r5, r0
c0de42c6:	2000      	movs	r0, #0
c0de42c8:	469a      	mov	sl, r3
c0de42ca:	4617      	mov	r7, r2
c0de42cc:	f000 f830 	bl	c0de4330 <getFreeContext>
c0de42d0:	b348      	cbz	r0, c0de4326 <nbgl_stepDrawText+0x6a>
c0de42d2:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de42d6:	4604      	mov	r4, r0
c0de42d8:	6146      	str	r6, [r0, #20]
c0de42da:	b10f      	cbz	r7, c0de42e0 <nbgl_stepDrawText+0x24>
c0de42dc:	f000 fae1 	bl	c0de48a2 <OUTLINED_FUNCTION_1>
c0de42e0:	200a      	movs	r0, #10
c0de42e2:	f1b8 0f00 	cmp.w	r8, #0
c0de42e6:	bf19      	ittee	ne
c0de42e8:	4641      	movne	r1, r8
c0de42ea:	2203      	movne	r2, #3
c0de42ec:	4651      	moveq	r1, sl
c0de42ee:	2204      	moveq	r2, #4
c0de42f0:	2372      	movs	r3, #114	@ 0x72
c0de42f2:	f002 fd33 	bl	c0de6d5c <nbgl_getTextNbPagesInWidth>
c0de42f6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de42f8:	7020      	strb	r0, [r4, #0]
c0de42fa:	072a      	lsls	r2, r5, #28
c0de42fc:	bf46      	itte	mi
c0de42fe:	3801      	submi	r0, #1
c0de4300:	7060      	strbmi	r0, [r4, #1]
c0de4302:	7860      	ldrbpl	r0, [r4, #1]
c0de4304:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4308:	f8c4 a004 	str.w	sl, [r4, #4]
c0de430c:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4310:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4314:	7461      	strb	r1, [r4, #17]
c0de4316:	f005 0103 	and.w	r1, r5, #3
c0de431a:	7421      	strb	r1, [r4, #16]
c0de431c:	b2c1      	uxtb	r1, r0
c0de431e:	4620      	mov	r0, r4
c0de4320:	f000 f82c 	bl	c0de437c <displayTextPage>
c0de4324:	e000      	b.n	c0de4328 <nbgl_stepDrawText+0x6c>
c0de4326:	2400      	movs	r4, #0
c0de4328:	4620      	mov	r0, r4
c0de432a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4330 <getFreeContext>:
c0de4330:	b570      	push	{r4, r5, r6, lr}
c0de4332:	4604      	mov	r4, r0
c0de4334:	4810      	ldr	r0, [pc, #64]	@ (c0de4378 <getFreeContext+0x48>)
c0de4336:	460d      	mov	r5, r1
c0de4338:	b151      	cbz	r1, c0de4350 <getFreeContext+0x20>
c0de433a:	2100      	movs	r1, #0
c0de433c:	2990      	cmp	r1, #144	@ 0x90
c0de433e:	d00a      	beq.n	c0de4356 <getFreeContext+0x26>
c0de4340:	eb09 0200 	add.w	r2, r9, r0
c0de4344:	440a      	add	r2, r1
c0de4346:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de434a:	b132      	cbz	r2, c0de435a <getFreeContext+0x2a>
c0de434c:	3148      	adds	r1, #72	@ 0x48
c0de434e:	e7f5      	b.n	c0de433c <getFreeContext+0xc>
c0de4350:	eb09 0600 	add.w	r6, r9, r0
c0de4354:	e005      	b.n	c0de4362 <getFreeContext+0x32>
c0de4356:	2600      	movs	r6, #0
c0de4358:	e00b      	b.n	c0de4372 <getFreeContext+0x42>
c0de435a:	4448      	add	r0, r9
c0de435c:	4408      	add	r0, r1
c0de435e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4362:	4630      	mov	r0, r6
c0de4364:	2148      	movs	r1, #72	@ 0x48
c0de4366:	f003 f9cf 	bl	c0de7708 <__aeabi_memclr>
c0de436a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de436e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4372:	4630      	mov	r0, r6
c0de4374:	bd70      	pop	{r4, r5, r6, pc}
c0de4376:	bf00      	nop
c0de4378:	00000678 	.word	0x00000678

c0de437c <displayTextPage>:
c0de437c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4380:	b091      	sub	sp, #68	@ 0x44
c0de4382:	4604      	mov	r4, r0
c0de4384:	7840      	ldrb	r0, [r0, #1]
c0de4386:	460e      	mov	r6, r1
c0de4388:	4288      	cmp	r0, r1
c0de438a:	d21c      	bcs.n	c0de43c6 <displayTextPage+0x4a>
c0de438c:	68a5      	ldr	r5, [r4, #8]
c0de438e:	7820      	ldrb	r0, [r4, #0]
c0de4390:	7066      	strb	r6, [r4, #1]
c0de4392:	3801      	subs	r0, #1
c0de4394:	42b0      	cmp	r0, r6
c0de4396:	dd31      	ble.n	c0de43fc <displayTextPage+0x80>
c0de4398:	68e0      	ldr	r0, [r4, #12]
c0de439a:	2101      	movs	r1, #1
c0de439c:	2303      	movs	r3, #3
c0de439e:	aa08      	add	r2, sp, #32
c0de43a0:	e9cd 2100 	strd	r2, r1, [sp]
c0de43a4:	4629      	mov	r1, r5
c0de43a6:	2800      	cmp	r0, #0
c0de43a8:	bf08      	it	eq
c0de43aa:	2304      	moveq	r3, #4
c0de43ac:	200a      	movs	r0, #10
c0de43ae:	2272      	movs	r2, #114	@ 0x72
c0de43b0:	f002 fcde 	bl	c0de6d70 <nbgl_getTextMaxLenInNbLines>
c0de43b4:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de43b8:	1868      	adds	r0, r5, r1
c0de43ba:	60a0      	str	r0, [r4, #8]
c0de43bc:	5c69      	ldrb	r1, [r5, r1]
c0de43be:	290a      	cmp	r1, #10
c0de43c0:	d11e      	bne.n	c0de4400 <displayTextPage+0x84>
c0de43c2:	3001      	adds	r0, #1
c0de43c4:	e01b      	b.n	c0de43fe <displayTextPage+0x82>
c0de43c6:	68e5      	ldr	r5, [r4, #12]
c0de43c8:	2d00      	cmp	r5, #0
c0de43ca:	d074      	beq.n	c0de44b6 <displayTextPage+0x13a>
c0de43cc:	2700      	movs	r7, #0
c0de43ce:	f04f 0801 	mov.w	r8, #1
c0de43d2:	f10d 0a20 	add.w	sl, sp, #32
c0de43d6:	42be      	cmp	r6, r7
c0de43d8:	d0d9      	beq.n	c0de438e <displayTextPage+0x12>
c0de43da:	7820      	ldrb	r0, [r4, #0]
c0de43dc:	3801      	subs	r0, #1
c0de43de:	42b8      	cmp	r0, r7
c0de43e0:	dd0a      	ble.n	c0de43f8 <displayTextPage+0x7c>
c0de43e2:	200a      	movs	r0, #10
c0de43e4:	4629      	mov	r1, r5
c0de43e6:	2272      	movs	r2, #114	@ 0x72
c0de43e8:	2303      	movs	r3, #3
c0de43ea:	e9cd a800 	strd	sl, r8, [sp]
c0de43ee:	f002 fcbf 	bl	c0de6d70 <nbgl_getTextMaxLenInNbLines>
c0de43f2:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de43f6:	4405      	add	r5, r0
c0de43f8:	3701      	adds	r7, #1
c0de43fa:	e7ec      	b.n	c0de43d6 <displayTextPage+0x5a>
c0de43fc:	2000      	movs	r0, #0
c0de43fe:	60a0      	str	r0, [r4, #8]
c0de4400:	484f      	ldr	r0, [pc, #316]	@ (c0de4540 <displayTextPage+0x1c4>)
c0de4402:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4406:	4478      	add	r0, pc
c0de4408:	9004      	str	r0, [sp, #16]
c0de440a:	2000      	movs	r0, #0
c0de440c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4410:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4414:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4418:	ca07      	ldmia	r2, {r0, r1, r2}
c0de441a:	ab05      	add	r3, sp, #20
c0de441c:	c307      	stmia	r3!, {r0, r1, r2}
c0de441e:	a803      	add	r0, sp, #12
c0de4420:	f7ff f992 	bl	c0de3748 <nbgl_layoutGet>
c0de4424:	7827      	ldrb	r7, [r4, #0]
c0de4426:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de442a:	4606      	mov	r6, r0
c0de442c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de442e:	7c20      	ldrb	r0, [r4, #16]
c0de4430:	4639      	mov	r1, r7
c0de4432:	4652      	mov	r2, sl
c0de4434:	f000 f8fc 	bl	c0de4630 <getNavigationInfo>
c0de4438:	4680      	mov	r8, r0
c0de443a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de443e:	68e0      	ldr	r0, [r4, #12]
c0de4440:	b188      	cbz	r0, c0de4466 <displayTextPage+0xea>
c0de4442:	2f01      	cmp	r7, #1
c0de4444:	d115      	bne.n	c0de4472 <displayTextPage+0xf6>
c0de4446:	6861      	ldr	r1, [r4, #4]
c0de4448:	2008      	movs	r0, #8
c0de444a:	2272      	movs	r2, #114	@ 0x72
c0de444c:	2300      	movs	r3, #0
c0de444e:	2600      	movs	r6, #0
c0de4450:	f002 fc7f 	bl	c0de6d52 <nbgl_getTextNbLinesInWidth>
c0de4454:	2802      	cmp	r0, #2
c0de4456:	d348      	bcc.n	c0de44ea <displayTextPage+0x16e>
c0de4458:	6861      	ldr	r1, [r4, #4]
c0de445a:	2018      	movs	r0, #24
c0de445c:	f104 0218 	add.w	r2, r4, #24
c0de4460:	e9cd 2000 	strd	r2, r0, [sp]
c0de4464:	e021      	b.n	c0de44aa <displayTextPage+0x12e>
c0de4466:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de446a:	4630      	mov	r0, r6
c0de446c:	4629      	mov	r1, r5
c0de446e:	2200      	movs	r2, #0
c0de4470:	e055      	b.n	c0de451e <displayTextPage+0x1a2>
c0de4472:	f10a 0001 	add.w	r0, sl, #1
c0de4476:	6863      	ldr	r3, [r4, #4]
c0de4478:	2124      	movs	r1, #36	@ 0x24
c0de447a:	e9cd 0700 	strd	r0, r7, [sp]
c0de447e:	af08      	add	r7, sp, #32
c0de4480:	4a30      	ldr	r2, [pc, #192]	@ (c0de4544 <displayTextPage+0x1c8>)
c0de4482:	4638      	mov	r0, r7
c0de4484:	447a      	add	r2, pc
c0de4486:	f002 fca1 	bl	c0de6dcc <snprintf>
c0de448a:	2008      	movs	r0, #8
c0de448c:	4639      	mov	r1, r7
c0de448e:	2272      	movs	r2, #114	@ 0x72
c0de4490:	2300      	movs	r3, #0
c0de4492:	f04f 0a00 	mov.w	sl, #0
c0de4496:	f002 fc5c 	bl	c0de6d52 <nbgl_getTextNbLinesInWidth>
c0de449a:	f104 0c18 	add.w	ip, r4, #24
c0de449e:	2802      	cmp	r0, #2
c0de44a0:	d32c      	bcc.n	c0de44fc <displayTextPage+0x180>
c0de44a2:	2018      	movs	r0, #24
c0de44a4:	e9cd c000 	strd	ip, r0, [sp]
c0de44a8:	a908      	add	r1, sp, #32
c0de44aa:	2008      	movs	r0, #8
c0de44ac:	2272      	movs	r2, #114	@ 0x72
c0de44ae:	2301      	movs	r3, #1
c0de44b0:	f002 fc63 	bl	c0de6d7a <nbgl_textReduceOnNbLines>
c0de44b4:	e02d      	b.n	c0de4512 <displayTextPage+0x196>
c0de44b6:	6865      	ldr	r5, [r4, #4]
c0de44b8:	2700      	movs	r7, #0
c0de44ba:	f04f 0801 	mov.w	r8, #1
c0de44be:	f10d 0a20 	add.w	sl, sp, #32
c0de44c2:	42be      	cmp	r6, r7
c0de44c4:	f43f af63 	beq.w	c0de438e <displayTextPage+0x12>
c0de44c8:	7820      	ldrb	r0, [r4, #0]
c0de44ca:	3801      	subs	r0, #1
c0de44cc:	42b8      	cmp	r0, r7
c0de44ce:	dd0a      	ble.n	c0de44e6 <displayTextPage+0x16a>
c0de44d0:	200a      	movs	r0, #10
c0de44d2:	4629      	mov	r1, r5
c0de44d4:	2272      	movs	r2, #114	@ 0x72
c0de44d6:	2304      	movs	r3, #4
c0de44d8:	e9cd a800 	strd	sl, r8, [sp]
c0de44dc:	f002 fc48 	bl	c0de6d70 <nbgl_getTextMaxLenInNbLines>
c0de44e0:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de44e4:	4405      	add	r5, r0
c0de44e6:	3701      	adds	r7, #1
c0de44e8:	e7eb      	b.n	c0de44c2 <displayTextPage+0x146>
c0de44ea:	6861      	ldr	r1, [r4, #4]
c0de44ec:	f104 0018 	add.w	r0, r4, #24
c0de44f0:	2217      	movs	r2, #23
c0de44f2:	f003 f8ff 	bl	c0de76f4 <__aeabi_memcpy>
c0de44f6:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de44fa:	e00a      	b.n	c0de4512 <displayTextPage+0x196>
c0de44fc:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de44fe:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4502:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4506:	8838      	ldrh	r0, [r7, #0]
c0de4508:	f8ac 0000 	strh.w	r0, [ip]
c0de450c:	78b8      	ldrb	r0, [r7, #2]
c0de450e:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4512:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4516:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4518:	f104 0118 	add.w	r1, r4, #24
c0de451c:	462a      	mov	r2, r5
c0de451e:	f7ff f9d5 	bl	c0de38cc <nbgl_layoutAddText>
c0de4522:	f1b8 0f00 	cmp.w	r8, #0
c0de4526:	d004      	beq.n	c0de4532 <displayTextPage+0x1b6>
c0de4528:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de452a:	f10d 010a 	add.w	r1, sp, #10
c0de452e:	f7ff f96f 	bl	c0de3810 <nbgl_layoutAddNavigation>
c0de4532:	f000 f9e9 	bl	c0de4908 <OUTLINED_FUNCTION_4>
c0de4536:	f002 fbd0 	bl	c0de6cda <nbgl_refresh>
c0de453a:	b011      	add	sp, #68	@ 0x44
c0de453c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4540:	000001bb 	.word	0x000001bb
c0de4544:	0000355a 	.word	0x0000355a

c0de4548 <nbgl_stepDrawCenteredInfo>:
c0de4548:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de454c:	b087      	sub	sp, #28
c0de454e:	460d      	mov	r5, r1
c0de4550:	4682      	mov	sl, r0
c0de4552:	a802      	add	r0, sp, #8
c0de4554:	f000 f9d3 	bl	c0de48fe <OUTLINED_FUNCTION_3>
c0de4558:	4819      	ldr	r0, [pc, #100]	@ (c0de45c0 <nbgl_stepDrawCenteredInfo+0x78>)
c0de455a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de455c:	4478      	add	r0, pc
c0de455e:	f000 f9c5 	bl	c0de48ec <OUTLINED_FUNCTION_2>
c0de4562:	b168      	cbz	r0, c0de4580 <nbgl_stepDrawCenteredInfo+0x38>
c0de4564:	4604      	mov	r4, r0
c0de4566:	6145      	str	r5, [r0, #20]
c0de4568:	b10f      	cbz	r7, c0de456e <nbgl_stepDrawCenteredInfo+0x26>
c0de456a:	f000 f953 	bl	c0de4814 <OUTLINED_FUNCTION_0>
c0de456e:	f000 f9ce 	bl	c0de490e <OUTLINED_FUNCTION_5>
c0de4572:	d007      	beq.n	c0de4584 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4574:	2802      	cmp	r0, #2
c0de4576:	d007      	beq.n	c0de4588 <nbgl_stepDrawCenteredInfo+0x40>
c0de4578:	2801      	cmp	r0, #1
c0de457a:	d108      	bne.n	c0de458e <nbgl_stepDrawCenteredInfo+0x46>
c0de457c:	2002      	movs	r0, #2
c0de457e:	e004      	b.n	c0de458a <nbgl_stepDrawCenteredInfo+0x42>
c0de4580:	2400      	movs	r4, #0
c0de4582:	e018      	b.n	c0de45b6 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4584:	2003      	movs	r0, #3
c0de4586:	e000      	b.n	c0de458a <nbgl_stepDrawCenteredInfo+0x42>
c0de4588:	2001      	movs	r0, #1
c0de458a:	2500      	movs	r5, #0
c0de458c:	e000      	b.n	c0de4590 <nbgl_stepDrawCenteredInfo+0x48>
c0de458e:	2000      	movs	r0, #0
c0de4590:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4594:	a802      	add	r0, sp, #8
c0de4596:	f7ff f8d7 	bl	c0de3748 <nbgl_layoutGet>
c0de459a:	4641      	mov	r1, r8
c0de459c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de459e:	f7ff fba9 	bl	c0de3cf4 <nbgl_layoutAddCenteredInfo>
c0de45a2:	b925      	cbnz	r5, c0de45ae <nbgl_stepDrawCenteredInfo+0x66>
c0de45a4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de45a6:	f10d 0106 	add.w	r1, sp, #6
c0de45aa:	f7ff f931 	bl	c0de3810 <nbgl_layoutAddNavigation>
c0de45ae:	f000 f9ab 	bl	c0de4908 <OUTLINED_FUNCTION_4>
c0de45b2:	f002 fb92 	bl	c0de6cda <nbgl_refresh>
c0de45b6:	4620      	mov	r0, r4
c0de45b8:	b007      	add	sp, #28
c0de45ba:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de45be:	bf00      	nop
c0de45c0:	00000065 	.word	0x00000065

c0de45c4 <actionCallback>:
c0de45c4:	b510      	push	{r4, lr}
c0de45c6:	460c      	mov	r4, r1
c0de45c8:	f000 f8f0 	bl	c0de47ac <getContextFromLayout>
c0de45cc:	b378      	cbz	r0, c0de462e <actionCallback+0x6a>
c0de45ce:	2c04      	cmp	r4, #4
c0de45d0:	d006      	beq.n	c0de45e0 <actionCallback+0x1c>
c0de45d2:	2c01      	cmp	r4, #1
c0de45d4:	d008      	beq.n	c0de45e8 <actionCallback+0x24>
c0de45d6:	bb54      	cbnz	r4, c0de462e <actionCallback+0x6a>
c0de45d8:	7841      	ldrb	r1, [r0, #1]
c0de45da:	b1d9      	cbz	r1, c0de4614 <actionCallback+0x50>
c0de45dc:	3901      	subs	r1, #1
c0de45de:	e009      	b.n	c0de45f4 <actionCallback+0x30>
c0de45e0:	6942      	ldr	r2, [r0, #20]
c0de45e2:	b322      	cbz	r2, c0de462e <actionCallback+0x6a>
c0de45e4:	2104      	movs	r1, #4
c0de45e6:	e01f      	b.n	c0de4628 <actionCallback+0x64>
c0de45e8:	7802      	ldrb	r2, [r0, #0]
c0de45ea:	7841      	ldrb	r1, [r0, #1]
c0de45ec:	3a01      	subs	r2, #1
c0de45ee:	428a      	cmp	r2, r1
c0de45f0:	dd05      	ble.n	c0de45fe <actionCallback+0x3a>
c0de45f2:	3101      	adds	r1, #1
c0de45f4:	b2c9      	uxtb	r1, r1
c0de45f6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de45fa:	f7ff bebf 	b.w	c0de437c <displayTextPage>
c0de45fe:	7c01      	ldrb	r1, [r0, #16]
c0de4600:	f041 0102 	orr.w	r1, r1, #2
c0de4604:	2903      	cmp	r1, #3
c0de4606:	d001      	beq.n	c0de460c <actionCallback+0x48>
c0de4608:	7c41      	ldrb	r1, [r0, #17]
c0de460a:	b181      	cbz	r1, c0de462e <actionCallback+0x6a>
c0de460c:	6942      	ldr	r2, [r0, #20]
c0de460e:	b172      	cbz	r2, c0de462e <actionCallback+0x6a>
c0de4610:	2101      	movs	r1, #1
c0de4612:	e009      	b.n	c0de4628 <actionCallback+0x64>
c0de4614:	7c01      	ldrb	r1, [r0, #16]
c0de4616:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de461a:	2902      	cmp	r1, #2
c0de461c:	d001      	beq.n	c0de4622 <actionCallback+0x5e>
c0de461e:	7c41      	ldrb	r1, [r0, #17]
c0de4620:	b129      	cbz	r1, c0de462e <actionCallback+0x6a>
c0de4622:	6942      	ldr	r2, [r0, #20]
c0de4624:	b11a      	cbz	r2, c0de462e <actionCallback+0x6a>
c0de4626:	2100      	movs	r1, #0
c0de4628:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de462c:	4710      	bx	r2
c0de462e:	bd10      	pop	{r4, pc}

c0de4630 <getNavigationInfo>:
c0de4630:	4603      	mov	r3, r0
c0de4632:	2902      	cmp	r1, #2
c0de4634:	d308      	bcc.n	c0de4648 <getNavigationInfo+0x18>
c0de4636:	3901      	subs	r1, #1
c0de4638:	4610      	mov	r0, r2
c0de463a:	2a00      	cmp	r2, #0
c0de463c:	bf18      	it	ne
c0de463e:	2001      	movne	r0, #1
c0de4640:	4291      	cmp	r1, r2
c0de4642:	bf88      	it	hi
c0de4644:	3002      	addhi	r0, #2
c0de4646:	e000      	b.n	c0de464a <getNavigationInfo+0x1a>
c0de4648:	2000      	movs	r0, #0
c0de464a:	2b03      	cmp	r3, #3
c0de464c:	d00a      	beq.n	c0de4664 <getNavigationInfo+0x34>
c0de464e:	2b02      	cmp	r3, #2
c0de4650:	bf04      	itt	eq
c0de4652:	f040 0001 	orreq.w	r0, r0, #1
c0de4656:	4770      	bxeq	lr
c0de4658:	2b01      	cmp	r3, #1
c0de465a:	bf04      	itt	eq
c0de465c:	f040 0002 	orreq.w	r0, r0, #2
c0de4660:	4770      	bxeq	lr
c0de4662:	4770      	bx	lr
c0de4664:	2003      	movs	r0, #3
c0de4666:	4770      	bx	lr

c0de4668 <nbgl_stepDrawMenuList>:
c0de4668:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de466a:	460f      	mov	r7, r1
c0de466c:	4606      	mov	r6, r0
c0de466e:	2002      	movs	r0, #2
c0de4670:	4619      	mov	r1, r3
c0de4672:	4615      	mov	r5, r2
c0de4674:	f7ff fe5c 	bl	c0de4330 <getFreeContext>
c0de4678:	b170      	cbz	r0, c0de4698 <nbgl_stepDrawMenuList+0x30>
c0de467a:	4604      	mov	r4, r0
c0de467c:	b10f      	cbz	r7, c0de4682 <nbgl_stepDrawMenuList+0x1a>
c0de467e:	f000 f910 	bl	c0de48a2 <OUTLINED_FUNCTION_1>
c0de4682:	7928      	ldrb	r0, [r5, #4]
c0de4684:	7220      	strb	r0, [r4, #8]
c0de4686:	7968      	ldrb	r0, [r5, #5]
c0de4688:	7260      	strb	r0, [r4, #9]
c0de468a:	6828      	ldr	r0, [r5, #0]
c0de468c:	e9c4 6000 	strd	r6, r0, [r4]
c0de4690:	4620      	mov	r0, r4
c0de4692:	f000 f805 	bl	c0de46a0 <displayMenuList>
c0de4696:	e000      	b.n	c0de469a <nbgl_stepDrawMenuList+0x32>
c0de4698:	2400      	movs	r4, #0
c0de469a:	4620      	mov	r0, r4
c0de469c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de46a0 <displayMenuList>:
c0de46a0:	b5b0      	push	{r4, r5, r7, lr}
c0de46a2:	b086      	sub	sp, #24
c0de46a4:	4604      	mov	r4, r0
c0de46a6:	2000      	movs	r0, #0
c0de46a8:	9001      	str	r0, [sp, #4]
c0de46aa:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de46ae:	4819      	ldr	r0, [pc, #100]	@ (c0de4714 <displayMenuList+0x74>)
c0de46b0:	4478      	add	r0, pc
c0de46b2:	9002      	str	r0, [sp, #8]
c0de46b4:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de46b8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de46bc:	ca07      	ldmia	r2, {r0, r1, r2}
c0de46be:	ab03      	add	r3, sp, #12
c0de46c0:	c307      	stmia	r3!, {r0, r1, r2}
c0de46c2:	a801      	add	r0, sp, #4
c0de46c4:	f7ff f840 	bl	c0de3748 <nbgl_layoutGet>
c0de46c8:	1d25      	adds	r5, r4, #4
c0de46ca:	6420      	str	r0, [r4, #64]	@ 0x40
c0de46cc:	4629      	mov	r1, r5
c0de46ce:	f7ff fabd 	bl	c0de3c4c <nbgl_layoutAddMenuList>
c0de46d2:	7a20      	ldrb	r0, [r4, #8]
c0de46d4:	2802      	cmp	r0, #2
c0de46d6:	d316      	bcc.n	c0de4706 <displayMenuList+0x66>
c0de46d8:	2101      	movs	r1, #1
c0de46da:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de46de:	7969      	ldrb	r1, [r5, #5]
c0de46e0:	2900      	cmp	r1, #0
c0de46e2:	460a      	mov	r2, r1
c0de46e4:	bf18      	it	ne
c0de46e6:	2201      	movne	r2, #1
c0de46e8:	3801      	subs	r0, #1
c0de46ea:	f88d 2003 	strb.w	r2, [sp, #3]
c0de46ee:	4288      	cmp	r0, r1
c0de46f0:	d903      	bls.n	c0de46fa <displayMenuList+0x5a>
c0de46f2:	1c90      	adds	r0, r2, #2
c0de46f4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de46f8:	e000      	b.n	c0de46fc <displayMenuList+0x5c>
c0de46fa:	b121      	cbz	r1, c0de4706 <displayMenuList+0x66>
c0de46fc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de46fe:	f10d 0102 	add.w	r1, sp, #2
c0de4702:	f7ff f885 	bl	c0de3810 <nbgl_layoutAddNavigation>
c0de4706:	f000 f8ff 	bl	c0de4908 <OUTLINED_FUNCTION_4>
c0de470a:	f002 fae6 	bl	c0de6cda <nbgl_refresh>
c0de470e:	b006      	add	sp, #24
c0de4710:	bdb0      	pop	{r4, r5, r7, pc}
c0de4712:	bf00      	nop
c0de4714:	00000121 	.word	0x00000121

c0de4718 <nbgl_stepDrawSwitch>:
c0de4718:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de471c:	b087      	sub	sp, #28
c0de471e:	460d      	mov	r5, r1
c0de4720:	4682      	mov	sl, r0
c0de4722:	a802      	add	r0, sp, #8
c0de4724:	f000 f8eb 	bl	c0de48fe <OUTLINED_FUNCTION_3>
c0de4728:	4819      	ldr	r0, [pc, #100]	@ (c0de4790 <nbgl_stepDrawSwitch+0x78>)
c0de472a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de472c:	4478      	add	r0, pc
c0de472e:	f000 f8dd 	bl	c0de48ec <OUTLINED_FUNCTION_2>
c0de4732:	b168      	cbz	r0, c0de4750 <nbgl_stepDrawSwitch+0x38>
c0de4734:	4604      	mov	r4, r0
c0de4736:	6145      	str	r5, [r0, #20]
c0de4738:	b10f      	cbz	r7, c0de473e <nbgl_stepDrawSwitch+0x26>
c0de473a:	f000 f86b 	bl	c0de4814 <OUTLINED_FUNCTION_0>
c0de473e:	f000 f8e6 	bl	c0de490e <OUTLINED_FUNCTION_5>
c0de4742:	d007      	beq.n	c0de4754 <nbgl_stepDrawSwitch+0x3c>
c0de4744:	2802      	cmp	r0, #2
c0de4746:	d007      	beq.n	c0de4758 <nbgl_stepDrawSwitch+0x40>
c0de4748:	2801      	cmp	r0, #1
c0de474a:	d108      	bne.n	c0de475e <nbgl_stepDrawSwitch+0x46>
c0de474c:	2002      	movs	r0, #2
c0de474e:	e004      	b.n	c0de475a <nbgl_stepDrawSwitch+0x42>
c0de4750:	2400      	movs	r4, #0
c0de4752:	e018      	b.n	c0de4786 <nbgl_stepDrawSwitch+0x6e>
c0de4754:	2003      	movs	r0, #3
c0de4756:	e000      	b.n	c0de475a <nbgl_stepDrawSwitch+0x42>
c0de4758:	2001      	movs	r0, #1
c0de475a:	2500      	movs	r5, #0
c0de475c:	e000      	b.n	c0de4760 <nbgl_stepDrawSwitch+0x48>
c0de475e:	2000      	movs	r0, #0
c0de4760:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4764:	a802      	add	r0, sp, #8
c0de4766:	f7fe ffef 	bl	c0de3748 <nbgl_layoutGet>
c0de476a:	4641      	mov	r1, r8
c0de476c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de476e:	f7ff fc61 	bl	c0de4034 <nbgl_layoutAddSwitch>
c0de4772:	b925      	cbnz	r5, c0de477e <nbgl_stepDrawSwitch+0x66>
c0de4774:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4776:	f10d 0106 	add.w	r1, sp, #6
c0de477a:	f7ff f849 	bl	c0de3810 <nbgl_layoutAddNavigation>
c0de477e:	f000 f8c3 	bl	c0de4908 <OUTLINED_FUNCTION_4>
c0de4782:	f002 faaa 	bl	c0de6cda <nbgl_refresh>
c0de4786:	4620      	mov	r0, r4
c0de4788:	b007      	add	sp, #28
c0de478a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de478e:	bf00      	nop
c0de4790:	fffffe95 	.word	0xfffffe95

c0de4794 <nbgl_stepRelease>:
c0de4794:	b138      	cbz	r0, c0de47a6 <nbgl_stepRelease+0x12>
c0de4796:	b510      	push	{r4, lr}
c0de4798:	4604      	mov	r4, r0
c0de479a:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de479c:	f7ff fd40 	bl	c0de4220 <nbgl_layoutRelease>
c0de47a0:	2100      	movs	r1, #0
c0de47a2:	6421      	str	r1, [r4, #64]	@ 0x40
c0de47a4:	bd10      	pop	{r4, pc}
c0de47a6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de47aa:	4770      	bx	lr

c0de47ac <getContextFromLayout>:
c0de47ac:	4a08      	ldr	r2, [pc, #32]	@ (c0de47d0 <getContextFromLayout+0x24>)
c0de47ae:	2100      	movs	r1, #0
c0de47b0:	29d8      	cmp	r1, #216	@ 0xd8
c0de47b2:	bf04      	itt	eq
c0de47b4:	2000      	moveq	r0, #0
c0de47b6:	4770      	bxeq	lr
c0de47b8:	eb09 0302 	add.w	r3, r9, r2
c0de47bc:	440b      	add	r3, r1
c0de47be:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de47c0:	4283      	cmp	r3, r0
c0de47c2:	d001      	beq.n	c0de47c8 <getContextFromLayout+0x1c>
c0de47c4:	3148      	adds	r1, #72	@ 0x48
c0de47c6:	e7f3      	b.n	c0de47b0 <getContextFromLayout+0x4>
c0de47c8:	eb09 0002 	add.w	r0, r9, r2
c0de47cc:	4408      	add	r0, r1
c0de47ce:	4770      	bx	lr
c0de47d0:	00000678 	.word	0x00000678

c0de47d4 <menuListActionCallback>:
c0de47d4:	b510      	push	{r4, lr}
c0de47d6:	460c      	mov	r4, r1
c0de47d8:	f7ff ffe8 	bl	c0de47ac <getContextFromLayout>
c0de47dc:	b1c8      	cbz	r0, c0de4812 <menuListActionCallback+0x3e>
c0de47de:	2c04      	cmp	r4, #4
c0de47e0:	d006      	beq.n	c0de47f0 <menuListActionCallback+0x1c>
c0de47e2:	2c01      	cmp	r4, #1
c0de47e4:	d00a      	beq.n	c0de47fc <menuListActionCallback+0x28>
c0de47e6:	b9a4      	cbnz	r4, c0de4812 <menuListActionCallback+0x3e>
c0de47e8:	7a41      	ldrb	r1, [r0, #9]
c0de47ea:	b191      	cbz	r1, c0de4812 <menuListActionCallback+0x3e>
c0de47ec:	3901      	subs	r1, #1
c0de47ee:	e00b      	b.n	c0de4808 <menuListActionCallback+0x34>
c0de47f0:	7a41      	ldrb	r1, [r0, #9]
c0de47f2:	6802      	ldr	r2, [r0, #0]
c0de47f4:	4608      	mov	r0, r1
c0de47f6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de47fa:	4710      	bx	r2
c0de47fc:	7a02      	ldrb	r2, [r0, #8]
c0de47fe:	7a41      	ldrb	r1, [r0, #9]
c0de4800:	3a01      	subs	r2, #1
c0de4802:	428a      	cmp	r2, r1
c0de4804:	dd05      	ble.n	c0de4812 <menuListActionCallback+0x3e>
c0de4806:	3101      	adds	r1, #1
c0de4808:	7241      	strb	r1, [r0, #9]
c0de480a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de480e:	f7ff bf47 	b.w	c0de46a0 <displayMenuList>
c0de4812:	bd10      	pop	{r4, pc}

c0de4814 <OUTLINED_FUNCTION_0>:
c0de4814:	7838      	ldrb	r0, [r7, #0]
c0de4816:	7879      	ldrb	r1, [r7, #1]
c0de4818:	78ba      	ldrb	r2, [r7, #2]
c0de481a:	78fb      	ldrb	r3, [r7, #3]
c0de481c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4820:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4824:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4828:	6360      	str	r0, [r4, #52]	@ 0x34
c0de482a:	4638      	mov	r0, r7
c0de482c:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4830:	7a79      	ldrb	r1, [r7, #9]
c0de4832:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4836:	7882      	ldrb	r2, [r0, #2]
c0de4838:	78c3      	ldrb	r3, [r0, #3]
c0de483a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de483e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4842:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4844:	4639      	mov	r1, r7
c0de4846:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de484a:	797a      	ldrb	r2, [r7, #5]
c0de484c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4850:	788b      	ldrb	r3, [r1, #2]
c0de4852:	78cd      	ldrb	r5, [r1, #3]
c0de4854:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4858:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de485c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de485e:	783a      	ldrb	r2, [r7, #0]
c0de4860:	787b      	ldrb	r3, [r7, #1]
c0de4862:	78bd      	ldrb	r5, [r7, #2]
c0de4864:	78fe      	ldrb	r6, [r7, #3]
c0de4866:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de486a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de486e:	7803      	ldrb	r3, [r0, #0]
c0de4870:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4874:	7885      	ldrb	r5, [r0, #2]
c0de4876:	78c0      	ldrb	r0, [r0, #3]
c0de4878:	9204      	str	r2, [sp, #16]
c0de487a:	7a7a      	ldrb	r2, [r7, #9]
c0de487c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4880:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4884:	788b      	ldrb	r3, [r1, #2]
c0de4886:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de488a:	780a      	ldrb	r2, [r1, #0]
c0de488c:	78c9      	ldrb	r1, [r1, #3]
c0de488e:	9006      	str	r0, [sp, #24]
c0de4890:	7978      	ldrb	r0, [r7, #5]
c0de4892:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4896:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de489a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de489e:	9005      	str	r0, [sp, #20]
c0de48a0:	4770      	bx	lr

c0de48a2 <OUTLINED_FUNCTION_1>:
c0de48a2:	7838      	ldrb	r0, [r7, #0]
c0de48a4:	7879      	ldrb	r1, [r7, #1]
c0de48a6:	78ba      	ldrb	r2, [r7, #2]
c0de48a8:	78fb      	ldrb	r3, [r7, #3]
c0de48aa:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de48ae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48b2:	4639      	mov	r1, r7
c0de48b4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de48b8:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de48bc:	6360      	str	r0, [r4, #52]	@ 0x34
c0de48be:	7a78      	ldrb	r0, [r7, #9]
c0de48c0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de48c4:	788a      	ldrb	r2, [r1, #2]
c0de48c6:	78c9      	ldrb	r1, [r1, #3]
c0de48c8:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de48cc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de48d0:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de48d2:	7978      	ldrb	r0, [r7, #5]
c0de48d4:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de48d8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de48dc:	78b9      	ldrb	r1, [r7, #2]
c0de48de:	78fa      	ldrb	r2, [r7, #3]
c0de48e0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de48e4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de48e8:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de48ea:	4770      	bx	lr

c0de48ec <OUTLINED_FUNCTION_2>:
c0de48ec:	f88d 1008 	strb.w	r1, [sp, #8]
c0de48f0:	9003      	str	r0, [sp, #12]
c0de48f2:	2000      	movs	r0, #0
c0de48f4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de48f8:	2001      	movs	r0, #1
c0de48fa:	f7ff bd19 	b.w	c0de4330 <getFreeContext>

c0de48fe <OUTLINED_FUNCTION_3>:
c0de48fe:	2114      	movs	r1, #20
c0de4900:	4698      	mov	r8, r3
c0de4902:	4617      	mov	r7, r2
c0de4904:	f002 bf00 	b.w	c0de7708 <__aeabi_memclr>

c0de4908 <OUTLINED_FUNCTION_4>:
c0de4908:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de490a:	f7ff bc81 	b.w	c0de4210 <nbgl_layoutDraw>

c0de490e <OUTLINED_FUNCTION_5>:
c0de490e:	2501      	movs	r5, #1
c0de4910:	f00a 0003 	and.w	r0, sl, #3
c0de4914:	2803      	cmp	r0, #3
c0de4916:	7025      	strb	r5, [r4, #0]
c0de4918:	7420      	strb	r0, [r4, #16]
c0de491a:	4770      	bx	lr

c0de491c <nbgl_useCaseHomeAndSettings>:
c0de491c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4920:	4607      	mov	r7, r0
c0de4922:	4810      	ldr	r0, [pc, #64]	@ (c0de4964 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4924:	f001 fc98 	bl	c0de6258 <OUTLINED_FUNCTION_0>
c0de4928:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de492c:	6425      	str	r5, [r4, #64]	@ 0x40
c0de492e:	9d06      	ldr	r5, [sp, #24]
c0de4930:	4628      	mov	r0, r5
c0de4932:	f002 fbdd 	bl	c0de70f0 <pic>
c0de4936:	6460      	str	r0, [r4, #68]	@ 0x44
c0de4938:	9807      	ldr	r0, [sp, #28]
c0de493a:	f002 fbd9 	bl	c0de70f0 <pic>
c0de493e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4940:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4944:	6521      	str	r1, [r4, #80]	@ 0x50
c0de4946:	9908      	ldr	r1, [sp, #32]
c0de4948:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de494c:	bf18      	it	ne
c0de494e:	2d00      	cmpne	r5, #0
c0de4950:	d103      	bne.n	c0de495a <nbgl_useCaseHomeAndSettings+0x3e>
c0de4952:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4956:	f000 b843 	b.w	c0de49e0 <startUseCaseHome>
c0de495a:	4640      	mov	r0, r8
c0de495c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4960:	f000 b802 	b.w	c0de4968 <startUseCaseSettingsAtPage>
c0de4964:	00000750 	.word	0x00000750

c0de4968 <startUseCaseSettingsAtPage>:
c0de4968:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de496a:	b08f      	sub	sp, #60	@ 0x3c
c0de496c:	4604      	mov	r4, r0
c0de496e:	a801      	add	r0, sp, #4
c0de4970:	2138      	movs	r1, #56	@ 0x38
c0de4972:	f002 fec9 	bl	c0de7708 <__aeabi_memclr>
c0de4976:	4e19      	ldr	r6, [pc, #100]	@ (c0de49dc <startUseCaseSettingsAtPage+0x74>)
c0de4978:	eb09 0006 	add.w	r0, r9, r6
c0de497c:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4980:	280f      	cmp	r0, #15
c0de4982:	bf1e      	ittt	ne
c0de4984:	eb09 0006 	addne.w	r0, r9, r6
c0de4988:	210e      	movne	r1, #14
c0de498a:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de498e:	eb09 0006 	add.w	r0, r9, r6
c0de4992:	2101      	movs	r1, #1
c0de4994:	2700      	movs	r7, #0
c0de4996:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de499a:	ad01      	add	r5, sp, #4
c0de499c:	eb09 0006 	add.w	r0, r9, r6
c0de49a0:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de49a2:	7a01      	ldrb	r1, [r0, #8]
c0de49a4:	428f      	cmp	r7, r1
c0de49a6:	d20e      	bcs.n	c0de49c6 <startUseCaseSettingsAtPage+0x5e>
c0de49a8:	b279      	sxtb	r1, r7
c0de49aa:	462a      	mov	r2, r5
c0de49ac:	f000 fca6 	bl	c0de52fc <getContentAtIdx>
c0de49b0:	f000 fcfe 	bl	c0de53b0 <getContentNbElement>
c0de49b4:	eb09 0106 	add.w	r1, r9, r6
c0de49b8:	3701      	adds	r7, #1
c0de49ba:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de49be:	4410      	add	r0, r2
c0de49c0:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de49c4:	e7ea      	b.n	c0de499c <startUseCaseSettingsAtPage+0x34>
c0de49c6:	eb09 0006 	add.w	r0, r9, r6
c0de49ca:	2100      	movs	r1, #0
c0de49cc:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de49d0:	2000      	movs	r0, #0
c0de49d2:	f000 fef7 	bl	c0de57c4 <displaySettingsPage>
c0de49d6:	b00f      	add	sp, #60	@ 0x3c
c0de49d8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de49da:	bf00      	nop
c0de49dc:	00000750 	.word	0x00000750

c0de49e0 <startUseCaseHome>:
c0de49e0:	b510      	push	{r4, lr}
c0de49e2:	4821      	ldr	r0, [pc, #132]	@ (c0de4a68 <startUseCaseHome+0x88>)
c0de49e4:	eb09 0100 	add.w	r1, r9, r0
c0de49e8:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de49ec:	290d      	cmp	r1, #13
c0de49ee:	d009      	beq.n	c0de4a04 <startUseCaseHome+0x24>
c0de49f0:	290e      	cmp	r1, #14
c0de49f2:	d114      	bne.n	c0de4a1e <startUseCaseHome+0x3e>
c0de49f4:	eb09 0100 	add.w	r1, r9, r0
c0de49f8:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de49fa:	2102      	movs	r1, #2
c0de49fc:	2a00      	cmp	r2, #0
c0de49fe:	bf08      	it	eq
c0de4a00:	2101      	moveq	r1, #1
c0de4a02:	e00d      	b.n	c0de4a20 <startUseCaseHome+0x40>
c0de4a04:	eb09 0200 	add.w	r2, r9, r0
c0de4a08:	2102      	movs	r1, #2
c0de4a0a:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de4a0c:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de4a0e:	2c00      	cmp	r4, #0
c0de4a10:	bf08      	it	eq
c0de4a12:	2101      	moveq	r1, #1
c0de4a14:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a18:	b133      	cbz	r3, c0de4a28 <startUseCaseHome+0x48>
c0de4a1a:	3101      	adds	r1, #1
c0de4a1c:	e000      	b.n	c0de4a20 <startUseCaseHome+0x40>
c0de4a1e:	2100      	movs	r1, #0
c0de4a20:	eb09 0200 	add.w	r2, r9, r0
c0de4a24:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a28:	eb09 0200 	add.w	r2, r9, r0
c0de4a2c:	210c      	movs	r1, #12
c0de4a2e:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de4a32:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de4a36:	2103      	movs	r1, #3
c0de4a38:	2b00      	cmp	r3, #0
c0de4a3a:	bf08      	it	eq
c0de4a3c:	2102      	moveq	r1, #2
c0de4a3e:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4a42:	b124      	cbz	r4, c0de4a4e <startUseCaseHome+0x6e>
c0de4a44:	3101      	adds	r1, #1
c0de4a46:	eb09 0200 	add.w	r2, r9, r0
c0de4a4a:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4a4e:	eb09 0200 	add.w	r2, r9, r0
c0de4a52:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de4a54:	b11a      	cbz	r2, c0de4a5e <startUseCaseHome+0x7e>
c0de4a56:	4448      	add	r0, r9
c0de4a58:	3101      	adds	r1, #1
c0de4a5a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4a5e:	2000      	movs	r0, #0
c0de4a60:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4a64:	f000 bf9e 	b.w	c0de59a4 <displayHomePage>
c0de4a68:	00000750 	.word	0x00000750

c0de4a6c <nbgl_useCaseReview>:
c0de4a6c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4a6e:	4614      	mov	r4, r2
c0de4a70:	460a      	mov	r2, r1
c0de4a72:	4601      	mov	r1, r0
c0de4a74:	9808      	ldr	r0, [sp, #32]
c0de4a76:	9003      	str	r0, [sp, #12]
c0de4a78:	9807      	ldr	r0, [sp, #28]
c0de4a7a:	9002      	str	r0, [sp, #8]
c0de4a7c:	9806      	ldr	r0, [sp, #24]
c0de4a7e:	e9cd 3000 	strd	r3, r0, [sp]
c0de4a82:	2002      	movs	r0, #2
c0de4a84:	4623      	mov	r3, r4
c0de4a86:	f000 f801 	bl	c0de4a8c <useCaseReview>
c0de4a8a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4a8c <useCaseReview>:
c0de4a8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4a90:	4607      	mov	r7, r0
c0de4a92:	4811      	ldr	r0, [pc, #68]	@ (c0de4ad8 <useCaseReview+0x4c>)
c0de4a94:	4688      	mov	r8, r1
c0de4a96:	2140      	movs	r1, #64	@ 0x40
c0de4a98:	461d      	mov	r5, r3
c0de4a9a:	4614      	mov	r4, r2
c0de4a9c:	f001 fbf1 	bl	c0de6282 <OUTLINED_FUNCTION_2>
c0de4aa0:	9808      	ldr	r0, [sp, #32]
c0de4aa2:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4aa4:	9807      	ldr	r0, [sp, #28]
c0de4aa6:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de4aa8:	9906      	ldr	r1, [sp, #24]
c0de4aaa:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de4aae:	6471      	str	r1, [r6, #68]	@ 0x44
c0de4ab0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4ab2:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de4ab6:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de4aba:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de4abc:	2104      	movs	r1, #4
c0de4abe:	2800      	cmp	r0, #0
c0de4ac0:	bf08      	it	eq
c0de4ac2:	2103      	moveq	r1, #3
c0de4ac4:	7a20      	ldrb	r0, [r4, #8]
c0de4ac6:	4408      	add	r0, r1
c0de4ac8:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4acc:	2000      	movs	r0, #0
c0de4ace:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4ad2:	f000 b8b1 	b.w	c0de4c38 <displayReviewPage>
c0de4ad6:	bf00      	nop
c0de4ad8:	00000750 	.word	0x00000750

c0de4adc <nbgl_useCaseAdvancedReview>:
c0de4adc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4ae0:	b088      	sub	sp, #32
c0de4ae2:	4688      	mov	r8, r1
c0de4ae4:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4ae8:	4615      	mov	r5, r2
c0de4aea:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de4aee:	4604      	mov	r4, r0
c0de4af0:	f1ba 0f00 	cmp.w	sl, #0
c0de4af4:	d039      	beq.n	c0de4b6a <nbgl_useCaseAdvancedReview+0x8e>
c0de4af6:	f8da 6000 	ldr.w	r6, [sl]
c0de4afa:	b92e      	cbnz	r6, c0de4b08 <nbgl_useCaseAdvancedReview+0x2c>
c0de4afc:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4b00:	b910      	cbnz	r0, c0de4b08 <nbgl_useCaseAdvancedReview+0x2c>
c0de4b02:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4b06:	b380      	cbz	r0, c0de4b6a <nbgl_useCaseAdvancedReview+0x8e>
c0de4b08:	4822      	ldr	r0, [pc, #136]	@ (c0de4b94 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b0a:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de4b0e:	2128      	movs	r1, #40	@ 0x28
c0de4b10:	9605      	str	r6, [sp, #20]
c0de4b12:	461f      	mov	r7, r3
c0de4b14:	4616      	mov	r6, r2
c0de4b16:	eb09 0400 	add.w	r4, r9, r0
c0de4b1a:	4620      	mov	r0, r4
c0de4b1c:	f002 fdf4 	bl	c0de7708 <__aeabi_memclr>
c0de4b20:	491c      	ldr	r1, [pc, #112]	@ (c0de4b94 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b22:	2002      	movs	r0, #2
c0de4b24:	46b4      	mov	ip, r6
c0de4b26:	462b      	mov	r3, r5
c0de4b28:	f809 0001 	strb.w	r0, [r9, r1]
c0de4b2c:	9905      	ldr	r1, [sp, #20]
c0de4b2e:	2040      	movs	r0, #64	@ 0x40
c0de4b30:	2908      	cmp	r1, #8
c0de4b32:	bf08      	it	eq
c0de4b34:	2080      	moveq	r0, #128	@ 0x80
c0de4b36:	9906      	ldr	r1, [sp, #24]
c0de4b38:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de4b3c:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4b40:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4b44:	9e07      	ldr	r6, [sp, #28]
c0de4b46:	4301      	orrs	r1, r0
c0de4b48:	9807      	ldr	r0, [sp, #28]
c0de4b4a:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de4b4e:	6220      	str	r0, [r4, #32]
c0de4b50:	f89a 0000 	ldrb.w	r0, [sl]
c0de4b54:	f010 0f16 	tst.w	r0, #22
c0de4b58:	d102      	bne.n	c0de4b60 <nbgl_useCaseAdvancedReview+0x84>
c0de4b5a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4b5e:	b188      	cbz	r0, c0de4b84 <nbgl_useCaseAdvancedReview+0xa8>
c0de4b60:	b008      	add	sp, #32
c0de4b62:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4b66:	f000 b817 	b.w	c0de4b98 <displayInitialWarning>
c0de4b6a:	e9cd 3200 	strd	r3, r2, [sp]
c0de4b6e:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de4b72:	2002      	movs	r0, #2
c0de4b74:	4621      	mov	r1, r4
c0de4b76:	4642      	mov	r2, r8
c0de4b78:	462b      	mov	r3, r5
c0de4b7a:	f7ff ff87 	bl	c0de4a8c <useCaseReview>
c0de4b7e:	b008      	add	sp, #32
c0de4b80:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4b84:	2002      	movs	r0, #2
c0de4b86:	4642      	mov	r2, r8
c0de4b88:	463d      	mov	r5, r7
c0de4b8a:	e9cd 7c00 	strd	r7, ip, [sp]
c0de4b8e:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de4b92:	e7f2      	b.n	c0de4b7a <nbgl_useCaseAdvancedReview+0x9e>
c0de4b94:	00000750 	.word	0x00000750

c0de4b98 <displayInitialWarning>:
c0de4b98:	4803      	ldr	r0, [pc, #12]	@ (c0de4ba8 <displayInitialWarning+0x10>)
c0de4b9a:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4b9e:	4448      	add	r0, r9
c0de4ba0:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4ba2:	f000 bfeb 	b.w	c0de5b7c <displayWarningStep>
c0de4ba6:	bf00      	nop
c0de4ba8:	00000750 	.word	0x00000750

c0de4bac <nbgl_useCaseReviewBlindSigning>:
c0de4bac:	b5b0      	push	{r4, r5, r7, lr}
c0de4bae:	b086      	sub	sp, #24
c0de4bb0:	4d06      	ldr	r5, [pc, #24]	@ (c0de4bcc <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4bb2:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4bb4:	447d      	add	r5, pc
c0de4bb6:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4bba:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4bbc:	9401      	str	r4, [sp, #4]
c0de4bbe:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4bc0:	9400      	str	r4, [sp, #0]
c0de4bc2:	f7ff ff8b 	bl	c0de4adc <nbgl_useCaseAdvancedReview>
c0de4bc6:	b006      	add	sp, #24
c0de4bc8:	bdb0      	pop	{r4, r5, r7, pc}
c0de4bca:	bf00      	nop
c0de4bcc:	00003fbc 	.word	0x00003fbc

c0de4bd0 <nbgl_useCaseAddressReview>:
c0de4bd0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4bd4:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4c34 <nbgl_useCaseAddressReview+0x64>
c0de4bd8:	460c      	mov	r4, r1
c0de4bda:	4607      	mov	r7, r0
c0de4bdc:	2140      	movs	r1, #64	@ 0x40
c0de4bde:	469a      	mov	sl, r3
c0de4be0:	4616      	mov	r6, r2
c0de4be2:	eb09 0508 	add.w	r5, r9, r8
c0de4be6:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4bea:	f002 fd8d 	bl	c0de7708 <__aeabi_memclr>
c0de4bee:	2004      	movs	r0, #4
c0de4bf0:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4bf2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4bf6:	9808      	ldr	r0, [sp, #32]
c0de4bf8:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4bfc:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4bfe:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4c00:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4c02:	2105      	movs	r1, #5
c0de4c04:	2800      	cmp	r0, #0
c0de4c06:	bf08      	it	eq
c0de4c08:	2104      	moveq	r1, #4
c0de4c0a:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4c0e:	b15c      	cbz	r4, c0de4c28 <nbgl_useCaseAddressReview+0x58>
c0de4c10:	4620      	mov	r0, r4
c0de4c12:	eb09 0508 	add.w	r5, r9, r8
c0de4c16:	f002 fa6b 	bl	c0de70f0 <pic>
c0de4c1a:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4c1c:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4c20:	7a21      	ldrb	r1, [r4, #8]
c0de4c22:	4408      	add	r0, r1
c0de4c24:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4c28:	2000      	movs	r0, #0
c0de4c2a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c2e:	f000 b803 	b.w	c0de4c38 <displayReviewPage>
c0de4c32:	bf00      	nop
c0de4c34:	00000750 	.word	0x00000750

c0de4c38 <displayReviewPage>:
c0de4c38:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4c3a:	b08b      	sub	sp, #44	@ 0x2c
c0de4c3c:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4db4 <displayReviewPage+0x17c>)
c0de4c3e:	4604      	mov	r4, r0
c0de4c40:	2000      	movs	r0, #0
c0de4c42:	2201      	movs	r2, #1
c0de4c44:	2702      	movs	r7, #2
c0de4c46:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4c4a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4c4e:	eb09 0306 	add.w	r3, r9, r6
c0de4c52:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4c54:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4c56:	2800      	cmp	r0, #0
c0de4c58:	bf08      	it	eq
c0de4c5a:	22ff      	moveq	r2, #255	@ 0xff
c0de4c5c:	bf08      	it	eq
c0de4c5e:	2701      	moveq	r7, #1
c0de4c60:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4c64:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4c68:	1e9d      	subs	r5, r3, #2
c0de4c6a:	b2ed      	uxtb	r5, r5
c0de4c6c:	42a9      	cmp	r1, r5
c0de4c6e:	da06      	bge.n	c0de4c7e <displayReviewPage+0x46>
c0de4c70:	42b9      	cmp	r1, r7
c0de4c72:	da0b      	bge.n	c0de4c8c <displayReviewPage+0x54>
c0de4c74:	2900      	cmp	r1, #0
c0de4c76:	d041      	beq.n	c0de4cfc <displayReviewPage+0xc4>
c0de4c78:	428a      	cmp	r2, r1
c0de4c7a:	d044      	beq.n	c0de4d06 <displayReviewPage+0xce>
c0de4c7c:	e044      	b.n	c0de4d08 <displayReviewPage+0xd0>
c0de4c7e:	d110      	bne.n	c0de4ca2 <displayReviewPage+0x6a>
c0de4c80:	a908      	add	r1, sp, #32
c0de4c82:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4c84:	2001      	movs	r0, #1
c0de4c86:	f000 ffe1 	bl	c0de5c4c <getLastPageInfo>
c0de4c8a:	e03d      	b.n	c0de4d08 <displayReviewPage+0xd0>
c0de4c8c:	eb09 0006 	add.w	r0, r9, r6
c0de4c90:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4c92:	b18d      	cbz	r5, c0de4cb8 <displayReviewPage+0x80>
c0de4c94:	42b9      	cmp	r1, r7
c0de4c96:	d10f      	bne.n	c0de4cb8 <displayReviewPage+0x80>
c0de4c98:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4c9a:	4847      	ldr	r0, [pc, #284]	@ (c0de4db8 <displayReviewPage+0x180>)
c0de4c9c:	4478      	add	r0, pc
c0de4c9e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4ca0:	e033      	b.n	c0de4d0a <displayReviewPage+0xd2>
c0de4ca2:	1e58      	subs	r0, r3, #1
c0de4ca4:	b2c0      	uxtb	r0, r0
c0de4ca6:	4281      	cmp	r1, r0
c0de4ca8:	d12e      	bne.n	c0de4d08 <displayReviewPage+0xd0>
c0de4caa:	a908      	add	r1, sp, #32
c0de4cac:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4cae:	2000      	movs	r0, #0
c0de4cb0:	2500      	movs	r5, #0
c0de4cb2:	f000 ffcb 	bl	c0de5c4c <getLastPageInfo>
c0de4cb6:	e028      	b.n	c0de4d0a <displayReviewPage+0xd2>
c0de4cb8:	eb09 0006 	add.w	r0, r9, r6
c0de4cbc:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4cc0:	06d2      	lsls	r2, r2, #27
c0de4cc2:	d535      	bpl.n	c0de4d30 <displayReviewPage+0xf8>
c0de4cc4:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4cc8:	bb90      	cbnz	r0, c0de4d30 <displayReviewPage+0xf8>
c0de4cca:	42b9      	cmp	r1, r7
c0de4ccc:	dc05      	bgt.n	c0de4cda <displayReviewPage+0xa2>
c0de4cce:	eb09 0006 	add.w	r0, r9, r6
c0de4cd2:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4cd6:	2808      	cmp	r0, #8
c0de4cd8:	d12a      	bne.n	c0de4d30 <displayReviewPage+0xf8>
c0de4cda:	2000      	movs	r0, #0
c0de4cdc:	9006      	str	r0, [sp, #24]
c0de4cde:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4ce2:	eb09 0006 	add.w	r0, r9, r6
c0de4ce6:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4cea:	f004 0008 	and.w	r0, r4, #8
c0de4cee:	2a01      	cmp	r2, #1
c0de4cf0:	d001      	beq.n	c0de4cf6 <displayReviewPage+0xbe>
c0de4cf2:	2901      	cmp	r1, #1
c0de4cf4:	db43      	blt.n	c0de4d7e <displayReviewPage+0x146>
c0de4cf6:	f040 0003 	orr.w	r0, r0, #3
c0de4cfa:	e042      	b.n	c0de4d82 <displayReviewPage+0x14a>
c0de4cfc:	eb09 0006 	add.w	r0, r9, r6
c0de4d00:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4d04:	9108      	str	r1, [sp, #32]
c0de4d06:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4d08:	2500      	movs	r5, #0
c0de4d0a:	2000      	movs	r0, #0
c0de4d0c:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4d0e:	9908      	ldr	r1, [sp, #32]
c0de4d10:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4dcc <displayReviewPage+0x194>)
c0de4d12:	b2c0      	uxtb	r0, r0
c0de4d14:	2300      	movs	r3, #0
c0de4d16:	9002      	str	r0, [sp, #8]
c0de4d18:	4620      	mov	r0, r4
c0de4d1a:	447e      	add	r6, pc
c0de4d1c:	e9cd 6300 	strd	r6, r3, [sp]
c0de4d20:	462b      	mov	r3, r5
c0de4d22:	f000 f875 	bl	c0de4e10 <drawStep>
c0de4d26:	b00b      	add	sp, #44	@ 0x2c
c0de4d28:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4d2c:	f001 bfd5 	b.w	c0de6cda <nbgl_refresh>
c0de4d30:	2200      	movs	r2, #0
c0de4d32:	eb09 0006 	add.w	r0, r9, r6
c0de4d36:	1bcf      	subs	r7, r1, r7
c0de4d38:	f10d 0c0c 	add.w	ip, sp, #12
c0de4d3c:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4d40:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4d44:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4d46:	ab08      	add	r3, sp, #32
c0de4d48:	aa07      	add	r2, sp, #28
c0de4d4a:	2d00      	cmp	r5, #0
c0de4d4c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4d50:	bf18      	it	ne
c0de4d52:	3f01      	subne	r7, #1
c0de4d54:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d56:	b2f9      	uxtb	r1, r7
c0de4d58:	ab09      	add	r3, sp, #36	@ 0x24
c0de4d5a:	f000 fcb7 	bl	c0de56cc <getPairData>
c0de4d5e:	9807      	ldr	r0, [sp, #28]
c0de4d60:	b140      	cbz	r0, c0de4d74 <displayReviewPage+0x13c>
c0de4d62:	eb09 0006 	add.w	r0, r9, r6
c0de4d66:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4d6a:	4917      	ldr	r1, [pc, #92]	@ (c0de4dc8 <displayReviewPage+0x190>)
c0de4d6c:	4479      	add	r1, pc
c0de4d6e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4d70:	2001      	movs	r0, #1
c0de4d72:	e002      	b.n	c0de4d7a <displayReviewPage+0x142>
c0de4d74:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4d78:	0040      	lsls	r0, r0, #1
c0de4d7a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4d7c:	e7c6      	b.n	c0de4d0c <displayReviewPage+0xd4>
c0de4d7e:	f040 0001 	orr.w	r0, r0, #1
c0de4d82:	490e      	ldr	r1, [pc, #56]	@ (c0de4dbc <displayReviewPage+0x184>)
c0de4d84:	2200      	movs	r2, #0
c0de4d86:	4479      	add	r1, pc
c0de4d88:	9103      	str	r1, [sp, #12]
c0de4d8a:	490d      	ldr	r1, [pc, #52]	@ (c0de4dc0 <displayReviewPage+0x188>)
c0de4d8c:	4479      	add	r1, pc
c0de4d8e:	9105      	str	r1, [sp, #20]
c0de4d90:	2100      	movs	r1, #0
c0de4d92:	9100      	str	r1, [sp, #0]
c0de4d94:	490b      	ldr	r1, [pc, #44]	@ (c0de4dc4 <displayReviewPage+0x18c>)
c0de4d96:	ab03      	add	r3, sp, #12
c0de4d98:	4479      	add	r1, pc
c0de4d9a:	f7ff fbd5 	bl	c0de4548 <nbgl_stepDrawCenteredInfo>
c0de4d9e:	eb09 0406 	add.w	r4, r9, r6
c0de4da2:	f001 ff9a 	bl	c0de6cda <nbgl_refresh>
c0de4da6:	2001      	movs	r0, #1
c0de4da8:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4dac:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4db0:	b00b      	add	sp, #44	@ 0x2c
c0de4db2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4db4:	00000750 	.word	0x00000750
c0de4db8:	00002fb2 	.word	0x00002fb2
c0de4dbc:	00002c98 	.word	0x00002c98
c0de4dc0:	00002ac6 	.word	0x00002ac6
c0de4dc4:	000010bd 	.word	0x000010bd
c0de4dc8:	000011a1 	.word	0x000011a1
c0de4dcc:	00001267 	.word	0x00001267

c0de4dd0 <nbgl_useCaseStatus>:
c0de4dd0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4dd2:	4605      	mov	r5, r0
c0de4dd4:	480c      	ldr	r0, [pc, #48]	@ (c0de4e08 <nbgl_useCaseStatus+0x38>)
c0de4dd6:	2140      	movs	r1, #64	@ 0x40
c0de4dd8:	4614      	mov	r4, r2
c0de4dda:	f001 fa52 	bl	c0de6282 <OUTLINED_FUNCTION_2>
c0de4dde:	2009      	movs	r0, #9
c0de4de0:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4de2:	462a      	mov	r2, r5
c0de4de4:	2300      	movs	r3, #0
c0de4de6:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4dea:	2001      	movs	r0, #1
c0de4dec:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4df0:	2000      	movs	r0, #0
c0de4df2:	4906      	ldr	r1, [pc, #24]	@ (c0de4e0c <nbgl_useCaseStatus+0x3c>)
c0de4df4:	9002      	str	r0, [sp, #8]
c0de4df6:	4479      	add	r1, pc
c0de4df8:	e9cd 1000 	strd	r1, r0, [sp]
c0de4dfc:	2040      	movs	r0, #64	@ 0x40
c0de4dfe:	2100      	movs	r1, #0
c0de4e00:	f000 f806 	bl	c0de4e10 <drawStep>
c0de4e04:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4e06:	bf00      	nop
c0de4e08:	00000750 	.word	0x00000750
c0de4e0c:	0000019f 	.word	0x0000019f

c0de4e10 <drawStep>:
c0de4e10:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e14:	b09a      	sub	sp, #104	@ 0x68
c0de4e16:	4688      	mov	r8, r1
c0de4e18:	4604      	mov	r4, r0
c0de4e1a:	a80c      	add	r0, sp, #48	@ 0x30
c0de4e1c:	2138      	movs	r1, #56	@ 0x38
c0de4e1e:	461d      	mov	r5, r3
c0de4e20:	4616      	mov	r6, r2
c0de4e22:	f002 fc71 	bl	c0de7708 <__aeabi_memclr>
c0de4e26:	2700      	movs	r7, #0
c0de4e28:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4e2c:	4856      	ldr	r0, [pc, #344]	@ (c0de4f88 <drawStep+0x178>)
c0de4e2e:	4478      	add	r0, pc
c0de4e30:	f002 f95e 	bl	c0de70f0 <pic>
c0de4e34:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de4f84 <drawStep+0x174>
c0de4e38:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4e3c:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4e3e:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4e42:	eb09 000b 	add.w	r0, r9, fp
c0de4e46:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4e4a:	2802      	cmp	r0, #2
c0de4e4c:	d30b      	bcc.n	c0de4e66 <drawStep+0x56>
c0de4e4e:	eb09 010b 	add.w	r1, r9, fp
c0de4e52:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4e56:	b129      	cbz	r1, c0de4e64 <drawStep+0x54>
c0de4e58:	3801      	subs	r0, #1
c0de4e5a:	2703      	movs	r7, #3
c0de4e5c:	4288      	cmp	r0, r1
c0de4e5e:	bf08      	it	eq
c0de4e60:	2702      	moveq	r7, #2
c0de4e62:	e000      	b.n	c0de4e66 <drawStep+0x56>
c0de4e64:	2701      	movs	r7, #1
c0de4e66:	eb09 000b 	add.w	r0, r9, fp
c0de4e6a:	ea47 0204 	orr.w	r2, r7, r4
c0de4e6e:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4e72:	4614      	mov	r4, r2
c0de4e74:	2901      	cmp	r1, #1
c0de4e76:	bf88      	it	hi
c0de4e78:	f044 0402 	orrhi.w	r4, r4, #2
c0de4e7c:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4e7e:	2900      	cmp	r1, #0
c0de4e80:	bf08      	it	eq
c0de4e82:	4614      	moveq	r4, r2
c0de4e84:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4e88:	2806      	cmp	r0, #6
c0de4e8a:	f040 0108 	orr.w	r1, r0, #8
c0de4e8e:	bf18      	it	ne
c0de4e90:	4614      	movne	r4, r2
c0de4e92:	2909      	cmp	r1, #9
c0de4e94:	bf0c      	ite	eq
c0de4e96:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4e9a:	f04f 0a00 	movne.w	sl, #0
c0de4e9e:	280a      	cmp	r0, #10
c0de4ea0:	d105      	bne.n	c0de4eae <drawStep+0x9e>
c0de4ea2:	eb09 000b 	add.w	r0, r9, fp
c0de4ea6:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4ea8:	b108      	cbz	r0, c0de4eae <drawStep+0x9e>
c0de4eaa:	f7ff fc73 	bl	c0de4794 <nbgl_stepRelease>
c0de4eae:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4eb0:	b1b6      	cbz	r6, c0de4ee0 <drawStep+0xd0>
c0de4eb2:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4eb4:	f1b8 0f00 	cmp.w	r8, #0
c0de4eb8:	d12c      	bne.n	c0de4f14 <drawStep+0x104>
c0de4eba:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4ebc:	2802      	cmp	r0, #2
c0de4ebe:	d029      	beq.n	c0de4f14 <drawStep+0x104>
c0de4ec0:	2201      	movs	r2, #1
c0de4ec2:	4633      	mov	r3, r6
c0de4ec4:	2801      	cmp	r0, #1
c0de4ec6:	bf08      	it	eq
c0de4ec8:	2202      	moveq	r2, #2
c0de4eca:	4620      	mov	r0, r4
c0de4ecc:	2d00      	cmp	r5, #0
c0de4ece:	bf08      	it	eq
c0de4ed0:	462a      	moveq	r2, r5
c0de4ed2:	e9cd 5200 	strd	r5, r2, [sp]
c0de4ed6:	9702      	str	r7, [sp, #8]
c0de4ed8:	4652      	mov	r2, sl
c0de4eda:	f7ff f9ef 	bl	c0de42bc <nbgl_stepDrawText>
c0de4ede:	e043      	b.n	c0de4f68 <drawStep+0x158>
c0de4ee0:	eb09 000b 	add.w	r0, r9, fp
c0de4ee4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4ee8:	a903      	add	r1, sp, #12
c0de4eea:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4eec:	f000 fbaa 	bl	c0de5644 <getContentElemAtIdx>
c0de4ef0:	b330      	cbz	r0, c0de4f40 <drawStep+0x130>
c0de4ef2:	7801      	ldrb	r1, [r0, #0]
c0de4ef4:	2400      	movs	r4, #0
c0de4ef6:	290a      	cmp	r1, #10
c0de4ef8:	d024      	beq.n	c0de4f44 <drawStep+0x134>
c0de4efa:	2909      	cmp	r1, #9
c0de4efc:	d135      	bne.n	c0de4f6a <drawStep+0x15a>
c0de4efe:	f001 f9d0 	bl	c0de62a2 <OUTLINED_FUNCTION_5>
c0de4f02:	4922      	ldr	r1, [pc, #136]	@ (c0de4f8c <drawStep+0x17c>)
c0de4f04:	4479      	add	r1, pc
c0de4f06:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4f08:	7941      	ldrb	r1, [r0, #5]
c0de4f0a:	7980      	ldrb	r0, [r0, #6]
c0de4f0c:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4f10:	1c48      	adds	r0, r1, #1
c0de4f12:	e020      	b.n	c0de4f56 <drawStep+0x146>
c0de4f14:	2000      	movs	r0, #0
c0de4f16:	9603      	str	r6, [sp, #12]
c0de4f18:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4f1c:	9504      	str	r5, [sp, #16]
c0de4f1e:	4652      	mov	r2, sl
c0de4f20:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4f24:	eb09 000b 	add.w	r0, r9, fp
c0de4f28:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4f2a:	4328      	orrs	r0, r5
c0de4f2c:	bf18      	it	ne
c0de4f2e:	2001      	movne	r0, #1
c0de4f30:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4f34:	9700      	str	r7, [sp, #0]
c0de4f36:	ab03      	add	r3, sp, #12
c0de4f38:	4620      	mov	r0, r4
c0de4f3a:	f7ff fb05 	bl	c0de4548 <nbgl_stepDrawCenteredInfo>
c0de4f3e:	e013      	b.n	c0de4f68 <drawStep+0x158>
c0de4f40:	2400      	movs	r4, #0
c0de4f42:	e012      	b.n	c0de4f6a <drawStep+0x15a>
c0de4f44:	f001 f9ad 	bl	c0de62a2 <OUTLINED_FUNCTION_5>
c0de4f48:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de4f4c:	4910      	ldr	r1, [pc, #64]	@ (c0de4f90 <drawStep+0x180>)
c0de4f4e:	7a00      	ldrb	r0, [r0, #8]
c0de4f50:	4479      	add	r1, pc
c0de4f52:	3001      	adds	r0, #1
c0de4f54:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4f56:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de4f5a:	4651      	mov	r1, sl
c0de4f5c:	463b      	mov	r3, r7
c0de4f5e:	480d      	ldr	r0, [pc, #52]	@ (c0de4f94 <drawStep+0x184>)
c0de4f60:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4f62:	4478      	add	r0, pc
c0de4f64:	f7ff fb80 	bl	c0de4668 <nbgl_stepDrawMenuList>
c0de4f68:	4604      	mov	r4, r0
c0de4f6a:	eb09 000b 	add.w	r0, r9, fp
c0de4f6e:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4f72:	280a      	cmp	r0, #10
c0de4f74:	bf04      	itt	eq
c0de4f76:	eb09 000b 	addeq.w	r0, r9, fp
c0de4f7a:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de4f7c:	b01a      	add	sp, #104	@ 0x68
c0de4f7e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4f82:	bf00      	nop
c0de4f84:	00000750 	.word	0x00000750
c0de4f88:	000012df 	.word	0x000012df
c0de4f8c:	00001219 	.word	0x00001219
c0de4f90:	000011cd 	.word	0x000011cd
c0de4f94:	0000121f 	.word	0x0000121f

c0de4f98 <statusButtonCallback>:
c0de4f98:	f041 0004 	orr.w	r0, r1, #4
c0de4f9c:	2804      	cmp	r0, #4
c0de4f9e:	d001      	beq.n	c0de4fa4 <statusButtonCallback+0xc>
c0de4fa0:	2901      	cmp	r1, #1
c0de4fa2:	d104      	bne.n	c0de4fae <statusButtonCallback+0x16>
c0de4fa4:	4802      	ldr	r0, [pc, #8]	@ (c0de4fb0 <statusButtonCallback+0x18>)
c0de4fa6:	4448      	add	r0, r9
c0de4fa8:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4faa:	b100      	cbz	r0, c0de4fae <statusButtonCallback+0x16>
c0de4fac:	4700      	bx	r0
c0de4fae:	4770      	bx	lr
c0de4fb0:	00000750 	.word	0x00000750

c0de4fb4 <nbgl_useCaseReviewStatus>:
c0de4fb4:	460a      	mov	r2, r1
c0de4fb6:	b198      	cbz	r0, c0de4fe0 <nbgl_useCaseReviewStatus+0x2c>
c0de4fb8:	2801      	cmp	r0, #1
c0de4fba:	d016      	beq.n	c0de4fea <nbgl_useCaseReviewStatus+0x36>
c0de4fbc:	2802      	cmp	r0, #2
c0de4fbe:	d019      	beq.n	c0de4ff4 <nbgl_useCaseReviewStatus+0x40>
c0de4fc0:	2803      	cmp	r0, #3
c0de4fc2:	d01c      	beq.n	c0de4ffe <nbgl_useCaseReviewStatus+0x4a>
c0de4fc4:	2804      	cmp	r0, #4
c0de4fc6:	d01f      	beq.n	c0de5008 <nbgl_useCaseReviewStatus+0x54>
c0de4fc8:	2807      	cmp	r0, #7
c0de4fca:	d022      	beq.n	c0de5012 <nbgl_useCaseReviewStatus+0x5e>
c0de4fcc:	2806      	cmp	r0, #6
c0de4fce:	d025      	beq.n	c0de501c <nbgl_useCaseReviewStatus+0x68>
c0de4fd0:	2805      	cmp	r0, #5
c0de4fd2:	bf18      	it	ne
c0de4fd4:	4770      	bxne	lr
c0de4fd6:	4815      	ldr	r0, [pc, #84]	@ (c0de502c <nbgl_useCaseReviewStatus+0x78>)
c0de4fd8:	2100      	movs	r1, #0
c0de4fda:	4478      	add	r0, pc
c0de4fdc:	f7ff bef8 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de4fe0:	4813      	ldr	r0, [pc, #76]	@ (c0de5030 <nbgl_useCaseReviewStatus+0x7c>)
c0de4fe2:	2101      	movs	r1, #1
c0de4fe4:	4478      	add	r0, pc
c0de4fe6:	f7ff bef3 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de4fea:	4812      	ldr	r0, [pc, #72]	@ (c0de5034 <nbgl_useCaseReviewStatus+0x80>)
c0de4fec:	2100      	movs	r1, #0
c0de4fee:	4478      	add	r0, pc
c0de4ff0:	f7ff beee 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de4ff4:	4810      	ldr	r0, [pc, #64]	@ (c0de5038 <nbgl_useCaseReviewStatus+0x84>)
c0de4ff6:	2101      	movs	r1, #1
c0de4ff8:	4478      	add	r0, pc
c0de4ffa:	f7ff bee9 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de4ffe:	480f      	ldr	r0, [pc, #60]	@ (c0de503c <nbgl_useCaseReviewStatus+0x88>)
c0de5000:	2100      	movs	r1, #0
c0de5002:	4478      	add	r0, pc
c0de5004:	f7ff bee4 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de5008:	4807      	ldr	r0, [pc, #28]	@ (c0de5028 <nbgl_useCaseReviewStatus+0x74>)
c0de500a:	2101      	movs	r1, #1
c0de500c:	4478      	add	r0, pc
c0de500e:	f7ff bedf 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de5012:	480c      	ldr	r0, [pc, #48]	@ (c0de5044 <nbgl_useCaseReviewStatus+0x90>)
c0de5014:	2100      	movs	r1, #0
c0de5016:	4478      	add	r0, pc
c0de5018:	f7ff beda 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de501c:	4808      	ldr	r0, [pc, #32]	@ (c0de5040 <nbgl_useCaseReviewStatus+0x8c>)
c0de501e:	2101      	movs	r1, #1
c0de5020:	4478      	add	r0, pc
c0de5022:	f7ff bed5 	b.w	c0de4dd0 <nbgl_useCaseStatus>
c0de5026:	bf00      	nop
c0de5028:	000029dd 	.word	0x000029dd
c0de502c:	00002a31 	.word	0x00002a31
c0de5030:	00002ac1 	.word	0x00002ac1
c0de5034:	00002c8d 	.word	0x00002c8d
c0de5038:	00002b20 	.word	0x00002b20
c0de503c:	00002c1c 	.word	0x00002c1c
c0de5040:	00002a45 	.word	0x00002a45
c0de5044:	00002b7f 	.word	0x00002b7f

c0de5048 <displayStreamingReviewPage>:
c0de5048:	b570      	push	{r4, r5, r6, lr}
c0de504a:	b08c      	sub	sp, #48	@ 0x30
c0de504c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de51b8 <displayStreamingReviewPage+0x170>)
c0de504e:	2100      	movs	r1, #0
c0de5050:	4604      	mov	r4, r0
c0de5052:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5056:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de505a:	eb09 0005 	add.w	r0, r9, r5
c0de505e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5060:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de5064:	2806      	cmp	r0, #6
c0de5066:	d015      	beq.n	c0de5094 <displayStreamingReviewPage+0x4c>
c0de5068:	2805      	cmp	r0, #5
c0de506a:	d13d      	bne.n	c0de50e8 <displayStreamingReviewPage+0xa0>
c0de506c:	eb09 0205 	add.w	r2, r9, r5
c0de5070:	2101      	movs	r1, #1
c0de5072:	2302      	movs	r3, #2
c0de5074:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de5076:	2800      	cmp	r0, #0
c0de5078:	bf08      	it	eq
c0de507a:	21ff      	moveq	r1, #255	@ 0xff
c0de507c:	bf08      	it	eq
c0de507e:	2301      	moveq	r3, #1
c0de5080:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de5084:	4293      	cmp	r3, r2
c0de5086:	dd3b      	ble.n	c0de5100 <displayStreamingReviewPage+0xb8>
c0de5088:	b2d3      	uxtb	r3, r2
c0de508a:	2b00      	cmp	r3, #0
c0de508c:	d063      	beq.n	c0de5156 <displayStreamingReviewPage+0x10e>
c0de508e:	4291      	cmp	r1, r2
c0de5090:	d066      	beq.n	c0de5160 <displayStreamingReviewPage+0x118>
c0de5092:	e066      	b.n	c0de5162 <displayStreamingReviewPage+0x11a>
c0de5094:	eb09 0005 	add.w	r0, r9, r5
c0de5098:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de509c:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de509e:	7a02      	ldrb	r2, [r0, #8]
c0de50a0:	4291      	cmp	r1, r2
c0de50a2:	da2d      	bge.n	c0de5100 <displayStreamingReviewPage+0xb8>
c0de50a4:	eb09 0205 	add.w	r2, r9, r5
c0de50a8:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de50aa:	b3cb      	cbz	r3, c0de5120 <displayStreamingReviewPage+0xd8>
c0de50ac:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de50b0:	bbb2      	cbnz	r2, c0de5120 <displayStreamingReviewPage+0xd8>
c0de50b2:	eb09 0205 	add.w	r2, r9, r5
c0de50b6:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de50ba:	2a01      	cmp	r2, #1
c0de50bc:	d807      	bhi.n	c0de50ce <displayStreamingReviewPage+0x86>
c0de50be:	2900      	cmp	r1, #0
c0de50c0:	dc05      	bgt.n	c0de50ce <displayStreamingReviewPage+0x86>
c0de50c2:	eb09 0305 	add.w	r3, r9, r5
c0de50c6:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de50ca:	2b08      	cmp	r3, #8
c0de50cc:	d128      	bne.n	c0de5120 <displayStreamingReviewPage+0xd8>
c0de50ce:	2000      	movs	r0, #0
c0de50d0:	9007      	str	r0, [sp, #28]
c0de50d2:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de50d6:	f004 0008 	and.w	r0, r4, #8
c0de50da:	2a01      	cmp	r2, #1
c0de50dc:	d001      	beq.n	c0de50e2 <displayStreamingReviewPage+0x9a>
c0de50de:	2901      	cmp	r1, #1
c0de50e0:	db50      	blt.n	c0de5184 <displayStreamingReviewPage+0x13c>
c0de50e2:	f040 0003 	orr.w	r0, r0, #3
c0de50e6:	e04f      	b.n	c0de5188 <displayStreamingReviewPage+0x140>
c0de50e8:	eb09 0005 	add.w	r0, r9, r5
c0de50ec:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de50f0:	b180      	cbz	r0, c0de5114 <displayStreamingReviewPage+0xcc>
c0de50f2:	a909      	add	r1, sp, #36	@ 0x24
c0de50f4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de50f6:	2000      	movs	r0, #0
c0de50f8:	2500      	movs	r5, #0
c0de50fa:	f000 fda7 	bl	c0de5c4c <getLastPageInfo>
c0de50fe:	e031      	b.n	c0de5164 <displayStreamingReviewPage+0x11c>
c0de5100:	eb09 0005 	add.w	r0, r9, r5
c0de5104:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5106:	2900      	cmp	r1, #0
c0de5108:	d053      	beq.n	c0de51b2 <displayStreamingReviewPage+0x16a>
c0de510a:	2001      	movs	r0, #1
c0de510c:	b00c      	add	sp, #48	@ 0x30
c0de510e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5112:	4708      	bx	r1
c0de5114:	a909      	add	r1, sp, #36	@ 0x24
c0de5116:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5118:	2001      	movs	r0, #1
c0de511a:	f000 fd97 	bl	c0de5c4c <getLastPageInfo>
c0de511e:	e020      	b.n	c0de5162 <displayStreamingReviewPage+0x11a>
c0de5120:	2300      	movs	r3, #0
c0de5122:	eb09 0205 	add.w	r2, r9, r5
c0de5126:	b2c9      	uxtb	r1, r1
c0de5128:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de512c:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5130:	ab09      	add	r3, sp, #36	@ 0x24
c0de5132:	ad08      	add	r5, sp, #32
c0de5134:	f10d 020f 	add.w	r2, sp, #15
c0de5138:	e9cd 5300 	strd	r5, r3, [sp]
c0de513c:	9202      	str	r2, [sp, #8]
c0de513e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5140:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5142:	f000 fac3 	bl	c0de56cc <getPairData>
c0de5146:	9808      	ldr	r0, [sp, #32]
c0de5148:	2800      	cmp	r0, #0
c0de514a:	bf12      	itee	ne
c0de514c:	2501      	movne	r5, #1
c0de514e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5152:	0045      	lsleq	r5, r0, #1
c0de5154:	e006      	b.n	c0de5164 <displayStreamingReviewPage+0x11c>
c0de5156:	eb09 0005 	add.w	r0, r9, r5
c0de515a:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de515e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de5160:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5162:	2500      	movs	r5, #0
c0de5164:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de5166:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de516a:	4e17      	ldr	r6, [pc, #92]	@ (c0de51c8 <displayStreamingReviewPage+0x180>)
c0de516c:	b2e8      	uxtb	r0, r5
c0de516e:	2500      	movs	r5, #0
c0de5170:	9002      	str	r0, [sp, #8]
c0de5172:	4620      	mov	r0, r4
c0de5174:	447e      	add	r6, pc
c0de5176:	f001 f897 	bl	c0de62a8 <OUTLINED_FUNCTION_6>
c0de517a:	b00c      	add	sp, #48	@ 0x30
c0de517c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5180:	f001 bdab 	b.w	c0de6cda <nbgl_refresh>
c0de5184:	f040 0001 	orr.w	r0, r0, #1
c0de5188:	490c      	ldr	r1, [pc, #48]	@ (c0de51bc <displayStreamingReviewPage+0x174>)
c0de518a:	2200      	movs	r2, #0
c0de518c:	4479      	add	r1, pc
c0de518e:	9104      	str	r1, [sp, #16]
c0de5190:	490b      	ldr	r1, [pc, #44]	@ (c0de51c0 <displayStreamingReviewPage+0x178>)
c0de5192:	4479      	add	r1, pc
c0de5194:	9106      	str	r1, [sp, #24]
c0de5196:	2100      	movs	r1, #0
c0de5198:	9100      	str	r1, [sp, #0]
c0de519a:	490a      	ldr	r1, [pc, #40]	@ (c0de51c4 <displayStreamingReviewPage+0x17c>)
c0de519c:	ab04      	add	r3, sp, #16
c0de519e:	4479      	add	r1, pc
c0de51a0:	f7ff f9d2 	bl	c0de4548 <nbgl_stepDrawCenteredInfo>
c0de51a4:	eb09 0405 	add.w	r4, r9, r5
c0de51a8:	f001 fd97 	bl	c0de6cda <nbgl_refresh>
c0de51ac:	2001      	movs	r0, #1
c0de51ae:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de51b2:	b00c      	add	sp, #48	@ 0x30
c0de51b4:	bd70      	pop	{r4, r5, r6, pc}
c0de51b6:	bf00      	nop
c0de51b8:	00000750 	.word	0x00000750
c0de51bc:	00002892 	.word	0x00002892
c0de51c0:	000026c0 	.word	0x000026c0
c0de51c4:	00000cb7 	.word	0x00000cb7
c0de51c8:	00001079 	.word	0x00001079

c0de51cc <nbgl_useCaseSpinner>:
c0de51cc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de51ce:	4604      	mov	r4, r0
c0de51d0:	480b      	ldr	r0, [pc, #44]	@ (c0de5200 <nbgl_useCaseSpinner+0x34>)
c0de51d2:	2140      	movs	r1, #64	@ 0x40
c0de51d4:	f001 f85b 	bl	c0de628e <OUTLINED_FUNCTION_3>
c0de51d8:	2001      	movs	r0, #1
c0de51da:	4622      	mov	r2, r4
c0de51dc:	2300      	movs	r3, #0
c0de51de:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de51e2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de51e6:	2000      	movs	r0, #0
c0de51e8:	e9cd 0000 	strd	r0, r0, [sp]
c0de51ec:	9002      	str	r0, [sp, #8]
c0de51ee:	2000      	movs	r0, #0
c0de51f0:	4904      	ldr	r1, [pc, #16]	@ (c0de5204 <nbgl_useCaseSpinner+0x38>)
c0de51f2:	4479      	add	r1, pc
c0de51f4:	f7ff fe0c 	bl	c0de4e10 <drawStep>
c0de51f8:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de51fc:	f001 bd6d 	b.w	c0de6cda <nbgl_refresh>
c0de5200:	00000750 	.word	0x00000750
c0de5204:	00002757 	.word	0x00002757

c0de5208 <nbgl_useCaseChoice>:
c0de5208:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de520c:	4607      	mov	r7, r0
c0de520e:	480b      	ldr	r0, [pc, #44]	@ (c0de523c <nbgl_useCaseChoice+0x34>)
c0de5210:	f001 f822 	bl	c0de6258 <OUTLINED_FUNCTION_0>
c0de5214:	9807      	ldr	r0, [sp, #28]
c0de5216:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de5218:	9806      	ldr	r0, [sp, #24]
c0de521a:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de521e:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de5222:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de5224:	2008      	movs	r0, #8
c0de5226:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de522a:	2004      	movs	r0, #4
c0de522c:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de5230:	2000      	movs	r0, #0
c0de5232:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5236:	f000 b803 	b.w	c0de5240 <displayChoicePage>
c0de523a:	bf00      	nop
c0de523c:	00000750 	.word	0x00000750

c0de5240 <displayChoicePage>:
c0de5240:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5242:	4b28      	ldr	r3, [pc, #160]	@ (c0de52e4 <displayChoicePage+0xa4>)
c0de5244:	2200      	movs	r2, #0
c0de5246:	eb09 0103 	add.w	r1, r9, r3
c0de524a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de524c:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de5250:	b179      	cbz	r1, c0de5272 <displayChoicePage+0x32>
c0de5252:	2902      	cmp	r1, #2
c0de5254:	d021      	beq.n	c0de529a <displayChoicePage+0x5a>
c0de5256:	2901      	cmp	r1, #1
c0de5258:	d10f      	bne.n	c0de527a <displayChoicePage+0x3a>
c0de525a:	eb09 0103 	add.w	r1, r9, r3
c0de525e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5260:	b1a1      	cbz	r1, c0de528c <displayChoicePage+0x4c>
c0de5262:	eb09 0203 	add.w	r2, r9, r3
c0de5266:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de5268:	b182      	cbz	r2, c0de528c <displayChoicePage+0x4c>
c0de526a:	eb09 0103 	add.w	r1, r9, r3
c0de526e:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de5270:	e029      	b.n	c0de52c6 <displayChoicePage+0x86>
c0de5272:	eb09 0103 	add.w	r1, r9, r3
c0de5276:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5278:	e01d      	b.n	c0de52b6 <displayChoicePage+0x76>
c0de527a:	4a1d      	ldr	r2, [pc, #116]	@ (c0de52f0 <displayChoicePage+0xb0>)
c0de527c:	eb09 0103 	add.w	r1, r9, r3
c0de5280:	447a      	add	r2, pc
c0de5282:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5284:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de5286:	491b      	ldr	r1, [pc, #108]	@ (c0de52f4 <displayChoicePage+0xb4>)
c0de5288:	4479      	add	r1, pc
c0de528a:	e018      	b.n	c0de52be <displayChoicePage+0x7e>
c0de528c:	0702      	lsls	r2, r0, #28
c0de528e:	d40d      	bmi.n	c0de52ac <displayChoicePage+0x6c>
c0de5290:	eb09 0103 	add.w	r1, r9, r3
c0de5294:	2202      	movs	r2, #2
c0de5296:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de529a:	4a13      	ldr	r2, [pc, #76]	@ (c0de52e8 <displayChoicePage+0xa8>)
c0de529c:	eb09 0103 	add.w	r1, r9, r3
c0de52a0:	447a      	add	r2, pc
c0de52a2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52a4:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de52a6:	4911      	ldr	r1, [pc, #68]	@ (c0de52ec <displayChoicePage+0xac>)
c0de52a8:	4479      	add	r1, pc
c0de52aa:	e008      	b.n	c0de52be <displayChoicePage+0x7e>
c0de52ac:	eb09 0203 	add.w	r2, r9, r3
c0de52b0:	2400      	movs	r4, #0
c0de52b2:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de52b6:	eb09 0203 	add.w	r2, r9, r3
c0de52ba:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de52bc:	b109      	cbz	r1, c0de52c2 <displayChoicePage+0x82>
c0de52be:	2300      	movs	r3, #0
c0de52c0:	e003      	b.n	c0de52ca <displayChoicePage+0x8a>
c0de52c2:	eb09 0103 	add.w	r1, r9, r3
c0de52c6:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de52c8:	2100      	movs	r1, #0
c0de52ca:	4d0b      	ldr	r5, [pc, #44]	@ (c0de52f8 <displayChoicePage+0xb8>)
c0de52cc:	2400      	movs	r4, #0
c0de52ce:	9402      	str	r4, [sp, #8]
c0de52d0:	447d      	add	r5, pc
c0de52d2:	e9cd 5400 	strd	r5, r4, [sp]
c0de52d6:	f7ff fd9b 	bl	c0de4e10 <drawStep>
c0de52da:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de52de:	f001 bcfc 	b.w	c0de6cda <nbgl_refresh>
c0de52e2:	bf00      	nop
c0de52e4:	00000750 	.word	0x00000750
c0de52e8:	00000f71 	.word	0x00000f71
c0de52ec:	000026de 	.word	0x000026de
c0de52f0:	00000fa5 	.word	0x00000fa5
c0de52f4:	00002682 	.word	0x00002682
c0de52f8:	00000f69 	.word	0x00000f69

c0de52fc <getContentAtIdx>:
c0de52fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de52fe:	b087      	sub	sp, #28
c0de5300:	460d      	mov	r5, r1
c0de5302:	4606      	mov	r6, r0
c0de5304:	a801      	add	r0, sp, #4
c0de5306:	2118      	movs	r1, #24
c0de5308:	4614      	mov	r4, r2
c0de530a:	f002 f9fd 	bl	c0de7708 <__aeabi_memclr>
c0de530e:	2d00      	cmp	r5, #0
c0de5310:	d428      	bmi.n	c0de5364 <getContentAtIdx+0x68>
c0de5312:	7a30      	ldrb	r0, [r6, #8]
c0de5314:	4285      	cmp	r5, r0
c0de5316:	da25      	bge.n	c0de5364 <getContentAtIdx+0x68>
c0de5318:	7830      	ldrb	r0, [r6, #0]
c0de531a:	b338      	cbz	r0, c0de536c <getContentAtIdx+0x70>
c0de531c:	b314      	cbz	r4, c0de5364 <getContentAtIdx+0x68>
c0de531e:	4620      	mov	r0, r4
c0de5320:	2138      	movs	r1, #56	@ 0x38
c0de5322:	f002 f9f1 	bl	c0de7708 <__aeabi_memclr>
c0de5326:	4821      	ldr	r0, [pc, #132]	@ (c0de53ac <getContentAtIdx+0xb0>)
c0de5328:	4448      	add	r0, r9
c0de532a:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de532c:	b342      	cbz	r2, c0de5380 <getContentAtIdx+0x84>
c0de532e:	b2e8      	uxtb	r0, r5
c0de5330:	ad01      	add	r5, sp, #4
c0de5332:	4629      	mov	r1, r5
c0de5334:	4790      	blx	r2
c0de5336:	b1a8      	cbz	r0, c0de5364 <getContentAtIdx+0x68>
c0de5338:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de533c:	280a      	cmp	r0, #10
c0de533e:	7020      	strb	r0, [r4, #0]
c0de5340:	d028      	beq.n	c0de5394 <getContentAtIdx+0x98>
c0de5342:	2803      	cmp	r0, #3
c0de5344:	d008      	beq.n	c0de5358 <getContentAtIdx+0x5c>
c0de5346:	2804      	cmp	r0, #4
c0de5348:	d02a      	beq.n	c0de53a0 <getContentAtIdx+0xa4>
c0de534a:	2807      	cmp	r0, #7
c0de534c:	d01d      	beq.n	c0de538a <getContentAtIdx+0x8e>
c0de534e:	2808      	cmp	r0, #8
c0de5350:	d002      	beq.n	c0de5358 <getContentAtIdx+0x5c>
c0de5352:	2809      	cmp	r0, #9
c0de5354:	d019      	beq.n	c0de538a <getContentAtIdx+0x8e>
c0de5356:	b928      	cbnz	r0, c0de5364 <getContentAtIdx+0x68>
c0de5358:	1d28      	adds	r0, r5, #4
c0de535a:	1d21      	adds	r1, r4, #4
c0de535c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5360:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5362:	e000      	b.n	c0de5366 <getContentAtIdx+0x6a>
c0de5364:	2400      	movs	r4, #0
c0de5366:	4620      	mov	r0, r4
c0de5368:	b007      	add	sp, #28
c0de536a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de536c:	6871      	ldr	r1, [r6, #4]
c0de536e:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5372:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5376:	b007      	add	sp, #28
c0de5378:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de537c:	f001 beb8 	b.w	c0de70f0 <pic>
c0de5380:	6872      	ldr	r2, [r6, #4]
c0de5382:	b2e8      	uxtb	r0, r5
c0de5384:	4621      	mov	r1, r4
c0de5386:	4790      	blx	r2
c0de5388:	e7ed      	b.n	c0de5366 <getContentAtIdx+0x6a>
c0de538a:	9802      	ldr	r0, [sp, #8]
c0de538c:	9903      	ldr	r1, [sp, #12]
c0de538e:	6060      	str	r0, [r4, #4]
c0de5390:	60a1      	str	r1, [r4, #8]
c0de5392:	e7e8      	b.n	c0de5366 <getContentAtIdx+0x6a>
c0de5394:	1d28      	adds	r0, r5, #4
c0de5396:	1d21      	adds	r1, r4, #4
c0de5398:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de539c:	c12c      	stmia	r1!, {r2, r3, r5}
c0de539e:	e7e2      	b.n	c0de5366 <getContentAtIdx+0x6a>
c0de53a0:	1d28      	adds	r0, r5, #4
c0de53a2:	1d21      	adds	r1, r4, #4
c0de53a4:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de53a8:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de53aa:	e7dc      	b.n	c0de5366 <getContentAtIdx+0x6a>
c0de53ac:	00000750 	.word	0x00000750

c0de53b0 <getContentNbElement>:
c0de53b0:	7802      	ldrb	r2, [r0, #0]
c0de53b2:	2101      	movs	r1, #1
c0de53b4:	b1a2      	cbz	r2, c0de53e0 <getContentNbElement+0x30>
c0de53b6:	2a03      	cmp	r2, #3
c0de53b8:	d012      	beq.n	c0de53e0 <getContentNbElement+0x30>
c0de53ba:	2a0a      	cmp	r2, #10
c0de53bc:	d007      	beq.n	c0de53ce <getContentNbElement+0x1e>
c0de53be:	2a07      	cmp	r2, #7
c0de53c0:	d007      	beq.n	c0de53d2 <getContentNbElement+0x22>
c0de53c2:	2a08      	cmp	r2, #8
c0de53c4:	d007      	beq.n	c0de53d6 <getContentNbElement+0x26>
c0de53c6:	2a09      	cmp	r2, #9
c0de53c8:	d007      	beq.n	c0de53da <getContentNbElement+0x2a>
c0de53ca:	2a04      	cmp	r2, #4
c0de53cc:	d107      	bne.n	c0de53de <getContentNbElement+0x2e>
c0de53ce:	7b01      	ldrb	r1, [r0, #12]
c0de53d0:	e006      	b.n	c0de53e0 <getContentNbElement+0x30>
c0de53d2:	7a01      	ldrb	r1, [r0, #8]
c0de53d4:	e004      	b.n	c0de53e0 <getContentNbElement+0x30>
c0de53d6:	7c01      	ldrb	r1, [r0, #16]
c0de53d8:	e002      	b.n	c0de53e0 <getContentNbElement+0x30>
c0de53da:	7a41      	ldrb	r1, [r0, #9]
c0de53dc:	e000      	b.n	c0de53e0 <getContentNbElement+0x30>
c0de53de:	2100      	movs	r1, #0
c0de53e0:	4608      	mov	r0, r1
c0de53e2:	4770      	bx	lr

c0de53e4 <displayContent>:
c0de53e4:	b570      	push	{r4, r5, r6, lr}
c0de53e6:	b08a      	sub	sp, #40	@ 0x28
c0de53e8:	460d      	mov	r5, r1
c0de53ea:	4604      	mov	r4, r0
c0de53ec:	a804      	add	r0, sp, #16
c0de53ee:	2118      	movs	r1, #24
c0de53f0:	f002 f98a 	bl	c0de7708 <__aeabi_memclr>
c0de53f4:	4820      	ldr	r0, [pc, #128]	@ (c0de5478 <displayContent+0x94>)
c0de53f6:	f000 ff39 	bl	c0de626c <OUTLINED_FUNCTION_1>
c0de53fa:	dd14      	ble.n	c0de5426 <displayContent+0x42>
c0de53fc:	a904      	add	r1, sp, #16
c0de53fe:	4628      	mov	r0, r5
c0de5400:	f000 f846 	bl	c0de5490 <getContentPage>
c0de5404:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5408:	b318      	cbz	r0, c0de5452 <displayContent+0x6e>
c0de540a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de540e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5412:	481e      	ldr	r0, [pc, #120]	@ (c0de548c <displayContent+0xa8>)
c0de5414:	4478      	add	r0, pc
c0de5416:	2b00      	cmp	r3, #0
c0de5418:	9000      	str	r0, [sp, #0]
c0de541a:	4620      	mov	r0, r4
c0de541c:	bf18      	it	ne
c0de541e:	2301      	movne	r3, #1
c0de5420:	f000 f8d8 	bl	c0de55d4 <drawSwitchStep>
c0de5424:	e023      	b.n	c0de546e <displayContent+0x8a>
c0de5426:	4448      	add	r0, r9
c0de5428:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de542a:	6341      	str	r1, [r0, #52]	@ 0x34
c0de542c:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de542e:	4a13      	ldr	r2, [pc, #76]	@ (c0de547c <displayContent+0x98>)
c0de5430:	2900      	cmp	r1, #0
c0de5432:	447a      	add	r2, pc
c0de5434:	bf18      	it	ne
c0de5436:	460a      	movne	r2, r1
c0de5438:	9205      	str	r2, [sp, #20]
c0de543a:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de543e:	4910      	ldr	r1, [pc, #64]	@ (c0de5480 <displayContent+0x9c>)
c0de5440:	4a10      	ldr	r2, [pc, #64]	@ (c0de5484 <displayContent+0xa0>)
c0de5442:	2803      	cmp	r0, #3
c0de5444:	447a      	add	r2, pc
c0de5446:	4479      	add	r1, pc
c0de5448:	bf08      	it	eq
c0de544a:	460a      	moveq	r2, r1
c0de544c:	9207      	str	r2, [sp, #28]
c0de544e:	2000      	movs	r0, #0
c0de5450:	e002      	b.n	c0de5458 <displayContent+0x74>
c0de5452:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5456:	0040      	lsls	r0, r0, #1
c0de5458:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de545c:	9907      	ldr	r1, [sp, #28]
c0de545e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5488 <displayContent+0xa4>)
c0de5460:	b2c0      	uxtb	r0, r0
c0de5462:	2500      	movs	r5, #0
c0de5464:	9002      	str	r0, [sp, #8]
c0de5466:	4620      	mov	r0, r4
c0de5468:	447e      	add	r6, pc
c0de546a:	f000 ff1d 	bl	c0de62a8 <OUTLINED_FUNCTION_6>
c0de546e:	f001 fc34 	bl	c0de6cda <nbgl_refresh>
c0de5472:	b00a      	add	sp, #40	@ 0x28
c0de5474:	bd70      	pop	{r4, r5, r6, pc}
c0de5476:	bf00      	nop
c0de5478:	00000750 	.word	0x00000750
c0de547c:	00002817 	.word	0x00002817
c0de5480:	000024c4 	.word	0x000024c4
c0de5484:	00002480 	.word	0x00002480
c0de5488:	000001b9 	.word	0x000001b9
c0de548c:	0000020d 	.word	0x0000020d

c0de5490 <getContentPage>:
c0de5490:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5492:	b093      	sub	sp, #76	@ 0x4c
c0de5494:	4606      	mov	r6, r0
c0de5496:	2000      	movs	r0, #0
c0de5498:	460c      	mov	r4, r1
c0de549a:	2138      	movs	r1, #56	@ 0x38
c0de549c:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de54a0:	ad04      	add	r5, sp, #16
c0de54a2:	4628      	mov	r0, r5
c0de54a4:	f002 f930 	bl	c0de7708 <__aeabi_memclr>
c0de54a8:	4f47      	ldr	r7, [pc, #284]	@ (c0de55c8 <getContentPage+0x138>)
c0de54aa:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de54ae:	462a      	mov	r2, r5
c0de54b0:	eb09 0007 	add.w	r0, r9, r7
c0de54b4:	f000 fef1 	bl	c0de629a <OUTLINED_FUNCTION_4>
c0de54b8:	2800      	cmp	r0, #0
c0de54ba:	d07a      	beq.n	c0de55b2 <getContentPage+0x122>
c0de54bc:	4605      	mov	r5, r0
c0de54be:	7800      	ldrb	r0, [r0, #0]
c0de54c0:	280a      	cmp	r0, #10
c0de54c2:	d011      	beq.n	c0de54e8 <getContentPage+0x58>
c0de54c4:	2803      	cmp	r0, #3
c0de54c6:	d02c      	beq.n	c0de5522 <getContentPage+0x92>
c0de54c8:	2804      	cmp	r0, #4
c0de54ca:	d035      	beq.n	c0de5538 <getContentPage+0xa8>
c0de54cc:	2807      	cmp	r0, #7
c0de54ce:	d045      	beq.n	c0de555c <getContentPage+0xcc>
c0de54d0:	2808      	cmp	r0, #8
c0de54d2:	d060      	beq.n	c0de5596 <getContentPage+0x106>
c0de54d4:	2809      	cmp	r0, #9
c0de54d6:	d007      	beq.n	c0de54e8 <getContentPage+0x58>
c0de54d8:	2800      	cmp	r0, #0
c0de54da:	d16a      	bne.n	c0de55b2 <getContentPage+0x122>
c0de54dc:	6868      	ldr	r0, [r5, #4]
c0de54de:	f001 fe07 	bl	c0de70f0 <pic>
c0de54e2:	6060      	str	r0, [r4, #4]
c0de54e4:	68a8      	ldr	r0, [r5, #8]
c0de54e6:	e019      	b.n	c0de551c <getContentPage+0x8c>
c0de54e8:	1d28      	adds	r0, r5, #4
c0de54ea:	eb09 0607 	add.w	r6, r9, r7
c0de54ee:	f001 fdff 	bl	c0de70f0 <pic>
c0de54f2:	6800      	ldr	r0, [r0, #0]
c0de54f4:	f001 fdfc 	bl	c0de70f0 <pic>
c0de54f8:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de54fc:	4605      	mov	r5, r0
c0de54fe:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de5500:	2910      	cmp	r1, #16
c0de5502:	d100      	bne.n	c0de5506 <getContentPage+0x76>
c0de5504:	b918      	cbnz	r0, c0de550e <getContentPage+0x7e>
c0de5506:	290f      	cmp	r1, #15
c0de5508:	d155      	bne.n	c0de55b6 <getContentPage+0x126>
c0de550a:	2800      	cmp	r0, #0
c0de550c:	d053      	beq.n	c0de55b6 <getContentPage+0x126>
c0de550e:	f001 fdef 	bl	c0de70f0 <pic>
c0de5512:	6060      	str	r0, [r4, #4]
c0de5514:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5518:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de551c:	f001 fde8 	bl	c0de70f0 <pic>
c0de5520:	e046      	b.n	c0de55b0 <getContentPage+0x120>
c0de5522:	68a8      	ldr	r0, [r5, #8]
c0de5524:	4e29      	ldr	r6, [pc, #164]	@ (c0de55cc <getContentPage+0x13c>)
c0de5526:	447e      	add	r6, pc
c0de5528:	47b0      	blx	r6
c0de552a:	60e0      	str	r0, [r4, #12]
c0de552c:	6868      	ldr	r0, [r5, #4]
c0de552e:	47b0      	blx	r6
c0de5530:	6060      	str	r0, [r4, #4]
c0de5532:	68e8      	ldr	r0, [r5, #12]
c0de5534:	47b0      	blx	r6
c0de5536:	e03b      	b.n	c0de55b0 <getContentPage+0x120>
c0de5538:	f104 0015 	add.w	r0, r4, #21
c0de553c:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5540:	f104 020c 	add.w	r2, r4, #12
c0de5544:	f104 0310 	add.w	r3, r4, #16
c0de5548:	e9cd 3200 	strd	r3, r2, [sp]
c0de554c:	9002      	str	r0, [sp, #8]
c0de554e:	1d28      	adds	r0, r5, #4
c0de5550:	1d22      	adds	r2, r4, #4
c0de5552:	f104 0308 	add.w	r3, r4, #8
c0de5556:	f000 f8b9 	bl	c0de56cc <getPairData>
c0de555a:	e02a      	b.n	c0de55b2 <getContentPage+0x122>
c0de555c:	2001      	movs	r0, #1
c0de555e:	444f      	add	r7, r9
c0de5560:	7020      	strb	r0, [r4, #0]
c0de5562:	6868      	ldr	r0, [r5, #4]
c0de5564:	f001 fdc4 	bl	c0de70f0 <pic>
c0de5568:	4919      	ldr	r1, [pc, #100]	@ (c0de55d0 <getContentPage+0x140>)
c0de556a:	4479      	add	r1, pc
c0de556c:	6379      	str	r1, [r7, #52]	@ 0x34
c0de556e:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5572:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5576:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de557a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de557e:	6062      	str	r2, [r4, #4]
c0de5580:	6841      	ldr	r1, [r0, #4]
c0de5582:	60a1      	str	r1, [r4, #8]
c0de5584:	7a00      	ldrb	r0, [r0, #8]
c0de5586:	1e41      	subs	r1, r0, #1
c0de5588:	bf18      	it	ne
c0de558a:	2101      	movne	r1, #1
c0de558c:	2e00      	cmp	r6, #0
c0de558e:	bf08      	it	eq
c0de5590:	4601      	moveq	r1, r0
c0de5592:	7521      	strb	r1, [r4, #20]
c0de5594:	e00d      	b.n	c0de55b2 <getContentPage+0x122>
c0de5596:	6868      	ldr	r0, [r5, #4]
c0de5598:	f001 fdaa 	bl	c0de70f0 <pic>
c0de559c:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de55a0:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de55a4:	6060      	str	r0, [r4, #4]
c0de55a6:	68a8      	ldr	r0, [r5, #8]
c0de55a8:	f001 fda2 	bl	c0de70f0 <pic>
c0de55ac:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de55b0:	60a0      	str	r0, [r4, #8]
c0de55b2:	b013      	add	sp, #76	@ 0x4c
c0de55b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de55b6:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de55ba:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de55be:	f001 fd97 	bl	c0de70f0 <pic>
c0de55c2:	6060      	str	r0, [r4, #4]
c0de55c4:	e7f5      	b.n	c0de55b2 <getContentPage+0x122>
c0de55c6:	bf00      	nop
c0de55c8:	00000750 	.word	0x00000750
c0de55cc:	00001bc7 	.word	0x00001bc7
c0de55d0:	000001a7 	.word	0x000001a7

c0de55d4 <drawSwitchStep>:
c0de55d4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de55d6:	b085      	sub	sp, #20
c0de55d8:	4c11      	ldr	r4, [pc, #68]	@ (c0de5620 <drawSwitchStep+0x4c>)
c0de55da:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de55de:	2600      	movs	r6, #0
c0de55e0:	eb09 0504 	add.w	r5, r9, r4
c0de55e4:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de55e8:	2500      	movs	r5, #0
c0de55ea:	2f02      	cmp	r7, #2
c0de55ec:	d30a      	bcc.n	c0de5604 <drawSwitchStep+0x30>
c0de55ee:	444c      	add	r4, r9
c0de55f0:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de55f4:	b12c      	cbz	r4, c0de5602 <drawSwitchStep+0x2e>
c0de55f6:	3f01      	subs	r7, #1
c0de55f8:	2603      	movs	r6, #3
c0de55fa:	42a7      	cmp	r7, r4
c0de55fc:	bf08      	it	eq
c0de55fe:	2602      	moveq	r6, #2
c0de5600:	e000      	b.n	c0de5604 <drawSwitchStep+0x30>
c0de5602:	2601      	movs	r6, #1
c0de5604:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5608:	f88d 3010 	strb.w	r3, [sp, #16]
c0de560c:	9500      	str	r5, [sp, #0]
c0de560e:	4330      	orrs	r0, r6
c0de5610:	ab02      	add	r3, sp, #8
c0de5612:	4661      	mov	r1, ip
c0de5614:	2200      	movs	r2, #0
c0de5616:	f7ff f87f 	bl	c0de4718 <nbgl_stepDrawSwitch>
c0de561a:	b005      	add	sp, #20
c0de561c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de561e:	bf00      	nop
c0de5620:	00000750 	.word	0x00000750

c0de5624 <contentCallback>:
c0de5624:	b5e0      	push	{r5, r6, r7, lr}
c0de5626:	4608      	mov	r0, r1
c0de5628:	f10d 0107 	add.w	r1, sp, #7
c0de562c:	f000 f928 	bl	c0de5880 <buttonGenericCallback>
c0de5630:	b130      	cbz	r0, c0de5640 <contentCallback+0x1c>
c0de5632:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5636:	2100      	movs	r1, #0
c0de5638:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de563c:	f7ff bed2 	b.w	c0de53e4 <displayContent>
c0de5640:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5644 <getContentElemAtIdx>:
c0de5644:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5648:	4c1e      	ldr	r4, [pc, #120]	@ (c0de56c4 <getContentElemAtIdx+0x80>)
c0de564a:	4606      	mov	r6, r0
c0de564c:	2700      	movs	r7, #0
c0de564e:	eb09 0004 	add.w	r0, r9, r4
c0de5652:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de5656:	2b10      	cmp	r3, #16
c0de5658:	d830      	bhi.n	c0de56bc <getContentElemAtIdx+0x78>
c0de565a:	4693      	mov	fp, r2
c0de565c:	2201      	movs	r2, #1
c0de565e:	9101      	str	r1, [sp, #4]
c0de5660:	fa02 f303 	lsl.w	r3, r2, r3
c0de5664:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5668:	d004      	beq.n	c0de5674 <getContentElemAtIdx+0x30>
c0de566a:	eb09 0004 	add.w	r0, r9, r4
c0de566e:	46a2      	mov	sl, r4
c0de5670:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de5672:	e005      	b.n	c0de5680 <getContentElemAtIdx+0x3c>
c0de5674:	4a14      	ldr	r2, [pc, #80]	@ (c0de56c8 <getContentElemAtIdx+0x84>)
c0de5676:	4213      	tst	r3, r2
c0de5678:	d020      	beq.n	c0de56bc <getContentElemAtIdx+0x78>
c0de567a:	46a2      	mov	sl, r4
c0de567c:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de5680:	2700      	movs	r7, #0
c0de5682:	2000      	movs	r0, #0
c0de5684:	f04f 0800 	mov.w	r8, #0
c0de5688:	4605      	mov	r5, r0
c0de568a:	7a20      	ldrb	r0, [r4, #8]
c0de568c:	4580      	cmp	r8, r0
c0de568e:	d215      	bcs.n	c0de56bc <getContentElemAtIdx+0x78>
c0de5690:	fa4f f188 	sxtb.w	r1, r8
c0de5694:	4620      	mov	r0, r4
c0de5696:	465a      	mov	r2, fp
c0de5698:	f7ff fe30 	bl	c0de52fc <getContentAtIdx>
c0de569c:	4607      	mov	r7, r0
c0de569e:	f7ff fe87 	bl	c0de53b0 <getContentNbElement>
c0de56a2:	b2e9      	uxtb	r1, r5
c0de56a4:	f108 0801 	add.w	r8, r8, #1
c0de56a8:	4408      	add	r0, r1
c0de56aa:	42b0      	cmp	r0, r6
c0de56ac:	d9ec      	bls.n	c0de5688 <getContentElemAtIdx+0x44>
c0de56ae:	eb09 000a 	add.w	r0, r9, sl
c0de56b2:	9901      	ldr	r1, [sp, #4]
c0de56b4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de56b8:	1b40      	subs	r0, r0, r5
c0de56ba:	7008      	strb	r0, [r1, #0]
c0de56bc:	4638      	mov	r0, r7
c0de56be:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de56c2:	bf00      	nop
c0de56c4:	00000750 	.word	0x00000750
c0de56c8:	00010008 	.word	0x00010008

c0de56cc <getPairData>:
c0de56cc:	b5b0      	push	{r4, r5, r7, lr}
c0de56ce:	4615      	mov	r5, r2
c0de56d0:	6802      	ldr	r2, [r0, #0]
c0de56d2:	461c      	mov	r4, r3
c0de56d4:	b112      	cbz	r2, c0de56dc <getPairData+0x10>
c0de56d6:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de56da:	e002      	b.n	c0de56e2 <getPairData+0x16>
c0de56dc:	6842      	ldr	r2, [r0, #4]
c0de56de:	4608      	mov	r0, r1
c0de56e0:	4790      	blx	r2
c0de56e2:	f001 fd05 	bl	c0de70f0 <pic>
c0de56e6:	6802      	ldr	r2, [r0, #0]
c0de56e8:	9904      	ldr	r1, [sp, #16]
c0de56ea:	602a      	str	r2, [r5, #0]
c0de56ec:	6842      	ldr	r2, [r0, #4]
c0de56ee:	6022      	str	r2, [r4, #0]
c0de56f0:	7b02      	ldrb	r2, [r0, #12]
c0de56f2:	0753      	lsls	r3, r2, #29
c0de56f4:	d403      	bmi.n	c0de56fe <getPairData+0x32>
c0de56f6:	0792      	lsls	r2, r2, #30
c0de56f8:	d404      	bmi.n	c0de5704 <getPairData+0x38>
c0de56fa:	2000      	movs	r0, #0
c0de56fc:	e000      	b.n	c0de5700 <getPairData+0x34>
c0de56fe:	6880      	ldr	r0, [r0, #8]
c0de5700:	6008      	str	r0, [r1, #0]
c0de5702:	bdb0      	pop	{r4, r5, r7, pc}
c0de5704:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5708:	2301      	movs	r3, #1
c0de570a:	700b      	strb	r3, [r1, #0]
c0de570c:	6880      	ldr	r0, [r0, #8]
c0de570e:	6010      	str	r0, [r2, #0]
c0de5710:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5714 <onSwitchAction>:
c0de5714:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5716:	b08f      	sub	sp, #60	@ 0x3c
c0de5718:	ac01      	add	r4, sp, #4
c0de571a:	2138      	movs	r1, #56	@ 0x38
c0de571c:	4620      	mov	r0, r4
c0de571e:	f001 fff3 	bl	c0de7708 <__aeabi_memclr>
c0de5722:	4e26      	ldr	r6, [pc, #152]	@ (c0de57bc <onSwitchAction+0xa8>)
c0de5724:	f10d 0103 	add.w	r1, sp, #3
c0de5728:	4622      	mov	r2, r4
c0de572a:	eb09 0006 	add.w	r0, r9, r6
c0de572e:	f000 fdb4 	bl	c0de629a <OUTLINED_FUNCTION_4>
c0de5732:	2800      	cmp	r0, #0
c0de5734:	d040      	beq.n	c0de57b8 <onSwitchAction+0xa4>
c0de5736:	4604      	mov	r4, r0
c0de5738:	7800      	ldrb	r0, [r0, #0]
c0de573a:	2807      	cmp	r0, #7
c0de573c:	d13c      	bne.n	c0de57b8 <onSwitchAction+0xa4>
c0de573e:	6860      	ldr	r0, [r4, #4]
c0de5740:	eb09 0706 	add.w	r7, r9, r6
c0de5744:	f001 fcd4 	bl	c0de70f0 <pic>
c0de5748:	4605      	mov	r5, r0
c0de574a:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de574e:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5752:	2810      	cmp	r0, #16
c0de5754:	d811      	bhi.n	c0de577a <onSwitchAction+0x66>
c0de5756:	2101      	movs	r1, #1
c0de5758:	fa01 f000 	lsl.w	r0, r1, r0
c0de575c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5760:	d004      	beq.n	c0de576c <onSwitchAction+0x58>
c0de5762:	2000      	movs	r0, #0
c0de5764:	2101      	movs	r1, #1
c0de5766:	f000 f82d 	bl	c0de57c4 <displaySettingsPage>
c0de576a:	e006      	b.n	c0de577a <onSwitchAction+0x66>
c0de576c:	4914      	ldr	r1, [pc, #80]	@ (c0de57c0 <onSwitchAction+0xac>)
c0de576e:	4208      	tst	r0, r1
c0de5770:	d003      	beq.n	c0de577a <onSwitchAction+0x66>
c0de5772:	2000      	movs	r0, #0
c0de5774:	2101      	movs	r1, #1
c0de5776:	f7ff fe35 	bl	c0de53e4 <displayContent>
c0de577a:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de577c:	b188      	cbz	r0, c0de57a2 <onSwitchAction+0x8e>
c0de577e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5782:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5786:	f001 fcb3 	bl	c0de70f0 <pic>
c0de578a:	7a21      	ldrb	r1, [r4, #8]
c0de578c:	eb09 0206 	add.w	r2, r9, r6
c0de5790:	4603      	mov	r3, r0
c0de5792:	7a60      	ldrb	r0, [r4, #9]
c0de5794:	3901      	subs	r1, #1
c0de5796:	bf18      	it	ne
c0de5798:	2101      	movne	r1, #1
c0de579a:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de579e:	4798      	blx	r3
c0de57a0:	e00a      	b.n	c0de57b8 <onSwitchAction+0xa4>
c0de57a2:	eb09 0006 	add.w	r0, r9, r6
c0de57a6:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de57a8:	b132      	cbz	r2, c0de57b8 <onSwitchAction+0xa4>
c0de57aa:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de57ae:	2100      	movs	r1, #0
c0de57b0:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de57b4:	7a40      	ldrb	r0, [r0, #9]
c0de57b6:	4790      	blx	r2
c0de57b8:	b00f      	add	sp, #60	@ 0x3c
c0de57ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de57bc:	00000750 	.word	0x00000750
c0de57c0:	00010008 	.word	0x00010008

c0de57c4 <displaySettingsPage>:
c0de57c4:	b5b0      	push	{r4, r5, r7, lr}
c0de57c6:	b08a      	sub	sp, #40	@ 0x28
c0de57c8:	460d      	mov	r5, r1
c0de57ca:	4604      	mov	r4, r0
c0de57cc:	a804      	add	r0, sp, #16
c0de57ce:	2118      	movs	r1, #24
c0de57d0:	f001 ff9a 	bl	c0de7708 <__aeabi_memclr>
c0de57d4:	481c      	ldr	r0, [pc, #112]	@ (c0de5848 <displaySettingsPage+0x84>)
c0de57d6:	f000 fd49 	bl	c0de626c <OUTLINED_FUNCTION_1>
c0de57da:	dd14      	ble.n	c0de5806 <displaySettingsPage+0x42>
c0de57dc:	a904      	add	r1, sp, #16
c0de57de:	4628      	mov	r0, r5
c0de57e0:	f7ff fe56 	bl	c0de5490 <getContentPage>
c0de57e4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de57e8:	b1e8      	cbz	r0, c0de5826 <displaySettingsPage+0x62>
c0de57ea:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de57ee:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de57f2:	481a      	ldr	r0, [pc, #104]	@ (c0de585c <displaySettingsPage+0x98>)
c0de57f4:	4478      	add	r0, pc
c0de57f6:	2b00      	cmp	r3, #0
c0de57f8:	9000      	str	r0, [sp, #0]
c0de57fa:	4620      	mov	r0, r4
c0de57fc:	bf18      	it	ne
c0de57fe:	2301      	movne	r3, #1
c0de5800:	f7ff fee8 	bl	c0de55d4 <drawSwitchStep>
c0de5804:	e01b      	b.n	c0de583e <displaySettingsPage+0x7a>
c0de5806:	4448      	add	r0, r9
c0de5808:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de580c:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de580e:	4b0f      	ldr	r3, [pc, #60]	@ (c0de584c <displaySettingsPage+0x88>)
c0de5810:	447b      	add	r3, pc
c0de5812:	290f      	cmp	r1, #15
c0de5814:	bf08      	it	eq
c0de5816:	4613      	moveq	r3, r2
c0de5818:	6343      	str	r3, [r0, #52]	@ 0x34
c0de581a:	480d      	ldr	r0, [pc, #52]	@ (c0de5850 <displaySettingsPage+0x8c>)
c0de581c:	4478      	add	r0, pc
c0de581e:	9005      	str	r0, [sp, #20]
c0de5820:	480c      	ldr	r0, [pc, #48]	@ (c0de5854 <displaySettingsPage+0x90>)
c0de5822:	4478      	add	r0, pc
c0de5824:	9007      	str	r0, [sp, #28]
c0de5826:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de582a:	9907      	ldr	r1, [sp, #28]
c0de582c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5858 <displaySettingsPage+0x94>)
c0de582e:	2000      	movs	r0, #0
c0de5830:	9002      	str	r0, [sp, #8]
c0de5832:	447d      	add	r5, pc
c0de5834:	e9cd 5000 	strd	r5, r0, [sp]
c0de5838:	4620      	mov	r0, r4
c0de583a:	f7ff fae9 	bl	c0de4e10 <drawStep>
c0de583e:	f001 fa4c 	bl	c0de6cda <nbgl_refresh>
c0de5842:	b00a      	add	sp, #40	@ 0x28
c0de5844:	bdb0      	pop	{r4, r5, r7, pc}
c0de5846:	bf00      	nop
c0de5848:	00000750 	.word	0x00000750
c0de584c:	fffff1cd 	.word	0xfffff1cd
c0de5850:	0000242d 	.word	0x0000242d
c0de5854:	000020a2 	.word	0x000020a2
c0de5858:	0000002b 	.word	0x0000002b
c0de585c:	00000069 	.word	0x00000069

c0de5860 <settingsCallback>:
c0de5860:	b5e0      	push	{r5, r6, r7, lr}
c0de5862:	4608      	mov	r0, r1
c0de5864:	f10d 0107 	add.w	r1, sp, #7
c0de5868:	f000 f80a 	bl	c0de5880 <buttonGenericCallback>
c0de586c:	b130      	cbz	r0, c0de587c <settingsCallback+0x1c>
c0de586e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5872:	2100      	movs	r1, #0
c0de5874:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5878:	f7ff bfa4 	b.w	c0de57c4 <displaySettingsPage>
c0de587c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5880 <buttonGenericCallback>:
c0de5880:	b5b0      	push	{r4, r5, r7, lr}
c0de5882:	b090      	sub	sp, #64	@ 0x40
c0de5884:	460c      	mov	r4, r1
c0de5886:	4605      	mov	r5, r0
c0de5888:	a801      	add	r0, sp, #4
c0de588a:	2138      	movs	r1, #56	@ 0x38
c0de588c:	f001 ff3c 	bl	c0de7708 <__aeabi_memclr>
c0de5890:	2d04      	cmp	r5, #4
c0de5892:	d00d      	beq.n	c0de58b0 <buttonGenericCallback+0x30>
c0de5894:	2d01      	cmp	r5, #1
c0de5896:	d012      	beq.n	c0de58be <buttonGenericCallback+0x3e>
c0de5898:	2d00      	cmp	r5, #0
c0de589a:	d17c      	bne.n	c0de5996 <buttonGenericCallback+0x116>
c0de589c:	483f      	ldr	r0, [pc, #252]	@ (c0de599c <buttonGenericCallback+0x11c>)
c0de589e:	eb09 0100 	add.w	r1, r9, r0
c0de58a2:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de58a6:	2901      	cmp	r1, #1
c0de58a8:	db1d      	blt.n	c0de58e6 <buttonGenericCallback+0x66>
c0de58aa:	3901      	subs	r1, #1
c0de58ac:	2008      	movs	r0, #8
c0de58ae:	e013      	b.n	c0de58d8 <buttonGenericCallback+0x58>
c0de58b0:	4c3a      	ldr	r4, [pc, #232]	@ (c0de599c <buttonGenericCallback+0x11c>)
c0de58b2:	eb09 0004 	add.w	r0, r9, r4
c0de58b6:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de58b8:	b338      	cbz	r0, c0de590a <buttonGenericCallback+0x8a>
c0de58ba:	4780      	blx	r0
c0de58bc:	e06b      	b.n	c0de5996 <buttonGenericCallback+0x116>
c0de58be:	4837      	ldr	r0, [pc, #220]	@ (c0de599c <buttonGenericCallback+0x11c>)
c0de58c0:	eb09 0100 	add.w	r1, r9, r0
c0de58c4:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de58c8:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de58cc:	3901      	subs	r1, #1
c0de58ce:	4281      	cmp	r1, r0
c0de58d0:	dd61      	ble.n	c0de5996 <buttonGenericCallback+0x116>
c0de58d2:	b2c0      	uxtb	r0, r0
c0de58d4:	1c41      	adds	r1, r0, #1
c0de58d6:	2000      	movs	r0, #0
c0de58d8:	4a30      	ldr	r2, [pc, #192]	@ (c0de599c <buttonGenericCallback+0x11c>)
c0de58da:	444a      	add	r2, r9
c0de58dc:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de58e0:	7020      	strb	r0, [r4, #0]
c0de58e2:	2001      	movs	r0, #1
c0de58e4:	e058      	b.n	c0de5998 <buttonGenericCallback+0x118>
c0de58e6:	eb09 0100 	add.w	r1, r9, r0
c0de58ea:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de58ee:	2906      	cmp	r1, #6
c0de58f0:	d151      	bne.n	c0de5996 <buttonGenericCallback+0x116>
c0de58f2:	eb09 0100 	add.w	r1, r9, r0
c0de58f6:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de58f8:	2900      	cmp	r1, #0
c0de58fa:	d04c      	beq.n	c0de5996 <buttonGenericCallback+0x116>
c0de58fc:	4448      	add	r0, r9
c0de58fe:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de5902:	2801      	cmp	r0, #1
c0de5904:	d047      	beq.n	c0de5996 <buttonGenericCallback+0x116>
c0de5906:	2008      	movs	r0, #8
c0de5908:	e7ea      	b.n	c0de58e0 <buttonGenericCallback+0x60>
c0de590a:	eb09 0004 	add.w	r0, r9, r4
c0de590e:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5912:	2000      	movs	r0, #0
c0de5914:	2910      	cmp	r1, #16
c0de5916:	d83f      	bhi.n	c0de5998 <buttonGenericCallback+0x118>
c0de5918:	2201      	movs	r2, #1
c0de591a:	fa02 f101 	lsl.w	r1, r2, r1
c0de591e:	4a20      	ldr	r2, [pc, #128]	@ (c0de59a0 <buttonGenericCallback+0x120>)
c0de5920:	4211      	tst	r1, r2
c0de5922:	d039      	beq.n	c0de5998 <buttonGenericCallback+0x118>
c0de5924:	eb09 0004 	add.w	r0, r9, r4
c0de5928:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de592c:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5930:	aa01      	add	r2, sp, #4
c0de5932:	f7ff fe87 	bl	c0de5644 <getContentElemAtIdx>
c0de5936:	b370      	cbz	r0, c0de5996 <buttonGenericCallback+0x116>
c0de5938:	7801      	ldrb	r1, [r0, #0]
c0de593a:	4602      	mov	r2, r0
c0de593c:	2000      	movs	r0, #0
c0de593e:	b359      	cbz	r1, c0de5998 <buttonGenericCallback+0x118>
c0de5940:	290a      	cmp	r1, #10
c0de5942:	d009      	beq.n	c0de5958 <buttonGenericCallback+0xd8>
c0de5944:	2907      	cmp	r1, #7
c0de5946:	d00f      	beq.n	c0de5968 <buttonGenericCallback+0xe8>
c0de5948:	2909      	cmp	r1, #9
c0de594a:	d011      	beq.n	c0de5970 <buttonGenericCallback+0xf0>
c0de594c:	2903      	cmp	r1, #3
c0de594e:	f04f 0100 	mov.w	r1, #0
c0de5952:	d112      	bne.n	c0de597a <buttonGenericCallback+0xfa>
c0de5954:	7c10      	ldrb	r0, [r2, #16]
c0de5956:	e005      	b.n	c0de5964 <buttonGenericCallback+0xe4>
c0de5958:	eb09 0004 	add.w	r0, r9, r4
c0de595c:	6891      	ldr	r1, [r2, #8]
c0de595e:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de5962:	5c08      	ldrb	r0, [r1, r0]
c0de5964:	2100      	movs	r1, #0
c0de5966:	e008      	b.n	c0de597a <buttonGenericCallback+0xfa>
c0de5968:	6850      	ldr	r0, [r2, #4]
c0de596a:	2100      	movs	r1, #0
c0de596c:	7a40      	ldrb	r0, [r0, #9]
c0de596e:	e004      	b.n	c0de597a <buttonGenericCallback+0xfa>
c0de5970:	eb09 0004 	add.w	r0, r9, r4
c0de5974:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de5978:	7ad0      	ldrb	r0, [r2, #11]
c0de597a:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de597c:	b133      	cbz	r3, c0de598c <buttonGenericCallback+0x10c>
c0de597e:	eb09 0104 	add.w	r1, r9, r4
c0de5982:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5986:	2100      	movs	r1, #0
c0de5988:	4798      	blx	r3
c0de598a:	e004      	b.n	c0de5996 <buttonGenericCallback+0x116>
c0de598c:	eb09 0204 	add.w	r2, r9, r4
c0de5990:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de5992:	b102      	cbz	r2, c0de5996 <buttonGenericCallback+0x116>
c0de5994:	4790      	blx	r2
c0de5996:	2000      	movs	r0, #0
c0de5998:	b010      	add	sp, #64	@ 0x40
c0de599a:	bdb0      	pop	{r4, r5, r7, pc}
c0de599c:	00000750 	.word	0x00000750
c0de59a0:	0001c008 	.word	0x0001c008

c0de59a4 <displayHomePage>:
c0de59a4:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de59a8:	4680      	mov	r8, r0
c0de59aa:	4832      	ldr	r0, [pc, #200]	@ (c0de5a74 <displayHomePage+0xd0>)
c0de59ac:	2200      	movs	r2, #0
c0de59ae:	eb09 0100 	add.w	r1, r9, r0
c0de59b2:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de59b4:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de59b6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de59b8:	2202      	movs	r2, #2
c0de59ba:	2d00      	cmp	r5, #0
c0de59bc:	463e      	mov	r6, r7
c0de59be:	bf08      	it	eq
c0de59c0:	2201      	moveq	r2, #1
c0de59c2:	2f00      	cmp	r7, #0
c0de59c4:	bf18      	it	ne
c0de59c6:	2601      	movne	r6, #1
c0de59c8:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de59cc:	b183      	cbz	r3, c0de59f0 <displayHomePage+0x4c>
c0de59ce:	2401      	movs	r4, #1
c0de59d0:	2d00      	cmp	r5, #0
c0de59d2:	bf08      	it	eq
c0de59d4:	24ff      	moveq	r4, #255	@ 0xff
c0de59d6:	429c      	cmp	r4, r3
c0de59d8:	d111      	bne.n	c0de59fe <displayHomePage+0x5a>
c0de59da:	eb09 0400 	add.w	r4, r9, r0
c0de59de:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de59e2:	f001 fb85 	bl	c0de70f0 <pic>
c0de59e6:	4602      	mov	r2, r0
c0de59e8:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de59ea:	6880      	ldr	r0, [r0, #8]
c0de59ec:	6360      	str	r0, [r4, #52]	@ 0x34
c0de59ee:	e004      	b.n	c0de59fa <displayHomePage+0x56>
c0de59f0:	eb09 0100 	add.w	r1, r9, r0
c0de59f4:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de59f8:	b312      	cbz	r2, c0de5a40 <displayHomePage+0x9c>
c0de59fa:	2300      	movs	r3, #0
c0de59fc:	e02c      	b.n	c0de5a58 <displayHomePage+0xb4>
c0de59fe:	2f00      	cmp	r7, #0
c0de5a00:	4614      	mov	r4, r2
c0de5a02:	bf08      	it	eq
c0de5a04:	24ff      	moveq	r4, #255	@ 0xff
c0de5a06:	429c      	cmp	r4, r3
c0de5a08:	d109      	bne.n	c0de5a1e <displayHomePage+0x7a>
c0de5a0a:	491c      	ldr	r1, [pc, #112]	@ (c0de5a7c <displayHomePage+0xd8>)
c0de5a0c:	4448      	add	r0, r9
c0de5a0e:	2300      	movs	r3, #0
c0de5a10:	4479      	add	r1, pc
c0de5a12:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a14:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5a80 <displayHomePage+0xdc>)
c0de5a16:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5a84 <displayHomePage+0xe0>)
c0de5a18:	447d      	add	r5, pc
c0de5a1a:	447a      	add	r2, pc
c0de5a1c:	e01c      	b.n	c0de5a58 <displayHomePage+0xb4>
c0de5a1e:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de5a20:	4432      	add	r2, r6
c0de5a22:	4448      	add	r0, r9
c0de5a24:	2900      	cmp	r1, #0
c0de5a26:	bf08      	it	eq
c0de5a28:	22ff      	moveq	r2, #255	@ 0xff
c0de5a2a:	429a      	cmp	r2, r3
c0de5a2c:	d10d      	bne.n	c0de5a4a <displayHomePage+0xa6>
c0de5a2e:	4916      	ldr	r1, [pc, #88]	@ (c0de5a88 <displayHomePage+0xe4>)
c0de5a30:	2300      	movs	r3, #0
c0de5a32:	4479      	add	r1, pc
c0de5a34:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a36:	4d15      	ldr	r5, [pc, #84]	@ (c0de5a8c <displayHomePage+0xe8>)
c0de5a38:	4a15      	ldr	r2, [pc, #84]	@ (c0de5a90 <displayHomePage+0xec>)
c0de5a3a:	447d      	add	r5, pc
c0de5a3c:	447a      	add	r2, pc
c0de5a3e:	e00b      	b.n	c0de5a58 <displayHomePage+0xb4>
c0de5a40:	4448      	add	r0, r9
c0de5a42:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de5a44:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5a78 <displayHomePage+0xd4>)
c0de5a46:	447b      	add	r3, pc
c0de5a48:	e006      	b.n	c0de5a58 <displayHomePage+0xb4>
c0de5a4a:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de5a4c:	2300      	movs	r3, #0
c0de5a4e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a50:	4d10      	ldr	r5, [pc, #64]	@ (c0de5a94 <displayHomePage+0xf0>)
c0de5a52:	4a11      	ldr	r2, [pc, #68]	@ (c0de5a98 <displayHomePage+0xf4>)
c0de5a54:	447d      	add	r5, pc
c0de5a56:	447a      	add	r2, pc
c0de5a58:	4910      	ldr	r1, [pc, #64]	@ (c0de5a9c <displayHomePage+0xf8>)
c0de5a5a:	2000      	movs	r0, #0
c0de5a5c:	9002      	str	r0, [sp, #8]
c0de5a5e:	4479      	add	r1, pc
c0de5a60:	e9cd 1000 	strd	r1, r0, [sp]
c0de5a64:	4640      	mov	r0, r8
c0de5a66:	4629      	mov	r1, r5
c0de5a68:	f7ff f9d2 	bl	c0de4e10 <drawStep>
c0de5a6c:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5a70:	f001 b933 	b.w	c0de6cda <nbgl_refresh>
c0de5a74:	00000750 	.word	0x00000750
c0de5a78:	000022c2 	.word	0x000022c2
c0de5a7c:	0000008d 	.word	0x0000008d
c0de5a80:	00001ecf 	.word	0x00001ecf
c0de5a84:	000021a3 	.word	0x000021a3
c0de5a88:	00000073 	.word	0x00000073
c0de5a8c:	00001e18 	.word	0x00001e18
c0de5a90:	00002254 	.word	0x00002254
c0de5a94:	00001e21 	.word	0x00001e21
c0de5a98:	000022bf 	.word	0x000022bf
c0de5a9c:	0000006b 	.word	0x0000006b

c0de5aa0 <startUseCaseSettings>:
c0de5aa0:	2000      	movs	r0, #0
c0de5aa2:	f7fe bf61 	b.w	c0de4968 <startUseCaseSettingsAtPage>
	...

c0de5aa8 <startUseCaseInfo>:
c0de5aa8:	4807      	ldr	r0, [pc, #28]	@ (c0de5ac8 <startUseCaseInfo+0x20>)
c0de5aaa:	210d      	movs	r1, #13
c0de5aac:	4448      	add	r0, r9
c0de5aae:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5ab2:	2100      	movs	r1, #0
c0de5ab4:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5ab8:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5aba:	7b09      	ldrb	r1, [r1, #12]
c0de5abc:	3101      	adds	r1, #1
c0de5abe:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de5ac2:	2000      	movs	r0, #0
c0de5ac4:	f000 b810 	b.w	c0de5ae8 <displayInfoPage>
c0de5ac8:	00000750 	.word	0x00000750

c0de5acc <homeCallback>:
c0de5acc:	b5e0      	push	{r5, r6, r7, lr}
c0de5ace:	4608      	mov	r0, r1
c0de5ad0:	f10d 0107 	add.w	r1, sp, #7
c0de5ad4:	f7ff fed4 	bl	c0de5880 <buttonGenericCallback>
c0de5ad8:	b128      	cbz	r0, c0de5ae6 <homeCallback+0x1a>
c0de5ada:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5ade:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5ae2:	f7ff bf5f 	b.w	c0de59a4 <displayHomePage>
c0de5ae6:	bd8c      	pop	{r2, r3, r7, pc}

c0de5ae8 <displayInfoPage>:
c0de5ae8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5aea:	4604      	mov	r4, r0
c0de5aec:	4816      	ldr	r0, [pc, #88]	@ (c0de5b48 <displayInfoPage+0x60>)
c0de5aee:	f000 fbbd 	bl	c0de626c <OUTLINED_FUNCTION_1>
c0de5af2:	dd11      	ble.n	c0de5b18 <displayInfoPage+0x30>
c0de5af4:	eb09 0700 	add.w	r7, r9, r0
c0de5af8:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5afa:	6800      	ldr	r0, [r0, #0]
c0de5afc:	4e13      	ldr	r6, [pc, #76]	@ (c0de5b4c <displayInfoPage+0x64>)
c0de5afe:	447e      	add	r6, pc
c0de5b00:	47b0      	blx	r6
c0de5b02:	f000 fbd5 	bl	c0de62b0 <OUTLINED_FUNCTION_7>
c0de5b06:	4605      	mov	r5, r0
c0de5b08:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b0a:	6840      	ldr	r0, [r0, #4]
c0de5b0c:	47b0      	blx	r6
c0de5b0e:	f000 fbcf 	bl	c0de62b0 <OUTLINED_FUNCTION_7>
c0de5b12:	4603      	mov	r3, r0
c0de5b14:	2100      	movs	r1, #0
c0de5b16:	e008      	b.n	c0de5b2a <displayInfoPage+0x42>
c0de5b18:	490d      	ldr	r1, [pc, #52]	@ (c0de5b50 <displayInfoPage+0x68>)
c0de5b1a:	4448      	add	r0, r9
c0de5b1c:	2300      	movs	r3, #0
c0de5b1e:	4479      	add	r1, pc
c0de5b20:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5b22:	490c      	ldr	r1, [pc, #48]	@ (c0de5b54 <displayInfoPage+0x6c>)
c0de5b24:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5b58 <displayInfoPage+0x70>)
c0de5b26:	4479      	add	r1, pc
c0de5b28:	447d      	add	r5, pc
c0de5b2a:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5b5c <displayInfoPage+0x74>)
c0de5b2c:	2002      	movs	r0, #2
c0de5b2e:	2200      	movs	r2, #0
c0de5b30:	9002      	str	r0, [sp, #8]
c0de5b32:	4620      	mov	r0, r4
c0de5b34:	447e      	add	r6, pc
c0de5b36:	e9cd 6200 	strd	r6, r2, [sp]
c0de5b3a:	462a      	mov	r2, r5
c0de5b3c:	f7ff f968 	bl	c0de4e10 <drawStep>
c0de5b40:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b44:	f001 b8c9 	b.w	c0de6cda <nbgl_refresh>
c0de5b48:	00000750 	.word	0x00000750
c0de5b4c:	000015ef 	.word	0x000015ef
c0de5b50:	ffffeebf 	.word	0xffffeebf
c0de5b54:	00001d9e 	.word	0x00001d9e
c0de5b58:	00002121 	.word	0x00002121
c0de5b5c:	00000029 	.word	0x00000029

c0de5b60 <infoCallback>:
c0de5b60:	b5e0      	push	{r5, r6, r7, lr}
c0de5b62:	4608      	mov	r0, r1
c0de5b64:	f10d 0107 	add.w	r1, sp, #7
c0de5b68:	f7ff fe8a 	bl	c0de5880 <buttonGenericCallback>
c0de5b6c:	b128      	cbz	r0, c0de5b7a <infoCallback+0x1a>
c0de5b6e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5b72:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5b76:	f7ff bfb7 	b.w	c0de5ae8 <displayInfoPage>
c0de5b7a:	bd8c      	pop	{r2, r3, r7, pc}

c0de5b7c <displayWarningStep>:
c0de5b7c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b7e:	2000      	movs	r0, #0
c0de5b80:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5b84:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de5b88:	482b      	ldr	r0, [pc, #172]	@ (c0de5c38 <displayWarningStep+0xbc>)
c0de5b8a:	eb09 0100 	add.w	r1, r9, r0
c0de5b8e:	69c9      	ldr	r1, [r1, #28]
c0de5b90:	680a      	ldr	r2, [r1, #0]
c0de5b92:	06d3      	lsls	r3, r2, #27
c0de5b94:	d41b      	bmi.n	c0de5bce <displayWarningStep+0x52>
c0de5b96:	2a00      	cmp	r2, #0
c0de5b98:	d145      	bne.n	c0de5c26 <displayWarningStep+0xaa>
c0de5b9a:	69ca      	ldr	r2, [r1, #28]
c0de5b9c:	2a00      	cmp	r2, #0
c0de5b9e:	d042      	beq.n	c0de5c26 <displayWarningStep+0xaa>
c0de5ba0:	eb09 0300 	add.w	r3, r9, r0
c0de5ba4:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de5ba8:	2b00      	cmp	r3, #0
c0de5baa:	d03e      	beq.n	c0de5c2a <displayWarningStep+0xae>
c0de5bac:	4448      	add	r0, r9
c0de5bae:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5bb2:	3801      	subs	r0, #1
c0de5bb4:	4298      	cmp	r0, r3
c0de5bb6:	d11d      	bne.n	c0de5bf4 <displayWarningStep+0x78>
c0de5bb8:	6948      	ldr	r0, [r1, #20]
c0de5bba:	7901      	ldrb	r1, [r0, #4]
c0de5bbc:	bb99      	cbnz	r1, c0de5c26 <displayWarningStep+0xaa>
c0de5bbe:	68c1      	ldr	r1, [r0, #12]
c0de5bc0:	6982      	ldr	r2, [r0, #24]
c0de5bc2:	6a00      	ldr	r0, [r0, #32]
c0de5bc4:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de5bc8:	2003      	movs	r0, #3
c0de5bca:	9104      	str	r1, [sp, #16]
c0de5bcc:	e01e      	b.n	c0de5c0c <displayWarningStep+0x90>
c0de5bce:	eb09 0100 	add.w	r1, r9, r0
c0de5bd2:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5bd6:	b179      	cbz	r1, c0de5bf8 <displayWarningStep+0x7c>
c0de5bd8:	4448      	add	r0, r9
c0de5bda:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5bde:	3801      	subs	r0, #1
c0de5be0:	4288      	cmp	r0, r1
c0de5be2:	d107      	bne.n	c0de5bf4 <displayWarningStep+0x78>
c0de5be4:	aa02      	add	r2, sp, #8
c0de5be6:	2000      	movs	r0, #0
c0de5be8:	f102 0108 	add.w	r1, r2, #8
c0de5bec:	f000 f82e 	bl	c0de5c4c <getLastPageInfo>
c0de5bf0:	200a      	movs	r0, #10
c0de5bf2:	e00b      	b.n	c0de5c0c <displayWarningStep+0x90>
c0de5bf4:	2000      	movs	r0, #0
c0de5bf6:	e009      	b.n	c0de5c0c <displayWarningStep+0x90>
c0de5bf8:	4810      	ldr	r0, [pc, #64]	@ (c0de5c3c <displayWarningStep+0xc0>)
c0de5bfa:	4478      	add	r0, pc
c0de5bfc:	9003      	str	r0, [sp, #12]
c0de5bfe:	4810      	ldr	r0, [pc, #64]	@ (c0de5c40 <displayWarningStep+0xc4>)
c0de5c00:	4478      	add	r0, pc
c0de5c02:	9002      	str	r0, [sp, #8]
c0de5c04:	480f      	ldr	r0, [pc, #60]	@ (c0de5c44 <displayWarningStep+0xc8>)
c0de5c06:	4478      	add	r0, pc
c0de5c08:	9004      	str	r0, [sp, #16]
c0de5c0a:	2001      	movs	r0, #1
c0de5c0c:	2101      	movs	r1, #1
c0de5c0e:	2200      	movs	r2, #0
c0de5c10:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5c14:	2100      	movs	r1, #0
c0de5c16:	9100      	str	r1, [sp, #0]
c0de5c18:	490b      	ldr	r1, [pc, #44]	@ (c0de5c48 <displayWarningStep+0xcc>)
c0de5c1a:	ab02      	add	r3, sp, #8
c0de5c1c:	4479      	add	r1, pc
c0de5c1e:	f7fe fc93 	bl	c0de4548 <nbgl_stepDrawCenteredInfo>
c0de5c22:	f001 f85a 	bl	c0de6cda <nbgl_refresh>
c0de5c26:	b006      	add	sp, #24
c0de5c28:	bd80      	pop	{r7, pc}
c0de5c2a:	6850      	ldr	r0, [r2, #4]
c0de5c2c:	6911      	ldr	r1, [r2, #16]
c0de5c2e:	6992      	ldr	r2, [r2, #24]
c0de5c30:	9004      	str	r0, [sp, #16]
c0de5c32:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5c36:	e7e8      	b.n	c0de5c0a <displayWarningStep+0x8e>
c0de5c38:	00000750 	.word	0x00000750
c0de5c3c:	00001ebe 	.word	0x00001ebe
c0de5c40:	00001feb 	.word	0x00001feb
c0de5c44:	00001da3 	.word	0x00001da3
c0de5c48:	00000155 	.word	0x00000155

c0de5c4c <getLastPageInfo>:
c0de5c4c:	b170      	cbz	r0, c0de5c6c <getLastPageInfo+0x20>
c0de5c4e:	4833      	ldr	r0, [pc, #204]	@ (c0de5d1c <getLastPageInfo+0xd0>)
c0de5c50:	4478      	add	r0, pc
c0de5c52:	6008      	str	r0, [r1, #0]
c0de5c54:	4830      	ldr	r0, [pc, #192]	@ (c0de5d18 <getLastPageInfo+0xcc>)
c0de5c56:	eb09 0100 	add.w	r1, r9, r0
c0de5c5a:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5c5e:	2904      	cmp	r1, #4
c0de5c60:	d113      	bne.n	c0de5c8a <getLastPageInfo+0x3e>
c0de5c62:	482f      	ldr	r0, [pc, #188]	@ (c0de5d20 <getLastPageInfo+0xd4>)
c0de5c64:	492f      	ldr	r1, [pc, #188]	@ (c0de5d24 <getLastPageInfo+0xd8>)
c0de5c66:	4478      	add	r0, pc
c0de5c68:	4479      	add	r1, pc
c0de5c6a:	e04f      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5c6c:	4838      	ldr	r0, [pc, #224]	@ (c0de5d50 <getLastPageInfo+0x104>)
c0de5c6e:	4478      	add	r0, pc
c0de5c70:	6008      	str	r0, [r1, #0]
c0de5c72:	4829      	ldr	r0, [pc, #164]	@ (c0de5d18 <getLastPageInfo+0xcc>)
c0de5c74:	eb09 0100 	add.w	r1, r9, r0
c0de5c78:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5c7c:	2904      	cmp	r1, #4
c0de5c7e:	d10b      	bne.n	c0de5c98 <getLastPageInfo+0x4c>
c0de5c80:	4834      	ldr	r0, [pc, #208]	@ (c0de5d54 <getLastPageInfo+0x108>)
c0de5c82:	4935      	ldr	r1, [pc, #212]	@ (c0de5d58 <getLastPageInfo+0x10c>)
c0de5c84:	4478      	add	r0, pc
c0de5c86:	4479      	add	r1, pc
c0de5c88:	e040      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5c8a:	eb09 0100 	add.w	r1, r9, r0
c0de5c8e:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5c90:	b171      	cbz	r1, c0de5cb0 <getLastPageInfo+0x64>
c0de5c92:	4825      	ldr	r0, [pc, #148]	@ (c0de5d28 <getLastPageInfo+0xdc>)
c0de5c94:	4478      	add	r0, pc
c0de5c96:	e039      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5c98:	4448      	add	r0, r9
c0de5c9a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5c9c:	f010 0007 	ands.w	r0, r0, #7
c0de5ca0:	d017      	beq.n	c0de5cd2 <getLastPageInfo+0x86>
c0de5ca2:	2801      	cmp	r0, #1
c0de5ca4:	d11a      	bne.n	c0de5cdc <getLastPageInfo+0x90>
c0de5ca6:	482f      	ldr	r0, [pc, #188]	@ (c0de5d64 <getLastPageInfo+0x118>)
c0de5ca8:	492f      	ldr	r1, [pc, #188]	@ (c0de5d68 <getLastPageInfo+0x11c>)
c0de5caa:	4478      	add	r0, pc
c0de5cac:	4479      	add	r1, pc
c0de5cae:	e02d      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5cb0:	4448      	add	r0, r9
c0de5cb2:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5cb4:	f000 0107 	and.w	r1, r0, #7
c0de5cb8:	2901      	cmp	r1, #1
c0de5cba:	d014      	beq.n	c0de5ce6 <getLastPageInfo+0x9a>
c0de5cbc:	b9e9      	cbnz	r1, c0de5cfa <getLastPageInfo+0xae>
c0de5cbe:	0640      	lsls	r0, r0, #25
c0de5cc0:	481a      	ldr	r0, [pc, #104]	@ (c0de5d2c <getLastPageInfo+0xe0>)
c0de5cc2:	491b      	ldr	r1, [pc, #108]	@ (c0de5d30 <getLastPageInfo+0xe4>)
c0de5cc4:	4478      	add	r0, pc
c0de5cc6:	4479      	add	r1, pc
c0de5cc8:	bf58      	it	pl
c0de5cca:	4601      	movpl	r1, r0
c0de5ccc:	4819      	ldr	r0, [pc, #100]	@ (c0de5d34 <getLastPageInfo+0xe8>)
c0de5cce:	4478      	add	r0, pc
c0de5cd0:	e01c      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5cd2:	4822      	ldr	r0, [pc, #136]	@ (c0de5d5c <getLastPageInfo+0x110>)
c0de5cd4:	4922      	ldr	r1, [pc, #136]	@ (c0de5d60 <getLastPageInfo+0x114>)
c0de5cd6:	4478      	add	r0, pc
c0de5cd8:	4479      	add	r1, pc
c0de5cda:	e017      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5cdc:	4823      	ldr	r0, [pc, #140]	@ (c0de5d6c <getLastPageInfo+0x120>)
c0de5cde:	4924      	ldr	r1, [pc, #144]	@ (c0de5d70 <getLastPageInfo+0x124>)
c0de5ce0:	4478      	add	r0, pc
c0de5ce2:	4479      	add	r1, pc
c0de5ce4:	e012      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5ce6:	0640      	lsls	r0, r0, #25
c0de5ce8:	4813      	ldr	r0, [pc, #76]	@ (c0de5d38 <getLastPageInfo+0xec>)
c0de5cea:	4914      	ldr	r1, [pc, #80]	@ (c0de5d3c <getLastPageInfo+0xf0>)
c0de5cec:	4478      	add	r0, pc
c0de5cee:	4479      	add	r1, pc
c0de5cf0:	bf58      	it	pl
c0de5cf2:	4601      	movpl	r1, r0
c0de5cf4:	4812      	ldr	r0, [pc, #72]	@ (c0de5d40 <getLastPageInfo+0xf4>)
c0de5cf6:	4478      	add	r0, pc
c0de5cf8:	e008      	b.n	c0de5d0c <getLastPageInfo+0xc0>
c0de5cfa:	0640      	lsls	r0, r0, #25
c0de5cfc:	4811      	ldr	r0, [pc, #68]	@ (c0de5d44 <getLastPageInfo+0xf8>)
c0de5cfe:	4912      	ldr	r1, [pc, #72]	@ (c0de5d48 <getLastPageInfo+0xfc>)
c0de5d00:	4478      	add	r0, pc
c0de5d02:	4479      	add	r1, pc
c0de5d04:	bf58      	it	pl
c0de5d06:	4601      	movpl	r1, r0
c0de5d08:	4810      	ldr	r0, [pc, #64]	@ (c0de5d4c <getLastPageInfo+0x100>)
c0de5d0a:	4478      	add	r0, pc
c0de5d0c:	6011      	str	r1, [r2, #0]
c0de5d0e:	4902      	ldr	r1, [pc, #8]	@ (c0de5d18 <getLastPageInfo+0xcc>)
c0de5d10:	4449      	add	r1, r9
c0de5d12:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5d14:	4770      	bx	lr
c0de5d16:	bf00      	nop
c0de5d18:	00000750 	.word	0x00000750
c0de5d1c:	00001d36 	.word	0x00001d36
c0de5d20:	0000018f 	.word	0x0000018f
c0de5d24:	000020b6 	.word	0x000020b6
c0de5d28:	00000161 	.word	0x00000161
c0de5d2c:	00001e63 	.word	0x00001e63
c0de5d30:	00001f04 	.word	0x00001f04
c0de5d34:	00000127 	.word	0x00000127
c0de5d38:	00001e1f 	.word	0x00001e1f
c0de5d3c:	00001e5d 	.word	0x00001e5d
c0de5d40:	000000ff 	.word	0x000000ff
c0de5d44:	00001f99 	.word	0x00001f99
c0de5d48:	00001efd 	.word	0x00001efd
c0de5d4c:	000000eb 	.word	0x000000eb
c0de5d50:	00001c9c 	.word	0x00001c9c
c0de5d54:	00000185 	.word	0x00000185
c0de5d58:	00001f08 	.word	0x00001f08
c0de5d5c:	00000133 	.word	0x00000133
c0de5d60:	00001e60 	.word	0x00001e60
c0de5d64:	0000015f 	.word	0x0000015f
c0de5d68:	00001ffc 	.word	0x00001ffc
c0de5d6c:	00000129 	.word	0x00000129
c0de5d70:	00001fd5 	.word	0x00001fd5

c0de5d74 <warningNavigate>:
c0de5d74:	2904      	cmp	r1, #4
c0de5d76:	d009      	beq.n	c0de5d8c <warningNavigate+0x18>
c0de5d78:	2901      	cmp	r1, #1
c0de5d7a:	d01f      	beq.n	c0de5dbc <warningNavigate+0x48>
c0de5d7c:	b9e9      	cbnz	r1, c0de5dba <warningNavigate+0x46>
c0de5d7e:	481d      	ldr	r0, [pc, #116]	@ (c0de5df4 <warningNavigate+0x80>)
c0de5d80:	4448      	add	r0, r9
c0de5d82:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5d86:	b368      	cbz	r0, c0de5de4 <warningNavigate+0x70>
c0de5d88:	3801      	subs	r0, #1
c0de5d8a:	e022      	b.n	c0de5dd2 <warningNavigate+0x5e>
c0de5d8c:	4819      	ldr	r0, [pc, #100]	@ (c0de5df4 <warningNavigate+0x80>)
c0de5d8e:	eb09 0100 	add.w	r1, r9, r0
c0de5d92:	69c9      	ldr	r1, [r1, #28]
c0de5d94:	7809      	ldrb	r1, [r1, #0]
c0de5d96:	06c9      	lsls	r1, r1, #27
c0de5d98:	d50f      	bpl.n	c0de5dba <warningNavigate+0x46>
c0de5d9a:	eb09 0100 	add.w	r1, r9, r0
c0de5d9e:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5da2:	b321      	cbz	r1, c0de5dee <warningNavigate+0x7a>
c0de5da4:	eb09 0200 	add.w	r2, r9, r0
c0de5da8:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5dac:	3a01      	subs	r2, #1
c0de5dae:	428a      	cmp	r2, r1
c0de5db0:	d103      	bne.n	c0de5dba <warningNavigate+0x46>
c0de5db2:	4448      	add	r0, r9
c0de5db4:	6a01      	ldr	r1, [r0, #32]
c0de5db6:	2000      	movs	r0, #0
c0de5db8:	4708      	bx	r1
c0de5dba:	4770      	bx	lr
c0de5dbc:	480d      	ldr	r0, [pc, #52]	@ (c0de5df4 <warningNavigate+0x80>)
c0de5dbe:	eb09 0200 	add.w	r2, r9, r0
c0de5dc2:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5dc6:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5dca:	3a01      	subs	r2, #1
c0de5dcc:	428a      	cmp	r2, r1
c0de5dce:	dd05      	ble.n	c0de5ddc <warningNavigate+0x68>
c0de5dd0:	1c48      	adds	r0, r1, #1
c0de5dd2:	4908      	ldr	r1, [pc, #32]	@ (c0de5df4 <warningNavigate+0x80>)
c0de5dd4:	4449      	add	r1, r9
c0de5dd6:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5dda:	e003      	b.n	c0de5de4 <warningNavigate+0x70>
c0de5ddc:	4448      	add	r0, r9
c0de5dde:	69c0      	ldr	r0, [r0, #28]
c0de5de0:	6801      	ldr	r1, [r0, #0]
c0de5de2:	b109      	cbz	r1, c0de5de8 <warningNavigate+0x74>
c0de5de4:	f7ff beca 	b.w	c0de5b7c <displayWarningStep>
c0de5de8:	69c0      	ldr	r0, [r0, #28]
c0de5dea:	2800      	cmp	r0, #0
c0de5dec:	d0fa      	beq.n	c0de5de4 <warningNavigate+0x70>
c0de5dee:	f000 b817 	b.w	c0de5e20 <launchReviewAfterWarning>
c0de5df2:	bf00      	nop
c0de5df4:	00000750 	.word	0x00000750

c0de5df8 <onReviewAccept>:
c0de5df8:	4803      	ldr	r0, [pc, #12]	@ (c0de5e08 <onReviewAccept+0x10>)
c0de5dfa:	4448      	add	r0, r9
c0de5dfc:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5dfe:	b109      	cbz	r1, c0de5e04 <onReviewAccept+0xc>
c0de5e00:	2001      	movs	r0, #1
c0de5e02:	4708      	bx	r1
c0de5e04:	4770      	bx	lr
c0de5e06:	bf00      	nop
c0de5e08:	00000750 	.word	0x00000750

c0de5e0c <onReviewReject>:
c0de5e0c:	4803      	ldr	r0, [pc, #12]	@ (c0de5e1c <onReviewReject+0x10>)
c0de5e0e:	4448      	add	r0, r9
c0de5e10:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e12:	b109      	cbz	r1, c0de5e18 <onReviewReject+0xc>
c0de5e14:	2000      	movs	r0, #0
c0de5e16:	4708      	bx	r1
c0de5e18:	4770      	bx	lr
c0de5e1a:	bf00      	nop
c0de5e1c:	00000750 	.word	0x00000750

c0de5e20 <launchReviewAfterWarning>:
c0de5e20:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5e22:	480c      	ldr	r0, [pc, #48]	@ (c0de5e54 <launchReviewAfterWarning+0x34>)
c0de5e24:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5e28:	2905      	cmp	r1, #5
c0de5e2a:	d00d      	beq.n	c0de5e48 <launchReviewAfterWarning+0x28>
c0de5e2c:	2902      	cmp	r1, #2
c0de5e2e:	bf18      	it	ne
c0de5e30:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e32:	4448      	add	r0, r9
c0de5e34:	1d06      	adds	r6, r0, #4
c0de5e36:	6a00      	ldr	r0, [r0, #32]
c0de5e38:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5e3a:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5e3e:	9003      	str	r0, [sp, #12]
c0de5e40:	2002      	movs	r0, #2
c0de5e42:	f7fe fe23 	bl	c0de4a8c <useCaseReview>
c0de5e46:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e48:	2000      	movs	r0, #0
c0de5e4a:	b004      	add	sp, #16
c0de5e4c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5e50:	f7ff b8fa 	b.w	c0de5048 <displayStreamingReviewPage>
c0de5e54:	00000750 	.word	0x00000750

c0de5e58 <buttonSkipCallback>:
c0de5e58:	b5b0      	push	{r4, r5, r7, lr}
c0de5e5a:	2904      	cmp	r1, #4
c0de5e5c:	d00a      	beq.n	c0de5e74 <buttonSkipCallback+0x1c>
c0de5e5e:	2901      	cmp	r1, #1
c0de5e60:	d017      	beq.n	c0de5e92 <buttonSkipCallback+0x3a>
c0de5e62:	bbb9      	cbnz	r1, c0de5ed4 <buttonSkipCallback+0x7c>
c0de5e64:	4829      	ldr	r0, [pc, #164]	@ (c0de5f0c <buttonSkipCallback+0xb4>)
c0de5e66:	eb09 0100 	add.w	r1, r9, r0
c0de5e6a:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5e6e:	b391      	cbz	r1, c0de5ed6 <buttonSkipCallback+0x7e>
c0de5e70:	2008      	movs	r0, #8
c0de5e72:	e02a      	b.n	c0de5eca <buttonSkipCallback+0x72>
c0de5e74:	4825      	ldr	r0, [pc, #148]	@ (c0de5f0c <buttonSkipCallback+0xb4>)
c0de5e76:	eb09 0100 	add.w	r1, r9, r0
c0de5e7a:	4448      	add	r0, r9
c0de5e7c:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5e80:	2900      	cmp	r1, #0
c0de5e82:	d03f      	beq.n	c0de5f04 <buttonSkipCallback+0xac>
c0de5e84:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5e88:	3902      	subs	r1, #2
c0de5e8a:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5e8e:	2000      	movs	r0, #0
c0de5e90:	e030      	b.n	c0de5ef4 <buttonSkipCallback+0x9c>
c0de5e92:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5f0c <buttonSkipCallback+0xb4>)
c0de5e94:	eb09 0002 	add.w	r0, r9, r2
c0de5e98:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5e9c:	2808      	cmp	r0, #8
c0de5e9e:	d113      	bne.n	c0de5ec8 <buttonSkipCallback+0x70>
c0de5ea0:	eb09 0002 	add.w	r0, r9, r2
c0de5ea4:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5ea8:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5eac:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5eb0:	1e45      	subs	r5, r0, #1
c0de5eb2:	2000      	movs	r0, #0
c0de5eb4:	b2e1      	uxtb	r1, r4
c0de5eb6:	429d      	cmp	r5, r3
c0de5eb8:	bfc8      	it	gt
c0de5eba:	42a3      	cmpgt	r3, r4
c0de5ebc:	dd19      	ble.n	c0de5ef2 <buttonSkipCallback+0x9a>
c0de5ebe:	eb09 0002 	add.w	r0, r9, r2
c0de5ec2:	1c59      	adds	r1, r3, #1
c0de5ec4:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5ec8:	2000      	movs	r0, #0
c0de5eca:	4910      	ldr	r1, [pc, #64]	@ (c0de5f0c <buttonSkipCallback+0xb4>)
c0de5ecc:	4449      	add	r1, r9
c0de5ece:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5ed2:	e00e      	b.n	c0de5ef2 <buttonSkipCallback+0x9a>
c0de5ed4:	bdb0      	pop	{r4, r5, r7, pc}
c0de5ed6:	eb09 0100 	add.w	r1, r9, r0
c0de5eda:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5ede:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5ee2:	b2d9      	uxtb	r1, r3
c0de5ee4:	429a      	cmp	r2, r3
c0de5ee6:	dd03      	ble.n	c0de5ef0 <buttonSkipCallback+0x98>
c0de5ee8:	4448      	add	r0, r9
c0de5eea:	3a01      	subs	r2, #1
c0de5eec:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5ef0:	2008      	movs	r0, #8
c0de5ef2:	b119      	cbz	r1, c0de5efc <buttonSkipCallback+0xa4>
c0de5ef4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5ef8:	f7fe be9e 	b.w	c0de4c38 <displayReviewPage>
c0de5efc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f00:	f7ff b8a2 	b.w	c0de5048 <displayStreamingReviewPage>
c0de5f04:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5f06:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f0a:	4700      	bx	r0
c0de5f0c:	00000750 	.word	0x00000750

c0de5f10 <displayAliasFullValue>:
c0de5f10:	b570      	push	{r4, r5, r6, lr}
c0de5f12:	b088      	sub	sp, #32
c0de5f14:	4c1a      	ldr	r4, [pc, #104]	@ (c0de5f80 <displayAliasFullValue+0x70>)
c0de5f16:	f10d 0213 	add.w	r2, sp, #19
c0de5f1a:	eb09 0504 	add.w	r5, r9, r4
c0de5f1e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5f20:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5f24:	ab05      	add	r3, sp, #20
c0de5f26:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5f2a:	9202      	str	r2, [sp, #8]
c0de5f2c:	e9cd 6300 	strd	r6, r3, [sp]
c0de5f30:	aa07      	add	r2, sp, #28
c0de5f32:	ab06      	add	r3, sp, #24
c0de5f34:	f7ff fbca 	bl	c0de56cc <getPairData>
c0de5f38:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5f3a:	b178      	cbz	r0, c0de5f5c <displayAliasFullValue+0x4c>
c0de5f3c:	eb09 0104 	add.w	r1, r9, r4
c0de5f40:	2200      	movs	r2, #0
c0de5f42:	664a      	str	r2, [r1, #100]	@ 0x64
c0de5f44:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de5f48:	7d01      	ldrb	r1, [r0, #20]
c0de5f4a:	2901      	cmp	r1, #1
c0de5f4c:	d008      	beq.n	c0de5f60 <displayAliasFullValue+0x50>
c0de5f4e:	2905      	cmp	r1, #5
c0de5f50:	d008      	beq.n	c0de5f64 <displayAliasFullValue+0x54>
c0de5f52:	2904      	cmp	r1, #4
c0de5f54:	d102      	bne.n	c0de5f5c <displayAliasFullValue+0x4c>
c0de5f56:	6900      	ldr	r0, [r0, #16]
c0de5f58:	300c      	adds	r0, #12
c0de5f5a:	e005      	b.n	c0de5f68 <displayAliasFullValue+0x58>
c0de5f5c:	b008      	add	sp, #32
c0de5f5e:	bd70      	pop	{r4, r5, r6, pc}
c0de5f60:	2002      	movs	r0, #2
c0de5f62:	e003      	b.n	c0de5f6c <displayAliasFullValue+0x5c>
c0de5f64:	6900      	ldr	r0, [r0, #16]
c0de5f66:	3008      	adds	r0, #8
c0de5f68:	7800      	ldrb	r0, [r0, #0]
c0de5f6a:	3001      	adds	r0, #1
c0de5f6c:	eb09 0104 	add.w	r1, r9, r4
c0de5f70:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de5f74:	2000      	movs	r0, #0
c0de5f76:	b008      	add	sp, #32
c0de5f78:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5f7c:	f000 b814 	b.w	c0de5fa8 <displayExtensionStep>
c0de5f80:	00000750 	.word	0x00000750

c0de5f84 <reviewCallback>:
c0de5f84:	b5e0      	push	{r5, r6, r7, lr}
c0de5f86:	4608      	mov	r0, r1
c0de5f88:	f10d 0107 	add.w	r1, sp, #7
c0de5f8c:	f7ff fc78 	bl	c0de5880 <buttonGenericCallback>
c0de5f90:	b130      	cbz	r0, c0de5fa0 <reviewCallback+0x1c>
c0de5f92:	4804      	ldr	r0, [pc, #16]	@ (c0de5fa4 <reviewCallback+0x20>)
c0de5f94:	f000 f991 	bl	c0de62ba <OUTLINED_FUNCTION_8>
c0de5f98:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5f9c:	f7fe be4c 	b.w	c0de4c38 <displayReviewPage>
c0de5fa0:	bd8c      	pop	{r2, r3, r7, pc}
c0de5fa2:	bf00      	nop
c0de5fa4:	00000750 	.word	0x00000750

c0de5fa8 <displayExtensionStep>:
c0de5fa8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5fac:	b088      	sub	sp, #32
c0de5fae:	4e36      	ldr	r6, [pc, #216]	@ (c0de6088 <displayExtensionStep+0xe0>)
c0de5fb0:	4680      	mov	r8, r0
c0de5fb2:	2000      	movs	r0, #0
c0de5fb4:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de5fb8:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5fbc:	eb09 0006 	add.w	r0, r9, r6
c0de5fc0:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de5fc2:	b108      	cbz	r0, c0de5fc8 <displayExtensionStep+0x20>
c0de5fc4:	f7fe fbe6 	bl	c0de4794 <nbgl_stepRelease>
c0de5fc8:	eb09 0106 	add.w	r1, r9, r6
c0de5fcc:	f000 f981 	bl	c0de62d2 <OUTLINED_FUNCTION_10>
c0de5fd0:	dd10      	ble.n	c0de5ff4 <displayExtensionStep+0x4c>
c0de5fd2:	2703      	movs	r7, #3
c0de5fd4:	eb09 0106 	add.w	r1, r9, r6
c0de5fd8:	2800      	cmp	r0, #0
c0de5fda:	bf08      	it	eq
c0de5fdc:	2701      	moveq	r7, #1
c0de5fde:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de5fe0:	7d0a      	ldrb	r2, [r1, #20]
c0de5fe2:	2a05      	cmp	r2, #5
c0de5fe4:	d01a      	beq.n	c0de601c <displayExtensionStep+0x74>
c0de5fe6:	2a04      	cmp	r2, #4
c0de5fe8:	d028      	beq.n	c0de603c <displayExtensionStep+0x94>
c0de5fea:	2a01      	cmp	r2, #1
c0de5fec:	d147      	bne.n	c0de607e <displayExtensionStep+0xd6>
c0de5fee:	6808      	ldr	r0, [r1, #0]
c0de5ff0:	688d      	ldr	r5, [r1, #8]
c0de5ff2:	e033      	b.n	c0de605c <displayExtensionStep+0xb4>
c0de5ff4:	d143      	bne.n	c0de607e <displayExtensionStep+0xd6>
c0de5ff6:	2001      	movs	r0, #1
c0de5ff8:	2200      	movs	r2, #0
c0de5ffa:	f88d 001d 	strb.w	r0, [sp, #29]
c0de5ffe:	4924      	ldr	r1, [pc, #144]	@ (c0de6090 <displayExtensionStep+0xe8>)
c0de6000:	4479      	add	r1, pc
c0de6002:	9104      	str	r1, [sp, #16]
c0de6004:	4923      	ldr	r1, [pc, #140]	@ (c0de6094 <displayExtensionStep+0xec>)
c0de6006:	9000      	str	r0, [sp, #0]
c0de6008:	f048 0002 	orr.w	r0, r8, #2
c0de600c:	4479      	add	r1, pc
c0de600e:	9106      	str	r1, [sp, #24]
c0de6010:	4921      	ldr	r1, [pc, #132]	@ (c0de6098 <displayExtensionStep+0xf0>)
c0de6012:	ab04      	add	r3, sp, #16
c0de6014:	4479      	add	r1, pc
c0de6016:	f7fe fa97 	bl	c0de4548 <nbgl_stepDrawCenteredInfo>
c0de601a:	e02d      	b.n	c0de6078 <displayExtensionStep+0xd0>
c0de601c:	690c      	ldr	r4, [r1, #16]
c0de601e:	0100      	lsls	r0, r0, #4
c0de6020:	6821      	ldr	r1, [r4, #0]
c0de6022:	5808      	ldr	r0, [r1, r0]
c0de6024:	f001 f864 	bl	c0de70f0 <pic>
c0de6028:	4605      	mov	r5, r0
c0de602a:	eb09 0006 	add.w	r0, r9, r6
c0de602e:	6821      	ldr	r1, [r4, #0]
c0de6030:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6034:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de6038:	6840      	ldr	r0, [r0, #4]
c0de603a:	e00d      	b.n	c0de6058 <displayExtensionStep+0xb0>
c0de603c:	690c      	ldr	r4, [r1, #16]
c0de603e:	6821      	ldr	r1, [r4, #0]
c0de6040:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6044:	f001 f854 	bl	c0de70f0 <pic>
c0de6048:	4605      	mov	r5, r0
c0de604a:	eb09 0006 	add.w	r0, r9, r6
c0de604e:	6861      	ldr	r1, [r4, #4]
c0de6050:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6054:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6058:	f001 f84a 	bl	c0de70f0 <pic>
c0de605c:	b17d      	cbz	r5, c0de607e <displayExtensionStep+0xd6>
c0de605e:	2101      	movs	r1, #1
c0de6060:	ea47 0208 	orr.w	r2, r7, r8
c0de6064:	462b      	mov	r3, r5
c0de6066:	e9cd 0100 	strd	r0, r1, [sp]
c0de606a:	9102      	str	r1, [sp, #8]
c0de606c:	4610      	mov	r0, r2
c0de606e:	2200      	movs	r2, #0
c0de6070:	4906      	ldr	r1, [pc, #24]	@ (c0de608c <displayExtensionStep+0xe4>)
c0de6072:	4479      	add	r1, pc
c0de6074:	f7fe f922 	bl	c0de42bc <nbgl_stepDrawText>
c0de6078:	eb09 0106 	add.w	r1, r9, r6
c0de607c:	6648      	str	r0, [r1, #100]	@ 0x64
c0de607e:	f000 fe2c 	bl	c0de6cda <nbgl_refresh>
c0de6082:	b008      	add	sp, #32
c0de6084:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6088:	00000750 	.word	0x00000750
c0de608c:	00000027 	.word	0x00000027
c0de6090:	00001c49 	.word	0x00001c49
c0de6094:	000018b8 	.word	0x000018b8
c0de6098:	00000085 	.word	0x00000085

c0de609c <extensionNavigate>:
c0de609c:	b580      	push	{r7, lr}
c0de609e:	2904      	cmp	r1, #4
c0de60a0:	d00a      	beq.n	c0de60b8 <extensionNavigate+0x1c>
c0de60a2:	2901      	cmp	r1, #1
c0de60a4:	d01d      	beq.n	c0de60e2 <extensionNavigate+0x46>
c0de60a6:	b9d9      	cbnz	r1, c0de60e0 <extensionNavigate+0x44>
c0de60a8:	4818      	ldr	r0, [pc, #96]	@ (c0de610c <extensionNavigate+0x70>)
c0de60aa:	4448      	add	r0, r9
c0de60ac:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de60b0:	b330      	cbz	r0, c0de6100 <extensionNavigate+0x64>
c0de60b2:	1e41      	subs	r1, r0, #1
c0de60b4:	2008      	movs	r0, #8
c0de60b6:	e01c      	b.n	c0de60f2 <extensionNavigate+0x56>
c0de60b8:	4814      	ldr	r0, [pc, #80]	@ (c0de610c <extensionNavigate+0x70>)
c0de60ba:	eb09 0100 	add.w	r1, r9, r0
c0de60be:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de60c2:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de60c6:	3901      	subs	r1, #1
c0de60c8:	4291      	cmp	r1, r2
c0de60ca:	d109      	bne.n	c0de60e0 <extensionNavigate+0x44>
c0de60cc:	4448      	add	r0, r9
c0de60ce:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de60d0:	f7fe fb60 	bl	c0de4794 <nbgl_stepRelease>
c0de60d4:	f000 fe1a 	bl	c0de6d0c <nbgl_screenRedraw>
c0de60d8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de60dc:	f000 bdfd 	b.w	c0de6cda <nbgl_refresh>
c0de60e0:	bd80      	pop	{r7, pc}
c0de60e2:	480a      	ldr	r0, [pc, #40]	@ (c0de610c <extensionNavigate+0x70>)
c0de60e4:	eb09 0100 	add.w	r1, r9, r0
c0de60e8:	f000 f8f3 	bl	c0de62d2 <OUTLINED_FUNCTION_10>
c0de60ec:	dd06      	ble.n	c0de60fc <extensionNavigate+0x60>
c0de60ee:	1c41      	adds	r1, r0, #1
c0de60f0:	2000      	movs	r0, #0
c0de60f2:	4a06      	ldr	r2, [pc, #24]	@ (c0de610c <extensionNavigate+0x70>)
c0de60f4:	444a      	add	r2, r9
c0de60f6:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de60fa:	e002      	b.n	c0de6102 <extensionNavigate+0x66>
c0de60fc:	2000      	movs	r0, #0
c0de60fe:	e000      	b.n	c0de6102 <extensionNavigate+0x66>
c0de6100:	2008      	movs	r0, #8
c0de6102:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6106:	f7ff bf4f 	b.w	c0de5fa8 <displayExtensionStep>
c0de610a:	bf00      	nop
c0de610c:	00000750 	.word	0x00000750

c0de6110 <statusTickerCallback>:
c0de6110:	4802      	ldr	r0, [pc, #8]	@ (c0de611c <statusTickerCallback+0xc>)
c0de6112:	4448      	add	r0, r9
c0de6114:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de6116:	b100      	cbz	r0, c0de611a <statusTickerCallback+0xa>
c0de6118:	4700      	bx	r0
c0de611a:	4770      	bx	lr
c0de611c:	00000750 	.word	0x00000750

c0de6120 <getChoiceName>:
c0de6120:	b5b0      	push	{r4, r5, r7, lr}
c0de6122:	b090      	sub	sp, #64	@ 0x40
c0de6124:	ad01      	add	r5, sp, #4
c0de6126:	f000 f8cf 	bl	c0de62c8 <OUTLINED_FUNCTION_9>
c0de612a:	4814      	ldr	r0, [pc, #80]	@ (c0de617c <getChoiceName+0x5c>)
c0de612c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6130:	462a      	mov	r2, r5
c0de6132:	4448      	add	r0, r9
c0de6134:	f000 f8b1 	bl	c0de629a <OUTLINED_FUNCTION_4>
c0de6138:	b150      	cbz	r0, c0de6150 <getChoiceName+0x30>
c0de613a:	7801      	ldrb	r1, [r0, #0]
c0de613c:	290a      	cmp	r1, #10
c0de613e:	d009      	beq.n	c0de6154 <getChoiceName+0x34>
c0de6140:	2909      	cmp	r1, #9
c0de6142:	d105      	bne.n	c0de6150 <getChoiceName+0x30>
c0de6144:	f000 f8ad 	bl	c0de62a2 <OUTLINED_FUNCTION_5>
c0de6148:	4605      	mov	r5, r0
c0de614a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de614e:	e006      	b.n	c0de615e <getChoiceName+0x3e>
c0de6150:	2000      	movs	r0, #0
c0de6152:	e010      	b.n	c0de6176 <getChoiceName+0x56>
c0de6154:	f000 f8a5 	bl	c0de62a2 <OUTLINED_FUNCTION_5>
c0de6158:	4605      	mov	r5, r0
c0de615a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de615e:	f000 ffc7 	bl	c0de70f0 <pic>
c0de6162:	7829      	ldrb	r1, [r5, #0]
c0de6164:	42a1      	cmp	r1, r4
c0de6166:	d904      	bls.n	c0de6172 <getChoiceName+0x52>
c0de6168:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de616c:	f000 ffc0 	bl	c0de70f0 <pic>
c0de6170:	e001      	b.n	c0de6176 <getChoiceName+0x56>
c0de6172:	4803      	ldr	r0, [pc, #12]	@ (c0de6180 <getChoiceName+0x60>)
c0de6174:	4478      	add	r0, pc
c0de6176:	b010      	add	sp, #64	@ 0x40
c0de6178:	bdb0      	pop	{r4, r5, r7, pc}
c0de617a:	bf00      	nop
c0de617c:	00000750 	.word	0x00000750
c0de6180:	00001ad5 	.word	0x00001ad5

c0de6184 <onChoiceSelected>:
c0de6184:	b570      	push	{r4, r5, r6, lr}
c0de6186:	b090      	sub	sp, #64	@ 0x40
c0de6188:	ad01      	add	r5, sp, #4
c0de618a:	f000 f89d 	bl	c0de62c8 <OUTLINED_FUNCTION_9>
c0de618e:	4e17      	ldr	r6, [pc, #92]	@ (c0de61ec <onChoiceSelected+0x68>)
c0de6190:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6194:	462a      	mov	r2, r5
c0de6196:	eb09 0006 	add.w	r0, r9, r6
c0de619a:	f000 f87e 	bl	c0de629a <OUTLINED_FUNCTION_4>
c0de619e:	b318      	cbz	r0, c0de61e8 <onChoiceSelected+0x64>
c0de61a0:	7801      	ldrb	r1, [r0, #0]
c0de61a2:	290a      	cmp	r1, #10
c0de61a4:	d008      	beq.n	c0de61b8 <onChoiceSelected+0x34>
c0de61a6:	2909      	cmp	r1, #9
c0de61a8:	d10f      	bne.n	c0de61ca <onChoiceSelected+0x46>
c0de61aa:	f000 f87a 	bl	c0de62a2 <OUTLINED_FUNCTION_5>
c0de61ae:	7941      	ldrb	r1, [r0, #5]
c0de61b0:	42a1      	cmp	r1, r4
c0de61b2:	d90a      	bls.n	c0de61ca <onChoiceSelected+0x46>
c0de61b4:	3007      	adds	r0, #7
c0de61b6:	e006      	b.n	c0de61c6 <onChoiceSelected+0x42>
c0de61b8:	f000 f873 	bl	c0de62a2 <OUTLINED_FUNCTION_5>
c0de61bc:	7a01      	ldrb	r1, [r0, #8]
c0de61be:	42a1      	cmp	r1, r4
c0de61c0:	d903      	bls.n	c0de61ca <onChoiceSelected+0x46>
c0de61c2:	6840      	ldr	r0, [r0, #4]
c0de61c4:	4420      	add	r0, r4
c0de61c6:	7800      	ldrb	r0, [r0, #0]
c0de61c8:	e000      	b.n	c0de61cc <onChoiceSelected+0x48>
c0de61ca:	20ff      	movs	r0, #255	@ 0xff
c0de61cc:	28ff      	cmp	r0, #255	@ 0xff
c0de61ce:	d006      	beq.n	c0de61de <onChoiceSelected+0x5a>
c0de61d0:	eb09 0106 	add.w	r1, r9, r6
c0de61d4:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de61d6:	b112      	cbz	r2, c0de61de <onChoiceSelected+0x5a>
c0de61d8:	2100      	movs	r1, #0
c0de61da:	4790      	blx	r2
c0de61dc:	e004      	b.n	c0de61e8 <onChoiceSelected+0x64>
c0de61de:	eb09 0006 	add.w	r0, r9, r6
c0de61e2:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de61e4:	b100      	cbz	r0, c0de61e8 <onChoiceSelected+0x64>
c0de61e6:	4780      	blx	r0
c0de61e8:	b010      	add	sp, #64	@ 0x40
c0de61ea:	bd70      	pop	{r4, r5, r6, pc}
c0de61ec:	00000750 	.word	0x00000750

c0de61f0 <streamingReviewCallback>:
c0de61f0:	b5e0      	push	{r5, r6, r7, lr}
c0de61f2:	4608      	mov	r0, r1
c0de61f4:	f10d 0107 	add.w	r1, sp, #7
c0de61f8:	f7ff fb42 	bl	c0de5880 <buttonGenericCallback>
c0de61fc:	b130      	cbz	r0, c0de620c <streamingReviewCallback+0x1c>
c0de61fe:	4804      	ldr	r0, [pc, #16]	@ (c0de6210 <streamingReviewCallback+0x20>)
c0de6200:	f000 f85b 	bl	c0de62ba <OUTLINED_FUNCTION_8>
c0de6204:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6208:	f7fe bf1e 	b.w	c0de5048 <displayStreamingReviewPage>
c0de620c:	bd8c      	pop	{r2, r3, r7, pc}
c0de620e:	bf00      	nop
c0de6210:	00000750 	.word	0x00000750

c0de6214 <onChoiceAccept>:
c0de6214:	4803      	ldr	r0, [pc, #12]	@ (c0de6224 <onChoiceAccept+0x10>)
c0de6216:	4448      	add	r0, r9
c0de6218:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de621a:	b109      	cbz	r1, c0de6220 <onChoiceAccept+0xc>
c0de621c:	2001      	movs	r0, #1
c0de621e:	4708      	bx	r1
c0de6220:	4770      	bx	lr
c0de6222:	bf00      	nop
c0de6224:	00000750 	.word	0x00000750

c0de6228 <onChoiceReject>:
c0de6228:	4803      	ldr	r0, [pc, #12]	@ (c0de6238 <onChoiceReject+0x10>)
c0de622a:	4448      	add	r0, r9
c0de622c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de622e:	b109      	cbz	r1, c0de6234 <onChoiceReject+0xc>
c0de6230:	2000      	movs	r0, #0
c0de6232:	4708      	bx	r1
c0de6234:	4770      	bx	lr
c0de6236:	bf00      	nop
c0de6238:	00000750 	.word	0x00000750

c0de623c <genericChoiceCallback>:
c0de623c:	b5e0      	push	{r5, r6, r7, lr}
c0de623e:	4608      	mov	r0, r1
c0de6240:	f10d 0107 	add.w	r1, sp, #7
c0de6244:	f7ff fb1c 	bl	c0de5880 <buttonGenericCallback>
c0de6248:	b128      	cbz	r0, c0de6256 <genericChoiceCallback+0x1a>
c0de624a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de624e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6252:	f7fe bff5 	b.w	c0de5240 <displayChoicePage>
c0de6256:	bd8c      	pop	{r2, r3, r7, pc}

c0de6258 <OUTLINED_FUNCTION_0>:
c0de6258:	460e      	mov	r6, r1
c0de625a:	2140      	movs	r1, #64	@ 0x40
c0de625c:	4698      	mov	r8, r3
c0de625e:	4615      	mov	r5, r2
c0de6260:	eb09 0400 	add.w	r4, r9, r0
c0de6264:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de6268:	f001 ba4e 	b.w	c0de7708 <__aeabi_memclr>

c0de626c <OUTLINED_FUNCTION_1>:
c0de626c:	2200      	movs	r2, #0
c0de626e:	eb09 0100 	add.w	r1, r9, r0
c0de6272:	634a      	str	r2, [r1, #52]	@ 0x34
c0de6274:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de6278:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de627c:	3901      	subs	r1, #1
c0de627e:	4291      	cmp	r1, r2
c0de6280:	4770      	bx	lr

c0de6282 <OUTLINED_FUNCTION_2>:
c0de6282:	eb09 0600 	add.w	r6, r9, r0
c0de6286:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de628a:	f001 ba3d 	b.w	c0de7708 <__aeabi_memclr>

c0de628e <OUTLINED_FUNCTION_3>:
c0de628e:	eb09 0500 	add.w	r5, r9, r0
c0de6292:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de6296:	f001 ba37 	b.w	c0de7708 <__aeabi_memclr>

c0de629a <OUTLINED_FUNCTION_4>:
c0de629a:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de629e:	f7ff b9d1 	b.w	c0de5644 <getContentElemAtIdx>

c0de62a2 <OUTLINED_FUNCTION_5>:
c0de62a2:	3004      	adds	r0, #4
c0de62a4:	f000 bf24 	b.w	c0de70f0 <pic>

c0de62a8 <OUTLINED_FUNCTION_6>:
c0de62a8:	e9cd 6500 	strd	r6, r5, [sp]
c0de62ac:	f7fe bdb0 	b.w	c0de4e10 <drawStep>

c0de62b0 <OUTLINED_FUNCTION_7>:
c0de62b0:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de62b4:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de62b8:	4730      	bx	r6

c0de62ba <OUTLINED_FUNCTION_8>:
c0de62ba:	eb09 0100 	add.w	r1, r9, r0
c0de62be:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de62c2:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de62c6:	4770      	bx	lr

c0de62c8 <OUTLINED_FUNCTION_9>:
c0de62c8:	4604      	mov	r4, r0
c0de62ca:	2138      	movs	r1, #56	@ 0x38
c0de62cc:	4628      	mov	r0, r5
c0de62ce:	f001 ba1b 	b.w	c0de7708 <__aeabi_memclr>

c0de62d2 <OUTLINED_FUNCTION_10>:
c0de62d2:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de62d6:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de62da:	3901      	subs	r1, #1
c0de62dc:	4281      	cmp	r1, r0
c0de62de:	4770      	bx	lr

c0de62e0 <bip32_path_read>:
c0de62e0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de62e4:	b10b      	cbz	r3, c0de62ea <bip32_path_read+0xa>
c0de62e6:	2b0a      	cmp	r3, #10
c0de62e8:	d902      	bls.n	c0de62f0 <bip32_path_read+0x10>
c0de62ea:	2000      	movs	r0, #0
c0de62ec:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de62f0:	4692      	mov	sl, r2
c0de62f2:	460e      	mov	r6, r1
c0de62f4:	4683      	mov	fp, r0
c0de62f6:	425f      	negs	r7, r3
c0de62f8:	2500      	movs	r5, #0
c0de62fa:	f04f 0800 	mov.w	r8, #0
c0de62fe:	9301      	str	r3, [sp, #4]
c0de6300:	42af      	cmp	r7, r5
c0de6302:	d00c      	beq.n	c0de631e <bip32_path_read+0x3e>
c0de6304:	f108 0404 	add.w	r4, r8, #4
c0de6308:	42b4      	cmp	r4, r6
c0de630a:	d808      	bhi.n	c0de631e <bip32_path_read+0x3e>
c0de630c:	4658      	mov	r0, fp
c0de630e:	4641      	mov	r1, r8
c0de6310:	f000 fb49 	bl	c0de69a6 <read_u32_be>
c0de6314:	f84a 0008 	str.w	r0, [sl, r8]
c0de6318:	3d01      	subs	r5, #1
c0de631a:	46a0      	mov	r8, r4
c0de631c:	e7f0      	b.n	c0de6300 <bip32_path_read+0x20>
c0de631e:	9a01      	ldr	r2, [sp, #4]
c0de6320:	4269      	negs	r1, r5
c0de6322:	2000      	movs	r0, #0
c0de6324:	4291      	cmp	r1, r2
c0de6326:	bf28      	it	cs
c0de6328:	2001      	movcs	r0, #1
c0de632a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de632e <buffer_seek_cur>:
c0de632e:	6882      	ldr	r2, [r0, #8]
c0de6330:	1889      	adds	r1, r1, r2
c0de6332:	d205      	bcs.n	c0de6340 <buffer_seek_cur+0x12>
c0de6334:	6842      	ldr	r2, [r0, #4]
c0de6336:	4291      	cmp	r1, r2
c0de6338:	bf9e      	ittt	ls
c0de633a:	6081      	strls	r1, [r0, #8]
c0de633c:	2001      	movls	r0, #1
c0de633e:	4770      	bxls	lr
c0de6340:	2000      	movs	r0, #0
c0de6342:	4770      	bx	lr

c0de6344 <buffer_read_u8>:
c0de6344:	b510      	push	{r4, lr}
c0de6346:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de634a:	429a      	cmp	r2, r3
c0de634c:	d00a      	beq.n	c0de6364 <buffer_read_u8+0x20>
c0de634e:	6804      	ldr	r4, [r0, #0]
c0de6350:	5ce4      	ldrb	r4, [r4, r3]
c0de6352:	700c      	strb	r4, [r1, #0]
c0de6354:	6881      	ldr	r1, [r0, #8]
c0de6356:	3101      	adds	r1, #1
c0de6358:	d206      	bcs.n	c0de6368 <buffer_read_u8+0x24>
c0de635a:	6844      	ldr	r4, [r0, #4]
c0de635c:	42a1      	cmp	r1, r4
c0de635e:	bf98      	it	ls
c0de6360:	6081      	strls	r1, [r0, #8]
c0de6362:	e001      	b.n	c0de6368 <buffer_read_u8+0x24>
c0de6364:	2000      	movs	r0, #0
c0de6366:	7008      	strb	r0, [r1, #0]
c0de6368:	1ad0      	subs	r0, r2, r3
c0de636a:	bf18      	it	ne
c0de636c:	2001      	movne	r0, #1
c0de636e:	bd10      	pop	{r4, pc}

c0de6370 <buffer_read_u64>:
c0de6370:	b570      	push	{r4, r5, r6, lr}
c0de6372:	f000 f87d 	bl	c0de6470 <OUTLINED_FUNCTION_0>
c0de6376:	2e07      	cmp	r6, #7
c0de6378:	d904      	bls.n	c0de6384 <buffer_read_u64+0x14>
c0de637a:	6820      	ldr	r0, [r4, #0]
c0de637c:	b132      	cbz	r2, c0de638c <buffer_read_u64+0x1c>
c0de637e:	f000 fb49 	bl	c0de6a14 <read_u64_le>
c0de6382:	e005      	b.n	c0de6390 <buffer_read_u64+0x20>
c0de6384:	2000      	movs	r0, #0
c0de6386:	e9c5 0000 	strd	r0, r0, [r5]
c0de638a:	e00c      	b.n	c0de63a6 <buffer_read_u64+0x36>
c0de638c:	f000 fb17 	bl	c0de69be <read_u64_be>
c0de6390:	e9c5 0100 	strd	r0, r1, [r5]
c0de6394:	68a0      	ldr	r0, [r4, #8]
c0de6396:	f110 0f09 	cmn.w	r0, #9
c0de639a:	d804      	bhi.n	c0de63a6 <buffer_read_u64+0x36>
c0de639c:	6861      	ldr	r1, [r4, #4]
c0de639e:	3008      	adds	r0, #8
c0de63a0:	4288      	cmp	r0, r1
c0de63a2:	bf98      	it	ls
c0de63a4:	60a0      	strls	r0, [r4, #8]
c0de63a6:	2000      	movs	r0, #0
c0de63a8:	2e07      	cmp	r6, #7
c0de63aa:	bf88      	it	hi
c0de63ac:	2001      	movhi	r0, #1
c0de63ae:	bd70      	pop	{r4, r5, r6, pc}

c0de63b0 <buffer_read_varint>:
c0de63b0:	b5b0      	push	{r4, r5, r7, lr}
c0de63b2:	4604      	mov	r4, r0
c0de63b4:	460d      	mov	r5, r1
c0de63b6:	6800      	ldr	r0, [r0, #0]
c0de63b8:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de63bc:	4410      	add	r0, r2
c0de63be:	1a89      	subs	r1, r1, r2
c0de63c0:	462a      	mov	r2, r5
c0de63c2:	f000 fb91 	bl	c0de6ae8 <varint_read>
c0de63c6:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de63ca:	dd0a      	ble.n	c0de63e2 <buffer_read_varint+0x32>
c0de63cc:	68a1      	ldr	r1, [r4, #8]
c0de63ce:	1840      	adds	r0, r0, r1
c0de63d0:	d205      	bcs.n	c0de63de <buffer_read_varint+0x2e>
c0de63d2:	6861      	ldr	r1, [r4, #4]
c0de63d4:	4288      	cmp	r0, r1
c0de63d6:	bf9e      	ittt	ls
c0de63d8:	60a0      	strls	r0, [r4, #8]
c0de63da:	2001      	movls	r0, #1
c0de63dc:	bdb0      	popls	{r4, r5, r7, pc}
c0de63de:	2000      	movs	r0, #0
c0de63e0:	bdb0      	pop	{r4, r5, r7, pc}
c0de63e2:	2000      	movs	r0, #0
c0de63e4:	e9c5 0000 	strd	r0, r0, [r5]
c0de63e8:	bdb0      	pop	{r4, r5, r7, pc}

c0de63ea <buffer_read_bip32_path>:
c0de63ea:	b5b0      	push	{r4, r5, r7, lr}
c0de63ec:	4604      	mov	r4, r0
c0de63ee:	4615      	mov	r5, r2
c0de63f0:	460a      	mov	r2, r1
c0de63f2:	6800      	ldr	r0, [r0, #0]
c0de63f4:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de63f8:	4418      	add	r0, r3
c0de63fa:	1ac9      	subs	r1, r1, r3
c0de63fc:	462b      	mov	r3, r5
c0de63fe:	f7ff ff6f 	bl	c0de62e0 <bip32_path_read>
c0de6402:	b140      	cbz	r0, c0de6416 <buffer_read_bip32_path+0x2c>
c0de6404:	68a2      	ldr	r2, [r4, #8]
c0de6406:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de640a:	4291      	cmp	r1, r2
c0de640c:	d303      	bcc.n	c0de6416 <buffer_read_bip32_path+0x2c>
c0de640e:	6862      	ldr	r2, [r4, #4]
c0de6410:	4291      	cmp	r1, r2
c0de6412:	bf98      	it	ls
c0de6414:	60a1      	strls	r1, [r4, #8]
c0de6416:	bdb0      	pop	{r4, r5, r7, pc}

c0de6418 <buffer_copy>:
c0de6418:	b5b0      	push	{r4, r5, r7, lr}
c0de641a:	4614      	mov	r4, r2
c0de641c:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6420:	1a9d      	subs	r5, r3, r2
c0de6422:	42a5      	cmp	r5, r4
c0de6424:	d806      	bhi.n	c0de6434 <buffer_copy+0x1c>
c0de6426:	6800      	ldr	r0, [r0, #0]
c0de6428:	4402      	add	r2, r0
c0de642a:	4608      	mov	r0, r1
c0de642c:	4611      	mov	r1, r2
c0de642e:	462a      	mov	r2, r5
c0de6430:	f001 f962 	bl	c0de76f8 <__aeabi_memmove>
c0de6434:	2000      	movs	r0, #0
c0de6436:	42a5      	cmp	r5, r4
c0de6438:	bf98      	it	ls
c0de643a:	2001      	movls	r0, #1
c0de643c:	bdb0      	pop	{r4, r5, r7, pc}

c0de643e <buffer_move>:
c0de643e:	b5b0      	push	{r4, r5, r7, lr}
c0de6440:	4615      	mov	r5, r2
c0de6442:	4604      	mov	r4, r0
c0de6444:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6448:	1a12      	subs	r2, r2, r0
c0de644a:	42aa      	cmp	r2, r5
c0de644c:	bf84      	itt	hi
c0de644e:	2000      	movhi	r0, #0
c0de6450:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6452:	6823      	ldr	r3, [r4, #0]
c0de6454:	4403      	add	r3, r0
c0de6456:	4608      	mov	r0, r1
c0de6458:	4619      	mov	r1, r3
c0de645a:	f001 f94d 	bl	c0de76f8 <__aeabi_memmove>
c0de645e:	68a0      	ldr	r0, [r4, #8]
c0de6460:	1940      	adds	r0, r0, r5
c0de6462:	d203      	bcs.n	c0de646c <buffer_move+0x2e>
c0de6464:	6861      	ldr	r1, [r4, #4]
c0de6466:	4288      	cmp	r0, r1
c0de6468:	bf98      	it	ls
c0de646a:	60a0      	strls	r0, [r4, #8]
c0de646c:	2001      	movs	r0, #1
c0de646e:	bdb0      	pop	{r4, r5, r7, pc}

c0de6470 <OUTLINED_FUNCTION_0>:
c0de6470:	4604      	mov	r4, r0
c0de6472:	460d      	mov	r5, r1
c0de6474:	6840      	ldr	r0, [r0, #4]
c0de6476:	68a1      	ldr	r1, [r4, #8]
c0de6478:	1a46      	subs	r6, r0, r1
c0de647a:	4770      	bx	lr

c0de647c <bip32_derive_with_seed_init_privkey_256>:
c0de647c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6480:	b095      	sub	sp, #84	@ 0x54
c0de6482:	460d      	mov	r5, r1
c0de6484:	4607      	mov	r7, r0
c0de6486:	a904      	add	r1, sp, #16
c0de6488:	469a      	mov	sl, r3
c0de648a:	4614      	mov	r4, r2
c0de648c:	4628      	mov	r0, r5
c0de648e:	f000 ff8f 	bl	c0de73b0 <cx_ecdomain_parameters_length>
c0de6492:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6496:	4606      	mov	r6, r0
c0de6498:	b9e0      	cbnz	r0, c0de64d4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de649a:	9804      	ldr	r0, [sp, #16]
c0de649c:	2820      	cmp	r0, #32
c0de649e:	d117      	bne.n	c0de64d0 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de64a0:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de64a2:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de64a6:	ab05      	add	r3, sp, #20
c0de64a8:	e9cd 3200 	strd	r3, r2, [sp]
c0de64ac:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de64b0:	4638      	mov	r0, r7
c0de64b2:	4629      	mov	r1, r5
c0de64b4:	4622      	mov	r2, r4
c0de64b6:	4653      	mov	r3, sl
c0de64b8:	f000 f818 	bl	c0de64ec <os_derive_bip32_with_seed_no_throw>
c0de64bc:	4606      	mov	r6, r0
c0de64be:	b948      	cbnz	r0, c0de64d4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de64c0:	9a04      	ldr	r2, [sp, #16]
c0de64c2:	a905      	add	r1, sp, #20
c0de64c4:	4628      	mov	r0, r5
c0de64c6:	4643      	mov	r3, r8
c0de64c8:	f000 fbe7 	bl	c0de6c9a <cx_ecfp_init_private_key_no_throw>
c0de64cc:	4606      	mov	r6, r0
c0de64ce:	e001      	b.n	c0de64d4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de64d0:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de64d4:	a805      	add	r0, sp, #20
c0de64d6:	2140      	movs	r1, #64	@ 0x40
c0de64d8:	f001 f924 	bl	c0de7724 <explicit_bzero>
c0de64dc:	b116      	cbz	r6, c0de64e4 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de64de:	4640      	mov	r0, r8
c0de64e0:	f000 f878 	bl	c0de65d4 <OUTLINED_FUNCTION_0>
c0de64e4:	4630      	mov	r0, r6
c0de64e6:	b015      	add	sp, #84	@ 0x54
c0de64e8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de64ec <os_derive_bip32_with_seed_no_throw>:
c0de64ec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de64f0:	b090      	sub	sp, #64	@ 0x40
c0de64f2:	f10d 0810 	add.w	r8, sp, #16
c0de64f6:	4607      	mov	r7, r0
c0de64f8:	469b      	mov	fp, r3
c0de64fa:	4616      	mov	r6, r2
c0de64fc:	460c      	mov	r4, r1
c0de64fe:	4640      	mov	r0, r8
c0de6500:	f001 f946 	bl	c0de7790 <setjmp>
c0de6504:	b285      	uxth	r5, r0
c0de6506:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de650a:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de650e:	b155      	cbz	r5, c0de6526 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6510:	2000      	movs	r0, #0
c0de6512:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6516:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6518:	f000 ffee 	bl	c0de74f8 <try_context_set>
c0de651c:	2140      	movs	r1, #64	@ 0x40
c0de651e:	4650      	mov	r0, sl
c0de6520:	f001 f900 	bl	c0de7724 <explicit_bzero>
c0de6524:	e012      	b.n	c0de654c <os_derive_bip32_with_seed_no_throw+0x60>
c0de6526:	a804      	add	r0, sp, #16
c0de6528:	f000 ffe6 	bl	c0de74f8 <try_context_set>
c0de652c:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de652e:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6530:	4668      	mov	r0, sp
c0de6532:	4632      	mov	r2, r6
c0de6534:	465b      	mov	r3, fp
c0de6536:	f8c0 a000 	str.w	sl, [r0]
c0de653a:	6041      	str	r1, [r0, #4]
c0de653c:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de653e:	6081      	str	r1, [r0, #8]
c0de6540:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6542:	60c1      	str	r1, [r0, #12]
c0de6544:	4638      	mov	r0, r7
c0de6546:	4621      	mov	r1, r4
c0de6548:	f000 ff3c 	bl	c0de73c4 <os_perso_derive_node_with_seed_key>
c0de654c:	f000 ffcc 	bl	c0de74e8 <try_context_get>
c0de6550:	4540      	cmp	r0, r8
c0de6552:	d102      	bne.n	c0de655a <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6554:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6556:	f000 ffcf 	bl	c0de74f8 <try_context_set>
c0de655a:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de655e:	b918      	cbnz	r0, c0de6568 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6560:	4628      	mov	r0, r5
c0de6562:	b010      	add	sp, #64	@ 0x40
c0de6564:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6568:	f000 fc1d 	bl	c0de6da6 <os_longjmp>

c0de656c <bip32_derive_with_seed_get_pubkey_256>:
c0de656c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de656e:	b0a1      	sub	sp, #132	@ 0x84
c0de6570:	460e      	mov	r6, r1
c0de6572:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6574:	9103      	str	r1, [sp, #12]
c0de6576:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6578:	9102      	str	r1, [sp, #8]
c0de657a:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de657c:	9101      	str	r1, [sp, #4]
c0de657e:	a917      	add	r1, sp, #92	@ 0x5c
c0de6580:	9100      	str	r1, [sp, #0]
c0de6582:	4631      	mov	r1, r6
c0de6584:	f7ff ff7a 	bl	c0de647c <bip32_derive_with_seed_init_privkey_256>
c0de6588:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de658a:	4605      	mov	r5, r0
c0de658c:	b9b8      	cbnz	r0, c0de65be <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de658e:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6590:	2301      	movs	r3, #1
c0de6592:	9000      	str	r0, [sp, #0]
c0de6594:	af04      	add	r7, sp, #16
c0de6596:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6598:	4630      	mov	r0, r6
c0de659a:	4639      	mov	r1, r7
c0de659c:	f000 fb78 	bl	c0de6c90 <cx_ecfp_generate_pair2_no_throw>
c0de65a0:	4605      	mov	r5, r0
c0de65a2:	b960      	cbnz	r0, c0de65be <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65a4:	9805      	ldr	r0, [sp, #20]
c0de65a6:	2841      	cmp	r0, #65	@ 0x41
c0de65a8:	d107      	bne.n	c0de65ba <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de65aa:	f107 0108 	add.w	r1, r7, #8
c0de65ae:	4620      	mov	r0, r4
c0de65b0:	2241      	movs	r2, #65	@ 0x41
c0de65b2:	f001 f89f 	bl	c0de76f4 <__aeabi_memcpy>
c0de65b6:	2500      	movs	r5, #0
c0de65b8:	e001      	b.n	c0de65be <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65ba:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de65be:	a817      	add	r0, sp, #92	@ 0x5c
c0de65c0:	f000 f808 	bl	c0de65d4 <OUTLINED_FUNCTION_0>
c0de65c4:	b11d      	cbz	r5, c0de65ce <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de65c6:	4620      	mov	r0, r4
c0de65c8:	2141      	movs	r1, #65	@ 0x41
c0de65ca:	f001 f8ab 	bl	c0de7724 <explicit_bzero>
c0de65ce:	4628      	mov	r0, r5
c0de65d0:	b021      	add	sp, #132	@ 0x84
c0de65d2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de65d4 <OUTLINED_FUNCTION_0>:
c0de65d4:	2128      	movs	r1, #40	@ 0x28
c0de65d6:	f001 b8a5 	b.w	c0de7724 <explicit_bzero>

c0de65da <format_u64>:
c0de65da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de65de:	b1f9      	cbz	r1, c0de6620 <format_u64+0x46>
c0de65e0:	4615      	mov	r5, r2
c0de65e2:	4604      	mov	r4, r0
c0de65e4:	f1a1 0801 	sub.w	r8, r1, #1
c0de65e8:	2700      	movs	r7, #0
c0de65ea:	2600      	movs	r6, #0
c0de65ec:	f1b5 000a 	subs.w	r0, r5, #10
c0de65f0:	f173 0000 	sbcs.w	r0, r3, #0
c0de65f4:	d316      	bcc.n	c0de6624 <format_u64+0x4a>
c0de65f6:	4619      	mov	r1, r3
c0de65f8:	4628      	mov	r0, r5
c0de65fa:	220a      	movs	r2, #10
c0de65fc:	2300      	movs	r3, #0
c0de65fe:	f001 f887 	bl	c0de7710 <__aeabi_uldivmod>
c0de6602:	460b      	mov	r3, r1
c0de6604:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6608:	1cba      	adds	r2, r7, #2
c0de660a:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de660e:	4605      	mov	r5, r0
c0de6610:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6614:	55e1      	strb	r1, [r4, r7]
c0de6616:	1c79      	adds	r1, r7, #1
c0de6618:	4542      	cmp	r2, r8
c0de661a:	460f      	mov	r7, r1
c0de661c:	d9e6      	bls.n	c0de65ec <format_u64+0x12>
c0de661e:	e012      	b.n	c0de6646 <format_u64+0x6c>
c0de6620:	2600      	movs	r6, #0
c0de6622:	e010      	b.n	c0de6646 <format_u64+0x6c>
c0de6624:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6628:	19e1      	adds	r1, r4, r7
c0de662a:	55e0      	strb	r0, [r4, r7]
c0de662c:	2000      	movs	r0, #0
c0de662e:	7048      	strb	r0, [r1, #1]
c0de6630:	b2c1      	uxtb	r1, r0
c0de6632:	428f      	cmp	r7, r1
c0de6634:	d906      	bls.n	c0de6644 <format_u64+0x6a>
c0de6636:	5c62      	ldrb	r2, [r4, r1]
c0de6638:	5de3      	ldrb	r3, [r4, r7]
c0de663a:	3001      	adds	r0, #1
c0de663c:	5463      	strb	r3, [r4, r1]
c0de663e:	55e2      	strb	r2, [r4, r7]
c0de6640:	3f01      	subs	r7, #1
c0de6642:	e7f5      	b.n	c0de6630 <format_u64+0x56>
c0de6644:	2601      	movs	r6, #1
c0de6646:	4630      	mov	r0, r6
c0de6648:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de664c <format_fpu64>:
c0de664c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6650:	b086      	sub	sp, #24
c0de6652:	466c      	mov	r4, sp
c0de6654:	4688      	mov	r8, r1
c0de6656:	4605      	mov	r5, r0
c0de6658:	2115      	movs	r1, #21
c0de665a:	461e      	mov	r6, r3
c0de665c:	4617      	mov	r7, r2
c0de665e:	4620      	mov	r0, r4
c0de6660:	f001 f852 	bl	c0de7708 <__aeabi_memclr>
c0de6664:	4620      	mov	r0, r4
c0de6666:	2115      	movs	r1, #21
c0de6668:	463a      	mov	r2, r7
c0de666a:	4633      	mov	r3, r6
c0de666c:	f7ff ffb5 	bl	c0de65da <format_u64>
c0de6670:	b340      	cbz	r0, c0de66c4 <format_fpu64+0x78>
c0de6672:	466f      	mov	r7, sp
c0de6674:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6676:	4638      	mov	r0, r7
c0de6678:	f001 f8a2 	bl	c0de77c0 <strlen>
c0de667c:	42b0      	cmp	r0, r6
c0de667e:	d910      	bls.n	c0de66a2 <format_fpu64+0x56>
c0de6680:	1831      	adds	r1, r6, r0
c0de6682:	3101      	adds	r1, #1
c0de6684:	4541      	cmp	r1, r8
c0de6686:	d21d      	bcs.n	c0de66c4 <format_fpu64+0x78>
c0de6688:	1b84      	subs	r4, r0, r6
c0de668a:	4628      	mov	r0, r5
c0de668c:	4639      	mov	r1, r7
c0de668e:	4622      	mov	r2, r4
c0de6690:	f001 f830 	bl	c0de76f4 <__aeabi_memcpy>
c0de6694:	1928      	adds	r0, r5, r4
c0de6696:	212e      	movs	r1, #46	@ 0x2e
c0de6698:	4632      	mov	r2, r6
c0de669a:	f800 1b01 	strb.w	r1, [r0], #1
c0de669e:	1939      	adds	r1, r7, r4
c0de66a0:	e015      	b.n	c0de66ce <format_fpu64+0x82>
c0de66a2:	1a32      	subs	r2, r6, r0
c0de66a4:	1c91      	adds	r1, r2, #2
c0de66a6:	4541      	cmp	r1, r8
c0de66a8:	d20c      	bcs.n	c0de66c4 <format_fpu64+0x78>
c0de66aa:	202e      	movs	r0, #46	@ 0x2e
c0de66ac:	2330      	movs	r3, #48	@ 0x30
c0de66ae:	2400      	movs	r4, #0
c0de66b0:	7068      	strb	r0, [r5, #1]
c0de66b2:	1ca8      	adds	r0, r5, #2
c0de66b4:	702b      	strb	r3, [r5, #0]
c0de66b6:	b2a5      	uxth	r5, r4
c0de66b8:	42aa      	cmp	r2, r5
c0de66ba:	d905      	bls.n	c0de66c8 <format_fpu64+0x7c>
c0de66bc:	f800 3b01 	strb.w	r3, [r0], #1
c0de66c0:	3401      	adds	r4, #1
c0de66c2:	e7f8      	b.n	c0de66b6 <format_fpu64+0x6a>
c0de66c4:	2000      	movs	r0, #0
c0de66c6:	e005      	b.n	c0de66d4 <format_fpu64+0x88>
c0de66c8:	eba8 0201 	sub.w	r2, r8, r1
c0de66cc:	4669      	mov	r1, sp
c0de66ce:	f001 f891 	bl	c0de77f4 <strncpy>
c0de66d2:	2001      	movs	r0, #1
c0de66d4:	b006      	add	sp, #24
c0de66d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de66dc <format_hex>:
c0de66dc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de66de:	4604      	mov	r4, r0
c0de66e0:	0048      	lsls	r0, r1, #1
c0de66e2:	f100 0c01 	add.w	ip, r0, #1
c0de66e6:	459c      	cmp	ip, r3
c0de66e8:	d902      	bls.n	c0de66f0 <format_hex+0x14>
c0de66ea:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de66ee:	e018      	b.n	c0de6722 <format_hex+0x46>
c0de66f0:	480d      	ldr	r0, [pc, #52]	@ (c0de6728 <format_hex+0x4c>)
c0de66f2:	2500      	movs	r5, #0
c0de66f4:	4478      	add	r0, pc
c0de66f6:	b191      	cbz	r1, c0de671e <format_hex+0x42>
c0de66f8:	1cef      	adds	r7, r5, #3
c0de66fa:	429f      	cmp	r7, r3
c0de66fc:	d80d      	bhi.n	c0de671a <format_hex+0x3e>
c0de66fe:	7827      	ldrb	r7, [r4, #0]
c0de6700:	3901      	subs	r1, #1
c0de6702:	093f      	lsrs	r7, r7, #4
c0de6704:	5dc7      	ldrb	r7, [r0, r7]
c0de6706:	5557      	strb	r7, [r2, r5]
c0de6708:	1957      	adds	r7, r2, r5
c0de670a:	3502      	adds	r5, #2
c0de670c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6710:	f006 060f 	and.w	r6, r6, #15
c0de6714:	5d86      	ldrb	r6, [r0, r6]
c0de6716:	707e      	strb	r6, [r7, #1]
c0de6718:	e7ed      	b.n	c0de66f6 <format_hex+0x1a>
c0de671a:	f105 0c01 	add.w	ip, r5, #1
c0de671e:	2000      	movs	r0, #0
c0de6720:	5550      	strb	r0, [r2, r5]
c0de6722:	4660      	mov	r0, ip
c0de6724:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6726:	bf00      	nop
c0de6728:	0000153b 	.word	0x0000153b

c0de672c <app_ticker_event_callback>:
c0de672c:	4770      	bx	lr
	...

c0de6730 <io_event>:
c0de6730:	b580      	push	{r7, lr}
c0de6732:	480a      	ldr	r0, [pc, #40]	@ (c0de675c <io_event+0x2c>)
c0de6734:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6738:	290e      	cmp	r1, #14
c0de673a:	d005      	beq.n	c0de6748 <io_event+0x18>
c0de673c:	2905      	cmp	r1, #5
c0de673e:	d108      	bne.n	c0de6752 <io_event+0x22>
c0de6740:	4448      	add	r0, r9
c0de6742:	f000 fa05 	bl	c0de6b50 <ux_process_button_event>
c0de6746:	e006      	b.n	c0de6756 <io_event+0x26>
c0de6748:	f7ff fff0 	bl	c0de672c <app_ticker_event_callback>
c0de674c:	f000 fa44 	bl	c0de6bd8 <ux_process_ticker_event>
c0de6750:	e001      	b.n	c0de6756 <io_event+0x26>
c0de6752:	f000 fa59 	bl	c0de6c08 <ux_process_default_event>
c0de6756:	2001      	movs	r0, #1
c0de6758:	bd80      	pop	{r7, pc}
c0de675a:	bf00      	nop
c0de675c:	000007b8 	.word	0x000007b8

c0de6760 <io_init>:
c0de6760:	4802      	ldr	r0, [pc, #8]	@ (c0de676c <io_init+0xc>)
c0de6762:	2101      	movs	r1, #1
c0de6764:	f809 1000 	strb.w	r1, [r9, r0]
c0de6768:	4770      	bx	lr
c0de676a:	bf00      	nop
c0de676c:	000008c8 	.word	0x000008c8

c0de6770 <io_recv_command>:
c0de6770:	b510      	push	{r4, lr}
c0de6772:	4c09      	ldr	r4, [pc, #36]	@ (c0de6798 <io_recv_command+0x28>)
c0de6774:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6778:	2801      	cmp	r0, #1
c0de677a:	d104      	bne.n	c0de6786 <io_recv_command+0x16>
c0de677c:	f000 fe92 	bl	c0de74a4 <os_io_start>
c0de6780:	2000      	movs	r0, #0
c0de6782:	f809 0004 	strb.w	r0, [r9, r4]
c0de6786:	2000      	movs	r0, #0
c0de6788:	2800      	cmp	r0, #0
c0de678a:	dc03      	bgt.n	c0de6794 <io_recv_command+0x24>
c0de678c:	2001      	movs	r0, #1
c0de678e:	f7fc fe8f 	bl	c0de34b0 <io_legacy_apdu_rx>
c0de6792:	e7f9      	b.n	c0de6788 <io_recv_command+0x18>
c0de6794:	bd10      	pop	{r4, pc}
c0de6796:	bf00      	nop
c0de6798:	000008c8 	.word	0x000008c8

c0de679c <io_send_response_buffers>:
c0de679c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de67a0:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6834 <io_send_response_buffers+0x98>
c0de67a4:	4690      	mov	r8, r2
c0de67a6:	460f      	mov	r7, r1
c0de67a8:	4606      	mov	r6, r0
c0de67aa:	f240 140f 	movw	r4, #271	@ 0x10f
c0de67ae:	2500      	movs	r5, #0
c0de67b0:	b1b6      	cbz	r6, c0de67e0 <io_send_response_buffers+0x44>
c0de67b2:	b1af      	cbz	r7, c0de67e0 <io_send_response_buffers+0x44>
c0de67b4:	2500      	movs	r5, #0
c0de67b6:	b19f      	cbz	r7, c0de67e0 <io_send_response_buffers+0x44>
c0de67b8:	eb09 000a 	add.w	r0, r9, sl
c0de67bc:	1b62      	subs	r2, r4, r5
c0de67be:	1941      	adds	r1, r0, r5
c0de67c0:	4630      	mov	r0, r6
c0de67c2:	f7ff fe29 	bl	c0de6418 <buffer_copy>
c0de67c6:	b130      	cbz	r0, c0de67d6 <io_send_response_buffers+0x3a>
c0de67c8:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de67cc:	360c      	adds	r6, #12
c0de67ce:	3f01      	subs	r7, #1
c0de67d0:	4428      	add	r0, r5
c0de67d2:	1a45      	subs	r5, r0, r1
c0de67d4:	e7ef      	b.n	c0de67b6 <io_send_response_buffers+0x1a>
c0de67d6:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de67da:	2600      	movs	r6, #0
c0de67dc:	2700      	movs	r7, #0
c0de67de:	e7e6      	b.n	c0de67ae <io_send_response_buffers+0x12>
c0de67e0:	fa1f f688 	uxth.w	r6, r8
c0de67e4:	eb09 000a 	add.w	r0, r9, sl
c0de67e8:	4629      	mov	r1, r5
c0de67ea:	4632      	mov	r2, r6
c0de67ec:	f000 f9aa 	bl	c0de6b44 <write_u16_be>
c0de67f0:	4811      	ldr	r0, [pc, #68]	@ (c0de6838 <io_send_response_buffers+0x9c>)
c0de67f2:	1ca9      	adds	r1, r5, #2
c0de67f4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de67f8:	b118      	cbz	r0, c0de6802 <io_send_response_buffers+0x66>
c0de67fa:	4810      	ldr	r0, [pc, #64]	@ (c0de683c <io_send_response_buffers+0xa0>)
c0de67fc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6800:	b928      	cbnz	r0, c0de680e <io_send_response_buffers+0x72>
c0de6802:	f000 f81f 	bl	c0de6844 <OUTLINED_FUNCTION_0>
c0de6806:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de680a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de680e:	f000 f819 	bl	c0de6844 <OUTLINED_FUNCTION_0>
c0de6812:	2800      	cmp	r0, #0
c0de6814:	d40a      	bmi.n	c0de682c <io_send_response_buffers+0x90>
c0de6816:	480a      	ldr	r0, [pc, #40]	@ (c0de6840 <io_send_response_buffers+0xa4>)
c0de6818:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de681c:	fab1 f181 	clz	r1, r1
c0de6820:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6824:	0949      	lsrs	r1, r1, #5
c0de6826:	7001      	strb	r1, [r0, #0]
c0de6828:	f000 fe0c 	bl	c0de7444 <os_lib_end>
c0de682c:	20ff      	movs	r0, #255	@ 0xff
c0de682e:	f000 fe25 	bl	c0de747c <os_sched_exit>
c0de6832:	bf00      	nop
c0de6834:	00000414 	.word	0x00000414
c0de6838:	000008d8 	.word	0x000008d8
c0de683c:	000008d9 	.word	0x000008d9
c0de6840:	000008dc 	.word	0x000008dc

c0de6844 <OUTLINED_FUNCTION_0>:
c0de6844:	eb09 000a 	add.w	r0, r9, sl
c0de6848:	b289      	uxth	r1, r1
c0de684a:	f7fc be1d 	b.w	c0de3488 <io_legacy_apdu_tx>

c0de684e <app_exit>:
c0de684e:	20ff      	movs	r0, #255	@ 0xff
c0de6850:	f000 fe14 	bl	c0de747c <os_sched_exit>

c0de6854 <common_app_init>:
c0de6854:	b580      	push	{r7, lr}
c0de6856:	f000 fa45 	bl	c0de6ce4 <nbgl_objInit>
c0de685a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de685e:	f7fc bf01 	b.w	c0de3664 <io_seproxyhal_init>
	...

c0de6864 <standalone_app_main>:
c0de6864:	b5b0      	push	{r4, r5, r7, lr}
c0de6866:	b08c      	sub	sp, #48	@ 0x30
c0de6868:	4816      	ldr	r0, [pc, #88]	@ (c0de68c4 <standalone_app_main+0x60>)
c0de686a:	2500      	movs	r5, #0
c0de686c:	466c      	mov	r4, sp
c0de686e:	f809 5000 	strb.w	r5, [r9, r0]
c0de6872:	4815      	ldr	r0, [pc, #84]	@ (c0de68c8 <standalone_app_main+0x64>)
c0de6874:	f849 5000 	str.w	r5, [r9, r0]
c0de6878:	4814      	ldr	r0, [pc, #80]	@ (c0de68cc <standalone_app_main+0x68>)
c0de687a:	f809 5000 	strb.w	r5, [r9, r0]
c0de687e:	4620      	mov	r0, r4
c0de6880:	f000 ff86 	bl	c0de7790 <setjmp>
c0de6884:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6888:	0400      	lsls	r0, r0, #16
c0de688a:	d108      	bne.n	c0de689e <standalone_app_main+0x3a>
c0de688c:	4668      	mov	r0, sp
c0de688e:	f000 fe33 	bl	c0de74f8 <try_context_set>
c0de6892:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6894:	f7ff ffde 	bl	c0de6854 <common_app_init>
c0de6898:	f7f9 fd4e 	bl	c0de0338 <app_main>
c0de689c:	e004      	b.n	c0de68a8 <standalone_app_main+0x44>
c0de689e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de68a0:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de68a4:	f000 fe28 	bl	c0de74f8 <try_context_set>
c0de68a8:	f000 fe1e 	bl	c0de74e8 <try_context_get>
c0de68ac:	42a0      	cmp	r0, r4
c0de68ae:	d102      	bne.n	c0de68b6 <standalone_app_main+0x52>
c0de68b0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de68b2:	f000 fe21 	bl	c0de74f8 <try_context_set>
c0de68b6:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de68ba:	b908      	cbnz	r0, c0de68c0 <standalone_app_main+0x5c>
c0de68bc:	f7ff ffc7 	bl	c0de684e <app_exit>
c0de68c0:	f000 fa71 	bl	c0de6da6 <os_longjmp>
c0de68c4:	000008d8 	.word	0x000008d8
c0de68c8:	000008dc 	.word	0x000008dc
c0de68cc:	000008d9 	.word	0x000008d9

c0de68d0 <library_app_main>:
c0de68d0:	b5b0      	push	{r4, r5, r7, lr}
c0de68d2:	b08c      	sub	sp, #48	@ 0x30
c0de68d4:	466c      	mov	r4, sp
c0de68d6:	4605      	mov	r5, r0
c0de68d8:	4620      	mov	r0, r4
c0de68da:	f000 ff59 	bl	c0de7790 <setjmp>
c0de68de:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de68e2:	0400      	lsls	r0, r0, #16
c0de68e4:	d124      	bne.n	c0de6930 <library_app_main+0x60>
c0de68e6:	4668      	mov	r0, sp
c0de68e8:	f000 fe06 	bl	c0de74f8 <try_context_set>
c0de68ec:	900a      	str	r0, [sp, #40]	@ 0x28
c0de68ee:	6868      	ldr	r0, [r5, #4]
c0de68f0:	2804      	cmp	r0, #4
c0de68f2:	d024      	beq.n	c0de693e <library_app_main+0x6e>
c0de68f4:	2803      	cmp	r0, #3
c0de68f6:	d026      	beq.n	c0de6946 <library_app_main+0x76>
c0de68f8:	2802      	cmp	r0, #2
c0de68fa:	d127      	bne.n	c0de694c <library_app_main+0x7c>
c0de68fc:	68e8      	ldr	r0, [r5, #12]
c0de68fe:	f7fa fe77 	bl	c0de15f0 <swap_copy_transaction_parameters>
c0de6902:	b318      	cbz	r0, c0de694c <library_app_main+0x7c>
c0de6904:	4816      	ldr	r0, [pc, #88]	@ (c0de6960 <library_app_main+0x90>)
c0de6906:	2201      	movs	r2, #1
c0de6908:	f809 2000 	strb.w	r2, [r9, r0]
c0de690c:	4815      	ldr	r0, [pc, #84]	@ (c0de6964 <library_app_main+0x94>)
c0de690e:	2200      	movs	r2, #0
c0de6910:	f809 2000 	strb.w	r2, [r9, r0]
c0de6914:	4a14      	ldr	r2, [pc, #80]	@ (c0de6968 <library_app_main+0x98>)
c0de6916:	68e8      	ldr	r0, [r5, #12]
c0de6918:	3020      	adds	r0, #32
c0de691a:	f849 0002 	str.w	r0, [r9, r2]
c0de691e:	f7ff ff99 	bl	c0de6854 <common_app_init>
c0de6922:	4812      	ldr	r0, [pc, #72]	@ (c0de696c <library_app_main+0x9c>)
c0de6924:	4478      	add	r0, pc
c0de6926:	f7fe fc51 	bl	c0de51cc <nbgl_useCaseSpinner>
c0de692a:	f7f9 fd05 	bl	c0de0338 <app_main>
c0de692e:	e00d      	b.n	c0de694c <library_app_main+0x7c>
c0de6930:	2000      	movs	r0, #0
c0de6932:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6936:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6938:	f000 fdde 	bl	c0de74f8 <try_context_set>
c0de693c:	e006      	b.n	c0de694c <library_app_main+0x7c>
c0de693e:	68e8      	ldr	r0, [r5, #12]
c0de6940:	f7fa fe2a 	bl	c0de1598 <swap_handle_get_printable_amount>
c0de6944:	e002      	b.n	c0de694c <library_app_main+0x7c>
c0de6946:	68e8      	ldr	r0, [r5, #12]
c0de6948:	f7fa fdcb 	bl	c0de14e2 <swap_handle_check_address>
c0de694c:	f000 fdcc 	bl	c0de74e8 <try_context_get>
c0de6950:	42a0      	cmp	r0, r4
c0de6952:	d102      	bne.n	c0de695a <library_app_main+0x8a>
c0de6954:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6956:	f000 fdcf 	bl	c0de74f8 <try_context_set>
c0de695a:	f000 fd73 	bl	c0de7444 <os_lib_end>
c0de695e:	bf00      	nop
c0de6960:	000008d8 	.word	0x000008d8
c0de6964:	000008d9 	.word	0x000008d9
c0de6968:	000008dc 	.word	0x000008dc
c0de696c:	00001139 	.word	0x00001139

c0de6970 <apdu_parser>:
c0de6970:	2a04      	cmp	r2, #4
c0de6972:	d316      	bcc.n	c0de69a2 <apdu_parser+0x32>
c0de6974:	d102      	bne.n	c0de697c <apdu_parser+0xc>
c0de6976:	2300      	movs	r3, #0
c0de6978:	7103      	strb	r3, [r0, #4]
c0de697a:	e004      	b.n	c0de6986 <apdu_parser+0x16>
c0de697c:	790b      	ldrb	r3, [r1, #4]
c0de697e:	3a05      	subs	r2, #5
c0de6980:	429a      	cmp	r2, r3
c0de6982:	7103      	strb	r3, [r0, #4]
c0de6984:	d10d      	bne.n	c0de69a2 <apdu_parser+0x32>
c0de6986:	780a      	ldrb	r2, [r1, #0]
c0de6988:	2b00      	cmp	r3, #0
c0de698a:	7002      	strb	r2, [r0, #0]
c0de698c:	784a      	ldrb	r2, [r1, #1]
c0de698e:	7042      	strb	r2, [r0, #1]
c0de6990:	788a      	ldrb	r2, [r1, #2]
c0de6992:	7082      	strb	r2, [r0, #2]
c0de6994:	bf18      	it	ne
c0de6996:	1d4b      	addne	r3, r1, #5
c0de6998:	78c9      	ldrb	r1, [r1, #3]
c0de699a:	6083      	str	r3, [r0, #8]
c0de699c:	70c1      	strb	r1, [r0, #3]
c0de699e:	2001      	movs	r0, #1
c0de69a0:	4770      	bx	lr
c0de69a2:	2000      	movs	r0, #0
c0de69a4:	4770      	bx	lr

c0de69a6 <read_u32_be>:
c0de69a6:	5c42      	ldrb	r2, [r0, r1]
c0de69a8:	4408      	add	r0, r1
c0de69aa:	7841      	ldrb	r1, [r0, #1]
c0de69ac:	7883      	ldrb	r3, [r0, #2]
c0de69ae:	78c0      	ldrb	r0, [r0, #3]
c0de69b0:	0409      	lsls	r1, r1, #16
c0de69b2:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de69b6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de69ba:	4408      	add	r0, r1
c0de69bc:	4770      	bx	lr

c0de69be <read_u64_be>:
c0de69be:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de69c0:	1842      	adds	r2, r0, r1
c0de69c2:	5c40      	ldrb	r0, [r0, r1]
c0de69c4:	7917      	ldrb	r7, [r2, #4]
c0de69c6:	7953      	ldrb	r3, [r2, #5]
c0de69c8:	7854      	ldrb	r4, [r2, #1]
c0de69ca:	7895      	ldrb	r5, [r2, #2]
c0de69cc:	78d6      	ldrb	r6, [r2, #3]
c0de69ce:	063f      	lsls	r7, r7, #24
c0de69d0:	0421      	lsls	r1, r4, #16
c0de69d2:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de69d6:	7997      	ldrb	r7, [r2, #6]
c0de69d8:	79d2      	ldrb	r2, [r2, #7]
c0de69da:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de69de:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de69e2:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de69e6:	1981      	adds	r1, r0, r6
c0de69e8:	441a      	add	r2, r3
c0de69ea:	4610      	mov	r0, r2
c0de69ec:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de69ee <read_u16_le>:
c0de69ee:	5c42      	ldrb	r2, [r0, r1]
c0de69f0:	4408      	add	r0, r1
c0de69f2:	7840      	ldrb	r0, [r0, #1]
c0de69f4:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de69f8:	b280      	uxth	r0, r0
c0de69fa:	4770      	bx	lr

c0de69fc <read_u32_le>:
c0de69fc:	5c42      	ldrb	r2, [r0, r1]
c0de69fe:	4408      	add	r0, r1
c0de6a00:	7841      	ldrb	r1, [r0, #1]
c0de6a02:	7883      	ldrb	r3, [r0, #2]
c0de6a04:	78c0      	ldrb	r0, [r0, #3]
c0de6a06:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6a0a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6a0e:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6a12:	4770      	bx	lr

c0de6a14 <read_u64_le>:
c0de6a14:	b5b0      	push	{r4, r5, r7, lr}
c0de6a16:	5c42      	ldrb	r2, [r0, r1]
c0de6a18:	4401      	add	r1, r0
c0de6a1a:	7848      	ldrb	r0, [r1, #1]
c0de6a1c:	788b      	ldrb	r3, [r1, #2]
c0de6a1e:	790d      	ldrb	r5, [r1, #4]
c0de6a20:	78cc      	ldrb	r4, [r1, #3]
c0de6a22:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6a26:	794a      	ldrb	r2, [r1, #5]
c0de6a28:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6a2c:	798b      	ldrb	r3, [r1, #6]
c0de6a2e:	79c9      	ldrb	r1, [r1, #7]
c0de6a30:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6a34:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6a38:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6a3c:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6a40:	bdb0      	pop	{r4, r5, r7, pc}

c0de6a42 <send_swap_error_simple>:
c0de6a42:	b082      	sub	sp, #8
c0de6a44:	2300      	movs	r3, #0
c0de6a46:	9300      	str	r3, [sp, #0]
c0de6a48:	2300      	movs	r3, #0
c0de6a4a:	f000 f801 	bl	c0de6a50 <send_swap_error_with_buffers>
	...

c0de6a50 <send_swap_error_with_buffers>:
c0de6a50:	b09c      	sub	sp, #112	@ 0x70
c0de6a52:	4604      	mov	r4, r0
c0de6a54:	4815      	ldr	r0, [pc, #84]	@ (c0de6aac <send_swap_error_with_buffers+0x5c>)
c0de6a56:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6a5a:	b320      	cbz	r0, c0de6aa6 <send_swap_error_with_buffers+0x56>
c0de6a5c:	4814      	ldr	r0, [pc, #80]	@ (c0de6ab0 <send_swap_error_with_buffers+0x60>)
c0de6a5e:	461d      	mov	r5, r3
c0de6a60:	2301      	movs	r3, #1
c0de6a62:	466e      	mov	r6, sp
c0de6a64:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6a66:	f809 3000 	strb.w	r3, [r9, r0]
c0de6a6a:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6a6e:	f106 0008 	add.w	r0, r6, #8
c0de6a72:	2164      	movs	r1, #100	@ 0x64
c0de6a74:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6a78:	f000 fe46 	bl	c0de7708 <__aeabi_memclr>
c0de6a7c:	2002      	movs	r0, #2
c0de6a7e:	4629      	mov	r1, r5
c0de6a80:	9001      	str	r0, [sp, #4]
c0de6a82:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6a86:	2f08      	cmp	r7, #8
c0de6a88:	9000      	str	r0, [sp, #0]
c0de6a8a:	bf28      	it	cs
c0de6a8c:	2708      	movcs	r7, #8
c0de6a8e:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6a92:	0082      	lsls	r2, r0, #2
c0de6a94:	f106 000c 	add.w	r0, r6, #12
c0de6a98:	f000 fe2c 	bl	c0de76f4 <__aeabi_memcpy>
c0de6a9c:	1c79      	adds	r1, r7, #1
c0de6a9e:	4630      	mov	r0, r6
c0de6aa0:	4622      	mov	r2, r4
c0de6aa2:	f7ff fe7b 	bl	c0de679c <io_send_response_buffers>
c0de6aa6:	2000      	movs	r0, #0
c0de6aa8:	f000 fce8 	bl	c0de747c <os_sched_exit>
c0de6aac:	000008d8 	.word	0x000008d8
c0de6ab0:	000008d9 	.word	0x000008d9

c0de6ab4 <swap_str_to_u64>:
c0de6ab4:	2908      	cmp	r1, #8
c0de6ab6:	d812      	bhi.n	c0de6ade <swap_str_to_u64+0x2a>
c0de6ab8:	b570      	push	{r4, r5, r6, lr}
c0de6aba:	2500      	movs	r5, #0
c0de6abc:	460b      	mov	r3, r1
c0de6abe:	2400      	movs	r4, #0
c0de6ac0:	b14b      	cbz	r3, c0de6ad6 <swap_str_to_u64+0x22>
c0de6ac2:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6ac6:	0224      	lsls	r4, r4, #8
c0de6ac8:	3b01      	subs	r3, #1
c0de6aca:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6ace:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6ad2:	4635      	mov	r5, r6
c0de6ad4:	e7f4      	b.n	c0de6ac0 <swap_str_to_u64+0xc>
c0de6ad6:	e9c2 5400 	strd	r5, r4, [r2]
c0de6ada:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6ade:	2000      	movs	r0, #0
c0de6ae0:	2909      	cmp	r1, #9
c0de6ae2:	bf38      	it	cc
c0de6ae4:	2001      	movcc	r0, #1
c0de6ae6:	4770      	bx	lr

c0de6ae8 <varint_read>:
c0de6ae8:	b510      	push	{r4, lr}
c0de6aea:	b1d9      	cbz	r1, c0de6b24 <varint_read+0x3c>
c0de6aec:	4614      	mov	r4, r2
c0de6aee:	4602      	mov	r2, r0
c0de6af0:	7800      	ldrb	r0, [r0, #0]
c0de6af2:	28ff      	cmp	r0, #255	@ 0xff
c0de6af4:	d00c      	beq.n	c0de6b10 <varint_read+0x28>
c0de6af6:	28fe      	cmp	r0, #254	@ 0xfe
c0de6af8:	d012      	beq.n	c0de6b20 <varint_read+0x38>
c0de6afa:	28fd      	cmp	r0, #253	@ 0xfd
c0de6afc:	d115      	bne.n	c0de6b2a <varint_read+0x42>
c0de6afe:	2903      	cmp	r1, #3
c0de6b00:	d310      	bcc.n	c0de6b24 <varint_read+0x3c>
c0de6b02:	4610      	mov	r0, r2
c0de6b04:	2101      	movs	r1, #1
c0de6b06:	f7ff ff72 	bl	c0de69ee <read_u16_le>
c0de6b0a:	2100      	movs	r1, #0
c0de6b0c:	2203      	movs	r2, #3
c0de6b0e:	e015      	b.n	c0de6b3c <varint_read+0x54>
c0de6b10:	2909      	cmp	r1, #9
c0de6b12:	d307      	bcc.n	c0de6b24 <varint_read+0x3c>
c0de6b14:	4610      	mov	r0, r2
c0de6b16:	2101      	movs	r1, #1
c0de6b18:	f7ff ff7c 	bl	c0de6a14 <read_u64_le>
c0de6b1c:	2209      	movs	r2, #9
c0de6b1e:	e00d      	b.n	c0de6b3c <varint_read+0x54>
c0de6b20:	2905      	cmp	r1, #5
c0de6b22:	d205      	bcs.n	c0de6b30 <varint_read+0x48>
c0de6b24:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6b28:	e00a      	b.n	c0de6b40 <varint_read+0x58>
c0de6b2a:	2100      	movs	r1, #0
c0de6b2c:	2201      	movs	r2, #1
c0de6b2e:	e005      	b.n	c0de6b3c <varint_read+0x54>
c0de6b30:	4610      	mov	r0, r2
c0de6b32:	2101      	movs	r1, #1
c0de6b34:	f7ff ff62 	bl	c0de69fc <read_u32_le>
c0de6b38:	2100      	movs	r1, #0
c0de6b3a:	2205      	movs	r2, #5
c0de6b3c:	e9c4 0100 	strd	r0, r1, [r4]
c0de6b40:	4610      	mov	r0, r2
c0de6b42:	bd10      	pop	{r4, pc}

c0de6b44 <write_u16_be>:
c0de6b44:	0a13      	lsrs	r3, r2, #8
c0de6b46:	5443      	strb	r3, [r0, r1]
c0de6b48:	4408      	add	r0, r1
c0de6b4a:	7042      	strb	r2, [r0, #1]
c0de6b4c:	4770      	bx	lr
	...

c0de6b50 <ux_process_button_event>:
c0de6b50:	b5b0      	push	{r4, r5, r7, lr}
c0de6b52:	4604      	mov	r4, r0
c0de6b54:	2001      	movs	r0, #1
c0de6b56:	f000 f815 	bl	c0de6b84 <ux_forward_event>
c0de6b5a:	4605      	mov	r5, r0
c0de6b5c:	f000 f8c7 	bl	c0de6cee <nbgl_objAllowDrawing>
c0de6b60:	b165      	cbz	r5, c0de6b7c <ux_process_button_event+0x2c>
c0de6b62:	4807      	ldr	r0, [pc, #28]	@ (c0de6b80 <ux_process_button_event+0x30>)
c0de6b64:	2164      	movs	r1, #100	@ 0x64
c0de6b66:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6b6a:	4341      	muls	r1, r0
c0de6b6c:	78e0      	ldrb	r0, [r4, #3]
c0de6b6e:	0840      	lsrs	r0, r0, #1
c0de6b70:	f000 f908 	bl	c0de6d84 <nbgl_buttonsHandler>
c0de6b74:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6b78:	f000 b8af 	b.w	c0de6cda <nbgl_refresh>
c0de6b7c:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b7e:	bf00      	nop
c0de6b80:	000008e0 	.word	0x000008e0

c0de6b84 <ux_forward_event>:
c0de6b84:	b5b0      	push	{r4, r5, r7, lr}
c0de6b86:	4604      	mov	r4, r0
c0de6b88:	4812      	ldr	r0, [pc, #72]	@ (c0de6bd4 <ux_forward_event+0x50>)
c0de6b8a:	2101      	movs	r1, #1
c0de6b8c:	f809 1000 	strb.w	r1, [r9, r0]
c0de6b90:	eb09 0500 	add.w	r5, r9, r0
c0de6b94:	2000      	movs	r0, #0
c0de6b96:	6068      	str	r0, [r5, #4]
c0de6b98:	4628      	mov	r0, r5
c0de6b9a:	f000 fc49 	bl	c0de7430 <os_ux>
c0de6b9e:	2004      	movs	r0, #4
c0de6ba0:	f000 fcb4 	bl	c0de750c <os_sched_last_status>
c0de6ba4:	2869      	cmp	r0, #105	@ 0x69
c0de6ba6:	6068      	str	r0, [r5, #4]
c0de6ba8:	d108      	bne.n	c0de6bbc <ux_forward_event+0x38>
c0de6baa:	2001      	movs	r0, #1
c0de6bac:	f000 f89f 	bl	c0de6cee <nbgl_objAllowDrawing>
c0de6bb0:	f000 f8ac 	bl	c0de6d0c <nbgl_screenRedraw>
c0de6bb4:	f000 f891 	bl	c0de6cda <nbgl_refresh>
c0de6bb8:	2000      	movs	r0, #0
c0de6bba:	bdb0      	pop	{r4, r5, r7, pc}
c0de6bbc:	b144      	cbz	r4, c0de6bd0 <ux_forward_event+0x4c>
c0de6bbe:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6bc2:	bf18      	it	ne
c0de6bc4:	2101      	movne	r1, #1
c0de6bc6:	2800      	cmp	r0, #0
c0de6bc8:	bf18      	it	ne
c0de6bca:	2001      	movne	r0, #1
c0de6bcc:	4008      	ands	r0, r1
c0de6bce:	bdb0      	pop	{r4, r5, r7, pc}
c0de6bd0:	2001      	movs	r0, #1
c0de6bd2:	bdb0      	pop	{r4, r5, r7, pc}
c0de6bd4:	000008cc 	.word	0x000008cc

c0de6bd8 <ux_process_ticker_event>:
c0de6bd8:	b510      	push	{r4, lr}
c0de6bda:	480a      	ldr	r0, [pc, #40]	@ (c0de6c04 <ux_process_ticker_event+0x2c>)
c0de6bdc:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6be0:	3101      	adds	r1, #1
c0de6be2:	f849 1000 	str.w	r1, [r9, r0]
c0de6be6:	2001      	movs	r0, #1
c0de6be8:	f7ff ffcc 	bl	c0de6b84 <ux_forward_event>
c0de6bec:	4604      	mov	r4, r0
c0de6bee:	f000 f87e 	bl	c0de6cee <nbgl_objAllowDrawing>
c0de6bf2:	b134      	cbz	r4, c0de6c02 <ux_process_ticker_event+0x2a>
c0de6bf4:	2064      	movs	r0, #100	@ 0x64
c0de6bf6:	f000 f893 	bl	c0de6d20 <nbgl_screenHandler>
c0de6bfa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6bfe:	f000 b86c 	b.w	c0de6cda <nbgl_refresh>
c0de6c02:	bd10      	pop	{r4, pc}
c0de6c04:	000008e0 	.word	0x000008e0

c0de6c08 <ux_process_default_event>:
c0de6c08:	2000      	movs	r0, #0
c0de6c0a:	f7ff bfbb 	b.w	c0de6b84 <ux_forward_event>

c0de6c0e <hash_iovec_ex>:
c0de6c0e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6c12:	468a      	mov	sl, r1
c0de6c14:	4611      	mov	r1, r2
c0de6c16:	461a      	mov	r2, r3
c0de6c18:	4605      	mov	r5, r0
c0de6c1a:	f000 f848 	bl	c0de6cae <cx_hash_init_ex>
c0de6c1e:	4607      	mov	r7, r0
c0de6c20:	b9a8      	cbnz	r0, c0de6c4e <hash_iovec_ex+0x40>
c0de6c22:	f10d 0820 	add.w	r8, sp, #32
c0de6c26:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6c2a:	1d04      	adds	r4, r0, #4
c0de6c2c:	b156      	cbz	r6, c0de6c44 <hash_iovec_ex+0x36>
c0de6c2e:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6c32:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6c36:	4628      	mov	r0, r5
c0de6c38:	f000 f83e 	bl	c0de6cb8 <cx_hash_update>
c0de6c3c:	3e01      	subs	r6, #1
c0de6c3e:	2800      	cmp	r0, #0
c0de6c40:	d0f4      	beq.n	c0de6c2c <hash_iovec_ex+0x1e>
c0de6c42:	e003      	b.n	c0de6c4c <hash_iovec_ex+0x3e>
c0de6c44:	4628      	mov	r0, r5
c0de6c46:	4641      	mov	r1, r8
c0de6c48:	f000 f82c 	bl	c0de6ca4 <cx_hash_final>
c0de6c4c:	4607      	mov	r7, r0
c0de6c4e:	4628      	mov	r0, r5
c0de6c50:	4651      	mov	r1, sl
c0de6c52:	f000 fd67 	bl	c0de7724 <explicit_bzero>
c0de6c56:	4638      	mov	r0, r7
c0de6c58:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6c5c <cx_keccak_256_hash_iovec>:
c0de6c5c:	b580      	push	{r7, lr}
c0de6c5e:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6c60:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6c64:	a804      	add	r0, sp, #16
c0de6c66:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6c6a:	2206      	movs	r2, #6
c0de6c6c:	2320      	movs	r3, #32
c0de6c6e:	f7ff ffce 	bl	c0de6c0e <hash_iovec_ex>
c0de6c72:	b06e      	add	sp, #440	@ 0x1b8
c0de6c74:	bd80      	pop	{r7, pc}

c0de6c76 <cx_blake2b_512_hash_iovec>:
c0de6c76:	b580      	push	{r7, lr}
c0de6c78:	b0c4      	sub	sp, #272	@ 0x110
c0de6c7a:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6c7e:	a804      	add	r0, sp, #16
c0de6c80:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6c84:	2209      	movs	r2, #9
c0de6c86:	2340      	movs	r3, #64	@ 0x40
c0de6c88:	f7ff ffc1 	bl	c0de6c0e <hash_iovec_ex>
c0de6c8c:	b044      	add	sp, #272	@ 0x110
c0de6c8e:	bd80      	pop	{r7, pc}

c0de6c90 <cx_ecfp_generate_pair2_no_throw>:
c0de6c90:	b403      	push	{r0, r1}
c0de6c92:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6c96:	f000 b819 	b.w	c0de6ccc <cx_trampoline_helper>

c0de6c9a <cx_ecfp_init_private_key_no_throw>:
c0de6c9a:	b403      	push	{r0, r1}
c0de6c9c:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6ca0:	f000 b814 	b.w	c0de6ccc <cx_trampoline_helper>

c0de6ca4 <cx_hash_final>:
c0de6ca4:	b403      	push	{r0, r1}
c0de6ca6:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6caa:	f000 b80f 	b.w	c0de6ccc <cx_trampoline_helper>

c0de6cae <cx_hash_init_ex>:
c0de6cae:	b403      	push	{r0, r1}
c0de6cb0:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6cb4:	f000 b80a 	b.w	c0de6ccc <cx_trampoline_helper>

c0de6cb8 <cx_hash_update>:
c0de6cb8:	b403      	push	{r0, r1}
c0de6cba:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6cbe:	f000 b805 	b.w	c0de6ccc <cx_trampoline_helper>
	...

c0de6cc4 <cx_aes_siv_reset>:
c0de6cc4:	b403      	push	{r0, r1}
c0de6cc6:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6cca:	e7ff      	b.n	c0de6ccc <cx_trampoline_helper>

c0de6ccc <cx_trampoline_helper>:
c0de6ccc:	4900      	ldr	r1, [pc, #0]	@ (c0de6cd0 <cx_trampoline_helper+0x4>)
c0de6cce:	4708      	bx	r1
c0de6cd0:	00808001 	.word	0x00808001

c0de6cd4 <assert_exit>:
c0de6cd4:	20ff      	movs	r0, #255	@ 0xff
c0de6cd6:	f000 fbd1 	bl	c0de747c <os_sched_exit>

c0de6cda <nbgl_refresh>:
c0de6cda:	b403      	push	{r0, r1}
c0de6cdc:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6ce0:	f000 b85a 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6ce4 <nbgl_objInit>:
c0de6ce4:	b403      	push	{r0, r1}
c0de6ce6:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6cea:	f000 b855 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6cee <nbgl_objAllowDrawing>:
c0de6cee:	b403      	push	{r0, r1}
c0de6cf0:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6cf4:	f000 b850 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6cf8 <nbgl_screenSet>:
c0de6cf8:	b403      	push	{r0, r1}
c0de6cfa:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6cfe:	f000 b84b 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d02 <nbgl_screenPush>:
c0de6d02:	b403      	push	{r0, r1}
c0de6d04:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6d08:	f000 b846 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d0c <nbgl_screenRedraw>:
c0de6d0c:	b403      	push	{r0, r1}
c0de6d0e:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6d12:	f000 b841 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d16 <nbgl_screenPop>:
c0de6d16:	b403      	push	{r0, r1}
c0de6d18:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6d1c:	f000 b83c 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d20 <nbgl_screenHandler>:
c0de6d20:	b403      	push	{r0, r1}
c0de6d22:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6d26:	f000 b837 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d2a <nbgl_objPoolGet>:
c0de6d2a:	b403      	push	{r0, r1}
c0de6d2c:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6d30:	f000 b832 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d34 <nbgl_containerPoolGet>:
c0de6d34:	b403      	push	{r0, r1}
c0de6d36:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6d3a:	f000 b82d 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d3e <nbgl_getFont>:
c0de6d3e:	b403      	push	{r0, r1}
c0de6d40:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6d44:	f000 b828 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d48 <nbgl_getFontLineHeight>:
c0de6d48:	b403      	push	{r0, r1}
c0de6d4a:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6d4e:	f000 b823 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d52 <nbgl_getTextNbLinesInWidth>:
c0de6d52:	b403      	push	{r0, r1}
c0de6d54:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6d58:	f000 b81e 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d5c <nbgl_getTextNbPagesInWidth>:
c0de6d5c:	b403      	push	{r0, r1}
c0de6d5e:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6d62:	f000 b819 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d66 <nbgl_getTextWidth>:
c0de6d66:	b403      	push	{r0, r1}
c0de6d68:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6d6c:	f000 b814 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d70 <nbgl_getTextMaxLenInNbLines>:
c0de6d70:	b403      	push	{r0, r1}
c0de6d72:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6d76:	f000 b80f 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d7a <nbgl_textReduceOnNbLines>:
c0de6d7a:	b403      	push	{r0, r1}
c0de6d7c:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6d80:	f000 b80a 	b.w	c0de6d98 <nbgl_trampoline_helper>

c0de6d84 <nbgl_buttonsHandler>:
c0de6d84:	b403      	push	{r0, r1}
c0de6d86:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6d8a:	f000 b805 	b.w	c0de6d98 <nbgl_trampoline_helper>
	...

c0de6d90 <pic_init>:
c0de6d90:	b403      	push	{r0, r1}
c0de6d92:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6d96:	e7ff      	b.n	c0de6d98 <nbgl_trampoline_helper>

c0de6d98 <nbgl_trampoline_helper>:
c0de6d98:	4900      	ldr	r1, [pc, #0]	@ (c0de6d9c <nbgl_trampoline_helper+0x4>)
c0de6d9a:	4708      	bx	r1
c0de6d9c:	00808001 	.word	0x00808001

c0de6da0 <os_boot>:
c0de6da0:	2000      	movs	r0, #0
c0de6da2:	f000 bba9 	b.w	c0de74f8 <try_context_set>

c0de6da6 <os_longjmp>:
c0de6da6:	4604      	mov	r4, r0
c0de6da8:	f000 fb9e 	bl	c0de74e8 <try_context_get>
c0de6dac:	4621      	mov	r1, r4
c0de6dae:	f000 fcf5 	bl	c0de779c <longjmp>
	...

c0de6db4 <os_explicit_zero_BSS_segment>:
c0de6db4:	4803      	ldr	r0, [pc, #12]	@ (c0de6dc4 <os_explicit_zero_BSS_segment+0x10>)
c0de6db6:	4904      	ldr	r1, [pc, #16]	@ (c0de6dc8 <os_explicit_zero_BSS_segment+0x14>)
c0de6db8:	4448      	add	r0, r9
c0de6dba:	4449      	add	r1, r9
c0de6dbc:	1a09      	subs	r1, r1, r0
c0de6dbe:	f000 bcb1 	b.w	c0de7724 <explicit_bzero>
c0de6dc2:	bf00      	nop
c0de6dc4:	00000000 	.word	0x00000000
c0de6dc8:	000008e4 	.word	0x000008e4

c0de6dcc <snprintf>:
c0de6dcc:	b081      	sub	sp, #4
c0de6dce:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6dd2:	b087      	sub	sp, #28
c0de6dd4:	2800      	cmp	r0, #0
c0de6dd6:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6dd8:	f000 817a 	beq.w	c0de70d0 <snprintf+0x304>
c0de6ddc:	460d      	mov	r5, r1
c0de6dde:	2900      	cmp	r1, #0
c0de6de0:	f000 8176 	beq.w	c0de70d0 <snprintf+0x304>
c0de6de4:	4629      	mov	r1, r5
c0de6de6:	4616      	mov	r6, r2
c0de6de8:	4604      	mov	r4, r0
c0de6dea:	f000 fc8d 	bl	c0de7708 <__aeabi_memclr>
c0de6dee:	f1b5 0801 	subs.w	r8, r5, #1
c0de6df2:	f000 816d 	beq.w	c0de70d0 <snprintf+0x304>
c0de6df6:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6df8:	9002      	str	r0, [sp, #8]
c0de6dfa:	7830      	ldrb	r0, [r6, #0]
c0de6dfc:	2800      	cmp	r0, #0
c0de6dfe:	f000 8167 	beq.w	c0de70d0 <snprintf+0x304>
c0de6e02:	2700      	movs	r7, #0
c0de6e04:	b128      	cbz	r0, c0de6e12 <snprintf+0x46>
c0de6e06:	2825      	cmp	r0, #37	@ 0x25
c0de6e08:	d003      	beq.n	c0de6e12 <snprintf+0x46>
c0de6e0a:	19f0      	adds	r0, r6, r7
c0de6e0c:	3701      	adds	r7, #1
c0de6e0e:	7840      	ldrb	r0, [r0, #1]
c0de6e10:	e7f8      	b.n	c0de6e04 <snprintf+0x38>
c0de6e12:	4547      	cmp	r7, r8
c0de6e14:	bf28      	it	cs
c0de6e16:	4647      	movcs	r7, r8
c0de6e18:	4620      	mov	r0, r4
c0de6e1a:	4631      	mov	r1, r6
c0de6e1c:	463a      	mov	r2, r7
c0de6e1e:	f000 fc6b 	bl	c0de76f8 <__aeabi_memmove>
c0de6e22:	ebb8 0807 	subs.w	r8, r8, r7
c0de6e26:	f000 8153 	beq.w	c0de70d0 <snprintf+0x304>
c0de6e2a:	5df1      	ldrb	r1, [r6, r7]
c0de6e2c:	19f0      	adds	r0, r6, r7
c0de6e2e:	443c      	add	r4, r7
c0de6e30:	4606      	mov	r6, r0
c0de6e32:	2925      	cmp	r1, #37	@ 0x25
c0de6e34:	d1e1      	bne.n	c0de6dfa <snprintf+0x2e>
c0de6e36:	1c41      	adds	r1, r0, #1
c0de6e38:	f04f 0b00 	mov.w	fp, #0
c0de6e3c:	f04f 0e20 	mov.w	lr, #32
c0de6e40:	2500      	movs	r5, #0
c0de6e42:	2600      	movs	r6, #0
c0de6e44:	3101      	adds	r1, #1
c0de6e46:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6e4a:	4632      	mov	r2, r6
c0de6e4c:	3101      	adds	r1, #1
c0de6e4e:	2600      	movs	r6, #0
c0de6e50:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6e52:	d0f8      	beq.n	c0de6e46 <snprintf+0x7a>
c0de6e54:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6e58:	2e0a      	cmp	r6, #10
c0de6e5a:	d313      	bcc.n	c0de6e84 <snprintf+0xb8>
c0de6e5c:	2b25      	cmp	r3, #37	@ 0x25
c0de6e5e:	d046      	beq.n	c0de6eee <snprintf+0x122>
c0de6e60:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6e62:	d01f      	beq.n	c0de6ea4 <snprintf+0xd8>
c0de6e64:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6e66:	d129      	bne.n	c0de6ebc <snprintf+0xf0>
c0de6e68:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6e6c:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6e6e:	d13c      	bne.n	c0de6eea <snprintf+0x11e>
c0de6e70:	780a      	ldrb	r2, [r1, #0]
c0de6e72:	2a48      	cmp	r2, #72	@ 0x48
c0de6e74:	d003      	beq.n	c0de6e7e <snprintf+0xb2>
c0de6e76:	2a73      	cmp	r2, #115	@ 0x73
c0de6e78:	d001      	beq.n	c0de6e7e <snprintf+0xb2>
c0de6e7a:	2a68      	cmp	r2, #104	@ 0x68
c0de6e7c:	d135      	bne.n	c0de6eea <snprintf+0x11e>
c0de6e7e:	9a02      	ldr	r2, [sp, #8]
c0de6e80:	2601      	movs	r6, #1
c0de6e82:	e017      	b.n	c0de6eb4 <snprintf+0xe8>
c0de6e84:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6e88:	ea56 060b 	orrs.w	r6, r6, fp
c0de6e8c:	bf08      	it	eq
c0de6e8e:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6e92:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6e96:	3901      	subs	r1, #1
c0de6e98:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6e9c:	4616      	mov	r6, r2
c0de6e9e:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6ea2:	e7cf      	b.n	c0de6e44 <snprintf+0x78>
c0de6ea4:	460b      	mov	r3, r1
c0de6ea6:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6eaa:	2a73      	cmp	r2, #115	@ 0x73
c0de6eac:	d11d      	bne.n	c0de6eea <snprintf+0x11e>
c0de6eae:	9a02      	ldr	r2, [sp, #8]
c0de6eb0:	2602      	movs	r6, #2
c0de6eb2:	4619      	mov	r1, r3
c0de6eb4:	1d13      	adds	r3, r2, #4
c0de6eb6:	9302      	str	r3, [sp, #8]
c0de6eb8:	6815      	ldr	r5, [r2, #0]
c0de6eba:	e7c3      	b.n	c0de6e44 <snprintf+0x78>
c0de6ebc:	2b48      	cmp	r3, #72	@ 0x48
c0de6ebe:	d018      	beq.n	c0de6ef2 <snprintf+0x126>
c0de6ec0:	2b58      	cmp	r3, #88	@ 0x58
c0de6ec2:	d019      	beq.n	c0de6ef8 <snprintf+0x12c>
c0de6ec4:	2b63      	cmp	r3, #99	@ 0x63
c0de6ec6:	d020      	beq.n	c0de6f0a <snprintf+0x13e>
c0de6ec8:	2b64      	cmp	r3, #100	@ 0x64
c0de6eca:	d02a      	beq.n	c0de6f22 <snprintf+0x156>
c0de6ecc:	2b68      	cmp	r3, #104	@ 0x68
c0de6ece:	d036      	beq.n	c0de6f3e <snprintf+0x172>
c0de6ed0:	2b70      	cmp	r3, #112	@ 0x70
c0de6ed2:	d006      	beq.n	c0de6ee2 <snprintf+0x116>
c0de6ed4:	2b73      	cmp	r3, #115	@ 0x73
c0de6ed6:	d037      	beq.n	c0de6f48 <snprintf+0x17c>
c0de6ed8:	2b75      	cmp	r3, #117	@ 0x75
c0de6eda:	f000 8081 	beq.w	c0de6fe0 <snprintf+0x214>
c0de6ede:	2b78      	cmp	r3, #120	@ 0x78
c0de6ee0:	d103      	bne.n	c0de6eea <snprintf+0x11e>
c0de6ee2:	9400      	str	r4, [sp, #0]
c0de6ee4:	f04f 0c00 	mov.w	ip, #0
c0de6ee8:	e009      	b.n	c0de6efe <snprintf+0x132>
c0de6eea:	1e4e      	subs	r6, r1, #1
c0de6eec:	e785      	b.n	c0de6dfa <snprintf+0x2e>
c0de6eee:	2025      	movs	r0, #37	@ 0x25
c0de6ef0:	e00f      	b.n	c0de6f12 <snprintf+0x146>
c0de6ef2:	487b      	ldr	r0, [pc, #492]	@ (c0de70e0 <snprintf+0x314>)
c0de6ef4:	4478      	add	r0, pc
c0de6ef6:	e024      	b.n	c0de6f42 <snprintf+0x176>
c0de6ef8:	f04f 0c01 	mov.w	ip, #1
c0de6efc:	9400      	str	r4, [sp, #0]
c0de6efe:	9a02      	ldr	r2, [sp, #8]
c0de6f00:	2400      	movs	r4, #0
c0de6f02:	1d13      	adds	r3, r2, #4
c0de6f04:	9302      	str	r3, [sp, #8]
c0de6f06:	2310      	movs	r3, #16
c0de6f08:	e072      	b.n	c0de6ff0 <snprintf+0x224>
c0de6f0a:	9802      	ldr	r0, [sp, #8]
c0de6f0c:	1d02      	adds	r2, r0, #4
c0de6f0e:	9202      	str	r2, [sp, #8]
c0de6f10:	6800      	ldr	r0, [r0, #0]
c0de6f12:	1e4e      	subs	r6, r1, #1
c0de6f14:	f804 0b01 	strb.w	r0, [r4], #1
c0de6f18:	f1b8 0801 	subs.w	r8, r8, #1
c0de6f1c:	f47f af6d 	bne.w	c0de6dfa <snprintf+0x2e>
c0de6f20:	e0d6      	b.n	c0de70d0 <snprintf+0x304>
c0de6f22:	9a02      	ldr	r2, [sp, #8]
c0de6f24:	9400      	str	r4, [sp, #0]
c0de6f26:	1d13      	adds	r3, r2, #4
c0de6f28:	9302      	str	r3, [sp, #8]
c0de6f2a:	6813      	ldr	r3, [r2, #0]
c0de6f2c:	2b00      	cmp	r3, #0
c0de6f2e:	461a      	mov	r2, r3
c0de6f30:	d500      	bpl.n	c0de6f34 <snprintf+0x168>
c0de6f32:	425a      	negs	r2, r3
c0de6f34:	0fdc      	lsrs	r4, r3, #31
c0de6f36:	f04f 0c00 	mov.w	ip, #0
c0de6f3a:	230a      	movs	r3, #10
c0de6f3c:	e059      	b.n	c0de6ff2 <snprintf+0x226>
c0de6f3e:	4869      	ldr	r0, [pc, #420]	@ (c0de70e4 <snprintf+0x318>)
c0de6f40:	4478      	add	r0, pc
c0de6f42:	f04f 0c01 	mov.w	ip, #1
c0de6f46:	e003      	b.n	c0de6f50 <snprintf+0x184>
c0de6f48:	4864      	ldr	r0, [pc, #400]	@ (c0de70dc <snprintf+0x310>)
c0de6f4a:	f04f 0c00 	mov.w	ip, #0
c0de6f4e:	4478      	add	r0, pc
c0de6f50:	9b02      	ldr	r3, [sp, #8]
c0de6f52:	b2d2      	uxtb	r2, r2
c0de6f54:	1d1e      	adds	r6, r3, #4
c0de6f56:	9602      	str	r6, [sp, #8]
c0de6f58:	1e4e      	subs	r6, r1, #1
c0de6f5a:	6819      	ldr	r1, [r3, #0]
c0de6f5c:	2a02      	cmp	r2, #2
c0de6f5e:	f000 80a7 	beq.w	c0de70b0 <snprintf+0x2e4>
c0de6f62:	2a01      	cmp	r2, #1
c0de6f64:	d007      	beq.n	c0de6f76 <snprintf+0x1aa>
c0de6f66:	463d      	mov	r5, r7
c0de6f68:	b92a      	cbnz	r2, c0de6f76 <snprintf+0x1aa>
c0de6f6a:	2200      	movs	r2, #0
c0de6f6c:	5c8b      	ldrb	r3, [r1, r2]
c0de6f6e:	3201      	adds	r2, #1
c0de6f70:	2b00      	cmp	r3, #0
c0de6f72:	d1fb      	bne.n	c0de6f6c <snprintf+0x1a0>
c0de6f74:	1e55      	subs	r5, r2, #1
c0de6f76:	f1bc 0f00 	cmp.w	ip, #0
c0de6f7a:	d016      	beq.n	c0de6faa <snprintf+0x1de>
c0de6f7c:	2d00      	cmp	r5, #0
c0de6f7e:	f43f af3c 	beq.w	c0de6dfa <snprintf+0x2e>
c0de6f82:	f1b8 0f02 	cmp.w	r8, #2
c0de6f86:	f0c0 80a3 	bcc.w	c0de70d0 <snprintf+0x304>
c0de6f8a:	780a      	ldrb	r2, [r1, #0]
c0de6f8c:	0913      	lsrs	r3, r2, #4
c0de6f8e:	f002 020f 	and.w	r2, r2, #15
c0de6f92:	5cc3      	ldrb	r3, [r0, r3]
c0de6f94:	f1b8 0802 	subs.w	r8, r8, #2
c0de6f98:	7023      	strb	r3, [r4, #0]
c0de6f9a:	5c82      	ldrb	r2, [r0, r2]
c0de6f9c:	7062      	strb	r2, [r4, #1]
c0de6f9e:	f000 8097 	beq.w	c0de70d0 <snprintf+0x304>
c0de6fa2:	3101      	adds	r1, #1
c0de6fa4:	3d01      	subs	r5, #1
c0de6fa6:	3402      	adds	r4, #2
c0de6fa8:	e7e8      	b.n	c0de6f7c <snprintf+0x1b0>
c0de6faa:	4545      	cmp	r5, r8
c0de6fac:	bf28      	it	cs
c0de6fae:	4645      	movcs	r5, r8
c0de6fb0:	4620      	mov	r0, r4
c0de6fb2:	462a      	mov	r2, r5
c0de6fb4:	f000 fba0 	bl	c0de76f8 <__aeabi_memmove>
c0de6fb8:	ebb8 0805 	subs.w	r8, r8, r5
c0de6fbc:	f000 8088 	beq.w	c0de70d0 <snprintf+0x304>
c0de6fc0:	462f      	mov	r7, r5
c0de6fc2:	442c      	add	r4, r5
c0de6fc4:	45bb      	cmp	fp, r7
c0de6fc6:	f67f af18 	bls.w	c0de6dfa <snprintf+0x2e>
c0de6fca:	ebab 0507 	sub.w	r5, fp, r7
c0de6fce:	4620      	mov	r0, r4
c0de6fd0:	4545      	cmp	r5, r8
c0de6fd2:	bf28      	it	cs
c0de6fd4:	4645      	movcs	r5, r8
c0de6fd6:	4629      	mov	r1, r5
c0de6fd8:	2220      	movs	r2, #32
c0de6fda:	f000 fb8f 	bl	c0de76fc <__aeabi_memset>
c0de6fde:	e061      	b.n	c0de70a4 <snprintf+0x2d8>
c0de6fe0:	9a02      	ldr	r2, [sp, #8]
c0de6fe2:	9400      	str	r4, [sp, #0]
c0de6fe4:	2400      	movs	r4, #0
c0de6fe6:	f04f 0c00 	mov.w	ip, #0
c0de6fea:	1d13      	adds	r3, r2, #4
c0de6fec:	9302      	str	r3, [sp, #8]
c0de6fee:	230a      	movs	r3, #10
c0de6ff0:	6812      	ldr	r2, [r2, #0]
c0de6ff2:	483d      	ldr	r0, [pc, #244]	@ (c0de70e8 <snprintf+0x31c>)
c0de6ff4:	1e4e      	subs	r6, r1, #1
c0de6ff6:	f04f 0a01 	mov.w	sl, #1
c0de6ffa:	4478      	add	r0, pc
c0de6ffc:	9001      	str	r0, [sp, #4]
c0de6ffe:	fba3 570a 	umull	r5, r7, r3, sl
c0de7002:	2f00      	cmp	r7, #0
c0de7004:	bf18      	it	ne
c0de7006:	2701      	movne	r7, #1
c0de7008:	4295      	cmp	r5, r2
c0de700a:	d804      	bhi.n	c0de7016 <snprintf+0x24a>
c0de700c:	b91f      	cbnz	r7, c0de7016 <snprintf+0x24a>
c0de700e:	f1ab 0b01 	sub.w	fp, fp, #1
c0de7012:	46aa      	mov	sl, r5
c0de7014:	e7f3      	b.n	c0de6ffe <snprintf+0x232>
c0de7016:	2c00      	cmp	r4, #0
c0de7018:	4627      	mov	r7, r4
c0de701a:	f04f 0500 	mov.w	r5, #0
c0de701e:	bf18      	it	ne
c0de7020:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de7024:	d00d      	beq.n	c0de7042 <snprintf+0x276>
c0de7026:	4660      	mov	r0, ip
c0de7028:	fa5f fc8e 	uxtb.w	ip, lr
c0de702c:	a903      	add	r1, sp, #12
c0de702e:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de7032:	4684      	mov	ip, r0
c0de7034:	d106      	bne.n	c0de7044 <snprintf+0x278>
c0de7036:	202d      	movs	r0, #45	@ 0x2d
c0de7038:	2400      	movs	r4, #0
c0de703a:	2501      	movs	r5, #1
c0de703c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7040:	e000      	b.n	c0de7044 <snprintf+0x278>
c0de7042:	a903      	add	r1, sp, #12
c0de7044:	eb07 000b 	add.w	r0, r7, fp
c0de7048:	3802      	subs	r0, #2
c0de704a:	280d      	cmp	r0, #13
c0de704c:	d808      	bhi.n	c0de7060 <snprintf+0x294>
c0de704e:	f1c7 0701 	rsb	r7, r7, #1
c0de7052:	45bb      	cmp	fp, r7
c0de7054:	d004      	beq.n	c0de7060 <snprintf+0x294>
c0de7056:	f801 e005 	strb.w	lr, [r1, r5]
c0de705a:	3701      	adds	r7, #1
c0de705c:	3501      	adds	r5, #1
c0de705e:	e7f8      	b.n	c0de7052 <snprintf+0x286>
c0de7060:	9f01      	ldr	r7, [sp, #4]
c0de7062:	b114      	cbz	r4, c0de706a <snprintf+0x29e>
c0de7064:	202d      	movs	r0, #45	@ 0x2d
c0de7066:	5548      	strb	r0, [r1, r5]
c0de7068:	3501      	adds	r5, #1
c0de706a:	4820      	ldr	r0, [pc, #128]	@ (c0de70ec <snprintf+0x320>)
c0de706c:	f1bc 0f00 	cmp.w	ip, #0
c0de7070:	4478      	add	r0, pc
c0de7072:	bf08      	it	eq
c0de7074:	4638      	moveq	r0, r7
c0de7076:	f1ba 0f00 	cmp.w	sl, #0
c0de707a:	d00b      	beq.n	c0de7094 <snprintf+0x2c8>
c0de707c:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7080:	fbba faf3 	udiv	sl, sl, r3
c0de7084:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7088:	fb04 7413 	mls	r4, r4, r3, r7
c0de708c:	5d04      	ldrb	r4, [r0, r4]
c0de708e:	554c      	strb	r4, [r1, r5]
c0de7090:	3501      	adds	r5, #1
c0de7092:	e7f0      	b.n	c0de7076 <snprintf+0x2aa>
c0de7094:	4545      	cmp	r5, r8
c0de7096:	bf28      	it	cs
c0de7098:	4645      	movcs	r5, r8
c0de709a:	9c00      	ldr	r4, [sp, #0]
c0de709c:	462a      	mov	r2, r5
c0de709e:	4620      	mov	r0, r4
c0de70a0:	f000 fb2a 	bl	c0de76f8 <__aeabi_memmove>
c0de70a4:	ebb8 0805 	subs.w	r8, r8, r5
c0de70a8:	442c      	add	r4, r5
c0de70aa:	f47f aea6 	bne.w	c0de6dfa <snprintf+0x2e>
c0de70ae:	e00f      	b.n	c0de70d0 <snprintf+0x304>
c0de70b0:	7808      	ldrb	r0, [r1, #0]
c0de70b2:	2800      	cmp	r0, #0
c0de70b4:	f47f aea1 	bne.w	c0de6dfa <snprintf+0x2e>
c0de70b8:	4545      	cmp	r5, r8
c0de70ba:	bf28      	it	cs
c0de70bc:	4645      	movcs	r5, r8
c0de70be:	4620      	mov	r0, r4
c0de70c0:	4629      	mov	r1, r5
c0de70c2:	2220      	movs	r2, #32
c0de70c4:	f000 fb1a 	bl	c0de76fc <__aeabi_memset>
c0de70c8:	ebb8 0805 	subs.w	r8, r8, r5
c0de70cc:	f47f af79 	bne.w	c0de6fc2 <snprintf+0x1f6>
c0de70d0:	2000      	movs	r0, #0
c0de70d2:	b007      	add	sp, #28
c0de70d4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de70d8:	b001      	add	sp, #4
c0de70da:	4770      	bx	lr
c0de70dc:	00001c4a 	.word	0x00001c4a
c0de70e0:	00001cb4 	.word	0x00001cb4
c0de70e4:	00001c58 	.word	0x00001c58
c0de70e8:	00001b9e 	.word	0x00001b9e
c0de70ec:	00001b38 	.word	0x00001b38

c0de70f0 <pic>:
c0de70f0:	4a0a      	ldr	r2, [pc, #40]	@ (c0de711c <pic+0x2c>)
c0de70f2:	4282      	cmp	r2, r0
c0de70f4:	490a      	ldr	r1, [pc, #40]	@ (c0de7120 <pic+0x30>)
c0de70f6:	d806      	bhi.n	c0de7106 <pic+0x16>
c0de70f8:	4281      	cmp	r1, r0
c0de70fa:	d304      	bcc.n	c0de7106 <pic+0x16>
c0de70fc:	b580      	push	{r7, lr}
c0de70fe:	f000 f815 	bl	c0de712c <pic_internal>
c0de7102:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7106:	4907      	ldr	r1, [pc, #28]	@ (c0de7124 <pic+0x34>)
c0de7108:	4288      	cmp	r0, r1
c0de710a:	4a07      	ldr	r2, [pc, #28]	@ (c0de7128 <pic+0x38>)
c0de710c:	d304      	bcc.n	c0de7118 <pic+0x28>
c0de710e:	4290      	cmp	r0, r2
c0de7110:	d802      	bhi.n	c0de7118 <pic+0x28>
c0de7112:	1a40      	subs	r0, r0, r1
c0de7114:	4649      	mov	r1, r9
c0de7116:	4408      	add	r0, r1
c0de7118:	4770      	bx	lr
c0de711a:	0000      	movs	r0, r0
c0de711c:	c0de0000 	.word	0xc0de0000
c0de7120:	c0de8e3f 	.word	0xc0de8e3f
c0de7124:	da7a0000 	.word	0xda7a0000
c0de7128:	da7aa000 	.word	0xda7aa000

c0de712c <pic_internal>:
c0de712c:	467a      	mov	r2, pc
c0de712e:	4902      	ldr	r1, [pc, #8]	@ (c0de7138 <pic_internal+0xc>)
c0de7130:	1cc9      	adds	r1, r1, #3
c0de7132:	1a89      	subs	r1, r1, r2
c0de7134:	1a40      	subs	r0, r0, r1
c0de7136:	4770      	bx	lr
c0de7138:	c0de712d 	.word	0xc0de712d

c0de713c <SVC_Call>:
c0de713c:	df01      	svc	1
c0de713e:	2900      	cmp	r1, #0
c0de7140:	d100      	bne.n	c0de7144 <exception>
c0de7142:	4770      	bx	lr

c0de7144 <exception>:
c0de7144:	4608      	mov	r0, r1
c0de7146:	f7ff fe2e 	bl	c0de6da6 <os_longjmp>
	...

c0de714c <SVC_cx_call>:
c0de714c:	df01      	svc	1
c0de714e:	4770      	bx	lr

c0de7150 <nvm_write>:
c0de7150:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7152:	ab01      	add	r3, sp, #4
c0de7154:	c307      	stmia	r3!, {r0, r1, r2}
c0de7156:	4802      	ldr	r0, [pc, #8]	@ (c0de7160 <nvm_write+0x10>)
c0de7158:	a901      	add	r1, sp, #4
c0de715a:	f7ff ffef 	bl	c0de713c <SVC_Call>
c0de715e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7160:	03000003 	.word	0x03000003

c0de7164 <cx_bn_lock>:
c0de7164:	b5e0      	push	{r5, r6, r7, lr}
c0de7166:	e9cd 0100 	strd	r0, r1, [sp]
c0de716a:	4802      	ldr	r0, [pc, #8]	@ (c0de7174 <cx_bn_lock+0x10>)
c0de716c:	4669      	mov	r1, sp
c0de716e:	f7ff ffed 	bl	c0de714c <SVC_cx_call>
c0de7172:	bd8c      	pop	{r2, r3, r7, pc}
c0de7174:	02000112 	.word	0x02000112

c0de7178 <cx_bn_unlock>:
c0de7178:	b5e0      	push	{r5, r6, r7, lr}
c0de717a:	2000      	movs	r0, #0
c0de717c:	4669      	mov	r1, sp
c0de717e:	9001      	str	r0, [sp, #4]
c0de7180:	20b6      	movs	r0, #182	@ 0xb6
c0de7182:	f7ff ffe3 	bl	c0de714c <SVC_cx_call>
c0de7186:	bd8c      	pop	{r2, r3, r7, pc}

c0de7188 <cx_bn_alloc>:
c0de7188:	b5e0      	push	{r5, r6, r7, lr}
c0de718a:	e9cd 0100 	strd	r0, r1, [sp]
c0de718e:	4802      	ldr	r0, [pc, #8]	@ (c0de7198 <cx_bn_alloc+0x10>)
c0de7190:	4669      	mov	r1, sp
c0de7192:	f7ff ffdb 	bl	c0de714c <SVC_cx_call>
c0de7196:	bd8c      	pop	{r2, r3, r7, pc}
c0de7198:	02000113 	.word	0x02000113

c0de719c <cx_bn_alloc_init>:
c0de719c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de719e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de71a2:	4803      	ldr	r0, [pc, #12]	@ (c0de71b0 <cx_bn_alloc_init+0x14>)
c0de71a4:	4669      	mov	r1, sp
c0de71a6:	f7ff ffd1 	bl	c0de714c <SVC_cx_call>
c0de71aa:	b004      	add	sp, #16
c0de71ac:	bd80      	pop	{r7, pc}
c0de71ae:	bf00      	nop
c0de71b0:	04000114 	.word	0x04000114

c0de71b4 <cx_bn_destroy>:
c0de71b4:	b5e0      	push	{r5, r6, r7, lr}
c0de71b6:	f000 f9b5 	bl	c0de7524 <OUTLINED_FUNCTION_0>
c0de71ba:	4802      	ldr	r0, [pc, #8]	@ (c0de71c4 <cx_bn_destroy+0x10>)
c0de71bc:	4669      	mov	r1, sp
c0de71be:	f7ff ffc5 	bl	c0de714c <SVC_cx_call>
c0de71c2:	bd8c      	pop	{r2, r3, r7, pc}
c0de71c4:	010000bc 	.word	0x010000bc

c0de71c8 <cx_bn_nbytes>:
c0de71c8:	b5e0      	push	{r5, r6, r7, lr}
c0de71ca:	e9cd 0100 	strd	r0, r1, [sp]
c0de71ce:	4802      	ldr	r0, [pc, #8]	@ (c0de71d8 <cx_bn_nbytes+0x10>)
c0de71d0:	4669      	mov	r1, sp
c0de71d2:	f7ff ffbb 	bl	c0de714c <SVC_cx_call>
c0de71d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de71d8:	0200010d 	.word	0x0200010d

c0de71dc <cx_bn_init>:
c0de71dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71de:	ab01      	add	r3, sp, #4
c0de71e0:	c307      	stmia	r3!, {r0, r1, r2}
c0de71e2:	4803      	ldr	r0, [pc, #12]	@ (c0de71f0 <cx_bn_init+0x14>)
c0de71e4:	a901      	add	r1, sp, #4
c0de71e6:	f7ff ffb1 	bl	c0de714c <SVC_cx_call>
c0de71ea:	b004      	add	sp, #16
c0de71ec:	bd80      	pop	{r7, pc}
c0de71ee:	bf00      	nop
c0de71f0:	03000115 	.word	0x03000115

c0de71f4 <cx_bn_copy>:
c0de71f4:	b5e0      	push	{r5, r6, r7, lr}
c0de71f6:	e9cd 0100 	strd	r0, r1, [sp]
c0de71fa:	4802      	ldr	r0, [pc, #8]	@ (c0de7204 <cx_bn_copy+0x10>)
c0de71fc:	4669      	mov	r1, sp
c0de71fe:	f7ff ffa5 	bl	c0de714c <SVC_cx_call>
c0de7202:	bd8c      	pop	{r2, r3, r7, pc}
c0de7204:	020000c0 	.word	0x020000c0

c0de7208 <cx_bn_set_u32>:
c0de7208:	b5e0      	push	{r5, r6, r7, lr}
c0de720a:	e9cd 0100 	strd	r0, r1, [sp]
c0de720e:	4802      	ldr	r0, [pc, #8]	@ (c0de7218 <cx_bn_set_u32+0x10>)
c0de7210:	4669      	mov	r1, sp
c0de7212:	f7ff ff9b 	bl	c0de714c <SVC_cx_call>
c0de7216:	bd8c      	pop	{r2, r3, r7, pc}
c0de7218:	020000c1 	.word	0x020000c1

c0de721c <cx_bn_export>:
c0de721c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de721e:	ab01      	add	r3, sp, #4
c0de7220:	c307      	stmia	r3!, {r0, r1, r2}
c0de7222:	4803      	ldr	r0, [pc, #12]	@ (c0de7230 <cx_bn_export+0x14>)
c0de7224:	a901      	add	r1, sp, #4
c0de7226:	f7ff ff91 	bl	c0de714c <SVC_cx_call>
c0de722a:	b004      	add	sp, #16
c0de722c:	bd80      	pop	{r7, pc}
c0de722e:	bf00      	nop
c0de7230:	030000c3 	.word	0x030000c3

c0de7234 <cx_bn_cmp>:
c0de7234:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7236:	ab01      	add	r3, sp, #4
c0de7238:	c307      	stmia	r3!, {r0, r1, r2}
c0de723a:	4803      	ldr	r0, [pc, #12]	@ (c0de7248 <cx_bn_cmp+0x14>)
c0de723c:	a901      	add	r1, sp, #4
c0de723e:	f7ff ff85 	bl	c0de714c <SVC_cx_call>
c0de7242:	b004      	add	sp, #16
c0de7244:	bd80      	pop	{r7, pc}
c0de7246:	bf00      	nop
c0de7248:	030000c4 	.word	0x030000c4

c0de724c <cx_bn_cmp_u32>:
c0de724c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de724e:	ab01      	add	r3, sp, #4
c0de7250:	c307      	stmia	r3!, {r0, r1, r2}
c0de7252:	4803      	ldr	r0, [pc, #12]	@ (c0de7260 <cx_bn_cmp_u32+0x14>)
c0de7254:	a901      	add	r1, sp, #4
c0de7256:	f7ff ff79 	bl	c0de714c <SVC_cx_call>
c0de725a:	b004      	add	sp, #16
c0de725c:	bd80      	pop	{r7, pc}
c0de725e:	bf00      	nop
c0de7260:	030000c5 	.word	0x030000c5

c0de7264 <cx_bn_tst_bit>:
c0de7264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7266:	ab01      	add	r3, sp, #4
c0de7268:	c307      	stmia	r3!, {r0, r1, r2}
c0de726a:	4803      	ldr	r0, [pc, #12]	@ (c0de7278 <cx_bn_tst_bit+0x14>)
c0de726c:	a901      	add	r1, sp, #4
c0de726e:	f7ff ff6d 	bl	c0de714c <SVC_cx_call>
c0de7272:	b004      	add	sp, #16
c0de7274:	bd80      	pop	{r7, pc}
c0de7276:	bf00      	nop
c0de7278:	030000cb 	.word	0x030000cb

c0de727c <cx_bn_mod_add>:
c0de727c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de727e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7282:	4803      	ldr	r0, [pc, #12]	@ (c0de7290 <cx_bn_mod_add+0x14>)
c0de7284:	4669      	mov	r1, sp
c0de7286:	f7ff ff61 	bl	c0de714c <SVC_cx_call>
c0de728a:	b004      	add	sp, #16
c0de728c:	bd80      	pop	{r7, pc}
c0de728e:	bf00      	nop
c0de7290:	040000d3 	.word	0x040000d3

c0de7294 <cx_bn_mod_sub>:
c0de7294:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7296:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de729a:	4803      	ldr	r0, [pc, #12]	@ (c0de72a8 <cx_bn_mod_sub+0x14>)
c0de729c:	4669      	mov	r1, sp
c0de729e:	f7ff ff55 	bl	c0de714c <SVC_cx_call>
c0de72a2:	b004      	add	sp, #16
c0de72a4:	bd80      	pop	{r7, pc}
c0de72a6:	bf00      	nop
c0de72a8:	040000d4 	.word	0x040000d4

c0de72ac <cx_bn_mod_mul>:
c0de72ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72ae:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de72b2:	4803      	ldr	r0, [pc, #12]	@ (c0de72c0 <cx_bn_mod_mul+0x14>)
c0de72b4:	4669      	mov	r1, sp
c0de72b6:	f7ff ff49 	bl	c0de714c <SVC_cx_call>
c0de72ba:	b004      	add	sp, #16
c0de72bc:	bd80      	pop	{r7, pc}
c0de72be:	bf00      	nop
c0de72c0:	040000d5 	.word	0x040000d5

c0de72c4 <cx_bn_reduce>:
c0de72c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72c6:	ab01      	add	r3, sp, #4
c0de72c8:	c307      	stmia	r3!, {r0, r1, r2}
c0de72ca:	4803      	ldr	r0, [pc, #12]	@ (c0de72d8 <cx_bn_reduce+0x14>)
c0de72cc:	a901      	add	r1, sp, #4
c0de72ce:	f7ff ff3d 	bl	c0de714c <SVC_cx_call>
c0de72d2:	b004      	add	sp, #16
c0de72d4:	bd80      	pop	{r7, pc}
c0de72d6:	bf00      	nop
c0de72d8:	030000d6 	.word	0x030000d6

c0de72dc <cx_bn_mod_invert_nprime>:
c0de72dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72de:	ab01      	add	r3, sp, #4
c0de72e0:	c307      	stmia	r3!, {r0, r1, r2}
c0de72e2:	4803      	ldr	r0, [pc, #12]	@ (c0de72f0 <cx_bn_mod_invert_nprime+0x14>)
c0de72e4:	a901      	add	r1, sp, #4
c0de72e6:	f7ff ff31 	bl	c0de714c <SVC_cx_call>
c0de72ea:	b004      	add	sp, #16
c0de72ec:	bd80      	pop	{r7, pc}
c0de72ee:	bf00      	nop
c0de72f0:	030000da 	.word	0x030000da

c0de72f4 <cx_bn_is_prime>:
c0de72f4:	b5e0      	push	{r5, r6, r7, lr}
c0de72f6:	e9cd 0100 	strd	r0, r1, [sp]
c0de72fa:	4802      	ldr	r0, [pc, #8]	@ (c0de7304 <cx_bn_is_prime+0x10>)
c0de72fc:	4669      	mov	r1, sp
c0de72fe:	f7ff ff25 	bl	c0de714c <SVC_cx_call>
c0de7302:	bd8c      	pop	{r2, r3, r7, pc}
c0de7304:	020000ef 	.word	0x020000ef

c0de7308 <cx_mont_alloc>:
c0de7308:	b5e0      	push	{r5, r6, r7, lr}
c0de730a:	e9cd 0100 	strd	r0, r1, [sp]
c0de730e:	4802      	ldr	r0, [pc, #8]	@ (c0de7318 <cx_mont_alloc+0x10>)
c0de7310:	4669      	mov	r1, sp
c0de7312:	f7ff ff1b 	bl	c0de714c <SVC_cx_call>
c0de7316:	bd8c      	pop	{r2, r3, r7, pc}
c0de7318:	020000dc 	.word	0x020000dc

c0de731c <cx_mont_init>:
c0de731c:	b5e0      	push	{r5, r6, r7, lr}
c0de731e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7322:	4802      	ldr	r0, [pc, #8]	@ (c0de732c <cx_mont_init+0x10>)
c0de7324:	4669      	mov	r1, sp
c0de7326:	f7ff ff11 	bl	c0de714c <SVC_cx_call>
c0de732a:	bd8c      	pop	{r2, r3, r7, pc}
c0de732c:	020000dd 	.word	0x020000dd

c0de7330 <cx_mont_to_montgomery>:
c0de7330:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7332:	ab01      	add	r3, sp, #4
c0de7334:	c307      	stmia	r3!, {r0, r1, r2}
c0de7336:	4803      	ldr	r0, [pc, #12]	@ (c0de7344 <cx_mont_to_montgomery+0x14>)
c0de7338:	a901      	add	r1, sp, #4
c0de733a:	f7ff ff07 	bl	c0de714c <SVC_cx_call>
c0de733e:	b004      	add	sp, #16
c0de7340:	bd80      	pop	{r7, pc}
c0de7342:	bf00      	nop
c0de7344:	030000df 	.word	0x030000df

c0de7348 <cx_mont_from_montgomery>:
c0de7348:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de734a:	ab01      	add	r3, sp, #4
c0de734c:	c307      	stmia	r3!, {r0, r1, r2}
c0de734e:	4803      	ldr	r0, [pc, #12]	@ (c0de735c <cx_mont_from_montgomery+0x14>)
c0de7350:	a901      	add	r1, sp, #4
c0de7352:	f7ff fefb 	bl	c0de714c <SVC_cx_call>
c0de7356:	b004      	add	sp, #16
c0de7358:	bd80      	pop	{r7, pc}
c0de735a:	bf00      	nop
c0de735c:	030000e0 	.word	0x030000e0

c0de7360 <cx_mont_mul>:
c0de7360:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7362:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7366:	4803      	ldr	r0, [pc, #12]	@ (c0de7374 <cx_mont_mul+0x14>)
c0de7368:	4669      	mov	r1, sp
c0de736a:	f7ff feef 	bl	c0de714c <SVC_cx_call>
c0de736e:	b004      	add	sp, #16
c0de7370:	bd80      	pop	{r7, pc}
c0de7372:	bf00      	nop
c0de7374:	040000e1 	.word	0x040000e1

c0de7378 <cx_mont_pow>:
c0de7378:	b510      	push	{r4, lr}
c0de737a:	b086      	sub	sp, #24
c0de737c:	f10d 0c04 	add.w	ip, sp, #4
c0de7380:	9c08      	ldr	r4, [sp, #32]
c0de7382:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7386:	4803      	ldr	r0, [pc, #12]	@ (c0de7394 <cx_mont_pow+0x1c>)
c0de7388:	a901      	add	r1, sp, #4
c0de738a:	f7ff fedf 	bl	c0de714c <SVC_cx_call>
c0de738e:	b006      	add	sp, #24
c0de7390:	bd10      	pop	{r4, pc}
c0de7392:	bf00      	nop
c0de7394:	050000e2 	.word	0x050000e2

c0de7398 <cx_mont_invert_nprime>:
c0de7398:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de739a:	ab01      	add	r3, sp, #4
c0de739c:	c307      	stmia	r3!, {r0, r1, r2}
c0de739e:	4803      	ldr	r0, [pc, #12]	@ (c0de73ac <cx_mont_invert_nprime+0x14>)
c0de73a0:	a901      	add	r1, sp, #4
c0de73a2:	f7ff fed3 	bl	c0de714c <SVC_cx_call>
c0de73a6:	b004      	add	sp, #16
c0de73a8:	bd80      	pop	{r7, pc}
c0de73aa:	bf00      	nop
c0de73ac:	030000e4 	.word	0x030000e4

c0de73b0 <cx_ecdomain_parameters_length>:
c0de73b0:	b5e0      	push	{r5, r6, r7, lr}
c0de73b2:	e9cd 0100 	strd	r0, r1, [sp]
c0de73b6:	4802      	ldr	r0, [pc, #8]	@ (c0de73c0 <cx_ecdomain_parameters_length+0x10>)
c0de73b8:	4669      	mov	r1, sp
c0de73ba:	f7ff fec7 	bl	c0de714c <SVC_cx_call>
c0de73be:	bd8c      	pop	{r2, r3, r7, pc}
c0de73c0:	0200012f 	.word	0x0200012f

c0de73c4 <os_perso_derive_node_with_seed_key>:
c0de73c4:	b510      	push	{r4, lr}
c0de73c6:	b088      	sub	sp, #32
c0de73c8:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de73ca:	9407      	str	r4, [sp, #28]
c0de73cc:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de73ce:	9406      	str	r4, [sp, #24]
c0de73d0:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de73d2:	9405      	str	r4, [sp, #20]
c0de73d4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de73d6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de73da:	4803      	ldr	r0, [pc, #12]	@ (c0de73e8 <os_perso_derive_node_with_seed_key+0x24>)
c0de73dc:	4669      	mov	r1, sp
c0de73de:	f7ff fead 	bl	c0de713c <SVC_Call>
c0de73e2:	b008      	add	sp, #32
c0de73e4:	bd10      	pop	{r4, pc}
c0de73e6:	bf00      	nop
c0de73e8:	080000a6 	.word	0x080000a6

c0de73ec <os_pki_load_certificate>:
c0de73ec:	b510      	push	{r4, lr}
c0de73ee:	b086      	sub	sp, #24
c0de73f0:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de73f2:	9405      	str	r4, [sp, #20]
c0de73f4:	9c08      	ldr	r4, [sp, #32]
c0de73f6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de73fa:	4803      	ldr	r0, [pc, #12]	@ (c0de7408 <os_pki_load_certificate+0x1c>)
c0de73fc:	4669      	mov	r1, sp
c0de73fe:	f7ff fe9d 	bl	c0de713c <SVC_Call>
c0de7402:	b006      	add	sp, #24
c0de7404:	bd10      	pop	{r4, pc}
c0de7406:	bf00      	nop
c0de7408:	060000aa 	.word	0x060000aa

c0de740c <os_perso_is_pin_set>:
c0de740c:	b5e0      	push	{r5, r6, r7, lr}
c0de740e:	2000      	movs	r0, #0
c0de7410:	4669      	mov	r1, sp
c0de7412:	9001      	str	r0, [sp, #4]
c0de7414:	209e      	movs	r0, #158	@ 0x9e
c0de7416:	f7ff fe91 	bl	c0de713c <SVC_Call>
c0de741a:	b2c0      	uxtb	r0, r0
c0de741c:	bd8c      	pop	{r2, r3, r7, pc}

c0de741e <os_global_pin_is_validated>:
c0de741e:	b5e0      	push	{r5, r6, r7, lr}
c0de7420:	2000      	movs	r0, #0
c0de7422:	4669      	mov	r1, sp
c0de7424:	9001      	str	r0, [sp, #4]
c0de7426:	20a0      	movs	r0, #160	@ 0xa0
c0de7428:	f7ff fe88 	bl	c0de713c <SVC_Call>
c0de742c:	b2c0      	uxtb	r0, r0
c0de742e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7430 <os_ux>:
c0de7430:	b5e0      	push	{r5, r6, r7, lr}
c0de7432:	f000 f877 	bl	c0de7524 <OUTLINED_FUNCTION_0>
c0de7436:	4802      	ldr	r0, [pc, #8]	@ (c0de7440 <os_ux+0x10>)
c0de7438:	4669      	mov	r1, sp
c0de743a:	f7ff fe7f 	bl	c0de713c <SVC_Call>
c0de743e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7440:	01000064 	.word	0x01000064

c0de7444 <os_lib_end>:
c0de7444:	b082      	sub	sp, #8
c0de7446:	2000      	movs	r0, #0
c0de7448:	4669      	mov	r1, sp
c0de744a:	9001      	str	r0, [sp, #4]
c0de744c:	2068      	movs	r0, #104	@ 0x68
c0de744e:	f7ff fe75 	bl	c0de713c <SVC_Call>
c0de7452:	deff      	udf	#255	@ 0xff

c0de7454 <os_flags>:
c0de7454:	b5e0      	push	{r5, r6, r7, lr}
c0de7456:	2000      	movs	r0, #0
c0de7458:	4669      	mov	r1, sp
c0de745a:	9001      	str	r0, [sp, #4]
c0de745c:	206a      	movs	r0, #106	@ 0x6a
c0de745e:	f7ff fe6d 	bl	c0de713c <SVC_Call>
c0de7462:	bd8c      	pop	{r2, r3, r7, pc}

c0de7464 <os_registry_get_current_app_tag>:
c0de7464:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7466:	ab01      	add	r3, sp, #4
c0de7468:	c307      	stmia	r3!, {r0, r1, r2}
c0de746a:	4803      	ldr	r0, [pc, #12]	@ (c0de7478 <os_registry_get_current_app_tag+0x14>)
c0de746c:	a901      	add	r1, sp, #4
c0de746e:	f7ff fe65 	bl	c0de713c <SVC_Call>
c0de7472:	b004      	add	sp, #16
c0de7474:	bd80      	pop	{r7, pc}
c0de7476:	bf00      	nop
c0de7478:	03000074 	.word	0x03000074

c0de747c <os_sched_exit>:
c0de747c:	b082      	sub	sp, #8
c0de747e:	f000 f851 	bl	c0de7524 <OUTLINED_FUNCTION_0>
c0de7482:	4802      	ldr	r0, [pc, #8]	@ (c0de748c <os_sched_exit+0x10>)
c0de7484:	4669      	mov	r1, sp
c0de7486:	f7ff fe59 	bl	c0de713c <SVC_Call>
c0de748a:	deff      	udf	#255	@ 0xff
c0de748c:	0100009a 	.word	0x0100009a

c0de7490 <os_io_init>:
c0de7490:	b5e0      	push	{r5, r6, r7, lr}
c0de7492:	9001      	str	r0, [sp, #4]
c0de7494:	4802      	ldr	r0, [pc, #8]	@ (c0de74a0 <os_io_init+0x10>)
c0de7496:	a901      	add	r1, sp, #4
c0de7498:	f7ff fe50 	bl	c0de713c <SVC_Call>
c0de749c:	bd8c      	pop	{r2, r3, r7, pc}
c0de749e:	bf00      	nop
c0de74a0:	01000084 	.word	0x01000084

c0de74a4 <os_io_start>:
c0de74a4:	b5e0      	push	{r5, r6, r7, lr}
c0de74a6:	2000      	movs	r0, #0
c0de74a8:	4669      	mov	r1, sp
c0de74aa:	9001      	str	r0, [sp, #4]
c0de74ac:	4801      	ldr	r0, [pc, #4]	@ (c0de74b4 <os_io_start+0x10>)
c0de74ae:	f7ff fe45 	bl	c0de713c <SVC_Call>
c0de74b2:	bd8c      	pop	{r2, r3, r7, pc}
c0de74b4:	01000085 	.word	0x01000085

c0de74b8 <os_io_tx_cmd>:
c0de74b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74ba:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de74be:	4803      	ldr	r0, [pc, #12]	@ (c0de74cc <os_io_tx_cmd+0x14>)
c0de74c0:	4669      	mov	r1, sp
c0de74c2:	f7ff fe3b 	bl	c0de713c <SVC_Call>
c0de74c6:	b004      	add	sp, #16
c0de74c8:	bd80      	pop	{r7, pc}
c0de74ca:	bf00      	nop
c0de74cc:	04000088 	.word	0x04000088

c0de74d0 <os_io_rx_evt>:
c0de74d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74d2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de74d6:	4803      	ldr	r0, [pc, #12]	@ (c0de74e4 <os_io_rx_evt+0x14>)
c0de74d8:	4669      	mov	r1, sp
c0de74da:	f7ff fe2f 	bl	c0de713c <SVC_Call>
c0de74de:	b004      	add	sp, #16
c0de74e0:	bd80      	pop	{r7, pc}
c0de74e2:	bf00      	nop
c0de74e4:	03000089 	.word	0x03000089

c0de74e8 <try_context_get>:
c0de74e8:	b5e0      	push	{r5, r6, r7, lr}
c0de74ea:	2000      	movs	r0, #0
c0de74ec:	4669      	mov	r1, sp
c0de74ee:	9001      	str	r0, [sp, #4]
c0de74f0:	2087      	movs	r0, #135	@ 0x87
c0de74f2:	f7ff fe23 	bl	c0de713c <SVC_Call>
c0de74f6:	bd8c      	pop	{r2, r3, r7, pc}

c0de74f8 <try_context_set>:
c0de74f8:	b5e0      	push	{r5, r6, r7, lr}
c0de74fa:	f000 f813 	bl	c0de7524 <OUTLINED_FUNCTION_0>
c0de74fe:	4802      	ldr	r0, [pc, #8]	@ (c0de7508 <try_context_set+0x10>)
c0de7500:	4669      	mov	r1, sp
c0de7502:	f7ff fe1b 	bl	c0de713c <SVC_Call>
c0de7506:	bd8c      	pop	{r2, r3, r7, pc}
c0de7508:	0100010b 	.word	0x0100010b

c0de750c <os_sched_last_status>:
c0de750c:	b5e0      	push	{r5, r6, r7, lr}
c0de750e:	f000 f809 	bl	c0de7524 <OUTLINED_FUNCTION_0>
c0de7512:	4803      	ldr	r0, [pc, #12]	@ (c0de7520 <os_sched_last_status+0x14>)
c0de7514:	4669      	mov	r1, sp
c0de7516:	f7ff fe11 	bl	c0de713c <SVC_Call>
c0de751a:	b2c0      	uxtb	r0, r0
c0de751c:	bd8c      	pop	{r2, r3, r7, pc}
c0de751e:	bf00      	nop
c0de7520:	0100009c 	.word	0x0100009c

c0de7524 <OUTLINED_FUNCTION_0>:
c0de7524:	2100      	movs	r1, #0
c0de7526:	e9cd 0100 	strd	r0, r1, [sp]
c0de752a:	4770      	bx	lr

c0de752c <__udivmoddi4>:
c0de752c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7530:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7534:	4604      	mov	r4, r0
c0de7536:	b179      	cbz	r1, c0de7558 <__udivmoddi4+0x2c>
c0de7538:	b1ba      	cbz	r2, c0de756a <__udivmoddi4+0x3e>
c0de753a:	b35b      	cbz	r3, c0de7594 <__udivmoddi4+0x68>
c0de753c:	fab1 f581 	clz	r5, r1
c0de7540:	fab3 f683 	clz	r6, r3
c0de7544:	1b75      	subs	r5, r6, r5
c0de7546:	2d20      	cmp	r5, #32
c0de7548:	d34a      	bcc.n	c0de75e0 <__udivmoddi4+0xb4>
c0de754a:	f1bc 0f00 	cmp.w	ip, #0
c0de754e:	bf18      	it	ne
c0de7550:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7554:	2400      	movs	r4, #0
c0de7556:	e066      	b.n	c0de7626 <__udivmoddi4+0xfa>
c0de7558:	b3cb      	cbz	r3, c0de75ce <__udivmoddi4+0xa2>
c0de755a:	2100      	movs	r1, #0
c0de755c:	f1bc 0f00 	cmp.w	ip, #0
c0de7560:	bf18      	it	ne
c0de7562:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7566:	2400      	movs	r4, #0
c0de7568:	e0a6      	b.n	c0de76b8 <__udivmoddi4+0x18c>
c0de756a:	2b00      	cmp	r3, #0
c0de756c:	d03e      	beq.n	c0de75ec <__udivmoddi4+0xc0>
c0de756e:	2800      	cmp	r0, #0
c0de7570:	d04f      	beq.n	c0de7612 <__udivmoddi4+0xe6>
c0de7572:	1e5d      	subs	r5, r3, #1
c0de7574:	422b      	tst	r3, r5
c0de7576:	d158      	bne.n	c0de762a <__udivmoddi4+0xfe>
c0de7578:	f1bc 0f00 	cmp.w	ip, #0
c0de757c:	bf1c      	itt	ne
c0de757e:	ea05 0001 	andne.w	r0, r5, r1
c0de7582:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7586:	fa93 f0a3 	rbit	r0, r3
c0de758a:	fab0 f080 	clz	r0, r0
c0de758e:	fa21 f400 	lsr.w	r4, r1, r0
c0de7592:	e048      	b.n	c0de7626 <__udivmoddi4+0xfa>
c0de7594:	1e55      	subs	r5, r2, #1
c0de7596:	422a      	tst	r2, r5
c0de7598:	d129      	bne.n	c0de75ee <__udivmoddi4+0xc2>
c0de759a:	f1bc 0f00 	cmp.w	ip, #0
c0de759e:	bf1e      	ittt	ne
c0de75a0:	2300      	movne	r3, #0
c0de75a2:	4005      	andne	r5, r0
c0de75a4:	e9cc 5300 	strdne	r5, r3, [ip]
c0de75a8:	2a01      	cmp	r2, #1
c0de75aa:	f000 8085 	beq.w	c0de76b8 <__udivmoddi4+0x18c>
c0de75ae:	fa92 f2a2 	rbit	r2, r2
c0de75b2:	004c      	lsls	r4, r1, #1
c0de75b4:	fab2 f282 	clz	r2, r2
c0de75b8:	f002 031f 	and.w	r3, r2, #31
c0de75bc:	40d1      	lsrs	r1, r2
c0de75be:	40d8      	lsrs	r0, r3
c0de75c0:	231f      	movs	r3, #31
c0de75c2:	4393      	bics	r3, r2
c0de75c4:	fa04 f303 	lsl.w	r3, r4, r3
c0de75c8:	ea43 0400 	orr.w	r4, r3, r0
c0de75cc:	e074      	b.n	c0de76b8 <__udivmoddi4+0x18c>
c0de75ce:	fbb0 f4f2 	udiv	r4, r0, r2
c0de75d2:	f1bc 0f00 	cmp.w	ip, #0
c0de75d6:	d026      	beq.n	c0de7626 <__udivmoddi4+0xfa>
c0de75d8:	fb04 0012 	mls	r0, r4, r2, r0
c0de75dc:	2100      	movs	r1, #0
c0de75de:	e020      	b.n	c0de7622 <__udivmoddi4+0xf6>
c0de75e0:	f105 0e01 	add.w	lr, r5, #1
c0de75e4:	f1be 0f20 	cmp.w	lr, #32
c0de75e8:	d00b      	beq.n	c0de7602 <__udivmoddi4+0xd6>
c0de75ea:	e028      	b.n	c0de763e <__udivmoddi4+0x112>
c0de75ec:	e064      	b.n	c0de76b8 <__udivmoddi4+0x18c>
c0de75ee:	fab1 f481 	clz	r4, r1
c0de75f2:	fab2 f582 	clz	r5, r2
c0de75f6:	1b2c      	subs	r4, r5, r4
c0de75f8:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de75fc:	f1be 0f20 	cmp.w	lr, #32
c0de7600:	d15d      	bne.n	c0de76be <__udivmoddi4+0x192>
c0de7602:	f04f 0e20 	mov.w	lr, #32
c0de7606:	f04f 0a00 	mov.w	sl, #0
c0de760a:	f04f 0b00 	mov.w	fp, #0
c0de760e:	460e      	mov	r6, r1
c0de7610:	e021      	b.n	c0de7656 <__udivmoddi4+0x12a>
c0de7612:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7616:	f1bc 0f00 	cmp.w	ip, #0
c0de761a:	d004      	beq.n	c0de7626 <__udivmoddi4+0xfa>
c0de761c:	2000      	movs	r0, #0
c0de761e:	fb04 1113 	mls	r1, r4, r3, r1
c0de7622:	e9cc 0100 	strd	r0, r1, [ip]
c0de7626:	2100      	movs	r1, #0
c0de7628:	e046      	b.n	c0de76b8 <__udivmoddi4+0x18c>
c0de762a:	fab1 f581 	clz	r5, r1
c0de762e:	fab3 f683 	clz	r6, r3
c0de7632:	1b75      	subs	r5, r6, r5
c0de7634:	2d1f      	cmp	r5, #31
c0de7636:	f4bf af88 	bcs.w	c0de754a <__udivmoddi4+0x1e>
c0de763a:	f105 0e01 	add.w	lr, r5, #1
c0de763e:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7642:	f1c5 051f 	rsb	r5, r5, #31
c0de7646:	fa01 f605 	lsl.w	r6, r1, r5
c0de764a:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de764e:	40a8      	lsls	r0, r5
c0de7650:	f04f 0a00 	mov.w	sl, #0
c0de7654:	4326      	orrs	r6, r4
c0de7656:	f04f 0800 	mov.w	r8, #0
c0de765a:	f1be 0f00 	cmp.w	lr, #0
c0de765e:	d01c      	beq.n	c0de769a <__udivmoddi4+0x16e>
c0de7660:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7664:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7668:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de766c:	0076      	lsls	r6, r6, #1
c0de766e:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7672:	1aae      	subs	r6, r5, r2
c0de7674:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7678:	43cf      	mvns	r7, r1
c0de767a:	43ec      	mvns	r4, r5
c0de767c:	18a4      	adds	r4, r4, r2
c0de767e:	eb57 0403 	adcs.w	r4, r7, r3
c0de7682:	bf5c      	itt	pl
c0de7684:	468b      	movpl	fp, r1
c0de7686:	462e      	movpl	r6, r5
c0de7688:	0040      	lsls	r0, r0, #1
c0de768a:	0fe1      	lsrs	r1, r4, #31
c0de768c:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7690:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7694:	46a2      	mov	sl, r4
c0de7696:	4688      	mov	r8, r1
c0de7698:	e7df      	b.n	c0de765a <__udivmoddi4+0x12e>
c0de769a:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de769e:	f1bc 0f00 	cmp.w	ip, #0
c0de76a2:	bf18      	it	ne
c0de76a4:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de76a8:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de76ac:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de76b0:	f020 0001 	bic.w	r0, r0, #1
c0de76b4:	ea40 0408 	orr.w	r4, r0, r8
c0de76b8:	4620      	mov	r0, r4
c0de76ba:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de76be:	f1be 0f1f 	cmp.w	lr, #31
c0de76c2:	d804      	bhi.n	c0de76ce <__udivmoddi4+0x1a2>
c0de76c4:	fa20 f40e 	lsr.w	r4, r0, lr
c0de76c8:	f1ce 0520 	rsb	r5, lr, #32
c0de76cc:	e7bb      	b.n	c0de7646 <__udivmoddi4+0x11a>
c0de76ce:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de76d2:	f1ae 0420 	sub.w	r4, lr, #32
c0de76d6:	f04f 0b00 	mov.w	fp, #0
c0de76da:	fa20 f504 	lsr.w	r5, r0, r4
c0de76de:	fa01 f607 	lsl.w	r6, r1, r7
c0de76e2:	fa00 fa07 	lsl.w	sl, r0, r7
c0de76e6:	ea46 0805 	orr.w	r8, r6, r5
c0de76ea:	fa21 f604 	lsr.w	r6, r1, r4
c0de76ee:	4640      	mov	r0, r8
c0de76f0:	e7b1      	b.n	c0de7656 <__udivmoddi4+0x12a>
	...

c0de76f4 <__aeabi_memcpy>:
c0de76f4:	f000 b81c 	b.w	c0de7730 <memcpy>

c0de76f8 <__aeabi_memmove>:
c0de76f8:	f000 b828 	b.w	c0de774c <memmove>

c0de76fc <__aeabi_memset>:
c0de76fc:	460b      	mov	r3, r1
c0de76fe:	4611      	mov	r1, r2
c0de7700:	461a      	mov	r2, r3
c0de7702:	f000 b83d 	b.w	c0de7780 <memset>
c0de7706:	bf00      	nop

c0de7708 <__aeabi_memclr>:
c0de7708:	460a      	mov	r2, r1
c0de770a:	2100      	movs	r1, #0
c0de770c:	f000 b838 	b.w	c0de7780 <memset>

c0de7710 <__aeabi_uldivmod>:
c0de7710:	b540      	push	{r6, lr}
c0de7712:	b084      	sub	sp, #16
c0de7714:	ae02      	add	r6, sp, #8
c0de7716:	9600      	str	r6, [sp, #0]
c0de7718:	f7ff ff08 	bl	c0de752c <__udivmoddi4>
c0de771c:	9a02      	ldr	r2, [sp, #8]
c0de771e:	9b03      	ldr	r3, [sp, #12]
c0de7720:	b004      	add	sp, #16
c0de7722:	bd40      	pop	{r6, pc}

c0de7724 <explicit_bzero>:
c0de7724:	f000 b800 	b.w	c0de7728 <bzero>

c0de7728 <bzero>:
c0de7728:	460a      	mov	r2, r1
c0de772a:	2100      	movs	r1, #0
c0de772c:	f000 b828 	b.w	c0de7780 <memset>

c0de7730 <memcpy>:
c0de7730:	440a      	add	r2, r1
c0de7732:	4291      	cmp	r1, r2
c0de7734:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7738:	d100      	bne.n	c0de773c <memcpy+0xc>
c0de773a:	4770      	bx	lr
c0de773c:	b510      	push	{r4, lr}
c0de773e:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7742:	4291      	cmp	r1, r2
c0de7744:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7748:	d1f9      	bne.n	c0de773e <memcpy+0xe>
c0de774a:	bd10      	pop	{r4, pc}

c0de774c <memmove>:
c0de774c:	4288      	cmp	r0, r1
c0de774e:	b510      	push	{r4, lr}
c0de7750:	eb01 0402 	add.w	r4, r1, r2
c0de7754:	d902      	bls.n	c0de775c <memmove+0x10>
c0de7756:	4284      	cmp	r4, r0
c0de7758:	4623      	mov	r3, r4
c0de775a:	d807      	bhi.n	c0de776c <memmove+0x20>
c0de775c:	1e43      	subs	r3, r0, #1
c0de775e:	42a1      	cmp	r1, r4
c0de7760:	d008      	beq.n	c0de7774 <memmove+0x28>
c0de7762:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7766:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de776a:	e7f8      	b.n	c0de775e <memmove+0x12>
c0de776c:	4601      	mov	r1, r0
c0de776e:	4402      	add	r2, r0
c0de7770:	428a      	cmp	r2, r1
c0de7772:	d100      	bne.n	c0de7776 <memmove+0x2a>
c0de7774:	bd10      	pop	{r4, pc}
c0de7776:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de777a:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de777e:	e7f7      	b.n	c0de7770 <memmove+0x24>

c0de7780 <memset>:
c0de7780:	4603      	mov	r3, r0
c0de7782:	4402      	add	r2, r0
c0de7784:	4293      	cmp	r3, r2
c0de7786:	d100      	bne.n	c0de778a <memset+0xa>
c0de7788:	4770      	bx	lr
c0de778a:	f803 1b01 	strb.w	r1, [r3], #1
c0de778e:	e7f9      	b.n	c0de7784 <memset+0x4>

c0de7790 <setjmp>:
c0de7790:	46ec      	mov	ip, sp
c0de7792:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7796:	f04f 0000 	mov.w	r0, #0
c0de779a:	4770      	bx	lr

c0de779c <longjmp>:
c0de779c:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de77a0:	46e5      	mov	sp, ip
c0de77a2:	0008      	movs	r0, r1
c0de77a4:	bf08      	it	eq
c0de77a6:	2001      	moveq	r0, #1
c0de77a8:	4770      	bx	lr
c0de77aa:	bf00      	nop

c0de77ac <strcmp>:
c0de77ac:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de77b0:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de77b4:	2a01      	cmp	r2, #1
c0de77b6:	bf28      	it	cs
c0de77b8:	429a      	cmpcs	r2, r3
c0de77ba:	d0f7      	beq.n	c0de77ac <strcmp>
c0de77bc:	1ad0      	subs	r0, r2, r3
c0de77be:	4770      	bx	lr

c0de77c0 <strlen>:
c0de77c0:	4603      	mov	r3, r0
c0de77c2:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de77c6:	2a00      	cmp	r2, #0
c0de77c8:	d1fb      	bne.n	c0de77c2 <strlen+0x2>
c0de77ca:	1a18      	subs	r0, r3, r0
c0de77cc:	3801      	subs	r0, #1
c0de77ce:	4770      	bx	lr

c0de77d0 <strncmp>:
c0de77d0:	b510      	push	{r4, lr}
c0de77d2:	b16a      	cbz	r2, c0de77f0 <strncmp+0x20>
c0de77d4:	3901      	subs	r1, #1
c0de77d6:	1884      	adds	r4, r0, r2
c0de77d8:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de77dc:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de77e0:	429a      	cmp	r2, r3
c0de77e2:	d103      	bne.n	c0de77ec <strncmp+0x1c>
c0de77e4:	42a0      	cmp	r0, r4
c0de77e6:	d001      	beq.n	c0de77ec <strncmp+0x1c>
c0de77e8:	2a00      	cmp	r2, #0
c0de77ea:	d1f5      	bne.n	c0de77d8 <strncmp+0x8>
c0de77ec:	1ad0      	subs	r0, r2, r3
c0de77ee:	bd10      	pop	{r4, pc}
c0de77f0:	4610      	mov	r0, r2
c0de77f2:	e7fc      	b.n	c0de77ee <strncmp+0x1e>

c0de77f4 <strncpy>:
c0de77f4:	4603      	mov	r3, r0
c0de77f6:	b510      	push	{r4, lr}
c0de77f8:	3901      	subs	r1, #1
c0de77fa:	b132      	cbz	r2, c0de780a <strncpy+0x16>
c0de77fc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7800:	3a01      	subs	r2, #1
c0de7802:	f803 4b01 	strb.w	r4, [r3], #1
c0de7806:	2c00      	cmp	r4, #0
c0de7808:	d1f7      	bne.n	c0de77fa <strncpy+0x6>
c0de780a:	2100      	movs	r1, #0
c0de780c:	441a      	add	r2, r3
c0de780e:	4293      	cmp	r3, r2
c0de7810:	d100      	bne.n	c0de7814 <strncpy+0x20>
c0de7812:	bd10      	pop	{r4, pc}
c0de7814:	f803 1b01 	strb.w	r1, [r3], #1
c0de7818:	e7f9      	b.n	c0de780e <strncpy+0x1a>

c0de781a <C_home_boilerplate_14px_bitmap>:
c0de781a:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de782a:	fc7b df0f 7ffe 7ff8                          {........

c0de7833 <C_home_boilerplate_14px>:
c0de7833:	000e 000e 0000 781a c0de                    .......x..

c0de783d <C_Information_circle_14px_bitmap>:
c0de783d:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de784d:	e7ff 8fff 1ffc 1ee0                          .........

c0de7856 <C_Information_circle_14px>:
c0de7856:	000e 000e 0000 783d c0de                    ......=x..

c0de7860 <C_Quit_14px_bitmap>:
c0de7860:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7870:	6680 9801 7f06 fff9                          .f.......

c0de7879 <C_Quit_14px>:
c0de7879:	000e 000e 0000 7860 c0de                    ......`x..

c0de7883 <C_Switch_Off_8px_bitmap>:
c0de7883:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de788f <C_Switch_Off_8px>:
c0de788f:	000c 0008 0000 7883 c0de                    .......x..

c0de7899 <C_Switch_On_8px_bitmap>:
c0de7899:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de78a5 <C_Switch_On_8px>:
c0de78a5:	000c 0008 0000 7899 c0de                    .......x..

c0de78af <C_icon_back_x_bitmap>:
c0de78af:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de78bf:	003f 0078 00c0 0000                          ?.x......

c0de78c8 <C_icon_back_x>:
c0de78c8:	000e 000e 0000 78af c0de                    .......x..

c0de78d2 <C_icon_coggle_bitmap>:
c0de78d2:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de78e2:	807f 00b4 00c0 0000                          .........

c0de78eb <C_icon_coggle>:
c0de78eb:	000e 000e 0000 78d2 c0de                    .......x..

c0de78f5 <C_icon_crossmark_bitmap>:
c0de78f5:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7905:	8373 1c87 600e 0018                          s....`...

c0de790e <C_icon_crossmark>:
c0de790e:	000e 000e 0000 78f5 c0de                    .......x..

c0de7918 <C_icon_down_bitmap>:
c0de7918:	2184 8024                                   .!$.

c0de791c <C_icon_down>:
c0de791c:	0007 0004 0000 7918 c0de                    .......y..

c0de7926 <C_icon_left_bitmap>:
c0de7926:	8882 80a0                                   ....

c0de792a <C_icon_left>:
c0de792a:	0004 0007 0000 7926 c0de                    ......&y..

c0de7934 <C_icon_processing_bitmap>:
c0de7934:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7944:	8361 04b7 03c8 0000                          a........

c0de794d <C_icon_processing>:
c0de794d:	000e 000e 0000 7934 c0de                    ......4y..

c0de7957 <C_icon_right_bitmap>:
c0de7957:	5110 1014                                   .Q..

c0de795b <C_icon_right>:
c0de795b:	0004 0007 0000 7957 c0de                    ......Wy..

c0de7965 <C_icon_up_bitmap>:
c0de7965:	4812 1042                                   .HB.

c0de7969 <C_icon_up>:
c0de7969:	0007 0004 0000 7965 c0de                    ......ey..

c0de7973 <C_icon_validate_14_bitmap>:
c0de7973:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7983:	a3b3 a3a3 f0b2                               ......P

c0de798a <C_icon_validate_14>:
c0de798a:	000e 000e 0100 7973 c0de                    ......sy..

c0de7994 <C_icon_warning_bitmap>:
c0de7994:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de79a4:	e01f 801f 001e 0018                          .........

c0de79ad <C_icon_warning>:
c0de79ad:	000e 000e 0000 7994 c0de                    .......y..

c0de79b7 <C_app_boilerplate_14px_bitmap>:
c0de79b7:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de79c7:	0384 00f0 0000 0000                          .........

c0de79d0 <C_app_boilerplate_14px>:
c0de79d0:	000e 000e 0000 79b7 c0de 7544 6d6d 2079     .......y..Dummy 
c0de79e0:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de79f0:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de7a00:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de7a10:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de7a20:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de7a30:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de7a40:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de7a50:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de7a60:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de7a70:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de7a80:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de7a90:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de7aa0:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de7ab0:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de7ac0:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de7ad0:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de7ae0:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de7af0:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de7b00:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de7b10:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de7b20:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de7b30:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de7b40:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de7b50:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de7b60:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de7b70:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de7b80:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de7b90:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de7ba0:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de7bb0:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de7bc0:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de7bd0:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de7be0:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de7bf0:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de7c00:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de7c10:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de7c20:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de7c30:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de7c40:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de7c50:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de7c60:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de7c70:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de7c80:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de7c90:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de7ca0:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de7cb0:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de7cc0:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de7cd0:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de7ce0:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de7cf0:	6173 7463 6f69 0a6e 6f74 7320 6e65 2064     saction.to send 
c0de7d00:	4f4e 0058 4b5a 4f4e 4858 0057 7061 2070     NOX.ZKNOXHW.app 
c0de7d10:	7369 7220 6165 7964 5100 6975 2074 7061     is ready.Quit ap
c0de7d20:	0070 6f43 666e 7269 006d 0000 0000 0000     p.Confirm.......
c0de7d30:	ed73 53a7 9d29 487d 3933 08d8 a109 05d8     s..S).}H39......
c0de7d40:	bd53 02a4 feff fe5b ffff ffff 0000 0100     S.....[.........
c0de7d50:	ce05 c698 051b 7ff4 eae2 a5e9 bd42 f699     ............B...
c0de7d60:	e7b2 4682 1623 b540 9545 bffe 1ed5 53b8     ...F#.@.E......S
c0de7d70:	0001 0000 0000 0000 0002 0000 0000 0000     ................
c0de7d80:	0003 0000 0000 0000 0004 0000 0000 0000     ................
c0de7d90:	a005 91c0 8356 988b af28 123f e167 e675     ....V...(.?.g.u.
c0de7da0:	84e2 9dc7 6d1b d08a 0acd d9e0 9057 6e33     .....m......W.3n
c0de7db0:	c61c 38ee 9c13 111c 2302 7a53 e78c 069d     ...8.....#Sz....
c0de7dc0:	587e 10cc c667 b7fb b3d8 b0a1 fc8d 088f     ~X..g...........
c0de7dd0:	4d27 e8bc 51d1 9679 c09b 9fd4 25a7 dfbd     'M...Qy......%..
c0de7de0:	e59d e055 6aba 3c69 db6a fc52 e79e 2ca8     ..U..ji<j.R....,
c0de7df0:	fb1c d469 67ca 525f ce0c 0276 6802 0076     ..i..g_R..v..hv.
c0de7e00:	8fff 0087 1974 7104 fd74 b506 7628 e1e7     ....t..qt...(v..
c0de7e10:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de7e20:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.
c0de7e30:	a570 4a89 4464 3854 15d0 32ac 36ba 090f     p..JdDT8...2.6..
c0de7e40:	de2c ba44 1fb1 b7c2 b5d4 d2c0 2216 ce8c     ,.D.........."..
c0de7e50:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de7e60:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..
	...
c0de7e8c:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7e9c:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7eac:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7ebc:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7ecc:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7edc:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de7eec:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de7f0c:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de7f1c:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de7f2c:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de7f3c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de7f4c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de7f5c:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de7f6c:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de7f7c:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de7f8c:	88f4 7a60                                   ..`z

c0de7f90 <.L__const.handler_cmd_Poseidon.input>:
c0de7f90:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de7fa0:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de7fb0:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de7fc0:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de7fd0:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de7fe0:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de7ff0:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de8000:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de8010:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8020:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8030 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de804c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de805c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de806c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de807c:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de808c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de809c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de80ac:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de80bc:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de80cc:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de80ec:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de80fc:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de810c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de811c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de812c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de813c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de814c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de815c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de816c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de818c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de819c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de81ac:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de81bc:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de81cc:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de81dc:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de81ec:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de81fc:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de820c:	9b44 9ffb                                   D...

c0de8210 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de822c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de823c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de824c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de825c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de826c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de827c:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de828c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de829c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de82ac:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de82cc:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de82dc:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de82ec:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de82fc:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de830c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de831c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de832c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de833c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de834c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de836c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de837c:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de838c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de839c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de83ac:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de83bc:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de83cc:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de83dc:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de83ec:	8132 74b1                                   2..t

c0de83f0 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de83f0:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8400:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8410:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8420:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8430:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8440:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8450 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de846c:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de847c:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de848c:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de849c:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de84ac:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de84bc:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de84cc:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de84dc:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de84ec:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de850c:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de851c:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de852c:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de853c:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de854c:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de855c:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de856c:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de857c:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de858c:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de85ac:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de85bc:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de85cc:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de85dc:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de85ec:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de85fc:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de860c:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de861c:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de862c:	a0c2 7523                                   ..#u

c0de8630 <settingContents>:
c0de8630:	0000 0000 864c c0de 0001 0000               ....L.......

c0de863c <infoList>:
c0de863c:	8684 c0de 868c c0de 0000 0000 0002 0000     ................

c0de864c <contents>:
c0de864c:	0007 0000 035c da7a 0002 0000 0000 0000     ....\.z.........
	...
c0de8680:	193d c0de                                   =...

c0de8684 <INFO_TYPES>:
c0de8684:	7b8a c0de 7adf c0de                         .{...z..

c0de868c <INFO_CONTENTS>:
c0de868c:	7a09 c0de 7ccc c0de                         .z...|..

c0de8694 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de86b4:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de86c4:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de86d4 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de86d4:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de86e4:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de86f4:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8704:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8714:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8724:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8734:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8744:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8754:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8764:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de8774:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8784:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8794:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de87a4:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de87b4:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de87c4:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de87d4:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de87e4:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de87f4:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8804:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8814:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de8824:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8834:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8844:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8854:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8864:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de8874:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8884:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de8894:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de88a4:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de88b4:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de88c4:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de88d4:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de88e4:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de88f4:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8904:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8914:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de8924:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8934:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8944:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8954:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8964:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8974:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8984:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8994:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de89a4:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de89b4:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de89c4:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de89d4:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de89e4:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de89f4:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8a04:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8a14:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8a24:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8a34:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8a44:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8a54:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8a64:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8a74:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8a84:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8a94:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8aa4:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8ab4:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8ac4:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8ad4:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8ae4:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8af4:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8b04:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8b14:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8b24:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8b34:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8b44:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8b54 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8b54:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8b64:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8b74 <blindSigningWarning>:
c0de8b74:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8b9c <g_pcHex>:
c0de8b9c:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8bac <g_pcHex_cap>:
c0de8bac:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8bbc <_etext>:
	...

c0de8c00 <N_storage_real>:
	...

c0de8e00 <install_parameters>:
c0de8e00:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de8e10:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de8e20:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de8e30:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
