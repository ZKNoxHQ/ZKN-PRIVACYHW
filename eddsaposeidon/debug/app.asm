
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 ff55 	bl	c0de6eb4 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fce1 	bl	c0de69dc <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fca8 	bl	c0de6970 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fc99 	bl	c0de695a <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fbf1 	bl	c0de781c <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fed3 	bl	c0de6de8 <assert_exit>
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
c0de0056:	f006 fe87 	bl	c0de6d68 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fbce 	bl	c0de7808 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 feb5 	bl	c0de6de8 <assert_exit>
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
c0de0328:	f006 fabe 	bl	c0de68a8 <io_send_response_buffers>
c0de032c:	bd80      	pop	{r7, pc}

c0de032e <OUTLINED_FUNCTION_0>:
c0de032e:	9001      	str	r0, [sp, #4]
c0de0330:	7920      	ldrb	r0, [r4, #4]
c0de0332:	9002      	str	r0, [sp, #8]
c0de0334:	4770      	bx	lr
	...

c0de0338 <app_main>:
c0de0338:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de033a:	f006 fa97 	bl	c0de686c <io_init>
c0de033e:	481e      	ldr	r0, [pc, #120]	@ (c0de03b8 <app_main+0x80>)
c0de0340:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0344:	b908      	cbnz	r0, c0de034a <app_main+0x12>
c0de0346:	f001 fae1 	bl	c0de190c <ui_menu_main>
c0de034a:	481c      	ldr	r0, [pc, #112]	@ (c0de03bc <app_main+0x84>)
c0de034c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0350:	4448      	add	r0, r9
c0de0352:	f007 fa71 	bl	c0de7838 <explicit_bzero>
c0de0356:	481b      	ldr	r0, [pc, #108]	@ (c0de03c4 <app_main+0x8c>)
c0de0358:	4478      	add	r0, pc
c0de035a:	f006 ff53 	bl	c0de7204 <pic>
c0de035e:	7880      	ldrb	r0, [r0, #2]
c0de0360:	2801      	cmp	r0, #1
c0de0362:	d00d      	beq.n	c0de0380 <app_main+0x48>
c0de0364:	2001      	movs	r0, #1
c0de0366:	f88d 0002 	strb.w	r0, [sp, #2]
c0de036a:	2000      	movs	r0, #0
c0de036c:	f8ad 0000 	strh.w	r0, [sp]
c0de0370:	4815      	ldr	r0, [pc, #84]	@ (c0de03c8 <app_main+0x90>)
c0de0372:	4478      	add	r0, pc
c0de0374:	f006 ff46 	bl	c0de7204 <pic>
c0de0378:	4669      	mov	r1, sp
c0de037a:	2203      	movs	r2, #3
c0de037c:	f006 ff72 	bl	c0de7264 <nvm_write>
c0de0380:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03c0 <app_main+0x88>)
c0de0382:	ac01      	add	r4, sp, #4
c0de0384:	f006 fa7a 	bl	c0de687c <io_recv_command>
c0de0388:	2800      	cmp	r0, #0
c0de038a:	d414      	bmi.n	c0de03b6 <app_main+0x7e>
c0de038c:	4602      	mov	r2, r0
c0de038e:	eb09 0105 	add.w	r1, r9, r5
c0de0392:	4620      	mov	r0, r4
c0de0394:	f006 fb72 	bl	c0de6a7c <apdu_parser>
c0de0398:	b130      	cbz	r0, c0de03a8 <app_main+0x70>
c0de039a:	4620      	mov	r0, r4
c0de039c:	f7ff fe69 	bl	c0de0072 <apdu_dispatcher>
c0de03a0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03a4:	dcee      	bgt.n	c0de0384 <app_main+0x4c>
c0de03a6:	e006      	b.n	c0de03b6 <app_main+0x7e>
c0de03a8:	2000      	movs	r0, #0
c0de03aa:	2100      	movs	r1, #0
c0de03ac:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03b0:	f006 fa7a 	bl	c0de68a8 <io_send_response_buffers>
c0de03b4:	e7e6      	b.n	c0de0384 <app_main+0x4c>
c0de03b6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de03b8:	000008e4 	.word	0x000008e4
c0de03bc:	00000000 	.word	0x00000000
c0de03c0:	0000041f 	.word	0x0000041f
c0de03c4:	00008aa4 	.word	0x00008aa4
c0de03c8:	00008a8a 	.word	0x00008a8a

c0de03cc <handler_get_app_name>:
c0de03cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03ce:	4808      	ldr	r0, [pc, #32]	@ (c0de03f0 <handler_get_app_name+0x24>)
c0de03d0:	4478      	add	r0, pc
c0de03d2:	f006 ff17 	bl	c0de7204 <pic>
c0de03d6:	2100      	movs	r1, #0
c0de03d8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03dc:	9103      	str	r1, [sp, #12]
c0de03de:	2107      	movs	r1, #7
c0de03e0:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de03e4:	a801      	add	r0, sp, #4
c0de03e6:	2101      	movs	r1, #1
c0de03e8:	f006 fa5e 	bl	c0de68a8 <io_send_response_buffers>
c0de03ec:	b004      	add	sp, #16
c0de03ee:	bd80      	pop	{r7, pc}
c0de03f0:	00007a4d 	.word	0x00007a4d

c0de03f4 <handler_get_public_key>:
c0de03f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de03f6:	b085      	sub	sp, #20
c0de03f8:	4f23      	ldr	r7, [pc, #140]	@ (c0de0488 <handler_get_public_key+0x94>)
c0de03fa:	460c      	mov	r4, r1
c0de03fc:	4605      	mov	r5, r0
c0de03fe:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0402:	eb09 0607 	add.w	r6, r9, r7
c0de0406:	4630      	mov	r0, r6
c0de0408:	f007 fa16 	bl	c0de7838 <explicit_bzero>
c0de040c:	2000      	movs	r0, #0
c0de040e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0412:	f809 0007 	strb.w	r0, [r9, r7]
c0de0416:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de041a:	4628      	mov	r0, r5
c0de041c:	f005 fff2 	bl	c0de6404 <buffer_read_u8>
c0de0420:	b308      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0422:	eb09 0007 	add.w	r0, r9, r7
c0de0426:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de042a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de042e:	4628      	mov	r0, r5
c0de0430:	f006 f83b 	bl	c0de64aa <buffer_read_bip32_path>
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
c0de045c:	f006 f8e6 	bl	c0de662c <bip32_derive_with_seed_get_pubkey_256>
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
c0de0482:	f001 bb27 	b.w	c0de1ad4 <ui_display_address>
c0de0486:	bf00      	nop
c0de0488:	00000000 	.word	0x00000000

c0de048c <io_send_sw>:
c0de048c:	b580      	push	{r7, lr}
c0de048e:	4602      	mov	r2, r0
c0de0490:	2000      	movs	r0, #0
c0de0492:	2100      	movs	r1, #0
c0de0494:	f006 fa08 	bl	c0de68a8 <io_send_response_buffers>
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
c0de04c0:	f006 f9f2 	bl	c0de68a8 <io_send_response_buffers>
c0de04c4:	b004      	add	sp, #16
c0de04c6:	bd80      	pop	{r7, pc}

c0de04c8 <handler_sign_tx>:
c0de04c8:	b570      	push	{r4, r5, r6, lr}
c0de04ca:	b086      	sub	sp, #24
c0de04cc:	4e54      	ldr	r6, [pc, #336]	@ (c0de0620 <handler_sign_tx+0x158>)
c0de04ce:	4604      	mov	r4, r0
c0de04d0:	b191      	cbz	r1, c0de04f8 <handler_sign_tx+0x30>
c0de04d2:	eb09 0006 	add.w	r0, r9, r6
c0de04d6:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
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
c0de04fc:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0500:	4628      	mov	r0, r5
c0de0502:	f007 f999 	bl	c0de7838 <explicit_bzero>
c0de0506:	2000      	movs	r0, #0
c0de0508:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de050c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0510:	2001      	movs	r0, #1
c0de0512:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0516:	4620      	mov	r0, r4
c0de0518:	f005 ff74 	bl	c0de6404 <buffer_read_u8>
c0de051c:	b148      	cbz	r0, c0de0532 <handler_sign_tx+0x6a>
c0de051e:	eb09 0006 	add.w	r0, r9, r6
c0de0522:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0526:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de052a:	4620      	mov	r0, r4
c0de052c:	f005 ffbd 	bl	c0de64aa <buffer_read_bip32_path>
c0de0530:	b9b8      	cbnz	r0, c0de0562 <handler_sign_tx+0x9a>
c0de0532:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0536:	e019      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de0538:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de053c:	e016      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de053e:	eb09 0106 	add.w	r1, r9, r6
c0de0542:	4408      	add	r0, r1
c0de0544:	f100 0108 	add.w	r1, r0, #8
c0de0548:	4620      	mov	r0, r4
c0de054a:	f005 ffd8 	bl	c0de64fe <buffer_move>
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
c0de058c:	f001 f8bc 	bl	c0de1708 <transaction_deserialize>
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
c0de05b2:	f006 fbd9 	bl	c0de6d68 <cx_keccak_256_hash_iovec>
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
c0de05ec:	f001 f84c 	bl	c0de1688 <swap_check_validity>
c0de05f0:	b110      	cbz	r0, c0de05f8 <handler_sign_tx+0x130>
c0de05f2:	2001      	movs	r0, #1
c0de05f4:	f001 f912 	bl	c0de181c <validate_transaction>
c0de05f8:	2000      	movs	r0, #0
c0de05fa:	e7e4      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de05fc:	eb09 0006 	add.w	r0, r9, r6
c0de0600:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0604:	4909      	ldr	r1, [pc, #36]	@ (c0de062c <handler_sign_tx+0x164>)
c0de0606:	4479      	add	r1, pc
c0de0608:	f007 f95a 	bl	c0de78c0 <strcmp>
c0de060c:	b110      	cbz	r0, c0de0614 <handler_sign_tx+0x14c>
c0de060e:	f001 fb82 	bl	c0de1d16 <ui_display_transaction>
c0de0612:	e7d8      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de0614:	f001 fb7c 	bl	c0de1d10 <ui_display_blind_signed_transaction>
c0de0618:	e7d5      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de061a:	20ff      	movs	r0, #255	@ 0xff
c0de061c:	f006 ffb8 	bl	c0de7590 <os_sched_exit>
c0de0620:	00000000 	.word	0x00000000
c0de0624:	000008e4 	.word	0x000008e4
c0de0628:	000008e5 	.word	0x000008e5
c0de062c:	00007508 	.word	0x00007508

c0de0630 <io_send_sw>:
c0de0630:	b580      	push	{r7, lr}
c0de0632:	4602      	mov	r2, r0
c0de0634:	2000      	movs	r0, #0
c0de0636:	2100      	movs	r1, #0
c0de0638:	f006 f936 	bl	c0de68a8 <io_send_response_buffers>
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
c0de0650:	f001 fb64 	bl	c0de1d1c <zkn_prv_hash>
c0de0654:	b988      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de0656:	a840      	add	r0, sp, #256	@ 0x100
c0de0658:	2140      	movs	r1, #64	@ 0x40
c0de065a:	f000 f817 	bl	c0de068c <io_send_response_pointer>
c0de065e:	2000      	movs	r0, #0
c0de0660:	e00d      	b.n	c0de067e <handler_cmd_blake2b512+0x40>
c0de0662:	4668      	mov	r0, sp
c0de0664:	2109      	movs	r1, #9
c0de0666:	2240      	movs	r2, #64	@ 0x40
c0de0668:	f006 fbac 	bl	c0de6dc4 <cx_hash_init_ex>
c0de066c:	b928      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de066e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0672:	4668      	mov	r0, sp
c0de0674:	f006 fbab 	bl	c0de6dce <cx_hash_update>
c0de0678:	b118      	cbz	r0, c0de0682 <handler_cmd_blake2b512+0x44>
c0de067a:	f000 feb5 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de067e:	b050      	add	sp, #320	@ 0x140
c0de0680:	bd10      	pop	{r4, pc}
c0de0682:	4668      	mov	r0, sp
c0de0684:	a940      	add	r1, sp, #256	@ 0x100
c0de0686:	f006 fb98 	bl	c0de6dba <cx_hash_final>
c0de068a:	e7e3      	b.n	c0de0654 <handler_cmd_blake2b512+0x16>

c0de068c <io_send_response_pointer>:
c0de068c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de068e:	2200      	movs	r2, #0
c0de0690:	ab01      	add	r3, sp, #4
c0de0692:	c307      	stmia	r3!, {r0, r1, r2}
c0de0694:	a801      	add	r0, sp, #4
c0de0696:	2101      	movs	r1, #1
c0de0698:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de069c:	f006 f904 	bl	c0de68a8 <io_send_response_buffers>
c0de06a0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06a2 <io_send_sw>:
c0de06a2:	b580      	push	{r7, lr}
c0de06a4:	4602      	mov	r2, r0
c0de06a6:	2000      	movs	r0, #0
c0de06a8:	2100      	movs	r1, #0
c0de06aa:	f006 f8fd 	bl	c0de68a8 <io_send_response_buffers>
c0de06ae:	bd80      	pop	{r7, pc}

c0de06b0 <handler_cmd_keccakH>:
c0de06b0:	b510      	push	{r4, lr}
c0de06b2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06b4:	4604      	mov	r4, r0
c0de06b6:	4668      	mov	r0, sp
c0de06b8:	2106      	movs	r1, #6
c0de06ba:	2220      	movs	r2, #32
c0de06bc:	f006 fb82 	bl	c0de6dc4 <cx_hash_init_ex>
c0de06c0:	b950      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06c2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06c6:	4668      	mov	r0, sp
c0de06c8:	f006 fb81 	bl	c0de6dce <cx_hash_update>
c0de06cc:	b920      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06ce:	4668      	mov	r0, sp
c0de06d0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06d2:	f006 fb72 	bl	c0de6dba <cx_hash_final>
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
c0de0700:	f007 f882 	bl	c0de7808 <__aeabi_memcpy>
c0de0704:	a80c      	add	r0, sp, #48	@ 0x30
c0de0706:	491c      	ldr	r1, [pc, #112]	@ (c0de0778 <handler_cmd_bolos_stretch+0x8c>)
c0de0708:	2220      	movs	r2, #32
c0de070a:	4479      	add	r1, pc
c0de070c:	f007 f87c 	bl	c0de7808 <__aeabi_memcpy>
c0de0710:	a804      	add	r0, sp, #16
c0de0712:	491a      	ldr	r1, [pc, #104]	@ (c0de077c <handler_cmd_bolos_stretch+0x90>)
c0de0714:	2220      	movs	r2, #32
c0de0716:	4479      	add	r1, pc
c0de0718:	f007 f876 	bl	c0de7808 <__aeabi_memcpy>
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
c0de0750:	f006 fe1e 	bl	c0de7390 <cx_bn_mod_add>
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
c0de0774:	00007826 	.word	0x00007826
c0de0778:	0000779a 	.word	0x0000779a
c0de077c:	000078ae 	.word	0x000078ae

c0de0780 <handler_cmd_Poseidon>:
c0de0780:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0784:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0788:	4604      	mov	r4, r0
c0de078a:	a860      	add	r0, sp, #384	@ 0x180
c0de078c:	493d      	ldr	r1, [pc, #244]	@ (c0de0884 <handler_cmd_Poseidon+0x104>)
c0de078e:	22a0      	movs	r2, #160	@ 0xa0
c0de0790:	4479      	add	r1, pc
c0de0792:	f007 f839 	bl	c0de7808 <__aeabi_memcpy>
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
c0de07b6:	f007 f827 	bl	c0de7808 <__aeabi_memcpy>
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
c0de07d6:	f006 fe21 	bl	c0de741c <cx_mont_alloc>
c0de07da:	b968      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07dc:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07de:	a80a      	add	r0, sp, #40	@ 0x28
c0de07e0:	f006 fe26 	bl	c0de7430 <cx_mont_init>
c0de07e4:	b940      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07e6:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de07ea:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07ec:	2105      	movs	r1, #5
c0de07ee:	2205      	movs	r2, #5
c0de07f0:	4640      	mov	r0, r8
c0de07f2:	f002 fbd7 	bl	c0de2fa4 <Poseidon_alloc_init>
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
c0de0818:	f006 fd6a 	bl	c0de72f0 <cx_bn_init>
c0de081c:	2800      	cmp	r0, #0
c0de081e:	d1eb      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0820:	69e8      	ldr	r0, [r5, #28]
c0de0822:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0824:	4601      	mov	r1, r0
c0de0826:	f006 fe0d 	bl	c0de7444 <cx_mont_to_montgomery>
c0de082a:	3701      	adds	r7, #1
c0de082c:	3620      	adds	r6, #32
c0de082e:	2800      	cmp	r0, #0
c0de0830:	d0ea      	beq.n	c0de0808 <handler_cmd_Poseidon+0x88>
c0de0832:	e7e1      	b.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0834:	aa08      	add	r2, sp, #32
c0de0836:	4640      	mov	r0, r8
c0de0838:	2100      	movs	r1, #0
c0de083a:	2301      	movs	r3, #1
c0de083c:	f002 fc18 	bl	c0de3070 <Poseidon>
c0de0840:	6820      	ldr	r0, [r4, #0]
c0de0842:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0844:	7800      	ldrb	r0, [r0, #0]
c0de0846:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de084a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de084e:	4601      	mov	r1, r0
c0de0850:	f006 fe04 	bl	c0de745c <cx_mont_from_montgomery>
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
c0de086e:	f006 fd2b 	bl	c0de72c8 <cx_bn_destroy>
c0de0872:	2800      	cmp	r0, #0
c0de0874:	d1c0      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0876:	f006 fd09 	bl	c0de728c <cx_bn_unlock>
c0de087a:	2800      	cmp	r0, #0
c0de087c:	d1bc      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de087e:	2000      	movs	r0, #0
c0de0880:	e7bc      	b.n	c0de07fc <handler_cmd_Poseidon+0x7c>
c0de0882:	bf00      	nop
c0de0884:	00007914 	.word	0x00007914
c0de0888:	00007870 	.word	0x00007870

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
c0de08a0:	f006 ffb2 	bl	c0de7808 <__aeabi_memcpy>
c0de08a4:	ad01      	add	r5, sp, #4
c0de08a6:	491b      	ldr	r1, [pc, #108]	@ (c0de0914 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08a8:	2220      	movs	r2, #32
c0de08aa:	4628      	mov	r0, r5
c0de08ac:	4479      	add	r1, pc
c0de08ae:	f006 ffab 	bl	c0de7808 <__aeabi_memcpy>
c0de08b2:	a809      	add	r0, sp, #36	@ 0x24
c0de08b4:	2120      	movs	r1, #32
c0de08b6:	462a      	mov	r2, r5
c0de08b8:	f000 fdaa 	bl	c0de1410 <OUTLINED_FUNCTION_6>
c0de08bc:	bb08      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08be:	a80a      	add	r0, sp, #40	@ 0x28
c0de08c0:	2120      	movs	r1, #32
c0de08c2:	f006 fdab 	bl	c0de741c <cx_mont_alloc>
c0de08c6:	b9e0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08c8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08ca:	a80a      	add	r0, sp, #40	@ 0x28
c0de08cc:	f006 fdb0 	bl	c0de7430 <cx_mont_init>
c0de08d0:	b9b8      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08d2:	a80c      	add	r0, sp, #48	@ 0x30
c0de08d4:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08d6:	2105      	movs	r1, #5
c0de08d8:	2205      	movs	r2, #5
c0de08da:	f002 fb63 	bl	c0de2fa4 <Poseidon_alloc_init>
c0de08de:	b980      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08e0:	6820      	ldr	r0, [r4, #0]
c0de08e2:	7806      	ldrb	r6, [r0, #0]
c0de08e4:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08e6:	ad48      	add	r5, sp, #288	@ 0x120
c0de08e8:	b12e      	cbz	r6, c0de08f6 <handler_cmd_Poseidon_ithRC+0x6a>
c0de08ea:	4620      	mov	r0, r4
c0de08ec:	4629      	mov	r1, r5
c0de08ee:	f002 fb55 	bl	c0de2f9c <Poseidon_getNext_RC>
c0de08f2:	3e01      	subs	r6, #1
c0de08f4:	e7f8      	b.n	c0de08e8 <handler_cmd_Poseidon_ithRC+0x5c>
c0de08f6:	a848      	add	r0, sp, #288	@ 0x120
c0de08f8:	f000 fda5 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de08fc:	f006 fcc6 	bl	c0de728c <cx_bn_unlock>
c0de0900:	b118      	cbz	r0, c0de090a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0902:	f000 fd71 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de0906:	b050      	add	sp, #320	@ 0x140
c0de0908:	bd70      	pop	{r4, r5, r6, pc}
c0de090a:	2000      	movs	r0, #0
c0de090c:	e7fb      	b.n	c0de0906 <handler_cmd_Poseidon_ithRC+0x7a>
c0de090e:	bf00      	nop
c0de0910:	000075e6 	.word	0x000075e6
c0de0914:	00007778 	.word	0x00007778

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
c0de095c:	f001 fe06 	bl	c0de256c <tEdwards_alloc>
c0de0960:	b9a0      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0962:	a804      	add	r0, sp, #16
c0de0964:	a91a      	add	r1, sp, #104	@ 0x68
c0de0966:	aa01      	add	r2, sp, #4
c0de0968:	f001 fa0e 	bl	c0de1d88 <zkn_prv2pub>
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
c0de0986:	f006 fc81 	bl	c0de728c <cx_bn_unlock>
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
c0de09fc:	f001 fdb6 	bl	c0de256c <tEdwards_alloc>
c0de0a00:	b9e8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a02:	a815      	add	r0, sp, #84	@ 0x54
c0de0a04:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a06:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a08:	f001 f9be 	bl	c0de1d88 <zkn_prv2pub>
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
c0de0a2a:	f001 f9d5 	bl	c0de1dd8 <EddsaPoseidon_Sign_final>
c0de0a2e:	b930      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a30:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a32:	2160      	movs	r1, #96	@ 0x60
c0de0a34:	f7ff fe2a 	bl	c0de068c <io_send_response_pointer>
c0de0a38:	f006 fc28 	bl	c0de728c <cx_bn_unlock>
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
c0de0a7a:	f001 fef7 	bl	c0de286c <tEdwards_Curve_alloc_init>
c0de0a7e:	2800      	cmp	r0, #0
c0de0a80:	d14d      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a82:	f107 060c 	add.w	r6, r7, #12
c0de0a86:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a8a:	4638      	mov	r0, r7
c0de0a8c:	4631      	mov	r1, r6
c0de0a8e:	f001 fe96 	bl	c0de27be <tEdwards_IsOnCurve>
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
c0de0aae:	f006 feab 	bl	c0de7808 <__aeabi_memcpy>
c0de0ab2:	af01      	add	r7, sp, #4
c0de0ab4:	491e      	ldr	r1, [pc, #120]	@ (c0de0b30 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ab6:	2220      	movs	r2, #32
c0de0ab8:	4638      	mov	r0, r7
c0de0aba:	4479      	add	r1, pc
c0de0abc:	f006 fea4 	bl	c0de7808 <__aeabi_memcpy>
c0de0ac0:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0ac4:	a814      	add	r0, sp, #80	@ 0x50
c0de0ac6:	4651      	mov	r1, sl
c0de0ac8:	463a      	mov	r2, r7
c0de0aca:	4643      	mov	r3, r8
c0de0acc:	f002 f8bf 	bl	c0de2c4e <tEdwards_alloc_init>
c0de0ad0:	bb28      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad2:	a814      	add	r0, sp, #80	@ 0x50
c0de0ad4:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0ad8:	4631      	mov	r1, r6
c0de0ada:	f001 fe70 	bl	c0de27be <tEdwards_IsOnCurve>
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
c0de0afc:	f002 f92c 	bl	c0de2d58 <tEdwards_scalarMul>
c0de0b00:	b968      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b02:	a814      	add	r0, sp, #80	@ 0x50
c0de0b04:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b08:	a911      	add	r1, sp, #68	@ 0x44
c0de0b0a:	f000 fc84 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de0b0e:	b930      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b10:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b14:	f000 fc78 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de0b18:	f006 fbb8 	bl	c0de728c <cx_bn_unlock>
c0de0b1c:	b120      	cbz	r0, c0de0b28 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b1e:	f000 fc63 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de0b22:	b06b      	add	sp, #428	@ 0x1ac
c0de0b24:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b28:	2000      	movs	r0, #0
c0de0b2a:	e7fa      	b.n	c0de0b22 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b2c:	00007598 	.word	0x00007598
c0de0b30:	000075aa 	.word	0x000075aa

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
c0de0b6a:	f001 fe7f 	bl	c0de286c <tEdwards_Curve_alloc_init>
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
c0de0b8c:	f006 fe3c 	bl	c0de7808 <__aeabi_memcpy>
c0de0b90:	af03      	add	r7, sp, #12
c0de0b92:	4940      	ldr	r1, [pc, #256]	@ (c0de0c94 <handler_cmd_tEdwards+0x160>)
c0de0b94:	4479      	add	r1, pc
c0de0b96:	e009      	b.n	c0de0bac <handler_cmd_tEdwards+0x78>
c0de0b98:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b9a:	493f      	ldr	r1, [pc, #252]	@ (c0de0c98 <handler_cmd_tEdwards+0x164>)
c0de0b9c:	2220      	movs	r2, #32
c0de0b9e:	4630      	mov	r0, r6
c0de0ba0:	4479      	add	r1, pc
c0de0ba2:	f006 fe31 	bl	c0de7808 <__aeabi_memcpy>
c0de0ba6:	af03      	add	r7, sp, #12
c0de0ba8:	493c      	ldr	r1, [pc, #240]	@ (c0de0c9c <handler_cmd_tEdwards+0x168>)
c0de0baa:	4479      	add	r1, pc
c0de0bac:	4638      	mov	r0, r7
c0de0bae:	2220      	movs	r2, #32
c0de0bb0:	f006 fe2a 	bl	c0de7808 <__aeabi_memcpy>
c0de0bb4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bb6:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bb8:	4631      	mov	r1, r6
c0de0bba:	463a      	mov	r2, r7
c0de0bbc:	f002 f847 	bl	c0de2c4e <tEdwards_alloc_init>
c0de0bc0:	2800      	cmp	r0, #0
c0de0bc2:	d1d5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bc4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bc8:	aa03      	add	r2, sp, #12
c0de0bca:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bcc:	f002 f83f 	bl	c0de2c4e <tEdwards_alloc_init>
c0de0bd0:	2800      	cmp	r0, #0
c0de0bd2:	d1cd      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bd4:	2000      	movs	r0, #0
c0de0bd6:	f10d 020b 	add.w	r2, sp, #11
c0de0bda:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bde:	a819      	add	r0, sp, #100	@ 0x64
c0de0be0:	a916      	add	r1, sp, #88	@ 0x58
c0de0be2:	f001 fdec 	bl	c0de27be <tEdwards_IsOnCurve>
c0de0be6:	2800      	cmp	r0, #0
c0de0be8:	d1c2      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bea:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bee:	2801      	cmp	r0, #1
c0de0bf0:	d142      	bne.n	c0de0c78 <handler_cmd_tEdwards+0x144>
c0de0bf2:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf4:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0bf6:	f10d 020b 	add.w	r2, sp, #11
c0de0bfa:	4631      	mov	r1, r6
c0de0bfc:	f001 fddf 	bl	c0de27be <tEdwards_IsOnCurve>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d1b5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c04:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c08:	2801      	cmp	r0, #1
c0de0c0a:	d138      	bne.n	c0de0c7e <handler_cmd_tEdwards+0x14a>
c0de0c0c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c0e:	f10d 010b 	add.w	r1, sp, #11
c0de0c12:	f006 fbf9 	bl	c0de7408 <cx_bn_is_prime>
c0de0c16:	2800      	cmp	r0, #0
c0de0c18:	d1aa      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c1a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1e:	2801      	cmp	r0, #1
c0de0c20:	d130      	bne.n	c0de0c84 <handler_cmd_tEdwards+0x150>
c0de0c22:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c24:	f10d 010b 	add.w	r1, sp, #11
c0de0c28:	f006 fbee 	bl	c0de7408 <cx_bn_is_prime>
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
c0de0c46:	f002 f887 	bl	c0de2d58 <tEdwards_scalarMul>
c0de0c4a:	2800      	cmp	r0, #0
c0de0c4c:	d190      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c4e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c50:	f104 0320 	add.w	r3, r4, #32
c0de0c54:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c56:	f000 fbde 	bl	c0de1416 <OUTLINED_FUNCTION_7>
c0de0c5a:	2800      	cmp	r0, #0
c0de0c5c:	f47f af88 	bne.w	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c60:	f006 fb14 	bl	c0de728c <cx_bn_unlock>
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
c0de0c90:	0000733a 	.word	0x0000733a
c0de0c94:	000073b0 	.word	0x000073b0
c0de0c98:	00007344 	.word	0x00007344
c0de0c9c:	000072ba 	.word	0x000072ba

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
c0de0cce:	f001 fdcd 	bl	c0de286c <tEdwards_Curve_alloc_init>
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
c0de0d06:	f006 fad3 	bl	c0de72b0 <cx_bn_alloc_init>
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
c0de0d40:	f006 faac 	bl	c0de729c <cx_bn_alloc>
c0de0d44:	2800      	cmp	r0, #0
c0de0d46:	d1e4      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d48:	6820      	ldr	r0, [r4, #0]
c0de0d4a:	4631      	mov	r1, r6
c0de0d4c:	f006 fae6 	bl	c0de731c <cx_bn_set_u32>
c0de0d50:	2800      	cmp	r0, #0
c0de0d52:	d1de      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d54:	4640      	mov	r0, r8
c0de0d56:	4659      	mov	r1, fp
c0de0d58:	f001 fc08 	bl	c0de256c <tEdwards_alloc>
c0de0d5c:	2800      	cmp	r0, #0
c0de0d5e:	d1d8      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d60:	9602      	str	r6, [sp, #8]
c0de0d62:	eb07 060a 	add.w	r6, r7, sl
c0de0d66:	9901      	ldr	r1, [sp, #4]
c0de0d68:	4640      	mov	r0, r8
c0de0d6a:	465b      	mov	r3, fp
c0de0d6c:	4632      	mov	r2, r6
c0de0d6e:	f001 ff8d 	bl	c0de2c8c <tEdwards_scalarMul_bn>
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
c0de0d94:	f001 ff1b 	bl	c0de2bce <tEdwards_normalize>
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
c0de0dba:	f001 f9d4 	bl	c0de2166 <zkn_frost_interpolate_secrets>
c0de0dbe:	2800      	cmp	r0, #0
c0de0dc0:	d1a7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dc2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dc4:	a944      	add	r1, sp, #272	@ 0x110
c0de0dc6:	2220      	movs	r2, #32
c0de0dc8:	31c0      	adds	r1, #192	@ 0xc0
c0de0dca:	f006 fab1 	bl	c0de7330 <cx_bn_export>
c0de0dce:	2800      	cmp	r0, #0
c0de0dd0:	d19f      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dd2:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dd4:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dd6:	ab03      	add	r3, sp, #12
c0de0dd8:	9901      	ldr	r1, [sp, #4]
c0de0dda:	f001 ff57 	bl	c0de2c8c <tEdwards_scalarMul_bn>
c0de0dde:	2800      	cmp	r0, #0
c0de0de0:	d197      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0de2:	a844      	add	r0, sp, #272	@ 0x110
c0de0de4:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0de8:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dea:	a903      	add	r1, sp, #12
c0de0dec:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0dee:	f001 fec8 	bl	c0de2b82 <tEdwards_export>
c0de0df2:	2800      	cmp	r0, #0
c0de0df4:	d18d      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0df6:	a844      	add	r0, sp, #272	@ 0x110
c0de0df8:	f000 fb06 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de0dfc:	f006 fa46 	bl	c0de728c <cx_bn_unlock>
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
c0de0e5c:	f005 ff91 	bl	c0de6d82 <cx_blake2b_512_hash_iovec>
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
c0de0e78:	f006 fa1a 	bl	c0de72b0 <cx_bn_alloc_init>
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
c0de0ec2:	f006 f9eb 	bl	c0de729c <cx_bn_alloc>
c0de0ec6:	2800      	cmp	r0, #0
c0de0ec8:	d1e5      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0eca:	a801      	add	r0, sp, #4
c0de0ecc:	2120      	movs	r1, #32
c0de0ece:	eb00 0508 	add.w	r5, r0, r8
c0de0ed2:	4628      	mov	r0, r5
c0de0ed4:	f006 f9e2 	bl	c0de729c <cx_bn_alloc>
c0de0ed8:	2800      	cmp	r0, #0
c0de0eda:	d1dc      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0edc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ede:	4621      	mov	r1, r4
c0de0ee0:	f006 fa1c 	bl	c0de731c <cx_bn_set_u32>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d1d6      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ee8:	6828      	ldr	r0, [r5, #0]
c0de0eea:	4621      	mov	r1, r4
c0de0eec:	f006 fa16 	bl	c0de731c <cx_bn_set_u32>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1d0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ef4:	4650      	mov	r0, sl
c0de0ef6:	4631      	mov	r1, r6
c0de0ef8:	f001 fb38 	bl	c0de256c <tEdwards_alloc>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1ca      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f00:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f04:	2202      	movs	r2, #2
c0de0f06:	9000      	str	r0, [sp, #0]
c0de0f08:	4650      	mov	r0, sl
c0de0f0a:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f0c:	f001 f96d 	bl	c0de21ea <zkn_evalshare>
c0de0f10:	2800      	cmp	r0, #0
c0de0f12:	d1c0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f14:	6838      	ldr	r0, [r7, #0]
c0de0f16:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f18:	f006 f9f6 	bl	c0de7308 <cx_bn_copy>
c0de0f1c:	2800      	cmp	r0, #0
c0de0f1e:	d1ba      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f20:	4650      	mov	r0, sl
c0de0f22:	4631      	mov	r1, r6
c0de0f24:	f001 fe53 	bl	c0de2bce <tEdwards_normalize>
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
c0de0f60:	f006 f9b2 	bl	c0de72c8 <cx_bn_destroy>
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
c0de0f7c:	f001 f8f3 	bl	c0de2166 <zkn_frost_interpolate_secrets>
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	f47f af88 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f86:	a848      	add	r0, sp, #288	@ 0x120
c0de0f88:	f000 fa3e 	bl	c0de1408 <OUTLINED_FUNCTION_5>
c0de0f8c:	f006 f97e 	bl	c0de728c <cx_bn_unlock>
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
c0de0fae:	f001 fc5d 	bl	c0de286c <tEdwards_Curve_alloc_init>
c0de0fb2:	bbe0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fb4:	a801      	add	r0, sp, #4
c0de0fb6:	f000 fa1d 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de0fba:	bbc0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fbc:	f000 fa1d 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de0fc0:	f002 f972 	bl	c0de32a8 <Babyfrost_H1>
c0de0fc4:	bb98      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fc6:	9801      	ldr	r0, [sp, #4]
c0de0fc8:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fca:	2220      	movs	r2, #32
c0de0fcc:	4629      	mov	r1, r5
c0de0fce:	f006 f9af 	bl	c0de7330 <cx_bn_export>
c0de0fd2:	bb60      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fd4:	f000 fa11 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de0fd8:	f002 f974 	bl	c0de32c4 <Babyfrost_H3>
c0de0fdc:	bb38      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	f105 0120 	add.w	r1, r5, #32
c0de0fe4:	f000 fa03 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0fe8:	bb08      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fea:	f000 fa06 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de0fee:	f002 f97d 	bl	c0de32ec <Babyfrost_H4>
c0de0ff2:	b9e0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0ff4:	9801      	ldr	r0, [sp, #4]
c0de0ff6:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0ffa:	f000 f9f8 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de0ffe:	b9b0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1000:	f000 f9fb 	bl	c0de13fa <OUTLINED_FUNCTION_4>
c0de1004:	f002 f980 	bl	c0de3308 <Babyfrost_H5>
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
c0de1028:	f006 f930 	bl	c0de728c <cx_bn_unlock>
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
c0de1050:	f001 fc0c 	bl	c0de286c <tEdwards_Curve_alloc_init>
c0de1054:	b9e0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de1056:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1058:	f000 f9cc 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de105c:	b9c0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de105e:	ac01      	add	r4, sp, #4
c0de1060:	4910      	ldr	r1, [pc, #64]	@ (c0de10a4 <handler_cmd_encodeCommitment+0x68>)
c0de1062:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1066:	4620      	mov	r0, r4
c0de1068:	4479      	add	r1, pc
c0de106a:	f006 fbcd 	bl	c0de7808 <__aeabi_memcpy>
c0de106e:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1070:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1072:	4621      	mov	r1, r4
c0de1074:	2203      	movs	r2, #3
c0de1076:	f001 f8f1 	bl	c0de225c <zkn_encode_group_commitmentHash>
c0de107a:	b948      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de107c:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de107e:	a990      	add	r1, sp, #576	@ 0x240
c0de1080:	2220      	movs	r2, #32
c0de1082:	3120      	adds	r1, #32
c0de1084:	f006 f954 	bl	c0de7330 <cx_bn_export>
c0de1088:	b910      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de108a:	f006 f8ff 	bl	c0de728c <cx_bn_unlock>
c0de108e:	b120      	cbz	r0, c0de109a <handler_cmd_encodeCommitment+0x5e>
c0de1090:	f000 f9aa 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1094:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de1098:	bd10      	pop	{r4, pc}
c0de109a:	a890      	add	r0, sp, #576	@ 0x240
c0de109c:	f000 f9d3 	bl	c0de1446 <OUTLINED_FUNCTION_12>
c0de10a0:	2000      	movs	r0, #0
c0de10a2:	e7f7      	b.n	c0de1094 <handler_cmd_encodeCommitment+0x58>
c0de10a4:	000070dc 	.word	0x000070dc

c0de10a8 <handler_cmd_GroupCommitment>:
c0de10a8:	b570      	push	{r4, r5, r6, lr}
c0de10aa:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10ae:	4604      	mov	r4, r0
c0de10b0:	f000 f996 	bl	c0de13e0 <OUTLINED_FUNCTION_0>
c0de10b4:	bb58      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10b6:	6820      	ldr	r0, [r4, #0]
c0de10b8:	7801      	ldrb	r1, [r0, #0]
c0de10ba:	a894      	add	r0, sp, #592	@ 0x250
c0de10bc:	f001 fbd6 	bl	c0de286c <tEdwards_Curve_alloc_init>
c0de10c0:	bb28      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10c2:	a894      	add	r0, sp, #592	@ 0x250
c0de10c4:	ac91      	add	r4, sp, #580	@ 0x244
c0de10c6:	4621      	mov	r1, r4
c0de10c8:	f001 fa50 	bl	c0de256c <tEdwards_alloc>
c0de10cc:	b9f8      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10ce:	ad19      	add	r5, sp, #100	@ 0x64
c0de10d0:	4914      	ldr	r1, [pc, #80]	@ (c0de1124 <handler_cmd_GroupCommitment+0x7c>)
c0de10d2:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10d6:	4628      	mov	r0, r5
c0de10d8:	4479      	add	r1, pc
c0de10da:	f006 fb95 	bl	c0de7808 <__aeabi_memcpy>
c0de10de:	ae01      	add	r6, sp, #4
c0de10e0:	4911      	ldr	r1, [pc, #68]	@ (c0de1128 <handler_cmd_GroupCommitment+0x80>)
c0de10e2:	2260      	movs	r2, #96	@ 0x60
c0de10e4:	4630      	mov	r0, r6
c0de10e6:	4479      	add	r1, pc
c0de10e8:	f006 fb8e 	bl	c0de7808 <__aeabi_memcpy>
c0de10ec:	9400      	str	r4, [sp, #0]
c0de10ee:	a894      	add	r0, sp, #592	@ 0x250
c0de10f0:	4629      	mov	r1, r5
c0de10f2:	f000 f9a1 	bl	c0de1438 <OUTLINED_FUNCTION_10>
c0de10f6:	b950      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10f8:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de10fa:	a894      	add	r0, sp, #592	@ 0x250
c0de10fc:	a991      	add	r1, sp, #580	@ 0x244
c0de10fe:	f102 0320 	add.w	r3, r2, #32
c0de1102:	f001 fd3e 	bl	c0de2b82 <tEdwards_export>
c0de1106:	b910      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de1108:	f006 f8c0 	bl	c0de728c <cx_bn_unlock>
c0de110c:	b120      	cbz	r0, c0de1118 <handler_cmd_GroupCommitment+0x70>
c0de110e:	f000 f96b 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1112:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1116:	bd70      	pop	{r4, r5, r6, pc}
c0de1118:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de111a:	2140      	movs	r1, #64	@ 0x40
c0de111c:	f7ff fab6 	bl	c0de068c <io_send_response_pointer>
c0de1120:	2000      	movs	r0, #0
c0de1122:	e7f6      	b.n	c0de1112 <handler_cmd_GroupCommitment+0x6a>
c0de1124:	0000724c 	.word	0x0000724c
c0de1128:	0000741e 	.word	0x0000741e

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
c0de1144:	f001 fb92 	bl	c0de286c <tEdwards_Curve_alloc_init>
c0de1148:	2800      	cmp	r0, #0
c0de114a:	d155      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de114c:	a88e      	add	r0, sp, #568	@ 0x238
c0de114e:	f000 f951 	bl	c0de13f4 <OUTLINED_FUNCTION_3>
c0de1152:	2800      	cmp	r0, #0
c0de1154:	d150      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1156:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1158:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de115a:	4621      	mov	r1, r4
c0de115c:	f001 fa06 	bl	c0de256c <tEdwards_alloc>
c0de1160:	2800      	cmp	r0, #0
c0de1162:	d149      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1164:	ad13      	add	r5, sp, #76	@ 0x4c
c0de1166:	4928      	ldr	r1, [pc, #160]	@ (c0de1208 <handler_cmd_BindingFactors+0xdc>)
c0de1168:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de116c:	4628      	mov	r0, r5
c0de116e:	4479      	add	r1, pc
c0de1170:	f006 fb4a 	bl	c0de7808 <__aeabi_memcpy>
c0de1174:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de1176:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1178:	4629      	mov	r1, r5
c0de117a:	2203      	movs	r2, #3
c0de117c:	f001 f86e 	bl	c0de225c <zkn_encode_group_commitmentHash>
c0de1180:	bbd0      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1182:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de1186:	f000 f951 	bl	c0de142c <OUTLINED_FUNCTION_9>
c0de118a:	bba8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de118c:	491f      	ldr	r1, [pc, #124]	@ (c0de120c <handler_cmd_BindingFactors+0xe0>)
c0de118e:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de1192:	2220      	movs	r2, #32
c0de1194:	4650      	mov	r0, sl
c0de1196:	4479      	add	r1, pc
c0de1198:	f006 fb36 	bl	c0de7808 <__aeabi_memcpy>
c0de119c:	ad03      	add	r5, sp, #12
c0de119e:	491c      	ldr	r1, [pc, #112]	@ (c0de1210 <handler_cmd_BindingFactors+0xe4>)
c0de11a0:	2220      	movs	r2, #32
c0de11a2:	4628      	mov	r0, r5
c0de11a4:	4479      	add	r1, pc
c0de11a6:	f006 fb2f 	bl	c0de7808 <__aeabi_memcpy>
c0de11aa:	f000 f937 	bl	c0de141c <OUTLINED_FUNCTION_8>
c0de11ae:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11b0:	aa13      	add	r2, sp, #76	@ 0x4c
c0de11b2:	f001 f93b 	bl	c0de242c <zkn_compute_binding_factors>
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
c0de11d0:	f001 fcd7 	bl	c0de2b82 <tEdwards_export>
c0de11d4:	b980      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11d6:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11d8:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11dc:	f000 f907 	bl	c0de13ee <OUTLINED_FUNCTION_2>
c0de11e0:	b950      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11e2:	a8a5      	add	r0, sp, #660	@ 0x294
c0de11e4:	21e0      	movs	r1, #224	@ 0xe0
c0de11e6:	f7ff fa51 	bl	c0de068c <io_send_response_pointer>
c0de11ea:	a88e      	add	r0, sp, #568	@ 0x238
c0de11ec:	f006 f86c 	bl	c0de72c8 <cx_bn_destroy>
c0de11f0:	b910      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11f2:	f006 f84b 	bl	c0de728c <cx_bn_unlock>
c0de11f6:	b128      	cbz	r0, c0de1204 <handler_cmd_BindingFactors+0xd8>
c0de11f8:	f000 f8f6 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de11fc:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de1200:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1204:	2000      	movs	r0, #0
c0de1206:	e7f9      	b.n	c0de11fc <handler_cmd_BindingFactors+0xd0>
c0de1208:	000073f6 	.word	0x000073f6
c0de120c:	00006dce 	.word	0x00006dce
c0de1210:	00006ee0 	.word	0x00006ee0

c0de1214 <handler_get_insecure_secret>:
c0de1214:	b570      	push	{r4, r5, r6, lr}
c0de1216:	b0f0      	sub	sp, #448	@ 0x1c0
c0de1218:	4e2c      	ldr	r6, [pc, #176]	@ (c0de12cc <handler_get_insecure_secret+0xb8>)
c0de121a:	4604      	mov	r4, r0
c0de121c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de1220:	eb09 0506 	add.w	r5, r9, r6
c0de1224:	4628      	mov	r0, r5
c0de1226:	f006 fb07 	bl	c0de7838 <explicit_bzero>
c0de122a:	2000      	movs	r0, #0
c0de122c:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de1230:	f809 0006 	strb.w	r0, [r9, r6]
c0de1234:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de1238:	4620      	mov	r0, r4
c0de123a:	f005 f8e3 	bl	c0de6404 <buffer_read_u8>
c0de123e:	b3c0      	cbz	r0, c0de12b2 <handler_get_insecure_secret+0x9e>
c0de1240:	eb09 0006 	add.w	r0, r9, r6
c0de1244:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de1248:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de124c:	4620      	mov	r0, r4
c0de124e:	f005 f92c 	bl	c0de64aa <buffer_read_bip32_path>
c0de1252:	b370      	cbz	r0, c0de12b2 <handler_get_insecure_secret+0x9e>
c0de1254:	eb09 0006 	add.w	r0, r9, r6
c0de1258:	2100      	movs	r1, #0
c0de125a:	2205      	movs	r2, #5
c0de125c:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1260:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de1264:	9104      	str	r1, [sp, #16]
c0de1266:	f100 0449 	add.w	r4, r0, #73	@ 0x49
c0de126a:	f100 0508 	add.w	r5, r0, #8
c0de126e:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1272:	2000      	movs	r0, #0
c0de1274:	2121      	movs	r1, #33	@ 0x21
c0de1276:	e9cd 5400 	strd	r5, r4, [sp]
c0de127a:	f005 f9d7 	bl	c0de662c <bip32_derive_with_seed_get_pubkey_256>
c0de127e:	a806      	add	r0, sp, #24
c0de1280:	2106      	movs	r1, #6
c0de1282:	2220      	movs	r2, #32
c0de1284:	f005 fd9e 	bl	c0de6dc4 <cx_hash_init_ex>
c0de1288:	b978      	cbnz	r0, c0de12aa <handler_get_insecure_secret+0x96>
c0de128a:	eb09 0006 	add.w	r0, r9, r6
c0de128e:	2241      	movs	r2, #65	@ 0x41
c0de1290:	f100 0108 	add.w	r1, r0, #8
c0de1294:	a806      	add	r0, sp, #24
c0de1296:	f005 fd9a 	bl	c0de6dce <cx_hash_update>
c0de129a:	b930      	cbnz	r0, c0de12aa <handler_get_insecure_secret+0x96>
c0de129c:	4c0c      	ldr	r4, [pc, #48]	@ (c0de12d0 <handler_get_insecure_secret+0xbc>)
c0de129e:	a806      	add	r0, sp, #24
c0de12a0:	eb09 0104 	add.w	r1, r9, r4
c0de12a4:	f005 fd89 	bl	c0de6dba <cx_hash_final>
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
c0de12d0:	000002f0 	.word	0x000002f0

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
c0de12fe:	f001 f935 	bl	c0de256c <tEdwards_alloc>
c0de1302:	b9b0      	cbnz	r0, c0de1332 <handler_get_insecure_public+0x5e>
c0de1304:	480e      	ldr	r0, [pc, #56]	@ (c0de1340 <handler_get_insecure_public+0x6c>)
c0de1306:	eb09 0100 	add.w	r1, r9, r0
c0de130a:	a804      	add	r0, sp, #16
c0de130c:	aa01      	add	r2, sp, #4
c0de130e:	f000 fd3b 	bl	c0de1d88 <zkn_prv2pub>
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
c0de132c:	f005 ffae 	bl	c0de728c <cx_bn_unlock>
c0de1330:	b118      	cbz	r0, c0de133a <handler_get_insecure_public+0x66>
c0de1332:	f000 f859 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de1336:	b02a      	add	sp, #168	@ 0xa8
c0de1338:	bdb0      	pop	{r4, r5, r7, pc}
c0de133a:	2000      	movs	r0, #0
c0de133c:	e7fb      	b.n	c0de1336 <handler_get_insecure_public+0x62>
c0de133e:	bf00      	nop
c0de1340:	000002f0 	.word	0x000002f0

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
c0de1386:	f001 f8f1 	bl	c0de256c <tEdwards_alloc>
c0de138a:	bb00      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de138c:	4d13      	ldr	r5, [pc, #76]	@ (c0de13dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x98>)
c0de138e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1390:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1392:	eb09 0105 	add.w	r1, r9, r5
c0de1396:	f000 fcf7 	bl	c0de1d88 <zkn_prv2pub>
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
c0de13ba:	f000 fd0d 	bl	c0de1dd8 <EddsaPoseidon_Sign_final>
c0de13be:	b930      	cbnz	r0, c0de13ce <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8a>
c0de13c0:	a824      	add	r0, sp, #144	@ 0x90
c0de13c2:	2160      	movs	r1, #96	@ 0x60
c0de13c4:	f7ff f962 	bl	c0de068c <io_send_response_pointer>
c0de13c8:	f005 ff60 	bl	c0de728c <cx_bn_unlock>
c0de13cc:	b118      	cbz	r0, c0de13d6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x92>
c0de13ce:	f000 f80b 	bl	c0de13e8 <OUTLINED_FUNCTION_1>
c0de13d2:	b064      	add	sp, #400	@ 0x190
c0de13d4:	bd70      	pop	{r4, r5, r6, pc}
c0de13d6:	2000      	movs	r0, #0
c0de13d8:	e7fb      	b.n	c0de13d2 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x8e>
c0de13da:	bf00      	nop
c0de13dc:	000002f0 	.word	0x000002f0

c0de13e0 <OUTLINED_FUNCTION_0>:
c0de13e0:	2020      	movs	r0, #32
c0de13e2:	2100      	movs	r1, #0
c0de13e4:	f005 bf48 	b.w	c0de7278 <cx_bn_lock>

c0de13e8 <OUTLINED_FUNCTION_1>:
c0de13e8:	b280      	uxth	r0, r0
c0de13ea:	f7ff b95a 	b.w	c0de06a2 <io_send_sw>

c0de13ee <OUTLINED_FUNCTION_2>:
c0de13ee:	2220      	movs	r2, #32
c0de13f0:	f005 bf9e 	b.w	c0de7330 <cx_bn_export>

c0de13f4 <OUTLINED_FUNCTION_3>:
c0de13f4:	2120      	movs	r1, #32
c0de13f6:	f005 bf51 	b.w	c0de729c <cx_bn_alloc>

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
c0de1412:	f005 bf4d 	b.w	c0de72b0 <cx_bn_alloc_init>

c0de1416 <OUTLINED_FUNCTION_7>:
c0de1416:	4622      	mov	r2, r4
c0de1418:	f001 bbb3 	b.w	c0de2b82 <tEdwards_export>

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
c0de1434:	f005 bf7c 	b.w	c0de7330 <cx_bn_export>

c0de1438 <OUTLINED_FUNCTION_10>:
c0de1438:	4632      	mov	r2, r6
c0de143a:	2303      	movs	r3, #3
c0de143c:	f000 bf8b 	b.w	c0de2356 <zkn_compute_group_commitment>

c0de1440 <OUTLINED_FUNCTION_11>:
c0de1440:	4629      	mov	r1, r5
c0de1442:	f001 ba13 	b.w	c0de286c <tEdwards_Curve_alloc_init>

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
c0de1468:	f006 f9ce 	bl	c0de7808 <__aeabi_memcpy>
c0de146c:	2020      	movs	r0, #32
c0de146e:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1472:	2220      	movs	r2, #32
c0de1474:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1478:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de147c:	f006 f9c4 	bl	c0de7808 <__aeabi_memcpy>
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
c0de14a0:	f005 fa02 	bl	c0de68a8 <io_send_response_buffers>
c0de14a4:	b004      	add	sp, #16
c0de14a6:	bd80      	pop	{r7, pc}

c0de14a8 <helper_send_response_sig_zkn>:
c0de14a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de14aa:	b0a1      	sub	sp, #132	@ 0x84
c0de14ac:	f10d 0403 	add.w	r4, sp, #3
c0de14b0:	2180      	movs	r1, #128	@ 0x80
c0de14b2:	1c65      	adds	r5, r4, #1
c0de14b4:	4628      	mov	r0, r5
c0de14b6:	f006 f9b1 	bl	c0de781c <__aeabi_memclr>
c0de14ba:	480a      	ldr	r0, [pc, #40]	@ (c0de14e4 <helper_send_response_sig_zkn+0x3c>)
c0de14bc:	f000 f814 	bl	c0de14e8 <OUTLINED_FUNCTION_0>
c0de14c0:	f88d 6003 	strb.w	r6, [sp, #3]
c0de14c4:	f006 f9a0 	bl	c0de7808 <__aeabi_memcpy>
c0de14c8:	1930      	adds	r0, r6, r4
c0de14ca:	f507 710e 	add.w	r1, r7, #568	@ 0x238
c0de14ce:	2220      	movs	r2, #32
c0de14d0:	3001      	adds	r0, #1
c0de14d2:	f006 f999 	bl	c0de7808 <__aeabi_memcpy>
c0de14d6:	f106 0121 	add.w	r1, r6, #33	@ 0x21
c0de14da:	4620      	mov	r0, r4
c0de14dc:	f7ff ffd8 	bl	c0de1490 <io_send_response_pointer>
c0de14e0:	b021      	add	sp, #132	@ 0x84
c0de14e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de14e4:	00000000 	.word	0x00000000

c0de14e8 <OUTLINED_FUNCTION_0>:
c0de14e8:	eb09 0700 	add.w	r7, r9, r0
c0de14ec:	4628      	mov	r0, r5
c0de14ee:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de14f2:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de14f6:	4632      	mov	r2, r6
c0de14f8:	4770      	bx	lr

c0de14fa <swap_handle_check_address>:
c0de14fa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de14fe:	b0bc      	sub	sp, #240	@ 0xf0
c0de1500:	4604      	mov	r4, r0
c0de1502:	2000      	movs	r0, #0
c0de1504:	68a5      	ldr	r5, [r4, #8]
c0de1506:	61a0      	str	r0, [r4, #24]
c0de1508:	2d00      	cmp	r5, #0
c0de150a:	d04d      	beq.n	c0de15a8 <swap_handle_check_address+0xae>
c0de150c:	6920      	ldr	r0, [r4, #16]
c0de150e:	2800      	cmp	r0, #0
c0de1510:	d04a      	beq.n	c0de15a8 <swap_handle_check_address+0xae>
c0de1512:	f006 f9df 	bl	c0de78d4 <strlen>
c0de1516:	2828      	cmp	r0, #40	@ 0x28
c0de1518:	d146      	bne.n	c0de15a8 <swap_handle_check_address+0xae>
c0de151a:	7b20      	ldrb	r0, [r4, #12]
c0de151c:	f04f 0800 	mov.w	r8, #0
c0de1520:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de1522:	2161      	movs	r1, #97	@ 0x61
c0de1524:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de1528:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de152a:	ad15      	add	r5, sp, #84	@ 0x54
c0de152c:	4628      	mov	r0, r5
c0de152e:	f006 f975 	bl	c0de781c <__aeabi_memclr>
c0de1532:	ae39      	add	r6, sp, #228	@ 0xe4
c0de1534:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de1538:	4630      	mov	r0, r6
c0de153a:	f004 ff63 	bl	c0de6404 <buffer_read_u8>
c0de153e:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de1542:	af2e      	add	r7, sp, #184	@ 0xb8
c0de1544:	4630      	mov	r0, r6
c0de1546:	4639      	mov	r1, r7
c0de1548:	f004 ffaf 	bl	c0de64aa <buffer_read_bip32_path>
c0de154c:	2005      	movs	r0, #5
c0de154e:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1552:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1556:	463a      	mov	r2, r7
c0de1558:	f8cd 8010 	str.w	r8, [sp, #16]
c0de155c:	e9cd 5100 	strd	r5, r1, [sp]
c0de1560:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1564:	2000      	movs	r0, #0
c0de1566:	2121      	movs	r1, #33	@ 0x21
c0de1568:	f005 f860 	bl	c0de662c <bip32_derive_with_seed_get_pubkey_256>
c0de156c:	b9e0      	cbnz	r0, c0de15a8 <swap_handle_check_address+0xae>
c0de156e:	ad10      	add	r5, sp, #64	@ 0x40
c0de1570:	2114      	movs	r1, #20
c0de1572:	4628      	mov	r0, r5
c0de1574:	f006 f952 	bl	c0de781c <__aeabi_memclr>
c0de1578:	a815      	add	r0, sp, #84	@ 0x54
c0de157a:	4629      	mov	r1, r5
c0de157c:	2214      	movs	r2, #20
c0de157e:	f7fe fd53 	bl	c0de0028 <address_from_pubkey>
c0de1582:	ae05      	add	r6, sp, #20
c0de1584:	2129      	movs	r1, #41	@ 0x29
c0de1586:	4630      	mov	r0, r6
c0de1588:	f006 f948 	bl	c0de781c <__aeabi_memclr>
c0de158c:	4628      	mov	r0, r5
c0de158e:	2114      	movs	r1, #20
c0de1590:	4632      	mov	r2, r6
c0de1592:	2329      	movs	r3, #41	@ 0x29
c0de1594:	f005 f928 	bl	c0de67e8 <format_hex>
c0de1598:	6921      	ldr	r1, [r4, #16]
c0de159a:	4630      	mov	r0, r6
c0de159c:	2229      	movs	r2, #41	@ 0x29
c0de159e:	f006 f9a1 	bl	c0de78e4 <strncmp>
c0de15a2:	b908      	cbnz	r0, c0de15a8 <swap_handle_check_address+0xae>
c0de15a4:	2001      	movs	r0, #1
c0de15a6:	61a0      	str	r0, [r4, #24]
c0de15a8:	b03c      	add	sp, #240	@ 0xf0
c0de15aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de15b0 <swap_handle_get_printable_amount>:
c0de15b0:	b570      	push	{r4, r5, r6, lr}
c0de15b2:	b08c      	sub	sp, #48	@ 0x30
c0de15b4:	ac04      	add	r4, sp, #16
c0de15b6:	4606      	mov	r6, r0
c0de15b8:	211e      	movs	r1, #30
c0de15ba:	4620      	mov	r0, r4
c0de15bc:	f006 f92e 	bl	c0de781c <__aeabi_memclr>
c0de15c0:	f106 050e 	add.w	r5, r6, #14
c0de15c4:	2132      	movs	r1, #50	@ 0x32
c0de15c6:	4628      	mov	r0, r5
c0de15c8:	f006 f928 	bl	c0de781c <__aeabi_memclr>
c0de15cc:	2000      	movs	r0, #0
c0de15ce:	7b31      	ldrb	r1, [r6, #12]
c0de15d0:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de15d4:	68b0      	ldr	r0, [r6, #8]
c0de15d6:	aa02      	add	r2, sp, #8
c0de15d8:	f005 faf2 	bl	c0de6bc0 <swap_str_to_u64>
c0de15dc:	b178      	cbz	r0, c0de15fe <swap_handle_get_printable_amount+0x4e>
c0de15de:	2003      	movs	r0, #3
c0de15e0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de15e4:	211e      	movs	r1, #30
c0de15e6:	9000      	str	r0, [sp, #0]
c0de15e8:	4620      	mov	r0, r4
c0de15ea:	f005 f8b6 	bl	c0de675a <format_fpu64>
c0de15ee:	9400      	str	r4, [sp, #0]
c0de15f0:	4628      	mov	r0, r5
c0de15f2:	2132      	movs	r1, #50	@ 0x32
c0de15f4:	231e      	movs	r3, #30
c0de15f6:	4a03      	ldr	r2, [pc, #12]	@ (c0de1604 <swap_handle_get_printable_amount+0x54>)
c0de15f8:	447a      	add	r2, pc
c0de15fa:	f005 fc71 	bl	c0de6ee0 <snprintf>
c0de15fe:	b00c      	add	sp, #48	@ 0x30
c0de1600:	bd70      	pop	{r4, r5, r6, pc}
c0de1602:	bf00      	nop
c0de1604:	0000676c 	.word	0x0000676c

c0de1608 <swap_copy_transaction_parameters>:
c0de1608:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de160a:	b093      	sub	sp, #76	@ 0x4c
c0de160c:	6985      	ldr	r5, [r0, #24]
c0de160e:	b3ad      	cbz	r5, c0de167c <swap_copy_transaction_parameters+0x74>
c0de1610:	4604      	mov	r4, r0
c0de1612:	4628      	mov	r0, r5
c0de1614:	f006 f95e 	bl	c0de78d4 <strlen>
c0de1618:	2828      	cmp	r0, #40	@ 0x28
c0de161a:	d12f      	bne.n	c0de167c <swap_copy_transaction_parameters+0x74>
c0de161c:	68a7      	ldr	r7, [r4, #8]
c0de161e:	b36f      	cbz	r7, c0de167c <swap_copy_transaction_parameters+0x74>
c0de1620:	466e      	mov	r6, sp
c0de1622:	2148      	movs	r1, #72	@ 0x48
c0de1624:	4630      	mov	r0, r6
c0de1626:	f006 f8f9 	bl	c0de781c <__aeabi_memclr>
c0de162a:	f106 0018 	add.w	r0, r6, #24
c0de162e:	2100      	movs	r1, #0
c0de1630:	2928      	cmp	r1, #40	@ 0x28
c0de1632:	d009      	beq.n	c0de1648 <swap_copy_transaction_parameters+0x40>
c0de1634:	5c6a      	ldrb	r2, [r5, r1]
c0de1636:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de163a:	b2db      	uxtb	r3, r3
c0de163c:	2b1a      	cmp	r3, #26
c0de163e:	bf38      	it	cc
c0de1640:	3a20      	subcc	r2, #32
c0de1642:	5442      	strb	r2, [r0, r1]
c0de1644:	3101      	adds	r1, #1
c0de1646:	e7f3      	b.n	c0de1630 <swap_copy_transaction_parameters+0x28>
c0de1648:	7b21      	ldrb	r1, [r4, #12]
c0de164a:	f106 0208 	add.w	r2, r6, #8
c0de164e:	4638      	mov	r0, r7
c0de1650:	f005 fab6 	bl	c0de6bc0 <swap_str_to_u64>
c0de1654:	b190      	cbz	r0, c0de167c <swap_copy_transaction_parameters+0x74>
c0de1656:	7d21      	ldrb	r1, [r4, #20]
c0de1658:	6920      	ldr	r0, [r4, #16]
c0de165a:	f106 0210 	add.w	r2, r6, #16
c0de165e:	f005 faaf 	bl	c0de6bc0 <swap_str_to_u64>
c0de1662:	b158      	cbz	r0, c0de167c <swap_copy_transaction_parameters+0x74>
c0de1664:	2401      	movs	r4, #1
c0de1666:	f88d 4000 	strb.w	r4, [sp]
c0de166a:	f005 fc2d 	bl	c0de6ec8 <os_explicit_zero_BSS_segment>
c0de166e:	4805      	ldr	r0, [pc, #20]	@ (c0de1684 <swap_copy_transaction_parameters+0x7c>)
c0de1670:	4669      	mov	r1, sp
c0de1672:	2248      	movs	r2, #72	@ 0x48
c0de1674:	4448      	add	r0, r9
c0de1676:	f006 f8c7 	bl	c0de7808 <__aeabi_memcpy>
c0de167a:	e000      	b.n	c0de167e <swap_copy_transaction_parameters+0x76>
c0de167c:	2400      	movs	r4, #0
c0de167e:	4620      	mov	r0, r4
c0de1680:	b013      	add	sp, #76	@ 0x4c
c0de1682:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1684:	00000310 	.word	0x00000310

c0de1688 <swap_check_validity>:
c0de1688:	b570      	push	{r4, r5, r6, lr}
c0de168a:	b08c      	sub	sp, #48	@ 0x30
c0de168c:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1704 <swap_check_validity+0x7c>)
c0de168e:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1692:	b32c      	cbz	r4, c0de16e0 <swap_check_validity+0x58>
c0de1694:	eb09 0406 	add.w	r4, r9, r6
c0de1698:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de169c:	4069      	eors	r1, r5
c0de169e:	4060      	eors	r0, r4
c0de16a0:	4308      	orrs	r0, r1
c0de16a2:	d121      	bne.n	c0de16e8 <swap_check_validity+0x60>
c0de16a4:	eb09 0006 	add.w	r0, r9, r6
c0de16a8:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de16ac:	4059      	eors	r1, r3
c0de16ae:	4050      	eors	r0, r2
c0de16b0:	4308      	orrs	r0, r1
c0de16b2:	d11d      	bne.n	c0de16f0 <swap_check_validity+0x68>
c0de16b4:	ad01      	add	r5, sp, #4
c0de16b6:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de16b8:	2129      	movs	r1, #41	@ 0x29
c0de16ba:	4628      	mov	r0, r5
c0de16bc:	f006 f8ae 	bl	c0de781c <__aeabi_memclr>
c0de16c0:	4620      	mov	r0, r4
c0de16c2:	2114      	movs	r1, #20
c0de16c4:	462a      	mov	r2, r5
c0de16c6:	2329      	movs	r3, #41	@ 0x29
c0de16c8:	f005 f88e 	bl	c0de67e8 <format_hex>
c0de16cc:	eb09 0006 	add.w	r0, r9, r6
c0de16d0:	4629      	mov	r1, r5
c0de16d2:	3018      	adds	r0, #24
c0de16d4:	f006 f8f4 	bl	c0de78c0 <strcmp>
c0de16d8:	b970      	cbnz	r0, c0de16f8 <swap_check_validity+0x70>
c0de16da:	2001      	movs	r0, #1
c0de16dc:	b00c      	add	sp, #48	@ 0x30
c0de16de:	bd70      	pop	{r4, r5, r6, pc}
c0de16e0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16e4:	21ff      	movs	r1, #255	@ 0xff
c0de16e6:	e00a      	b.n	c0de16fe <swap_check_validity+0x76>
c0de16e8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16ec:	2101      	movs	r1, #1
c0de16ee:	e006      	b.n	c0de16fe <swap_check_validity+0x76>
c0de16f0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16f4:	2103      	movs	r1, #3
c0de16f6:	e002      	b.n	c0de16fe <swap_check_validity+0x76>
c0de16f8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16fc:	2102      	movs	r1, #2
c0de16fe:	2200      	movs	r2, #0
c0de1700:	f005 fa25 	bl	c0de6b4e <send_swap_error_simple>
c0de1704:	00000310 	.word	0x00000310

c0de1708 <transaction_deserialize>:
c0de1708:	b570      	push	{r4, r5, r6, lr}
c0de170a:	460d      	mov	r5, r1
c0de170c:	4604      	mov	r4, r0
c0de170e:	b910      	cbnz	r0, c0de1716 <transaction_deserialize+0xe>
c0de1710:	2001      	movs	r0, #1
c0de1712:	f005 fb69 	bl	c0de6de8 <assert_exit>
c0de1716:	b915      	cbnz	r5, c0de171e <transaction_deserialize+0x16>
c0de1718:	2001      	movs	r0, #1
c0de171a:	f005 fb65 	bl	c0de6de8 <assert_exit>
c0de171e:	6860      	ldr	r0, [r4, #4]
c0de1720:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1724:	d901      	bls.n	c0de172a <transaction_deserialize+0x22>
c0de1726:	20f9      	movs	r0, #249	@ 0xf9
c0de1728:	e04b      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de172a:	4620      	mov	r0, r4
c0de172c:	4629      	mov	r1, r5
c0de172e:	2200      	movs	r2, #0
c0de1730:	f004 fe7e 	bl	c0de6430 <buffer_read_u64>
c0de1734:	b330      	cbz	r0, c0de1784 <transaction_deserialize+0x7c>
c0de1736:	6820      	ldr	r0, [r4, #0]
c0de1738:	68a1      	ldr	r1, [r4, #8]
c0de173a:	4408      	add	r0, r1
c0de173c:	2114      	movs	r1, #20
c0de173e:	61a8      	str	r0, [r5, #24]
c0de1740:	4620      	mov	r0, r4
c0de1742:	f004 fe54 	bl	c0de63ee <buffer_seek_cur>
c0de1746:	b1f8      	cbz	r0, c0de1788 <transaction_deserialize+0x80>
c0de1748:	f105 0108 	add.w	r1, r5, #8
c0de174c:	4620      	mov	r0, r4
c0de174e:	2200      	movs	r2, #0
c0de1750:	2600      	movs	r6, #0
c0de1752:	f004 fe6d 	bl	c0de6430 <buffer_read_u64>
c0de1756:	b1c8      	cbz	r0, c0de178c <transaction_deserialize+0x84>
c0de1758:	f105 0120 	add.w	r1, r5, #32
c0de175c:	4620      	mov	r0, r4
c0de175e:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1762:	f004 fe85 	bl	c0de6470 <buffer_read_varint>
c0de1766:	6a29      	ldr	r1, [r5, #32]
c0de1768:	b990      	cbnz	r0, c0de1790 <transaction_deserialize+0x88>
c0de176a:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de176c:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1770:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1774:	2300      	movs	r3, #0
c0de1776:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de177a:	eb73 0000 	sbcs.w	r0, r3, r0
c0de177e:	d207      	bcs.n	c0de1790 <transaction_deserialize+0x88>
c0de1780:	20fc      	movs	r0, #252	@ 0xfc
c0de1782:	e01e      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de1784:	20ff      	movs	r0, #255	@ 0xff
c0de1786:	e01c      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de1788:	20fe      	movs	r0, #254	@ 0xfe
c0de178a:	e01a      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de178c:	20fd      	movs	r0, #253	@ 0xfd
c0de178e:	e018      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de1790:	6820      	ldr	r0, [r4, #0]
c0de1792:	68a2      	ldr	r2, [r4, #8]
c0de1794:	4410      	add	r0, r2
c0de1796:	61e8      	str	r0, [r5, #28]
c0de1798:	4620      	mov	r0, r4
c0de179a:	f004 fe28 	bl	c0de63ee <buffer_seek_cur>
c0de179e:	b168      	cbz	r0, c0de17bc <transaction_deserialize+0xb4>
c0de17a0:	f105 031c 	add.w	r3, r5, #28
c0de17a4:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de17a6:	f000 f80e 	bl	c0de17c6 <transaction_utils_check_encoding>
c0de17aa:	b148      	cbz	r0, c0de17c0 <transaction_deserialize+0xb8>
c0de17ac:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de17b0:	f06f 0006 	mvn.w	r0, #6
c0de17b4:	428a      	cmp	r2, r1
c0de17b6:	bf08      	it	eq
c0de17b8:	2001      	moveq	r0, #1
c0de17ba:	e002      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de17bc:	20fb      	movs	r0, #251	@ 0xfb
c0de17be:	e000      	b.n	c0de17c2 <transaction_deserialize+0xba>
c0de17c0:	20fa      	movs	r0, #250	@ 0xfa
c0de17c2:	b240      	sxtb	r0, r0
c0de17c4:	bd70      	pop	{r4, r5, r6, pc}

c0de17c6 <transaction_utils_check_encoding>:
c0de17c6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de17c8:	461c      	mov	r4, r3
c0de17ca:	4615      	mov	r5, r2
c0de17cc:	4606      	mov	r6, r0
c0de17ce:	b910      	cbnz	r0, c0de17d6 <transaction_utils_check_encoding+0x10>
c0de17d0:	2001      	movs	r0, #1
c0de17d2:	f005 fb09 	bl	c0de6de8 <assert_exit>
c0de17d6:	2000      	movs	r0, #0
c0de17d8:	2300      	movs	r3, #0
c0de17da:	4602      	mov	r2, r0
c0de17dc:	1b40      	subs	r0, r0, r5
c0de17de:	4619      	mov	r1, r3
c0de17e0:	eb73 0004 	sbcs.w	r0, r3, r4
c0de17e4:	d206      	bcs.n	c0de17f4 <transaction_utils_check_encoding+0x2e>
c0de17e6:	56b7      	ldrsb	r7, [r6, r2]
c0de17e8:	1c50      	adds	r0, r2, #1
c0de17ea:	f141 0300 	adc.w	r3, r1, #0
c0de17ee:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de17f2:	dcf2      	bgt.n	c0de17da <transaction_utils_check_encoding+0x14>
c0de17f4:	2000      	movs	r0, #0
c0de17f6:	1b52      	subs	r2, r2, r5
c0de17f8:	41a1      	sbcs	r1, r4
c0de17fa:	bf28      	it	cs
c0de17fc:	2001      	movcs	r0, #1
c0de17fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1800 <validate_pubkey>:
c0de1800:	b108      	cbz	r0, c0de1806 <validate_pubkey+0x6>
c0de1802:	f7ff be23 	b.w	c0de144c <helper_send_response_pubkey>
c0de1806:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de180a:	f000 b800 	b.w	c0de180e <io_send_sw>

c0de180e <io_send_sw>:
c0de180e:	b580      	push	{r7, lr}
c0de1810:	4602      	mov	r2, r0
c0de1812:	2000      	movs	r0, #0
c0de1814:	2100      	movs	r1, #0
c0de1816:	f005 f847 	bl	c0de68a8 <io_send_response_buffers>
c0de181a:	bd80      	pop	{r7, pc}

c0de181c <validate_transaction>:
c0de181c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1820:	b0a5      	sub	sp, #148	@ 0x94
c0de1822:	2800      	cmp	r0, #0
c0de1824:	d056      	beq.n	c0de18d4 <validate_transaction+0xb8>
c0de1826:	f8df a0d4 	ldr.w	sl, [pc, #212]	@ c0de18fc <validate_transaction+0xe0>
c0de182a:	2160      	movs	r1, #96	@ 0x60
c0de182c:	2002      	movs	r0, #2
c0de182e:	f10d 0c90 	add.w	ip, sp, #144	@ 0x90
c0de1832:	2703      	movs	r7, #3
c0de1834:	f240 6201 	movw	r2, #1537	@ 0x601
c0de1838:	f04f 0820 	mov.w	r8, #32
c0de183c:	9123      	str	r1, [sp, #140]	@ 0x8c
c0de183e:	eb09 010a 	add.w	r1, r9, sl
c0de1842:	f809 000a 	strb.w	r0, [r9, sl]
c0de1846:	2000      	movs	r0, #0
c0de1848:	f891 32ec 	ldrb.w	r3, [r1, #748]	@ 0x2ec
c0de184c:	9024      	str	r0, [sp, #144]	@ 0x90
c0de184e:	9008      	str	r0, [sp, #32]
c0de1850:	ac23      	add	r4, sp, #140	@ 0x8c
c0de1852:	f501 7516 	add.w	r5, r1, #600	@ 0x258
c0de1856:	f501 760e 	add.w	r6, r1, #568	@ 0x238
c0de185a:	e9cd 2700 	strd	r2, r7, [sp]
c0de185e:	e9cd c006 	strd	ip, r0, [sp, #24]
c0de1862:	f501 7231 	add.w	r2, r1, #708	@ 0x2c4
c0de1866:	2000      	movs	r0, #0
c0de1868:	2121      	movs	r1, #33	@ 0x21
c0de186a:	e9cd 6802 	strd	r6, r8, [sp, #8]
c0de186e:	e9cd 5404 	strd	r5, r4, [sp, #16]
c0de1872:	f004 ff0f 	bl	c0de6694 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1876:	bb18      	cbnz	r0, c0de18c0 <validate_transaction+0xa4>
c0de1878:	2020      	movs	r0, #32
c0de187a:	2100      	movs	r1, #0
c0de187c:	f005 fcfc 	bl	c0de7278 <cx_bn_lock>
c0de1880:	ac0d      	add	r4, sp, #52	@ 0x34
c0de1882:	2102      	movs	r1, #2
c0de1884:	4620      	mov	r0, r4
c0de1886:	f000 fff1 	bl	c0de286c <tEdwards_Curve_alloc_init>
c0de188a:	ad0a      	add	r5, sp, #40	@ 0x28
c0de188c:	4620      	mov	r0, r4
c0de188e:	4629      	mov	r1, r5
c0de1890:	f000 fe6c 	bl	c0de256c <tEdwards_alloc>
c0de1894:	481a      	ldr	r0, [pc, #104]	@ (c0de1900 <validate_transaction+0xe4>)
c0de1896:	462a      	mov	r2, r5
c0de1898:	eb09 0600 	add.w	r6, r9, r0
c0de189c:	4620      	mov	r0, r4
c0de189e:	4631      	mov	r1, r6
c0de18a0:	f000 fa72 	bl	c0de1d88 <zkn_prv2pub>
c0de18a4:	eb09 000a 	add.w	r0, r9, sl
c0de18a8:	462a      	mov	r2, r5
c0de18aa:	f500 7116 	add.w	r1, r0, #600	@ 0x258
c0de18ae:	f500 730e 	add.w	r3, r0, #568	@ 0x238
c0de18b2:	4620      	mov	r0, r4
c0de18b4:	e9cd 8100 	strd	r8, r1, [sp]
c0de18b8:	4631      	mov	r1, r6
c0de18ba:	f000 fa8d 	bl	c0de1dd8 <EddsaPoseidon_Sign_final>
c0de18be:	b1a0      	cbz	r0, c0de18ea <validate_transaction+0xce>
c0de18c0:	2000      	movs	r0, #0
c0de18c2:	f809 000a 	strb.w	r0, [r9, sl]
c0de18c6:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de18ca:	f7ff ffa0 	bl	c0de180e <io_send_sw>
c0de18ce:	b025      	add	sp, #148	@ 0x94
c0de18d0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de18d4:	4809      	ldr	r0, [pc, #36]	@ (c0de18fc <validate_transaction+0xe0>)
c0de18d6:	2100      	movs	r1, #0
c0de18d8:	f809 1000 	strb.w	r1, [r9, r0]
c0de18dc:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de18e0:	b025      	add	sp, #148	@ 0x94
c0de18e2:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de18e6:	f7ff bf92 	b.w	c0de180e <io_send_sw>
c0de18ea:	eb09 000a 	add.w	r0, r9, sl
c0de18ee:	2160      	movs	r1, #96	@ 0x60
c0de18f0:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de18f4:	f7ff fdd8 	bl	c0de14a8 <helper_send_response_sig_zkn>
c0de18f8:	e7e9      	b.n	c0de18ce <validate_transaction+0xb2>
c0de18fa:	bf00      	nop
c0de18fc:	00000000 	.word	0x00000000
c0de1900:	000002f0 	.word	0x000002f0

c0de1904 <app_quit>:
c0de1904:	20ff      	movs	r0, #255	@ 0xff
c0de1906:	f005 fe43 	bl	c0de7590 <os_sched_exit>
	...

c0de190c <ui_menu_main>:
c0de190c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de190e:	4c19      	ldr	r4, [pc, #100]	@ (c0de1974 <ui_menu_main+0x68>)
c0de1910:	4817      	ldr	r0, [pc, #92]	@ (c0de1970 <ui_menu_main+0x64>)
c0de1912:	447c      	add	r4, pc
c0de1914:	eb09 0500 	add.w	r5, r9, r0
c0de1918:	f000 f8d8 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de191c:	2114      	movs	r1, #20
c0de191e:	7369      	strb	r1, [r5, #13]
c0de1920:	4915      	ldr	r1, [pc, #84]	@ (c0de1978 <ui_menu_main+0x6c>)
c0de1922:	4a16      	ldr	r2, [pc, #88]	@ (c0de197c <ui_menu_main+0x70>)
c0de1924:	4479      	add	r1, pc
c0de1926:	447a      	add	r2, pc
c0de1928:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de192c:	7800      	ldrb	r0, [r0, #0]
c0de192e:	7328      	strb	r0, [r5, #12]
c0de1930:	f000 f8cc 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de1934:	2115      	movs	r1, #21
c0de1936:	7669      	strb	r1, [r5, #25]
c0de1938:	4911      	ldr	r1, [pc, #68]	@ (c0de1980 <ui_menu_main+0x74>)
c0de193a:	4a12      	ldr	r2, [pc, #72]	@ (c0de1984 <ui_menu_main+0x78>)
c0de193c:	4479      	add	r1, pc
c0de193e:	447a      	add	r2, pc
c0de1940:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1944:	2100      	movs	r1, #0
c0de1946:	7840      	ldrb	r0, [r0, #1]
c0de1948:	7628      	strb	r0, [r5, #24]
c0de194a:	480f      	ldr	r0, [pc, #60]	@ (c0de1988 <ui_menu_main+0x7c>)
c0de194c:	4a0f      	ldr	r2, [pc, #60]	@ (c0de198c <ui_menu_main+0x80>)
c0de194e:	4b10      	ldr	r3, [pc, #64]	@ (c0de1990 <ui_menu_main+0x84>)
c0de1950:	4478      	add	r0, pc
c0de1952:	447a      	add	r2, pc
c0de1954:	447b      	add	r3, pc
c0de1956:	e9cd 3200 	strd	r3, r2, [sp]
c0de195a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de195e:	2200      	movs	r2, #0
c0de1960:	23ff      	movs	r3, #255	@ 0xff
c0de1962:	480c      	ldr	r0, [pc, #48]	@ (c0de1994 <ui_menu_main+0x88>)
c0de1964:	490c      	ldr	r1, [pc, #48]	@ (c0de1998 <ui_menu_main+0x8c>)
c0de1966:	4478      	add	r0, pc
c0de1968:	4479      	add	r1, pc
c0de196a:	f003 f837 	bl	c0de49dc <nbgl_useCaseHomeAndSettings>
c0de196e:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1970:	00000358 	.word	0x00000358
c0de1974:	000074ea 	.word	0x000074ea
c0de1978:	000062ed 	.word	0x000062ed
c0de197c:	00006454 	.word	0x00006454
c0de1980:	00006350 	.word	0x00006350
c0de1984:	000061ac 	.word	0x000061ac
c0de1988:	ffffffb1 	.word	0xffffffb1
c0de198c:	00006dfe 	.word	0x00006dfe
c0de1990:	00006df0 	.word	0x00006df0
c0de1994:	000064b7 	.word	0x000064b7
c0de1998:	00005fdb 	.word	0x00005fdb

c0de199c <controls_callback>:
c0de199c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de199e:	4c22      	ldr	r4, [pc, #136]	@ (c0de1a28 <controls_callback+0x8c>)
c0de19a0:	2815      	cmp	r0, #21
c0de19a2:	f809 2004 	strb.w	r2, [r9, r4]
c0de19a6:	d011      	beq.n	c0de19cc <controls_callback+0x30>
c0de19a8:	2814      	cmp	r0, #20
c0de19aa:	d12a      	bne.n	c0de1a02 <controls_callback+0x66>
c0de19ac:	eb09 0504 	add.w	r5, r9, r4
c0de19b0:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1a2c <controls_callback+0x90>)
c0de19b2:	447c      	add	r4, pc
c0de19b4:	f000 f88a 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de19b8:	7800      	ldrb	r0, [r0, #0]
c0de19ba:	fab0 f080 	clz	r0, r0
c0de19be:	0940      	lsrs	r0, r0, #5
c0de19c0:	7328      	strb	r0, [r5, #12]
c0de19c2:	f88d 000f 	strb.w	r0, [sp, #15]
c0de19c6:	f000 f881 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de19ca:	e015      	b.n	c0de19f8 <controls_callback+0x5c>
c0de19cc:	4818      	ldr	r0, [pc, #96]	@ (c0de1a30 <controls_callback+0x94>)
c0de19ce:	4478      	add	r0, pc
c0de19d0:	f005 fc18 	bl	c0de7204 <pic>
c0de19d4:	7840      	ldrb	r0, [r0, #1]
c0de19d6:	b1a8      	cbz	r0, c0de1a04 <controls_callback+0x68>
c0de19d8:	eb09 0504 	add.w	r5, r9, r4
c0de19dc:	4c15      	ldr	r4, [pc, #84]	@ (c0de1a34 <controls_callback+0x98>)
c0de19de:	447c      	add	r4, pc
c0de19e0:	f000 f874 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de19e4:	7840      	ldrb	r0, [r0, #1]
c0de19e6:	fab0 f080 	clz	r0, r0
c0de19ea:	0940      	lsrs	r0, r0, #5
c0de19ec:	7628      	strb	r0, [r5, #24]
c0de19ee:	f88d 000f 	strb.w	r0, [sp, #15]
c0de19f2:	f000 f86b 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de19f6:	3001      	adds	r0, #1
c0de19f8:	f10d 010f 	add.w	r1, sp, #15
c0de19fc:	2201      	movs	r2, #1
c0de19fe:	f005 fc31 	bl	c0de7264 <nvm_write>
c0de1a02:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1a04:	480c      	ldr	r0, [pc, #48]	@ (c0de1a38 <controls_callback+0x9c>)
c0de1a06:	490d      	ldr	r1, [pc, #52]	@ (c0de1a3c <controls_callback+0xa0>)
c0de1a08:	4478      	add	r0, pc
c0de1a0a:	4479      	add	r1, pc
c0de1a0c:	e9cd 1000 	strd	r1, r0, [sp]
c0de1a10:	480b      	ldr	r0, [pc, #44]	@ (c0de1a40 <controls_callback+0xa4>)
c0de1a12:	490c      	ldr	r1, [pc, #48]	@ (c0de1a44 <controls_callback+0xa8>)
c0de1a14:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1a48 <controls_callback+0xac>)
c0de1a16:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1a4c <controls_callback+0xb0>)
c0de1a18:	4478      	add	r0, pc
c0de1a1a:	4479      	add	r1, pc
c0de1a1c:	447a      	add	r2, pc
c0de1a1e:	447b      	add	r3, pc
c0de1a20:	f003 fc52 	bl	c0de52c8 <nbgl_useCaseChoice>
c0de1a24:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1a26:	bf00      	nop
c0de1a28:	00000358 	.word	0x00000358
c0de1a2c:	0000744a 	.word	0x0000744a
c0de1a30:	0000742e 	.word	0x0000742e
c0de1a34:	0000741e 	.word	0x0000741e
c0de1a38:	00000045 	.word	0x00000045
c0de1a3c:	000062a8 	.word	0x000062a8
c0de1a40:	000060a5 	.word	0x000060a5
c0de1a44:	000060d0 	.word	0x000060d0
c0de1a48:	00006175 	.word	0x00006175
c0de1a4c:	00006364 	.word	0x00006364

c0de1a50 <review_warning_choice>:
c0de1a50:	b5b0      	push	{r4, r5, r7, lr}
c0de1a52:	b086      	sub	sp, #24
c0de1a54:	b1a8      	cbz	r0, c0de1a82 <review_warning_choice+0x32>
c0de1a56:	4c17      	ldr	r4, [pc, #92]	@ (c0de1ab4 <review_warning_choice+0x64>)
c0de1a58:	4815      	ldr	r0, [pc, #84]	@ (c0de1ab0 <review_warning_choice+0x60>)
c0de1a5a:	447c      	add	r4, pc
c0de1a5c:	eb09 0500 	add.w	r5, r9, r0
c0de1a60:	f000 f834 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de1a64:	7840      	ldrb	r0, [r0, #1]
c0de1a66:	fab0 f080 	clz	r0, r0
c0de1a6a:	0940      	lsrs	r0, r0, #5
c0de1a6c:	7628      	strb	r0, [r5, #24]
c0de1a6e:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1a72:	f000 f82b 	bl	c0de1acc <OUTLINED_FUNCTION_0>
c0de1a76:	3001      	adds	r0, #1
c0de1a78:	f10d 0117 	add.w	r1, sp, #23
c0de1a7c:	2201      	movs	r2, #1
c0de1a7e:	f005 fbf1 	bl	c0de7264 <nvm_write>
c0de1a82:	480b      	ldr	r0, [pc, #44]	@ (c0de1ab0 <review_warning_choice+0x60>)
c0de1a84:	2100      	movs	r1, #0
c0de1a86:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1a8a:	480b      	ldr	r0, [pc, #44]	@ (c0de1ab8 <review_warning_choice+0x68>)
c0de1a8c:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1abc <review_warning_choice+0x6c>)
c0de1a8e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1ac0 <review_warning_choice+0x70>)
c0de1a90:	4478      	add	r0, pc
c0de1a92:	447a      	add	r2, pc
c0de1a94:	447c      	add	r4, pc
c0de1a96:	e9cd 4200 	strd	r4, r2, [sp]
c0de1a9a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1a9e:	2200      	movs	r2, #0
c0de1aa0:	4808      	ldr	r0, [pc, #32]	@ (c0de1ac4 <review_warning_choice+0x74>)
c0de1aa2:	4909      	ldr	r1, [pc, #36]	@ (c0de1ac8 <review_warning_choice+0x78>)
c0de1aa4:	4478      	add	r0, pc
c0de1aa6:	4479      	add	r1, pc
c0de1aa8:	f002 ff98 	bl	c0de49dc <nbgl_useCaseHomeAndSettings>
c0de1aac:	b006      	add	sp, #24
c0de1aae:	bdb0      	pop	{r4, r5, r7, pc}
c0de1ab0:	00000358 	.word	0x00000358
c0de1ab4:	000073a2 	.word	0x000073a2
c0de1ab8:	fffffe71 	.word	0xfffffe71
c0de1abc:	00006cbe 	.word	0x00006cbe
c0de1ac0:	00006cb0 	.word	0x00006cb0
c0de1ac4:	00006379 	.word	0x00006379
c0de1ac8:	00005e9d 	.word	0x00005e9d

c0de1acc <OUTLINED_FUNCTION_0>:
c0de1acc:	4620      	mov	r0, r4
c0de1ace:	f005 bb99 	b.w	c0de7204 <pic>
	...

c0de1ad4 <ui_display_address>:
c0de1ad4:	b570      	push	{r4, r5, r6, lr}
c0de1ad6:	b088      	sub	sp, #32
c0de1ad8:	4e22      	ldr	r6, [pc, #136]	@ (c0de1b64 <ui_display_address+0x90>)
c0de1ada:	eb09 0106 	add.w	r1, r9, r6
c0de1ade:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1ae2:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1ae6:	4308      	orrs	r0, r1
c0de1ae8:	d12a      	bne.n	c0de1b40 <ui_display_address+0x6c>
c0de1aea:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1b68 <ui_display_address+0x94>)
c0de1aec:	212b      	movs	r1, #43	@ 0x2b
c0de1aee:	eb09 0005 	add.w	r0, r9, r5
c0de1af2:	f005 fe93 	bl	c0de781c <__aeabi_memclr>
c0de1af6:	ac03      	add	r4, sp, #12
c0de1af8:	2114      	movs	r1, #20
c0de1afa:	4620      	mov	r0, r4
c0de1afc:	f005 fe8e 	bl	c0de781c <__aeabi_memclr>
c0de1b00:	eb09 0006 	add.w	r0, r9, r6
c0de1b04:	4621      	mov	r1, r4
c0de1b06:	2214      	movs	r2, #20
c0de1b08:	3008      	adds	r0, #8
c0de1b0a:	f7fe fa8d 	bl	c0de0028 <address_from_pubkey>
c0de1b0e:	b308      	cbz	r0, c0de1b54 <ui_display_address+0x80>
c0de1b10:	eb09 0205 	add.w	r2, r9, r5
c0de1b14:	a803      	add	r0, sp, #12
c0de1b16:	2114      	movs	r1, #20
c0de1b18:	232b      	movs	r3, #43	@ 0x2b
c0de1b1a:	f004 fe65 	bl	c0de67e8 <format_hex>
c0de1b1e:	3001      	adds	r0, #1
c0de1b20:	d018      	beq.n	c0de1b54 <ui_display_address+0x80>
c0de1b22:	4812      	ldr	r0, [pc, #72]	@ (c0de1b6c <ui_display_address+0x98>)
c0de1b24:	2400      	movs	r4, #0
c0de1b26:	2100      	movs	r1, #0
c0de1b28:	4478      	add	r0, pc
c0de1b2a:	e9cd 4000 	strd	r4, r0, [sp]
c0de1b2e:	eb09 0005 	add.w	r0, r9, r5
c0de1b32:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1b70 <ui_display_address+0x9c>)
c0de1b34:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1b74 <ui_display_address+0xa0>)
c0de1b36:	447a      	add	r2, pc
c0de1b38:	447b      	add	r3, pc
c0de1b3a:	f003 f8a9 	bl	c0de4c90 <nbgl_useCaseAddressReview>
c0de1b3e:	e00e      	b.n	c0de1b5e <ui_display_address+0x8a>
c0de1b40:	2000      	movs	r0, #0
c0de1b42:	f809 0006 	strb.w	r0, [r9, r6]
c0de1b46:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1b4a:	b008      	add	sp, #32
c0de1b4c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1b50:	f000 b812 	b.w	c0de1b78 <io_send_sw>
c0de1b54:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1b58:	f000 f80e 	bl	c0de1b78 <io_send_sw>
c0de1b5c:	4604      	mov	r4, r0
c0de1b5e:	4620      	mov	r0, r4
c0de1b60:	b008      	add	sp, #32
c0de1b62:	bd70      	pop	{r4, r5, r6, pc}
c0de1b64:	00000000 	.word	0x00000000
c0de1b68:	00000374 	.word	0x00000374
c0de1b6c:	0000005d 	.word	0x0000005d
c0de1b70:	00005faa 	.word	0x00005faa
c0de1b74:	000062b3 	.word	0x000062b3

c0de1b78 <io_send_sw>:
c0de1b78:	b580      	push	{r7, lr}
c0de1b7a:	4602      	mov	r2, r0
c0de1b7c:	2000      	movs	r0, #0
c0de1b7e:	2100      	movs	r1, #0
c0de1b80:	f004 fe92 	bl	c0de68a8 <io_send_response_buffers>
c0de1b84:	bd80      	pop	{r7, pc}
	...

c0de1b88 <review_choice>:
c0de1b88:	b510      	push	{r4, lr}
c0de1b8a:	4604      	mov	r4, r0
c0de1b8c:	f7ff fe38 	bl	c0de1800 <validate_pubkey>
c0de1b90:	2007      	movs	r0, #7
c0de1b92:	2c00      	cmp	r4, #0
c0de1b94:	bf18      	it	ne
c0de1b96:	2006      	movne	r0, #6
c0de1b98:	4902      	ldr	r1, [pc, #8]	@ (c0de1ba4 <review_choice+0x1c>)
c0de1b9a:	4479      	add	r1, pc
c0de1b9c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1ba0:	f003 ba68 	b.w	c0de5074 <nbgl_useCaseReviewStatus>
c0de1ba4:	fffffd6f 	.word	0xfffffd6f

c0de1ba8 <ui_display_transaction_bs_choice>:
c0de1ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1baa:	b08d      	sub	sp, #52	@ 0x34
c0de1bac:	4f43      	ldr	r7, [pc, #268]	@ (c0de1cbc <ui_display_transaction_bs_choice+0x114>)
c0de1bae:	4604      	mov	r4, r0
c0de1bb0:	eb09 0007 	add.w	r0, r9, r7
c0de1bb4:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1bb8:	2801      	cmp	r0, #1
c0de1bba:	d15d      	bne.n	c0de1c78 <ui_display_transaction_bs_choice+0xd0>
c0de1bbc:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1bc0:	2801      	cmp	r0, #1
c0de1bc2:	d159      	bne.n	c0de1c78 <ui_display_transaction_bs_choice+0xd0>
c0de1bc4:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1cc0 <ui_display_transaction_bs_choice+0x118>)
c0de1bc6:	211e      	movs	r1, #30
c0de1bc8:	eb09 0006 	add.w	r0, r9, r6
c0de1bcc:	3014      	adds	r0, #20
c0de1bce:	f005 fe25 	bl	c0de781c <__aeabi_memclr>
c0de1bd2:	ad05      	add	r5, sp, #20
c0de1bd4:	211e      	movs	r1, #30
c0de1bd6:	4628      	mov	r0, r5
c0de1bd8:	f005 fe20 	bl	c0de781c <__aeabi_memclr>
c0de1bdc:	eb09 0007 	add.w	r0, r9, r7
c0de1be0:	211e      	movs	r1, #30
c0de1be2:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1be6:	2003      	movs	r0, #3
c0de1be8:	9000      	str	r0, [sp, #0]
c0de1bea:	4628      	mov	r0, r5
c0de1bec:	f004 fdb5 	bl	c0de675a <format_fpu64>
c0de1bf0:	2800      	cmp	r0, #0
c0de1bf2:	d04b      	beq.n	c0de1c8c <ui_display_transaction_bs_choice+0xe4>
c0de1bf4:	9500      	str	r5, [sp, #0]
c0de1bf6:	eb09 0506 	add.w	r5, r9, r6
c0de1bfa:	211e      	movs	r1, #30
c0de1bfc:	231e      	movs	r3, #30
c0de1bfe:	4a31      	ldr	r2, [pc, #196]	@ (c0de1cc4 <ui_display_transaction_bs_choice+0x11c>)
c0de1c00:	f105 0014 	add.w	r0, r5, #20
c0de1c04:	447a      	add	r2, pc
c0de1c06:	f005 f96b 	bl	c0de6ee0 <snprintf>
c0de1c0a:	3554      	adds	r5, #84	@ 0x54
c0de1c0c:	212b      	movs	r1, #43	@ 0x2b
c0de1c0e:	4628      	mov	r0, r5
c0de1c10:	f005 fe04 	bl	c0de781c <__aeabi_memclr>
c0de1c14:	eb09 0007 	add.w	r0, r9, r7
c0de1c18:	2114      	movs	r1, #20
c0de1c1a:	462a      	mov	r2, r5
c0de1c1c:	232b      	movs	r3, #43	@ 0x2b
c0de1c1e:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1c22:	f004 fde1 	bl	c0de67e8 <format_hex>
c0de1c26:	3001      	adds	r0, #1
c0de1c28:	d033      	beq.n	c0de1c92 <ui_display_transaction_bs_choice+0xea>
c0de1c2a:	4927      	ldr	r1, [pc, #156]	@ (c0de1cc8 <ui_display_transaction_bs_choice+0x120>)
c0de1c2c:	eb09 0006 	add.w	r0, r9, r6
c0de1c30:	2500      	movs	r5, #0
c0de1c32:	4602      	mov	r2, r0
c0de1c34:	4479      	add	r1, pc
c0de1c36:	f842 1f34 	str.w	r1, [r2, #52]!
c0de1c3a:	f849 2006 	str.w	r2, [r9, r6]
c0de1c3e:	2202      	movs	r2, #2
c0de1c40:	4922      	ldr	r1, [pc, #136]	@ (c0de1ccc <ui_display_transaction_bs_choice+0x124>)
c0de1c42:	7202      	strb	r2, [r0, #8]
c0de1c44:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de1c48:	7285      	strb	r5, [r0, #10]
c0de1c4a:	4479      	add	r1, pc
c0de1c4c:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1c50:	f100 0114 	add.w	r1, r0, #20
c0de1c54:	6381      	str	r1, [r0, #56]	@ 0x38
c0de1c56:	481e      	ldr	r0, [pc, #120]	@ (c0de1cd0 <ui_display_transaction_bs_choice+0x128>)
c0de1c58:	4478      	add	r0, pc
c0de1c5a:	b314      	cbz	r4, c0de1ca2 <ui_display_transaction_bs_choice+0xfa>
c0de1c5c:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1c60:	e9cd 5500 	strd	r5, r5, [sp]
c0de1c64:	eb09 0106 	add.w	r1, r9, r6
c0de1c68:	2000      	movs	r0, #0
c0de1c6a:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1cd4 <ui_display_transaction_bs_choice+0x12c>)
c0de1c6c:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1cd8 <ui_display_transaction_bs_choice+0x130>)
c0de1c6e:	447a      	add	r2, pc
c0de1c70:	447b      	add	r3, pc
c0de1c72:	f002 fffb 	bl	c0de4c6c <nbgl_useCaseReviewBlindSigning>
c0de1c76:	e011      	b.n	c0de1c9c <ui_display_transaction_bs_choice+0xf4>
c0de1c78:	2000      	movs	r0, #0
c0de1c7a:	f809 0007 	strb.w	r0, [r9, r7]
c0de1c7e:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1c82:	b00d      	add	sp, #52	@ 0x34
c0de1c84:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1c88:	f000 b82c 	b.w	c0de1ce4 <io_send_sw>
c0de1c8c:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1c90:	e001      	b.n	c0de1c96 <ui_display_transaction_bs_choice+0xee>
c0de1c92:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1c96:	f000 f825 	bl	c0de1ce4 <io_send_sw>
c0de1c9a:	4605      	mov	r5, r0
c0de1c9c:	4628      	mov	r0, r5
c0de1c9e:	b00d      	add	sp, #52	@ 0x34
c0de1ca0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ca2:	9002      	str	r0, [sp, #8]
c0de1ca4:	e9cd 5500 	strd	r5, r5, [sp]
c0de1ca8:	eb09 0106 	add.w	r1, r9, r6
c0de1cac:	2000      	movs	r0, #0
c0de1cae:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1cdc <ui_display_transaction_bs_choice+0x134>)
c0de1cb0:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1ce0 <ui_display_transaction_bs_choice+0x138>)
c0de1cb2:	447a      	add	r2, pc
c0de1cb4:	447b      	add	r3, pc
c0de1cb6:	f002 ff39 	bl	c0de4b2c <nbgl_useCaseReview>
c0de1cba:	e7ef      	b.n	c0de1c9c <ui_display_transaction_bs_choice+0xf4>
c0de1cbc:	00000000 	.word	0x00000000
c0de1cc0:	000003a0 	.word	0x000003a0
c0de1cc4:	00005fbc 	.word	0x00005fbc
c0de1cc8:	00005f45 	.word	0x00005f45
c0de1ccc:	00006123 	.word	0x00006123
c0de1cd0:	00000099 	.word	0x00000099
c0de1cd4:	00005e72 	.word	0x00005e72
c0de1cd8:	0000618e 	.word	0x0000618e
c0de1cdc:	00005e2e 	.word	0x00005e2e
c0de1ce0:	0000614a 	.word	0x0000614a

c0de1ce4 <io_send_sw>:
c0de1ce4:	b580      	push	{r7, lr}
c0de1ce6:	4602      	mov	r2, r0
c0de1ce8:	2000      	movs	r0, #0
c0de1cea:	2100      	movs	r1, #0
c0de1cec:	f004 fddc 	bl	c0de68a8 <io_send_response_buffers>
c0de1cf0:	bd80      	pop	{r7, pc}
	...

c0de1cf4 <review_choice>:
c0de1cf4:	b510      	push	{r4, lr}
c0de1cf6:	4604      	mov	r4, r0
c0de1cf8:	f7ff fd90 	bl	c0de181c <validate_transaction>
c0de1cfc:	4903      	ldr	r1, [pc, #12]	@ (c0de1d0c <review_choice+0x18>)
c0de1cfe:	f084 0001 	eor.w	r0, r4, #1
c0de1d02:	4479      	add	r1, pc
c0de1d04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1d08:	f003 b9b4 	b.w	c0de5074 <nbgl_useCaseReviewStatus>
c0de1d0c:	fffffc07 	.word	0xfffffc07

c0de1d10 <ui_display_blind_signed_transaction>:
c0de1d10:	2001      	movs	r0, #1
c0de1d12:	f7ff bf49 	b.w	c0de1ba8 <ui_display_transaction_bs_choice>

c0de1d16 <ui_display_transaction>:
c0de1d16:	2000      	movs	r0, #0
c0de1d18:	f7ff bf46 	b.w	c0de1ba8 <ui_display_transaction_bs_choice>

c0de1d1c <zkn_prv_hash>:
c0de1d1c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1d20:	460c      	mov	r4, r1
c0de1d22:	e9cd 0200 	strd	r0, r2, [sp]
c0de1d26:	4668      	mov	r0, sp
c0de1d28:	2101      	movs	r1, #1
c0de1d2a:	2601      	movs	r6, #1
c0de1d2c:	4622      	mov	r2, r4
c0de1d2e:	f005 f828 	bl	c0de6d82 <cx_blake2b_512_hash_iovec>
c0de1d32:	4605      	mov	r5, r0
c0de1d34:	bb18      	cbnz	r0, c0de1d7e <zkn_prv_hash+0x62>
c0de1d36:	7820      	ldrb	r0, [r4, #0]
c0de1d38:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1d3c:	7020      	strb	r0, [r4, #0]
c0de1d3e:	7fe0      	ldrb	r0, [r4, #31]
c0de1d40:	f366 109f 	bfi	r0, r6, #6, #26
c0de1d44:	77e0      	strb	r0, [r4, #31]
c0de1d46:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1d4a:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1d84 <zkn_prv_hash+0x68>)
c0de1d4c:	447e      	add	r6, pc
c0de1d4e:	47b0      	blx	r6
c0de1d50:	4680      	mov	r8, r0
c0de1d52:	468a      	mov	sl, r1
c0de1d54:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1d58:	47b0      	blx	r6
c0de1d5a:	4683      	mov	fp, r0
c0de1d5c:	460f      	mov	r7, r1
c0de1d5e:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1d62:	47b0      	blx	r6
c0de1d64:	e9c4 0100 	strd	r0, r1, [r4]
c0de1d68:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1d6c:	47b0      	blx	r6
c0de1d6e:	f104 0208 	add.w	r2, r4, #8
c0de1d72:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1d76:	f104 0014 	add.w	r0, r4, #20
c0de1d7a:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1d7e:	4628      	mov	r0, r5
c0de1d80:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1d84:	00000341 	.word	0x00000341

c0de1d88 <zkn_prv2pub>:
c0de1d88:	b570      	push	{r4, r5, r6, lr}
c0de1d8a:	b092      	sub	sp, #72	@ 0x48
c0de1d8c:	4614      	mov	r4, r2
c0de1d8e:	6802      	ldr	r2, [r0, #0]
c0de1d90:	ae02      	add	r6, sp, #8
c0de1d92:	4605      	mov	r5, r0
c0de1d94:	4608      	mov	r0, r1
c0de1d96:	4631      	mov	r1, r6
c0de1d98:	f7ff ffc0 	bl	c0de1d1c <zkn_prv_hash>
c0de1d9c:	2000      	movs	r0, #0
c0de1d9e:	2100      	movs	r1, #0
c0de1da0:	2820      	cmp	r0, #32
c0de1da2:	d009      	beq.n	c0de1db8 <zkn_prv2pub+0x30>
c0de1da4:	5c32      	ldrb	r2, [r6, r0]
c0de1da6:	0149      	lsls	r1, r1, #5
c0de1da8:	0613      	lsls	r3, r2, #24
c0de1daa:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1dae:	5431      	strb	r1, [r6, r0]
c0de1db0:	f002 0107 	and.w	r1, r2, #7
c0de1db4:	3001      	adds	r0, #1
c0de1db6:	e7f3      	b.n	c0de1da0 <zkn_prv2pub+0x18>
c0de1db8:	4629      	mov	r1, r5
c0de1dba:	4628      	mov	r0, r5
c0de1dbc:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1dc0:	9400      	str	r4, [sp, #0]
c0de1dc2:	aa02      	add	r2, sp, #8
c0de1dc4:	f000 ffc8 	bl	c0de2d58 <tEdwards_scalarMul>
c0de1dc8:	b918      	cbnz	r0, c0de1dd2 <zkn_prv2pub+0x4a>
c0de1dca:	4628      	mov	r0, r5
c0de1dcc:	4621      	mov	r1, r4
c0de1dce:	f000 fefe 	bl	c0de2bce <tEdwards_normalize>
c0de1dd2:	b012      	add	sp, #72	@ 0x48
c0de1dd4:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1dd8 <EddsaPoseidon_Sign_final>:
c0de1dd8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ddc:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1de0:	4605      	mov	r5, r0
c0de1de2:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1de4:	2820      	cmp	r0, #32
c0de1de6:	d118      	bne.n	c0de1e1a <EddsaPoseidon_Sign_final+0x42>
c0de1de8:	460f      	mov	r7, r1
c0de1dea:	a982      	add	r1, sp, #520	@ 0x208
c0de1dec:	4628      	mov	r0, r5
c0de1dee:	461e      	mov	r6, r3
c0de1df0:	4692      	mov	sl, r2
c0de1df2:	f000 fbbb 	bl	c0de256c <tEdwards_alloc>
c0de1df6:	b988      	cbnz	r0, c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1df8:	682a      	ldr	r2, [r5, #0]
c0de1dfa:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1dfc:	4638      	mov	r0, r7
c0de1dfe:	4621      	mov	r1, r4
c0de1e00:	f7ff ff8c 	bl	c0de1d1c <zkn_prv_hash>
c0de1e04:	b950      	cbnz	r0, c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e06:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1e0a:	2000      	movs	r0, #0
c0de1e0c:	a95a      	add	r1, sp, #360	@ 0x168
c0de1e0e:	2820      	cmp	r0, #32
c0de1e10:	d008      	beq.n	c0de1e24 <EddsaPoseidon_Sign_final+0x4c>
c0de1e12:	5c22      	ldrb	r2, [r4, r0]
c0de1e14:	540a      	strb	r2, [r1, r0]
c0de1e16:	3001      	adds	r0, #1
c0de1e18:	e7f9      	b.n	c0de1e0e <EddsaPoseidon_Sign_final+0x36>
c0de1e1a:	489b      	ldr	r0, [pc, #620]	@ (c0de2088 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1e1c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1e20:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1e24:	a812      	add	r0, sp, #72	@ 0x48
c0de1e26:	2109      	movs	r1, #9
c0de1e28:	2240      	movs	r2, #64	@ 0x40
c0de1e2a:	f004 ffcb 	bl	c0de6dc4 <cx_hash_init_ex>
c0de1e2e:	2800      	cmp	r0, #0
c0de1e30:	d1f4      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e32:	f104 0120 	add.w	r1, r4, #32
c0de1e36:	a812      	add	r0, sp, #72	@ 0x48
c0de1e38:	2220      	movs	r2, #32
c0de1e3a:	f004 ffc8 	bl	c0de6dce <cx_hash_update>
c0de1e3e:	2800      	cmp	r0, #0
c0de1e40:	d1ec      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e42:	a812      	add	r0, sp, #72	@ 0x48
c0de1e44:	4631      	mov	r1, r6
c0de1e46:	2220      	movs	r2, #32
c0de1e48:	f004 ffc1 	bl	c0de6dce <cx_hash_update>
c0de1e4c:	2800      	cmp	r0, #0
c0de1e4e:	d1e5      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e50:	a812      	add	r0, sp, #72	@ 0x48
c0de1e52:	ac62      	add	r4, sp, #392	@ 0x188
c0de1e54:	4621      	mov	r1, r4
c0de1e56:	f004 ffb0 	bl	c0de6dba <cx_hash_final>
c0de1e5a:	2800      	cmp	r0, #0
c0de1e5c:	d1de      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e5e:	203f      	movs	r0, #63	@ 0x3f
c0de1e60:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1e62:	1c42      	adds	r2, r0, #1
c0de1e64:	d004      	beq.n	c0de1e70 <EddsaPoseidon_Sign_final+0x98>
c0de1e66:	5c22      	ldrb	r2, [r4, r0]
c0de1e68:	3801      	subs	r0, #1
c0de1e6a:	f801 2b01 	strb.w	r2, [r1], #1
c0de1e6e:	e7f8      	b.n	c0de1e62 <EddsaPoseidon_Sign_final+0x8a>
c0de1e70:	a889      	add	r0, sp, #548	@ 0x224
c0de1e72:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1e74:	2140      	movs	r1, #64	@ 0x40
c0de1e76:	2340      	movs	r3, #64	@ 0x40
c0de1e78:	f005 fa1a 	bl	c0de72b0 <cx_bn_alloc_init>
c0de1e7c:	2800      	cmp	r0, #0
c0de1e7e:	d1cd      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e80:	a887      	add	r0, sp, #540	@ 0x21c
c0de1e82:	2140      	movs	r1, #64	@ 0x40
c0de1e84:	f005 fa0a 	bl	c0de729c <cx_bn_alloc>
c0de1e88:	2800      	cmp	r0, #0
c0de1e8a:	d1c7      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1e8c:	497f      	ldr	r1, [pc, #508]	@ (c0de208c <EddsaPoseidon_Sign_final+0x2b4>)
c0de1e8e:	f10d 0808 	add.w	r8, sp, #8
c0de1e92:	2240      	movs	r2, #64	@ 0x40
c0de1e94:	4640      	mov	r0, r8
c0de1e96:	4479      	add	r1, pc
c0de1e98:	f005 fcb6 	bl	c0de7808 <__aeabi_memcpy>
c0de1e9c:	a888      	add	r0, sp, #544	@ 0x220
c0de1e9e:	2140      	movs	r1, #64	@ 0x40
c0de1ea0:	4642      	mov	r2, r8
c0de1ea2:	2340      	movs	r3, #64	@ 0x40
c0de1ea4:	f005 fa04 	bl	c0de72b0 <cx_bn_alloc_init>
c0de1ea8:	2800      	cmp	r0, #0
c0de1eaa:	d1b7      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1eac:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1eae:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1eb2:	f005 fa91 	bl	c0de73d8 <cx_bn_reduce>
c0de1eb6:	2800      	cmp	r0, #0
c0de1eb8:	d1b0      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1eba:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1ebc:	f105 010c 	add.w	r1, r5, #12
c0de1ec0:	ab82      	add	r3, sp, #520	@ 0x208
c0de1ec2:	4628      	mov	r0, r5
c0de1ec4:	f000 fee2 	bl	c0de2c8c <tEdwards_scalarMul_bn>
c0de1ec8:	2800      	cmp	r0, #0
c0de1eca:	d1a7      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1ecc:	a982      	add	r1, sp, #520	@ 0x208
c0de1ece:	4628      	mov	r0, r5
c0de1ed0:	f000 fe7d 	bl	c0de2bce <tEdwards_normalize>
c0de1ed4:	2800      	cmp	r0, #0
c0de1ed6:	d1a1      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1ed8:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1eda:	a952      	add	r1, sp, #328	@ 0x148
c0de1edc:	f000 f8e0 	bl	c0de20a0 <OUTLINED_FUNCTION_1>
c0de1ee0:	2800      	cmp	r0, #0
c0de1ee2:	d19b      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1ee4:	a888      	add	r0, sp, #544	@ 0x220
c0de1ee6:	f005 f9ef 	bl	c0de72c8 <cx_bn_destroy>
c0de1eea:	2800      	cmp	r0, #0
c0de1eec:	d196      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1eee:	a889      	add	r0, sp, #548	@ 0x224
c0de1ef0:	f005 f9ea 	bl	c0de72c8 <cx_bn_destroy>
c0de1ef4:	2800      	cmp	r0, #0
c0de1ef6:	d191      	bne.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1ef8:	a887      	add	r0, sp, #540	@ 0x21c
c0de1efa:	f005 f9e5 	bl	c0de72c8 <cx_bn_destroy>
c0de1efe:	2800      	cmp	r0, #0
c0de1f00:	f47f af8c 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f04:	4628      	mov	r0, r5
c0de1f06:	f000 fde0 	bl	c0de2aca <tEdwards_Curve_partial_destroy>
c0de1f0a:	2800      	cmp	r0, #0
c0de1f0c:	f47f af86 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f10:	f105 0420 	add.w	r4, r5, #32
c0de1f14:	a88a      	add	r0, sp, #552	@ 0x228
c0de1f16:	2105      	movs	r1, #5
c0de1f18:	2205      	movs	r2, #5
c0de1f1a:	4623      	mov	r3, r4
c0de1f1c:	f001 f842 	bl	c0de2fa4 <Poseidon_alloc_init>
c0de1f20:	2800      	cmp	r0, #0
c0de1f22:	f47f af7b 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f26:	201f      	movs	r0, #31
c0de1f28:	a962      	add	r1, sp, #392	@ 0x188
c0de1f2a:	1c42      	adds	r2, r0, #1
c0de1f2c:	d004      	beq.n	c0de1f38 <EddsaPoseidon_Sign_final+0x160>
c0de1f2e:	5c32      	ldrb	r2, [r6, r0]
c0de1f30:	3801      	subs	r0, #1
c0de1f32:	f801 2b01 	strb.w	r2, [r1], #1
c0de1f36:	e7f8      	b.n	c0de1f2a <EddsaPoseidon_Sign_final+0x152>
c0de1f38:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1f3a:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1f3c:	f005 f9e4 	bl	c0de7308 <cx_bn_copy>
c0de1f40:	2800      	cmp	r0, #0
c0de1f42:	f47f af6b 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f46:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1f48:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1f4a:	f005 f9dd 	bl	c0de7308 <cx_bn_copy>
c0de1f4e:	2800      	cmp	r0, #0
c0de1f50:	f47f af64 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f54:	f8da 1000 	ldr.w	r1, [sl]
c0de1f58:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1f5a:	f005 f9d5 	bl	c0de7308 <cx_bn_copy>
c0de1f5e:	2800      	cmp	r0, #0
c0de1f60:	f47f af5c 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f64:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1f68:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1f6a:	f005 f9cd 	bl	c0de7308 <cx_bn_copy>
c0de1f6e:	2800      	cmp	r0, #0
c0de1f70:	f47f af54 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f74:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1f76:	a962      	add	r1, sp, #392	@ 0x188
c0de1f78:	2220      	movs	r2, #32
c0de1f7a:	f005 f9b9 	bl	c0de72f0 <cx_bn_init>
c0de1f7e:	2800      	cmp	r0, #0
c0de1f80:	f47f af4c 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f84:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1f86:	4622      	mov	r2, r4
c0de1f88:	4601      	mov	r1, r0
c0de1f8a:	f005 fa5b 	bl	c0de7444 <cx_mont_to_montgomery>
c0de1f8e:	2800      	cmp	r0, #0
c0de1f90:	f47f af44 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1f94:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1f96:	f000 f87f 	bl	c0de2098 <OUTLINED_FUNCTION_0>
c0de1f9a:	2800      	cmp	r0, #0
c0de1f9c:	f47f af3e 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1fa0:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1fa2:	f000 f879 	bl	c0de2098 <OUTLINED_FUNCTION_0>
c0de1fa6:	2800      	cmp	r0, #0
c0de1fa8:	f47f af38 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1fac:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1fae:	4659      	mov	r1, fp
c0de1fb0:	f000 f876 	bl	c0de20a0 <OUTLINED_FUNCTION_1>
c0de1fb4:	2800      	cmp	r0, #0
c0de1fb6:	f47f af31 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1fba:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1fbc:	f10b 0120 	add.w	r1, fp, #32
c0de1fc0:	f000 f86e 	bl	c0de20a0 <OUTLINED_FUNCTION_1>
c0de1fc4:	2800      	cmp	r0, #0
c0de1fc6:	f47f af29 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1fca:	a982      	add	r1, sp, #520	@ 0x208
c0de1fcc:	4628      	mov	r0, r5
c0de1fce:	f000 fae2 	bl	c0de2596 <tEdwards_destroy>
c0de1fd2:	2800      	cmp	r0, #0
c0de1fd4:	f47f af22 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1fd8:	a885      	add	r0, sp, #532	@ 0x214
c0de1fda:	2120      	movs	r1, #32
c0de1fdc:	f005 f95e 	bl	c0de729c <cx_bn_alloc>
c0de1fe0:	2800      	cmp	r0, #0
c0de1fe2:	f47f af1b 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1fe6:	a88a      	add	r0, sp, #552	@ 0x228
c0de1fe8:	aa85      	add	r2, sp, #532	@ 0x214
c0de1fea:	2100      	movs	r1, #0
c0de1fec:	2301      	movs	r3, #1
c0de1fee:	f001 f83f 	bl	c0de3070 <Poseidon>
c0de1ff2:	2800      	cmp	r0, #0
c0de1ff4:	f47f af12 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de1ff8:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1ffa:	f000 f84d 	bl	c0de2098 <OUTLINED_FUNCTION_0>
c0de1ffe:	2800      	cmp	r0, #0
c0de2000:	f47f af0c 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de2004:	a886      	add	r0, sp, #536	@ 0x218
c0de2006:	aa5a      	add	r2, sp, #360	@ 0x168
c0de2008:	2120      	movs	r1, #32
c0de200a:	2320      	movs	r3, #32
c0de200c:	f005 f950 	bl	c0de72b0 <cx_bn_alloc_init>
c0de2010:	2800      	cmp	r0, #0
c0de2012:	f47f af03 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de2016:	a801      	add	r0, sp, #4
c0de2018:	2120      	movs	r1, #32
c0de201a:	f005 f93f 	bl	c0de729c <cx_bn_alloc>
c0de201e:	2800      	cmp	r0, #0
c0de2020:	f47f aefc 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de2024:	f108 0220 	add.w	r2, r8, #32
c0de2028:	a888      	add	r0, sp, #544	@ 0x220
c0de202a:	2120      	movs	r1, #32
c0de202c:	2320      	movs	r3, #32
c0de202e:	f005 f93f 	bl	c0de72b0 <cx_bn_alloc_init>
c0de2032:	2800      	cmp	r0, #0
c0de2034:	f47f aef2 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de2038:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de203a:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de203e:	9801      	ldr	r0, [sp, #4]
c0de2040:	f005 f9be 	bl	c0de73c0 <cx_bn_mod_mul>
c0de2044:	2800      	cmp	r0, #0
c0de2046:	f47f aee9 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de204a:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de204c:	a952      	add	r1, sp, #328	@ 0x148
c0de204e:	2220      	movs	r2, #32
c0de2050:	f005 f94e 	bl	c0de72f0 <cx_bn_init>
c0de2054:	2800      	cmp	r0, #0
c0de2056:	f47f aee1 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de205a:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de205c:	9a01      	ldr	r2, [sp, #4]
c0de205e:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de2062:	f005 f995 	bl	c0de7390 <cx_bn_mod_add>
c0de2066:	2800      	cmp	r0, #0
c0de2068:	f47f aed8 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de206c:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de206e:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de2072:	f005 f9b1 	bl	c0de73d8 <cx_bn_reduce>
c0de2076:	2800      	cmp	r0, #0
c0de2078:	f47f aed0 	bne.w	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de207c:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de207e:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de2082:	f000 f80d 	bl	c0de20a0 <OUTLINED_FUNCTION_1>
c0de2086:	e6c9      	b.n	c0de1e1c <EddsaPoseidon_Sign_final+0x44>
c0de2088:	5a4b4e03 	.word	0x5a4b4e03
c0de208c:	00006912 	.word	0x00006912

c0de2090 <rev64>:
c0de2090:	ba0a      	rev	r2, r1
c0de2092:	ba01      	rev	r1, r0
c0de2094:	4610      	mov	r0, r2
c0de2096:	4770      	bx	lr

c0de2098 <OUTLINED_FUNCTION_0>:
c0de2098:	4622      	mov	r2, r4
c0de209a:	4601      	mov	r1, r0
c0de209c:	f005 b9de 	b.w	c0de745c <cx_mont_from_montgomery>

c0de20a0 <OUTLINED_FUNCTION_1>:
c0de20a0:	2220      	movs	r2, #32
c0de20a2:	f005 b945 	b.w	c0de7330 <cx_bn_export>

c0de20a6 <zkn_frost_interpolate>:
c0de20a6:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de20aa:	b085      	sub	sp, #20
c0de20ac:	460e      	mov	r6, r1
c0de20ae:	4607      	mov	r7, r0
c0de20b0:	a803      	add	r0, sp, #12
c0de20b2:	2120      	movs	r1, #32
c0de20b4:	f000 fa50 	bl	c0de2558 <OUTLINED_FUNCTION_2>
c0de20b8:	b988      	cbnz	r0, c0de20de <zkn_frost_interpolate+0x38>
c0de20ba:	a802      	add	r0, sp, #8
c0de20bc:	f000 fa53 	bl	c0de2566 <OUTLINED_FUNCTION_4>
c0de20c0:	b968      	cbnz	r0, c0de20de <zkn_frost_interpolate+0x38>
c0de20c2:	a801      	add	r0, sp, #4
c0de20c4:	f000 fa4f 	bl	c0de2566 <OUTLINED_FUNCTION_4>
c0de20c8:	b948      	cbnz	r0, c0de20de <zkn_frost_interpolate+0x38>
c0de20ca:	9803      	ldr	r0, [sp, #12]
c0de20cc:	2101      	movs	r1, #1
c0de20ce:	f005 f925 	bl	c0de731c <cx_bn_set_u32>
c0de20d2:	b920      	cbnz	r0, c0de20de <zkn_frost_interpolate+0x38>
c0de20d4:	9802      	ldr	r0, [sp, #8]
c0de20d6:	2101      	movs	r1, #1
c0de20d8:	f005 f920 	bl	c0de731c <cx_bn_set_u32>
c0de20dc:	b110      	cbz	r0, c0de20e4 <zkn_frost_interpolate+0x3e>
c0de20de:	b005      	add	sp, #20
c0de20e0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de20e4:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de20e8:	f10d 0a10 	add.w	sl, sp, #16
c0de20ec:	b31e      	cbz	r6, c0de2136 <zkn_frost_interpolate+0x90>
c0de20ee:	6838      	ldr	r0, [r7, #0]
c0de20f0:	4629      	mov	r1, r5
c0de20f2:	4652      	mov	r2, sl
c0de20f4:	f005 f928 	bl	c0de7348 <cx_bn_cmp>
c0de20f8:	2800      	cmp	r0, #0
c0de20fa:	d1f0      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de20fc:	9804      	ldr	r0, [sp, #16]
c0de20fe:	b1b8      	cbz	r0, c0de2130 <zkn_frost_interpolate+0x8a>
c0de2100:	9802      	ldr	r0, [sp, #8]
c0de2102:	683a      	ldr	r2, [r7, #0]
c0de2104:	4623      	mov	r3, r4
c0de2106:	4601      	mov	r1, r0
c0de2108:	f005 f95a 	bl	c0de73c0 <cx_bn_mod_mul>
c0de210c:	2800      	cmp	r0, #0
c0de210e:	d1e6      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de2110:	6839      	ldr	r1, [r7, #0]
c0de2112:	9801      	ldr	r0, [sp, #4]
c0de2114:	462a      	mov	r2, r5
c0de2116:	4623      	mov	r3, r4
c0de2118:	f005 f946 	bl	c0de73a8 <cx_bn_mod_sub>
c0de211c:	2800      	cmp	r0, #0
c0de211e:	d1de      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de2120:	9803      	ldr	r0, [sp, #12]
c0de2122:	9a01      	ldr	r2, [sp, #4]
c0de2124:	4623      	mov	r3, r4
c0de2126:	4601      	mov	r1, r0
c0de2128:	f005 f94a 	bl	c0de73c0 <cx_bn_mod_mul>
c0de212c:	2800      	cmp	r0, #0
c0de212e:	d1d6      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de2130:	3704      	adds	r7, #4
c0de2132:	3e01      	subs	r6, #1
c0de2134:	e7da      	b.n	c0de20ec <zkn_frost_interpolate+0x46>
c0de2136:	9903      	ldr	r1, [sp, #12]
c0de2138:	4640      	mov	r0, r8
c0de213a:	4622      	mov	r2, r4
c0de213c:	f005 f958 	bl	c0de73f0 <cx_bn_mod_invert_nprime>
c0de2140:	2800      	cmp	r0, #0
c0de2142:	d1cc      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de2144:	9a02      	ldr	r2, [sp, #8]
c0de2146:	4640      	mov	r0, r8
c0de2148:	4641      	mov	r1, r8
c0de214a:	4623      	mov	r3, r4
c0de214c:	f005 f938 	bl	c0de73c0 <cx_bn_mod_mul>
c0de2150:	2800      	cmp	r0, #0
c0de2152:	d1c4      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de2154:	a803      	add	r0, sp, #12
c0de2156:	f005 f8b7 	bl	c0de72c8 <cx_bn_destroy>
c0de215a:	2800      	cmp	r0, #0
c0de215c:	d1bf      	bne.n	c0de20de <zkn_frost_interpolate+0x38>
c0de215e:	a802      	add	r0, sp, #8
c0de2160:	f005 f8b2 	bl	c0de72c8 <cx_bn_destroy>
c0de2164:	e7bb      	b.n	c0de20de <zkn_frost_interpolate+0x38>

c0de2166 <zkn_frost_interpolate_secrets>:
c0de2166:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de216a:	460f      	mov	r7, r1
c0de216c:	4606      	mov	r6, r0
c0de216e:	a802      	add	r0, sp, #8
c0de2170:	2120      	movs	r1, #32
c0de2172:	461c      	mov	r4, r3
c0de2174:	4692      	mov	sl, r2
c0de2176:	f005 f891 	bl	c0de729c <cx_bn_alloc>
c0de217a:	b108      	cbz	r0, c0de2180 <zkn_frost_interpolate_secrets+0x1a>
c0de217c:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de2180:	a801      	add	r0, sp, #4
c0de2182:	f000 f9f0 	bl	c0de2566 <OUTLINED_FUNCTION_4>
c0de2186:	2800      	cmp	r0, #0
c0de2188:	d1f8      	bne.n	c0de217c <zkn_frost_interpolate_secrets+0x16>
c0de218a:	9802      	ldr	r0, [sp, #8]
c0de218c:	2100      	movs	r1, #0
c0de218e:	f005 f8c5 	bl	c0de731c <cx_bn_set_u32>
c0de2192:	2800      	cmp	r0, #0
c0de2194:	d1f2      	bne.n	c0de217c <zkn_frost_interpolate_secrets+0x16>
c0de2196:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de219a:	2500      	movs	r5, #0
c0de219c:	42ac      	cmp	r4, r5
c0de219e:	d01d      	beq.n	c0de21dc <zkn_frost_interpolate_secrets+0x76>
c0de21a0:	9801      	ldr	r0, [sp, #4]
c0de21a2:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de21a6:	68b3      	ldr	r3, [r6, #8]
c0de21a8:	4621      	mov	r1, r4
c0de21aa:	9000      	str	r0, [sp, #0]
c0de21ac:	4638      	mov	r0, r7
c0de21ae:	f7ff ff7a 	bl	c0de20a6 <zkn_frost_interpolate>
c0de21b2:	2800      	cmp	r0, #0
c0de21b4:	d1e2      	bne.n	c0de217c <zkn_frost_interpolate_secrets+0x16>
c0de21b6:	9801      	ldr	r0, [sp, #4]
c0de21b8:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de21bc:	68b3      	ldr	r3, [r6, #8]
c0de21be:	4601      	mov	r1, r0
c0de21c0:	f005 f8fe 	bl	c0de73c0 <cx_bn_mod_mul>
c0de21c4:	2800      	cmp	r0, #0
c0de21c6:	d1d9      	bne.n	c0de217c <zkn_frost_interpolate_secrets+0x16>
c0de21c8:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de21cc:	68b3      	ldr	r3, [r6, #8]
c0de21ce:	4601      	mov	r1, r0
c0de21d0:	f005 f8de 	bl	c0de7390 <cx_bn_mod_add>
c0de21d4:	3501      	adds	r5, #1
c0de21d6:	2800      	cmp	r0, #0
c0de21d8:	d0e0      	beq.n	c0de219c <zkn_frost_interpolate_secrets+0x36>
c0de21da:	e7cf      	b.n	c0de217c <zkn_frost_interpolate_secrets+0x16>
c0de21dc:	68b2      	ldr	r2, [r6, #8]
c0de21de:	9902      	ldr	r1, [sp, #8]
c0de21e0:	4640      	mov	r0, r8
c0de21e2:	f005 f8f9 	bl	c0de73d8 <cx_bn_reduce>
c0de21e6:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de21ea <zkn_evalshare>:
c0de21ea:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de21ee:	460e      	mov	r6, r1
c0de21f0:	6801      	ldr	r1, [r0, #0]
c0de21f2:	4607      	mov	r7, r0
c0de21f4:	a801      	add	r0, sp, #4
c0de21f6:	f000 f9af 	bl	c0de2558 <OUTLINED_FUNCTION_2>
c0de21fa:	b108      	cbz	r0, c0de2200 <zkn_evalshare+0x16>
c0de21fc:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2200:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2204:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2208:	4640      	mov	r0, r8
c0de220a:	f005 f87d 	bl	c0de7308 <cx_bn_copy>
c0de220e:	2800      	cmp	r0, #0
c0de2210:	d1f4      	bne.n	c0de21fc <zkn_evalshare+0x12>
c0de2212:	3e04      	subs	r6, #4
c0de2214:	68bb      	ldr	r3, [r7, #8]
c0de2216:	9801      	ldr	r0, [sp, #4]
c0de2218:	4641      	mov	r1, r8
c0de221a:	b17d      	cbz	r5, c0de223c <zkn_evalshare+0x52>
c0de221c:	4622      	mov	r2, r4
c0de221e:	f005 f8cf 	bl	c0de73c0 <cx_bn_mod_mul>
c0de2222:	2800      	cmp	r0, #0
c0de2224:	d1ea      	bne.n	c0de21fc <zkn_evalshare+0x12>
c0de2226:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de222a:	68bb      	ldr	r3, [r7, #8]
c0de222c:	9901      	ldr	r1, [sp, #4]
c0de222e:	4640      	mov	r0, r8
c0de2230:	f005 f8ae 	bl	c0de7390 <cx_bn_mod_add>
c0de2234:	3d01      	subs	r5, #1
c0de2236:	2800      	cmp	r0, #0
c0de2238:	d0ec      	beq.n	c0de2214 <zkn_evalshare+0x2a>
c0de223a:	e7df      	b.n	c0de21fc <zkn_evalshare+0x12>
c0de223c:	461a      	mov	r2, r3
c0de223e:	f005 f8cb 	bl	c0de73d8 <cx_bn_reduce>
c0de2242:	2800      	cmp	r0, #0
c0de2244:	d1da      	bne.n	c0de21fc <zkn_evalshare+0x12>
c0de2246:	9901      	ldr	r1, [sp, #4]
c0de2248:	4640      	mov	r0, r8
c0de224a:	f005 f85d 	bl	c0de7308 <cx_bn_copy>
c0de224e:	2800      	cmp	r0, #0
c0de2250:	d1d4      	bne.n	c0de21fc <zkn_evalshare+0x12>
c0de2252:	a801      	add	r0, sp, #4
c0de2254:	f005 f838 	bl	c0de72c8 <cx_bn_destroy>
c0de2258:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de225c <zkn_encode_group_commitmentHash>:
c0de225c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2260:	b0d6      	sub	sp, #344	@ 0x158
c0de2262:	4606      	mov	r6, r0
c0de2264:	a816      	add	r0, sp, #88	@ 0x58
c0de2266:	461c      	mov	r4, r3
c0de2268:	4615      	mov	r5, r2
c0de226a:	460f      	mov	r7, r1
c0de226c:	f001 f88a 	bl	c0de3384 <zkn_frost_H5_init>
c0de2270:	b110      	cbz	r0, c0de2278 <zkn_encode_group_commitmentHash+0x1c>
c0de2272:	b056      	add	sp, #344	@ 0x158
c0de2274:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2278:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de227c:	9401      	str	r4, [sp, #4]
c0de227e:	a806      	add	r0, sp, #24
c0de2280:	f04f 0a00 	mov.w	sl, #0
c0de2284:	f04f 0b02 	mov.w	fp, #2
c0de2288:	2604      	movs	r6, #4
c0de228a:	2400      	movs	r4, #0
c0de228c:	9502      	str	r5, [sp, #8]
c0de228e:	f1a0 0801 	sub.w	r8, r0, #1
c0de2292:	42ac      	cmp	r4, r5
c0de2294:	d058      	beq.n	c0de2348 <zkn_encode_group_commitmentHash+0xec>
c0de2296:	9805      	ldr	r0, [sp, #20]
c0de2298:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de229c:	9103      	str	r1, [sp, #12]
c0de229e:	6805      	ldr	r5, [r0, #0]
c0de22a0:	9804      	ldr	r0, [sp, #16]
c0de22a2:	fb05 000a 	mla	r0, r5, sl, r0
c0de22a6:	4629      	mov	r1, r5
c0de22a8:	b129      	cbz	r1, c0de22b6 <zkn_encode_group_commitmentHash+0x5a>
c0de22aa:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de22ae:	f808 2001 	strb.w	r2, [r8, r1]
c0de22b2:	3901      	subs	r1, #1
c0de22b4:	e7f8      	b.n	c0de22a8 <zkn_encode_group_commitmentHash+0x4c>
c0de22b6:	a816      	add	r0, sp, #88	@ 0x58
c0de22b8:	a906      	add	r1, sp, #24
c0de22ba:	462a      	mov	r2, r5
c0de22bc:	f001 f87c 	bl	c0de33b8 <zkn_frost_hash_update>
c0de22c0:	2800      	cmp	r0, #0
c0de22c2:	d1d6      	bne.n	c0de2272 <zkn_encode_group_commitmentHash+0x16>
c0de22c4:	9803      	ldr	r0, [sp, #12]
c0de22c6:	9f04      	ldr	r7, [sp, #16]
c0de22c8:	1c43      	adds	r3, r0, #1
c0de22ca:	9805      	ldr	r0, [sp, #20]
c0de22cc:	fb05 710b 	mla	r1, r5, fp, r7
c0de22d0:	6802      	ldr	r2, [r0, #0]
c0de22d2:	1e50      	subs	r0, r2, #1
c0de22d4:	4615      	mov	r5, r2
c0de22d6:	fb02 0303 	mla	r3, r2, r3, r0
c0de22da:	5cfb      	ldrb	r3, [r7, r3]
c0de22dc:	b12d      	cbz	r5, c0de22ea <zkn_encode_group_commitmentHash+0x8e>
c0de22de:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de22e2:	f808 7005 	strb.w	r7, [r8, r5]
c0de22e6:	3d01      	subs	r5, #1
c0de22e8:	e7f8      	b.n	c0de22dc <zkn_encode_group_commitmentHash+0x80>
c0de22ea:	a906      	add	r1, sp, #24
c0de22ec:	5c0d      	ldrb	r5, [r1, r0]
c0de22ee:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de22f2:	540b      	strb	r3, [r1, r0]
c0de22f4:	a816      	add	r0, sp, #88	@ 0x58
c0de22f6:	f001 f85f 	bl	c0de33b8 <zkn_frost_hash_update>
c0de22fa:	2800      	cmp	r0, #0
c0de22fc:	d1b9      	bne.n	c0de2272 <zkn_encode_group_commitmentHash+0x16>
c0de22fe:	9805      	ldr	r0, [sp, #20]
c0de2300:	9d04      	ldr	r5, [sp, #16]
c0de2302:	6802      	ldr	r2, [r0, #0]
c0de2304:	9803      	ldr	r0, [sp, #12]
c0de2306:	1cc3      	adds	r3, r0, #3
c0de2308:	1e50      	subs	r0, r2, #1
c0de230a:	fb02 5106 	mla	r1, r2, r6, r5
c0de230e:	fb02 0303 	mla	r3, r2, r3, r0
c0de2312:	5ceb      	ldrb	r3, [r5, r3]
c0de2314:	4615      	mov	r5, r2
c0de2316:	b12d      	cbz	r5, c0de2324 <zkn_encode_group_commitmentHash+0xc8>
c0de2318:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de231c:	f808 7005 	strb.w	r7, [r8, r5]
c0de2320:	3d01      	subs	r5, #1
c0de2322:	e7f8      	b.n	c0de2316 <zkn_encode_group_commitmentHash+0xba>
c0de2324:	a906      	add	r1, sp, #24
c0de2326:	5c0d      	ldrb	r5, [r1, r0]
c0de2328:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de232c:	540b      	strb	r3, [r1, r0]
c0de232e:	a816      	add	r0, sp, #88	@ 0x58
c0de2330:	f001 f842 	bl	c0de33b8 <zkn_frost_hash_update>
c0de2334:	3605      	adds	r6, #5
c0de2336:	3401      	adds	r4, #1
c0de2338:	9d02      	ldr	r5, [sp, #8]
c0de233a:	f10b 0b05 	add.w	fp, fp, #5
c0de233e:	f10a 0a05 	add.w	sl, sl, #5
c0de2342:	2800      	cmp	r0, #0
c0de2344:	d0a5      	beq.n	c0de2292 <zkn_encode_group_commitmentHash+0x36>
c0de2346:	e794      	b.n	c0de2272 <zkn_encode_group_commitmentHash+0x16>
c0de2348:	9805      	ldr	r0, [sp, #20]
c0de234a:	6881      	ldr	r1, [r0, #8]
c0de234c:	a816      	add	r0, sp, #88	@ 0x58
c0de234e:	9a01      	ldr	r2, [sp, #4]
c0de2350:	f001 f834 	bl	c0de33bc <zkn_frost_hash_final>
c0de2354:	e78d      	b.n	c0de2272 <zkn_encode_group_commitmentHash+0x16>

c0de2356 <zkn_compute_group_commitment>:
c0de2356:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de235a:	b088      	sub	sp, #32
c0de235c:	460d      	mov	r5, r1
c0de235e:	a905      	add	r1, sp, #20
c0de2360:	461f      	mov	r7, r3
c0de2362:	4692      	mov	sl, r2
c0de2364:	4604      	mov	r4, r0
c0de2366:	f000 f901 	bl	c0de256c <tEdwards_alloc>
c0de236a:	b948      	cbnz	r0, c0de2380 <zkn_compute_group_commitment+0x2a>
c0de236c:	a902      	add	r1, sp, #8
c0de236e:	4620      	mov	r0, r4
c0de2370:	f000 f8fc 	bl	c0de256c <tEdwards_alloc>
c0de2374:	b920      	cbnz	r0, c0de2380 <zkn_compute_group_commitment+0x2a>
c0de2376:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2378:	4620      	mov	r0, r4
c0de237a:	f000 fbef 	bl	c0de2b5c <tEdwards_SetNeutral>
c0de237e:	b110      	cbz	r0, c0de2386 <zkn_compute_group_commitment+0x30>
c0de2380:	b008      	add	sp, #32
c0de2382:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2386:	ae05      	add	r6, sp, #20
c0de2388:	f04f 0800 	mov.w	r8, #0
c0de238c:	f04f 0b04 	mov.w	fp, #4
c0de2390:	9501      	str	r5, [sp, #4]
c0de2392:	4547      	cmp	r7, r8
c0de2394:	d041      	beq.n	c0de241a <zkn_compute_group_commitment+0xc4>
c0de2396:	6822      	ldr	r2, [r4, #0]
c0de2398:	f1ab 0003 	sub.w	r0, fp, #3
c0de239c:	4633      	mov	r3, r6
c0de239e:	fb02 5100 	mla	r1, r2, r0, r5
c0de23a2:	f1ab 0002 	sub.w	r0, fp, #2
c0de23a6:	fb02 5200 	mla	r2, r2, r0, r5
c0de23aa:	4620      	mov	r0, r4
c0de23ac:	f000 fb4e 	bl	c0de2a4c <tEdwards_init>
c0de23b0:	2800      	cmp	r0, #0
c0de23b2:	d1e5      	bne.n	c0de2380 <zkn_compute_group_commitment+0x2a>
c0de23b4:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de23b6:	4620      	mov	r0, r4
c0de23b8:	4632      	mov	r2, r6
c0de23ba:	460b      	mov	r3, r1
c0de23bc:	f000 f967 	bl	c0de268e <tEdwards_add>
c0de23c0:	2800      	cmp	r0, #0
c0de23c2:	d1dd      	bne.n	c0de2380 <zkn_compute_group_commitment+0x2a>
c0de23c4:	6822      	ldr	r2, [r4, #0]
c0de23c6:	f1ab 0001 	sub.w	r0, fp, #1
c0de23ca:	4633      	mov	r3, r6
c0de23cc:	fb02 5100 	mla	r1, r2, r0, r5
c0de23d0:	fb02 520b 	mla	r2, r2, fp, r5
c0de23d4:	4620      	mov	r0, r4
c0de23d6:	f000 fb39 	bl	c0de2a4c <tEdwards_init>
c0de23da:	2800      	cmp	r0, #0
c0de23dc:	d1d0      	bne.n	c0de2380 <zkn_compute_group_commitment+0x2a>
c0de23de:	6823      	ldr	r3, [r4, #0]
c0de23e0:	4650      	mov	r0, sl
c0de23e2:	f10d 0a08 	add.w	sl, sp, #8
c0de23e6:	4631      	mov	r1, r6
c0de23e8:	4605      	mov	r5, r0
c0de23ea:	f8cd a000 	str.w	sl, [sp]
c0de23ee:	fb03 0208 	mla	r2, r3, r8, r0
c0de23f2:	4620      	mov	r0, r4
c0de23f4:	f000 fcb0 	bl	c0de2d58 <tEdwards_scalarMul>
c0de23f8:	2800      	cmp	r0, #0
c0de23fa:	d1c1      	bne.n	c0de2380 <zkn_compute_group_commitment+0x2a>
c0de23fc:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de23fe:	4620      	mov	r0, r4
c0de2400:	4652      	mov	r2, sl
c0de2402:	460b      	mov	r3, r1
c0de2404:	f000 f943 	bl	c0de268e <tEdwards_add>
c0de2408:	46aa      	mov	sl, r5
c0de240a:	9d01      	ldr	r5, [sp, #4]
c0de240c:	f10b 0b05 	add.w	fp, fp, #5
c0de2410:	f108 0801 	add.w	r8, r8, #1
c0de2414:	2800      	cmp	r0, #0
c0de2416:	d0bc      	beq.n	c0de2392 <zkn_compute_group_commitment+0x3c>
c0de2418:	e7b2      	b.n	c0de2380 <zkn_compute_group_commitment+0x2a>
c0de241a:	a905      	add	r1, sp, #20
c0de241c:	f000 f8a0 	bl	c0de2560 <OUTLINED_FUNCTION_3>
c0de2420:	2800      	cmp	r0, #0
c0de2422:	d1ad      	bne.n	c0de2380 <zkn_compute_group_commitment+0x2a>
c0de2424:	a902      	add	r1, sp, #8
c0de2426:	f000 f89b 	bl	c0de2560 <OUTLINED_FUNCTION_3>
c0de242a:	e7a9      	b.n	c0de2380 <zkn_compute_group_commitment+0x2a>

c0de242c <zkn_compute_binding_factors>:
c0de242c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2430:	b0f4      	sub	sp, #464	@ 0x1d0
c0de2432:	460e      	mov	r6, r1
c0de2434:	6801      	ldr	r1, [r0, #0]
c0de2436:	4607      	mov	r7, r0
c0de2438:	a873      	add	r0, sp, #460	@ 0x1cc
c0de243a:	f000 f88d 	bl	c0de2558 <OUTLINED_FUNCTION_2>
c0de243e:	b9f0      	cbnz	r0, c0de247e <zkn_compute_binding_factors+0x52>
c0de2440:	6839      	ldr	r1, [r7, #0]
c0de2442:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2444:	f004 ff2a 	bl	c0de729c <cx_bn_alloc>
c0de2448:	b9c8      	cbnz	r0, c0de247e <zkn_compute_binding_factors+0x52>
c0de244a:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de244e:	68ba      	ldr	r2, [r7, #8]
c0de2450:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de2452:	f000 ff4b 	bl	c0de32ec <Babyfrost_H4>
c0de2456:	b990      	cbnz	r0, c0de247e <zkn_compute_binding_factors+0x52>
c0de2458:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de245a:	4638      	mov	r0, r7
c0de245c:	4629      	mov	r1, r5
c0de245e:	4622      	mov	r2, r4
c0de2460:	f7ff fefc 	bl	c0de225c <zkn_encode_group_commitmentHash>
c0de2464:	b958      	cbnz	r0, c0de247e <zkn_compute_binding_factors+0x52>
c0de2466:	683a      	ldr	r2, [r7, #0]
c0de2468:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de246a:	a912      	add	r1, sp, #72	@ 0x48
c0de246c:	f004 ff60 	bl	c0de7330 <cx_bn_export>
c0de2470:	b928      	cbnz	r0, c0de247e <zkn_compute_binding_factors+0x52>
c0de2472:	683a      	ldr	r2, [r7, #0]
c0de2474:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de2476:	a902      	add	r1, sp, #8
c0de2478:	f004 ff5a 	bl	c0de7330 <cx_bn_export>
c0de247c:	b110      	cbz	r0, c0de2484 <zkn_compute_binding_factors+0x58>
c0de247e:	b074      	add	sp, #464	@ 0x1d0
c0de2480:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2484:	2000      	movs	r0, #0
c0de2486:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de248a:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de248e:	f04f 0800 	mov.w	r8, #0
c0de2492:	9000      	str	r0, [sp, #0]
c0de2494:	4544      	cmp	r4, r8
c0de2496:	d043      	beq.n	c0de2520 <zkn_compute_binding_factors+0xf4>
c0de2498:	6839      	ldr	r1, [r7, #0]
c0de249a:	a801      	add	r0, sp, #4
c0de249c:	f004 fefe 	bl	c0de729c <cx_bn_alloc>
c0de24a0:	2800      	cmp	r0, #0
c0de24a2:	d1ec      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24a4:	4650      	mov	r0, sl
c0de24a6:	f000 ff53 	bl	c0de3350 <zkn_frost_H1_init>
c0de24aa:	2800      	cmp	r0, #0
c0de24ac:	d1e7      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24ae:	6839      	ldr	r1, [r7, #0]
c0de24b0:	4630      	mov	r0, r6
c0de24b2:	465a      	mov	r2, fp
c0de24b4:	f000 f845 	bl	c0de2542 <OUTLINED_FUNCTION_0>
c0de24b8:	2800      	cmp	r0, #0
c0de24ba:	d1e0      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24bc:	6839      	ldr	r1, [r7, #0]
c0de24be:	a812      	add	r0, sp, #72	@ 0x48
c0de24c0:	465a      	mov	r2, fp
c0de24c2:	f000 f83e 	bl	c0de2542 <OUTLINED_FUNCTION_0>
c0de24c6:	2800      	cmp	r0, #0
c0de24c8:	d1d9      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24ca:	6839      	ldr	r1, [r7, #0]
c0de24cc:	a802      	add	r0, sp, #8
c0de24ce:	465a      	mov	r2, fp
c0de24d0:	f000 f837 	bl	c0de2542 <OUTLINED_FUNCTION_0>
c0de24d4:	2800      	cmp	r0, #0
c0de24d6:	d1d2      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24d8:	6839      	ldr	r1, [r7, #0]
c0de24da:	9800      	ldr	r0, [sp, #0]
c0de24dc:	465a      	mov	r2, fp
c0de24de:	fb00 5001 	mla	r0, r0, r1, r5
c0de24e2:	f000 f82e 	bl	c0de2542 <OUTLINED_FUNCTION_0>
c0de24e6:	2800      	cmp	r0, #0
c0de24e8:	d1c9      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24ea:	68b9      	ldr	r1, [r7, #8]
c0de24ec:	9a01      	ldr	r2, [sp, #4]
c0de24ee:	4650      	mov	r0, sl
c0de24f0:	f000 ff64 	bl	c0de33bc <zkn_frost_hash_final>
c0de24f4:	2800      	cmp	r0, #0
c0de24f6:	d1c2      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de24f8:	683a      	ldr	r2, [r7, #0]
c0de24fa:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de24fc:	fb02 0108 	mla	r1, r2, r8, r0
c0de2500:	9801      	ldr	r0, [sp, #4]
c0de2502:	f004 ff15 	bl	c0de7330 <cx_bn_export>
c0de2506:	2800      	cmp	r0, #0
c0de2508:	d1b9      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de250a:	a801      	add	r0, sp, #4
c0de250c:	f004 fedc 	bl	c0de72c8 <cx_bn_destroy>
c0de2510:	2800      	cmp	r0, #0
c0de2512:	d1b4      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de2514:	9800      	ldr	r0, [sp, #0]
c0de2516:	f108 0801 	add.w	r8, r8, #1
c0de251a:	3005      	adds	r0, #5
c0de251c:	9000      	str	r0, [sp, #0]
c0de251e:	e7b9      	b.n	c0de2494 <zkn_compute_binding_factors+0x68>
c0de2520:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2522:	f004 fed1 	bl	c0de72c8 <cx_bn_destroy>
c0de2526:	2800      	cmp	r0, #0
c0de2528:	d1a9      	bne.n	c0de247e <zkn_compute_binding_factors+0x52>
c0de252a:	a872      	add	r0, sp, #456	@ 0x1c8
c0de252c:	f004 fecc 	bl	c0de72c8 <cx_bn_destroy>
c0de2530:	e7a5      	b.n	c0de247e <zkn_compute_binding_factors+0x52>

c0de2532 <zkn_serialize_scalar_for_hash>:
c0de2532:	3a01      	subs	r2, #1
c0de2534:	b121      	cbz	r1, c0de2540 <zkn_serialize_scalar_for_hash+0xe>
c0de2536:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de253a:	5453      	strb	r3, [r2, r1]
c0de253c:	3901      	subs	r1, #1
c0de253e:	e7f9      	b.n	c0de2534 <zkn_serialize_scalar_for_hash+0x2>
c0de2540:	4770      	bx	lr

c0de2542 <OUTLINED_FUNCTION_0>:
c0de2542:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2546:	f7ff fff4 	bl	c0de2532 <zkn_serialize_scalar_for_hash>
c0de254a:	683a      	ldr	r2, [r7, #0]
c0de254c:	4650      	mov	r0, sl
c0de254e:	4659      	mov	r1, fp
c0de2550:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2554:	f000 bf30 	b.w	c0de33b8 <zkn_frost_hash_update>

c0de2558 <OUTLINED_FUNCTION_2>:
c0de2558:	461c      	mov	r4, r3
c0de255a:	4615      	mov	r5, r2
c0de255c:	f004 be9e 	b.w	c0de729c <cx_bn_alloc>

c0de2560 <OUTLINED_FUNCTION_3>:
c0de2560:	4620      	mov	r0, r4
c0de2562:	f000 b818 	b.w	c0de2596 <tEdwards_destroy>

c0de2566 <OUTLINED_FUNCTION_4>:
c0de2566:	2120      	movs	r1, #32
c0de2568:	f004 be98 	b.w	c0de729c <cx_bn_alloc>

c0de256c <tEdwards_alloc>:
c0de256c:	b5b0      	push	{r4, r5, r7, lr}
c0de256e:	460d      	mov	r5, r1
c0de2570:	6801      	ldr	r1, [r0, #0]
c0de2572:	4604      	mov	r4, r0
c0de2574:	4628      	mov	r0, r5
c0de2576:	f004 fe91 	bl	c0de729c <cx_bn_alloc>
c0de257a:	b920      	cbnz	r0, c0de2586 <tEdwards_alloc+0x1a>
c0de257c:	6821      	ldr	r1, [r4, #0]
c0de257e:	1d28      	adds	r0, r5, #4
c0de2580:	f004 fe8c 	bl	c0de729c <cx_bn_alloc>
c0de2584:	b100      	cbz	r0, c0de2588 <tEdwards_alloc+0x1c>
c0de2586:	bdb0      	pop	{r4, r5, r7, pc}
c0de2588:	6821      	ldr	r1, [r4, #0]
c0de258a:	f105 0008 	add.w	r0, r5, #8
c0de258e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2592:	f004 be83 	b.w	c0de729c <cx_bn_alloc>

c0de2596 <tEdwards_destroy>:
c0de2596:	b510      	push	{r4, lr}
c0de2598:	4608      	mov	r0, r1
c0de259a:	460c      	mov	r4, r1
c0de259c:	f004 fe94 	bl	c0de72c8 <cx_bn_destroy>
c0de25a0:	b918      	cbnz	r0, c0de25aa <tEdwards_destroy+0x14>
c0de25a2:	1d20      	adds	r0, r4, #4
c0de25a4:	f004 fe90 	bl	c0de72c8 <cx_bn_destroy>
c0de25a8:	b100      	cbz	r0, c0de25ac <tEdwards_destroy+0x16>
c0de25aa:	bd10      	pop	{r4, pc}
c0de25ac:	f104 0008 	add.w	r0, r4, #8
c0de25b0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de25b4:	f004 be88 	b.w	c0de72c8 <cx_bn_destroy>

c0de25b8 <tEdwards_double>:
c0de25b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de25ba:	460f      	mov	r7, r1
c0de25bc:	4614      	mov	r4, r2
c0de25be:	4605      	mov	r5, r0
c0de25c0:	6843      	ldr	r3, [r0, #4]
c0de25c2:	6809      	ldr	r1, [r1, #0]
c0de25c4:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de25c6:	687a      	ldr	r2, [r7, #4]
c0de25c8:	f004 fee2 	bl	c0de7390 <cx_bn_mod_add>
c0de25cc:	2800      	cmp	r0, #0
c0de25ce:	d154      	bne.n	c0de267a <tEdwards_double+0xc2>
c0de25d0:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de25d4:	f105 0620 	add.w	r6, r5, #32
c0de25d8:	f000 fbe4 	bl	c0de2da4 <OUTLINED_FUNCTION_2>
c0de25dc:	2800      	cmp	r0, #0
c0de25de:	d14c      	bne.n	c0de267a <tEdwards_double+0xc2>
c0de25e0:	6839      	ldr	r1, [r7, #0]
c0de25e2:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de25e4:	f000 fbde 	bl	c0de2da4 <OUTLINED_FUNCTION_2>
c0de25e8:	2800      	cmp	r0, #0
c0de25ea:	d146      	bne.n	c0de267a <tEdwards_double+0xc2>
c0de25ec:	6879      	ldr	r1, [r7, #4]
c0de25ee:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de25f0:	f000 fbd8 	bl	c0de2da4 <OUTLINED_FUNCTION_2>
c0de25f4:	2800      	cmp	r0, #0
c0de25f6:	d140      	bne.n	c0de267a <tEdwards_double+0xc2>
c0de25f8:	69a9      	ldr	r1, [r5, #24]
c0de25fa:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de25fc:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de25fe:	f000 fbcb 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de2602:	bbd0      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de2604:	686b      	ldr	r3, [r5, #4]
c0de2606:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de260a:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de260c:	f004 fec0 	bl	c0de7390 <cx_bn_mod_add>
c0de2610:	bb98      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de2612:	68b9      	ldr	r1, [r7, #8]
c0de2614:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2616:	f000 fbc5 	bl	c0de2da4 <OUTLINED_FUNCTION_2>
c0de261a:	bb70      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de261c:	686b      	ldr	r3, [r5, #4]
c0de261e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2620:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2622:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2624:	f004 fec0 	bl	c0de73a8 <cx_bn_mod_sub>
c0de2628:	bb38      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de262a:	686b      	ldr	r3, [r5, #4]
c0de262c:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de262e:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2632:	f004 feb9 	bl	c0de73a8 <cx_bn_mod_sub>
c0de2636:	bb00      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de2638:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de263c:	686b      	ldr	r3, [r5, #4]
c0de263e:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2640:	f004 feb2 	bl	c0de73a8 <cx_bn_mod_sub>
c0de2644:	b9c8      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de2646:	686b      	ldr	r3, [r5, #4]
c0de2648:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de264c:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de264e:	f004 feab 	bl	c0de73a8 <cx_bn_mod_sub>
c0de2652:	b990      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de2654:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2656:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2658:	6820      	ldr	r0, [r4, #0]
c0de265a:	f000 fb9d 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de265e:	b960      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de2660:	686b      	ldr	r3, [r5, #4]
c0de2662:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2666:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2668:	f004 fe9e 	bl	c0de73a8 <cx_bn_mod_sub>
c0de266c:	b928      	cbnz	r0, c0de267a <tEdwards_double+0xc2>
c0de266e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2670:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2672:	6860      	ldr	r0, [r4, #4]
c0de2674:	f000 fb90 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de2678:	b100      	cbz	r0, c0de267c <tEdwards_double+0xc4>
c0de267a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de267c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de267e:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2680:	68a0      	ldr	r0, [r4, #8]
c0de2682:	4633      	mov	r3, r6
c0de2684:	b001      	add	sp, #4
c0de2686:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de268a:	f004 bef3 	b.w	c0de7474 <cx_mont_mul>

c0de268e <tEdwards_add>:
c0de268e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2692:	4606      	mov	r6, r0
c0de2694:	4617      	mov	r7, r2
c0de2696:	460c      	mov	r4, r1
c0de2698:	6892      	ldr	r2, [r2, #8]
c0de269a:	6889      	ldr	r1, [r1, #8]
c0de269c:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de269e:	4698      	mov	r8, r3
c0de26a0:	f106 0520 	add.w	r5, r6, #32
c0de26a4:	f000 fb7b 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de26a8:	2800      	cmp	r0, #0
c0de26aa:	d17d      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de26ac:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de26b0:	462b      	mov	r3, r5
c0de26b2:	460a      	mov	r2, r1
c0de26b4:	f004 fede 	bl	c0de7474 <cx_mont_mul>
c0de26b8:	2800      	cmp	r0, #0
c0de26ba:	d175      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de26bc:	683a      	ldr	r2, [r7, #0]
c0de26be:	6821      	ldr	r1, [r4, #0]
c0de26c0:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de26c2:	f000 fb6c 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de26c6:	2800      	cmp	r0, #0
c0de26c8:	d16e      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de26ca:	687a      	ldr	r2, [r7, #4]
c0de26cc:	6861      	ldr	r1, [r4, #4]
c0de26ce:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de26d0:	f000 fb65 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de26d4:	2800      	cmp	r0, #0
c0de26d6:	d167      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de26d8:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de26dc:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de26de:	f000 fb5e 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de26e2:	2800      	cmp	r0, #0
c0de26e4:	d160      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de26e6:	69f2      	ldr	r2, [r6, #28]
c0de26e8:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de26ea:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de26ec:	f000 fb57 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de26f0:	2800      	cmp	r0, #0
c0de26f2:	d159      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de26f4:	6873      	ldr	r3, [r6, #4]
c0de26f6:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de26f8:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de26fc:	f004 fe54 	bl	c0de73a8 <cx_bn_mod_sub>
c0de2700:	2800      	cmp	r0, #0
c0de2702:	d151      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de2704:	6873      	ldr	r3, [r6, #4]
c0de2706:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2708:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de270a:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de270c:	f004 fe40 	bl	c0de7390 <cx_bn_mod_add>
c0de2710:	2800      	cmp	r0, #0
c0de2712:	d149      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de2714:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2718:	6873      	ldr	r3, [r6, #4]
c0de271a:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de271c:	f004 fe38 	bl	c0de7390 <cx_bn_mod_add>
c0de2720:	2800      	cmp	r0, #0
c0de2722:	d141      	bne.n	c0de27a8 <tEdwards_add+0x11a>
c0de2724:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2728:	6873      	ldr	r3, [r6, #4]
c0de272a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de272c:	f004 fe30 	bl	c0de7390 <cx_bn_mod_add>
c0de2730:	bbd0      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de2732:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2734:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2738:	f000 fb31 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de273c:	bba0      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de273e:	6873      	ldr	r3, [r6, #4]
c0de2740:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2744:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2746:	f004 fe2f 	bl	c0de73a8 <cx_bn_mod_sub>
c0de274a:	bb68      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de274c:	6873      	ldr	r3, [r6, #4]
c0de274e:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2750:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2754:	f004 fe28 	bl	c0de73a8 <cx_bn_mod_sub>
c0de2758:	bb30      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de275a:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de275e:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2760:	f000 fb1d 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de2764:	bb00      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de2766:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2768:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de276a:	f8d8 0000 	ldr.w	r0, [r8]
c0de276e:	f000 fb16 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de2772:	b9c8      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de2774:	69b1      	ldr	r1, [r6, #24]
c0de2776:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de277a:	f000 fb10 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de277e:	b998      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de2780:	6873      	ldr	r3, [r6, #4]
c0de2782:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2784:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2786:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2788:	f004 fe0e 	bl	c0de73a8 <cx_bn_mod_sub>
c0de278c:	b960      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de278e:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2790:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2792:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2794:	f000 fb03 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de2798:	b930      	cbnz	r0, c0de27a8 <tEdwards_add+0x11a>
c0de279a:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de279e:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de27a2:	f000 fafc 	bl	c0de2d9e <OUTLINED_FUNCTION_1>
c0de27a6:	b108      	cbz	r0, c0de27ac <tEdwards_add+0x11e>
c0de27a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de27ac:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de27b0:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de27b4:	462b      	mov	r3, r5
c0de27b6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de27ba:	f004 be5b 	b.w	c0de7474 <cx_mont_mul>

c0de27be <tEdwards_IsOnCurve>:
c0de27be:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de27c0:	4605      	mov	r5, r0
c0de27c2:	460f      	mov	r7, r1
c0de27c4:	2005      	movs	r0, #5
c0de27c6:	6809      	ldr	r1, [r1, #0]
c0de27c8:	4614      	mov	r4, r2
c0de27ca:	9000      	str	r0, [sp, #0]
c0de27cc:	f105 0620 	add.w	r6, r5, #32
c0de27d0:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de27d2:	460a      	mov	r2, r1
c0de27d4:	f000 fae0 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de27d8:	b100      	cbz	r0, c0de27dc <tEdwards_IsOnCurve+0x1e>
c0de27da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de27dc:	6879      	ldr	r1, [r7, #4]
c0de27de:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de27e0:	f000 fae0 	bl	c0de2da4 <OUTLINED_FUNCTION_2>
c0de27e4:	2800      	cmp	r0, #0
c0de27e6:	d1f8      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de27e8:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de27ec:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de27ee:	f000 fad3 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de27f2:	2800      	cmp	r0, #0
c0de27f4:	d1f1      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de27f6:	69a9      	ldr	r1, [r5, #24]
c0de27f8:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de27fa:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de27fc:	f000 facc 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de2800:	2800      	cmp	r0, #0
c0de2802:	d1ea      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de2804:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2806:	686b      	ldr	r3, [r5, #4]
c0de2808:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de280a:	4601      	mov	r1, r0
c0de280c:	f004 fdc0 	bl	c0de7390 <cx_bn_mod_add>
c0de2810:	2800      	cmp	r0, #0
c0de2812:	d1e2      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de2814:	69e9      	ldr	r1, [r5, #28]
c0de2816:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2818:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de281a:	f000 fabd 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de281e:	2800      	cmp	r0, #0
c0de2820:	d1db      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de2822:	686b      	ldr	r3, [r5, #4]
c0de2824:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2826:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2828:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de282a:	f004 fdb1 	bl	c0de7390 <cx_bn_mod_add>
c0de282e:	2800      	cmp	r0, #0
c0de2830:	d1d3      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de2832:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2834:	4632      	mov	r2, r6
c0de2836:	4601      	mov	r1, r0
c0de2838:	f004 fe10 	bl	c0de745c <cx_mont_from_montgomery>
c0de283c:	2800      	cmp	r0, #0
c0de283e:	d1cc      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de2840:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2842:	4632      	mov	r2, r6
c0de2844:	4601      	mov	r1, r0
c0de2846:	f004 fe09 	bl	c0de745c <cx_mont_from_montgomery>
c0de284a:	2800      	cmp	r0, #0
c0de284c:	d1c5      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de284e:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2852:	466a      	mov	r2, sp
c0de2854:	f004 fd78 	bl	c0de7348 <cx_bn_cmp>
c0de2858:	2800      	cmp	r0, #0
c0de285a:	d1be      	bne.n	c0de27da <tEdwards_IsOnCurve+0x1c>
c0de285c:	9800      	ldr	r0, [sp, #0]
c0de285e:	fab0 f080 	clz	r0, r0
c0de2862:	0940      	lsrs	r0, r0, #5
c0de2864:	7020      	strb	r0, [r4, #0]
c0de2866:	2000      	movs	r0, #0
c0de2868:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de286c <tEdwards_Curve_alloc_init>:
c0de286c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2870:	b0d2      	sub	sp, #328	@ 0x148
c0de2872:	4604      	mov	r4, r0
c0de2874:	2902      	cmp	r1, #2
c0de2876:	d022      	beq.n	c0de28be <tEdwards_Curve_alloc_init+0x52>
c0de2878:	2901      	cmp	r1, #1
c0de287a:	f040 80cd 	bne.w	c0de2a18 <tEdwards_Curve_alloc_init+0x1ac>
c0de287e:	2020      	movs	r0, #32
c0de2880:	2220      	movs	r2, #32
c0de2882:	6020      	str	r0, [r4, #0]
c0de2884:	af4a      	add	r7, sp, #296	@ 0x128
c0de2886:	4967      	ldr	r1, [pc, #412]	@ (c0de2a24 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2888:	4638      	mov	r0, r7
c0de288a:	4479      	add	r1, pc
c0de288c:	f004 ffbc 	bl	c0de7808 <__aeabi_memcpy>
c0de2890:	ae42      	add	r6, sp, #264	@ 0x108
c0de2892:	4965      	ldr	r1, [pc, #404]	@ (c0de2a28 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2894:	2220      	movs	r2, #32
c0de2896:	4630      	mov	r0, r6
c0de2898:	4479      	add	r1, pc
c0de289a:	f004 ffb5 	bl	c0de7808 <__aeabi_memcpy>
c0de289e:	4963      	ldr	r1, [pc, #396]	@ (c0de2a2c <tEdwards_Curve_alloc_init+0x1c0>)
c0de28a0:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de28a4:	2220      	movs	r2, #32
c0de28a6:	4650      	mov	r0, sl
c0de28a8:	4479      	add	r1, pc
c0de28aa:	f004 ffad 	bl	c0de7808 <__aeabi_memcpy>
c0de28ae:	ad32      	add	r5, sp, #200	@ 0xc8
c0de28b0:	495f      	ldr	r1, [pc, #380]	@ (c0de2a30 <tEdwards_Curve_alloc_init+0x1c4>)
c0de28b2:	2220      	movs	r2, #32
c0de28b4:	4628      	mov	r0, r5
c0de28b6:	4479      	add	r1, pc
c0de28b8:	f004 ffa6 	bl	c0de7808 <__aeabi_memcpy>
c0de28bc:	e02d      	b.n	c0de291a <tEdwards_Curve_alloc_init+0xae>
c0de28be:	2020      	movs	r0, #32
c0de28c0:	2220      	movs	r2, #32
c0de28c2:	6020      	str	r0, [r4, #0]
c0de28c4:	af2a      	add	r7, sp, #168	@ 0xa8
c0de28c6:	495b      	ldr	r1, [pc, #364]	@ (c0de2a34 <tEdwards_Curve_alloc_init+0x1c8>)
c0de28c8:	4638      	mov	r0, r7
c0de28ca:	4479      	add	r1, pc
c0de28cc:	f004 ff9c 	bl	c0de7808 <__aeabi_memcpy>
c0de28d0:	ae22      	add	r6, sp, #136	@ 0x88
c0de28d2:	4959      	ldr	r1, [pc, #356]	@ (c0de2a38 <tEdwards_Curve_alloc_init+0x1cc>)
c0de28d4:	2220      	movs	r2, #32
c0de28d6:	4630      	mov	r0, r6
c0de28d8:	4479      	add	r1, pc
c0de28da:	f004 ff95 	bl	c0de7808 <__aeabi_memcpy>
c0de28de:	4957      	ldr	r1, [pc, #348]	@ (c0de2a3c <tEdwards_Curve_alloc_init+0x1d0>)
c0de28e0:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de28e4:	2220      	movs	r2, #32
c0de28e6:	4650      	mov	r0, sl
c0de28e8:	4479      	add	r1, pc
c0de28ea:	f004 ff8d 	bl	c0de7808 <__aeabi_memcpy>
c0de28ee:	a812      	add	r0, sp, #72	@ 0x48
c0de28f0:	4953      	ldr	r1, [pc, #332]	@ (c0de2a40 <tEdwards_Curve_alloc_init+0x1d4>)
c0de28f2:	2220      	movs	r2, #32
c0de28f4:	9001      	str	r0, [sp, #4]
c0de28f6:	4479      	add	r1, pc
c0de28f8:	f004 ff86 	bl	c0de7808 <__aeabi_memcpy>
c0de28fc:	4951      	ldr	r1, [pc, #324]	@ (c0de2a44 <tEdwards_Curve_alloc_init+0x1d8>)
c0de28fe:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2902:	2220      	movs	r2, #32
c0de2904:	4658      	mov	r0, fp
c0de2906:	4479      	add	r1, pc
c0de2908:	f004 ff7e 	bl	c0de7808 <__aeabi_memcpy>
c0de290c:	ad02      	add	r5, sp, #8
c0de290e:	494e      	ldr	r1, [pc, #312]	@ (c0de2a48 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2910:	2220      	movs	r2, #32
c0de2912:	4628      	mov	r0, r5
c0de2914:	4479      	add	r1, pc
c0de2916:	f004 ff77 	bl	c0de7808 <__aeabi_memcpy>
c0de291a:	f104 0804 	add.w	r8, r4, #4
c0de291e:	2120      	movs	r1, #32
c0de2920:	463a      	mov	r2, r7
c0de2922:	2320      	movs	r3, #32
c0de2924:	4640      	mov	r0, r8
c0de2926:	f004 fcc3 	bl	c0de72b0 <cx_bn_alloc_init>
c0de292a:	2800      	cmp	r0, #0
c0de292c:	d175      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de292e:	4620      	mov	r0, r4
c0de2930:	462a      	mov	r2, r5
c0de2932:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2936:	460b      	mov	r3, r1
c0de2938:	f004 fcba 	bl	c0de72b0 <cx_bn_alloc_init>
c0de293c:	2800      	cmp	r0, #0
c0de293e:	d16c      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2940:	f104 0520 	add.w	r5, r4, #32
c0de2944:	2120      	movs	r1, #32
c0de2946:	4628      	mov	r0, r5
c0de2948:	f004 fd68 	bl	c0de741c <cx_mont_alloc>
c0de294c:	2800      	cmp	r0, #0
c0de294e:	d164      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2950:	f8d8 1000 	ldr.w	r1, [r8]
c0de2954:	4628      	mov	r0, r5
c0de2956:	f004 fd6b 	bl	c0de7430 <cx_mont_init>
c0de295a:	2800      	cmp	r0, #0
c0de295c:	d15d      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de295e:	4627      	mov	r7, r4
c0de2960:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2964:	4638      	mov	r0, r7
c0de2966:	f004 fc99 	bl	c0de729c <cx_bn_alloc>
c0de296a:	2800      	cmp	r0, #0
c0de296c:	d155      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de296e:	6838      	ldr	r0, [r7, #0]
c0de2970:	2101      	movs	r1, #1
c0de2972:	f004 fcd3 	bl	c0de731c <cx_bn_set_u32>
c0de2976:	2800      	cmp	r0, #0
c0de2978:	d14f      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de297a:	6838      	ldr	r0, [r7, #0]
c0de297c:	f000 fa16 	bl	c0de2dac <OUTLINED_FUNCTION_3>
c0de2980:	2800      	cmp	r0, #0
c0de2982:	d14a      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2984:	f104 070c 	add.w	r7, r4, #12
c0de2988:	4620      	mov	r0, r4
c0de298a:	4639      	mov	r1, r7
c0de298c:	f7ff fdee 	bl	c0de256c <tEdwards_alloc>
c0de2990:	2800      	cmp	r0, #0
c0de2992:	d142      	bne.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2994:	9901      	ldr	r1, [sp, #4]
c0de2996:	4620      	mov	r0, r4
c0de2998:	465a      	mov	r2, fp
c0de299a:	463b      	mov	r3, r7
c0de299c:	f000 f856 	bl	c0de2a4c <tEdwards_init>
c0de29a0:	bbd8      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29a2:	4627      	mov	r7, r4
c0de29a4:	4632      	mov	r2, r6
c0de29a6:	f857 1b18 	ldr.w	r1, [r7], #24
c0de29aa:	4638      	mov	r0, r7
c0de29ac:	460b      	mov	r3, r1
c0de29ae:	f004 fc7f 	bl	c0de72b0 <cx_bn_alloc_init>
c0de29b2:	bb90      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29b4:	6838      	ldr	r0, [r7, #0]
c0de29b6:	f000 f9f9 	bl	c0de2dac <OUTLINED_FUNCTION_3>
c0de29ba:	bb70      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29bc:	4626      	mov	r6, r4
c0de29be:	4652      	mov	r2, sl
c0de29c0:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de29c4:	4630      	mov	r0, r6
c0de29c6:	460b      	mov	r3, r1
c0de29c8:	f004 fc72 	bl	c0de72b0 <cx_bn_alloc_init>
c0de29cc:	bb28      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29ce:	6830      	ldr	r0, [r6, #0]
c0de29d0:	f000 f9ec 	bl	c0de2dac <OUTLINED_FUNCTION_3>
c0de29d4:	bb08      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29d6:	4620      	mov	r0, r4
c0de29d8:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de29dc:	f004 fc5e 	bl	c0de729c <cx_bn_alloc>
c0de29e0:	b9d8      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29e2:	f000 f9fb 	bl	c0de2ddc <OUTLINED_FUNCTION_8>
c0de29e6:	b9c0      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29e8:	f000 f9e4 	bl	c0de2db4 <OUTLINED_FUNCTION_4>
c0de29ec:	b9a8      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29ee:	f000 f9f0 	bl	c0de2dd2 <OUTLINED_FUNCTION_7>
c0de29f2:	b990      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29f4:	f000 f9fc 	bl	c0de2df0 <OUTLINED_FUNCTION_10>
c0de29f8:	b978      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de29fa:	f000 f9e5 	bl	c0de2dc8 <OUTLINED_FUNCTION_6>
c0de29fe:	b960      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2a00:	f000 f9f1 	bl	c0de2de6 <OUTLINED_FUNCTION_9>
c0de2a04:	b948      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2a06:	f000 f9da 	bl	c0de2dbe <OUTLINED_FUNCTION_5>
c0de2a0a:	b930      	cbnz	r0, c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2a0c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2a10:	4620      	mov	r0, r4
c0de2a12:	f004 fc43 	bl	c0de729c <cx_bn_alloc>
c0de2a16:	e000      	b.n	c0de2a1a <tEdwards_Curve_alloc_init+0x1ae>
c0de2a18:	4801      	ldr	r0, [pc, #4]	@ (c0de2a20 <tEdwards_Curve_alloc_init+0x1b4>)
c0de2a1a:	b052      	add	sp, #328	@ 0x148
c0de2a1c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2a20:	5a4b4e01 	.word	0x5a4b4e01
c0de2a24:	000055ba 	.word	0x000055ba
c0de2a28:	0000574c 	.word	0x0000574c
c0de2a2c:	000056fc 	.word	0x000056fc
c0de2a30:	0000564e 	.word	0x0000564e
c0de2a34:	0000575a 	.word	0x0000575a
c0de2a38:	000056ac 	.word	0x000056ac
c0de2a3c:	0000571c 	.word	0x0000571c
c0de2a40:	0000574e 	.word	0x0000574e
c0de2a44:	0000575e 	.word	0x0000575e
c0de2a48:	00005610 	.word	0x00005610

c0de2a4c <tEdwards_init>:
c0de2a4c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2a4e:	6806      	ldr	r6, [r0, #0]
c0de2a50:	461c      	mov	r4, r3
c0de2a52:	4617      	mov	r7, r2
c0de2a54:	460a      	mov	r2, r1
c0de2a56:	4605      	mov	r5, r0
c0de2a58:	a802      	add	r0, sp, #8
c0de2a5a:	4631      	mov	r1, r6
c0de2a5c:	4633      	mov	r3, r6
c0de2a5e:	f004 fc27 	bl	c0de72b0 <cx_bn_alloc_init>
c0de2a62:	b100      	cbz	r0, c0de2a66 <tEdwards_init+0x1a>
c0de2a64:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2a66:	a801      	add	r0, sp, #4
c0de2a68:	4631      	mov	r1, r6
c0de2a6a:	463a      	mov	r2, r7
c0de2a6c:	4633      	mov	r3, r6
c0de2a6e:	f004 fc1f 	bl	c0de72b0 <cx_bn_alloc_init>
c0de2a72:	2800      	cmp	r0, #0
c0de2a74:	d1f6      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2a76:	4668      	mov	r0, sp
c0de2a78:	4631      	mov	r1, r6
c0de2a7a:	f004 fc0f 	bl	c0de729c <cx_bn_alloc>
c0de2a7e:	2800      	cmp	r0, #0
c0de2a80:	d1f0      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2a82:	f105 0620 	add.w	r6, r5, #32
c0de2a86:	6820      	ldr	r0, [r4, #0]
c0de2a88:	9902      	ldr	r1, [sp, #8]
c0de2a8a:	4632      	mov	r2, r6
c0de2a8c:	f004 fcda 	bl	c0de7444 <cx_mont_to_montgomery>
c0de2a90:	2800      	cmp	r0, #0
c0de2a92:	d1e7      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2a94:	6860      	ldr	r0, [r4, #4]
c0de2a96:	9901      	ldr	r1, [sp, #4]
c0de2a98:	4632      	mov	r2, r6
c0de2a9a:	f004 fcd3 	bl	c0de7444 <cx_mont_to_montgomery>
c0de2a9e:	2800      	cmp	r0, #0
c0de2aa0:	d1e0      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2aa2:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2aa4:	68a0      	ldr	r0, [r4, #8]
c0de2aa6:	f004 fc2f 	bl	c0de7308 <cx_bn_copy>
c0de2aaa:	2800      	cmp	r0, #0
c0de2aac:	d1da      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2aae:	a802      	add	r0, sp, #8
c0de2ab0:	f004 fc0a 	bl	c0de72c8 <cx_bn_destroy>
c0de2ab4:	2800      	cmp	r0, #0
c0de2ab6:	d1d5      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2ab8:	a801      	add	r0, sp, #4
c0de2aba:	f004 fc05 	bl	c0de72c8 <cx_bn_destroy>
c0de2abe:	2800      	cmp	r0, #0
c0de2ac0:	d1d0      	bne.n	c0de2a64 <tEdwards_init+0x18>
c0de2ac2:	4668      	mov	r0, sp
c0de2ac4:	f004 fc00 	bl	c0de72c8 <cx_bn_destroy>
c0de2ac8:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2aca <tEdwards_Curve_partial_destroy>:
c0de2aca:	b510      	push	{r4, lr}
c0de2acc:	4604      	mov	r4, r0
c0de2ace:	302c      	adds	r0, #44	@ 0x2c
c0de2ad0:	f004 fbfa 	bl	c0de72c8 <cx_bn_destroy>
c0de2ad4:	bbd8      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2ad6:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2ada:	f004 fbf5 	bl	c0de72c8 <cx_bn_destroy>
c0de2ade:	bbb0      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2ae0:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2ae4:	f004 fbf0 	bl	c0de72c8 <cx_bn_destroy>
c0de2ae8:	bb88      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2aea:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2aee:	f004 fbeb 	bl	c0de72c8 <cx_bn_destroy>
c0de2af2:	bb60      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2af4:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2af8:	f004 fbe6 	bl	c0de72c8 <cx_bn_destroy>
c0de2afc:	bb38      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2afe:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2b02:	f004 fbe1 	bl	c0de72c8 <cx_bn_destroy>
c0de2b06:	bb10      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b08:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2b0c:	f004 fbdc 	bl	c0de72c8 <cx_bn_destroy>
c0de2b10:	b9e8      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b12:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2b16:	f004 fbd7 	bl	c0de72c8 <cx_bn_destroy>
c0de2b1a:	b9c0      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b1c:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2b20:	f004 fbd2 	bl	c0de72c8 <cx_bn_destroy>
c0de2b24:	b998      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b26:	f104 010c 	add.w	r1, r4, #12
c0de2b2a:	f7ff fd34 	bl	c0de2596 <tEdwards_destroy>
c0de2b2e:	b970      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b30:	f104 0018 	add.w	r0, r4, #24
c0de2b34:	f004 fbc8 	bl	c0de72c8 <cx_bn_destroy>
c0de2b38:	b948      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b3a:	f104 001c 	add.w	r0, r4, #28
c0de2b3e:	f004 fbc3 	bl	c0de72c8 <cx_bn_destroy>
c0de2b42:	b920      	cbnz	r0, c0de2b4e <tEdwards_Curve_partial_destroy+0x84>
c0de2b44:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2b48:	f004 fbbe 	bl	c0de72c8 <cx_bn_destroy>
c0de2b4c:	b100      	cbz	r0, c0de2b50 <tEdwards_Curve_partial_destroy+0x86>
c0de2b4e:	bd10      	pop	{r4, pc}
c0de2b50:	f104 0008 	add.w	r0, r4, #8
c0de2b54:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2b58:	f004 bbb6 	b.w	c0de72c8 <cx_bn_destroy>

c0de2b5c <tEdwards_SetNeutral>:
c0de2b5c:	b5b0      	push	{r4, r5, r7, lr}
c0de2b5e:	4605      	mov	r5, r0
c0de2b60:	6808      	ldr	r0, [r1, #0]
c0de2b62:	460c      	mov	r4, r1
c0de2b64:	2100      	movs	r1, #0
c0de2b66:	f004 fbd9 	bl	c0de731c <cx_bn_set_u32>
c0de2b6a:	b918      	cbnz	r0, c0de2b74 <tEdwards_SetNeutral+0x18>
c0de2b6c:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2b6e:	f000 f944 	bl	c0de2dfa <OUTLINED_FUNCTION_11>
c0de2b72:	b100      	cbz	r0, c0de2b76 <tEdwards_SetNeutral+0x1a>
c0de2b74:	bdb0      	pop	{r4, r5, r7, pc}
c0de2b76:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2b78:	68a0      	ldr	r0, [r4, #8]
c0de2b7a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2b7e:	f004 bbc3 	b.w	c0de7308 <cx_bn_copy>

c0de2b82 <tEdwards_export>:
c0de2b82:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b86:	4698      	mov	r8, r3
c0de2b88:	4616      	mov	r6, r2
c0de2b8a:	460f      	mov	r7, r1
c0de2b8c:	4605      	mov	r5, r0
c0de2b8e:	f000 f81e 	bl	c0de2bce <tEdwards_normalize>
c0de2b92:	b998      	cbnz	r0, c0de2bbc <tEdwards_export+0x3a>
c0de2b94:	f105 0420 	add.w	r4, r5, #32
c0de2b98:	6839      	ldr	r1, [r7, #0]
c0de2b9a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b9c:	4622      	mov	r2, r4
c0de2b9e:	f004 fc5d 	bl	c0de745c <cx_mont_from_montgomery>
c0de2ba2:	b958      	cbnz	r0, c0de2bbc <tEdwards_export+0x3a>
c0de2ba4:	6879      	ldr	r1, [r7, #4]
c0de2ba6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2ba8:	4622      	mov	r2, r4
c0de2baa:	f004 fc57 	bl	c0de745c <cx_mont_from_montgomery>
c0de2bae:	b928      	cbnz	r0, c0de2bbc <tEdwards_export+0x3a>
c0de2bb0:	682a      	ldr	r2, [r5, #0]
c0de2bb2:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2bb4:	4631      	mov	r1, r6
c0de2bb6:	f004 fbbb 	bl	c0de7330 <cx_bn_export>
c0de2bba:	b108      	cbz	r0, c0de2bc0 <tEdwards_export+0x3e>
c0de2bbc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2bc0:	682a      	ldr	r2, [r5, #0]
c0de2bc2:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2bc4:	4641      	mov	r1, r8
c0de2bc6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2bca:	f004 bbb1 	b.w	c0de7330 <cx_bn_export>

c0de2bce <tEdwards_normalize>:
c0de2bce:	b570      	push	{r4, r5, r6, lr}
c0de2bd0:	4605      	mov	r5, r0
c0de2bd2:	460c      	mov	r4, r1
c0de2bd4:	6889      	ldr	r1, [r1, #8]
c0de2bd6:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2bd8:	f105 0620 	add.w	r6, r5, #32
c0de2bdc:	4632      	mov	r2, r6
c0de2bde:	f004 fc65 	bl	c0de74ac <cx_mont_invert_nprime>
c0de2be2:	b9d0      	cbnz	r0, c0de2c1a <tEdwards_normalize+0x4c>
c0de2be4:	6822      	ldr	r2, [r4, #0]
c0de2be6:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2bea:	f000 f8d5 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de2bee:	b9a0      	cbnz	r0, c0de2c1a <tEdwards_normalize+0x4c>
c0de2bf0:	6862      	ldr	r2, [r4, #4]
c0de2bf2:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2bf4:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2bf6:	f000 f8cf 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de2bfa:	b970      	cbnz	r0, c0de2c1a <tEdwards_normalize+0x4c>
c0de2bfc:	68a2      	ldr	r2, [r4, #8]
c0de2bfe:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2c00:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c02:	f000 f8c9 	bl	c0de2d98 <OUTLINED_FUNCTION_0>
c0de2c06:	b940      	cbnz	r0, c0de2c1a <tEdwards_normalize+0x4c>
c0de2c08:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2c0a:	6820      	ldr	r0, [r4, #0]
c0de2c0c:	f004 fb7c 	bl	c0de7308 <cx_bn_copy>
c0de2c10:	b918      	cbnz	r0, c0de2c1a <tEdwards_normalize+0x4c>
c0de2c12:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2c14:	f000 f8f1 	bl	c0de2dfa <OUTLINED_FUNCTION_11>
c0de2c18:	b100      	cbz	r0, c0de2c1c <tEdwards_normalize+0x4e>
c0de2c1a:	bd70      	pop	{r4, r5, r6, pc}
c0de2c1c:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2c1e:	68a0      	ldr	r0, [r4, #8]
c0de2c20:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2c24:	f004 bb70 	b.w	c0de7308 <cx_bn_copy>

c0de2c28 <tEdwards_copy>:
c0de2c28:	b5b0      	push	{r4, r5, r7, lr}
c0de2c2a:	460c      	mov	r4, r1
c0de2c2c:	4605      	mov	r5, r0
c0de2c2e:	6801      	ldr	r1, [r0, #0]
c0de2c30:	6820      	ldr	r0, [r4, #0]
c0de2c32:	f004 fb69 	bl	c0de7308 <cx_bn_copy>
c0de2c36:	b918      	cbnz	r0, c0de2c40 <tEdwards_copy+0x18>
c0de2c38:	6869      	ldr	r1, [r5, #4]
c0de2c3a:	f000 f8de 	bl	c0de2dfa <OUTLINED_FUNCTION_11>
c0de2c3e:	b100      	cbz	r0, c0de2c42 <tEdwards_copy+0x1a>
c0de2c40:	bdb0      	pop	{r4, r5, r7, pc}
c0de2c42:	68a9      	ldr	r1, [r5, #8]
c0de2c44:	68a0      	ldr	r0, [r4, #8]
c0de2c46:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2c4a:	f004 bb5d 	b.w	c0de7308 <cx_bn_copy>

c0de2c4e <tEdwards_alloc_init>:
c0de2c4e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2c50:	460e      	mov	r6, r1
c0de2c52:	6801      	ldr	r1, [r0, #0]
c0de2c54:	4607      	mov	r7, r0
c0de2c56:	4618      	mov	r0, r3
c0de2c58:	461c      	mov	r4, r3
c0de2c5a:	4615      	mov	r5, r2
c0de2c5c:	f004 fb1e 	bl	c0de729c <cx_bn_alloc>
c0de2c60:	b950      	cbnz	r0, c0de2c78 <tEdwards_alloc_init+0x2a>
c0de2c62:	6839      	ldr	r1, [r7, #0]
c0de2c64:	1d20      	adds	r0, r4, #4
c0de2c66:	f004 fb19 	bl	c0de729c <cx_bn_alloc>
c0de2c6a:	b928      	cbnz	r0, c0de2c78 <tEdwards_alloc_init+0x2a>
c0de2c6c:	6839      	ldr	r1, [r7, #0]
c0de2c6e:	f104 0008 	add.w	r0, r4, #8
c0de2c72:	f004 fb13 	bl	c0de729c <cx_bn_alloc>
c0de2c76:	b100      	cbz	r0, c0de2c7a <tEdwards_alloc_init+0x2c>
c0de2c78:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2c7a:	4638      	mov	r0, r7
c0de2c7c:	4631      	mov	r1, r6
c0de2c7e:	462a      	mov	r2, r5
c0de2c80:	4623      	mov	r3, r4
c0de2c82:	b001      	add	sp, #4
c0de2c84:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2c88:	f7ff bee0 	b.w	c0de2a4c <tEdwards_init>

c0de2c8c <tEdwards_scalarMul_bn>:
c0de2c8c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c90:	4607      	mov	r7, r0
c0de2c92:	2000      	movs	r0, #0
c0de2c94:	4688      	mov	r8, r1
c0de2c96:	4615      	mov	r5, r2
c0de2c98:	2100      	movs	r1, #0
c0de2c9a:	469b      	mov	fp, r3
c0de2c9c:	9003      	str	r0, [sp, #12]
c0de2c9e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2ca2:	6810      	ldr	r0, [r2, #0]
c0de2ca4:	aa03      	add	r2, sp, #12
c0de2ca6:	f004 fb5b 	bl	c0de7360 <cx_bn_cmp_u32>
c0de2caa:	bb38      	cbnz	r0, c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2cac:	9803      	ldr	r0, [sp, #12]
c0de2cae:	b1d0      	cbz	r0, c0de2ce6 <tEdwards_scalarMul_bn+0x5a>
c0de2cb0:	6828      	ldr	r0, [r5, #0]
c0de2cb2:	a901      	add	r1, sp, #4
c0de2cb4:	f004 fb12 	bl	c0de72dc <cx_bn_nbytes>
c0de2cb8:	bb00      	cbnz	r0, c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2cba:	2002      	movs	r0, #2
c0de2cbc:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2cc0:	f10d 040b 	add.w	r4, sp, #11
c0de2cc4:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2cc6:	9801      	ldr	r0, [sp, #4]
c0de2cc8:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2ccc:	2000      	movs	r0, #0
c0de2cce:	2801      	cmp	r0, #1
c0de2cd0:	d00f      	beq.n	c0de2cf2 <tEdwards_scalarMul_bn+0x66>
c0de2cd2:	6828      	ldr	r0, [r5, #0]
c0de2cd4:	4631      	mov	r1, r6
c0de2cd6:	4622      	mov	r2, r4
c0de2cd8:	f004 fb4e 	bl	c0de7378 <cx_bn_tst_bit>
c0de2cdc:	b970      	cbnz	r0, c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2cde:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2ce2:	3e01      	subs	r6, #1
c0de2ce4:	e7f3      	b.n	c0de2cce <tEdwards_scalarMul_bn+0x42>
c0de2ce6:	4638      	mov	r0, r7
c0de2ce8:	4659      	mov	r1, fp
c0de2cea:	f7ff ff37 	bl	c0de2b5c <tEdwards_SetNeutral>
c0de2cee:	b928      	cbnz	r0, c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2cf0:	e7de      	b.n	c0de2cb0 <tEdwards_scalarMul_bn+0x24>
c0de2cf2:	4640      	mov	r0, r8
c0de2cf4:	4659      	mov	r1, fp
c0de2cf6:	f7ff ff97 	bl	c0de2c28 <tEdwards_copy>
c0de2cfa:	b110      	cbz	r0, c0de2d02 <tEdwards_scalarMul_bn+0x76>
c0de2cfc:	b004      	add	sp, #16
c0de2cfe:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2d02:	2001      	movs	r0, #1
c0de2d04:	f10d 0a0b 	add.w	sl, sp, #11
c0de2d08:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2d0c:	2e00      	cmp	r6, #0
c0de2d0e:	d420      	bmi.n	c0de2d52 <tEdwards_scalarMul_bn+0xc6>
c0de2d10:	4638      	mov	r0, r7
c0de2d12:	4659      	mov	r1, fp
c0de2d14:	465a      	mov	r2, fp
c0de2d16:	f7ff fc4f 	bl	c0de25b8 <tEdwards_double>
c0de2d1a:	2800      	cmp	r0, #0
c0de2d1c:	d1ee      	bne.n	c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2d1e:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2d20:	4631      	mov	r1, r6
c0de2d22:	4652      	mov	r2, sl
c0de2d24:	0040      	lsls	r0, r0, #1
c0de2d26:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2d28:	6828      	ldr	r0, [r5, #0]
c0de2d2a:	f004 fb25 	bl	c0de7378 <cx_bn_tst_bit>
c0de2d2e:	2800      	cmp	r0, #0
c0de2d30:	d1e4      	bne.n	c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2d32:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2d36:	b150      	cbz	r0, c0de2d4e <tEdwards_scalarMul_bn+0xc2>
c0de2d38:	4638      	mov	r0, r7
c0de2d3a:	4659      	mov	r1, fp
c0de2d3c:	4642      	mov	r2, r8
c0de2d3e:	465b      	mov	r3, fp
c0de2d40:	f7ff fca5 	bl	c0de268e <tEdwards_add>
c0de2d44:	2800      	cmp	r0, #0
c0de2d46:	d1d9      	bne.n	c0de2cfc <tEdwards_scalarMul_bn+0x70>
c0de2d48:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2d4a:	3001      	adds	r0, #1
c0de2d4c:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2d4e:	3e01      	subs	r6, #1
c0de2d50:	e7dc      	b.n	c0de2d0c <tEdwards_scalarMul_bn+0x80>
c0de2d52:	2000      	movs	r0, #0
c0de2d54:	e7d2      	b.n	c0de2cfc <tEdwards_scalarMul_bn+0x70>
	...

c0de2d58 <tEdwards_scalarMul>:
c0de2d58:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2d5a:	460c      	mov	r4, r1
c0de2d5c:	6801      	ldr	r1, [r0, #0]
c0de2d5e:	4299      	cmp	r1, r3
c0de2d60:	bf3c      	itt	cc
c0de2d62:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2d94 <tEdwards_scalarMul+0x3c>)
c0de2d64:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2d66:	4605      	mov	r5, r0
c0de2d68:	20ca      	movs	r0, #202	@ 0xca
c0de2d6a:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2d6c:	a801      	add	r0, sp, #4
c0de2d6e:	f004 fa9f 	bl	c0de72b0 <cx_bn_alloc_init>
c0de2d72:	b100      	cbz	r0, c0de2d76 <tEdwards_scalarMul+0x1e>
c0de2d74:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2d76:	20b3      	movs	r0, #179	@ 0xb3
c0de2d78:	9b06      	ldr	r3, [sp, #24]
c0de2d7a:	4621      	mov	r1, r4
c0de2d7c:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2d7e:	aa01      	add	r2, sp, #4
c0de2d80:	4628      	mov	r0, r5
c0de2d82:	f7ff ff83 	bl	c0de2c8c <tEdwards_scalarMul_bn>
c0de2d86:	2800      	cmp	r0, #0
c0de2d88:	d1f4      	bne.n	c0de2d74 <tEdwards_scalarMul+0x1c>
c0de2d8a:	a801      	add	r0, sp, #4
c0de2d8c:	f004 fa9c 	bl	c0de72c8 <cx_bn_destroy>
c0de2d90:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2d92:	bf00      	nop
c0de2d94:	5a4b4e01 	.word	0x5a4b4e01

c0de2d98 <OUTLINED_FUNCTION_0>:
c0de2d98:	4633      	mov	r3, r6
c0de2d9a:	f004 bb6b 	b.w	c0de7474 <cx_mont_mul>

c0de2d9e <OUTLINED_FUNCTION_1>:
c0de2d9e:	462b      	mov	r3, r5
c0de2da0:	f004 bb68 	b.w	c0de7474 <cx_mont_mul>

c0de2da4 <OUTLINED_FUNCTION_2>:
c0de2da4:	4633      	mov	r3, r6
c0de2da6:	460a      	mov	r2, r1
c0de2da8:	f004 bb64 	b.w	c0de7474 <cx_mont_mul>

c0de2dac <OUTLINED_FUNCTION_3>:
c0de2dac:	462a      	mov	r2, r5
c0de2dae:	4601      	mov	r1, r0
c0de2db0:	f004 bb48 	b.w	c0de7444 <cx_mont_to_montgomery>

c0de2db4 <OUTLINED_FUNCTION_4>:
c0de2db4:	4620      	mov	r0, r4
c0de2db6:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2dba:	f004 ba6f 	b.w	c0de729c <cx_bn_alloc>

c0de2dbe <OUTLINED_FUNCTION_5>:
c0de2dbe:	4620      	mov	r0, r4
c0de2dc0:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2dc4:	f004 ba6a 	b.w	c0de729c <cx_bn_alloc>

c0de2dc8 <OUTLINED_FUNCTION_6>:
c0de2dc8:	4620      	mov	r0, r4
c0de2dca:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2dce:	f004 ba65 	b.w	c0de729c <cx_bn_alloc>

c0de2dd2 <OUTLINED_FUNCTION_7>:
c0de2dd2:	4620      	mov	r0, r4
c0de2dd4:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2dd8:	f004 ba60 	b.w	c0de729c <cx_bn_alloc>

c0de2ddc <OUTLINED_FUNCTION_8>:
c0de2ddc:	4620      	mov	r0, r4
c0de2dde:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2de2:	f004 ba5b 	b.w	c0de729c <cx_bn_alloc>

c0de2de6 <OUTLINED_FUNCTION_9>:
c0de2de6:	4620      	mov	r0, r4
c0de2de8:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2dec:	f004 ba56 	b.w	c0de729c <cx_bn_alloc>

c0de2df0 <OUTLINED_FUNCTION_10>:
c0de2df0:	4620      	mov	r0, r4
c0de2df2:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2df6:	f004 ba51 	b.w	c0de729c <cx_bn_alloc>

c0de2dfa <OUTLINED_FUNCTION_11>:
c0de2dfa:	6860      	ldr	r0, [r4, #4]
c0de2dfc:	f004 ba84 	b.w	c0de7308 <cx_bn_copy>

c0de2e00 <grain_lfsr_advance>:
c0de2e00:	b5b0      	push	{r4, r5, r7, lr}
c0de2e02:	68c2      	ldr	r2, [r0, #12]
c0de2e04:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2e08:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2e0c:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2e10:	07e4      	lsls	r4, r4, #31
c0de2e12:	60c5      	str	r5, [r0, #12]
c0de2e14:	07dd      	lsls	r5, r3, #31
c0de2e16:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2e1a:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2e1e:	6044      	str	r4, [r0, #4]
c0de2e20:	4c15      	ldr	r4, [pc, #84]	@ (c0de2e78 <grain_lfsr_advance+0x78>)
c0de2e22:	6005      	str	r5, [r0, #0]
c0de2e24:	4021      	ands	r1, r4
c0de2e26:	4c15      	ldr	r4, [pc, #84]	@ (c0de2e7c <grain_lfsr_advance+0x7c>)
c0de2e28:	4023      	ands	r3, r4
c0de2e2a:	4419      	add	r1, r3
c0de2e2c:	0c0c      	lsrs	r4, r1, #16
c0de2e2e:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2e32:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2e36:	4421      	add	r1, r4
c0de2e38:	0a0c      	lsrs	r4, r1, #8
c0de2e3a:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2e3e:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2e42:	4061      	eors	r1, r4
c0de2e44:	090c      	lsrs	r4, r1, #4
c0de2e46:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2e4a:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2e4e:	4061      	eors	r1, r4
c0de2e50:	088c      	lsrs	r4, r1, #2
c0de2e52:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2e56:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2e5a:	4061      	eors	r1, r4
c0de2e5c:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2e60:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2e64:	4059      	eors	r1, r3
c0de2e66:	f001 0101 	and.w	r1, r1, #1
c0de2e6a:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2e6e:	6082      	str	r2, [r0, #8]
c0de2e70:	4608      	mov	r0, r1
c0de2e72:	2100      	movs	r1, #0
c0de2e74:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e76:	bf00      	nop
c0de2e78:	00802001 	.word	0x00802001
c0de2e7c:	40080040 	.word	0x40080040

c0de2e80 <next64_graingen>:
c0de2e80:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2e84:	460c      	mov	r4, r1
c0de2e86:	4605      	mov	r5, r0
c0de2e88:	f04f 0a00 	mov.w	sl, #0
c0de2e8c:	f04f 0800 	mov.w	r8, #0
c0de2e90:	2700      	movs	r7, #0
c0de2e92:	42a7      	cmp	r7, r4
c0de2e94:	d215      	bcs.n	c0de2ec2 <next64_graingen+0x42>
c0de2e96:	4628      	mov	r0, r5
c0de2e98:	f7ff ffb2 	bl	c0de2e00 <grain_lfsr_advance>
c0de2e9c:	4606      	mov	r6, r0
c0de2e9e:	4628      	mov	r0, r5
c0de2ea0:	f7ff ffae 	bl	c0de2e00 <grain_lfsr_advance>
c0de2ea4:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2ea8:	0781      	lsls	r1, r0, #30
c0de2eaa:	d5f2      	bpl.n	c0de2e92 <next64_graingen+0x12>
c0de2eac:	f000 0001 	and.w	r0, r0, #1
c0de2eb0:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2eb4:	3701      	adds	r7, #1
c0de2eb6:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2eba:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2ebe:	4682      	mov	sl, r0
c0de2ec0:	e7e7      	b.n	c0de2e92 <next64_graingen+0x12>
c0de2ec2:	4650      	mov	r0, sl
c0de2ec4:	4641      	mov	r1, r8
c0de2ec6:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2ecc <init_generator>:
c0de2ecc:	b5b0      	push	{r4, r5, r7, lr}
c0de2ece:	4a09      	ldr	r2, [pc, #36]	@ (c0de2ef4 <init_generator+0x28>)
c0de2ed0:	4b09      	ldr	r3, [pc, #36]	@ (c0de2ef8 <init_generator+0x2c>)
c0de2ed2:	4604      	mov	r4, r0
c0de2ed4:	25a0      	movs	r5, #160	@ 0xa0
c0de2ed6:	2000      	movs	r0, #0
c0de2ed8:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2edc:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2ee0:	e9c4 3200 	strd	r3, r2, [r4]
c0de2ee4:	b125      	cbz	r5, c0de2ef0 <init_generator+0x24>
c0de2ee6:	4620      	mov	r0, r4
c0de2ee8:	f7ff ff8a 	bl	c0de2e00 <grain_lfsr_advance>
c0de2eec:	3d01      	subs	r5, #1
c0de2eee:	e7f9      	b.n	c0de2ee4 <init_generator+0x18>
c0de2ef0:	bdb0      	pop	{r4, r5, r7, pc}
c0de2ef2:	bf00      	nop
c0de2ef4:	fffcf010 	.word	0xfffcf010
c0de2ef8:	1801fc02 	.word	0x1801fc02

c0de2efc <gen_integer>:
c0de2efc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2f00:	4f20      	ldr	r7, [pc, #128]	@ (c0de2f84 <gen_integer+0x88>)
c0de2f02:	4e22      	ldr	r6, [pc, #136]	@ (c0de2f8c <gen_integer+0x90>)
c0de2f04:	4605      	mov	r5, r0
c0de2f06:	460c      	mov	r4, r1
c0de2f08:	2000      	movs	r0, #0
c0de2f0a:	46b8      	mov	r8, r7
c0de2f0c:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2f88 <gen_integer+0x8c>)
c0de2f0e:	447e      	add	r6, pc
c0de2f10:	b9f8      	cbnz	r0, c0de2f52 <gen_integer+0x56>
c0de2f12:	4628      	mov	r0, r5
c0de2f14:	213e      	movs	r1, #62	@ 0x3e
c0de2f16:	47b0      	blx	r6
c0de2f18:	e9c4 0100 	strd	r0, r1, [r4]
c0de2f1c:	4628      	mov	r0, r5
c0de2f1e:	2140      	movs	r1, #64	@ 0x40
c0de2f20:	47b0      	blx	r6
c0de2f22:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2f26:	4628      	mov	r0, r5
c0de2f28:	2140      	movs	r1, #64	@ 0x40
c0de2f2a:	47b0      	blx	r6
c0de2f2c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2f30:	4628      	mov	r0, r5
c0de2f32:	2140      	movs	r1, #64	@ 0x40
c0de2f34:	47b0      	blx	r6
c0de2f36:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2f3a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2f3e:	463a      	mov	r2, r7
c0de2f40:	1bc0      	subs	r0, r0, r7
c0de2f42:	4640      	mov	r0, r8
c0de2f44:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2f48:	f04f 0000 	mov.w	r0, #0
c0de2f4c:	bf38      	it	cc
c0de2f4e:	2001      	movcc	r0, #1
c0de2f50:	e7de      	b.n	c0de2f10 <gen_integer+0x14>
c0de2f52:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2f56:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2f90 <gen_integer+0x94>)
c0de2f58:	447d      	add	r5, pc
c0de2f5a:	47a8      	blx	r5
c0de2f5c:	e9c4 0100 	strd	r0, r1, [r4]
c0de2f60:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2f64:	47a8      	blx	r5
c0de2f66:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2f6a:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2f6e:	47a8      	blx	r5
c0de2f70:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2f74:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2f78:	47a8      	blx	r5
c0de2f7a:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2f7e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2f82:	bf00      	nop
c0de2f84:	305a4b4e 	.word	0x305a4b4e
c0de2f88:	4f582122 	.word	0x4f582122
c0de2f8c:	ffffff6f 	.word	0xffffff6f
c0de2f90:	00000039 	.word	0x00000039

c0de2f94 <rev64>:
c0de2f94:	ba0a      	rev	r2, r1
c0de2f96:	ba01      	rev	r1, r0
c0de2f98:	4610      	mov	r0, r2
c0de2f9a:	4770      	bx	lr

c0de2f9c <Poseidon_getNext_RC>:
c0de2f9c:	30c0      	adds	r0, #192	@ 0xc0
c0de2f9e:	f7ff bfad 	b.w	c0de2efc <gen_integer>
	...

c0de2fa4 <Poseidon_alloc_init>:
c0de2fa4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2fa8:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2fac:	4604      	mov	r4, r0
c0de2fae:	30c0      	adds	r0, #192	@ 0xc0
c0de2fb0:	461e      	mov	r6, r3
c0de2fb2:	4617      	mov	r7, r2
c0de2fb4:	460d      	mov	r5, r1
c0de2fb6:	f7ff ff89 	bl	c0de2ecc <init_generator>
c0de2fba:	492c      	ldr	r1, [pc, #176]	@ (c0de306c <Poseidon_alloc_init+0xc8>)
c0de2fbc:	46e8      	mov	r8, sp
c0de2fbe:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2fc2:	4640      	mov	r0, r8
c0de2fc4:	4479      	add	r1, pc
c0de2fc6:	f004 fc1f 	bl	c0de7808 <__aeabi_memcpy>
c0de2fca:	2000      	movs	r0, #0
c0de2fcc:	7325      	strb	r5, [r4, #12]
c0de2fce:	6166      	str	r6, [r4, #20]
c0de2fd0:	4621      	mov	r1, r4
c0de2fd2:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2fd6:	1c78      	adds	r0, r7, #1
c0de2fd8:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2fdc:	6830      	ldr	r0, [r6, #0]
c0de2fde:	f004 f97d 	bl	c0de72dc <cx_bn_nbytes>
c0de2fe2:	b930      	cbnz	r0, c0de2ff2 <Poseidon_alloc_init+0x4e>
c0de2fe4:	4620      	mov	r0, r4
c0de2fe6:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2fea:	4631      	mov	r1, r6
c0de2fec:	f004 f956 	bl	c0de729c <cx_bn_alloc>
c0de2ff0:	b118      	cbz	r0, c0de2ffa <Poseidon_alloc_init+0x56>
c0de2ff2:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2ff6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2ffa:	68a0      	ldr	r0, [r4, #8]
c0de2ffc:	2500      	movs	r5, #0
c0de2ffe:	4285      	cmp	r5, r0
c0de3000:	d230      	bcs.n	c0de3064 <Poseidon_alloc_init+0xc0>
c0de3002:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de3006:	4631      	mov	r1, r6
c0de3008:	f107 0018 	add.w	r0, r7, #24
c0de300c:	f004 f946 	bl	c0de729c <cx_bn_alloc>
c0de3010:	2800      	cmp	r0, #0
c0de3012:	d1ee      	bne.n	c0de2ff2 <Poseidon_alloc_init+0x4e>
c0de3014:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de3018:	4631      	mov	r1, r6
c0de301a:	f004 f93f 	bl	c0de729c <cx_bn_alloc>
c0de301e:	2800      	cmp	r0, #0
c0de3020:	d1e7      	bne.n	c0de2ff2 <Poseidon_alloc_init+0x4e>
c0de3022:	2700      	movs	r7, #0
c0de3024:	68a0      	ldr	r0, [r4, #8]
c0de3026:	4287      	cmp	r7, r0
c0de3028:	d21a      	bcs.n	c0de3060 <Poseidon_alloc_init+0xbc>
c0de302a:	fb05 7000 	mla	r0, r5, r0, r7
c0de302e:	4631      	mov	r1, r6
c0de3030:	4633      	mov	r3, r6
c0de3032:	fb00 8206 	mla	r2, r0, r6, r8
c0de3036:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de303a:	3030      	adds	r0, #48	@ 0x30
c0de303c:	f004 f938 	bl	c0de72b0 <cx_bn_alloc_init>
c0de3040:	2800      	cmp	r0, #0
c0de3042:	d1d6      	bne.n	c0de2ff2 <Poseidon_alloc_init+0x4e>
c0de3044:	68a0      	ldr	r0, [r4, #8]
c0de3046:	6962      	ldr	r2, [r4, #20]
c0de3048:	fb05 7000 	mla	r0, r5, r0, r7
c0de304c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3050:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de3052:	4601      	mov	r1, r0
c0de3054:	f004 f9f6 	bl	c0de7444 <cx_mont_to_montgomery>
c0de3058:	3701      	adds	r7, #1
c0de305a:	2800      	cmp	r0, #0
c0de305c:	d0e2      	beq.n	c0de3024 <Poseidon_alloc_init+0x80>
c0de305e:	e7c8      	b.n	c0de2ff2 <Poseidon_alloc_init+0x4e>
c0de3060:	3501      	adds	r5, #1
c0de3062:	e7cc      	b.n	c0de2ffe <Poseidon_alloc_init+0x5a>
c0de3064:	2001      	movs	r0, #1
c0de3066:	6120      	str	r0, [r4, #16]
c0de3068:	2000      	movs	r0, #0
c0de306a:	e7c2      	b.n	c0de2ff2 <Poseidon_alloc_init+0x4e>
c0de306c:	00005824 	.word	0x00005824

c0de3070 <Poseidon>:
c0de3070:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3074:	b08c      	sub	sp, #48	@ 0x30
c0de3076:	4606      	mov	r6, r0
c0de3078:	6900      	ldr	r0, [r0, #16]
c0de307a:	2801      	cmp	r0, #1
c0de307c:	f040 80b4 	bne.w	c0de31e8 <Poseidon+0x178>
c0de3080:	69b0      	ldr	r0, [r6, #24]
c0de3082:	461f      	mov	r7, r3
c0de3084:	4692      	mov	sl, r2
c0de3086:	f004 f949 	bl	c0de731c <cx_bn_set_u32>
c0de308a:	2800      	cmp	r0, #0
c0de308c:	f040 80ad 	bne.w	c0de31ea <Poseidon+0x17a>
c0de3090:	f106 000c 	add.w	r0, r6, #12
c0de3094:	f106 0818 	add.w	r8, r6, #24
c0de3098:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de309c:	9001      	str	r0, [sp, #4]
c0de309e:	2000      	movs	r0, #0
c0de30a0:	2844      	cmp	r0, #68	@ 0x44
c0de30a2:	f000 80ae 	beq.w	c0de3202 <Poseidon+0x192>
c0de30a6:	6834      	ldr	r4, [r6, #0]
c0de30a8:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de30ac:	f04f 0a00 	mov.w	sl, #0
c0de30b0:	68b0      	ldr	r0, [r6, #8]
c0de30b2:	4582      	cmp	sl, r0
c0de30b4:	d224      	bcs.n	c0de3100 <Poseidon+0x90>
c0de30b6:	ad04      	add	r5, sp, #16
c0de30b8:	4658      	mov	r0, fp
c0de30ba:	4629      	mov	r1, r5
c0de30bc:	f7ff ff1e 	bl	c0de2efc <gen_integer>
c0de30c0:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de30c4:	4629      	mov	r1, r5
c0de30c6:	4622      	mov	r2, r4
c0de30c8:	f004 f912 	bl	c0de72f0 <cx_bn_init>
c0de30cc:	2800      	cmp	r0, #0
c0de30ce:	f040 808c 	bne.w	c0de31ea <Poseidon+0x17a>
c0de30d2:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de30d6:	6972      	ldr	r2, [r6, #20]
c0de30d8:	4601      	mov	r1, r0
c0de30da:	f004 f9b3 	bl	c0de7444 <cx_mont_to_montgomery>
c0de30de:	2800      	cmp	r0, #0
c0de30e0:	f040 8083 	bne.w	c0de31ea <Poseidon+0x17a>
c0de30e4:	6972      	ldr	r2, [r6, #20]
c0de30e6:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de30ea:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de30ee:	6813      	ldr	r3, [r2, #0]
c0de30f0:	4602      	mov	r2, r0
c0de30f2:	f004 f94d 	bl	c0de7390 <cx_bn_mod_add>
c0de30f6:	f10a 0a01 	add.w	sl, sl, #1
c0de30fa:	2800      	cmp	r0, #0
c0de30fc:	d0d8      	beq.n	c0de30b0 <Poseidon+0x40>
c0de30fe:	e074      	b.n	c0de31ea <Poseidon+0x17a>
c0de3100:	9902      	ldr	r1, [sp, #8]
c0de3102:	2904      	cmp	r1, #4
c0de3104:	d301      	bcc.n	c0de310a <Poseidon+0x9a>
c0de3106:	2940      	cmp	r1, #64	@ 0x40
c0de3108:	d323      	bcc.n	c0de3152 <Poseidon+0xe2>
c0de310a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de310e:	2400      	movs	r4, #0
c0de3110:	4284      	cmp	r4, r0
c0de3112:	d22b      	bcs.n	c0de316c <Poseidon+0xfc>
c0de3114:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3118:	6973      	ldr	r3, [r6, #20]
c0de311a:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de311e:	460a      	mov	r2, r1
c0de3120:	f004 f9a8 	bl	c0de7474 <cx_mont_mul>
c0de3124:	2800      	cmp	r0, #0
c0de3126:	d160      	bne.n	c0de31ea <Poseidon+0x17a>
c0de3128:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de312c:	6973      	ldr	r3, [r6, #20]
c0de312e:	460a      	mov	r2, r1
c0de3130:	f004 f9a0 	bl	c0de7474 <cx_mont_mul>
c0de3134:	2800      	cmp	r0, #0
c0de3136:	d158      	bne.n	c0de31ea <Poseidon+0x17a>
c0de3138:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de313c:	6973      	ldr	r3, [r6, #20]
c0de313e:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de3142:	4601      	mov	r1, r0
c0de3144:	f004 f996 	bl	c0de7474 <cx_mont_mul>
c0de3148:	2800      	cmp	r0, #0
c0de314a:	d14e      	bne.n	c0de31ea <Poseidon+0x17a>
c0de314c:	68b0      	ldr	r0, [r6, #8]
c0de314e:	3401      	adds	r4, #1
c0de3150:	e7de      	b.n	c0de3110 <Poseidon+0xa0>
c0de3152:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3156:	9a01      	ldr	r2, [sp, #4]
c0de3158:	2301      	movs	r3, #1
c0de315a:	9100      	str	r1, [sp, #0]
c0de315c:	4601      	mov	r1, r0
c0de315e:	f004 f995 	bl	c0de748c <cx_mont_pow>
c0de3162:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3166:	2800      	cmp	r0, #0
c0de3168:	d13f      	bne.n	c0de31ea <Poseidon+0x17a>
c0de316a:	68b0      	ldr	r0, [r6, #8]
c0de316c:	2500      	movs	r5, #0
c0de316e:	4285      	cmp	r5, r0
c0de3170:	d229      	bcs.n	c0de31c6 <Poseidon+0x156>
c0de3172:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3176:	2100      	movs	r1, #0
c0de3178:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de317c:	f004 f8ce 	bl	c0de731c <cx_bn_set_u32>
c0de3180:	bb98      	cbnz	r0, c0de31ea <Poseidon+0x17a>
c0de3182:	9503      	str	r5, [sp, #12]
c0de3184:	2500      	movs	r5, #0
c0de3186:	68b0      	ldr	r0, [r6, #8]
c0de3188:	4285      	cmp	r5, r0
c0de318a:	d219      	bcs.n	c0de31c0 <Poseidon+0x150>
c0de318c:	9903      	ldr	r1, [sp, #12]
c0de318e:	6973      	ldr	r3, [r6, #20]
c0de3190:	fb01 5000 	mla	r0, r1, r0, r5
c0de3194:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3198:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de319c:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de319e:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de31a2:	f004 f967 	bl	c0de7474 <cx_mont_mul>
c0de31a6:	bb00      	cbnz	r0, c0de31ea <Poseidon+0x17a>
c0de31a8:	6971      	ldr	r1, [r6, #20]
c0de31aa:	6820      	ldr	r0, [r4, #0]
c0de31ac:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de31b0:	680b      	ldr	r3, [r1, #0]
c0de31b2:	4601      	mov	r1, r0
c0de31b4:	f004 f8ec 	bl	c0de7390 <cx_bn_mod_add>
c0de31b8:	3501      	adds	r5, #1
c0de31ba:	2800      	cmp	r0, #0
c0de31bc:	d0e3      	beq.n	c0de3186 <Poseidon+0x116>
c0de31be:	e014      	b.n	c0de31ea <Poseidon+0x17a>
c0de31c0:	9d03      	ldr	r5, [sp, #12]
c0de31c2:	3501      	adds	r5, #1
c0de31c4:	e7d3      	b.n	c0de316e <Poseidon+0xfe>
c0de31c6:	2400      	movs	r4, #0
c0de31c8:	4284      	cmp	r4, r0
c0de31ca:	d20a      	bcs.n	c0de31e2 <Poseidon+0x172>
c0de31cc:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de31d0:	6988      	ldr	r0, [r1, #24]
c0de31d2:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de31d6:	f004 f897 	bl	c0de7308 <cx_bn_copy>
c0de31da:	b930      	cbnz	r0, c0de31ea <Poseidon+0x17a>
c0de31dc:	68b0      	ldr	r0, [r6, #8]
c0de31de:	3401      	adds	r4, #1
c0de31e0:	e7f2      	b.n	c0de31c8 <Poseidon+0x158>
c0de31e2:	9802      	ldr	r0, [sp, #8]
c0de31e4:	3001      	adds	r0, #1
c0de31e6:	e75b      	b.n	c0de30a0 <Poseidon+0x30>
c0de31e8:	4808      	ldr	r0, [pc, #32]	@ (c0de320c <Poseidon+0x19c>)
c0de31ea:	b00c      	add	sp, #48	@ 0x30
c0de31ec:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de31f0:	f858 1b04 	ldr.w	r1, [r8], #4
c0de31f4:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de31f8:	f004 f886 	bl	c0de7308 <cx_bn_copy>
c0de31fc:	3f01      	subs	r7, #1
c0de31fe:	2800      	cmp	r0, #0
c0de3200:	d1f3      	bne.n	c0de31ea <Poseidon+0x17a>
c0de3202:	2f00      	cmp	r7, #0
c0de3204:	d1f4      	bne.n	c0de31f0 <Poseidon+0x180>
c0de3206:	2000      	movs	r0, #0
c0de3208:	e7ef      	b.n	c0de31ea <Poseidon+0x17a>
c0de320a:	bf00      	nop
c0de320c:	5a4b4e02 	.word	0x5a4b4e02

c0de3210 <RFC9591_taggedHash>:
c0de3210:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3212:	b0d9      	sub	sp, #356	@ 0x164
c0de3214:	460e      	mov	r6, r1
c0de3216:	4607      	mov	r7, r0
c0de3218:	a858      	add	r0, sp, #352	@ 0x160
c0de321a:	2140      	movs	r1, #64	@ 0x40
c0de321c:	461c      	mov	r4, r3
c0de321e:	4615      	mov	r5, r2
c0de3220:	f004 f83c 	bl	c0de729c <cx_bn_alloc>
c0de3224:	bbd8      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de3226:	491f      	ldr	r1, [pc, #124]	@ (c0de32a4 <RFC9591_taggedHash+0x94>)
c0de3228:	4668      	mov	r0, sp
c0de322a:	221d      	movs	r2, #29
c0de322c:	4479      	add	r1, pc
c0de322e:	f004 faeb 	bl	c0de7808 <__aeabi_memcpy>
c0de3232:	a808      	add	r0, sp, #32
c0de3234:	2109      	movs	r1, #9
c0de3236:	2240      	movs	r2, #64	@ 0x40
c0de3238:	f003 fdc4 	bl	c0de6dc4 <cx_hash_init_ex>
c0de323c:	bb78      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de323e:	a808      	add	r0, sp, #32
c0de3240:	4669      	mov	r1, sp
c0de3242:	221d      	movs	r2, #29
c0de3244:	f003 fdc3 	bl	c0de6dce <cx_hash_update>
c0de3248:	bb48      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de324a:	a808      	add	r0, sp, #32
c0de324c:	4639      	mov	r1, r7
c0de324e:	4632      	mov	r2, r6
c0de3250:	f003 fdbd 	bl	c0de6dce <cx_hash_update>
c0de3254:	bb18      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de3256:	a808      	add	r0, sp, #32
c0de3258:	4629      	mov	r1, r5
c0de325a:	4622      	mov	r2, r4
c0de325c:	f003 fdb7 	bl	c0de6dce <cx_hash_update>
c0de3260:	b9e8      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de3262:	a808      	add	r0, sp, #32
c0de3264:	ae48      	add	r6, sp, #288	@ 0x120
c0de3266:	4631      	mov	r1, r6
c0de3268:	f003 fda7 	bl	c0de6dba <cx_hash_final>
c0de326c:	b9b8      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de326e:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de3272:	2000      	movs	r0, #0
c0de3274:	213f      	movs	r1, #63	@ 0x3f
c0de3276:	2820      	cmp	r0, #32
c0de3278:	d002      	beq.n	c0de3280 <RFC9591_taggedHash+0x70>
c0de327a:	f000 f8dd 	bl	c0de3438 <OUTLINED_FUNCTION_3>
c0de327e:	e7fa      	b.n	c0de3276 <RFC9591_taggedHash+0x66>
c0de3280:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de3282:	a948      	add	r1, sp, #288	@ 0x120
c0de3284:	2240      	movs	r2, #64	@ 0x40
c0de3286:	f004 f833 	bl	c0de72f0 <cx_bn_init>
c0de328a:	b940      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de328c:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de328e:	4628      	mov	r0, r5
c0de3290:	4622      	mov	r2, r4
c0de3292:	f004 f8a1 	bl	c0de73d8 <cx_bn_reduce>
c0de3296:	b910      	cbnz	r0, c0de329e <RFC9591_taggedHash+0x8e>
c0de3298:	a858      	add	r0, sp, #352	@ 0x160
c0de329a:	f004 f815 	bl	c0de72c8 <cx_bn_destroy>
c0de329e:	b059      	add	sp, #356	@ 0x164
c0de32a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de32a2:	bf00      	nop
c0de32a4:	00005a3c 	.word	0x00005a3c

c0de32a8 <Babyfrost_H1>:
c0de32a8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de32aa:	4605      	mov	r5, r0
c0de32ac:	206f      	movs	r0, #111	@ 0x6f
c0de32ae:	f000 f8b7 	bl	c0de3420 <OUTLINED_FUNCTION_1>
c0de32b2:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de32b6:	f000 f8ba 	bl	c0de342e <OUTLINED_FUNCTION_2>
c0de32ba:	a803      	add	r0, sp, #12
c0de32bc:	f7ff ffa8 	bl	c0de3210 <RFC9591_taggedHash>
c0de32c0:	b004      	add	sp, #16
c0de32c2:	bdb0      	pop	{r4, r5, r7, pc}

c0de32c4 <Babyfrost_H3>:
c0de32c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de32c6:	4605      	mov	r5, r0
c0de32c8:	2065      	movs	r0, #101	@ 0x65
c0de32ca:	460c      	mov	r4, r1
c0de32cc:	e9cd 2300 	strd	r2, r3, [sp]
c0de32d0:	2105      	movs	r1, #5
c0de32d2:	f88d 000c 	strb.w	r0, [sp, #12]
c0de32d6:	4804      	ldr	r0, [pc, #16]	@ (c0de32e8 <Babyfrost_H3+0x24>)
c0de32d8:	462a      	mov	r2, r5
c0de32da:	4623      	mov	r3, r4
c0de32dc:	9002      	str	r0, [sp, #8]
c0de32de:	a802      	add	r0, sp, #8
c0de32e0:	f7ff ff96 	bl	c0de3210 <RFC9591_taggedHash>
c0de32e4:	b004      	add	sp, #16
c0de32e6:	bdb0      	pop	{r4, r5, r7, pc}
c0de32e8:	636e6f6e 	.word	0x636e6f6e

c0de32ec <Babyfrost_H4>:
c0de32ec:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de32ee:	4605      	mov	r5, r0
c0de32f0:	2067      	movs	r0, #103	@ 0x67
c0de32f2:	f000 f895 	bl	c0de3420 <OUTLINED_FUNCTION_1>
c0de32f6:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de32fa:	f000 f898 	bl	c0de342e <OUTLINED_FUNCTION_2>
c0de32fe:	a803      	add	r0, sp, #12
c0de3300:	f7ff ff86 	bl	c0de3210 <RFC9591_taggedHash>
c0de3304:	b004      	add	sp, #16
c0de3306:	bdb0      	pop	{r4, r5, r7, pc}

c0de3308 <Babyfrost_H5>:
c0de3308:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de330a:	4605      	mov	r5, r0
c0de330c:	206d      	movs	r0, #109	@ 0x6d
c0de330e:	f000 f887 	bl	c0de3420 <OUTLINED_FUNCTION_1>
c0de3312:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3316:	f000 f88a 	bl	c0de342e <OUTLINED_FUNCTION_2>
c0de331a:	a803      	add	r0, sp, #12
c0de331c:	f7ff ff78 	bl	c0de3210 <RFC9591_taggedHash>
c0de3320:	b004      	add	sp, #16
c0de3322:	bdb0      	pop	{r4, r5, r7, pc}

c0de3324 <zkn_frost_hash_init>:
c0de3324:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3326:	461d      	mov	r5, r3
c0de3328:	4604      	mov	r4, r0
c0de332a:	f003 fd4b 	bl	c0de6dc4 <cx_hash_init_ex>
c0de332e:	b938      	cbnz	r0, c0de3340 <zkn_frost_hash_init+0x1c>
c0de3330:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de3334:	9e08      	ldr	r6, [sp, #32]
c0de3336:	4620      	mov	r0, r4
c0de3338:	4629      	mov	r1, r5
c0de333a:	f003 fd48 	bl	c0de6dce <cx_hash_update>
c0de333e:	b100      	cbz	r0, c0de3342 <zkn_frost_hash_init+0x1e>
c0de3340:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3342:	4620      	mov	r0, r4
c0de3344:	4639      	mov	r1, r7
c0de3346:	4632      	mov	r2, r6
c0de3348:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de334c:	f003 bd3f 	b.w	c0de6dce <cx_hash_update>

c0de3350 <zkn_frost_H1_init>:
c0de3350:	b570      	push	{r4, r5, r6, lr}
c0de3352:	b08c      	sub	sp, #48	@ 0x30
c0de3354:	4604      	mov	r4, r0
c0de3356:	206f      	movs	r0, #111	@ 0x6f
c0de3358:	221d      	movs	r2, #29
c0de335a:	261d      	movs	r6, #29
c0de335c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3360:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3364:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3368:	ad03      	add	r5, sp, #12
c0de336a:	4905      	ldr	r1, [pc, #20]	@ (c0de3380 <zkn_frost_H1_init+0x30>)
c0de336c:	4628      	mov	r0, r5
c0de336e:	4479      	add	r1, pc
c0de3370:	f004 fa4a 	bl	c0de7808 <__aeabi_memcpy>
c0de3374:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3376:	f000 f849 	bl	c0de340c <OUTLINED_FUNCTION_0>
c0de337a:	b00c      	add	sp, #48	@ 0x30
c0de337c:	bd70      	pop	{r4, r5, r6, pc}
c0de337e:	bf00      	nop
c0de3380:	000058fa 	.word	0x000058fa

c0de3384 <zkn_frost_H5_init>:
c0de3384:	b570      	push	{r4, r5, r6, lr}
c0de3386:	b08c      	sub	sp, #48	@ 0x30
c0de3388:	4604      	mov	r4, r0
c0de338a:	206d      	movs	r0, #109	@ 0x6d
c0de338c:	221d      	movs	r2, #29
c0de338e:	261d      	movs	r6, #29
c0de3390:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3394:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3398:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de339c:	ad03      	add	r5, sp, #12
c0de339e:	4905      	ldr	r1, [pc, #20]	@ (c0de33b4 <zkn_frost_H5_init+0x30>)
c0de33a0:	4628      	mov	r0, r5
c0de33a2:	4479      	add	r1, pc
c0de33a4:	f004 fa30 	bl	c0de7808 <__aeabi_memcpy>
c0de33a8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de33aa:	f000 f82f 	bl	c0de340c <OUTLINED_FUNCTION_0>
c0de33ae:	b00c      	add	sp, #48	@ 0x30
c0de33b0:	bd70      	pop	{r4, r5, r6, pc}
c0de33b2:	bf00      	nop
c0de33b4:	000058c6 	.word	0x000058c6

c0de33b8 <zkn_frost_hash_update>:
c0de33b8:	f003 bd09 	b.w	c0de6dce <cx_hash_update>

c0de33bc <zkn_frost_hash_final>:
c0de33bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de33be:	b091      	sub	sp, #68	@ 0x44
c0de33c0:	460c      	mov	r4, r1
c0de33c2:	4607      	mov	r7, r0
c0de33c4:	a810      	add	r0, sp, #64	@ 0x40
c0de33c6:	2140      	movs	r1, #64	@ 0x40
c0de33c8:	4615      	mov	r5, r2
c0de33ca:	f003 ff67 	bl	c0de729c <cx_bn_alloc>
c0de33ce:	b9d8      	cbnz	r0, c0de3408 <zkn_frost_hash_final+0x4c>
c0de33d0:	466e      	mov	r6, sp
c0de33d2:	4638      	mov	r0, r7
c0de33d4:	4631      	mov	r1, r6
c0de33d6:	f003 fcf0 	bl	c0de6dba <cx_hash_final>
c0de33da:	b9a8      	cbnz	r0, c0de3408 <zkn_frost_hash_final+0x4c>
c0de33dc:	2000      	movs	r0, #0
c0de33de:	213f      	movs	r1, #63	@ 0x3f
c0de33e0:	2820      	cmp	r0, #32
c0de33e2:	d002      	beq.n	c0de33ea <zkn_frost_hash_final+0x2e>
c0de33e4:	f000 f828 	bl	c0de3438 <OUTLINED_FUNCTION_3>
c0de33e8:	e7fa      	b.n	c0de33e0 <zkn_frost_hash_final+0x24>
c0de33ea:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de33ec:	4669      	mov	r1, sp
c0de33ee:	2240      	movs	r2, #64	@ 0x40
c0de33f0:	f003 ff7e 	bl	c0de72f0 <cx_bn_init>
c0de33f4:	b940      	cbnz	r0, c0de3408 <zkn_frost_hash_final+0x4c>
c0de33f6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de33f8:	4628      	mov	r0, r5
c0de33fa:	4622      	mov	r2, r4
c0de33fc:	f003 ffec 	bl	c0de73d8 <cx_bn_reduce>
c0de3400:	b910      	cbnz	r0, c0de3408 <zkn_frost_hash_final+0x4c>
c0de3402:	a810      	add	r0, sp, #64	@ 0x40
c0de3404:	f003 ff60 	bl	c0de72c8 <cx_bn_destroy>
c0de3408:	b011      	add	sp, #68	@ 0x44
c0de340a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de340c <OUTLINED_FUNCTION_0>:
c0de340c:	2003      	movs	r0, #3
c0de340e:	2240      	movs	r2, #64	@ 0x40
c0de3410:	462b      	mov	r3, r5
c0de3412:	e9cd 6100 	strd	r6, r1, [sp]
c0de3416:	9002      	str	r0, [sp, #8]
c0de3418:	4620      	mov	r0, r4
c0de341a:	2109      	movs	r1, #9
c0de341c:	f7ff bf82 	b.w	c0de3324 <zkn_frost_hash_init>

c0de3420 <OUTLINED_FUNCTION_1>:
c0de3420:	460c      	mov	r4, r1
c0de3422:	e9cd 2300 	strd	r2, r3, [sp]
c0de3426:	2103      	movs	r1, #3
c0de3428:	f88d 000e 	strb.w	r0, [sp, #14]
c0de342c:	4770      	bx	lr

c0de342e <OUTLINED_FUNCTION_2>:
c0de342e:	462a      	mov	r2, r5
c0de3430:	4623      	mov	r3, r4
c0de3432:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3436:	4770      	bx	lr

c0de3438 <OUTLINED_FUNCTION_3>:
c0de3438:	5c32      	ldrb	r2, [r6, r0]
c0de343a:	5c73      	ldrb	r3, [r6, r1]
c0de343c:	5433      	strb	r3, [r6, r0]
c0de343e:	5472      	strb	r2, [r6, r1]
c0de3440:	3901      	subs	r1, #1
c0de3442:	3001      	adds	r0, #1
c0de3444:	4770      	bx	lr

c0de3446 <os_io_handle_default_apdu>:
c0de3446:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3448:	b09d      	sub	sp, #116	@ 0x74
c0de344a:	4615      	mov	r5, r2
c0de344c:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de344e:	b3c8      	cbz	r0, c0de34c4 <os_io_handle_default_apdu+0x7e>
c0de3450:	b3c1      	cbz	r1, c0de34c4 <os_io_handle_default_apdu+0x7e>
c0de3452:	b3bd      	cbz	r5, c0de34c4 <os_io_handle_default_apdu+0x7e>
c0de3454:	461c      	mov	r4, r3
c0de3456:	b3ab      	cbz	r3, c0de34c4 <os_io_handle_default_apdu+0x7e>
c0de3458:	b10a      	cbz	r2, c0de345e <os_io_handle_default_apdu+0x18>
c0de345a:	2100      	movs	r1, #0
c0de345c:	7011      	strb	r1, [r2, #0]
c0de345e:	7801      	ldrb	r1, [r0, #0]
c0de3460:	29b0      	cmp	r1, #176	@ 0xb0
c0de3462:	d131      	bne.n	c0de34c8 <os_io_handle_default_apdu+0x82>
c0de3464:	7841      	ldrb	r1, [r0, #1]
c0de3466:	29a7      	cmp	r1, #167	@ 0xa7
c0de3468:	d031      	beq.n	c0de34ce <os_io_handle_default_apdu+0x88>
c0de346a:	2906      	cmp	r1, #6
c0de346c:	d036      	beq.n	c0de34dc <os_io_handle_default_apdu+0x96>
c0de346e:	2901      	cmp	r1, #1
c0de3470:	d131      	bne.n	c0de34d6 <os_io_handle_default_apdu+0x90>
c0de3472:	7881      	ldrb	r1, [r0, #2]
c0de3474:	bb79      	cbnz	r1, c0de34d6 <os_io_handle_default_apdu+0x90>
c0de3476:	78c0      	ldrb	r0, [r0, #3]
c0de3478:	bb68      	cbnz	r0, c0de34d6 <os_io_handle_default_apdu+0x90>
c0de347a:	6820      	ldr	r0, [r4, #0]
c0de347c:	2100      	movs	r1, #0
c0de347e:	6021      	str	r1, [r4, #0]
c0de3480:	2803      	cmp	r0, #3
c0de3482:	d321      	bcc.n	c0de34c8 <os_io_handle_default_apdu+0x82>
c0de3484:	2601      	movs	r6, #1
c0de3486:	1ec7      	subs	r7, r0, #3
c0de3488:	6026      	str	r6, [r4, #0]
c0de348a:	702e      	strb	r6, [r5, #0]
c0de348c:	6820      	ldr	r0, [r4, #0]
c0de348e:	1a3a      	subs	r2, r7, r0
c0de3490:	4428      	add	r0, r5
c0de3492:	1c41      	adds	r1, r0, #1
c0de3494:	2001      	movs	r0, #1
c0de3496:	f004 f86f 	bl	c0de7578 <os_registry_get_current_app_tag>
c0de349a:	f000 f83f 	bl	c0de351c <OUTLINED_FUNCTION_0>
c0de349e:	6020      	str	r0, [r4, #0]
c0de34a0:	1a3a      	subs	r2, r7, r0
c0de34a2:	4428      	add	r0, r5
c0de34a4:	1c41      	adds	r1, r0, #1
c0de34a6:	2002      	movs	r0, #2
c0de34a8:	f004 f866 	bl	c0de7578 <os_registry_get_current_app_tag>
c0de34ac:	f000 f836 	bl	c0de351c <OUTLINED_FUNCTION_0>
c0de34b0:	1c41      	adds	r1, r0, #1
c0de34b2:	6021      	str	r1, [r4, #0]
c0de34b4:	542e      	strb	r6, [r5, r0]
c0de34b6:	f004 f857 	bl	c0de7568 <os_flags>
c0de34ba:	6821      	ldr	r1, [r4, #0]
c0de34bc:	1c4a      	adds	r2, r1, #1
c0de34be:	6022      	str	r2, [r4, #0]
c0de34c0:	5468      	strb	r0, [r5, r1]
c0de34c2:	e028      	b.n	c0de3516 <os_io_handle_default_apdu+0xd0>
c0de34c4:	7814      	ldrb	r4, [r2, #0]
c0de34c6:	e01e      	b.n	c0de3506 <os_io_handle_default_apdu+0xc0>
c0de34c8:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de34cc:	e01b      	b.n	c0de3506 <os_io_handle_default_apdu+0xc0>
c0de34ce:	7881      	ldrb	r1, [r0, #2]
c0de34d0:	b909      	cbnz	r1, c0de34d6 <os_io_handle_default_apdu+0x90>
c0de34d2:	78c0      	ldrb	r0, [r0, #3]
c0de34d4:	b1d0      	cbz	r0, c0de350c <os_io_handle_default_apdu+0xc6>
c0de34d6:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de34da:	e014      	b.n	c0de3506 <os_io_handle_default_apdu+0xc0>
c0de34dc:	2100      	movs	r1, #0
c0de34de:	6021      	str	r1, [r4, #0]
c0de34e0:	7883      	ldrb	r3, [r0, #2]
c0de34e2:	7902      	ldrb	r2, [r0, #4]
c0de34e4:	ad02      	add	r5, sp, #8
c0de34e6:	e9cd 1500 	strd	r1, r5, [sp]
c0de34ea:	1d41      	adds	r1, r0, #5
c0de34ec:	4618      	mov	r0, r3
c0de34ee:	2300      	movs	r3, #0
c0de34f0:	f004 f806 	bl	c0de7500 <os_pki_load_certificate>
c0de34f4:	4604      	mov	r4, r0
c0de34f6:	4628      	mov	r0, r5
c0de34f8:	216c      	movs	r1, #108	@ 0x6c
c0de34fa:	f004 f99d 	bl	c0de7838 <explicit_bzero>
c0de34fe:	2c00      	cmp	r4, #0
c0de3500:	bf08      	it	eq
c0de3502:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3506:	4620      	mov	r0, r4
c0de3508:	b01d      	add	sp, #116	@ 0x74
c0de350a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de350c:	2000      	movs	r0, #0
c0de350e:	6020      	str	r0, [r4, #0]
c0de3510:	b10a      	cbz	r2, c0de3516 <os_io_handle_default_apdu+0xd0>
c0de3512:	2001      	movs	r0, #1
c0de3514:	7010      	strb	r0, [r2, #0]
c0de3516:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de351a:	e7f4      	b.n	c0de3506 <os_io_handle_default_apdu+0xc0>

c0de351c <OUTLINED_FUNCTION_0>:
c0de351c:	6821      	ldr	r1, [r4, #0]
c0de351e:	1c4a      	adds	r2, r1, #1
c0de3520:	6022      	str	r2, [r4, #0]
c0de3522:	5468      	strb	r0, [r5, r1]
c0de3524:	6821      	ldr	r1, [r4, #0]
c0de3526:	4408      	add	r0, r1
c0de3528:	4770      	bx	lr

c0de352a <io_process_itc_ux_event>:
c0de352a:	b580      	push	{r7, lr}
c0de352c:	78c0      	ldrb	r0, [r0, #3]
c0de352e:	2820      	cmp	r0, #32
c0de3530:	d107      	bne.n	c0de3542 <io_process_itc_ux_event+0x18>
c0de3532:	2001      	movs	r0, #1
c0de3534:	f003 fc65 	bl	c0de6e02 <nbgl_objAllowDrawing>
c0de3538:	f003 fc72 	bl	c0de6e20 <nbgl_screenRedraw>
c0de353c:	f003 fc57 	bl	c0de6dee <nbgl_refresh>
c0de3540:	2100      	movs	r1, #0
c0de3542:	4608      	mov	r0, r1
c0de3544:	bd80      	pop	{r7, pc}
	...

c0de3548 <io_legacy_apdu_tx>:
c0de3548:	b5b0      	push	{r4, r5, r7, lr}
c0de354a:	460a      	mov	r2, r1
c0de354c:	4601      	mov	r1, r0
c0de354e:	4806      	ldr	r0, [pc, #24]	@ (c0de3568 <io_legacy_apdu_tx+0x20>)
c0de3550:	2300      	movs	r3, #0
c0de3552:	2500      	movs	r5, #0
c0de3554:	eb09 0400 	add.w	r4, r9, r0
c0de3558:	7860      	ldrb	r0, [r4, #1]
c0de355a:	f004 f837 	bl	c0de75cc <os_io_tx_cmd>
c0de355e:	4903      	ldr	r1, [pc, #12]	@ (c0de356c <io_legacy_apdu_tx+0x24>)
c0de3560:	7065      	strb	r5, [r4, #1]
c0de3562:	4449      	add	r1, r9
c0de3564:	718d      	strb	r5, [r1, #6]
c0de3566:	bdb0      	pop	{r4, r5, r7, pc}
c0de3568:	0000064a 	.word	0x0000064a
c0de356c:	00000642 	.word	0x00000642

c0de3570 <io_legacy_apdu_rx>:
c0de3570:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3572:	4e65      	ldr	r6, [pc, #404]	@ (c0de3708 <io_legacy_apdu_rx+0x198>)
c0de3574:	2100      	movs	r1, #0
c0de3576:	4605      	mov	r5, r0
c0de3578:	2200      	movs	r2, #0
c0de357a:	2301      	movs	r3, #1
c0de357c:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3580:	f240 1111 	movw	r1, #273	@ 0x111
c0de3584:	eb09 0006 	add.w	r0, r9, r6
c0de3588:	f004 f82c 	bl	c0de75e4 <os_io_rx_evt>
c0de358c:	4604      	mov	r4, r0
c0de358e:	2801      	cmp	r0, #1
c0de3590:	f2c0 80b5 	blt.w	c0de36fe <io_legacy_apdu_rx+0x18e>
c0de3594:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3598:	f1a0 0110 	sub.w	r1, r0, #16
c0de359c:	2916      	cmp	r1, #22
c0de359e:	d843      	bhi.n	c0de3628 <io_legacy_apdu_rx+0xb8>
c0de35a0:	2201      	movs	r2, #1
c0de35a2:	fa02 f101 	lsl.w	r1, r2, r1
c0de35a6:	4a59      	ldr	r2, [pc, #356]	@ (c0de370c <io_legacy_apdu_rx+0x19c>)
c0de35a8:	4211      	tst	r1, r2
c0de35aa:	d03d      	beq.n	c0de3628 <io_legacy_apdu_rx+0xb8>
c0de35ac:	4f58      	ldr	r7, [pc, #352]	@ (c0de3710 <io_legacy_apdu_rx+0x1a0>)
c0de35ae:	eb09 0107 	add.w	r1, r9, r7
c0de35b2:	7048      	strb	r0, [r1, #1]
c0de35b4:	f003 ffb4 	bl	c0de7520 <os_perso_is_pin_set>
c0de35b8:	28aa      	cmp	r0, #170	@ 0xaa
c0de35ba:	d103      	bne.n	c0de35c4 <io_legacy_apdu_rx+0x54>
c0de35bc:	f003 ffb9 	bl	c0de7532 <os_global_pin_is_validated>
c0de35c0:	28aa      	cmp	r0, #170	@ 0xaa
c0de35c2:	d14d      	bne.n	c0de3660 <io_legacy_apdu_rx+0xf0>
c0de35c4:	eb09 0006 	add.w	r0, r9, r6
c0de35c8:	7840      	ldrb	r0, [r0, #1]
c0de35ca:	28b0      	cmp	r0, #176	@ 0xb0
c0de35cc:	d134      	bne.n	c0de3638 <io_legacy_apdu_rx+0xc8>
c0de35ce:	f240 1011 	movw	r0, #273	@ 0x111
c0de35d2:	1e61      	subs	r1, r4, #1
c0de35d4:	9001      	str	r0, [sp, #4]
c0de35d6:	f10d 000b 	add.w	r0, sp, #11
c0de35da:	9000      	str	r0, [sp, #0]
c0de35dc:	484d      	ldr	r0, [pc, #308]	@ (c0de3714 <io_legacy_apdu_rx+0x1a4>)
c0de35de:	ab01      	add	r3, sp, #4
c0de35e0:	eb09 0500 	add.w	r5, r9, r0
c0de35e4:	eb09 0006 	add.w	r0, r9, r6
c0de35e8:	3001      	adds	r0, #1
c0de35ea:	462a      	mov	r2, r5
c0de35ec:	f7ff ff2b 	bl	c0de3446 <os_io_handle_default_apdu>
c0de35f0:	2400      	movs	r4, #0
c0de35f2:	9901      	ldr	r1, [sp, #4]
c0de35f4:	eb09 0607 	add.w	r6, r9, r7
c0de35f8:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de35fc:	bf18      	it	ne
c0de35fe:	4621      	movne	r1, r4
c0de3600:	0a02      	lsrs	r2, r0, #8
c0de3602:	2300      	movs	r3, #0
c0de3604:	546a      	strb	r2, [r5, r1]
c0de3606:	186a      	adds	r2, r5, r1
c0de3608:	7050      	strb	r0, [r2, #1]
c0de360a:	1c88      	adds	r0, r1, #2
c0de360c:	4629      	mov	r1, r5
c0de360e:	9001      	str	r0, [sp, #4]
c0de3610:	b282      	uxth	r2, r0
c0de3612:	7870      	ldrb	r0, [r6, #1]
c0de3614:	f003 ffda 	bl	c0de75cc <os_io_tx_cmd>
c0de3618:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de361c:	7074      	strb	r4, [r6, #1]
c0de361e:	2901      	cmp	r1, #1
c0de3620:	d06f      	beq.n	c0de3702 <io_legacy_apdu_rx+0x192>
c0de3622:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3626:	e06a      	b.n	c0de36fe <io_legacy_apdu_rx+0x18e>
c0de3628:	1e41      	subs	r1, r0, #1
c0de362a:	2902      	cmp	r1, #2
c0de362c:	d32a      	bcc.n	c0de3684 <io_legacy_apdu_rx+0x114>
c0de362e:	2830      	cmp	r0, #48	@ 0x30
c0de3630:	d0bc      	beq.n	c0de35ac <io_legacy_apdu_rx+0x3c>
c0de3632:	2840      	cmp	r0, #64	@ 0x40
c0de3634:	d0ba      	beq.n	c0de35ac <io_legacy_apdu_rx+0x3c>
c0de3636:	e061      	b.n	c0de36fc <io_legacy_apdu_rx+0x18c>
c0de3638:	eb09 0007 	add.w	r0, r9, r7
c0de363c:	7840      	ldrb	r0, [r0, #1]
c0de363e:	2810      	cmp	r0, #16
c0de3640:	d040      	beq.n	c0de36c4 <io_legacy_apdu_rx+0x154>
c0de3642:	2840      	cmp	r0, #64	@ 0x40
c0de3644:	d040      	beq.n	c0de36c8 <io_legacy_apdu_rx+0x158>
c0de3646:	2821      	cmp	r0, #33	@ 0x21
c0de3648:	d040      	beq.n	c0de36cc <io_legacy_apdu_rx+0x15c>
c0de364a:	2822      	cmp	r0, #34	@ 0x22
c0de364c:	d034      	beq.n	c0de36b8 <io_legacy_apdu_rx+0x148>
c0de364e:	2823      	cmp	r0, #35	@ 0x23
c0de3650:	d034      	beq.n	c0de36bc <io_legacy_apdu_rx+0x14c>
c0de3652:	2830      	cmp	r0, #48	@ 0x30
c0de3654:	d034      	beq.n	c0de36c0 <io_legacy_apdu_rx+0x150>
c0de3656:	2820      	cmp	r0, #32
c0de3658:	bf14      	ite	ne
c0de365a:	2000      	movne	r0, #0
c0de365c:	2001      	moveq	r0, #1
c0de365e:	e036      	b.n	c0de36ce <io_legacy_apdu_rx+0x15e>
c0de3660:	482c      	ldr	r0, [pc, #176]	@ (c0de3714 <io_legacy_apdu_rx+0x1a4>)
c0de3662:	2155      	movs	r1, #85	@ 0x55
c0de3664:	2202      	movs	r2, #2
c0de3666:	2300      	movs	r3, #0
c0de3668:	f809 1000 	strb.w	r1, [r9, r0]
c0de366c:	eb09 0100 	add.w	r1, r9, r0
c0de3670:	2015      	movs	r0, #21
c0de3672:	7048      	strb	r0, [r1, #1]
c0de3674:	eb09 0007 	add.w	r0, r9, r7
c0de3678:	7840      	ldrb	r0, [r0, #1]
c0de367a:	b003      	add	sp, #12
c0de367c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3680:	f003 bfa4 	b.w	c0de75cc <os_io_tx_cmd>
c0de3684:	4f25      	ldr	r7, [pc, #148]	@ (c0de371c <io_legacy_apdu_rx+0x1ac>)
c0de3686:	444e      	add	r6, r9
c0de3688:	3c01      	subs	r4, #1
c0de368a:	1c71      	adds	r1, r6, #1
c0de368c:	4622      	mov	r2, r4
c0de368e:	eb09 0007 	add.w	r0, r9, r7
c0de3692:	f004 f8b9 	bl	c0de7808 <__aeabi_memcpy>
c0de3696:	7870      	ldrb	r0, [r6, #1]
c0de3698:	281a      	cmp	r0, #26
c0de369a:	d107      	bne.n	c0de36ac <io_legacy_apdu_rx+0x13c>
c0de369c:	eb09 0007 	add.w	r0, r9, r7
c0de36a0:	4621      	mov	r1, r4
c0de36a2:	b003      	add	sp, #12
c0de36a4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de36a8:	f7ff bf3f 	b.w	c0de352a <io_process_itc_ux_event>
c0de36ac:	b1e5      	cbz	r5, c0de36e8 <io_legacy_apdu_rx+0x178>
c0de36ae:	2000      	movs	r0, #0
c0de36b0:	2400      	movs	r4, #0
c0de36b2:	f003 f8c3 	bl	c0de683c <io_event>
c0de36b6:	e022      	b.n	c0de36fe <io_legacy_apdu_rx+0x18e>
c0de36b8:	2004      	movs	r0, #4
c0de36ba:	e008      	b.n	c0de36ce <io_legacy_apdu_rx+0x15e>
c0de36bc:	2007      	movs	r0, #7
c0de36be:	e006      	b.n	c0de36ce <io_legacy_apdu_rx+0x15e>
c0de36c0:	2002      	movs	r0, #2
c0de36c2:	e004      	b.n	c0de36ce <io_legacy_apdu_rx+0x15e>
c0de36c4:	2006      	movs	r0, #6
c0de36c6:	e002      	b.n	c0de36ce <io_legacy_apdu_rx+0x15e>
c0de36c8:	2003      	movs	r0, #3
c0de36ca:	e000      	b.n	c0de36ce <io_legacy_apdu_rx+0x15e>
c0de36cc:	2005      	movs	r0, #5
c0de36ce:	4912      	ldr	r1, [pc, #72]	@ (c0de3718 <io_legacy_apdu_rx+0x1a8>)
c0de36d0:	3c01      	subs	r4, #1
c0de36d2:	4622      	mov	r2, r4
c0de36d4:	4449      	add	r1, r9
c0de36d6:	7188      	strb	r0, [r1, #6]
c0de36d8:	480e      	ldr	r0, [pc, #56]	@ (c0de3714 <io_legacy_apdu_rx+0x1a4>)
c0de36da:	eb09 0106 	add.w	r1, r9, r6
c0de36de:	3101      	adds	r1, #1
c0de36e0:	4448      	add	r0, r9
c0de36e2:	f004 f891 	bl	c0de7808 <__aeabi_memcpy>
c0de36e6:	e00a      	b.n	c0de36fe <io_legacy_apdu_rx+0x18e>
c0de36e8:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de36ec:	2815      	cmp	r0, #21
c0de36ee:	d8de      	bhi.n	c0de36ae <io_legacy_apdu_rx+0x13e>
c0de36f0:	2101      	movs	r1, #1
c0de36f2:	fa01 f000 	lsl.w	r0, r1, r0
c0de36f6:	490a      	ldr	r1, [pc, #40]	@ (c0de3720 <io_legacy_apdu_rx+0x1b0>)
c0de36f8:	4208      	tst	r0, r1
c0de36fa:	d0d8      	beq.n	c0de36ae <io_legacy_apdu_rx+0x13e>
c0de36fc:	2400      	movs	r4, #0
c0de36fe:	4620      	mov	r0, r4
c0de3700:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3702:	20ff      	movs	r0, #255	@ 0xff
c0de3704:	f003 ff44 	bl	c0de7590 <os_sched_exit>
c0de3708:	00000530 	.word	0x00000530
c0de370c:	007f0001 	.word	0x007f0001
c0de3710:	0000064a 	.word	0x0000064a
c0de3714:	0000041f 	.word	0x0000041f
c0de3718:	00000642 	.word	0x00000642
c0de371c:	000007c4 	.word	0x000007c4
c0de3720:	00205020 	.word	0x00205020

c0de3724 <io_seproxyhal_init>:
c0de3724:	b570      	push	{r4, r5, r6, lr}
c0de3726:	b08a      	sub	sp, #40	@ 0x28
c0de3728:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3758 <io_seproxyhal_init+0x34>)
c0de372a:	2600      	movs	r6, #0
c0de372c:	2118      	movs	r1, #24
c0de372e:	eb09 0005 	add.w	r0, r9, r5
c0de3732:	7046      	strb	r6, [r0, #1]
c0de3734:	ac01      	add	r4, sp, #4
c0de3736:	4620      	mov	r0, r4
c0de3738:	f004 f870 	bl	c0de781c <__aeabi_memclr>
c0de373c:	2011      	movs	r0, #17
c0de373e:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3742:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3746:	4620      	mov	r0, r4
c0de3748:	f003 ff2c 	bl	c0de75a4 <os_io_init>
c0de374c:	2001      	movs	r0, #1
c0de374e:	f809 0005 	strb.w	r0, [r9, r5]
c0de3752:	b00a      	add	sp, #40	@ 0x28
c0de3754:	bd70      	pop	{r4, r5, r6, pc}
c0de3756:	bf00      	nop
c0de3758:	0000064a 	.word	0x0000064a

c0de375c <getTextMaxLenAndWidth>:
c0de375c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3760:	461c      	mov	r4, r3
c0de3762:	4690      	mov	r8, r2
c0de3764:	460e      	mov	r6, r1
c0de3766:	4682      	mov	sl, r0
c0de3768:	f003 fb73 	bl	c0de6e52 <nbgl_getFont>
c0de376c:	4607      	mov	r7, r0
c0de376e:	4630      	mov	r0, r6
c0de3770:	f004 f8b0 	bl	c0de78d4 <strlen>
c0de3774:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de3778:	4605      	mov	r5, r0
c0de377a:	2000      	movs	r0, #0
c0de377c:	f8ab 0000 	strh.w	r0, [fp]
c0de3780:	8020      	strh	r0, [r4, #0]
c0de3782:	0428      	lsls	r0, r5, #16
c0de3784:	d03e      	beq.n	c0de3804 <getTextMaxLenAndWidth+0xa8>
c0de3786:	7830      	ldrb	r0, [r6, #0]
c0de3788:	3d01      	subs	r5, #1
c0de378a:	2808      	cmp	r0, #8
c0de378c:	d025      	beq.n	c0de37da <getTextMaxLenAndWidth+0x7e>
c0de378e:	280c      	cmp	r0, #12
c0de3790:	d035      	beq.n	c0de37fe <getTextMaxLenAndWidth+0xa2>
c0de3792:	280a      	cmp	r0, #10
c0de3794:	d033      	beq.n	c0de37fe <getTextMaxLenAndWidth+0xa2>
c0de3796:	7af9      	ldrb	r1, [r7, #11]
c0de3798:	4288      	cmp	r0, r1
c0de379a:	d32d      	bcc.n	c0de37f8 <getTextMaxLenAndWidth+0x9c>
c0de379c:	7b3a      	ldrb	r2, [r7, #12]
c0de379e:	4290      	cmp	r0, r2
c0de37a0:	d82a      	bhi.n	c0de37f8 <getTextMaxLenAndWidth+0x9c>
c0de37a2:	1a40      	subs	r0, r0, r1
c0de37a4:	6939      	ldr	r1, [r7, #16]
c0de37a6:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de37aa:	f003 fd2b 	bl	c0de7204 <pic>
c0de37ae:	7900      	ldrb	r0, [r0, #4]
c0de37b0:	7a39      	ldrb	r1, [r7, #8]
c0de37b2:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de37b6:	1a40      	subs	r0, r0, r1
c0de37b8:	0601      	lsls	r1, r0, #24
c0de37ba:	d01d      	beq.n	c0de37f8 <getTextMaxLenAndWidth+0x9c>
c0de37bc:	f8bb 1000 	ldrh.w	r1, [fp]
c0de37c0:	b2c0      	uxtb	r0, r0
c0de37c2:	4401      	add	r1, r0
c0de37c4:	4541      	cmp	r1, r8
c0de37c6:	d81d      	bhi.n	c0de3804 <getTextMaxLenAndWidth+0xa8>
c0de37c8:	8821      	ldrh	r1, [r4, #0]
c0de37ca:	3101      	adds	r1, #1
c0de37cc:	8021      	strh	r1, [r4, #0]
c0de37ce:	f8bb 1000 	ldrh.w	r1, [fp]
c0de37d2:	4408      	add	r0, r1
c0de37d4:	f8ab 0000 	strh.w	r0, [fp]
c0de37d8:	e7d3      	b.n	c0de3782 <getTextMaxLenAndWidth+0x26>
c0de37da:	fa5f f08a 	uxtb.w	r0, sl
c0de37de:	280a      	cmp	r0, #10
c0de37e0:	d004      	beq.n	c0de37ec <getTextMaxLenAndWidth+0x90>
c0de37e2:	2808      	cmp	r0, #8
c0de37e4:	d108      	bne.n	c0de37f8 <getTextMaxLenAndWidth+0x9c>
c0de37e6:	f04f 0a0a 	mov.w	sl, #10
c0de37ea:	e001      	b.n	c0de37f0 <getTextMaxLenAndWidth+0x94>
c0de37ec:	f04f 0a08 	mov.w	sl, #8
c0de37f0:	4650      	mov	r0, sl
c0de37f2:	f003 fb2e 	bl	c0de6e52 <nbgl_getFont>
c0de37f6:	4607      	mov	r7, r0
c0de37f8:	8820      	ldrh	r0, [r4, #0]
c0de37fa:	3001      	adds	r0, #1
c0de37fc:	e7c0      	b.n	c0de3780 <getTextMaxLenAndWidth+0x24>
c0de37fe:	8820      	ldrh	r0, [r4, #0]
c0de3800:	3001      	adds	r0, #1
c0de3802:	8020      	strh	r0, [r4, #0]
c0de3804:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3808 <nbgl_layoutGet>:
c0de3808:	b570      	push	{r4, r5, r6, lr}
c0de380a:	4605      	mov	r5, r0
c0de380c:	7800      	ldrb	r0, [r0, #0]
c0de380e:	b148      	cbz	r0, c0de3824 <nbgl_layoutGet+0x1c>
c0de3810:	4819      	ldr	r0, [pc, #100]	@ (c0de3878 <nbgl_layoutGet+0x70>)
c0de3812:	eb09 0100 	add.w	r1, r9, r0
c0de3816:	7b8a      	ldrb	r2, [r1, #14]
c0de3818:	b152      	cbz	r2, c0de3830 <nbgl_layoutGet+0x28>
c0de381a:	4448      	add	r0, r9
c0de381c:	7e81      	ldrb	r1, [r0, #26]
c0de381e:	b151      	cbz	r1, c0de3836 <nbgl_layoutGet+0x2e>
c0de3820:	2400      	movs	r4, #0
c0de3822:	e026      	b.n	c0de3872 <nbgl_layoutGet+0x6a>
c0de3824:	4814      	ldr	r0, [pc, #80]	@ (c0de3878 <nbgl_layoutGet+0x70>)
c0de3826:	eb09 0400 	add.w	r4, r9, r0
c0de382a:	2000      	movs	r0, #0
c0de382c:	70a0      	strb	r0, [r4, #2]
c0de382e:	e004      	b.n	c0de383a <nbgl_layoutGet+0x32>
c0de3830:	f101 040c 	add.w	r4, r1, #12
c0de3834:	e001      	b.n	c0de383a <nbgl_layoutGet+0x32>
c0de3836:	f100 0418 	add.w	r4, r0, #24
c0de383a:	2000      	movs	r0, #0
c0de383c:	4626      	mov	r6, r4
c0de383e:	60a0      	str	r0, [r4, #8]
c0de3840:	6020      	str	r0, [r4, #0]
c0de3842:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3846:	6868      	ldr	r0, [r5, #4]
c0de3848:	f003 fcdc 	bl	c0de7204 <pic>
c0de384c:	60a0      	str	r0, [r4, #8]
c0de384e:	7828      	ldrb	r0, [r5, #0]
c0de3850:	f105 0208 	add.w	r2, r5, #8
c0de3854:	7020      	strb	r0, [r4, #0]
c0de3856:	4b09      	ldr	r3, [pc, #36]	@ (c0de387c <nbgl_layoutGet+0x74>)
c0de3858:	447b      	add	r3, pc
c0de385a:	b120      	cbz	r0, c0de3866 <nbgl_layoutGet+0x5e>
c0de385c:	4630      	mov	r0, r6
c0de385e:	2107      	movs	r1, #7
c0de3860:	f003 fad9 	bl	c0de6e16 <nbgl_screenPush>
c0de3864:	e004      	b.n	c0de3870 <nbgl_layoutGet+0x68>
c0de3866:	4630      	mov	r0, r6
c0de3868:	2107      	movs	r1, #7
c0de386a:	f003 facf 	bl	c0de6e0c <nbgl_screenSet>
c0de386e:	2000      	movs	r0, #0
c0de3870:	7060      	strb	r0, [r4, #1]
c0de3872:	4620      	mov	r0, r4
c0de3874:	bd70      	pop	{r4, r5, r6, pc}
c0de3876:	bf00      	nop
c0de3878:	0000064c 	.word	0x0000064c
c0de387c:	00000025 	.word	0x00000025

c0de3880 <buttonCallback>:
c0de3880:	b5b0      	push	{r4, r5, r7, lr}
c0de3882:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3886:	4811      	ldr	r0, [pc, #68]	@ (c0de38cc <buttonCallback+0x4c>)
c0de3888:	2302      	movs	r3, #2
c0de388a:	1c5c      	adds	r4, r3, #1
c0de388c:	d01d      	beq.n	c0de38ca <buttonCallback+0x4a>
c0de388e:	b2dc      	uxtb	r4, r3
c0de3890:	eb09 0500 	add.w	r5, r9, r0
c0de3894:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3898:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de389c:	786d      	ldrb	r5, [r5, #1]
c0de389e:	42aa      	cmp	r2, r5
c0de38a0:	d105      	bne.n	c0de38ae <buttonCallback+0x2e>
c0de38a2:	eb09 0500 	add.w	r5, r9, r0
c0de38a6:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de38aa:	78ad      	ldrb	r5, [r5, #2]
c0de38ac:	b90d      	cbnz	r5, c0de38b2 <buttonCallback+0x32>
c0de38ae:	3b01      	subs	r3, #1
c0de38b0:	e7eb      	b.n	c0de388a <buttonCallback+0xa>
c0de38b2:	eb09 0200 	add.w	r2, r9, r0
c0de38b6:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de38ba:	6892      	ldr	r2, [r2, #8]
c0de38bc:	b12a      	cbz	r2, c0de38ca <buttonCallback+0x4a>
c0de38be:	4448      	add	r0, r9
c0de38c0:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de38c4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de38c8:	4710      	bx	r2
c0de38ca:	bdb0      	pop	{r4, r5, r7, pc}
c0de38cc:	0000064c 	.word	0x0000064c

c0de38d0 <nbgl_layoutAddNavigation>:
c0de38d0:	b570      	push	{r4, r5, r6, lr}
c0de38d2:	2800      	cmp	r0, #0
c0de38d4:	d04d      	beq.n	c0de3972 <nbgl_layoutAddNavigation+0xa2>
c0de38d6:	460d      	mov	r5, r1
c0de38d8:	7849      	ldrb	r1, [r1, #1]
c0de38da:	4604      	mov	r4, r0
c0de38dc:	07c8      	lsls	r0, r1, #31
c0de38de:	d022      	beq.n	c0de3926 <nbgl_layoutAddNavigation+0x56>
c0de38e0:	7861      	ldrb	r1, [r4, #1]
c0de38e2:	2002      	movs	r0, #2
c0de38e4:	f003 faab 	bl	c0de6e3e <nbgl_objPoolGet>
c0de38e8:	782a      	ldrb	r2, [r5, #0]
c0de38ea:	7869      	ldrb	r1, [r5, #1]
c0de38ec:	4b23      	ldr	r3, [pc, #140]	@ (c0de397c <nbgl_layoutAddNavigation+0xac>)
c0de38ee:	4e24      	ldr	r6, [pc, #144]	@ (c0de3980 <nbgl_layoutAddNavigation+0xb0>)
c0de38f0:	2a00      	cmp	r2, #0
c0de38f2:	447b      	add	r3, pc
c0de38f4:	447e      	add	r6, pc
c0de38f6:	4602      	mov	r2, r0
c0de38f8:	bf08      	it	eq
c0de38fa:	461e      	moveq	r6, r3
c0de38fc:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3900:	0e33      	lsrs	r3, r6, #24
c0de3902:	70d3      	strb	r3, [r2, #3]
c0de3904:	0c33      	lsrs	r3, r6, #16
c0de3906:	7093      	strb	r3, [r2, #2]
c0de3908:	0a32      	lsrs	r2, r6, #8
c0de390a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de390e:	6862      	ldr	r2, [r4, #4]
c0de3910:	78a3      	ldrb	r3, [r4, #2]
c0de3912:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3916:	2203      	movs	r2, #3
c0de3918:	77c2      	strb	r2, [r0, #31]
c0de391a:	2204      	movs	r2, #4
c0de391c:	7582      	strb	r2, [r0, #22]
c0de391e:	2200      	movs	r2, #0
c0de3920:	7242      	strb	r2, [r0, #9]
c0de3922:	1c58      	adds	r0, r3, #1
c0de3924:	70a0      	strb	r0, [r4, #2]
c0de3926:	0788      	lsls	r0, r1, #30
c0de3928:	f04f 0600 	mov.w	r6, #0
c0de392c:	d523      	bpl.n	c0de3976 <nbgl_layoutAddNavigation+0xa6>
c0de392e:	7861      	ldrb	r1, [r4, #1]
c0de3930:	2002      	movs	r0, #2
c0de3932:	f003 fa84 	bl	c0de6e3e <nbgl_objPoolGet>
c0de3936:	7829      	ldrb	r1, [r5, #0]
c0de3938:	4a12      	ldr	r2, [pc, #72]	@ (c0de3984 <nbgl_layoutAddNavigation+0xb4>)
c0de393a:	4b13      	ldr	r3, [pc, #76]	@ (c0de3988 <nbgl_layoutAddNavigation+0xb8>)
c0de393c:	2900      	cmp	r1, #0
c0de393e:	447a      	add	r2, pc
c0de3940:	447b      	add	r3, pc
c0de3942:	4601      	mov	r1, r0
c0de3944:	bf08      	it	eq
c0de3946:	4613      	moveq	r3, r2
c0de3948:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de394c:	0e1a      	lsrs	r2, r3, #24
c0de394e:	7246      	strb	r6, [r0, #9]
c0de3950:	70ca      	strb	r2, [r1, #3]
c0de3952:	0c1a      	lsrs	r2, r3, #16
c0de3954:	708a      	strb	r2, [r1, #2]
c0de3956:	0a19      	lsrs	r1, r3, #8
c0de3958:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de395c:	6861      	ldr	r1, [r4, #4]
c0de395e:	78a2      	ldrb	r2, [r4, #2]
c0de3960:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3964:	2103      	movs	r1, #3
c0de3966:	77c1      	strb	r1, [r0, #31]
c0de3968:	2106      	movs	r1, #6
c0de396a:	7581      	strb	r1, [r0, #22]
c0de396c:	1c50      	adds	r0, r2, #1
c0de396e:	70a0      	strb	r0, [r4, #2]
c0de3970:	e001      	b.n	c0de3976 <nbgl_layoutAddNavigation+0xa6>
c0de3972:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3976:	4630      	mov	r0, r6
c0de3978:	bd70      	pop	{r4, r5, r6, pc}
c0de397a:	bf00      	nop
c0de397c:	00004148 	.word	0x00004148
c0de3980:	00004185 	.word	0x00004185
c0de3984:	0000412d 	.word	0x0000412d
c0de3988:	000040ec 	.word	0x000040ec

c0de398c <nbgl_layoutAddText>:
c0de398c:	2800      	cmp	r0, #0
c0de398e:	f000 8140 	beq.w	c0de3c12 <nbgl_layoutAddText+0x286>
c0de3992:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3996:	b088      	sub	sp, #32
c0de3998:	460e      	mov	r6, r1
c0de399a:	7841      	ldrb	r1, [r0, #1]
c0de399c:	4605      	mov	r5, r0
c0de399e:	2001      	movs	r0, #1
c0de39a0:	4617      	mov	r7, r2
c0de39a2:	461c      	mov	r4, r3
c0de39a4:	f003 fa4b 	bl	c0de6e3e <nbgl_objPoolGet>
c0de39a8:	4680      	mov	r8, r0
c0de39aa:	2003      	movs	r0, #3
c0de39ac:	2f00      	cmp	r7, #0
c0de39ae:	bf08      	it	eq
c0de39b0:	2001      	moveq	r0, #1
c0de39b2:	7869      	ldrb	r1, [r5, #1]
c0de39b4:	f888 0020 	strb.w	r0, [r8, #32]
c0de39b8:	f003 fa46 	bl	c0de6e48 <nbgl_containerPoolGet>
c0de39bc:	4641      	mov	r1, r8
c0de39be:	0e02      	lsrs	r2, r0, #24
c0de39c0:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de39c4:	f04f 0b00 	mov.w	fp, #0
c0de39c8:	9704      	str	r7, [sp, #16]
c0de39ca:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de39ce:	f888 a004 	strb.w	sl, [r8, #4]
c0de39d2:	f888 b005 	strb.w	fp, [r8, #5]
c0de39d6:	70ca      	strb	r2, [r1, #3]
c0de39d8:	0c02      	lsrs	r2, r0, #16
c0de39da:	0a00      	lsrs	r0, r0, #8
c0de39dc:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de39e0:	708a      	strb	r2, [r1, #2]
c0de39e2:	2004      	movs	r0, #4
c0de39e4:	7869      	ldrb	r1, [r5, #1]
c0de39e6:	f003 fa2a 	bl	c0de6e3e <nbgl_objPoolGet>
c0de39ea:	4607      	mov	r7, r0
c0de39ec:	2003      	movs	r0, #3
c0de39ee:	77f8      	strb	r0, [r7, #31]
c0de39f0:	4630      	mov	r0, r6
c0de39f2:	f003 fc07 	bl	c0de7204 <pic>
c0de39f6:	4601      	mov	r1, r0
c0de39f8:	2008      	movs	r0, #8
c0de39fa:	f887 a004 	strb.w	sl, [r7, #4]
c0de39fe:	f887 b005 	strb.w	fp, [r7, #5]
c0de3a02:	9403      	str	r4, [sp, #12]
c0de3a04:	f04f 0a01 	mov.w	sl, #1
c0de3a08:	2c00      	cmp	r4, #0
c0de3a0a:	bf08      	it	eq
c0de3a0c:	200a      	moveq	r0, #10
c0de3a0e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3a12:	2205      	movs	r2, #5
c0de3a14:	0e0b      	lsrs	r3, r1, #24
c0de3a16:	f887 2020 	strb.w	r2, [r7, #32]
c0de3a1a:	463a      	mov	r2, r7
c0de3a1c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3a20:	70d3      	strb	r3, [r2, #3]
c0de3a22:	0c0b      	lsrs	r3, r1, #16
c0de3a24:	7093      	strb	r3, [r2, #2]
c0de3a26:	0a0a      	lsrs	r2, r1, #8
c0de3a28:	2301      	movs	r3, #1
c0de3a2a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3a2e:	2272      	movs	r2, #114	@ 0x72
c0de3a30:	f003 fa19 	bl	c0de6e66 <nbgl_getTextNbLinesInWidth>
c0de3a34:	4606      	mov	r6, r0
c0de3a36:	2805      	cmp	r0, #5
c0de3a38:	9505      	str	r5, [sp, #20]
c0de3a3a:	d31d      	bcc.n	c0de3a78 <nbgl_layoutAddText+0xec>
c0de3a3c:	463e      	mov	r6, r7
c0de3a3e:	2004      	movs	r0, #4
c0de3a40:	f10d 051e 	add.w	r5, sp, #30
c0de3a44:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de3a48:	7872      	ldrb	r2, [r6, #1]
c0de3a4a:	78b3      	ldrb	r3, [r6, #2]
c0de3a4c:	78f4      	ldrb	r4, [r6, #3]
c0de3a4e:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3a52:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3a56:	9500      	str	r5, [sp, #0]
c0de3a58:	9d05      	ldr	r5, [sp, #20]
c0de3a5a:	f8cd a004 	str.w	sl, [sp, #4]
c0de3a5e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3a62:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3a66:	2304      	movs	r3, #4
c0de3a68:	f000 fc6d 	bl	c0de4346 <OUTLINED_FUNCTION_5>
c0de3a6c:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3a70:	7130      	strb	r0, [r6, #4]
c0de3a72:	0a00      	lsrs	r0, r0, #8
c0de3a74:	7170      	strb	r0, [r6, #5]
c0de3a76:	2604      	movs	r6, #4
c0de3a78:	f000 fc72 	bl	c0de4360 <OUTLINED_FUNCTION_7>
c0de3a7c:	4683      	mov	fp, r0
c0de3a7e:	2002      	movs	r0, #2
c0de3a80:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de3a84:	9c04      	ldr	r4, [sp, #16]
c0de3a86:	75b8      	strb	r0, [r7, #22]
c0de3a88:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3a8c:	2c00      	cmp	r4, #0
c0de3a8e:	fb06 fa00 	mul.w	sl, r6, r0
c0de3a92:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3a96:	f887 a006 	strb.w	sl, [r7, #6]
c0de3a9a:	71f8      	strb	r0, [r7, #7]
c0de3a9c:	4640      	mov	r0, r8
c0de3a9e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3aa2:	7842      	ldrb	r2, [r0, #1]
c0de3aa4:	7883      	ldrb	r3, [r0, #2]
c0de3aa6:	78c0      	ldrb	r0, [r0, #3]
c0de3aa8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3aac:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3ab0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3ab4:	6007      	str	r7, [r0, #0]
c0de3ab6:	f000 8111 	beq.w	c0de3cdc <nbgl_layoutAddText+0x350>
c0de3aba:	9803      	ldr	r0, [sp, #12]
c0de3abc:	7869      	ldrb	r1, [r5, #1]
c0de3abe:	2802      	cmp	r0, #2
c0de3ac0:	f040 80a9 	bne.w	c0de3c16 <nbgl_layoutAddText+0x28a>
c0de3ac4:	2005      	movs	r0, #5
c0de3ac6:	2505      	movs	r5, #5
c0de3ac8:	f003 f9b9 	bl	c0de6e3e <nbgl_objPoolGet>
c0de3acc:	2600      	movs	r6, #0
c0de3ace:	4607      	mov	r7, r0
c0de3ad0:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3ad4:	2001      	movs	r0, #1
c0de3ad6:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3ada:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3ade:	f000 fc46 	bl	c0de436e <OUTLINED_FUNCTION_9>
c0de3ae2:	4620      	mov	r0, r4
c0de3ae4:	f003 fb8e 	bl	c0de7204 <pic>
c0de3ae8:	4601      	mov	r1, r0
c0de3aea:	200e      	movs	r0, #14
c0de3aec:	71fe      	strb	r6, [r7, #7]
c0de3aee:	75bd      	strb	r5, [r7, #22]
c0de3af0:	71b8      	strb	r0, [r7, #6]
c0de3af2:	2008      	movs	r0, #8
c0de3af4:	0e0a      	lsrs	r2, r1, #24
c0de3af6:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3afa:	4638      	mov	r0, r7
c0de3afc:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3b00:	f000 fc15 	bl	c0de432e <OUTLINED_FUNCTION_3>
c0de3b04:	2865      	cmp	r0, #101	@ 0x65
c0de3b06:	f240 80d9 	bls.w	c0de3cbc <nbgl_layoutAddText+0x330>
c0de3b0a:	46bb      	mov	fp, r7
c0de3b0c:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3b10:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3b14:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3b18:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3b1c:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3b20:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3b24:	ae06      	add	r6, sp, #24
c0de3b26:	9600      	str	r6, [sp, #0]
c0de3b28:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3b2c:	f10d 031a 	add.w	r3, sp, #26
c0de3b30:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3b34:	2266      	movs	r2, #102	@ 0x66
c0de3b36:	f7ff fe11 	bl	c0de375c <getTextMaxLenAndWidth>
c0de3b3a:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3b3e:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3b42:	9003      	str	r0, [sp, #12]
c0de3b44:	300c      	adds	r0, #12
c0de3b46:	9602      	str	r6, [sp, #8]
c0de3b48:	7138      	strb	r0, [r7, #4]
c0de3b4a:	0a00      	lsrs	r0, r0, #8
c0de3b4c:	7178      	strb	r0, [r7, #5]
c0de3b4e:	486e      	ldr	r0, [pc, #440]	@ (c0de3d08 <nbgl_layoutAddText+0x37c>)
c0de3b50:	2e13      	cmp	r6, #19
c0de3b52:	bf28      	it	cs
c0de3b54:	2613      	movcs	r6, #19
c0de3b56:	f89b 1000 	ldrb.w	r1, [fp]
c0de3b5a:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3b5e:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3b62:	eb09 0400 	add.w	r4, r9, r0
c0de3b66:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3b6a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3b6e:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3b72:	4632      	mov	r2, r6
c0de3b74:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3b78:	4620      	mov	r0, r4
c0de3b7a:	f003 fe45 	bl	c0de7808 <__aeabi_memcpy>
c0de3b7e:	2500      	movs	r5, #0
c0de3b80:	4620      	mov	r0, r4
c0de3b82:	55a5      	strb	r5, [r4, r6]
c0de3b84:	f003 fb3e 	bl	c0de7204 <pic>
c0de3b88:	2101      	movs	r1, #1
c0de3b8a:	f88b 0000 	strb.w	r0, [fp]
c0de3b8e:	76bd      	strb	r5, [r7, #26]
c0de3b90:	9d05      	ldr	r5, [sp, #20]
c0de3b92:	7679      	strb	r1, [r7, #25]
c0de3b94:	0e01      	lsrs	r1, r0, #24
c0de3b96:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3b9a:	0c01      	lsrs	r1, r0, #16
c0de3b9c:	0a00      	lsrs	r0, r0, #8
c0de3b9e:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3ba2:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3ba6:	4640      	mov	r0, r8
c0de3ba8:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3bac:	7842      	ldrb	r2, [r0, #1]
c0de3bae:	7883      	ldrb	r3, [r0, #2]
c0de3bb0:	78c0      	ldrb	r0, [r0, #3]
c0de3bb2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3bb6:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3bba:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3bbe:	6047      	str	r7, [r0, #4]
c0de3bc0:	9803      	ldr	r0, [sp, #12]
c0de3bc2:	2800      	cmp	r0, #0
c0de3bc4:	f000 8088 	beq.w	c0de3cd8 <nbgl_layoutAddText+0x34c>
c0de3bc8:	7869      	ldrb	r1, [r5, #1]
c0de3bca:	2005      	movs	r0, #5
c0de3bcc:	2605      	movs	r6, #5
c0de3bce:	f003 f936 	bl	c0de6e3e <nbgl_objPoolGet>
c0de3bd2:	2500      	movs	r5, #0
c0de3bd4:	4607      	mov	r7, r0
c0de3bd6:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3bda:	2001      	movs	r0, #1
c0de3bdc:	f000 fbc7 	bl	c0de436e <OUTLINED_FUNCTION_9>
c0de3be0:	9804      	ldr	r0, [sp, #16]
c0de3be2:	f003 fb0f 	bl	c0de7204 <pic>
c0de3be6:	210e      	movs	r1, #14
c0de3be8:	71fd      	strb	r5, [r7, #7]
c0de3bea:	71b9      	strb	r1, [r7, #6]
c0de3bec:	2108      	movs	r1, #8
c0de3bee:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3bf2:	9902      	ldr	r1, [sp, #8]
c0de3bf4:	4401      	add	r1, r0
c0de3bf6:	4638      	mov	r0, r7
c0de3bf8:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3bfc:	0e0a      	lsrs	r2, r1, #24
c0de3bfe:	f000 fb96 	bl	c0de432e <OUTLINED_FUNCTION_3>
c0de3c02:	300c      	adds	r0, #12
c0de3c04:	210f      	movs	r1, #15
c0de3c06:	75be      	strb	r6, [r7, #22]
c0de3c08:	7138      	strb	r0, [r7, #4]
c0de3c0a:	0a00      	lsrs	r0, r0, #8
c0de3c0c:	7178      	strb	r0, [r7, #5]
c0de3c0e:	2002      	movs	r0, #2
c0de3c10:	e05a      	b.n	c0de3cc8 <nbgl_layoutAddText+0x33c>
c0de3c12:	f000 bba9 	b.w	c0de4368 <OUTLINED_FUNCTION_8>
c0de3c16:	f000 fb93 	bl	c0de4340 <OUTLINED_FUNCTION_4>
c0de3c1a:	2603      	movs	r6, #3
c0de3c1c:	4607      	mov	r7, r0
c0de3c1e:	77c6      	strb	r6, [r0, #31]
c0de3c20:	4620      	mov	r0, r4
c0de3c22:	f003 faef 	bl	c0de7204 <pic>
c0de3c26:	4601      	mov	r1, r0
c0de3c28:	2072      	movs	r0, #114	@ 0x72
c0de3c2a:	2400      	movs	r4, #0
c0de3c2c:	2301      	movs	r3, #1
c0de3c2e:	7138      	strb	r0, [r7, #4]
c0de3c30:	2001      	movs	r0, #1
c0de3c32:	0e0a      	lsrs	r2, r1, #24
c0de3c34:	717c      	strb	r4, [r7, #5]
c0de3c36:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3c3a:	200a      	movs	r0, #10
c0de3c3c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3c40:	f000 fb5b 	bl	c0de42fa <OUTLINED_FUNCTION_1>
c0de3c44:	2804      	cmp	r0, #4
c0de3c46:	d31e      	bcc.n	c0de3c86 <nbgl_layoutAddText+0x2fa>
c0de3c48:	463d      	mov	r5, r7
c0de3c4a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3c4e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3c52:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3c56:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3c5a:	78ab      	ldrb	r3, [r5, #2]
c0de3c5c:	78e9      	ldrb	r1, [r5, #3]
c0de3c5e:	aa07      	add	r2, sp, #28
c0de3c60:	9200      	str	r2, [sp, #0]
c0de3c62:	2201      	movs	r2, #1
c0de3c64:	9201      	str	r2, [sp, #4]
c0de3c66:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3c6a:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3c6e:	2303      	movs	r3, #3
c0de3c70:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3c74:	2272      	movs	r2, #114	@ 0x72
c0de3c76:	f003 f905 	bl	c0de6e84 <nbgl_getTextMaxLenInNbLines>
c0de3c7a:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3c7e:	7128      	strb	r0, [r5, #4]
c0de3c80:	0a00      	lsrs	r0, r0, #8
c0de3c82:	7168      	strb	r0, [r5, #5]
c0de3c84:	2003      	movs	r0, #3
c0de3c86:	9903      	ldr	r1, [sp, #12]
c0de3c88:	2900      	cmp	r1, #0
c0de3c8a:	bf08      	it	eq
c0de3c8c:	4606      	moveq	r6, r0
c0de3c8e:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3c92:	76bc      	strb	r4, [r7, #26]
c0de3c94:	75bc      	strb	r4, [r7, #22]
c0de3c96:	fb06 f100 	mul.w	r1, r6, r0
c0de3c9a:	fb06 a000 	mla	r0, r6, r0, sl
c0de3c9e:	71b9      	strb	r1, [r7, #6]
c0de3ca0:	0a09      	lsrs	r1, r1, #8
c0de3ca2:	71f9      	strb	r1, [r7, #7]
c0de3ca4:	2102      	movs	r1, #2
c0de3ca6:	f100 0a02 	add.w	sl, r0, #2
c0de3caa:	7679      	strb	r1, [r7, #25]
c0de3cac:	2105      	movs	r1, #5
c0de3cae:	f887 1020 	strb.w	r1, [r7, #32]
c0de3cb2:	4641      	mov	r1, r8
c0de3cb4:	f000 fb2e 	bl	c0de4314 <OUTLINED_FUNCTION_2>
c0de3cb8:	604f      	str	r7, [r1, #4]
c0de3cba:	e00f      	b.n	c0de3cdc <nbgl_layoutAddText+0x350>
c0de3cbc:	300c      	adds	r0, #12
c0de3cbe:	2108      	movs	r1, #8
c0de3cc0:	7138      	strb	r0, [r7, #4]
c0de3cc2:	0a00      	lsrs	r0, r0, #8
c0de3cc4:	7178      	strb	r0, [r7, #5]
c0de3cc6:	2001      	movs	r0, #1
c0de3cc8:	2200      	movs	r2, #0
c0de3cca:	7679      	strb	r1, [r7, #25]
c0de3ccc:	4641      	mov	r1, r8
c0de3cce:	76ba      	strb	r2, [r7, #26]
c0de3cd0:	f000 fb20 	bl	c0de4314 <OUTLINED_FUNCTION_2>
c0de3cd4:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3cd8:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3cdc:	6868      	ldr	r0, [r5, #4]
c0de3cde:	78a9      	ldrb	r1, [r5, #2]
c0de3ce0:	2205      	movs	r2, #5
c0de3ce2:	f888 2016 	strb.w	r2, [r8, #22]
c0de3ce6:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3cea:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3cee:	2000      	movs	r0, #0
c0de3cf0:	3101      	adds	r1, #1
c0de3cf2:	f888 a006 	strb.w	sl, [r8, #6]
c0de3cf6:	f888 2007 	strb.w	r2, [r8, #7]
c0de3cfa:	f888 001f 	strb.w	r0, [r8, #31]
c0de3cfe:	70a9      	strb	r1, [r5, #2]
c0de3d00:	b008      	add	sp, #32
c0de3d02:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d06:	bf00      	nop
c0de3d08:	00000670 	.word	0x00000670

c0de3d0c <nbgl_layoutAddMenuList>:
c0de3d0c:	2800      	cmp	r0, #0
c0de3d0e:	d04f      	beq.n	c0de3db0 <nbgl_layoutAddMenuList+0xa4>
c0de3d10:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d14:	460c      	mov	r4, r1
c0de3d16:	4605      	mov	r5, r0
c0de3d18:	2700      	movs	r7, #0
c0de3d1a:	f04f 0b05 	mov.w	fp, #5
c0de3d1e:	f04f 0803 	mov.w	r8, #3
c0de3d22:	f04f 0a00 	mov.w	sl, #0
c0de3d26:	7920      	ldrb	r0, [r4, #4]
c0de3d28:	4582      	cmp	sl, r0
c0de3d2a:	d23e      	bcs.n	c0de3daa <nbgl_layoutAddMenuList+0x9e>
c0de3d2c:	7960      	ldrb	r0, [r4, #5]
c0de3d2e:	2803      	cmp	r0, #3
c0de3d30:	d302      	bcc.n	c0de3d38 <nbgl_layoutAddMenuList+0x2c>
c0de3d32:	1e81      	subs	r1, r0, #2
c0de3d34:	4551      	cmp	r1, sl
c0de3d36:	dc35      	bgt.n	c0de3da4 <nbgl_layoutAddMenuList+0x98>
c0de3d38:	3002      	adds	r0, #2
c0de3d3a:	4550      	cmp	r0, sl
c0de3d3c:	d332      	bcc.n	c0de3da4 <nbgl_layoutAddMenuList+0x98>
c0de3d3e:	7869      	ldrb	r1, [r5, #1]
c0de3d40:	f000 fafe 	bl	c0de4340 <OUTLINED_FUNCTION_4>
c0de3d44:	6821      	ldr	r1, [r4, #0]
c0de3d46:	4606      	mov	r6, r0
c0de3d48:	fa5f f08a 	uxtb.w	r0, sl
c0de3d4c:	4788      	blx	r1
c0de3d4e:	7961      	ldrb	r1, [r4, #5]
c0de3d50:	220a      	movs	r2, #10
c0de3d52:	458a      	cmp	sl, r1
c0de3d54:	bf08      	it	eq
c0de3d56:	2208      	moveq	r2, #8
c0de3d58:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3d5c:	71f7      	strb	r7, [r6, #7]
c0de3d5e:	7177      	strb	r7, [r6, #5]
c0de3d60:	f886 b020 	strb.w	fp, [r6, #32]
c0de3d64:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3d68:	f886 b016 	strb.w	fp, [r6, #22]
c0de3d6c:	f886 801f 	strb.w	r8, [r6, #31]
c0de3d70:	4632      	mov	r2, r6
c0de3d72:	0e03      	lsrs	r3, r0, #24
c0de3d74:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3d78:	70d3      	strb	r3, [r2, #3]
c0de3d7a:	0c03      	lsrs	r3, r0, #16
c0de3d7c:	0a00      	lsrs	r0, r0, #8
c0de3d7e:	7093      	strb	r3, [r2, #2]
c0de3d80:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3d84:	6868      	ldr	r0, [r5, #4]
c0de3d86:	78aa      	ldrb	r2, [r5, #2]
c0de3d88:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3d8c:	200c      	movs	r0, #12
c0de3d8e:	71b0      	strb	r0, [r6, #6]
c0de3d90:	2072      	movs	r0, #114	@ 0x72
c0de3d92:	7130      	strb	r0, [r6, #4]
c0de3d94:	ebaa 0001 	sub.w	r0, sl, r1
c0de3d98:	0901      	lsrs	r1, r0, #4
c0de3d9a:	0100      	lsls	r0, r0, #4
c0de3d9c:	7670      	strb	r0, [r6, #25]
c0de3d9e:	1c50      	adds	r0, r2, #1
c0de3da0:	76b1      	strb	r1, [r6, #26]
c0de3da2:	70a8      	strb	r0, [r5, #2]
c0de3da4:	f10a 0a01 	add.w	sl, sl, #1
c0de3da8:	e7bd      	b.n	c0de3d26 <nbgl_layoutAddMenuList+0x1a>
c0de3daa:	2000      	movs	r0, #0
c0de3dac:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3db0:	f000 bada 	b.w	c0de4368 <OUTLINED_FUNCTION_8>

c0de3db4 <nbgl_layoutAddCenteredInfo>:
c0de3db4:	2800      	cmp	r0, #0
c0de3db6:	f000 80d9 	beq.w	c0de3f6c <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3dba:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3dbe:	b086      	sub	sp, #24
c0de3dc0:	460c      	mov	r4, r1
c0de3dc2:	7841      	ldrb	r1, [r0, #1]
c0de3dc4:	4682      	mov	sl, r0
c0de3dc6:	2001      	movs	r0, #1
c0de3dc8:	f003 f839 	bl	c0de6e3e <nbgl_objPoolGet>
c0de3dcc:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3dd0:	4680      	mov	r8, r0
c0de3dd2:	2003      	movs	r0, #3
c0de3dd4:	2703      	movs	r7, #3
c0de3dd6:	f003 f837 	bl	c0de6e48 <nbgl_containerPoolGet>
c0de3dda:	4641      	mov	r1, r8
c0de3ddc:	0e02      	lsrs	r2, r0, #24
c0de3dde:	f04f 0b00 	mov.w	fp, #0
c0de3de2:	9404      	str	r4, [sp, #16]
c0de3de4:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3de8:	f888 b020 	strb.w	fp, [r8, #32]
c0de3dec:	70ca      	strb	r2, [r1, #3]
c0de3dee:	0c02      	lsrs	r2, r0, #16
c0de3df0:	0a00      	lsrs	r0, r0, #8
c0de3df2:	708a      	strb	r2, [r1, #2]
c0de3df4:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3df8:	68a0      	ldr	r0, [r4, #8]
c0de3dfa:	b3c0      	cbz	r0, c0de3e6e <nbgl_layoutAddCenteredInfo+0xba>
c0de3dfc:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3e00:	2002      	movs	r0, #2
c0de3e02:	f003 f81c 	bl	c0de6e3e <nbgl_objPoolGet>
c0de3e06:	4606      	mov	r6, r0
c0de3e08:	77c7      	strb	r7, [r0, #31]
c0de3e0a:	68a0      	ldr	r0, [r4, #8]
c0de3e0c:	f003 f9fa 	bl	c0de7204 <pic>
c0de3e10:	4631      	mov	r1, r6
c0de3e12:	0e02      	lsrs	r2, r0, #24
c0de3e14:	f886 b013 	strb.w	fp, [r6, #19]
c0de3e18:	f886 b009 	strb.w	fp, [r6, #9]
c0de3e1c:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3e20:	70ca      	strb	r2, [r1, #3]
c0de3e22:	0c02      	lsrs	r2, r0, #16
c0de3e24:	708a      	strb	r2, [r1, #2]
c0de3e26:	0a01      	lsrs	r1, r0, #8
c0de3e28:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3e2c:	4631      	mov	r1, r6
c0de3e2e:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3e32:	f881 b003 	strb.w	fp, [r1, #3]
c0de3e36:	f881 b002 	strb.w	fp, [r1, #2]
c0de3e3a:	4641      	mov	r1, r8
c0de3e3c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3e40:	784f      	ldrb	r7, [r1, #1]
c0de3e42:	788c      	ldrb	r4, [r1, #2]
c0de3e44:	78cd      	ldrb	r5, [r1, #3]
c0de3e46:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3e4a:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3e4e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3e52:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3e56:	9c04      	ldr	r4, [sp, #16]
c0de3e58:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3e5c:	2202      	movs	r2, #2
c0de3e5e:	75b2      	strb	r2, [r6, #22]
c0de3e60:	1c5a      	adds	r2, r3, #1
c0de3e62:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3e66:	7881      	ldrb	r1, [r0, #2]
c0de3e68:	78c0      	ldrb	r0, [r0, #3]
c0de3e6a:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3e6e:	6820      	ldr	r0, [r4, #0]
c0de3e70:	2800      	cmp	r0, #0
c0de3e72:	f000 80a2 	beq.w	c0de3fba <nbgl_layoutAddCenteredInfo+0x206>
c0de3e76:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3e7a:	f000 fa61 	bl	c0de4340 <OUTLINED_FUNCTION_4>
c0de3e7e:	4607      	mov	r7, r0
c0de3e80:	2003      	movs	r0, #3
c0de3e82:	77f8      	strb	r0, [r7, #31]
c0de3e84:	6820      	ldr	r0, [r4, #0]
c0de3e86:	f003 f9bd 	bl	c0de7204 <pic>
c0de3e8a:	4601      	mov	r1, r0
c0de3e8c:	2072      	movs	r0, #114	@ 0x72
c0de3e8e:	2500      	movs	r5, #0
c0de3e90:	7138      	strb	r0, [r7, #4]
c0de3e92:	2005      	movs	r0, #5
c0de3e94:	0e0a      	lsrs	r2, r1, #24
c0de3e96:	717d      	strb	r5, [r7, #5]
c0de3e98:	f887 0020 	strb.w	r0, [r7, #32]
c0de3e9c:	2001      	movs	r0, #1
c0de3e9e:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3ea2:	4638      	mov	r0, r7
c0de3ea4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3ea8:	70c2      	strb	r2, [r0, #3]
c0de3eaa:	0c0a      	lsrs	r2, r1, #16
c0de3eac:	7082      	strb	r2, [r0, #2]
c0de3eae:	0a08      	lsrs	r0, r1, #8
c0de3eb0:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3eb4:	2008      	movs	r0, #8
c0de3eb6:	7b62      	ldrb	r2, [r4, #13]
c0de3eb8:	2a00      	cmp	r2, #0
c0de3eba:	bf08      	it	eq
c0de3ebc:	200a      	moveq	r0, #10
c0de3ebe:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3ec2:	2272      	movs	r2, #114	@ 0x72
c0de3ec4:	2301      	movs	r3, #1
c0de3ec6:	f002 ffce 	bl	c0de6e66 <nbgl_getTextNbLinesInWidth>
c0de3eca:	4606      	mov	r6, r0
c0de3ecc:	2805      	cmp	r0, #5
c0de3ece:	d31e      	bcc.n	c0de3f0e <nbgl_layoutAddCenteredInfo+0x15a>
c0de3ed0:	463d      	mov	r5, r7
c0de3ed2:	2004      	movs	r0, #4
c0de3ed4:	2101      	movs	r1, #1
c0de3ed6:	f10d 0416 	add.w	r4, sp, #22
c0de3eda:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3ede:	786a      	ldrb	r2, [r5, #1]
c0de3ee0:	78ab      	ldrb	r3, [r5, #2]
c0de3ee2:	78ee      	ldrb	r6, [r5, #3]
c0de3ee4:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3ee8:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3eec:	9101      	str	r1, [sp, #4]
c0de3eee:	9400      	str	r4, [sp, #0]
c0de3ef0:	9c04      	ldr	r4, [sp, #16]
c0de3ef2:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3ef6:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3efa:	2304      	movs	r3, #4
c0de3efc:	f000 fa23 	bl	c0de4346 <OUTLINED_FUNCTION_5>
c0de3f00:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3f04:	2604      	movs	r6, #4
c0de3f06:	7128      	strb	r0, [r5, #4]
c0de3f08:	0a00      	lsrs	r0, r0, #8
c0de3f0a:	7168      	strb	r0, [r5, #5]
c0de3f0c:	2500      	movs	r5, #0
c0de3f0e:	f000 fa27 	bl	c0de4360 <OUTLINED_FUNCTION_7>
c0de3f12:	79c0      	ldrb	r0, [r0, #7]
c0de3f14:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3f18:	4370      	muls	r0, r6
c0de3f1a:	0a01      	lsrs	r1, r0, #8
c0de3f1c:	71b8      	strb	r0, [r7, #6]
c0de3f1e:	71f9      	strb	r1, [r7, #7]
c0de3f20:	68a1      	ldr	r1, [r4, #8]
c0de3f22:	b329      	cbz	r1, c0de3f70 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3f24:	4641      	mov	r1, r8
c0de3f26:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3f2a:	784c      	ldrb	r4, [r1, #1]
c0de3f2c:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3f30:	788d      	ldrb	r5, [r1, #2]
c0de3f32:	78c9      	ldrb	r1, [r1, #3]
c0de3f34:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3f38:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3f3c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3f40:	463a      	mov	r2, r7
c0de3f42:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3f46:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3f4a:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3f4e:	0e0b      	lsrs	r3, r1, #24
c0de3f50:	70d3      	strb	r3, [r2, #3]
c0de3f52:	0c0b      	lsrs	r3, r1, #16
c0de3f54:	0a09      	lsrs	r1, r1, #8
c0de3f56:	7051      	strb	r1, [r2, #1]
c0de3f58:	2100      	movs	r1, #0
c0de3f5a:	7093      	strb	r3, [r2, #2]
c0de3f5c:	7211      	strb	r1, [r2, #8]
c0de3f5e:	2e03      	cmp	r6, #3
c0de3f60:	bf38      	it	cc
c0de3f62:	2101      	movcc	r1, #1
c0de3f64:	0089      	lsls	r1, r1, #2
c0de3f66:	71d1      	strb	r1, [r2, #7]
c0de3f68:	2108      	movs	r1, #8
c0de3f6a:	e00a      	b.n	c0de3f82 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3f6c:	f000 b9fc 	b.w	c0de4368 <OUTLINED_FUNCTION_8>
c0de3f70:	6861      	ldr	r1, [r4, #4]
c0de3f72:	b119      	cbz	r1, c0de3f7c <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3f74:	f000 f9ec 	bl	c0de4350 <OUTLINED_FUNCTION_6>
c0de3f78:	2102      	movs	r1, #2
c0de3f7a:	e002      	b.n	c0de3f82 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3f7c:	f000 f9e8 	bl	c0de4350 <OUTLINED_FUNCTION_6>
c0de3f80:	2105      	movs	r1, #5
c0de3f82:	7111      	strb	r1, [r2, #4]
c0de3f84:	4641      	mov	r1, r8
c0de3f86:	4458      	add	r0, fp
c0de3f88:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3f8c:	784c      	ldrb	r4, [r1, #1]
c0de3f8e:	788d      	ldrb	r5, [r1, #2]
c0de3f90:	78ce      	ldrb	r6, [r1, #3]
c0de3f92:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3f96:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3f9a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3f9e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3fa2:	9c04      	ldr	r4, [sp, #16]
c0de3fa4:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3fa8:	1c5a      	adds	r2, r3, #1
c0de3faa:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3fae:	7e79      	ldrb	r1, [r7, #25]
c0de3fb0:	7eba      	ldrb	r2, [r7, #26]
c0de3fb2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3fb6:	eb00 0b01 	add.w	fp, r0, r1
c0de3fba:	6860      	ldr	r0, [r4, #4]
c0de3fbc:	2800      	cmp	r0, #0
c0de3fbe:	d074      	beq.n	c0de40aa <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3fc0:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3fc4:	2004      	movs	r0, #4
c0de3fc6:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3fca:	f002 ff38 	bl	c0de6e3e <nbgl_objPoolGet>
c0de3fce:	2603      	movs	r6, #3
c0de3fd0:	4607      	mov	r7, r0
c0de3fd2:	77c6      	strb	r6, [r0, #31]
c0de3fd4:	6860      	ldr	r0, [r4, #4]
c0de3fd6:	f003 f915 	bl	c0de7204 <pic>
c0de3fda:	4601      	mov	r1, r0
c0de3fdc:	2000      	movs	r0, #0
c0de3fde:	2301      	movs	r3, #1
c0de3fe0:	7178      	strb	r0, [r7, #5]
c0de3fe2:	2072      	movs	r0, #114	@ 0x72
c0de3fe4:	0e0a      	lsrs	r2, r1, #24
c0de3fe6:	7138      	strb	r0, [r7, #4]
c0de3fe8:	200a      	movs	r0, #10
c0de3fea:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3fee:	2005      	movs	r0, #5
c0de3ff0:	f887 0020 	strb.w	r0, [r7, #32]
c0de3ff4:	2001      	movs	r0, #1
c0de3ff6:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3ffa:	f000 f97e 	bl	c0de42fa <OUTLINED_FUNCTION_1>
c0de3ffe:	4682      	mov	sl, r0
c0de4000:	2804      	cmp	r0, #4
c0de4002:	d31c      	bcc.n	c0de403e <nbgl_layoutAddCenteredInfo+0x28a>
c0de4004:	463d      	mov	r5, r7
c0de4006:	f04f 0c01 	mov.w	ip, #1
c0de400a:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de400e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de4012:	786a      	ldrb	r2, [r5, #1]
c0de4014:	78ab      	ldrb	r3, [r5, #2]
c0de4016:	78ee      	ldrb	r6, [r5, #3]
c0de4018:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de401c:	ac05      	add	r4, sp, #20
c0de401e:	e9cd 4c00 	strd	r4, ip, [sp]
c0de4022:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4026:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de402a:	2303      	movs	r3, #3
c0de402c:	f000 f98b 	bl	c0de4346 <OUTLINED_FUNCTION_5>
c0de4030:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de4034:	f04f 0a03 	mov.w	sl, #3
c0de4038:	7128      	strb	r0, [r5, #4]
c0de403a:	0a00      	lsrs	r0, r0, #8
c0de403c:	7168      	strb	r0, [r5, #5]
c0de403e:	f000 f98f 	bl	c0de4360 <OUTLINED_FUNCTION_7>
c0de4042:	4641      	mov	r1, r8
c0de4044:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4048:	784c      	ldrb	r4, [r1, #1]
c0de404a:	788d      	ldrb	r5, [r1, #2]
c0de404c:	78ce      	ldrb	r6, [r1, #3]
c0de404e:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de4052:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4056:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de405a:	463d      	mov	r5, r7
c0de405c:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4060:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de4064:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4068:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de406c:	0e26      	lsrs	r6, r4, #24
c0de406e:	70ee      	strb	r6, [r5, #3]
c0de4070:	0c26      	lsrs	r6, r4, #16
c0de4072:	0a24      	lsrs	r4, r4, #8
c0de4074:	74fc      	strb	r4, [r7, #19]
c0de4076:	70ae      	strb	r6, [r5, #2]
c0de4078:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de407c:	2302      	movs	r3, #2
c0de407e:	2400      	movs	r4, #0
c0de4080:	3201      	adds	r2, #1
c0de4082:	767b      	strb	r3, [r7, #25]
c0de4084:	2308      	movs	r3, #8
c0de4086:	76bc      	strb	r4, [r7, #26]
c0de4088:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de408c:	79c0      	ldrb	r0, [r0, #7]
c0de408e:	75bb      	strb	r3, [r7, #22]
c0de4090:	fb0a f300 	mul.w	r3, sl, r0
c0de4094:	fb0a b000 	mla	r0, sl, r0, fp
c0de4098:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de409c:	71bb      	strb	r3, [r7, #6]
c0de409e:	0a1b      	lsrs	r3, r3, #8
c0de40a0:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de40a4:	f100 0b02 	add.w	fp, r0, #2
c0de40a8:	71fb      	strb	r3, [r7, #7]
c0de40aa:	7b20      	ldrb	r0, [r4, #12]
c0de40ac:	2102      	movs	r1, #2
c0de40ae:	2800      	cmp	r0, #0
c0de40b0:	bf08      	it	eq
c0de40b2:	2105      	moveq	r1, #5
c0de40b4:	f888 1016 	strb.w	r1, [r8, #22]
c0de40b8:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de40bc:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de40c0:	2272      	movs	r2, #114	@ 0x72
c0de40c2:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de40c6:	2000      	movs	r0, #0
c0de40c8:	f888 2004 	strb.w	r2, [r8, #4]
c0de40cc:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de40d0:	3101      	adds	r1, #1
c0de40d2:	f888 b006 	strb.w	fp, [r8, #6]
c0de40d6:	f888 0019 	strb.w	r0, [r8, #25]
c0de40da:	f888 001a 	strb.w	r0, [r8, #26]
c0de40de:	f888 0005 	strb.w	r0, [r8, #5]
c0de40e2:	f888 001f 	strb.w	r0, [r8, #31]
c0de40e6:	f888 2007 	strb.w	r2, [r8, #7]
c0de40ea:	f88a 1002 	strb.w	r1, [sl, #2]
c0de40ee:	b006      	add	sp, #24
c0de40f0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de40f4 <nbgl_layoutAddSwitch>:
c0de40f4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de40f8:	2800      	cmp	r0, #0
c0de40fa:	d07d      	beq.n	c0de41f8 <nbgl_layoutAddSwitch+0x104>
c0de40fc:	460d      	mov	r5, r1
c0de40fe:	7841      	ldrb	r1, [r0, #1]
c0de4100:	4604      	mov	r4, r0
c0de4102:	f000 f91d 	bl	c0de4340 <OUTLINED_FUNCTION_4>
c0de4106:	f04f 0803 	mov.w	r8, #3
c0de410a:	4606      	mov	r6, r0
c0de410c:	f880 801f 	strb.w	r8, [r0, #31]
c0de4110:	6828      	ldr	r0, [r5, #0]
c0de4112:	f003 f877 	bl	c0de7204 <pic>
c0de4116:	4601      	mov	r1, r0
c0de4118:	2072      	movs	r0, #114	@ 0x72
c0de411a:	2700      	movs	r7, #0
c0de411c:	2301      	movs	r3, #1
c0de411e:	7130      	strb	r0, [r6, #4]
c0de4120:	2008      	movs	r0, #8
c0de4122:	0e0a      	lsrs	r2, r1, #24
c0de4124:	7177      	strb	r7, [r6, #5]
c0de4126:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de412a:	2005      	movs	r0, #5
c0de412c:	f886 0020 	strb.w	r0, [r6, #32]
c0de4130:	2001      	movs	r0, #1
c0de4132:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4136:	4630      	mov	r0, r6
c0de4138:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de413c:	70c2      	strb	r2, [r0, #3]
c0de413e:	0c0a      	lsrs	r2, r1, #16
c0de4140:	7082      	strb	r2, [r0, #2]
c0de4142:	0a08      	lsrs	r0, r1, #8
c0de4144:	2272      	movs	r2, #114	@ 0x72
c0de4146:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de414a:	2008      	movs	r0, #8
c0de414c:	f002 fe8b 	bl	c0de6e66 <nbgl_getTextNbLinesInWidth>
c0de4150:	2801      	cmp	r0, #1
c0de4152:	d851      	bhi.n	c0de41f8 <nbgl_layoutAddSwitch+0x104>
c0de4154:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4158:	f002 fe80 	bl	c0de6e5c <nbgl_getFontLineHeight>
c0de415c:	6861      	ldr	r1, [r4, #4]
c0de415e:	78a2      	ldrb	r2, [r4, #2]
c0de4160:	76b7      	strb	r7, [r6, #26]
c0de4162:	71f7      	strb	r7, [r6, #7]
c0de4164:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4168:	71b0      	strb	r0, [r6, #6]
c0de416a:	2002      	movs	r0, #2
c0de416c:	f886 8019 	strb.w	r8, [r6, #25]
c0de4170:	75b0      	strb	r0, [r6, #22]
c0de4172:	1c50      	adds	r0, r2, #1
c0de4174:	70a0      	strb	r0, [r4, #2]
c0de4176:	6868      	ldr	r0, [r5, #4]
c0de4178:	2800      	cmp	r0, #0
c0de417a:	d04c      	beq.n	c0de4216 <nbgl_layoutAddSwitch+0x122>
c0de417c:	7861      	ldrb	r1, [r4, #1]
c0de417e:	f000 f8df 	bl	c0de4340 <OUTLINED_FUNCTION_4>
c0de4182:	4606      	mov	r6, r0
c0de4184:	2003      	movs	r0, #3
c0de4186:	77f0      	strb	r0, [r6, #31]
c0de4188:	6868      	ldr	r0, [r5, #4]
c0de418a:	f003 f83b 	bl	c0de7204 <pic>
c0de418e:	2172      	movs	r1, #114	@ 0x72
c0de4190:	4637      	mov	r7, r6
c0de4192:	f04f 0800 	mov.w	r8, #0
c0de4196:	f04f 0a05 	mov.w	sl, #5
c0de419a:	7131      	strb	r1, [r6, #4]
c0de419c:	210a      	movs	r1, #10
c0de419e:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de41a2:	f886 8005 	strb.w	r8, [r6, #5]
c0de41a6:	f886 a020 	strb.w	sl, [r6, #32]
c0de41aa:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de41ae:	0e01      	lsrs	r1, r0, #24
c0de41b0:	70f9      	strb	r1, [r7, #3]
c0de41b2:	0c01      	lsrs	r1, r0, #16
c0de41b4:	0a00      	lsrs	r0, r0, #8
c0de41b6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de41ba:	200a      	movs	r0, #10
c0de41bc:	70b9      	strb	r1, [r7, #2]
c0de41be:	f002 fe4d 	bl	c0de6e5c <nbgl_getFontLineHeight>
c0de41c2:	09c1      	lsrs	r1, r0, #7
c0de41c4:	783a      	ldrb	r2, [r7, #0]
c0de41c6:	78bb      	ldrb	r3, [r7, #2]
c0de41c8:	78ff      	ldrb	r7, [r7, #3]
c0de41ca:	0040      	lsls	r0, r0, #1
c0de41cc:	f04f 0b01 	mov.w	fp, #1
c0de41d0:	71f1      	strb	r1, [r6, #7]
c0de41d2:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de41d6:	71b0      	strb	r0, [r6, #6]
c0de41d8:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de41dc:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de41e0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de41e4:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de41e8:	2301      	movs	r3, #1
c0de41ea:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de41ee:	2272      	movs	r2, #114	@ 0x72
c0de41f0:	f002 fe39 	bl	c0de6e66 <nbgl_getTextNbLinesInWidth>
c0de41f4:	2802      	cmp	r0, #2
c0de41f6:	d902      	bls.n	c0de41fe <nbgl_layoutAddSwitch+0x10a>
c0de41f8:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de41fc:	e05d      	b.n	c0de42ba <nbgl_layoutAddSwitch+0x1c6>
c0de41fe:	6860      	ldr	r0, [r4, #4]
c0de4200:	78a1      	ldrb	r1, [r4, #2]
c0de4202:	f886 801a 	strb.w	r8, [r6, #26]
c0de4206:	f886 a016 	strb.w	sl, [r6, #22]
c0de420a:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de420e:	1c48      	adds	r0, r1, #1
c0de4210:	f886 b019 	strb.w	fp, [r6, #25]
c0de4214:	70a0      	strb	r0, [r4, #2]
c0de4216:	7861      	ldrb	r1, [r4, #1]
c0de4218:	2005      	movs	r0, #5
c0de421a:	f002 fe10 	bl	c0de6e3e <nbgl_objPoolGet>
c0de421e:	2600      	movs	r6, #0
c0de4220:	4607      	mov	r7, r0
c0de4222:	f04f 0a03 	mov.w	sl, #3
c0de4226:	f04f 0808 	mov.w	r8, #8
c0de422a:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de422e:	2001      	movs	r0, #1
c0de4230:	f887 a020 	strb.w	sl, [r7, #32]
c0de4234:	f887 a01f 	strb.w	sl, [r7, #31]
c0de4238:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de423c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4240:	7a28      	ldrb	r0, [r5, #8]
c0de4242:	4a1f      	ldr	r2, [pc, #124]	@ (c0de42c0 <nbgl_layoutAddSwitch+0x1cc>)
c0de4244:	491f      	ldr	r1, [pc, #124]	@ (c0de42c4 <nbgl_layoutAddSwitch+0x1d0>)
c0de4246:	2801      	cmp	r0, #1
c0de4248:	447a      	add	r2, pc
c0de424a:	4479      	add	r1, pc
c0de424c:	bf08      	it	eq
c0de424e:	4611      	moveq	r1, r2
c0de4250:	463a      	mov	r2, r7
c0de4252:	0e0b      	lsrs	r3, r1, #24
c0de4254:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4258:	70d3      	strb	r3, [r2, #3]
c0de425a:	0c0b      	lsrs	r3, r1, #16
c0de425c:	7093      	strb	r3, [r2, #2]
c0de425e:	0a0a      	lsrs	r2, r1, #8
c0de4260:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4264:	2801      	cmp	r0, #1
c0de4266:	4638      	mov	r0, r7
c0de4268:	4a17      	ldr	r2, [pc, #92]	@ (c0de42c8 <nbgl_layoutAddSwitch+0x1d4>)
c0de426a:	4d18      	ldr	r5, [pc, #96]	@ (c0de42cc <nbgl_layoutAddSwitch+0x1d8>)
c0de426c:	447a      	add	r2, pc
c0de426e:	447d      	add	r5, pc
c0de4270:	bf18      	it	ne
c0de4272:	462a      	movne	r2, r5
c0de4274:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de4278:	0e13      	lsrs	r3, r2, #24
c0de427a:	70c3      	strb	r3, [r0, #3]
c0de427c:	0c13      	lsrs	r3, r2, #16
c0de427e:	7083      	strb	r3, [r0, #2]
c0de4280:	0a10      	lsrs	r0, r2, #8
c0de4282:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4286:	2008      	movs	r0, #8
c0de4288:	f002 fdf7 	bl	c0de6e7a <nbgl_getTextWidth>
c0de428c:	6861      	ldr	r1, [r4, #4]
c0de428e:	78a2      	ldrb	r2, [r4, #2]
c0de4290:	786b      	ldrb	r3, [r5, #1]
c0de4292:	76be      	strb	r6, [r7, #26]
c0de4294:	71fe      	strb	r6, [r7, #7]
c0de4296:	f887 8016 	strb.w	r8, [r7, #22]
c0de429a:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de429e:	210c      	movs	r1, #12
c0de42a0:	f887 a019 	strb.w	sl, [r7, #25]
c0de42a4:	71b9      	strb	r1, [r7, #6]
c0de42a6:	7829      	ldrb	r1, [r5, #0]
c0de42a8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de42ac:	4408      	add	r0, r1
c0de42ae:	1c51      	adds	r1, r2, #1
c0de42b0:	300a      	adds	r0, #10
c0de42b2:	7138      	strb	r0, [r7, #4]
c0de42b4:	0a00      	lsrs	r0, r0, #8
c0de42b6:	70a1      	strb	r1, [r4, #2]
c0de42b8:	7178      	strb	r0, [r7, #5]
c0de42ba:	4630      	mov	r0, r6
c0de42bc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de42c0:	000039c1 	.word	0x000039c1
c0de42c4:	00003a8e 	.word	0x00003a8e
c0de42c8:	00003749 	.word	0x00003749
c0de42cc:	00003731 	.word	0x00003731

c0de42d0 <nbgl_layoutDraw>:
c0de42d0:	b120      	cbz	r0, c0de42dc <nbgl_layoutDraw+0xc>
c0de42d2:	b580      	push	{r7, lr}
c0de42d4:	f002 fda4 	bl	c0de6e20 <nbgl_screenRedraw>
c0de42d8:	2000      	movs	r0, #0
c0de42da:	bd80      	pop	{r7, pc}
c0de42dc:	f000 b844 	b.w	c0de4368 <OUTLINED_FUNCTION_8>

c0de42e0 <nbgl_layoutRelease>:
c0de42e0:	b148      	cbz	r0, c0de42f6 <nbgl_layoutRelease+0x16>
c0de42e2:	b510      	push	{r4, lr}
c0de42e4:	4604      	mov	r4, r0
c0de42e6:	7800      	ldrb	r0, [r0, #0]
c0de42e8:	b110      	cbz	r0, c0de42f0 <nbgl_layoutRelease+0x10>
c0de42ea:	7860      	ldrb	r0, [r4, #1]
c0de42ec:	f002 fd9d 	bl	c0de6e2a <nbgl_screenPop>
c0de42f0:	2000      	movs	r0, #0
c0de42f2:	70a0      	strb	r0, [r4, #2]
c0de42f4:	bd10      	pop	{r4, pc}
c0de42f6:	f000 b837 	b.w	c0de4368 <OUTLINED_FUNCTION_8>

c0de42fa <OUTLINED_FUNCTION_1>:
c0de42fa:	4638      	mov	r0, r7
c0de42fc:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4300:	70c2      	strb	r2, [r0, #3]
c0de4302:	0c0a      	lsrs	r2, r1, #16
c0de4304:	7082      	strb	r2, [r0, #2]
c0de4306:	0a08      	lsrs	r0, r1, #8
c0de4308:	2272      	movs	r2, #114	@ 0x72
c0de430a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de430e:	200a      	movs	r0, #10
c0de4310:	f002 bda9 	b.w	c0de6e66 <nbgl_getTextNbLinesInWidth>

c0de4314 <OUTLINED_FUNCTION_2>:
c0de4314:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4318:	784b      	ldrb	r3, [r1, #1]
c0de431a:	788d      	ldrb	r5, [r1, #2]
c0de431c:	78c9      	ldrb	r1, [r1, #3]
c0de431e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4322:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4326:	9d05      	ldr	r5, [sp, #20]
c0de4328:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de432c:	4770      	bx	lr

c0de432e <OUTLINED_FUNCTION_3>:
c0de432e:	70c2      	strb	r2, [r0, #3]
c0de4330:	0c0a      	lsrs	r2, r1, #16
c0de4332:	7082      	strb	r2, [r0, #2]
c0de4334:	0a08      	lsrs	r0, r1, #8
c0de4336:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de433a:	2008      	movs	r0, #8
c0de433c:	f002 bd9d 	b.w	c0de6e7a <nbgl_getTextWidth>

c0de4340 <OUTLINED_FUNCTION_4>:
c0de4340:	2004      	movs	r0, #4
c0de4342:	f002 bd7c 	b.w	c0de6e3e <nbgl_objPoolGet>

c0de4346 <OUTLINED_FUNCTION_5>:
c0de4346:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de434a:	2272      	movs	r2, #114	@ 0x72
c0de434c:	f002 bd9a 	b.w	c0de6e84 <nbgl_getTextMaxLenInNbLines>

c0de4350 <OUTLINED_FUNCTION_6>:
c0de4350:	2100      	movs	r1, #0
c0de4352:	463a      	mov	r2, r7
c0de4354:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4358:	70d1      	strb	r1, [r2, #3]
c0de435a:	7091      	strb	r1, [r2, #2]
c0de435c:	7051      	strb	r1, [r2, #1]
c0de435e:	4770      	bx	lr

c0de4360 <OUTLINED_FUNCTION_7>:
c0de4360:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4364:	f002 bd75 	b.w	c0de6e52 <nbgl_getFont>

c0de4368 <OUTLINED_FUNCTION_8>:
c0de4368:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de436c:	4770      	bx	lr

c0de436e <OUTLINED_FUNCTION_9>:
c0de436e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4372:	2003      	movs	r0, #3
c0de4374:	f887 0020 	strb.w	r0, [r7, #32]
c0de4378:	77f8      	strb	r0, [r7, #31]
c0de437a:	4770      	bx	lr

c0de437c <nbgl_stepDrawText>:
c0de437c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4380:	460e      	mov	r6, r1
c0de4382:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4384:	4605      	mov	r5, r0
c0de4386:	2000      	movs	r0, #0
c0de4388:	469a      	mov	sl, r3
c0de438a:	4617      	mov	r7, r2
c0de438c:	f000 f830 	bl	c0de43f0 <getFreeContext>
c0de4390:	b348      	cbz	r0, c0de43e6 <nbgl_stepDrawText+0x6a>
c0de4392:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de4396:	4604      	mov	r4, r0
c0de4398:	6146      	str	r6, [r0, #20]
c0de439a:	b10f      	cbz	r7, c0de43a0 <nbgl_stepDrawText+0x24>
c0de439c:	f000 fae1 	bl	c0de4962 <OUTLINED_FUNCTION_1>
c0de43a0:	200a      	movs	r0, #10
c0de43a2:	f1b8 0f00 	cmp.w	r8, #0
c0de43a6:	bf19      	ittee	ne
c0de43a8:	4641      	movne	r1, r8
c0de43aa:	2203      	movne	r2, #3
c0de43ac:	4651      	moveq	r1, sl
c0de43ae:	2204      	moveq	r2, #4
c0de43b0:	2372      	movs	r3, #114	@ 0x72
c0de43b2:	f002 fd5d 	bl	c0de6e70 <nbgl_getTextNbPagesInWidth>
c0de43b6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de43b8:	7020      	strb	r0, [r4, #0]
c0de43ba:	072a      	lsls	r2, r5, #28
c0de43bc:	bf46      	itte	mi
c0de43be:	3801      	submi	r0, #1
c0de43c0:	7060      	strbmi	r0, [r4, #1]
c0de43c2:	7860      	ldrbpl	r0, [r4, #1]
c0de43c4:	f8c4 800c 	str.w	r8, [r4, #12]
c0de43c8:	f8c4 a004 	str.w	sl, [r4, #4]
c0de43cc:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de43d0:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de43d4:	7461      	strb	r1, [r4, #17]
c0de43d6:	f005 0103 	and.w	r1, r5, #3
c0de43da:	7421      	strb	r1, [r4, #16]
c0de43dc:	b2c1      	uxtb	r1, r0
c0de43de:	4620      	mov	r0, r4
c0de43e0:	f000 f82c 	bl	c0de443c <displayTextPage>
c0de43e4:	e000      	b.n	c0de43e8 <nbgl_stepDrawText+0x6c>
c0de43e6:	2400      	movs	r4, #0
c0de43e8:	4620      	mov	r0, r4
c0de43ea:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de43f0 <getFreeContext>:
c0de43f0:	b570      	push	{r4, r5, r6, lr}
c0de43f2:	4604      	mov	r4, r0
c0de43f4:	4810      	ldr	r0, [pc, #64]	@ (c0de4438 <getFreeContext+0x48>)
c0de43f6:	460d      	mov	r5, r1
c0de43f8:	b151      	cbz	r1, c0de4410 <getFreeContext+0x20>
c0de43fa:	2100      	movs	r1, #0
c0de43fc:	2990      	cmp	r1, #144	@ 0x90
c0de43fe:	d00a      	beq.n	c0de4416 <getFreeContext+0x26>
c0de4400:	eb09 0200 	add.w	r2, r9, r0
c0de4404:	440a      	add	r2, r1
c0de4406:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de440a:	b132      	cbz	r2, c0de441a <getFreeContext+0x2a>
c0de440c:	3148      	adds	r1, #72	@ 0x48
c0de440e:	e7f5      	b.n	c0de43fc <getFreeContext+0xc>
c0de4410:	eb09 0600 	add.w	r6, r9, r0
c0de4414:	e005      	b.n	c0de4422 <getFreeContext+0x32>
c0de4416:	2600      	movs	r6, #0
c0de4418:	e00b      	b.n	c0de4432 <getFreeContext+0x42>
c0de441a:	4448      	add	r0, r9
c0de441c:	4408      	add	r0, r1
c0de441e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4422:	4630      	mov	r0, r6
c0de4424:	2148      	movs	r1, #72	@ 0x48
c0de4426:	f003 f9f9 	bl	c0de781c <__aeabi_memclr>
c0de442a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de442e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4432:	4630      	mov	r0, r6
c0de4434:	bd70      	pop	{r4, r5, r6, pc}
c0de4436:	bf00      	nop
c0de4438:	00000684 	.word	0x00000684

c0de443c <displayTextPage>:
c0de443c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4440:	b091      	sub	sp, #68	@ 0x44
c0de4442:	4604      	mov	r4, r0
c0de4444:	7840      	ldrb	r0, [r0, #1]
c0de4446:	460e      	mov	r6, r1
c0de4448:	4288      	cmp	r0, r1
c0de444a:	d21c      	bcs.n	c0de4486 <displayTextPage+0x4a>
c0de444c:	68a5      	ldr	r5, [r4, #8]
c0de444e:	7820      	ldrb	r0, [r4, #0]
c0de4450:	7066      	strb	r6, [r4, #1]
c0de4452:	3801      	subs	r0, #1
c0de4454:	42b0      	cmp	r0, r6
c0de4456:	dd31      	ble.n	c0de44bc <displayTextPage+0x80>
c0de4458:	68e0      	ldr	r0, [r4, #12]
c0de445a:	2101      	movs	r1, #1
c0de445c:	2303      	movs	r3, #3
c0de445e:	aa08      	add	r2, sp, #32
c0de4460:	e9cd 2100 	strd	r2, r1, [sp]
c0de4464:	4629      	mov	r1, r5
c0de4466:	2800      	cmp	r0, #0
c0de4468:	bf08      	it	eq
c0de446a:	2304      	moveq	r3, #4
c0de446c:	200a      	movs	r0, #10
c0de446e:	2272      	movs	r2, #114	@ 0x72
c0de4470:	f002 fd08 	bl	c0de6e84 <nbgl_getTextMaxLenInNbLines>
c0de4474:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4478:	1868      	adds	r0, r5, r1
c0de447a:	60a0      	str	r0, [r4, #8]
c0de447c:	5c69      	ldrb	r1, [r5, r1]
c0de447e:	290a      	cmp	r1, #10
c0de4480:	d11e      	bne.n	c0de44c0 <displayTextPage+0x84>
c0de4482:	3001      	adds	r0, #1
c0de4484:	e01b      	b.n	c0de44be <displayTextPage+0x82>
c0de4486:	68e5      	ldr	r5, [r4, #12]
c0de4488:	2d00      	cmp	r5, #0
c0de448a:	d074      	beq.n	c0de4576 <displayTextPage+0x13a>
c0de448c:	2700      	movs	r7, #0
c0de448e:	f04f 0801 	mov.w	r8, #1
c0de4492:	f10d 0a20 	add.w	sl, sp, #32
c0de4496:	42be      	cmp	r6, r7
c0de4498:	d0d9      	beq.n	c0de444e <displayTextPage+0x12>
c0de449a:	7820      	ldrb	r0, [r4, #0]
c0de449c:	3801      	subs	r0, #1
c0de449e:	42b8      	cmp	r0, r7
c0de44a0:	dd0a      	ble.n	c0de44b8 <displayTextPage+0x7c>
c0de44a2:	200a      	movs	r0, #10
c0de44a4:	4629      	mov	r1, r5
c0de44a6:	2272      	movs	r2, #114	@ 0x72
c0de44a8:	2303      	movs	r3, #3
c0de44aa:	e9cd a800 	strd	sl, r8, [sp]
c0de44ae:	f002 fce9 	bl	c0de6e84 <nbgl_getTextMaxLenInNbLines>
c0de44b2:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de44b6:	4405      	add	r5, r0
c0de44b8:	3701      	adds	r7, #1
c0de44ba:	e7ec      	b.n	c0de4496 <displayTextPage+0x5a>
c0de44bc:	2000      	movs	r0, #0
c0de44be:	60a0      	str	r0, [r4, #8]
c0de44c0:	484f      	ldr	r0, [pc, #316]	@ (c0de4600 <displayTextPage+0x1c4>)
c0de44c2:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de44c6:	4478      	add	r0, pc
c0de44c8:	9004      	str	r0, [sp, #16]
c0de44ca:	2000      	movs	r0, #0
c0de44cc:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de44d0:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de44d4:	f88d 000c 	strb.w	r0, [sp, #12]
c0de44d8:	ca07      	ldmia	r2, {r0, r1, r2}
c0de44da:	ab05      	add	r3, sp, #20
c0de44dc:	c307      	stmia	r3!, {r0, r1, r2}
c0de44de:	a803      	add	r0, sp, #12
c0de44e0:	f7ff f992 	bl	c0de3808 <nbgl_layoutGet>
c0de44e4:	7827      	ldrb	r7, [r4, #0]
c0de44e6:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de44ea:	4606      	mov	r6, r0
c0de44ec:	6420      	str	r0, [r4, #64]	@ 0x40
c0de44ee:	7c20      	ldrb	r0, [r4, #16]
c0de44f0:	4639      	mov	r1, r7
c0de44f2:	4652      	mov	r2, sl
c0de44f4:	f000 f8fc 	bl	c0de46f0 <getNavigationInfo>
c0de44f8:	4680      	mov	r8, r0
c0de44fa:	f88d 000b 	strb.w	r0, [sp, #11]
c0de44fe:	68e0      	ldr	r0, [r4, #12]
c0de4500:	b188      	cbz	r0, c0de4526 <displayTextPage+0xea>
c0de4502:	2f01      	cmp	r7, #1
c0de4504:	d115      	bne.n	c0de4532 <displayTextPage+0xf6>
c0de4506:	6861      	ldr	r1, [r4, #4]
c0de4508:	2008      	movs	r0, #8
c0de450a:	2272      	movs	r2, #114	@ 0x72
c0de450c:	2300      	movs	r3, #0
c0de450e:	2600      	movs	r6, #0
c0de4510:	f002 fca9 	bl	c0de6e66 <nbgl_getTextNbLinesInWidth>
c0de4514:	2802      	cmp	r0, #2
c0de4516:	d348      	bcc.n	c0de45aa <displayTextPage+0x16e>
c0de4518:	6861      	ldr	r1, [r4, #4]
c0de451a:	2018      	movs	r0, #24
c0de451c:	f104 0218 	add.w	r2, r4, #24
c0de4520:	e9cd 2000 	strd	r2, r0, [sp]
c0de4524:	e021      	b.n	c0de456a <displayTextPage+0x12e>
c0de4526:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de452a:	4630      	mov	r0, r6
c0de452c:	4629      	mov	r1, r5
c0de452e:	2200      	movs	r2, #0
c0de4530:	e055      	b.n	c0de45de <displayTextPage+0x1a2>
c0de4532:	f10a 0001 	add.w	r0, sl, #1
c0de4536:	6863      	ldr	r3, [r4, #4]
c0de4538:	2124      	movs	r1, #36	@ 0x24
c0de453a:	e9cd 0700 	strd	r0, r7, [sp]
c0de453e:	af08      	add	r7, sp, #32
c0de4540:	4a30      	ldr	r2, [pc, #192]	@ (c0de4604 <displayTextPage+0x1c8>)
c0de4542:	4638      	mov	r0, r7
c0de4544:	447a      	add	r2, pc
c0de4546:	f002 fccb 	bl	c0de6ee0 <snprintf>
c0de454a:	2008      	movs	r0, #8
c0de454c:	4639      	mov	r1, r7
c0de454e:	2272      	movs	r2, #114	@ 0x72
c0de4550:	2300      	movs	r3, #0
c0de4552:	f04f 0a00 	mov.w	sl, #0
c0de4556:	f002 fc86 	bl	c0de6e66 <nbgl_getTextNbLinesInWidth>
c0de455a:	f104 0c18 	add.w	ip, r4, #24
c0de455e:	2802      	cmp	r0, #2
c0de4560:	d32c      	bcc.n	c0de45bc <displayTextPage+0x180>
c0de4562:	2018      	movs	r0, #24
c0de4564:	e9cd c000 	strd	ip, r0, [sp]
c0de4568:	a908      	add	r1, sp, #32
c0de456a:	2008      	movs	r0, #8
c0de456c:	2272      	movs	r2, #114	@ 0x72
c0de456e:	2301      	movs	r3, #1
c0de4570:	f002 fc8d 	bl	c0de6e8e <nbgl_textReduceOnNbLines>
c0de4574:	e02d      	b.n	c0de45d2 <displayTextPage+0x196>
c0de4576:	6865      	ldr	r5, [r4, #4]
c0de4578:	2700      	movs	r7, #0
c0de457a:	f04f 0801 	mov.w	r8, #1
c0de457e:	f10d 0a20 	add.w	sl, sp, #32
c0de4582:	42be      	cmp	r6, r7
c0de4584:	f43f af63 	beq.w	c0de444e <displayTextPage+0x12>
c0de4588:	7820      	ldrb	r0, [r4, #0]
c0de458a:	3801      	subs	r0, #1
c0de458c:	42b8      	cmp	r0, r7
c0de458e:	dd0a      	ble.n	c0de45a6 <displayTextPage+0x16a>
c0de4590:	200a      	movs	r0, #10
c0de4592:	4629      	mov	r1, r5
c0de4594:	2272      	movs	r2, #114	@ 0x72
c0de4596:	2304      	movs	r3, #4
c0de4598:	e9cd a800 	strd	sl, r8, [sp]
c0de459c:	f002 fc72 	bl	c0de6e84 <nbgl_getTextMaxLenInNbLines>
c0de45a0:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de45a4:	4405      	add	r5, r0
c0de45a6:	3701      	adds	r7, #1
c0de45a8:	e7eb      	b.n	c0de4582 <displayTextPage+0x146>
c0de45aa:	6861      	ldr	r1, [r4, #4]
c0de45ac:	f104 0018 	add.w	r0, r4, #24
c0de45b0:	2217      	movs	r2, #23
c0de45b2:	f003 f929 	bl	c0de7808 <__aeabi_memcpy>
c0de45b6:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de45ba:	e00a      	b.n	c0de45d2 <displayTextPage+0x196>
c0de45bc:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de45be:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de45c2:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de45c6:	8838      	ldrh	r0, [r7, #0]
c0de45c8:	f8ac 0000 	strh.w	r0, [ip]
c0de45cc:	78b8      	ldrb	r0, [r7, #2]
c0de45ce:	f88c 0002 	strb.w	r0, [ip, #2]
c0de45d2:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de45d6:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de45d8:	f104 0118 	add.w	r1, r4, #24
c0de45dc:	462a      	mov	r2, r5
c0de45de:	f7ff f9d5 	bl	c0de398c <nbgl_layoutAddText>
c0de45e2:	f1b8 0f00 	cmp.w	r8, #0
c0de45e6:	d004      	beq.n	c0de45f2 <displayTextPage+0x1b6>
c0de45e8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de45ea:	f10d 010a 	add.w	r1, sp, #10
c0de45ee:	f7ff f96f 	bl	c0de38d0 <nbgl_layoutAddNavigation>
c0de45f2:	f000 f9e9 	bl	c0de49c8 <OUTLINED_FUNCTION_4>
c0de45f6:	f002 fbfa 	bl	c0de6dee <nbgl_refresh>
c0de45fa:	b011      	add	sp, #68	@ 0x44
c0de45fc:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4600:	000001bb 	.word	0x000001bb
c0de4604:	000035ae 	.word	0x000035ae

c0de4608 <nbgl_stepDrawCenteredInfo>:
c0de4608:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de460c:	b087      	sub	sp, #28
c0de460e:	460d      	mov	r5, r1
c0de4610:	4682      	mov	sl, r0
c0de4612:	a802      	add	r0, sp, #8
c0de4614:	f000 f9d3 	bl	c0de49be <OUTLINED_FUNCTION_3>
c0de4618:	4819      	ldr	r0, [pc, #100]	@ (c0de4680 <nbgl_stepDrawCenteredInfo+0x78>)
c0de461a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de461c:	4478      	add	r0, pc
c0de461e:	f000 f9c5 	bl	c0de49ac <OUTLINED_FUNCTION_2>
c0de4622:	b168      	cbz	r0, c0de4640 <nbgl_stepDrawCenteredInfo+0x38>
c0de4624:	4604      	mov	r4, r0
c0de4626:	6145      	str	r5, [r0, #20]
c0de4628:	b10f      	cbz	r7, c0de462e <nbgl_stepDrawCenteredInfo+0x26>
c0de462a:	f000 f953 	bl	c0de48d4 <OUTLINED_FUNCTION_0>
c0de462e:	f000 f9ce 	bl	c0de49ce <OUTLINED_FUNCTION_5>
c0de4632:	d007      	beq.n	c0de4644 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4634:	2802      	cmp	r0, #2
c0de4636:	d007      	beq.n	c0de4648 <nbgl_stepDrawCenteredInfo+0x40>
c0de4638:	2801      	cmp	r0, #1
c0de463a:	d108      	bne.n	c0de464e <nbgl_stepDrawCenteredInfo+0x46>
c0de463c:	2002      	movs	r0, #2
c0de463e:	e004      	b.n	c0de464a <nbgl_stepDrawCenteredInfo+0x42>
c0de4640:	2400      	movs	r4, #0
c0de4642:	e018      	b.n	c0de4676 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4644:	2003      	movs	r0, #3
c0de4646:	e000      	b.n	c0de464a <nbgl_stepDrawCenteredInfo+0x42>
c0de4648:	2001      	movs	r0, #1
c0de464a:	2500      	movs	r5, #0
c0de464c:	e000      	b.n	c0de4650 <nbgl_stepDrawCenteredInfo+0x48>
c0de464e:	2000      	movs	r0, #0
c0de4650:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4654:	a802      	add	r0, sp, #8
c0de4656:	f7ff f8d7 	bl	c0de3808 <nbgl_layoutGet>
c0de465a:	4641      	mov	r1, r8
c0de465c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de465e:	f7ff fba9 	bl	c0de3db4 <nbgl_layoutAddCenteredInfo>
c0de4662:	b925      	cbnz	r5, c0de466e <nbgl_stepDrawCenteredInfo+0x66>
c0de4664:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4666:	f10d 0106 	add.w	r1, sp, #6
c0de466a:	f7ff f931 	bl	c0de38d0 <nbgl_layoutAddNavigation>
c0de466e:	f000 f9ab 	bl	c0de49c8 <OUTLINED_FUNCTION_4>
c0de4672:	f002 fbbc 	bl	c0de6dee <nbgl_refresh>
c0de4676:	4620      	mov	r0, r4
c0de4678:	b007      	add	sp, #28
c0de467a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de467e:	bf00      	nop
c0de4680:	00000065 	.word	0x00000065

c0de4684 <actionCallback>:
c0de4684:	b510      	push	{r4, lr}
c0de4686:	460c      	mov	r4, r1
c0de4688:	f000 f8f0 	bl	c0de486c <getContextFromLayout>
c0de468c:	b378      	cbz	r0, c0de46ee <actionCallback+0x6a>
c0de468e:	2c04      	cmp	r4, #4
c0de4690:	d006      	beq.n	c0de46a0 <actionCallback+0x1c>
c0de4692:	2c01      	cmp	r4, #1
c0de4694:	d008      	beq.n	c0de46a8 <actionCallback+0x24>
c0de4696:	bb54      	cbnz	r4, c0de46ee <actionCallback+0x6a>
c0de4698:	7841      	ldrb	r1, [r0, #1]
c0de469a:	b1d9      	cbz	r1, c0de46d4 <actionCallback+0x50>
c0de469c:	3901      	subs	r1, #1
c0de469e:	e009      	b.n	c0de46b4 <actionCallback+0x30>
c0de46a0:	6942      	ldr	r2, [r0, #20]
c0de46a2:	b322      	cbz	r2, c0de46ee <actionCallback+0x6a>
c0de46a4:	2104      	movs	r1, #4
c0de46a6:	e01f      	b.n	c0de46e8 <actionCallback+0x64>
c0de46a8:	7802      	ldrb	r2, [r0, #0]
c0de46aa:	7841      	ldrb	r1, [r0, #1]
c0de46ac:	3a01      	subs	r2, #1
c0de46ae:	428a      	cmp	r2, r1
c0de46b0:	dd05      	ble.n	c0de46be <actionCallback+0x3a>
c0de46b2:	3101      	adds	r1, #1
c0de46b4:	b2c9      	uxtb	r1, r1
c0de46b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de46ba:	f7ff bebf 	b.w	c0de443c <displayTextPage>
c0de46be:	7c01      	ldrb	r1, [r0, #16]
c0de46c0:	f041 0102 	orr.w	r1, r1, #2
c0de46c4:	2903      	cmp	r1, #3
c0de46c6:	d001      	beq.n	c0de46cc <actionCallback+0x48>
c0de46c8:	7c41      	ldrb	r1, [r0, #17]
c0de46ca:	b181      	cbz	r1, c0de46ee <actionCallback+0x6a>
c0de46cc:	6942      	ldr	r2, [r0, #20]
c0de46ce:	b172      	cbz	r2, c0de46ee <actionCallback+0x6a>
c0de46d0:	2101      	movs	r1, #1
c0de46d2:	e009      	b.n	c0de46e8 <actionCallback+0x64>
c0de46d4:	7c01      	ldrb	r1, [r0, #16]
c0de46d6:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de46da:	2902      	cmp	r1, #2
c0de46dc:	d001      	beq.n	c0de46e2 <actionCallback+0x5e>
c0de46de:	7c41      	ldrb	r1, [r0, #17]
c0de46e0:	b129      	cbz	r1, c0de46ee <actionCallback+0x6a>
c0de46e2:	6942      	ldr	r2, [r0, #20]
c0de46e4:	b11a      	cbz	r2, c0de46ee <actionCallback+0x6a>
c0de46e6:	2100      	movs	r1, #0
c0de46e8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de46ec:	4710      	bx	r2
c0de46ee:	bd10      	pop	{r4, pc}

c0de46f0 <getNavigationInfo>:
c0de46f0:	4603      	mov	r3, r0
c0de46f2:	2902      	cmp	r1, #2
c0de46f4:	d308      	bcc.n	c0de4708 <getNavigationInfo+0x18>
c0de46f6:	3901      	subs	r1, #1
c0de46f8:	4610      	mov	r0, r2
c0de46fa:	2a00      	cmp	r2, #0
c0de46fc:	bf18      	it	ne
c0de46fe:	2001      	movne	r0, #1
c0de4700:	4291      	cmp	r1, r2
c0de4702:	bf88      	it	hi
c0de4704:	3002      	addhi	r0, #2
c0de4706:	e000      	b.n	c0de470a <getNavigationInfo+0x1a>
c0de4708:	2000      	movs	r0, #0
c0de470a:	2b03      	cmp	r3, #3
c0de470c:	d00a      	beq.n	c0de4724 <getNavigationInfo+0x34>
c0de470e:	2b02      	cmp	r3, #2
c0de4710:	bf04      	itt	eq
c0de4712:	f040 0001 	orreq.w	r0, r0, #1
c0de4716:	4770      	bxeq	lr
c0de4718:	2b01      	cmp	r3, #1
c0de471a:	bf04      	itt	eq
c0de471c:	f040 0002 	orreq.w	r0, r0, #2
c0de4720:	4770      	bxeq	lr
c0de4722:	4770      	bx	lr
c0de4724:	2003      	movs	r0, #3
c0de4726:	4770      	bx	lr

c0de4728 <nbgl_stepDrawMenuList>:
c0de4728:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de472a:	460f      	mov	r7, r1
c0de472c:	4606      	mov	r6, r0
c0de472e:	2002      	movs	r0, #2
c0de4730:	4619      	mov	r1, r3
c0de4732:	4615      	mov	r5, r2
c0de4734:	f7ff fe5c 	bl	c0de43f0 <getFreeContext>
c0de4738:	b170      	cbz	r0, c0de4758 <nbgl_stepDrawMenuList+0x30>
c0de473a:	4604      	mov	r4, r0
c0de473c:	b10f      	cbz	r7, c0de4742 <nbgl_stepDrawMenuList+0x1a>
c0de473e:	f000 f910 	bl	c0de4962 <OUTLINED_FUNCTION_1>
c0de4742:	7928      	ldrb	r0, [r5, #4]
c0de4744:	7220      	strb	r0, [r4, #8]
c0de4746:	7968      	ldrb	r0, [r5, #5]
c0de4748:	7260      	strb	r0, [r4, #9]
c0de474a:	6828      	ldr	r0, [r5, #0]
c0de474c:	e9c4 6000 	strd	r6, r0, [r4]
c0de4750:	4620      	mov	r0, r4
c0de4752:	f000 f805 	bl	c0de4760 <displayMenuList>
c0de4756:	e000      	b.n	c0de475a <nbgl_stepDrawMenuList+0x32>
c0de4758:	2400      	movs	r4, #0
c0de475a:	4620      	mov	r0, r4
c0de475c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4760 <displayMenuList>:
c0de4760:	b5b0      	push	{r4, r5, r7, lr}
c0de4762:	b086      	sub	sp, #24
c0de4764:	4604      	mov	r4, r0
c0de4766:	2000      	movs	r0, #0
c0de4768:	9001      	str	r0, [sp, #4]
c0de476a:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de476e:	4819      	ldr	r0, [pc, #100]	@ (c0de47d4 <displayMenuList+0x74>)
c0de4770:	4478      	add	r0, pc
c0de4772:	9002      	str	r0, [sp, #8]
c0de4774:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4778:	f88d 0004 	strb.w	r0, [sp, #4]
c0de477c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de477e:	ab03      	add	r3, sp, #12
c0de4780:	c307      	stmia	r3!, {r0, r1, r2}
c0de4782:	a801      	add	r0, sp, #4
c0de4784:	f7ff f840 	bl	c0de3808 <nbgl_layoutGet>
c0de4788:	1d25      	adds	r5, r4, #4
c0de478a:	6420      	str	r0, [r4, #64]	@ 0x40
c0de478c:	4629      	mov	r1, r5
c0de478e:	f7ff fabd 	bl	c0de3d0c <nbgl_layoutAddMenuList>
c0de4792:	7a20      	ldrb	r0, [r4, #8]
c0de4794:	2802      	cmp	r0, #2
c0de4796:	d316      	bcc.n	c0de47c6 <displayMenuList+0x66>
c0de4798:	2101      	movs	r1, #1
c0de479a:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de479e:	7969      	ldrb	r1, [r5, #5]
c0de47a0:	2900      	cmp	r1, #0
c0de47a2:	460a      	mov	r2, r1
c0de47a4:	bf18      	it	ne
c0de47a6:	2201      	movne	r2, #1
c0de47a8:	3801      	subs	r0, #1
c0de47aa:	f88d 2003 	strb.w	r2, [sp, #3]
c0de47ae:	4288      	cmp	r0, r1
c0de47b0:	d903      	bls.n	c0de47ba <displayMenuList+0x5a>
c0de47b2:	1c90      	adds	r0, r2, #2
c0de47b4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de47b8:	e000      	b.n	c0de47bc <displayMenuList+0x5c>
c0de47ba:	b121      	cbz	r1, c0de47c6 <displayMenuList+0x66>
c0de47bc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de47be:	f10d 0102 	add.w	r1, sp, #2
c0de47c2:	f7ff f885 	bl	c0de38d0 <nbgl_layoutAddNavigation>
c0de47c6:	f000 f8ff 	bl	c0de49c8 <OUTLINED_FUNCTION_4>
c0de47ca:	f002 fb10 	bl	c0de6dee <nbgl_refresh>
c0de47ce:	b006      	add	sp, #24
c0de47d0:	bdb0      	pop	{r4, r5, r7, pc}
c0de47d2:	bf00      	nop
c0de47d4:	00000121 	.word	0x00000121

c0de47d8 <nbgl_stepDrawSwitch>:
c0de47d8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de47dc:	b087      	sub	sp, #28
c0de47de:	460d      	mov	r5, r1
c0de47e0:	4682      	mov	sl, r0
c0de47e2:	a802      	add	r0, sp, #8
c0de47e4:	f000 f8eb 	bl	c0de49be <OUTLINED_FUNCTION_3>
c0de47e8:	4819      	ldr	r0, [pc, #100]	@ (c0de4850 <nbgl_stepDrawSwitch+0x78>)
c0de47ea:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de47ec:	4478      	add	r0, pc
c0de47ee:	f000 f8dd 	bl	c0de49ac <OUTLINED_FUNCTION_2>
c0de47f2:	b168      	cbz	r0, c0de4810 <nbgl_stepDrawSwitch+0x38>
c0de47f4:	4604      	mov	r4, r0
c0de47f6:	6145      	str	r5, [r0, #20]
c0de47f8:	b10f      	cbz	r7, c0de47fe <nbgl_stepDrawSwitch+0x26>
c0de47fa:	f000 f86b 	bl	c0de48d4 <OUTLINED_FUNCTION_0>
c0de47fe:	f000 f8e6 	bl	c0de49ce <OUTLINED_FUNCTION_5>
c0de4802:	d007      	beq.n	c0de4814 <nbgl_stepDrawSwitch+0x3c>
c0de4804:	2802      	cmp	r0, #2
c0de4806:	d007      	beq.n	c0de4818 <nbgl_stepDrawSwitch+0x40>
c0de4808:	2801      	cmp	r0, #1
c0de480a:	d108      	bne.n	c0de481e <nbgl_stepDrawSwitch+0x46>
c0de480c:	2002      	movs	r0, #2
c0de480e:	e004      	b.n	c0de481a <nbgl_stepDrawSwitch+0x42>
c0de4810:	2400      	movs	r4, #0
c0de4812:	e018      	b.n	c0de4846 <nbgl_stepDrawSwitch+0x6e>
c0de4814:	2003      	movs	r0, #3
c0de4816:	e000      	b.n	c0de481a <nbgl_stepDrawSwitch+0x42>
c0de4818:	2001      	movs	r0, #1
c0de481a:	2500      	movs	r5, #0
c0de481c:	e000      	b.n	c0de4820 <nbgl_stepDrawSwitch+0x48>
c0de481e:	2000      	movs	r0, #0
c0de4820:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4824:	a802      	add	r0, sp, #8
c0de4826:	f7fe ffef 	bl	c0de3808 <nbgl_layoutGet>
c0de482a:	4641      	mov	r1, r8
c0de482c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de482e:	f7ff fc61 	bl	c0de40f4 <nbgl_layoutAddSwitch>
c0de4832:	b925      	cbnz	r5, c0de483e <nbgl_stepDrawSwitch+0x66>
c0de4834:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4836:	f10d 0106 	add.w	r1, sp, #6
c0de483a:	f7ff f849 	bl	c0de38d0 <nbgl_layoutAddNavigation>
c0de483e:	f000 f8c3 	bl	c0de49c8 <OUTLINED_FUNCTION_4>
c0de4842:	f002 fad4 	bl	c0de6dee <nbgl_refresh>
c0de4846:	4620      	mov	r0, r4
c0de4848:	b007      	add	sp, #28
c0de484a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de484e:	bf00      	nop
c0de4850:	fffffe95 	.word	0xfffffe95

c0de4854 <nbgl_stepRelease>:
c0de4854:	b138      	cbz	r0, c0de4866 <nbgl_stepRelease+0x12>
c0de4856:	b510      	push	{r4, lr}
c0de4858:	4604      	mov	r4, r0
c0de485a:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de485c:	f7ff fd40 	bl	c0de42e0 <nbgl_layoutRelease>
c0de4860:	2100      	movs	r1, #0
c0de4862:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4864:	bd10      	pop	{r4, pc}
c0de4866:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de486a:	4770      	bx	lr

c0de486c <getContextFromLayout>:
c0de486c:	4a08      	ldr	r2, [pc, #32]	@ (c0de4890 <getContextFromLayout+0x24>)
c0de486e:	2100      	movs	r1, #0
c0de4870:	29d8      	cmp	r1, #216	@ 0xd8
c0de4872:	bf04      	itt	eq
c0de4874:	2000      	moveq	r0, #0
c0de4876:	4770      	bxeq	lr
c0de4878:	eb09 0302 	add.w	r3, r9, r2
c0de487c:	440b      	add	r3, r1
c0de487e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4880:	4283      	cmp	r3, r0
c0de4882:	d001      	beq.n	c0de4888 <getContextFromLayout+0x1c>
c0de4884:	3148      	adds	r1, #72	@ 0x48
c0de4886:	e7f3      	b.n	c0de4870 <getContextFromLayout+0x4>
c0de4888:	eb09 0002 	add.w	r0, r9, r2
c0de488c:	4408      	add	r0, r1
c0de488e:	4770      	bx	lr
c0de4890:	00000684 	.word	0x00000684

c0de4894 <menuListActionCallback>:
c0de4894:	b510      	push	{r4, lr}
c0de4896:	460c      	mov	r4, r1
c0de4898:	f7ff ffe8 	bl	c0de486c <getContextFromLayout>
c0de489c:	b1c8      	cbz	r0, c0de48d2 <menuListActionCallback+0x3e>
c0de489e:	2c04      	cmp	r4, #4
c0de48a0:	d006      	beq.n	c0de48b0 <menuListActionCallback+0x1c>
c0de48a2:	2c01      	cmp	r4, #1
c0de48a4:	d00a      	beq.n	c0de48bc <menuListActionCallback+0x28>
c0de48a6:	b9a4      	cbnz	r4, c0de48d2 <menuListActionCallback+0x3e>
c0de48a8:	7a41      	ldrb	r1, [r0, #9]
c0de48aa:	b191      	cbz	r1, c0de48d2 <menuListActionCallback+0x3e>
c0de48ac:	3901      	subs	r1, #1
c0de48ae:	e00b      	b.n	c0de48c8 <menuListActionCallback+0x34>
c0de48b0:	7a41      	ldrb	r1, [r0, #9]
c0de48b2:	6802      	ldr	r2, [r0, #0]
c0de48b4:	4608      	mov	r0, r1
c0de48b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de48ba:	4710      	bx	r2
c0de48bc:	7a02      	ldrb	r2, [r0, #8]
c0de48be:	7a41      	ldrb	r1, [r0, #9]
c0de48c0:	3a01      	subs	r2, #1
c0de48c2:	428a      	cmp	r2, r1
c0de48c4:	dd05      	ble.n	c0de48d2 <menuListActionCallback+0x3e>
c0de48c6:	3101      	adds	r1, #1
c0de48c8:	7241      	strb	r1, [r0, #9]
c0de48ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de48ce:	f7ff bf47 	b.w	c0de4760 <displayMenuList>
c0de48d2:	bd10      	pop	{r4, pc}

c0de48d4 <OUTLINED_FUNCTION_0>:
c0de48d4:	7838      	ldrb	r0, [r7, #0]
c0de48d6:	7879      	ldrb	r1, [r7, #1]
c0de48d8:	78ba      	ldrb	r2, [r7, #2]
c0de48da:	78fb      	ldrb	r3, [r7, #3]
c0de48dc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48e0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de48e4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de48e8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de48ea:	4638      	mov	r0, r7
c0de48ec:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de48f0:	7a79      	ldrb	r1, [r7, #9]
c0de48f2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de48f6:	7882      	ldrb	r2, [r0, #2]
c0de48f8:	78c3      	ldrb	r3, [r0, #3]
c0de48fa:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48fe:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4902:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4904:	4639      	mov	r1, r7
c0de4906:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de490a:	797a      	ldrb	r2, [r7, #5]
c0de490c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4910:	788b      	ldrb	r3, [r1, #2]
c0de4912:	78cd      	ldrb	r5, [r1, #3]
c0de4914:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4918:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de491c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de491e:	783a      	ldrb	r2, [r7, #0]
c0de4920:	787b      	ldrb	r3, [r7, #1]
c0de4922:	78bd      	ldrb	r5, [r7, #2]
c0de4924:	78fe      	ldrb	r6, [r7, #3]
c0de4926:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de492a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de492e:	7803      	ldrb	r3, [r0, #0]
c0de4930:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4934:	7885      	ldrb	r5, [r0, #2]
c0de4936:	78c0      	ldrb	r0, [r0, #3]
c0de4938:	9204      	str	r2, [sp, #16]
c0de493a:	7a7a      	ldrb	r2, [r7, #9]
c0de493c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4940:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4944:	788b      	ldrb	r3, [r1, #2]
c0de4946:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de494a:	780a      	ldrb	r2, [r1, #0]
c0de494c:	78c9      	ldrb	r1, [r1, #3]
c0de494e:	9006      	str	r0, [sp, #24]
c0de4950:	7978      	ldrb	r0, [r7, #5]
c0de4952:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4956:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de495a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de495e:	9005      	str	r0, [sp, #20]
c0de4960:	4770      	bx	lr

c0de4962 <OUTLINED_FUNCTION_1>:
c0de4962:	7838      	ldrb	r0, [r7, #0]
c0de4964:	7879      	ldrb	r1, [r7, #1]
c0de4966:	78ba      	ldrb	r2, [r7, #2]
c0de4968:	78fb      	ldrb	r3, [r7, #3]
c0de496a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de496e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4972:	4639      	mov	r1, r7
c0de4974:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4978:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de497c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de497e:	7a78      	ldrb	r0, [r7, #9]
c0de4980:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4984:	788a      	ldrb	r2, [r1, #2]
c0de4986:	78c9      	ldrb	r1, [r1, #3]
c0de4988:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de498c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4990:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4992:	7978      	ldrb	r0, [r7, #5]
c0de4994:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4998:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de499c:	78b9      	ldrb	r1, [r7, #2]
c0de499e:	78fa      	ldrb	r2, [r7, #3]
c0de49a0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de49a4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de49a8:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de49aa:	4770      	bx	lr

c0de49ac <OUTLINED_FUNCTION_2>:
c0de49ac:	f88d 1008 	strb.w	r1, [sp, #8]
c0de49b0:	9003      	str	r0, [sp, #12]
c0de49b2:	2000      	movs	r0, #0
c0de49b4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de49b8:	2001      	movs	r0, #1
c0de49ba:	f7ff bd19 	b.w	c0de43f0 <getFreeContext>

c0de49be <OUTLINED_FUNCTION_3>:
c0de49be:	2114      	movs	r1, #20
c0de49c0:	4698      	mov	r8, r3
c0de49c2:	4617      	mov	r7, r2
c0de49c4:	f002 bf2a 	b.w	c0de781c <__aeabi_memclr>

c0de49c8 <OUTLINED_FUNCTION_4>:
c0de49c8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de49ca:	f7ff bc81 	b.w	c0de42d0 <nbgl_layoutDraw>

c0de49ce <OUTLINED_FUNCTION_5>:
c0de49ce:	2501      	movs	r5, #1
c0de49d0:	f00a 0003 	and.w	r0, sl, #3
c0de49d4:	2803      	cmp	r0, #3
c0de49d6:	7025      	strb	r5, [r4, #0]
c0de49d8:	7420      	strb	r0, [r4, #16]
c0de49da:	4770      	bx	lr

c0de49dc <nbgl_useCaseHomeAndSettings>:
c0de49dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de49e0:	4607      	mov	r7, r0
c0de49e2:	4810      	ldr	r0, [pc, #64]	@ (c0de4a24 <nbgl_useCaseHomeAndSettings+0x48>)
c0de49e4:	f001 fc98 	bl	c0de6318 <OUTLINED_FUNCTION_0>
c0de49e8:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de49ec:	6425      	str	r5, [r4, #64]	@ 0x40
c0de49ee:	9d06      	ldr	r5, [sp, #24]
c0de49f0:	4628      	mov	r0, r5
c0de49f2:	f002 fc07 	bl	c0de7204 <pic>
c0de49f6:	6460      	str	r0, [r4, #68]	@ 0x44
c0de49f8:	9807      	ldr	r0, [sp, #28]
c0de49fa:	f002 fc03 	bl	c0de7204 <pic>
c0de49fe:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4a00:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4a04:	6521      	str	r1, [r4, #80]	@ 0x50
c0de4a06:	9908      	ldr	r1, [sp, #32]
c0de4a08:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de4a0c:	bf18      	it	ne
c0de4a0e:	2d00      	cmpne	r5, #0
c0de4a10:	d103      	bne.n	c0de4a1a <nbgl_useCaseHomeAndSettings+0x3e>
c0de4a12:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4a16:	f000 b843 	b.w	c0de4aa0 <startUseCaseHome>
c0de4a1a:	4640      	mov	r0, r8
c0de4a1c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4a20:	f000 b802 	b.w	c0de4a28 <startUseCaseSettingsAtPage>
c0de4a24:	0000075c 	.word	0x0000075c

c0de4a28 <startUseCaseSettingsAtPage>:
c0de4a28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4a2a:	b08f      	sub	sp, #60	@ 0x3c
c0de4a2c:	4604      	mov	r4, r0
c0de4a2e:	a801      	add	r0, sp, #4
c0de4a30:	2138      	movs	r1, #56	@ 0x38
c0de4a32:	f002 fef3 	bl	c0de781c <__aeabi_memclr>
c0de4a36:	4e19      	ldr	r6, [pc, #100]	@ (c0de4a9c <startUseCaseSettingsAtPage+0x74>)
c0de4a38:	eb09 0006 	add.w	r0, r9, r6
c0de4a3c:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4a40:	280f      	cmp	r0, #15
c0de4a42:	bf1e      	ittt	ne
c0de4a44:	eb09 0006 	addne.w	r0, r9, r6
c0de4a48:	210e      	movne	r1, #14
c0de4a4a:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de4a4e:	eb09 0006 	add.w	r0, r9, r6
c0de4a52:	2101      	movs	r1, #1
c0de4a54:	2700      	movs	r7, #0
c0de4a56:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4a5a:	ad01      	add	r5, sp, #4
c0de4a5c:	eb09 0006 	add.w	r0, r9, r6
c0de4a60:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de4a62:	7a01      	ldrb	r1, [r0, #8]
c0de4a64:	428f      	cmp	r7, r1
c0de4a66:	d20e      	bcs.n	c0de4a86 <startUseCaseSettingsAtPage+0x5e>
c0de4a68:	b279      	sxtb	r1, r7
c0de4a6a:	462a      	mov	r2, r5
c0de4a6c:	f000 fca6 	bl	c0de53bc <getContentAtIdx>
c0de4a70:	f000 fcfe 	bl	c0de5470 <getContentNbElement>
c0de4a74:	eb09 0106 	add.w	r1, r9, r6
c0de4a78:	3701      	adds	r7, #1
c0de4a7a:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de4a7e:	4410      	add	r0, r2
c0de4a80:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de4a84:	e7ea      	b.n	c0de4a5c <startUseCaseSettingsAtPage+0x34>
c0de4a86:	eb09 0006 	add.w	r0, r9, r6
c0de4a8a:	2100      	movs	r1, #0
c0de4a8c:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de4a90:	2000      	movs	r0, #0
c0de4a92:	f000 fef7 	bl	c0de5884 <displaySettingsPage>
c0de4a96:	b00f      	add	sp, #60	@ 0x3c
c0de4a98:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4a9a:	bf00      	nop
c0de4a9c:	0000075c 	.word	0x0000075c

c0de4aa0 <startUseCaseHome>:
c0de4aa0:	b510      	push	{r4, lr}
c0de4aa2:	4821      	ldr	r0, [pc, #132]	@ (c0de4b28 <startUseCaseHome+0x88>)
c0de4aa4:	eb09 0100 	add.w	r1, r9, r0
c0de4aa8:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de4aac:	290d      	cmp	r1, #13
c0de4aae:	d009      	beq.n	c0de4ac4 <startUseCaseHome+0x24>
c0de4ab0:	290e      	cmp	r1, #14
c0de4ab2:	d114      	bne.n	c0de4ade <startUseCaseHome+0x3e>
c0de4ab4:	eb09 0100 	add.w	r1, r9, r0
c0de4ab8:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de4aba:	2102      	movs	r1, #2
c0de4abc:	2a00      	cmp	r2, #0
c0de4abe:	bf08      	it	eq
c0de4ac0:	2101      	moveq	r1, #1
c0de4ac2:	e00d      	b.n	c0de4ae0 <startUseCaseHome+0x40>
c0de4ac4:	eb09 0200 	add.w	r2, r9, r0
c0de4ac8:	2102      	movs	r1, #2
c0de4aca:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de4acc:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de4ace:	2c00      	cmp	r4, #0
c0de4ad0:	bf08      	it	eq
c0de4ad2:	2101      	moveq	r1, #1
c0de4ad4:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4ad8:	b133      	cbz	r3, c0de4ae8 <startUseCaseHome+0x48>
c0de4ada:	3101      	adds	r1, #1
c0de4adc:	e000      	b.n	c0de4ae0 <startUseCaseHome+0x40>
c0de4ade:	2100      	movs	r1, #0
c0de4ae0:	eb09 0200 	add.w	r2, r9, r0
c0de4ae4:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4ae8:	eb09 0200 	add.w	r2, r9, r0
c0de4aec:	210c      	movs	r1, #12
c0de4aee:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de4af2:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de4af6:	2103      	movs	r1, #3
c0de4af8:	2b00      	cmp	r3, #0
c0de4afa:	bf08      	it	eq
c0de4afc:	2102      	moveq	r1, #2
c0de4afe:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4b02:	b124      	cbz	r4, c0de4b0e <startUseCaseHome+0x6e>
c0de4b04:	3101      	adds	r1, #1
c0de4b06:	eb09 0200 	add.w	r2, r9, r0
c0de4b0a:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4b0e:	eb09 0200 	add.w	r2, r9, r0
c0de4b12:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de4b14:	b11a      	cbz	r2, c0de4b1e <startUseCaseHome+0x7e>
c0de4b16:	4448      	add	r0, r9
c0de4b18:	3101      	adds	r1, #1
c0de4b1a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4b1e:	2000      	movs	r0, #0
c0de4b20:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4b24:	f000 bf9e 	b.w	c0de5a64 <displayHomePage>
c0de4b28:	0000075c 	.word	0x0000075c

c0de4b2c <nbgl_useCaseReview>:
c0de4b2c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4b2e:	4614      	mov	r4, r2
c0de4b30:	460a      	mov	r2, r1
c0de4b32:	4601      	mov	r1, r0
c0de4b34:	9808      	ldr	r0, [sp, #32]
c0de4b36:	9003      	str	r0, [sp, #12]
c0de4b38:	9807      	ldr	r0, [sp, #28]
c0de4b3a:	9002      	str	r0, [sp, #8]
c0de4b3c:	9806      	ldr	r0, [sp, #24]
c0de4b3e:	e9cd 3000 	strd	r3, r0, [sp]
c0de4b42:	2002      	movs	r0, #2
c0de4b44:	4623      	mov	r3, r4
c0de4b46:	f000 f801 	bl	c0de4b4c <useCaseReview>
c0de4b4a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4b4c <useCaseReview>:
c0de4b4c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4b50:	4607      	mov	r7, r0
c0de4b52:	4811      	ldr	r0, [pc, #68]	@ (c0de4b98 <useCaseReview+0x4c>)
c0de4b54:	4688      	mov	r8, r1
c0de4b56:	2140      	movs	r1, #64	@ 0x40
c0de4b58:	461d      	mov	r5, r3
c0de4b5a:	4614      	mov	r4, r2
c0de4b5c:	f001 fbf1 	bl	c0de6342 <OUTLINED_FUNCTION_2>
c0de4b60:	9808      	ldr	r0, [sp, #32]
c0de4b62:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4b64:	9807      	ldr	r0, [sp, #28]
c0de4b66:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de4b68:	9906      	ldr	r1, [sp, #24]
c0de4b6a:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de4b6e:	6471      	str	r1, [r6, #68]	@ 0x44
c0de4b70:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4b72:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de4b76:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de4b7a:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de4b7c:	2104      	movs	r1, #4
c0de4b7e:	2800      	cmp	r0, #0
c0de4b80:	bf08      	it	eq
c0de4b82:	2103      	moveq	r1, #3
c0de4b84:	7a20      	ldrb	r0, [r4, #8]
c0de4b86:	4408      	add	r0, r1
c0de4b88:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4b8c:	2000      	movs	r0, #0
c0de4b8e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4b92:	f000 b8b1 	b.w	c0de4cf8 <displayReviewPage>
c0de4b96:	bf00      	nop
c0de4b98:	0000075c 	.word	0x0000075c

c0de4b9c <nbgl_useCaseAdvancedReview>:
c0de4b9c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4ba0:	b088      	sub	sp, #32
c0de4ba2:	4688      	mov	r8, r1
c0de4ba4:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4ba8:	4615      	mov	r5, r2
c0de4baa:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de4bae:	4604      	mov	r4, r0
c0de4bb0:	f1ba 0f00 	cmp.w	sl, #0
c0de4bb4:	d039      	beq.n	c0de4c2a <nbgl_useCaseAdvancedReview+0x8e>
c0de4bb6:	f8da 6000 	ldr.w	r6, [sl]
c0de4bba:	b92e      	cbnz	r6, c0de4bc8 <nbgl_useCaseAdvancedReview+0x2c>
c0de4bbc:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4bc0:	b910      	cbnz	r0, c0de4bc8 <nbgl_useCaseAdvancedReview+0x2c>
c0de4bc2:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4bc6:	b380      	cbz	r0, c0de4c2a <nbgl_useCaseAdvancedReview+0x8e>
c0de4bc8:	4822      	ldr	r0, [pc, #136]	@ (c0de4c54 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4bca:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de4bce:	2128      	movs	r1, #40	@ 0x28
c0de4bd0:	9605      	str	r6, [sp, #20]
c0de4bd2:	461f      	mov	r7, r3
c0de4bd4:	4616      	mov	r6, r2
c0de4bd6:	eb09 0400 	add.w	r4, r9, r0
c0de4bda:	4620      	mov	r0, r4
c0de4bdc:	f002 fe1e 	bl	c0de781c <__aeabi_memclr>
c0de4be0:	491c      	ldr	r1, [pc, #112]	@ (c0de4c54 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4be2:	2002      	movs	r0, #2
c0de4be4:	46b4      	mov	ip, r6
c0de4be6:	462b      	mov	r3, r5
c0de4be8:	f809 0001 	strb.w	r0, [r9, r1]
c0de4bec:	9905      	ldr	r1, [sp, #20]
c0de4bee:	2040      	movs	r0, #64	@ 0x40
c0de4bf0:	2908      	cmp	r1, #8
c0de4bf2:	bf08      	it	eq
c0de4bf4:	2080      	moveq	r0, #128	@ 0x80
c0de4bf6:	9906      	ldr	r1, [sp, #24]
c0de4bf8:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de4bfc:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4c00:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4c04:	9e07      	ldr	r6, [sp, #28]
c0de4c06:	4301      	orrs	r1, r0
c0de4c08:	9807      	ldr	r0, [sp, #28]
c0de4c0a:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de4c0e:	6220      	str	r0, [r4, #32]
c0de4c10:	f89a 0000 	ldrb.w	r0, [sl]
c0de4c14:	f010 0f16 	tst.w	r0, #22
c0de4c18:	d102      	bne.n	c0de4c20 <nbgl_useCaseAdvancedReview+0x84>
c0de4c1a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4c1e:	b188      	cbz	r0, c0de4c44 <nbgl_useCaseAdvancedReview+0xa8>
c0de4c20:	b008      	add	sp, #32
c0de4c22:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4c26:	f000 b817 	b.w	c0de4c58 <displayInitialWarning>
c0de4c2a:	e9cd 3200 	strd	r3, r2, [sp]
c0de4c2e:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de4c32:	2002      	movs	r0, #2
c0de4c34:	4621      	mov	r1, r4
c0de4c36:	4642      	mov	r2, r8
c0de4c38:	462b      	mov	r3, r5
c0de4c3a:	f7ff ff87 	bl	c0de4b4c <useCaseReview>
c0de4c3e:	b008      	add	sp, #32
c0de4c40:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4c44:	2002      	movs	r0, #2
c0de4c46:	4642      	mov	r2, r8
c0de4c48:	463d      	mov	r5, r7
c0de4c4a:	e9cd 7c00 	strd	r7, ip, [sp]
c0de4c4e:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de4c52:	e7f2      	b.n	c0de4c3a <nbgl_useCaseAdvancedReview+0x9e>
c0de4c54:	0000075c 	.word	0x0000075c

c0de4c58 <displayInitialWarning>:
c0de4c58:	4803      	ldr	r0, [pc, #12]	@ (c0de4c68 <displayInitialWarning+0x10>)
c0de4c5a:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4c5e:	4448      	add	r0, r9
c0de4c60:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4c62:	f000 bfeb 	b.w	c0de5c3c <displayWarningStep>
c0de4c66:	bf00      	nop
c0de4c68:	0000075c 	.word	0x0000075c

c0de4c6c <nbgl_useCaseReviewBlindSigning>:
c0de4c6c:	b5b0      	push	{r4, r5, r7, lr}
c0de4c6e:	b086      	sub	sp, #24
c0de4c70:	4d06      	ldr	r5, [pc, #24]	@ (c0de4c8c <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4c72:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4c74:	447d      	add	r5, pc
c0de4c76:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4c7a:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4c7c:	9401      	str	r4, [sp, #4]
c0de4c7e:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4c80:	9400      	str	r4, [sp, #0]
c0de4c82:	f7ff ff8b 	bl	c0de4b9c <nbgl_useCaseAdvancedReview>
c0de4c86:	b006      	add	sp, #24
c0de4c88:	bdb0      	pop	{r4, r5, r7, pc}
c0de4c8a:	bf00      	nop
c0de4c8c:	00004014 	.word	0x00004014

c0de4c90 <nbgl_useCaseAddressReview>:
c0de4c90:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c94:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4cf4 <nbgl_useCaseAddressReview+0x64>
c0de4c98:	460c      	mov	r4, r1
c0de4c9a:	4607      	mov	r7, r0
c0de4c9c:	2140      	movs	r1, #64	@ 0x40
c0de4c9e:	469a      	mov	sl, r3
c0de4ca0:	4616      	mov	r6, r2
c0de4ca2:	eb09 0508 	add.w	r5, r9, r8
c0de4ca6:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4caa:	f002 fdb7 	bl	c0de781c <__aeabi_memclr>
c0de4cae:	2004      	movs	r0, #4
c0de4cb0:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4cb2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4cb6:	9808      	ldr	r0, [sp, #32]
c0de4cb8:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4cbc:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4cbe:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4cc0:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4cc2:	2105      	movs	r1, #5
c0de4cc4:	2800      	cmp	r0, #0
c0de4cc6:	bf08      	it	eq
c0de4cc8:	2104      	moveq	r1, #4
c0de4cca:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4cce:	b15c      	cbz	r4, c0de4ce8 <nbgl_useCaseAddressReview+0x58>
c0de4cd0:	4620      	mov	r0, r4
c0de4cd2:	eb09 0508 	add.w	r5, r9, r8
c0de4cd6:	f002 fa95 	bl	c0de7204 <pic>
c0de4cda:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4cdc:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4ce0:	7a21      	ldrb	r1, [r4, #8]
c0de4ce2:	4408      	add	r0, r1
c0de4ce4:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4ce8:	2000      	movs	r0, #0
c0de4cea:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4cee:	f000 b803 	b.w	c0de4cf8 <displayReviewPage>
c0de4cf2:	bf00      	nop
c0de4cf4:	0000075c 	.word	0x0000075c

c0de4cf8 <displayReviewPage>:
c0de4cf8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4cfa:	b08b      	sub	sp, #44	@ 0x2c
c0de4cfc:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4e74 <displayReviewPage+0x17c>)
c0de4cfe:	4604      	mov	r4, r0
c0de4d00:	2000      	movs	r0, #0
c0de4d02:	2201      	movs	r2, #1
c0de4d04:	2702      	movs	r7, #2
c0de4d06:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4d0a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4d0e:	eb09 0306 	add.w	r3, r9, r6
c0de4d12:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4d14:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4d16:	2800      	cmp	r0, #0
c0de4d18:	bf08      	it	eq
c0de4d1a:	22ff      	moveq	r2, #255	@ 0xff
c0de4d1c:	bf08      	it	eq
c0de4d1e:	2701      	moveq	r7, #1
c0de4d20:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4d24:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4d28:	1e9d      	subs	r5, r3, #2
c0de4d2a:	b2ed      	uxtb	r5, r5
c0de4d2c:	42a9      	cmp	r1, r5
c0de4d2e:	da06      	bge.n	c0de4d3e <displayReviewPage+0x46>
c0de4d30:	42b9      	cmp	r1, r7
c0de4d32:	da0b      	bge.n	c0de4d4c <displayReviewPage+0x54>
c0de4d34:	2900      	cmp	r1, #0
c0de4d36:	d041      	beq.n	c0de4dbc <displayReviewPage+0xc4>
c0de4d38:	428a      	cmp	r2, r1
c0de4d3a:	d044      	beq.n	c0de4dc6 <displayReviewPage+0xce>
c0de4d3c:	e044      	b.n	c0de4dc8 <displayReviewPage+0xd0>
c0de4d3e:	d110      	bne.n	c0de4d62 <displayReviewPage+0x6a>
c0de4d40:	a908      	add	r1, sp, #32
c0de4d42:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d44:	2001      	movs	r0, #1
c0de4d46:	f000 ffe1 	bl	c0de5d0c <getLastPageInfo>
c0de4d4a:	e03d      	b.n	c0de4dc8 <displayReviewPage+0xd0>
c0de4d4c:	eb09 0006 	add.w	r0, r9, r6
c0de4d50:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4d52:	b18d      	cbz	r5, c0de4d78 <displayReviewPage+0x80>
c0de4d54:	42b9      	cmp	r1, r7
c0de4d56:	d10f      	bne.n	c0de4d78 <displayReviewPage+0x80>
c0de4d58:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4d5a:	4847      	ldr	r0, [pc, #284]	@ (c0de4e78 <displayReviewPage+0x180>)
c0de4d5c:	4478      	add	r0, pc
c0de4d5e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4d60:	e033      	b.n	c0de4dca <displayReviewPage+0xd2>
c0de4d62:	1e58      	subs	r0, r3, #1
c0de4d64:	b2c0      	uxtb	r0, r0
c0de4d66:	4281      	cmp	r1, r0
c0de4d68:	d12e      	bne.n	c0de4dc8 <displayReviewPage+0xd0>
c0de4d6a:	a908      	add	r1, sp, #32
c0de4d6c:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d6e:	2000      	movs	r0, #0
c0de4d70:	2500      	movs	r5, #0
c0de4d72:	f000 ffcb 	bl	c0de5d0c <getLastPageInfo>
c0de4d76:	e028      	b.n	c0de4dca <displayReviewPage+0xd2>
c0de4d78:	eb09 0006 	add.w	r0, r9, r6
c0de4d7c:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4d80:	06d2      	lsls	r2, r2, #27
c0de4d82:	d535      	bpl.n	c0de4df0 <displayReviewPage+0xf8>
c0de4d84:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4d88:	bb90      	cbnz	r0, c0de4df0 <displayReviewPage+0xf8>
c0de4d8a:	42b9      	cmp	r1, r7
c0de4d8c:	dc05      	bgt.n	c0de4d9a <displayReviewPage+0xa2>
c0de4d8e:	eb09 0006 	add.w	r0, r9, r6
c0de4d92:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4d96:	2808      	cmp	r0, #8
c0de4d98:	d12a      	bne.n	c0de4df0 <displayReviewPage+0xf8>
c0de4d9a:	2000      	movs	r0, #0
c0de4d9c:	9006      	str	r0, [sp, #24]
c0de4d9e:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4da2:	eb09 0006 	add.w	r0, r9, r6
c0de4da6:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4daa:	f004 0008 	and.w	r0, r4, #8
c0de4dae:	2a01      	cmp	r2, #1
c0de4db0:	d001      	beq.n	c0de4db6 <displayReviewPage+0xbe>
c0de4db2:	2901      	cmp	r1, #1
c0de4db4:	db43      	blt.n	c0de4e3e <displayReviewPage+0x146>
c0de4db6:	f040 0003 	orr.w	r0, r0, #3
c0de4dba:	e042      	b.n	c0de4e42 <displayReviewPage+0x14a>
c0de4dbc:	eb09 0006 	add.w	r0, r9, r6
c0de4dc0:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4dc4:	9108      	str	r1, [sp, #32]
c0de4dc6:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4dc8:	2500      	movs	r5, #0
c0de4dca:	2000      	movs	r0, #0
c0de4dcc:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4dce:	9908      	ldr	r1, [sp, #32]
c0de4dd0:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4e8c <displayReviewPage+0x194>)
c0de4dd2:	b2c0      	uxtb	r0, r0
c0de4dd4:	2300      	movs	r3, #0
c0de4dd6:	9002      	str	r0, [sp, #8]
c0de4dd8:	4620      	mov	r0, r4
c0de4dda:	447e      	add	r6, pc
c0de4ddc:	e9cd 6300 	strd	r6, r3, [sp]
c0de4de0:	462b      	mov	r3, r5
c0de4de2:	f000 f875 	bl	c0de4ed0 <drawStep>
c0de4de6:	b00b      	add	sp, #44	@ 0x2c
c0de4de8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4dec:	f001 bfff 	b.w	c0de6dee <nbgl_refresh>
c0de4df0:	2200      	movs	r2, #0
c0de4df2:	eb09 0006 	add.w	r0, r9, r6
c0de4df6:	1bcf      	subs	r7, r1, r7
c0de4df8:	f10d 0c0c 	add.w	ip, sp, #12
c0de4dfc:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4e00:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4e04:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4e06:	ab08      	add	r3, sp, #32
c0de4e08:	aa07      	add	r2, sp, #28
c0de4e0a:	2d00      	cmp	r5, #0
c0de4e0c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4e10:	bf18      	it	ne
c0de4e12:	3f01      	subne	r7, #1
c0de4e14:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4e16:	b2f9      	uxtb	r1, r7
c0de4e18:	ab09      	add	r3, sp, #36	@ 0x24
c0de4e1a:	f000 fcb7 	bl	c0de578c <getPairData>
c0de4e1e:	9807      	ldr	r0, [sp, #28]
c0de4e20:	b140      	cbz	r0, c0de4e34 <displayReviewPage+0x13c>
c0de4e22:	eb09 0006 	add.w	r0, r9, r6
c0de4e26:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4e2a:	4917      	ldr	r1, [pc, #92]	@ (c0de4e88 <displayReviewPage+0x190>)
c0de4e2c:	4479      	add	r1, pc
c0de4e2e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4e30:	2001      	movs	r0, #1
c0de4e32:	e002      	b.n	c0de4e3a <displayReviewPage+0x142>
c0de4e34:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4e38:	0040      	lsls	r0, r0, #1
c0de4e3a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4e3c:	e7c6      	b.n	c0de4dcc <displayReviewPage+0xd4>
c0de4e3e:	f040 0001 	orr.w	r0, r0, #1
c0de4e42:	490e      	ldr	r1, [pc, #56]	@ (c0de4e7c <displayReviewPage+0x184>)
c0de4e44:	2200      	movs	r2, #0
c0de4e46:	4479      	add	r1, pc
c0de4e48:	9103      	str	r1, [sp, #12]
c0de4e4a:	490d      	ldr	r1, [pc, #52]	@ (c0de4e80 <displayReviewPage+0x188>)
c0de4e4c:	4479      	add	r1, pc
c0de4e4e:	9105      	str	r1, [sp, #20]
c0de4e50:	2100      	movs	r1, #0
c0de4e52:	9100      	str	r1, [sp, #0]
c0de4e54:	490b      	ldr	r1, [pc, #44]	@ (c0de4e84 <displayReviewPage+0x18c>)
c0de4e56:	ab03      	add	r3, sp, #12
c0de4e58:	4479      	add	r1, pc
c0de4e5a:	f7ff fbd5 	bl	c0de4608 <nbgl_stepDrawCenteredInfo>
c0de4e5e:	eb09 0406 	add.w	r4, r9, r6
c0de4e62:	f001 ffc4 	bl	c0de6dee <nbgl_refresh>
c0de4e66:	2001      	movs	r0, #1
c0de4e68:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4e6c:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4e70:	b00b      	add	sp, #44	@ 0x2c
c0de4e72:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4e74:	0000075c 	.word	0x0000075c
c0de4e78:	00003011 	.word	0x00003011
c0de4e7c:	00002cec 	.word	0x00002cec
c0de4e80:	00002b1a 	.word	0x00002b1a
c0de4e84:	000010bd 	.word	0x000010bd
c0de4e88:	000011a1 	.word	0x000011a1
c0de4e8c:	00001267 	.word	0x00001267

c0de4e90 <nbgl_useCaseStatus>:
c0de4e90:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4e92:	4605      	mov	r5, r0
c0de4e94:	480c      	ldr	r0, [pc, #48]	@ (c0de4ec8 <nbgl_useCaseStatus+0x38>)
c0de4e96:	2140      	movs	r1, #64	@ 0x40
c0de4e98:	4614      	mov	r4, r2
c0de4e9a:	f001 fa52 	bl	c0de6342 <OUTLINED_FUNCTION_2>
c0de4e9e:	2009      	movs	r0, #9
c0de4ea0:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4ea2:	462a      	mov	r2, r5
c0de4ea4:	2300      	movs	r3, #0
c0de4ea6:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4eaa:	2001      	movs	r0, #1
c0de4eac:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4eb0:	2000      	movs	r0, #0
c0de4eb2:	4906      	ldr	r1, [pc, #24]	@ (c0de4ecc <nbgl_useCaseStatus+0x3c>)
c0de4eb4:	9002      	str	r0, [sp, #8]
c0de4eb6:	4479      	add	r1, pc
c0de4eb8:	e9cd 1000 	strd	r1, r0, [sp]
c0de4ebc:	2040      	movs	r0, #64	@ 0x40
c0de4ebe:	2100      	movs	r1, #0
c0de4ec0:	f000 f806 	bl	c0de4ed0 <drawStep>
c0de4ec4:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4ec6:	bf00      	nop
c0de4ec8:	0000075c 	.word	0x0000075c
c0de4ecc:	0000019f 	.word	0x0000019f

c0de4ed0 <drawStep>:
c0de4ed0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4ed4:	b09a      	sub	sp, #104	@ 0x68
c0de4ed6:	4688      	mov	r8, r1
c0de4ed8:	4604      	mov	r4, r0
c0de4eda:	a80c      	add	r0, sp, #48	@ 0x30
c0de4edc:	2138      	movs	r1, #56	@ 0x38
c0de4ede:	461d      	mov	r5, r3
c0de4ee0:	4616      	mov	r6, r2
c0de4ee2:	f002 fc9b 	bl	c0de781c <__aeabi_memclr>
c0de4ee6:	2700      	movs	r7, #0
c0de4ee8:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4eec:	4856      	ldr	r0, [pc, #344]	@ (c0de5048 <drawStep+0x178>)
c0de4eee:	4478      	add	r0, pc
c0de4ef0:	f002 f988 	bl	c0de7204 <pic>
c0de4ef4:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de5044 <drawStep+0x174>
c0de4ef8:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4efc:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4efe:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4f02:	eb09 000b 	add.w	r0, r9, fp
c0de4f06:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4f0a:	2802      	cmp	r0, #2
c0de4f0c:	d30b      	bcc.n	c0de4f26 <drawStep+0x56>
c0de4f0e:	eb09 010b 	add.w	r1, r9, fp
c0de4f12:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4f16:	b129      	cbz	r1, c0de4f24 <drawStep+0x54>
c0de4f18:	3801      	subs	r0, #1
c0de4f1a:	2703      	movs	r7, #3
c0de4f1c:	4288      	cmp	r0, r1
c0de4f1e:	bf08      	it	eq
c0de4f20:	2702      	moveq	r7, #2
c0de4f22:	e000      	b.n	c0de4f26 <drawStep+0x56>
c0de4f24:	2701      	movs	r7, #1
c0de4f26:	eb09 000b 	add.w	r0, r9, fp
c0de4f2a:	ea47 0204 	orr.w	r2, r7, r4
c0de4f2e:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4f32:	4614      	mov	r4, r2
c0de4f34:	2901      	cmp	r1, #1
c0de4f36:	bf88      	it	hi
c0de4f38:	f044 0402 	orrhi.w	r4, r4, #2
c0de4f3c:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4f3e:	2900      	cmp	r1, #0
c0de4f40:	bf08      	it	eq
c0de4f42:	4614      	moveq	r4, r2
c0de4f44:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4f48:	2806      	cmp	r0, #6
c0de4f4a:	f040 0108 	orr.w	r1, r0, #8
c0de4f4e:	bf18      	it	ne
c0de4f50:	4614      	movne	r4, r2
c0de4f52:	2909      	cmp	r1, #9
c0de4f54:	bf0c      	ite	eq
c0de4f56:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4f5a:	f04f 0a00 	movne.w	sl, #0
c0de4f5e:	280a      	cmp	r0, #10
c0de4f60:	d105      	bne.n	c0de4f6e <drawStep+0x9e>
c0de4f62:	eb09 000b 	add.w	r0, r9, fp
c0de4f66:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4f68:	b108      	cbz	r0, c0de4f6e <drawStep+0x9e>
c0de4f6a:	f7ff fc73 	bl	c0de4854 <nbgl_stepRelease>
c0de4f6e:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4f70:	b1b6      	cbz	r6, c0de4fa0 <drawStep+0xd0>
c0de4f72:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4f74:	f1b8 0f00 	cmp.w	r8, #0
c0de4f78:	d12c      	bne.n	c0de4fd4 <drawStep+0x104>
c0de4f7a:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4f7c:	2802      	cmp	r0, #2
c0de4f7e:	d029      	beq.n	c0de4fd4 <drawStep+0x104>
c0de4f80:	2201      	movs	r2, #1
c0de4f82:	4633      	mov	r3, r6
c0de4f84:	2801      	cmp	r0, #1
c0de4f86:	bf08      	it	eq
c0de4f88:	2202      	moveq	r2, #2
c0de4f8a:	4620      	mov	r0, r4
c0de4f8c:	2d00      	cmp	r5, #0
c0de4f8e:	bf08      	it	eq
c0de4f90:	462a      	moveq	r2, r5
c0de4f92:	e9cd 5200 	strd	r5, r2, [sp]
c0de4f96:	9702      	str	r7, [sp, #8]
c0de4f98:	4652      	mov	r2, sl
c0de4f9a:	f7ff f9ef 	bl	c0de437c <nbgl_stepDrawText>
c0de4f9e:	e043      	b.n	c0de5028 <drawStep+0x158>
c0de4fa0:	eb09 000b 	add.w	r0, r9, fp
c0de4fa4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4fa8:	a903      	add	r1, sp, #12
c0de4faa:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4fac:	f000 fbaa 	bl	c0de5704 <getContentElemAtIdx>
c0de4fb0:	b330      	cbz	r0, c0de5000 <drawStep+0x130>
c0de4fb2:	7801      	ldrb	r1, [r0, #0]
c0de4fb4:	2400      	movs	r4, #0
c0de4fb6:	290a      	cmp	r1, #10
c0de4fb8:	d024      	beq.n	c0de5004 <drawStep+0x134>
c0de4fba:	2909      	cmp	r1, #9
c0de4fbc:	d135      	bne.n	c0de502a <drawStep+0x15a>
c0de4fbe:	f001 f9d0 	bl	c0de6362 <OUTLINED_FUNCTION_5>
c0de4fc2:	4922      	ldr	r1, [pc, #136]	@ (c0de504c <drawStep+0x17c>)
c0de4fc4:	4479      	add	r1, pc
c0de4fc6:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4fc8:	7941      	ldrb	r1, [r0, #5]
c0de4fca:	7980      	ldrb	r0, [r0, #6]
c0de4fcc:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4fd0:	1c48      	adds	r0, r1, #1
c0de4fd2:	e020      	b.n	c0de5016 <drawStep+0x146>
c0de4fd4:	2000      	movs	r0, #0
c0de4fd6:	9603      	str	r6, [sp, #12]
c0de4fd8:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4fdc:	9504      	str	r5, [sp, #16]
c0de4fde:	4652      	mov	r2, sl
c0de4fe0:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4fe4:	eb09 000b 	add.w	r0, r9, fp
c0de4fe8:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4fea:	4328      	orrs	r0, r5
c0de4fec:	bf18      	it	ne
c0de4fee:	2001      	movne	r0, #1
c0de4ff0:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4ff4:	9700      	str	r7, [sp, #0]
c0de4ff6:	ab03      	add	r3, sp, #12
c0de4ff8:	4620      	mov	r0, r4
c0de4ffa:	f7ff fb05 	bl	c0de4608 <nbgl_stepDrawCenteredInfo>
c0de4ffe:	e013      	b.n	c0de5028 <drawStep+0x158>
c0de5000:	2400      	movs	r4, #0
c0de5002:	e012      	b.n	c0de502a <drawStep+0x15a>
c0de5004:	f001 f9ad 	bl	c0de6362 <OUTLINED_FUNCTION_5>
c0de5008:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de500c:	4910      	ldr	r1, [pc, #64]	@ (c0de5050 <drawStep+0x180>)
c0de500e:	7a00      	ldrb	r0, [r0, #8]
c0de5010:	4479      	add	r1, pc
c0de5012:	3001      	adds	r0, #1
c0de5014:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5016:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de501a:	4651      	mov	r1, sl
c0de501c:	463b      	mov	r3, r7
c0de501e:	480d      	ldr	r0, [pc, #52]	@ (c0de5054 <drawStep+0x184>)
c0de5020:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5022:	4478      	add	r0, pc
c0de5024:	f7ff fb80 	bl	c0de4728 <nbgl_stepDrawMenuList>
c0de5028:	4604      	mov	r4, r0
c0de502a:	eb09 000b 	add.w	r0, r9, fp
c0de502e:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de5032:	280a      	cmp	r0, #10
c0de5034:	bf04      	itt	eq
c0de5036:	eb09 000b 	addeq.w	r0, r9, fp
c0de503a:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de503c:	b01a      	add	sp, #104	@ 0x68
c0de503e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5042:	bf00      	nop
c0de5044:	0000075c 	.word	0x0000075c
c0de5048:	000012df 	.word	0x000012df
c0de504c:	00001219 	.word	0x00001219
c0de5050:	000011cd 	.word	0x000011cd
c0de5054:	0000121f 	.word	0x0000121f

c0de5058 <statusButtonCallback>:
c0de5058:	f041 0004 	orr.w	r0, r1, #4
c0de505c:	2804      	cmp	r0, #4
c0de505e:	d001      	beq.n	c0de5064 <statusButtonCallback+0xc>
c0de5060:	2901      	cmp	r1, #1
c0de5062:	d104      	bne.n	c0de506e <statusButtonCallback+0x16>
c0de5064:	4802      	ldr	r0, [pc, #8]	@ (c0de5070 <statusButtonCallback+0x18>)
c0de5066:	4448      	add	r0, r9
c0de5068:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de506a:	b100      	cbz	r0, c0de506e <statusButtonCallback+0x16>
c0de506c:	4700      	bx	r0
c0de506e:	4770      	bx	lr
c0de5070:	0000075c 	.word	0x0000075c

c0de5074 <nbgl_useCaseReviewStatus>:
c0de5074:	460a      	mov	r2, r1
c0de5076:	b198      	cbz	r0, c0de50a0 <nbgl_useCaseReviewStatus+0x2c>
c0de5078:	2801      	cmp	r0, #1
c0de507a:	d016      	beq.n	c0de50aa <nbgl_useCaseReviewStatus+0x36>
c0de507c:	2802      	cmp	r0, #2
c0de507e:	d019      	beq.n	c0de50b4 <nbgl_useCaseReviewStatus+0x40>
c0de5080:	2803      	cmp	r0, #3
c0de5082:	d01c      	beq.n	c0de50be <nbgl_useCaseReviewStatus+0x4a>
c0de5084:	2804      	cmp	r0, #4
c0de5086:	d01f      	beq.n	c0de50c8 <nbgl_useCaseReviewStatus+0x54>
c0de5088:	2807      	cmp	r0, #7
c0de508a:	d022      	beq.n	c0de50d2 <nbgl_useCaseReviewStatus+0x5e>
c0de508c:	2806      	cmp	r0, #6
c0de508e:	d025      	beq.n	c0de50dc <nbgl_useCaseReviewStatus+0x68>
c0de5090:	2805      	cmp	r0, #5
c0de5092:	bf18      	it	ne
c0de5094:	4770      	bxne	lr
c0de5096:	4815      	ldr	r0, [pc, #84]	@ (c0de50ec <nbgl_useCaseReviewStatus+0x78>)
c0de5098:	2100      	movs	r1, #0
c0de509a:	4478      	add	r0, pc
c0de509c:	f7ff bef8 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50a0:	4813      	ldr	r0, [pc, #76]	@ (c0de50f0 <nbgl_useCaseReviewStatus+0x7c>)
c0de50a2:	2101      	movs	r1, #1
c0de50a4:	4478      	add	r0, pc
c0de50a6:	f7ff bef3 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50aa:	4812      	ldr	r0, [pc, #72]	@ (c0de50f4 <nbgl_useCaseReviewStatus+0x80>)
c0de50ac:	2100      	movs	r1, #0
c0de50ae:	4478      	add	r0, pc
c0de50b0:	f7ff beee 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50b4:	4810      	ldr	r0, [pc, #64]	@ (c0de50f8 <nbgl_useCaseReviewStatus+0x84>)
c0de50b6:	2101      	movs	r1, #1
c0de50b8:	4478      	add	r0, pc
c0de50ba:	f7ff bee9 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50be:	480f      	ldr	r0, [pc, #60]	@ (c0de50fc <nbgl_useCaseReviewStatus+0x88>)
c0de50c0:	2100      	movs	r1, #0
c0de50c2:	4478      	add	r0, pc
c0de50c4:	f7ff bee4 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50c8:	4807      	ldr	r0, [pc, #28]	@ (c0de50e8 <nbgl_useCaseReviewStatus+0x74>)
c0de50ca:	2101      	movs	r1, #1
c0de50cc:	4478      	add	r0, pc
c0de50ce:	f7ff bedf 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50d2:	480c      	ldr	r0, [pc, #48]	@ (c0de5104 <nbgl_useCaseReviewStatus+0x90>)
c0de50d4:	2100      	movs	r1, #0
c0de50d6:	4478      	add	r0, pc
c0de50d8:	f7ff beda 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50dc:	4808      	ldr	r0, [pc, #32]	@ (c0de5100 <nbgl_useCaseReviewStatus+0x8c>)
c0de50de:	2101      	movs	r1, #1
c0de50e0:	4478      	add	r0, pc
c0de50e2:	f7ff bed5 	b.w	c0de4e90 <nbgl_useCaseStatus>
c0de50e6:	bf00      	nop
c0de50e8:	00002a31 	.word	0x00002a31
c0de50ec:	00002a85 	.word	0x00002a85
c0de50f0:	00002b25 	.word	0x00002b25
c0de50f4:	00002cea 	.word	0x00002cea
c0de50f8:	00002b84 	.word	0x00002b84
c0de50fc:	00002c80 	.word	0x00002c80
c0de5100:	00002aa0 	.word	0x00002aa0
c0de5104:	00002be3 	.word	0x00002be3

c0de5108 <displayStreamingReviewPage>:
c0de5108:	b570      	push	{r4, r5, r6, lr}
c0de510a:	b08c      	sub	sp, #48	@ 0x30
c0de510c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de5278 <displayStreamingReviewPage+0x170>)
c0de510e:	2100      	movs	r1, #0
c0de5110:	4604      	mov	r4, r0
c0de5112:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5116:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de511a:	eb09 0005 	add.w	r0, r9, r5
c0de511e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5120:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de5124:	2806      	cmp	r0, #6
c0de5126:	d015      	beq.n	c0de5154 <displayStreamingReviewPage+0x4c>
c0de5128:	2805      	cmp	r0, #5
c0de512a:	d13d      	bne.n	c0de51a8 <displayStreamingReviewPage+0xa0>
c0de512c:	eb09 0205 	add.w	r2, r9, r5
c0de5130:	2101      	movs	r1, #1
c0de5132:	2302      	movs	r3, #2
c0de5134:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de5136:	2800      	cmp	r0, #0
c0de5138:	bf08      	it	eq
c0de513a:	21ff      	moveq	r1, #255	@ 0xff
c0de513c:	bf08      	it	eq
c0de513e:	2301      	moveq	r3, #1
c0de5140:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de5144:	4293      	cmp	r3, r2
c0de5146:	dd3b      	ble.n	c0de51c0 <displayStreamingReviewPage+0xb8>
c0de5148:	b2d3      	uxtb	r3, r2
c0de514a:	2b00      	cmp	r3, #0
c0de514c:	d063      	beq.n	c0de5216 <displayStreamingReviewPage+0x10e>
c0de514e:	4291      	cmp	r1, r2
c0de5150:	d066      	beq.n	c0de5220 <displayStreamingReviewPage+0x118>
c0de5152:	e066      	b.n	c0de5222 <displayStreamingReviewPage+0x11a>
c0de5154:	eb09 0005 	add.w	r0, r9, r5
c0de5158:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de515c:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de515e:	7a02      	ldrb	r2, [r0, #8]
c0de5160:	4291      	cmp	r1, r2
c0de5162:	da2d      	bge.n	c0de51c0 <displayStreamingReviewPage+0xb8>
c0de5164:	eb09 0205 	add.w	r2, r9, r5
c0de5168:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de516a:	b3cb      	cbz	r3, c0de51e0 <displayStreamingReviewPage+0xd8>
c0de516c:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de5170:	bbb2      	cbnz	r2, c0de51e0 <displayStreamingReviewPage+0xd8>
c0de5172:	eb09 0205 	add.w	r2, r9, r5
c0de5176:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de517a:	2a01      	cmp	r2, #1
c0de517c:	d807      	bhi.n	c0de518e <displayStreamingReviewPage+0x86>
c0de517e:	2900      	cmp	r1, #0
c0de5180:	dc05      	bgt.n	c0de518e <displayStreamingReviewPage+0x86>
c0de5182:	eb09 0305 	add.w	r3, r9, r5
c0de5186:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de518a:	2b08      	cmp	r3, #8
c0de518c:	d128      	bne.n	c0de51e0 <displayStreamingReviewPage+0xd8>
c0de518e:	2000      	movs	r0, #0
c0de5190:	9007      	str	r0, [sp, #28]
c0de5192:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de5196:	f004 0008 	and.w	r0, r4, #8
c0de519a:	2a01      	cmp	r2, #1
c0de519c:	d001      	beq.n	c0de51a2 <displayStreamingReviewPage+0x9a>
c0de519e:	2901      	cmp	r1, #1
c0de51a0:	db50      	blt.n	c0de5244 <displayStreamingReviewPage+0x13c>
c0de51a2:	f040 0003 	orr.w	r0, r0, #3
c0de51a6:	e04f      	b.n	c0de5248 <displayStreamingReviewPage+0x140>
c0de51a8:	eb09 0005 	add.w	r0, r9, r5
c0de51ac:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de51b0:	b180      	cbz	r0, c0de51d4 <displayStreamingReviewPage+0xcc>
c0de51b2:	a909      	add	r1, sp, #36	@ 0x24
c0de51b4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de51b6:	2000      	movs	r0, #0
c0de51b8:	2500      	movs	r5, #0
c0de51ba:	f000 fda7 	bl	c0de5d0c <getLastPageInfo>
c0de51be:	e031      	b.n	c0de5224 <displayStreamingReviewPage+0x11c>
c0de51c0:	eb09 0005 	add.w	r0, r9, r5
c0de51c4:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de51c6:	2900      	cmp	r1, #0
c0de51c8:	d053      	beq.n	c0de5272 <displayStreamingReviewPage+0x16a>
c0de51ca:	2001      	movs	r0, #1
c0de51cc:	b00c      	add	sp, #48	@ 0x30
c0de51ce:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de51d2:	4708      	bx	r1
c0de51d4:	a909      	add	r1, sp, #36	@ 0x24
c0de51d6:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de51d8:	2001      	movs	r0, #1
c0de51da:	f000 fd97 	bl	c0de5d0c <getLastPageInfo>
c0de51de:	e020      	b.n	c0de5222 <displayStreamingReviewPage+0x11a>
c0de51e0:	2300      	movs	r3, #0
c0de51e2:	eb09 0205 	add.w	r2, r9, r5
c0de51e6:	b2c9      	uxtb	r1, r1
c0de51e8:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de51ec:	f88d 300f 	strb.w	r3, [sp, #15]
c0de51f0:	ab09      	add	r3, sp, #36	@ 0x24
c0de51f2:	ad08      	add	r5, sp, #32
c0de51f4:	f10d 020f 	add.w	r2, sp, #15
c0de51f8:	e9cd 5300 	strd	r5, r3, [sp]
c0de51fc:	9202      	str	r2, [sp, #8]
c0de51fe:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5200:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5202:	f000 fac3 	bl	c0de578c <getPairData>
c0de5206:	9808      	ldr	r0, [sp, #32]
c0de5208:	2800      	cmp	r0, #0
c0de520a:	bf12      	itee	ne
c0de520c:	2501      	movne	r5, #1
c0de520e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5212:	0045      	lsleq	r5, r0, #1
c0de5214:	e006      	b.n	c0de5224 <displayStreamingReviewPage+0x11c>
c0de5216:	eb09 0005 	add.w	r0, r9, r5
c0de521a:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de521e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de5220:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5222:	2500      	movs	r5, #0
c0de5224:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de5226:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de522a:	4e17      	ldr	r6, [pc, #92]	@ (c0de5288 <displayStreamingReviewPage+0x180>)
c0de522c:	b2e8      	uxtb	r0, r5
c0de522e:	2500      	movs	r5, #0
c0de5230:	9002      	str	r0, [sp, #8]
c0de5232:	4620      	mov	r0, r4
c0de5234:	447e      	add	r6, pc
c0de5236:	f001 f897 	bl	c0de6368 <OUTLINED_FUNCTION_6>
c0de523a:	b00c      	add	sp, #48	@ 0x30
c0de523c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5240:	f001 bdd5 	b.w	c0de6dee <nbgl_refresh>
c0de5244:	f040 0001 	orr.w	r0, r0, #1
c0de5248:	490c      	ldr	r1, [pc, #48]	@ (c0de527c <displayStreamingReviewPage+0x174>)
c0de524a:	2200      	movs	r2, #0
c0de524c:	4479      	add	r1, pc
c0de524e:	9104      	str	r1, [sp, #16]
c0de5250:	490b      	ldr	r1, [pc, #44]	@ (c0de5280 <displayStreamingReviewPage+0x178>)
c0de5252:	4479      	add	r1, pc
c0de5254:	9106      	str	r1, [sp, #24]
c0de5256:	2100      	movs	r1, #0
c0de5258:	9100      	str	r1, [sp, #0]
c0de525a:	490a      	ldr	r1, [pc, #40]	@ (c0de5284 <displayStreamingReviewPage+0x17c>)
c0de525c:	ab04      	add	r3, sp, #16
c0de525e:	4479      	add	r1, pc
c0de5260:	f7ff f9d2 	bl	c0de4608 <nbgl_stepDrawCenteredInfo>
c0de5264:	eb09 0405 	add.w	r4, r9, r5
c0de5268:	f001 fdc1 	bl	c0de6dee <nbgl_refresh>
c0de526c:	2001      	movs	r0, #1
c0de526e:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de5272:	b00c      	add	sp, #48	@ 0x30
c0de5274:	bd70      	pop	{r4, r5, r6, pc}
c0de5276:	bf00      	nop
c0de5278:	0000075c 	.word	0x0000075c
c0de527c:	000028e6 	.word	0x000028e6
c0de5280:	00002714 	.word	0x00002714
c0de5284:	00000cb7 	.word	0x00000cb7
c0de5288:	00001079 	.word	0x00001079

c0de528c <nbgl_useCaseSpinner>:
c0de528c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de528e:	4604      	mov	r4, r0
c0de5290:	480b      	ldr	r0, [pc, #44]	@ (c0de52c0 <nbgl_useCaseSpinner+0x34>)
c0de5292:	2140      	movs	r1, #64	@ 0x40
c0de5294:	f001 f85b 	bl	c0de634e <OUTLINED_FUNCTION_3>
c0de5298:	2001      	movs	r0, #1
c0de529a:	4622      	mov	r2, r4
c0de529c:	2300      	movs	r3, #0
c0de529e:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de52a2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de52a6:	2000      	movs	r0, #0
c0de52a8:	e9cd 0000 	strd	r0, r0, [sp]
c0de52ac:	9002      	str	r0, [sp, #8]
c0de52ae:	2000      	movs	r0, #0
c0de52b0:	4904      	ldr	r1, [pc, #16]	@ (c0de52c4 <nbgl_useCaseSpinner+0x38>)
c0de52b2:	4479      	add	r1, pc
c0de52b4:	f7ff fe0c 	bl	c0de4ed0 <drawStep>
c0de52b8:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de52bc:	f001 bd97 	b.w	c0de6dee <nbgl_refresh>
c0de52c0:	0000075c 	.word	0x0000075c
c0de52c4:	000027ab 	.word	0x000027ab

c0de52c8 <nbgl_useCaseChoice>:
c0de52c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de52cc:	4607      	mov	r7, r0
c0de52ce:	480b      	ldr	r0, [pc, #44]	@ (c0de52fc <nbgl_useCaseChoice+0x34>)
c0de52d0:	f001 f822 	bl	c0de6318 <OUTLINED_FUNCTION_0>
c0de52d4:	9807      	ldr	r0, [sp, #28]
c0de52d6:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de52d8:	9806      	ldr	r0, [sp, #24]
c0de52da:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de52de:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de52e2:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de52e4:	2008      	movs	r0, #8
c0de52e6:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de52ea:	2004      	movs	r0, #4
c0de52ec:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de52f0:	2000      	movs	r0, #0
c0de52f2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de52f6:	f000 b803 	b.w	c0de5300 <displayChoicePage>
c0de52fa:	bf00      	nop
c0de52fc:	0000075c 	.word	0x0000075c

c0de5300 <displayChoicePage>:
c0de5300:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5302:	4b28      	ldr	r3, [pc, #160]	@ (c0de53a4 <displayChoicePage+0xa4>)
c0de5304:	2200      	movs	r2, #0
c0de5306:	eb09 0103 	add.w	r1, r9, r3
c0de530a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de530c:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de5310:	b179      	cbz	r1, c0de5332 <displayChoicePage+0x32>
c0de5312:	2902      	cmp	r1, #2
c0de5314:	d021      	beq.n	c0de535a <displayChoicePage+0x5a>
c0de5316:	2901      	cmp	r1, #1
c0de5318:	d10f      	bne.n	c0de533a <displayChoicePage+0x3a>
c0de531a:	eb09 0103 	add.w	r1, r9, r3
c0de531e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5320:	b1a1      	cbz	r1, c0de534c <displayChoicePage+0x4c>
c0de5322:	eb09 0203 	add.w	r2, r9, r3
c0de5326:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de5328:	b182      	cbz	r2, c0de534c <displayChoicePage+0x4c>
c0de532a:	eb09 0103 	add.w	r1, r9, r3
c0de532e:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de5330:	e029      	b.n	c0de5386 <displayChoicePage+0x86>
c0de5332:	eb09 0103 	add.w	r1, r9, r3
c0de5336:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5338:	e01d      	b.n	c0de5376 <displayChoicePage+0x76>
c0de533a:	4a1d      	ldr	r2, [pc, #116]	@ (c0de53b0 <displayChoicePage+0xb0>)
c0de533c:	eb09 0103 	add.w	r1, r9, r3
c0de5340:	447a      	add	r2, pc
c0de5342:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5344:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de5346:	491b      	ldr	r1, [pc, #108]	@ (c0de53b4 <displayChoicePage+0xb4>)
c0de5348:	4479      	add	r1, pc
c0de534a:	e018      	b.n	c0de537e <displayChoicePage+0x7e>
c0de534c:	0702      	lsls	r2, r0, #28
c0de534e:	d40d      	bmi.n	c0de536c <displayChoicePage+0x6c>
c0de5350:	eb09 0103 	add.w	r1, r9, r3
c0de5354:	2202      	movs	r2, #2
c0de5356:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de535a:	4a13      	ldr	r2, [pc, #76]	@ (c0de53a8 <displayChoicePage+0xa8>)
c0de535c:	eb09 0103 	add.w	r1, r9, r3
c0de5360:	447a      	add	r2, pc
c0de5362:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5364:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de5366:	4911      	ldr	r1, [pc, #68]	@ (c0de53ac <displayChoicePage+0xac>)
c0de5368:	4479      	add	r1, pc
c0de536a:	e008      	b.n	c0de537e <displayChoicePage+0x7e>
c0de536c:	eb09 0203 	add.w	r2, r9, r3
c0de5370:	2400      	movs	r4, #0
c0de5372:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de5376:	eb09 0203 	add.w	r2, r9, r3
c0de537a:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de537c:	b109      	cbz	r1, c0de5382 <displayChoicePage+0x82>
c0de537e:	2300      	movs	r3, #0
c0de5380:	e003      	b.n	c0de538a <displayChoicePage+0x8a>
c0de5382:	eb09 0103 	add.w	r1, r9, r3
c0de5386:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de5388:	2100      	movs	r1, #0
c0de538a:	4d0b      	ldr	r5, [pc, #44]	@ (c0de53b8 <displayChoicePage+0xb8>)
c0de538c:	2400      	movs	r4, #0
c0de538e:	9402      	str	r4, [sp, #8]
c0de5390:	447d      	add	r5, pc
c0de5392:	e9cd 5400 	strd	r5, r4, [sp]
c0de5396:	f7ff fd9b 	bl	c0de4ed0 <drawStep>
c0de539a:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de539e:	f001 bd26 	b.w	c0de6dee <nbgl_refresh>
c0de53a2:	bf00      	nop
c0de53a4:	0000075c 	.word	0x0000075c
c0de53a8:	00000f71 	.word	0x00000f71
c0de53ac:	00002732 	.word	0x00002732
c0de53b0:	00000fa5 	.word	0x00000fa5
c0de53b4:	000026d6 	.word	0x000026d6
c0de53b8:	00000f69 	.word	0x00000f69

c0de53bc <getContentAtIdx>:
c0de53bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de53be:	b087      	sub	sp, #28
c0de53c0:	460d      	mov	r5, r1
c0de53c2:	4606      	mov	r6, r0
c0de53c4:	a801      	add	r0, sp, #4
c0de53c6:	2118      	movs	r1, #24
c0de53c8:	4614      	mov	r4, r2
c0de53ca:	f002 fa27 	bl	c0de781c <__aeabi_memclr>
c0de53ce:	2d00      	cmp	r5, #0
c0de53d0:	d428      	bmi.n	c0de5424 <getContentAtIdx+0x68>
c0de53d2:	7a30      	ldrb	r0, [r6, #8]
c0de53d4:	4285      	cmp	r5, r0
c0de53d6:	da25      	bge.n	c0de5424 <getContentAtIdx+0x68>
c0de53d8:	7830      	ldrb	r0, [r6, #0]
c0de53da:	b338      	cbz	r0, c0de542c <getContentAtIdx+0x70>
c0de53dc:	b314      	cbz	r4, c0de5424 <getContentAtIdx+0x68>
c0de53de:	4620      	mov	r0, r4
c0de53e0:	2138      	movs	r1, #56	@ 0x38
c0de53e2:	f002 fa1b 	bl	c0de781c <__aeabi_memclr>
c0de53e6:	4821      	ldr	r0, [pc, #132]	@ (c0de546c <getContentAtIdx+0xb0>)
c0de53e8:	4448      	add	r0, r9
c0de53ea:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de53ec:	b342      	cbz	r2, c0de5440 <getContentAtIdx+0x84>
c0de53ee:	b2e8      	uxtb	r0, r5
c0de53f0:	ad01      	add	r5, sp, #4
c0de53f2:	4629      	mov	r1, r5
c0de53f4:	4790      	blx	r2
c0de53f6:	b1a8      	cbz	r0, c0de5424 <getContentAtIdx+0x68>
c0de53f8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de53fc:	280a      	cmp	r0, #10
c0de53fe:	7020      	strb	r0, [r4, #0]
c0de5400:	d028      	beq.n	c0de5454 <getContentAtIdx+0x98>
c0de5402:	2803      	cmp	r0, #3
c0de5404:	d008      	beq.n	c0de5418 <getContentAtIdx+0x5c>
c0de5406:	2804      	cmp	r0, #4
c0de5408:	d02a      	beq.n	c0de5460 <getContentAtIdx+0xa4>
c0de540a:	2807      	cmp	r0, #7
c0de540c:	d01d      	beq.n	c0de544a <getContentAtIdx+0x8e>
c0de540e:	2808      	cmp	r0, #8
c0de5410:	d002      	beq.n	c0de5418 <getContentAtIdx+0x5c>
c0de5412:	2809      	cmp	r0, #9
c0de5414:	d019      	beq.n	c0de544a <getContentAtIdx+0x8e>
c0de5416:	b928      	cbnz	r0, c0de5424 <getContentAtIdx+0x68>
c0de5418:	1d28      	adds	r0, r5, #4
c0de541a:	1d21      	adds	r1, r4, #4
c0de541c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5420:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5422:	e000      	b.n	c0de5426 <getContentAtIdx+0x6a>
c0de5424:	2400      	movs	r4, #0
c0de5426:	4620      	mov	r0, r4
c0de5428:	b007      	add	sp, #28
c0de542a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de542c:	6871      	ldr	r1, [r6, #4]
c0de542e:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5432:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5436:	b007      	add	sp, #28
c0de5438:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de543c:	f001 bee2 	b.w	c0de7204 <pic>
c0de5440:	6872      	ldr	r2, [r6, #4]
c0de5442:	b2e8      	uxtb	r0, r5
c0de5444:	4621      	mov	r1, r4
c0de5446:	4790      	blx	r2
c0de5448:	e7ed      	b.n	c0de5426 <getContentAtIdx+0x6a>
c0de544a:	9802      	ldr	r0, [sp, #8]
c0de544c:	9903      	ldr	r1, [sp, #12]
c0de544e:	6060      	str	r0, [r4, #4]
c0de5450:	60a1      	str	r1, [r4, #8]
c0de5452:	e7e8      	b.n	c0de5426 <getContentAtIdx+0x6a>
c0de5454:	1d28      	adds	r0, r5, #4
c0de5456:	1d21      	adds	r1, r4, #4
c0de5458:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de545c:	c12c      	stmia	r1!, {r2, r3, r5}
c0de545e:	e7e2      	b.n	c0de5426 <getContentAtIdx+0x6a>
c0de5460:	1d28      	adds	r0, r5, #4
c0de5462:	1d21      	adds	r1, r4, #4
c0de5464:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de5468:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de546a:	e7dc      	b.n	c0de5426 <getContentAtIdx+0x6a>
c0de546c:	0000075c 	.word	0x0000075c

c0de5470 <getContentNbElement>:
c0de5470:	7802      	ldrb	r2, [r0, #0]
c0de5472:	2101      	movs	r1, #1
c0de5474:	b1a2      	cbz	r2, c0de54a0 <getContentNbElement+0x30>
c0de5476:	2a03      	cmp	r2, #3
c0de5478:	d012      	beq.n	c0de54a0 <getContentNbElement+0x30>
c0de547a:	2a0a      	cmp	r2, #10
c0de547c:	d007      	beq.n	c0de548e <getContentNbElement+0x1e>
c0de547e:	2a07      	cmp	r2, #7
c0de5480:	d007      	beq.n	c0de5492 <getContentNbElement+0x22>
c0de5482:	2a08      	cmp	r2, #8
c0de5484:	d007      	beq.n	c0de5496 <getContentNbElement+0x26>
c0de5486:	2a09      	cmp	r2, #9
c0de5488:	d007      	beq.n	c0de549a <getContentNbElement+0x2a>
c0de548a:	2a04      	cmp	r2, #4
c0de548c:	d107      	bne.n	c0de549e <getContentNbElement+0x2e>
c0de548e:	7b01      	ldrb	r1, [r0, #12]
c0de5490:	e006      	b.n	c0de54a0 <getContentNbElement+0x30>
c0de5492:	7a01      	ldrb	r1, [r0, #8]
c0de5494:	e004      	b.n	c0de54a0 <getContentNbElement+0x30>
c0de5496:	7c01      	ldrb	r1, [r0, #16]
c0de5498:	e002      	b.n	c0de54a0 <getContentNbElement+0x30>
c0de549a:	7a41      	ldrb	r1, [r0, #9]
c0de549c:	e000      	b.n	c0de54a0 <getContentNbElement+0x30>
c0de549e:	2100      	movs	r1, #0
c0de54a0:	4608      	mov	r0, r1
c0de54a2:	4770      	bx	lr

c0de54a4 <displayContent>:
c0de54a4:	b570      	push	{r4, r5, r6, lr}
c0de54a6:	b08a      	sub	sp, #40	@ 0x28
c0de54a8:	460d      	mov	r5, r1
c0de54aa:	4604      	mov	r4, r0
c0de54ac:	a804      	add	r0, sp, #16
c0de54ae:	2118      	movs	r1, #24
c0de54b0:	f002 f9b4 	bl	c0de781c <__aeabi_memclr>
c0de54b4:	4820      	ldr	r0, [pc, #128]	@ (c0de5538 <displayContent+0x94>)
c0de54b6:	f000 ff39 	bl	c0de632c <OUTLINED_FUNCTION_1>
c0de54ba:	dd14      	ble.n	c0de54e6 <displayContent+0x42>
c0de54bc:	a904      	add	r1, sp, #16
c0de54be:	4628      	mov	r0, r5
c0de54c0:	f000 f846 	bl	c0de5550 <getContentPage>
c0de54c4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de54c8:	b318      	cbz	r0, c0de5512 <displayContent+0x6e>
c0de54ca:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de54ce:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de54d2:	481e      	ldr	r0, [pc, #120]	@ (c0de554c <displayContent+0xa8>)
c0de54d4:	4478      	add	r0, pc
c0de54d6:	2b00      	cmp	r3, #0
c0de54d8:	9000      	str	r0, [sp, #0]
c0de54da:	4620      	mov	r0, r4
c0de54dc:	bf18      	it	ne
c0de54de:	2301      	movne	r3, #1
c0de54e0:	f000 f8d8 	bl	c0de5694 <drawSwitchStep>
c0de54e4:	e023      	b.n	c0de552e <displayContent+0x8a>
c0de54e6:	4448      	add	r0, r9
c0de54e8:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de54ea:	6341      	str	r1, [r0, #52]	@ 0x34
c0de54ec:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de54ee:	4a13      	ldr	r2, [pc, #76]	@ (c0de553c <displayContent+0x98>)
c0de54f0:	2900      	cmp	r1, #0
c0de54f2:	447a      	add	r2, pc
c0de54f4:	bf18      	it	ne
c0de54f6:	460a      	movne	r2, r1
c0de54f8:	9205      	str	r2, [sp, #20]
c0de54fa:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de54fe:	4910      	ldr	r1, [pc, #64]	@ (c0de5540 <displayContent+0x9c>)
c0de5500:	4a10      	ldr	r2, [pc, #64]	@ (c0de5544 <displayContent+0xa0>)
c0de5502:	2803      	cmp	r0, #3
c0de5504:	447a      	add	r2, pc
c0de5506:	4479      	add	r1, pc
c0de5508:	bf08      	it	eq
c0de550a:	460a      	moveq	r2, r1
c0de550c:	9207      	str	r2, [sp, #28]
c0de550e:	2000      	movs	r0, #0
c0de5510:	e002      	b.n	c0de5518 <displayContent+0x74>
c0de5512:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5516:	0040      	lsls	r0, r0, #1
c0de5518:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de551c:	9907      	ldr	r1, [sp, #28]
c0de551e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5548 <displayContent+0xa4>)
c0de5520:	b2c0      	uxtb	r0, r0
c0de5522:	2500      	movs	r5, #0
c0de5524:	9002      	str	r0, [sp, #8]
c0de5526:	4620      	mov	r0, r4
c0de5528:	447e      	add	r6, pc
c0de552a:	f000 ff1d 	bl	c0de6368 <OUTLINED_FUNCTION_6>
c0de552e:	f001 fc5e 	bl	c0de6dee <nbgl_refresh>
c0de5532:	b00a      	add	sp, #40	@ 0x28
c0de5534:	bd70      	pop	{r4, r5, r6, pc}
c0de5536:	bf00      	nop
c0de5538:	0000075c 	.word	0x0000075c
c0de553c:	00002883 	.word	0x00002883
c0de5540:	00002518 	.word	0x00002518
c0de5544:	000024d4 	.word	0x000024d4
c0de5548:	000001b9 	.word	0x000001b9
c0de554c:	0000020d 	.word	0x0000020d

c0de5550 <getContentPage>:
c0de5550:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5552:	b093      	sub	sp, #76	@ 0x4c
c0de5554:	4606      	mov	r6, r0
c0de5556:	2000      	movs	r0, #0
c0de5558:	460c      	mov	r4, r1
c0de555a:	2138      	movs	r1, #56	@ 0x38
c0de555c:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de5560:	ad04      	add	r5, sp, #16
c0de5562:	4628      	mov	r0, r5
c0de5564:	f002 f95a 	bl	c0de781c <__aeabi_memclr>
c0de5568:	4f47      	ldr	r7, [pc, #284]	@ (c0de5688 <getContentPage+0x138>)
c0de556a:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de556e:	462a      	mov	r2, r5
c0de5570:	eb09 0007 	add.w	r0, r9, r7
c0de5574:	f000 fef1 	bl	c0de635a <OUTLINED_FUNCTION_4>
c0de5578:	2800      	cmp	r0, #0
c0de557a:	d07a      	beq.n	c0de5672 <getContentPage+0x122>
c0de557c:	4605      	mov	r5, r0
c0de557e:	7800      	ldrb	r0, [r0, #0]
c0de5580:	280a      	cmp	r0, #10
c0de5582:	d011      	beq.n	c0de55a8 <getContentPage+0x58>
c0de5584:	2803      	cmp	r0, #3
c0de5586:	d02c      	beq.n	c0de55e2 <getContentPage+0x92>
c0de5588:	2804      	cmp	r0, #4
c0de558a:	d035      	beq.n	c0de55f8 <getContentPage+0xa8>
c0de558c:	2807      	cmp	r0, #7
c0de558e:	d045      	beq.n	c0de561c <getContentPage+0xcc>
c0de5590:	2808      	cmp	r0, #8
c0de5592:	d060      	beq.n	c0de5656 <getContentPage+0x106>
c0de5594:	2809      	cmp	r0, #9
c0de5596:	d007      	beq.n	c0de55a8 <getContentPage+0x58>
c0de5598:	2800      	cmp	r0, #0
c0de559a:	d16a      	bne.n	c0de5672 <getContentPage+0x122>
c0de559c:	6868      	ldr	r0, [r5, #4]
c0de559e:	f001 fe31 	bl	c0de7204 <pic>
c0de55a2:	6060      	str	r0, [r4, #4]
c0de55a4:	68a8      	ldr	r0, [r5, #8]
c0de55a6:	e019      	b.n	c0de55dc <getContentPage+0x8c>
c0de55a8:	1d28      	adds	r0, r5, #4
c0de55aa:	eb09 0607 	add.w	r6, r9, r7
c0de55ae:	f001 fe29 	bl	c0de7204 <pic>
c0de55b2:	6800      	ldr	r0, [r0, #0]
c0de55b4:	f001 fe26 	bl	c0de7204 <pic>
c0de55b8:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de55bc:	4605      	mov	r5, r0
c0de55be:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de55c0:	2910      	cmp	r1, #16
c0de55c2:	d100      	bne.n	c0de55c6 <getContentPage+0x76>
c0de55c4:	b918      	cbnz	r0, c0de55ce <getContentPage+0x7e>
c0de55c6:	290f      	cmp	r1, #15
c0de55c8:	d155      	bne.n	c0de5676 <getContentPage+0x126>
c0de55ca:	2800      	cmp	r0, #0
c0de55cc:	d053      	beq.n	c0de5676 <getContentPage+0x126>
c0de55ce:	f001 fe19 	bl	c0de7204 <pic>
c0de55d2:	6060      	str	r0, [r4, #4]
c0de55d4:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de55d8:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de55dc:	f001 fe12 	bl	c0de7204 <pic>
c0de55e0:	e046      	b.n	c0de5670 <getContentPage+0x120>
c0de55e2:	68a8      	ldr	r0, [r5, #8]
c0de55e4:	4e29      	ldr	r6, [pc, #164]	@ (c0de568c <getContentPage+0x13c>)
c0de55e6:	447e      	add	r6, pc
c0de55e8:	47b0      	blx	r6
c0de55ea:	60e0      	str	r0, [r4, #12]
c0de55ec:	6868      	ldr	r0, [r5, #4]
c0de55ee:	47b0      	blx	r6
c0de55f0:	6060      	str	r0, [r4, #4]
c0de55f2:	68e8      	ldr	r0, [r5, #12]
c0de55f4:	47b0      	blx	r6
c0de55f6:	e03b      	b.n	c0de5670 <getContentPage+0x120>
c0de55f8:	f104 0015 	add.w	r0, r4, #21
c0de55fc:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5600:	f104 020c 	add.w	r2, r4, #12
c0de5604:	f104 0310 	add.w	r3, r4, #16
c0de5608:	e9cd 3200 	strd	r3, r2, [sp]
c0de560c:	9002      	str	r0, [sp, #8]
c0de560e:	1d28      	adds	r0, r5, #4
c0de5610:	1d22      	adds	r2, r4, #4
c0de5612:	f104 0308 	add.w	r3, r4, #8
c0de5616:	f000 f8b9 	bl	c0de578c <getPairData>
c0de561a:	e02a      	b.n	c0de5672 <getContentPage+0x122>
c0de561c:	2001      	movs	r0, #1
c0de561e:	444f      	add	r7, r9
c0de5620:	7020      	strb	r0, [r4, #0]
c0de5622:	6868      	ldr	r0, [r5, #4]
c0de5624:	f001 fdee 	bl	c0de7204 <pic>
c0de5628:	4919      	ldr	r1, [pc, #100]	@ (c0de5690 <getContentPage+0x140>)
c0de562a:	4479      	add	r1, pc
c0de562c:	6379      	str	r1, [r7, #52]	@ 0x34
c0de562e:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5632:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5636:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de563a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de563e:	6062      	str	r2, [r4, #4]
c0de5640:	6841      	ldr	r1, [r0, #4]
c0de5642:	60a1      	str	r1, [r4, #8]
c0de5644:	7a00      	ldrb	r0, [r0, #8]
c0de5646:	1e41      	subs	r1, r0, #1
c0de5648:	bf18      	it	ne
c0de564a:	2101      	movne	r1, #1
c0de564c:	2e00      	cmp	r6, #0
c0de564e:	bf08      	it	eq
c0de5650:	4601      	moveq	r1, r0
c0de5652:	7521      	strb	r1, [r4, #20]
c0de5654:	e00d      	b.n	c0de5672 <getContentPage+0x122>
c0de5656:	6868      	ldr	r0, [r5, #4]
c0de5658:	f001 fdd4 	bl	c0de7204 <pic>
c0de565c:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5660:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5664:	6060      	str	r0, [r4, #4]
c0de5666:	68a8      	ldr	r0, [r5, #8]
c0de5668:	f001 fdcc 	bl	c0de7204 <pic>
c0de566c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5670:	60a0      	str	r0, [r4, #8]
c0de5672:	b013      	add	sp, #76	@ 0x4c
c0de5674:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5676:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de567a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de567e:	f001 fdc1 	bl	c0de7204 <pic>
c0de5682:	6060      	str	r0, [r4, #4]
c0de5684:	e7f5      	b.n	c0de5672 <getContentPage+0x122>
c0de5686:	bf00      	nop
c0de5688:	0000075c 	.word	0x0000075c
c0de568c:	00001c1b 	.word	0x00001c1b
c0de5690:	000001a7 	.word	0x000001a7

c0de5694 <drawSwitchStep>:
c0de5694:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5696:	b085      	sub	sp, #20
c0de5698:	4c11      	ldr	r4, [pc, #68]	@ (c0de56e0 <drawSwitchStep+0x4c>)
c0de569a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de569e:	2600      	movs	r6, #0
c0de56a0:	eb09 0504 	add.w	r5, r9, r4
c0de56a4:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de56a8:	2500      	movs	r5, #0
c0de56aa:	2f02      	cmp	r7, #2
c0de56ac:	d30a      	bcc.n	c0de56c4 <drawSwitchStep+0x30>
c0de56ae:	444c      	add	r4, r9
c0de56b0:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de56b4:	b12c      	cbz	r4, c0de56c2 <drawSwitchStep+0x2e>
c0de56b6:	3f01      	subs	r7, #1
c0de56b8:	2603      	movs	r6, #3
c0de56ba:	42a7      	cmp	r7, r4
c0de56bc:	bf08      	it	eq
c0de56be:	2602      	moveq	r6, #2
c0de56c0:	e000      	b.n	c0de56c4 <drawSwitchStep+0x30>
c0de56c2:	2601      	movs	r6, #1
c0de56c4:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de56c8:	f88d 3010 	strb.w	r3, [sp, #16]
c0de56cc:	9500      	str	r5, [sp, #0]
c0de56ce:	4330      	orrs	r0, r6
c0de56d0:	ab02      	add	r3, sp, #8
c0de56d2:	4661      	mov	r1, ip
c0de56d4:	2200      	movs	r2, #0
c0de56d6:	f7ff f87f 	bl	c0de47d8 <nbgl_stepDrawSwitch>
c0de56da:	b005      	add	sp, #20
c0de56dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de56de:	bf00      	nop
c0de56e0:	0000075c 	.word	0x0000075c

c0de56e4 <contentCallback>:
c0de56e4:	b5e0      	push	{r5, r6, r7, lr}
c0de56e6:	4608      	mov	r0, r1
c0de56e8:	f10d 0107 	add.w	r1, sp, #7
c0de56ec:	f000 f928 	bl	c0de5940 <buttonGenericCallback>
c0de56f0:	b130      	cbz	r0, c0de5700 <contentCallback+0x1c>
c0de56f2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de56f6:	2100      	movs	r1, #0
c0de56f8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de56fc:	f7ff bed2 	b.w	c0de54a4 <displayContent>
c0de5700:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5704 <getContentElemAtIdx>:
c0de5704:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5708:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5784 <getContentElemAtIdx+0x80>)
c0de570a:	4606      	mov	r6, r0
c0de570c:	2700      	movs	r7, #0
c0de570e:	eb09 0004 	add.w	r0, r9, r4
c0de5712:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de5716:	2b10      	cmp	r3, #16
c0de5718:	d830      	bhi.n	c0de577c <getContentElemAtIdx+0x78>
c0de571a:	4693      	mov	fp, r2
c0de571c:	2201      	movs	r2, #1
c0de571e:	9101      	str	r1, [sp, #4]
c0de5720:	fa02 f303 	lsl.w	r3, r2, r3
c0de5724:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5728:	d004      	beq.n	c0de5734 <getContentElemAtIdx+0x30>
c0de572a:	eb09 0004 	add.w	r0, r9, r4
c0de572e:	46a2      	mov	sl, r4
c0de5730:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de5732:	e005      	b.n	c0de5740 <getContentElemAtIdx+0x3c>
c0de5734:	4a14      	ldr	r2, [pc, #80]	@ (c0de5788 <getContentElemAtIdx+0x84>)
c0de5736:	4213      	tst	r3, r2
c0de5738:	d020      	beq.n	c0de577c <getContentElemAtIdx+0x78>
c0de573a:	46a2      	mov	sl, r4
c0de573c:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de5740:	2700      	movs	r7, #0
c0de5742:	2000      	movs	r0, #0
c0de5744:	f04f 0800 	mov.w	r8, #0
c0de5748:	4605      	mov	r5, r0
c0de574a:	7a20      	ldrb	r0, [r4, #8]
c0de574c:	4580      	cmp	r8, r0
c0de574e:	d215      	bcs.n	c0de577c <getContentElemAtIdx+0x78>
c0de5750:	fa4f f188 	sxtb.w	r1, r8
c0de5754:	4620      	mov	r0, r4
c0de5756:	465a      	mov	r2, fp
c0de5758:	f7ff fe30 	bl	c0de53bc <getContentAtIdx>
c0de575c:	4607      	mov	r7, r0
c0de575e:	f7ff fe87 	bl	c0de5470 <getContentNbElement>
c0de5762:	b2e9      	uxtb	r1, r5
c0de5764:	f108 0801 	add.w	r8, r8, #1
c0de5768:	4408      	add	r0, r1
c0de576a:	42b0      	cmp	r0, r6
c0de576c:	d9ec      	bls.n	c0de5748 <getContentElemAtIdx+0x44>
c0de576e:	eb09 000a 	add.w	r0, r9, sl
c0de5772:	9901      	ldr	r1, [sp, #4]
c0de5774:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5778:	1b40      	subs	r0, r0, r5
c0de577a:	7008      	strb	r0, [r1, #0]
c0de577c:	4638      	mov	r0, r7
c0de577e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5782:	bf00      	nop
c0de5784:	0000075c 	.word	0x0000075c
c0de5788:	00010008 	.word	0x00010008

c0de578c <getPairData>:
c0de578c:	b5b0      	push	{r4, r5, r7, lr}
c0de578e:	4615      	mov	r5, r2
c0de5790:	6802      	ldr	r2, [r0, #0]
c0de5792:	461c      	mov	r4, r3
c0de5794:	b112      	cbz	r2, c0de579c <getPairData+0x10>
c0de5796:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de579a:	e002      	b.n	c0de57a2 <getPairData+0x16>
c0de579c:	6842      	ldr	r2, [r0, #4]
c0de579e:	4608      	mov	r0, r1
c0de57a0:	4790      	blx	r2
c0de57a2:	f001 fd2f 	bl	c0de7204 <pic>
c0de57a6:	6802      	ldr	r2, [r0, #0]
c0de57a8:	9904      	ldr	r1, [sp, #16]
c0de57aa:	602a      	str	r2, [r5, #0]
c0de57ac:	6842      	ldr	r2, [r0, #4]
c0de57ae:	6022      	str	r2, [r4, #0]
c0de57b0:	7b02      	ldrb	r2, [r0, #12]
c0de57b2:	0753      	lsls	r3, r2, #29
c0de57b4:	d403      	bmi.n	c0de57be <getPairData+0x32>
c0de57b6:	0792      	lsls	r2, r2, #30
c0de57b8:	d404      	bmi.n	c0de57c4 <getPairData+0x38>
c0de57ba:	2000      	movs	r0, #0
c0de57bc:	e000      	b.n	c0de57c0 <getPairData+0x34>
c0de57be:	6880      	ldr	r0, [r0, #8]
c0de57c0:	6008      	str	r0, [r1, #0]
c0de57c2:	bdb0      	pop	{r4, r5, r7, pc}
c0de57c4:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de57c8:	2301      	movs	r3, #1
c0de57ca:	700b      	strb	r3, [r1, #0]
c0de57cc:	6880      	ldr	r0, [r0, #8]
c0de57ce:	6010      	str	r0, [r2, #0]
c0de57d0:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de57d4 <onSwitchAction>:
c0de57d4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de57d6:	b08f      	sub	sp, #60	@ 0x3c
c0de57d8:	ac01      	add	r4, sp, #4
c0de57da:	2138      	movs	r1, #56	@ 0x38
c0de57dc:	4620      	mov	r0, r4
c0de57de:	f002 f81d 	bl	c0de781c <__aeabi_memclr>
c0de57e2:	4e26      	ldr	r6, [pc, #152]	@ (c0de587c <onSwitchAction+0xa8>)
c0de57e4:	f10d 0103 	add.w	r1, sp, #3
c0de57e8:	4622      	mov	r2, r4
c0de57ea:	eb09 0006 	add.w	r0, r9, r6
c0de57ee:	f000 fdb4 	bl	c0de635a <OUTLINED_FUNCTION_4>
c0de57f2:	2800      	cmp	r0, #0
c0de57f4:	d040      	beq.n	c0de5878 <onSwitchAction+0xa4>
c0de57f6:	4604      	mov	r4, r0
c0de57f8:	7800      	ldrb	r0, [r0, #0]
c0de57fa:	2807      	cmp	r0, #7
c0de57fc:	d13c      	bne.n	c0de5878 <onSwitchAction+0xa4>
c0de57fe:	6860      	ldr	r0, [r4, #4]
c0de5800:	eb09 0706 	add.w	r7, r9, r6
c0de5804:	f001 fcfe 	bl	c0de7204 <pic>
c0de5808:	4605      	mov	r5, r0
c0de580a:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de580e:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5812:	2810      	cmp	r0, #16
c0de5814:	d811      	bhi.n	c0de583a <onSwitchAction+0x66>
c0de5816:	2101      	movs	r1, #1
c0de5818:	fa01 f000 	lsl.w	r0, r1, r0
c0de581c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5820:	d004      	beq.n	c0de582c <onSwitchAction+0x58>
c0de5822:	2000      	movs	r0, #0
c0de5824:	2101      	movs	r1, #1
c0de5826:	f000 f82d 	bl	c0de5884 <displaySettingsPage>
c0de582a:	e006      	b.n	c0de583a <onSwitchAction+0x66>
c0de582c:	4914      	ldr	r1, [pc, #80]	@ (c0de5880 <onSwitchAction+0xac>)
c0de582e:	4208      	tst	r0, r1
c0de5830:	d003      	beq.n	c0de583a <onSwitchAction+0x66>
c0de5832:	2000      	movs	r0, #0
c0de5834:	2101      	movs	r1, #1
c0de5836:	f7ff fe35 	bl	c0de54a4 <displayContent>
c0de583a:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de583c:	b188      	cbz	r0, c0de5862 <onSwitchAction+0x8e>
c0de583e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5842:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5846:	f001 fcdd 	bl	c0de7204 <pic>
c0de584a:	7a21      	ldrb	r1, [r4, #8]
c0de584c:	eb09 0206 	add.w	r2, r9, r6
c0de5850:	4603      	mov	r3, r0
c0de5852:	7a60      	ldrb	r0, [r4, #9]
c0de5854:	3901      	subs	r1, #1
c0de5856:	bf18      	it	ne
c0de5858:	2101      	movne	r1, #1
c0de585a:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de585e:	4798      	blx	r3
c0de5860:	e00a      	b.n	c0de5878 <onSwitchAction+0xa4>
c0de5862:	eb09 0006 	add.w	r0, r9, r6
c0de5866:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de5868:	b132      	cbz	r2, c0de5878 <onSwitchAction+0xa4>
c0de586a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de586e:	2100      	movs	r1, #0
c0de5870:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5874:	7a40      	ldrb	r0, [r0, #9]
c0de5876:	4790      	blx	r2
c0de5878:	b00f      	add	sp, #60	@ 0x3c
c0de587a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de587c:	0000075c 	.word	0x0000075c
c0de5880:	00010008 	.word	0x00010008

c0de5884 <displaySettingsPage>:
c0de5884:	b5b0      	push	{r4, r5, r7, lr}
c0de5886:	b08a      	sub	sp, #40	@ 0x28
c0de5888:	460d      	mov	r5, r1
c0de588a:	4604      	mov	r4, r0
c0de588c:	a804      	add	r0, sp, #16
c0de588e:	2118      	movs	r1, #24
c0de5890:	f001 ffc4 	bl	c0de781c <__aeabi_memclr>
c0de5894:	481c      	ldr	r0, [pc, #112]	@ (c0de5908 <displaySettingsPage+0x84>)
c0de5896:	f000 fd49 	bl	c0de632c <OUTLINED_FUNCTION_1>
c0de589a:	dd14      	ble.n	c0de58c6 <displaySettingsPage+0x42>
c0de589c:	a904      	add	r1, sp, #16
c0de589e:	4628      	mov	r0, r5
c0de58a0:	f7ff fe56 	bl	c0de5550 <getContentPage>
c0de58a4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de58a8:	b1e8      	cbz	r0, c0de58e6 <displaySettingsPage+0x62>
c0de58aa:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de58ae:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de58b2:	481a      	ldr	r0, [pc, #104]	@ (c0de591c <displaySettingsPage+0x98>)
c0de58b4:	4478      	add	r0, pc
c0de58b6:	2b00      	cmp	r3, #0
c0de58b8:	9000      	str	r0, [sp, #0]
c0de58ba:	4620      	mov	r0, r4
c0de58bc:	bf18      	it	ne
c0de58be:	2301      	movne	r3, #1
c0de58c0:	f7ff fee8 	bl	c0de5694 <drawSwitchStep>
c0de58c4:	e01b      	b.n	c0de58fe <displaySettingsPage+0x7a>
c0de58c6:	4448      	add	r0, r9
c0de58c8:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de58cc:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de58ce:	4b0f      	ldr	r3, [pc, #60]	@ (c0de590c <displaySettingsPage+0x88>)
c0de58d0:	447b      	add	r3, pc
c0de58d2:	290f      	cmp	r1, #15
c0de58d4:	bf08      	it	eq
c0de58d6:	4613      	moveq	r3, r2
c0de58d8:	6343      	str	r3, [r0, #52]	@ 0x34
c0de58da:	480d      	ldr	r0, [pc, #52]	@ (c0de5910 <displaySettingsPage+0x8c>)
c0de58dc:	4478      	add	r0, pc
c0de58de:	9005      	str	r0, [sp, #20]
c0de58e0:	480c      	ldr	r0, [pc, #48]	@ (c0de5914 <displaySettingsPage+0x90>)
c0de58e2:	4478      	add	r0, pc
c0de58e4:	9007      	str	r0, [sp, #28]
c0de58e6:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de58ea:	9907      	ldr	r1, [sp, #28]
c0de58ec:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5918 <displaySettingsPage+0x94>)
c0de58ee:	2000      	movs	r0, #0
c0de58f0:	9002      	str	r0, [sp, #8]
c0de58f2:	447d      	add	r5, pc
c0de58f4:	e9cd 5000 	strd	r5, r0, [sp]
c0de58f8:	4620      	mov	r0, r4
c0de58fa:	f7ff fae9 	bl	c0de4ed0 <drawStep>
c0de58fe:	f001 fa76 	bl	c0de6dee <nbgl_refresh>
c0de5902:	b00a      	add	sp, #40	@ 0x28
c0de5904:	bdb0      	pop	{r4, r5, r7, pc}
c0de5906:	bf00      	nop
c0de5908:	0000075c 	.word	0x0000075c
c0de590c:	fffff1cd 	.word	0xfffff1cd
c0de5910:	00002499 	.word	0x00002499
c0de5914:	000020f6 	.word	0x000020f6
c0de5918:	0000002b 	.word	0x0000002b
c0de591c:	00000069 	.word	0x00000069

c0de5920 <settingsCallback>:
c0de5920:	b5e0      	push	{r5, r6, r7, lr}
c0de5922:	4608      	mov	r0, r1
c0de5924:	f10d 0107 	add.w	r1, sp, #7
c0de5928:	f000 f80a 	bl	c0de5940 <buttonGenericCallback>
c0de592c:	b130      	cbz	r0, c0de593c <settingsCallback+0x1c>
c0de592e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5932:	2100      	movs	r1, #0
c0de5934:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5938:	f7ff bfa4 	b.w	c0de5884 <displaySettingsPage>
c0de593c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5940 <buttonGenericCallback>:
c0de5940:	b5b0      	push	{r4, r5, r7, lr}
c0de5942:	b090      	sub	sp, #64	@ 0x40
c0de5944:	460c      	mov	r4, r1
c0de5946:	4605      	mov	r5, r0
c0de5948:	a801      	add	r0, sp, #4
c0de594a:	2138      	movs	r1, #56	@ 0x38
c0de594c:	f001 ff66 	bl	c0de781c <__aeabi_memclr>
c0de5950:	2d04      	cmp	r5, #4
c0de5952:	d00d      	beq.n	c0de5970 <buttonGenericCallback+0x30>
c0de5954:	2d01      	cmp	r5, #1
c0de5956:	d012      	beq.n	c0de597e <buttonGenericCallback+0x3e>
c0de5958:	2d00      	cmp	r5, #0
c0de595a:	d17c      	bne.n	c0de5a56 <buttonGenericCallback+0x116>
c0de595c:	483f      	ldr	r0, [pc, #252]	@ (c0de5a5c <buttonGenericCallback+0x11c>)
c0de595e:	eb09 0100 	add.w	r1, r9, r0
c0de5962:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de5966:	2901      	cmp	r1, #1
c0de5968:	db1d      	blt.n	c0de59a6 <buttonGenericCallback+0x66>
c0de596a:	3901      	subs	r1, #1
c0de596c:	2008      	movs	r0, #8
c0de596e:	e013      	b.n	c0de5998 <buttonGenericCallback+0x58>
c0de5970:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5a5c <buttonGenericCallback+0x11c>)
c0de5972:	eb09 0004 	add.w	r0, r9, r4
c0de5976:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de5978:	b338      	cbz	r0, c0de59ca <buttonGenericCallback+0x8a>
c0de597a:	4780      	blx	r0
c0de597c:	e06b      	b.n	c0de5a56 <buttonGenericCallback+0x116>
c0de597e:	4837      	ldr	r0, [pc, #220]	@ (c0de5a5c <buttonGenericCallback+0x11c>)
c0de5980:	eb09 0100 	add.w	r1, r9, r0
c0de5984:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de5988:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de598c:	3901      	subs	r1, #1
c0de598e:	4281      	cmp	r1, r0
c0de5990:	dd61      	ble.n	c0de5a56 <buttonGenericCallback+0x116>
c0de5992:	b2c0      	uxtb	r0, r0
c0de5994:	1c41      	adds	r1, r0, #1
c0de5996:	2000      	movs	r0, #0
c0de5998:	4a30      	ldr	r2, [pc, #192]	@ (c0de5a5c <buttonGenericCallback+0x11c>)
c0de599a:	444a      	add	r2, r9
c0de599c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de59a0:	7020      	strb	r0, [r4, #0]
c0de59a2:	2001      	movs	r0, #1
c0de59a4:	e058      	b.n	c0de5a58 <buttonGenericCallback+0x118>
c0de59a6:	eb09 0100 	add.w	r1, r9, r0
c0de59aa:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de59ae:	2906      	cmp	r1, #6
c0de59b0:	d151      	bne.n	c0de5a56 <buttonGenericCallback+0x116>
c0de59b2:	eb09 0100 	add.w	r1, r9, r0
c0de59b6:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de59b8:	2900      	cmp	r1, #0
c0de59ba:	d04c      	beq.n	c0de5a56 <buttonGenericCallback+0x116>
c0de59bc:	4448      	add	r0, r9
c0de59be:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de59c2:	2801      	cmp	r0, #1
c0de59c4:	d047      	beq.n	c0de5a56 <buttonGenericCallback+0x116>
c0de59c6:	2008      	movs	r0, #8
c0de59c8:	e7ea      	b.n	c0de59a0 <buttonGenericCallback+0x60>
c0de59ca:	eb09 0004 	add.w	r0, r9, r4
c0de59ce:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de59d2:	2000      	movs	r0, #0
c0de59d4:	2910      	cmp	r1, #16
c0de59d6:	d83f      	bhi.n	c0de5a58 <buttonGenericCallback+0x118>
c0de59d8:	2201      	movs	r2, #1
c0de59da:	fa02 f101 	lsl.w	r1, r2, r1
c0de59de:	4a20      	ldr	r2, [pc, #128]	@ (c0de5a60 <buttonGenericCallback+0x120>)
c0de59e0:	4211      	tst	r1, r2
c0de59e2:	d039      	beq.n	c0de5a58 <buttonGenericCallback+0x118>
c0de59e4:	eb09 0004 	add.w	r0, r9, r4
c0de59e8:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de59ec:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de59f0:	aa01      	add	r2, sp, #4
c0de59f2:	f7ff fe87 	bl	c0de5704 <getContentElemAtIdx>
c0de59f6:	b370      	cbz	r0, c0de5a56 <buttonGenericCallback+0x116>
c0de59f8:	7801      	ldrb	r1, [r0, #0]
c0de59fa:	4602      	mov	r2, r0
c0de59fc:	2000      	movs	r0, #0
c0de59fe:	b359      	cbz	r1, c0de5a58 <buttonGenericCallback+0x118>
c0de5a00:	290a      	cmp	r1, #10
c0de5a02:	d009      	beq.n	c0de5a18 <buttonGenericCallback+0xd8>
c0de5a04:	2907      	cmp	r1, #7
c0de5a06:	d00f      	beq.n	c0de5a28 <buttonGenericCallback+0xe8>
c0de5a08:	2909      	cmp	r1, #9
c0de5a0a:	d011      	beq.n	c0de5a30 <buttonGenericCallback+0xf0>
c0de5a0c:	2903      	cmp	r1, #3
c0de5a0e:	f04f 0100 	mov.w	r1, #0
c0de5a12:	d112      	bne.n	c0de5a3a <buttonGenericCallback+0xfa>
c0de5a14:	7c10      	ldrb	r0, [r2, #16]
c0de5a16:	e005      	b.n	c0de5a24 <buttonGenericCallback+0xe4>
c0de5a18:	eb09 0004 	add.w	r0, r9, r4
c0de5a1c:	6891      	ldr	r1, [r2, #8]
c0de5a1e:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de5a22:	5c08      	ldrb	r0, [r1, r0]
c0de5a24:	2100      	movs	r1, #0
c0de5a26:	e008      	b.n	c0de5a3a <buttonGenericCallback+0xfa>
c0de5a28:	6850      	ldr	r0, [r2, #4]
c0de5a2a:	2100      	movs	r1, #0
c0de5a2c:	7a40      	ldrb	r0, [r0, #9]
c0de5a2e:	e004      	b.n	c0de5a3a <buttonGenericCallback+0xfa>
c0de5a30:	eb09 0004 	add.w	r0, r9, r4
c0de5a34:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de5a38:	7ad0      	ldrb	r0, [r2, #11]
c0de5a3a:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de5a3c:	b133      	cbz	r3, c0de5a4c <buttonGenericCallback+0x10c>
c0de5a3e:	eb09 0104 	add.w	r1, r9, r4
c0de5a42:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5a46:	2100      	movs	r1, #0
c0de5a48:	4798      	blx	r3
c0de5a4a:	e004      	b.n	c0de5a56 <buttonGenericCallback+0x116>
c0de5a4c:	eb09 0204 	add.w	r2, r9, r4
c0de5a50:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de5a52:	b102      	cbz	r2, c0de5a56 <buttonGenericCallback+0x116>
c0de5a54:	4790      	blx	r2
c0de5a56:	2000      	movs	r0, #0
c0de5a58:	b010      	add	sp, #64	@ 0x40
c0de5a5a:	bdb0      	pop	{r4, r5, r7, pc}
c0de5a5c:	0000075c 	.word	0x0000075c
c0de5a60:	0001c008 	.word	0x0001c008

c0de5a64 <displayHomePage>:
c0de5a64:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5a68:	4680      	mov	r8, r0
c0de5a6a:	4832      	ldr	r0, [pc, #200]	@ (c0de5b34 <displayHomePage+0xd0>)
c0de5a6c:	2200      	movs	r2, #0
c0de5a6e:	eb09 0100 	add.w	r1, r9, r0
c0de5a72:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de5a74:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de5a76:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5a78:	2202      	movs	r2, #2
c0de5a7a:	2d00      	cmp	r5, #0
c0de5a7c:	463e      	mov	r6, r7
c0de5a7e:	bf08      	it	eq
c0de5a80:	2201      	moveq	r2, #1
c0de5a82:	2f00      	cmp	r7, #0
c0de5a84:	bf18      	it	ne
c0de5a86:	2601      	movne	r6, #1
c0de5a88:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de5a8c:	b183      	cbz	r3, c0de5ab0 <displayHomePage+0x4c>
c0de5a8e:	2401      	movs	r4, #1
c0de5a90:	2d00      	cmp	r5, #0
c0de5a92:	bf08      	it	eq
c0de5a94:	24ff      	moveq	r4, #255	@ 0xff
c0de5a96:	429c      	cmp	r4, r3
c0de5a98:	d111      	bne.n	c0de5abe <displayHomePage+0x5a>
c0de5a9a:	eb09 0400 	add.w	r4, r9, r0
c0de5a9e:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5aa2:	f001 fbaf 	bl	c0de7204 <pic>
c0de5aa6:	4602      	mov	r2, r0
c0de5aa8:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de5aaa:	6880      	ldr	r0, [r0, #8]
c0de5aac:	6360      	str	r0, [r4, #52]	@ 0x34
c0de5aae:	e004      	b.n	c0de5aba <displayHomePage+0x56>
c0de5ab0:	eb09 0100 	add.w	r1, r9, r0
c0de5ab4:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de5ab8:	b312      	cbz	r2, c0de5b00 <displayHomePage+0x9c>
c0de5aba:	2300      	movs	r3, #0
c0de5abc:	e02c      	b.n	c0de5b18 <displayHomePage+0xb4>
c0de5abe:	2f00      	cmp	r7, #0
c0de5ac0:	4614      	mov	r4, r2
c0de5ac2:	bf08      	it	eq
c0de5ac4:	24ff      	moveq	r4, #255	@ 0xff
c0de5ac6:	429c      	cmp	r4, r3
c0de5ac8:	d109      	bne.n	c0de5ade <displayHomePage+0x7a>
c0de5aca:	491c      	ldr	r1, [pc, #112]	@ (c0de5b3c <displayHomePage+0xd8>)
c0de5acc:	4448      	add	r0, r9
c0de5ace:	2300      	movs	r3, #0
c0de5ad0:	4479      	add	r1, pc
c0de5ad2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5ad4:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5b40 <displayHomePage+0xdc>)
c0de5ad6:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5b44 <displayHomePage+0xe0>)
c0de5ad8:	447d      	add	r5, pc
c0de5ada:	447a      	add	r2, pc
c0de5adc:	e01c      	b.n	c0de5b18 <displayHomePage+0xb4>
c0de5ade:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de5ae0:	4432      	add	r2, r6
c0de5ae2:	4448      	add	r0, r9
c0de5ae4:	2900      	cmp	r1, #0
c0de5ae6:	bf08      	it	eq
c0de5ae8:	22ff      	moveq	r2, #255	@ 0xff
c0de5aea:	429a      	cmp	r2, r3
c0de5aec:	d10d      	bne.n	c0de5b0a <displayHomePage+0xa6>
c0de5aee:	4916      	ldr	r1, [pc, #88]	@ (c0de5b48 <displayHomePage+0xe4>)
c0de5af0:	2300      	movs	r3, #0
c0de5af2:	4479      	add	r1, pc
c0de5af4:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5af6:	4d15      	ldr	r5, [pc, #84]	@ (c0de5b4c <displayHomePage+0xe8>)
c0de5af8:	4a15      	ldr	r2, [pc, #84]	@ (c0de5b50 <displayHomePage+0xec>)
c0de5afa:	447d      	add	r5, pc
c0de5afc:	447a      	add	r2, pc
c0de5afe:	e00b      	b.n	c0de5b18 <displayHomePage+0xb4>
c0de5b00:	4448      	add	r0, r9
c0de5b02:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de5b04:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5b38 <displayHomePage+0xd4>)
c0de5b06:	447b      	add	r3, pc
c0de5b08:	e006      	b.n	c0de5b18 <displayHomePage+0xb4>
c0de5b0a:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de5b0c:	2300      	movs	r3, #0
c0de5b0e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5b10:	4d10      	ldr	r5, [pc, #64]	@ (c0de5b54 <displayHomePage+0xf0>)
c0de5b12:	4a11      	ldr	r2, [pc, #68]	@ (c0de5b58 <displayHomePage+0xf4>)
c0de5b14:	447d      	add	r5, pc
c0de5b16:	447a      	add	r2, pc
c0de5b18:	4910      	ldr	r1, [pc, #64]	@ (c0de5b5c <displayHomePage+0xf8>)
c0de5b1a:	2000      	movs	r0, #0
c0de5b1c:	9002      	str	r0, [sp, #8]
c0de5b1e:	4479      	add	r1, pc
c0de5b20:	e9cd 1000 	strd	r1, r0, [sp]
c0de5b24:	4640      	mov	r0, r8
c0de5b26:	4629      	mov	r1, r5
c0de5b28:	f7ff f9d2 	bl	c0de4ed0 <drawStep>
c0de5b2c:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5b30:	f001 b95d 	b.w	c0de6dee <nbgl_refresh>
c0de5b34:	0000075c 	.word	0x0000075c
c0de5b38:	0000231f 	.word	0x0000231f
c0de5b3c:	0000008d 	.word	0x0000008d
c0de5b40:	00001f23 	.word	0x00001f23
c0de5b44:	00002207 	.word	0x00002207
c0de5b48:	00000073 	.word	0x00000073
c0de5b4c:	00001e6c 	.word	0x00001e6c
c0de5b50:	000022b1 	.word	0x000022b1
c0de5b54:	00001e75 	.word	0x00001e75
c0de5b58:	0000231c 	.word	0x0000231c
c0de5b5c:	0000006b 	.word	0x0000006b

c0de5b60 <startUseCaseSettings>:
c0de5b60:	2000      	movs	r0, #0
c0de5b62:	f7fe bf61 	b.w	c0de4a28 <startUseCaseSettingsAtPage>
	...

c0de5b68 <startUseCaseInfo>:
c0de5b68:	4807      	ldr	r0, [pc, #28]	@ (c0de5b88 <startUseCaseInfo+0x20>)
c0de5b6a:	210d      	movs	r1, #13
c0de5b6c:	4448      	add	r0, r9
c0de5b6e:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5b72:	2100      	movs	r1, #0
c0de5b74:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5b78:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5b7a:	7b09      	ldrb	r1, [r1, #12]
c0de5b7c:	3101      	adds	r1, #1
c0de5b7e:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de5b82:	2000      	movs	r0, #0
c0de5b84:	f000 b810 	b.w	c0de5ba8 <displayInfoPage>
c0de5b88:	0000075c 	.word	0x0000075c

c0de5b8c <homeCallback>:
c0de5b8c:	b5e0      	push	{r5, r6, r7, lr}
c0de5b8e:	4608      	mov	r0, r1
c0de5b90:	f10d 0107 	add.w	r1, sp, #7
c0de5b94:	f7ff fed4 	bl	c0de5940 <buttonGenericCallback>
c0de5b98:	b128      	cbz	r0, c0de5ba6 <homeCallback+0x1a>
c0de5b9a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5b9e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5ba2:	f7ff bf5f 	b.w	c0de5a64 <displayHomePage>
c0de5ba6:	bd8c      	pop	{r2, r3, r7, pc}

c0de5ba8 <displayInfoPage>:
c0de5ba8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5baa:	4604      	mov	r4, r0
c0de5bac:	4816      	ldr	r0, [pc, #88]	@ (c0de5c08 <displayInfoPage+0x60>)
c0de5bae:	f000 fbbd 	bl	c0de632c <OUTLINED_FUNCTION_1>
c0de5bb2:	dd11      	ble.n	c0de5bd8 <displayInfoPage+0x30>
c0de5bb4:	eb09 0700 	add.w	r7, r9, r0
c0de5bb8:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5bba:	6800      	ldr	r0, [r0, #0]
c0de5bbc:	4e13      	ldr	r6, [pc, #76]	@ (c0de5c0c <displayInfoPage+0x64>)
c0de5bbe:	447e      	add	r6, pc
c0de5bc0:	47b0      	blx	r6
c0de5bc2:	f000 fbd5 	bl	c0de6370 <OUTLINED_FUNCTION_7>
c0de5bc6:	4605      	mov	r5, r0
c0de5bc8:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5bca:	6840      	ldr	r0, [r0, #4]
c0de5bcc:	47b0      	blx	r6
c0de5bce:	f000 fbcf 	bl	c0de6370 <OUTLINED_FUNCTION_7>
c0de5bd2:	4603      	mov	r3, r0
c0de5bd4:	2100      	movs	r1, #0
c0de5bd6:	e008      	b.n	c0de5bea <displayInfoPage+0x42>
c0de5bd8:	490d      	ldr	r1, [pc, #52]	@ (c0de5c10 <displayInfoPage+0x68>)
c0de5bda:	4448      	add	r0, r9
c0de5bdc:	2300      	movs	r3, #0
c0de5bde:	4479      	add	r1, pc
c0de5be0:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5be2:	490c      	ldr	r1, [pc, #48]	@ (c0de5c14 <displayInfoPage+0x6c>)
c0de5be4:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5c18 <displayInfoPage+0x70>)
c0de5be6:	4479      	add	r1, pc
c0de5be8:	447d      	add	r5, pc
c0de5bea:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5c1c <displayInfoPage+0x74>)
c0de5bec:	2002      	movs	r0, #2
c0de5bee:	2200      	movs	r2, #0
c0de5bf0:	9002      	str	r0, [sp, #8]
c0de5bf2:	4620      	mov	r0, r4
c0de5bf4:	447e      	add	r6, pc
c0de5bf6:	e9cd 6200 	strd	r6, r2, [sp]
c0de5bfa:	462a      	mov	r2, r5
c0de5bfc:	f7ff f968 	bl	c0de4ed0 <drawStep>
c0de5c00:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5c04:	f001 b8f3 	b.w	c0de6dee <nbgl_refresh>
c0de5c08:	0000075c 	.word	0x0000075c
c0de5c0c:	00001643 	.word	0x00001643
c0de5c10:	ffffeebf 	.word	0xffffeebf
c0de5c14:	00001df2 	.word	0x00001df2
c0de5c18:	0000218d 	.word	0x0000218d
c0de5c1c:	00000029 	.word	0x00000029

c0de5c20 <infoCallback>:
c0de5c20:	b5e0      	push	{r5, r6, r7, lr}
c0de5c22:	4608      	mov	r0, r1
c0de5c24:	f10d 0107 	add.w	r1, sp, #7
c0de5c28:	f7ff fe8a 	bl	c0de5940 <buttonGenericCallback>
c0de5c2c:	b128      	cbz	r0, c0de5c3a <infoCallback+0x1a>
c0de5c2e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5c32:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5c36:	f7ff bfb7 	b.w	c0de5ba8 <displayInfoPage>
c0de5c3a:	bd8c      	pop	{r2, r3, r7, pc}

c0de5c3c <displayWarningStep>:
c0de5c3c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5c3e:	2000      	movs	r0, #0
c0de5c40:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5c44:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de5c48:	482b      	ldr	r0, [pc, #172]	@ (c0de5cf8 <displayWarningStep+0xbc>)
c0de5c4a:	eb09 0100 	add.w	r1, r9, r0
c0de5c4e:	69c9      	ldr	r1, [r1, #28]
c0de5c50:	680a      	ldr	r2, [r1, #0]
c0de5c52:	06d3      	lsls	r3, r2, #27
c0de5c54:	d41b      	bmi.n	c0de5c8e <displayWarningStep+0x52>
c0de5c56:	2a00      	cmp	r2, #0
c0de5c58:	d145      	bne.n	c0de5ce6 <displayWarningStep+0xaa>
c0de5c5a:	69ca      	ldr	r2, [r1, #28]
c0de5c5c:	2a00      	cmp	r2, #0
c0de5c5e:	d042      	beq.n	c0de5ce6 <displayWarningStep+0xaa>
c0de5c60:	eb09 0300 	add.w	r3, r9, r0
c0de5c64:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de5c68:	2b00      	cmp	r3, #0
c0de5c6a:	d03e      	beq.n	c0de5cea <displayWarningStep+0xae>
c0de5c6c:	4448      	add	r0, r9
c0de5c6e:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5c72:	3801      	subs	r0, #1
c0de5c74:	4298      	cmp	r0, r3
c0de5c76:	d11d      	bne.n	c0de5cb4 <displayWarningStep+0x78>
c0de5c78:	6948      	ldr	r0, [r1, #20]
c0de5c7a:	7901      	ldrb	r1, [r0, #4]
c0de5c7c:	bb99      	cbnz	r1, c0de5ce6 <displayWarningStep+0xaa>
c0de5c7e:	68c1      	ldr	r1, [r0, #12]
c0de5c80:	6982      	ldr	r2, [r0, #24]
c0de5c82:	6a00      	ldr	r0, [r0, #32]
c0de5c84:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de5c88:	2003      	movs	r0, #3
c0de5c8a:	9104      	str	r1, [sp, #16]
c0de5c8c:	e01e      	b.n	c0de5ccc <displayWarningStep+0x90>
c0de5c8e:	eb09 0100 	add.w	r1, r9, r0
c0de5c92:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5c96:	b179      	cbz	r1, c0de5cb8 <displayWarningStep+0x7c>
c0de5c98:	4448      	add	r0, r9
c0de5c9a:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5c9e:	3801      	subs	r0, #1
c0de5ca0:	4288      	cmp	r0, r1
c0de5ca2:	d107      	bne.n	c0de5cb4 <displayWarningStep+0x78>
c0de5ca4:	aa02      	add	r2, sp, #8
c0de5ca6:	2000      	movs	r0, #0
c0de5ca8:	f102 0108 	add.w	r1, r2, #8
c0de5cac:	f000 f82e 	bl	c0de5d0c <getLastPageInfo>
c0de5cb0:	200a      	movs	r0, #10
c0de5cb2:	e00b      	b.n	c0de5ccc <displayWarningStep+0x90>
c0de5cb4:	2000      	movs	r0, #0
c0de5cb6:	e009      	b.n	c0de5ccc <displayWarningStep+0x90>
c0de5cb8:	4810      	ldr	r0, [pc, #64]	@ (c0de5cfc <displayWarningStep+0xc0>)
c0de5cba:	4478      	add	r0, pc
c0de5cbc:	9003      	str	r0, [sp, #12]
c0de5cbe:	4810      	ldr	r0, [pc, #64]	@ (c0de5d00 <displayWarningStep+0xc4>)
c0de5cc0:	4478      	add	r0, pc
c0de5cc2:	9002      	str	r0, [sp, #8]
c0de5cc4:	480f      	ldr	r0, [pc, #60]	@ (c0de5d04 <displayWarningStep+0xc8>)
c0de5cc6:	4478      	add	r0, pc
c0de5cc8:	9004      	str	r0, [sp, #16]
c0de5cca:	2001      	movs	r0, #1
c0de5ccc:	2101      	movs	r1, #1
c0de5cce:	2200      	movs	r2, #0
c0de5cd0:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5cd4:	2100      	movs	r1, #0
c0de5cd6:	9100      	str	r1, [sp, #0]
c0de5cd8:	490b      	ldr	r1, [pc, #44]	@ (c0de5d08 <displayWarningStep+0xcc>)
c0de5cda:	ab02      	add	r3, sp, #8
c0de5cdc:	4479      	add	r1, pc
c0de5cde:	f7fe fc93 	bl	c0de4608 <nbgl_stepDrawCenteredInfo>
c0de5ce2:	f001 f884 	bl	c0de6dee <nbgl_refresh>
c0de5ce6:	b006      	add	sp, #24
c0de5ce8:	bd80      	pop	{r7, pc}
c0de5cea:	6850      	ldr	r0, [r2, #4]
c0de5cec:	6911      	ldr	r1, [r2, #16]
c0de5cee:	6992      	ldr	r2, [r2, #24]
c0de5cf0:	9004      	str	r0, [sp, #16]
c0de5cf2:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5cf6:	e7e8      	b.n	c0de5cca <displayWarningStep+0x8e>
c0de5cf8:	0000075c 	.word	0x0000075c
c0de5cfc:	00001f22 	.word	0x00001f22
c0de5d00:	0000204f 	.word	0x0000204f
c0de5d04:	00001df7 	.word	0x00001df7
c0de5d08:	00000155 	.word	0x00000155

c0de5d0c <getLastPageInfo>:
c0de5d0c:	b170      	cbz	r0, c0de5d2c <getLastPageInfo+0x20>
c0de5d0e:	4833      	ldr	r0, [pc, #204]	@ (c0de5ddc <getLastPageInfo+0xd0>)
c0de5d10:	4478      	add	r0, pc
c0de5d12:	6008      	str	r0, [r1, #0]
c0de5d14:	4830      	ldr	r0, [pc, #192]	@ (c0de5dd8 <getLastPageInfo+0xcc>)
c0de5d16:	eb09 0100 	add.w	r1, r9, r0
c0de5d1a:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5d1e:	2904      	cmp	r1, #4
c0de5d20:	d113      	bne.n	c0de5d4a <getLastPageInfo+0x3e>
c0de5d22:	482f      	ldr	r0, [pc, #188]	@ (c0de5de0 <getLastPageInfo+0xd4>)
c0de5d24:	492f      	ldr	r1, [pc, #188]	@ (c0de5de4 <getLastPageInfo+0xd8>)
c0de5d26:	4478      	add	r0, pc
c0de5d28:	4479      	add	r1, pc
c0de5d2a:	e04f      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5d2c:	4838      	ldr	r0, [pc, #224]	@ (c0de5e10 <getLastPageInfo+0x104>)
c0de5d2e:	4478      	add	r0, pc
c0de5d30:	6008      	str	r0, [r1, #0]
c0de5d32:	4829      	ldr	r0, [pc, #164]	@ (c0de5dd8 <getLastPageInfo+0xcc>)
c0de5d34:	eb09 0100 	add.w	r1, r9, r0
c0de5d38:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5d3c:	2904      	cmp	r1, #4
c0de5d3e:	d10b      	bne.n	c0de5d58 <getLastPageInfo+0x4c>
c0de5d40:	4834      	ldr	r0, [pc, #208]	@ (c0de5e14 <getLastPageInfo+0x108>)
c0de5d42:	4935      	ldr	r1, [pc, #212]	@ (c0de5e18 <getLastPageInfo+0x10c>)
c0de5d44:	4478      	add	r0, pc
c0de5d46:	4479      	add	r1, pc
c0de5d48:	e040      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5d4a:	eb09 0100 	add.w	r1, r9, r0
c0de5d4e:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5d50:	b171      	cbz	r1, c0de5d70 <getLastPageInfo+0x64>
c0de5d52:	4825      	ldr	r0, [pc, #148]	@ (c0de5de8 <getLastPageInfo+0xdc>)
c0de5d54:	4478      	add	r0, pc
c0de5d56:	e039      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5d58:	4448      	add	r0, r9
c0de5d5a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5d5c:	f010 0007 	ands.w	r0, r0, #7
c0de5d60:	d017      	beq.n	c0de5d92 <getLastPageInfo+0x86>
c0de5d62:	2801      	cmp	r0, #1
c0de5d64:	d11a      	bne.n	c0de5d9c <getLastPageInfo+0x90>
c0de5d66:	482f      	ldr	r0, [pc, #188]	@ (c0de5e24 <getLastPageInfo+0x118>)
c0de5d68:	492f      	ldr	r1, [pc, #188]	@ (c0de5e28 <getLastPageInfo+0x11c>)
c0de5d6a:	4478      	add	r0, pc
c0de5d6c:	4479      	add	r1, pc
c0de5d6e:	e02d      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5d70:	4448      	add	r0, r9
c0de5d72:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5d74:	f000 0107 	and.w	r1, r0, #7
c0de5d78:	2901      	cmp	r1, #1
c0de5d7a:	d014      	beq.n	c0de5da6 <getLastPageInfo+0x9a>
c0de5d7c:	b9e9      	cbnz	r1, c0de5dba <getLastPageInfo+0xae>
c0de5d7e:	0640      	lsls	r0, r0, #25
c0de5d80:	481a      	ldr	r0, [pc, #104]	@ (c0de5dec <getLastPageInfo+0xe0>)
c0de5d82:	491b      	ldr	r1, [pc, #108]	@ (c0de5df0 <getLastPageInfo+0xe4>)
c0de5d84:	4478      	add	r0, pc
c0de5d86:	4479      	add	r1, pc
c0de5d88:	bf58      	it	pl
c0de5d8a:	4601      	movpl	r1, r0
c0de5d8c:	4819      	ldr	r0, [pc, #100]	@ (c0de5df4 <getLastPageInfo+0xe8>)
c0de5d8e:	4478      	add	r0, pc
c0de5d90:	e01c      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5d92:	4822      	ldr	r0, [pc, #136]	@ (c0de5e1c <getLastPageInfo+0x110>)
c0de5d94:	4922      	ldr	r1, [pc, #136]	@ (c0de5e20 <getLastPageInfo+0x114>)
c0de5d96:	4478      	add	r0, pc
c0de5d98:	4479      	add	r1, pc
c0de5d9a:	e017      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5d9c:	4823      	ldr	r0, [pc, #140]	@ (c0de5e2c <getLastPageInfo+0x120>)
c0de5d9e:	4924      	ldr	r1, [pc, #144]	@ (c0de5e30 <getLastPageInfo+0x124>)
c0de5da0:	4478      	add	r0, pc
c0de5da2:	4479      	add	r1, pc
c0de5da4:	e012      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5da6:	0640      	lsls	r0, r0, #25
c0de5da8:	4813      	ldr	r0, [pc, #76]	@ (c0de5df8 <getLastPageInfo+0xec>)
c0de5daa:	4914      	ldr	r1, [pc, #80]	@ (c0de5dfc <getLastPageInfo+0xf0>)
c0de5dac:	4478      	add	r0, pc
c0de5dae:	4479      	add	r1, pc
c0de5db0:	bf58      	it	pl
c0de5db2:	4601      	movpl	r1, r0
c0de5db4:	4812      	ldr	r0, [pc, #72]	@ (c0de5e00 <getLastPageInfo+0xf4>)
c0de5db6:	4478      	add	r0, pc
c0de5db8:	e008      	b.n	c0de5dcc <getLastPageInfo+0xc0>
c0de5dba:	0640      	lsls	r0, r0, #25
c0de5dbc:	4811      	ldr	r0, [pc, #68]	@ (c0de5e04 <getLastPageInfo+0xf8>)
c0de5dbe:	4912      	ldr	r1, [pc, #72]	@ (c0de5e08 <getLastPageInfo+0xfc>)
c0de5dc0:	4478      	add	r0, pc
c0de5dc2:	4479      	add	r1, pc
c0de5dc4:	bf58      	it	pl
c0de5dc6:	4601      	movpl	r1, r0
c0de5dc8:	4810      	ldr	r0, [pc, #64]	@ (c0de5e0c <getLastPageInfo+0x100>)
c0de5dca:	4478      	add	r0, pc
c0de5dcc:	6011      	str	r1, [r2, #0]
c0de5dce:	4902      	ldr	r1, [pc, #8]	@ (c0de5dd8 <getLastPageInfo+0xcc>)
c0de5dd0:	4449      	add	r1, r9
c0de5dd2:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5dd4:	4770      	bx	lr
c0de5dd6:	bf00      	nop
c0de5dd8:	0000075c 	.word	0x0000075c
c0de5ddc:	00001d8a 	.word	0x00001d8a
c0de5de0:	0000018f 	.word	0x0000018f
c0de5de4:	00002113 	.word	0x00002113
c0de5de8:	00000161 	.word	0x00000161
c0de5dec:	00001ec7 	.word	0x00001ec7
c0de5df0:	00001f68 	.word	0x00001f68
c0de5df4:	00000127 	.word	0x00000127
c0de5df8:	00001e83 	.word	0x00001e83
c0de5dfc:	00001ec1 	.word	0x00001ec1
c0de5e00:	000000ff 	.word	0x000000ff
c0de5e04:	00001ff6 	.word	0x00001ff6
c0de5e08:	00001f61 	.word	0x00001f61
c0de5e0c:	000000eb 	.word	0x000000eb
c0de5e10:	00001cf0 	.word	0x00001cf0
c0de5e14:	00000185 	.word	0x00000185
c0de5e18:	00001f6c 	.word	0x00001f6c
c0de5e1c:	00000133 	.word	0x00000133
c0de5e20:	00001ec4 	.word	0x00001ec4
c0de5e24:	0000015f 	.word	0x0000015f
c0de5e28:	00002059 	.word	0x00002059
c0de5e2c:	00000129 	.word	0x00000129
c0de5e30:	00002032 	.word	0x00002032

c0de5e34 <warningNavigate>:
c0de5e34:	2904      	cmp	r1, #4
c0de5e36:	d009      	beq.n	c0de5e4c <warningNavigate+0x18>
c0de5e38:	2901      	cmp	r1, #1
c0de5e3a:	d01f      	beq.n	c0de5e7c <warningNavigate+0x48>
c0de5e3c:	b9e9      	cbnz	r1, c0de5e7a <warningNavigate+0x46>
c0de5e3e:	481d      	ldr	r0, [pc, #116]	@ (c0de5eb4 <warningNavigate+0x80>)
c0de5e40:	4448      	add	r0, r9
c0de5e42:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5e46:	b368      	cbz	r0, c0de5ea4 <warningNavigate+0x70>
c0de5e48:	3801      	subs	r0, #1
c0de5e4a:	e022      	b.n	c0de5e92 <warningNavigate+0x5e>
c0de5e4c:	4819      	ldr	r0, [pc, #100]	@ (c0de5eb4 <warningNavigate+0x80>)
c0de5e4e:	eb09 0100 	add.w	r1, r9, r0
c0de5e52:	69c9      	ldr	r1, [r1, #28]
c0de5e54:	7809      	ldrb	r1, [r1, #0]
c0de5e56:	06c9      	lsls	r1, r1, #27
c0de5e58:	d50f      	bpl.n	c0de5e7a <warningNavigate+0x46>
c0de5e5a:	eb09 0100 	add.w	r1, r9, r0
c0de5e5e:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5e62:	b321      	cbz	r1, c0de5eae <warningNavigate+0x7a>
c0de5e64:	eb09 0200 	add.w	r2, r9, r0
c0de5e68:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5e6c:	3a01      	subs	r2, #1
c0de5e6e:	428a      	cmp	r2, r1
c0de5e70:	d103      	bne.n	c0de5e7a <warningNavigate+0x46>
c0de5e72:	4448      	add	r0, r9
c0de5e74:	6a01      	ldr	r1, [r0, #32]
c0de5e76:	2000      	movs	r0, #0
c0de5e78:	4708      	bx	r1
c0de5e7a:	4770      	bx	lr
c0de5e7c:	480d      	ldr	r0, [pc, #52]	@ (c0de5eb4 <warningNavigate+0x80>)
c0de5e7e:	eb09 0200 	add.w	r2, r9, r0
c0de5e82:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5e86:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5e8a:	3a01      	subs	r2, #1
c0de5e8c:	428a      	cmp	r2, r1
c0de5e8e:	dd05      	ble.n	c0de5e9c <warningNavigate+0x68>
c0de5e90:	1c48      	adds	r0, r1, #1
c0de5e92:	4908      	ldr	r1, [pc, #32]	@ (c0de5eb4 <warningNavigate+0x80>)
c0de5e94:	4449      	add	r1, r9
c0de5e96:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5e9a:	e003      	b.n	c0de5ea4 <warningNavigate+0x70>
c0de5e9c:	4448      	add	r0, r9
c0de5e9e:	69c0      	ldr	r0, [r0, #28]
c0de5ea0:	6801      	ldr	r1, [r0, #0]
c0de5ea2:	b109      	cbz	r1, c0de5ea8 <warningNavigate+0x74>
c0de5ea4:	f7ff beca 	b.w	c0de5c3c <displayWarningStep>
c0de5ea8:	69c0      	ldr	r0, [r0, #28]
c0de5eaa:	2800      	cmp	r0, #0
c0de5eac:	d0fa      	beq.n	c0de5ea4 <warningNavigate+0x70>
c0de5eae:	f000 b817 	b.w	c0de5ee0 <launchReviewAfterWarning>
c0de5eb2:	bf00      	nop
c0de5eb4:	0000075c 	.word	0x0000075c

c0de5eb8 <onReviewAccept>:
c0de5eb8:	4803      	ldr	r0, [pc, #12]	@ (c0de5ec8 <onReviewAccept+0x10>)
c0de5eba:	4448      	add	r0, r9
c0de5ebc:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5ebe:	b109      	cbz	r1, c0de5ec4 <onReviewAccept+0xc>
c0de5ec0:	2001      	movs	r0, #1
c0de5ec2:	4708      	bx	r1
c0de5ec4:	4770      	bx	lr
c0de5ec6:	bf00      	nop
c0de5ec8:	0000075c 	.word	0x0000075c

c0de5ecc <onReviewReject>:
c0de5ecc:	4803      	ldr	r0, [pc, #12]	@ (c0de5edc <onReviewReject+0x10>)
c0de5ece:	4448      	add	r0, r9
c0de5ed0:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5ed2:	b109      	cbz	r1, c0de5ed8 <onReviewReject+0xc>
c0de5ed4:	2000      	movs	r0, #0
c0de5ed6:	4708      	bx	r1
c0de5ed8:	4770      	bx	lr
c0de5eda:	bf00      	nop
c0de5edc:	0000075c 	.word	0x0000075c

c0de5ee0 <launchReviewAfterWarning>:
c0de5ee0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5ee2:	480c      	ldr	r0, [pc, #48]	@ (c0de5f14 <launchReviewAfterWarning+0x34>)
c0de5ee4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5ee8:	2905      	cmp	r1, #5
c0de5eea:	d00d      	beq.n	c0de5f08 <launchReviewAfterWarning+0x28>
c0de5eec:	2902      	cmp	r1, #2
c0de5eee:	bf18      	it	ne
c0de5ef0:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5ef2:	4448      	add	r0, r9
c0de5ef4:	1d06      	adds	r6, r0, #4
c0de5ef6:	6a00      	ldr	r0, [r0, #32]
c0de5ef8:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5efa:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5efe:	9003      	str	r0, [sp, #12]
c0de5f00:	2002      	movs	r0, #2
c0de5f02:	f7fe fe23 	bl	c0de4b4c <useCaseReview>
c0de5f06:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5f08:	2000      	movs	r0, #0
c0de5f0a:	b004      	add	sp, #16
c0de5f0c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5f10:	f7ff b8fa 	b.w	c0de5108 <displayStreamingReviewPage>
c0de5f14:	0000075c 	.word	0x0000075c

c0de5f18 <buttonSkipCallback>:
c0de5f18:	b5b0      	push	{r4, r5, r7, lr}
c0de5f1a:	2904      	cmp	r1, #4
c0de5f1c:	d00a      	beq.n	c0de5f34 <buttonSkipCallback+0x1c>
c0de5f1e:	2901      	cmp	r1, #1
c0de5f20:	d017      	beq.n	c0de5f52 <buttonSkipCallback+0x3a>
c0de5f22:	bbb9      	cbnz	r1, c0de5f94 <buttonSkipCallback+0x7c>
c0de5f24:	4829      	ldr	r0, [pc, #164]	@ (c0de5fcc <buttonSkipCallback+0xb4>)
c0de5f26:	eb09 0100 	add.w	r1, r9, r0
c0de5f2a:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5f2e:	b391      	cbz	r1, c0de5f96 <buttonSkipCallback+0x7e>
c0de5f30:	2008      	movs	r0, #8
c0de5f32:	e02a      	b.n	c0de5f8a <buttonSkipCallback+0x72>
c0de5f34:	4825      	ldr	r0, [pc, #148]	@ (c0de5fcc <buttonSkipCallback+0xb4>)
c0de5f36:	eb09 0100 	add.w	r1, r9, r0
c0de5f3a:	4448      	add	r0, r9
c0de5f3c:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5f40:	2900      	cmp	r1, #0
c0de5f42:	d03f      	beq.n	c0de5fc4 <buttonSkipCallback+0xac>
c0de5f44:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5f48:	3902      	subs	r1, #2
c0de5f4a:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5f4e:	2000      	movs	r0, #0
c0de5f50:	e030      	b.n	c0de5fb4 <buttonSkipCallback+0x9c>
c0de5f52:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5fcc <buttonSkipCallback+0xb4>)
c0de5f54:	eb09 0002 	add.w	r0, r9, r2
c0de5f58:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5f5c:	2808      	cmp	r0, #8
c0de5f5e:	d113      	bne.n	c0de5f88 <buttonSkipCallback+0x70>
c0de5f60:	eb09 0002 	add.w	r0, r9, r2
c0de5f64:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5f68:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5f6c:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5f70:	1e45      	subs	r5, r0, #1
c0de5f72:	2000      	movs	r0, #0
c0de5f74:	b2e1      	uxtb	r1, r4
c0de5f76:	429d      	cmp	r5, r3
c0de5f78:	bfc8      	it	gt
c0de5f7a:	42a3      	cmpgt	r3, r4
c0de5f7c:	dd19      	ble.n	c0de5fb2 <buttonSkipCallback+0x9a>
c0de5f7e:	eb09 0002 	add.w	r0, r9, r2
c0de5f82:	1c59      	adds	r1, r3, #1
c0de5f84:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5f88:	2000      	movs	r0, #0
c0de5f8a:	4910      	ldr	r1, [pc, #64]	@ (c0de5fcc <buttonSkipCallback+0xb4>)
c0de5f8c:	4449      	add	r1, r9
c0de5f8e:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5f92:	e00e      	b.n	c0de5fb2 <buttonSkipCallback+0x9a>
c0de5f94:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f96:	eb09 0100 	add.w	r1, r9, r0
c0de5f9a:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5f9e:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5fa2:	b2d9      	uxtb	r1, r3
c0de5fa4:	429a      	cmp	r2, r3
c0de5fa6:	dd03      	ble.n	c0de5fb0 <buttonSkipCallback+0x98>
c0de5fa8:	4448      	add	r0, r9
c0de5faa:	3a01      	subs	r2, #1
c0de5fac:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5fb0:	2008      	movs	r0, #8
c0de5fb2:	b119      	cbz	r1, c0de5fbc <buttonSkipCallback+0xa4>
c0de5fb4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5fb8:	f7fe be9e 	b.w	c0de4cf8 <displayReviewPage>
c0de5fbc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5fc0:	f7ff b8a2 	b.w	c0de5108 <displayStreamingReviewPage>
c0de5fc4:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5fc6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5fca:	4700      	bx	r0
c0de5fcc:	0000075c 	.word	0x0000075c

c0de5fd0 <displayAliasFullValue>:
c0de5fd0:	b570      	push	{r4, r5, r6, lr}
c0de5fd2:	b088      	sub	sp, #32
c0de5fd4:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6040 <displayAliasFullValue+0x70>)
c0de5fd6:	f10d 0213 	add.w	r2, sp, #19
c0de5fda:	eb09 0504 	add.w	r5, r9, r4
c0de5fde:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5fe0:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5fe4:	ab05      	add	r3, sp, #20
c0de5fe6:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5fea:	9202      	str	r2, [sp, #8]
c0de5fec:	e9cd 6300 	strd	r6, r3, [sp]
c0de5ff0:	aa07      	add	r2, sp, #28
c0de5ff2:	ab06      	add	r3, sp, #24
c0de5ff4:	f7ff fbca 	bl	c0de578c <getPairData>
c0de5ff8:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5ffa:	b178      	cbz	r0, c0de601c <displayAliasFullValue+0x4c>
c0de5ffc:	eb09 0104 	add.w	r1, r9, r4
c0de6000:	2200      	movs	r2, #0
c0de6002:	664a      	str	r2, [r1, #100]	@ 0x64
c0de6004:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de6008:	7d01      	ldrb	r1, [r0, #20]
c0de600a:	2901      	cmp	r1, #1
c0de600c:	d008      	beq.n	c0de6020 <displayAliasFullValue+0x50>
c0de600e:	2905      	cmp	r1, #5
c0de6010:	d008      	beq.n	c0de6024 <displayAliasFullValue+0x54>
c0de6012:	2904      	cmp	r1, #4
c0de6014:	d102      	bne.n	c0de601c <displayAliasFullValue+0x4c>
c0de6016:	6900      	ldr	r0, [r0, #16]
c0de6018:	300c      	adds	r0, #12
c0de601a:	e005      	b.n	c0de6028 <displayAliasFullValue+0x58>
c0de601c:	b008      	add	sp, #32
c0de601e:	bd70      	pop	{r4, r5, r6, pc}
c0de6020:	2002      	movs	r0, #2
c0de6022:	e003      	b.n	c0de602c <displayAliasFullValue+0x5c>
c0de6024:	6900      	ldr	r0, [r0, #16]
c0de6026:	3008      	adds	r0, #8
c0de6028:	7800      	ldrb	r0, [r0, #0]
c0de602a:	3001      	adds	r0, #1
c0de602c:	eb09 0104 	add.w	r1, r9, r4
c0de6030:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de6034:	2000      	movs	r0, #0
c0de6036:	b008      	add	sp, #32
c0de6038:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de603c:	f000 b814 	b.w	c0de6068 <displayExtensionStep>
c0de6040:	0000075c 	.word	0x0000075c

c0de6044 <reviewCallback>:
c0de6044:	b5e0      	push	{r5, r6, r7, lr}
c0de6046:	4608      	mov	r0, r1
c0de6048:	f10d 0107 	add.w	r1, sp, #7
c0de604c:	f7ff fc78 	bl	c0de5940 <buttonGenericCallback>
c0de6050:	b130      	cbz	r0, c0de6060 <reviewCallback+0x1c>
c0de6052:	4804      	ldr	r0, [pc, #16]	@ (c0de6064 <reviewCallback+0x20>)
c0de6054:	f000 f991 	bl	c0de637a <OUTLINED_FUNCTION_8>
c0de6058:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de605c:	f7fe be4c 	b.w	c0de4cf8 <displayReviewPage>
c0de6060:	bd8c      	pop	{r2, r3, r7, pc}
c0de6062:	bf00      	nop
c0de6064:	0000075c 	.word	0x0000075c

c0de6068 <displayExtensionStep>:
c0de6068:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de606c:	b088      	sub	sp, #32
c0de606e:	4e36      	ldr	r6, [pc, #216]	@ (c0de6148 <displayExtensionStep+0xe0>)
c0de6070:	4680      	mov	r8, r0
c0de6072:	2000      	movs	r0, #0
c0de6074:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6078:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de607c:	eb09 0006 	add.w	r0, r9, r6
c0de6080:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de6082:	b108      	cbz	r0, c0de6088 <displayExtensionStep+0x20>
c0de6084:	f7fe fbe6 	bl	c0de4854 <nbgl_stepRelease>
c0de6088:	eb09 0106 	add.w	r1, r9, r6
c0de608c:	f000 f981 	bl	c0de6392 <OUTLINED_FUNCTION_10>
c0de6090:	dd10      	ble.n	c0de60b4 <displayExtensionStep+0x4c>
c0de6092:	2703      	movs	r7, #3
c0de6094:	eb09 0106 	add.w	r1, r9, r6
c0de6098:	2800      	cmp	r0, #0
c0de609a:	bf08      	it	eq
c0de609c:	2701      	moveq	r7, #1
c0de609e:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de60a0:	7d0a      	ldrb	r2, [r1, #20]
c0de60a2:	2a05      	cmp	r2, #5
c0de60a4:	d01a      	beq.n	c0de60dc <displayExtensionStep+0x74>
c0de60a6:	2a04      	cmp	r2, #4
c0de60a8:	d028      	beq.n	c0de60fc <displayExtensionStep+0x94>
c0de60aa:	2a01      	cmp	r2, #1
c0de60ac:	d147      	bne.n	c0de613e <displayExtensionStep+0xd6>
c0de60ae:	6808      	ldr	r0, [r1, #0]
c0de60b0:	688d      	ldr	r5, [r1, #8]
c0de60b2:	e033      	b.n	c0de611c <displayExtensionStep+0xb4>
c0de60b4:	d143      	bne.n	c0de613e <displayExtensionStep+0xd6>
c0de60b6:	2001      	movs	r0, #1
c0de60b8:	2200      	movs	r2, #0
c0de60ba:	f88d 001d 	strb.w	r0, [sp, #29]
c0de60be:	4924      	ldr	r1, [pc, #144]	@ (c0de6150 <displayExtensionStep+0xe8>)
c0de60c0:	4479      	add	r1, pc
c0de60c2:	9104      	str	r1, [sp, #16]
c0de60c4:	4923      	ldr	r1, [pc, #140]	@ (c0de6154 <displayExtensionStep+0xec>)
c0de60c6:	9000      	str	r0, [sp, #0]
c0de60c8:	f048 0002 	orr.w	r0, r8, #2
c0de60cc:	4479      	add	r1, pc
c0de60ce:	9106      	str	r1, [sp, #24]
c0de60d0:	4921      	ldr	r1, [pc, #132]	@ (c0de6158 <displayExtensionStep+0xf0>)
c0de60d2:	ab04      	add	r3, sp, #16
c0de60d4:	4479      	add	r1, pc
c0de60d6:	f7fe fa97 	bl	c0de4608 <nbgl_stepDrawCenteredInfo>
c0de60da:	e02d      	b.n	c0de6138 <displayExtensionStep+0xd0>
c0de60dc:	690c      	ldr	r4, [r1, #16]
c0de60de:	0100      	lsls	r0, r0, #4
c0de60e0:	6821      	ldr	r1, [r4, #0]
c0de60e2:	5808      	ldr	r0, [r1, r0]
c0de60e4:	f001 f88e 	bl	c0de7204 <pic>
c0de60e8:	4605      	mov	r5, r0
c0de60ea:	eb09 0006 	add.w	r0, r9, r6
c0de60ee:	6821      	ldr	r1, [r4, #0]
c0de60f0:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de60f4:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de60f8:	6840      	ldr	r0, [r0, #4]
c0de60fa:	e00d      	b.n	c0de6118 <displayExtensionStep+0xb0>
c0de60fc:	690c      	ldr	r4, [r1, #16]
c0de60fe:	6821      	ldr	r1, [r4, #0]
c0de6100:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6104:	f001 f87e 	bl	c0de7204 <pic>
c0de6108:	4605      	mov	r5, r0
c0de610a:	eb09 0006 	add.w	r0, r9, r6
c0de610e:	6861      	ldr	r1, [r4, #4]
c0de6110:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6114:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6118:	f001 f874 	bl	c0de7204 <pic>
c0de611c:	b17d      	cbz	r5, c0de613e <displayExtensionStep+0xd6>
c0de611e:	2101      	movs	r1, #1
c0de6120:	ea47 0208 	orr.w	r2, r7, r8
c0de6124:	462b      	mov	r3, r5
c0de6126:	e9cd 0100 	strd	r0, r1, [sp]
c0de612a:	9102      	str	r1, [sp, #8]
c0de612c:	4610      	mov	r0, r2
c0de612e:	2200      	movs	r2, #0
c0de6130:	4906      	ldr	r1, [pc, #24]	@ (c0de614c <displayExtensionStep+0xe4>)
c0de6132:	4479      	add	r1, pc
c0de6134:	f7fe f922 	bl	c0de437c <nbgl_stepDrawText>
c0de6138:	eb09 0106 	add.w	r1, r9, r6
c0de613c:	6648      	str	r0, [r1, #100]	@ 0x64
c0de613e:	f000 fe56 	bl	c0de6dee <nbgl_refresh>
c0de6142:	b008      	add	sp, #32
c0de6144:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6148:	0000075c 	.word	0x0000075c
c0de614c:	00000027 	.word	0x00000027
c0de6150:	00001cb5 	.word	0x00001cb5
c0de6154:	0000190c 	.word	0x0000190c
c0de6158:	00000085 	.word	0x00000085

c0de615c <extensionNavigate>:
c0de615c:	b580      	push	{r7, lr}
c0de615e:	2904      	cmp	r1, #4
c0de6160:	d00a      	beq.n	c0de6178 <extensionNavigate+0x1c>
c0de6162:	2901      	cmp	r1, #1
c0de6164:	d01d      	beq.n	c0de61a2 <extensionNavigate+0x46>
c0de6166:	b9d9      	cbnz	r1, c0de61a0 <extensionNavigate+0x44>
c0de6168:	4818      	ldr	r0, [pc, #96]	@ (c0de61cc <extensionNavigate+0x70>)
c0de616a:	4448      	add	r0, r9
c0de616c:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6170:	b330      	cbz	r0, c0de61c0 <extensionNavigate+0x64>
c0de6172:	1e41      	subs	r1, r0, #1
c0de6174:	2008      	movs	r0, #8
c0de6176:	e01c      	b.n	c0de61b2 <extensionNavigate+0x56>
c0de6178:	4814      	ldr	r0, [pc, #80]	@ (c0de61cc <extensionNavigate+0x70>)
c0de617a:	eb09 0100 	add.w	r1, r9, r0
c0de617e:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de6182:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de6186:	3901      	subs	r1, #1
c0de6188:	4291      	cmp	r1, r2
c0de618a:	d109      	bne.n	c0de61a0 <extensionNavigate+0x44>
c0de618c:	4448      	add	r0, r9
c0de618e:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de6190:	f7fe fb60 	bl	c0de4854 <nbgl_stepRelease>
c0de6194:	f000 fe44 	bl	c0de6e20 <nbgl_screenRedraw>
c0de6198:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de619c:	f000 be27 	b.w	c0de6dee <nbgl_refresh>
c0de61a0:	bd80      	pop	{r7, pc}
c0de61a2:	480a      	ldr	r0, [pc, #40]	@ (c0de61cc <extensionNavigate+0x70>)
c0de61a4:	eb09 0100 	add.w	r1, r9, r0
c0de61a8:	f000 f8f3 	bl	c0de6392 <OUTLINED_FUNCTION_10>
c0de61ac:	dd06      	ble.n	c0de61bc <extensionNavigate+0x60>
c0de61ae:	1c41      	adds	r1, r0, #1
c0de61b0:	2000      	movs	r0, #0
c0de61b2:	4a06      	ldr	r2, [pc, #24]	@ (c0de61cc <extensionNavigate+0x70>)
c0de61b4:	444a      	add	r2, r9
c0de61b6:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de61ba:	e002      	b.n	c0de61c2 <extensionNavigate+0x66>
c0de61bc:	2000      	movs	r0, #0
c0de61be:	e000      	b.n	c0de61c2 <extensionNavigate+0x66>
c0de61c0:	2008      	movs	r0, #8
c0de61c2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de61c6:	f7ff bf4f 	b.w	c0de6068 <displayExtensionStep>
c0de61ca:	bf00      	nop
c0de61cc:	0000075c 	.word	0x0000075c

c0de61d0 <statusTickerCallback>:
c0de61d0:	4802      	ldr	r0, [pc, #8]	@ (c0de61dc <statusTickerCallback+0xc>)
c0de61d2:	4448      	add	r0, r9
c0de61d4:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de61d6:	b100      	cbz	r0, c0de61da <statusTickerCallback+0xa>
c0de61d8:	4700      	bx	r0
c0de61da:	4770      	bx	lr
c0de61dc:	0000075c 	.word	0x0000075c

c0de61e0 <getChoiceName>:
c0de61e0:	b5b0      	push	{r4, r5, r7, lr}
c0de61e2:	b090      	sub	sp, #64	@ 0x40
c0de61e4:	ad01      	add	r5, sp, #4
c0de61e6:	f000 f8cf 	bl	c0de6388 <OUTLINED_FUNCTION_9>
c0de61ea:	4814      	ldr	r0, [pc, #80]	@ (c0de623c <getChoiceName+0x5c>)
c0de61ec:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de61f0:	462a      	mov	r2, r5
c0de61f2:	4448      	add	r0, r9
c0de61f4:	f000 f8b1 	bl	c0de635a <OUTLINED_FUNCTION_4>
c0de61f8:	b150      	cbz	r0, c0de6210 <getChoiceName+0x30>
c0de61fa:	7801      	ldrb	r1, [r0, #0]
c0de61fc:	290a      	cmp	r1, #10
c0de61fe:	d009      	beq.n	c0de6214 <getChoiceName+0x34>
c0de6200:	2909      	cmp	r1, #9
c0de6202:	d105      	bne.n	c0de6210 <getChoiceName+0x30>
c0de6204:	f000 f8ad 	bl	c0de6362 <OUTLINED_FUNCTION_5>
c0de6208:	4605      	mov	r5, r0
c0de620a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de620e:	e006      	b.n	c0de621e <getChoiceName+0x3e>
c0de6210:	2000      	movs	r0, #0
c0de6212:	e010      	b.n	c0de6236 <getChoiceName+0x56>
c0de6214:	f000 f8a5 	bl	c0de6362 <OUTLINED_FUNCTION_5>
c0de6218:	4605      	mov	r5, r0
c0de621a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de621e:	f000 fff1 	bl	c0de7204 <pic>
c0de6222:	7829      	ldrb	r1, [r5, #0]
c0de6224:	42a1      	cmp	r1, r4
c0de6226:	d904      	bls.n	c0de6232 <getChoiceName+0x52>
c0de6228:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de622c:	f000 ffea 	bl	c0de7204 <pic>
c0de6230:	e001      	b.n	c0de6236 <getChoiceName+0x56>
c0de6232:	4803      	ldr	r0, [pc, #12]	@ (c0de6240 <getChoiceName+0x60>)
c0de6234:	4478      	add	r0, pc
c0de6236:	b010      	add	sp, #64	@ 0x40
c0de6238:	bdb0      	pop	{r4, r5, r7, pc}
c0de623a:	bf00      	nop
c0de623c:	0000075c 	.word	0x0000075c
c0de6240:	00001b41 	.word	0x00001b41

c0de6244 <onChoiceSelected>:
c0de6244:	b570      	push	{r4, r5, r6, lr}
c0de6246:	b090      	sub	sp, #64	@ 0x40
c0de6248:	ad01      	add	r5, sp, #4
c0de624a:	f000 f89d 	bl	c0de6388 <OUTLINED_FUNCTION_9>
c0de624e:	4e17      	ldr	r6, [pc, #92]	@ (c0de62ac <onChoiceSelected+0x68>)
c0de6250:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6254:	462a      	mov	r2, r5
c0de6256:	eb09 0006 	add.w	r0, r9, r6
c0de625a:	f000 f87e 	bl	c0de635a <OUTLINED_FUNCTION_4>
c0de625e:	b318      	cbz	r0, c0de62a8 <onChoiceSelected+0x64>
c0de6260:	7801      	ldrb	r1, [r0, #0]
c0de6262:	290a      	cmp	r1, #10
c0de6264:	d008      	beq.n	c0de6278 <onChoiceSelected+0x34>
c0de6266:	2909      	cmp	r1, #9
c0de6268:	d10f      	bne.n	c0de628a <onChoiceSelected+0x46>
c0de626a:	f000 f87a 	bl	c0de6362 <OUTLINED_FUNCTION_5>
c0de626e:	7941      	ldrb	r1, [r0, #5]
c0de6270:	42a1      	cmp	r1, r4
c0de6272:	d90a      	bls.n	c0de628a <onChoiceSelected+0x46>
c0de6274:	3007      	adds	r0, #7
c0de6276:	e006      	b.n	c0de6286 <onChoiceSelected+0x42>
c0de6278:	f000 f873 	bl	c0de6362 <OUTLINED_FUNCTION_5>
c0de627c:	7a01      	ldrb	r1, [r0, #8]
c0de627e:	42a1      	cmp	r1, r4
c0de6280:	d903      	bls.n	c0de628a <onChoiceSelected+0x46>
c0de6282:	6840      	ldr	r0, [r0, #4]
c0de6284:	4420      	add	r0, r4
c0de6286:	7800      	ldrb	r0, [r0, #0]
c0de6288:	e000      	b.n	c0de628c <onChoiceSelected+0x48>
c0de628a:	20ff      	movs	r0, #255	@ 0xff
c0de628c:	28ff      	cmp	r0, #255	@ 0xff
c0de628e:	d006      	beq.n	c0de629e <onChoiceSelected+0x5a>
c0de6290:	eb09 0106 	add.w	r1, r9, r6
c0de6294:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de6296:	b112      	cbz	r2, c0de629e <onChoiceSelected+0x5a>
c0de6298:	2100      	movs	r1, #0
c0de629a:	4790      	blx	r2
c0de629c:	e004      	b.n	c0de62a8 <onChoiceSelected+0x64>
c0de629e:	eb09 0006 	add.w	r0, r9, r6
c0de62a2:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de62a4:	b100      	cbz	r0, c0de62a8 <onChoiceSelected+0x64>
c0de62a6:	4780      	blx	r0
c0de62a8:	b010      	add	sp, #64	@ 0x40
c0de62aa:	bd70      	pop	{r4, r5, r6, pc}
c0de62ac:	0000075c 	.word	0x0000075c

c0de62b0 <streamingReviewCallback>:
c0de62b0:	b5e0      	push	{r5, r6, r7, lr}
c0de62b2:	4608      	mov	r0, r1
c0de62b4:	f10d 0107 	add.w	r1, sp, #7
c0de62b8:	f7ff fb42 	bl	c0de5940 <buttonGenericCallback>
c0de62bc:	b130      	cbz	r0, c0de62cc <streamingReviewCallback+0x1c>
c0de62be:	4804      	ldr	r0, [pc, #16]	@ (c0de62d0 <streamingReviewCallback+0x20>)
c0de62c0:	f000 f85b 	bl	c0de637a <OUTLINED_FUNCTION_8>
c0de62c4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de62c8:	f7fe bf1e 	b.w	c0de5108 <displayStreamingReviewPage>
c0de62cc:	bd8c      	pop	{r2, r3, r7, pc}
c0de62ce:	bf00      	nop
c0de62d0:	0000075c 	.word	0x0000075c

c0de62d4 <onChoiceAccept>:
c0de62d4:	4803      	ldr	r0, [pc, #12]	@ (c0de62e4 <onChoiceAccept+0x10>)
c0de62d6:	4448      	add	r0, r9
c0de62d8:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de62da:	b109      	cbz	r1, c0de62e0 <onChoiceAccept+0xc>
c0de62dc:	2001      	movs	r0, #1
c0de62de:	4708      	bx	r1
c0de62e0:	4770      	bx	lr
c0de62e2:	bf00      	nop
c0de62e4:	0000075c 	.word	0x0000075c

c0de62e8 <onChoiceReject>:
c0de62e8:	4803      	ldr	r0, [pc, #12]	@ (c0de62f8 <onChoiceReject+0x10>)
c0de62ea:	4448      	add	r0, r9
c0de62ec:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de62ee:	b109      	cbz	r1, c0de62f4 <onChoiceReject+0xc>
c0de62f0:	2000      	movs	r0, #0
c0de62f2:	4708      	bx	r1
c0de62f4:	4770      	bx	lr
c0de62f6:	bf00      	nop
c0de62f8:	0000075c 	.word	0x0000075c

c0de62fc <genericChoiceCallback>:
c0de62fc:	b5e0      	push	{r5, r6, r7, lr}
c0de62fe:	4608      	mov	r0, r1
c0de6300:	f10d 0107 	add.w	r1, sp, #7
c0de6304:	f7ff fb1c 	bl	c0de5940 <buttonGenericCallback>
c0de6308:	b128      	cbz	r0, c0de6316 <genericChoiceCallback+0x1a>
c0de630a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de630e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6312:	f7fe bff5 	b.w	c0de5300 <displayChoicePage>
c0de6316:	bd8c      	pop	{r2, r3, r7, pc}

c0de6318 <OUTLINED_FUNCTION_0>:
c0de6318:	460e      	mov	r6, r1
c0de631a:	2140      	movs	r1, #64	@ 0x40
c0de631c:	4698      	mov	r8, r3
c0de631e:	4615      	mov	r5, r2
c0de6320:	eb09 0400 	add.w	r4, r9, r0
c0de6324:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de6328:	f001 ba78 	b.w	c0de781c <__aeabi_memclr>

c0de632c <OUTLINED_FUNCTION_1>:
c0de632c:	2200      	movs	r2, #0
c0de632e:	eb09 0100 	add.w	r1, r9, r0
c0de6332:	634a      	str	r2, [r1, #52]	@ 0x34
c0de6334:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de6338:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de633c:	3901      	subs	r1, #1
c0de633e:	4291      	cmp	r1, r2
c0de6340:	4770      	bx	lr

c0de6342 <OUTLINED_FUNCTION_2>:
c0de6342:	eb09 0600 	add.w	r6, r9, r0
c0de6346:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de634a:	f001 ba67 	b.w	c0de781c <__aeabi_memclr>

c0de634e <OUTLINED_FUNCTION_3>:
c0de634e:	eb09 0500 	add.w	r5, r9, r0
c0de6352:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de6356:	f001 ba61 	b.w	c0de781c <__aeabi_memclr>

c0de635a <OUTLINED_FUNCTION_4>:
c0de635a:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de635e:	f7ff b9d1 	b.w	c0de5704 <getContentElemAtIdx>

c0de6362 <OUTLINED_FUNCTION_5>:
c0de6362:	3004      	adds	r0, #4
c0de6364:	f000 bf4e 	b.w	c0de7204 <pic>

c0de6368 <OUTLINED_FUNCTION_6>:
c0de6368:	e9cd 6500 	strd	r6, r5, [sp]
c0de636c:	f7fe bdb0 	b.w	c0de4ed0 <drawStep>

c0de6370 <OUTLINED_FUNCTION_7>:
c0de6370:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de6374:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de6378:	4730      	bx	r6

c0de637a <OUTLINED_FUNCTION_8>:
c0de637a:	eb09 0100 	add.w	r1, r9, r0
c0de637e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6382:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de6386:	4770      	bx	lr

c0de6388 <OUTLINED_FUNCTION_9>:
c0de6388:	4604      	mov	r4, r0
c0de638a:	2138      	movs	r1, #56	@ 0x38
c0de638c:	4628      	mov	r0, r5
c0de638e:	f001 ba45 	b.w	c0de781c <__aeabi_memclr>

c0de6392 <OUTLINED_FUNCTION_10>:
c0de6392:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de6396:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de639a:	3901      	subs	r1, #1
c0de639c:	4281      	cmp	r1, r0
c0de639e:	4770      	bx	lr

c0de63a0 <bip32_path_read>:
c0de63a0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de63a4:	b10b      	cbz	r3, c0de63aa <bip32_path_read+0xa>
c0de63a6:	2b0a      	cmp	r3, #10
c0de63a8:	d902      	bls.n	c0de63b0 <bip32_path_read+0x10>
c0de63aa:	2000      	movs	r0, #0
c0de63ac:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de63b0:	4692      	mov	sl, r2
c0de63b2:	460e      	mov	r6, r1
c0de63b4:	4683      	mov	fp, r0
c0de63b6:	425f      	negs	r7, r3
c0de63b8:	2500      	movs	r5, #0
c0de63ba:	f04f 0800 	mov.w	r8, #0
c0de63be:	9301      	str	r3, [sp, #4]
c0de63c0:	42af      	cmp	r7, r5
c0de63c2:	d00c      	beq.n	c0de63de <bip32_path_read+0x3e>
c0de63c4:	f108 0404 	add.w	r4, r8, #4
c0de63c8:	42b4      	cmp	r4, r6
c0de63ca:	d808      	bhi.n	c0de63de <bip32_path_read+0x3e>
c0de63cc:	4658      	mov	r0, fp
c0de63ce:	4641      	mov	r1, r8
c0de63d0:	f000 fb6f 	bl	c0de6ab2 <read_u32_be>
c0de63d4:	f84a 0008 	str.w	r0, [sl, r8]
c0de63d8:	3d01      	subs	r5, #1
c0de63da:	46a0      	mov	r8, r4
c0de63dc:	e7f0      	b.n	c0de63c0 <bip32_path_read+0x20>
c0de63de:	9a01      	ldr	r2, [sp, #4]
c0de63e0:	4269      	negs	r1, r5
c0de63e2:	2000      	movs	r0, #0
c0de63e4:	4291      	cmp	r1, r2
c0de63e6:	bf28      	it	cs
c0de63e8:	2001      	movcs	r0, #1
c0de63ea:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de63ee <buffer_seek_cur>:
c0de63ee:	6882      	ldr	r2, [r0, #8]
c0de63f0:	1889      	adds	r1, r1, r2
c0de63f2:	d205      	bcs.n	c0de6400 <buffer_seek_cur+0x12>
c0de63f4:	6842      	ldr	r2, [r0, #4]
c0de63f6:	4291      	cmp	r1, r2
c0de63f8:	bf9e      	ittt	ls
c0de63fa:	6081      	strls	r1, [r0, #8]
c0de63fc:	2001      	movls	r0, #1
c0de63fe:	4770      	bxls	lr
c0de6400:	2000      	movs	r0, #0
c0de6402:	4770      	bx	lr

c0de6404 <buffer_read_u8>:
c0de6404:	b510      	push	{r4, lr}
c0de6406:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de640a:	429a      	cmp	r2, r3
c0de640c:	d00a      	beq.n	c0de6424 <buffer_read_u8+0x20>
c0de640e:	6804      	ldr	r4, [r0, #0]
c0de6410:	5ce4      	ldrb	r4, [r4, r3]
c0de6412:	700c      	strb	r4, [r1, #0]
c0de6414:	6881      	ldr	r1, [r0, #8]
c0de6416:	3101      	adds	r1, #1
c0de6418:	d206      	bcs.n	c0de6428 <buffer_read_u8+0x24>
c0de641a:	6844      	ldr	r4, [r0, #4]
c0de641c:	42a1      	cmp	r1, r4
c0de641e:	bf98      	it	ls
c0de6420:	6081      	strls	r1, [r0, #8]
c0de6422:	e001      	b.n	c0de6428 <buffer_read_u8+0x24>
c0de6424:	2000      	movs	r0, #0
c0de6426:	7008      	strb	r0, [r1, #0]
c0de6428:	1ad0      	subs	r0, r2, r3
c0de642a:	bf18      	it	ne
c0de642c:	2001      	movne	r0, #1
c0de642e:	bd10      	pop	{r4, pc}

c0de6430 <buffer_read_u64>:
c0de6430:	b570      	push	{r4, r5, r6, lr}
c0de6432:	f000 f87d 	bl	c0de6530 <OUTLINED_FUNCTION_0>
c0de6436:	2e07      	cmp	r6, #7
c0de6438:	d904      	bls.n	c0de6444 <buffer_read_u64+0x14>
c0de643a:	6820      	ldr	r0, [r4, #0]
c0de643c:	b132      	cbz	r2, c0de644c <buffer_read_u64+0x1c>
c0de643e:	f000 fb6f 	bl	c0de6b20 <read_u64_le>
c0de6442:	e005      	b.n	c0de6450 <buffer_read_u64+0x20>
c0de6444:	2000      	movs	r0, #0
c0de6446:	e9c5 0000 	strd	r0, r0, [r5]
c0de644a:	e00c      	b.n	c0de6466 <buffer_read_u64+0x36>
c0de644c:	f000 fb3d 	bl	c0de6aca <read_u64_be>
c0de6450:	e9c5 0100 	strd	r0, r1, [r5]
c0de6454:	68a0      	ldr	r0, [r4, #8]
c0de6456:	f110 0f09 	cmn.w	r0, #9
c0de645a:	d804      	bhi.n	c0de6466 <buffer_read_u64+0x36>
c0de645c:	6861      	ldr	r1, [r4, #4]
c0de645e:	3008      	adds	r0, #8
c0de6460:	4288      	cmp	r0, r1
c0de6462:	bf98      	it	ls
c0de6464:	60a0      	strls	r0, [r4, #8]
c0de6466:	2000      	movs	r0, #0
c0de6468:	2e07      	cmp	r6, #7
c0de646a:	bf88      	it	hi
c0de646c:	2001      	movhi	r0, #1
c0de646e:	bd70      	pop	{r4, r5, r6, pc}

c0de6470 <buffer_read_varint>:
c0de6470:	b5b0      	push	{r4, r5, r7, lr}
c0de6472:	4604      	mov	r4, r0
c0de6474:	460d      	mov	r5, r1
c0de6476:	6800      	ldr	r0, [r0, #0]
c0de6478:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de647c:	4410      	add	r0, r2
c0de647e:	1a89      	subs	r1, r1, r2
c0de6480:	462a      	mov	r2, r5
c0de6482:	f000 fbb7 	bl	c0de6bf4 <varint_read>
c0de6486:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de648a:	dd0a      	ble.n	c0de64a2 <buffer_read_varint+0x32>
c0de648c:	68a1      	ldr	r1, [r4, #8]
c0de648e:	1840      	adds	r0, r0, r1
c0de6490:	d205      	bcs.n	c0de649e <buffer_read_varint+0x2e>
c0de6492:	6861      	ldr	r1, [r4, #4]
c0de6494:	4288      	cmp	r0, r1
c0de6496:	bf9e      	ittt	ls
c0de6498:	60a0      	strls	r0, [r4, #8]
c0de649a:	2001      	movls	r0, #1
c0de649c:	bdb0      	popls	{r4, r5, r7, pc}
c0de649e:	2000      	movs	r0, #0
c0de64a0:	bdb0      	pop	{r4, r5, r7, pc}
c0de64a2:	2000      	movs	r0, #0
c0de64a4:	e9c5 0000 	strd	r0, r0, [r5]
c0de64a8:	bdb0      	pop	{r4, r5, r7, pc}

c0de64aa <buffer_read_bip32_path>:
c0de64aa:	b5b0      	push	{r4, r5, r7, lr}
c0de64ac:	4604      	mov	r4, r0
c0de64ae:	4615      	mov	r5, r2
c0de64b0:	460a      	mov	r2, r1
c0de64b2:	6800      	ldr	r0, [r0, #0]
c0de64b4:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de64b8:	4418      	add	r0, r3
c0de64ba:	1ac9      	subs	r1, r1, r3
c0de64bc:	462b      	mov	r3, r5
c0de64be:	f7ff ff6f 	bl	c0de63a0 <bip32_path_read>
c0de64c2:	b140      	cbz	r0, c0de64d6 <buffer_read_bip32_path+0x2c>
c0de64c4:	68a2      	ldr	r2, [r4, #8]
c0de64c6:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de64ca:	4291      	cmp	r1, r2
c0de64cc:	d303      	bcc.n	c0de64d6 <buffer_read_bip32_path+0x2c>
c0de64ce:	6862      	ldr	r2, [r4, #4]
c0de64d0:	4291      	cmp	r1, r2
c0de64d2:	bf98      	it	ls
c0de64d4:	60a1      	strls	r1, [r4, #8]
c0de64d6:	bdb0      	pop	{r4, r5, r7, pc}

c0de64d8 <buffer_copy>:
c0de64d8:	b5b0      	push	{r4, r5, r7, lr}
c0de64da:	4614      	mov	r4, r2
c0de64dc:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de64e0:	1a9d      	subs	r5, r3, r2
c0de64e2:	42a5      	cmp	r5, r4
c0de64e4:	d806      	bhi.n	c0de64f4 <buffer_copy+0x1c>
c0de64e6:	6800      	ldr	r0, [r0, #0]
c0de64e8:	4402      	add	r2, r0
c0de64ea:	4608      	mov	r0, r1
c0de64ec:	4611      	mov	r1, r2
c0de64ee:	462a      	mov	r2, r5
c0de64f0:	f001 f98c 	bl	c0de780c <__aeabi_memmove>
c0de64f4:	2000      	movs	r0, #0
c0de64f6:	42a5      	cmp	r5, r4
c0de64f8:	bf98      	it	ls
c0de64fa:	2001      	movls	r0, #1
c0de64fc:	bdb0      	pop	{r4, r5, r7, pc}

c0de64fe <buffer_move>:
c0de64fe:	b5b0      	push	{r4, r5, r7, lr}
c0de6500:	4615      	mov	r5, r2
c0de6502:	4604      	mov	r4, r0
c0de6504:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6508:	1a12      	subs	r2, r2, r0
c0de650a:	42aa      	cmp	r2, r5
c0de650c:	bf84      	itt	hi
c0de650e:	2000      	movhi	r0, #0
c0de6510:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6512:	6823      	ldr	r3, [r4, #0]
c0de6514:	4403      	add	r3, r0
c0de6516:	4608      	mov	r0, r1
c0de6518:	4619      	mov	r1, r3
c0de651a:	f001 f977 	bl	c0de780c <__aeabi_memmove>
c0de651e:	68a0      	ldr	r0, [r4, #8]
c0de6520:	1940      	adds	r0, r0, r5
c0de6522:	d203      	bcs.n	c0de652c <buffer_move+0x2e>
c0de6524:	6861      	ldr	r1, [r4, #4]
c0de6526:	4288      	cmp	r0, r1
c0de6528:	bf98      	it	ls
c0de652a:	60a0      	strls	r0, [r4, #8]
c0de652c:	2001      	movs	r0, #1
c0de652e:	bdb0      	pop	{r4, r5, r7, pc}

c0de6530 <OUTLINED_FUNCTION_0>:
c0de6530:	4604      	mov	r4, r0
c0de6532:	460d      	mov	r5, r1
c0de6534:	6840      	ldr	r0, [r0, #4]
c0de6536:	68a1      	ldr	r1, [r4, #8]
c0de6538:	1a46      	subs	r6, r0, r1
c0de653a:	4770      	bx	lr

c0de653c <bip32_derive_with_seed_init_privkey_256>:
c0de653c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6540:	b095      	sub	sp, #84	@ 0x54
c0de6542:	460d      	mov	r5, r1
c0de6544:	4607      	mov	r7, r0
c0de6546:	a904      	add	r1, sp, #16
c0de6548:	469a      	mov	sl, r3
c0de654a:	4614      	mov	r4, r2
c0de654c:	4628      	mov	r0, r5
c0de654e:	f000 ffb9 	bl	c0de74c4 <cx_ecdomain_parameters_length>
c0de6552:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6556:	4606      	mov	r6, r0
c0de6558:	b9e0      	cbnz	r0, c0de6594 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de655a:	9804      	ldr	r0, [sp, #16]
c0de655c:	2820      	cmp	r0, #32
c0de655e:	d117      	bne.n	c0de6590 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6560:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6562:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6566:	ab05      	add	r3, sp, #20
c0de6568:	e9cd 3200 	strd	r3, r2, [sp]
c0de656c:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6570:	4638      	mov	r0, r7
c0de6572:	4629      	mov	r1, r5
c0de6574:	4622      	mov	r2, r4
c0de6576:	4653      	mov	r3, sl
c0de6578:	f000 f818 	bl	c0de65ac <os_derive_bip32_with_seed_no_throw>
c0de657c:	4606      	mov	r6, r0
c0de657e:	b948      	cbnz	r0, c0de6594 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6580:	9a04      	ldr	r2, [sp, #16]
c0de6582:	a905      	add	r1, sp, #20
c0de6584:	4628      	mov	r0, r5
c0de6586:	4643      	mov	r3, r8
c0de6588:	f000 fc12 	bl	c0de6db0 <cx_ecfp_init_private_key_no_throw>
c0de658c:	4606      	mov	r6, r0
c0de658e:	e001      	b.n	c0de6594 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6590:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6594:	a805      	add	r0, sp, #20
c0de6596:	2140      	movs	r1, #64	@ 0x40
c0de6598:	f001 f94e 	bl	c0de7838 <explicit_bzero>
c0de659c:	b116      	cbz	r6, c0de65a4 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de659e:	4640      	mov	r0, r8
c0de65a0:	f000 f89f 	bl	c0de66e2 <OUTLINED_FUNCTION_0>
c0de65a4:	4630      	mov	r0, r6
c0de65a6:	b015      	add	sp, #84	@ 0x54
c0de65a8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de65ac <os_derive_bip32_with_seed_no_throw>:
c0de65ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de65b0:	b090      	sub	sp, #64	@ 0x40
c0de65b2:	f10d 0810 	add.w	r8, sp, #16
c0de65b6:	4607      	mov	r7, r0
c0de65b8:	469b      	mov	fp, r3
c0de65ba:	4616      	mov	r6, r2
c0de65bc:	460c      	mov	r4, r1
c0de65be:	4640      	mov	r0, r8
c0de65c0:	f001 f970 	bl	c0de78a4 <setjmp>
c0de65c4:	b285      	uxth	r5, r0
c0de65c6:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de65ca:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de65ce:	b155      	cbz	r5, c0de65e6 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de65d0:	2000      	movs	r0, #0
c0de65d2:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de65d6:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de65d8:	f001 f818 	bl	c0de760c <try_context_set>
c0de65dc:	2140      	movs	r1, #64	@ 0x40
c0de65de:	4650      	mov	r0, sl
c0de65e0:	f001 f92a 	bl	c0de7838 <explicit_bzero>
c0de65e4:	e012      	b.n	c0de660c <os_derive_bip32_with_seed_no_throw+0x60>
c0de65e6:	a804      	add	r0, sp, #16
c0de65e8:	f001 f810 	bl	c0de760c <try_context_set>
c0de65ec:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de65ee:	900e      	str	r0, [sp, #56]	@ 0x38
c0de65f0:	4668      	mov	r0, sp
c0de65f2:	4632      	mov	r2, r6
c0de65f4:	465b      	mov	r3, fp
c0de65f6:	f8c0 a000 	str.w	sl, [r0]
c0de65fa:	6041      	str	r1, [r0, #4]
c0de65fc:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de65fe:	6081      	str	r1, [r0, #8]
c0de6600:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6602:	60c1      	str	r1, [r0, #12]
c0de6604:	4638      	mov	r0, r7
c0de6606:	4621      	mov	r1, r4
c0de6608:	f000 ff66 	bl	c0de74d8 <os_perso_derive_node_with_seed_key>
c0de660c:	f000 fff6 	bl	c0de75fc <try_context_get>
c0de6610:	4540      	cmp	r0, r8
c0de6612:	d102      	bne.n	c0de661a <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6614:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6616:	f000 fff9 	bl	c0de760c <try_context_set>
c0de661a:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de661e:	b918      	cbnz	r0, c0de6628 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6620:	4628      	mov	r0, r5
c0de6622:	b010      	add	sp, #64	@ 0x40
c0de6624:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6628:	f000 fc47 	bl	c0de6eba <os_longjmp>

c0de662c <bip32_derive_with_seed_get_pubkey_256>:
c0de662c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de662e:	b0a1      	sub	sp, #132	@ 0x84
c0de6630:	460e      	mov	r6, r1
c0de6632:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6634:	9103      	str	r1, [sp, #12]
c0de6636:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6638:	9102      	str	r1, [sp, #8]
c0de663a:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de663c:	9101      	str	r1, [sp, #4]
c0de663e:	a917      	add	r1, sp, #92	@ 0x5c
c0de6640:	9100      	str	r1, [sp, #0]
c0de6642:	4631      	mov	r1, r6
c0de6644:	f7ff ff7a 	bl	c0de653c <bip32_derive_with_seed_init_privkey_256>
c0de6648:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de664a:	4605      	mov	r5, r0
c0de664c:	b9b8      	cbnz	r0, c0de667e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de664e:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6650:	2301      	movs	r3, #1
c0de6652:	9000      	str	r0, [sp, #0]
c0de6654:	af04      	add	r7, sp, #16
c0de6656:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6658:	4630      	mov	r0, r6
c0de665a:	4639      	mov	r1, r7
c0de665c:	f000 fba3 	bl	c0de6da6 <cx_ecfp_generate_pair2_no_throw>
c0de6660:	4605      	mov	r5, r0
c0de6662:	b960      	cbnz	r0, c0de667e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6664:	9805      	ldr	r0, [sp, #20]
c0de6666:	2841      	cmp	r0, #65	@ 0x41
c0de6668:	d107      	bne.n	c0de667a <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de666a:	f107 0108 	add.w	r1, r7, #8
c0de666e:	4620      	mov	r0, r4
c0de6670:	2241      	movs	r2, #65	@ 0x41
c0de6672:	f001 f8c9 	bl	c0de7808 <__aeabi_memcpy>
c0de6676:	2500      	movs	r5, #0
c0de6678:	e001      	b.n	c0de667e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de667a:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de667e:	a817      	add	r0, sp, #92	@ 0x5c
c0de6680:	f000 f82f 	bl	c0de66e2 <OUTLINED_FUNCTION_0>
c0de6684:	b11d      	cbz	r5, c0de668e <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6686:	4620      	mov	r0, r4
c0de6688:	2141      	movs	r1, #65	@ 0x41
c0de668a:	f001 f8d5 	bl	c0de7838 <explicit_bzero>
c0de668e:	4628      	mov	r0, r5
c0de6690:	b021      	add	sp, #132	@ 0x84
c0de6692:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6694 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6694:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6696:	b08f      	sub	sp, #60	@ 0x3c
c0de6698:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de669a:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de669c:	683c      	ldr	r4, [r7, #0]
c0de669e:	9503      	str	r5, [sp, #12]
c0de66a0:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de66a2:	9502      	str	r5, [sp, #8]
c0de66a4:	2500      	movs	r5, #0
c0de66a6:	9501      	str	r5, [sp, #4]
c0de66a8:	ad05      	add	r5, sp, #20
c0de66aa:	9500      	str	r5, [sp, #0]
c0de66ac:	f7ff ff46 	bl	c0de653c <bip32_derive_with_seed_init_privkey_256>
c0de66b0:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de66b2:	4606      	mov	r6, r0
c0de66b4:	b950      	cbnz	r0, c0de66cc <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de66b6:	ae14      	add	r6, sp, #80	@ 0x50
c0de66b8:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de66ba:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de66bc:	e9cd 6500 	strd	r6, r5, [sp]
c0de66c0:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de66c4:	a805      	add	r0, sp, #20
c0de66c6:	f000 fb69 	bl	c0de6d9c <cx_ecdsa_sign_no_throw>
c0de66ca:	4606      	mov	r6, r0
c0de66cc:	a805      	add	r0, sp, #20
c0de66ce:	f000 f808 	bl	c0de66e2 <OUTLINED_FUNCTION_0>
c0de66d2:	b11e      	cbz	r6, c0de66dc <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de66d4:	4628      	mov	r0, r5
c0de66d6:	4621      	mov	r1, r4
c0de66d8:	f001 f8ae 	bl	c0de7838 <explicit_bzero>
c0de66dc:	4630      	mov	r0, r6
c0de66de:	b00f      	add	sp, #60	@ 0x3c
c0de66e0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de66e2 <OUTLINED_FUNCTION_0>:
c0de66e2:	2128      	movs	r1, #40	@ 0x28
c0de66e4:	f001 b8a8 	b.w	c0de7838 <explicit_bzero>

c0de66e8 <format_u64>:
c0de66e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de66ec:	b1f9      	cbz	r1, c0de672e <format_u64+0x46>
c0de66ee:	4615      	mov	r5, r2
c0de66f0:	4604      	mov	r4, r0
c0de66f2:	f1a1 0801 	sub.w	r8, r1, #1
c0de66f6:	2700      	movs	r7, #0
c0de66f8:	2600      	movs	r6, #0
c0de66fa:	f1b5 000a 	subs.w	r0, r5, #10
c0de66fe:	f173 0000 	sbcs.w	r0, r3, #0
c0de6702:	d316      	bcc.n	c0de6732 <format_u64+0x4a>
c0de6704:	4619      	mov	r1, r3
c0de6706:	4628      	mov	r0, r5
c0de6708:	220a      	movs	r2, #10
c0de670a:	2300      	movs	r3, #0
c0de670c:	f001 f88a 	bl	c0de7824 <__aeabi_uldivmod>
c0de6710:	460b      	mov	r3, r1
c0de6712:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6716:	1cba      	adds	r2, r7, #2
c0de6718:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de671c:	4605      	mov	r5, r0
c0de671e:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6722:	55e1      	strb	r1, [r4, r7]
c0de6724:	1c79      	adds	r1, r7, #1
c0de6726:	4542      	cmp	r2, r8
c0de6728:	460f      	mov	r7, r1
c0de672a:	d9e6      	bls.n	c0de66fa <format_u64+0x12>
c0de672c:	e012      	b.n	c0de6754 <format_u64+0x6c>
c0de672e:	2600      	movs	r6, #0
c0de6730:	e010      	b.n	c0de6754 <format_u64+0x6c>
c0de6732:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6736:	19e1      	adds	r1, r4, r7
c0de6738:	55e0      	strb	r0, [r4, r7]
c0de673a:	2000      	movs	r0, #0
c0de673c:	7048      	strb	r0, [r1, #1]
c0de673e:	b2c1      	uxtb	r1, r0
c0de6740:	428f      	cmp	r7, r1
c0de6742:	d906      	bls.n	c0de6752 <format_u64+0x6a>
c0de6744:	5c62      	ldrb	r2, [r4, r1]
c0de6746:	5de3      	ldrb	r3, [r4, r7]
c0de6748:	3001      	adds	r0, #1
c0de674a:	5463      	strb	r3, [r4, r1]
c0de674c:	55e2      	strb	r2, [r4, r7]
c0de674e:	3f01      	subs	r7, #1
c0de6750:	e7f5      	b.n	c0de673e <format_u64+0x56>
c0de6752:	2601      	movs	r6, #1
c0de6754:	4630      	mov	r0, r6
c0de6756:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de675a <format_fpu64>:
c0de675a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de675e:	b086      	sub	sp, #24
c0de6760:	466c      	mov	r4, sp
c0de6762:	4688      	mov	r8, r1
c0de6764:	4605      	mov	r5, r0
c0de6766:	2115      	movs	r1, #21
c0de6768:	461e      	mov	r6, r3
c0de676a:	4617      	mov	r7, r2
c0de676c:	4620      	mov	r0, r4
c0de676e:	f001 f855 	bl	c0de781c <__aeabi_memclr>
c0de6772:	4620      	mov	r0, r4
c0de6774:	2115      	movs	r1, #21
c0de6776:	463a      	mov	r2, r7
c0de6778:	4633      	mov	r3, r6
c0de677a:	f7ff ffb5 	bl	c0de66e8 <format_u64>
c0de677e:	b340      	cbz	r0, c0de67d2 <format_fpu64+0x78>
c0de6780:	466f      	mov	r7, sp
c0de6782:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6784:	4638      	mov	r0, r7
c0de6786:	f001 f8a5 	bl	c0de78d4 <strlen>
c0de678a:	42b0      	cmp	r0, r6
c0de678c:	d910      	bls.n	c0de67b0 <format_fpu64+0x56>
c0de678e:	1831      	adds	r1, r6, r0
c0de6790:	3101      	adds	r1, #1
c0de6792:	4541      	cmp	r1, r8
c0de6794:	d21d      	bcs.n	c0de67d2 <format_fpu64+0x78>
c0de6796:	1b84      	subs	r4, r0, r6
c0de6798:	4628      	mov	r0, r5
c0de679a:	4639      	mov	r1, r7
c0de679c:	4622      	mov	r2, r4
c0de679e:	f001 f833 	bl	c0de7808 <__aeabi_memcpy>
c0de67a2:	1928      	adds	r0, r5, r4
c0de67a4:	212e      	movs	r1, #46	@ 0x2e
c0de67a6:	4632      	mov	r2, r6
c0de67a8:	f800 1b01 	strb.w	r1, [r0], #1
c0de67ac:	1939      	adds	r1, r7, r4
c0de67ae:	e015      	b.n	c0de67dc <format_fpu64+0x82>
c0de67b0:	1a32      	subs	r2, r6, r0
c0de67b2:	1c91      	adds	r1, r2, #2
c0de67b4:	4541      	cmp	r1, r8
c0de67b6:	d20c      	bcs.n	c0de67d2 <format_fpu64+0x78>
c0de67b8:	202e      	movs	r0, #46	@ 0x2e
c0de67ba:	2330      	movs	r3, #48	@ 0x30
c0de67bc:	2400      	movs	r4, #0
c0de67be:	7068      	strb	r0, [r5, #1]
c0de67c0:	1ca8      	adds	r0, r5, #2
c0de67c2:	702b      	strb	r3, [r5, #0]
c0de67c4:	b2a5      	uxth	r5, r4
c0de67c6:	42aa      	cmp	r2, r5
c0de67c8:	d905      	bls.n	c0de67d6 <format_fpu64+0x7c>
c0de67ca:	f800 3b01 	strb.w	r3, [r0], #1
c0de67ce:	3401      	adds	r4, #1
c0de67d0:	e7f8      	b.n	c0de67c4 <format_fpu64+0x6a>
c0de67d2:	2000      	movs	r0, #0
c0de67d4:	e005      	b.n	c0de67e2 <format_fpu64+0x88>
c0de67d6:	eba8 0201 	sub.w	r2, r8, r1
c0de67da:	4669      	mov	r1, sp
c0de67dc:	f001 f894 	bl	c0de7908 <strncpy>
c0de67e0:	2001      	movs	r0, #1
c0de67e2:	b006      	add	sp, #24
c0de67e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de67e8 <format_hex>:
c0de67e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de67ea:	4604      	mov	r4, r0
c0de67ec:	0048      	lsls	r0, r1, #1
c0de67ee:	f100 0c01 	add.w	ip, r0, #1
c0de67f2:	459c      	cmp	ip, r3
c0de67f4:	d902      	bls.n	c0de67fc <format_hex+0x14>
c0de67f6:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de67fa:	e018      	b.n	c0de682e <format_hex+0x46>
c0de67fc:	480d      	ldr	r0, [pc, #52]	@ (c0de6834 <format_hex+0x4c>)
c0de67fe:	2500      	movs	r5, #0
c0de6800:	4478      	add	r0, pc
c0de6802:	b191      	cbz	r1, c0de682a <format_hex+0x42>
c0de6804:	1cef      	adds	r7, r5, #3
c0de6806:	429f      	cmp	r7, r3
c0de6808:	d80d      	bhi.n	c0de6826 <format_hex+0x3e>
c0de680a:	7827      	ldrb	r7, [r4, #0]
c0de680c:	3901      	subs	r1, #1
c0de680e:	093f      	lsrs	r7, r7, #4
c0de6810:	5dc7      	ldrb	r7, [r0, r7]
c0de6812:	5557      	strb	r7, [r2, r5]
c0de6814:	1957      	adds	r7, r2, r5
c0de6816:	3502      	adds	r5, #2
c0de6818:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de681c:	f006 060f 	and.w	r6, r6, #15
c0de6820:	5d86      	ldrb	r6, [r0, r6]
c0de6822:	707e      	strb	r6, [r7, #1]
c0de6824:	e7ed      	b.n	c0de6802 <format_hex+0x1a>
c0de6826:	f105 0c01 	add.w	ip, r5, #1
c0de682a:	2000      	movs	r0, #0
c0de682c:	5550      	strb	r0, [r2, r5]
c0de682e:	4660      	mov	r0, ip
c0de6830:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6832:	bf00      	nop
c0de6834:	00001553 	.word	0x00001553

c0de6838 <app_ticker_event_callback>:
c0de6838:	4770      	bx	lr
	...

c0de683c <io_event>:
c0de683c:	b580      	push	{r7, lr}
c0de683e:	480a      	ldr	r0, [pc, #40]	@ (c0de6868 <io_event+0x2c>)
c0de6840:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6844:	290e      	cmp	r1, #14
c0de6846:	d005      	beq.n	c0de6854 <io_event+0x18>
c0de6848:	2905      	cmp	r1, #5
c0de684a:	d108      	bne.n	c0de685e <io_event+0x22>
c0de684c:	4448      	add	r0, r9
c0de684e:	f000 fa05 	bl	c0de6c5c <ux_process_button_event>
c0de6852:	e006      	b.n	c0de6862 <io_event+0x26>
c0de6854:	f7ff fff0 	bl	c0de6838 <app_ticker_event_callback>
c0de6858:	f000 fa44 	bl	c0de6ce4 <ux_process_ticker_event>
c0de685c:	e001      	b.n	c0de6862 <io_event+0x26>
c0de685e:	f000 fa59 	bl	c0de6d14 <ux_process_default_event>
c0de6862:	2001      	movs	r0, #1
c0de6864:	bd80      	pop	{r7, pc}
c0de6866:	bf00      	nop
c0de6868:	000007c4 	.word	0x000007c4

c0de686c <io_init>:
c0de686c:	4802      	ldr	r0, [pc, #8]	@ (c0de6878 <io_init+0xc>)
c0de686e:	2101      	movs	r1, #1
c0de6870:	f809 1000 	strb.w	r1, [r9, r0]
c0de6874:	4770      	bx	lr
c0de6876:	bf00      	nop
c0de6878:	000008d4 	.word	0x000008d4

c0de687c <io_recv_command>:
c0de687c:	b510      	push	{r4, lr}
c0de687e:	4c09      	ldr	r4, [pc, #36]	@ (c0de68a4 <io_recv_command+0x28>)
c0de6880:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6884:	2801      	cmp	r0, #1
c0de6886:	d104      	bne.n	c0de6892 <io_recv_command+0x16>
c0de6888:	f000 fe96 	bl	c0de75b8 <os_io_start>
c0de688c:	2000      	movs	r0, #0
c0de688e:	f809 0004 	strb.w	r0, [r9, r4]
c0de6892:	2000      	movs	r0, #0
c0de6894:	2800      	cmp	r0, #0
c0de6896:	dc03      	bgt.n	c0de68a0 <io_recv_command+0x24>
c0de6898:	2001      	movs	r0, #1
c0de689a:	f7fc fe69 	bl	c0de3570 <io_legacy_apdu_rx>
c0de689e:	e7f9      	b.n	c0de6894 <io_recv_command+0x18>
c0de68a0:	bd10      	pop	{r4, pc}
c0de68a2:	bf00      	nop
c0de68a4:	000008d4 	.word	0x000008d4

c0de68a8 <io_send_response_buffers>:
c0de68a8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de68ac:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6940 <io_send_response_buffers+0x98>
c0de68b0:	4690      	mov	r8, r2
c0de68b2:	460f      	mov	r7, r1
c0de68b4:	4606      	mov	r6, r0
c0de68b6:	f240 140f 	movw	r4, #271	@ 0x10f
c0de68ba:	2500      	movs	r5, #0
c0de68bc:	b1b6      	cbz	r6, c0de68ec <io_send_response_buffers+0x44>
c0de68be:	b1af      	cbz	r7, c0de68ec <io_send_response_buffers+0x44>
c0de68c0:	2500      	movs	r5, #0
c0de68c2:	b19f      	cbz	r7, c0de68ec <io_send_response_buffers+0x44>
c0de68c4:	eb09 000a 	add.w	r0, r9, sl
c0de68c8:	1b62      	subs	r2, r4, r5
c0de68ca:	1941      	adds	r1, r0, r5
c0de68cc:	4630      	mov	r0, r6
c0de68ce:	f7ff fe03 	bl	c0de64d8 <buffer_copy>
c0de68d2:	b130      	cbz	r0, c0de68e2 <io_send_response_buffers+0x3a>
c0de68d4:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de68d8:	360c      	adds	r6, #12
c0de68da:	3f01      	subs	r7, #1
c0de68dc:	4428      	add	r0, r5
c0de68de:	1a45      	subs	r5, r0, r1
c0de68e0:	e7ef      	b.n	c0de68c2 <io_send_response_buffers+0x1a>
c0de68e2:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de68e6:	2600      	movs	r6, #0
c0de68e8:	2700      	movs	r7, #0
c0de68ea:	e7e6      	b.n	c0de68ba <io_send_response_buffers+0x12>
c0de68ec:	fa1f f688 	uxth.w	r6, r8
c0de68f0:	eb09 000a 	add.w	r0, r9, sl
c0de68f4:	4629      	mov	r1, r5
c0de68f6:	4632      	mov	r2, r6
c0de68f8:	f000 f9aa 	bl	c0de6c50 <write_u16_be>
c0de68fc:	4811      	ldr	r0, [pc, #68]	@ (c0de6944 <io_send_response_buffers+0x9c>)
c0de68fe:	1ca9      	adds	r1, r5, #2
c0de6900:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6904:	b118      	cbz	r0, c0de690e <io_send_response_buffers+0x66>
c0de6906:	4810      	ldr	r0, [pc, #64]	@ (c0de6948 <io_send_response_buffers+0xa0>)
c0de6908:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de690c:	b928      	cbnz	r0, c0de691a <io_send_response_buffers+0x72>
c0de690e:	f000 f81f 	bl	c0de6950 <OUTLINED_FUNCTION_0>
c0de6912:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6916:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de691a:	f000 f819 	bl	c0de6950 <OUTLINED_FUNCTION_0>
c0de691e:	2800      	cmp	r0, #0
c0de6920:	d40a      	bmi.n	c0de6938 <io_send_response_buffers+0x90>
c0de6922:	480a      	ldr	r0, [pc, #40]	@ (c0de694c <io_send_response_buffers+0xa4>)
c0de6924:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6928:	fab1 f181 	clz	r1, r1
c0de692c:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6930:	0949      	lsrs	r1, r1, #5
c0de6932:	7001      	strb	r1, [r0, #0]
c0de6934:	f000 fe10 	bl	c0de7558 <os_lib_end>
c0de6938:	20ff      	movs	r0, #255	@ 0xff
c0de693a:	f000 fe29 	bl	c0de7590 <os_sched_exit>
c0de693e:	bf00      	nop
c0de6940:	0000041f 	.word	0x0000041f
c0de6944:	000008e4 	.word	0x000008e4
c0de6948:	000008e5 	.word	0x000008e5
c0de694c:	000008e8 	.word	0x000008e8

c0de6950 <OUTLINED_FUNCTION_0>:
c0de6950:	eb09 000a 	add.w	r0, r9, sl
c0de6954:	b289      	uxth	r1, r1
c0de6956:	f7fc bdf7 	b.w	c0de3548 <io_legacy_apdu_tx>

c0de695a <app_exit>:
c0de695a:	20ff      	movs	r0, #255	@ 0xff
c0de695c:	f000 fe18 	bl	c0de7590 <os_sched_exit>

c0de6960 <common_app_init>:
c0de6960:	b580      	push	{r7, lr}
c0de6962:	f000 fa49 	bl	c0de6df8 <nbgl_objInit>
c0de6966:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de696a:	f7fc bedb 	b.w	c0de3724 <io_seproxyhal_init>
	...

c0de6970 <standalone_app_main>:
c0de6970:	b5b0      	push	{r4, r5, r7, lr}
c0de6972:	b08c      	sub	sp, #48	@ 0x30
c0de6974:	4816      	ldr	r0, [pc, #88]	@ (c0de69d0 <standalone_app_main+0x60>)
c0de6976:	2500      	movs	r5, #0
c0de6978:	466c      	mov	r4, sp
c0de697a:	f809 5000 	strb.w	r5, [r9, r0]
c0de697e:	4815      	ldr	r0, [pc, #84]	@ (c0de69d4 <standalone_app_main+0x64>)
c0de6980:	f849 5000 	str.w	r5, [r9, r0]
c0de6984:	4814      	ldr	r0, [pc, #80]	@ (c0de69d8 <standalone_app_main+0x68>)
c0de6986:	f809 5000 	strb.w	r5, [r9, r0]
c0de698a:	4620      	mov	r0, r4
c0de698c:	f000 ff8a 	bl	c0de78a4 <setjmp>
c0de6990:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6994:	0400      	lsls	r0, r0, #16
c0de6996:	d108      	bne.n	c0de69aa <standalone_app_main+0x3a>
c0de6998:	4668      	mov	r0, sp
c0de699a:	f000 fe37 	bl	c0de760c <try_context_set>
c0de699e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de69a0:	f7ff ffde 	bl	c0de6960 <common_app_init>
c0de69a4:	f7f9 fcc8 	bl	c0de0338 <app_main>
c0de69a8:	e004      	b.n	c0de69b4 <standalone_app_main+0x44>
c0de69aa:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de69ac:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de69b0:	f000 fe2c 	bl	c0de760c <try_context_set>
c0de69b4:	f000 fe22 	bl	c0de75fc <try_context_get>
c0de69b8:	42a0      	cmp	r0, r4
c0de69ba:	d102      	bne.n	c0de69c2 <standalone_app_main+0x52>
c0de69bc:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de69be:	f000 fe25 	bl	c0de760c <try_context_set>
c0de69c2:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de69c6:	b908      	cbnz	r0, c0de69cc <standalone_app_main+0x5c>
c0de69c8:	f7ff ffc7 	bl	c0de695a <app_exit>
c0de69cc:	f000 fa75 	bl	c0de6eba <os_longjmp>
c0de69d0:	000008e4 	.word	0x000008e4
c0de69d4:	000008e8 	.word	0x000008e8
c0de69d8:	000008e5 	.word	0x000008e5

c0de69dc <library_app_main>:
c0de69dc:	b5b0      	push	{r4, r5, r7, lr}
c0de69de:	b08c      	sub	sp, #48	@ 0x30
c0de69e0:	466c      	mov	r4, sp
c0de69e2:	4605      	mov	r5, r0
c0de69e4:	4620      	mov	r0, r4
c0de69e6:	f000 ff5d 	bl	c0de78a4 <setjmp>
c0de69ea:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de69ee:	0400      	lsls	r0, r0, #16
c0de69f0:	d124      	bne.n	c0de6a3c <library_app_main+0x60>
c0de69f2:	4668      	mov	r0, sp
c0de69f4:	f000 fe0a 	bl	c0de760c <try_context_set>
c0de69f8:	900a      	str	r0, [sp, #40]	@ 0x28
c0de69fa:	6868      	ldr	r0, [r5, #4]
c0de69fc:	2804      	cmp	r0, #4
c0de69fe:	d024      	beq.n	c0de6a4a <library_app_main+0x6e>
c0de6a00:	2803      	cmp	r0, #3
c0de6a02:	d026      	beq.n	c0de6a52 <library_app_main+0x76>
c0de6a04:	2802      	cmp	r0, #2
c0de6a06:	d127      	bne.n	c0de6a58 <library_app_main+0x7c>
c0de6a08:	68e8      	ldr	r0, [r5, #12]
c0de6a0a:	f7fa fdfd 	bl	c0de1608 <swap_copy_transaction_parameters>
c0de6a0e:	b318      	cbz	r0, c0de6a58 <library_app_main+0x7c>
c0de6a10:	4816      	ldr	r0, [pc, #88]	@ (c0de6a6c <library_app_main+0x90>)
c0de6a12:	2201      	movs	r2, #1
c0de6a14:	f809 2000 	strb.w	r2, [r9, r0]
c0de6a18:	4815      	ldr	r0, [pc, #84]	@ (c0de6a70 <library_app_main+0x94>)
c0de6a1a:	2200      	movs	r2, #0
c0de6a1c:	f809 2000 	strb.w	r2, [r9, r0]
c0de6a20:	4a14      	ldr	r2, [pc, #80]	@ (c0de6a74 <library_app_main+0x98>)
c0de6a22:	68e8      	ldr	r0, [r5, #12]
c0de6a24:	3020      	adds	r0, #32
c0de6a26:	f849 0002 	str.w	r0, [r9, r2]
c0de6a2a:	f7ff ff99 	bl	c0de6960 <common_app_init>
c0de6a2e:	4812      	ldr	r0, [pc, #72]	@ (c0de6a78 <library_app_main+0x9c>)
c0de6a30:	4478      	add	r0, pc
c0de6a32:	f7fe fc2b 	bl	c0de528c <nbgl_useCaseSpinner>
c0de6a36:	f7f9 fc7f 	bl	c0de0338 <app_main>
c0de6a3a:	e00d      	b.n	c0de6a58 <library_app_main+0x7c>
c0de6a3c:	2000      	movs	r0, #0
c0de6a3e:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6a42:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6a44:	f000 fde2 	bl	c0de760c <try_context_set>
c0de6a48:	e006      	b.n	c0de6a58 <library_app_main+0x7c>
c0de6a4a:	68e8      	ldr	r0, [r5, #12]
c0de6a4c:	f7fa fdb0 	bl	c0de15b0 <swap_handle_get_printable_amount>
c0de6a50:	e002      	b.n	c0de6a58 <library_app_main+0x7c>
c0de6a52:	68e8      	ldr	r0, [r5, #12]
c0de6a54:	f7fa fd51 	bl	c0de14fa <swap_handle_check_address>
c0de6a58:	f000 fdd0 	bl	c0de75fc <try_context_get>
c0de6a5c:	42a0      	cmp	r0, r4
c0de6a5e:	d102      	bne.n	c0de6a66 <library_app_main+0x8a>
c0de6a60:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6a62:	f000 fdd3 	bl	c0de760c <try_context_set>
c0de6a66:	f000 fd77 	bl	c0de7558 <os_lib_end>
c0de6a6a:	bf00      	nop
c0de6a6c:	000008e4 	.word	0x000008e4
c0de6a70:	000008e5 	.word	0x000008e5
c0de6a74:	000008e8 	.word	0x000008e8
c0de6a78:	00001141 	.word	0x00001141

c0de6a7c <apdu_parser>:
c0de6a7c:	2a04      	cmp	r2, #4
c0de6a7e:	d316      	bcc.n	c0de6aae <apdu_parser+0x32>
c0de6a80:	d102      	bne.n	c0de6a88 <apdu_parser+0xc>
c0de6a82:	2300      	movs	r3, #0
c0de6a84:	7103      	strb	r3, [r0, #4]
c0de6a86:	e004      	b.n	c0de6a92 <apdu_parser+0x16>
c0de6a88:	790b      	ldrb	r3, [r1, #4]
c0de6a8a:	3a05      	subs	r2, #5
c0de6a8c:	429a      	cmp	r2, r3
c0de6a8e:	7103      	strb	r3, [r0, #4]
c0de6a90:	d10d      	bne.n	c0de6aae <apdu_parser+0x32>
c0de6a92:	780a      	ldrb	r2, [r1, #0]
c0de6a94:	2b00      	cmp	r3, #0
c0de6a96:	7002      	strb	r2, [r0, #0]
c0de6a98:	784a      	ldrb	r2, [r1, #1]
c0de6a9a:	7042      	strb	r2, [r0, #1]
c0de6a9c:	788a      	ldrb	r2, [r1, #2]
c0de6a9e:	7082      	strb	r2, [r0, #2]
c0de6aa0:	bf18      	it	ne
c0de6aa2:	1d4b      	addne	r3, r1, #5
c0de6aa4:	78c9      	ldrb	r1, [r1, #3]
c0de6aa6:	6083      	str	r3, [r0, #8]
c0de6aa8:	70c1      	strb	r1, [r0, #3]
c0de6aaa:	2001      	movs	r0, #1
c0de6aac:	4770      	bx	lr
c0de6aae:	2000      	movs	r0, #0
c0de6ab0:	4770      	bx	lr

c0de6ab2 <read_u32_be>:
c0de6ab2:	5c42      	ldrb	r2, [r0, r1]
c0de6ab4:	4408      	add	r0, r1
c0de6ab6:	7841      	ldrb	r1, [r0, #1]
c0de6ab8:	7883      	ldrb	r3, [r0, #2]
c0de6aba:	78c0      	ldrb	r0, [r0, #3]
c0de6abc:	0409      	lsls	r1, r1, #16
c0de6abe:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6ac2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6ac6:	4408      	add	r0, r1
c0de6ac8:	4770      	bx	lr

c0de6aca <read_u64_be>:
c0de6aca:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6acc:	1842      	adds	r2, r0, r1
c0de6ace:	5c40      	ldrb	r0, [r0, r1]
c0de6ad0:	7917      	ldrb	r7, [r2, #4]
c0de6ad2:	7953      	ldrb	r3, [r2, #5]
c0de6ad4:	7854      	ldrb	r4, [r2, #1]
c0de6ad6:	7895      	ldrb	r5, [r2, #2]
c0de6ad8:	78d6      	ldrb	r6, [r2, #3]
c0de6ada:	063f      	lsls	r7, r7, #24
c0de6adc:	0421      	lsls	r1, r4, #16
c0de6ade:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6ae2:	7997      	ldrb	r7, [r2, #6]
c0de6ae4:	79d2      	ldrb	r2, [r2, #7]
c0de6ae6:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6aea:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6aee:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6af2:	1981      	adds	r1, r0, r6
c0de6af4:	441a      	add	r2, r3
c0de6af6:	4610      	mov	r0, r2
c0de6af8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6afa <read_u16_le>:
c0de6afa:	5c42      	ldrb	r2, [r0, r1]
c0de6afc:	4408      	add	r0, r1
c0de6afe:	7840      	ldrb	r0, [r0, #1]
c0de6b00:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6b04:	b280      	uxth	r0, r0
c0de6b06:	4770      	bx	lr

c0de6b08 <read_u32_le>:
c0de6b08:	5c42      	ldrb	r2, [r0, r1]
c0de6b0a:	4408      	add	r0, r1
c0de6b0c:	7841      	ldrb	r1, [r0, #1]
c0de6b0e:	7883      	ldrb	r3, [r0, #2]
c0de6b10:	78c0      	ldrb	r0, [r0, #3]
c0de6b12:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6b16:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6b1a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6b1e:	4770      	bx	lr

c0de6b20 <read_u64_le>:
c0de6b20:	b5b0      	push	{r4, r5, r7, lr}
c0de6b22:	5c42      	ldrb	r2, [r0, r1]
c0de6b24:	4401      	add	r1, r0
c0de6b26:	7848      	ldrb	r0, [r1, #1]
c0de6b28:	788b      	ldrb	r3, [r1, #2]
c0de6b2a:	790d      	ldrb	r5, [r1, #4]
c0de6b2c:	78cc      	ldrb	r4, [r1, #3]
c0de6b2e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6b32:	794a      	ldrb	r2, [r1, #5]
c0de6b34:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6b38:	798b      	ldrb	r3, [r1, #6]
c0de6b3a:	79c9      	ldrb	r1, [r1, #7]
c0de6b3c:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6b40:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6b44:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6b48:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6b4c:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b4e <send_swap_error_simple>:
c0de6b4e:	b082      	sub	sp, #8
c0de6b50:	2300      	movs	r3, #0
c0de6b52:	9300      	str	r3, [sp, #0]
c0de6b54:	2300      	movs	r3, #0
c0de6b56:	f000 f801 	bl	c0de6b5c <send_swap_error_with_buffers>
	...

c0de6b5c <send_swap_error_with_buffers>:
c0de6b5c:	b09c      	sub	sp, #112	@ 0x70
c0de6b5e:	4604      	mov	r4, r0
c0de6b60:	4815      	ldr	r0, [pc, #84]	@ (c0de6bb8 <send_swap_error_with_buffers+0x5c>)
c0de6b62:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6b66:	b320      	cbz	r0, c0de6bb2 <send_swap_error_with_buffers+0x56>
c0de6b68:	4814      	ldr	r0, [pc, #80]	@ (c0de6bbc <send_swap_error_with_buffers+0x60>)
c0de6b6a:	461d      	mov	r5, r3
c0de6b6c:	2301      	movs	r3, #1
c0de6b6e:	466e      	mov	r6, sp
c0de6b70:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6b72:	f809 3000 	strb.w	r3, [r9, r0]
c0de6b76:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6b7a:	f106 0008 	add.w	r0, r6, #8
c0de6b7e:	2164      	movs	r1, #100	@ 0x64
c0de6b80:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6b84:	f000 fe4a 	bl	c0de781c <__aeabi_memclr>
c0de6b88:	2002      	movs	r0, #2
c0de6b8a:	4629      	mov	r1, r5
c0de6b8c:	9001      	str	r0, [sp, #4]
c0de6b8e:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6b92:	2f08      	cmp	r7, #8
c0de6b94:	9000      	str	r0, [sp, #0]
c0de6b96:	bf28      	it	cs
c0de6b98:	2708      	movcs	r7, #8
c0de6b9a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6b9e:	0082      	lsls	r2, r0, #2
c0de6ba0:	f106 000c 	add.w	r0, r6, #12
c0de6ba4:	f000 fe30 	bl	c0de7808 <__aeabi_memcpy>
c0de6ba8:	1c79      	adds	r1, r7, #1
c0de6baa:	4630      	mov	r0, r6
c0de6bac:	4622      	mov	r2, r4
c0de6bae:	f7ff fe7b 	bl	c0de68a8 <io_send_response_buffers>
c0de6bb2:	2000      	movs	r0, #0
c0de6bb4:	f000 fcec 	bl	c0de7590 <os_sched_exit>
c0de6bb8:	000008e4 	.word	0x000008e4
c0de6bbc:	000008e5 	.word	0x000008e5

c0de6bc0 <swap_str_to_u64>:
c0de6bc0:	2908      	cmp	r1, #8
c0de6bc2:	d812      	bhi.n	c0de6bea <swap_str_to_u64+0x2a>
c0de6bc4:	b570      	push	{r4, r5, r6, lr}
c0de6bc6:	2500      	movs	r5, #0
c0de6bc8:	460b      	mov	r3, r1
c0de6bca:	2400      	movs	r4, #0
c0de6bcc:	b14b      	cbz	r3, c0de6be2 <swap_str_to_u64+0x22>
c0de6bce:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6bd2:	0224      	lsls	r4, r4, #8
c0de6bd4:	3b01      	subs	r3, #1
c0de6bd6:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6bda:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6bde:	4635      	mov	r5, r6
c0de6be0:	e7f4      	b.n	c0de6bcc <swap_str_to_u64+0xc>
c0de6be2:	e9c2 5400 	strd	r5, r4, [r2]
c0de6be6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6bea:	2000      	movs	r0, #0
c0de6bec:	2909      	cmp	r1, #9
c0de6bee:	bf38      	it	cc
c0de6bf0:	2001      	movcc	r0, #1
c0de6bf2:	4770      	bx	lr

c0de6bf4 <varint_read>:
c0de6bf4:	b510      	push	{r4, lr}
c0de6bf6:	b1d9      	cbz	r1, c0de6c30 <varint_read+0x3c>
c0de6bf8:	4614      	mov	r4, r2
c0de6bfa:	4602      	mov	r2, r0
c0de6bfc:	7800      	ldrb	r0, [r0, #0]
c0de6bfe:	28ff      	cmp	r0, #255	@ 0xff
c0de6c00:	d00c      	beq.n	c0de6c1c <varint_read+0x28>
c0de6c02:	28fe      	cmp	r0, #254	@ 0xfe
c0de6c04:	d012      	beq.n	c0de6c2c <varint_read+0x38>
c0de6c06:	28fd      	cmp	r0, #253	@ 0xfd
c0de6c08:	d115      	bne.n	c0de6c36 <varint_read+0x42>
c0de6c0a:	2903      	cmp	r1, #3
c0de6c0c:	d310      	bcc.n	c0de6c30 <varint_read+0x3c>
c0de6c0e:	4610      	mov	r0, r2
c0de6c10:	2101      	movs	r1, #1
c0de6c12:	f7ff ff72 	bl	c0de6afa <read_u16_le>
c0de6c16:	2100      	movs	r1, #0
c0de6c18:	2203      	movs	r2, #3
c0de6c1a:	e015      	b.n	c0de6c48 <varint_read+0x54>
c0de6c1c:	2909      	cmp	r1, #9
c0de6c1e:	d307      	bcc.n	c0de6c30 <varint_read+0x3c>
c0de6c20:	4610      	mov	r0, r2
c0de6c22:	2101      	movs	r1, #1
c0de6c24:	f7ff ff7c 	bl	c0de6b20 <read_u64_le>
c0de6c28:	2209      	movs	r2, #9
c0de6c2a:	e00d      	b.n	c0de6c48 <varint_read+0x54>
c0de6c2c:	2905      	cmp	r1, #5
c0de6c2e:	d205      	bcs.n	c0de6c3c <varint_read+0x48>
c0de6c30:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6c34:	e00a      	b.n	c0de6c4c <varint_read+0x58>
c0de6c36:	2100      	movs	r1, #0
c0de6c38:	2201      	movs	r2, #1
c0de6c3a:	e005      	b.n	c0de6c48 <varint_read+0x54>
c0de6c3c:	4610      	mov	r0, r2
c0de6c3e:	2101      	movs	r1, #1
c0de6c40:	f7ff ff62 	bl	c0de6b08 <read_u32_le>
c0de6c44:	2100      	movs	r1, #0
c0de6c46:	2205      	movs	r2, #5
c0de6c48:	e9c4 0100 	strd	r0, r1, [r4]
c0de6c4c:	4610      	mov	r0, r2
c0de6c4e:	bd10      	pop	{r4, pc}

c0de6c50 <write_u16_be>:
c0de6c50:	0a13      	lsrs	r3, r2, #8
c0de6c52:	5443      	strb	r3, [r0, r1]
c0de6c54:	4408      	add	r0, r1
c0de6c56:	7042      	strb	r2, [r0, #1]
c0de6c58:	4770      	bx	lr
	...

c0de6c5c <ux_process_button_event>:
c0de6c5c:	b5b0      	push	{r4, r5, r7, lr}
c0de6c5e:	4604      	mov	r4, r0
c0de6c60:	2001      	movs	r0, #1
c0de6c62:	f000 f815 	bl	c0de6c90 <ux_forward_event>
c0de6c66:	4605      	mov	r5, r0
c0de6c68:	f000 f8cb 	bl	c0de6e02 <nbgl_objAllowDrawing>
c0de6c6c:	b165      	cbz	r5, c0de6c88 <ux_process_button_event+0x2c>
c0de6c6e:	4807      	ldr	r0, [pc, #28]	@ (c0de6c8c <ux_process_button_event+0x30>)
c0de6c70:	2164      	movs	r1, #100	@ 0x64
c0de6c72:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6c76:	4341      	muls	r1, r0
c0de6c78:	78e0      	ldrb	r0, [r4, #3]
c0de6c7a:	0840      	lsrs	r0, r0, #1
c0de6c7c:	f000 f90c 	bl	c0de6e98 <nbgl_buttonsHandler>
c0de6c80:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6c84:	f000 b8b3 	b.w	c0de6dee <nbgl_refresh>
c0de6c88:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c8a:	bf00      	nop
c0de6c8c:	000008ec 	.word	0x000008ec

c0de6c90 <ux_forward_event>:
c0de6c90:	b5b0      	push	{r4, r5, r7, lr}
c0de6c92:	4604      	mov	r4, r0
c0de6c94:	4812      	ldr	r0, [pc, #72]	@ (c0de6ce0 <ux_forward_event+0x50>)
c0de6c96:	2101      	movs	r1, #1
c0de6c98:	f809 1000 	strb.w	r1, [r9, r0]
c0de6c9c:	eb09 0500 	add.w	r5, r9, r0
c0de6ca0:	2000      	movs	r0, #0
c0de6ca2:	6068      	str	r0, [r5, #4]
c0de6ca4:	4628      	mov	r0, r5
c0de6ca6:	f000 fc4d 	bl	c0de7544 <os_ux>
c0de6caa:	2004      	movs	r0, #4
c0de6cac:	f000 fcb8 	bl	c0de7620 <os_sched_last_status>
c0de6cb0:	2869      	cmp	r0, #105	@ 0x69
c0de6cb2:	6068      	str	r0, [r5, #4]
c0de6cb4:	d108      	bne.n	c0de6cc8 <ux_forward_event+0x38>
c0de6cb6:	2001      	movs	r0, #1
c0de6cb8:	f000 f8a3 	bl	c0de6e02 <nbgl_objAllowDrawing>
c0de6cbc:	f000 f8b0 	bl	c0de6e20 <nbgl_screenRedraw>
c0de6cc0:	f000 f895 	bl	c0de6dee <nbgl_refresh>
c0de6cc4:	2000      	movs	r0, #0
c0de6cc6:	bdb0      	pop	{r4, r5, r7, pc}
c0de6cc8:	b144      	cbz	r4, c0de6cdc <ux_forward_event+0x4c>
c0de6cca:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6cce:	bf18      	it	ne
c0de6cd0:	2101      	movne	r1, #1
c0de6cd2:	2800      	cmp	r0, #0
c0de6cd4:	bf18      	it	ne
c0de6cd6:	2001      	movne	r0, #1
c0de6cd8:	4008      	ands	r0, r1
c0de6cda:	bdb0      	pop	{r4, r5, r7, pc}
c0de6cdc:	2001      	movs	r0, #1
c0de6cde:	bdb0      	pop	{r4, r5, r7, pc}
c0de6ce0:	000008d8 	.word	0x000008d8

c0de6ce4 <ux_process_ticker_event>:
c0de6ce4:	b510      	push	{r4, lr}
c0de6ce6:	480a      	ldr	r0, [pc, #40]	@ (c0de6d10 <ux_process_ticker_event+0x2c>)
c0de6ce8:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6cec:	3101      	adds	r1, #1
c0de6cee:	f849 1000 	str.w	r1, [r9, r0]
c0de6cf2:	2001      	movs	r0, #1
c0de6cf4:	f7ff ffcc 	bl	c0de6c90 <ux_forward_event>
c0de6cf8:	4604      	mov	r4, r0
c0de6cfa:	f000 f882 	bl	c0de6e02 <nbgl_objAllowDrawing>
c0de6cfe:	b134      	cbz	r4, c0de6d0e <ux_process_ticker_event+0x2a>
c0de6d00:	2064      	movs	r0, #100	@ 0x64
c0de6d02:	f000 f897 	bl	c0de6e34 <nbgl_screenHandler>
c0de6d06:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6d0a:	f000 b870 	b.w	c0de6dee <nbgl_refresh>
c0de6d0e:	bd10      	pop	{r4, pc}
c0de6d10:	000008ec 	.word	0x000008ec

c0de6d14 <ux_process_default_event>:
c0de6d14:	2000      	movs	r0, #0
c0de6d16:	f7ff bfbb 	b.w	c0de6c90 <ux_forward_event>

c0de6d1a <hash_iovec_ex>:
c0de6d1a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6d1e:	468a      	mov	sl, r1
c0de6d20:	4611      	mov	r1, r2
c0de6d22:	461a      	mov	r2, r3
c0de6d24:	4605      	mov	r5, r0
c0de6d26:	f000 f84d 	bl	c0de6dc4 <cx_hash_init_ex>
c0de6d2a:	4607      	mov	r7, r0
c0de6d2c:	b9a8      	cbnz	r0, c0de6d5a <hash_iovec_ex+0x40>
c0de6d2e:	f10d 0820 	add.w	r8, sp, #32
c0de6d32:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6d36:	1d04      	adds	r4, r0, #4
c0de6d38:	b156      	cbz	r6, c0de6d50 <hash_iovec_ex+0x36>
c0de6d3a:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6d3e:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6d42:	4628      	mov	r0, r5
c0de6d44:	f000 f843 	bl	c0de6dce <cx_hash_update>
c0de6d48:	3e01      	subs	r6, #1
c0de6d4a:	2800      	cmp	r0, #0
c0de6d4c:	d0f4      	beq.n	c0de6d38 <hash_iovec_ex+0x1e>
c0de6d4e:	e003      	b.n	c0de6d58 <hash_iovec_ex+0x3e>
c0de6d50:	4628      	mov	r0, r5
c0de6d52:	4641      	mov	r1, r8
c0de6d54:	f000 f831 	bl	c0de6dba <cx_hash_final>
c0de6d58:	4607      	mov	r7, r0
c0de6d5a:	4628      	mov	r0, r5
c0de6d5c:	4651      	mov	r1, sl
c0de6d5e:	f000 fd6b 	bl	c0de7838 <explicit_bzero>
c0de6d62:	4638      	mov	r0, r7
c0de6d64:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6d68 <cx_keccak_256_hash_iovec>:
c0de6d68:	b580      	push	{r7, lr}
c0de6d6a:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6d6c:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6d70:	a804      	add	r0, sp, #16
c0de6d72:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6d76:	2206      	movs	r2, #6
c0de6d78:	2320      	movs	r3, #32
c0de6d7a:	f7ff ffce 	bl	c0de6d1a <hash_iovec_ex>
c0de6d7e:	b06e      	add	sp, #440	@ 0x1b8
c0de6d80:	bd80      	pop	{r7, pc}

c0de6d82 <cx_blake2b_512_hash_iovec>:
c0de6d82:	b580      	push	{r7, lr}
c0de6d84:	b0c4      	sub	sp, #272	@ 0x110
c0de6d86:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6d8a:	a804      	add	r0, sp, #16
c0de6d8c:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6d90:	2209      	movs	r2, #9
c0de6d92:	2340      	movs	r3, #64	@ 0x40
c0de6d94:	f7ff ffc1 	bl	c0de6d1a <hash_iovec_ex>
c0de6d98:	b044      	add	sp, #272	@ 0x110
c0de6d9a:	bd80      	pop	{r7, pc}

c0de6d9c <cx_ecdsa_sign_no_throw>:
c0de6d9c:	b403      	push	{r0, r1}
c0de6d9e:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6da2:	f000 b81d 	b.w	c0de6de0 <cx_trampoline_helper>

c0de6da6 <cx_ecfp_generate_pair2_no_throw>:
c0de6da6:	b403      	push	{r0, r1}
c0de6da8:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6dac:	f000 b818 	b.w	c0de6de0 <cx_trampoline_helper>

c0de6db0 <cx_ecfp_init_private_key_no_throw>:
c0de6db0:	b403      	push	{r0, r1}
c0de6db2:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6db6:	f000 b813 	b.w	c0de6de0 <cx_trampoline_helper>

c0de6dba <cx_hash_final>:
c0de6dba:	b403      	push	{r0, r1}
c0de6dbc:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6dc0:	f000 b80e 	b.w	c0de6de0 <cx_trampoline_helper>

c0de6dc4 <cx_hash_init_ex>:
c0de6dc4:	b403      	push	{r0, r1}
c0de6dc6:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6dca:	f000 b809 	b.w	c0de6de0 <cx_trampoline_helper>

c0de6dce <cx_hash_update>:
c0de6dce:	b403      	push	{r0, r1}
c0de6dd0:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6dd4:	f000 b804 	b.w	c0de6de0 <cx_trampoline_helper>

c0de6dd8 <cx_aes_siv_reset>:
c0de6dd8:	b403      	push	{r0, r1}
c0de6dda:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6dde:	e7ff      	b.n	c0de6de0 <cx_trampoline_helper>

c0de6de0 <cx_trampoline_helper>:
c0de6de0:	4900      	ldr	r1, [pc, #0]	@ (c0de6de4 <cx_trampoline_helper+0x4>)
c0de6de2:	4708      	bx	r1
c0de6de4:	00808001 	.word	0x00808001

c0de6de8 <assert_exit>:
c0de6de8:	20ff      	movs	r0, #255	@ 0xff
c0de6dea:	f000 fbd1 	bl	c0de7590 <os_sched_exit>

c0de6dee <nbgl_refresh>:
c0de6dee:	b403      	push	{r0, r1}
c0de6df0:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6df4:	f000 b85a 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6df8 <nbgl_objInit>:
c0de6df8:	b403      	push	{r0, r1}
c0de6dfa:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6dfe:	f000 b855 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e02 <nbgl_objAllowDrawing>:
c0de6e02:	b403      	push	{r0, r1}
c0de6e04:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6e08:	f000 b850 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e0c <nbgl_screenSet>:
c0de6e0c:	b403      	push	{r0, r1}
c0de6e0e:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6e12:	f000 b84b 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e16 <nbgl_screenPush>:
c0de6e16:	b403      	push	{r0, r1}
c0de6e18:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6e1c:	f000 b846 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e20 <nbgl_screenRedraw>:
c0de6e20:	b403      	push	{r0, r1}
c0de6e22:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6e26:	f000 b841 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e2a <nbgl_screenPop>:
c0de6e2a:	b403      	push	{r0, r1}
c0de6e2c:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6e30:	f000 b83c 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e34 <nbgl_screenHandler>:
c0de6e34:	b403      	push	{r0, r1}
c0de6e36:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6e3a:	f000 b837 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e3e <nbgl_objPoolGet>:
c0de6e3e:	b403      	push	{r0, r1}
c0de6e40:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6e44:	f000 b832 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e48 <nbgl_containerPoolGet>:
c0de6e48:	b403      	push	{r0, r1}
c0de6e4a:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6e4e:	f000 b82d 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e52 <nbgl_getFont>:
c0de6e52:	b403      	push	{r0, r1}
c0de6e54:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6e58:	f000 b828 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e5c <nbgl_getFontLineHeight>:
c0de6e5c:	b403      	push	{r0, r1}
c0de6e5e:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6e62:	f000 b823 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e66 <nbgl_getTextNbLinesInWidth>:
c0de6e66:	b403      	push	{r0, r1}
c0de6e68:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6e6c:	f000 b81e 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e70 <nbgl_getTextNbPagesInWidth>:
c0de6e70:	b403      	push	{r0, r1}
c0de6e72:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6e76:	f000 b819 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e7a <nbgl_getTextWidth>:
c0de6e7a:	b403      	push	{r0, r1}
c0de6e7c:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6e80:	f000 b814 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e84 <nbgl_getTextMaxLenInNbLines>:
c0de6e84:	b403      	push	{r0, r1}
c0de6e86:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6e8a:	f000 b80f 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e8e <nbgl_textReduceOnNbLines>:
c0de6e8e:	b403      	push	{r0, r1}
c0de6e90:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6e94:	f000 b80a 	b.w	c0de6eac <nbgl_trampoline_helper>

c0de6e98 <nbgl_buttonsHandler>:
c0de6e98:	b403      	push	{r0, r1}
c0de6e9a:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6e9e:	f000 b805 	b.w	c0de6eac <nbgl_trampoline_helper>
	...

c0de6ea4 <pic_init>:
c0de6ea4:	b403      	push	{r0, r1}
c0de6ea6:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6eaa:	e7ff      	b.n	c0de6eac <nbgl_trampoline_helper>

c0de6eac <nbgl_trampoline_helper>:
c0de6eac:	4900      	ldr	r1, [pc, #0]	@ (c0de6eb0 <nbgl_trampoline_helper+0x4>)
c0de6eae:	4708      	bx	r1
c0de6eb0:	00808001 	.word	0x00808001

c0de6eb4 <os_boot>:
c0de6eb4:	2000      	movs	r0, #0
c0de6eb6:	f000 bba9 	b.w	c0de760c <try_context_set>

c0de6eba <os_longjmp>:
c0de6eba:	4604      	mov	r4, r0
c0de6ebc:	f000 fb9e 	bl	c0de75fc <try_context_get>
c0de6ec0:	4621      	mov	r1, r4
c0de6ec2:	f000 fcf5 	bl	c0de78b0 <longjmp>
	...

c0de6ec8 <os_explicit_zero_BSS_segment>:
c0de6ec8:	4803      	ldr	r0, [pc, #12]	@ (c0de6ed8 <os_explicit_zero_BSS_segment+0x10>)
c0de6eca:	4904      	ldr	r1, [pc, #16]	@ (c0de6edc <os_explicit_zero_BSS_segment+0x14>)
c0de6ecc:	4448      	add	r0, r9
c0de6ece:	4449      	add	r1, r9
c0de6ed0:	1a09      	subs	r1, r1, r0
c0de6ed2:	f000 bcb1 	b.w	c0de7838 <explicit_bzero>
c0de6ed6:	bf00      	nop
c0de6ed8:	00000000 	.word	0x00000000
c0de6edc:	000008f0 	.word	0x000008f0

c0de6ee0 <snprintf>:
c0de6ee0:	b081      	sub	sp, #4
c0de6ee2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6ee6:	b087      	sub	sp, #28
c0de6ee8:	2800      	cmp	r0, #0
c0de6eea:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6eec:	f000 817a 	beq.w	c0de71e4 <snprintf+0x304>
c0de6ef0:	460d      	mov	r5, r1
c0de6ef2:	2900      	cmp	r1, #0
c0de6ef4:	f000 8176 	beq.w	c0de71e4 <snprintf+0x304>
c0de6ef8:	4629      	mov	r1, r5
c0de6efa:	4616      	mov	r6, r2
c0de6efc:	4604      	mov	r4, r0
c0de6efe:	f000 fc8d 	bl	c0de781c <__aeabi_memclr>
c0de6f02:	f1b5 0801 	subs.w	r8, r5, #1
c0de6f06:	f000 816d 	beq.w	c0de71e4 <snprintf+0x304>
c0de6f0a:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6f0c:	9002      	str	r0, [sp, #8]
c0de6f0e:	7830      	ldrb	r0, [r6, #0]
c0de6f10:	2800      	cmp	r0, #0
c0de6f12:	f000 8167 	beq.w	c0de71e4 <snprintf+0x304>
c0de6f16:	2700      	movs	r7, #0
c0de6f18:	b128      	cbz	r0, c0de6f26 <snprintf+0x46>
c0de6f1a:	2825      	cmp	r0, #37	@ 0x25
c0de6f1c:	d003      	beq.n	c0de6f26 <snprintf+0x46>
c0de6f1e:	19f0      	adds	r0, r6, r7
c0de6f20:	3701      	adds	r7, #1
c0de6f22:	7840      	ldrb	r0, [r0, #1]
c0de6f24:	e7f8      	b.n	c0de6f18 <snprintf+0x38>
c0de6f26:	4547      	cmp	r7, r8
c0de6f28:	bf28      	it	cs
c0de6f2a:	4647      	movcs	r7, r8
c0de6f2c:	4620      	mov	r0, r4
c0de6f2e:	4631      	mov	r1, r6
c0de6f30:	463a      	mov	r2, r7
c0de6f32:	f000 fc6b 	bl	c0de780c <__aeabi_memmove>
c0de6f36:	ebb8 0807 	subs.w	r8, r8, r7
c0de6f3a:	f000 8153 	beq.w	c0de71e4 <snprintf+0x304>
c0de6f3e:	5df1      	ldrb	r1, [r6, r7]
c0de6f40:	19f0      	adds	r0, r6, r7
c0de6f42:	443c      	add	r4, r7
c0de6f44:	4606      	mov	r6, r0
c0de6f46:	2925      	cmp	r1, #37	@ 0x25
c0de6f48:	d1e1      	bne.n	c0de6f0e <snprintf+0x2e>
c0de6f4a:	1c41      	adds	r1, r0, #1
c0de6f4c:	f04f 0b00 	mov.w	fp, #0
c0de6f50:	f04f 0e20 	mov.w	lr, #32
c0de6f54:	2500      	movs	r5, #0
c0de6f56:	2600      	movs	r6, #0
c0de6f58:	3101      	adds	r1, #1
c0de6f5a:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6f5e:	4632      	mov	r2, r6
c0de6f60:	3101      	adds	r1, #1
c0de6f62:	2600      	movs	r6, #0
c0de6f64:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6f66:	d0f8      	beq.n	c0de6f5a <snprintf+0x7a>
c0de6f68:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6f6c:	2e0a      	cmp	r6, #10
c0de6f6e:	d313      	bcc.n	c0de6f98 <snprintf+0xb8>
c0de6f70:	2b25      	cmp	r3, #37	@ 0x25
c0de6f72:	d046      	beq.n	c0de7002 <snprintf+0x122>
c0de6f74:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6f76:	d01f      	beq.n	c0de6fb8 <snprintf+0xd8>
c0de6f78:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6f7a:	d129      	bne.n	c0de6fd0 <snprintf+0xf0>
c0de6f7c:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6f80:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6f82:	d13c      	bne.n	c0de6ffe <snprintf+0x11e>
c0de6f84:	780a      	ldrb	r2, [r1, #0]
c0de6f86:	2a48      	cmp	r2, #72	@ 0x48
c0de6f88:	d003      	beq.n	c0de6f92 <snprintf+0xb2>
c0de6f8a:	2a73      	cmp	r2, #115	@ 0x73
c0de6f8c:	d001      	beq.n	c0de6f92 <snprintf+0xb2>
c0de6f8e:	2a68      	cmp	r2, #104	@ 0x68
c0de6f90:	d135      	bne.n	c0de6ffe <snprintf+0x11e>
c0de6f92:	9a02      	ldr	r2, [sp, #8]
c0de6f94:	2601      	movs	r6, #1
c0de6f96:	e017      	b.n	c0de6fc8 <snprintf+0xe8>
c0de6f98:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6f9c:	ea56 060b 	orrs.w	r6, r6, fp
c0de6fa0:	bf08      	it	eq
c0de6fa2:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6fa6:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6faa:	3901      	subs	r1, #1
c0de6fac:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6fb0:	4616      	mov	r6, r2
c0de6fb2:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6fb6:	e7cf      	b.n	c0de6f58 <snprintf+0x78>
c0de6fb8:	460b      	mov	r3, r1
c0de6fba:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6fbe:	2a73      	cmp	r2, #115	@ 0x73
c0de6fc0:	d11d      	bne.n	c0de6ffe <snprintf+0x11e>
c0de6fc2:	9a02      	ldr	r2, [sp, #8]
c0de6fc4:	2602      	movs	r6, #2
c0de6fc6:	4619      	mov	r1, r3
c0de6fc8:	1d13      	adds	r3, r2, #4
c0de6fca:	9302      	str	r3, [sp, #8]
c0de6fcc:	6815      	ldr	r5, [r2, #0]
c0de6fce:	e7c3      	b.n	c0de6f58 <snprintf+0x78>
c0de6fd0:	2b48      	cmp	r3, #72	@ 0x48
c0de6fd2:	d018      	beq.n	c0de7006 <snprintf+0x126>
c0de6fd4:	2b58      	cmp	r3, #88	@ 0x58
c0de6fd6:	d019      	beq.n	c0de700c <snprintf+0x12c>
c0de6fd8:	2b63      	cmp	r3, #99	@ 0x63
c0de6fda:	d020      	beq.n	c0de701e <snprintf+0x13e>
c0de6fdc:	2b64      	cmp	r3, #100	@ 0x64
c0de6fde:	d02a      	beq.n	c0de7036 <snprintf+0x156>
c0de6fe0:	2b68      	cmp	r3, #104	@ 0x68
c0de6fe2:	d036      	beq.n	c0de7052 <snprintf+0x172>
c0de6fe4:	2b70      	cmp	r3, #112	@ 0x70
c0de6fe6:	d006      	beq.n	c0de6ff6 <snprintf+0x116>
c0de6fe8:	2b73      	cmp	r3, #115	@ 0x73
c0de6fea:	d037      	beq.n	c0de705c <snprintf+0x17c>
c0de6fec:	2b75      	cmp	r3, #117	@ 0x75
c0de6fee:	f000 8081 	beq.w	c0de70f4 <snprintf+0x214>
c0de6ff2:	2b78      	cmp	r3, #120	@ 0x78
c0de6ff4:	d103      	bne.n	c0de6ffe <snprintf+0x11e>
c0de6ff6:	9400      	str	r4, [sp, #0]
c0de6ff8:	f04f 0c00 	mov.w	ip, #0
c0de6ffc:	e009      	b.n	c0de7012 <snprintf+0x132>
c0de6ffe:	1e4e      	subs	r6, r1, #1
c0de7000:	e785      	b.n	c0de6f0e <snprintf+0x2e>
c0de7002:	2025      	movs	r0, #37	@ 0x25
c0de7004:	e00f      	b.n	c0de7026 <snprintf+0x146>
c0de7006:	487b      	ldr	r0, [pc, #492]	@ (c0de71f4 <snprintf+0x314>)
c0de7008:	4478      	add	r0, pc
c0de700a:	e024      	b.n	c0de7056 <snprintf+0x176>
c0de700c:	f04f 0c01 	mov.w	ip, #1
c0de7010:	9400      	str	r4, [sp, #0]
c0de7012:	9a02      	ldr	r2, [sp, #8]
c0de7014:	2400      	movs	r4, #0
c0de7016:	1d13      	adds	r3, r2, #4
c0de7018:	9302      	str	r3, [sp, #8]
c0de701a:	2310      	movs	r3, #16
c0de701c:	e072      	b.n	c0de7104 <snprintf+0x224>
c0de701e:	9802      	ldr	r0, [sp, #8]
c0de7020:	1d02      	adds	r2, r0, #4
c0de7022:	9202      	str	r2, [sp, #8]
c0de7024:	6800      	ldr	r0, [r0, #0]
c0de7026:	1e4e      	subs	r6, r1, #1
c0de7028:	f804 0b01 	strb.w	r0, [r4], #1
c0de702c:	f1b8 0801 	subs.w	r8, r8, #1
c0de7030:	f47f af6d 	bne.w	c0de6f0e <snprintf+0x2e>
c0de7034:	e0d6      	b.n	c0de71e4 <snprintf+0x304>
c0de7036:	9a02      	ldr	r2, [sp, #8]
c0de7038:	9400      	str	r4, [sp, #0]
c0de703a:	1d13      	adds	r3, r2, #4
c0de703c:	9302      	str	r3, [sp, #8]
c0de703e:	6813      	ldr	r3, [r2, #0]
c0de7040:	2b00      	cmp	r3, #0
c0de7042:	461a      	mov	r2, r3
c0de7044:	d500      	bpl.n	c0de7048 <snprintf+0x168>
c0de7046:	425a      	negs	r2, r3
c0de7048:	0fdc      	lsrs	r4, r3, #31
c0de704a:	f04f 0c00 	mov.w	ip, #0
c0de704e:	230a      	movs	r3, #10
c0de7050:	e059      	b.n	c0de7106 <snprintf+0x226>
c0de7052:	4869      	ldr	r0, [pc, #420]	@ (c0de71f8 <snprintf+0x318>)
c0de7054:	4478      	add	r0, pc
c0de7056:	f04f 0c01 	mov.w	ip, #1
c0de705a:	e003      	b.n	c0de7064 <snprintf+0x184>
c0de705c:	4864      	ldr	r0, [pc, #400]	@ (c0de71f0 <snprintf+0x310>)
c0de705e:	f04f 0c00 	mov.w	ip, #0
c0de7062:	4478      	add	r0, pc
c0de7064:	9b02      	ldr	r3, [sp, #8]
c0de7066:	b2d2      	uxtb	r2, r2
c0de7068:	1d1e      	adds	r6, r3, #4
c0de706a:	9602      	str	r6, [sp, #8]
c0de706c:	1e4e      	subs	r6, r1, #1
c0de706e:	6819      	ldr	r1, [r3, #0]
c0de7070:	2a02      	cmp	r2, #2
c0de7072:	f000 80a7 	beq.w	c0de71c4 <snprintf+0x2e4>
c0de7076:	2a01      	cmp	r2, #1
c0de7078:	d007      	beq.n	c0de708a <snprintf+0x1aa>
c0de707a:	463d      	mov	r5, r7
c0de707c:	b92a      	cbnz	r2, c0de708a <snprintf+0x1aa>
c0de707e:	2200      	movs	r2, #0
c0de7080:	5c8b      	ldrb	r3, [r1, r2]
c0de7082:	3201      	adds	r2, #1
c0de7084:	2b00      	cmp	r3, #0
c0de7086:	d1fb      	bne.n	c0de7080 <snprintf+0x1a0>
c0de7088:	1e55      	subs	r5, r2, #1
c0de708a:	f1bc 0f00 	cmp.w	ip, #0
c0de708e:	d016      	beq.n	c0de70be <snprintf+0x1de>
c0de7090:	2d00      	cmp	r5, #0
c0de7092:	f43f af3c 	beq.w	c0de6f0e <snprintf+0x2e>
c0de7096:	f1b8 0f02 	cmp.w	r8, #2
c0de709a:	f0c0 80a3 	bcc.w	c0de71e4 <snprintf+0x304>
c0de709e:	780a      	ldrb	r2, [r1, #0]
c0de70a0:	0913      	lsrs	r3, r2, #4
c0de70a2:	f002 020f 	and.w	r2, r2, #15
c0de70a6:	5cc3      	ldrb	r3, [r0, r3]
c0de70a8:	f1b8 0802 	subs.w	r8, r8, #2
c0de70ac:	7023      	strb	r3, [r4, #0]
c0de70ae:	5c82      	ldrb	r2, [r0, r2]
c0de70b0:	7062      	strb	r2, [r4, #1]
c0de70b2:	f000 8097 	beq.w	c0de71e4 <snprintf+0x304>
c0de70b6:	3101      	adds	r1, #1
c0de70b8:	3d01      	subs	r5, #1
c0de70ba:	3402      	adds	r4, #2
c0de70bc:	e7e8      	b.n	c0de7090 <snprintf+0x1b0>
c0de70be:	4545      	cmp	r5, r8
c0de70c0:	bf28      	it	cs
c0de70c2:	4645      	movcs	r5, r8
c0de70c4:	4620      	mov	r0, r4
c0de70c6:	462a      	mov	r2, r5
c0de70c8:	f000 fba0 	bl	c0de780c <__aeabi_memmove>
c0de70cc:	ebb8 0805 	subs.w	r8, r8, r5
c0de70d0:	f000 8088 	beq.w	c0de71e4 <snprintf+0x304>
c0de70d4:	462f      	mov	r7, r5
c0de70d6:	442c      	add	r4, r5
c0de70d8:	45bb      	cmp	fp, r7
c0de70da:	f67f af18 	bls.w	c0de6f0e <snprintf+0x2e>
c0de70de:	ebab 0507 	sub.w	r5, fp, r7
c0de70e2:	4620      	mov	r0, r4
c0de70e4:	4545      	cmp	r5, r8
c0de70e6:	bf28      	it	cs
c0de70e8:	4645      	movcs	r5, r8
c0de70ea:	4629      	mov	r1, r5
c0de70ec:	2220      	movs	r2, #32
c0de70ee:	f000 fb8f 	bl	c0de7810 <__aeabi_memset>
c0de70f2:	e061      	b.n	c0de71b8 <snprintf+0x2d8>
c0de70f4:	9a02      	ldr	r2, [sp, #8]
c0de70f6:	9400      	str	r4, [sp, #0]
c0de70f8:	2400      	movs	r4, #0
c0de70fa:	f04f 0c00 	mov.w	ip, #0
c0de70fe:	1d13      	adds	r3, r2, #4
c0de7100:	9302      	str	r3, [sp, #8]
c0de7102:	230a      	movs	r3, #10
c0de7104:	6812      	ldr	r2, [r2, #0]
c0de7106:	483d      	ldr	r0, [pc, #244]	@ (c0de71fc <snprintf+0x31c>)
c0de7108:	1e4e      	subs	r6, r1, #1
c0de710a:	f04f 0a01 	mov.w	sl, #1
c0de710e:	4478      	add	r0, pc
c0de7110:	9001      	str	r0, [sp, #4]
c0de7112:	fba3 570a 	umull	r5, r7, r3, sl
c0de7116:	2f00      	cmp	r7, #0
c0de7118:	bf18      	it	ne
c0de711a:	2701      	movne	r7, #1
c0de711c:	4295      	cmp	r5, r2
c0de711e:	d804      	bhi.n	c0de712a <snprintf+0x24a>
c0de7120:	b91f      	cbnz	r7, c0de712a <snprintf+0x24a>
c0de7122:	f1ab 0b01 	sub.w	fp, fp, #1
c0de7126:	46aa      	mov	sl, r5
c0de7128:	e7f3      	b.n	c0de7112 <snprintf+0x232>
c0de712a:	2c00      	cmp	r4, #0
c0de712c:	4627      	mov	r7, r4
c0de712e:	f04f 0500 	mov.w	r5, #0
c0de7132:	bf18      	it	ne
c0de7134:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de7138:	d00d      	beq.n	c0de7156 <snprintf+0x276>
c0de713a:	4660      	mov	r0, ip
c0de713c:	fa5f fc8e 	uxtb.w	ip, lr
c0de7140:	a903      	add	r1, sp, #12
c0de7142:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de7146:	4684      	mov	ip, r0
c0de7148:	d106      	bne.n	c0de7158 <snprintf+0x278>
c0de714a:	202d      	movs	r0, #45	@ 0x2d
c0de714c:	2400      	movs	r4, #0
c0de714e:	2501      	movs	r5, #1
c0de7150:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7154:	e000      	b.n	c0de7158 <snprintf+0x278>
c0de7156:	a903      	add	r1, sp, #12
c0de7158:	eb07 000b 	add.w	r0, r7, fp
c0de715c:	3802      	subs	r0, #2
c0de715e:	280d      	cmp	r0, #13
c0de7160:	d808      	bhi.n	c0de7174 <snprintf+0x294>
c0de7162:	f1c7 0701 	rsb	r7, r7, #1
c0de7166:	45bb      	cmp	fp, r7
c0de7168:	d004      	beq.n	c0de7174 <snprintf+0x294>
c0de716a:	f801 e005 	strb.w	lr, [r1, r5]
c0de716e:	3701      	adds	r7, #1
c0de7170:	3501      	adds	r5, #1
c0de7172:	e7f8      	b.n	c0de7166 <snprintf+0x286>
c0de7174:	9f01      	ldr	r7, [sp, #4]
c0de7176:	b114      	cbz	r4, c0de717e <snprintf+0x29e>
c0de7178:	202d      	movs	r0, #45	@ 0x2d
c0de717a:	5548      	strb	r0, [r1, r5]
c0de717c:	3501      	adds	r5, #1
c0de717e:	4820      	ldr	r0, [pc, #128]	@ (c0de7200 <snprintf+0x320>)
c0de7180:	f1bc 0f00 	cmp.w	ip, #0
c0de7184:	4478      	add	r0, pc
c0de7186:	bf08      	it	eq
c0de7188:	4638      	moveq	r0, r7
c0de718a:	f1ba 0f00 	cmp.w	sl, #0
c0de718e:	d00b      	beq.n	c0de71a8 <snprintf+0x2c8>
c0de7190:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7194:	fbba faf3 	udiv	sl, sl, r3
c0de7198:	fbb7 f4f3 	udiv	r4, r7, r3
c0de719c:	fb04 7413 	mls	r4, r4, r3, r7
c0de71a0:	5d04      	ldrb	r4, [r0, r4]
c0de71a2:	554c      	strb	r4, [r1, r5]
c0de71a4:	3501      	adds	r5, #1
c0de71a6:	e7f0      	b.n	c0de718a <snprintf+0x2aa>
c0de71a8:	4545      	cmp	r5, r8
c0de71aa:	bf28      	it	cs
c0de71ac:	4645      	movcs	r5, r8
c0de71ae:	9c00      	ldr	r4, [sp, #0]
c0de71b0:	462a      	mov	r2, r5
c0de71b2:	4620      	mov	r0, r4
c0de71b4:	f000 fb2a 	bl	c0de780c <__aeabi_memmove>
c0de71b8:	ebb8 0805 	subs.w	r8, r8, r5
c0de71bc:	442c      	add	r4, r5
c0de71be:	f47f aea6 	bne.w	c0de6f0e <snprintf+0x2e>
c0de71c2:	e00f      	b.n	c0de71e4 <snprintf+0x304>
c0de71c4:	7808      	ldrb	r0, [r1, #0]
c0de71c6:	2800      	cmp	r0, #0
c0de71c8:	f47f aea1 	bne.w	c0de6f0e <snprintf+0x2e>
c0de71cc:	4545      	cmp	r5, r8
c0de71ce:	bf28      	it	cs
c0de71d0:	4645      	movcs	r5, r8
c0de71d2:	4620      	mov	r0, r4
c0de71d4:	4629      	mov	r1, r5
c0de71d6:	2220      	movs	r2, #32
c0de71d8:	f000 fb1a 	bl	c0de7810 <__aeabi_memset>
c0de71dc:	ebb8 0805 	subs.w	r8, r8, r5
c0de71e0:	f47f af79 	bne.w	c0de70d6 <snprintf+0x1f6>
c0de71e4:	2000      	movs	r0, #0
c0de71e6:	b007      	add	sp, #28
c0de71e8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de71ec:	b001      	add	sp, #4
c0de71ee:	4770      	bx	lr
c0de71f0:	00001c4e 	.word	0x00001c4e
c0de71f4:	00001cb8 	.word	0x00001cb8
c0de71f8:	00001c5c 	.word	0x00001c5c
c0de71fc:	00001ba2 	.word	0x00001ba2
c0de7200:	00001b3c 	.word	0x00001b3c

c0de7204 <pic>:
c0de7204:	4a0a      	ldr	r2, [pc, #40]	@ (c0de7230 <pic+0x2c>)
c0de7206:	4282      	cmp	r2, r0
c0de7208:	490a      	ldr	r1, [pc, #40]	@ (c0de7234 <pic+0x30>)
c0de720a:	d806      	bhi.n	c0de721a <pic+0x16>
c0de720c:	4281      	cmp	r1, r0
c0de720e:	d304      	bcc.n	c0de721a <pic+0x16>
c0de7210:	b580      	push	{r7, lr}
c0de7212:	f000 f815 	bl	c0de7240 <pic_internal>
c0de7216:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de721a:	4907      	ldr	r1, [pc, #28]	@ (c0de7238 <pic+0x34>)
c0de721c:	4288      	cmp	r0, r1
c0de721e:	4a07      	ldr	r2, [pc, #28]	@ (c0de723c <pic+0x38>)
c0de7220:	d304      	bcc.n	c0de722c <pic+0x28>
c0de7222:	4290      	cmp	r0, r2
c0de7224:	d802      	bhi.n	c0de722c <pic+0x28>
c0de7226:	1a40      	subs	r0, r0, r1
c0de7228:	4649      	mov	r1, r9
c0de722a:	4408      	add	r0, r1
c0de722c:	4770      	bx	lr
c0de722e:	0000      	movs	r0, r0
c0de7230:	c0de0000 	.word	0xc0de0000
c0de7234:	c0de903f 	.word	0xc0de903f
c0de7238:	da7a0000 	.word	0xda7a0000
c0de723c:	da7aa000 	.word	0xda7aa000

c0de7240 <pic_internal>:
c0de7240:	467a      	mov	r2, pc
c0de7242:	4902      	ldr	r1, [pc, #8]	@ (c0de724c <pic_internal+0xc>)
c0de7244:	1cc9      	adds	r1, r1, #3
c0de7246:	1a89      	subs	r1, r1, r2
c0de7248:	1a40      	subs	r0, r0, r1
c0de724a:	4770      	bx	lr
c0de724c:	c0de7241 	.word	0xc0de7241

c0de7250 <SVC_Call>:
c0de7250:	df01      	svc	1
c0de7252:	2900      	cmp	r1, #0
c0de7254:	d100      	bne.n	c0de7258 <exception>
c0de7256:	4770      	bx	lr

c0de7258 <exception>:
c0de7258:	4608      	mov	r0, r1
c0de725a:	f7ff fe2e 	bl	c0de6eba <os_longjmp>
	...

c0de7260 <SVC_cx_call>:
c0de7260:	df01      	svc	1
c0de7262:	4770      	bx	lr

c0de7264 <nvm_write>:
c0de7264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7266:	ab01      	add	r3, sp, #4
c0de7268:	c307      	stmia	r3!, {r0, r1, r2}
c0de726a:	4802      	ldr	r0, [pc, #8]	@ (c0de7274 <nvm_write+0x10>)
c0de726c:	a901      	add	r1, sp, #4
c0de726e:	f7ff ffef 	bl	c0de7250 <SVC_Call>
c0de7272:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7274:	03000003 	.word	0x03000003

c0de7278 <cx_bn_lock>:
c0de7278:	b5e0      	push	{r5, r6, r7, lr}
c0de727a:	e9cd 0100 	strd	r0, r1, [sp]
c0de727e:	4802      	ldr	r0, [pc, #8]	@ (c0de7288 <cx_bn_lock+0x10>)
c0de7280:	4669      	mov	r1, sp
c0de7282:	f7ff ffed 	bl	c0de7260 <SVC_cx_call>
c0de7286:	bd8c      	pop	{r2, r3, r7, pc}
c0de7288:	02000112 	.word	0x02000112

c0de728c <cx_bn_unlock>:
c0de728c:	b5e0      	push	{r5, r6, r7, lr}
c0de728e:	2000      	movs	r0, #0
c0de7290:	4669      	mov	r1, sp
c0de7292:	9001      	str	r0, [sp, #4]
c0de7294:	20b6      	movs	r0, #182	@ 0xb6
c0de7296:	f7ff ffe3 	bl	c0de7260 <SVC_cx_call>
c0de729a:	bd8c      	pop	{r2, r3, r7, pc}

c0de729c <cx_bn_alloc>:
c0de729c:	b5e0      	push	{r5, r6, r7, lr}
c0de729e:	e9cd 0100 	strd	r0, r1, [sp]
c0de72a2:	4802      	ldr	r0, [pc, #8]	@ (c0de72ac <cx_bn_alloc+0x10>)
c0de72a4:	4669      	mov	r1, sp
c0de72a6:	f7ff ffdb 	bl	c0de7260 <SVC_cx_call>
c0de72aa:	bd8c      	pop	{r2, r3, r7, pc}
c0de72ac:	02000113 	.word	0x02000113

c0de72b0 <cx_bn_alloc_init>:
c0de72b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72b2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de72b6:	4803      	ldr	r0, [pc, #12]	@ (c0de72c4 <cx_bn_alloc_init+0x14>)
c0de72b8:	4669      	mov	r1, sp
c0de72ba:	f7ff ffd1 	bl	c0de7260 <SVC_cx_call>
c0de72be:	b004      	add	sp, #16
c0de72c0:	bd80      	pop	{r7, pc}
c0de72c2:	bf00      	nop
c0de72c4:	04000114 	.word	0x04000114

c0de72c8 <cx_bn_destroy>:
c0de72c8:	b5e0      	push	{r5, r6, r7, lr}
c0de72ca:	f000 f9b5 	bl	c0de7638 <OUTLINED_FUNCTION_0>
c0de72ce:	4802      	ldr	r0, [pc, #8]	@ (c0de72d8 <cx_bn_destroy+0x10>)
c0de72d0:	4669      	mov	r1, sp
c0de72d2:	f7ff ffc5 	bl	c0de7260 <SVC_cx_call>
c0de72d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de72d8:	010000bc 	.word	0x010000bc

c0de72dc <cx_bn_nbytes>:
c0de72dc:	b5e0      	push	{r5, r6, r7, lr}
c0de72de:	e9cd 0100 	strd	r0, r1, [sp]
c0de72e2:	4802      	ldr	r0, [pc, #8]	@ (c0de72ec <cx_bn_nbytes+0x10>)
c0de72e4:	4669      	mov	r1, sp
c0de72e6:	f7ff ffbb 	bl	c0de7260 <SVC_cx_call>
c0de72ea:	bd8c      	pop	{r2, r3, r7, pc}
c0de72ec:	0200010d 	.word	0x0200010d

c0de72f0 <cx_bn_init>:
c0de72f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72f2:	ab01      	add	r3, sp, #4
c0de72f4:	c307      	stmia	r3!, {r0, r1, r2}
c0de72f6:	4803      	ldr	r0, [pc, #12]	@ (c0de7304 <cx_bn_init+0x14>)
c0de72f8:	a901      	add	r1, sp, #4
c0de72fa:	f7ff ffb1 	bl	c0de7260 <SVC_cx_call>
c0de72fe:	b004      	add	sp, #16
c0de7300:	bd80      	pop	{r7, pc}
c0de7302:	bf00      	nop
c0de7304:	03000115 	.word	0x03000115

c0de7308 <cx_bn_copy>:
c0de7308:	b5e0      	push	{r5, r6, r7, lr}
c0de730a:	e9cd 0100 	strd	r0, r1, [sp]
c0de730e:	4802      	ldr	r0, [pc, #8]	@ (c0de7318 <cx_bn_copy+0x10>)
c0de7310:	4669      	mov	r1, sp
c0de7312:	f7ff ffa5 	bl	c0de7260 <SVC_cx_call>
c0de7316:	bd8c      	pop	{r2, r3, r7, pc}
c0de7318:	020000c0 	.word	0x020000c0

c0de731c <cx_bn_set_u32>:
c0de731c:	b5e0      	push	{r5, r6, r7, lr}
c0de731e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7322:	4802      	ldr	r0, [pc, #8]	@ (c0de732c <cx_bn_set_u32+0x10>)
c0de7324:	4669      	mov	r1, sp
c0de7326:	f7ff ff9b 	bl	c0de7260 <SVC_cx_call>
c0de732a:	bd8c      	pop	{r2, r3, r7, pc}
c0de732c:	020000c1 	.word	0x020000c1

c0de7330 <cx_bn_export>:
c0de7330:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7332:	ab01      	add	r3, sp, #4
c0de7334:	c307      	stmia	r3!, {r0, r1, r2}
c0de7336:	4803      	ldr	r0, [pc, #12]	@ (c0de7344 <cx_bn_export+0x14>)
c0de7338:	a901      	add	r1, sp, #4
c0de733a:	f7ff ff91 	bl	c0de7260 <SVC_cx_call>
c0de733e:	b004      	add	sp, #16
c0de7340:	bd80      	pop	{r7, pc}
c0de7342:	bf00      	nop
c0de7344:	030000c3 	.word	0x030000c3

c0de7348 <cx_bn_cmp>:
c0de7348:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de734a:	ab01      	add	r3, sp, #4
c0de734c:	c307      	stmia	r3!, {r0, r1, r2}
c0de734e:	4803      	ldr	r0, [pc, #12]	@ (c0de735c <cx_bn_cmp+0x14>)
c0de7350:	a901      	add	r1, sp, #4
c0de7352:	f7ff ff85 	bl	c0de7260 <SVC_cx_call>
c0de7356:	b004      	add	sp, #16
c0de7358:	bd80      	pop	{r7, pc}
c0de735a:	bf00      	nop
c0de735c:	030000c4 	.word	0x030000c4

c0de7360 <cx_bn_cmp_u32>:
c0de7360:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7362:	ab01      	add	r3, sp, #4
c0de7364:	c307      	stmia	r3!, {r0, r1, r2}
c0de7366:	4803      	ldr	r0, [pc, #12]	@ (c0de7374 <cx_bn_cmp_u32+0x14>)
c0de7368:	a901      	add	r1, sp, #4
c0de736a:	f7ff ff79 	bl	c0de7260 <SVC_cx_call>
c0de736e:	b004      	add	sp, #16
c0de7370:	bd80      	pop	{r7, pc}
c0de7372:	bf00      	nop
c0de7374:	030000c5 	.word	0x030000c5

c0de7378 <cx_bn_tst_bit>:
c0de7378:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de737a:	ab01      	add	r3, sp, #4
c0de737c:	c307      	stmia	r3!, {r0, r1, r2}
c0de737e:	4803      	ldr	r0, [pc, #12]	@ (c0de738c <cx_bn_tst_bit+0x14>)
c0de7380:	a901      	add	r1, sp, #4
c0de7382:	f7ff ff6d 	bl	c0de7260 <SVC_cx_call>
c0de7386:	b004      	add	sp, #16
c0de7388:	bd80      	pop	{r7, pc}
c0de738a:	bf00      	nop
c0de738c:	030000cb 	.word	0x030000cb

c0de7390 <cx_bn_mod_add>:
c0de7390:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7392:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7396:	4803      	ldr	r0, [pc, #12]	@ (c0de73a4 <cx_bn_mod_add+0x14>)
c0de7398:	4669      	mov	r1, sp
c0de739a:	f7ff ff61 	bl	c0de7260 <SVC_cx_call>
c0de739e:	b004      	add	sp, #16
c0de73a0:	bd80      	pop	{r7, pc}
c0de73a2:	bf00      	nop
c0de73a4:	040000d3 	.word	0x040000d3

c0de73a8 <cx_bn_mod_sub>:
c0de73a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73aa:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de73ae:	4803      	ldr	r0, [pc, #12]	@ (c0de73bc <cx_bn_mod_sub+0x14>)
c0de73b0:	4669      	mov	r1, sp
c0de73b2:	f7ff ff55 	bl	c0de7260 <SVC_cx_call>
c0de73b6:	b004      	add	sp, #16
c0de73b8:	bd80      	pop	{r7, pc}
c0de73ba:	bf00      	nop
c0de73bc:	040000d4 	.word	0x040000d4

c0de73c0 <cx_bn_mod_mul>:
c0de73c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73c2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de73c6:	4803      	ldr	r0, [pc, #12]	@ (c0de73d4 <cx_bn_mod_mul+0x14>)
c0de73c8:	4669      	mov	r1, sp
c0de73ca:	f7ff ff49 	bl	c0de7260 <SVC_cx_call>
c0de73ce:	b004      	add	sp, #16
c0de73d0:	bd80      	pop	{r7, pc}
c0de73d2:	bf00      	nop
c0de73d4:	040000d5 	.word	0x040000d5

c0de73d8 <cx_bn_reduce>:
c0de73d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73da:	ab01      	add	r3, sp, #4
c0de73dc:	c307      	stmia	r3!, {r0, r1, r2}
c0de73de:	4803      	ldr	r0, [pc, #12]	@ (c0de73ec <cx_bn_reduce+0x14>)
c0de73e0:	a901      	add	r1, sp, #4
c0de73e2:	f7ff ff3d 	bl	c0de7260 <SVC_cx_call>
c0de73e6:	b004      	add	sp, #16
c0de73e8:	bd80      	pop	{r7, pc}
c0de73ea:	bf00      	nop
c0de73ec:	030000d6 	.word	0x030000d6

c0de73f0 <cx_bn_mod_invert_nprime>:
c0de73f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73f2:	ab01      	add	r3, sp, #4
c0de73f4:	c307      	stmia	r3!, {r0, r1, r2}
c0de73f6:	4803      	ldr	r0, [pc, #12]	@ (c0de7404 <cx_bn_mod_invert_nprime+0x14>)
c0de73f8:	a901      	add	r1, sp, #4
c0de73fa:	f7ff ff31 	bl	c0de7260 <SVC_cx_call>
c0de73fe:	b004      	add	sp, #16
c0de7400:	bd80      	pop	{r7, pc}
c0de7402:	bf00      	nop
c0de7404:	030000da 	.word	0x030000da

c0de7408 <cx_bn_is_prime>:
c0de7408:	b5e0      	push	{r5, r6, r7, lr}
c0de740a:	e9cd 0100 	strd	r0, r1, [sp]
c0de740e:	4802      	ldr	r0, [pc, #8]	@ (c0de7418 <cx_bn_is_prime+0x10>)
c0de7410:	4669      	mov	r1, sp
c0de7412:	f7ff ff25 	bl	c0de7260 <SVC_cx_call>
c0de7416:	bd8c      	pop	{r2, r3, r7, pc}
c0de7418:	020000ef 	.word	0x020000ef

c0de741c <cx_mont_alloc>:
c0de741c:	b5e0      	push	{r5, r6, r7, lr}
c0de741e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7422:	4802      	ldr	r0, [pc, #8]	@ (c0de742c <cx_mont_alloc+0x10>)
c0de7424:	4669      	mov	r1, sp
c0de7426:	f7ff ff1b 	bl	c0de7260 <SVC_cx_call>
c0de742a:	bd8c      	pop	{r2, r3, r7, pc}
c0de742c:	020000dc 	.word	0x020000dc

c0de7430 <cx_mont_init>:
c0de7430:	b5e0      	push	{r5, r6, r7, lr}
c0de7432:	e9cd 0100 	strd	r0, r1, [sp]
c0de7436:	4802      	ldr	r0, [pc, #8]	@ (c0de7440 <cx_mont_init+0x10>)
c0de7438:	4669      	mov	r1, sp
c0de743a:	f7ff ff11 	bl	c0de7260 <SVC_cx_call>
c0de743e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7440:	020000dd 	.word	0x020000dd

c0de7444 <cx_mont_to_montgomery>:
c0de7444:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7446:	ab01      	add	r3, sp, #4
c0de7448:	c307      	stmia	r3!, {r0, r1, r2}
c0de744a:	4803      	ldr	r0, [pc, #12]	@ (c0de7458 <cx_mont_to_montgomery+0x14>)
c0de744c:	a901      	add	r1, sp, #4
c0de744e:	f7ff ff07 	bl	c0de7260 <SVC_cx_call>
c0de7452:	b004      	add	sp, #16
c0de7454:	bd80      	pop	{r7, pc}
c0de7456:	bf00      	nop
c0de7458:	030000df 	.word	0x030000df

c0de745c <cx_mont_from_montgomery>:
c0de745c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de745e:	ab01      	add	r3, sp, #4
c0de7460:	c307      	stmia	r3!, {r0, r1, r2}
c0de7462:	4803      	ldr	r0, [pc, #12]	@ (c0de7470 <cx_mont_from_montgomery+0x14>)
c0de7464:	a901      	add	r1, sp, #4
c0de7466:	f7ff fefb 	bl	c0de7260 <SVC_cx_call>
c0de746a:	b004      	add	sp, #16
c0de746c:	bd80      	pop	{r7, pc}
c0de746e:	bf00      	nop
c0de7470:	030000e0 	.word	0x030000e0

c0de7474 <cx_mont_mul>:
c0de7474:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7476:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de747a:	4803      	ldr	r0, [pc, #12]	@ (c0de7488 <cx_mont_mul+0x14>)
c0de747c:	4669      	mov	r1, sp
c0de747e:	f7ff feef 	bl	c0de7260 <SVC_cx_call>
c0de7482:	b004      	add	sp, #16
c0de7484:	bd80      	pop	{r7, pc}
c0de7486:	bf00      	nop
c0de7488:	040000e1 	.word	0x040000e1

c0de748c <cx_mont_pow>:
c0de748c:	b510      	push	{r4, lr}
c0de748e:	b086      	sub	sp, #24
c0de7490:	f10d 0c04 	add.w	ip, sp, #4
c0de7494:	9c08      	ldr	r4, [sp, #32]
c0de7496:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de749a:	4803      	ldr	r0, [pc, #12]	@ (c0de74a8 <cx_mont_pow+0x1c>)
c0de749c:	a901      	add	r1, sp, #4
c0de749e:	f7ff fedf 	bl	c0de7260 <SVC_cx_call>
c0de74a2:	b006      	add	sp, #24
c0de74a4:	bd10      	pop	{r4, pc}
c0de74a6:	bf00      	nop
c0de74a8:	050000e2 	.word	0x050000e2

c0de74ac <cx_mont_invert_nprime>:
c0de74ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74ae:	ab01      	add	r3, sp, #4
c0de74b0:	c307      	stmia	r3!, {r0, r1, r2}
c0de74b2:	4803      	ldr	r0, [pc, #12]	@ (c0de74c0 <cx_mont_invert_nprime+0x14>)
c0de74b4:	a901      	add	r1, sp, #4
c0de74b6:	f7ff fed3 	bl	c0de7260 <SVC_cx_call>
c0de74ba:	b004      	add	sp, #16
c0de74bc:	bd80      	pop	{r7, pc}
c0de74be:	bf00      	nop
c0de74c0:	030000e4 	.word	0x030000e4

c0de74c4 <cx_ecdomain_parameters_length>:
c0de74c4:	b5e0      	push	{r5, r6, r7, lr}
c0de74c6:	e9cd 0100 	strd	r0, r1, [sp]
c0de74ca:	4802      	ldr	r0, [pc, #8]	@ (c0de74d4 <cx_ecdomain_parameters_length+0x10>)
c0de74cc:	4669      	mov	r1, sp
c0de74ce:	f7ff fec7 	bl	c0de7260 <SVC_cx_call>
c0de74d2:	bd8c      	pop	{r2, r3, r7, pc}
c0de74d4:	0200012f 	.word	0x0200012f

c0de74d8 <os_perso_derive_node_with_seed_key>:
c0de74d8:	b510      	push	{r4, lr}
c0de74da:	b088      	sub	sp, #32
c0de74dc:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de74de:	9407      	str	r4, [sp, #28]
c0de74e0:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de74e2:	9406      	str	r4, [sp, #24]
c0de74e4:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de74e6:	9405      	str	r4, [sp, #20]
c0de74e8:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de74ea:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de74ee:	4803      	ldr	r0, [pc, #12]	@ (c0de74fc <os_perso_derive_node_with_seed_key+0x24>)
c0de74f0:	4669      	mov	r1, sp
c0de74f2:	f7ff fead 	bl	c0de7250 <SVC_Call>
c0de74f6:	b008      	add	sp, #32
c0de74f8:	bd10      	pop	{r4, pc}
c0de74fa:	bf00      	nop
c0de74fc:	080000a6 	.word	0x080000a6

c0de7500 <os_pki_load_certificate>:
c0de7500:	b510      	push	{r4, lr}
c0de7502:	b086      	sub	sp, #24
c0de7504:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7506:	9405      	str	r4, [sp, #20]
c0de7508:	9c08      	ldr	r4, [sp, #32]
c0de750a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de750e:	4803      	ldr	r0, [pc, #12]	@ (c0de751c <os_pki_load_certificate+0x1c>)
c0de7510:	4669      	mov	r1, sp
c0de7512:	f7ff fe9d 	bl	c0de7250 <SVC_Call>
c0de7516:	b006      	add	sp, #24
c0de7518:	bd10      	pop	{r4, pc}
c0de751a:	bf00      	nop
c0de751c:	060000aa 	.word	0x060000aa

c0de7520 <os_perso_is_pin_set>:
c0de7520:	b5e0      	push	{r5, r6, r7, lr}
c0de7522:	2000      	movs	r0, #0
c0de7524:	4669      	mov	r1, sp
c0de7526:	9001      	str	r0, [sp, #4]
c0de7528:	209e      	movs	r0, #158	@ 0x9e
c0de752a:	f7ff fe91 	bl	c0de7250 <SVC_Call>
c0de752e:	b2c0      	uxtb	r0, r0
c0de7530:	bd8c      	pop	{r2, r3, r7, pc}

c0de7532 <os_global_pin_is_validated>:
c0de7532:	b5e0      	push	{r5, r6, r7, lr}
c0de7534:	2000      	movs	r0, #0
c0de7536:	4669      	mov	r1, sp
c0de7538:	9001      	str	r0, [sp, #4]
c0de753a:	20a0      	movs	r0, #160	@ 0xa0
c0de753c:	f7ff fe88 	bl	c0de7250 <SVC_Call>
c0de7540:	b2c0      	uxtb	r0, r0
c0de7542:	bd8c      	pop	{r2, r3, r7, pc}

c0de7544 <os_ux>:
c0de7544:	b5e0      	push	{r5, r6, r7, lr}
c0de7546:	f000 f877 	bl	c0de7638 <OUTLINED_FUNCTION_0>
c0de754a:	4802      	ldr	r0, [pc, #8]	@ (c0de7554 <os_ux+0x10>)
c0de754c:	4669      	mov	r1, sp
c0de754e:	f7ff fe7f 	bl	c0de7250 <SVC_Call>
c0de7552:	bd8c      	pop	{r2, r3, r7, pc}
c0de7554:	01000064 	.word	0x01000064

c0de7558 <os_lib_end>:
c0de7558:	b082      	sub	sp, #8
c0de755a:	2000      	movs	r0, #0
c0de755c:	4669      	mov	r1, sp
c0de755e:	9001      	str	r0, [sp, #4]
c0de7560:	2068      	movs	r0, #104	@ 0x68
c0de7562:	f7ff fe75 	bl	c0de7250 <SVC_Call>
c0de7566:	deff      	udf	#255	@ 0xff

c0de7568 <os_flags>:
c0de7568:	b5e0      	push	{r5, r6, r7, lr}
c0de756a:	2000      	movs	r0, #0
c0de756c:	4669      	mov	r1, sp
c0de756e:	9001      	str	r0, [sp, #4]
c0de7570:	206a      	movs	r0, #106	@ 0x6a
c0de7572:	f7ff fe6d 	bl	c0de7250 <SVC_Call>
c0de7576:	bd8c      	pop	{r2, r3, r7, pc}

c0de7578 <os_registry_get_current_app_tag>:
c0de7578:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de757a:	ab01      	add	r3, sp, #4
c0de757c:	c307      	stmia	r3!, {r0, r1, r2}
c0de757e:	4803      	ldr	r0, [pc, #12]	@ (c0de758c <os_registry_get_current_app_tag+0x14>)
c0de7580:	a901      	add	r1, sp, #4
c0de7582:	f7ff fe65 	bl	c0de7250 <SVC_Call>
c0de7586:	b004      	add	sp, #16
c0de7588:	bd80      	pop	{r7, pc}
c0de758a:	bf00      	nop
c0de758c:	03000074 	.word	0x03000074

c0de7590 <os_sched_exit>:
c0de7590:	b082      	sub	sp, #8
c0de7592:	f000 f851 	bl	c0de7638 <OUTLINED_FUNCTION_0>
c0de7596:	4802      	ldr	r0, [pc, #8]	@ (c0de75a0 <os_sched_exit+0x10>)
c0de7598:	4669      	mov	r1, sp
c0de759a:	f7ff fe59 	bl	c0de7250 <SVC_Call>
c0de759e:	deff      	udf	#255	@ 0xff
c0de75a0:	0100009a 	.word	0x0100009a

c0de75a4 <os_io_init>:
c0de75a4:	b5e0      	push	{r5, r6, r7, lr}
c0de75a6:	9001      	str	r0, [sp, #4]
c0de75a8:	4802      	ldr	r0, [pc, #8]	@ (c0de75b4 <os_io_init+0x10>)
c0de75aa:	a901      	add	r1, sp, #4
c0de75ac:	f7ff fe50 	bl	c0de7250 <SVC_Call>
c0de75b0:	bd8c      	pop	{r2, r3, r7, pc}
c0de75b2:	bf00      	nop
c0de75b4:	01000084 	.word	0x01000084

c0de75b8 <os_io_start>:
c0de75b8:	b5e0      	push	{r5, r6, r7, lr}
c0de75ba:	2000      	movs	r0, #0
c0de75bc:	4669      	mov	r1, sp
c0de75be:	9001      	str	r0, [sp, #4]
c0de75c0:	4801      	ldr	r0, [pc, #4]	@ (c0de75c8 <os_io_start+0x10>)
c0de75c2:	f7ff fe45 	bl	c0de7250 <SVC_Call>
c0de75c6:	bd8c      	pop	{r2, r3, r7, pc}
c0de75c8:	01000085 	.word	0x01000085

c0de75cc <os_io_tx_cmd>:
c0de75cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de75ce:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de75d2:	4803      	ldr	r0, [pc, #12]	@ (c0de75e0 <os_io_tx_cmd+0x14>)
c0de75d4:	4669      	mov	r1, sp
c0de75d6:	f7ff fe3b 	bl	c0de7250 <SVC_Call>
c0de75da:	b004      	add	sp, #16
c0de75dc:	bd80      	pop	{r7, pc}
c0de75de:	bf00      	nop
c0de75e0:	04000088 	.word	0x04000088

c0de75e4 <os_io_rx_evt>:
c0de75e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de75e6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de75ea:	4803      	ldr	r0, [pc, #12]	@ (c0de75f8 <os_io_rx_evt+0x14>)
c0de75ec:	4669      	mov	r1, sp
c0de75ee:	f7ff fe2f 	bl	c0de7250 <SVC_Call>
c0de75f2:	b004      	add	sp, #16
c0de75f4:	bd80      	pop	{r7, pc}
c0de75f6:	bf00      	nop
c0de75f8:	03000089 	.word	0x03000089

c0de75fc <try_context_get>:
c0de75fc:	b5e0      	push	{r5, r6, r7, lr}
c0de75fe:	2000      	movs	r0, #0
c0de7600:	4669      	mov	r1, sp
c0de7602:	9001      	str	r0, [sp, #4]
c0de7604:	2087      	movs	r0, #135	@ 0x87
c0de7606:	f7ff fe23 	bl	c0de7250 <SVC_Call>
c0de760a:	bd8c      	pop	{r2, r3, r7, pc}

c0de760c <try_context_set>:
c0de760c:	b5e0      	push	{r5, r6, r7, lr}
c0de760e:	f000 f813 	bl	c0de7638 <OUTLINED_FUNCTION_0>
c0de7612:	4802      	ldr	r0, [pc, #8]	@ (c0de761c <try_context_set+0x10>)
c0de7614:	4669      	mov	r1, sp
c0de7616:	f7ff fe1b 	bl	c0de7250 <SVC_Call>
c0de761a:	bd8c      	pop	{r2, r3, r7, pc}
c0de761c:	0100010b 	.word	0x0100010b

c0de7620 <os_sched_last_status>:
c0de7620:	b5e0      	push	{r5, r6, r7, lr}
c0de7622:	f000 f809 	bl	c0de7638 <OUTLINED_FUNCTION_0>
c0de7626:	4803      	ldr	r0, [pc, #12]	@ (c0de7634 <os_sched_last_status+0x14>)
c0de7628:	4669      	mov	r1, sp
c0de762a:	f7ff fe11 	bl	c0de7250 <SVC_Call>
c0de762e:	b2c0      	uxtb	r0, r0
c0de7630:	bd8c      	pop	{r2, r3, r7, pc}
c0de7632:	bf00      	nop
c0de7634:	0100009c 	.word	0x0100009c

c0de7638 <OUTLINED_FUNCTION_0>:
c0de7638:	2100      	movs	r1, #0
c0de763a:	e9cd 0100 	strd	r0, r1, [sp]
c0de763e:	4770      	bx	lr

c0de7640 <__udivmoddi4>:
c0de7640:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7644:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7648:	4604      	mov	r4, r0
c0de764a:	b179      	cbz	r1, c0de766c <__udivmoddi4+0x2c>
c0de764c:	b1ba      	cbz	r2, c0de767e <__udivmoddi4+0x3e>
c0de764e:	b35b      	cbz	r3, c0de76a8 <__udivmoddi4+0x68>
c0de7650:	fab1 f581 	clz	r5, r1
c0de7654:	fab3 f683 	clz	r6, r3
c0de7658:	1b75      	subs	r5, r6, r5
c0de765a:	2d20      	cmp	r5, #32
c0de765c:	d34a      	bcc.n	c0de76f4 <__udivmoddi4+0xb4>
c0de765e:	f1bc 0f00 	cmp.w	ip, #0
c0de7662:	bf18      	it	ne
c0de7664:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7668:	2400      	movs	r4, #0
c0de766a:	e066      	b.n	c0de773a <__udivmoddi4+0xfa>
c0de766c:	b3cb      	cbz	r3, c0de76e2 <__udivmoddi4+0xa2>
c0de766e:	2100      	movs	r1, #0
c0de7670:	f1bc 0f00 	cmp.w	ip, #0
c0de7674:	bf18      	it	ne
c0de7676:	e9cc 4100 	strdne	r4, r1, [ip]
c0de767a:	2400      	movs	r4, #0
c0de767c:	e0a6      	b.n	c0de77cc <__udivmoddi4+0x18c>
c0de767e:	2b00      	cmp	r3, #0
c0de7680:	d03e      	beq.n	c0de7700 <__udivmoddi4+0xc0>
c0de7682:	2800      	cmp	r0, #0
c0de7684:	d04f      	beq.n	c0de7726 <__udivmoddi4+0xe6>
c0de7686:	1e5d      	subs	r5, r3, #1
c0de7688:	422b      	tst	r3, r5
c0de768a:	d158      	bne.n	c0de773e <__udivmoddi4+0xfe>
c0de768c:	f1bc 0f00 	cmp.w	ip, #0
c0de7690:	bf1c      	itt	ne
c0de7692:	ea05 0001 	andne.w	r0, r5, r1
c0de7696:	e9cc 4000 	strdne	r4, r0, [ip]
c0de769a:	fa93 f0a3 	rbit	r0, r3
c0de769e:	fab0 f080 	clz	r0, r0
c0de76a2:	fa21 f400 	lsr.w	r4, r1, r0
c0de76a6:	e048      	b.n	c0de773a <__udivmoddi4+0xfa>
c0de76a8:	1e55      	subs	r5, r2, #1
c0de76aa:	422a      	tst	r2, r5
c0de76ac:	d129      	bne.n	c0de7702 <__udivmoddi4+0xc2>
c0de76ae:	f1bc 0f00 	cmp.w	ip, #0
c0de76b2:	bf1e      	ittt	ne
c0de76b4:	2300      	movne	r3, #0
c0de76b6:	4005      	andne	r5, r0
c0de76b8:	e9cc 5300 	strdne	r5, r3, [ip]
c0de76bc:	2a01      	cmp	r2, #1
c0de76be:	f000 8085 	beq.w	c0de77cc <__udivmoddi4+0x18c>
c0de76c2:	fa92 f2a2 	rbit	r2, r2
c0de76c6:	004c      	lsls	r4, r1, #1
c0de76c8:	fab2 f282 	clz	r2, r2
c0de76cc:	f002 031f 	and.w	r3, r2, #31
c0de76d0:	40d1      	lsrs	r1, r2
c0de76d2:	40d8      	lsrs	r0, r3
c0de76d4:	231f      	movs	r3, #31
c0de76d6:	4393      	bics	r3, r2
c0de76d8:	fa04 f303 	lsl.w	r3, r4, r3
c0de76dc:	ea43 0400 	orr.w	r4, r3, r0
c0de76e0:	e074      	b.n	c0de77cc <__udivmoddi4+0x18c>
c0de76e2:	fbb0 f4f2 	udiv	r4, r0, r2
c0de76e6:	f1bc 0f00 	cmp.w	ip, #0
c0de76ea:	d026      	beq.n	c0de773a <__udivmoddi4+0xfa>
c0de76ec:	fb04 0012 	mls	r0, r4, r2, r0
c0de76f0:	2100      	movs	r1, #0
c0de76f2:	e020      	b.n	c0de7736 <__udivmoddi4+0xf6>
c0de76f4:	f105 0e01 	add.w	lr, r5, #1
c0de76f8:	f1be 0f20 	cmp.w	lr, #32
c0de76fc:	d00b      	beq.n	c0de7716 <__udivmoddi4+0xd6>
c0de76fe:	e028      	b.n	c0de7752 <__udivmoddi4+0x112>
c0de7700:	e064      	b.n	c0de77cc <__udivmoddi4+0x18c>
c0de7702:	fab1 f481 	clz	r4, r1
c0de7706:	fab2 f582 	clz	r5, r2
c0de770a:	1b2c      	subs	r4, r5, r4
c0de770c:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7710:	f1be 0f20 	cmp.w	lr, #32
c0de7714:	d15d      	bne.n	c0de77d2 <__udivmoddi4+0x192>
c0de7716:	f04f 0e20 	mov.w	lr, #32
c0de771a:	f04f 0a00 	mov.w	sl, #0
c0de771e:	f04f 0b00 	mov.w	fp, #0
c0de7722:	460e      	mov	r6, r1
c0de7724:	e021      	b.n	c0de776a <__udivmoddi4+0x12a>
c0de7726:	fbb1 f4f3 	udiv	r4, r1, r3
c0de772a:	f1bc 0f00 	cmp.w	ip, #0
c0de772e:	d004      	beq.n	c0de773a <__udivmoddi4+0xfa>
c0de7730:	2000      	movs	r0, #0
c0de7732:	fb04 1113 	mls	r1, r4, r3, r1
c0de7736:	e9cc 0100 	strd	r0, r1, [ip]
c0de773a:	2100      	movs	r1, #0
c0de773c:	e046      	b.n	c0de77cc <__udivmoddi4+0x18c>
c0de773e:	fab1 f581 	clz	r5, r1
c0de7742:	fab3 f683 	clz	r6, r3
c0de7746:	1b75      	subs	r5, r6, r5
c0de7748:	2d1f      	cmp	r5, #31
c0de774a:	f4bf af88 	bcs.w	c0de765e <__udivmoddi4+0x1e>
c0de774e:	f105 0e01 	add.w	lr, r5, #1
c0de7752:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7756:	f1c5 051f 	rsb	r5, r5, #31
c0de775a:	fa01 f605 	lsl.w	r6, r1, r5
c0de775e:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7762:	40a8      	lsls	r0, r5
c0de7764:	f04f 0a00 	mov.w	sl, #0
c0de7768:	4326      	orrs	r6, r4
c0de776a:	f04f 0800 	mov.w	r8, #0
c0de776e:	f1be 0f00 	cmp.w	lr, #0
c0de7772:	d01c      	beq.n	c0de77ae <__udivmoddi4+0x16e>
c0de7774:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7778:	f1ae 0e01 	sub.w	lr, lr, #1
c0de777c:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7780:	0076      	lsls	r6, r6, #1
c0de7782:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7786:	1aae      	subs	r6, r5, r2
c0de7788:	eb61 0b03 	sbc.w	fp, r1, r3
c0de778c:	43cf      	mvns	r7, r1
c0de778e:	43ec      	mvns	r4, r5
c0de7790:	18a4      	adds	r4, r4, r2
c0de7792:	eb57 0403 	adcs.w	r4, r7, r3
c0de7796:	bf5c      	itt	pl
c0de7798:	468b      	movpl	fp, r1
c0de779a:	462e      	movpl	r6, r5
c0de779c:	0040      	lsls	r0, r0, #1
c0de779e:	0fe1      	lsrs	r1, r4, #31
c0de77a0:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de77a4:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de77a8:	46a2      	mov	sl, r4
c0de77aa:	4688      	mov	r8, r1
c0de77ac:	e7df      	b.n	c0de776e <__udivmoddi4+0x12e>
c0de77ae:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de77b2:	f1bc 0f00 	cmp.w	ip, #0
c0de77b6:	bf18      	it	ne
c0de77b8:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de77bc:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de77c0:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de77c4:	f020 0001 	bic.w	r0, r0, #1
c0de77c8:	ea40 0408 	orr.w	r4, r0, r8
c0de77cc:	4620      	mov	r0, r4
c0de77ce:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de77d2:	f1be 0f1f 	cmp.w	lr, #31
c0de77d6:	d804      	bhi.n	c0de77e2 <__udivmoddi4+0x1a2>
c0de77d8:	fa20 f40e 	lsr.w	r4, r0, lr
c0de77dc:	f1ce 0520 	rsb	r5, lr, #32
c0de77e0:	e7bb      	b.n	c0de775a <__udivmoddi4+0x11a>
c0de77e2:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de77e6:	f1ae 0420 	sub.w	r4, lr, #32
c0de77ea:	f04f 0b00 	mov.w	fp, #0
c0de77ee:	fa20 f504 	lsr.w	r5, r0, r4
c0de77f2:	fa01 f607 	lsl.w	r6, r1, r7
c0de77f6:	fa00 fa07 	lsl.w	sl, r0, r7
c0de77fa:	ea46 0805 	orr.w	r8, r6, r5
c0de77fe:	fa21 f604 	lsr.w	r6, r1, r4
c0de7802:	4640      	mov	r0, r8
c0de7804:	e7b1      	b.n	c0de776a <__udivmoddi4+0x12a>
	...

c0de7808 <__aeabi_memcpy>:
c0de7808:	f000 b81c 	b.w	c0de7844 <memcpy>

c0de780c <__aeabi_memmove>:
c0de780c:	f000 b828 	b.w	c0de7860 <memmove>

c0de7810 <__aeabi_memset>:
c0de7810:	460b      	mov	r3, r1
c0de7812:	4611      	mov	r1, r2
c0de7814:	461a      	mov	r2, r3
c0de7816:	f000 b83d 	b.w	c0de7894 <memset>
c0de781a:	bf00      	nop

c0de781c <__aeabi_memclr>:
c0de781c:	460a      	mov	r2, r1
c0de781e:	2100      	movs	r1, #0
c0de7820:	f000 b838 	b.w	c0de7894 <memset>

c0de7824 <__aeabi_uldivmod>:
c0de7824:	b540      	push	{r6, lr}
c0de7826:	b084      	sub	sp, #16
c0de7828:	ae02      	add	r6, sp, #8
c0de782a:	9600      	str	r6, [sp, #0]
c0de782c:	f7ff ff08 	bl	c0de7640 <__udivmoddi4>
c0de7830:	9a02      	ldr	r2, [sp, #8]
c0de7832:	9b03      	ldr	r3, [sp, #12]
c0de7834:	b004      	add	sp, #16
c0de7836:	bd40      	pop	{r6, pc}

c0de7838 <explicit_bzero>:
c0de7838:	f000 b800 	b.w	c0de783c <bzero>

c0de783c <bzero>:
c0de783c:	460a      	mov	r2, r1
c0de783e:	2100      	movs	r1, #0
c0de7840:	f000 b828 	b.w	c0de7894 <memset>

c0de7844 <memcpy>:
c0de7844:	440a      	add	r2, r1
c0de7846:	4291      	cmp	r1, r2
c0de7848:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de784c:	d100      	bne.n	c0de7850 <memcpy+0xc>
c0de784e:	4770      	bx	lr
c0de7850:	b510      	push	{r4, lr}
c0de7852:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7856:	4291      	cmp	r1, r2
c0de7858:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de785c:	d1f9      	bne.n	c0de7852 <memcpy+0xe>
c0de785e:	bd10      	pop	{r4, pc}

c0de7860 <memmove>:
c0de7860:	4288      	cmp	r0, r1
c0de7862:	b510      	push	{r4, lr}
c0de7864:	eb01 0402 	add.w	r4, r1, r2
c0de7868:	d902      	bls.n	c0de7870 <memmove+0x10>
c0de786a:	4284      	cmp	r4, r0
c0de786c:	4623      	mov	r3, r4
c0de786e:	d807      	bhi.n	c0de7880 <memmove+0x20>
c0de7870:	1e43      	subs	r3, r0, #1
c0de7872:	42a1      	cmp	r1, r4
c0de7874:	d008      	beq.n	c0de7888 <memmove+0x28>
c0de7876:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de787a:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de787e:	e7f8      	b.n	c0de7872 <memmove+0x12>
c0de7880:	4601      	mov	r1, r0
c0de7882:	4402      	add	r2, r0
c0de7884:	428a      	cmp	r2, r1
c0de7886:	d100      	bne.n	c0de788a <memmove+0x2a>
c0de7888:	bd10      	pop	{r4, pc}
c0de788a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de788e:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7892:	e7f7      	b.n	c0de7884 <memmove+0x24>

c0de7894 <memset>:
c0de7894:	4603      	mov	r3, r0
c0de7896:	4402      	add	r2, r0
c0de7898:	4293      	cmp	r3, r2
c0de789a:	d100      	bne.n	c0de789e <memset+0xa>
c0de789c:	4770      	bx	lr
c0de789e:	f803 1b01 	strb.w	r1, [r3], #1
c0de78a2:	e7f9      	b.n	c0de7898 <memset+0x4>

c0de78a4 <setjmp>:
c0de78a4:	46ec      	mov	ip, sp
c0de78a6:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de78aa:	f04f 0000 	mov.w	r0, #0
c0de78ae:	4770      	bx	lr

c0de78b0 <longjmp>:
c0de78b0:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de78b4:	46e5      	mov	sp, ip
c0de78b6:	0008      	movs	r0, r1
c0de78b8:	bf08      	it	eq
c0de78ba:	2001      	moveq	r0, #1
c0de78bc:	4770      	bx	lr
c0de78be:	bf00      	nop

c0de78c0 <strcmp>:
c0de78c0:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de78c4:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de78c8:	2a01      	cmp	r2, #1
c0de78ca:	bf28      	it	cs
c0de78cc:	429a      	cmpcs	r2, r3
c0de78ce:	d0f7      	beq.n	c0de78c0 <strcmp>
c0de78d0:	1ad0      	subs	r0, r2, r3
c0de78d2:	4770      	bx	lr

c0de78d4 <strlen>:
c0de78d4:	4603      	mov	r3, r0
c0de78d6:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de78da:	2a00      	cmp	r2, #0
c0de78dc:	d1fb      	bne.n	c0de78d6 <strlen+0x2>
c0de78de:	1a18      	subs	r0, r3, r0
c0de78e0:	3801      	subs	r0, #1
c0de78e2:	4770      	bx	lr

c0de78e4 <strncmp>:
c0de78e4:	b510      	push	{r4, lr}
c0de78e6:	b16a      	cbz	r2, c0de7904 <strncmp+0x20>
c0de78e8:	3901      	subs	r1, #1
c0de78ea:	1884      	adds	r4, r0, r2
c0de78ec:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de78f0:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de78f4:	429a      	cmp	r2, r3
c0de78f6:	d103      	bne.n	c0de7900 <strncmp+0x1c>
c0de78f8:	42a0      	cmp	r0, r4
c0de78fa:	d001      	beq.n	c0de7900 <strncmp+0x1c>
c0de78fc:	2a00      	cmp	r2, #0
c0de78fe:	d1f5      	bne.n	c0de78ec <strncmp+0x8>
c0de7900:	1ad0      	subs	r0, r2, r3
c0de7902:	bd10      	pop	{r4, pc}
c0de7904:	4610      	mov	r0, r2
c0de7906:	e7fc      	b.n	c0de7902 <strncmp+0x1e>

c0de7908 <strncpy>:
c0de7908:	4603      	mov	r3, r0
c0de790a:	b510      	push	{r4, lr}
c0de790c:	3901      	subs	r1, #1
c0de790e:	b132      	cbz	r2, c0de791e <strncpy+0x16>
c0de7910:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7914:	3a01      	subs	r2, #1
c0de7916:	f803 4b01 	strb.w	r4, [r3], #1
c0de791a:	2c00      	cmp	r4, #0
c0de791c:	d1f7      	bne.n	c0de790e <strncpy+0x6>
c0de791e:	2100      	movs	r1, #0
c0de7920:	441a      	add	r2, r3
c0de7922:	4293      	cmp	r3, r2
c0de7924:	d100      	bne.n	c0de7928 <strncpy+0x20>
c0de7926:	bd10      	pop	{r4, pc}
c0de7928:	f803 1b01 	strb.w	r1, [r3], #1
c0de792c:	e7f9      	b.n	c0de7922 <strncpy+0x1a>

c0de792e <C_home_boilerplate_14px_bitmap>:
c0de792e:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de793e:	fc7b df0f 7ffe 7ff8                          {........

c0de7947 <C_home_boilerplate_14px>:
c0de7947:	000e 000e 0000 792e c0de                    .......y..

c0de7951 <C_Information_circle_14px_bitmap>:
c0de7951:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de7961:	e7ff 8fff 1ffc 1ee0                          .........

c0de796a <C_Information_circle_14px>:
c0de796a:	000e 000e 0000 7951 c0de                    ......Qy..

c0de7974 <C_Quit_14px_bitmap>:
c0de7974:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7984:	6680 9801 7f06 fff9                          .f.......

c0de798d <C_Quit_14px>:
c0de798d:	000e 000e 0000 7974 c0de                    ......ty..

c0de7997 <C_Switch_Off_8px_bitmap>:
c0de7997:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de79a3 <C_Switch_Off_8px>:
c0de79a3:	000c 0008 0000 7997 c0de                    .......y..

c0de79ad <C_Switch_On_8px_bitmap>:
c0de79ad:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de79b9 <C_Switch_On_8px>:
c0de79b9:	000c 0008 0000 79ad c0de                    .......y..

c0de79c3 <C_icon_back_x_bitmap>:
c0de79c3:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de79d3:	003f 0078 00c0 0000                          ?.x......

c0de79dc <C_icon_back_x>:
c0de79dc:	000e 000e 0000 79c3 c0de                    .......y..

c0de79e6 <C_icon_coggle_bitmap>:
c0de79e6:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de79f6:	807f 00b4 00c0 0000                          .........

c0de79ff <C_icon_coggle>:
c0de79ff:	000e 000e 0000 79e6 c0de                    .......y..

c0de7a09 <C_icon_crossmark_bitmap>:
c0de7a09:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7a19:	8373 1c87 600e 0018                          s....`...

c0de7a22 <C_icon_crossmark>:
c0de7a22:	000e 000e 0000 7a09 c0de                    .......z..

c0de7a2c <C_icon_down_bitmap>:
c0de7a2c:	2184 8024                                   .!$.

c0de7a30 <C_icon_down>:
c0de7a30:	0007 0004 0000 7a2c c0de                    ......,z..

c0de7a3a <C_icon_left_bitmap>:
c0de7a3a:	8882 80a0                                   ....

c0de7a3e <C_icon_left>:
c0de7a3e:	0004 0007 0000 7a3a c0de                    ......:z..

c0de7a48 <C_icon_processing_bitmap>:
c0de7a48:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7a58:	8361 04b7 03c8 0000                          a........

c0de7a61 <C_icon_processing>:
c0de7a61:	000e 000e 0000 7a48 c0de                    ......Hz..

c0de7a6b <C_icon_right_bitmap>:
c0de7a6b:	5110 1014                                   .Q..

c0de7a6f <C_icon_right>:
c0de7a6f:	0004 0007 0000 7a6b c0de                    ......kz..

c0de7a79 <C_icon_up_bitmap>:
c0de7a79:	4812 1042                                   .HB.

c0de7a7d <C_icon_up>:
c0de7a7d:	0007 0004 0000 7a79 c0de                    ......yz..

c0de7a87 <C_icon_validate_14_bitmap>:
c0de7a87:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7a97:	a3b3 a3a3 f0b2                               ......P

c0de7a9e <C_icon_validate_14>:
c0de7a9e:	000e 000e 0100 7a87 c0de                    .......z..

c0de7aa8 <C_icon_warning_bitmap>:
c0de7aa8:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7ab8:	e01f 801f 001e 0018                          .........

c0de7ac1 <C_icon_warning>:
c0de7ac1:	000e 000e 0000 7aa8 c0de                    .......z..

c0de7acb <C_app_boilerplate_14px_bitmap>:
c0de7acb:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7adb:	0384 00f0 0000 0000                          .........

c0de7ae4 <C_app_boilerplate_14px>:
c0de7ae4:	000e 000e 0000 7acb c0de 7544 6d6d 2079     .......z..Dummy 
c0de7af4:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de7b04:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de7b14:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de7b24:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de7b34:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de7b44:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de7b54:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de7b64:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de7b74:	5300 6769 696e 676e 4100 6f6d 6e75 0074     .Signing.Amount.
c0de7b84:	6441 7264 7365 2073 6576 6972 6966 6465     Address verified
c0de7b94:	4100 6572 7920 756f 7320 7275 2065 6f74     .Are you sure to
c0de7ba4:	610a 6c6c 776f 6420 6d75 796d 3220 690a     .allow dummy 2.i
c0de7bb4:	206e 7274 6e61 6173 7463 6f69 736e 003f     n transactions?.
c0de7bc4:	4f4e 2058 2e25 732a 5400 6172 736e 6361     NOX %.*s.Transac
c0de7bd4:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de7be4:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de7bf4:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de7c04:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de7c14:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de7c24:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de7c34:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de7c44:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de7c54:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de7c64:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de7c74:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de7c84:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de7c94:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de7ca4:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de7cb4:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de7cc4:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de7cd4:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de7ce4:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de7cf4:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de7d04:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de7d14:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de7d24:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de7d34:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de7d44:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de7d54:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de7d64:	4544 0046 4f42 204c 2e25 732a 4100 6464     DEF.BOL %.*s.Add
c0de7d74:	6572 7373 4200 6361 006b 7544 6d6d 2079     ress.Back.Dummy 
c0de7d84:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de7d94:	6f63 666e 7269 006d 7254 6e61 6173 7463     confirm.Transact
c0de7da4:	6f69 206e 6572 656a 7463 6465 4100 7070     ion rejected.App
c0de7db4:	6920 666e 006f 6953 6e67 6f20 6570 6172      info.Sign opera
c0de7dc4:	6974 6e6f 5200 6a65 6365 2074 656d 7373     tion.Reject mess
c0de7dd4:	6761 0065 6552 656a 7463 6f20 6570 6172     age.Reject opera
c0de7de4:	6974 6e6f 5a00 4e4b 584f 5600 7265 6669     tion.ZKNOX.Verif
c0de7df4:	2079 4f42 204c 6461 7264 7365 0073 6552     y BOL address.Re
c0de7e04:	6976 7765 7420 6172 736e 6361 6974 6e6f     view transaction
c0de7e14:	740a 206f 6573 646e 4e20 584f 5a00 4e4b     .to send NOX.ZKN
c0de7e24:	584f 5748 6100 7070 6920 2073 6572 6461     OXHW.app is read
c0de7e34:	0079 7551 7469 6120 7070 4300 6e6f 6966     y.Quit app.Confi
c0de7e44:	6d72 0000 ed73 53a7 9d29 487d 3933 08d8     rm..s..S).}H39..
c0de7e54:	a109 05d8 bd53 02a4 feff fe5b ffff ffff     ....S.....[.....
c0de7e64:	0000 0100 ce05 c698 051b 7ff4 eae2 a5e9     ................
c0de7e74:	bd42 f699 e7b2 4682 1623 b540 9545 bffe     B......F#.@.E...
c0de7e84:	1ed5 53b8 0001 0000 0000 0000 0002 0000     ...S............
c0de7e94:	0000 0000 0003 0000 0000 0000 0004 0000     ................
c0de7ea4:	0000 0000 a005 91c0 8356 988b af28 123f     ........V...(.?.
c0de7eb4:	e167 e675 84e2 9dc7 6d1b d08a 0acd d9e0     g.u......m......
c0de7ec4:	9057 6e33 c61c 38ee 9c13 111c 2302 7a53     W.3n...8.....#Sz
c0de7ed4:	e78c 069d 587e 10cc c667 b7fb b3d8 b0a1     ....~X..g.......
c0de7ee4:	fc8d 088f 4d27 e8bc 51d1 9679 c09b 9fd4     ....'M...Qy.....
c0de7ef4:	25a7 dfbd e59d e055 6aba 3c69 db6a fc52     .%....U..ji<j.R.
c0de7f04:	e79e 2ca8 fb1c d469 67ca 525f ce0c 0276     ...,..i..g_R..v.
c0de7f14:	6802 0076 8fff 0087 1974 7104 fd74 b506     .hv.....t..qt...
c0de7f24:	7628 e1e7 0c06 ce89 265c 0534 0a37 b608     (v......\&4.7...
c0de7f34:	30d0 0b2b 3eab b8ed 2039 0aee 7267 dc97     .0+..>..9 ..gr..
c0de7f44:	2139 f126 a570 4a89 4464 3854 15d0 32ac     9!&.p..JdDT8...2
c0de7f54:	36ba 090f de2c ba44 1fb1 b7c2 b5d4 d2c0     .6..,.D.........
c0de7f64:	2216 ce8c 820b 39b7 8de7 57da 5ae7 80c6     .".....9...W.Z..
c0de7f74:	68ef f19d 8f15 eee3 09d8 6d5c d14b c7b2     .h........\mK...
c0de7f84:	66c1 fdee 0000 0000 0000 0000 0000 0000     .f..............
	...
c0de7fa4:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7fb4:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7fc4:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7fd4:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7fe4:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7ff4:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de8004:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de8024:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de8034:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de8044:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de8054:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de8064:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de8074:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de8084:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de8094:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de80a4:	88f4 7a60                                   ..`z

c0de80a8 <.L__const.handler_cmd_Poseidon.input>:
c0de80a8:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de80b8:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de80c8:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de80d8:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de80e8:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de80f8:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de8108:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de8118:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de8128:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8138:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8148 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de8164:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de8174:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de8184:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de8194:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de81a4:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de81b4:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de81c4:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de81d4:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de81e4:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de8204:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de8214:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de8224:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de8234:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de8244:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de8254:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de8264:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de8274:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de8284:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de82a4:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de82b4:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de82c4:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de82d4:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de82e4:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de82f4:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de8304:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de8314:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de8324:	9b44 9ffb                                   D...

c0de8328 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de8344:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de8354:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de8364:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de8374:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de8384:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de8394:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de83a4:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de83b4:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de83c4:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de83e4:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de83f4:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de8404:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de8414:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de8424:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de8434:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de8444:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de8454:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de8464:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de8484:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de8494:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de84a4:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de84b4:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de84c4:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de84d4:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de84e4:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de84f4:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de8504:	8132 74b1                                   2..t

c0de8508 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8508:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8518:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8528:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8538:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8548:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8558:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8568 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de8584:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de8594:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de85a4:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de85b4:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de85c4:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de85d4:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de85e4:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de85f4:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de8604:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de8624:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de8634:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de8644:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de8654:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de8664:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de8674:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de8684:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de8694:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de86a4:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de86c4:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de86d4:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de86e4:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de86f4:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de8704:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de8714:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de8724:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de8734:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de8744:	a0c2 7523                                   ..#u

c0de8748 <settingContents>:
c0de8748:	0000 0000 8764 c0de 0001 0000               ....d.......

c0de8754 <infoList>:
c0de8754:	879c c0de 87a4 c0de 0000 0000 0002 0000     ................

c0de8764 <contents>:
c0de8764:	0007 0000 035c da7a 0002 0000 0000 0000     ....\.z.........
	...
c0de8798:	199d c0de                                   ....

c0de879c <INFO_TYPES>:
c0de879c:	7cae c0de 7c03 c0de                         .|...|..

c0de87a4 <INFO_CONTENTS>:
c0de87a4:	7b1d c0de 7de9 c0de                         .{...}..

c0de87ac <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de87cc:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de87dc:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de87ec <.L__const.Poseidon_alloc_init.MixColumn>:
c0de87ec:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de87fc:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de880c:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de881c:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de882c:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de883c:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de884c:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de885c:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de886c:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de887c:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de888c:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de889c:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de88ac:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de88bc:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de88cc:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de88dc:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de88ec:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de88fc:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de890c:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de891c:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de892c:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de893c:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de894c:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de895c:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de896c:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de897c:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de898c:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de899c:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de89ac:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de89bc:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de89cc:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de89dc:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de89ec:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de89fc:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de8a0c:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8a1c:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8a2c:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de8a3c:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8a4c:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8a5c:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8a6c:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8a7c:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8a8c:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8a9c:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8aac:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8abc:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8acc:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8adc:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8aec:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8afc:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8b0c:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8b1c:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8b2c:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8b3c:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8b4c:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8b5c:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8b6c:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8b7c:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8b8c:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8b9c:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8bac:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8bbc:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8bcc:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8bdc:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8bec:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8bfc:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8c0c:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8c1c:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8c2c:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8c3c:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8c4c:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8c5c:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8c6c <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8c6c:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8c7c:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8c8c <blindSigningWarning>:
c0de8c8c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8cb4 <g_pcHex>:
c0de8cb4:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8cc4 <g_pcHex_cap>:
c0de8cc4:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8cd4 <_etext>:
	...

c0de8e00 <N_storage_real>:
	...

c0de9000 <install_parameters>:
c0de9000:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9010:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9020:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9030:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
