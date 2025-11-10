
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 ff2b 	bl	c0de6e60 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fcb7 	bl	c0de6988 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fc7e 	bl	c0de691c <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fc6f 	bl	c0de6906 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fbc7 	bl	c0de77c8 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fea9 	bl	c0de6d94 <assert_exit>
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
c0de0056:	f006 fe5d 	bl	c0de6d14 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fba4 	bl	c0de77b4 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 fe8b 	bl	c0de6d94 <assert_exit>
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
c0de0146:	f001 f8c5 	bl	c0de12d4 <handler_get_insecure_public>
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
c0de02e2:	f001 f82f 	bl	c0de1344 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
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
c0de0328:	f006 fa94 	bl	c0de6854 <io_send_response_buffers>
c0de032c:	bd80      	pop	{r7, pc}

c0de032e <OUTLINED_FUNCTION_0>:
c0de032e:	9001      	str	r0, [sp, #4]
c0de0330:	7920      	ldrb	r0, [r4, #4]
c0de0332:	9002      	str	r0, [sp, #8]
c0de0334:	4770      	bx	lr
	...

c0de0338 <app_main>:
c0de0338:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de033a:	f006 fa6d 	bl	c0de6818 <io_init>
c0de033e:	481e      	ldr	r0, [pc, #120]	@ (c0de03b8 <app_main+0x80>)
c0de0340:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0344:	b908      	cbnz	r0, c0de034a <app_main+0x12>
c0de0346:	f001 fab7 	bl	c0de18b8 <ui_menu_main>
c0de034a:	481c      	ldr	r0, [pc, #112]	@ (c0de03bc <app_main+0x84>)
c0de034c:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0350:	4448      	add	r0, r9
c0de0352:	f007 fa47 	bl	c0de77e4 <explicit_bzero>
c0de0356:	481b      	ldr	r0, [pc, #108]	@ (c0de03c4 <app_main+0x8c>)
c0de0358:	4478      	add	r0, pc
c0de035a:	f006 ff29 	bl	c0de71b0 <pic>
c0de035e:	7880      	ldrb	r0, [r0, #2]
c0de0360:	2801      	cmp	r0, #1
c0de0362:	d00d      	beq.n	c0de0380 <app_main+0x48>
c0de0364:	2001      	movs	r0, #1
c0de0366:	f88d 0002 	strb.w	r0, [sp, #2]
c0de036a:	2000      	movs	r0, #0
c0de036c:	f8ad 0000 	strh.w	r0, [sp]
c0de0370:	4815      	ldr	r0, [pc, #84]	@ (c0de03c8 <app_main+0x90>)
c0de0372:	4478      	add	r0, pc
c0de0374:	f006 ff1c 	bl	c0de71b0 <pic>
c0de0378:	4669      	mov	r1, sp
c0de037a:	2203      	movs	r2, #3
c0de037c:	f006 ff48 	bl	c0de7210 <nvm_write>
c0de0380:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03c0 <app_main+0x88>)
c0de0382:	ac01      	add	r4, sp, #4
c0de0384:	f006 fa50 	bl	c0de6828 <io_recv_command>
c0de0388:	2800      	cmp	r0, #0
c0de038a:	d414      	bmi.n	c0de03b6 <app_main+0x7e>
c0de038c:	4602      	mov	r2, r0
c0de038e:	eb09 0105 	add.w	r1, r9, r5
c0de0392:	4620      	mov	r0, r4
c0de0394:	f006 fb48 	bl	c0de6a28 <apdu_parser>
c0de0398:	b130      	cbz	r0, c0de03a8 <app_main+0x70>
c0de039a:	4620      	mov	r0, r4
c0de039c:	f7ff fe69 	bl	c0de0072 <apdu_dispatcher>
c0de03a0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03a4:	dcee      	bgt.n	c0de0384 <app_main+0x4c>
c0de03a6:	e006      	b.n	c0de03b6 <app_main+0x7e>
c0de03a8:	2000      	movs	r0, #0
c0de03aa:	2100      	movs	r1, #0
c0de03ac:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03b0:	f006 fa50 	bl	c0de6854 <io_send_response_buffers>
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
c0de03d2:	f006 feed 	bl	c0de71b0 <pic>
c0de03d6:	2100      	movs	r1, #0
c0de03d8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03dc:	9103      	str	r1, [sp, #12]
c0de03de:	2107      	movs	r1, #7
c0de03e0:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de03e4:	a801      	add	r0, sp, #4
c0de03e6:	2101      	movs	r1, #1
c0de03e8:	f006 fa34 	bl	c0de6854 <io_send_response_buffers>
c0de03ec:	b004      	add	sp, #16
c0de03ee:	bd80      	pop	{r7, pc}
c0de03f0:	000079f0 	.word	0x000079f0

c0de03f4 <handler_get_public_key>:
c0de03f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de03f6:	b085      	sub	sp, #20
c0de03f8:	4f23      	ldr	r7, [pc, #140]	@ (c0de0488 <handler_get_public_key+0x94>)
c0de03fa:	460c      	mov	r4, r1
c0de03fc:	4605      	mov	r5, r0
c0de03fe:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0402:	eb09 0607 	add.w	r6, r9, r7
c0de0406:	4630      	mov	r0, r6
c0de0408:	f007 f9ec 	bl	c0de77e4 <explicit_bzero>
c0de040c:	2000      	movs	r0, #0
c0de040e:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de0412:	f809 0007 	strb.w	r0, [r9, r7]
c0de0416:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de041a:	4628      	mov	r0, r5
c0de041c:	f005 ffc8 	bl	c0de63b0 <buffer_read_u8>
c0de0420:	b308      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0422:	eb09 0007 	add.w	r0, r9, r7
c0de0426:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de042a:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de042e:	4628      	mov	r0, r5
c0de0430:	f006 f811 	bl	c0de6456 <buffer_read_bip32_path>
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
c0de045c:	f006 f8bc 	bl	c0de65d8 <bip32_derive_with_seed_get_pubkey_256>
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
c0de047e:	f000 bfe5 	beq.w	c0de144c <helper_send_response_pubkey>
c0de0482:	f001 bafd 	b.w	c0de1a80 <ui_display_address>
c0de0486:	bf00      	nop
c0de0488:	00000000 	.word	0x00000000

c0de048c <io_send_sw>:
c0de048c:	b580      	push	{r7, lr}
c0de048e:	4602      	mov	r2, r0
c0de0490:	2000      	movs	r0, #0
c0de0492:	2100      	movs	r1, #0
c0de0494:	f006 f9de 	bl	c0de6854 <io_send_response_buffers>
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
c0de04c0:	f006 f9c8 	bl	c0de6854 <io_send_response_buffers>
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
c0de0502:	f007 f96f 	bl	c0de77e4 <explicit_bzero>
c0de0506:	2000      	movs	r0, #0
c0de0508:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de050c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0510:	2001      	movs	r0, #1
c0de0512:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de0516:	4620      	mov	r0, r4
c0de0518:	f005 ff4a 	bl	c0de63b0 <buffer_read_u8>
c0de051c:	b148      	cbz	r0, c0de0532 <handler_sign_tx+0x6a>
c0de051e:	eb09 0006 	add.w	r0, r9, r6
c0de0522:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0526:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de052a:	4620      	mov	r0, r4
c0de052c:	f005 ff93 	bl	c0de6456 <buffer_read_bip32_path>
c0de0530:	b9b8      	cbnz	r0, c0de0562 <handler_sign_tx+0x9a>
c0de0532:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0536:	e019      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de0538:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de053c:	e016      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de053e:	eb09 0106 	add.w	r1, r9, r6
c0de0542:	4408      	add	r0, r1
c0de0544:	f100 0108 	add.w	r1, r0, #8
c0de0548:	4620      	mov	r0, r4
c0de054a:	f005 ffae 	bl	c0de64aa <buffer_move>
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
c0de058c:	f001 f8b4 	bl	c0de16f8 <transaction_deserialize>
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
c0de05b2:	f006 fbaf 	bl	c0de6d14 <cx_keccak_256_hash_iovec>
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
c0de05ec:	f001 f844 	bl	c0de1678 <swap_check_validity>
c0de05f0:	b110      	cbz	r0, c0de05f8 <handler_sign_tx+0x130>
c0de05f2:	2001      	movs	r0, #1
c0de05f4:	f001 f90a 	bl	c0de180c <validate_transaction>
c0de05f8:	2000      	movs	r0, #0
c0de05fa:	e7e4      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de05fc:	eb09 0006 	add.w	r0, r9, r6
c0de0600:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0604:	4909      	ldr	r1, [pc, #36]	@ (c0de062c <handler_sign_tx+0x164>)
c0de0606:	4479      	add	r1, pc
c0de0608:	f007 f930 	bl	c0de786c <strcmp>
c0de060c:	b110      	cbz	r0, c0de0614 <handler_sign_tx+0x14c>
c0de060e:	f001 fb58 	bl	c0de1cc2 <ui_display_transaction>
c0de0612:	e7d8      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de0614:	f001 fb52 	bl	c0de1cbc <ui_display_blind_signed_transaction>
c0de0618:	e7d5      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de061a:	20ff      	movs	r0, #255	@ 0xff
c0de061c:	f006 ff8e 	bl	c0de753c <os_sched_exit>
c0de0620:	00000000 	.word	0x00000000
c0de0624:	000008cc 	.word	0x000008cc
c0de0628:	000008cd 	.word	0x000008cd
c0de062c:	000074d3 	.word	0x000074d3

c0de0630 <io_send_sw>:
c0de0630:	b580      	push	{r7, lr}
c0de0632:	4602      	mov	r2, r0
c0de0634:	2000      	movs	r0, #0
c0de0636:	2100      	movs	r1, #0
c0de0638:	f006 f90c 	bl	c0de6854 <io_send_response_buffers>
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
c0de0650:	f001 fb3a 	bl	c0de1cc8 <zkn_prv_hash>
c0de0654:	b988      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de0656:	a840      	add	r0, sp, #256	@ 0x100
c0de0658:	2140      	movs	r1, #64	@ 0x40
c0de065a:	f000 f817 	bl	c0de068c <io_send_response_pointer>
c0de065e:	2000      	movs	r0, #0
c0de0660:	e00d      	b.n	c0de067e <handler_cmd_blake2b512+0x40>
c0de0662:	4668      	mov	r0, sp
c0de0664:	2109      	movs	r1, #9
c0de0666:	2240      	movs	r2, #64	@ 0x40
c0de0668:	f006 fb82 	bl	c0de6d70 <cx_hash_init_ex>
c0de066c:	b928      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de066e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0672:	4668      	mov	r0, sp
c0de0674:	f006 fb81 	bl	c0de6d7a <cx_hash_update>
c0de0678:	b118      	cbz	r0, c0de0682 <handler_cmd_blake2b512+0x44>
c0de067a:	f000 feb5 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de067e:	b050      	add	sp, #320	@ 0x140
c0de0680:	bd10      	pop	{r4, pc}
c0de0682:	4668      	mov	r0, sp
c0de0684:	a940      	add	r1, sp, #256	@ 0x100
c0de0686:	f006 fb6e 	bl	c0de6d66 <cx_hash_final>
c0de068a:	e7e3      	b.n	c0de0654 <handler_cmd_blake2b512+0x16>

c0de068c <io_send_response_pointer>:
c0de068c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de068e:	2200      	movs	r2, #0
c0de0690:	ab01      	add	r3, sp, #4
c0de0692:	c307      	stmia	r3!, {r0, r1, r2}
c0de0694:	a801      	add	r0, sp, #4
c0de0696:	2101      	movs	r1, #1
c0de0698:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de069c:	f006 f8da 	bl	c0de6854 <io_send_response_buffers>
c0de06a0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06a2 <io_send_sw>:
c0de06a2:	b580      	push	{r7, lr}
c0de06a4:	4602      	mov	r2, r0
c0de06a6:	2000      	movs	r0, #0
c0de06a8:	2100      	movs	r1, #0
c0de06aa:	f006 f8d3 	bl	c0de6854 <io_send_response_buffers>
c0de06ae:	bd80      	pop	{r7, pc}

c0de06b0 <handler_cmd_keccakH>:
c0de06b0:	b510      	push	{r4, lr}
c0de06b2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06b4:	4604      	mov	r4, r0
c0de06b6:	4668      	mov	r0, sp
c0de06b8:	2106      	movs	r1, #6
c0de06ba:	2220      	movs	r2, #32
c0de06bc:	f006 fb58 	bl	c0de6d70 <cx_hash_init_ex>
c0de06c0:	b950      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06c2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06c6:	4668      	mov	r0, sp
c0de06c8:	f006 fb57 	bl	c0de6d7a <cx_hash_update>
c0de06cc:	b920      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06ce:	4668      	mov	r0, sp
c0de06d0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06d2:	f006 fb48 	bl	c0de6d66 <cx_hash_final>
c0de06d6:	b118      	cbz	r0, c0de06e0 <handler_cmd_keccakH+0x30>
c0de06d8:	f000 fe86 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de06dc:	b072      	add	sp, #456	@ 0x1c8
c0de06de:	bd10      	pop	{r4, pc}
c0de06e0:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de06e2:	f000 feb0 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de06e6:	2000      	movs	r0, #0
c0de06e8:	e7f8      	b.n	c0de06dc <handler_cmd_keccakH+0x2c>
	...

c0de06ec <handler_cmd_bolos_stretch>:
c0de06ec:	b510      	push	{r4, lr}
c0de06ee:	b0a4      	sub	sp, #144	@ 0x90
c0de06f0:	f000 fe76 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de06f4:	bba0      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de06f6:	ac14      	add	r4, sp, #80	@ 0x50
c0de06f8:	491e      	ldr	r1, [pc, #120]	@ (c0de0774 <handler_cmd_bolos_stretch+0x88>)
c0de06fa:	2220      	movs	r2, #32
c0de06fc:	4620      	mov	r0, r4
c0de06fe:	4479      	add	r1, pc
c0de0700:	f007 f858 	bl	c0de77b4 <__aeabi_memcpy>
c0de0704:	a80c      	add	r0, sp, #48	@ 0x30
c0de0706:	491c      	ldr	r1, [pc, #112]	@ (c0de0778 <handler_cmd_bolos_stretch+0x8c>)
c0de0708:	2220      	movs	r2, #32
c0de070a:	4479      	add	r1, pc
c0de070c:	f007 f852 	bl	c0de77b4 <__aeabi_memcpy>
c0de0710:	a804      	add	r0, sp, #16
c0de0712:	491a      	ldr	r1, [pc, #104]	@ (c0de077c <handler_cmd_bolos_stretch+0x90>)
c0de0714:	2220      	movs	r2, #32
c0de0716:	4479      	add	r1, pc
c0de0718:	f007 f84c 	bl	c0de77b4 <__aeabi_memcpy>
c0de071c:	a803      	add	r0, sp, #12
c0de071e:	2120      	movs	r1, #32
c0de0720:	4622      	mov	r2, r4
c0de0722:	f000 fe75 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de0726:	b9d8      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0728:	a802      	add	r0, sp, #8
c0de072a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de072c:	2120      	movs	r1, #32
c0de072e:	f000 fe6f 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de0732:	b9a8      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0734:	a801      	add	r0, sp, #4
c0de0736:	aa04      	add	r2, sp, #16
c0de0738:	2120      	movs	r1, #32
c0de073a:	f000 fe69 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de073e:	b978      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0740:	4668      	mov	r0, sp
c0de0742:	f000 fe57 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de0746:	b958      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0748:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de074c:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0750:	f006 fdf4 	bl	c0de733c <cx_bn_mod_add>
c0de0754:	b920      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0756:	9800      	ldr	r0, [sp, #0]
c0de0758:	a91c      	add	r1, sp, #112	@ 0x70
c0de075a:	f000 fe48 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de075e:	b118      	cbz	r0, c0de0768 <handler_cmd_bolos_stretch+0x7c>
c0de0760:	f000 fe42 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de0764:	b024      	add	sp, #144	@ 0x90
c0de0766:	bd10      	pop	{r4, pc}
c0de0768:	a81c      	add	r0, sp, #112	@ 0x70
c0de076a:	f000 fe6c 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de076e:	2000      	movs	r0, #0
c0de0770:	e7f8      	b.n	c0de0764 <handler_cmd_bolos_stretch+0x78>
c0de0772:	bf00      	nop
c0de0774:	000077ce 	.word	0x000077ce
c0de0778:	00007742 	.word	0x00007742
c0de077c:	00007856 	.word	0x00007856

c0de0780 <handler_cmd_Poseidon>:
c0de0780:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0784:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0788:	4604      	mov	r4, r0
c0de078a:	a860      	add	r0, sp, #384	@ 0x180
c0de078c:	493d      	ldr	r1, [pc, #244]	@ (c0de0884 <handler_cmd_Poseidon+0x104>)
c0de078e:	22a0      	movs	r2, #160	@ 0xa0
c0de0790:	4479      	add	r1, pc
c0de0792:	f007 f80f 	bl	c0de77b4 <__aeabi_memcpy>
c0de0796:	f000 fe23 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
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
c0de07b6:	f006 fffd 	bl	c0de77b4 <__aeabi_memcpy>
c0de07ba:	a809      	add	r0, sp, #36	@ 0x24
c0de07bc:	2120      	movs	r1, #32
c0de07be:	462a      	mov	r2, r5
c0de07c0:	f000 fe26 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de07c4:	b9c0      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07c6:	a808      	add	r0, sp, #32
c0de07c8:	466a      	mov	r2, sp
c0de07ca:	2120      	movs	r1, #32
c0de07cc:	f000 fe20 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de07d0:	b990      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07d2:	a80a      	add	r0, sp, #40	@ 0x28
c0de07d4:	2120      	movs	r1, #32
c0de07d6:	f006 fdf7 	bl	c0de73c8 <cx_mont_alloc>
c0de07da:	b968      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07dc:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07de:	a80a      	add	r0, sp, #40	@ 0x28
c0de07e0:	f006 fdfc 	bl	c0de73dc <cx_mont_init>
c0de07e4:	b940      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07e6:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de07ea:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07ec:	2105      	movs	r1, #5
c0de07ee:	2205      	movs	r2, #5
c0de07f0:	4640      	mov	r0, r8
c0de07f2:	f002 fbad 	bl	c0de2f50 <Poseidon_alloc_init>
c0de07f6:	b128      	cbz	r0, c0de0804 <handler_cmd_Poseidon+0x84>
c0de07f8:	f000 fdf6 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
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
c0de0818:	f006 fd40 	bl	c0de729c <cx_bn_init>
c0de081c:	2800      	cmp	r0, #0
c0de081e:	d1eb      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0820:	69e8      	ldr	r0, [r5, #28]
c0de0822:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0824:	4601      	mov	r1, r0
c0de0826:	f006 fde3 	bl	c0de73f0 <cx_mont_to_montgomery>
c0de082a:	3701      	adds	r7, #1
c0de082c:	3620      	adds	r6, #32
c0de082e:	2800      	cmp	r0, #0
c0de0830:	d0ea      	beq.n	c0de0808 <handler_cmd_Poseidon+0x88>
c0de0832:	e7e1      	b.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0834:	aa08      	add	r2, sp, #32
c0de0836:	4640      	mov	r0, r8
c0de0838:	2100      	movs	r1, #0
c0de083a:	2301      	movs	r3, #1
c0de083c:	f002 fbee 	bl	c0de301c <Poseidon>
c0de0840:	6820      	ldr	r0, [r4, #0]
c0de0842:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0844:	7800      	ldrb	r0, [r0, #0]
c0de0846:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de084a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de084e:	4601      	mov	r1, r0
c0de0850:	f006 fdda 	bl	c0de7408 <cx_mont_from_montgomery>
c0de0854:	2800      	cmp	r0, #0
c0de0856:	d1cf      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0858:	6820      	ldr	r0, [r4, #0]
c0de085a:	a948      	add	r1, sp, #288	@ 0x120
c0de085c:	f000 fdc7 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0860:	2800      	cmp	r0, #0
c0de0862:	d1c9      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0864:	a848      	add	r0, sp, #288	@ 0x120
c0de0866:	2160      	movs	r1, #96	@ 0x60
c0de0868:	f7ff ff10 	bl	c0de068c <io_send_response_pointer>
c0de086c:	a808      	add	r0, sp, #32
c0de086e:	f006 fd01 	bl	c0de7274 <cx_bn_destroy>
c0de0872:	2800      	cmp	r0, #0
c0de0874:	d1c0      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0876:	f006 fcdf 	bl	c0de7238 <cx_bn_unlock>
c0de087a:	2800      	cmp	r0, #0
c0de087c:	d1bc      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de087e:	2000      	movs	r0, #0
c0de0880:	e7bc      	b.n	c0de07fc <handler_cmd_Poseidon+0x7c>
c0de0882:	bf00      	nop
c0de0884:	000078bc 	.word	0x000078bc
c0de0888:	00007818 	.word	0x00007818

c0de088c <handler_cmd_Poseidon_ithRC>:
c0de088c:	b570      	push	{r4, r5, r6, lr}
c0de088e:	b0d0      	sub	sp, #320	@ 0x140
c0de0890:	4604      	mov	r4, r0
c0de0892:	f000 fda5 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de0896:	bba0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de0898:	a848      	add	r0, sp, #288	@ 0x120
c0de089a:	491d      	ldr	r1, [pc, #116]	@ (c0de0910 <handler_cmd_Poseidon_ithRC+0x84>)
c0de089c:	2220      	movs	r2, #32
c0de089e:	4479      	add	r1, pc
c0de08a0:	f006 ff88 	bl	c0de77b4 <__aeabi_memcpy>
c0de08a4:	ad01      	add	r5, sp, #4
c0de08a6:	491b      	ldr	r1, [pc, #108]	@ (c0de0914 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08a8:	2220      	movs	r2, #32
c0de08aa:	4628      	mov	r0, r5
c0de08ac:	4479      	add	r1, pc
c0de08ae:	f006 ff81 	bl	c0de77b4 <__aeabi_memcpy>
c0de08b2:	a809      	add	r0, sp, #36	@ 0x24
c0de08b4:	2120      	movs	r1, #32
c0de08b6:	462a      	mov	r2, r5
c0de08b8:	f000 fdaa 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de08bc:	bb08      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08be:	a80a      	add	r0, sp, #40	@ 0x28
c0de08c0:	2120      	movs	r1, #32
c0de08c2:	f006 fd81 	bl	c0de73c8 <cx_mont_alloc>
c0de08c6:	b9e0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08c8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08ca:	a80a      	add	r0, sp, #40	@ 0x28
c0de08cc:	f006 fd86 	bl	c0de73dc <cx_mont_init>
c0de08d0:	b9b8      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08d2:	a80c      	add	r0, sp, #48	@ 0x30
c0de08d4:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08d6:	2105      	movs	r1, #5
c0de08d8:	2205      	movs	r2, #5
c0de08da:	f002 fb39 	bl	c0de2f50 <Poseidon_alloc_init>
c0de08de:	b980      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08e0:	6820      	ldr	r0, [r4, #0]
c0de08e2:	7806      	ldrb	r6, [r0, #0]
c0de08e4:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08e6:	ad48      	add	r5, sp, #288	@ 0x120
c0de08e8:	b12e      	cbz	r6, c0de08f6 <handler_cmd_Poseidon_ithRC+0x6a>
c0de08ea:	4620      	mov	r0, r4
c0de08ec:	4629      	mov	r1, r5
c0de08ee:	f002 fb2b 	bl	c0de2f48 <Poseidon_getNext_RC>
c0de08f2:	3e01      	subs	r6, #1
c0de08f4:	e7f8      	b.n	c0de08e8 <handler_cmd_Poseidon_ithRC+0x5c>
c0de08f6:	a848      	add	r0, sp, #288	@ 0x120
c0de08f8:	f000 fda5 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de08fc:	f006 fc9c 	bl	c0de7238 <cx_bn_unlock>
c0de0900:	b118      	cbz	r0, c0de090a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0902:	f000 fd71 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de0906:	b050      	add	sp, #320	@ 0x140
c0de0908:	bd70      	pop	{r4, r5, r6, pc}
c0de090a:	2000      	movs	r0, #0
c0de090c:	e7fb      	b.n	c0de0906 <handler_cmd_Poseidon_ithRC+0x7a>
c0de090e:	bf00      	nop
c0de0910:	0000758e 	.word	0x0000758e
c0de0914:	00007720 	.word	0x00007720

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
c0de094a:	f000 fd49 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de094e:	b9e8      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0950:	a804      	add	r0, sp, #16
c0de0952:	f000 fd75 	bl	c0de1440 <OUTLINED_FUNCTION_11>
c0de0956:	b9c8      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0958:	a804      	add	r0, sp, #16
c0de095a:	a901      	add	r1, sp, #4
c0de095c:	f001 fddc 	bl	c0de2518 <tEdwards_alloc>
c0de0960:	b9a0      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0962:	a804      	add	r0, sp, #16
c0de0964:	a91a      	add	r1, sp, #104	@ 0x68
c0de0966:	aa01      	add	r2, sp, #4
c0de0968:	f001 f9e4 	bl	c0de1d34 <zkn_prv2pub>
c0de096c:	b970      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de096e:	a804      	add	r0, sp, #16
c0de0970:	f104 0320 	add.w	r3, r4, #32
c0de0974:	a901      	add	r1, sp, #4
c0de0976:	f000 fd4e 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de097a:	b938      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de097c:	9804      	ldr	r0, [sp, #16]
c0de097e:	0041      	lsls	r1, r0, #1
c0de0980:	a85a      	add	r0, sp, #360	@ 0x168
c0de0982:	f7ff fe83 	bl	c0de068c <io_send_response_pointer>
c0de0986:	f006 fc57 	bl	c0de7238 <cx_bn_unlock>
c0de098a:	b120      	cbz	r0, c0de0996 <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de098c:	f000 fd2c 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
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
c0de09ce:	f000 fd07 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
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
c0de09f2:	f000 fd25 	bl	c0de1440 <OUTLINED_FUNCTION_11>
c0de09f6:	bb10      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09f8:	a815      	add	r0, sp, #84	@ 0x54
c0de09fa:	a912      	add	r1, sp, #72	@ 0x48
c0de09fc:	f001 fd8c 	bl	c0de2518 <tEdwards_alloc>
c0de0a00:	b9e8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a02:	a815      	add	r0, sp, #84	@ 0x54
c0de0a04:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a06:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a08:	f001 f994 	bl	c0de1d34 <zkn_prv2pub>
c0de0a0c:	b9b8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a0e:	a815      	add	r0, sp, #84	@ 0x54
c0de0a10:	f104 0320 	add.w	r3, r4, #32
c0de0a14:	a912      	add	r1, sp, #72	@ 0x48
c0de0a16:	f000 fcfe 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de0a1a:	b980      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a1c:	2020      	movs	r0, #32
c0de0a1e:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a22:	a815      	add	r0, sp, #84	@ 0x54
c0de0a24:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a26:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a28:	ab02      	add	r3, sp, #8
c0de0a2a:	f001 f9ab 	bl	c0de1d84 <EddsaPoseidon_Sign_final>
c0de0a2e:	b930      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a30:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a32:	2160      	movs	r1, #96	@ 0x60
c0de0a34:	f7ff fe2a 	bl	c0de068c <io_send_response_pointer>
c0de0a38:	f006 fbfe 	bl	c0de7238 <cx_bn_unlock>
c0de0a3c:	b120      	cbz	r0, c0de0a48 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a3e:	f000 fcd3 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
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
c0de0a6c:	f000 fcb8 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de0a70:	2800      	cmp	r0, #0
c0de0a72:	d154      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a74:	af14      	add	r7, sp, #80	@ 0x50
c0de0a76:	4631      	mov	r1, r6
c0de0a78:	4638      	mov	r0, r7
c0de0a7a:	f001 fecd 	bl	c0de2818 <tEdwards_Curve_alloc_init>
c0de0a7e:	2800      	cmp	r0, #0
c0de0a80:	d14d      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a82:	f107 060c 	add.w	r6, r7, #12
c0de0a86:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a8a:	4638      	mov	r0, r7
c0de0a8c:	4631      	mov	r1, r6
c0de0a8e:	f001 fe6c 	bl	c0de276a <tEdwards_IsOnCurve>
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
c0de0aae:	f006 fe81 	bl	c0de77b4 <__aeabi_memcpy>
c0de0ab2:	af01      	add	r7, sp, #4
c0de0ab4:	491e      	ldr	r1, [pc, #120]	@ (c0de0b30 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ab6:	2220      	movs	r2, #32
c0de0ab8:	4638      	mov	r0, r7
c0de0aba:	4479      	add	r1, pc
c0de0abc:	f006 fe7a 	bl	c0de77b4 <__aeabi_memcpy>
c0de0ac0:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0ac4:	a814      	add	r0, sp, #80	@ 0x50
c0de0ac6:	4651      	mov	r1, sl
c0de0ac8:	463a      	mov	r2, r7
c0de0aca:	4643      	mov	r3, r8
c0de0acc:	f002 f895 	bl	c0de2bfa <tEdwards_alloc_init>
c0de0ad0:	bb28      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad2:	a814      	add	r0, sp, #80	@ 0x50
c0de0ad4:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0ad8:	4631      	mov	r1, r6
c0de0ada:	f001 fe46 	bl	c0de276a <tEdwards_IsOnCurve>
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
c0de0afc:	f002 f902 	bl	c0de2d04 <tEdwards_scalarMul>
c0de0b00:	b968      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b02:	a814      	add	r0, sp, #80	@ 0x50
c0de0b04:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b08:	a911      	add	r1, sp, #68	@ 0x44
c0de0b0a:	f000 fc84 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de0b0e:	b930      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b10:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b14:	f000 fc78 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de0b18:	f006 fb8e 	bl	c0de7238 <cx_bn_unlock>
c0de0b1c:	b120      	cbz	r0, c0de0b28 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b1e:	f000 fc63 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de0b22:	b06b      	add	sp, #428	@ 0x1ac
c0de0b24:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b28:	2000      	movs	r0, #0
c0de0b2a:	e7fa      	b.n	c0de0b22 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b2c:	00007540 	.word	0x00007540
c0de0b30:	00007552 	.word	0x00007552

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
c0de0b60:	f000 fc3e 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de0b64:	b920      	cbnz	r0, c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0b66:	a819      	add	r0, sp, #100	@ 0x64
c0de0b68:	4631      	mov	r1, r6
c0de0b6a:	f001 fe55 	bl	c0de2818 <tEdwards_Curve_alloc_init>
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
c0de0b8c:	f006 fe12 	bl	c0de77b4 <__aeabi_memcpy>
c0de0b90:	af03      	add	r7, sp, #12
c0de0b92:	4940      	ldr	r1, [pc, #256]	@ (c0de0c94 <handler_cmd_tEdwards+0x160>)
c0de0b94:	4479      	add	r1, pc
c0de0b96:	e009      	b.n	c0de0bac <handler_cmd_tEdwards+0x78>
c0de0b98:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b9a:	493f      	ldr	r1, [pc, #252]	@ (c0de0c98 <handler_cmd_tEdwards+0x164>)
c0de0b9c:	2220      	movs	r2, #32
c0de0b9e:	4630      	mov	r0, r6
c0de0ba0:	4479      	add	r1, pc
c0de0ba2:	f006 fe07 	bl	c0de77b4 <__aeabi_memcpy>
c0de0ba6:	af03      	add	r7, sp, #12
c0de0ba8:	493c      	ldr	r1, [pc, #240]	@ (c0de0c9c <handler_cmd_tEdwards+0x168>)
c0de0baa:	4479      	add	r1, pc
c0de0bac:	4638      	mov	r0, r7
c0de0bae:	2220      	movs	r2, #32
c0de0bb0:	f006 fe00 	bl	c0de77b4 <__aeabi_memcpy>
c0de0bb4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bb6:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bb8:	4631      	mov	r1, r6
c0de0bba:	463a      	mov	r2, r7
c0de0bbc:	f002 f81d 	bl	c0de2bfa <tEdwards_alloc_init>
c0de0bc0:	2800      	cmp	r0, #0
c0de0bc2:	d1d5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bc4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bc8:	aa03      	add	r2, sp, #12
c0de0bca:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bcc:	f002 f815 	bl	c0de2bfa <tEdwards_alloc_init>
c0de0bd0:	2800      	cmp	r0, #0
c0de0bd2:	d1cd      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bd4:	2000      	movs	r0, #0
c0de0bd6:	f10d 020b 	add.w	r2, sp, #11
c0de0bda:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bde:	a819      	add	r0, sp, #100	@ 0x64
c0de0be0:	a916      	add	r1, sp, #88	@ 0x58
c0de0be2:	f001 fdc2 	bl	c0de276a <tEdwards_IsOnCurve>
c0de0be6:	2800      	cmp	r0, #0
c0de0be8:	d1c2      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bea:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bee:	2801      	cmp	r0, #1
c0de0bf0:	d142      	bne.n	c0de0c78 <handler_cmd_tEdwards+0x144>
c0de0bf2:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf4:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0bf6:	f10d 020b 	add.w	r2, sp, #11
c0de0bfa:	4631      	mov	r1, r6
c0de0bfc:	f001 fdb5 	bl	c0de276a <tEdwards_IsOnCurve>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d1b5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c04:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c08:	2801      	cmp	r0, #1
c0de0c0a:	d138      	bne.n	c0de0c7e <handler_cmd_tEdwards+0x14a>
c0de0c0c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c0e:	f10d 010b 	add.w	r1, sp, #11
c0de0c12:	f006 fbcf 	bl	c0de73b4 <cx_bn_is_prime>
c0de0c16:	2800      	cmp	r0, #0
c0de0c18:	d1aa      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c1a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1e:	2801      	cmp	r0, #1
c0de0c20:	d130      	bne.n	c0de0c84 <handler_cmd_tEdwards+0x150>
c0de0c22:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c24:	f10d 010b 	add.w	r1, sp, #11
c0de0c28:	f006 fbc4 	bl	c0de73b4 <cx_bn_is_prime>
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
c0de0c46:	f002 f85d 	bl	c0de2d04 <tEdwards_scalarMul>
c0de0c4a:	2800      	cmp	r0, #0
c0de0c4c:	d190      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c4e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c50:	f104 0320 	add.w	r3, r4, #32
c0de0c54:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c56:	f000 fbde 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de0c5a:	2800      	cmp	r0, #0
c0de0c5c:	f47f af88 	bne.w	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c60:	f006 faea 	bl	c0de7238 <cx_bn_unlock>
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
c0de0c90:	000072e2 	.word	0x000072e2
c0de0c94:	00007358 	.word	0x00007358
c0de0c98:	000072ec 	.word	0x000072ec
c0de0c9c:	00007262 	.word	0x00007262

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
c0de0cc0:	f000 fb8e 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de0cc4:	bb28      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cc6:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0cca:	4621      	mov	r1, r4
c0de0ccc:	4640      	mov	r0, r8
c0de0cce:	f001 fda3 	bl	c0de2818 <tEdwards_Curve_alloc_init>
c0de0cd2:	b9f0      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cd4:	a827      	add	r0, sp, #156	@ 0x9c
c0de0cd6:	f000 fb8d 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
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
c0de0d06:	f006 faa9 	bl	c0de725c <cx_bn_alloc_init>
c0de0d0a:	2800      	cmp	r0, #0
c0de0d0c:	462a      	mov	r2, r5
c0de0d0e:	4621      	mov	r1, r4
c0de0d10:	d0f1      	beq.n	c0de0cf6 <handler_cmd_Interpolate+0x56>
c0de0d12:	f000 fb69 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
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
c0de0d40:	f006 fa82 	bl	c0de7248 <cx_bn_alloc>
c0de0d44:	2800      	cmp	r0, #0
c0de0d46:	d1e4      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d48:	6820      	ldr	r0, [r4, #0]
c0de0d4a:	4631      	mov	r1, r6
c0de0d4c:	f006 fabc 	bl	c0de72c8 <cx_bn_set_u32>
c0de0d50:	2800      	cmp	r0, #0
c0de0d52:	d1de      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d54:	4640      	mov	r0, r8
c0de0d56:	4659      	mov	r1, fp
c0de0d58:	f001 fbde 	bl	c0de2518 <tEdwards_alloc>
c0de0d5c:	2800      	cmp	r0, #0
c0de0d5e:	d1d8      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d60:	9602      	str	r6, [sp, #8]
c0de0d62:	eb07 060a 	add.w	r6, r7, sl
c0de0d66:	9901      	ldr	r1, [sp, #4]
c0de0d68:	4640      	mov	r0, r8
c0de0d6a:	465b      	mov	r3, fp
c0de0d6c:	4632      	mov	r2, r6
c0de0d6e:	f001 ff63 	bl	c0de2c38 <tEdwards_scalarMul_bn>
c0de0d72:	2800      	cmp	r0, #0
c0de0d74:	d1cd      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d76:	6820      	ldr	r0, [r4, #0]
c0de0d78:	4629      	mov	r1, r5
c0de0d7a:	f000 fb38 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0d7e:	2800      	cmp	r0, #0
c0de0d80:	d1c7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d82:	6830      	ldr	r0, [r6, #0]
c0de0d84:	f105 0120 	add.w	r1, r5, #32
c0de0d88:	f000 fb31 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0d8c:	2800      	cmp	r0, #0
c0de0d8e:	d1c0      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d90:	4640      	mov	r0, r8
c0de0d92:	4659      	mov	r1, fp
c0de0d94:	f001 fef1 	bl	c0de2b7a <tEdwards_normalize>
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
c0de0dba:	f001 f9aa 	bl	c0de2112 <zkn_frost_interpolate_secrets>
c0de0dbe:	2800      	cmp	r0, #0
c0de0dc0:	d1a7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dc2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dc4:	a944      	add	r1, sp, #272	@ 0x110
c0de0dc6:	2220      	movs	r2, #32
c0de0dc8:	31c0      	adds	r1, #192	@ 0xc0
c0de0dca:	f006 fa87 	bl	c0de72dc <cx_bn_export>
c0de0dce:	2800      	cmp	r0, #0
c0de0dd0:	d19f      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dd2:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dd4:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dd6:	ab03      	add	r3, sp, #12
c0de0dd8:	9901      	ldr	r1, [sp, #4]
c0de0dda:	f001 ff2d 	bl	c0de2c38 <tEdwards_scalarMul_bn>
c0de0dde:	2800      	cmp	r0, #0
c0de0de0:	d197      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0de2:	a844      	add	r0, sp, #272	@ 0x110
c0de0de4:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0de8:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dea:	a903      	add	r1, sp, #12
c0de0dec:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0dee:	f001 fe9e 	bl	c0de2b2e <tEdwards_export>
c0de0df2:	2800      	cmp	r0, #0
c0de0df4:	d18d      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0df6:	a844      	add	r0, sp, #272	@ 0x110
c0de0df8:	f000 fb06 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de0dfc:	f006 fa1c 	bl	c0de7238 <cx_bn_unlock>
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
c0de0e2a:	f000 fad9 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de0e2e:	bb90      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e30:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e32:	f000 fb05 	bl	c0de1440 <OUTLINED_FUNCTION_11>
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
c0de0e5c:	f005 ff67 	bl	c0de6d2e <cx_blake2b_512_hash_iovec>
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
c0de0e78:	f006 f9f0 	bl	c0de725c <cx_bn_alloc_init>
c0de0e7c:	2800      	cmp	r0, #0
c0de0e7e:	4632      	mov	r2, r6
c0de0e80:	4629      	mov	r1, r5
c0de0e82:	d0f1      	beq.n	c0de0e68 <handler_cmd_Split+0x5e>
c0de0e84:	e007      	b.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0e86:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e88:	f000 fab4 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de0e8c:	b918      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e8e:	a809      	add	r0, sp, #36	@ 0x24
c0de0e90:	f000 fab0 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de0e94:	b128      	cbz	r0, c0de0ea2 <handler_cmd_Split+0x98>
c0de0e96:	f000 faa7 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
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
c0de0ec2:	f006 f9c1 	bl	c0de7248 <cx_bn_alloc>
c0de0ec6:	2800      	cmp	r0, #0
c0de0ec8:	d1e5      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0eca:	a801      	add	r0, sp, #4
c0de0ecc:	2120      	movs	r1, #32
c0de0ece:	eb00 0508 	add.w	r5, r0, r8
c0de0ed2:	4628      	mov	r0, r5
c0de0ed4:	f006 f9b8 	bl	c0de7248 <cx_bn_alloc>
c0de0ed8:	2800      	cmp	r0, #0
c0de0eda:	d1dc      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0edc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ede:	4621      	mov	r1, r4
c0de0ee0:	f006 f9f2 	bl	c0de72c8 <cx_bn_set_u32>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d1d6      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ee8:	6828      	ldr	r0, [r5, #0]
c0de0eea:	4621      	mov	r1, r4
c0de0eec:	f006 f9ec 	bl	c0de72c8 <cx_bn_set_u32>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1d0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ef4:	4650      	mov	r0, sl
c0de0ef6:	4631      	mov	r1, r6
c0de0ef8:	f001 fb0e 	bl	c0de2518 <tEdwards_alloc>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1ca      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f00:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f04:	2202      	movs	r2, #2
c0de0f06:	9000      	str	r0, [sp, #0]
c0de0f08:	4650      	mov	r0, sl
c0de0f0a:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f0c:	f001 f943 	bl	c0de2196 <zkn_evalshare>
c0de0f10:	2800      	cmp	r0, #0
c0de0f12:	d1c0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f14:	6838      	ldr	r0, [r7, #0]
c0de0f16:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f18:	f006 f9cc 	bl	c0de72b4 <cx_bn_copy>
c0de0f1c:	2800      	cmp	r0, #0
c0de0f1e:	d1ba      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f20:	4650      	mov	r0, sl
c0de0f22:	4631      	mov	r1, r6
c0de0f24:	f001 fe29 	bl	c0de2b7a <tEdwards_normalize>
c0de0f28:	2800      	cmp	r0, #0
c0de0f2a:	d1b4      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f2c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f2e:	4659      	mov	r1, fp
c0de0f30:	f000 fa5d 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1ae      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f38:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f3a:	f10b 0120 	add.w	r1, fp, #32
c0de0f3e:	f000 fa56 	bl	c0de13ee <OUTLINED_FUNCTION_2>
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
c0de0f60:	f006 f988 	bl	c0de7274 <cx_bn_destroy>
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
c0de0f7c:	f001 f8c9 	bl	c0de2112 <zkn_frost_interpolate_secrets>
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	f47f af88 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f86:	a848      	add	r0, sp, #288	@ 0x120
c0de0f88:	f000 fa3e 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de0f8c:	f006 f954 	bl	c0de7238 <cx_bn_unlock>
c0de0f90:	2800      	cmp	r0, #0
c0de0f92:	f47f af80 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f96:	2000      	movs	r0, #0
c0de0f98:	e77f      	b.n	c0de0e9a <handler_cmd_Split+0x90>

c0de0f9a <handler_cmd_frostH>:
c0de0f9a:	b5b0      	push	{r4, r5, r7, lr}
c0de0f9c:	b0d8      	sub	sp, #352	@ 0x160
c0de0f9e:	4604      	mov	r4, r0
c0de0fa0:	f000 fa1e 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de0fa4:	2800      	cmp	r0, #0
c0de0fa6:	d142      	bne.n	c0de102e <handler_cmd_frostH+0x94>
c0de0fa8:	6820      	ldr	r0, [r4, #0]
c0de0faa:	7801      	ldrb	r1, [r0, #0]
c0de0fac:	a802      	add	r0, sp, #8
c0de0fae:	f001 fc33 	bl	c0de2818 <tEdwards_Curve_alloc_init>
c0de0fb2:	bbe0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fb4:	a801      	add	r0, sp, #4
c0de0fb6:	f000 fa1d 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de0fba:	bbc0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fbc:	f000 fa1d 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de0fc0:	f002 f948 	bl	c0de3254 <Babyfrost_H1>
c0de0fc4:	bb98      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fc6:	9801      	ldr	r0, [sp, #4]
c0de0fc8:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fca:	2220      	movs	r2, #32
c0de0fcc:	4629      	mov	r1, r5
c0de0fce:	f006 f985 	bl	c0de72dc <cx_bn_export>
c0de0fd2:	bb60      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fd4:	f000 fa11 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de0fd8:	f002 f94a 	bl	c0de3270 <Babyfrost_H3>
c0de0fdc:	bb38      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	f105 0120 	add.w	r1, r5, #32
c0de0fe4:	f000 fa03 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0fe8:	bb08      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fea:	f000 fa06 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de0fee:	f002 f953 	bl	c0de3298 <Babyfrost_H4>
c0de0ff2:	b9e0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0ff4:	9801      	ldr	r0, [sp, #4]
c0de0ff6:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0ffa:	f000 f9f8 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0ffe:	b9b0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1000:	f000 f9fb 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de1004:	f002 f956 	bl	c0de32b4 <Babyfrost_H5>
c0de1008:	b988      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de100a:	9801      	ldr	r0, [sp, #4]
c0de100c:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1010:	f000 f9ed 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de1014:	b958      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1016:	9804      	ldr	r0, [sp, #16]
c0de1018:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de101c:	f000 f9e7 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de1020:	b928      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1022:	a818      	add	r0, sp, #96	@ 0x60
c0de1024:	f000 f9f0 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de1028:	f006 f906 	bl	c0de7238 <cx_bn_unlock>
c0de102c:	b118      	cbz	r0, c0de1036 <handler_cmd_frostH+0x9c>
c0de102e:	f000 f9db 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1032:	b058      	add	sp, #352	@ 0x160
c0de1034:	bdb0      	pop	{r4, r5, r7, pc}
c0de1036:	2000      	movs	r0, #0
c0de1038:	e7fb      	b.n	c0de1032 <handler_cmd_frostH+0x98>
	...

c0de103c <handler_cmd_encodeCommitment>:
c0de103c:	b510      	push	{r4, lr}
c0de103e:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de1042:	4604      	mov	r4, r0
c0de1044:	f000 f9cc 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de1048:	bb10      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de104a:	6820      	ldr	r0, [r4, #0]
c0de104c:	7801      	ldrb	r1, [r0, #0]
c0de104e:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1050:	f001 fbe2 	bl	c0de2818 <tEdwards_Curve_alloc_init>
c0de1054:	b9e0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de1056:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1058:	f000 f9cc 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de105c:	b9c0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de105e:	ac01      	add	r4, sp, #4
c0de1060:	4910      	ldr	r1, [pc, #64]	@ (c0de10a4 <handler_cmd_encodeCommitment+0x68>)
c0de1062:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1066:	4620      	mov	r0, r4
c0de1068:	4479      	add	r1, pc
c0de106a:	f006 fba3 	bl	c0de77b4 <__aeabi_memcpy>
c0de106e:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1070:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1072:	4621      	mov	r1, r4
c0de1074:	2203      	movs	r2, #3
c0de1076:	f001 f8c7 	bl	c0de2208 <zkn_encode_group_commitmentHash>
c0de107a:	b948      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de107c:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de107e:	a990      	add	r1, sp, #576	@ 0x240
c0de1080:	2220      	movs	r2, #32
c0de1082:	3120      	adds	r1, #32
c0de1084:	f006 f92a 	bl	c0de72dc <cx_bn_export>
c0de1088:	b910      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de108a:	f006 f8d5 	bl	c0de7238 <cx_bn_unlock>
c0de108e:	b120      	cbz	r0, c0de109a <handler_cmd_encodeCommitment+0x5e>
c0de1090:	f000 f9aa 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1094:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de1098:	bd10      	pop	{r4, pc}
c0de109a:	a890      	add	r0, sp, #576	@ 0x240
c0de109c:	f000 f9d3 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de10a0:	2000      	movs	r0, #0
c0de10a2:	e7f7      	b.n	c0de1094 <handler_cmd_encodeCommitment+0x58>
c0de10a4:	00007084 	.word	0x00007084

c0de10a8 <handler_cmd_GroupCommitment>:
c0de10a8:	b570      	push	{r4, r5, r6, lr}
c0de10aa:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10ae:	4604      	mov	r4, r0
c0de10b0:	f000 f996 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de10b4:	bb58      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10b6:	6820      	ldr	r0, [r4, #0]
c0de10b8:	7801      	ldrb	r1, [r0, #0]
c0de10ba:	a894      	add	r0, sp, #592	@ 0x250
c0de10bc:	f001 fbac 	bl	c0de2818 <tEdwards_Curve_alloc_init>
c0de10c0:	bb28      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10c2:	a894      	add	r0, sp, #592	@ 0x250
c0de10c4:	ac91      	add	r4, sp, #580	@ 0x244
c0de10c6:	4621      	mov	r1, r4
c0de10c8:	f001 fa26 	bl	c0de2518 <tEdwards_alloc>
c0de10cc:	b9f8      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10ce:	ad19      	add	r5, sp, #100	@ 0x64
c0de10d0:	4914      	ldr	r1, [pc, #80]	@ (c0de1124 <handler_cmd_GroupCommitment+0x7c>)
c0de10d2:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10d6:	4628      	mov	r0, r5
c0de10d8:	4479      	add	r1, pc
c0de10da:	f006 fb6b 	bl	c0de77b4 <__aeabi_memcpy>
c0de10de:	ae01      	add	r6, sp, #4
c0de10e0:	4911      	ldr	r1, [pc, #68]	@ (c0de1128 <handler_cmd_GroupCommitment+0x80>)
c0de10e2:	2260      	movs	r2, #96	@ 0x60
c0de10e4:	4630      	mov	r0, r6
c0de10e6:	4479      	add	r1, pc
c0de10e8:	f006 fb64 	bl	c0de77b4 <__aeabi_memcpy>
c0de10ec:	9400      	str	r4, [sp, #0]
c0de10ee:	a894      	add	r0, sp, #592	@ 0x250
c0de10f0:	4629      	mov	r1, r5
c0de10f2:	f000 f9a1 	bl	c0de1438 <OUTLINED_FUNCTION_10>
c0de10f6:	b950      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10f8:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de10fa:	a894      	add	r0, sp, #592	@ 0x250
c0de10fc:	a991      	add	r1, sp, #580	@ 0x244
c0de10fe:	f102 0320 	add.w	r3, r2, #32
c0de1102:	f001 fd14 	bl	c0de2b2e <tEdwards_export>
c0de1106:	b910      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de1108:	f006 f896 	bl	c0de7238 <cx_bn_unlock>
c0de110c:	b120      	cbz	r0, c0de1118 <handler_cmd_GroupCommitment+0x70>
c0de110e:	f000 f96b 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1112:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1116:	bd70      	pop	{r4, r5, r6, pc}
c0de1118:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de111a:	2140      	movs	r1, #64	@ 0x40
c0de111c:	f7ff fab6 	bl	c0de068c <io_send_response_pointer>
c0de1120:	2000      	movs	r0, #0
c0de1122:	e7f6      	b.n	c0de1112 <handler_cmd_GroupCommitment+0x6a>
c0de1124:	000071f4 	.word	0x000071f4
c0de1128:	000073c6 	.word	0x000073c6

c0de112c <handler_cmd_BindingFactors>:
c0de112c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1130:	f5ad 7d65 	sub.w	sp, sp, #916	@ 0x394
c0de1134:	4604      	mov	r4, r0
c0de1136:	f000 f953 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de113a:	2800      	cmp	r0, #0
c0de113c:	d15c      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de113e:	6820      	ldr	r0, [r4, #0]
c0de1140:	7801      	ldrb	r1, [r0, #0]
c0de1142:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1144:	f001 fb68 	bl	c0de2818 <tEdwards_Curve_alloc_init>
c0de1148:	2800      	cmp	r0, #0
c0de114a:	d155      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de114c:	a88e      	add	r0, sp, #568	@ 0x238
c0de114e:	f000 f951 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de1152:	2800      	cmp	r0, #0
c0de1154:	d150      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1156:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1158:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de115a:	4621      	mov	r1, r4
c0de115c:	f001 f9dc 	bl	c0de2518 <tEdwards_alloc>
c0de1160:	2800      	cmp	r0, #0
c0de1162:	d149      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1164:	ad13      	add	r5, sp, #76	@ 0x4c
c0de1166:	4928      	ldr	r1, [pc, #160]	@ (c0de1208 <handler_cmd_BindingFactors+0xdc>)
c0de1168:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de116c:	4628      	mov	r0, r5
c0de116e:	4479      	add	r1, pc
c0de1170:	f006 fb20 	bl	c0de77b4 <__aeabi_memcpy>
c0de1174:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de1176:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1178:	4629      	mov	r1, r5
c0de117a:	2203      	movs	r2, #3
c0de117c:	f001 f844 	bl	c0de2208 <zkn_encode_group_commitmentHash>
c0de1180:	bbd0      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1182:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de1186:	f000 f951 	bl	c0de142c <OUTLINED_FUNCTION_9>
c0de118a:	bba8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de118c:	491f      	ldr	r1, [pc, #124]	@ (c0de120c <handler_cmd_BindingFactors+0xe0>)
c0de118e:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de1192:	2220      	movs	r2, #32
c0de1194:	4650      	mov	r0, sl
c0de1196:	4479      	add	r1, pc
c0de1198:	f006 fb0c 	bl	c0de77b4 <__aeabi_memcpy>
c0de119c:	ad03      	add	r5, sp, #12
c0de119e:	491c      	ldr	r1, [pc, #112]	@ (c0de1210 <handler_cmd_BindingFactors+0xe4>)
c0de11a0:	2220      	movs	r2, #32
c0de11a2:	4628      	mov	r0, r5
c0de11a4:	4479      	add	r1, pc
c0de11a6:	f006 fb05 	bl	c0de77b4 <__aeabi_memcpy>
c0de11aa:	f000 f937 	bl	c0de141c <OUTLINED_FUNCTION_8>
c0de11ae:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11b0:	aa13      	add	r2, sp, #76	@ 0x4c
c0de11b2:	f001 f911 	bl	c0de23d8 <zkn_compute_binding_factors>
c0de11b6:	b9f8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11b8:	9400      	str	r4, [sp, #0]
c0de11ba:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11bc:	a913      	add	r1, sp, #76	@ 0x4c
c0de11be:	f000 f93b 	bl	c0de1438 <OUTLINED_FUNCTION_10>
c0de11c2:	b9c8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11c4:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11c6:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de11ca:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de11ce:	a98b      	add	r1, sp, #556	@ 0x22c
c0de11d0:	f001 fcad 	bl	c0de2b2e <tEdwards_export>
c0de11d4:	b980      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11d6:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11d8:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11dc:	f000 f907 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de11e0:	b950      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11e2:	a8a5      	add	r0, sp, #660	@ 0x294
c0de11e4:	21e0      	movs	r1, #224	@ 0xe0
c0de11e6:	f7ff fa51 	bl	c0de068c <io_send_response_pointer>
c0de11ea:	a88e      	add	r0, sp, #568	@ 0x238
c0de11ec:	f006 f842 	bl	c0de7274 <cx_bn_destroy>
c0de11f0:	b910      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11f2:	f006 f821 	bl	c0de7238 <cx_bn_unlock>
c0de11f6:	b128      	cbz	r0, c0de1204 <handler_cmd_BindingFactors+0xd8>
c0de11f8:	f000 f8f6 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de11fc:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de1200:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1204:	2000      	movs	r0, #0
c0de1206:	e7f9      	b.n	c0de11fc <handler_cmd_BindingFactors+0xd0>
c0de1208:	0000739e 	.word	0x0000739e
c0de120c:	00006d76 	.word	0x00006d76
c0de1210:	00006e88 	.word	0x00006e88

c0de1214 <handler_get_insecure_secret>:
c0de1214:	b570      	push	{r4, r5, r6, lr}
c0de1216:	b0f0      	sub	sp, #448	@ 0x1c0
c0de1218:	4e2c      	ldr	r6, [pc, #176]	@ (c0de12cc <handler_get_insecure_secret+0xb8>)
c0de121a:	4604      	mov	r4, r0
c0de121c:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de1220:	eb09 0506 	add.w	r5, r9, r6
c0de1224:	4628      	mov	r0, r5
c0de1226:	f006 fadd 	bl	c0de77e4 <explicit_bzero>
c0de122a:	2000      	movs	r0, #0
c0de122c:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de1230:	f809 0006 	strb.w	r0, [r9, r6]
c0de1234:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de1238:	4620      	mov	r0, r4
c0de123a:	f005 f8b9 	bl	c0de63b0 <buffer_read_u8>
c0de123e:	b3c0      	cbz	r0, c0de12b2 <handler_get_insecure_secret+0x9e>
c0de1240:	eb09 0006 	add.w	r0, r9, r6
c0de1244:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de1248:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de124c:	4620      	mov	r0, r4
c0de124e:	f005 f902 	bl	c0de6456 <buffer_read_bip32_path>
c0de1252:	b370      	cbz	r0, c0de12b2 <handler_get_insecure_secret+0x9e>
c0de1254:	eb09 0006 	add.w	r0, r9, r6
c0de1258:	2100      	movs	r1, #0
c0de125a:	2205      	movs	r2, #5
c0de125c:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de1260:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de1264:	9104      	str	r1, [sp, #16]
c0de1266:	f100 0449 	add.w	r4, r0, #73	@ 0x49
c0de126a:	f100 0508 	add.w	r5, r0, #8
c0de126e:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de1272:	2000      	movs	r0, #0
c0de1274:	2121      	movs	r1, #33	@ 0x21
c0de1276:	e9cd 5400 	strd	r5, r4, [sp]
c0de127a:	f005 f9ad 	bl	c0de65d8 <bip32_derive_with_seed_get_pubkey_256>
c0de127e:	a806      	add	r0, sp, #24
c0de1280:	2106      	movs	r1, #6
c0de1282:	2220      	movs	r2, #32
c0de1284:	f005 fd74 	bl	c0de6d70 <cx_hash_init_ex>
c0de1288:	b978      	cbnz	r0, c0de12aa <handler_get_insecure_secret+0x96>
c0de128a:	eb09 0006 	add.w	r0, r9, r6
c0de128e:	2241      	movs	r2, #65	@ 0x41
c0de1290:	f100 0108 	add.w	r1, r0, #8
c0de1294:	a806      	add	r0, sp, #24
c0de1296:	f005 fd70 	bl	c0de6d7a <cx_hash_update>
c0de129a:	b930      	cbnz	r0, c0de12aa <handler_get_insecure_secret+0x96>
c0de129c:	4c0c      	ldr	r4, [pc, #48]	@ (c0de12d0 <handler_get_insecure_secret+0xbc>)
c0de129e:	a806      	add	r0, sp, #24
c0de12a0:	eb09 0104 	add.w	r1, r9, r4
c0de12a4:	f005 fd5f 	bl	c0de6d66 <cx_hash_final>
c0de12a8:	b150      	cbz	r0, c0de12c0 <handler_get_insecure_secret+0xac>
c0de12aa:	f000 f89d 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de12ae:	b070      	add	sp, #448	@ 0x1c0
c0de12b0:	bd70      	pop	{r4, r5, r6, pc}
c0de12b2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de12b6:	b070      	add	sp, #448	@ 0x1c0
c0de12b8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de12bc:	f7ff b9f1 	b.w	c0de06a2 <io_send_sw>
c0de12c0:	eb09 0004 	add.w	r0, r9, r4
c0de12c4:	f000 f8bf 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de12c8:	2000      	movs	r0, #0
c0de12ca:	e7f0      	b.n	c0de12ae <handler_get_insecure_secret+0x9a>
c0de12cc:	00000000 	.word	0x00000000
c0de12d0:	000002d8 	.word	0x000002d8

c0de12d4 <handler_get_insecure_public>:
c0de12d4:	b5b0      	push	{r4, r5, r7, lr}
c0de12d6:	b0aa      	sub	sp, #168	@ 0xa8
c0de12d8:	6800      	ldr	r0, [r0, #0]
c0de12da:	21ff      	movs	r1, #255	@ 0xff
c0de12dc:	7805      	ldrb	r5, [r0, #0]
c0de12de:	2000      	movs	r0, #0
c0de12e0:	ac1a      	add	r4, sp, #104	@ 0x68
c0de12e2:	2840      	cmp	r0, #64	@ 0x40
c0de12e4:	d002      	beq.n	c0de12ec <handler_get_insecure_public+0x18>
c0de12e6:	5421      	strb	r1, [r4, r0]
c0de12e8:	3001      	adds	r0, #1
c0de12ea:	e7fa      	b.n	c0de12e2 <handler_get_insecure_public+0xe>
c0de12ec:	f000 f878 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de12f0:	b9f8      	cbnz	r0, c0de1332 <handler_get_insecure_public+0x5e>
c0de12f2:	a804      	add	r0, sp, #16
c0de12f4:	f000 f8a4 	bl	c0de1440 <OUTLINED_FUNCTION_11>
c0de12f8:	b9d8      	cbnz	r0, c0de1332 <handler_get_insecure_public+0x5e>
c0de12fa:	a804      	add	r0, sp, #16
c0de12fc:	a901      	add	r1, sp, #4
c0de12fe:	f001 f90b 	bl	c0de2518 <tEdwards_alloc>
c0de1302:	b9b0      	cbnz	r0, c0de1332 <handler_get_insecure_public+0x5e>
c0de1304:	480e      	ldr	r0, [pc, #56]	@ (c0de1340 <handler_get_insecure_public+0x6c>)
c0de1306:	eb09 0100 	add.w	r1, r9, r0
c0de130a:	a804      	add	r0, sp, #16
c0de130c:	aa01      	add	r2, sp, #4
c0de130e:	f000 fd11 	bl	c0de1d34 <zkn_prv2pub>
c0de1312:	b970      	cbnz	r0, c0de1332 <handler_get_insecure_public+0x5e>
c0de1314:	a804      	add	r0, sp, #16
c0de1316:	f104 0320 	add.w	r3, r4, #32
c0de131a:	a901      	add	r1, sp, #4
c0de131c:	f000 f87b 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de1320:	b938      	cbnz	r0, c0de1332 <handler_get_insecure_public+0x5e>
c0de1322:	9804      	ldr	r0, [sp, #16]
c0de1324:	0041      	lsls	r1, r0, #1
c0de1326:	a81a      	add	r0, sp, #104	@ 0x68
c0de1328:	f7ff f9b0 	bl	c0de068c <io_send_response_pointer>
c0de132c:	f005 ff84 	bl	c0de7238 <cx_bn_unlock>
c0de1330:	b118      	cbz	r0, c0de133a <handler_get_insecure_public+0x66>
c0de1332:	f000 f859 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1336:	b02a      	add	sp, #168	@ 0xa8
c0de1338:	bdb0      	pop	{r4, r5, r7, pc}
c0de133a:	2000      	movs	r0, #0
c0de133c:	e7fb      	b.n	c0de1336 <handler_get_insecure_public+0x62>
c0de133e:	bf00      	nop
c0de1340:	000002d8 	.word	0x000002d8

c0de1344 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1344:	b570      	push	{r4, r5, r6, lr}
c0de1346:	b0e4      	sub	sp, #400	@ 0x190
c0de1348:	4606      	mov	r6, r0
c0de134a:	6800      	ldr	r0, [r0, #0]
c0de134c:	21ff      	movs	r1, #255	@ 0xff
c0de134e:	7805      	ldrb	r5, [r0, #0]
c0de1350:	2000      	movs	r0, #0
c0de1352:	ac24      	add	r4, sp, #144	@ 0x90
c0de1354:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de1358:	d002      	beq.n	c0de1360 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1c>
c0de135a:	5421      	strb	r1, [r4, r0]
c0de135c:	3001      	adds	r0, #1
c0de135e:	e7f9      	b.n	c0de1354 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de1360:	f000 f83e 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de1364:	bb98      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de1366:	6830      	ldr	r0, [r6, #0]
c0de1368:	2100      	movs	r1, #0
c0de136a:	aa03      	add	r2, sp, #12
c0de136c:	3001      	adds	r0, #1
c0de136e:	2920      	cmp	r1, #32
c0de1370:	d003      	beq.n	c0de137a <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x36>
c0de1372:	5c43      	ldrb	r3, [r0, r1]
c0de1374:	5453      	strb	r3, [r2, r1]
c0de1376:	3101      	adds	r1, #1
c0de1378:	e7f9      	b.n	c0de136e <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x2a>
c0de137a:	a80e      	add	r0, sp, #56	@ 0x38
c0de137c:	f000 f860 	bl	c0de1440 <OUTLINED_FUNCTION_11>
c0de1380:	bb28      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de1382:	a80e      	add	r0, sp, #56	@ 0x38
c0de1384:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1386:	f001 f8c7 	bl	c0de2518 <tEdwards_alloc>
c0de138a:	bb00      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de138c:	4d13      	ldr	r5, [pc, #76]	@ (c0de13dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x98>)
c0de138e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1390:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1392:	eb09 0105 	add.w	r1, r9, r5
c0de1396:	f000 fccd 	bl	c0de1d34 <zkn_prv2pub>
c0de139a:	b9c0      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de139c:	a80e      	add	r0, sp, #56	@ 0x38
c0de139e:	f104 0320 	add.w	r3, r4, #32
c0de13a2:	a90b      	add	r1, sp, #44	@ 0x2c
c0de13a4:	f000 f837 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de13a8:	b988      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de13aa:	2020      	movs	r0, #32
c0de13ac:	eb09 0105 	add.w	r1, r9, r5
c0de13b0:	e9cd 0400 	strd	r0, r4, [sp]
c0de13b4:	a80e      	add	r0, sp, #56	@ 0x38
c0de13b6:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de13b8:	ab03      	add	r3, sp, #12
c0de13ba:	f000 fce3 	bl	c0de1d84 <EddsaPoseidon_Sign_final>
c0de13be:	b930      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de13c0:	a824      	add	r0, sp, #144	@ 0x90
c0de13c2:	2160      	movs	r1, #96	@ 0x60
c0de13c4:	f7ff f962 	bl	c0de068c <io_send_response_pointer>
c0de13c8:	f005 ff36 	bl	c0de7238 <cx_bn_unlock>
c0de13cc:	b118      	cbz	r0, c0de13d6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x92>
c0de13ce:	f000 f80b 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de13d2:	b064      	add	sp, #400	@ 0x190
c0de13d4:	bd70      	pop	{r4, r5, r6, pc}
c0de13d6:	2000      	movs	r0, #0
c0de13d8:	e7fb      	b.n	c0de13d2 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8e>
c0de13da:	bf00      	nop
c0de13dc:	000002d8 	.word	0x000002d8

c0de13e0 <OUTLINED_FUNCTION_0>:
c0de13e0:	2020      	movs	r0, #32
c0de13e2:	2100      	movs	r1, #0
c0de13e4:	f005 bf1e 	b.w	c0de7224 <cx_bn_lock>

c0de13e8 <OUTLINED_FUNCTION_1>:
c0de13e8:	b280      	uxth	r0, r0
c0de13ea:	f7ff b95a 	b.w	c0de06a2 <io_send_sw>

c0de13ee <OUTLINED_FUNCTION_2>:
c0de13ee:	2220      	movs	r2, #32
c0de13f0:	f005 bf74 	b.w	c0de72dc <cx_bn_export>

c0de13f4 <OUTLINED_FUNCTION_3>:
c0de13f4:	2120      	movs	r1, #32
c0de13f6:	f005 bf27 	b.w	c0de7248 <cx_bn_alloc>

c0de13fa <OUTLINED_FUNCTION_4>:
c0de13fa:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de13fe:	9b01      	ldr	r3, [sp, #4]
c0de1400:	9a04      	ldr	r2, [sp, #16]
c0de1402:	3001      	adds	r0, #1
c0de1404:	3901      	subs	r1, #1
c0de1406:	4770      	bx	lr

c0de1408 <OUTLINED_FUNCTION_5>:
c0de1408:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de140c:	f7ff b93e 	b.w	c0de068c <io_send_response_pointer>

c0de1410 <OUTLINED_FUNCTION_6>:
c0de1410:	2320      	movs	r3, #32
c0de1412:	f005 bf23 	b.w	c0de725c <cx_bn_alloc_init>

c0de1416 <OUTLINED_FUNCTION_7>:
c0de1416:	4622      	mov	r2, r4
c0de1418:	f001 bb89 	b.w	c0de2b2e <tEdwards_export>

c0de141c <OUTLINED_FUNCTION_8>:
c0de141c:	f108 0620 	add.w	r6, r8, #32
c0de1420:	e9cd 5700 	strd	r5, r7, [sp]
c0de1424:	4651      	mov	r1, sl
c0de1426:	2303      	movs	r3, #3
c0de1428:	9602      	str	r6, [sp, #8]
c0de142a:	4770      	bx	lr

c0de142c <OUTLINED_FUNCTION_9>:
c0de142c:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de142e:	2220      	movs	r2, #32
c0de1430:	2720      	movs	r7, #32
c0de1432:	4641      	mov	r1, r8
c0de1434:	f005 bf52 	b.w	c0de72dc <cx_bn_export>

c0de1438 <OUTLINED_FUNCTION_10>:
c0de1438:	4632      	mov	r2, r6
c0de143a:	2303      	movs	r3, #3
c0de143c:	f000 bf61 	b.w	c0de2302 <zkn_compute_group_commitment>

c0de1440 <OUTLINED_FUNCTION_11>:
c0de1440:	4629      	mov	r1, r5
c0de1442:	f001 b9e9 	b.w	c0de2818 <tEdwards_Curve_alloc_init>

c0de1446 <OUTLINED_FUNCTION_12>:
c0de1446:	2120      	movs	r1, #32
c0de1448:	f7ff b920 	b.w	c0de068c <io_send_response_pointer>

c0de144c <helper_send_response_pubkey>:
c0de144c:	b5b0      	push	{r4, r5, r7, lr}
c0de144e:	b09a      	sub	sp, #104	@ 0x68
c0de1450:	2041      	movs	r0, #65	@ 0x41
c0de1452:	f10d 0405 	add.w	r4, sp, #5
c0de1456:	2241      	movs	r2, #65	@ 0x41
c0de1458:	f88d 0005 	strb.w	r0, [sp, #5]
c0de145c:	480b      	ldr	r0, [pc, #44]	@ (c0de148c <helper_send_response_pubkey+0x40>)
c0de145e:	eb09 0500 	add.w	r5, r9, r0
c0de1462:	1c60      	adds	r0, r4, #1
c0de1464:	f105 0108 	add.w	r1, r5, #8
c0de1468:	f006 f9a4 	bl	c0de77b4 <__aeabi_memcpy>
c0de146c:	2020      	movs	r0, #32
c0de146e:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1472:	2220      	movs	r2, #32
c0de1474:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1478:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de147c:	f006 f99a 	bl	c0de77b4 <__aeabi_memcpy>
c0de1480:	4620      	mov	r0, r4
c0de1482:	2163      	movs	r1, #99	@ 0x63
c0de1484:	f000 f804 	bl	c0de1490 <io_send_response_pointer>
c0de1488:	b01a      	add	sp, #104	@ 0x68
c0de148a:	bdb0      	pop	{r4, r5, r7, pc}
c0de148c:	00000000 	.word	0x00000000

c0de1490 <io_send_response_pointer>:
c0de1490:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1492:	2200      	movs	r2, #0
c0de1494:	ab01      	add	r3, sp, #4
c0de1496:	c307      	stmia	r3!, {r0, r1, r2}
c0de1498:	a801      	add	r0, sp, #4
c0de149a:	2101      	movs	r1, #1
c0de149c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de14a0:	f005 f9d8 	bl	c0de6854 <io_send_response_buffers>
c0de14a4:	b004      	add	sp, #16
c0de14a6:	bd80      	pop	{r7, pc}

c0de14a8 <helper_send_response_sig>:
c0de14a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de14aa:	b093      	sub	sp, #76	@ 0x4c
c0de14ac:	f10d 0402 	add.w	r4, sp, #2
c0de14b0:	2149      	movs	r1, #73	@ 0x49
c0de14b2:	1c65      	adds	r5, r4, #1
c0de14b4:	4628      	mov	r0, r5
c0de14b6:	f006 f987 	bl	c0de77c8 <__aeabi_memclr>
c0de14ba:	480b      	ldr	r0, [pc, #44]	@ (c0de14e8 <helper_send_response_sig+0x40>)
c0de14bc:	eb09 0700 	add.w	r7, r9, r0
c0de14c0:	4628      	mov	r0, r5
c0de14c2:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de14c6:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de14ca:	4632      	mov	r2, r6
c0de14cc:	f88d 6002 	strb.w	r6, [sp, #2]
c0de14d0:	f006 f970 	bl	c0de77b4 <__aeabi_memcpy>
c0de14d4:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de14d8:	1930      	adds	r0, r6, r4
c0de14da:	7041      	strb	r1, [r0, #1]
c0de14dc:	1cb1      	adds	r1, r6, #2
c0de14de:	4620      	mov	r0, r4
c0de14e0:	f7ff ffd6 	bl	c0de1490 <io_send_response_pointer>
c0de14e4:	b013      	add	sp, #76	@ 0x4c
c0de14e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de14e8:	00000000 	.word	0x00000000

c0de14ec <swap_handle_check_address>:
c0de14ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de14f0:	b0bc      	sub	sp, #240	@ 0xf0
c0de14f2:	4604      	mov	r4, r0
c0de14f4:	2000      	movs	r0, #0
c0de14f6:	68a5      	ldr	r5, [r4, #8]
c0de14f8:	61a0      	str	r0, [r4, #24]
c0de14fa:	2d00      	cmp	r5, #0
c0de14fc:	d04d      	beq.n	c0de159a <swap_handle_check_address+0xae>
c0de14fe:	6920      	ldr	r0, [r4, #16]
c0de1500:	2800      	cmp	r0, #0
c0de1502:	d04a      	beq.n	c0de159a <swap_handle_check_address+0xae>
c0de1504:	f006 f9bc 	bl	c0de7880 <strlen>
c0de1508:	2828      	cmp	r0, #40	@ 0x28
c0de150a:	d146      	bne.n	c0de159a <swap_handle_check_address+0xae>
c0de150c:	7b20      	ldrb	r0, [r4, #12]
c0de150e:	f04f 0800 	mov.w	r8, #0
c0de1512:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de1514:	2161      	movs	r1, #97	@ 0x61
c0de1516:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de151a:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de151c:	ad15      	add	r5, sp, #84	@ 0x54
c0de151e:	4628      	mov	r0, r5
c0de1520:	f006 f952 	bl	c0de77c8 <__aeabi_memclr>
c0de1524:	ae39      	add	r6, sp, #228	@ 0xe4
c0de1526:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de152a:	4630      	mov	r0, r6
c0de152c:	f004 ff40 	bl	c0de63b0 <buffer_read_u8>
c0de1530:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de1534:	af2e      	add	r7, sp, #184	@ 0xb8
c0de1536:	4630      	mov	r0, r6
c0de1538:	4639      	mov	r1, r7
c0de153a:	f004 ff8c 	bl	c0de6456 <buffer_read_bip32_path>
c0de153e:	2005      	movs	r0, #5
c0de1540:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1544:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1548:	463a      	mov	r2, r7
c0de154a:	f8cd 8010 	str.w	r8, [sp, #16]
c0de154e:	e9cd 5100 	strd	r5, r1, [sp]
c0de1552:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1556:	2000      	movs	r0, #0
c0de1558:	2121      	movs	r1, #33	@ 0x21
c0de155a:	f005 f83d 	bl	c0de65d8 <bip32_derive_with_seed_get_pubkey_256>
c0de155e:	b9e0      	cbnz	r0, c0de159a <swap_handle_check_address+0xae>
c0de1560:	ad10      	add	r5, sp, #64	@ 0x40
c0de1562:	2114      	movs	r1, #20
c0de1564:	4628      	mov	r0, r5
c0de1566:	f006 f92f 	bl	c0de77c8 <__aeabi_memclr>
c0de156a:	a815      	add	r0, sp, #84	@ 0x54
c0de156c:	4629      	mov	r1, r5
c0de156e:	2214      	movs	r2, #20
c0de1570:	f7fe fd5a 	bl	c0de0028 <address_from_pubkey>
c0de1574:	ae05      	add	r6, sp, #20
c0de1576:	2129      	movs	r1, #41	@ 0x29
c0de1578:	4630      	mov	r0, r6
c0de157a:	f006 f925 	bl	c0de77c8 <__aeabi_memclr>
c0de157e:	4628      	mov	r0, r5
c0de1580:	2114      	movs	r1, #20
c0de1582:	4632      	mov	r2, r6
c0de1584:	2329      	movs	r3, #41	@ 0x29
c0de1586:	f005 f905 	bl	c0de6794 <format_hex>
c0de158a:	6921      	ldr	r1, [r4, #16]
c0de158c:	4630      	mov	r0, r6
c0de158e:	2229      	movs	r2, #41	@ 0x29
c0de1590:	f006 f97e 	bl	c0de7890 <strncmp>
c0de1594:	b908      	cbnz	r0, c0de159a <swap_handle_check_address+0xae>
c0de1596:	2001      	movs	r0, #1
c0de1598:	61a0      	str	r0, [r4, #24]
c0de159a:	b03c      	add	sp, #240	@ 0xf0
c0de159c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de15a0 <swap_handle_get_printable_amount>:
c0de15a0:	b570      	push	{r4, r5, r6, lr}
c0de15a2:	b08c      	sub	sp, #48	@ 0x30
c0de15a4:	ac04      	add	r4, sp, #16
c0de15a6:	4606      	mov	r6, r0
c0de15a8:	211e      	movs	r1, #30
c0de15aa:	4620      	mov	r0, r4
c0de15ac:	f006 f90c 	bl	c0de77c8 <__aeabi_memclr>
c0de15b0:	f106 050e 	add.w	r5, r6, #14
c0de15b4:	2132      	movs	r1, #50	@ 0x32
c0de15b6:	4628      	mov	r0, r5
c0de15b8:	f006 f906 	bl	c0de77c8 <__aeabi_memclr>
c0de15bc:	2000      	movs	r0, #0
c0de15be:	7b31      	ldrb	r1, [r6, #12]
c0de15c0:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de15c4:	68b0      	ldr	r0, [r6, #8]
c0de15c6:	aa02      	add	r2, sp, #8
c0de15c8:	f005 fad0 	bl	c0de6b6c <swap_str_to_u64>
c0de15cc:	b178      	cbz	r0, c0de15ee <swap_handle_get_printable_amount+0x4e>
c0de15ce:	2003      	movs	r0, #3
c0de15d0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de15d4:	211e      	movs	r1, #30
c0de15d6:	9000      	str	r0, [sp, #0]
c0de15d8:	4620      	mov	r0, r4
c0de15da:	f005 f894 	bl	c0de6706 <format_fpu64>
c0de15de:	9400      	str	r4, [sp, #0]
c0de15e0:	4628      	mov	r0, r5
c0de15e2:	2132      	movs	r1, #50	@ 0x32
c0de15e4:	231e      	movs	r3, #30
c0de15e6:	4a03      	ldr	r2, [pc, #12]	@ (c0de15f4 <swap_handle_get_printable_amount+0x54>)
c0de15e8:	447a      	add	r2, pc
c0de15ea:	f005 fc4f 	bl	c0de6e8c <snprintf>
c0de15ee:	b00c      	add	sp, #48	@ 0x30
c0de15f0:	bd70      	pop	{r4, r5, r6, pc}
c0de15f2:	bf00      	nop
c0de15f4:	0000673e 	.word	0x0000673e

c0de15f8 <swap_copy_transaction_parameters>:
c0de15f8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de15fa:	b093      	sub	sp, #76	@ 0x4c
c0de15fc:	6985      	ldr	r5, [r0, #24]
c0de15fe:	b3ad      	cbz	r5, c0de166c <swap_copy_transaction_parameters+0x74>
c0de1600:	4604      	mov	r4, r0
c0de1602:	4628      	mov	r0, r5
c0de1604:	f006 f93c 	bl	c0de7880 <strlen>
c0de1608:	2828      	cmp	r0, #40	@ 0x28
c0de160a:	d12f      	bne.n	c0de166c <swap_copy_transaction_parameters+0x74>
c0de160c:	68a7      	ldr	r7, [r4, #8]
c0de160e:	b36f      	cbz	r7, c0de166c <swap_copy_transaction_parameters+0x74>
c0de1610:	466e      	mov	r6, sp
c0de1612:	2148      	movs	r1, #72	@ 0x48
c0de1614:	4630      	mov	r0, r6
c0de1616:	f006 f8d7 	bl	c0de77c8 <__aeabi_memclr>
c0de161a:	f106 0018 	add.w	r0, r6, #24
c0de161e:	2100      	movs	r1, #0
c0de1620:	2928      	cmp	r1, #40	@ 0x28
c0de1622:	d009      	beq.n	c0de1638 <swap_copy_transaction_parameters+0x40>
c0de1624:	5c6a      	ldrb	r2, [r5, r1]
c0de1626:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de162a:	b2db      	uxtb	r3, r3
c0de162c:	2b1a      	cmp	r3, #26
c0de162e:	bf38      	it	cc
c0de1630:	3a20      	subcc	r2, #32
c0de1632:	5442      	strb	r2, [r0, r1]
c0de1634:	3101      	adds	r1, #1
c0de1636:	e7f3      	b.n	c0de1620 <swap_copy_transaction_parameters+0x28>
c0de1638:	7b21      	ldrb	r1, [r4, #12]
c0de163a:	f106 0208 	add.w	r2, r6, #8
c0de163e:	4638      	mov	r0, r7
c0de1640:	f005 fa94 	bl	c0de6b6c <swap_str_to_u64>
c0de1644:	b190      	cbz	r0, c0de166c <swap_copy_transaction_parameters+0x74>
c0de1646:	7d21      	ldrb	r1, [r4, #20]
c0de1648:	6920      	ldr	r0, [r4, #16]
c0de164a:	f106 0210 	add.w	r2, r6, #16
c0de164e:	f005 fa8d 	bl	c0de6b6c <swap_str_to_u64>
c0de1652:	b158      	cbz	r0, c0de166c <swap_copy_transaction_parameters+0x74>
c0de1654:	2401      	movs	r4, #1
c0de1656:	f88d 4000 	strb.w	r4, [sp]
c0de165a:	f005 fc0b 	bl	c0de6e74 <os_explicit_zero_BSS_segment>
c0de165e:	4805      	ldr	r0, [pc, #20]	@ (c0de1674 <swap_copy_transaction_parameters+0x7c>)
c0de1660:	4669      	mov	r1, sp
c0de1662:	2248      	movs	r2, #72	@ 0x48
c0de1664:	4448      	add	r0, r9
c0de1666:	f006 f8a5 	bl	c0de77b4 <__aeabi_memcpy>
c0de166a:	e000      	b.n	c0de166e <swap_copy_transaction_parameters+0x76>
c0de166c:	2400      	movs	r4, #0
c0de166e:	4620      	mov	r0, r4
c0de1670:	b013      	add	sp, #76	@ 0x4c
c0de1672:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1674:	000002f8 	.word	0x000002f8

c0de1678 <swap_check_validity>:
c0de1678:	b570      	push	{r4, r5, r6, lr}
c0de167a:	b08c      	sub	sp, #48	@ 0x30
c0de167c:	4e1d      	ldr	r6, [pc, #116]	@ (c0de16f4 <swap_check_validity+0x7c>)
c0de167e:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1682:	b32c      	cbz	r4, c0de16d0 <swap_check_validity+0x58>
c0de1684:	eb09 0406 	add.w	r4, r9, r6
c0de1688:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de168c:	4069      	eors	r1, r5
c0de168e:	4060      	eors	r0, r4
c0de1690:	4308      	orrs	r0, r1
c0de1692:	d121      	bne.n	c0de16d8 <swap_check_validity+0x60>
c0de1694:	eb09 0006 	add.w	r0, r9, r6
c0de1698:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de169c:	4059      	eors	r1, r3
c0de169e:	4050      	eors	r0, r2
c0de16a0:	4308      	orrs	r0, r1
c0de16a2:	d11d      	bne.n	c0de16e0 <swap_check_validity+0x68>
c0de16a4:	ad01      	add	r5, sp, #4
c0de16a6:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de16a8:	2129      	movs	r1, #41	@ 0x29
c0de16aa:	4628      	mov	r0, r5
c0de16ac:	f006 f88c 	bl	c0de77c8 <__aeabi_memclr>
c0de16b0:	4620      	mov	r0, r4
c0de16b2:	2114      	movs	r1, #20
c0de16b4:	462a      	mov	r2, r5
c0de16b6:	2329      	movs	r3, #41	@ 0x29
c0de16b8:	f005 f86c 	bl	c0de6794 <format_hex>
c0de16bc:	eb09 0006 	add.w	r0, r9, r6
c0de16c0:	4629      	mov	r1, r5
c0de16c2:	3018      	adds	r0, #24
c0de16c4:	f006 f8d2 	bl	c0de786c <strcmp>
c0de16c8:	b970      	cbnz	r0, c0de16e8 <swap_check_validity+0x70>
c0de16ca:	2001      	movs	r0, #1
c0de16cc:	b00c      	add	sp, #48	@ 0x30
c0de16ce:	bd70      	pop	{r4, r5, r6, pc}
c0de16d0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16d4:	21ff      	movs	r1, #255	@ 0xff
c0de16d6:	e00a      	b.n	c0de16ee <swap_check_validity+0x76>
c0de16d8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16dc:	2101      	movs	r1, #1
c0de16de:	e006      	b.n	c0de16ee <swap_check_validity+0x76>
c0de16e0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16e4:	2103      	movs	r1, #3
c0de16e6:	e002      	b.n	c0de16ee <swap_check_validity+0x76>
c0de16e8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16ec:	2102      	movs	r1, #2
c0de16ee:	2200      	movs	r2, #0
c0de16f0:	f005 fa03 	bl	c0de6afa <send_swap_error_simple>
c0de16f4:	000002f8 	.word	0x000002f8

c0de16f8 <transaction_deserialize>:
c0de16f8:	b570      	push	{r4, r5, r6, lr}
c0de16fa:	460d      	mov	r5, r1
c0de16fc:	4604      	mov	r4, r0
c0de16fe:	b910      	cbnz	r0, c0de1706 <transaction_deserialize+0xe>
c0de1700:	2001      	movs	r0, #1
c0de1702:	f005 fb47 	bl	c0de6d94 <assert_exit>
c0de1706:	b915      	cbnz	r5, c0de170e <transaction_deserialize+0x16>
c0de1708:	2001      	movs	r0, #1
c0de170a:	f005 fb43 	bl	c0de6d94 <assert_exit>
c0de170e:	6860      	ldr	r0, [r4, #4]
c0de1710:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1714:	d901      	bls.n	c0de171a <transaction_deserialize+0x22>
c0de1716:	20f9      	movs	r0, #249	@ 0xf9
c0de1718:	e04b      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de171a:	4620      	mov	r0, r4
c0de171c:	4629      	mov	r1, r5
c0de171e:	2200      	movs	r2, #0
c0de1720:	f004 fe5c 	bl	c0de63dc <buffer_read_u64>
c0de1724:	b330      	cbz	r0, c0de1774 <transaction_deserialize+0x7c>
c0de1726:	6820      	ldr	r0, [r4, #0]
c0de1728:	68a1      	ldr	r1, [r4, #8]
c0de172a:	4408      	add	r0, r1
c0de172c:	2114      	movs	r1, #20
c0de172e:	61a8      	str	r0, [r5, #24]
c0de1730:	4620      	mov	r0, r4
c0de1732:	f004 fe32 	bl	c0de639a <buffer_seek_cur>
c0de1736:	b1f8      	cbz	r0, c0de1778 <transaction_deserialize+0x80>
c0de1738:	f105 0108 	add.w	r1, r5, #8
c0de173c:	4620      	mov	r0, r4
c0de173e:	2200      	movs	r2, #0
c0de1740:	2600      	movs	r6, #0
c0de1742:	f004 fe4b 	bl	c0de63dc <buffer_read_u64>
c0de1746:	b1c8      	cbz	r0, c0de177c <transaction_deserialize+0x84>
c0de1748:	f105 0120 	add.w	r1, r5, #32
c0de174c:	4620      	mov	r0, r4
c0de174e:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1752:	f004 fe63 	bl	c0de641c <buffer_read_varint>
c0de1756:	6a29      	ldr	r1, [r5, #32]
c0de1758:	b990      	cbnz	r0, c0de1780 <transaction_deserialize+0x88>
c0de175a:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de175c:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1760:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1764:	2300      	movs	r3, #0
c0de1766:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de176a:	eb73 0000 	sbcs.w	r0, r3, r0
c0de176e:	d207      	bcs.n	c0de1780 <transaction_deserialize+0x88>
c0de1770:	20fc      	movs	r0, #252	@ 0xfc
c0de1772:	e01e      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de1774:	20ff      	movs	r0, #255	@ 0xff
c0de1776:	e01c      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de1778:	20fe      	movs	r0, #254	@ 0xfe
c0de177a:	e01a      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de177c:	20fd      	movs	r0, #253	@ 0xfd
c0de177e:	e018      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de1780:	6820      	ldr	r0, [r4, #0]
c0de1782:	68a2      	ldr	r2, [r4, #8]
c0de1784:	4410      	add	r0, r2
c0de1786:	61e8      	str	r0, [r5, #28]
c0de1788:	4620      	mov	r0, r4
c0de178a:	f004 fe06 	bl	c0de639a <buffer_seek_cur>
c0de178e:	b168      	cbz	r0, c0de17ac <transaction_deserialize+0xb4>
c0de1790:	f105 031c 	add.w	r3, r5, #28
c0de1794:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1796:	f000 f80e 	bl	c0de17b6 <transaction_utils_check_encoding>
c0de179a:	b148      	cbz	r0, c0de17b0 <transaction_deserialize+0xb8>
c0de179c:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de17a0:	f06f 0006 	mvn.w	r0, #6
c0de17a4:	428a      	cmp	r2, r1
c0de17a6:	bf08      	it	eq
c0de17a8:	2001      	moveq	r0, #1
c0de17aa:	e002      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de17ac:	20fb      	movs	r0, #251	@ 0xfb
c0de17ae:	e000      	b.n	c0de17b2 <transaction_deserialize+0xba>
c0de17b0:	20fa      	movs	r0, #250	@ 0xfa
c0de17b2:	b240      	sxtb	r0, r0
c0de17b4:	bd70      	pop	{r4, r5, r6, pc}

c0de17b6 <transaction_utils_check_encoding>:
c0de17b6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de17b8:	461c      	mov	r4, r3
c0de17ba:	4615      	mov	r5, r2
c0de17bc:	4606      	mov	r6, r0
c0de17be:	b910      	cbnz	r0, c0de17c6 <transaction_utils_check_encoding+0x10>
c0de17c0:	2001      	movs	r0, #1
c0de17c2:	f005 fae7 	bl	c0de6d94 <assert_exit>
c0de17c6:	2000      	movs	r0, #0
c0de17c8:	2300      	movs	r3, #0
c0de17ca:	4602      	mov	r2, r0
c0de17cc:	1b40      	subs	r0, r0, r5
c0de17ce:	4619      	mov	r1, r3
c0de17d0:	eb73 0004 	sbcs.w	r0, r3, r4
c0de17d4:	d206      	bcs.n	c0de17e4 <transaction_utils_check_encoding+0x2e>
c0de17d6:	56b7      	ldrsb	r7, [r6, r2]
c0de17d8:	1c50      	adds	r0, r2, #1
c0de17da:	f141 0300 	adc.w	r3, r1, #0
c0de17de:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de17e2:	dcf2      	bgt.n	c0de17ca <transaction_utils_check_encoding+0x14>
c0de17e4:	2000      	movs	r0, #0
c0de17e6:	1b52      	subs	r2, r2, r5
c0de17e8:	41a1      	sbcs	r1, r4
c0de17ea:	bf28      	it	cs
c0de17ec:	2001      	movcs	r0, #1
c0de17ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de17f0 <validate_pubkey>:
c0de17f0:	b108      	cbz	r0, c0de17f6 <validate_pubkey+0x6>
c0de17f2:	f7ff be2b 	b.w	c0de144c <helper_send_response_pubkey>
c0de17f6:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de17fa:	f000 b800 	b.w	c0de17fe <io_send_sw>

c0de17fe <io_send_sw>:
c0de17fe:	b580      	push	{r7, lr}
c0de1800:	4602      	mov	r2, r0
c0de1802:	2000      	movs	r0, #0
c0de1804:	2100      	movs	r1, #0
c0de1806:	f005 f825 	bl	c0de6854 <io_send_response_buffers>
c0de180a:	bd80      	pop	{r7, pc}

c0de180c <validate_transaction>:
c0de180c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1810:	b08c      	sub	sp, #48	@ 0x30
c0de1812:	b378      	cbz	r0, c0de1874 <validate_transaction+0x68>
c0de1814:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de18ac <validate_transaction+0xa0>
c0de1818:	2002      	movs	r0, #2
c0de181a:	2500      	movs	r5, #0
c0de181c:	2720      	movs	r7, #32
c0de181e:	2203      	movs	r2, #3
c0de1820:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1824:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1828:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de182c:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de182e:	f809 0008 	strb.w	r0, [r9, r8]
c0de1832:	2048      	movs	r0, #72	@ 0x48
c0de1834:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1836:	eb09 0008 	add.w	r0, r9, r8
c0de183a:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de183e:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1842:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1846:	e9cd 4200 	strd	r4, r2, [sp]
c0de184a:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de184e:	2000      	movs	r0, #0
c0de1850:	9508      	str	r5, [sp, #32]
c0de1852:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1856:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de185a:	2121      	movs	r1, #33	@ 0x21
c0de185c:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1860:	f004 feee 	bl	c0de6640 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1864:	b188      	cbz	r0, c0de188a <validate_transaction+0x7e>
c0de1866:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de186a:	f809 5008 	strb.w	r5, [r9, r8]
c0de186e:	f7ff ffc6 	bl	c0de17fe <io_send_sw>
c0de1872:	e017      	b.n	c0de18a4 <validate_transaction+0x98>
c0de1874:	480d      	ldr	r0, [pc, #52]	@ (c0de18ac <validate_transaction+0xa0>)
c0de1876:	2100      	movs	r1, #0
c0de1878:	f809 1000 	strb.w	r1, [r9, r0]
c0de187c:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1880:	b00c      	add	sp, #48	@ 0x30
c0de1882:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1886:	f7ff bfba 	b.w	c0de17fe <io_send_sw>
c0de188a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de188c:	eb09 0008 	add.w	r0, r9, r8
c0de1890:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de1894:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1898:	f001 0101 	and.w	r1, r1, #1
c0de189c:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de18a0:	f7ff fe02 	bl	c0de14a8 <helper_send_response_sig>
c0de18a4:	b00c      	add	sp, #48	@ 0x30
c0de18a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de18aa:	bf00      	nop
c0de18ac:	00000000 	.word	0x00000000

c0de18b0 <app_quit>:
c0de18b0:	20ff      	movs	r0, #255	@ 0xff
c0de18b2:	f005 fe43 	bl	c0de753c <os_sched_exit>
	...

c0de18b8 <ui_menu_main>:
c0de18b8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de18ba:	4c19      	ldr	r4, [pc, #100]	@ (c0de1920 <ui_menu_main+0x68>)
c0de18bc:	4817      	ldr	r0, [pc, #92]	@ (c0de191c <ui_menu_main+0x64>)
c0de18be:	447c      	add	r4, pc
c0de18c0:	eb09 0500 	add.w	r5, r9, r0
c0de18c4:	f000 f8d8 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de18c8:	2114      	movs	r1, #20
c0de18ca:	7369      	strb	r1, [r5, #13]
c0de18cc:	4915      	ldr	r1, [pc, #84]	@ (c0de1924 <ui_menu_main+0x6c>)
c0de18ce:	4a16      	ldr	r2, [pc, #88]	@ (c0de1928 <ui_menu_main+0x70>)
c0de18d0:	4479      	add	r1, pc
c0de18d2:	447a      	add	r2, pc
c0de18d4:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de18d8:	7800      	ldrb	r0, [r0, #0]
c0de18da:	7328      	strb	r0, [r5, #12]
c0de18dc:	f000 f8cc 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de18e0:	2115      	movs	r1, #21
c0de18e2:	7669      	strb	r1, [r5, #25]
c0de18e4:	4911      	ldr	r1, [pc, #68]	@ (c0de192c <ui_menu_main+0x74>)
c0de18e6:	4a12      	ldr	r2, [pc, #72]	@ (c0de1930 <ui_menu_main+0x78>)
c0de18e8:	4479      	add	r1, pc
c0de18ea:	447a      	add	r2, pc
c0de18ec:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de18f0:	2100      	movs	r1, #0
c0de18f2:	7840      	ldrb	r0, [r0, #1]
c0de18f4:	7628      	strb	r0, [r5, #24]
c0de18f6:	480f      	ldr	r0, [pc, #60]	@ (c0de1934 <ui_menu_main+0x7c>)
c0de18f8:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1938 <ui_menu_main+0x80>)
c0de18fa:	4b10      	ldr	r3, [pc, #64]	@ (c0de193c <ui_menu_main+0x84>)
c0de18fc:	4478      	add	r0, pc
c0de18fe:	447a      	add	r2, pc
c0de1900:	447b      	add	r3, pc
c0de1902:	e9cd 3200 	strd	r3, r2, [sp]
c0de1906:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de190a:	2200      	movs	r2, #0
c0de190c:	23ff      	movs	r3, #255	@ 0xff
c0de190e:	480c      	ldr	r0, [pc, #48]	@ (c0de1940 <ui_menu_main+0x88>)
c0de1910:	490c      	ldr	r1, [pc, #48]	@ (c0de1944 <ui_menu_main+0x8c>)
c0de1912:	4478      	add	r0, pc
c0de1914:	4479      	add	r1, pc
c0de1916:	f003 f837 	bl	c0de4988 <nbgl_useCaseHomeAndSettings>
c0de191a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de191c:	00000340 	.word	0x00000340
c0de1920:	0000753e 	.word	0x0000753e
c0de1924:	00006303 	.word	0x00006303
c0de1928:	0000646a 	.word	0x0000646a
c0de192c:	00006366 	.word	0x00006366
c0de1930:	000061ac 	.word	0x000061ac
c0de1934:	ffffffb1 	.word	0xffffffb1
c0de1938:	00006dfa 	.word	0x00006dfa
c0de193c:	00006dec 	.word	0x00006dec
c0de1940:	000064ae 	.word	0x000064ae
c0de1944:	00005fdb 	.word	0x00005fdb

c0de1948 <controls_callback>:
c0de1948:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de194a:	4c22      	ldr	r4, [pc, #136]	@ (c0de19d4 <controls_callback+0x8c>)
c0de194c:	2815      	cmp	r0, #21
c0de194e:	f809 2004 	strb.w	r2, [r9, r4]
c0de1952:	d011      	beq.n	c0de1978 <controls_callback+0x30>
c0de1954:	2814      	cmp	r0, #20
c0de1956:	d12a      	bne.n	c0de19ae <controls_callback+0x66>
c0de1958:	eb09 0504 	add.w	r5, r9, r4
c0de195c:	4c1e      	ldr	r4, [pc, #120]	@ (c0de19d8 <controls_callback+0x90>)
c0de195e:	447c      	add	r4, pc
c0de1960:	f000 f88a 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de1964:	7800      	ldrb	r0, [r0, #0]
c0de1966:	fab0 f080 	clz	r0, r0
c0de196a:	0940      	lsrs	r0, r0, #5
c0de196c:	7328      	strb	r0, [r5, #12]
c0de196e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1972:	f000 f881 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de1976:	e015      	b.n	c0de19a4 <controls_callback+0x5c>
c0de1978:	4818      	ldr	r0, [pc, #96]	@ (c0de19dc <controls_callback+0x94>)
c0de197a:	4478      	add	r0, pc
c0de197c:	f005 fc18 	bl	c0de71b0 <pic>
c0de1980:	7840      	ldrb	r0, [r0, #1]
c0de1982:	b1a8      	cbz	r0, c0de19b0 <controls_callback+0x68>
c0de1984:	eb09 0504 	add.w	r5, r9, r4
c0de1988:	4c15      	ldr	r4, [pc, #84]	@ (c0de19e0 <controls_callback+0x98>)
c0de198a:	447c      	add	r4, pc
c0de198c:	f000 f874 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de1990:	7840      	ldrb	r0, [r0, #1]
c0de1992:	fab0 f080 	clz	r0, r0
c0de1996:	0940      	lsrs	r0, r0, #5
c0de1998:	7628      	strb	r0, [r5, #24]
c0de199a:	f88d 000f 	strb.w	r0, [sp, #15]
c0de199e:	f000 f86b 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de19a2:	3001      	adds	r0, #1
c0de19a4:	f10d 010f 	add.w	r1, sp, #15
c0de19a8:	2201      	movs	r2, #1
c0de19aa:	f005 fc31 	bl	c0de7210 <nvm_write>
c0de19ae:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de19b0:	480c      	ldr	r0, [pc, #48]	@ (c0de19e4 <controls_callback+0x9c>)
c0de19b2:	490d      	ldr	r1, [pc, #52]	@ (c0de19e8 <controls_callback+0xa0>)
c0de19b4:	4478      	add	r0, pc
c0de19b6:	4479      	add	r1, pc
c0de19b8:	e9cd 1000 	strd	r1, r0, [sp]
c0de19bc:	480b      	ldr	r0, [pc, #44]	@ (c0de19ec <controls_callback+0xa4>)
c0de19be:	490c      	ldr	r1, [pc, #48]	@ (c0de19f0 <controls_callback+0xa8>)
c0de19c0:	4a0c      	ldr	r2, [pc, #48]	@ (c0de19f4 <controls_callback+0xac>)
c0de19c2:	4b0d      	ldr	r3, [pc, #52]	@ (c0de19f8 <controls_callback+0xb0>)
c0de19c4:	4478      	add	r0, pc
c0de19c6:	4479      	add	r1, pc
c0de19c8:	447a      	add	r2, pc
c0de19ca:	447b      	add	r3, pc
c0de19cc:	f003 fc52 	bl	c0de5274 <nbgl_useCaseChoice>
c0de19d0:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de19d2:	bf00      	nop
c0de19d4:	00000340 	.word	0x00000340
c0de19d8:	0000749e 	.word	0x0000749e
c0de19dc:	00007482 	.word	0x00007482
c0de19e0:	00007472 	.word	0x00007472
c0de19e4:	00000045 	.word	0x00000045
c0de19e8:	000062be 	.word	0x000062be
c0de19ec:	000060a5 	.word	0x000060a5
c0de19f0:	000060d0 	.word	0x000060d0
c0de19f4:	00006194 	.word	0x00006194
c0de19f8:	0000637a 	.word	0x0000637a

c0de19fc <review_warning_choice>:
c0de19fc:	b5b0      	push	{r4, r5, r7, lr}
c0de19fe:	b086      	sub	sp, #24
c0de1a00:	b1a8      	cbz	r0, c0de1a2e <review_warning_choice+0x32>
c0de1a02:	4c17      	ldr	r4, [pc, #92]	@ (c0de1a60 <review_warning_choice+0x64>)
c0de1a04:	4815      	ldr	r0, [pc, #84]	@ (c0de1a5c <review_warning_choice+0x60>)
c0de1a06:	447c      	add	r4, pc
c0de1a08:	eb09 0500 	add.w	r5, r9, r0
c0de1a0c:	f000 f834 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de1a10:	7840      	ldrb	r0, [r0, #1]
c0de1a12:	fab0 f080 	clz	r0, r0
c0de1a16:	0940      	lsrs	r0, r0, #5
c0de1a18:	7628      	strb	r0, [r5, #24]
c0de1a1a:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1a1e:	f000 f82b 	bl	c0de1a78 <OUTLINED_FUNCTION_0>
c0de1a22:	3001      	adds	r0, #1
c0de1a24:	f10d 0117 	add.w	r1, sp, #23
c0de1a28:	2201      	movs	r2, #1
c0de1a2a:	f005 fbf1 	bl	c0de7210 <nvm_write>
c0de1a2e:	480b      	ldr	r0, [pc, #44]	@ (c0de1a5c <review_warning_choice+0x60>)
c0de1a30:	2100      	movs	r1, #0
c0de1a32:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1a36:	480b      	ldr	r0, [pc, #44]	@ (c0de1a64 <review_warning_choice+0x68>)
c0de1a38:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1a68 <review_warning_choice+0x6c>)
c0de1a3a:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1a6c <review_warning_choice+0x70>)
c0de1a3c:	4478      	add	r0, pc
c0de1a3e:	447a      	add	r2, pc
c0de1a40:	447c      	add	r4, pc
c0de1a42:	e9cd 4200 	strd	r4, r2, [sp]
c0de1a46:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1a4a:	2200      	movs	r2, #0
c0de1a4c:	4808      	ldr	r0, [pc, #32]	@ (c0de1a70 <review_warning_choice+0x74>)
c0de1a4e:	4909      	ldr	r1, [pc, #36]	@ (c0de1a74 <review_warning_choice+0x78>)
c0de1a50:	4478      	add	r0, pc
c0de1a52:	4479      	add	r1, pc
c0de1a54:	f002 ff98 	bl	c0de4988 <nbgl_useCaseHomeAndSettings>
c0de1a58:	b006      	add	sp, #24
c0de1a5a:	bdb0      	pop	{r4, r5, r7, pc}
c0de1a5c:	00000340 	.word	0x00000340
c0de1a60:	000073f6 	.word	0x000073f6
c0de1a64:	fffffe71 	.word	0xfffffe71
c0de1a68:	00006cba 	.word	0x00006cba
c0de1a6c:	00006cac 	.word	0x00006cac
c0de1a70:	00006370 	.word	0x00006370
c0de1a74:	00005e9d 	.word	0x00005e9d

c0de1a78 <OUTLINED_FUNCTION_0>:
c0de1a78:	4620      	mov	r0, r4
c0de1a7a:	f005 bb99 	b.w	c0de71b0 <pic>
	...

c0de1a80 <ui_display_address>:
c0de1a80:	b570      	push	{r4, r5, r6, lr}
c0de1a82:	b088      	sub	sp, #32
c0de1a84:	4e22      	ldr	r6, [pc, #136]	@ (c0de1b10 <ui_display_address+0x90>)
c0de1a86:	eb09 0106 	add.w	r1, r9, r6
c0de1a8a:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1a8e:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de1a92:	4308      	orrs	r0, r1
c0de1a94:	d12a      	bne.n	c0de1aec <ui_display_address+0x6c>
c0de1a96:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1b14 <ui_display_address+0x94>)
c0de1a98:	212b      	movs	r1, #43	@ 0x2b
c0de1a9a:	eb09 0005 	add.w	r0, r9, r5
c0de1a9e:	f005 fe93 	bl	c0de77c8 <__aeabi_memclr>
c0de1aa2:	ac03      	add	r4, sp, #12
c0de1aa4:	2114      	movs	r1, #20
c0de1aa6:	4620      	mov	r0, r4
c0de1aa8:	f005 fe8e 	bl	c0de77c8 <__aeabi_memclr>
c0de1aac:	eb09 0006 	add.w	r0, r9, r6
c0de1ab0:	4621      	mov	r1, r4
c0de1ab2:	2214      	movs	r2, #20
c0de1ab4:	3008      	adds	r0, #8
c0de1ab6:	f7fe fab7 	bl	c0de0028 <address_from_pubkey>
c0de1aba:	b308      	cbz	r0, c0de1b00 <ui_display_address+0x80>
c0de1abc:	eb09 0205 	add.w	r2, r9, r5
c0de1ac0:	a803      	add	r0, sp, #12
c0de1ac2:	2114      	movs	r1, #20
c0de1ac4:	232b      	movs	r3, #43	@ 0x2b
c0de1ac6:	f004 fe65 	bl	c0de6794 <format_hex>
c0de1aca:	3001      	adds	r0, #1
c0de1acc:	d018      	beq.n	c0de1b00 <ui_display_address+0x80>
c0de1ace:	4812      	ldr	r0, [pc, #72]	@ (c0de1b18 <ui_display_address+0x98>)
c0de1ad0:	2400      	movs	r4, #0
c0de1ad2:	2100      	movs	r1, #0
c0de1ad4:	4478      	add	r0, pc
c0de1ad6:	e9cd 4000 	strd	r4, r0, [sp]
c0de1ada:	eb09 0005 	add.w	r0, r9, r5
c0de1ade:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1b1c <ui_display_address+0x9c>)
c0de1ae0:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1b20 <ui_display_address+0xa0>)
c0de1ae2:	447a      	add	r2, pc
c0de1ae4:	447b      	add	r3, pc
c0de1ae6:	f003 f8a9 	bl	c0de4c3c <nbgl_useCaseAddressReview>
c0de1aea:	e00e      	b.n	c0de1b0a <ui_display_address+0x8a>
c0de1aec:	2000      	movs	r0, #0
c0de1aee:	f809 0006 	strb.w	r0, [r9, r6]
c0de1af2:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1af6:	b008      	add	sp, #32
c0de1af8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1afc:	f000 b812 	b.w	c0de1b24 <io_send_sw>
c0de1b00:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1b04:	f000 f80e 	bl	c0de1b24 <io_send_sw>
c0de1b08:	4604      	mov	r4, r0
c0de1b0a:	4620      	mov	r0, r4
c0de1b0c:	b008      	add	sp, #32
c0de1b0e:	bd70      	pop	{r4, r5, r6, pc}
c0de1b10:	00000000 	.word	0x00000000
c0de1b14:	0000035c 	.word	0x0000035c
c0de1b18:	0000005d 	.word	0x0000005d
c0de1b1c:	00005faa 	.word	0x00005faa
c0de1b20:	000062c9 	.word	0x000062c9

c0de1b24 <io_send_sw>:
c0de1b24:	b580      	push	{r7, lr}
c0de1b26:	4602      	mov	r2, r0
c0de1b28:	2000      	movs	r0, #0
c0de1b2a:	2100      	movs	r1, #0
c0de1b2c:	f004 fe92 	bl	c0de6854 <io_send_response_buffers>
c0de1b30:	bd80      	pop	{r7, pc}
	...

c0de1b34 <review_choice>:
c0de1b34:	b510      	push	{r4, lr}
c0de1b36:	4604      	mov	r4, r0
c0de1b38:	f7ff fe5a 	bl	c0de17f0 <validate_pubkey>
c0de1b3c:	2007      	movs	r0, #7
c0de1b3e:	2c00      	cmp	r4, #0
c0de1b40:	bf18      	it	ne
c0de1b42:	2006      	movne	r0, #6
c0de1b44:	4902      	ldr	r1, [pc, #8]	@ (c0de1b50 <review_choice+0x1c>)
c0de1b46:	4479      	add	r1, pc
c0de1b48:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1b4c:	f003 ba68 	b.w	c0de5020 <nbgl_useCaseReviewStatus>
c0de1b50:	fffffd6f 	.word	0xfffffd6f

c0de1b54 <ui_display_transaction_bs_choice>:
c0de1b54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1b56:	b08d      	sub	sp, #52	@ 0x34
c0de1b58:	4f43      	ldr	r7, [pc, #268]	@ (c0de1c68 <ui_display_transaction_bs_choice+0x114>)
c0de1b5a:	4604      	mov	r4, r0
c0de1b5c:	eb09 0007 	add.w	r0, r9, r7
c0de1b60:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1b64:	2801      	cmp	r0, #1
c0de1b66:	d15d      	bne.n	c0de1c24 <ui_display_transaction_bs_choice+0xd0>
c0de1b68:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1b6c:	2801      	cmp	r0, #1
c0de1b6e:	d159      	bne.n	c0de1c24 <ui_display_transaction_bs_choice+0xd0>
c0de1b70:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1c6c <ui_display_transaction_bs_choice+0x118>)
c0de1b72:	211e      	movs	r1, #30
c0de1b74:	eb09 0006 	add.w	r0, r9, r6
c0de1b78:	3014      	adds	r0, #20
c0de1b7a:	f005 fe25 	bl	c0de77c8 <__aeabi_memclr>
c0de1b7e:	ad05      	add	r5, sp, #20
c0de1b80:	211e      	movs	r1, #30
c0de1b82:	4628      	mov	r0, r5
c0de1b84:	f005 fe20 	bl	c0de77c8 <__aeabi_memclr>
c0de1b88:	eb09 0007 	add.w	r0, r9, r7
c0de1b8c:	211e      	movs	r1, #30
c0de1b8e:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1b92:	2003      	movs	r0, #3
c0de1b94:	9000      	str	r0, [sp, #0]
c0de1b96:	4628      	mov	r0, r5
c0de1b98:	f004 fdb5 	bl	c0de6706 <format_fpu64>
c0de1b9c:	2800      	cmp	r0, #0
c0de1b9e:	d04b      	beq.n	c0de1c38 <ui_display_transaction_bs_choice+0xe4>
c0de1ba0:	9500      	str	r5, [sp, #0]
c0de1ba2:	eb09 0506 	add.w	r5, r9, r6
c0de1ba6:	211e      	movs	r1, #30
c0de1ba8:	231e      	movs	r3, #30
c0de1baa:	4a31      	ldr	r2, [pc, #196]	@ (c0de1c70 <ui_display_transaction_bs_choice+0x11c>)
c0de1bac:	f105 0014 	add.w	r0, r5, #20
c0de1bb0:	447a      	add	r2, pc
c0de1bb2:	f005 f96b 	bl	c0de6e8c <snprintf>
c0de1bb6:	3554      	adds	r5, #84	@ 0x54
c0de1bb8:	212b      	movs	r1, #43	@ 0x2b
c0de1bba:	4628      	mov	r0, r5
c0de1bbc:	f005 fe04 	bl	c0de77c8 <__aeabi_memclr>
c0de1bc0:	eb09 0007 	add.w	r0, r9, r7
c0de1bc4:	2114      	movs	r1, #20
c0de1bc6:	462a      	mov	r2, r5
c0de1bc8:	232b      	movs	r3, #43	@ 0x2b
c0de1bca:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1bce:	f004 fde1 	bl	c0de6794 <format_hex>
c0de1bd2:	3001      	adds	r0, #1
c0de1bd4:	d033      	beq.n	c0de1c3e <ui_display_transaction_bs_choice+0xea>
c0de1bd6:	4927      	ldr	r1, [pc, #156]	@ (c0de1c74 <ui_display_transaction_bs_choice+0x120>)
c0de1bd8:	eb09 0006 	add.w	r0, r9, r6
c0de1bdc:	2500      	movs	r5, #0
c0de1bde:	4602      	mov	r2, r0
c0de1be0:	4479      	add	r1, pc
c0de1be2:	f842 1f34 	str.w	r1, [r2, #52]!
c0de1be6:	f849 2006 	str.w	r2, [r9, r6]
c0de1bea:	2202      	movs	r2, #2
c0de1bec:	4922      	ldr	r1, [pc, #136]	@ (c0de1c78 <ui_display_transaction_bs_choice+0x124>)
c0de1bee:	7202      	strb	r2, [r0, #8]
c0de1bf0:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de1bf4:	7285      	strb	r5, [r0, #10]
c0de1bf6:	4479      	add	r1, pc
c0de1bf8:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1bfc:	f100 0114 	add.w	r1, r0, #20
c0de1c00:	6381      	str	r1, [r0, #56]	@ 0x38
c0de1c02:	481e      	ldr	r0, [pc, #120]	@ (c0de1c7c <ui_display_transaction_bs_choice+0x128>)
c0de1c04:	4478      	add	r0, pc
c0de1c06:	b314      	cbz	r4, c0de1c4e <ui_display_transaction_bs_choice+0xfa>
c0de1c08:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1c0c:	e9cd 5500 	strd	r5, r5, [sp]
c0de1c10:	eb09 0106 	add.w	r1, r9, r6
c0de1c14:	2000      	movs	r0, #0
c0de1c16:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1c80 <ui_display_transaction_bs_choice+0x12c>)
c0de1c18:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1c84 <ui_display_transaction_bs_choice+0x130>)
c0de1c1a:	447a      	add	r2, pc
c0de1c1c:	447b      	add	r3, pc
c0de1c1e:	f002 fffb 	bl	c0de4c18 <nbgl_useCaseReviewBlindSigning>
c0de1c22:	e011      	b.n	c0de1c48 <ui_display_transaction_bs_choice+0xf4>
c0de1c24:	2000      	movs	r0, #0
c0de1c26:	f809 0007 	strb.w	r0, [r9, r7]
c0de1c2a:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1c2e:	b00d      	add	sp, #52	@ 0x34
c0de1c30:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1c34:	f000 b82c 	b.w	c0de1c90 <io_send_sw>
c0de1c38:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1c3c:	e001      	b.n	c0de1c42 <ui_display_transaction_bs_choice+0xee>
c0de1c3e:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1c42:	f000 f825 	bl	c0de1c90 <io_send_sw>
c0de1c46:	4605      	mov	r5, r0
c0de1c48:	4628      	mov	r0, r5
c0de1c4a:	b00d      	add	sp, #52	@ 0x34
c0de1c4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1c4e:	9002      	str	r0, [sp, #8]
c0de1c50:	e9cd 5500 	strd	r5, r5, [sp]
c0de1c54:	eb09 0106 	add.w	r1, r9, r6
c0de1c58:	2000      	movs	r0, #0
c0de1c5a:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1c88 <ui_display_transaction_bs_choice+0x134>)
c0de1c5c:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1c8c <ui_display_transaction_bs_choice+0x138>)
c0de1c5e:	447a      	add	r2, pc
c0de1c60:	447b      	add	r3, pc
c0de1c62:	f002 ff39 	bl	c0de4ad8 <nbgl_useCaseReview>
c0de1c66:	e7ef      	b.n	c0de1c48 <ui_display_transaction_bs_choice+0xf4>
c0de1c68:	00000000 	.word	0x00000000
c0de1c6c:	00000388 	.word	0x00000388
c0de1c70:	00006176 	.word	0x00006176
c0de1c74:	00005f64 	.word	0x00005f64
c0de1c78:	00006139 	.word	0x00006139
c0de1c7c:	00000099 	.word	0x00000099
c0de1c80:	00005e72 	.word	0x00005e72
c0de1c84:	00005e82 	.word	0x00005e82
c0de1c88:	00005e2e 	.word	0x00005e2e
c0de1c8c:	00005e3e 	.word	0x00005e3e

c0de1c90 <io_send_sw>:
c0de1c90:	b580      	push	{r7, lr}
c0de1c92:	4602      	mov	r2, r0
c0de1c94:	2000      	movs	r0, #0
c0de1c96:	2100      	movs	r1, #0
c0de1c98:	f004 fddc 	bl	c0de6854 <io_send_response_buffers>
c0de1c9c:	bd80      	pop	{r7, pc}
	...

c0de1ca0 <review_choice>:
c0de1ca0:	b510      	push	{r4, lr}
c0de1ca2:	4604      	mov	r4, r0
c0de1ca4:	f7ff fdb2 	bl	c0de180c <validate_transaction>
c0de1ca8:	4903      	ldr	r1, [pc, #12]	@ (c0de1cb8 <review_choice+0x18>)
c0de1caa:	f084 0001 	eor.w	r0, r4, #1
c0de1cae:	4479      	add	r1, pc
c0de1cb0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1cb4:	f003 b9b4 	b.w	c0de5020 <nbgl_useCaseReviewStatus>
c0de1cb8:	fffffc07 	.word	0xfffffc07

c0de1cbc <ui_display_blind_signed_transaction>:
c0de1cbc:	2001      	movs	r0, #1
c0de1cbe:	f7ff bf49 	b.w	c0de1b54 <ui_display_transaction_bs_choice>

c0de1cc2 <ui_display_transaction>:
c0de1cc2:	2000      	movs	r0, #0
c0de1cc4:	f7ff bf46 	b.w	c0de1b54 <ui_display_transaction_bs_choice>

c0de1cc8 <zkn_prv_hash>:
c0de1cc8:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ccc:	460c      	mov	r4, r1
c0de1cce:	e9cd 0200 	strd	r0, r2, [sp]
c0de1cd2:	4668      	mov	r0, sp
c0de1cd4:	2101      	movs	r1, #1
c0de1cd6:	2601      	movs	r6, #1
c0de1cd8:	4622      	mov	r2, r4
c0de1cda:	f005 f828 	bl	c0de6d2e <cx_blake2b_512_hash_iovec>
c0de1cde:	4605      	mov	r5, r0
c0de1ce0:	bb18      	cbnz	r0, c0de1d2a <zkn_prv_hash+0x62>
c0de1ce2:	7820      	ldrb	r0, [r4, #0]
c0de1ce4:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1ce8:	7020      	strb	r0, [r4, #0]
c0de1cea:	7fe0      	ldrb	r0, [r4, #31]
c0de1cec:	f366 109f 	bfi	r0, r6, #6, #26
c0de1cf0:	77e0      	strb	r0, [r4, #31]
c0de1cf2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1cf6:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1d30 <zkn_prv_hash+0x68>)
c0de1cf8:	447e      	add	r6, pc
c0de1cfa:	47b0      	blx	r6
c0de1cfc:	4680      	mov	r8, r0
c0de1cfe:	468a      	mov	sl, r1
c0de1d00:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1d04:	47b0      	blx	r6
c0de1d06:	4683      	mov	fp, r0
c0de1d08:	460f      	mov	r7, r1
c0de1d0a:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1d0e:	47b0      	blx	r6
c0de1d10:	e9c4 0100 	strd	r0, r1, [r4]
c0de1d14:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1d18:	47b0      	blx	r6
c0de1d1a:	f104 0208 	add.w	r2, r4, #8
c0de1d1e:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1d22:	f104 0014 	add.w	r0, r4, #20
c0de1d26:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1d2a:	4628      	mov	r0, r5
c0de1d2c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1d30:	00000341 	.word	0x00000341

c0de1d34 <zkn_prv2pub>:
c0de1d34:	b570      	push	{r4, r5, r6, lr}
c0de1d36:	b092      	sub	sp, #72	@ 0x48
c0de1d38:	4614      	mov	r4, r2
c0de1d3a:	6802      	ldr	r2, [r0, #0]
c0de1d3c:	ae02      	add	r6, sp, #8
c0de1d3e:	4605      	mov	r5, r0
c0de1d40:	4608      	mov	r0, r1
c0de1d42:	4631      	mov	r1, r6
c0de1d44:	f7ff ffc0 	bl	c0de1cc8 <zkn_prv_hash>
c0de1d48:	2000      	movs	r0, #0
c0de1d4a:	2100      	movs	r1, #0
c0de1d4c:	2820      	cmp	r0, #32
c0de1d4e:	d009      	beq.n	c0de1d64 <zkn_prv2pub+0x30>
c0de1d50:	5c32      	ldrb	r2, [r6, r0]
c0de1d52:	0149      	lsls	r1, r1, #5
c0de1d54:	0613      	lsls	r3, r2, #24
c0de1d56:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1d5a:	5431      	strb	r1, [r6, r0]
c0de1d5c:	f002 0107 	and.w	r1, r2, #7
c0de1d60:	3001      	adds	r0, #1
c0de1d62:	e7f3      	b.n	c0de1d4c <zkn_prv2pub+0x18>
c0de1d64:	4629      	mov	r1, r5
c0de1d66:	4628      	mov	r0, r5
c0de1d68:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1d6c:	9400      	str	r4, [sp, #0]
c0de1d6e:	aa02      	add	r2, sp, #8
c0de1d70:	f000 ffc8 	bl	c0de2d04 <tEdwards_scalarMul>
c0de1d74:	b918      	cbnz	r0, c0de1d7e <zkn_prv2pub+0x4a>
c0de1d76:	4628      	mov	r0, r5
c0de1d78:	4621      	mov	r1, r4
c0de1d7a:	f000 fefe 	bl	c0de2b7a <tEdwards_normalize>
c0de1d7e:	b012      	add	sp, #72	@ 0x48
c0de1d80:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1d84 <EddsaPoseidon_Sign_final>:
c0de1d84:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1d88:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1d8c:	4605      	mov	r5, r0
c0de1d8e:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1d90:	2820      	cmp	r0, #32
c0de1d92:	d118      	bne.n	c0de1dc6 <EddsaPoseidon_Sign_final+0x42>
c0de1d94:	460f      	mov	r7, r1
c0de1d96:	a982      	add	r1, sp, #520	@ 0x208
c0de1d98:	4628      	mov	r0, r5
c0de1d9a:	461e      	mov	r6, r3
c0de1d9c:	4692      	mov	sl, r2
c0de1d9e:	f000 fbbb 	bl	c0de2518 <tEdwards_alloc>
c0de1da2:	b988      	cbnz	r0, c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1da4:	682a      	ldr	r2, [r5, #0]
c0de1da6:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1da8:	4638      	mov	r0, r7
c0de1daa:	4621      	mov	r1, r4
c0de1dac:	f7ff ff8c 	bl	c0de1cc8 <zkn_prv_hash>
c0de1db0:	b950      	cbnz	r0, c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1db2:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1db6:	2000      	movs	r0, #0
c0de1db8:	a95a      	add	r1, sp, #360	@ 0x168
c0de1dba:	2820      	cmp	r0, #32
c0de1dbc:	d008      	beq.n	c0de1dd0 <EddsaPoseidon_Sign_final+0x4c>
c0de1dbe:	5c22      	ldrb	r2, [r4, r0]
c0de1dc0:	540a      	strb	r2, [r1, r0]
c0de1dc2:	3001      	adds	r0, #1
c0de1dc4:	e7f9      	b.n	c0de1dba <EddsaPoseidon_Sign_final+0x36>
c0de1dc6:	489b      	ldr	r0, [pc, #620]	@ (c0de2034 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1dc8:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1dcc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1dd0:	a812      	add	r0, sp, #72	@ 0x48
c0de1dd2:	2109      	movs	r1, #9
c0de1dd4:	2240      	movs	r2, #64	@ 0x40
c0de1dd6:	f004 ffcb 	bl	c0de6d70 <cx_hash_init_ex>
c0de1dda:	2800      	cmp	r0, #0
c0de1ddc:	d1f4      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1dde:	f104 0120 	add.w	r1, r4, #32
c0de1de2:	a812      	add	r0, sp, #72	@ 0x48
c0de1de4:	2220      	movs	r2, #32
c0de1de6:	f004 ffc8 	bl	c0de6d7a <cx_hash_update>
c0de1dea:	2800      	cmp	r0, #0
c0de1dec:	d1ec      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1dee:	a812      	add	r0, sp, #72	@ 0x48
c0de1df0:	4631      	mov	r1, r6
c0de1df2:	2220      	movs	r2, #32
c0de1df4:	f004 ffc1 	bl	c0de6d7a <cx_hash_update>
c0de1df8:	2800      	cmp	r0, #0
c0de1dfa:	d1e5      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1dfc:	a812      	add	r0, sp, #72	@ 0x48
c0de1dfe:	ac62      	add	r4, sp, #392	@ 0x188
c0de1e00:	4621      	mov	r1, r4
c0de1e02:	f004 ffb0 	bl	c0de6d66 <cx_hash_final>
c0de1e06:	2800      	cmp	r0, #0
c0de1e08:	d1de      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e0a:	203f      	movs	r0, #63	@ 0x3f
c0de1e0c:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1e0e:	1c42      	adds	r2, r0, #1
c0de1e10:	d004      	beq.n	c0de1e1c <EddsaPoseidon_Sign_final+0x98>
c0de1e12:	5c22      	ldrb	r2, [r4, r0]
c0de1e14:	3801      	subs	r0, #1
c0de1e16:	f801 2b01 	strb.w	r2, [r1], #1
c0de1e1a:	e7f8      	b.n	c0de1e0e <EddsaPoseidon_Sign_final+0x8a>
c0de1e1c:	a889      	add	r0, sp, #548	@ 0x224
c0de1e1e:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1e20:	2140      	movs	r1, #64	@ 0x40
c0de1e22:	2340      	movs	r3, #64	@ 0x40
c0de1e24:	f005 fa1a 	bl	c0de725c <cx_bn_alloc_init>
c0de1e28:	2800      	cmp	r0, #0
c0de1e2a:	d1cd      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e2c:	a887      	add	r0, sp, #540	@ 0x21c
c0de1e2e:	2140      	movs	r1, #64	@ 0x40
c0de1e30:	f005 fa0a 	bl	c0de7248 <cx_bn_alloc>
c0de1e34:	2800      	cmp	r0, #0
c0de1e36:	d1c7      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e38:	497f      	ldr	r1, [pc, #508]	@ (c0de2038 <EddsaPoseidon_Sign_final+0x2b4>)
c0de1e3a:	f10d 0808 	add.w	r8, sp, #8
c0de1e3e:	2240      	movs	r2, #64	@ 0x40
c0de1e40:	4640      	mov	r0, r8
c0de1e42:	4479      	add	r1, pc
c0de1e44:	f005 fcb6 	bl	c0de77b4 <__aeabi_memcpy>
c0de1e48:	a888      	add	r0, sp, #544	@ 0x220
c0de1e4a:	2140      	movs	r1, #64	@ 0x40
c0de1e4c:	4642      	mov	r2, r8
c0de1e4e:	2340      	movs	r3, #64	@ 0x40
c0de1e50:	f005 fa04 	bl	c0de725c <cx_bn_alloc_init>
c0de1e54:	2800      	cmp	r0, #0
c0de1e56:	d1b7      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e58:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1e5a:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1e5e:	f005 fa91 	bl	c0de7384 <cx_bn_reduce>
c0de1e62:	2800      	cmp	r0, #0
c0de1e64:	d1b0      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e66:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1e68:	f105 010c 	add.w	r1, r5, #12
c0de1e6c:	ab82      	add	r3, sp, #520	@ 0x208
c0de1e6e:	4628      	mov	r0, r5
c0de1e70:	f000 fee2 	bl	c0de2c38 <tEdwards_scalarMul_bn>
c0de1e74:	2800      	cmp	r0, #0
c0de1e76:	d1a7      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e78:	a982      	add	r1, sp, #520	@ 0x208
c0de1e7a:	4628      	mov	r0, r5
c0de1e7c:	f000 fe7d 	bl	c0de2b7a <tEdwards_normalize>
c0de1e80:	2800      	cmp	r0, #0
c0de1e82:	d1a1      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e84:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1e86:	a952      	add	r1, sp, #328	@ 0x148
c0de1e88:	f000 f8e0 	bl	c0de204c <OUTLINED_FUNCTION_1>
c0de1e8c:	2800      	cmp	r0, #0
c0de1e8e:	d19b      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e90:	a888      	add	r0, sp, #544	@ 0x220
c0de1e92:	f005 f9ef 	bl	c0de7274 <cx_bn_destroy>
c0de1e96:	2800      	cmp	r0, #0
c0de1e98:	d196      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1e9a:	a889      	add	r0, sp, #548	@ 0x224
c0de1e9c:	f005 f9ea 	bl	c0de7274 <cx_bn_destroy>
c0de1ea0:	2800      	cmp	r0, #0
c0de1ea2:	d191      	bne.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1ea4:	a887      	add	r0, sp, #540	@ 0x21c
c0de1ea6:	f005 f9e5 	bl	c0de7274 <cx_bn_destroy>
c0de1eaa:	2800      	cmp	r0, #0
c0de1eac:	f47f af8c 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1eb0:	4628      	mov	r0, r5
c0de1eb2:	f000 fde0 	bl	c0de2a76 <tEdwards_Curve_partial_destroy>
c0de1eb6:	2800      	cmp	r0, #0
c0de1eb8:	f47f af86 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1ebc:	f105 0420 	add.w	r4, r5, #32
c0de1ec0:	a88a      	add	r0, sp, #552	@ 0x228
c0de1ec2:	2105      	movs	r1, #5
c0de1ec4:	2205      	movs	r2, #5
c0de1ec6:	4623      	mov	r3, r4
c0de1ec8:	f001 f842 	bl	c0de2f50 <Poseidon_alloc_init>
c0de1ecc:	2800      	cmp	r0, #0
c0de1ece:	f47f af7b 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1ed2:	201f      	movs	r0, #31
c0de1ed4:	a962      	add	r1, sp, #392	@ 0x188
c0de1ed6:	1c42      	adds	r2, r0, #1
c0de1ed8:	d004      	beq.n	c0de1ee4 <EddsaPoseidon_Sign_final+0x160>
c0de1eda:	5c32      	ldrb	r2, [r6, r0]
c0de1edc:	3801      	subs	r0, #1
c0de1ede:	f801 2b01 	strb.w	r2, [r1], #1
c0de1ee2:	e7f8      	b.n	c0de1ed6 <EddsaPoseidon_Sign_final+0x152>
c0de1ee4:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1ee6:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1ee8:	f005 f9e4 	bl	c0de72b4 <cx_bn_copy>
c0de1eec:	2800      	cmp	r0, #0
c0de1eee:	f47f af6b 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1ef2:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1ef4:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1ef6:	f005 f9dd 	bl	c0de72b4 <cx_bn_copy>
c0de1efa:	2800      	cmp	r0, #0
c0de1efc:	f47f af64 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f00:	f8da 1000 	ldr.w	r1, [sl]
c0de1f04:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1f06:	f005 f9d5 	bl	c0de72b4 <cx_bn_copy>
c0de1f0a:	2800      	cmp	r0, #0
c0de1f0c:	f47f af5c 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f10:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1f14:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1f16:	f005 f9cd 	bl	c0de72b4 <cx_bn_copy>
c0de1f1a:	2800      	cmp	r0, #0
c0de1f1c:	f47f af54 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f20:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1f22:	a962      	add	r1, sp, #392	@ 0x188
c0de1f24:	2220      	movs	r2, #32
c0de1f26:	f005 f9b9 	bl	c0de729c <cx_bn_init>
c0de1f2a:	2800      	cmp	r0, #0
c0de1f2c:	f47f af4c 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f30:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1f32:	4622      	mov	r2, r4
c0de1f34:	4601      	mov	r1, r0
c0de1f36:	f005 fa5b 	bl	c0de73f0 <cx_mont_to_montgomery>
c0de1f3a:	2800      	cmp	r0, #0
c0de1f3c:	f47f af44 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f40:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1f42:	f000 f87f 	bl	c0de2044 <OUTLINED_FUNCTION_0>
c0de1f46:	2800      	cmp	r0, #0
c0de1f48:	f47f af3e 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f4c:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1f4e:	f000 f879 	bl	c0de2044 <OUTLINED_FUNCTION_0>
c0de1f52:	2800      	cmp	r0, #0
c0de1f54:	f47f af38 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f58:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1f5a:	4659      	mov	r1, fp
c0de1f5c:	f000 f876 	bl	c0de204c <OUTLINED_FUNCTION_1>
c0de1f60:	2800      	cmp	r0, #0
c0de1f62:	f47f af31 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f66:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1f68:	f10b 0120 	add.w	r1, fp, #32
c0de1f6c:	f000 f86e 	bl	c0de204c <OUTLINED_FUNCTION_1>
c0de1f70:	2800      	cmp	r0, #0
c0de1f72:	f47f af29 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f76:	a982      	add	r1, sp, #520	@ 0x208
c0de1f78:	4628      	mov	r0, r5
c0de1f7a:	f000 fae2 	bl	c0de2542 <tEdwards_destroy>
c0de1f7e:	2800      	cmp	r0, #0
c0de1f80:	f47f af22 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f84:	a885      	add	r0, sp, #532	@ 0x214
c0de1f86:	2120      	movs	r1, #32
c0de1f88:	f005 f95e 	bl	c0de7248 <cx_bn_alloc>
c0de1f8c:	2800      	cmp	r0, #0
c0de1f8e:	f47f af1b 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1f92:	a88a      	add	r0, sp, #552	@ 0x228
c0de1f94:	aa85      	add	r2, sp, #532	@ 0x214
c0de1f96:	2100      	movs	r1, #0
c0de1f98:	2301      	movs	r3, #1
c0de1f9a:	f001 f83f 	bl	c0de301c <Poseidon>
c0de1f9e:	2800      	cmp	r0, #0
c0de1fa0:	f47f af12 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1fa4:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1fa6:	f000 f84d 	bl	c0de2044 <OUTLINED_FUNCTION_0>
c0de1faa:	2800      	cmp	r0, #0
c0de1fac:	f47f af0c 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1fb0:	a886      	add	r0, sp, #536	@ 0x218
c0de1fb2:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1fb4:	2120      	movs	r1, #32
c0de1fb6:	2320      	movs	r3, #32
c0de1fb8:	f005 f950 	bl	c0de725c <cx_bn_alloc_init>
c0de1fbc:	2800      	cmp	r0, #0
c0de1fbe:	f47f af03 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1fc2:	a801      	add	r0, sp, #4
c0de1fc4:	2120      	movs	r1, #32
c0de1fc6:	f005 f93f 	bl	c0de7248 <cx_bn_alloc>
c0de1fca:	2800      	cmp	r0, #0
c0de1fcc:	f47f aefc 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1fd0:	f108 0220 	add.w	r2, r8, #32
c0de1fd4:	a888      	add	r0, sp, #544	@ 0x220
c0de1fd6:	2120      	movs	r1, #32
c0de1fd8:	2320      	movs	r3, #32
c0de1fda:	f005 f93f 	bl	c0de725c <cx_bn_alloc_init>
c0de1fde:	2800      	cmp	r0, #0
c0de1fe0:	f47f aef2 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1fe4:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1fe6:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1fea:	9801      	ldr	r0, [sp, #4]
c0de1fec:	f005 f9be 	bl	c0de736c <cx_bn_mod_mul>
c0de1ff0:	2800      	cmp	r0, #0
c0de1ff2:	f47f aee9 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de1ff6:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1ff8:	a952      	add	r1, sp, #328	@ 0x148
c0de1ffa:	2220      	movs	r2, #32
c0de1ffc:	f005 f94e 	bl	c0de729c <cx_bn_init>
c0de2000:	2800      	cmp	r0, #0
c0de2002:	f47f aee1 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de2006:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2008:	9a01      	ldr	r2, [sp, #4]
c0de200a:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de200e:	f005 f995 	bl	c0de733c <cx_bn_mod_add>
c0de2012:	2800      	cmp	r0, #0
c0de2014:	f47f aed8 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de2018:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de201a:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de201e:	f005 f9b1 	bl	c0de7384 <cx_bn_reduce>
c0de2022:	2800      	cmp	r0, #0
c0de2024:	f47f aed0 	bne.w	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de2028:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de202a:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de202e:	f000 f80d 	bl	c0de204c <OUTLINED_FUNCTION_1>
c0de2032:	e6c9      	b.n	c0de1dc8 <EddsaPoseidon_Sign_final+0x44>
c0de2034:	5a4b4e03 	.word	0x5a4b4e03
c0de2038:	0000690e 	.word	0x0000690e

c0de203c <rev64>:
c0de203c:	ba0a      	rev	r2, r1
c0de203e:	ba01      	rev	r1, r0
c0de2040:	4610      	mov	r0, r2
c0de2042:	4770      	bx	lr

c0de2044 <OUTLINED_FUNCTION_0>:
c0de2044:	4622      	mov	r2, r4
c0de2046:	4601      	mov	r1, r0
c0de2048:	f005 b9de 	b.w	c0de7408 <cx_mont_from_montgomery>

c0de204c <OUTLINED_FUNCTION_1>:
c0de204c:	2220      	movs	r2, #32
c0de204e:	f005 b945 	b.w	c0de72dc <cx_bn_export>

c0de2052 <zkn_frost_interpolate>:
c0de2052:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de2056:	b085      	sub	sp, #20
c0de2058:	460e      	mov	r6, r1
c0de205a:	4607      	mov	r7, r0
c0de205c:	a803      	add	r0, sp, #12
c0de205e:	2120      	movs	r1, #32
c0de2060:	f000 fa50 	bl	c0de2504 <OUTLINED_FUNCTION_2>
c0de2064:	b988      	cbnz	r0, c0de208a <zkn_frost_interpolate+0x38>
c0de2066:	a802      	add	r0, sp, #8
c0de2068:	f000 fa53 	bl	c0de2512 <OUTLINED_FUNCTION_4>
c0de206c:	b968      	cbnz	r0, c0de208a <zkn_frost_interpolate+0x38>
c0de206e:	a801      	add	r0, sp, #4
c0de2070:	f000 fa4f 	bl	c0de2512 <OUTLINED_FUNCTION_4>
c0de2074:	b948      	cbnz	r0, c0de208a <zkn_frost_interpolate+0x38>
c0de2076:	9803      	ldr	r0, [sp, #12]
c0de2078:	2101      	movs	r1, #1
c0de207a:	f005 f925 	bl	c0de72c8 <cx_bn_set_u32>
c0de207e:	b920      	cbnz	r0, c0de208a <zkn_frost_interpolate+0x38>
c0de2080:	9802      	ldr	r0, [sp, #8]
c0de2082:	2101      	movs	r1, #1
c0de2084:	f005 f920 	bl	c0de72c8 <cx_bn_set_u32>
c0de2088:	b110      	cbz	r0, c0de2090 <zkn_frost_interpolate+0x3e>
c0de208a:	b005      	add	sp, #20
c0de208c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2090:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2094:	f10d 0a10 	add.w	sl, sp, #16
c0de2098:	b31e      	cbz	r6, c0de20e2 <zkn_frost_interpolate+0x90>
c0de209a:	6838      	ldr	r0, [r7, #0]
c0de209c:	4629      	mov	r1, r5
c0de209e:	4652      	mov	r2, sl
c0de20a0:	f005 f928 	bl	c0de72f4 <cx_bn_cmp>
c0de20a4:	2800      	cmp	r0, #0
c0de20a6:	d1f0      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de20a8:	9804      	ldr	r0, [sp, #16]
c0de20aa:	b1b8      	cbz	r0, c0de20dc <zkn_frost_interpolate+0x8a>
c0de20ac:	9802      	ldr	r0, [sp, #8]
c0de20ae:	683a      	ldr	r2, [r7, #0]
c0de20b0:	4623      	mov	r3, r4
c0de20b2:	4601      	mov	r1, r0
c0de20b4:	f005 f95a 	bl	c0de736c <cx_bn_mod_mul>
c0de20b8:	2800      	cmp	r0, #0
c0de20ba:	d1e6      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de20bc:	6839      	ldr	r1, [r7, #0]
c0de20be:	9801      	ldr	r0, [sp, #4]
c0de20c0:	462a      	mov	r2, r5
c0de20c2:	4623      	mov	r3, r4
c0de20c4:	f005 f946 	bl	c0de7354 <cx_bn_mod_sub>
c0de20c8:	2800      	cmp	r0, #0
c0de20ca:	d1de      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de20cc:	9803      	ldr	r0, [sp, #12]
c0de20ce:	9a01      	ldr	r2, [sp, #4]
c0de20d0:	4623      	mov	r3, r4
c0de20d2:	4601      	mov	r1, r0
c0de20d4:	f005 f94a 	bl	c0de736c <cx_bn_mod_mul>
c0de20d8:	2800      	cmp	r0, #0
c0de20da:	d1d6      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de20dc:	3704      	adds	r7, #4
c0de20de:	3e01      	subs	r6, #1
c0de20e0:	e7da      	b.n	c0de2098 <zkn_frost_interpolate+0x46>
c0de20e2:	9903      	ldr	r1, [sp, #12]
c0de20e4:	4640      	mov	r0, r8
c0de20e6:	4622      	mov	r2, r4
c0de20e8:	f005 f958 	bl	c0de739c <cx_bn_mod_invert_nprime>
c0de20ec:	2800      	cmp	r0, #0
c0de20ee:	d1cc      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de20f0:	9a02      	ldr	r2, [sp, #8]
c0de20f2:	4640      	mov	r0, r8
c0de20f4:	4641      	mov	r1, r8
c0de20f6:	4623      	mov	r3, r4
c0de20f8:	f005 f938 	bl	c0de736c <cx_bn_mod_mul>
c0de20fc:	2800      	cmp	r0, #0
c0de20fe:	d1c4      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de2100:	a803      	add	r0, sp, #12
c0de2102:	f005 f8b7 	bl	c0de7274 <cx_bn_destroy>
c0de2106:	2800      	cmp	r0, #0
c0de2108:	d1bf      	bne.n	c0de208a <zkn_frost_interpolate+0x38>
c0de210a:	a802      	add	r0, sp, #8
c0de210c:	f005 f8b2 	bl	c0de7274 <cx_bn_destroy>
c0de2110:	e7bb      	b.n	c0de208a <zkn_frost_interpolate+0x38>

c0de2112 <zkn_frost_interpolate_secrets>:
c0de2112:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de2116:	460f      	mov	r7, r1
c0de2118:	4606      	mov	r6, r0
c0de211a:	a802      	add	r0, sp, #8
c0de211c:	2120      	movs	r1, #32
c0de211e:	461c      	mov	r4, r3
c0de2120:	4692      	mov	sl, r2
c0de2122:	f005 f891 	bl	c0de7248 <cx_bn_alloc>
c0de2126:	b108      	cbz	r0, c0de212c <zkn_frost_interpolate_secrets+0x1a>
c0de2128:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de212c:	a801      	add	r0, sp, #4
c0de212e:	f000 f9f0 	bl	c0de2512 <OUTLINED_FUNCTION_4>
c0de2132:	2800      	cmp	r0, #0
c0de2134:	d1f8      	bne.n	c0de2128 <zkn_frost_interpolate_secrets+0x16>
c0de2136:	9802      	ldr	r0, [sp, #8]
c0de2138:	2100      	movs	r1, #0
c0de213a:	f005 f8c5 	bl	c0de72c8 <cx_bn_set_u32>
c0de213e:	2800      	cmp	r0, #0
c0de2140:	d1f2      	bne.n	c0de2128 <zkn_frost_interpolate_secrets+0x16>
c0de2142:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2146:	2500      	movs	r5, #0
c0de2148:	42ac      	cmp	r4, r5
c0de214a:	d01d      	beq.n	c0de2188 <zkn_frost_interpolate_secrets+0x76>
c0de214c:	9801      	ldr	r0, [sp, #4]
c0de214e:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de2152:	68b3      	ldr	r3, [r6, #8]
c0de2154:	4621      	mov	r1, r4
c0de2156:	9000      	str	r0, [sp, #0]
c0de2158:	4638      	mov	r0, r7
c0de215a:	f7ff ff7a 	bl	c0de2052 <zkn_frost_interpolate>
c0de215e:	2800      	cmp	r0, #0
c0de2160:	d1e2      	bne.n	c0de2128 <zkn_frost_interpolate_secrets+0x16>
c0de2162:	9801      	ldr	r0, [sp, #4]
c0de2164:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2168:	68b3      	ldr	r3, [r6, #8]
c0de216a:	4601      	mov	r1, r0
c0de216c:	f005 f8fe 	bl	c0de736c <cx_bn_mod_mul>
c0de2170:	2800      	cmp	r0, #0
c0de2172:	d1d9      	bne.n	c0de2128 <zkn_frost_interpolate_secrets+0x16>
c0de2174:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de2178:	68b3      	ldr	r3, [r6, #8]
c0de217a:	4601      	mov	r1, r0
c0de217c:	f005 f8de 	bl	c0de733c <cx_bn_mod_add>
c0de2180:	3501      	adds	r5, #1
c0de2182:	2800      	cmp	r0, #0
c0de2184:	d0e0      	beq.n	c0de2148 <zkn_frost_interpolate_secrets+0x36>
c0de2186:	e7cf      	b.n	c0de2128 <zkn_frost_interpolate_secrets+0x16>
c0de2188:	68b2      	ldr	r2, [r6, #8]
c0de218a:	9902      	ldr	r1, [sp, #8]
c0de218c:	4640      	mov	r0, r8
c0de218e:	f005 f8f9 	bl	c0de7384 <cx_bn_reduce>
c0de2192:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de2196 <zkn_evalshare>:
c0de2196:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de219a:	460e      	mov	r6, r1
c0de219c:	6801      	ldr	r1, [r0, #0]
c0de219e:	4607      	mov	r7, r0
c0de21a0:	a801      	add	r0, sp, #4
c0de21a2:	f000 f9af 	bl	c0de2504 <OUTLINED_FUNCTION_2>
c0de21a6:	b108      	cbz	r0, c0de21ac <zkn_evalshare+0x16>
c0de21a8:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de21ac:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de21b0:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de21b4:	4640      	mov	r0, r8
c0de21b6:	f005 f87d 	bl	c0de72b4 <cx_bn_copy>
c0de21ba:	2800      	cmp	r0, #0
c0de21bc:	d1f4      	bne.n	c0de21a8 <zkn_evalshare+0x12>
c0de21be:	3e04      	subs	r6, #4
c0de21c0:	68bb      	ldr	r3, [r7, #8]
c0de21c2:	9801      	ldr	r0, [sp, #4]
c0de21c4:	4641      	mov	r1, r8
c0de21c6:	b17d      	cbz	r5, c0de21e8 <zkn_evalshare+0x52>
c0de21c8:	4622      	mov	r2, r4
c0de21ca:	f005 f8cf 	bl	c0de736c <cx_bn_mod_mul>
c0de21ce:	2800      	cmp	r0, #0
c0de21d0:	d1ea      	bne.n	c0de21a8 <zkn_evalshare+0x12>
c0de21d2:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de21d6:	68bb      	ldr	r3, [r7, #8]
c0de21d8:	9901      	ldr	r1, [sp, #4]
c0de21da:	4640      	mov	r0, r8
c0de21dc:	f005 f8ae 	bl	c0de733c <cx_bn_mod_add>
c0de21e0:	3d01      	subs	r5, #1
c0de21e2:	2800      	cmp	r0, #0
c0de21e4:	d0ec      	beq.n	c0de21c0 <zkn_evalshare+0x2a>
c0de21e6:	e7df      	b.n	c0de21a8 <zkn_evalshare+0x12>
c0de21e8:	461a      	mov	r2, r3
c0de21ea:	f005 f8cb 	bl	c0de7384 <cx_bn_reduce>
c0de21ee:	2800      	cmp	r0, #0
c0de21f0:	d1da      	bne.n	c0de21a8 <zkn_evalshare+0x12>
c0de21f2:	9901      	ldr	r1, [sp, #4]
c0de21f4:	4640      	mov	r0, r8
c0de21f6:	f005 f85d 	bl	c0de72b4 <cx_bn_copy>
c0de21fa:	2800      	cmp	r0, #0
c0de21fc:	d1d4      	bne.n	c0de21a8 <zkn_evalshare+0x12>
c0de21fe:	a801      	add	r0, sp, #4
c0de2200:	f005 f838 	bl	c0de7274 <cx_bn_destroy>
c0de2204:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2208 <zkn_encode_group_commitmentHash>:
c0de2208:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de220c:	b0d6      	sub	sp, #344	@ 0x158
c0de220e:	4606      	mov	r6, r0
c0de2210:	a816      	add	r0, sp, #88	@ 0x58
c0de2212:	461c      	mov	r4, r3
c0de2214:	4615      	mov	r5, r2
c0de2216:	460f      	mov	r7, r1
c0de2218:	f001 f88a 	bl	c0de3330 <zkn_frost_H5_init>
c0de221c:	b110      	cbz	r0, c0de2224 <zkn_encode_group_commitmentHash+0x1c>
c0de221e:	b056      	add	sp, #344	@ 0x158
c0de2220:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2224:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2228:	9401      	str	r4, [sp, #4]
c0de222a:	a806      	add	r0, sp, #24
c0de222c:	f04f 0a00 	mov.w	sl, #0
c0de2230:	f04f 0b02 	mov.w	fp, #2
c0de2234:	2604      	movs	r6, #4
c0de2236:	2400      	movs	r4, #0
c0de2238:	9502      	str	r5, [sp, #8]
c0de223a:	f1a0 0801 	sub.w	r8, r0, #1
c0de223e:	42ac      	cmp	r4, r5
c0de2240:	d058      	beq.n	c0de22f4 <zkn_encode_group_commitmentHash+0xec>
c0de2242:	9805      	ldr	r0, [sp, #20]
c0de2244:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2248:	9103      	str	r1, [sp, #12]
c0de224a:	6805      	ldr	r5, [r0, #0]
c0de224c:	9804      	ldr	r0, [sp, #16]
c0de224e:	fb05 000a 	mla	r0, r5, sl, r0
c0de2252:	4629      	mov	r1, r5
c0de2254:	b129      	cbz	r1, c0de2262 <zkn_encode_group_commitmentHash+0x5a>
c0de2256:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de225a:	f808 2001 	strb.w	r2, [r8, r1]
c0de225e:	3901      	subs	r1, #1
c0de2260:	e7f8      	b.n	c0de2254 <zkn_encode_group_commitmentHash+0x4c>
c0de2262:	a816      	add	r0, sp, #88	@ 0x58
c0de2264:	a906      	add	r1, sp, #24
c0de2266:	462a      	mov	r2, r5
c0de2268:	f001 f87c 	bl	c0de3364 <zkn_frost_hash_update>
c0de226c:	2800      	cmp	r0, #0
c0de226e:	d1d6      	bne.n	c0de221e <zkn_encode_group_commitmentHash+0x16>
c0de2270:	9803      	ldr	r0, [sp, #12]
c0de2272:	9f04      	ldr	r7, [sp, #16]
c0de2274:	1c43      	adds	r3, r0, #1
c0de2276:	9805      	ldr	r0, [sp, #20]
c0de2278:	fb05 710b 	mla	r1, r5, fp, r7
c0de227c:	6802      	ldr	r2, [r0, #0]
c0de227e:	1e50      	subs	r0, r2, #1
c0de2280:	4615      	mov	r5, r2
c0de2282:	fb02 0303 	mla	r3, r2, r3, r0
c0de2286:	5cfb      	ldrb	r3, [r7, r3]
c0de2288:	b12d      	cbz	r5, c0de2296 <zkn_encode_group_commitmentHash+0x8e>
c0de228a:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de228e:	f808 7005 	strb.w	r7, [r8, r5]
c0de2292:	3d01      	subs	r5, #1
c0de2294:	e7f8      	b.n	c0de2288 <zkn_encode_group_commitmentHash+0x80>
c0de2296:	a906      	add	r1, sp, #24
c0de2298:	5c0d      	ldrb	r5, [r1, r0]
c0de229a:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de229e:	540b      	strb	r3, [r1, r0]
c0de22a0:	a816      	add	r0, sp, #88	@ 0x58
c0de22a2:	f001 f85f 	bl	c0de3364 <zkn_frost_hash_update>
c0de22a6:	2800      	cmp	r0, #0
c0de22a8:	d1b9      	bne.n	c0de221e <zkn_encode_group_commitmentHash+0x16>
c0de22aa:	9805      	ldr	r0, [sp, #20]
c0de22ac:	9d04      	ldr	r5, [sp, #16]
c0de22ae:	6802      	ldr	r2, [r0, #0]
c0de22b0:	9803      	ldr	r0, [sp, #12]
c0de22b2:	1cc3      	adds	r3, r0, #3
c0de22b4:	1e50      	subs	r0, r2, #1
c0de22b6:	fb02 5106 	mla	r1, r2, r6, r5
c0de22ba:	fb02 0303 	mla	r3, r2, r3, r0
c0de22be:	5ceb      	ldrb	r3, [r5, r3]
c0de22c0:	4615      	mov	r5, r2
c0de22c2:	b12d      	cbz	r5, c0de22d0 <zkn_encode_group_commitmentHash+0xc8>
c0de22c4:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de22c8:	f808 7005 	strb.w	r7, [r8, r5]
c0de22cc:	3d01      	subs	r5, #1
c0de22ce:	e7f8      	b.n	c0de22c2 <zkn_encode_group_commitmentHash+0xba>
c0de22d0:	a906      	add	r1, sp, #24
c0de22d2:	5c0d      	ldrb	r5, [r1, r0]
c0de22d4:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de22d8:	540b      	strb	r3, [r1, r0]
c0de22da:	a816      	add	r0, sp, #88	@ 0x58
c0de22dc:	f001 f842 	bl	c0de3364 <zkn_frost_hash_update>
c0de22e0:	3605      	adds	r6, #5
c0de22e2:	3401      	adds	r4, #1
c0de22e4:	9d02      	ldr	r5, [sp, #8]
c0de22e6:	f10b 0b05 	add.w	fp, fp, #5
c0de22ea:	f10a 0a05 	add.w	sl, sl, #5
c0de22ee:	2800      	cmp	r0, #0
c0de22f0:	d0a5      	beq.n	c0de223e <zkn_encode_group_commitmentHash+0x36>
c0de22f2:	e794      	b.n	c0de221e <zkn_encode_group_commitmentHash+0x16>
c0de22f4:	9805      	ldr	r0, [sp, #20]
c0de22f6:	6881      	ldr	r1, [r0, #8]
c0de22f8:	a816      	add	r0, sp, #88	@ 0x58
c0de22fa:	9a01      	ldr	r2, [sp, #4]
c0de22fc:	f001 f834 	bl	c0de3368 <zkn_frost_hash_final>
c0de2300:	e78d      	b.n	c0de221e <zkn_encode_group_commitmentHash+0x16>

c0de2302 <zkn_compute_group_commitment>:
c0de2302:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2306:	b088      	sub	sp, #32
c0de2308:	460d      	mov	r5, r1
c0de230a:	a905      	add	r1, sp, #20
c0de230c:	461f      	mov	r7, r3
c0de230e:	4692      	mov	sl, r2
c0de2310:	4604      	mov	r4, r0
c0de2312:	f000 f901 	bl	c0de2518 <tEdwards_alloc>
c0de2316:	b948      	cbnz	r0, c0de232c <zkn_compute_group_commitment+0x2a>
c0de2318:	a902      	add	r1, sp, #8
c0de231a:	4620      	mov	r0, r4
c0de231c:	f000 f8fc 	bl	c0de2518 <tEdwards_alloc>
c0de2320:	b920      	cbnz	r0, c0de232c <zkn_compute_group_commitment+0x2a>
c0de2322:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2324:	4620      	mov	r0, r4
c0de2326:	f000 fbef 	bl	c0de2b08 <tEdwards_SetNeutral>
c0de232a:	b110      	cbz	r0, c0de2332 <zkn_compute_group_commitment+0x30>
c0de232c:	b008      	add	sp, #32
c0de232e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2332:	ae05      	add	r6, sp, #20
c0de2334:	f04f 0800 	mov.w	r8, #0
c0de2338:	f04f 0b04 	mov.w	fp, #4
c0de233c:	9501      	str	r5, [sp, #4]
c0de233e:	4547      	cmp	r7, r8
c0de2340:	d041      	beq.n	c0de23c6 <zkn_compute_group_commitment+0xc4>
c0de2342:	6822      	ldr	r2, [r4, #0]
c0de2344:	f1ab 0003 	sub.w	r0, fp, #3
c0de2348:	4633      	mov	r3, r6
c0de234a:	fb02 5100 	mla	r1, r2, r0, r5
c0de234e:	f1ab 0002 	sub.w	r0, fp, #2
c0de2352:	fb02 5200 	mla	r2, r2, r0, r5
c0de2356:	4620      	mov	r0, r4
c0de2358:	f000 fb4e 	bl	c0de29f8 <tEdwards_init>
c0de235c:	2800      	cmp	r0, #0
c0de235e:	d1e5      	bne.n	c0de232c <zkn_compute_group_commitment+0x2a>
c0de2360:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2362:	4620      	mov	r0, r4
c0de2364:	4632      	mov	r2, r6
c0de2366:	460b      	mov	r3, r1
c0de2368:	f000 f967 	bl	c0de263a <tEdwards_add>
c0de236c:	2800      	cmp	r0, #0
c0de236e:	d1dd      	bne.n	c0de232c <zkn_compute_group_commitment+0x2a>
c0de2370:	6822      	ldr	r2, [r4, #0]
c0de2372:	f1ab 0001 	sub.w	r0, fp, #1
c0de2376:	4633      	mov	r3, r6
c0de2378:	fb02 5100 	mla	r1, r2, r0, r5
c0de237c:	fb02 520b 	mla	r2, r2, fp, r5
c0de2380:	4620      	mov	r0, r4
c0de2382:	f000 fb39 	bl	c0de29f8 <tEdwards_init>
c0de2386:	2800      	cmp	r0, #0
c0de2388:	d1d0      	bne.n	c0de232c <zkn_compute_group_commitment+0x2a>
c0de238a:	6823      	ldr	r3, [r4, #0]
c0de238c:	4650      	mov	r0, sl
c0de238e:	f10d 0a08 	add.w	sl, sp, #8
c0de2392:	4631      	mov	r1, r6
c0de2394:	4605      	mov	r5, r0
c0de2396:	f8cd a000 	str.w	sl, [sp]
c0de239a:	fb03 0208 	mla	r2, r3, r8, r0
c0de239e:	4620      	mov	r0, r4
c0de23a0:	f000 fcb0 	bl	c0de2d04 <tEdwards_scalarMul>
c0de23a4:	2800      	cmp	r0, #0
c0de23a6:	d1c1      	bne.n	c0de232c <zkn_compute_group_commitment+0x2a>
c0de23a8:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de23aa:	4620      	mov	r0, r4
c0de23ac:	4652      	mov	r2, sl
c0de23ae:	460b      	mov	r3, r1
c0de23b0:	f000 f943 	bl	c0de263a <tEdwards_add>
c0de23b4:	46aa      	mov	sl, r5
c0de23b6:	9d01      	ldr	r5, [sp, #4]
c0de23b8:	f10b 0b05 	add.w	fp, fp, #5
c0de23bc:	f108 0801 	add.w	r8, r8, #1
c0de23c0:	2800      	cmp	r0, #0
c0de23c2:	d0bc      	beq.n	c0de233e <zkn_compute_group_commitment+0x3c>
c0de23c4:	e7b2      	b.n	c0de232c <zkn_compute_group_commitment+0x2a>
c0de23c6:	a905      	add	r1, sp, #20
c0de23c8:	f000 f8a0 	bl	c0de250c <OUTLINED_FUNCTION_3>
c0de23cc:	2800      	cmp	r0, #0
c0de23ce:	d1ad      	bne.n	c0de232c <zkn_compute_group_commitment+0x2a>
c0de23d0:	a902      	add	r1, sp, #8
c0de23d2:	f000 f89b 	bl	c0de250c <OUTLINED_FUNCTION_3>
c0de23d6:	e7a9      	b.n	c0de232c <zkn_compute_group_commitment+0x2a>

c0de23d8 <zkn_compute_binding_factors>:
c0de23d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de23dc:	b0f4      	sub	sp, #464	@ 0x1d0
c0de23de:	460e      	mov	r6, r1
c0de23e0:	6801      	ldr	r1, [r0, #0]
c0de23e2:	4607      	mov	r7, r0
c0de23e4:	a873      	add	r0, sp, #460	@ 0x1cc
c0de23e6:	f000 f88d 	bl	c0de2504 <OUTLINED_FUNCTION_2>
c0de23ea:	b9f0      	cbnz	r0, c0de242a <zkn_compute_binding_factors+0x52>
c0de23ec:	6839      	ldr	r1, [r7, #0]
c0de23ee:	a872      	add	r0, sp, #456	@ 0x1c8
c0de23f0:	f004 ff2a 	bl	c0de7248 <cx_bn_alloc>
c0de23f4:	b9c8      	cbnz	r0, c0de242a <zkn_compute_binding_factors+0x52>
c0de23f6:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de23fa:	68ba      	ldr	r2, [r7, #8]
c0de23fc:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de23fe:	f000 ff4b 	bl	c0de3298 <Babyfrost_H4>
c0de2402:	b990      	cbnz	r0, c0de242a <zkn_compute_binding_factors+0x52>
c0de2404:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2406:	4638      	mov	r0, r7
c0de2408:	4629      	mov	r1, r5
c0de240a:	4622      	mov	r2, r4
c0de240c:	f7ff fefc 	bl	c0de2208 <zkn_encode_group_commitmentHash>
c0de2410:	b958      	cbnz	r0, c0de242a <zkn_compute_binding_factors+0x52>
c0de2412:	683a      	ldr	r2, [r7, #0]
c0de2414:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2416:	a912      	add	r1, sp, #72	@ 0x48
c0de2418:	f004 ff60 	bl	c0de72dc <cx_bn_export>
c0de241c:	b928      	cbnz	r0, c0de242a <zkn_compute_binding_factors+0x52>
c0de241e:	683a      	ldr	r2, [r7, #0]
c0de2420:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de2422:	a902      	add	r1, sp, #8
c0de2424:	f004 ff5a 	bl	c0de72dc <cx_bn_export>
c0de2428:	b110      	cbz	r0, c0de2430 <zkn_compute_binding_factors+0x58>
c0de242a:	b074      	add	sp, #464	@ 0x1d0
c0de242c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2430:	2000      	movs	r0, #0
c0de2432:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de2436:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de243a:	f04f 0800 	mov.w	r8, #0
c0de243e:	9000      	str	r0, [sp, #0]
c0de2440:	4544      	cmp	r4, r8
c0de2442:	d043      	beq.n	c0de24cc <zkn_compute_binding_factors+0xf4>
c0de2444:	6839      	ldr	r1, [r7, #0]
c0de2446:	a801      	add	r0, sp, #4
c0de2448:	f004 fefe 	bl	c0de7248 <cx_bn_alloc>
c0de244c:	2800      	cmp	r0, #0
c0de244e:	d1ec      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de2450:	4650      	mov	r0, sl
c0de2452:	f000 ff53 	bl	c0de32fc <zkn_frost_H1_init>
c0de2456:	2800      	cmp	r0, #0
c0de2458:	d1e7      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de245a:	6839      	ldr	r1, [r7, #0]
c0de245c:	4630      	mov	r0, r6
c0de245e:	465a      	mov	r2, fp
c0de2460:	f000 f845 	bl	c0de24ee <OUTLINED_FUNCTION_0>
c0de2464:	2800      	cmp	r0, #0
c0de2466:	d1e0      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de2468:	6839      	ldr	r1, [r7, #0]
c0de246a:	a812      	add	r0, sp, #72	@ 0x48
c0de246c:	465a      	mov	r2, fp
c0de246e:	f000 f83e 	bl	c0de24ee <OUTLINED_FUNCTION_0>
c0de2472:	2800      	cmp	r0, #0
c0de2474:	d1d9      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de2476:	6839      	ldr	r1, [r7, #0]
c0de2478:	a802      	add	r0, sp, #8
c0de247a:	465a      	mov	r2, fp
c0de247c:	f000 f837 	bl	c0de24ee <OUTLINED_FUNCTION_0>
c0de2480:	2800      	cmp	r0, #0
c0de2482:	d1d2      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de2484:	6839      	ldr	r1, [r7, #0]
c0de2486:	9800      	ldr	r0, [sp, #0]
c0de2488:	465a      	mov	r2, fp
c0de248a:	fb00 5001 	mla	r0, r0, r1, r5
c0de248e:	f000 f82e 	bl	c0de24ee <OUTLINED_FUNCTION_0>
c0de2492:	2800      	cmp	r0, #0
c0de2494:	d1c9      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de2496:	68b9      	ldr	r1, [r7, #8]
c0de2498:	9a01      	ldr	r2, [sp, #4]
c0de249a:	4650      	mov	r0, sl
c0de249c:	f000 ff64 	bl	c0de3368 <zkn_frost_hash_final>
c0de24a0:	2800      	cmp	r0, #0
c0de24a2:	d1c2      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de24a4:	683a      	ldr	r2, [r7, #0]
c0de24a6:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de24a8:	fb02 0108 	mla	r1, r2, r8, r0
c0de24ac:	9801      	ldr	r0, [sp, #4]
c0de24ae:	f004 ff15 	bl	c0de72dc <cx_bn_export>
c0de24b2:	2800      	cmp	r0, #0
c0de24b4:	d1b9      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de24b6:	a801      	add	r0, sp, #4
c0de24b8:	f004 fedc 	bl	c0de7274 <cx_bn_destroy>
c0de24bc:	2800      	cmp	r0, #0
c0de24be:	d1b4      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de24c0:	9800      	ldr	r0, [sp, #0]
c0de24c2:	f108 0801 	add.w	r8, r8, #1
c0de24c6:	3005      	adds	r0, #5
c0de24c8:	9000      	str	r0, [sp, #0]
c0de24ca:	e7b9      	b.n	c0de2440 <zkn_compute_binding_factors+0x68>
c0de24cc:	a873      	add	r0, sp, #460	@ 0x1cc
c0de24ce:	f004 fed1 	bl	c0de7274 <cx_bn_destroy>
c0de24d2:	2800      	cmp	r0, #0
c0de24d4:	d1a9      	bne.n	c0de242a <zkn_compute_binding_factors+0x52>
c0de24d6:	a872      	add	r0, sp, #456	@ 0x1c8
c0de24d8:	f004 fecc 	bl	c0de7274 <cx_bn_destroy>
c0de24dc:	e7a5      	b.n	c0de242a <zkn_compute_binding_factors+0x52>

c0de24de <zkn_serialize_scalar_for_hash>:
c0de24de:	3a01      	subs	r2, #1
c0de24e0:	b121      	cbz	r1, c0de24ec <zkn_serialize_scalar_for_hash+0xe>
c0de24e2:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de24e6:	5453      	strb	r3, [r2, r1]
c0de24e8:	3901      	subs	r1, #1
c0de24ea:	e7f9      	b.n	c0de24e0 <zkn_serialize_scalar_for_hash+0x2>
c0de24ec:	4770      	bx	lr

c0de24ee <OUTLINED_FUNCTION_0>:
c0de24ee:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de24f2:	f7ff fff4 	bl	c0de24de <zkn_serialize_scalar_for_hash>
c0de24f6:	683a      	ldr	r2, [r7, #0]
c0de24f8:	4650      	mov	r0, sl
c0de24fa:	4659      	mov	r1, fp
c0de24fc:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2500:	f000 bf30 	b.w	c0de3364 <zkn_frost_hash_update>

c0de2504 <OUTLINED_FUNCTION_2>:
c0de2504:	461c      	mov	r4, r3
c0de2506:	4615      	mov	r5, r2
c0de2508:	f004 be9e 	b.w	c0de7248 <cx_bn_alloc>

c0de250c <OUTLINED_FUNCTION_3>:
c0de250c:	4620      	mov	r0, r4
c0de250e:	f000 b818 	b.w	c0de2542 <tEdwards_destroy>

c0de2512 <OUTLINED_FUNCTION_4>:
c0de2512:	2120      	movs	r1, #32
c0de2514:	f004 be98 	b.w	c0de7248 <cx_bn_alloc>

c0de2518 <tEdwards_alloc>:
c0de2518:	b5b0      	push	{r4, r5, r7, lr}
c0de251a:	460d      	mov	r5, r1
c0de251c:	6801      	ldr	r1, [r0, #0]
c0de251e:	4604      	mov	r4, r0
c0de2520:	4628      	mov	r0, r5
c0de2522:	f004 fe91 	bl	c0de7248 <cx_bn_alloc>
c0de2526:	b920      	cbnz	r0, c0de2532 <tEdwards_alloc+0x1a>
c0de2528:	6821      	ldr	r1, [r4, #0]
c0de252a:	1d28      	adds	r0, r5, #4
c0de252c:	f004 fe8c 	bl	c0de7248 <cx_bn_alloc>
c0de2530:	b100      	cbz	r0, c0de2534 <tEdwards_alloc+0x1c>
c0de2532:	bdb0      	pop	{r4, r5, r7, pc}
c0de2534:	6821      	ldr	r1, [r4, #0]
c0de2536:	f105 0008 	add.w	r0, r5, #8
c0de253a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de253e:	f004 be83 	b.w	c0de7248 <cx_bn_alloc>

c0de2542 <tEdwards_destroy>:
c0de2542:	b510      	push	{r4, lr}
c0de2544:	4608      	mov	r0, r1
c0de2546:	460c      	mov	r4, r1
c0de2548:	f004 fe94 	bl	c0de7274 <cx_bn_destroy>
c0de254c:	b918      	cbnz	r0, c0de2556 <tEdwards_destroy+0x14>
c0de254e:	1d20      	adds	r0, r4, #4
c0de2550:	f004 fe90 	bl	c0de7274 <cx_bn_destroy>
c0de2554:	b100      	cbz	r0, c0de2558 <tEdwards_destroy+0x16>
c0de2556:	bd10      	pop	{r4, pc}
c0de2558:	f104 0008 	add.w	r0, r4, #8
c0de255c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2560:	f004 be88 	b.w	c0de7274 <cx_bn_destroy>

c0de2564 <tEdwards_double>:
c0de2564:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2566:	460f      	mov	r7, r1
c0de2568:	4614      	mov	r4, r2
c0de256a:	4605      	mov	r5, r0
c0de256c:	6843      	ldr	r3, [r0, #4]
c0de256e:	6809      	ldr	r1, [r1, #0]
c0de2570:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2572:	687a      	ldr	r2, [r7, #4]
c0de2574:	f004 fee2 	bl	c0de733c <cx_bn_mod_add>
c0de2578:	2800      	cmp	r0, #0
c0de257a:	d154      	bne.n	c0de2626 <tEdwards_double+0xc2>
c0de257c:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2580:	f105 0620 	add.w	r6, r5, #32
c0de2584:	f000 fbe4 	bl	c0de2d50 <OUTLINED_FUNCTION_2>
c0de2588:	2800      	cmp	r0, #0
c0de258a:	d14c      	bne.n	c0de2626 <tEdwards_double+0xc2>
c0de258c:	6839      	ldr	r1, [r7, #0]
c0de258e:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2590:	f000 fbde 	bl	c0de2d50 <OUTLINED_FUNCTION_2>
c0de2594:	2800      	cmp	r0, #0
c0de2596:	d146      	bne.n	c0de2626 <tEdwards_double+0xc2>
c0de2598:	6879      	ldr	r1, [r7, #4]
c0de259a:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de259c:	f000 fbd8 	bl	c0de2d50 <OUTLINED_FUNCTION_2>
c0de25a0:	2800      	cmp	r0, #0
c0de25a2:	d140      	bne.n	c0de2626 <tEdwards_double+0xc2>
c0de25a4:	69a9      	ldr	r1, [r5, #24]
c0de25a6:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de25a8:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de25aa:	f000 fbcb 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de25ae:	bbd0      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de25b0:	686b      	ldr	r3, [r5, #4]
c0de25b2:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de25b6:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de25b8:	f004 fec0 	bl	c0de733c <cx_bn_mod_add>
c0de25bc:	bb98      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de25be:	68b9      	ldr	r1, [r7, #8]
c0de25c0:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de25c2:	f000 fbc5 	bl	c0de2d50 <OUTLINED_FUNCTION_2>
c0de25c6:	bb70      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de25c8:	686b      	ldr	r3, [r5, #4]
c0de25ca:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de25cc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de25ce:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de25d0:	f004 fec0 	bl	c0de7354 <cx_bn_mod_sub>
c0de25d4:	bb38      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de25d6:	686b      	ldr	r3, [r5, #4]
c0de25d8:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de25da:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de25de:	f004 feb9 	bl	c0de7354 <cx_bn_mod_sub>
c0de25e2:	bb00      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de25e4:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de25e8:	686b      	ldr	r3, [r5, #4]
c0de25ea:	ca07      	ldmia	r2, {r0, r1, r2}
c0de25ec:	f004 feb2 	bl	c0de7354 <cx_bn_mod_sub>
c0de25f0:	b9c8      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de25f2:	686b      	ldr	r3, [r5, #4]
c0de25f4:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de25f8:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de25fa:	f004 feab 	bl	c0de7354 <cx_bn_mod_sub>
c0de25fe:	b990      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de2600:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2602:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2604:	6820      	ldr	r0, [r4, #0]
c0de2606:	f000 fb9d 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de260a:	b960      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de260c:	686b      	ldr	r3, [r5, #4]
c0de260e:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2612:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2614:	f004 fe9e 	bl	c0de7354 <cx_bn_mod_sub>
c0de2618:	b928      	cbnz	r0, c0de2626 <tEdwards_double+0xc2>
c0de261a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de261c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de261e:	6860      	ldr	r0, [r4, #4]
c0de2620:	f000 fb90 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de2624:	b100      	cbz	r0, c0de2628 <tEdwards_double+0xc4>
c0de2626:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2628:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de262a:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de262c:	68a0      	ldr	r0, [r4, #8]
c0de262e:	4633      	mov	r3, r6
c0de2630:	b001      	add	sp, #4
c0de2632:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2636:	f004 bef3 	b.w	c0de7420 <cx_mont_mul>

c0de263a <tEdwards_add>:
c0de263a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de263e:	4606      	mov	r6, r0
c0de2640:	4617      	mov	r7, r2
c0de2642:	460c      	mov	r4, r1
c0de2644:	6892      	ldr	r2, [r2, #8]
c0de2646:	6889      	ldr	r1, [r1, #8]
c0de2648:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de264a:	4698      	mov	r8, r3
c0de264c:	f106 0520 	add.w	r5, r6, #32
c0de2650:	f000 fb7b 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de2654:	2800      	cmp	r0, #0
c0de2656:	d17d      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de2658:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de265c:	462b      	mov	r3, r5
c0de265e:	460a      	mov	r2, r1
c0de2660:	f004 fede 	bl	c0de7420 <cx_mont_mul>
c0de2664:	2800      	cmp	r0, #0
c0de2666:	d175      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de2668:	683a      	ldr	r2, [r7, #0]
c0de266a:	6821      	ldr	r1, [r4, #0]
c0de266c:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de266e:	f000 fb6c 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de2672:	2800      	cmp	r0, #0
c0de2674:	d16e      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de2676:	687a      	ldr	r2, [r7, #4]
c0de2678:	6861      	ldr	r1, [r4, #4]
c0de267a:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de267c:	f000 fb65 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de2680:	2800      	cmp	r0, #0
c0de2682:	d167      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de2684:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2688:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de268a:	f000 fb5e 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de268e:	2800      	cmp	r0, #0
c0de2690:	d160      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de2692:	69f2      	ldr	r2, [r6, #28]
c0de2694:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2696:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2698:	f000 fb57 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de269c:	2800      	cmp	r0, #0
c0de269e:	d159      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de26a0:	6873      	ldr	r3, [r6, #4]
c0de26a2:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de26a4:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de26a8:	f004 fe54 	bl	c0de7354 <cx_bn_mod_sub>
c0de26ac:	2800      	cmp	r0, #0
c0de26ae:	d151      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de26b0:	6873      	ldr	r3, [r6, #4]
c0de26b2:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de26b4:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de26b6:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de26b8:	f004 fe40 	bl	c0de733c <cx_bn_mod_add>
c0de26bc:	2800      	cmp	r0, #0
c0de26be:	d149      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de26c0:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de26c4:	6873      	ldr	r3, [r6, #4]
c0de26c6:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de26c8:	f004 fe38 	bl	c0de733c <cx_bn_mod_add>
c0de26cc:	2800      	cmp	r0, #0
c0de26ce:	d141      	bne.n	c0de2754 <tEdwards_add+0x11a>
c0de26d0:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de26d4:	6873      	ldr	r3, [r6, #4]
c0de26d6:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de26d8:	f004 fe30 	bl	c0de733c <cx_bn_mod_add>
c0de26dc:	bbd0      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de26de:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de26e0:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de26e4:	f000 fb31 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de26e8:	bba0      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de26ea:	6873      	ldr	r3, [r6, #4]
c0de26ec:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de26f0:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de26f2:	f004 fe2f 	bl	c0de7354 <cx_bn_mod_sub>
c0de26f6:	bb68      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de26f8:	6873      	ldr	r3, [r6, #4]
c0de26fa:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de26fc:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2700:	f004 fe28 	bl	c0de7354 <cx_bn_mod_sub>
c0de2704:	bb30      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de2706:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de270a:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de270c:	f000 fb1d 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de2710:	bb00      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de2712:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2714:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2716:	f8d8 0000 	ldr.w	r0, [r8]
c0de271a:	f000 fb16 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de271e:	b9c8      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de2720:	69b1      	ldr	r1, [r6, #24]
c0de2722:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2726:	f000 fb10 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de272a:	b998      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de272c:	6873      	ldr	r3, [r6, #4]
c0de272e:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2730:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2732:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2734:	f004 fe0e 	bl	c0de7354 <cx_bn_mod_sub>
c0de2738:	b960      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de273a:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de273c:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de273e:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2740:	f000 fb03 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de2744:	b930      	cbnz	r0, c0de2754 <tEdwards_add+0x11a>
c0de2746:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de274a:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de274e:	f000 fafc 	bl	c0de2d4a <OUTLINED_FUNCTION_1>
c0de2752:	b108      	cbz	r0, c0de2758 <tEdwards_add+0x11e>
c0de2754:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2758:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de275c:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2760:	462b      	mov	r3, r5
c0de2762:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2766:	f004 be5b 	b.w	c0de7420 <cx_mont_mul>

c0de276a <tEdwards_IsOnCurve>:
c0de276a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de276c:	4605      	mov	r5, r0
c0de276e:	460f      	mov	r7, r1
c0de2770:	2005      	movs	r0, #5
c0de2772:	6809      	ldr	r1, [r1, #0]
c0de2774:	4614      	mov	r4, r2
c0de2776:	9000      	str	r0, [sp, #0]
c0de2778:	f105 0620 	add.w	r6, r5, #32
c0de277c:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de277e:	460a      	mov	r2, r1
c0de2780:	f000 fae0 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de2784:	b100      	cbz	r0, c0de2788 <tEdwards_IsOnCurve+0x1e>
c0de2786:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2788:	6879      	ldr	r1, [r7, #4]
c0de278a:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de278c:	f000 fae0 	bl	c0de2d50 <OUTLINED_FUNCTION_2>
c0de2790:	2800      	cmp	r0, #0
c0de2792:	d1f8      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de2794:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2798:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de279a:	f000 fad3 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de279e:	2800      	cmp	r0, #0
c0de27a0:	d1f1      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27a2:	69a9      	ldr	r1, [r5, #24]
c0de27a4:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de27a6:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de27a8:	f000 facc 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de27ac:	2800      	cmp	r0, #0
c0de27ae:	d1ea      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27b0:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de27b2:	686b      	ldr	r3, [r5, #4]
c0de27b4:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de27b6:	4601      	mov	r1, r0
c0de27b8:	f004 fdc0 	bl	c0de733c <cx_bn_mod_add>
c0de27bc:	2800      	cmp	r0, #0
c0de27be:	d1e2      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27c0:	69e9      	ldr	r1, [r5, #28]
c0de27c2:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de27c4:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de27c6:	f000 fabd 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de27ca:	2800      	cmp	r0, #0
c0de27cc:	d1db      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27ce:	686b      	ldr	r3, [r5, #4]
c0de27d0:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de27d2:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de27d4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de27d6:	f004 fdb1 	bl	c0de733c <cx_bn_mod_add>
c0de27da:	2800      	cmp	r0, #0
c0de27dc:	d1d3      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27de:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de27e0:	4632      	mov	r2, r6
c0de27e2:	4601      	mov	r1, r0
c0de27e4:	f004 fe10 	bl	c0de7408 <cx_mont_from_montgomery>
c0de27e8:	2800      	cmp	r0, #0
c0de27ea:	d1cc      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27ec:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de27ee:	4632      	mov	r2, r6
c0de27f0:	4601      	mov	r1, r0
c0de27f2:	f004 fe09 	bl	c0de7408 <cx_mont_from_montgomery>
c0de27f6:	2800      	cmp	r0, #0
c0de27f8:	d1c5      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de27fa:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de27fe:	466a      	mov	r2, sp
c0de2800:	f004 fd78 	bl	c0de72f4 <cx_bn_cmp>
c0de2804:	2800      	cmp	r0, #0
c0de2806:	d1be      	bne.n	c0de2786 <tEdwards_IsOnCurve+0x1c>
c0de2808:	9800      	ldr	r0, [sp, #0]
c0de280a:	fab0 f080 	clz	r0, r0
c0de280e:	0940      	lsrs	r0, r0, #5
c0de2810:	7020      	strb	r0, [r4, #0]
c0de2812:	2000      	movs	r0, #0
c0de2814:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2818 <tEdwards_Curve_alloc_init>:
c0de2818:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de281c:	b0d2      	sub	sp, #328	@ 0x148
c0de281e:	4604      	mov	r4, r0
c0de2820:	2902      	cmp	r1, #2
c0de2822:	d022      	beq.n	c0de286a <tEdwards_Curve_alloc_init+0x52>
c0de2824:	2901      	cmp	r1, #1
c0de2826:	f040 80cd 	bne.w	c0de29c4 <tEdwards_Curve_alloc_init+0x1ac>
c0de282a:	2020      	movs	r0, #32
c0de282c:	2220      	movs	r2, #32
c0de282e:	6020      	str	r0, [r4, #0]
c0de2830:	af4a      	add	r7, sp, #296	@ 0x128
c0de2832:	4967      	ldr	r1, [pc, #412]	@ (c0de29d0 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2834:	4638      	mov	r0, r7
c0de2836:	4479      	add	r1, pc
c0de2838:	f004 ffbc 	bl	c0de77b4 <__aeabi_memcpy>
c0de283c:	ae42      	add	r6, sp, #264	@ 0x108
c0de283e:	4965      	ldr	r1, [pc, #404]	@ (c0de29d4 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2840:	2220      	movs	r2, #32
c0de2842:	4630      	mov	r0, r6
c0de2844:	4479      	add	r1, pc
c0de2846:	f004 ffb5 	bl	c0de77b4 <__aeabi_memcpy>
c0de284a:	4963      	ldr	r1, [pc, #396]	@ (c0de29d8 <tEdwards_Curve_alloc_init+0x1c0>)
c0de284c:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2850:	2220      	movs	r2, #32
c0de2852:	4650      	mov	r0, sl
c0de2854:	4479      	add	r1, pc
c0de2856:	f004 ffad 	bl	c0de77b4 <__aeabi_memcpy>
c0de285a:	ad32      	add	r5, sp, #200	@ 0xc8
c0de285c:	495f      	ldr	r1, [pc, #380]	@ (c0de29dc <tEdwards_Curve_alloc_init+0x1c4>)
c0de285e:	2220      	movs	r2, #32
c0de2860:	4628      	mov	r0, r5
c0de2862:	4479      	add	r1, pc
c0de2864:	f004 ffa6 	bl	c0de77b4 <__aeabi_memcpy>
c0de2868:	e02d      	b.n	c0de28c6 <tEdwards_Curve_alloc_init+0xae>
c0de286a:	2020      	movs	r0, #32
c0de286c:	2220      	movs	r2, #32
c0de286e:	6020      	str	r0, [r4, #0]
c0de2870:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2872:	495b      	ldr	r1, [pc, #364]	@ (c0de29e0 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2874:	4638      	mov	r0, r7
c0de2876:	4479      	add	r1, pc
c0de2878:	f004 ff9c 	bl	c0de77b4 <__aeabi_memcpy>
c0de287c:	ae22      	add	r6, sp, #136	@ 0x88
c0de287e:	4959      	ldr	r1, [pc, #356]	@ (c0de29e4 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2880:	2220      	movs	r2, #32
c0de2882:	4630      	mov	r0, r6
c0de2884:	4479      	add	r1, pc
c0de2886:	f004 ff95 	bl	c0de77b4 <__aeabi_memcpy>
c0de288a:	4957      	ldr	r1, [pc, #348]	@ (c0de29e8 <tEdwards_Curve_alloc_init+0x1d0>)
c0de288c:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2890:	2220      	movs	r2, #32
c0de2892:	4650      	mov	r0, sl
c0de2894:	4479      	add	r1, pc
c0de2896:	f004 ff8d 	bl	c0de77b4 <__aeabi_memcpy>
c0de289a:	a812      	add	r0, sp, #72	@ 0x48
c0de289c:	4953      	ldr	r1, [pc, #332]	@ (c0de29ec <tEdwards_Curve_alloc_init+0x1d4>)
c0de289e:	2220      	movs	r2, #32
c0de28a0:	9001      	str	r0, [sp, #4]
c0de28a2:	4479      	add	r1, pc
c0de28a4:	f004 ff86 	bl	c0de77b4 <__aeabi_memcpy>
c0de28a8:	4951      	ldr	r1, [pc, #324]	@ (c0de29f0 <tEdwards_Curve_alloc_init+0x1d8>)
c0de28aa:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de28ae:	2220      	movs	r2, #32
c0de28b0:	4658      	mov	r0, fp
c0de28b2:	4479      	add	r1, pc
c0de28b4:	f004 ff7e 	bl	c0de77b4 <__aeabi_memcpy>
c0de28b8:	ad02      	add	r5, sp, #8
c0de28ba:	494e      	ldr	r1, [pc, #312]	@ (c0de29f4 <tEdwards_Curve_alloc_init+0x1dc>)
c0de28bc:	2220      	movs	r2, #32
c0de28be:	4628      	mov	r0, r5
c0de28c0:	4479      	add	r1, pc
c0de28c2:	f004 ff77 	bl	c0de77b4 <__aeabi_memcpy>
c0de28c6:	f104 0804 	add.w	r8, r4, #4
c0de28ca:	2120      	movs	r1, #32
c0de28cc:	463a      	mov	r2, r7
c0de28ce:	2320      	movs	r3, #32
c0de28d0:	4640      	mov	r0, r8
c0de28d2:	f004 fcc3 	bl	c0de725c <cx_bn_alloc_init>
c0de28d6:	2800      	cmp	r0, #0
c0de28d8:	d175      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28da:	4620      	mov	r0, r4
c0de28dc:	462a      	mov	r2, r5
c0de28de:	f850 1b08 	ldr.w	r1, [r0], #8
c0de28e2:	460b      	mov	r3, r1
c0de28e4:	f004 fcba 	bl	c0de725c <cx_bn_alloc_init>
c0de28e8:	2800      	cmp	r0, #0
c0de28ea:	d16c      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28ec:	f104 0520 	add.w	r5, r4, #32
c0de28f0:	2120      	movs	r1, #32
c0de28f2:	4628      	mov	r0, r5
c0de28f4:	f004 fd68 	bl	c0de73c8 <cx_mont_alloc>
c0de28f8:	2800      	cmp	r0, #0
c0de28fa:	d164      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28fc:	f8d8 1000 	ldr.w	r1, [r8]
c0de2900:	4628      	mov	r0, r5
c0de2902:	f004 fd6b 	bl	c0de73dc <cx_mont_init>
c0de2906:	2800      	cmp	r0, #0
c0de2908:	d15d      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de290a:	4627      	mov	r7, r4
c0de290c:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2910:	4638      	mov	r0, r7
c0de2912:	f004 fc99 	bl	c0de7248 <cx_bn_alloc>
c0de2916:	2800      	cmp	r0, #0
c0de2918:	d155      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de291a:	6838      	ldr	r0, [r7, #0]
c0de291c:	2101      	movs	r1, #1
c0de291e:	f004 fcd3 	bl	c0de72c8 <cx_bn_set_u32>
c0de2922:	2800      	cmp	r0, #0
c0de2924:	d14f      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2926:	6838      	ldr	r0, [r7, #0]
c0de2928:	f000 fa16 	bl	c0de2d58 <OUTLINED_FUNCTION_3>
c0de292c:	2800      	cmp	r0, #0
c0de292e:	d14a      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2930:	f104 070c 	add.w	r7, r4, #12
c0de2934:	4620      	mov	r0, r4
c0de2936:	4639      	mov	r1, r7
c0de2938:	f7ff fdee 	bl	c0de2518 <tEdwards_alloc>
c0de293c:	2800      	cmp	r0, #0
c0de293e:	d142      	bne.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2940:	9901      	ldr	r1, [sp, #4]
c0de2942:	4620      	mov	r0, r4
c0de2944:	465a      	mov	r2, fp
c0de2946:	463b      	mov	r3, r7
c0de2948:	f000 f856 	bl	c0de29f8 <tEdwards_init>
c0de294c:	bbd8      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de294e:	4627      	mov	r7, r4
c0de2950:	4632      	mov	r2, r6
c0de2952:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2956:	4638      	mov	r0, r7
c0de2958:	460b      	mov	r3, r1
c0de295a:	f004 fc7f 	bl	c0de725c <cx_bn_alloc_init>
c0de295e:	bb90      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2960:	6838      	ldr	r0, [r7, #0]
c0de2962:	f000 f9f9 	bl	c0de2d58 <OUTLINED_FUNCTION_3>
c0de2966:	bb70      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2968:	4626      	mov	r6, r4
c0de296a:	4652      	mov	r2, sl
c0de296c:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2970:	4630      	mov	r0, r6
c0de2972:	460b      	mov	r3, r1
c0de2974:	f004 fc72 	bl	c0de725c <cx_bn_alloc_init>
c0de2978:	bb28      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de297a:	6830      	ldr	r0, [r6, #0]
c0de297c:	f000 f9ec 	bl	c0de2d58 <OUTLINED_FUNCTION_3>
c0de2980:	bb08      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2982:	4620      	mov	r0, r4
c0de2984:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2988:	f004 fc5e 	bl	c0de7248 <cx_bn_alloc>
c0de298c:	b9d8      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de298e:	f000 f9fb 	bl	c0de2d88 <OUTLINED_FUNCTION_8>
c0de2992:	b9c0      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2994:	f000 f9e4 	bl	c0de2d60 <OUTLINED_FUNCTION_4>
c0de2998:	b9a8      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de299a:	f000 f9f0 	bl	c0de2d7e <OUTLINED_FUNCTION_7>
c0de299e:	b990      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de29a0:	f000 f9fc 	bl	c0de2d9c <OUTLINED_FUNCTION_10>
c0de29a4:	b978      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de29a6:	f000 f9e5 	bl	c0de2d74 <OUTLINED_FUNCTION_6>
c0de29aa:	b960      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de29ac:	f000 f9f1 	bl	c0de2d92 <OUTLINED_FUNCTION_9>
c0de29b0:	b948      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de29b2:	f000 f9da 	bl	c0de2d6a <OUTLINED_FUNCTION_5>
c0de29b6:	b930      	cbnz	r0, c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de29b8:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de29bc:	4620      	mov	r0, r4
c0de29be:	f004 fc43 	bl	c0de7248 <cx_bn_alloc>
c0de29c2:	e000      	b.n	c0de29c6 <tEdwards_Curve_alloc_init+0x1ae>
c0de29c4:	4801      	ldr	r0, [pc, #4]	@ (c0de29cc <tEdwards_Curve_alloc_init+0x1b4>)
c0de29c6:	b052      	add	sp, #328	@ 0x148
c0de29c8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de29cc:	5a4b4e01 	.word	0x5a4b4e01
c0de29d0:	000055b6 	.word	0x000055b6
c0de29d4:	00005748 	.word	0x00005748
c0de29d8:	000056f8 	.word	0x000056f8
c0de29dc:	0000564a 	.word	0x0000564a
c0de29e0:	00005756 	.word	0x00005756
c0de29e4:	000056a8 	.word	0x000056a8
c0de29e8:	00005718 	.word	0x00005718
c0de29ec:	0000574a 	.word	0x0000574a
c0de29f0:	0000575a 	.word	0x0000575a
c0de29f4:	0000560c 	.word	0x0000560c

c0de29f8 <tEdwards_init>:
c0de29f8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de29fa:	6806      	ldr	r6, [r0, #0]
c0de29fc:	461c      	mov	r4, r3
c0de29fe:	4617      	mov	r7, r2
c0de2a00:	460a      	mov	r2, r1
c0de2a02:	4605      	mov	r5, r0
c0de2a04:	a802      	add	r0, sp, #8
c0de2a06:	4631      	mov	r1, r6
c0de2a08:	4633      	mov	r3, r6
c0de2a0a:	f004 fc27 	bl	c0de725c <cx_bn_alloc_init>
c0de2a0e:	b100      	cbz	r0, c0de2a12 <tEdwards_init+0x1a>
c0de2a10:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2a12:	a801      	add	r0, sp, #4
c0de2a14:	4631      	mov	r1, r6
c0de2a16:	463a      	mov	r2, r7
c0de2a18:	4633      	mov	r3, r6
c0de2a1a:	f004 fc1f 	bl	c0de725c <cx_bn_alloc_init>
c0de2a1e:	2800      	cmp	r0, #0
c0de2a20:	d1f6      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a22:	4668      	mov	r0, sp
c0de2a24:	4631      	mov	r1, r6
c0de2a26:	f004 fc0f 	bl	c0de7248 <cx_bn_alloc>
c0de2a2a:	2800      	cmp	r0, #0
c0de2a2c:	d1f0      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a2e:	f105 0620 	add.w	r6, r5, #32
c0de2a32:	6820      	ldr	r0, [r4, #0]
c0de2a34:	9902      	ldr	r1, [sp, #8]
c0de2a36:	4632      	mov	r2, r6
c0de2a38:	f004 fcda 	bl	c0de73f0 <cx_mont_to_montgomery>
c0de2a3c:	2800      	cmp	r0, #0
c0de2a3e:	d1e7      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a40:	6860      	ldr	r0, [r4, #4]
c0de2a42:	9901      	ldr	r1, [sp, #4]
c0de2a44:	4632      	mov	r2, r6
c0de2a46:	f004 fcd3 	bl	c0de73f0 <cx_mont_to_montgomery>
c0de2a4a:	2800      	cmp	r0, #0
c0de2a4c:	d1e0      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a4e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2a50:	68a0      	ldr	r0, [r4, #8]
c0de2a52:	f004 fc2f 	bl	c0de72b4 <cx_bn_copy>
c0de2a56:	2800      	cmp	r0, #0
c0de2a58:	d1da      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a5a:	a802      	add	r0, sp, #8
c0de2a5c:	f004 fc0a 	bl	c0de7274 <cx_bn_destroy>
c0de2a60:	2800      	cmp	r0, #0
c0de2a62:	d1d5      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a64:	a801      	add	r0, sp, #4
c0de2a66:	f004 fc05 	bl	c0de7274 <cx_bn_destroy>
c0de2a6a:	2800      	cmp	r0, #0
c0de2a6c:	d1d0      	bne.n	c0de2a10 <tEdwards_init+0x18>
c0de2a6e:	4668      	mov	r0, sp
c0de2a70:	f004 fc00 	bl	c0de7274 <cx_bn_destroy>
c0de2a74:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2a76 <tEdwards_Curve_partial_destroy>:
c0de2a76:	b510      	push	{r4, lr}
c0de2a78:	4604      	mov	r4, r0
c0de2a7a:	302c      	adds	r0, #44	@ 0x2c
c0de2a7c:	f004 fbfa 	bl	c0de7274 <cx_bn_destroy>
c0de2a80:	bbd8      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2a82:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2a86:	f004 fbf5 	bl	c0de7274 <cx_bn_destroy>
c0de2a8a:	bbb0      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2a8c:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2a90:	f004 fbf0 	bl	c0de7274 <cx_bn_destroy>
c0de2a94:	bb88      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2a96:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2a9a:	f004 fbeb 	bl	c0de7274 <cx_bn_destroy>
c0de2a9e:	bb60      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2aa0:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2aa4:	f004 fbe6 	bl	c0de7274 <cx_bn_destroy>
c0de2aa8:	bb38      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2aaa:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2aae:	f004 fbe1 	bl	c0de7274 <cx_bn_destroy>
c0de2ab2:	bb10      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2ab4:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2ab8:	f004 fbdc 	bl	c0de7274 <cx_bn_destroy>
c0de2abc:	b9e8      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2abe:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2ac2:	f004 fbd7 	bl	c0de7274 <cx_bn_destroy>
c0de2ac6:	b9c0      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2ac8:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2acc:	f004 fbd2 	bl	c0de7274 <cx_bn_destroy>
c0de2ad0:	b998      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2ad2:	f104 010c 	add.w	r1, r4, #12
c0de2ad6:	f7ff fd34 	bl	c0de2542 <tEdwards_destroy>
c0de2ada:	b970      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2adc:	f104 0018 	add.w	r0, r4, #24
c0de2ae0:	f004 fbc8 	bl	c0de7274 <cx_bn_destroy>
c0de2ae4:	b948      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2ae6:	f104 001c 	add.w	r0, r4, #28
c0de2aea:	f004 fbc3 	bl	c0de7274 <cx_bn_destroy>
c0de2aee:	b920      	cbnz	r0, c0de2afa <tEdwards_Curve_partial_destroy+0x84>
c0de2af0:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2af4:	f004 fbbe 	bl	c0de7274 <cx_bn_destroy>
c0de2af8:	b100      	cbz	r0, c0de2afc <tEdwards_Curve_partial_destroy+0x86>
c0de2afa:	bd10      	pop	{r4, pc}
c0de2afc:	f104 0008 	add.w	r0, r4, #8
c0de2b00:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2b04:	f004 bbb6 	b.w	c0de7274 <cx_bn_destroy>

c0de2b08 <tEdwards_SetNeutral>:
c0de2b08:	b5b0      	push	{r4, r5, r7, lr}
c0de2b0a:	4605      	mov	r5, r0
c0de2b0c:	6808      	ldr	r0, [r1, #0]
c0de2b0e:	460c      	mov	r4, r1
c0de2b10:	2100      	movs	r1, #0
c0de2b12:	f004 fbd9 	bl	c0de72c8 <cx_bn_set_u32>
c0de2b16:	b918      	cbnz	r0, c0de2b20 <tEdwards_SetNeutral+0x18>
c0de2b18:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2b1a:	f000 f944 	bl	c0de2da6 <OUTLINED_FUNCTION_11>
c0de2b1e:	b100      	cbz	r0, c0de2b22 <tEdwards_SetNeutral+0x1a>
c0de2b20:	bdb0      	pop	{r4, r5, r7, pc}
c0de2b22:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2b24:	68a0      	ldr	r0, [r4, #8]
c0de2b26:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2b2a:	f004 bbc3 	b.w	c0de72b4 <cx_bn_copy>

c0de2b2e <tEdwards_export>:
c0de2b2e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b32:	4698      	mov	r8, r3
c0de2b34:	4616      	mov	r6, r2
c0de2b36:	460f      	mov	r7, r1
c0de2b38:	4605      	mov	r5, r0
c0de2b3a:	f000 f81e 	bl	c0de2b7a <tEdwards_normalize>
c0de2b3e:	b998      	cbnz	r0, c0de2b68 <tEdwards_export+0x3a>
c0de2b40:	f105 0420 	add.w	r4, r5, #32
c0de2b44:	6839      	ldr	r1, [r7, #0]
c0de2b46:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b48:	4622      	mov	r2, r4
c0de2b4a:	f004 fc5d 	bl	c0de7408 <cx_mont_from_montgomery>
c0de2b4e:	b958      	cbnz	r0, c0de2b68 <tEdwards_export+0x3a>
c0de2b50:	6879      	ldr	r1, [r7, #4]
c0de2b52:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2b54:	4622      	mov	r2, r4
c0de2b56:	f004 fc57 	bl	c0de7408 <cx_mont_from_montgomery>
c0de2b5a:	b928      	cbnz	r0, c0de2b68 <tEdwards_export+0x3a>
c0de2b5c:	682a      	ldr	r2, [r5, #0]
c0de2b5e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b60:	4631      	mov	r1, r6
c0de2b62:	f004 fbbb 	bl	c0de72dc <cx_bn_export>
c0de2b66:	b108      	cbz	r0, c0de2b6c <tEdwards_export+0x3e>
c0de2b68:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b6c:	682a      	ldr	r2, [r5, #0]
c0de2b6e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2b70:	4641      	mov	r1, r8
c0de2b72:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b76:	f004 bbb1 	b.w	c0de72dc <cx_bn_export>

c0de2b7a <tEdwards_normalize>:
c0de2b7a:	b570      	push	{r4, r5, r6, lr}
c0de2b7c:	4605      	mov	r5, r0
c0de2b7e:	460c      	mov	r4, r1
c0de2b80:	6889      	ldr	r1, [r1, #8]
c0de2b82:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2b84:	f105 0620 	add.w	r6, r5, #32
c0de2b88:	4632      	mov	r2, r6
c0de2b8a:	f004 fc65 	bl	c0de7458 <cx_mont_invert_nprime>
c0de2b8e:	b9d0      	cbnz	r0, c0de2bc6 <tEdwards_normalize+0x4c>
c0de2b90:	6822      	ldr	r2, [r4, #0]
c0de2b92:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2b96:	f000 f8d5 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de2b9a:	b9a0      	cbnz	r0, c0de2bc6 <tEdwards_normalize+0x4c>
c0de2b9c:	6862      	ldr	r2, [r4, #4]
c0de2b9e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2ba0:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2ba2:	f000 f8cf 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de2ba6:	b970      	cbnz	r0, c0de2bc6 <tEdwards_normalize+0x4c>
c0de2ba8:	68a2      	ldr	r2, [r4, #8]
c0de2baa:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2bac:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2bae:	f000 f8c9 	bl	c0de2d44 <OUTLINED_FUNCTION_0>
c0de2bb2:	b940      	cbnz	r0, c0de2bc6 <tEdwards_normalize+0x4c>
c0de2bb4:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2bb6:	6820      	ldr	r0, [r4, #0]
c0de2bb8:	f004 fb7c 	bl	c0de72b4 <cx_bn_copy>
c0de2bbc:	b918      	cbnz	r0, c0de2bc6 <tEdwards_normalize+0x4c>
c0de2bbe:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2bc0:	f000 f8f1 	bl	c0de2da6 <OUTLINED_FUNCTION_11>
c0de2bc4:	b100      	cbz	r0, c0de2bc8 <tEdwards_normalize+0x4e>
c0de2bc6:	bd70      	pop	{r4, r5, r6, pc}
c0de2bc8:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2bca:	68a0      	ldr	r0, [r4, #8]
c0de2bcc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2bd0:	f004 bb70 	b.w	c0de72b4 <cx_bn_copy>

c0de2bd4 <tEdwards_copy>:
c0de2bd4:	b5b0      	push	{r4, r5, r7, lr}
c0de2bd6:	460c      	mov	r4, r1
c0de2bd8:	4605      	mov	r5, r0
c0de2bda:	6801      	ldr	r1, [r0, #0]
c0de2bdc:	6820      	ldr	r0, [r4, #0]
c0de2bde:	f004 fb69 	bl	c0de72b4 <cx_bn_copy>
c0de2be2:	b918      	cbnz	r0, c0de2bec <tEdwards_copy+0x18>
c0de2be4:	6869      	ldr	r1, [r5, #4]
c0de2be6:	f000 f8de 	bl	c0de2da6 <OUTLINED_FUNCTION_11>
c0de2bea:	b100      	cbz	r0, c0de2bee <tEdwards_copy+0x1a>
c0de2bec:	bdb0      	pop	{r4, r5, r7, pc}
c0de2bee:	68a9      	ldr	r1, [r5, #8]
c0de2bf0:	68a0      	ldr	r0, [r4, #8]
c0de2bf2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2bf6:	f004 bb5d 	b.w	c0de72b4 <cx_bn_copy>

c0de2bfa <tEdwards_alloc_init>:
c0de2bfa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2bfc:	460e      	mov	r6, r1
c0de2bfe:	6801      	ldr	r1, [r0, #0]
c0de2c00:	4607      	mov	r7, r0
c0de2c02:	4618      	mov	r0, r3
c0de2c04:	461c      	mov	r4, r3
c0de2c06:	4615      	mov	r5, r2
c0de2c08:	f004 fb1e 	bl	c0de7248 <cx_bn_alloc>
c0de2c0c:	b950      	cbnz	r0, c0de2c24 <tEdwards_alloc_init+0x2a>
c0de2c0e:	6839      	ldr	r1, [r7, #0]
c0de2c10:	1d20      	adds	r0, r4, #4
c0de2c12:	f004 fb19 	bl	c0de7248 <cx_bn_alloc>
c0de2c16:	b928      	cbnz	r0, c0de2c24 <tEdwards_alloc_init+0x2a>
c0de2c18:	6839      	ldr	r1, [r7, #0]
c0de2c1a:	f104 0008 	add.w	r0, r4, #8
c0de2c1e:	f004 fb13 	bl	c0de7248 <cx_bn_alloc>
c0de2c22:	b100      	cbz	r0, c0de2c26 <tEdwards_alloc_init+0x2c>
c0de2c24:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2c26:	4638      	mov	r0, r7
c0de2c28:	4631      	mov	r1, r6
c0de2c2a:	462a      	mov	r2, r5
c0de2c2c:	4623      	mov	r3, r4
c0de2c2e:	b001      	add	sp, #4
c0de2c30:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2c34:	f7ff bee0 	b.w	c0de29f8 <tEdwards_init>

c0de2c38 <tEdwards_scalarMul_bn>:
c0de2c38:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c3c:	4607      	mov	r7, r0
c0de2c3e:	2000      	movs	r0, #0
c0de2c40:	4688      	mov	r8, r1
c0de2c42:	4615      	mov	r5, r2
c0de2c44:	2100      	movs	r1, #0
c0de2c46:	469b      	mov	fp, r3
c0de2c48:	9003      	str	r0, [sp, #12]
c0de2c4a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2c4e:	6810      	ldr	r0, [r2, #0]
c0de2c50:	aa03      	add	r2, sp, #12
c0de2c52:	f004 fb5b 	bl	c0de730c <cx_bn_cmp_u32>
c0de2c56:	bb38      	cbnz	r0, c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2c58:	9803      	ldr	r0, [sp, #12]
c0de2c5a:	b1d0      	cbz	r0, c0de2c92 <tEdwards_scalarMul_bn+0x5a>
c0de2c5c:	6828      	ldr	r0, [r5, #0]
c0de2c5e:	a901      	add	r1, sp, #4
c0de2c60:	f004 fb12 	bl	c0de7288 <cx_bn_nbytes>
c0de2c64:	bb00      	cbnz	r0, c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2c66:	2002      	movs	r0, #2
c0de2c68:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2c6c:	f10d 040b 	add.w	r4, sp, #11
c0de2c70:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c72:	9801      	ldr	r0, [sp, #4]
c0de2c74:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2c78:	2000      	movs	r0, #0
c0de2c7a:	2801      	cmp	r0, #1
c0de2c7c:	d00f      	beq.n	c0de2c9e <tEdwards_scalarMul_bn+0x66>
c0de2c7e:	6828      	ldr	r0, [r5, #0]
c0de2c80:	4631      	mov	r1, r6
c0de2c82:	4622      	mov	r2, r4
c0de2c84:	f004 fb4e 	bl	c0de7324 <cx_bn_tst_bit>
c0de2c88:	b970      	cbnz	r0, c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2c8a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2c8e:	3e01      	subs	r6, #1
c0de2c90:	e7f3      	b.n	c0de2c7a <tEdwards_scalarMul_bn+0x42>
c0de2c92:	4638      	mov	r0, r7
c0de2c94:	4659      	mov	r1, fp
c0de2c96:	f7ff ff37 	bl	c0de2b08 <tEdwards_SetNeutral>
c0de2c9a:	b928      	cbnz	r0, c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2c9c:	e7de      	b.n	c0de2c5c <tEdwards_scalarMul_bn+0x24>
c0de2c9e:	4640      	mov	r0, r8
c0de2ca0:	4659      	mov	r1, fp
c0de2ca2:	f7ff ff97 	bl	c0de2bd4 <tEdwards_copy>
c0de2ca6:	b110      	cbz	r0, c0de2cae <tEdwards_scalarMul_bn+0x76>
c0de2ca8:	b004      	add	sp, #16
c0de2caa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2cae:	2001      	movs	r0, #1
c0de2cb0:	f10d 0a0b 	add.w	sl, sp, #11
c0de2cb4:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2cb8:	2e00      	cmp	r6, #0
c0de2cba:	d420      	bmi.n	c0de2cfe <tEdwards_scalarMul_bn+0xc6>
c0de2cbc:	4638      	mov	r0, r7
c0de2cbe:	4659      	mov	r1, fp
c0de2cc0:	465a      	mov	r2, fp
c0de2cc2:	f7ff fc4f 	bl	c0de2564 <tEdwards_double>
c0de2cc6:	2800      	cmp	r0, #0
c0de2cc8:	d1ee      	bne.n	c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2cca:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2ccc:	4631      	mov	r1, r6
c0de2cce:	4652      	mov	r2, sl
c0de2cd0:	0040      	lsls	r0, r0, #1
c0de2cd2:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2cd4:	6828      	ldr	r0, [r5, #0]
c0de2cd6:	f004 fb25 	bl	c0de7324 <cx_bn_tst_bit>
c0de2cda:	2800      	cmp	r0, #0
c0de2cdc:	d1e4      	bne.n	c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2cde:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2ce2:	b150      	cbz	r0, c0de2cfa <tEdwards_scalarMul_bn+0xc2>
c0de2ce4:	4638      	mov	r0, r7
c0de2ce6:	4659      	mov	r1, fp
c0de2ce8:	4642      	mov	r2, r8
c0de2cea:	465b      	mov	r3, fp
c0de2cec:	f7ff fca5 	bl	c0de263a <tEdwards_add>
c0de2cf0:	2800      	cmp	r0, #0
c0de2cf2:	d1d9      	bne.n	c0de2ca8 <tEdwards_scalarMul_bn+0x70>
c0de2cf4:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2cf6:	3001      	adds	r0, #1
c0de2cf8:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2cfa:	3e01      	subs	r6, #1
c0de2cfc:	e7dc      	b.n	c0de2cb8 <tEdwards_scalarMul_bn+0x80>
c0de2cfe:	2000      	movs	r0, #0
c0de2d00:	e7d2      	b.n	c0de2ca8 <tEdwards_scalarMul_bn+0x70>
	...

c0de2d04 <tEdwards_scalarMul>:
c0de2d04:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2d06:	460c      	mov	r4, r1
c0de2d08:	6801      	ldr	r1, [r0, #0]
c0de2d0a:	4299      	cmp	r1, r3
c0de2d0c:	bf3c      	itt	cc
c0de2d0e:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2d40 <tEdwards_scalarMul+0x3c>)
c0de2d10:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2d12:	4605      	mov	r5, r0
c0de2d14:	20ca      	movs	r0, #202	@ 0xca
c0de2d16:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2d18:	a801      	add	r0, sp, #4
c0de2d1a:	f004 fa9f 	bl	c0de725c <cx_bn_alloc_init>
c0de2d1e:	b100      	cbz	r0, c0de2d22 <tEdwards_scalarMul+0x1e>
c0de2d20:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2d22:	20b3      	movs	r0, #179	@ 0xb3
c0de2d24:	9b06      	ldr	r3, [sp, #24]
c0de2d26:	4621      	mov	r1, r4
c0de2d28:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2d2a:	aa01      	add	r2, sp, #4
c0de2d2c:	4628      	mov	r0, r5
c0de2d2e:	f7ff ff83 	bl	c0de2c38 <tEdwards_scalarMul_bn>
c0de2d32:	2800      	cmp	r0, #0
c0de2d34:	d1f4      	bne.n	c0de2d20 <tEdwards_scalarMul+0x1c>
c0de2d36:	a801      	add	r0, sp, #4
c0de2d38:	f004 fa9c 	bl	c0de7274 <cx_bn_destroy>
c0de2d3c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2d3e:	bf00      	nop
c0de2d40:	5a4b4e01 	.word	0x5a4b4e01

c0de2d44 <OUTLINED_FUNCTION_0>:
c0de2d44:	4633      	mov	r3, r6
c0de2d46:	f004 bb6b 	b.w	c0de7420 <cx_mont_mul>

c0de2d4a <OUTLINED_FUNCTION_1>:
c0de2d4a:	462b      	mov	r3, r5
c0de2d4c:	f004 bb68 	b.w	c0de7420 <cx_mont_mul>

c0de2d50 <OUTLINED_FUNCTION_2>:
c0de2d50:	4633      	mov	r3, r6
c0de2d52:	460a      	mov	r2, r1
c0de2d54:	f004 bb64 	b.w	c0de7420 <cx_mont_mul>

c0de2d58 <OUTLINED_FUNCTION_3>:
c0de2d58:	462a      	mov	r2, r5
c0de2d5a:	4601      	mov	r1, r0
c0de2d5c:	f004 bb48 	b.w	c0de73f0 <cx_mont_to_montgomery>

c0de2d60 <OUTLINED_FUNCTION_4>:
c0de2d60:	4620      	mov	r0, r4
c0de2d62:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2d66:	f004 ba6f 	b.w	c0de7248 <cx_bn_alloc>

c0de2d6a <OUTLINED_FUNCTION_5>:
c0de2d6a:	4620      	mov	r0, r4
c0de2d6c:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2d70:	f004 ba6a 	b.w	c0de7248 <cx_bn_alloc>

c0de2d74 <OUTLINED_FUNCTION_6>:
c0de2d74:	4620      	mov	r0, r4
c0de2d76:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2d7a:	f004 ba65 	b.w	c0de7248 <cx_bn_alloc>

c0de2d7e <OUTLINED_FUNCTION_7>:
c0de2d7e:	4620      	mov	r0, r4
c0de2d80:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2d84:	f004 ba60 	b.w	c0de7248 <cx_bn_alloc>

c0de2d88 <OUTLINED_FUNCTION_8>:
c0de2d88:	4620      	mov	r0, r4
c0de2d8a:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2d8e:	f004 ba5b 	b.w	c0de7248 <cx_bn_alloc>

c0de2d92 <OUTLINED_FUNCTION_9>:
c0de2d92:	4620      	mov	r0, r4
c0de2d94:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2d98:	f004 ba56 	b.w	c0de7248 <cx_bn_alloc>

c0de2d9c <OUTLINED_FUNCTION_10>:
c0de2d9c:	4620      	mov	r0, r4
c0de2d9e:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2da2:	f004 ba51 	b.w	c0de7248 <cx_bn_alloc>

c0de2da6 <OUTLINED_FUNCTION_11>:
c0de2da6:	6860      	ldr	r0, [r4, #4]
c0de2da8:	f004 ba84 	b.w	c0de72b4 <cx_bn_copy>

c0de2dac <grain_lfsr_advance>:
c0de2dac:	b5b0      	push	{r4, r5, r7, lr}
c0de2dae:	68c2      	ldr	r2, [r0, #12]
c0de2db0:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2db4:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2db8:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2dbc:	07e4      	lsls	r4, r4, #31
c0de2dbe:	60c5      	str	r5, [r0, #12]
c0de2dc0:	07dd      	lsls	r5, r3, #31
c0de2dc2:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2dc6:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2dca:	6044      	str	r4, [r0, #4]
c0de2dcc:	4c15      	ldr	r4, [pc, #84]	@ (c0de2e24 <grain_lfsr_advance+0x78>)
c0de2dce:	6005      	str	r5, [r0, #0]
c0de2dd0:	4021      	ands	r1, r4
c0de2dd2:	4c15      	ldr	r4, [pc, #84]	@ (c0de2e28 <grain_lfsr_advance+0x7c>)
c0de2dd4:	4023      	ands	r3, r4
c0de2dd6:	4419      	add	r1, r3
c0de2dd8:	0c0c      	lsrs	r4, r1, #16
c0de2dda:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2dde:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2de2:	4421      	add	r1, r4
c0de2de4:	0a0c      	lsrs	r4, r1, #8
c0de2de6:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2dea:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2dee:	4061      	eors	r1, r4
c0de2df0:	090c      	lsrs	r4, r1, #4
c0de2df2:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2df6:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2dfa:	4061      	eors	r1, r4
c0de2dfc:	088c      	lsrs	r4, r1, #2
c0de2dfe:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2e02:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2e06:	4061      	eors	r1, r4
c0de2e08:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2e0c:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2e10:	4059      	eors	r1, r3
c0de2e12:	f001 0101 	and.w	r1, r1, #1
c0de2e16:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2e1a:	6082      	str	r2, [r0, #8]
c0de2e1c:	4608      	mov	r0, r1
c0de2e1e:	2100      	movs	r1, #0
c0de2e20:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e22:	bf00      	nop
c0de2e24:	00802001 	.word	0x00802001
c0de2e28:	40080040 	.word	0x40080040

c0de2e2c <next64_graingen>:
c0de2e2c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2e30:	460c      	mov	r4, r1
c0de2e32:	4605      	mov	r5, r0
c0de2e34:	f04f 0a00 	mov.w	sl, #0
c0de2e38:	f04f 0800 	mov.w	r8, #0
c0de2e3c:	2700      	movs	r7, #0
c0de2e3e:	42a7      	cmp	r7, r4
c0de2e40:	d215      	bcs.n	c0de2e6e <next64_graingen+0x42>
c0de2e42:	4628      	mov	r0, r5
c0de2e44:	f7ff ffb2 	bl	c0de2dac <grain_lfsr_advance>
c0de2e48:	4606      	mov	r6, r0
c0de2e4a:	4628      	mov	r0, r5
c0de2e4c:	f7ff ffae 	bl	c0de2dac <grain_lfsr_advance>
c0de2e50:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2e54:	0781      	lsls	r1, r0, #30
c0de2e56:	d5f2      	bpl.n	c0de2e3e <next64_graingen+0x12>
c0de2e58:	f000 0001 	and.w	r0, r0, #1
c0de2e5c:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2e60:	3701      	adds	r7, #1
c0de2e62:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2e66:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2e6a:	4682      	mov	sl, r0
c0de2e6c:	e7e7      	b.n	c0de2e3e <next64_graingen+0x12>
c0de2e6e:	4650      	mov	r0, sl
c0de2e70:	4641      	mov	r1, r8
c0de2e72:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2e78 <init_generator>:
c0de2e78:	b5b0      	push	{r4, r5, r7, lr}
c0de2e7a:	4a09      	ldr	r2, [pc, #36]	@ (c0de2ea0 <init_generator+0x28>)
c0de2e7c:	4b09      	ldr	r3, [pc, #36]	@ (c0de2ea4 <init_generator+0x2c>)
c0de2e7e:	4604      	mov	r4, r0
c0de2e80:	25a0      	movs	r5, #160	@ 0xa0
c0de2e82:	2000      	movs	r0, #0
c0de2e84:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2e88:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2e8c:	e9c4 3200 	strd	r3, r2, [r4]
c0de2e90:	b125      	cbz	r5, c0de2e9c <init_generator+0x24>
c0de2e92:	4620      	mov	r0, r4
c0de2e94:	f7ff ff8a 	bl	c0de2dac <grain_lfsr_advance>
c0de2e98:	3d01      	subs	r5, #1
c0de2e9a:	e7f9      	b.n	c0de2e90 <init_generator+0x18>
c0de2e9c:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e9e:	bf00      	nop
c0de2ea0:	fffcf010 	.word	0xfffcf010
c0de2ea4:	1801fc02 	.word	0x1801fc02

c0de2ea8 <gen_integer>:
c0de2ea8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2eac:	4f20      	ldr	r7, [pc, #128]	@ (c0de2f30 <gen_integer+0x88>)
c0de2eae:	4e22      	ldr	r6, [pc, #136]	@ (c0de2f38 <gen_integer+0x90>)
c0de2eb0:	4605      	mov	r5, r0
c0de2eb2:	460c      	mov	r4, r1
c0de2eb4:	2000      	movs	r0, #0
c0de2eb6:	46b8      	mov	r8, r7
c0de2eb8:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2f34 <gen_integer+0x8c>)
c0de2eba:	447e      	add	r6, pc
c0de2ebc:	b9f8      	cbnz	r0, c0de2efe <gen_integer+0x56>
c0de2ebe:	4628      	mov	r0, r5
c0de2ec0:	213e      	movs	r1, #62	@ 0x3e
c0de2ec2:	47b0      	blx	r6
c0de2ec4:	e9c4 0100 	strd	r0, r1, [r4]
c0de2ec8:	4628      	mov	r0, r5
c0de2eca:	2140      	movs	r1, #64	@ 0x40
c0de2ecc:	47b0      	blx	r6
c0de2ece:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2ed2:	4628      	mov	r0, r5
c0de2ed4:	2140      	movs	r1, #64	@ 0x40
c0de2ed6:	47b0      	blx	r6
c0de2ed8:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2edc:	4628      	mov	r0, r5
c0de2ede:	2140      	movs	r1, #64	@ 0x40
c0de2ee0:	47b0      	blx	r6
c0de2ee2:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2ee6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2eea:	463a      	mov	r2, r7
c0de2eec:	1bc0      	subs	r0, r0, r7
c0de2eee:	4640      	mov	r0, r8
c0de2ef0:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2ef4:	f04f 0000 	mov.w	r0, #0
c0de2ef8:	bf38      	it	cc
c0de2efa:	2001      	movcc	r0, #1
c0de2efc:	e7de      	b.n	c0de2ebc <gen_integer+0x14>
c0de2efe:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2f02:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2f3c <gen_integer+0x94>)
c0de2f04:	447d      	add	r5, pc
c0de2f06:	47a8      	blx	r5
c0de2f08:	e9c4 0100 	strd	r0, r1, [r4]
c0de2f0c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2f10:	47a8      	blx	r5
c0de2f12:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2f16:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2f1a:	47a8      	blx	r5
c0de2f1c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2f20:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2f24:	47a8      	blx	r5
c0de2f26:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2f2a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2f2e:	bf00      	nop
c0de2f30:	305a4b4e 	.word	0x305a4b4e
c0de2f34:	4f582122 	.word	0x4f582122
c0de2f38:	ffffff6f 	.word	0xffffff6f
c0de2f3c:	00000039 	.word	0x00000039

c0de2f40 <rev64>:
c0de2f40:	ba0a      	rev	r2, r1
c0de2f42:	ba01      	rev	r1, r0
c0de2f44:	4610      	mov	r0, r2
c0de2f46:	4770      	bx	lr

c0de2f48 <Poseidon_getNext_RC>:
c0de2f48:	30c0      	adds	r0, #192	@ 0xc0
c0de2f4a:	f7ff bfad 	b.w	c0de2ea8 <gen_integer>
	...

c0de2f50 <Poseidon_alloc_init>:
c0de2f50:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2f54:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2f58:	4604      	mov	r4, r0
c0de2f5a:	30c0      	adds	r0, #192	@ 0xc0
c0de2f5c:	461e      	mov	r6, r3
c0de2f5e:	4617      	mov	r7, r2
c0de2f60:	460d      	mov	r5, r1
c0de2f62:	f7ff ff89 	bl	c0de2e78 <init_generator>
c0de2f66:	492c      	ldr	r1, [pc, #176]	@ (c0de3018 <Poseidon_alloc_init+0xc8>)
c0de2f68:	46e8      	mov	r8, sp
c0de2f6a:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2f6e:	4640      	mov	r0, r8
c0de2f70:	4479      	add	r1, pc
c0de2f72:	f004 fc1f 	bl	c0de77b4 <__aeabi_memcpy>
c0de2f76:	2000      	movs	r0, #0
c0de2f78:	7325      	strb	r5, [r4, #12]
c0de2f7a:	6166      	str	r6, [r4, #20]
c0de2f7c:	4621      	mov	r1, r4
c0de2f7e:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2f82:	1c78      	adds	r0, r7, #1
c0de2f84:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2f88:	6830      	ldr	r0, [r6, #0]
c0de2f8a:	f004 f97d 	bl	c0de7288 <cx_bn_nbytes>
c0de2f8e:	b930      	cbnz	r0, c0de2f9e <Poseidon_alloc_init+0x4e>
c0de2f90:	4620      	mov	r0, r4
c0de2f92:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2f96:	4631      	mov	r1, r6
c0de2f98:	f004 f956 	bl	c0de7248 <cx_bn_alloc>
c0de2f9c:	b118      	cbz	r0, c0de2fa6 <Poseidon_alloc_init+0x56>
c0de2f9e:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2fa2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2fa6:	68a0      	ldr	r0, [r4, #8]
c0de2fa8:	2500      	movs	r5, #0
c0de2faa:	4285      	cmp	r5, r0
c0de2fac:	d230      	bcs.n	c0de3010 <Poseidon_alloc_init+0xc0>
c0de2fae:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2fb2:	4631      	mov	r1, r6
c0de2fb4:	f107 0018 	add.w	r0, r7, #24
c0de2fb8:	f004 f946 	bl	c0de7248 <cx_bn_alloc>
c0de2fbc:	2800      	cmp	r0, #0
c0de2fbe:	d1ee      	bne.n	c0de2f9e <Poseidon_alloc_init+0x4e>
c0de2fc0:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2fc4:	4631      	mov	r1, r6
c0de2fc6:	f004 f93f 	bl	c0de7248 <cx_bn_alloc>
c0de2fca:	2800      	cmp	r0, #0
c0de2fcc:	d1e7      	bne.n	c0de2f9e <Poseidon_alloc_init+0x4e>
c0de2fce:	2700      	movs	r7, #0
c0de2fd0:	68a0      	ldr	r0, [r4, #8]
c0de2fd2:	4287      	cmp	r7, r0
c0de2fd4:	d21a      	bcs.n	c0de300c <Poseidon_alloc_init+0xbc>
c0de2fd6:	fb05 7000 	mla	r0, r5, r0, r7
c0de2fda:	4631      	mov	r1, r6
c0de2fdc:	4633      	mov	r3, r6
c0de2fde:	fb00 8206 	mla	r2, r0, r6, r8
c0de2fe2:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2fe6:	3030      	adds	r0, #48	@ 0x30
c0de2fe8:	f004 f938 	bl	c0de725c <cx_bn_alloc_init>
c0de2fec:	2800      	cmp	r0, #0
c0de2fee:	d1d6      	bne.n	c0de2f9e <Poseidon_alloc_init+0x4e>
c0de2ff0:	68a0      	ldr	r0, [r4, #8]
c0de2ff2:	6962      	ldr	r2, [r4, #20]
c0de2ff4:	fb05 7000 	mla	r0, r5, r0, r7
c0de2ff8:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2ffc:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2ffe:	4601      	mov	r1, r0
c0de3000:	f004 f9f6 	bl	c0de73f0 <cx_mont_to_montgomery>
c0de3004:	3701      	adds	r7, #1
c0de3006:	2800      	cmp	r0, #0
c0de3008:	d0e2      	beq.n	c0de2fd0 <Poseidon_alloc_init+0x80>
c0de300a:	e7c8      	b.n	c0de2f9e <Poseidon_alloc_init+0x4e>
c0de300c:	3501      	adds	r5, #1
c0de300e:	e7cc      	b.n	c0de2faa <Poseidon_alloc_init+0x5a>
c0de3010:	2001      	movs	r0, #1
c0de3012:	6120      	str	r0, [r4, #16]
c0de3014:	2000      	movs	r0, #0
c0de3016:	e7c2      	b.n	c0de2f9e <Poseidon_alloc_init+0x4e>
c0de3018:	00005820 	.word	0x00005820

c0de301c <Poseidon>:
c0de301c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3020:	b08c      	sub	sp, #48	@ 0x30
c0de3022:	4606      	mov	r6, r0
c0de3024:	6900      	ldr	r0, [r0, #16]
c0de3026:	2801      	cmp	r0, #1
c0de3028:	f040 80b4 	bne.w	c0de3194 <Poseidon+0x178>
c0de302c:	69b0      	ldr	r0, [r6, #24]
c0de302e:	461f      	mov	r7, r3
c0de3030:	4692      	mov	sl, r2
c0de3032:	f004 f949 	bl	c0de72c8 <cx_bn_set_u32>
c0de3036:	2800      	cmp	r0, #0
c0de3038:	f040 80ad 	bne.w	c0de3196 <Poseidon+0x17a>
c0de303c:	f106 000c 	add.w	r0, r6, #12
c0de3040:	f106 0818 	add.w	r8, r6, #24
c0de3044:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de3048:	9001      	str	r0, [sp, #4]
c0de304a:	2000      	movs	r0, #0
c0de304c:	2844      	cmp	r0, #68	@ 0x44
c0de304e:	f000 80ae 	beq.w	c0de31ae <Poseidon+0x192>
c0de3052:	6834      	ldr	r4, [r6, #0]
c0de3054:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de3058:	f04f 0a00 	mov.w	sl, #0
c0de305c:	68b0      	ldr	r0, [r6, #8]
c0de305e:	4582      	cmp	sl, r0
c0de3060:	d224      	bcs.n	c0de30ac <Poseidon+0x90>
c0de3062:	ad04      	add	r5, sp, #16
c0de3064:	4658      	mov	r0, fp
c0de3066:	4629      	mov	r1, r5
c0de3068:	f7ff ff1e 	bl	c0de2ea8 <gen_integer>
c0de306c:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3070:	4629      	mov	r1, r5
c0de3072:	4622      	mov	r2, r4
c0de3074:	f004 f912 	bl	c0de729c <cx_bn_init>
c0de3078:	2800      	cmp	r0, #0
c0de307a:	f040 808c 	bne.w	c0de3196 <Poseidon+0x17a>
c0de307e:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3082:	6972      	ldr	r2, [r6, #20]
c0de3084:	4601      	mov	r1, r0
c0de3086:	f004 f9b3 	bl	c0de73f0 <cx_mont_to_montgomery>
c0de308a:	2800      	cmp	r0, #0
c0de308c:	f040 8083 	bne.w	c0de3196 <Poseidon+0x17a>
c0de3090:	6972      	ldr	r2, [r6, #20]
c0de3092:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de3096:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de309a:	6813      	ldr	r3, [r2, #0]
c0de309c:	4602      	mov	r2, r0
c0de309e:	f004 f94d 	bl	c0de733c <cx_bn_mod_add>
c0de30a2:	f10a 0a01 	add.w	sl, sl, #1
c0de30a6:	2800      	cmp	r0, #0
c0de30a8:	d0d8      	beq.n	c0de305c <Poseidon+0x40>
c0de30aa:	e074      	b.n	c0de3196 <Poseidon+0x17a>
c0de30ac:	9902      	ldr	r1, [sp, #8]
c0de30ae:	2904      	cmp	r1, #4
c0de30b0:	d301      	bcc.n	c0de30b6 <Poseidon+0x9a>
c0de30b2:	2940      	cmp	r1, #64	@ 0x40
c0de30b4:	d323      	bcc.n	c0de30fe <Poseidon+0xe2>
c0de30b6:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de30ba:	2400      	movs	r4, #0
c0de30bc:	4284      	cmp	r4, r0
c0de30be:	d22b      	bcs.n	c0de3118 <Poseidon+0xfc>
c0de30c0:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de30c4:	6973      	ldr	r3, [r6, #20]
c0de30c6:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de30ca:	460a      	mov	r2, r1
c0de30cc:	f004 f9a8 	bl	c0de7420 <cx_mont_mul>
c0de30d0:	2800      	cmp	r0, #0
c0de30d2:	d160      	bne.n	c0de3196 <Poseidon+0x17a>
c0de30d4:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de30d8:	6973      	ldr	r3, [r6, #20]
c0de30da:	460a      	mov	r2, r1
c0de30dc:	f004 f9a0 	bl	c0de7420 <cx_mont_mul>
c0de30e0:	2800      	cmp	r0, #0
c0de30e2:	d158      	bne.n	c0de3196 <Poseidon+0x17a>
c0de30e4:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de30e8:	6973      	ldr	r3, [r6, #20]
c0de30ea:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de30ee:	4601      	mov	r1, r0
c0de30f0:	f004 f996 	bl	c0de7420 <cx_mont_mul>
c0de30f4:	2800      	cmp	r0, #0
c0de30f6:	d14e      	bne.n	c0de3196 <Poseidon+0x17a>
c0de30f8:	68b0      	ldr	r0, [r6, #8]
c0de30fa:	3401      	adds	r4, #1
c0de30fc:	e7de      	b.n	c0de30bc <Poseidon+0xa0>
c0de30fe:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3102:	9a01      	ldr	r2, [sp, #4]
c0de3104:	2301      	movs	r3, #1
c0de3106:	9100      	str	r1, [sp, #0]
c0de3108:	4601      	mov	r1, r0
c0de310a:	f004 f995 	bl	c0de7438 <cx_mont_pow>
c0de310e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3112:	2800      	cmp	r0, #0
c0de3114:	d13f      	bne.n	c0de3196 <Poseidon+0x17a>
c0de3116:	68b0      	ldr	r0, [r6, #8]
c0de3118:	2500      	movs	r5, #0
c0de311a:	4285      	cmp	r5, r0
c0de311c:	d229      	bcs.n	c0de3172 <Poseidon+0x156>
c0de311e:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3122:	2100      	movs	r1, #0
c0de3124:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3128:	f004 f8ce 	bl	c0de72c8 <cx_bn_set_u32>
c0de312c:	bb98      	cbnz	r0, c0de3196 <Poseidon+0x17a>
c0de312e:	9503      	str	r5, [sp, #12]
c0de3130:	2500      	movs	r5, #0
c0de3132:	68b0      	ldr	r0, [r6, #8]
c0de3134:	4285      	cmp	r5, r0
c0de3136:	d219      	bcs.n	c0de316c <Poseidon+0x150>
c0de3138:	9903      	ldr	r1, [sp, #12]
c0de313a:	6973      	ldr	r3, [r6, #20]
c0de313c:	fb01 5000 	mla	r0, r1, r0, r5
c0de3140:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3144:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3148:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de314a:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de314e:	f004 f967 	bl	c0de7420 <cx_mont_mul>
c0de3152:	bb00      	cbnz	r0, c0de3196 <Poseidon+0x17a>
c0de3154:	6971      	ldr	r1, [r6, #20]
c0de3156:	6820      	ldr	r0, [r4, #0]
c0de3158:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de315c:	680b      	ldr	r3, [r1, #0]
c0de315e:	4601      	mov	r1, r0
c0de3160:	f004 f8ec 	bl	c0de733c <cx_bn_mod_add>
c0de3164:	3501      	adds	r5, #1
c0de3166:	2800      	cmp	r0, #0
c0de3168:	d0e3      	beq.n	c0de3132 <Poseidon+0x116>
c0de316a:	e014      	b.n	c0de3196 <Poseidon+0x17a>
c0de316c:	9d03      	ldr	r5, [sp, #12]
c0de316e:	3501      	adds	r5, #1
c0de3170:	e7d3      	b.n	c0de311a <Poseidon+0xfe>
c0de3172:	2400      	movs	r4, #0
c0de3174:	4284      	cmp	r4, r0
c0de3176:	d20a      	bcs.n	c0de318e <Poseidon+0x172>
c0de3178:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de317c:	6988      	ldr	r0, [r1, #24]
c0de317e:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3182:	f004 f897 	bl	c0de72b4 <cx_bn_copy>
c0de3186:	b930      	cbnz	r0, c0de3196 <Poseidon+0x17a>
c0de3188:	68b0      	ldr	r0, [r6, #8]
c0de318a:	3401      	adds	r4, #1
c0de318c:	e7f2      	b.n	c0de3174 <Poseidon+0x158>
c0de318e:	9802      	ldr	r0, [sp, #8]
c0de3190:	3001      	adds	r0, #1
c0de3192:	e75b      	b.n	c0de304c <Poseidon+0x30>
c0de3194:	4808      	ldr	r0, [pc, #32]	@ (c0de31b8 <Poseidon+0x19c>)
c0de3196:	b00c      	add	sp, #48	@ 0x30
c0de3198:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de319c:	f858 1b04 	ldr.w	r1, [r8], #4
c0de31a0:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de31a4:	f004 f886 	bl	c0de72b4 <cx_bn_copy>
c0de31a8:	3f01      	subs	r7, #1
c0de31aa:	2800      	cmp	r0, #0
c0de31ac:	d1f3      	bne.n	c0de3196 <Poseidon+0x17a>
c0de31ae:	2f00      	cmp	r7, #0
c0de31b0:	d1f4      	bne.n	c0de319c <Poseidon+0x180>
c0de31b2:	2000      	movs	r0, #0
c0de31b4:	e7ef      	b.n	c0de3196 <Poseidon+0x17a>
c0de31b6:	bf00      	nop
c0de31b8:	5a4b4e02 	.word	0x5a4b4e02

c0de31bc <RFC9591_taggedHash>:
c0de31bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de31be:	b0d9      	sub	sp, #356	@ 0x164
c0de31c0:	460e      	mov	r6, r1
c0de31c2:	4607      	mov	r7, r0
c0de31c4:	a858      	add	r0, sp, #352	@ 0x160
c0de31c6:	2140      	movs	r1, #64	@ 0x40
c0de31c8:	461c      	mov	r4, r3
c0de31ca:	4615      	mov	r5, r2
c0de31cc:	f004 f83c 	bl	c0de7248 <cx_bn_alloc>
c0de31d0:	bbd8      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de31d2:	491f      	ldr	r1, [pc, #124]	@ (c0de3250 <RFC9591_taggedHash+0x94>)
c0de31d4:	4668      	mov	r0, sp
c0de31d6:	221d      	movs	r2, #29
c0de31d8:	4479      	add	r1, pc
c0de31da:	f004 faeb 	bl	c0de77b4 <__aeabi_memcpy>
c0de31de:	a808      	add	r0, sp, #32
c0de31e0:	2109      	movs	r1, #9
c0de31e2:	2240      	movs	r2, #64	@ 0x40
c0de31e4:	f003 fdc4 	bl	c0de6d70 <cx_hash_init_ex>
c0de31e8:	bb78      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de31ea:	a808      	add	r0, sp, #32
c0de31ec:	4669      	mov	r1, sp
c0de31ee:	221d      	movs	r2, #29
c0de31f0:	f003 fdc3 	bl	c0de6d7a <cx_hash_update>
c0de31f4:	bb48      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de31f6:	a808      	add	r0, sp, #32
c0de31f8:	4639      	mov	r1, r7
c0de31fa:	4632      	mov	r2, r6
c0de31fc:	f003 fdbd 	bl	c0de6d7a <cx_hash_update>
c0de3200:	bb18      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de3202:	a808      	add	r0, sp, #32
c0de3204:	4629      	mov	r1, r5
c0de3206:	4622      	mov	r2, r4
c0de3208:	f003 fdb7 	bl	c0de6d7a <cx_hash_update>
c0de320c:	b9e8      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de320e:	a808      	add	r0, sp, #32
c0de3210:	ae48      	add	r6, sp, #288	@ 0x120
c0de3212:	4631      	mov	r1, r6
c0de3214:	f003 fda7 	bl	c0de6d66 <cx_hash_final>
c0de3218:	b9b8      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de321a:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de321e:	2000      	movs	r0, #0
c0de3220:	213f      	movs	r1, #63	@ 0x3f
c0de3222:	2820      	cmp	r0, #32
c0de3224:	d002      	beq.n	c0de322c <RFC9591_taggedHash+0x70>
c0de3226:	f000 f8dd 	bl	c0de33e4 <OUTLINED_FUNCTION_3>
c0de322a:	e7fa      	b.n	c0de3222 <RFC9591_taggedHash+0x66>
c0de322c:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de322e:	a948      	add	r1, sp, #288	@ 0x120
c0de3230:	2240      	movs	r2, #64	@ 0x40
c0de3232:	f004 f833 	bl	c0de729c <cx_bn_init>
c0de3236:	b940      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de3238:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de323a:	4628      	mov	r0, r5
c0de323c:	4622      	mov	r2, r4
c0de323e:	f004 f8a1 	bl	c0de7384 <cx_bn_reduce>
c0de3242:	b910      	cbnz	r0, c0de324a <RFC9591_taggedHash+0x8e>
c0de3244:	a858      	add	r0, sp, #352	@ 0x160
c0de3246:	f004 f815 	bl	c0de7274 <cx_bn_destroy>
c0de324a:	b059      	add	sp, #356	@ 0x164
c0de324c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de324e:	bf00      	nop
c0de3250:	00005a38 	.word	0x00005a38

c0de3254 <Babyfrost_H1>:
c0de3254:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3256:	4605      	mov	r5, r0
c0de3258:	206f      	movs	r0, #111	@ 0x6f
c0de325a:	f000 f8b7 	bl	c0de33cc <OUTLINED_FUNCTION_1>
c0de325e:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3262:	f000 f8ba 	bl	c0de33da <OUTLINED_FUNCTION_2>
c0de3266:	a803      	add	r0, sp, #12
c0de3268:	f7ff ffa8 	bl	c0de31bc <RFC9591_taggedHash>
c0de326c:	b004      	add	sp, #16
c0de326e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3270 <Babyfrost_H3>:
c0de3270:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3272:	4605      	mov	r5, r0
c0de3274:	2065      	movs	r0, #101	@ 0x65
c0de3276:	460c      	mov	r4, r1
c0de3278:	e9cd 2300 	strd	r2, r3, [sp]
c0de327c:	2105      	movs	r1, #5
c0de327e:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3282:	4804      	ldr	r0, [pc, #16]	@ (c0de3294 <Babyfrost_H3+0x24>)
c0de3284:	462a      	mov	r2, r5
c0de3286:	4623      	mov	r3, r4
c0de3288:	9002      	str	r0, [sp, #8]
c0de328a:	a802      	add	r0, sp, #8
c0de328c:	f7ff ff96 	bl	c0de31bc <RFC9591_taggedHash>
c0de3290:	b004      	add	sp, #16
c0de3292:	bdb0      	pop	{r4, r5, r7, pc}
c0de3294:	636e6f6e 	.word	0x636e6f6e

c0de3298 <Babyfrost_H4>:
c0de3298:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de329a:	4605      	mov	r5, r0
c0de329c:	2067      	movs	r0, #103	@ 0x67
c0de329e:	f000 f895 	bl	c0de33cc <OUTLINED_FUNCTION_1>
c0de32a2:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de32a6:	f000 f898 	bl	c0de33da <OUTLINED_FUNCTION_2>
c0de32aa:	a803      	add	r0, sp, #12
c0de32ac:	f7ff ff86 	bl	c0de31bc <RFC9591_taggedHash>
c0de32b0:	b004      	add	sp, #16
c0de32b2:	bdb0      	pop	{r4, r5, r7, pc}

c0de32b4 <Babyfrost_H5>:
c0de32b4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de32b6:	4605      	mov	r5, r0
c0de32b8:	206d      	movs	r0, #109	@ 0x6d
c0de32ba:	f000 f887 	bl	c0de33cc <OUTLINED_FUNCTION_1>
c0de32be:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de32c2:	f000 f88a 	bl	c0de33da <OUTLINED_FUNCTION_2>
c0de32c6:	a803      	add	r0, sp, #12
c0de32c8:	f7ff ff78 	bl	c0de31bc <RFC9591_taggedHash>
c0de32cc:	b004      	add	sp, #16
c0de32ce:	bdb0      	pop	{r4, r5, r7, pc}

c0de32d0 <zkn_frost_hash_init>:
c0de32d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de32d2:	461d      	mov	r5, r3
c0de32d4:	4604      	mov	r4, r0
c0de32d6:	f003 fd4b 	bl	c0de6d70 <cx_hash_init_ex>
c0de32da:	b938      	cbnz	r0, c0de32ec <zkn_frost_hash_init+0x1c>
c0de32dc:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de32e0:	9e08      	ldr	r6, [sp, #32]
c0de32e2:	4620      	mov	r0, r4
c0de32e4:	4629      	mov	r1, r5
c0de32e6:	f003 fd48 	bl	c0de6d7a <cx_hash_update>
c0de32ea:	b100      	cbz	r0, c0de32ee <zkn_frost_hash_init+0x1e>
c0de32ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de32ee:	4620      	mov	r0, r4
c0de32f0:	4639      	mov	r1, r7
c0de32f2:	4632      	mov	r2, r6
c0de32f4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de32f8:	f003 bd3f 	b.w	c0de6d7a <cx_hash_update>

c0de32fc <zkn_frost_H1_init>:
c0de32fc:	b570      	push	{r4, r5, r6, lr}
c0de32fe:	b08c      	sub	sp, #48	@ 0x30
c0de3300:	4604      	mov	r4, r0
c0de3302:	206f      	movs	r0, #111	@ 0x6f
c0de3304:	221d      	movs	r2, #29
c0de3306:	261d      	movs	r6, #29
c0de3308:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de330c:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3310:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3314:	ad03      	add	r5, sp, #12
c0de3316:	4905      	ldr	r1, [pc, #20]	@ (c0de332c <zkn_frost_H1_init+0x30>)
c0de3318:	4628      	mov	r0, r5
c0de331a:	4479      	add	r1, pc
c0de331c:	f004 fa4a 	bl	c0de77b4 <__aeabi_memcpy>
c0de3320:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3322:	f000 f849 	bl	c0de33b8 <OUTLINED_FUNCTION_0>
c0de3326:	b00c      	add	sp, #48	@ 0x30
c0de3328:	bd70      	pop	{r4, r5, r6, pc}
c0de332a:	bf00      	nop
c0de332c:	000058f6 	.word	0x000058f6

c0de3330 <zkn_frost_H5_init>:
c0de3330:	b570      	push	{r4, r5, r6, lr}
c0de3332:	b08c      	sub	sp, #48	@ 0x30
c0de3334:	4604      	mov	r4, r0
c0de3336:	206d      	movs	r0, #109	@ 0x6d
c0de3338:	221d      	movs	r2, #29
c0de333a:	261d      	movs	r6, #29
c0de333c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3340:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3344:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3348:	ad03      	add	r5, sp, #12
c0de334a:	4905      	ldr	r1, [pc, #20]	@ (c0de3360 <zkn_frost_H5_init+0x30>)
c0de334c:	4628      	mov	r0, r5
c0de334e:	4479      	add	r1, pc
c0de3350:	f004 fa30 	bl	c0de77b4 <__aeabi_memcpy>
c0de3354:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3356:	f000 f82f 	bl	c0de33b8 <OUTLINED_FUNCTION_0>
c0de335a:	b00c      	add	sp, #48	@ 0x30
c0de335c:	bd70      	pop	{r4, r5, r6, pc}
c0de335e:	bf00      	nop
c0de3360:	000058c2 	.word	0x000058c2

c0de3364 <zkn_frost_hash_update>:
c0de3364:	f003 bd09 	b.w	c0de6d7a <cx_hash_update>

c0de3368 <zkn_frost_hash_final>:
c0de3368:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de336a:	b091      	sub	sp, #68	@ 0x44
c0de336c:	460c      	mov	r4, r1
c0de336e:	4607      	mov	r7, r0
c0de3370:	a810      	add	r0, sp, #64	@ 0x40
c0de3372:	2140      	movs	r1, #64	@ 0x40
c0de3374:	4615      	mov	r5, r2
c0de3376:	f003 ff67 	bl	c0de7248 <cx_bn_alloc>
c0de337a:	b9d8      	cbnz	r0, c0de33b4 <zkn_frost_hash_final+0x4c>
c0de337c:	466e      	mov	r6, sp
c0de337e:	4638      	mov	r0, r7
c0de3380:	4631      	mov	r1, r6
c0de3382:	f003 fcf0 	bl	c0de6d66 <cx_hash_final>
c0de3386:	b9a8      	cbnz	r0, c0de33b4 <zkn_frost_hash_final+0x4c>
c0de3388:	2000      	movs	r0, #0
c0de338a:	213f      	movs	r1, #63	@ 0x3f
c0de338c:	2820      	cmp	r0, #32
c0de338e:	d002      	beq.n	c0de3396 <zkn_frost_hash_final+0x2e>
c0de3390:	f000 f828 	bl	c0de33e4 <OUTLINED_FUNCTION_3>
c0de3394:	e7fa      	b.n	c0de338c <zkn_frost_hash_final+0x24>
c0de3396:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3398:	4669      	mov	r1, sp
c0de339a:	2240      	movs	r2, #64	@ 0x40
c0de339c:	f003 ff7e 	bl	c0de729c <cx_bn_init>
c0de33a0:	b940      	cbnz	r0, c0de33b4 <zkn_frost_hash_final+0x4c>
c0de33a2:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de33a4:	4628      	mov	r0, r5
c0de33a6:	4622      	mov	r2, r4
c0de33a8:	f003 ffec 	bl	c0de7384 <cx_bn_reduce>
c0de33ac:	b910      	cbnz	r0, c0de33b4 <zkn_frost_hash_final+0x4c>
c0de33ae:	a810      	add	r0, sp, #64	@ 0x40
c0de33b0:	f003 ff60 	bl	c0de7274 <cx_bn_destroy>
c0de33b4:	b011      	add	sp, #68	@ 0x44
c0de33b6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de33b8 <OUTLINED_FUNCTION_0>:
c0de33b8:	2003      	movs	r0, #3
c0de33ba:	2240      	movs	r2, #64	@ 0x40
c0de33bc:	462b      	mov	r3, r5
c0de33be:	e9cd 6100 	strd	r6, r1, [sp]
c0de33c2:	9002      	str	r0, [sp, #8]
c0de33c4:	4620      	mov	r0, r4
c0de33c6:	2109      	movs	r1, #9
c0de33c8:	f7ff bf82 	b.w	c0de32d0 <zkn_frost_hash_init>

c0de33cc <OUTLINED_FUNCTION_1>:
c0de33cc:	460c      	mov	r4, r1
c0de33ce:	e9cd 2300 	strd	r2, r3, [sp]
c0de33d2:	2103      	movs	r1, #3
c0de33d4:	f88d 000e 	strb.w	r0, [sp, #14]
c0de33d8:	4770      	bx	lr

c0de33da <OUTLINED_FUNCTION_2>:
c0de33da:	462a      	mov	r2, r5
c0de33dc:	4623      	mov	r3, r4
c0de33de:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de33e2:	4770      	bx	lr

c0de33e4 <OUTLINED_FUNCTION_3>:
c0de33e4:	5c32      	ldrb	r2, [r6, r0]
c0de33e6:	5c73      	ldrb	r3, [r6, r1]
c0de33e8:	5433      	strb	r3, [r6, r0]
c0de33ea:	5472      	strb	r2, [r6, r1]
c0de33ec:	3901      	subs	r1, #1
c0de33ee:	3001      	adds	r0, #1
c0de33f0:	4770      	bx	lr

c0de33f2 <os_io_handle_default_apdu>:
c0de33f2:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de33f4:	b09d      	sub	sp, #116	@ 0x74
c0de33f6:	4615      	mov	r5, r2
c0de33f8:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de33fa:	b3c8      	cbz	r0, c0de3470 <os_io_handle_default_apdu+0x7e>
c0de33fc:	b3c1      	cbz	r1, c0de3470 <os_io_handle_default_apdu+0x7e>
c0de33fe:	b3bd      	cbz	r5, c0de3470 <os_io_handle_default_apdu+0x7e>
c0de3400:	461c      	mov	r4, r3
c0de3402:	b3ab      	cbz	r3, c0de3470 <os_io_handle_default_apdu+0x7e>
c0de3404:	b10a      	cbz	r2, c0de340a <os_io_handle_default_apdu+0x18>
c0de3406:	2100      	movs	r1, #0
c0de3408:	7011      	strb	r1, [r2, #0]
c0de340a:	7801      	ldrb	r1, [r0, #0]
c0de340c:	29b0      	cmp	r1, #176	@ 0xb0
c0de340e:	d131      	bne.n	c0de3474 <os_io_handle_default_apdu+0x82>
c0de3410:	7841      	ldrb	r1, [r0, #1]
c0de3412:	29a7      	cmp	r1, #167	@ 0xa7
c0de3414:	d031      	beq.n	c0de347a <os_io_handle_default_apdu+0x88>
c0de3416:	2906      	cmp	r1, #6
c0de3418:	d036      	beq.n	c0de3488 <os_io_handle_default_apdu+0x96>
c0de341a:	2901      	cmp	r1, #1
c0de341c:	d131      	bne.n	c0de3482 <os_io_handle_default_apdu+0x90>
c0de341e:	7881      	ldrb	r1, [r0, #2]
c0de3420:	bb79      	cbnz	r1, c0de3482 <os_io_handle_default_apdu+0x90>
c0de3422:	78c0      	ldrb	r0, [r0, #3]
c0de3424:	bb68      	cbnz	r0, c0de3482 <os_io_handle_default_apdu+0x90>
c0de3426:	6820      	ldr	r0, [r4, #0]
c0de3428:	2100      	movs	r1, #0
c0de342a:	6021      	str	r1, [r4, #0]
c0de342c:	2803      	cmp	r0, #3
c0de342e:	d321      	bcc.n	c0de3474 <os_io_handle_default_apdu+0x82>
c0de3430:	2601      	movs	r6, #1
c0de3432:	1ec7      	subs	r7, r0, #3
c0de3434:	6026      	str	r6, [r4, #0]
c0de3436:	702e      	strb	r6, [r5, #0]
c0de3438:	6820      	ldr	r0, [r4, #0]
c0de343a:	1a3a      	subs	r2, r7, r0
c0de343c:	4428      	add	r0, r5
c0de343e:	1c41      	adds	r1, r0, #1
c0de3440:	2001      	movs	r0, #1
c0de3442:	f004 f86f 	bl	c0de7524 <os_registry_get_current_app_tag>
c0de3446:	f000 f83f 	bl	c0de34c8 <OUTLINED_FUNCTION_0>
c0de344a:	6020      	str	r0, [r4, #0]
c0de344c:	1a3a      	subs	r2, r7, r0
c0de344e:	4428      	add	r0, r5
c0de3450:	1c41      	adds	r1, r0, #1
c0de3452:	2002      	movs	r0, #2
c0de3454:	f004 f866 	bl	c0de7524 <os_registry_get_current_app_tag>
c0de3458:	f000 f836 	bl	c0de34c8 <OUTLINED_FUNCTION_0>
c0de345c:	1c41      	adds	r1, r0, #1
c0de345e:	6021      	str	r1, [r4, #0]
c0de3460:	542e      	strb	r6, [r5, r0]
c0de3462:	f004 f857 	bl	c0de7514 <os_flags>
c0de3466:	6821      	ldr	r1, [r4, #0]
c0de3468:	1c4a      	adds	r2, r1, #1
c0de346a:	6022      	str	r2, [r4, #0]
c0de346c:	5468      	strb	r0, [r5, r1]
c0de346e:	e028      	b.n	c0de34c2 <os_io_handle_default_apdu+0xd0>
c0de3470:	7814      	ldrb	r4, [r2, #0]
c0de3472:	e01e      	b.n	c0de34b2 <os_io_handle_default_apdu+0xc0>
c0de3474:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3478:	e01b      	b.n	c0de34b2 <os_io_handle_default_apdu+0xc0>
c0de347a:	7881      	ldrb	r1, [r0, #2]
c0de347c:	b909      	cbnz	r1, c0de3482 <os_io_handle_default_apdu+0x90>
c0de347e:	78c0      	ldrb	r0, [r0, #3]
c0de3480:	b1d0      	cbz	r0, c0de34b8 <os_io_handle_default_apdu+0xc6>
c0de3482:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de3486:	e014      	b.n	c0de34b2 <os_io_handle_default_apdu+0xc0>
c0de3488:	2100      	movs	r1, #0
c0de348a:	6021      	str	r1, [r4, #0]
c0de348c:	7883      	ldrb	r3, [r0, #2]
c0de348e:	7902      	ldrb	r2, [r0, #4]
c0de3490:	ad02      	add	r5, sp, #8
c0de3492:	e9cd 1500 	strd	r1, r5, [sp]
c0de3496:	1d41      	adds	r1, r0, #5
c0de3498:	4618      	mov	r0, r3
c0de349a:	2300      	movs	r3, #0
c0de349c:	f004 f806 	bl	c0de74ac <os_pki_load_certificate>
c0de34a0:	4604      	mov	r4, r0
c0de34a2:	4628      	mov	r0, r5
c0de34a4:	216c      	movs	r1, #108	@ 0x6c
c0de34a6:	f004 f99d 	bl	c0de77e4 <explicit_bzero>
c0de34aa:	2c00      	cmp	r4, #0
c0de34ac:	bf08      	it	eq
c0de34ae:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de34b2:	4620      	mov	r0, r4
c0de34b4:	b01d      	add	sp, #116	@ 0x74
c0de34b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de34b8:	2000      	movs	r0, #0
c0de34ba:	6020      	str	r0, [r4, #0]
c0de34bc:	b10a      	cbz	r2, c0de34c2 <os_io_handle_default_apdu+0xd0>
c0de34be:	2001      	movs	r0, #1
c0de34c0:	7010      	strb	r0, [r2, #0]
c0de34c2:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de34c6:	e7f4      	b.n	c0de34b2 <os_io_handle_default_apdu+0xc0>

c0de34c8 <OUTLINED_FUNCTION_0>:
c0de34c8:	6821      	ldr	r1, [r4, #0]
c0de34ca:	1c4a      	adds	r2, r1, #1
c0de34cc:	6022      	str	r2, [r4, #0]
c0de34ce:	5468      	strb	r0, [r5, r1]
c0de34d0:	6821      	ldr	r1, [r4, #0]
c0de34d2:	4408      	add	r0, r1
c0de34d4:	4770      	bx	lr

c0de34d6 <io_process_itc_ux_event>:
c0de34d6:	b580      	push	{r7, lr}
c0de34d8:	78c0      	ldrb	r0, [r0, #3]
c0de34da:	2820      	cmp	r0, #32
c0de34dc:	d107      	bne.n	c0de34ee <io_process_itc_ux_event+0x18>
c0de34de:	2001      	movs	r0, #1
c0de34e0:	f003 fc65 	bl	c0de6dae <nbgl_objAllowDrawing>
c0de34e4:	f003 fc72 	bl	c0de6dcc <nbgl_screenRedraw>
c0de34e8:	f003 fc57 	bl	c0de6d9a <nbgl_refresh>
c0de34ec:	2100      	movs	r1, #0
c0de34ee:	4608      	mov	r0, r1
c0de34f0:	bd80      	pop	{r7, pc}
	...

c0de34f4 <io_legacy_apdu_tx>:
c0de34f4:	b5b0      	push	{r4, r5, r7, lr}
c0de34f6:	460a      	mov	r2, r1
c0de34f8:	4601      	mov	r1, r0
c0de34fa:	4806      	ldr	r0, [pc, #24]	@ (c0de3514 <io_legacy_apdu_tx+0x20>)
c0de34fc:	2300      	movs	r3, #0
c0de34fe:	2500      	movs	r5, #0
c0de3500:	eb09 0400 	add.w	r4, r9, r0
c0de3504:	7860      	ldrb	r0, [r4, #1]
c0de3506:	f004 f837 	bl	c0de7578 <os_io_tx_cmd>
c0de350a:	4903      	ldr	r1, [pc, #12]	@ (c0de3518 <io_legacy_apdu_tx+0x24>)
c0de350c:	7065      	strb	r5, [r4, #1]
c0de350e:	4449      	add	r1, r9
c0de3510:	718d      	strb	r5, [r1, #6]
c0de3512:	bdb0      	pop	{r4, r5, r7, pc}
c0de3514:	00000632 	.word	0x00000632
c0de3518:	0000062a 	.word	0x0000062a

c0de351c <io_legacy_apdu_rx>:
c0de351c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de351e:	4e65      	ldr	r6, [pc, #404]	@ (c0de36b4 <io_legacy_apdu_rx+0x198>)
c0de3520:	2100      	movs	r1, #0
c0de3522:	4605      	mov	r5, r0
c0de3524:	2200      	movs	r2, #0
c0de3526:	2301      	movs	r3, #1
c0de3528:	f88d 100b 	strb.w	r1, [sp, #11]
c0de352c:	f240 1111 	movw	r1, #273	@ 0x111
c0de3530:	eb09 0006 	add.w	r0, r9, r6
c0de3534:	f004 f82c 	bl	c0de7590 <os_io_rx_evt>
c0de3538:	4604      	mov	r4, r0
c0de353a:	2801      	cmp	r0, #1
c0de353c:	f2c0 80b5 	blt.w	c0de36aa <io_legacy_apdu_rx+0x18e>
c0de3540:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3544:	f1a0 0110 	sub.w	r1, r0, #16
c0de3548:	2916      	cmp	r1, #22
c0de354a:	d843      	bhi.n	c0de35d4 <io_legacy_apdu_rx+0xb8>
c0de354c:	2201      	movs	r2, #1
c0de354e:	fa02 f101 	lsl.w	r1, r2, r1
c0de3552:	4a59      	ldr	r2, [pc, #356]	@ (c0de36b8 <io_legacy_apdu_rx+0x19c>)
c0de3554:	4211      	tst	r1, r2
c0de3556:	d03d      	beq.n	c0de35d4 <io_legacy_apdu_rx+0xb8>
c0de3558:	4f58      	ldr	r7, [pc, #352]	@ (c0de36bc <io_legacy_apdu_rx+0x1a0>)
c0de355a:	eb09 0107 	add.w	r1, r9, r7
c0de355e:	7048      	strb	r0, [r1, #1]
c0de3560:	f003 ffb4 	bl	c0de74cc <os_perso_is_pin_set>
c0de3564:	28aa      	cmp	r0, #170	@ 0xaa
c0de3566:	d103      	bne.n	c0de3570 <io_legacy_apdu_rx+0x54>
c0de3568:	f003 ffb9 	bl	c0de74de <os_global_pin_is_validated>
c0de356c:	28aa      	cmp	r0, #170	@ 0xaa
c0de356e:	d14d      	bne.n	c0de360c <io_legacy_apdu_rx+0xf0>
c0de3570:	eb09 0006 	add.w	r0, r9, r6
c0de3574:	7840      	ldrb	r0, [r0, #1]
c0de3576:	28b0      	cmp	r0, #176	@ 0xb0
c0de3578:	d134      	bne.n	c0de35e4 <io_legacy_apdu_rx+0xc8>
c0de357a:	f240 1011 	movw	r0, #273	@ 0x111
c0de357e:	1e61      	subs	r1, r4, #1
c0de3580:	9001      	str	r0, [sp, #4]
c0de3582:	f10d 000b 	add.w	r0, sp, #11
c0de3586:	9000      	str	r0, [sp, #0]
c0de3588:	484d      	ldr	r0, [pc, #308]	@ (c0de36c0 <io_legacy_apdu_rx+0x1a4>)
c0de358a:	ab01      	add	r3, sp, #4
c0de358c:	eb09 0500 	add.w	r5, r9, r0
c0de3590:	eb09 0006 	add.w	r0, r9, r6
c0de3594:	3001      	adds	r0, #1
c0de3596:	462a      	mov	r2, r5
c0de3598:	f7ff ff2b 	bl	c0de33f2 <os_io_handle_default_apdu>
c0de359c:	2400      	movs	r4, #0
c0de359e:	9901      	ldr	r1, [sp, #4]
c0de35a0:	eb09 0607 	add.w	r6, r9, r7
c0de35a4:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de35a8:	bf18      	it	ne
c0de35aa:	4621      	movne	r1, r4
c0de35ac:	0a02      	lsrs	r2, r0, #8
c0de35ae:	2300      	movs	r3, #0
c0de35b0:	546a      	strb	r2, [r5, r1]
c0de35b2:	186a      	adds	r2, r5, r1
c0de35b4:	7050      	strb	r0, [r2, #1]
c0de35b6:	1c88      	adds	r0, r1, #2
c0de35b8:	4629      	mov	r1, r5
c0de35ba:	9001      	str	r0, [sp, #4]
c0de35bc:	b282      	uxth	r2, r0
c0de35be:	7870      	ldrb	r0, [r6, #1]
c0de35c0:	f003 ffda 	bl	c0de7578 <os_io_tx_cmd>
c0de35c4:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de35c8:	7074      	strb	r4, [r6, #1]
c0de35ca:	2901      	cmp	r1, #1
c0de35cc:	d06f      	beq.n	c0de36ae <io_legacy_apdu_rx+0x192>
c0de35ce:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de35d2:	e06a      	b.n	c0de36aa <io_legacy_apdu_rx+0x18e>
c0de35d4:	1e41      	subs	r1, r0, #1
c0de35d6:	2902      	cmp	r1, #2
c0de35d8:	d32a      	bcc.n	c0de3630 <io_legacy_apdu_rx+0x114>
c0de35da:	2830      	cmp	r0, #48	@ 0x30
c0de35dc:	d0bc      	beq.n	c0de3558 <io_legacy_apdu_rx+0x3c>
c0de35de:	2840      	cmp	r0, #64	@ 0x40
c0de35e0:	d0ba      	beq.n	c0de3558 <io_legacy_apdu_rx+0x3c>
c0de35e2:	e061      	b.n	c0de36a8 <io_legacy_apdu_rx+0x18c>
c0de35e4:	eb09 0007 	add.w	r0, r9, r7
c0de35e8:	7840      	ldrb	r0, [r0, #1]
c0de35ea:	2810      	cmp	r0, #16
c0de35ec:	d040      	beq.n	c0de3670 <io_legacy_apdu_rx+0x154>
c0de35ee:	2840      	cmp	r0, #64	@ 0x40
c0de35f0:	d040      	beq.n	c0de3674 <io_legacy_apdu_rx+0x158>
c0de35f2:	2821      	cmp	r0, #33	@ 0x21
c0de35f4:	d040      	beq.n	c0de3678 <io_legacy_apdu_rx+0x15c>
c0de35f6:	2822      	cmp	r0, #34	@ 0x22
c0de35f8:	d034      	beq.n	c0de3664 <io_legacy_apdu_rx+0x148>
c0de35fa:	2823      	cmp	r0, #35	@ 0x23
c0de35fc:	d034      	beq.n	c0de3668 <io_legacy_apdu_rx+0x14c>
c0de35fe:	2830      	cmp	r0, #48	@ 0x30
c0de3600:	d034      	beq.n	c0de366c <io_legacy_apdu_rx+0x150>
c0de3602:	2820      	cmp	r0, #32
c0de3604:	bf14      	ite	ne
c0de3606:	2000      	movne	r0, #0
c0de3608:	2001      	moveq	r0, #1
c0de360a:	e036      	b.n	c0de367a <io_legacy_apdu_rx+0x15e>
c0de360c:	482c      	ldr	r0, [pc, #176]	@ (c0de36c0 <io_legacy_apdu_rx+0x1a4>)
c0de360e:	2155      	movs	r1, #85	@ 0x55
c0de3610:	2202      	movs	r2, #2
c0de3612:	2300      	movs	r3, #0
c0de3614:	f809 1000 	strb.w	r1, [r9, r0]
c0de3618:	eb09 0100 	add.w	r1, r9, r0
c0de361c:	2015      	movs	r0, #21
c0de361e:	7048      	strb	r0, [r1, #1]
c0de3620:	eb09 0007 	add.w	r0, r9, r7
c0de3624:	7840      	ldrb	r0, [r0, #1]
c0de3626:	b003      	add	sp, #12
c0de3628:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de362c:	f003 bfa4 	b.w	c0de7578 <os_io_tx_cmd>
c0de3630:	4f25      	ldr	r7, [pc, #148]	@ (c0de36c8 <io_legacy_apdu_rx+0x1ac>)
c0de3632:	444e      	add	r6, r9
c0de3634:	3c01      	subs	r4, #1
c0de3636:	1c71      	adds	r1, r6, #1
c0de3638:	4622      	mov	r2, r4
c0de363a:	eb09 0007 	add.w	r0, r9, r7
c0de363e:	f004 f8b9 	bl	c0de77b4 <__aeabi_memcpy>
c0de3642:	7870      	ldrb	r0, [r6, #1]
c0de3644:	281a      	cmp	r0, #26
c0de3646:	d107      	bne.n	c0de3658 <io_legacy_apdu_rx+0x13c>
c0de3648:	eb09 0007 	add.w	r0, r9, r7
c0de364c:	4621      	mov	r1, r4
c0de364e:	b003      	add	sp, #12
c0de3650:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3654:	f7ff bf3f 	b.w	c0de34d6 <io_process_itc_ux_event>
c0de3658:	b1e5      	cbz	r5, c0de3694 <io_legacy_apdu_rx+0x178>
c0de365a:	2000      	movs	r0, #0
c0de365c:	2400      	movs	r4, #0
c0de365e:	f003 f8c3 	bl	c0de67e8 <io_event>
c0de3662:	e022      	b.n	c0de36aa <io_legacy_apdu_rx+0x18e>
c0de3664:	2004      	movs	r0, #4
c0de3666:	e008      	b.n	c0de367a <io_legacy_apdu_rx+0x15e>
c0de3668:	2007      	movs	r0, #7
c0de366a:	e006      	b.n	c0de367a <io_legacy_apdu_rx+0x15e>
c0de366c:	2002      	movs	r0, #2
c0de366e:	e004      	b.n	c0de367a <io_legacy_apdu_rx+0x15e>
c0de3670:	2006      	movs	r0, #6
c0de3672:	e002      	b.n	c0de367a <io_legacy_apdu_rx+0x15e>
c0de3674:	2003      	movs	r0, #3
c0de3676:	e000      	b.n	c0de367a <io_legacy_apdu_rx+0x15e>
c0de3678:	2005      	movs	r0, #5
c0de367a:	4912      	ldr	r1, [pc, #72]	@ (c0de36c4 <io_legacy_apdu_rx+0x1a8>)
c0de367c:	3c01      	subs	r4, #1
c0de367e:	4622      	mov	r2, r4
c0de3680:	4449      	add	r1, r9
c0de3682:	7188      	strb	r0, [r1, #6]
c0de3684:	480e      	ldr	r0, [pc, #56]	@ (c0de36c0 <io_legacy_apdu_rx+0x1a4>)
c0de3686:	eb09 0106 	add.w	r1, r9, r6
c0de368a:	3101      	adds	r1, #1
c0de368c:	4448      	add	r0, r9
c0de368e:	f004 f891 	bl	c0de77b4 <__aeabi_memcpy>
c0de3692:	e00a      	b.n	c0de36aa <io_legacy_apdu_rx+0x18e>
c0de3694:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3698:	2815      	cmp	r0, #21
c0de369a:	d8de      	bhi.n	c0de365a <io_legacy_apdu_rx+0x13e>
c0de369c:	2101      	movs	r1, #1
c0de369e:	fa01 f000 	lsl.w	r0, r1, r0
c0de36a2:	490a      	ldr	r1, [pc, #40]	@ (c0de36cc <io_legacy_apdu_rx+0x1b0>)
c0de36a4:	4208      	tst	r0, r1
c0de36a6:	d0d8      	beq.n	c0de365a <io_legacy_apdu_rx+0x13e>
c0de36a8:	2400      	movs	r4, #0
c0de36aa:	4620      	mov	r0, r4
c0de36ac:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de36ae:	20ff      	movs	r0, #255	@ 0xff
c0de36b0:	f003 ff44 	bl	c0de753c <os_sched_exit>
c0de36b4:	00000518 	.word	0x00000518
c0de36b8:	007f0001 	.word	0x007f0001
c0de36bc:	00000632 	.word	0x00000632
c0de36c0:	00000407 	.word	0x00000407
c0de36c4:	0000062a 	.word	0x0000062a
c0de36c8:	000007ac 	.word	0x000007ac
c0de36cc:	00205020 	.word	0x00205020

c0de36d0 <io_seproxyhal_init>:
c0de36d0:	b570      	push	{r4, r5, r6, lr}
c0de36d2:	b08a      	sub	sp, #40	@ 0x28
c0de36d4:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3704 <io_seproxyhal_init+0x34>)
c0de36d6:	2600      	movs	r6, #0
c0de36d8:	2118      	movs	r1, #24
c0de36da:	eb09 0005 	add.w	r0, r9, r5
c0de36de:	7046      	strb	r6, [r0, #1]
c0de36e0:	ac01      	add	r4, sp, #4
c0de36e2:	4620      	mov	r0, r4
c0de36e4:	f004 f870 	bl	c0de77c8 <__aeabi_memclr>
c0de36e8:	2011      	movs	r0, #17
c0de36ea:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de36ee:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de36f2:	4620      	mov	r0, r4
c0de36f4:	f003 ff2c 	bl	c0de7550 <os_io_init>
c0de36f8:	2001      	movs	r0, #1
c0de36fa:	f809 0005 	strb.w	r0, [r9, r5]
c0de36fe:	b00a      	add	sp, #40	@ 0x28
c0de3700:	bd70      	pop	{r4, r5, r6, pc}
c0de3702:	bf00      	nop
c0de3704:	00000632 	.word	0x00000632

c0de3708 <getTextMaxLenAndWidth>:
c0de3708:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de370c:	461c      	mov	r4, r3
c0de370e:	4690      	mov	r8, r2
c0de3710:	460e      	mov	r6, r1
c0de3712:	4682      	mov	sl, r0
c0de3714:	f003 fb73 	bl	c0de6dfe <nbgl_getFont>
c0de3718:	4607      	mov	r7, r0
c0de371a:	4630      	mov	r0, r6
c0de371c:	f004 f8b0 	bl	c0de7880 <strlen>
c0de3720:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de3724:	4605      	mov	r5, r0
c0de3726:	2000      	movs	r0, #0
c0de3728:	f8ab 0000 	strh.w	r0, [fp]
c0de372c:	8020      	strh	r0, [r4, #0]
c0de372e:	0428      	lsls	r0, r5, #16
c0de3730:	d03e      	beq.n	c0de37b0 <getTextMaxLenAndWidth+0xa8>
c0de3732:	7830      	ldrb	r0, [r6, #0]
c0de3734:	3d01      	subs	r5, #1
c0de3736:	2808      	cmp	r0, #8
c0de3738:	d025      	beq.n	c0de3786 <getTextMaxLenAndWidth+0x7e>
c0de373a:	280c      	cmp	r0, #12
c0de373c:	d035      	beq.n	c0de37aa <getTextMaxLenAndWidth+0xa2>
c0de373e:	280a      	cmp	r0, #10
c0de3740:	d033      	beq.n	c0de37aa <getTextMaxLenAndWidth+0xa2>
c0de3742:	7af9      	ldrb	r1, [r7, #11]
c0de3744:	4288      	cmp	r0, r1
c0de3746:	d32d      	bcc.n	c0de37a4 <getTextMaxLenAndWidth+0x9c>
c0de3748:	7b3a      	ldrb	r2, [r7, #12]
c0de374a:	4290      	cmp	r0, r2
c0de374c:	d82a      	bhi.n	c0de37a4 <getTextMaxLenAndWidth+0x9c>
c0de374e:	1a40      	subs	r0, r0, r1
c0de3750:	6939      	ldr	r1, [r7, #16]
c0de3752:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de3756:	f003 fd2b 	bl	c0de71b0 <pic>
c0de375a:	7900      	ldrb	r0, [r0, #4]
c0de375c:	7a39      	ldrb	r1, [r7, #8]
c0de375e:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3762:	1a40      	subs	r0, r0, r1
c0de3764:	0601      	lsls	r1, r0, #24
c0de3766:	d01d      	beq.n	c0de37a4 <getTextMaxLenAndWidth+0x9c>
c0de3768:	f8bb 1000 	ldrh.w	r1, [fp]
c0de376c:	b2c0      	uxtb	r0, r0
c0de376e:	4401      	add	r1, r0
c0de3770:	4541      	cmp	r1, r8
c0de3772:	d81d      	bhi.n	c0de37b0 <getTextMaxLenAndWidth+0xa8>
c0de3774:	8821      	ldrh	r1, [r4, #0]
c0de3776:	3101      	adds	r1, #1
c0de3778:	8021      	strh	r1, [r4, #0]
c0de377a:	f8bb 1000 	ldrh.w	r1, [fp]
c0de377e:	4408      	add	r0, r1
c0de3780:	f8ab 0000 	strh.w	r0, [fp]
c0de3784:	e7d3      	b.n	c0de372e <getTextMaxLenAndWidth+0x26>
c0de3786:	fa5f f08a 	uxtb.w	r0, sl
c0de378a:	280a      	cmp	r0, #10
c0de378c:	d004      	beq.n	c0de3798 <getTextMaxLenAndWidth+0x90>
c0de378e:	2808      	cmp	r0, #8
c0de3790:	d108      	bne.n	c0de37a4 <getTextMaxLenAndWidth+0x9c>
c0de3792:	f04f 0a0a 	mov.w	sl, #10
c0de3796:	e001      	b.n	c0de379c <getTextMaxLenAndWidth+0x94>
c0de3798:	f04f 0a08 	mov.w	sl, #8
c0de379c:	4650      	mov	r0, sl
c0de379e:	f003 fb2e 	bl	c0de6dfe <nbgl_getFont>
c0de37a2:	4607      	mov	r7, r0
c0de37a4:	8820      	ldrh	r0, [r4, #0]
c0de37a6:	3001      	adds	r0, #1
c0de37a8:	e7c0      	b.n	c0de372c <getTextMaxLenAndWidth+0x24>
c0de37aa:	8820      	ldrh	r0, [r4, #0]
c0de37ac:	3001      	adds	r0, #1
c0de37ae:	8020      	strh	r0, [r4, #0]
c0de37b0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de37b4 <nbgl_layoutGet>:
c0de37b4:	b570      	push	{r4, r5, r6, lr}
c0de37b6:	4605      	mov	r5, r0
c0de37b8:	7800      	ldrb	r0, [r0, #0]
c0de37ba:	b148      	cbz	r0, c0de37d0 <nbgl_layoutGet+0x1c>
c0de37bc:	4819      	ldr	r0, [pc, #100]	@ (c0de3824 <nbgl_layoutGet+0x70>)
c0de37be:	eb09 0100 	add.w	r1, r9, r0
c0de37c2:	7b8a      	ldrb	r2, [r1, #14]
c0de37c4:	b152      	cbz	r2, c0de37dc <nbgl_layoutGet+0x28>
c0de37c6:	4448      	add	r0, r9
c0de37c8:	7e81      	ldrb	r1, [r0, #26]
c0de37ca:	b151      	cbz	r1, c0de37e2 <nbgl_layoutGet+0x2e>
c0de37cc:	2400      	movs	r4, #0
c0de37ce:	e026      	b.n	c0de381e <nbgl_layoutGet+0x6a>
c0de37d0:	4814      	ldr	r0, [pc, #80]	@ (c0de3824 <nbgl_layoutGet+0x70>)
c0de37d2:	eb09 0400 	add.w	r4, r9, r0
c0de37d6:	2000      	movs	r0, #0
c0de37d8:	70a0      	strb	r0, [r4, #2]
c0de37da:	e004      	b.n	c0de37e6 <nbgl_layoutGet+0x32>
c0de37dc:	f101 040c 	add.w	r4, r1, #12
c0de37e0:	e001      	b.n	c0de37e6 <nbgl_layoutGet+0x32>
c0de37e2:	f100 0418 	add.w	r4, r0, #24
c0de37e6:	2000      	movs	r0, #0
c0de37e8:	4626      	mov	r6, r4
c0de37ea:	60a0      	str	r0, [r4, #8]
c0de37ec:	6020      	str	r0, [r4, #0]
c0de37ee:	f846 0f04 	str.w	r0, [r6, #4]!
c0de37f2:	6868      	ldr	r0, [r5, #4]
c0de37f4:	f003 fcdc 	bl	c0de71b0 <pic>
c0de37f8:	60a0      	str	r0, [r4, #8]
c0de37fa:	7828      	ldrb	r0, [r5, #0]
c0de37fc:	f105 0208 	add.w	r2, r5, #8
c0de3800:	7020      	strb	r0, [r4, #0]
c0de3802:	4b09      	ldr	r3, [pc, #36]	@ (c0de3828 <nbgl_layoutGet+0x74>)
c0de3804:	447b      	add	r3, pc
c0de3806:	b120      	cbz	r0, c0de3812 <nbgl_layoutGet+0x5e>
c0de3808:	4630      	mov	r0, r6
c0de380a:	2107      	movs	r1, #7
c0de380c:	f003 fad9 	bl	c0de6dc2 <nbgl_screenPush>
c0de3810:	e004      	b.n	c0de381c <nbgl_layoutGet+0x68>
c0de3812:	4630      	mov	r0, r6
c0de3814:	2107      	movs	r1, #7
c0de3816:	f003 facf 	bl	c0de6db8 <nbgl_screenSet>
c0de381a:	2000      	movs	r0, #0
c0de381c:	7060      	strb	r0, [r4, #1]
c0de381e:	4620      	mov	r0, r4
c0de3820:	bd70      	pop	{r4, r5, r6, pc}
c0de3822:	bf00      	nop
c0de3824:	00000634 	.word	0x00000634
c0de3828:	00000025 	.word	0x00000025

c0de382c <buttonCallback>:
c0de382c:	b5b0      	push	{r4, r5, r7, lr}
c0de382e:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3832:	4811      	ldr	r0, [pc, #68]	@ (c0de3878 <buttonCallback+0x4c>)
c0de3834:	2302      	movs	r3, #2
c0de3836:	1c5c      	adds	r4, r3, #1
c0de3838:	d01d      	beq.n	c0de3876 <buttonCallback+0x4a>
c0de383a:	b2dc      	uxtb	r4, r3
c0de383c:	eb09 0500 	add.w	r5, r9, r0
c0de3840:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3844:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3848:	786d      	ldrb	r5, [r5, #1]
c0de384a:	42aa      	cmp	r2, r5
c0de384c:	d105      	bne.n	c0de385a <buttonCallback+0x2e>
c0de384e:	eb09 0500 	add.w	r5, r9, r0
c0de3852:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3856:	78ad      	ldrb	r5, [r5, #2]
c0de3858:	b90d      	cbnz	r5, c0de385e <buttonCallback+0x32>
c0de385a:	3b01      	subs	r3, #1
c0de385c:	e7eb      	b.n	c0de3836 <buttonCallback+0xa>
c0de385e:	eb09 0200 	add.w	r2, r9, r0
c0de3862:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3866:	6892      	ldr	r2, [r2, #8]
c0de3868:	b12a      	cbz	r2, c0de3876 <buttonCallback+0x4a>
c0de386a:	4448      	add	r0, r9
c0de386c:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3870:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3874:	4710      	bx	r2
c0de3876:	bdb0      	pop	{r4, r5, r7, pc}
c0de3878:	00000634 	.word	0x00000634

c0de387c <nbgl_layoutAddNavigation>:
c0de387c:	b570      	push	{r4, r5, r6, lr}
c0de387e:	2800      	cmp	r0, #0
c0de3880:	d04d      	beq.n	c0de391e <nbgl_layoutAddNavigation+0xa2>
c0de3882:	460d      	mov	r5, r1
c0de3884:	7849      	ldrb	r1, [r1, #1]
c0de3886:	4604      	mov	r4, r0
c0de3888:	07c8      	lsls	r0, r1, #31
c0de388a:	d022      	beq.n	c0de38d2 <nbgl_layoutAddNavigation+0x56>
c0de388c:	7861      	ldrb	r1, [r4, #1]
c0de388e:	2002      	movs	r0, #2
c0de3890:	f003 faab 	bl	c0de6dea <nbgl_objPoolGet>
c0de3894:	782a      	ldrb	r2, [r5, #0]
c0de3896:	7869      	ldrb	r1, [r5, #1]
c0de3898:	4b23      	ldr	r3, [pc, #140]	@ (c0de3928 <nbgl_layoutAddNavigation+0xac>)
c0de389a:	4e24      	ldr	r6, [pc, #144]	@ (c0de392c <nbgl_layoutAddNavigation+0xb0>)
c0de389c:	2a00      	cmp	r2, #0
c0de389e:	447b      	add	r3, pc
c0de38a0:	447e      	add	r6, pc
c0de38a2:	4602      	mov	r2, r0
c0de38a4:	bf08      	it	eq
c0de38a6:	461e      	moveq	r6, r3
c0de38a8:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de38ac:	0e33      	lsrs	r3, r6, #24
c0de38ae:	70d3      	strb	r3, [r2, #3]
c0de38b0:	0c33      	lsrs	r3, r6, #16
c0de38b2:	7093      	strb	r3, [r2, #2]
c0de38b4:	0a32      	lsrs	r2, r6, #8
c0de38b6:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de38ba:	6862      	ldr	r2, [r4, #4]
c0de38bc:	78a3      	ldrb	r3, [r4, #2]
c0de38be:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de38c2:	2203      	movs	r2, #3
c0de38c4:	77c2      	strb	r2, [r0, #31]
c0de38c6:	2204      	movs	r2, #4
c0de38c8:	7582      	strb	r2, [r0, #22]
c0de38ca:	2200      	movs	r2, #0
c0de38cc:	7242      	strb	r2, [r0, #9]
c0de38ce:	1c58      	adds	r0, r3, #1
c0de38d0:	70a0      	strb	r0, [r4, #2]
c0de38d2:	0788      	lsls	r0, r1, #30
c0de38d4:	f04f 0600 	mov.w	r6, #0
c0de38d8:	d523      	bpl.n	c0de3922 <nbgl_layoutAddNavigation+0xa6>
c0de38da:	7861      	ldrb	r1, [r4, #1]
c0de38dc:	2002      	movs	r0, #2
c0de38de:	f003 fa84 	bl	c0de6dea <nbgl_objPoolGet>
c0de38e2:	7829      	ldrb	r1, [r5, #0]
c0de38e4:	4a12      	ldr	r2, [pc, #72]	@ (c0de3930 <nbgl_layoutAddNavigation+0xb4>)
c0de38e6:	4b13      	ldr	r3, [pc, #76]	@ (c0de3934 <nbgl_layoutAddNavigation+0xb8>)
c0de38e8:	2900      	cmp	r1, #0
c0de38ea:	447a      	add	r2, pc
c0de38ec:	447b      	add	r3, pc
c0de38ee:	4601      	mov	r1, r0
c0de38f0:	bf08      	it	eq
c0de38f2:	4613      	moveq	r3, r2
c0de38f4:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de38f8:	0e1a      	lsrs	r2, r3, #24
c0de38fa:	7246      	strb	r6, [r0, #9]
c0de38fc:	70ca      	strb	r2, [r1, #3]
c0de38fe:	0c1a      	lsrs	r2, r3, #16
c0de3900:	708a      	strb	r2, [r1, #2]
c0de3902:	0a19      	lsrs	r1, r3, #8
c0de3904:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3908:	6861      	ldr	r1, [r4, #4]
c0de390a:	78a2      	ldrb	r2, [r4, #2]
c0de390c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3910:	2103      	movs	r1, #3
c0de3912:	77c1      	strb	r1, [r0, #31]
c0de3914:	2106      	movs	r1, #6
c0de3916:	7581      	strb	r1, [r0, #22]
c0de3918:	1c50      	adds	r0, r2, #1
c0de391a:	70a0      	strb	r0, [r4, #2]
c0de391c:	e001      	b.n	c0de3922 <nbgl_layoutAddNavigation+0xa6>
c0de391e:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3922:	4630      	mov	r0, r6
c0de3924:	bd70      	pop	{r4, r5, r6, pc}
c0de3926:	bf00      	nop
c0de3928:	00004148 	.word	0x00004148
c0de392c:	00004185 	.word	0x00004185
c0de3930:	0000412d 	.word	0x0000412d
c0de3934:	000040ec 	.word	0x000040ec

c0de3938 <nbgl_layoutAddText>:
c0de3938:	2800      	cmp	r0, #0
c0de393a:	f000 8140 	beq.w	c0de3bbe <nbgl_layoutAddText+0x286>
c0de393e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3942:	b088      	sub	sp, #32
c0de3944:	460e      	mov	r6, r1
c0de3946:	7841      	ldrb	r1, [r0, #1]
c0de3948:	4605      	mov	r5, r0
c0de394a:	2001      	movs	r0, #1
c0de394c:	4617      	mov	r7, r2
c0de394e:	461c      	mov	r4, r3
c0de3950:	f003 fa4b 	bl	c0de6dea <nbgl_objPoolGet>
c0de3954:	4680      	mov	r8, r0
c0de3956:	2003      	movs	r0, #3
c0de3958:	2f00      	cmp	r7, #0
c0de395a:	bf08      	it	eq
c0de395c:	2001      	moveq	r0, #1
c0de395e:	7869      	ldrb	r1, [r5, #1]
c0de3960:	f888 0020 	strb.w	r0, [r8, #32]
c0de3964:	f003 fa46 	bl	c0de6df4 <nbgl_containerPoolGet>
c0de3968:	4641      	mov	r1, r8
c0de396a:	0e02      	lsrs	r2, r0, #24
c0de396c:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3970:	f04f 0b00 	mov.w	fp, #0
c0de3974:	9704      	str	r7, [sp, #16]
c0de3976:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de397a:	f888 a004 	strb.w	sl, [r8, #4]
c0de397e:	f888 b005 	strb.w	fp, [r8, #5]
c0de3982:	70ca      	strb	r2, [r1, #3]
c0de3984:	0c02      	lsrs	r2, r0, #16
c0de3986:	0a00      	lsrs	r0, r0, #8
c0de3988:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de398c:	708a      	strb	r2, [r1, #2]
c0de398e:	2004      	movs	r0, #4
c0de3990:	7869      	ldrb	r1, [r5, #1]
c0de3992:	f003 fa2a 	bl	c0de6dea <nbgl_objPoolGet>
c0de3996:	4607      	mov	r7, r0
c0de3998:	2003      	movs	r0, #3
c0de399a:	77f8      	strb	r0, [r7, #31]
c0de399c:	4630      	mov	r0, r6
c0de399e:	f003 fc07 	bl	c0de71b0 <pic>
c0de39a2:	4601      	mov	r1, r0
c0de39a4:	2008      	movs	r0, #8
c0de39a6:	f887 a004 	strb.w	sl, [r7, #4]
c0de39aa:	f887 b005 	strb.w	fp, [r7, #5]
c0de39ae:	9403      	str	r4, [sp, #12]
c0de39b0:	f04f 0a01 	mov.w	sl, #1
c0de39b4:	2c00      	cmp	r4, #0
c0de39b6:	bf08      	it	eq
c0de39b8:	200a      	moveq	r0, #10
c0de39ba:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de39be:	2205      	movs	r2, #5
c0de39c0:	0e0b      	lsrs	r3, r1, #24
c0de39c2:	f887 2020 	strb.w	r2, [r7, #32]
c0de39c6:	463a      	mov	r2, r7
c0de39c8:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de39cc:	70d3      	strb	r3, [r2, #3]
c0de39ce:	0c0b      	lsrs	r3, r1, #16
c0de39d0:	7093      	strb	r3, [r2, #2]
c0de39d2:	0a0a      	lsrs	r2, r1, #8
c0de39d4:	2301      	movs	r3, #1
c0de39d6:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de39da:	2272      	movs	r2, #114	@ 0x72
c0de39dc:	f003 fa19 	bl	c0de6e12 <nbgl_getTextNbLinesInWidth>
c0de39e0:	4606      	mov	r6, r0
c0de39e2:	2805      	cmp	r0, #5
c0de39e4:	9505      	str	r5, [sp, #20]
c0de39e6:	d31d      	bcc.n	c0de3a24 <nbgl_layoutAddText+0xec>
c0de39e8:	463e      	mov	r6, r7
c0de39ea:	2004      	movs	r0, #4
c0de39ec:	f10d 051e 	add.w	r5, sp, #30
c0de39f0:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de39f4:	7872      	ldrb	r2, [r6, #1]
c0de39f6:	78b3      	ldrb	r3, [r6, #2]
c0de39f8:	78f4      	ldrb	r4, [r6, #3]
c0de39fa:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de39fe:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3a02:	9500      	str	r5, [sp, #0]
c0de3a04:	9d05      	ldr	r5, [sp, #20]
c0de3a06:	f8cd a004 	str.w	sl, [sp, #4]
c0de3a0a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3a0e:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3a12:	2304      	movs	r3, #4
c0de3a14:	f000 fc6d 	bl	c0de42f2 <OUTLINED_FUNCTION_5>
c0de3a18:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3a1c:	7130      	strb	r0, [r6, #4]
c0de3a1e:	0a00      	lsrs	r0, r0, #8
c0de3a20:	7170      	strb	r0, [r6, #5]
c0de3a22:	2604      	movs	r6, #4
c0de3a24:	f000 fc72 	bl	c0de430c <OUTLINED_FUNCTION_7>
c0de3a28:	4683      	mov	fp, r0
c0de3a2a:	2002      	movs	r0, #2
c0de3a2c:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de3a30:	9c04      	ldr	r4, [sp, #16]
c0de3a32:	75b8      	strb	r0, [r7, #22]
c0de3a34:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3a38:	2c00      	cmp	r4, #0
c0de3a3a:	fb06 fa00 	mul.w	sl, r6, r0
c0de3a3e:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3a42:	f887 a006 	strb.w	sl, [r7, #6]
c0de3a46:	71f8      	strb	r0, [r7, #7]
c0de3a48:	4640      	mov	r0, r8
c0de3a4a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3a4e:	7842      	ldrb	r2, [r0, #1]
c0de3a50:	7883      	ldrb	r3, [r0, #2]
c0de3a52:	78c0      	ldrb	r0, [r0, #3]
c0de3a54:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3a58:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3a5c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3a60:	6007      	str	r7, [r0, #0]
c0de3a62:	f000 8111 	beq.w	c0de3c88 <nbgl_layoutAddText+0x350>
c0de3a66:	9803      	ldr	r0, [sp, #12]
c0de3a68:	7869      	ldrb	r1, [r5, #1]
c0de3a6a:	2802      	cmp	r0, #2
c0de3a6c:	f040 80a9 	bne.w	c0de3bc2 <nbgl_layoutAddText+0x28a>
c0de3a70:	2005      	movs	r0, #5
c0de3a72:	2505      	movs	r5, #5
c0de3a74:	f003 f9b9 	bl	c0de6dea <nbgl_objPoolGet>
c0de3a78:	2600      	movs	r6, #0
c0de3a7a:	4607      	mov	r7, r0
c0de3a7c:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3a80:	2001      	movs	r0, #1
c0de3a82:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3a86:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3a8a:	f000 fc46 	bl	c0de431a <OUTLINED_FUNCTION_9>
c0de3a8e:	4620      	mov	r0, r4
c0de3a90:	f003 fb8e 	bl	c0de71b0 <pic>
c0de3a94:	4601      	mov	r1, r0
c0de3a96:	200e      	movs	r0, #14
c0de3a98:	71fe      	strb	r6, [r7, #7]
c0de3a9a:	75bd      	strb	r5, [r7, #22]
c0de3a9c:	71b8      	strb	r0, [r7, #6]
c0de3a9e:	2008      	movs	r0, #8
c0de3aa0:	0e0a      	lsrs	r2, r1, #24
c0de3aa2:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3aa6:	4638      	mov	r0, r7
c0de3aa8:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3aac:	f000 fc15 	bl	c0de42da <OUTLINED_FUNCTION_3>
c0de3ab0:	2865      	cmp	r0, #101	@ 0x65
c0de3ab2:	f240 80d9 	bls.w	c0de3c68 <nbgl_layoutAddText+0x330>
c0de3ab6:	46bb      	mov	fp, r7
c0de3ab8:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3abc:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3ac0:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3ac4:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3ac8:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3acc:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3ad0:	ae06      	add	r6, sp, #24
c0de3ad2:	9600      	str	r6, [sp, #0]
c0de3ad4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3ad8:	f10d 031a 	add.w	r3, sp, #26
c0de3adc:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3ae0:	2266      	movs	r2, #102	@ 0x66
c0de3ae2:	f7ff fe11 	bl	c0de3708 <getTextMaxLenAndWidth>
c0de3ae6:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3aea:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3aee:	9003      	str	r0, [sp, #12]
c0de3af0:	300c      	adds	r0, #12
c0de3af2:	9602      	str	r6, [sp, #8]
c0de3af4:	7138      	strb	r0, [r7, #4]
c0de3af6:	0a00      	lsrs	r0, r0, #8
c0de3af8:	7178      	strb	r0, [r7, #5]
c0de3afa:	486e      	ldr	r0, [pc, #440]	@ (c0de3cb4 <nbgl_layoutAddText+0x37c>)
c0de3afc:	2e13      	cmp	r6, #19
c0de3afe:	bf28      	it	cs
c0de3b00:	2613      	movcs	r6, #19
c0de3b02:	f89b 1000 	ldrb.w	r1, [fp]
c0de3b06:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3b0a:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3b0e:	eb09 0400 	add.w	r4, r9, r0
c0de3b12:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3b16:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3b1a:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3b1e:	4632      	mov	r2, r6
c0de3b20:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3b24:	4620      	mov	r0, r4
c0de3b26:	f003 fe45 	bl	c0de77b4 <__aeabi_memcpy>
c0de3b2a:	2500      	movs	r5, #0
c0de3b2c:	4620      	mov	r0, r4
c0de3b2e:	55a5      	strb	r5, [r4, r6]
c0de3b30:	f003 fb3e 	bl	c0de71b0 <pic>
c0de3b34:	2101      	movs	r1, #1
c0de3b36:	f88b 0000 	strb.w	r0, [fp]
c0de3b3a:	76bd      	strb	r5, [r7, #26]
c0de3b3c:	9d05      	ldr	r5, [sp, #20]
c0de3b3e:	7679      	strb	r1, [r7, #25]
c0de3b40:	0e01      	lsrs	r1, r0, #24
c0de3b42:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3b46:	0c01      	lsrs	r1, r0, #16
c0de3b48:	0a00      	lsrs	r0, r0, #8
c0de3b4a:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3b4e:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3b52:	4640      	mov	r0, r8
c0de3b54:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3b58:	7842      	ldrb	r2, [r0, #1]
c0de3b5a:	7883      	ldrb	r3, [r0, #2]
c0de3b5c:	78c0      	ldrb	r0, [r0, #3]
c0de3b5e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3b62:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3b66:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3b6a:	6047      	str	r7, [r0, #4]
c0de3b6c:	9803      	ldr	r0, [sp, #12]
c0de3b6e:	2800      	cmp	r0, #0
c0de3b70:	f000 8088 	beq.w	c0de3c84 <nbgl_layoutAddText+0x34c>
c0de3b74:	7869      	ldrb	r1, [r5, #1]
c0de3b76:	2005      	movs	r0, #5
c0de3b78:	2605      	movs	r6, #5
c0de3b7a:	f003 f936 	bl	c0de6dea <nbgl_objPoolGet>
c0de3b7e:	2500      	movs	r5, #0
c0de3b80:	4607      	mov	r7, r0
c0de3b82:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3b86:	2001      	movs	r0, #1
c0de3b88:	f000 fbc7 	bl	c0de431a <OUTLINED_FUNCTION_9>
c0de3b8c:	9804      	ldr	r0, [sp, #16]
c0de3b8e:	f003 fb0f 	bl	c0de71b0 <pic>
c0de3b92:	210e      	movs	r1, #14
c0de3b94:	71fd      	strb	r5, [r7, #7]
c0de3b96:	71b9      	strb	r1, [r7, #6]
c0de3b98:	2108      	movs	r1, #8
c0de3b9a:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3b9e:	9902      	ldr	r1, [sp, #8]
c0de3ba0:	4401      	add	r1, r0
c0de3ba2:	4638      	mov	r0, r7
c0de3ba4:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3ba8:	0e0a      	lsrs	r2, r1, #24
c0de3baa:	f000 fb96 	bl	c0de42da <OUTLINED_FUNCTION_3>
c0de3bae:	300c      	adds	r0, #12
c0de3bb0:	210f      	movs	r1, #15
c0de3bb2:	75be      	strb	r6, [r7, #22]
c0de3bb4:	7138      	strb	r0, [r7, #4]
c0de3bb6:	0a00      	lsrs	r0, r0, #8
c0de3bb8:	7178      	strb	r0, [r7, #5]
c0de3bba:	2002      	movs	r0, #2
c0de3bbc:	e05a      	b.n	c0de3c74 <nbgl_layoutAddText+0x33c>
c0de3bbe:	f000 bba9 	b.w	c0de4314 <OUTLINED_FUNCTION_8>
c0de3bc2:	f000 fb93 	bl	c0de42ec <OUTLINED_FUNCTION_4>
c0de3bc6:	2603      	movs	r6, #3
c0de3bc8:	4607      	mov	r7, r0
c0de3bca:	77c6      	strb	r6, [r0, #31]
c0de3bcc:	4620      	mov	r0, r4
c0de3bce:	f003 faef 	bl	c0de71b0 <pic>
c0de3bd2:	4601      	mov	r1, r0
c0de3bd4:	2072      	movs	r0, #114	@ 0x72
c0de3bd6:	2400      	movs	r4, #0
c0de3bd8:	2301      	movs	r3, #1
c0de3bda:	7138      	strb	r0, [r7, #4]
c0de3bdc:	2001      	movs	r0, #1
c0de3bde:	0e0a      	lsrs	r2, r1, #24
c0de3be0:	717c      	strb	r4, [r7, #5]
c0de3be2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3be6:	200a      	movs	r0, #10
c0de3be8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3bec:	f000 fb5b 	bl	c0de42a6 <OUTLINED_FUNCTION_1>
c0de3bf0:	2804      	cmp	r0, #4
c0de3bf2:	d31e      	bcc.n	c0de3c32 <nbgl_layoutAddText+0x2fa>
c0de3bf4:	463d      	mov	r5, r7
c0de3bf6:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3bfa:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3bfe:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3c02:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3c06:	78ab      	ldrb	r3, [r5, #2]
c0de3c08:	78e9      	ldrb	r1, [r5, #3]
c0de3c0a:	aa07      	add	r2, sp, #28
c0de3c0c:	9200      	str	r2, [sp, #0]
c0de3c0e:	2201      	movs	r2, #1
c0de3c10:	9201      	str	r2, [sp, #4]
c0de3c12:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3c16:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3c1a:	2303      	movs	r3, #3
c0de3c1c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3c20:	2272      	movs	r2, #114	@ 0x72
c0de3c22:	f003 f905 	bl	c0de6e30 <nbgl_getTextMaxLenInNbLines>
c0de3c26:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3c2a:	7128      	strb	r0, [r5, #4]
c0de3c2c:	0a00      	lsrs	r0, r0, #8
c0de3c2e:	7168      	strb	r0, [r5, #5]
c0de3c30:	2003      	movs	r0, #3
c0de3c32:	9903      	ldr	r1, [sp, #12]
c0de3c34:	2900      	cmp	r1, #0
c0de3c36:	bf08      	it	eq
c0de3c38:	4606      	moveq	r6, r0
c0de3c3a:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3c3e:	76bc      	strb	r4, [r7, #26]
c0de3c40:	75bc      	strb	r4, [r7, #22]
c0de3c42:	fb06 f100 	mul.w	r1, r6, r0
c0de3c46:	fb06 a000 	mla	r0, r6, r0, sl
c0de3c4a:	71b9      	strb	r1, [r7, #6]
c0de3c4c:	0a09      	lsrs	r1, r1, #8
c0de3c4e:	71f9      	strb	r1, [r7, #7]
c0de3c50:	2102      	movs	r1, #2
c0de3c52:	f100 0a02 	add.w	sl, r0, #2
c0de3c56:	7679      	strb	r1, [r7, #25]
c0de3c58:	2105      	movs	r1, #5
c0de3c5a:	f887 1020 	strb.w	r1, [r7, #32]
c0de3c5e:	4641      	mov	r1, r8
c0de3c60:	f000 fb2e 	bl	c0de42c0 <OUTLINED_FUNCTION_2>
c0de3c64:	604f      	str	r7, [r1, #4]
c0de3c66:	e00f      	b.n	c0de3c88 <nbgl_layoutAddText+0x350>
c0de3c68:	300c      	adds	r0, #12
c0de3c6a:	2108      	movs	r1, #8
c0de3c6c:	7138      	strb	r0, [r7, #4]
c0de3c6e:	0a00      	lsrs	r0, r0, #8
c0de3c70:	7178      	strb	r0, [r7, #5]
c0de3c72:	2001      	movs	r0, #1
c0de3c74:	2200      	movs	r2, #0
c0de3c76:	7679      	strb	r1, [r7, #25]
c0de3c78:	4641      	mov	r1, r8
c0de3c7a:	76ba      	strb	r2, [r7, #26]
c0de3c7c:	f000 fb20 	bl	c0de42c0 <OUTLINED_FUNCTION_2>
c0de3c80:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3c84:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3c88:	6868      	ldr	r0, [r5, #4]
c0de3c8a:	78a9      	ldrb	r1, [r5, #2]
c0de3c8c:	2205      	movs	r2, #5
c0de3c8e:	f888 2016 	strb.w	r2, [r8, #22]
c0de3c92:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3c96:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3c9a:	2000      	movs	r0, #0
c0de3c9c:	3101      	adds	r1, #1
c0de3c9e:	f888 a006 	strb.w	sl, [r8, #6]
c0de3ca2:	f888 2007 	strb.w	r2, [r8, #7]
c0de3ca6:	f888 001f 	strb.w	r0, [r8, #31]
c0de3caa:	70a9      	strb	r1, [r5, #2]
c0de3cac:	b008      	add	sp, #32
c0de3cae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3cb2:	bf00      	nop
c0de3cb4:	00000658 	.word	0x00000658

c0de3cb8 <nbgl_layoutAddMenuList>:
c0de3cb8:	2800      	cmp	r0, #0
c0de3cba:	d04f      	beq.n	c0de3d5c <nbgl_layoutAddMenuList+0xa4>
c0de3cbc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3cc0:	460c      	mov	r4, r1
c0de3cc2:	4605      	mov	r5, r0
c0de3cc4:	2700      	movs	r7, #0
c0de3cc6:	f04f 0b05 	mov.w	fp, #5
c0de3cca:	f04f 0803 	mov.w	r8, #3
c0de3cce:	f04f 0a00 	mov.w	sl, #0
c0de3cd2:	7920      	ldrb	r0, [r4, #4]
c0de3cd4:	4582      	cmp	sl, r0
c0de3cd6:	d23e      	bcs.n	c0de3d56 <nbgl_layoutAddMenuList+0x9e>
c0de3cd8:	7960      	ldrb	r0, [r4, #5]
c0de3cda:	2803      	cmp	r0, #3
c0de3cdc:	d302      	bcc.n	c0de3ce4 <nbgl_layoutAddMenuList+0x2c>
c0de3cde:	1e81      	subs	r1, r0, #2
c0de3ce0:	4551      	cmp	r1, sl
c0de3ce2:	dc35      	bgt.n	c0de3d50 <nbgl_layoutAddMenuList+0x98>
c0de3ce4:	3002      	adds	r0, #2
c0de3ce6:	4550      	cmp	r0, sl
c0de3ce8:	d332      	bcc.n	c0de3d50 <nbgl_layoutAddMenuList+0x98>
c0de3cea:	7869      	ldrb	r1, [r5, #1]
c0de3cec:	f000 fafe 	bl	c0de42ec <OUTLINED_FUNCTION_4>
c0de3cf0:	6821      	ldr	r1, [r4, #0]
c0de3cf2:	4606      	mov	r6, r0
c0de3cf4:	fa5f f08a 	uxtb.w	r0, sl
c0de3cf8:	4788      	blx	r1
c0de3cfa:	7961      	ldrb	r1, [r4, #5]
c0de3cfc:	220a      	movs	r2, #10
c0de3cfe:	458a      	cmp	sl, r1
c0de3d00:	bf08      	it	eq
c0de3d02:	2208      	moveq	r2, #8
c0de3d04:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3d08:	71f7      	strb	r7, [r6, #7]
c0de3d0a:	7177      	strb	r7, [r6, #5]
c0de3d0c:	f886 b020 	strb.w	fp, [r6, #32]
c0de3d10:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3d14:	f886 b016 	strb.w	fp, [r6, #22]
c0de3d18:	f886 801f 	strb.w	r8, [r6, #31]
c0de3d1c:	4632      	mov	r2, r6
c0de3d1e:	0e03      	lsrs	r3, r0, #24
c0de3d20:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3d24:	70d3      	strb	r3, [r2, #3]
c0de3d26:	0c03      	lsrs	r3, r0, #16
c0de3d28:	0a00      	lsrs	r0, r0, #8
c0de3d2a:	7093      	strb	r3, [r2, #2]
c0de3d2c:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3d30:	6868      	ldr	r0, [r5, #4]
c0de3d32:	78aa      	ldrb	r2, [r5, #2]
c0de3d34:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3d38:	200c      	movs	r0, #12
c0de3d3a:	71b0      	strb	r0, [r6, #6]
c0de3d3c:	2072      	movs	r0, #114	@ 0x72
c0de3d3e:	7130      	strb	r0, [r6, #4]
c0de3d40:	ebaa 0001 	sub.w	r0, sl, r1
c0de3d44:	0901      	lsrs	r1, r0, #4
c0de3d46:	0100      	lsls	r0, r0, #4
c0de3d48:	7670      	strb	r0, [r6, #25]
c0de3d4a:	1c50      	adds	r0, r2, #1
c0de3d4c:	76b1      	strb	r1, [r6, #26]
c0de3d4e:	70a8      	strb	r0, [r5, #2]
c0de3d50:	f10a 0a01 	add.w	sl, sl, #1
c0de3d54:	e7bd      	b.n	c0de3cd2 <nbgl_layoutAddMenuList+0x1a>
c0de3d56:	2000      	movs	r0, #0
c0de3d58:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d5c:	f000 bada 	b.w	c0de4314 <OUTLINED_FUNCTION_8>

c0de3d60 <nbgl_layoutAddCenteredInfo>:
c0de3d60:	2800      	cmp	r0, #0
c0de3d62:	f000 80d9 	beq.w	c0de3f18 <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3d66:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d6a:	b086      	sub	sp, #24
c0de3d6c:	460c      	mov	r4, r1
c0de3d6e:	7841      	ldrb	r1, [r0, #1]
c0de3d70:	4682      	mov	sl, r0
c0de3d72:	2001      	movs	r0, #1
c0de3d74:	f003 f839 	bl	c0de6dea <nbgl_objPoolGet>
c0de3d78:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d7c:	4680      	mov	r8, r0
c0de3d7e:	2003      	movs	r0, #3
c0de3d80:	2703      	movs	r7, #3
c0de3d82:	f003 f837 	bl	c0de6df4 <nbgl_containerPoolGet>
c0de3d86:	4641      	mov	r1, r8
c0de3d88:	0e02      	lsrs	r2, r0, #24
c0de3d8a:	f04f 0b00 	mov.w	fp, #0
c0de3d8e:	9404      	str	r4, [sp, #16]
c0de3d90:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3d94:	f888 b020 	strb.w	fp, [r8, #32]
c0de3d98:	70ca      	strb	r2, [r1, #3]
c0de3d9a:	0c02      	lsrs	r2, r0, #16
c0de3d9c:	0a00      	lsrs	r0, r0, #8
c0de3d9e:	708a      	strb	r2, [r1, #2]
c0de3da0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3da4:	68a0      	ldr	r0, [r4, #8]
c0de3da6:	b3c0      	cbz	r0, c0de3e1a <nbgl_layoutAddCenteredInfo+0xba>
c0de3da8:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3dac:	2002      	movs	r0, #2
c0de3dae:	f003 f81c 	bl	c0de6dea <nbgl_objPoolGet>
c0de3db2:	4606      	mov	r6, r0
c0de3db4:	77c7      	strb	r7, [r0, #31]
c0de3db6:	68a0      	ldr	r0, [r4, #8]
c0de3db8:	f003 f9fa 	bl	c0de71b0 <pic>
c0de3dbc:	4631      	mov	r1, r6
c0de3dbe:	0e02      	lsrs	r2, r0, #24
c0de3dc0:	f886 b013 	strb.w	fp, [r6, #19]
c0de3dc4:	f886 b009 	strb.w	fp, [r6, #9]
c0de3dc8:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3dcc:	70ca      	strb	r2, [r1, #3]
c0de3dce:	0c02      	lsrs	r2, r0, #16
c0de3dd0:	708a      	strb	r2, [r1, #2]
c0de3dd2:	0a01      	lsrs	r1, r0, #8
c0de3dd4:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3dd8:	4631      	mov	r1, r6
c0de3dda:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3dde:	f881 b003 	strb.w	fp, [r1, #3]
c0de3de2:	f881 b002 	strb.w	fp, [r1, #2]
c0de3de6:	4641      	mov	r1, r8
c0de3de8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3dec:	784f      	ldrb	r7, [r1, #1]
c0de3dee:	788c      	ldrb	r4, [r1, #2]
c0de3df0:	78cd      	ldrb	r5, [r1, #3]
c0de3df2:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3df6:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3dfa:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3dfe:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3e02:	9c04      	ldr	r4, [sp, #16]
c0de3e04:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3e08:	2202      	movs	r2, #2
c0de3e0a:	75b2      	strb	r2, [r6, #22]
c0de3e0c:	1c5a      	adds	r2, r3, #1
c0de3e0e:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3e12:	7881      	ldrb	r1, [r0, #2]
c0de3e14:	78c0      	ldrb	r0, [r0, #3]
c0de3e16:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3e1a:	6820      	ldr	r0, [r4, #0]
c0de3e1c:	2800      	cmp	r0, #0
c0de3e1e:	f000 80a2 	beq.w	c0de3f66 <nbgl_layoutAddCenteredInfo+0x206>
c0de3e22:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3e26:	f000 fa61 	bl	c0de42ec <OUTLINED_FUNCTION_4>
c0de3e2a:	4607      	mov	r7, r0
c0de3e2c:	2003      	movs	r0, #3
c0de3e2e:	77f8      	strb	r0, [r7, #31]
c0de3e30:	6820      	ldr	r0, [r4, #0]
c0de3e32:	f003 f9bd 	bl	c0de71b0 <pic>
c0de3e36:	4601      	mov	r1, r0
c0de3e38:	2072      	movs	r0, #114	@ 0x72
c0de3e3a:	2500      	movs	r5, #0
c0de3e3c:	7138      	strb	r0, [r7, #4]
c0de3e3e:	2005      	movs	r0, #5
c0de3e40:	0e0a      	lsrs	r2, r1, #24
c0de3e42:	717d      	strb	r5, [r7, #5]
c0de3e44:	f887 0020 	strb.w	r0, [r7, #32]
c0de3e48:	2001      	movs	r0, #1
c0de3e4a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3e4e:	4638      	mov	r0, r7
c0de3e50:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3e54:	70c2      	strb	r2, [r0, #3]
c0de3e56:	0c0a      	lsrs	r2, r1, #16
c0de3e58:	7082      	strb	r2, [r0, #2]
c0de3e5a:	0a08      	lsrs	r0, r1, #8
c0de3e5c:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3e60:	2008      	movs	r0, #8
c0de3e62:	7b62      	ldrb	r2, [r4, #13]
c0de3e64:	2a00      	cmp	r2, #0
c0de3e66:	bf08      	it	eq
c0de3e68:	200a      	moveq	r0, #10
c0de3e6a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e6e:	2272      	movs	r2, #114	@ 0x72
c0de3e70:	2301      	movs	r3, #1
c0de3e72:	f002 ffce 	bl	c0de6e12 <nbgl_getTextNbLinesInWidth>
c0de3e76:	4606      	mov	r6, r0
c0de3e78:	2805      	cmp	r0, #5
c0de3e7a:	d31e      	bcc.n	c0de3eba <nbgl_layoutAddCenteredInfo+0x15a>
c0de3e7c:	463d      	mov	r5, r7
c0de3e7e:	2004      	movs	r0, #4
c0de3e80:	2101      	movs	r1, #1
c0de3e82:	f10d 0416 	add.w	r4, sp, #22
c0de3e86:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3e8a:	786a      	ldrb	r2, [r5, #1]
c0de3e8c:	78ab      	ldrb	r3, [r5, #2]
c0de3e8e:	78ee      	ldrb	r6, [r5, #3]
c0de3e90:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3e94:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3e98:	9101      	str	r1, [sp, #4]
c0de3e9a:	9400      	str	r4, [sp, #0]
c0de3e9c:	9c04      	ldr	r4, [sp, #16]
c0de3e9e:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3ea2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3ea6:	2304      	movs	r3, #4
c0de3ea8:	f000 fa23 	bl	c0de42f2 <OUTLINED_FUNCTION_5>
c0de3eac:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3eb0:	2604      	movs	r6, #4
c0de3eb2:	7128      	strb	r0, [r5, #4]
c0de3eb4:	0a00      	lsrs	r0, r0, #8
c0de3eb6:	7168      	strb	r0, [r5, #5]
c0de3eb8:	2500      	movs	r5, #0
c0de3eba:	f000 fa27 	bl	c0de430c <OUTLINED_FUNCTION_7>
c0de3ebe:	79c0      	ldrb	r0, [r0, #7]
c0de3ec0:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3ec4:	4370      	muls	r0, r6
c0de3ec6:	0a01      	lsrs	r1, r0, #8
c0de3ec8:	71b8      	strb	r0, [r7, #6]
c0de3eca:	71f9      	strb	r1, [r7, #7]
c0de3ecc:	68a1      	ldr	r1, [r4, #8]
c0de3ece:	b329      	cbz	r1, c0de3f1c <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3ed0:	4641      	mov	r1, r8
c0de3ed2:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3ed6:	784c      	ldrb	r4, [r1, #1]
c0de3ed8:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3edc:	788d      	ldrb	r5, [r1, #2]
c0de3ede:	78c9      	ldrb	r1, [r1, #3]
c0de3ee0:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3ee4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3ee8:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3eec:	463a      	mov	r2, r7
c0de3eee:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3ef2:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3ef6:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3efa:	0e0b      	lsrs	r3, r1, #24
c0de3efc:	70d3      	strb	r3, [r2, #3]
c0de3efe:	0c0b      	lsrs	r3, r1, #16
c0de3f00:	0a09      	lsrs	r1, r1, #8
c0de3f02:	7051      	strb	r1, [r2, #1]
c0de3f04:	2100      	movs	r1, #0
c0de3f06:	7093      	strb	r3, [r2, #2]
c0de3f08:	7211      	strb	r1, [r2, #8]
c0de3f0a:	2e03      	cmp	r6, #3
c0de3f0c:	bf38      	it	cc
c0de3f0e:	2101      	movcc	r1, #1
c0de3f10:	0089      	lsls	r1, r1, #2
c0de3f12:	71d1      	strb	r1, [r2, #7]
c0de3f14:	2108      	movs	r1, #8
c0de3f16:	e00a      	b.n	c0de3f2e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3f18:	f000 b9fc 	b.w	c0de4314 <OUTLINED_FUNCTION_8>
c0de3f1c:	6861      	ldr	r1, [r4, #4]
c0de3f1e:	b119      	cbz	r1, c0de3f28 <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3f20:	f000 f9ec 	bl	c0de42fc <OUTLINED_FUNCTION_6>
c0de3f24:	2102      	movs	r1, #2
c0de3f26:	e002      	b.n	c0de3f2e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3f28:	f000 f9e8 	bl	c0de42fc <OUTLINED_FUNCTION_6>
c0de3f2c:	2105      	movs	r1, #5
c0de3f2e:	7111      	strb	r1, [r2, #4]
c0de3f30:	4641      	mov	r1, r8
c0de3f32:	4458      	add	r0, fp
c0de3f34:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3f38:	784c      	ldrb	r4, [r1, #1]
c0de3f3a:	788d      	ldrb	r5, [r1, #2]
c0de3f3c:	78ce      	ldrb	r6, [r1, #3]
c0de3f3e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3f42:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3f46:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3f4a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3f4e:	9c04      	ldr	r4, [sp, #16]
c0de3f50:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3f54:	1c5a      	adds	r2, r3, #1
c0de3f56:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3f5a:	7e79      	ldrb	r1, [r7, #25]
c0de3f5c:	7eba      	ldrb	r2, [r7, #26]
c0de3f5e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3f62:	eb00 0b01 	add.w	fp, r0, r1
c0de3f66:	6860      	ldr	r0, [r4, #4]
c0de3f68:	2800      	cmp	r0, #0
c0de3f6a:	d074      	beq.n	c0de4056 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3f6c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3f70:	2004      	movs	r0, #4
c0de3f72:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3f76:	f002 ff38 	bl	c0de6dea <nbgl_objPoolGet>
c0de3f7a:	2603      	movs	r6, #3
c0de3f7c:	4607      	mov	r7, r0
c0de3f7e:	77c6      	strb	r6, [r0, #31]
c0de3f80:	6860      	ldr	r0, [r4, #4]
c0de3f82:	f003 f915 	bl	c0de71b0 <pic>
c0de3f86:	4601      	mov	r1, r0
c0de3f88:	2000      	movs	r0, #0
c0de3f8a:	2301      	movs	r3, #1
c0de3f8c:	7178      	strb	r0, [r7, #5]
c0de3f8e:	2072      	movs	r0, #114	@ 0x72
c0de3f90:	0e0a      	lsrs	r2, r1, #24
c0de3f92:	7138      	strb	r0, [r7, #4]
c0de3f94:	200a      	movs	r0, #10
c0de3f96:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3f9a:	2005      	movs	r0, #5
c0de3f9c:	f887 0020 	strb.w	r0, [r7, #32]
c0de3fa0:	2001      	movs	r0, #1
c0de3fa2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3fa6:	f000 f97e 	bl	c0de42a6 <OUTLINED_FUNCTION_1>
c0de3faa:	4682      	mov	sl, r0
c0de3fac:	2804      	cmp	r0, #4
c0de3fae:	d31c      	bcc.n	c0de3fea <nbgl_layoutAddCenteredInfo+0x28a>
c0de3fb0:	463d      	mov	r5, r7
c0de3fb2:	f04f 0c01 	mov.w	ip, #1
c0de3fb6:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de3fba:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3fbe:	786a      	ldrb	r2, [r5, #1]
c0de3fc0:	78ab      	ldrb	r3, [r5, #2]
c0de3fc2:	78ee      	ldrb	r6, [r5, #3]
c0de3fc4:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3fc8:	ac05      	add	r4, sp, #20
c0de3fca:	e9cd 4c00 	strd	r4, ip, [sp]
c0de3fce:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3fd2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3fd6:	2303      	movs	r3, #3
c0de3fd8:	f000 f98b 	bl	c0de42f2 <OUTLINED_FUNCTION_5>
c0de3fdc:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de3fe0:	f04f 0a03 	mov.w	sl, #3
c0de3fe4:	7128      	strb	r0, [r5, #4]
c0de3fe6:	0a00      	lsrs	r0, r0, #8
c0de3fe8:	7168      	strb	r0, [r5, #5]
c0de3fea:	f000 f98f 	bl	c0de430c <OUTLINED_FUNCTION_7>
c0de3fee:	4641      	mov	r1, r8
c0de3ff0:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de3ff4:	784c      	ldrb	r4, [r1, #1]
c0de3ff6:	788d      	ldrb	r5, [r1, #2]
c0de3ff8:	78ce      	ldrb	r6, [r1, #3]
c0de3ffa:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de3ffe:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4002:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4006:	463d      	mov	r5, r7
c0de4008:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de400c:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de4010:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4014:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4018:	0e26      	lsrs	r6, r4, #24
c0de401a:	70ee      	strb	r6, [r5, #3]
c0de401c:	0c26      	lsrs	r6, r4, #16
c0de401e:	0a24      	lsrs	r4, r4, #8
c0de4020:	74fc      	strb	r4, [r7, #19]
c0de4022:	70ae      	strb	r6, [r5, #2]
c0de4024:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4028:	2302      	movs	r3, #2
c0de402a:	2400      	movs	r4, #0
c0de402c:	3201      	adds	r2, #1
c0de402e:	767b      	strb	r3, [r7, #25]
c0de4030:	2308      	movs	r3, #8
c0de4032:	76bc      	strb	r4, [r7, #26]
c0de4034:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4038:	79c0      	ldrb	r0, [r0, #7]
c0de403a:	75bb      	strb	r3, [r7, #22]
c0de403c:	fb0a f300 	mul.w	r3, sl, r0
c0de4040:	fb0a b000 	mla	r0, sl, r0, fp
c0de4044:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de4048:	71bb      	strb	r3, [r7, #6]
c0de404a:	0a1b      	lsrs	r3, r3, #8
c0de404c:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4050:	f100 0b02 	add.w	fp, r0, #2
c0de4054:	71fb      	strb	r3, [r7, #7]
c0de4056:	7b20      	ldrb	r0, [r4, #12]
c0de4058:	2102      	movs	r1, #2
c0de405a:	2800      	cmp	r0, #0
c0de405c:	bf08      	it	eq
c0de405e:	2105      	moveq	r1, #5
c0de4060:	f888 1016 	strb.w	r1, [r8, #22]
c0de4064:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de4068:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de406c:	2272      	movs	r2, #114	@ 0x72
c0de406e:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4072:	2000      	movs	r0, #0
c0de4074:	f888 2004 	strb.w	r2, [r8, #4]
c0de4078:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de407c:	3101      	adds	r1, #1
c0de407e:	f888 b006 	strb.w	fp, [r8, #6]
c0de4082:	f888 0019 	strb.w	r0, [r8, #25]
c0de4086:	f888 001a 	strb.w	r0, [r8, #26]
c0de408a:	f888 0005 	strb.w	r0, [r8, #5]
c0de408e:	f888 001f 	strb.w	r0, [r8, #31]
c0de4092:	f888 2007 	strb.w	r2, [r8, #7]
c0de4096:	f88a 1002 	strb.w	r1, [sl, #2]
c0de409a:	b006      	add	sp, #24
c0de409c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de40a0 <nbgl_layoutAddSwitch>:
c0de40a0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de40a4:	2800      	cmp	r0, #0
c0de40a6:	d07d      	beq.n	c0de41a4 <nbgl_layoutAddSwitch+0x104>
c0de40a8:	460d      	mov	r5, r1
c0de40aa:	7841      	ldrb	r1, [r0, #1]
c0de40ac:	4604      	mov	r4, r0
c0de40ae:	f000 f91d 	bl	c0de42ec <OUTLINED_FUNCTION_4>
c0de40b2:	f04f 0803 	mov.w	r8, #3
c0de40b6:	4606      	mov	r6, r0
c0de40b8:	f880 801f 	strb.w	r8, [r0, #31]
c0de40bc:	6828      	ldr	r0, [r5, #0]
c0de40be:	f003 f877 	bl	c0de71b0 <pic>
c0de40c2:	4601      	mov	r1, r0
c0de40c4:	2072      	movs	r0, #114	@ 0x72
c0de40c6:	2700      	movs	r7, #0
c0de40c8:	2301      	movs	r3, #1
c0de40ca:	7130      	strb	r0, [r6, #4]
c0de40cc:	2008      	movs	r0, #8
c0de40ce:	0e0a      	lsrs	r2, r1, #24
c0de40d0:	7177      	strb	r7, [r6, #5]
c0de40d2:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de40d6:	2005      	movs	r0, #5
c0de40d8:	f886 0020 	strb.w	r0, [r6, #32]
c0de40dc:	2001      	movs	r0, #1
c0de40de:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de40e2:	4630      	mov	r0, r6
c0de40e4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de40e8:	70c2      	strb	r2, [r0, #3]
c0de40ea:	0c0a      	lsrs	r2, r1, #16
c0de40ec:	7082      	strb	r2, [r0, #2]
c0de40ee:	0a08      	lsrs	r0, r1, #8
c0de40f0:	2272      	movs	r2, #114	@ 0x72
c0de40f2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de40f6:	2008      	movs	r0, #8
c0de40f8:	f002 fe8b 	bl	c0de6e12 <nbgl_getTextNbLinesInWidth>
c0de40fc:	2801      	cmp	r0, #1
c0de40fe:	d851      	bhi.n	c0de41a4 <nbgl_layoutAddSwitch+0x104>
c0de4100:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4104:	f002 fe80 	bl	c0de6e08 <nbgl_getFontLineHeight>
c0de4108:	6861      	ldr	r1, [r4, #4]
c0de410a:	78a2      	ldrb	r2, [r4, #2]
c0de410c:	76b7      	strb	r7, [r6, #26]
c0de410e:	71f7      	strb	r7, [r6, #7]
c0de4110:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4114:	71b0      	strb	r0, [r6, #6]
c0de4116:	2002      	movs	r0, #2
c0de4118:	f886 8019 	strb.w	r8, [r6, #25]
c0de411c:	75b0      	strb	r0, [r6, #22]
c0de411e:	1c50      	adds	r0, r2, #1
c0de4120:	70a0      	strb	r0, [r4, #2]
c0de4122:	6868      	ldr	r0, [r5, #4]
c0de4124:	2800      	cmp	r0, #0
c0de4126:	d04c      	beq.n	c0de41c2 <nbgl_layoutAddSwitch+0x122>
c0de4128:	7861      	ldrb	r1, [r4, #1]
c0de412a:	f000 f8df 	bl	c0de42ec <OUTLINED_FUNCTION_4>
c0de412e:	4606      	mov	r6, r0
c0de4130:	2003      	movs	r0, #3
c0de4132:	77f0      	strb	r0, [r6, #31]
c0de4134:	6868      	ldr	r0, [r5, #4]
c0de4136:	f003 f83b 	bl	c0de71b0 <pic>
c0de413a:	2172      	movs	r1, #114	@ 0x72
c0de413c:	4637      	mov	r7, r6
c0de413e:	f04f 0800 	mov.w	r8, #0
c0de4142:	f04f 0a05 	mov.w	sl, #5
c0de4146:	7131      	strb	r1, [r6, #4]
c0de4148:	210a      	movs	r1, #10
c0de414a:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de414e:	f886 8005 	strb.w	r8, [r6, #5]
c0de4152:	f886 a020 	strb.w	sl, [r6, #32]
c0de4156:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de415a:	0e01      	lsrs	r1, r0, #24
c0de415c:	70f9      	strb	r1, [r7, #3]
c0de415e:	0c01      	lsrs	r1, r0, #16
c0de4160:	0a00      	lsrs	r0, r0, #8
c0de4162:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4166:	200a      	movs	r0, #10
c0de4168:	70b9      	strb	r1, [r7, #2]
c0de416a:	f002 fe4d 	bl	c0de6e08 <nbgl_getFontLineHeight>
c0de416e:	09c1      	lsrs	r1, r0, #7
c0de4170:	783a      	ldrb	r2, [r7, #0]
c0de4172:	78bb      	ldrb	r3, [r7, #2]
c0de4174:	78ff      	ldrb	r7, [r7, #3]
c0de4176:	0040      	lsls	r0, r0, #1
c0de4178:	f04f 0b01 	mov.w	fp, #1
c0de417c:	71f1      	strb	r1, [r6, #7]
c0de417e:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de4182:	71b0      	strb	r0, [r6, #6]
c0de4184:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4188:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de418c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4190:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de4194:	2301      	movs	r3, #1
c0de4196:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de419a:	2272      	movs	r2, #114	@ 0x72
c0de419c:	f002 fe39 	bl	c0de6e12 <nbgl_getTextNbLinesInWidth>
c0de41a0:	2802      	cmp	r0, #2
c0de41a2:	d902      	bls.n	c0de41aa <nbgl_layoutAddSwitch+0x10a>
c0de41a4:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de41a8:	e05d      	b.n	c0de4266 <nbgl_layoutAddSwitch+0x1c6>
c0de41aa:	6860      	ldr	r0, [r4, #4]
c0de41ac:	78a1      	ldrb	r1, [r4, #2]
c0de41ae:	f886 801a 	strb.w	r8, [r6, #26]
c0de41b2:	f886 a016 	strb.w	sl, [r6, #22]
c0de41b6:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de41ba:	1c48      	adds	r0, r1, #1
c0de41bc:	f886 b019 	strb.w	fp, [r6, #25]
c0de41c0:	70a0      	strb	r0, [r4, #2]
c0de41c2:	7861      	ldrb	r1, [r4, #1]
c0de41c4:	2005      	movs	r0, #5
c0de41c6:	f002 fe10 	bl	c0de6dea <nbgl_objPoolGet>
c0de41ca:	2600      	movs	r6, #0
c0de41cc:	4607      	mov	r7, r0
c0de41ce:	f04f 0a03 	mov.w	sl, #3
c0de41d2:	f04f 0808 	mov.w	r8, #8
c0de41d6:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de41da:	2001      	movs	r0, #1
c0de41dc:	f887 a020 	strb.w	sl, [r7, #32]
c0de41e0:	f887 a01f 	strb.w	sl, [r7, #31]
c0de41e4:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de41e8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de41ec:	7a28      	ldrb	r0, [r5, #8]
c0de41ee:	4a1f      	ldr	r2, [pc, #124]	@ (c0de426c <nbgl_layoutAddSwitch+0x1cc>)
c0de41f0:	491f      	ldr	r1, [pc, #124]	@ (c0de4270 <nbgl_layoutAddSwitch+0x1d0>)
c0de41f2:	2801      	cmp	r0, #1
c0de41f4:	447a      	add	r2, pc
c0de41f6:	4479      	add	r1, pc
c0de41f8:	bf08      	it	eq
c0de41fa:	4611      	moveq	r1, r2
c0de41fc:	463a      	mov	r2, r7
c0de41fe:	0e0b      	lsrs	r3, r1, #24
c0de4200:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4204:	70d3      	strb	r3, [r2, #3]
c0de4206:	0c0b      	lsrs	r3, r1, #16
c0de4208:	7093      	strb	r3, [r2, #2]
c0de420a:	0a0a      	lsrs	r2, r1, #8
c0de420c:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4210:	2801      	cmp	r0, #1
c0de4212:	4638      	mov	r0, r7
c0de4214:	4a17      	ldr	r2, [pc, #92]	@ (c0de4274 <nbgl_layoutAddSwitch+0x1d4>)
c0de4216:	4d18      	ldr	r5, [pc, #96]	@ (c0de4278 <nbgl_layoutAddSwitch+0x1d8>)
c0de4218:	447a      	add	r2, pc
c0de421a:	447d      	add	r5, pc
c0de421c:	bf18      	it	ne
c0de421e:	462a      	movne	r2, r5
c0de4220:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de4224:	0e13      	lsrs	r3, r2, #24
c0de4226:	70c3      	strb	r3, [r0, #3]
c0de4228:	0c13      	lsrs	r3, r2, #16
c0de422a:	7083      	strb	r3, [r0, #2]
c0de422c:	0a10      	lsrs	r0, r2, #8
c0de422e:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4232:	2008      	movs	r0, #8
c0de4234:	f002 fdf7 	bl	c0de6e26 <nbgl_getTextWidth>
c0de4238:	6861      	ldr	r1, [r4, #4]
c0de423a:	78a2      	ldrb	r2, [r4, #2]
c0de423c:	786b      	ldrb	r3, [r5, #1]
c0de423e:	76be      	strb	r6, [r7, #26]
c0de4240:	71fe      	strb	r6, [r7, #7]
c0de4242:	f887 8016 	strb.w	r8, [r7, #22]
c0de4246:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de424a:	210c      	movs	r1, #12
c0de424c:	f887 a019 	strb.w	sl, [r7, #25]
c0de4250:	71b9      	strb	r1, [r7, #6]
c0de4252:	7829      	ldrb	r1, [r5, #0]
c0de4254:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4258:	4408      	add	r0, r1
c0de425a:	1c51      	adds	r1, r2, #1
c0de425c:	300a      	adds	r0, #10
c0de425e:	7138      	strb	r0, [r7, #4]
c0de4260:	0a00      	lsrs	r0, r0, #8
c0de4262:	70a1      	strb	r1, [r4, #2]
c0de4264:	7178      	strb	r0, [r7, #5]
c0de4266:	4630      	mov	r0, r6
c0de4268:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de426c:	000039d7 	.word	0x000039d7
c0de4270:	00003aa4 	.word	0x00003aa4
c0de4274:	00003749 	.word	0x00003749
c0de4278:	00003731 	.word	0x00003731

c0de427c <nbgl_layoutDraw>:
c0de427c:	b120      	cbz	r0, c0de4288 <nbgl_layoutDraw+0xc>
c0de427e:	b580      	push	{r7, lr}
c0de4280:	f002 fda4 	bl	c0de6dcc <nbgl_screenRedraw>
c0de4284:	2000      	movs	r0, #0
c0de4286:	bd80      	pop	{r7, pc}
c0de4288:	f000 b844 	b.w	c0de4314 <OUTLINED_FUNCTION_8>

c0de428c <nbgl_layoutRelease>:
c0de428c:	b148      	cbz	r0, c0de42a2 <nbgl_layoutRelease+0x16>
c0de428e:	b510      	push	{r4, lr}
c0de4290:	4604      	mov	r4, r0
c0de4292:	7800      	ldrb	r0, [r0, #0]
c0de4294:	b110      	cbz	r0, c0de429c <nbgl_layoutRelease+0x10>
c0de4296:	7860      	ldrb	r0, [r4, #1]
c0de4298:	f002 fd9d 	bl	c0de6dd6 <nbgl_screenPop>
c0de429c:	2000      	movs	r0, #0
c0de429e:	70a0      	strb	r0, [r4, #2]
c0de42a0:	bd10      	pop	{r4, pc}
c0de42a2:	f000 b837 	b.w	c0de4314 <OUTLINED_FUNCTION_8>

c0de42a6 <OUTLINED_FUNCTION_1>:
c0de42a6:	4638      	mov	r0, r7
c0de42a8:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de42ac:	70c2      	strb	r2, [r0, #3]
c0de42ae:	0c0a      	lsrs	r2, r1, #16
c0de42b0:	7082      	strb	r2, [r0, #2]
c0de42b2:	0a08      	lsrs	r0, r1, #8
c0de42b4:	2272      	movs	r2, #114	@ 0x72
c0de42b6:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de42ba:	200a      	movs	r0, #10
c0de42bc:	f002 bda9 	b.w	c0de6e12 <nbgl_getTextNbLinesInWidth>

c0de42c0 <OUTLINED_FUNCTION_2>:
c0de42c0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de42c4:	784b      	ldrb	r3, [r1, #1]
c0de42c6:	788d      	ldrb	r5, [r1, #2]
c0de42c8:	78c9      	ldrb	r1, [r1, #3]
c0de42ca:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de42ce:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de42d2:	9d05      	ldr	r5, [sp, #20]
c0de42d4:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de42d8:	4770      	bx	lr

c0de42da <OUTLINED_FUNCTION_3>:
c0de42da:	70c2      	strb	r2, [r0, #3]
c0de42dc:	0c0a      	lsrs	r2, r1, #16
c0de42de:	7082      	strb	r2, [r0, #2]
c0de42e0:	0a08      	lsrs	r0, r1, #8
c0de42e2:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de42e6:	2008      	movs	r0, #8
c0de42e8:	f002 bd9d 	b.w	c0de6e26 <nbgl_getTextWidth>

c0de42ec <OUTLINED_FUNCTION_4>:
c0de42ec:	2004      	movs	r0, #4
c0de42ee:	f002 bd7c 	b.w	c0de6dea <nbgl_objPoolGet>

c0de42f2 <OUTLINED_FUNCTION_5>:
c0de42f2:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de42f6:	2272      	movs	r2, #114	@ 0x72
c0de42f8:	f002 bd9a 	b.w	c0de6e30 <nbgl_getTextMaxLenInNbLines>

c0de42fc <OUTLINED_FUNCTION_6>:
c0de42fc:	2100      	movs	r1, #0
c0de42fe:	463a      	mov	r2, r7
c0de4300:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4304:	70d1      	strb	r1, [r2, #3]
c0de4306:	7091      	strb	r1, [r2, #2]
c0de4308:	7051      	strb	r1, [r2, #1]
c0de430a:	4770      	bx	lr

c0de430c <OUTLINED_FUNCTION_7>:
c0de430c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4310:	f002 bd75 	b.w	c0de6dfe <nbgl_getFont>

c0de4314 <OUTLINED_FUNCTION_8>:
c0de4314:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4318:	4770      	bx	lr

c0de431a <OUTLINED_FUNCTION_9>:
c0de431a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de431e:	2003      	movs	r0, #3
c0de4320:	f887 0020 	strb.w	r0, [r7, #32]
c0de4324:	77f8      	strb	r0, [r7, #31]
c0de4326:	4770      	bx	lr

c0de4328 <nbgl_stepDrawText>:
c0de4328:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de432c:	460e      	mov	r6, r1
c0de432e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4330:	4605      	mov	r5, r0
c0de4332:	2000      	movs	r0, #0
c0de4334:	469a      	mov	sl, r3
c0de4336:	4617      	mov	r7, r2
c0de4338:	f000 f830 	bl	c0de439c <getFreeContext>
c0de433c:	b348      	cbz	r0, c0de4392 <nbgl_stepDrawText+0x6a>
c0de433e:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de4342:	4604      	mov	r4, r0
c0de4344:	6146      	str	r6, [r0, #20]
c0de4346:	b10f      	cbz	r7, c0de434c <nbgl_stepDrawText+0x24>
c0de4348:	f000 fae1 	bl	c0de490e <OUTLINED_FUNCTION_1>
c0de434c:	200a      	movs	r0, #10
c0de434e:	f1b8 0f00 	cmp.w	r8, #0
c0de4352:	bf19      	ittee	ne
c0de4354:	4641      	movne	r1, r8
c0de4356:	2203      	movne	r2, #3
c0de4358:	4651      	moveq	r1, sl
c0de435a:	2204      	moveq	r2, #4
c0de435c:	2372      	movs	r3, #114	@ 0x72
c0de435e:	f002 fd5d 	bl	c0de6e1c <nbgl_getTextNbPagesInWidth>
c0de4362:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4364:	7020      	strb	r0, [r4, #0]
c0de4366:	072a      	lsls	r2, r5, #28
c0de4368:	bf46      	itte	mi
c0de436a:	3801      	submi	r0, #1
c0de436c:	7060      	strbmi	r0, [r4, #1]
c0de436e:	7860      	ldrbpl	r0, [r4, #1]
c0de4370:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4374:	f8c4 a004 	str.w	sl, [r4, #4]
c0de4378:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de437c:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4380:	7461      	strb	r1, [r4, #17]
c0de4382:	f005 0103 	and.w	r1, r5, #3
c0de4386:	7421      	strb	r1, [r4, #16]
c0de4388:	b2c1      	uxtb	r1, r0
c0de438a:	4620      	mov	r0, r4
c0de438c:	f000 f82c 	bl	c0de43e8 <displayTextPage>
c0de4390:	e000      	b.n	c0de4394 <nbgl_stepDrawText+0x6c>
c0de4392:	2400      	movs	r4, #0
c0de4394:	4620      	mov	r0, r4
c0de4396:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de439c <getFreeContext>:
c0de439c:	b570      	push	{r4, r5, r6, lr}
c0de439e:	4604      	mov	r4, r0
c0de43a0:	4810      	ldr	r0, [pc, #64]	@ (c0de43e4 <getFreeContext+0x48>)
c0de43a2:	460d      	mov	r5, r1
c0de43a4:	b151      	cbz	r1, c0de43bc <getFreeContext+0x20>
c0de43a6:	2100      	movs	r1, #0
c0de43a8:	2990      	cmp	r1, #144	@ 0x90
c0de43aa:	d00a      	beq.n	c0de43c2 <getFreeContext+0x26>
c0de43ac:	eb09 0200 	add.w	r2, r9, r0
c0de43b0:	440a      	add	r2, r1
c0de43b2:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de43b6:	b132      	cbz	r2, c0de43c6 <getFreeContext+0x2a>
c0de43b8:	3148      	adds	r1, #72	@ 0x48
c0de43ba:	e7f5      	b.n	c0de43a8 <getFreeContext+0xc>
c0de43bc:	eb09 0600 	add.w	r6, r9, r0
c0de43c0:	e005      	b.n	c0de43ce <getFreeContext+0x32>
c0de43c2:	2600      	movs	r6, #0
c0de43c4:	e00b      	b.n	c0de43de <getFreeContext+0x42>
c0de43c6:	4448      	add	r0, r9
c0de43c8:	4408      	add	r0, r1
c0de43ca:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de43ce:	4630      	mov	r0, r6
c0de43d0:	2148      	movs	r1, #72	@ 0x48
c0de43d2:	f003 f9f9 	bl	c0de77c8 <__aeabi_memclr>
c0de43d6:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de43da:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de43de:	4630      	mov	r0, r6
c0de43e0:	bd70      	pop	{r4, r5, r6, pc}
c0de43e2:	bf00      	nop
c0de43e4:	0000066c 	.word	0x0000066c

c0de43e8 <displayTextPage>:
c0de43e8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de43ec:	b091      	sub	sp, #68	@ 0x44
c0de43ee:	4604      	mov	r4, r0
c0de43f0:	7840      	ldrb	r0, [r0, #1]
c0de43f2:	460e      	mov	r6, r1
c0de43f4:	4288      	cmp	r0, r1
c0de43f6:	d21c      	bcs.n	c0de4432 <displayTextPage+0x4a>
c0de43f8:	68a5      	ldr	r5, [r4, #8]
c0de43fa:	7820      	ldrb	r0, [r4, #0]
c0de43fc:	7066      	strb	r6, [r4, #1]
c0de43fe:	3801      	subs	r0, #1
c0de4400:	42b0      	cmp	r0, r6
c0de4402:	dd31      	ble.n	c0de4468 <displayTextPage+0x80>
c0de4404:	68e0      	ldr	r0, [r4, #12]
c0de4406:	2101      	movs	r1, #1
c0de4408:	2303      	movs	r3, #3
c0de440a:	aa08      	add	r2, sp, #32
c0de440c:	e9cd 2100 	strd	r2, r1, [sp]
c0de4410:	4629      	mov	r1, r5
c0de4412:	2800      	cmp	r0, #0
c0de4414:	bf08      	it	eq
c0de4416:	2304      	moveq	r3, #4
c0de4418:	200a      	movs	r0, #10
c0de441a:	2272      	movs	r2, #114	@ 0x72
c0de441c:	f002 fd08 	bl	c0de6e30 <nbgl_getTextMaxLenInNbLines>
c0de4420:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4424:	1868      	adds	r0, r5, r1
c0de4426:	60a0      	str	r0, [r4, #8]
c0de4428:	5c69      	ldrb	r1, [r5, r1]
c0de442a:	290a      	cmp	r1, #10
c0de442c:	d11e      	bne.n	c0de446c <displayTextPage+0x84>
c0de442e:	3001      	adds	r0, #1
c0de4430:	e01b      	b.n	c0de446a <displayTextPage+0x82>
c0de4432:	68e5      	ldr	r5, [r4, #12]
c0de4434:	2d00      	cmp	r5, #0
c0de4436:	d074      	beq.n	c0de4522 <displayTextPage+0x13a>
c0de4438:	2700      	movs	r7, #0
c0de443a:	f04f 0801 	mov.w	r8, #1
c0de443e:	f10d 0a20 	add.w	sl, sp, #32
c0de4442:	42be      	cmp	r6, r7
c0de4444:	d0d9      	beq.n	c0de43fa <displayTextPage+0x12>
c0de4446:	7820      	ldrb	r0, [r4, #0]
c0de4448:	3801      	subs	r0, #1
c0de444a:	42b8      	cmp	r0, r7
c0de444c:	dd0a      	ble.n	c0de4464 <displayTextPage+0x7c>
c0de444e:	200a      	movs	r0, #10
c0de4450:	4629      	mov	r1, r5
c0de4452:	2272      	movs	r2, #114	@ 0x72
c0de4454:	2303      	movs	r3, #3
c0de4456:	e9cd a800 	strd	sl, r8, [sp]
c0de445a:	f002 fce9 	bl	c0de6e30 <nbgl_getTextMaxLenInNbLines>
c0de445e:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4462:	4405      	add	r5, r0
c0de4464:	3701      	adds	r7, #1
c0de4466:	e7ec      	b.n	c0de4442 <displayTextPage+0x5a>
c0de4468:	2000      	movs	r0, #0
c0de446a:	60a0      	str	r0, [r4, #8]
c0de446c:	484f      	ldr	r0, [pc, #316]	@ (c0de45ac <displayTextPage+0x1c4>)
c0de446e:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4472:	4478      	add	r0, pc
c0de4474:	9004      	str	r0, [sp, #16]
c0de4476:	2000      	movs	r0, #0
c0de4478:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de447c:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4480:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4484:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4486:	ab05      	add	r3, sp, #20
c0de4488:	c307      	stmia	r3!, {r0, r1, r2}
c0de448a:	a803      	add	r0, sp, #12
c0de448c:	f7ff f992 	bl	c0de37b4 <nbgl_layoutGet>
c0de4490:	7827      	ldrb	r7, [r4, #0]
c0de4492:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de4496:	4606      	mov	r6, r0
c0de4498:	6420      	str	r0, [r4, #64]	@ 0x40
c0de449a:	7c20      	ldrb	r0, [r4, #16]
c0de449c:	4639      	mov	r1, r7
c0de449e:	4652      	mov	r2, sl
c0de44a0:	f000 f8fc 	bl	c0de469c <getNavigationInfo>
c0de44a4:	4680      	mov	r8, r0
c0de44a6:	f88d 000b 	strb.w	r0, [sp, #11]
c0de44aa:	68e0      	ldr	r0, [r4, #12]
c0de44ac:	b188      	cbz	r0, c0de44d2 <displayTextPage+0xea>
c0de44ae:	2f01      	cmp	r7, #1
c0de44b0:	d115      	bne.n	c0de44de <displayTextPage+0xf6>
c0de44b2:	6861      	ldr	r1, [r4, #4]
c0de44b4:	2008      	movs	r0, #8
c0de44b6:	2272      	movs	r2, #114	@ 0x72
c0de44b8:	2300      	movs	r3, #0
c0de44ba:	2600      	movs	r6, #0
c0de44bc:	f002 fca9 	bl	c0de6e12 <nbgl_getTextNbLinesInWidth>
c0de44c0:	2802      	cmp	r0, #2
c0de44c2:	d348      	bcc.n	c0de4556 <displayTextPage+0x16e>
c0de44c4:	6861      	ldr	r1, [r4, #4]
c0de44c6:	2018      	movs	r0, #24
c0de44c8:	f104 0218 	add.w	r2, r4, #24
c0de44cc:	e9cd 2000 	strd	r2, r0, [sp]
c0de44d0:	e021      	b.n	c0de4516 <displayTextPage+0x12e>
c0de44d2:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de44d6:	4630      	mov	r0, r6
c0de44d8:	4629      	mov	r1, r5
c0de44da:	2200      	movs	r2, #0
c0de44dc:	e055      	b.n	c0de458a <displayTextPage+0x1a2>
c0de44de:	f10a 0001 	add.w	r0, sl, #1
c0de44e2:	6863      	ldr	r3, [r4, #4]
c0de44e4:	2124      	movs	r1, #36	@ 0x24
c0de44e6:	e9cd 0700 	strd	r0, r7, [sp]
c0de44ea:	af08      	add	r7, sp, #32
c0de44ec:	4a30      	ldr	r2, [pc, #192]	@ (c0de45b0 <displayTextPage+0x1c8>)
c0de44ee:	4638      	mov	r0, r7
c0de44f0:	447a      	add	r2, pc
c0de44f2:	f002 fccb 	bl	c0de6e8c <snprintf>
c0de44f6:	2008      	movs	r0, #8
c0de44f8:	4639      	mov	r1, r7
c0de44fa:	2272      	movs	r2, #114	@ 0x72
c0de44fc:	2300      	movs	r3, #0
c0de44fe:	f04f 0a00 	mov.w	sl, #0
c0de4502:	f002 fc86 	bl	c0de6e12 <nbgl_getTextNbLinesInWidth>
c0de4506:	f104 0c18 	add.w	ip, r4, #24
c0de450a:	2802      	cmp	r0, #2
c0de450c:	d32c      	bcc.n	c0de4568 <displayTextPage+0x180>
c0de450e:	2018      	movs	r0, #24
c0de4510:	e9cd c000 	strd	ip, r0, [sp]
c0de4514:	a908      	add	r1, sp, #32
c0de4516:	2008      	movs	r0, #8
c0de4518:	2272      	movs	r2, #114	@ 0x72
c0de451a:	2301      	movs	r3, #1
c0de451c:	f002 fc8d 	bl	c0de6e3a <nbgl_textReduceOnNbLines>
c0de4520:	e02d      	b.n	c0de457e <displayTextPage+0x196>
c0de4522:	6865      	ldr	r5, [r4, #4]
c0de4524:	2700      	movs	r7, #0
c0de4526:	f04f 0801 	mov.w	r8, #1
c0de452a:	f10d 0a20 	add.w	sl, sp, #32
c0de452e:	42be      	cmp	r6, r7
c0de4530:	f43f af63 	beq.w	c0de43fa <displayTextPage+0x12>
c0de4534:	7820      	ldrb	r0, [r4, #0]
c0de4536:	3801      	subs	r0, #1
c0de4538:	42b8      	cmp	r0, r7
c0de453a:	dd0a      	ble.n	c0de4552 <displayTextPage+0x16a>
c0de453c:	200a      	movs	r0, #10
c0de453e:	4629      	mov	r1, r5
c0de4540:	2272      	movs	r2, #114	@ 0x72
c0de4542:	2304      	movs	r3, #4
c0de4544:	e9cd a800 	strd	sl, r8, [sp]
c0de4548:	f002 fc72 	bl	c0de6e30 <nbgl_getTextMaxLenInNbLines>
c0de454c:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4550:	4405      	add	r5, r0
c0de4552:	3701      	adds	r7, #1
c0de4554:	e7eb      	b.n	c0de452e <displayTextPage+0x146>
c0de4556:	6861      	ldr	r1, [r4, #4]
c0de4558:	f104 0018 	add.w	r0, r4, #24
c0de455c:	2217      	movs	r2, #23
c0de455e:	f003 f929 	bl	c0de77b4 <__aeabi_memcpy>
c0de4562:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de4566:	e00a      	b.n	c0de457e <displayTextPage+0x196>
c0de4568:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de456a:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de456e:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4572:	8838      	ldrh	r0, [r7, #0]
c0de4574:	f8ac 0000 	strh.w	r0, [ip]
c0de4578:	78b8      	ldrb	r0, [r7, #2]
c0de457a:	f88c 0002 	strb.w	r0, [ip, #2]
c0de457e:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4582:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4584:	f104 0118 	add.w	r1, r4, #24
c0de4588:	462a      	mov	r2, r5
c0de458a:	f7ff f9d5 	bl	c0de3938 <nbgl_layoutAddText>
c0de458e:	f1b8 0f00 	cmp.w	r8, #0
c0de4592:	d004      	beq.n	c0de459e <displayTextPage+0x1b6>
c0de4594:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4596:	f10d 010a 	add.w	r1, sp, #10
c0de459a:	f7ff f96f 	bl	c0de387c <nbgl_layoutAddNavigation>
c0de459e:	f000 f9e9 	bl	c0de4974 <OUTLINED_FUNCTION_4>
c0de45a2:	f002 fbfa 	bl	c0de6d9a <nbgl_refresh>
c0de45a6:	b011      	add	sp, #68	@ 0x44
c0de45a8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de45ac:	000001bb 	.word	0x000001bb
c0de45b0:	000035cd 	.word	0x000035cd

c0de45b4 <nbgl_stepDrawCenteredInfo>:
c0de45b4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de45b8:	b087      	sub	sp, #28
c0de45ba:	460d      	mov	r5, r1
c0de45bc:	4682      	mov	sl, r0
c0de45be:	a802      	add	r0, sp, #8
c0de45c0:	f000 f9d3 	bl	c0de496a <OUTLINED_FUNCTION_3>
c0de45c4:	4819      	ldr	r0, [pc, #100]	@ (c0de462c <nbgl_stepDrawCenteredInfo+0x78>)
c0de45c6:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de45c8:	4478      	add	r0, pc
c0de45ca:	f000 f9c5 	bl	c0de4958 <OUTLINED_FUNCTION_2>
c0de45ce:	b168      	cbz	r0, c0de45ec <nbgl_stepDrawCenteredInfo+0x38>
c0de45d0:	4604      	mov	r4, r0
c0de45d2:	6145      	str	r5, [r0, #20]
c0de45d4:	b10f      	cbz	r7, c0de45da <nbgl_stepDrawCenteredInfo+0x26>
c0de45d6:	f000 f953 	bl	c0de4880 <OUTLINED_FUNCTION_0>
c0de45da:	f000 f9ce 	bl	c0de497a <OUTLINED_FUNCTION_5>
c0de45de:	d007      	beq.n	c0de45f0 <nbgl_stepDrawCenteredInfo+0x3c>
c0de45e0:	2802      	cmp	r0, #2
c0de45e2:	d007      	beq.n	c0de45f4 <nbgl_stepDrawCenteredInfo+0x40>
c0de45e4:	2801      	cmp	r0, #1
c0de45e6:	d108      	bne.n	c0de45fa <nbgl_stepDrawCenteredInfo+0x46>
c0de45e8:	2002      	movs	r0, #2
c0de45ea:	e004      	b.n	c0de45f6 <nbgl_stepDrawCenteredInfo+0x42>
c0de45ec:	2400      	movs	r4, #0
c0de45ee:	e018      	b.n	c0de4622 <nbgl_stepDrawCenteredInfo+0x6e>
c0de45f0:	2003      	movs	r0, #3
c0de45f2:	e000      	b.n	c0de45f6 <nbgl_stepDrawCenteredInfo+0x42>
c0de45f4:	2001      	movs	r0, #1
c0de45f6:	2500      	movs	r5, #0
c0de45f8:	e000      	b.n	c0de45fc <nbgl_stepDrawCenteredInfo+0x48>
c0de45fa:	2000      	movs	r0, #0
c0de45fc:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4600:	a802      	add	r0, sp, #8
c0de4602:	f7ff f8d7 	bl	c0de37b4 <nbgl_layoutGet>
c0de4606:	4641      	mov	r1, r8
c0de4608:	6420      	str	r0, [r4, #64]	@ 0x40
c0de460a:	f7ff fba9 	bl	c0de3d60 <nbgl_layoutAddCenteredInfo>
c0de460e:	b925      	cbnz	r5, c0de461a <nbgl_stepDrawCenteredInfo+0x66>
c0de4610:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4612:	f10d 0106 	add.w	r1, sp, #6
c0de4616:	f7ff f931 	bl	c0de387c <nbgl_layoutAddNavigation>
c0de461a:	f000 f9ab 	bl	c0de4974 <OUTLINED_FUNCTION_4>
c0de461e:	f002 fbbc 	bl	c0de6d9a <nbgl_refresh>
c0de4622:	4620      	mov	r0, r4
c0de4624:	b007      	add	sp, #28
c0de4626:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de462a:	bf00      	nop
c0de462c:	00000065 	.word	0x00000065

c0de4630 <actionCallback>:
c0de4630:	b510      	push	{r4, lr}
c0de4632:	460c      	mov	r4, r1
c0de4634:	f000 f8f0 	bl	c0de4818 <getContextFromLayout>
c0de4638:	b378      	cbz	r0, c0de469a <actionCallback+0x6a>
c0de463a:	2c04      	cmp	r4, #4
c0de463c:	d006      	beq.n	c0de464c <actionCallback+0x1c>
c0de463e:	2c01      	cmp	r4, #1
c0de4640:	d008      	beq.n	c0de4654 <actionCallback+0x24>
c0de4642:	bb54      	cbnz	r4, c0de469a <actionCallback+0x6a>
c0de4644:	7841      	ldrb	r1, [r0, #1]
c0de4646:	b1d9      	cbz	r1, c0de4680 <actionCallback+0x50>
c0de4648:	3901      	subs	r1, #1
c0de464a:	e009      	b.n	c0de4660 <actionCallback+0x30>
c0de464c:	6942      	ldr	r2, [r0, #20]
c0de464e:	b322      	cbz	r2, c0de469a <actionCallback+0x6a>
c0de4650:	2104      	movs	r1, #4
c0de4652:	e01f      	b.n	c0de4694 <actionCallback+0x64>
c0de4654:	7802      	ldrb	r2, [r0, #0]
c0de4656:	7841      	ldrb	r1, [r0, #1]
c0de4658:	3a01      	subs	r2, #1
c0de465a:	428a      	cmp	r2, r1
c0de465c:	dd05      	ble.n	c0de466a <actionCallback+0x3a>
c0de465e:	3101      	adds	r1, #1
c0de4660:	b2c9      	uxtb	r1, r1
c0de4662:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4666:	f7ff bebf 	b.w	c0de43e8 <displayTextPage>
c0de466a:	7c01      	ldrb	r1, [r0, #16]
c0de466c:	f041 0102 	orr.w	r1, r1, #2
c0de4670:	2903      	cmp	r1, #3
c0de4672:	d001      	beq.n	c0de4678 <actionCallback+0x48>
c0de4674:	7c41      	ldrb	r1, [r0, #17]
c0de4676:	b181      	cbz	r1, c0de469a <actionCallback+0x6a>
c0de4678:	6942      	ldr	r2, [r0, #20]
c0de467a:	b172      	cbz	r2, c0de469a <actionCallback+0x6a>
c0de467c:	2101      	movs	r1, #1
c0de467e:	e009      	b.n	c0de4694 <actionCallback+0x64>
c0de4680:	7c01      	ldrb	r1, [r0, #16]
c0de4682:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4686:	2902      	cmp	r1, #2
c0de4688:	d001      	beq.n	c0de468e <actionCallback+0x5e>
c0de468a:	7c41      	ldrb	r1, [r0, #17]
c0de468c:	b129      	cbz	r1, c0de469a <actionCallback+0x6a>
c0de468e:	6942      	ldr	r2, [r0, #20]
c0de4690:	b11a      	cbz	r2, c0de469a <actionCallback+0x6a>
c0de4692:	2100      	movs	r1, #0
c0de4694:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4698:	4710      	bx	r2
c0de469a:	bd10      	pop	{r4, pc}

c0de469c <getNavigationInfo>:
c0de469c:	4603      	mov	r3, r0
c0de469e:	2902      	cmp	r1, #2
c0de46a0:	d308      	bcc.n	c0de46b4 <getNavigationInfo+0x18>
c0de46a2:	3901      	subs	r1, #1
c0de46a4:	4610      	mov	r0, r2
c0de46a6:	2a00      	cmp	r2, #0
c0de46a8:	bf18      	it	ne
c0de46aa:	2001      	movne	r0, #1
c0de46ac:	4291      	cmp	r1, r2
c0de46ae:	bf88      	it	hi
c0de46b0:	3002      	addhi	r0, #2
c0de46b2:	e000      	b.n	c0de46b6 <getNavigationInfo+0x1a>
c0de46b4:	2000      	movs	r0, #0
c0de46b6:	2b03      	cmp	r3, #3
c0de46b8:	d00a      	beq.n	c0de46d0 <getNavigationInfo+0x34>
c0de46ba:	2b02      	cmp	r3, #2
c0de46bc:	bf04      	itt	eq
c0de46be:	f040 0001 	orreq.w	r0, r0, #1
c0de46c2:	4770      	bxeq	lr
c0de46c4:	2b01      	cmp	r3, #1
c0de46c6:	bf04      	itt	eq
c0de46c8:	f040 0002 	orreq.w	r0, r0, #2
c0de46cc:	4770      	bxeq	lr
c0de46ce:	4770      	bx	lr
c0de46d0:	2003      	movs	r0, #3
c0de46d2:	4770      	bx	lr

c0de46d4 <nbgl_stepDrawMenuList>:
c0de46d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de46d6:	460f      	mov	r7, r1
c0de46d8:	4606      	mov	r6, r0
c0de46da:	2002      	movs	r0, #2
c0de46dc:	4619      	mov	r1, r3
c0de46de:	4615      	mov	r5, r2
c0de46e0:	f7ff fe5c 	bl	c0de439c <getFreeContext>
c0de46e4:	b170      	cbz	r0, c0de4704 <nbgl_stepDrawMenuList+0x30>
c0de46e6:	4604      	mov	r4, r0
c0de46e8:	b10f      	cbz	r7, c0de46ee <nbgl_stepDrawMenuList+0x1a>
c0de46ea:	f000 f910 	bl	c0de490e <OUTLINED_FUNCTION_1>
c0de46ee:	7928      	ldrb	r0, [r5, #4]
c0de46f0:	7220      	strb	r0, [r4, #8]
c0de46f2:	7968      	ldrb	r0, [r5, #5]
c0de46f4:	7260      	strb	r0, [r4, #9]
c0de46f6:	6828      	ldr	r0, [r5, #0]
c0de46f8:	e9c4 6000 	strd	r6, r0, [r4]
c0de46fc:	4620      	mov	r0, r4
c0de46fe:	f000 f805 	bl	c0de470c <displayMenuList>
c0de4702:	e000      	b.n	c0de4706 <nbgl_stepDrawMenuList+0x32>
c0de4704:	2400      	movs	r4, #0
c0de4706:	4620      	mov	r0, r4
c0de4708:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de470c <displayMenuList>:
c0de470c:	b5b0      	push	{r4, r5, r7, lr}
c0de470e:	b086      	sub	sp, #24
c0de4710:	4604      	mov	r4, r0
c0de4712:	2000      	movs	r0, #0
c0de4714:	9001      	str	r0, [sp, #4]
c0de4716:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de471a:	4819      	ldr	r0, [pc, #100]	@ (c0de4780 <displayMenuList+0x74>)
c0de471c:	4478      	add	r0, pc
c0de471e:	9002      	str	r0, [sp, #8]
c0de4720:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4724:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4728:	ca07      	ldmia	r2, {r0, r1, r2}
c0de472a:	ab03      	add	r3, sp, #12
c0de472c:	c307      	stmia	r3!, {r0, r1, r2}
c0de472e:	a801      	add	r0, sp, #4
c0de4730:	f7ff f840 	bl	c0de37b4 <nbgl_layoutGet>
c0de4734:	1d25      	adds	r5, r4, #4
c0de4736:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4738:	4629      	mov	r1, r5
c0de473a:	f7ff fabd 	bl	c0de3cb8 <nbgl_layoutAddMenuList>
c0de473e:	7a20      	ldrb	r0, [r4, #8]
c0de4740:	2802      	cmp	r0, #2
c0de4742:	d316      	bcc.n	c0de4772 <displayMenuList+0x66>
c0de4744:	2101      	movs	r1, #1
c0de4746:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de474a:	7969      	ldrb	r1, [r5, #5]
c0de474c:	2900      	cmp	r1, #0
c0de474e:	460a      	mov	r2, r1
c0de4750:	bf18      	it	ne
c0de4752:	2201      	movne	r2, #1
c0de4754:	3801      	subs	r0, #1
c0de4756:	f88d 2003 	strb.w	r2, [sp, #3]
c0de475a:	4288      	cmp	r0, r1
c0de475c:	d903      	bls.n	c0de4766 <displayMenuList+0x5a>
c0de475e:	1c90      	adds	r0, r2, #2
c0de4760:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4764:	e000      	b.n	c0de4768 <displayMenuList+0x5c>
c0de4766:	b121      	cbz	r1, c0de4772 <displayMenuList+0x66>
c0de4768:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de476a:	f10d 0102 	add.w	r1, sp, #2
c0de476e:	f7ff f885 	bl	c0de387c <nbgl_layoutAddNavigation>
c0de4772:	f000 f8ff 	bl	c0de4974 <OUTLINED_FUNCTION_4>
c0de4776:	f002 fb10 	bl	c0de6d9a <nbgl_refresh>
c0de477a:	b006      	add	sp, #24
c0de477c:	bdb0      	pop	{r4, r5, r7, pc}
c0de477e:	bf00      	nop
c0de4780:	00000121 	.word	0x00000121

c0de4784 <nbgl_stepDrawSwitch>:
c0de4784:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4788:	b087      	sub	sp, #28
c0de478a:	460d      	mov	r5, r1
c0de478c:	4682      	mov	sl, r0
c0de478e:	a802      	add	r0, sp, #8
c0de4790:	f000 f8eb 	bl	c0de496a <OUTLINED_FUNCTION_3>
c0de4794:	4819      	ldr	r0, [pc, #100]	@ (c0de47fc <nbgl_stepDrawSwitch+0x78>)
c0de4796:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4798:	4478      	add	r0, pc
c0de479a:	f000 f8dd 	bl	c0de4958 <OUTLINED_FUNCTION_2>
c0de479e:	b168      	cbz	r0, c0de47bc <nbgl_stepDrawSwitch+0x38>
c0de47a0:	4604      	mov	r4, r0
c0de47a2:	6145      	str	r5, [r0, #20]
c0de47a4:	b10f      	cbz	r7, c0de47aa <nbgl_stepDrawSwitch+0x26>
c0de47a6:	f000 f86b 	bl	c0de4880 <OUTLINED_FUNCTION_0>
c0de47aa:	f000 f8e6 	bl	c0de497a <OUTLINED_FUNCTION_5>
c0de47ae:	d007      	beq.n	c0de47c0 <nbgl_stepDrawSwitch+0x3c>
c0de47b0:	2802      	cmp	r0, #2
c0de47b2:	d007      	beq.n	c0de47c4 <nbgl_stepDrawSwitch+0x40>
c0de47b4:	2801      	cmp	r0, #1
c0de47b6:	d108      	bne.n	c0de47ca <nbgl_stepDrawSwitch+0x46>
c0de47b8:	2002      	movs	r0, #2
c0de47ba:	e004      	b.n	c0de47c6 <nbgl_stepDrawSwitch+0x42>
c0de47bc:	2400      	movs	r4, #0
c0de47be:	e018      	b.n	c0de47f2 <nbgl_stepDrawSwitch+0x6e>
c0de47c0:	2003      	movs	r0, #3
c0de47c2:	e000      	b.n	c0de47c6 <nbgl_stepDrawSwitch+0x42>
c0de47c4:	2001      	movs	r0, #1
c0de47c6:	2500      	movs	r5, #0
c0de47c8:	e000      	b.n	c0de47cc <nbgl_stepDrawSwitch+0x48>
c0de47ca:	2000      	movs	r0, #0
c0de47cc:	f88d 0007 	strb.w	r0, [sp, #7]
c0de47d0:	a802      	add	r0, sp, #8
c0de47d2:	f7fe ffef 	bl	c0de37b4 <nbgl_layoutGet>
c0de47d6:	4641      	mov	r1, r8
c0de47d8:	6420      	str	r0, [r4, #64]	@ 0x40
c0de47da:	f7ff fc61 	bl	c0de40a0 <nbgl_layoutAddSwitch>
c0de47de:	b925      	cbnz	r5, c0de47ea <nbgl_stepDrawSwitch+0x66>
c0de47e0:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de47e2:	f10d 0106 	add.w	r1, sp, #6
c0de47e6:	f7ff f849 	bl	c0de387c <nbgl_layoutAddNavigation>
c0de47ea:	f000 f8c3 	bl	c0de4974 <OUTLINED_FUNCTION_4>
c0de47ee:	f002 fad4 	bl	c0de6d9a <nbgl_refresh>
c0de47f2:	4620      	mov	r0, r4
c0de47f4:	b007      	add	sp, #28
c0de47f6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de47fa:	bf00      	nop
c0de47fc:	fffffe95 	.word	0xfffffe95

c0de4800 <nbgl_stepRelease>:
c0de4800:	b138      	cbz	r0, c0de4812 <nbgl_stepRelease+0x12>
c0de4802:	b510      	push	{r4, lr}
c0de4804:	4604      	mov	r4, r0
c0de4806:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4808:	f7ff fd40 	bl	c0de428c <nbgl_layoutRelease>
c0de480c:	2100      	movs	r1, #0
c0de480e:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4810:	bd10      	pop	{r4, pc}
c0de4812:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4816:	4770      	bx	lr

c0de4818 <getContextFromLayout>:
c0de4818:	4a08      	ldr	r2, [pc, #32]	@ (c0de483c <getContextFromLayout+0x24>)
c0de481a:	2100      	movs	r1, #0
c0de481c:	29d8      	cmp	r1, #216	@ 0xd8
c0de481e:	bf04      	itt	eq
c0de4820:	2000      	moveq	r0, #0
c0de4822:	4770      	bxeq	lr
c0de4824:	eb09 0302 	add.w	r3, r9, r2
c0de4828:	440b      	add	r3, r1
c0de482a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de482c:	4283      	cmp	r3, r0
c0de482e:	d001      	beq.n	c0de4834 <getContextFromLayout+0x1c>
c0de4830:	3148      	adds	r1, #72	@ 0x48
c0de4832:	e7f3      	b.n	c0de481c <getContextFromLayout+0x4>
c0de4834:	eb09 0002 	add.w	r0, r9, r2
c0de4838:	4408      	add	r0, r1
c0de483a:	4770      	bx	lr
c0de483c:	0000066c 	.word	0x0000066c

c0de4840 <menuListActionCallback>:
c0de4840:	b510      	push	{r4, lr}
c0de4842:	460c      	mov	r4, r1
c0de4844:	f7ff ffe8 	bl	c0de4818 <getContextFromLayout>
c0de4848:	b1c8      	cbz	r0, c0de487e <menuListActionCallback+0x3e>
c0de484a:	2c04      	cmp	r4, #4
c0de484c:	d006      	beq.n	c0de485c <menuListActionCallback+0x1c>
c0de484e:	2c01      	cmp	r4, #1
c0de4850:	d00a      	beq.n	c0de4868 <menuListActionCallback+0x28>
c0de4852:	b9a4      	cbnz	r4, c0de487e <menuListActionCallback+0x3e>
c0de4854:	7a41      	ldrb	r1, [r0, #9]
c0de4856:	b191      	cbz	r1, c0de487e <menuListActionCallback+0x3e>
c0de4858:	3901      	subs	r1, #1
c0de485a:	e00b      	b.n	c0de4874 <menuListActionCallback+0x34>
c0de485c:	7a41      	ldrb	r1, [r0, #9]
c0de485e:	6802      	ldr	r2, [r0, #0]
c0de4860:	4608      	mov	r0, r1
c0de4862:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4866:	4710      	bx	r2
c0de4868:	7a02      	ldrb	r2, [r0, #8]
c0de486a:	7a41      	ldrb	r1, [r0, #9]
c0de486c:	3a01      	subs	r2, #1
c0de486e:	428a      	cmp	r2, r1
c0de4870:	dd05      	ble.n	c0de487e <menuListActionCallback+0x3e>
c0de4872:	3101      	adds	r1, #1
c0de4874:	7241      	strb	r1, [r0, #9]
c0de4876:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de487a:	f7ff bf47 	b.w	c0de470c <displayMenuList>
c0de487e:	bd10      	pop	{r4, pc}

c0de4880 <OUTLINED_FUNCTION_0>:
c0de4880:	7838      	ldrb	r0, [r7, #0]
c0de4882:	7879      	ldrb	r1, [r7, #1]
c0de4884:	78ba      	ldrb	r2, [r7, #2]
c0de4886:	78fb      	ldrb	r3, [r7, #3]
c0de4888:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de488c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4890:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4894:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4896:	4638      	mov	r0, r7
c0de4898:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de489c:	7a79      	ldrb	r1, [r7, #9]
c0de489e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de48a2:	7882      	ldrb	r2, [r0, #2]
c0de48a4:	78c3      	ldrb	r3, [r0, #3]
c0de48a6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48aa:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de48ae:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de48b0:	4639      	mov	r1, r7
c0de48b2:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de48b6:	797a      	ldrb	r2, [r7, #5]
c0de48b8:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de48bc:	788b      	ldrb	r3, [r1, #2]
c0de48be:	78cd      	ldrb	r5, [r1, #3]
c0de48c0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de48c4:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de48c8:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de48ca:	783a      	ldrb	r2, [r7, #0]
c0de48cc:	787b      	ldrb	r3, [r7, #1]
c0de48ce:	78bd      	ldrb	r5, [r7, #2]
c0de48d0:	78fe      	ldrb	r6, [r7, #3]
c0de48d2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48d6:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de48da:	7803      	ldrb	r3, [r0, #0]
c0de48dc:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de48e0:	7885      	ldrb	r5, [r0, #2]
c0de48e2:	78c0      	ldrb	r0, [r0, #3]
c0de48e4:	9204      	str	r2, [sp, #16]
c0de48e6:	7a7a      	ldrb	r2, [r7, #9]
c0de48e8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de48ec:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de48f0:	788b      	ldrb	r3, [r1, #2]
c0de48f2:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de48f6:	780a      	ldrb	r2, [r1, #0]
c0de48f8:	78c9      	ldrb	r1, [r1, #3]
c0de48fa:	9006      	str	r0, [sp, #24]
c0de48fc:	7978      	ldrb	r0, [r7, #5]
c0de48fe:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4902:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4906:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de490a:	9005      	str	r0, [sp, #20]
c0de490c:	4770      	bx	lr

c0de490e <OUTLINED_FUNCTION_1>:
c0de490e:	7838      	ldrb	r0, [r7, #0]
c0de4910:	7879      	ldrb	r1, [r7, #1]
c0de4912:	78ba      	ldrb	r2, [r7, #2]
c0de4914:	78fb      	ldrb	r3, [r7, #3]
c0de4916:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de491a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de491e:	4639      	mov	r1, r7
c0de4920:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4924:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4928:	6360      	str	r0, [r4, #52]	@ 0x34
c0de492a:	7a78      	ldrb	r0, [r7, #9]
c0de492c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4930:	788a      	ldrb	r2, [r1, #2]
c0de4932:	78c9      	ldrb	r1, [r1, #3]
c0de4934:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4938:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de493c:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de493e:	7978      	ldrb	r0, [r7, #5]
c0de4940:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4944:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4948:	78b9      	ldrb	r1, [r7, #2]
c0de494a:	78fa      	ldrb	r2, [r7, #3]
c0de494c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4950:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4954:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4956:	4770      	bx	lr

c0de4958 <OUTLINED_FUNCTION_2>:
c0de4958:	f88d 1008 	strb.w	r1, [sp, #8]
c0de495c:	9003      	str	r0, [sp, #12]
c0de495e:	2000      	movs	r0, #0
c0de4960:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4964:	2001      	movs	r0, #1
c0de4966:	f7ff bd19 	b.w	c0de439c <getFreeContext>

c0de496a <OUTLINED_FUNCTION_3>:
c0de496a:	2114      	movs	r1, #20
c0de496c:	4698      	mov	r8, r3
c0de496e:	4617      	mov	r7, r2
c0de4970:	f002 bf2a 	b.w	c0de77c8 <__aeabi_memclr>

c0de4974 <OUTLINED_FUNCTION_4>:
c0de4974:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4976:	f7ff bc81 	b.w	c0de427c <nbgl_layoutDraw>

c0de497a <OUTLINED_FUNCTION_5>:
c0de497a:	2501      	movs	r5, #1
c0de497c:	f00a 0003 	and.w	r0, sl, #3
c0de4980:	2803      	cmp	r0, #3
c0de4982:	7025      	strb	r5, [r4, #0]
c0de4984:	7420      	strb	r0, [r4, #16]
c0de4986:	4770      	bx	lr

c0de4988 <nbgl_useCaseHomeAndSettings>:
c0de4988:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de498c:	4607      	mov	r7, r0
c0de498e:	4810      	ldr	r0, [pc, #64]	@ (c0de49d0 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4990:	f001 fc98 	bl	c0de62c4 <OUTLINED_FUNCTION_0>
c0de4994:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de4998:	6425      	str	r5, [r4, #64]	@ 0x40
c0de499a:	9d06      	ldr	r5, [sp, #24]
c0de499c:	4628      	mov	r0, r5
c0de499e:	f002 fc07 	bl	c0de71b0 <pic>
c0de49a2:	6460      	str	r0, [r4, #68]	@ 0x44
c0de49a4:	9807      	ldr	r0, [sp, #28]
c0de49a6:	f002 fc03 	bl	c0de71b0 <pic>
c0de49aa:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de49ac:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de49b0:	6521      	str	r1, [r4, #80]	@ 0x50
c0de49b2:	9908      	ldr	r1, [sp, #32]
c0de49b4:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de49b8:	bf18      	it	ne
c0de49ba:	2d00      	cmpne	r5, #0
c0de49bc:	d103      	bne.n	c0de49c6 <nbgl_useCaseHomeAndSettings+0x3e>
c0de49be:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de49c2:	f000 b843 	b.w	c0de4a4c <startUseCaseHome>
c0de49c6:	4640      	mov	r0, r8
c0de49c8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de49cc:	f000 b802 	b.w	c0de49d4 <startUseCaseSettingsAtPage>
c0de49d0:	00000744 	.word	0x00000744

c0de49d4 <startUseCaseSettingsAtPage>:
c0de49d4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de49d6:	b08f      	sub	sp, #60	@ 0x3c
c0de49d8:	4604      	mov	r4, r0
c0de49da:	a801      	add	r0, sp, #4
c0de49dc:	2138      	movs	r1, #56	@ 0x38
c0de49de:	f002 fef3 	bl	c0de77c8 <__aeabi_memclr>
c0de49e2:	4e19      	ldr	r6, [pc, #100]	@ (c0de4a48 <startUseCaseSettingsAtPage+0x74>)
c0de49e4:	eb09 0006 	add.w	r0, r9, r6
c0de49e8:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de49ec:	280f      	cmp	r0, #15
c0de49ee:	bf1e      	ittt	ne
c0de49f0:	eb09 0006 	addne.w	r0, r9, r6
c0de49f4:	210e      	movne	r1, #14
c0de49f6:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de49fa:	eb09 0006 	add.w	r0, r9, r6
c0de49fe:	2101      	movs	r1, #1
c0de4a00:	2700      	movs	r7, #0
c0de4a02:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4a06:	ad01      	add	r5, sp, #4
c0de4a08:	eb09 0006 	add.w	r0, r9, r6
c0de4a0c:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de4a0e:	7a01      	ldrb	r1, [r0, #8]
c0de4a10:	428f      	cmp	r7, r1
c0de4a12:	d20e      	bcs.n	c0de4a32 <startUseCaseSettingsAtPage+0x5e>
c0de4a14:	b279      	sxtb	r1, r7
c0de4a16:	462a      	mov	r2, r5
c0de4a18:	f000 fca6 	bl	c0de5368 <getContentAtIdx>
c0de4a1c:	f000 fcfe 	bl	c0de541c <getContentNbElement>
c0de4a20:	eb09 0106 	add.w	r1, r9, r6
c0de4a24:	3701      	adds	r7, #1
c0de4a26:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de4a2a:	4410      	add	r0, r2
c0de4a2c:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de4a30:	e7ea      	b.n	c0de4a08 <startUseCaseSettingsAtPage+0x34>
c0de4a32:	eb09 0006 	add.w	r0, r9, r6
c0de4a36:	2100      	movs	r1, #0
c0de4a38:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de4a3c:	2000      	movs	r0, #0
c0de4a3e:	f000 fef7 	bl	c0de5830 <displaySettingsPage>
c0de4a42:	b00f      	add	sp, #60	@ 0x3c
c0de4a44:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4a46:	bf00      	nop
c0de4a48:	00000744 	.word	0x00000744

c0de4a4c <startUseCaseHome>:
c0de4a4c:	b510      	push	{r4, lr}
c0de4a4e:	4821      	ldr	r0, [pc, #132]	@ (c0de4ad4 <startUseCaseHome+0x88>)
c0de4a50:	eb09 0100 	add.w	r1, r9, r0
c0de4a54:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de4a58:	290d      	cmp	r1, #13
c0de4a5a:	d009      	beq.n	c0de4a70 <startUseCaseHome+0x24>
c0de4a5c:	290e      	cmp	r1, #14
c0de4a5e:	d114      	bne.n	c0de4a8a <startUseCaseHome+0x3e>
c0de4a60:	eb09 0100 	add.w	r1, r9, r0
c0de4a64:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de4a66:	2102      	movs	r1, #2
c0de4a68:	2a00      	cmp	r2, #0
c0de4a6a:	bf08      	it	eq
c0de4a6c:	2101      	moveq	r1, #1
c0de4a6e:	e00d      	b.n	c0de4a8c <startUseCaseHome+0x40>
c0de4a70:	eb09 0200 	add.w	r2, r9, r0
c0de4a74:	2102      	movs	r1, #2
c0de4a76:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de4a78:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de4a7a:	2c00      	cmp	r4, #0
c0de4a7c:	bf08      	it	eq
c0de4a7e:	2101      	moveq	r1, #1
c0de4a80:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a84:	b133      	cbz	r3, c0de4a94 <startUseCaseHome+0x48>
c0de4a86:	3101      	adds	r1, #1
c0de4a88:	e000      	b.n	c0de4a8c <startUseCaseHome+0x40>
c0de4a8a:	2100      	movs	r1, #0
c0de4a8c:	eb09 0200 	add.w	r2, r9, r0
c0de4a90:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a94:	eb09 0200 	add.w	r2, r9, r0
c0de4a98:	210c      	movs	r1, #12
c0de4a9a:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de4a9e:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de4aa2:	2103      	movs	r1, #3
c0de4aa4:	2b00      	cmp	r3, #0
c0de4aa6:	bf08      	it	eq
c0de4aa8:	2102      	moveq	r1, #2
c0de4aaa:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4aae:	b124      	cbz	r4, c0de4aba <startUseCaseHome+0x6e>
c0de4ab0:	3101      	adds	r1, #1
c0de4ab2:	eb09 0200 	add.w	r2, r9, r0
c0de4ab6:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4aba:	eb09 0200 	add.w	r2, r9, r0
c0de4abe:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de4ac0:	b11a      	cbz	r2, c0de4aca <startUseCaseHome+0x7e>
c0de4ac2:	4448      	add	r0, r9
c0de4ac4:	3101      	adds	r1, #1
c0de4ac6:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4aca:	2000      	movs	r0, #0
c0de4acc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ad0:	f000 bf9e 	b.w	c0de5a10 <displayHomePage>
c0de4ad4:	00000744 	.word	0x00000744

c0de4ad8 <nbgl_useCaseReview>:
c0de4ad8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4ada:	4614      	mov	r4, r2
c0de4adc:	460a      	mov	r2, r1
c0de4ade:	4601      	mov	r1, r0
c0de4ae0:	9808      	ldr	r0, [sp, #32]
c0de4ae2:	9003      	str	r0, [sp, #12]
c0de4ae4:	9807      	ldr	r0, [sp, #28]
c0de4ae6:	9002      	str	r0, [sp, #8]
c0de4ae8:	9806      	ldr	r0, [sp, #24]
c0de4aea:	e9cd 3000 	strd	r3, r0, [sp]
c0de4aee:	2002      	movs	r0, #2
c0de4af0:	4623      	mov	r3, r4
c0de4af2:	f000 f801 	bl	c0de4af8 <useCaseReview>
c0de4af6:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4af8 <useCaseReview>:
c0de4af8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4afc:	4607      	mov	r7, r0
c0de4afe:	4811      	ldr	r0, [pc, #68]	@ (c0de4b44 <useCaseReview+0x4c>)
c0de4b00:	4688      	mov	r8, r1
c0de4b02:	2140      	movs	r1, #64	@ 0x40
c0de4b04:	461d      	mov	r5, r3
c0de4b06:	4614      	mov	r4, r2
c0de4b08:	f001 fbf1 	bl	c0de62ee <OUTLINED_FUNCTION_2>
c0de4b0c:	9808      	ldr	r0, [sp, #32]
c0de4b0e:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4b10:	9807      	ldr	r0, [sp, #28]
c0de4b12:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de4b14:	9906      	ldr	r1, [sp, #24]
c0de4b16:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de4b1a:	6471      	str	r1, [r6, #68]	@ 0x44
c0de4b1c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4b1e:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de4b22:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de4b26:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de4b28:	2104      	movs	r1, #4
c0de4b2a:	2800      	cmp	r0, #0
c0de4b2c:	bf08      	it	eq
c0de4b2e:	2103      	moveq	r1, #3
c0de4b30:	7a20      	ldrb	r0, [r4, #8]
c0de4b32:	4408      	add	r0, r1
c0de4b34:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4b38:	2000      	movs	r0, #0
c0de4b3a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4b3e:	f000 b8b1 	b.w	c0de4ca4 <displayReviewPage>
c0de4b42:	bf00      	nop
c0de4b44:	00000744 	.word	0x00000744

c0de4b48 <nbgl_useCaseAdvancedReview>:
c0de4b48:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4b4c:	b088      	sub	sp, #32
c0de4b4e:	4688      	mov	r8, r1
c0de4b50:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4b54:	4615      	mov	r5, r2
c0de4b56:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de4b5a:	4604      	mov	r4, r0
c0de4b5c:	f1ba 0f00 	cmp.w	sl, #0
c0de4b60:	d039      	beq.n	c0de4bd6 <nbgl_useCaseAdvancedReview+0x8e>
c0de4b62:	f8da 6000 	ldr.w	r6, [sl]
c0de4b66:	b92e      	cbnz	r6, c0de4b74 <nbgl_useCaseAdvancedReview+0x2c>
c0de4b68:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4b6c:	b910      	cbnz	r0, c0de4b74 <nbgl_useCaseAdvancedReview+0x2c>
c0de4b6e:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4b72:	b380      	cbz	r0, c0de4bd6 <nbgl_useCaseAdvancedReview+0x8e>
c0de4b74:	4822      	ldr	r0, [pc, #136]	@ (c0de4c00 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b76:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de4b7a:	2128      	movs	r1, #40	@ 0x28
c0de4b7c:	9605      	str	r6, [sp, #20]
c0de4b7e:	461f      	mov	r7, r3
c0de4b80:	4616      	mov	r6, r2
c0de4b82:	eb09 0400 	add.w	r4, r9, r0
c0de4b86:	4620      	mov	r0, r4
c0de4b88:	f002 fe1e 	bl	c0de77c8 <__aeabi_memclr>
c0de4b8c:	491c      	ldr	r1, [pc, #112]	@ (c0de4c00 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b8e:	2002      	movs	r0, #2
c0de4b90:	46b4      	mov	ip, r6
c0de4b92:	462b      	mov	r3, r5
c0de4b94:	f809 0001 	strb.w	r0, [r9, r1]
c0de4b98:	9905      	ldr	r1, [sp, #20]
c0de4b9a:	2040      	movs	r0, #64	@ 0x40
c0de4b9c:	2908      	cmp	r1, #8
c0de4b9e:	bf08      	it	eq
c0de4ba0:	2080      	moveq	r0, #128	@ 0x80
c0de4ba2:	9906      	ldr	r1, [sp, #24]
c0de4ba4:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de4ba8:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4bac:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4bb0:	9e07      	ldr	r6, [sp, #28]
c0de4bb2:	4301      	orrs	r1, r0
c0de4bb4:	9807      	ldr	r0, [sp, #28]
c0de4bb6:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de4bba:	6220      	str	r0, [r4, #32]
c0de4bbc:	f89a 0000 	ldrb.w	r0, [sl]
c0de4bc0:	f010 0f16 	tst.w	r0, #22
c0de4bc4:	d102      	bne.n	c0de4bcc <nbgl_useCaseAdvancedReview+0x84>
c0de4bc6:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4bca:	b188      	cbz	r0, c0de4bf0 <nbgl_useCaseAdvancedReview+0xa8>
c0de4bcc:	b008      	add	sp, #32
c0de4bce:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4bd2:	f000 b817 	b.w	c0de4c04 <displayInitialWarning>
c0de4bd6:	e9cd 3200 	strd	r3, r2, [sp]
c0de4bda:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de4bde:	2002      	movs	r0, #2
c0de4be0:	4621      	mov	r1, r4
c0de4be2:	4642      	mov	r2, r8
c0de4be4:	462b      	mov	r3, r5
c0de4be6:	f7ff ff87 	bl	c0de4af8 <useCaseReview>
c0de4bea:	b008      	add	sp, #32
c0de4bec:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4bf0:	2002      	movs	r0, #2
c0de4bf2:	4642      	mov	r2, r8
c0de4bf4:	463d      	mov	r5, r7
c0de4bf6:	e9cd 7c00 	strd	r7, ip, [sp]
c0de4bfa:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de4bfe:	e7f2      	b.n	c0de4be6 <nbgl_useCaseAdvancedReview+0x9e>
c0de4c00:	00000744 	.word	0x00000744

c0de4c04 <displayInitialWarning>:
c0de4c04:	4803      	ldr	r0, [pc, #12]	@ (c0de4c14 <displayInitialWarning+0x10>)
c0de4c06:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4c0a:	4448      	add	r0, r9
c0de4c0c:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4c0e:	f000 bfeb 	b.w	c0de5be8 <displayWarningStep>
c0de4c12:	bf00      	nop
c0de4c14:	00000744 	.word	0x00000744

c0de4c18 <nbgl_useCaseReviewBlindSigning>:
c0de4c18:	b5b0      	push	{r4, r5, r7, lr}
c0de4c1a:	b086      	sub	sp, #24
c0de4c1c:	4d06      	ldr	r5, [pc, #24]	@ (c0de4c38 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4c1e:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4c20:	447d      	add	r5, pc
c0de4c22:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4c26:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4c28:	9401      	str	r4, [sp, #4]
c0de4c2a:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4c2c:	9400      	str	r4, [sp, #0]
c0de4c2e:	f7ff ff8b 	bl	c0de4b48 <nbgl_useCaseAdvancedReview>
c0de4c32:	b006      	add	sp, #24
c0de4c34:	bdb0      	pop	{r4, r5, r7, pc}
c0de4c36:	bf00      	nop
c0de4c38:	00004010 	.word	0x00004010

c0de4c3c <nbgl_useCaseAddressReview>:
c0de4c3c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c40:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4ca0 <nbgl_useCaseAddressReview+0x64>
c0de4c44:	460c      	mov	r4, r1
c0de4c46:	4607      	mov	r7, r0
c0de4c48:	2140      	movs	r1, #64	@ 0x40
c0de4c4a:	469a      	mov	sl, r3
c0de4c4c:	4616      	mov	r6, r2
c0de4c4e:	eb09 0508 	add.w	r5, r9, r8
c0de4c52:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4c56:	f002 fdb7 	bl	c0de77c8 <__aeabi_memclr>
c0de4c5a:	2004      	movs	r0, #4
c0de4c5c:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4c5e:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4c62:	9808      	ldr	r0, [sp, #32]
c0de4c64:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4c68:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4c6a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4c6c:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4c6e:	2105      	movs	r1, #5
c0de4c70:	2800      	cmp	r0, #0
c0de4c72:	bf08      	it	eq
c0de4c74:	2104      	moveq	r1, #4
c0de4c76:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4c7a:	b15c      	cbz	r4, c0de4c94 <nbgl_useCaseAddressReview+0x58>
c0de4c7c:	4620      	mov	r0, r4
c0de4c7e:	eb09 0508 	add.w	r5, r9, r8
c0de4c82:	f002 fa95 	bl	c0de71b0 <pic>
c0de4c86:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4c88:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4c8c:	7a21      	ldrb	r1, [r4, #8]
c0de4c8e:	4408      	add	r0, r1
c0de4c90:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4c94:	2000      	movs	r0, #0
c0de4c96:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c9a:	f000 b803 	b.w	c0de4ca4 <displayReviewPage>
c0de4c9e:	bf00      	nop
c0de4ca0:	00000744 	.word	0x00000744

c0de4ca4 <displayReviewPage>:
c0de4ca4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4ca6:	b08b      	sub	sp, #44	@ 0x2c
c0de4ca8:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4e20 <displayReviewPage+0x17c>)
c0de4caa:	4604      	mov	r4, r0
c0de4cac:	2000      	movs	r0, #0
c0de4cae:	2201      	movs	r2, #1
c0de4cb0:	2702      	movs	r7, #2
c0de4cb2:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4cb6:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4cba:	eb09 0306 	add.w	r3, r9, r6
c0de4cbe:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4cc0:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4cc2:	2800      	cmp	r0, #0
c0de4cc4:	bf08      	it	eq
c0de4cc6:	22ff      	moveq	r2, #255	@ 0xff
c0de4cc8:	bf08      	it	eq
c0de4cca:	2701      	moveq	r7, #1
c0de4ccc:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4cd0:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4cd4:	1e9d      	subs	r5, r3, #2
c0de4cd6:	b2ed      	uxtb	r5, r5
c0de4cd8:	42a9      	cmp	r1, r5
c0de4cda:	da06      	bge.n	c0de4cea <displayReviewPage+0x46>
c0de4cdc:	42b9      	cmp	r1, r7
c0de4cde:	da0b      	bge.n	c0de4cf8 <displayReviewPage+0x54>
c0de4ce0:	2900      	cmp	r1, #0
c0de4ce2:	d041      	beq.n	c0de4d68 <displayReviewPage+0xc4>
c0de4ce4:	428a      	cmp	r2, r1
c0de4ce6:	d044      	beq.n	c0de4d72 <displayReviewPage+0xce>
c0de4ce8:	e044      	b.n	c0de4d74 <displayReviewPage+0xd0>
c0de4cea:	d110      	bne.n	c0de4d0e <displayReviewPage+0x6a>
c0de4cec:	a908      	add	r1, sp, #32
c0de4cee:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4cf0:	2001      	movs	r0, #1
c0de4cf2:	f000 ffe1 	bl	c0de5cb8 <getLastPageInfo>
c0de4cf6:	e03d      	b.n	c0de4d74 <displayReviewPage+0xd0>
c0de4cf8:	eb09 0006 	add.w	r0, r9, r6
c0de4cfc:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4cfe:	b18d      	cbz	r5, c0de4d24 <displayReviewPage+0x80>
c0de4d00:	42b9      	cmp	r1, r7
c0de4d02:	d10f      	bne.n	c0de4d24 <displayReviewPage+0x80>
c0de4d04:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4d06:	4847      	ldr	r0, [pc, #284]	@ (c0de4e24 <displayReviewPage+0x180>)
c0de4d08:	4478      	add	r0, pc
c0de4d0a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4d0c:	e033      	b.n	c0de4d76 <displayReviewPage+0xd2>
c0de4d0e:	1e58      	subs	r0, r3, #1
c0de4d10:	b2c0      	uxtb	r0, r0
c0de4d12:	4281      	cmp	r1, r0
c0de4d14:	d12e      	bne.n	c0de4d74 <displayReviewPage+0xd0>
c0de4d16:	a908      	add	r1, sp, #32
c0de4d18:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d1a:	2000      	movs	r0, #0
c0de4d1c:	2500      	movs	r5, #0
c0de4d1e:	f000 ffcb 	bl	c0de5cb8 <getLastPageInfo>
c0de4d22:	e028      	b.n	c0de4d76 <displayReviewPage+0xd2>
c0de4d24:	eb09 0006 	add.w	r0, r9, r6
c0de4d28:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4d2c:	06d2      	lsls	r2, r2, #27
c0de4d2e:	d535      	bpl.n	c0de4d9c <displayReviewPage+0xf8>
c0de4d30:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4d34:	bb90      	cbnz	r0, c0de4d9c <displayReviewPage+0xf8>
c0de4d36:	42b9      	cmp	r1, r7
c0de4d38:	dc05      	bgt.n	c0de4d46 <displayReviewPage+0xa2>
c0de4d3a:	eb09 0006 	add.w	r0, r9, r6
c0de4d3e:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4d42:	2808      	cmp	r0, #8
c0de4d44:	d12a      	bne.n	c0de4d9c <displayReviewPage+0xf8>
c0de4d46:	2000      	movs	r0, #0
c0de4d48:	9006      	str	r0, [sp, #24]
c0de4d4a:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4d4e:	eb09 0006 	add.w	r0, r9, r6
c0de4d52:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4d56:	f004 0008 	and.w	r0, r4, #8
c0de4d5a:	2a01      	cmp	r2, #1
c0de4d5c:	d001      	beq.n	c0de4d62 <displayReviewPage+0xbe>
c0de4d5e:	2901      	cmp	r1, #1
c0de4d60:	db43      	blt.n	c0de4dea <displayReviewPage+0x146>
c0de4d62:	f040 0003 	orr.w	r0, r0, #3
c0de4d66:	e042      	b.n	c0de4dee <displayReviewPage+0x14a>
c0de4d68:	eb09 0006 	add.w	r0, r9, r6
c0de4d6c:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4d70:	9108      	str	r1, [sp, #32]
c0de4d72:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4d74:	2500      	movs	r5, #0
c0de4d76:	2000      	movs	r0, #0
c0de4d78:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4d7a:	9908      	ldr	r1, [sp, #32]
c0de4d7c:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4e38 <displayReviewPage+0x194>)
c0de4d7e:	b2c0      	uxtb	r0, r0
c0de4d80:	2300      	movs	r3, #0
c0de4d82:	9002      	str	r0, [sp, #8]
c0de4d84:	4620      	mov	r0, r4
c0de4d86:	447e      	add	r6, pc
c0de4d88:	e9cd 6300 	strd	r6, r3, [sp]
c0de4d8c:	462b      	mov	r3, r5
c0de4d8e:	f000 f875 	bl	c0de4e7c <drawStep>
c0de4d92:	b00b      	add	sp, #44	@ 0x2c
c0de4d94:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4d98:	f001 bfff 	b.w	c0de6d9a <nbgl_refresh>
c0de4d9c:	2200      	movs	r2, #0
c0de4d9e:	eb09 0006 	add.w	r0, r9, r6
c0de4da2:	1bcf      	subs	r7, r1, r7
c0de4da4:	f10d 0c0c 	add.w	ip, sp, #12
c0de4da8:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4dac:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4db0:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4db2:	ab08      	add	r3, sp, #32
c0de4db4:	aa07      	add	r2, sp, #28
c0de4db6:	2d00      	cmp	r5, #0
c0de4db8:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4dbc:	bf18      	it	ne
c0de4dbe:	3f01      	subne	r7, #1
c0de4dc0:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4dc2:	b2f9      	uxtb	r1, r7
c0de4dc4:	ab09      	add	r3, sp, #36	@ 0x24
c0de4dc6:	f000 fcb7 	bl	c0de5738 <getPairData>
c0de4dca:	9807      	ldr	r0, [sp, #28]
c0de4dcc:	b140      	cbz	r0, c0de4de0 <displayReviewPage+0x13c>
c0de4dce:	eb09 0006 	add.w	r0, r9, r6
c0de4dd2:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4dd6:	4917      	ldr	r1, [pc, #92]	@ (c0de4e34 <displayReviewPage+0x190>)
c0de4dd8:	4479      	add	r1, pc
c0de4dda:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4ddc:	2001      	movs	r0, #1
c0de4dde:	e002      	b.n	c0de4de6 <displayReviewPage+0x142>
c0de4de0:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4de4:	0040      	lsls	r0, r0, #1
c0de4de6:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4de8:	e7c6      	b.n	c0de4d78 <displayReviewPage+0xd4>
c0de4dea:	f040 0001 	orr.w	r0, r0, #1
c0de4dee:	490e      	ldr	r1, [pc, #56]	@ (c0de4e28 <displayReviewPage+0x184>)
c0de4df0:	2200      	movs	r2, #0
c0de4df2:	4479      	add	r1, pc
c0de4df4:	9103      	str	r1, [sp, #12]
c0de4df6:	490d      	ldr	r1, [pc, #52]	@ (c0de4e2c <displayReviewPage+0x188>)
c0de4df8:	4479      	add	r1, pc
c0de4dfa:	9105      	str	r1, [sp, #20]
c0de4dfc:	2100      	movs	r1, #0
c0de4dfe:	9100      	str	r1, [sp, #0]
c0de4e00:	490b      	ldr	r1, [pc, #44]	@ (c0de4e30 <displayReviewPage+0x18c>)
c0de4e02:	ab03      	add	r3, sp, #12
c0de4e04:	4479      	add	r1, pc
c0de4e06:	f7ff fbd5 	bl	c0de45b4 <nbgl_stepDrawCenteredInfo>
c0de4e0a:	eb09 0406 	add.w	r4, r9, r6
c0de4e0e:	f001 ffc4 	bl	c0de6d9a <nbgl_refresh>
c0de4e12:	2001      	movs	r0, #1
c0de4e14:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4e18:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4e1c:	b00b      	add	sp, #44	@ 0x2c
c0de4e1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4e20:	00000744 	.word	0x00000744
c0de4e24:	00003027 	.word	0x00003027
c0de4e28:	00002d0b 	.word	0x00002d0b
c0de4e2c:	00002b1a 	.word	0x00002b1a
c0de4e30:	000010bd 	.word	0x000010bd
c0de4e34:	000011a1 	.word	0x000011a1
c0de4e38:	00001267 	.word	0x00001267

c0de4e3c <nbgl_useCaseStatus>:
c0de4e3c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4e3e:	4605      	mov	r5, r0
c0de4e40:	480c      	ldr	r0, [pc, #48]	@ (c0de4e74 <nbgl_useCaseStatus+0x38>)
c0de4e42:	2140      	movs	r1, #64	@ 0x40
c0de4e44:	4614      	mov	r4, r2
c0de4e46:	f001 fa52 	bl	c0de62ee <OUTLINED_FUNCTION_2>
c0de4e4a:	2009      	movs	r0, #9
c0de4e4c:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4e4e:	462a      	mov	r2, r5
c0de4e50:	2300      	movs	r3, #0
c0de4e52:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4e56:	2001      	movs	r0, #1
c0de4e58:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4e5c:	2000      	movs	r0, #0
c0de4e5e:	4906      	ldr	r1, [pc, #24]	@ (c0de4e78 <nbgl_useCaseStatus+0x3c>)
c0de4e60:	9002      	str	r0, [sp, #8]
c0de4e62:	4479      	add	r1, pc
c0de4e64:	e9cd 1000 	strd	r1, r0, [sp]
c0de4e68:	2040      	movs	r0, #64	@ 0x40
c0de4e6a:	2100      	movs	r1, #0
c0de4e6c:	f000 f806 	bl	c0de4e7c <drawStep>
c0de4e70:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4e72:	bf00      	nop
c0de4e74:	00000744 	.word	0x00000744
c0de4e78:	0000019f 	.word	0x0000019f

c0de4e7c <drawStep>:
c0de4e7c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e80:	b09a      	sub	sp, #104	@ 0x68
c0de4e82:	4688      	mov	r8, r1
c0de4e84:	4604      	mov	r4, r0
c0de4e86:	a80c      	add	r0, sp, #48	@ 0x30
c0de4e88:	2138      	movs	r1, #56	@ 0x38
c0de4e8a:	461d      	mov	r5, r3
c0de4e8c:	4616      	mov	r6, r2
c0de4e8e:	f002 fc9b 	bl	c0de77c8 <__aeabi_memclr>
c0de4e92:	2700      	movs	r7, #0
c0de4e94:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4e98:	4856      	ldr	r0, [pc, #344]	@ (c0de4ff4 <drawStep+0x178>)
c0de4e9a:	4478      	add	r0, pc
c0de4e9c:	f002 f988 	bl	c0de71b0 <pic>
c0de4ea0:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de4ff0 <drawStep+0x174>
c0de4ea4:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4ea8:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4eaa:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4eae:	eb09 000b 	add.w	r0, r9, fp
c0de4eb2:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4eb6:	2802      	cmp	r0, #2
c0de4eb8:	d30b      	bcc.n	c0de4ed2 <drawStep+0x56>
c0de4eba:	eb09 010b 	add.w	r1, r9, fp
c0de4ebe:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4ec2:	b129      	cbz	r1, c0de4ed0 <drawStep+0x54>
c0de4ec4:	3801      	subs	r0, #1
c0de4ec6:	2703      	movs	r7, #3
c0de4ec8:	4288      	cmp	r0, r1
c0de4eca:	bf08      	it	eq
c0de4ecc:	2702      	moveq	r7, #2
c0de4ece:	e000      	b.n	c0de4ed2 <drawStep+0x56>
c0de4ed0:	2701      	movs	r7, #1
c0de4ed2:	eb09 000b 	add.w	r0, r9, fp
c0de4ed6:	ea47 0204 	orr.w	r2, r7, r4
c0de4eda:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4ede:	4614      	mov	r4, r2
c0de4ee0:	2901      	cmp	r1, #1
c0de4ee2:	bf88      	it	hi
c0de4ee4:	f044 0402 	orrhi.w	r4, r4, #2
c0de4ee8:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4eea:	2900      	cmp	r1, #0
c0de4eec:	bf08      	it	eq
c0de4eee:	4614      	moveq	r4, r2
c0de4ef0:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4ef4:	2806      	cmp	r0, #6
c0de4ef6:	f040 0108 	orr.w	r1, r0, #8
c0de4efa:	bf18      	it	ne
c0de4efc:	4614      	movne	r4, r2
c0de4efe:	2909      	cmp	r1, #9
c0de4f00:	bf0c      	ite	eq
c0de4f02:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4f06:	f04f 0a00 	movne.w	sl, #0
c0de4f0a:	280a      	cmp	r0, #10
c0de4f0c:	d105      	bne.n	c0de4f1a <drawStep+0x9e>
c0de4f0e:	eb09 000b 	add.w	r0, r9, fp
c0de4f12:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4f14:	b108      	cbz	r0, c0de4f1a <drawStep+0x9e>
c0de4f16:	f7ff fc73 	bl	c0de4800 <nbgl_stepRelease>
c0de4f1a:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4f1c:	b1b6      	cbz	r6, c0de4f4c <drawStep+0xd0>
c0de4f1e:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4f20:	f1b8 0f00 	cmp.w	r8, #0
c0de4f24:	d12c      	bne.n	c0de4f80 <drawStep+0x104>
c0de4f26:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4f28:	2802      	cmp	r0, #2
c0de4f2a:	d029      	beq.n	c0de4f80 <drawStep+0x104>
c0de4f2c:	2201      	movs	r2, #1
c0de4f2e:	4633      	mov	r3, r6
c0de4f30:	2801      	cmp	r0, #1
c0de4f32:	bf08      	it	eq
c0de4f34:	2202      	moveq	r2, #2
c0de4f36:	4620      	mov	r0, r4
c0de4f38:	2d00      	cmp	r5, #0
c0de4f3a:	bf08      	it	eq
c0de4f3c:	462a      	moveq	r2, r5
c0de4f3e:	e9cd 5200 	strd	r5, r2, [sp]
c0de4f42:	9702      	str	r7, [sp, #8]
c0de4f44:	4652      	mov	r2, sl
c0de4f46:	f7ff f9ef 	bl	c0de4328 <nbgl_stepDrawText>
c0de4f4a:	e043      	b.n	c0de4fd4 <drawStep+0x158>
c0de4f4c:	eb09 000b 	add.w	r0, r9, fp
c0de4f50:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4f54:	a903      	add	r1, sp, #12
c0de4f56:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4f58:	f000 fbaa 	bl	c0de56b0 <getContentElemAtIdx>
c0de4f5c:	b330      	cbz	r0, c0de4fac <drawStep+0x130>
c0de4f5e:	7801      	ldrb	r1, [r0, #0]
c0de4f60:	2400      	movs	r4, #0
c0de4f62:	290a      	cmp	r1, #10
c0de4f64:	d024      	beq.n	c0de4fb0 <drawStep+0x134>
c0de4f66:	2909      	cmp	r1, #9
c0de4f68:	d135      	bne.n	c0de4fd6 <drawStep+0x15a>
c0de4f6a:	f001 f9d0 	bl	c0de630e <OUTLINED_FUNCTION_5>
c0de4f6e:	4922      	ldr	r1, [pc, #136]	@ (c0de4ff8 <drawStep+0x17c>)
c0de4f70:	4479      	add	r1, pc
c0de4f72:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4f74:	7941      	ldrb	r1, [r0, #5]
c0de4f76:	7980      	ldrb	r0, [r0, #6]
c0de4f78:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4f7c:	1c48      	adds	r0, r1, #1
c0de4f7e:	e020      	b.n	c0de4fc2 <drawStep+0x146>
c0de4f80:	2000      	movs	r0, #0
c0de4f82:	9603      	str	r6, [sp, #12]
c0de4f84:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4f88:	9504      	str	r5, [sp, #16]
c0de4f8a:	4652      	mov	r2, sl
c0de4f8c:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4f90:	eb09 000b 	add.w	r0, r9, fp
c0de4f94:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4f96:	4328      	orrs	r0, r5
c0de4f98:	bf18      	it	ne
c0de4f9a:	2001      	movne	r0, #1
c0de4f9c:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4fa0:	9700      	str	r7, [sp, #0]
c0de4fa2:	ab03      	add	r3, sp, #12
c0de4fa4:	4620      	mov	r0, r4
c0de4fa6:	f7ff fb05 	bl	c0de45b4 <nbgl_stepDrawCenteredInfo>
c0de4faa:	e013      	b.n	c0de4fd4 <drawStep+0x158>
c0de4fac:	2400      	movs	r4, #0
c0de4fae:	e012      	b.n	c0de4fd6 <drawStep+0x15a>
c0de4fb0:	f001 f9ad 	bl	c0de630e <OUTLINED_FUNCTION_5>
c0de4fb4:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de4fb8:	4910      	ldr	r1, [pc, #64]	@ (c0de4ffc <drawStep+0x180>)
c0de4fba:	7a00      	ldrb	r0, [r0, #8]
c0de4fbc:	4479      	add	r1, pc
c0de4fbe:	3001      	adds	r0, #1
c0de4fc0:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4fc2:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de4fc6:	4651      	mov	r1, sl
c0de4fc8:	463b      	mov	r3, r7
c0de4fca:	480d      	ldr	r0, [pc, #52]	@ (c0de5000 <drawStep+0x184>)
c0de4fcc:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4fce:	4478      	add	r0, pc
c0de4fd0:	f7ff fb80 	bl	c0de46d4 <nbgl_stepDrawMenuList>
c0de4fd4:	4604      	mov	r4, r0
c0de4fd6:	eb09 000b 	add.w	r0, r9, fp
c0de4fda:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4fde:	280a      	cmp	r0, #10
c0de4fe0:	bf04      	itt	eq
c0de4fe2:	eb09 000b 	addeq.w	r0, r9, fp
c0de4fe6:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de4fe8:	b01a      	add	sp, #104	@ 0x68
c0de4fea:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4fee:	bf00      	nop
c0de4ff0:	00000744 	.word	0x00000744
c0de4ff4:	000012df 	.word	0x000012df
c0de4ff8:	00001219 	.word	0x00001219
c0de4ffc:	000011cd 	.word	0x000011cd
c0de5000:	0000121f 	.word	0x0000121f

c0de5004 <statusButtonCallback>:
c0de5004:	f041 0004 	orr.w	r0, r1, #4
c0de5008:	2804      	cmp	r0, #4
c0de500a:	d001      	beq.n	c0de5010 <statusButtonCallback+0xc>
c0de500c:	2901      	cmp	r1, #1
c0de500e:	d104      	bne.n	c0de501a <statusButtonCallback+0x16>
c0de5010:	4802      	ldr	r0, [pc, #8]	@ (c0de501c <statusButtonCallback+0x18>)
c0de5012:	4448      	add	r0, r9
c0de5014:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de5016:	b100      	cbz	r0, c0de501a <statusButtonCallback+0x16>
c0de5018:	4700      	bx	r0
c0de501a:	4770      	bx	lr
c0de501c:	00000744 	.word	0x00000744

c0de5020 <nbgl_useCaseReviewStatus>:
c0de5020:	460a      	mov	r2, r1
c0de5022:	b198      	cbz	r0, c0de504c <nbgl_useCaseReviewStatus+0x2c>
c0de5024:	2801      	cmp	r0, #1
c0de5026:	d016      	beq.n	c0de5056 <nbgl_useCaseReviewStatus+0x36>
c0de5028:	2802      	cmp	r0, #2
c0de502a:	d019      	beq.n	c0de5060 <nbgl_useCaseReviewStatus+0x40>
c0de502c:	2803      	cmp	r0, #3
c0de502e:	d01c      	beq.n	c0de506a <nbgl_useCaseReviewStatus+0x4a>
c0de5030:	2804      	cmp	r0, #4
c0de5032:	d01f      	beq.n	c0de5074 <nbgl_useCaseReviewStatus+0x54>
c0de5034:	2807      	cmp	r0, #7
c0de5036:	d022      	beq.n	c0de507e <nbgl_useCaseReviewStatus+0x5e>
c0de5038:	2806      	cmp	r0, #6
c0de503a:	d025      	beq.n	c0de5088 <nbgl_useCaseReviewStatus+0x68>
c0de503c:	2805      	cmp	r0, #5
c0de503e:	bf18      	it	ne
c0de5040:	4770      	bxne	lr
c0de5042:	4815      	ldr	r0, [pc, #84]	@ (c0de5098 <nbgl_useCaseReviewStatus+0x78>)
c0de5044:	2100      	movs	r1, #0
c0de5046:	4478      	add	r0, pc
c0de5048:	f7ff bef8 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de504c:	4813      	ldr	r0, [pc, #76]	@ (c0de509c <nbgl_useCaseReviewStatus+0x7c>)
c0de504e:	2101      	movs	r1, #1
c0de5050:	4478      	add	r0, pc
c0de5052:	f7ff bef3 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de5056:	4812      	ldr	r0, [pc, #72]	@ (c0de50a0 <nbgl_useCaseReviewStatus+0x80>)
c0de5058:	2100      	movs	r1, #0
c0de505a:	4478      	add	r0, pc
c0de505c:	f7ff beee 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de5060:	4810      	ldr	r0, [pc, #64]	@ (c0de50a4 <nbgl_useCaseReviewStatus+0x84>)
c0de5062:	2101      	movs	r1, #1
c0de5064:	4478      	add	r0, pc
c0de5066:	f7ff bee9 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de506a:	480f      	ldr	r0, [pc, #60]	@ (c0de50a8 <nbgl_useCaseReviewStatus+0x88>)
c0de506c:	2100      	movs	r1, #0
c0de506e:	4478      	add	r0, pc
c0de5070:	f7ff bee4 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de5074:	4807      	ldr	r0, [pc, #28]	@ (c0de5094 <nbgl_useCaseReviewStatus+0x74>)
c0de5076:	2101      	movs	r1, #1
c0de5078:	4478      	add	r0, pc
c0de507a:	f7ff bedf 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de507e:	480c      	ldr	r0, [pc, #48]	@ (c0de50b0 <nbgl_useCaseReviewStatus+0x90>)
c0de5080:	2100      	movs	r1, #0
c0de5082:	4478      	add	r0, pc
c0de5084:	f7ff beda 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de5088:	4808      	ldr	r0, [pc, #32]	@ (c0de50ac <nbgl_useCaseReviewStatus+0x8c>)
c0de508a:	2101      	movs	r1, #1
c0de508c:	4478      	add	r0, pc
c0de508e:	f7ff bed5 	b.w	c0de4e3c <nbgl_useCaseStatus>
c0de5092:	bf00      	nop
c0de5094:	00002a50 	.word	0x00002a50
c0de5098:	00002aa4 	.word	0x00002aa4
c0de509c:	00002b3b 	.word	0x00002b3b
c0de50a0:	00002d00 	.word	0x00002d00
c0de50a4:	00002b9a 	.word	0x00002b9a
c0de50a8:	00002c96 	.word	0x00002c96
c0de50ac:	00002abf 	.word	0x00002abf
c0de50b0:	00002bf9 	.word	0x00002bf9

c0de50b4 <displayStreamingReviewPage>:
c0de50b4:	b570      	push	{r4, r5, r6, lr}
c0de50b6:	b08c      	sub	sp, #48	@ 0x30
c0de50b8:	4d5a      	ldr	r5, [pc, #360]	@ (c0de5224 <displayStreamingReviewPage+0x170>)
c0de50ba:	2100      	movs	r1, #0
c0de50bc:	4604      	mov	r4, r0
c0de50be:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de50c2:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de50c6:	eb09 0005 	add.w	r0, r9, r5
c0de50ca:	6341      	str	r1, [r0, #52]	@ 0x34
c0de50cc:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de50d0:	2806      	cmp	r0, #6
c0de50d2:	d015      	beq.n	c0de5100 <displayStreamingReviewPage+0x4c>
c0de50d4:	2805      	cmp	r0, #5
c0de50d6:	d13d      	bne.n	c0de5154 <displayStreamingReviewPage+0xa0>
c0de50d8:	eb09 0205 	add.w	r2, r9, r5
c0de50dc:	2101      	movs	r1, #1
c0de50de:	2302      	movs	r3, #2
c0de50e0:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de50e2:	2800      	cmp	r0, #0
c0de50e4:	bf08      	it	eq
c0de50e6:	21ff      	moveq	r1, #255	@ 0xff
c0de50e8:	bf08      	it	eq
c0de50ea:	2301      	moveq	r3, #1
c0de50ec:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de50f0:	4293      	cmp	r3, r2
c0de50f2:	dd3b      	ble.n	c0de516c <displayStreamingReviewPage+0xb8>
c0de50f4:	b2d3      	uxtb	r3, r2
c0de50f6:	2b00      	cmp	r3, #0
c0de50f8:	d063      	beq.n	c0de51c2 <displayStreamingReviewPage+0x10e>
c0de50fa:	4291      	cmp	r1, r2
c0de50fc:	d066      	beq.n	c0de51cc <displayStreamingReviewPage+0x118>
c0de50fe:	e066      	b.n	c0de51ce <displayStreamingReviewPage+0x11a>
c0de5100:	eb09 0005 	add.w	r0, r9, r5
c0de5104:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de5108:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de510a:	7a02      	ldrb	r2, [r0, #8]
c0de510c:	4291      	cmp	r1, r2
c0de510e:	da2d      	bge.n	c0de516c <displayStreamingReviewPage+0xb8>
c0de5110:	eb09 0205 	add.w	r2, r9, r5
c0de5114:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de5116:	b3cb      	cbz	r3, c0de518c <displayStreamingReviewPage+0xd8>
c0de5118:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de511c:	bbb2      	cbnz	r2, c0de518c <displayStreamingReviewPage+0xd8>
c0de511e:	eb09 0205 	add.w	r2, r9, r5
c0de5122:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de5126:	2a01      	cmp	r2, #1
c0de5128:	d807      	bhi.n	c0de513a <displayStreamingReviewPage+0x86>
c0de512a:	2900      	cmp	r1, #0
c0de512c:	dc05      	bgt.n	c0de513a <displayStreamingReviewPage+0x86>
c0de512e:	eb09 0305 	add.w	r3, r9, r5
c0de5132:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de5136:	2b08      	cmp	r3, #8
c0de5138:	d128      	bne.n	c0de518c <displayStreamingReviewPage+0xd8>
c0de513a:	2000      	movs	r0, #0
c0de513c:	9007      	str	r0, [sp, #28]
c0de513e:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de5142:	f004 0008 	and.w	r0, r4, #8
c0de5146:	2a01      	cmp	r2, #1
c0de5148:	d001      	beq.n	c0de514e <displayStreamingReviewPage+0x9a>
c0de514a:	2901      	cmp	r1, #1
c0de514c:	db50      	blt.n	c0de51f0 <displayStreamingReviewPage+0x13c>
c0de514e:	f040 0003 	orr.w	r0, r0, #3
c0de5152:	e04f      	b.n	c0de51f4 <displayStreamingReviewPage+0x140>
c0de5154:	eb09 0005 	add.w	r0, r9, r5
c0de5158:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de515c:	b180      	cbz	r0, c0de5180 <displayStreamingReviewPage+0xcc>
c0de515e:	a909      	add	r1, sp, #36	@ 0x24
c0de5160:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5162:	2000      	movs	r0, #0
c0de5164:	2500      	movs	r5, #0
c0de5166:	f000 fda7 	bl	c0de5cb8 <getLastPageInfo>
c0de516a:	e031      	b.n	c0de51d0 <displayStreamingReviewPage+0x11c>
c0de516c:	eb09 0005 	add.w	r0, r9, r5
c0de5170:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5172:	2900      	cmp	r1, #0
c0de5174:	d053      	beq.n	c0de521e <displayStreamingReviewPage+0x16a>
c0de5176:	2001      	movs	r0, #1
c0de5178:	b00c      	add	sp, #48	@ 0x30
c0de517a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de517e:	4708      	bx	r1
c0de5180:	a909      	add	r1, sp, #36	@ 0x24
c0de5182:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5184:	2001      	movs	r0, #1
c0de5186:	f000 fd97 	bl	c0de5cb8 <getLastPageInfo>
c0de518a:	e020      	b.n	c0de51ce <displayStreamingReviewPage+0x11a>
c0de518c:	2300      	movs	r3, #0
c0de518e:	eb09 0205 	add.w	r2, r9, r5
c0de5192:	b2c9      	uxtb	r1, r1
c0de5194:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de5198:	f88d 300f 	strb.w	r3, [sp, #15]
c0de519c:	ab09      	add	r3, sp, #36	@ 0x24
c0de519e:	ad08      	add	r5, sp, #32
c0de51a0:	f10d 020f 	add.w	r2, sp, #15
c0de51a4:	e9cd 5300 	strd	r5, r3, [sp]
c0de51a8:	9202      	str	r2, [sp, #8]
c0de51aa:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de51ac:	ab0a      	add	r3, sp, #40	@ 0x28
c0de51ae:	f000 fac3 	bl	c0de5738 <getPairData>
c0de51b2:	9808      	ldr	r0, [sp, #32]
c0de51b4:	2800      	cmp	r0, #0
c0de51b6:	bf12      	itee	ne
c0de51b8:	2501      	movne	r5, #1
c0de51ba:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de51be:	0045      	lsleq	r5, r0, #1
c0de51c0:	e006      	b.n	c0de51d0 <displayStreamingReviewPage+0x11c>
c0de51c2:	eb09 0005 	add.w	r0, r9, r5
c0de51c6:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de51ca:	9109      	str	r1, [sp, #36]	@ 0x24
c0de51cc:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de51ce:	2500      	movs	r5, #0
c0de51d0:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de51d2:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de51d6:	4e17      	ldr	r6, [pc, #92]	@ (c0de5234 <displayStreamingReviewPage+0x180>)
c0de51d8:	b2e8      	uxtb	r0, r5
c0de51da:	2500      	movs	r5, #0
c0de51dc:	9002      	str	r0, [sp, #8]
c0de51de:	4620      	mov	r0, r4
c0de51e0:	447e      	add	r6, pc
c0de51e2:	f001 f897 	bl	c0de6314 <OUTLINED_FUNCTION_6>
c0de51e6:	b00c      	add	sp, #48	@ 0x30
c0de51e8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de51ec:	f001 bdd5 	b.w	c0de6d9a <nbgl_refresh>
c0de51f0:	f040 0001 	orr.w	r0, r0, #1
c0de51f4:	490c      	ldr	r1, [pc, #48]	@ (c0de5228 <displayStreamingReviewPage+0x174>)
c0de51f6:	2200      	movs	r2, #0
c0de51f8:	4479      	add	r1, pc
c0de51fa:	9104      	str	r1, [sp, #16]
c0de51fc:	490b      	ldr	r1, [pc, #44]	@ (c0de522c <displayStreamingReviewPage+0x178>)
c0de51fe:	4479      	add	r1, pc
c0de5200:	9106      	str	r1, [sp, #24]
c0de5202:	2100      	movs	r1, #0
c0de5204:	9100      	str	r1, [sp, #0]
c0de5206:	490a      	ldr	r1, [pc, #40]	@ (c0de5230 <displayStreamingReviewPage+0x17c>)
c0de5208:	ab04      	add	r3, sp, #16
c0de520a:	4479      	add	r1, pc
c0de520c:	f7ff f9d2 	bl	c0de45b4 <nbgl_stepDrawCenteredInfo>
c0de5210:	eb09 0405 	add.w	r4, r9, r5
c0de5214:	f001 fdc1 	bl	c0de6d9a <nbgl_refresh>
c0de5218:	2001      	movs	r0, #1
c0de521a:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de521e:	b00c      	add	sp, #48	@ 0x30
c0de5220:	bd70      	pop	{r4, r5, r6, pc}
c0de5222:	bf00      	nop
c0de5224:	00000744 	.word	0x00000744
c0de5228:	00002905 	.word	0x00002905
c0de522c:	00002714 	.word	0x00002714
c0de5230:	00000cb7 	.word	0x00000cb7
c0de5234:	00001079 	.word	0x00001079

c0de5238 <nbgl_useCaseSpinner>:
c0de5238:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de523a:	4604      	mov	r4, r0
c0de523c:	480b      	ldr	r0, [pc, #44]	@ (c0de526c <nbgl_useCaseSpinner+0x34>)
c0de523e:	2140      	movs	r1, #64	@ 0x40
c0de5240:	f001 f85b 	bl	c0de62fa <OUTLINED_FUNCTION_3>
c0de5244:	2001      	movs	r0, #1
c0de5246:	4622      	mov	r2, r4
c0de5248:	2300      	movs	r3, #0
c0de524a:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de524e:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de5252:	2000      	movs	r0, #0
c0de5254:	e9cd 0000 	strd	r0, r0, [sp]
c0de5258:	9002      	str	r0, [sp, #8]
c0de525a:	2000      	movs	r0, #0
c0de525c:	4904      	ldr	r1, [pc, #16]	@ (c0de5270 <nbgl_useCaseSpinner+0x38>)
c0de525e:	4479      	add	r1, pc
c0de5260:	f7ff fe0c 	bl	c0de4e7c <drawStep>
c0de5264:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de5268:	f001 bd97 	b.w	c0de6d9a <nbgl_refresh>
c0de526c:	00000744 	.word	0x00000744
c0de5270:	000027ab 	.word	0x000027ab

c0de5274 <nbgl_useCaseChoice>:
c0de5274:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5278:	4607      	mov	r7, r0
c0de527a:	480b      	ldr	r0, [pc, #44]	@ (c0de52a8 <nbgl_useCaseChoice+0x34>)
c0de527c:	f001 f822 	bl	c0de62c4 <OUTLINED_FUNCTION_0>
c0de5280:	9807      	ldr	r0, [sp, #28]
c0de5282:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de5284:	9806      	ldr	r0, [sp, #24]
c0de5286:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de528a:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de528e:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de5290:	2008      	movs	r0, #8
c0de5292:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de5296:	2004      	movs	r0, #4
c0de5298:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de529c:	2000      	movs	r0, #0
c0de529e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de52a2:	f000 b803 	b.w	c0de52ac <displayChoicePage>
c0de52a6:	bf00      	nop
c0de52a8:	00000744 	.word	0x00000744

c0de52ac <displayChoicePage>:
c0de52ac:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de52ae:	4b28      	ldr	r3, [pc, #160]	@ (c0de5350 <displayChoicePage+0xa4>)
c0de52b0:	2200      	movs	r2, #0
c0de52b2:	eb09 0103 	add.w	r1, r9, r3
c0de52b6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52b8:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de52bc:	b179      	cbz	r1, c0de52de <displayChoicePage+0x32>
c0de52be:	2902      	cmp	r1, #2
c0de52c0:	d021      	beq.n	c0de5306 <displayChoicePage+0x5a>
c0de52c2:	2901      	cmp	r1, #1
c0de52c4:	d10f      	bne.n	c0de52e6 <displayChoicePage+0x3a>
c0de52c6:	eb09 0103 	add.w	r1, r9, r3
c0de52ca:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de52cc:	b1a1      	cbz	r1, c0de52f8 <displayChoicePage+0x4c>
c0de52ce:	eb09 0203 	add.w	r2, r9, r3
c0de52d2:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de52d4:	b182      	cbz	r2, c0de52f8 <displayChoicePage+0x4c>
c0de52d6:	eb09 0103 	add.w	r1, r9, r3
c0de52da:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de52dc:	e029      	b.n	c0de5332 <displayChoicePage+0x86>
c0de52de:	eb09 0103 	add.w	r1, r9, r3
c0de52e2:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de52e4:	e01d      	b.n	c0de5322 <displayChoicePage+0x76>
c0de52e6:	4a1d      	ldr	r2, [pc, #116]	@ (c0de535c <displayChoicePage+0xb0>)
c0de52e8:	eb09 0103 	add.w	r1, r9, r3
c0de52ec:	447a      	add	r2, pc
c0de52ee:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52f0:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de52f2:	491b      	ldr	r1, [pc, #108]	@ (c0de5360 <displayChoicePage+0xb4>)
c0de52f4:	4479      	add	r1, pc
c0de52f6:	e018      	b.n	c0de532a <displayChoicePage+0x7e>
c0de52f8:	0702      	lsls	r2, r0, #28
c0de52fa:	d40d      	bmi.n	c0de5318 <displayChoicePage+0x6c>
c0de52fc:	eb09 0103 	add.w	r1, r9, r3
c0de5300:	2202      	movs	r2, #2
c0de5302:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de5306:	4a13      	ldr	r2, [pc, #76]	@ (c0de5354 <displayChoicePage+0xa8>)
c0de5308:	eb09 0103 	add.w	r1, r9, r3
c0de530c:	447a      	add	r2, pc
c0de530e:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5310:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de5312:	4911      	ldr	r1, [pc, #68]	@ (c0de5358 <displayChoicePage+0xac>)
c0de5314:	4479      	add	r1, pc
c0de5316:	e008      	b.n	c0de532a <displayChoicePage+0x7e>
c0de5318:	eb09 0203 	add.w	r2, r9, r3
c0de531c:	2400      	movs	r4, #0
c0de531e:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de5322:	eb09 0203 	add.w	r2, r9, r3
c0de5326:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de5328:	b109      	cbz	r1, c0de532e <displayChoicePage+0x82>
c0de532a:	2300      	movs	r3, #0
c0de532c:	e003      	b.n	c0de5336 <displayChoicePage+0x8a>
c0de532e:	eb09 0103 	add.w	r1, r9, r3
c0de5332:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de5334:	2100      	movs	r1, #0
c0de5336:	4d0b      	ldr	r5, [pc, #44]	@ (c0de5364 <displayChoicePage+0xb8>)
c0de5338:	2400      	movs	r4, #0
c0de533a:	9402      	str	r4, [sp, #8]
c0de533c:	447d      	add	r5, pc
c0de533e:	e9cd 5400 	strd	r5, r4, [sp]
c0de5342:	f7ff fd9b 	bl	c0de4e7c <drawStep>
c0de5346:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de534a:	f001 bd26 	b.w	c0de6d9a <nbgl_refresh>
c0de534e:	bf00      	nop
c0de5350:	00000744 	.word	0x00000744
c0de5354:	00000f71 	.word	0x00000f71
c0de5358:	00002732 	.word	0x00002732
c0de535c:	00000fa5 	.word	0x00000fa5
c0de5360:	000026d6 	.word	0x000026d6
c0de5364:	00000f69 	.word	0x00000f69

c0de5368 <getContentAtIdx>:
c0de5368:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de536a:	b087      	sub	sp, #28
c0de536c:	460d      	mov	r5, r1
c0de536e:	4606      	mov	r6, r0
c0de5370:	a801      	add	r0, sp, #4
c0de5372:	2118      	movs	r1, #24
c0de5374:	4614      	mov	r4, r2
c0de5376:	f002 fa27 	bl	c0de77c8 <__aeabi_memclr>
c0de537a:	2d00      	cmp	r5, #0
c0de537c:	d428      	bmi.n	c0de53d0 <getContentAtIdx+0x68>
c0de537e:	7a30      	ldrb	r0, [r6, #8]
c0de5380:	4285      	cmp	r5, r0
c0de5382:	da25      	bge.n	c0de53d0 <getContentAtIdx+0x68>
c0de5384:	7830      	ldrb	r0, [r6, #0]
c0de5386:	b338      	cbz	r0, c0de53d8 <getContentAtIdx+0x70>
c0de5388:	b314      	cbz	r4, c0de53d0 <getContentAtIdx+0x68>
c0de538a:	4620      	mov	r0, r4
c0de538c:	2138      	movs	r1, #56	@ 0x38
c0de538e:	f002 fa1b 	bl	c0de77c8 <__aeabi_memclr>
c0de5392:	4821      	ldr	r0, [pc, #132]	@ (c0de5418 <getContentAtIdx+0xb0>)
c0de5394:	4448      	add	r0, r9
c0de5396:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5398:	b342      	cbz	r2, c0de53ec <getContentAtIdx+0x84>
c0de539a:	b2e8      	uxtb	r0, r5
c0de539c:	ad01      	add	r5, sp, #4
c0de539e:	4629      	mov	r1, r5
c0de53a0:	4790      	blx	r2
c0de53a2:	b1a8      	cbz	r0, c0de53d0 <getContentAtIdx+0x68>
c0de53a4:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de53a8:	280a      	cmp	r0, #10
c0de53aa:	7020      	strb	r0, [r4, #0]
c0de53ac:	d028      	beq.n	c0de5400 <getContentAtIdx+0x98>
c0de53ae:	2803      	cmp	r0, #3
c0de53b0:	d008      	beq.n	c0de53c4 <getContentAtIdx+0x5c>
c0de53b2:	2804      	cmp	r0, #4
c0de53b4:	d02a      	beq.n	c0de540c <getContentAtIdx+0xa4>
c0de53b6:	2807      	cmp	r0, #7
c0de53b8:	d01d      	beq.n	c0de53f6 <getContentAtIdx+0x8e>
c0de53ba:	2808      	cmp	r0, #8
c0de53bc:	d002      	beq.n	c0de53c4 <getContentAtIdx+0x5c>
c0de53be:	2809      	cmp	r0, #9
c0de53c0:	d019      	beq.n	c0de53f6 <getContentAtIdx+0x8e>
c0de53c2:	b928      	cbnz	r0, c0de53d0 <getContentAtIdx+0x68>
c0de53c4:	1d28      	adds	r0, r5, #4
c0de53c6:	1d21      	adds	r1, r4, #4
c0de53c8:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de53cc:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de53ce:	e000      	b.n	c0de53d2 <getContentAtIdx+0x6a>
c0de53d0:	2400      	movs	r4, #0
c0de53d2:	4620      	mov	r0, r4
c0de53d4:	b007      	add	sp, #28
c0de53d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de53d8:	6871      	ldr	r1, [r6, #4]
c0de53da:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de53de:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de53e2:	b007      	add	sp, #28
c0de53e4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de53e8:	f001 bee2 	b.w	c0de71b0 <pic>
c0de53ec:	6872      	ldr	r2, [r6, #4]
c0de53ee:	b2e8      	uxtb	r0, r5
c0de53f0:	4621      	mov	r1, r4
c0de53f2:	4790      	blx	r2
c0de53f4:	e7ed      	b.n	c0de53d2 <getContentAtIdx+0x6a>
c0de53f6:	9802      	ldr	r0, [sp, #8]
c0de53f8:	9903      	ldr	r1, [sp, #12]
c0de53fa:	6060      	str	r0, [r4, #4]
c0de53fc:	60a1      	str	r1, [r4, #8]
c0de53fe:	e7e8      	b.n	c0de53d2 <getContentAtIdx+0x6a>
c0de5400:	1d28      	adds	r0, r5, #4
c0de5402:	1d21      	adds	r1, r4, #4
c0de5404:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5408:	c12c      	stmia	r1!, {r2, r3, r5}
c0de540a:	e7e2      	b.n	c0de53d2 <getContentAtIdx+0x6a>
c0de540c:	1d28      	adds	r0, r5, #4
c0de540e:	1d21      	adds	r1, r4, #4
c0de5410:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de5414:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5416:	e7dc      	b.n	c0de53d2 <getContentAtIdx+0x6a>
c0de5418:	00000744 	.word	0x00000744

c0de541c <getContentNbElement>:
c0de541c:	7802      	ldrb	r2, [r0, #0]
c0de541e:	2101      	movs	r1, #1
c0de5420:	b1a2      	cbz	r2, c0de544c <getContentNbElement+0x30>
c0de5422:	2a03      	cmp	r2, #3
c0de5424:	d012      	beq.n	c0de544c <getContentNbElement+0x30>
c0de5426:	2a0a      	cmp	r2, #10
c0de5428:	d007      	beq.n	c0de543a <getContentNbElement+0x1e>
c0de542a:	2a07      	cmp	r2, #7
c0de542c:	d007      	beq.n	c0de543e <getContentNbElement+0x22>
c0de542e:	2a08      	cmp	r2, #8
c0de5430:	d007      	beq.n	c0de5442 <getContentNbElement+0x26>
c0de5432:	2a09      	cmp	r2, #9
c0de5434:	d007      	beq.n	c0de5446 <getContentNbElement+0x2a>
c0de5436:	2a04      	cmp	r2, #4
c0de5438:	d107      	bne.n	c0de544a <getContentNbElement+0x2e>
c0de543a:	7b01      	ldrb	r1, [r0, #12]
c0de543c:	e006      	b.n	c0de544c <getContentNbElement+0x30>
c0de543e:	7a01      	ldrb	r1, [r0, #8]
c0de5440:	e004      	b.n	c0de544c <getContentNbElement+0x30>
c0de5442:	7c01      	ldrb	r1, [r0, #16]
c0de5444:	e002      	b.n	c0de544c <getContentNbElement+0x30>
c0de5446:	7a41      	ldrb	r1, [r0, #9]
c0de5448:	e000      	b.n	c0de544c <getContentNbElement+0x30>
c0de544a:	2100      	movs	r1, #0
c0de544c:	4608      	mov	r0, r1
c0de544e:	4770      	bx	lr

c0de5450 <displayContent>:
c0de5450:	b570      	push	{r4, r5, r6, lr}
c0de5452:	b08a      	sub	sp, #40	@ 0x28
c0de5454:	460d      	mov	r5, r1
c0de5456:	4604      	mov	r4, r0
c0de5458:	a804      	add	r0, sp, #16
c0de545a:	2118      	movs	r1, #24
c0de545c:	f002 f9b4 	bl	c0de77c8 <__aeabi_memclr>
c0de5460:	4820      	ldr	r0, [pc, #128]	@ (c0de54e4 <displayContent+0x94>)
c0de5462:	f000 ff39 	bl	c0de62d8 <OUTLINED_FUNCTION_1>
c0de5466:	dd14      	ble.n	c0de5492 <displayContent+0x42>
c0de5468:	a904      	add	r1, sp, #16
c0de546a:	4628      	mov	r0, r5
c0de546c:	f000 f846 	bl	c0de54fc <getContentPage>
c0de5470:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5474:	b318      	cbz	r0, c0de54be <displayContent+0x6e>
c0de5476:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de547a:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de547e:	481e      	ldr	r0, [pc, #120]	@ (c0de54f8 <displayContent+0xa8>)
c0de5480:	4478      	add	r0, pc
c0de5482:	2b00      	cmp	r3, #0
c0de5484:	9000      	str	r0, [sp, #0]
c0de5486:	4620      	mov	r0, r4
c0de5488:	bf18      	it	ne
c0de548a:	2301      	movne	r3, #1
c0de548c:	f000 f8d8 	bl	c0de5640 <drawSwitchStep>
c0de5490:	e023      	b.n	c0de54da <displayContent+0x8a>
c0de5492:	4448      	add	r0, r9
c0de5494:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de5496:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5498:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de549a:	4a13      	ldr	r2, [pc, #76]	@ (c0de54e8 <displayContent+0x98>)
c0de549c:	2900      	cmp	r1, #0
c0de549e:	447a      	add	r2, pc
c0de54a0:	bf18      	it	ne
c0de54a2:	460a      	movne	r2, r1
c0de54a4:	9205      	str	r2, [sp, #20]
c0de54a6:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de54aa:	4910      	ldr	r1, [pc, #64]	@ (c0de54ec <displayContent+0x9c>)
c0de54ac:	4a10      	ldr	r2, [pc, #64]	@ (c0de54f0 <displayContent+0xa0>)
c0de54ae:	2803      	cmp	r0, #3
c0de54b0:	447a      	add	r2, pc
c0de54b2:	4479      	add	r1, pc
c0de54b4:	bf08      	it	eq
c0de54b6:	460a      	moveq	r2, r1
c0de54b8:	9207      	str	r2, [sp, #28]
c0de54ba:	2000      	movs	r0, #0
c0de54bc:	e002      	b.n	c0de54c4 <displayContent+0x74>
c0de54be:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de54c2:	0040      	lsls	r0, r0, #1
c0de54c4:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de54c8:	9907      	ldr	r1, [sp, #28]
c0de54ca:	4e0a      	ldr	r6, [pc, #40]	@ (c0de54f4 <displayContent+0xa4>)
c0de54cc:	b2c0      	uxtb	r0, r0
c0de54ce:	2500      	movs	r5, #0
c0de54d0:	9002      	str	r0, [sp, #8]
c0de54d2:	4620      	mov	r0, r4
c0de54d4:	447e      	add	r6, pc
c0de54d6:	f000 ff1d 	bl	c0de6314 <OUTLINED_FUNCTION_6>
c0de54da:	f001 fc5e 	bl	c0de6d9a <nbgl_refresh>
c0de54de:	b00a      	add	sp, #40	@ 0x28
c0de54e0:	bd70      	pop	{r4, r5, r6, pc}
c0de54e2:	bf00      	nop
c0de54e4:	00000744 	.word	0x00000744
c0de54e8:	00002899 	.word	0x00002899
c0de54ec:	00002518 	.word	0x00002518
c0de54f0:	000024d4 	.word	0x000024d4
c0de54f4:	000001b9 	.word	0x000001b9
c0de54f8:	0000020d 	.word	0x0000020d

c0de54fc <getContentPage>:
c0de54fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de54fe:	b093      	sub	sp, #76	@ 0x4c
c0de5500:	4606      	mov	r6, r0
c0de5502:	2000      	movs	r0, #0
c0de5504:	460c      	mov	r4, r1
c0de5506:	2138      	movs	r1, #56	@ 0x38
c0de5508:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de550c:	ad04      	add	r5, sp, #16
c0de550e:	4628      	mov	r0, r5
c0de5510:	f002 f95a 	bl	c0de77c8 <__aeabi_memclr>
c0de5514:	4f47      	ldr	r7, [pc, #284]	@ (c0de5634 <getContentPage+0x138>)
c0de5516:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de551a:	462a      	mov	r2, r5
c0de551c:	eb09 0007 	add.w	r0, r9, r7
c0de5520:	f000 fef1 	bl	c0de6306 <OUTLINED_FUNCTION_4>
c0de5524:	2800      	cmp	r0, #0
c0de5526:	d07a      	beq.n	c0de561e <getContentPage+0x122>
c0de5528:	4605      	mov	r5, r0
c0de552a:	7800      	ldrb	r0, [r0, #0]
c0de552c:	280a      	cmp	r0, #10
c0de552e:	d011      	beq.n	c0de5554 <getContentPage+0x58>
c0de5530:	2803      	cmp	r0, #3
c0de5532:	d02c      	beq.n	c0de558e <getContentPage+0x92>
c0de5534:	2804      	cmp	r0, #4
c0de5536:	d035      	beq.n	c0de55a4 <getContentPage+0xa8>
c0de5538:	2807      	cmp	r0, #7
c0de553a:	d045      	beq.n	c0de55c8 <getContentPage+0xcc>
c0de553c:	2808      	cmp	r0, #8
c0de553e:	d060      	beq.n	c0de5602 <getContentPage+0x106>
c0de5540:	2809      	cmp	r0, #9
c0de5542:	d007      	beq.n	c0de5554 <getContentPage+0x58>
c0de5544:	2800      	cmp	r0, #0
c0de5546:	d16a      	bne.n	c0de561e <getContentPage+0x122>
c0de5548:	6868      	ldr	r0, [r5, #4]
c0de554a:	f001 fe31 	bl	c0de71b0 <pic>
c0de554e:	6060      	str	r0, [r4, #4]
c0de5550:	68a8      	ldr	r0, [r5, #8]
c0de5552:	e019      	b.n	c0de5588 <getContentPage+0x8c>
c0de5554:	1d28      	adds	r0, r5, #4
c0de5556:	eb09 0607 	add.w	r6, r9, r7
c0de555a:	f001 fe29 	bl	c0de71b0 <pic>
c0de555e:	6800      	ldr	r0, [r0, #0]
c0de5560:	f001 fe26 	bl	c0de71b0 <pic>
c0de5564:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de5568:	4605      	mov	r5, r0
c0de556a:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de556c:	2910      	cmp	r1, #16
c0de556e:	d100      	bne.n	c0de5572 <getContentPage+0x76>
c0de5570:	b918      	cbnz	r0, c0de557a <getContentPage+0x7e>
c0de5572:	290f      	cmp	r1, #15
c0de5574:	d155      	bne.n	c0de5622 <getContentPage+0x126>
c0de5576:	2800      	cmp	r0, #0
c0de5578:	d053      	beq.n	c0de5622 <getContentPage+0x126>
c0de557a:	f001 fe19 	bl	c0de71b0 <pic>
c0de557e:	6060      	str	r0, [r4, #4]
c0de5580:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5584:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5588:	f001 fe12 	bl	c0de71b0 <pic>
c0de558c:	e046      	b.n	c0de561c <getContentPage+0x120>
c0de558e:	68a8      	ldr	r0, [r5, #8]
c0de5590:	4e29      	ldr	r6, [pc, #164]	@ (c0de5638 <getContentPage+0x13c>)
c0de5592:	447e      	add	r6, pc
c0de5594:	47b0      	blx	r6
c0de5596:	60e0      	str	r0, [r4, #12]
c0de5598:	6868      	ldr	r0, [r5, #4]
c0de559a:	47b0      	blx	r6
c0de559c:	6060      	str	r0, [r4, #4]
c0de559e:	68e8      	ldr	r0, [r5, #12]
c0de55a0:	47b0      	blx	r6
c0de55a2:	e03b      	b.n	c0de561c <getContentPage+0x120>
c0de55a4:	f104 0015 	add.w	r0, r4, #21
c0de55a8:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de55ac:	f104 020c 	add.w	r2, r4, #12
c0de55b0:	f104 0310 	add.w	r3, r4, #16
c0de55b4:	e9cd 3200 	strd	r3, r2, [sp]
c0de55b8:	9002      	str	r0, [sp, #8]
c0de55ba:	1d28      	adds	r0, r5, #4
c0de55bc:	1d22      	adds	r2, r4, #4
c0de55be:	f104 0308 	add.w	r3, r4, #8
c0de55c2:	f000 f8b9 	bl	c0de5738 <getPairData>
c0de55c6:	e02a      	b.n	c0de561e <getContentPage+0x122>
c0de55c8:	2001      	movs	r0, #1
c0de55ca:	444f      	add	r7, r9
c0de55cc:	7020      	strb	r0, [r4, #0]
c0de55ce:	6868      	ldr	r0, [r5, #4]
c0de55d0:	f001 fdee 	bl	c0de71b0 <pic>
c0de55d4:	4919      	ldr	r1, [pc, #100]	@ (c0de563c <getContentPage+0x140>)
c0de55d6:	4479      	add	r1, pc
c0de55d8:	6379      	str	r1, [r7, #52]	@ 0x34
c0de55da:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de55de:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de55e2:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de55e6:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de55ea:	6062      	str	r2, [r4, #4]
c0de55ec:	6841      	ldr	r1, [r0, #4]
c0de55ee:	60a1      	str	r1, [r4, #8]
c0de55f0:	7a00      	ldrb	r0, [r0, #8]
c0de55f2:	1e41      	subs	r1, r0, #1
c0de55f4:	bf18      	it	ne
c0de55f6:	2101      	movne	r1, #1
c0de55f8:	2e00      	cmp	r6, #0
c0de55fa:	bf08      	it	eq
c0de55fc:	4601      	moveq	r1, r0
c0de55fe:	7521      	strb	r1, [r4, #20]
c0de5600:	e00d      	b.n	c0de561e <getContentPage+0x122>
c0de5602:	6868      	ldr	r0, [r5, #4]
c0de5604:	f001 fdd4 	bl	c0de71b0 <pic>
c0de5608:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de560c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5610:	6060      	str	r0, [r4, #4]
c0de5612:	68a8      	ldr	r0, [r5, #8]
c0de5614:	f001 fdcc 	bl	c0de71b0 <pic>
c0de5618:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de561c:	60a0      	str	r0, [r4, #8]
c0de561e:	b013      	add	sp, #76	@ 0x4c
c0de5620:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5622:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5626:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de562a:	f001 fdc1 	bl	c0de71b0 <pic>
c0de562e:	6060      	str	r0, [r4, #4]
c0de5630:	e7f5      	b.n	c0de561e <getContentPage+0x122>
c0de5632:	bf00      	nop
c0de5634:	00000744 	.word	0x00000744
c0de5638:	00001c1b 	.word	0x00001c1b
c0de563c:	000001a7 	.word	0x000001a7

c0de5640 <drawSwitchStep>:
c0de5640:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5642:	b085      	sub	sp, #20
c0de5644:	4c11      	ldr	r4, [pc, #68]	@ (c0de568c <drawSwitchStep+0x4c>)
c0de5646:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de564a:	2600      	movs	r6, #0
c0de564c:	eb09 0504 	add.w	r5, r9, r4
c0de5650:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de5654:	2500      	movs	r5, #0
c0de5656:	2f02      	cmp	r7, #2
c0de5658:	d30a      	bcc.n	c0de5670 <drawSwitchStep+0x30>
c0de565a:	444c      	add	r4, r9
c0de565c:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de5660:	b12c      	cbz	r4, c0de566e <drawSwitchStep+0x2e>
c0de5662:	3f01      	subs	r7, #1
c0de5664:	2603      	movs	r6, #3
c0de5666:	42a7      	cmp	r7, r4
c0de5668:	bf08      	it	eq
c0de566a:	2602      	moveq	r6, #2
c0de566c:	e000      	b.n	c0de5670 <drawSwitchStep+0x30>
c0de566e:	2601      	movs	r6, #1
c0de5670:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5674:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5678:	9500      	str	r5, [sp, #0]
c0de567a:	4330      	orrs	r0, r6
c0de567c:	ab02      	add	r3, sp, #8
c0de567e:	4661      	mov	r1, ip
c0de5680:	2200      	movs	r2, #0
c0de5682:	f7ff f87f 	bl	c0de4784 <nbgl_stepDrawSwitch>
c0de5686:	b005      	add	sp, #20
c0de5688:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de568a:	bf00      	nop
c0de568c:	00000744 	.word	0x00000744

c0de5690 <contentCallback>:
c0de5690:	b5e0      	push	{r5, r6, r7, lr}
c0de5692:	4608      	mov	r0, r1
c0de5694:	f10d 0107 	add.w	r1, sp, #7
c0de5698:	f000 f928 	bl	c0de58ec <buttonGenericCallback>
c0de569c:	b130      	cbz	r0, c0de56ac <contentCallback+0x1c>
c0de569e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de56a2:	2100      	movs	r1, #0
c0de56a4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de56a8:	f7ff bed2 	b.w	c0de5450 <displayContent>
c0de56ac:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de56b0 <getContentElemAtIdx>:
c0de56b0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de56b4:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5730 <getContentElemAtIdx+0x80>)
c0de56b6:	4606      	mov	r6, r0
c0de56b8:	2700      	movs	r7, #0
c0de56ba:	eb09 0004 	add.w	r0, r9, r4
c0de56be:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de56c2:	2b10      	cmp	r3, #16
c0de56c4:	d830      	bhi.n	c0de5728 <getContentElemAtIdx+0x78>
c0de56c6:	4693      	mov	fp, r2
c0de56c8:	2201      	movs	r2, #1
c0de56ca:	9101      	str	r1, [sp, #4]
c0de56cc:	fa02 f303 	lsl.w	r3, r2, r3
c0de56d0:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de56d4:	d004      	beq.n	c0de56e0 <getContentElemAtIdx+0x30>
c0de56d6:	eb09 0004 	add.w	r0, r9, r4
c0de56da:	46a2      	mov	sl, r4
c0de56dc:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de56de:	e005      	b.n	c0de56ec <getContentElemAtIdx+0x3c>
c0de56e0:	4a14      	ldr	r2, [pc, #80]	@ (c0de5734 <getContentElemAtIdx+0x84>)
c0de56e2:	4213      	tst	r3, r2
c0de56e4:	d020      	beq.n	c0de5728 <getContentElemAtIdx+0x78>
c0de56e6:	46a2      	mov	sl, r4
c0de56e8:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de56ec:	2700      	movs	r7, #0
c0de56ee:	2000      	movs	r0, #0
c0de56f0:	f04f 0800 	mov.w	r8, #0
c0de56f4:	4605      	mov	r5, r0
c0de56f6:	7a20      	ldrb	r0, [r4, #8]
c0de56f8:	4580      	cmp	r8, r0
c0de56fa:	d215      	bcs.n	c0de5728 <getContentElemAtIdx+0x78>
c0de56fc:	fa4f f188 	sxtb.w	r1, r8
c0de5700:	4620      	mov	r0, r4
c0de5702:	465a      	mov	r2, fp
c0de5704:	f7ff fe30 	bl	c0de5368 <getContentAtIdx>
c0de5708:	4607      	mov	r7, r0
c0de570a:	f7ff fe87 	bl	c0de541c <getContentNbElement>
c0de570e:	b2e9      	uxtb	r1, r5
c0de5710:	f108 0801 	add.w	r8, r8, #1
c0de5714:	4408      	add	r0, r1
c0de5716:	42b0      	cmp	r0, r6
c0de5718:	d9ec      	bls.n	c0de56f4 <getContentElemAtIdx+0x44>
c0de571a:	eb09 000a 	add.w	r0, r9, sl
c0de571e:	9901      	ldr	r1, [sp, #4]
c0de5720:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5724:	1b40      	subs	r0, r0, r5
c0de5726:	7008      	strb	r0, [r1, #0]
c0de5728:	4638      	mov	r0, r7
c0de572a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de572e:	bf00      	nop
c0de5730:	00000744 	.word	0x00000744
c0de5734:	00010008 	.word	0x00010008

c0de5738 <getPairData>:
c0de5738:	b5b0      	push	{r4, r5, r7, lr}
c0de573a:	4615      	mov	r5, r2
c0de573c:	6802      	ldr	r2, [r0, #0]
c0de573e:	461c      	mov	r4, r3
c0de5740:	b112      	cbz	r2, c0de5748 <getPairData+0x10>
c0de5742:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5746:	e002      	b.n	c0de574e <getPairData+0x16>
c0de5748:	6842      	ldr	r2, [r0, #4]
c0de574a:	4608      	mov	r0, r1
c0de574c:	4790      	blx	r2
c0de574e:	f001 fd2f 	bl	c0de71b0 <pic>
c0de5752:	6802      	ldr	r2, [r0, #0]
c0de5754:	9904      	ldr	r1, [sp, #16]
c0de5756:	602a      	str	r2, [r5, #0]
c0de5758:	6842      	ldr	r2, [r0, #4]
c0de575a:	6022      	str	r2, [r4, #0]
c0de575c:	7b02      	ldrb	r2, [r0, #12]
c0de575e:	0753      	lsls	r3, r2, #29
c0de5760:	d403      	bmi.n	c0de576a <getPairData+0x32>
c0de5762:	0792      	lsls	r2, r2, #30
c0de5764:	d404      	bmi.n	c0de5770 <getPairData+0x38>
c0de5766:	2000      	movs	r0, #0
c0de5768:	e000      	b.n	c0de576c <getPairData+0x34>
c0de576a:	6880      	ldr	r0, [r0, #8]
c0de576c:	6008      	str	r0, [r1, #0]
c0de576e:	bdb0      	pop	{r4, r5, r7, pc}
c0de5770:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5774:	2301      	movs	r3, #1
c0de5776:	700b      	strb	r3, [r1, #0]
c0de5778:	6880      	ldr	r0, [r0, #8]
c0de577a:	6010      	str	r0, [r2, #0]
c0de577c:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5780 <onSwitchAction>:
c0de5780:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5782:	b08f      	sub	sp, #60	@ 0x3c
c0de5784:	ac01      	add	r4, sp, #4
c0de5786:	2138      	movs	r1, #56	@ 0x38
c0de5788:	4620      	mov	r0, r4
c0de578a:	f002 f81d 	bl	c0de77c8 <__aeabi_memclr>
c0de578e:	4e26      	ldr	r6, [pc, #152]	@ (c0de5828 <onSwitchAction+0xa8>)
c0de5790:	f10d 0103 	add.w	r1, sp, #3
c0de5794:	4622      	mov	r2, r4
c0de5796:	eb09 0006 	add.w	r0, r9, r6
c0de579a:	f000 fdb4 	bl	c0de6306 <OUTLINED_FUNCTION_4>
c0de579e:	2800      	cmp	r0, #0
c0de57a0:	d040      	beq.n	c0de5824 <onSwitchAction+0xa4>
c0de57a2:	4604      	mov	r4, r0
c0de57a4:	7800      	ldrb	r0, [r0, #0]
c0de57a6:	2807      	cmp	r0, #7
c0de57a8:	d13c      	bne.n	c0de5824 <onSwitchAction+0xa4>
c0de57aa:	6860      	ldr	r0, [r4, #4]
c0de57ac:	eb09 0706 	add.w	r7, r9, r6
c0de57b0:	f001 fcfe 	bl	c0de71b0 <pic>
c0de57b4:	4605      	mov	r5, r0
c0de57b6:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de57ba:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de57be:	2810      	cmp	r0, #16
c0de57c0:	d811      	bhi.n	c0de57e6 <onSwitchAction+0x66>
c0de57c2:	2101      	movs	r1, #1
c0de57c4:	fa01 f000 	lsl.w	r0, r1, r0
c0de57c8:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de57cc:	d004      	beq.n	c0de57d8 <onSwitchAction+0x58>
c0de57ce:	2000      	movs	r0, #0
c0de57d0:	2101      	movs	r1, #1
c0de57d2:	f000 f82d 	bl	c0de5830 <displaySettingsPage>
c0de57d6:	e006      	b.n	c0de57e6 <onSwitchAction+0x66>
c0de57d8:	4914      	ldr	r1, [pc, #80]	@ (c0de582c <onSwitchAction+0xac>)
c0de57da:	4208      	tst	r0, r1
c0de57dc:	d003      	beq.n	c0de57e6 <onSwitchAction+0x66>
c0de57de:	2000      	movs	r0, #0
c0de57e0:	2101      	movs	r1, #1
c0de57e2:	f7ff fe35 	bl	c0de5450 <displayContent>
c0de57e6:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de57e8:	b188      	cbz	r0, c0de580e <onSwitchAction+0x8e>
c0de57ea:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de57ee:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de57f2:	f001 fcdd 	bl	c0de71b0 <pic>
c0de57f6:	7a21      	ldrb	r1, [r4, #8]
c0de57f8:	eb09 0206 	add.w	r2, r9, r6
c0de57fc:	4603      	mov	r3, r0
c0de57fe:	7a60      	ldrb	r0, [r4, #9]
c0de5800:	3901      	subs	r1, #1
c0de5802:	bf18      	it	ne
c0de5804:	2101      	movne	r1, #1
c0de5806:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de580a:	4798      	blx	r3
c0de580c:	e00a      	b.n	c0de5824 <onSwitchAction+0xa4>
c0de580e:	eb09 0006 	add.w	r0, r9, r6
c0de5812:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de5814:	b132      	cbz	r2, c0de5824 <onSwitchAction+0xa4>
c0de5816:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de581a:	2100      	movs	r1, #0
c0de581c:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5820:	7a40      	ldrb	r0, [r0, #9]
c0de5822:	4790      	blx	r2
c0de5824:	b00f      	add	sp, #60	@ 0x3c
c0de5826:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5828:	00000744 	.word	0x00000744
c0de582c:	00010008 	.word	0x00010008

c0de5830 <displaySettingsPage>:
c0de5830:	b5b0      	push	{r4, r5, r7, lr}
c0de5832:	b08a      	sub	sp, #40	@ 0x28
c0de5834:	460d      	mov	r5, r1
c0de5836:	4604      	mov	r4, r0
c0de5838:	a804      	add	r0, sp, #16
c0de583a:	2118      	movs	r1, #24
c0de583c:	f001 ffc4 	bl	c0de77c8 <__aeabi_memclr>
c0de5840:	481c      	ldr	r0, [pc, #112]	@ (c0de58b4 <displaySettingsPage+0x84>)
c0de5842:	f000 fd49 	bl	c0de62d8 <OUTLINED_FUNCTION_1>
c0de5846:	dd14      	ble.n	c0de5872 <displaySettingsPage+0x42>
c0de5848:	a904      	add	r1, sp, #16
c0de584a:	4628      	mov	r0, r5
c0de584c:	f7ff fe56 	bl	c0de54fc <getContentPage>
c0de5850:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5854:	b1e8      	cbz	r0, c0de5892 <displaySettingsPage+0x62>
c0de5856:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de585a:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de585e:	481a      	ldr	r0, [pc, #104]	@ (c0de58c8 <displaySettingsPage+0x98>)
c0de5860:	4478      	add	r0, pc
c0de5862:	2b00      	cmp	r3, #0
c0de5864:	9000      	str	r0, [sp, #0]
c0de5866:	4620      	mov	r0, r4
c0de5868:	bf18      	it	ne
c0de586a:	2301      	movne	r3, #1
c0de586c:	f7ff fee8 	bl	c0de5640 <drawSwitchStep>
c0de5870:	e01b      	b.n	c0de58aa <displaySettingsPage+0x7a>
c0de5872:	4448      	add	r0, r9
c0de5874:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5878:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de587a:	4b0f      	ldr	r3, [pc, #60]	@ (c0de58b8 <displaySettingsPage+0x88>)
c0de587c:	447b      	add	r3, pc
c0de587e:	290f      	cmp	r1, #15
c0de5880:	bf08      	it	eq
c0de5882:	4613      	moveq	r3, r2
c0de5884:	6343      	str	r3, [r0, #52]	@ 0x34
c0de5886:	480d      	ldr	r0, [pc, #52]	@ (c0de58bc <displaySettingsPage+0x8c>)
c0de5888:	4478      	add	r0, pc
c0de588a:	9005      	str	r0, [sp, #20]
c0de588c:	480c      	ldr	r0, [pc, #48]	@ (c0de58c0 <displaySettingsPage+0x90>)
c0de588e:	4478      	add	r0, pc
c0de5890:	9007      	str	r0, [sp, #28]
c0de5892:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5896:	9907      	ldr	r1, [sp, #28]
c0de5898:	4d0a      	ldr	r5, [pc, #40]	@ (c0de58c4 <displaySettingsPage+0x94>)
c0de589a:	2000      	movs	r0, #0
c0de589c:	9002      	str	r0, [sp, #8]
c0de589e:	447d      	add	r5, pc
c0de58a0:	e9cd 5000 	strd	r5, r0, [sp]
c0de58a4:	4620      	mov	r0, r4
c0de58a6:	f7ff fae9 	bl	c0de4e7c <drawStep>
c0de58aa:	f001 fa76 	bl	c0de6d9a <nbgl_refresh>
c0de58ae:	b00a      	add	sp, #40	@ 0x28
c0de58b0:	bdb0      	pop	{r4, r5, r7, pc}
c0de58b2:	bf00      	nop
c0de58b4:	00000744 	.word	0x00000744
c0de58b8:	fffff1cd 	.word	0xfffff1cd
c0de58bc:	000024af 	.word	0x000024af
c0de58c0:	000020f6 	.word	0x000020f6
c0de58c4:	0000002b 	.word	0x0000002b
c0de58c8:	00000069 	.word	0x00000069

c0de58cc <settingsCallback>:
c0de58cc:	b5e0      	push	{r5, r6, r7, lr}
c0de58ce:	4608      	mov	r0, r1
c0de58d0:	f10d 0107 	add.w	r1, sp, #7
c0de58d4:	f000 f80a 	bl	c0de58ec <buttonGenericCallback>
c0de58d8:	b130      	cbz	r0, c0de58e8 <settingsCallback+0x1c>
c0de58da:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de58de:	2100      	movs	r1, #0
c0de58e0:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de58e4:	f7ff bfa4 	b.w	c0de5830 <displaySettingsPage>
c0de58e8:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de58ec <buttonGenericCallback>:
c0de58ec:	b5b0      	push	{r4, r5, r7, lr}
c0de58ee:	b090      	sub	sp, #64	@ 0x40
c0de58f0:	460c      	mov	r4, r1
c0de58f2:	4605      	mov	r5, r0
c0de58f4:	a801      	add	r0, sp, #4
c0de58f6:	2138      	movs	r1, #56	@ 0x38
c0de58f8:	f001 ff66 	bl	c0de77c8 <__aeabi_memclr>
c0de58fc:	2d04      	cmp	r5, #4
c0de58fe:	d00d      	beq.n	c0de591c <buttonGenericCallback+0x30>
c0de5900:	2d01      	cmp	r5, #1
c0de5902:	d012      	beq.n	c0de592a <buttonGenericCallback+0x3e>
c0de5904:	2d00      	cmp	r5, #0
c0de5906:	d17c      	bne.n	c0de5a02 <buttonGenericCallback+0x116>
c0de5908:	483f      	ldr	r0, [pc, #252]	@ (c0de5a08 <buttonGenericCallback+0x11c>)
c0de590a:	eb09 0100 	add.w	r1, r9, r0
c0de590e:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de5912:	2901      	cmp	r1, #1
c0de5914:	db1d      	blt.n	c0de5952 <buttonGenericCallback+0x66>
c0de5916:	3901      	subs	r1, #1
c0de5918:	2008      	movs	r0, #8
c0de591a:	e013      	b.n	c0de5944 <buttonGenericCallback+0x58>
c0de591c:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5a08 <buttonGenericCallback+0x11c>)
c0de591e:	eb09 0004 	add.w	r0, r9, r4
c0de5922:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de5924:	b338      	cbz	r0, c0de5976 <buttonGenericCallback+0x8a>
c0de5926:	4780      	blx	r0
c0de5928:	e06b      	b.n	c0de5a02 <buttonGenericCallback+0x116>
c0de592a:	4837      	ldr	r0, [pc, #220]	@ (c0de5a08 <buttonGenericCallback+0x11c>)
c0de592c:	eb09 0100 	add.w	r1, r9, r0
c0de5930:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de5934:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de5938:	3901      	subs	r1, #1
c0de593a:	4281      	cmp	r1, r0
c0de593c:	dd61      	ble.n	c0de5a02 <buttonGenericCallback+0x116>
c0de593e:	b2c0      	uxtb	r0, r0
c0de5940:	1c41      	adds	r1, r0, #1
c0de5942:	2000      	movs	r0, #0
c0de5944:	4a30      	ldr	r2, [pc, #192]	@ (c0de5a08 <buttonGenericCallback+0x11c>)
c0de5946:	444a      	add	r2, r9
c0de5948:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de594c:	7020      	strb	r0, [r4, #0]
c0de594e:	2001      	movs	r0, #1
c0de5950:	e058      	b.n	c0de5a04 <buttonGenericCallback+0x118>
c0de5952:	eb09 0100 	add.w	r1, r9, r0
c0de5956:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de595a:	2906      	cmp	r1, #6
c0de595c:	d151      	bne.n	c0de5a02 <buttonGenericCallback+0x116>
c0de595e:	eb09 0100 	add.w	r1, r9, r0
c0de5962:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de5964:	2900      	cmp	r1, #0
c0de5966:	d04c      	beq.n	c0de5a02 <buttonGenericCallback+0x116>
c0de5968:	4448      	add	r0, r9
c0de596a:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de596e:	2801      	cmp	r0, #1
c0de5970:	d047      	beq.n	c0de5a02 <buttonGenericCallback+0x116>
c0de5972:	2008      	movs	r0, #8
c0de5974:	e7ea      	b.n	c0de594c <buttonGenericCallback+0x60>
c0de5976:	eb09 0004 	add.w	r0, r9, r4
c0de597a:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de597e:	2000      	movs	r0, #0
c0de5980:	2910      	cmp	r1, #16
c0de5982:	d83f      	bhi.n	c0de5a04 <buttonGenericCallback+0x118>
c0de5984:	2201      	movs	r2, #1
c0de5986:	fa02 f101 	lsl.w	r1, r2, r1
c0de598a:	4a20      	ldr	r2, [pc, #128]	@ (c0de5a0c <buttonGenericCallback+0x120>)
c0de598c:	4211      	tst	r1, r2
c0de598e:	d039      	beq.n	c0de5a04 <buttonGenericCallback+0x118>
c0de5990:	eb09 0004 	add.w	r0, r9, r4
c0de5994:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5998:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de599c:	aa01      	add	r2, sp, #4
c0de599e:	f7ff fe87 	bl	c0de56b0 <getContentElemAtIdx>
c0de59a2:	b370      	cbz	r0, c0de5a02 <buttonGenericCallback+0x116>
c0de59a4:	7801      	ldrb	r1, [r0, #0]
c0de59a6:	4602      	mov	r2, r0
c0de59a8:	2000      	movs	r0, #0
c0de59aa:	b359      	cbz	r1, c0de5a04 <buttonGenericCallback+0x118>
c0de59ac:	290a      	cmp	r1, #10
c0de59ae:	d009      	beq.n	c0de59c4 <buttonGenericCallback+0xd8>
c0de59b0:	2907      	cmp	r1, #7
c0de59b2:	d00f      	beq.n	c0de59d4 <buttonGenericCallback+0xe8>
c0de59b4:	2909      	cmp	r1, #9
c0de59b6:	d011      	beq.n	c0de59dc <buttonGenericCallback+0xf0>
c0de59b8:	2903      	cmp	r1, #3
c0de59ba:	f04f 0100 	mov.w	r1, #0
c0de59be:	d112      	bne.n	c0de59e6 <buttonGenericCallback+0xfa>
c0de59c0:	7c10      	ldrb	r0, [r2, #16]
c0de59c2:	e005      	b.n	c0de59d0 <buttonGenericCallback+0xe4>
c0de59c4:	eb09 0004 	add.w	r0, r9, r4
c0de59c8:	6891      	ldr	r1, [r2, #8]
c0de59ca:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de59ce:	5c08      	ldrb	r0, [r1, r0]
c0de59d0:	2100      	movs	r1, #0
c0de59d2:	e008      	b.n	c0de59e6 <buttonGenericCallback+0xfa>
c0de59d4:	6850      	ldr	r0, [r2, #4]
c0de59d6:	2100      	movs	r1, #0
c0de59d8:	7a40      	ldrb	r0, [r0, #9]
c0de59da:	e004      	b.n	c0de59e6 <buttonGenericCallback+0xfa>
c0de59dc:	eb09 0004 	add.w	r0, r9, r4
c0de59e0:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de59e4:	7ad0      	ldrb	r0, [r2, #11]
c0de59e6:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de59e8:	b133      	cbz	r3, c0de59f8 <buttonGenericCallback+0x10c>
c0de59ea:	eb09 0104 	add.w	r1, r9, r4
c0de59ee:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de59f2:	2100      	movs	r1, #0
c0de59f4:	4798      	blx	r3
c0de59f6:	e004      	b.n	c0de5a02 <buttonGenericCallback+0x116>
c0de59f8:	eb09 0204 	add.w	r2, r9, r4
c0de59fc:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de59fe:	b102      	cbz	r2, c0de5a02 <buttonGenericCallback+0x116>
c0de5a00:	4790      	blx	r2
c0de5a02:	2000      	movs	r0, #0
c0de5a04:	b010      	add	sp, #64	@ 0x40
c0de5a06:	bdb0      	pop	{r4, r5, r7, pc}
c0de5a08:	00000744 	.word	0x00000744
c0de5a0c:	0001c008 	.word	0x0001c008

c0de5a10 <displayHomePage>:
c0de5a10:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5a14:	4680      	mov	r8, r0
c0de5a16:	4832      	ldr	r0, [pc, #200]	@ (c0de5ae0 <displayHomePage+0xd0>)
c0de5a18:	2200      	movs	r2, #0
c0de5a1a:	eb09 0100 	add.w	r1, r9, r0
c0de5a1e:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de5a20:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de5a22:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5a24:	2202      	movs	r2, #2
c0de5a26:	2d00      	cmp	r5, #0
c0de5a28:	463e      	mov	r6, r7
c0de5a2a:	bf08      	it	eq
c0de5a2c:	2201      	moveq	r2, #1
c0de5a2e:	2f00      	cmp	r7, #0
c0de5a30:	bf18      	it	ne
c0de5a32:	2601      	movne	r6, #1
c0de5a34:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de5a38:	b183      	cbz	r3, c0de5a5c <displayHomePage+0x4c>
c0de5a3a:	2401      	movs	r4, #1
c0de5a3c:	2d00      	cmp	r5, #0
c0de5a3e:	bf08      	it	eq
c0de5a40:	24ff      	moveq	r4, #255	@ 0xff
c0de5a42:	429c      	cmp	r4, r3
c0de5a44:	d111      	bne.n	c0de5a6a <displayHomePage+0x5a>
c0de5a46:	eb09 0400 	add.w	r4, r9, r0
c0de5a4a:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5a4e:	f001 fbaf 	bl	c0de71b0 <pic>
c0de5a52:	4602      	mov	r2, r0
c0de5a54:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de5a56:	6880      	ldr	r0, [r0, #8]
c0de5a58:	6360      	str	r0, [r4, #52]	@ 0x34
c0de5a5a:	e004      	b.n	c0de5a66 <displayHomePage+0x56>
c0de5a5c:	eb09 0100 	add.w	r1, r9, r0
c0de5a60:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de5a64:	b312      	cbz	r2, c0de5aac <displayHomePage+0x9c>
c0de5a66:	2300      	movs	r3, #0
c0de5a68:	e02c      	b.n	c0de5ac4 <displayHomePage+0xb4>
c0de5a6a:	2f00      	cmp	r7, #0
c0de5a6c:	4614      	mov	r4, r2
c0de5a6e:	bf08      	it	eq
c0de5a70:	24ff      	moveq	r4, #255	@ 0xff
c0de5a72:	429c      	cmp	r4, r3
c0de5a74:	d109      	bne.n	c0de5a8a <displayHomePage+0x7a>
c0de5a76:	491c      	ldr	r1, [pc, #112]	@ (c0de5ae8 <displayHomePage+0xd8>)
c0de5a78:	4448      	add	r0, r9
c0de5a7a:	2300      	movs	r3, #0
c0de5a7c:	4479      	add	r1, pc
c0de5a7e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a80:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5aec <displayHomePage+0xdc>)
c0de5a82:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5af0 <displayHomePage+0xe0>)
c0de5a84:	447d      	add	r5, pc
c0de5a86:	447a      	add	r2, pc
c0de5a88:	e01c      	b.n	c0de5ac4 <displayHomePage+0xb4>
c0de5a8a:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de5a8c:	4432      	add	r2, r6
c0de5a8e:	4448      	add	r0, r9
c0de5a90:	2900      	cmp	r1, #0
c0de5a92:	bf08      	it	eq
c0de5a94:	22ff      	moveq	r2, #255	@ 0xff
c0de5a96:	429a      	cmp	r2, r3
c0de5a98:	d10d      	bne.n	c0de5ab6 <displayHomePage+0xa6>
c0de5a9a:	4916      	ldr	r1, [pc, #88]	@ (c0de5af4 <displayHomePage+0xe4>)
c0de5a9c:	2300      	movs	r3, #0
c0de5a9e:	4479      	add	r1, pc
c0de5aa0:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5aa2:	4d15      	ldr	r5, [pc, #84]	@ (c0de5af8 <displayHomePage+0xe8>)
c0de5aa4:	4a15      	ldr	r2, [pc, #84]	@ (c0de5afc <displayHomePage+0xec>)
c0de5aa6:	447d      	add	r5, pc
c0de5aa8:	447a      	add	r2, pc
c0de5aaa:	e00b      	b.n	c0de5ac4 <displayHomePage+0xb4>
c0de5aac:	4448      	add	r0, r9
c0de5aae:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de5ab0:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5ae4 <displayHomePage+0xd4>)
c0de5ab2:	447b      	add	r3, pc
c0de5ab4:	e006      	b.n	c0de5ac4 <displayHomePage+0xb4>
c0de5ab6:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de5ab8:	2300      	movs	r3, #0
c0de5aba:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5abc:	4d10      	ldr	r5, [pc, #64]	@ (c0de5b00 <displayHomePage+0xf0>)
c0de5abe:	4a11      	ldr	r2, [pc, #68]	@ (c0de5b04 <displayHomePage+0xf4>)
c0de5ac0:	447d      	add	r5, pc
c0de5ac2:	447a      	add	r2, pc
c0de5ac4:	4910      	ldr	r1, [pc, #64]	@ (c0de5b08 <displayHomePage+0xf8>)
c0de5ac6:	2000      	movs	r0, #0
c0de5ac8:	9002      	str	r0, [sp, #8]
c0de5aca:	4479      	add	r1, pc
c0de5acc:	e9cd 1000 	strd	r1, r0, [sp]
c0de5ad0:	4640      	mov	r0, r8
c0de5ad2:	4629      	mov	r1, r5
c0de5ad4:	f7ff f9d2 	bl	c0de4e7c <drawStep>
c0de5ad8:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5adc:	f001 b95d 	b.w	c0de6d9a <nbgl_refresh>
c0de5ae0:	00000744 	.word	0x00000744
c0de5ae4:	00002316 	.word	0x00002316
c0de5ae8:	0000008d 	.word	0x0000008d
c0de5aec:	00001f23 	.word	0x00001f23
c0de5af0:	0000221d 	.word	0x0000221d
c0de5af4:	00000073 	.word	0x00000073
c0de5af8:	00001e6c 	.word	0x00001e6c
c0de5afc:	000022c7 	.word	0x000022c7
c0de5b00:	00001e75 	.word	0x00001e75
c0de5b04:	00002313 	.word	0x00002313
c0de5b08:	0000006b 	.word	0x0000006b

c0de5b0c <startUseCaseSettings>:
c0de5b0c:	2000      	movs	r0, #0
c0de5b0e:	f7fe bf61 	b.w	c0de49d4 <startUseCaseSettingsAtPage>
	...

c0de5b14 <startUseCaseInfo>:
c0de5b14:	4807      	ldr	r0, [pc, #28]	@ (c0de5b34 <startUseCaseInfo+0x20>)
c0de5b16:	210d      	movs	r1, #13
c0de5b18:	4448      	add	r0, r9
c0de5b1a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5b1e:	2100      	movs	r1, #0
c0de5b20:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5b24:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5b26:	7b09      	ldrb	r1, [r1, #12]
c0de5b28:	3101      	adds	r1, #1
c0de5b2a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de5b2e:	2000      	movs	r0, #0
c0de5b30:	f000 b810 	b.w	c0de5b54 <displayInfoPage>
c0de5b34:	00000744 	.word	0x00000744

c0de5b38 <homeCallback>:
c0de5b38:	b5e0      	push	{r5, r6, r7, lr}
c0de5b3a:	4608      	mov	r0, r1
c0de5b3c:	f10d 0107 	add.w	r1, sp, #7
c0de5b40:	f7ff fed4 	bl	c0de58ec <buttonGenericCallback>
c0de5b44:	b128      	cbz	r0, c0de5b52 <homeCallback+0x1a>
c0de5b46:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5b4a:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5b4e:	f7ff bf5f 	b.w	c0de5a10 <displayHomePage>
c0de5b52:	bd8c      	pop	{r2, r3, r7, pc}

c0de5b54 <displayInfoPage>:
c0de5b54:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b56:	4604      	mov	r4, r0
c0de5b58:	4816      	ldr	r0, [pc, #88]	@ (c0de5bb4 <displayInfoPage+0x60>)
c0de5b5a:	f000 fbbd 	bl	c0de62d8 <OUTLINED_FUNCTION_1>
c0de5b5e:	dd11      	ble.n	c0de5b84 <displayInfoPage+0x30>
c0de5b60:	eb09 0700 	add.w	r7, r9, r0
c0de5b64:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b66:	6800      	ldr	r0, [r0, #0]
c0de5b68:	4e13      	ldr	r6, [pc, #76]	@ (c0de5bb8 <displayInfoPage+0x64>)
c0de5b6a:	447e      	add	r6, pc
c0de5b6c:	47b0      	blx	r6
c0de5b6e:	f000 fbd5 	bl	c0de631c <OUTLINED_FUNCTION_7>
c0de5b72:	4605      	mov	r5, r0
c0de5b74:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b76:	6840      	ldr	r0, [r0, #4]
c0de5b78:	47b0      	blx	r6
c0de5b7a:	f000 fbcf 	bl	c0de631c <OUTLINED_FUNCTION_7>
c0de5b7e:	4603      	mov	r3, r0
c0de5b80:	2100      	movs	r1, #0
c0de5b82:	e008      	b.n	c0de5b96 <displayInfoPage+0x42>
c0de5b84:	490d      	ldr	r1, [pc, #52]	@ (c0de5bbc <displayInfoPage+0x68>)
c0de5b86:	4448      	add	r0, r9
c0de5b88:	2300      	movs	r3, #0
c0de5b8a:	4479      	add	r1, pc
c0de5b8c:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5b8e:	490c      	ldr	r1, [pc, #48]	@ (c0de5bc0 <displayInfoPage+0x6c>)
c0de5b90:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5bc4 <displayInfoPage+0x70>)
c0de5b92:	4479      	add	r1, pc
c0de5b94:	447d      	add	r5, pc
c0de5b96:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5bc8 <displayInfoPage+0x74>)
c0de5b98:	2002      	movs	r0, #2
c0de5b9a:	2200      	movs	r2, #0
c0de5b9c:	9002      	str	r0, [sp, #8]
c0de5b9e:	4620      	mov	r0, r4
c0de5ba0:	447e      	add	r6, pc
c0de5ba2:	e9cd 6200 	strd	r6, r2, [sp]
c0de5ba6:	462a      	mov	r2, r5
c0de5ba8:	f7ff f968 	bl	c0de4e7c <drawStep>
c0de5bac:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5bb0:	f001 b8f3 	b.w	c0de6d9a <nbgl_refresh>
c0de5bb4:	00000744 	.word	0x00000744
c0de5bb8:	00001643 	.word	0x00001643
c0de5bbc:	ffffeebf 	.word	0xffffeebf
c0de5bc0:	00001df2 	.word	0x00001df2
c0de5bc4:	000021a3 	.word	0x000021a3
c0de5bc8:	00000029 	.word	0x00000029

c0de5bcc <infoCallback>:
c0de5bcc:	b5e0      	push	{r5, r6, r7, lr}
c0de5bce:	4608      	mov	r0, r1
c0de5bd0:	f10d 0107 	add.w	r1, sp, #7
c0de5bd4:	f7ff fe8a 	bl	c0de58ec <buttonGenericCallback>
c0de5bd8:	b128      	cbz	r0, c0de5be6 <infoCallback+0x1a>
c0de5bda:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5bde:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5be2:	f7ff bfb7 	b.w	c0de5b54 <displayInfoPage>
c0de5be6:	bd8c      	pop	{r2, r3, r7, pc}

c0de5be8 <displayWarningStep>:
c0de5be8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5bea:	2000      	movs	r0, #0
c0de5bec:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5bf0:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de5bf4:	482b      	ldr	r0, [pc, #172]	@ (c0de5ca4 <displayWarningStep+0xbc>)
c0de5bf6:	eb09 0100 	add.w	r1, r9, r0
c0de5bfa:	69c9      	ldr	r1, [r1, #28]
c0de5bfc:	680a      	ldr	r2, [r1, #0]
c0de5bfe:	06d3      	lsls	r3, r2, #27
c0de5c00:	d41b      	bmi.n	c0de5c3a <displayWarningStep+0x52>
c0de5c02:	2a00      	cmp	r2, #0
c0de5c04:	d145      	bne.n	c0de5c92 <displayWarningStep+0xaa>
c0de5c06:	69ca      	ldr	r2, [r1, #28]
c0de5c08:	2a00      	cmp	r2, #0
c0de5c0a:	d042      	beq.n	c0de5c92 <displayWarningStep+0xaa>
c0de5c0c:	eb09 0300 	add.w	r3, r9, r0
c0de5c10:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de5c14:	2b00      	cmp	r3, #0
c0de5c16:	d03e      	beq.n	c0de5c96 <displayWarningStep+0xae>
c0de5c18:	4448      	add	r0, r9
c0de5c1a:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5c1e:	3801      	subs	r0, #1
c0de5c20:	4298      	cmp	r0, r3
c0de5c22:	d11d      	bne.n	c0de5c60 <displayWarningStep+0x78>
c0de5c24:	6948      	ldr	r0, [r1, #20]
c0de5c26:	7901      	ldrb	r1, [r0, #4]
c0de5c28:	bb99      	cbnz	r1, c0de5c92 <displayWarningStep+0xaa>
c0de5c2a:	68c1      	ldr	r1, [r0, #12]
c0de5c2c:	6982      	ldr	r2, [r0, #24]
c0de5c2e:	6a00      	ldr	r0, [r0, #32]
c0de5c30:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de5c34:	2003      	movs	r0, #3
c0de5c36:	9104      	str	r1, [sp, #16]
c0de5c38:	e01e      	b.n	c0de5c78 <displayWarningStep+0x90>
c0de5c3a:	eb09 0100 	add.w	r1, r9, r0
c0de5c3e:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5c42:	b179      	cbz	r1, c0de5c64 <displayWarningStep+0x7c>
c0de5c44:	4448      	add	r0, r9
c0de5c46:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5c4a:	3801      	subs	r0, #1
c0de5c4c:	4288      	cmp	r0, r1
c0de5c4e:	d107      	bne.n	c0de5c60 <displayWarningStep+0x78>
c0de5c50:	aa02      	add	r2, sp, #8
c0de5c52:	2000      	movs	r0, #0
c0de5c54:	f102 0108 	add.w	r1, r2, #8
c0de5c58:	f000 f82e 	bl	c0de5cb8 <getLastPageInfo>
c0de5c5c:	200a      	movs	r0, #10
c0de5c5e:	e00b      	b.n	c0de5c78 <displayWarningStep+0x90>
c0de5c60:	2000      	movs	r0, #0
c0de5c62:	e009      	b.n	c0de5c78 <displayWarningStep+0x90>
c0de5c64:	4810      	ldr	r0, [pc, #64]	@ (c0de5ca8 <displayWarningStep+0xc0>)
c0de5c66:	4478      	add	r0, pc
c0de5c68:	9003      	str	r0, [sp, #12]
c0de5c6a:	4810      	ldr	r0, [pc, #64]	@ (c0de5cac <displayWarningStep+0xc4>)
c0de5c6c:	4478      	add	r0, pc
c0de5c6e:	9002      	str	r0, [sp, #8]
c0de5c70:	480f      	ldr	r0, [pc, #60]	@ (c0de5cb0 <displayWarningStep+0xc8>)
c0de5c72:	4478      	add	r0, pc
c0de5c74:	9004      	str	r0, [sp, #16]
c0de5c76:	2001      	movs	r0, #1
c0de5c78:	2101      	movs	r1, #1
c0de5c7a:	2200      	movs	r2, #0
c0de5c7c:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5c80:	2100      	movs	r1, #0
c0de5c82:	9100      	str	r1, [sp, #0]
c0de5c84:	490b      	ldr	r1, [pc, #44]	@ (c0de5cb4 <displayWarningStep+0xcc>)
c0de5c86:	ab02      	add	r3, sp, #8
c0de5c88:	4479      	add	r1, pc
c0de5c8a:	f7fe fc93 	bl	c0de45b4 <nbgl_stepDrawCenteredInfo>
c0de5c8e:	f001 f884 	bl	c0de6d9a <nbgl_refresh>
c0de5c92:	b006      	add	sp, #24
c0de5c94:	bd80      	pop	{r7, pc}
c0de5c96:	6850      	ldr	r0, [r2, #4]
c0de5c98:	6911      	ldr	r1, [r2, #16]
c0de5c9a:	6992      	ldr	r2, [r2, #24]
c0de5c9c:	9004      	str	r0, [sp, #16]
c0de5c9e:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5ca2:	e7e8      	b.n	c0de5c76 <displayWarningStep+0x8e>
c0de5ca4:	00000744 	.word	0x00000744
c0de5ca8:	00001f38 	.word	0x00001f38
c0de5cac:	00002065 	.word	0x00002065
c0de5cb0:	00001df7 	.word	0x00001df7
c0de5cb4:	00000155 	.word	0x00000155

c0de5cb8 <getLastPageInfo>:
c0de5cb8:	b170      	cbz	r0, c0de5cd8 <getLastPageInfo+0x20>
c0de5cba:	4833      	ldr	r0, [pc, #204]	@ (c0de5d88 <getLastPageInfo+0xd0>)
c0de5cbc:	4478      	add	r0, pc
c0de5cbe:	6008      	str	r0, [r1, #0]
c0de5cc0:	4830      	ldr	r0, [pc, #192]	@ (c0de5d84 <getLastPageInfo+0xcc>)
c0de5cc2:	eb09 0100 	add.w	r1, r9, r0
c0de5cc6:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5cca:	2904      	cmp	r1, #4
c0de5ccc:	d113      	bne.n	c0de5cf6 <getLastPageInfo+0x3e>
c0de5cce:	482f      	ldr	r0, [pc, #188]	@ (c0de5d8c <getLastPageInfo+0xd4>)
c0de5cd0:	492f      	ldr	r1, [pc, #188]	@ (c0de5d90 <getLastPageInfo+0xd8>)
c0de5cd2:	4478      	add	r0, pc
c0de5cd4:	4479      	add	r1, pc
c0de5cd6:	e04f      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5cd8:	4838      	ldr	r0, [pc, #224]	@ (c0de5dbc <getLastPageInfo+0x104>)
c0de5cda:	4478      	add	r0, pc
c0de5cdc:	6008      	str	r0, [r1, #0]
c0de5cde:	4829      	ldr	r0, [pc, #164]	@ (c0de5d84 <getLastPageInfo+0xcc>)
c0de5ce0:	eb09 0100 	add.w	r1, r9, r0
c0de5ce4:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5ce8:	2904      	cmp	r1, #4
c0de5cea:	d10b      	bne.n	c0de5d04 <getLastPageInfo+0x4c>
c0de5cec:	4834      	ldr	r0, [pc, #208]	@ (c0de5dc0 <getLastPageInfo+0x108>)
c0de5cee:	4935      	ldr	r1, [pc, #212]	@ (c0de5dc4 <getLastPageInfo+0x10c>)
c0de5cf0:	4478      	add	r0, pc
c0de5cf2:	4479      	add	r1, pc
c0de5cf4:	e040      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5cf6:	eb09 0100 	add.w	r1, r9, r0
c0de5cfa:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5cfc:	b171      	cbz	r1, c0de5d1c <getLastPageInfo+0x64>
c0de5cfe:	4825      	ldr	r0, [pc, #148]	@ (c0de5d94 <getLastPageInfo+0xdc>)
c0de5d00:	4478      	add	r0, pc
c0de5d02:	e039      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5d04:	4448      	add	r0, r9
c0de5d06:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5d08:	f010 0007 	ands.w	r0, r0, #7
c0de5d0c:	d017      	beq.n	c0de5d3e <getLastPageInfo+0x86>
c0de5d0e:	2801      	cmp	r0, #1
c0de5d10:	d11a      	bne.n	c0de5d48 <getLastPageInfo+0x90>
c0de5d12:	482f      	ldr	r0, [pc, #188]	@ (c0de5dd0 <getLastPageInfo+0x118>)
c0de5d14:	492f      	ldr	r1, [pc, #188]	@ (c0de5dd4 <getLastPageInfo+0x11c>)
c0de5d16:	4478      	add	r0, pc
c0de5d18:	4479      	add	r1, pc
c0de5d1a:	e02d      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5d1c:	4448      	add	r0, r9
c0de5d1e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5d20:	f000 0107 	and.w	r1, r0, #7
c0de5d24:	2901      	cmp	r1, #1
c0de5d26:	d014      	beq.n	c0de5d52 <getLastPageInfo+0x9a>
c0de5d28:	b9e9      	cbnz	r1, c0de5d66 <getLastPageInfo+0xae>
c0de5d2a:	0640      	lsls	r0, r0, #25
c0de5d2c:	481a      	ldr	r0, [pc, #104]	@ (c0de5d98 <getLastPageInfo+0xe0>)
c0de5d2e:	491b      	ldr	r1, [pc, #108]	@ (c0de5d9c <getLastPageInfo+0xe4>)
c0de5d30:	4478      	add	r0, pc
c0de5d32:	4479      	add	r1, pc
c0de5d34:	bf58      	it	pl
c0de5d36:	4601      	movpl	r1, r0
c0de5d38:	4819      	ldr	r0, [pc, #100]	@ (c0de5da0 <getLastPageInfo+0xe8>)
c0de5d3a:	4478      	add	r0, pc
c0de5d3c:	e01c      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5d3e:	4822      	ldr	r0, [pc, #136]	@ (c0de5dc8 <getLastPageInfo+0x110>)
c0de5d40:	4922      	ldr	r1, [pc, #136]	@ (c0de5dcc <getLastPageInfo+0x114>)
c0de5d42:	4478      	add	r0, pc
c0de5d44:	4479      	add	r1, pc
c0de5d46:	e017      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5d48:	4823      	ldr	r0, [pc, #140]	@ (c0de5dd8 <getLastPageInfo+0x120>)
c0de5d4a:	4924      	ldr	r1, [pc, #144]	@ (c0de5ddc <getLastPageInfo+0x124>)
c0de5d4c:	4478      	add	r0, pc
c0de5d4e:	4479      	add	r1, pc
c0de5d50:	e012      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5d52:	0640      	lsls	r0, r0, #25
c0de5d54:	4813      	ldr	r0, [pc, #76]	@ (c0de5da4 <getLastPageInfo+0xec>)
c0de5d56:	4914      	ldr	r1, [pc, #80]	@ (c0de5da8 <getLastPageInfo+0xf0>)
c0de5d58:	4478      	add	r0, pc
c0de5d5a:	4479      	add	r1, pc
c0de5d5c:	bf58      	it	pl
c0de5d5e:	4601      	movpl	r1, r0
c0de5d60:	4812      	ldr	r0, [pc, #72]	@ (c0de5dac <getLastPageInfo+0xf4>)
c0de5d62:	4478      	add	r0, pc
c0de5d64:	e008      	b.n	c0de5d78 <getLastPageInfo+0xc0>
c0de5d66:	0640      	lsls	r0, r0, #25
c0de5d68:	4811      	ldr	r0, [pc, #68]	@ (c0de5db0 <getLastPageInfo+0xf8>)
c0de5d6a:	4912      	ldr	r1, [pc, #72]	@ (c0de5db4 <getLastPageInfo+0xfc>)
c0de5d6c:	4478      	add	r0, pc
c0de5d6e:	4479      	add	r1, pc
c0de5d70:	bf58      	it	pl
c0de5d72:	4601      	movpl	r1, r0
c0de5d74:	4810      	ldr	r0, [pc, #64]	@ (c0de5db8 <getLastPageInfo+0x100>)
c0de5d76:	4478      	add	r0, pc
c0de5d78:	6011      	str	r1, [r2, #0]
c0de5d7a:	4902      	ldr	r1, [pc, #8]	@ (c0de5d84 <getLastPageInfo+0xcc>)
c0de5d7c:	4449      	add	r1, r9
c0de5d7e:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5d80:	4770      	bx	lr
c0de5d82:	bf00      	nop
c0de5d84:	00000744 	.word	0x00000744
c0de5d88:	00001d8a 	.word	0x00001d8a
c0de5d8c:	0000018f 	.word	0x0000018f
c0de5d90:	0000210a 	.word	0x0000210a
c0de5d94:	00000161 	.word	0x00000161
c0de5d98:	00001edd 	.word	0x00001edd
c0de5d9c:	00001f7e 	.word	0x00001f7e
c0de5da0:	00000127 	.word	0x00000127
c0de5da4:	00001e99 	.word	0x00001e99
c0de5da8:	00001ed7 	.word	0x00001ed7
c0de5dac:	000000ff 	.word	0x000000ff
c0de5db0:	0000200c 	.word	0x0000200c
c0de5db4:	00001f77 	.word	0x00001f77
c0de5db8:	000000eb 	.word	0x000000eb
c0de5dbc:	00001cf0 	.word	0x00001cf0
c0de5dc0:	00000185 	.word	0x00000185
c0de5dc4:	00001f82 	.word	0x00001f82
c0de5dc8:	00000133 	.word	0x00000133
c0de5dcc:	00001eda 	.word	0x00001eda
c0de5dd0:	0000015f 	.word	0x0000015f
c0de5dd4:	0000206f 	.word	0x0000206f
c0de5dd8:	00000129 	.word	0x00000129
c0de5ddc:	00002048 	.word	0x00002048

c0de5de0 <warningNavigate>:
c0de5de0:	2904      	cmp	r1, #4
c0de5de2:	d009      	beq.n	c0de5df8 <warningNavigate+0x18>
c0de5de4:	2901      	cmp	r1, #1
c0de5de6:	d01f      	beq.n	c0de5e28 <warningNavigate+0x48>
c0de5de8:	b9e9      	cbnz	r1, c0de5e26 <warningNavigate+0x46>
c0de5dea:	481d      	ldr	r0, [pc, #116]	@ (c0de5e60 <warningNavigate+0x80>)
c0de5dec:	4448      	add	r0, r9
c0de5dee:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5df2:	b368      	cbz	r0, c0de5e50 <warningNavigate+0x70>
c0de5df4:	3801      	subs	r0, #1
c0de5df6:	e022      	b.n	c0de5e3e <warningNavigate+0x5e>
c0de5df8:	4819      	ldr	r0, [pc, #100]	@ (c0de5e60 <warningNavigate+0x80>)
c0de5dfa:	eb09 0100 	add.w	r1, r9, r0
c0de5dfe:	69c9      	ldr	r1, [r1, #28]
c0de5e00:	7809      	ldrb	r1, [r1, #0]
c0de5e02:	06c9      	lsls	r1, r1, #27
c0de5e04:	d50f      	bpl.n	c0de5e26 <warningNavigate+0x46>
c0de5e06:	eb09 0100 	add.w	r1, r9, r0
c0de5e0a:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5e0e:	b321      	cbz	r1, c0de5e5a <warningNavigate+0x7a>
c0de5e10:	eb09 0200 	add.w	r2, r9, r0
c0de5e14:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5e18:	3a01      	subs	r2, #1
c0de5e1a:	428a      	cmp	r2, r1
c0de5e1c:	d103      	bne.n	c0de5e26 <warningNavigate+0x46>
c0de5e1e:	4448      	add	r0, r9
c0de5e20:	6a01      	ldr	r1, [r0, #32]
c0de5e22:	2000      	movs	r0, #0
c0de5e24:	4708      	bx	r1
c0de5e26:	4770      	bx	lr
c0de5e28:	480d      	ldr	r0, [pc, #52]	@ (c0de5e60 <warningNavigate+0x80>)
c0de5e2a:	eb09 0200 	add.w	r2, r9, r0
c0de5e2e:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5e32:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5e36:	3a01      	subs	r2, #1
c0de5e38:	428a      	cmp	r2, r1
c0de5e3a:	dd05      	ble.n	c0de5e48 <warningNavigate+0x68>
c0de5e3c:	1c48      	adds	r0, r1, #1
c0de5e3e:	4908      	ldr	r1, [pc, #32]	@ (c0de5e60 <warningNavigate+0x80>)
c0de5e40:	4449      	add	r1, r9
c0de5e42:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5e46:	e003      	b.n	c0de5e50 <warningNavigate+0x70>
c0de5e48:	4448      	add	r0, r9
c0de5e4a:	69c0      	ldr	r0, [r0, #28]
c0de5e4c:	6801      	ldr	r1, [r0, #0]
c0de5e4e:	b109      	cbz	r1, c0de5e54 <warningNavigate+0x74>
c0de5e50:	f7ff beca 	b.w	c0de5be8 <displayWarningStep>
c0de5e54:	69c0      	ldr	r0, [r0, #28]
c0de5e56:	2800      	cmp	r0, #0
c0de5e58:	d0fa      	beq.n	c0de5e50 <warningNavigate+0x70>
c0de5e5a:	f000 b817 	b.w	c0de5e8c <launchReviewAfterWarning>
c0de5e5e:	bf00      	nop
c0de5e60:	00000744 	.word	0x00000744

c0de5e64 <onReviewAccept>:
c0de5e64:	4803      	ldr	r0, [pc, #12]	@ (c0de5e74 <onReviewAccept+0x10>)
c0de5e66:	4448      	add	r0, r9
c0de5e68:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e6a:	b109      	cbz	r1, c0de5e70 <onReviewAccept+0xc>
c0de5e6c:	2001      	movs	r0, #1
c0de5e6e:	4708      	bx	r1
c0de5e70:	4770      	bx	lr
c0de5e72:	bf00      	nop
c0de5e74:	00000744 	.word	0x00000744

c0de5e78 <onReviewReject>:
c0de5e78:	4803      	ldr	r0, [pc, #12]	@ (c0de5e88 <onReviewReject+0x10>)
c0de5e7a:	4448      	add	r0, r9
c0de5e7c:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e7e:	b109      	cbz	r1, c0de5e84 <onReviewReject+0xc>
c0de5e80:	2000      	movs	r0, #0
c0de5e82:	4708      	bx	r1
c0de5e84:	4770      	bx	lr
c0de5e86:	bf00      	nop
c0de5e88:	00000744 	.word	0x00000744

c0de5e8c <launchReviewAfterWarning>:
c0de5e8c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5e8e:	480c      	ldr	r0, [pc, #48]	@ (c0de5ec0 <launchReviewAfterWarning+0x34>)
c0de5e90:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5e94:	2905      	cmp	r1, #5
c0de5e96:	d00d      	beq.n	c0de5eb4 <launchReviewAfterWarning+0x28>
c0de5e98:	2902      	cmp	r1, #2
c0de5e9a:	bf18      	it	ne
c0de5e9c:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e9e:	4448      	add	r0, r9
c0de5ea0:	1d06      	adds	r6, r0, #4
c0de5ea2:	6a00      	ldr	r0, [r0, #32]
c0de5ea4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5ea6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5eaa:	9003      	str	r0, [sp, #12]
c0de5eac:	2002      	movs	r0, #2
c0de5eae:	f7fe fe23 	bl	c0de4af8 <useCaseReview>
c0de5eb2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5eb4:	2000      	movs	r0, #0
c0de5eb6:	b004      	add	sp, #16
c0de5eb8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5ebc:	f7ff b8fa 	b.w	c0de50b4 <displayStreamingReviewPage>
c0de5ec0:	00000744 	.word	0x00000744

c0de5ec4 <buttonSkipCallback>:
c0de5ec4:	b5b0      	push	{r4, r5, r7, lr}
c0de5ec6:	2904      	cmp	r1, #4
c0de5ec8:	d00a      	beq.n	c0de5ee0 <buttonSkipCallback+0x1c>
c0de5eca:	2901      	cmp	r1, #1
c0de5ecc:	d017      	beq.n	c0de5efe <buttonSkipCallback+0x3a>
c0de5ece:	bbb9      	cbnz	r1, c0de5f40 <buttonSkipCallback+0x7c>
c0de5ed0:	4829      	ldr	r0, [pc, #164]	@ (c0de5f78 <buttonSkipCallback+0xb4>)
c0de5ed2:	eb09 0100 	add.w	r1, r9, r0
c0de5ed6:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5eda:	b391      	cbz	r1, c0de5f42 <buttonSkipCallback+0x7e>
c0de5edc:	2008      	movs	r0, #8
c0de5ede:	e02a      	b.n	c0de5f36 <buttonSkipCallback+0x72>
c0de5ee0:	4825      	ldr	r0, [pc, #148]	@ (c0de5f78 <buttonSkipCallback+0xb4>)
c0de5ee2:	eb09 0100 	add.w	r1, r9, r0
c0de5ee6:	4448      	add	r0, r9
c0de5ee8:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5eec:	2900      	cmp	r1, #0
c0de5eee:	d03f      	beq.n	c0de5f70 <buttonSkipCallback+0xac>
c0de5ef0:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5ef4:	3902      	subs	r1, #2
c0de5ef6:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5efa:	2000      	movs	r0, #0
c0de5efc:	e030      	b.n	c0de5f60 <buttonSkipCallback+0x9c>
c0de5efe:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5f78 <buttonSkipCallback+0xb4>)
c0de5f00:	eb09 0002 	add.w	r0, r9, r2
c0de5f04:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5f08:	2808      	cmp	r0, #8
c0de5f0a:	d113      	bne.n	c0de5f34 <buttonSkipCallback+0x70>
c0de5f0c:	eb09 0002 	add.w	r0, r9, r2
c0de5f10:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5f14:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5f18:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5f1c:	1e45      	subs	r5, r0, #1
c0de5f1e:	2000      	movs	r0, #0
c0de5f20:	b2e1      	uxtb	r1, r4
c0de5f22:	429d      	cmp	r5, r3
c0de5f24:	bfc8      	it	gt
c0de5f26:	42a3      	cmpgt	r3, r4
c0de5f28:	dd19      	ble.n	c0de5f5e <buttonSkipCallback+0x9a>
c0de5f2a:	eb09 0002 	add.w	r0, r9, r2
c0de5f2e:	1c59      	adds	r1, r3, #1
c0de5f30:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5f34:	2000      	movs	r0, #0
c0de5f36:	4910      	ldr	r1, [pc, #64]	@ (c0de5f78 <buttonSkipCallback+0xb4>)
c0de5f38:	4449      	add	r1, r9
c0de5f3a:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5f3e:	e00e      	b.n	c0de5f5e <buttonSkipCallback+0x9a>
c0de5f40:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f42:	eb09 0100 	add.w	r1, r9, r0
c0de5f46:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5f4a:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5f4e:	b2d9      	uxtb	r1, r3
c0de5f50:	429a      	cmp	r2, r3
c0de5f52:	dd03      	ble.n	c0de5f5c <buttonSkipCallback+0x98>
c0de5f54:	4448      	add	r0, r9
c0de5f56:	3a01      	subs	r2, #1
c0de5f58:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5f5c:	2008      	movs	r0, #8
c0de5f5e:	b119      	cbz	r1, c0de5f68 <buttonSkipCallback+0xa4>
c0de5f60:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f64:	f7fe be9e 	b.w	c0de4ca4 <displayReviewPage>
c0de5f68:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f6c:	f7ff b8a2 	b.w	c0de50b4 <displayStreamingReviewPage>
c0de5f70:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5f72:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f76:	4700      	bx	r0
c0de5f78:	00000744 	.word	0x00000744

c0de5f7c <displayAliasFullValue>:
c0de5f7c:	b570      	push	{r4, r5, r6, lr}
c0de5f7e:	b088      	sub	sp, #32
c0de5f80:	4c1a      	ldr	r4, [pc, #104]	@ (c0de5fec <displayAliasFullValue+0x70>)
c0de5f82:	f10d 0213 	add.w	r2, sp, #19
c0de5f86:	eb09 0504 	add.w	r5, r9, r4
c0de5f8a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5f8c:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5f90:	ab05      	add	r3, sp, #20
c0de5f92:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5f96:	9202      	str	r2, [sp, #8]
c0de5f98:	e9cd 6300 	strd	r6, r3, [sp]
c0de5f9c:	aa07      	add	r2, sp, #28
c0de5f9e:	ab06      	add	r3, sp, #24
c0de5fa0:	f7ff fbca 	bl	c0de5738 <getPairData>
c0de5fa4:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5fa6:	b178      	cbz	r0, c0de5fc8 <displayAliasFullValue+0x4c>
c0de5fa8:	eb09 0104 	add.w	r1, r9, r4
c0de5fac:	2200      	movs	r2, #0
c0de5fae:	664a      	str	r2, [r1, #100]	@ 0x64
c0de5fb0:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de5fb4:	7d01      	ldrb	r1, [r0, #20]
c0de5fb6:	2901      	cmp	r1, #1
c0de5fb8:	d008      	beq.n	c0de5fcc <displayAliasFullValue+0x50>
c0de5fba:	2905      	cmp	r1, #5
c0de5fbc:	d008      	beq.n	c0de5fd0 <displayAliasFullValue+0x54>
c0de5fbe:	2904      	cmp	r1, #4
c0de5fc0:	d102      	bne.n	c0de5fc8 <displayAliasFullValue+0x4c>
c0de5fc2:	6900      	ldr	r0, [r0, #16]
c0de5fc4:	300c      	adds	r0, #12
c0de5fc6:	e005      	b.n	c0de5fd4 <displayAliasFullValue+0x58>
c0de5fc8:	b008      	add	sp, #32
c0de5fca:	bd70      	pop	{r4, r5, r6, pc}
c0de5fcc:	2002      	movs	r0, #2
c0de5fce:	e003      	b.n	c0de5fd8 <displayAliasFullValue+0x5c>
c0de5fd0:	6900      	ldr	r0, [r0, #16]
c0de5fd2:	3008      	adds	r0, #8
c0de5fd4:	7800      	ldrb	r0, [r0, #0]
c0de5fd6:	3001      	adds	r0, #1
c0de5fd8:	eb09 0104 	add.w	r1, r9, r4
c0de5fdc:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de5fe0:	2000      	movs	r0, #0
c0de5fe2:	b008      	add	sp, #32
c0de5fe4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5fe8:	f000 b814 	b.w	c0de6014 <displayExtensionStep>
c0de5fec:	00000744 	.word	0x00000744

c0de5ff0 <reviewCallback>:
c0de5ff0:	b5e0      	push	{r5, r6, r7, lr}
c0de5ff2:	4608      	mov	r0, r1
c0de5ff4:	f10d 0107 	add.w	r1, sp, #7
c0de5ff8:	f7ff fc78 	bl	c0de58ec <buttonGenericCallback>
c0de5ffc:	b130      	cbz	r0, c0de600c <reviewCallback+0x1c>
c0de5ffe:	4804      	ldr	r0, [pc, #16]	@ (c0de6010 <reviewCallback+0x20>)
c0de6000:	f000 f991 	bl	c0de6326 <OUTLINED_FUNCTION_8>
c0de6004:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6008:	f7fe be4c 	b.w	c0de4ca4 <displayReviewPage>
c0de600c:	bd8c      	pop	{r2, r3, r7, pc}
c0de600e:	bf00      	nop
c0de6010:	00000744 	.word	0x00000744

c0de6014 <displayExtensionStep>:
c0de6014:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6018:	b088      	sub	sp, #32
c0de601a:	4e36      	ldr	r6, [pc, #216]	@ (c0de60f4 <displayExtensionStep+0xe0>)
c0de601c:	4680      	mov	r8, r0
c0de601e:	2000      	movs	r0, #0
c0de6020:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6024:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6028:	eb09 0006 	add.w	r0, r9, r6
c0de602c:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de602e:	b108      	cbz	r0, c0de6034 <displayExtensionStep+0x20>
c0de6030:	f7fe fbe6 	bl	c0de4800 <nbgl_stepRelease>
c0de6034:	eb09 0106 	add.w	r1, r9, r6
c0de6038:	f000 f981 	bl	c0de633e <OUTLINED_FUNCTION_10>
c0de603c:	dd10      	ble.n	c0de6060 <displayExtensionStep+0x4c>
c0de603e:	2703      	movs	r7, #3
c0de6040:	eb09 0106 	add.w	r1, r9, r6
c0de6044:	2800      	cmp	r0, #0
c0de6046:	bf08      	it	eq
c0de6048:	2701      	moveq	r7, #1
c0de604a:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de604c:	7d0a      	ldrb	r2, [r1, #20]
c0de604e:	2a05      	cmp	r2, #5
c0de6050:	d01a      	beq.n	c0de6088 <displayExtensionStep+0x74>
c0de6052:	2a04      	cmp	r2, #4
c0de6054:	d028      	beq.n	c0de60a8 <displayExtensionStep+0x94>
c0de6056:	2a01      	cmp	r2, #1
c0de6058:	d147      	bne.n	c0de60ea <displayExtensionStep+0xd6>
c0de605a:	6808      	ldr	r0, [r1, #0]
c0de605c:	688d      	ldr	r5, [r1, #8]
c0de605e:	e033      	b.n	c0de60c8 <displayExtensionStep+0xb4>
c0de6060:	d143      	bne.n	c0de60ea <displayExtensionStep+0xd6>
c0de6062:	2001      	movs	r0, #1
c0de6064:	2200      	movs	r2, #0
c0de6066:	f88d 001d 	strb.w	r0, [sp, #29]
c0de606a:	4924      	ldr	r1, [pc, #144]	@ (c0de60fc <displayExtensionStep+0xe8>)
c0de606c:	4479      	add	r1, pc
c0de606e:	9104      	str	r1, [sp, #16]
c0de6070:	4923      	ldr	r1, [pc, #140]	@ (c0de6100 <displayExtensionStep+0xec>)
c0de6072:	9000      	str	r0, [sp, #0]
c0de6074:	f048 0002 	orr.w	r0, r8, #2
c0de6078:	4479      	add	r1, pc
c0de607a:	9106      	str	r1, [sp, #24]
c0de607c:	4921      	ldr	r1, [pc, #132]	@ (c0de6104 <displayExtensionStep+0xf0>)
c0de607e:	ab04      	add	r3, sp, #16
c0de6080:	4479      	add	r1, pc
c0de6082:	f7fe fa97 	bl	c0de45b4 <nbgl_stepDrawCenteredInfo>
c0de6086:	e02d      	b.n	c0de60e4 <displayExtensionStep+0xd0>
c0de6088:	690c      	ldr	r4, [r1, #16]
c0de608a:	0100      	lsls	r0, r0, #4
c0de608c:	6821      	ldr	r1, [r4, #0]
c0de608e:	5808      	ldr	r0, [r1, r0]
c0de6090:	f001 f88e 	bl	c0de71b0 <pic>
c0de6094:	4605      	mov	r5, r0
c0de6096:	eb09 0006 	add.w	r0, r9, r6
c0de609a:	6821      	ldr	r1, [r4, #0]
c0de609c:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de60a0:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de60a4:	6840      	ldr	r0, [r0, #4]
c0de60a6:	e00d      	b.n	c0de60c4 <displayExtensionStep+0xb0>
c0de60a8:	690c      	ldr	r4, [r1, #16]
c0de60aa:	6821      	ldr	r1, [r4, #0]
c0de60ac:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de60b0:	f001 f87e 	bl	c0de71b0 <pic>
c0de60b4:	4605      	mov	r5, r0
c0de60b6:	eb09 0006 	add.w	r0, r9, r6
c0de60ba:	6861      	ldr	r1, [r4, #4]
c0de60bc:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de60c0:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de60c4:	f001 f874 	bl	c0de71b0 <pic>
c0de60c8:	b17d      	cbz	r5, c0de60ea <displayExtensionStep+0xd6>
c0de60ca:	2101      	movs	r1, #1
c0de60cc:	ea47 0208 	orr.w	r2, r7, r8
c0de60d0:	462b      	mov	r3, r5
c0de60d2:	e9cd 0100 	strd	r0, r1, [sp]
c0de60d6:	9102      	str	r1, [sp, #8]
c0de60d8:	4610      	mov	r0, r2
c0de60da:	2200      	movs	r2, #0
c0de60dc:	4906      	ldr	r1, [pc, #24]	@ (c0de60f8 <displayExtensionStep+0xe4>)
c0de60de:	4479      	add	r1, pc
c0de60e0:	f7fe f922 	bl	c0de4328 <nbgl_stepDrawText>
c0de60e4:	eb09 0106 	add.w	r1, r9, r6
c0de60e8:	6648      	str	r0, [r1, #100]	@ 0x64
c0de60ea:	f000 fe56 	bl	c0de6d9a <nbgl_refresh>
c0de60ee:	b008      	add	sp, #32
c0de60f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de60f4:	00000744 	.word	0x00000744
c0de60f8:	00000027 	.word	0x00000027
c0de60fc:	00001ccb 	.word	0x00001ccb
c0de6100:	0000190c 	.word	0x0000190c
c0de6104:	00000085 	.word	0x00000085

c0de6108 <extensionNavigate>:
c0de6108:	b580      	push	{r7, lr}
c0de610a:	2904      	cmp	r1, #4
c0de610c:	d00a      	beq.n	c0de6124 <extensionNavigate+0x1c>
c0de610e:	2901      	cmp	r1, #1
c0de6110:	d01d      	beq.n	c0de614e <extensionNavigate+0x46>
c0de6112:	b9d9      	cbnz	r1, c0de614c <extensionNavigate+0x44>
c0de6114:	4818      	ldr	r0, [pc, #96]	@ (c0de6178 <extensionNavigate+0x70>)
c0de6116:	4448      	add	r0, r9
c0de6118:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de611c:	b330      	cbz	r0, c0de616c <extensionNavigate+0x64>
c0de611e:	1e41      	subs	r1, r0, #1
c0de6120:	2008      	movs	r0, #8
c0de6122:	e01c      	b.n	c0de615e <extensionNavigate+0x56>
c0de6124:	4814      	ldr	r0, [pc, #80]	@ (c0de6178 <extensionNavigate+0x70>)
c0de6126:	eb09 0100 	add.w	r1, r9, r0
c0de612a:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de612e:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de6132:	3901      	subs	r1, #1
c0de6134:	4291      	cmp	r1, r2
c0de6136:	d109      	bne.n	c0de614c <extensionNavigate+0x44>
c0de6138:	4448      	add	r0, r9
c0de613a:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de613c:	f7fe fb60 	bl	c0de4800 <nbgl_stepRelease>
c0de6140:	f000 fe44 	bl	c0de6dcc <nbgl_screenRedraw>
c0de6144:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6148:	f000 be27 	b.w	c0de6d9a <nbgl_refresh>
c0de614c:	bd80      	pop	{r7, pc}
c0de614e:	480a      	ldr	r0, [pc, #40]	@ (c0de6178 <extensionNavigate+0x70>)
c0de6150:	eb09 0100 	add.w	r1, r9, r0
c0de6154:	f000 f8f3 	bl	c0de633e <OUTLINED_FUNCTION_10>
c0de6158:	dd06      	ble.n	c0de6168 <extensionNavigate+0x60>
c0de615a:	1c41      	adds	r1, r0, #1
c0de615c:	2000      	movs	r0, #0
c0de615e:	4a06      	ldr	r2, [pc, #24]	@ (c0de6178 <extensionNavigate+0x70>)
c0de6160:	444a      	add	r2, r9
c0de6162:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de6166:	e002      	b.n	c0de616e <extensionNavigate+0x66>
c0de6168:	2000      	movs	r0, #0
c0de616a:	e000      	b.n	c0de616e <extensionNavigate+0x66>
c0de616c:	2008      	movs	r0, #8
c0de616e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6172:	f7ff bf4f 	b.w	c0de6014 <displayExtensionStep>
c0de6176:	bf00      	nop
c0de6178:	00000744 	.word	0x00000744

c0de617c <statusTickerCallback>:
c0de617c:	4802      	ldr	r0, [pc, #8]	@ (c0de6188 <statusTickerCallback+0xc>)
c0de617e:	4448      	add	r0, r9
c0de6180:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de6182:	b100      	cbz	r0, c0de6186 <statusTickerCallback+0xa>
c0de6184:	4700      	bx	r0
c0de6186:	4770      	bx	lr
c0de6188:	00000744 	.word	0x00000744

c0de618c <getChoiceName>:
c0de618c:	b5b0      	push	{r4, r5, r7, lr}
c0de618e:	b090      	sub	sp, #64	@ 0x40
c0de6190:	ad01      	add	r5, sp, #4
c0de6192:	f000 f8cf 	bl	c0de6334 <OUTLINED_FUNCTION_9>
c0de6196:	4814      	ldr	r0, [pc, #80]	@ (c0de61e8 <getChoiceName+0x5c>)
c0de6198:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de619c:	462a      	mov	r2, r5
c0de619e:	4448      	add	r0, r9
c0de61a0:	f000 f8b1 	bl	c0de6306 <OUTLINED_FUNCTION_4>
c0de61a4:	b150      	cbz	r0, c0de61bc <getChoiceName+0x30>
c0de61a6:	7801      	ldrb	r1, [r0, #0]
c0de61a8:	290a      	cmp	r1, #10
c0de61aa:	d009      	beq.n	c0de61c0 <getChoiceName+0x34>
c0de61ac:	2909      	cmp	r1, #9
c0de61ae:	d105      	bne.n	c0de61bc <getChoiceName+0x30>
c0de61b0:	f000 f8ad 	bl	c0de630e <OUTLINED_FUNCTION_5>
c0de61b4:	4605      	mov	r5, r0
c0de61b6:	f855 0b05 	ldr.w	r0, [r5], #5
c0de61ba:	e006      	b.n	c0de61ca <getChoiceName+0x3e>
c0de61bc:	2000      	movs	r0, #0
c0de61be:	e010      	b.n	c0de61e2 <getChoiceName+0x56>
c0de61c0:	f000 f8a5 	bl	c0de630e <OUTLINED_FUNCTION_5>
c0de61c4:	4605      	mov	r5, r0
c0de61c6:	f855 0b08 	ldr.w	r0, [r5], #8
c0de61ca:	f000 fff1 	bl	c0de71b0 <pic>
c0de61ce:	7829      	ldrb	r1, [r5, #0]
c0de61d0:	42a1      	cmp	r1, r4
c0de61d2:	d904      	bls.n	c0de61de <getChoiceName+0x52>
c0de61d4:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de61d8:	f000 ffea 	bl	c0de71b0 <pic>
c0de61dc:	e001      	b.n	c0de61e2 <getChoiceName+0x56>
c0de61de:	4803      	ldr	r0, [pc, #12]	@ (c0de61ec <getChoiceName+0x60>)
c0de61e0:	4478      	add	r0, pc
c0de61e2:	b010      	add	sp, #64	@ 0x40
c0de61e4:	bdb0      	pop	{r4, r5, r7, pc}
c0de61e6:	bf00      	nop
c0de61e8:	00000744 	.word	0x00000744
c0de61ec:	00001b57 	.word	0x00001b57

c0de61f0 <onChoiceSelected>:
c0de61f0:	b570      	push	{r4, r5, r6, lr}
c0de61f2:	b090      	sub	sp, #64	@ 0x40
c0de61f4:	ad01      	add	r5, sp, #4
c0de61f6:	f000 f89d 	bl	c0de6334 <OUTLINED_FUNCTION_9>
c0de61fa:	4e17      	ldr	r6, [pc, #92]	@ (c0de6258 <onChoiceSelected+0x68>)
c0de61fc:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6200:	462a      	mov	r2, r5
c0de6202:	eb09 0006 	add.w	r0, r9, r6
c0de6206:	f000 f87e 	bl	c0de6306 <OUTLINED_FUNCTION_4>
c0de620a:	b318      	cbz	r0, c0de6254 <onChoiceSelected+0x64>
c0de620c:	7801      	ldrb	r1, [r0, #0]
c0de620e:	290a      	cmp	r1, #10
c0de6210:	d008      	beq.n	c0de6224 <onChoiceSelected+0x34>
c0de6212:	2909      	cmp	r1, #9
c0de6214:	d10f      	bne.n	c0de6236 <onChoiceSelected+0x46>
c0de6216:	f000 f87a 	bl	c0de630e <OUTLINED_FUNCTION_5>
c0de621a:	7941      	ldrb	r1, [r0, #5]
c0de621c:	42a1      	cmp	r1, r4
c0de621e:	d90a      	bls.n	c0de6236 <onChoiceSelected+0x46>
c0de6220:	3007      	adds	r0, #7
c0de6222:	e006      	b.n	c0de6232 <onChoiceSelected+0x42>
c0de6224:	f000 f873 	bl	c0de630e <OUTLINED_FUNCTION_5>
c0de6228:	7a01      	ldrb	r1, [r0, #8]
c0de622a:	42a1      	cmp	r1, r4
c0de622c:	d903      	bls.n	c0de6236 <onChoiceSelected+0x46>
c0de622e:	6840      	ldr	r0, [r0, #4]
c0de6230:	4420      	add	r0, r4
c0de6232:	7800      	ldrb	r0, [r0, #0]
c0de6234:	e000      	b.n	c0de6238 <onChoiceSelected+0x48>
c0de6236:	20ff      	movs	r0, #255	@ 0xff
c0de6238:	28ff      	cmp	r0, #255	@ 0xff
c0de623a:	d006      	beq.n	c0de624a <onChoiceSelected+0x5a>
c0de623c:	eb09 0106 	add.w	r1, r9, r6
c0de6240:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de6242:	b112      	cbz	r2, c0de624a <onChoiceSelected+0x5a>
c0de6244:	2100      	movs	r1, #0
c0de6246:	4790      	blx	r2
c0de6248:	e004      	b.n	c0de6254 <onChoiceSelected+0x64>
c0de624a:	eb09 0006 	add.w	r0, r9, r6
c0de624e:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de6250:	b100      	cbz	r0, c0de6254 <onChoiceSelected+0x64>
c0de6252:	4780      	blx	r0
c0de6254:	b010      	add	sp, #64	@ 0x40
c0de6256:	bd70      	pop	{r4, r5, r6, pc}
c0de6258:	00000744 	.word	0x00000744

c0de625c <streamingReviewCallback>:
c0de625c:	b5e0      	push	{r5, r6, r7, lr}
c0de625e:	4608      	mov	r0, r1
c0de6260:	f10d 0107 	add.w	r1, sp, #7
c0de6264:	f7ff fb42 	bl	c0de58ec <buttonGenericCallback>
c0de6268:	b130      	cbz	r0, c0de6278 <streamingReviewCallback+0x1c>
c0de626a:	4804      	ldr	r0, [pc, #16]	@ (c0de627c <streamingReviewCallback+0x20>)
c0de626c:	f000 f85b 	bl	c0de6326 <OUTLINED_FUNCTION_8>
c0de6270:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6274:	f7fe bf1e 	b.w	c0de50b4 <displayStreamingReviewPage>
c0de6278:	bd8c      	pop	{r2, r3, r7, pc}
c0de627a:	bf00      	nop
c0de627c:	00000744 	.word	0x00000744

c0de6280 <onChoiceAccept>:
c0de6280:	4803      	ldr	r0, [pc, #12]	@ (c0de6290 <onChoiceAccept+0x10>)
c0de6282:	4448      	add	r0, r9
c0de6284:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de6286:	b109      	cbz	r1, c0de628c <onChoiceAccept+0xc>
c0de6288:	2001      	movs	r0, #1
c0de628a:	4708      	bx	r1
c0de628c:	4770      	bx	lr
c0de628e:	bf00      	nop
c0de6290:	00000744 	.word	0x00000744

c0de6294 <onChoiceReject>:
c0de6294:	4803      	ldr	r0, [pc, #12]	@ (c0de62a4 <onChoiceReject+0x10>)
c0de6296:	4448      	add	r0, r9
c0de6298:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de629a:	b109      	cbz	r1, c0de62a0 <onChoiceReject+0xc>
c0de629c:	2000      	movs	r0, #0
c0de629e:	4708      	bx	r1
c0de62a0:	4770      	bx	lr
c0de62a2:	bf00      	nop
c0de62a4:	00000744 	.word	0x00000744

c0de62a8 <genericChoiceCallback>:
c0de62a8:	b5e0      	push	{r5, r6, r7, lr}
c0de62aa:	4608      	mov	r0, r1
c0de62ac:	f10d 0107 	add.w	r1, sp, #7
c0de62b0:	f7ff fb1c 	bl	c0de58ec <buttonGenericCallback>
c0de62b4:	b128      	cbz	r0, c0de62c2 <genericChoiceCallback+0x1a>
c0de62b6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de62ba:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de62be:	f7fe bff5 	b.w	c0de52ac <displayChoicePage>
c0de62c2:	bd8c      	pop	{r2, r3, r7, pc}

c0de62c4 <OUTLINED_FUNCTION_0>:
c0de62c4:	460e      	mov	r6, r1
c0de62c6:	2140      	movs	r1, #64	@ 0x40
c0de62c8:	4698      	mov	r8, r3
c0de62ca:	4615      	mov	r5, r2
c0de62cc:	eb09 0400 	add.w	r4, r9, r0
c0de62d0:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de62d4:	f001 ba78 	b.w	c0de77c8 <__aeabi_memclr>

c0de62d8 <OUTLINED_FUNCTION_1>:
c0de62d8:	2200      	movs	r2, #0
c0de62da:	eb09 0100 	add.w	r1, r9, r0
c0de62de:	634a      	str	r2, [r1, #52]	@ 0x34
c0de62e0:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de62e4:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de62e8:	3901      	subs	r1, #1
c0de62ea:	4291      	cmp	r1, r2
c0de62ec:	4770      	bx	lr

c0de62ee <OUTLINED_FUNCTION_2>:
c0de62ee:	eb09 0600 	add.w	r6, r9, r0
c0de62f2:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de62f6:	f001 ba67 	b.w	c0de77c8 <__aeabi_memclr>

c0de62fa <OUTLINED_FUNCTION_3>:
c0de62fa:	eb09 0500 	add.w	r5, r9, r0
c0de62fe:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de6302:	f001 ba61 	b.w	c0de77c8 <__aeabi_memclr>

c0de6306 <OUTLINED_FUNCTION_4>:
c0de6306:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de630a:	f7ff b9d1 	b.w	c0de56b0 <getContentElemAtIdx>

c0de630e <OUTLINED_FUNCTION_5>:
c0de630e:	3004      	adds	r0, #4
c0de6310:	f000 bf4e 	b.w	c0de71b0 <pic>

c0de6314 <OUTLINED_FUNCTION_6>:
c0de6314:	e9cd 6500 	strd	r6, r5, [sp]
c0de6318:	f7fe bdb0 	b.w	c0de4e7c <drawStep>

c0de631c <OUTLINED_FUNCTION_7>:
c0de631c:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de6320:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de6324:	4730      	bx	r6

c0de6326 <OUTLINED_FUNCTION_8>:
c0de6326:	eb09 0100 	add.w	r1, r9, r0
c0de632a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de632e:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de6332:	4770      	bx	lr

c0de6334 <OUTLINED_FUNCTION_9>:
c0de6334:	4604      	mov	r4, r0
c0de6336:	2138      	movs	r1, #56	@ 0x38
c0de6338:	4628      	mov	r0, r5
c0de633a:	f001 ba45 	b.w	c0de77c8 <__aeabi_memclr>

c0de633e <OUTLINED_FUNCTION_10>:
c0de633e:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de6342:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de6346:	3901      	subs	r1, #1
c0de6348:	4281      	cmp	r1, r0
c0de634a:	4770      	bx	lr

c0de634c <bip32_path_read>:
c0de634c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6350:	b10b      	cbz	r3, c0de6356 <bip32_path_read+0xa>
c0de6352:	2b0a      	cmp	r3, #10
c0de6354:	d902      	bls.n	c0de635c <bip32_path_read+0x10>
c0de6356:	2000      	movs	r0, #0
c0de6358:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de635c:	4692      	mov	sl, r2
c0de635e:	460e      	mov	r6, r1
c0de6360:	4683      	mov	fp, r0
c0de6362:	425f      	negs	r7, r3
c0de6364:	2500      	movs	r5, #0
c0de6366:	f04f 0800 	mov.w	r8, #0
c0de636a:	9301      	str	r3, [sp, #4]
c0de636c:	42af      	cmp	r7, r5
c0de636e:	d00c      	beq.n	c0de638a <bip32_path_read+0x3e>
c0de6370:	f108 0404 	add.w	r4, r8, #4
c0de6374:	42b4      	cmp	r4, r6
c0de6376:	d808      	bhi.n	c0de638a <bip32_path_read+0x3e>
c0de6378:	4658      	mov	r0, fp
c0de637a:	4641      	mov	r1, r8
c0de637c:	f000 fb6f 	bl	c0de6a5e <read_u32_be>
c0de6380:	f84a 0008 	str.w	r0, [sl, r8]
c0de6384:	3d01      	subs	r5, #1
c0de6386:	46a0      	mov	r8, r4
c0de6388:	e7f0      	b.n	c0de636c <bip32_path_read+0x20>
c0de638a:	9a01      	ldr	r2, [sp, #4]
c0de638c:	4269      	negs	r1, r5
c0de638e:	2000      	movs	r0, #0
c0de6390:	4291      	cmp	r1, r2
c0de6392:	bf28      	it	cs
c0de6394:	2001      	movcs	r0, #1
c0de6396:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de639a <buffer_seek_cur>:
c0de639a:	6882      	ldr	r2, [r0, #8]
c0de639c:	1889      	adds	r1, r1, r2
c0de639e:	d205      	bcs.n	c0de63ac <buffer_seek_cur+0x12>
c0de63a0:	6842      	ldr	r2, [r0, #4]
c0de63a2:	4291      	cmp	r1, r2
c0de63a4:	bf9e      	ittt	ls
c0de63a6:	6081      	strls	r1, [r0, #8]
c0de63a8:	2001      	movls	r0, #1
c0de63aa:	4770      	bxls	lr
c0de63ac:	2000      	movs	r0, #0
c0de63ae:	4770      	bx	lr

c0de63b0 <buffer_read_u8>:
c0de63b0:	b510      	push	{r4, lr}
c0de63b2:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de63b6:	429a      	cmp	r2, r3
c0de63b8:	d00a      	beq.n	c0de63d0 <buffer_read_u8+0x20>
c0de63ba:	6804      	ldr	r4, [r0, #0]
c0de63bc:	5ce4      	ldrb	r4, [r4, r3]
c0de63be:	700c      	strb	r4, [r1, #0]
c0de63c0:	6881      	ldr	r1, [r0, #8]
c0de63c2:	3101      	adds	r1, #1
c0de63c4:	d206      	bcs.n	c0de63d4 <buffer_read_u8+0x24>
c0de63c6:	6844      	ldr	r4, [r0, #4]
c0de63c8:	42a1      	cmp	r1, r4
c0de63ca:	bf98      	it	ls
c0de63cc:	6081      	strls	r1, [r0, #8]
c0de63ce:	e001      	b.n	c0de63d4 <buffer_read_u8+0x24>
c0de63d0:	2000      	movs	r0, #0
c0de63d2:	7008      	strb	r0, [r1, #0]
c0de63d4:	1ad0      	subs	r0, r2, r3
c0de63d6:	bf18      	it	ne
c0de63d8:	2001      	movne	r0, #1
c0de63da:	bd10      	pop	{r4, pc}

c0de63dc <buffer_read_u64>:
c0de63dc:	b570      	push	{r4, r5, r6, lr}
c0de63de:	f000 f87d 	bl	c0de64dc <OUTLINED_FUNCTION_0>
c0de63e2:	2e07      	cmp	r6, #7
c0de63e4:	d904      	bls.n	c0de63f0 <buffer_read_u64+0x14>
c0de63e6:	6820      	ldr	r0, [r4, #0]
c0de63e8:	b132      	cbz	r2, c0de63f8 <buffer_read_u64+0x1c>
c0de63ea:	f000 fb6f 	bl	c0de6acc <read_u64_le>
c0de63ee:	e005      	b.n	c0de63fc <buffer_read_u64+0x20>
c0de63f0:	2000      	movs	r0, #0
c0de63f2:	e9c5 0000 	strd	r0, r0, [r5]
c0de63f6:	e00c      	b.n	c0de6412 <buffer_read_u64+0x36>
c0de63f8:	f000 fb3d 	bl	c0de6a76 <read_u64_be>
c0de63fc:	e9c5 0100 	strd	r0, r1, [r5]
c0de6400:	68a0      	ldr	r0, [r4, #8]
c0de6402:	f110 0f09 	cmn.w	r0, #9
c0de6406:	d804      	bhi.n	c0de6412 <buffer_read_u64+0x36>
c0de6408:	6861      	ldr	r1, [r4, #4]
c0de640a:	3008      	adds	r0, #8
c0de640c:	4288      	cmp	r0, r1
c0de640e:	bf98      	it	ls
c0de6410:	60a0      	strls	r0, [r4, #8]
c0de6412:	2000      	movs	r0, #0
c0de6414:	2e07      	cmp	r6, #7
c0de6416:	bf88      	it	hi
c0de6418:	2001      	movhi	r0, #1
c0de641a:	bd70      	pop	{r4, r5, r6, pc}

c0de641c <buffer_read_varint>:
c0de641c:	b5b0      	push	{r4, r5, r7, lr}
c0de641e:	4604      	mov	r4, r0
c0de6420:	460d      	mov	r5, r1
c0de6422:	6800      	ldr	r0, [r0, #0]
c0de6424:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6428:	4410      	add	r0, r2
c0de642a:	1a89      	subs	r1, r1, r2
c0de642c:	462a      	mov	r2, r5
c0de642e:	f000 fbb7 	bl	c0de6ba0 <varint_read>
c0de6432:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de6436:	dd0a      	ble.n	c0de644e <buffer_read_varint+0x32>
c0de6438:	68a1      	ldr	r1, [r4, #8]
c0de643a:	1840      	adds	r0, r0, r1
c0de643c:	d205      	bcs.n	c0de644a <buffer_read_varint+0x2e>
c0de643e:	6861      	ldr	r1, [r4, #4]
c0de6440:	4288      	cmp	r0, r1
c0de6442:	bf9e      	ittt	ls
c0de6444:	60a0      	strls	r0, [r4, #8]
c0de6446:	2001      	movls	r0, #1
c0de6448:	bdb0      	popls	{r4, r5, r7, pc}
c0de644a:	2000      	movs	r0, #0
c0de644c:	bdb0      	pop	{r4, r5, r7, pc}
c0de644e:	2000      	movs	r0, #0
c0de6450:	e9c5 0000 	strd	r0, r0, [r5]
c0de6454:	bdb0      	pop	{r4, r5, r7, pc}

c0de6456 <buffer_read_bip32_path>:
c0de6456:	b5b0      	push	{r4, r5, r7, lr}
c0de6458:	4604      	mov	r4, r0
c0de645a:	4615      	mov	r5, r2
c0de645c:	460a      	mov	r2, r1
c0de645e:	6800      	ldr	r0, [r0, #0]
c0de6460:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6464:	4418      	add	r0, r3
c0de6466:	1ac9      	subs	r1, r1, r3
c0de6468:	462b      	mov	r3, r5
c0de646a:	f7ff ff6f 	bl	c0de634c <bip32_path_read>
c0de646e:	b140      	cbz	r0, c0de6482 <buffer_read_bip32_path+0x2c>
c0de6470:	68a2      	ldr	r2, [r4, #8]
c0de6472:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de6476:	4291      	cmp	r1, r2
c0de6478:	d303      	bcc.n	c0de6482 <buffer_read_bip32_path+0x2c>
c0de647a:	6862      	ldr	r2, [r4, #4]
c0de647c:	4291      	cmp	r1, r2
c0de647e:	bf98      	it	ls
c0de6480:	60a1      	strls	r1, [r4, #8]
c0de6482:	bdb0      	pop	{r4, r5, r7, pc}

c0de6484 <buffer_copy>:
c0de6484:	b5b0      	push	{r4, r5, r7, lr}
c0de6486:	4614      	mov	r4, r2
c0de6488:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de648c:	1a9d      	subs	r5, r3, r2
c0de648e:	42a5      	cmp	r5, r4
c0de6490:	d806      	bhi.n	c0de64a0 <buffer_copy+0x1c>
c0de6492:	6800      	ldr	r0, [r0, #0]
c0de6494:	4402      	add	r2, r0
c0de6496:	4608      	mov	r0, r1
c0de6498:	4611      	mov	r1, r2
c0de649a:	462a      	mov	r2, r5
c0de649c:	f001 f98c 	bl	c0de77b8 <__aeabi_memmove>
c0de64a0:	2000      	movs	r0, #0
c0de64a2:	42a5      	cmp	r5, r4
c0de64a4:	bf98      	it	ls
c0de64a6:	2001      	movls	r0, #1
c0de64a8:	bdb0      	pop	{r4, r5, r7, pc}

c0de64aa <buffer_move>:
c0de64aa:	b5b0      	push	{r4, r5, r7, lr}
c0de64ac:	4615      	mov	r5, r2
c0de64ae:	4604      	mov	r4, r0
c0de64b0:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de64b4:	1a12      	subs	r2, r2, r0
c0de64b6:	42aa      	cmp	r2, r5
c0de64b8:	bf84      	itt	hi
c0de64ba:	2000      	movhi	r0, #0
c0de64bc:	bdb0      	pophi	{r4, r5, r7, pc}
c0de64be:	6823      	ldr	r3, [r4, #0]
c0de64c0:	4403      	add	r3, r0
c0de64c2:	4608      	mov	r0, r1
c0de64c4:	4619      	mov	r1, r3
c0de64c6:	f001 f977 	bl	c0de77b8 <__aeabi_memmove>
c0de64ca:	68a0      	ldr	r0, [r4, #8]
c0de64cc:	1940      	adds	r0, r0, r5
c0de64ce:	d203      	bcs.n	c0de64d8 <buffer_move+0x2e>
c0de64d0:	6861      	ldr	r1, [r4, #4]
c0de64d2:	4288      	cmp	r0, r1
c0de64d4:	bf98      	it	ls
c0de64d6:	60a0      	strls	r0, [r4, #8]
c0de64d8:	2001      	movs	r0, #1
c0de64da:	bdb0      	pop	{r4, r5, r7, pc}

c0de64dc <OUTLINED_FUNCTION_0>:
c0de64dc:	4604      	mov	r4, r0
c0de64de:	460d      	mov	r5, r1
c0de64e0:	6840      	ldr	r0, [r0, #4]
c0de64e2:	68a1      	ldr	r1, [r4, #8]
c0de64e4:	1a46      	subs	r6, r0, r1
c0de64e6:	4770      	bx	lr

c0de64e8 <bip32_derive_with_seed_init_privkey_256>:
c0de64e8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de64ec:	b095      	sub	sp, #84	@ 0x54
c0de64ee:	460d      	mov	r5, r1
c0de64f0:	4607      	mov	r7, r0
c0de64f2:	a904      	add	r1, sp, #16
c0de64f4:	469a      	mov	sl, r3
c0de64f6:	4614      	mov	r4, r2
c0de64f8:	4628      	mov	r0, r5
c0de64fa:	f000 ffb9 	bl	c0de7470 <cx_ecdomain_parameters_length>
c0de64fe:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6502:	4606      	mov	r6, r0
c0de6504:	b9e0      	cbnz	r0, c0de6540 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6506:	9804      	ldr	r0, [sp, #16]
c0de6508:	2820      	cmp	r0, #32
c0de650a:	d117      	bne.n	c0de653c <bip32_derive_with_seed_init_privkey_256+0x54>
c0de650c:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de650e:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6512:	ab05      	add	r3, sp, #20
c0de6514:	e9cd 3200 	strd	r3, r2, [sp]
c0de6518:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de651c:	4638      	mov	r0, r7
c0de651e:	4629      	mov	r1, r5
c0de6520:	4622      	mov	r2, r4
c0de6522:	4653      	mov	r3, sl
c0de6524:	f000 f818 	bl	c0de6558 <os_derive_bip32_with_seed_no_throw>
c0de6528:	4606      	mov	r6, r0
c0de652a:	b948      	cbnz	r0, c0de6540 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de652c:	9a04      	ldr	r2, [sp, #16]
c0de652e:	a905      	add	r1, sp, #20
c0de6530:	4628      	mov	r0, r5
c0de6532:	4643      	mov	r3, r8
c0de6534:	f000 fc12 	bl	c0de6d5c <cx_ecfp_init_private_key_no_throw>
c0de6538:	4606      	mov	r6, r0
c0de653a:	e001      	b.n	c0de6540 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de653c:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6540:	a805      	add	r0, sp, #20
c0de6542:	2140      	movs	r1, #64	@ 0x40
c0de6544:	f001 f94e 	bl	c0de77e4 <explicit_bzero>
c0de6548:	b116      	cbz	r6, c0de6550 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de654a:	4640      	mov	r0, r8
c0de654c:	f000 f89f 	bl	c0de668e <OUTLINED_FUNCTION_0>
c0de6550:	4630      	mov	r0, r6
c0de6552:	b015      	add	sp, #84	@ 0x54
c0de6554:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6558 <os_derive_bip32_with_seed_no_throw>:
c0de6558:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de655c:	b090      	sub	sp, #64	@ 0x40
c0de655e:	f10d 0810 	add.w	r8, sp, #16
c0de6562:	4607      	mov	r7, r0
c0de6564:	469b      	mov	fp, r3
c0de6566:	4616      	mov	r6, r2
c0de6568:	460c      	mov	r4, r1
c0de656a:	4640      	mov	r0, r8
c0de656c:	f001 f970 	bl	c0de7850 <setjmp>
c0de6570:	b285      	uxth	r5, r0
c0de6572:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6576:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de657a:	b155      	cbz	r5, c0de6592 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de657c:	2000      	movs	r0, #0
c0de657e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6582:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6584:	f001 f818 	bl	c0de75b8 <try_context_set>
c0de6588:	2140      	movs	r1, #64	@ 0x40
c0de658a:	4650      	mov	r0, sl
c0de658c:	f001 f92a 	bl	c0de77e4 <explicit_bzero>
c0de6590:	e012      	b.n	c0de65b8 <os_derive_bip32_with_seed_no_throw+0x60>
c0de6592:	a804      	add	r0, sp, #16
c0de6594:	f001 f810 	bl	c0de75b8 <try_context_set>
c0de6598:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de659a:	900e      	str	r0, [sp, #56]	@ 0x38
c0de659c:	4668      	mov	r0, sp
c0de659e:	4632      	mov	r2, r6
c0de65a0:	465b      	mov	r3, fp
c0de65a2:	f8c0 a000 	str.w	sl, [r0]
c0de65a6:	6041      	str	r1, [r0, #4]
c0de65a8:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de65aa:	6081      	str	r1, [r0, #8]
c0de65ac:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de65ae:	60c1      	str	r1, [r0, #12]
c0de65b0:	4638      	mov	r0, r7
c0de65b2:	4621      	mov	r1, r4
c0de65b4:	f000 ff66 	bl	c0de7484 <os_perso_derive_node_with_seed_key>
c0de65b8:	f000 fff6 	bl	c0de75a8 <try_context_get>
c0de65bc:	4540      	cmp	r0, r8
c0de65be:	d102      	bne.n	c0de65c6 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de65c0:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de65c2:	f000 fff9 	bl	c0de75b8 <try_context_set>
c0de65c6:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de65ca:	b918      	cbnz	r0, c0de65d4 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de65cc:	4628      	mov	r0, r5
c0de65ce:	b010      	add	sp, #64	@ 0x40
c0de65d0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de65d4:	f000 fc47 	bl	c0de6e66 <os_longjmp>

c0de65d8 <bip32_derive_with_seed_get_pubkey_256>:
c0de65d8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de65da:	b0a1      	sub	sp, #132	@ 0x84
c0de65dc:	460e      	mov	r6, r1
c0de65de:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de65e0:	9103      	str	r1, [sp, #12]
c0de65e2:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de65e4:	9102      	str	r1, [sp, #8]
c0de65e6:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de65e8:	9101      	str	r1, [sp, #4]
c0de65ea:	a917      	add	r1, sp, #92	@ 0x5c
c0de65ec:	9100      	str	r1, [sp, #0]
c0de65ee:	4631      	mov	r1, r6
c0de65f0:	f7ff ff7a 	bl	c0de64e8 <bip32_derive_with_seed_init_privkey_256>
c0de65f4:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de65f6:	4605      	mov	r5, r0
c0de65f8:	b9b8      	cbnz	r0, c0de662a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65fa:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de65fc:	2301      	movs	r3, #1
c0de65fe:	9000      	str	r0, [sp, #0]
c0de6600:	af04      	add	r7, sp, #16
c0de6602:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6604:	4630      	mov	r0, r6
c0de6606:	4639      	mov	r1, r7
c0de6608:	f000 fba3 	bl	c0de6d52 <cx_ecfp_generate_pair2_no_throw>
c0de660c:	4605      	mov	r5, r0
c0de660e:	b960      	cbnz	r0, c0de662a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6610:	9805      	ldr	r0, [sp, #20]
c0de6612:	2841      	cmp	r0, #65	@ 0x41
c0de6614:	d107      	bne.n	c0de6626 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6616:	f107 0108 	add.w	r1, r7, #8
c0de661a:	4620      	mov	r0, r4
c0de661c:	2241      	movs	r2, #65	@ 0x41
c0de661e:	f001 f8c9 	bl	c0de77b4 <__aeabi_memcpy>
c0de6622:	2500      	movs	r5, #0
c0de6624:	e001      	b.n	c0de662a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6626:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de662a:	a817      	add	r0, sp, #92	@ 0x5c
c0de662c:	f000 f82f 	bl	c0de668e <OUTLINED_FUNCTION_0>
c0de6630:	b11d      	cbz	r5, c0de663a <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6632:	4620      	mov	r0, r4
c0de6634:	2141      	movs	r1, #65	@ 0x41
c0de6636:	f001 f8d5 	bl	c0de77e4 <explicit_bzero>
c0de663a:	4628      	mov	r0, r5
c0de663c:	b021      	add	sp, #132	@ 0x84
c0de663e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6640 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6640:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6642:	b08f      	sub	sp, #60	@ 0x3c
c0de6644:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6646:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6648:	683c      	ldr	r4, [r7, #0]
c0de664a:	9503      	str	r5, [sp, #12]
c0de664c:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de664e:	9502      	str	r5, [sp, #8]
c0de6650:	2500      	movs	r5, #0
c0de6652:	9501      	str	r5, [sp, #4]
c0de6654:	ad05      	add	r5, sp, #20
c0de6656:	9500      	str	r5, [sp, #0]
c0de6658:	f7ff ff46 	bl	c0de64e8 <bip32_derive_with_seed_init_privkey_256>
c0de665c:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de665e:	4606      	mov	r6, r0
c0de6660:	b950      	cbnz	r0, c0de6678 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6662:	ae14      	add	r6, sp, #80	@ 0x50
c0de6664:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6666:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6668:	e9cd 6500 	strd	r6, r5, [sp]
c0de666c:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6670:	a805      	add	r0, sp, #20
c0de6672:	f000 fb69 	bl	c0de6d48 <cx_ecdsa_sign_no_throw>
c0de6676:	4606      	mov	r6, r0
c0de6678:	a805      	add	r0, sp, #20
c0de667a:	f000 f808 	bl	c0de668e <OUTLINED_FUNCTION_0>
c0de667e:	b11e      	cbz	r6, c0de6688 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6680:	4628      	mov	r0, r5
c0de6682:	4621      	mov	r1, r4
c0de6684:	f001 f8ae 	bl	c0de77e4 <explicit_bzero>
c0de6688:	4630      	mov	r0, r6
c0de668a:	b00f      	add	sp, #60	@ 0x3c
c0de668c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de668e <OUTLINED_FUNCTION_0>:
c0de668e:	2128      	movs	r1, #40	@ 0x28
c0de6690:	f001 b8a8 	b.w	c0de77e4 <explicit_bzero>

c0de6694 <format_u64>:
c0de6694:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6698:	b1f9      	cbz	r1, c0de66da <format_u64+0x46>
c0de669a:	4615      	mov	r5, r2
c0de669c:	4604      	mov	r4, r0
c0de669e:	f1a1 0801 	sub.w	r8, r1, #1
c0de66a2:	2700      	movs	r7, #0
c0de66a4:	2600      	movs	r6, #0
c0de66a6:	f1b5 000a 	subs.w	r0, r5, #10
c0de66aa:	f173 0000 	sbcs.w	r0, r3, #0
c0de66ae:	d316      	bcc.n	c0de66de <format_u64+0x4a>
c0de66b0:	4619      	mov	r1, r3
c0de66b2:	4628      	mov	r0, r5
c0de66b4:	220a      	movs	r2, #10
c0de66b6:	2300      	movs	r3, #0
c0de66b8:	f001 f88a 	bl	c0de77d0 <__aeabi_uldivmod>
c0de66bc:	460b      	mov	r3, r1
c0de66be:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de66c2:	1cba      	adds	r2, r7, #2
c0de66c4:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de66c8:	4605      	mov	r5, r0
c0de66ca:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de66ce:	55e1      	strb	r1, [r4, r7]
c0de66d0:	1c79      	adds	r1, r7, #1
c0de66d2:	4542      	cmp	r2, r8
c0de66d4:	460f      	mov	r7, r1
c0de66d6:	d9e6      	bls.n	c0de66a6 <format_u64+0x12>
c0de66d8:	e012      	b.n	c0de6700 <format_u64+0x6c>
c0de66da:	2600      	movs	r6, #0
c0de66dc:	e010      	b.n	c0de6700 <format_u64+0x6c>
c0de66de:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de66e2:	19e1      	adds	r1, r4, r7
c0de66e4:	55e0      	strb	r0, [r4, r7]
c0de66e6:	2000      	movs	r0, #0
c0de66e8:	7048      	strb	r0, [r1, #1]
c0de66ea:	b2c1      	uxtb	r1, r0
c0de66ec:	428f      	cmp	r7, r1
c0de66ee:	d906      	bls.n	c0de66fe <format_u64+0x6a>
c0de66f0:	5c62      	ldrb	r2, [r4, r1]
c0de66f2:	5de3      	ldrb	r3, [r4, r7]
c0de66f4:	3001      	adds	r0, #1
c0de66f6:	5463      	strb	r3, [r4, r1]
c0de66f8:	55e2      	strb	r2, [r4, r7]
c0de66fa:	3f01      	subs	r7, #1
c0de66fc:	e7f5      	b.n	c0de66ea <format_u64+0x56>
c0de66fe:	2601      	movs	r6, #1
c0de6700:	4630      	mov	r0, r6
c0de6702:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6706 <format_fpu64>:
c0de6706:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de670a:	b086      	sub	sp, #24
c0de670c:	466c      	mov	r4, sp
c0de670e:	4688      	mov	r8, r1
c0de6710:	4605      	mov	r5, r0
c0de6712:	2115      	movs	r1, #21
c0de6714:	461e      	mov	r6, r3
c0de6716:	4617      	mov	r7, r2
c0de6718:	4620      	mov	r0, r4
c0de671a:	f001 f855 	bl	c0de77c8 <__aeabi_memclr>
c0de671e:	4620      	mov	r0, r4
c0de6720:	2115      	movs	r1, #21
c0de6722:	463a      	mov	r2, r7
c0de6724:	4633      	mov	r3, r6
c0de6726:	f7ff ffb5 	bl	c0de6694 <format_u64>
c0de672a:	b340      	cbz	r0, c0de677e <format_fpu64+0x78>
c0de672c:	466f      	mov	r7, sp
c0de672e:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6730:	4638      	mov	r0, r7
c0de6732:	f001 f8a5 	bl	c0de7880 <strlen>
c0de6736:	42b0      	cmp	r0, r6
c0de6738:	d910      	bls.n	c0de675c <format_fpu64+0x56>
c0de673a:	1831      	adds	r1, r6, r0
c0de673c:	3101      	adds	r1, #1
c0de673e:	4541      	cmp	r1, r8
c0de6740:	d21d      	bcs.n	c0de677e <format_fpu64+0x78>
c0de6742:	1b84      	subs	r4, r0, r6
c0de6744:	4628      	mov	r0, r5
c0de6746:	4639      	mov	r1, r7
c0de6748:	4622      	mov	r2, r4
c0de674a:	f001 f833 	bl	c0de77b4 <__aeabi_memcpy>
c0de674e:	1928      	adds	r0, r5, r4
c0de6750:	212e      	movs	r1, #46	@ 0x2e
c0de6752:	4632      	mov	r2, r6
c0de6754:	f800 1b01 	strb.w	r1, [r0], #1
c0de6758:	1939      	adds	r1, r7, r4
c0de675a:	e015      	b.n	c0de6788 <format_fpu64+0x82>
c0de675c:	1a32      	subs	r2, r6, r0
c0de675e:	1c91      	adds	r1, r2, #2
c0de6760:	4541      	cmp	r1, r8
c0de6762:	d20c      	bcs.n	c0de677e <format_fpu64+0x78>
c0de6764:	202e      	movs	r0, #46	@ 0x2e
c0de6766:	2330      	movs	r3, #48	@ 0x30
c0de6768:	2400      	movs	r4, #0
c0de676a:	7068      	strb	r0, [r5, #1]
c0de676c:	1ca8      	adds	r0, r5, #2
c0de676e:	702b      	strb	r3, [r5, #0]
c0de6770:	b2a5      	uxth	r5, r4
c0de6772:	42aa      	cmp	r2, r5
c0de6774:	d905      	bls.n	c0de6782 <format_fpu64+0x7c>
c0de6776:	f800 3b01 	strb.w	r3, [r0], #1
c0de677a:	3401      	adds	r4, #1
c0de677c:	e7f8      	b.n	c0de6770 <format_fpu64+0x6a>
c0de677e:	2000      	movs	r0, #0
c0de6780:	e005      	b.n	c0de678e <format_fpu64+0x88>
c0de6782:	eba8 0201 	sub.w	r2, r8, r1
c0de6786:	4669      	mov	r1, sp
c0de6788:	f001 f894 	bl	c0de78b4 <strncpy>
c0de678c:	2001      	movs	r0, #1
c0de678e:	b006      	add	sp, #24
c0de6790:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6794 <format_hex>:
c0de6794:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6796:	4604      	mov	r4, r0
c0de6798:	0048      	lsls	r0, r1, #1
c0de679a:	f100 0c01 	add.w	ip, r0, #1
c0de679e:	459c      	cmp	ip, r3
c0de67a0:	d902      	bls.n	c0de67a8 <format_hex+0x14>
c0de67a2:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de67a6:	e018      	b.n	c0de67da <format_hex+0x46>
c0de67a8:	480d      	ldr	r0, [pc, #52]	@ (c0de67e0 <format_hex+0x4c>)
c0de67aa:	2500      	movs	r5, #0
c0de67ac:	4478      	add	r0, pc
c0de67ae:	b191      	cbz	r1, c0de67d6 <format_hex+0x42>
c0de67b0:	1cef      	adds	r7, r5, #3
c0de67b2:	429f      	cmp	r7, r3
c0de67b4:	d80d      	bhi.n	c0de67d2 <format_hex+0x3e>
c0de67b6:	7827      	ldrb	r7, [r4, #0]
c0de67b8:	3901      	subs	r1, #1
c0de67ba:	093f      	lsrs	r7, r7, #4
c0de67bc:	5dc7      	ldrb	r7, [r0, r7]
c0de67be:	5557      	strb	r7, [r2, r5]
c0de67c0:	1957      	adds	r7, r2, r5
c0de67c2:	3502      	adds	r5, #2
c0de67c4:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de67c8:	f006 060f 	and.w	r6, r6, #15
c0de67cc:	5d86      	ldrb	r6, [r0, r6]
c0de67ce:	707e      	strb	r6, [r7, #1]
c0de67d0:	e7ed      	b.n	c0de67ae <format_hex+0x1a>
c0de67d2:	f105 0c01 	add.w	ip, r5, #1
c0de67d6:	2000      	movs	r0, #0
c0de67d8:	5550      	strb	r0, [r2, r5]
c0de67da:	4660      	mov	r0, ip
c0de67dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de67de:	bf00      	nop
c0de67e0:	00001569 	.word	0x00001569

c0de67e4 <app_ticker_event_callback>:
c0de67e4:	4770      	bx	lr
	...

c0de67e8 <io_event>:
c0de67e8:	b580      	push	{r7, lr}
c0de67ea:	480a      	ldr	r0, [pc, #40]	@ (c0de6814 <io_event+0x2c>)
c0de67ec:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de67f0:	290e      	cmp	r1, #14
c0de67f2:	d005      	beq.n	c0de6800 <io_event+0x18>
c0de67f4:	2905      	cmp	r1, #5
c0de67f6:	d108      	bne.n	c0de680a <io_event+0x22>
c0de67f8:	4448      	add	r0, r9
c0de67fa:	f000 fa05 	bl	c0de6c08 <ux_process_button_event>
c0de67fe:	e006      	b.n	c0de680e <io_event+0x26>
c0de6800:	f7ff fff0 	bl	c0de67e4 <app_ticker_event_callback>
c0de6804:	f000 fa44 	bl	c0de6c90 <ux_process_ticker_event>
c0de6808:	e001      	b.n	c0de680e <io_event+0x26>
c0de680a:	f000 fa59 	bl	c0de6cc0 <ux_process_default_event>
c0de680e:	2001      	movs	r0, #1
c0de6810:	bd80      	pop	{r7, pc}
c0de6812:	bf00      	nop
c0de6814:	000007ac 	.word	0x000007ac

c0de6818 <io_init>:
c0de6818:	4802      	ldr	r0, [pc, #8]	@ (c0de6824 <io_init+0xc>)
c0de681a:	2101      	movs	r1, #1
c0de681c:	f809 1000 	strb.w	r1, [r9, r0]
c0de6820:	4770      	bx	lr
c0de6822:	bf00      	nop
c0de6824:	000008bc 	.word	0x000008bc

c0de6828 <io_recv_command>:
c0de6828:	b510      	push	{r4, lr}
c0de682a:	4c09      	ldr	r4, [pc, #36]	@ (c0de6850 <io_recv_command+0x28>)
c0de682c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6830:	2801      	cmp	r0, #1
c0de6832:	d104      	bne.n	c0de683e <io_recv_command+0x16>
c0de6834:	f000 fe96 	bl	c0de7564 <os_io_start>
c0de6838:	2000      	movs	r0, #0
c0de683a:	f809 0004 	strb.w	r0, [r9, r4]
c0de683e:	2000      	movs	r0, #0
c0de6840:	2800      	cmp	r0, #0
c0de6842:	dc03      	bgt.n	c0de684c <io_recv_command+0x24>
c0de6844:	2001      	movs	r0, #1
c0de6846:	f7fc fe69 	bl	c0de351c <io_legacy_apdu_rx>
c0de684a:	e7f9      	b.n	c0de6840 <io_recv_command+0x18>
c0de684c:	bd10      	pop	{r4, pc}
c0de684e:	bf00      	nop
c0de6850:	000008bc 	.word	0x000008bc

c0de6854 <io_send_response_buffers>:
c0de6854:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6858:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de68ec <io_send_response_buffers+0x98>
c0de685c:	4690      	mov	r8, r2
c0de685e:	460f      	mov	r7, r1
c0de6860:	4606      	mov	r6, r0
c0de6862:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6866:	2500      	movs	r5, #0
c0de6868:	b1b6      	cbz	r6, c0de6898 <io_send_response_buffers+0x44>
c0de686a:	b1af      	cbz	r7, c0de6898 <io_send_response_buffers+0x44>
c0de686c:	2500      	movs	r5, #0
c0de686e:	b19f      	cbz	r7, c0de6898 <io_send_response_buffers+0x44>
c0de6870:	eb09 000a 	add.w	r0, r9, sl
c0de6874:	1b62      	subs	r2, r4, r5
c0de6876:	1941      	adds	r1, r0, r5
c0de6878:	4630      	mov	r0, r6
c0de687a:	f7ff fe03 	bl	c0de6484 <buffer_copy>
c0de687e:	b130      	cbz	r0, c0de688e <io_send_response_buffers+0x3a>
c0de6880:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6884:	360c      	adds	r6, #12
c0de6886:	3f01      	subs	r7, #1
c0de6888:	4428      	add	r0, r5
c0de688a:	1a45      	subs	r5, r0, r1
c0de688c:	e7ef      	b.n	c0de686e <io_send_response_buffers+0x1a>
c0de688e:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6892:	2600      	movs	r6, #0
c0de6894:	2700      	movs	r7, #0
c0de6896:	e7e6      	b.n	c0de6866 <io_send_response_buffers+0x12>
c0de6898:	fa1f f688 	uxth.w	r6, r8
c0de689c:	eb09 000a 	add.w	r0, r9, sl
c0de68a0:	4629      	mov	r1, r5
c0de68a2:	4632      	mov	r2, r6
c0de68a4:	f000 f9aa 	bl	c0de6bfc <write_u16_be>
c0de68a8:	4811      	ldr	r0, [pc, #68]	@ (c0de68f0 <io_send_response_buffers+0x9c>)
c0de68aa:	1ca9      	adds	r1, r5, #2
c0de68ac:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de68b0:	b118      	cbz	r0, c0de68ba <io_send_response_buffers+0x66>
c0de68b2:	4810      	ldr	r0, [pc, #64]	@ (c0de68f4 <io_send_response_buffers+0xa0>)
c0de68b4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de68b8:	b928      	cbnz	r0, c0de68c6 <io_send_response_buffers+0x72>
c0de68ba:	f000 f81f 	bl	c0de68fc <OUTLINED_FUNCTION_0>
c0de68be:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de68c2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de68c6:	f000 f819 	bl	c0de68fc <OUTLINED_FUNCTION_0>
c0de68ca:	2800      	cmp	r0, #0
c0de68cc:	d40a      	bmi.n	c0de68e4 <io_send_response_buffers+0x90>
c0de68ce:	480a      	ldr	r0, [pc, #40]	@ (c0de68f8 <io_send_response_buffers+0xa4>)
c0de68d0:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de68d4:	fab1 f181 	clz	r1, r1
c0de68d8:	f859 0000 	ldr.w	r0, [r9, r0]
c0de68dc:	0949      	lsrs	r1, r1, #5
c0de68de:	7001      	strb	r1, [r0, #0]
c0de68e0:	f000 fe10 	bl	c0de7504 <os_lib_end>
c0de68e4:	20ff      	movs	r0, #255	@ 0xff
c0de68e6:	f000 fe29 	bl	c0de753c <os_sched_exit>
c0de68ea:	bf00      	nop
c0de68ec:	00000407 	.word	0x00000407
c0de68f0:	000008cc 	.word	0x000008cc
c0de68f4:	000008cd 	.word	0x000008cd
c0de68f8:	000008d0 	.word	0x000008d0

c0de68fc <OUTLINED_FUNCTION_0>:
c0de68fc:	eb09 000a 	add.w	r0, r9, sl
c0de6900:	b289      	uxth	r1, r1
c0de6902:	f7fc bdf7 	b.w	c0de34f4 <io_legacy_apdu_tx>

c0de6906 <app_exit>:
c0de6906:	20ff      	movs	r0, #255	@ 0xff
c0de6908:	f000 fe18 	bl	c0de753c <os_sched_exit>

c0de690c <common_app_init>:
c0de690c:	b580      	push	{r7, lr}
c0de690e:	f000 fa49 	bl	c0de6da4 <nbgl_objInit>
c0de6912:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6916:	f7fc bedb 	b.w	c0de36d0 <io_seproxyhal_init>
	...

c0de691c <standalone_app_main>:
c0de691c:	b5b0      	push	{r4, r5, r7, lr}
c0de691e:	b08c      	sub	sp, #48	@ 0x30
c0de6920:	4816      	ldr	r0, [pc, #88]	@ (c0de697c <standalone_app_main+0x60>)
c0de6922:	2500      	movs	r5, #0
c0de6924:	466c      	mov	r4, sp
c0de6926:	f809 5000 	strb.w	r5, [r9, r0]
c0de692a:	4815      	ldr	r0, [pc, #84]	@ (c0de6980 <standalone_app_main+0x64>)
c0de692c:	f849 5000 	str.w	r5, [r9, r0]
c0de6930:	4814      	ldr	r0, [pc, #80]	@ (c0de6984 <standalone_app_main+0x68>)
c0de6932:	f809 5000 	strb.w	r5, [r9, r0]
c0de6936:	4620      	mov	r0, r4
c0de6938:	f000 ff8a 	bl	c0de7850 <setjmp>
c0de693c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6940:	0400      	lsls	r0, r0, #16
c0de6942:	d108      	bne.n	c0de6956 <standalone_app_main+0x3a>
c0de6944:	4668      	mov	r0, sp
c0de6946:	f000 fe37 	bl	c0de75b8 <try_context_set>
c0de694a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de694c:	f7ff ffde 	bl	c0de690c <common_app_init>
c0de6950:	f7f9 fcf2 	bl	c0de0338 <app_main>
c0de6954:	e004      	b.n	c0de6960 <standalone_app_main+0x44>
c0de6956:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6958:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de695c:	f000 fe2c 	bl	c0de75b8 <try_context_set>
c0de6960:	f000 fe22 	bl	c0de75a8 <try_context_get>
c0de6964:	42a0      	cmp	r0, r4
c0de6966:	d102      	bne.n	c0de696e <standalone_app_main+0x52>
c0de6968:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de696a:	f000 fe25 	bl	c0de75b8 <try_context_set>
c0de696e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6972:	b908      	cbnz	r0, c0de6978 <standalone_app_main+0x5c>
c0de6974:	f7ff ffc7 	bl	c0de6906 <app_exit>
c0de6978:	f000 fa75 	bl	c0de6e66 <os_longjmp>
c0de697c:	000008cc 	.word	0x000008cc
c0de6980:	000008d0 	.word	0x000008d0
c0de6984:	000008cd 	.word	0x000008cd

c0de6988 <library_app_main>:
c0de6988:	b5b0      	push	{r4, r5, r7, lr}
c0de698a:	b08c      	sub	sp, #48	@ 0x30
c0de698c:	466c      	mov	r4, sp
c0de698e:	4605      	mov	r5, r0
c0de6990:	4620      	mov	r0, r4
c0de6992:	f000 ff5d 	bl	c0de7850 <setjmp>
c0de6996:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de699a:	0400      	lsls	r0, r0, #16
c0de699c:	d124      	bne.n	c0de69e8 <library_app_main+0x60>
c0de699e:	4668      	mov	r0, sp
c0de69a0:	f000 fe0a 	bl	c0de75b8 <try_context_set>
c0de69a4:	900a      	str	r0, [sp, #40]	@ 0x28
c0de69a6:	6868      	ldr	r0, [r5, #4]
c0de69a8:	2804      	cmp	r0, #4
c0de69aa:	d024      	beq.n	c0de69f6 <library_app_main+0x6e>
c0de69ac:	2803      	cmp	r0, #3
c0de69ae:	d026      	beq.n	c0de69fe <library_app_main+0x76>
c0de69b0:	2802      	cmp	r0, #2
c0de69b2:	d127      	bne.n	c0de6a04 <library_app_main+0x7c>
c0de69b4:	68e8      	ldr	r0, [r5, #12]
c0de69b6:	f7fa fe1f 	bl	c0de15f8 <swap_copy_transaction_parameters>
c0de69ba:	b318      	cbz	r0, c0de6a04 <library_app_main+0x7c>
c0de69bc:	4816      	ldr	r0, [pc, #88]	@ (c0de6a18 <library_app_main+0x90>)
c0de69be:	2201      	movs	r2, #1
c0de69c0:	f809 2000 	strb.w	r2, [r9, r0]
c0de69c4:	4815      	ldr	r0, [pc, #84]	@ (c0de6a1c <library_app_main+0x94>)
c0de69c6:	2200      	movs	r2, #0
c0de69c8:	f809 2000 	strb.w	r2, [r9, r0]
c0de69cc:	4a14      	ldr	r2, [pc, #80]	@ (c0de6a20 <library_app_main+0x98>)
c0de69ce:	68e8      	ldr	r0, [r5, #12]
c0de69d0:	3020      	adds	r0, #32
c0de69d2:	f849 0002 	str.w	r0, [r9, r2]
c0de69d6:	f7ff ff99 	bl	c0de690c <common_app_init>
c0de69da:	4812      	ldr	r0, [pc, #72]	@ (c0de6a24 <library_app_main+0x9c>)
c0de69dc:	4478      	add	r0, pc
c0de69de:	f7fe fc2b 	bl	c0de5238 <nbgl_useCaseSpinner>
c0de69e2:	f7f9 fca9 	bl	c0de0338 <app_main>
c0de69e6:	e00d      	b.n	c0de6a04 <library_app_main+0x7c>
c0de69e8:	2000      	movs	r0, #0
c0de69ea:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de69ee:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de69f0:	f000 fde2 	bl	c0de75b8 <try_context_set>
c0de69f4:	e006      	b.n	c0de6a04 <library_app_main+0x7c>
c0de69f6:	68e8      	ldr	r0, [r5, #12]
c0de69f8:	f7fa fdd2 	bl	c0de15a0 <swap_handle_get_printable_amount>
c0de69fc:	e002      	b.n	c0de6a04 <library_app_main+0x7c>
c0de69fe:	68e8      	ldr	r0, [r5, #12]
c0de6a00:	f7fa fd74 	bl	c0de14ec <swap_handle_check_address>
c0de6a04:	f000 fdd0 	bl	c0de75a8 <try_context_get>
c0de6a08:	42a0      	cmp	r0, r4
c0de6a0a:	d102      	bne.n	c0de6a12 <library_app_main+0x8a>
c0de6a0c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6a0e:	f000 fdd3 	bl	c0de75b8 <try_context_set>
c0de6a12:	f000 fd77 	bl	c0de7504 <os_lib_end>
c0de6a16:	bf00      	nop
c0de6a18:	000008cc 	.word	0x000008cc
c0de6a1c:	000008cd 	.word	0x000008cd
c0de6a20:	000008d0 	.word	0x000008d0
c0de6a24:	00001160 	.word	0x00001160

c0de6a28 <apdu_parser>:
c0de6a28:	2a04      	cmp	r2, #4
c0de6a2a:	d316      	bcc.n	c0de6a5a <apdu_parser+0x32>
c0de6a2c:	d102      	bne.n	c0de6a34 <apdu_parser+0xc>
c0de6a2e:	2300      	movs	r3, #0
c0de6a30:	7103      	strb	r3, [r0, #4]
c0de6a32:	e004      	b.n	c0de6a3e <apdu_parser+0x16>
c0de6a34:	790b      	ldrb	r3, [r1, #4]
c0de6a36:	3a05      	subs	r2, #5
c0de6a38:	429a      	cmp	r2, r3
c0de6a3a:	7103      	strb	r3, [r0, #4]
c0de6a3c:	d10d      	bne.n	c0de6a5a <apdu_parser+0x32>
c0de6a3e:	780a      	ldrb	r2, [r1, #0]
c0de6a40:	2b00      	cmp	r3, #0
c0de6a42:	7002      	strb	r2, [r0, #0]
c0de6a44:	784a      	ldrb	r2, [r1, #1]
c0de6a46:	7042      	strb	r2, [r0, #1]
c0de6a48:	788a      	ldrb	r2, [r1, #2]
c0de6a4a:	7082      	strb	r2, [r0, #2]
c0de6a4c:	bf18      	it	ne
c0de6a4e:	1d4b      	addne	r3, r1, #5
c0de6a50:	78c9      	ldrb	r1, [r1, #3]
c0de6a52:	6083      	str	r3, [r0, #8]
c0de6a54:	70c1      	strb	r1, [r0, #3]
c0de6a56:	2001      	movs	r0, #1
c0de6a58:	4770      	bx	lr
c0de6a5a:	2000      	movs	r0, #0
c0de6a5c:	4770      	bx	lr

c0de6a5e <read_u32_be>:
c0de6a5e:	5c42      	ldrb	r2, [r0, r1]
c0de6a60:	4408      	add	r0, r1
c0de6a62:	7841      	ldrb	r1, [r0, #1]
c0de6a64:	7883      	ldrb	r3, [r0, #2]
c0de6a66:	78c0      	ldrb	r0, [r0, #3]
c0de6a68:	0409      	lsls	r1, r1, #16
c0de6a6a:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6a6e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6a72:	4408      	add	r0, r1
c0de6a74:	4770      	bx	lr

c0de6a76 <read_u64_be>:
c0de6a76:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6a78:	1842      	adds	r2, r0, r1
c0de6a7a:	5c40      	ldrb	r0, [r0, r1]
c0de6a7c:	7917      	ldrb	r7, [r2, #4]
c0de6a7e:	7953      	ldrb	r3, [r2, #5]
c0de6a80:	7854      	ldrb	r4, [r2, #1]
c0de6a82:	7895      	ldrb	r5, [r2, #2]
c0de6a84:	78d6      	ldrb	r6, [r2, #3]
c0de6a86:	063f      	lsls	r7, r7, #24
c0de6a88:	0421      	lsls	r1, r4, #16
c0de6a8a:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6a8e:	7997      	ldrb	r7, [r2, #6]
c0de6a90:	79d2      	ldrb	r2, [r2, #7]
c0de6a92:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6a96:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6a9a:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6a9e:	1981      	adds	r1, r0, r6
c0de6aa0:	441a      	add	r2, r3
c0de6aa2:	4610      	mov	r0, r2
c0de6aa4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6aa6 <read_u16_le>:
c0de6aa6:	5c42      	ldrb	r2, [r0, r1]
c0de6aa8:	4408      	add	r0, r1
c0de6aaa:	7840      	ldrb	r0, [r0, #1]
c0de6aac:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6ab0:	b280      	uxth	r0, r0
c0de6ab2:	4770      	bx	lr

c0de6ab4 <read_u32_le>:
c0de6ab4:	5c42      	ldrb	r2, [r0, r1]
c0de6ab6:	4408      	add	r0, r1
c0de6ab8:	7841      	ldrb	r1, [r0, #1]
c0de6aba:	7883      	ldrb	r3, [r0, #2]
c0de6abc:	78c0      	ldrb	r0, [r0, #3]
c0de6abe:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6ac2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6ac6:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6aca:	4770      	bx	lr

c0de6acc <read_u64_le>:
c0de6acc:	b5b0      	push	{r4, r5, r7, lr}
c0de6ace:	5c42      	ldrb	r2, [r0, r1]
c0de6ad0:	4401      	add	r1, r0
c0de6ad2:	7848      	ldrb	r0, [r1, #1]
c0de6ad4:	788b      	ldrb	r3, [r1, #2]
c0de6ad6:	790d      	ldrb	r5, [r1, #4]
c0de6ad8:	78cc      	ldrb	r4, [r1, #3]
c0de6ada:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6ade:	794a      	ldrb	r2, [r1, #5]
c0de6ae0:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6ae4:	798b      	ldrb	r3, [r1, #6]
c0de6ae6:	79c9      	ldrb	r1, [r1, #7]
c0de6ae8:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6aec:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6af0:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6af4:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6af8:	bdb0      	pop	{r4, r5, r7, pc}

c0de6afa <send_swap_error_simple>:
c0de6afa:	b082      	sub	sp, #8
c0de6afc:	2300      	movs	r3, #0
c0de6afe:	9300      	str	r3, [sp, #0]
c0de6b00:	2300      	movs	r3, #0
c0de6b02:	f000 f801 	bl	c0de6b08 <send_swap_error_with_buffers>
	...

c0de6b08 <send_swap_error_with_buffers>:
c0de6b08:	b09c      	sub	sp, #112	@ 0x70
c0de6b0a:	4604      	mov	r4, r0
c0de6b0c:	4815      	ldr	r0, [pc, #84]	@ (c0de6b64 <send_swap_error_with_buffers+0x5c>)
c0de6b0e:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6b12:	b320      	cbz	r0, c0de6b5e <send_swap_error_with_buffers+0x56>
c0de6b14:	4814      	ldr	r0, [pc, #80]	@ (c0de6b68 <send_swap_error_with_buffers+0x60>)
c0de6b16:	461d      	mov	r5, r3
c0de6b18:	2301      	movs	r3, #1
c0de6b1a:	466e      	mov	r6, sp
c0de6b1c:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6b1e:	f809 3000 	strb.w	r3, [r9, r0]
c0de6b22:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6b26:	f106 0008 	add.w	r0, r6, #8
c0de6b2a:	2164      	movs	r1, #100	@ 0x64
c0de6b2c:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6b30:	f000 fe4a 	bl	c0de77c8 <__aeabi_memclr>
c0de6b34:	2002      	movs	r0, #2
c0de6b36:	4629      	mov	r1, r5
c0de6b38:	9001      	str	r0, [sp, #4]
c0de6b3a:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6b3e:	2f08      	cmp	r7, #8
c0de6b40:	9000      	str	r0, [sp, #0]
c0de6b42:	bf28      	it	cs
c0de6b44:	2708      	movcs	r7, #8
c0de6b46:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6b4a:	0082      	lsls	r2, r0, #2
c0de6b4c:	f106 000c 	add.w	r0, r6, #12
c0de6b50:	f000 fe30 	bl	c0de77b4 <__aeabi_memcpy>
c0de6b54:	1c79      	adds	r1, r7, #1
c0de6b56:	4630      	mov	r0, r6
c0de6b58:	4622      	mov	r2, r4
c0de6b5a:	f7ff fe7b 	bl	c0de6854 <io_send_response_buffers>
c0de6b5e:	2000      	movs	r0, #0
c0de6b60:	f000 fcec 	bl	c0de753c <os_sched_exit>
c0de6b64:	000008cc 	.word	0x000008cc
c0de6b68:	000008cd 	.word	0x000008cd

c0de6b6c <swap_str_to_u64>:
c0de6b6c:	2908      	cmp	r1, #8
c0de6b6e:	d812      	bhi.n	c0de6b96 <swap_str_to_u64+0x2a>
c0de6b70:	b570      	push	{r4, r5, r6, lr}
c0de6b72:	2500      	movs	r5, #0
c0de6b74:	460b      	mov	r3, r1
c0de6b76:	2400      	movs	r4, #0
c0de6b78:	b14b      	cbz	r3, c0de6b8e <swap_str_to_u64+0x22>
c0de6b7a:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6b7e:	0224      	lsls	r4, r4, #8
c0de6b80:	3b01      	subs	r3, #1
c0de6b82:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6b86:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6b8a:	4635      	mov	r5, r6
c0de6b8c:	e7f4      	b.n	c0de6b78 <swap_str_to_u64+0xc>
c0de6b8e:	e9c2 5400 	strd	r5, r4, [r2]
c0de6b92:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6b96:	2000      	movs	r0, #0
c0de6b98:	2909      	cmp	r1, #9
c0de6b9a:	bf38      	it	cc
c0de6b9c:	2001      	movcc	r0, #1
c0de6b9e:	4770      	bx	lr

c0de6ba0 <varint_read>:
c0de6ba0:	b510      	push	{r4, lr}
c0de6ba2:	b1d9      	cbz	r1, c0de6bdc <varint_read+0x3c>
c0de6ba4:	4614      	mov	r4, r2
c0de6ba6:	4602      	mov	r2, r0
c0de6ba8:	7800      	ldrb	r0, [r0, #0]
c0de6baa:	28ff      	cmp	r0, #255	@ 0xff
c0de6bac:	d00c      	beq.n	c0de6bc8 <varint_read+0x28>
c0de6bae:	28fe      	cmp	r0, #254	@ 0xfe
c0de6bb0:	d012      	beq.n	c0de6bd8 <varint_read+0x38>
c0de6bb2:	28fd      	cmp	r0, #253	@ 0xfd
c0de6bb4:	d115      	bne.n	c0de6be2 <varint_read+0x42>
c0de6bb6:	2903      	cmp	r1, #3
c0de6bb8:	d310      	bcc.n	c0de6bdc <varint_read+0x3c>
c0de6bba:	4610      	mov	r0, r2
c0de6bbc:	2101      	movs	r1, #1
c0de6bbe:	f7ff ff72 	bl	c0de6aa6 <read_u16_le>
c0de6bc2:	2100      	movs	r1, #0
c0de6bc4:	2203      	movs	r2, #3
c0de6bc6:	e015      	b.n	c0de6bf4 <varint_read+0x54>
c0de6bc8:	2909      	cmp	r1, #9
c0de6bca:	d307      	bcc.n	c0de6bdc <varint_read+0x3c>
c0de6bcc:	4610      	mov	r0, r2
c0de6bce:	2101      	movs	r1, #1
c0de6bd0:	f7ff ff7c 	bl	c0de6acc <read_u64_le>
c0de6bd4:	2209      	movs	r2, #9
c0de6bd6:	e00d      	b.n	c0de6bf4 <varint_read+0x54>
c0de6bd8:	2905      	cmp	r1, #5
c0de6bda:	d205      	bcs.n	c0de6be8 <varint_read+0x48>
c0de6bdc:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6be0:	e00a      	b.n	c0de6bf8 <varint_read+0x58>
c0de6be2:	2100      	movs	r1, #0
c0de6be4:	2201      	movs	r2, #1
c0de6be6:	e005      	b.n	c0de6bf4 <varint_read+0x54>
c0de6be8:	4610      	mov	r0, r2
c0de6bea:	2101      	movs	r1, #1
c0de6bec:	f7ff ff62 	bl	c0de6ab4 <read_u32_le>
c0de6bf0:	2100      	movs	r1, #0
c0de6bf2:	2205      	movs	r2, #5
c0de6bf4:	e9c4 0100 	strd	r0, r1, [r4]
c0de6bf8:	4610      	mov	r0, r2
c0de6bfa:	bd10      	pop	{r4, pc}

c0de6bfc <write_u16_be>:
c0de6bfc:	0a13      	lsrs	r3, r2, #8
c0de6bfe:	5443      	strb	r3, [r0, r1]
c0de6c00:	4408      	add	r0, r1
c0de6c02:	7042      	strb	r2, [r0, #1]
c0de6c04:	4770      	bx	lr
	...

c0de6c08 <ux_process_button_event>:
c0de6c08:	b5b0      	push	{r4, r5, r7, lr}
c0de6c0a:	4604      	mov	r4, r0
c0de6c0c:	2001      	movs	r0, #1
c0de6c0e:	f000 f815 	bl	c0de6c3c <ux_forward_event>
c0de6c12:	4605      	mov	r5, r0
c0de6c14:	f000 f8cb 	bl	c0de6dae <nbgl_objAllowDrawing>
c0de6c18:	b165      	cbz	r5, c0de6c34 <ux_process_button_event+0x2c>
c0de6c1a:	4807      	ldr	r0, [pc, #28]	@ (c0de6c38 <ux_process_button_event+0x30>)
c0de6c1c:	2164      	movs	r1, #100	@ 0x64
c0de6c1e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6c22:	4341      	muls	r1, r0
c0de6c24:	78e0      	ldrb	r0, [r4, #3]
c0de6c26:	0840      	lsrs	r0, r0, #1
c0de6c28:	f000 f90c 	bl	c0de6e44 <nbgl_buttonsHandler>
c0de6c2c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6c30:	f000 b8b3 	b.w	c0de6d9a <nbgl_refresh>
c0de6c34:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c36:	bf00      	nop
c0de6c38:	000008d4 	.word	0x000008d4

c0de6c3c <ux_forward_event>:
c0de6c3c:	b5b0      	push	{r4, r5, r7, lr}
c0de6c3e:	4604      	mov	r4, r0
c0de6c40:	4812      	ldr	r0, [pc, #72]	@ (c0de6c8c <ux_forward_event+0x50>)
c0de6c42:	2101      	movs	r1, #1
c0de6c44:	f809 1000 	strb.w	r1, [r9, r0]
c0de6c48:	eb09 0500 	add.w	r5, r9, r0
c0de6c4c:	2000      	movs	r0, #0
c0de6c4e:	6068      	str	r0, [r5, #4]
c0de6c50:	4628      	mov	r0, r5
c0de6c52:	f000 fc4d 	bl	c0de74f0 <os_ux>
c0de6c56:	2004      	movs	r0, #4
c0de6c58:	f000 fcb8 	bl	c0de75cc <os_sched_last_status>
c0de6c5c:	2869      	cmp	r0, #105	@ 0x69
c0de6c5e:	6068      	str	r0, [r5, #4]
c0de6c60:	d108      	bne.n	c0de6c74 <ux_forward_event+0x38>
c0de6c62:	2001      	movs	r0, #1
c0de6c64:	f000 f8a3 	bl	c0de6dae <nbgl_objAllowDrawing>
c0de6c68:	f000 f8b0 	bl	c0de6dcc <nbgl_screenRedraw>
c0de6c6c:	f000 f895 	bl	c0de6d9a <nbgl_refresh>
c0de6c70:	2000      	movs	r0, #0
c0de6c72:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c74:	b144      	cbz	r4, c0de6c88 <ux_forward_event+0x4c>
c0de6c76:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6c7a:	bf18      	it	ne
c0de6c7c:	2101      	movne	r1, #1
c0de6c7e:	2800      	cmp	r0, #0
c0de6c80:	bf18      	it	ne
c0de6c82:	2001      	movne	r0, #1
c0de6c84:	4008      	ands	r0, r1
c0de6c86:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c88:	2001      	movs	r0, #1
c0de6c8a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c8c:	000008c0 	.word	0x000008c0

c0de6c90 <ux_process_ticker_event>:
c0de6c90:	b510      	push	{r4, lr}
c0de6c92:	480a      	ldr	r0, [pc, #40]	@ (c0de6cbc <ux_process_ticker_event+0x2c>)
c0de6c94:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6c98:	3101      	adds	r1, #1
c0de6c9a:	f849 1000 	str.w	r1, [r9, r0]
c0de6c9e:	2001      	movs	r0, #1
c0de6ca0:	f7ff ffcc 	bl	c0de6c3c <ux_forward_event>
c0de6ca4:	4604      	mov	r4, r0
c0de6ca6:	f000 f882 	bl	c0de6dae <nbgl_objAllowDrawing>
c0de6caa:	b134      	cbz	r4, c0de6cba <ux_process_ticker_event+0x2a>
c0de6cac:	2064      	movs	r0, #100	@ 0x64
c0de6cae:	f000 f897 	bl	c0de6de0 <nbgl_screenHandler>
c0de6cb2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6cb6:	f000 b870 	b.w	c0de6d9a <nbgl_refresh>
c0de6cba:	bd10      	pop	{r4, pc}
c0de6cbc:	000008d4 	.word	0x000008d4

c0de6cc0 <ux_process_default_event>:
c0de6cc0:	2000      	movs	r0, #0
c0de6cc2:	f7ff bfbb 	b.w	c0de6c3c <ux_forward_event>

c0de6cc6 <hash_iovec_ex>:
c0de6cc6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6cca:	468a      	mov	sl, r1
c0de6ccc:	4611      	mov	r1, r2
c0de6cce:	461a      	mov	r2, r3
c0de6cd0:	4605      	mov	r5, r0
c0de6cd2:	f000 f84d 	bl	c0de6d70 <cx_hash_init_ex>
c0de6cd6:	4607      	mov	r7, r0
c0de6cd8:	b9a8      	cbnz	r0, c0de6d06 <hash_iovec_ex+0x40>
c0de6cda:	f10d 0820 	add.w	r8, sp, #32
c0de6cde:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6ce2:	1d04      	adds	r4, r0, #4
c0de6ce4:	b156      	cbz	r6, c0de6cfc <hash_iovec_ex+0x36>
c0de6ce6:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6cea:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6cee:	4628      	mov	r0, r5
c0de6cf0:	f000 f843 	bl	c0de6d7a <cx_hash_update>
c0de6cf4:	3e01      	subs	r6, #1
c0de6cf6:	2800      	cmp	r0, #0
c0de6cf8:	d0f4      	beq.n	c0de6ce4 <hash_iovec_ex+0x1e>
c0de6cfa:	e003      	b.n	c0de6d04 <hash_iovec_ex+0x3e>
c0de6cfc:	4628      	mov	r0, r5
c0de6cfe:	4641      	mov	r1, r8
c0de6d00:	f000 f831 	bl	c0de6d66 <cx_hash_final>
c0de6d04:	4607      	mov	r7, r0
c0de6d06:	4628      	mov	r0, r5
c0de6d08:	4651      	mov	r1, sl
c0de6d0a:	f000 fd6b 	bl	c0de77e4 <explicit_bzero>
c0de6d0e:	4638      	mov	r0, r7
c0de6d10:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6d14 <cx_keccak_256_hash_iovec>:
c0de6d14:	b580      	push	{r7, lr}
c0de6d16:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6d18:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6d1c:	a804      	add	r0, sp, #16
c0de6d1e:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6d22:	2206      	movs	r2, #6
c0de6d24:	2320      	movs	r3, #32
c0de6d26:	f7ff ffce 	bl	c0de6cc6 <hash_iovec_ex>
c0de6d2a:	b06e      	add	sp, #440	@ 0x1b8
c0de6d2c:	bd80      	pop	{r7, pc}

c0de6d2e <cx_blake2b_512_hash_iovec>:
c0de6d2e:	b580      	push	{r7, lr}
c0de6d30:	b0c4      	sub	sp, #272	@ 0x110
c0de6d32:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6d36:	a804      	add	r0, sp, #16
c0de6d38:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6d3c:	2209      	movs	r2, #9
c0de6d3e:	2340      	movs	r3, #64	@ 0x40
c0de6d40:	f7ff ffc1 	bl	c0de6cc6 <hash_iovec_ex>
c0de6d44:	b044      	add	sp, #272	@ 0x110
c0de6d46:	bd80      	pop	{r7, pc}

c0de6d48 <cx_ecdsa_sign_no_throw>:
c0de6d48:	b403      	push	{r0, r1}
c0de6d4a:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6d4e:	f000 b81d 	b.w	c0de6d8c <cx_trampoline_helper>

c0de6d52 <cx_ecfp_generate_pair2_no_throw>:
c0de6d52:	b403      	push	{r0, r1}
c0de6d54:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6d58:	f000 b818 	b.w	c0de6d8c <cx_trampoline_helper>

c0de6d5c <cx_ecfp_init_private_key_no_throw>:
c0de6d5c:	b403      	push	{r0, r1}
c0de6d5e:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6d62:	f000 b813 	b.w	c0de6d8c <cx_trampoline_helper>

c0de6d66 <cx_hash_final>:
c0de6d66:	b403      	push	{r0, r1}
c0de6d68:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6d6c:	f000 b80e 	b.w	c0de6d8c <cx_trampoline_helper>

c0de6d70 <cx_hash_init_ex>:
c0de6d70:	b403      	push	{r0, r1}
c0de6d72:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6d76:	f000 b809 	b.w	c0de6d8c <cx_trampoline_helper>

c0de6d7a <cx_hash_update>:
c0de6d7a:	b403      	push	{r0, r1}
c0de6d7c:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6d80:	f000 b804 	b.w	c0de6d8c <cx_trampoline_helper>

c0de6d84 <cx_aes_siv_reset>:
c0de6d84:	b403      	push	{r0, r1}
c0de6d86:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6d8a:	e7ff      	b.n	c0de6d8c <cx_trampoline_helper>

c0de6d8c <cx_trampoline_helper>:
c0de6d8c:	4900      	ldr	r1, [pc, #0]	@ (c0de6d90 <cx_trampoline_helper+0x4>)
c0de6d8e:	4708      	bx	r1
c0de6d90:	00808001 	.word	0x00808001

c0de6d94 <assert_exit>:
c0de6d94:	20ff      	movs	r0, #255	@ 0xff
c0de6d96:	f000 fbd1 	bl	c0de753c <os_sched_exit>

c0de6d9a <nbgl_refresh>:
c0de6d9a:	b403      	push	{r0, r1}
c0de6d9c:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6da0:	f000 b85a 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6da4 <nbgl_objInit>:
c0de6da4:	b403      	push	{r0, r1}
c0de6da6:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6daa:	f000 b855 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6dae <nbgl_objAllowDrawing>:
c0de6dae:	b403      	push	{r0, r1}
c0de6db0:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6db4:	f000 b850 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6db8 <nbgl_screenSet>:
c0de6db8:	b403      	push	{r0, r1}
c0de6dba:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6dbe:	f000 b84b 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6dc2 <nbgl_screenPush>:
c0de6dc2:	b403      	push	{r0, r1}
c0de6dc4:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6dc8:	f000 b846 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6dcc <nbgl_screenRedraw>:
c0de6dcc:	b403      	push	{r0, r1}
c0de6dce:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6dd2:	f000 b841 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6dd6 <nbgl_screenPop>:
c0de6dd6:	b403      	push	{r0, r1}
c0de6dd8:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6ddc:	f000 b83c 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6de0 <nbgl_screenHandler>:
c0de6de0:	b403      	push	{r0, r1}
c0de6de2:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6de6:	f000 b837 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6dea <nbgl_objPoolGet>:
c0de6dea:	b403      	push	{r0, r1}
c0de6dec:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6df0:	f000 b832 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6df4 <nbgl_containerPoolGet>:
c0de6df4:	b403      	push	{r0, r1}
c0de6df6:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6dfa:	f000 b82d 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6dfe <nbgl_getFont>:
c0de6dfe:	b403      	push	{r0, r1}
c0de6e00:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6e04:	f000 b828 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e08 <nbgl_getFontLineHeight>:
c0de6e08:	b403      	push	{r0, r1}
c0de6e0a:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6e0e:	f000 b823 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e12 <nbgl_getTextNbLinesInWidth>:
c0de6e12:	b403      	push	{r0, r1}
c0de6e14:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6e18:	f000 b81e 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e1c <nbgl_getTextNbPagesInWidth>:
c0de6e1c:	b403      	push	{r0, r1}
c0de6e1e:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6e22:	f000 b819 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e26 <nbgl_getTextWidth>:
c0de6e26:	b403      	push	{r0, r1}
c0de6e28:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6e2c:	f000 b814 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e30 <nbgl_getTextMaxLenInNbLines>:
c0de6e30:	b403      	push	{r0, r1}
c0de6e32:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6e36:	f000 b80f 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e3a <nbgl_textReduceOnNbLines>:
c0de6e3a:	b403      	push	{r0, r1}
c0de6e3c:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6e40:	f000 b80a 	b.w	c0de6e58 <nbgl_trampoline_helper>

c0de6e44 <nbgl_buttonsHandler>:
c0de6e44:	b403      	push	{r0, r1}
c0de6e46:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6e4a:	f000 b805 	b.w	c0de6e58 <nbgl_trampoline_helper>
	...

c0de6e50 <pic_init>:
c0de6e50:	b403      	push	{r0, r1}
c0de6e52:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6e56:	e7ff      	b.n	c0de6e58 <nbgl_trampoline_helper>

c0de6e58 <nbgl_trampoline_helper>:
c0de6e58:	4900      	ldr	r1, [pc, #0]	@ (c0de6e5c <nbgl_trampoline_helper+0x4>)
c0de6e5a:	4708      	bx	r1
c0de6e5c:	00808001 	.word	0x00808001

c0de6e60 <os_boot>:
c0de6e60:	2000      	movs	r0, #0
c0de6e62:	f000 bba9 	b.w	c0de75b8 <try_context_set>

c0de6e66 <os_longjmp>:
c0de6e66:	4604      	mov	r4, r0
c0de6e68:	f000 fb9e 	bl	c0de75a8 <try_context_get>
c0de6e6c:	4621      	mov	r1, r4
c0de6e6e:	f000 fcf5 	bl	c0de785c <longjmp>
	...

c0de6e74 <os_explicit_zero_BSS_segment>:
c0de6e74:	4803      	ldr	r0, [pc, #12]	@ (c0de6e84 <os_explicit_zero_BSS_segment+0x10>)
c0de6e76:	4904      	ldr	r1, [pc, #16]	@ (c0de6e88 <os_explicit_zero_BSS_segment+0x14>)
c0de6e78:	4448      	add	r0, r9
c0de6e7a:	4449      	add	r1, r9
c0de6e7c:	1a09      	subs	r1, r1, r0
c0de6e7e:	f000 bcb1 	b.w	c0de77e4 <explicit_bzero>
c0de6e82:	bf00      	nop
c0de6e84:	00000000 	.word	0x00000000
c0de6e88:	000008d8 	.word	0x000008d8

c0de6e8c <snprintf>:
c0de6e8c:	b081      	sub	sp, #4
c0de6e8e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6e92:	b087      	sub	sp, #28
c0de6e94:	2800      	cmp	r0, #0
c0de6e96:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6e98:	f000 817a 	beq.w	c0de7190 <snprintf+0x304>
c0de6e9c:	460d      	mov	r5, r1
c0de6e9e:	2900      	cmp	r1, #0
c0de6ea0:	f000 8176 	beq.w	c0de7190 <snprintf+0x304>
c0de6ea4:	4629      	mov	r1, r5
c0de6ea6:	4616      	mov	r6, r2
c0de6ea8:	4604      	mov	r4, r0
c0de6eaa:	f000 fc8d 	bl	c0de77c8 <__aeabi_memclr>
c0de6eae:	f1b5 0801 	subs.w	r8, r5, #1
c0de6eb2:	f000 816d 	beq.w	c0de7190 <snprintf+0x304>
c0de6eb6:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6eb8:	9002      	str	r0, [sp, #8]
c0de6eba:	7830      	ldrb	r0, [r6, #0]
c0de6ebc:	2800      	cmp	r0, #0
c0de6ebe:	f000 8167 	beq.w	c0de7190 <snprintf+0x304>
c0de6ec2:	2700      	movs	r7, #0
c0de6ec4:	b128      	cbz	r0, c0de6ed2 <snprintf+0x46>
c0de6ec6:	2825      	cmp	r0, #37	@ 0x25
c0de6ec8:	d003      	beq.n	c0de6ed2 <snprintf+0x46>
c0de6eca:	19f0      	adds	r0, r6, r7
c0de6ecc:	3701      	adds	r7, #1
c0de6ece:	7840      	ldrb	r0, [r0, #1]
c0de6ed0:	e7f8      	b.n	c0de6ec4 <snprintf+0x38>
c0de6ed2:	4547      	cmp	r7, r8
c0de6ed4:	bf28      	it	cs
c0de6ed6:	4647      	movcs	r7, r8
c0de6ed8:	4620      	mov	r0, r4
c0de6eda:	4631      	mov	r1, r6
c0de6edc:	463a      	mov	r2, r7
c0de6ede:	f000 fc6b 	bl	c0de77b8 <__aeabi_memmove>
c0de6ee2:	ebb8 0807 	subs.w	r8, r8, r7
c0de6ee6:	f000 8153 	beq.w	c0de7190 <snprintf+0x304>
c0de6eea:	5df1      	ldrb	r1, [r6, r7]
c0de6eec:	19f0      	adds	r0, r6, r7
c0de6eee:	443c      	add	r4, r7
c0de6ef0:	4606      	mov	r6, r0
c0de6ef2:	2925      	cmp	r1, #37	@ 0x25
c0de6ef4:	d1e1      	bne.n	c0de6eba <snprintf+0x2e>
c0de6ef6:	1c41      	adds	r1, r0, #1
c0de6ef8:	f04f 0b00 	mov.w	fp, #0
c0de6efc:	f04f 0e20 	mov.w	lr, #32
c0de6f00:	2500      	movs	r5, #0
c0de6f02:	2600      	movs	r6, #0
c0de6f04:	3101      	adds	r1, #1
c0de6f06:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6f0a:	4632      	mov	r2, r6
c0de6f0c:	3101      	adds	r1, #1
c0de6f0e:	2600      	movs	r6, #0
c0de6f10:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6f12:	d0f8      	beq.n	c0de6f06 <snprintf+0x7a>
c0de6f14:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6f18:	2e0a      	cmp	r6, #10
c0de6f1a:	d313      	bcc.n	c0de6f44 <snprintf+0xb8>
c0de6f1c:	2b25      	cmp	r3, #37	@ 0x25
c0de6f1e:	d046      	beq.n	c0de6fae <snprintf+0x122>
c0de6f20:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6f22:	d01f      	beq.n	c0de6f64 <snprintf+0xd8>
c0de6f24:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6f26:	d129      	bne.n	c0de6f7c <snprintf+0xf0>
c0de6f28:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6f2c:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6f2e:	d13c      	bne.n	c0de6faa <snprintf+0x11e>
c0de6f30:	780a      	ldrb	r2, [r1, #0]
c0de6f32:	2a48      	cmp	r2, #72	@ 0x48
c0de6f34:	d003      	beq.n	c0de6f3e <snprintf+0xb2>
c0de6f36:	2a73      	cmp	r2, #115	@ 0x73
c0de6f38:	d001      	beq.n	c0de6f3e <snprintf+0xb2>
c0de6f3a:	2a68      	cmp	r2, #104	@ 0x68
c0de6f3c:	d135      	bne.n	c0de6faa <snprintf+0x11e>
c0de6f3e:	9a02      	ldr	r2, [sp, #8]
c0de6f40:	2601      	movs	r6, #1
c0de6f42:	e017      	b.n	c0de6f74 <snprintf+0xe8>
c0de6f44:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6f48:	ea56 060b 	orrs.w	r6, r6, fp
c0de6f4c:	bf08      	it	eq
c0de6f4e:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6f52:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6f56:	3901      	subs	r1, #1
c0de6f58:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6f5c:	4616      	mov	r6, r2
c0de6f5e:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6f62:	e7cf      	b.n	c0de6f04 <snprintf+0x78>
c0de6f64:	460b      	mov	r3, r1
c0de6f66:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6f6a:	2a73      	cmp	r2, #115	@ 0x73
c0de6f6c:	d11d      	bne.n	c0de6faa <snprintf+0x11e>
c0de6f6e:	9a02      	ldr	r2, [sp, #8]
c0de6f70:	2602      	movs	r6, #2
c0de6f72:	4619      	mov	r1, r3
c0de6f74:	1d13      	adds	r3, r2, #4
c0de6f76:	9302      	str	r3, [sp, #8]
c0de6f78:	6815      	ldr	r5, [r2, #0]
c0de6f7a:	e7c3      	b.n	c0de6f04 <snprintf+0x78>
c0de6f7c:	2b48      	cmp	r3, #72	@ 0x48
c0de6f7e:	d018      	beq.n	c0de6fb2 <snprintf+0x126>
c0de6f80:	2b58      	cmp	r3, #88	@ 0x58
c0de6f82:	d019      	beq.n	c0de6fb8 <snprintf+0x12c>
c0de6f84:	2b63      	cmp	r3, #99	@ 0x63
c0de6f86:	d020      	beq.n	c0de6fca <snprintf+0x13e>
c0de6f88:	2b64      	cmp	r3, #100	@ 0x64
c0de6f8a:	d02a      	beq.n	c0de6fe2 <snprintf+0x156>
c0de6f8c:	2b68      	cmp	r3, #104	@ 0x68
c0de6f8e:	d036      	beq.n	c0de6ffe <snprintf+0x172>
c0de6f90:	2b70      	cmp	r3, #112	@ 0x70
c0de6f92:	d006      	beq.n	c0de6fa2 <snprintf+0x116>
c0de6f94:	2b73      	cmp	r3, #115	@ 0x73
c0de6f96:	d037      	beq.n	c0de7008 <snprintf+0x17c>
c0de6f98:	2b75      	cmp	r3, #117	@ 0x75
c0de6f9a:	f000 8081 	beq.w	c0de70a0 <snprintf+0x214>
c0de6f9e:	2b78      	cmp	r3, #120	@ 0x78
c0de6fa0:	d103      	bne.n	c0de6faa <snprintf+0x11e>
c0de6fa2:	9400      	str	r4, [sp, #0]
c0de6fa4:	f04f 0c00 	mov.w	ip, #0
c0de6fa8:	e009      	b.n	c0de6fbe <snprintf+0x132>
c0de6faa:	1e4e      	subs	r6, r1, #1
c0de6fac:	e785      	b.n	c0de6eba <snprintf+0x2e>
c0de6fae:	2025      	movs	r0, #37	@ 0x25
c0de6fb0:	e00f      	b.n	c0de6fd2 <snprintf+0x146>
c0de6fb2:	487b      	ldr	r0, [pc, #492]	@ (c0de71a0 <snprintf+0x314>)
c0de6fb4:	4478      	add	r0, pc
c0de6fb6:	e024      	b.n	c0de7002 <snprintf+0x176>
c0de6fb8:	f04f 0c01 	mov.w	ip, #1
c0de6fbc:	9400      	str	r4, [sp, #0]
c0de6fbe:	9a02      	ldr	r2, [sp, #8]
c0de6fc0:	2400      	movs	r4, #0
c0de6fc2:	1d13      	adds	r3, r2, #4
c0de6fc4:	9302      	str	r3, [sp, #8]
c0de6fc6:	2310      	movs	r3, #16
c0de6fc8:	e072      	b.n	c0de70b0 <snprintf+0x224>
c0de6fca:	9802      	ldr	r0, [sp, #8]
c0de6fcc:	1d02      	adds	r2, r0, #4
c0de6fce:	9202      	str	r2, [sp, #8]
c0de6fd0:	6800      	ldr	r0, [r0, #0]
c0de6fd2:	1e4e      	subs	r6, r1, #1
c0de6fd4:	f804 0b01 	strb.w	r0, [r4], #1
c0de6fd8:	f1b8 0801 	subs.w	r8, r8, #1
c0de6fdc:	f47f af6d 	bne.w	c0de6eba <snprintf+0x2e>
c0de6fe0:	e0d6      	b.n	c0de7190 <snprintf+0x304>
c0de6fe2:	9a02      	ldr	r2, [sp, #8]
c0de6fe4:	9400      	str	r4, [sp, #0]
c0de6fe6:	1d13      	adds	r3, r2, #4
c0de6fe8:	9302      	str	r3, [sp, #8]
c0de6fea:	6813      	ldr	r3, [r2, #0]
c0de6fec:	2b00      	cmp	r3, #0
c0de6fee:	461a      	mov	r2, r3
c0de6ff0:	d500      	bpl.n	c0de6ff4 <snprintf+0x168>
c0de6ff2:	425a      	negs	r2, r3
c0de6ff4:	0fdc      	lsrs	r4, r3, #31
c0de6ff6:	f04f 0c00 	mov.w	ip, #0
c0de6ffa:	230a      	movs	r3, #10
c0de6ffc:	e059      	b.n	c0de70b2 <snprintf+0x226>
c0de6ffe:	4869      	ldr	r0, [pc, #420]	@ (c0de71a4 <snprintf+0x318>)
c0de7000:	4478      	add	r0, pc
c0de7002:	f04f 0c01 	mov.w	ip, #1
c0de7006:	e003      	b.n	c0de7010 <snprintf+0x184>
c0de7008:	4864      	ldr	r0, [pc, #400]	@ (c0de719c <snprintf+0x310>)
c0de700a:	f04f 0c00 	mov.w	ip, #0
c0de700e:	4478      	add	r0, pc
c0de7010:	9b02      	ldr	r3, [sp, #8]
c0de7012:	b2d2      	uxtb	r2, r2
c0de7014:	1d1e      	adds	r6, r3, #4
c0de7016:	9602      	str	r6, [sp, #8]
c0de7018:	1e4e      	subs	r6, r1, #1
c0de701a:	6819      	ldr	r1, [r3, #0]
c0de701c:	2a02      	cmp	r2, #2
c0de701e:	f000 80a7 	beq.w	c0de7170 <snprintf+0x2e4>
c0de7022:	2a01      	cmp	r2, #1
c0de7024:	d007      	beq.n	c0de7036 <snprintf+0x1aa>
c0de7026:	463d      	mov	r5, r7
c0de7028:	b92a      	cbnz	r2, c0de7036 <snprintf+0x1aa>
c0de702a:	2200      	movs	r2, #0
c0de702c:	5c8b      	ldrb	r3, [r1, r2]
c0de702e:	3201      	adds	r2, #1
c0de7030:	2b00      	cmp	r3, #0
c0de7032:	d1fb      	bne.n	c0de702c <snprintf+0x1a0>
c0de7034:	1e55      	subs	r5, r2, #1
c0de7036:	f1bc 0f00 	cmp.w	ip, #0
c0de703a:	d016      	beq.n	c0de706a <snprintf+0x1de>
c0de703c:	2d00      	cmp	r5, #0
c0de703e:	f43f af3c 	beq.w	c0de6eba <snprintf+0x2e>
c0de7042:	f1b8 0f02 	cmp.w	r8, #2
c0de7046:	f0c0 80a3 	bcc.w	c0de7190 <snprintf+0x304>
c0de704a:	780a      	ldrb	r2, [r1, #0]
c0de704c:	0913      	lsrs	r3, r2, #4
c0de704e:	f002 020f 	and.w	r2, r2, #15
c0de7052:	5cc3      	ldrb	r3, [r0, r3]
c0de7054:	f1b8 0802 	subs.w	r8, r8, #2
c0de7058:	7023      	strb	r3, [r4, #0]
c0de705a:	5c82      	ldrb	r2, [r0, r2]
c0de705c:	7062      	strb	r2, [r4, #1]
c0de705e:	f000 8097 	beq.w	c0de7190 <snprintf+0x304>
c0de7062:	3101      	adds	r1, #1
c0de7064:	3d01      	subs	r5, #1
c0de7066:	3402      	adds	r4, #2
c0de7068:	e7e8      	b.n	c0de703c <snprintf+0x1b0>
c0de706a:	4545      	cmp	r5, r8
c0de706c:	bf28      	it	cs
c0de706e:	4645      	movcs	r5, r8
c0de7070:	4620      	mov	r0, r4
c0de7072:	462a      	mov	r2, r5
c0de7074:	f000 fba0 	bl	c0de77b8 <__aeabi_memmove>
c0de7078:	ebb8 0805 	subs.w	r8, r8, r5
c0de707c:	f000 8088 	beq.w	c0de7190 <snprintf+0x304>
c0de7080:	462f      	mov	r7, r5
c0de7082:	442c      	add	r4, r5
c0de7084:	45bb      	cmp	fp, r7
c0de7086:	f67f af18 	bls.w	c0de6eba <snprintf+0x2e>
c0de708a:	ebab 0507 	sub.w	r5, fp, r7
c0de708e:	4620      	mov	r0, r4
c0de7090:	4545      	cmp	r5, r8
c0de7092:	bf28      	it	cs
c0de7094:	4645      	movcs	r5, r8
c0de7096:	4629      	mov	r1, r5
c0de7098:	2220      	movs	r2, #32
c0de709a:	f000 fb8f 	bl	c0de77bc <__aeabi_memset>
c0de709e:	e061      	b.n	c0de7164 <snprintf+0x2d8>
c0de70a0:	9a02      	ldr	r2, [sp, #8]
c0de70a2:	9400      	str	r4, [sp, #0]
c0de70a4:	2400      	movs	r4, #0
c0de70a6:	f04f 0c00 	mov.w	ip, #0
c0de70aa:	1d13      	adds	r3, r2, #4
c0de70ac:	9302      	str	r3, [sp, #8]
c0de70ae:	230a      	movs	r3, #10
c0de70b0:	6812      	ldr	r2, [r2, #0]
c0de70b2:	483d      	ldr	r0, [pc, #244]	@ (c0de71a8 <snprintf+0x31c>)
c0de70b4:	1e4e      	subs	r6, r1, #1
c0de70b6:	f04f 0a01 	mov.w	sl, #1
c0de70ba:	4478      	add	r0, pc
c0de70bc:	9001      	str	r0, [sp, #4]
c0de70be:	fba3 570a 	umull	r5, r7, r3, sl
c0de70c2:	2f00      	cmp	r7, #0
c0de70c4:	bf18      	it	ne
c0de70c6:	2701      	movne	r7, #1
c0de70c8:	4295      	cmp	r5, r2
c0de70ca:	d804      	bhi.n	c0de70d6 <snprintf+0x24a>
c0de70cc:	b91f      	cbnz	r7, c0de70d6 <snprintf+0x24a>
c0de70ce:	f1ab 0b01 	sub.w	fp, fp, #1
c0de70d2:	46aa      	mov	sl, r5
c0de70d4:	e7f3      	b.n	c0de70be <snprintf+0x232>
c0de70d6:	2c00      	cmp	r4, #0
c0de70d8:	4627      	mov	r7, r4
c0de70da:	f04f 0500 	mov.w	r5, #0
c0de70de:	bf18      	it	ne
c0de70e0:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de70e4:	d00d      	beq.n	c0de7102 <snprintf+0x276>
c0de70e6:	4660      	mov	r0, ip
c0de70e8:	fa5f fc8e 	uxtb.w	ip, lr
c0de70ec:	a903      	add	r1, sp, #12
c0de70ee:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de70f2:	4684      	mov	ip, r0
c0de70f4:	d106      	bne.n	c0de7104 <snprintf+0x278>
c0de70f6:	202d      	movs	r0, #45	@ 0x2d
c0de70f8:	2400      	movs	r4, #0
c0de70fa:	2501      	movs	r5, #1
c0de70fc:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7100:	e000      	b.n	c0de7104 <snprintf+0x278>
c0de7102:	a903      	add	r1, sp, #12
c0de7104:	eb07 000b 	add.w	r0, r7, fp
c0de7108:	3802      	subs	r0, #2
c0de710a:	280d      	cmp	r0, #13
c0de710c:	d808      	bhi.n	c0de7120 <snprintf+0x294>
c0de710e:	f1c7 0701 	rsb	r7, r7, #1
c0de7112:	45bb      	cmp	fp, r7
c0de7114:	d004      	beq.n	c0de7120 <snprintf+0x294>
c0de7116:	f801 e005 	strb.w	lr, [r1, r5]
c0de711a:	3701      	adds	r7, #1
c0de711c:	3501      	adds	r5, #1
c0de711e:	e7f8      	b.n	c0de7112 <snprintf+0x286>
c0de7120:	9f01      	ldr	r7, [sp, #4]
c0de7122:	b114      	cbz	r4, c0de712a <snprintf+0x29e>
c0de7124:	202d      	movs	r0, #45	@ 0x2d
c0de7126:	5548      	strb	r0, [r1, r5]
c0de7128:	3501      	adds	r5, #1
c0de712a:	4820      	ldr	r0, [pc, #128]	@ (c0de71ac <snprintf+0x320>)
c0de712c:	f1bc 0f00 	cmp.w	ip, #0
c0de7130:	4478      	add	r0, pc
c0de7132:	bf08      	it	eq
c0de7134:	4638      	moveq	r0, r7
c0de7136:	f1ba 0f00 	cmp.w	sl, #0
c0de713a:	d00b      	beq.n	c0de7154 <snprintf+0x2c8>
c0de713c:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7140:	fbba faf3 	udiv	sl, sl, r3
c0de7144:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7148:	fb04 7413 	mls	r4, r4, r3, r7
c0de714c:	5d04      	ldrb	r4, [r0, r4]
c0de714e:	554c      	strb	r4, [r1, r5]
c0de7150:	3501      	adds	r5, #1
c0de7152:	e7f0      	b.n	c0de7136 <snprintf+0x2aa>
c0de7154:	4545      	cmp	r5, r8
c0de7156:	bf28      	it	cs
c0de7158:	4645      	movcs	r5, r8
c0de715a:	9c00      	ldr	r4, [sp, #0]
c0de715c:	462a      	mov	r2, r5
c0de715e:	4620      	mov	r0, r4
c0de7160:	f000 fb2a 	bl	c0de77b8 <__aeabi_memmove>
c0de7164:	ebb8 0805 	subs.w	r8, r8, r5
c0de7168:	442c      	add	r4, r5
c0de716a:	f47f aea6 	bne.w	c0de6eba <snprintf+0x2e>
c0de716e:	e00f      	b.n	c0de7190 <snprintf+0x304>
c0de7170:	7808      	ldrb	r0, [r1, #0]
c0de7172:	2800      	cmp	r0, #0
c0de7174:	f47f aea1 	bne.w	c0de6eba <snprintf+0x2e>
c0de7178:	4545      	cmp	r5, r8
c0de717a:	bf28      	it	cs
c0de717c:	4645      	movcs	r5, r8
c0de717e:	4620      	mov	r0, r4
c0de7180:	4629      	mov	r1, r5
c0de7182:	2220      	movs	r2, #32
c0de7184:	f000 fb1a 	bl	c0de77bc <__aeabi_memset>
c0de7188:	ebb8 0805 	subs.w	r8, r8, r5
c0de718c:	f47f af79 	bne.w	c0de7082 <snprintf+0x1f6>
c0de7190:	2000      	movs	r0, #0
c0de7192:	b007      	add	sp, #28
c0de7194:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7198:	b001      	add	sp, #4
c0de719a:	4770      	bx	lr
c0de719c:	00001c4a 	.word	0x00001c4a
c0de71a0:	00001cb4 	.word	0x00001cb4
c0de71a4:	00001c58 	.word	0x00001c58
c0de71a8:	00001b9e 	.word	0x00001b9e
c0de71ac:	00001b38 	.word	0x00001b38

c0de71b0 <pic>:
c0de71b0:	4a0a      	ldr	r2, [pc, #40]	@ (c0de71dc <pic+0x2c>)
c0de71b2:	4282      	cmp	r2, r0
c0de71b4:	490a      	ldr	r1, [pc, #40]	@ (c0de71e0 <pic+0x30>)
c0de71b6:	d806      	bhi.n	c0de71c6 <pic+0x16>
c0de71b8:	4281      	cmp	r1, r0
c0de71ba:	d304      	bcc.n	c0de71c6 <pic+0x16>
c0de71bc:	b580      	push	{r7, lr}
c0de71be:	f000 f815 	bl	c0de71ec <pic_internal>
c0de71c2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de71c6:	4907      	ldr	r1, [pc, #28]	@ (c0de71e4 <pic+0x34>)
c0de71c8:	4288      	cmp	r0, r1
c0de71ca:	4a07      	ldr	r2, [pc, #28]	@ (c0de71e8 <pic+0x38>)
c0de71cc:	d304      	bcc.n	c0de71d8 <pic+0x28>
c0de71ce:	4290      	cmp	r0, r2
c0de71d0:	d802      	bhi.n	c0de71d8 <pic+0x28>
c0de71d2:	1a40      	subs	r0, r0, r1
c0de71d4:	4649      	mov	r1, r9
c0de71d6:	4408      	add	r0, r1
c0de71d8:	4770      	bx	lr
c0de71da:	0000      	movs	r0, r0
c0de71dc:	c0de0000 	.word	0xc0de0000
c0de71e0:	c0de903f 	.word	0xc0de903f
c0de71e4:	da7a0000 	.word	0xda7a0000
c0de71e8:	da7aa000 	.word	0xda7aa000

c0de71ec <pic_internal>:
c0de71ec:	467a      	mov	r2, pc
c0de71ee:	4902      	ldr	r1, [pc, #8]	@ (c0de71f8 <pic_internal+0xc>)
c0de71f0:	1cc9      	adds	r1, r1, #3
c0de71f2:	1a89      	subs	r1, r1, r2
c0de71f4:	1a40      	subs	r0, r0, r1
c0de71f6:	4770      	bx	lr
c0de71f8:	c0de71ed 	.word	0xc0de71ed

c0de71fc <SVC_Call>:
c0de71fc:	df01      	svc	1
c0de71fe:	2900      	cmp	r1, #0
c0de7200:	d100      	bne.n	c0de7204 <exception>
c0de7202:	4770      	bx	lr

c0de7204 <exception>:
c0de7204:	4608      	mov	r0, r1
c0de7206:	f7ff fe2e 	bl	c0de6e66 <os_longjmp>
	...

c0de720c <SVC_cx_call>:
c0de720c:	df01      	svc	1
c0de720e:	4770      	bx	lr

c0de7210 <nvm_write>:
c0de7210:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7212:	ab01      	add	r3, sp, #4
c0de7214:	c307      	stmia	r3!, {r0, r1, r2}
c0de7216:	4802      	ldr	r0, [pc, #8]	@ (c0de7220 <nvm_write+0x10>)
c0de7218:	a901      	add	r1, sp, #4
c0de721a:	f7ff ffef 	bl	c0de71fc <SVC_Call>
c0de721e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7220:	03000003 	.word	0x03000003

c0de7224 <cx_bn_lock>:
c0de7224:	b5e0      	push	{r5, r6, r7, lr}
c0de7226:	e9cd 0100 	strd	r0, r1, [sp]
c0de722a:	4802      	ldr	r0, [pc, #8]	@ (c0de7234 <cx_bn_lock+0x10>)
c0de722c:	4669      	mov	r1, sp
c0de722e:	f7ff ffed 	bl	c0de720c <SVC_cx_call>
c0de7232:	bd8c      	pop	{r2, r3, r7, pc}
c0de7234:	02000112 	.word	0x02000112

c0de7238 <cx_bn_unlock>:
c0de7238:	b5e0      	push	{r5, r6, r7, lr}
c0de723a:	2000      	movs	r0, #0
c0de723c:	4669      	mov	r1, sp
c0de723e:	9001      	str	r0, [sp, #4]
c0de7240:	20b6      	movs	r0, #182	@ 0xb6
c0de7242:	f7ff ffe3 	bl	c0de720c <SVC_cx_call>
c0de7246:	bd8c      	pop	{r2, r3, r7, pc}

c0de7248 <cx_bn_alloc>:
c0de7248:	b5e0      	push	{r5, r6, r7, lr}
c0de724a:	e9cd 0100 	strd	r0, r1, [sp]
c0de724e:	4802      	ldr	r0, [pc, #8]	@ (c0de7258 <cx_bn_alloc+0x10>)
c0de7250:	4669      	mov	r1, sp
c0de7252:	f7ff ffdb 	bl	c0de720c <SVC_cx_call>
c0de7256:	bd8c      	pop	{r2, r3, r7, pc}
c0de7258:	02000113 	.word	0x02000113

c0de725c <cx_bn_alloc_init>:
c0de725c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de725e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7262:	4803      	ldr	r0, [pc, #12]	@ (c0de7270 <cx_bn_alloc_init+0x14>)
c0de7264:	4669      	mov	r1, sp
c0de7266:	f7ff ffd1 	bl	c0de720c <SVC_cx_call>
c0de726a:	b004      	add	sp, #16
c0de726c:	bd80      	pop	{r7, pc}
c0de726e:	bf00      	nop
c0de7270:	04000114 	.word	0x04000114

c0de7274 <cx_bn_destroy>:
c0de7274:	b5e0      	push	{r5, r6, r7, lr}
c0de7276:	f000 f9b5 	bl	c0de75e4 <OUTLINED_FUNCTION_0>
c0de727a:	4802      	ldr	r0, [pc, #8]	@ (c0de7284 <cx_bn_destroy+0x10>)
c0de727c:	4669      	mov	r1, sp
c0de727e:	f7ff ffc5 	bl	c0de720c <SVC_cx_call>
c0de7282:	bd8c      	pop	{r2, r3, r7, pc}
c0de7284:	010000bc 	.word	0x010000bc

c0de7288 <cx_bn_nbytes>:
c0de7288:	b5e0      	push	{r5, r6, r7, lr}
c0de728a:	e9cd 0100 	strd	r0, r1, [sp]
c0de728e:	4802      	ldr	r0, [pc, #8]	@ (c0de7298 <cx_bn_nbytes+0x10>)
c0de7290:	4669      	mov	r1, sp
c0de7292:	f7ff ffbb 	bl	c0de720c <SVC_cx_call>
c0de7296:	bd8c      	pop	{r2, r3, r7, pc}
c0de7298:	0200010d 	.word	0x0200010d

c0de729c <cx_bn_init>:
c0de729c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de729e:	ab01      	add	r3, sp, #4
c0de72a0:	c307      	stmia	r3!, {r0, r1, r2}
c0de72a2:	4803      	ldr	r0, [pc, #12]	@ (c0de72b0 <cx_bn_init+0x14>)
c0de72a4:	a901      	add	r1, sp, #4
c0de72a6:	f7ff ffb1 	bl	c0de720c <SVC_cx_call>
c0de72aa:	b004      	add	sp, #16
c0de72ac:	bd80      	pop	{r7, pc}
c0de72ae:	bf00      	nop
c0de72b0:	03000115 	.word	0x03000115

c0de72b4 <cx_bn_copy>:
c0de72b4:	b5e0      	push	{r5, r6, r7, lr}
c0de72b6:	e9cd 0100 	strd	r0, r1, [sp]
c0de72ba:	4802      	ldr	r0, [pc, #8]	@ (c0de72c4 <cx_bn_copy+0x10>)
c0de72bc:	4669      	mov	r1, sp
c0de72be:	f7ff ffa5 	bl	c0de720c <SVC_cx_call>
c0de72c2:	bd8c      	pop	{r2, r3, r7, pc}
c0de72c4:	020000c0 	.word	0x020000c0

c0de72c8 <cx_bn_set_u32>:
c0de72c8:	b5e0      	push	{r5, r6, r7, lr}
c0de72ca:	e9cd 0100 	strd	r0, r1, [sp]
c0de72ce:	4802      	ldr	r0, [pc, #8]	@ (c0de72d8 <cx_bn_set_u32+0x10>)
c0de72d0:	4669      	mov	r1, sp
c0de72d2:	f7ff ff9b 	bl	c0de720c <SVC_cx_call>
c0de72d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de72d8:	020000c1 	.word	0x020000c1

c0de72dc <cx_bn_export>:
c0de72dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72de:	ab01      	add	r3, sp, #4
c0de72e0:	c307      	stmia	r3!, {r0, r1, r2}
c0de72e2:	4803      	ldr	r0, [pc, #12]	@ (c0de72f0 <cx_bn_export+0x14>)
c0de72e4:	a901      	add	r1, sp, #4
c0de72e6:	f7ff ff91 	bl	c0de720c <SVC_cx_call>
c0de72ea:	b004      	add	sp, #16
c0de72ec:	bd80      	pop	{r7, pc}
c0de72ee:	bf00      	nop
c0de72f0:	030000c3 	.word	0x030000c3

c0de72f4 <cx_bn_cmp>:
c0de72f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72f6:	ab01      	add	r3, sp, #4
c0de72f8:	c307      	stmia	r3!, {r0, r1, r2}
c0de72fa:	4803      	ldr	r0, [pc, #12]	@ (c0de7308 <cx_bn_cmp+0x14>)
c0de72fc:	a901      	add	r1, sp, #4
c0de72fe:	f7ff ff85 	bl	c0de720c <SVC_cx_call>
c0de7302:	b004      	add	sp, #16
c0de7304:	bd80      	pop	{r7, pc}
c0de7306:	bf00      	nop
c0de7308:	030000c4 	.word	0x030000c4

c0de730c <cx_bn_cmp_u32>:
c0de730c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de730e:	ab01      	add	r3, sp, #4
c0de7310:	c307      	stmia	r3!, {r0, r1, r2}
c0de7312:	4803      	ldr	r0, [pc, #12]	@ (c0de7320 <cx_bn_cmp_u32+0x14>)
c0de7314:	a901      	add	r1, sp, #4
c0de7316:	f7ff ff79 	bl	c0de720c <SVC_cx_call>
c0de731a:	b004      	add	sp, #16
c0de731c:	bd80      	pop	{r7, pc}
c0de731e:	bf00      	nop
c0de7320:	030000c5 	.word	0x030000c5

c0de7324 <cx_bn_tst_bit>:
c0de7324:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7326:	ab01      	add	r3, sp, #4
c0de7328:	c307      	stmia	r3!, {r0, r1, r2}
c0de732a:	4803      	ldr	r0, [pc, #12]	@ (c0de7338 <cx_bn_tst_bit+0x14>)
c0de732c:	a901      	add	r1, sp, #4
c0de732e:	f7ff ff6d 	bl	c0de720c <SVC_cx_call>
c0de7332:	b004      	add	sp, #16
c0de7334:	bd80      	pop	{r7, pc}
c0de7336:	bf00      	nop
c0de7338:	030000cb 	.word	0x030000cb

c0de733c <cx_bn_mod_add>:
c0de733c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de733e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7342:	4803      	ldr	r0, [pc, #12]	@ (c0de7350 <cx_bn_mod_add+0x14>)
c0de7344:	4669      	mov	r1, sp
c0de7346:	f7ff ff61 	bl	c0de720c <SVC_cx_call>
c0de734a:	b004      	add	sp, #16
c0de734c:	bd80      	pop	{r7, pc}
c0de734e:	bf00      	nop
c0de7350:	040000d3 	.word	0x040000d3

c0de7354 <cx_bn_mod_sub>:
c0de7354:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7356:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de735a:	4803      	ldr	r0, [pc, #12]	@ (c0de7368 <cx_bn_mod_sub+0x14>)
c0de735c:	4669      	mov	r1, sp
c0de735e:	f7ff ff55 	bl	c0de720c <SVC_cx_call>
c0de7362:	b004      	add	sp, #16
c0de7364:	bd80      	pop	{r7, pc}
c0de7366:	bf00      	nop
c0de7368:	040000d4 	.word	0x040000d4

c0de736c <cx_bn_mod_mul>:
c0de736c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de736e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7372:	4803      	ldr	r0, [pc, #12]	@ (c0de7380 <cx_bn_mod_mul+0x14>)
c0de7374:	4669      	mov	r1, sp
c0de7376:	f7ff ff49 	bl	c0de720c <SVC_cx_call>
c0de737a:	b004      	add	sp, #16
c0de737c:	bd80      	pop	{r7, pc}
c0de737e:	bf00      	nop
c0de7380:	040000d5 	.word	0x040000d5

c0de7384 <cx_bn_reduce>:
c0de7384:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7386:	ab01      	add	r3, sp, #4
c0de7388:	c307      	stmia	r3!, {r0, r1, r2}
c0de738a:	4803      	ldr	r0, [pc, #12]	@ (c0de7398 <cx_bn_reduce+0x14>)
c0de738c:	a901      	add	r1, sp, #4
c0de738e:	f7ff ff3d 	bl	c0de720c <SVC_cx_call>
c0de7392:	b004      	add	sp, #16
c0de7394:	bd80      	pop	{r7, pc}
c0de7396:	bf00      	nop
c0de7398:	030000d6 	.word	0x030000d6

c0de739c <cx_bn_mod_invert_nprime>:
c0de739c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de739e:	ab01      	add	r3, sp, #4
c0de73a0:	c307      	stmia	r3!, {r0, r1, r2}
c0de73a2:	4803      	ldr	r0, [pc, #12]	@ (c0de73b0 <cx_bn_mod_invert_nprime+0x14>)
c0de73a4:	a901      	add	r1, sp, #4
c0de73a6:	f7ff ff31 	bl	c0de720c <SVC_cx_call>
c0de73aa:	b004      	add	sp, #16
c0de73ac:	bd80      	pop	{r7, pc}
c0de73ae:	bf00      	nop
c0de73b0:	030000da 	.word	0x030000da

c0de73b4 <cx_bn_is_prime>:
c0de73b4:	b5e0      	push	{r5, r6, r7, lr}
c0de73b6:	e9cd 0100 	strd	r0, r1, [sp]
c0de73ba:	4802      	ldr	r0, [pc, #8]	@ (c0de73c4 <cx_bn_is_prime+0x10>)
c0de73bc:	4669      	mov	r1, sp
c0de73be:	f7ff ff25 	bl	c0de720c <SVC_cx_call>
c0de73c2:	bd8c      	pop	{r2, r3, r7, pc}
c0de73c4:	020000ef 	.word	0x020000ef

c0de73c8 <cx_mont_alloc>:
c0de73c8:	b5e0      	push	{r5, r6, r7, lr}
c0de73ca:	e9cd 0100 	strd	r0, r1, [sp]
c0de73ce:	4802      	ldr	r0, [pc, #8]	@ (c0de73d8 <cx_mont_alloc+0x10>)
c0de73d0:	4669      	mov	r1, sp
c0de73d2:	f7ff ff1b 	bl	c0de720c <SVC_cx_call>
c0de73d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de73d8:	020000dc 	.word	0x020000dc

c0de73dc <cx_mont_init>:
c0de73dc:	b5e0      	push	{r5, r6, r7, lr}
c0de73de:	e9cd 0100 	strd	r0, r1, [sp]
c0de73e2:	4802      	ldr	r0, [pc, #8]	@ (c0de73ec <cx_mont_init+0x10>)
c0de73e4:	4669      	mov	r1, sp
c0de73e6:	f7ff ff11 	bl	c0de720c <SVC_cx_call>
c0de73ea:	bd8c      	pop	{r2, r3, r7, pc}
c0de73ec:	020000dd 	.word	0x020000dd

c0de73f0 <cx_mont_to_montgomery>:
c0de73f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73f2:	ab01      	add	r3, sp, #4
c0de73f4:	c307      	stmia	r3!, {r0, r1, r2}
c0de73f6:	4803      	ldr	r0, [pc, #12]	@ (c0de7404 <cx_mont_to_montgomery+0x14>)
c0de73f8:	a901      	add	r1, sp, #4
c0de73fa:	f7ff ff07 	bl	c0de720c <SVC_cx_call>
c0de73fe:	b004      	add	sp, #16
c0de7400:	bd80      	pop	{r7, pc}
c0de7402:	bf00      	nop
c0de7404:	030000df 	.word	0x030000df

c0de7408 <cx_mont_from_montgomery>:
c0de7408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de740a:	ab01      	add	r3, sp, #4
c0de740c:	c307      	stmia	r3!, {r0, r1, r2}
c0de740e:	4803      	ldr	r0, [pc, #12]	@ (c0de741c <cx_mont_from_montgomery+0x14>)
c0de7410:	a901      	add	r1, sp, #4
c0de7412:	f7ff fefb 	bl	c0de720c <SVC_cx_call>
c0de7416:	b004      	add	sp, #16
c0de7418:	bd80      	pop	{r7, pc}
c0de741a:	bf00      	nop
c0de741c:	030000e0 	.word	0x030000e0

c0de7420 <cx_mont_mul>:
c0de7420:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7422:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7426:	4803      	ldr	r0, [pc, #12]	@ (c0de7434 <cx_mont_mul+0x14>)
c0de7428:	4669      	mov	r1, sp
c0de742a:	f7ff feef 	bl	c0de720c <SVC_cx_call>
c0de742e:	b004      	add	sp, #16
c0de7430:	bd80      	pop	{r7, pc}
c0de7432:	bf00      	nop
c0de7434:	040000e1 	.word	0x040000e1

c0de7438 <cx_mont_pow>:
c0de7438:	b510      	push	{r4, lr}
c0de743a:	b086      	sub	sp, #24
c0de743c:	f10d 0c04 	add.w	ip, sp, #4
c0de7440:	9c08      	ldr	r4, [sp, #32]
c0de7442:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7446:	4803      	ldr	r0, [pc, #12]	@ (c0de7454 <cx_mont_pow+0x1c>)
c0de7448:	a901      	add	r1, sp, #4
c0de744a:	f7ff fedf 	bl	c0de720c <SVC_cx_call>
c0de744e:	b006      	add	sp, #24
c0de7450:	bd10      	pop	{r4, pc}
c0de7452:	bf00      	nop
c0de7454:	050000e2 	.word	0x050000e2

c0de7458 <cx_mont_invert_nprime>:
c0de7458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de745a:	ab01      	add	r3, sp, #4
c0de745c:	c307      	stmia	r3!, {r0, r1, r2}
c0de745e:	4803      	ldr	r0, [pc, #12]	@ (c0de746c <cx_mont_invert_nprime+0x14>)
c0de7460:	a901      	add	r1, sp, #4
c0de7462:	f7ff fed3 	bl	c0de720c <SVC_cx_call>
c0de7466:	b004      	add	sp, #16
c0de7468:	bd80      	pop	{r7, pc}
c0de746a:	bf00      	nop
c0de746c:	030000e4 	.word	0x030000e4

c0de7470 <cx_ecdomain_parameters_length>:
c0de7470:	b5e0      	push	{r5, r6, r7, lr}
c0de7472:	e9cd 0100 	strd	r0, r1, [sp]
c0de7476:	4802      	ldr	r0, [pc, #8]	@ (c0de7480 <cx_ecdomain_parameters_length+0x10>)
c0de7478:	4669      	mov	r1, sp
c0de747a:	f7ff fec7 	bl	c0de720c <SVC_cx_call>
c0de747e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7480:	0200012f 	.word	0x0200012f

c0de7484 <os_perso_derive_node_with_seed_key>:
c0de7484:	b510      	push	{r4, lr}
c0de7486:	b088      	sub	sp, #32
c0de7488:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de748a:	9407      	str	r4, [sp, #28]
c0de748c:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de748e:	9406      	str	r4, [sp, #24]
c0de7490:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7492:	9405      	str	r4, [sp, #20]
c0de7494:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7496:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de749a:	4803      	ldr	r0, [pc, #12]	@ (c0de74a8 <os_perso_derive_node_with_seed_key+0x24>)
c0de749c:	4669      	mov	r1, sp
c0de749e:	f7ff fead 	bl	c0de71fc <SVC_Call>
c0de74a2:	b008      	add	sp, #32
c0de74a4:	bd10      	pop	{r4, pc}
c0de74a6:	bf00      	nop
c0de74a8:	080000a6 	.word	0x080000a6

c0de74ac <os_pki_load_certificate>:
c0de74ac:	b510      	push	{r4, lr}
c0de74ae:	b086      	sub	sp, #24
c0de74b0:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de74b2:	9405      	str	r4, [sp, #20]
c0de74b4:	9c08      	ldr	r4, [sp, #32]
c0de74b6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de74ba:	4803      	ldr	r0, [pc, #12]	@ (c0de74c8 <os_pki_load_certificate+0x1c>)
c0de74bc:	4669      	mov	r1, sp
c0de74be:	f7ff fe9d 	bl	c0de71fc <SVC_Call>
c0de74c2:	b006      	add	sp, #24
c0de74c4:	bd10      	pop	{r4, pc}
c0de74c6:	bf00      	nop
c0de74c8:	060000aa 	.word	0x060000aa

c0de74cc <os_perso_is_pin_set>:
c0de74cc:	b5e0      	push	{r5, r6, r7, lr}
c0de74ce:	2000      	movs	r0, #0
c0de74d0:	4669      	mov	r1, sp
c0de74d2:	9001      	str	r0, [sp, #4]
c0de74d4:	209e      	movs	r0, #158	@ 0x9e
c0de74d6:	f7ff fe91 	bl	c0de71fc <SVC_Call>
c0de74da:	b2c0      	uxtb	r0, r0
c0de74dc:	bd8c      	pop	{r2, r3, r7, pc}

c0de74de <os_global_pin_is_validated>:
c0de74de:	b5e0      	push	{r5, r6, r7, lr}
c0de74e0:	2000      	movs	r0, #0
c0de74e2:	4669      	mov	r1, sp
c0de74e4:	9001      	str	r0, [sp, #4]
c0de74e6:	20a0      	movs	r0, #160	@ 0xa0
c0de74e8:	f7ff fe88 	bl	c0de71fc <SVC_Call>
c0de74ec:	b2c0      	uxtb	r0, r0
c0de74ee:	bd8c      	pop	{r2, r3, r7, pc}

c0de74f0 <os_ux>:
c0de74f0:	b5e0      	push	{r5, r6, r7, lr}
c0de74f2:	f000 f877 	bl	c0de75e4 <OUTLINED_FUNCTION_0>
c0de74f6:	4802      	ldr	r0, [pc, #8]	@ (c0de7500 <os_ux+0x10>)
c0de74f8:	4669      	mov	r1, sp
c0de74fa:	f7ff fe7f 	bl	c0de71fc <SVC_Call>
c0de74fe:	bd8c      	pop	{r2, r3, r7, pc}
c0de7500:	01000064 	.word	0x01000064

c0de7504 <os_lib_end>:
c0de7504:	b082      	sub	sp, #8
c0de7506:	2000      	movs	r0, #0
c0de7508:	4669      	mov	r1, sp
c0de750a:	9001      	str	r0, [sp, #4]
c0de750c:	2068      	movs	r0, #104	@ 0x68
c0de750e:	f7ff fe75 	bl	c0de71fc <SVC_Call>
c0de7512:	deff      	udf	#255	@ 0xff

c0de7514 <os_flags>:
c0de7514:	b5e0      	push	{r5, r6, r7, lr}
c0de7516:	2000      	movs	r0, #0
c0de7518:	4669      	mov	r1, sp
c0de751a:	9001      	str	r0, [sp, #4]
c0de751c:	206a      	movs	r0, #106	@ 0x6a
c0de751e:	f7ff fe6d 	bl	c0de71fc <SVC_Call>
c0de7522:	bd8c      	pop	{r2, r3, r7, pc}

c0de7524 <os_registry_get_current_app_tag>:
c0de7524:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7526:	ab01      	add	r3, sp, #4
c0de7528:	c307      	stmia	r3!, {r0, r1, r2}
c0de752a:	4803      	ldr	r0, [pc, #12]	@ (c0de7538 <os_registry_get_current_app_tag+0x14>)
c0de752c:	a901      	add	r1, sp, #4
c0de752e:	f7ff fe65 	bl	c0de71fc <SVC_Call>
c0de7532:	b004      	add	sp, #16
c0de7534:	bd80      	pop	{r7, pc}
c0de7536:	bf00      	nop
c0de7538:	03000074 	.word	0x03000074

c0de753c <os_sched_exit>:
c0de753c:	b082      	sub	sp, #8
c0de753e:	f000 f851 	bl	c0de75e4 <OUTLINED_FUNCTION_0>
c0de7542:	4802      	ldr	r0, [pc, #8]	@ (c0de754c <os_sched_exit+0x10>)
c0de7544:	4669      	mov	r1, sp
c0de7546:	f7ff fe59 	bl	c0de71fc <SVC_Call>
c0de754a:	deff      	udf	#255	@ 0xff
c0de754c:	0100009a 	.word	0x0100009a

c0de7550 <os_io_init>:
c0de7550:	b5e0      	push	{r5, r6, r7, lr}
c0de7552:	9001      	str	r0, [sp, #4]
c0de7554:	4802      	ldr	r0, [pc, #8]	@ (c0de7560 <os_io_init+0x10>)
c0de7556:	a901      	add	r1, sp, #4
c0de7558:	f7ff fe50 	bl	c0de71fc <SVC_Call>
c0de755c:	bd8c      	pop	{r2, r3, r7, pc}
c0de755e:	bf00      	nop
c0de7560:	01000084 	.word	0x01000084

c0de7564 <os_io_start>:
c0de7564:	b5e0      	push	{r5, r6, r7, lr}
c0de7566:	2000      	movs	r0, #0
c0de7568:	4669      	mov	r1, sp
c0de756a:	9001      	str	r0, [sp, #4]
c0de756c:	4801      	ldr	r0, [pc, #4]	@ (c0de7574 <os_io_start+0x10>)
c0de756e:	f7ff fe45 	bl	c0de71fc <SVC_Call>
c0de7572:	bd8c      	pop	{r2, r3, r7, pc}
c0de7574:	01000085 	.word	0x01000085

c0de7578 <os_io_tx_cmd>:
c0de7578:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de757a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de757e:	4803      	ldr	r0, [pc, #12]	@ (c0de758c <os_io_tx_cmd+0x14>)
c0de7580:	4669      	mov	r1, sp
c0de7582:	f7ff fe3b 	bl	c0de71fc <SVC_Call>
c0de7586:	b004      	add	sp, #16
c0de7588:	bd80      	pop	{r7, pc}
c0de758a:	bf00      	nop
c0de758c:	04000088 	.word	0x04000088

c0de7590 <os_io_rx_evt>:
c0de7590:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7592:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7596:	4803      	ldr	r0, [pc, #12]	@ (c0de75a4 <os_io_rx_evt+0x14>)
c0de7598:	4669      	mov	r1, sp
c0de759a:	f7ff fe2f 	bl	c0de71fc <SVC_Call>
c0de759e:	b004      	add	sp, #16
c0de75a0:	bd80      	pop	{r7, pc}
c0de75a2:	bf00      	nop
c0de75a4:	03000089 	.word	0x03000089

c0de75a8 <try_context_get>:
c0de75a8:	b5e0      	push	{r5, r6, r7, lr}
c0de75aa:	2000      	movs	r0, #0
c0de75ac:	4669      	mov	r1, sp
c0de75ae:	9001      	str	r0, [sp, #4]
c0de75b0:	2087      	movs	r0, #135	@ 0x87
c0de75b2:	f7ff fe23 	bl	c0de71fc <SVC_Call>
c0de75b6:	bd8c      	pop	{r2, r3, r7, pc}

c0de75b8 <try_context_set>:
c0de75b8:	b5e0      	push	{r5, r6, r7, lr}
c0de75ba:	f000 f813 	bl	c0de75e4 <OUTLINED_FUNCTION_0>
c0de75be:	4802      	ldr	r0, [pc, #8]	@ (c0de75c8 <try_context_set+0x10>)
c0de75c0:	4669      	mov	r1, sp
c0de75c2:	f7ff fe1b 	bl	c0de71fc <SVC_Call>
c0de75c6:	bd8c      	pop	{r2, r3, r7, pc}
c0de75c8:	0100010b 	.word	0x0100010b

c0de75cc <os_sched_last_status>:
c0de75cc:	b5e0      	push	{r5, r6, r7, lr}
c0de75ce:	f000 f809 	bl	c0de75e4 <OUTLINED_FUNCTION_0>
c0de75d2:	4803      	ldr	r0, [pc, #12]	@ (c0de75e0 <os_sched_last_status+0x14>)
c0de75d4:	4669      	mov	r1, sp
c0de75d6:	f7ff fe11 	bl	c0de71fc <SVC_Call>
c0de75da:	b2c0      	uxtb	r0, r0
c0de75dc:	bd8c      	pop	{r2, r3, r7, pc}
c0de75de:	bf00      	nop
c0de75e0:	0100009c 	.word	0x0100009c

c0de75e4 <OUTLINED_FUNCTION_0>:
c0de75e4:	2100      	movs	r1, #0
c0de75e6:	e9cd 0100 	strd	r0, r1, [sp]
c0de75ea:	4770      	bx	lr

c0de75ec <__udivmoddi4>:
c0de75ec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de75f0:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de75f4:	4604      	mov	r4, r0
c0de75f6:	b179      	cbz	r1, c0de7618 <__udivmoddi4+0x2c>
c0de75f8:	b1ba      	cbz	r2, c0de762a <__udivmoddi4+0x3e>
c0de75fa:	b35b      	cbz	r3, c0de7654 <__udivmoddi4+0x68>
c0de75fc:	fab1 f581 	clz	r5, r1
c0de7600:	fab3 f683 	clz	r6, r3
c0de7604:	1b75      	subs	r5, r6, r5
c0de7606:	2d20      	cmp	r5, #32
c0de7608:	d34a      	bcc.n	c0de76a0 <__udivmoddi4+0xb4>
c0de760a:	f1bc 0f00 	cmp.w	ip, #0
c0de760e:	bf18      	it	ne
c0de7610:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7614:	2400      	movs	r4, #0
c0de7616:	e066      	b.n	c0de76e6 <__udivmoddi4+0xfa>
c0de7618:	b3cb      	cbz	r3, c0de768e <__udivmoddi4+0xa2>
c0de761a:	2100      	movs	r1, #0
c0de761c:	f1bc 0f00 	cmp.w	ip, #0
c0de7620:	bf18      	it	ne
c0de7622:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7626:	2400      	movs	r4, #0
c0de7628:	e0a6      	b.n	c0de7778 <__udivmoddi4+0x18c>
c0de762a:	2b00      	cmp	r3, #0
c0de762c:	d03e      	beq.n	c0de76ac <__udivmoddi4+0xc0>
c0de762e:	2800      	cmp	r0, #0
c0de7630:	d04f      	beq.n	c0de76d2 <__udivmoddi4+0xe6>
c0de7632:	1e5d      	subs	r5, r3, #1
c0de7634:	422b      	tst	r3, r5
c0de7636:	d158      	bne.n	c0de76ea <__udivmoddi4+0xfe>
c0de7638:	f1bc 0f00 	cmp.w	ip, #0
c0de763c:	bf1c      	itt	ne
c0de763e:	ea05 0001 	andne.w	r0, r5, r1
c0de7642:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7646:	fa93 f0a3 	rbit	r0, r3
c0de764a:	fab0 f080 	clz	r0, r0
c0de764e:	fa21 f400 	lsr.w	r4, r1, r0
c0de7652:	e048      	b.n	c0de76e6 <__udivmoddi4+0xfa>
c0de7654:	1e55      	subs	r5, r2, #1
c0de7656:	422a      	tst	r2, r5
c0de7658:	d129      	bne.n	c0de76ae <__udivmoddi4+0xc2>
c0de765a:	f1bc 0f00 	cmp.w	ip, #0
c0de765e:	bf1e      	ittt	ne
c0de7660:	2300      	movne	r3, #0
c0de7662:	4005      	andne	r5, r0
c0de7664:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7668:	2a01      	cmp	r2, #1
c0de766a:	f000 8085 	beq.w	c0de7778 <__udivmoddi4+0x18c>
c0de766e:	fa92 f2a2 	rbit	r2, r2
c0de7672:	004c      	lsls	r4, r1, #1
c0de7674:	fab2 f282 	clz	r2, r2
c0de7678:	f002 031f 	and.w	r3, r2, #31
c0de767c:	40d1      	lsrs	r1, r2
c0de767e:	40d8      	lsrs	r0, r3
c0de7680:	231f      	movs	r3, #31
c0de7682:	4393      	bics	r3, r2
c0de7684:	fa04 f303 	lsl.w	r3, r4, r3
c0de7688:	ea43 0400 	orr.w	r4, r3, r0
c0de768c:	e074      	b.n	c0de7778 <__udivmoddi4+0x18c>
c0de768e:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7692:	f1bc 0f00 	cmp.w	ip, #0
c0de7696:	d026      	beq.n	c0de76e6 <__udivmoddi4+0xfa>
c0de7698:	fb04 0012 	mls	r0, r4, r2, r0
c0de769c:	2100      	movs	r1, #0
c0de769e:	e020      	b.n	c0de76e2 <__udivmoddi4+0xf6>
c0de76a0:	f105 0e01 	add.w	lr, r5, #1
c0de76a4:	f1be 0f20 	cmp.w	lr, #32
c0de76a8:	d00b      	beq.n	c0de76c2 <__udivmoddi4+0xd6>
c0de76aa:	e028      	b.n	c0de76fe <__udivmoddi4+0x112>
c0de76ac:	e064      	b.n	c0de7778 <__udivmoddi4+0x18c>
c0de76ae:	fab1 f481 	clz	r4, r1
c0de76b2:	fab2 f582 	clz	r5, r2
c0de76b6:	1b2c      	subs	r4, r5, r4
c0de76b8:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de76bc:	f1be 0f20 	cmp.w	lr, #32
c0de76c0:	d15d      	bne.n	c0de777e <__udivmoddi4+0x192>
c0de76c2:	f04f 0e20 	mov.w	lr, #32
c0de76c6:	f04f 0a00 	mov.w	sl, #0
c0de76ca:	f04f 0b00 	mov.w	fp, #0
c0de76ce:	460e      	mov	r6, r1
c0de76d0:	e021      	b.n	c0de7716 <__udivmoddi4+0x12a>
c0de76d2:	fbb1 f4f3 	udiv	r4, r1, r3
c0de76d6:	f1bc 0f00 	cmp.w	ip, #0
c0de76da:	d004      	beq.n	c0de76e6 <__udivmoddi4+0xfa>
c0de76dc:	2000      	movs	r0, #0
c0de76de:	fb04 1113 	mls	r1, r4, r3, r1
c0de76e2:	e9cc 0100 	strd	r0, r1, [ip]
c0de76e6:	2100      	movs	r1, #0
c0de76e8:	e046      	b.n	c0de7778 <__udivmoddi4+0x18c>
c0de76ea:	fab1 f581 	clz	r5, r1
c0de76ee:	fab3 f683 	clz	r6, r3
c0de76f2:	1b75      	subs	r5, r6, r5
c0de76f4:	2d1f      	cmp	r5, #31
c0de76f6:	f4bf af88 	bcs.w	c0de760a <__udivmoddi4+0x1e>
c0de76fa:	f105 0e01 	add.w	lr, r5, #1
c0de76fe:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7702:	f1c5 051f 	rsb	r5, r5, #31
c0de7706:	fa01 f605 	lsl.w	r6, r1, r5
c0de770a:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de770e:	40a8      	lsls	r0, r5
c0de7710:	f04f 0a00 	mov.w	sl, #0
c0de7714:	4326      	orrs	r6, r4
c0de7716:	f04f 0800 	mov.w	r8, #0
c0de771a:	f1be 0f00 	cmp.w	lr, #0
c0de771e:	d01c      	beq.n	c0de775a <__udivmoddi4+0x16e>
c0de7720:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7724:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7728:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de772c:	0076      	lsls	r6, r6, #1
c0de772e:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7732:	1aae      	subs	r6, r5, r2
c0de7734:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7738:	43cf      	mvns	r7, r1
c0de773a:	43ec      	mvns	r4, r5
c0de773c:	18a4      	adds	r4, r4, r2
c0de773e:	eb57 0403 	adcs.w	r4, r7, r3
c0de7742:	bf5c      	itt	pl
c0de7744:	468b      	movpl	fp, r1
c0de7746:	462e      	movpl	r6, r5
c0de7748:	0040      	lsls	r0, r0, #1
c0de774a:	0fe1      	lsrs	r1, r4, #31
c0de774c:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7750:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7754:	46a2      	mov	sl, r4
c0de7756:	4688      	mov	r8, r1
c0de7758:	e7df      	b.n	c0de771a <__udivmoddi4+0x12e>
c0de775a:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de775e:	f1bc 0f00 	cmp.w	ip, #0
c0de7762:	bf18      	it	ne
c0de7764:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7768:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de776c:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7770:	f020 0001 	bic.w	r0, r0, #1
c0de7774:	ea40 0408 	orr.w	r4, r0, r8
c0de7778:	4620      	mov	r0, r4
c0de777a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de777e:	f1be 0f1f 	cmp.w	lr, #31
c0de7782:	d804      	bhi.n	c0de778e <__udivmoddi4+0x1a2>
c0de7784:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7788:	f1ce 0520 	rsb	r5, lr, #32
c0de778c:	e7bb      	b.n	c0de7706 <__udivmoddi4+0x11a>
c0de778e:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7792:	f1ae 0420 	sub.w	r4, lr, #32
c0de7796:	f04f 0b00 	mov.w	fp, #0
c0de779a:	fa20 f504 	lsr.w	r5, r0, r4
c0de779e:	fa01 f607 	lsl.w	r6, r1, r7
c0de77a2:	fa00 fa07 	lsl.w	sl, r0, r7
c0de77a6:	ea46 0805 	orr.w	r8, r6, r5
c0de77aa:	fa21 f604 	lsr.w	r6, r1, r4
c0de77ae:	4640      	mov	r0, r8
c0de77b0:	e7b1      	b.n	c0de7716 <__udivmoddi4+0x12a>
	...

c0de77b4 <__aeabi_memcpy>:
c0de77b4:	f000 b81c 	b.w	c0de77f0 <memcpy>

c0de77b8 <__aeabi_memmove>:
c0de77b8:	f000 b828 	b.w	c0de780c <memmove>

c0de77bc <__aeabi_memset>:
c0de77bc:	460b      	mov	r3, r1
c0de77be:	4611      	mov	r1, r2
c0de77c0:	461a      	mov	r2, r3
c0de77c2:	f000 b83d 	b.w	c0de7840 <memset>
c0de77c6:	bf00      	nop

c0de77c8 <__aeabi_memclr>:
c0de77c8:	460a      	mov	r2, r1
c0de77ca:	2100      	movs	r1, #0
c0de77cc:	f000 b838 	b.w	c0de7840 <memset>

c0de77d0 <__aeabi_uldivmod>:
c0de77d0:	b540      	push	{r6, lr}
c0de77d2:	b084      	sub	sp, #16
c0de77d4:	ae02      	add	r6, sp, #8
c0de77d6:	9600      	str	r6, [sp, #0]
c0de77d8:	f7ff ff08 	bl	c0de75ec <__udivmoddi4>
c0de77dc:	9a02      	ldr	r2, [sp, #8]
c0de77de:	9b03      	ldr	r3, [sp, #12]
c0de77e0:	b004      	add	sp, #16
c0de77e2:	bd40      	pop	{r6, pc}

c0de77e4 <explicit_bzero>:
c0de77e4:	f000 b800 	b.w	c0de77e8 <bzero>

c0de77e8 <bzero>:
c0de77e8:	460a      	mov	r2, r1
c0de77ea:	2100      	movs	r1, #0
c0de77ec:	f000 b828 	b.w	c0de7840 <memset>

c0de77f0 <memcpy>:
c0de77f0:	440a      	add	r2, r1
c0de77f2:	4291      	cmp	r1, r2
c0de77f4:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de77f8:	d100      	bne.n	c0de77fc <memcpy+0xc>
c0de77fa:	4770      	bx	lr
c0de77fc:	b510      	push	{r4, lr}
c0de77fe:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7802:	4291      	cmp	r1, r2
c0de7804:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7808:	d1f9      	bne.n	c0de77fe <memcpy+0xe>
c0de780a:	bd10      	pop	{r4, pc}

c0de780c <memmove>:
c0de780c:	4288      	cmp	r0, r1
c0de780e:	b510      	push	{r4, lr}
c0de7810:	eb01 0402 	add.w	r4, r1, r2
c0de7814:	d902      	bls.n	c0de781c <memmove+0x10>
c0de7816:	4284      	cmp	r4, r0
c0de7818:	4623      	mov	r3, r4
c0de781a:	d807      	bhi.n	c0de782c <memmove+0x20>
c0de781c:	1e43      	subs	r3, r0, #1
c0de781e:	42a1      	cmp	r1, r4
c0de7820:	d008      	beq.n	c0de7834 <memmove+0x28>
c0de7822:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7826:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de782a:	e7f8      	b.n	c0de781e <memmove+0x12>
c0de782c:	4601      	mov	r1, r0
c0de782e:	4402      	add	r2, r0
c0de7830:	428a      	cmp	r2, r1
c0de7832:	d100      	bne.n	c0de7836 <memmove+0x2a>
c0de7834:	bd10      	pop	{r4, pc}
c0de7836:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de783a:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de783e:	e7f7      	b.n	c0de7830 <memmove+0x24>

c0de7840 <memset>:
c0de7840:	4603      	mov	r3, r0
c0de7842:	4402      	add	r2, r0
c0de7844:	4293      	cmp	r3, r2
c0de7846:	d100      	bne.n	c0de784a <memset+0xa>
c0de7848:	4770      	bx	lr
c0de784a:	f803 1b01 	strb.w	r1, [r3], #1
c0de784e:	e7f9      	b.n	c0de7844 <memset+0x4>

c0de7850 <setjmp>:
c0de7850:	46ec      	mov	ip, sp
c0de7852:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7856:	f04f 0000 	mov.w	r0, #0
c0de785a:	4770      	bx	lr

c0de785c <longjmp>:
c0de785c:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7860:	46e5      	mov	sp, ip
c0de7862:	0008      	movs	r0, r1
c0de7864:	bf08      	it	eq
c0de7866:	2001      	moveq	r0, #1
c0de7868:	4770      	bx	lr
c0de786a:	bf00      	nop

c0de786c <strcmp>:
c0de786c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7870:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7874:	2a01      	cmp	r2, #1
c0de7876:	bf28      	it	cs
c0de7878:	429a      	cmpcs	r2, r3
c0de787a:	d0f7      	beq.n	c0de786c <strcmp>
c0de787c:	1ad0      	subs	r0, r2, r3
c0de787e:	4770      	bx	lr

c0de7880 <strlen>:
c0de7880:	4603      	mov	r3, r0
c0de7882:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7886:	2a00      	cmp	r2, #0
c0de7888:	d1fb      	bne.n	c0de7882 <strlen+0x2>
c0de788a:	1a18      	subs	r0, r3, r0
c0de788c:	3801      	subs	r0, #1
c0de788e:	4770      	bx	lr

c0de7890 <strncmp>:
c0de7890:	b510      	push	{r4, lr}
c0de7892:	b16a      	cbz	r2, c0de78b0 <strncmp+0x20>
c0de7894:	3901      	subs	r1, #1
c0de7896:	1884      	adds	r4, r0, r2
c0de7898:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de789c:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de78a0:	429a      	cmp	r2, r3
c0de78a2:	d103      	bne.n	c0de78ac <strncmp+0x1c>
c0de78a4:	42a0      	cmp	r0, r4
c0de78a6:	d001      	beq.n	c0de78ac <strncmp+0x1c>
c0de78a8:	2a00      	cmp	r2, #0
c0de78aa:	d1f5      	bne.n	c0de7898 <strncmp+0x8>
c0de78ac:	1ad0      	subs	r0, r2, r3
c0de78ae:	bd10      	pop	{r4, pc}
c0de78b0:	4610      	mov	r0, r2
c0de78b2:	e7fc      	b.n	c0de78ae <strncmp+0x1e>

c0de78b4 <strncpy>:
c0de78b4:	4603      	mov	r3, r0
c0de78b6:	b510      	push	{r4, lr}
c0de78b8:	3901      	subs	r1, #1
c0de78ba:	b132      	cbz	r2, c0de78ca <strncpy+0x16>
c0de78bc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de78c0:	3a01      	subs	r2, #1
c0de78c2:	f803 4b01 	strb.w	r4, [r3], #1
c0de78c6:	2c00      	cmp	r4, #0
c0de78c8:	d1f7      	bne.n	c0de78ba <strncpy+0x6>
c0de78ca:	2100      	movs	r1, #0
c0de78cc:	441a      	add	r2, r3
c0de78ce:	4293      	cmp	r3, r2
c0de78d0:	d100      	bne.n	c0de78d4 <strncpy+0x20>
c0de78d2:	bd10      	pop	{r4, pc}
c0de78d4:	f803 1b01 	strb.w	r1, [r3], #1
c0de78d8:	e7f9      	b.n	c0de78ce <strncpy+0x1a>

c0de78da <C_home_boilerplate_14px_bitmap>:
c0de78da:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de78ea:	fc7b df0f 7ffe 7ff8                          {........

c0de78f3 <C_home_boilerplate_14px>:
c0de78f3:	000e 000e 0000 78da c0de                    .......x..

c0de78fd <C_Information_circle_14px_bitmap>:
c0de78fd:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de790d:	e7ff 8fff 1ffc 1ee0                          .........

c0de7916 <C_Information_circle_14px>:
c0de7916:	000e 000e 0000 78fd c0de                    .......x..

c0de7920 <C_Quit_14px_bitmap>:
c0de7920:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7930:	6680 9801 7f06 fff9                          .f.......

c0de7939 <C_Quit_14px>:
c0de7939:	000e 000e 0000 7920 c0de                    ...... y..

c0de7943 <C_Switch_Off_8px_bitmap>:
c0de7943:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de794f <C_Switch_Off_8px>:
c0de794f:	000c 0008 0000 7943 c0de                    ......Cy..

c0de7959 <C_Switch_On_8px_bitmap>:
c0de7959:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7965 <C_Switch_On_8px>:
c0de7965:	000c 0008 0000 7959 c0de                    ......Yy..

c0de796f <C_icon_back_x_bitmap>:
c0de796f:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de797f:	003f 0078 00c0 0000                          ?.x......

c0de7988 <C_icon_back_x>:
c0de7988:	000e 000e 0000 796f c0de                    ......oy..

c0de7992 <C_icon_coggle_bitmap>:
c0de7992:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de79a2:	807f 00b4 00c0 0000                          .........

c0de79ab <C_icon_coggle>:
c0de79ab:	000e 000e 0000 7992 c0de                    .......y..

c0de79b5 <C_icon_crossmark_bitmap>:
c0de79b5:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de79c5:	8373 1c87 600e 0018                          s....`...

c0de79ce <C_icon_crossmark>:
c0de79ce:	000e 000e 0000 79b5 c0de                    .......y..

c0de79d8 <C_icon_down_bitmap>:
c0de79d8:	2184 8024                                   .!$.

c0de79dc <C_icon_down>:
c0de79dc:	0007 0004 0000 79d8 c0de                    .......y..

c0de79e6 <C_icon_left_bitmap>:
c0de79e6:	8882 80a0                                   ....

c0de79ea <C_icon_left>:
c0de79ea:	0004 0007 0000 79e6 c0de                    .......y..

c0de79f4 <C_icon_processing_bitmap>:
c0de79f4:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7a04:	8361 04b7 03c8 0000                          a........

c0de7a0d <C_icon_processing>:
c0de7a0d:	000e 000e 0000 79f4 c0de                    .......y..

c0de7a17 <C_icon_right_bitmap>:
c0de7a17:	5110 1014                                   .Q..

c0de7a1b <C_icon_right>:
c0de7a1b:	0004 0007 0000 7a17 c0de                    .......z..

c0de7a25 <C_icon_up_bitmap>:
c0de7a25:	4812 1042                                   .HB.

c0de7a29 <C_icon_up>:
c0de7a29:	0007 0004 0000 7a25 c0de                    ......%z..

c0de7a33 <C_icon_validate_14_bitmap>:
c0de7a33:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7a43:	a3b3 a3a3 f0b2                               ......P

c0de7a4a <C_icon_validate_14>:
c0de7a4a:	000e 000e 0100 7a33 c0de                    ......3z..

c0de7a54 <C_icon_warning_bitmap>:
c0de7a54:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7a64:	e01f 801f 001e 0018                          .........

c0de7a6d <C_icon_warning>:
c0de7a6d:	000e 000e 0000 7a54 c0de                    ......Tz..

c0de7a77 <C_app_boilerplate_14px_bitmap>:
c0de7a77:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7a87:	0384 00f0 0000 0000                          .........

c0de7a90 <C_app_boilerplate_14px>:
c0de7a90:	000e 000e 0000 7a77 c0de 7544 6d6d 2079     ......wz..Dummy 
c0de7aa0:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0de7ab0:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0de7ac0:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0de7ad0:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0de7ae0:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0de7af0:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0de7b00:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0de7b10:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0de7b20:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0de7b30:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0de7b40:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0de7b50:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0de7b60:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0de7b70:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0de7b80:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0de7b90:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0de7ba0:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0de7bb0:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0de7bc0:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0de7bd0:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0de7be0:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0de7bf0:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0de7c00:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0de7c10:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0de7c20:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0de7c30:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0de7c40:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0de7c50:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0de7c60:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0de7c70:	6556 7372 6f69 006e 6143 636e 6c65 4100     Version.Cancel.A
c0de7c80:	6464 6572 7373 7620 7265 6669 6369 7461     ddress verificat
c0de7c90:	6f69 206e 6163 636e 6c65 656c 0064 6944     ion cancelled.Di
c0de7ca0:	6173 6c62 6465 4100 7070 7320 7465 6974     sabled.App setti
c0de7cb0:	676e 0073 6341 6563 7470 7220 7369 206b     ngs.Accept risk 
c0de7cc0:	6e61 2064 6973 6e67 7420 6172 736e 6361     and sign transac
c0de7cd0:	6974 6e6f 4200 696c 646e 7320 6769 696e     tion.Blind signi
c0de7ce0:	676e 6120 6568 6461 4100 6363 7065 2074     ng ahead.Accept 
c0de7cf0:	6972 6b73 6120 646e 7320 6769 206e 706f     risk and sign op
c0de7d00:	7265 7461 6f69 006e 654d 7373 6761 2065     eration.Message 
c0de7d10:	6572 656a 7463 6465 3000 3231 3433 3635     rejected.0123456
c0de7d20:	3837 4139 4342 4544 0046 4f42 204c 2e25     789ABCDEF.BOL %.
c0de7d30:	732a 4100 6464 6572 7373 4200 6361 006b     *s.Address.Back.
c0de7d40:	7544 6d6d 2079 0031 2049 6e75 6564 7372     Dummy 1.I unders
c0de7d50:	6174 646e 202c 6f63 666e 7269 006d 7254     tand, confirm.Tr
c0de7d60:	6e61 6173 7463 6f69 206e 6572 656a 7463     ansaction reject
c0de7d70:	6465 4100 7070 6920 666e 006f 6953 6e67     ed.App info.Sign
c0de7d80:	6f20 6570 6172 6974 6e6f 5200 6a65 6365      operation.Rejec
c0de7d90:	2074 656d 7373 6761 0065 6552 656a 7463     t message.Reject
c0de7da0:	6f20 6570 6172 6974 6e6f 5a00 4e4b 584f      operation.ZKNOX
c0de7db0:	5600 7265 6669 2079 4f42 204c 6461 7264     .Verify BOL addr
c0de7dc0:	7365 0073 4b5a 4f4e 4858 0057 7061 2070     ess.ZKNOXHW.app 
c0de7dd0:	7369 7220 6165 7964 5100 6975 2074 7061     is ready.Quit ap
c0de7de0:	0070 6f43 666e 7269 006d 0000 0000 0000     p.Confirm.......
c0de7df0:	ed73 53a7 9d29 487d 3933 08d8 a109 05d8     s..S).}H39......
c0de7e00:	bd53 02a4 feff fe5b ffff ffff 0000 0100     S.....[.........
c0de7e10:	ce05 c698 051b 7ff4 eae2 a5e9 bd42 f699     ............B...
c0de7e20:	e7b2 4682 1623 b540 9545 bffe 1ed5 53b8     ...F#.@.E......S
c0de7e30:	0001 0000 0000 0000 0002 0000 0000 0000     ................
c0de7e40:	0003 0000 0000 0000 0004 0000 0000 0000     ................
c0de7e50:	a005 91c0 8356 988b af28 123f e167 e675     ....V...(.?.g.u.
c0de7e60:	84e2 9dc7 6d1b d08a 0acd d9e0 9057 6e33     .....m......W.3n
c0de7e70:	c61c 38ee 9c13 111c 2302 7a53 e78c 069d     ...8.....#Sz....
c0de7e80:	587e 10cc c667 b7fb b3d8 b0a1 fc8d 088f     ~X..g...........
c0de7e90:	4d27 e8bc 51d1 9679 c09b 9fd4 25a7 dfbd     'M...Qy......%..
c0de7ea0:	e59d e055 6aba 3c69 db6a fc52 e79e 2ca8     ..U..ji<j.R....,
c0de7eb0:	fb1c d469 67ca 525f ce0c 0276 6802 0076     ..i..g_R..v..hv.
c0de7ec0:	8fff 0087 1974 7104 fd74 b506 7628 e1e7     ....t..qt...(v..
c0de7ed0:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de7ee0:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.
c0de7ef0:	a570 4a89 4464 3854 15d0 32ac 36ba 090f     p..JdDT8...2.6..
c0de7f00:	de2c ba44 1fb1 b7c2 b5d4 d2c0 2216 ce8c     ,.D.........."..
c0de7f10:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de7f20:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..
	...
c0de7f4c:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7f5c:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7f6c:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7f7c:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7f8c:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7f9c:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de7fac:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de7fcc:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de7fdc:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de7fec:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de7ffc:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de800c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de801c:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de802c:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de803c:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de804c:	88f4 7a60                                   ..`z

c0de8050 <.L__const.handler_cmd_Poseidon.input>:
c0de8050:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8060:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8070:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de8080:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de8090:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de80a0:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de80b0:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de80c0:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de80d0:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de80e0:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de80f0 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de810c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de811c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de812c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de813c:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de814c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de815c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de816c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de817c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de818c:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de81ac:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de81bc:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de81cc:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de81dc:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de81ec:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de81fc:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de820c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de821c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de822c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de824c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de825c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de826c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de827c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de828c:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de829c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de82ac:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de82bc:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de82cc:	9b44 9ffb                                   D...

c0de82d0 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de82ec:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de82fc:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de830c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de831c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de832c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de833c:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de834c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de835c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de836c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de838c:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de839c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de83ac:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de83bc:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de83cc:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de83dc:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de83ec:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de83fc:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de840c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de842c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de843c:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de844c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de845c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de846c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de847c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de848c:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de849c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de84ac:	8132 74b1                                   2..t

c0de84b0 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de84b0:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de84c0:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de84d0:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de84e0:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de84f0:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8500:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8510 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de852c:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de853c:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de854c:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de855c:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de856c:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de857c:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de858c:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de859c:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de85ac:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de85cc:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de85dc:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de85ec:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de85fc:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de860c:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de861c:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de862c:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de863c:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de864c:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de866c:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de867c:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de868c:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de869c:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de86ac:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de86bc:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de86cc:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de86dc:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de86ec:	a0c2 7523                                   ..#u

c0de86f0 <settingContents>:
c0de86f0:	0000 0000 870c c0de 0001 0000               ............

c0de86fc <infoList>:
c0de86fc:	8744 c0de 874c c0de 0000 0000 0002 0000     D...L...........

c0de870c <contents>:
c0de870c:	0007 0000 0344 da7a 0002 0000 0000 0000     ....D.z.........
	...
c0de8740:	1949 c0de                                   I...

c0de8744 <INFO_TYPES>:
c0de8744:	7c70 c0de 7bc5 c0de                         p|...{..

c0de874c <INFO_CONTENTS>:
c0de874c:	7ae8 c0de 7dab c0de                         .z...}..

c0de8754 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8774:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8784:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8794 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8794:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de87a4:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de87b4:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de87c4:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de87d4:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de87e4:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de87f4:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8804:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8814:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8824:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de8834:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8844:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8854:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8864:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8874:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8884:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8894:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de88a4:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de88b4:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de88c4:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de88d4:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de88e4:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de88f4:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8904:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8914:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8924:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de8934:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8944:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de8954:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de8964:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de8974:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de8984:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de8994:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de89a4:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de89b4:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de89c4:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de89d4:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de89e4:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de89f4:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8a04:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8a14:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8a24:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8a34:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8a44:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8a54:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8a64:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8a74:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8a84:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8a94:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8aa4:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8ab4:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8ac4:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8ad4:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8ae4:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8af4:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8b04:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8b14:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8b24:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8b34:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8b44:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8b54:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8b64:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8b74:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8b84:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8b94:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8ba4:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8bb4:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8bc4:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8bd4:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8be4:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8bf4:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8c04:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8c14 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8c14:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8c24:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8c34 <blindSigningWarning>:
c0de8c34:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8c5c <g_pcHex>:
c0de8c5c:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8c6c <g_pcHex_cap>:
c0de8c6c:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8c7c <_etext>:
	...

c0de8e00 <N_storage_real>:
	...

c0de9000 <install_parameters>:
c0de9000:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9010:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9020:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9030:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
