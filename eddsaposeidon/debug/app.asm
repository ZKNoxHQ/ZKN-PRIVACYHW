
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 fefd 	bl	c0de6e04 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fc89 	bl	c0de692c <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fc50 	bl	c0de68c0 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fc41 	bl	c0de68aa <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fb99 	bl	c0de776c <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fe7b 	bl	c0de6d38 <assert_exit>
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
c0de0056:	f006 fe2f 	bl	c0de6cb8 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fb76 	bl	c0de7758 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 fe5d 	bl	c0de6d38 <assert_exit>
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
c0de0146:	f001 f88b 	bl	c0de1260 <handler_get_insecure_public>
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
c0de01ba:	f000 fa79 	bl	c0de06b0 <handler_cmd_keccakH>
c0de01be:	e0a3      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01c0:	68a0      	ldr	r0, [r4, #8]
c0de01c2:	2800      	cmp	r0, #0
c0de01c4:	f000 80a2 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01c8:	f000 f8b1 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01cc:	a801      	add	r0, sp, #4
c0de01ce:	f000 fa36 	bl	c0de063e <handler_cmd_blake2b512>
c0de01d2:	e099      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01d4:	68a0      	ldr	r0, [r4, #8]
c0de01d6:	2800      	cmp	r0, #0
c0de01d8:	f000 8098 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01dc:	f000 f8a7 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01e0:	a801      	add	r0, sp, #4
c0de01e2:	f000 facd 	bl	c0de0780 <handler_cmd_Poseidon>
c0de01e6:	e08f      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01e8:	68a0      	ldr	r0, [r4, #8]
c0de01ea:	2800      	cmp	r0, #0
c0de01ec:	f000 808e 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de01f0:	f000 f89d 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de01f4:	a801      	add	r0, sp, #4
c0de01f6:	f000 fc29 	bl	c0de0a4c <handler_cmd_tEddsaPoseidon>
c0de01fa:	e085      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de01fc:	68a0      	ldr	r0, [r4, #8]
c0de01fe:	2800      	cmp	r0, #0
c0de0200:	f000 8084 	beq.w	c0de030c <apdu_dispatcher+0x29a>
c0de0204:	f000 f893 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0208:	a801      	add	r0, sp, #4
c0de020a:	f000 fb85 	bl	c0de0918 <handler_cmd_tEddsaPoseidon_Kpub>
c0de020e:	e07b      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0210:	68a0      	ldr	r0, [r4, #8]
c0de0212:	2800      	cmp	r0, #0
c0de0214:	d07a      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0216:	f000 f88a 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de021a:	a801      	add	r0, sp, #4
c0de021c:	f000 fbbd 	bl	c0de099a <handler_cmd_tEddsaPoseidon_Sign>
c0de0220:	e072      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0222:	68a0      	ldr	r0, [r4, #8]
c0de0224:	2800      	cmp	r0, #0
c0de0226:	d071      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0228:	f000 f881 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de022c:	a801      	add	r0, sp, #4
c0de022e:	f000 fb2d 	bl	c0de088c <handler_cmd_Poseidon_ithRC>
c0de0232:	e069      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0234:	68a0      	ldr	r0, [r4, #8]
c0de0236:	2800      	cmp	r0, #0
c0de0238:	d068      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de023a:	f000 f878 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de023e:	a801      	add	r0, sp, #4
c0de0240:	f000 fc78 	bl	c0de0b34 <handler_cmd_tEdwards>
c0de0244:	e060      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de0246:	68a0      	ldr	r0, [r4, #8]
c0de0248:	2800      	cmp	r0, #0
c0de024a:	d05f      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de024c:	f000 f86f 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0250:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0254:	f000 ba4a 	b.w	c0de06ec <handler_cmd_bolos_stretch>
c0de0258:	68a0      	ldr	r0, [r4, #8]
c0de025a:	2800      	cmp	r0, #0
c0de025c:	d056      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de025e:	f000 f866 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0262:	a801      	add	r0, sp, #4
c0de0264:	f000 fd1c 	bl	c0de0ca0 <handler_cmd_Interpolate>
c0de0268:	e04e      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de026a:	68a0      	ldr	r0, [r4, #8]
c0de026c:	2800      	cmp	r0, #0
c0de026e:	d04d      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0270:	f000 f85d 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0274:	a801      	add	r0, sp, #4
c0de0276:	f000 fdc8 	bl	c0de0e0a <handler_cmd_Split>
c0de027a:	e045      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de027c:	68a0      	ldr	r0, [r4, #8]
c0de027e:	2800      	cmp	r0, #0
c0de0280:	d044      	beq.n	c0de030c <apdu_dispatcher+0x29a>
c0de0282:	f000 f854 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0286:	a801      	add	r0, sp, #4
c0de0288:	f000 fe87 	bl	c0de0f9a <handler_cmd_frostH>
c0de028c:	e03c      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de028e:	68a0      	ldr	r0, [r4, #8]
c0de0290:	b3e0      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de0292:	f000 f84c 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de0296:	a801      	add	r0, sp, #4
c0de0298:	f000 fed0 	bl	c0de103c <handler_cmd_encodeCommitment>
c0de029c:	e034      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de029e:	68a0      	ldr	r0, [r4, #8]
c0de02a0:	b3a0      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02a2:	f000 f844 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02a6:	a801      	add	r0, sp, #4
c0de02a8:	f000 fefe 	bl	c0de10a8 <handler_cmd_GroupCommitment>
c0de02ac:	e02c      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de02ae:	68a0      	ldr	r0, [r4, #8]
c0de02b0:	b360      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02b2:	f000 f83c 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02b6:	a801      	add	r0, sp, #4
c0de02b8:	f000 ff38 	bl	c0de112c <handler_cmd_BindingFactors>
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
c0de02d2:	f000 ff9f 	bl	c0de1214 <handler_get_insecure_secret>
c0de02d6:	e017      	b.n	c0de0308 <apdu_dispatcher+0x296>
c0de02d8:	68a0      	ldr	r0, [r4, #8]
c0de02da:	b1b8      	cbz	r0, c0de030c <apdu_dispatcher+0x29a>
c0de02dc:	f000 f827 	bl	c0de032e <OUTLINED_FUNCTION_0>
c0de02e0:	a801      	add	r0, sp, #4
c0de02e2:	f000 fff5 	bl	c0de12d0 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
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
c0de0328:	f006 fa66 	bl	c0de67f8 <io_send_response_buffers>
c0de032c:	bd80      	pop	{r7, pc}

c0de032e <OUTLINED_FUNCTION_0>:
c0de032e:	9001      	str	r0, [sp, #4]
c0de0330:	7920      	ldrb	r0, [r4, #4]
c0de0332:	9002      	str	r0, [sp, #8]
c0de0334:	4770      	bx	lr
	...

c0de0338 <app_main>:
c0de0338:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de033a:	f006 fa3f 	bl	c0de67bc <io_init>
c0de033e:	481e      	ldr	r0, [pc, #120]	@ (c0de03b8 <app_main+0x80>)
c0de0340:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0344:	b908      	cbnz	r0, c0de034a <app_main+0x12>
c0de0346:	f001 fa89 	bl	c0de185c <ui_menu_main>
c0de034a:	481c      	ldr	r0, [pc, #112]	@ (c0de03bc <app_main+0x84>)
c0de034c:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0350:	4448      	add	r0, r9
c0de0352:	f007 fa19 	bl	c0de7788 <explicit_bzero>
c0de0356:	481b      	ldr	r0, [pc, #108]	@ (c0de03c4 <app_main+0x8c>)
c0de0358:	4478      	add	r0, pc
c0de035a:	f006 fefb 	bl	c0de7154 <pic>
c0de035e:	7880      	ldrb	r0, [r0, #2]
c0de0360:	2801      	cmp	r0, #1
c0de0362:	d00d      	beq.n	c0de0380 <app_main+0x48>
c0de0364:	2001      	movs	r0, #1
c0de0366:	f88d 0002 	strb.w	r0, [sp, #2]
c0de036a:	2000      	movs	r0, #0
c0de036c:	f8ad 0000 	strh.w	r0, [sp]
c0de0370:	4815      	ldr	r0, [pc, #84]	@ (c0de03c8 <app_main+0x90>)
c0de0372:	4478      	add	r0, pc
c0de0374:	f006 feee 	bl	c0de7154 <pic>
c0de0378:	4669      	mov	r1, sp
c0de037a:	2203      	movs	r2, #3
c0de037c:	f006 ff1a 	bl	c0de71b4 <nvm_write>
c0de0380:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03c0 <app_main+0x88>)
c0de0382:	ac01      	add	r4, sp, #4
c0de0384:	f006 fa22 	bl	c0de67cc <io_recv_command>
c0de0388:	2800      	cmp	r0, #0
c0de038a:	d414      	bmi.n	c0de03b6 <app_main+0x7e>
c0de038c:	4602      	mov	r2, r0
c0de038e:	eb09 0105 	add.w	r1, r9, r5
c0de0392:	4620      	mov	r0, r4
c0de0394:	f006 fb1a 	bl	c0de69cc <apdu_parser>
c0de0398:	b130      	cbz	r0, c0de03a8 <app_main+0x70>
c0de039a:	4620      	mov	r0, r4
c0de039c:	f7ff fe69 	bl	c0de0072 <apdu_dispatcher>
c0de03a0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03a4:	dcee      	bgt.n	c0de0384 <app_main+0x4c>
c0de03a6:	e006      	b.n	c0de03b6 <app_main+0x7e>
c0de03a8:	2000      	movs	r0, #0
c0de03aa:	2100      	movs	r1, #0
c0de03ac:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03b0:	f006 fa22 	bl	c0de67f8 <io_send_response_buffers>
c0de03b4:	e7e6      	b.n	c0de0384 <app_main+0x4c>
c0de03b6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de03b8:	000008cc 	.word	0x000008cc
c0de03bc:	00000000 	.word	0x00000000
c0de03c0:	00000407 	.word	0x00000407
c0de03c4:	00008aa4 	.word	0x00008aa4
c0de03c8:	00008a8a 	.word	0x00008a8a

c0de03cc <handler_get_app_name>:
c0de03cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03ce:	4808      	ldr	r0, [pc, #32]	@ (c0de03f0 <handler_get_app_name+0x24>)
c0de03d0:	4478      	add	r0, pc
c0de03d2:	f006 febf 	bl	c0de7154 <pic>
c0de03d6:	2100      	movs	r1, #0
c0de03d8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03dc:	9103      	str	r1, [sp, #12]
c0de03de:	2107      	movs	r1, #7
c0de03e0:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de03e4:	a801      	add	r0, sp, #4
c0de03e6:	2101      	movs	r1, #1
c0de03e8:	f006 fa06 	bl	c0de67f8 <io_send_response_buffers>
c0de03ec:	b004      	add	sp, #16
c0de03ee:	bd80      	pop	{r7, pc}
c0de03f0:	00007994 	.word	0x00007994

c0de03f4 <handler_get_public_key>:
c0de03f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de03f6:	b085      	sub	sp, #20
c0de03f8:	4f23      	ldr	r7, [pc, #140]	@ (c0de0488 <handler_get_public_key+0x94>)
c0de03fa:	460c      	mov	r4, r1
c0de03fc:	4605      	mov	r5, r0
c0de03fe:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0402:	eb09 0607 	add.w	r6, r9, r7
c0de0406:	4630      	mov	r0, r6
c0de0408:	f007 f9be 	bl	c0de7788 <explicit_bzero>
c0de040c:	2000      	movs	r0, #0
c0de040e:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de0412:	f809 0007 	strb.w	r0, [r9, r7]
c0de0416:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de041a:	4628      	mov	r0, r5
c0de041c:	f005 ff9a 	bl	c0de6354 <buffer_read_u8>
c0de0420:	b308      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0422:	eb09 0007 	add.w	r0, r9, r7
c0de0426:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de042a:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de042e:	4628      	mov	r0, r5
c0de0430:	f005 ffe3 	bl	c0de63fa <buffer_read_bip32_path>
c0de0434:	b1b8      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0436:	eb09 0007 	add.w	r0, r9, r7
c0de043a:	2100      	movs	r1, #0
c0de043c:	2205      	movs	r2, #5
c0de043e:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de0442:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de0446:	9104      	str	r1, [sp, #16]
c0de0448:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de044c:	f100 0608 	add.w	r6, r0, #8
c0de0450:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de0454:	2000      	movs	r0, #0
c0de0456:	2121      	movs	r1, #33	@ 0x21
c0de0458:	e9cd 6500 	strd	r6, r5, [sp]
c0de045c:	f006 f88e 	bl	c0de657c <bip32_derive_with_seed_get_pubkey_256>
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
c0de047e:	f000 bfb7 	beq.w	c0de13f0 <helper_send_response_pubkey>
c0de0482:	f001 bacf 	b.w	c0de1a24 <ui_display_address>
c0de0486:	bf00      	nop
c0de0488:	00000000 	.word	0x00000000

c0de048c <io_send_sw>:
c0de048c:	b580      	push	{r7, lr}
c0de048e:	4602      	mov	r2, r0
c0de0490:	2000      	movs	r0, #0
c0de0492:	2100      	movs	r1, #0
c0de0494:	f006 f9b0 	bl	c0de67f8 <io_send_response_buffers>
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
c0de04c0:	f006 f99a 	bl	c0de67f8 <io_send_response_buffers>
c0de04c4:	b004      	add	sp, #16
c0de04c6:	bd80      	pop	{r7, pc}

c0de04c8 <handler_sign_tx>:
c0de04c8:	b570      	push	{r4, r5, r6, lr}
c0de04ca:	b086      	sub	sp, #24
c0de04cc:	4e54      	ldr	r6, [pc, #336]	@ (c0de0620 <handler_sign_tx+0x158>)
c0de04ce:	4604      	mov	r4, r0
c0de04d0:	b191      	cbz	r1, c0de04f8 <handler_sign_tx+0x30>
c0de04d2:	eb09 0006 	add.w	r0, r9, r6
c0de04d6:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de04da:	2801      	cmp	r0, #1
c0de04dc:	d12c      	bne.n	c0de0538 <handler_sign_tx+0x70>
c0de04de:	eb09 0006 	add.w	r0, r9, r6
c0de04e2:	4615      	mov	r5, r2
c0de04e4:	6862      	ldr	r2, [r4, #4]
c0de04e6:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de04ea:	1811      	adds	r1, r2, r0
c0de04ec:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de04f0:	d925      	bls.n	c0de053e <handler_sign_tx+0x76>
c0de04f2:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de04f6:	e039      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de04f8:	eb09 0506 	add.w	r5, r9, r6
c0de04fc:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0500:	4628      	mov	r0, r5
c0de0502:	f007 f941 	bl	c0de7788 <explicit_bzero>
c0de0506:	2000      	movs	r0, #0
c0de0508:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de050c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0510:	2001      	movs	r0, #1
c0de0512:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de0516:	4620      	mov	r0, r4
c0de0518:	f005 ff1c 	bl	c0de6354 <buffer_read_u8>
c0de051c:	b148      	cbz	r0, c0de0532 <handler_sign_tx+0x6a>
c0de051e:	eb09 0006 	add.w	r0, r9, r6
c0de0522:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0526:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de052a:	4620      	mov	r0, r4
c0de052c:	f005 ff65 	bl	c0de63fa <buffer_read_bip32_path>
c0de0530:	b9b8      	cbnz	r0, c0de0562 <handler_sign_tx+0x9a>
c0de0532:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0536:	e019      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de0538:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de053c:	e016      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de053e:	eb09 0106 	add.w	r1, r9, r6
c0de0542:	4408      	add	r0, r1
c0de0544:	f100 0108 	add.w	r1, r0, #8
c0de0548:	4620      	mov	r0, r4
c0de054a:	f005 ff80 	bl	c0de644e <buffer_move>
c0de054e:	b158      	cbz	r0, c0de0568 <handler_sign_tx+0xa0>
c0de0550:	eb09 0106 	add.w	r1, r9, r6
c0de0554:	6862      	ldr	r2, [r4, #4]
c0de0556:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de055a:	4410      	add	r0, r2
c0de055c:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de0560:	b14d      	cbz	r5, c0de0576 <handler_sign_tx+0xae>
c0de0562:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de0566:	e001      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de0568:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de056c:	b006      	add	sp, #24
c0de056e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0572:	f000 b85d 	b.w	c0de0630 <io_send_sw>
c0de0576:	2100      	movs	r1, #0
c0de0578:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de057c:	eb09 0006 	add.w	r0, r9, r6
c0de0580:	f100 0108 	add.w	r1, r0, #8
c0de0584:	9101      	str	r1, [sp, #4]
c0de0586:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de058a:	a801      	add	r0, sp, #4
c0de058c:	f001 f886 	bl	c0de169c <transaction_deserialize>
c0de0590:	2801      	cmp	r0, #1
c0de0592:	d114      	bne.n	c0de05be <handler_sign_tx+0xf6>
c0de0594:	2001      	movs	r0, #1
c0de0596:	f809 0006 	strb.w	r0, [r9, r6]
c0de059a:	eb09 0006 	add.w	r0, r9, r6
c0de059e:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de05a2:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de05a6:	9105      	str	r1, [sp, #20]
c0de05a8:	f100 0108 	add.w	r1, r0, #8
c0de05ac:	9104      	str	r1, [sp, #16]
c0de05ae:	a804      	add	r0, sp, #16
c0de05b0:	2101      	movs	r1, #1
c0de05b2:	f006 fb81 	bl	c0de6cb8 <cx_keccak_256_hash_iovec>
c0de05b6:	b140      	cbz	r0, c0de05ca <handler_sign_tx+0x102>
c0de05b8:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de05bc:	e001      	b.n	c0de05c2 <handler_sign_tx+0xfa>
c0de05be:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05c2:	f000 f835 	bl	c0de0630 <io_send_sw>
c0de05c6:	b006      	add	sp, #24
c0de05c8:	bd70      	pop	{r4, r5, r6, pc}
c0de05ca:	4816      	ldr	r0, [pc, #88]	@ (c0de0624 <handler_sign_tx+0x15c>)
c0de05cc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de05d0:	b1a0      	cbz	r0, c0de05fc <handler_sign_tx+0x134>
c0de05d2:	4815      	ldr	r0, [pc, #84]	@ (c0de0628 <handler_sign_tx+0x160>)
c0de05d4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de05d8:	b9f9      	cbnz	r1, c0de061a <handler_sign_tx+0x152>
c0de05da:	eb09 0406 	add.w	r4, r9, r6
c0de05de:	2101      	movs	r1, #1
c0de05e0:	f809 1000 	strb.w	r1, [r9, r0]
c0de05e4:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de05e8:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de05ea:	9400      	str	r4, [sp, #0]
c0de05ec:	f001 f816 	bl	c0de161c <swap_check_validity>
c0de05f0:	b110      	cbz	r0, c0de05f8 <handler_sign_tx+0x130>
c0de05f2:	2001      	movs	r0, #1
c0de05f4:	f001 f8dc 	bl	c0de17b0 <validate_transaction>
c0de05f8:	2000      	movs	r0, #0
c0de05fa:	e7e4      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de05fc:	eb09 0006 	add.w	r0, r9, r6
c0de0600:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0604:	4909      	ldr	r1, [pc, #36]	@ (c0de062c <handler_sign_tx+0x164>)
c0de0606:	4479      	add	r1, pc
c0de0608:	f007 f902 	bl	c0de7810 <strcmp>
c0de060c:	b110      	cbz	r0, c0de0614 <handler_sign_tx+0x14c>
c0de060e:	f001 fb2a 	bl	c0de1c66 <ui_display_transaction>
c0de0612:	e7d8      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de0614:	f001 fb24 	bl	c0de1c60 <ui_display_blind_signed_transaction>
c0de0618:	e7d5      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de061a:	20ff      	movs	r0, #255	@ 0xff
c0de061c:	f006 ff60 	bl	c0de74e0 <os_sched_exit>
c0de0620:	00000000 	.word	0x00000000
c0de0624:	000008cc 	.word	0x000008cc
c0de0628:	000008cd 	.word	0x000008cd
c0de062c:	00007477 	.word	0x00007477

c0de0630 <io_send_sw>:
c0de0630:	b580      	push	{r7, lr}
c0de0632:	4602      	mov	r2, r0
c0de0634:	2000      	movs	r0, #0
c0de0636:	2100      	movs	r1, #0
c0de0638:	f006 f8de 	bl	c0de67f8 <io_send_response_buffers>
c0de063c:	bd80      	pop	{r7, pc}

c0de063e <handler_cmd_blake2b512>:
c0de063e:	b510      	push	{r4, lr}
c0de0640:	b0d0      	sub	sp, #320	@ 0x140
c0de0642:	4604      	mov	r4, r0
c0de0644:	6840      	ldr	r0, [r0, #4]
c0de0646:	2820      	cmp	r0, #32
c0de0648:	d10b      	bne.n	c0de0662 <handler_cmd_blake2b512+0x24>
c0de064a:	6820      	ldr	r0, [r4, #0]
c0de064c:	a940      	add	r1, sp, #256	@ 0x100
c0de064e:	2220      	movs	r2, #32
c0de0650:	f001 fb0c 	bl	c0de1c6c <zkn_prv_hash>
c0de0654:	b988      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de0656:	a840      	add	r0, sp, #256	@ 0x100
c0de0658:	2140      	movs	r1, #64	@ 0x40
c0de065a:	f000 f817 	bl	c0de068c <io_send_response_pointer>
c0de065e:	2000      	movs	r0, #0
c0de0660:	e00d      	b.n	c0de067e <handler_cmd_blake2b512+0x40>
c0de0662:	4668      	mov	r0, sp
c0de0664:	2109      	movs	r1, #9
c0de0666:	2240      	movs	r2, #64	@ 0x40
c0de0668:	f006 fb54 	bl	c0de6d14 <cx_hash_init_ex>
c0de066c:	b928      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de066e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0672:	4668      	mov	r0, sp
c0de0674:	f006 fb53 	bl	c0de6d1e <cx_hash_update>
c0de0678:	b118      	cbz	r0, c0de0682 <handler_cmd_blake2b512+0x44>
c0de067a:	f000 fe87 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de067e:	b050      	add	sp, #320	@ 0x140
c0de0680:	bd10      	pop	{r4, pc}
c0de0682:	4668      	mov	r0, sp
c0de0684:	a940      	add	r1, sp, #256	@ 0x100
c0de0686:	f006 fb40 	bl	c0de6d0a <cx_hash_final>
c0de068a:	e7e3      	b.n	c0de0654 <handler_cmd_blake2b512+0x16>

c0de068c <io_send_response_pointer>:
c0de068c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de068e:	2200      	movs	r2, #0
c0de0690:	ab01      	add	r3, sp, #4
c0de0692:	c307      	stmia	r3!, {r0, r1, r2}
c0de0694:	a801      	add	r0, sp, #4
c0de0696:	2101      	movs	r1, #1
c0de0698:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de069c:	f006 f8ac 	bl	c0de67f8 <io_send_response_buffers>
c0de06a0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06a2 <io_send_sw>:
c0de06a2:	b580      	push	{r7, lr}
c0de06a4:	4602      	mov	r2, r0
c0de06a6:	2000      	movs	r0, #0
c0de06a8:	2100      	movs	r1, #0
c0de06aa:	f006 f8a5 	bl	c0de67f8 <io_send_response_buffers>
c0de06ae:	bd80      	pop	{r7, pc}

c0de06b0 <handler_cmd_keccakH>:
c0de06b0:	b510      	push	{r4, lr}
c0de06b2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06b4:	4604      	mov	r4, r0
c0de06b6:	4668      	mov	r0, sp
c0de06b8:	2106      	movs	r1, #6
c0de06ba:	2220      	movs	r2, #32
c0de06bc:	f006 fb2a 	bl	c0de6d14 <cx_hash_init_ex>
c0de06c0:	b950      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06c2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06c6:	4668      	mov	r0, sp
c0de06c8:	f006 fb29 	bl	c0de6d1e <cx_hash_update>
c0de06cc:	b920      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06ce:	4668      	mov	r0, sp
c0de06d0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06d2:	f006 fb1a 	bl	c0de6d0a <cx_hash_final>
c0de06d6:	b118      	cbz	r0, c0de06e0 <handler_cmd_keccakH+0x30>
c0de06d8:	f000 fe58 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de06dc:	b072      	add	sp, #456	@ 0x1c8
c0de06de:	bd10      	pop	{r4, pc}
c0de06e0:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de06e2:	f000 fe82 	bl	c0de13ea <OUTLINED_FUNCTION_12>
c0de06e6:	2000      	movs	r0, #0
c0de06e8:	e7f8      	b.n	c0de06dc <handler_cmd_keccakH+0x2c>
	...

c0de06ec <handler_cmd_bolos_stretch>:
c0de06ec:	b510      	push	{r4, lr}
c0de06ee:	b0a4      	sub	sp, #144	@ 0x90
c0de06f0:	f000 fe48 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de06f4:	bba0      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de06f6:	ac14      	add	r4, sp, #80	@ 0x50
c0de06f8:	491e      	ldr	r1, [pc, #120]	@ (c0de0774 <handler_cmd_bolos_stretch+0x88>)
c0de06fa:	2220      	movs	r2, #32
c0de06fc:	4620      	mov	r0, r4
c0de06fe:	4479      	add	r1, pc
c0de0700:	f007 f82a 	bl	c0de7758 <__aeabi_memcpy>
c0de0704:	a80c      	add	r0, sp, #48	@ 0x30
c0de0706:	491c      	ldr	r1, [pc, #112]	@ (c0de0778 <handler_cmd_bolos_stretch+0x8c>)
c0de0708:	2220      	movs	r2, #32
c0de070a:	4479      	add	r1, pc
c0de070c:	f007 f824 	bl	c0de7758 <__aeabi_memcpy>
c0de0710:	a804      	add	r0, sp, #16
c0de0712:	491a      	ldr	r1, [pc, #104]	@ (c0de077c <handler_cmd_bolos_stretch+0x90>)
c0de0714:	2220      	movs	r2, #32
c0de0716:	4479      	add	r1, pc
c0de0718:	f007 f81e 	bl	c0de7758 <__aeabi_memcpy>
c0de071c:	a803      	add	r0, sp, #12
c0de071e:	2120      	movs	r1, #32
c0de0720:	4622      	mov	r2, r4
c0de0722:	f000 fe47 	bl	c0de13b4 <OUTLINED_FUNCTION_6>
c0de0726:	b9d8      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0728:	a802      	add	r0, sp, #8
c0de072a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de072c:	2120      	movs	r1, #32
c0de072e:	f000 fe41 	bl	c0de13b4 <OUTLINED_FUNCTION_6>
c0de0732:	b9a8      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0734:	a801      	add	r0, sp, #4
c0de0736:	aa04      	add	r2, sp, #16
c0de0738:	2120      	movs	r1, #32
c0de073a:	f000 fe3b 	bl	c0de13b4 <OUTLINED_FUNCTION_6>
c0de073e:	b978      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0740:	4668      	mov	r0, sp
c0de0742:	f000 fe29 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de0746:	b958      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0748:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de074c:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0750:	f006 fdc6 	bl	c0de72e0 <cx_bn_mod_add>
c0de0754:	b920      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0756:	9800      	ldr	r0, [sp, #0]
c0de0758:	a91c      	add	r1, sp, #112	@ 0x70
c0de075a:	f000 fe1a 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de075e:	b118      	cbz	r0, c0de0768 <handler_cmd_bolos_stretch+0x7c>
c0de0760:	f000 fe14 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0764:	b024      	add	sp, #144	@ 0x90
c0de0766:	bd10      	pop	{r4, pc}
c0de0768:	a81c      	add	r0, sp, #112	@ 0x70
c0de076a:	f000 fe3e 	bl	c0de13ea <OUTLINED_FUNCTION_12>
c0de076e:	2000      	movs	r0, #0
c0de0770:	e7f8      	b.n	c0de0764 <handler_cmd_bolos_stretch+0x78>
c0de0772:	bf00      	nop
c0de0774:	0000776e 	.word	0x0000776e
c0de0778:	000076e2 	.word	0x000076e2
c0de077c:	000077f6 	.word	0x000077f6

c0de0780 <handler_cmd_Poseidon>:
c0de0780:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0784:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0788:	4604      	mov	r4, r0
c0de078a:	a860      	add	r0, sp, #384	@ 0x180
c0de078c:	493d      	ldr	r1, [pc, #244]	@ (c0de0884 <handler_cmd_Poseidon+0x104>)
c0de078e:	22a0      	movs	r2, #160	@ 0xa0
c0de0790:	4479      	add	r1, pc
c0de0792:	f006 ffe1 	bl	c0de7758 <__aeabi_memcpy>
c0de0796:	f000 fdf5 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de079a:	bb68      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de079c:	2000      	movs	r0, #0
c0de079e:	a948      	add	r1, sp, #288	@ 0x120
c0de07a0:	22ff      	movs	r2, #255	@ 0xff
c0de07a2:	2860      	cmp	r0, #96	@ 0x60
c0de07a4:	d002      	beq.n	c0de07ac <handler_cmd_Poseidon+0x2c>
c0de07a6:	540a      	strb	r2, [r1, r0]
c0de07a8:	3001      	adds	r0, #1
c0de07aa:	e7fa      	b.n	c0de07a2 <handler_cmd_Poseidon+0x22>
c0de07ac:	4936      	ldr	r1, [pc, #216]	@ (c0de0888 <handler_cmd_Poseidon+0x108>)
c0de07ae:	466d      	mov	r5, sp
c0de07b0:	2220      	movs	r2, #32
c0de07b2:	4628      	mov	r0, r5
c0de07b4:	4479      	add	r1, pc
c0de07b6:	f006 ffcf 	bl	c0de7758 <__aeabi_memcpy>
c0de07ba:	a809      	add	r0, sp, #36	@ 0x24
c0de07bc:	2120      	movs	r1, #32
c0de07be:	462a      	mov	r2, r5
c0de07c0:	f000 fdf8 	bl	c0de13b4 <OUTLINED_FUNCTION_6>
c0de07c4:	b9c0      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07c6:	a808      	add	r0, sp, #32
c0de07c8:	466a      	mov	r2, sp
c0de07ca:	2120      	movs	r1, #32
c0de07cc:	f000 fdf2 	bl	c0de13b4 <OUTLINED_FUNCTION_6>
c0de07d0:	b990      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07d2:	a80a      	add	r0, sp, #40	@ 0x28
c0de07d4:	2120      	movs	r1, #32
c0de07d6:	f006 fdc9 	bl	c0de736c <cx_mont_alloc>
c0de07da:	b968      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07dc:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07de:	a80a      	add	r0, sp, #40	@ 0x28
c0de07e0:	f006 fdce 	bl	c0de7380 <cx_mont_init>
c0de07e4:	b940      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07e6:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de07ea:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07ec:	2105      	movs	r1, #5
c0de07ee:	2205      	movs	r2, #5
c0de07f0:	4640      	mov	r0, r8
c0de07f2:	f002 fb7f 	bl	c0de2ef4 <Poseidon_alloc_init>
c0de07f6:	b128      	cbz	r0, c0de0804 <handler_cmd_Poseidon+0x84>
c0de07f8:	f000 fdc8 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de07fc:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0800:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0804:	2700      	movs	r7, #0
c0de0806:	ae60      	add	r6, sp, #384	@ 0x180
c0de0808:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de080a:	4287      	cmp	r7, r0
c0de080c:	d212      	bcs.n	c0de0834 <handler_cmd_Poseidon+0xb4>
c0de080e:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de0812:	4631      	mov	r1, r6
c0de0814:	2220      	movs	r2, #32
c0de0816:	69e8      	ldr	r0, [r5, #28]
c0de0818:	f006 fd12 	bl	c0de7240 <cx_bn_init>
c0de081c:	2800      	cmp	r0, #0
c0de081e:	d1eb      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0820:	69e8      	ldr	r0, [r5, #28]
c0de0822:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0824:	4601      	mov	r1, r0
c0de0826:	f006 fdb5 	bl	c0de7394 <cx_mont_to_montgomery>
c0de082a:	3701      	adds	r7, #1
c0de082c:	3620      	adds	r6, #32
c0de082e:	2800      	cmp	r0, #0
c0de0830:	d0ea      	beq.n	c0de0808 <handler_cmd_Poseidon+0x88>
c0de0832:	e7e1      	b.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0834:	aa08      	add	r2, sp, #32
c0de0836:	4640      	mov	r0, r8
c0de0838:	2100      	movs	r1, #0
c0de083a:	2301      	movs	r3, #1
c0de083c:	f002 fbc0 	bl	c0de2fc0 <Poseidon>
c0de0840:	6820      	ldr	r0, [r4, #0]
c0de0842:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0844:	7800      	ldrb	r0, [r0, #0]
c0de0846:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de084a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de084e:	4601      	mov	r1, r0
c0de0850:	f006 fdac 	bl	c0de73ac <cx_mont_from_montgomery>
c0de0854:	2800      	cmp	r0, #0
c0de0856:	d1cf      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0858:	6820      	ldr	r0, [r4, #0]
c0de085a:	a948      	add	r1, sp, #288	@ 0x120
c0de085c:	f000 fd99 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0860:	2800      	cmp	r0, #0
c0de0862:	d1c9      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0864:	a848      	add	r0, sp, #288	@ 0x120
c0de0866:	2160      	movs	r1, #96	@ 0x60
c0de0868:	f7ff ff10 	bl	c0de068c <io_send_response_pointer>
c0de086c:	a808      	add	r0, sp, #32
c0de086e:	f006 fcd3 	bl	c0de7218 <cx_bn_destroy>
c0de0872:	2800      	cmp	r0, #0
c0de0874:	d1c0      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0876:	f006 fcb1 	bl	c0de71dc <cx_bn_unlock>
c0de087a:	2800      	cmp	r0, #0
c0de087c:	d1bc      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de087e:	2000      	movs	r0, #0
c0de0880:	e7bc      	b.n	c0de07fc <handler_cmd_Poseidon+0x7c>
c0de0882:	bf00      	nop
c0de0884:	0000785c 	.word	0x0000785c
c0de0888:	000077b8 	.word	0x000077b8

c0de088c <handler_cmd_Poseidon_ithRC>:
c0de088c:	b570      	push	{r4, r5, r6, lr}
c0de088e:	b0d0      	sub	sp, #320	@ 0x140
c0de0890:	4604      	mov	r4, r0
c0de0892:	f000 fd77 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de0896:	bba0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de0898:	a848      	add	r0, sp, #288	@ 0x120
c0de089a:	491d      	ldr	r1, [pc, #116]	@ (c0de0910 <handler_cmd_Poseidon_ithRC+0x84>)
c0de089c:	2220      	movs	r2, #32
c0de089e:	4479      	add	r1, pc
c0de08a0:	f006 ff5a 	bl	c0de7758 <__aeabi_memcpy>
c0de08a4:	ad01      	add	r5, sp, #4
c0de08a6:	491b      	ldr	r1, [pc, #108]	@ (c0de0914 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08a8:	2220      	movs	r2, #32
c0de08aa:	4628      	mov	r0, r5
c0de08ac:	4479      	add	r1, pc
c0de08ae:	f006 ff53 	bl	c0de7758 <__aeabi_memcpy>
c0de08b2:	a809      	add	r0, sp, #36	@ 0x24
c0de08b4:	2120      	movs	r1, #32
c0de08b6:	462a      	mov	r2, r5
c0de08b8:	f000 fd7c 	bl	c0de13b4 <OUTLINED_FUNCTION_6>
c0de08bc:	bb08      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08be:	a80a      	add	r0, sp, #40	@ 0x28
c0de08c0:	2120      	movs	r1, #32
c0de08c2:	f006 fd53 	bl	c0de736c <cx_mont_alloc>
c0de08c6:	b9e0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08c8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08ca:	a80a      	add	r0, sp, #40	@ 0x28
c0de08cc:	f006 fd58 	bl	c0de7380 <cx_mont_init>
c0de08d0:	b9b8      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08d2:	a80c      	add	r0, sp, #48	@ 0x30
c0de08d4:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08d6:	2105      	movs	r1, #5
c0de08d8:	2205      	movs	r2, #5
c0de08da:	f002 fb0b 	bl	c0de2ef4 <Poseidon_alloc_init>
c0de08de:	b980      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08e0:	6820      	ldr	r0, [r4, #0]
c0de08e2:	7806      	ldrb	r6, [r0, #0]
c0de08e4:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08e6:	ad48      	add	r5, sp, #288	@ 0x120
c0de08e8:	b12e      	cbz	r6, c0de08f6 <handler_cmd_Poseidon_ithRC+0x6a>
c0de08ea:	4620      	mov	r0, r4
c0de08ec:	4629      	mov	r1, r5
c0de08ee:	f002 fafd 	bl	c0de2eec <Poseidon_getNext_RC>
c0de08f2:	3e01      	subs	r6, #1
c0de08f4:	e7f8      	b.n	c0de08e8 <handler_cmd_Poseidon_ithRC+0x5c>
c0de08f6:	a848      	add	r0, sp, #288	@ 0x120
c0de08f8:	f000 fd77 	bl	c0de13ea <OUTLINED_FUNCTION_12>
c0de08fc:	f006 fc6e 	bl	c0de71dc <cx_bn_unlock>
c0de0900:	b118      	cbz	r0, c0de090a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0902:	f000 fd43 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0906:	b050      	add	sp, #320	@ 0x140
c0de0908:	bd70      	pop	{r4, r5, r6, pc}
c0de090a:	2000      	movs	r0, #0
c0de090c:	e7fb      	b.n	c0de0906 <handler_cmd_Poseidon_ithRC+0x7a>
c0de090e:	bf00      	nop
c0de0910:	0000752e 	.word	0x0000752e
c0de0914:	000076c0 	.word	0x000076c0

c0de0918 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0918:	b5b0      	push	{r4, r5, r7, lr}
c0de091a:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de091e:	6801      	ldr	r1, [r0, #0]
c0de0920:	2200      	movs	r2, #0
c0de0922:	23ff      	movs	r3, #255	@ 0xff
c0de0924:	780d      	ldrb	r5, [r1, #0]
c0de0926:	ac5a      	add	r4, sp, #360	@ 0x168
c0de0928:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de092c:	d002      	beq.n	c0de0934 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de092e:	54a3      	strb	r3, [r4, r2]
c0de0930:	3201      	adds	r2, #1
c0de0932:	e7f9      	b.n	c0de0928 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de0934:	6840      	ldr	r0, [r0, #4]
c0de0936:	3101      	adds	r1, #1
c0de0938:	aa1a      	add	r2, sp, #104	@ 0x68
c0de093a:	3801      	subs	r0, #1
c0de093c:	b128      	cbz	r0, c0de094a <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de093e:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de0942:	3801      	subs	r0, #1
c0de0944:	f802 3b01 	strb.w	r3, [r2], #1
c0de0948:	e7f8      	b.n	c0de093c <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de094a:	f000 fd1b 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de094e:	b9e8      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0950:	a804      	add	r0, sp, #16
c0de0952:	f000 fd47 	bl	c0de13e4 <OUTLINED_FUNCTION_11>
c0de0956:	b9c8      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0958:	a804      	add	r0, sp, #16
c0de095a:	a901      	add	r1, sp, #4
c0de095c:	f001 fdae 	bl	c0de24bc <tEdwards_alloc>
c0de0960:	b9a0      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0962:	a804      	add	r0, sp, #16
c0de0964:	a91a      	add	r1, sp, #104	@ 0x68
c0de0966:	aa01      	add	r2, sp, #4
c0de0968:	f001 f9b6 	bl	c0de1cd8 <zkn_prv2pub>
c0de096c:	b970      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de096e:	a804      	add	r0, sp, #16
c0de0970:	f104 0320 	add.w	r3, r4, #32
c0de0974:	a901      	add	r1, sp, #4
c0de0976:	f000 fd20 	bl	c0de13ba <OUTLINED_FUNCTION_7>
c0de097a:	b938      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de097c:	9804      	ldr	r0, [sp, #16]
c0de097e:	0041      	lsls	r1, r0, #1
c0de0980:	a85a      	add	r0, sp, #360	@ 0x168
c0de0982:	f7ff fe83 	bl	c0de068c <io_send_response_pointer>
c0de0986:	f006 fc29 	bl	c0de71dc <cx_bn_unlock>
c0de098a:	b120      	cbz	r0, c0de0996 <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de098c:	f000 fcfe 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0990:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de0994:	bdb0      	pop	{r4, r5, r7, pc}
c0de0996:	2000      	movs	r0, #0
c0de0998:	e7fa      	b.n	c0de0990 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de099a <handler_cmd_tEddsaPoseidon_Sign>:
c0de099a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de099c:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de09a0:	4606      	mov	r6, r0
c0de09a2:	6800      	ldr	r0, [r0, #0]
c0de09a4:	2100      	movs	r1, #0
c0de09a6:	22ff      	movs	r2, #255	@ 0xff
c0de09a8:	7805      	ldrb	r5, [r0, #0]
c0de09aa:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de09ac:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de09b0:	d002      	beq.n	c0de09b8 <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de09b2:	5462      	strb	r2, [r4, r1]
c0de09b4:	3101      	adds	r1, #1
c0de09b6:	e7f9      	b.n	c0de09ac <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de09b8:	6871      	ldr	r1, [r6, #4]
c0de09ba:	3001      	adds	r0, #1
c0de09bc:	aa2b      	add	r2, sp, #172	@ 0xac
c0de09be:	3901      	subs	r1, #1
c0de09c0:	b129      	cbz	r1, c0de09ce <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de09c2:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de09c6:	3901      	subs	r1, #1
c0de09c8:	f802 3b01 	strb.w	r3, [r2], #1
c0de09cc:	e7f8      	b.n	c0de09c0 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de09ce:	f000 fcd9 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de09d2:	bba0      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09d4:	6830      	ldr	r0, [r6, #0]
c0de09d6:	aa0a      	add	r2, sp, #40	@ 0x28
c0de09d8:	2100      	movs	r1, #0
c0de09da:	ab02      	add	r3, sp, #8
c0de09dc:	2920      	cmp	r1, #32
c0de09de:	d007      	beq.n	c0de09f0 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de09e0:	1846      	adds	r6, r0, r1
c0de09e2:	7877      	ldrb	r7, [r6, #1]
c0de09e4:	5457      	strb	r7, [r2, r1]
c0de09e6:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de09ea:	545e      	strb	r6, [r3, r1]
c0de09ec:	3101      	adds	r1, #1
c0de09ee:	e7f5      	b.n	c0de09dc <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de09f0:	a815      	add	r0, sp, #84	@ 0x54
c0de09f2:	f000 fcf7 	bl	c0de13e4 <OUTLINED_FUNCTION_11>
c0de09f6:	bb10      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09f8:	a815      	add	r0, sp, #84	@ 0x54
c0de09fa:	a912      	add	r1, sp, #72	@ 0x48
c0de09fc:	f001 fd5e 	bl	c0de24bc <tEdwards_alloc>
c0de0a00:	b9e8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a02:	a815      	add	r0, sp, #84	@ 0x54
c0de0a04:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a06:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a08:	f001 f966 	bl	c0de1cd8 <zkn_prv2pub>
c0de0a0c:	b9b8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a0e:	a815      	add	r0, sp, #84	@ 0x54
c0de0a10:	f104 0320 	add.w	r3, r4, #32
c0de0a14:	a912      	add	r1, sp, #72	@ 0x48
c0de0a16:	f000 fcd0 	bl	c0de13ba <OUTLINED_FUNCTION_7>
c0de0a1a:	b980      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a1c:	2020      	movs	r0, #32
c0de0a1e:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a22:	a815      	add	r0, sp, #84	@ 0x54
c0de0a24:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a26:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a28:	ab02      	add	r3, sp, #8
c0de0a2a:	f001 f97d 	bl	c0de1d28 <EddsaPoseidon_Sign_final>
c0de0a2e:	b930      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a30:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a32:	2160      	movs	r1, #96	@ 0x60
c0de0a34:	f7ff fe2a 	bl	c0de068c <io_send_response_pointer>
c0de0a38:	f006 fbd0 	bl	c0de71dc <cx_bn_unlock>
c0de0a3c:	b120      	cbz	r0, c0de0a48 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a3e:	f000 fca5 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0a42:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0a46:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a48:	2000      	movs	r0, #0
c0de0a4a:	e7fa      	b.n	c0de0a42 <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0a4c <handler_cmd_tEddsaPoseidon>:
c0de0a4c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0a50:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0a52:	4605      	mov	r5, r0
c0de0a54:	6800      	ldr	r0, [r0, #0]
c0de0a56:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0a5a:	21ff      	movs	r1, #255	@ 0xff
c0de0a5c:	7806      	ldrb	r6, [r0, #0]
c0de0a5e:	2000      	movs	r0, #0
c0de0a60:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a64:	d002      	beq.n	c0de0a6c <handler_cmd_tEddsaPoseidon+0x20>
c0de0a66:	5421      	strb	r1, [r4, r0]
c0de0a68:	3001      	adds	r0, #1
c0de0a6a:	e7f9      	b.n	c0de0a60 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a6c:	f000 fc8a 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de0a70:	2800      	cmp	r0, #0
c0de0a72:	d154      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a74:	af14      	add	r7, sp, #80	@ 0x50
c0de0a76:	4631      	mov	r1, r6
c0de0a78:	4638      	mov	r0, r7
c0de0a7a:	f001 fe9f 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de0a7e:	2800      	cmp	r0, #0
c0de0a80:	d14d      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a82:	f107 060c 	add.w	r6, r7, #12
c0de0a86:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a8a:	4638      	mov	r0, r7
c0de0a8c:	4631      	mov	r1, r6
c0de0a8e:	f001 fe3e 	bl	c0de270e <tEdwards_IsOnCurve>
c0de0a92:	2800      	cmp	r0, #0
c0de0a94:	d143      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a96:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0a9a:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a9e:	2901      	cmp	r1, #1
c0de0aa0:	d13d      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aa2:	4922      	ldr	r1, [pc, #136]	@ (c0de0b2c <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0aa4:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0aa8:	2220      	movs	r2, #32
c0de0aaa:	4650      	mov	r0, sl
c0de0aac:	4479      	add	r1, pc
c0de0aae:	f006 fe53 	bl	c0de7758 <__aeabi_memcpy>
c0de0ab2:	af01      	add	r7, sp, #4
c0de0ab4:	491e      	ldr	r1, [pc, #120]	@ (c0de0b30 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ab6:	2220      	movs	r2, #32
c0de0ab8:	4638      	mov	r0, r7
c0de0aba:	4479      	add	r1, pc
c0de0abc:	f006 fe4c 	bl	c0de7758 <__aeabi_memcpy>
c0de0ac0:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0ac4:	a814      	add	r0, sp, #80	@ 0x50
c0de0ac6:	4651      	mov	r1, sl
c0de0ac8:	463a      	mov	r2, r7
c0de0aca:	4643      	mov	r3, r8
c0de0acc:	f002 f867 	bl	c0de2b9e <tEdwards_alloc_init>
c0de0ad0:	bb28      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad2:	a814      	add	r0, sp, #80	@ 0x50
c0de0ad4:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0ad8:	4631      	mov	r1, r6
c0de0ada:	f001 fe18 	bl	c0de270e <tEdwards_IsOnCurve>
c0de0ade:	b9f0      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ae0:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0ae4:	2801      	cmp	r0, #1
c0de0ae6:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0aea:	d118      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aec:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0af0:	f8cd 8000 	str.w	r8, [sp]
c0de0af4:	1c42      	adds	r2, r0, #1
c0de0af6:	1e4b      	subs	r3, r1, #1
c0de0af8:	a814      	add	r0, sp, #80	@ 0x50
c0de0afa:	4631      	mov	r1, r6
c0de0afc:	f002 f8d4 	bl	c0de2ca8 <tEdwards_scalarMul>
c0de0b00:	b968      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b02:	a814      	add	r0, sp, #80	@ 0x50
c0de0b04:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b08:	a911      	add	r1, sp, #68	@ 0x44
c0de0b0a:	f000 fc56 	bl	c0de13ba <OUTLINED_FUNCTION_7>
c0de0b0e:	b930      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b10:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b14:	f000 fc4a 	bl	c0de13ac <OUTLINED_FUNCTION_5>
c0de0b18:	f006 fb60 	bl	c0de71dc <cx_bn_unlock>
c0de0b1c:	b120      	cbz	r0, c0de0b28 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b1e:	f000 fc35 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0b22:	b06b      	add	sp, #428	@ 0x1ac
c0de0b24:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b28:	2000      	movs	r0, #0
c0de0b2a:	e7fa      	b.n	c0de0b22 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b2c:	000074e0 	.word	0x000074e0
c0de0b30:	000074f2 	.word	0x000074f2

c0de0b34 <handler_cmd_tEdwards>:
c0de0b34:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b36:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0b38:	4605      	mov	r5, r0
c0de0b3a:	6840      	ldr	r0, [r0, #4]
c0de0b3c:	2841      	cmp	r0, #65	@ 0x41
c0de0b3e:	d801      	bhi.n	c0de0b44 <handler_cmd_tEdwards+0x10>
c0de0b40:	2802      	cmp	r0, #2
c0de0b42:	d202      	bcs.n	c0de0b4a <handler_cmd_tEdwards+0x16>
c0de0b44:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0b48:	e015      	b.n	c0de0b76 <handler_cmd_tEdwards+0x42>
c0de0b4a:	6828      	ldr	r0, [r5, #0]
c0de0b4c:	21ff      	movs	r1, #255	@ 0xff
c0de0b4e:	7806      	ldrb	r6, [r0, #0]
c0de0b50:	2000      	movs	r0, #0
c0de0b52:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0b54:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0b58:	d002      	beq.n	c0de0b60 <handler_cmd_tEdwards+0x2c>
c0de0b5a:	5421      	strb	r1, [r4, r0]
c0de0b5c:	3001      	adds	r0, #1
c0de0b5e:	e7f9      	b.n	c0de0b54 <handler_cmd_tEdwards+0x20>
c0de0b60:	f000 fc10 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de0b64:	b920      	cbnz	r0, c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0b66:	a819      	add	r0, sp, #100	@ 0x64
c0de0b68:	4631      	mov	r1, r6
c0de0b6a:	f001 fe27 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de0b6e:	b120      	cbz	r0, c0de0b7a <handler_cmd_tEdwards+0x46>
c0de0b70:	b280      	uxth	r0, r0
c0de0b72:	f7ff fd96 	bl	c0de06a2 <io_send_sw>
c0de0b76:	b06f      	add	sp, #444	@ 0x1bc
c0de0b78:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0b7a:	2e02      	cmp	r6, #2
c0de0b7c:	d00c      	beq.n	c0de0b98 <handler_cmd_tEdwards+0x64>
c0de0b7e:	2e01      	cmp	r6, #1
c0de0b80:	d128      	bne.n	c0de0bd4 <handler_cmd_tEdwards+0xa0>
c0de0b82:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b84:	4942      	ldr	r1, [pc, #264]	@ (c0de0c90 <handler_cmd_tEdwards+0x15c>)
c0de0b86:	2220      	movs	r2, #32
c0de0b88:	4630      	mov	r0, r6
c0de0b8a:	4479      	add	r1, pc
c0de0b8c:	f006 fde4 	bl	c0de7758 <__aeabi_memcpy>
c0de0b90:	af03      	add	r7, sp, #12
c0de0b92:	4940      	ldr	r1, [pc, #256]	@ (c0de0c94 <handler_cmd_tEdwards+0x160>)
c0de0b94:	4479      	add	r1, pc
c0de0b96:	e009      	b.n	c0de0bac <handler_cmd_tEdwards+0x78>
c0de0b98:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b9a:	493f      	ldr	r1, [pc, #252]	@ (c0de0c98 <handler_cmd_tEdwards+0x164>)
c0de0b9c:	2220      	movs	r2, #32
c0de0b9e:	4630      	mov	r0, r6
c0de0ba0:	4479      	add	r1, pc
c0de0ba2:	f006 fdd9 	bl	c0de7758 <__aeabi_memcpy>
c0de0ba6:	af03      	add	r7, sp, #12
c0de0ba8:	493c      	ldr	r1, [pc, #240]	@ (c0de0c9c <handler_cmd_tEdwards+0x168>)
c0de0baa:	4479      	add	r1, pc
c0de0bac:	4638      	mov	r0, r7
c0de0bae:	2220      	movs	r2, #32
c0de0bb0:	f006 fdd2 	bl	c0de7758 <__aeabi_memcpy>
c0de0bb4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bb6:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bb8:	4631      	mov	r1, r6
c0de0bba:	463a      	mov	r2, r7
c0de0bbc:	f001 ffef 	bl	c0de2b9e <tEdwards_alloc_init>
c0de0bc0:	2800      	cmp	r0, #0
c0de0bc2:	d1d5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bc4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bc8:	aa03      	add	r2, sp, #12
c0de0bca:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bcc:	f001 ffe7 	bl	c0de2b9e <tEdwards_alloc_init>
c0de0bd0:	2800      	cmp	r0, #0
c0de0bd2:	d1cd      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bd4:	2000      	movs	r0, #0
c0de0bd6:	f10d 020b 	add.w	r2, sp, #11
c0de0bda:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bde:	a819      	add	r0, sp, #100	@ 0x64
c0de0be0:	a916      	add	r1, sp, #88	@ 0x58
c0de0be2:	f001 fd94 	bl	c0de270e <tEdwards_IsOnCurve>
c0de0be6:	2800      	cmp	r0, #0
c0de0be8:	d1c2      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bea:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bee:	2801      	cmp	r0, #1
c0de0bf0:	d142      	bne.n	c0de0c78 <handler_cmd_tEdwards+0x144>
c0de0bf2:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf4:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0bf6:	f10d 020b 	add.w	r2, sp, #11
c0de0bfa:	4631      	mov	r1, r6
c0de0bfc:	f001 fd87 	bl	c0de270e <tEdwards_IsOnCurve>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d1b5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c04:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c08:	2801      	cmp	r0, #1
c0de0c0a:	d138      	bne.n	c0de0c7e <handler_cmd_tEdwards+0x14a>
c0de0c0c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c0e:	f10d 010b 	add.w	r1, sp, #11
c0de0c12:	f006 fba1 	bl	c0de7358 <cx_bn_is_prime>
c0de0c16:	2800      	cmp	r0, #0
c0de0c18:	d1aa      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c1a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1e:	2801      	cmp	r0, #1
c0de0c20:	d130      	bne.n	c0de0c84 <handler_cmd_tEdwards+0x150>
c0de0c22:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c24:	f10d 010b 	add.w	r1, sp, #11
c0de0c28:	f006 fb96 	bl	c0de7358 <cx_bn_is_prime>
c0de0c2c:	2800      	cmp	r0, #0
c0de0c2e:	d19f      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c30:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c34:	2801      	cmp	r0, #1
c0de0c36:	d128      	bne.n	c0de0c8a <handler_cmd_tEdwards+0x156>
c0de0c38:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0c3c:	9600      	str	r6, [sp, #0]
c0de0c3e:	1c42      	adds	r2, r0, #1
c0de0c40:	1e4b      	subs	r3, r1, #1
c0de0c42:	a819      	add	r0, sp, #100	@ 0x64
c0de0c44:	a916      	add	r1, sp, #88	@ 0x58
c0de0c46:	f002 f82f 	bl	c0de2ca8 <tEdwards_scalarMul>
c0de0c4a:	2800      	cmp	r0, #0
c0de0c4c:	d190      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c4e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c50:	f104 0320 	add.w	r3, r4, #32
c0de0c54:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c56:	f000 fbb0 	bl	c0de13ba <OUTLINED_FUNCTION_7>
c0de0c5a:	2800      	cmp	r0, #0
c0de0c5c:	f47f af88 	bne.w	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c60:	f006 fabc 	bl	c0de71dc <cx_bn_unlock>
c0de0c64:	2800      	cmp	r0, #0
c0de0c66:	f47f af83 	bne.w	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c6a:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c6c:	0041      	lsls	r1, r0, #1
c0de0c6e:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0c70:	f7ff fd0c 	bl	c0de068c <io_send_response_pointer>
c0de0c74:	2000      	movs	r0, #0
c0de0c76:	e77e      	b.n	c0de0b76 <handler_cmd_tEdwards+0x42>
c0de0c78:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0c7c:	e779      	b.n	c0de0b72 <handler_cmd_tEdwards+0x3e>
c0de0c7e:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0c82:	e776      	b.n	c0de0b72 <handler_cmd_tEdwards+0x3e>
c0de0c84:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0c88:	e773      	b.n	c0de0b72 <handler_cmd_tEdwards+0x3e>
c0de0c8a:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0c8e:	e770      	b.n	c0de0b72 <handler_cmd_tEdwards+0x3e>
c0de0c90:	00007282 	.word	0x00007282
c0de0c94:	000072f8 	.word	0x000072f8
c0de0c98:	0000728c 	.word	0x0000728c
c0de0c9c:	00007202 	.word	0x00007202

c0de0ca0 <handler_cmd_Interpolate>:
c0de0ca0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0ca4:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0ca8:	4605      	mov	r5, r0
c0de0caa:	6800      	ldr	r0, [r0, #0]
c0de0cac:	22ff      	movs	r2, #255	@ 0xff
c0de0cae:	7804      	ldrb	r4, [r0, #0]
c0de0cb0:	2000      	movs	r0, #0
c0de0cb2:	a944      	add	r1, sp, #272	@ 0x110
c0de0cb4:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0cb8:	d002      	beq.n	c0de0cc0 <handler_cmd_Interpolate+0x20>
c0de0cba:	540a      	strb	r2, [r1, r0]
c0de0cbc:	3001      	adds	r0, #1
c0de0cbe:	e7f9      	b.n	c0de0cb4 <handler_cmd_Interpolate+0x14>
c0de0cc0:	f000 fb60 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de0cc4:	bb28      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cc6:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0cca:	4621      	mov	r1, r4
c0de0ccc:	4640      	mov	r0, r8
c0de0cce:	f001 fd75 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de0cd2:	b9f0      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cd4:	a827      	add	r0, sp, #156	@ 0x9c
c0de0cd6:	f000 fb5f 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de0cda:	b9d0      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cdc:	6828      	ldr	r0, [r5, #0]
c0de0cde:	2100      	movs	r1, #0
c0de0ce0:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0ce2:	3001      	adds	r0, #1
c0de0ce4:	2960      	cmp	r1, #96	@ 0x60
c0de0ce6:	d003      	beq.n	c0de0cf0 <handler_cmd_Interpolate+0x50>
c0de0ce8:	5c43      	ldrb	r3, [r0, r1]
c0de0cea:	5453      	strb	r3, [r2, r1]
c0de0cec:	3101      	adds	r1, #1
c0de0cee:	e7f9      	b.n	c0de0ce4 <handler_cmd_Interpolate+0x44>
c0de0cf0:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0cf2:	2100      	movs	r1, #0
c0de0cf4:	af2b      	add	r7, sp, #172	@ 0xac
c0de0cf6:	1d0c      	adds	r4, r1, #4
c0de0cf8:	2c10      	cmp	r4, #16
c0de0cfa:	d010      	beq.n	c0de0d1e <handler_cmd_Interpolate+0x7e>
c0de0cfc:	1878      	adds	r0, r7, r1
c0de0cfe:	2120      	movs	r1, #32
c0de0d00:	2320      	movs	r3, #32
c0de0d02:	f102 0520 	add.w	r5, r2, #32
c0de0d06:	f006 fa7b 	bl	c0de7200 <cx_bn_alloc_init>
c0de0d0a:	2800      	cmp	r0, #0
c0de0d0c:	462a      	mov	r2, r5
c0de0d0e:	4621      	mov	r1, r4
c0de0d10:	d0f1      	beq.n	c0de0cf6 <handler_cmd_Interpolate+0x56>
c0de0d12:	f000 fb3b 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0d16:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d1a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d1e:	f108 000c 	add.w	r0, r8, #12
c0de0d22:	f04f 0a00 	mov.w	sl, #0
c0de0d26:	2601      	movs	r6, #1
c0de0d28:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d2c:	9001      	str	r0, [sp, #4]
c0de0d2e:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d30:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d34:	d03b      	beq.n	c0de0dae <handler_cmd_Interpolate+0x10e>
c0de0d36:	a828      	add	r0, sp, #160	@ 0xa0
c0de0d38:	2120      	movs	r1, #32
c0de0d3a:	eb00 040a 	add.w	r4, r0, sl
c0de0d3e:	4620      	mov	r0, r4
c0de0d40:	f006 fa54 	bl	c0de71ec <cx_bn_alloc>
c0de0d44:	2800      	cmp	r0, #0
c0de0d46:	d1e4      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d48:	6820      	ldr	r0, [r4, #0]
c0de0d4a:	4631      	mov	r1, r6
c0de0d4c:	f006 fa8e 	bl	c0de726c <cx_bn_set_u32>
c0de0d50:	2800      	cmp	r0, #0
c0de0d52:	d1de      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d54:	4640      	mov	r0, r8
c0de0d56:	4659      	mov	r1, fp
c0de0d58:	f001 fbb0 	bl	c0de24bc <tEdwards_alloc>
c0de0d5c:	2800      	cmp	r0, #0
c0de0d5e:	d1d8      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d60:	9602      	str	r6, [sp, #8]
c0de0d62:	eb07 060a 	add.w	r6, r7, sl
c0de0d66:	9901      	ldr	r1, [sp, #4]
c0de0d68:	4640      	mov	r0, r8
c0de0d6a:	465b      	mov	r3, fp
c0de0d6c:	4632      	mov	r2, r6
c0de0d6e:	f001 ff35 	bl	c0de2bdc <tEdwards_scalarMul_bn>
c0de0d72:	2800      	cmp	r0, #0
c0de0d74:	d1cd      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d76:	6820      	ldr	r0, [r4, #0]
c0de0d78:	4629      	mov	r1, r5
c0de0d7a:	f000 fb0a 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0d7e:	2800      	cmp	r0, #0
c0de0d80:	d1c7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d82:	6830      	ldr	r0, [r6, #0]
c0de0d84:	f105 0120 	add.w	r1, r5, #32
c0de0d88:	f000 fb03 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0d8c:	2800      	cmp	r0, #0
c0de0d8e:	d1c0      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d90:	4640      	mov	r0, r8
c0de0d92:	4659      	mov	r1, fp
c0de0d94:	f001 fec3 	bl	c0de2b1e <tEdwards_normalize>
c0de0d98:	9e02      	ldr	r6, [sp, #8]
c0de0d9a:	3540      	adds	r5, #64	@ 0x40
c0de0d9c:	f10b 0b0c 	add.w	fp, fp, #12
c0de0da0:	f10a 0a04 	add.w	sl, sl, #4
c0de0da4:	af2b      	add	r7, sp, #172	@ 0xac
c0de0da6:	3601      	adds	r6, #1
c0de0da8:	2800      	cmp	r0, #0
c0de0daa:	d0c1      	beq.n	c0de0d30 <handler_cmd_Interpolate+0x90>
c0de0dac:	e7b1      	b.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dae:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0db0:	2303      	movs	r3, #3
c0de0db2:	9000      	str	r0, [sp, #0]
c0de0db4:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0db6:	a928      	add	r1, sp, #160	@ 0xa0
c0de0db8:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0dba:	f001 f97c 	bl	c0de20b6 <zkn_frost_interpolate_secrets>
c0de0dbe:	2800      	cmp	r0, #0
c0de0dc0:	d1a7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dc2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dc4:	a944      	add	r1, sp, #272	@ 0x110
c0de0dc6:	2220      	movs	r2, #32
c0de0dc8:	31c0      	adds	r1, #192	@ 0xc0
c0de0dca:	f006 fa59 	bl	c0de7280 <cx_bn_export>
c0de0dce:	2800      	cmp	r0, #0
c0de0dd0:	d19f      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dd2:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dd4:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dd6:	ab03      	add	r3, sp, #12
c0de0dd8:	9901      	ldr	r1, [sp, #4]
c0de0dda:	f001 feff 	bl	c0de2bdc <tEdwards_scalarMul_bn>
c0de0dde:	2800      	cmp	r0, #0
c0de0de0:	d197      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0de2:	a844      	add	r0, sp, #272	@ 0x110
c0de0de4:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0de8:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dea:	a903      	add	r1, sp, #12
c0de0dec:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0dee:	f001 fe70 	bl	c0de2ad2 <tEdwards_export>
c0de0df2:	2800      	cmp	r0, #0
c0de0df4:	d18d      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0df6:	a844      	add	r0, sp, #272	@ 0x110
c0de0df8:	f000 fad8 	bl	c0de13ac <OUTLINED_FUNCTION_5>
c0de0dfc:	f006 f9ee 	bl	c0de71dc <cx_bn_unlock>
c0de0e00:	2800      	cmp	r0, #0
c0de0e02:	f47f af86 	bne.w	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0e06:	2000      	movs	r0, #0
c0de0e08:	e785      	b.n	c0de0d16 <handler_cmd_Interpolate+0x76>

c0de0e0a <handler_cmd_Split>:
c0de0e0a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e0e:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0e12:	4604      	mov	r4, r0
c0de0e14:	6800      	ldr	r0, [r0, #0]
c0de0e16:	22ff      	movs	r2, #255	@ 0xff
c0de0e18:	7805      	ldrb	r5, [r0, #0]
c0de0e1a:	2000      	movs	r0, #0
c0de0e1c:	a948      	add	r1, sp, #288	@ 0x120
c0de0e1e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0e22:	d002      	beq.n	c0de0e2a <handler_cmd_Split+0x20>
c0de0e24:	540a      	strb	r2, [r1, r0]
c0de0e26:	3001      	adds	r0, #1
c0de0e28:	e7f9      	b.n	c0de0e1e <handler_cmd_Split+0x14>
c0de0e2a:	f000 faab 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de0e2e:	bb90      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e30:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e32:	f000 fad7 	bl	c0de13e4 <OUTLINED_FUNCTION_11>
c0de0e36:	bb70      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e38:	6820      	ldr	r0, [r4, #0]
c0de0e3a:	2200      	movs	r2, #0
c0de0e3c:	a91a      	add	r1, sp, #104	@ 0x68
c0de0e3e:	3002      	adds	r0, #2
c0de0e40:	2a20      	cmp	r2, #32
c0de0e42:	d003      	beq.n	c0de0e4c <handler_cmd_Split+0x42>
c0de0e44:	5c83      	ldrb	r3, [r0, r2]
c0de0e46:	548b      	strb	r3, [r1, r2]
c0de0e48:	3201      	adds	r2, #1
c0de0e4a:	e7f9      	b.n	c0de0e40 <handler_cmd_Split+0x36>
c0de0e4c:	6862      	ldr	r2, [r4, #4]
c0de0e4e:	3a02      	subs	r2, #2
c0de0e50:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0e54:	f101 0220 	add.w	r2, r1, #32
c0de0e58:	a888      	add	r0, sp, #544	@ 0x220
c0de0e5a:	2101      	movs	r1, #1
c0de0e5c:	f005 ff39 	bl	c0de6cd2 <cx_blake2b_512_hash_iovec>
c0de0e60:	b9c8      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e62:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0e64:	2100      	movs	r1, #0
c0de0e66:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0e68:	1d0d      	adds	r5, r1, #4
c0de0e6a:	2d10      	cmp	r5, #16
c0de0e6c:	d00b      	beq.n	c0de0e86 <handler_cmd_Split+0x7c>
c0de0e6e:	1860      	adds	r0, r4, r1
c0de0e70:	2120      	movs	r1, #32
c0de0e72:	2320      	movs	r3, #32
c0de0e74:	f102 0620 	add.w	r6, r2, #32
c0de0e78:	f006 f9c2 	bl	c0de7200 <cx_bn_alloc_init>
c0de0e7c:	2800      	cmp	r0, #0
c0de0e7e:	4632      	mov	r2, r6
c0de0e80:	4629      	mov	r1, r5
c0de0e82:	d0f1      	beq.n	c0de0e68 <handler_cmd_Split+0x5e>
c0de0e84:	e007      	b.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0e86:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e88:	f000 fa86 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de0e8c:	b918      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e8e:	a809      	add	r0, sp, #36	@ 0x24
c0de0e90:	f000 fa82 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de0e94:	b128      	cbz	r0, c0de0ea2 <handler_cmd_Split+0x98>
c0de0e96:	f000 fa79 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de0e9a:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0e9e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0ea2:	f04f 0800 	mov.w	r8, #0
c0de0ea6:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0eaa:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0eac:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0eb0:	2400      	movs	r4, #0
c0de0eb2:	f1b8 0f10 	cmp.w	r8, #16
c0de0eb6:	d04d      	beq.n	c0de0f54 <handler_cmd_Split+0x14a>
c0de0eb8:	a805      	add	r0, sp, #20
c0de0eba:	2120      	movs	r1, #32
c0de0ebc:	eb00 0708 	add.w	r7, r0, r8
c0de0ec0:	4638      	mov	r0, r7
c0de0ec2:	f006 f993 	bl	c0de71ec <cx_bn_alloc>
c0de0ec6:	2800      	cmp	r0, #0
c0de0ec8:	d1e5      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0eca:	a801      	add	r0, sp, #4
c0de0ecc:	2120      	movs	r1, #32
c0de0ece:	eb00 0508 	add.w	r5, r0, r8
c0de0ed2:	4628      	mov	r0, r5
c0de0ed4:	f006 f98a 	bl	c0de71ec <cx_bn_alloc>
c0de0ed8:	2800      	cmp	r0, #0
c0de0eda:	d1dc      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0edc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ede:	4621      	mov	r1, r4
c0de0ee0:	f006 f9c4 	bl	c0de726c <cx_bn_set_u32>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d1d6      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ee8:	6828      	ldr	r0, [r5, #0]
c0de0eea:	4621      	mov	r1, r4
c0de0eec:	f006 f9be 	bl	c0de726c <cx_bn_set_u32>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1d0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ef4:	4650      	mov	r0, sl
c0de0ef6:	4631      	mov	r1, r6
c0de0ef8:	f001 fae0 	bl	c0de24bc <tEdwards_alloc>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1ca      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f00:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f04:	2202      	movs	r2, #2
c0de0f06:	9000      	str	r0, [sp, #0]
c0de0f08:	4650      	mov	r0, sl
c0de0f0a:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f0c:	f001 f915 	bl	c0de213a <zkn_evalshare>
c0de0f10:	2800      	cmp	r0, #0
c0de0f12:	d1c0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f14:	6838      	ldr	r0, [r7, #0]
c0de0f16:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f18:	f006 f99e 	bl	c0de7258 <cx_bn_copy>
c0de0f1c:	2800      	cmp	r0, #0
c0de0f1e:	d1ba      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f20:	4650      	mov	r0, sl
c0de0f22:	4631      	mov	r1, r6
c0de0f24:	f001 fdfb 	bl	c0de2b1e <tEdwards_normalize>
c0de0f28:	2800      	cmp	r0, #0
c0de0f2a:	d1b4      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f2c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f2e:	4659      	mov	r1, fp
c0de0f30:	f000 fa2f 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1ae      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f38:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f3a:	f10b 0120 	add.w	r1, fp, #32
c0de0f3e:	f000 fa28 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0f42:	360c      	adds	r6, #12
c0de0f44:	3401      	adds	r4, #1
c0de0f46:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0f4a:	f108 0804 	add.w	r8, r8, #4
c0de0f4e:	2800      	cmp	r0, #0
c0de0f50:	d0af      	beq.n	c0de0eb2 <handler_cmd_Split+0xa8>
c0de0f52:	e7a0      	b.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f54:	2100      	movs	r1, #0
c0de0f56:	1d0c      	adds	r4, r1, #4
c0de0f58:	2c10      	cmp	r4, #16
c0de0f5a:	d007      	beq.n	c0de0f6c <handler_cmd_Split+0x162>
c0de0f5c:	a817      	add	r0, sp, #92	@ 0x5c
c0de0f5e:	4408      	add	r0, r1
c0de0f60:	f006 f95a 	bl	c0de7218 <cx_bn_destroy>
c0de0f64:	2800      	cmp	r0, #0
c0de0f66:	4621      	mov	r1, r4
c0de0f68:	d0f5      	beq.n	c0de0f56 <handler_cmd_Split+0x14c>
c0de0f6a:	e794      	b.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f6c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f6e:	2303      	movs	r3, #3
c0de0f70:	9000      	str	r0, [sp, #0]
c0de0f72:	a801      	add	r0, sp, #4
c0de0f74:	1d01      	adds	r1, r0, #4
c0de0f76:	a805      	add	r0, sp, #20
c0de0f78:	1d02      	adds	r2, r0, #4
c0de0f7a:	a832      	add	r0, sp, #200	@ 0xc8
c0de0f7c:	f001 f89b 	bl	c0de20b6 <zkn_frost_interpolate_secrets>
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	f47f af88 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f86:	a848      	add	r0, sp, #288	@ 0x120
c0de0f88:	f000 fa10 	bl	c0de13ac <OUTLINED_FUNCTION_5>
c0de0f8c:	f006 f926 	bl	c0de71dc <cx_bn_unlock>
c0de0f90:	2800      	cmp	r0, #0
c0de0f92:	f47f af80 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f96:	2000      	movs	r0, #0
c0de0f98:	e77f      	b.n	c0de0e9a <handler_cmd_Split+0x90>

c0de0f9a <handler_cmd_frostH>:
c0de0f9a:	b5b0      	push	{r4, r5, r7, lr}
c0de0f9c:	b0d8      	sub	sp, #352	@ 0x160
c0de0f9e:	4604      	mov	r4, r0
c0de0fa0:	f000 f9f0 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de0fa4:	2800      	cmp	r0, #0
c0de0fa6:	d142      	bne.n	c0de102e <handler_cmd_frostH+0x94>
c0de0fa8:	6820      	ldr	r0, [r4, #0]
c0de0faa:	7801      	ldrb	r1, [r0, #0]
c0de0fac:	a802      	add	r0, sp, #8
c0de0fae:	f001 fc05 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de0fb2:	bbe0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fb4:	a801      	add	r0, sp, #4
c0de0fb6:	f000 f9ef 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de0fba:	bbc0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fbc:	f000 f9ef 	bl	c0de139e <OUTLINED_FUNCTION_4>
c0de0fc0:	f002 f91a 	bl	c0de31f8 <Babyfrost_H1>
c0de0fc4:	bb98      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fc6:	9801      	ldr	r0, [sp, #4]
c0de0fc8:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fca:	2220      	movs	r2, #32
c0de0fcc:	4629      	mov	r1, r5
c0de0fce:	f006 f957 	bl	c0de7280 <cx_bn_export>
c0de0fd2:	bb60      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fd4:	f000 f9e3 	bl	c0de139e <OUTLINED_FUNCTION_4>
c0de0fd8:	f002 f91c 	bl	c0de3214 <Babyfrost_H3>
c0de0fdc:	bb38      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	f105 0120 	add.w	r1, r5, #32
c0de0fe4:	f000 f9d5 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0fe8:	bb08      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fea:	f000 f9d8 	bl	c0de139e <OUTLINED_FUNCTION_4>
c0de0fee:	f002 f925 	bl	c0de323c <Babyfrost_H4>
c0de0ff2:	b9e0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0ff4:	9801      	ldr	r0, [sp, #4]
c0de0ff6:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0ffa:	f000 f9ca 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de0ffe:	b9b0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1000:	f000 f9cd 	bl	c0de139e <OUTLINED_FUNCTION_4>
c0de1004:	f002 f928 	bl	c0de3258 <Babyfrost_H5>
c0de1008:	b988      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de100a:	9801      	ldr	r0, [sp, #4]
c0de100c:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1010:	f000 f9bf 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de1014:	b958      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1016:	9804      	ldr	r0, [sp, #16]
c0de1018:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de101c:	f000 f9b9 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de1020:	b928      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1022:	a818      	add	r0, sp, #96	@ 0x60
c0de1024:	f000 f9c2 	bl	c0de13ac <OUTLINED_FUNCTION_5>
c0de1028:	f006 f8d8 	bl	c0de71dc <cx_bn_unlock>
c0de102c:	b118      	cbz	r0, c0de1036 <handler_cmd_frostH+0x9c>
c0de102e:	f000 f9ad 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de1032:	b058      	add	sp, #352	@ 0x160
c0de1034:	bdb0      	pop	{r4, r5, r7, pc}
c0de1036:	2000      	movs	r0, #0
c0de1038:	e7fb      	b.n	c0de1032 <handler_cmd_frostH+0x98>
	...

c0de103c <handler_cmd_encodeCommitment>:
c0de103c:	b510      	push	{r4, lr}
c0de103e:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de1042:	4604      	mov	r4, r0
c0de1044:	f000 f99e 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de1048:	bb10      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de104a:	6820      	ldr	r0, [r4, #0]
c0de104c:	7801      	ldrb	r1, [r0, #0]
c0de104e:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1050:	f001 fbb4 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de1054:	b9e0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de1056:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1058:	f000 f99e 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de105c:	b9c0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de105e:	ac01      	add	r4, sp, #4
c0de1060:	4910      	ldr	r1, [pc, #64]	@ (c0de10a4 <handler_cmd_encodeCommitment+0x68>)
c0de1062:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1066:	4620      	mov	r0, r4
c0de1068:	4479      	add	r1, pc
c0de106a:	f006 fb75 	bl	c0de7758 <__aeabi_memcpy>
c0de106e:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1070:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1072:	4621      	mov	r1, r4
c0de1074:	2203      	movs	r2, #3
c0de1076:	f001 f899 	bl	c0de21ac <zkn_encode_group_commitmentHash>
c0de107a:	b948      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de107c:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de107e:	a990      	add	r1, sp, #576	@ 0x240
c0de1080:	2220      	movs	r2, #32
c0de1082:	3120      	adds	r1, #32
c0de1084:	f006 f8fc 	bl	c0de7280 <cx_bn_export>
c0de1088:	b910      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de108a:	f006 f8a7 	bl	c0de71dc <cx_bn_unlock>
c0de108e:	b120      	cbz	r0, c0de109a <handler_cmd_encodeCommitment+0x5e>
c0de1090:	f000 f97c 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de1094:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de1098:	bd10      	pop	{r4, pc}
c0de109a:	a890      	add	r0, sp, #576	@ 0x240
c0de109c:	f000 f9a5 	bl	c0de13ea <OUTLINED_FUNCTION_12>
c0de10a0:	2000      	movs	r0, #0
c0de10a2:	e7f7      	b.n	c0de1094 <handler_cmd_encodeCommitment+0x58>
c0de10a4:	00007024 	.word	0x00007024

c0de10a8 <handler_cmd_GroupCommitment>:
c0de10a8:	b570      	push	{r4, r5, r6, lr}
c0de10aa:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10ae:	4604      	mov	r4, r0
c0de10b0:	f000 f968 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de10b4:	bb58      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10b6:	6820      	ldr	r0, [r4, #0]
c0de10b8:	7801      	ldrb	r1, [r0, #0]
c0de10ba:	a894      	add	r0, sp, #592	@ 0x250
c0de10bc:	f001 fb7e 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de10c0:	bb28      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10c2:	a894      	add	r0, sp, #592	@ 0x250
c0de10c4:	ac91      	add	r4, sp, #580	@ 0x244
c0de10c6:	4621      	mov	r1, r4
c0de10c8:	f001 f9f8 	bl	c0de24bc <tEdwards_alloc>
c0de10cc:	b9f8      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10ce:	ad19      	add	r5, sp, #100	@ 0x64
c0de10d0:	4914      	ldr	r1, [pc, #80]	@ (c0de1124 <handler_cmd_GroupCommitment+0x7c>)
c0de10d2:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10d6:	4628      	mov	r0, r5
c0de10d8:	4479      	add	r1, pc
c0de10da:	f006 fb3d 	bl	c0de7758 <__aeabi_memcpy>
c0de10de:	ae01      	add	r6, sp, #4
c0de10e0:	4911      	ldr	r1, [pc, #68]	@ (c0de1128 <handler_cmd_GroupCommitment+0x80>)
c0de10e2:	2260      	movs	r2, #96	@ 0x60
c0de10e4:	4630      	mov	r0, r6
c0de10e6:	4479      	add	r1, pc
c0de10e8:	f006 fb36 	bl	c0de7758 <__aeabi_memcpy>
c0de10ec:	9400      	str	r4, [sp, #0]
c0de10ee:	a894      	add	r0, sp, #592	@ 0x250
c0de10f0:	4629      	mov	r1, r5
c0de10f2:	f000 f973 	bl	c0de13dc <OUTLINED_FUNCTION_10>
c0de10f6:	b950      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10f8:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de10fa:	a894      	add	r0, sp, #592	@ 0x250
c0de10fc:	a991      	add	r1, sp, #580	@ 0x244
c0de10fe:	f102 0320 	add.w	r3, r2, #32
c0de1102:	f001 fce6 	bl	c0de2ad2 <tEdwards_export>
c0de1106:	b910      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de1108:	f006 f868 	bl	c0de71dc <cx_bn_unlock>
c0de110c:	b120      	cbz	r0, c0de1118 <handler_cmd_GroupCommitment+0x70>
c0de110e:	f000 f93d 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de1112:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1116:	bd70      	pop	{r4, r5, r6, pc}
c0de1118:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de111a:	2140      	movs	r1, #64	@ 0x40
c0de111c:	f7ff fab6 	bl	c0de068c <io_send_response_pointer>
c0de1120:	2000      	movs	r0, #0
c0de1122:	e7f6      	b.n	c0de1112 <handler_cmd_GroupCommitment+0x6a>
c0de1124:	00007194 	.word	0x00007194
c0de1128:	00007366 	.word	0x00007366

c0de112c <handler_cmd_BindingFactors>:
c0de112c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1130:	f5ad 7d65 	sub.w	sp, sp, #916	@ 0x394
c0de1134:	4604      	mov	r4, r0
c0de1136:	f000 f925 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de113a:	2800      	cmp	r0, #0
c0de113c:	d15c      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de113e:	6820      	ldr	r0, [r4, #0]
c0de1140:	7801      	ldrb	r1, [r0, #0]
c0de1142:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1144:	f001 fb3a 	bl	c0de27bc <tEdwards_Curve_alloc_init>
c0de1148:	2800      	cmp	r0, #0
c0de114a:	d155      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de114c:	a88e      	add	r0, sp, #568	@ 0x238
c0de114e:	f000 f923 	bl	c0de1398 <OUTLINED_FUNCTION_3>
c0de1152:	2800      	cmp	r0, #0
c0de1154:	d150      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1156:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1158:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de115a:	4621      	mov	r1, r4
c0de115c:	f001 f9ae 	bl	c0de24bc <tEdwards_alloc>
c0de1160:	2800      	cmp	r0, #0
c0de1162:	d149      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1164:	ad13      	add	r5, sp, #76	@ 0x4c
c0de1166:	4928      	ldr	r1, [pc, #160]	@ (c0de1208 <handler_cmd_BindingFactors+0xdc>)
c0de1168:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de116c:	4628      	mov	r0, r5
c0de116e:	4479      	add	r1, pc
c0de1170:	f006 faf2 	bl	c0de7758 <__aeabi_memcpy>
c0de1174:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de1176:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1178:	4629      	mov	r1, r5
c0de117a:	2203      	movs	r2, #3
c0de117c:	f001 f816 	bl	c0de21ac <zkn_encode_group_commitmentHash>
c0de1180:	bbd0      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1182:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de1186:	f000 f923 	bl	c0de13d0 <OUTLINED_FUNCTION_9>
c0de118a:	bba8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de118c:	491f      	ldr	r1, [pc, #124]	@ (c0de120c <handler_cmd_BindingFactors+0xe0>)
c0de118e:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de1192:	2220      	movs	r2, #32
c0de1194:	4650      	mov	r0, sl
c0de1196:	4479      	add	r1, pc
c0de1198:	f006 fade 	bl	c0de7758 <__aeabi_memcpy>
c0de119c:	ad03      	add	r5, sp, #12
c0de119e:	491c      	ldr	r1, [pc, #112]	@ (c0de1210 <handler_cmd_BindingFactors+0xe4>)
c0de11a0:	2220      	movs	r2, #32
c0de11a2:	4628      	mov	r0, r5
c0de11a4:	4479      	add	r1, pc
c0de11a6:	f006 fad7 	bl	c0de7758 <__aeabi_memcpy>
c0de11aa:	f000 f909 	bl	c0de13c0 <OUTLINED_FUNCTION_8>
c0de11ae:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11b0:	aa13      	add	r2, sp, #76	@ 0x4c
c0de11b2:	f001 f8e3 	bl	c0de237c <zkn_compute_binding_factors>
c0de11b6:	b9f8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11b8:	9400      	str	r4, [sp, #0]
c0de11ba:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11bc:	a913      	add	r1, sp, #76	@ 0x4c
c0de11be:	f000 f90d 	bl	c0de13dc <OUTLINED_FUNCTION_10>
c0de11c2:	b9c8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11c4:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11c6:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de11ca:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de11ce:	a98b      	add	r1, sp, #556	@ 0x22c
c0de11d0:	f001 fc7f 	bl	c0de2ad2 <tEdwards_export>
c0de11d4:	b980      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11d6:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11d8:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11dc:	f000 f8d9 	bl	c0de1392 <OUTLINED_FUNCTION_2>
c0de11e0:	b950      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11e2:	a8a5      	add	r0, sp, #660	@ 0x294
c0de11e4:	21e0      	movs	r1, #224	@ 0xe0
c0de11e6:	f7ff fa51 	bl	c0de068c <io_send_response_pointer>
c0de11ea:	a88e      	add	r0, sp, #568	@ 0x238
c0de11ec:	f006 f814 	bl	c0de7218 <cx_bn_destroy>
c0de11f0:	b910      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11f2:	f005 fff3 	bl	c0de71dc <cx_bn_unlock>
c0de11f6:	b128      	cbz	r0, c0de1204 <handler_cmd_BindingFactors+0xd8>
c0de11f8:	f000 f8c8 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de11fc:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de1200:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1204:	2000      	movs	r0, #0
c0de1206:	e7f9      	b.n	c0de11fc <handler_cmd_BindingFactors+0xd0>
c0de1208:	0000733e 	.word	0x0000733e
c0de120c:	00006d16 	.word	0x00006d16
c0de1210:	00006e28 	.word	0x00006e28

c0de1214 <handler_get_insecure_secret>:
c0de1214:	b580      	push	{r7, lr}
c0de1216:	b0ea      	sub	sp, #424	@ 0x1a8
c0de1218:	2100      	movs	r1, #0
c0de121a:	f7ff f8eb 	bl	c0de03f4 <handler_get_public_key>
c0de121e:	4668      	mov	r0, sp
c0de1220:	2106      	movs	r1, #6
c0de1222:	2220      	movs	r2, #32
c0de1224:	f005 fd76 	bl	c0de6d14 <cx_hash_init_ex>
c0de1228:	b978      	cbnz	r0, c0de124a <handler_get_insecure_secret+0x36>
c0de122a:	480b      	ldr	r0, [pc, #44]	@ (c0de1258 <handler_get_insecure_secret+0x44>)
c0de122c:	2241      	movs	r2, #65	@ 0x41
c0de122e:	4448      	add	r0, r9
c0de1230:	f100 0108 	add.w	r1, r0, #8
c0de1234:	4668      	mov	r0, sp
c0de1236:	f005 fd72 	bl	c0de6d1e <cx_hash_update>
c0de123a:	b930      	cbnz	r0, c0de124a <handler_get_insecure_secret+0x36>
c0de123c:	4807      	ldr	r0, [pc, #28]	@ (c0de125c <handler_get_insecure_secret+0x48>)
c0de123e:	eb09 0100 	add.w	r1, r9, r0
c0de1242:	4668      	mov	r0, sp
c0de1244:	f005 fd61 	bl	c0de6d0a <cx_hash_final>
c0de1248:	b118      	cbz	r0, c0de1252 <handler_get_insecure_secret+0x3e>
c0de124a:	f000 f89f 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de124e:	b06a      	add	sp, #424	@ 0x1a8
c0de1250:	bd80      	pop	{r7, pc}
c0de1252:	2000      	movs	r0, #0
c0de1254:	e7fb      	b.n	c0de124e <handler_get_insecure_secret+0x3a>
c0de1256:	bf00      	nop
c0de1258:	00000000 	.word	0x00000000
c0de125c:	000002d8 	.word	0x000002d8

c0de1260 <handler_get_insecure_public>:
c0de1260:	b5b0      	push	{r4, r5, r7, lr}
c0de1262:	b0aa      	sub	sp, #168	@ 0xa8
c0de1264:	6800      	ldr	r0, [r0, #0]
c0de1266:	21ff      	movs	r1, #255	@ 0xff
c0de1268:	7805      	ldrb	r5, [r0, #0]
c0de126a:	2000      	movs	r0, #0
c0de126c:	ac1a      	add	r4, sp, #104	@ 0x68
c0de126e:	2840      	cmp	r0, #64	@ 0x40
c0de1270:	d002      	beq.n	c0de1278 <handler_get_insecure_public+0x18>
c0de1272:	5421      	strb	r1, [r4, r0]
c0de1274:	3001      	adds	r0, #1
c0de1276:	e7fa      	b.n	c0de126e <handler_get_insecure_public+0xe>
c0de1278:	f000 f884 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de127c:	b9f8      	cbnz	r0, c0de12be <handler_get_insecure_public+0x5e>
c0de127e:	a804      	add	r0, sp, #16
c0de1280:	f000 f8b0 	bl	c0de13e4 <OUTLINED_FUNCTION_11>
c0de1284:	b9d8      	cbnz	r0, c0de12be <handler_get_insecure_public+0x5e>
c0de1286:	a804      	add	r0, sp, #16
c0de1288:	a901      	add	r1, sp, #4
c0de128a:	f001 f917 	bl	c0de24bc <tEdwards_alloc>
c0de128e:	b9b0      	cbnz	r0, c0de12be <handler_get_insecure_public+0x5e>
c0de1290:	480e      	ldr	r0, [pc, #56]	@ (c0de12cc <handler_get_insecure_public+0x6c>)
c0de1292:	eb09 0100 	add.w	r1, r9, r0
c0de1296:	a804      	add	r0, sp, #16
c0de1298:	aa01      	add	r2, sp, #4
c0de129a:	f000 fd1d 	bl	c0de1cd8 <zkn_prv2pub>
c0de129e:	b970      	cbnz	r0, c0de12be <handler_get_insecure_public+0x5e>
c0de12a0:	a804      	add	r0, sp, #16
c0de12a2:	f104 0320 	add.w	r3, r4, #32
c0de12a6:	a901      	add	r1, sp, #4
c0de12a8:	f000 f887 	bl	c0de13ba <OUTLINED_FUNCTION_7>
c0de12ac:	b938      	cbnz	r0, c0de12be <handler_get_insecure_public+0x5e>
c0de12ae:	9804      	ldr	r0, [sp, #16]
c0de12b0:	0041      	lsls	r1, r0, #1
c0de12b2:	a81a      	add	r0, sp, #104	@ 0x68
c0de12b4:	f7ff f9ea 	bl	c0de068c <io_send_response_pointer>
c0de12b8:	f005 ff90 	bl	c0de71dc <cx_bn_unlock>
c0de12bc:	b118      	cbz	r0, c0de12c6 <handler_get_insecure_public+0x66>
c0de12be:	f000 f865 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de12c2:	b02a      	add	sp, #168	@ 0xa8
c0de12c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de12c6:	2000      	movs	r0, #0
c0de12c8:	e7fb      	b.n	c0de12c2 <handler_get_insecure_public+0x62>
c0de12ca:	bf00      	nop
c0de12cc:	000002d8 	.word	0x000002d8

c0de12d0 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de12d0:	b570      	push	{r4, r5, r6, lr}
c0de12d2:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de12d6:	4606      	mov	r6, r0
c0de12d8:	6800      	ldr	r0, [r0, #0]
c0de12da:	2100      	movs	r1, #0
c0de12dc:	22ff      	movs	r2, #255	@ 0xff
c0de12de:	7805      	ldrb	r5, [r0, #0]
c0de12e0:	ac44      	add	r4, sp, #272	@ 0x110
c0de12e2:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de12e6:	d002      	beq.n	c0de12ee <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1e>
c0de12e8:	5462      	strb	r2, [r4, r1]
c0de12ea:	3101      	adds	r1, #1
c0de12ec:	e7f9      	b.n	c0de12e2 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x12>
c0de12ee:	6871      	ldr	r1, [r6, #4]
c0de12f0:	3001      	adds	r0, #1
c0de12f2:	aa24      	add	r2, sp, #144	@ 0x90
c0de12f4:	3901      	subs	r1, #1
c0de12f6:	b129      	cbz	r1, c0de1304 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de12f8:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de12fc:	3901      	subs	r1, #1
c0de12fe:	f802 3b01 	strb.w	r3, [r2], #1
c0de1302:	e7f8      	b.n	c0de12f6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x26>
c0de1304:	f000 f83e 	bl	c0de1384 <OUTLINED_FUNCTION_0>
c0de1308:	bb90      	cbnz	r0, c0de1370 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de130a:	6830      	ldr	r0, [r6, #0]
c0de130c:	2100      	movs	r1, #0
c0de130e:	aa03      	add	r2, sp, #12
c0de1310:	3001      	adds	r0, #1
c0de1312:	2920      	cmp	r1, #32
c0de1314:	d003      	beq.n	c0de131e <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x4e>
c0de1316:	5c43      	ldrb	r3, [r0, r1]
c0de1318:	5453      	strb	r3, [r2, r1]
c0de131a:	3101      	adds	r1, #1
c0de131c:	e7f9      	b.n	c0de1312 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x42>
c0de131e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1320:	f000 f860 	bl	c0de13e4 <OUTLINED_FUNCTION_11>
c0de1324:	bb20      	cbnz	r0, c0de1370 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1326:	a80e      	add	r0, sp, #56	@ 0x38
c0de1328:	a90b      	add	r1, sp, #44	@ 0x2c
c0de132a:	f001 f8c7 	bl	c0de24bc <tEdwards_alloc>
c0de132e:	b9f8      	cbnz	r0, c0de1370 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1330:	a80e      	add	r0, sp, #56	@ 0x38
c0de1332:	a924      	add	r1, sp, #144	@ 0x90
c0de1334:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1336:	f000 fccf 	bl	c0de1cd8 <zkn_prv2pub>
c0de133a:	b9c8      	cbnz	r0, c0de1370 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de133c:	a80e      	add	r0, sp, #56	@ 0x38
c0de133e:	f104 0320 	add.w	r3, r4, #32
c0de1342:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1344:	f000 f839 	bl	c0de13ba <OUTLINED_FUNCTION_7>
c0de1348:	b990      	cbnz	r0, c0de1370 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de134a:	2020      	movs	r0, #32
c0de134c:	e9cd 0400 	strd	r0, r4, [sp]
c0de1350:	480b      	ldr	r0, [pc, #44]	@ (c0de1380 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xb0>)
c0de1352:	eb09 0100 	add.w	r1, r9, r0
c0de1356:	a80e      	add	r0, sp, #56	@ 0x38
c0de1358:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de135a:	ab03      	add	r3, sp, #12
c0de135c:	f000 fce4 	bl	c0de1d28 <EddsaPoseidon_Sign_final>
c0de1360:	b930      	cbnz	r0, c0de1370 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1362:	a844      	add	r0, sp, #272	@ 0x110
c0de1364:	2160      	movs	r1, #96	@ 0x60
c0de1366:	f7ff f991 	bl	c0de068c <io_send_response_pointer>
c0de136a:	f005 ff37 	bl	c0de71dc <cx_bn_unlock>
c0de136e:	b120      	cbz	r0, c0de137a <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xaa>
c0de1370:	f000 f80c 	bl	c0de138c <OUTLINED_FUNCTION_1>
c0de1374:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de1378:	bd70      	pop	{r4, r5, r6, pc}
c0de137a:	2000      	movs	r0, #0
c0de137c:	e7fa      	b.n	c0de1374 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa4>
c0de137e:	bf00      	nop
c0de1380:	000002d8 	.word	0x000002d8

c0de1384 <OUTLINED_FUNCTION_0>:
c0de1384:	2020      	movs	r0, #32
c0de1386:	2100      	movs	r1, #0
c0de1388:	f005 bf1e 	b.w	c0de71c8 <cx_bn_lock>

c0de138c <OUTLINED_FUNCTION_1>:
c0de138c:	b280      	uxth	r0, r0
c0de138e:	f7ff b988 	b.w	c0de06a2 <io_send_sw>

c0de1392 <OUTLINED_FUNCTION_2>:
c0de1392:	2220      	movs	r2, #32
c0de1394:	f005 bf74 	b.w	c0de7280 <cx_bn_export>

c0de1398 <OUTLINED_FUNCTION_3>:
c0de1398:	2120      	movs	r1, #32
c0de139a:	f005 bf27 	b.w	c0de71ec <cx_bn_alloc>

c0de139e <OUTLINED_FUNCTION_4>:
c0de139e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de13a2:	9b01      	ldr	r3, [sp, #4]
c0de13a4:	9a04      	ldr	r2, [sp, #16]
c0de13a6:	3001      	adds	r0, #1
c0de13a8:	3901      	subs	r1, #1
c0de13aa:	4770      	bx	lr

c0de13ac <OUTLINED_FUNCTION_5>:
c0de13ac:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de13b0:	f7ff b96c 	b.w	c0de068c <io_send_response_pointer>

c0de13b4 <OUTLINED_FUNCTION_6>:
c0de13b4:	2320      	movs	r3, #32
c0de13b6:	f005 bf23 	b.w	c0de7200 <cx_bn_alloc_init>

c0de13ba <OUTLINED_FUNCTION_7>:
c0de13ba:	4622      	mov	r2, r4
c0de13bc:	f001 bb89 	b.w	c0de2ad2 <tEdwards_export>

c0de13c0 <OUTLINED_FUNCTION_8>:
c0de13c0:	f108 0620 	add.w	r6, r8, #32
c0de13c4:	e9cd 5700 	strd	r5, r7, [sp]
c0de13c8:	4651      	mov	r1, sl
c0de13ca:	2303      	movs	r3, #3
c0de13cc:	9602      	str	r6, [sp, #8]
c0de13ce:	4770      	bx	lr

c0de13d0 <OUTLINED_FUNCTION_9>:
c0de13d0:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de13d2:	2220      	movs	r2, #32
c0de13d4:	2720      	movs	r7, #32
c0de13d6:	4641      	mov	r1, r8
c0de13d8:	f005 bf52 	b.w	c0de7280 <cx_bn_export>

c0de13dc <OUTLINED_FUNCTION_10>:
c0de13dc:	4632      	mov	r2, r6
c0de13de:	2303      	movs	r3, #3
c0de13e0:	f000 bf61 	b.w	c0de22a6 <zkn_compute_group_commitment>

c0de13e4 <OUTLINED_FUNCTION_11>:
c0de13e4:	4629      	mov	r1, r5
c0de13e6:	f001 b9e9 	b.w	c0de27bc <tEdwards_Curve_alloc_init>

c0de13ea <OUTLINED_FUNCTION_12>:
c0de13ea:	2120      	movs	r1, #32
c0de13ec:	f7ff b94e 	b.w	c0de068c <io_send_response_pointer>

c0de13f0 <helper_send_response_pubkey>:
c0de13f0:	b5b0      	push	{r4, r5, r7, lr}
c0de13f2:	b09a      	sub	sp, #104	@ 0x68
c0de13f4:	2041      	movs	r0, #65	@ 0x41
c0de13f6:	f10d 0405 	add.w	r4, sp, #5
c0de13fa:	2241      	movs	r2, #65	@ 0x41
c0de13fc:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1400:	480b      	ldr	r0, [pc, #44]	@ (c0de1430 <helper_send_response_pubkey+0x40>)
c0de1402:	eb09 0500 	add.w	r5, r9, r0
c0de1406:	1c60      	adds	r0, r4, #1
c0de1408:	f105 0108 	add.w	r1, r5, #8
c0de140c:	f006 f9a4 	bl	c0de7758 <__aeabi_memcpy>
c0de1410:	2020      	movs	r0, #32
c0de1412:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1416:	2220      	movs	r2, #32
c0de1418:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de141c:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1420:	f006 f99a 	bl	c0de7758 <__aeabi_memcpy>
c0de1424:	4620      	mov	r0, r4
c0de1426:	2163      	movs	r1, #99	@ 0x63
c0de1428:	f000 f804 	bl	c0de1434 <io_send_response_pointer>
c0de142c:	b01a      	add	sp, #104	@ 0x68
c0de142e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1430:	00000000 	.word	0x00000000

c0de1434 <io_send_response_pointer>:
c0de1434:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1436:	2200      	movs	r2, #0
c0de1438:	ab01      	add	r3, sp, #4
c0de143a:	c307      	stmia	r3!, {r0, r1, r2}
c0de143c:	a801      	add	r0, sp, #4
c0de143e:	2101      	movs	r1, #1
c0de1440:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de1444:	f005 f9d8 	bl	c0de67f8 <io_send_response_buffers>
c0de1448:	b004      	add	sp, #16
c0de144a:	bd80      	pop	{r7, pc}

c0de144c <helper_send_response_sig>:
c0de144c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de144e:	b093      	sub	sp, #76	@ 0x4c
c0de1450:	f10d 0402 	add.w	r4, sp, #2
c0de1454:	2149      	movs	r1, #73	@ 0x49
c0de1456:	1c65      	adds	r5, r4, #1
c0de1458:	4628      	mov	r0, r5
c0de145a:	f006 f987 	bl	c0de776c <__aeabi_memclr>
c0de145e:	480b      	ldr	r0, [pc, #44]	@ (c0de148c <helper_send_response_sig+0x40>)
c0de1460:	eb09 0700 	add.w	r7, r9, r0
c0de1464:	4628      	mov	r0, r5
c0de1466:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de146a:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de146e:	4632      	mov	r2, r6
c0de1470:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1474:	f006 f970 	bl	c0de7758 <__aeabi_memcpy>
c0de1478:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de147c:	1930      	adds	r0, r6, r4
c0de147e:	7041      	strb	r1, [r0, #1]
c0de1480:	1cb1      	adds	r1, r6, #2
c0de1482:	4620      	mov	r0, r4
c0de1484:	f7ff ffd6 	bl	c0de1434 <io_send_response_pointer>
c0de1488:	b013      	add	sp, #76	@ 0x4c
c0de148a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de148c:	00000000 	.word	0x00000000

c0de1490 <swap_handle_check_address>:
c0de1490:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1494:	b0bc      	sub	sp, #240	@ 0xf0
c0de1496:	4604      	mov	r4, r0
c0de1498:	2000      	movs	r0, #0
c0de149a:	68a5      	ldr	r5, [r4, #8]
c0de149c:	61a0      	str	r0, [r4, #24]
c0de149e:	2d00      	cmp	r5, #0
c0de14a0:	d04d      	beq.n	c0de153e <swap_handle_check_address+0xae>
c0de14a2:	6920      	ldr	r0, [r4, #16]
c0de14a4:	2800      	cmp	r0, #0
c0de14a6:	d04a      	beq.n	c0de153e <swap_handle_check_address+0xae>
c0de14a8:	f006 f9bc 	bl	c0de7824 <strlen>
c0de14ac:	2828      	cmp	r0, #40	@ 0x28
c0de14ae:	d146      	bne.n	c0de153e <swap_handle_check_address+0xae>
c0de14b0:	7b20      	ldrb	r0, [r4, #12]
c0de14b2:	f04f 0800 	mov.w	r8, #0
c0de14b6:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de14b8:	2161      	movs	r1, #97	@ 0x61
c0de14ba:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de14be:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de14c0:	ad15      	add	r5, sp, #84	@ 0x54
c0de14c2:	4628      	mov	r0, r5
c0de14c4:	f006 f952 	bl	c0de776c <__aeabi_memclr>
c0de14c8:	ae39      	add	r6, sp, #228	@ 0xe4
c0de14ca:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de14ce:	4630      	mov	r0, r6
c0de14d0:	f004 ff40 	bl	c0de6354 <buffer_read_u8>
c0de14d4:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de14d8:	af2e      	add	r7, sp, #184	@ 0xb8
c0de14da:	4630      	mov	r0, r6
c0de14dc:	4639      	mov	r1, r7
c0de14de:	f004 ff8c 	bl	c0de63fa <buffer_read_bip32_path>
c0de14e2:	2005      	movs	r0, #5
c0de14e4:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de14e8:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de14ec:	463a      	mov	r2, r7
c0de14ee:	f8cd 8010 	str.w	r8, [sp, #16]
c0de14f2:	e9cd 5100 	strd	r5, r1, [sp]
c0de14f6:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de14fa:	2000      	movs	r0, #0
c0de14fc:	2121      	movs	r1, #33	@ 0x21
c0de14fe:	f005 f83d 	bl	c0de657c <bip32_derive_with_seed_get_pubkey_256>
c0de1502:	b9e0      	cbnz	r0, c0de153e <swap_handle_check_address+0xae>
c0de1504:	ad10      	add	r5, sp, #64	@ 0x40
c0de1506:	2114      	movs	r1, #20
c0de1508:	4628      	mov	r0, r5
c0de150a:	f006 f92f 	bl	c0de776c <__aeabi_memclr>
c0de150e:	a815      	add	r0, sp, #84	@ 0x54
c0de1510:	4629      	mov	r1, r5
c0de1512:	2214      	movs	r2, #20
c0de1514:	f7fe fd88 	bl	c0de0028 <address_from_pubkey>
c0de1518:	ae05      	add	r6, sp, #20
c0de151a:	2129      	movs	r1, #41	@ 0x29
c0de151c:	4630      	mov	r0, r6
c0de151e:	f006 f925 	bl	c0de776c <__aeabi_memclr>
c0de1522:	4628      	mov	r0, r5
c0de1524:	2114      	movs	r1, #20
c0de1526:	4632      	mov	r2, r6
c0de1528:	2329      	movs	r3, #41	@ 0x29
c0de152a:	f005 f905 	bl	c0de6738 <format_hex>
c0de152e:	6921      	ldr	r1, [r4, #16]
c0de1530:	4630      	mov	r0, r6
c0de1532:	2229      	movs	r2, #41	@ 0x29
c0de1534:	f006 f97e 	bl	c0de7834 <strncmp>
c0de1538:	b908      	cbnz	r0, c0de153e <swap_handle_check_address+0xae>
c0de153a:	2001      	movs	r0, #1
c0de153c:	61a0      	str	r0, [r4, #24]
c0de153e:	b03c      	add	sp, #240	@ 0xf0
c0de1540:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de1544 <swap_handle_get_printable_amount>:
c0de1544:	b570      	push	{r4, r5, r6, lr}
c0de1546:	b08c      	sub	sp, #48	@ 0x30
c0de1548:	ac04      	add	r4, sp, #16
c0de154a:	4606      	mov	r6, r0
c0de154c:	211e      	movs	r1, #30
c0de154e:	4620      	mov	r0, r4
c0de1550:	f006 f90c 	bl	c0de776c <__aeabi_memclr>
c0de1554:	f106 050e 	add.w	r5, r6, #14
c0de1558:	2132      	movs	r1, #50	@ 0x32
c0de155a:	4628      	mov	r0, r5
c0de155c:	f006 f906 	bl	c0de776c <__aeabi_memclr>
c0de1560:	2000      	movs	r0, #0
c0de1562:	7b31      	ldrb	r1, [r6, #12]
c0de1564:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1568:	68b0      	ldr	r0, [r6, #8]
c0de156a:	aa02      	add	r2, sp, #8
c0de156c:	f005 fad0 	bl	c0de6b10 <swap_str_to_u64>
c0de1570:	b178      	cbz	r0, c0de1592 <swap_handle_get_printable_amount+0x4e>
c0de1572:	2003      	movs	r0, #3
c0de1574:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1578:	211e      	movs	r1, #30
c0de157a:	9000      	str	r0, [sp, #0]
c0de157c:	4620      	mov	r0, r4
c0de157e:	f005 f894 	bl	c0de66aa <format_fpu64>
c0de1582:	9400      	str	r4, [sp, #0]
c0de1584:	4628      	mov	r0, r5
c0de1586:	2132      	movs	r1, #50	@ 0x32
c0de1588:	231e      	movs	r3, #30
c0de158a:	4a03      	ldr	r2, [pc, #12]	@ (c0de1598 <swap_handle_get_printable_amount+0x54>)
c0de158c:	447a      	add	r2, pc
c0de158e:	f005 fc4f 	bl	c0de6e30 <snprintf>
c0de1592:	b00c      	add	sp, #48	@ 0x30
c0de1594:	bd70      	pop	{r4, r5, r6, pc}
c0de1596:	bf00      	nop
c0de1598:	0000673e 	.word	0x0000673e

c0de159c <swap_copy_transaction_parameters>:
c0de159c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de159e:	b093      	sub	sp, #76	@ 0x4c
c0de15a0:	6985      	ldr	r5, [r0, #24]
c0de15a2:	b3ad      	cbz	r5, c0de1610 <swap_copy_transaction_parameters+0x74>
c0de15a4:	4604      	mov	r4, r0
c0de15a6:	4628      	mov	r0, r5
c0de15a8:	f006 f93c 	bl	c0de7824 <strlen>
c0de15ac:	2828      	cmp	r0, #40	@ 0x28
c0de15ae:	d12f      	bne.n	c0de1610 <swap_copy_transaction_parameters+0x74>
c0de15b0:	68a7      	ldr	r7, [r4, #8]
c0de15b2:	b36f      	cbz	r7, c0de1610 <swap_copy_transaction_parameters+0x74>
c0de15b4:	466e      	mov	r6, sp
c0de15b6:	2148      	movs	r1, #72	@ 0x48
c0de15b8:	4630      	mov	r0, r6
c0de15ba:	f006 f8d7 	bl	c0de776c <__aeabi_memclr>
c0de15be:	f106 0018 	add.w	r0, r6, #24
c0de15c2:	2100      	movs	r1, #0
c0de15c4:	2928      	cmp	r1, #40	@ 0x28
c0de15c6:	d009      	beq.n	c0de15dc <swap_copy_transaction_parameters+0x40>
c0de15c8:	5c6a      	ldrb	r2, [r5, r1]
c0de15ca:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de15ce:	b2db      	uxtb	r3, r3
c0de15d0:	2b1a      	cmp	r3, #26
c0de15d2:	bf38      	it	cc
c0de15d4:	3a20      	subcc	r2, #32
c0de15d6:	5442      	strb	r2, [r0, r1]
c0de15d8:	3101      	adds	r1, #1
c0de15da:	e7f3      	b.n	c0de15c4 <swap_copy_transaction_parameters+0x28>
c0de15dc:	7b21      	ldrb	r1, [r4, #12]
c0de15de:	f106 0208 	add.w	r2, r6, #8
c0de15e2:	4638      	mov	r0, r7
c0de15e4:	f005 fa94 	bl	c0de6b10 <swap_str_to_u64>
c0de15e8:	b190      	cbz	r0, c0de1610 <swap_copy_transaction_parameters+0x74>
c0de15ea:	7d21      	ldrb	r1, [r4, #20]
c0de15ec:	6920      	ldr	r0, [r4, #16]
c0de15ee:	f106 0210 	add.w	r2, r6, #16
c0de15f2:	f005 fa8d 	bl	c0de6b10 <swap_str_to_u64>
c0de15f6:	b158      	cbz	r0, c0de1610 <swap_copy_transaction_parameters+0x74>
c0de15f8:	2401      	movs	r4, #1
c0de15fa:	f88d 4000 	strb.w	r4, [sp]
c0de15fe:	f005 fc0b 	bl	c0de6e18 <os_explicit_zero_BSS_segment>
c0de1602:	4805      	ldr	r0, [pc, #20]	@ (c0de1618 <swap_copy_transaction_parameters+0x7c>)
c0de1604:	4669      	mov	r1, sp
c0de1606:	2248      	movs	r2, #72	@ 0x48
c0de1608:	4448      	add	r0, r9
c0de160a:	f006 f8a5 	bl	c0de7758 <__aeabi_memcpy>
c0de160e:	e000      	b.n	c0de1612 <swap_copy_transaction_parameters+0x76>
c0de1610:	2400      	movs	r4, #0
c0de1612:	4620      	mov	r0, r4
c0de1614:	b013      	add	sp, #76	@ 0x4c
c0de1616:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1618:	000002f8 	.word	0x000002f8

c0de161c <swap_check_validity>:
c0de161c:	b570      	push	{r4, r5, r6, lr}
c0de161e:	b08c      	sub	sp, #48	@ 0x30
c0de1620:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1698 <swap_check_validity+0x7c>)
c0de1622:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1626:	b32c      	cbz	r4, c0de1674 <swap_check_validity+0x58>
c0de1628:	eb09 0406 	add.w	r4, r9, r6
c0de162c:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1630:	4069      	eors	r1, r5
c0de1632:	4060      	eors	r0, r4
c0de1634:	4308      	orrs	r0, r1
c0de1636:	d121      	bne.n	c0de167c <swap_check_validity+0x60>
c0de1638:	eb09 0006 	add.w	r0, r9, r6
c0de163c:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1640:	4059      	eors	r1, r3
c0de1642:	4050      	eors	r0, r2
c0de1644:	4308      	orrs	r0, r1
c0de1646:	d11d      	bne.n	c0de1684 <swap_check_validity+0x68>
c0de1648:	ad01      	add	r5, sp, #4
c0de164a:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de164c:	2129      	movs	r1, #41	@ 0x29
c0de164e:	4628      	mov	r0, r5
c0de1650:	f006 f88c 	bl	c0de776c <__aeabi_memclr>
c0de1654:	4620      	mov	r0, r4
c0de1656:	2114      	movs	r1, #20
c0de1658:	462a      	mov	r2, r5
c0de165a:	2329      	movs	r3, #41	@ 0x29
c0de165c:	f005 f86c 	bl	c0de6738 <format_hex>
c0de1660:	eb09 0006 	add.w	r0, r9, r6
c0de1664:	4629      	mov	r1, r5
c0de1666:	3018      	adds	r0, #24
c0de1668:	f006 f8d2 	bl	c0de7810 <strcmp>
c0de166c:	b970      	cbnz	r0, c0de168c <swap_check_validity+0x70>
c0de166e:	2001      	movs	r0, #1
c0de1670:	b00c      	add	sp, #48	@ 0x30
c0de1672:	bd70      	pop	{r4, r5, r6, pc}
c0de1674:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1678:	21ff      	movs	r1, #255	@ 0xff
c0de167a:	e00a      	b.n	c0de1692 <swap_check_validity+0x76>
c0de167c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1680:	2101      	movs	r1, #1
c0de1682:	e006      	b.n	c0de1692 <swap_check_validity+0x76>
c0de1684:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1688:	2103      	movs	r1, #3
c0de168a:	e002      	b.n	c0de1692 <swap_check_validity+0x76>
c0de168c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1690:	2102      	movs	r1, #2
c0de1692:	2200      	movs	r2, #0
c0de1694:	f005 fa03 	bl	c0de6a9e <send_swap_error_simple>
c0de1698:	000002f8 	.word	0x000002f8

c0de169c <transaction_deserialize>:
c0de169c:	b570      	push	{r4, r5, r6, lr}
c0de169e:	460d      	mov	r5, r1
c0de16a0:	4604      	mov	r4, r0
c0de16a2:	b910      	cbnz	r0, c0de16aa <transaction_deserialize+0xe>
c0de16a4:	2001      	movs	r0, #1
c0de16a6:	f005 fb47 	bl	c0de6d38 <assert_exit>
c0de16aa:	b915      	cbnz	r5, c0de16b2 <transaction_deserialize+0x16>
c0de16ac:	2001      	movs	r0, #1
c0de16ae:	f005 fb43 	bl	c0de6d38 <assert_exit>
c0de16b2:	6860      	ldr	r0, [r4, #4]
c0de16b4:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de16b8:	d901      	bls.n	c0de16be <transaction_deserialize+0x22>
c0de16ba:	20f9      	movs	r0, #249	@ 0xf9
c0de16bc:	e04b      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de16be:	4620      	mov	r0, r4
c0de16c0:	4629      	mov	r1, r5
c0de16c2:	2200      	movs	r2, #0
c0de16c4:	f004 fe5c 	bl	c0de6380 <buffer_read_u64>
c0de16c8:	b330      	cbz	r0, c0de1718 <transaction_deserialize+0x7c>
c0de16ca:	6820      	ldr	r0, [r4, #0]
c0de16cc:	68a1      	ldr	r1, [r4, #8]
c0de16ce:	4408      	add	r0, r1
c0de16d0:	2114      	movs	r1, #20
c0de16d2:	61a8      	str	r0, [r5, #24]
c0de16d4:	4620      	mov	r0, r4
c0de16d6:	f004 fe32 	bl	c0de633e <buffer_seek_cur>
c0de16da:	b1f8      	cbz	r0, c0de171c <transaction_deserialize+0x80>
c0de16dc:	f105 0108 	add.w	r1, r5, #8
c0de16e0:	4620      	mov	r0, r4
c0de16e2:	2200      	movs	r2, #0
c0de16e4:	2600      	movs	r6, #0
c0de16e6:	f004 fe4b 	bl	c0de6380 <buffer_read_u64>
c0de16ea:	b1c8      	cbz	r0, c0de1720 <transaction_deserialize+0x84>
c0de16ec:	f105 0120 	add.w	r1, r5, #32
c0de16f0:	4620      	mov	r0, r4
c0de16f2:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de16f6:	f004 fe63 	bl	c0de63c0 <buffer_read_varint>
c0de16fa:	6a29      	ldr	r1, [r5, #32]
c0de16fc:	b990      	cbnz	r0, c0de1724 <transaction_deserialize+0x88>
c0de16fe:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1700:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1704:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1708:	2300      	movs	r3, #0
c0de170a:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de170e:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1712:	d207      	bcs.n	c0de1724 <transaction_deserialize+0x88>
c0de1714:	20fc      	movs	r0, #252	@ 0xfc
c0de1716:	e01e      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de1718:	20ff      	movs	r0, #255	@ 0xff
c0de171a:	e01c      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de171c:	20fe      	movs	r0, #254	@ 0xfe
c0de171e:	e01a      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de1720:	20fd      	movs	r0, #253	@ 0xfd
c0de1722:	e018      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de1724:	6820      	ldr	r0, [r4, #0]
c0de1726:	68a2      	ldr	r2, [r4, #8]
c0de1728:	4410      	add	r0, r2
c0de172a:	61e8      	str	r0, [r5, #28]
c0de172c:	4620      	mov	r0, r4
c0de172e:	f004 fe06 	bl	c0de633e <buffer_seek_cur>
c0de1732:	b168      	cbz	r0, c0de1750 <transaction_deserialize+0xb4>
c0de1734:	f105 031c 	add.w	r3, r5, #28
c0de1738:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de173a:	f000 f80e 	bl	c0de175a <transaction_utils_check_encoding>
c0de173e:	b148      	cbz	r0, c0de1754 <transaction_deserialize+0xb8>
c0de1740:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1744:	f06f 0006 	mvn.w	r0, #6
c0de1748:	428a      	cmp	r2, r1
c0de174a:	bf08      	it	eq
c0de174c:	2001      	moveq	r0, #1
c0de174e:	e002      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de1750:	20fb      	movs	r0, #251	@ 0xfb
c0de1752:	e000      	b.n	c0de1756 <transaction_deserialize+0xba>
c0de1754:	20fa      	movs	r0, #250	@ 0xfa
c0de1756:	b240      	sxtb	r0, r0
c0de1758:	bd70      	pop	{r4, r5, r6, pc}

c0de175a <transaction_utils_check_encoding>:
c0de175a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de175c:	461c      	mov	r4, r3
c0de175e:	4615      	mov	r5, r2
c0de1760:	4606      	mov	r6, r0
c0de1762:	b910      	cbnz	r0, c0de176a <transaction_utils_check_encoding+0x10>
c0de1764:	2001      	movs	r0, #1
c0de1766:	f005 fae7 	bl	c0de6d38 <assert_exit>
c0de176a:	2000      	movs	r0, #0
c0de176c:	2300      	movs	r3, #0
c0de176e:	4602      	mov	r2, r0
c0de1770:	1b40      	subs	r0, r0, r5
c0de1772:	4619      	mov	r1, r3
c0de1774:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1778:	d206      	bcs.n	c0de1788 <transaction_utils_check_encoding+0x2e>
c0de177a:	56b7      	ldrsb	r7, [r6, r2]
c0de177c:	1c50      	adds	r0, r2, #1
c0de177e:	f141 0300 	adc.w	r3, r1, #0
c0de1782:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1786:	dcf2      	bgt.n	c0de176e <transaction_utils_check_encoding+0x14>
c0de1788:	2000      	movs	r0, #0
c0de178a:	1b52      	subs	r2, r2, r5
c0de178c:	41a1      	sbcs	r1, r4
c0de178e:	bf28      	it	cs
c0de1790:	2001      	movcs	r0, #1
c0de1792:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1794 <validate_pubkey>:
c0de1794:	b108      	cbz	r0, c0de179a <validate_pubkey+0x6>
c0de1796:	f7ff be2b 	b.w	c0de13f0 <helper_send_response_pubkey>
c0de179a:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de179e:	f000 b800 	b.w	c0de17a2 <io_send_sw>

c0de17a2 <io_send_sw>:
c0de17a2:	b580      	push	{r7, lr}
c0de17a4:	4602      	mov	r2, r0
c0de17a6:	2000      	movs	r0, #0
c0de17a8:	2100      	movs	r1, #0
c0de17aa:	f005 f825 	bl	c0de67f8 <io_send_response_buffers>
c0de17ae:	bd80      	pop	{r7, pc}

c0de17b0 <validate_transaction>:
c0de17b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de17b4:	b08c      	sub	sp, #48	@ 0x30
c0de17b6:	b378      	cbz	r0, c0de1818 <validate_transaction+0x68>
c0de17b8:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1850 <validate_transaction+0xa0>
c0de17bc:	2002      	movs	r0, #2
c0de17be:	2500      	movs	r5, #0
c0de17c0:	2720      	movs	r7, #32
c0de17c2:	2203      	movs	r2, #3
c0de17c4:	f240 6401 	movw	r4, #1537	@ 0x601
c0de17c8:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de17cc:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de17d0:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de17d2:	f809 0008 	strb.w	r0, [r9, r8]
c0de17d6:	2048      	movs	r0, #72	@ 0x48
c0de17d8:	900a      	str	r0, [sp, #40]	@ 0x28
c0de17da:	eb09 0008 	add.w	r0, r9, r8
c0de17de:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de17e2:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de17e6:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de17ea:	e9cd 4200 	strd	r4, r2, [sp]
c0de17ee:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de17f2:	2000      	movs	r0, #0
c0de17f4:	9508      	str	r5, [sp, #32]
c0de17f6:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de17fa:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de17fe:	2121      	movs	r1, #33	@ 0x21
c0de1800:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1804:	f004 feee 	bl	c0de65e4 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1808:	b188      	cbz	r0, c0de182e <validate_transaction+0x7e>
c0de180a:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de180e:	f809 5008 	strb.w	r5, [r9, r8]
c0de1812:	f7ff ffc6 	bl	c0de17a2 <io_send_sw>
c0de1816:	e017      	b.n	c0de1848 <validate_transaction+0x98>
c0de1818:	480d      	ldr	r0, [pc, #52]	@ (c0de1850 <validate_transaction+0xa0>)
c0de181a:	2100      	movs	r1, #0
c0de181c:	f809 1000 	strb.w	r1, [r9, r0]
c0de1820:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1824:	b00c      	add	sp, #48	@ 0x30
c0de1826:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de182a:	f7ff bfba 	b.w	c0de17a2 <io_send_sw>
c0de182e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1830:	eb09 0008 	add.w	r0, r9, r8
c0de1834:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de1838:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de183c:	f001 0101 	and.w	r1, r1, #1
c0de1840:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de1844:	f7ff fe02 	bl	c0de144c <helper_send_response_sig>
c0de1848:	b00c      	add	sp, #48	@ 0x30
c0de184a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de184e:	bf00      	nop
c0de1850:	00000000 	.word	0x00000000

c0de1854 <app_quit>:
c0de1854:	20ff      	movs	r0, #255	@ 0xff
c0de1856:	f005 fe43 	bl	c0de74e0 <os_sched_exit>
	...

c0de185c <ui_menu_main>:
c0de185c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de185e:	4c19      	ldr	r4, [pc, #100]	@ (c0de18c4 <ui_menu_main+0x68>)
c0de1860:	4817      	ldr	r0, [pc, #92]	@ (c0de18c0 <ui_menu_main+0x64>)
c0de1862:	447c      	add	r4, pc
c0de1864:	eb09 0500 	add.w	r5, r9, r0
c0de1868:	f000 f8d8 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de186c:	2114      	movs	r1, #20
c0de186e:	7369      	strb	r1, [r5, #13]
c0de1870:	4915      	ldr	r1, [pc, #84]	@ (c0de18c8 <ui_menu_main+0x6c>)
c0de1872:	4a16      	ldr	r2, [pc, #88]	@ (c0de18cc <ui_menu_main+0x70>)
c0de1874:	4479      	add	r1, pc
c0de1876:	447a      	add	r2, pc
c0de1878:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de187c:	7800      	ldrb	r0, [r0, #0]
c0de187e:	7328      	strb	r0, [r5, #12]
c0de1880:	f000 f8cc 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de1884:	2115      	movs	r1, #21
c0de1886:	7669      	strb	r1, [r5, #25]
c0de1888:	4911      	ldr	r1, [pc, #68]	@ (c0de18d0 <ui_menu_main+0x74>)
c0de188a:	4a12      	ldr	r2, [pc, #72]	@ (c0de18d4 <ui_menu_main+0x78>)
c0de188c:	4479      	add	r1, pc
c0de188e:	447a      	add	r2, pc
c0de1890:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1894:	2100      	movs	r1, #0
c0de1896:	7840      	ldrb	r0, [r0, #1]
c0de1898:	7628      	strb	r0, [r5, #24]
c0de189a:	480f      	ldr	r0, [pc, #60]	@ (c0de18d8 <ui_menu_main+0x7c>)
c0de189c:	4a0f      	ldr	r2, [pc, #60]	@ (c0de18dc <ui_menu_main+0x80>)
c0de189e:	4b10      	ldr	r3, [pc, #64]	@ (c0de18e0 <ui_menu_main+0x84>)
c0de18a0:	4478      	add	r0, pc
c0de18a2:	447a      	add	r2, pc
c0de18a4:	447b      	add	r3, pc
c0de18a6:	e9cd 3200 	strd	r3, r2, [sp]
c0de18aa:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de18ae:	2200      	movs	r2, #0
c0de18b0:	23ff      	movs	r3, #255	@ 0xff
c0de18b2:	480c      	ldr	r0, [pc, #48]	@ (c0de18e4 <ui_menu_main+0x88>)
c0de18b4:	490c      	ldr	r1, [pc, #48]	@ (c0de18e8 <ui_menu_main+0x8c>)
c0de18b6:	4478      	add	r0, pc
c0de18b8:	4479      	add	r1, pc
c0de18ba:	f003 f837 	bl	c0de492c <nbgl_useCaseHomeAndSettings>
c0de18be:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de18c0:	00000340 	.word	0x00000340
c0de18c4:	0000759a 	.word	0x0000759a
c0de18c8:	00006303 	.word	0x00006303
c0de18cc:	0000646a 	.word	0x0000646a
c0de18d0:	00006366 	.word	0x00006366
c0de18d4:	000061ac 	.word	0x000061ac
c0de18d8:	ffffffb1 	.word	0xffffffb1
c0de18dc:	00006df6 	.word	0x00006df6
c0de18e0:	00006de8 	.word	0x00006de8
c0de18e4:	000064ae 	.word	0x000064ae
c0de18e8:	00005fdb 	.word	0x00005fdb

c0de18ec <controls_callback>:
c0de18ec:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de18ee:	4c22      	ldr	r4, [pc, #136]	@ (c0de1978 <controls_callback+0x8c>)
c0de18f0:	2815      	cmp	r0, #21
c0de18f2:	f809 2004 	strb.w	r2, [r9, r4]
c0de18f6:	d011      	beq.n	c0de191c <controls_callback+0x30>
c0de18f8:	2814      	cmp	r0, #20
c0de18fa:	d12a      	bne.n	c0de1952 <controls_callback+0x66>
c0de18fc:	eb09 0504 	add.w	r5, r9, r4
c0de1900:	4c1e      	ldr	r4, [pc, #120]	@ (c0de197c <controls_callback+0x90>)
c0de1902:	447c      	add	r4, pc
c0de1904:	f000 f88a 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de1908:	7800      	ldrb	r0, [r0, #0]
c0de190a:	fab0 f080 	clz	r0, r0
c0de190e:	0940      	lsrs	r0, r0, #5
c0de1910:	7328      	strb	r0, [r5, #12]
c0de1912:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1916:	f000 f881 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de191a:	e015      	b.n	c0de1948 <controls_callback+0x5c>
c0de191c:	4818      	ldr	r0, [pc, #96]	@ (c0de1980 <controls_callback+0x94>)
c0de191e:	4478      	add	r0, pc
c0de1920:	f005 fc18 	bl	c0de7154 <pic>
c0de1924:	7840      	ldrb	r0, [r0, #1]
c0de1926:	b1a8      	cbz	r0, c0de1954 <controls_callback+0x68>
c0de1928:	eb09 0504 	add.w	r5, r9, r4
c0de192c:	4c15      	ldr	r4, [pc, #84]	@ (c0de1984 <controls_callback+0x98>)
c0de192e:	447c      	add	r4, pc
c0de1930:	f000 f874 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de1934:	7840      	ldrb	r0, [r0, #1]
c0de1936:	fab0 f080 	clz	r0, r0
c0de193a:	0940      	lsrs	r0, r0, #5
c0de193c:	7628      	strb	r0, [r5, #24]
c0de193e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1942:	f000 f86b 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de1946:	3001      	adds	r0, #1
c0de1948:	f10d 010f 	add.w	r1, sp, #15
c0de194c:	2201      	movs	r2, #1
c0de194e:	f005 fc31 	bl	c0de71b4 <nvm_write>
c0de1952:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1954:	480c      	ldr	r0, [pc, #48]	@ (c0de1988 <controls_callback+0x9c>)
c0de1956:	490d      	ldr	r1, [pc, #52]	@ (c0de198c <controls_callback+0xa0>)
c0de1958:	4478      	add	r0, pc
c0de195a:	4479      	add	r1, pc
c0de195c:	e9cd 1000 	strd	r1, r0, [sp]
c0de1960:	480b      	ldr	r0, [pc, #44]	@ (c0de1990 <controls_callback+0xa4>)
c0de1962:	490c      	ldr	r1, [pc, #48]	@ (c0de1994 <controls_callback+0xa8>)
c0de1964:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1998 <controls_callback+0xac>)
c0de1966:	4b0d      	ldr	r3, [pc, #52]	@ (c0de199c <controls_callback+0xb0>)
c0de1968:	4478      	add	r0, pc
c0de196a:	4479      	add	r1, pc
c0de196c:	447a      	add	r2, pc
c0de196e:	447b      	add	r3, pc
c0de1970:	f003 fc52 	bl	c0de5218 <nbgl_useCaseChoice>
c0de1974:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1976:	bf00      	nop
c0de1978:	00000340 	.word	0x00000340
c0de197c:	000074fa 	.word	0x000074fa
c0de1980:	000074de 	.word	0x000074de
c0de1984:	000074ce 	.word	0x000074ce
c0de1988:	00000045 	.word	0x00000045
c0de198c:	000062be 	.word	0x000062be
c0de1990:	000060a5 	.word	0x000060a5
c0de1994:	000060d0 	.word	0x000060d0
c0de1998:	00006194 	.word	0x00006194
c0de199c:	0000637a 	.word	0x0000637a

c0de19a0 <review_warning_choice>:
c0de19a0:	b5b0      	push	{r4, r5, r7, lr}
c0de19a2:	b086      	sub	sp, #24
c0de19a4:	b1a8      	cbz	r0, c0de19d2 <review_warning_choice+0x32>
c0de19a6:	4c17      	ldr	r4, [pc, #92]	@ (c0de1a04 <review_warning_choice+0x64>)
c0de19a8:	4815      	ldr	r0, [pc, #84]	@ (c0de1a00 <review_warning_choice+0x60>)
c0de19aa:	447c      	add	r4, pc
c0de19ac:	eb09 0500 	add.w	r5, r9, r0
c0de19b0:	f000 f834 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de19b4:	7840      	ldrb	r0, [r0, #1]
c0de19b6:	fab0 f080 	clz	r0, r0
c0de19ba:	0940      	lsrs	r0, r0, #5
c0de19bc:	7628      	strb	r0, [r5, #24]
c0de19be:	f88d 0017 	strb.w	r0, [sp, #23]
c0de19c2:	f000 f82b 	bl	c0de1a1c <OUTLINED_FUNCTION_0>
c0de19c6:	3001      	adds	r0, #1
c0de19c8:	f10d 0117 	add.w	r1, sp, #23
c0de19cc:	2201      	movs	r2, #1
c0de19ce:	f005 fbf1 	bl	c0de71b4 <nvm_write>
c0de19d2:	480b      	ldr	r0, [pc, #44]	@ (c0de1a00 <review_warning_choice+0x60>)
c0de19d4:	2100      	movs	r1, #0
c0de19d6:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de19da:	480b      	ldr	r0, [pc, #44]	@ (c0de1a08 <review_warning_choice+0x68>)
c0de19dc:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1a0c <review_warning_choice+0x6c>)
c0de19de:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1a10 <review_warning_choice+0x70>)
c0de19e0:	4478      	add	r0, pc
c0de19e2:	447a      	add	r2, pc
c0de19e4:	447c      	add	r4, pc
c0de19e6:	e9cd 4200 	strd	r4, r2, [sp]
c0de19ea:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de19ee:	2200      	movs	r2, #0
c0de19f0:	4808      	ldr	r0, [pc, #32]	@ (c0de1a14 <review_warning_choice+0x74>)
c0de19f2:	4909      	ldr	r1, [pc, #36]	@ (c0de1a18 <review_warning_choice+0x78>)
c0de19f4:	4478      	add	r0, pc
c0de19f6:	4479      	add	r1, pc
c0de19f8:	f002 ff98 	bl	c0de492c <nbgl_useCaseHomeAndSettings>
c0de19fc:	b006      	add	sp, #24
c0de19fe:	bdb0      	pop	{r4, r5, r7, pc}
c0de1a00:	00000340 	.word	0x00000340
c0de1a04:	00007452 	.word	0x00007452
c0de1a08:	fffffe71 	.word	0xfffffe71
c0de1a0c:	00006cb6 	.word	0x00006cb6
c0de1a10:	00006ca8 	.word	0x00006ca8
c0de1a14:	00006370 	.word	0x00006370
c0de1a18:	00005e9d 	.word	0x00005e9d

c0de1a1c <OUTLINED_FUNCTION_0>:
c0de1a1c:	4620      	mov	r0, r4
c0de1a1e:	f005 bb99 	b.w	c0de7154 <pic>
	...

c0de1a24 <ui_display_address>:
c0de1a24:	b570      	push	{r4, r5, r6, lr}
c0de1a26:	b088      	sub	sp, #32
c0de1a28:	4e22      	ldr	r6, [pc, #136]	@ (c0de1ab4 <ui_display_address+0x90>)
c0de1a2a:	eb09 0106 	add.w	r1, r9, r6
c0de1a2e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1a32:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de1a36:	4308      	orrs	r0, r1
c0de1a38:	d12a      	bne.n	c0de1a90 <ui_display_address+0x6c>
c0de1a3a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1ab8 <ui_display_address+0x94>)
c0de1a3c:	212b      	movs	r1, #43	@ 0x2b
c0de1a3e:	eb09 0005 	add.w	r0, r9, r5
c0de1a42:	f005 fe93 	bl	c0de776c <__aeabi_memclr>
c0de1a46:	ac03      	add	r4, sp, #12
c0de1a48:	2114      	movs	r1, #20
c0de1a4a:	4620      	mov	r0, r4
c0de1a4c:	f005 fe8e 	bl	c0de776c <__aeabi_memclr>
c0de1a50:	eb09 0006 	add.w	r0, r9, r6
c0de1a54:	4621      	mov	r1, r4
c0de1a56:	2214      	movs	r2, #20
c0de1a58:	3008      	adds	r0, #8
c0de1a5a:	f7fe fae5 	bl	c0de0028 <address_from_pubkey>
c0de1a5e:	b308      	cbz	r0, c0de1aa4 <ui_display_address+0x80>
c0de1a60:	eb09 0205 	add.w	r2, r9, r5
c0de1a64:	a803      	add	r0, sp, #12
c0de1a66:	2114      	movs	r1, #20
c0de1a68:	232b      	movs	r3, #43	@ 0x2b
c0de1a6a:	f004 fe65 	bl	c0de6738 <format_hex>
c0de1a6e:	3001      	adds	r0, #1
c0de1a70:	d018      	beq.n	c0de1aa4 <ui_display_address+0x80>
c0de1a72:	4812      	ldr	r0, [pc, #72]	@ (c0de1abc <ui_display_address+0x98>)
c0de1a74:	2400      	movs	r4, #0
c0de1a76:	2100      	movs	r1, #0
c0de1a78:	4478      	add	r0, pc
c0de1a7a:	e9cd 4000 	strd	r4, r0, [sp]
c0de1a7e:	eb09 0005 	add.w	r0, r9, r5
c0de1a82:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1ac0 <ui_display_address+0x9c>)
c0de1a84:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1ac4 <ui_display_address+0xa0>)
c0de1a86:	447a      	add	r2, pc
c0de1a88:	447b      	add	r3, pc
c0de1a8a:	f003 f8a9 	bl	c0de4be0 <nbgl_useCaseAddressReview>
c0de1a8e:	e00e      	b.n	c0de1aae <ui_display_address+0x8a>
c0de1a90:	2000      	movs	r0, #0
c0de1a92:	f809 0006 	strb.w	r0, [r9, r6]
c0de1a96:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1a9a:	b008      	add	sp, #32
c0de1a9c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1aa0:	f000 b812 	b.w	c0de1ac8 <io_send_sw>
c0de1aa4:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1aa8:	f000 f80e 	bl	c0de1ac8 <io_send_sw>
c0de1aac:	4604      	mov	r4, r0
c0de1aae:	4620      	mov	r0, r4
c0de1ab0:	b008      	add	sp, #32
c0de1ab2:	bd70      	pop	{r4, r5, r6, pc}
c0de1ab4:	00000000 	.word	0x00000000
c0de1ab8:	0000035c 	.word	0x0000035c
c0de1abc:	0000005d 	.word	0x0000005d
c0de1ac0:	00005faa 	.word	0x00005faa
c0de1ac4:	000062c9 	.word	0x000062c9

c0de1ac8 <io_send_sw>:
c0de1ac8:	b580      	push	{r7, lr}
c0de1aca:	4602      	mov	r2, r0
c0de1acc:	2000      	movs	r0, #0
c0de1ace:	2100      	movs	r1, #0
c0de1ad0:	f004 fe92 	bl	c0de67f8 <io_send_response_buffers>
c0de1ad4:	bd80      	pop	{r7, pc}
	...

c0de1ad8 <review_choice>:
c0de1ad8:	b510      	push	{r4, lr}
c0de1ada:	4604      	mov	r4, r0
c0de1adc:	f7ff fe5a 	bl	c0de1794 <validate_pubkey>
c0de1ae0:	2007      	movs	r0, #7
c0de1ae2:	2c00      	cmp	r4, #0
c0de1ae4:	bf18      	it	ne
c0de1ae6:	2006      	movne	r0, #6
c0de1ae8:	4902      	ldr	r1, [pc, #8]	@ (c0de1af4 <review_choice+0x1c>)
c0de1aea:	4479      	add	r1, pc
c0de1aec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1af0:	f003 ba68 	b.w	c0de4fc4 <nbgl_useCaseReviewStatus>
c0de1af4:	fffffd6f 	.word	0xfffffd6f

c0de1af8 <ui_display_transaction_bs_choice>:
c0de1af8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1afa:	b08d      	sub	sp, #52	@ 0x34
c0de1afc:	4f43      	ldr	r7, [pc, #268]	@ (c0de1c0c <ui_display_transaction_bs_choice+0x114>)
c0de1afe:	4604      	mov	r4, r0
c0de1b00:	eb09 0007 	add.w	r0, r9, r7
c0de1b04:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1b08:	2801      	cmp	r0, #1
c0de1b0a:	d15d      	bne.n	c0de1bc8 <ui_display_transaction_bs_choice+0xd0>
c0de1b0c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1b10:	2801      	cmp	r0, #1
c0de1b12:	d159      	bne.n	c0de1bc8 <ui_display_transaction_bs_choice+0xd0>
c0de1b14:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1c10 <ui_display_transaction_bs_choice+0x118>)
c0de1b16:	211e      	movs	r1, #30
c0de1b18:	eb09 0006 	add.w	r0, r9, r6
c0de1b1c:	3014      	adds	r0, #20
c0de1b1e:	f005 fe25 	bl	c0de776c <__aeabi_memclr>
c0de1b22:	ad05      	add	r5, sp, #20
c0de1b24:	211e      	movs	r1, #30
c0de1b26:	4628      	mov	r0, r5
c0de1b28:	f005 fe20 	bl	c0de776c <__aeabi_memclr>
c0de1b2c:	eb09 0007 	add.w	r0, r9, r7
c0de1b30:	211e      	movs	r1, #30
c0de1b32:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1b36:	2003      	movs	r0, #3
c0de1b38:	9000      	str	r0, [sp, #0]
c0de1b3a:	4628      	mov	r0, r5
c0de1b3c:	f004 fdb5 	bl	c0de66aa <format_fpu64>
c0de1b40:	2800      	cmp	r0, #0
c0de1b42:	d04b      	beq.n	c0de1bdc <ui_display_transaction_bs_choice+0xe4>
c0de1b44:	9500      	str	r5, [sp, #0]
c0de1b46:	eb09 0506 	add.w	r5, r9, r6
c0de1b4a:	211e      	movs	r1, #30
c0de1b4c:	231e      	movs	r3, #30
c0de1b4e:	4a31      	ldr	r2, [pc, #196]	@ (c0de1c14 <ui_display_transaction_bs_choice+0x11c>)
c0de1b50:	f105 0014 	add.w	r0, r5, #20
c0de1b54:	447a      	add	r2, pc
c0de1b56:	f005 f96b 	bl	c0de6e30 <snprintf>
c0de1b5a:	3554      	adds	r5, #84	@ 0x54
c0de1b5c:	212b      	movs	r1, #43	@ 0x2b
c0de1b5e:	4628      	mov	r0, r5
c0de1b60:	f005 fe04 	bl	c0de776c <__aeabi_memclr>
c0de1b64:	eb09 0007 	add.w	r0, r9, r7
c0de1b68:	2114      	movs	r1, #20
c0de1b6a:	462a      	mov	r2, r5
c0de1b6c:	232b      	movs	r3, #43	@ 0x2b
c0de1b6e:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1b72:	f004 fde1 	bl	c0de6738 <format_hex>
c0de1b76:	3001      	adds	r0, #1
c0de1b78:	d033      	beq.n	c0de1be2 <ui_display_transaction_bs_choice+0xea>
c0de1b7a:	4927      	ldr	r1, [pc, #156]	@ (c0de1c18 <ui_display_transaction_bs_choice+0x120>)
c0de1b7c:	eb09 0006 	add.w	r0, r9, r6
c0de1b80:	2500      	movs	r5, #0
c0de1b82:	4602      	mov	r2, r0
c0de1b84:	4479      	add	r1, pc
c0de1b86:	f842 1f34 	str.w	r1, [r2, #52]!
c0de1b8a:	f849 2006 	str.w	r2, [r9, r6]
c0de1b8e:	2202      	movs	r2, #2
c0de1b90:	4922      	ldr	r1, [pc, #136]	@ (c0de1c1c <ui_display_transaction_bs_choice+0x124>)
c0de1b92:	7202      	strb	r2, [r0, #8]
c0de1b94:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de1b98:	7285      	strb	r5, [r0, #10]
c0de1b9a:	4479      	add	r1, pc
c0de1b9c:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1ba0:	f100 0114 	add.w	r1, r0, #20
c0de1ba4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de1ba6:	481e      	ldr	r0, [pc, #120]	@ (c0de1c20 <ui_display_transaction_bs_choice+0x128>)
c0de1ba8:	4478      	add	r0, pc
c0de1baa:	b314      	cbz	r4, c0de1bf2 <ui_display_transaction_bs_choice+0xfa>
c0de1bac:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1bb0:	e9cd 5500 	strd	r5, r5, [sp]
c0de1bb4:	eb09 0106 	add.w	r1, r9, r6
c0de1bb8:	2000      	movs	r0, #0
c0de1bba:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1c24 <ui_display_transaction_bs_choice+0x12c>)
c0de1bbc:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1c28 <ui_display_transaction_bs_choice+0x130>)
c0de1bbe:	447a      	add	r2, pc
c0de1bc0:	447b      	add	r3, pc
c0de1bc2:	f002 fffb 	bl	c0de4bbc <nbgl_useCaseReviewBlindSigning>
c0de1bc6:	e011      	b.n	c0de1bec <ui_display_transaction_bs_choice+0xf4>
c0de1bc8:	2000      	movs	r0, #0
c0de1bca:	f809 0007 	strb.w	r0, [r9, r7]
c0de1bce:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1bd2:	b00d      	add	sp, #52	@ 0x34
c0de1bd4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1bd8:	f000 b82c 	b.w	c0de1c34 <io_send_sw>
c0de1bdc:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1be0:	e001      	b.n	c0de1be6 <ui_display_transaction_bs_choice+0xee>
c0de1be2:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1be6:	f000 f825 	bl	c0de1c34 <io_send_sw>
c0de1bea:	4605      	mov	r5, r0
c0de1bec:	4628      	mov	r0, r5
c0de1bee:	b00d      	add	sp, #52	@ 0x34
c0de1bf0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1bf2:	9002      	str	r0, [sp, #8]
c0de1bf4:	e9cd 5500 	strd	r5, r5, [sp]
c0de1bf8:	eb09 0106 	add.w	r1, r9, r6
c0de1bfc:	2000      	movs	r0, #0
c0de1bfe:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1c2c <ui_display_transaction_bs_choice+0x134>)
c0de1c00:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1c30 <ui_display_transaction_bs_choice+0x138>)
c0de1c02:	447a      	add	r2, pc
c0de1c04:	447b      	add	r3, pc
c0de1c06:	f002 ff39 	bl	c0de4a7c <nbgl_useCaseReview>
c0de1c0a:	e7ef      	b.n	c0de1bec <ui_display_transaction_bs_choice+0xf4>
c0de1c0c:	00000000 	.word	0x00000000
c0de1c10:	00000388 	.word	0x00000388
c0de1c14:	00006176 	.word	0x00006176
c0de1c18:	00005f64 	.word	0x00005f64
c0de1c1c:	00006139 	.word	0x00006139
c0de1c20:	00000099 	.word	0x00000099
c0de1c24:	00005e72 	.word	0x00005e72
c0de1c28:	00005e82 	.word	0x00005e82
c0de1c2c:	00005e2e 	.word	0x00005e2e
c0de1c30:	00005e3e 	.word	0x00005e3e

c0de1c34 <io_send_sw>:
c0de1c34:	b580      	push	{r7, lr}
c0de1c36:	4602      	mov	r2, r0
c0de1c38:	2000      	movs	r0, #0
c0de1c3a:	2100      	movs	r1, #0
c0de1c3c:	f004 fddc 	bl	c0de67f8 <io_send_response_buffers>
c0de1c40:	bd80      	pop	{r7, pc}
	...

c0de1c44 <review_choice>:
c0de1c44:	b510      	push	{r4, lr}
c0de1c46:	4604      	mov	r4, r0
c0de1c48:	f7ff fdb2 	bl	c0de17b0 <validate_transaction>
c0de1c4c:	4903      	ldr	r1, [pc, #12]	@ (c0de1c5c <review_choice+0x18>)
c0de1c4e:	f084 0001 	eor.w	r0, r4, #1
c0de1c52:	4479      	add	r1, pc
c0de1c54:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1c58:	f003 b9b4 	b.w	c0de4fc4 <nbgl_useCaseReviewStatus>
c0de1c5c:	fffffc07 	.word	0xfffffc07

c0de1c60 <ui_display_blind_signed_transaction>:
c0de1c60:	2001      	movs	r0, #1
c0de1c62:	f7ff bf49 	b.w	c0de1af8 <ui_display_transaction_bs_choice>

c0de1c66 <ui_display_transaction>:
c0de1c66:	2000      	movs	r0, #0
c0de1c68:	f7ff bf46 	b.w	c0de1af8 <ui_display_transaction_bs_choice>

c0de1c6c <zkn_prv_hash>:
c0de1c6c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1c70:	460c      	mov	r4, r1
c0de1c72:	e9cd 0200 	strd	r0, r2, [sp]
c0de1c76:	4668      	mov	r0, sp
c0de1c78:	2101      	movs	r1, #1
c0de1c7a:	2601      	movs	r6, #1
c0de1c7c:	4622      	mov	r2, r4
c0de1c7e:	f005 f828 	bl	c0de6cd2 <cx_blake2b_512_hash_iovec>
c0de1c82:	4605      	mov	r5, r0
c0de1c84:	bb18      	cbnz	r0, c0de1cce <zkn_prv_hash+0x62>
c0de1c86:	7820      	ldrb	r0, [r4, #0]
c0de1c88:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1c8c:	7020      	strb	r0, [r4, #0]
c0de1c8e:	7fe0      	ldrb	r0, [r4, #31]
c0de1c90:	f366 109f 	bfi	r0, r6, #6, #26
c0de1c94:	77e0      	strb	r0, [r4, #31]
c0de1c96:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1c9a:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1cd4 <zkn_prv_hash+0x68>)
c0de1c9c:	447e      	add	r6, pc
c0de1c9e:	47b0      	blx	r6
c0de1ca0:	4680      	mov	r8, r0
c0de1ca2:	468a      	mov	sl, r1
c0de1ca4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1ca8:	47b0      	blx	r6
c0de1caa:	4683      	mov	fp, r0
c0de1cac:	460f      	mov	r7, r1
c0de1cae:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1cb2:	47b0      	blx	r6
c0de1cb4:	e9c4 0100 	strd	r0, r1, [r4]
c0de1cb8:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1cbc:	47b0      	blx	r6
c0de1cbe:	f104 0208 	add.w	r2, r4, #8
c0de1cc2:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1cc6:	f104 0014 	add.w	r0, r4, #20
c0de1cca:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1cce:	4628      	mov	r0, r5
c0de1cd0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1cd4:	00000341 	.word	0x00000341

c0de1cd8 <zkn_prv2pub>:
c0de1cd8:	b570      	push	{r4, r5, r6, lr}
c0de1cda:	b092      	sub	sp, #72	@ 0x48
c0de1cdc:	4614      	mov	r4, r2
c0de1cde:	6802      	ldr	r2, [r0, #0]
c0de1ce0:	ae02      	add	r6, sp, #8
c0de1ce2:	4605      	mov	r5, r0
c0de1ce4:	4608      	mov	r0, r1
c0de1ce6:	4631      	mov	r1, r6
c0de1ce8:	f7ff ffc0 	bl	c0de1c6c <zkn_prv_hash>
c0de1cec:	2000      	movs	r0, #0
c0de1cee:	2100      	movs	r1, #0
c0de1cf0:	2820      	cmp	r0, #32
c0de1cf2:	d009      	beq.n	c0de1d08 <zkn_prv2pub+0x30>
c0de1cf4:	5c32      	ldrb	r2, [r6, r0]
c0de1cf6:	0149      	lsls	r1, r1, #5
c0de1cf8:	0613      	lsls	r3, r2, #24
c0de1cfa:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1cfe:	5431      	strb	r1, [r6, r0]
c0de1d00:	f002 0107 	and.w	r1, r2, #7
c0de1d04:	3001      	adds	r0, #1
c0de1d06:	e7f3      	b.n	c0de1cf0 <zkn_prv2pub+0x18>
c0de1d08:	4629      	mov	r1, r5
c0de1d0a:	4628      	mov	r0, r5
c0de1d0c:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1d10:	9400      	str	r4, [sp, #0]
c0de1d12:	aa02      	add	r2, sp, #8
c0de1d14:	f000 ffc8 	bl	c0de2ca8 <tEdwards_scalarMul>
c0de1d18:	b918      	cbnz	r0, c0de1d22 <zkn_prv2pub+0x4a>
c0de1d1a:	4628      	mov	r0, r5
c0de1d1c:	4621      	mov	r1, r4
c0de1d1e:	f000 fefe 	bl	c0de2b1e <tEdwards_normalize>
c0de1d22:	b012      	add	sp, #72	@ 0x48
c0de1d24:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1d28 <EddsaPoseidon_Sign_final>:
c0de1d28:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1d2c:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1d30:	4605      	mov	r5, r0
c0de1d32:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1d34:	2820      	cmp	r0, #32
c0de1d36:	d118      	bne.n	c0de1d6a <EddsaPoseidon_Sign_final+0x42>
c0de1d38:	460f      	mov	r7, r1
c0de1d3a:	a982      	add	r1, sp, #520	@ 0x208
c0de1d3c:	4628      	mov	r0, r5
c0de1d3e:	461e      	mov	r6, r3
c0de1d40:	4692      	mov	sl, r2
c0de1d42:	f000 fbbb 	bl	c0de24bc <tEdwards_alloc>
c0de1d46:	b988      	cbnz	r0, c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1d48:	682a      	ldr	r2, [r5, #0]
c0de1d4a:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1d4c:	4638      	mov	r0, r7
c0de1d4e:	4621      	mov	r1, r4
c0de1d50:	f7ff ff8c 	bl	c0de1c6c <zkn_prv_hash>
c0de1d54:	b950      	cbnz	r0, c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1d56:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1d5a:	2000      	movs	r0, #0
c0de1d5c:	a95a      	add	r1, sp, #360	@ 0x168
c0de1d5e:	2820      	cmp	r0, #32
c0de1d60:	d008      	beq.n	c0de1d74 <EddsaPoseidon_Sign_final+0x4c>
c0de1d62:	5c22      	ldrb	r2, [r4, r0]
c0de1d64:	540a      	strb	r2, [r1, r0]
c0de1d66:	3001      	adds	r0, #1
c0de1d68:	e7f9      	b.n	c0de1d5e <EddsaPoseidon_Sign_final+0x36>
c0de1d6a:	489b      	ldr	r0, [pc, #620]	@ (c0de1fd8 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1d6c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1d70:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1d74:	a812      	add	r0, sp, #72	@ 0x48
c0de1d76:	2109      	movs	r1, #9
c0de1d78:	2240      	movs	r2, #64	@ 0x40
c0de1d7a:	f004 ffcb 	bl	c0de6d14 <cx_hash_init_ex>
c0de1d7e:	2800      	cmp	r0, #0
c0de1d80:	d1f4      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1d82:	f104 0120 	add.w	r1, r4, #32
c0de1d86:	a812      	add	r0, sp, #72	@ 0x48
c0de1d88:	2220      	movs	r2, #32
c0de1d8a:	f004 ffc8 	bl	c0de6d1e <cx_hash_update>
c0de1d8e:	2800      	cmp	r0, #0
c0de1d90:	d1ec      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1d92:	a812      	add	r0, sp, #72	@ 0x48
c0de1d94:	4631      	mov	r1, r6
c0de1d96:	2220      	movs	r2, #32
c0de1d98:	f004 ffc1 	bl	c0de6d1e <cx_hash_update>
c0de1d9c:	2800      	cmp	r0, #0
c0de1d9e:	d1e5      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1da0:	a812      	add	r0, sp, #72	@ 0x48
c0de1da2:	ac62      	add	r4, sp, #392	@ 0x188
c0de1da4:	4621      	mov	r1, r4
c0de1da6:	f004 ffb0 	bl	c0de6d0a <cx_hash_final>
c0de1daa:	2800      	cmp	r0, #0
c0de1dac:	d1de      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1dae:	203f      	movs	r0, #63	@ 0x3f
c0de1db0:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1db2:	1c42      	adds	r2, r0, #1
c0de1db4:	d004      	beq.n	c0de1dc0 <EddsaPoseidon_Sign_final+0x98>
c0de1db6:	5c22      	ldrb	r2, [r4, r0]
c0de1db8:	3801      	subs	r0, #1
c0de1dba:	f801 2b01 	strb.w	r2, [r1], #1
c0de1dbe:	e7f8      	b.n	c0de1db2 <EddsaPoseidon_Sign_final+0x8a>
c0de1dc0:	a889      	add	r0, sp, #548	@ 0x224
c0de1dc2:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1dc4:	2140      	movs	r1, #64	@ 0x40
c0de1dc6:	2340      	movs	r3, #64	@ 0x40
c0de1dc8:	f005 fa1a 	bl	c0de7200 <cx_bn_alloc_init>
c0de1dcc:	2800      	cmp	r0, #0
c0de1dce:	d1cd      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1dd0:	a887      	add	r0, sp, #540	@ 0x21c
c0de1dd2:	2140      	movs	r1, #64	@ 0x40
c0de1dd4:	f005 fa0a 	bl	c0de71ec <cx_bn_alloc>
c0de1dd8:	2800      	cmp	r0, #0
c0de1dda:	d1c7      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1ddc:	497f      	ldr	r1, [pc, #508]	@ (c0de1fdc <EddsaPoseidon_Sign_final+0x2b4>)
c0de1dde:	f10d 0808 	add.w	r8, sp, #8
c0de1de2:	2240      	movs	r2, #64	@ 0x40
c0de1de4:	4640      	mov	r0, r8
c0de1de6:	4479      	add	r1, pc
c0de1de8:	f005 fcb6 	bl	c0de7758 <__aeabi_memcpy>
c0de1dec:	a888      	add	r0, sp, #544	@ 0x220
c0de1dee:	2140      	movs	r1, #64	@ 0x40
c0de1df0:	4642      	mov	r2, r8
c0de1df2:	2340      	movs	r3, #64	@ 0x40
c0de1df4:	f005 fa04 	bl	c0de7200 <cx_bn_alloc_init>
c0de1df8:	2800      	cmp	r0, #0
c0de1dfa:	d1b7      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1dfc:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1dfe:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1e02:	f005 fa91 	bl	c0de7328 <cx_bn_reduce>
c0de1e06:	2800      	cmp	r0, #0
c0de1e08:	d1b0      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e0a:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1e0c:	f105 010c 	add.w	r1, r5, #12
c0de1e10:	ab82      	add	r3, sp, #520	@ 0x208
c0de1e12:	4628      	mov	r0, r5
c0de1e14:	f000 fee2 	bl	c0de2bdc <tEdwards_scalarMul_bn>
c0de1e18:	2800      	cmp	r0, #0
c0de1e1a:	d1a7      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e1c:	a982      	add	r1, sp, #520	@ 0x208
c0de1e1e:	4628      	mov	r0, r5
c0de1e20:	f000 fe7d 	bl	c0de2b1e <tEdwards_normalize>
c0de1e24:	2800      	cmp	r0, #0
c0de1e26:	d1a1      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e28:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1e2a:	a952      	add	r1, sp, #328	@ 0x148
c0de1e2c:	f000 f8e0 	bl	c0de1ff0 <OUTLINED_FUNCTION_1>
c0de1e30:	2800      	cmp	r0, #0
c0de1e32:	d19b      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e34:	a888      	add	r0, sp, #544	@ 0x220
c0de1e36:	f005 f9ef 	bl	c0de7218 <cx_bn_destroy>
c0de1e3a:	2800      	cmp	r0, #0
c0de1e3c:	d196      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e3e:	a889      	add	r0, sp, #548	@ 0x224
c0de1e40:	f005 f9ea 	bl	c0de7218 <cx_bn_destroy>
c0de1e44:	2800      	cmp	r0, #0
c0de1e46:	d191      	bne.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e48:	a887      	add	r0, sp, #540	@ 0x21c
c0de1e4a:	f005 f9e5 	bl	c0de7218 <cx_bn_destroy>
c0de1e4e:	2800      	cmp	r0, #0
c0de1e50:	f47f af8c 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e54:	4628      	mov	r0, r5
c0de1e56:	f000 fde0 	bl	c0de2a1a <tEdwards_Curve_partial_destroy>
c0de1e5a:	2800      	cmp	r0, #0
c0de1e5c:	f47f af86 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e60:	f105 0420 	add.w	r4, r5, #32
c0de1e64:	a88a      	add	r0, sp, #552	@ 0x228
c0de1e66:	2105      	movs	r1, #5
c0de1e68:	2205      	movs	r2, #5
c0de1e6a:	4623      	mov	r3, r4
c0de1e6c:	f001 f842 	bl	c0de2ef4 <Poseidon_alloc_init>
c0de1e70:	2800      	cmp	r0, #0
c0de1e72:	f47f af7b 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e76:	201f      	movs	r0, #31
c0de1e78:	a962      	add	r1, sp, #392	@ 0x188
c0de1e7a:	1c42      	adds	r2, r0, #1
c0de1e7c:	d004      	beq.n	c0de1e88 <EddsaPoseidon_Sign_final+0x160>
c0de1e7e:	5c32      	ldrb	r2, [r6, r0]
c0de1e80:	3801      	subs	r0, #1
c0de1e82:	f801 2b01 	strb.w	r2, [r1], #1
c0de1e86:	e7f8      	b.n	c0de1e7a <EddsaPoseidon_Sign_final+0x152>
c0de1e88:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1e8a:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1e8c:	f005 f9e4 	bl	c0de7258 <cx_bn_copy>
c0de1e90:	2800      	cmp	r0, #0
c0de1e92:	f47f af6b 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1e96:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1e98:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1e9a:	f005 f9dd 	bl	c0de7258 <cx_bn_copy>
c0de1e9e:	2800      	cmp	r0, #0
c0de1ea0:	f47f af64 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1ea4:	f8da 1000 	ldr.w	r1, [sl]
c0de1ea8:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1eaa:	f005 f9d5 	bl	c0de7258 <cx_bn_copy>
c0de1eae:	2800      	cmp	r0, #0
c0de1eb0:	f47f af5c 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1eb4:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1eb8:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1eba:	f005 f9cd 	bl	c0de7258 <cx_bn_copy>
c0de1ebe:	2800      	cmp	r0, #0
c0de1ec0:	f47f af54 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1ec4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1ec6:	a962      	add	r1, sp, #392	@ 0x188
c0de1ec8:	2220      	movs	r2, #32
c0de1eca:	f005 f9b9 	bl	c0de7240 <cx_bn_init>
c0de1ece:	2800      	cmp	r0, #0
c0de1ed0:	f47f af4c 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1ed4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1ed6:	4622      	mov	r2, r4
c0de1ed8:	4601      	mov	r1, r0
c0de1eda:	f005 fa5b 	bl	c0de7394 <cx_mont_to_montgomery>
c0de1ede:	2800      	cmp	r0, #0
c0de1ee0:	f47f af44 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1ee4:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1ee6:	f000 f87f 	bl	c0de1fe8 <OUTLINED_FUNCTION_0>
c0de1eea:	2800      	cmp	r0, #0
c0de1eec:	f47f af3e 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1ef0:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1ef2:	f000 f879 	bl	c0de1fe8 <OUTLINED_FUNCTION_0>
c0de1ef6:	2800      	cmp	r0, #0
c0de1ef8:	f47f af38 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1efc:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1efe:	4659      	mov	r1, fp
c0de1f00:	f000 f876 	bl	c0de1ff0 <OUTLINED_FUNCTION_1>
c0de1f04:	2800      	cmp	r0, #0
c0de1f06:	f47f af31 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f0a:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1f0c:	f10b 0120 	add.w	r1, fp, #32
c0de1f10:	f000 f86e 	bl	c0de1ff0 <OUTLINED_FUNCTION_1>
c0de1f14:	2800      	cmp	r0, #0
c0de1f16:	f47f af29 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f1a:	a982      	add	r1, sp, #520	@ 0x208
c0de1f1c:	4628      	mov	r0, r5
c0de1f1e:	f000 fae2 	bl	c0de24e6 <tEdwards_destroy>
c0de1f22:	2800      	cmp	r0, #0
c0de1f24:	f47f af22 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f28:	a885      	add	r0, sp, #532	@ 0x214
c0de1f2a:	2120      	movs	r1, #32
c0de1f2c:	f005 f95e 	bl	c0de71ec <cx_bn_alloc>
c0de1f30:	2800      	cmp	r0, #0
c0de1f32:	f47f af1b 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f36:	a88a      	add	r0, sp, #552	@ 0x228
c0de1f38:	aa85      	add	r2, sp, #532	@ 0x214
c0de1f3a:	2100      	movs	r1, #0
c0de1f3c:	2301      	movs	r3, #1
c0de1f3e:	f001 f83f 	bl	c0de2fc0 <Poseidon>
c0de1f42:	2800      	cmp	r0, #0
c0de1f44:	f47f af12 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f48:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f4a:	f000 f84d 	bl	c0de1fe8 <OUTLINED_FUNCTION_0>
c0de1f4e:	2800      	cmp	r0, #0
c0de1f50:	f47f af0c 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f54:	a886      	add	r0, sp, #536	@ 0x218
c0de1f56:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1f58:	2120      	movs	r1, #32
c0de1f5a:	2320      	movs	r3, #32
c0de1f5c:	f005 f950 	bl	c0de7200 <cx_bn_alloc_init>
c0de1f60:	2800      	cmp	r0, #0
c0de1f62:	f47f af03 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f66:	a801      	add	r0, sp, #4
c0de1f68:	2120      	movs	r1, #32
c0de1f6a:	f005 f93f 	bl	c0de71ec <cx_bn_alloc>
c0de1f6e:	2800      	cmp	r0, #0
c0de1f70:	f47f aefc 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f74:	f108 0220 	add.w	r2, r8, #32
c0de1f78:	a888      	add	r0, sp, #544	@ 0x220
c0de1f7a:	2120      	movs	r1, #32
c0de1f7c:	2320      	movs	r3, #32
c0de1f7e:	f005 f93f 	bl	c0de7200 <cx_bn_alloc_init>
c0de1f82:	2800      	cmp	r0, #0
c0de1f84:	f47f aef2 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f88:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1f8a:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1f8e:	9801      	ldr	r0, [sp, #4]
c0de1f90:	f005 f9be 	bl	c0de7310 <cx_bn_mod_mul>
c0de1f94:	2800      	cmp	r0, #0
c0de1f96:	f47f aee9 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1f9a:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f9c:	a952      	add	r1, sp, #328	@ 0x148
c0de1f9e:	2220      	movs	r2, #32
c0de1fa0:	f005 f94e 	bl	c0de7240 <cx_bn_init>
c0de1fa4:	2800      	cmp	r0, #0
c0de1fa6:	f47f aee1 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1faa:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1fac:	9a01      	ldr	r2, [sp, #4]
c0de1fae:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1fb2:	f005 f995 	bl	c0de72e0 <cx_bn_mod_add>
c0de1fb6:	2800      	cmp	r0, #0
c0de1fb8:	f47f aed8 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1fbc:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de1fbe:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de1fc2:	f005 f9b1 	bl	c0de7328 <cx_bn_reduce>
c0de1fc6:	2800      	cmp	r0, #0
c0de1fc8:	f47f aed0 	bne.w	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1fcc:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1fce:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de1fd2:	f000 f80d 	bl	c0de1ff0 <OUTLINED_FUNCTION_1>
c0de1fd6:	e6c9      	b.n	c0de1d6c <EddsaPoseidon_Sign_final+0x44>
c0de1fd8:	5a4b4e03 	.word	0x5a4b4e03
c0de1fdc:	0000690a 	.word	0x0000690a

c0de1fe0 <rev64>:
c0de1fe0:	ba0a      	rev	r2, r1
c0de1fe2:	ba01      	rev	r1, r0
c0de1fe4:	4610      	mov	r0, r2
c0de1fe6:	4770      	bx	lr

c0de1fe8 <OUTLINED_FUNCTION_0>:
c0de1fe8:	4622      	mov	r2, r4
c0de1fea:	4601      	mov	r1, r0
c0de1fec:	f005 b9de 	b.w	c0de73ac <cx_mont_from_montgomery>

c0de1ff0 <OUTLINED_FUNCTION_1>:
c0de1ff0:	2220      	movs	r2, #32
c0de1ff2:	f005 b945 	b.w	c0de7280 <cx_bn_export>

c0de1ff6 <zkn_frost_interpolate>:
c0de1ff6:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1ffa:	b085      	sub	sp, #20
c0de1ffc:	460e      	mov	r6, r1
c0de1ffe:	4607      	mov	r7, r0
c0de2000:	a803      	add	r0, sp, #12
c0de2002:	2120      	movs	r1, #32
c0de2004:	f000 fa50 	bl	c0de24a8 <OUTLINED_FUNCTION_2>
c0de2008:	b988      	cbnz	r0, c0de202e <zkn_frost_interpolate+0x38>
c0de200a:	a802      	add	r0, sp, #8
c0de200c:	f000 fa53 	bl	c0de24b6 <OUTLINED_FUNCTION_4>
c0de2010:	b968      	cbnz	r0, c0de202e <zkn_frost_interpolate+0x38>
c0de2012:	a801      	add	r0, sp, #4
c0de2014:	f000 fa4f 	bl	c0de24b6 <OUTLINED_FUNCTION_4>
c0de2018:	b948      	cbnz	r0, c0de202e <zkn_frost_interpolate+0x38>
c0de201a:	9803      	ldr	r0, [sp, #12]
c0de201c:	2101      	movs	r1, #1
c0de201e:	f005 f925 	bl	c0de726c <cx_bn_set_u32>
c0de2022:	b920      	cbnz	r0, c0de202e <zkn_frost_interpolate+0x38>
c0de2024:	9802      	ldr	r0, [sp, #8]
c0de2026:	2101      	movs	r1, #1
c0de2028:	f005 f920 	bl	c0de726c <cx_bn_set_u32>
c0de202c:	b110      	cbz	r0, c0de2034 <zkn_frost_interpolate+0x3e>
c0de202e:	b005      	add	sp, #20
c0de2030:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2034:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2038:	f10d 0a10 	add.w	sl, sp, #16
c0de203c:	b31e      	cbz	r6, c0de2086 <zkn_frost_interpolate+0x90>
c0de203e:	6838      	ldr	r0, [r7, #0]
c0de2040:	4629      	mov	r1, r5
c0de2042:	4652      	mov	r2, sl
c0de2044:	f005 f928 	bl	c0de7298 <cx_bn_cmp>
c0de2048:	2800      	cmp	r0, #0
c0de204a:	d1f0      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de204c:	9804      	ldr	r0, [sp, #16]
c0de204e:	b1b8      	cbz	r0, c0de2080 <zkn_frost_interpolate+0x8a>
c0de2050:	9802      	ldr	r0, [sp, #8]
c0de2052:	683a      	ldr	r2, [r7, #0]
c0de2054:	4623      	mov	r3, r4
c0de2056:	4601      	mov	r1, r0
c0de2058:	f005 f95a 	bl	c0de7310 <cx_bn_mod_mul>
c0de205c:	2800      	cmp	r0, #0
c0de205e:	d1e6      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de2060:	6839      	ldr	r1, [r7, #0]
c0de2062:	9801      	ldr	r0, [sp, #4]
c0de2064:	462a      	mov	r2, r5
c0de2066:	4623      	mov	r3, r4
c0de2068:	f005 f946 	bl	c0de72f8 <cx_bn_mod_sub>
c0de206c:	2800      	cmp	r0, #0
c0de206e:	d1de      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de2070:	9803      	ldr	r0, [sp, #12]
c0de2072:	9a01      	ldr	r2, [sp, #4]
c0de2074:	4623      	mov	r3, r4
c0de2076:	4601      	mov	r1, r0
c0de2078:	f005 f94a 	bl	c0de7310 <cx_bn_mod_mul>
c0de207c:	2800      	cmp	r0, #0
c0de207e:	d1d6      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de2080:	3704      	adds	r7, #4
c0de2082:	3e01      	subs	r6, #1
c0de2084:	e7da      	b.n	c0de203c <zkn_frost_interpolate+0x46>
c0de2086:	9903      	ldr	r1, [sp, #12]
c0de2088:	4640      	mov	r0, r8
c0de208a:	4622      	mov	r2, r4
c0de208c:	f005 f958 	bl	c0de7340 <cx_bn_mod_invert_nprime>
c0de2090:	2800      	cmp	r0, #0
c0de2092:	d1cc      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de2094:	9a02      	ldr	r2, [sp, #8]
c0de2096:	4640      	mov	r0, r8
c0de2098:	4641      	mov	r1, r8
c0de209a:	4623      	mov	r3, r4
c0de209c:	f005 f938 	bl	c0de7310 <cx_bn_mod_mul>
c0de20a0:	2800      	cmp	r0, #0
c0de20a2:	d1c4      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de20a4:	a803      	add	r0, sp, #12
c0de20a6:	f005 f8b7 	bl	c0de7218 <cx_bn_destroy>
c0de20aa:	2800      	cmp	r0, #0
c0de20ac:	d1bf      	bne.n	c0de202e <zkn_frost_interpolate+0x38>
c0de20ae:	a802      	add	r0, sp, #8
c0de20b0:	f005 f8b2 	bl	c0de7218 <cx_bn_destroy>
c0de20b4:	e7bb      	b.n	c0de202e <zkn_frost_interpolate+0x38>

c0de20b6 <zkn_frost_interpolate_secrets>:
c0de20b6:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de20ba:	460f      	mov	r7, r1
c0de20bc:	4606      	mov	r6, r0
c0de20be:	a802      	add	r0, sp, #8
c0de20c0:	2120      	movs	r1, #32
c0de20c2:	461c      	mov	r4, r3
c0de20c4:	4692      	mov	sl, r2
c0de20c6:	f005 f891 	bl	c0de71ec <cx_bn_alloc>
c0de20ca:	b108      	cbz	r0, c0de20d0 <zkn_frost_interpolate_secrets+0x1a>
c0de20cc:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de20d0:	a801      	add	r0, sp, #4
c0de20d2:	f000 f9f0 	bl	c0de24b6 <OUTLINED_FUNCTION_4>
c0de20d6:	2800      	cmp	r0, #0
c0de20d8:	d1f8      	bne.n	c0de20cc <zkn_frost_interpolate_secrets+0x16>
c0de20da:	9802      	ldr	r0, [sp, #8]
c0de20dc:	2100      	movs	r1, #0
c0de20de:	f005 f8c5 	bl	c0de726c <cx_bn_set_u32>
c0de20e2:	2800      	cmp	r0, #0
c0de20e4:	d1f2      	bne.n	c0de20cc <zkn_frost_interpolate_secrets+0x16>
c0de20e6:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de20ea:	2500      	movs	r5, #0
c0de20ec:	42ac      	cmp	r4, r5
c0de20ee:	d01d      	beq.n	c0de212c <zkn_frost_interpolate_secrets+0x76>
c0de20f0:	9801      	ldr	r0, [sp, #4]
c0de20f2:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de20f6:	68b3      	ldr	r3, [r6, #8]
c0de20f8:	4621      	mov	r1, r4
c0de20fa:	9000      	str	r0, [sp, #0]
c0de20fc:	4638      	mov	r0, r7
c0de20fe:	f7ff ff7a 	bl	c0de1ff6 <zkn_frost_interpolate>
c0de2102:	2800      	cmp	r0, #0
c0de2104:	d1e2      	bne.n	c0de20cc <zkn_frost_interpolate_secrets+0x16>
c0de2106:	9801      	ldr	r0, [sp, #4]
c0de2108:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de210c:	68b3      	ldr	r3, [r6, #8]
c0de210e:	4601      	mov	r1, r0
c0de2110:	f005 f8fe 	bl	c0de7310 <cx_bn_mod_mul>
c0de2114:	2800      	cmp	r0, #0
c0de2116:	d1d9      	bne.n	c0de20cc <zkn_frost_interpolate_secrets+0x16>
c0de2118:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de211c:	68b3      	ldr	r3, [r6, #8]
c0de211e:	4601      	mov	r1, r0
c0de2120:	f005 f8de 	bl	c0de72e0 <cx_bn_mod_add>
c0de2124:	3501      	adds	r5, #1
c0de2126:	2800      	cmp	r0, #0
c0de2128:	d0e0      	beq.n	c0de20ec <zkn_frost_interpolate_secrets+0x36>
c0de212a:	e7cf      	b.n	c0de20cc <zkn_frost_interpolate_secrets+0x16>
c0de212c:	68b2      	ldr	r2, [r6, #8]
c0de212e:	9902      	ldr	r1, [sp, #8]
c0de2130:	4640      	mov	r0, r8
c0de2132:	f005 f8f9 	bl	c0de7328 <cx_bn_reduce>
c0de2136:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de213a <zkn_evalshare>:
c0de213a:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de213e:	460e      	mov	r6, r1
c0de2140:	6801      	ldr	r1, [r0, #0]
c0de2142:	4607      	mov	r7, r0
c0de2144:	a801      	add	r0, sp, #4
c0de2146:	f000 f9af 	bl	c0de24a8 <OUTLINED_FUNCTION_2>
c0de214a:	b108      	cbz	r0, c0de2150 <zkn_evalshare+0x16>
c0de214c:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2150:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2154:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2158:	4640      	mov	r0, r8
c0de215a:	f005 f87d 	bl	c0de7258 <cx_bn_copy>
c0de215e:	2800      	cmp	r0, #0
c0de2160:	d1f4      	bne.n	c0de214c <zkn_evalshare+0x12>
c0de2162:	3e04      	subs	r6, #4
c0de2164:	68bb      	ldr	r3, [r7, #8]
c0de2166:	9801      	ldr	r0, [sp, #4]
c0de2168:	4641      	mov	r1, r8
c0de216a:	b17d      	cbz	r5, c0de218c <zkn_evalshare+0x52>
c0de216c:	4622      	mov	r2, r4
c0de216e:	f005 f8cf 	bl	c0de7310 <cx_bn_mod_mul>
c0de2172:	2800      	cmp	r0, #0
c0de2174:	d1ea      	bne.n	c0de214c <zkn_evalshare+0x12>
c0de2176:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de217a:	68bb      	ldr	r3, [r7, #8]
c0de217c:	9901      	ldr	r1, [sp, #4]
c0de217e:	4640      	mov	r0, r8
c0de2180:	f005 f8ae 	bl	c0de72e0 <cx_bn_mod_add>
c0de2184:	3d01      	subs	r5, #1
c0de2186:	2800      	cmp	r0, #0
c0de2188:	d0ec      	beq.n	c0de2164 <zkn_evalshare+0x2a>
c0de218a:	e7df      	b.n	c0de214c <zkn_evalshare+0x12>
c0de218c:	461a      	mov	r2, r3
c0de218e:	f005 f8cb 	bl	c0de7328 <cx_bn_reduce>
c0de2192:	2800      	cmp	r0, #0
c0de2194:	d1da      	bne.n	c0de214c <zkn_evalshare+0x12>
c0de2196:	9901      	ldr	r1, [sp, #4]
c0de2198:	4640      	mov	r0, r8
c0de219a:	f005 f85d 	bl	c0de7258 <cx_bn_copy>
c0de219e:	2800      	cmp	r0, #0
c0de21a0:	d1d4      	bne.n	c0de214c <zkn_evalshare+0x12>
c0de21a2:	a801      	add	r0, sp, #4
c0de21a4:	f005 f838 	bl	c0de7218 <cx_bn_destroy>
c0de21a8:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de21ac <zkn_encode_group_commitmentHash>:
c0de21ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de21b0:	b0d6      	sub	sp, #344	@ 0x158
c0de21b2:	4606      	mov	r6, r0
c0de21b4:	a816      	add	r0, sp, #88	@ 0x58
c0de21b6:	461c      	mov	r4, r3
c0de21b8:	4615      	mov	r5, r2
c0de21ba:	460f      	mov	r7, r1
c0de21bc:	f001 f88a 	bl	c0de32d4 <zkn_frost_H5_init>
c0de21c0:	b110      	cbz	r0, c0de21c8 <zkn_encode_group_commitmentHash+0x1c>
c0de21c2:	b056      	add	sp, #344	@ 0x158
c0de21c4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de21c8:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de21cc:	9401      	str	r4, [sp, #4]
c0de21ce:	a806      	add	r0, sp, #24
c0de21d0:	f04f 0a00 	mov.w	sl, #0
c0de21d4:	f04f 0b02 	mov.w	fp, #2
c0de21d8:	2604      	movs	r6, #4
c0de21da:	2400      	movs	r4, #0
c0de21dc:	9502      	str	r5, [sp, #8]
c0de21de:	f1a0 0801 	sub.w	r8, r0, #1
c0de21e2:	42ac      	cmp	r4, r5
c0de21e4:	d058      	beq.n	c0de2298 <zkn_encode_group_commitmentHash+0xec>
c0de21e6:	9805      	ldr	r0, [sp, #20]
c0de21e8:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de21ec:	9103      	str	r1, [sp, #12]
c0de21ee:	6805      	ldr	r5, [r0, #0]
c0de21f0:	9804      	ldr	r0, [sp, #16]
c0de21f2:	fb05 000a 	mla	r0, r5, sl, r0
c0de21f6:	4629      	mov	r1, r5
c0de21f8:	b129      	cbz	r1, c0de2206 <zkn_encode_group_commitmentHash+0x5a>
c0de21fa:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de21fe:	f808 2001 	strb.w	r2, [r8, r1]
c0de2202:	3901      	subs	r1, #1
c0de2204:	e7f8      	b.n	c0de21f8 <zkn_encode_group_commitmentHash+0x4c>
c0de2206:	a816      	add	r0, sp, #88	@ 0x58
c0de2208:	a906      	add	r1, sp, #24
c0de220a:	462a      	mov	r2, r5
c0de220c:	f001 f87c 	bl	c0de3308 <zkn_frost_hash_update>
c0de2210:	2800      	cmp	r0, #0
c0de2212:	d1d6      	bne.n	c0de21c2 <zkn_encode_group_commitmentHash+0x16>
c0de2214:	9803      	ldr	r0, [sp, #12]
c0de2216:	9f04      	ldr	r7, [sp, #16]
c0de2218:	1c43      	adds	r3, r0, #1
c0de221a:	9805      	ldr	r0, [sp, #20]
c0de221c:	fb05 710b 	mla	r1, r5, fp, r7
c0de2220:	6802      	ldr	r2, [r0, #0]
c0de2222:	1e50      	subs	r0, r2, #1
c0de2224:	4615      	mov	r5, r2
c0de2226:	fb02 0303 	mla	r3, r2, r3, r0
c0de222a:	5cfb      	ldrb	r3, [r7, r3]
c0de222c:	b12d      	cbz	r5, c0de223a <zkn_encode_group_commitmentHash+0x8e>
c0de222e:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2232:	f808 7005 	strb.w	r7, [r8, r5]
c0de2236:	3d01      	subs	r5, #1
c0de2238:	e7f8      	b.n	c0de222c <zkn_encode_group_commitmentHash+0x80>
c0de223a:	a906      	add	r1, sp, #24
c0de223c:	5c0d      	ldrb	r5, [r1, r0]
c0de223e:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2242:	540b      	strb	r3, [r1, r0]
c0de2244:	a816      	add	r0, sp, #88	@ 0x58
c0de2246:	f001 f85f 	bl	c0de3308 <zkn_frost_hash_update>
c0de224a:	2800      	cmp	r0, #0
c0de224c:	d1b9      	bne.n	c0de21c2 <zkn_encode_group_commitmentHash+0x16>
c0de224e:	9805      	ldr	r0, [sp, #20]
c0de2250:	9d04      	ldr	r5, [sp, #16]
c0de2252:	6802      	ldr	r2, [r0, #0]
c0de2254:	9803      	ldr	r0, [sp, #12]
c0de2256:	1cc3      	adds	r3, r0, #3
c0de2258:	1e50      	subs	r0, r2, #1
c0de225a:	fb02 5106 	mla	r1, r2, r6, r5
c0de225e:	fb02 0303 	mla	r3, r2, r3, r0
c0de2262:	5ceb      	ldrb	r3, [r5, r3]
c0de2264:	4615      	mov	r5, r2
c0de2266:	b12d      	cbz	r5, c0de2274 <zkn_encode_group_commitmentHash+0xc8>
c0de2268:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de226c:	f808 7005 	strb.w	r7, [r8, r5]
c0de2270:	3d01      	subs	r5, #1
c0de2272:	e7f8      	b.n	c0de2266 <zkn_encode_group_commitmentHash+0xba>
c0de2274:	a906      	add	r1, sp, #24
c0de2276:	5c0d      	ldrb	r5, [r1, r0]
c0de2278:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de227c:	540b      	strb	r3, [r1, r0]
c0de227e:	a816      	add	r0, sp, #88	@ 0x58
c0de2280:	f001 f842 	bl	c0de3308 <zkn_frost_hash_update>
c0de2284:	3605      	adds	r6, #5
c0de2286:	3401      	adds	r4, #1
c0de2288:	9d02      	ldr	r5, [sp, #8]
c0de228a:	f10b 0b05 	add.w	fp, fp, #5
c0de228e:	f10a 0a05 	add.w	sl, sl, #5
c0de2292:	2800      	cmp	r0, #0
c0de2294:	d0a5      	beq.n	c0de21e2 <zkn_encode_group_commitmentHash+0x36>
c0de2296:	e794      	b.n	c0de21c2 <zkn_encode_group_commitmentHash+0x16>
c0de2298:	9805      	ldr	r0, [sp, #20]
c0de229a:	6881      	ldr	r1, [r0, #8]
c0de229c:	a816      	add	r0, sp, #88	@ 0x58
c0de229e:	9a01      	ldr	r2, [sp, #4]
c0de22a0:	f001 f834 	bl	c0de330c <zkn_frost_hash_final>
c0de22a4:	e78d      	b.n	c0de21c2 <zkn_encode_group_commitmentHash+0x16>

c0de22a6 <zkn_compute_group_commitment>:
c0de22a6:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de22aa:	b088      	sub	sp, #32
c0de22ac:	460d      	mov	r5, r1
c0de22ae:	a905      	add	r1, sp, #20
c0de22b0:	461f      	mov	r7, r3
c0de22b2:	4692      	mov	sl, r2
c0de22b4:	4604      	mov	r4, r0
c0de22b6:	f000 f901 	bl	c0de24bc <tEdwards_alloc>
c0de22ba:	b948      	cbnz	r0, c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de22bc:	a902      	add	r1, sp, #8
c0de22be:	4620      	mov	r0, r4
c0de22c0:	f000 f8fc 	bl	c0de24bc <tEdwards_alloc>
c0de22c4:	b920      	cbnz	r0, c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de22c6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de22c8:	4620      	mov	r0, r4
c0de22ca:	f000 fbef 	bl	c0de2aac <tEdwards_SetNeutral>
c0de22ce:	b110      	cbz	r0, c0de22d6 <zkn_compute_group_commitment+0x30>
c0de22d0:	b008      	add	sp, #32
c0de22d2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de22d6:	ae05      	add	r6, sp, #20
c0de22d8:	f04f 0800 	mov.w	r8, #0
c0de22dc:	f04f 0b04 	mov.w	fp, #4
c0de22e0:	9501      	str	r5, [sp, #4]
c0de22e2:	4547      	cmp	r7, r8
c0de22e4:	d041      	beq.n	c0de236a <zkn_compute_group_commitment+0xc4>
c0de22e6:	6822      	ldr	r2, [r4, #0]
c0de22e8:	f1ab 0003 	sub.w	r0, fp, #3
c0de22ec:	4633      	mov	r3, r6
c0de22ee:	fb02 5100 	mla	r1, r2, r0, r5
c0de22f2:	f1ab 0002 	sub.w	r0, fp, #2
c0de22f6:	fb02 5200 	mla	r2, r2, r0, r5
c0de22fa:	4620      	mov	r0, r4
c0de22fc:	f000 fb4e 	bl	c0de299c <tEdwards_init>
c0de2300:	2800      	cmp	r0, #0
c0de2302:	d1e5      	bne.n	c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de2304:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2306:	4620      	mov	r0, r4
c0de2308:	4632      	mov	r2, r6
c0de230a:	460b      	mov	r3, r1
c0de230c:	f000 f967 	bl	c0de25de <tEdwards_add>
c0de2310:	2800      	cmp	r0, #0
c0de2312:	d1dd      	bne.n	c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de2314:	6822      	ldr	r2, [r4, #0]
c0de2316:	f1ab 0001 	sub.w	r0, fp, #1
c0de231a:	4633      	mov	r3, r6
c0de231c:	fb02 5100 	mla	r1, r2, r0, r5
c0de2320:	fb02 520b 	mla	r2, r2, fp, r5
c0de2324:	4620      	mov	r0, r4
c0de2326:	f000 fb39 	bl	c0de299c <tEdwards_init>
c0de232a:	2800      	cmp	r0, #0
c0de232c:	d1d0      	bne.n	c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de232e:	6823      	ldr	r3, [r4, #0]
c0de2330:	4650      	mov	r0, sl
c0de2332:	f10d 0a08 	add.w	sl, sp, #8
c0de2336:	4631      	mov	r1, r6
c0de2338:	4605      	mov	r5, r0
c0de233a:	f8cd a000 	str.w	sl, [sp]
c0de233e:	fb03 0208 	mla	r2, r3, r8, r0
c0de2342:	4620      	mov	r0, r4
c0de2344:	f000 fcb0 	bl	c0de2ca8 <tEdwards_scalarMul>
c0de2348:	2800      	cmp	r0, #0
c0de234a:	d1c1      	bne.n	c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de234c:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de234e:	4620      	mov	r0, r4
c0de2350:	4652      	mov	r2, sl
c0de2352:	460b      	mov	r3, r1
c0de2354:	f000 f943 	bl	c0de25de <tEdwards_add>
c0de2358:	46aa      	mov	sl, r5
c0de235a:	9d01      	ldr	r5, [sp, #4]
c0de235c:	f10b 0b05 	add.w	fp, fp, #5
c0de2360:	f108 0801 	add.w	r8, r8, #1
c0de2364:	2800      	cmp	r0, #0
c0de2366:	d0bc      	beq.n	c0de22e2 <zkn_compute_group_commitment+0x3c>
c0de2368:	e7b2      	b.n	c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de236a:	a905      	add	r1, sp, #20
c0de236c:	f000 f8a0 	bl	c0de24b0 <OUTLINED_FUNCTION_3>
c0de2370:	2800      	cmp	r0, #0
c0de2372:	d1ad      	bne.n	c0de22d0 <zkn_compute_group_commitment+0x2a>
c0de2374:	a902      	add	r1, sp, #8
c0de2376:	f000 f89b 	bl	c0de24b0 <OUTLINED_FUNCTION_3>
c0de237a:	e7a9      	b.n	c0de22d0 <zkn_compute_group_commitment+0x2a>

c0de237c <zkn_compute_binding_factors>:
c0de237c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2380:	b0f4      	sub	sp, #464	@ 0x1d0
c0de2382:	460e      	mov	r6, r1
c0de2384:	6801      	ldr	r1, [r0, #0]
c0de2386:	4607      	mov	r7, r0
c0de2388:	a873      	add	r0, sp, #460	@ 0x1cc
c0de238a:	f000 f88d 	bl	c0de24a8 <OUTLINED_FUNCTION_2>
c0de238e:	b9f0      	cbnz	r0, c0de23ce <zkn_compute_binding_factors+0x52>
c0de2390:	6839      	ldr	r1, [r7, #0]
c0de2392:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2394:	f004 ff2a 	bl	c0de71ec <cx_bn_alloc>
c0de2398:	b9c8      	cbnz	r0, c0de23ce <zkn_compute_binding_factors+0x52>
c0de239a:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de239e:	68ba      	ldr	r2, [r7, #8]
c0de23a0:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de23a2:	f000 ff4b 	bl	c0de323c <Babyfrost_H4>
c0de23a6:	b990      	cbnz	r0, c0de23ce <zkn_compute_binding_factors+0x52>
c0de23a8:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de23aa:	4638      	mov	r0, r7
c0de23ac:	4629      	mov	r1, r5
c0de23ae:	4622      	mov	r2, r4
c0de23b0:	f7ff fefc 	bl	c0de21ac <zkn_encode_group_commitmentHash>
c0de23b4:	b958      	cbnz	r0, c0de23ce <zkn_compute_binding_factors+0x52>
c0de23b6:	683a      	ldr	r2, [r7, #0]
c0de23b8:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de23ba:	a912      	add	r1, sp, #72	@ 0x48
c0de23bc:	f004 ff60 	bl	c0de7280 <cx_bn_export>
c0de23c0:	b928      	cbnz	r0, c0de23ce <zkn_compute_binding_factors+0x52>
c0de23c2:	683a      	ldr	r2, [r7, #0]
c0de23c4:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de23c6:	a902      	add	r1, sp, #8
c0de23c8:	f004 ff5a 	bl	c0de7280 <cx_bn_export>
c0de23cc:	b110      	cbz	r0, c0de23d4 <zkn_compute_binding_factors+0x58>
c0de23ce:	b074      	add	sp, #464	@ 0x1d0
c0de23d0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de23d4:	2000      	movs	r0, #0
c0de23d6:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de23da:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de23de:	f04f 0800 	mov.w	r8, #0
c0de23e2:	9000      	str	r0, [sp, #0]
c0de23e4:	4544      	cmp	r4, r8
c0de23e6:	d043      	beq.n	c0de2470 <zkn_compute_binding_factors+0xf4>
c0de23e8:	6839      	ldr	r1, [r7, #0]
c0de23ea:	a801      	add	r0, sp, #4
c0de23ec:	f004 fefe 	bl	c0de71ec <cx_bn_alloc>
c0de23f0:	2800      	cmp	r0, #0
c0de23f2:	d1ec      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de23f4:	4650      	mov	r0, sl
c0de23f6:	f000 ff53 	bl	c0de32a0 <zkn_frost_H1_init>
c0de23fa:	2800      	cmp	r0, #0
c0de23fc:	d1e7      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de23fe:	6839      	ldr	r1, [r7, #0]
c0de2400:	4630      	mov	r0, r6
c0de2402:	465a      	mov	r2, fp
c0de2404:	f000 f845 	bl	c0de2492 <OUTLINED_FUNCTION_0>
c0de2408:	2800      	cmp	r0, #0
c0de240a:	d1e0      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de240c:	6839      	ldr	r1, [r7, #0]
c0de240e:	a812      	add	r0, sp, #72	@ 0x48
c0de2410:	465a      	mov	r2, fp
c0de2412:	f000 f83e 	bl	c0de2492 <OUTLINED_FUNCTION_0>
c0de2416:	2800      	cmp	r0, #0
c0de2418:	d1d9      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de241a:	6839      	ldr	r1, [r7, #0]
c0de241c:	a802      	add	r0, sp, #8
c0de241e:	465a      	mov	r2, fp
c0de2420:	f000 f837 	bl	c0de2492 <OUTLINED_FUNCTION_0>
c0de2424:	2800      	cmp	r0, #0
c0de2426:	d1d2      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de2428:	6839      	ldr	r1, [r7, #0]
c0de242a:	9800      	ldr	r0, [sp, #0]
c0de242c:	465a      	mov	r2, fp
c0de242e:	fb00 5001 	mla	r0, r0, r1, r5
c0de2432:	f000 f82e 	bl	c0de2492 <OUTLINED_FUNCTION_0>
c0de2436:	2800      	cmp	r0, #0
c0de2438:	d1c9      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de243a:	68b9      	ldr	r1, [r7, #8]
c0de243c:	9a01      	ldr	r2, [sp, #4]
c0de243e:	4650      	mov	r0, sl
c0de2440:	f000 ff64 	bl	c0de330c <zkn_frost_hash_final>
c0de2444:	2800      	cmp	r0, #0
c0de2446:	d1c2      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de2448:	683a      	ldr	r2, [r7, #0]
c0de244a:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de244c:	fb02 0108 	mla	r1, r2, r8, r0
c0de2450:	9801      	ldr	r0, [sp, #4]
c0de2452:	f004 ff15 	bl	c0de7280 <cx_bn_export>
c0de2456:	2800      	cmp	r0, #0
c0de2458:	d1b9      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de245a:	a801      	add	r0, sp, #4
c0de245c:	f004 fedc 	bl	c0de7218 <cx_bn_destroy>
c0de2460:	2800      	cmp	r0, #0
c0de2462:	d1b4      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de2464:	9800      	ldr	r0, [sp, #0]
c0de2466:	f108 0801 	add.w	r8, r8, #1
c0de246a:	3005      	adds	r0, #5
c0de246c:	9000      	str	r0, [sp, #0]
c0de246e:	e7b9      	b.n	c0de23e4 <zkn_compute_binding_factors+0x68>
c0de2470:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2472:	f004 fed1 	bl	c0de7218 <cx_bn_destroy>
c0de2476:	2800      	cmp	r0, #0
c0de2478:	d1a9      	bne.n	c0de23ce <zkn_compute_binding_factors+0x52>
c0de247a:	a872      	add	r0, sp, #456	@ 0x1c8
c0de247c:	f004 fecc 	bl	c0de7218 <cx_bn_destroy>
c0de2480:	e7a5      	b.n	c0de23ce <zkn_compute_binding_factors+0x52>

c0de2482 <zkn_serialize_scalar_for_hash>:
c0de2482:	3a01      	subs	r2, #1
c0de2484:	b121      	cbz	r1, c0de2490 <zkn_serialize_scalar_for_hash+0xe>
c0de2486:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de248a:	5453      	strb	r3, [r2, r1]
c0de248c:	3901      	subs	r1, #1
c0de248e:	e7f9      	b.n	c0de2484 <zkn_serialize_scalar_for_hash+0x2>
c0de2490:	4770      	bx	lr

c0de2492 <OUTLINED_FUNCTION_0>:
c0de2492:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2496:	f7ff fff4 	bl	c0de2482 <zkn_serialize_scalar_for_hash>
c0de249a:	683a      	ldr	r2, [r7, #0]
c0de249c:	4650      	mov	r0, sl
c0de249e:	4659      	mov	r1, fp
c0de24a0:	f85d eb08 	ldr.w	lr, [sp], #8
c0de24a4:	f000 bf30 	b.w	c0de3308 <zkn_frost_hash_update>

c0de24a8 <OUTLINED_FUNCTION_2>:
c0de24a8:	461c      	mov	r4, r3
c0de24aa:	4615      	mov	r5, r2
c0de24ac:	f004 be9e 	b.w	c0de71ec <cx_bn_alloc>

c0de24b0 <OUTLINED_FUNCTION_3>:
c0de24b0:	4620      	mov	r0, r4
c0de24b2:	f000 b818 	b.w	c0de24e6 <tEdwards_destroy>

c0de24b6 <OUTLINED_FUNCTION_4>:
c0de24b6:	2120      	movs	r1, #32
c0de24b8:	f004 be98 	b.w	c0de71ec <cx_bn_alloc>

c0de24bc <tEdwards_alloc>:
c0de24bc:	b5b0      	push	{r4, r5, r7, lr}
c0de24be:	460d      	mov	r5, r1
c0de24c0:	6801      	ldr	r1, [r0, #0]
c0de24c2:	4604      	mov	r4, r0
c0de24c4:	4628      	mov	r0, r5
c0de24c6:	f004 fe91 	bl	c0de71ec <cx_bn_alloc>
c0de24ca:	b920      	cbnz	r0, c0de24d6 <tEdwards_alloc+0x1a>
c0de24cc:	6821      	ldr	r1, [r4, #0]
c0de24ce:	1d28      	adds	r0, r5, #4
c0de24d0:	f004 fe8c 	bl	c0de71ec <cx_bn_alloc>
c0de24d4:	b100      	cbz	r0, c0de24d8 <tEdwards_alloc+0x1c>
c0de24d6:	bdb0      	pop	{r4, r5, r7, pc}
c0de24d8:	6821      	ldr	r1, [r4, #0]
c0de24da:	f105 0008 	add.w	r0, r5, #8
c0de24de:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de24e2:	f004 be83 	b.w	c0de71ec <cx_bn_alloc>

c0de24e6 <tEdwards_destroy>:
c0de24e6:	b510      	push	{r4, lr}
c0de24e8:	4608      	mov	r0, r1
c0de24ea:	460c      	mov	r4, r1
c0de24ec:	f004 fe94 	bl	c0de7218 <cx_bn_destroy>
c0de24f0:	b918      	cbnz	r0, c0de24fa <tEdwards_destroy+0x14>
c0de24f2:	1d20      	adds	r0, r4, #4
c0de24f4:	f004 fe90 	bl	c0de7218 <cx_bn_destroy>
c0de24f8:	b100      	cbz	r0, c0de24fc <tEdwards_destroy+0x16>
c0de24fa:	bd10      	pop	{r4, pc}
c0de24fc:	f104 0008 	add.w	r0, r4, #8
c0de2500:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2504:	f004 be88 	b.w	c0de7218 <cx_bn_destroy>

c0de2508 <tEdwards_double>:
c0de2508:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de250a:	460f      	mov	r7, r1
c0de250c:	4614      	mov	r4, r2
c0de250e:	4605      	mov	r5, r0
c0de2510:	6843      	ldr	r3, [r0, #4]
c0de2512:	6809      	ldr	r1, [r1, #0]
c0de2514:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2516:	687a      	ldr	r2, [r7, #4]
c0de2518:	f004 fee2 	bl	c0de72e0 <cx_bn_mod_add>
c0de251c:	2800      	cmp	r0, #0
c0de251e:	d154      	bne.n	c0de25ca <tEdwards_double+0xc2>
c0de2520:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2524:	f105 0620 	add.w	r6, r5, #32
c0de2528:	f000 fbe4 	bl	c0de2cf4 <OUTLINED_FUNCTION_2>
c0de252c:	2800      	cmp	r0, #0
c0de252e:	d14c      	bne.n	c0de25ca <tEdwards_double+0xc2>
c0de2530:	6839      	ldr	r1, [r7, #0]
c0de2532:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2534:	f000 fbde 	bl	c0de2cf4 <OUTLINED_FUNCTION_2>
c0de2538:	2800      	cmp	r0, #0
c0de253a:	d146      	bne.n	c0de25ca <tEdwards_double+0xc2>
c0de253c:	6879      	ldr	r1, [r7, #4]
c0de253e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2540:	f000 fbd8 	bl	c0de2cf4 <OUTLINED_FUNCTION_2>
c0de2544:	2800      	cmp	r0, #0
c0de2546:	d140      	bne.n	c0de25ca <tEdwards_double+0xc2>
c0de2548:	69a9      	ldr	r1, [r5, #24]
c0de254a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de254c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de254e:	f000 fbcb 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2552:	bbd0      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de2554:	686b      	ldr	r3, [r5, #4]
c0de2556:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de255a:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de255c:	f004 fec0 	bl	c0de72e0 <cx_bn_mod_add>
c0de2560:	bb98      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de2562:	68b9      	ldr	r1, [r7, #8]
c0de2564:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2566:	f000 fbc5 	bl	c0de2cf4 <OUTLINED_FUNCTION_2>
c0de256a:	bb70      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de256c:	686b      	ldr	r3, [r5, #4]
c0de256e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2570:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2572:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2574:	f004 fec0 	bl	c0de72f8 <cx_bn_mod_sub>
c0de2578:	bb38      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de257a:	686b      	ldr	r3, [r5, #4]
c0de257c:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de257e:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2582:	f004 feb9 	bl	c0de72f8 <cx_bn_mod_sub>
c0de2586:	bb00      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de2588:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de258c:	686b      	ldr	r3, [r5, #4]
c0de258e:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2590:	f004 feb2 	bl	c0de72f8 <cx_bn_mod_sub>
c0de2594:	b9c8      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de2596:	686b      	ldr	r3, [r5, #4]
c0de2598:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de259c:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de259e:	f004 feab 	bl	c0de72f8 <cx_bn_mod_sub>
c0de25a2:	b990      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de25a4:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de25a6:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de25a8:	6820      	ldr	r0, [r4, #0]
c0de25aa:	f000 fb9d 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de25ae:	b960      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de25b0:	686b      	ldr	r3, [r5, #4]
c0de25b2:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de25b6:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de25b8:	f004 fe9e 	bl	c0de72f8 <cx_bn_mod_sub>
c0de25bc:	b928      	cbnz	r0, c0de25ca <tEdwards_double+0xc2>
c0de25be:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de25c0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de25c2:	6860      	ldr	r0, [r4, #4]
c0de25c4:	f000 fb90 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de25c8:	b100      	cbz	r0, c0de25cc <tEdwards_double+0xc4>
c0de25ca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de25cc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de25ce:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de25d0:	68a0      	ldr	r0, [r4, #8]
c0de25d2:	4633      	mov	r3, r6
c0de25d4:	b001      	add	sp, #4
c0de25d6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de25da:	f004 bef3 	b.w	c0de73c4 <cx_mont_mul>

c0de25de <tEdwards_add>:
c0de25de:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de25e2:	4606      	mov	r6, r0
c0de25e4:	4617      	mov	r7, r2
c0de25e6:	460c      	mov	r4, r1
c0de25e8:	6892      	ldr	r2, [r2, #8]
c0de25ea:	6889      	ldr	r1, [r1, #8]
c0de25ec:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de25ee:	4698      	mov	r8, r3
c0de25f0:	f106 0520 	add.w	r5, r6, #32
c0de25f4:	f000 fb7b 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de25f8:	2800      	cmp	r0, #0
c0de25fa:	d17d      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de25fc:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2600:	462b      	mov	r3, r5
c0de2602:	460a      	mov	r2, r1
c0de2604:	f004 fede 	bl	c0de73c4 <cx_mont_mul>
c0de2608:	2800      	cmp	r0, #0
c0de260a:	d175      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de260c:	683a      	ldr	r2, [r7, #0]
c0de260e:	6821      	ldr	r1, [r4, #0]
c0de2610:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2612:	f000 fb6c 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de2616:	2800      	cmp	r0, #0
c0de2618:	d16e      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de261a:	687a      	ldr	r2, [r7, #4]
c0de261c:	6861      	ldr	r1, [r4, #4]
c0de261e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2620:	f000 fb65 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de2624:	2800      	cmp	r0, #0
c0de2626:	d167      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de2628:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de262c:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de262e:	f000 fb5e 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de2632:	2800      	cmp	r0, #0
c0de2634:	d160      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de2636:	69f2      	ldr	r2, [r6, #28]
c0de2638:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de263a:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de263c:	f000 fb57 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de2640:	2800      	cmp	r0, #0
c0de2642:	d159      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de2644:	6873      	ldr	r3, [r6, #4]
c0de2646:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2648:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de264c:	f004 fe54 	bl	c0de72f8 <cx_bn_mod_sub>
c0de2650:	2800      	cmp	r0, #0
c0de2652:	d151      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de2654:	6873      	ldr	r3, [r6, #4]
c0de2656:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2658:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de265a:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de265c:	f004 fe40 	bl	c0de72e0 <cx_bn_mod_add>
c0de2660:	2800      	cmp	r0, #0
c0de2662:	d149      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de2664:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2668:	6873      	ldr	r3, [r6, #4]
c0de266a:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de266c:	f004 fe38 	bl	c0de72e0 <cx_bn_mod_add>
c0de2670:	2800      	cmp	r0, #0
c0de2672:	d141      	bne.n	c0de26f8 <tEdwards_add+0x11a>
c0de2674:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2678:	6873      	ldr	r3, [r6, #4]
c0de267a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de267c:	f004 fe30 	bl	c0de72e0 <cx_bn_mod_add>
c0de2680:	bbd0      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de2682:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2684:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2688:	f000 fb31 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de268c:	bba0      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de268e:	6873      	ldr	r3, [r6, #4]
c0de2690:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2694:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2696:	f004 fe2f 	bl	c0de72f8 <cx_bn_mod_sub>
c0de269a:	bb68      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de269c:	6873      	ldr	r3, [r6, #4]
c0de269e:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de26a0:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de26a4:	f004 fe28 	bl	c0de72f8 <cx_bn_mod_sub>
c0de26a8:	bb30      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de26aa:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de26ae:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de26b0:	f000 fb1d 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de26b4:	bb00      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de26b6:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de26b8:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de26ba:	f8d8 0000 	ldr.w	r0, [r8]
c0de26be:	f000 fb16 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de26c2:	b9c8      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de26c4:	69b1      	ldr	r1, [r6, #24]
c0de26c6:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de26ca:	f000 fb10 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de26ce:	b998      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de26d0:	6873      	ldr	r3, [r6, #4]
c0de26d2:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de26d4:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de26d6:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de26d8:	f004 fe0e 	bl	c0de72f8 <cx_bn_mod_sub>
c0de26dc:	b960      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de26de:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de26e0:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de26e2:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de26e4:	f000 fb03 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de26e8:	b930      	cbnz	r0, c0de26f8 <tEdwards_add+0x11a>
c0de26ea:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de26ee:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de26f2:	f000 fafc 	bl	c0de2cee <OUTLINED_FUNCTION_1>
c0de26f6:	b108      	cbz	r0, c0de26fc <tEdwards_add+0x11e>
c0de26f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de26fc:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2700:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2704:	462b      	mov	r3, r5
c0de2706:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de270a:	f004 be5b 	b.w	c0de73c4 <cx_mont_mul>

c0de270e <tEdwards_IsOnCurve>:
c0de270e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2710:	4605      	mov	r5, r0
c0de2712:	460f      	mov	r7, r1
c0de2714:	2005      	movs	r0, #5
c0de2716:	6809      	ldr	r1, [r1, #0]
c0de2718:	4614      	mov	r4, r2
c0de271a:	9000      	str	r0, [sp, #0]
c0de271c:	f105 0620 	add.w	r6, r5, #32
c0de2720:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2722:	460a      	mov	r2, r1
c0de2724:	f000 fae0 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2728:	b100      	cbz	r0, c0de272c <tEdwards_IsOnCurve+0x1e>
c0de272a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de272c:	6879      	ldr	r1, [r7, #4]
c0de272e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2730:	f000 fae0 	bl	c0de2cf4 <OUTLINED_FUNCTION_2>
c0de2734:	2800      	cmp	r0, #0
c0de2736:	d1f8      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2738:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de273c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de273e:	f000 fad3 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2742:	2800      	cmp	r0, #0
c0de2744:	d1f1      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2746:	69a9      	ldr	r1, [r5, #24]
c0de2748:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de274a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de274c:	f000 facc 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2750:	2800      	cmp	r0, #0
c0de2752:	d1ea      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2754:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2756:	686b      	ldr	r3, [r5, #4]
c0de2758:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de275a:	4601      	mov	r1, r0
c0de275c:	f004 fdc0 	bl	c0de72e0 <cx_bn_mod_add>
c0de2760:	2800      	cmp	r0, #0
c0de2762:	d1e2      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2764:	69e9      	ldr	r1, [r5, #28]
c0de2766:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2768:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de276a:	f000 fabd 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de276e:	2800      	cmp	r0, #0
c0de2770:	d1db      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2772:	686b      	ldr	r3, [r5, #4]
c0de2774:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2776:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2778:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de277a:	f004 fdb1 	bl	c0de72e0 <cx_bn_mod_add>
c0de277e:	2800      	cmp	r0, #0
c0de2780:	d1d3      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2782:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2784:	4632      	mov	r2, r6
c0de2786:	4601      	mov	r1, r0
c0de2788:	f004 fe10 	bl	c0de73ac <cx_mont_from_montgomery>
c0de278c:	2800      	cmp	r0, #0
c0de278e:	d1cc      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de2790:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2792:	4632      	mov	r2, r6
c0de2794:	4601      	mov	r1, r0
c0de2796:	f004 fe09 	bl	c0de73ac <cx_mont_from_montgomery>
c0de279a:	2800      	cmp	r0, #0
c0de279c:	d1c5      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de279e:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de27a2:	466a      	mov	r2, sp
c0de27a4:	f004 fd78 	bl	c0de7298 <cx_bn_cmp>
c0de27a8:	2800      	cmp	r0, #0
c0de27aa:	d1be      	bne.n	c0de272a <tEdwards_IsOnCurve+0x1c>
c0de27ac:	9800      	ldr	r0, [sp, #0]
c0de27ae:	fab0 f080 	clz	r0, r0
c0de27b2:	0940      	lsrs	r0, r0, #5
c0de27b4:	7020      	strb	r0, [r4, #0]
c0de27b6:	2000      	movs	r0, #0
c0de27b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de27bc <tEdwards_Curve_alloc_init>:
c0de27bc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de27c0:	b0d2      	sub	sp, #328	@ 0x148
c0de27c2:	4604      	mov	r4, r0
c0de27c4:	2902      	cmp	r1, #2
c0de27c6:	d022      	beq.n	c0de280e <tEdwards_Curve_alloc_init+0x52>
c0de27c8:	2901      	cmp	r1, #1
c0de27ca:	f040 80cd 	bne.w	c0de2968 <tEdwards_Curve_alloc_init+0x1ac>
c0de27ce:	2020      	movs	r0, #32
c0de27d0:	2220      	movs	r2, #32
c0de27d2:	6020      	str	r0, [r4, #0]
c0de27d4:	af4a      	add	r7, sp, #296	@ 0x128
c0de27d6:	4967      	ldr	r1, [pc, #412]	@ (c0de2974 <tEdwards_Curve_alloc_init+0x1b8>)
c0de27d8:	4638      	mov	r0, r7
c0de27da:	4479      	add	r1, pc
c0de27dc:	f004 ffbc 	bl	c0de7758 <__aeabi_memcpy>
c0de27e0:	ae42      	add	r6, sp, #264	@ 0x108
c0de27e2:	4965      	ldr	r1, [pc, #404]	@ (c0de2978 <tEdwards_Curve_alloc_init+0x1bc>)
c0de27e4:	2220      	movs	r2, #32
c0de27e6:	4630      	mov	r0, r6
c0de27e8:	4479      	add	r1, pc
c0de27ea:	f004 ffb5 	bl	c0de7758 <__aeabi_memcpy>
c0de27ee:	4963      	ldr	r1, [pc, #396]	@ (c0de297c <tEdwards_Curve_alloc_init+0x1c0>)
c0de27f0:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de27f4:	2220      	movs	r2, #32
c0de27f6:	4650      	mov	r0, sl
c0de27f8:	4479      	add	r1, pc
c0de27fa:	f004 ffad 	bl	c0de7758 <__aeabi_memcpy>
c0de27fe:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2800:	495f      	ldr	r1, [pc, #380]	@ (c0de2980 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2802:	2220      	movs	r2, #32
c0de2804:	4628      	mov	r0, r5
c0de2806:	4479      	add	r1, pc
c0de2808:	f004 ffa6 	bl	c0de7758 <__aeabi_memcpy>
c0de280c:	e02d      	b.n	c0de286a <tEdwards_Curve_alloc_init+0xae>
c0de280e:	2020      	movs	r0, #32
c0de2810:	2220      	movs	r2, #32
c0de2812:	6020      	str	r0, [r4, #0]
c0de2814:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2816:	495b      	ldr	r1, [pc, #364]	@ (c0de2984 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2818:	4638      	mov	r0, r7
c0de281a:	4479      	add	r1, pc
c0de281c:	f004 ff9c 	bl	c0de7758 <__aeabi_memcpy>
c0de2820:	ae22      	add	r6, sp, #136	@ 0x88
c0de2822:	4959      	ldr	r1, [pc, #356]	@ (c0de2988 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2824:	2220      	movs	r2, #32
c0de2826:	4630      	mov	r0, r6
c0de2828:	4479      	add	r1, pc
c0de282a:	f004 ff95 	bl	c0de7758 <__aeabi_memcpy>
c0de282e:	4957      	ldr	r1, [pc, #348]	@ (c0de298c <tEdwards_Curve_alloc_init+0x1d0>)
c0de2830:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2834:	2220      	movs	r2, #32
c0de2836:	4650      	mov	r0, sl
c0de2838:	4479      	add	r1, pc
c0de283a:	f004 ff8d 	bl	c0de7758 <__aeabi_memcpy>
c0de283e:	a812      	add	r0, sp, #72	@ 0x48
c0de2840:	4953      	ldr	r1, [pc, #332]	@ (c0de2990 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2842:	2220      	movs	r2, #32
c0de2844:	9001      	str	r0, [sp, #4]
c0de2846:	4479      	add	r1, pc
c0de2848:	f004 ff86 	bl	c0de7758 <__aeabi_memcpy>
c0de284c:	4951      	ldr	r1, [pc, #324]	@ (c0de2994 <tEdwards_Curve_alloc_init+0x1d8>)
c0de284e:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2852:	2220      	movs	r2, #32
c0de2854:	4658      	mov	r0, fp
c0de2856:	4479      	add	r1, pc
c0de2858:	f004 ff7e 	bl	c0de7758 <__aeabi_memcpy>
c0de285c:	ad02      	add	r5, sp, #8
c0de285e:	494e      	ldr	r1, [pc, #312]	@ (c0de2998 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2860:	2220      	movs	r2, #32
c0de2862:	4628      	mov	r0, r5
c0de2864:	4479      	add	r1, pc
c0de2866:	f004 ff77 	bl	c0de7758 <__aeabi_memcpy>
c0de286a:	f104 0804 	add.w	r8, r4, #4
c0de286e:	2120      	movs	r1, #32
c0de2870:	463a      	mov	r2, r7
c0de2872:	2320      	movs	r3, #32
c0de2874:	4640      	mov	r0, r8
c0de2876:	f004 fcc3 	bl	c0de7200 <cx_bn_alloc_init>
c0de287a:	2800      	cmp	r0, #0
c0de287c:	d175      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de287e:	4620      	mov	r0, r4
c0de2880:	462a      	mov	r2, r5
c0de2882:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2886:	460b      	mov	r3, r1
c0de2888:	f004 fcba 	bl	c0de7200 <cx_bn_alloc_init>
c0de288c:	2800      	cmp	r0, #0
c0de288e:	d16c      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2890:	f104 0520 	add.w	r5, r4, #32
c0de2894:	2120      	movs	r1, #32
c0de2896:	4628      	mov	r0, r5
c0de2898:	f004 fd68 	bl	c0de736c <cx_mont_alloc>
c0de289c:	2800      	cmp	r0, #0
c0de289e:	d164      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28a0:	f8d8 1000 	ldr.w	r1, [r8]
c0de28a4:	4628      	mov	r0, r5
c0de28a6:	f004 fd6b 	bl	c0de7380 <cx_mont_init>
c0de28aa:	2800      	cmp	r0, #0
c0de28ac:	d15d      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28ae:	4627      	mov	r7, r4
c0de28b0:	f857 1b28 	ldr.w	r1, [r7], #40
c0de28b4:	4638      	mov	r0, r7
c0de28b6:	f004 fc99 	bl	c0de71ec <cx_bn_alloc>
c0de28ba:	2800      	cmp	r0, #0
c0de28bc:	d155      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28be:	6838      	ldr	r0, [r7, #0]
c0de28c0:	2101      	movs	r1, #1
c0de28c2:	f004 fcd3 	bl	c0de726c <cx_bn_set_u32>
c0de28c6:	2800      	cmp	r0, #0
c0de28c8:	d14f      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28ca:	6838      	ldr	r0, [r7, #0]
c0de28cc:	f000 fa16 	bl	c0de2cfc <OUTLINED_FUNCTION_3>
c0de28d0:	2800      	cmp	r0, #0
c0de28d2:	d14a      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28d4:	f104 070c 	add.w	r7, r4, #12
c0de28d8:	4620      	mov	r0, r4
c0de28da:	4639      	mov	r1, r7
c0de28dc:	f7ff fdee 	bl	c0de24bc <tEdwards_alloc>
c0de28e0:	2800      	cmp	r0, #0
c0de28e2:	d142      	bne.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28e4:	9901      	ldr	r1, [sp, #4]
c0de28e6:	4620      	mov	r0, r4
c0de28e8:	465a      	mov	r2, fp
c0de28ea:	463b      	mov	r3, r7
c0de28ec:	f000 f856 	bl	c0de299c <tEdwards_init>
c0de28f0:	bbd8      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de28f2:	4627      	mov	r7, r4
c0de28f4:	4632      	mov	r2, r6
c0de28f6:	f857 1b18 	ldr.w	r1, [r7], #24
c0de28fa:	4638      	mov	r0, r7
c0de28fc:	460b      	mov	r3, r1
c0de28fe:	f004 fc7f 	bl	c0de7200 <cx_bn_alloc_init>
c0de2902:	bb90      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2904:	6838      	ldr	r0, [r7, #0]
c0de2906:	f000 f9f9 	bl	c0de2cfc <OUTLINED_FUNCTION_3>
c0de290a:	bb70      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de290c:	4626      	mov	r6, r4
c0de290e:	4652      	mov	r2, sl
c0de2910:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2914:	4630      	mov	r0, r6
c0de2916:	460b      	mov	r3, r1
c0de2918:	f004 fc72 	bl	c0de7200 <cx_bn_alloc_init>
c0de291c:	bb28      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de291e:	6830      	ldr	r0, [r6, #0]
c0de2920:	f000 f9ec 	bl	c0de2cfc <OUTLINED_FUNCTION_3>
c0de2924:	bb08      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2926:	4620      	mov	r0, r4
c0de2928:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de292c:	f004 fc5e 	bl	c0de71ec <cx_bn_alloc>
c0de2930:	b9d8      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2932:	f000 f9fb 	bl	c0de2d2c <OUTLINED_FUNCTION_8>
c0de2936:	b9c0      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2938:	f000 f9e4 	bl	c0de2d04 <OUTLINED_FUNCTION_4>
c0de293c:	b9a8      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de293e:	f000 f9f0 	bl	c0de2d22 <OUTLINED_FUNCTION_7>
c0de2942:	b990      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2944:	f000 f9fc 	bl	c0de2d40 <OUTLINED_FUNCTION_10>
c0de2948:	b978      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de294a:	f000 f9e5 	bl	c0de2d18 <OUTLINED_FUNCTION_6>
c0de294e:	b960      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2950:	f000 f9f1 	bl	c0de2d36 <OUTLINED_FUNCTION_9>
c0de2954:	b948      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2956:	f000 f9da 	bl	c0de2d0e <OUTLINED_FUNCTION_5>
c0de295a:	b930      	cbnz	r0, c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de295c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2960:	4620      	mov	r0, r4
c0de2962:	f004 fc43 	bl	c0de71ec <cx_bn_alloc>
c0de2966:	e000      	b.n	c0de296a <tEdwards_Curve_alloc_init+0x1ae>
c0de2968:	4801      	ldr	r0, [pc, #4]	@ (c0de2970 <tEdwards_Curve_alloc_init+0x1b4>)
c0de296a:	b052      	add	sp, #328	@ 0x148
c0de296c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2970:	5a4b4e01 	.word	0x5a4b4e01
c0de2974:	000055b2 	.word	0x000055b2
c0de2978:	00005744 	.word	0x00005744
c0de297c:	000056f4 	.word	0x000056f4
c0de2980:	00005646 	.word	0x00005646
c0de2984:	00005752 	.word	0x00005752
c0de2988:	000056a4 	.word	0x000056a4
c0de298c:	00005714 	.word	0x00005714
c0de2990:	00005746 	.word	0x00005746
c0de2994:	00005756 	.word	0x00005756
c0de2998:	00005608 	.word	0x00005608

c0de299c <tEdwards_init>:
c0de299c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de299e:	6806      	ldr	r6, [r0, #0]
c0de29a0:	461c      	mov	r4, r3
c0de29a2:	4617      	mov	r7, r2
c0de29a4:	460a      	mov	r2, r1
c0de29a6:	4605      	mov	r5, r0
c0de29a8:	a802      	add	r0, sp, #8
c0de29aa:	4631      	mov	r1, r6
c0de29ac:	4633      	mov	r3, r6
c0de29ae:	f004 fc27 	bl	c0de7200 <cx_bn_alloc_init>
c0de29b2:	b100      	cbz	r0, c0de29b6 <tEdwards_init+0x1a>
c0de29b4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de29b6:	a801      	add	r0, sp, #4
c0de29b8:	4631      	mov	r1, r6
c0de29ba:	463a      	mov	r2, r7
c0de29bc:	4633      	mov	r3, r6
c0de29be:	f004 fc1f 	bl	c0de7200 <cx_bn_alloc_init>
c0de29c2:	2800      	cmp	r0, #0
c0de29c4:	d1f6      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de29c6:	4668      	mov	r0, sp
c0de29c8:	4631      	mov	r1, r6
c0de29ca:	f004 fc0f 	bl	c0de71ec <cx_bn_alloc>
c0de29ce:	2800      	cmp	r0, #0
c0de29d0:	d1f0      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de29d2:	f105 0620 	add.w	r6, r5, #32
c0de29d6:	6820      	ldr	r0, [r4, #0]
c0de29d8:	9902      	ldr	r1, [sp, #8]
c0de29da:	4632      	mov	r2, r6
c0de29dc:	f004 fcda 	bl	c0de7394 <cx_mont_to_montgomery>
c0de29e0:	2800      	cmp	r0, #0
c0de29e2:	d1e7      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de29e4:	6860      	ldr	r0, [r4, #4]
c0de29e6:	9901      	ldr	r1, [sp, #4]
c0de29e8:	4632      	mov	r2, r6
c0de29ea:	f004 fcd3 	bl	c0de7394 <cx_mont_to_montgomery>
c0de29ee:	2800      	cmp	r0, #0
c0de29f0:	d1e0      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de29f2:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de29f4:	68a0      	ldr	r0, [r4, #8]
c0de29f6:	f004 fc2f 	bl	c0de7258 <cx_bn_copy>
c0de29fa:	2800      	cmp	r0, #0
c0de29fc:	d1da      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de29fe:	a802      	add	r0, sp, #8
c0de2a00:	f004 fc0a 	bl	c0de7218 <cx_bn_destroy>
c0de2a04:	2800      	cmp	r0, #0
c0de2a06:	d1d5      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de2a08:	a801      	add	r0, sp, #4
c0de2a0a:	f004 fc05 	bl	c0de7218 <cx_bn_destroy>
c0de2a0e:	2800      	cmp	r0, #0
c0de2a10:	d1d0      	bne.n	c0de29b4 <tEdwards_init+0x18>
c0de2a12:	4668      	mov	r0, sp
c0de2a14:	f004 fc00 	bl	c0de7218 <cx_bn_destroy>
c0de2a18:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2a1a <tEdwards_Curve_partial_destroy>:
c0de2a1a:	b510      	push	{r4, lr}
c0de2a1c:	4604      	mov	r4, r0
c0de2a1e:	302c      	adds	r0, #44	@ 0x2c
c0de2a20:	f004 fbfa 	bl	c0de7218 <cx_bn_destroy>
c0de2a24:	bbd8      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a26:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2a2a:	f004 fbf5 	bl	c0de7218 <cx_bn_destroy>
c0de2a2e:	bbb0      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a30:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2a34:	f004 fbf0 	bl	c0de7218 <cx_bn_destroy>
c0de2a38:	bb88      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a3a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2a3e:	f004 fbeb 	bl	c0de7218 <cx_bn_destroy>
c0de2a42:	bb60      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a44:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2a48:	f004 fbe6 	bl	c0de7218 <cx_bn_destroy>
c0de2a4c:	bb38      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a4e:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2a52:	f004 fbe1 	bl	c0de7218 <cx_bn_destroy>
c0de2a56:	bb10      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a58:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2a5c:	f004 fbdc 	bl	c0de7218 <cx_bn_destroy>
c0de2a60:	b9e8      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a62:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2a66:	f004 fbd7 	bl	c0de7218 <cx_bn_destroy>
c0de2a6a:	b9c0      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a6c:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2a70:	f004 fbd2 	bl	c0de7218 <cx_bn_destroy>
c0de2a74:	b998      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a76:	f104 010c 	add.w	r1, r4, #12
c0de2a7a:	f7ff fd34 	bl	c0de24e6 <tEdwards_destroy>
c0de2a7e:	b970      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a80:	f104 0018 	add.w	r0, r4, #24
c0de2a84:	f004 fbc8 	bl	c0de7218 <cx_bn_destroy>
c0de2a88:	b948      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a8a:	f104 001c 	add.w	r0, r4, #28
c0de2a8e:	f004 fbc3 	bl	c0de7218 <cx_bn_destroy>
c0de2a92:	b920      	cbnz	r0, c0de2a9e <tEdwards_Curve_partial_destroy+0x84>
c0de2a94:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2a98:	f004 fbbe 	bl	c0de7218 <cx_bn_destroy>
c0de2a9c:	b100      	cbz	r0, c0de2aa0 <tEdwards_Curve_partial_destroy+0x86>
c0de2a9e:	bd10      	pop	{r4, pc}
c0de2aa0:	f104 0008 	add.w	r0, r4, #8
c0de2aa4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2aa8:	f004 bbb6 	b.w	c0de7218 <cx_bn_destroy>

c0de2aac <tEdwards_SetNeutral>:
c0de2aac:	b5b0      	push	{r4, r5, r7, lr}
c0de2aae:	4605      	mov	r5, r0
c0de2ab0:	6808      	ldr	r0, [r1, #0]
c0de2ab2:	460c      	mov	r4, r1
c0de2ab4:	2100      	movs	r1, #0
c0de2ab6:	f004 fbd9 	bl	c0de726c <cx_bn_set_u32>
c0de2aba:	b918      	cbnz	r0, c0de2ac4 <tEdwards_SetNeutral+0x18>
c0de2abc:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2abe:	f000 f944 	bl	c0de2d4a <OUTLINED_FUNCTION_11>
c0de2ac2:	b100      	cbz	r0, c0de2ac6 <tEdwards_SetNeutral+0x1a>
c0de2ac4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2ac6:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2ac8:	68a0      	ldr	r0, [r4, #8]
c0de2aca:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2ace:	f004 bbc3 	b.w	c0de7258 <cx_bn_copy>

c0de2ad2 <tEdwards_export>:
c0de2ad2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ad6:	4698      	mov	r8, r3
c0de2ad8:	4616      	mov	r6, r2
c0de2ada:	460f      	mov	r7, r1
c0de2adc:	4605      	mov	r5, r0
c0de2ade:	f000 f81e 	bl	c0de2b1e <tEdwards_normalize>
c0de2ae2:	b998      	cbnz	r0, c0de2b0c <tEdwards_export+0x3a>
c0de2ae4:	f105 0420 	add.w	r4, r5, #32
c0de2ae8:	6839      	ldr	r1, [r7, #0]
c0de2aea:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2aec:	4622      	mov	r2, r4
c0de2aee:	f004 fc5d 	bl	c0de73ac <cx_mont_from_montgomery>
c0de2af2:	b958      	cbnz	r0, c0de2b0c <tEdwards_export+0x3a>
c0de2af4:	6879      	ldr	r1, [r7, #4]
c0de2af6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2af8:	4622      	mov	r2, r4
c0de2afa:	f004 fc57 	bl	c0de73ac <cx_mont_from_montgomery>
c0de2afe:	b928      	cbnz	r0, c0de2b0c <tEdwards_export+0x3a>
c0de2b00:	682a      	ldr	r2, [r5, #0]
c0de2b02:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b04:	4631      	mov	r1, r6
c0de2b06:	f004 fbbb 	bl	c0de7280 <cx_bn_export>
c0de2b0a:	b108      	cbz	r0, c0de2b10 <tEdwards_export+0x3e>
c0de2b0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b10:	682a      	ldr	r2, [r5, #0]
c0de2b12:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2b14:	4641      	mov	r1, r8
c0de2b16:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b1a:	f004 bbb1 	b.w	c0de7280 <cx_bn_export>

c0de2b1e <tEdwards_normalize>:
c0de2b1e:	b570      	push	{r4, r5, r6, lr}
c0de2b20:	4605      	mov	r5, r0
c0de2b22:	460c      	mov	r4, r1
c0de2b24:	6889      	ldr	r1, [r1, #8]
c0de2b26:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2b28:	f105 0620 	add.w	r6, r5, #32
c0de2b2c:	4632      	mov	r2, r6
c0de2b2e:	f004 fc65 	bl	c0de73fc <cx_mont_invert_nprime>
c0de2b32:	b9d0      	cbnz	r0, c0de2b6a <tEdwards_normalize+0x4c>
c0de2b34:	6822      	ldr	r2, [r4, #0]
c0de2b36:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2b3a:	f000 f8d5 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2b3e:	b9a0      	cbnz	r0, c0de2b6a <tEdwards_normalize+0x4c>
c0de2b40:	6862      	ldr	r2, [r4, #4]
c0de2b42:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b44:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2b46:	f000 f8cf 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2b4a:	b970      	cbnz	r0, c0de2b6a <tEdwards_normalize+0x4c>
c0de2b4c:	68a2      	ldr	r2, [r4, #8]
c0de2b4e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b50:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2b52:	f000 f8c9 	bl	c0de2ce8 <OUTLINED_FUNCTION_0>
c0de2b56:	b940      	cbnz	r0, c0de2b6a <tEdwards_normalize+0x4c>
c0de2b58:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2b5a:	6820      	ldr	r0, [r4, #0]
c0de2b5c:	f004 fb7c 	bl	c0de7258 <cx_bn_copy>
c0de2b60:	b918      	cbnz	r0, c0de2b6a <tEdwards_normalize+0x4c>
c0de2b62:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2b64:	f000 f8f1 	bl	c0de2d4a <OUTLINED_FUNCTION_11>
c0de2b68:	b100      	cbz	r0, c0de2b6c <tEdwards_normalize+0x4e>
c0de2b6a:	bd70      	pop	{r4, r5, r6, pc}
c0de2b6c:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2b6e:	68a0      	ldr	r0, [r4, #8]
c0de2b70:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2b74:	f004 bb70 	b.w	c0de7258 <cx_bn_copy>

c0de2b78 <tEdwards_copy>:
c0de2b78:	b5b0      	push	{r4, r5, r7, lr}
c0de2b7a:	460c      	mov	r4, r1
c0de2b7c:	4605      	mov	r5, r0
c0de2b7e:	6801      	ldr	r1, [r0, #0]
c0de2b80:	6820      	ldr	r0, [r4, #0]
c0de2b82:	f004 fb69 	bl	c0de7258 <cx_bn_copy>
c0de2b86:	b918      	cbnz	r0, c0de2b90 <tEdwards_copy+0x18>
c0de2b88:	6869      	ldr	r1, [r5, #4]
c0de2b8a:	f000 f8de 	bl	c0de2d4a <OUTLINED_FUNCTION_11>
c0de2b8e:	b100      	cbz	r0, c0de2b92 <tEdwards_copy+0x1a>
c0de2b90:	bdb0      	pop	{r4, r5, r7, pc}
c0de2b92:	68a9      	ldr	r1, [r5, #8]
c0de2b94:	68a0      	ldr	r0, [r4, #8]
c0de2b96:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2b9a:	f004 bb5d 	b.w	c0de7258 <cx_bn_copy>

c0de2b9e <tEdwards_alloc_init>:
c0de2b9e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2ba0:	460e      	mov	r6, r1
c0de2ba2:	6801      	ldr	r1, [r0, #0]
c0de2ba4:	4607      	mov	r7, r0
c0de2ba6:	4618      	mov	r0, r3
c0de2ba8:	461c      	mov	r4, r3
c0de2baa:	4615      	mov	r5, r2
c0de2bac:	f004 fb1e 	bl	c0de71ec <cx_bn_alloc>
c0de2bb0:	b950      	cbnz	r0, c0de2bc8 <tEdwards_alloc_init+0x2a>
c0de2bb2:	6839      	ldr	r1, [r7, #0]
c0de2bb4:	1d20      	adds	r0, r4, #4
c0de2bb6:	f004 fb19 	bl	c0de71ec <cx_bn_alloc>
c0de2bba:	b928      	cbnz	r0, c0de2bc8 <tEdwards_alloc_init+0x2a>
c0de2bbc:	6839      	ldr	r1, [r7, #0]
c0de2bbe:	f104 0008 	add.w	r0, r4, #8
c0de2bc2:	f004 fb13 	bl	c0de71ec <cx_bn_alloc>
c0de2bc6:	b100      	cbz	r0, c0de2bca <tEdwards_alloc_init+0x2c>
c0de2bc8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2bca:	4638      	mov	r0, r7
c0de2bcc:	4631      	mov	r1, r6
c0de2bce:	462a      	mov	r2, r5
c0de2bd0:	4623      	mov	r3, r4
c0de2bd2:	b001      	add	sp, #4
c0de2bd4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2bd8:	f7ff bee0 	b.w	c0de299c <tEdwards_init>

c0de2bdc <tEdwards_scalarMul_bn>:
c0de2bdc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2be0:	4607      	mov	r7, r0
c0de2be2:	2000      	movs	r0, #0
c0de2be4:	4688      	mov	r8, r1
c0de2be6:	4615      	mov	r5, r2
c0de2be8:	2100      	movs	r1, #0
c0de2bea:	469b      	mov	fp, r3
c0de2bec:	9003      	str	r0, [sp, #12]
c0de2bee:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2bf2:	6810      	ldr	r0, [r2, #0]
c0de2bf4:	aa03      	add	r2, sp, #12
c0de2bf6:	f004 fb5b 	bl	c0de72b0 <cx_bn_cmp_u32>
c0de2bfa:	bb38      	cbnz	r0, c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2bfc:	9803      	ldr	r0, [sp, #12]
c0de2bfe:	b1d0      	cbz	r0, c0de2c36 <tEdwards_scalarMul_bn+0x5a>
c0de2c00:	6828      	ldr	r0, [r5, #0]
c0de2c02:	a901      	add	r1, sp, #4
c0de2c04:	f004 fb12 	bl	c0de722c <cx_bn_nbytes>
c0de2c08:	bb00      	cbnz	r0, c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2c0a:	2002      	movs	r0, #2
c0de2c0c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2c10:	f10d 040b 	add.w	r4, sp, #11
c0de2c14:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c16:	9801      	ldr	r0, [sp, #4]
c0de2c18:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2c1c:	2000      	movs	r0, #0
c0de2c1e:	2801      	cmp	r0, #1
c0de2c20:	d00f      	beq.n	c0de2c42 <tEdwards_scalarMul_bn+0x66>
c0de2c22:	6828      	ldr	r0, [r5, #0]
c0de2c24:	4631      	mov	r1, r6
c0de2c26:	4622      	mov	r2, r4
c0de2c28:	f004 fb4e 	bl	c0de72c8 <cx_bn_tst_bit>
c0de2c2c:	b970      	cbnz	r0, c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2c2e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2c32:	3e01      	subs	r6, #1
c0de2c34:	e7f3      	b.n	c0de2c1e <tEdwards_scalarMul_bn+0x42>
c0de2c36:	4638      	mov	r0, r7
c0de2c38:	4659      	mov	r1, fp
c0de2c3a:	f7ff ff37 	bl	c0de2aac <tEdwards_SetNeutral>
c0de2c3e:	b928      	cbnz	r0, c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2c40:	e7de      	b.n	c0de2c00 <tEdwards_scalarMul_bn+0x24>
c0de2c42:	4640      	mov	r0, r8
c0de2c44:	4659      	mov	r1, fp
c0de2c46:	f7ff ff97 	bl	c0de2b78 <tEdwards_copy>
c0de2c4a:	b110      	cbz	r0, c0de2c52 <tEdwards_scalarMul_bn+0x76>
c0de2c4c:	b004      	add	sp, #16
c0de2c4e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2c52:	2001      	movs	r0, #1
c0de2c54:	f10d 0a0b 	add.w	sl, sp, #11
c0de2c58:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2c5c:	2e00      	cmp	r6, #0
c0de2c5e:	d420      	bmi.n	c0de2ca2 <tEdwards_scalarMul_bn+0xc6>
c0de2c60:	4638      	mov	r0, r7
c0de2c62:	4659      	mov	r1, fp
c0de2c64:	465a      	mov	r2, fp
c0de2c66:	f7ff fc4f 	bl	c0de2508 <tEdwards_double>
c0de2c6a:	2800      	cmp	r0, #0
c0de2c6c:	d1ee      	bne.n	c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2c6e:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2c70:	4631      	mov	r1, r6
c0de2c72:	4652      	mov	r2, sl
c0de2c74:	0040      	lsls	r0, r0, #1
c0de2c76:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c78:	6828      	ldr	r0, [r5, #0]
c0de2c7a:	f004 fb25 	bl	c0de72c8 <cx_bn_tst_bit>
c0de2c7e:	2800      	cmp	r0, #0
c0de2c80:	d1e4      	bne.n	c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2c82:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2c86:	b150      	cbz	r0, c0de2c9e <tEdwards_scalarMul_bn+0xc2>
c0de2c88:	4638      	mov	r0, r7
c0de2c8a:	4659      	mov	r1, fp
c0de2c8c:	4642      	mov	r2, r8
c0de2c8e:	465b      	mov	r3, fp
c0de2c90:	f7ff fca5 	bl	c0de25de <tEdwards_add>
c0de2c94:	2800      	cmp	r0, #0
c0de2c96:	d1d9      	bne.n	c0de2c4c <tEdwards_scalarMul_bn+0x70>
c0de2c98:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2c9a:	3001      	adds	r0, #1
c0de2c9c:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c9e:	3e01      	subs	r6, #1
c0de2ca0:	e7dc      	b.n	c0de2c5c <tEdwards_scalarMul_bn+0x80>
c0de2ca2:	2000      	movs	r0, #0
c0de2ca4:	e7d2      	b.n	c0de2c4c <tEdwards_scalarMul_bn+0x70>
	...

c0de2ca8 <tEdwards_scalarMul>:
c0de2ca8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2caa:	460c      	mov	r4, r1
c0de2cac:	6801      	ldr	r1, [r0, #0]
c0de2cae:	4299      	cmp	r1, r3
c0de2cb0:	bf3c      	itt	cc
c0de2cb2:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2ce4 <tEdwards_scalarMul+0x3c>)
c0de2cb4:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2cb6:	4605      	mov	r5, r0
c0de2cb8:	20ca      	movs	r0, #202	@ 0xca
c0de2cba:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2cbc:	a801      	add	r0, sp, #4
c0de2cbe:	f004 fa9f 	bl	c0de7200 <cx_bn_alloc_init>
c0de2cc2:	b100      	cbz	r0, c0de2cc6 <tEdwards_scalarMul+0x1e>
c0de2cc4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2cc6:	20b3      	movs	r0, #179	@ 0xb3
c0de2cc8:	9b06      	ldr	r3, [sp, #24]
c0de2cca:	4621      	mov	r1, r4
c0de2ccc:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2cce:	aa01      	add	r2, sp, #4
c0de2cd0:	4628      	mov	r0, r5
c0de2cd2:	f7ff ff83 	bl	c0de2bdc <tEdwards_scalarMul_bn>
c0de2cd6:	2800      	cmp	r0, #0
c0de2cd8:	d1f4      	bne.n	c0de2cc4 <tEdwards_scalarMul+0x1c>
c0de2cda:	a801      	add	r0, sp, #4
c0de2cdc:	f004 fa9c 	bl	c0de7218 <cx_bn_destroy>
c0de2ce0:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2ce2:	bf00      	nop
c0de2ce4:	5a4b4e01 	.word	0x5a4b4e01

c0de2ce8 <OUTLINED_FUNCTION_0>:
c0de2ce8:	4633      	mov	r3, r6
c0de2cea:	f004 bb6b 	b.w	c0de73c4 <cx_mont_mul>

c0de2cee <OUTLINED_FUNCTION_1>:
c0de2cee:	462b      	mov	r3, r5
c0de2cf0:	f004 bb68 	b.w	c0de73c4 <cx_mont_mul>

c0de2cf4 <OUTLINED_FUNCTION_2>:
c0de2cf4:	4633      	mov	r3, r6
c0de2cf6:	460a      	mov	r2, r1
c0de2cf8:	f004 bb64 	b.w	c0de73c4 <cx_mont_mul>

c0de2cfc <OUTLINED_FUNCTION_3>:
c0de2cfc:	462a      	mov	r2, r5
c0de2cfe:	4601      	mov	r1, r0
c0de2d00:	f004 bb48 	b.w	c0de7394 <cx_mont_to_montgomery>

c0de2d04 <OUTLINED_FUNCTION_4>:
c0de2d04:	4620      	mov	r0, r4
c0de2d06:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2d0a:	f004 ba6f 	b.w	c0de71ec <cx_bn_alloc>

c0de2d0e <OUTLINED_FUNCTION_5>:
c0de2d0e:	4620      	mov	r0, r4
c0de2d10:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2d14:	f004 ba6a 	b.w	c0de71ec <cx_bn_alloc>

c0de2d18 <OUTLINED_FUNCTION_6>:
c0de2d18:	4620      	mov	r0, r4
c0de2d1a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2d1e:	f004 ba65 	b.w	c0de71ec <cx_bn_alloc>

c0de2d22 <OUTLINED_FUNCTION_7>:
c0de2d22:	4620      	mov	r0, r4
c0de2d24:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2d28:	f004 ba60 	b.w	c0de71ec <cx_bn_alloc>

c0de2d2c <OUTLINED_FUNCTION_8>:
c0de2d2c:	4620      	mov	r0, r4
c0de2d2e:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2d32:	f004 ba5b 	b.w	c0de71ec <cx_bn_alloc>

c0de2d36 <OUTLINED_FUNCTION_9>:
c0de2d36:	4620      	mov	r0, r4
c0de2d38:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2d3c:	f004 ba56 	b.w	c0de71ec <cx_bn_alloc>

c0de2d40 <OUTLINED_FUNCTION_10>:
c0de2d40:	4620      	mov	r0, r4
c0de2d42:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2d46:	f004 ba51 	b.w	c0de71ec <cx_bn_alloc>

c0de2d4a <OUTLINED_FUNCTION_11>:
c0de2d4a:	6860      	ldr	r0, [r4, #4]
c0de2d4c:	f004 ba84 	b.w	c0de7258 <cx_bn_copy>

c0de2d50 <grain_lfsr_advance>:
c0de2d50:	b5b0      	push	{r4, r5, r7, lr}
c0de2d52:	68c2      	ldr	r2, [r0, #12]
c0de2d54:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2d58:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2d5c:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2d60:	07e4      	lsls	r4, r4, #31
c0de2d62:	60c5      	str	r5, [r0, #12]
c0de2d64:	07dd      	lsls	r5, r3, #31
c0de2d66:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2d6a:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2d6e:	6044      	str	r4, [r0, #4]
c0de2d70:	4c15      	ldr	r4, [pc, #84]	@ (c0de2dc8 <grain_lfsr_advance+0x78>)
c0de2d72:	6005      	str	r5, [r0, #0]
c0de2d74:	4021      	ands	r1, r4
c0de2d76:	4c15      	ldr	r4, [pc, #84]	@ (c0de2dcc <grain_lfsr_advance+0x7c>)
c0de2d78:	4023      	ands	r3, r4
c0de2d7a:	4419      	add	r1, r3
c0de2d7c:	0c0c      	lsrs	r4, r1, #16
c0de2d7e:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2d82:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2d86:	4421      	add	r1, r4
c0de2d88:	0a0c      	lsrs	r4, r1, #8
c0de2d8a:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2d8e:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2d92:	4061      	eors	r1, r4
c0de2d94:	090c      	lsrs	r4, r1, #4
c0de2d96:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2d9a:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2d9e:	4061      	eors	r1, r4
c0de2da0:	088c      	lsrs	r4, r1, #2
c0de2da2:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2da6:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2daa:	4061      	eors	r1, r4
c0de2dac:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2db0:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2db4:	4059      	eors	r1, r3
c0de2db6:	f001 0101 	and.w	r1, r1, #1
c0de2dba:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2dbe:	6082      	str	r2, [r0, #8]
c0de2dc0:	4608      	mov	r0, r1
c0de2dc2:	2100      	movs	r1, #0
c0de2dc4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2dc6:	bf00      	nop
c0de2dc8:	00802001 	.word	0x00802001
c0de2dcc:	40080040 	.word	0x40080040

c0de2dd0 <next64_graingen>:
c0de2dd0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2dd4:	460c      	mov	r4, r1
c0de2dd6:	4605      	mov	r5, r0
c0de2dd8:	f04f 0a00 	mov.w	sl, #0
c0de2ddc:	f04f 0800 	mov.w	r8, #0
c0de2de0:	2700      	movs	r7, #0
c0de2de2:	42a7      	cmp	r7, r4
c0de2de4:	d215      	bcs.n	c0de2e12 <next64_graingen+0x42>
c0de2de6:	4628      	mov	r0, r5
c0de2de8:	f7ff ffb2 	bl	c0de2d50 <grain_lfsr_advance>
c0de2dec:	4606      	mov	r6, r0
c0de2dee:	4628      	mov	r0, r5
c0de2df0:	f7ff ffae 	bl	c0de2d50 <grain_lfsr_advance>
c0de2df4:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2df8:	0781      	lsls	r1, r0, #30
c0de2dfa:	d5f2      	bpl.n	c0de2de2 <next64_graingen+0x12>
c0de2dfc:	f000 0001 	and.w	r0, r0, #1
c0de2e00:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2e04:	3701      	adds	r7, #1
c0de2e06:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2e0a:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2e0e:	4682      	mov	sl, r0
c0de2e10:	e7e7      	b.n	c0de2de2 <next64_graingen+0x12>
c0de2e12:	4650      	mov	r0, sl
c0de2e14:	4641      	mov	r1, r8
c0de2e16:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2e1c <init_generator>:
c0de2e1c:	b5b0      	push	{r4, r5, r7, lr}
c0de2e1e:	4a09      	ldr	r2, [pc, #36]	@ (c0de2e44 <init_generator+0x28>)
c0de2e20:	4b09      	ldr	r3, [pc, #36]	@ (c0de2e48 <init_generator+0x2c>)
c0de2e22:	4604      	mov	r4, r0
c0de2e24:	25a0      	movs	r5, #160	@ 0xa0
c0de2e26:	2000      	movs	r0, #0
c0de2e28:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2e2c:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2e30:	e9c4 3200 	strd	r3, r2, [r4]
c0de2e34:	b125      	cbz	r5, c0de2e40 <init_generator+0x24>
c0de2e36:	4620      	mov	r0, r4
c0de2e38:	f7ff ff8a 	bl	c0de2d50 <grain_lfsr_advance>
c0de2e3c:	3d01      	subs	r5, #1
c0de2e3e:	e7f9      	b.n	c0de2e34 <init_generator+0x18>
c0de2e40:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e42:	bf00      	nop
c0de2e44:	fffcf010 	.word	0xfffcf010
c0de2e48:	1801fc02 	.word	0x1801fc02

c0de2e4c <gen_integer>:
c0de2e4c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e50:	4f20      	ldr	r7, [pc, #128]	@ (c0de2ed4 <gen_integer+0x88>)
c0de2e52:	4e22      	ldr	r6, [pc, #136]	@ (c0de2edc <gen_integer+0x90>)
c0de2e54:	4605      	mov	r5, r0
c0de2e56:	460c      	mov	r4, r1
c0de2e58:	2000      	movs	r0, #0
c0de2e5a:	46b8      	mov	r8, r7
c0de2e5c:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2ed8 <gen_integer+0x8c>)
c0de2e5e:	447e      	add	r6, pc
c0de2e60:	b9f8      	cbnz	r0, c0de2ea2 <gen_integer+0x56>
c0de2e62:	4628      	mov	r0, r5
c0de2e64:	213e      	movs	r1, #62	@ 0x3e
c0de2e66:	47b0      	blx	r6
c0de2e68:	e9c4 0100 	strd	r0, r1, [r4]
c0de2e6c:	4628      	mov	r0, r5
c0de2e6e:	2140      	movs	r1, #64	@ 0x40
c0de2e70:	47b0      	blx	r6
c0de2e72:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2e76:	4628      	mov	r0, r5
c0de2e78:	2140      	movs	r1, #64	@ 0x40
c0de2e7a:	47b0      	blx	r6
c0de2e7c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2e80:	4628      	mov	r0, r5
c0de2e82:	2140      	movs	r1, #64	@ 0x40
c0de2e84:	47b0      	blx	r6
c0de2e86:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2e8a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2e8e:	463a      	mov	r2, r7
c0de2e90:	1bc0      	subs	r0, r0, r7
c0de2e92:	4640      	mov	r0, r8
c0de2e94:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2e98:	f04f 0000 	mov.w	r0, #0
c0de2e9c:	bf38      	it	cc
c0de2e9e:	2001      	movcc	r0, #1
c0de2ea0:	e7de      	b.n	c0de2e60 <gen_integer+0x14>
c0de2ea2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2ea6:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2ee0 <gen_integer+0x94>)
c0de2ea8:	447d      	add	r5, pc
c0de2eaa:	47a8      	blx	r5
c0de2eac:	e9c4 0100 	strd	r0, r1, [r4]
c0de2eb0:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2eb4:	47a8      	blx	r5
c0de2eb6:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2eba:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2ebe:	47a8      	blx	r5
c0de2ec0:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2ec4:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2ec8:	47a8      	blx	r5
c0de2eca:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2ece:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2ed2:	bf00      	nop
c0de2ed4:	305a4b4e 	.word	0x305a4b4e
c0de2ed8:	4f582122 	.word	0x4f582122
c0de2edc:	ffffff6f 	.word	0xffffff6f
c0de2ee0:	00000039 	.word	0x00000039

c0de2ee4 <rev64>:
c0de2ee4:	ba0a      	rev	r2, r1
c0de2ee6:	ba01      	rev	r1, r0
c0de2ee8:	4610      	mov	r0, r2
c0de2eea:	4770      	bx	lr

c0de2eec <Poseidon_getNext_RC>:
c0de2eec:	30c0      	adds	r0, #192	@ 0xc0
c0de2eee:	f7ff bfad 	b.w	c0de2e4c <gen_integer>
	...

c0de2ef4 <Poseidon_alloc_init>:
c0de2ef4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ef8:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2efc:	4604      	mov	r4, r0
c0de2efe:	30c0      	adds	r0, #192	@ 0xc0
c0de2f00:	461e      	mov	r6, r3
c0de2f02:	4617      	mov	r7, r2
c0de2f04:	460d      	mov	r5, r1
c0de2f06:	f7ff ff89 	bl	c0de2e1c <init_generator>
c0de2f0a:	492c      	ldr	r1, [pc, #176]	@ (c0de2fbc <Poseidon_alloc_init+0xc8>)
c0de2f0c:	46e8      	mov	r8, sp
c0de2f0e:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2f12:	4640      	mov	r0, r8
c0de2f14:	4479      	add	r1, pc
c0de2f16:	f004 fc1f 	bl	c0de7758 <__aeabi_memcpy>
c0de2f1a:	2000      	movs	r0, #0
c0de2f1c:	7325      	strb	r5, [r4, #12]
c0de2f1e:	6166      	str	r6, [r4, #20]
c0de2f20:	4621      	mov	r1, r4
c0de2f22:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2f26:	1c78      	adds	r0, r7, #1
c0de2f28:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2f2c:	6830      	ldr	r0, [r6, #0]
c0de2f2e:	f004 f97d 	bl	c0de722c <cx_bn_nbytes>
c0de2f32:	b930      	cbnz	r0, c0de2f42 <Poseidon_alloc_init+0x4e>
c0de2f34:	4620      	mov	r0, r4
c0de2f36:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2f3a:	4631      	mov	r1, r6
c0de2f3c:	f004 f956 	bl	c0de71ec <cx_bn_alloc>
c0de2f40:	b118      	cbz	r0, c0de2f4a <Poseidon_alloc_init+0x56>
c0de2f42:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2f46:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2f4a:	68a0      	ldr	r0, [r4, #8]
c0de2f4c:	2500      	movs	r5, #0
c0de2f4e:	4285      	cmp	r5, r0
c0de2f50:	d230      	bcs.n	c0de2fb4 <Poseidon_alloc_init+0xc0>
c0de2f52:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2f56:	4631      	mov	r1, r6
c0de2f58:	f107 0018 	add.w	r0, r7, #24
c0de2f5c:	f004 f946 	bl	c0de71ec <cx_bn_alloc>
c0de2f60:	2800      	cmp	r0, #0
c0de2f62:	d1ee      	bne.n	c0de2f42 <Poseidon_alloc_init+0x4e>
c0de2f64:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2f68:	4631      	mov	r1, r6
c0de2f6a:	f004 f93f 	bl	c0de71ec <cx_bn_alloc>
c0de2f6e:	2800      	cmp	r0, #0
c0de2f70:	d1e7      	bne.n	c0de2f42 <Poseidon_alloc_init+0x4e>
c0de2f72:	2700      	movs	r7, #0
c0de2f74:	68a0      	ldr	r0, [r4, #8]
c0de2f76:	4287      	cmp	r7, r0
c0de2f78:	d21a      	bcs.n	c0de2fb0 <Poseidon_alloc_init+0xbc>
c0de2f7a:	fb05 7000 	mla	r0, r5, r0, r7
c0de2f7e:	4631      	mov	r1, r6
c0de2f80:	4633      	mov	r3, r6
c0de2f82:	fb00 8206 	mla	r2, r0, r6, r8
c0de2f86:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2f8a:	3030      	adds	r0, #48	@ 0x30
c0de2f8c:	f004 f938 	bl	c0de7200 <cx_bn_alloc_init>
c0de2f90:	2800      	cmp	r0, #0
c0de2f92:	d1d6      	bne.n	c0de2f42 <Poseidon_alloc_init+0x4e>
c0de2f94:	68a0      	ldr	r0, [r4, #8]
c0de2f96:	6962      	ldr	r2, [r4, #20]
c0de2f98:	fb05 7000 	mla	r0, r5, r0, r7
c0de2f9c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2fa0:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2fa2:	4601      	mov	r1, r0
c0de2fa4:	f004 f9f6 	bl	c0de7394 <cx_mont_to_montgomery>
c0de2fa8:	3701      	adds	r7, #1
c0de2faa:	2800      	cmp	r0, #0
c0de2fac:	d0e2      	beq.n	c0de2f74 <Poseidon_alloc_init+0x80>
c0de2fae:	e7c8      	b.n	c0de2f42 <Poseidon_alloc_init+0x4e>
c0de2fb0:	3501      	adds	r5, #1
c0de2fb2:	e7cc      	b.n	c0de2f4e <Poseidon_alloc_init+0x5a>
c0de2fb4:	2001      	movs	r0, #1
c0de2fb6:	6120      	str	r0, [r4, #16]
c0de2fb8:	2000      	movs	r0, #0
c0de2fba:	e7c2      	b.n	c0de2f42 <Poseidon_alloc_init+0x4e>
c0de2fbc:	0000581c 	.word	0x0000581c

c0de2fc0 <Poseidon>:
c0de2fc0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2fc4:	b08c      	sub	sp, #48	@ 0x30
c0de2fc6:	4606      	mov	r6, r0
c0de2fc8:	6900      	ldr	r0, [r0, #16]
c0de2fca:	2801      	cmp	r0, #1
c0de2fcc:	f040 80b4 	bne.w	c0de3138 <Poseidon+0x178>
c0de2fd0:	69b0      	ldr	r0, [r6, #24]
c0de2fd2:	461f      	mov	r7, r3
c0de2fd4:	4692      	mov	sl, r2
c0de2fd6:	f004 f949 	bl	c0de726c <cx_bn_set_u32>
c0de2fda:	2800      	cmp	r0, #0
c0de2fdc:	f040 80ad 	bne.w	c0de313a <Poseidon+0x17a>
c0de2fe0:	f106 000c 	add.w	r0, r6, #12
c0de2fe4:	f106 0818 	add.w	r8, r6, #24
c0de2fe8:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de2fec:	9001      	str	r0, [sp, #4]
c0de2fee:	2000      	movs	r0, #0
c0de2ff0:	2844      	cmp	r0, #68	@ 0x44
c0de2ff2:	f000 80ae 	beq.w	c0de3152 <Poseidon+0x192>
c0de2ff6:	6834      	ldr	r4, [r6, #0]
c0de2ff8:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de2ffc:	f04f 0a00 	mov.w	sl, #0
c0de3000:	68b0      	ldr	r0, [r6, #8]
c0de3002:	4582      	cmp	sl, r0
c0de3004:	d224      	bcs.n	c0de3050 <Poseidon+0x90>
c0de3006:	ad04      	add	r5, sp, #16
c0de3008:	4658      	mov	r0, fp
c0de300a:	4629      	mov	r1, r5
c0de300c:	f7ff ff1e 	bl	c0de2e4c <gen_integer>
c0de3010:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3014:	4629      	mov	r1, r5
c0de3016:	4622      	mov	r2, r4
c0de3018:	f004 f912 	bl	c0de7240 <cx_bn_init>
c0de301c:	2800      	cmp	r0, #0
c0de301e:	f040 808c 	bne.w	c0de313a <Poseidon+0x17a>
c0de3022:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3026:	6972      	ldr	r2, [r6, #20]
c0de3028:	4601      	mov	r1, r0
c0de302a:	f004 f9b3 	bl	c0de7394 <cx_mont_to_montgomery>
c0de302e:	2800      	cmp	r0, #0
c0de3030:	f040 8083 	bne.w	c0de313a <Poseidon+0x17a>
c0de3034:	6972      	ldr	r2, [r6, #20]
c0de3036:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de303a:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de303e:	6813      	ldr	r3, [r2, #0]
c0de3040:	4602      	mov	r2, r0
c0de3042:	f004 f94d 	bl	c0de72e0 <cx_bn_mod_add>
c0de3046:	f10a 0a01 	add.w	sl, sl, #1
c0de304a:	2800      	cmp	r0, #0
c0de304c:	d0d8      	beq.n	c0de3000 <Poseidon+0x40>
c0de304e:	e074      	b.n	c0de313a <Poseidon+0x17a>
c0de3050:	9902      	ldr	r1, [sp, #8]
c0de3052:	2904      	cmp	r1, #4
c0de3054:	d301      	bcc.n	c0de305a <Poseidon+0x9a>
c0de3056:	2940      	cmp	r1, #64	@ 0x40
c0de3058:	d323      	bcc.n	c0de30a2 <Poseidon+0xe2>
c0de305a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de305e:	2400      	movs	r4, #0
c0de3060:	4284      	cmp	r4, r0
c0de3062:	d22b      	bcs.n	c0de30bc <Poseidon+0xfc>
c0de3064:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3068:	6973      	ldr	r3, [r6, #20]
c0de306a:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de306e:	460a      	mov	r2, r1
c0de3070:	f004 f9a8 	bl	c0de73c4 <cx_mont_mul>
c0de3074:	2800      	cmp	r0, #0
c0de3076:	d160      	bne.n	c0de313a <Poseidon+0x17a>
c0de3078:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de307c:	6973      	ldr	r3, [r6, #20]
c0de307e:	460a      	mov	r2, r1
c0de3080:	f004 f9a0 	bl	c0de73c4 <cx_mont_mul>
c0de3084:	2800      	cmp	r0, #0
c0de3086:	d158      	bne.n	c0de313a <Poseidon+0x17a>
c0de3088:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de308c:	6973      	ldr	r3, [r6, #20]
c0de308e:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de3092:	4601      	mov	r1, r0
c0de3094:	f004 f996 	bl	c0de73c4 <cx_mont_mul>
c0de3098:	2800      	cmp	r0, #0
c0de309a:	d14e      	bne.n	c0de313a <Poseidon+0x17a>
c0de309c:	68b0      	ldr	r0, [r6, #8]
c0de309e:	3401      	adds	r4, #1
c0de30a0:	e7de      	b.n	c0de3060 <Poseidon+0xa0>
c0de30a2:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de30a6:	9a01      	ldr	r2, [sp, #4]
c0de30a8:	2301      	movs	r3, #1
c0de30aa:	9100      	str	r1, [sp, #0]
c0de30ac:	4601      	mov	r1, r0
c0de30ae:	f004 f995 	bl	c0de73dc <cx_mont_pow>
c0de30b2:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de30b6:	2800      	cmp	r0, #0
c0de30b8:	d13f      	bne.n	c0de313a <Poseidon+0x17a>
c0de30ba:	68b0      	ldr	r0, [r6, #8]
c0de30bc:	2500      	movs	r5, #0
c0de30be:	4285      	cmp	r5, r0
c0de30c0:	d229      	bcs.n	c0de3116 <Poseidon+0x156>
c0de30c2:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de30c6:	2100      	movs	r1, #0
c0de30c8:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de30cc:	f004 f8ce 	bl	c0de726c <cx_bn_set_u32>
c0de30d0:	bb98      	cbnz	r0, c0de313a <Poseidon+0x17a>
c0de30d2:	9503      	str	r5, [sp, #12]
c0de30d4:	2500      	movs	r5, #0
c0de30d6:	68b0      	ldr	r0, [r6, #8]
c0de30d8:	4285      	cmp	r5, r0
c0de30da:	d219      	bcs.n	c0de3110 <Poseidon+0x150>
c0de30dc:	9903      	ldr	r1, [sp, #12]
c0de30de:	6973      	ldr	r3, [r6, #20]
c0de30e0:	fb01 5000 	mla	r0, r1, r0, r5
c0de30e4:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de30e8:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de30ec:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de30ee:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de30f2:	f004 f967 	bl	c0de73c4 <cx_mont_mul>
c0de30f6:	bb00      	cbnz	r0, c0de313a <Poseidon+0x17a>
c0de30f8:	6971      	ldr	r1, [r6, #20]
c0de30fa:	6820      	ldr	r0, [r4, #0]
c0de30fc:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de3100:	680b      	ldr	r3, [r1, #0]
c0de3102:	4601      	mov	r1, r0
c0de3104:	f004 f8ec 	bl	c0de72e0 <cx_bn_mod_add>
c0de3108:	3501      	adds	r5, #1
c0de310a:	2800      	cmp	r0, #0
c0de310c:	d0e3      	beq.n	c0de30d6 <Poseidon+0x116>
c0de310e:	e014      	b.n	c0de313a <Poseidon+0x17a>
c0de3110:	9d03      	ldr	r5, [sp, #12]
c0de3112:	3501      	adds	r5, #1
c0de3114:	e7d3      	b.n	c0de30be <Poseidon+0xfe>
c0de3116:	2400      	movs	r4, #0
c0de3118:	4284      	cmp	r4, r0
c0de311a:	d20a      	bcs.n	c0de3132 <Poseidon+0x172>
c0de311c:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3120:	6988      	ldr	r0, [r1, #24]
c0de3122:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3126:	f004 f897 	bl	c0de7258 <cx_bn_copy>
c0de312a:	b930      	cbnz	r0, c0de313a <Poseidon+0x17a>
c0de312c:	68b0      	ldr	r0, [r6, #8]
c0de312e:	3401      	adds	r4, #1
c0de3130:	e7f2      	b.n	c0de3118 <Poseidon+0x158>
c0de3132:	9802      	ldr	r0, [sp, #8]
c0de3134:	3001      	adds	r0, #1
c0de3136:	e75b      	b.n	c0de2ff0 <Poseidon+0x30>
c0de3138:	4808      	ldr	r0, [pc, #32]	@ (c0de315c <Poseidon+0x19c>)
c0de313a:	b00c      	add	sp, #48	@ 0x30
c0de313c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3140:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3144:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3148:	f004 f886 	bl	c0de7258 <cx_bn_copy>
c0de314c:	3f01      	subs	r7, #1
c0de314e:	2800      	cmp	r0, #0
c0de3150:	d1f3      	bne.n	c0de313a <Poseidon+0x17a>
c0de3152:	2f00      	cmp	r7, #0
c0de3154:	d1f4      	bne.n	c0de3140 <Poseidon+0x180>
c0de3156:	2000      	movs	r0, #0
c0de3158:	e7ef      	b.n	c0de313a <Poseidon+0x17a>
c0de315a:	bf00      	nop
c0de315c:	5a4b4e02 	.word	0x5a4b4e02

c0de3160 <RFC9591_taggedHash>:
c0de3160:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3162:	b0d9      	sub	sp, #356	@ 0x164
c0de3164:	460e      	mov	r6, r1
c0de3166:	4607      	mov	r7, r0
c0de3168:	a858      	add	r0, sp, #352	@ 0x160
c0de316a:	2140      	movs	r1, #64	@ 0x40
c0de316c:	461c      	mov	r4, r3
c0de316e:	4615      	mov	r5, r2
c0de3170:	f004 f83c 	bl	c0de71ec <cx_bn_alloc>
c0de3174:	bbd8      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de3176:	491f      	ldr	r1, [pc, #124]	@ (c0de31f4 <RFC9591_taggedHash+0x94>)
c0de3178:	4668      	mov	r0, sp
c0de317a:	221d      	movs	r2, #29
c0de317c:	4479      	add	r1, pc
c0de317e:	f004 faeb 	bl	c0de7758 <__aeabi_memcpy>
c0de3182:	a808      	add	r0, sp, #32
c0de3184:	2109      	movs	r1, #9
c0de3186:	2240      	movs	r2, #64	@ 0x40
c0de3188:	f003 fdc4 	bl	c0de6d14 <cx_hash_init_ex>
c0de318c:	bb78      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de318e:	a808      	add	r0, sp, #32
c0de3190:	4669      	mov	r1, sp
c0de3192:	221d      	movs	r2, #29
c0de3194:	f003 fdc3 	bl	c0de6d1e <cx_hash_update>
c0de3198:	bb48      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de319a:	a808      	add	r0, sp, #32
c0de319c:	4639      	mov	r1, r7
c0de319e:	4632      	mov	r2, r6
c0de31a0:	f003 fdbd 	bl	c0de6d1e <cx_hash_update>
c0de31a4:	bb18      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de31a6:	a808      	add	r0, sp, #32
c0de31a8:	4629      	mov	r1, r5
c0de31aa:	4622      	mov	r2, r4
c0de31ac:	f003 fdb7 	bl	c0de6d1e <cx_hash_update>
c0de31b0:	b9e8      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de31b2:	a808      	add	r0, sp, #32
c0de31b4:	ae48      	add	r6, sp, #288	@ 0x120
c0de31b6:	4631      	mov	r1, r6
c0de31b8:	f003 fda7 	bl	c0de6d0a <cx_hash_final>
c0de31bc:	b9b8      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de31be:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de31c2:	2000      	movs	r0, #0
c0de31c4:	213f      	movs	r1, #63	@ 0x3f
c0de31c6:	2820      	cmp	r0, #32
c0de31c8:	d002      	beq.n	c0de31d0 <RFC9591_taggedHash+0x70>
c0de31ca:	f000 f8dd 	bl	c0de3388 <OUTLINED_FUNCTION_3>
c0de31ce:	e7fa      	b.n	c0de31c6 <RFC9591_taggedHash+0x66>
c0de31d0:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de31d2:	a948      	add	r1, sp, #288	@ 0x120
c0de31d4:	2240      	movs	r2, #64	@ 0x40
c0de31d6:	f004 f833 	bl	c0de7240 <cx_bn_init>
c0de31da:	b940      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de31dc:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de31de:	4628      	mov	r0, r5
c0de31e0:	4622      	mov	r2, r4
c0de31e2:	f004 f8a1 	bl	c0de7328 <cx_bn_reduce>
c0de31e6:	b910      	cbnz	r0, c0de31ee <RFC9591_taggedHash+0x8e>
c0de31e8:	a858      	add	r0, sp, #352	@ 0x160
c0de31ea:	f004 f815 	bl	c0de7218 <cx_bn_destroy>
c0de31ee:	b059      	add	sp, #356	@ 0x164
c0de31f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de31f2:	bf00      	nop
c0de31f4:	00005a34 	.word	0x00005a34

c0de31f8 <Babyfrost_H1>:
c0de31f8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de31fa:	4605      	mov	r5, r0
c0de31fc:	206f      	movs	r0, #111	@ 0x6f
c0de31fe:	f000 f8b7 	bl	c0de3370 <OUTLINED_FUNCTION_1>
c0de3202:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3206:	f000 f8ba 	bl	c0de337e <OUTLINED_FUNCTION_2>
c0de320a:	a803      	add	r0, sp, #12
c0de320c:	f7ff ffa8 	bl	c0de3160 <RFC9591_taggedHash>
c0de3210:	b004      	add	sp, #16
c0de3212:	bdb0      	pop	{r4, r5, r7, pc}

c0de3214 <Babyfrost_H3>:
c0de3214:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3216:	4605      	mov	r5, r0
c0de3218:	2065      	movs	r0, #101	@ 0x65
c0de321a:	460c      	mov	r4, r1
c0de321c:	e9cd 2300 	strd	r2, r3, [sp]
c0de3220:	2105      	movs	r1, #5
c0de3222:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3226:	4804      	ldr	r0, [pc, #16]	@ (c0de3238 <Babyfrost_H3+0x24>)
c0de3228:	462a      	mov	r2, r5
c0de322a:	4623      	mov	r3, r4
c0de322c:	9002      	str	r0, [sp, #8]
c0de322e:	a802      	add	r0, sp, #8
c0de3230:	f7ff ff96 	bl	c0de3160 <RFC9591_taggedHash>
c0de3234:	b004      	add	sp, #16
c0de3236:	bdb0      	pop	{r4, r5, r7, pc}
c0de3238:	636e6f6e 	.word	0x636e6f6e

c0de323c <Babyfrost_H4>:
c0de323c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de323e:	4605      	mov	r5, r0
c0de3240:	2067      	movs	r0, #103	@ 0x67
c0de3242:	f000 f895 	bl	c0de3370 <OUTLINED_FUNCTION_1>
c0de3246:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de324a:	f000 f898 	bl	c0de337e <OUTLINED_FUNCTION_2>
c0de324e:	a803      	add	r0, sp, #12
c0de3250:	f7ff ff86 	bl	c0de3160 <RFC9591_taggedHash>
c0de3254:	b004      	add	sp, #16
c0de3256:	bdb0      	pop	{r4, r5, r7, pc}

c0de3258 <Babyfrost_H5>:
c0de3258:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de325a:	4605      	mov	r5, r0
c0de325c:	206d      	movs	r0, #109	@ 0x6d
c0de325e:	f000 f887 	bl	c0de3370 <OUTLINED_FUNCTION_1>
c0de3262:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3266:	f000 f88a 	bl	c0de337e <OUTLINED_FUNCTION_2>
c0de326a:	a803      	add	r0, sp, #12
c0de326c:	f7ff ff78 	bl	c0de3160 <RFC9591_taggedHash>
c0de3270:	b004      	add	sp, #16
c0de3272:	bdb0      	pop	{r4, r5, r7, pc}

c0de3274 <zkn_frost_hash_init>:
c0de3274:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3276:	461d      	mov	r5, r3
c0de3278:	4604      	mov	r4, r0
c0de327a:	f003 fd4b 	bl	c0de6d14 <cx_hash_init_ex>
c0de327e:	b938      	cbnz	r0, c0de3290 <zkn_frost_hash_init+0x1c>
c0de3280:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de3284:	9e08      	ldr	r6, [sp, #32]
c0de3286:	4620      	mov	r0, r4
c0de3288:	4629      	mov	r1, r5
c0de328a:	f003 fd48 	bl	c0de6d1e <cx_hash_update>
c0de328e:	b100      	cbz	r0, c0de3292 <zkn_frost_hash_init+0x1e>
c0de3290:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3292:	4620      	mov	r0, r4
c0de3294:	4639      	mov	r1, r7
c0de3296:	4632      	mov	r2, r6
c0de3298:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de329c:	f003 bd3f 	b.w	c0de6d1e <cx_hash_update>

c0de32a0 <zkn_frost_H1_init>:
c0de32a0:	b570      	push	{r4, r5, r6, lr}
c0de32a2:	b08c      	sub	sp, #48	@ 0x30
c0de32a4:	4604      	mov	r4, r0
c0de32a6:	206f      	movs	r0, #111	@ 0x6f
c0de32a8:	221d      	movs	r2, #29
c0de32aa:	261d      	movs	r6, #29
c0de32ac:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de32b0:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de32b4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de32b8:	ad03      	add	r5, sp, #12
c0de32ba:	4905      	ldr	r1, [pc, #20]	@ (c0de32d0 <zkn_frost_H1_init+0x30>)
c0de32bc:	4628      	mov	r0, r5
c0de32be:	4479      	add	r1, pc
c0de32c0:	f004 fa4a 	bl	c0de7758 <__aeabi_memcpy>
c0de32c4:	a90b      	add	r1, sp, #44	@ 0x2c
c0de32c6:	f000 f849 	bl	c0de335c <OUTLINED_FUNCTION_0>
c0de32ca:	b00c      	add	sp, #48	@ 0x30
c0de32cc:	bd70      	pop	{r4, r5, r6, pc}
c0de32ce:	bf00      	nop
c0de32d0:	000058f2 	.word	0x000058f2

c0de32d4 <zkn_frost_H5_init>:
c0de32d4:	b570      	push	{r4, r5, r6, lr}
c0de32d6:	b08c      	sub	sp, #48	@ 0x30
c0de32d8:	4604      	mov	r4, r0
c0de32da:	206d      	movs	r0, #109	@ 0x6d
c0de32dc:	221d      	movs	r2, #29
c0de32de:	261d      	movs	r6, #29
c0de32e0:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de32e4:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de32e8:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de32ec:	ad03      	add	r5, sp, #12
c0de32ee:	4905      	ldr	r1, [pc, #20]	@ (c0de3304 <zkn_frost_H5_init+0x30>)
c0de32f0:	4628      	mov	r0, r5
c0de32f2:	4479      	add	r1, pc
c0de32f4:	f004 fa30 	bl	c0de7758 <__aeabi_memcpy>
c0de32f8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de32fa:	f000 f82f 	bl	c0de335c <OUTLINED_FUNCTION_0>
c0de32fe:	b00c      	add	sp, #48	@ 0x30
c0de3300:	bd70      	pop	{r4, r5, r6, pc}
c0de3302:	bf00      	nop
c0de3304:	000058be 	.word	0x000058be

c0de3308 <zkn_frost_hash_update>:
c0de3308:	f003 bd09 	b.w	c0de6d1e <cx_hash_update>

c0de330c <zkn_frost_hash_final>:
c0de330c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de330e:	b091      	sub	sp, #68	@ 0x44
c0de3310:	460c      	mov	r4, r1
c0de3312:	4607      	mov	r7, r0
c0de3314:	a810      	add	r0, sp, #64	@ 0x40
c0de3316:	2140      	movs	r1, #64	@ 0x40
c0de3318:	4615      	mov	r5, r2
c0de331a:	f003 ff67 	bl	c0de71ec <cx_bn_alloc>
c0de331e:	b9d8      	cbnz	r0, c0de3358 <zkn_frost_hash_final+0x4c>
c0de3320:	466e      	mov	r6, sp
c0de3322:	4638      	mov	r0, r7
c0de3324:	4631      	mov	r1, r6
c0de3326:	f003 fcf0 	bl	c0de6d0a <cx_hash_final>
c0de332a:	b9a8      	cbnz	r0, c0de3358 <zkn_frost_hash_final+0x4c>
c0de332c:	2000      	movs	r0, #0
c0de332e:	213f      	movs	r1, #63	@ 0x3f
c0de3330:	2820      	cmp	r0, #32
c0de3332:	d002      	beq.n	c0de333a <zkn_frost_hash_final+0x2e>
c0de3334:	f000 f828 	bl	c0de3388 <OUTLINED_FUNCTION_3>
c0de3338:	e7fa      	b.n	c0de3330 <zkn_frost_hash_final+0x24>
c0de333a:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de333c:	4669      	mov	r1, sp
c0de333e:	2240      	movs	r2, #64	@ 0x40
c0de3340:	f003 ff7e 	bl	c0de7240 <cx_bn_init>
c0de3344:	b940      	cbnz	r0, c0de3358 <zkn_frost_hash_final+0x4c>
c0de3346:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3348:	4628      	mov	r0, r5
c0de334a:	4622      	mov	r2, r4
c0de334c:	f003 ffec 	bl	c0de7328 <cx_bn_reduce>
c0de3350:	b910      	cbnz	r0, c0de3358 <zkn_frost_hash_final+0x4c>
c0de3352:	a810      	add	r0, sp, #64	@ 0x40
c0de3354:	f003 ff60 	bl	c0de7218 <cx_bn_destroy>
c0de3358:	b011      	add	sp, #68	@ 0x44
c0de335a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de335c <OUTLINED_FUNCTION_0>:
c0de335c:	2003      	movs	r0, #3
c0de335e:	2240      	movs	r2, #64	@ 0x40
c0de3360:	462b      	mov	r3, r5
c0de3362:	e9cd 6100 	strd	r6, r1, [sp]
c0de3366:	9002      	str	r0, [sp, #8]
c0de3368:	4620      	mov	r0, r4
c0de336a:	2109      	movs	r1, #9
c0de336c:	f7ff bf82 	b.w	c0de3274 <zkn_frost_hash_init>

c0de3370 <OUTLINED_FUNCTION_1>:
c0de3370:	460c      	mov	r4, r1
c0de3372:	e9cd 2300 	strd	r2, r3, [sp]
c0de3376:	2103      	movs	r1, #3
c0de3378:	f88d 000e 	strb.w	r0, [sp, #14]
c0de337c:	4770      	bx	lr

c0de337e <OUTLINED_FUNCTION_2>:
c0de337e:	462a      	mov	r2, r5
c0de3380:	4623      	mov	r3, r4
c0de3382:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3386:	4770      	bx	lr

c0de3388 <OUTLINED_FUNCTION_3>:
c0de3388:	5c32      	ldrb	r2, [r6, r0]
c0de338a:	5c73      	ldrb	r3, [r6, r1]
c0de338c:	5433      	strb	r3, [r6, r0]
c0de338e:	5472      	strb	r2, [r6, r1]
c0de3390:	3901      	subs	r1, #1
c0de3392:	3001      	adds	r0, #1
c0de3394:	4770      	bx	lr

c0de3396 <os_io_handle_default_apdu>:
c0de3396:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3398:	b09d      	sub	sp, #116	@ 0x74
c0de339a:	4615      	mov	r5, r2
c0de339c:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de339e:	b3c8      	cbz	r0, c0de3414 <os_io_handle_default_apdu+0x7e>
c0de33a0:	b3c1      	cbz	r1, c0de3414 <os_io_handle_default_apdu+0x7e>
c0de33a2:	b3bd      	cbz	r5, c0de3414 <os_io_handle_default_apdu+0x7e>
c0de33a4:	461c      	mov	r4, r3
c0de33a6:	b3ab      	cbz	r3, c0de3414 <os_io_handle_default_apdu+0x7e>
c0de33a8:	b10a      	cbz	r2, c0de33ae <os_io_handle_default_apdu+0x18>
c0de33aa:	2100      	movs	r1, #0
c0de33ac:	7011      	strb	r1, [r2, #0]
c0de33ae:	7801      	ldrb	r1, [r0, #0]
c0de33b0:	29b0      	cmp	r1, #176	@ 0xb0
c0de33b2:	d131      	bne.n	c0de3418 <os_io_handle_default_apdu+0x82>
c0de33b4:	7841      	ldrb	r1, [r0, #1]
c0de33b6:	29a7      	cmp	r1, #167	@ 0xa7
c0de33b8:	d031      	beq.n	c0de341e <os_io_handle_default_apdu+0x88>
c0de33ba:	2906      	cmp	r1, #6
c0de33bc:	d036      	beq.n	c0de342c <os_io_handle_default_apdu+0x96>
c0de33be:	2901      	cmp	r1, #1
c0de33c0:	d131      	bne.n	c0de3426 <os_io_handle_default_apdu+0x90>
c0de33c2:	7881      	ldrb	r1, [r0, #2]
c0de33c4:	bb79      	cbnz	r1, c0de3426 <os_io_handle_default_apdu+0x90>
c0de33c6:	78c0      	ldrb	r0, [r0, #3]
c0de33c8:	bb68      	cbnz	r0, c0de3426 <os_io_handle_default_apdu+0x90>
c0de33ca:	6820      	ldr	r0, [r4, #0]
c0de33cc:	2100      	movs	r1, #0
c0de33ce:	6021      	str	r1, [r4, #0]
c0de33d0:	2803      	cmp	r0, #3
c0de33d2:	d321      	bcc.n	c0de3418 <os_io_handle_default_apdu+0x82>
c0de33d4:	2601      	movs	r6, #1
c0de33d6:	1ec7      	subs	r7, r0, #3
c0de33d8:	6026      	str	r6, [r4, #0]
c0de33da:	702e      	strb	r6, [r5, #0]
c0de33dc:	6820      	ldr	r0, [r4, #0]
c0de33de:	1a3a      	subs	r2, r7, r0
c0de33e0:	4428      	add	r0, r5
c0de33e2:	1c41      	adds	r1, r0, #1
c0de33e4:	2001      	movs	r0, #1
c0de33e6:	f004 f86f 	bl	c0de74c8 <os_registry_get_current_app_tag>
c0de33ea:	f000 f83f 	bl	c0de346c <OUTLINED_FUNCTION_0>
c0de33ee:	6020      	str	r0, [r4, #0]
c0de33f0:	1a3a      	subs	r2, r7, r0
c0de33f2:	4428      	add	r0, r5
c0de33f4:	1c41      	adds	r1, r0, #1
c0de33f6:	2002      	movs	r0, #2
c0de33f8:	f004 f866 	bl	c0de74c8 <os_registry_get_current_app_tag>
c0de33fc:	f000 f836 	bl	c0de346c <OUTLINED_FUNCTION_0>
c0de3400:	1c41      	adds	r1, r0, #1
c0de3402:	6021      	str	r1, [r4, #0]
c0de3404:	542e      	strb	r6, [r5, r0]
c0de3406:	f004 f857 	bl	c0de74b8 <os_flags>
c0de340a:	6821      	ldr	r1, [r4, #0]
c0de340c:	1c4a      	adds	r2, r1, #1
c0de340e:	6022      	str	r2, [r4, #0]
c0de3410:	5468      	strb	r0, [r5, r1]
c0de3412:	e028      	b.n	c0de3466 <os_io_handle_default_apdu+0xd0>
c0de3414:	7814      	ldrb	r4, [r2, #0]
c0de3416:	e01e      	b.n	c0de3456 <os_io_handle_default_apdu+0xc0>
c0de3418:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de341c:	e01b      	b.n	c0de3456 <os_io_handle_default_apdu+0xc0>
c0de341e:	7881      	ldrb	r1, [r0, #2]
c0de3420:	b909      	cbnz	r1, c0de3426 <os_io_handle_default_apdu+0x90>
c0de3422:	78c0      	ldrb	r0, [r0, #3]
c0de3424:	b1d0      	cbz	r0, c0de345c <os_io_handle_default_apdu+0xc6>
c0de3426:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de342a:	e014      	b.n	c0de3456 <os_io_handle_default_apdu+0xc0>
c0de342c:	2100      	movs	r1, #0
c0de342e:	6021      	str	r1, [r4, #0]
c0de3430:	7883      	ldrb	r3, [r0, #2]
c0de3432:	7902      	ldrb	r2, [r0, #4]
c0de3434:	ad02      	add	r5, sp, #8
c0de3436:	e9cd 1500 	strd	r1, r5, [sp]
c0de343a:	1d41      	adds	r1, r0, #5
c0de343c:	4618      	mov	r0, r3
c0de343e:	2300      	movs	r3, #0
c0de3440:	f004 f806 	bl	c0de7450 <os_pki_load_certificate>
c0de3444:	4604      	mov	r4, r0
c0de3446:	4628      	mov	r0, r5
c0de3448:	216c      	movs	r1, #108	@ 0x6c
c0de344a:	f004 f99d 	bl	c0de7788 <explicit_bzero>
c0de344e:	2c00      	cmp	r4, #0
c0de3450:	bf08      	it	eq
c0de3452:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3456:	4620      	mov	r0, r4
c0de3458:	b01d      	add	sp, #116	@ 0x74
c0de345a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de345c:	2000      	movs	r0, #0
c0de345e:	6020      	str	r0, [r4, #0]
c0de3460:	b10a      	cbz	r2, c0de3466 <os_io_handle_default_apdu+0xd0>
c0de3462:	2001      	movs	r0, #1
c0de3464:	7010      	strb	r0, [r2, #0]
c0de3466:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de346a:	e7f4      	b.n	c0de3456 <os_io_handle_default_apdu+0xc0>

c0de346c <OUTLINED_FUNCTION_0>:
c0de346c:	6821      	ldr	r1, [r4, #0]
c0de346e:	1c4a      	adds	r2, r1, #1
c0de3470:	6022      	str	r2, [r4, #0]
c0de3472:	5468      	strb	r0, [r5, r1]
c0de3474:	6821      	ldr	r1, [r4, #0]
c0de3476:	4408      	add	r0, r1
c0de3478:	4770      	bx	lr

c0de347a <io_process_itc_ux_event>:
c0de347a:	b580      	push	{r7, lr}
c0de347c:	78c0      	ldrb	r0, [r0, #3]
c0de347e:	2820      	cmp	r0, #32
c0de3480:	d107      	bne.n	c0de3492 <io_process_itc_ux_event+0x18>
c0de3482:	2001      	movs	r0, #1
c0de3484:	f003 fc65 	bl	c0de6d52 <nbgl_objAllowDrawing>
c0de3488:	f003 fc72 	bl	c0de6d70 <nbgl_screenRedraw>
c0de348c:	f003 fc57 	bl	c0de6d3e <nbgl_refresh>
c0de3490:	2100      	movs	r1, #0
c0de3492:	4608      	mov	r0, r1
c0de3494:	bd80      	pop	{r7, pc}
	...

c0de3498 <io_legacy_apdu_tx>:
c0de3498:	b5b0      	push	{r4, r5, r7, lr}
c0de349a:	460a      	mov	r2, r1
c0de349c:	4601      	mov	r1, r0
c0de349e:	4806      	ldr	r0, [pc, #24]	@ (c0de34b8 <io_legacy_apdu_tx+0x20>)
c0de34a0:	2300      	movs	r3, #0
c0de34a2:	2500      	movs	r5, #0
c0de34a4:	eb09 0400 	add.w	r4, r9, r0
c0de34a8:	7860      	ldrb	r0, [r4, #1]
c0de34aa:	f004 f837 	bl	c0de751c <os_io_tx_cmd>
c0de34ae:	4903      	ldr	r1, [pc, #12]	@ (c0de34bc <io_legacy_apdu_tx+0x24>)
c0de34b0:	7065      	strb	r5, [r4, #1]
c0de34b2:	4449      	add	r1, r9
c0de34b4:	718d      	strb	r5, [r1, #6]
c0de34b6:	bdb0      	pop	{r4, r5, r7, pc}
c0de34b8:	00000632 	.word	0x00000632
c0de34bc:	0000062a 	.word	0x0000062a

c0de34c0 <io_legacy_apdu_rx>:
c0de34c0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de34c2:	4e65      	ldr	r6, [pc, #404]	@ (c0de3658 <io_legacy_apdu_rx+0x198>)
c0de34c4:	2100      	movs	r1, #0
c0de34c6:	4605      	mov	r5, r0
c0de34c8:	2200      	movs	r2, #0
c0de34ca:	2301      	movs	r3, #1
c0de34cc:	f88d 100b 	strb.w	r1, [sp, #11]
c0de34d0:	f240 1111 	movw	r1, #273	@ 0x111
c0de34d4:	eb09 0006 	add.w	r0, r9, r6
c0de34d8:	f004 f82c 	bl	c0de7534 <os_io_rx_evt>
c0de34dc:	4604      	mov	r4, r0
c0de34de:	2801      	cmp	r0, #1
c0de34e0:	f2c0 80b5 	blt.w	c0de364e <io_legacy_apdu_rx+0x18e>
c0de34e4:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de34e8:	f1a0 0110 	sub.w	r1, r0, #16
c0de34ec:	2916      	cmp	r1, #22
c0de34ee:	d843      	bhi.n	c0de3578 <io_legacy_apdu_rx+0xb8>
c0de34f0:	2201      	movs	r2, #1
c0de34f2:	fa02 f101 	lsl.w	r1, r2, r1
c0de34f6:	4a59      	ldr	r2, [pc, #356]	@ (c0de365c <io_legacy_apdu_rx+0x19c>)
c0de34f8:	4211      	tst	r1, r2
c0de34fa:	d03d      	beq.n	c0de3578 <io_legacy_apdu_rx+0xb8>
c0de34fc:	4f58      	ldr	r7, [pc, #352]	@ (c0de3660 <io_legacy_apdu_rx+0x1a0>)
c0de34fe:	eb09 0107 	add.w	r1, r9, r7
c0de3502:	7048      	strb	r0, [r1, #1]
c0de3504:	f003 ffb4 	bl	c0de7470 <os_perso_is_pin_set>
c0de3508:	28aa      	cmp	r0, #170	@ 0xaa
c0de350a:	d103      	bne.n	c0de3514 <io_legacy_apdu_rx+0x54>
c0de350c:	f003 ffb9 	bl	c0de7482 <os_global_pin_is_validated>
c0de3510:	28aa      	cmp	r0, #170	@ 0xaa
c0de3512:	d14d      	bne.n	c0de35b0 <io_legacy_apdu_rx+0xf0>
c0de3514:	eb09 0006 	add.w	r0, r9, r6
c0de3518:	7840      	ldrb	r0, [r0, #1]
c0de351a:	28b0      	cmp	r0, #176	@ 0xb0
c0de351c:	d134      	bne.n	c0de3588 <io_legacy_apdu_rx+0xc8>
c0de351e:	f240 1011 	movw	r0, #273	@ 0x111
c0de3522:	1e61      	subs	r1, r4, #1
c0de3524:	9001      	str	r0, [sp, #4]
c0de3526:	f10d 000b 	add.w	r0, sp, #11
c0de352a:	9000      	str	r0, [sp, #0]
c0de352c:	484d      	ldr	r0, [pc, #308]	@ (c0de3664 <io_legacy_apdu_rx+0x1a4>)
c0de352e:	ab01      	add	r3, sp, #4
c0de3530:	eb09 0500 	add.w	r5, r9, r0
c0de3534:	eb09 0006 	add.w	r0, r9, r6
c0de3538:	3001      	adds	r0, #1
c0de353a:	462a      	mov	r2, r5
c0de353c:	f7ff ff2b 	bl	c0de3396 <os_io_handle_default_apdu>
c0de3540:	2400      	movs	r4, #0
c0de3542:	9901      	ldr	r1, [sp, #4]
c0de3544:	eb09 0607 	add.w	r6, r9, r7
c0de3548:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de354c:	bf18      	it	ne
c0de354e:	4621      	movne	r1, r4
c0de3550:	0a02      	lsrs	r2, r0, #8
c0de3552:	2300      	movs	r3, #0
c0de3554:	546a      	strb	r2, [r5, r1]
c0de3556:	186a      	adds	r2, r5, r1
c0de3558:	7050      	strb	r0, [r2, #1]
c0de355a:	1c88      	adds	r0, r1, #2
c0de355c:	4629      	mov	r1, r5
c0de355e:	9001      	str	r0, [sp, #4]
c0de3560:	b282      	uxth	r2, r0
c0de3562:	7870      	ldrb	r0, [r6, #1]
c0de3564:	f003 ffda 	bl	c0de751c <os_io_tx_cmd>
c0de3568:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de356c:	7074      	strb	r4, [r6, #1]
c0de356e:	2901      	cmp	r1, #1
c0de3570:	d06f      	beq.n	c0de3652 <io_legacy_apdu_rx+0x192>
c0de3572:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3576:	e06a      	b.n	c0de364e <io_legacy_apdu_rx+0x18e>
c0de3578:	1e41      	subs	r1, r0, #1
c0de357a:	2902      	cmp	r1, #2
c0de357c:	d32a      	bcc.n	c0de35d4 <io_legacy_apdu_rx+0x114>
c0de357e:	2830      	cmp	r0, #48	@ 0x30
c0de3580:	d0bc      	beq.n	c0de34fc <io_legacy_apdu_rx+0x3c>
c0de3582:	2840      	cmp	r0, #64	@ 0x40
c0de3584:	d0ba      	beq.n	c0de34fc <io_legacy_apdu_rx+0x3c>
c0de3586:	e061      	b.n	c0de364c <io_legacy_apdu_rx+0x18c>
c0de3588:	eb09 0007 	add.w	r0, r9, r7
c0de358c:	7840      	ldrb	r0, [r0, #1]
c0de358e:	2810      	cmp	r0, #16
c0de3590:	d040      	beq.n	c0de3614 <io_legacy_apdu_rx+0x154>
c0de3592:	2840      	cmp	r0, #64	@ 0x40
c0de3594:	d040      	beq.n	c0de3618 <io_legacy_apdu_rx+0x158>
c0de3596:	2821      	cmp	r0, #33	@ 0x21
c0de3598:	d040      	beq.n	c0de361c <io_legacy_apdu_rx+0x15c>
c0de359a:	2822      	cmp	r0, #34	@ 0x22
c0de359c:	d034      	beq.n	c0de3608 <io_legacy_apdu_rx+0x148>
c0de359e:	2823      	cmp	r0, #35	@ 0x23
c0de35a0:	d034      	beq.n	c0de360c <io_legacy_apdu_rx+0x14c>
c0de35a2:	2830      	cmp	r0, #48	@ 0x30
c0de35a4:	d034      	beq.n	c0de3610 <io_legacy_apdu_rx+0x150>
c0de35a6:	2820      	cmp	r0, #32
c0de35a8:	bf14      	ite	ne
c0de35aa:	2000      	movne	r0, #0
c0de35ac:	2001      	moveq	r0, #1
c0de35ae:	e036      	b.n	c0de361e <io_legacy_apdu_rx+0x15e>
c0de35b0:	482c      	ldr	r0, [pc, #176]	@ (c0de3664 <io_legacy_apdu_rx+0x1a4>)
c0de35b2:	2155      	movs	r1, #85	@ 0x55
c0de35b4:	2202      	movs	r2, #2
c0de35b6:	2300      	movs	r3, #0
c0de35b8:	f809 1000 	strb.w	r1, [r9, r0]
c0de35bc:	eb09 0100 	add.w	r1, r9, r0
c0de35c0:	2015      	movs	r0, #21
c0de35c2:	7048      	strb	r0, [r1, #1]
c0de35c4:	eb09 0007 	add.w	r0, r9, r7
c0de35c8:	7840      	ldrb	r0, [r0, #1]
c0de35ca:	b003      	add	sp, #12
c0de35cc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de35d0:	f003 bfa4 	b.w	c0de751c <os_io_tx_cmd>
c0de35d4:	4f25      	ldr	r7, [pc, #148]	@ (c0de366c <io_legacy_apdu_rx+0x1ac>)
c0de35d6:	444e      	add	r6, r9
c0de35d8:	3c01      	subs	r4, #1
c0de35da:	1c71      	adds	r1, r6, #1
c0de35dc:	4622      	mov	r2, r4
c0de35de:	eb09 0007 	add.w	r0, r9, r7
c0de35e2:	f004 f8b9 	bl	c0de7758 <__aeabi_memcpy>
c0de35e6:	7870      	ldrb	r0, [r6, #1]
c0de35e8:	281a      	cmp	r0, #26
c0de35ea:	d107      	bne.n	c0de35fc <io_legacy_apdu_rx+0x13c>
c0de35ec:	eb09 0007 	add.w	r0, r9, r7
c0de35f0:	4621      	mov	r1, r4
c0de35f2:	b003      	add	sp, #12
c0de35f4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de35f8:	f7ff bf3f 	b.w	c0de347a <io_process_itc_ux_event>
c0de35fc:	b1e5      	cbz	r5, c0de3638 <io_legacy_apdu_rx+0x178>
c0de35fe:	2000      	movs	r0, #0
c0de3600:	2400      	movs	r4, #0
c0de3602:	f003 f8c3 	bl	c0de678c <io_event>
c0de3606:	e022      	b.n	c0de364e <io_legacy_apdu_rx+0x18e>
c0de3608:	2004      	movs	r0, #4
c0de360a:	e008      	b.n	c0de361e <io_legacy_apdu_rx+0x15e>
c0de360c:	2007      	movs	r0, #7
c0de360e:	e006      	b.n	c0de361e <io_legacy_apdu_rx+0x15e>
c0de3610:	2002      	movs	r0, #2
c0de3612:	e004      	b.n	c0de361e <io_legacy_apdu_rx+0x15e>
c0de3614:	2006      	movs	r0, #6
c0de3616:	e002      	b.n	c0de361e <io_legacy_apdu_rx+0x15e>
c0de3618:	2003      	movs	r0, #3
c0de361a:	e000      	b.n	c0de361e <io_legacy_apdu_rx+0x15e>
c0de361c:	2005      	movs	r0, #5
c0de361e:	4912      	ldr	r1, [pc, #72]	@ (c0de3668 <io_legacy_apdu_rx+0x1a8>)
c0de3620:	3c01      	subs	r4, #1
c0de3622:	4622      	mov	r2, r4
c0de3624:	4449      	add	r1, r9
c0de3626:	7188      	strb	r0, [r1, #6]
c0de3628:	480e      	ldr	r0, [pc, #56]	@ (c0de3664 <io_legacy_apdu_rx+0x1a4>)
c0de362a:	eb09 0106 	add.w	r1, r9, r6
c0de362e:	3101      	adds	r1, #1
c0de3630:	4448      	add	r0, r9
c0de3632:	f004 f891 	bl	c0de7758 <__aeabi_memcpy>
c0de3636:	e00a      	b.n	c0de364e <io_legacy_apdu_rx+0x18e>
c0de3638:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de363c:	2815      	cmp	r0, #21
c0de363e:	d8de      	bhi.n	c0de35fe <io_legacy_apdu_rx+0x13e>
c0de3640:	2101      	movs	r1, #1
c0de3642:	fa01 f000 	lsl.w	r0, r1, r0
c0de3646:	490a      	ldr	r1, [pc, #40]	@ (c0de3670 <io_legacy_apdu_rx+0x1b0>)
c0de3648:	4208      	tst	r0, r1
c0de364a:	d0d8      	beq.n	c0de35fe <io_legacy_apdu_rx+0x13e>
c0de364c:	2400      	movs	r4, #0
c0de364e:	4620      	mov	r0, r4
c0de3650:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3652:	20ff      	movs	r0, #255	@ 0xff
c0de3654:	f003 ff44 	bl	c0de74e0 <os_sched_exit>
c0de3658:	00000518 	.word	0x00000518
c0de365c:	007f0001 	.word	0x007f0001
c0de3660:	00000632 	.word	0x00000632
c0de3664:	00000407 	.word	0x00000407
c0de3668:	0000062a 	.word	0x0000062a
c0de366c:	000007ac 	.word	0x000007ac
c0de3670:	00205020 	.word	0x00205020

c0de3674 <io_seproxyhal_init>:
c0de3674:	b570      	push	{r4, r5, r6, lr}
c0de3676:	b08a      	sub	sp, #40	@ 0x28
c0de3678:	4d0b      	ldr	r5, [pc, #44]	@ (c0de36a8 <io_seproxyhal_init+0x34>)
c0de367a:	2600      	movs	r6, #0
c0de367c:	2118      	movs	r1, #24
c0de367e:	eb09 0005 	add.w	r0, r9, r5
c0de3682:	7046      	strb	r6, [r0, #1]
c0de3684:	ac01      	add	r4, sp, #4
c0de3686:	4620      	mov	r0, r4
c0de3688:	f004 f870 	bl	c0de776c <__aeabi_memclr>
c0de368c:	2011      	movs	r0, #17
c0de368e:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3692:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3696:	4620      	mov	r0, r4
c0de3698:	f003 ff2c 	bl	c0de74f4 <os_io_init>
c0de369c:	2001      	movs	r0, #1
c0de369e:	f809 0005 	strb.w	r0, [r9, r5]
c0de36a2:	b00a      	add	sp, #40	@ 0x28
c0de36a4:	bd70      	pop	{r4, r5, r6, pc}
c0de36a6:	bf00      	nop
c0de36a8:	00000632 	.word	0x00000632

c0de36ac <getTextMaxLenAndWidth>:
c0de36ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36b0:	461c      	mov	r4, r3
c0de36b2:	4690      	mov	r8, r2
c0de36b4:	460e      	mov	r6, r1
c0de36b6:	4682      	mov	sl, r0
c0de36b8:	f003 fb73 	bl	c0de6da2 <nbgl_getFont>
c0de36bc:	4607      	mov	r7, r0
c0de36be:	4630      	mov	r0, r6
c0de36c0:	f004 f8b0 	bl	c0de7824 <strlen>
c0de36c4:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de36c8:	4605      	mov	r5, r0
c0de36ca:	2000      	movs	r0, #0
c0de36cc:	f8ab 0000 	strh.w	r0, [fp]
c0de36d0:	8020      	strh	r0, [r4, #0]
c0de36d2:	0428      	lsls	r0, r5, #16
c0de36d4:	d03e      	beq.n	c0de3754 <getTextMaxLenAndWidth+0xa8>
c0de36d6:	7830      	ldrb	r0, [r6, #0]
c0de36d8:	3d01      	subs	r5, #1
c0de36da:	2808      	cmp	r0, #8
c0de36dc:	d025      	beq.n	c0de372a <getTextMaxLenAndWidth+0x7e>
c0de36de:	280c      	cmp	r0, #12
c0de36e0:	d035      	beq.n	c0de374e <getTextMaxLenAndWidth+0xa2>
c0de36e2:	280a      	cmp	r0, #10
c0de36e4:	d033      	beq.n	c0de374e <getTextMaxLenAndWidth+0xa2>
c0de36e6:	7af9      	ldrb	r1, [r7, #11]
c0de36e8:	4288      	cmp	r0, r1
c0de36ea:	d32d      	bcc.n	c0de3748 <getTextMaxLenAndWidth+0x9c>
c0de36ec:	7b3a      	ldrb	r2, [r7, #12]
c0de36ee:	4290      	cmp	r0, r2
c0de36f0:	d82a      	bhi.n	c0de3748 <getTextMaxLenAndWidth+0x9c>
c0de36f2:	1a40      	subs	r0, r0, r1
c0de36f4:	6939      	ldr	r1, [r7, #16]
c0de36f6:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de36fa:	f003 fd2b 	bl	c0de7154 <pic>
c0de36fe:	7900      	ldrb	r0, [r0, #4]
c0de3700:	7a39      	ldrb	r1, [r7, #8]
c0de3702:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3706:	1a40      	subs	r0, r0, r1
c0de3708:	0601      	lsls	r1, r0, #24
c0de370a:	d01d      	beq.n	c0de3748 <getTextMaxLenAndWidth+0x9c>
c0de370c:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3710:	b2c0      	uxtb	r0, r0
c0de3712:	4401      	add	r1, r0
c0de3714:	4541      	cmp	r1, r8
c0de3716:	d81d      	bhi.n	c0de3754 <getTextMaxLenAndWidth+0xa8>
c0de3718:	8821      	ldrh	r1, [r4, #0]
c0de371a:	3101      	adds	r1, #1
c0de371c:	8021      	strh	r1, [r4, #0]
c0de371e:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3722:	4408      	add	r0, r1
c0de3724:	f8ab 0000 	strh.w	r0, [fp]
c0de3728:	e7d3      	b.n	c0de36d2 <getTextMaxLenAndWidth+0x26>
c0de372a:	fa5f f08a 	uxtb.w	r0, sl
c0de372e:	280a      	cmp	r0, #10
c0de3730:	d004      	beq.n	c0de373c <getTextMaxLenAndWidth+0x90>
c0de3732:	2808      	cmp	r0, #8
c0de3734:	d108      	bne.n	c0de3748 <getTextMaxLenAndWidth+0x9c>
c0de3736:	f04f 0a0a 	mov.w	sl, #10
c0de373a:	e001      	b.n	c0de3740 <getTextMaxLenAndWidth+0x94>
c0de373c:	f04f 0a08 	mov.w	sl, #8
c0de3740:	4650      	mov	r0, sl
c0de3742:	f003 fb2e 	bl	c0de6da2 <nbgl_getFont>
c0de3746:	4607      	mov	r7, r0
c0de3748:	8820      	ldrh	r0, [r4, #0]
c0de374a:	3001      	adds	r0, #1
c0de374c:	e7c0      	b.n	c0de36d0 <getTextMaxLenAndWidth+0x24>
c0de374e:	8820      	ldrh	r0, [r4, #0]
c0de3750:	3001      	adds	r0, #1
c0de3752:	8020      	strh	r0, [r4, #0]
c0de3754:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3758 <nbgl_layoutGet>:
c0de3758:	b570      	push	{r4, r5, r6, lr}
c0de375a:	4605      	mov	r5, r0
c0de375c:	7800      	ldrb	r0, [r0, #0]
c0de375e:	b148      	cbz	r0, c0de3774 <nbgl_layoutGet+0x1c>
c0de3760:	4819      	ldr	r0, [pc, #100]	@ (c0de37c8 <nbgl_layoutGet+0x70>)
c0de3762:	eb09 0100 	add.w	r1, r9, r0
c0de3766:	7b8a      	ldrb	r2, [r1, #14]
c0de3768:	b152      	cbz	r2, c0de3780 <nbgl_layoutGet+0x28>
c0de376a:	4448      	add	r0, r9
c0de376c:	7e81      	ldrb	r1, [r0, #26]
c0de376e:	b151      	cbz	r1, c0de3786 <nbgl_layoutGet+0x2e>
c0de3770:	2400      	movs	r4, #0
c0de3772:	e026      	b.n	c0de37c2 <nbgl_layoutGet+0x6a>
c0de3774:	4814      	ldr	r0, [pc, #80]	@ (c0de37c8 <nbgl_layoutGet+0x70>)
c0de3776:	eb09 0400 	add.w	r4, r9, r0
c0de377a:	2000      	movs	r0, #0
c0de377c:	70a0      	strb	r0, [r4, #2]
c0de377e:	e004      	b.n	c0de378a <nbgl_layoutGet+0x32>
c0de3780:	f101 040c 	add.w	r4, r1, #12
c0de3784:	e001      	b.n	c0de378a <nbgl_layoutGet+0x32>
c0de3786:	f100 0418 	add.w	r4, r0, #24
c0de378a:	2000      	movs	r0, #0
c0de378c:	4626      	mov	r6, r4
c0de378e:	60a0      	str	r0, [r4, #8]
c0de3790:	6020      	str	r0, [r4, #0]
c0de3792:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3796:	6868      	ldr	r0, [r5, #4]
c0de3798:	f003 fcdc 	bl	c0de7154 <pic>
c0de379c:	60a0      	str	r0, [r4, #8]
c0de379e:	7828      	ldrb	r0, [r5, #0]
c0de37a0:	f105 0208 	add.w	r2, r5, #8
c0de37a4:	7020      	strb	r0, [r4, #0]
c0de37a6:	4b09      	ldr	r3, [pc, #36]	@ (c0de37cc <nbgl_layoutGet+0x74>)
c0de37a8:	447b      	add	r3, pc
c0de37aa:	b120      	cbz	r0, c0de37b6 <nbgl_layoutGet+0x5e>
c0de37ac:	4630      	mov	r0, r6
c0de37ae:	2107      	movs	r1, #7
c0de37b0:	f003 fad9 	bl	c0de6d66 <nbgl_screenPush>
c0de37b4:	e004      	b.n	c0de37c0 <nbgl_layoutGet+0x68>
c0de37b6:	4630      	mov	r0, r6
c0de37b8:	2107      	movs	r1, #7
c0de37ba:	f003 facf 	bl	c0de6d5c <nbgl_screenSet>
c0de37be:	2000      	movs	r0, #0
c0de37c0:	7060      	strb	r0, [r4, #1]
c0de37c2:	4620      	mov	r0, r4
c0de37c4:	bd70      	pop	{r4, r5, r6, pc}
c0de37c6:	bf00      	nop
c0de37c8:	00000634 	.word	0x00000634
c0de37cc:	00000025 	.word	0x00000025

c0de37d0 <buttonCallback>:
c0de37d0:	b5b0      	push	{r4, r5, r7, lr}
c0de37d2:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de37d6:	4811      	ldr	r0, [pc, #68]	@ (c0de381c <buttonCallback+0x4c>)
c0de37d8:	2302      	movs	r3, #2
c0de37da:	1c5c      	adds	r4, r3, #1
c0de37dc:	d01d      	beq.n	c0de381a <buttonCallback+0x4a>
c0de37de:	b2dc      	uxtb	r4, r3
c0de37e0:	eb09 0500 	add.w	r5, r9, r0
c0de37e4:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de37e8:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de37ec:	786d      	ldrb	r5, [r5, #1]
c0de37ee:	42aa      	cmp	r2, r5
c0de37f0:	d105      	bne.n	c0de37fe <buttonCallback+0x2e>
c0de37f2:	eb09 0500 	add.w	r5, r9, r0
c0de37f6:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de37fa:	78ad      	ldrb	r5, [r5, #2]
c0de37fc:	b90d      	cbnz	r5, c0de3802 <buttonCallback+0x32>
c0de37fe:	3b01      	subs	r3, #1
c0de3800:	e7eb      	b.n	c0de37da <buttonCallback+0xa>
c0de3802:	eb09 0200 	add.w	r2, r9, r0
c0de3806:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de380a:	6892      	ldr	r2, [r2, #8]
c0de380c:	b12a      	cbz	r2, c0de381a <buttonCallback+0x4a>
c0de380e:	4448      	add	r0, r9
c0de3810:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3814:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3818:	4710      	bx	r2
c0de381a:	bdb0      	pop	{r4, r5, r7, pc}
c0de381c:	00000634 	.word	0x00000634

c0de3820 <nbgl_layoutAddNavigation>:
c0de3820:	b570      	push	{r4, r5, r6, lr}
c0de3822:	2800      	cmp	r0, #0
c0de3824:	d04d      	beq.n	c0de38c2 <nbgl_layoutAddNavigation+0xa2>
c0de3826:	460d      	mov	r5, r1
c0de3828:	7849      	ldrb	r1, [r1, #1]
c0de382a:	4604      	mov	r4, r0
c0de382c:	07c8      	lsls	r0, r1, #31
c0de382e:	d022      	beq.n	c0de3876 <nbgl_layoutAddNavigation+0x56>
c0de3830:	7861      	ldrb	r1, [r4, #1]
c0de3832:	2002      	movs	r0, #2
c0de3834:	f003 faab 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3838:	782a      	ldrb	r2, [r5, #0]
c0de383a:	7869      	ldrb	r1, [r5, #1]
c0de383c:	4b23      	ldr	r3, [pc, #140]	@ (c0de38cc <nbgl_layoutAddNavigation+0xac>)
c0de383e:	4e24      	ldr	r6, [pc, #144]	@ (c0de38d0 <nbgl_layoutAddNavigation+0xb0>)
c0de3840:	2a00      	cmp	r2, #0
c0de3842:	447b      	add	r3, pc
c0de3844:	447e      	add	r6, pc
c0de3846:	4602      	mov	r2, r0
c0de3848:	bf08      	it	eq
c0de384a:	461e      	moveq	r6, r3
c0de384c:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3850:	0e33      	lsrs	r3, r6, #24
c0de3852:	70d3      	strb	r3, [r2, #3]
c0de3854:	0c33      	lsrs	r3, r6, #16
c0de3856:	7093      	strb	r3, [r2, #2]
c0de3858:	0a32      	lsrs	r2, r6, #8
c0de385a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de385e:	6862      	ldr	r2, [r4, #4]
c0de3860:	78a3      	ldrb	r3, [r4, #2]
c0de3862:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3866:	2203      	movs	r2, #3
c0de3868:	77c2      	strb	r2, [r0, #31]
c0de386a:	2204      	movs	r2, #4
c0de386c:	7582      	strb	r2, [r0, #22]
c0de386e:	2200      	movs	r2, #0
c0de3870:	7242      	strb	r2, [r0, #9]
c0de3872:	1c58      	adds	r0, r3, #1
c0de3874:	70a0      	strb	r0, [r4, #2]
c0de3876:	0788      	lsls	r0, r1, #30
c0de3878:	f04f 0600 	mov.w	r6, #0
c0de387c:	d523      	bpl.n	c0de38c6 <nbgl_layoutAddNavigation+0xa6>
c0de387e:	7861      	ldrb	r1, [r4, #1]
c0de3880:	2002      	movs	r0, #2
c0de3882:	f003 fa84 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3886:	7829      	ldrb	r1, [r5, #0]
c0de3888:	4a12      	ldr	r2, [pc, #72]	@ (c0de38d4 <nbgl_layoutAddNavigation+0xb4>)
c0de388a:	4b13      	ldr	r3, [pc, #76]	@ (c0de38d8 <nbgl_layoutAddNavigation+0xb8>)
c0de388c:	2900      	cmp	r1, #0
c0de388e:	447a      	add	r2, pc
c0de3890:	447b      	add	r3, pc
c0de3892:	4601      	mov	r1, r0
c0de3894:	bf08      	it	eq
c0de3896:	4613      	moveq	r3, r2
c0de3898:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de389c:	0e1a      	lsrs	r2, r3, #24
c0de389e:	7246      	strb	r6, [r0, #9]
c0de38a0:	70ca      	strb	r2, [r1, #3]
c0de38a2:	0c1a      	lsrs	r2, r3, #16
c0de38a4:	708a      	strb	r2, [r1, #2]
c0de38a6:	0a19      	lsrs	r1, r3, #8
c0de38a8:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de38ac:	6861      	ldr	r1, [r4, #4]
c0de38ae:	78a2      	ldrb	r2, [r4, #2]
c0de38b0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de38b4:	2103      	movs	r1, #3
c0de38b6:	77c1      	strb	r1, [r0, #31]
c0de38b8:	2106      	movs	r1, #6
c0de38ba:	7581      	strb	r1, [r0, #22]
c0de38bc:	1c50      	adds	r0, r2, #1
c0de38be:	70a0      	strb	r0, [r4, #2]
c0de38c0:	e001      	b.n	c0de38c6 <nbgl_layoutAddNavigation+0xa6>
c0de38c2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de38c6:	4630      	mov	r0, r6
c0de38c8:	bd70      	pop	{r4, r5, r6, pc}
c0de38ca:	bf00      	nop
c0de38cc:	00004148 	.word	0x00004148
c0de38d0:	00004185 	.word	0x00004185
c0de38d4:	0000412d 	.word	0x0000412d
c0de38d8:	000040ec 	.word	0x000040ec

c0de38dc <nbgl_layoutAddText>:
c0de38dc:	2800      	cmp	r0, #0
c0de38de:	f000 8140 	beq.w	c0de3b62 <nbgl_layoutAddText+0x286>
c0de38e2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de38e6:	b088      	sub	sp, #32
c0de38e8:	460e      	mov	r6, r1
c0de38ea:	7841      	ldrb	r1, [r0, #1]
c0de38ec:	4605      	mov	r5, r0
c0de38ee:	2001      	movs	r0, #1
c0de38f0:	4617      	mov	r7, r2
c0de38f2:	461c      	mov	r4, r3
c0de38f4:	f003 fa4b 	bl	c0de6d8e <nbgl_objPoolGet>
c0de38f8:	4680      	mov	r8, r0
c0de38fa:	2003      	movs	r0, #3
c0de38fc:	2f00      	cmp	r7, #0
c0de38fe:	bf08      	it	eq
c0de3900:	2001      	moveq	r0, #1
c0de3902:	7869      	ldrb	r1, [r5, #1]
c0de3904:	f888 0020 	strb.w	r0, [r8, #32]
c0de3908:	f003 fa46 	bl	c0de6d98 <nbgl_containerPoolGet>
c0de390c:	4641      	mov	r1, r8
c0de390e:	0e02      	lsrs	r2, r0, #24
c0de3910:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3914:	f04f 0b00 	mov.w	fp, #0
c0de3918:	9704      	str	r7, [sp, #16]
c0de391a:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de391e:	f888 a004 	strb.w	sl, [r8, #4]
c0de3922:	f888 b005 	strb.w	fp, [r8, #5]
c0de3926:	70ca      	strb	r2, [r1, #3]
c0de3928:	0c02      	lsrs	r2, r0, #16
c0de392a:	0a00      	lsrs	r0, r0, #8
c0de392c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3930:	708a      	strb	r2, [r1, #2]
c0de3932:	2004      	movs	r0, #4
c0de3934:	7869      	ldrb	r1, [r5, #1]
c0de3936:	f003 fa2a 	bl	c0de6d8e <nbgl_objPoolGet>
c0de393a:	4607      	mov	r7, r0
c0de393c:	2003      	movs	r0, #3
c0de393e:	77f8      	strb	r0, [r7, #31]
c0de3940:	4630      	mov	r0, r6
c0de3942:	f003 fc07 	bl	c0de7154 <pic>
c0de3946:	4601      	mov	r1, r0
c0de3948:	2008      	movs	r0, #8
c0de394a:	f887 a004 	strb.w	sl, [r7, #4]
c0de394e:	f887 b005 	strb.w	fp, [r7, #5]
c0de3952:	9403      	str	r4, [sp, #12]
c0de3954:	f04f 0a01 	mov.w	sl, #1
c0de3958:	2c00      	cmp	r4, #0
c0de395a:	bf08      	it	eq
c0de395c:	200a      	moveq	r0, #10
c0de395e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3962:	2205      	movs	r2, #5
c0de3964:	0e0b      	lsrs	r3, r1, #24
c0de3966:	f887 2020 	strb.w	r2, [r7, #32]
c0de396a:	463a      	mov	r2, r7
c0de396c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3970:	70d3      	strb	r3, [r2, #3]
c0de3972:	0c0b      	lsrs	r3, r1, #16
c0de3974:	7093      	strb	r3, [r2, #2]
c0de3976:	0a0a      	lsrs	r2, r1, #8
c0de3978:	2301      	movs	r3, #1
c0de397a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de397e:	2272      	movs	r2, #114	@ 0x72
c0de3980:	f003 fa19 	bl	c0de6db6 <nbgl_getTextNbLinesInWidth>
c0de3984:	4606      	mov	r6, r0
c0de3986:	2805      	cmp	r0, #5
c0de3988:	9505      	str	r5, [sp, #20]
c0de398a:	d31d      	bcc.n	c0de39c8 <nbgl_layoutAddText+0xec>
c0de398c:	463e      	mov	r6, r7
c0de398e:	2004      	movs	r0, #4
c0de3990:	f10d 051e 	add.w	r5, sp, #30
c0de3994:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de3998:	7872      	ldrb	r2, [r6, #1]
c0de399a:	78b3      	ldrb	r3, [r6, #2]
c0de399c:	78f4      	ldrb	r4, [r6, #3]
c0de399e:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de39a2:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de39a6:	9500      	str	r5, [sp, #0]
c0de39a8:	9d05      	ldr	r5, [sp, #20]
c0de39aa:	f8cd a004 	str.w	sl, [sp, #4]
c0de39ae:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de39b2:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de39b6:	2304      	movs	r3, #4
c0de39b8:	f000 fc6d 	bl	c0de4296 <OUTLINED_FUNCTION_5>
c0de39bc:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de39c0:	7130      	strb	r0, [r6, #4]
c0de39c2:	0a00      	lsrs	r0, r0, #8
c0de39c4:	7170      	strb	r0, [r6, #5]
c0de39c6:	2604      	movs	r6, #4
c0de39c8:	f000 fc72 	bl	c0de42b0 <OUTLINED_FUNCTION_7>
c0de39cc:	4683      	mov	fp, r0
c0de39ce:	2002      	movs	r0, #2
c0de39d0:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de39d4:	9c04      	ldr	r4, [sp, #16]
c0de39d6:	75b8      	strb	r0, [r7, #22]
c0de39d8:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de39dc:	2c00      	cmp	r4, #0
c0de39de:	fb06 fa00 	mul.w	sl, r6, r0
c0de39e2:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de39e6:	f887 a006 	strb.w	sl, [r7, #6]
c0de39ea:	71f8      	strb	r0, [r7, #7]
c0de39ec:	4640      	mov	r0, r8
c0de39ee:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de39f2:	7842      	ldrb	r2, [r0, #1]
c0de39f4:	7883      	ldrb	r3, [r0, #2]
c0de39f6:	78c0      	ldrb	r0, [r0, #3]
c0de39f8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de39fc:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3a00:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3a04:	6007      	str	r7, [r0, #0]
c0de3a06:	f000 8111 	beq.w	c0de3c2c <nbgl_layoutAddText+0x350>
c0de3a0a:	9803      	ldr	r0, [sp, #12]
c0de3a0c:	7869      	ldrb	r1, [r5, #1]
c0de3a0e:	2802      	cmp	r0, #2
c0de3a10:	f040 80a9 	bne.w	c0de3b66 <nbgl_layoutAddText+0x28a>
c0de3a14:	2005      	movs	r0, #5
c0de3a16:	2505      	movs	r5, #5
c0de3a18:	f003 f9b9 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3a1c:	2600      	movs	r6, #0
c0de3a1e:	4607      	mov	r7, r0
c0de3a20:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3a24:	2001      	movs	r0, #1
c0de3a26:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3a2a:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3a2e:	f000 fc46 	bl	c0de42be <OUTLINED_FUNCTION_9>
c0de3a32:	4620      	mov	r0, r4
c0de3a34:	f003 fb8e 	bl	c0de7154 <pic>
c0de3a38:	4601      	mov	r1, r0
c0de3a3a:	200e      	movs	r0, #14
c0de3a3c:	71fe      	strb	r6, [r7, #7]
c0de3a3e:	75bd      	strb	r5, [r7, #22]
c0de3a40:	71b8      	strb	r0, [r7, #6]
c0de3a42:	2008      	movs	r0, #8
c0de3a44:	0e0a      	lsrs	r2, r1, #24
c0de3a46:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3a4a:	4638      	mov	r0, r7
c0de3a4c:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3a50:	f000 fc15 	bl	c0de427e <OUTLINED_FUNCTION_3>
c0de3a54:	2865      	cmp	r0, #101	@ 0x65
c0de3a56:	f240 80d9 	bls.w	c0de3c0c <nbgl_layoutAddText+0x330>
c0de3a5a:	46bb      	mov	fp, r7
c0de3a5c:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3a60:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3a64:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3a68:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3a6c:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3a70:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3a74:	ae06      	add	r6, sp, #24
c0de3a76:	9600      	str	r6, [sp, #0]
c0de3a78:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3a7c:	f10d 031a 	add.w	r3, sp, #26
c0de3a80:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3a84:	2266      	movs	r2, #102	@ 0x66
c0de3a86:	f7ff fe11 	bl	c0de36ac <getTextMaxLenAndWidth>
c0de3a8a:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3a8e:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3a92:	9003      	str	r0, [sp, #12]
c0de3a94:	300c      	adds	r0, #12
c0de3a96:	9602      	str	r6, [sp, #8]
c0de3a98:	7138      	strb	r0, [r7, #4]
c0de3a9a:	0a00      	lsrs	r0, r0, #8
c0de3a9c:	7178      	strb	r0, [r7, #5]
c0de3a9e:	486e      	ldr	r0, [pc, #440]	@ (c0de3c58 <nbgl_layoutAddText+0x37c>)
c0de3aa0:	2e13      	cmp	r6, #19
c0de3aa2:	bf28      	it	cs
c0de3aa4:	2613      	movcs	r6, #19
c0de3aa6:	f89b 1000 	ldrb.w	r1, [fp]
c0de3aaa:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3aae:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3ab2:	eb09 0400 	add.w	r4, r9, r0
c0de3ab6:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3aba:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3abe:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3ac2:	4632      	mov	r2, r6
c0de3ac4:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3ac8:	4620      	mov	r0, r4
c0de3aca:	f003 fe45 	bl	c0de7758 <__aeabi_memcpy>
c0de3ace:	2500      	movs	r5, #0
c0de3ad0:	4620      	mov	r0, r4
c0de3ad2:	55a5      	strb	r5, [r4, r6]
c0de3ad4:	f003 fb3e 	bl	c0de7154 <pic>
c0de3ad8:	2101      	movs	r1, #1
c0de3ada:	f88b 0000 	strb.w	r0, [fp]
c0de3ade:	76bd      	strb	r5, [r7, #26]
c0de3ae0:	9d05      	ldr	r5, [sp, #20]
c0de3ae2:	7679      	strb	r1, [r7, #25]
c0de3ae4:	0e01      	lsrs	r1, r0, #24
c0de3ae6:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3aea:	0c01      	lsrs	r1, r0, #16
c0de3aec:	0a00      	lsrs	r0, r0, #8
c0de3aee:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3af2:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3af6:	4640      	mov	r0, r8
c0de3af8:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3afc:	7842      	ldrb	r2, [r0, #1]
c0de3afe:	7883      	ldrb	r3, [r0, #2]
c0de3b00:	78c0      	ldrb	r0, [r0, #3]
c0de3b02:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3b06:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3b0a:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3b0e:	6047      	str	r7, [r0, #4]
c0de3b10:	9803      	ldr	r0, [sp, #12]
c0de3b12:	2800      	cmp	r0, #0
c0de3b14:	f000 8088 	beq.w	c0de3c28 <nbgl_layoutAddText+0x34c>
c0de3b18:	7869      	ldrb	r1, [r5, #1]
c0de3b1a:	2005      	movs	r0, #5
c0de3b1c:	2605      	movs	r6, #5
c0de3b1e:	f003 f936 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3b22:	2500      	movs	r5, #0
c0de3b24:	4607      	mov	r7, r0
c0de3b26:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3b2a:	2001      	movs	r0, #1
c0de3b2c:	f000 fbc7 	bl	c0de42be <OUTLINED_FUNCTION_9>
c0de3b30:	9804      	ldr	r0, [sp, #16]
c0de3b32:	f003 fb0f 	bl	c0de7154 <pic>
c0de3b36:	210e      	movs	r1, #14
c0de3b38:	71fd      	strb	r5, [r7, #7]
c0de3b3a:	71b9      	strb	r1, [r7, #6]
c0de3b3c:	2108      	movs	r1, #8
c0de3b3e:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3b42:	9902      	ldr	r1, [sp, #8]
c0de3b44:	4401      	add	r1, r0
c0de3b46:	4638      	mov	r0, r7
c0de3b48:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3b4c:	0e0a      	lsrs	r2, r1, #24
c0de3b4e:	f000 fb96 	bl	c0de427e <OUTLINED_FUNCTION_3>
c0de3b52:	300c      	adds	r0, #12
c0de3b54:	210f      	movs	r1, #15
c0de3b56:	75be      	strb	r6, [r7, #22]
c0de3b58:	7138      	strb	r0, [r7, #4]
c0de3b5a:	0a00      	lsrs	r0, r0, #8
c0de3b5c:	7178      	strb	r0, [r7, #5]
c0de3b5e:	2002      	movs	r0, #2
c0de3b60:	e05a      	b.n	c0de3c18 <nbgl_layoutAddText+0x33c>
c0de3b62:	f000 bba9 	b.w	c0de42b8 <OUTLINED_FUNCTION_8>
c0de3b66:	f000 fb93 	bl	c0de4290 <OUTLINED_FUNCTION_4>
c0de3b6a:	2603      	movs	r6, #3
c0de3b6c:	4607      	mov	r7, r0
c0de3b6e:	77c6      	strb	r6, [r0, #31]
c0de3b70:	4620      	mov	r0, r4
c0de3b72:	f003 faef 	bl	c0de7154 <pic>
c0de3b76:	4601      	mov	r1, r0
c0de3b78:	2072      	movs	r0, #114	@ 0x72
c0de3b7a:	2400      	movs	r4, #0
c0de3b7c:	2301      	movs	r3, #1
c0de3b7e:	7138      	strb	r0, [r7, #4]
c0de3b80:	2001      	movs	r0, #1
c0de3b82:	0e0a      	lsrs	r2, r1, #24
c0de3b84:	717c      	strb	r4, [r7, #5]
c0de3b86:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3b8a:	200a      	movs	r0, #10
c0de3b8c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3b90:	f000 fb5b 	bl	c0de424a <OUTLINED_FUNCTION_1>
c0de3b94:	2804      	cmp	r0, #4
c0de3b96:	d31e      	bcc.n	c0de3bd6 <nbgl_layoutAddText+0x2fa>
c0de3b98:	463d      	mov	r5, r7
c0de3b9a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3b9e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3ba2:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3ba6:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3baa:	78ab      	ldrb	r3, [r5, #2]
c0de3bac:	78e9      	ldrb	r1, [r5, #3]
c0de3bae:	aa07      	add	r2, sp, #28
c0de3bb0:	9200      	str	r2, [sp, #0]
c0de3bb2:	2201      	movs	r2, #1
c0de3bb4:	9201      	str	r2, [sp, #4]
c0de3bb6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3bba:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3bbe:	2303      	movs	r3, #3
c0de3bc0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3bc4:	2272      	movs	r2, #114	@ 0x72
c0de3bc6:	f003 f905 	bl	c0de6dd4 <nbgl_getTextMaxLenInNbLines>
c0de3bca:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3bce:	7128      	strb	r0, [r5, #4]
c0de3bd0:	0a00      	lsrs	r0, r0, #8
c0de3bd2:	7168      	strb	r0, [r5, #5]
c0de3bd4:	2003      	movs	r0, #3
c0de3bd6:	9903      	ldr	r1, [sp, #12]
c0de3bd8:	2900      	cmp	r1, #0
c0de3bda:	bf08      	it	eq
c0de3bdc:	4606      	moveq	r6, r0
c0de3bde:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3be2:	76bc      	strb	r4, [r7, #26]
c0de3be4:	75bc      	strb	r4, [r7, #22]
c0de3be6:	fb06 f100 	mul.w	r1, r6, r0
c0de3bea:	fb06 a000 	mla	r0, r6, r0, sl
c0de3bee:	71b9      	strb	r1, [r7, #6]
c0de3bf0:	0a09      	lsrs	r1, r1, #8
c0de3bf2:	71f9      	strb	r1, [r7, #7]
c0de3bf4:	2102      	movs	r1, #2
c0de3bf6:	f100 0a02 	add.w	sl, r0, #2
c0de3bfa:	7679      	strb	r1, [r7, #25]
c0de3bfc:	2105      	movs	r1, #5
c0de3bfe:	f887 1020 	strb.w	r1, [r7, #32]
c0de3c02:	4641      	mov	r1, r8
c0de3c04:	f000 fb2e 	bl	c0de4264 <OUTLINED_FUNCTION_2>
c0de3c08:	604f      	str	r7, [r1, #4]
c0de3c0a:	e00f      	b.n	c0de3c2c <nbgl_layoutAddText+0x350>
c0de3c0c:	300c      	adds	r0, #12
c0de3c0e:	2108      	movs	r1, #8
c0de3c10:	7138      	strb	r0, [r7, #4]
c0de3c12:	0a00      	lsrs	r0, r0, #8
c0de3c14:	7178      	strb	r0, [r7, #5]
c0de3c16:	2001      	movs	r0, #1
c0de3c18:	2200      	movs	r2, #0
c0de3c1a:	7679      	strb	r1, [r7, #25]
c0de3c1c:	4641      	mov	r1, r8
c0de3c1e:	76ba      	strb	r2, [r7, #26]
c0de3c20:	f000 fb20 	bl	c0de4264 <OUTLINED_FUNCTION_2>
c0de3c24:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3c28:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3c2c:	6868      	ldr	r0, [r5, #4]
c0de3c2e:	78a9      	ldrb	r1, [r5, #2]
c0de3c30:	2205      	movs	r2, #5
c0de3c32:	f888 2016 	strb.w	r2, [r8, #22]
c0de3c36:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3c3a:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3c3e:	2000      	movs	r0, #0
c0de3c40:	3101      	adds	r1, #1
c0de3c42:	f888 a006 	strb.w	sl, [r8, #6]
c0de3c46:	f888 2007 	strb.w	r2, [r8, #7]
c0de3c4a:	f888 001f 	strb.w	r0, [r8, #31]
c0de3c4e:	70a9      	strb	r1, [r5, #2]
c0de3c50:	b008      	add	sp, #32
c0de3c52:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c56:	bf00      	nop
c0de3c58:	00000658 	.word	0x00000658

c0de3c5c <nbgl_layoutAddMenuList>:
c0de3c5c:	2800      	cmp	r0, #0
c0de3c5e:	d04f      	beq.n	c0de3d00 <nbgl_layoutAddMenuList+0xa4>
c0de3c60:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3c64:	460c      	mov	r4, r1
c0de3c66:	4605      	mov	r5, r0
c0de3c68:	2700      	movs	r7, #0
c0de3c6a:	f04f 0b05 	mov.w	fp, #5
c0de3c6e:	f04f 0803 	mov.w	r8, #3
c0de3c72:	f04f 0a00 	mov.w	sl, #0
c0de3c76:	7920      	ldrb	r0, [r4, #4]
c0de3c78:	4582      	cmp	sl, r0
c0de3c7a:	d23e      	bcs.n	c0de3cfa <nbgl_layoutAddMenuList+0x9e>
c0de3c7c:	7960      	ldrb	r0, [r4, #5]
c0de3c7e:	2803      	cmp	r0, #3
c0de3c80:	d302      	bcc.n	c0de3c88 <nbgl_layoutAddMenuList+0x2c>
c0de3c82:	1e81      	subs	r1, r0, #2
c0de3c84:	4551      	cmp	r1, sl
c0de3c86:	dc35      	bgt.n	c0de3cf4 <nbgl_layoutAddMenuList+0x98>
c0de3c88:	3002      	adds	r0, #2
c0de3c8a:	4550      	cmp	r0, sl
c0de3c8c:	d332      	bcc.n	c0de3cf4 <nbgl_layoutAddMenuList+0x98>
c0de3c8e:	7869      	ldrb	r1, [r5, #1]
c0de3c90:	f000 fafe 	bl	c0de4290 <OUTLINED_FUNCTION_4>
c0de3c94:	6821      	ldr	r1, [r4, #0]
c0de3c96:	4606      	mov	r6, r0
c0de3c98:	fa5f f08a 	uxtb.w	r0, sl
c0de3c9c:	4788      	blx	r1
c0de3c9e:	7961      	ldrb	r1, [r4, #5]
c0de3ca0:	220a      	movs	r2, #10
c0de3ca2:	458a      	cmp	sl, r1
c0de3ca4:	bf08      	it	eq
c0de3ca6:	2208      	moveq	r2, #8
c0de3ca8:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3cac:	71f7      	strb	r7, [r6, #7]
c0de3cae:	7177      	strb	r7, [r6, #5]
c0de3cb0:	f886 b020 	strb.w	fp, [r6, #32]
c0de3cb4:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3cb8:	f886 b016 	strb.w	fp, [r6, #22]
c0de3cbc:	f886 801f 	strb.w	r8, [r6, #31]
c0de3cc0:	4632      	mov	r2, r6
c0de3cc2:	0e03      	lsrs	r3, r0, #24
c0de3cc4:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3cc8:	70d3      	strb	r3, [r2, #3]
c0de3cca:	0c03      	lsrs	r3, r0, #16
c0de3ccc:	0a00      	lsrs	r0, r0, #8
c0de3cce:	7093      	strb	r3, [r2, #2]
c0de3cd0:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3cd4:	6868      	ldr	r0, [r5, #4]
c0de3cd6:	78aa      	ldrb	r2, [r5, #2]
c0de3cd8:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3cdc:	200c      	movs	r0, #12
c0de3cde:	71b0      	strb	r0, [r6, #6]
c0de3ce0:	2072      	movs	r0, #114	@ 0x72
c0de3ce2:	7130      	strb	r0, [r6, #4]
c0de3ce4:	ebaa 0001 	sub.w	r0, sl, r1
c0de3ce8:	0901      	lsrs	r1, r0, #4
c0de3cea:	0100      	lsls	r0, r0, #4
c0de3cec:	7670      	strb	r0, [r6, #25]
c0de3cee:	1c50      	adds	r0, r2, #1
c0de3cf0:	76b1      	strb	r1, [r6, #26]
c0de3cf2:	70a8      	strb	r0, [r5, #2]
c0de3cf4:	f10a 0a01 	add.w	sl, sl, #1
c0de3cf8:	e7bd      	b.n	c0de3c76 <nbgl_layoutAddMenuList+0x1a>
c0de3cfa:	2000      	movs	r0, #0
c0de3cfc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d00:	f000 bada 	b.w	c0de42b8 <OUTLINED_FUNCTION_8>

c0de3d04 <nbgl_layoutAddCenteredInfo>:
c0de3d04:	2800      	cmp	r0, #0
c0de3d06:	f000 80d9 	beq.w	c0de3ebc <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3d0a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d0e:	b086      	sub	sp, #24
c0de3d10:	460c      	mov	r4, r1
c0de3d12:	7841      	ldrb	r1, [r0, #1]
c0de3d14:	4682      	mov	sl, r0
c0de3d16:	2001      	movs	r0, #1
c0de3d18:	f003 f839 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3d1c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d20:	4680      	mov	r8, r0
c0de3d22:	2003      	movs	r0, #3
c0de3d24:	2703      	movs	r7, #3
c0de3d26:	f003 f837 	bl	c0de6d98 <nbgl_containerPoolGet>
c0de3d2a:	4641      	mov	r1, r8
c0de3d2c:	0e02      	lsrs	r2, r0, #24
c0de3d2e:	f04f 0b00 	mov.w	fp, #0
c0de3d32:	9404      	str	r4, [sp, #16]
c0de3d34:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3d38:	f888 b020 	strb.w	fp, [r8, #32]
c0de3d3c:	70ca      	strb	r2, [r1, #3]
c0de3d3e:	0c02      	lsrs	r2, r0, #16
c0de3d40:	0a00      	lsrs	r0, r0, #8
c0de3d42:	708a      	strb	r2, [r1, #2]
c0de3d44:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3d48:	68a0      	ldr	r0, [r4, #8]
c0de3d4a:	b3c0      	cbz	r0, c0de3dbe <nbgl_layoutAddCenteredInfo+0xba>
c0de3d4c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d50:	2002      	movs	r0, #2
c0de3d52:	f003 f81c 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3d56:	4606      	mov	r6, r0
c0de3d58:	77c7      	strb	r7, [r0, #31]
c0de3d5a:	68a0      	ldr	r0, [r4, #8]
c0de3d5c:	f003 f9fa 	bl	c0de7154 <pic>
c0de3d60:	4631      	mov	r1, r6
c0de3d62:	0e02      	lsrs	r2, r0, #24
c0de3d64:	f886 b013 	strb.w	fp, [r6, #19]
c0de3d68:	f886 b009 	strb.w	fp, [r6, #9]
c0de3d6c:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3d70:	70ca      	strb	r2, [r1, #3]
c0de3d72:	0c02      	lsrs	r2, r0, #16
c0de3d74:	708a      	strb	r2, [r1, #2]
c0de3d76:	0a01      	lsrs	r1, r0, #8
c0de3d78:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3d7c:	4631      	mov	r1, r6
c0de3d7e:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3d82:	f881 b003 	strb.w	fp, [r1, #3]
c0de3d86:	f881 b002 	strb.w	fp, [r1, #2]
c0de3d8a:	4641      	mov	r1, r8
c0de3d8c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3d90:	784f      	ldrb	r7, [r1, #1]
c0de3d92:	788c      	ldrb	r4, [r1, #2]
c0de3d94:	78cd      	ldrb	r5, [r1, #3]
c0de3d96:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3d9a:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3d9e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3da2:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3da6:	9c04      	ldr	r4, [sp, #16]
c0de3da8:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3dac:	2202      	movs	r2, #2
c0de3dae:	75b2      	strb	r2, [r6, #22]
c0de3db0:	1c5a      	adds	r2, r3, #1
c0de3db2:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3db6:	7881      	ldrb	r1, [r0, #2]
c0de3db8:	78c0      	ldrb	r0, [r0, #3]
c0de3dba:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3dbe:	6820      	ldr	r0, [r4, #0]
c0de3dc0:	2800      	cmp	r0, #0
c0de3dc2:	f000 80a2 	beq.w	c0de3f0a <nbgl_layoutAddCenteredInfo+0x206>
c0de3dc6:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3dca:	f000 fa61 	bl	c0de4290 <OUTLINED_FUNCTION_4>
c0de3dce:	4607      	mov	r7, r0
c0de3dd0:	2003      	movs	r0, #3
c0de3dd2:	77f8      	strb	r0, [r7, #31]
c0de3dd4:	6820      	ldr	r0, [r4, #0]
c0de3dd6:	f003 f9bd 	bl	c0de7154 <pic>
c0de3dda:	4601      	mov	r1, r0
c0de3ddc:	2072      	movs	r0, #114	@ 0x72
c0de3dde:	2500      	movs	r5, #0
c0de3de0:	7138      	strb	r0, [r7, #4]
c0de3de2:	2005      	movs	r0, #5
c0de3de4:	0e0a      	lsrs	r2, r1, #24
c0de3de6:	717d      	strb	r5, [r7, #5]
c0de3de8:	f887 0020 	strb.w	r0, [r7, #32]
c0de3dec:	2001      	movs	r0, #1
c0de3dee:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3df2:	4638      	mov	r0, r7
c0de3df4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3df8:	70c2      	strb	r2, [r0, #3]
c0de3dfa:	0c0a      	lsrs	r2, r1, #16
c0de3dfc:	7082      	strb	r2, [r0, #2]
c0de3dfe:	0a08      	lsrs	r0, r1, #8
c0de3e00:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3e04:	2008      	movs	r0, #8
c0de3e06:	7b62      	ldrb	r2, [r4, #13]
c0de3e08:	2a00      	cmp	r2, #0
c0de3e0a:	bf08      	it	eq
c0de3e0c:	200a      	moveq	r0, #10
c0de3e0e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e12:	2272      	movs	r2, #114	@ 0x72
c0de3e14:	2301      	movs	r3, #1
c0de3e16:	f002 ffce 	bl	c0de6db6 <nbgl_getTextNbLinesInWidth>
c0de3e1a:	4606      	mov	r6, r0
c0de3e1c:	2805      	cmp	r0, #5
c0de3e1e:	d31e      	bcc.n	c0de3e5e <nbgl_layoutAddCenteredInfo+0x15a>
c0de3e20:	463d      	mov	r5, r7
c0de3e22:	2004      	movs	r0, #4
c0de3e24:	2101      	movs	r1, #1
c0de3e26:	f10d 0416 	add.w	r4, sp, #22
c0de3e2a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3e2e:	786a      	ldrb	r2, [r5, #1]
c0de3e30:	78ab      	ldrb	r3, [r5, #2]
c0de3e32:	78ee      	ldrb	r6, [r5, #3]
c0de3e34:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3e38:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3e3c:	9101      	str	r1, [sp, #4]
c0de3e3e:	9400      	str	r4, [sp, #0]
c0de3e40:	9c04      	ldr	r4, [sp, #16]
c0de3e42:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3e46:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3e4a:	2304      	movs	r3, #4
c0de3e4c:	f000 fa23 	bl	c0de4296 <OUTLINED_FUNCTION_5>
c0de3e50:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3e54:	2604      	movs	r6, #4
c0de3e56:	7128      	strb	r0, [r5, #4]
c0de3e58:	0a00      	lsrs	r0, r0, #8
c0de3e5a:	7168      	strb	r0, [r5, #5]
c0de3e5c:	2500      	movs	r5, #0
c0de3e5e:	f000 fa27 	bl	c0de42b0 <OUTLINED_FUNCTION_7>
c0de3e62:	79c0      	ldrb	r0, [r0, #7]
c0de3e64:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3e68:	4370      	muls	r0, r6
c0de3e6a:	0a01      	lsrs	r1, r0, #8
c0de3e6c:	71b8      	strb	r0, [r7, #6]
c0de3e6e:	71f9      	strb	r1, [r7, #7]
c0de3e70:	68a1      	ldr	r1, [r4, #8]
c0de3e72:	b329      	cbz	r1, c0de3ec0 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3e74:	4641      	mov	r1, r8
c0de3e76:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3e7a:	784c      	ldrb	r4, [r1, #1]
c0de3e7c:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3e80:	788d      	ldrb	r5, [r1, #2]
c0de3e82:	78c9      	ldrb	r1, [r1, #3]
c0de3e84:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3e88:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3e8c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3e90:	463a      	mov	r2, r7
c0de3e92:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3e96:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3e9a:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3e9e:	0e0b      	lsrs	r3, r1, #24
c0de3ea0:	70d3      	strb	r3, [r2, #3]
c0de3ea2:	0c0b      	lsrs	r3, r1, #16
c0de3ea4:	0a09      	lsrs	r1, r1, #8
c0de3ea6:	7051      	strb	r1, [r2, #1]
c0de3ea8:	2100      	movs	r1, #0
c0de3eaa:	7093      	strb	r3, [r2, #2]
c0de3eac:	7211      	strb	r1, [r2, #8]
c0de3eae:	2e03      	cmp	r6, #3
c0de3eb0:	bf38      	it	cc
c0de3eb2:	2101      	movcc	r1, #1
c0de3eb4:	0089      	lsls	r1, r1, #2
c0de3eb6:	71d1      	strb	r1, [r2, #7]
c0de3eb8:	2108      	movs	r1, #8
c0de3eba:	e00a      	b.n	c0de3ed2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3ebc:	f000 b9fc 	b.w	c0de42b8 <OUTLINED_FUNCTION_8>
c0de3ec0:	6861      	ldr	r1, [r4, #4]
c0de3ec2:	b119      	cbz	r1, c0de3ecc <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3ec4:	f000 f9ec 	bl	c0de42a0 <OUTLINED_FUNCTION_6>
c0de3ec8:	2102      	movs	r1, #2
c0de3eca:	e002      	b.n	c0de3ed2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3ecc:	f000 f9e8 	bl	c0de42a0 <OUTLINED_FUNCTION_6>
c0de3ed0:	2105      	movs	r1, #5
c0de3ed2:	7111      	strb	r1, [r2, #4]
c0de3ed4:	4641      	mov	r1, r8
c0de3ed6:	4458      	add	r0, fp
c0de3ed8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3edc:	784c      	ldrb	r4, [r1, #1]
c0de3ede:	788d      	ldrb	r5, [r1, #2]
c0de3ee0:	78ce      	ldrb	r6, [r1, #3]
c0de3ee2:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3ee6:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3eea:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3eee:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3ef2:	9c04      	ldr	r4, [sp, #16]
c0de3ef4:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3ef8:	1c5a      	adds	r2, r3, #1
c0de3efa:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3efe:	7e79      	ldrb	r1, [r7, #25]
c0de3f00:	7eba      	ldrb	r2, [r7, #26]
c0de3f02:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3f06:	eb00 0b01 	add.w	fp, r0, r1
c0de3f0a:	6860      	ldr	r0, [r4, #4]
c0de3f0c:	2800      	cmp	r0, #0
c0de3f0e:	d074      	beq.n	c0de3ffa <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3f10:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3f14:	2004      	movs	r0, #4
c0de3f16:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3f1a:	f002 ff38 	bl	c0de6d8e <nbgl_objPoolGet>
c0de3f1e:	2603      	movs	r6, #3
c0de3f20:	4607      	mov	r7, r0
c0de3f22:	77c6      	strb	r6, [r0, #31]
c0de3f24:	6860      	ldr	r0, [r4, #4]
c0de3f26:	f003 f915 	bl	c0de7154 <pic>
c0de3f2a:	4601      	mov	r1, r0
c0de3f2c:	2000      	movs	r0, #0
c0de3f2e:	2301      	movs	r3, #1
c0de3f30:	7178      	strb	r0, [r7, #5]
c0de3f32:	2072      	movs	r0, #114	@ 0x72
c0de3f34:	0e0a      	lsrs	r2, r1, #24
c0de3f36:	7138      	strb	r0, [r7, #4]
c0de3f38:	200a      	movs	r0, #10
c0de3f3a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3f3e:	2005      	movs	r0, #5
c0de3f40:	f887 0020 	strb.w	r0, [r7, #32]
c0de3f44:	2001      	movs	r0, #1
c0de3f46:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3f4a:	f000 f97e 	bl	c0de424a <OUTLINED_FUNCTION_1>
c0de3f4e:	4682      	mov	sl, r0
c0de3f50:	2804      	cmp	r0, #4
c0de3f52:	d31c      	bcc.n	c0de3f8e <nbgl_layoutAddCenteredInfo+0x28a>
c0de3f54:	463d      	mov	r5, r7
c0de3f56:	f04f 0c01 	mov.w	ip, #1
c0de3f5a:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de3f5e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3f62:	786a      	ldrb	r2, [r5, #1]
c0de3f64:	78ab      	ldrb	r3, [r5, #2]
c0de3f66:	78ee      	ldrb	r6, [r5, #3]
c0de3f68:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3f6c:	ac05      	add	r4, sp, #20
c0de3f6e:	e9cd 4c00 	strd	r4, ip, [sp]
c0de3f72:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3f76:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3f7a:	2303      	movs	r3, #3
c0de3f7c:	f000 f98b 	bl	c0de4296 <OUTLINED_FUNCTION_5>
c0de3f80:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de3f84:	f04f 0a03 	mov.w	sl, #3
c0de3f88:	7128      	strb	r0, [r5, #4]
c0de3f8a:	0a00      	lsrs	r0, r0, #8
c0de3f8c:	7168      	strb	r0, [r5, #5]
c0de3f8e:	f000 f98f 	bl	c0de42b0 <OUTLINED_FUNCTION_7>
c0de3f92:	4641      	mov	r1, r8
c0de3f94:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de3f98:	784c      	ldrb	r4, [r1, #1]
c0de3f9a:	788d      	ldrb	r5, [r1, #2]
c0de3f9c:	78ce      	ldrb	r6, [r1, #3]
c0de3f9e:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de3fa2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de3fa6:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3faa:	463d      	mov	r5, r7
c0de3fac:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de3fb0:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de3fb4:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de3fb8:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de3fbc:	0e26      	lsrs	r6, r4, #24
c0de3fbe:	70ee      	strb	r6, [r5, #3]
c0de3fc0:	0c26      	lsrs	r6, r4, #16
c0de3fc2:	0a24      	lsrs	r4, r4, #8
c0de3fc4:	74fc      	strb	r4, [r7, #19]
c0de3fc6:	70ae      	strb	r6, [r5, #2]
c0de3fc8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de3fcc:	2302      	movs	r3, #2
c0de3fce:	2400      	movs	r4, #0
c0de3fd0:	3201      	adds	r2, #1
c0de3fd2:	767b      	strb	r3, [r7, #25]
c0de3fd4:	2308      	movs	r3, #8
c0de3fd6:	76bc      	strb	r4, [r7, #26]
c0de3fd8:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de3fdc:	79c0      	ldrb	r0, [r0, #7]
c0de3fde:	75bb      	strb	r3, [r7, #22]
c0de3fe0:	fb0a f300 	mul.w	r3, sl, r0
c0de3fe4:	fb0a b000 	mla	r0, sl, r0, fp
c0de3fe8:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de3fec:	71bb      	strb	r3, [r7, #6]
c0de3fee:	0a1b      	lsrs	r3, r3, #8
c0de3ff0:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3ff4:	f100 0b02 	add.w	fp, r0, #2
c0de3ff8:	71fb      	strb	r3, [r7, #7]
c0de3ffa:	7b20      	ldrb	r0, [r4, #12]
c0de3ffc:	2102      	movs	r1, #2
c0de3ffe:	2800      	cmp	r0, #0
c0de4000:	bf08      	it	eq
c0de4002:	2105      	moveq	r1, #5
c0de4004:	f888 1016 	strb.w	r1, [r8, #22]
c0de4008:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de400c:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4010:	2272      	movs	r2, #114	@ 0x72
c0de4012:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4016:	2000      	movs	r0, #0
c0de4018:	f888 2004 	strb.w	r2, [r8, #4]
c0de401c:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de4020:	3101      	adds	r1, #1
c0de4022:	f888 b006 	strb.w	fp, [r8, #6]
c0de4026:	f888 0019 	strb.w	r0, [r8, #25]
c0de402a:	f888 001a 	strb.w	r0, [r8, #26]
c0de402e:	f888 0005 	strb.w	r0, [r8, #5]
c0de4032:	f888 001f 	strb.w	r0, [r8, #31]
c0de4036:	f888 2007 	strb.w	r2, [r8, #7]
c0de403a:	f88a 1002 	strb.w	r1, [sl, #2]
c0de403e:	b006      	add	sp, #24
c0de4040:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4044 <nbgl_layoutAddSwitch>:
c0de4044:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4048:	2800      	cmp	r0, #0
c0de404a:	d07d      	beq.n	c0de4148 <nbgl_layoutAddSwitch+0x104>
c0de404c:	460d      	mov	r5, r1
c0de404e:	7841      	ldrb	r1, [r0, #1]
c0de4050:	4604      	mov	r4, r0
c0de4052:	f000 f91d 	bl	c0de4290 <OUTLINED_FUNCTION_4>
c0de4056:	f04f 0803 	mov.w	r8, #3
c0de405a:	4606      	mov	r6, r0
c0de405c:	f880 801f 	strb.w	r8, [r0, #31]
c0de4060:	6828      	ldr	r0, [r5, #0]
c0de4062:	f003 f877 	bl	c0de7154 <pic>
c0de4066:	4601      	mov	r1, r0
c0de4068:	2072      	movs	r0, #114	@ 0x72
c0de406a:	2700      	movs	r7, #0
c0de406c:	2301      	movs	r3, #1
c0de406e:	7130      	strb	r0, [r6, #4]
c0de4070:	2008      	movs	r0, #8
c0de4072:	0e0a      	lsrs	r2, r1, #24
c0de4074:	7177      	strb	r7, [r6, #5]
c0de4076:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de407a:	2005      	movs	r0, #5
c0de407c:	f886 0020 	strb.w	r0, [r6, #32]
c0de4080:	2001      	movs	r0, #1
c0de4082:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4086:	4630      	mov	r0, r6
c0de4088:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de408c:	70c2      	strb	r2, [r0, #3]
c0de408e:	0c0a      	lsrs	r2, r1, #16
c0de4090:	7082      	strb	r2, [r0, #2]
c0de4092:	0a08      	lsrs	r0, r1, #8
c0de4094:	2272      	movs	r2, #114	@ 0x72
c0de4096:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de409a:	2008      	movs	r0, #8
c0de409c:	f002 fe8b 	bl	c0de6db6 <nbgl_getTextNbLinesInWidth>
c0de40a0:	2801      	cmp	r0, #1
c0de40a2:	d851      	bhi.n	c0de4148 <nbgl_layoutAddSwitch+0x104>
c0de40a4:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de40a8:	f002 fe80 	bl	c0de6dac <nbgl_getFontLineHeight>
c0de40ac:	6861      	ldr	r1, [r4, #4]
c0de40ae:	78a2      	ldrb	r2, [r4, #2]
c0de40b0:	76b7      	strb	r7, [r6, #26]
c0de40b2:	71f7      	strb	r7, [r6, #7]
c0de40b4:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de40b8:	71b0      	strb	r0, [r6, #6]
c0de40ba:	2002      	movs	r0, #2
c0de40bc:	f886 8019 	strb.w	r8, [r6, #25]
c0de40c0:	75b0      	strb	r0, [r6, #22]
c0de40c2:	1c50      	adds	r0, r2, #1
c0de40c4:	70a0      	strb	r0, [r4, #2]
c0de40c6:	6868      	ldr	r0, [r5, #4]
c0de40c8:	2800      	cmp	r0, #0
c0de40ca:	d04c      	beq.n	c0de4166 <nbgl_layoutAddSwitch+0x122>
c0de40cc:	7861      	ldrb	r1, [r4, #1]
c0de40ce:	f000 f8df 	bl	c0de4290 <OUTLINED_FUNCTION_4>
c0de40d2:	4606      	mov	r6, r0
c0de40d4:	2003      	movs	r0, #3
c0de40d6:	77f0      	strb	r0, [r6, #31]
c0de40d8:	6868      	ldr	r0, [r5, #4]
c0de40da:	f003 f83b 	bl	c0de7154 <pic>
c0de40de:	2172      	movs	r1, #114	@ 0x72
c0de40e0:	4637      	mov	r7, r6
c0de40e2:	f04f 0800 	mov.w	r8, #0
c0de40e6:	f04f 0a05 	mov.w	sl, #5
c0de40ea:	7131      	strb	r1, [r6, #4]
c0de40ec:	210a      	movs	r1, #10
c0de40ee:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de40f2:	f886 8005 	strb.w	r8, [r6, #5]
c0de40f6:	f886 a020 	strb.w	sl, [r6, #32]
c0de40fa:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de40fe:	0e01      	lsrs	r1, r0, #24
c0de4100:	70f9      	strb	r1, [r7, #3]
c0de4102:	0c01      	lsrs	r1, r0, #16
c0de4104:	0a00      	lsrs	r0, r0, #8
c0de4106:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de410a:	200a      	movs	r0, #10
c0de410c:	70b9      	strb	r1, [r7, #2]
c0de410e:	f002 fe4d 	bl	c0de6dac <nbgl_getFontLineHeight>
c0de4112:	09c1      	lsrs	r1, r0, #7
c0de4114:	783a      	ldrb	r2, [r7, #0]
c0de4116:	78bb      	ldrb	r3, [r7, #2]
c0de4118:	78ff      	ldrb	r7, [r7, #3]
c0de411a:	0040      	lsls	r0, r0, #1
c0de411c:	f04f 0b01 	mov.w	fp, #1
c0de4120:	71f1      	strb	r1, [r6, #7]
c0de4122:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de4126:	71b0      	strb	r0, [r6, #6]
c0de4128:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de412c:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de4130:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4134:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de4138:	2301      	movs	r3, #1
c0de413a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de413e:	2272      	movs	r2, #114	@ 0x72
c0de4140:	f002 fe39 	bl	c0de6db6 <nbgl_getTextNbLinesInWidth>
c0de4144:	2802      	cmp	r0, #2
c0de4146:	d902      	bls.n	c0de414e <nbgl_layoutAddSwitch+0x10a>
c0de4148:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de414c:	e05d      	b.n	c0de420a <nbgl_layoutAddSwitch+0x1c6>
c0de414e:	6860      	ldr	r0, [r4, #4]
c0de4150:	78a1      	ldrb	r1, [r4, #2]
c0de4152:	f886 801a 	strb.w	r8, [r6, #26]
c0de4156:	f886 a016 	strb.w	sl, [r6, #22]
c0de415a:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de415e:	1c48      	adds	r0, r1, #1
c0de4160:	f886 b019 	strb.w	fp, [r6, #25]
c0de4164:	70a0      	strb	r0, [r4, #2]
c0de4166:	7861      	ldrb	r1, [r4, #1]
c0de4168:	2005      	movs	r0, #5
c0de416a:	f002 fe10 	bl	c0de6d8e <nbgl_objPoolGet>
c0de416e:	2600      	movs	r6, #0
c0de4170:	4607      	mov	r7, r0
c0de4172:	f04f 0a03 	mov.w	sl, #3
c0de4176:	f04f 0808 	mov.w	r8, #8
c0de417a:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de417e:	2001      	movs	r0, #1
c0de4180:	f887 a020 	strb.w	sl, [r7, #32]
c0de4184:	f887 a01f 	strb.w	sl, [r7, #31]
c0de4188:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de418c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4190:	7a28      	ldrb	r0, [r5, #8]
c0de4192:	4a1f      	ldr	r2, [pc, #124]	@ (c0de4210 <nbgl_layoutAddSwitch+0x1cc>)
c0de4194:	491f      	ldr	r1, [pc, #124]	@ (c0de4214 <nbgl_layoutAddSwitch+0x1d0>)
c0de4196:	2801      	cmp	r0, #1
c0de4198:	447a      	add	r2, pc
c0de419a:	4479      	add	r1, pc
c0de419c:	bf08      	it	eq
c0de419e:	4611      	moveq	r1, r2
c0de41a0:	463a      	mov	r2, r7
c0de41a2:	0e0b      	lsrs	r3, r1, #24
c0de41a4:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de41a8:	70d3      	strb	r3, [r2, #3]
c0de41aa:	0c0b      	lsrs	r3, r1, #16
c0de41ac:	7093      	strb	r3, [r2, #2]
c0de41ae:	0a0a      	lsrs	r2, r1, #8
c0de41b0:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de41b4:	2801      	cmp	r0, #1
c0de41b6:	4638      	mov	r0, r7
c0de41b8:	4a17      	ldr	r2, [pc, #92]	@ (c0de4218 <nbgl_layoutAddSwitch+0x1d4>)
c0de41ba:	4d18      	ldr	r5, [pc, #96]	@ (c0de421c <nbgl_layoutAddSwitch+0x1d8>)
c0de41bc:	447a      	add	r2, pc
c0de41be:	447d      	add	r5, pc
c0de41c0:	bf18      	it	ne
c0de41c2:	462a      	movne	r2, r5
c0de41c4:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de41c8:	0e13      	lsrs	r3, r2, #24
c0de41ca:	70c3      	strb	r3, [r0, #3]
c0de41cc:	0c13      	lsrs	r3, r2, #16
c0de41ce:	7083      	strb	r3, [r0, #2]
c0de41d0:	0a10      	lsrs	r0, r2, #8
c0de41d2:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de41d6:	2008      	movs	r0, #8
c0de41d8:	f002 fdf7 	bl	c0de6dca <nbgl_getTextWidth>
c0de41dc:	6861      	ldr	r1, [r4, #4]
c0de41de:	78a2      	ldrb	r2, [r4, #2]
c0de41e0:	786b      	ldrb	r3, [r5, #1]
c0de41e2:	76be      	strb	r6, [r7, #26]
c0de41e4:	71fe      	strb	r6, [r7, #7]
c0de41e6:	f887 8016 	strb.w	r8, [r7, #22]
c0de41ea:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de41ee:	210c      	movs	r1, #12
c0de41f0:	f887 a019 	strb.w	sl, [r7, #25]
c0de41f4:	71b9      	strb	r1, [r7, #6]
c0de41f6:	7829      	ldrb	r1, [r5, #0]
c0de41f8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de41fc:	4408      	add	r0, r1
c0de41fe:	1c51      	adds	r1, r2, #1
c0de4200:	300a      	adds	r0, #10
c0de4202:	7138      	strb	r0, [r7, #4]
c0de4204:	0a00      	lsrs	r0, r0, #8
c0de4206:	70a1      	strb	r1, [r4, #2]
c0de4208:	7178      	strb	r0, [r7, #5]
c0de420a:	4630      	mov	r0, r6
c0de420c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4210:	000039d7 	.word	0x000039d7
c0de4214:	00003aa4 	.word	0x00003aa4
c0de4218:	00003749 	.word	0x00003749
c0de421c:	00003731 	.word	0x00003731

c0de4220 <nbgl_layoutDraw>:
c0de4220:	b120      	cbz	r0, c0de422c <nbgl_layoutDraw+0xc>
c0de4222:	b580      	push	{r7, lr}
c0de4224:	f002 fda4 	bl	c0de6d70 <nbgl_screenRedraw>
c0de4228:	2000      	movs	r0, #0
c0de422a:	bd80      	pop	{r7, pc}
c0de422c:	f000 b844 	b.w	c0de42b8 <OUTLINED_FUNCTION_8>

c0de4230 <nbgl_layoutRelease>:
c0de4230:	b148      	cbz	r0, c0de4246 <nbgl_layoutRelease+0x16>
c0de4232:	b510      	push	{r4, lr}
c0de4234:	4604      	mov	r4, r0
c0de4236:	7800      	ldrb	r0, [r0, #0]
c0de4238:	b110      	cbz	r0, c0de4240 <nbgl_layoutRelease+0x10>
c0de423a:	7860      	ldrb	r0, [r4, #1]
c0de423c:	f002 fd9d 	bl	c0de6d7a <nbgl_screenPop>
c0de4240:	2000      	movs	r0, #0
c0de4242:	70a0      	strb	r0, [r4, #2]
c0de4244:	bd10      	pop	{r4, pc}
c0de4246:	f000 b837 	b.w	c0de42b8 <OUTLINED_FUNCTION_8>

c0de424a <OUTLINED_FUNCTION_1>:
c0de424a:	4638      	mov	r0, r7
c0de424c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4250:	70c2      	strb	r2, [r0, #3]
c0de4252:	0c0a      	lsrs	r2, r1, #16
c0de4254:	7082      	strb	r2, [r0, #2]
c0de4256:	0a08      	lsrs	r0, r1, #8
c0de4258:	2272      	movs	r2, #114	@ 0x72
c0de425a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de425e:	200a      	movs	r0, #10
c0de4260:	f002 bda9 	b.w	c0de6db6 <nbgl_getTextNbLinesInWidth>

c0de4264 <OUTLINED_FUNCTION_2>:
c0de4264:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4268:	784b      	ldrb	r3, [r1, #1]
c0de426a:	788d      	ldrb	r5, [r1, #2]
c0de426c:	78c9      	ldrb	r1, [r1, #3]
c0de426e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4272:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4276:	9d05      	ldr	r5, [sp, #20]
c0de4278:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de427c:	4770      	bx	lr

c0de427e <OUTLINED_FUNCTION_3>:
c0de427e:	70c2      	strb	r2, [r0, #3]
c0de4280:	0c0a      	lsrs	r2, r1, #16
c0de4282:	7082      	strb	r2, [r0, #2]
c0de4284:	0a08      	lsrs	r0, r1, #8
c0de4286:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de428a:	2008      	movs	r0, #8
c0de428c:	f002 bd9d 	b.w	c0de6dca <nbgl_getTextWidth>

c0de4290 <OUTLINED_FUNCTION_4>:
c0de4290:	2004      	movs	r0, #4
c0de4292:	f002 bd7c 	b.w	c0de6d8e <nbgl_objPoolGet>

c0de4296 <OUTLINED_FUNCTION_5>:
c0de4296:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de429a:	2272      	movs	r2, #114	@ 0x72
c0de429c:	f002 bd9a 	b.w	c0de6dd4 <nbgl_getTextMaxLenInNbLines>

c0de42a0 <OUTLINED_FUNCTION_6>:
c0de42a0:	2100      	movs	r1, #0
c0de42a2:	463a      	mov	r2, r7
c0de42a4:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de42a8:	70d1      	strb	r1, [r2, #3]
c0de42aa:	7091      	strb	r1, [r2, #2]
c0de42ac:	7051      	strb	r1, [r2, #1]
c0de42ae:	4770      	bx	lr

c0de42b0 <OUTLINED_FUNCTION_7>:
c0de42b0:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de42b4:	f002 bd75 	b.w	c0de6da2 <nbgl_getFont>

c0de42b8 <OUTLINED_FUNCTION_8>:
c0de42b8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de42bc:	4770      	bx	lr

c0de42be <OUTLINED_FUNCTION_9>:
c0de42be:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de42c2:	2003      	movs	r0, #3
c0de42c4:	f887 0020 	strb.w	r0, [r7, #32]
c0de42c8:	77f8      	strb	r0, [r7, #31]
c0de42ca:	4770      	bx	lr

c0de42cc <nbgl_stepDrawText>:
c0de42cc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de42d0:	460e      	mov	r6, r1
c0de42d2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de42d4:	4605      	mov	r5, r0
c0de42d6:	2000      	movs	r0, #0
c0de42d8:	469a      	mov	sl, r3
c0de42da:	4617      	mov	r7, r2
c0de42dc:	f000 f830 	bl	c0de4340 <getFreeContext>
c0de42e0:	b348      	cbz	r0, c0de4336 <nbgl_stepDrawText+0x6a>
c0de42e2:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de42e6:	4604      	mov	r4, r0
c0de42e8:	6146      	str	r6, [r0, #20]
c0de42ea:	b10f      	cbz	r7, c0de42f0 <nbgl_stepDrawText+0x24>
c0de42ec:	f000 fae1 	bl	c0de48b2 <OUTLINED_FUNCTION_1>
c0de42f0:	200a      	movs	r0, #10
c0de42f2:	f1b8 0f00 	cmp.w	r8, #0
c0de42f6:	bf19      	ittee	ne
c0de42f8:	4641      	movne	r1, r8
c0de42fa:	2203      	movne	r2, #3
c0de42fc:	4651      	moveq	r1, sl
c0de42fe:	2204      	moveq	r2, #4
c0de4300:	2372      	movs	r3, #114	@ 0x72
c0de4302:	f002 fd5d 	bl	c0de6dc0 <nbgl_getTextNbPagesInWidth>
c0de4306:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4308:	7020      	strb	r0, [r4, #0]
c0de430a:	072a      	lsls	r2, r5, #28
c0de430c:	bf46      	itte	mi
c0de430e:	3801      	submi	r0, #1
c0de4310:	7060      	strbmi	r0, [r4, #1]
c0de4312:	7860      	ldrbpl	r0, [r4, #1]
c0de4314:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4318:	f8c4 a004 	str.w	sl, [r4, #4]
c0de431c:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4320:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4324:	7461      	strb	r1, [r4, #17]
c0de4326:	f005 0103 	and.w	r1, r5, #3
c0de432a:	7421      	strb	r1, [r4, #16]
c0de432c:	b2c1      	uxtb	r1, r0
c0de432e:	4620      	mov	r0, r4
c0de4330:	f000 f82c 	bl	c0de438c <displayTextPage>
c0de4334:	e000      	b.n	c0de4338 <nbgl_stepDrawText+0x6c>
c0de4336:	2400      	movs	r4, #0
c0de4338:	4620      	mov	r0, r4
c0de433a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4340 <getFreeContext>:
c0de4340:	b570      	push	{r4, r5, r6, lr}
c0de4342:	4604      	mov	r4, r0
c0de4344:	4810      	ldr	r0, [pc, #64]	@ (c0de4388 <getFreeContext+0x48>)
c0de4346:	460d      	mov	r5, r1
c0de4348:	b151      	cbz	r1, c0de4360 <getFreeContext+0x20>
c0de434a:	2100      	movs	r1, #0
c0de434c:	2990      	cmp	r1, #144	@ 0x90
c0de434e:	d00a      	beq.n	c0de4366 <getFreeContext+0x26>
c0de4350:	eb09 0200 	add.w	r2, r9, r0
c0de4354:	440a      	add	r2, r1
c0de4356:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de435a:	b132      	cbz	r2, c0de436a <getFreeContext+0x2a>
c0de435c:	3148      	adds	r1, #72	@ 0x48
c0de435e:	e7f5      	b.n	c0de434c <getFreeContext+0xc>
c0de4360:	eb09 0600 	add.w	r6, r9, r0
c0de4364:	e005      	b.n	c0de4372 <getFreeContext+0x32>
c0de4366:	2600      	movs	r6, #0
c0de4368:	e00b      	b.n	c0de4382 <getFreeContext+0x42>
c0de436a:	4448      	add	r0, r9
c0de436c:	4408      	add	r0, r1
c0de436e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4372:	4630      	mov	r0, r6
c0de4374:	2148      	movs	r1, #72	@ 0x48
c0de4376:	f003 f9f9 	bl	c0de776c <__aeabi_memclr>
c0de437a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de437e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4382:	4630      	mov	r0, r6
c0de4384:	bd70      	pop	{r4, r5, r6, pc}
c0de4386:	bf00      	nop
c0de4388:	0000066c 	.word	0x0000066c

c0de438c <displayTextPage>:
c0de438c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4390:	b091      	sub	sp, #68	@ 0x44
c0de4392:	4604      	mov	r4, r0
c0de4394:	7840      	ldrb	r0, [r0, #1]
c0de4396:	460e      	mov	r6, r1
c0de4398:	4288      	cmp	r0, r1
c0de439a:	d21c      	bcs.n	c0de43d6 <displayTextPage+0x4a>
c0de439c:	68a5      	ldr	r5, [r4, #8]
c0de439e:	7820      	ldrb	r0, [r4, #0]
c0de43a0:	7066      	strb	r6, [r4, #1]
c0de43a2:	3801      	subs	r0, #1
c0de43a4:	42b0      	cmp	r0, r6
c0de43a6:	dd31      	ble.n	c0de440c <displayTextPage+0x80>
c0de43a8:	68e0      	ldr	r0, [r4, #12]
c0de43aa:	2101      	movs	r1, #1
c0de43ac:	2303      	movs	r3, #3
c0de43ae:	aa08      	add	r2, sp, #32
c0de43b0:	e9cd 2100 	strd	r2, r1, [sp]
c0de43b4:	4629      	mov	r1, r5
c0de43b6:	2800      	cmp	r0, #0
c0de43b8:	bf08      	it	eq
c0de43ba:	2304      	moveq	r3, #4
c0de43bc:	200a      	movs	r0, #10
c0de43be:	2272      	movs	r2, #114	@ 0x72
c0de43c0:	f002 fd08 	bl	c0de6dd4 <nbgl_getTextMaxLenInNbLines>
c0de43c4:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de43c8:	1868      	adds	r0, r5, r1
c0de43ca:	60a0      	str	r0, [r4, #8]
c0de43cc:	5c69      	ldrb	r1, [r5, r1]
c0de43ce:	290a      	cmp	r1, #10
c0de43d0:	d11e      	bne.n	c0de4410 <displayTextPage+0x84>
c0de43d2:	3001      	adds	r0, #1
c0de43d4:	e01b      	b.n	c0de440e <displayTextPage+0x82>
c0de43d6:	68e5      	ldr	r5, [r4, #12]
c0de43d8:	2d00      	cmp	r5, #0
c0de43da:	d074      	beq.n	c0de44c6 <displayTextPage+0x13a>
c0de43dc:	2700      	movs	r7, #0
c0de43de:	f04f 0801 	mov.w	r8, #1
c0de43e2:	f10d 0a20 	add.w	sl, sp, #32
c0de43e6:	42be      	cmp	r6, r7
c0de43e8:	d0d9      	beq.n	c0de439e <displayTextPage+0x12>
c0de43ea:	7820      	ldrb	r0, [r4, #0]
c0de43ec:	3801      	subs	r0, #1
c0de43ee:	42b8      	cmp	r0, r7
c0de43f0:	dd0a      	ble.n	c0de4408 <displayTextPage+0x7c>
c0de43f2:	200a      	movs	r0, #10
c0de43f4:	4629      	mov	r1, r5
c0de43f6:	2272      	movs	r2, #114	@ 0x72
c0de43f8:	2303      	movs	r3, #3
c0de43fa:	e9cd a800 	strd	sl, r8, [sp]
c0de43fe:	f002 fce9 	bl	c0de6dd4 <nbgl_getTextMaxLenInNbLines>
c0de4402:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4406:	4405      	add	r5, r0
c0de4408:	3701      	adds	r7, #1
c0de440a:	e7ec      	b.n	c0de43e6 <displayTextPage+0x5a>
c0de440c:	2000      	movs	r0, #0
c0de440e:	60a0      	str	r0, [r4, #8]
c0de4410:	484f      	ldr	r0, [pc, #316]	@ (c0de4550 <displayTextPage+0x1c4>)
c0de4412:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4416:	4478      	add	r0, pc
c0de4418:	9004      	str	r0, [sp, #16]
c0de441a:	2000      	movs	r0, #0
c0de441c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4420:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4424:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4428:	ca07      	ldmia	r2, {r0, r1, r2}
c0de442a:	ab05      	add	r3, sp, #20
c0de442c:	c307      	stmia	r3!, {r0, r1, r2}
c0de442e:	a803      	add	r0, sp, #12
c0de4430:	f7ff f992 	bl	c0de3758 <nbgl_layoutGet>
c0de4434:	7827      	ldrb	r7, [r4, #0]
c0de4436:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de443a:	4606      	mov	r6, r0
c0de443c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de443e:	7c20      	ldrb	r0, [r4, #16]
c0de4440:	4639      	mov	r1, r7
c0de4442:	4652      	mov	r2, sl
c0de4444:	f000 f8fc 	bl	c0de4640 <getNavigationInfo>
c0de4448:	4680      	mov	r8, r0
c0de444a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de444e:	68e0      	ldr	r0, [r4, #12]
c0de4450:	b188      	cbz	r0, c0de4476 <displayTextPage+0xea>
c0de4452:	2f01      	cmp	r7, #1
c0de4454:	d115      	bne.n	c0de4482 <displayTextPage+0xf6>
c0de4456:	6861      	ldr	r1, [r4, #4]
c0de4458:	2008      	movs	r0, #8
c0de445a:	2272      	movs	r2, #114	@ 0x72
c0de445c:	2300      	movs	r3, #0
c0de445e:	2600      	movs	r6, #0
c0de4460:	f002 fca9 	bl	c0de6db6 <nbgl_getTextNbLinesInWidth>
c0de4464:	2802      	cmp	r0, #2
c0de4466:	d348      	bcc.n	c0de44fa <displayTextPage+0x16e>
c0de4468:	6861      	ldr	r1, [r4, #4]
c0de446a:	2018      	movs	r0, #24
c0de446c:	f104 0218 	add.w	r2, r4, #24
c0de4470:	e9cd 2000 	strd	r2, r0, [sp]
c0de4474:	e021      	b.n	c0de44ba <displayTextPage+0x12e>
c0de4476:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de447a:	4630      	mov	r0, r6
c0de447c:	4629      	mov	r1, r5
c0de447e:	2200      	movs	r2, #0
c0de4480:	e055      	b.n	c0de452e <displayTextPage+0x1a2>
c0de4482:	f10a 0001 	add.w	r0, sl, #1
c0de4486:	6863      	ldr	r3, [r4, #4]
c0de4488:	2124      	movs	r1, #36	@ 0x24
c0de448a:	e9cd 0700 	strd	r0, r7, [sp]
c0de448e:	af08      	add	r7, sp, #32
c0de4490:	4a30      	ldr	r2, [pc, #192]	@ (c0de4554 <displayTextPage+0x1c8>)
c0de4492:	4638      	mov	r0, r7
c0de4494:	447a      	add	r2, pc
c0de4496:	f002 fccb 	bl	c0de6e30 <snprintf>
c0de449a:	2008      	movs	r0, #8
c0de449c:	4639      	mov	r1, r7
c0de449e:	2272      	movs	r2, #114	@ 0x72
c0de44a0:	2300      	movs	r3, #0
c0de44a2:	f04f 0a00 	mov.w	sl, #0
c0de44a6:	f002 fc86 	bl	c0de6db6 <nbgl_getTextNbLinesInWidth>
c0de44aa:	f104 0c18 	add.w	ip, r4, #24
c0de44ae:	2802      	cmp	r0, #2
c0de44b0:	d32c      	bcc.n	c0de450c <displayTextPage+0x180>
c0de44b2:	2018      	movs	r0, #24
c0de44b4:	e9cd c000 	strd	ip, r0, [sp]
c0de44b8:	a908      	add	r1, sp, #32
c0de44ba:	2008      	movs	r0, #8
c0de44bc:	2272      	movs	r2, #114	@ 0x72
c0de44be:	2301      	movs	r3, #1
c0de44c0:	f002 fc8d 	bl	c0de6dde <nbgl_textReduceOnNbLines>
c0de44c4:	e02d      	b.n	c0de4522 <displayTextPage+0x196>
c0de44c6:	6865      	ldr	r5, [r4, #4]
c0de44c8:	2700      	movs	r7, #0
c0de44ca:	f04f 0801 	mov.w	r8, #1
c0de44ce:	f10d 0a20 	add.w	sl, sp, #32
c0de44d2:	42be      	cmp	r6, r7
c0de44d4:	f43f af63 	beq.w	c0de439e <displayTextPage+0x12>
c0de44d8:	7820      	ldrb	r0, [r4, #0]
c0de44da:	3801      	subs	r0, #1
c0de44dc:	42b8      	cmp	r0, r7
c0de44de:	dd0a      	ble.n	c0de44f6 <displayTextPage+0x16a>
c0de44e0:	200a      	movs	r0, #10
c0de44e2:	4629      	mov	r1, r5
c0de44e4:	2272      	movs	r2, #114	@ 0x72
c0de44e6:	2304      	movs	r3, #4
c0de44e8:	e9cd a800 	strd	sl, r8, [sp]
c0de44ec:	f002 fc72 	bl	c0de6dd4 <nbgl_getTextMaxLenInNbLines>
c0de44f0:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de44f4:	4405      	add	r5, r0
c0de44f6:	3701      	adds	r7, #1
c0de44f8:	e7eb      	b.n	c0de44d2 <displayTextPage+0x146>
c0de44fa:	6861      	ldr	r1, [r4, #4]
c0de44fc:	f104 0018 	add.w	r0, r4, #24
c0de4500:	2217      	movs	r2, #23
c0de4502:	f003 f929 	bl	c0de7758 <__aeabi_memcpy>
c0de4506:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de450a:	e00a      	b.n	c0de4522 <displayTextPage+0x196>
c0de450c:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de450e:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4512:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4516:	8838      	ldrh	r0, [r7, #0]
c0de4518:	f8ac 0000 	strh.w	r0, [ip]
c0de451c:	78b8      	ldrb	r0, [r7, #2]
c0de451e:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4522:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4526:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4528:	f104 0118 	add.w	r1, r4, #24
c0de452c:	462a      	mov	r2, r5
c0de452e:	f7ff f9d5 	bl	c0de38dc <nbgl_layoutAddText>
c0de4532:	f1b8 0f00 	cmp.w	r8, #0
c0de4536:	d004      	beq.n	c0de4542 <displayTextPage+0x1b6>
c0de4538:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de453a:	f10d 010a 	add.w	r1, sp, #10
c0de453e:	f7ff f96f 	bl	c0de3820 <nbgl_layoutAddNavigation>
c0de4542:	f000 f9e9 	bl	c0de4918 <OUTLINED_FUNCTION_4>
c0de4546:	f002 fbfa 	bl	c0de6d3e <nbgl_refresh>
c0de454a:	b011      	add	sp, #68	@ 0x44
c0de454c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4550:	000001bb 	.word	0x000001bb
c0de4554:	000035cd 	.word	0x000035cd

c0de4558 <nbgl_stepDrawCenteredInfo>:
c0de4558:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de455c:	b087      	sub	sp, #28
c0de455e:	460d      	mov	r5, r1
c0de4560:	4682      	mov	sl, r0
c0de4562:	a802      	add	r0, sp, #8
c0de4564:	f000 f9d3 	bl	c0de490e <OUTLINED_FUNCTION_3>
c0de4568:	4819      	ldr	r0, [pc, #100]	@ (c0de45d0 <nbgl_stepDrawCenteredInfo+0x78>)
c0de456a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de456c:	4478      	add	r0, pc
c0de456e:	f000 f9c5 	bl	c0de48fc <OUTLINED_FUNCTION_2>
c0de4572:	b168      	cbz	r0, c0de4590 <nbgl_stepDrawCenteredInfo+0x38>
c0de4574:	4604      	mov	r4, r0
c0de4576:	6145      	str	r5, [r0, #20]
c0de4578:	b10f      	cbz	r7, c0de457e <nbgl_stepDrawCenteredInfo+0x26>
c0de457a:	f000 f953 	bl	c0de4824 <OUTLINED_FUNCTION_0>
c0de457e:	f000 f9ce 	bl	c0de491e <OUTLINED_FUNCTION_5>
c0de4582:	d007      	beq.n	c0de4594 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4584:	2802      	cmp	r0, #2
c0de4586:	d007      	beq.n	c0de4598 <nbgl_stepDrawCenteredInfo+0x40>
c0de4588:	2801      	cmp	r0, #1
c0de458a:	d108      	bne.n	c0de459e <nbgl_stepDrawCenteredInfo+0x46>
c0de458c:	2002      	movs	r0, #2
c0de458e:	e004      	b.n	c0de459a <nbgl_stepDrawCenteredInfo+0x42>
c0de4590:	2400      	movs	r4, #0
c0de4592:	e018      	b.n	c0de45c6 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4594:	2003      	movs	r0, #3
c0de4596:	e000      	b.n	c0de459a <nbgl_stepDrawCenteredInfo+0x42>
c0de4598:	2001      	movs	r0, #1
c0de459a:	2500      	movs	r5, #0
c0de459c:	e000      	b.n	c0de45a0 <nbgl_stepDrawCenteredInfo+0x48>
c0de459e:	2000      	movs	r0, #0
c0de45a0:	f88d 0007 	strb.w	r0, [sp, #7]
c0de45a4:	a802      	add	r0, sp, #8
c0de45a6:	f7ff f8d7 	bl	c0de3758 <nbgl_layoutGet>
c0de45aa:	4641      	mov	r1, r8
c0de45ac:	6420      	str	r0, [r4, #64]	@ 0x40
c0de45ae:	f7ff fba9 	bl	c0de3d04 <nbgl_layoutAddCenteredInfo>
c0de45b2:	b925      	cbnz	r5, c0de45be <nbgl_stepDrawCenteredInfo+0x66>
c0de45b4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de45b6:	f10d 0106 	add.w	r1, sp, #6
c0de45ba:	f7ff f931 	bl	c0de3820 <nbgl_layoutAddNavigation>
c0de45be:	f000 f9ab 	bl	c0de4918 <OUTLINED_FUNCTION_4>
c0de45c2:	f002 fbbc 	bl	c0de6d3e <nbgl_refresh>
c0de45c6:	4620      	mov	r0, r4
c0de45c8:	b007      	add	sp, #28
c0de45ca:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de45ce:	bf00      	nop
c0de45d0:	00000065 	.word	0x00000065

c0de45d4 <actionCallback>:
c0de45d4:	b510      	push	{r4, lr}
c0de45d6:	460c      	mov	r4, r1
c0de45d8:	f000 f8f0 	bl	c0de47bc <getContextFromLayout>
c0de45dc:	b378      	cbz	r0, c0de463e <actionCallback+0x6a>
c0de45de:	2c04      	cmp	r4, #4
c0de45e0:	d006      	beq.n	c0de45f0 <actionCallback+0x1c>
c0de45e2:	2c01      	cmp	r4, #1
c0de45e4:	d008      	beq.n	c0de45f8 <actionCallback+0x24>
c0de45e6:	bb54      	cbnz	r4, c0de463e <actionCallback+0x6a>
c0de45e8:	7841      	ldrb	r1, [r0, #1]
c0de45ea:	b1d9      	cbz	r1, c0de4624 <actionCallback+0x50>
c0de45ec:	3901      	subs	r1, #1
c0de45ee:	e009      	b.n	c0de4604 <actionCallback+0x30>
c0de45f0:	6942      	ldr	r2, [r0, #20]
c0de45f2:	b322      	cbz	r2, c0de463e <actionCallback+0x6a>
c0de45f4:	2104      	movs	r1, #4
c0de45f6:	e01f      	b.n	c0de4638 <actionCallback+0x64>
c0de45f8:	7802      	ldrb	r2, [r0, #0]
c0de45fa:	7841      	ldrb	r1, [r0, #1]
c0de45fc:	3a01      	subs	r2, #1
c0de45fe:	428a      	cmp	r2, r1
c0de4600:	dd05      	ble.n	c0de460e <actionCallback+0x3a>
c0de4602:	3101      	adds	r1, #1
c0de4604:	b2c9      	uxtb	r1, r1
c0de4606:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de460a:	f7ff bebf 	b.w	c0de438c <displayTextPage>
c0de460e:	7c01      	ldrb	r1, [r0, #16]
c0de4610:	f041 0102 	orr.w	r1, r1, #2
c0de4614:	2903      	cmp	r1, #3
c0de4616:	d001      	beq.n	c0de461c <actionCallback+0x48>
c0de4618:	7c41      	ldrb	r1, [r0, #17]
c0de461a:	b181      	cbz	r1, c0de463e <actionCallback+0x6a>
c0de461c:	6942      	ldr	r2, [r0, #20]
c0de461e:	b172      	cbz	r2, c0de463e <actionCallback+0x6a>
c0de4620:	2101      	movs	r1, #1
c0de4622:	e009      	b.n	c0de4638 <actionCallback+0x64>
c0de4624:	7c01      	ldrb	r1, [r0, #16]
c0de4626:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de462a:	2902      	cmp	r1, #2
c0de462c:	d001      	beq.n	c0de4632 <actionCallback+0x5e>
c0de462e:	7c41      	ldrb	r1, [r0, #17]
c0de4630:	b129      	cbz	r1, c0de463e <actionCallback+0x6a>
c0de4632:	6942      	ldr	r2, [r0, #20]
c0de4634:	b11a      	cbz	r2, c0de463e <actionCallback+0x6a>
c0de4636:	2100      	movs	r1, #0
c0de4638:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de463c:	4710      	bx	r2
c0de463e:	bd10      	pop	{r4, pc}

c0de4640 <getNavigationInfo>:
c0de4640:	4603      	mov	r3, r0
c0de4642:	2902      	cmp	r1, #2
c0de4644:	d308      	bcc.n	c0de4658 <getNavigationInfo+0x18>
c0de4646:	3901      	subs	r1, #1
c0de4648:	4610      	mov	r0, r2
c0de464a:	2a00      	cmp	r2, #0
c0de464c:	bf18      	it	ne
c0de464e:	2001      	movne	r0, #1
c0de4650:	4291      	cmp	r1, r2
c0de4652:	bf88      	it	hi
c0de4654:	3002      	addhi	r0, #2
c0de4656:	e000      	b.n	c0de465a <getNavigationInfo+0x1a>
c0de4658:	2000      	movs	r0, #0
c0de465a:	2b03      	cmp	r3, #3
c0de465c:	d00a      	beq.n	c0de4674 <getNavigationInfo+0x34>
c0de465e:	2b02      	cmp	r3, #2
c0de4660:	bf04      	itt	eq
c0de4662:	f040 0001 	orreq.w	r0, r0, #1
c0de4666:	4770      	bxeq	lr
c0de4668:	2b01      	cmp	r3, #1
c0de466a:	bf04      	itt	eq
c0de466c:	f040 0002 	orreq.w	r0, r0, #2
c0de4670:	4770      	bxeq	lr
c0de4672:	4770      	bx	lr
c0de4674:	2003      	movs	r0, #3
c0de4676:	4770      	bx	lr

c0de4678 <nbgl_stepDrawMenuList>:
c0de4678:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de467a:	460f      	mov	r7, r1
c0de467c:	4606      	mov	r6, r0
c0de467e:	2002      	movs	r0, #2
c0de4680:	4619      	mov	r1, r3
c0de4682:	4615      	mov	r5, r2
c0de4684:	f7ff fe5c 	bl	c0de4340 <getFreeContext>
c0de4688:	b170      	cbz	r0, c0de46a8 <nbgl_stepDrawMenuList+0x30>
c0de468a:	4604      	mov	r4, r0
c0de468c:	b10f      	cbz	r7, c0de4692 <nbgl_stepDrawMenuList+0x1a>
c0de468e:	f000 f910 	bl	c0de48b2 <OUTLINED_FUNCTION_1>
c0de4692:	7928      	ldrb	r0, [r5, #4]
c0de4694:	7220      	strb	r0, [r4, #8]
c0de4696:	7968      	ldrb	r0, [r5, #5]
c0de4698:	7260      	strb	r0, [r4, #9]
c0de469a:	6828      	ldr	r0, [r5, #0]
c0de469c:	e9c4 6000 	strd	r6, r0, [r4]
c0de46a0:	4620      	mov	r0, r4
c0de46a2:	f000 f805 	bl	c0de46b0 <displayMenuList>
c0de46a6:	e000      	b.n	c0de46aa <nbgl_stepDrawMenuList+0x32>
c0de46a8:	2400      	movs	r4, #0
c0de46aa:	4620      	mov	r0, r4
c0de46ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de46b0 <displayMenuList>:
c0de46b0:	b5b0      	push	{r4, r5, r7, lr}
c0de46b2:	b086      	sub	sp, #24
c0de46b4:	4604      	mov	r4, r0
c0de46b6:	2000      	movs	r0, #0
c0de46b8:	9001      	str	r0, [sp, #4]
c0de46ba:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de46be:	4819      	ldr	r0, [pc, #100]	@ (c0de4724 <displayMenuList+0x74>)
c0de46c0:	4478      	add	r0, pc
c0de46c2:	9002      	str	r0, [sp, #8]
c0de46c4:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de46c8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de46cc:	ca07      	ldmia	r2, {r0, r1, r2}
c0de46ce:	ab03      	add	r3, sp, #12
c0de46d0:	c307      	stmia	r3!, {r0, r1, r2}
c0de46d2:	a801      	add	r0, sp, #4
c0de46d4:	f7ff f840 	bl	c0de3758 <nbgl_layoutGet>
c0de46d8:	1d25      	adds	r5, r4, #4
c0de46da:	6420      	str	r0, [r4, #64]	@ 0x40
c0de46dc:	4629      	mov	r1, r5
c0de46de:	f7ff fabd 	bl	c0de3c5c <nbgl_layoutAddMenuList>
c0de46e2:	7a20      	ldrb	r0, [r4, #8]
c0de46e4:	2802      	cmp	r0, #2
c0de46e6:	d316      	bcc.n	c0de4716 <displayMenuList+0x66>
c0de46e8:	2101      	movs	r1, #1
c0de46ea:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de46ee:	7969      	ldrb	r1, [r5, #5]
c0de46f0:	2900      	cmp	r1, #0
c0de46f2:	460a      	mov	r2, r1
c0de46f4:	bf18      	it	ne
c0de46f6:	2201      	movne	r2, #1
c0de46f8:	3801      	subs	r0, #1
c0de46fa:	f88d 2003 	strb.w	r2, [sp, #3]
c0de46fe:	4288      	cmp	r0, r1
c0de4700:	d903      	bls.n	c0de470a <displayMenuList+0x5a>
c0de4702:	1c90      	adds	r0, r2, #2
c0de4704:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4708:	e000      	b.n	c0de470c <displayMenuList+0x5c>
c0de470a:	b121      	cbz	r1, c0de4716 <displayMenuList+0x66>
c0de470c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de470e:	f10d 0102 	add.w	r1, sp, #2
c0de4712:	f7ff f885 	bl	c0de3820 <nbgl_layoutAddNavigation>
c0de4716:	f000 f8ff 	bl	c0de4918 <OUTLINED_FUNCTION_4>
c0de471a:	f002 fb10 	bl	c0de6d3e <nbgl_refresh>
c0de471e:	b006      	add	sp, #24
c0de4720:	bdb0      	pop	{r4, r5, r7, pc}
c0de4722:	bf00      	nop
c0de4724:	00000121 	.word	0x00000121

c0de4728 <nbgl_stepDrawSwitch>:
c0de4728:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de472c:	b087      	sub	sp, #28
c0de472e:	460d      	mov	r5, r1
c0de4730:	4682      	mov	sl, r0
c0de4732:	a802      	add	r0, sp, #8
c0de4734:	f000 f8eb 	bl	c0de490e <OUTLINED_FUNCTION_3>
c0de4738:	4819      	ldr	r0, [pc, #100]	@ (c0de47a0 <nbgl_stepDrawSwitch+0x78>)
c0de473a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de473c:	4478      	add	r0, pc
c0de473e:	f000 f8dd 	bl	c0de48fc <OUTLINED_FUNCTION_2>
c0de4742:	b168      	cbz	r0, c0de4760 <nbgl_stepDrawSwitch+0x38>
c0de4744:	4604      	mov	r4, r0
c0de4746:	6145      	str	r5, [r0, #20]
c0de4748:	b10f      	cbz	r7, c0de474e <nbgl_stepDrawSwitch+0x26>
c0de474a:	f000 f86b 	bl	c0de4824 <OUTLINED_FUNCTION_0>
c0de474e:	f000 f8e6 	bl	c0de491e <OUTLINED_FUNCTION_5>
c0de4752:	d007      	beq.n	c0de4764 <nbgl_stepDrawSwitch+0x3c>
c0de4754:	2802      	cmp	r0, #2
c0de4756:	d007      	beq.n	c0de4768 <nbgl_stepDrawSwitch+0x40>
c0de4758:	2801      	cmp	r0, #1
c0de475a:	d108      	bne.n	c0de476e <nbgl_stepDrawSwitch+0x46>
c0de475c:	2002      	movs	r0, #2
c0de475e:	e004      	b.n	c0de476a <nbgl_stepDrawSwitch+0x42>
c0de4760:	2400      	movs	r4, #0
c0de4762:	e018      	b.n	c0de4796 <nbgl_stepDrawSwitch+0x6e>
c0de4764:	2003      	movs	r0, #3
c0de4766:	e000      	b.n	c0de476a <nbgl_stepDrawSwitch+0x42>
c0de4768:	2001      	movs	r0, #1
c0de476a:	2500      	movs	r5, #0
c0de476c:	e000      	b.n	c0de4770 <nbgl_stepDrawSwitch+0x48>
c0de476e:	2000      	movs	r0, #0
c0de4770:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4774:	a802      	add	r0, sp, #8
c0de4776:	f7fe ffef 	bl	c0de3758 <nbgl_layoutGet>
c0de477a:	4641      	mov	r1, r8
c0de477c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de477e:	f7ff fc61 	bl	c0de4044 <nbgl_layoutAddSwitch>
c0de4782:	b925      	cbnz	r5, c0de478e <nbgl_stepDrawSwitch+0x66>
c0de4784:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4786:	f10d 0106 	add.w	r1, sp, #6
c0de478a:	f7ff f849 	bl	c0de3820 <nbgl_layoutAddNavigation>
c0de478e:	f000 f8c3 	bl	c0de4918 <OUTLINED_FUNCTION_4>
c0de4792:	f002 fad4 	bl	c0de6d3e <nbgl_refresh>
c0de4796:	4620      	mov	r0, r4
c0de4798:	b007      	add	sp, #28
c0de479a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de479e:	bf00      	nop
c0de47a0:	fffffe95 	.word	0xfffffe95

c0de47a4 <nbgl_stepRelease>:
c0de47a4:	b138      	cbz	r0, c0de47b6 <nbgl_stepRelease+0x12>
c0de47a6:	b510      	push	{r4, lr}
c0de47a8:	4604      	mov	r4, r0
c0de47aa:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de47ac:	f7ff fd40 	bl	c0de4230 <nbgl_layoutRelease>
c0de47b0:	2100      	movs	r1, #0
c0de47b2:	6421      	str	r1, [r4, #64]	@ 0x40
c0de47b4:	bd10      	pop	{r4, pc}
c0de47b6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de47ba:	4770      	bx	lr

c0de47bc <getContextFromLayout>:
c0de47bc:	4a08      	ldr	r2, [pc, #32]	@ (c0de47e0 <getContextFromLayout+0x24>)
c0de47be:	2100      	movs	r1, #0
c0de47c0:	29d8      	cmp	r1, #216	@ 0xd8
c0de47c2:	bf04      	itt	eq
c0de47c4:	2000      	moveq	r0, #0
c0de47c6:	4770      	bxeq	lr
c0de47c8:	eb09 0302 	add.w	r3, r9, r2
c0de47cc:	440b      	add	r3, r1
c0de47ce:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de47d0:	4283      	cmp	r3, r0
c0de47d2:	d001      	beq.n	c0de47d8 <getContextFromLayout+0x1c>
c0de47d4:	3148      	adds	r1, #72	@ 0x48
c0de47d6:	e7f3      	b.n	c0de47c0 <getContextFromLayout+0x4>
c0de47d8:	eb09 0002 	add.w	r0, r9, r2
c0de47dc:	4408      	add	r0, r1
c0de47de:	4770      	bx	lr
c0de47e0:	0000066c 	.word	0x0000066c

c0de47e4 <menuListActionCallback>:
c0de47e4:	b510      	push	{r4, lr}
c0de47e6:	460c      	mov	r4, r1
c0de47e8:	f7ff ffe8 	bl	c0de47bc <getContextFromLayout>
c0de47ec:	b1c8      	cbz	r0, c0de4822 <menuListActionCallback+0x3e>
c0de47ee:	2c04      	cmp	r4, #4
c0de47f0:	d006      	beq.n	c0de4800 <menuListActionCallback+0x1c>
c0de47f2:	2c01      	cmp	r4, #1
c0de47f4:	d00a      	beq.n	c0de480c <menuListActionCallback+0x28>
c0de47f6:	b9a4      	cbnz	r4, c0de4822 <menuListActionCallback+0x3e>
c0de47f8:	7a41      	ldrb	r1, [r0, #9]
c0de47fa:	b191      	cbz	r1, c0de4822 <menuListActionCallback+0x3e>
c0de47fc:	3901      	subs	r1, #1
c0de47fe:	e00b      	b.n	c0de4818 <menuListActionCallback+0x34>
c0de4800:	7a41      	ldrb	r1, [r0, #9]
c0de4802:	6802      	ldr	r2, [r0, #0]
c0de4804:	4608      	mov	r0, r1
c0de4806:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de480a:	4710      	bx	r2
c0de480c:	7a02      	ldrb	r2, [r0, #8]
c0de480e:	7a41      	ldrb	r1, [r0, #9]
c0de4810:	3a01      	subs	r2, #1
c0de4812:	428a      	cmp	r2, r1
c0de4814:	dd05      	ble.n	c0de4822 <menuListActionCallback+0x3e>
c0de4816:	3101      	adds	r1, #1
c0de4818:	7241      	strb	r1, [r0, #9]
c0de481a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de481e:	f7ff bf47 	b.w	c0de46b0 <displayMenuList>
c0de4822:	bd10      	pop	{r4, pc}

c0de4824 <OUTLINED_FUNCTION_0>:
c0de4824:	7838      	ldrb	r0, [r7, #0]
c0de4826:	7879      	ldrb	r1, [r7, #1]
c0de4828:	78ba      	ldrb	r2, [r7, #2]
c0de482a:	78fb      	ldrb	r3, [r7, #3]
c0de482c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4830:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4834:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4838:	6360      	str	r0, [r4, #52]	@ 0x34
c0de483a:	4638      	mov	r0, r7
c0de483c:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4840:	7a79      	ldrb	r1, [r7, #9]
c0de4842:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4846:	7882      	ldrb	r2, [r0, #2]
c0de4848:	78c3      	ldrb	r3, [r0, #3]
c0de484a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de484e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4852:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4854:	4639      	mov	r1, r7
c0de4856:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de485a:	797a      	ldrb	r2, [r7, #5]
c0de485c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4860:	788b      	ldrb	r3, [r1, #2]
c0de4862:	78cd      	ldrb	r5, [r1, #3]
c0de4864:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4868:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de486c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de486e:	783a      	ldrb	r2, [r7, #0]
c0de4870:	787b      	ldrb	r3, [r7, #1]
c0de4872:	78bd      	ldrb	r5, [r7, #2]
c0de4874:	78fe      	ldrb	r6, [r7, #3]
c0de4876:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de487a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de487e:	7803      	ldrb	r3, [r0, #0]
c0de4880:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4884:	7885      	ldrb	r5, [r0, #2]
c0de4886:	78c0      	ldrb	r0, [r0, #3]
c0de4888:	9204      	str	r2, [sp, #16]
c0de488a:	7a7a      	ldrb	r2, [r7, #9]
c0de488c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4890:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4894:	788b      	ldrb	r3, [r1, #2]
c0de4896:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de489a:	780a      	ldrb	r2, [r1, #0]
c0de489c:	78c9      	ldrb	r1, [r1, #3]
c0de489e:	9006      	str	r0, [sp, #24]
c0de48a0:	7978      	ldrb	r0, [r7, #5]
c0de48a2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de48a6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de48aa:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de48ae:	9005      	str	r0, [sp, #20]
c0de48b0:	4770      	bx	lr

c0de48b2 <OUTLINED_FUNCTION_1>:
c0de48b2:	7838      	ldrb	r0, [r7, #0]
c0de48b4:	7879      	ldrb	r1, [r7, #1]
c0de48b6:	78ba      	ldrb	r2, [r7, #2]
c0de48b8:	78fb      	ldrb	r3, [r7, #3]
c0de48ba:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de48be:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48c2:	4639      	mov	r1, r7
c0de48c4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de48c8:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de48cc:	6360      	str	r0, [r4, #52]	@ 0x34
c0de48ce:	7a78      	ldrb	r0, [r7, #9]
c0de48d0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de48d4:	788a      	ldrb	r2, [r1, #2]
c0de48d6:	78c9      	ldrb	r1, [r1, #3]
c0de48d8:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de48dc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de48e0:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de48e2:	7978      	ldrb	r0, [r7, #5]
c0de48e4:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de48e8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de48ec:	78b9      	ldrb	r1, [r7, #2]
c0de48ee:	78fa      	ldrb	r2, [r7, #3]
c0de48f0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de48f4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de48f8:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de48fa:	4770      	bx	lr

c0de48fc <OUTLINED_FUNCTION_2>:
c0de48fc:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4900:	9003      	str	r0, [sp, #12]
c0de4902:	2000      	movs	r0, #0
c0de4904:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4908:	2001      	movs	r0, #1
c0de490a:	f7ff bd19 	b.w	c0de4340 <getFreeContext>

c0de490e <OUTLINED_FUNCTION_3>:
c0de490e:	2114      	movs	r1, #20
c0de4910:	4698      	mov	r8, r3
c0de4912:	4617      	mov	r7, r2
c0de4914:	f002 bf2a 	b.w	c0de776c <__aeabi_memclr>

c0de4918 <OUTLINED_FUNCTION_4>:
c0de4918:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de491a:	f7ff bc81 	b.w	c0de4220 <nbgl_layoutDraw>

c0de491e <OUTLINED_FUNCTION_5>:
c0de491e:	2501      	movs	r5, #1
c0de4920:	f00a 0003 	and.w	r0, sl, #3
c0de4924:	2803      	cmp	r0, #3
c0de4926:	7025      	strb	r5, [r4, #0]
c0de4928:	7420      	strb	r0, [r4, #16]
c0de492a:	4770      	bx	lr

c0de492c <nbgl_useCaseHomeAndSettings>:
c0de492c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4930:	4607      	mov	r7, r0
c0de4932:	4810      	ldr	r0, [pc, #64]	@ (c0de4974 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4934:	f001 fc98 	bl	c0de6268 <OUTLINED_FUNCTION_0>
c0de4938:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de493c:	6425      	str	r5, [r4, #64]	@ 0x40
c0de493e:	9d06      	ldr	r5, [sp, #24]
c0de4940:	4628      	mov	r0, r5
c0de4942:	f002 fc07 	bl	c0de7154 <pic>
c0de4946:	6460      	str	r0, [r4, #68]	@ 0x44
c0de4948:	9807      	ldr	r0, [sp, #28]
c0de494a:	f002 fc03 	bl	c0de7154 <pic>
c0de494e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4950:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4954:	6521      	str	r1, [r4, #80]	@ 0x50
c0de4956:	9908      	ldr	r1, [sp, #32]
c0de4958:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de495c:	bf18      	it	ne
c0de495e:	2d00      	cmpne	r5, #0
c0de4960:	d103      	bne.n	c0de496a <nbgl_useCaseHomeAndSettings+0x3e>
c0de4962:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4966:	f000 b843 	b.w	c0de49f0 <startUseCaseHome>
c0de496a:	4640      	mov	r0, r8
c0de496c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4970:	f000 b802 	b.w	c0de4978 <startUseCaseSettingsAtPage>
c0de4974:	00000744 	.word	0x00000744

c0de4978 <startUseCaseSettingsAtPage>:
c0de4978:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de497a:	b08f      	sub	sp, #60	@ 0x3c
c0de497c:	4604      	mov	r4, r0
c0de497e:	a801      	add	r0, sp, #4
c0de4980:	2138      	movs	r1, #56	@ 0x38
c0de4982:	f002 fef3 	bl	c0de776c <__aeabi_memclr>
c0de4986:	4e19      	ldr	r6, [pc, #100]	@ (c0de49ec <startUseCaseSettingsAtPage+0x74>)
c0de4988:	eb09 0006 	add.w	r0, r9, r6
c0de498c:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4990:	280f      	cmp	r0, #15
c0de4992:	bf1e      	ittt	ne
c0de4994:	eb09 0006 	addne.w	r0, r9, r6
c0de4998:	210e      	movne	r1, #14
c0de499a:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de499e:	eb09 0006 	add.w	r0, r9, r6
c0de49a2:	2101      	movs	r1, #1
c0de49a4:	2700      	movs	r7, #0
c0de49a6:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de49aa:	ad01      	add	r5, sp, #4
c0de49ac:	eb09 0006 	add.w	r0, r9, r6
c0de49b0:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de49b2:	7a01      	ldrb	r1, [r0, #8]
c0de49b4:	428f      	cmp	r7, r1
c0de49b6:	d20e      	bcs.n	c0de49d6 <startUseCaseSettingsAtPage+0x5e>
c0de49b8:	b279      	sxtb	r1, r7
c0de49ba:	462a      	mov	r2, r5
c0de49bc:	f000 fca6 	bl	c0de530c <getContentAtIdx>
c0de49c0:	f000 fcfe 	bl	c0de53c0 <getContentNbElement>
c0de49c4:	eb09 0106 	add.w	r1, r9, r6
c0de49c8:	3701      	adds	r7, #1
c0de49ca:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de49ce:	4410      	add	r0, r2
c0de49d0:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de49d4:	e7ea      	b.n	c0de49ac <startUseCaseSettingsAtPage+0x34>
c0de49d6:	eb09 0006 	add.w	r0, r9, r6
c0de49da:	2100      	movs	r1, #0
c0de49dc:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de49e0:	2000      	movs	r0, #0
c0de49e2:	f000 fef7 	bl	c0de57d4 <displaySettingsPage>
c0de49e6:	b00f      	add	sp, #60	@ 0x3c
c0de49e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de49ea:	bf00      	nop
c0de49ec:	00000744 	.word	0x00000744

c0de49f0 <startUseCaseHome>:
c0de49f0:	b510      	push	{r4, lr}
c0de49f2:	4821      	ldr	r0, [pc, #132]	@ (c0de4a78 <startUseCaseHome+0x88>)
c0de49f4:	eb09 0100 	add.w	r1, r9, r0
c0de49f8:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de49fc:	290d      	cmp	r1, #13
c0de49fe:	d009      	beq.n	c0de4a14 <startUseCaseHome+0x24>
c0de4a00:	290e      	cmp	r1, #14
c0de4a02:	d114      	bne.n	c0de4a2e <startUseCaseHome+0x3e>
c0de4a04:	eb09 0100 	add.w	r1, r9, r0
c0de4a08:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de4a0a:	2102      	movs	r1, #2
c0de4a0c:	2a00      	cmp	r2, #0
c0de4a0e:	bf08      	it	eq
c0de4a10:	2101      	moveq	r1, #1
c0de4a12:	e00d      	b.n	c0de4a30 <startUseCaseHome+0x40>
c0de4a14:	eb09 0200 	add.w	r2, r9, r0
c0de4a18:	2102      	movs	r1, #2
c0de4a1a:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de4a1c:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de4a1e:	2c00      	cmp	r4, #0
c0de4a20:	bf08      	it	eq
c0de4a22:	2101      	moveq	r1, #1
c0de4a24:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a28:	b133      	cbz	r3, c0de4a38 <startUseCaseHome+0x48>
c0de4a2a:	3101      	adds	r1, #1
c0de4a2c:	e000      	b.n	c0de4a30 <startUseCaseHome+0x40>
c0de4a2e:	2100      	movs	r1, #0
c0de4a30:	eb09 0200 	add.w	r2, r9, r0
c0de4a34:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a38:	eb09 0200 	add.w	r2, r9, r0
c0de4a3c:	210c      	movs	r1, #12
c0de4a3e:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de4a42:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de4a46:	2103      	movs	r1, #3
c0de4a48:	2b00      	cmp	r3, #0
c0de4a4a:	bf08      	it	eq
c0de4a4c:	2102      	moveq	r1, #2
c0de4a4e:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4a52:	b124      	cbz	r4, c0de4a5e <startUseCaseHome+0x6e>
c0de4a54:	3101      	adds	r1, #1
c0de4a56:	eb09 0200 	add.w	r2, r9, r0
c0de4a5a:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4a5e:	eb09 0200 	add.w	r2, r9, r0
c0de4a62:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de4a64:	b11a      	cbz	r2, c0de4a6e <startUseCaseHome+0x7e>
c0de4a66:	4448      	add	r0, r9
c0de4a68:	3101      	adds	r1, #1
c0de4a6a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4a6e:	2000      	movs	r0, #0
c0de4a70:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4a74:	f000 bf9e 	b.w	c0de59b4 <displayHomePage>
c0de4a78:	00000744 	.word	0x00000744

c0de4a7c <nbgl_useCaseReview>:
c0de4a7c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4a7e:	4614      	mov	r4, r2
c0de4a80:	460a      	mov	r2, r1
c0de4a82:	4601      	mov	r1, r0
c0de4a84:	9808      	ldr	r0, [sp, #32]
c0de4a86:	9003      	str	r0, [sp, #12]
c0de4a88:	9807      	ldr	r0, [sp, #28]
c0de4a8a:	9002      	str	r0, [sp, #8]
c0de4a8c:	9806      	ldr	r0, [sp, #24]
c0de4a8e:	e9cd 3000 	strd	r3, r0, [sp]
c0de4a92:	2002      	movs	r0, #2
c0de4a94:	4623      	mov	r3, r4
c0de4a96:	f000 f801 	bl	c0de4a9c <useCaseReview>
c0de4a9a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4a9c <useCaseReview>:
c0de4a9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4aa0:	4607      	mov	r7, r0
c0de4aa2:	4811      	ldr	r0, [pc, #68]	@ (c0de4ae8 <useCaseReview+0x4c>)
c0de4aa4:	4688      	mov	r8, r1
c0de4aa6:	2140      	movs	r1, #64	@ 0x40
c0de4aa8:	461d      	mov	r5, r3
c0de4aaa:	4614      	mov	r4, r2
c0de4aac:	f001 fbf1 	bl	c0de6292 <OUTLINED_FUNCTION_2>
c0de4ab0:	9808      	ldr	r0, [sp, #32]
c0de4ab2:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4ab4:	9807      	ldr	r0, [sp, #28]
c0de4ab6:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de4ab8:	9906      	ldr	r1, [sp, #24]
c0de4aba:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de4abe:	6471      	str	r1, [r6, #68]	@ 0x44
c0de4ac0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4ac2:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de4ac6:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de4aca:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de4acc:	2104      	movs	r1, #4
c0de4ace:	2800      	cmp	r0, #0
c0de4ad0:	bf08      	it	eq
c0de4ad2:	2103      	moveq	r1, #3
c0de4ad4:	7a20      	ldrb	r0, [r4, #8]
c0de4ad6:	4408      	add	r0, r1
c0de4ad8:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4adc:	2000      	movs	r0, #0
c0de4ade:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4ae2:	f000 b8b1 	b.w	c0de4c48 <displayReviewPage>
c0de4ae6:	bf00      	nop
c0de4ae8:	00000744 	.word	0x00000744

c0de4aec <nbgl_useCaseAdvancedReview>:
c0de4aec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4af0:	b088      	sub	sp, #32
c0de4af2:	4688      	mov	r8, r1
c0de4af4:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4af8:	4615      	mov	r5, r2
c0de4afa:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de4afe:	4604      	mov	r4, r0
c0de4b00:	f1ba 0f00 	cmp.w	sl, #0
c0de4b04:	d039      	beq.n	c0de4b7a <nbgl_useCaseAdvancedReview+0x8e>
c0de4b06:	f8da 6000 	ldr.w	r6, [sl]
c0de4b0a:	b92e      	cbnz	r6, c0de4b18 <nbgl_useCaseAdvancedReview+0x2c>
c0de4b0c:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4b10:	b910      	cbnz	r0, c0de4b18 <nbgl_useCaseAdvancedReview+0x2c>
c0de4b12:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4b16:	b380      	cbz	r0, c0de4b7a <nbgl_useCaseAdvancedReview+0x8e>
c0de4b18:	4822      	ldr	r0, [pc, #136]	@ (c0de4ba4 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b1a:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de4b1e:	2128      	movs	r1, #40	@ 0x28
c0de4b20:	9605      	str	r6, [sp, #20]
c0de4b22:	461f      	mov	r7, r3
c0de4b24:	4616      	mov	r6, r2
c0de4b26:	eb09 0400 	add.w	r4, r9, r0
c0de4b2a:	4620      	mov	r0, r4
c0de4b2c:	f002 fe1e 	bl	c0de776c <__aeabi_memclr>
c0de4b30:	491c      	ldr	r1, [pc, #112]	@ (c0de4ba4 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b32:	2002      	movs	r0, #2
c0de4b34:	46b4      	mov	ip, r6
c0de4b36:	462b      	mov	r3, r5
c0de4b38:	f809 0001 	strb.w	r0, [r9, r1]
c0de4b3c:	9905      	ldr	r1, [sp, #20]
c0de4b3e:	2040      	movs	r0, #64	@ 0x40
c0de4b40:	2908      	cmp	r1, #8
c0de4b42:	bf08      	it	eq
c0de4b44:	2080      	moveq	r0, #128	@ 0x80
c0de4b46:	9906      	ldr	r1, [sp, #24]
c0de4b48:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de4b4c:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4b50:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4b54:	9e07      	ldr	r6, [sp, #28]
c0de4b56:	4301      	orrs	r1, r0
c0de4b58:	9807      	ldr	r0, [sp, #28]
c0de4b5a:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de4b5e:	6220      	str	r0, [r4, #32]
c0de4b60:	f89a 0000 	ldrb.w	r0, [sl]
c0de4b64:	f010 0f16 	tst.w	r0, #22
c0de4b68:	d102      	bne.n	c0de4b70 <nbgl_useCaseAdvancedReview+0x84>
c0de4b6a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4b6e:	b188      	cbz	r0, c0de4b94 <nbgl_useCaseAdvancedReview+0xa8>
c0de4b70:	b008      	add	sp, #32
c0de4b72:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4b76:	f000 b817 	b.w	c0de4ba8 <displayInitialWarning>
c0de4b7a:	e9cd 3200 	strd	r3, r2, [sp]
c0de4b7e:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de4b82:	2002      	movs	r0, #2
c0de4b84:	4621      	mov	r1, r4
c0de4b86:	4642      	mov	r2, r8
c0de4b88:	462b      	mov	r3, r5
c0de4b8a:	f7ff ff87 	bl	c0de4a9c <useCaseReview>
c0de4b8e:	b008      	add	sp, #32
c0de4b90:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4b94:	2002      	movs	r0, #2
c0de4b96:	4642      	mov	r2, r8
c0de4b98:	463d      	mov	r5, r7
c0de4b9a:	e9cd 7c00 	strd	r7, ip, [sp]
c0de4b9e:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de4ba2:	e7f2      	b.n	c0de4b8a <nbgl_useCaseAdvancedReview+0x9e>
c0de4ba4:	00000744 	.word	0x00000744

c0de4ba8 <displayInitialWarning>:
c0de4ba8:	4803      	ldr	r0, [pc, #12]	@ (c0de4bb8 <displayInitialWarning+0x10>)
c0de4baa:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4bae:	4448      	add	r0, r9
c0de4bb0:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4bb2:	f000 bfeb 	b.w	c0de5b8c <displayWarningStep>
c0de4bb6:	bf00      	nop
c0de4bb8:	00000744 	.word	0x00000744

c0de4bbc <nbgl_useCaseReviewBlindSigning>:
c0de4bbc:	b5b0      	push	{r4, r5, r7, lr}
c0de4bbe:	b086      	sub	sp, #24
c0de4bc0:	4d06      	ldr	r5, [pc, #24]	@ (c0de4bdc <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4bc2:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4bc4:	447d      	add	r5, pc
c0de4bc6:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4bca:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4bcc:	9401      	str	r4, [sp, #4]
c0de4bce:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4bd0:	9400      	str	r4, [sp, #0]
c0de4bd2:	f7ff ff8b 	bl	c0de4aec <nbgl_useCaseAdvancedReview>
c0de4bd6:	b006      	add	sp, #24
c0de4bd8:	bdb0      	pop	{r4, r5, r7, pc}
c0de4bda:	bf00      	nop
c0de4bdc:	0000400c 	.word	0x0000400c

c0de4be0 <nbgl_useCaseAddressReview>:
c0de4be0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4be4:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4c44 <nbgl_useCaseAddressReview+0x64>
c0de4be8:	460c      	mov	r4, r1
c0de4bea:	4607      	mov	r7, r0
c0de4bec:	2140      	movs	r1, #64	@ 0x40
c0de4bee:	469a      	mov	sl, r3
c0de4bf0:	4616      	mov	r6, r2
c0de4bf2:	eb09 0508 	add.w	r5, r9, r8
c0de4bf6:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4bfa:	f002 fdb7 	bl	c0de776c <__aeabi_memclr>
c0de4bfe:	2004      	movs	r0, #4
c0de4c00:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4c02:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4c06:	9808      	ldr	r0, [sp, #32]
c0de4c08:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4c0c:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4c0e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4c10:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4c12:	2105      	movs	r1, #5
c0de4c14:	2800      	cmp	r0, #0
c0de4c16:	bf08      	it	eq
c0de4c18:	2104      	moveq	r1, #4
c0de4c1a:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4c1e:	b15c      	cbz	r4, c0de4c38 <nbgl_useCaseAddressReview+0x58>
c0de4c20:	4620      	mov	r0, r4
c0de4c22:	eb09 0508 	add.w	r5, r9, r8
c0de4c26:	f002 fa95 	bl	c0de7154 <pic>
c0de4c2a:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4c2c:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4c30:	7a21      	ldrb	r1, [r4, #8]
c0de4c32:	4408      	add	r0, r1
c0de4c34:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4c38:	2000      	movs	r0, #0
c0de4c3a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c3e:	f000 b803 	b.w	c0de4c48 <displayReviewPage>
c0de4c42:	bf00      	nop
c0de4c44:	00000744 	.word	0x00000744

c0de4c48 <displayReviewPage>:
c0de4c48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4c4a:	b08b      	sub	sp, #44	@ 0x2c
c0de4c4c:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4dc4 <displayReviewPage+0x17c>)
c0de4c4e:	4604      	mov	r4, r0
c0de4c50:	2000      	movs	r0, #0
c0de4c52:	2201      	movs	r2, #1
c0de4c54:	2702      	movs	r7, #2
c0de4c56:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4c5a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4c5e:	eb09 0306 	add.w	r3, r9, r6
c0de4c62:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4c64:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4c66:	2800      	cmp	r0, #0
c0de4c68:	bf08      	it	eq
c0de4c6a:	22ff      	moveq	r2, #255	@ 0xff
c0de4c6c:	bf08      	it	eq
c0de4c6e:	2701      	moveq	r7, #1
c0de4c70:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4c74:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4c78:	1e9d      	subs	r5, r3, #2
c0de4c7a:	b2ed      	uxtb	r5, r5
c0de4c7c:	42a9      	cmp	r1, r5
c0de4c7e:	da06      	bge.n	c0de4c8e <displayReviewPage+0x46>
c0de4c80:	42b9      	cmp	r1, r7
c0de4c82:	da0b      	bge.n	c0de4c9c <displayReviewPage+0x54>
c0de4c84:	2900      	cmp	r1, #0
c0de4c86:	d041      	beq.n	c0de4d0c <displayReviewPage+0xc4>
c0de4c88:	428a      	cmp	r2, r1
c0de4c8a:	d044      	beq.n	c0de4d16 <displayReviewPage+0xce>
c0de4c8c:	e044      	b.n	c0de4d18 <displayReviewPage+0xd0>
c0de4c8e:	d110      	bne.n	c0de4cb2 <displayReviewPage+0x6a>
c0de4c90:	a908      	add	r1, sp, #32
c0de4c92:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4c94:	2001      	movs	r0, #1
c0de4c96:	f000 ffe1 	bl	c0de5c5c <getLastPageInfo>
c0de4c9a:	e03d      	b.n	c0de4d18 <displayReviewPage+0xd0>
c0de4c9c:	eb09 0006 	add.w	r0, r9, r6
c0de4ca0:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4ca2:	b18d      	cbz	r5, c0de4cc8 <displayReviewPage+0x80>
c0de4ca4:	42b9      	cmp	r1, r7
c0de4ca6:	d10f      	bne.n	c0de4cc8 <displayReviewPage+0x80>
c0de4ca8:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4caa:	4847      	ldr	r0, [pc, #284]	@ (c0de4dc8 <displayReviewPage+0x180>)
c0de4cac:	4478      	add	r0, pc
c0de4cae:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4cb0:	e033      	b.n	c0de4d1a <displayReviewPage+0xd2>
c0de4cb2:	1e58      	subs	r0, r3, #1
c0de4cb4:	b2c0      	uxtb	r0, r0
c0de4cb6:	4281      	cmp	r1, r0
c0de4cb8:	d12e      	bne.n	c0de4d18 <displayReviewPage+0xd0>
c0de4cba:	a908      	add	r1, sp, #32
c0de4cbc:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4cbe:	2000      	movs	r0, #0
c0de4cc0:	2500      	movs	r5, #0
c0de4cc2:	f000 ffcb 	bl	c0de5c5c <getLastPageInfo>
c0de4cc6:	e028      	b.n	c0de4d1a <displayReviewPage+0xd2>
c0de4cc8:	eb09 0006 	add.w	r0, r9, r6
c0de4ccc:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4cd0:	06d2      	lsls	r2, r2, #27
c0de4cd2:	d535      	bpl.n	c0de4d40 <displayReviewPage+0xf8>
c0de4cd4:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4cd8:	bb90      	cbnz	r0, c0de4d40 <displayReviewPage+0xf8>
c0de4cda:	42b9      	cmp	r1, r7
c0de4cdc:	dc05      	bgt.n	c0de4cea <displayReviewPage+0xa2>
c0de4cde:	eb09 0006 	add.w	r0, r9, r6
c0de4ce2:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4ce6:	2808      	cmp	r0, #8
c0de4ce8:	d12a      	bne.n	c0de4d40 <displayReviewPage+0xf8>
c0de4cea:	2000      	movs	r0, #0
c0de4cec:	9006      	str	r0, [sp, #24]
c0de4cee:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4cf2:	eb09 0006 	add.w	r0, r9, r6
c0de4cf6:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4cfa:	f004 0008 	and.w	r0, r4, #8
c0de4cfe:	2a01      	cmp	r2, #1
c0de4d00:	d001      	beq.n	c0de4d06 <displayReviewPage+0xbe>
c0de4d02:	2901      	cmp	r1, #1
c0de4d04:	db43      	blt.n	c0de4d8e <displayReviewPage+0x146>
c0de4d06:	f040 0003 	orr.w	r0, r0, #3
c0de4d0a:	e042      	b.n	c0de4d92 <displayReviewPage+0x14a>
c0de4d0c:	eb09 0006 	add.w	r0, r9, r6
c0de4d10:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4d14:	9108      	str	r1, [sp, #32]
c0de4d16:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4d18:	2500      	movs	r5, #0
c0de4d1a:	2000      	movs	r0, #0
c0de4d1c:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4d1e:	9908      	ldr	r1, [sp, #32]
c0de4d20:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4ddc <displayReviewPage+0x194>)
c0de4d22:	b2c0      	uxtb	r0, r0
c0de4d24:	2300      	movs	r3, #0
c0de4d26:	9002      	str	r0, [sp, #8]
c0de4d28:	4620      	mov	r0, r4
c0de4d2a:	447e      	add	r6, pc
c0de4d2c:	e9cd 6300 	strd	r6, r3, [sp]
c0de4d30:	462b      	mov	r3, r5
c0de4d32:	f000 f875 	bl	c0de4e20 <drawStep>
c0de4d36:	b00b      	add	sp, #44	@ 0x2c
c0de4d38:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4d3c:	f001 bfff 	b.w	c0de6d3e <nbgl_refresh>
c0de4d40:	2200      	movs	r2, #0
c0de4d42:	eb09 0006 	add.w	r0, r9, r6
c0de4d46:	1bcf      	subs	r7, r1, r7
c0de4d48:	f10d 0c0c 	add.w	ip, sp, #12
c0de4d4c:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4d50:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4d54:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4d56:	ab08      	add	r3, sp, #32
c0de4d58:	aa07      	add	r2, sp, #28
c0de4d5a:	2d00      	cmp	r5, #0
c0de4d5c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4d60:	bf18      	it	ne
c0de4d62:	3f01      	subne	r7, #1
c0de4d64:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d66:	b2f9      	uxtb	r1, r7
c0de4d68:	ab09      	add	r3, sp, #36	@ 0x24
c0de4d6a:	f000 fcb7 	bl	c0de56dc <getPairData>
c0de4d6e:	9807      	ldr	r0, [sp, #28]
c0de4d70:	b140      	cbz	r0, c0de4d84 <displayReviewPage+0x13c>
c0de4d72:	eb09 0006 	add.w	r0, r9, r6
c0de4d76:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4d7a:	4917      	ldr	r1, [pc, #92]	@ (c0de4dd8 <displayReviewPage+0x190>)
c0de4d7c:	4479      	add	r1, pc
c0de4d7e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4d80:	2001      	movs	r0, #1
c0de4d82:	e002      	b.n	c0de4d8a <displayReviewPage+0x142>
c0de4d84:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4d88:	0040      	lsls	r0, r0, #1
c0de4d8a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4d8c:	e7c6      	b.n	c0de4d1c <displayReviewPage+0xd4>
c0de4d8e:	f040 0001 	orr.w	r0, r0, #1
c0de4d92:	490e      	ldr	r1, [pc, #56]	@ (c0de4dcc <displayReviewPage+0x184>)
c0de4d94:	2200      	movs	r2, #0
c0de4d96:	4479      	add	r1, pc
c0de4d98:	9103      	str	r1, [sp, #12]
c0de4d9a:	490d      	ldr	r1, [pc, #52]	@ (c0de4dd0 <displayReviewPage+0x188>)
c0de4d9c:	4479      	add	r1, pc
c0de4d9e:	9105      	str	r1, [sp, #20]
c0de4da0:	2100      	movs	r1, #0
c0de4da2:	9100      	str	r1, [sp, #0]
c0de4da4:	490b      	ldr	r1, [pc, #44]	@ (c0de4dd4 <displayReviewPage+0x18c>)
c0de4da6:	ab03      	add	r3, sp, #12
c0de4da8:	4479      	add	r1, pc
c0de4daa:	f7ff fbd5 	bl	c0de4558 <nbgl_stepDrawCenteredInfo>
c0de4dae:	eb09 0406 	add.w	r4, r9, r6
c0de4db2:	f001 ffc4 	bl	c0de6d3e <nbgl_refresh>
c0de4db6:	2001      	movs	r0, #1
c0de4db8:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4dbc:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4dc0:	b00b      	add	sp, #44	@ 0x2c
c0de4dc2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4dc4:	00000744 	.word	0x00000744
c0de4dc8:	00003027 	.word	0x00003027
c0de4dcc:	00002d0b 	.word	0x00002d0b
c0de4dd0:	00002b1a 	.word	0x00002b1a
c0de4dd4:	000010bd 	.word	0x000010bd
c0de4dd8:	000011a1 	.word	0x000011a1
c0de4ddc:	00001267 	.word	0x00001267

c0de4de0 <nbgl_useCaseStatus>:
c0de4de0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4de2:	4605      	mov	r5, r0
c0de4de4:	480c      	ldr	r0, [pc, #48]	@ (c0de4e18 <nbgl_useCaseStatus+0x38>)
c0de4de6:	2140      	movs	r1, #64	@ 0x40
c0de4de8:	4614      	mov	r4, r2
c0de4dea:	f001 fa52 	bl	c0de6292 <OUTLINED_FUNCTION_2>
c0de4dee:	2009      	movs	r0, #9
c0de4df0:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4df2:	462a      	mov	r2, r5
c0de4df4:	2300      	movs	r3, #0
c0de4df6:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4dfa:	2001      	movs	r0, #1
c0de4dfc:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4e00:	2000      	movs	r0, #0
c0de4e02:	4906      	ldr	r1, [pc, #24]	@ (c0de4e1c <nbgl_useCaseStatus+0x3c>)
c0de4e04:	9002      	str	r0, [sp, #8]
c0de4e06:	4479      	add	r1, pc
c0de4e08:	e9cd 1000 	strd	r1, r0, [sp]
c0de4e0c:	2040      	movs	r0, #64	@ 0x40
c0de4e0e:	2100      	movs	r1, #0
c0de4e10:	f000 f806 	bl	c0de4e20 <drawStep>
c0de4e14:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4e16:	bf00      	nop
c0de4e18:	00000744 	.word	0x00000744
c0de4e1c:	0000019f 	.word	0x0000019f

c0de4e20 <drawStep>:
c0de4e20:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e24:	b09a      	sub	sp, #104	@ 0x68
c0de4e26:	4688      	mov	r8, r1
c0de4e28:	4604      	mov	r4, r0
c0de4e2a:	a80c      	add	r0, sp, #48	@ 0x30
c0de4e2c:	2138      	movs	r1, #56	@ 0x38
c0de4e2e:	461d      	mov	r5, r3
c0de4e30:	4616      	mov	r6, r2
c0de4e32:	f002 fc9b 	bl	c0de776c <__aeabi_memclr>
c0de4e36:	2700      	movs	r7, #0
c0de4e38:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4e3c:	4856      	ldr	r0, [pc, #344]	@ (c0de4f98 <drawStep+0x178>)
c0de4e3e:	4478      	add	r0, pc
c0de4e40:	f002 f988 	bl	c0de7154 <pic>
c0de4e44:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de4f94 <drawStep+0x174>
c0de4e48:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4e4c:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4e4e:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4e52:	eb09 000b 	add.w	r0, r9, fp
c0de4e56:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4e5a:	2802      	cmp	r0, #2
c0de4e5c:	d30b      	bcc.n	c0de4e76 <drawStep+0x56>
c0de4e5e:	eb09 010b 	add.w	r1, r9, fp
c0de4e62:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4e66:	b129      	cbz	r1, c0de4e74 <drawStep+0x54>
c0de4e68:	3801      	subs	r0, #1
c0de4e6a:	2703      	movs	r7, #3
c0de4e6c:	4288      	cmp	r0, r1
c0de4e6e:	bf08      	it	eq
c0de4e70:	2702      	moveq	r7, #2
c0de4e72:	e000      	b.n	c0de4e76 <drawStep+0x56>
c0de4e74:	2701      	movs	r7, #1
c0de4e76:	eb09 000b 	add.w	r0, r9, fp
c0de4e7a:	ea47 0204 	orr.w	r2, r7, r4
c0de4e7e:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4e82:	4614      	mov	r4, r2
c0de4e84:	2901      	cmp	r1, #1
c0de4e86:	bf88      	it	hi
c0de4e88:	f044 0402 	orrhi.w	r4, r4, #2
c0de4e8c:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4e8e:	2900      	cmp	r1, #0
c0de4e90:	bf08      	it	eq
c0de4e92:	4614      	moveq	r4, r2
c0de4e94:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4e98:	2806      	cmp	r0, #6
c0de4e9a:	f040 0108 	orr.w	r1, r0, #8
c0de4e9e:	bf18      	it	ne
c0de4ea0:	4614      	movne	r4, r2
c0de4ea2:	2909      	cmp	r1, #9
c0de4ea4:	bf0c      	ite	eq
c0de4ea6:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4eaa:	f04f 0a00 	movne.w	sl, #0
c0de4eae:	280a      	cmp	r0, #10
c0de4eb0:	d105      	bne.n	c0de4ebe <drawStep+0x9e>
c0de4eb2:	eb09 000b 	add.w	r0, r9, fp
c0de4eb6:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4eb8:	b108      	cbz	r0, c0de4ebe <drawStep+0x9e>
c0de4eba:	f7ff fc73 	bl	c0de47a4 <nbgl_stepRelease>
c0de4ebe:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4ec0:	b1b6      	cbz	r6, c0de4ef0 <drawStep+0xd0>
c0de4ec2:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4ec4:	f1b8 0f00 	cmp.w	r8, #0
c0de4ec8:	d12c      	bne.n	c0de4f24 <drawStep+0x104>
c0de4eca:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4ecc:	2802      	cmp	r0, #2
c0de4ece:	d029      	beq.n	c0de4f24 <drawStep+0x104>
c0de4ed0:	2201      	movs	r2, #1
c0de4ed2:	4633      	mov	r3, r6
c0de4ed4:	2801      	cmp	r0, #1
c0de4ed6:	bf08      	it	eq
c0de4ed8:	2202      	moveq	r2, #2
c0de4eda:	4620      	mov	r0, r4
c0de4edc:	2d00      	cmp	r5, #0
c0de4ede:	bf08      	it	eq
c0de4ee0:	462a      	moveq	r2, r5
c0de4ee2:	e9cd 5200 	strd	r5, r2, [sp]
c0de4ee6:	9702      	str	r7, [sp, #8]
c0de4ee8:	4652      	mov	r2, sl
c0de4eea:	f7ff f9ef 	bl	c0de42cc <nbgl_stepDrawText>
c0de4eee:	e043      	b.n	c0de4f78 <drawStep+0x158>
c0de4ef0:	eb09 000b 	add.w	r0, r9, fp
c0de4ef4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4ef8:	a903      	add	r1, sp, #12
c0de4efa:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4efc:	f000 fbaa 	bl	c0de5654 <getContentElemAtIdx>
c0de4f00:	b330      	cbz	r0, c0de4f50 <drawStep+0x130>
c0de4f02:	7801      	ldrb	r1, [r0, #0]
c0de4f04:	2400      	movs	r4, #0
c0de4f06:	290a      	cmp	r1, #10
c0de4f08:	d024      	beq.n	c0de4f54 <drawStep+0x134>
c0de4f0a:	2909      	cmp	r1, #9
c0de4f0c:	d135      	bne.n	c0de4f7a <drawStep+0x15a>
c0de4f0e:	f001 f9d0 	bl	c0de62b2 <OUTLINED_FUNCTION_5>
c0de4f12:	4922      	ldr	r1, [pc, #136]	@ (c0de4f9c <drawStep+0x17c>)
c0de4f14:	4479      	add	r1, pc
c0de4f16:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4f18:	7941      	ldrb	r1, [r0, #5]
c0de4f1a:	7980      	ldrb	r0, [r0, #6]
c0de4f1c:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4f20:	1c48      	adds	r0, r1, #1
c0de4f22:	e020      	b.n	c0de4f66 <drawStep+0x146>
c0de4f24:	2000      	movs	r0, #0
c0de4f26:	9603      	str	r6, [sp, #12]
c0de4f28:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4f2c:	9504      	str	r5, [sp, #16]
c0de4f2e:	4652      	mov	r2, sl
c0de4f30:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4f34:	eb09 000b 	add.w	r0, r9, fp
c0de4f38:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4f3a:	4328      	orrs	r0, r5
c0de4f3c:	bf18      	it	ne
c0de4f3e:	2001      	movne	r0, #1
c0de4f40:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4f44:	9700      	str	r7, [sp, #0]
c0de4f46:	ab03      	add	r3, sp, #12
c0de4f48:	4620      	mov	r0, r4
c0de4f4a:	f7ff fb05 	bl	c0de4558 <nbgl_stepDrawCenteredInfo>
c0de4f4e:	e013      	b.n	c0de4f78 <drawStep+0x158>
c0de4f50:	2400      	movs	r4, #0
c0de4f52:	e012      	b.n	c0de4f7a <drawStep+0x15a>
c0de4f54:	f001 f9ad 	bl	c0de62b2 <OUTLINED_FUNCTION_5>
c0de4f58:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de4f5c:	4910      	ldr	r1, [pc, #64]	@ (c0de4fa0 <drawStep+0x180>)
c0de4f5e:	7a00      	ldrb	r0, [r0, #8]
c0de4f60:	4479      	add	r1, pc
c0de4f62:	3001      	adds	r0, #1
c0de4f64:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4f66:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de4f6a:	4651      	mov	r1, sl
c0de4f6c:	463b      	mov	r3, r7
c0de4f6e:	480d      	ldr	r0, [pc, #52]	@ (c0de4fa4 <drawStep+0x184>)
c0de4f70:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4f72:	4478      	add	r0, pc
c0de4f74:	f7ff fb80 	bl	c0de4678 <nbgl_stepDrawMenuList>
c0de4f78:	4604      	mov	r4, r0
c0de4f7a:	eb09 000b 	add.w	r0, r9, fp
c0de4f7e:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4f82:	280a      	cmp	r0, #10
c0de4f84:	bf04      	itt	eq
c0de4f86:	eb09 000b 	addeq.w	r0, r9, fp
c0de4f8a:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de4f8c:	b01a      	add	sp, #104	@ 0x68
c0de4f8e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4f92:	bf00      	nop
c0de4f94:	00000744 	.word	0x00000744
c0de4f98:	000012df 	.word	0x000012df
c0de4f9c:	00001219 	.word	0x00001219
c0de4fa0:	000011cd 	.word	0x000011cd
c0de4fa4:	0000121f 	.word	0x0000121f

c0de4fa8 <statusButtonCallback>:
c0de4fa8:	f041 0004 	orr.w	r0, r1, #4
c0de4fac:	2804      	cmp	r0, #4
c0de4fae:	d001      	beq.n	c0de4fb4 <statusButtonCallback+0xc>
c0de4fb0:	2901      	cmp	r1, #1
c0de4fb2:	d104      	bne.n	c0de4fbe <statusButtonCallback+0x16>
c0de4fb4:	4802      	ldr	r0, [pc, #8]	@ (c0de4fc0 <statusButtonCallback+0x18>)
c0de4fb6:	4448      	add	r0, r9
c0de4fb8:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4fba:	b100      	cbz	r0, c0de4fbe <statusButtonCallback+0x16>
c0de4fbc:	4700      	bx	r0
c0de4fbe:	4770      	bx	lr
c0de4fc0:	00000744 	.word	0x00000744

c0de4fc4 <nbgl_useCaseReviewStatus>:
c0de4fc4:	460a      	mov	r2, r1
c0de4fc6:	b198      	cbz	r0, c0de4ff0 <nbgl_useCaseReviewStatus+0x2c>
c0de4fc8:	2801      	cmp	r0, #1
c0de4fca:	d016      	beq.n	c0de4ffa <nbgl_useCaseReviewStatus+0x36>
c0de4fcc:	2802      	cmp	r0, #2
c0de4fce:	d019      	beq.n	c0de5004 <nbgl_useCaseReviewStatus+0x40>
c0de4fd0:	2803      	cmp	r0, #3
c0de4fd2:	d01c      	beq.n	c0de500e <nbgl_useCaseReviewStatus+0x4a>
c0de4fd4:	2804      	cmp	r0, #4
c0de4fd6:	d01f      	beq.n	c0de5018 <nbgl_useCaseReviewStatus+0x54>
c0de4fd8:	2807      	cmp	r0, #7
c0de4fda:	d022      	beq.n	c0de5022 <nbgl_useCaseReviewStatus+0x5e>
c0de4fdc:	2806      	cmp	r0, #6
c0de4fde:	d025      	beq.n	c0de502c <nbgl_useCaseReviewStatus+0x68>
c0de4fe0:	2805      	cmp	r0, #5
c0de4fe2:	bf18      	it	ne
c0de4fe4:	4770      	bxne	lr
c0de4fe6:	4815      	ldr	r0, [pc, #84]	@ (c0de503c <nbgl_useCaseReviewStatus+0x78>)
c0de4fe8:	2100      	movs	r1, #0
c0de4fea:	4478      	add	r0, pc
c0de4fec:	f7ff bef8 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de4ff0:	4813      	ldr	r0, [pc, #76]	@ (c0de5040 <nbgl_useCaseReviewStatus+0x7c>)
c0de4ff2:	2101      	movs	r1, #1
c0de4ff4:	4478      	add	r0, pc
c0de4ff6:	f7ff bef3 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de4ffa:	4812      	ldr	r0, [pc, #72]	@ (c0de5044 <nbgl_useCaseReviewStatus+0x80>)
c0de4ffc:	2100      	movs	r1, #0
c0de4ffe:	4478      	add	r0, pc
c0de5000:	f7ff beee 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de5004:	4810      	ldr	r0, [pc, #64]	@ (c0de5048 <nbgl_useCaseReviewStatus+0x84>)
c0de5006:	2101      	movs	r1, #1
c0de5008:	4478      	add	r0, pc
c0de500a:	f7ff bee9 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de500e:	480f      	ldr	r0, [pc, #60]	@ (c0de504c <nbgl_useCaseReviewStatus+0x88>)
c0de5010:	2100      	movs	r1, #0
c0de5012:	4478      	add	r0, pc
c0de5014:	f7ff bee4 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de5018:	4807      	ldr	r0, [pc, #28]	@ (c0de5038 <nbgl_useCaseReviewStatus+0x74>)
c0de501a:	2101      	movs	r1, #1
c0de501c:	4478      	add	r0, pc
c0de501e:	f7ff bedf 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de5022:	480c      	ldr	r0, [pc, #48]	@ (c0de5054 <nbgl_useCaseReviewStatus+0x90>)
c0de5024:	2100      	movs	r1, #0
c0de5026:	4478      	add	r0, pc
c0de5028:	f7ff beda 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de502c:	4808      	ldr	r0, [pc, #32]	@ (c0de5050 <nbgl_useCaseReviewStatus+0x8c>)
c0de502e:	2101      	movs	r1, #1
c0de5030:	4478      	add	r0, pc
c0de5032:	f7ff bed5 	b.w	c0de4de0 <nbgl_useCaseStatus>
c0de5036:	bf00      	nop
c0de5038:	00002a50 	.word	0x00002a50
c0de503c:	00002aa4 	.word	0x00002aa4
c0de5040:	00002b3b 	.word	0x00002b3b
c0de5044:	00002d00 	.word	0x00002d00
c0de5048:	00002b9a 	.word	0x00002b9a
c0de504c:	00002c96 	.word	0x00002c96
c0de5050:	00002abf 	.word	0x00002abf
c0de5054:	00002bf9 	.word	0x00002bf9

c0de5058 <displayStreamingReviewPage>:
c0de5058:	b570      	push	{r4, r5, r6, lr}
c0de505a:	b08c      	sub	sp, #48	@ 0x30
c0de505c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de51c8 <displayStreamingReviewPage+0x170>)
c0de505e:	2100      	movs	r1, #0
c0de5060:	4604      	mov	r4, r0
c0de5062:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5066:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de506a:	eb09 0005 	add.w	r0, r9, r5
c0de506e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5070:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de5074:	2806      	cmp	r0, #6
c0de5076:	d015      	beq.n	c0de50a4 <displayStreamingReviewPage+0x4c>
c0de5078:	2805      	cmp	r0, #5
c0de507a:	d13d      	bne.n	c0de50f8 <displayStreamingReviewPage+0xa0>
c0de507c:	eb09 0205 	add.w	r2, r9, r5
c0de5080:	2101      	movs	r1, #1
c0de5082:	2302      	movs	r3, #2
c0de5084:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de5086:	2800      	cmp	r0, #0
c0de5088:	bf08      	it	eq
c0de508a:	21ff      	moveq	r1, #255	@ 0xff
c0de508c:	bf08      	it	eq
c0de508e:	2301      	moveq	r3, #1
c0de5090:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de5094:	4293      	cmp	r3, r2
c0de5096:	dd3b      	ble.n	c0de5110 <displayStreamingReviewPage+0xb8>
c0de5098:	b2d3      	uxtb	r3, r2
c0de509a:	2b00      	cmp	r3, #0
c0de509c:	d063      	beq.n	c0de5166 <displayStreamingReviewPage+0x10e>
c0de509e:	4291      	cmp	r1, r2
c0de50a0:	d066      	beq.n	c0de5170 <displayStreamingReviewPage+0x118>
c0de50a2:	e066      	b.n	c0de5172 <displayStreamingReviewPage+0x11a>
c0de50a4:	eb09 0005 	add.w	r0, r9, r5
c0de50a8:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de50ac:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de50ae:	7a02      	ldrb	r2, [r0, #8]
c0de50b0:	4291      	cmp	r1, r2
c0de50b2:	da2d      	bge.n	c0de5110 <displayStreamingReviewPage+0xb8>
c0de50b4:	eb09 0205 	add.w	r2, r9, r5
c0de50b8:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de50ba:	b3cb      	cbz	r3, c0de5130 <displayStreamingReviewPage+0xd8>
c0de50bc:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de50c0:	bbb2      	cbnz	r2, c0de5130 <displayStreamingReviewPage+0xd8>
c0de50c2:	eb09 0205 	add.w	r2, r9, r5
c0de50c6:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de50ca:	2a01      	cmp	r2, #1
c0de50cc:	d807      	bhi.n	c0de50de <displayStreamingReviewPage+0x86>
c0de50ce:	2900      	cmp	r1, #0
c0de50d0:	dc05      	bgt.n	c0de50de <displayStreamingReviewPage+0x86>
c0de50d2:	eb09 0305 	add.w	r3, r9, r5
c0de50d6:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de50da:	2b08      	cmp	r3, #8
c0de50dc:	d128      	bne.n	c0de5130 <displayStreamingReviewPage+0xd8>
c0de50de:	2000      	movs	r0, #0
c0de50e0:	9007      	str	r0, [sp, #28]
c0de50e2:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de50e6:	f004 0008 	and.w	r0, r4, #8
c0de50ea:	2a01      	cmp	r2, #1
c0de50ec:	d001      	beq.n	c0de50f2 <displayStreamingReviewPage+0x9a>
c0de50ee:	2901      	cmp	r1, #1
c0de50f0:	db50      	blt.n	c0de5194 <displayStreamingReviewPage+0x13c>
c0de50f2:	f040 0003 	orr.w	r0, r0, #3
c0de50f6:	e04f      	b.n	c0de5198 <displayStreamingReviewPage+0x140>
c0de50f8:	eb09 0005 	add.w	r0, r9, r5
c0de50fc:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5100:	b180      	cbz	r0, c0de5124 <displayStreamingReviewPage+0xcc>
c0de5102:	a909      	add	r1, sp, #36	@ 0x24
c0de5104:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5106:	2000      	movs	r0, #0
c0de5108:	2500      	movs	r5, #0
c0de510a:	f000 fda7 	bl	c0de5c5c <getLastPageInfo>
c0de510e:	e031      	b.n	c0de5174 <displayStreamingReviewPage+0x11c>
c0de5110:	eb09 0005 	add.w	r0, r9, r5
c0de5114:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5116:	2900      	cmp	r1, #0
c0de5118:	d053      	beq.n	c0de51c2 <displayStreamingReviewPage+0x16a>
c0de511a:	2001      	movs	r0, #1
c0de511c:	b00c      	add	sp, #48	@ 0x30
c0de511e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5122:	4708      	bx	r1
c0de5124:	a909      	add	r1, sp, #36	@ 0x24
c0de5126:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5128:	2001      	movs	r0, #1
c0de512a:	f000 fd97 	bl	c0de5c5c <getLastPageInfo>
c0de512e:	e020      	b.n	c0de5172 <displayStreamingReviewPage+0x11a>
c0de5130:	2300      	movs	r3, #0
c0de5132:	eb09 0205 	add.w	r2, r9, r5
c0de5136:	b2c9      	uxtb	r1, r1
c0de5138:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de513c:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5140:	ab09      	add	r3, sp, #36	@ 0x24
c0de5142:	ad08      	add	r5, sp, #32
c0de5144:	f10d 020f 	add.w	r2, sp, #15
c0de5148:	e9cd 5300 	strd	r5, r3, [sp]
c0de514c:	9202      	str	r2, [sp, #8]
c0de514e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5150:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5152:	f000 fac3 	bl	c0de56dc <getPairData>
c0de5156:	9808      	ldr	r0, [sp, #32]
c0de5158:	2800      	cmp	r0, #0
c0de515a:	bf12      	itee	ne
c0de515c:	2501      	movne	r5, #1
c0de515e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5162:	0045      	lsleq	r5, r0, #1
c0de5164:	e006      	b.n	c0de5174 <displayStreamingReviewPage+0x11c>
c0de5166:	eb09 0005 	add.w	r0, r9, r5
c0de516a:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de516e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de5170:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5172:	2500      	movs	r5, #0
c0de5174:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de5176:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de517a:	4e17      	ldr	r6, [pc, #92]	@ (c0de51d8 <displayStreamingReviewPage+0x180>)
c0de517c:	b2e8      	uxtb	r0, r5
c0de517e:	2500      	movs	r5, #0
c0de5180:	9002      	str	r0, [sp, #8]
c0de5182:	4620      	mov	r0, r4
c0de5184:	447e      	add	r6, pc
c0de5186:	f001 f897 	bl	c0de62b8 <OUTLINED_FUNCTION_6>
c0de518a:	b00c      	add	sp, #48	@ 0x30
c0de518c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5190:	f001 bdd5 	b.w	c0de6d3e <nbgl_refresh>
c0de5194:	f040 0001 	orr.w	r0, r0, #1
c0de5198:	490c      	ldr	r1, [pc, #48]	@ (c0de51cc <displayStreamingReviewPage+0x174>)
c0de519a:	2200      	movs	r2, #0
c0de519c:	4479      	add	r1, pc
c0de519e:	9104      	str	r1, [sp, #16]
c0de51a0:	490b      	ldr	r1, [pc, #44]	@ (c0de51d0 <displayStreamingReviewPage+0x178>)
c0de51a2:	4479      	add	r1, pc
c0de51a4:	9106      	str	r1, [sp, #24]
c0de51a6:	2100      	movs	r1, #0
c0de51a8:	9100      	str	r1, [sp, #0]
c0de51aa:	490a      	ldr	r1, [pc, #40]	@ (c0de51d4 <displayStreamingReviewPage+0x17c>)
c0de51ac:	ab04      	add	r3, sp, #16
c0de51ae:	4479      	add	r1, pc
c0de51b0:	f7ff f9d2 	bl	c0de4558 <nbgl_stepDrawCenteredInfo>
c0de51b4:	eb09 0405 	add.w	r4, r9, r5
c0de51b8:	f001 fdc1 	bl	c0de6d3e <nbgl_refresh>
c0de51bc:	2001      	movs	r0, #1
c0de51be:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de51c2:	b00c      	add	sp, #48	@ 0x30
c0de51c4:	bd70      	pop	{r4, r5, r6, pc}
c0de51c6:	bf00      	nop
c0de51c8:	00000744 	.word	0x00000744
c0de51cc:	00002905 	.word	0x00002905
c0de51d0:	00002714 	.word	0x00002714
c0de51d4:	00000cb7 	.word	0x00000cb7
c0de51d8:	00001079 	.word	0x00001079

c0de51dc <nbgl_useCaseSpinner>:
c0de51dc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de51de:	4604      	mov	r4, r0
c0de51e0:	480b      	ldr	r0, [pc, #44]	@ (c0de5210 <nbgl_useCaseSpinner+0x34>)
c0de51e2:	2140      	movs	r1, #64	@ 0x40
c0de51e4:	f001 f85b 	bl	c0de629e <OUTLINED_FUNCTION_3>
c0de51e8:	2001      	movs	r0, #1
c0de51ea:	4622      	mov	r2, r4
c0de51ec:	2300      	movs	r3, #0
c0de51ee:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de51f2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de51f6:	2000      	movs	r0, #0
c0de51f8:	e9cd 0000 	strd	r0, r0, [sp]
c0de51fc:	9002      	str	r0, [sp, #8]
c0de51fe:	2000      	movs	r0, #0
c0de5200:	4904      	ldr	r1, [pc, #16]	@ (c0de5214 <nbgl_useCaseSpinner+0x38>)
c0de5202:	4479      	add	r1, pc
c0de5204:	f7ff fe0c 	bl	c0de4e20 <drawStep>
c0de5208:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de520c:	f001 bd97 	b.w	c0de6d3e <nbgl_refresh>
c0de5210:	00000744 	.word	0x00000744
c0de5214:	000027ab 	.word	0x000027ab

c0de5218 <nbgl_useCaseChoice>:
c0de5218:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de521c:	4607      	mov	r7, r0
c0de521e:	480b      	ldr	r0, [pc, #44]	@ (c0de524c <nbgl_useCaseChoice+0x34>)
c0de5220:	f001 f822 	bl	c0de6268 <OUTLINED_FUNCTION_0>
c0de5224:	9807      	ldr	r0, [sp, #28]
c0de5226:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de5228:	9806      	ldr	r0, [sp, #24]
c0de522a:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de522e:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de5232:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de5234:	2008      	movs	r0, #8
c0de5236:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de523a:	2004      	movs	r0, #4
c0de523c:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de5240:	2000      	movs	r0, #0
c0de5242:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5246:	f000 b803 	b.w	c0de5250 <displayChoicePage>
c0de524a:	bf00      	nop
c0de524c:	00000744 	.word	0x00000744

c0de5250 <displayChoicePage>:
c0de5250:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5252:	4b28      	ldr	r3, [pc, #160]	@ (c0de52f4 <displayChoicePage+0xa4>)
c0de5254:	2200      	movs	r2, #0
c0de5256:	eb09 0103 	add.w	r1, r9, r3
c0de525a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de525c:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de5260:	b179      	cbz	r1, c0de5282 <displayChoicePage+0x32>
c0de5262:	2902      	cmp	r1, #2
c0de5264:	d021      	beq.n	c0de52aa <displayChoicePage+0x5a>
c0de5266:	2901      	cmp	r1, #1
c0de5268:	d10f      	bne.n	c0de528a <displayChoicePage+0x3a>
c0de526a:	eb09 0103 	add.w	r1, r9, r3
c0de526e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5270:	b1a1      	cbz	r1, c0de529c <displayChoicePage+0x4c>
c0de5272:	eb09 0203 	add.w	r2, r9, r3
c0de5276:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de5278:	b182      	cbz	r2, c0de529c <displayChoicePage+0x4c>
c0de527a:	eb09 0103 	add.w	r1, r9, r3
c0de527e:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de5280:	e029      	b.n	c0de52d6 <displayChoicePage+0x86>
c0de5282:	eb09 0103 	add.w	r1, r9, r3
c0de5286:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5288:	e01d      	b.n	c0de52c6 <displayChoicePage+0x76>
c0de528a:	4a1d      	ldr	r2, [pc, #116]	@ (c0de5300 <displayChoicePage+0xb0>)
c0de528c:	eb09 0103 	add.w	r1, r9, r3
c0de5290:	447a      	add	r2, pc
c0de5292:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5294:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de5296:	491b      	ldr	r1, [pc, #108]	@ (c0de5304 <displayChoicePage+0xb4>)
c0de5298:	4479      	add	r1, pc
c0de529a:	e018      	b.n	c0de52ce <displayChoicePage+0x7e>
c0de529c:	0702      	lsls	r2, r0, #28
c0de529e:	d40d      	bmi.n	c0de52bc <displayChoicePage+0x6c>
c0de52a0:	eb09 0103 	add.w	r1, r9, r3
c0de52a4:	2202      	movs	r2, #2
c0de52a6:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de52aa:	4a13      	ldr	r2, [pc, #76]	@ (c0de52f8 <displayChoicePage+0xa8>)
c0de52ac:	eb09 0103 	add.w	r1, r9, r3
c0de52b0:	447a      	add	r2, pc
c0de52b2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52b4:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de52b6:	4911      	ldr	r1, [pc, #68]	@ (c0de52fc <displayChoicePage+0xac>)
c0de52b8:	4479      	add	r1, pc
c0de52ba:	e008      	b.n	c0de52ce <displayChoicePage+0x7e>
c0de52bc:	eb09 0203 	add.w	r2, r9, r3
c0de52c0:	2400      	movs	r4, #0
c0de52c2:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de52c6:	eb09 0203 	add.w	r2, r9, r3
c0de52ca:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de52cc:	b109      	cbz	r1, c0de52d2 <displayChoicePage+0x82>
c0de52ce:	2300      	movs	r3, #0
c0de52d0:	e003      	b.n	c0de52da <displayChoicePage+0x8a>
c0de52d2:	eb09 0103 	add.w	r1, r9, r3
c0de52d6:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de52d8:	2100      	movs	r1, #0
c0de52da:	4d0b      	ldr	r5, [pc, #44]	@ (c0de5308 <displayChoicePage+0xb8>)
c0de52dc:	2400      	movs	r4, #0
c0de52de:	9402      	str	r4, [sp, #8]
c0de52e0:	447d      	add	r5, pc
c0de52e2:	e9cd 5400 	strd	r5, r4, [sp]
c0de52e6:	f7ff fd9b 	bl	c0de4e20 <drawStep>
c0de52ea:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de52ee:	f001 bd26 	b.w	c0de6d3e <nbgl_refresh>
c0de52f2:	bf00      	nop
c0de52f4:	00000744 	.word	0x00000744
c0de52f8:	00000f71 	.word	0x00000f71
c0de52fc:	00002732 	.word	0x00002732
c0de5300:	00000fa5 	.word	0x00000fa5
c0de5304:	000026d6 	.word	0x000026d6
c0de5308:	00000f69 	.word	0x00000f69

c0de530c <getContentAtIdx>:
c0de530c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de530e:	b087      	sub	sp, #28
c0de5310:	460d      	mov	r5, r1
c0de5312:	4606      	mov	r6, r0
c0de5314:	a801      	add	r0, sp, #4
c0de5316:	2118      	movs	r1, #24
c0de5318:	4614      	mov	r4, r2
c0de531a:	f002 fa27 	bl	c0de776c <__aeabi_memclr>
c0de531e:	2d00      	cmp	r5, #0
c0de5320:	d428      	bmi.n	c0de5374 <getContentAtIdx+0x68>
c0de5322:	7a30      	ldrb	r0, [r6, #8]
c0de5324:	4285      	cmp	r5, r0
c0de5326:	da25      	bge.n	c0de5374 <getContentAtIdx+0x68>
c0de5328:	7830      	ldrb	r0, [r6, #0]
c0de532a:	b338      	cbz	r0, c0de537c <getContentAtIdx+0x70>
c0de532c:	b314      	cbz	r4, c0de5374 <getContentAtIdx+0x68>
c0de532e:	4620      	mov	r0, r4
c0de5330:	2138      	movs	r1, #56	@ 0x38
c0de5332:	f002 fa1b 	bl	c0de776c <__aeabi_memclr>
c0de5336:	4821      	ldr	r0, [pc, #132]	@ (c0de53bc <getContentAtIdx+0xb0>)
c0de5338:	4448      	add	r0, r9
c0de533a:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de533c:	b342      	cbz	r2, c0de5390 <getContentAtIdx+0x84>
c0de533e:	b2e8      	uxtb	r0, r5
c0de5340:	ad01      	add	r5, sp, #4
c0de5342:	4629      	mov	r1, r5
c0de5344:	4790      	blx	r2
c0de5346:	b1a8      	cbz	r0, c0de5374 <getContentAtIdx+0x68>
c0de5348:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de534c:	280a      	cmp	r0, #10
c0de534e:	7020      	strb	r0, [r4, #0]
c0de5350:	d028      	beq.n	c0de53a4 <getContentAtIdx+0x98>
c0de5352:	2803      	cmp	r0, #3
c0de5354:	d008      	beq.n	c0de5368 <getContentAtIdx+0x5c>
c0de5356:	2804      	cmp	r0, #4
c0de5358:	d02a      	beq.n	c0de53b0 <getContentAtIdx+0xa4>
c0de535a:	2807      	cmp	r0, #7
c0de535c:	d01d      	beq.n	c0de539a <getContentAtIdx+0x8e>
c0de535e:	2808      	cmp	r0, #8
c0de5360:	d002      	beq.n	c0de5368 <getContentAtIdx+0x5c>
c0de5362:	2809      	cmp	r0, #9
c0de5364:	d019      	beq.n	c0de539a <getContentAtIdx+0x8e>
c0de5366:	b928      	cbnz	r0, c0de5374 <getContentAtIdx+0x68>
c0de5368:	1d28      	adds	r0, r5, #4
c0de536a:	1d21      	adds	r1, r4, #4
c0de536c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5370:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5372:	e000      	b.n	c0de5376 <getContentAtIdx+0x6a>
c0de5374:	2400      	movs	r4, #0
c0de5376:	4620      	mov	r0, r4
c0de5378:	b007      	add	sp, #28
c0de537a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de537c:	6871      	ldr	r1, [r6, #4]
c0de537e:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5382:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5386:	b007      	add	sp, #28
c0de5388:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de538c:	f001 bee2 	b.w	c0de7154 <pic>
c0de5390:	6872      	ldr	r2, [r6, #4]
c0de5392:	b2e8      	uxtb	r0, r5
c0de5394:	4621      	mov	r1, r4
c0de5396:	4790      	blx	r2
c0de5398:	e7ed      	b.n	c0de5376 <getContentAtIdx+0x6a>
c0de539a:	9802      	ldr	r0, [sp, #8]
c0de539c:	9903      	ldr	r1, [sp, #12]
c0de539e:	6060      	str	r0, [r4, #4]
c0de53a0:	60a1      	str	r1, [r4, #8]
c0de53a2:	e7e8      	b.n	c0de5376 <getContentAtIdx+0x6a>
c0de53a4:	1d28      	adds	r0, r5, #4
c0de53a6:	1d21      	adds	r1, r4, #4
c0de53a8:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de53ac:	c12c      	stmia	r1!, {r2, r3, r5}
c0de53ae:	e7e2      	b.n	c0de5376 <getContentAtIdx+0x6a>
c0de53b0:	1d28      	adds	r0, r5, #4
c0de53b2:	1d21      	adds	r1, r4, #4
c0de53b4:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de53b8:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de53ba:	e7dc      	b.n	c0de5376 <getContentAtIdx+0x6a>
c0de53bc:	00000744 	.word	0x00000744

c0de53c0 <getContentNbElement>:
c0de53c0:	7802      	ldrb	r2, [r0, #0]
c0de53c2:	2101      	movs	r1, #1
c0de53c4:	b1a2      	cbz	r2, c0de53f0 <getContentNbElement+0x30>
c0de53c6:	2a03      	cmp	r2, #3
c0de53c8:	d012      	beq.n	c0de53f0 <getContentNbElement+0x30>
c0de53ca:	2a0a      	cmp	r2, #10
c0de53cc:	d007      	beq.n	c0de53de <getContentNbElement+0x1e>
c0de53ce:	2a07      	cmp	r2, #7
c0de53d0:	d007      	beq.n	c0de53e2 <getContentNbElement+0x22>
c0de53d2:	2a08      	cmp	r2, #8
c0de53d4:	d007      	beq.n	c0de53e6 <getContentNbElement+0x26>
c0de53d6:	2a09      	cmp	r2, #9
c0de53d8:	d007      	beq.n	c0de53ea <getContentNbElement+0x2a>
c0de53da:	2a04      	cmp	r2, #4
c0de53dc:	d107      	bne.n	c0de53ee <getContentNbElement+0x2e>
c0de53de:	7b01      	ldrb	r1, [r0, #12]
c0de53e0:	e006      	b.n	c0de53f0 <getContentNbElement+0x30>
c0de53e2:	7a01      	ldrb	r1, [r0, #8]
c0de53e4:	e004      	b.n	c0de53f0 <getContentNbElement+0x30>
c0de53e6:	7c01      	ldrb	r1, [r0, #16]
c0de53e8:	e002      	b.n	c0de53f0 <getContentNbElement+0x30>
c0de53ea:	7a41      	ldrb	r1, [r0, #9]
c0de53ec:	e000      	b.n	c0de53f0 <getContentNbElement+0x30>
c0de53ee:	2100      	movs	r1, #0
c0de53f0:	4608      	mov	r0, r1
c0de53f2:	4770      	bx	lr

c0de53f4 <displayContent>:
c0de53f4:	b570      	push	{r4, r5, r6, lr}
c0de53f6:	b08a      	sub	sp, #40	@ 0x28
c0de53f8:	460d      	mov	r5, r1
c0de53fa:	4604      	mov	r4, r0
c0de53fc:	a804      	add	r0, sp, #16
c0de53fe:	2118      	movs	r1, #24
c0de5400:	f002 f9b4 	bl	c0de776c <__aeabi_memclr>
c0de5404:	4820      	ldr	r0, [pc, #128]	@ (c0de5488 <displayContent+0x94>)
c0de5406:	f000 ff39 	bl	c0de627c <OUTLINED_FUNCTION_1>
c0de540a:	dd14      	ble.n	c0de5436 <displayContent+0x42>
c0de540c:	a904      	add	r1, sp, #16
c0de540e:	4628      	mov	r0, r5
c0de5410:	f000 f846 	bl	c0de54a0 <getContentPage>
c0de5414:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5418:	b318      	cbz	r0, c0de5462 <displayContent+0x6e>
c0de541a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de541e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5422:	481e      	ldr	r0, [pc, #120]	@ (c0de549c <displayContent+0xa8>)
c0de5424:	4478      	add	r0, pc
c0de5426:	2b00      	cmp	r3, #0
c0de5428:	9000      	str	r0, [sp, #0]
c0de542a:	4620      	mov	r0, r4
c0de542c:	bf18      	it	ne
c0de542e:	2301      	movne	r3, #1
c0de5430:	f000 f8d8 	bl	c0de55e4 <drawSwitchStep>
c0de5434:	e023      	b.n	c0de547e <displayContent+0x8a>
c0de5436:	4448      	add	r0, r9
c0de5438:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de543a:	6341      	str	r1, [r0, #52]	@ 0x34
c0de543c:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de543e:	4a13      	ldr	r2, [pc, #76]	@ (c0de548c <displayContent+0x98>)
c0de5440:	2900      	cmp	r1, #0
c0de5442:	447a      	add	r2, pc
c0de5444:	bf18      	it	ne
c0de5446:	460a      	movne	r2, r1
c0de5448:	9205      	str	r2, [sp, #20]
c0de544a:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de544e:	4910      	ldr	r1, [pc, #64]	@ (c0de5490 <displayContent+0x9c>)
c0de5450:	4a10      	ldr	r2, [pc, #64]	@ (c0de5494 <displayContent+0xa0>)
c0de5452:	2803      	cmp	r0, #3
c0de5454:	447a      	add	r2, pc
c0de5456:	4479      	add	r1, pc
c0de5458:	bf08      	it	eq
c0de545a:	460a      	moveq	r2, r1
c0de545c:	9207      	str	r2, [sp, #28]
c0de545e:	2000      	movs	r0, #0
c0de5460:	e002      	b.n	c0de5468 <displayContent+0x74>
c0de5462:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5466:	0040      	lsls	r0, r0, #1
c0de5468:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de546c:	9907      	ldr	r1, [sp, #28]
c0de546e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5498 <displayContent+0xa4>)
c0de5470:	b2c0      	uxtb	r0, r0
c0de5472:	2500      	movs	r5, #0
c0de5474:	9002      	str	r0, [sp, #8]
c0de5476:	4620      	mov	r0, r4
c0de5478:	447e      	add	r6, pc
c0de547a:	f000 ff1d 	bl	c0de62b8 <OUTLINED_FUNCTION_6>
c0de547e:	f001 fc5e 	bl	c0de6d3e <nbgl_refresh>
c0de5482:	b00a      	add	sp, #40	@ 0x28
c0de5484:	bd70      	pop	{r4, r5, r6, pc}
c0de5486:	bf00      	nop
c0de5488:	00000744 	.word	0x00000744
c0de548c:	00002899 	.word	0x00002899
c0de5490:	00002518 	.word	0x00002518
c0de5494:	000024d4 	.word	0x000024d4
c0de5498:	000001b9 	.word	0x000001b9
c0de549c:	0000020d 	.word	0x0000020d

c0de54a0 <getContentPage>:
c0de54a0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de54a2:	b093      	sub	sp, #76	@ 0x4c
c0de54a4:	4606      	mov	r6, r0
c0de54a6:	2000      	movs	r0, #0
c0de54a8:	460c      	mov	r4, r1
c0de54aa:	2138      	movs	r1, #56	@ 0x38
c0de54ac:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de54b0:	ad04      	add	r5, sp, #16
c0de54b2:	4628      	mov	r0, r5
c0de54b4:	f002 f95a 	bl	c0de776c <__aeabi_memclr>
c0de54b8:	4f47      	ldr	r7, [pc, #284]	@ (c0de55d8 <getContentPage+0x138>)
c0de54ba:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de54be:	462a      	mov	r2, r5
c0de54c0:	eb09 0007 	add.w	r0, r9, r7
c0de54c4:	f000 fef1 	bl	c0de62aa <OUTLINED_FUNCTION_4>
c0de54c8:	2800      	cmp	r0, #0
c0de54ca:	d07a      	beq.n	c0de55c2 <getContentPage+0x122>
c0de54cc:	4605      	mov	r5, r0
c0de54ce:	7800      	ldrb	r0, [r0, #0]
c0de54d0:	280a      	cmp	r0, #10
c0de54d2:	d011      	beq.n	c0de54f8 <getContentPage+0x58>
c0de54d4:	2803      	cmp	r0, #3
c0de54d6:	d02c      	beq.n	c0de5532 <getContentPage+0x92>
c0de54d8:	2804      	cmp	r0, #4
c0de54da:	d035      	beq.n	c0de5548 <getContentPage+0xa8>
c0de54dc:	2807      	cmp	r0, #7
c0de54de:	d045      	beq.n	c0de556c <getContentPage+0xcc>
c0de54e0:	2808      	cmp	r0, #8
c0de54e2:	d060      	beq.n	c0de55a6 <getContentPage+0x106>
c0de54e4:	2809      	cmp	r0, #9
c0de54e6:	d007      	beq.n	c0de54f8 <getContentPage+0x58>
c0de54e8:	2800      	cmp	r0, #0
c0de54ea:	d16a      	bne.n	c0de55c2 <getContentPage+0x122>
c0de54ec:	6868      	ldr	r0, [r5, #4]
c0de54ee:	f001 fe31 	bl	c0de7154 <pic>
c0de54f2:	6060      	str	r0, [r4, #4]
c0de54f4:	68a8      	ldr	r0, [r5, #8]
c0de54f6:	e019      	b.n	c0de552c <getContentPage+0x8c>
c0de54f8:	1d28      	adds	r0, r5, #4
c0de54fa:	eb09 0607 	add.w	r6, r9, r7
c0de54fe:	f001 fe29 	bl	c0de7154 <pic>
c0de5502:	6800      	ldr	r0, [r0, #0]
c0de5504:	f001 fe26 	bl	c0de7154 <pic>
c0de5508:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de550c:	4605      	mov	r5, r0
c0de550e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de5510:	2910      	cmp	r1, #16
c0de5512:	d100      	bne.n	c0de5516 <getContentPage+0x76>
c0de5514:	b918      	cbnz	r0, c0de551e <getContentPage+0x7e>
c0de5516:	290f      	cmp	r1, #15
c0de5518:	d155      	bne.n	c0de55c6 <getContentPage+0x126>
c0de551a:	2800      	cmp	r0, #0
c0de551c:	d053      	beq.n	c0de55c6 <getContentPage+0x126>
c0de551e:	f001 fe19 	bl	c0de7154 <pic>
c0de5522:	6060      	str	r0, [r4, #4]
c0de5524:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5528:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de552c:	f001 fe12 	bl	c0de7154 <pic>
c0de5530:	e046      	b.n	c0de55c0 <getContentPage+0x120>
c0de5532:	68a8      	ldr	r0, [r5, #8]
c0de5534:	4e29      	ldr	r6, [pc, #164]	@ (c0de55dc <getContentPage+0x13c>)
c0de5536:	447e      	add	r6, pc
c0de5538:	47b0      	blx	r6
c0de553a:	60e0      	str	r0, [r4, #12]
c0de553c:	6868      	ldr	r0, [r5, #4]
c0de553e:	47b0      	blx	r6
c0de5540:	6060      	str	r0, [r4, #4]
c0de5542:	68e8      	ldr	r0, [r5, #12]
c0de5544:	47b0      	blx	r6
c0de5546:	e03b      	b.n	c0de55c0 <getContentPage+0x120>
c0de5548:	f104 0015 	add.w	r0, r4, #21
c0de554c:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5550:	f104 020c 	add.w	r2, r4, #12
c0de5554:	f104 0310 	add.w	r3, r4, #16
c0de5558:	e9cd 3200 	strd	r3, r2, [sp]
c0de555c:	9002      	str	r0, [sp, #8]
c0de555e:	1d28      	adds	r0, r5, #4
c0de5560:	1d22      	adds	r2, r4, #4
c0de5562:	f104 0308 	add.w	r3, r4, #8
c0de5566:	f000 f8b9 	bl	c0de56dc <getPairData>
c0de556a:	e02a      	b.n	c0de55c2 <getContentPage+0x122>
c0de556c:	2001      	movs	r0, #1
c0de556e:	444f      	add	r7, r9
c0de5570:	7020      	strb	r0, [r4, #0]
c0de5572:	6868      	ldr	r0, [r5, #4]
c0de5574:	f001 fdee 	bl	c0de7154 <pic>
c0de5578:	4919      	ldr	r1, [pc, #100]	@ (c0de55e0 <getContentPage+0x140>)
c0de557a:	4479      	add	r1, pc
c0de557c:	6379      	str	r1, [r7, #52]	@ 0x34
c0de557e:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5582:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5586:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de558a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de558e:	6062      	str	r2, [r4, #4]
c0de5590:	6841      	ldr	r1, [r0, #4]
c0de5592:	60a1      	str	r1, [r4, #8]
c0de5594:	7a00      	ldrb	r0, [r0, #8]
c0de5596:	1e41      	subs	r1, r0, #1
c0de5598:	bf18      	it	ne
c0de559a:	2101      	movne	r1, #1
c0de559c:	2e00      	cmp	r6, #0
c0de559e:	bf08      	it	eq
c0de55a0:	4601      	moveq	r1, r0
c0de55a2:	7521      	strb	r1, [r4, #20]
c0de55a4:	e00d      	b.n	c0de55c2 <getContentPage+0x122>
c0de55a6:	6868      	ldr	r0, [r5, #4]
c0de55a8:	f001 fdd4 	bl	c0de7154 <pic>
c0de55ac:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de55b0:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de55b4:	6060      	str	r0, [r4, #4]
c0de55b6:	68a8      	ldr	r0, [r5, #8]
c0de55b8:	f001 fdcc 	bl	c0de7154 <pic>
c0de55bc:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de55c0:	60a0      	str	r0, [r4, #8]
c0de55c2:	b013      	add	sp, #76	@ 0x4c
c0de55c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de55c6:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de55ca:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de55ce:	f001 fdc1 	bl	c0de7154 <pic>
c0de55d2:	6060      	str	r0, [r4, #4]
c0de55d4:	e7f5      	b.n	c0de55c2 <getContentPage+0x122>
c0de55d6:	bf00      	nop
c0de55d8:	00000744 	.word	0x00000744
c0de55dc:	00001c1b 	.word	0x00001c1b
c0de55e0:	000001a7 	.word	0x000001a7

c0de55e4 <drawSwitchStep>:
c0de55e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de55e6:	b085      	sub	sp, #20
c0de55e8:	4c11      	ldr	r4, [pc, #68]	@ (c0de5630 <drawSwitchStep+0x4c>)
c0de55ea:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de55ee:	2600      	movs	r6, #0
c0de55f0:	eb09 0504 	add.w	r5, r9, r4
c0de55f4:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de55f8:	2500      	movs	r5, #0
c0de55fa:	2f02      	cmp	r7, #2
c0de55fc:	d30a      	bcc.n	c0de5614 <drawSwitchStep+0x30>
c0de55fe:	444c      	add	r4, r9
c0de5600:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de5604:	b12c      	cbz	r4, c0de5612 <drawSwitchStep+0x2e>
c0de5606:	3f01      	subs	r7, #1
c0de5608:	2603      	movs	r6, #3
c0de560a:	42a7      	cmp	r7, r4
c0de560c:	bf08      	it	eq
c0de560e:	2602      	moveq	r6, #2
c0de5610:	e000      	b.n	c0de5614 <drawSwitchStep+0x30>
c0de5612:	2601      	movs	r6, #1
c0de5614:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5618:	f88d 3010 	strb.w	r3, [sp, #16]
c0de561c:	9500      	str	r5, [sp, #0]
c0de561e:	4330      	orrs	r0, r6
c0de5620:	ab02      	add	r3, sp, #8
c0de5622:	4661      	mov	r1, ip
c0de5624:	2200      	movs	r2, #0
c0de5626:	f7ff f87f 	bl	c0de4728 <nbgl_stepDrawSwitch>
c0de562a:	b005      	add	sp, #20
c0de562c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de562e:	bf00      	nop
c0de5630:	00000744 	.word	0x00000744

c0de5634 <contentCallback>:
c0de5634:	b5e0      	push	{r5, r6, r7, lr}
c0de5636:	4608      	mov	r0, r1
c0de5638:	f10d 0107 	add.w	r1, sp, #7
c0de563c:	f000 f928 	bl	c0de5890 <buttonGenericCallback>
c0de5640:	b130      	cbz	r0, c0de5650 <contentCallback+0x1c>
c0de5642:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5646:	2100      	movs	r1, #0
c0de5648:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de564c:	f7ff bed2 	b.w	c0de53f4 <displayContent>
c0de5650:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5654 <getContentElemAtIdx>:
c0de5654:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5658:	4c1e      	ldr	r4, [pc, #120]	@ (c0de56d4 <getContentElemAtIdx+0x80>)
c0de565a:	4606      	mov	r6, r0
c0de565c:	2700      	movs	r7, #0
c0de565e:	eb09 0004 	add.w	r0, r9, r4
c0de5662:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de5666:	2b10      	cmp	r3, #16
c0de5668:	d830      	bhi.n	c0de56cc <getContentElemAtIdx+0x78>
c0de566a:	4693      	mov	fp, r2
c0de566c:	2201      	movs	r2, #1
c0de566e:	9101      	str	r1, [sp, #4]
c0de5670:	fa02 f303 	lsl.w	r3, r2, r3
c0de5674:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5678:	d004      	beq.n	c0de5684 <getContentElemAtIdx+0x30>
c0de567a:	eb09 0004 	add.w	r0, r9, r4
c0de567e:	46a2      	mov	sl, r4
c0de5680:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de5682:	e005      	b.n	c0de5690 <getContentElemAtIdx+0x3c>
c0de5684:	4a14      	ldr	r2, [pc, #80]	@ (c0de56d8 <getContentElemAtIdx+0x84>)
c0de5686:	4213      	tst	r3, r2
c0de5688:	d020      	beq.n	c0de56cc <getContentElemAtIdx+0x78>
c0de568a:	46a2      	mov	sl, r4
c0de568c:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de5690:	2700      	movs	r7, #0
c0de5692:	2000      	movs	r0, #0
c0de5694:	f04f 0800 	mov.w	r8, #0
c0de5698:	4605      	mov	r5, r0
c0de569a:	7a20      	ldrb	r0, [r4, #8]
c0de569c:	4580      	cmp	r8, r0
c0de569e:	d215      	bcs.n	c0de56cc <getContentElemAtIdx+0x78>
c0de56a0:	fa4f f188 	sxtb.w	r1, r8
c0de56a4:	4620      	mov	r0, r4
c0de56a6:	465a      	mov	r2, fp
c0de56a8:	f7ff fe30 	bl	c0de530c <getContentAtIdx>
c0de56ac:	4607      	mov	r7, r0
c0de56ae:	f7ff fe87 	bl	c0de53c0 <getContentNbElement>
c0de56b2:	b2e9      	uxtb	r1, r5
c0de56b4:	f108 0801 	add.w	r8, r8, #1
c0de56b8:	4408      	add	r0, r1
c0de56ba:	42b0      	cmp	r0, r6
c0de56bc:	d9ec      	bls.n	c0de5698 <getContentElemAtIdx+0x44>
c0de56be:	eb09 000a 	add.w	r0, r9, sl
c0de56c2:	9901      	ldr	r1, [sp, #4]
c0de56c4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de56c8:	1b40      	subs	r0, r0, r5
c0de56ca:	7008      	strb	r0, [r1, #0]
c0de56cc:	4638      	mov	r0, r7
c0de56ce:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de56d2:	bf00      	nop
c0de56d4:	00000744 	.word	0x00000744
c0de56d8:	00010008 	.word	0x00010008

c0de56dc <getPairData>:
c0de56dc:	b5b0      	push	{r4, r5, r7, lr}
c0de56de:	4615      	mov	r5, r2
c0de56e0:	6802      	ldr	r2, [r0, #0]
c0de56e2:	461c      	mov	r4, r3
c0de56e4:	b112      	cbz	r2, c0de56ec <getPairData+0x10>
c0de56e6:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de56ea:	e002      	b.n	c0de56f2 <getPairData+0x16>
c0de56ec:	6842      	ldr	r2, [r0, #4]
c0de56ee:	4608      	mov	r0, r1
c0de56f0:	4790      	blx	r2
c0de56f2:	f001 fd2f 	bl	c0de7154 <pic>
c0de56f6:	6802      	ldr	r2, [r0, #0]
c0de56f8:	9904      	ldr	r1, [sp, #16]
c0de56fa:	602a      	str	r2, [r5, #0]
c0de56fc:	6842      	ldr	r2, [r0, #4]
c0de56fe:	6022      	str	r2, [r4, #0]
c0de5700:	7b02      	ldrb	r2, [r0, #12]
c0de5702:	0753      	lsls	r3, r2, #29
c0de5704:	d403      	bmi.n	c0de570e <getPairData+0x32>
c0de5706:	0792      	lsls	r2, r2, #30
c0de5708:	d404      	bmi.n	c0de5714 <getPairData+0x38>
c0de570a:	2000      	movs	r0, #0
c0de570c:	e000      	b.n	c0de5710 <getPairData+0x34>
c0de570e:	6880      	ldr	r0, [r0, #8]
c0de5710:	6008      	str	r0, [r1, #0]
c0de5712:	bdb0      	pop	{r4, r5, r7, pc}
c0de5714:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5718:	2301      	movs	r3, #1
c0de571a:	700b      	strb	r3, [r1, #0]
c0de571c:	6880      	ldr	r0, [r0, #8]
c0de571e:	6010      	str	r0, [r2, #0]
c0de5720:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5724 <onSwitchAction>:
c0de5724:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5726:	b08f      	sub	sp, #60	@ 0x3c
c0de5728:	ac01      	add	r4, sp, #4
c0de572a:	2138      	movs	r1, #56	@ 0x38
c0de572c:	4620      	mov	r0, r4
c0de572e:	f002 f81d 	bl	c0de776c <__aeabi_memclr>
c0de5732:	4e26      	ldr	r6, [pc, #152]	@ (c0de57cc <onSwitchAction+0xa8>)
c0de5734:	f10d 0103 	add.w	r1, sp, #3
c0de5738:	4622      	mov	r2, r4
c0de573a:	eb09 0006 	add.w	r0, r9, r6
c0de573e:	f000 fdb4 	bl	c0de62aa <OUTLINED_FUNCTION_4>
c0de5742:	2800      	cmp	r0, #0
c0de5744:	d040      	beq.n	c0de57c8 <onSwitchAction+0xa4>
c0de5746:	4604      	mov	r4, r0
c0de5748:	7800      	ldrb	r0, [r0, #0]
c0de574a:	2807      	cmp	r0, #7
c0de574c:	d13c      	bne.n	c0de57c8 <onSwitchAction+0xa4>
c0de574e:	6860      	ldr	r0, [r4, #4]
c0de5750:	eb09 0706 	add.w	r7, r9, r6
c0de5754:	f001 fcfe 	bl	c0de7154 <pic>
c0de5758:	4605      	mov	r5, r0
c0de575a:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de575e:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5762:	2810      	cmp	r0, #16
c0de5764:	d811      	bhi.n	c0de578a <onSwitchAction+0x66>
c0de5766:	2101      	movs	r1, #1
c0de5768:	fa01 f000 	lsl.w	r0, r1, r0
c0de576c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5770:	d004      	beq.n	c0de577c <onSwitchAction+0x58>
c0de5772:	2000      	movs	r0, #0
c0de5774:	2101      	movs	r1, #1
c0de5776:	f000 f82d 	bl	c0de57d4 <displaySettingsPage>
c0de577a:	e006      	b.n	c0de578a <onSwitchAction+0x66>
c0de577c:	4914      	ldr	r1, [pc, #80]	@ (c0de57d0 <onSwitchAction+0xac>)
c0de577e:	4208      	tst	r0, r1
c0de5780:	d003      	beq.n	c0de578a <onSwitchAction+0x66>
c0de5782:	2000      	movs	r0, #0
c0de5784:	2101      	movs	r1, #1
c0de5786:	f7ff fe35 	bl	c0de53f4 <displayContent>
c0de578a:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de578c:	b188      	cbz	r0, c0de57b2 <onSwitchAction+0x8e>
c0de578e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5792:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5796:	f001 fcdd 	bl	c0de7154 <pic>
c0de579a:	7a21      	ldrb	r1, [r4, #8]
c0de579c:	eb09 0206 	add.w	r2, r9, r6
c0de57a0:	4603      	mov	r3, r0
c0de57a2:	7a60      	ldrb	r0, [r4, #9]
c0de57a4:	3901      	subs	r1, #1
c0de57a6:	bf18      	it	ne
c0de57a8:	2101      	movne	r1, #1
c0de57aa:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de57ae:	4798      	blx	r3
c0de57b0:	e00a      	b.n	c0de57c8 <onSwitchAction+0xa4>
c0de57b2:	eb09 0006 	add.w	r0, r9, r6
c0de57b6:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de57b8:	b132      	cbz	r2, c0de57c8 <onSwitchAction+0xa4>
c0de57ba:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de57be:	2100      	movs	r1, #0
c0de57c0:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de57c4:	7a40      	ldrb	r0, [r0, #9]
c0de57c6:	4790      	blx	r2
c0de57c8:	b00f      	add	sp, #60	@ 0x3c
c0de57ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de57cc:	00000744 	.word	0x00000744
c0de57d0:	00010008 	.word	0x00010008

c0de57d4 <displaySettingsPage>:
c0de57d4:	b5b0      	push	{r4, r5, r7, lr}
c0de57d6:	b08a      	sub	sp, #40	@ 0x28
c0de57d8:	460d      	mov	r5, r1
c0de57da:	4604      	mov	r4, r0
c0de57dc:	a804      	add	r0, sp, #16
c0de57de:	2118      	movs	r1, #24
c0de57e0:	f001 ffc4 	bl	c0de776c <__aeabi_memclr>
c0de57e4:	481c      	ldr	r0, [pc, #112]	@ (c0de5858 <displaySettingsPage+0x84>)
c0de57e6:	f000 fd49 	bl	c0de627c <OUTLINED_FUNCTION_1>
c0de57ea:	dd14      	ble.n	c0de5816 <displaySettingsPage+0x42>
c0de57ec:	a904      	add	r1, sp, #16
c0de57ee:	4628      	mov	r0, r5
c0de57f0:	f7ff fe56 	bl	c0de54a0 <getContentPage>
c0de57f4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de57f8:	b1e8      	cbz	r0, c0de5836 <displaySettingsPage+0x62>
c0de57fa:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de57fe:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5802:	481a      	ldr	r0, [pc, #104]	@ (c0de586c <displaySettingsPage+0x98>)
c0de5804:	4478      	add	r0, pc
c0de5806:	2b00      	cmp	r3, #0
c0de5808:	9000      	str	r0, [sp, #0]
c0de580a:	4620      	mov	r0, r4
c0de580c:	bf18      	it	ne
c0de580e:	2301      	movne	r3, #1
c0de5810:	f7ff fee8 	bl	c0de55e4 <drawSwitchStep>
c0de5814:	e01b      	b.n	c0de584e <displaySettingsPage+0x7a>
c0de5816:	4448      	add	r0, r9
c0de5818:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de581c:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de581e:	4b0f      	ldr	r3, [pc, #60]	@ (c0de585c <displaySettingsPage+0x88>)
c0de5820:	447b      	add	r3, pc
c0de5822:	290f      	cmp	r1, #15
c0de5824:	bf08      	it	eq
c0de5826:	4613      	moveq	r3, r2
c0de5828:	6343      	str	r3, [r0, #52]	@ 0x34
c0de582a:	480d      	ldr	r0, [pc, #52]	@ (c0de5860 <displaySettingsPage+0x8c>)
c0de582c:	4478      	add	r0, pc
c0de582e:	9005      	str	r0, [sp, #20]
c0de5830:	480c      	ldr	r0, [pc, #48]	@ (c0de5864 <displaySettingsPage+0x90>)
c0de5832:	4478      	add	r0, pc
c0de5834:	9007      	str	r0, [sp, #28]
c0de5836:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de583a:	9907      	ldr	r1, [sp, #28]
c0de583c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5868 <displaySettingsPage+0x94>)
c0de583e:	2000      	movs	r0, #0
c0de5840:	9002      	str	r0, [sp, #8]
c0de5842:	447d      	add	r5, pc
c0de5844:	e9cd 5000 	strd	r5, r0, [sp]
c0de5848:	4620      	mov	r0, r4
c0de584a:	f7ff fae9 	bl	c0de4e20 <drawStep>
c0de584e:	f001 fa76 	bl	c0de6d3e <nbgl_refresh>
c0de5852:	b00a      	add	sp, #40	@ 0x28
c0de5854:	bdb0      	pop	{r4, r5, r7, pc}
c0de5856:	bf00      	nop
c0de5858:	00000744 	.word	0x00000744
c0de585c:	fffff1cd 	.word	0xfffff1cd
c0de5860:	000024af 	.word	0x000024af
c0de5864:	000020f6 	.word	0x000020f6
c0de5868:	0000002b 	.word	0x0000002b
c0de586c:	00000069 	.word	0x00000069

c0de5870 <settingsCallback>:
c0de5870:	b5e0      	push	{r5, r6, r7, lr}
c0de5872:	4608      	mov	r0, r1
c0de5874:	f10d 0107 	add.w	r1, sp, #7
c0de5878:	f000 f80a 	bl	c0de5890 <buttonGenericCallback>
c0de587c:	b130      	cbz	r0, c0de588c <settingsCallback+0x1c>
c0de587e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5882:	2100      	movs	r1, #0
c0de5884:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5888:	f7ff bfa4 	b.w	c0de57d4 <displaySettingsPage>
c0de588c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5890 <buttonGenericCallback>:
c0de5890:	b5b0      	push	{r4, r5, r7, lr}
c0de5892:	b090      	sub	sp, #64	@ 0x40
c0de5894:	460c      	mov	r4, r1
c0de5896:	4605      	mov	r5, r0
c0de5898:	a801      	add	r0, sp, #4
c0de589a:	2138      	movs	r1, #56	@ 0x38
c0de589c:	f001 ff66 	bl	c0de776c <__aeabi_memclr>
c0de58a0:	2d04      	cmp	r5, #4
c0de58a2:	d00d      	beq.n	c0de58c0 <buttonGenericCallback+0x30>
c0de58a4:	2d01      	cmp	r5, #1
c0de58a6:	d012      	beq.n	c0de58ce <buttonGenericCallback+0x3e>
c0de58a8:	2d00      	cmp	r5, #0
c0de58aa:	d17c      	bne.n	c0de59a6 <buttonGenericCallback+0x116>
c0de58ac:	483f      	ldr	r0, [pc, #252]	@ (c0de59ac <buttonGenericCallback+0x11c>)
c0de58ae:	eb09 0100 	add.w	r1, r9, r0
c0de58b2:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de58b6:	2901      	cmp	r1, #1
c0de58b8:	db1d      	blt.n	c0de58f6 <buttonGenericCallback+0x66>
c0de58ba:	3901      	subs	r1, #1
c0de58bc:	2008      	movs	r0, #8
c0de58be:	e013      	b.n	c0de58e8 <buttonGenericCallback+0x58>
c0de58c0:	4c3a      	ldr	r4, [pc, #232]	@ (c0de59ac <buttonGenericCallback+0x11c>)
c0de58c2:	eb09 0004 	add.w	r0, r9, r4
c0de58c6:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de58c8:	b338      	cbz	r0, c0de591a <buttonGenericCallback+0x8a>
c0de58ca:	4780      	blx	r0
c0de58cc:	e06b      	b.n	c0de59a6 <buttonGenericCallback+0x116>
c0de58ce:	4837      	ldr	r0, [pc, #220]	@ (c0de59ac <buttonGenericCallback+0x11c>)
c0de58d0:	eb09 0100 	add.w	r1, r9, r0
c0de58d4:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de58d8:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de58dc:	3901      	subs	r1, #1
c0de58de:	4281      	cmp	r1, r0
c0de58e0:	dd61      	ble.n	c0de59a6 <buttonGenericCallback+0x116>
c0de58e2:	b2c0      	uxtb	r0, r0
c0de58e4:	1c41      	adds	r1, r0, #1
c0de58e6:	2000      	movs	r0, #0
c0de58e8:	4a30      	ldr	r2, [pc, #192]	@ (c0de59ac <buttonGenericCallback+0x11c>)
c0de58ea:	444a      	add	r2, r9
c0de58ec:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de58f0:	7020      	strb	r0, [r4, #0]
c0de58f2:	2001      	movs	r0, #1
c0de58f4:	e058      	b.n	c0de59a8 <buttonGenericCallback+0x118>
c0de58f6:	eb09 0100 	add.w	r1, r9, r0
c0de58fa:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de58fe:	2906      	cmp	r1, #6
c0de5900:	d151      	bne.n	c0de59a6 <buttonGenericCallback+0x116>
c0de5902:	eb09 0100 	add.w	r1, r9, r0
c0de5906:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de5908:	2900      	cmp	r1, #0
c0de590a:	d04c      	beq.n	c0de59a6 <buttonGenericCallback+0x116>
c0de590c:	4448      	add	r0, r9
c0de590e:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de5912:	2801      	cmp	r0, #1
c0de5914:	d047      	beq.n	c0de59a6 <buttonGenericCallback+0x116>
c0de5916:	2008      	movs	r0, #8
c0de5918:	e7ea      	b.n	c0de58f0 <buttonGenericCallback+0x60>
c0de591a:	eb09 0004 	add.w	r0, r9, r4
c0de591e:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5922:	2000      	movs	r0, #0
c0de5924:	2910      	cmp	r1, #16
c0de5926:	d83f      	bhi.n	c0de59a8 <buttonGenericCallback+0x118>
c0de5928:	2201      	movs	r2, #1
c0de592a:	fa02 f101 	lsl.w	r1, r2, r1
c0de592e:	4a20      	ldr	r2, [pc, #128]	@ (c0de59b0 <buttonGenericCallback+0x120>)
c0de5930:	4211      	tst	r1, r2
c0de5932:	d039      	beq.n	c0de59a8 <buttonGenericCallback+0x118>
c0de5934:	eb09 0004 	add.w	r0, r9, r4
c0de5938:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de593c:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5940:	aa01      	add	r2, sp, #4
c0de5942:	f7ff fe87 	bl	c0de5654 <getContentElemAtIdx>
c0de5946:	b370      	cbz	r0, c0de59a6 <buttonGenericCallback+0x116>
c0de5948:	7801      	ldrb	r1, [r0, #0]
c0de594a:	4602      	mov	r2, r0
c0de594c:	2000      	movs	r0, #0
c0de594e:	b359      	cbz	r1, c0de59a8 <buttonGenericCallback+0x118>
c0de5950:	290a      	cmp	r1, #10
c0de5952:	d009      	beq.n	c0de5968 <buttonGenericCallback+0xd8>
c0de5954:	2907      	cmp	r1, #7
c0de5956:	d00f      	beq.n	c0de5978 <buttonGenericCallback+0xe8>
c0de5958:	2909      	cmp	r1, #9
c0de595a:	d011      	beq.n	c0de5980 <buttonGenericCallback+0xf0>
c0de595c:	2903      	cmp	r1, #3
c0de595e:	f04f 0100 	mov.w	r1, #0
c0de5962:	d112      	bne.n	c0de598a <buttonGenericCallback+0xfa>
c0de5964:	7c10      	ldrb	r0, [r2, #16]
c0de5966:	e005      	b.n	c0de5974 <buttonGenericCallback+0xe4>
c0de5968:	eb09 0004 	add.w	r0, r9, r4
c0de596c:	6891      	ldr	r1, [r2, #8]
c0de596e:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de5972:	5c08      	ldrb	r0, [r1, r0]
c0de5974:	2100      	movs	r1, #0
c0de5976:	e008      	b.n	c0de598a <buttonGenericCallback+0xfa>
c0de5978:	6850      	ldr	r0, [r2, #4]
c0de597a:	2100      	movs	r1, #0
c0de597c:	7a40      	ldrb	r0, [r0, #9]
c0de597e:	e004      	b.n	c0de598a <buttonGenericCallback+0xfa>
c0de5980:	eb09 0004 	add.w	r0, r9, r4
c0de5984:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de5988:	7ad0      	ldrb	r0, [r2, #11]
c0de598a:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de598c:	b133      	cbz	r3, c0de599c <buttonGenericCallback+0x10c>
c0de598e:	eb09 0104 	add.w	r1, r9, r4
c0de5992:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5996:	2100      	movs	r1, #0
c0de5998:	4798      	blx	r3
c0de599a:	e004      	b.n	c0de59a6 <buttonGenericCallback+0x116>
c0de599c:	eb09 0204 	add.w	r2, r9, r4
c0de59a0:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de59a2:	b102      	cbz	r2, c0de59a6 <buttonGenericCallback+0x116>
c0de59a4:	4790      	blx	r2
c0de59a6:	2000      	movs	r0, #0
c0de59a8:	b010      	add	sp, #64	@ 0x40
c0de59aa:	bdb0      	pop	{r4, r5, r7, pc}
c0de59ac:	00000744 	.word	0x00000744
c0de59b0:	0001c008 	.word	0x0001c008

c0de59b4 <displayHomePage>:
c0de59b4:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de59b8:	4680      	mov	r8, r0
c0de59ba:	4832      	ldr	r0, [pc, #200]	@ (c0de5a84 <displayHomePage+0xd0>)
c0de59bc:	2200      	movs	r2, #0
c0de59be:	eb09 0100 	add.w	r1, r9, r0
c0de59c2:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de59c4:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de59c6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de59c8:	2202      	movs	r2, #2
c0de59ca:	2d00      	cmp	r5, #0
c0de59cc:	463e      	mov	r6, r7
c0de59ce:	bf08      	it	eq
c0de59d0:	2201      	moveq	r2, #1
c0de59d2:	2f00      	cmp	r7, #0
c0de59d4:	bf18      	it	ne
c0de59d6:	2601      	movne	r6, #1
c0de59d8:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de59dc:	b183      	cbz	r3, c0de5a00 <displayHomePage+0x4c>
c0de59de:	2401      	movs	r4, #1
c0de59e0:	2d00      	cmp	r5, #0
c0de59e2:	bf08      	it	eq
c0de59e4:	24ff      	moveq	r4, #255	@ 0xff
c0de59e6:	429c      	cmp	r4, r3
c0de59e8:	d111      	bne.n	c0de5a0e <displayHomePage+0x5a>
c0de59ea:	eb09 0400 	add.w	r4, r9, r0
c0de59ee:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de59f2:	f001 fbaf 	bl	c0de7154 <pic>
c0de59f6:	4602      	mov	r2, r0
c0de59f8:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de59fa:	6880      	ldr	r0, [r0, #8]
c0de59fc:	6360      	str	r0, [r4, #52]	@ 0x34
c0de59fe:	e004      	b.n	c0de5a0a <displayHomePage+0x56>
c0de5a00:	eb09 0100 	add.w	r1, r9, r0
c0de5a04:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de5a08:	b312      	cbz	r2, c0de5a50 <displayHomePage+0x9c>
c0de5a0a:	2300      	movs	r3, #0
c0de5a0c:	e02c      	b.n	c0de5a68 <displayHomePage+0xb4>
c0de5a0e:	2f00      	cmp	r7, #0
c0de5a10:	4614      	mov	r4, r2
c0de5a12:	bf08      	it	eq
c0de5a14:	24ff      	moveq	r4, #255	@ 0xff
c0de5a16:	429c      	cmp	r4, r3
c0de5a18:	d109      	bne.n	c0de5a2e <displayHomePage+0x7a>
c0de5a1a:	491c      	ldr	r1, [pc, #112]	@ (c0de5a8c <displayHomePage+0xd8>)
c0de5a1c:	4448      	add	r0, r9
c0de5a1e:	2300      	movs	r3, #0
c0de5a20:	4479      	add	r1, pc
c0de5a22:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a24:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5a90 <displayHomePage+0xdc>)
c0de5a26:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5a94 <displayHomePage+0xe0>)
c0de5a28:	447d      	add	r5, pc
c0de5a2a:	447a      	add	r2, pc
c0de5a2c:	e01c      	b.n	c0de5a68 <displayHomePage+0xb4>
c0de5a2e:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de5a30:	4432      	add	r2, r6
c0de5a32:	4448      	add	r0, r9
c0de5a34:	2900      	cmp	r1, #0
c0de5a36:	bf08      	it	eq
c0de5a38:	22ff      	moveq	r2, #255	@ 0xff
c0de5a3a:	429a      	cmp	r2, r3
c0de5a3c:	d10d      	bne.n	c0de5a5a <displayHomePage+0xa6>
c0de5a3e:	4916      	ldr	r1, [pc, #88]	@ (c0de5a98 <displayHomePage+0xe4>)
c0de5a40:	2300      	movs	r3, #0
c0de5a42:	4479      	add	r1, pc
c0de5a44:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a46:	4d15      	ldr	r5, [pc, #84]	@ (c0de5a9c <displayHomePage+0xe8>)
c0de5a48:	4a15      	ldr	r2, [pc, #84]	@ (c0de5aa0 <displayHomePage+0xec>)
c0de5a4a:	447d      	add	r5, pc
c0de5a4c:	447a      	add	r2, pc
c0de5a4e:	e00b      	b.n	c0de5a68 <displayHomePage+0xb4>
c0de5a50:	4448      	add	r0, r9
c0de5a52:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de5a54:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5a88 <displayHomePage+0xd4>)
c0de5a56:	447b      	add	r3, pc
c0de5a58:	e006      	b.n	c0de5a68 <displayHomePage+0xb4>
c0de5a5a:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de5a5c:	2300      	movs	r3, #0
c0de5a5e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a60:	4d10      	ldr	r5, [pc, #64]	@ (c0de5aa4 <displayHomePage+0xf0>)
c0de5a62:	4a11      	ldr	r2, [pc, #68]	@ (c0de5aa8 <displayHomePage+0xf4>)
c0de5a64:	447d      	add	r5, pc
c0de5a66:	447a      	add	r2, pc
c0de5a68:	4910      	ldr	r1, [pc, #64]	@ (c0de5aac <displayHomePage+0xf8>)
c0de5a6a:	2000      	movs	r0, #0
c0de5a6c:	9002      	str	r0, [sp, #8]
c0de5a6e:	4479      	add	r1, pc
c0de5a70:	e9cd 1000 	strd	r1, r0, [sp]
c0de5a74:	4640      	mov	r0, r8
c0de5a76:	4629      	mov	r1, r5
c0de5a78:	f7ff f9d2 	bl	c0de4e20 <drawStep>
c0de5a7c:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5a80:	f001 b95d 	b.w	c0de6d3e <nbgl_refresh>
c0de5a84:	00000744 	.word	0x00000744
c0de5a88:	00002316 	.word	0x00002316
c0de5a8c:	0000008d 	.word	0x0000008d
c0de5a90:	00001f23 	.word	0x00001f23
c0de5a94:	0000221d 	.word	0x0000221d
c0de5a98:	00000073 	.word	0x00000073
c0de5a9c:	00001e6c 	.word	0x00001e6c
c0de5aa0:	000022c7 	.word	0x000022c7
c0de5aa4:	00001e75 	.word	0x00001e75
c0de5aa8:	00002313 	.word	0x00002313
c0de5aac:	0000006b 	.word	0x0000006b

c0de5ab0 <startUseCaseSettings>:
c0de5ab0:	2000      	movs	r0, #0
c0de5ab2:	f7fe bf61 	b.w	c0de4978 <startUseCaseSettingsAtPage>
	...

c0de5ab8 <startUseCaseInfo>:
c0de5ab8:	4807      	ldr	r0, [pc, #28]	@ (c0de5ad8 <startUseCaseInfo+0x20>)
c0de5aba:	210d      	movs	r1, #13
c0de5abc:	4448      	add	r0, r9
c0de5abe:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5ac2:	2100      	movs	r1, #0
c0de5ac4:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5ac8:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5aca:	7b09      	ldrb	r1, [r1, #12]
c0de5acc:	3101      	adds	r1, #1
c0de5ace:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de5ad2:	2000      	movs	r0, #0
c0de5ad4:	f000 b810 	b.w	c0de5af8 <displayInfoPage>
c0de5ad8:	00000744 	.word	0x00000744

c0de5adc <homeCallback>:
c0de5adc:	b5e0      	push	{r5, r6, r7, lr}
c0de5ade:	4608      	mov	r0, r1
c0de5ae0:	f10d 0107 	add.w	r1, sp, #7
c0de5ae4:	f7ff fed4 	bl	c0de5890 <buttonGenericCallback>
c0de5ae8:	b128      	cbz	r0, c0de5af6 <homeCallback+0x1a>
c0de5aea:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5aee:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5af2:	f7ff bf5f 	b.w	c0de59b4 <displayHomePage>
c0de5af6:	bd8c      	pop	{r2, r3, r7, pc}

c0de5af8 <displayInfoPage>:
c0de5af8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5afa:	4604      	mov	r4, r0
c0de5afc:	4816      	ldr	r0, [pc, #88]	@ (c0de5b58 <displayInfoPage+0x60>)
c0de5afe:	f000 fbbd 	bl	c0de627c <OUTLINED_FUNCTION_1>
c0de5b02:	dd11      	ble.n	c0de5b28 <displayInfoPage+0x30>
c0de5b04:	eb09 0700 	add.w	r7, r9, r0
c0de5b08:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b0a:	6800      	ldr	r0, [r0, #0]
c0de5b0c:	4e13      	ldr	r6, [pc, #76]	@ (c0de5b5c <displayInfoPage+0x64>)
c0de5b0e:	447e      	add	r6, pc
c0de5b10:	47b0      	blx	r6
c0de5b12:	f000 fbd5 	bl	c0de62c0 <OUTLINED_FUNCTION_7>
c0de5b16:	4605      	mov	r5, r0
c0de5b18:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b1a:	6840      	ldr	r0, [r0, #4]
c0de5b1c:	47b0      	blx	r6
c0de5b1e:	f000 fbcf 	bl	c0de62c0 <OUTLINED_FUNCTION_7>
c0de5b22:	4603      	mov	r3, r0
c0de5b24:	2100      	movs	r1, #0
c0de5b26:	e008      	b.n	c0de5b3a <displayInfoPage+0x42>
c0de5b28:	490d      	ldr	r1, [pc, #52]	@ (c0de5b60 <displayInfoPage+0x68>)
c0de5b2a:	4448      	add	r0, r9
c0de5b2c:	2300      	movs	r3, #0
c0de5b2e:	4479      	add	r1, pc
c0de5b30:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5b32:	490c      	ldr	r1, [pc, #48]	@ (c0de5b64 <displayInfoPage+0x6c>)
c0de5b34:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5b68 <displayInfoPage+0x70>)
c0de5b36:	4479      	add	r1, pc
c0de5b38:	447d      	add	r5, pc
c0de5b3a:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5b6c <displayInfoPage+0x74>)
c0de5b3c:	2002      	movs	r0, #2
c0de5b3e:	2200      	movs	r2, #0
c0de5b40:	9002      	str	r0, [sp, #8]
c0de5b42:	4620      	mov	r0, r4
c0de5b44:	447e      	add	r6, pc
c0de5b46:	e9cd 6200 	strd	r6, r2, [sp]
c0de5b4a:	462a      	mov	r2, r5
c0de5b4c:	f7ff f968 	bl	c0de4e20 <drawStep>
c0de5b50:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b54:	f001 b8f3 	b.w	c0de6d3e <nbgl_refresh>
c0de5b58:	00000744 	.word	0x00000744
c0de5b5c:	00001643 	.word	0x00001643
c0de5b60:	ffffeebf 	.word	0xffffeebf
c0de5b64:	00001df2 	.word	0x00001df2
c0de5b68:	000021a3 	.word	0x000021a3
c0de5b6c:	00000029 	.word	0x00000029

c0de5b70 <infoCallback>:
c0de5b70:	b5e0      	push	{r5, r6, r7, lr}
c0de5b72:	4608      	mov	r0, r1
c0de5b74:	f10d 0107 	add.w	r1, sp, #7
c0de5b78:	f7ff fe8a 	bl	c0de5890 <buttonGenericCallback>
c0de5b7c:	b128      	cbz	r0, c0de5b8a <infoCallback+0x1a>
c0de5b7e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5b82:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5b86:	f7ff bfb7 	b.w	c0de5af8 <displayInfoPage>
c0de5b8a:	bd8c      	pop	{r2, r3, r7, pc}

c0de5b8c <displayWarningStep>:
c0de5b8c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b8e:	2000      	movs	r0, #0
c0de5b90:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5b94:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de5b98:	482b      	ldr	r0, [pc, #172]	@ (c0de5c48 <displayWarningStep+0xbc>)
c0de5b9a:	eb09 0100 	add.w	r1, r9, r0
c0de5b9e:	69c9      	ldr	r1, [r1, #28]
c0de5ba0:	680a      	ldr	r2, [r1, #0]
c0de5ba2:	06d3      	lsls	r3, r2, #27
c0de5ba4:	d41b      	bmi.n	c0de5bde <displayWarningStep+0x52>
c0de5ba6:	2a00      	cmp	r2, #0
c0de5ba8:	d145      	bne.n	c0de5c36 <displayWarningStep+0xaa>
c0de5baa:	69ca      	ldr	r2, [r1, #28]
c0de5bac:	2a00      	cmp	r2, #0
c0de5bae:	d042      	beq.n	c0de5c36 <displayWarningStep+0xaa>
c0de5bb0:	eb09 0300 	add.w	r3, r9, r0
c0de5bb4:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de5bb8:	2b00      	cmp	r3, #0
c0de5bba:	d03e      	beq.n	c0de5c3a <displayWarningStep+0xae>
c0de5bbc:	4448      	add	r0, r9
c0de5bbe:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5bc2:	3801      	subs	r0, #1
c0de5bc4:	4298      	cmp	r0, r3
c0de5bc6:	d11d      	bne.n	c0de5c04 <displayWarningStep+0x78>
c0de5bc8:	6948      	ldr	r0, [r1, #20]
c0de5bca:	7901      	ldrb	r1, [r0, #4]
c0de5bcc:	bb99      	cbnz	r1, c0de5c36 <displayWarningStep+0xaa>
c0de5bce:	68c1      	ldr	r1, [r0, #12]
c0de5bd0:	6982      	ldr	r2, [r0, #24]
c0de5bd2:	6a00      	ldr	r0, [r0, #32]
c0de5bd4:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de5bd8:	2003      	movs	r0, #3
c0de5bda:	9104      	str	r1, [sp, #16]
c0de5bdc:	e01e      	b.n	c0de5c1c <displayWarningStep+0x90>
c0de5bde:	eb09 0100 	add.w	r1, r9, r0
c0de5be2:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5be6:	b179      	cbz	r1, c0de5c08 <displayWarningStep+0x7c>
c0de5be8:	4448      	add	r0, r9
c0de5bea:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5bee:	3801      	subs	r0, #1
c0de5bf0:	4288      	cmp	r0, r1
c0de5bf2:	d107      	bne.n	c0de5c04 <displayWarningStep+0x78>
c0de5bf4:	aa02      	add	r2, sp, #8
c0de5bf6:	2000      	movs	r0, #0
c0de5bf8:	f102 0108 	add.w	r1, r2, #8
c0de5bfc:	f000 f82e 	bl	c0de5c5c <getLastPageInfo>
c0de5c00:	200a      	movs	r0, #10
c0de5c02:	e00b      	b.n	c0de5c1c <displayWarningStep+0x90>
c0de5c04:	2000      	movs	r0, #0
c0de5c06:	e009      	b.n	c0de5c1c <displayWarningStep+0x90>
c0de5c08:	4810      	ldr	r0, [pc, #64]	@ (c0de5c4c <displayWarningStep+0xc0>)
c0de5c0a:	4478      	add	r0, pc
c0de5c0c:	9003      	str	r0, [sp, #12]
c0de5c0e:	4810      	ldr	r0, [pc, #64]	@ (c0de5c50 <displayWarningStep+0xc4>)
c0de5c10:	4478      	add	r0, pc
c0de5c12:	9002      	str	r0, [sp, #8]
c0de5c14:	480f      	ldr	r0, [pc, #60]	@ (c0de5c54 <displayWarningStep+0xc8>)
c0de5c16:	4478      	add	r0, pc
c0de5c18:	9004      	str	r0, [sp, #16]
c0de5c1a:	2001      	movs	r0, #1
c0de5c1c:	2101      	movs	r1, #1
c0de5c1e:	2200      	movs	r2, #0
c0de5c20:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5c24:	2100      	movs	r1, #0
c0de5c26:	9100      	str	r1, [sp, #0]
c0de5c28:	490b      	ldr	r1, [pc, #44]	@ (c0de5c58 <displayWarningStep+0xcc>)
c0de5c2a:	ab02      	add	r3, sp, #8
c0de5c2c:	4479      	add	r1, pc
c0de5c2e:	f7fe fc93 	bl	c0de4558 <nbgl_stepDrawCenteredInfo>
c0de5c32:	f001 f884 	bl	c0de6d3e <nbgl_refresh>
c0de5c36:	b006      	add	sp, #24
c0de5c38:	bd80      	pop	{r7, pc}
c0de5c3a:	6850      	ldr	r0, [r2, #4]
c0de5c3c:	6911      	ldr	r1, [r2, #16]
c0de5c3e:	6992      	ldr	r2, [r2, #24]
c0de5c40:	9004      	str	r0, [sp, #16]
c0de5c42:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5c46:	e7e8      	b.n	c0de5c1a <displayWarningStep+0x8e>
c0de5c48:	00000744 	.word	0x00000744
c0de5c4c:	00001f38 	.word	0x00001f38
c0de5c50:	00002065 	.word	0x00002065
c0de5c54:	00001df7 	.word	0x00001df7
c0de5c58:	00000155 	.word	0x00000155

c0de5c5c <getLastPageInfo>:
c0de5c5c:	b170      	cbz	r0, c0de5c7c <getLastPageInfo+0x20>
c0de5c5e:	4833      	ldr	r0, [pc, #204]	@ (c0de5d2c <getLastPageInfo+0xd0>)
c0de5c60:	4478      	add	r0, pc
c0de5c62:	6008      	str	r0, [r1, #0]
c0de5c64:	4830      	ldr	r0, [pc, #192]	@ (c0de5d28 <getLastPageInfo+0xcc>)
c0de5c66:	eb09 0100 	add.w	r1, r9, r0
c0de5c6a:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5c6e:	2904      	cmp	r1, #4
c0de5c70:	d113      	bne.n	c0de5c9a <getLastPageInfo+0x3e>
c0de5c72:	482f      	ldr	r0, [pc, #188]	@ (c0de5d30 <getLastPageInfo+0xd4>)
c0de5c74:	492f      	ldr	r1, [pc, #188]	@ (c0de5d34 <getLastPageInfo+0xd8>)
c0de5c76:	4478      	add	r0, pc
c0de5c78:	4479      	add	r1, pc
c0de5c7a:	e04f      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5c7c:	4838      	ldr	r0, [pc, #224]	@ (c0de5d60 <getLastPageInfo+0x104>)
c0de5c7e:	4478      	add	r0, pc
c0de5c80:	6008      	str	r0, [r1, #0]
c0de5c82:	4829      	ldr	r0, [pc, #164]	@ (c0de5d28 <getLastPageInfo+0xcc>)
c0de5c84:	eb09 0100 	add.w	r1, r9, r0
c0de5c88:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5c8c:	2904      	cmp	r1, #4
c0de5c8e:	d10b      	bne.n	c0de5ca8 <getLastPageInfo+0x4c>
c0de5c90:	4834      	ldr	r0, [pc, #208]	@ (c0de5d64 <getLastPageInfo+0x108>)
c0de5c92:	4935      	ldr	r1, [pc, #212]	@ (c0de5d68 <getLastPageInfo+0x10c>)
c0de5c94:	4478      	add	r0, pc
c0de5c96:	4479      	add	r1, pc
c0de5c98:	e040      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5c9a:	eb09 0100 	add.w	r1, r9, r0
c0de5c9e:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5ca0:	b171      	cbz	r1, c0de5cc0 <getLastPageInfo+0x64>
c0de5ca2:	4825      	ldr	r0, [pc, #148]	@ (c0de5d38 <getLastPageInfo+0xdc>)
c0de5ca4:	4478      	add	r0, pc
c0de5ca6:	e039      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5ca8:	4448      	add	r0, r9
c0de5caa:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5cac:	f010 0007 	ands.w	r0, r0, #7
c0de5cb0:	d017      	beq.n	c0de5ce2 <getLastPageInfo+0x86>
c0de5cb2:	2801      	cmp	r0, #1
c0de5cb4:	d11a      	bne.n	c0de5cec <getLastPageInfo+0x90>
c0de5cb6:	482f      	ldr	r0, [pc, #188]	@ (c0de5d74 <getLastPageInfo+0x118>)
c0de5cb8:	492f      	ldr	r1, [pc, #188]	@ (c0de5d78 <getLastPageInfo+0x11c>)
c0de5cba:	4478      	add	r0, pc
c0de5cbc:	4479      	add	r1, pc
c0de5cbe:	e02d      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5cc0:	4448      	add	r0, r9
c0de5cc2:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5cc4:	f000 0107 	and.w	r1, r0, #7
c0de5cc8:	2901      	cmp	r1, #1
c0de5cca:	d014      	beq.n	c0de5cf6 <getLastPageInfo+0x9a>
c0de5ccc:	b9e9      	cbnz	r1, c0de5d0a <getLastPageInfo+0xae>
c0de5cce:	0640      	lsls	r0, r0, #25
c0de5cd0:	481a      	ldr	r0, [pc, #104]	@ (c0de5d3c <getLastPageInfo+0xe0>)
c0de5cd2:	491b      	ldr	r1, [pc, #108]	@ (c0de5d40 <getLastPageInfo+0xe4>)
c0de5cd4:	4478      	add	r0, pc
c0de5cd6:	4479      	add	r1, pc
c0de5cd8:	bf58      	it	pl
c0de5cda:	4601      	movpl	r1, r0
c0de5cdc:	4819      	ldr	r0, [pc, #100]	@ (c0de5d44 <getLastPageInfo+0xe8>)
c0de5cde:	4478      	add	r0, pc
c0de5ce0:	e01c      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5ce2:	4822      	ldr	r0, [pc, #136]	@ (c0de5d6c <getLastPageInfo+0x110>)
c0de5ce4:	4922      	ldr	r1, [pc, #136]	@ (c0de5d70 <getLastPageInfo+0x114>)
c0de5ce6:	4478      	add	r0, pc
c0de5ce8:	4479      	add	r1, pc
c0de5cea:	e017      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5cec:	4823      	ldr	r0, [pc, #140]	@ (c0de5d7c <getLastPageInfo+0x120>)
c0de5cee:	4924      	ldr	r1, [pc, #144]	@ (c0de5d80 <getLastPageInfo+0x124>)
c0de5cf0:	4478      	add	r0, pc
c0de5cf2:	4479      	add	r1, pc
c0de5cf4:	e012      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5cf6:	0640      	lsls	r0, r0, #25
c0de5cf8:	4813      	ldr	r0, [pc, #76]	@ (c0de5d48 <getLastPageInfo+0xec>)
c0de5cfa:	4914      	ldr	r1, [pc, #80]	@ (c0de5d4c <getLastPageInfo+0xf0>)
c0de5cfc:	4478      	add	r0, pc
c0de5cfe:	4479      	add	r1, pc
c0de5d00:	bf58      	it	pl
c0de5d02:	4601      	movpl	r1, r0
c0de5d04:	4812      	ldr	r0, [pc, #72]	@ (c0de5d50 <getLastPageInfo+0xf4>)
c0de5d06:	4478      	add	r0, pc
c0de5d08:	e008      	b.n	c0de5d1c <getLastPageInfo+0xc0>
c0de5d0a:	0640      	lsls	r0, r0, #25
c0de5d0c:	4811      	ldr	r0, [pc, #68]	@ (c0de5d54 <getLastPageInfo+0xf8>)
c0de5d0e:	4912      	ldr	r1, [pc, #72]	@ (c0de5d58 <getLastPageInfo+0xfc>)
c0de5d10:	4478      	add	r0, pc
c0de5d12:	4479      	add	r1, pc
c0de5d14:	bf58      	it	pl
c0de5d16:	4601      	movpl	r1, r0
c0de5d18:	4810      	ldr	r0, [pc, #64]	@ (c0de5d5c <getLastPageInfo+0x100>)
c0de5d1a:	4478      	add	r0, pc
c0de5d1c:	6011      	str	r1, [r2, #0]
c0de5d1e:	4902      	ldr	r1, [pc, #8]	@ (c0de5d28 <getLastPageInfo+0xcc>)
c0de5d20:	4449      	add	r1, r9
c0de5d22:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5d24:	4770      	bx	lr
c0de5d26:	bf00      	nop
c0de5d28:	00000744 	.word	0x00000744
c0de5d2c:	00001d8a 	.word	0x00001d8a
c0de5d30:	0000018f 	.word	0x0000018f
c0de5d34:	0000210a 	.word	0x0000210a
c0de5d38:	00000161 	.word	0x00000161
c0de5d3c:	00001edd 	.word	0x00001edd
c0de5d40:	00001f7e 	.word	0x00001f7e
c0de5d44:	00000127 	.word	0x00000127
c0de5d48:	00001e99 	.word	0x00001e99
c0de5d4c:	00001ed7 	.word	0x00001ed7
c0de5d50:	000000ff 	.word	0x000000ff
c0de5d54:	0000200c 	.word	0x0000200c
c0de5d58:	00001f77 	.word	0x00001f77
c0de5d5c:	000000eb 	.word	0x000000eb
c0de5d60:	00001cf0 	.word	0x00001cf0
c0de5d64:	00000185 	.word	0x00000185
c0de5d68:	00001f82 	.word	0x00001f82
c0de5d6c:	00000133 	.word	0x00000133
c0de5d70:	00001eda 	.word	0x00001eda
c0de5d74:	0000015f 	.word	0x0000015f
c0de5d78:	0000206f 	.word	0x0000206f
c0de5d7c:	00000129 	.word	0x00000129
c0de5d80:	00002048 	.word	0x00002048

c0de5d84 <warningNavigate>:
c0de5d84:	2904      	cmp	r1, #4
c0de5d86:	d009      	beq.n	c0de5d9c <warningNavigate+0x18>
c0de5d88:	2901      	cmp	r1, #1
c0de5d8a:	d01f      	beq.n	c0de5dcc <warningNavigate+0x48>
c0de5d8c:	b9e9      	cbnz	r1, c0de5dca <warningNavigate+0x46>
c0de5d8e:	481d      	ldr	r0, [pc, #116]	@ (c0de5e04 <warningNavigate+0x80>)
c0de5d90:	4448      	add	r0, r9
c0de5d92:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5d96:	b368      	cbz	r0, c0de5df4 <warningNavigate+0x70>
c0de5d98:	3801      	subs	r0, #1
c0de5d9a:	e022      	b.n	c0de5de2 <warningNavigate+0x5e>
c0de5d9c:	4819      	ldr	r0, [pc, #100]	@ (c0de5e04 <warningNavigate+0x80>)
c0de5d9e:	eb09 0100 	add.w	r1, r9, r0
c0de5da2:	69c9      	ldr	r1, [r1, #28]
c0de5da4:	7809      	ldrb	r1, [r1, #0]
c0de5da6:	06c9      	lsls	r1, r1, #27
c0de5da8:	d50f      	bpl.n	c0de5dca <warningNavigate+0x46>
c0de5daa:	eb09 0100 	add.w	r1, r9, r0
c0de5dae:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5db2:	b321      	cbz	r1, c0de5dfe <warningNavigate+0x7a>
c0de5db4:	eb09 0200 	add.w	r2, r9, r0
c0de5db8:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5dbc:	3a01      	subs	r2, #1
c0de5dbe:	428a      	cmp	r2, r1
c0de5dc0:	d103      	bne.n	c0de5dca <warningNavigate+0x46>
c0de5dc2:	4448      	add	r0, r9
c0de5dc4:	6a01      	ldr	r1, [r0, #32]
c0de5dc6:	2000      	movs	r0, #0
c0de5dc8:	4708      	bx	r1
c0de5dca:	4770      	bx	lr
c0de5dcc:	480d      	ldr	r0, [pc, #52]	@ (c0de5e04 <warningNavigate+0x80>)
c0de5dce:	eb09 0200 	add.w	r2, r9, r0
c0de5dd2:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5dd6:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5dda:	3a01      	subs	r2, #1
c0de5ddc:	428a      	cmp	r2, r1
c0de5dde:	dd05      	ble.n	c0de5dec <warningNavigate+0x68>
c0de5de0:	1c48      	adds	r0, r1, #1
c0de5de2:	4908      	ldr	r1, [pc, #32]	@ (c0de5e04 <warningNavigate+0x80>)
c0de5de4:	4449      	add	r1, r9
c0de5de6:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5dea:	e003      	b.n	c0de5df4 <warningNavigate+0x70>
c0de5dec:	4448      	add	r0, r9
c0de5dee:	69c0      	ldr	r0, [r0, #28]
c0de5df0:	6801      	ldr	r1, [r0, #0]
c0de5df2:	b109      	cbz	r1, c0de5df8 <warningNavigate+0x74>
c0de5df4:	f7ff beca 	b.w	c0de5b8c <displayWarningStep>
c0de5df8:	69c0      	ldr	r0, [r0, #28]
c0de5dfa:	2800      	cmp	r0, #0
c0de5dfc:	d0fa      	beq.n	c0de5df4 <warningNavigate+0x70>
c0de5dfe:	f000 b817 	b.w	c0de5e30 <launchReviewAfterWarning>
c0de5e02:	bf00      	nop
c0de5e04:	00000744 	.word	0x00000744

c0de5e08 <onReviewAccept>:
c0de5e08:	4803      	ldr	r0, [pc, #12]	@ (c0de5e18 <onReviewAccept+0x10>)
c0de5e0a:	4448      	add	r0, r9
c0de5e0c:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e0e:	b109      	cbz	r1, c0de5e14 <onReviewAccept+0xc>
c0de5e10:	2001      	movs	r0, #1
c0de5e12:	4708      	bx	r1
c0de5e14:	4770      	bx	lr
c0de5e16:	bf00      	nop
c0de5e18:	00000744 	.word	0x00000744

c0de5e1c <onReviewReject>:
c0de5e1c:	4803      	ldr	r0, [pc, #12]	@ (c0de5e2c <onReviewReject+0x10>)
c0de5e1e:	4448      	add	r0, r9
c0de5e20:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e22:	b109      	cbz	r1, c0de5e28 <onReviewReject+0xc>
c0de5e24:	2000      	movs	r0, #0
c0de5e26:	4708      	bx	r1
c0de5e28:	4770      	bx	lr
c0de5e2a:	bf00      	nop
c0de5e2c:	00000744 	.word	0x00000744

c0de5e30 <launchReviewAfterWarning>:
c0de5e30:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5e32:	480c      	ldr	r0, [pc, #48]	@ (c0de5e64 <launchReviewAfterWarning+0x34>)
c0de5e34:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5e38:	2905      	cmp	r1, #5
c0de5e3a:	d00d      	beq.n	c0de5e58 <launchReviewAfterWarning+0x28>
c0de5e3c:	2902      	cmp	r1, #2
c0de5e3e:	bf18      	it	ne
c0de5e40:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e42:	4448      	add	r0, r9
c0de5e44:	1d06      	adds	r6, r0, #4
c0de5e46:	6a00      	ldr	r0, [r0, #32]
c0de5e48:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5e4a:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5e4e:	9003      	str	r0, [sp, #12]
c0de5e50:	2002      	movs	r0, #2
c0de5e52:	f7fe fe23 	bl	c0de4a9c <useCaseReview>
c0de5e56:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e58:	2000      	movs	r0, #0
c0de5e5a:	b004      	add	sp, #16
c0de5e5c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5e60:	f7ff b8fa 	b.w	c0de5058 <displayStreamingReviewPage>
c0de5e64:	00000744 	.word	0x00000744

c0de5e68 <buttonSkipCallback>:
c0de5e68:	b5b0      	push	{r4, r5, r7, lr}
c0de5e6a:	2904      	cmp	r1, #4
c0de5e6c:	d00a      	beq.n	c0de5e84 <buttonSkipCallback+0x1c>
c0de5e6e:	2901      	cmp	r1, #1
c0de5e70:	d017      	beq.n	c0de5ea2 <buttonSkipCallback+0x3a>
c0de5e72:	bbb9      	cbnz	r1, c0de5ee4 <buttonSkipCallback+0x7c>
c0de5e74:	4829      	ldr	r0, [pc, #164]	@ (c0de5f1c <buttonSkipCallback+0xb4>)
c0de5e76:	eb09 0100 	add.w	r1, r9, r0
c0de5e7a:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5e7e:	b391      	cbz	r1, c0de5ee6 <buttonSkipCallback+0x7e>
c0de5e80:	2008      	movs	r0, #8
c0de5e82:	e02a      	b.n	c0de5eda <buttonSkipCallback+0x72>
c0de5e84:	4825      	ldr	r0, [pc, #148]	@ (c0de5f1c <buttonSkipCallback+0xb4>)
c0de5e86:	eb09 0100 	add.w	r1, r9, r0
c0de5e8a:	4448      	add	r0, r9
c0de5e8c:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5e90:	2900      	cmp	r1, #0
c0de5e92:	d03f      	beq.n	c0de5f14 <buttonSkipCallback+0xac>
c0de5e94:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5e98:	3902      	subs	r1, #2
c0de5e9a:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5e9e:	2000      	movs	r0, #0
c0de5ea0:	e030      	b.n	c0de5f04 <buttonSkipCallback+0x9c>
c0de5ea2:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5f1c <buttonSkipCallback+0xb4>)
c0de5ea4:	eb09 0002 	add.w	r0, r9, r2
c0de5ea8:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5eac:	2808      	cmp	r0, #8
c0de5eae:	d113      	bne.n	c0de5ed8 <buttonSkipCallback+0x70>
c0de5eb0:	eb09 0002 	add.w	r0, r9, r2
c0de5eb4:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5eb8:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5ebc:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5ec0:	1e45      	subs	r5, r0, #1
c0de5ec2:	2000      	movs	r0, #0
c0de5ec4:	b2e1      	uxtb	r1, r4
c0de5ec6:	429d      	cmp	r5, r3
c0de5ec8:	bfc8      	it	gt
c0de5eca:	42a3      	cmpgt	r3, r4
c0de5ecc:	dd19      	ble.n	c0de5f02 <buttonSkipCallback+0x9a>
c0de5ece:	eb09 0002 	add.w	r0, r9, r2
c0de5ed2:	1c59      	adds	r1, r3, #1
c0de5ed4:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5ed8:	2000      	movs	r0, #0
c0de5eda:	4910      	ldr	r1, [pc, #64]	@ (c0de5f1c <buttonSkipCallback+0xb4>)
c0de5edc:	4449      	add	r1, r9
c0de5ede:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5ee2:	e00e      	b.n	c0de5f02 <buttonSkipCallback+0x9a>
c0de5ee4:	bdb0      	pop	{r4, r5, r7, pc}
c0de5ee6:	eb09 0100 	add.w	r1, r9, r0
c0de5eea:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5eee:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5ef2:	b2d9      	uxtb	r1, r3
c0de5ef4:	429a      	cmp	r2, r3
c0de5ef6:	dd03      	ble.n	c0de5f00 <buttonSkipCallback+0x98>
c0de5ef8:	4448      	add	r0, r9
c0de5efa:	3a01      	subs	r2, #1
c0de5efc:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5f00:	2008      	movs	r0, #8
c0de5f02:	b119      	cbz	r1, c0de5f0c <buttonSkipCallback+0xa4>
c0de5f04:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f08:	f7fe be9e 	b.w	c0de4c48 <displayReviewPage>
c0de5f0c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f10:	f7ff b8a2 	b.w	c0de5058 <displayStreamingReviewPage>
c0de5f14:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5f16:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f1a:	4700      	bx	r0
c0de5f1c:	00000744 	.word	0x00000744

c0de5f20 <displayAliasFullValue>:
c0de5f20:	b570      	push	{r4, r5, r6, lr}
c0de5f22:	b088      	sub	sp, #32
c0de5f24:	4c1a      	ldr	r4, [pc, #104]	@ (c0de5f90 <displayAliasFullValue+0x70>)
c0de5f26:	f10d 0213 	add.w	r2, sp, #19
c0de5f2a:	eb09 0504 	add.w	r5, r9, r4
c0de5f2e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5f30:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5f34:	ab05      	add	r3, sp, #20
c0de5f36:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5f3a:	9202      	str	r2, [sp, #8]
c0de5f3c:	e9cd 6300 	strd	r6, r3, [sp]
c0de5f40:	aa07      	add	r2, sp, #28
c0de5f42:	ab06      	add	r3, sp, #24
c0de5f44:	f7ff fbca 	bl	c0de56dc <getPairData>
c0de5f48:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5f4a:	b178      	cbz	r0, c0de5f6c <displayAliasFullValue+0x4c>
c0de5f4c:	eb09 0104 	add.w	r1, r9, r4
c0de5f50:	2200      	movs	r2, #0
c0de5f52:	664a      	str	r2, [r1, #100]	@ 0x64
c0de5f54:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de5f58:	7d01      	ldrb	r1, [r0, #20]
c0de5f5a:	2901      	cmp	r1, #1
c0de5f5c:	d008      	beq.n	c0de5f70 <displayAliasFullValue+0x50>
c0de5f5e:	2905      	cmp	r1, #5
c0de5f60:	d008      	beq.n	c0de5f74 <displayAliasFullValue+0x54>
c0de5f62:	2904      	cmp	r1, #4
c0de5f64:	d102      	bne.n	c0de5f6c <displayAliasFullValue+0x4c>
c0de5f66:	6900      	ldr	r0, [r0, #16]
c0de5f68:	300c      	adds	r0, #12
c0de5f6a:	e005      	b.n	c0de5f78 <displayAliasFullValue+0x58>
c0de5f6c:	b008      	add	sp, #32
c0de5f6e:	bd70      	pop	{r4, r5, r6, pc}
c0de5f70:	2002      	movs	r0, #2
c0de5f72:	e003      	b.n	c0de5f7c <displayAliasFullValue+0x5c>
c0de5f74:	6900      	ldr	r0, [r0, #16]
c0de5f76:	3008      	adds	r0, #8
c0de5f78:	7800      	ldrb	r0, [r0, #0]
c0de5f7a:	3001      	adds	r0, #1
c0de5f7c:	eb09 0104 	add.w	r1, r9, r4
c0de5f80:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de5f84:	2000      	movs	r0, #0
c0de5f86:	b008      	add	sp, #32
c0de5f88:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5f8c:	f000 b814 	b.w	c0de5fb8 <displayExtensionStep>
c0de5f90:	00000744 	.word	0x00000744

c0de5f94 <reviewCallback>:
c0de5f94:	b5e0      	push	{r5, r6, r7, lr}
c0de5f96:	4608      	mov	r0, r1
c0de5f98:	f10d 0107 	add.w	r1, sp, #7
c0de5f9c:	f7ff fc78 	bl	c0de5890 <buttonGenericCallback>
c0de5fa0:	b130      	cbz	r0, c0de5fb0 <reviewCallback+0x1c>
c0de5fa2:	4804      	ldr	r0, [pc, #16]	@ (c0de5fb4 <reviewCallback+0x20>)
c0de5fa4:	f000 f991 	bl	c0de62ca <OUTLINED_FUNCTION_8>
c0de5fa8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5fac:	f7fe be4c 	b.w	c0de4c48 <displayReviewPage>
c0de5fb0:	bd8c      	pop	{r2, r3, r7, pc}
c0de5fb2:	bf00      	nop
c0de5fb4:	00000744 	.word	0x00000744

c0de5fb8 <displayExtensionStep>:
c0de5fb8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5fbc:	b088      	sub	sp, #32
c0de5fbe:	4e36      	ldr	r6, [pc, #216]	@ (c0de6098 <displayExtensionStep+0xe0>)
c0de5fc0:	4680      	mov	r8, r0
c0de5fc2:	2000      	movs	r0, #0
c0de5fc4:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de5fc8:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5fcc:	eb09 0006 	add.w	r0, r9, r6
c0de5fd0:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de5fd2:	b108      	cbz	r0, c0de5fd8 <displayExtensionStep+0x20>
c0de5fd4:	f7fe fbe6 	bl	c0de47a4 <nbgl_stepRelease>
c0de5fd8:	eb09 0106 	add.w	r1, r9, r6
c0de5fdc:	f000 f981 	bl	c0de62e2 <OUTLINED_FUNCTION_10>
c0de5fe0:	dd10      	ble.n	c0de6004 <displayExtensionStep+0x4c>
c0de5fe2:	2703      	movs	r7, #3
c0de5fe4:	eb09 0106 	add.w	r1, r9, r6
c0de5fe8:	2800      	cmp	r0, #0
c0de5fea:	bf08      	it	eq
c0de5fec:	2701      	moveq	r7, #1
c0de5fee:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de5ff0:	7d0a      	ldrb	r2, [r1, #20]
c0de5ff2:	2a05      	cmp	r2, #5
c0de5ff4:	d01a      	beq.n	c0de602c <displayExtensionStep+0x74>
c0de5ff6:	2a04      	cmp	r2, #4
c0de5ff8:	d028      	beq.n	c0de604c <displayExtensionStep+0x94>
c0de5ffa:	2a01      	cmp	r2, #1
c0de5ffc:	d147      	bne.n	c0de608e <displayExtensionStep+0xd6>
c0de5ffe:	6808      	ldr	r0, [r1, #0]
c0de6000:	688d      	ldr	r5, [r1, #8]
c0de6002:	e033      	b.n	c0de606c <displayExtensionStep+0xb4>
c0de6004:	d143      	bne.n	c0de608e <displayExtensionStep+0xd6>
c0de6006:	2001      	movs	r0, #1
c0de6008:	2200      	movs	r2, #0
c0de600a:	f88d 001d 	strb.w	r0, [sp, #29]
c0de600e:	4924      	ldr	r1, [pc, #144]	@ (c0de60a0 <displayExtensionStep+0xe8>)
c0de6010:	4479      	add	r1, pc
c0de6012:	9104      	str	r1, [sp, #16]
c0de6014:	4923      	ldr	r1, [pc, #140]	@ (c0de60a4 <displayExtensionStep+0xec>)
c0de6016:	9000      	str	r0, [sp, #0]
c0de6018:	f048 0002 	orr.w	r0, r8, #2
c0de601c:	4479      	add	r1, pc
c0de601e:	9106      	str	r1, [sp, #24]
c0de6020:	4921      	ldr	r1, [pc, #132]	@ (c0de60a8 <displayExtensionStep+0xf0>)
c0de6022:	ab04      	add	r3, sp, #16
c0de6024:	4479      	add	r1, pc
c0de6026:	f7fe fa97 	bl	c0de4558 <nbgl_stepDrawCenteredInfo>
c0de602a:	e02d      	b.n	c0de6088 <displayExtensionStep+0xd0>
c0de602c:	690c      	ldr	r4, [r1, #16]
c0de602e:	0100      	lsls	r0, r0, #4
c0de6030:	6821      	ldr	r1, [r4, #0]
c0de6032:	5808      	ldr	r0, [r1, r0]
c0de6034:	f001 f88e 	bl	c0de7154 <pic>
c0de6038:	4605      	mov	r5, r0
c0de603a:	eb09 0006 	add.w	r0, r9, r6
c0de603e:	6821      	ldr	r1, [r4, #0]
c0de6040:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6044:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de6048:	6840      	ldr	r0, [r0, #4]
c0de604a:	e00d      	b.n	c0de6068 <displayExtensionStep+0xb0>
c0de604c:	690c      	ldr	r4, [r1, #16]
c0de604e:	6821      	ldr	r1, [r4, #0]
c0de6050:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6054:	f001 f87e 	bl	c0de7154 <pic>
c0de6058:	4605      	mov	r5, r0
c0de605a:	eb09 0006 	add.w	r0, r9, r6
c0de605e:	6861      	ldr	r1, [r4, #4]
c0de6060:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6064:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6068:	f001 f874 	bl	c0de7154 <pic>
c0de606c:	b17d      	cbz	r5, c0de608e <displayExtensionStep+0xd6>
c0de606e:	2101      	movs	r1, #1
c0de6070:	ea47 0208 	orr.w	r2, r7, r8
c0de6074:	462b      	mov	r3, r5
c0de6076:	e9cd 0100 	strd	r0, r1, [sp]
c0de607a:	9102      	str	r1, [sp, #8]
c0de607c:	4610      	mov	r0, r2
c0de607e:	2200      	movs	r2, #0
c0de6080:	4906      	ldr	r1, [pc, #24]	@ (c0de609c <displayExtensionStep+0xe4>)
c0de6082:	4479      	add	r1, pc
c0de6084:	f7fe f922 	bl	c0de42cc <nbgl_stepDrawText>
c0de6088:	eb09 0106 	add.w	r1, r9, r6
c0de608c:	6648      	str	r0, [r1, #100]	@ 0x64
c0de608e:	f000 fe56 	bl	c0de6d3e <nbgl_refresh>
c0de6092:	b008      	add	sp, #32
c0de6094:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6098:	00000744 	.word	0x00000744
c0de609c:	00000027 	.word	0x00000027
c0de60a0:	00001ccb 	.word	0x00001ccb
c0de60a4:	0000190c 	.word	0x0000190c
c0de60a8:	00000085 	.word	0x00000085

c0de60ac <extensionNavigate>:
c0de60ac:	b580      	push	{r7, lr}
c0de60ae:	2904      	cmp	r1, #4
c0de60b0:	d00a      	beq.n	c0de60c8 <extensionNavigate+0x1c>
c0de60b2:	2901      	cmp	r1, #1
c0de60b4:	d01d      	beq.n	c0de60f2 <extensionNavigate+0x46>
c0de60b6:	b9d9      	cbnz	r1, c0de60f0 <extensionNavigate+0x44>
c0de60b8:	4818      	ldr	r0, [pc, #96]	@ (c0de611c <extensionNavigate+0x70>)
c0de60ba:	4448      	add	r0, r9
c0de60bc:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de60c0:	b330      	cbz	r0, c0de6110 <extensionNavigate+0x64>
c0de60c2:	1e41      	subs	r1, r0, #1
c0de60c4:	2008      	movs	r0, #8
c0de60c6:	e01c      	b.n	c0de6102 <extensionNavigate+0x56>
c0de60c8:	4814      	ldr	r0, [pc, #80]	@ (c0de611c <extensionNavigate+0x70>)
c0de60ca:	eb09 0100 	add.w	r1, r9, r0
c0de60ce:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de60d2:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de60d6:	3901      	subs	r1, #1
c0de60d8:	4291      	cmp	r1, r2
c0de60da:	d109      	bne.n	c0de60f0 <extensionNavigate+0x44>
c0de60dc:	4448      	add	r0, r9
c0de60de:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de60e0:	f7fe fb60 	bl	c0de47a4 <nbgl_stepRelease>
c0de60e4:	f000 fe44 	bl	c0de6d70 <nbgl_screenRedraw>
c0de60e8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de60ec:	f000 be27 	b.w	c0de6d3e <nbgl_refresh>
c0de60f0:	bd80      	pop	{r7, pc}
c0de60f2:	480a      	ldr	r0, [pc, #40]	@ (c0de611c <extensionNavigate+0x70>)
c0de60f4:	eb09 0100 	add.w	r1, r9, r0
c0de60f8:	f000 f8f3 	bl	c0de62e2 <OUTLINED_FUNCTION_10>
c0de60fc:	dd06      	ble.n	c0de610c <extensionNavigate+0x60>
c0de60fe:	1c41      	adds	r1, r0, #1
c0de6100:	2000      	movs	r0, #0
c0de6102:	4a06      	ldr	r2, [pc, #24]	@ (c0de611c <extensionNavigate+0x70>)
c0de6104:	444a      	add	r2, r9
c0de6106:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de610a:	e002      	b.n	c0de6112 <extensionNavigate+0x66>
c0de610c:	2000      	movs	r0, #0
c0de610e:	e000      	b.n	c0de6112 <extensionNavigate+0x66>
c0de6110:	2008      	movs	r0, #8
c0de6112:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6116:	f7ff bf4f 	b.w	c0de5fb8 <displayExtensionStep>
c0de611a:	bf00      	nop
c0de611c:	00000744 	.word	0x00000744

c0de6120 <statusTickerCallback>:
c0de6120:	4802      	ldr	r0, [pc, #8]	@ (c0de612c <statusTickerCallback+0xc>)
c0de6122:	4448      	add	r0, r9
c0de6124:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de6126:	b100      	cbz	r0, c0de612a <statusTickerCallback+0xa>
c0de6128:	4700      	bx	r0
c0de612a:	4770      	bx	lr
c0de612c:	00000744 	.word	0x00000744

c0de6130 <getChoiceName>:
c0de6130:	b5b0      	push	{r4, r5, r7, lr}
c0de6132:	b090      	sub	sp, #64	@ 0x40
c0de6134:	ad01      	add	r5, sp, #4
c0de6136:	f000 f8cf 	bl	c0de62d8 <OUTLINED_FUNCTION_9>
c0de613a:	4814      	ldr	r0, [pc, #80]	@ (c0de618c <getChoiceName+0x5c>)
c0de613c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6140:	462a      	mov	r2, r5
c0de6142:	4448      	add	r0, r9
c0de6144:	f000 f8b1 	bl	c0de62aa <OUTLINED_FUNCTION_4>
c0de6148:	b150      	cbz	r0, c0de6160 <getChoiceName+0x30>
c0de614a:	7801      	ldrb	r1, [r0, #0]
c0de614c:	290a      	cmp	r1, #10
c0de614e:	d009      	beq.n	c0de6164 <getChoiceName+0x34>
c0de6150:	2909      	cmp	r1, #9
c0de6152:	d105      	bne.n	c0de6160 <getChoiceName+0x30>
c0de6154:	f000 f8ad 	bl	c0de62b2 <OUTLINED_FUNCTION_5>
c0de6158:	4605      	mov	r5, r0
c0de615a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de615e:	e006      	b.n	c0de616e <getChoiceName+0x3e>
c0de6160:	2000      	movs	r0, #0
c0de6162:	e010      	b.n	c0de6186 <getChoiceName+0x56>
c0de6164:	f000 f8a5 	bl	c0de62b2 <OUTLINED_FUNCTION_5>
c0de6168:	4605      	mov	r5, r0
c0de616a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de616e:	f000 fff1 	bl	c0de7154 <pic>
c0de6172:	7829      	ldrb	r1, [r5, #0]
c0de6174:	42a1      	cmp	r1, r4
c0de6176:	d904      	bls.n	c0de6182 <getChoiceName+0x52>
c0de6178:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de617c:	f000 ffea 	bl	c0de7154 <pic>
c0de6180:	e001      	b.n	c0de6186 <getChoiceName+0x56>
c0de6182:	4803      	ldr	r0, [pc, #12]	@ (c0de6190 <getChoiceName+0x60>)
c0de6184:	4478      	add	r0, pc
c0de6186:	b010      	add	sp, #64	@ 0x40
c0de6188:	bdb0      	pop	{r4, r5, r7, pc}
c0de618a:	bf00      	nop
c0de618c:	00000744 	.word	0x00000744
c0de6190:	00001b57 	.word	0x00001b57

c0de6194 <onChoiceSelected>:
c0de6194:	b570      	push	{r4, r5, r6, lr}
c0de6196:	b090      	sub	sp, #64	@ 0x40
c0de6198:	ad01      	add	r5, sp, #4
c0de619a:	f000 f89d 	bl	c0de62d8 <OUTLINED_FUNCTION_9>
c0de619e:	4e17      	ldr	r6, [pc, #92]	@ (c0de61fc <onChoiceSelected+0x68>)
c0de61a0:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de61a4:	462a      	mov	r2, r5
c0de61a6:	eb09 0006 	add.w	r0, r9, r6
c0de61aa:	f000 f87e 	bl	c0de62aa <OUTLINED_FUNCTION_4>
c0de61ae:	b318      	cbz	r0, c0de61f8 <onChoiceSelected+0x64>
c0de61b0:	7801      	ldrb	r1, [r0, #0]
c0de61b2:	290a      	cmp	r1, #10
c0de61b4:	d008      	beq.n	c0de61c8 <onChoiceSelected+0x34>
c0de61b6:	2909      	cmp	r1, #9
c0de61b8:	d10f      	bne.n	c0de61da <onChoiceSelected+0x46>
c0de61ba:	f000 f87a 	bl	c0de62b2 <OUTLINED_FUNCTION_5>
c0de61be:	7941      	ldrb	r1, [r0, #5]
c0de61c0:	42a1      	cmp	r1, r4
c0de61c2:	d90a      	bls.n	c0de61da <onChoiceSelected+0x46>
c0de61c4:	3007      	adds	r0, #7
c0de61c6:	e006      	b.n	c0de61d6 <onChoiceSelected+0x42>
c0de61c8:	f000 f873 	bl	c0de62b2 <OUTLINED_FUNCTION_5>
c0de61cc:	7a01      	ldrb	r1, [r0, #8]
c0de61ce:	42a1      	cmp	r1, r4
c0de61d0:	d903      	bls.n	c0de61da <onChoiceSelected+0x46>
c0de61d2:	6840      	ldr	r0, [r0, #4]
c0de61d4:	4420      	add	r0, r4
c0de61d6:	7800      	ldrb	r0, [r0, #0]
c0de61d8:	e000      	b.n	c0de61dc <onChoiceSelected+0x48>
c0de61da:	20ff      	movs	r0, #255	@ 0xff
c0de61dc:	28ff      	cmp	r0, #255	@ 0xff
c0de61de:	d006      	beq.n	c0de61ee <onChoiceSelected+0x5a>
c0de61e0:	eb09 0106 	add.w	r1, r9, r6
c0de61e4:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de61e6:	b112      	cbz	r2, c0de61ee <onChoiceSelected+0x5a>
c0de61e8:	2100      	movs	r1, #0
c0de61ea:	4790      	blx	r2
c0de61ec:	e004      	b.n	c0de61f8 <onChoiceSelected+0x64>
c0de61ee:	eb09 0006 	add.w	r0, r9, r6
c0de61f2:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de61f4:	b100      	cbz	r0, c0de61f8 <onChoiceSelected+0x64>
c0de61f6:	4780      	blx	r0
c0de61f8:	b010      	add	sp, #64	@ 0x40
c0de61fa:	bd70      	pop	{r4, r5, r6, pc}
c0de61fc:	00000744 	.word	0x00000744

c0de6200 <streamingReviewCallback>:
c0de6200:	b5e0      	push	{r5, r6, r7, lr}
c0de6202:	4608      	mov	r0, r1
c0de6204:	f10d 0107 	add.w	r1, sp, #7
c0de6208:	f7ff fb42 	bl	c0de5890 <buttonGenericCallback>
c0de620c:	b130      	cbz	r0, c0de621c <streamingReviewCallback+0x1c>
c0de620e:	4804      	ldr	r0, [pc, #16]	@ (c0de6220 <streamingReviewCallback+0x20>)
c0de6210:	f000 f85b 	bl	c0de62ca <OUTLINED_FUNCTION_8>
c0de6214:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6218:	f7fe bf1e 	b.w	c0de5058 <displayStreamingReviewPage>
c0de621c:	bd8c      	pop	{r2, r3, r7, pc}
c0de621e:	bf00      	nop
c0de6220:	00000744 	.word	0x00000744

c0de6224 <onChoiceAccept>:
c0de6224:	4803      	ldr	r0, [pc, #12]	@ (c0de6234 <onChoiceAccept+0x10>)
c0de6226:	4448      	add	r0, r9
c0de6228:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de622a:	b109      	cbz	r1, c0de6230 <onChoiceAccept+0xc>
c0de622c:	2001      	movs	r0, #1
c0de622e:	4708      	bx	r1
c0de6230:	4770      	bx	lr
c0de6232:	bf00      	nop
c0de6234:	00000744 	.word	0x00000744

c0de6238 <onChoiceReject>:
c0de6238:	4803      	ldr	r0, [pc, #12]	@ (c0de6248 <onChoiceReject+0x10>)
c0de623a:	4448      	add	r0, r9
c0de623c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de623e:	b109      	cbz	r1, c0de6244 <onChoiceReject+0xc>
c0de6240:	2000      	movs	r0, #0
c0de6242:	4708      	bx	r1
c0de6244:	4770      	bx	lr
c0de6246:	bf00      	nop
c0de6248:	00000744 	.word	0x00000744

c0de624c <genericChoiceCallback>:
c0de624c:	b5e0      	push	{r5, r6, r7, lr}
c0de624e:	4608      	mov	r0, r1
c0de6250:	f10d 0107 	add.w	r1, sp, #7
c0de6254:	f7ff fb1c 	bl	c0de5890 <buttonGenericCallback>
c0de6258:	b128      	cbz	r0, c0de6266 <genericChoiceCallback+0x1a>
c0de625a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de625e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6262:	f7fe bff5 	b.w	c0de5250 <displayChoicePage>
c0de6266:	bd8c      	pop	{r2, r3, r7, pc}

c0de6268 <OUTLINED_FUNCTION_0>:
c0de6268:	460e      	mov	r6, r1
c0de626a:	2140      	movs	r1, #64	@ 0x40
c0de626c:	4698      	mov	r8, r3
c0de626e:	4615      	mov	r5, r2
c0de6270:	eb09 0400 	add.w	r4, r9, r0
c0de6274:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de6278:	f001 ba78 	b.w	c0de776c <__aeabi_memclr>

c0de627c <OUTLINED_FUNCTION_1>:
c0de627c:	2200      	movs	r2, #0
c0de627e:	eb09 0100 	add.w	r1, r9, r0
c0de6282:	634a      	str	r2, [r1, #52]	@ 0x34
c0de6284:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de6288:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de628c:	3901      	subs	r1, #1
c0de628e:	4291      	cmp	r1, r2
c0de6290:	4770      	bx	lr

c0de6292 <OUTLINED_FUNCTION_2>:
c0de6292:	eb09 0600 	add.w	r6, r9, r0
c0de6296:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de629a:	f001 ba67 	b.w	c0de776c <__aeabi_memclr>

c0de629e <OUTLINED_FUNCTION_3>:
c0de629e:	eb09 0500 	add.w	r5, r9, r0
c0de62a2:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de62a6:	f001 ba61 	b.w	c0de776c <__aeabi_memclr>

c0de62aa <OUTLINED_FUNCTION_4>:
c0de62aa:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de62ae:	f7ff b9d1 	b.w	c0de5654 <getContentElemAtIdx>

c0de62b2 <OUTLINED_FUNCTION_5>:
c0de62b2:	3004      	adds	r0, #4
c0de62b4:	f000 bf4e 	b.w	c0de7154 <pic>

c0de62b8 <OUTLINED_FUNCTION_6>:
c0de62b8:	e9cd 6500 	strd	r6, r5, [sp]
c0de62bc:	f7fe bdb0 	b.w	c0de4e20 <drawStep>

c0de62c0 <OUTLINED_FUNCTION_7>:
c0de62c0:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de62c4:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de62c8:	4730      	bx	r6

c0de62ca <OUTLINED_FUNCTION_8>:
c0de62ca:	eb09 0100 	add.w	r1, r9, r0
c0de62ce:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de62d2:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de62d6:	4770      	bx	lr

c0de62d8 <OUTLINED_FUNCTION_9>:
c0de62d8:	4604      	mov	r4, r0
c0de62da:	2138      	movs	r1, #56	@ 0x38
c0de62dc:	4628      	mov	r0, r5
c0de62de:	f001 ba45 	b.w	c0de776c <__aeabi_memclr>

c0de62e2 <OUTLINED_FUNCTION_10>:
c0de62e2:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de62e6:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de62ea:	3901      	subs	r1, #1
c0de62ec:	4281      	cmp	r1, r0
c0de62ee:	4770      	bx	lr

c0de62f0 <bip32_path_read>:
c0de62f0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de62f4:	b10b      	cbz	r3, c0de62fa <bip32_path_read+0xa>
c0de62f6:	2b0a      	cmp	r3, #10
c0de62f8:	d902      	bls.n	c0de6300 <bip32_path_read+0x10>
c0de62fa:	2000      	movs	r0, #0
c0de62fc:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6300:	4692      	mov	sl, r2
c0de6302:	460e      	mov	r6, r1
c0de6304:	4683      	mov	fp, r0
c0de6306:	425f      	negs	r7, r3
c0de6308:	2500      	movs	r5, #0
c0de630a:	f04f 0800 	mov.w	r8, #0
c0de630e:	9301      	str	r3, [sp, #4]
c0de6310:	42af      	cmp	r7, r5
c0de6312:	d00c      	beq.n	c0de632e <bip32_path_read+0x3e>
c0de6314:	f108 0404 	add.w	r4, r8, #4
c0de6318:	42b4      	cmp	r4, r6
c0de631a:	d808      	bhi.n	c0de632e <bip32_path_read+0x3e>
c0de631c:	4658      	mov	r0, fp
c0de631e:	4641      	mov	r1, r8
c0de6320:	f000 fb6f 	bl	c0de6a02 <read_u32_be>
c0de6324:	f84a 0008 	str.w	r0, [sl, r8]
c0de6328:	3d01      	subs	r5, #1
c0de632a:	46a0      	mov	r8, r4
c0de632c:	e7f0      	b.n	c0de6310 <bip32_path_read+0x20>
c0de632e:	9a01      	ldr	r2, [sp, #4]
c0de6330:	4269      	negs	r1, r5
c0de6332:	2000      	movs	r0, #0
c0de6334:	4291      	cmp	r1, r2
c0de6336:	bf28      	it	cs
c0de6338:	2001      	movcs	r0, #1
c0de633a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de633e <buffer_seek_cur>:
c0de633e:	6882      	ldr	r2, [r0, #8]
c0de6340:	1889      	adds	r1, r1, r2
c0de6342:	d205      	bcs.n	c0de6350 <buffer_seek_cur+0x12>
c0de6344:	6842      	ldr	r2, [r0, #4]
c0de6346:	4291      	cmp	r1, r2
c0de6348:	bf9e      	ittt	ls
c0de634a:	6081      	strls	r1, [r0, #8]
c0de634c:	2001      	movls	r0, #1
c0de634e:	4770      	bxls	lr
c0de6350:	2000      	movs	r0, #0
c0de6352:	4770      	bx	lr

c0de6354 <buffer_read_u8>:
c0de6354:	b510      	push	{r4, lr}
c0de6356:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de635a:	429a      	cmp	r2, r3
c0de635c:	d00a      	beq.n	c0de6374 <buffer_read_u8+0x20>
c0de635e:	6804      	ldr	r4, [r0, #0]
c0de6360:	5ce4      	ldrb	r4, [r4, r3]
c0de6362:	700c      	strb	r4, [r1, #0]
c0de6364:	6881      	ldr	r1, [r0, #8]
c0de6366:	3101      	adds	r1, #1
c0de6368:	d206      	bcs.n	c0de6378 <buffer_read_u8+0x24>
c0de636a:	6844      	ldr	r4, [r0, #4]
c0de636c:	42a1      	cmp	r1, r4
c0de636e:	bf98      	it	ls
c0de6370:	6081      	strls	r1, [r0, #8]
c0de6372:	e001      	b.n	c0de6378 <buffer_read_u8+0x24>
c0de6374:	2000      	movs	r0, #0
c0de6376:	7008      	strb	r0, [r1, #0]
c0de6378:	1ad0      	subs	r0, r2, r3
c0de637a:	bf18      	it	ne
c0de637c:	2001      	movne	r0, #1
c0de637e:	bd10      	pop	{r4, pc}

c0de6380 <buffer_read_u64>:
c0de6380:	b570      	push	{r4, r5, r6, lr}
c0de6382:	f000 f87d 	bl	c0de6480 <OUTLINED_FUNCTION_0>
c0de6386:	2e07      	cmp	r6, #7
c0de6388:	d904      	bls.n	c0de6394 <buffer_read_u64+0x14>
c0de638a:	6820      	ldr	r0, [r4, #0]
c0de638c:	b132      	cbz	r2, c0de639c <buffer_read_u64+0x1c>
c0de638e:	f000 fb6f 	bl	c0de6a70 <read_u64_le>
c0de6392:	e005      	b.n	c0de63a0 <buffer_read_u64+0x20>
c0de6394:	2000      	movs	r0, #0
c0de6396:	e9c5 0000 	strd	r0, r0, [r5]
c0de639a:	e00c      	b.n	c0de63b6 <buffer_read_u64+0x36>
c0de639c:	f000 fb3d 	bl	c0de6a1a <read_u64_be>
c0de63a0:	e9c5 0100 	strd	r0, r1, [r5]
c0de63a4:	68a0      	ldr	r0, [r4, #8]
c0de63a6:	f110 0f09 	cmn.w	r0, #9
c0de63aa:	d804      	bhi.n	c0de63b6 <buffer_read_u64+0x36>
c0de63ac:	6861      	ldr	r1, [r4, #4]
c0de63ae:	3008      	adds	r0, #8
c0de63b0:	4288      	cmp	r0, r1
c0de63b2:	bf98      	it	ls
c0de63b4:	60a0      	strls	r0, [r4, #8]
c0de63b6:	2000      	movs	r0, #0
c0de63b8:	2e07      	cmp	r6, #7
c0de63ba:	bf88      	it	hi
c0de63bc:	2001      	movhi	r0, #1
c0de63be:	bd70      	pop	{r4, r5, r6, pc}

c0de63c0 <buffer_read_varint>:
c0de63c0:	b5b0      	push	{r4, r5, r7, lr}
c0de63c2:	4604      	mov	r4, r0
c0de63c4:	460d      	mov	r5, r1
c0de63c6:	6800      	ldr	r0, [r0, #0]
c0de63c8:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de63cc:	4410      	add	r0, r2
c0de63ce:	1a89      	subs	r1, r1, r2
c0de63d0:	462a      	mov	r2, r5
c0de63d2:	f000 fbb7 	bl	c0de6b44 <varint_read>
c0de63d6:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de63da:	dd0a      	ble.n	c0de63f2 <buffer_read_varint+0x32>
c0de63dc:	68a1      	ldr	r1, [r4, #8]
c0de63de:	1840      	adds	r0, r0, r1
c0de63e0:	d205      	bcs.n	c0de63ee <buffer_read_varint+0x2e>
c0de63e2:	6861      	ldr	r1, [r4, #4]
c0de63e4:	4288      	cmp	r0, r1
c0de63e6:	bf9e      	ittt	ls
c0de63e8:	60a0      	strls	r0, [r4, #8]
c0de63ea:	2001      	movls	r0, #1
c0de63ec:	bdb0      	popls	{r4, r5, r7, pc}
c0de63ee:	2000      	movs	r0, #0
c0de63f0:	bdb0      	pop	{r4, r5, r7, pc}
c0de63f2:	2000      	movs	r0, #0
c0de63f4:	e9c5 0000 	strd	r0, r0, [r5]
c0de63f8:	bdb0      	pop	{r4, r5, r7, pc}

c0de63fa <buffer_read_bip32_path>:
c0de63fa:	b5b0      	push	{r4, r5, r7, lr}
c0de63fc:	4604      	mov	r4, r0
c0de63fe:	4615      	mov	r5, r2
c0de6400:	460a      	mov	r2, r1
c0de6402:	6800      	ldr	r0, [r0, #0]
c0de6404:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6408:	4418      	add	r0, r3
c0de640a:	1ac9      	subs	r1, r1, r3
c0de640c:	462b      	mov	r3, r5
c0de640e:	f7ff ff6f 	bl	c0de62f0 <bip32_path_read>
c0de6412:	b140      	cbz	r0, c0de6426 <buffer_read_bip32_path+0x2c>
c0de6414:	68a2      	ldr	r2, [r4, #8]
c0de6416:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de641a:	4291      	cmp	r1, r2
c0de641c:	d303      	bcc.n	c0de6426 <buffer_read_bip32_path+0x2c>
c0de641e:	6862      	ldr	r2, [r4, #4]
c0de6420:	4291      	cmp	r1, r2
c0de6422:	bf98      	it	ls
c0de6424:	60a1      	strls	r1, [r4, #8]
c0de6426:	bdb0      	pop	{r4, r5, r7, pc}

c0de6428 <buffer_copy>:
c0de6428:	b5b0      	push	{r4, r5, r7, lr}
c0de642a:	4614      	mov	r4, r2
c0de642c:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6430:	1a9d      	subs	r5, r3, r2
c0de6432:	42a5      	cmp	r5, r4
c0de6434:	d806      	bhi.n	c0de6444 <buffer_copy+0x1c>
c0de6436:	6800      	ldr	r0, [r0, #0]
c0de6438:	4402      	add	r2, r0
c0de643a:	4608      	mov	r0, r1
c0de643c:	4611      	mov	r1, r2
c0de643e:	462a      	mov	r2, r5
c0de6440:	f001 f98c 	bl	c0de775c <__aeabi_memmove>
c0de6444:	2000      	movs	r0, #0
c0de6446:	42a5      	cmp	r5, r4
c0de6448:	bf98      	it	ls
c0de644a:	2001      	movls	r0, #1
c0de644c:	bdb0      	pop	{r4, r5, r7, pc}

c0de644e <buffer_move>:
c0de644e:	b5b0      	push	{r4, r5, r7, lr}
c0de6450:	4615      	mov	r5, r2
c0de6452:	4604      	mov	r4, r0
c0de6454:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6458:	1a12      	subs	r2, r2, r0
c0de645a:	42aa      	cmp	r2, r5
c0de645c:	bf84      	itt	hi
c0de645e:	2000      	movhi	r0, #0
c0de6460:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6462:	6823      	ldr	r3, [r4, #0]
c0de6464:	4403      	add	r3, r0
c0de6466:	4608      	mov	r0, r1
c0de6468:	4619      	mov	r1, r3
c0de646a:	f001 f977 	bl	c0de775c <__aeabi_memmove>
c0de646e:	68a0      	ldr	r0, [r4, #8]
c0de6470:	1940      	adds	r0, r0, r5
c0de6472:	d203      	bcs.n	c0de647c <buffer_move+0x2e>
c0de6474:	6861      	ldr	r1, [r4, #4]
c0de6476:	4288      	cmp	r0, r1
c0de6478:	bf98      	it	ls
c0de647a:	60a0      	strls	r0, [r4, #8]
c0de647c:	2001      	movs	r0, #1
c0de647e:	bdb0      	pop	{r4, r5, r7, pc}

c0de6480 <OUTLINED_FUNCTION_0>:
c0de6480:	4604      	mov	r4, r0
c0de6482:	460d      	mov	r5, r1
c0de6484:	6840      	ldr	r0, [r0, #4]
c0de6486:	68a1      	ldr	r1, [r4, #8]
c0de6488:	1a46      	subs	r6, r0, r1
c0de648a:	4770      	bx	lr

c0de648c <bip32_derive_with_seed_init_privkey_256>:
c0de648c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6490:	b095      	sub	sp, #84	@ 0x54
c0de6492:	460d      	mov	r5, r1
c0de6494:	4607      	mov	r7, r0
c0de6496:	a904      	add	r1, sp, #16
c0de6498:	469a      	mov	sl, r3
c0de649a:	4614      	mov	r4, r2
c0de649c:	4628      	mov	r0, r5
c0de649e:	f000 ffb9 	bl	c0de7414 <cx_ecdomain_parameters_length>
c0de64a2:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de64a6:	4606      	mov	r6, r0
c0de64a8:	b9e0      	cbnz	r0, c0de64e4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de64aa:	9804      	ldr	r0, [sp, #16]
c0de64ac:	2820      	cmp	r0, #32
c0de64ae:	d117      	bne.n	c0de64e0 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de64b0:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de64b2:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de64b6:	ab05      	add	r3, sp, #20
c0de64b8:	e9cd 3200 	strd	r3, r2, [sp]
c0de64bc:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de64c0:	4638      	mov	r0, r7
c0de64c2:	4629      	mov	r1, r5
c0de64c4:	4622      	mov	r2, r4
c0de64c6:	4653      	mov	r3, sl
c0de64c8:	f000 f818 	bl	c0de64fc <os_derive_bip32_with_seed_no_throw>
c0de64cc:	4606      	mov	r6, r0
c0de64ce:	b948      	cbnz	r0, c0de64e4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de64d0:	9a04      	ldr	r2, [sp, #16]
c0de64d2:	a905      	add	r1, sp, #20
c0de64d4:	4628      	mov	r0, r5
c0de64d6:	4643      	mov	r3, r8
c0de64d8:	f000 fc12 	bl	c0de6d00 <cx_ecfp_init_private_key_no_throw>
c0de64dc:	4606      	mov	r6, r0
c0de64de:	e001      	b.n	c0de64e4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de64e0:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de64e4:	a805      	add	r0, sp, #20
c0de64e6:	2140      	movs	r1, #64	@ 0x40
c0de64e8:	f001 f94e 	bl	c0de7788 <explicit_bzero>
c0de64ec:	b116      	cbz	r6, c0de64f4 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de64ee:	4640      	mov	r0, r8
c0de64f0:	f000 f89f 	bl	c0de6632 <OUTLINED_FUNCTION_0>
c0de64f4:	4630      	mov	r0, r6
c0de64f6:	b015      	add	sp, #84	@ 0x54
c0de64f8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de64fc <os_derive_bip32_with_seed_no_throw>:
c0de64fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6500:	b090      	sub	sp, #64	@ 0x40
c0de6502:	f10d 0810 	add.w	r8, sp, #16
c0de6506:	4607      	mov	r7, r0
c0de6508:	469b      	mov	fp, r3
c0de650a:	4616      	mov	r6, r2
c0de650c:	460c      	mov	r4, r1
c0de650e:	4640      	mov	r0, r8
c0de6510:	f001 f970 	bl	c0de77f4 <setjmp>
c0de6514:	b285      	uxth	r5, r0
c0de6516:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de651a:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de651e:	b155      	cbz	r5, c0de6536 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6520:	2000      	movs	r0, #0
c0de6522:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6526:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6528:	f001 f818 	bl	c0de755c <try_context_set>
c0de652c:	2140      	movs	r1, #64	@ 0x40
c0de652e:	4650      	mov	r0, sl
c0de6530:	f001 f92a 	bl	c0de7788 <explicit_bzero>
c0de6534:	e012      	b.n	c0de655c <os_derive_bip32_with_seed_no_throw+0x60>
c0de6536:	a804      	add	r0, sp, #16
c0de6538:	f001 f810 	bl	c0de755c <try_context_set>
c0de653c:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de653e:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6540:	4668      	mov	r0, sp
c0de6542:	4632      	mov	r2, r6
c0de6544:	465b      	mov	r3, fp
c0de6546:	f8c0 a000 	str.w	sl, [r0]
c0de654a:	6041      	str	r1, [r0, #4]
c0de654c:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de654e:	6081      	str	r1, [r0, #8]
c0de6550:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6552:	60c1      	str	r1, [r0, #12]
c0de6554:	4638      	mov	r0, r7
c0de6556:	4621      	mov	r1, r4
c0de6558:	f000 ff66 	bl	c0de7428 <os_perso_derive_node_with_seed_key>
c0de655c:	f000 fff6 	bl	c0de754c <try_context_get>
c0de6560:	4540      	cmp	r0, r8
c0de6562:	d102      	bne.n	c0de656a <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6564:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6566:	f000 fff9 	bl	c0de755c <try_context_set>
c0de656a:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de656e:	b918      	cbnz	r0, c0de6578 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6570:	4628      	mov	r0, r5
c0de6572:	b010      	add	sp, #64	@ 0x40
c0de6574:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6578:	f000 fc47 	bl	c0de6e0a <os_longjmp>

c0de657c <bip32_derive_with_seed_get_pubkey_256>:
c0de657c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de657e:	b0a1      	sub	sp, #132	@ 0x84
c0de6580:	460e      	mov	r6, r1
c0de6582:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6584:	9103      	str	r1, [sp, #12]
c0de6586:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6588:	9102      	str	r1, [sp, #8]
c0de658a:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de658c:	9101      	str	r1, [sp, #4]
c0de658e:	a917      	add	r1, sp, #92	@ 0x5c
c0de6590:	9100      	str	r1, [sp, #0]
c0de6592:	4631      	mov	r1, r6
c0de6594:	f7ff ff7a 	bl	c0de648c <bip32_derive_with_seed_init_privkey_256>
c0de6598:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de659a:	4605      	mov	r5, r0
c0de659c:	b9b8      	cbnz	r0, c0de65ce <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de659e:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de65a0:	2301      	movs	r3, #1
c0de65a2:	9000      	str	r0, [sp, #0]
c0de65a4:	af04      	add	r7, sp, #16
c0de65a6:	aa17      	add	r2, sp, #92	@ 0x5c
c0de65a8:	4630      	mov	r0, r6
c0de65aa:	4639      	mov	r1, r7
c0de65ac:	f000 fba3 	bl	c0de6cf6 <cx_ecfp_generate_pair2_no_throw>
c0de65b0:	4605      	mov	r5, r0
c0de65b2:	b960      	cbnz	r0, c0de65ce <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65b4:	9805      	ldr	r0, [sp, #20]
c0de65b6:	2841      	cmp	r0, #65	@ 0x41
c0de65b8:	d107      	bne.n	c0de65ca <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de65ba:	f107 0108 	add.w	r1, r7, #8
c0de65be:	4620      	mov	r0, r4
c0de65c0:	2241      	movs	r2, #65	@ 0x41
c0de65c2:	f001 f8c9 	bl	c0de7758 <__aeabi_memcpy>
c0de65c6:	2500      	movs	r5, #0
c0de65c8:	e001      	b.n	c0de65ce <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65ca:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de65ce:	a817      	add	r0, sp, #92	@ 0x5c
c0de65d0:	f000 f82f 	bl	c0de6632 <OUTLINED_FUNCTION_0>
c0de65d4:	b11d      	cbz	r5, c0de65de <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de65d6:	4620      	mov	r0, r4
c0de65d8:	2141      	movs	r1, #65	@ 0x41
c0de65da:	f001 f8d5 	bl	c0de7788 <explicit_bzero>
c0de65de:	4628      	mov	r0, r5
c0de65e0:	b021      	add	sp, #132	@ 0x84
c0de65e2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de65e4 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de65e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de65e6:	b08f      	sub	sp, #60	@ 0x3c
c0de65e8:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de65ea:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de65ec:	683c      	ldr	r4, [r7, #0]
c0de65ee:	9503      	str	r5, [sp, #12]
c0de65f0:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de65f2:	9502      	str	r5, [sp, #8]
c0de65f4:	2500      	movs	r5, #0
c0de65f6:	9501      	str	r5, [sp, #4]
c0de65f8:	ad05      	add	r5, sp, #20
c0de65fa:	9500      	str	r5, [sp, #0]
c0de65fc:	f7ff ff46 	bl	c0de648c <bip32_derive_with_seed_init_privkey_256>
c0de6600:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6602:	4606      	mov	r6, r0
c0de6604:	b950      	cbnz	r0, c0de661c <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6606:	ae14      	add	r6, sp, #80	@ 0x50
c0de6608:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de660a:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de660c:	e9cd 6500 	strd	r6, r5, [sp]
c0de6610:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6614:	a805      	add	r0, sp, #20
c0de6616:	f000 fb69 	bl	c0de6cec <cx_ecdsa_sign_no_throw>
c0de661a:	4606      	mov	r6, r0
c0de661c:	a805      	add	r0, sp, #20
c0de661e:	f000 f808 	bl	c0de6632 <OUTLINED_FUNCTION_0>
c0de6622:	b11e      	cbz	r6, c0de662c <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6624:	4628      	mov	r0, r5
c0de6626:	4621      	mov	r1, r4
c0de6628:	f001 f8ae 	bl	c0de7788 <explicit_bzero>
c0de662c:	4630      	mov	r0, r6
c0de662e:	b00f      	add	sp, #60	@ 0x3c
c0de6630:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6632 <OUTLINED_FUNCTION_0>:
c0de6632:	2128      	movs	r1, #40	@ 0x28
c0de6634:	f001 b8a8 	b.w	c0de7788 <explicit_bzero>

c0de6638 <format_u64>:
c0de6638:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de663c:	b1f9      	cbz	r1, c0de667e <format_u64+0x46>
c0de663e:	4615      	mov	r5, r2
c0de6640:	4604      	mov	r4, r0
c0de6642:	f1a1 0801 	sub.w	r8, r1, #1
c0de6646:	2700      	movs	r7, #0
c0de6648:	2600      	movs	r6, #0
c0de664a:	f1b5 000a 	subs.w	r0, r5, #10
c0de664e:	f173 0000 	sbcs.w	r0, r3, #0
c0de6652:	d316      	bcc.n	c0de6682 <format_u64+0x4a>
c0de6654:	4619      	mov	r1, r3
c0de6656:	4628      	mov	r0, r5
c0de6658:	220a      	movs	r2, #10
c0de665a:	2300      	movs	r3, #0
c0de665c:	f001 f88a 	bl	c0de7774 <__aeabi_uldivmod>
c0de6660:	460b      	mov	r3, r1
c0de6662:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6666:	1cba      	adds	r2, r7, #2
c0de6668:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de666c:	4605      	mov	r5, r0
c0de666e:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6672:	55e1      	strb	r1, [r4, r7]
c0de6674:	1c79      	adds	r1, r7, #1
c0de6676:	4542      	cmp	r2, r8
c0de6678:	460f      	mov	r7, r1
c0de667a:	d9e6      	bls.n	c0de664a <format_u64+0x12>
c0de667c:	e012      	b.n	c0de66a4 <format_u64+0x6c>
c0de667e:	2600      	movs	r6, #0
c0de6680:	e010      	b.n	c0de66a4 <format_u64+0x6c>
c0de6682:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6686:	19e1      	adds	r1, r4, r7
c0de6688:	55e0      	strb	r0, [r4, r7]
c0de668a:	2000      	movs	r0, #0
c0de668c:	7048      	strb	r0, [r1, #1]
c0de668e:	b2c1      	uxtb	r1, r0
c0de6690:	428f      	cmp	r7, r1
c0de6692:	d906      	bls.n	c0de66a2 <format_u64+0x6a>
c0de6694:	5c62      	ldrb	r2, [r4, r1]
c0de6696:	5de3      	ldrb	r3, [r4, r7]
c0de6698:	3001      	adds	r0, #1
c0de669a:	5463      	strb	r3, [r4, r1]
c0de669c:	55e2      	strb	r2, [r4, r7]
c0de669e:	3f01      	subs	r7, #1
c0de66a0:	e7f5      	b.n	c0de668e <format_u64+0x56>
c0de66a2:	2601      	movs	r6, #1
c0de66a4:	4630      	mov	r0, r6
c0de66a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de66aa <format_fpu64>:
c0de66aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de66ae:	b086      	sub	sp, #24
c0de66b0:	466c      	mov	r4, sp
c0de66b2:	4688      	mov	r8, r1
c0de66b4:	4605      	mov	r5, r0
c0de66b6:	2115      	movs	r1, #21
c0de66b8:	461e      	mov	r6, r3
c0de66ba:	4617      	mov	r7, r2
c0de66bc:	4620      	mov	r0, r4
c0de66be:	f001 f855 	bl	c0de776c <__aeabi_memclr>
c0de66c2:	4620      	mov	r0, r4
c0de66c4:	2115      	movs	r1, #21
c0de66c6:	463a      	mov	r2, r7
c0de66c8:	4633      	mov	r3, r6
c0de66ca:	f7ff ffb5 	bl	c0de6638 <format_u64>
c0de66ce:	b340      	cbz	r0, c0de6722 <format_fpu64+0x78>
c0de66d0:	466f      	mov	r7, sp
c0de66d2:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de66d4:	4638      	mov	r0, r7
c0de66d6:	f001 f8a5 	bl	c0de7824 <strlen>
c0de66da:	42b0      	cmp	r0, r6
c0de66dc:	d910      	bls.n	c0de6700 <format_fpu64+0x56>
c0de66de:	1831      	adds	r1, r6, r0
c0de66e0:	3101      	adds	r1, #1
c0de66e2:	4541      	cmp	r1, r8
c0de66e4:	d21d      	bcs.n	c0de6722 <format_fpu64+0x78>
c0de66e6:	1b84      	subs	r4, r0, r6
c0de66e8:	4628      	mov	r0, r5
c0de66ea:	4639      	mov	r1, r7
c0de66ec:	4622      	mov	r2, r4
c0de66ee:	f001 f833 	bl	c0de7758 <__aeabi_memcpy>
c0de66f2:	1928      	adds	r0, r5, r4
c0de66f4:	212e      	movs	r1, #46	@ 0x2e
c0de66f6:	4632      	mov	r2, r6
c0de66f8:	f800 1b01 	strb.w	r1, [r0], #1
c0de66fc:	1939      	adds	r1, r7, r4
c0de66fe:	e015      	b.n	c0de672c <format_fpu64+0x82>
c0de6700:	1a32      	subs	r2, r6, r0
c0de6702:	1c91      	adds	r1, r2, #2
c0de6704:	4541      	cmp	r1, r8
c0de6706:	d20c      	bcs.n	c0de6722 <format_fpu64+0x78>
c0de6708:	202e      	movs	r0, #46	@ 0x2e
c0de670a:	2330      	movs	r3, #48	@ 0x30
c0de670c:	2400      	movs	r4, #0
c0de670e:	7068      	strb	r0, [r5, #1]
c0de6710:	1ca8      	adds	r0, r5, #2
c0de6712:	702b      	strb	r3, [r5, #0]
c0de6714:	b2a5      	uxth	r5, r4
c0de6716:	42aa      	cmp	r2, r5
c0de6718:	d905      	bls.n	c0de6726 <format_fpu64+0x7c>
c0de671a:	f800 3b01 	strb.w	r3, [r0], #1
c0de671e:	3401      	adds	r4, #1
c0de6720:	e7f8      	b.n	c0de6714 <format_fpu64+0x6a>
c0de6722:	2000      	movs	r0, #0
c0de6724:	e005      	b.n	c0de6732 <format_fpu64+0x88>
c0de6726:	eba8 0201 	sub.w	r2, r8, r1
c0de672a:	4669      	mov	r1, sp
c0de672c:	f001 f894 	bl	c0de7858 <strncpy>
c0de6730:	2001      	movs	r0, #1
c0de6732:	b006      	add	sp, #24
c0de6734:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6738 <format_hex>:
c0de6738:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de673a:	4604      	mov	r4, r0
c0de673c:	0048      	lsls	r0, r1, #1
c0de673e:	f100 0c01 	add.w	ip, r0, #1
c0de6742:	459c      	cmp	ip, r3
c0de6744:	d902      	bls.n	c0de674c <format_hex+0x14>
c0de6746:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de674a:	e018      	b.n	c0de677e <format_hex+0x46>
c0de674c:	480d      	ldr	r0, [pc, #52]	@ (c0de6784 <format_hex+0x4c>)
c0de674e:	2500      	movs	r5, #0
c0de6750:	4478      	add	r0, pc
c0de6752:	b191      	cbz	r1, c0de677a <format_hex+0x42>
c0de6754:	1cef      	adds	r7, r5, #3
c0de6756:	429f      	cmp	r7, r3
c0de6758:	d80d      	bhi.n	c0de6776 <format_hex+0x3e>
c0de675a:	7827      	ldrb	r7, [r4, #0]
c0de675c:	3901      	subs	r1, #1
c0de675e:	093f      	lsrs	r7, r7, #4
c0de6760:	5dc7      	ldrb	r7, [r0, r7]
c0de6762:	5557      	strb	r7, [r2, r5]
c0de6764:	1957      	adds	r7, r2, r5
c0de6766:	3502      	adds	r5, #2
c0de6768:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de676c:	f006 060f 	and.w	r6, r6, #15
c0de6770:	5d86      	ldrb	r6, [r0, r6]
c0de6772:	707e      	strb	r6, [r7, #1]
c0de6774:	e7ed      	b.n	c0de6752 <format_hex+0x1a>
c0de6776:	f105 0c01 	add.w	ip, r5, #1
c0de677a:	2000      	movs	r0, #0
c0de677c:	5550      	strb	r0, [r2, r5]
c0de677e:	4660      	mov	r0, ip
c0de6780:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6782:	bf00      	nop
c0de6784:	00001569 	.word	0x00001569

c0de6788 <app_ticker_event_callback>:
c0de6788:	4770      	bx	lr
	...

c0de678c <io_event>:
c0de678c:	b580      	push	{r7, lr}
c0de678e:	480a      	ldr	r0, [pc, #40]	@ (c0de67b8 <io_event+0x2c>)
c0de6790:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6794:	290e      	cmp	r1, #14
c0de6796:	d005      	beq.n	c0de67a4 <io_event+0x18>
c0de6798:	2905      	cmp	r1, #5
c0de679a:	d108      	bne.n	c0de67ae <io_event+0x22>
c0de679c:	4448      	add	r0, r9
c0de679e:	f000 fa05 	bl	c0de6bac <ux_process_button_event>
c0de67a2:	e006      	b.n	c0de67b2 <io_event+0x26>
c0de67a4:	f7ff fff0 	bl	c0de6788 <app_ticker_event_callback>
c0de67a8:	f000 fa44 	bl	c0de6c34 <ux_process_ticker_event>
c0de67ac:	e001      	b.n	c0de67b2 <io_event+0x26>
c0de67ae:	f000 fa59 	bl	c0de6c64 <ux_process_default_event>
c0de67b2:	2001      	movs	r0, #1
c0de67b4:	bd80      	pop	{r7, pc}
c0de67b6:	bf00      	nop
c0de67b8:	000007ac 	.word	0x000007ac

c0de67bc <io_init>:
c0de67bc:	4802      	ldr	r0, [pc, #8]	@ (c0de67c8 <io_init+0xc>)
c0de67be:	2101      	movs	r1, #1
c0de67c0:	f809 1000 	strb.w	r1, [r9, r0]
c0de67c4:	4770      	bx	lr
c0de67c6:	bf00      	nop
c0de67c8:	000008bc 	.word	0x000008bc

c0de67cc <io_recv_command>:
c0de67cc:	b510      	push	{r4, lr}
c0de67ce:	4c09      	ldr	r4, [pc, #36]	@ (c0de67f4 <io_recv_command+0x28>)
c0de67d0:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de67d4:	2801      	cmp	r0, #1
c0de67d6:	d104      	bne.n	c0de67e2 <io_recv_command+0x16>
c0de67d8:	f000 fe96 	bl	c0de7508 <os_io_start>
c0de67dc:	2000      	movs	r0, #0
c0de67de:	f809 0004 	strb.w	r0, [r9, r4]
c0de67e2:	2000      	movs	r0, #0
c0de67e4:	2800      	cmp	r0, #0
c0de67e6:	dc03      	bgt.n	c0de67f0 <io_recv_command+0x24>
c0de67e8:	2001      	movs	r0, #1
c0de67ea:	f7fc fe69 	bl	c0de34c0 <io_legacy_apdu_rx>
c0de67ee:	e7f9      	b.n	c0de67e4 <io_recv_command+0x18>
c0de67f0:	bd10      	pop	{r4, pc}
c0de67f2:	bf00      	nop
c0de67f4:	000008bc 	.word	0x000008bc

c0de67f8 <io_send_response_buffers>:
c0de67f8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de67fc:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6890 <io_send_response_buffers+0x98>
c0de6800:	4690      	mov	r8, r2
c0de6802:	460f      	mov	r7, r1
c0de6804:	4606      	mov	r6, r0
c0de6806:	f240 140f 	movw	r4, #271	@ 0x10f
c0de680a:	2500      	movs	r5, #0
c0de680c:	b1b6      	cbz	r6, c0de683c <io_send_response_buffers+0x44>
c0de680e:	b1af      	cbz	r7, c0de683c <io_send_response_buffers+0x44>
c0de6810:	2500      	movs	r5, #0
c0de6812:	b19f      	cbz	r7, c0de683c <io_send_response_buffers+0x44>
c0de6814:	eb09 000a 	add.w	r0, r9, sl
c0de6818:	1b62      	subs	r2, r4, r5
c0de681a:	1941      	adds	r1, r0, r5
c0de681c:	4630      	mov	r0, r6
c0de681e:	f7ff fe03 	bl	c0de6428 <buffer_copy>
c0de6822:	b130      	cbz	r0, c0de6832 <io_send_response_buffers+0x3a>
c0de6824:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6828:	360c      	adds	r6, #12
c0de682a:	3f01      	subs	r7, #1
c0de682c:	4428      	add	r0, r5
c0de682e:	1a45      	subs	r5, r0, r1
c0de6830:	e7ef      	b.n	c0de6812 <io_send_response_buffers+0x1a>
c0de6832:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6836:	2600      	movs	r6, #0
c0de6838:	2700      	movs	r7, #0
c0de683a:	e7e6      	b.n	c0de680a <io_send_response_buffers+0x12>
c0de683c:	fa1f f688 	uxth.w	r6, r8
c0de6840:	eb09 000a 	add.w	r0, r9, sl
c0de6844:	4629      	mov	r1, r5
c0de6846:	4632      	mov	r2, r6
c0de6848:	f000 f9aa 	bl	c0de6ba0 <write_u16_be>
c0de684c:	4811      	ldr	r0, [pc, #68]	@ (c0de6894 <io_send_response_buffers+0x9c>)
c0de684e:	1ca9      	adds	r1, r5, #2
c0de6850:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6854:	b118      	cbz	r0, c0de685e <io_send_response_buffers+0x66>
c0de6856:	4810      	ldr	r0, [pc, #64]	@ (c0de6898 <io_send_response_buffers+0xa0>)
c0de6858:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de685c:	b928      	cbnz	r0, c0de686a <io_send_response_buffers+0x72>
c0de685e:	f000 f81f 	bl	c0de68a0 <OUTLINED_FUNCTION_0>
c0de6862:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6866:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de686a:	f000 f819 	bl	c0de68a0 <OUTLINED_FUNCTION_0>
c0de686e:	2800      	cmp	r0, #0
c0de6870:	d40a      	bmi.n	c0de6888 <io_send_response_buffers+0x90>
c0de6872:	480a      	ldr	r0, [pc, #40]	@ (c0de689c <io_send_response_buffers+0xa4>)
c0de6874:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6878:	fab1 f181 	clz	r1, r1
c0de687c:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6880:	0949      	lsrs	r1, r1, #5
c0de6882:	7001      	strb	r1, [r0, #0]
c0de6884:	f000 fe10 	bl	c0de74a8 <os_lib_end>
c0de6888:	20ff      	movs	r0, #255	@ 0xff
c0de688a:	f000 fe29 	bl	c0de74e0 <os_sched_exit>
c0de688e:	bf00      	nop
c0de6890:	00000407 	.word	0x00000407
c0de6894:	000008cc 	.word	0x000008cc
c0de6898:	000008cd 	.word	0x000008cd
c0de689c:	000008d0 	.word	0x000008d0

c0de68a0 <OUTLINED_FUNCTION_0>:
c0de68a0:	eb09 000a 	add.w	r0, r9, sl
c0de68a4:	b289      	uxth	r1, r1
c0de68a6:	f7fc bdf7 	b.w	c0de3498 <io_legacy_apdu_tx>

c0de68aa <app_exit>:
c0de68aa:	20ff      	movs	r0, #255	@ 0xff
c0de68ac:	f000 fe18 	bl	c0de74e0 <os_sched_exit>

c0de68b0 <common_app_init>:
c0de68b0:	b580      	push	{r7, lr}
c0de68b2:	f000 fa49 	bl	c0de6d48 <nbgl_objInit>
c0de68b6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de68ba:	f7fc bedb 	b.w	c0de3674 <io_seproxyhal_init>
	...

c0de68c0 <standalone_app_main>:
c0de68c0:	b5b0      	push	{r4, r5, r7, lr}
c0de68c2:	b08c      	sub	sp, #48	@ 0x30
c0de68c4:	4816      	ldr	r0, [pc, #88]	@ (c0de6920 <standalone_app_main+0x60>)
c0de68c6:	2500      	movs	r5, #0
c0de68c8:	466c      	mov	r4, sp
c0de68ca:	f809 5000 	strb.w	r5, [r9, r0]
c0de68ce:	4815      	ldr	r0, [pc, #84]	@ (c0de6924 <standalone_app_main+0x64>)
c0de68d0:	f849 5000 	str.w	r5, [r9, r0]
c0de68d4:	4814      	ldr	r0, [pc, #80]	@ (c0de6928 <standalone_app_main+0x68>)
c0de68d6:	f809 5000 	strb.w	r5, [r9, r0]
c0de68da:	4620      	mov	r0, r4
c0de68dc:	f000 ff8a 	bl	c0de77f4 <setjmp>
c0de68e0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de68e4:	0400      	lsls	r0, r0, #16
c0de68e6:	d108      	bne.n	c0de68fa <standalone_app_main+0x3a>
c0de68e8:	4668      	mov	r0, sp
c0de68ea:	f000 fe37 	bl	c0de755c <try_context_set>
c0de68ee:	900a      	str	r0, [sp, #40]	@ 0x28
c0de68f0:	f7ff ffde 	bl	c0de68b0 <common_app_init>
c0de68f4:	f7f9 fd20 	bl	c0de0338 <app_main>
c0de68f8:	e004      	b.n	c0de6904 <standalone_app_main+0x44>
c0de68fa:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de68fc:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de6900:	f000 fe2c 	bl	c0de755c <try_context_set>
c0de6904:	f000 fe22 	bl	c0de754c <try_context_get>
c0de6908:	42a0      	cmp	r0, r4
c0de690a:	d102      	bne.n	c0de6912 <standalone_app_main+0x52>
c0de690c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de690e:	f000 fe25 	bl	c0de755c <try_context_set>
c0de6912:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6916:	b908      	cbnz	r0, c0de691c <standalone_app_main+0x5c>
c0de6918:	f7ff ffc7 	bl	c0de68aa <app_exit>
c0de691c:	f000 fa75 	bl	c0de6e0a <os_longjmp>
c0de6920:	000008cc 	.word	0x000008cc
c0de6924:	000008d0 	.word	0x000008d0
c0de6928:	000008cd 	.word	0x000008cd

c0de692c <library_app_main>:
c0de692c:	b5b0      	push	{r4, r5, r7, lr}
c0de692e:	b08c      	sub	sp, #48	@ 0x30
c0de6930:	466c      	mov	r4, sp
c0de6932:	4605      	mov	r5, r0
c0de6934:	4620      	mov	r0, r4
c0de6936:	f000 ff5d 	bl	c0de77f4 <setjmp>
c0de693a:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de693e:	0400      	lsls	r0, r0, #16
c0de6940:	d124      	bne.n	c0de698c <library_app_main+0x60>
c0de6942:	4668      	mov	r0, sp
c0de6944:	f000 fe0a 	bl	c0de755c <try_context_set>
c0de6948:	900a      	str	r0, [sp, #40]	@ 0x28
c0de694a:	6868      	ldr	r0, [r5, #4]
c0de694c:	2804      	cmp	r0, #4
c0de694e:	d024      	beq.n	c0de699a <library_app_main+0x6e>
c0de6950:	2803      	cmp	r0, #3
c0de6952:	d026      	beq.n	c0de69a2 <library_app_main+0x76>
c0de6954:	2802      	cmp	r0, #2
c0de6956:	d127      	bne.n	c0de69a8 <library_app_main+0x7c>
c0de6958:	68e8      	ldr	r0, [r5, #12]
c0de695a:	f7fa fe1f 	bl	c0de159c <swap_copy_transaction_parameters>
c0de695e:	b318      	cbz	r0, c0de69a8 <library_app_main+0x7c>
c0de6960:	4816      	ldr	r0, [pc, #88]	@ (c0de69bc <library_app_main+0x90>)
c0de6962:	2201      	movs	r2, #1
c0de6964:	f809 2000 	strb.w	r2, [r9, r0]
c0de6968:	4815      	ldr	r0, [pc, #84]	@ (c0de69c0 <library_app_main+0x94>)
c0de696a:	2200      	movs	r2, #0
c0de696c:	f809 2000 	strb.w	r2, [r9, r0]
c0de6970:	4a14      	ldr	r2, [pc, #80]	@ (c0de69c4 <library_app_main+0x98>)
c0de6972:	68e8      	ldr	r0, [r5, #12]
c0de6974:	3020      	adds	r0, #32
c0de6976:	f849 0002 	str.w	r0, [r9, r2]
c0de697a:	f7ff ff99 	bl	c0de68b0 <common_app_init>
c0de697e:	4812      	ldr	r0, [pc, #72]	@ (c0de69c8 <library_app_main+0x9c>)
c0de6980:	4478      	add	r0, pc
c0de6982:	f7fe fc2b 	bl	c0de51dc <nbgl_useCaseSpinner>
c0de6986:	f7f9 fcd7 	bl	c0de0338 <app_main>
c0de698a:	e00d      	b.n	c0de69a8 <library_app_main+0x7c>
c0de698c:	2000      	movs	r0, #0
c0de698e:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6992:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6994:	f000 fde2 	bl	c0de755c <try_context_set>
c0de6998:	e006      	b.n	c0de69a8 <library_app_main+0x7c>
c0de699a:	68e8      	ldr	r0, [r5, #12]
c0de699c:	f7fa fdd2 	bl	c0de1544 <swap_handle_get_printable_amount>
c0de69a0:	e002      	b.n	c0de69a8 <library_app_main+0x7c>
c0de69a2:	68e8      	ldr	r0, [r5, #12]
c0de69a4:	f7fa fd74 	bl	c0de1490 <swap_handle_check_address>
c0de69a8:	f000 fdd0 	bl	c0de754c <try_context_get>
c0de69ac:	42a0      	cmp	r0, r4
c0de69ae:	d102      	bne.n	c0de69b6 <library_app_main+0x8a>
c0de69b0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de69b2:	f000 fdd3 	bl	c0de755c <try_context_set>
c0de69b6:	f000 fd77 	bl	c0de74a8 <os_lib_end>
c0de69ba:	bf00      	nop
c0de69bc:	000008cc 	.word	0x000008cc
c0de69c0:	000008cd 	.word	0x000008cd
c0de69c4:	000008d0 	.word	0x000008d0
c0de69c8:	00001160 	.word	0x00001160

c0de69cc <apdu_parser>:
c0de69cc:	2a04      	cmp	r2, #4
c0de69ce:	d316      	bcc.n	c0de69fe <apdu_parser+0x32>
c0de69d0:	d102      	bne.n	c0de69d8 <apdu_parser+0xc>
c0de69d2:	2300      	movs	r3, #0
c0de69d4:	7103      	strb	r3, [r0, #4]
c0de69d6:	e004      	b.n	c0de69e2 <apdu_parser+0x16>
c0de69d8:	790b      	ldrb	r3, [r1, #4]
c0de69da:	3a05      	subs	r2, #5
c0de69dc:	429a      	cmp	r2, r3
c0de69de:	7103      	strb	r3, [r0, #4]
c0de69e0:	d10d      	bne.n	c0de69fe <apdu_parser+0x32>
c0de69e2:	780a      	ldrb	r2, [r1, #0]
c0de69e4:	2b00      	cmp	r3, #0
c0de69e6:	7002      	strb	r2, [r0, #0]
c0de69e8:	784a      	ldrb	r2, [r1, #1]
c0de69ea:	7042      	strb	r2, [r0, #1]
c0de69ec:	788a      	ldrb	r2, [r1, #2]
c0de69ee:	7082      	strb	r2, [r0, #2]
c0de69f0:	bf18      	it	ne
c0de69f2:	1d4b      	addne	r3, r1, #5
c0de69f4:	78c9      	ldrb	r1, [r1, #3]
c0de69f6:	6083      	str	r3, [r0, #8]
c0de69f8:	70c1      	strb	r1, [r0, #3]
c0de69fa:	2001      	movs	r0, #1
c0de69fc:	4770      	bx	lr
c0de69fe:	2000      	movs	r0, #0
c0de6a00:	4770      	bx	lr

c0de6a02 <read_u32_be>:
c0de6a02:	5c42      	ldrb	r2, [r0, r1]
c0de6a04:	4408      	add	r0, r1
c0de6a06:	7841      	ldrb	r1, [r0, #1]
c0de6a08:	7883      	ldrb	r3, [r0, #2]
c0de6a0a:	78c0      	ldrb	r0, [r0, #3]
c0de6a0c:	0409      	lsls	r1, r1, #16
c0de6a0e:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6a12:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6a16:	4408      	add	r0, r1
c0de6a18:	4770      	bx	lr

c0de6a1a <read_u64_be>:
c0de6a1a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6a1c:	1842      	adds	r2, r0, r1
c0de6a1e:	5c40      	ldrb	r0, [r0, r1]
c0de6a20:	7917      	ldrb	r7, [r2, #4]
c0de6a22:	7953      	ldrb	r3, [r2, #5]
c0de6a24:	7854      	ldrb	r4, [r2, #1]
c0de6a26:	7895      	ldrb	r5, [r2, #2]
c0de6a28:	78d6      	ldrb	r6, [r2, #3]
c0de6a2a:	063f      	lsls	r7, r7, #24
c0de6a2c:	0421      	lsls	r1, r4, #16
c0de6a2e:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6a32:	7997      	ldrb	r7, [r2, #6]
c0de6a34:	79d2      	ldrb	r2, [r2, #7]
c0de6a36:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6a3a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6a3e:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6a42:	1981      	adds	r1, r0, r6
c0de6a44:	441a      	add	r2, r3
c0de6a46:	4610      	mov	r0, r2
c0de6a48:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6a4a <read_u16_le>:
c0de6a4a:	5c42      	ldrb	r2, [r0, r1]
c0de6a4c:	4408      	add	r0, r1
c0de6a4e:	7840      	ldrb	r0, [r0, #1]
c0de6a50:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6a54:	b280      	uxth	r0, r0
c0de6a56:	4770      	bx	lr

c0de6a58 <read_u32_le>:
c0de6a58:	5c42      	ldrb	r2, [r0, r1]
c0de6a5a:	4408      	add	r0, r1
c0de6a5c:	7841      	ldrb	r1, [r0, #1]
c0de6a5e:	7883      	ldrb	r3, [r0, #2]
c0de6a60:	78c0      	ldrb	r0, [r0, #3]
c0de6a62:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6a66:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6a6a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6a6e:	4770      	bx	lr

c0de6a70 <read_u64_le>:
c0de6a70:	b5b0      	push	{r4, r5, r7, lr}
c0de6a72:	5c42      	ldrb	r2, [r0, r1]
c0de6a74:	4401      	add	r1, r0
c0de6a76:	7848      	ldrb	r0, [r1, #1]
c0de6a78:	788b      	ldrb	r3, [r1, #2]
c0de6a7a:	790d      	ldrb	r5, [r1, #4]
c0de6a7c:	78cc      	ldrb	r4, [r1, #3]
c0de6a7e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6a82:	794a      	ldrb	r2, [r1, #5]
c0de6a84:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6a88:	798b      	ldrb	r3, [r1, #6]
c0de6a8a:	79c9      	ldrb	r1, [r1, #7]
c0de6a8c:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6a90:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6a94:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6a98:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6a9c:	bdb0      	pop	{r4, r5, r7, pc}

c0de6a9e <send_swap_error_simple>:
c0de6a9e:	b082      	sub	sp, #8
c0de6aa0:	2300      	movs	r3, #0
c0de6aa2:	9300      	str	r3, [sp, #0]
c0de6aa4:	2300      	movs	r3, #0
c0de6aa6:	f000 f801 	bl	c0de6aac <send_swap_error_with_buffers>
	...

c0de6aac <send_swap_error_with_buffers>:
c0de6aac:	b09c      	sub	sp, #112	@ 0x70
c0de6aae:	4604      	mov	r4, r0
c0de6ab0:	4815      	ldr	r0, [pc, #84]	@ (c0de6b08 <send_swap_error_with_buffers+0x5c>)
c0de6ab2:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6ab6:	b320      	cbz	r0, c0de6b02 <send_swap_error_with_buffers+0x56>
c0de6ab8:	4814      	ldr	r0, [pc, #80]	@ (c0de6b0c <send_swap_error_with_buffers+0x60>)
c0de6aba:	461d      	mov	r5, r3
c0de6abc:	2301      	movs	r3, #1
c0de6abe:	466e      	mov	r6, sp
c0de6ac0:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6ac2:	f809 3000 	strb.w	r3, [r9, r0]
c0de6ac6:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6aca:	f106 0008 	add.w	r0, r6, #8
c0de6ace:	2164      	movs	r1, #100	@ 0x64
c0de6ad0:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6ad4:	f000 fe4a 	bl	c0de776c <__aeabi_memclr>
c0de6ad8:	2002      	movs	r0, #2
c0de6ada:	4629      	mov	r1, r5
c0de6adc:	9001      	str	r0, [sp, #4]
c0de6ade:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6ae2:	2f08      	cmp	r7, #8
c0de6ae4:	9000      	str	r0, [sp, #0]
c0de6ae6:	bf28      	it	cs
c0de6ae8:	2708      	movcs	r7, #8
c0de6aea:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6aee:	0082      	lsls	r2, r0, #2
c0de6af0:	f106 000c 	add.w	r0, r6, #12
c0de6af4:	f000 fe30 	bl	c0de7758 <__aeabi_memcpy>
c0de6af8:	1c79      	adds	r1, r7, #1
c0de6afa:	4630      	mov	r0, r6
c0de6afc:	4622      	mov	r2, r4
c0de6afe:	f7ff fe7b 	bl	c0de67f8 <io_send_response_buffers>
c0de6b02:	2000      	movs	r0, #0
c0de6b04:	f000 fcec 	bl	c0de74e0 <os_sched_exit>
c0de6b08:	000008cc 	.word	0x000008cc
c0de6b0c:	000008cd 	.word	0x000008cd

c0de6b10 <swap_str_to_u64>:
c0de6b10:	2908      	cmp	r1, #8
c0de6b12:	d812      	bhi.n	c0de6b3a <swap_str_to_u64+0x2a>
c0de6b14:	b570      	push	{r4, r5, r6, lr}
c0de6b16:	2500      	movs	r5, #0
c0de6b18:	460b      	mov	r3, r1
c0de6b1a:	2400      	movs	r4, #0
c0de6b1c:	b14b      	cbz	r3, c0de6b32 <swap_str_to_u64+0x22>
c0de6b1e:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6b22:	0224      	lsls	r4, r4, #8
c0de6b24:	3b01      	subs	r3, #1
c0de6b26:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6b2a:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6b2e:	4635      	mov	r5, r6
c0de6b30:	e7f4      	b.n	c0de6b1c <swap_str_to_u64+0xc>
c0de6b32:	e9c2 5400 	strd	r5, r4, [r2]
c0de6b36:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6b3a:	2000      	movs	r0, #0
c0de6b3c:	2909      	cmp	r1, #9
c0de6b3e:	bf38      	it	cc
c0de6b40:	2001      	movcc	r0, #1
c0de6b42:	4770      	bx	lr

c0de6b44 <varint_read>:
c0de6b44:	b510      	push	{r4, lr}
c0de6b46:	b1d9      	cbz	r1, c0de6b80 <varint_read+0x3c>
c0de6b48:	4614      	mov	r4, r2
c0de6b4a:	4602      	mov	r2, r0
c0de6b4c:	7800      	ldrb	r0, [r0, #0]
c0de6b4e:	28ff      	cmp	r0, #255	@ 0xff
c0de6b50:	d00c      	beq.n	c0de6b6c <varint_read+0x28>
c0de6b52:	28fe      	cmp	r0, #254	@ 0xfe
c0de6b54:	d012      	beq.n	c0de6b7c <varint_read+0x38>
c0de6b56:	28fd      	cmp	r0, #253	@ 0xfd
c0de6b58:	d115      	bne.n	c0de6b86 <varint_read+0x42>
c0de6b5a:	2903      	cmp	r1, #3
c0de6b5c:	d310      	bcc.n	c0de6b80 <varint_read+0x3c>
c0de6b5e:	4610      	mov	r0, r2
c0de6b60:	2101      	movs	r1, #1
c0de6b62:	f7ff ff72 	bl	c0de6a4a <read_u16_le>
c0de6b66:	2100      	movs	r1, #0
c0de6b68:	2203      	movs	r2, #3
c0de6b6a:	e015      	b.n	c0de6b98 <varint_read+0x54>
c0de6b6c:	2909      	cmp	r1, #9
c0de6b6e:	d307      	bcc.n	c0de6b80 <varint_read+0x3c>
c0de6b70:	4610      	mov	r0, r2
c0de6b72:	2101      	movs	r1, #1
c0de6b74:	f7ff ff7c 	bl	c0de6a70 <read_u64_le>
c0de6b78:	2209      	movs	r2, #9
c0de6b7a:	e00d      	b.n	c0de6b98 <varint_read+0x54>
c0de6b7c:	2905      	cmp	r1, #5
c0de6b7e:	d205      	bcs.n	c0de6b8c <varint_read+0x48>
c0de6b80:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6b84:	e00a      	b.n	c0de6b9c <varint_read+0x58>
c0de6b86:	2100      	movs	r1, #0
c0de6b88:	2201      	movs	r2, #1
c0de6b8a:	e005      	b.n	c0de6b98 <varint_read+0x54>
c0de6b8c:	4610      	mov	r0, r2
c0de6b8e:	2101      	movs	r1, #1
c0de6b90:	f7ff ff62 	bl	c0de6a58 <read_u32_le>
c0de6b94:	2100      	movs	r1, #0
c0de6b96:	2205      	movs	r2, #5
c0de6b98:	e9c4 0100 	strd	r0, r1, [r4]
c0de6b9c:	4610      	mov	r0, r2
c0de6b9e:	bd10      	pop	{r4, pc}

c0de6ba0 <write_u16_be>:
c0de6ba0:	0a13      	lsrs	r3, r2, #8
c0de6ba2:	5443      	strb	r3, [r0, r1]
c0de6ba4:	4408      	add	r0, r1
c0de6ba6:	7042      	strb	r2, [r0, #1]
c0de6ba8:	4770      	bx	lr
	...

c0de6bac <ux_process_button_event>:
c0de6bac:	b5b0      	push	{r4, r5, r7, lr}
c0de6bae:	4604      	mov	r4, r0
c0de6bb0:	2001      	movs	r0, #1
c0de6bb2:	f000 f815 	bl	c0de6be0 <ux_forward_event>
c0de6bb6:	4605      	mov	r5, r0
c0de6bb8:	f000 f8cb 	bl	c0de6d52 <nbgl_objAllowDrawing>
c0de6bbc:	b165      	cbz	r5, c0de6bd8 <ux_process_button_event+0x2c>
c0de6bbe:	4807      	ldr	r0, [pc, #28]	@ (c0de6bdc <ux_process_button_event+0x30>)
c0de6bc0:	2164      	movs	r1, #100	@ 0x64
c0de6bc2:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6bc6:	4341      	muls	r1, r0
c0de6bc8:	78e0      	ldrb	r0, [r4, #3]
c0de6bca:	0840      	lsrs	r0, r0, #1
c0de6bcc:	f000 f90c 	bl	c0de6de8 <nbgl_buttonsHandler>
c0de6bd0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6bd4:	f000 b8b3 	b.w	c0de6d3e <nbgl_refresh>
c0de6bd8:	bdb0      	pop	{r4, r5, r7, pc}
c0de6bda:	bf00      	nop
c0de6bdc:	000008d4 	.word	0x000008d4

c0de6be0 <ux_forward_event>:
c0de6be0:	b5b0      	push	{r4, r5, r7, lr}
c0de6be2:	4604      	mov	r4, r0
c0de6be4:	4812      	ldr	r0, [pc, #72]	@ (c0de6c30 <ux_forward_event+0x50>)
c0de6be6:	2101      	movs	r1, #1
c0de6be8:	f809 1000 	strb.w	r1, [r9, r0]
c0de6bec:	eb09 0500 	add.w	r5, r9, r0
c0de6bf0:	2000      	movs	r0, #0
c0de6bf2:	6068      	str	r0, [r5, #4]
c0de6bf4:	4628      	mov	r0, r5
c0de6bf6:	f000 fc4d 	bl	c0de7494 <os_ux>
c0de6bfa:	2004      	movs	r0, #4
c0de6bfc:	f000 fcb8 	bl	c0de7570 <os_sched_last_status>
c0de6c00:	2869      	cmp	r0, #105	@ 0x69
c0de6c02:	6068      	str	r0, [r5, #4]
c0de6c04:	d108      	bne.n	c0de6c18 <ux_forward_event+0x38>
c0de6c06:	2001      	movs	r0, #1
c0de6c08:	f000 f8a3 	bl	c0de6d52 <nbgl_objAllowDrawing>
c0de6c0c:	f000 f8b0 	bl	c0de6d70 <nbgl_screenRedraw>
c0de6c10:	f000 f895 	bl	c0de6d3e <nbgl_refresh>
c0de6c14:	2000      	movs	r0, #0
c0de6c16:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c18:	b144      	cbz	r4, c0de6c2c <ux_forward_event+0x4c>
c0de6c1a:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6c1e:	bf18      	it	ne
c0de6c20:	2101      	movne	r1, #1
c0de6c22:	2800      	cmp	r0, #0
c0de6c24:	bf18      	it	ne
c0de6c26:	2001      	movne	r0, #1
c0de6c28:	4008      	ands	r0, r1
c0de6c2a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c2c:	2001      	movs	r0, #1
c0de6c2e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c30:	000008c0 	.word	0x000008c0

c0de6c34 <ux_process_ticker_event>:
c0de6c34:	b510      	push	{r4, lr}
c0de6c36:	480a      	ldr	r0, [pc, #40]	@ (c0de6c60 <ux_process_ticker_event+0x2c>)
c0de6c38:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6c3c:	3101      	adds	r1, #1
c0de6c3e:	f849 1000 	str.w	r1, [r9, r0]
c0de6c42:	2001      	movs	r0, #1
c0de6c44:	f7ff ffcc 	bl	c0de6be0 <ux_forward_event>
c0de6c48:	4604      	mov	r4, r0
c0de6c4a:	f000 f882 	bl	c0de6d52 <nbgl_objAllowDrawing>
c0de6c4e:	b134      	cbz	r4, c0de6c5e <ux_process_ticker_event+0x2a>
c0de6c50:	2064      	movs	r0, #100	@ 0x64
c0de6c52:	f000 f897 	bl	c0de6d84 <nbgl_screenHandler>
c0de6c56:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6c5a:	f000 b870 	b.w	c0de6d3e <nbgl_refresh>
c0de6c5e:	bd10      	pop	{r4, pc}
c0de6c60:	000008d4 	.word	0x000008d4

c0de6c64 <ux_process_default_event>:
c0de6c64:	2000      	movs	r0, #0
c0de6c66:	f7ff bfbb 	b.w	c0de6be0 <ux_forward_event>

c0de6c6a <hash_iovec_ex>:
c0de6c6a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6c6e:	468a      	mov	sl, r1
c0de6c70:	4611      	mov	r1, r2
c0de6c72:	461a      	mov	r2, r3
c0de6c74:	4605      	mov	r5, r0
c0de6c76:	f000 f84d 	bl	c0de6d14 <cx_hash_init_ex>
c0de6c7a:	4607      	mov	r7, r0
c0de6c7c:	b9a8      	cbnz	r0, c0de6caa <hash_iovec_ex+0x40>
c0de6c7e:	f10d 0820 	add.w	r8, sp, #32
c0de6c82:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6c86:	1d04      	adds	r4, r0, #4
c0de6c88:	b156      	cbz	r6, c0de6ca0 <hash_iovec_ex+0x36>
c0de6c8a:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6c8e:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6c92:	4628      	mov	r0, r5
c0de6c94:	f000 f843 	bl	c0de6d1e <cx_hash_update>
c0de6c98:	3e01      	subs	r6, #1
c0de6c9a:	2800      	cmp	r0, #0
c0de6c9c:	d0f4      	beq.n	c0de6c88 <hash_iovec_ex+0x1e>
c0de6c9e:	e003      	b.n	c0de6ca8 <hash_iovec_ex+0x3e>
c0de6ca0:	4628      	mov	r0, r5
c0de6ca2:	4641      	mov	r1, r8
c0de6ca4:	f000 f831 	bl	c0de6d0a <cx_hash_final>
c0de6ca8:	4607      	mov	r7, r0
c0de6caa:	4628      	mov	r0, r5
c0de6cac:	4651      	mov	r1, sl
c0de6cae:	f000 fd6b 	bl	c0de7788 <explicit_bzero>
c0de6cb2:	4638      	mov	r0, r7
c0de6cb4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6cb8 <cx_keccak_256_hash_iovec>:
c0de6cb8:	b580      	push	{r7, lr}
c0de6cba:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6cbc:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6cc0:	a804      	add	r0, sp, #16
c0de6cc2:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6cc6:	2206      	movs	r2, #6
c0de6cc8:	2320      	movs	r3, #32
c0de6cca:	f7ff ffce 	bl	c0de6c6a <hash_iovec_ex>
c0de6cce:	b06e      	add	sp, #440	@ 0x1b8
c0de6cd0:	bd80      	pop	{r7, pc}

c0de6cd2 <cx_blake2b_512_hash_iovec>:
c0de6cd2:	b580      	push	{r7, lr}
c0de6cd4:	b0c4      	sub	sp, #272	@ 0x110
c0de6cd6:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6cda:	a804      	add	r0, sp, #16
c0de6cdc:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6ce0:	2209      	movs	r2, #9
c0de6ce2:	2340      	movs	r3, #64	@ 0x40
c0de6ce4:	f7ff ffc1 	bl	c0de6c6a <hash_iovec_ex>
c0de6ce8:	b044      	add	sp, #272	@ 0x110
c0de6cea:	bd80      	pop	{r7, pc}

c0de6cec <cx_ecdsa_sign_no_throw>:
c0de6cec:	b403      	push	{r0, r1}
c0de6cee:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6cf2:	f000 b81d 	b.w	c0de6d30 <cx_trampoline_helper>

c0de6cf6 <cx_ecfp_generate_pair2_no_throw>:
c0de6cf6:	b403      	push	{r0, r1}
c0de6cf8:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6cfc:	f000 b818 	b.w	c0de6d30 <cx_trampoline_helper>

c0de6d00 <cx_ecfp_init_private_key_no_throw>:
c0de6d00:	b403      	push	{r0, r1}
c0de6d02:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6d06:	f000 b813 	b.w	c0de6d30 <cx_trampoline_helper>

c0de6d0a <cx_hash_final>:
c0de6d0a:	b403      	push	{r0, r1}
c0de6d0c:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6d10:	f000 b80e 	b.w	c0de6d30 <cx_trampoline_helper>

c0de6d14 <cx_hash_init_ex>:
c0de6d14:	b403      	push	{r0, r1}
c0de6d16:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6d1a:	f000 b809 	b.w	c0de6d30 <cx_trampoline_helper>

c0de6d1e <cx_hash_update>:
c0de6d1e:	b403      	push	{r0, r1}
c0de6d20:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6d24:	f000 b804 	b.w	c0de6d30 <cx_trampoline_helper>

c0de6d28 <cx_aes_siv_reset>:
c0de6d28:	b403      	push	{r0, r1}
c0de6d2a:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6d2e:	e7ff      	b.n	c0de6d30 <cx_trampoline_helper>

c0de6d30 <cx_trampoline_helper>:
c0de6d30:	4900      	ldr	r1, [pc, #0]	@ (c0de6d34 <cx_trampoline_helper+0x4>)
c0de6d32:	4708      	bx	r1
c0de6d34:	00808001 	.word	0x00808001

c0de6d38 <assert_exit>:
c0de6d38:	20ff      	movs	r0, #255	@ 0xff
c0de6d3a:	f000 fbd1 	bl	c0de74e0 <os_sched_exit>

c0de6d3e <nbgl_refresh>:
c0de6d3e:	b403      	push	{r0, r1}
c0de6d40:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6d44:	f000 b85a 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d48 <nbgl_objInit>:
c0de6d48:	b403      	push	{r0, r1}
c0de6d4a:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6d4e:	f000 b855 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d52 <nbgl_objAllowDrawing>:
c0de6d52:	b403      	push	{r0, r1}
c0de6d54:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6d58:	f000 b850 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d5c <nbgl_screenSet>:
c0de6d5c:	b403      	push	{r0, r1}
c0de6d5e:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6d62:	f000 b84b 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d66 <nbgl_screenPush>:
c0de6d66:	b403      	push	{r0, r1}
c0de6d68:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6d6c:	f000 b846 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d70 <nbgl_screenRedraw>:
c0de6d70:	b403      	push	{r0, r1}
c0de6d72:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6d76:	f000 b841 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d7a <nbgl_screenPop>:
c0de6d7a:	b403      	push	{r0, r1}
c0de6d7c:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6d80:	f000 b83c 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d84 <nbgl_screenHandler>:
c0de6d84:	b403      	push	{r0, r1}
c0de6d86:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6d8a:	f000 b837 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d8e <nbgl_objPoolGet>:
c0de6d8e:	b403      	push	{r0, r1}
c0de6d90:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6d94:	f000 b832 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6d98 <nbgl_containerPoolGet>:
c0de6d98:	b403      	push	{r0, r1}
c0de6d9a:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6d9e:	f000 b82d 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6da2 <nbgl_getFont>:
c0de6da2:	b403      	push	{r0, r1}
c0de6da4:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6da8:	f000 b828 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6dac <nbgl_getFontLineHeight>:
c0de6dac:	b403      	push	{r0, r1}
c0de6dae:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6db2:	f000 b823 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6db6 <nbgl_getTextNbLinesInWidth>:
c0de6db6:	b403      	push	{r0, r1}
c0de6db8:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6dbc:	f000 b81e 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6dc0 <nbgl_getTextNbPagesInWidth>:
c0de6dc0:	b403      	push	{r0, r1}
c0de6dc2:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6dc6:	f000 b819 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6dca <nbgl_getTextWidth>:
c0de6dca:	b403      	push	{r0, r1}
c0de6dcc:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6dd0:	f000 b814 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6dd4 <nbgl_getTextMaxLenInNbLines>:
c0de6dd4:	b403      	push	{r0, r1}
c0de6dd6:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6dda:	f000 b80f 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6dde <nbgl_textReduceOnNbLines>:
c0de6dde:	b403      	push	{r0, r1}
c0de6de0:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6de4:	f000 b80a 	b.w	c0de6dfc <nbgl_trampoline_helper>

c0de6de8 <nbgl_buttonsHandler>:
c0de6de8:	b403      	push	{r0, r1}
c0de6dea:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6dee:	f000 b805 	b.w	c0de6dfc <nbgl_trampoline_helper>
	...

c0de6df4 <pic_init>:
c0de6df4:	b403      	push	{r0, r1}
c0de6df6:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6dfa:	e7ff      	b.n	c0de6dfc <nbgl_trampoline_helper>

c0de6dfc <nbgl_trampoline_helper>:
c0de6dfc:	4900      	ldr	r1, [pc, #0]	@ (c0de6e00 <nbgl_trampoline_helper+0x4>)
c0de6dfe:	4708      	bx	r1
c0de6e00:	00808001 	.word	0x00808001

c0de6e04 <os_boot>:
c0de6e04:	2000      	movs	r0, #0
c0de6e06:	f000 bba9 	b.w	c0de755c <try_context_set>

c0de6e0a <os_longjmp>:
c0de6e0a:	4604      	mov	r4, r0
c0de6e0c:	f000 fb9e 	bl	c0de754c <try_context_get>
c0de6e10:	4621      	mov	r1, r4
c0de6e12:	f000 fcf5 	bl	c0de7800 <longjmp>
	...

c0de6e18 <os_explicit_zero_BSS_segment>:
c0de6e18:	4803      	ldr	r0, [pc, #12]	@ (c0de6e28 <os_explicit_zero_BSS_segment+0x10>)
c0de6e1a:	4904      	ldr	r1, [pc, #16]	@ (c0de6e2c <os_explicit_zero_BSS_segment+0x14>)
c0de6e1c:	4448      	add	r0, r9
c0de6e1e:	4449      	add	r1, r9
c0de6e20:	1a09      	subs	r1, r1, r0
c0de6e22:	f000 bcb1 	b.w	c0de7788 <explicit_bzero>
c0de6e26:	bf00      	nop
c0de6e28:	00000000 	.word	0x00000000
c0de6e2c:	000008d8 	.word	0x000008d8

c0de6e30 <snprintf>:
c0de6e30:	b081      	sub	sp, #4
c0de6e32:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6e36:	b087      	sub	sp, #28
c0de6e38:	2800      	cmp	r0, #0
c0de6e3a:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6e3c:	f000 817a 	beq.w	c0de7134 <snprintf+0x304>
c0de6e40:	460d      	mov	r5, r1
c0de6e42:	2900      	cmp	r1, #0
c0de6e44:	f000 8176 	beq.w	c0de7134 <snprintf+0x304>
c0de6e48:	4629      	mov	r1, r5
c0de6e4a:	4616      	mov	r6, r2
c0de6e4c:	4604      	mov	r4, r0
c0de6e4e:	f000 fc8d 	bl	c0de776c <__aeabi_memclr>
c0de6e52:	f1b5 0801 	subs.w	r8, r5, #1
c0de6e56:	f000 816d 	beq.w	c0de7134 <snprintf+0x304>
c0de6e5a:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6e5c:	9002      	str	r0, [sp, #8]
c0de6e5e:	7830      	ldrb	r0, [r6, #0]
c0de6e60:	2800      	cmp	r0, #0
c0de6e62:	f000 8167 	beq.w	c0de7134 <snprintf+0x304>
c0de6e66:	2700      	movs	r7, #0
c0de6e68:	b128      	cbz	r0, c0de6e76 <snprintf+0x46>
c0de6e6a:	2825      	cmp	r0, #37	@ 0x25
c0de6e6c:	d003      	beq.n	c0de6e76 <snprintf+0x46>
c0de6e6e:	19f0      	adds	r0, r6, r7
c0de6e70:	3701      	adds	r7, #1
c0de6e72:	7840      	ldrb	r0, [r0, #1]
c0de6e74:	e7f8      	b.n	c0de6e68 <snprintf+0x38>
c0de6e76:	4547      	cmp	r7, r8
c0de6e78:	bf28      	it	cs
c0de6e7a:	4647      	movcs	r7, r8
c0de6e7c:	4620      	mov	r0, r4
c0de6e7e:	4631      	mov	r1, r6
c0de6e80:	463a      	mov	r2, r7
c0de6e82:	f000 fc6b 	bl	c0de775c <__aeabi_memmove>
c0de6e86:	ebb8 0807 	subs.w	r8, r8, r7
c0de6e8a:	f000 8153 	beq.w	c0de7134 <snprintf+0x304>
c0de6e8e:	5df1      	ldrb	r1, [r6, r7]
c0de6e90:	19f0      	adds	r0, r6, r7
c0de6e92:	443c      	add	r4, r7
c0de6e94:	4606      	mov	r6, r0
c0de6e96:	2925      	cmp	r1, #37	@ 0x25
c0de6e98:	d1e1      	bne.n	c0de6e5e <snprintf+0x2e>
c0de6e9a:	1c41      	adds	r1, r0, #1
c0de6e9c:	f04f 0b00 	mov.w	fp, #0
c0de6ea0:	f04f 0e20 	mov.w	lr, #32
c0de6ea4:	2500      	movs	r5, #0
c0de6ea6:	2600      	movs	r6, #0
c0de6ea8:	3101      	adds	r1, #1
c0de6eaa:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6eae:	4632      	mov	r2, r6
c0de6eb0:	3101      	adds	r1, #1
c0de6eb2:	2600      	movs	r6, #0
c0de6eb4:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6eb6:	d0f8      	beq.n	c0de6eaa <snprintf+0x7a>
c0de6eb8:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6ebc:	2e0a      	cmp	r6, #10
c0de6ebe:	d313      	bcc.n	c0de6ee8 <snprintf+0xb8>
c0de6ec0:	2b25      	cmp	r3, #37	@ 0x25
c0de6ec2:	d046      	beq.n	c0de6f52 <snprintf+0x122>
c0de6ec4:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6ec6:	d01f      	beq.n	c0de6f08 <snprintf+0xd8>
c0de6ec8:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6eca:	d129      	bne.n	c0de6f20 <snprintf+0xf0>
c0de6ecc:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6ed0:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6ed2:	d13c      	bne.n	c0de6f4e <snprintf+0x11e>
c0de6ed4:	780a      	ldrb	r2, [r1, #0]
c0de6ed6:	2a48      	cmp	r2, #72	@ 0x48
c0de6ed8:	d003      	beq.n	c0de6ee2 <snprintf+0xb2>
c0de6eda:	2a73      	cmp	r2, #115	@ 0x73
c0de6edc:	d001      	beq.n	c0de6ee2 <snprintf+0xb2>
c0de6ede:	2a68      	cmp	r2, #104	@ 0x68
c0de6ee0:	d135      	bne.n	c0de6f4e <snprintf+0x11e>
c0de6ee2:	9a02      	ldr	r2, [sp, #8]
c0de6ee4:	2601      	movs	r6, #1
c0de6ee6:	e017      	b.n	c0de6f18 <snprintf+0xe8>
c0de6ee8:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6eec:	ea56 060b 	orrs.w	r6, r6, fp
c0de6ef0:	bf08      	it	eq
c0de6ef2:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6ef6:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6efa:	3901      	subs	r1, #1
c0de6efc:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6f00:	4616      	mov	r6, r2
c0de6f02:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6f06:	e7cf      	b.n	c0de6ea8 <snprintf+0x78>
c0de6f08:	460b      	mov	r3, r1
c0de6f0a:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6f0e:	2a73      	cmp	r2, #115	@ 0x73
c0de6f10:	d11d      	bne.n	c0de6f4e <snprintf+0x11e>
c0de6f12:	9a02      	ldr	r2, [sp, #8]
c0de6f14:	2602      	movs	r6, #2
c0de6f16:	4619      	mov	r1, r3
c0de6f18:	1d13      	adds	r3, r2, #4
c0de6f1a:	9302      	str	r3, [sp, #8]
c0de6f1c:	6815      	ldr	r5, [r2, #0]
c0de6f1e:	e7c3      	b.n	c0de6ea8 <snprintf+0x78>
c0de6f20:	2b48      	cmp	r3, #72	@ 0x48
c0de6f22:	d018      	beq.n	c0de6f56 <snprintf+0x126>
c0de6f24:	2b58      	cmp	r3, #88	@ 0x58
c0de6f26:	d019      	beq.n	c0de6f5c <snprintf+0x12c>
c0de6f28:	2b63      	cmp	r3, #99	@ 0x63
c0de6f2a:	d020      	beq.n	c0de6f6e <snprintf+0x13e>
c0de6f2c:	2b64      	cmp	r3, #100	@ 0x64
c0de6f2e:	d02a      	beq.n	c0de6f86 <snprintf+0x156>
c0de6f30:	2b68      	cmp	r3, #104	@ 0x68
c0de6f32:	d036      	beq.n	c0de6fa2 <snprintf+0x172>
c0de6f34:	2b70      	cmp	r3, #112	@ 0x70
c0de6f36:	d006      	beq.n	c0de6f46 <snprintf+0x116>
c0de6f38:	2b73      	cmp	r3, #115	@ 0x73
c0de6f3a:	d037      	beq.n	c0de6fac <snprintf+0x17c>
c0de6f3c:	2b75      	cmp	r3, #117	@ 0x75
c0de6f3e:	f000 8081 	beq.w	c0de7044 <snprintf+0x214>
c0de6f42:	2b78      	cmp	r3, #120	@ 0x78
c0de6f44:	d103      	bne.n	c0de6f4e <snprintf+0x11e>
c0de6f46:	9400      	str	r4, [sp, #0]
c0de6f48:	f04f 0c00 	mov.w	ip, #0
c0de6f4c:	e009      	b.n	c0de6f62 <snprintf+0x132>
c0de6f4e:	1e4e      	subs	r6, r1, #1
c0de6f50:	e785      	b.n	c0de6e5e <snprintf+0x2e>
c0de6f52:	2025      	movs	r0, #37	@ 0x25
c0de6f54:	e00f      	b.n	c0de6f76 <snprintf+0x146>
c0de6f56:	487b      	ldr	r0, [pc, #492]	@ (c0de7144 <snprintf+0x314>)
c0de6f58:	4478      	add	r0, pc
c0de6f5a:	e024      	b.n	c0de6fa6 <snprintf+0x176>
c0de6f5c:	f04f 0c01 	mov.w	ip, #1
c0de6f60:	9400      	str	r4, [sp, #0]
c0de6f62:	9a02      	ldr	r2, [sp, #8]
c0de6f64:	2400      	movs	r4, #0
c0de6f66:	1d13      	adds	r3, r2, #4
c0de6f68:	9302      	str	r3, [sp, #8]
c0de6f6a:	2310      	movs	r3, #16
c0de6f6c:	e072      	b.n	c0de7054 <snprintf+0x224>
c0de6f6e:	9802      	ldr	r0, [sp, #8]
c0de6f70:	1d02      	adds	r2, r0, #4
c0de6f72:	9202      	str	r2, [sp, #8]
c0de6f74:	6800      	ldr	r0, [r0, #0]
c0de6f76:	1e4e      	subs	r6, r1, #1
c0de6f78:	f804 0b01 	strb.w	r0, [r4], #1
c0de6f7c:	f1b8 0801 	subs.w	r8, r8, #1
c0de6f80:	f47f af6d 	bne.w	c0de6e5e <snprintf+0x2e>
c0de6f84:	e0d6      	b.n	c0de7134 <snprintf+0x304>
c0de6f86:	9a02      	ldr	r2, [sp, #8]
c0de6f88:	9400      	str	r4, [sp, #0]
c0de6f8a:	1d13      	adds	r3, r2, #4
c0de6f8c:	9302      	str	r3, [sp, #8]
c0de6f8e:	6813      	ldr	r3, [r2, #0]
c0de6f90:	2b00      	cmp	r3, #0
c0de6f92:	461a      	mov	r2, r3
c0de6f94:	d500      	bpl.n	c0de6f98 <snprintf+0x168>
c0de6f96:	425a      	negs	r2, r3
c0de6f98:	0fdc      	lsrs	r4, r3, #31
c0de6f9a:	f04f 0c00 	mov.w	ip, #0
c0de6f9e:	230a      	movs	r3, #10
c0de6fa0:	e059      	b.n	c0de7056 <snprintf+0x226>
c0de6fa2:	4869      	ldr	r0, [pc, #420]	@ (c0de7148 <snprintf+0x318>)
c0de6fa4:	4478      	add	r0, pc
c0de6fa6:	f04f 0c01 	mov.w	ip, #1
c0de6faa:	e003      	b.n	c0de6fb4 <snprintf+0x184>
c0de6fac:	4864      	ldr	r0, [pc, #400]	@ (c0de7140 <snprintf+0x310>)
c0de6fae:	f04f 0c00 	mov.w	ip, #0
c0de6fb2:	4478      	add	r0, pc
c0de6fb4:	9b02      	ldr	r3, [sp, #8]
c0de6fb6:	b2d2      	uxtb	r2, r2
c0de6fb8:	1d1e      	adds	r6, r3, #4
c0de6fba:	9602      	str	r6, [sp, #8]
c0de6fbc:	1e4e      	subs	r6, r1, #1
c0de6fbe:	6819      	ldr	r1, [r3, #0]
c0de6fc0:	2a02      	cmp	r2, #2
c0de6fc2:	f000 80a7 	beq.w	c0de7114 <snprintf+0x2e4>
c0de6fc6:	2a01      	cmp	r2, #1
c0de6fc8:	d007      	beq.n	c0de6fda <snprintf+0x1aa>
c0de6fca:	463d      	mov	r5, r7
c0de6fcc:	b92a      	cbnz	r2, c0de6fda <snprintf+0x1aa>
c0de6fce:	2200      	movs	r2, #0
c0de6fd0:	5c8b      	ldrb	r3, [r1, r2]
c0de6fd2:	3201      	adds	r2, #1
c0de6fd4:	2b00      	cmp	r3, #0
c0de6fd6:	d1fb      	bne.n	c0de6fd0 <snprintf+0x1a0>
c0de6fd8:	1e55      	subs	r5, r2, #1
c0de6fda:	f1bc 0f00 	cmp.w	ip, #0
c0de6fde:	d016      	beq.n	c0de700e <snprintf+0x1de>
c0de6fe0:	2d00      	cmp	r5, #0
c0de6fe2:	f43f af3c 	beq.w	c0de6e5e <snprintf+0x2e>
c0de6fe6:	f1b8 0f02 	cmp.w	r8, #2
c0de6fea:	f0c0 80a3 	bcc.w	c0de7134 <snprintf+0x304>
c0de6fee:	780a      	ldrb	r2, [r1, #0]
c0de6ff0:	0913      	lsrs	r3, r2, #4
c0de6ff2:	f002 020f 	and.w	r2, r2, #15
c0de6ff6:	5cc3      	ldrb	r3, [r0, r3]
c0de6ff8:	f1b8 0802 	subs.w	r8, r8, #2
c0de6ffc:	7023      	strb	r3, [r4, #0]
c0de6ffe:	5c82      	ldrb	r2, [r0, r2]
c0de7000:	7062      	strb	r2, [r4, #1]
c0de7002:	f000 8097 	beq.w	c0de7134 <snprintf+0x304>
c0de7006:	3101      	adds	r1, #1
c0de7008:	3d01      	subs	r5, #1
c0de700a:	3402      	adds	r4, #2
c0de700c:	e7e8      	b.n	c0de6fe0 <snprintf+0x1b0>
c0de700e:	4545      	cmp	r5, r8
c0de7010:	bf28      	it	cs
c0de7012:	4645      	movcs	r5, r8
c0de7014:	4620      	mov	r0, r4
c0de7016:	462a      	mov	r2, r5
c0de7018:	f000 fba0 	bl	c0de775c <__aeabi_memmove>
c0de701c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7020:	f000 8088 	beq.w	c0de7134 <snprintf+0x304>
c0de7024:	462f      	mov	r7, r5
c0de7026:	442c      	add	r4, r5
c0de7028:	45bb      	cmp	fp, r7
c0de702a:	f67f af18 	bls.w	c0de6e5e <snprintf+0x2e>
c0de702e:	ebab 0507 	sub.w	r5, fp, r7
c0de7032:	4620      	mov	r0, r4
c0de7034:	4545      	cmp	r5, r8
c0de7036:	bf28      	it	cs
c0de7038:	4645      	movcs	r5, r8
c0de703a:	4629      	mov	r1, r5
c0de703c:	2220      	movs	r2, #32
c0de703e:	f000 fb8f 	bl	c0de7760 <__aeabi_memset>
c0de7042:	e061      	b.n	c0de7108 <snprintf+0x2d8>
c0de7044:	9a02      	ldr	r2, [sp, #8]
c0de7046:	9400      	str	r4, [sp, #0]
c0de7048:	2400      	movs	r4, #0
c0de704a:	f04f 0c00 	mov.w	ip, #0
c0de704e:	1d13      	adds	r3, r2, #4
c0de7050:	9302      	str	r3, [sp, #8]
c0de7052:	230a      	movs	r3, #10
c0de7054:	6812      	ldr	r2, [r2, #0]
c0de7056:	483d      	ldr	r0, [pc, #244]	@ (c0de714c <snprintf+0x31c>)
c0de7058:	1e4e      	subs	r6, r1, #1
c0de705a:	f04f 0a01 	mov.w	sl, #1
c0de705e:	4478      	add	r0, pc
c0de7060:	9001      	str	r0, [sp, #4]
c0de7062:	fba3 570a 	umull	r5, r7, r3, sl
c0de7066:	2f00      	cmp	r7, #0
c0de7068:	bf18      	it	ne
c0de706a:	2701      	movne	r7, #1
c0de706c:	4295      	cmp	r5, r2
c0de706e:	d804      	bhi.n	c0de707a <snprintf+0x24a>
c0de7070:	b91f      	cbnz	r7, c0de707a <snprintf+0x24a>
c0de7072:	f1ab 0b01 	sub.w	fp, fp, #1
c0de7076:	46aa      	mov	sl, r5
c0de7078:	e7f3      	b.n	c0de7062 <snprintf+0x232>
c0de707a:	2c00      	cmp	r4, #0
c0de707c:	4627      	mov	r7, r4
c0de707e:	f04f 0500 	mov.w	r5, #0
c0de7082:	bf18      	it	ne
c0de7084:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de7088:	d00d      	beq.n	c0de70a6 <snprintf+0x276>
c0de708a:	4660      	mov	r0, ip
c0de708c:	fa5f fc8e 	uxtb.w	ip, lr
c0de7090:	a903      	add	r1, sp, #12
c0de7092:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de7096:	4684      	mov	ip, r0
c0de7098:	d106      	bne.n	c0de70a8 <snprintf+0x278>
c0de709a:	202d      	movs	r0, #45	@ 0x2d
c0de709c:	2400      	movs	r4, #0
c0de709e:	2501      	movs	r5, #1
c0de70a0:	f88d 000c 	strb.w	r0, [sp, #12]
c0de70a4:	e000      	b.n	c0de70a8 <snprintf+0x278>
c0de70a6:	a903      	add	r1, sp, #12
c0de70a8:	eb07 000b 	add.w	r0, r7, fp
c0de70ac:	3802      	subs	r0, #2
c0de70ae:	280d      	cmp	r0, #13
c0de70b0:	d808      	bhi.n	c0de70c4 <snprintf+0x294>
c0de70b2:	f1c7 0701 	rsb	r7, r7, #1
c0de70b6:	45bb      	cmp	fp, r7
c0de70b8:	d004      	beq.n	c0de70c4 <snprintf+0x294>
c0de70ba:	f801 e005 	strb.w	lr, [r1, r5]
c0de70be:	3701      	adds	r7, #1
c0de70c0:	3501      	adds	r5, #1
c0de70c2:	e7f8      	b.n	c0de70b6 <snprintf+0x286>
c0de70c4:	9f01      	ldr	r7, [sp, #4]
c0de70c6:	b114      	cbz	r4, c0de70ce <snprintf+0x29e>
c0de70c8:	202d      	movs	r0, #45	@ 0x2d
c0de70ca:	5548      	strb	r0, [r1, r5]
c0de70cc:	3501      	adds	r5, #1
c0de70ce:	4820      	ldr	r0, [pc, #128]	@ (c0de7150 <snprintf+0x320>)
c0de70d0:	f1bc 0f00 	cmp.w	ip, #0
c0de70d4:	4478      	add	r0, pc
c0de70d6:	bf08      	it	eq
c0de70d8:	4638      	moveq	r0, r7
c0de70da:	f1ba 0f00 	cmp.w	sl, #0
c0de70de:	d00b      	beq.n	c0de70f8 <snprintf+0x2c8>
c0de70e0:	fbb2 f7fa 	udiv	r7, r2, sl
c0de70e4:	fbba faf3 	udiv	sl, sl, r3
c0de70e8:	fbb7 f4f3 	udiv	r4, r7, r3
c0de70ec:	fb04 7413 	mls	r4, r4, r3, r7
c0de70f0:	5d04      	ldrb	r4, [r0, r4]
c0de70f2:	554c      	strb	r4, [r1, r5]
c0de70f4:	3501      	adds	r5, #1
c0de70f6:	e7f0      	b.n	c0de70da <snprintf+0x2aa>
c0de70f8:	4545      	cmp	r5, r8
c0de70fa:	bf28      	it	cs
c0de70fc:	4645      	movcs	r5, r8
c0de70fe:	9c00      	ldr	r4, [sp, #0]
c0de7100:	462a      	mov	r2, r5
c0de7102:	4620      	mov	r0, r4
c0de7104:	f000 fb2a 	bl	c0de775c <__aeabi_memmove>
c0de7108:	ebb8 0805 	subs.w	r8, r8, r5
c0de710c:	442c      	add	r4, r5
c0de710e:	f47f aea6 	bne.w	c0de6e5e <snprintf+0x2e>
c0de7112:	e00f      	b.n	c0de7134 <snprintf+0x304>
c0de7114:	7808      	ldrb	r0, [r1, #0]
c0de7116:	2800      	cmp	r0, #0
c0de7118:	f47f aea1 	bne.w	c0de6e5e <snprintf+0x2e>
c0de711c:	4545      	cmp	r5, r8
c0de711e:	bf28      	it	cs
c0de7120:	4645      	movcs	r5, r8
c0de7122:	4620      	mov	r0, r4
c0de7124:	4629      	mov	r1, r5
c0de7126:	2220      	movs	r2, #32
c0de7128:	f000 fb1a 	bl	c0de7760 <__aeabi_memset>
c0de712c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7130:	f47f af79 	bne.w	c0de7026 <snprintf+0x1f6>
c0de7134:	2000      	movs	r0, #0
c0de7136:	b007      	add	sp, #28
c0de7138:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de713c:	b001      	add	sp, #4
c0de713e:	4770      	bx	lr
c0de7140:	00001c46 	.word	0x00001c46
c0de7144:	00001cb0 	.word	0x00001cb0
c0de7148:	00001c54 	.word	0x00001c54
c0de714c:	00001b9a 	.word	0x00001b9a
c0de7150:	00001b34 	.word	0x00001b34

c0de7154 <pic>:
c0de7154:	4a0a      	ldr	r2, [pc, #40]	@ (c0de7180 <pic+0x2c>)
c0de7156:	4282      	cmp	r2, r0
c0de7158:	490a      	ldr	r1, [pc, #40]	@ (c0de7184 <pic+0x30>)
c0de715a:	d806      	bhi.n	c0de716a <pic+0x16>
c0de715c:	4281      	cmp	r1, r0
c0de715e:	d304      	bcc.n	c0de716a <pic+0x16>
c0de7160:	b580      	push	{r7, lr}
c0de7162:	f000 f815 	bl	c0de7190 <pic_internal>
c0de7166:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de716a:	4907      	ldr	r1, [pc, #28]	@ (c0de7188 <pic+0x34>)
c0de716c:	4288      	cmp	r0, r1
c0de716e:	4a07      	ldr	r2, [pc, #28]	@ (c0de718c <pic+0x38>)
c0de7170:	d304      	bcc.n	c0de717c <pic+0x28>
c0de7172:	4290      	cmp	r0, r2
c0de7174:	d802      	bhi.n	c0de717c <pic+0x28>
c0de7176:	1a40      	subs	r0, r0, r1
c0de7178:	4649      	mov	r1, r9
c0de717a:	4408      	add	r0, r1
c0de717c:	4770      	bx	lr
c0de717e:	0000      	movs	r0, r0
c0de7180:	c0de0000 	.word	0xc0de0000
c0de7184:	c0de903f 	.word	0xc0de903f
c0de7188:	da7a0000 	.word	0xda7a0000
c0de718c:	da7aa000 	.word	0xda7aa000

c0de7190 <pic_internal>:
c0de7190:	467a      	mov	r2, pc
c0de7192:	4902      	ldr	r1, [pc, #8]	@ (c0de719c <pic_internal+0xc>)
c0de7194:	1cc9      	adds	r1, r1, #3
c0de7196:	1a89      	subs	r1, r1, r2
c0de7198:	1a40      	subs	r0, r0, r1
c0de719a:	4770      	bx	lr
c0de719c:	c0de7191 	.word	0xc0de7191

c0de71a0 <SVC_Call>:
c0de71a0:	df01      	svc	1
c0de71a2:	2900      	cmp	r1, #0
c0de71a4:	d100      	bne.n	c0de71a8 <exception>
c0de71a6:	4770      	bx	lr

c0de71a8 <exception>:
c0de71a8:	4608      	mov	r0, r1
c0de71aa:	f7ff fe2e 	bl	c0de6e0a <os_longjmp>
	...

c0de71b0 <SVC_cx_call>:
c0de71b0:	df01      	svc	1
c0de71b2:	4770      	bx	lr

c0de71b4 <nvm_write>:
c0de71b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71b6:	ab01      	add	r3, sp, #4
c0de71b8:	c307      	stmia	r3!, {r0, r1, r2}
c0de71ba:	4802      	ldr	r0, [pc, #8]	@ (c0de71c4 <nvm_write+0x10>)
c0de71bc:	a901      	add	r1, sp, #4
c0de71be:	f7ff ffef 	bl	c0de71a0 <SVC_Call>
c0de71c2:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de71c4:	03000003 	.word	0x03000003

c0de71c8 <cx_bn_lock>:
c0de71c8:	b5e0      	push	{r5, r6, r7, lr}
c0de71ca:	e9cd 0100 	strd	r0, r1, [sp]
c0de71ce:	4802      	ldr	r0, [pc, #8]	@ (c0de71d8 <cx_bn_lock+0x10>)
c0de71d0:	4669      	mov	r1, sp
c0de71d2:	f7ff ffed 	bl	c0de71b0 <SVC_cx_call>
c0de71d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de71d8:	02000112 	.word	0x02000112

c0de71dc <cx_bn_unlock>:
c0de71dc:	b5e0      	push	{r5, r6, r7, lr}
c0de71de:	2000      	movs	r0, #0
c0de71e0:	4669      	mov	r1, sp
c0de71e2:	9001      	str	r0, [sp, #4]
c0de71e4:	20b6      	movs	r0, #182	@ 0xb6
c0de71e6:	f7ff ffe3 	bl	c0de71b0 <SVC_cx_call>
c0de71ea:	bd8c      	pop	{r2, r3, r7, pc}

c0de71ec <cx_bn_alloc>:
c0de71ec:	b5e0      	push	{r5, r6, r7, lr}
c0de71ee:	e9cd 0100 	strd	r0, r1, [sp]
c0de71f2:	4802      	ldr	r0, [pc, #8]	@ (c0de71fc <cx_bn_alloc+0x10>)
c0de71f4:	4669      	mov	r1, sp
c0de71f6:	f7ff ffdb 	bl	c0de71b0 <SVC_cx_call>
c0de71fa:	bd8c      	pop	{r2, r3, r7, pc}
c0de71fc:	02000113 	.word	0x02000113

c0de7200 <cx_bn_alloc_init>:
c0de7200:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7202:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7206:	4803      	ldr	r0, [pc, #12]	@ (c0de7214 <cx_bn_alloc_init+0x14>)
c0de7208:	4669      	mov	r1, sp
c0de720a:	f7ff ffd1 	bl	c0de71b0 <SVC_cx_call>
c0de720e:	b004      	add	sp, #16
c0de7210:	bd80      	pop	{r7, pc}
c0de7212:	bf00      	nop
c0de7214:	04000114 	.word	0x04000114

c0de7218 <cx_bn_destroy>:
c0de7218:	b5e0      	push	{r5, r6, r7, lr}
c0de721a:	f000 f9b5 	bl	c0de7588 <OUTLINED_FUNCTION_0>
c0de721e:	4802      	ldr	r0, [pc, #8]	@ (c0de7228 <cx_bn_destroy+0x10>)
c0de7220:	4669      	mov	r1, sp
c0de7222:	f7ff ffc5 	bl	c0de71b0 <SVC_cx_call>
c0de7226:	bd8c      	pop	{r2, r3, r7, pc}
c0de7228:	010000bc 	.word	0x010000bc

c0de722c <cx_bn_nbytes>:
c0de722c:	b5e0      	push	{r5, r6, r7, lr}
c0de722e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7232:	4802      	ldr	r0, [pc, #8]	@ (c0de723c <cx_bn_nbytes+0x10>)
c0de7234:	4669      	mov	r1, sp
c0de7236:	f7ff ffbb 	bl	c0de71b0 <SVC_cx_call>
c0de723a:	bd8c      	pop	{r2, r3, r7, pc}
c0de723c:	0200010d 	.word	0x0200010d

c0de7240 <cx_bn_init>:
c0de7240:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7242:	ab01      	add	r3, sp, #4
c0de7244:	c307      	stmia	r3!, {r0, r1, r2}
c0de7246:	4803      	ldr	r0, [pc, #12]	@ (c0de7254 <cx_bn_init+0x14>)
c0de7248:	a901      	add	r1, sp, #4
c0de724a:	f7ff ffb1 	bl	c0de71b0 <SVC_cx_call>
c0de724e:	b004      	add	sp, #16
c0de7250:	bd80      	pop	{r7, pc}
c0de7252:	bf00      	nop
c0de7254:	03000115 	.word	0x03000115

c0de7258 <cx_bn_copy>:
c0de7258:	b5e0      	push	{r5, r6, r7, lr}
c0de725a:	e9cd 0100 	strd	r0, r1, [sp]
c0de725e:	4802      	ldr	r0, [pc, #8]	@ (c0de7268 <cx_bn_copy+0x10>)
c0de7260:	4669      	mov	r1, sp
c0de7262:	f7ff ffa5 	bl	c0de71b0 <SVC_cx_call>
c0de7266:	bd8c      	pop	{r2, r3, r7, pc}
c0de7268:	020000c0 	.word	0x020000c0

c0de726c <cx_bn_set_u32>:
c0de726c:	b5e0      	push	{r5, r6, r7, lr}
c0de726e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7272:	4802      	ldr	r0, [pc, #8]	@ (c0de727c <cx_bn_set_u32+0x10>)
c0de7274:	4669      	mov	r1, sp
c0de7276:	f7ff ff9b 	bl	c0de71b0 <SVC_cx_call>
c0de727a:	bd8c      	pop	{r2, r3, r7, pc}
c0de727c:	020000c1 	.word	0x020000c1

c0de7280 <cx_bn_export>:
c0de7280:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7282:	ab01      	add	r3, sp, #4
c0de7284:	c307      	stmia	r3!, {r0, r1, r2}
c0de7286:	4803      	ldr	r0, [pc, #12]	@ (c0de7294 <cx_bn_export+0x14>)
c0de7288:	a901      	add	r1, sp, #4
c0de728a:	f7ff ff91 	bl	c0de71b0 <SVC_cx_call>
c0de728e:	b004      	add	sp, #16
c0de7290:	bd80      	pop	{r7, pc}
c0de7292:	bf00      	nop
c0de7294:	030000c3 	.word	0x030000c3

c0de7298 <cx_bn_cmp>:
c0de7298:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de729a:	ab01      	add	r3, sp, #4
c0de729c:	c307      	stmia	r3!, {r0, r1, r2}
c0de729e:	4803      	ldr	r0, [pc, #12]	@ (c0de72ac <cx_bn_cmp+0x14>)
c0de72a0:	a901      	add	r1, sp, #4
c0de72a2:	f7ff ff85 	bl	c0de71b0 <SVC_cx_call>
c0de72a6:	b004      	add	sp, #16
c0de72a8:	bd80      	pop	{r7, pc}
c0de72aa:	bf00      	nop
c0de72ac:	030000c4 	.word	0x030000c4

c0de72b0 <cx_bn_cmp_u32>:
c0de72b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72b2:	ab01      	add	r3, sp, #4
c0de72b4:	c307      	stmia	r3!, {r0, r1, r2}
c0de72b6:	4803      	ldr	r0, [pc, #12]	@ (c0de72c4 <cx_bn_cmp_u32+0x14>)
c0de72b8:	a901      	add	r1, sp, #4
c0de72ba:	f7ff ff79 	bl	c0de71b0 <SVC_cx_call>
c0de72be:	b004      	add	sp, #16
c0de72c0:	bd80      	pop	{r7, pc}
c0de72c2:	bf00      	nop
c0de72c4:	030000c5 	.word	0x030000c5

c0de72c8 <cx_bn_tst_bit>:
c0de72c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72ca:	ab01      	add	r3, sp, #4
c0de72cc:	c307      	stmia	r3!, {r0, r1, r2}
c0de72ce:	4803      	ldr	r0, [pc, #12]	@ (c0de72dc <cx_bn_tst_bit+0x14>)
c0de72d0:	a901      	add	r1, sp, #4
c0de72d2:	f7ff ff6d 	bl	c0de71b0 <SVC_cx_call>
c0de72d6:	b004      	add	sp, #16
c0de72d8:	bd80      	pop	{r7, pc}
c0de72da:	bf00      	nop
c0de72dc:	030000cb 	.word	0x030000cb

c0de72e0 <cx_bn_mod_add>:
c0de72e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72e2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de72e6:	4803      	ldr	r0, [pc, #12]	@ (c0de72f4 <cx_bn_mod_add+0x14>)
c0de72e8:	4669      	mov	r1, sp
c0de72ea:	f7ff ff61 	bl	c0de71b0 <SVC_cx_call>
c0de72ee:	b004      	add	sp, #16
c0de72f0:	bd80      	pop	{r7, pc}
c0de72f2:	bf00      	nop
c0de72f4:	040000d3 	.word	0x040000d3

c0de72f8 <cx_bn_mod_sub>:
c0de72f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72fa:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de72fe:	4803      	ldr	r0, [pc, #12]	@ (c0de730c <cx_bn_mod_sub+0x14>)
c0de7300:	4669      	mov	r1, sp
c0de7302:	f7ff ff55 	bl	c0de71b0 <SVC_cx_call>
c0de7306:	b004      	add	sp, #16
c0de7308:	bd80      	pop	{r7, pc}
c0de730a:	bf00      	nop
c0de730c:	040000d4 	.word	0x040000d4

c0de7310 <cx_bn_mod_mul>:
c0de7310:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7312:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7316:	4803      	ldr	r0, [pc, #12]	@ (c0de7324 <cx_bn_mod_mul+0x14>)
c0de7318:	4669      	mov	r1, sp
c0de731a:	f7ff ff49 	bl	c0de71b0 <SVC_cx_call>
c0de731e:	b004      	add	sp, #16
c0de7320:	bd80      	pop	{r7, pc}
c0de7322:	bf00      	nop
c0de7324:	040000d5 	.word	0x040000d5

c0de7328 <cx_bn_reduce>:
c0de7328:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de732a:	ab01      	add	r3, sp, #4
c0de732c:	c307      	stmia	r3!, {r0, r1, r2}
c0de732e:	4803      	ldr	r0, [pc, #12]	@ (c0de733c <cx_bn_reduce+0x14>)
c0de7330:	a901      	add	r1, sp, #4
c0de7332:	f7ff ff3d 	bl	c0de71b0 <SVC_cx_call>
c0de7336:	b004      	add	sp, #16
c0de7338:	bd80      	pop	{r7, pc}
c0de733a:	bf00      	nop
c0de733c:	030000d6 	.word	0x030000d6

c0de7340 <cx_bn_mod_invert_nprime>:
c0de7340:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7342:	ab01      	add	r3, sp, #4
c0de7344:	c307      	stmia	r3!, {r0, r1, r2}
c0de7346:	4803      	ldr	r0, [pc, #12]	@ (c0de7354 <cx_bn_mod_invert_nprime+0x14>)
c0de7348:	a901      	add	r1, sp, #4
c0de734a:	f7ff ff31 	bl	c0de71b0 <SVC_cx_call>
c0de734e:	b004      	add	sp, #16
c0de7350:	bd80      	pop	{r7, pc}
c0de7352:	bf00      	nop
c0de7354:	030000da 	.word	0x030000da

c0de7358 <cx_bn_is_prime>:
c0de7358:	b5e0      	push	{r5, r6, r7, lr}
c0de735a:	e9cd 0100 	strd	r0, r1, [sp]
c0de735e:	4802      	ldr	r0, [pc, #8]	@ (c0de7368 <cx_bn_is_prime+0x10>)
c0de7360:	4669      	mov	r1, sp
c0de7362:	f7ff ff25 	bl	c0de71b0 <SVC_cx_call>
c0de7366:	bd8c      	pop	{r2, r3, r7, pc}
c0de7368:	020000ef 	.word	0x020000ef

c0de736c <cx_mont_alloc>:
c0de736c:	b5e0      	push	{r5, r6, r7, lr}
c0de736e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7372:	4802      	ldr	r0, [pc, #8]	@ (c0de737c <cx_mont_alloc+0x10>)
c0de7374:	4669      	mov	r1, sp
c0de7376:	f7ff ff1b 	bl	c0de71b0 <SVC_cx_call>
c0de737a:	bd8c      	pop	{r2, r3, r7, pc}
c0de737c:	020000dc 	.word	0x020000dc

c0de7380 <cx_mont_init>:
c0de7380:	b5e0      	push	{r5, r6, r7, lr}
c0de7382:	e9cd 0100 	strd	r0, r1, [sp]
c0de7386:	4802      	ldr	r0, [pc, #8]	@ (c0de7390 <cx_mont_init+0x10>)
c0de7388:	4669      	mov	r1, sp
c0de738a:	f7ff ff11 	bl	c0de71b0 <SVC_cx_call>
c0de738e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7390:	020000dd 	.word	0x020000dd

c0de7394 <cx_mont_to_montgomery>:
c0de7394:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7396:	ab01      	add	r3, sp, #4
c0de7398:	c307      	stmia	r3!, {r0, r1, r2}
c0de739a:	4803      	ldr	r0, [pc, #12]	@ (c0de73a8 <cx_mont_to_montgomery+0x14>)
c0de739c:	a901      	add	r1, sp, #4
c0de739e:	f7ff ff07 	bl	c0de71b0 <SVC_cx_call>
c0de73a2:	b004      	add	sp, #16
c0de73a4:	bd80      	pop	{r7, pc}
c0de73a6:	bf00      	nop
c0de73a8:	030000df 	.word	0x030000df

c0de73ac <cx_mont_from_montgomery>:
c0de73ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73ae:	ab01      	add	r3, sp, #4
c0de73b0:	c307      	stmia	r3!, {r0, r1, r2}
c0de73b2:	4803      	ldr	r0, [pc, #12]	@ (c0de73c0 <cx_mont_from_montgomery+0x14>)
c0de73b4:	a901      	add	r1, sp, #4
c0de73b6:	f7ff fefb 	bl	c0de71b0 <SVC_cx_call>
c0de73ba:	b004      	add	sp, #16
c0de73bc:	bd80      	pop	{r7, pc}
c0de73be:	bf00      	nop
c0de73c0:	030000e0 	.word	0x030000e0

c0de73c4 <cx_mont_mul>:
c0de73c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73c6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de73ca:	4803      	ldr	r0, [pc, #12]	@ (c0de73d8 <cx_mont_mul+0x14>)
c0de73cc:	4669      	mov	r1, sp
c0de73ce:	f7ff feef 	bl	c0de71b0 <SVC_cx_call>
c0de73d2:	b004      	add	sp, #16
c0de73d4:	bd80      	pop	{r7, pc}
c0de73d6:	bf00      	nop
c0de73d8:	040000e1 	.word	0x040000e1

c0de73dc <cx_mont_pow>:
c0de73dc:	b510      	push	{r4, lr}
c0de73de:	b086      	sub	sp, #24
c0de73e0:	f10d 0c04 	add.w	ip, sp, #4
c0de73e4:	9c08      	ldr	r4, [sp, #32]
c0de73e6:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de73ea:	4803      	ldr	r0, [pc, #12]	@ (c0de73f8 <cx_mont_pow+0x1c>)
c0de73ec:	a901      	add	r1, sp, #4
c0de73ee:	f7ff fedf 	bl	c0de71b0 <SVC_cx_call>
c0de73f2:	b006      	add	sp, #24
c0de73f4:	bd10      	pop	{r4, pc}
c0de73f6:	bf00      	nop
c0de73f8:	050000e2 	.word	0x050000e2

c0de73fc <cx_mont_invert_nprime>:
c0de73fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73fe:	ab01      	add	r3, sp, #4
c0de7400:	c307      	stmia	r3!, {r0, r1, r2}
c0de7402:	4803      	ldr	r0, [pc, #12]	@ (c0de7410 <cx_mont_invert_nprime+0x14>)
c0de7404:	a901      	add	r1, sp, #4
c0de7406:	f7ff fed3 	bl	c0de71b0 <SVC_cx_call>
c0de740a:	b004      	add	sp, #16
c0de740c:	bd80      	pop	{r7, pc}
c0de740e:	bf00      	nop
c0de7410:	030000e4 	.word	0x030000e4

c0de7414 <cx_ecdomain_parameters_length>:
c0de7414:	b5e0      	push	{r5, r6, r7, lr}
c0de7416:	e9cd 0100 	strd	r0, r1, [sp]
c0de741a:	4802      	ldr	r0, [pc, #8]	@ (c0de7424 <cx_ecdomain_parameters_length+0x10>)
c0de741c:	4669      	mov	r1, sp
c0de741e:	f7ff fec7 	bl	c0de71b0 <SVC_cx_call>
c0de7422:	bd8c      	pop	{r2, r3, r7, pc}
c0de7424:	0200012f 	.word	0x0200012f

c0de7428 <os_perso_derive_node_with_seed_key>:
c0de7428:	b510      	push	{r4, lr}
c0de742a:	b088      	sub	sp, #32
c0de742c:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de742e:	9407      	str	r4, [sp, #28]
c0de7430:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7432:	9406      	str	r4, [sp, #24]
c0de7434:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7436:	9405      	str	r4, [sp, #20]
c0de7438:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de743a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de743e:	4803      	ldr	r0, [pc, #12]	@ (c0de744c <os_perso_derive_node_with_seed_key+0x24>)
c0de7440:	4669      	mov	r1, sp
c0de7442:	f7ff fead 	bl	c0de71a0 <SVC_Call>
c0de7446:	b008      	add	sp, #32
c0de7448:	bd10      	pop	{r4, pc}
c0de744a:	bf00      	nop
c0de744c:	080000a6 	.word	0x080000a6

c0de7450 <os_pki_load_certificate>:
c0de7450:	b510      	push	{r4, lr}
c0de7452:	b086      	sub	sp, #24
c0de7454:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7456:	9405      	str	r4, [sp, #20]
c0de7458:	9c08      	ldr	r4, [sp, #32]
c0de745a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de745e:	4803      	ldr	r0, [pc, #12]	@ (c0de746c <os_pki_load_certificate+0x1c>)
c0de7460:	4669      	mov	r1, sp
c0de7462:	f7ff fe9d 	bl	c0de71a0 <SVC_Call>
c0de7466:	b006      	add	sp, #24
c0de7468:	bd10      	pop	{r4, pc}
c0de746a:	bf00      	nop
c0de746c:	060000aa 	.word	0x060000aa

c0de7470 <os_perso_is_pin_set>:
c0de7470:	b5e0      	push	{r5, r6, r7, lr}
c0de7472:	2000      	movs	r0, #0
c0de7474:	4669      	mov	r1, sp
c0de7476:	9001      	str	r0, [sp, #4]
c0de7478:	209e      	movs	r0, #158	@ 0x9e
c0de747a:	f7ff fe91 	bl	c0de71a0 <SVC_Call>
c0de747e:	b2c0      	uxtb	r0, r0
c0de7480:	bd8c      	pop	{r2, r3, r7, pc}

c0de7482 <os_global_pin_is_validated>:
c0de7482:	b5e0      	push	{r5, r6, r7, lr}
c0de7484:	2000      	movs	r0, #0
c0de7486:	4669      	mov	r1, sp
c0de7488:	9001      	str	r0, [sp, #4]
c0de748a:	20a0      	movs	r0, #160	@ 0xa0
c0de748c:	f7ff fe88 	bl	c0de71a0 <SVC_Call>
c0de7490:	b2c0      	uxtb	r0, r0
c0de7492:	bd8c      	pop	{r2, r3, r7, pc}

c0de7494 <os_ux>:
c0de7494:	b5e0      	push	{r5, r6, r7, lr}
c0de7496:	f000 f877 	bl	c0de7588 <OUTLINED_FUNCTION_0>
c0de749a:	4802      	ldr	r0, [pc, #8]	@ (c0de74a4 <os_ux+0x10>)
c0de749c:	4669      	mov	r1, sp
c0de749e:	f7ff fe7f 	bl	c0de71a0 <SVC_Call>
c0de74a2:	bd8c      	pop	{r2, r3, r7, pc}
c0de74a4:	01000064 	.word	0x01000064

c0de74a8 <os_lib_end>:
c0de74a8:	b082      	sub	sp, #8
c0de74aa:	2000      	movs	r0, #0
c0de74ac:	4669      	mov	r1, sp
c0de74ae:	9001      	str	r0, [sp, #4]
c0de74b0:	2068      	movs	r0, #104	@ 0x68
c0de74b2:	f7ff fe75 	bl	c0de71a0 <SVC_Call>
c0de74b6:	deff      	udf	#255	@ 0xff

c0de74b8 <os_flags>:
c0de74b8:	b5e0      	push	{r5, r6, r7, lr}
c0de74ba:	2000      	movs	r0, #0
c0de74bc:	4669      	mov	r1, sp
c0de74be:	9001      	str	r0, [sp, #4]
c0de74c0:	206a      	movs	r0, #106	@ 0x6a
c0de74c2:	f7ff fe6d 	bl	c0de71a0 <SVC_Call>
c0de74c6:	bd8c      	pop	{r2, r3, r7, pc}

c0de74c8 <os_registry_get_current_app_tag>:
c0de74c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74ca:	ab01      	add	r3, sp, #4
c0de74cc:	c307      	stmia	r3!, {r0, r1, r2}
c0de74ce:	4803      	ldr	r0, [pc, #12]	@ (c0de74dc <os_registry_get_current_app_tag+0x14>)
c0de74d0:	a901      	add	r1, sp, #4
c0de74d2:	f7ff fe65 	bl	c0de71a0 <SVC_Call>
c0de74d6:	b004      	add	sp, #16
c0de74d8:	bd80      	pop	{r7, pc}
c0de74da:	bf00      	nop
c0de74dc:	03000074 	.word	0x03000074

c0de74e0 <os_sched_exit>:
c0de74e0:	b082      	sub	sp, #8
c0de74e2:	f000 f851 	bl	c0de7588 <OUTLINED_FUNCTION_0>
c0de74e6:	4802      	ldr	r0, [pc, #8]	@ (c0de74f0 <os_sched_exit+0x10>)
c0de74e8:	4669      	mov	r1, sp
c0de74ea:	f7ff fe59 	bl	c0de71a0 <SVC_Call>
c0de74ee:	deff      	udf	#255	@ 0xff
c0de74f0:	0100009a 	.word	0x0100009a

c0de74f4 <os_io_init>:
c0de74f4:	b5e0      	push	{r5, r6, r7, lr}
c0de74f6:	9001      	str	r0, [sp, #4]
c0de74f8:	4802      	ldr	r0, [pc, #8]	@ (c0de7504 <os_io_init+0x10>)
c0de74fa:	a901      	add	r1, sp, #4
c0de74fc:	f7ff fe50 	bl	c0de71a0 <SVC_Call>
c0de7500:	bd8c      	pop	{r2, r3, r7, pc}
c0de7502:	bf00      	nop
c0de7504:	01000084 	.word	0x01000084

c0de7508 <os_io_start>:
c0de7508:	b5e0      	push	{r5, r6, r7, lr}
c0de750a:	2000      	movs	r0, #0
c0de750c:	4669      	mov	r1, sp
c0de750e:	9001      	str	r0, [sp, #4]
c0de7510:	4801      	ldr	r0, [pc, #4]	@ (c0de7518 <os_io_start+0x10>)
c0de7512:	f7ff fe45 	bl	c0de71a0 <SVC_Call>
c0de7516:	bd8c      	pop	{r2, r3, r7, pc}
c0de7518:	01000085 	.word	0x01000085

c0de751c <os_io_tx_cmd>:
c0de751c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de751e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7522:	4803      	ldr	r0, [pc, #12]	@ (c0de7530 <os_io_tx_cmd+0x14>)
c0de7524:	4669      	mov	r1, sp
c0de7526:	f7ff fe3b 	bl	c0de71a0 <SVC_Call>
c0de752a:	b004      	add	sp, #16
c0de752c:	bd80      	pop	{r7, pc}
c0de752e:	bf00      	nop
c0de7530:	04000088 	.word	0x04000088

c0de7534 <os_io_rx_evt>:
c0de7534:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7536:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de753a:	4803      	ldr	r0, [pc, #12]	@ (c0de7548 <os_io_rx_evt+0x14>)
c0de753c:	4669      	mov	r1, sp
c0de753e:	f7ff fe2f 	bl	c0de71a0 <SVC_Call>
c0de7542:	b004      	add	sp, #16
c0de7544:	bd80      	pop	{r7, pc}
c0de7546:	bf00      	nop
c0de7548:	03000089 	.word	0x03000089

c0de754c <try_context_get>:
c0de754c:	b5e0      	push	{r5, r6, r7, lr}
c0de754e:	2000      	movs	r0, #0
c0de7550:	4669      	mov	r1, sp
c0de7552:	9001      	str	r0, [sp, #4]
c0de7554:	2087      	movs	r0, #135	@ 0x87
c0de7556:	f7ff fe23 	bl	c0de71a0 <SVC_Call>
c0de755a:	bd8c      	pop	{r2, r3, r7, pc}

c0de755c <try_context_set>:
c0de755c:	b5e0      	push	{r5, r6, r7, lr}
c0de755e:	f000 f813 	bl	c0de7588 <OUTLINED_FUNCTION_0>
c0de7562:	4802      	ldr	r0, [pc, #8]	@ (c0de756c <try_context_set+0x10>)
c0de7564:	4669      	mov	r1, sp
c0de7566:	f7ff fe1b 	bl	c0de71a0 <SVC_Call>
c0de756a:	bd8c      	pop	{r2, r3, r7, pc}
c0de756c:	0100010b 	.word	0x0100010b

c0de7570 <os_sched_last_status>:
c0de7570:	b5e0      	push	{r5, r6, r7, lr}
c0de7572:	f000 f809 	bl	c0de7588 <OUTLINED_FUNCTION_0>
c0de7576:	4803      	ldr	r0, [pc, #12]	@ (c0de7584 <os_sched_last_status+0x14>)
c0de7578:	4669      	mov	r1, sp
c0de757a:	f7ff fe11 	bl	c0de71a0 <SVC_Call>
c0de757e:	b2c0      	uxtb	r0, r0
c0de7580:	bd8c      	pop	{r2, r3, r7, pc}
c0de7582:	bf00      	nop
c0de7584:	0100009c 	.word	0x0100009c

c0de7588 <OUTLINED_FUNCTION_0>:
c0de7588:	2100      	movs	r1, #0
c0de758a:	e9cd 0100 	strd	r0, r1, [sp]
c0de758e:	4770      	bx	lr

c0de7590 <__udivmoddi4>:
c0de7590:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7594:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7598:	4604      	mov	r4, r0
c0de759a:	b179      	cbz	r1, c0de75bc <__udivmoddi4+0x2c>
c0de759c:	b1ba      	cbz	r2, c0de75ce <__udivmoddi4+0x3e>
c0de759e:	b35b      	cbz	r3, c0de75f8 <__udivmoddi4+0x68>
c0de75a0:	fab1 f581 	clz	r5, r1
c0de75a4:	fab3 f683 	clz	r6, r3
c0de75a8:	1b75      	subs	r5, r6, r5
c0de75aa:	2d20      	cmp	r5, #32
c0de75ac:	d34a      	bcc.n	c0de7644 <__udivmoddi4+0xb4>
c0de75ae:	f1bc 0f00 	cmp.w	ip, #0
c0de75b2:	bf18      	it	ne
c0de75b4:	e9cc 4100 	strdne	r4, r1, [ip]
c0de75b8:	2400      	movs	r4, #0
c0de75ba:	e066      	b.n	c0de768a <__udivmoddi4+0xfa>
c0de75bc:	b3cb      	cbz	r3, c0de7632 <__udivmoddi4+0xa2>
c0de75be:	2100      	movs	r1, #0
c0de75c0:	f1bc 0f00 	cmp.w	ip, #0
c0de75c4:	bf18      	it	ne
c0de75c6:	e9cc 4100 	strdne	r4, r1, [ip]
c0de75ca:	2400      	movs	r4, #0
c0de75cc:	e0a6      	b.n	c0de771c <__udivmoddi4+0x18c>
c0de75ce:	2b00      	cmp	r3, #0
c0de75d0:	d03e      	beq.n	c0de7650 <__udivmoddi4+0xc0>
c0de75d2:	2800      	cmp	r0, #0
c0de75d4:	d04f      	beq.n	c0de7676 <__udivmoddi4+0xe6>
c0de75d6:	1e5d      	subs	r5, r3, #1
c0de75d8:	422b      	tst	r3, r5
c0de75da:	d158      	bne.n	c0de768e <__udivmoddi4+0xfe>
c0de75dc:	f1bc 0f00 	cmp.w	ip, #0
c0de75e0:	bf1c      	itt	ne
c0de75e2:	ea05 0001 	andne.w	r0, r5, r1
c0de75e6:	e9cc 4000 	strdne	r4, r0, [ip]
c0de75ea:	fa93 f0a3 	rbit	r0, r3
c0de75ee:	fab0 f080 	clz	r0, r0
c0de75f2:	fa21 f400 	lsr.w	r4, r1, r0
c0de75f6:	e048      	b.n	c0de768a <__udivmoddi4+0xfa>
c0de75f8:	1e55      	subs	r5, r2, #1
c0de75fa:	422a      	tst	r2, r5
c0de75fc:	d129      	bne.n	c0de7652 <__udivmoddi4+0xc2>
c0de75fe:	f1bc 0f00 	cmp.w	ip, #0
c0de7602:	bf1e      	ittt	ne
c0de7604:	2300      	movne	r3, #0
c0de7606:	4005      	andne	r5, r0
c0de7608:	e9cc 5300 	strdne	r5, r3, [ip]
c0de760c:	2a01      	cmp	r2, #1
c0de760e:	f000 8085 	beq.w	c0de771c <__udivmoddi4+0x18c>
c0de7612:	fa92 f2a2 	rbit	r2, r2
c0de7616:	004c      	lsls	r4, r1, #1
c0de7618:	fab2 f282 	clz	r2, r2
c0de761c:	f002 031f 	and.w	r3, r2, #31
c0de7620:	40d1      	lsrs	r1, r2
c0de7622:	40d8      	lsrs	r0, r3
c0de7624:	231f      	movs	r3, #31
c0de7626:	4393      	bics	r3, r2
c0de7628:	fa04 f303 	lsl.w	r3, r4, r3
c0de762c:	ea43 0400 	orr.w	r4, r3, r0
c0de7630:	e074      	b.n	c0de771c <__udivmoddi4+0x18c>
c0de7632:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7636:	f1bc 0f00 	cmp.w	ip, #0
c0de763a:	d026      	beq.n	c0de768a <__udivmoddi4+0xfa>
c0de763c:	fb04 0012 	mls	r0, r4, r2, r0
c0de7640:	2100      	movs	r1, #0
c0de7642:	e020      	b.n	c0de7686 <__udivmoddi4+0xf6>
c0de7644:	f105 0e01 	add.w	lr, r5, #1
c0de7648:	f1be 0f20 	cmp.w	lr, #32
c0de764c:	d00b      	beq.n	c0de7666 <__udivmoddi4+0xd6>
c0de764e:	e028      	b.n	c0de76a2 <__udivmoddi4+0x112>
c0de7650:	e064      	b.n	c0de771c <__udivmoddi4+0x18c>
c0de7652:	fab1 f481 	clz	r4, r1
c0de7656:	fab2 f582 	clz	r5, r2
c0de765a:	1b2c      	subs	r4, r5, r4
c0de765c:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7660:	f1be 0f20 	cmp.w	lr, #32
c0de7664:	d15d      	bne.n	c0de7722 <__udivmoddi4+0x192>
c0de7666:	f04f 0e20 	mov.w	lr, #32
c0de766a:	f04f 0a00 	mov.w	sl, #0
c0de766e:	f04f 0b00 	mov.w	fp, #0
c0de7672:	460e      	mov	r6, r1
c0de7674:	e021      	b.n	c0de76ba <__udivmoddi4+0x12a>
c0de7676:	fbb1 f4f3 	udiv	r4, r1, r3
c0de767a:	f1bc 0f00 	cmp.w	ip, #0
c0de767e:	d004      	beq.n	c0de768a <__udivmoddi4+0xfa>
c0de7680:	2000      	movs	r0, #0
c0de7682:	fb04 1113 	mls	r1, r4, r3, r1
c0de7686:	e9cc 0100 	strd	r0, r1, [ip]
c0de768a:	2100      	movs	r1, #0
c0de768c:	e046      	b.n	c0de771c <__udivmoddi4+0x18c>
c0de768e:	fab1 f581 	clz	r5, r1
c0de7692:	fab3 f683 	clz	r6, r3
c0de7696:	1b75      	subs	r5, r6, r5
c0de7698:	2d1f      	cmp	r5, #31
c0de769a:	f4bf af88 	bcs.w	c0de75ae <__udivmoddi4+0x1e>
c0de769e:	f105 0e01 	add.w	lr, r5, #1
c0de76a2:	fa20 f40e 	lsr.w	r4, r0, lr
c0de76a6:	f1c5 051f 	rsb	r5, r5, #31
c0de76aa:	fa01 f605 	lsl.w	r6, r1, r5
c0de76ae:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de76b2:	40a8      	lsls	r0, r5
c0de76b4:	f04f 0a00 	mov.w	sl, #0
c0de76b8:	4326      	orrs	r6, r4
c0de76ba:	f04f 0800 	mov.w	r8, #0
c0de76be:	f1be 0f00 	cmp.w	lr, #0
c0de76c2:	d01c      	beq.n	c0de76fe <__udivmoddi4+0x16e>
c0de76c4:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de76c8:	f1ae 0e01 	sub.w	lr, lr, #1
c0de76cc:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de76d0:	0076      	lsls	r6, r6, #1
c0de76d2:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de76d6:	1aae      	subs	r6, r5, r2
c0de76d8:	eb61 0b03 	sbc.w	fp, r1, r3
c0de76dc:	43cf      	mvns	r7, r1
c0de76de:	43ec      	mvns	r4, r5
c0de76e0:	18a4      	adds	r4, r4, r2
c0de76e2:	eb57 0403 	adcs.w	r4, r7, r3
c0de76e6:	bf5c      	itt	pl
c0de76e8:	468b      	movpl	fp, r1
c0de76ea:	462e      	movpl	r6, r5
c0de76ec:	0040      	lsls	r0, r0, #1
c0de76ee:	0fe1      	lsrs	r1, r4, #31
c0de76f0:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de76f4:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de76f8:	46a2      	mov	sl, r4
c0de76fa:	4688      	mov	r8, r1
c0de76fc:	e7df      	b.n	c0de76be <__udivmoddi4+0x12e>
c0de76fe:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7702:	f1bc 0f00 	cmp.w	ip, #0
c0de7706:	bf18      	it	ne
c0de7708:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de770c:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7710:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7714:	f020 0001 	bic.w	r0, r0, #1
c0de7718:	ea40 0408 	orr.w	r4, r0, r8
c0de771c:	4620      	mov	r0, r4
c0de771e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7722:	f1be 0f1f 	cmp.w	lr, #31
c0de7726:	d804      	bhi.n	c0de7732 <__udivmoddi4+0x1a2>
c0de7728:	fa20 f40e 	lsr.w	r4, r0, lr
c0de772c:	f1ce 0520 	rsb	r5, lr, #32
c0de7730:	e7bb      	b.n	c0de76aa <__udivmoddi4+0x11a>
c0de7732:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7736:	f1ae 0420 	sub.w	r4, lr, #32
c0de773a:	f04f 0b00 	mov.w	fp, #0
c0de773e:	fa20 f504 	lsr.w	r5, r0, r4
c0de7742:	fa01 f607 	lsl.w	r6, r1, r7
c0de7746:	fa00 fa07 	lsl.w	sl, r0, r7
c0de774a:	ea46 0805 	orr.w	r8, r6, r5
c0de774e:	fa21 f604 	lsr.w	r6, r1, r4
c0de7752:	4640      	mov	r0, r8
c0de7754:	e7b1      	b.n	c0de76ba <__udivmoddi4+0x12a>
	...

c0de7758 <__aeabi_memcpy>:
c0de7758:	f000 b81c 	b.w	c0de7794 <memcpy>

c0de775c <__aeabi_memmove>:
c0de775c:	f000 b828 	b.w	c0de77b0 <memmove>

c0de7760 <__aeabi_memset>:
c0de7760:	460b      	mov	r3, r1
c0de7762:	4611      	mov	r1, r2
c0de7764:	461a      	mov	r2, r3
c0de7766:	f000 b83d 	b.w	c0de77e4 <memset>
c0de776a:	bf00      	nop

c0de776c <__aeabi_memclr>:
c0de776c:	460a      	mov	r2, r1
c0de776e:	2100      	movs	r1, #0
c0de7770:	f000 b838 	b.w	c0de77e4 <memset>

c0de7774 <__aeabi_uldivmod>:
c0de7774:	b540      	push	{r6, lr}
c0de7776:	b084      	sub	sp, #16
c0de7778:	ae02      	add	r6, sp, #8
c0de777a:	9600      	str	r6, [sp, #0]
c0de777c:	f7ff ff08 	bl	c0de7590 <__udivmoddi4>
c0de7780:	9a02      	ldr	r2, [sp, #8]
c0de7782:	9b03      	ldr	r3, [sp, #12]
c0de7784:	b004      	add	sp, #16
c0de7786:	bd40      	pop	{r6, pc}

c0de7788 <explicit_bzero>:
c0de7788:	f000 b800 	b.w	c0de778c <bzero>

c0de778c <bzero>:
c0de778c:	460a      	mov	r2, r1
c0de778e:	2100      	movs	r1, #0
c0de7790:	f000 b828 	b.w	c0de77e4 <memset>

c0de7794 <memcpy>:
c0de7794:	440a      	add	r2, r1
c0de7796:	4291      	cmp	r1, r2
c0de7798:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de779c:	d100      	bne.n	c0de77a0 <memcpy+0xc>
c0de779e:	4770      	bx	lr
c0de77a0:	b510      	push	{r4, lr}
c0de77a2:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de77a6:	4291      	cmp	r1, r2
c0de77a8:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de77ac:	d1f9      	bne.n	c0de77a2 <memcpy+0xe>
c0de77ae:	bd10      	pop	{r4, pc}

c0de77b0 <memmove>:
c0de77b0:	4288      	cmp	r0, r1
c0de77b2:	b510      	push	{r4, lr}
c0de77b4:	eb01 0402 	add.w	r4, r1, r2
c0de77b8:	d902      	bls.n	c0de77c0 <memmove+0x10>
c0de77ba:	4284      	cmp	r4, r0
c0de77bc:	4623      	mov	r3, r4
c0de77be:	d807      	bhi.n	c0de77d0 <memmove+0x20>
c0de77c0:	1e43      	subs	r3, r0, #1
c0de77c2:	42a1      	cmp	r1, r4
c0de77c4:	d008      	beq.n	c0de77d8 <memmove+0x28>
c0de77c6:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de77ca:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de77ce:	e7f8      	b.n	c0de77c2 <memmove+0x12>
c0de77d0:	4601      	mov	r1, r0
c0de77d2:	4402      	add	r2, r0
c0de77d4:	428a      	cmp	r2, r1
c0de77d6:	d100      	bne.n	c0de77da <memmove+0x2a>
c0de77d8:	bd10      	pop	{r4, pc}
c0de77da:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de77de:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de77e2:	e7f7      	b.n	c0de77d4 <memmove+0x24>

c0de77e4 <memset>:
c0de77e4:	4603      	mov	r3, r0
c0de77e6:	4402      	add	r2, r0
c0de77e8:	4293      	cmp	r3, r2
c0de77ea:	d100      	bne.n	c0de77ee <memset+0xa>
c0de77ec:	4770      	bx	lr
c0de77ee:	f803 1b01 	strb.w	r1, [r3], #1
c0de77f2:	e7f9      	b.n	c0de77e8 <memset+0x4>

c0de77f4 <setjmp>:
c0de77f4:	46ec      	mov	ip, sp
c0de77f6:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de77fa:	f04f 0000 	mov.w	r0, #0
c0de77fe:	4770      	bx	lr

c0de7800 <longjmp>:
c0de7800:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7804:	46e5      	mov	sp, ip
c0de7806:	0008      	movs	r0, r1
c0de7808:	bf08      	it	eq
c0de780a:	2001      	moveq	r0, #1
c0de780c:	4770      	bx	lr
c0de780e:	bf00      	nop

c0de7810 <strcmp>:
c0de7810:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7814:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7818:	2a01      	cmp	r2, #1
c0de781a:	bf28      	it	cs
c0de781c:	429a      	cmpcs	r2, r3
c0de781e:	d0f7      	beq.n	c0de7810 <strcmp>
c0de7820:	1ad0      	subs	r0, r2, r3
c0de7822:	4770      	bx	lr

c0de7824 <strlen>:
c0de7824:	4603      	mov	r3, r0
c0de7826:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de782a:	2a00      	cmp	r2, #0
c0de782c:	d1fb      	bne.n	c0de7826 <strlen+0x2>
c0de782e:	1a18      	subs	r0, r3, r0
c0de7830:	3801      	subs	r0, #1
c0de7832:	4770      	bx	lr

c0de7834 <strncmp>:
c0de7834:	b510      	push	{r4, lr}
c0de7836:	b16a      	cbz	r2, c0de7854 <strncmp+0x20>
c0de7838:	3901      	subs	r1, #1
c0de783a:	1884      	adds	r4, r0, r2
c0de783c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7840:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7844:	429a      	cmp	r2, r3
c0de7846:	d103      	bne.n	c0de7850 <strncmp+0x1c>
c0de7848:	42a0      	cmp	r0, r4
c0de784a:	d001      	beq.n	c0de7850 <strncmp+0x1c>
c0de784c:	2a00      	cmp	r2, #0
c0de784e:	d1f5      	bne.n	c0de783c <strncmp+0x8>
c0de7850:	1ad0      	subs	r0, r2, r3
c0de7852:	bd10      	pop	{r4, pc}
c0de7854:	4610      	mov	r0, r2
c0de7856:	e7fc      	b.n	c0de7852 <strncmp+0x1e>

c0de7858 <strncpy>:
c0de7858:	4603      	mov	r3, r0
c0de785a:	b510      	push	{r4, lr}
c0de785c:	3901      	subs	r1, #1
c0de785e:	b132      	cbz	r2, c0de786e <strncpy+0x16>
c0de7860:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7864:	3a01      	subs	r2, #1
c0de7866:	f803 4b01 	strb.w	r4, [r3], #1
c0de786a:	2c00      	cmp	r4, #0
c0de786c:	d1f7      	bne.n	c0de785e <strncpy+0x6>
c0de786e:	2100      	movs	r1, #0
c0de7870:	441a      	add	r2, r3
c0de7872:	4293      	cmp	r3, r2
c0de7874:	d100      	bne.n	c0de7878 <strncpy+0x20>
c0de7876:	bd10      	pop	{r4, pc}
c0de7878:	f803 1b01 	strb.w	r1, [r3], #1
c0de787c:	e7f9      	b.n	c0de7872 <strncpy+0x1a>

c0de787e <C_home_boilerplate_14px_bitmap>:
c0de787e:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de788e:	fc7b df0f 7ffe 7ff8                          {........

c0de7897 <C_home_boilerplate_14px>:
c0de7897:	000e 000e 0000 787e c0de                    ......~x..

c0de78a1 <C_Information_circle_14px_bitmap>:
c0de78a1:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de78b1:	e7ff 8fff 1ffc 1ee0                          .........

c0de78ba <C_Information_circle_14px>:
c0de78ba:	000e 000e 0000 78a1 c0de                    .......x..

c0de78c4 <C_Quit_14px_bitmap>:
c0de78c4:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de78d4:	6680 9801 7f06 fff9                          .f.......

c0de78dd <C_Quit_14px>:
c0de78dd:	000e 000e 0000 78c4 c0de                    .......x..

c0de78e7 <C_Switch_Off_8px_bitmap>:
c0de78e7:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de78f3 <C_Switch_Off_8px>:
c0de78f3:	000c 0008 0000 78e7 c0de                    .......x..

c0de78fd <C_Switch_On_8px_bitmap>:
c0de78fd:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7909 <C_Switch_On_8px>:
c0de7909:	000c 0008 0000 78fd c0de                    .......x..

c0de7913 <C_icon_back_x_bitmap>:
c0de7913:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7923:	003f 0078 00c0 0000                          ?.x......

c0de792c <C_icon_back_x>:
c0de792c:	000e 000e 0000 7913 c0de                    .......y..

c0de7936 <C_icon_coggle_bitmap>:
c0de7936:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de7946:	807f 00b4 00c0 0000                          .........

c0de794f <C_icon_coggle>:
c0de794f:	000e 000e 0000 7936 c0de                    ......6y..

c0de7959 <C_icon_crossmark_bitmap>:
c0de7959:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7969:	8373 1c87 600e 0018                          s....`...

c0de7972 <C_icon_crossmark>:
c0de7972:	000e 000e 0000 7959 c0de                    ......Yy..

c0de797c <C_icon_down_bitmap>:
c0de797c:	2184 8024                                   .!$.

c0de7980 <C_icon_down>:
c0de7980:	0007 0004 0000 797c c0de                    ......|y..

c0de798a <C_icon_left_bitmap>:
c0de798a:	8882 80a0                                   ....

c0de798e <C_icon_left>:
c0de798e:	0004 0007 0000 798a c0de                    .......y..

c0de7998 <C_icon_processing_bitmap>:
c0de7998:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de79a8:	8361 04b7 03c8 0000                          a........

c0de79b1 <C_icon_processing>:
c0de79b1:	000e 000e 0000 7998 c0de                    .......y..

c0de79bb <C_icon_right_bitmap>:
c0de79bb:	5110 1014                                   .Q..

c0de79bf <C_icon_right>:
c0de79bf:	0004 0007 0000 79bb c0de                    .......y..

c0de79c9 <C_icon_up_bitmap>:
c0de79c9:	4812 1042                                   .HB.

c0de79cd <C_icon_up>:
c0de79cd:	0007 0004 0000 79c9 c0de                    .......y..

c0de79d7 <C_icon_validate_14_bitmap>:
c0de79d7:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de79e7:	a3b3 a3a3 f0b2                               ......P

c0de79ee <C_icon_validate_14>:
c0de79ee:	000e 000e 0100 79d7 c0de                    .......y..

c0de79f8 <C_icon_warning_bitmap>:
c0de79f8:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7a08:	e01f 801f 001e 0018                          .........

c0de7a11 <C_icon_warning>:
c0de7a11:	000e 000e 0000 79f8 c0de                    .......y..

c0de7a1b <C_app_boilerplate_14px_bitmap>:
c0de7a1b:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7a2b:	0384 00f0 0000 0000                          .........

c0de7a34 <C_app_boilerplate_14px>:
c0de7a34:	000e 000e 0000 7a1b c0de 7544 6d6d 2079     .......z..Dummy 
c0de7a44:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0de7a54:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0de7a64:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0de7a74:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0de7a84:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0de7a94:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0de7aa4:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0de7ab4:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0de7ac4:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0de7ad4:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0de7ae4:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0de7af4:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0de7b04:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0de7b14:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0de7b24:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0de7b34:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0de7b44:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0de7b54:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0de7b64:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0de7b74:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0de7b84:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0de7b94:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0de7ba4:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0de7bb4:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0de7bc4:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0de7bd4:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0de7be4:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0de7bf4:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0de7c04:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0de7c14:	6556 7372 6f69 006e 6143 636e 6c65 4100     Version.Cancel.A
c0de7c24:	6464 6572 7373 7620 7265 6669 6369 7461     ddress verificat
c0de7c34:	6f69 206e 6163 636e 6c65 656c 0064 6944     ion cancelled.Di
c0de7c44:	6173 6c62 6465 4100 7070 7320 7465 6974     sabled.App setti
c0de7c54:	676e 0073 6341 6563 7470 7220 7369 206b     ngs.Accept risk 
c0de7c64:	6e61 2064 6973 6e67 7420 6172 736e 6361     and sign transac
c0de7c74:	6974 6e6f 4200 696c 646e 7320 6769 696e     tion.Blind signi
c0de7c84:	676e 6120 6568 6461 4100 6363 7065 2074     ng ahead.Accept 
c0de7c94:	6972 6b73 6120 646e 7320 6769 206e 706f     risk and sign op
c0de7ca4:	7265 7461 6f69 006e 654d 7373 6761 2065     eration.Message 
c0de7cb4:	6572 656a 7463 6465 3000 3231 3433 3635     rejected.0123456
c0de7cc4:	3837 4139 4342 4544 0046 4f42 204c 2e25     789ABCDEF.BOL %.
c0de7cd4:	732a 4100 6464 6572 7373 4200 6361 006b     *s.Address.Back.
c0de7ce4:	7544 6d6d 2079 0031 2049 6e75 6564 7372     Dummy 1.I unders
c0de7cf4:	6174 646e 202c 6f63 666e 7269 006d 7254     tand, confirm.Tr
c0de7d04:	6e61 6173 7463 6f69 206e 6572 656a 7463     ansaction reject
c0de7d14:	6465 4100 7070 6920 666e 006f 6953 6e67     ed.App info.Sign
c0de7d24:	6f20 6570 6172 6974 6e6f 5200 6a65 6365      operation.Rejec
c0de7d34:	2074 656d 7373 6761 0065 6552 656a 7463     t message.Reject
c0de7d44:	6f20 6570 6172 6974 6e6f 5a00 4e4b 584f      operation.ZKNOX
c0de7d54:	5600 7265 6669 2079 4f42 204c 6461 7264     .Verify BOL addr
c0de7d64:	7365 0073 4b5a 4f4e 4858 0057 7061 2070     ess.ZKNOXHW.app 
c0de7d74:	7369 7220 6165 7964 5100 6975 2074 7061     is ready.Quit ap
c0de7d84:	0070 6f43 666e 7269 006d 0000 ed73 53a7     p.Confirm...s..S
c0de7d94:	9d29 487d 3933 08d8 a109 05d8 bd53 02a4     ).}H39......S...
c0de7da4:	feff fe5b ffff ffff 0000 0100 ce05 c698     ..[.............
c0de7db4:	051b 7ff4 eae2 a5e9 bd42 f699 e7b2 4682     ........B......F
c0de7dc4:	1623 b540 9545 bffe 1ed5 53b8 0001 0000     #.@.E......S....
c0de7dd4:	0000 0000 0002 0000 0000 0000 0003 0000     ................
c0de7de4:	0000 0000 0004 0000 0000 0000 a005 91c0     ................
c0de7df4:	8356 988b af28 123f e167 e675 84e2 9dc7     V...(.?.g.u.....
c0de7e04:	6d1b d08a 0acd d9e0 9057 6e33 c61c 38ee     .m......W.3n...8
c0de7e14:	9c13 111c 2302 7a53 e78c 069d 587e 10cc     .....#Sz....~X..
c0de7e24:	c667 b7fb b3d8 b0a1 fc8d 088f 4d27 e8bc     g...........'M..
c0de7e34:	51d1 9679 c09b 9fd4 25a7 dfbd e59d e055     .Qy......%....U.
c0de7e44:	6aba 3c69 db6a fc52 e79e 2ca8 fb1c d469     .ji<j.R....,..i.
c0de7e54:	67ca 525f ce0c 0276 6802 0076 8fff 0087     .g_R..v..hv.....
c0de7e64:	1974 7104 fd74 b506 7628 e1e7 0c06 ce89     t..qt...(v......
c0de7e74:	265c 0534 0a37 b608 30d0 0b2b 3eab b8ed     \&4.7....0+..>..
c0de7e84:	2039 0aee 7267 dc97 2139 f126 a570 4a89     9 ..gr..9!&.p..J
c0de7e94:	4464 3854 15d0 32ac 36ba 090f de2c ba44     dDT8...2.6..,.D.
c0de7ea4:	1fb1 b7c2 b5d4 d2c0 2216 ce8c 820b 39b7     .........".....9
c0de7eb4:	8de7 57da 5ae7 80c6 68ef f19d 8f15 eee3     ...W.Z...h......
c0de7ec4:	09d8 6d5c d14b c7b2 66c1 fdee 0000 0000     ..\mK....f......
	...
c0de7eec:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7efc:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7f0c:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7f1c:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7f2c:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7f3c:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de7f4c:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de7f6c:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de7f7c:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de7f8c:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de7f9c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de7fac:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de7fbc:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de7fcc:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de7fdc:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de7fec:	88f4 7a60                                   ..`z

c0de7ff0 <.L__const.handler_cmd_Poseidon.input>:
c0de7ff0:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8000:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8010:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de8020:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de8030:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de8040:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de8050:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de8060:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de8070:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8080:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8090 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de80ac:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de80bc:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de80cc:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de80dc:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de80ec:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de80fc:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de810c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de811c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de812c:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de814c:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de815c:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de816c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de817c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de818c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de819c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de81ac:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de81bc:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de81cc:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de81ec:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de81fc:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de820c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de821c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de822c:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de823c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de824c:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de825c:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de826c:	9b44 9ffb                                   D...

c0de8270 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de828c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de829c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de82ac:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de82bc:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de82cc:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de82dc:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de82ec:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de82fc:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de830c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de832c:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de833c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de834c:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de835c:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de836c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de837c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de838c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de839c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de83ac:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de83cc:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de83dc:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de83ec:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de83fc:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de840c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de841c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de842c:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de843c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de844c:	8132 74b1                                   2..t

c0de8450 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8450:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8460:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8470:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8480:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8490:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de84a0:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de84b0 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de84cc:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de84dc:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de84ec:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de84fc:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de850c:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de851c:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de852c:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de853c:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de854c:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de856c:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de857c:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de858c:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de859c:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de85ac:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de85bc:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de85cc:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de85dc:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de85ec:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de860c:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de861c:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de862c:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de863c:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de864c:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de865c:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de866c:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de867c:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de868c:	a0c2 7523                                   ..#u

c0de8690 <settingContents>:
c0de8690:	0000 0000 86ac c0de 0001 0000               ............

c0de869c <infoList>:
c0de869c:	86e4 c0de 86ec c0de 0000 0000 0002 0000     ................

c0de86ac <contents>:
c0de86ac:	0007 0000 0344 da7a 0002 0000 0000 0000     ....D.z.........
	...
c0de86e0:	18ed c0de                                   ....

c0de86e4 <INFO_TYPES>:
c0de86e4:	7c14 c0de 7b69 c0de                         .|..i{..

c0de86ec <INFO_CONTENTS>:
c0de86ec:	7a8c c0de 7d4f c0de                         .z..O}..

c0de86f4 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8714:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8724:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8734 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8734:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8744:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8754:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8764:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8774:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8784:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8794:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de87a4:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de87b4:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de87c4:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de87d4:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de87e4:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de87f4:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8804:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8814:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8824:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8834:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de8844:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de8854:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8864:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8874:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de8884:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8894:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de88a4:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de88b4:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de88c4:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de88d4:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de88e4:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de88f4:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de8904:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de8914:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de8924:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de8934:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de8944:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de8954:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8964:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8974:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de8984:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8994:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de89a4:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de89b4:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de89c4:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de89d4:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de89e4:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de89f4:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8a04:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8a14:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8a24:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8a34:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8a44:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8a54:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8a64:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8a74:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8a84:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8a94:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8aa4:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8ab4:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8ac4:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8ad4:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8ae4:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8af4:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8b04:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8b14:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8b24:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8b34:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8b44:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8b54:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8b64:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8b74:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8b84:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8b94:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8ba4:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8bb4 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8bb4:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8bc4:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8bd4 <blindSigningWarning>:
c0de8bd4:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8bfc <g_pcHex>:
c0de8bfc:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8c0c <g_pcHex_cap>:
c0de8c0c:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8c1c <_etext>:
	...

c0de8e00 <N_storage_real>:
	...

c0de9000 <install_parameters>:
c0de9000:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9010:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9020:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9030:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
