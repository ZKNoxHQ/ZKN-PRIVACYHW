
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 ff1f 	bl	c0de6e48 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fcab 	bl	c0de6970 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fc72 	bl	c0de6904 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fc63 	bl	c0de68ee <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fbbb 	bl	c0de77b0 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fe9d 	bl	c0de6d7c <assert_exit>
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
c0de0056:	f006 fe51 	bl	c0de6cfc <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fb98 	bl	c0de779c <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 fe7f 	bl	c0de6d7c <assert_exit>
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
c0de0146:	f001 f88d 	bl	c0de1264 <handler_get_insecure_public>
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
c0de02e2:	f001 f817 	bl	c0de1314 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
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
c0de0328:	f006 fa88 	bl	c0de683c <io_send_response_buffers>
c0de032c:	bd80      	pop	{r7, pc}

c0de032e <OUTLINED_FUNCTION_0>:
c0de032e:	9001      	str	r0, [sp, #4]
c0de0330:	7920      	ldrb	r0, [r4, #4]
c0de0332:	9002      	str	r0, [sp, #8]
c0de0334:	4770      	bx	lr
	...

c0de0338 <app_main>:
c0de0338:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de033a:	f006 fa61 	bl	c0de6800 <io_init>
c0de033e:	481e      	ldr	r0, [pc, #120]	@ (c0de03b8 <app_main+0x80>)
c0de0340:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0344:	b908      	cbnz	r0, c0de034a <app_main+0x12>
c0de0346:	f001 faab 	bl	c0de18a0 <ui_menu_main>
c0de034a:	481c      	ldr	r0, [pc, #112]	@ (c0de03bc <app_main+0x84>)
c0de034c:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0350:	4448      	add	r0, r9
c0de0352:	f007 fa3b 	bl	c0de77cc <explicit_bzero>
c0de0356:	481b      	ldr	r0, [pc, #108]	@ (c0de03c4 <app_main+0x8c>)
c0de0358:	4478      	add	r0, pc
c0de035a:	f006 ff1d 	bl	c0de7198 <pic>
c0de035e:	7880      	ldrb	r0, [r0, #2]
c0de0360:	2801      	cmp	r0, #1
c0de0362:	d00d      	beq.n	c0de0380 <app_main+0x48>
c0de0364:	2001      	movs	r0, #1
c0de0366:	f88d 0002 	strb.w	r0, [sp, #2]
c0de036a:	2000      	movs	r0, #0
c0de036c:	f8ad 0000 	strh.w	r0, [sp]
c0de0370:	4815      	ldr	r0, [pc, #84]	@ (c0de03c8 <app_main+0x90>)
c0de0372:	4478      	add	r0, pc
c0de0374:	f006 ff10 	bl	c0de7198 <pic>
c0de0378:	4669      	mov	r1, sp
c0de037a:	2203      	movs	r2, #3
c0de037c:	f006 ff3c 	bl	c0de71f8 <nvm_write>
c0de0380:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03c0 <app_main+0x88>)
c0de0382:	ac01      	add	r4, sp, #4
c0de0384:	f006 fa44 	bl	c0de6810 <io_recv_command>
c0de0388:	2800      	cmp	r0, #0
c0de038a:	d414      	bmi.n	c0de03b6 <app_main+0x7e>
c0de038c:	4602      	mov	r2, r0
c0de038e:	eb09 0105 	add.w	r1, r9, r5
c0de0392:	4620      	mov	r0, r4
c0de0394:	f006 fb3c 	bl	c0de6a10 <apdu_parser>
c0de0398:	b130      	cbz	r0, c0de03a8 <app_main+0x70>
c0de039a:	4620      	mov	r0, r4
c0de039c:	f7ff fe69 	bl	c0de0072 <apdu_dispatcher>
c0de03a0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03a4:	dcee      	bgt.n	c0de0384 <app_main+0x4c>
c0de03a6:	e006      	b.n	c0de03b6 <app_main+0x7e>
c0de03a8:	2000      	movs	r0, #0
c0de03aa:	2100      	movs	r1, #0
c0de03ac:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03b0:	f006 fa44 	bl	c0de683c <io_send_response_buffers>
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
c0de03d2:	f006 fee1 	bl	c0de7198 <pic>
c0de03d6:	2100      	movs	r1, #0
c0de03d8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03dc:	9103      	str	r1, [sp, #12]
c0de03de:	2107      	movs	r1, #7
c0de03e0:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de03e4:	a801      	add	r0, sp, #4
c0de03e6:	2101      	movs	r1, #1
c0de03e8:	f006 fa28 	bl	c0de683c <io_send_response_buffers>
c0de03ec:	b004      	add	sp, #16
c0de03ee:	bd80      	pop	{r7, pc}
c0de03f0:	000079d8 	.word	0x000079d8

c0de03f4 <handler_get_public_key>:
c0de03f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de03f6:	b085      	sub	sp, #20
c0de03f8:	4f23      	ldr	r7, [pc, #140]	@ (c0de0488 <handler_get_public_key+0x94>)
c0de03fa:	460c      	mov	r4, r1
c0de03fc:	4605      	mov	r5, r0
c0de03fe:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0402:	eb09 0607 	add.w	r6, r9, r7
c0de0406:	4630      	mov	r0, r6
c0de0408:	f007 f9e0 	bl	c0de77cc <explicit_bzero>
c0de040c:	2000      	movs	r0, #0
c0de040e:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de0412:	f809 0007 	strb.w	r0, [r9, r7]
c0de0416:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de041a:	4628      	mov	r0, r5
c0de041c:	f005 ffbc 	bl	c0de6398 <buffer_read_u8>
c0de0420:	b308      	cbz	r0, c0de0466 <handler_get_public_key+0x72>
c0de0422:	eb09 0007 	add.w	r0, r9, r7
c0de0426:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de042a:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de042e:	4628      	mov	r0, r5
c0de0430:	f006 f805 	bl	c0de643e <buffer_read_bip32_path>
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
c0de045c:	f006 f8b0 	bl	c0de65c0 <bip32_derive_with_seed_get_pubkey_256>
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
c0de0482:	f001 baf1 	b.w	c0de1a68 <ui_display_address>
c0de0486:	bf00      	nop
c0de0488:	00000000 	.word	0x00000000

c0de048c <io_send_sw>:
c0de048c:	b580      	push	{r7, lr}
c0de048e:	4602      	mov	r2, r0
c0de0490:	2000      	movs	r0, #0
c0de0492:	2100      	movs	r1, #0
c0de0494:	f006 f9d2 	bl	c0de683c <io_send_response_buffers>
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
c0de04c0:	f006 f9bc 	bl	c0de683c <io_send_response_buffers>
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
c0de0502:	f007 f963 	bl	c0de77cc <explicit_bzero>
c0de0506:	2000      	movs	r0, #0
c0de0508:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de050c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0510:	2001      	movs	r0, #1
c0de0512:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de0516:	4620      	mov	r0, r4
c0de0518:	f005 ff3e 	bl	c0de6398 <buffer_read_u8>
c0de051c:	b148      	cbz	r0, c0de0532 <handler_sign_tx+0x6a>
c0de051e:	eb09 0006 	add.w	r0, r9, r6
c0de0522:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0526:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de052a:	4620      	mov	r0, r4
c0de052c:	f005 ff87 	bl	c0de643e <buffer_read_bip32_path>
c0de0530:	b9b8      	cbnz	r0, c0de0562 <handler_sign_tx+0x9a>
c0de0532:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0536:	e019      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de0538:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de053c:	e016      	b.n	c0de056c <handler_sign_tx+0xa4>
c0de053e:	eb09 0106 	add.w	r1, r9, r6
c0de0542:	4408      	add	r0, r1
c0de0544:	f100 0108 	add.w	r1, r0, #8
c0de0548:	4620      	mov	r0, r4
c0de054a:	f005 ffa2 	bl	c0de6492 <buffer_move>
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
c0de058c:	f001 f8a8 	bl	c0de16e0 <transaction_deserialize>
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
c0de05b2:	f006 fba3 	bl	c0de6cfc <cx_keccak_256_hash_iovec>
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
c0de05ec:	f001 f838 	bl	c0de1660 <swap_check_validity>
c0de05f0:	b110      	cbz	r0, c0de05f8 <handler_sign_tx+0x130>
c0de05f2:	2001      	movs	r0, #1
c0de05f4:	f001 f8fe 	bl	c0de17f4 <validate_transaction>
c0de05f8:	2000      	movs	r0, #0
c0de05fa:	e7e4      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de05fc:	eb09 0006 	add.w	r0, r9, r6
c0de0600:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0604:	4909      	ldr	r1, [pc, #36]	@ (c0de062c <handler_sign_tx+0x164>)
c0de0606:	4479      	add	r1, pc
c0de0608:	f007 f924 	bl	c0de7854 <strcmp>
c0de060c:	b110      	cbz	r0, c0de0614 <handler_sign_tx+0x14c>
c0de060e:	f001 fb4c 	bl	c0de1caa <ui_display_transaction>
c0de0612:	e7d8      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de0614:	f001 fb46 	bl	c0de1ca4 <ui_display_blind_signed_transaction>
c0de0618:	e7d5      	b.n	c0de05c6 <handler_sign_tx+0xfe>
c0de061a:	20ff      	movs	r0, #255	@ 0xff
c0de061c:	f006 ff82 	bl	c0de7524 <os_sched_exit>
c0de0620:	00000000 	.word	0x00000000
c0de0624:	000008cc 	.word	0x000008cc
c0de0628:	000008cd 	.word	0x000008cd
c0de062c:	000074bb 	.word	0x000074bb

c0de0630 <io_send_sw>:
c0de0630:	b580      	push	{r7, lr}
c0de0632:	4602      	mov	r2, r0
c0de0634:	2000      	movs	r0, #0
c0de0636:	2100      	movs	r1, #0
c0de0638:	f006 f900 	bl	c0de683c <io_send_response_buffers>
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
c0de0650:	f001 fb2e 	bl	c0de1cb0 <zkn_prv_hash>
c0de0654:	b988      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de0656:	a840      	add	r0, sp, #256	@ 0x100
c0de0658:	2140      	movs	r1, #64	@ 0x40
c0de065a:	f000 f817 	bl	c0de068c <io_send_response_pointer>
c0de065e:	2000      	movs	r0, #0
c0de0660:	e00d      	b.n	c0de067e <handler_cmd_blake2b512+0x40>
c0de0662:	4668      	mov	r0, sp
c0de0664:	2109      	movs	r1, #9
c0de0666:	2240      	movs	r2, #64	@ 0x40
c0de0668:	f006 fb76 	bl	c0de6d58 <cx_hash_init_ex>
c0de066c:	b928      	cbnz	r0, c0de067a <handler_cmd_blake2b512+0x3c>
c0de066e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0672:	4668      	mov	r0, sp
c0de0674:	f006 fb75 	bl	c0de6d62 <cx_hash_update>
c0de0678:	b118      	cbz	r0, c0de0682 <handler_cmd_blake2b512+0x44>
c0de067a:	f000 fea9 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de067e:	b050      	add	sp, #320	@ 0x140
c0de0680:	bd10      	pop	{r4, pc}
c0de0682:	4668      	mov	r0, sp
c0de0684:	a940      	add	r1, sp, #256	@ 0x100
c0de0686:	f006 fb62 	bl	c0de6d4e <cx_hash_final>
c0de068a:	e7e3      	b.n	c0de0654 <handler_cmd_blake2b512+0x16>

c0de068c <io_send_response_pointer>:
c0de068c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de068e:	2200      	movs	r2, #0
c0de0690:	ab01      	add	r3, sp, #4
c0de0692:	c307      	stmia	r3!, {r0, r1, r2}
c0de0694:	a801      	add	r0, sp, #4
c0de0696:	2101      	movs	r1, #1
c0de0698:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de069c:	f006 f8ce 	bl	c0de683c <io_send_response_buffers>
c0de06a0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06a2 <io_send_sw>:
c0de06a2:	b580      	push	{r7, lr}
c0de06a4:	4602      	mov	r2, r0
c0de06a6:	2000      	movs	r0, #0
c0de06a8:	2100      	movs	r1, #0
c0de06aa:	f006 f8c7 	bl	c0de683c <io_send_response_buffers>
c0de06ae:	bd80      	pop	{r7, pc}

c0de06b0 <handler_cmd_keccakH>:
c0de06b0:	b510      	push	{r4, lr}
c0de06b2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06b4:	4604      	mov	r4, r0
c0de06b6:	4668      	mov	r0, sp
c0de06b8:	2106      	movs	r1, #6
c0de06ba:	2220      	movs	r2, #32
c0de06bc:	f006 fb4c 	bl	c0de6d58 <cx_hash_init_ex>
c0de06c0:	b950      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06c2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06c6:	4668      	mov	r0, sp
c0de06c8:	f006 fb4b 	bl	c0de6d62 <cx_hash_update>
c0de06cc:	b920      	cbnz	r0, c0de06d8 <handler_cmd_keccakH+0x28>
c0de06ce:	4668      	mov	r0, sp
c0de06d0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06d2:	f006 fb3c 	bl	c0de6d4e <cx_hash_final>
c0de06d6:	b118      	cbz	r0, c0de06e0 <handler_cmd_keccakH+0x30>
c0de06d8:	f000 fe7a 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de06dc:	b072      	add	sp, #456	@ 0x1c8
c0de06de:	bd10      	pop	{r4, pc}
c0de06e0:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de06e2:	f000 fea4 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de06e6:	2000      	movs	r0, #0
c0de06e8:	e7f8      	b.n	c0de06dc <handler_cmd_keccakH+0x2c>
	...

c0de06ec <handler_cmd_bolos_stretch>:
c0de06ec:	b510      	push	{r4, lr}
c0de06ee:	b0a4      	sub	sp, #144	@ 0x90
c0de06f0:	f000 fe6a 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de06f4:	bba0      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de06f6:	ac14      	add	r4, sp, #80	@ 0x50
c0de06f8:	491e      	ldr	r1, [pc, #120]	@ (c0de0774 <handler_cmd_bolos_stretch+0x88>)
c0de06fa:	2220      	movs	r2, #32
c0de06fc:	4620      	mov	r0, r4
c0de06fe:	4479      	add	r1, pc
c0de0700:	f007 f84c 	bl	c0de779c <__aeabi_memcpy>
c0de0704:	a80c      	add	r0, sp, #48	@ 0x30
c0de0706:	491c      	ldr	r1, [pc, #112]	@ (c0de0778 <handler_cmd_bolos_stretch+0x8c>)
c0de0708:	2220      	movs	r2, #32
c0de070a:	4479      	add	r1, pc
c0de070c:	f007 f846 	bl	c0de779c <__aeabi_memcpy>
c0de0710:	a804      	add	r0, sp, #16
c0de0712:	491a      	ldr	r1, [pc, #104]	@ (c0de077c <handler_cmd_bolos_stretch+0x90>)
c0de0714:	2220      	movs	r2, #32
c0de0716:	4479      	add	r1, pc
c0de0718:	f007 f840 	bl	c0de779c <__aeabi_memcpy>
c0de071c:	a803      	add	r0, sp, #12
c0de071e:	2120      	movs	r1, #32
c0de0720:	4622      	mov	r2, r4
c0de0722:	f000 fe69 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de0726:	b9d8      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0728:	a802      	add	r0, sp, #8
c0de072a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de072c:	2120      	movs	r1, #32
c0de072e:	f000 fe63 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de0732:	b9a8      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0734:	a801      	add	r0, sp, #4
c0de0736:	aa04      	add	r2, sp, #16
c0de0738:	2120      	movs	r1, #32
c0de073a:	f000 fe5d 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de073e:	b978      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0740:	4668      	mov	r0, sp
c0de0742:	f000 fe4b 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0746:	b958      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0748:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de074c:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0750:	f006 fde8 	bl	c0de7324 <cx_bn_mod_add>
c0de0754:	b920      	cbnz	r0, c0de0760 <handler_cmd_bolos_stretch+0x74>
c0de0756:	9800      	ldr	r0, [sp, #0]
c0de0758:	a91c      	add	r1, sp, #112	@ 0x70
c0de075a:	f000 fe3c 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de075e:	b118      	cbz	r0, c0de0768 <handler_cmd_bolos_stretch+0x7c>
c0de0760:	f000 fe36 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0764:	b024      	add	sp, #144	@ 0x90
c0de0766:	bd10      	pop	{r4, pc}
c0de0768:	a81c      	add	r0, sp, #112	@ 0x70
c0de076a:	f000 fe60 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de076e:	2000      	movs	r0, #0
c0de0770:	e7f8      	b.n	c0de0764 <handler_cmd_bolos_stretch+0x78>
c0de0772:	bf00      	nop
c0de0774:	000077b6 	.word	0x000077b6
c0de0778:	0000772a 	.word	0x0000772a
c0de077c:	0000783e 	.word	0x0000783e

c0de0780 <handler_cmd_Poseidon>:
c0de0780:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0784:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0788:	4604      	mov	r4, r0
c0de078a:	a860      	add	r0, sp, #384	@ 0x180
c0de078c:	493d      	ldr	r1, [pc, #244]	@ (c0de0884 <handler_cmd_Poseidon+0x104>)
c0de078e:	22a0      	movs	r2, #160	@ 0xa0
c0de0790:	4479      	add	r1, pc
c0de0792:	f007 f803 	bl	c0de779c <__aeabi_memcpy>
c0de0796:	f000 fe17 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
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
c0de07b6:	f006 fff1 	bl	c0de779c <__aeabi_memcpy>
c0de07ba:	a809      	add	r0, sp, #36	@ 0x24
c0de07bc:	2120      	movs	r1, #32
c0de07be:	462a      	mov	r2, r5
c0de07c0:	f000 fe1a 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de07c4:	b9c0      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07c6:	a808      	add	r0, sp, #32
c0de07c8:	466a      	mov	r2, sp
c0de07ca:	2120      	movs	r1, #32
c0de07cc:	f000 fe14 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de07d0:	b990      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07d2:	a80a      	add	r0, sp, #40	@ 0x28
c0de07d4:	2120      	movs	r1, #32
c0de07d6:	f006 fdeb 	bl	c0de73b0 <cx_mont_alloc>
c0de07da:	b968      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07dc:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07de:	a80a      	add	r0, sp, #40	@ 0x28
c0de07e0:	f006 fdf0 	bl	c0de73c4 <cx_mont_init>
c0de07e4:	b940      	cbnz	r0, c0de07f8 <handler_cmd_Poseidon+0x78>
c0de07e6:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de07ea:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07ec:	2105      	movs	r1, #5
c0de07ee:	2205      	movs	r2, #5
c0de07f0:	4640      	mov	r0, r8
c0de07f2:	f002 fba1 	bl	c0de2f38 <Poseidon_alloc_init>
c0de07f6:	b128      	cbz	r0, c0de0804 <handler_cmd_Poseidon+0x84>
c0de07f8:	f000 fdea 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
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
c0de0818:	f006 fd34 	bl	c0de7284 <cx_bn_init>
c0de081c:	2800      	cmp	r0, #0
c0de081e:	d1eb      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0820:	69e8      	ldr	r0, [r5, #28]
c0de0822:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0824:	4601      	mov	r1, r0
c0de0826:	f006 fdd7 	bl	c0de73d8 <cx_mont_to_montgomery>
c0de082a:	3701      	adds	r7, #1
c0de082c:	3620      	adds	r6, #32
c0de082e:	2800      	cmp	r0, #0
c0de0830:	d0ea      	beq.n	c0de0808 <handler_cmd_Poseidon+0x88>
c0de0832:	e7e1      	b.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0834:	aa08      	add	r2, sp, #32
c0de0836:	4640      	mov	r0, r8
c0de0838:	2100      	movs	r1, #0
c0de083a:	2301      	movs	r3, #1
c0de083c:	f002 fbe2 	bl	c0de3004 <Poseidon>
c0de0840:	6820      	ldr	r0, [r4, #0]
c0de0842:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0844:	7800      	ldrb	r0, [r0, #0]
c0de0846:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de084a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de084e:	4601      	mov	r1, r0
c0de0850:	f006 fdce 	bl	c0de73f0 <cx_mont_from_montgomery>
c0de0854:	2800      	cmp	r0, #0
c0de0856:	d1cf      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0858:	6820      	ldr	r0, [r4, #0]
c0de085a:	a948      	add	r1, sp, #288	@ 0x120
c0de085c:	f000 fdbb 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0860:	2800      	cmp	r0, #0
c0de0862:	d1c9      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0864:	a848      	add	r0, sp, #288	@ 0x120
c0de0866:	2160      	movs	r1, #96	@ 0x60
c0de0868:	f7ff ff10 	bl	c0de068c <io_send_response_pointer>
c0de086c:	a808      	add	r0, sp, #32
c0de086e:	f006 fcf5 	bl	c0de725c <cx_bn_destroy>
c0de0872:	2800      	cmp	r0, #0
c0de0874:	d1c0      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de0876:	f006 fcd3 	bl	c0de7220 <cx_bn_unlock>
c0de087a:	2800      	cmp	r0, #0
c0de087c:	d1bc      	bne.n	c0de07f8 <handler_cmd_Poseidon+0x78>
c0de087e:	2000      	movs	r0, #0
c0de0880:	e7bc      	b.n	c0de07fc <handler_cmd_Poseidon+0x7c>
c0de0882:	bf00      	nop
c0de0884:	000078a4 	.word	0x000078a4
c0de0888:	00007800 	.word	0x00007800

c0de088c <handler_cmd_Poseidon_ithRC>:
c0de088c:	b570      	push	{r4, r5, r6, lr}
c0de088e:	b0d0      	sub	sp, #320	@ 0x140
c0de0890:	4604      	mov	r4, r0
c0de0892:	f000 fd99 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0896:	bba0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de0898:	a848      	add	r0, sp, #288	@ 0x120
c0de089a:	491d      	ldr	r1, [pc, #116]	@ (c0de0910 <handler_cmd_Poseidon_ithRC+0x84>)
c0de089c:	2220      	movs	r2, #32
c0de089e:	4479      	add	r1, pc
c0de08a0:	f006 ff7c 	bl	c0de779c <__aeabi_memcpy>
c0de08a4:	ad01      	add	r5, sp, #4
c0de08a6:	491b      	ldr	r1, [pc, #108]	@ (c0de0914 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08a8:	2220      	movs	r2, #32
c0de08aa:	4628      	mov	r0, r5
c0de08ac:	4479      	add	r1, pc
c0de08ae:	f006 ff75 	bl	c0de779c <__aeabi_memcpy>
c0de08b2:	a809      	add	r0, sp, #36	@ 0x24
c0de08b4:	2120      	movs	r1, #32
c0de08b6:	462a      	mov	r2, r5
c0de08b8:	f000 fd9e 	bl	c0de13f8 <OUTLINED_FUNCTION_6>
c0de08bc:	bb08      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08be:	a80a      	add	r0, sp, #40	@ 0x28
c0de08c0:	2120      	movs	r1, #32
c0de08c2:	f006 fd75 	bl	c0de73b0 <cx_mont_alloc>
c0de08c6:	b9e0      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08c8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08ca:	a80a      	add	r0, sp, #40	@ 0x28
c0de08cc:	f006 fd7a 	bl	c0de73c4 <cx_mont_init>
c0de08d0:	b9b8      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08d2:	a80c      	add	r0, sp, #48	@ 0x30
c0de08d4:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08d6:	2105      	movs	r1, #5
c0de08d8:	2205      	movs	r2, #5
c0de08da:	f002 fb2d 	bl	c0de2f38 <Poseidon_alloc_init>
c0de08de:	b980      	cbnz	r0, c0de0902 <handler_cmd_Poseidon_ithRC+0x76>
c0de08e0:	6820      	ldr	r0, [r4, #0]
c0de08e2:	7806      	ldrb	r6, [r0, #0]
c0de08e4:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08e6:	ad48      	add	r5, sp, #288	@ 0x120
c0de08e8:	b12e      	cbz	r6, c0de08f6 <handler_cmd_Poseidon_ithRC+0x6a>
c0de08ea:	4620      	mov	r0, r4
c0de08ec:	4629      	mov	r1, r5
c0de08ee:	f002 fb1f 	bl	c0de2f30 <Poseidon_getNext_RC>
c0de08f2:	3e01      	subs	r6, #1
c0de08f4:	e7f8      	b.n	c0de08e8 <handler_cmd_Poseidon_ithRC+0x5c>
c0de08f6:	a848      	add	r0, sp, #288	@ 0x120
c0de08f8:	f000 fd99 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de08fc:	f006 fc90 	bl	c0de7220 <cx_bn_unlock>
c0de0900:	b118      	cbz	r0, c0de090a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0902:	f000 fd65 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0906:	b050      	add	sp, #320	@ 0x140
c0de0908:	bd70      	pop	{r4, r5, r6, pc}
c0de090a:	2000      	movs	r0, #0
c0de090c:	e7fb      	b.n	c0de0906 <handler_cmd_Poseidon_ithRC+0x7a>
c0de090e:	bf00      	nop
c0de0910:	00007576 	.word	0x00007576
c0de0914:	00007708 	.word	0x00007708

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
c0de094a:	f000 fd3d 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de094e:	b9e8      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0950:	a804      	add	r0, sp, #16
c0de0952:	f000 fd69 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de0956:	b9c8      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0958:	a804      	add	r0, sp, #16
c0de095a:	a901      	add	r1, sp, #4
c0de095c:	f001 fdd0 	bl	c0de2500 <tEdwards_alloc>
c0de0960:	b9a0      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0962:	a804      	add	r0, sp, #16
c0de0964:	a91a      	add	r1, sp, #104	@ 0x68
c0de0966:	aa01      	add	r2, sp, #4
c0de0968:	f001 f9d8 	bl	c0de1d1c <zkn_prv2pub>
c0de096c:	b970      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de096e:	a804      	add	r0, sp, #16
c0de0970:	f104 0320 	add.w	r3, r4, #32
c0de0974:	a901      	add	r1, sp, #4
c0de0976:	f000 fd42 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de097a:	b938      	cbnz	r0, c0de098c <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de097c:	9804      	ldr	r0, [sp, #16]
c0de097e:	0041      	lsls	r1, r0, #1
c0de0980:	a85a      	add	r0, sp, #360	@ 0x168
c0de0982:	f7ff fe83 	bl	c0de068c <io_send_response_pointer>
c0de0986:	f006 fc4b 	bl	c0de7220 <cx_bn_unlock>
c0de098a:	b120      	cbz	r0, c0de0996 <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de098c:	f000 fd20 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
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
c0de09ce:	f000 fcfb 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
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
c0de09f2:	f000 fd19 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de09f6:	bb10      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09f8:	a815      	add	r0, sp, #84	@ 0x54
c0de09fa:	a912      	add	r1, sp, #72	@ 0x48
c0de09fc:	f001 fd80 	bl	c0de2500 <tEdwards_alloc>
c0de0a00:	b9e8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a02:	a815      	add	r0, sp, #84	@ 0x54
c0de0a04:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a06:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a08:	f001 f988 	bl	c0de1d1c <zkn_prv2pub>
c0de0a0c:	b9b8      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a0e:	a815      	add	r0, sp, #84	@ 0x54
c0de0a10:	f104 0320 	add.w	r3, r4, #32
c0de0a14:	a912      	add	r1, sp, #72	@ 0x48
c0de0a16:	f000 fcf2 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0a1a:	b980      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a1c:	2020      	movs	r0, #32
c0de0a1e:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a22:	a815      	add	r0, sp, #84	@ 0x54
c0de0a24:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a26:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a28:	ab02      	add	r3, sp, #8
c0de0a2a:	f001 f99f 	bl	c0de1d6c <EddsaPoseidon_Sign_final>
c0de0a2e:	b930      	cbnz	r0, c0de0a3e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a30:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a32:	2160      	movs	r1, #96	@ 0x60
c0de0a34:	f7ff fe2a 	bl	c0de068c <io_send_response_pointer>
c0de0a38:	f006 fbf2 	bl	c0de7220 <cx_bn_unlock>
c0de0a3c:	b120      	cbz	r0, c0de0a48 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a3e:	f000 fcc7 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
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
c0de0a6c:	f000 fcac 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0a70:	2800      	cmp	r0, #0
c0de0a72:	d154      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a74:	af14      	add	r7, sp, #80	@ 0x50
c0de0a76:	4631      	mov	r1, r6
c0de0a78:	4638      	mov	r0, r7
c0de0a7a:	f001 fec1 	bl	c0de2800 <tEdwards_Curve_alloc_init>
c0de0a7e:	2800      	cmp	r0, #0
c0de0a80:	d14d      	bne.n	c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a82:	f107 060c 	add.w	r6, r7, #12
c0de0a86:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a8a:	4638      	mov	r0, r7
c0de0a8c:	4631      	mov	r1, r6
c0de0a8e:	f001 fe60 	bl	c0de2752 <tEdwards_IsOnCurve>
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
c0de0aae:	f006 fe75 	bl	c0de779c <__aeabi_memcpy>
c0de0ab2:	af01      	add	r7, sp, #4
c0de0ab4:	491e      	ldr	r1, [pc, #120]	@ (c0de0b30 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ab6:	2220      	movs	r2, #32
c0de0ab8:	4638      	mov	r0, r7
c0de0aba:	4479      	add	r1, pc
c0de0abc:	f006 fe6e 	bl	c0de779c <__aeabi_memcpy>
c0de0ac0:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0ac4:	a814      	add	r0, sp, #80	@ 0x50
c0de0ac6:	4651      	mov	r1, sl
c0de0ac8:	463a      	mov	r2, r7
c0de0aca:	4643      	mov	r3, r8
c0de0acc:	f002 f889 	bl	c0de2be2 <tEdwards_alloc_init>
c0de0ad0:	bb28      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad2:	a814      	add	r0, sp, #80	@ 0x50
c0de0ad4:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0ad8:	4631      	mov	r1, r6
c0de0ada:	f001 fe3a 	bl	c0de2752 <tEdwards_IsOnCurve>
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
c0de0afc:	f002 f8f6 	bl	c0de2cec <tEdwards_scalarMul>
c0de0b00:	b968      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b02:	a814      	add	r0, sp, #80	@ 0x50
c0de0b04:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b08:	a911      	add	r1, sp, #68	@ 0x44
c0de0b0a:	f000 fc78 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0b0e:	b930      	cbnz	r0, c0de0b1e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b10:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b14:	f000 fc6c 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de0b18:	f006 fb82 	bl	c0de7220 <cx_bn_unlock>
c0de0b1c:	b120      	cbz	r0, c0de0b28 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b1e:	f000 fc57 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de0b22:	b06b      	add	sp, #428	@ 0x1ac
c0de0b24:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b28:	2000      	movs	r0, #0
c0de0b2a:	e7fa      	b.n	c0de0b22 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b2c:	00007528 	.word	0x00007528
c0de0b30:	0000753a 	.word	0x0000753a

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
c0de0b60:	f000 fc32 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0b64:	b920      	cbnz	r0, c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0b66:	a819      	add	r0, sp, #100	@ 0x64
c0de0b68:	4631      	mov	r1, r6
c0de0b6a:	f001 fe49 	bl	c0de2800 <tEdwards_Curve_alloc_init>
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
c0de0b8c:	f006 fe06 	bl	c0de779c <__aeabi_memcpy>
c0de0b90:	af03      	add	r7, sp, #12
c0de0b92:	4940      	ldr	r1, [pc, #256]	@ (c0de0c94 <handler_cmd_tEdwards+0x160>)
c0de0b94:	4479      	add	r1, pc
c0de0b96:	e009      	b.n	c0de0bac <handler_cmd_tEdwards+0x78>
c0de0b98:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b9a:	493f      	ldr	r1, [pc, #252]	@ (c0de0c98 <handler_cmd_tEdwards+0x164>)
c0de0b9c:	2220      	movs	r2, #32
c0de0b9e:	4630      	mov	r0, r6
c0de0ba0:	4479      	add	r1, pc
c0de0ba2:	f006 fdfb 	bl	c0de779c <__aeabi_memcpy>
c0de0ba6:	af03      	add	r7, sp, #12
c0de0ba8:	493c      	ldr	r1, [pc, #240]	@ (c0de0c9c <handler_cmd_tEdwards+0x168>)
c0de0baa:	4479      	add	r1, pc
c0de0bac:	4638      	mov	r0, r7
c0de0bae:	2220      	movs	r2, #32
c0de0bb0:	f006 fdf4 	bl	c0de779c <__aeabi_memcpy>
c0de0bb4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bb6:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bb8:	4631      	mov	r1, r6
c0de0bba:	463a      	mov	r2, r7
c0de0bbc:	f002 f811 	bl	c0de2be2 <tEdwards_alloc_init>
c0de0bc0:	2800      	cmp	r0, #0
c0de0bc2:	d1d5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bc4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bc8:	aa03      	add	r2, sp, #12
c0de0bca:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bcc:	f002 f809 	bl	c0de2be2 <tEdwards_alloc_init>
c0de0bd0:	2800      	cmp	r0, #0
c0de0bd2:	d1cd      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bd4:	2000      	movs	r0, #0
c0de0bd6:	f10d 020b 	add.w	r2, sp, #11
c0de0bda:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bde:	a819      	add	r0, sp, #100	@ 0x64
c0de0be0:	a916      	add	r1, sp, #88	@ 0x58
c0de0be2:	f001 fdb6 	bl	c0de2752 <tEdwards_IsOnCurve>
c0de0be6:	2800      	cmp	r0, #0
c0de0be8:	d1c2      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0bea:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bee:	2801      	cmp	r0, #1
c0de0bf0:	d142      	bne.n	c0de0c78 <handler_cmd_tEdwards+0x144>
c0de0bf2:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf4:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0bf6:	f10d 020b 	add.w	r2, sp, #11
c0de0bfa:	4631      	mov	r1, r6
c0de0bfc:	f001 fda9 	bl	c0de2752 <tEdwards_IsOnCurve>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d1b5      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c04:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c08:	2801      	cmp	r0, #1
c0de0c0a:	d138      	bne.n	c0de0c7e <handler_cmd_tEdwards+0x14a>
c0de0c0c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c0e:	f10d 010b 	add.w	r1, sp, #11
c0de0c12:	f006 fbc3 	bl	c0de739c <cx_bn_is_prime>
c0de0c16:	2800      	cmp	r0, #0
c0de0c18:	d1aa      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c1a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1e:	2801      	cmp	r0, #1
c0de0c20:	d130      	bne.n	c0de0c84 <handler_cmd_tEdwards+0x150>
c0de0c22:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c24:	f10d 010b 	add.w	r1, sp, #11
c0de0c28:	f006 fbb8 	bl	c0de739c <cx_bn_is_prime>
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
c0de0c46:	f002 f851 	bl	c0de2cec <tEdwards_scalarMul>
c0de0c4a:	2800      	cmp	r0, #0
c0de0c4c:	d190      	bne.n	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c4e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c50:	f104 0320 	add.w	r3, r4, #32
c0de0c54:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c56:	f000 fbd2 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de0c5a:	2800      	cmp	r0, #0
c0de0c5c:	f47f af88 	bne.w	c0de0b70 <handler_cmd_tEdwards+0x3c>
c0de0c60:	f006 fade 	bl	c0de7220 <cx_bn_unlock>
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
c0de0c90:	000072ca 	.word	0x000072ca
c0de0c94:	00007340 	.word	0x00007340
c0de0c98:	000072d4 	.word	0x000072d4
c0de0c9c:	0000724a 	.word	0x0000724a

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
c0de0cc0:	f000 fb82 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0cc4:	bb28      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cc6:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0cca:	4621      	mov	r1, r4
c0de0ccc:	4640      	mov	r0, r8
c0de0cce:	f001 fd97 	bl	c0de2800 <tEdwards_Curve_alloc_init>
c0de0cd2:	b9f0      	cbnz	r0, c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0cd4:	a827      	add	r0, sp, #156	@ 0x9c
c0de0cd6:	f000 fb81 	bl	c0de13dc <OUTLINED_FUNCTION_3>
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
c0de0d06:	f006 fa9d 	bl	c0de7244 <cx_bn_alloc_init>
c0de0d0a:	2800      	cmp	r0, #0
c0de0d0c:	462a      	mov	r2, r5
c0de0d0e:	4621      	mov	r1, r4
c0de0d10:	d0f1      	beq.n	c0de0cf6 <handler_cmd_Interpolate+0x56>
c0de0d12:	f000 fb5d 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
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
c0de0d40:	f006 fa76 	bl	c0de7230 <cx_bn_alloc>
c0de0d44:	2800      	cmp	r0, #0
c0de0d46:	d1e4      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d48:	6820      	ldr	r0, [r4, #0]
c0de0d4a:	4631      	mov	r1, r6
c0de0d4c:	f006 fab0 	bl	c0de72b0 <cx_bn_set_u32>
c0de0d50:	2800      	cmp	r0, #0
c0de0d52:	d1de      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d54:	4640      	mov	r0, r8
c0de0d56:	4659      	mov	r1, fp
c0de0d58:	f001 fbd2 	bl	c0de2500 <tEdwards_alloc>
c0de0d5c:	2800      	cmp	r0, #0
c0de0d5e:	d1d8      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d60:	9602      	str	r6, [sp, #8]
c0de0d62:	eb07 060a 	add.w	r6, r7, sl
c0de0d66:	9901      	ldr	r1, [sp, #4]
c0de0d68:	4640      	mov	r0, r8
c0de0d6a:	465b      	mov	r3, fp
c0de0d6c:	4632      	mov	r2, r6
c0de0d6e:	f001 ff57 	bl	c0de2c20 <tEdwards_scalarMul_bn>
c0de0d72:	2800      	cmp	r0, #0
c0de0d74:	d1cd      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d76:	6820      	ldr	r0, [r4, #0]
c0de0d78:	4629      	mov	r1, r5
c0de0d7a:	f000 fb2c 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0d7e:	2800      	cmp	r0, #0
c0de0d80:	d1c7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d82:	6830      	ldr	r0, [r6, #0]
c0de0d84:	f105 0120 	add.w	r1, r5, #32
c0de0d88:	f000 fb25 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0d8c:	2800      	cmp	r0, #0
c0de0d8e:	d1c0      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0d90:	4640      	mov	r0, r8
c0de0d92:	4659      	mov	r1, fp
c0de0d94:	f001 fee5 	bl	c0de2b62 <tEdwards_normalize>
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
c0de0dba:	f001 f99e 	bl	c0de20fa <zkn_frost_interpolate_secrets>
c0de0dbe:	2800      	cmp	r0, #0
c0de0dc0:	d1a7      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dc2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dc4:	a944      	add	r1, sp, #272	@ 0x110
c0de0dc6:	2220      	movs	r2, #32
c0de0dc8:	31c0      	adds	r1, #192	@ 0xc0
c0de0dca:	f006 fa7b 	bl	c0de72c4 <cx_bn_export>
c0de0dce:	2800      	cmp	r0, #0
c0de0dd0:	d19f      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0dd2:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dd4:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dd6:	ab03      	add	r3, sp, #12
c0de0dd8:	9901      	ldr	r1, [sp, #4]
c0de0dda:	f001 ff21 	bl	c0de2c20 <tEdwards_scalarMul_bn>
c0de0dde:	2800      	cmp	r0, #0
c0de0de0:	d197      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0de2:	a844      	add	r0, sp, #272	@ 0x110
c0de0de4:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0de8:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dea:	a903      	add	r1, sp, #12
c0de0dec:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0dee:	f001 fe92 	bl	c0de2b16 <tEdwards_export>
c0de0df2:	2800      	cmp	r0, #0
c0de0df4:	d18d      	bne.n	c0de0d12 <handler_cmd_Interpolate+0x72>
c0de0df6:	a844      	add	r0, sp, #272	@ 0x110
c0de0df8:	f000 fafa 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de0dfc:	f006 fa10 	bl	c0de7220 <cx_bn_unlock>
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
c0de0e2a:	f000 facd 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0e2e:	bb90      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e30:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e32:	f000 faf9 	bl	c0de1428 <OUTLINED_FUNCTION_11>
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
c0de0e5c:	f005 ff5b 	bl	c0de6d16 <cx_blake2b_512_hash_iovec>
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
c0de0e78:	f006 f9e4 	bl	c0de7244 <cx_bn_alloc_init>
c0de0e7c:	2800      	cmp	r0, #0
c0de0e7e:	4632      	mov	r2, r6
c0de0e80:	4629      	mov	r1, r5
c0de0e82:	d0f1      	beq.n	c0de0e68 <handler_cmd_Split+0x5e>
c0de0e84:	e007      	b.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0e86:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e88:	f000 faa8 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0e8c:	b918      	cbnz	r0, c0de0e96 <handler_cmd_Split+0x8c>
c0de0e8e:	a809      	add	r0, sp, #36	@ 0x24
c0de0e90:	f000 faa4 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0e94:	b128      	cbz	r0, c0de0ea2 <handler_cmd_Split+0x98>
c0de0e96:	f000 fa9b 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
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
c0de0ec2:	f006 f9b5 	bl	c0de7230 <cx_bn_alloc>
c0de0ec6:	2800      	cmp	r0, #0
c0de0ec8:	d1e5      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0eca:	a801      	add	r0, sp, #4
c0de0ecc:	2120      	movs	r1, #32
c0de0ece:	eb00 0508 	add.w	r5, r0, r8
c0de0ed2:	4628      	mov	r0, r5
c0de0ed4:	f006 f9ac 	bl	c0de7230 <cx_bn_alloc>
c0de0ed8:	2800      	cmp	r0, #0
c0de0eda:	d1dc      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0edc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ede:	4621      	mov	r1, r4
c0de0ee0:	f006 f9e6 	bl	c0de72b0 <cx_bn_set_u32>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d1d6      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ee8:	6828      	ldr	r0, [r5, #0]
c0de0eea:	4621      	mov	r1, r4
c0de0eec:	f006 f9e0 	bl	c0de72b0 <cx_bn_set_u32>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1d0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0ef4:	4650      	mov	r0, sl
c0de0ef6:	4631      	mov	r1, r6
c0de0ef8:	f001 fb02 	bl	c0de2500 <tEdwards_alloc>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1ca      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f00:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f04:	2202      	movs	r2, #2
c0de0f06:	9000      	str	r0, [sp, #0]
c0de0f08:	4650      	mov	r0, sl
c0de0f0a:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f0c:	f001 f937 	bl	c0de217e <zkn_evalshare>
c0de0f10:	2800      	cmp	r0, #0
c0de0f12:	d1c0      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f14:	6838      	ldr	r0, [r7, #0]
c0de0f16:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f18:	f006 f9c0 	bl	c0de729c <cx_bn_copy>
c0de0f1c:	2800      	cmp	r0, #0
c0de0f1e:	d1ba      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f20:	4650      	mov	r0, sl
c0de0f22:	4631      	mov	r1, r6
c0de0f24:	f001 fe1d 	bl	c0de2b62 <tEdwards_normalize>
c0de0f28:	2800      	cmp	r0, #0
c0de0f2a:	d1b4      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f2c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f2e:	4659      	mov	r1, fp
c0de0f30:	f000 fa51 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1ae      	bne.n	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f38:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f3a:	f10b 0120 	add.w	r1, fp, #32
c0de0f3e:	f000 fa4a 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
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
c0de0f60:	f006 f97c 	bl	c0de725c <cx_bn_destroy>
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
c0de0f7c:	f001 f8bd 	bl	c0de20fa <zkn_frost_interpolate_secrets>
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	f47f af88 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f86:	a848      	add	r0, sp, #288	@ 0x120
c0de0f88:	f000 fa32 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de0f8c:	f006 f948 	bl	c0de7220 <cx_bn_unlock>
c0de0f90:	2800      	cmp	r0, #0
c0de0f92:	f47f af80 	bne.w	c0de0e96 <handler_cmd_Split+0x8c>
c0de0f96:	2000      	movs	r0, #0
c0de0f98:	e77f      	b.n	c0de0e9a <handler_cmd_Split+0x90>

c0de0f9a <handler_cmd_frostH>:
c0de0f9a:	b5b0      	push	{r4, r5, r7, lr}
c0de0f9c:	b0d8      	sub	sp, #352	@ 0x160
c0de0f9e:	4604      	mov	r4, r0
c0de0fa0:	f000 fa12 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de0fa4:	2800      	cmp	r0, #0
c0de0fa6:	d142      	bne.n	c0de102e <handler_cmd_frostH+0x94>
c0de0fa8:	6820      	ldr	r0, [r4, #0]
c0de0faa:	7801      	ldrb	r1, [r0, #0]
c0de0fac:	a802      	add	r0, sp, #8
c0de0fae:	f001 fc27 	bl	c0de2800 <tEdwards_Curve_alloc_init>
c0de0fb2:	bbe0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fb4:	a801      	add	r0, sp, #4
c0de0fb6:	f000 fa11 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de0fba:	bbc0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fbc:	f000 fa11 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fc0:	f002 f93c 	bl	c0de323c <Babyfrost_H1>
c0de0fc4:	bb98      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fc6:	9801      	ldr	r0, [sp, #4]
c0de0fc8:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fca:	2220      	movs	r2, #32
c0de0fcc:	4629      	mov	r1, r5
c0de0fce:	f006 f979 	bl	c0de72c4 <cx_bn_export>
c0de0fd2:	bb60      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fd4:	f000 fa05 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fd8:	f002 f93e 	bl	c0de3258 <Babyfrost_H3>
c0de0fdc:	bb38      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	f105 0120 	add.w	r1, r5, #32
c0de0fe4:	f000 f9f7 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0fe8:	bb08      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0fea:	f000 f9fa 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de0fee:	f002 f947 	bl	c0de3280 <Babyfrost_H4>
c0de0ff2:	b9e0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de0ff4:	9801      	ldr	r0, [sp, #4]
c0de0ff6:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0ffa:	f000 f9ec 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de0ffe:	b9b0      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1000:	f000 f9ef 	bl	c0de13e2 <OUTLINED_FUNCTION_4>
c0de1004:	f002 f94a 	bl	c0de329c <Babyfrost_H5>
c0de1008:	b988      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de100a:	9801      	ldr	r0, [sp, #4]
c0de100c:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1010:	f000 f9e1 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de1014:	b958      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1016:	9804      	ldr	r0, [sp, #16]
c0de1018:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de101c:	f000 f9db 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de1020:	b928      	cbnz	r0, c0de102e <handler_cmd_frostH+0x94>
c0de1022:	a818      	add	r0, sp, #96	@ 0x60
c0de1024:	f000 f9e4 	bl	c0de13f0 <OUTLINED_FUNCTION_5>
c0de1028:	f006 f8fa 	bl	c0de7220 <cx_bn_unlock>
c0de102c:	b118      	cbz	r0, c0de1036 <handler_cmd_frostH+0x9c>
c0de102e:	f000 f9cf 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de1032:	b058      	add	sp, #352	@ 0x160
c0de1034:	bdb0      	pop	{r4, r5, r7, pc}
c0de1036:	2000      	movs	r0, #0
c0de1038:	e7fb      	b.n	c0de1032 <handler_cmd_frostH+0x98>
	...

c0de103c <handler_cmd_encodeCommitment>:
c0de103c:	b510      	push	{r4, lr}
c0de103e:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de1042:	4604      	mov	r4, r0
c0de1044:	f000 f9c0 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de1048:	bb10      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de104a:	6820      	ldr	r0, [r4, #0]
c0de104c:	7801      	ldrb	r1, [r0, #0]
c0de104e:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1050:	f001 fbd6 	bl	c0de2800 <tEdwards_Curve_alloc_init>
c0de1054:	b9e0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de1056:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1058:	f000 f9c0 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de105c:	b9c0      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de105e:	ac01      	add	r4, sp, #4
c0de1060:	4910      	ldr	r1, [pc, #64]	@ (c0de10a4 <handler_cmd_encodeCommitment+0x68>)
c0de1062:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1066:	4620      	mov	r0, r4
c0de1068:	4479      	add	r1, pc
c0de106a:	f006 fb97 	bl	c0de779c <__aeabi_memcpy>
c0de106e:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1070:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1072:	4621      	mov	r1, r4
c0de1074:	2203      	movs	r2, #3
c0de1076:	f001 f8bb 	bl	c0de21f0 <zkn_encode_group_commitmentHash>
c0de107a:	b948      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de107c:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de107e:	a990      	add	r1, sp, #576	@ 0x240
c0de1080:	2220      	movs	r2, #32
c0de1082:	3120      	adds	r1, #32
c0de1084:	f006 f91e 	bl	c0de72c4 <cx_bn_export>
c0de1088:	b910      	cbnz	r0, c0de1090 <handler_cmd_encodeCommitment+0x54>
c0de108a:	f006 f8c9 	bl	c0de7220 <cx_bn_unlock>
c0de108e:	b120      	cbz	r0, c0de109a <handler_cmd_encodeCommitment+0x5e>
c0de1090:	f000 f99e 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de1094:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de1098:	bd10      	pop	{r4, pc}
c0de109a:	a890      	add	r0, sp, #576	@ 0x240
c0de109c:	f000 f9c7 	bl	c0de142e <OUTLINED_FUNCTION_12>
c0de10a0:	2000      	movs	r0, #0
c0de10a2:	e7f7      	b.n	c0de1094 <handler_cmd_encodeCommitment+0x58>
c0de10a4:	0000706c 	.word	0x0000706c

c0de10a8 <handler_cmd_GroupCommitment>:
c0de10a8:	b570      	push	{r4, r5, r6, lr}
c0de10aa:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10ae:	4604      	mov	r4, r0
c0de10b0:	f000 f98a 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de10b4:	bb58      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10b6:	6820      	ldr	r0, [r4, #0]
c0de10b8:	7801      	ldrb	r1, [r0, #0]
c0de10ba:	a894      	add	r0, sp, #592	@ 0x250
c0de10bc:	f001 fba0 	bl	c0de2800 <tEdwards_Curve_alloc_init>
c0de10c0:	bb28      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10c2:	a894      	add	r0, sp, #592	@ 0x250
c0de10c4:	ac91      	add	r4, sp, #580	@ 0x244
c0de10c6:	4621      	mov	r1, r4
c0de10c8:	f001 fa1a 	bl	c0de2500 <tEdwards_alloc>
c0de10cc:	b9f8      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10ce:	ad19      	add	r5, sp, #100	@ 0x64
c0de10d0:	4914      	ldr	r1, [pc, #80]	@ (c0de1124 <handler_cmd_GroupCommitment+0x7c>)
c0de10d2:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10d6:	4628      	mov	r0, r5
c0de10d8:	4479      	add	r1, pc
c0de10da:	f006 fb5f 	bl	c0de779c <__aeabi_memcpy>
c0de10de:	ae01      	add	r6, sp, #4
c0de10e0:	4911      	ldr	r1, [pc, #68]	@ (c0de1128 <handler_cmd_GroupCommitment+0x80>)
c0de10e2:	2260      	movs	r2, #96	@ 0x60
c0de10e4:	4630      	mov	r0, r6
c0de10e6:	4479      	add	r1, pc
c0de10e8:	f006 fb58 	bl	c0de779c <__aeabi_memcpy>
c0de10ec:	9400      	str	r4, [sp, #0]
c0de10ee:	a894      	add	r0, sp, #592	@ 0x250
c0de10f0:	4629      	mov	r1, r5
c0de10f2:	f000 f995 	bl	c0de1420 <OUTLINED_FUNCTION_10>
c0de10f6:	b950      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de10f8:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de10fa:	a894      	add	r0, sp, #592	@ 0x250
c0de10fc:	a991      	add	r1, sp, #580	@ 0x244
c0de10fe:	f102 0320 	add.w	r3, r2, #32
c0de1102:	f001 fd08 	bl	c0de2b16 <tEdwards_export>
c0de1106:	b910      	cbnz	r0, c0de110e <handler_cmd_GroupCommitment+0x66>
c0de1108:	f006 f88a 	bl	c0de7220 <cx_bn_unlock>
c0de110c:	b120      	cbz	r0, c0de1118 <handler_cmd_GroupCommitment+0x70>
c0de110e:	f000 f95f 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de1112:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1116:	bd70      	pop	{r4, r5, r6, pc}
c0de1118:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de111a:	2140      	movs	r1, #64	@ 0x40
c0de111c:	f7ff fab6 	bl	c0de068c <io_send_response_pointer>
c0de1120:	2000      	movs	r0, #0
c0de1122:	e7f6      	b.n	c0de1112 <handler_cmd_GroupCommitment+0x6a>
c0de1124:	000071dc 	.word	0x000071dc
c0de1128:	000073ae 	.word	0x000073ae

c0de112c <handler_cmd_BindingFactors>:
c0de112c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1130:	f5ad 7d65 	sub.w	sp, sp, #916	@ 0x394
c0de1134:	4604      	mov	r4, r0
c0de1136:	f000 f947 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de113a:	2800      	cmp	r0, #0
c0de113c:	d15c      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de113e:	6820      	ldr	r0, [r4, #0]
c0de1140:	7801      	ldrb	r1, [r0, #0]
c0de1142:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1144:	f001 fb5c 	bl	c0de2800 <tEdwards_Curve_alloc_init>
c0de1148:	2800      	cmp	r0, #0
c0de114a:	d155      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de114c:	a88e      	add	r0, sp, #568	@ 0x238
c0de114e:	f000 f945 	bl	c0de13dc <OUTLINED_FUNCTION_3>
c0de1152:	2800      	cmp	r0, #0
c0de1154:	d150      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1156:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1158:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de115a:	4621      	mov	r1, r4
c0de115c:	f001 f9d0 	bl	c0de2500 <tEdwards_alloc>
c0de1160:	2800      	cmp	r0, #0
c0de1162:	d149      	bne.n	c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1164:	ad13      	add	r5, sp, #76	@ 0x4c
c0de1166:	4928      	ldr	r1, [pc, #160]	@ (c0de1208 <handler_cmd_BindingFactors+0xdc>)
c0de1168:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de116c:	4628      	mov	r0, r5
c0de116e:	4479      	add	r1, pc
c0de1170:	f006 fb14 	bl	c0de779c <__aeabi_memcpy>
c0de1174:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de1176:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1178:	4629      	mov	r1, r5
c0de117a:	2203      	movs	r2, #3
c0de117c:	f001 f838 	bl	c0de21f0 <zkn_encode_group_commitmentHash>
c0de1180:	bbd0      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de1182:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de1186:	f000 f945 	bl	c0de1414 <OUTLINED_FUNCTION_9>
c0de118a:	bba8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de118c:	491f      	ldr	r1, [pc, #124]	@ (c0de120c <handler_cmd_BindingFactors+0xe0>)
c0de118e:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de1192:	2220      	movs	r2, #32
c0de1194:	4650      	mov	r0, sl
c0de1196:	4479      	add	r1, pc
c0de1198:	f006 fb00 	bl	c0de779c <__aeabi_memcpy>
c0de119c:	ad03      	add	r5, sp, #12
c0de119e:	491c      	ldr	r1, [pc, #112]	@ (c0de1210 <handler_cmd_BindingFactors+0xe4>)
c0de11a0:	2220      	movs	r2, #32
c0de11a2:	4628      	mov	r0, r5
c0de11a4:	4479      	add	r1, pc
c0de11a6:	f006 faf9 	bl	c0de779c <__aeabi_memcpy>
c0de11aa:	f000 f92b 	bl	c0de1404 <OUTLINED_FUNCTION_8>
c0de11ae:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11b0:	aa13      	add	r2, sp, #76	@ 0x4c
c0de11b2:	f001 f905 	bl	c0de23c0 <zkn_compute_binding_factors>
c0de11b6:	b9f8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11b8:	9400      	str	r4, [sp, #0]
c0de11ba:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11bc:	a913      	add	r1, sp, #76	@ 0x4c
c0de11be:	f000 f92f 	bl	c0de1420 <OUTLINED_FUNCTION_10>
c0de11c2:	b9c8      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11c4:	a88f      	add	r0, sp, #572	@ 0x23c
c0de11c6:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de11ca:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de11ce:	a98b      	add	r1, sp, #556	@ 0x22c
c0de11d0:	f001 fca1 	bl	c0de2b16 <tEdwards_export>
c0de11d4:	b980      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11d6:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11d8:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11dc:	f000 f8fb 	bl	c0de13d6 <OUTLINED_FUNCTION_2>
c0de11e0:	b950      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11e2:	a8a5      	add	r0, sp, #660	@ 0x294
c0de11e4:	21e0      	movs	r1, #224	@ 0xe0
c0de11e6:	f7ff fa51 	bl	c0de068c <io_send_response_pointer>
c0de11ea:	a88e      	add	r0, sp, #568	@ 0x238
c0de11ec:	f006 f836 	bl	c0de725c <cx_bn_destroy>
c0de11f0:	b910      	cbnz	r0, c0de11f8 <handler_cmd_BindingFactors+0xcc>
c0de11f2:	f006 f815 	bl	c0de7220 <cx_bn_unlock>
c0de11f6:	b128      	cbz	r0, c0de1204 <handler_cmd_BindingFactors+0xd8>
c0de11f8:	f000 f8ea 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de11fc:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de1200:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1204:	2000      	movs	r0, #0
c0de1206:	e7f9      	b.n	c0de11fc <handler_cmd_BindingFactors+0xd0>
c0de1208:	00007386 	.word	0x00007386
c0de120c:	00006d5e 	.word	0x00006d5e
c0de1210:	00006e70 	.word	0x00006e70

c0de1214 <handler_get_insecure_secret>:
c0de1214:	b510      	push	{r4, lr}
c0de1216:	b0ea      	sub	sp, #424	@ 0x1a8
c0de1218:	2100      	movs	r1, #0
c0de121a:	f7ff f8eb 	bl	c0de03f4 <handler_get_public_key>
c0de121e:	4668      	mov	r0, sp
c0de1220:	2106      	movs	r1, #6
c0de1222:	2220      	movs	r2, #32
c0de1224:	f005 fd98 	bl	c0de6d58 <cx_hash_init_ex>
c0de1228:	b978      	cbnz	r0, c0de124a <handler_get_insecure_secret+0x36>
c0de122a:	480c      	ldr	r0, [pc, #48]	@ (c0de125c <handler_get_insecure_secret+0x48>)
c0de122c:	2241      	movs	r2, #65	@ 0x41
c0de122e:	4448      	add	r0, r9
c0de1230:	f100 0108 	add.w	r1, r0, #8
c0de1234:	4668      	mov	r0, sp
c0de1236:	f005 fd94 	bl	c0de6d62 <cx_hash_update>
c0de123a:	b930      	cbnz	r0, c0de124a <handler_get_insecure_secret+0x36>
c0de123c:	4c08      	ldr	r4, [pc, #32]	@ (c0de1260 <handler_get_insecure_secret+0x4c>)
c0de123e:	4668      	mov	r0, sp
c0de1240:	eb09 0104 	add.w	r1, r9, r4
c0de1244:	f005 fd83 	bl	c0de6d4e <cx_hash_final>
c0de1248:	b118      	cbz	r0, c0de1252 <handler_get_insecure_secret+0x3e>
c0de124a:	f000 f8c1 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de124e:	b06a      	add	sp, #424	@ 0x1a8
c0de1250:	bd10      	pop	{r4, pc}
c0de1252:	2001      	movs	r0, #1
c0de1254:	f809 0004 	strb.w	r0, [r9, r4]
c0de1258:	2000      	movs	r0, #0
c0de125a:	e7f8      	b.n	c0de124e <handler_get_insecure_secret+0x3a>
c0de125c:	00000000 	.word	0x00000000
c0de1260:	000002d8 	.word	0x000002d8

c0de1264 <handler_get_insecure_public>:
c0de1264:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1268:	b0ba      	sub	sp, #232	@ 0xe8
c0de126a:	6800      	ldr	r0, [r0, #0]
c0de126c:	21ff      	movs	r1, #255	@ 0xff
c0de126e:	7805      	ldrb	r5, [r0, #0]
c0de1270:	2000      	movs	r0, #0
c0de1272:	ac2a      	add	r4, sp, #168	@ 0xa8
c0de1274:	2840      	cmp	r0, #64	@ 0x40
c0de1276:	d002      	beq.n	c0de127e <handler_get_insecure_public+0x1a>
c0de1278:	5421      	strb	r1, [r4, r0]
c0de127a:	3001      	adds	r0, #1
c0de127c:	e7fa      	b.n	c0de1274 <handler_get_insecure_public+0x10>
c0de127e:	f000 f8a3 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de1282:	bbc8      	cbnz	r0, c0de12f8 <handler_get_insecure_public+0x94>
c0de1284:	a814      	add	r0, sp, #80	@ 0x50
c0de1286:	f000 f8cf 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de128a:	bba8      	cbnz	r0, c0de12f8 <handler_get_insecure_public+0x94>
c0de128c:	af09      	add	r7, sp, #36	@ 0x24
c0de128e:	491f      	ldr	r1, [pc, #124]	@ (c0de130c <handler_get_insecure_public+0xa8>)
c0de1290:	2220      	movs	r2, #32
c0de1292:	4638      	mov	r0, r7
c0de1294:	4479      	add	r1, pc
c0de1296:	f006 fa81 	bl	c0de779c <__aeabi_memcpy>
c0de129a:	ad01      	add	r5, sp, #4
c0de129c:	491c      	ldr	r1, [pc, #112]	@ (c0de1310 <handler_get_insecure_public+0xac>)
c0de129e:	2220      	movs	r2, #32
c0de12a0:	4628      	mov	r0, r5
c0de12a2:	4479      	add	r1, pc
c0de12a4:	f006 fa7a 	bl	c0de779c <__aeabi_memcpy>
c0de12a8:	f10d 0850 	add.w	r8, sp, #80	@ 0x50
c0de12ac:	ae11      	add	r6, sp, #68	@ 0x44
c0de12ae:	4639      	mov	r1, r7
c0de12b0:	462a      	mov	r2, r5
c0de12b2:	4640      	mov	r0, r8
c0de12b4:	4633      	mov	r3, r6
c0de12b6:	f001 fc94 	bl	c0de2be2 <tEdwards_alloc_init>
c0de12ba:	b9e8      	cbnz	r0, c0de12f8 <handler_get_insecure_public+0x94>
c0de12bc:	4812      	ldr	r0, [pc, #72]	@ (c0de1308 <handler_get_insecure_public+0xa4>)
c0de12be:	f108 010c 	add.w	r1, r8, #12
c0de12c2:	2320      	movs	r3, #32
c0de12c4:	9600      	str	r6, [sp, #0]
c0de12c6:	eb09 0200 	add.w	r2, r9, r0
c0de12ca:	4640      	mov	r0, r8
c0de12cc:	f001 fd0e 	bl	c0de2cec <tEdwards_scalarMul>
c0de12d0:	b990      	cbnz	r0, c0de12f8 <handler_get_insecure_public+0x94>
c0de12d2:	a814      	add	r0, sp, #80	@ 0x50
c0de12d4:	a911      	add	r1, sp, #68	@ 0x44
c0de12d6:	f001 fc44 	bl	c0de2b62 <tEdwards_normalize>
c0de12da:	b968      	cbnz	r0, c0de12f8 <handler_get_insecure_public+0x94>
c0de12dc:	a814      	add	r0, sp, #80	@ 0x50
c0de12de:	f104 0320 	add.w	r3, r4, #32
c0de12e2:	a911      	add	r1, sp, #68	@ 0x44
c0de12e4:	f000 f88b 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de12e8:	b930      	cbnz	r0, c0de12f8 <handler_get_insecure_public+0x94>
c0de12ea:	a82a      	add	r0, sp, #168	@ 0xa8
c0de12ec:	2140      	movs	r1, #64	@ 0x40
c0de12ee:	f7ff f9cd 	bl	c0de068c <io_send_response_pointer>
c0de12f2:	f005 ff95 	bl	c0de7220 <cx_bn_unlock>
c0de12f6:	b120      	cbz	r0, c0de1302 <handler_get_insecure_public+0x9e>
c0de12f8:	f000 f86a 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de12fc:	b03a      	add	sp, #232	@ 0xe8
c0de12fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1302:	2000      	movs	r0, #0
c0de1304:	e7fa      	b.n	c0de12fc <handler_get_insecure_public+0x98>
c0de1306:	bf00      	nop
c0de1308:	000002d8 	.word	0x000002d8
c0de130c:	00006d40 	.word	0x00006d40
c0de1310:	00006d52 	.word	0x00006d52

c0de1314 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1314:	b570      	push	{r4, r5, r6, lr}
c0de1316:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de131a:	4606      	mov	r6, r0
c0de131c:	6800      	ldr	r0, [r0, #0]
c0de131e:	2100      	movs	r1, #0
c0de1320:	22ff      	movs	r2, #255	@ 0xff
c0de1322:	7805      	ldrb	r5, [r0, #0]
c0de1324:	ac44      	add	r4, sp, #272	@ 0x110
c0de1326:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de132a:	d002      	beq.n	c0de1332 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1e>
c0de132c:	5462      	strb	r2, [r4, r1]
c0de132e:	3101      	adds	r1, #1
c0de1330:	e7f9      	b.n	c0de1326 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x12>
c0de1332:	6871      	ldr	r1, [r6, #4]
c0de1334:	3001      	adds	r0, #1
c0de1336:	aa24      	add	r2, sp, #144	@ 0x90
c0de1338:	3901      	subs	r1, #1
c0de133a:	b129      	cbz	r1, c0de1348 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de133c:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de1340:	3901      	subs	r1, #1
c0de1342:	f802 3b01 	strb.w	r3, [r2], #1
c0de1346:	e7f8      	b.n	c0de133a <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x26>
c0de1348:	f000 f83e 	bl	c0de13c8 <OUTLINED_FUNCTION_0>
c0de134c:	bb90      	cbnz	r0, c0de13b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de134e:	6830      	ldr	r0, [r6, #0]
c0de1350:	2100      	movs	r1, #0
c0de1352:	aa03      	add	r2, sp, #12
c0de1354:	3001      	adds	r0, #1
c0de1356:	2920      	cmp	r1, #32
c0de1358:	d003      	beq.n	c0de1362 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x4e>
c0de135a:	5c43      	ldrb	r3, [r0, r1]
c0de135c:	5453      	strb	r3, [r2, r1]
c0de135e:	3101      	adds	r1, #1
c0de1360:	e7f9      	b.n	c0de1356 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x42>
c0de1362:	a80e      	add	r0, sp, #56	@ 0x38
c0de1364:	f000 f860 	bl	c0de1428 <OUTLINED_FUNCTION_11>
c0de1368:	bb20      	cbnz	r0, c0de13b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de136a:	a80e      	add	r0, sp, #56	@ 0x38
c0de136c:	a90b      	add	r1, sp, #44	@ 0x2c
c0de136e:	f001 f8c7 	bl	c0de2500 <tEdwards_alloc>
c0de1372:	b9f8      	cbnz	r0, c0de13b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1374:	a80e      	add	r0, sp, #56	@ 0x38
c0de1376:	a924      	add	r1, sp, #144	@ 0x90
c0de1378:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de137a:	f000 fccf 	bl	c0de1d1c <zkn_prv2pub>
c0de137e:	b9c8      	cbnz	r0, c0de13b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1380:	a80e      	add	r0, sp, #56	@ 0x38
c0de1382:	f104 0320 	add.w	r3, r4, #32
c0de1386:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1388:	f000 f839 	bl	c0de13fe <OUTLINED_FUNCTION_7>
c0de138c:	b990      	cbnz	r0, c0de13b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de138e:	2020      	movs	r0, #32
c0de1390:	e9cd 0400 	strd	r0, r4, [sp]
c0de1394:	480b      	ldr	r0, [pc, #44]	@ (c0de13c4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xb0>)
c0de1396:	eb09 0100 	add.w	r1, r9, r0
c0de139a:	a80e      	add	r0, sp, #56	@ 0x38
c0de139c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de139e:	ab03      	add	r3, sp, #12
c0de13a0:	f000 fce4 	bl	c0de1d6c <EddsaPoseidon_Sign_final>
c0de13a4:	b930      	cbnz	r0, c0de13b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de13a6:	a844      	add	r0, sp, #272	@ 0x110
c0de13a8:	2160      	movs	r1, #96	@ 0x60
c0de13aa:	f7ff f96f 	bl	c0de068c <io_send_response_pointer>
c0de13ae:	f005 ff37 	bl	c0de7220 <cx_bn_unlock>
c0de13b2:	b120      	cbz	r0, c0de13be <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xaa>
c0de13b4:	f000 f80c 	bl	c0de13d0 <OUTLINED_FUNCTION_1>
c0de13b8:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de13bc:	bd70      	pop	{r4, r5, r6, pc}
c0de13be:	2000      	movs	r0, #0
c0de13c0:	e7fa      	b.n	c0de13b8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa4>
c0de13c2:	bf00      	nop
c0de13c4:	000002d8 	.word	0x000002d8

c0de13c8 <OUTLINED_FUNCTION_0>:
c0de13c8:	2020      	movs	r0, #32
c0de13ca:	2100      	movs	r1, #0
c0de13cc:	f005 bf1e 	b.w	c0de720c <cx_bn_lock>

c0de13d0 <OUTLINED_FUNCTION_1>:
c0de13d0:	b280      	uxth	r0, r0
c0de13d2:	f7ff b966 	b.w	c0de06a2 <io_send_sw>

c0de13d6 <OUTLINED_FUNCTION_2>:
c0de13d6:	2220      	movs	r2, #32
c0de13d8:	f005 bf74 	b.w	c0de72c4 <cx_bn_export>

c0de13dc <OUTLINED_FUNCTION_3>:
c0de13dc:	2120      	movs	r1, #32
c0de13de:	f005 bf27 	b.w	c0de7230 <cx_bn_alloc>

c0de13e2 <OUTLINED_FUNCTION_4>:
c0de13e2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de13e6:	9b01      	ldr	r3, [sp, #4]
c0de13e8:	9a04      	ldr	r2, [sp, #16]
c0de13ea:	3001      	adds	r0, #1
c0de13ec:	3901      	subs	r1, #1
c0de13ee:	4770      	bx	lr

c0de13f0 <OUTLINED_FUNCTION_5>:
c0de13f0:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de13f4:	f7ff b94a 	b.w	c0de068c <io_send_response_pointer>

c0de13f8 <OUTLINED_FUNCTION_6>:
c0de13f8:	2320      	movs	r3, #32
c0de13fa:	f005 bf23 	b.w	c0de7244 <cx_bn_alloc_init>

c0de13fe <OUTLINED_FUNCTION_7>:
c0de13fe:	4622      	mov	r2, r4
c0de1400:	f001 bb89 	b.w	c0de2b16 <tEdwards_export>

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
c0de141c:	f005 bf52 	b.w	c0de72c4 <cx_bn_export>

c0de1420 <OUTLINED_FUNCTION_10>:
c0de1420:	4632      	mov	r2, r6
c0de1422:	2303      	movs	r3, #3
c0de1424:	f000 bf61 	b.w	c0de22ea <zkn_compute_group_commitment>

c0de1428 <OUTLINED_FUNCTION_11>:
c0de1428:	4629      	mov	r1, r5
c0de142a:	f001 b9e9 	b.w	c0de2800 <tEdwards_Curve_alloc_init>

c0de142e <OUTLINED_FUNCTION_12>:
c0de142e:	2120      	movs	r1, #32
c0de1430:	f7ff b92c 	b.w	c0de068c <io_send_response_pointer>

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
c0de1450:	f006 f9a4 	bl	c0de779c <__aeabi_memcpy>
c0de1454:	2020      	movs	r0, #32
c0de1456:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de145a:	2220      	movs	r2, #32
c0de145c:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1460:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1464:	f006 f99a 	bl	c0de779c <__aeabi_memcpy>
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
c0de1488:	f005 f9d8 	bl	c0de683c <io_send_response_buffers>
c0de148c:	b004      	add	sp, #16
c0de148e:	bd80      	pop	{r7, pc}

c0de1490 <helper_send_response_sig>:
c0de1490:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1492:	b093      	sub	sp, #76	@ 0x4c
c0de1494:	f10d 0402 	add.w	r4, sp, #2
c0de1498:	2149      	movs	r1, #73	@ 0x49
c0de149a:	1c65      	adds	r5, r4, #1
c0de149c:	4628      	mov	r0, r5
c0de149e:	f006 f987 	bl	c0de77b0 <__aeabi_memclr>
c0de14a2:	480b      	ldr	r0, [pc, #44]	@ (c0de14d0 <helper_send_response_sig+0x40>)
c0de14a4:	eb09 0700 	add.w	r7, r9, r0
c0de14a8:	4628      	mov	r0, r5
c0de14aa:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de14ae:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de14b2:	4632      	mov	r2, r6
c0de14b4:	f88d 6002 	strb.w	r6, [sp, #2]
c0de14b8:	f006 f970 	bl	c0de779c <__aeabi_memcpy>
c0de14bc:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de14c0:	1930      	adds	r0, r6, r4
c0de14c2:	7041      	strb	r1, [r0, #1]
c0de14c4:	1cb1      	adds	r1, r6, #2
c0de14c6:	4620      	mov	r0, r4
c0de14c8:	f7ff ffd6 	bl	c0de1478 <io_send_response_pointer>
c0de14cc:	b013      	add	sp, #76	@ 0x4c
c0de14ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de14d0:	00000000 	.word	0x00000000

c0de14d4 <swap_handle_check_address>:
c0de14d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de14d8:	b0bc      	sub	sp, #240	@ 0xf0
c0de14da:	4604      	mov	r4, r0
c0de14dc:	2000      	movs	r0, #0
c0de14de:	68a5      	ldr	r5, [r4, #8]
c0de14e0:	61a0      	str	r0, [r4, #24]
c0de14e2:	2d00      	cmp	r5, #0
c0de14e4:	d04d      	beq.n	c0de1582 <swap_handle_check_address+0xae>
c0de14e6:	6920      	ldr	r0, [r4, #16]
c0de14e8:	2800      	cmp	r0, #0
c0de14ea:	d04a      	beq.n	c0de1582 <swap_handle_check_address+0xae>
c0de14ec:	f006 f9bc 	bl	c0de7868 <strlen>
c0de14f0:	2828      	cmp	r0, #40	@ 0x28
c0de14f2:	d146      	bne.n	c0de1582 <swap_handle_check_address+0xae>
c0de14f4:	7b20      	ldrb	r0, [r4, #12]
c0de14f6:	f04f 0800 	mov.w	r8, #0
c0de14fa:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de14fc:	2161      	movs	r1, #97	@ 0x61
c0de14fe:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de1502:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de1504:	ad15      	add	r5, sp, #84	@ 0x54
c0de1506:	4628      	mov	r0, r5
c0de1508:	f006 f952 	bl	c0de77b0 <__aeabi_memclr>
c0de150c:	ae39      	add	r6, sp, #228	@ 0xe4
c0de150e:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de1512:	4630      	mov	r0, r6
c0de1514:	f004 ff40 	bl	c0de6398 <buffer_read_u8>
c0de1518:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de151c:	af2e      	add	r7, sp, #184	@ 0xb8
c0de151e:	4630      	mov	r0, r6
c0de1520:	4639      	mov	r1, r7
c0de1522:	f004 ff8c 	bl	c0de643e <buffer_read_bip32_path>
c0de1526:	2005      	movs	r0, #5
c0de1528:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de152c:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1530:	463a      	mov	r2, r7
c0de1532:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1536:	e9cd 5100 	strd	r5, r1, [sp]
c0de153a:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de153e:	2000      	movs	r0, #0
c0de1540:	2121      	movs	r1, #33	@ 0x21
c0de1542:	f005 f83d 	bl	c0de65c0 <bip32_derive_with_seed_get_pubkey_256>
c0de1546:	b9e0      	cbnz	r0, c0de1582 <swap_handle_check_address+0xae>
c0de1548:	ad10      	add	r5, sp, #64	@ 0x40
c0de154a:	2114      	movs	r1, #20
c0de154c:	4628      	mov	r0, r5
c0de154e:	f006 f92f 	bl	c0de77b0 <__aeabi_memclr>
c0de1552:	a815      	add	r0, sp, #84	@ 0x54
c0de1554:	4629      	mov	r1, r5
c0de1556:	2214      	movs	r2, #20
c0de1558:	f7fe fd66 	bl	c0de0028 <address_from_pubkey>
c0de155c:	ae05      	add	r6, sp, #20
c0de155e:	2129      	movs	r1, #41	@ 0x29
c0de1560:	4630      	mov	r0, r6
c0de1562:	f006 f925 	bl	c0de77b0 <__aeabi_memclr>
c0de1566:	4628      	mov	r0, r5
c0de1568:	2114      	movs	r1, #20
c0de156a:	4632      	mov	r2, r6
c0de156c:	2329      	movs	r3, #41	@ 0x29
c0de156e:	f005 f905 	bl	c0de677c <format_hex>
c0de1572:	6921      	ldr	r1, [r4, #16]
c0de1574:	4630      	mov	r0, r6
c0de1576:	2229      	movs	r2, #41	@ 0x29
c0de1578:	f006 f97e 	bl	c0de7878 <strncmp>
c0de157c:	b908      	cbnz	r0, c0de1582 <swap_handle_check_address+0xae>
c0de157e:	2001      	movs	r0, #1
c0de1580:	61a0      	str	r0, [r4, #24]
c0de1582:	b03c      	add	sp, #240	@ 0xf0
c0de1584:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de1588 <swap_handle_get_printable_amount>:
c0de1588:	b570      	push	{r4, r5, r6, lr}
c0de158a:	b08c      	sub	sp, #48	@ 0x30
c0de158c:	ac04      	add	r4, sp, #16
c0de158e:	4606      	mov	r6, r0
c0de1590:	211e      	movs	r1, #30
c0de1592:	4620      	mov	r0, r4
c0de1594:	f006 f90c 	bl	c0de77b0 <__aeabi_memclr>
c0de1598:	f106 050e 	add.w	r5, r6, #14
c0de159c:	2132      	movs	r1, #50	@ 0x32
c0de159e:	4628      	mov	r0, r5
c0de15a0:	f006 f906 	bl	c0de77b0 <__aeabi_memclr>
c0de15a4:	2000      	movs	r0, #0
c0de15a6:	7b31      	ldrb	r1, [r6, #12]
c0de15a8:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de15ac:	68b0      	ldr	r0, [r6, #8]
c0de15ae:	aa02      	add	r2, sp, #8
c0de15b0:	f005 fad0 	bl	c0de6b54 <swap_str_to_u64>
c0de15b4:	b178      	cbz	r0, c0de15d6 <swap_handle_get_printable_amount+0x4e>
c0de15b6:	2003      	movs	r0, #3
c0de15b8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de15bc:	211e      	movs	r1, #30
c0de15be:	9000      	str	r0, [sp, #0]
c0de15c0:	4620      	mov	r0, r4
c0de15c2:	f005 f894 	bl	c0de66ee <format_fpu64>
c0de15c6:	9400      	str	r4, [sp, #0]
c0de15c8:	4628      	mov	r0, r5
c0de15ca:	2132      	movs	r1, #50	@ 0x32
c0de15cc:	231e      	movs	r3, #30
c0de15ce:	4a03      	ldr	r2, [pc, #12]	@ (c0de15dc <swap_handle_get_printable_amount+0x54>)
c0de15d0:	447a      	add	r2, pc
c0de15d2:	f005 fc4f 	bl	c0de6e74 <snprintf>
c0de15d6:	b00c      	add	sp, #48	@ 0x30
c0de15d8:	bd70      	pop	{r4, r5, r6, pc}
c0de15da:	bf00      	nop
c0de15dc:	0000673e 	.word	0x0000673e

c0de15e0 <swap_copy_transaction_parameters>:
c0de15e0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de15e2:	b093      	sub	sp, #76	@ 0x4c
c0de15e4:	6985      	ldr	r5, [r0, #24]
c0de15e6:	b3ad      	cbz	r5, c0de1654 <swap_copy_transaction_parameters+0x74>
c0de15e8:	4604      	mov	r4, r0
c0de15ea:	4628      	mov	r0, r5
c0de15ec:	f006 f93c 	bl	c0de7868 <strlen>
c0de15f0:	2828      	cmp	r0, #40	@ 0x28
c0de15f2:	d12f      	bne.n	c0de1654 <swap_copy_transaction_parameters+0x74>
c0de15f4:	68a7      	ldr	r7, [r4, #8]
c0de15f6:	b36f      	cbz	r7, c0de1654 <swap_copy_transaction_parameters+0x74>
c0de15f8:	466e      	mov	r6, sp
c0de15fa:	2148      	movs	r1, #72	@ 0x48
c0de15fc:	4630      	mov	r0, r6
c0de15fe:	f006 f8d7 	bl	c0de77b0 <__aeabi_memclr>
c0de1602:	f106 0018 	add.w	r0, r6, #24
c0de1606:	2100      	movs	r1, #0
c0de1608:	2928      	cmp	r1, #40	@ 0x28
c0de160a:	d009      	beq.n	c0de1620 <swap_copy_transaction_parameters+0x40>
c0de160c:	5c6a      	ldrb	r2, [r5, r1]
c0de160e:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de1612:	b2db      	uxtb	r3, r3
c0de1614:	2b1a      	cmp	r3, #26
c0de1616:	bf38      	it	cc
c0de1618:	3a20      	subcc	r2, #32
c0de161a:	5442      	strb	r2, [r0, r1]
c0de161c:	3101      	adds	r1, #1
c0de161e:	e7f3      	b.n	c0de1608 <swap_copy_transaction_parameters+0x28>
c0de1620:	7b21      	ldrb	r1, [r4, #12]
c0de1622:	f106 0208 	add.w	r2, r6, #8
c0de1626:	4638      	mov	r0, r7
c0de1628:	f005 fa94 	bl	c0de6b54 <swap_str_to_u64>
c0de162c:	b190      	cbz	r0, c0de1654 <swap_copy_transaction_parameters+0x74>
c0de162e:	7d21      	ldrb	r1, [r4, #20]
c0de1630:	6920      	ldr	r0, [r4, #16]
c0de1632:	f106 0210 	add.w	r2, r6, #16
c0de1636:	f005 fa8d 	bl	c0de6b54 <swap_str_to_u64>
c0de163a:	b158      	cbz	r0, c0de1654 <swap_copy_transaction_parameters+0x74>
c0de163c:	2401      	movs	r4, #1
c0de163e:	f88d 4000 	strb.w	r4, [sp]
c0de1642:	f005 fc0b 	bl	c0de6e5c <os_explicit_zero_BSS_segment>
c0de1646:	4805      	ldr	r0, [pc, #20]	@ (c0de165c <swap_copy_transaction_parameters+0x7c>)
c0de1648:	4669      	mov	r1, sp
c0de164a:	2248      	movs	r2, #72	@ 0x48
c0de164c:	4448      	add	r0, r9
c0de164e:	f006 f8a5 	bl	c0de779c <__aeabi_memcpy>
c0de1652:	e000      	b.n	c0de1656 <swap_copy_transaction_parameters+0x76>
c0de1654:	2400      	movs	r4, #0
c0de1656:	4620      	mov	r0, r4
c0de1658:	b013      	add	sp, #76	@ 0x4c
c0de165a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de165c:	000002f8 	.word	0x000002f8

c0de1660 <swap_check_validity>:
c0de1660:	b570      	push	{r4, r5, r6, lr}
c0de1662:	b08c      	sub	sp, #48	@ 0x30
c0de1664:	4e1d      	ldr	r6, [pc, #116]	@ (c0de16dc <swap_check_validity+0x7c>)
c0de1666:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de166a:	b32c      	cbz	r4, c0de16b8 <swap_check_validity+0x58>
c0de166c:	eb09 0406 	add.w	r4, r9, r6
c0de1670:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1674:	4069      	eors	r1, r5
c0de1676:	4060      	eors	r0, r4
c0de1678:	4308      	orrs	r0, r1
c0de167a:	d121      	bne.n	c0de16c0 <swap_check_validity+0x60>
c0de167c:	eb09 0006 	add.w	r0, r9, r6
c0de1680:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1684:	4059      	eors	r1, r3
c0de1686:	4050      	eors	r0, r2
c0de1688:	4308      	orrs	r0, r1
c0de168a:	d11d      	bne.n	c0de16c8 <swap_check_validity+0x68>
c0de168c:	ad01      	add	r5, sp, #4
c0de168e:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1690:	2129      	movs	r1, #41	@ 0x29
c0de1692:	4628      	mov	r0, r5
c0de1694:	f006 f88c 	bl	c0de77b0 <__aeabi_memclr>
c0de1698:	4620      	mov	r0, r4
c0de169a:	2114      	movs	r1, #20
c0de169c:	462a      	mov	r2, r5
c0de169e:	2329      	movs	r3, #41	@ 0x29
c0de16a0:	f005 f86c 	bl	c0de677c <format_hex>
c0de16a4:	eb09 0006 	add.w	r0, r9, r6
c0de16a8:	4629      	mov	r1, r5
c0de16aa:	3018      	adds	r0, #24
c0de16ac:	f006 f8d2 	bl	c0de7854 <strcmp>
c0de16b0:	b970      	cbnz	r0, c0de16d0 <swap_check_validity+0x70>
c0de16b2:	2001      	movs	r0, #1
c0de16b4:	b00c      	add	sp, #48	@ 0x30
c0de16b6:	bd70      	pop	{r4, r5, r6, pc}
c0de16b8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16bc:	21ff      	movs	r1, #255	@ 0xff
c0de16be:	e00a      	b.n	c0de16d6 <swap_check_validity+0x76>
c0de16c0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16c4:	2101      	movs	r1, #1
c0de16c6:	e006      	b.n	c0de16d6 <swap_check_validity+0x76>
c0de16c8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16cc:	2103      	movs	r1, #3
c0de16ce:	e002      	b.n	c0de16d6 <swap_check_validity+0x76>
c0de16d0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de16d4:	2102      	movs	r1, #2
c0de16d6:	2200      	movs	r2, #0
c0de16d8:	f005 fa03 	bl	c0de6ae2 <send_swap_error_simple>
c0de16dc:	000002f8 	.word	0x000002f8

c0de16e0 <transaction_deserialize>:
c0de16e0:	b570      	push	{r4, r5, r6, lr}
c0de16e2:	460d      	mov	r5, r1
c0de16e4:	4604      	mov	r4, r0
c0de16e6:	b910      	cbnz	r0, c0de16ee <transaction_deserialize+0xe>
c0de16e8:	2001      	movs	r0, #1
c0de16ea:	f005 fb47 	bl	c0de6d7c <assert_exit>
c0de16ee:	b915      	cbnz	r5, c0de16f6 <transaction_deserialize+0x16>
c0de16f0:	2001      	movs	r0, #1
c0de16f2:	f005 fb43 	bl	c0de6d7c <assert_exit>
c0de16f6:	6860      	ldr	r0, [r4, #4]
c0de16f8:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de16fc:	d901      	bls.n	c0de1702 <transaction_deserialize+0x22>
c0de16fe:	20f9      	movs	r0, #249	@ 0xf9
c0de1700:	e04b      	b.n	c0de179a <transaction_deserialize+0xba>
c0de1702:	4620      	mov	r0, r4
c0de1704:	4629      	mov	r1, r5
c0de1706:	2200      	movs	r2, #0
c0de1708:	f004 fe5c 	bl	c0de63c4 <buffer_read_u64>
c0de170c:	b330      	cbz	r0, c0de175c <transaction_deserialize+0x7c>
c0de170e:	6820      	ldr	r0, [r4, #0]
c0de1710:	68a1      	ldr	r1, [r4, #8]
c0de1712:	4408      	add	r0, r1
c0de1714:	2114      	movs	r1, #20
c0de1716:	61a8      	str	r0, [r5, #24]
c0de1718:	4620      	mov	r0, r4
c0de171a:	f004 fe32 	bl	c0de6382 <buffer_seek_cur>
c0de171e:	b1f8      	cbz	r0, c0de1760 <transaction_deserialize+0x80>
c0de1720:	f105 0108 	add.w	r1, r5, #8
c0de1724:	4620      	mov	r0, r4
c0de1726:	2200      	movs	r2, #0
c0de1728:	2600      	movs	r6, #0
c0de172a:	f004 fe4b 	bl	c0de63c4 <buffer_read_u64>
c0de172e:	b1c8      	cbz	r0, c0de1764 <transaction_deserialize+0x84>
c0de1730:	f105 0120 	add.w	r1, r5, #32
c0de1734:	4620      	mov	r0, r4
c0de1736:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de173a:	f004 fe63 	bl	c0de6404 <buffer_read_varint>
c0de173e:	6a29      	ldr	r1, [r5, #32]
c0de1740:	b990      	cbnz	r0, c0de1768 <transaction_deserialize+0x88>
c0de1742:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1744:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1748:	ea4f 0231 	mov.w	r2, r1, rrx
c0de174c:	2300      	movs	r3, #0
c0de174e:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de1752:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1756:	d207      	bcs.n	c0de1768 <transaction_deserialize+0x88>
c0de1758:	20fc      	movs	r0, #252	@ 0xfc
c0de175a:	e01e      	b.n	c0de179a <transaction_deserialize+0xba>
c0de175c:	20ff      	movs	r0, #255	@ 0xff
c0de175e:	e01c      	b.n	c0de179a <transaction_deserialize+0xba>
c0de1760:	20fe      	movs	r0, #254	@ 0xfe
c0de1762:	e01a      	b.n	c0de179a <transaction_deserialize+0xba>
c0de1764:	20fd      	movs	r0, #253	@ 0xfd
c0de1766:	e018      	b.n	c0de179a <transaction_deserialize+0xba>
c0de1768:	6820      	ldr	r0, [r4, #0]
c0de176a:	68a2      	ldr	r2, [r4, #8]
c0de176c:	4410      	add	r0, r2
c0de176e:	61e8      	str	r0, [r5, #28]
c0de1770:	4620      	mov	r0, r4
c0de1772:	f004 fe06 	bl	c0de6382 <buffer_seek_cur>
c0de1776:	b168      	cbz	r0, c0de1794 <transaction_deserialize+0xb4>
c0de1778:	f105 031c 	add.w	r3, r5, #28
c0de177c:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de177e:	f000 f80e 	bl	c0de179e <transaction_utils_check_encoding>
c0de1782:	b148      	cbz	r0, c0de1798 <transaction_deserialize+0xb8>
c0de1784:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1788:	f06f 0006 	mvn.w	r0, #6
c0de178c:	428a      	cmp	r2, r1
c0de178e:	bf08      	it	eq
c0de1790:	2001      	moveq	r0, #1
c0de1792:	e002      	b.n	c0de179a <transaction_deserialize+0xba>
c0de1794:	20fb      	movs	r0, #251	@ 0xfb
c0de1796:	e000      	b.n	c0de179a <transaction_deserialize+0xba>
c0de1798:	20fa      	movs	r0, #250	@ 0xfa
c0de179a:	b240      	sxtb	r0, r0
c0de179c:	bd70      	pop	{r4, r5, r6, pc}

c0de179e <transaction_utils_check_encoding>:
c0de179e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de17a0:	461c      	mov	r4, r3
c0de17a2:	4615      	mov	r5, r2
c0de17a4:	4606      	mov	r6, r0
c0de17a6:	b910      	cbnz	r0, c0de17ae <transaction_utils_check_encoding+0x10>
c0de17a8:	2001      	movs	r0, #1
c0de17aa:	f005 fae7 	bl	c0de6d7c <assert_exit>
c0de17ae:	2000      	movs	r0, #0
c0de17b0:	2300      	movs	r3, #0
c0de17b2:	4602      	mov	r2, r0
c0de17b4:	1b40      	subs	r0, r0, r5
c0de17b6:	4619      	mov	r1, r3
c0de17b8:	eb73 0004 	sbcs.w	r0, r3, r4
c0de17bc:	d206      	bcs.n	c0de17cc <transaction_utils_check_encoding+0x2e>
c0de17be:	56b7      	ldrsb	r7, [r6, r2]
c0de17c0:	1c50      	adds	r0, r2, #1
c0de17c2:	f141 0300 	adc.w	r3, r1, #0
c0de17c6:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de17ca:	dcf2      	bgt.n	c0de17b2 <transaction_utils_check_encoding+0x14>
c0de17cc:	2000      	movs	r0, #0
c0de17ce:	1b52      	subs	r2, r2, r5
c0de17d0:	41a1      	sbcs	r1, r4
c0de17d2:	bf28      	it	cs
c0de17d4:	2001      	movcs	r0, #1
c0de17d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de17d8 <validate_pubkey>:
c0de17d8:	b108      	cbz	r0, c0de17de <validate_pubkey+0x6>
c0de17da:	f7ff be2b 	b.w	c0de1434 <helper_send_response_pubkey>
c0de17de:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de17e2:	f000 b800 	b.w	c0de17e6 <io_send_sw>

c0de17e6 <io_send_sw>:
c0de17e6:	b580      	push	{r7, lr}
c0de17e8:	4602      	mov	r2, r0
c0de17ea:	2000      	movs	r0, #0
c0de17ec:	2100      	movs	r1, #0
c0de17ee:	f005 f825 	bl	c0de683c <io_send_response_buffers>
c0de17f2:	bd80      	pop	{r7, pc}

c0de17f4 <validate_transaction>:
c0de17f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de17f8:	b08c      	sub	sp, #48	@ 0x30
c0de17fa:	b378      	cbz	r0, c0de185c <validate_transaction+0x68>
c0de17fc:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1894 <validate_transaction+0xa0>
c0de1800:	2002      	movs	r0, #2
c0de1802:	2500      	movs	r5, #0
c0de1804:	2720      	movs	r7, #32
c0de1806:	2203      	movs	r2, #3
c0de1808:	f240 6401 	movw	r4, #1537	@ 0x601
c0de180c:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1810:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de1814:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de1816:	f809 0008 	strb.w	r0, [r9, r8]
c0de181a:	2048      	movs	r0, #72	@ 0x48
c0de181c:	900a      	str	r0, [sp, #40]	@ 0x28
c0de181e:	eb09 0008 	add.w	r0, r9, r8
c0de1822:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de1826:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de182a:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de182e:	e9cd 4200 	strd	r4, r2, [sp]
c0de1832:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de1836:	2000      	movs	r0, #0
c0de1838:	9508      	str	r5, [sp, #32]
c0de183a:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de183e:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1842:	2121      	movs	r1, #33	@ 0x21
c0de1844:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1848:	f004 feee 	bl	c0de6628 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de184c:	b188      	cbz	r0, c0de1872 <validate_transaction+0x7e>
c0de184e:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1852:	f809 5008 	strb.w	r5, [r9, r8]
c0de1856:	f7ff ffc6 	bl	c0de17e6 <io_send_sw>
c0de185a:	e017      	b.n	c0de188c <validate_transaction+0x98>
c0de185c:	480d      	ldr	r0, [pc, #52]	@ (c0de1894 <validate_transaction+0xa0>)
c0de185e:	2100      	movs	r1, #0
c0de1860:	f809 1000 	strb.w	r1, [r9, r0]
c0de1864:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1868:	b00c      	add	sp, #48	@ 0x30
c0de186a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de186e:	f7ff bfba 	b.w	c0de17e6 <io_send_sw>
c0de1872:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1874:	eb09 0008 	add.w	r0, r9, r8
c0de1878:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de187c:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1880:	f001 0101 	and.w	r1, r1, #1
c0de1884:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de1888:	f7ff fe02 	bl	c0de1490 <helper_send_response_sig>
c0de188c:	b00c      	add	sp, #48	@ 0x30
c0de188e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1892:	bf00      	nop
c0de1894:	00000000 	.word	0x00000000

c0de1898 <app_quit>:
c0de1898:	20ff      	movs	r0, #255	@ 0xff
c0de189a:	f005 fe43 	bl	c0de7524 <os_sched_exit>
	...

c0de18a0 <ui_menu_main>:
c0de18a0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de18a2:	4c19      	ldr	r4, [pc, #100]	@ (c0de1908 <ui_menu_main+0x68>)
c0de18a4:	4817      	ldr	r0, [pc, #92]	@ (c0de1904 <ui_menu_main+0x64>)
c0de18a6:	447c      	add	r4, pc
c0de18a8:	eb09 0500 	add.w	r5, r9, r0
c0de18ac:	f000 f8d8 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de18b0:	2114      	movs	r1, #20
c0de18b2:	7369      	strb	r1, [r5, #13]
c0de18b4:	4915      	ldr	r1, [pc, #84]	@ (c0de190c <ui_menu_main+0x6c>)
c0de18b6:	4a16      	ldr	r2, [pc, #88]	@ (c0de1910 <ui_menu_main+0x70>)
c0de18b8:	4479      	add	r1, pc
c0de18ba:	447a      	add	r2, pc
c0de18bc:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de18c0:	7800      	ldrb	r0, [r0, #0]
c0de18c2:	7328      	strb	r0, [r5, #12]
c0de18c4:	f000 f8cc 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de18c8:	2115      	movs	r1, #21
c0de18ca:	7669      	strb	r1, [r5, #25]
c0de18cc:	4911      	ldr	r1, [pc, #68]	@ (c0de1914 <ui_menu_main+0x74>)
c0de18ce:	4a12      	ldr	r2, [pc, #72]	@ (c0de1918 <ui_menu_main+0x78>)
c0de18d0:	4479      	add	r1, pc
c0de18d2:	447a      	add	r2, pc
c0de18d4:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de18d8:	2100      	movs	r1, #0
c0de18da:	7840      	ldrb	r0, [r0, #1]
c0de18dc:	7628      	strb	r0, [r5, #24]
c0de18de:	480f      	ldr	r0, [pc, #60]	@ (c0de191c <ui_menu_main+0x7c>)
c0de18e0:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1920 <ui_menu_main+0x80>)
c0de18e2:	4b10      	ldr	r3, [pc, #64]	@ (c0de1924 <ui_menu_main+0x84>)
c0de18e4:	4478      	add	r0, pc
c0de18e6:	447a      	add	r2, pc
c0de18e8:	447b      	add	r3, pc
c0de18ea:	e9cd 3200 	strd	r3, r2, [sp]
c0de18ee:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de18f2:	2200      	movs	r2, #0
c0de18f4:	23ff      	movs	r3, #255	@ 0xff
c0de18f6:	480c      	ldr	r0, [pc, #48]	@ (c0de1928 <ui_menu_main+0x88>)
c0de18f8:	490c      	ldr	r1, [pc, #48]	@ (c0de192c <ui_menu_main+0x8c>)
c0de18fa:	4478      	add	r0, pc
c0de18fc:	4479      	add	r1, pc
c0de18fe:	f003 f837 	bl	c0de4970 <nbgl_useCaseHomeAndSettings>
c0de1902:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1904:	00000340 	.word	0x00000340
c0de1908:	00007556 	.word	0x00007556
c0de190c:	00006303 	.word	0x00006303
c0de1910:	0000646a 	.word	0x0000646a
c0de1914:	00006366 	.word	0x00006366
c0de1918:	000061ac 	.word	0x000061ac
c0de191c:	ffffffb1 	.word	0xffffffb1
c0de1920:	00006dfa 	.word	0x00006dfa
c0de1924:	00006dec 	.word	0x00006dec
c0de1928:	000064ae 	.word	0x000064ae
c0de192c:	00005fdb 	.word	0x00005fdb

c0de1930 <controls_callback>:
c0de1930:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1932:	4c22      	ldr	r4, [pc, #136]	@ (c0de19bc <controls_callback+0x8c>)
c0de1934:	2815      	cmp	r0, #21
c0de1936:	f809 2004 	strb.w	r2, [r9, r4]
c0de193a:	d011      	beq.n	c0de1960 <controls_callback+0x30>
c0de193c:	2814      	cmp	r0, #20
c0de193e:	d12a      	bne.n	c0de1996 <controls_callback+0x66>
c0de1940:	eb09 0504 	add.w	r5, r9, r4
c0de1944:	4c1e      	ldr	r4, [pc, #120]	@ (c0de19c0 <controls_callback+0x90>)
c0de1946:	447c      	add	r4, pc
c0de1948:	f000 f88a 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de194c:	7800      	ldrb	r0, [r0, #0]
c0de194e:	fab0 f080 	clz	r0, r0
c0de1952:	0940      	lsrs	r0, r0, #5
c0de1954:	7328      	strb	r0, [r5, #12]
c0de1956:	f88d 000f 	strb.w	r0, [sp, #15]
c0de195a:	f000 f881 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de195e:	e015      	b.n	c0de198c <controls_callback+0x5c>
c0de1960:	4818      	ldr	r0, [pc, #96]	@ (c0de19c4 <controls_callback+0x94>)
c0de1962:	4478      	add	r0, pc
c0de1964:	f005 fc18 	bl	c0de7198 <pic>
c0de1968:	7840      	ldrb	r0, [r0, #1]
c0de196a:	b1a8      	cbz	r0, c0de1998 <controls_callback+0x68>
c0de196c:	eb09 0504 	add.w	r5, r9, r4
c0de1970:	4c15      	ldr	r4, [pc, #84]	@ (c0de19c8 <controls_callback+0x98>)
c0de1972:	447c      	add	r4, pc
c0de1974:	f000 f874 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de1978:	7840      	ldrb	r0, [r0, #1]
c0de197a:	fab0 f080 	clz	r0, r0
c0de197e:	0940      	lsrs	r0, r0, #5
c0de1980:	7628      	strb	r0, [r5, #24]
c0de1982:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1986:	f000 f86b 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de198a:	3001      	adds	r0, #1
c0de198c:	f10d 010f 	add.w	r1, sp, #15
c0de1990:	2201      	movs	r2, #1
c0de1992:	f005 fc31 	bl	c0de71f8 <nvm_write>
c0de1996:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1998:	480c      	ldr	r0, [pc, #48]	@ (c0de19cc <controls_callback+0x9c>)
c0de199a:	490d      	ldr	r1, [pc, #52]	@ (c0de19d0 <controls_callback+0xa0>)
c0de199c:	4478      	add	r0, pc
c0de199e:	4479      	add	r1, pc
c0de19a0:	e9cd 1000 	strd	r1, r0, [sp]
c0de19a4:	480b      	ldr	r0, [pc, #44]	@ (c0de19d4 <controls_callback+0xa4>)
c0de19a6:	490c      	ldr	r1, [pc, #48]	@ (c0de19d8 <controls_callback+0xa8>)
c0de19a8:	4a0c      	ldr	r2, [pc, #48]	@ (c0de19dc <controls_callback+0xac>)
c0de19aa:	4b0d      	ldr	r3, [pc, #52]	@ (c0de19e0 <controls_callback+0xb0>)
c0de19ac:	4478      	add	r0, pc
c0de19ae:	4479      	add	r1, pc
c0de19b0:	447a      	add	r2, pc
c0de19b2:	447b      	add	r3, pc
c0de19b4:	f003 fc52 	bl	c0de525c <nbgl_useCaseChoice>
c0de19b8:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de19ba:	bf00      	nop
c0de19bc:	00000340 	.word	0x00000340
c0de19c0:	000074b6 	.word	0x000074b6
c0de19c4:	0000749a 	.word	0x0000749a
c0de19c8:	0000748a 	.word	0x0000748a
c0de19cc:	00000045 	.word	0x00000045
c0de19d0:	000062be 	.word	0x000062be
c0de19d4:	000060a5 	.word	0x000060a5
c0de19d8:	000060d0 	.word	0x000060d0
c0de19dc:	00006194 	.word	0x00006194
c0de19e0:	0000637a 	.word	0x0000637a

c0de19e4 <review_warning_choice>:
c0de19e4:	b5b0      	push	{r4, r5, r7, lr}
c0de19e6:	b086      	sub	sp, #24
c0de19e8:	b1a8      	cbz	r0, c0de1a16 <review_warning_choice+0x32>
c0de19ea:	4c17      	ldr	r4, [pc, #92]	@ (c0de1a48 <review_warning_choice+0x64>)
c0de19ec:	4815      	ldr	r0, [pc, #84]	@ (c0de1a44 <review_warning_choice+0x60>)
c0de19ee:	447c      	add	r4, pc
c0de19f0:	eb09 0500 	add.w	r5, r9, r0
c0de19f4:	f000 f834 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de19f8:	7840      	ldrb	r0, [r0, #1]
c0de19fa:	fab0 f080 	clz	r0, r0
c0de19fe:	0940      	lsrs	r0, r0, #5
c0de1a00:	7628      	strb	r0, [r5, #24]
c0de1a02:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1a06:	f000 f82b 	bl	c0de1a60 <OUTLINED_FUNCTION_0>
c0de1a0a:	3001      	adds	r0, #1
c0de1a0c:	f10d 0117 	add.w	r1, sp, #23
c0de1a10:	2201      	movs	r2, #1
c0de1a12:	f005 fbf1 	bl	c0de71f8 <nvm_write>
c0de1a16:	480b      	ldr	r0, [pc, #44]	@ (c0de1a44 <review_warning_choice+0x60>)
c0de1a18:	2100      	movs	r1, #0
c0de1a1a:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1a1e:	480b      	ldr	r0, [pc, #44]	@ (c0de1a4c <review_warning_choice+0x68>)
c0de1a20:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1a50 <review_warning_choice+0x6c>)
c0de1a22:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1a54 <review_warning_choice+0x70>)
c0de1a24:	4478      	add	r0, pc
c0de1a26:	447a      	add	r2, pc
c0de1a28:	447c      	add	r4, pc
c0de1a2a:	e9cd 4200 	strd	r4, r2, [sp]
c0de1a2e:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1a32:	2200      	movs	r2, #0
c0de1a34:	4808      	ldr	r0, [pc, #32]	@ (c0de1a58 <review_warning_choice+0x74>)
c0de1a36:	4909      	ldr	r1, [pc, #36]	@ (c0de1a5c <review_warning_choice+0x78>)
c0de1a38:	4478      	add	r0, pc
c0de1a3a:	4479      	add	r1, pc
c0de1a3c:	f002 ff98 	bl	c0de4970 <nbgl_useCaseHomeAndSettings>
c0de1a40:	b006      	add	sp, #24
c0de1a42:	bdb0      	pop	{r4, r5, r7, pc}
c0de1a44:	00000340 	.word	0x00000340
c0de1a48:	0000740e 	.word	0x0000740e
c0de1a4c:	fffffe71 	.word	0xfffffe71
c0de1a50:	00006cba 	.word	0x00006cba
c0de1a54:	00006cac 	.word	0x00006cac
c0de1a58:	00006370 	.word	0x00006370
c0de1a5c:	00005e9d 	.word	0x00005e9d

c0de1a60 <OUTLINED_FUNCTION_0>:
c0de1a60:	4620      	mov	r0, r4
c0de1a62:	f005 bb99 	b.w	c0de7198 <pic>
	...

c0de1a68 <ui_display_address>:
c0de1a68:	b570      	push	{r4, r5, r6, lr}
c0de1a6a:	b088      	sub	sp, #32
c0de1a6c:	4e22      	ldr	r6, [pc, #136]	@ (c0de1af8 <ui_display_address+0x90>)
c0de1a6e:	eb09 0106 	add.w	r1, r9, r6
c0de1a72:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1a76:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de1a7a:	4308      	orrs	r0, r1
c0de1a7c:	d12a      	bne.n	c0de1ad4 <ui_display_address+0x6c>
c0de1a7e:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1afc <ui_display_address+0x94>)
c0de1a80:	212b      	movs	r1, #43	@ 0x2b
c0de1a82:	eb09 0005 	add.w	r0, r9, r5
c0de1a86:	f005 fe93 	bl	c0de77b0 <__aeabi_memclr>
c0de1a8a:	ac03      	add	r4, sp, #12
c0de1a8c:	2114      	movs	r1, #20
c0de1a8e:	4620      	mov	r0, r4
c0de1a90:	f005 fe8e 	bl	c0de77b0 <__aeabi_memclr>
c0de1a94:	eb09 0006 	add.w	r0, r9, r6
c0de1a98:	4621      	mov	r1, r4
c0de1a9a:	2214      	movs	r2, #20
c0de1a9c:	3008      	adds	r0, #8
c0de1a9e:	f7fe fac3 	bl	c0de0028 <address_from_pubkey>
c0de1aa2:	b308      	cbz	r0, c0de1ae8 <ui_display_address+0x80>
c0de1aa4:	eb09 0205 	add.w	r2, r9, r5
c0de1aa8:	a803      	add	r0, sp, #12
c0de1aaa:	2114      	movs	r1, #20
c0de1aac:	232b      	movs	r3, #43	@ 0x2b
c0de1aae:	f004 fe65 	bl	c0de677c <format_hex>
c0de1ab2:	3001      	adds	r0, #1
c0de1ab4:	d018      	beq.n	c0de1ae8 <ui_display_address+0x80>
c0de1ab6:	4812      	ldr	r0, [pc, #72]	@ (c0de1b00 <ui_display_address+0x98>)
c0de1ab8:	2400      	movs	r4, #0
c0de1aba:	2100      	movs	r1, #0
c0de1abc:	4478      	add	r0, pc
c0de1abe:	e9cd 4000 	strd	r4, r0, [sp]
c0de1ac2:	eb09 0005 	add.w	r0, r9, r5
c0de1ac6:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1b04 <ui_display_address+0x9c>)
c0de1ac8:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1b08 <ui_display_address+0xa0>)
c0de1aca:	447a      	add	r2, pc
c0de1acc:	447b      	add	r3, pc
c0de1ace:	f003 f8a9 	bl	c0de4c24 <nbgl_useCaseAddressReview>
c0de1ad2:	e00e      	b.n	c0de1af2 <ui_display_address+0x8a>
c0de1ad4:	2000      	movs	r0, #0
c0de1ad6:	f809 0006 	strb.w	r0, [r9, r6]
c0de1ada:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1ade:	b008      	add	sp, #32
c0de1ae0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1ae4:	f000 b812 	b.w	c0de1b0c <io_send_sw>
c0de1ae8:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1aec:	f000 f80e 	bl	c0de1b0c <io_send_sw>
c0de1af0:	4604      	mov	r4, r0
c0de1af2:	4620      	mov	r0, r4
c0de1af4:	b008      	add	sp, #32
c0de1af6:	bd70      	pop	{r4, r5, r6, pc}
c0de1af8:	00000000 	.word	0x00000000
c0de1afc:	0000035c 	.word	0x0000035c
c0de1b00:	0000005d 	.word	0x0000005d
c0de1b04:	00005faa 	.word	0x00005faa
c0de1b08:	000062c9 	.word	0x000062c9

c0de1b0c <io_send_sw>:
c0de1b0c:	b580      	push	{r7, lr}
c0de1b0e:	4602      	mov	r2, r0
c0de1b10:	2000      	movs	r0, #0
c0de1b12:	2100      	movs	r1, #0
c0de1b14:	f004 fe92 	bl	c0de683c <io_send_response_buffers>
c0de1b18:	bd80      	pop	{r7, pc}
	...

c0de1b1c <review_choice>:
c0de1b1c:	b510      	push	{r4, lr}
c0de1b1e:	4604      	mov	r4, r0
c0de1b20:	f7ff fe5a 	bl	c0de17d8 <validate_pubkey>
c0de1b24:	2007      	movs	r0, #7
c0de1b26:	2c00      	cmp	r4, #0
c0de1b28:	bf18      	it	ne
c0de1b2a:	2006      	movne	r0, #6
c0de1b2c:	4902      	ldr	r1, [pc, #8]	@ (c0de1b38 <review_choice+0x1c>)
c0de1b2e:	4479      	add	r1, pc
c0de1b30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1b34:	f003 ba68 	b.w	c0de5008 <nbgl_useCaseReviewStatus>
c0de1b38:	fffffd6f 	.word	0xfffffd6f

c0de1b3c <ui_display_transaction_bs_choice>:
c0de1b3c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1b3e:	b08d      	sub	sp, #52	@ 0x34
c0de1b40:	4f43      	ldr	r7, [pc, #268]	@ (c0de1c50 <ui_display_transaction_bs_choice+0x114>)
c0de1b42:	4604      	mov	r4, r0
c0de1b44:	eb09 0007 	add.w	r0, r9, r7
c0de1b48:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1b4c:	2801      	cmp	r0, #1
c0de1b4e:	d15d      	bne.n	c0de1c0c <ui_display_transaction_bs_choice+0xd0>
c0de1b50:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1b54:	2801      	cmp	r0, #1
c0de1b56:	d159      	bne.n	c0de1c0c <ui_display_transaction_bs_choice+0xd0>
c0de1b58:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1c54 <ui_display_transaction_bs_choice+0x118>)
c0de1b5a:	211e      	movs	r1, #30
c0de1b5c:	eb09 0006 	add.w	r0, r9, r6
c0de1b60:	3014      	adds	r0, #20
c0de1b62:	f005 fe25 	bl	c0de77b0 <__aeabi_memclr>
c0de1b66:	ad05      	add	r5, sp, #20
c0de1b68:	211e      	movs	r1, #30
c0de1b6a:	4628      	mov	r0, r5
c0de1b6c:	f005 fe20 	bl	c0de77b0 <__aeabi_memclr>
c0de1b70:	eb09 0007 	add.w	r0, r9, r7
c0de1b74:	211e      	movs	r1, #30
c0de1b76:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1b7a:	2003      	movs	r0, #3
c0de1b7c:	9000      	str	r0, [sp, #0]
c0de1b7e:	4628      	mov	r0, r5
c0de1b80:	f004 fdb5 	bl	c0de66ee <format_fpu64>
c0de1b84:	2800      	cmp	r0, #0
c0de1b86:	d04b      	beq.n	c0de1c20 <ui_display_transaction_bs_choice+0xe4>
c0de1b88:	9500      	str	r5, [sp, #0]
c0de1b8a:	eb09 0506 	add.w	r5, r9, r6
c0de1b8e:	211e      	movs	r1, #30
c0de1b90:	231e      	movs	r3, #30
c0de1b92:	4a31      	ldr	r2, [pc, #196]	@ (c0de1c58 <ui_display_transaction_bs_choice+0x11c>)
c0de1b94:	f105 0014 	add.w	r0, r5, #20
c0de1b98:	447a      	add	r2, pc
c0de1b9a:	f005 f96b 	bl	c0de6e74 <snprintf>
c0de1b9e:	3554      	adds	r5, #84	@ 0x54
c0de1ba0:	212b      	movs	r1, #43	@ 0x2b
c0de1ba2:	4628      	mov	r0, r5
c0de1ba4:	f005 fe04 	bl	c0de77b0 <__aeabi_memclr>
c0de1ba8:	eb09 0007 	add.w	r0, r9, r7
c0de1bac:	2114      	movs	r1, #20
c0de1bae:	462a      	mov	r2, r5
c0de1bb0:	232b      	movs	r3, #43	@ 0x2b
c0de1bb2:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1bb6:	f004 fde1 	bl	c0de677c <format_hex>
c0de1bba:	3001      	adds	r0, #1
c0de1bbc:	d033      	beq.n	c0de1c26 <ui_display_transaction_bs_choice+0xea>
c0de1bbe:	4927      	ldr	r1, [pc, #156]	@ (c0de1c5c <ui_display_transaction_bs_choice+0x120>)
c0de1bc0:	eb09 0006 	add.w	r0, r9, r6
c0de1bc4:	2500      	movs	r5, #0
c0de1bc6:	4602      	mov	r2, r0
c0de1bc8:	4479      	add	r1, pc
c0de1bca:	f842 1f34 	str.w	r1, [r2, #52]!
c0de1bce:	f849 2006 	str.w	r2, [r9, r6]
c0de1bd2:	2202      	movs	r2, #2
c0de1bd4:	4922      	ldr	r1, [pc, #136]	@ (c0de1c60 <ui_display_transaction_bs_choice+0x124>)
c0de1bd6:	7202      	strb	r2, [r0, #8]
c0de1bd8:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de1bdc:	7285      	strb	r5, [r0, #10]
c0de1bde:	4479      	add	r1, pc
c0de1be0:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1be4:	f100 0114 	add.w	r1, r0, #20
c0de1be8:	6381      	str	r1, [r0, #56]	@ 0x38
c0de1bea:	481e      	ldr	r0, [pc, #120]	@ (c0de1c64 <ui_display_transaction_bs_choice+0x128>)
c0de1bec:	4478      	add	r0, pc
c0de1bee:	b314      	cbz	r4, c0de1c36 <ui_display_transaction_bs_choice+0xfa>
c0de1bf0:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1bf4:	e9cd 5500 	strd	r5, r5, [sp]
c0de1bf8:	eb09 0106 	add.w	r1, r9, r6
c0de1bfc:	2000      	movs	r0, #0
c0de1bfe:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1c68 <ui_display_transaction_bs_choice+0x12c>)
c0de1c00:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1c6c <ui_display_transaction_bs_choice+0x130>)
c0de1c02:	447a      	add	r2, pc
c0de1c04:	447b      	add	r3, pc
c0de1c06:	f002 fffb 	bl	c0de4c00 <nbgl_useCaseReviewBlindSigning>
c0de1c0a:	e011      	b.n	c0de1c30 <ui_display_transaction_bs_choice+0xf4>
c0de1c0c:	2000      	movs	r0, #0
c0de1c0e:	f809 0007 	strb.w	r0, [r9, r7]
c0de1c12:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1c16:	b00d      	add	sp, #52	@ 0x34
c0de1c18:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1c1c:	f000 b82c 	b.w	c0de1c78 <io_send_sw>
c0de1c20:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1c24:	e001      	b.n	c0de1c2a <ui_display_transaction_bs_choice+0xee>
c0de1c26:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1c2a:	f000 f825 	bl	c0de1c78 <io_send_sw>
c0de1c2e:	4605      	mov	r5, r0
c0de1c30:	4628      	mov	r0, r5
c0de1c32:	b00d      	add	sp, #52	@ 0x34
c0de1c34:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1c36:	9002      	str	r0, [sp, #8]
c0de1c38:	e9cd 5500 	strd	r5, r5, [sp]
c0de1c3c:	eb09 0106 	add.w	r1, r9, r6
c0de1c40:	2000      	movs	r0, #0
c0de1c42:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1c70 <ui_display_transaction_bs_choice+0x134>)
c0de1c44:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1c74 <ui_display_transaction_bs_choice+0x138>)
c0de1c46:	447a      	add	r2, pc
c0de1c48:	447b      	add	r3, pc
c0de1c4a:	f002 ff39 	bl	c0de4ac0 <nbgl_useCaseReview>
c0de1c4e:	e7ef      	b.n	c0de1c30 <ui_display_transaction_bs_choice+0xf4>
c0de1c50:	00000000 	.word	0x00000000
c0de1c54:	00000388 	.word	0x00000388
c0de1c58:	00006176 	.word	0x00006176
c0de1c5c:	00005f64 	.word	0x00005f64
c0de1c60:	00006139 	.word	0x00006139
c0de1c64:	00000099 	.word	0x00000099
c0de1c68:	00005e72 	.word	0x00005e72
c0de1c6c:	00005e82 	.word	0x00005e82
c0de1c70:	00005e2e 	.word	0x00005e2e
c0de1c74:	00005e3e 	.word	0x00005e3e

c0de1c78 <io_send_sw>:
c0de1c78:	b580      	push	{r7, lr}
c0de1c7a:	4602      	mov	r2, r0
c0de1c7c:	2000      	movs	r0, #0
c0de1c7e:	2100      	movs	r1, #0
c0de1c80:	f004 fddc 	bl	c0de683c <io_send_response_buffers>
c0de1c84:	bd80      	pop	{r7, pc}
	...

c0de1c88 <review_choice>:
c0de1c88:	b510      	push	{r4, lr}
c0de1c8a:	4604      	mov	r4, r0
c0de1c8c:	f7ff fdb2 	bl	c0de17f4 <validate_transaction>
c0de1c90:	4903      	ldr	r1, [pc, #12]	@ (c0de1ca0 <review_choice+0x18>)
c0de1c92:	f084 0001 	eor.w	r0, r4, #1
c0de1c96:	4479      	add	r1, pc
c0de1c98:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1c9c:	f003 b9b4 	b.w	c0de5008 <nbgl_useCaseReviewStatus>
c0de1ca0:	fffffc07 	.word	0xfffffc07

c0de1ca4 <ui_display_blind_signed_transaction>:
c0de1ca4:	2001      	movs	r0, #1
c0de1ca6:	f7ff bf49 	b.w	c0de1b3c <ui_display_transaction_bs_choice>

c0de1caa <ui_display_transaction>:
c0de1caa:	2000      	movs	r0, #0
c0de1cac:	f7ff bf46 	b.w	c0de1b3c <ui_display_transaction_bs_choice>

c0de1cb0 <zkn_prv_hash>:
c0de1cb0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1cb4:	460c      	mov	r4, r1
c0de1cb6:	e9cd 0200 	strd	r0, r2, [sp]
c0de1cba:	4668      	mov	r0, sp
c0de1cbc:	2101      	movs	r1, #1
c0de1cbe:	2601      	movs	r6, #1
c0de1cc0:	4622      	mov	r2, r4
c0de1cc2:	f005 f828 	bl	c0de6d16 <cx_blake2b_512_hash_iovec>
c0de1cc6:	4605      	mov	r5, r0
c0de1cc8:	bb18      	cbnz	r0, c0de1d12 <zkn_prv_hash+0x62>
c0de1cca:	7820      	ldrb	r0, [r4, #0]
c0de1ccc:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1cd0:	7020      	strb	r0, [r4, #0]
c0de1cd2:	7fe0      	ldrb	r0, [r4, #31]
c0de1cd4:	f366 109f 	bfi	r0, r6, #6, #26
c0de1cd8:	77e0      	strb	r0, [r4, #31]
c0de1cda:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1cde:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1d18 <zkn_prv_hash+0x68>)
c0de1ce0:	447e      	add	r6, pc
c0de1ce2:	47b0      	blx	r6
c0de1ce4:	4680      	mov	r8, r0
c0de1ce6:	468a      	mov	sl, r1
c0de1ce8:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1cec:	47b0      	blx	r6
c0de1cee:	4683      	mov	fp, r0
c0de1cf0:	460f      	mov	r7, r1
c0de1cf2:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1cf6:	47b0      	blx	r6
c0de1cf8:	e9c4 0100 	strd	r0, r1, [r4]
c0de1cfc:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1d00:	47b0      	blx	r6
c0de1d02:	f104 0208 	add.w	r2, r4, #8
c0de1d06:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1d0a:	f104 0014 	add.w	r0, r4, #20
c0de1d0e:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1d12:	4628      	mov	r0, r5
c0de1d14:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1d18:	00000341 	.word	0x00000341

c0de1d1c <zkn_prv2pub>:
c0de1d1c:	b570      	push	{r4, r5, r6, lr}
c0de1d1e:	b092      	sub	sp, #72	@ 0x48
c0de1d20:	4614      	mov	r4, r2
c0de1d22:	6802      	ldr	r2, [r0, #0]
c0de1d24:	ae02      	add	r6, sp, #8
c0de1d26:	4605      	mov	r5, r0
c0de1d28:	4608      	mov	r0, r1
c0de1d2a:	4631      	mov	r1, r6
c0de1d2c:	f7ff ffc0 	bl	c0de1cb0 <zkn_prv_hash>
c0de1d30:	2000      	movs	r0, #0
c0de1d32:	2100      	movs	r1, #0
c0de1d34:	2820      	cmp	r0, #32
c0de1d36:	d009      	beq.n	c0de1d4c <zkn_prv2pub+0x30>
c0de1d38:	5c32      	ldrb	r2, [r6, r0]
c0de1d3a:	0149      	lsls	r1, r1, #5
c0de1d3c:	0613      	lsls	r3, r2, #24
c0de1d3e:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1d42:	5431      	strb	r1, [r6, r0]
c0de1d44:	f002 0107 	and.w	r1, r2, #7
c0de1d48:	3001      	adds	r0, #1
c0de1d4a:	e7f3      	b.n	c0de1d34 <zkn_prv2pub+0x18>
c0de1d4c:	4629      	mov	r1, r5
c0de1d4e:	4628      	mov	r0, r5
c0de1d50:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1d54:	9400      	str	r4, [sp, #0]
c0de1d56:	aa02      	add	r2, sp, #8
c0de1d58:	f000 ffc8 	bl	c0de2cec <tEdwards_scalarMul>
c0de1d5c:	b918      	cbnz	r0, c0de1d66 <zkn_prv2pub+0x4a>
c0de1d5e:	4628      	mov	r0, r5
c0de1d60:	4621      	mov	r1, r4
c0de1d62:	f000 fefe 	bl	c0de2b62 <tEdwards_normalize>
c0de1d66:	b012      	add	sp, #72	@ 0x48
c0de1d68:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1d6c <EddsaPoseidon_Sign_final>:
c0de1d6c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1d70:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1d74:	4605      	mov	r5, r0
c0de1d76:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1d78:	2820      	cmp	r0, #32
c0de1d7a:	d118      	bne.n	c0de1dae <EddsaPoseidon_Sign_final+0x42>
c0de1d7c:	460f      	mov	r7, r1
c0de1d7e:	a982      	add	r1, sp, #520	@ 0x208
c0de1d80:	4628      	mov	r0, r5
c0de1d82:	461e      	mov	r6, r3
c0de1d84:	4692      	mov	sl, r2
c0de1d86:	f000 fbbb 	bl	c0de2500 <tEdwards_alloc>
c0de1d8a:	b988      	cbnz	r0, c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1d8c:	682a      	ldr	r2, [r5, #0]
c0de1d8e:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1d90:	4638      	mov	r0, r7
c0de1d92:	4621      	mov	r1, r4
c0de1d94:	f7ff ff8c 	bl	c0de1cb0 <zkn_prv_hash>
c0de1d98:	b950      	cbnz	r0, c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1d9a:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1d9e:	2000      	movs	r0, #0
c0de1da0:	a95a      	add	r1, sp, #360	@ 0x168
c0de1da2:	2820      	cmp	r0, #32
c0de1da4:	d008      	beq.n	c0de1db8 <EddsaPoseidon_Sign_final+0x4c>
c0de1da6:	5c22      	ldrb	r2, [r4, r0]
c0de1da8:	540a      	strb	r2, [r1, r0]
c0de1daa:	3001      	adds	r0, #1
c0de1dac:	e7f9      	b.n	c0de1da2 <EddsaPoseidon_Sign_final+0x36>
c0de1dae:	489b      	ldr	r0, [pc, #620]	@ (c0de201c <EddsaPoseidon_Sign_final+0x2b0>)
c0de1db0:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1db4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1db8:	a812      	add	r0, sp, #72	@ 0x48
c0de1dba:	2109      	movs	r1, #9
c0de1dbc:	2240      	movs	r2, #64	@ 0x40
c0de1dbe:	f004 ffcb 	bl	c0de6d58 <cx_hash_init_ex>
c0de1dc2:	2800      	cmp	r0, #0
c0de1dc4:	d1f4      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1dc6:	f104 0120 	add.w	r1, r4, #32
c0de1dca:	a812      	add	r0, sp, #72	@ 0x48
c0de1dcc:	2220      	movs	r2, #32
c0de1dce:	f004 ffc8 	bl	c0de6d62 <cx_hash_update>
c0de1dd2:	2800      	cmp	r0, #0
c0de1dd4:	d1ec      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1dd6:	a812      	add	r0, sp, #72	@ 0x48
c0de1dd8:	4631      	mov	r1, r6
c0de1dda:	2220      	movs	r2, #32
c0de1ddc:	f004 ffc1 	bl	c0de6d62 <cx_hash_update>
c0de1de0:	2800      	cmp	r0, #0
c0de1de2:	d1e5      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1de4:	a812      	add	r0, sp, #72	@ 0x48
c0de1de6:	ac62      	add	r4, sp, #392	@ 0x188
c0de1de8:	4621      	mov	r1, r4
c0de1dea:	f004 ffb0 	bl	c0de6d4e <cx_hash_final>
c0de1dee:	2800      	cmp	r0, #0
c0de1df0:	d1de      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1df2:	203f      	movs	r0, #63	@ 0x3f
c0de1df4:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1df6:	1c42      	adds	r2, r0, #1
c0de1df8:	d004      	beq.n	c0de1e04 <EddsaPoseidon_Sign_final+0x98>
c0de1dfa:	5c22      	ldrb	r2, [r4, r0]
c0de1dfc:	3801      	subs	r0, #1
c0de1dfe:	f801 2b01 	strb.w	r2, [r1], #1
c0de1e02:	e7f8      	b.n	c0de1df6 <EddsaPoseidon_Sign_final+0x8a>
c0de1e04:	a889      	add	r0, sp, #548	@ 0x224
c0de1e06:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1e08:	2140      	movs	r1, #64	@ 0x40
c0de1e0a:	2340      	movs	r3, #64	@ 0x40
c0de1e0c:	f005 fa1a 	bl	c0de7244 <cx_bn_alloc_init>
c0de1e10:	2800      	cmp	r0, #0
c0de1e12:	d1cd      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e14:	a887      	add	r0, sp, #540	@ 0x21c
c0de1e16:	2140      	movs	r1, #64	@ 0x40
c0de1e18:	f005 fa0a 	bl	c0de7230 <cx_bn_alloc>
c0de1e1c:	2800      	cmp	r0, #0
c0de1e1e:	d1c7      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e20:	497f      	ldr	r1, [pc, #508]	@ (c0de2020 <EddsaPoseidon_Sign_final+0x2b4>)
c0de1e22:	f10d 0808 	add.w	r8, sp, #8
c0de1e26:	2240      	movs	r2, #64	@ 0x40
c0de1e28:	4640      	mov	r0, r8
c0de1e2a:	4479      	add	r1, pc
c0de1e2c:	f005 fcb6 	bl	c0de779c <__aeabi_memcpy>
c0de1e30:	a888      	add	r0, sp, #544	@ 0x220
c0de1e32:	2140      	movs	r1, #64	@ 0x40
c0de1e34:	4642      	mov	r2, r8
c0de1e36:	2340      	movs	r3, #64	@ 0x40
c0de1e38:	f005 fa04 	bl	c0de7244 <cx_bn_alloc_init>
c0de1e3c:	2800      	cmp	r0, #0
c0de1e3e:	d1b7      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e40:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1e42:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1e46:	f005 fa91 	bl	c0de736c <cx_bn_reduce>
c0de1e4a:	2800      	cmp	r0, #0
c0de1e4c:	d1b0      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e4e:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1e50:	f105 010c 	add.w	r1, r5, #12
c0de1e54:	ab82      	add	r3, sp, #520	@ 0x208
c0de1e56:	4628      	mov	r0, r5
c0de1e58:	f000 fee2 	bl	c0de2c20 <tEdwards_scalarMul_bn>
c0de1e5c:	2800      	cmp	r0, #0
c0de1e5e:	d1a7      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e60:	a982      	add	r1, sp, #520	@ 0x208
c0de1e62:	4628      	mov	r0, r5
c0de1e64:	f000 fe7d 	bl	c0de2b62 <tEdwards_normalize>
c0de1e68:	2800      	cmp	r0, #0
c0de1e6a:	d1a1      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e6c:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1e6e:	a952      	add	r1, sp, #328	@ 0x148
c0de1e70:	f000 f8e0 	bl	c0de2034 <OUTLINED_FUNCTION_1>
c0de1e74:	2800      	cmp	r0, #0
c0de1e76:	d19b      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e78:	a888      	add	r0, sp, #544	@ 0x220
c0de1e7a:	f005 f9ef 	bl	c0de725c <cx_bn_destroy>
c0de1e7e:	2800      	cmp	r0, #0
c0de1e80:	d196      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e82:	a889      	add	r0, sp, #548	@ 0x224
c0de1e84:	f005 f9ea 	bl	c0de725c <cx_bn_destroy>
c0de1e88:	2800      	cmp	r0, #0
c0de1e8a:	d191      	bne.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e8c:	a887      	add	r0, sp, #540	@ 0x21c
c0de1e8e:	f005 f9e5 	bl	c0de725c <cx_bn_destroy>
c0de1e92:	2800      	cmp	r0, #0
c0de1e94:	f47f af8c 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1e98:	4628      	mov	r0, r5
c0de1e9a:	f000 fde0 	bl	c0de2a5e <tEdwards_Curve_partial_destroy>
c0de1e9e:	2800      	cmp	r0, #0
c0de1ea0:	f47f af86 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1ea4:	f105 0420 	add.w	r4, r5, #32
c0de1ea8:	a88a      	add	r0, sp, #552	@ 0x228
c0de1eaa:	2105      	movs	r1, #5
c0de1eac:	2205      	movs	r2, #5
c0de1eae:	4623      	mov	r3, r4
c0de1eb0:	f001 f842 	bl	c0de2f38 <Poseidon_alloc_init>
c0de1eb4:	2800      	cmp	r0, #0
c0de1eb6:	f47f af7b 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1eba:	201f      	movs	r0, #31
c0de1ebc:	a962      	add	r1, sp, #392	@ 0x188
c0de1ebe:	1c42      	adds	r2, r0, #1
c0de1ec0:	d004      	beq.n	c0de1ecc <EddsaPoseidon_Sign_final+0x160>
c0de1ec2:	5c32      	ldrb	r2, [r6, r0]
c0de1ec4:	3801      	subs	r0, #1
c0de1ec6:	f801 2b01 	strb.w	r2, [r1], #1
c0de1eca:	e7f8      	b.n	c0de1ebe <EddsaPoseidon_Sign_final+0x152>
c0de1ecc:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1ece:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1ed0:	f005 f9e4 	bl	c0de729c <cx_bn_copy>
c0de1ed4:	2800      	cmp	r0, #0
c0de1ed6:	f47f af6b 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1eda:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1edc:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1ede:	f005 f9dd 	bl	c0de729c <cx_bn_copy>
c0de1ee2:	2800      	cmp	r0, #0
c0de1ee4:	f47f af64 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1ee8:	f8da 1000 	ldr.w	r1, [sl]
c0de1eec:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1eee:	f005 f9d5 	bl	c0de729c <cx_bn_copy>
c0de1ef2:	2800      	cmp	r0, #0
c0de1ef4:	f47f af5c 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1ef8:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1efc:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1efe:	f005 f9cd 	bl	c0de729c <cx_bn_copy>
c0de1f02:	2800      	cmp	r0, #0
c0de1f04:	f47f af54 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f08:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1f0a:	a962      	add	r1, sp, #392	@ 0x188
c0de1f0c:	2220      	movs	r2, #32
c0de1f0e:	f005 f9b9 	bl	c0de7284 <cx_bn_init>
c0de1f12:	2800      	cmp	r0, #0
c0de1f14:	f47f af4c 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f18:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1f1a:	4622      	mov	r2, r4
c0de1f1c:	4601      	mov	r1, r0
c0de1f1e:	f005 fa5b 	bl	c0de73d8 <cx_mont_to_montgomery>
c0de1f22:	2800      	cmp	r0, #0
c0de1f24:	f47f af44 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f28:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1f2a:	f000 f87f 	bl	c0de202c <OUTLINED_FUNCTION_0>
c0de1f2e:	2800      	cmp	r0, #0
c0de1f30:	f47f af3e 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f34:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1f36:	f000 f879 	bl	c0de202c <OUTLINED_FUNCTION_0>
c0de1f3a:	2800      	cmp	r0, #0
c0de1f3c:	f47f af38 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f40:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1f42:	4659      	mov	r1, fp
c0de1f44:	f000 f876 	bl	c0de2034 <OUTLINED_FUNCTION_1>
c0de1f48:	2800      	cmp	r0, #0
c0de1f4a:	f47f af31 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f4e:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1f50:	f10b 0120 	add.w	r1, fp, #32
c0de1f54:	f000 f86e 	bl	c0de2034 <OUTLINED_FUNCTION_1>
c0de1f58:	2800      	cmp	r0, #0
c0de1f5a:	f47f af29 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f5e:	a982      	add	r1, sp, #520	@ 0x208
c0de1f60:	4628      	mov	r0, r5
c0de1f62:	f000 fae2 	bl	c0de252a <tEdwards_destroy>
c0de1f66:	2800      	cmp	r0, #0
c0de1f68:	f47f af22 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f6c:	a885      	add	r0, sp, #532	@ 0x214
c0de1f6e:	2120      	movs	r1, #32
c0de1f70:	f005 f95e 	bl	c0de7230 <cx_bn_alloc>
c0de1f74:	2800      	cmp	r0, #0
c0de1f76:	f47f af1b 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f7a:	a88a      	add	r0, sp, #552	@ 0x228
c0de1f7c:	aa85      	add	r2, sp, #532	@ 0x214
c0de1f7e:	2100      	movs	r1, #0
c0de1f80:	2301      	movs	r3, #1
c0de1f82:	f001 f83f 	bl	c0de3004 <Poseidon>
c0de1f86:	2800      	cmp	r0, #0
c0de1f88:	f47f af12 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f8c:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f8e:	f000 f84d 	bl	c0de202c <OUTLINED_FUNCTION_0>
c0de1f92:	2800      	cmp	r0, #0
c0de1f94:	f47f af0c 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1f98:	a886      	add	r0, sp, #536	@ 0x218
c0de1f9a:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1f9c:	2120      	movs	r1, #32
c0de1f9e:	2320      	movs	r3, #32
c0de1fa0:	f005 f950 	bl	c0de7244 <cx_bn_alloc_init>
c0de1fa4:	2800      	cmp	r0, #0
c0de1fa6:	f47f af03 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1faa:	a801      	add	r0, sp, #4
c0de1fac:	2120      	movs	r1, #32
c0de1fae:	f005 f93f 	bl	c0de7230 <cx_bn_alloc>
c0de1fb2:	2800      	cmp	r0, #0
c0de1fb4:	f47f aefc 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1fb8:	f108 0220 	add.w	r2, r8, #32
c0de1fbc:	a888      	add	r0, sp, #544	@ 0x220
c0de1fbe:	2120      	movs	r1, #32
c0de1fc0:	2320      	movs	r3, #32
c0de1fc2:	f005 f93f 	bl	c0de7244 <cx_bn_alloc_init>
c0de1fc6:	2800      	cmp	r0, #0
c0de1fc8:	f47f aef2 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1fcc:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1fce:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1fd2:	9801      	ldr	r0, [sp, #4]
c0de1fd4:	f005 f9be 	bl	c0de7354 <cx_bn_mod_mul>
c0de1fd8:	2800      	cmp	r0, #0
c0de1fda:	f47f aee9 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1fde:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1fe0:	a952      	add	r1, sp, #328	@ 0x148
c0de1fe2:	2220      	movs	r2, #32
c0de1fe4:	f005 f94e 	bl	c0de7284 <cx_bn_init>
c0de1fe8:	2800      	cmp	r0, #0
c0de1fea:	f47f aee1 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de1fee:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1ff0:	9a01      	ldr	r2, [sp, #4]
c0de1ff2:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1ff6:	f005 f995 	bl	c0de7324 <cx_bn_mod_add>
c0de1ffa:	2800      	cmp	r0, #0
c0de1ffc:	f47f aed8 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de2000:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de2002:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de2006:	f005 f9b1 	bl	c0de736c <cx_bn_reduce>
c0de200a:	2800      	cmp	r0, #0
c0de200c:	f47f aed0 	bne.w	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de2010:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2012:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de2016:	f000 f80d 	bl	c0de2034 <OUTLINED_FUNCTION_1>
c0de201a:	e6c9      	b.n	c0de1db0 <EddsaPoseidon_Sign_final+0x44>
c0de201c:	5a4b4e03 	.word	0x5a4b4e03
c0de2020:	0000690e 	.word	0x0000690e

c0de2024 <rev64>:
c0de2024:	ba0a      	rev	r2, r1
c0de2026:	ba01      	rev	r1, r0
c0de2028:	4610      	mov	r0, r2
c0de202a:	4770      	bx	lr

c0de202c <OUTLINED_FUNCTION_0>:
c0de202c:	4622      	mov	r2, r4
c0de202e:	4601      	mov	r1, r0
c0de2030:	f005 b9de 	b.w	c0de73f0 <cx_mont_from_montgomery>

c0de2034 <OUTLINED_FUNCTION_1>:
c0de2034:	2220      	movs	r2, #32
c0de2036:	f005 b945 	b.w	c0de72c4 <cx_bn_export>

c0de203a <zkn_frost_interpolate>:
c0de203a:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de203e:	b085      	sub	sp, #20
c0de2040:	460e      	mov	r6, r1
c0de2042:	4607      	mov	r7, r0
c0de2044:	a803      	add	r0, sp, #12
c0de2046:	2120      	movs	r1, #32
c0de2048:	f000 fa50 	bl	c0de24ec <OUTLINED_FUNCTION_2>
c0de204c:	b988      	cbnz	r0, c0de2072 <zkn_frost_interpolate+0x38>
c0de204e:	a802      	add	r0, sp, #8
c0de2050:	f000 fa53 	bl	c0de24fa <OUTLINED_FUNCTION_4>
c0de2054:	b968      	cbnz	r0, c0de2072 <zkn_frost_interpolate+0x38>
c0de2056:	a801      	add	r0, sp, #4
c0de2058:	f000 fa4f 	bl	c0de24fa <OUTLINED_FUNCTION_4>
c0de205c:	b948      	cbnz	r0, c0de2072 <zkn_frost_interpolate+0x38>
c0de205e:	9803      	ldr	r0, [sp, #12]
c0de2060:	2101      	movs	r1, #1
c0de2062:	f005 f925 	bl	c0de72b0 <cx_bn_set_u32>
c0de2066:	b920      	cbnz	r0, c0de2072 <zkn_frost_interpolate+0x38>
c0de2068:	9802      	ldr	r0, [sp, #8]
c0de206a:	2101      	movs	r1, #1
c0de206c:	f005 f920 	bl	c0de72b0 <cx_bn_set_u32>
c0de2070:	b110      	cbz	r0, c0de2078 <zkn_frost_interpolate+0x3e>
c0de2072:	b005      	add	sp, #20
c0de2074:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2078:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de207c:	f10d 0a10 	add.w	sl, sp, #16
c0de2080:	b31e      	cbz	r6, c0de20ca <zkn_frost_interpolate+0x90>
c0de2082:	6838      	ldr	r0, [r7, #0]
c0de2084:	4629      	mov	r1, r5
c0de2086:	4652      	mov	r2, sl
c0de2088:	f005 f928 	bl	c0de72dc <cx_bn_cmp>
c0de208c:	2800      	cmp	r0, #0
c0de208e:	d1f0      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de2090:	9804      	ldr	r0, [sp, #16]
c0de2092:	b1b8      	cbz	r0, c0de20c4 <zkn_frost_interpolate+0x8a>
c0de2094:	9802      	ldr	r0, [sp, #8]
c0de2096:	683a      	ldr	r2, [r7, #0]
c0de2098:	4623      	mov	r3, r4
c0de209a:	4601      	mov	r1, r0
c0de209c:	f005 f95a 	bl	c0de7354 <cx_bn_mod_mul>
c0de20a0:	2800      	cmp	r0, #0
c0de20a2:	d1e6      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de20a4:	6839      	ldr	r1, [r7, #0]
c0de20a6:	9801      	ldr	r0, [sp, #4]
c0de20a8:	462a      	mov	r2, r5
c0de20aa:	4623      	mov	r3, r4
c0de20ac:	f005 f946 	bl	c0de733c <cx_bn_mod_sub>
c0de20b0:	2800      	cmp	r0, #0
c0de20b2:	d1de      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de20b4:	9803      	ldr	r0, [sp, #12]
c0de20b6:	9a01      	ldr	r2, [sp, #4]
c0de20b8:	4623      	mov	r3, r4
c0de20ba:	4601      	mov	r1, r0
c0de20bc:	f005 f94a 	bl	c0de7354 <cx_bn_mod_mul>
c0de20c0:	2800      	cmp	r0, #0
c0de20c2:	d1d6      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de20c4:	3704      	adds	r7, #4
c0de20c6:	3e01      	subs	r6, #1
c0de20c8:	e7da      	b.n	c0de2080 <zkn_frost_interpolate+0x46>
c0de20ca:	9903      	ldr	r1, [sp, #12]
c0de20cc:	4640      	mov	r0, r8
c0de20ce:	4622      	mov	r2, r4
c0de20d0:	f005 f958 	bl	c0de7384 <cx_bn_mod_invert_nprime>
c0de20d4:	2800      	cmp	r0, #0
c0de20d6:	d1cc      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de20d8:	9a02      	ldr	r2, [sp, #8]
c0de20da:	4640      	mov	r0, r8
c0de20dc:	4641      	mov	r1, r8
c0de20de:	4623      	mov	r3, r4
c0de20e0:	f005 f938 	bl	c0de7354 <cx_bn_mod_mul>
c0de20e4:	2800      	cmp	r0, #0
c0de20e6:	d1c4      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de20e8:	a803      	add	r0, sp, #12
c0de20ea:	f005 f8b7 	bl	c0de725c <cx_bn_destroy>
c0de20ee:	2800      	cmp	r0, #0
c0de20f0:	d1bf      	bne.n	c0de2072 <zkn_frost_interpolate+0x38>
c0de20f2:	a802      	add	r0, sp, #8
c0de20f4:	f005 f8b2 	bl	c0de725c <cx_bn_destroy>
c0de20f8:	e7bb      	b.n	c0de2072 <zkn_frost_interpolate+0x38>

c0de20fa <zkn_frost_interpolate_secrets>:
c0de20fa:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de20fe:	460f      	mov	r7, r1
c0de2100:	4606      	mov	r6, r0
c0de2102:	a802      	add	r0, sp, #8
c0de2104:	2120      	movs	r1, #32
c0de2106:	461c      	mov	r4, r3
c0de2108:	4692      	mov	sl, r2
c0de210a:	f005 f891 	bl	c0de7230 <cx_bn_alloc>
c0de210e:	b108      	cbz	r0, c0de2114 <zkn_frost_interpolate_secrets+0x1a>
c0de2110:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de2114:	a801      	add	r0, sp, #4
c0de2116:	f000 f9f0 	bl	c0de24fa <OUTLINED_FUNCTION_4>
c0de211a:	2800      	cmp	r0, #0
c0de211c:	d1f8      	bne.n	c0de2110 <zkn_frost_interpolate_secrets+0x16>
c0de211e:	9802      	ldr	r0, [sp, #8]
c0de2120:	2100      	movs	r1, #0
c0de2122:	f005 f8c5 	bl	c0de72b0 <cx_bn_set_u32>
c0de2126:	2800      	cmp	r0, #0
c0de2128:	d1f2      	bne.n	c0de2110 <zkn_frost_interpolate_secrets+0x16>
c0de212a:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de212e:	2500      	movs	r5, #0
c0de2130:	42ac      	cmp	r4, r5
c0de2132:	d01d      	beq.n	c0de2170 <zkn_frost_interpolate_secrets+0x76>
c0de2134:	9801      	ldr	r0, [sp, #4]
c0de2136:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de213a:	68b3      	ldr	r3, [r6, #8]
c0de213c:	4621      	mov	r1, r4
c0de213e:	9000      	str	r0, [sp, #0]
c0de2140:	4638      	mov	r0, r7
c0de2142:	f7ff ff7a 	bl	c0de203a <zkn_frost_interpolate>
c0de2146:	2800      	cmp	r0, #0
c0de2148:	d1e2      	bne.n	c0de2110 <zkn_frost_interpolate_secrets+0x16>
c0de214a:	9801      	ldr	r0, [sp, #4]
c0de214c:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2150:	68b3      	ldr	r3, [r6, #8]
c0de2152:	4601      	mov	r1, r0
c0de2154:	f005 f8fe 	bl	c0de7354 <cx_bn_mod_mul>
c0de2158:	2800      	cmp	r0, #0
c0de215a:	d1d9      	bne.n	c0de2110 <zkn_frost_interpolate_secrets+0x16>
c0de215c:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de2160:	68b3      	ldr	r3, [r6, #8]
c0de2162:	4601      	mov	r1, r0
c0de2164:	f005 f8de 	bl	c0de7324 <cx_bn_mod_add>
c0de2168:	3501      	adds	r5, #1
c0de216a:	2800      	cmp	r0, #0
c0de216c:	d0e0      	beq.n	c0de2130 <zkn_frost_interpolate_secrets+0x36>
c0de216e:	e7cf      	b.n	c0de2110 <zkn_frost_interpolate_secrets+0x16>
c0de2170:	68b2      	ldr	r2, [r6, #8]
c0de2172:	9902      	ldr	r1, [sp, #8]
c0de2174:	4640      	mov	r0, r8
c0de2176:	f005 f8f9 	bl	c0de736c <cx_bn_reduce>
c0de217a:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de217e <zkn_evalshare>:
c0de217e:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de2182:	460e      	mov	r6, r1
c0de2184:	6801      	ldr	r1, [r0, #0]
c0de2186:	4607      	mov	r7, r0
c0de2188:	a801      	add	r0, sp, #4
c0de218a:	f000 f9af 	bl	c0de24ec <OUTLINED_FUNCTION_2>
c0de218e:	b108      	cbz	r0, c0de2194 <zkn_evalshare+0x16>
c0de2190:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2194:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2198:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de219c:	4640      	mov	r0, r8
c0de219e:	f005 f87d 	bl	c0de729c <cx_bn_copy>
c0de21a2:	2800      	cmp	r0, #0
c0de21a4:	d1f4      	bne.n	c0de2190 <zkn_evalshare+0x12>
c0de21a6:	3e04      	subs	r6, #4
c0de21a8:	68bb      	ldr	r3, [r7, #8]
c0de21aa:	9801      	ldr	r0, [sp, #4]
c0de21ac:	4641      	mov	r1, r8
c0de21ae:	b17d      	cbz	r5, c0de21d0 <zkn_evalshare+0x52>
c0de21b0:	4622      	mov	r2, r4
c0de21b2:	f005 f8cf 	bl	c0de7354 <cx_bn_mod_mul>
c0de21b6:	2800      	cmp	r0, #0
c0de21b8:	d1ea      	bne.n	c0de2190 <zkn_evalshare+0x12>
c0de21ba:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de21be:	68bb      	ldr	r3, [r7, #8]
c0de21c0:	9901      	ldr	r1, [sp, #4]
c0de21c2:	4640      	mov	r0, r8
c0de21c4:	f005 f8ae 	bl	c0de7324 <cx_bn_mod_add>
c0de21c8:	3d01      	subs	r5, #1
c0de21ca:	2800      	cmp	r0, #0
c0de21cc:	d0ec      	beq.n	c0de21a8 <zkn_evalshare+0x2a>
c0de21ce:	e7df      	b.n	c0de2190 <zkn_evalshare+0x12>
c0de21d0:	461a      	mov	r2, r3
c0de21d2:	f005 f8cb 	bl	c0de736c <cx_bn_reduce>
c0de21d6:	2800      	cmp	r0, #0
c0de21d8:	d1da      	bne.n	c0de2190 <zkn_evalshare+0x12>
c0de21da:	9901      	ldr	r1, [sp, #4]
c0de21dc:	4640      	mov	r0, r8
c0de21de:	f005 f85d 	bl	c0de729c <cx_bn_copy>
c0de21e2:	2800      	cmp	r0, #0
c0de21e4:	d1d4      	bne.n	c0de2190 <zkn_evalshare+0x12>
c0de21e6:	a801      	add	r0, sp, #4
c0de21e8:	f005 f838 	bl	c0de725c <cx_bn_destroy>
c0de21ec:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de21f0 <zkn_encode_group_commitmentHash>:
c0de21f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de21f4:	b0d6      	sub	sp, #344	@ 0x158
c0de21f6:	4606      	mov	r6, r0
c0de21f8:	a816      	add	r0, sp, #88	@ 0x58
c0de21fa:	461c      	mov	r4, r3
c0de21fc:	4615      	mov	r5, r2
c0de21fe:	460f      	mov	r7, r1
c0de2200:	f001 f88a 	bl	c0de3318 <zkn_frost_H5_init>
c0de2204:	b110      	cbz	r0, c0de220c <zkn_encode_group_commitmentHash+0x1c>
c0de2206:	b056      	add	sp, #344	@ 0x158
c0de2208:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de220c:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2210:	9401      	str	r4, [sp, #4]
c0de2212:	a806      	add	r0, sp, #24
c0de2214:	f04f 0a00 	mov.w	sl, #0
c0de2218:	f04f 0b02 	mov.w	fp, #2
c0de221c:	2604      	movs	r6, #4
c0de221e:	2400      	movs	r4, #0
c0de2220:	9502      	str	r5, [sp, #8]
c0de2222:	f1a0 0801 	sub.w	r8, r0, #1
c0de2226:	42ac      	cmp	r4, r5
c0de2228:	d058      	beq.n	c0de22dc <zkn_encode_group_commitmentHash+0xec>
c0de222a:	9805      	ldr	r0, [sp, #20]
c0de222c:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2230:	9103      	str	r1, [sp, #12]
c0de2232:	6805      	ldr	r5, [r0, #0]
c0de2234:	9804      	ldr	r0, [sp, #16]
c0de2236:	fb05 000a 	mla	r0, r5, sl, r0
c0de223a:	4629      	mov	r1, r5
c0de223c:	b129      	cbz	r1, c0de224a <zkn_encode_group_commitmentHash+0x5a>
c0de223e:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de2242:	f808 2001 	strb.w	r2, [r8, r1]
c0de2246:	3901      	subs	r1, #1
c0de2248:	e7f8      	b.n	c0de223c <zkn_encode_group_commitmentHash+0x4c>
c0de224a:	a816      	add	r0, sp, #88	@ 0x58
c0de224c:	a906      	add	r1, sp, #24
c0de224e:	462a      	mov	r2, r5
c0de2250:	f001 f87c 	bl	c0de334c <zkn_frost_hash_update>
c0de2254:	2800      	cmp	r0, #0
c0de2256:	d1d6      	bne.n	c0de2206 <zkn_encode_group_commitmentHash+0x16>
c0de2258:	9803      	ldr	r0, [sp, #12]
c0de225a:	9f04      	ldr	r7, [sp, #16]
c0de225c:	1c43      	adds	r3, r0, #1
c0de225e:	9805      	ldr	r0, [sp, #20]
c0de2260:	fb05 710b 	mla	r1, r5, fp, r7
c0de2264:	6802      	ldr	r2, [r0, #0]
c0de2266:	1e50      	subs	r0, r2, #1
c0de2268:	4615      	mov	r5, r2
c0de226a:	fb02 0303 	mla	r3, r2, r3, r0
c0de226e:	5cfb      	ldrb	r3, [r7, r3]
c0de2270:	b12d      	cbz	r5, c0de227e <zkn_encode_group_commitmentHash+0x8e>
c0de2272:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2276:	f808 7005 	strb.w	r7, [r8, r5]
c0de227a:	3d01      	subs	r5, #1
c0de227c:	e7f8      	b.n	c0de2270 <zkn_encode_group_commitmentHash+0x80>
c0de227e:	a906      	add	r1, sp, #24
c0de2280:	5c0d      	ldrb	r5, [r1, r0]
c0de2282:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2286:	540b      	strb	r3, [r1, r0]
c0de2288:	a816      	add	r0, sp, #88	@ 0x58
c0de228a:	f001 f85f 	bl	c0de334c <zkn_frost_hash_update>
c0de228e:	2800      	cmp	r0, #0
c0de2290:	d1b9      	bne.n	c0de2206 <zkn_encode_group_commitmentHash+0x16>
c0de2292:	9805      	ldr	r0, [sp, #20]
c0de2294:	9d04      	ldr	r5, [sp, #16]
c0de2296:	6802      	ldr	r2, [r0, #0]
c0de2298:	9803      	ldr	r0, [sp, #12]
c0de229a:	1cc3      	adds	r3, r0, #3
c0de229c:	1e50      	subs	r0, r2, #1
c0de229e:	fb02 5106 	mla	r1, r2, r6, r5
c0de22a2:	fb02 0303 	mla	r3, r2, r3, r0
c0de22a6:	5ceb      	ldrb	r3, [r5, r3]
c0de22a8:	4615      	mov	r5, r2
c0de22aa:	b12d      	cbz	r5, c0de22b8 <zkn_encode_group_commitmentHash+0xc8>
c0de22ac:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de22b0:	f808 7005 	strb.w	r7, [r8, r5]
c0de22b4:	3d01      	subs	r5, #1
c0de22b6:	e7f8      	b.n	c0de22aa <zkn_encode_group_commitmentHash+0xba>
c0de22b8:	a906      	add	r1, sp, #24
c0de22ba:	5c0d      	ldrb	r5, [r1, r0]
c0de22bc:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de22c0:	540b      	strb	r3, [r1, r0]
c0de22c2:	a816      	add	r0, sp, #88	@ 0x58
c0de22c4:	f001 f842 	bl	c0de334c <zkn_frost_hash_update>
c0de22c8:	3605      	adds	r6, #5
c0de22ca:	3401      	adds	r4, #1
c0de22cc:	9d02      	ldr	r5, [sp, #8]
c0de22ce:	f10b 0b05 	add.w	fp, fp, #5
c0de22d2:	f10a 0a05 	add.w	sl, sl, #5
c0de22d6:	2800      	cmp	r0, #0
c0de22d8:	d0a5      	beq.n	c0de2226 <zkn_encode_group_commitmentHash+0x36>
c0de22da:	e794      	b.n	c0de2206 <zkn_encode_group_commitmentHash+0x16>
c0de22dc:	9805      	ldr	r0, [sp, #20]
c0de22de:	6881      	ldr	r1, [r0, #8]
c0de22e0:	a816      	add	r0, sp, #88	@ 0x58
c0de22e2:	9a01      	ldr	r2, [sp, #4]
c0de22e4:	f001 f834 	bl	c0de3350 <zkn_frost_hash_final>
c0de22e8:	e78d      	b.n	c0de2206 <zkn_encode_group_commitmentHash+0x16>

c0de22ea <zkn_compute_group_commitment>:
c0de22ea:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de22ee:	b088      	sub	sp, #32
c0de22f0:	460d      	mov	r5, r1
c0de22f2:	a905      	add	r1, sp, #20
c0de22f4:	461f      	mov	r7, r3
c0de22f6:	4692      	mov	sl, r2
c0de22f8:	4604      	mov	r4, r0
c0de22fa:	f000 f901 	bl	c0de2500 <tEdwards_alloc>
c0de22fe:	b948      	cbnz	r0, c0de2314 <zkn_compute_group_commitment+0x2a>
c0de2300:	a902      	add	r1, sp, #8
c0de2302:	4620      	mov	r0, r4
c0de2304:	f000 f8fc 	bl	c0de2500 <tEdwards_alloc>
c0de2308:	b920      	cbnz	r0, c0de2314 <zkn_compute_group_commitment+0x2a>
c0de230a:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de230c:	4620      	mov	r0, r4
c0de230e:	f000 fbef 	bl	c0de2af0 <tEdwards_SetNeutral>
c0de2312:	b110      	cbz	r0, c0de231a <zkn_compute_group_commitment+0x30>
c0de2314:	b008      	add	sp, #32
c0de2316:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de231a:	ae05      	add	r6, sp, #20
c0de231c:	f04f 0800 	mov.w	r8, #0
c0de2320:	f04f 0b04 	mov.w	fp, #4
c0de2324:	9501      	str	r5, [sp, #4]
c0de2326:	4547      	cmp	r7, r8
c0de2328:	d041      	beq.n	c0de23ae <zkn_compute_group_commitment+0xc4>
c0de232a:	6822      	ldr	r2, [r4, #0]
c0de232c:	f1ab 0003 	sub.w	r0, fp, #3
c0de2330:	4633      	mov	r3, r6
c0de2332:	fb02 5100 	mla	r1, r2, r0, r5
c0de2336:	f1ab 0002 	sub.w	r0, fp, #2
c0de233a:	fb02 5200 	mla	r2, r2, r0, r5
c0de233e:	4620      	mov	r0, r4
c0de2340:	f000 fb4e 	bl	c0de29e0 <tEdwards_init>
c0de2344:	2800      	cmp	r0, #0
c0de2346:	d1e5      	bne.n	c0de2314 <zkn_compute_group_commitment+0x2a>
c0de2348:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de234a:	4620      	mov	r0, r4
c0de234c:	4632      	mov	r2, r6
c0de234e:	460b      	mov	r3, r1
c0de2350:	f000 f967 	bl	c0de2622 <tEdwards_add>
c0de2354:	2800      	cmp	r0, #0
c0de2356:	d1dd      	bne.n	c0de2314 <zkn_compute_group_commitment+0x2a>
c0de2358:	6822      	ldr	r2, [r4, #0]
c0de235a:	f1ab 0001 	sub.w	r0, fp, #1
c0de235e:	4633      	mov	r3, r6
c0de2360:	fb02 5100 	mla	r1, r2, r0, r5
c0de2364:	fb02 520b 	mla	r2, r2, fp, r5
c0de2368:	4620      	mov	r0, r4
c0de236a:	f000 fb39 	bl	c0de29e0 <tEdwards_init>
c0de236e:	2800      	cmp	r0, #0
c0de2370:	d1d0      	bne.n	c0de2314 <zkn_compute_group_commitment+0x2a>
c0de2372:	6823      	ldr	r3, [r4, #0]
c0de2374:	4650      	mov	r0, sl
c0de2376:	f10d 0a08 	add.w	sl, sp, #8
c0de237a:	4631      	mov	r1, r6
c0de237c:	4605      	mov	r5, r0
c0de237e:	f8cd a000 	str.w	sl, [sp]
c0de2382:	fb03 0208 	mla	r2, r3, r8, r0
c0de2386:	4620      	mov	r0, r4
c0de2388:	f000 fcb0 	bl	c0de2cec <tEdwards_scalarMul>
c0de238c:	2800      	cmp	r0, #0
c0de238e:	d1c1      	bne.n	c0de2314 <zkn_compute_group_commitment+0x2a>
c0de2390:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2392:	4620      	mov	r0, r4
c0de2394:	4652      	mov	r2, sl
c0de2396:	460b      	mov	r3, r1
c0de2398:	f000 f943 	bl	c0de2622 <tEdwards_add>
c0de239c:	46aa      	mov	sl, r5
c0de239e:	9d01      	ldr	r5, [sp, #4]
c0de23a0:	f10b 0b05 	add.w	fp, fp, #5
c0de23a4:	f108 0801 	add.w	r8, r8, #1
c0de23a8:	2800      	cmp	r0, #0
c0de23aa:	d0bc      	beq.n	c0de2326 <zkn_compute_group_commitment+0x3c>
c0de23ac:	e7b2      	b.n	c0de2314 <zkn_compute_group_commitment+0x2a>
c0de23ae:	a905      	add	r1, sp, #20
c0de23b0:	f000 f8a0 	bl	c0de24f4 <OUTLINED_FUNCTION_3>
c0de23b4:	2800      	cmp	r0, #0
c0de23b6:	d1ad      	bne.n	c0de2314 <zkn_compute_group_commitment+0x2a>
c0de23b8:	a902      	add	r1, sp, #8
c0de23ba:	f000 f89b 	bl	c0de24f4 <OUTLINED_FUNCTION_3>
c0de23be:	e7a9      	b.n	c0de2314 <zkn_compute_group_commitment+0x2a>

c0de23c0 <zkn_compute_binding_factors>:
c0de23c0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de23c4:	b0f4      	sub	sp, #464	@ 0x1d0
c0de23c6:	460e      	mov	r6, r1
c0de23c8:	6801      	ldr	r1, [r0, #0]
c0de23ca:	4607      	mov	r7, r0
c0de23cc:	a873      	add	r0, sp, #460	@ 0x1cc
c0de23ce:	f000 f88d 	bl	c0de24ec <OUTLINED_FUNCTION_2>
c0de23d2:	b9f0      	cbnz	r0, c0de2412 <zkn_compute_binding_factors+0x52>
c0de23d4:	6839      	ldr	r1, [r7, #0]
c0de23d6:	a872      	add	r0, sp, #456	@ 0x1c8
c0de23d8:	f004 ff2a 	bl	c0de7230 <cx_bn_alloc>
c0de23dc:	b9c8      	cbnz	r0, c0de2412 <zkn_compute_binding_factors+0x52>
c0de23de:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de23e2:	68ba      	ldr	r2, [r7, #8]
c0de23e4:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de23e6:	f000 ff4b 	bl	c0de3280 <Babyfrost_H4>
c0de23ea:	b990      	cbnz	r0, c0de2412 <zkn_compute_binding_factors+0x52>
c0de23ec:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de23ee:	4638      	mov	r0, r7
c0de23f0:	4629      	mov	r1, r5
c0de23f2:	4622      	mov	r2, r4
c0de23f4:	f7ff fefc 	bl	c0de21f0 <zkn_encode_group_commitmentHash>
c0de23f8:	b958      	cbnz	r0, c0de2412 <zkn_compute_binding_factors+0x52>
c0de23fa:	683a      	ldr	r2, [r7, #0]
c0de23fc:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de23fe:	a912      	add	r1, sp, #72	@ 0x48
c0de2400:	f004 ff60 	bl	c0de72c4 <cx_bn_export>
c0de2404:	b928      	cbnz	r0, c0de2412 <zkn_compute_binding_factors+0x52>
c0de2406:	683a      	ldr	r2, [r7, #0]
c0de2408:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de240a:	a902      	add	r1, sp, #8
c0de240c:	f004 ff5a 	bl	c0de72c4 <cx_bn_export>
c0de2410:	b110      	cbz	r0, c0de2418 <zkn_compute_binding_factors+0x58>
c0de2412:	b074      	add	sp, #464	@ 0x1d0
c0de2414:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2418:	2000      	movs	r0, #0
c0de241a:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de241e:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de2422:	f04f 0800 	mov.w	r8, #0
c0de2426:	9000      	str	r0, [sp, #0]
c0de2428:	4544      	cmp	r4, r8
c0de242a:	d043      	beq.n	c0de24b4 <zkn_compute_binding_factors+0xf4>
c0de242c:	6839      	ldr	r1, [r7, #0]
c0de242e:	a801      	add	r0, sp, #4
c0de2430:	f004 fefe 	bl	c0de7230 <cx_bn_alloc>
c0de2434:	2800      	cmp	r0, #0
c0de2436:	d1ec      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de2438:	4650      	mov	r0, sl
c0de243a:	f000 ff53 	bl	c0de32e4 <zkn_frost_H1_init>
c0de243e:	2800      	cmp	r0, #0
c0de2440:	d1e7      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de2442:	6839      	ldr	r1, [r7, #0]
c0de2444:	4630      	mov	r0, r6
c0de2446:	465a      	mov	r2, fp
c0de2448:	f000 f845 	bl	c0de24d6 <OUTLINED_FUNCTION_0>
c0de244c:	2800      	cmp	r0, #0
c0de244e:	d1e0      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de2450:	6839      	ldr	r1, [r7, #0]
c0de2452:	a812      	add	r0, sp, #72	@ 0x48
c0de2454:	465a      	mov	r2, fp
c0de2456:	f000 f83e 	bl	c0de24d6 <OUTLINED_FUNCTION_0>
c0de245a:	2800      	cmp	r0, #0
c0de245c:	d1d9      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de245e:	6839      	ldr	r1, [r7, #0]
c0de2460:	a802      	add	r0, sp, #8
c0de2462:	465a      	mov	r2, fp
c0de2464:	f000 f837 	bl	c0de24d6 <OUTLINED_FUNCTION_0>
c0de2468:	2800      	cmp	r0, #0
c0de246a:	d1d2      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de246c:	6839      	ldr	r1, [r7, #0]
c0de246e:	9800      	ldr	r0, [sp, #0]
c0de2470:	465a      	mov	r2, fp
c0de2472:	fb00 5001 	mla	r0, r0, r1, r5
c0de2476:	f000 f82e 	bl	c0de24d6 <OUTLINED_FUNCTION_0>
c0de247a:	2800      	cmp	r0, #0
c0de247c:	d1c9      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de247e:	68b9      	ldr	r1, [r7, #8]
c0de2480:	9a01      	ldr	r2, [sp, #4]
c0de2482:	4650      	mov	r0, sl
c0de2484:	f000 ff64 	bl	c0de3350 <zkn_frost_hash_final>
c0de2488:	2800      	cmp	r0, #0
c0de248a:	d1c2      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de248c:	683a      	ldr	r2, [r7, #0]
c0de248e:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de2490:	fb02 0108 	mla	r1, r2, r8, r0
c0de2494:	9801      	ldr	r0, [sp, #4]
c0de2496:	f004 ff15 	bl	c0de72c4 <cx_bn_export>
c0de249a:	2800      	cmp	r0, #0
c0de249c:	d1b9      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de249e:	a801      	add	r0, sp, #4
c0de24a0:	f004 fedc 	bl	c0de725c <cx_bn_destroy>
c0de24a4:	2800      	cmp	r0, #0
c0de24a6:	d1b4      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de24a8:	9800      	ldr	r0, [sp, #0]
c0de24aa:	f108 0801 	add.w	r8, r8, #1
c0de24ae:	3005      	adds	r0, #5
c0de24b0:	9000      	str	r0, [sp, #0]
c0de24b2:	e7b9      	b.n	c0de2428 <zkn_compute_binding_factors+0x68>
c0de24b4:	a873      	add	r0, sp, #460	@ 0x1cc
c0de24b6:	f004 fed1 	bl	c0de725c <cx_bn_destroy>
c0de24ba:	2800      	cmp	r0, #0
c0de24bc:	d1a9      	bne.n	c0de2412 <zkn_compute_binding_factors+0x52>
c0de24be:	a872      	add	r0, sp, #456	@ 0x1c8
c0de24c0:	f004 fecc 	bl	c0de725c <cx_bn_destroy>
c0de24c4:	e7a5      	b.n	c0de2412 <zkn_compute_binding_factors+0x52>

c0de24c6 <zkn_serialize_scalar_for_hash>:
c0de24c6:	3a01      	subs	r2, #1
c0de24c8:	b121      	cbz	r1, c0de24d4 <zkn_serialize_scalar_for_hash+0xe>
c0de24ca:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de24ce:	5453      	strb	r3, [r2, r1]
c0de24d0:	3901      	subs	r1, #1
c0de24d2:	e7f9      	b.n	c0de24c8 <zkn_serialize_scalar_for_hash+0x2>
c0de24d4:	4770      	bx	lr

c0de24d6 <OUTLINED_FUNCTION_0>:
c0de24d6:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de24da:	f7ff fff4 	bl	c0de24c6 <zkn_serialize_scalar_for_hash>
c0de24de:	683a      	ldr	r2, [r7, #0]
c0de24e0:	4650      	mov	r0, sl
c0de24e2:	4659      	mov	r1, fp
c0de24e4:	f85d eb08 	ldr.w	lr, [sp], #8
c0de24e8:	f000 bf30 	b.w	c0de334c <zkn_frost_hash_update>

c0de24ec <OUTLINED_FUNCTION_2>:
c0de24ec:	461c      	mov	r4, r3
c0de24ee:	4615      	mov	r5, r2
c0de24f0:	f004 be9e 	b.w	c0de7230 <cx_bn_alloc>

c0de24f4 <OUTLINED_FUNCTION_3>:
c0de24f4:	4620      	mov	r0, r4
c0de24f6:	f000 b818 	b.w	c0de252a <tEdwards_destroy>

c0de24fa <OUTLINED_FUNCTION_4>:
c0de24fa:	2120      	movs	r1, #32
c0de24fc:	f004 be98 	b.w	c0de7230 <cx_bn_alloc>

c0de2500 <tEdwards_alloc>:
c0de2500:	b5b0      	push	{r4, r5, r7, lr}
c0de2502:	460d      	mov	r5, r1
c0de2504:	6801      	ldr	r1, [r0, #0]
c0de2506:	4604      	mov	r4, r0
c0de2508:	4628      	mov	r0, r5
c0de250a:	f004 fe91 	bl	c0de7230 <cx_bn_alloc>
c0de250e:	b920      	cbnz	r0, c0de251a <tEdwards_alloc+0x1a>
c0de2510:	6821      	ldr	r1, [r4, #0]
c0de2512:	1d28      	adds	r0, r5, #4
c0de2514:	f004 fe8c 	bl	c0de7230 <cx_bn_alloc>
c0de2518:	b100      	cbz	r0, c0de251c <tEdwards_alloc+0x1c>
c0de251a:	bdb0      	pop	{r4, r5, r7, pc}
c0de251c:	6821      	ldr	r1, [r4, #0]
c0de251e:	f105 0008 	add.w	r0, r5, #8
c0de2522:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2526:	f004 be83 	b.w	c0de7230 <cx_bn_alloc>

c0de252a <tEdwards_destroy>:
c0de252a:	b510      	push	{r4, lr}
c0de252c:	4608      	mov	r0, r1
c0de252e:	460c      	mov	r4, r1
c0de2530:	f004 fe94 	bl	c0de725c <cx_bn_destroy>
c0de2534:	b918      	cbnz	r0, c0de253e <tEdwards_destroy+0x14>
c0de2536:	1d20      	adds	r0, r4, #4
c0de2538:	f004 fe90 	bl	c0de725c <cx_bn_destroy>
c0de253c:	b100      	cbz	r0, c0de2540 <tEdwards_destroy+0x16>
c0de253e:	bd10      	pop	{r4, pc}
c0de2540:	f104 0008 	add.w	r0, r4, #8
c0de2544:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2548:	f004 be88 	b.w	c0de725c <cx_bn_destroy>

c0de254c <tEdwards_double>:
c0de254c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de254e:	460f      	mov	r7, r1
c0de2550:	4614      	mov	r4, r2
c0de2552:	4605      	mov	r5, r0
c0de2554:	6843      	ldr	r3, [r0, #4]
c0de2556:	6809      	ldr	r1, [r1, #0]
c0de2558:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de255a:	687a      	ldr	r2, [r7, #4]
c0de255c:	f004 fee2 	bl	c0de7324 <cx_bn_mod_add>
c0de2560:	2800      	cmp	r0, #0
c0de2562:	d154      	bne.n	c0de260e <tEdwards_double+0xc2>
c0de2564:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2568:	f105 0620 	add.w	r6, r5, #32
c0de256c:	f000 fbe4 	bl	c0de2d38 <OUTLINED_FUNCTION_2>
c0de2570:	2800      	cmp	r0, #0
c0de2572:	d14c      	bne.n	c0de260e <tEdwards_double+0xc2>
c0de2574:	6839      	ldr	r1, [r7, #0]
c0de2576:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2578:	f000 fbde 	bl	c0de2d38 <OUTLINED_FUNCTION_2>
c0de257c:	2800      	cmp	r0, #0
c0de257e:	d146      	bne.n	c0de260e <tEdwards_double+0xc2>
c0de2580:	6879      	ldr	r1, [r7, #4]
c0de2582:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2584:	f000 fbd8 	bl	c0de2d38 <OUTLINED_FUNCTION_2>
c0de2588:	2800      	cmp	r0, #0
c0de258a:	d140      	bne.n	c0de260e <tEdwards_double+0xc2>
c0de258c:	69a9      	ldr	r1, [r5, #24]
c0de258e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2590:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2592:	f000 fbcb 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de2596:	bbd0      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de2598:	686b      	ldr	r3, [r5, #4]
c0de259a:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de259e:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de25a0:	f004 fec0 	bl	c0de7324 <cx_bn_mod_add>
c0de25a4:	bb98      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25a6:	68b9      	ldr	r1, [r7, #8]
c0de25a8:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de25aa:	f000 fbc5 	bl	c0de2d38 <OUTLINED_FUNCTION_2>
c0de25ae:	bb70      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25b0:	686b      	ldr	r3, [r5, #4]
c0de25b2:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de25b4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de25b6:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de25b8:	f004 fec0 	bl	c0de733c <cx_bn_mod_sub>
c0de25bc:	bb38      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25be:	686b      	ldr	r3, [r5, #4]
c0de25c0:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de25c2:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de25c6:	f004 feb9 	bl	c0de733c <cx_bn_mod_sub>
c0de25ca:	bb00      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25cc:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de25d0:	686b      	ldr	r3, [r5, #4]
c0de25d2:	ca07      	ldmia	r2, {r0, r1, r2}
c0de25d4:	f004 feb2 	bl	c0de733c <cx_bn_mod_sub>
c0de25d8:	b9c8      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25da:	686b      	ldr	r3, [r5, #4]
c0de25dc:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de25e0:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de25e2:	f004 feab 	bl	c0de733c <cx_bn_mod_sub>
c0de25e6:	b990      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25e8:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de25ea:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de25ec:	6820      	ldr	r0, [r4, #0]
c0de25ee:	f000 fb9d 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de25f2:	b960      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de25f4:	686b      	ldr	r3, [r5, #4]
c0de25f6:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de25fa:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de25fc:	f004 fe9e 	bl	c0de733c <cx_bn_mod_sub>
c0de2600:	b928      	cbnz	r0, c0de260e <tEdwards_double+0xc2>
c0de2602:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2604:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2606:	6860      	ldr	r0, [r4, #4]
c0de2608:	f000 fb90 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de260c:	b100      	cbz	r0, c0de2610 <tEdwards_double+0xc4>
c0de260e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2610:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2612:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2614:	68a0      	ldr	r0, [r4, #8]
c0de2616:	4633      	mov	r3, r6
c0de2618:	b001      	add	sp, #4
c0de261a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de261e:	f004 bef3 	b.w	c0de7408 <cx_mont_mul>

c0de2622 <tEdwards_add>:
c0de2622:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2626:	4606      	mov	r6, r0
c0de2628:	4617      	mov	r7, r2
c0de262a:	460c      	mov	r4, r1
c0de262c:	6892      	ldr	r2, [r2, #8]
c0de262e:	6889      	ldr	r1, [r1, #8]
c0de2630:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2632:	4698      	mov	r8, r3
c0de2634:	f106 0520 	add.w	r5, r6, #32
c0de2638:	f000 fb7b 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de263c:	2800      	cmp	r0, #0
c0de263e:	d17d      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de2640:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2644:	462b      	mov	r3, r5
c0de2646:	460a      	mov	r2, r1
c0de2648:	f004 fede 	bl	c0de7408 <cx_mont_mul>
c0de264c:	2800      	cmp	r0, #0
c0de264e:	d175      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de2650:	683a      	ldr	r2, [r7, #0]
c0de2652:	6821      	ldr	r1, [r4, #0]
c0de2654:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2656:	f000 fb6c 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de265a:	2800      	cmp	r0, #0
c0de265c:	d16e      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de265e:	687a      	ldr	r2, [r7, #4]
c0de2660:	6861      	ldr	r1, [r4, #4]
c0de2662:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2664:	f000 fb65 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de2668:	2800      	cmp	r0, #0
c0de266a:	d167      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de266c:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2670:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2672:	f000 fb5e 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de2676:	2800      	cmp	r0, #0
c0de2678:	d160      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de267a:	69f2      	ldr	r2, [r6, #28]
c0de267c:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de267e:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2680:	f000 fb57 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de2684:	2800      	cmp	r0, #0
c0de2686:	d159      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de2688:	6873      	ldr	r3, [r6, #4]
c0de268a:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de268c:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2690:	f004 fe54 	bl	c0de733c <cx_bn_mod_sub>
c0de2694:	2800      	cmp	r0, #0
c0de2696:	d151      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de2698:	6873      	ldr	r3, [r6, #4]
c0de269a:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de269c:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de269e:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de26a0:	f004 fe40 	bl	c0de7324 <cx_bn_mod_add>
c0de26a4:	2800      	cmp	r0, #0
c0de26a6:	d149      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de26a8:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de26ac:	6873      	ldr	r3, [r6, #4]
c0de26ae:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de26b0:	f004 fe38 	bl	c0de7324 <cx_bn_mod_add>
c0de26b4:	2800      	cmp	r0, #0
c0de26b6:	d141      	bne.n	c0de273c <tEdwards_add+0x11a>
c0de26b8:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de26bc:	6873      	ldr	r3, [r6, #4]
c0de26be:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de26c0:	f004 fe30 	bl	c0de7324 <cx_bn_mod_add>
c0de26c4:	bbd0      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de26c6:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de26c8:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de26cc:	f000 fb31 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de26d0:	bba0      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de26d2:	6873      	ldr	r3, [r6, #4]
c0de26d4:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de26d8:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de26da:	f004 fe2f 	bl	c0de733c <cx_bn_mod_sub>
c0de26de:	bb68      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de26e0:	6873      	ldr	r3, [r6, #4]
c0de26e2:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de26e4:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de26e8:	f004 fe28 	bl	c0de733c <cx_bn_mod_sub>
c0de26ec:	bb30      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de26ee:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de26f2:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de26f4:	f000 fb1d 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de26f8:	bb00      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de26fa:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de26fc:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de26fe:	f8d8 0000 	ldr.w	r0, [r8]
c0de2702:	f000 fb16 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de2706:	b9c8      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de2708:	69b1      	ldr	r1, [r6, #24]
c0de270a:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de270e:	f000 fb10 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de2712:	b998      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de2714:	6873      	ldr	r3, [r6, #4]
c0de2716:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2718:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de271a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de271c:	f004 fe0e 	bl	c0de733c <cx_bn_mod_sub>
c0de2720:	b960      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de2722:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2724:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2726:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2728:	f000 fb03 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de272c:	b930      	cbnz	r0, c0de273c <tEdwards_add+0x11a>
c0de272e:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2732:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2736:	f000 fafc 	bl	c0de2d32 <OUTLINED_FUNCTION_1>
c0de273a:	b108      	cbz	r0, c0de2740 <tEdwards_add+0x11e>
c0de273c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2740:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2744:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2748:	462b      	mov	r3, r5
c0de274a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de274e:	f004 be5b 	b.w	c0de7408 <cx_mont_mul>

c0de2752 <tEdwards_IsOnCurve>:
c0de2752:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2754:	4605      	mov	r5, r0
c0de2756:	460f      	mov	r7, r1
c0de2758:	2005      	movs	r0, #5
c0de275a:	6809      	ldr	r1, [r1, #0]
c0de275c:	4614      	mov	r4, r2
c0de275e:	9000      	str	r0, [sp, #0]
c0de2760:	f105 0620 	add.w	r6, r5, #32
c0de2764:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2766:	460a      	mov	r2, r1
c0de2768:	f000 fae0 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de276c:	b100      	cbz	r0, c0de2770 <tEdwards_IsOnCurve+0x1e>
c0de276e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2770:	6879      	ldr	r1, [r7, #4]
c0de2772:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2774:	f000 fae0 	bl	c0de2d38 <OUTLINED_FUNCTION_2>
c0de2778:	2800      	cmp	r0, #0
c0de277a:	d1f8      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de277c:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2780:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2782:	f000 fad3 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de2786:	2800      	cmp	r0, #0
c0de2788:	d1f1      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de278a:	69a9      	ldr	r1, [r5, #24]
c0de278c:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de278e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2790:	f000 facc 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de2794:	2800      	cmp	r0, #0
c0de2796:	d1ea      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de2798:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de279a:	686b      	ldr	r3, [r5, #4]
c0de279c:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de279e:	4601      	mov	r1, r0
c0de27a0:	f004 fdc0 	bl	c0de7324 <cx_bn_mod_add>
c0de27a4:	2800      	cmp	r0, #0
c0de27a6:	d1e2      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de27a8:	69e9      	ldr	r1, [r5, #28]
c0de27aa:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de27ac:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de27ae:	f000 fabd 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de27b2:	2800      	cmp	r0, #0
c0de27b4:	d1db      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de27b6:	686b      	ldr	r3, [r5, #4]
c0de27b8:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de27ba:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de27bc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de27be:	f004 fdb1 	bl	c0de7324 <cx_bn_mod_add>
c0de27c2:	2800      	cmp	r0, #0
c0de27c4:	d1d3      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de27c6:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de27c8:	4632      	mov	r2, r6
c0de27ca:	4601      	mov	r1, r0
c0de27cc:	f004 fe10 	bl	c0de73f0 <cx_mont_from_montgomery>
c0de27d0:	2800      	cmp	r0, #0
c0de27d2:	d1cc      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de27d4:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de27d6:	4632      	mov	r2, r6
c0de27d8:	4601      	mov	r1, r0
c0de27da:	f004 fe09 	bl	c0de73f0 <cx_mont_from_montgomery>
c0de27de:	2800      	cmp	r0, #0
c0de27e0:	d1c5      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de27e2:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de27e6:	466a      	mov	r2, sp
c0de27e8:	f004 fd78 	bl	c0de72dc <cx_bn_cmp>
c0de27ec:	2800      	cmp	r0, #0
c0de27ee:	d1be      	bne.n	c0de276e <tEdwards_IsOnCurve+0x1c>
c0de27f0:	9800      	ldr	r0, [sp, #0]
c0de27f2:	fab0 f080 	clz	r0, r0
c0de27f6:	0940      	lsrs	r0, r0, #5
c0de27f8:	7020      	strb	r0, [r4, #0]
c0de27fa:	2000      	movs	r0, #0
c0de27fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2800 <tEdwards_Curve_alloc_init>:
c0de2800:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2804:	b0d2      	sub	sp, #328	@ 0x148
c0de2806:	4604      	mov	r4, r0
c0de2808:	2902      	cmp	r1, #2
c0de280a:	d022      	beq.n	c0de2852 <tEdwards_Curve_alloc_init+0x52>
c0de280c:	2901      	cmp	r1, #1
c0de280e:	f040 80cd 	bne.w	c0de29ac <tEdwards_Curve_alloc_init+0x1ac>
c0de2812:	2020      	movs	r0, #32
c0de2814:	2220      	movs	r2, #32
c0de2816:	6020      	str	r0, [r4, #0]
c0de2818:	af4a      	add	r7, sp, #296	@ 0x128
c0de281a:	4967      	ldr	r1, [pc, #412]	@ (c0de29b8 <tEdwards_Curve_alloc_init+0x1b8>)
c0de281c:	4638      	mov	r0, r7
c0de281e:	4479      	add	r1, pc
c0de2820:	f004 ffbc 	bl	c0de779c <__aeabi_memcpy>
c0de2824:	ae42      	add	r6, sp, #264	@ 0x108
c0de2826:	4965      	ldr	r1, [pc, #404]	@ (c0de29bc <tEdwards_Curve_alloc_init+0x1bc>)
c0de2828:	2220      	movs	r2, #32
c0de282a:	4630      	mov	r0, r6
c0de282c:	4479      	add	r1, pc
c0de282e:	f004 ffb5 	bl	c0de779c <__aeabi_memcpy>
c0de2832:	4963      	ldr	r1, [pc, #396]	@ (c0de29c0 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2834:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2838:	2220      	movs	r2, #32
c0de283a:	4650      	mov	r0, sl
c0de283c:	4479      	add	r1, pc
c0de283e:	f004 ffad 	bl	c0de779c <__aeabi_memcpy>
c0de2842:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2844:	495f      	ldr	r1, [pc, #380]	@ (c0de29c4 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2846:	2220      	movs	r2, #32
c0de2848:	4628      	mov	r0, r5
c0de284a:	4479      	add	r1, pc
c0de284c:	f004 ffa6 	bl	c0de779c <__aeabi_memcpy>
c0de2850:	e02d      	b.n	c0de28ae <tEdwards_Curve_alloc_init+0xae>
c0de2852:	2020      	movs	r0, #32
c0de2854:	2220      	movs	r2, #32
c0de2856:	6020      	str	r0, [r4, #0]
c0de2858:	af2a      	add	r7, sp, #168	@ 0xa8
c0de285a:	495b      	ldr	r1, [pc, #364]	@ (c0de29c8 <tEdwards_Curve_alloc_init+0x1c8>)
c0de285c:	4638      	mov	r0, r7
c0de285e:	4479      	add	r1, pc
c0de2860:	f004 ff9c 	bl	c0de779c <__aeabi_memcpy>
c0de2864:	ae22      	add	r6, sp, #136	@ 0x88
c0de2866:	4959      	ldr	r1, [pc, #356]	@ (c0de29cc <tEdwards_Curve_alloc_init+0x1cc>)
c0de2868:	2220      	movs	r2, #32
c0de286a:	4630      	mov	r0, r6
c0de286c:	4479      	add	r1, pc
c0de286e:	f004 ff95 	bl	c0de779c <__aeabi_memcpy>
c0de2872:	4957      	ldr	r1, [pc, #348]	@ (c0de29d0 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2874:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2878:	2220      	movs	r2, #32
c0de287a:	4650      	mov	r0, sl
c0de287c:	4479      	add	r1, pc
c0de287e:	f004 ff8d 	bl	c0de779c <__aeabi_memcpy>
c0de2882:	a812      	add	r0, sp, #72	@ 0x48
c0de2884:	4953      	ldr	r1, [pc, #332]	@ (c0de29d4 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2886:	2220      	movs	r2, #32
c0de2888:	9001      	str	r0, [sp, #4]
c0de288a:	4479      	add	r1, pc
c0de288c:	f004 ff86 	bl	c0de779c <__aeabi_memcpy>
c0de2890:	4951      	ldr	r1, [pc, #324]	@ (c0de29d8 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2892:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2896:	2220      	movs	r2, #32
c0de2898:	4658      	mov	r0, fp
c0de289a:	4479      	add	r1, pc
c0de289c:	f004 ff7e 	bl	c0de779c <__aeabi_memcpy>
c0de28a0:	ad02      	add	r5, sp, #8
c0de28a2:	494e      	ldr	r1, [pc, #312]	@ (c0de29dc <tEdwards_Curve_alloc_init+0x1dc>)
c0de28a4:	2220      	movs	r2, #32
c0de28a6:	4628      	mov	r0, r5
c0de28a8:	4479      	add	r1, pc
c0de28aa:	f004 ff77 	bl	c0de779c <__aeabi_memcpy>
c0de28ae:	f104 0804 	add.w	r8, r4, #4
c0de28b2:	2120      	movs	r1, #32
c0de28b4:	463a      	mov	r2, r7
c0de28b6:	2320      	movs	r3, #32
c0de28b8:	4640      	mov	r0, r8
c0de28ba:	f004 fcc3 	bl	c0de7244 <cx_bn_alloc_init>
c0de28be:	2800      	cmp	r0, #0
c0de28c0:	d175      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de28c2:	4620      	mov	r0, r4
c0de28c4:	462a      	mov	r2, r5
c0de28c6:	f850 1b08 	ldr.w	r1, [r0], #8
c0de28ca:	460b      	mov	r3, r1
c0de28cc:	f004 fcba 	bl	c0de7244 <cx_bn_alloc_init>
c0de28d0:	2800      	cmp	r0, #0
c0de28d2:	d16c      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de28d4:	f104 0520 	add.w	r5, r4, #32
c0de28d8:	2120      	movs	r1, #32
c0de28da:	4628      	mov	r0, r5
c0de28dc:	f004 fd68 	bl	c0de73b0 <cx_mont_alloc>
c0de28e0:	2800      	cmp	r0, #0
c0de28e2:	d164      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de28e4:	f8d8 1000 	ldr.w	r1, [r8]
c0de28e8:	4628      	mov	r0, r5
c0de28ea:	f004 fd6b 	bl	c0de73c4 <cx_mont_init>
c0de28ee:	2800      	cmp	r0, #0
c0de28f0:	d15d      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de28f2:	4627      	mov	r7, r4
c0de28f4:	f857 1b28 	ldr.w	r1, [r7], #40
c0de28f8:	4638      	mov	r0, r7
c0de28fa:	f004 fc99 	bl	c0de7230 <cx_bn_alloc>
c0de28fe:	2800      	cmp	r0, #0
c0de2900:	d155      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2902:	6838      	ldr	r0, [r7, #0]
c0de2904:	2101      	movs	r1, #1
c0de2906:	f004 fcd3 	bl	c0de72b0 <cx_bn_set_u32>
c0de290a:	2800      	cmp	r0, #0
c0de290c:	d14f      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de290e:	6838      	ldr	r0, [r7, #0]
c0de2910:	f000 fa16 	bl	c0de2d40 <OUTLINED_FUNCTION_3>
c0de2914:	2800      	cmp	r0, #0
c0de2916:	d14a      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2918:	f104 070c 	add.w	r7, r4, #12
c0de291c:	4620      	mov	r0, r4
c0de291e:	4639      	mov	r1, r7
c0de2920:	f7ff fdee 	bl	c0de2500 <tEdwards_alloc>
c0de2924:	2800      	cmp	r0, #0
c0de2926:	d142      	bne.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2928:	9901      	ldr	r1, [sp, #4]
c0de292a:	4620      	mov	r0, r4
c0de292c:	465a      	mov	r2, fp
c0de292e:	463b      	mov	r3, r7
c0de2930:	f000 f856 	bl	c0de29e0 <tEdwards_init>
c0de2934:	bbd8      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2936:	4627      	mov	r7, r4
c0de2938:	4632      	mov	r2, r6
c0de293a:	f857 1b18 	ldr.w	r1, [r7], #24
c0de293e:	4638      	mov	r0, r7
c0de2940:	460b      	mov	r3, r1
c0de2942:	f004 fc7f 	bl	c0de7244 <cx_bn_alloc_init>
c0de2946:	bb90      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2948:	6838      	ldr	r0, [r7, #0]
c0de294a:	f000 f9f9 	bl	c0de2d40 <OUTLINED_FUNCTION_3>
c0de294e:	bb70      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2950:	4626      	mov	r6, r4
c0de2952:	4652      	mov	r2, sl
c0de2954:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2958:	4630      	mov	r0, r6
c0de295a:	460b      	mov	r3, r1
c0de295c:	f004 fc72 	bl	c0de7244 <cx_bn_alloc_init>
c0de2960:	bb28      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2962:	6830      	ldr	r0, [r6, #0]
c0de2964:	f000 f9ec 	bl	c0de2d40 <OUTLINED_FUNCTION_3>
c0de2968:	bb08      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de296a:	4620      	mov	r0, r4
c0de296c:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2970:	f004 fc5e 	bl	c0de7230 <cx_bn_alloc>
c0de2974:	b9d8      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2976:	f000 f9fb 	bl	c0de2d70 <OUTLINED_FUNCTION_8>
c0de297a:	b9c0      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de297c:	f000 f9e4 	bl	c0de2d48 <OUTLINED_FUNCTION_4>
c0de2980:	b9a8      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2982:	f000 f9f0 	bl	c0de2d66 <OUTLINED_FUNCTION_7>
c0de2986:	b990      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2988:	f000 f9fc 	bl	c0de2d84 <OUTLINED_FUNCTION_10>
c0de298c:	b978      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de298e:	f000 f9e5 	bl	c0de2d5c <OUTLINED_FUNCTION_6>
c0de2992:	b960      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de2994:	f000 f9f1 	bl	c0de2d7a <OUTLINED_FUNCTION_9>
c0de2998:	b948      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de299a:	f000 f9da 	bl	c0de2d52 <OUTLINED_FUNCTION_5>
c0de299e:	b930      	cbnz	r0, c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de29a0:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de29a4:	4620      	mov	r0, r4
c0de29a6:	f004 fc43 	bl	c0de7230 <cx_bn_alloc>
c0de29aa:	e000      	b.n	c0de29ae <tEdwards_Curve_alloc_init+0x1ae>
c0de29ac:	4801      	ldr	r0, [pc, #4]	@ (c0de29b4 <tEdwards_Curve_alloc_init+0x1b4>)
c0de29ae:	b052      	add	sp, #328	@ 0x148
c0de29b0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de29b4:	5a4b4e01 	.word	0x5a4b4e01
c0de29b8:	000055b6 	.word	0x000055b6
c0de29bc:	00005748 	.word	0x00005748
c0de29c0:	000056f8 	.word	0x000056f8
c0de29c4:	0000564a 	.word	0x0000564a
c0de29c8:	00005756 	.word	0x00005756
c0de29cc:	000056a8 	.word	0x000056a8
c0de29d0:	00005718 	.word	0x00005718
c0de29d4:	0000574a 	.word	0x0000574a
c0de29d8:	0000575a 	.word	0x0000575a
c0de29dc:	0000560c 	.word	0x0000560c

c0de29e0 <tEdwards_init>:
c0de29e0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de29e2:	6806      	ldr	r6, [r0, #0]
c0de29e4:	461c      	mov	r4, r3
c0de29e6:	4617      	mov	r7, r2
c0de29e8:	460a      	mov	r2, r1
c0de29ea:	4605      	mov	r5, r0
c0de29ec:	a802      	add	r0, sp, #8
c0de29ee:	4631      	mov	r1, r6
c0de29f0:	4633      	mov	r3, r6
c0de29f2:	f004 fc27 	bl	c0de7244 <cx_bn_alloc_init>
c0de29f6:	b100      	cbz	r0, c0de29fa <tEdwards_init+0x1a>
c0de29f8:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de29fa:	a801      	add	r0, sp, #4
c0de29fc:	4631      	mov	r1, r6
c0de29fe:	463a      	mov	r2, r7
c0de2a00:	4633      	mov	r3, r6
c0de2a02:	f004 fc1f 	bl	c0de7244 <cx_bn_alloc_init>
c0de2a06:	2800      	cmp	r0, #0
c0de2a08:	d1f6      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a0a:	4668      	mov	r0, sp
c0de2a0c:	4631      	mov	r1, r6
c0de2a0e:	f004 fc0f 	bl	c0de7230 <cx_bn_alloc>
c0de2a12:	2800      	cmp	r0, #0
c0de2a14:	d1f0      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a16:	f105 0620 	add.w	r6, r5, #32
c0de2a1a:	6820      	ldr	r0, [r4, #0]
c0de2a1c:	9902      	ldr	r1, [sp, #8]
c0de2a1e:	4632      	mov	r2, r6
c0de2a20:	f004 fcda 	bl	c0de73d8 <cx_mont_to_montgomery>
c0de2a24:	2800      	cmp	r0, #0
c0de2a26:	d1e7      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a28:	6860      	ldr	r0, [r4, #4]
c0de2a2a:	9901      	ldr	r1, [sp, #4]
c0de2a2c:	4632      	mov	r2, r6
c0de2a2e:	f004 fcd3 	bl	c0de73d8 <cx_mont_to_montgomery>
c0de2a32:	2800      	cmp	r0, #0
c0de2a34:	d1e0      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a36:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2a38:	68a0      	ldr	r0, [r4, #8]
c0de2a3a:	f004 fc2f 	bl	c0de729c <cx_bn_copy>
c0de2a3e:	2800      	cmp	r0, #0
c0de2a40:	d1da      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a42:	a802      	add	r0, sp, #8
c0de2a44:	f004 fc0a 	bl	c0de725c <cx_bn_destroy>
c0de2a48:	2800      	cmp	r0, #0
c0de2a4a:	d1d5      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a4c:	a801      	add	r0, sp, #4
c0de2a4e:	f004 fc05 	bl	c0de725c <cx_bn_destroy>
c0de2a52:	2800      	cmp	r0, #0
c0de2a54:	d1d0      	bne.n	c0de29f8 <tEdwards_init+0x18>
c0de2a56:	4668      	mov	r0, sp
c0de2a58:	f004 fc00 	bl	c0de725c <cx_bn_destroy>
c0de2a5c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2a5e <tEdwards_Curve_partial_destroy>:
c0de2a5e:	b510      	push	{r4, lr}
c0de2a60:	4604      	mov	r4, r0
c0de2a62:	302c      	adds	r0, #44	@ 0x2c
c0de2a64:	f004 fbfa 	bl	c0de725c <cx_bn_destroy>
c0de2a68:	bbd8      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2a6a:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2a6e:	f004 fbf5 	bl	c0de725c <cx_bn_destroy>
c0de2a72:	bbb0      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2a74:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2a78:	f004 fbf0 	bl	c0de725c <cx_bn_destroy>
c0de2a7c:	bb88      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2a7e:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2a82:	f004 fbeb 	bl	c0de725c <cx_bn_destroy>
c0de2a86:	bb60      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2a88:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2a8c:	f004 fbe6 	bl	c0de725c <cx_bn_destroy>
c0de2a90:	bb38      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2a92:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2a96:	f004 fbe1 	bl	c0de725c <cx_bn_destroy>
c0de2a9a:	bb10      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2a9c:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2aa0:	f004 fbdc 	bl	c0de725c <cx_bn_destroy>
c0de2aa4:	b9e8      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2aa6:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2aaa:	f004 fbd7 	bl	c0de725c <cx_bn_destroy>
c0de2aae:	b9c0      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2ab0:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2ab4:	f004 fbd2 	bl	c0de725c <cx_bn_destroy>
c0de2ab8:	b998      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2aba:	f104 010c 	add.w	r1, r4, #12
c0de2abe:	f7ff fd34 	bl	c0de252a <tEdwards_destroy>
c0de2ac2:	b970      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2ac4:	f104 0018 	add.w	r0, r4, #24
c0de2ac8:	f004 fbc8 	bl	c0de725c <cx_bn_destroy>
c0de2acc:	b948      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2ace:	f104 001c 	add.w	r0, r4, #28
c0de2ad2:	f004 fbc3 	bl	c0de725c <cx_bn_destroy>
c0de2ad6:	b920      	cbnz	r0, c0de2ae2 <tEdwards_Curve_partial_destroy+0x84>
c0de2ad8:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2adc:	f004 fbbe 	bl	c0de725c <cx_bn_destroy>
c0de2ae0:	b100      	cbz	r0, c0de2ae4 <tEdwards_Curve_partial_destroy+0x86>
c0de2ae2:	bd10      	pop	{r4, pc}
c0de2ae4:	f104 0008 	add.w	r0, r4, #8
c0de2ae8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2aec:	f004 bbb6 	b.w	c0de725c <cx_bn_destroy>

c0de2af0 <tEdwards_SetNeutral>:
c0de2af0:	b5b0      	push	{r4, r5, r7, lr}
c0de2af2:	4605      	mov	r5, r0
c0de2af4:	6808      	ldr	r0, [r1, #0]
c0de2af6:	460c      	mov	r4, r1
c0de2af8:	2100      	movs	r1, #0
c0de2afa:	f004 fbd9 	bl	c0de72b0 <cx_bn_set_u32>
c0de2afe:	b918      	cbnz	r0, c0de2b08 <tEdwards_SetNeutral+0x18>
c0de2b00:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2b02:	f000 f944 	bl	c0de2d8e <OUTLINED_FUNCTION_11>
c0de2b06:	b100      	cbz	r0, c0de2b0a <tEdwards_SetNeutral+0x1a>
c0de2b08:	bdb0      	pop	{r4, r5, r7, pc}
c0de2b0a:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2b0c:	68a0      	ldr	r0, [r4, #8]
c0de2b0e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2b12:	f004 bbc3 	b.w	c0de729c <cx_bn_copy>

c0de2b16 <tEdwards_export>:
c0de2b16:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b1a:	4698      	mov	r8, r3
c0de2b1c:	4616      	mov	r6, r2
c0de2b1e:	460f      	mov	r7, r1
c0de2b20:	4605      	mov	r5, r0
c0de2b22:	f000 f81e 	bl	c0de2b62 <tEdwards_normalize>
c0de2b26:	b998      	cbnz	r0, c0de2b50 <tEdwards_export+0x3a>
c0de2b28:	f105 0420 	add.w	r4, r5, #32
c0de2b2c:	6839      	ldr	r1, [r7, #0]
c0de2b2e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b30:	4622      	mov	r2, r4
c0de2b32:	f004 fc5d 	bl	c0de73f0 <cx_mont_from_montgomery>
c0de2b36:	b958      	cbnz	r0, c0de2b50 <tEdwards_export+0x3a>
c0de2b38:	6879      	ldr	r1, [r7, #4]
c0de2b3a:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2b3c:	4622      	mov	r2, r4
c0de2b3e:	f004 fc57 	bl	c0de73f0 <cx_mont_from_montgomery>
c0de2b42:	b928      	cbnz	r0, c0de2b50 <tEdwards_export+0x3a>
c0de2b44:	682a      	ldr	r2, [r5, #0]
c0de2b46:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b48:	4631      	mov	r1, r6
c0de2b4a:	f004 fbbb 	bl	c0de72c4 <cx_bn_export>
c0de2b4e:	b108      	cbz	r0, c0de2b54 <tEdwards_export+0x3e>
c0de2b50:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b54:	682a      	ldr	r2, [r5, #0]
c0de2b56:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2b58:	4641      	mov	r1, r8
c0de2b5a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b5e:	f004 bbb1 	b.w	c0de72c4 <cx_bn_export>

c0de2b62 <tEdwards_normalize>:
c0de2b62:	b570      	push	{r4, r5, r6, lr}
c0de2b64:	4605      	mov	r5, r0
c0de2b66:	460c      	mov	r4, r1
c0de2b68:	6889      	ldr	r1, [r1, #8]
c0de2b6a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2b6c:	f105 0620 	add.w	r6, r5, #32
c0de2b70:	4632      	mov	r2, r6
c0de2b72:	f004 fc65 	bl	c0de7440 <cx_mont_invert_nprime>
c0de2b76:	b9d0      	cbnz	r0, c0de2bae <tEdwards_normalize+0x4c>
c0de2b78:	6822      	ldr	r2, [r4, #0]
c0de2b7a:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2b7e:	f000 f8d5 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de2b82:	b9a0      	cbnz	r0, c0de2bae <tEdwards_normalize+0x4c>
c0de2b84:	6862      	ldr	r2, [r4, #4]
c0de2b86:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b88:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2b8a:	f000 f8cf 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de2b8e:	b970      	cbnz	r0, c0de2bae <tEdwards_normalize+0x4c>
c0de2b90:	68a2      	ldr	r2, [r4, #8]
c0de2b92:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b94:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2b96:	f000 f8c9 	bl	c0de2d2c <OUTLINED_FUNCTION_0>
c0de2b9a:	b940      	cbnz	r0, c0de2bae <tEdwards_normalize+0x4c>
c0de2b9c:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2b9e:	6820      	ldr	r0, [r4, #0]
c0de2ba0:	f004 fb7c 	bl	c0de729c <cx_bn_copy>
c0de2ba4:	b918      	cbnz	r0, c0de2bae <tEdwards_normalize+0x4c>
c0de2ba6:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2ba8:	f000 f8f1 	bl	c0de2d8e <OUTLINED_FUNCTION_11>
c0de2bac:	b100      	cbz	r0, c0de2bb0 <tEdwards_normalize+0x4e>
c0de2bae:	bd70      	pop	{r4, r5, r6, pc}
c0de2bb0:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2bb2:	68a0      	ldr	r0, [r4, #8]
c0de2bb4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2bb8:	f004 bb70 	b.w	c0de729c <cx_bn_copy>

c0de2bbc <tEdwards_copy>:
c0de2bbc:	b5b0      	push	{r4, r5, r7, lr}
c0de2bbe:	460c      	mov	r4, r1
c0de2bc0:	4605      	mov	r5, r0
c0de2bc2:	6801      	ldr	r1, [r0, #0]
c0de2bc4:	6820      	ldr	r0, [r4, #0]
c0de2bc6:	f004 fb69 	bl	c0de729c <cx_bn_copy>
c0de2bca:	b918      	cbnz	r0, c0de2bd4 <tEdwards_copy+0x18>
c0de2bcc:	6869      	ldr	r1, [r5, #4]
c0de2bce:	f000 f8de 	bl	c0de2d8e <OUTLINED_FUNCTION_11>
c0de2bd2:	b100      	cbz	r0, c0de2bd6 <tEdwards_copy+0x1a>
c0de2bd4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2bd6:	68a9      	ldr	r1, [r5, #8]
c0de2bd8:	68a0      	ldr	r0, [r4, #8]
c0de2bda:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2bde:	f004 bb5d 	b.w	c0de729c <cx_bn_copy>

c0de2be2 <tEdwards_alloc_init>:
c0de2be2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2be4:	460e      	mov	r6, r1
c0de2be6:	6801      	ldr	r1, [r0, #0]
c0de2be8:	4607      	mov	r7, r0
c0de2bea:	4618      	mov	r0, r3
c0de2bec:	461c      	mov	r4, r3
c0de2bee:	4615      	mov	r5, r2
c0de2bf0:	f004 fb1e 	bl	c0de7230 <cx_bn_alloc>
c0de2bf4:	b950      	cbnz	r0, c0de2c0c <tEdwards_alloc_init+0x2a>
c0de2bf6:	6839      	ldr	r1, [r7, #0]
c0de2bf8:	1d20      	adds	r0, r4, #4
c0de2bfa:	f004 fb19 	bl	c0de7230 <cx_bn_alloc>
c0de2bfe:	b928      	cbnz	r0, c0de2c0c <tEdwards_alloc_init+0x2a>
c0de2c00:	6839      	ldr	r1, [r7, #0]
c0de2c02:	f104 0008 	add.w	r0, r4, #8
c0de2c06:	f004 fb13 	bl	c0de7230 <cx_bn_alloc>
c0de2c0a:	b100      	cbz	r0, c0de2c0e <tEdwards_alloc_init+0x2c>
c0de2c0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2c0e:	4638      	mov	r0, r7
c0de2c10:	4631      	mov	r1, r6
c0de2c12:	462a      	mov	r2, r5
c0de2c14:	4623      	mov	r3, r4
c0de2c16:	b001      	add	sp, #4
c0de2c18:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2c1c:	f7ff bee0 	b.w	c0de29e0 <tEdwards_init>

c0de2c20 <tEdwards_scalarMul_bn>:
c0de2c20:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c24:	4607      	mov	r7, r0
c0de2c26:	2000      	movs	r0, #0
c0de2c28:	4688      	mov	r8, r1
c0de2c2a:	4615      	mov	r5, r2
c0de2c2c:	2100      	movs	r1, #0
c0de2c2e:	469b      	mov	fp, r3
c0de2c30:	9003      	str	r0, [sp, #12]
c0de2c32:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2c36:	6810      	ldr	r0, [r2, #0]
c0de2c38:	aa03      	add	r2, sp, #12
c0de2c3a:	f004 fb5b 	bl	c0de72f4 <cx_bn_cmp_u32>
c0de2c3e:	bb38      	cbnz	r0, c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2c40:	9803      	ldr	r0, [sp, #12]
c0de2c42:	b1d0      	cbz	r0, c0de2c7a <tEdwards_scalarMul_bn+0x5a>
c0de2c44:	6828      	ldr	r0, [r5, #0]
c0de2c46:	a901      	add	r1, sp, #4
c0de2c48:	f004 fb12 	bl	c0de7270 <cx_bn_nbytes>
c0de2c4c:	bb00      	cbnz	r0, c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2c4e:	2002      	movs	r0, #2
c0de2c50:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2c54:	f10d 040b 	add.w	r4, sp, #11
c0de2c58:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c5a:	9801      	ldr	r0, [sp, #4]
c0de2c5c:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2c60:	2000      	movs	r0, #0
c0de2c62:	2801      	cmp	r0, #1
c0de2c64:	d00f      	beq.n	c0de2c86 <tEdwards_scalarMul_bn+0x66>
c0de2c66:	6828      	ldr	r0, [r5, #0]
c0de2c68:	4631      	mov	r1, r6
c0de2c6a:	4622      	mov	r2, r4
c0de2c6c:	f004 fb4e 	bl	c0de730c <cx_bn_tst_bit>
c0de2c70:	b970      	cbnz	r0, c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2c72:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2c76:	3e01      	subs	r6, #1
c0de2c78:	e7f3      	b.n	c0de2c62 <tEdwards_scalarMul_bn+0x42>
c0de2c7a:	4638      	mov	r0, r7
c0de2c7c:	4659      	mov	r1, fp
c0de2c7e:	f7ff ff37 	bl	c0de2af0 <tEdwards_SetNeutral>
c0de2c82:	b928      	cbnz	r0, c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2c84:	e7de      	b.n	c0de2c44 <tEdwards_scalarMul_bn+0x24>
c0de2c86:	4640      	mov	r0, r8
c0de2c88:	4659      	mov	r1, fp
c0de2c8a:	f7ff ff97 	bl	c0de2bbc <tEdwards_copy>
c0de2c8e:	b110      	cbz	r0, c0de2c96 <tEdwards_scalarMul_bn+0x76>
c0de2c90:	b004      	add	sp, #16
c0de2c92:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2c96:	2001      	movs	r0, #1
c0de2c98:	f10d 0a0b 	add.w	sl, sp, #11
c0de2c9c:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2ca0:	2e00      	cmp	r6, #0
c0de2ca2:	d420      	bmi.n	c0de2ce6 <tEdwards_scalarMul_bn+0xc6>
c0de2ca4:	4638      	mov	r0, r7
c0de2ca6:	4659      	mov	r1, fp
c0de2ca8:	465a      	mov	r2, fp
c0de2caa:	f7ff fc4f 	bl	c0de254c <tEdwards_double>
c0de2cae:	2800      	cmp	r0, #0
c0de2cb0:	d1ee      	bne.n	c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2cb2:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2cb4:	4631      	mov	r1, r6
c0de2cb6:	4652      	mov	r2, sl
c0de2cb8:	0040      	lsls	r0, r0, #1
c0de2cba:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2cbc:	6828      	ldr	r0, [r5, #0]
c0de2cbe:	f004 fb25 	bl	c0de730c <cx_bn_tst_bit>
c0de2cc2:	2800      	cmp	r0, #0
c0de2cc4:	d1e4      	bne.n	c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2cc6:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2cca:	b150      	cbz	r0, c0de2ce2 <tEdwards_scalarMul_bn+0xc2>
c0de2ccc:	4638      	mov	r0, r7
c0de2cce:	4659      	mov	r1, fp
c0de2cd0:	4642      	mov	r2, r8
c0de2cd2:	465b      	mov	r3, fp
c0de2cd4:	f7ff fca5 	bl	c0de2622 <tEdwards_add>
c0de2cd8:	2800      	cmp	r0, #0
c0de2cda:	d1d9      	bne.n	c0de2c90 <tEdwards_scalarMul_bn+0x70>
c0de2cdc:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2cde:	3001      	adds	r0, #1
c0de2ce0:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2ce2:	3e01      	subs	r6, #1
c0de2ce4:	e7dc      	b.n	c0de2ca0 <tEdwards_scalarMul_bn+0x80>
c0de2ce6:	2000      	movs	r0, #0
c0de2ce8:	e7d2      	b.n	c0de2c90 <tEdwards_scalarMul_bn+0x70>
	...

c0de2cec <tEdwards_scalarMul>:
c0de2cec:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2cee:	460c      	mov	r4, r1
c0de2cf0:	6801      	ldr	r1, [r0, #0]
c0de2cf2:	4299      	cmp	r1, r3
c0de2cf4:	bf3c      	itt	cc
c0de2cf6:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2d28 <tEdwards_scalarMul+0x3c>)
c0de2cf8:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2cfa:	4605      	mov	r5, r0
c0de2cfc:	20ca      	movs	r0, #202	@ 0xca
c0de2cfe:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2d00:	a801      	add	r0, sp, #4
c0de2d02:	f004 fa9f 	bl	c0de7244 <cx_bn_alloc_init>
c0de2d06:	b100      	cbz	r0, c0de2d0a <tEdwards_scalarMul+0x1e>
c0de2d08:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2d0a:	20b3      	movs	r0, #179	@ 0xb3
c0de2d0c:	9b06      	ldr	r3, [sp, #24]
c0de2d0e:	4621      	mov	r1, r4
c0de2d10:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2d12:	aa01      	add	r2, sp, #4
c0de2d14:	4628      	mov	r0, r5
c0de2d16:	f7ff ff83 	bl	c0de2c20 <tEdwards_scalarMul_bn>
c0de2d1a:	2800      	cmp	r0, #0
c0de2d1c:	d1f4      	bne.n	c0de2d08 <tEdwards_scalarMul+0x1c>
c0de2d1e:	a801      	add	r0, sp, #4
c0de2d20:	f004 fa9c 	bl	c0de725c <cx_bn_destroy>
c0de2d24:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2d26:	bf00      	nop
c0de2d28:	5a4b4e01 	.word	0x5a4b4e01

c0de2d2c <OUTLINED_FUNCTION_0>:
c0de2d2c:	4633      	mov	r3, r6
c0de2d2e:	f004 bb6b 	b.w	c0de7408 <cx_mont_mul>

c0de2d32 <OUTLINED_FUNCTION_1>:
c0de2d32:	462b      	mov	r3, r5
c0de2d34:	f004 bb68 	b.w	c0de7408 <cx_mont_mul>

c0de2d38 <OUTLINED_FUNCTION_2>:
c0de2d38:	4633      	mov	r3, r6
c0de2d3a:	460a      	mov	r2, r1
c0de2d3c:	f004 bb64 	b.w	c0de7408 <cx_mont_mul>

c0de2d40 <OUTLINED_FUNCTION_3>:
c0de2d40:	462a      	mov	r2, r5
c0de2d42:	4601      	mov	r1, r0
c0de2d44:	f004 bb48 	b.w	c0de73d8 <cx_mont_to_montgomery>

c0de2d48 <OUTLINED_FUNCTION_4>:
c0de2d48:	4620      	mov	r0, r4
c0de2d4a:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2d4e:	f004 ba6f 	b.w	c0de7230 <cx_bn_alloc>

c0de2d52 <OUTLINED_FUNCTION_5>:
c0de2d52:	4620      	mov	r0, r4
c0de2d54:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2d58:	f004 ba6a 	b.w	c0de7230 <cx_bn_alloc>

c0de2d5c <OUTLINED_FUNCTION_6>:
c0de2d5c:	4620      	mov	r0, r4
c0de2d5e:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2d62:	f004 ba65 	b.w	c0de7230 <cx_bn_alloc>

c0de2d66 <OUTLINED_FUNCTION_7>:
c0de2d66:	4620      	mov	r0, r4
c0de2d68:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2d6c:	f004 ba60 	b.w	c0de7230 <cx_bn_alloc>

c0de2d70 <OUTLINED_FUNCTION_8>:
c0de2d70:	4620      	mov	r0, r4
c0de2d72:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2d76:	f004 ba5b 	b.w	c0de7230 <cx_bn_alloc>

c0de2d7a <OUTLINED_FUNCTION_9>:
c0de2d7a:	4620      	mov	r0, r4
c0de2d7c:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2d80:	f004 ba56 	b.w	c0de7230 <cx_bn_alloc>

c0de2d84 <OUTLINED_FUNCTION_10>:
c0de2d84:	4620      	mov	r0, r4
c0de2d86:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2d8a:	f004 ba51 	b.w	c0de7230 <cx_bn_alloc>

c0de2d8e <OUTLINED_FUNCTION_11>:
c0de2d8e:	6860      	ldr	r0, [r4, #4]
c0de2d90:	f004 ba84 	b.w	c0de729c <cx_bn_copy>

c0de2d94 <grain_lfsr_advance>:
c0de2d94:	b5b0      	push	{r4, r5, r7, lr}
c0de2d96:	68c2      	ldr	r2, [r0, #12]
c0de2d98:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2d9c:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2da0:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2da4:	07e4      	lsls	r4, r4, #31
c0de2da6:	60c5      	str	r5, [r0, #12]
c0de2da8:	07dd      	lsls	r5, r3, #31
c0de2daa:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2dae:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2db2:	6044      	str	r4, [r0, #4]
c0de2db4:	4c15      	ldr	r4, [pc, #84]	@ (c0de2e0c <grain_lfsr_advance+0x78>)
c0de2db6:	6005      	str	r5, [r0, #0]
c0de2db8:	4021      	ands	r1, r4
c0de2dba:	4c15      	ldr	r4, [pc, #84]	@ (c0de2e10 <grain_lfsr_advance+0x7c>)
c0de2dbc:	4023      	ands	r3, r4
c0de2dbe:	4419      	add	r1, r3
c0de2dc0:	0c0c      	lsrs	r4, r1, #16
c0de2dc2:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2dc6:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2dca:	4421      	add	r1, r4
c0de2dcc:	0a0c      	lsrs	r4, r1, #8
c0de2dce:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2dd2:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2dd6:	4061      	eors	r1, r4
c0de2dd8:	090c      	lsrs	r4, r1, #4
c0de2dda:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2dde:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2de2:	4061      	eors	r1, r4
c0de2de4:	088c      	lsrs	r4, r1, #2
c0de2de6:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2dea:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2dee:	4061      	eors	r1, r4
c0de2df0:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2df4:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2df8:	4059      	eors	r1, r3
c0de2dfa:	f001 0101 	and.w	r1, r1, #1
c0de2dfe:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2e02:	6082      	str	r2, [r0, #8]
c0de2e04:	4608      	mov	r0, r1
c0de2e06:	2100      	movs	r1, #0
c0de2e08:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e0a:	bf00      	nop
c0de2e0c:	00802001 	.word	0x00802001
c0de2e10:	40080040 	.word	0x40080040

c0de2e14 <next64_graingen>:
c0de2e14:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2e18:	460c      	mov	r4, r1
c0de2e1a:	4605      	mov	r5, r0
c0de2e1c:	f04f 0a00 	mov.w	sl, #0
c0de2e20:	f04f 0800 	mov.w	r8, #0
c0de2e24:	2700      	movs	r7, #0
c0de2e26:	42a7      	cmp	r7, r4
c0de2e28:	d215      	bcs.n	c0de2e56 <next64_graingen+0x42>
c0de2e2a:	4628      	mov	r0, r5
c0de2e2c:	f7ff ffb2 	bl	c0de2d94 <grain_lfsr_advance>
c0de2e30:	4606      	mov	r6, r0
c0de2e32:	4628      	mov	r0, r5
c0de2e34:	f7ff ffae 	bl	c0de2d94 <grain_lfsr_advance>
c0de2e38:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2e3c:	0781      	lsls	r1, r0, #30
c0de2e3e:	d5f2      	bpl.n	c0de2e26 <next64_graingen+0x12>
c0de2e40:	f000 0001 	and.w	r0, r0, #1
c0de2e44:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2e48:	3701      	adds	r7, #1
c0de2e4a:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2e4e:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2e52:	4682      	mov	sl, r0
c0de2e54:	e7e7      	b.n	c0de2e26 <next64_graingen+0x12>
c0de2e56:	4650      	mov	r0, sl
c0de2e58:	4641      	mov	r1, r8
c0de2e5a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2e60 <init_generator>:
c0de2e60:	b5b0      	push	{r4, r5, r7, lr}
c0de2e62:	4a09      	ldr	r2, [pc, #36]	@ (c0de2e88 <init_generator+0x28>)
c0de2e64:	4b09      	ldr	r3, [pc, #36]	@ (c0de2e8c <init_generator+0x2c>)
c0de2e66:	4604      	mov	r4, r0
c0de2e68:	25a0      	movs	r5, #160	@ 0xa0
c0de2e6a:	2000      	movs	r0, #0
c0de2e6c:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2e70:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2e74:	e9c4 3200 	strd	r3, r2, [r4]
c0de2e78:	b125      	cbz	r5, c0de2e84 <init_generator+0x24>
c0de2e7a:	4620      	mov	r0, r4
c0de2e7c:	f7ff ff8a 	bl	c0de2d94 <grain_lfsr_advance>
c0de2e80:	3d01      	subs	r5, #1
c0de2e82:	e7f9      	b.n	c0de2e78 <init_generator+0x18>
c0de2e84:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e86:	bf00      	nop
c0de2e88:	fffcf010 	.word	0xfffcf010
c0de2e8c:	1801fc02 	.word	0x1801fc02

c0de2e90 <gen_integer>:
c0de2e90:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e94:	4f20      	ldr	r7, [pc, #128]	@ (c0de2f18 <gen_integer+0x88>)
c0de2e96:	4e22      	ldr	r6, [pc, #136]	@ (c0de2f20 <gen_integer+0x90>)
c0de2e98:	4605      	mov	r5, r0
c0de2e9a:	460c      	mov	r4, r1
c0de2e9c:	2000      	movs	r0, #0
c0de2e9e:	46b8      	mov	r8, r7
c0de2ea0:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2f1c <gen_integer+0x8c>)
c0de2ea2:	447e      	add	r6, pc
c0de2ea4:	b9f8      	cbnz	r0, c0de2ee6 <gen_integer+0x56>
c0de2ea6:	4628      	mov	r0, r5
c0de2ea8:	213e      	movs	r1, #62	@ 0x3e
c0de2eaa:	47b0      	blx	r6
c0de2eac:	e9c4 0100 	strd	r0, r1, [r4]
c0de2eb0:	4628      	mov	r0, r5
c0de2eb2:	2140      	movs	r1, #64	@ 0x40
c0de2eb4:	47b0      	blx	r6
c0de2eb6:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2eba:	4628      	mov	r0, r5
c0de2ebc:	2140      	movs	r1, #64	@ 0x40
c0de2ebe:	47b0      	blx	r6
c0de2ec0:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2ec4:	4628      	mov	r0, r5
c0de2ec6:	2140      	movs	r1, #64	@ 0x40
c0de2ec8:	47b0      	blx	r6
c0de2eca:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2ece:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2ed2:	463a      	mov	r2, r7
c0de2ed4:	1bc0      	subs	r0, r0, r7
c0de2ed6:	4640      	mov	r0, r8
c0de2ed8:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2edc:	f04f 0000 	mov.w	r0, #0
c0de2ee0:	bf38      	it	cc
c0de2ee2:	2001      	movcc	r0, #1
c0de2ee4:	e7de      	b.n	c0de2ea4 <gen_integer+0x14>
c0de2ee6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2eea:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2f24 <gen_integer+0x94>)
c0de2eec:	447d      	add	r5, pc
c0de2eee:	47a8      	blx	r5
c0de2ef0:	e9c4 0100 	strd	r0, r1, [r4]
c0de2ef4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2ef8:	47a8      	blx	r5
c0de2efa:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2efe:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2f02:	47a8      	blx	r5
c0de2f04:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2f08:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2f0c:	47a8      	blx	r5
c0de2f0e:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2f12:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2f16:	bf00      	nop
c0de2f18:	305a4b4e 	.word	0x305a4b4e
c0de2f1c:	4f582122 	.word	0x4f582122
c0de2f20:	ffffff6f 	.word	0xffffff6f
c0de2f24:	00000039 	.word	0x00000039

c0de2f28 <rev64>:
c0de2f28:	ba0a      	rev	r2, r1
c0de2f2a:	ba01      	rev	r1, r0
c0de2f2c:	4610      	mov	r0, r2
c0de2f2e:	4770      	bx	lr

c0de2f30 <Poseidon_getNext_RC>:
c0de2f30:	30c0      	adds	r0, #192	@ 0xc0
c0de2f32:	f7ff bfad 	b.w	c0de2e90 <gen_integer>
	...

c0de2f38 <Poseidon_alloc_init>:
c0de2f38:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2f3c:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2f40:	4604      	mov	r4, r0
c0de2f42:	30c0      	adds	r0, #192	@ 0xc0
c0de2f44:	461e      	mov	r6, r3
c0de2f46:	4617      	mov	r7, r2
c0de2f48:	460d      	mov	r5, r1
c0de2f4a:	f7ff ff89 	bl	c0de2e60 <init_generator>
c0de2f4e:	492c      	ldr	r1, [pc, #176]	@ (c0de3000 <Poseidon_alloc_init+0xc8>)
c0de2f50:	46e8      	mov	r8, sp
c0de2f52:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2f56:	4640      	mov	r0, r8
c0de2f58:	4479      	add	r1, pc
c0de2f5a:	f004 fc1f 	bl	c0de779c <__aeabi_memcpy>
c0de2f5e:	2000      	movs	r0, #0
c0de2f60:	7325      	strb	r5, [r4, #12]
c0de2f62:	6166      	str	r6, [r4, #20]
c0de2f64:	4621      	mov	r1, r4
c0de2f66:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2f6a:	1c78      	adds	r0, r7, #1
c0de2f6c:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2f70:	6830      	ldr	r0, [r6, #0]
c0de2f72:	f004 f97d 	bl	c0de7270 <cx_bn_nbytes>
c0de2f76:	b930      	cbnz	r0, c0de2f86 <Poseidon_alloc_init+0x4e>
c0de2f78:	4620      	mov	r0, r4
c0de2f7a:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2f7e:	4631      	mov	r1, r6
c0de2f80:	f004 f956 	bl	c0de7230 <cx_bn_alloc>
c0de2f84:	b118      	cbz	r0, c0de2f8e <Poseidon_alloc_init+0x56>
c0de2f86:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2f8a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2f8e:	68a0      	ldr	r0, [r4, #8]
c0de2f90:	2500      	movs	r5, #0
c0de2f92:	4285      	cmp	r5, r0
c0de2f94:	d230      	bcs.n	c0de2ff8 <Poseidon_alloc_init+0xc0>
c0de2f96:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2f9a:	4631      	mov	r1, r6
c0de2f9c:	f107 0018 	add.w	r0, r7, #24
c0de2fa0:	f004 f946 	bl	c0de7230 <cx_bn_alloc>
c0de2fa4:	2800      	cmp	r0, #0
c0de2fa6:	d1ee      	bne.n	c0de2f86 <Poseidon_alloc_init+0x4e>
c0de2fa8:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2fac:	4631      	mov	r1, r6
c0de2fae:	f004 f93f 	bl	c0de7230 <cx_bn_alloc>
c0de2fb2:	2800      	cmp	r0, #0
c0de2fb4:	d1e7      	bne.n	c0de2f86 <Poseidon_alloc_init+0x4e>
c0de2fb6:	2700      	movs	r7, #0
c0de2fb8:	68a0      	ldr	r0, [r4, #8]
c0de2fba:	4287      	cmp	r7, r0
c0de2fbc:	d21a      	bcs.n	c0de2ff4 <Poseidon_alloc_init+0xbc>
c0de2fbe:	fb05 7000 	mla	r0, r5, r0, r7
c0de2fc2:	4631      	mov	r1, r6
c0de2fc4:	4633      	mov	r3, r6
c0de2fc6:	fb00 8206 	mla	r2, r0, r6, r8
c0de2fca:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2fce:	3030      	adds	r0, #48	@ 0x30
c0de2fd0:	f004 f938 	bl	c0de7244 <cx_bn_alloc_init>
c0de2fd4:	2800      	cmp	r0, #0
c0de2fd6:	d1d6      	bne.n	c0de2f86 <Poseidon_alloc_init+0x4e>
c0de2fd8:	68a0      	ldr	r0, [r4, #8]
c0de2fda:	6962      	ldr	r2, [r4, #20]
c0de2fdc:	fb05 7000 	mla	r0, r5, r0, r7
c0de2fe0:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2fe4:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2fe6:	4601      	mov	r1, r0
c0de2fe8:	f004 f9f6 	bl	c0de73d8 <cx_mont_to_montgomery>
c0de2fec:	3701      	adds	r7, #1
c0de2fee:	2800      	cmp	r0, #0
c0de2ff0:	d0e2      	beq.n	c0de2fb8 <Poseidon_alloc_init+0x80>
c0de2ff2:	e7c8      	b.n	c0de2f86 <Poseidon_alloc_init+0x4e>
c0de2ff4:	3501      	adds	r5, #1
c0de2ff6:	e7cc      	b.n	c0de2f92 <Poseidon_alloc_init+0x5a>
c0de2ff8:	2001      	movs	r0, #1
c0de2ffa:	6120      	str	r0, [r4, #16]
c0de2ffc:	2000      	movs	r0, #0
c0de2ffe:	e7c2      	b.n	c0de2f86 <Poseidon_alloc_init+0x4e>
c0de3000:	00005820 	.word	0x00005820

c0de3004 <Poseidon>:
c0de3004:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3008:	b08c      	sub	sp, #48	@ 0x30
c0de300a:	4606      	mov	r6, r0
c0de300c:	6900      	ldr	r0, [r0, #16]
c0de300e:	2801      	cmp	r0, #1
c0de3010:	f040 80b4 	bne.w	c0de317c <Poseidon+0x178>
c0de3014:	69b0      	ldr	r0, [r6, #24]
c0de3016:	461f      	mov	r7, r3
c0de3018:	4692      	mov	sl, r2
c0de301a:	f004 f949 	bl	c0de72b0 <cx_bn_set_u32>
c0de301e:	2800      	cmp	r0, #0
c0de3020:	f040 80ad 	bne.w	c0de317e <Poseidon+0x17a>
c0de3024:	f106 000c 	add.w	r0, r6, #12
c0de3028:	f106 0818 	add.w	r8, r6, #24
c0de302c:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de3030:	9001      	str	r0, [sp, #4]
c0de3032:	2000      	movs	r0, #0
c0de3034:	2844      	cmp	r0, #68	@ 0x44
c0de3036:	f000 80ae 	beq.w	c0de3196 <Poseidon+0x192>
c0de303a:	6834      	ldr	r4, [r6, #0]
c0de303c:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de3040:	f04f 0a00 	mov.w	sl, #0
c0de3044:	68b0      	ldr	r0, [r6, #8]
c0de3046:	4582      	cmp	sl, r0
c0de3048:	d224      	bcs.n	c0de3094 <Poseidon+0x90>
c0de304a:	ad04      	add	r5, sp, #16
c0de304c:	4658      	mov	r0, fp
c0de304e:	4629      	mov	r1, r5
c0de3050:	f7ff ff1e 	bl	c0de2e90 <gen_integer>
c0de3054:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3058:	4629      	mov	r1, r5
c0de305a:	4622      	mov	r2, r4
c0de305c:	f004 f912 	bl	c0de7284 <cx_bn_init>
c0de3060:	2800      	cmp	r0, #0
c0de3062:	f040 808c 	bne.w	c0de317e <Poseidon+0x17a>
c0de3066:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de306a:	6972      	ldr	r2, [r6, #20]
c0de306c:	4601      	mov	r1, r0
c0de306e:	f004 f9b3 	bl	c0de73d8 <cx_mont_to_montgomery>
c0de3072:	2800      	cmp	r0, #0
c0de3074:	f040 8083 	bne.w	c0de317e <Poseidon+0x17a>
c0de3078:	6972      	ldr	r2, [r6, #20]
c0de307a:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de307e:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de3082:	6813      	ldr	r3, [r2, #0]
c0de3084:	4602      	mov	r2, r0
c0de3086:	f004 f94d 	bl	c0de7324 <cx_bn_mod_add>
c0de308a:	f10a 0a01 	add.w	sl, sl, #1
c0de308e:	2800      	cmp	r0, #0
c0de3090:	d0d8      	beq.n	c0de3044 <Poseidon+0x40>
c0de3092:	e074      	b.n	c0de317e <Poseidon+0x17a>
c0de3094:	9902      	ldr	r1, [sp, #8]
c0de3096:	2904      	cmp	r1, #4
c0de3098:	d301      	bcc.n	c0de309e <Poseidon+0x9a>
c0de309a:	2940      	cmp	r1, #64	@ 0x40
c0de309c:	d323      	bcc.n	c0de30e6 <Poseidon+0xe2>
c0de309e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de30a2:	2400      	movs	r4, #0
c0de30a4:	4284      	cmp	r4, r0
c0de30a6:	d22b      	bcs.n	c0de3100 <Poseidon+0xfc>
c0de30a8:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de30ac:	6973      	ldr	r3, [r6, #20]
c0de30ae:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de30b2:	460a      	mov	r2, r1
c0de30b4:	f004 f9a8 	bl	c0de7408 <cx_mont_mul>
c0de30b8:	2800      	cmp	r0, #0
c0de30ba:	d160      	bne.n	c0de317e <Poseidon+0x17a>
c0de30bc:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de30c0:	6973      	ldr	r3, [r6, #20]
c0de30c2:	460a      	mov	r2, r1
c0de30c4:	f004 f9a0 	bl	c0de7408 <cx_mont_mul>
c0de30c8:	2800      	cmp	r0, #0
c0de30ca:	d158      	bne.n	c0de317e <Poseidon+0x17a>
c0de30cc:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de30d0:	6973      	ldr	r3, [r6, #20]
c0de30d2:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de30d6:	4601      	mov	r1, r0
c0de30d8:	f004 f996 	bl	c0de7408 <cx_mont_mul>
c0de30dc:	2800      	cmp	r0, #0
c0de30de:	d14e      	bne.n	c0de317e <Poseidon+0x17a>
c0de30e0:	68b0      	ldr	r0, [r6, #8]
c0de30e2:	3401      	adds	r4, #1
c0de30e4:	e7de      	b.n	c0de30a4 <Poseidon+0xa0>
c0de30e6:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de30ea:	9a01      	ldr	r2, [sp, #4]
c0de30ec:	2301      	movs	r3, #1
c0de30ee:	9100      	str	r1, [sp, #0]
c0de30f0:	4601      	mov	r1, r0
c0de30f2:	f004 f995 	bl	c0de7420 <cx_mont_pow>
c0de30f6:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de30fa:	2800      	cmp	r0, #0
c0de30fc:	d13f      	bne.n	c0de317e <Poseidon+0x17a>
c0de30fe:	68b0      	ldr	r0, [r6, #8]
c0de3100:	2500      	movs	r5, #0
c0de3102:	4285      	cmp	r5, r0
c0de3104:	d229      	bcs.n	c0de315a <Poseidon+0x156>
c0de3106:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de310a:	2100      	movs	r1, #0
c0de310c:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3110:	f004 f8ce 	bl	c0de72b0 <cx_bn_set_u32>
c0de3114:	bb98      	cbnz	r0, c0de317e <Poseidon+0x17a>
c0de3116:	9503      	str	r5, [sp, #12]
c0de3118:	2500      	movs	r5, #0
c0de311a:	68b0      	ldr	r0, [r6, #8]
c0de311c:	4285      	cmp	r5, r0
c0de311e:	d219      	bcs.n	c0de3154 <Poseidon+0x150>
c0de3120:	9903      	ldr	r1, [sp, #12]
c0de3122:	6973      	ldr	r3, [r6, #20]
c0de3124:	fb01 5000 	mla	r0, r1, r0, r5
c0de3128:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de312c:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3130:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de3132:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de3136:	f004 f967 	bl	c0de7408 <cx_mont_mul>
c0de313a:	bb00      	cbnz	r0, c0de317e <Poseidon+0x17a>
c0de313c:	6971      	ldr	r1, [r6, #20]
c0de313e:	6820      	ldr	r0, [r4, #0]
c0de3140:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de3144:	680b      	ldr	r3, [r1, #0]
c0de3146:	4601      	mov	r1, r0
c0de3148:	f004 f8ec 	bl	c0de7324 <cx_bn_mod_add>
c0de314c:	3501      	adds	r5, #1
c0de314e:	2800      	cmp	r0, #0
c0de3150:	d0e3      	beq.n	c0de311a <Poseidon+0x116>
c0de3152:	e014      	b.n	c0de317e <Poseidon+0x17a>
c0de3154:	9d03      	ldr	r5, [sp, #12]
c0de3156:	3501      	adds	r5, #1
c0de3158:	e7d3      	b.n	c0de3102 <Poseidon+0xfe>
c0de315a:	2400      	movs	r4, #0
c0de315c:	4284      	cmp	r4, r0
c0de315e:	d20a      	bcs.n	c0de3176 <Poseidon+0x172>
c0de3160:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3164:	6988      	ldr	r0, [r1, #24]
c0de3166:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de316a:	f004 f897 	bl	c0de729c <cx_bn_copy>
c0de316e:	b930      	cbnz	r0, c0de317e <Poseidon+0x17a>
c0de3170:	68b0      	ldr	r0, [r6, #8]
c0de3172:	3401      	adds	r4, #1
c0de3174:	e7f2      	b.n	c0de315c <Poseidon+0x158>
c0de3176:	9802      	ldr	r0, [sp, #8]
c0de3178:	3001      	adds	r0, #1
c0de317a:	e75b      	b.n	c0de3034 <Poseidon+0x30>
c0de317c:	4808      	ldr	r0, [pc, #32]	@ (c0de31a0 <Poseidon+0x19c>)
c0de317e:	b00c      	add	sp, #48	@ 0x30
c0de3180:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3184:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3188:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de318c:	f004 f886 	bl	c0de729c <cx_bn_copy>
c0de3190:	3f01      	subs	r7, #1
c0de3192:	2800      	cmp	r0, #0
c0de3194:	d1f3      	bne.n	c0de317e <Poseidon+0x17a>
c0de3196:	2f00      	cmp	r7, #0
c0de3198:	d1f4      	bne.n	c0de3184 <Poseidon+0x180>
c0de319a:	2000      	movs	r0, #0
c0de319c:	e7ef      	b.n	c0de317e <Poseidon+0x17a>
c0de319e:	bf00      	nop
c0de31a0:	5a4b4e02 	.word	0x5a4b4e02

c0de31a4 <RFC9591_taggedHash>:
c0de31a4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de31a6:	b0d9      	sub	sp, #356	@ 0x164
c0de31a8:	460e      	mov	r6, r1
c0de31aa:	4607      	mov	r7, r0
c0de31ac:	a858      	add	r0, sp, #352	@ 0x160
c0de31ae:	2140      	movs	r1, #64	@ 0x40
c0de31b0:	461c      	mov	r4, r3
c0de31b2:	4615      	mov	r5, r2
c0de31b4:	f004 f83c 	bl	c0de7230 <cx_bn_alloc>
c0de31b8:	bbd8      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de31ba:	491f      	ldr	r1, [pc, #124]	@ (c0de3238 <RFC9591_taggedHash+0x94>)
c0de31bc:	4668      	mov	r0, sp
c0de31be:	221d      	movs	r2, #29
c0de31c0:	4479      	add	r1, pc
c0de31c2:	f004 faeb 	bl	c0de779c <__aeabi_memcpy>
c0de31c6:	a808      	add	r0, sp, #32
c0de31c8:	2109      	movs	r1, #9
c0de31ca:	2240      	movs	r2, #64	@ 0x40
c0de31cc:	f003 fdc4 	bl	c0de6d58 <cx_hash_init_ex>
c0de31d0:	bb78      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de31d2:	a808      	add	r0, sp, #32
c0de31d4:	4669      	mov	r1, sp
c0de31d6:	221d      	movs	r2, #29
c0de31d8:	f003 fdc3 	bl	c0de6d62 <cx_hash_update>
c0de31dc:	bb48      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de31de:	a808      	add	r0, sp, #32
c0de31e0:	4639      	mov	r1, r7
c0de31e2:	4632      	mov	r2, r6
c0de31e4:	f003 fdbd 	bl	c0de6d62 <cx_hash_update>
c0de31e8:	bb18      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de31ea:	a808      	add	r0, sp, #32
c0de31ec:	4629      	mov	r1, r5
c0de31ee:	4622      	mov	r2, r4
c0de31f0:	f003 fdb7 	bl	c0de6d62 <cx_hash_update>
c0de31f4:	b9e8      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de31f6:	a808      	add	r0, sp, #32
c0de31f8:	ae48      	add	r6, sp, #288	@ 0x120
c0de31fa:	4631      	mov	r1, r6
c0de31fc:	f003 fda7 	bl	c0de6d4e <cx_hash_final>
c0de3200:	b9b8      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de3202:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de3206:	2000      	movs	r0, #0
c0de3208:	213f      	movs	r1, #63	@ 0x3f
c0de320a:	2820      	cmp	r0, #32
c0de320c:	d002      	beq.n	c0de3214 <RFC9591_taggedHash+0x70>
c0de320e:	f000 f8dd 	bl	c0de33cc <OUTLINED_FUNCTION_3>
c0de3212:	e7fa      	b.n	c0de320a <RFC9591_taggedHash+0x66>
c0de3214:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de3216:	a948      	add	r1, sp, #288	@ 0x120
c0de3218:	2240      	movs	r2, #64	@ 0x40
c0de321a:	f004 f833 	bl	c0de7284 <cx_bn_init>
c0de321e:	b940      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de3220:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de3222:	4628      	mov	r0, r5
c0de3224:	4622      	mov	r2, r4
c0de3226:	f004 f8a1 	bl	c0de736c <cx_bn_reduce>
c0de322a:	b910      	cbnz	r0, c0de3232 <RFC9591_taggedHash+0x8e>
c0de322c:	a858      	add	r0, sp, #352	@ 0x160
c0de322e:	f004 f815 	bl	c0de725c <cx_bn_destroy>
c0de3232:	b059      	add	sp, #356	@ 0x164
c0de3234:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3236:	bf00      	nop
c0de3238:	00005a38 	.word	0x00005a38

c0de323c <Babyfrost_H1>:
c0de323c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de323e:	4605      	mov	r5, r0
c0de3240:	206f      	movs	r0, #111	@ 0x6f
c0de3242:	f000 f8b7 	bl	c0de33b4 <OUTLINED_FUNCTION_1>
c0de3246:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de324a:	f000 f8ba 	bl	c0de33c2 <OUTLINED_FUNCTION_2>
c0de324e:	a803      	add	r0, sp, #12
c0de3250:	f7ff ffa8 	bl	c0de31a4 <RFC9591_taggedHash>
c0de3254:	b004      	add	sp, #16
c0de3256:	bdb0      	pop	{r4, r5, r7, pc}

c0de3258 <Babyfrost_H3>:
c0de3258:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de325a:	4605      	mov	r5, r0
c0de325c:	2065      	movs	r0, #101	@ 0x65
c0de325e:	460c      	mov	r4, r1
c0de3260:	e9cd 2300 	strd	r2, r3, [sp]
c0de3264:	2105      	movs	r1, #5
c0de3266:	f88d 000c 	strb.w	r0, [sp, #12]
c0de326a:	4804      	ldr	r0, [pc, #16]	@ (c0de327c <Babyfrost_H3+0x24>)
c0de326c:	462a      	mov	r2, r5
c0de326e:	4623      	mov	r3, r4
c0de3270:	9002      	str	r0, [sp, #8]
c0de3272:	a802      	add	r0, sp, #8
c0de3274:	f7ff ff96 	bl	c0de31a4 <RFC9591_taggedHash>
c0de3278:	b004      	add	sp, #16
c0de327a:	bdb0      	pop	{r4, r5, r7, pc}
c0de327c:	636e6f6e 	.word	0x636e6f6e

c0de3280 <Babyfrost_H4>:
c0de3280:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3282:	4605      	mov	r5, r0
c0de3284:	2067      	movs	r0, #103	@ 0x67
c0de3286:	f000 f895 	bl	c0de33b4 <OUTLINED_FUNCTION_1>
c0de328a:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de328e:	f000 f898 	bl	c0de33c2 <OUTLINED_FUNCTION_2>
c0de3292:	a803      	add	r0, sp, #12
c0de3294:	f7ff ff86 	bl	c0de31a4 <RFC9591_taggedHash>
c0de3298:	b004      	add	sp, #16
c0de329a:	bdb0      	pop	{r4, r5, r7, pc}

c0de329c <Babyfrost_H5>:
c0de329c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de329e:	4605      	mov	r5, r0
c0de32a0:	206d      	movs	r0, #109	@ 0x6d
c0de32a2:	f000 f887 	bl	c0de33b4 <OUTLINED_FUNCTION_1>
c0de32a6:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de32aa:	f000 f88a 	bl	c0de33c2 <OUTLINED_FUNCTION_2>
c0de32ae:	a803      	add	r0, sp, #12
c0de32b0:	f7ff ff78 	bl	c0de31a4 <RFC9591_taggedHash>
c0de32b4:	b004      	add	sp, #16
c0de32b6:	bdb0      	pop	{r4, r5, r7, pc}

c0de32b8 <zkn_frost_hash_init>:
c0de32b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de32ba:	461d      	mov	r5, r3
c0de32bc:	4604      	mov	r4, r0
c0de32be:	f003 fd4b 	bl	c0de6d58 <cx_hash_init_ex>
c0de32c2:	b938      	cbnz	r0, c0de32d4 <zkn_frost_hash_init+0x1c>
c0de32c4:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de32c8:	9e08      	ldr	r6, [sp, #32]
c0de32ca:	4620      	mov	r0, r4
c0de32cc:	4629      	mov	r1, r5
c0de32ce:	f003 fd48 	bl	c0de6d62 <cx_hash_update>
c0de32d2:	b100      	cbz	r0, c0de32d6 <zkn_frost_hash_init+0x1e>
c0de32d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de32d6:	4620      	mov	r0, r4
c0de32d8:	4639      	mov	r1, r7
c0de32da:	4632      	mov	r2, r6
c0de32dc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de32e0:	f003 bd3f 	b.w	c0de6d62 <cx_hash_update>

c0de32e4 <zkn_frost_H1_init>:
c0de32e4:	b570      	push	{r4, r5, r6, lr}
c0de32e6:	b08c      	sub	sp, #48	@ 0x30
c0de32e8:	4604      	mov	r4, r0
c0de32ea:	206f      	movs	r0, #111	@ 0x6f
c0de32ec:	221d      	movs	r2, #29
c0de32ee:	261d      	movs	r6, #29
c0de32f0:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de32f4:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de32f8:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de32fc:	ad03      	add	r5, sp, #12
c0de32fe:	4905      	ldr	r1, [pc, #20]	@ (c0de3314 <zkn_frost_H1_init+0x30>)
c0de3300:	4628      	mov	r0, r5
c0de3302:	4479      	add	r1, pc
c0de3304:	f004 fa4a 	bl	c0de779c <__aeabi_memcpy>
c0de3308:	a90b      	add	r1, sp, #44	@ 0x2c
c0de330a:	f000 f849 	bl	c0de33a0 <OUTLINED_FUNCTION_0>
c0de330e:	b00c      	add	sp, #48	@ 0x30
c0de3310:	bd70      	pop	{r4, r5, r6, pc}
c0de3312:	bf00      	nop
c0de3314:	000058f6 	.word	0x000058f6

c0de3318 <zkn_frost_H5_init>:
c0de3318:	b570      	push	{r4, r5, r6, lr}
c0de331a:	b08c      	sub	sp, #48	@ 0x30
c0de331c:	4604      	mov	r4, r0
c0de331e:	206d      	movs	r0, #109	@ 0x6d
c0de3320:	221d      	movs	r2, #29
c0de3322:	261d      	movs	r6, #29
c0de3324:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3328:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de332c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3330:	ad03      	add	r5, sp, #12
c0de3332:	4905      	ldr	r1, [pc, #20]	@ (c0de3348 <zkn_frost_H5_init+0x30>)
c0de3334:	4628      	mov	r0, r5
c0de3336:	4479      	add	r1, pc
c0de3338:	f004 fa30 	bl	c0de779c <__aeabi_memcpy>
c0de333c:	a90b      	add	r1, sp, #44	@ 0x2c
c0de333e:	f000 f82f 	bl	c0de33a0 <OUTLINED_FUNCTION_0>
c0de3342:	b00c      	add	sp, #48	@ 0x30
c0de3344:	bd70      	pop	{r4, r5, r6, pc}
c0de3346:	bf00      	nop
c0de3348:	000058c2 	.word	0x000058c2

c0de334c <zkn_frost_hash_update>:
c0de334c:	f003 bd09 	b.w	c0de6d62 <cx_hash_update>

c0de3350 <zkn_frost_hash_final>:
c0de3350:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3352:	b091      	sub	sp, #68	@ 0x44
c0de3354:	460c      	mov	r4, r1
c0de3356:	4607      	mov	r7, r0
c0de3358:	a810      	add	r0, sp, #64	@ 0x40
c0de335a:	2140      	movs	r1, #64	@ 0x40
c0de335c:	4615      	mov	r5, r2
c0de335e:	f003 ff67 	bl	c0de7230 <cx_bn_alloc>
c0de3362:	b9d8      	cbnz	r0, c0de339c <zkn_frost_hash_final+0x4c>
c0de3364:	466e      	mov	r6, sp
c0de3366:	4638      	mov	r0, r7
c0de3368:	4631      	mov	r1, r6
c0de336a:	f003 fcf0 	bl	c0de6d4e <cx_hash_final>
c0de336e:	b9a8      	cbnz	r0, c0de339c <zkn_frost_hash_final+0x4c>
c0de3370:	2000      	movs	r0, #0
c0de3372:	213f      	movs	r1, #63	@ 0x3f
c0de3374:	2820      	cmp	r0, #32
c0de3376:	d002      	beq.n	c0de337e <zkn_frost_hash_final+0x2e>
c0de3378:	f000 f828 	bl	c0de33cc <OUTLINED_FUNCTION_3>
c0de337c:	e7fa      	b.n	c0de3374 <zkn_frost_hash_final+0x24>
c0de337e:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3380:	4669      	mov	r1, sp
c0de3382:	2240      	movs	r2, #64	@ 0x40
c0de3384:	f003 ff7e 	bl	c0de7284 <cx_bn_init>
c0de3388:	b940      	cbnz	r0, c0de339c <zkn_frost_hash_final+0x4c>
c0de338a:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de338c:	4628      	mov	r0, r5
c0de338e:	4622      	mov	r2, r4
c0de3390:	f003 ffec 	bl	c0de736c <cx_bn_reduce>
c0de3394:	b910      	cbnz	r0, c0de339c <zkn_frost_hash_final+0x4c>
c0de3396:	a810      	add	r0, sp, #64	@ 0x40
c0de3398:	f003 ff60 	bl	c0de725c <cx_bn_destroy>
c0de339c:	b011      	add	sp, #68	@ 0x44
c0de339e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de33a0 <OUTLINED_FUNCTION_0>:
c0de33a0:	2003      	movs	r0, #3
c0de33a2:	2240      	movs	r2, #64	@ 0x40
c0de33a4:	462b      	mov	r3, r5
c0de33a6:	e9cd 6100 	strd	r6, r1, [sp]
c0de33aa:	9002      	str	r0, [sp, #8]
c0de33ac:	4620      	mov	r0, r4
c0de33ae:	2109      	movs	r1, #9
c0de33b0:	f7ff bf82 	b.w	c0de32b8 <zkn_frost_hash_init>

c0de33b4 <OUTLINED_FUNCTION_1>:
c0de33b4:	460c      	mov	r4, r1
c0de33b6:	e9cd 2300 	strd	r2, r3, [sp]
c0de33ba:	2103      	movs	r1, #3
c0de33bc:	f88d 000e 	strb.w	r0, [sp, #14]
c0de33c0:	4770      	bx	lr

c0de33c2 <OUTLINED_FUNCTION_2>:
c0de33c2:	462a      	mov	r2, r5
c0de33c4:	4623      	mov	r3, r4
c0de33c6:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de33ca:	4770      	bx	lr

c0de33cc <OUTLINED_FUNCTION_3>:
c0de33cc:	5c32      	ldrb	r2, [r6, r0]
c0de33ce:	5c73      	ldrb	r3, [r6, r1]
c0de33d0:	5433      	strb	r3, [r6, r0]
c0de33d2:	5472      	strb	r2, [r6, r1]
c0de33d4:	3901      	subs	r1, #1
c0de33d6:	3001      	adds	r0, #1
c0de33d8:	4770      	bx	lr

c0de33da <os_io_handle_default_apdu>:
c0de33da:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de33dc:	b09d      	sub	sp, #116	@ 0x74
c0de33de:	4615      	mov	r5, r2
c0de33e0:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de33e2:	b3c8      	cbz	r0, c0de3458 <os_io_handle_default_apdu+0x7e>
c0de33e4:	b3c1      	cbz	r1, c0de3458 <os_io_handle_default_apdu+0x7e>
c0de33e6:	b3bd      	cbz	r5, c0de3458 <os_io_handle_default_apdu+0x7e>
c0de33e8:	461c      	mov	r4, r3
c0de33ea:	b3ab      	cbz	r3, c0de3458 <os_io_handle_default_apdu+0x7e>
c0de33ec:	b10a      	cbz	r2, c0de33f2 <os_io_handle_default_apdu+0x18>
c0de33ee:	2100      	movs	r1, #0
c0de33f0:	7011      	strb	r1, [r2, #0]
c0de33f2:	7801      	ldrb	r1, [r0, #0]
c0de33f4:	29b0      	cmp	r1, #176	@ 0xb0
c0de33f6:	d131      	bne.n	c0de345c <os_io_handle_default_apdu+0x82>
c0de33f8:	7841      	ldrb	r1, [r0, #1]
c0de33fa:	29a7      	cmp	r1, #167	@ 0xa7
c0de33fc:	d031      	beq.n	c0de3462 <os_io_handle_default_apdu+0x88>
c0de33fe:	2906      	cmp	r1, #6
c0de3400:	d036      	beq.n	c0de3470 <os_io_handle_default_apdu+0x96>
c0de3402:	2901      	cmp	r1, #1
c0de3404:	d131      	bne.n	c0de346a <os_io_handle_default_apdu+0x90>
c0de3406:	7881      	ldrb	r1, [r0, #2]
c0de3408:	bb79      	cbnz	r1, c0de346a <os_io_handle_default_apdu+0x90>
c0de340a:	78c0      	ldrb	r0, [r0, #3]
c0de340c:	bb68      	cbnz	r0, c0de346a <os_io_handle_default_apdu+0x90>
c0de340e:	6820      	ldr	r0, [r4, #0]
c0de3410:	2100      	movs	r1, #0
c0de3412:	6021      	str	r1, [r4, #0]
c0de3414:	2803      	cmp	r0, #3
c0de3416:	d321      	bcc.n	c0de345c <os_io_handle_default_apdu+0x82>
c0de3418:	2601      	movs	r6, #1
c0de341a:	1ec7      	subs	r7, r0, #3
c0de341c:	6026      	str	r6, [r4, #0]
c0de341e:	702e      	strb	r6, [r5, #0]
c0de3420:	6820      	ldr	r0, [r4, #0]
c0de3422:	1a3a      	subs	r2, r7, r0
c0de3424:	4428      	add	r0, r5
c0de3426:	1c41      	adds	r1, r0, #1
c0de3428:	2001      	movs	r0, #1
c0de342a:	f004 f86f 	bl	c0de750c <os_registry_get_current_app_tag>
c0de342e:	f000 f83f 	bl	c0de34b0 <OUTLINED_FUNCTION_0>
c0de3432:	6020      	str	r0, [r4, #0]
c0de3434:	1a3a      	subs	r2, r7, r0
c0de3436:	4428      	add	r0, r5
c0de3438:	1c41      	adds	r1, r0, #1
c0de343a:	2002      	movs	r0, #2
c0de343c:	f004 f866 	bl	c0de750c <os_registry_get_current_app_tag>
c0de3440:	f000 f836 	bl	c0de34b0 <OUTLINED_FUNCTION_0>
c0de3444:	1c41      	adds	r1, r0, #1
c0de3446:	6021      	str	r1, [r4, #0]
c0de3448:	542e      	strb	r6, [r5, r0]
c0de344a:	f004 f857 	bl	c0de74fc <os_flags>
c0de344e:	6821      	ldr	r1, [r4, #0]
c0de3450:	1c4a      	adds	r2, r1, #1
c0de3452:	6022      	str	r2, [r4, #0]
c0de3454:	5468      	strb	r0, [r5, r1]
c0de3456:	e028      	b.n	c0de34aa <os_io_handle_default_apdu+0xd0>
c0de3458:	7814      	ldrb	r4, [r2, #0]
c0de345a:	e01e      	b.n	c0de349a <os_io_handle_default_apdu+0xc0>
c0de345c:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3460:	e01b      	b.n	c0de349a <os_io_handle_default_apdu+0xc0>
c0de3462:	7881      	ldrb	r1, [r0, #2]
c0de3464:	b909      	cbnz	r1, c0de346a <os_io_handle_default_apdu+0x90>
c0de3466:	78c0      	ldrb	r0, [r0, #3]
c0de3468:	b1d0      	cbz	r0, c0de34a0 <os_io_handle_default_apdu+0xc6>
c0de346a:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de346e:	e014      	b.n	c0de349a <os_io_handle_default_apdu+0xc0>
c0de3470:	2100      	movs	r1, #0
c0de3472:	6021      	str	r1, [r4, #0]
c0de3474:	7883      	ldrb	r3, [r0, #2]
c0de3476:	7902      	ldrb	r2, [r0, #4]
c0de3478:	ad02      	add	r5, sp, #8
c0de347a:	e9cd 1500 	strd	r1, r5, [sp]
c0de347e:	1d41      	adds	r1, r0, #5
c0de3480:	4618      	mov	r0, r3
c0de3482:	2300      	movs	r3, #0
c0de3484:	f004 f806 	bl	c0de7494 <os_pki_load_certificate>
c0de3488:	4604      	mov	r4, r0
c0de348a:	4628      	mov	r0, r5
c0de348c:	216c      	movs	r1, #108	@ 0x6c
c0de348e:	f004 f99d 	bl	c0de77cc <explicit_bzero>
c0de3492:	2c00      	cmp	r4, #0
c0de3494:	bf08      	it	eq
c0de3496:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de349a:	4620      	mov	r0, r4
c0de349c:	b01d      	add	sp, #116	@ 0x74
c0de349e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de34a0:	2000      	movs	r0, #0
c0de34a2:	6020      	str	r0, [r4, #0]
c0de34a4:	b10a      	cbz	r2, c0de34aa <os_io_handle_default_apdu+0xd0>
c0de34a6:	2001      	movs	r0, #1
c0de34a8:	7010      	strb	r0, [r2, #0]
c0de34aa:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de34ae:	e7f4      	b.n	c0de349a <os_io_handle_default_apdu+0xc0>

c0de34b0 <OUTLINED_FUNCTION_0>:
c0de34b0:	6821      	ldr	r1, [r4, #0]
c0de34b2:	1c4a      	adds	r2, r1, #1
c0de34b4:	6022      	str	r2, [r4, #0]
c0de34b6:	5468      	strb	r0, [r5, r1]
c0de34b8:	6821      	ldr	r1, [r4, #0]
c0de34ba:	4408      	add	r0, r1
c0de34bc:	4770      	bx	lr

c0de34be <io_process_itc_ux_event>:
c0de34be:	b580      	push	{r7, lr}
c0de34c0:	78c0      	ldrb	r0, [r0, #3]
c0de34c2:	2820      	cmp	r0, #32
c0de34c4:	d107      	bne.n	c0de34d6 <io_process_itc_ux_event+0x18>
c0de34c6:	2001      	movs	r0, #1
c0de34c8:	f003 fc65 	bl	c0de6d96 <nbgl_objAllowDrawing>
c0de34cc:	f003 fc72 	bl	c0de6db4 <nbgl_screenRedraw>
c0de34d0:	f003 fc57 	bl	c0de6d82 <nbgl_refresh>
c0de34d4:	2100      	movs	r1, #0
c0de34d6:	4608      	mov	r0, r1
c0de34d8:	bd80      	pop	{r7, pc}
	...

c0de34dc <io_legacy_apdu_tx>:
c0de34dc:	b5b0      	push	{r4, r5, r7, lr}
c0de34de:	460a      	mov	r2, r1
c0de34e0:	4601      	mov	r1, r0
c0de34e2:	4806      	ldr	r0, [pc, #24]	@ (c0de34fc <io_legacy_apdu_tx+0x20>)
c0de34e4:	2300      	movs	r3, #0
c0de34e6:	2500      	movs	r5, #0
c0de34e8:	eb09 0400 	add.w	r4, r9, r0
c0de34ec:	7860      	ldrb	r0, [r4, #1]
c0de34ee:	f004 f837 	bl	c0de7560 <os_io_tx_cmd>
c0de34f2:	4903      	ldr	r1, [pc, #12]	@ (c0de3500 <io_legacy_apdu_tx+0x24>)
c0de34f4:	7065      	strb	r5, [r4, #1]
c0de34f6:	4449      	add	r1, r9
c0de34f8:	718d      	strb	r5, [r1, #6]
c0de34fa:	bdb0      	pop	{r4, r5, r7, pc}
c0de34fc:	00000632 	.word	0x00000632
c0de3500:	0000062a 	.word	0x0000062a

c0de3504 <io_legacy_apdu_rx>:
c0de3504:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3506:	4e65      	ldr	r6, [pc, #404]	@ (c0de369c <io_legacy_apdu_rx+0x198>)
c0de3508:	2100      	movs	r1, #0
c0de350a:	4605      	mov	r5, r0
c0de350c:	2200      	movs	r2, #0
c0de350e:	2301      	movs	r3, #1
c0de3510:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3514:	f240 1111 	movw	r1, #273	@ 0x111
c0de3518:	eb09 0006 	add.w	r0, r9, r6
c0de351c:	f004 f82c 	bl	c0de7578 <os_io_rx_evt>
c0de3520:	4604      	mov	r4, r0
c0de3522:	2801      	cmp	r0, #1
c0de3524:	f2c0 80b5 	blt.w	c0de3692 <io_legacy_apdu_rx+0x18e>
c0de3528:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de352c:	f1a0 0110 	sub.w	r1, r0, #16
c0de3530:	2916      	cmp	r1, #22
c0de3532:	d843      	bhi.n	c0de35bc <io_legacy_apdu_rx+0xb8>
c0de3534:	2201      	movs	r2, #1
c0de3536:	fa02 f101 	lsl.w	r1, r2, r1
c0de353a:	4a59      	ldr	r2, [pc, #356]	@ (c0de36a0 <io_legacy_apdu_rx+0x19c>)
c0de353c:	4211      	tst	r1, r2
c0de353e:	d03d      	beq.n	c0de35bc <io_legacy_apdu_rx+0xb8>
c0de3540:	4f58      	ldr	r7, [pc, #352]	@ (c0de36a4 <io_legacy_apdu_rx+0x1a0>)
c0de3542:	eb09 0107 	add.w	r1, r9, r7
c0de3546:	7048      	strb	r0, [r1, #1]
c0de3548:	f003 ffb4 	bl	c0de74b4 <os_perso_is_pin_set>
c0de354c:	28aa      	cmp	r0, #170	@ 0xaa
c0de354e:	d103      	bne.n	c0de3558 <io_legacy_apdu_rx+0x54>
c0de3550:	f003 ffb9 	bl	c0de74c6 <os_global_pin_is_validated>
c0de3554:	28aa      	cmp	r0, #170	@ 0xaa
c0de3556:	d14d      	bne.n	c0de35f4 <io_legacy_apdu_rx+0xf0>
c0de3558:	eb09 0006 	add.w	r0, r9, r6
c0de355c:	7840      	ldrb	r0, [r0, #1]
c0de355e:	28b0      	cmp	r0, #176	@ 0xb0
c0de3560:	d134      	bne.n	c0de35cc <io_legacy_apdu_rx+0xc8>
c0de3562:	f240 1011 	movw	r0, #273	@ 0x111
c0de3566:	1e61      	subs	r1, r4, #1
c0de3568:	9001      	str	r0, [sp, #4]
c0de356a:	f10d 000b 	add.w	r0, sp, #11
c0de356e:	9000      	str	r0, [sp, #0]
c0de3570:	484d      	ldr	r0, [pc, #308]	@ (c0de36a8 <io_legacy_apdu_rx+0x1a4>)
c0de3572:	ab01      	add	r3, sp, #4
c0de3574:	eb09 0500 	add.w	r5, r9, r0
c0de3578:	eb09 0006 	add.w	r0, r9, r6
c0de357c:	3001      	adds	r0, #1
c0de357e:	462a      	mov	r2, r5
c0de3580:	f7ff ff2b 	bl	c0de33da <os_io_handle_default_apdu>
c0de3584:	2400      	movs	r4, #0
c0de3586:	9901      	ldr	r1, [sp, #4]
c0de3588:	eb09 0607 	add.w	r6, r9, r7
c0de358c:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3590:	bf18      	it	ne
c0de3592:	4621      	movne	r1, r4
c0de3594:	0a02      	lsrs	r2, r0, #8
c0de3596:	2300      	movs	r3, #0
c0de3598:	546a      	strb	r2, [r5, r1]
c0de359a:	186a      	adds	r2, r5, r1
c0de359c:	7050      	strb	r0, [r2, #1]
c0de359e:	1c88      	adds	r0, r1, #2
c0de35a0:	4629      	mov	r1, r5
c0de35a2:	9001      	str	r0, [sp, #4]
c0de35a4:	b282      	uxth	r2, r0
c0de35a6:	7870      	ldrb	r0, [r6, #1]
c0de35a8:	f003 ffda 	bl	c0de7560 <os_io_tx_cmd>
c0de35ac:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de35b0:	7074      	strb	r4, [r6, #1]
c0de35b2:	2901      	cmp	r1, #1
c0de35b4:	d06f      	beq.n	c0de3696 <io_legacy_apdu_rx+0x192>
c0de35b6:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de35ba:	e06a      	b.n	c0de3692 <io_legacy_apdu_rx+0x18e>
c0de35bc:	1e41      	subs	r1, r0, #1
c0de35be:	2902      	cmp	r1, #2
c0de35c0:	d32a      	bcc.n	c0de3618 <io_legacy_apdu_rx+0x114>
c0de35c2:	2830      	cmp	r0, #48	@ 0x30
c0de35c4:	d0bc      	beq.n	c0de3540 <io_legacy_apdu_rx+0x3c>
c0de35c6:	2840      	cmp	r0, #64	@ 0x40
c0de35c8:	d0ba      	beq.n	c0de3540 <io_legacy_apdu_rx+0x3c>
c0de35ca:	e061      	b.n	c0de3690 <io_legacy_apdu_rx+0x18c>
c0de35cc:	eb09 0007 	add.w	r0, r9, r7
c0de35d0:	7840      	ldrb	r0, [r0, #1]
c0de35d2:	2810      	cmp	r0, #16
c0de35d4:	d040      	beq.n	c0de3658 <io_legacy_apdu_rx+0x154>
c0de35d6:	2840      	cmp	r0, #64	@ 0x40
c0de35d8:	d040      	beq.n	c0de365c <io_legacy_apdu_rx+0x158>
c0de35da:	2821      	cmp	r0, #33	@ 0x21
c0de35dc:	d040      	beq.n	c0de3660 <io_legacy_apdu_rx+0x15c>
c0de35de:	2822      	cmp	r0, #34	@ 0x22
c0de35e0:	d034      	beq.n	c0de364c <io_legacy_apdu_rx+0x148>
c0de35e2:	2823      	cmp	r0, #35	@ 0x23
c0de35e4:	d034      	beq.n	c0de3650 <io_legacy_apdu_rx+0x14c>
c0de35e6:	2830      	cmp	r0, #48	@ 0x30
c0de35e8:	d034      	beq.n	c0de3654 <io_legacy_apdu_rx+0x150>
c0de35ea:	2820      	cmp	r0, #32
c0de35ec:	bf14      	ite	ne
c0de35ee:	2000      	movne	r0, #0
c0de35f0:	2001      	moveq	r0, #1
c0de35f2:	e036      	b.n	c0de3662 <io_legacy_apdu_rx+0x15e>
c0de35f4:	482c      	ldr	r0, [pc, #176]	@ (c0de36a8 <io_legacy_apdu_rx+0x1a4>)
c0de35f6:	2155      	movs	r1, #85	@ 0x55
c0de35f8:	2202      	movs	r2, #2
c0de35fa:	2300      	movs	r3, #0
c0de35fc:	f809 1000 	strb.w	r1, [r9, r0]
c0de3600:	eb09 0100 	add.w	r1, r9, r0
c0de3604:	2015      	movs	r0, #21
c0de3606:	7048      	strb	r0, [r1, #1]
c0de3608:	eb09 0007 	add.w	r0, r9, r7
c0de360c:	7840      	ldrb	r0, [r0, #1]
c0de360e:	b003      	add	sp, #12
c0de3610:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3614:	f003 bfa4 	b.w	c0de7560 <os_io_tx_cmd>
c0de3618:	4f25      	ldr	r7, [pc, #148]	@ (c0de36b0 <io_legacy_apdu_rx+0x1ac>)
c0de361a:	444e      	add	r6, r9
c0de361c:	3c01      	subs	r4, #1
c0de361e:	1c71      	adds	r1, r6, #1
c0de3620:	4622      	mov	r2, r4
c0de3622:	eb09 0007 	add.w	r0, r9, r7
c0de3626:	f004 f8b9 	bl	c0de779c <__aeabi_memcpy>
c0de362a:	7870      	ldrb	r0, [r6, #1]
c0de362c:	281a      	cmp	r0, #26
c0de362e:	d107      	bne.n	c0de3640 <io_legacy_apdu_rx+0x13c>
c0de3630:	eb09 0007 	add.w	r0, r9, r7
c0de3634:	4621      	mov	r1, r4
c0de3636:	b003      	add	sp, #12
c0de3638:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de363c:	f7ff bf3f 	b.w	c0de34be <io_process_itc_ux_event>
c0de3640:	b1e5      	cbz	r5, c0de367c <io_legacy_apdu_rx+0x178>
c0de3642:	2000      	movs	r0, #0
c0de3644:	2400      	movs	r4, #0
c0de3646:	f003 f8c3 	bl	c0de67d0 <io_event>
c0de364a:	e022      	b.n	c0de3692 <io_legacy_apdu_rx+0x18e>
c0de364c:	2004      	movs	r0, #4
c0de364e:	e008      	b.n	c0de3662 <io_legacy_apdu_rx+0x15e>
c0de3650:	2007      	movs	r0, #7
c0de3652:	e006      	b.n	c0de3662 <io_legacy_apdu_rx+0x15e>
c0de3654:	2002      	movs	r0, #2
c0de3656:	e004      	b.n	c0de3662 <io_legacy_apdu_rx+0x15e>
c0de3658:	2006      	movs	r0, #6
c0de365a:	e002      	b.n	c0de3662 <io_legacy_apdu_rx+0x15e>
c0de365c:	2003      	movs	r0, #3
c0de365e:	e000      	b.n	c0de3662 <io_legacy_apdu_rx+0x15e>
c0de3660:	2005      	movs	r0, #5
c0de3662:	4912      	ldr	r1, [pc, #72]	@ (c0de36ac <io_legacy_apdu_rx+0x1a8>)
c0de3664:	3c01      	subs	r4, #1
c0de3666:	4622      	mov	r2, r4
c0de3668:	4449      	add	r1, r9
c0de366a:	7188      	strb	r0, [r1, #6]
c0de366c:	480e      	ldr	r0, [pc, #56]	@ (c0de36a8 <io_legacy_apdu_rx+0x1a4>)
c0de366e:	eb09 0106 	add.w	r1, r9, r6
c0de3672:	3101      	adds	r1, #1
c0de3674:	4448      	add	r0, r9
c0de3676:	f004 f891 	bl	c0de779c <__aeabi_memcpy>
c0de367a:	e00a      	b.n	c0de3692 <io_legacy_apdu_rx+0x18e>
c0de367c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3680:	2815      	cmp	r0, #21
c0de3682:	d8de      	bhi.n	c0de3642 <io_legacy_apdu_rx+0x13e>
c0de3684:	2101      	movs	r1, #1
c0de3686:	fa01 f000 	lsl.w	r0, r1, r0
c0de368a:	490a      	ldr	r1, [pc, #40]	@ (c0de36b4 <io_legacy_apdu_rx+0x1b0>)
c0de368c:	4208      	tst	r0, r1
c0de368e:	d0d8      	beq.n	c0de3642 <io_legacy_apdu_rx+0x13e>
c0de3690:	2400      	movs	r4, #0
c0de3692:	4620      	mov	r0, r4
c0de3694:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3696:	20ff      	movs	r0, #255	@ 0xff
c0de3698:	f003 ff44 	bl	c0de7524 <os_sched_exit>
c0de369c:	00000518 	.word	0x00000518
c0de36a0:	007f0001 	.word	0x007f0001
c0de36a4:	00000632 	.word	0x00000632
c0de36a8:	00000407 	.word	0x00000407
c0de36ac:	0000062a 	.word	0x0000062a
c0de36b0:	000007ac 	.word	0x000007ac
c0de36b4:	00205020 	.word	0x00205020

c0de36b8 <io_seproxyhal_init>:
c0de36b8:	b570      	push	{r4, r5, r6, lr}
c0de36ba:	b08a      	sub	sp, #40	@ 0x28
c0de36bc:	4d0b      	ldr	r5, [pc, #44]	@ (c0de36ec <io_seproxyhal_init+0x34>)
c0de36be:	2600      	movs	r6, #0
c0de36c0:	2118      	movs	r1, #24
c0de36c2:	eb09 0005 	add.w	r0, r9, r5
c0de36c6:	7046      	strb	r6, [r0, #1]
c0de36c8:	ac01      	add	r4, sp, #4
c0de36ca:	4620      	mov	r0, r4
c0de36cc:	f004 f870 	bl	c0de77b0 <__aeabi_memclr>
c0de36d0:	2011      	movs	r0, #17
c0de36d2:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de36d6:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de36da:	4620      	mov	r0, r4
c0de36dc:	f003 ff2c 	bl	c0de7538 <os_io_init>
c0de36e0:	2001      	movs	r0, #1
c0de36e2:	f809 0005 	strb.w	r0, [r9, r5]
c0de36e6:	b00a      	add	sp, #40	@ 0x28
c0de36e8:	bd70      	pop	{r4, r5, r6, pc}
c0de36ea:	bf00      	nop
c0de36ec:	00000632 	.word	0x00000632

c0de36f0 <getTextMaxLenAndWidth>:
c0de36f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36f4:	461c      	mov	r4, r3
c0de36f6:	4690      	mov	r8, r2
c0de36f8:	460e      	mov	r6, r1
c0de36fa:	4682      	mov	sl, r0
c0de36fc:	f003 fb73 	bl	c0de6de6 <nbgl_getFont>
c0de3700:	4607      	mov	r7, r0
c0de3702:	4630      	mov	r0, r6
c0de3704:	f004 f8b0 	bl	c0de7868 <strlen>
c0de3708:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de370c:	4605      	mov	r5, r0
c0de370e:	2000      	movs	r0, #0
c0de3710:	f8ab 0000 	strh.w	r0, [fp]
c0de3714:	8020      	strh	r0, [r4, #0]
c0de3716:	0428      	lsls	r0, r5, #16
c0de3718:	d03e      	beq.n	c0de3798 <getTextMaxLenAndWidth+0xa8>
c0de371a:	7830      	ldrb	r0, [r6, #0]
c0de371c:	3d01      	subs	r5, #1
c0de371e:	2808      	cmp	r0, #8
c0de3720:	d025      	beq.n	c0de376e <getTextMaxLenAndWidth+0x7e>
c0de3722:	280c      	cmp	r0, #12
c0de3724:	d035      	beq.n	c0de3792 <getTextMaxLenAndWidth+0xa2>
c0de3726:	280a      	cmp	r0, #10
c0de3728:	d033      	beq.n	c0de3792 <getTextMaxLenAndWidth+0xa2>
c0de372a:	7af9      	ldrb	r1, [r7, #11]
c0de372c:	4288      	cmp	r0, r1
c0de372e:	d32d      	bcc.n	c0de378c <getTextMaxLenAndWidth+0x9c>
c0de3730:	7b3a      	ldrb	r2, [r7, #12]
c0de3732:	4290      	cmp	r0, r2
c0de3734:	d82a      	bhi.n	c0de378c <getTextMaxLenAndWidth+0x9c>
c0de3736:	1a40      	subs	r0, r0, r1
c0de3738:	6939      	ldr	r1, [r7, #16]
c0de373a:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de373e:	f003 fd2b 	bl	c0de7198 <pic>
c0de3742:	7900      	ldrb	r0, [r0, #4]
c0de3744:	7a39      	ldrb	r1, [r7, #8]
c0de3746:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de374a:	1a40      	subs	r0, r0, r1
c0de374c:	0601      	lsls	r1, r0, #24
c0de374e:	d01d      	beq.n	c0de378c <getTextMaxLenAndWidth+0x9c>
c0de3750:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3754:	b2c0      	uxtb	r0, r0
c0de3756:	4401      	add	r1, r0
c0de3758:	4541      	cmp	r1, r8
c0de375a:	d81d      	bhi.n	c0de3798 <getTextMaxLenAndWidth+0xa8>
c0de375c:	8821      	ldrh	r1, [r4, #0]
c0de375e:	3101      	adds	r1, #1
c0de3760:	8021      	strh	r1, [r4, #0]
c0de3762:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3766:	4408      	add	r0, r1
c0de3768:	f8ab 0000 	strh.w	r0, [fp]
c0de376c:	e7d3      	b.n	c0de3716 <getTextMaxLenAndWidth+0x26>
c0de376e:	fa5f f08a 	uxtb.w	r0, sl
c0de3772:	280a      	cmp	r0, #10
c0de3774:	d004      	beq.n	c0de3780 <getTextMaxLenAndWidth+0x90>
c0de3776:	2808      	cmp	r0, #8
c0de3778:	d108      	bne.n	c0de378c <getTextMaxLenAndWidth+0x9c>
c0de377a:	f04f 0a0a 	mov.w	sl, #10
c0de377e:	e001      	b.n	c0de3784 <getTextMaxLenAndWidth+0x94>
c0de3780:	f04f 0a08 	mov.w	sl, #8
c0de3784:	4650      	mov	r0, sl
c0de3786:	f003 fb2e 	bl	c0de6de6 <nbgl_getFont>
c0de378a:	4607      	mov	r7, r0
c0de378c:	8820      	ldrh	r0, [r4, #0]
c0de378e:	3001      	adds	r0, #1
c0de3790:	e7c0      	b.n	c0de3714 <getTextMaxLenAndWidth+0x24>
c0de3792:	8820      	ldrh	r0, [r4, #0]
c0de3794:	3001      	adds	r0, #1
c0de3796:	8020      	strh	r0, [r4, #0]
c0de3798:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de379c <nbgl_layoutGet>:
c0de379c:	b570      	push	{r4, r5, r6, lr}
c0de379e:	4605      	mov	r5, r0
c0de37a0:	7800      	ldrb	r0, [r0, #0]
c0de37a2:	b148      	cbz	r0, c0de37b8 <nbgl_layoutGet+0x1c>
c0de37a4:	4819      	ldr	r0, [pc, #100]	@ (c0de380c <nbgl_layoutGet+0x70>)
c0de37a6:	eb09 0100 	add.w	r1, r9, r0
c0de37aa:	7b8a      	ldrb	r2, [r1, #14]
c0de37ac:	b152      	cbz	r2, c0de37c4 <nbgl_layoutGet+0x28>
c0de37ae:	4448      	add	r0, r9
c0de37b0:	7e81      	ldrb	r1, [r0, #26]
c0de37b2:	b151      	cbz	r1, c0de37ca <nbgl_layoutGet+0x2e>
c0de37b4:	2400      	movs	r4, #0
c0de37b6:	e026      	b.n	c0de3806 <nbgl_layoutGet+0x6a>
c0de37b8:	4814      	ldr	r0, [pc, #80]	@ (c0de380c <nbgl_layoutGet+0x70>)
c0de37ba:	eb09 0400 	add.w	r4, r9, r0
c0de37be:	2000      	movs	r0, #0
c0de37c0:	70a0      	strb	r0, [r4, #2]
c0de37c2:	e004      	b.n	c0de37ce <nbgl_layoutGet+0x32>
c0de37c4:	f101 040c 	add.w	r4, r1, #12
c0de37c8:	e001      	b.n	c0de37ce <nbgl_layoutGet+0x32>
c0de37ca:	f100 0418 	add.w	r4, r0, #24
c0de37ce:	2000      	movs	r0, #0
c0de37d0:	4626      	mov	r6, r4
c0de37d2:	60a0      	str	r0, [r4, #8]
c0de37d4:	6020      	str	r0, [r4, #0]
c0de37d6:	f846 0f04 	str.w	r0, [r6, #4]!
c0de37da:	6868      	ldr	r0, [r5, #4]
c0de37dc:	f003 fcdc 	bl	c0de7198 <pic>
c0de37e0:	60a0      	str	r0, [r4, #8]
c0de37e2:	7828      	ldrb	r0, [r5, #0]
c0de37e4:	f105 0208 	add.w	r2, r5, #8
c0de37e8:	7020      	strb	r0, [r4, #0]
c0de37ea:	4b09      	ldr	r3, [pc, #36]	@ (c0de3810 <nbgl_layoutGet+0x74>)
c0de37ec:	447b      	add	r3, pc
c0de37ee:	b120      	cbz	r0, c0de37fa <nbgl_layoutGet+0x5e>
c0de37f0:	4630      	mov	r0, r6
c0de37f2:	2107      	movs	r1, #7
c0de37f4:	f003 fad9 	bl	c0de6daa <nbgl_screenPush>
c0de37f8:	e004      	b.n	c0de3804 <nbgl_layoutGet+0x68>
c0de37fa:	4630      	mov	r0, r6
c0de37fc:	2107      	movs	r1, #7
c0de37fe:	f003 facf 	bl	c0de6da0 <nbgl_screenSet>
c0de3802:	2000      	movs	r0, #0
c0de3804:	7060      	strb	r0, [r4, #1]
c0de3806:	4620      	mov	r0, r4
c0de3808:	bd70      	pop	{r4, r5, r6, pc}
c0de380a:	bf00      	nop
c0de380c:	00000634 	.word	0x00000634
c0de3810:	00000025 	.word	0x00000025

c0de3814 <buttonCallback>:
c0de3814:	b5b0      	push	{r4, r5, r7, lr}
c0de3816:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de381a:	4811      	ldr	r0, [pc, #68]	@ (c0de3860 <buttonCallback+0x4c>)
c0de381c:	2302      	movs	r3, #2
c0de381e:	1c5c      	adds	r4, r3, #1
c0de3820:	d01d      	beq.n	c0de385e <buttonCallback+0x4a>
c0de3822:	b2dc      	uxtb	r4, r3
c0de3824:	eb09 0500 	add.w	r5, r9, r0
c0de3828:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de382c:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3830:	786d      	ldrb	r5, [r5, #1]
c0de3832:	42aa      	cmp	r2, r5
c0de3834:	d105      	bne.n	c0de3842 <buttonCallback+0x2e>
c0de3836:	eb09 0500 	add.w	r5, r9, r0
c0de383a:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de383e:	78ad      	ldrb	r5, [r5, #2]
c0de3840:	b90d      	cbnz	r5, c0de3846 <buttonCallback+0x32>
c0de3842:	3b01      	subs	r3, #1
c0de3844:	e7eb      	b.n	c0de381e <buttonCallback+0xa>
c0de3846:	eb09 0200 	add.w	r2, r9, r0
c0de384a:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de384e:	6892      	ldr	r2, [r2, #8]
c0de3850:	b12a      	cbz	r2, c0de385e <buttonCallback+0x4a>
c0de3852:	4448      	add	r0, r9
c0de3854:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3858:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de385c:	4710      	bx	r2
c0de385e:	bdb0      	pop	{r4, r5, r7, pc}
c0de3860:	00000634 	.word	0x00000634

c0de3864 <nbgl_layoutAddNavigation>:
c0de3864:	b570      	push	{r4, r5, r6, lr}
c0de3866:	2800      	cmp	r0, #0
c0de3868:	d04d      	beq.n	c0de3906 <nbgl_layoutAddNavigation+0xa2>
c0de386a:	460d      	mov	r5, r1
c0de386c:	7849      	ldrb	r1, [r1, #1]
c0de386e:	4604      	mov	r4, r0
c0de3870:	07c8      	lsls	r0, r1, #31
c0de3872:	d022      	beq.n	c0de38ba <nbgl_layoutAddNavigation+0x56>
c0de3874:	7861      	ldrb	r1, [r4, #1]
c0de3876:	2002      	movs	r0, #2
c0de3878:	f003 faab 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de387c:	782a      	ldrb	r2, [r5, #0]
c0de387e:	7869      	ldrb	r1, [r5, #1]
c0de3880:	4b23      	ldr	r3, [pc, #140]	@ (c0de3910 <nbgl_layoutAddNavigation+0xac>)
c0de3882:	4e24      	ldr	r6, [pc, #144]	@ (c0de3914 <nbgl_layoutAddNavigation+0xb0>)
c0de3884:	2a00      	cmp	r2, #0
c0de3886:	447b      	add	r3, pc
c0de3888:	447e      	add	r6, pc
c0de388a:	4602      	mov	r2, r0
c0de388c:	bf08      	it	eq
c0de388e:	461e      	moveq	r6, r3
c0de3890:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3894:	0e33      	lsrs	r3, r6, #24
c0de3896:	70d3      	strb	r3, [r2, #3]
c0de3898:	0c33      	lsrs	r3, r6, #16
c0de389a:	7093      	strb	r3, [r2, #2]
c0de389c:	0a32      	lsrs	r2, r6, #8
c0de389e:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de38a2:	6862      	ldr	r2, [r4, #4]
c0de38a4:	78a3      	ldrb	r3, [r4, #2]
c0de38a6:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de38aa:	2203      	movs	r2, #3
c0de38ac:	77c2      	strb	r2, [r0, #31]
c0de38ae:	2204      	movs	r2, #4
c0de38b0:	7582      	strb	r2, [r0, #22]
c0de38b2:	2200      	movs	r2, #0
c0de38b4:	7242      	strb	r2, [r0, #9]
c0de38b6:	1c58      	adds	r0, r3, #1
c0de38b8:	70a0      	strb	r0, [r4, #2]
c0de38ba:	0788      	lsls	r0, r1, #30
c0de38bc:	f04f 0600 	mov.w	r6, #0
c0de38c0:	d523      	bpl.n	c0de390a <nbgl_layoutAddNavigation+0xa6>
c0de38c2:	7861      	ldrb	r1, [r4, #1]
c0de38c4:	2002      	movs	r0, #2
c0de38c6:	f003 fa84 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de38ca:	7829      	ldrb	r1, [r5, #0]
c0de38cc:	4a12      	ldr	r2, [pc, #72]	@ (c0de3918 <nbgl_layoutAddNavigation+0xb4>)
c0de38ce:	4b13      	ldr	r3, [pc, #76]	@ (c0de391c <nbgl_layoutAddNavigation+0xb8>)
c0de38d0:	2900      	cmp	r1, #0
c0de38d2:	447a      	add	r2, pc
c0de38d4:	447b      	add	r3, pc
c0de38d6:	4601      	mov	r1, r0
c0de38d8:	bf08      	it	eq
c0de38da:	4613      	moveq	r3, r2
c0de38dc:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de38e0:	0e1a      	lsrs	r2, r3, #24
c0de38e2:	7246      	strb	r6, [r0, #9]
c0de38e4:	70ca      	strb	r2, [r1, #3]
c0de38e6:	0c1a      	lsrs	r2, r3, #16
c0de38e8:	708a      	strb	r2, [r1, #2]
c0de38ea:	0a19      	lsrs	r1, r3, #8
c0de38ec:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de38f0:	6861      	ldr	r1, [r4, #4]
c0de38f2:	78a2      	ldrb	r2, [r4, #2]
c0de38f4:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de38f8:	2103      	movs	r1, #3
c0de38fa:	77c1      	strb	r1, [r0, #31]
c0de38fc:	2106      	movs	r1, #6
c0de38fe:	7581      	strb	r1, [r0, #22]
c0de3900:	1c50      	adds	r0, r2, #1
c0de3902:	70a0      	strb	r0, [r4, #2]
c0de3904:	e001      	b.n	c0de390a <nbgl_layoutAddNavigation+0xa6>
c0de3906:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de390a:	4630      	mov	r0, r6
c0de390c:	bd70      	pop	{r4, r5, r6, pc}
c0de390e:	bf00      	nop
c0de3910:	00004148 	.word	0x00004148
c0de3914:	00004185 	.word	0x00004185
c0de3918:	0000412d 	.word	0x0000412d
c0de391c:	000040ec 	.word	0x000040ec

c0de3920 <nbgl_layoutAddText>:
c0de3920:	2800      	cmp	r0, #0
c0de3922:	f000 8140 	beq.w	c0de3ba6 <nbgl_layoutAddText+0x286>
c0de3926:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de392a:	b088      	sub	sp, #32
c0de392c:	460e      	mov	r6, r1
c0de392e:	7841      	ldrb	r1, [r0, #1]
c0de3930:	4605      	mov	r5, r0
c0de3932:	2001      	movs	r0, #1
c0de3934:	4617      	mov	r7, r2
c0de3936:	461c      	mov	r4, r3
c0de3938:	f003 fa4b 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de393c:	4680      	mov	r8, r0
c0de393e:	2003      	movs	r0, #3
c0de3940:	2f00      	cmp	r7, #0
c0de3942:	bf08      	it	eq
c0de3944:	2001      	moveq	r0, #1
c0de3946:	7869      	ldrb	r1, [r5, #1]
c0de3948:	f888 0020 	strb.w	r0, [r8, #32]
c0de394c:	f003 fa46 	bl	c0de6ddc <nbgl_containerPoolGet>
c0de3950:	4641      	mov	r1, r8
c0de3952:	0e02      	lsrs	r2, r0, #24
c0de3954:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3958:	f04f 0b00 	mov.w	fp, #0
c0de395c:	9704      	str	r7, [sp, #16]
c0de395e:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3962:	f888 a004 	strb.w	sl, [r8, #4]
c0de3966:	f888 b005 	strb.w	fp, [r8, #5]
c0de396a:	70ca      	strb	r2, [r1, #3]
c0de396c:	0c02      	lsrs	r2, r0, #16
c0de396e:	0a00      	lsrs	r0, r0, #8
c0de3970:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3974:	708a      	strb	r2, [r1, #2]
c0de3976:	2004      	movs	r0, #4
c0de3978:	7869      	ldrb	r1, [r5, #1]
c0de397a:	f003 fa2a 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de397e:	4607      	mov	r7, r0
c0de3980:	2003      	movs	r0, #3
c0de3982:	77f8      	strb	r0, [r7, #31]
c0de3984:	4630      	mov	r0, r6
c0de3986:	f003 fc07 	bl	c0de7198 <pic>
c0de398a:	4601      	mov	r1, r0
c0de398c:	2008      	movs	r0, #8
c0de398e:	f887 a004 	strb.w	sl, [r7, #4]
c0de3992:	f887 b005 	strb.w	fp, [r7, #5]
c0de3996:	9403      	str	r4, [sp, #12]
c0de3998:	f04f 0a01 	mov.w	sl, #1
c0de399c:	2c00      	cmp	r4, #0
c0de399e:	bf08      	it	eq
c0de39a0:	200a      	moveq	r0, #10
c0de39a2:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de39a6:	2205      	movs	r2, #5
c0de39a8:	0e0b      	lsrs	r3, r1, #24
c0de39aa:	f887 2020 	strb.w	r2, [r7, #32]
c0de39ae:	463a      	mov	r2, r7
c0de39b0:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de39b4:	70d3      	strb	r3, [r2, #3]
c0de39b6:	0c0b      	lsrs	r3, r1, #16
c0de39b8:	7093      	strb	r3, [r2, #2]
c0de39ba:	0a0a      	lsrs	r2, r1, #8
c0de39bc:	2301      	movs	r3, #1
c0de39be:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de39c2:	2272      	movs	r2, #114	@ 0x72
c0de39c4:	f003 fa19 	bl	c0de6dfa <nbgl_getTextNbLinesInWidth>
c0de39c8:	4606      	mov	r6, r0
c0de39ca:	2805      	cmp	r0, #5
c0de39cc:	9505      	str	r5, [sp, #20]
c0de39ce:	d31d      	bcc.n	c0de3a0c <nbgl_layoutAddText+0xec>
c0de39d0:	463e      	mov	r6, r7
c0de39d2:	2004      	movs	r0, #4
c0de39d4:	f10d 051e 	add.w	r5, sp, #30
c0de39d8:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de39dc:	7872      	ldrb	r2, [r6, #1]
c0de39de:	78b3      	ldrb	r3, [r6, #2]
c0de39e0:	78f4      	ldrb	r4, [r6, #3]
c0de39e2:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de39e6:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de39ea:	9500      	str	r5, [sp, #0]
c0de39ec:	9d05      	ldr	r5, [sp, #20]
c0de39ee:	f8cd a004 	str.w	sl, [sp, #4]
c0de39f2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de39f6:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de39fa:	2304      	movs	r3, #4
c0de39fc:	f000 fc6d 	bl	c0de42da <OUTLINED_FUNCTION_5>
c0de3a00:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3a04:	7130      	strb	r0, [r6, #4]
c0de3a06:	0a00      	lsrs	r0, r0, #8
c0de3a08:	7170      	strb	r0, [r6, #5]
c0de3a0a:	2604      	movs	r6, #4
c0de3a0c:	f000 fc72 	bl	c0de42f4 <OUTLINED_FUNCTION_7>
c0de3a10:	4683      	mov	fp, r0
c0de3a12:	2002      	movs	r0, #2
c0de3a14:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de3a18:	9c04      	ldr	r4, [sp, #16]
c0de3a1a:	75b8      	strb	r0, [r7, #22]
c0de3a1c:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3a20:	2c00      	cmp	r4, #0
c0de3a22:	fb06 fa00 	mul.w	sl, r6, r0
c0de3a26:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3a2a:	f887 a006 	strb.w	sl, [r7, #6]
c0de3a2e:	71f8      	strb	r0, [r7, #7]
c0de3a30:	4640      	mov	r0, r8
c0de3a32:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3a36:	7842      	ldrb	r2, [r0, #1]
c0de3a38:	7883      	ldrb	r3, [r0, #2]
c0de3a3a:	78c0      	ldrb	r0, [r0, #3]
c0de3a3c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3a40:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3a44:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3a48:	6007      	str	r7, [r0, #0]
c0de3a4a:	f000 8111 	beq.w	c0de3c70 <nbgl_layoutAddText+0x350>
c0de3a4e:	9803      	ldr	r0, [sp, #12]
c0de3a50:	7869      	ldrb	r1, [r5, #1]
c0de3a52:	2802      	cmp	r0, #2
c0de3a54:	f040 80a9 	bne.w	c0de3baa <nbgl_layoutAddText+0x28a>
c0de3a58:	2005      	movs	r0, #5
c0de3a5a:	2505      	movs	r5, #5
c0de3a5c:	f003 f9b9 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de3a60:	2600      	movs	r6, #0
c0de3a62:	4607      	mov	r7, r0
c0de3a64:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3a68:	2001      	movs	r0, #1
c0de3a6a:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3a6e:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3a72:	f000 fc46 	bl	c0de4302 <OUTLINED_FUNCTION_9>
c0de3a76:	4620      	mov	r0, r4
c0de3a78:	f003 fb8e 	bl	c0de7198 <pic>
c0de3a7c:	4601      	mov	r1, r0
c0de3a7e:	200e      	movs	r0, #14
c0de3a80:	71fe      	strb	r6, [r7, #7]
c0de3a82:	75bd      	strb	r5, [r7, #22]
c0de3a84:	71b8      	strb	r0, [r7, #6]
c0de3a86:	2008      	movs	r0, #8
c0de3a88:	0e0a      	lsrs	r2, r1, #24
c0de3a8a:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3a8e:	4638      	mov	r0, r7
c0de3a90:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3a94:	f000 fc15 	bl	c0de42c2 <OUTLINED_FUNCTION_3>
c0de3a98:	2865      	cmp	r0, #101	@ 0x65
c0de3a9a:	f240 80d9 	bls.w	c0de3c50 <nbgl_layoutAddText+0x330>
c0de3a9e:	46bb      	mov	fp, r7
c0de3aa0:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3aa4:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3aa8:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3aac:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3ab0:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3ab4:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3ab8:	ae06      	add	r6, sp, #24
c0de3aba:	9600      	str	r6, [sp, #0]
c0de3abc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3ac0:	f10d 031a 	add.w	r3, sp, #26
c0de3ac4:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3ac8:	2266      	movs	r2, #102	@ 0x66
c0de3aca:	f7ff fe11 	bl	c0de36f0 <getTextMaxLenAndWidth>
c0de3ace:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3ad2:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3ad6:	9003      	str	r0, [sp, #12]
c0de3ad8:	300c      	adds	r0, #12
c0de3ada:	9602      	str	r6, [sp, #8]
c0de3adc:	7138      	strb	r0, [r7, #4]
c0de3ade:	0a00      	lsrs	r0, r0, #8
c0de3ae0:	7178      	strb	r0, [r7, #5]
c0de3ae2:	486e      	ldr	r0, [pc, #440]	@ (c0de3c9c <nbgl_layoutAddText+0x37c>)
c0de3ae4:	2e13      	cmp	r6, #19
c0de3ae6:	bf28      	it	cs
c0de3ae8:	2613      	movcs	r6, #19
c0de3aea:	f89b 1000 	ldrb.w	r1, [fp]
c0de3aee:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3af2:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3af6:	eb09 0400 	add.w	r4, r9, r0
c0de3afa:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3afe:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3b02:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3b06:	4632      	mov	r2, r6
c0de3b08:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3b0c:	4620      	mov	r0, r4
c0de3b0e:	f003 fe45 	bl	c0de779c <__aeabi_memcpy>
c0de3b12:	2500      	movs	r5, #0
c0de3b14:	4620      	mov	r0, r4
c0de3b16:	55a5      	strb	r5, [r4, r6]
c0de3b18:	f003 fb3e 	bl	c0de7198 <pic>
c0de3b1c:	2101      	movs	r1, #1
c0de3b1e:	f88b 0000 	strb.w	r0, [fp]
c0de3b22:	76bd      	strb	r5, [r7, #26]
c0de3b24:	9d05      	ldr	r5, [sp, #20]
c0de3b26:	7679      	strb	r1, [r7, #25]
c0de3b28:	0e01      	lsrs	r1, r0, #24
c0de3b2a:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3b2e:	0c01      	lsrs	r1, r0, #16
c0de3b30:	0a00      	lsrs	r0, r0, #8
c0de3b32:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3b36:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3b3a:	4640      	mov	r0, r8
c0de3b3c:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3b40:	7842      	ldrb	r2, [r0, #1]
c0de3b42:	7883      	ldrb	r3, [r0, #2]
c0de3b44:	78c0      	ldrb	r0, [r0, #3]
c0de3b46:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3b4a:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3b4e:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3b52:	6047      	str	r7, [r0, #4]
c0de3b54:	9803      	ldr	r0, [sp, #12]
c0de3b56:	2800      	cmp	r0, #0
c0de3b58:	f000 8088 	beq.w	c0de3c6c <nbgl_layoutAddText+0x34c>
c0de3b5c:	7869      	ldrb	r1, [r5, #1]
c0de3b5e:	2005      	movs	r0, #5
c0de3b60:	2605      	movs	r6, #5
c0de3b62:	f003 f936 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de3b66:	2500      	movs	r5, #0
c0de3b68:	4607      	mov	r7, r0
c0de3b6a:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3b6e:	2001      	movs	r0, #1
c0de3b70:	f000 fbc7 	bl	c0de4302 <OUTLINED_FUNCTION_9>
c0de3b74:	9804      	ldr	r0, [sp, #16]
c0de3b76:	f003 fb0f 	bl	c0de7198 <pic>
c0de3b7a:	210e      	movs	r1, #14
c0de3b7c:	71fd      	strb	r5, [r7, #7]
c0de3b7e:	71b9      	strb	r1, [r7, #6]
c0de3b80:	2108      	movs	r1, #8
c0de3b82:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3b86:	9902      	ldr	r1, [sp, #8]
c0de3b88:	4401      	add	r1, r0
c0de3b8a:	4638      	mov	r0, r7
c0de3b8c:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3b90:	0e0a      	lsrs	r2, r1, #24
c0de3b92:	f000 fb96 	bl	c0de42c2 <OUTLINED_FUNCTION_3>
c0de3b96:	300c      	adds	r0, #12
c0de3b98:	210f      	movs	r1, #15
c0de3b9a:	75be      	strb	r6, [r7, #22]
c0de3b9c:	7138      	strb	r0, [r7, #4]
c0de3b9e:	0a00      	lsrs	r0, r0, #8
c0de3ba0:	7178      	strb	r0, [r7, #5]
c0de3ba2:	2002      	movs	r0, #2
c0de3ba4:	e05a      	b.n	c0de3c5c <nbgl_layoutAddText+0x33c>
c0de3ba6:	f000 bba9 	b.w	c0de42fc <OUTLINED_FUNCTION_8>
c0de3baa:	f000 fb93 	bl	c0de42d4 <OUTLINED_FUNCTION_4>
c0de3bae:	2603      	movs	r6, #3
c0de3bb0:	4607      	mov	r7, r0
c0de3bb2:	77c6      	strb	r6, [r0, #31]
c0de3bb4:	4620      	mov	r0, r4
c0de3bb6:	f003 faef 	bl	c0de7198 <pic>
c0de3bba:	4601      	mov	r1, r0
c0de3bbc:	2072      	movs	r0, #114	@ 0x72
c0de3bbe:	2400      	movs	r4, #0
c0de3bc0:	2301      	movs	r3, #1
c0de3bc2:	7138      	strb	r0, [r7, #4]
c0de3bc4:	2001      	movs	r0, #1
c0de3bc6:	0e0a      	lsrs	r2, r1, #24
c0de3bc8:	717c      	strb	r4, [r7, #5]
c0de3bca:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3bce:	200a      	movs	r0, #10
c0de3bd0:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3bd4:	f000 fb5b 	bl	c0de428e <OUTLINED_FUNCTION_1>
c0de3bd8:	2804      	cmp	r0, #4
c0de3bda:	d31e      	bcc.n	c0de3c1a <nbgl_layoutAddText+0x2fa>
c0de3bdc:	463d      	mov	r5, r7
c0de3bde:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3be2:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3be6:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3bea:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3bee:	78ab      	ldrb	r3, [r5, #2]
c0de3bf0:	78e9      	ldrb	r1, [r5, #3]
c0de3bf2:	aa07      	add	r2, sp, #28
c0de3bf4:	9200      	str	r2, [sp, #0]
c0de3bf6:	2201      	movs	r2, #1
c0de3bf8:	9201      	str	r2, [sp, #4]
c0de3bfa:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3bfe:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3c02:	2303      	movs	r3, #3
c0de3c04:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3c08:	2272      	movs	r2, #114	@ 0x72
c0de3c0a:	f003 f905 	bl	c0de6e18 <nbgl_getTextMaxLenInNbLines>
c0de3c0e:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3c12:	7128      	strb	r0, [r5, #4]
c0de3c14:	0a00      	lsrs	r0, r0, #8
c0de3c16:	7168      	strb	r0, [r5, #5]
c0de3c18:	2003      	movs	r0, #3
c0de3c1a:	9903      	ldr	r1, [sp, #12]
c0de3c1c:	2900      	cmp	r1, #0
c0de3c1e:	bf08      	it	eq
c0de3c20:	4606      	moveq	r6, r0
c0de3c22:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3c26:	76bc      	strb	r4, [r7, #26]
c0de3c28:	75bc      	strb	r4, [r7, #22]
c0de3c2a:	fb06 f100 	mul.w	r1, r6, r0
c0de3c2e:	fb06 a000 	mla	r0, r6, r0, sl
c0de3c32:	71b9      	strb	r1, [r7, #6]
c0de3c34:	0a09      	lsrs	r1, r1, #8
c0de3c36:	71f9      	strb	r1, [r7, #7]
c0de3c38:	2102      	movs	r1, #2
c0de3c3a:	f100 0a02 	add.w	sl, r0, #2
c0de3c3e:	7679      	strb	r1, [r7, #25]
c0de3c40:	2105      	movs	r1, #5
c0de3c42:	f887 1020 	strb.w	r1, [r7, #32]
c0de3c46:	4641      	mov	r1, r8
c0de3c48:	f000 fb2e 	bl	c0de42a8 <OUTLINED_FUNCTION_2>
c0de3c4c:	604f      	str	r7, [r1, #4]
c0de3c4e:	e00f      	b.n	c0de3c70 <nbgl_layoutAddText+0x350>
c0de3c50:	300c      	adds	r0, #12
c0de3c52:	2108      	movs	r1, #8
c0de3c54:	7138      	strb	r0, [r7, #4]
c0de3c56:	0a00      	lsrs	r0, r0, #8
c0de3c58:	7178      	strb	r0, [r7, #5]
c0de3c5a:	2001      	movs	r0, #1
c0de3c5c:	2200      	movs	r2, #0
c0de3c5e:	7679      	strb	r1, [r7, #25]
c0de3c60:	4641      	mov	r1, r8
c0de3c62:	76ba      	strb	r2, [r7, #26]
c0de3c64:	f000 fb20 	bl	c0de42a8 <OUTLINED_FUNCTION_2>
c0de3c68:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3c6c:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3c70:	6868      	ldr	r0, [r5, #4]
c0de3c72:	78a9      	ldrb	r1, [r5, #2]
c0de3c74:	2205      	movs	r2, #5
c0de3c76:	f888 2016 	strb.w	r2, [r8, #22]
c0de3c7a:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3c7e:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3c82:	2000      	movs	r0, #0
c0de3c84:	3101      	adds	r1, #1
c0de3c86:	f888 a006 	strb.w	sl, [r8, #6]
c0de3c8a:	f888 2007 	strb.w	r2, [r8, #7]
c0de3c8e:	f888 001f 	strb.w	r0, [r8, #31]
c0de3c92:	70a9      	strb	r1, [r5, #2]
c0de3c94:	b008      	add	sp, #32
c0de3c96:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c9a:	bf00      	nop
c0de3c9c:	00000658 	.word	0x00000658

c0de3ca0 <nbgl_layoutAddMenuList>:
c0de3ca0:	2800      	cmp	r0, #0
c0de3ca2:	d04f      	beq.n	c0de3d44 <nbgl_layoutAddMenuList+0xa4>
c0de3ca4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ca8:	460c      	mov	r4, r1
c0de3caa:	4605      	mov	r5, r0
c0de3cac:	2700      	movs	r7, #0
c0de3cae:	f04f 0b05 	mov.w	fp, #5
c0de3cb2:	f04f 0803 	mov.w	r8, #3
c0de3cb6:	f04f 0a00 	mov.w	sl, #0
c0de3cba:	7920      	ldrb	r0, [r4, #4]
c0de3cbc:	4582      	cmp	sl, r0
c0de3cbe:	d23e      	bcs.n	c0de3d3e <nbgl_layoutAddMenuList+0x9e>
c0de3cc0:	7960      	ldrb	r0, [r4, #5]
c0de3cc2:	2803      	cmp	r0, #3
c0de3cc4:	d302      	bcc.n	c0de3ccc <nbgl_layoutAddMenuList+0x2c>
c0de3cc6:	1e81      	subs	r1, r0, #2
c0de3cc8:	4551      	cmp	r1, sl
c0de3cca:	dc35      	bgt.n	c0de3d38 <nbgl_layoutAddMenuList+0x98>
c0de3ccc:	3002      	adds	r0, #2
c0de3cce:	4550      	cmp	r0, sl
c0de3cd0:	d332      	bcc.n	c0de3d38 <nbgl_layoutAddMenuList+0x98>
c0de3cd2:	7869      	ldrb	r1, [r5, #1]
c0de3cd4:	f000 fafe 	bl	c0de42d4 <OUTLINED_FUNCTION_4>
c0de3cd8:	6821      	ldr	r1, [r4, #0]
c0de3cda:	4606      	mov	r6, r0
c0de3cdc:	fa5f f08a 	uxtb.w	r0, sl
c0de3ce0:	4788      	blx	r1
c0de3ce2:	7961      	ldrb	r1, [r4, #5]
c0de3ce4:	220a      	movs	r2, #10
c0de3ce6:	458a      	cmp	sl, r1
c0de3ce8:	bf08      	it	eq
c0de3cea:	2208      	moveq	r2, #8
c0de3cec:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3cf0:	71f7      	strb	r7, [r6, #7]
c0de3cf2:	7177      	strb	r7, [r6, #5]
c0de3cf4:	f886 b020 	strb.w	fp, [r6, #32]
c0de3cf8:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3cfc:	f886 b016 	strb.w	fp, [r6, #22]
c0de3d00:	f886 801f 	strb.w	r8, [r6, #31]
c0de3d04:	4632      	mov	r2, r6
c0de3d06:	0e03      	lsrs	r3, r0, #24
c0de3d08:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3d0c:	70d3      	strb	r3, [r2, #3]
c0de3d0e:	0c03      	lsrs	r3, r0, #16
c0de3d10:	0a00      	lsrs	r0, r0, #8
c0de3d12:	7093      	strb	r3, [r2, #2]
c0de3d14:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3d18:	6868      	ldr	r0, [r5, #4]
c0de3d1a:	78aa      	ldrb	r2, [r5, #2]
c0de3d1c:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3d20:	200c      	movs	r0, #12
c0de3d22:	71b0      	strb	r0, [r6, #6]
c0de3d24:	2072      	movs	r0, #114	@ 0x72
c0de3d26:	7130      	strb	r0, [r6, #4]
c0de3d28:	ebaa 0001 	sub.w	r0, sl, r1
c0de3d2c:	0901      	lsrs	r1, r0, #4
c0de3d2e:	0100      	lsls	r0, r0, #4
c0de3d30:	7670      	strb	r0, [r6, #25]
c0de3d32:	1c50      	adds	r0, r2, #1
c0de3d34:	76b1      	strb	r1, [r6, #26]
c0de3d36:	70a8      	strb	r0, [r5, #2]
c0de3d38:	f10a 0a01 	add.w	sl, sl, #1
c0de3d3c:	e7bd      	b.n	c0de3cba <nbgl_layoutAddMenuList+0x1a>
c0de3d3e:	2000      	movs	r0, #0
c0de3d40:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d44:	f000 bada 	b.w	c0de42fc <OUTLINED_FUNCTION_8>

c0de3d48 <nbgl_layoutAddCenteredInfo>:
c0de3d48:	2800      	cmp	r0, #0
c0de3d4a:	f000 80d9 	beq.w	c0de3f00 <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3d4e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d52:	b086      	sub	sp, #24
c0de3d54:	460c      	mov	r4, r1
c0de3d56:	7841      	ldrb	r1, [r0, #1]
c0de3d58:	4682      	mov	sl, r0
c0de3d5a:	2001      	movs	r0, #1
c0de3d5c:	f003 f839 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de3d60:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d64:	4680      	mov	r8, r0
c0de3d66:	2003      	movs	r0, #3
c0de3d68:	2703      	movs	r7, #3
c0de3d6a:	f003 f837 	bl	c0de6ddc <nbgl_containerPoolGet>
c0de3d6e:	4641      	mov	r1, r8
c0de3d70:	0e02      	lsrs	r2, r0, #24
c0de3d72:	f04f 0b00 	mov.w	fp, #0
c0de3d76:	9404      	str	r4, [sp, #16]
c0de3d78:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3d7c:	f888 b020 	strb.w	fp, [r8, #32]
c0de3d80:	70ca      	strb	r2, [r1, #3]
c0de3d82:	0c02      	lsrs	r2, r0, #16
c0de3d84:	0a00      	lsrs	r0, r0, #8
c0de3d86:	708a      	strb	r2, [r1, #2]
c0de3d88:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3d8c:	68a0      	ldr	r0, [r4, #8]
c0de3d8e:	b3c0      	cbz	r0, c0de3e02 <nbgl_layoutAddCenteredInfo+0xba>
c0de3d90:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d94:	2002      	movs	r0, #2
c0de3d96:	f003 f81c 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de3d9a:	4606      	mov	r6, r0
c0de3d9c:	77c7      	strb	r7, [r0, #31]
c0de3d9e:	68a0      	ldr	r0, [r4, #8]
c0de3da0:	f003 f9fa 	bl	c0de7198 <pic>
c0de3da4:	4631      	mov	r1, r6
c0de3da6:	0e02      	lsrs	r2, r0, #24
c0de3da8:	f886 b013 	strb.w	fp, [r6, #19]
c0de3dac:	f886 b009 	strb.w	fp, [r6, #9]
c0de3db0:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3db4:	70ca      	strb	r2, [r1, #3]
c0de3db6:	0c02      	lsrs	r2, r0, #16
c0de3db8:	708a      	strb	r2, [r1, #2]
c0de3dba:	0a01      	lsrs	r1, r0, #8
c0de3dbc:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3dc0:	4631      	mov	r1, r6
c0de3dc2:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3dc6:	f881 b003 	strb.w	fp, [r1, #3]
c0de3dca:	f881 b002 	strb.w	fp, [r1, #2]
c0de3dce:	4641      	mov	r1, r8
c0de3dd0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3dd4:	784f      	ldrb	r7, [r1, #1]
c0de3dd6:	788c      	ldrb	r4, [r1, #2]
c0de3dd8:	78cd      	ldrb	r5, [r1, #3]
c0de3dda:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3dde:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3de2:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3de6:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3dea:	9c04      	ldr	r4, [sp, #16]
c0de3dec:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3df0:	2202      	movs	r2, #2
c0de3df2:	75b2      	strb	r2, [r6, #22]
c0de3df4:	1c5a      	adds	r2, r3, #1
c0de3df6:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3dfa:	7881      	ldrb	r1, [r0, #2]
c0de3dfc:	78c0      	ldrb	r0, [r0, #3]
c0de3dfe:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3e02:	6820      	ldr	r0, [r4, #0]
c0de3e04:	2800      	cmp	r0, #0
c0de3e06:	f000 80a2 	beq.w	c0de3f4e <nbgl_layoutAddCenteredInfo+0x206>
c0de3e0a:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3e0e:	f000 fa61 	bl	c0de42d4 <OUTLINED_FUNCTION_4>
c0de3e12:	4607      	mov	r7, r0
c0de3e14:	2003      	movs	r0, #3
c0de3e16:	77f8      	strb	r0, [r7, #31]
c0de3e18:	6820      	ldr	r0, [r4, #0]
c0de3e1a:	f003 f9bd 	bl	c0de7198 <pic>
c0de3e1e:	4601      	mov	r1, r0
c0de3e20:	2072      	movs	r0, #114	@ 0x72
c0de3e22:	2500      	movs	r5, #0
c0de3e24:	7138      	strb	r0, [r7, #4]
c0de3e26:	2005      	movs	r0, #5
c0de3e28:	0e0a      	lsrs	r2, r1, #24
c0de3e2a:	717d      	strb	r5, [r7, #5]
c0de3e2c:	f887 0020 	strb.w	r0, [r7, #32]
c0de3e30:	2001      	movs	r0, #1
c0de3e32:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3e36:	4638      	mov	r0, r7
c0de3e38:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3e3c:	70c2      	strb	r2, [r0, #3]
c0de3e3e:	0c0a      	lsrs	r2, r1, #16
c0de3e40:	7082      	strb	r2, [r0, #2]
c0de3e42:	0a08      	lsrs	r0, r1, #8
c0de3e44:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3e48:	2008      	movs	r0, #8
c0de3e4a:	7b62      	ldrb	r2, [r4, #13]
c0de3e4c:	2a00      	cmp	r2, #0
c0de3e4e:	bf08      	it	eq
c0de3e50:	200a      	moveq	r0, #10
c0de3e52:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e56:	2272      	movs	r2, #114	@ 0x72
c0de3e58:	2301      	movs	r3, #1
c0de3e5a:	f002 ffce 	bl	c0de6dfa <nbgl_getTextNbLinesInWidth>
c0de3e5e:	4606      	mov	r6, r0
c0de3e60:	2805      	cmp	r0, #5
c0de3e62:	d31e      	bcc.n	c0de3ea2 <nbgl_layoutAddCenteredInfo+0x15a>
c0de3e64:	463d      	mov	r5, r7
c0de3e66:	2004      	movs	r0, #4
c0de3e68:	2101      	movs	r1, #1
c0de3e6a:	f10d 0416 	add.w	r4, sp, #22
c0de3e6e:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3e72:	786a      	ldrb	r2, [r5, #1]
c0de3e74:	78ab      	ldrb	r3, [r5, #2]
c0de3e76:	78ee      	ldrb	r6, [r5, #3]
c0de3e78:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3e7c:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3e80:	9101      	str	r1, [sp, #4]
c0de3e82:	9400      	str	r4, [sp, #0]
c0de3e84:	9c04      	ldr	r4, [sp, #16]
c0de3e86:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3e8a:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3e8e:	2304      	movs	r3, #4
c0de3e90:	f000 fa23 	bl	c0de42da <OUTLINED_FUNCTION_5>
c0de3e94:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3e98:	2604      	movs	r6, #4
c0de3e9a:	7128      	strb	r0, [r5, #4]
c0de3e9c:	0a00      	lsrs	r0, r0, #8
c0de3e9e:	7168      	strb	r0, [r5, #5]
c0de3ea0:	2500      	movs	r5, #0
c0de3ea2:	f000 fa27 	bl	c0de42f4 <OUTLINED_FUNCTION_7>
c0de3ea6:	79c0      	ldrb	r0, [r0, #7]
c0de3ea8:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3eac:	4370      	muls	r0, r6
c0de3eae:	0a01      	lsrs	r1, r0, #8
c0de3eb0:	71b8      	strb	r0, [r7, #6]
c0de3eb2:	71f9      	strb	r1, [r7, #7]
c0de3eb4:	68a1      	ldr	r1, [r4, #8]
c0de3eb6:	b329      	cbz	r1, c0de3f04 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3eb8:	4641      	mov	r1, r8
c0de3eba:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3ebe:	784c      	ldrb	r4, [r1, #1]
c0de3ec0:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3ec4:	788d      	ldrb	r5, [r1, #2]
c0de3ec6:	78c9      	ldrb	r1, [r1, #3]
c0de3ec8:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3ecc:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3ed0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3ed4:	463a      	mov	r2, r7
c0de3ed6:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3eda:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3ede:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3ee2:	0e0b      	lsrs	r3, r1, #24
c0de3ee4:	70d3      	strb	r3, [r2, #3]
c0de3ee6:	0c0b      	lsrs	r3, r1, #16
c0de3ee8:	0a09      	lsrs	r1, r1, #8
c0de3eea:	7051      	strb	r1, [r2, #1]
c0de3eec:	2100      	movs	r1, #0
c0de3eee:	7093      	strb	r3, [r2, #2]
c0de3ef0:	7211      	strb	r1, [r2, #8]
c0de3ef2:	2e03      	cmp	r6, #3
c0de3ef4:	bf38      	it	cc
c0de3ef6:	2101      	movcc	r1, #1
c0de3ef8:	0089      	lsls	r1, r1, #2
c0de3efa:	71d1      	strb	r1, [r2, #7]
c0de3efc:	2108      	movs	r1, #8
c0de3efe:	e00a      	b.n	c0de3f16 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3f00:	f000 b9fc 	b.w	c0de42fc <OUTLINED_FUNCTION_8>
c0de3f04:	6861      	ldr	r1, [r4, #4]
c0de3f06:	b119      	cbz	r1, c0de3f10 <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3f08:	f000 f9ec 	bl	c0de42e4 <OUTLINED_FUNCTION_6>
c0de3f0c:	2102      	movs	r1, #2
c0de3f0e:	e002      	b.n	c0de3f16 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3f10:	f000 f9e8 	bl	c0de42e4 <OUTLINED_FUNCTION_6>
c0de3f14:	2105      	movs	r1, #5
c0de3f16:	7111      	strb	r1, [r2, #4]
c0de3f18:	4641      	mov	r1, r8
c0de3f1a:	4458      	add	r0, fp
c0de3f1c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3f20:	784c      	ldrb	r4, [r1, #1]
c0de3f22:	788d      	ldrb	r5, [r1, #2]
c0de3f24:	78ce      	ldrb	r6, [r1, #3]
c0de3f26:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3f2a:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3f2e:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3f32:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3f36:	9c04      	ldr	r4, [sp, #16]
c0de3f38:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3f3c:	1c5a      	adds	r2, r3, #1
c0de3f3e:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3f42:	7e79      	ldrb	r1, [r7, #25]
c0de3f44:	7eba      	ldrb	r2, [r7, #26]
c0de3f46:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3f4a:	eb00 0b01 	add.w	fp, r0, r1
c0de3f4e:	6860      	ldr	r0, [r4, #4]
c0de3f50:	2800      	cmp	r0, #0
c0de3f52:	d074      	beq.n	c0de403e <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3f54:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3f58:	2004      	movs	r0, #4
c0de3f5a:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3f5e:	f002 ff38 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de3f62:	2603      	movs	r6, #3
c0de3f64:	4607      	mov	r7, r0
c0de3f66:	77c6      	strb	r6, [r0, #31]
c0de3f68:	6860      	ldr	r0, [r4, #4]
c0de3f6a:	f003 f915 	bl	c0de7198 <pic>
c0de3f6e:	4601      	mov	r1, r0
c0de3f70:	2000      	movs	r0, #0
c0de3f72:	2301      	movs	r3, #1
c0de3f74:	7178      	strb	r0, [r7, #5]
c0de3f76:	2072      	movs	r0, #114	@ 0x72
c0de3f78:	0e0a      	lsrs	r2, r1, #24
c0de3f7a:	7138      	strb	r0, [r7, #4]
c0de3f7c:	200a      	movs	r0, #10
c0de3f7e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3f82:	2005      	movs	r0, #5
c0de3f84:	f887 0020 	strb.w	r0, [r7, #32]
c0de3f88:	2001      	movs	r0, #1
c0de3f8a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3f8e:	f000 f97e 	bl	c0de428e <OUTLINED_FUNCTION_1>
c0de3f92:	4682      	mov	sl, r0
c0de3f94:	2804      	cmp	r0, #4
c0de3f96:	d31c      	bcc.n	c0de3fd2 <nbgl_layoutAddCenteredInfo+0x28a>
c0de3f98:	463d      	mov	r5, r7
c0de3f9a:	f04f 0c01 	mov.w	ip, #1
c0de3f9e:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de3fa2:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3fa6:	786a      	ldrb	r2, [r5, #1]
c0de3fa8:	78ab      	ldrb	r3, [r5, #2]
c0de3faa:	78ee      	ldrb	r6, [r5, #3]
c0de3fac:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3fb0:	ac05      	add	r4, sp, #20
c0de3fb2:	e9cd 4c00 	strd	r4, ip, [sp]
c0de3fb6:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3fba:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3fbe:	2303      	movs	r3, #3
c0de3fc0:	f000 f98b 	bl	c0de42da <OUTLINED_FUNCTION_5>
c0de3fc4:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de3fc8:	f04f 0a03 	mov.w	sl, #3
c0de3fcc:	7128      	strb	r0, [r5, #4]
c0de3fce:	0a00      	lsrs	r0, r0, #8
c0de3fd0:	7168      	strb	r0, [r5, #5]
c0de3fd2:	f000 f98f 	bl	c0de42f4 <OUTLINED_FUNCTION_7>
c0de3fd6:	4641      	mov	r1, r8
c0de3fd8:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de3fdc:	784c      	ldrb	r4, [r1, #1]
c0de3fde:	788d      	ldrb	r5, [r1, #2]
c0de3fe0:	78ce      	ldrb	r6, [r1, #3]
c0de3fe2:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de3fe6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de3fea:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3fee:	463d      	mov	r5, r7
c0de3ff0:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de3ff4:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de3ff8:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de3ffc:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4000:	0e26      	lsrs	r6, r4, #24
c0de4002:	70ee      	strb	r6, [r5, #3]
c0de4004:	0c26      	lsrs	r6, r4, #16
c0de4006:	0a24      	lsrs	r4, r4, #8
c0de4008:	74fc      	strb	r4, [r7, #19]
c0de400a:	70ae      	strb	r6, [r5, #2]
c0de400c:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4010:	2302      	movs	r3, #2
c0de4012:	2400      	movs	r4, #0
c0de4014:	3201      	adds	r2, #1
c0de4016:	767b      	strb	r3, [r7, #25]
c0de4018:	2308      	movs	r3, #8
c0de401a:	76bc      	strb	r4, [r7, #26]
c0de401c:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4020:	79c0      	ldrb	r0, [r0, #7]
c0de4022:	75bb      	strb	r3, [r7, #22]
c0de4024:	fb0a f300 	mul.w	r3, sl, r0
c0de4028:	fb0a b000 	mla	r0, sl, r0, fp
c0de402c:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de4030:	71bb      	strb	r3, [r7, #6]
c0de4032:	0a1b      	lsrs	r3, r3, #8
c0de4034:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4038:	f100 0b02 	add.w	fp, r0, #2
c0de403c:	71fb      	strb	r3, [r7, #7]
c0de403e:	7b20      	ldrb	r0, [r4, #12]
c0de4040:	2102      	movs	r1, #2
c0de4042:	2800      	cmp	r0, #0
c0de4044:	bf08      	it	eq
c0de4046:	2105      	moveq	r1, #5
c0de4048:	f888 1016 	strb.w	r1, [r8, #22]
c0de404c:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de4050:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4054:	2272      	movs	r2, #114	@ 0x72
c0de4056:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de405a:	2000      	movs	r0, #0
c0de405c:	f888 2004 	strb.w	r2, [r8, #4]
c0de4060:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de4064:	3101      	adds	r1, #1
c0de4066:	f888 b006 	strb.w	fp, [r8, #6]
c0de406a:	f888 0019 	strb.w	r0, [r8, #25]
c0de406e:	f888 001a 	strb.w	r0, [r8, #26]
c0de4072:	f888 0005 	strb.w	r0, [r8, #5]
c0de4076:	f888 001f 	strb.w	r0, [r8, #31]
c0de407a:	f888 2007 	strb.w	r2, [r8, #7]
c0de407e:	f88a 1002 	strb.w	r1, [sl, #2]
c0de4082:	b006      	add	sp, #24
c0de4084:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4088 <nbgl_layoutAddSwitch>:
c0de4088:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de408c:	2800      	cmp	r0, #0
c0de408e:	d07d      	beq.n	c0de418c <nbgl_layoutAddSwitch+0x104>
c0de4090:	460d      	mov	r5, r1
c0de4092:	7841      	ldrb	r1, [r0, #1]
c0de4094:	4604      	mov	r4, r0
c0de4096:	f000 f91d 	bl	c0de42d4 <OUTLINED_FUNCTION_4>
c0de409a:	f04f 0803 	mov.w	r8, #3
c0de409e:	4606      	mov	r6, r0
c0de40a0:	f880 801f 	strb.w	r8, [r0, #31]
c0de40a4:	6828      	ldr	r0, [r5, #0]
c0de40a6:	f003 f877 	bl	c0de7198 <pic>
c0de40aa:	4601      	mov	r1, r0
c0de40ac:	2072      	movs	r0, #114	@ 0x72
c0de40ae:	2700      	movs	r7, #0
c0de40b0:	2301      	movs	r3, #1
c0de40b2:	7130      	strb	r0, [r6, #4]
c0de40b4:	2008      	movs	r0, #8
c0de40b6:	0e0a      	lsrs	r2, r1, #24
c0de40b8:	7177      	strb	r7, [r6, #5]
c0de40ba:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de40be:	2005      	movs	r0, #5
c0de40c0:	f886 0020 	strb.w	r0, [r6, #32]
c0de40c4:	2001      	movs	r0, #1
c0de40c6:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de40ca:	4630      	mov	r0, r6
c0de40cc:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de40d0:	70c2      	strb	r2, [r0, #3]
c0de40d2:	0c0a      	lsrs	r2, r1, #16
c0de40d4:	7082      	strb	r2, [r0, #2]
c0de40d6:	0a08      	lsrs	r0, r1, #8
c0de40d8:	2272      	movs	r2, #114	@ 0x72
c0de40da:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de40de:	2008      	movs	r0, #8
c0de40e0:	f002 fe8b 	bl	c0de6dfa <nbgl_getTextNbLinesInWidth>
c0de40e4:	2801      	cmp	r0, #1
c0de40e6:	d851      	bhi.n	c0de418c <nbgl_layoutAddSwitch+0x104>
c0de40e8:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de40ec:	f002 fe80 	bl	c0de6df0 <nbgl_getFontLineHeight>
c0de40f0:	6861      	ldr	r1, [r4, #4]
c0de40f2:	78a2      	ldrb	r2, [r4, #2]
c0de40f4:	76b7      	strb	r7, [r6, #26]
c0de40f6:	71f7      	strb	r7, [r6, #7]
c0de40f8:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de40fc:	71b0      	strb	r0, [r6, #6]
c0de40fe:	2002      	movs	r0, #2
c0de4100:	f886 8019 	strb.w	r8, [r6, #25]
c0de4104:	75b0      	strb	r0, [r6, #22]
c0de4106:	1c50      	adds	r0, r2, #1
c0de4108:	70a0      	strb	r0, [r4, #2]
c0de410a:	6868      	ldr	r0, [r5, #4]
c0de410c:	2800      	cmp	r0, #0
c0de410e:	d04c      	beq.n	c0de41aa <nbgl_layoutAddSwitch+0x122>
c0de4110:	7861      	ldrb	r1, [r4, #1]
c0de4112:	f000 f8df 	bl	c0de42d4 <OUTLINED_FUNCTION_4>
c0de4116:	4606      	mov	r6, r0
c0de4118:	2003      	movs	r0, #3
c0de411a:	77f0      	strb	r0, [r6, #31]
c0de411c:	6868      	ldr	r0, [r5, #4]
c0de411e:	f003 f83b 	bl	c0de7198 <pic>
c0de4122:	2172      	movs	r1, #114	@ 0x72
c0de4124:	4637      	mov	r7, r6
c0de4126:	f04f 0800 	mov.w	r8, #0
c0de412a:	f04f 0a05 	mov.w	sl, #5
c0de412e:	7131      	strb	r1, [r6, #4]
c0de4130:	210a      	movs	r1, #10
c0de4132:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de4136:	f886 8005 	strb.w	r8, [r6, #5]
c0de413a:	f886 a020 	strb.w	sl, [r6, #32]
c0de413e:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4142:	0e01      	lsrs	r1, r0, #24
c0de4144:	70f9      	strb	r1, [r7, #3]
c0de4146:	0c01      	lsrs	r1, r0, #16
c0de4148:	0a00      	lsrs	r0, r0, #8
c0de414a:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de414e:	200a      	movs	r0, #10
c0de4150:	70b9      	strb	r1, [r7, #2]
c0de4152:	f002 fe4d 	bl	c0de6df0 <nbgl_getFontLineHeight>
c0de4156:	09c1      	lsrs	r1, r0, #7
c0de4158:	783a      	ldrb	r2, [r7, #0]
c0de415a:	78bb      	ldrb	r3, [r7, #2]
c0de415c:	78ff      	ldrb	r7, [r7, #3]
c0de415e:	0040      	lsls	r0, r0, #1
c0de4160:	f04f 0b01 	mov.w	fp, #1
c0de4164:	71f1      	strb	r1, [r6, #7]
c0de4166:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de416a:	71b0      	strb	r0, [r6, #6]
c0de416c:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4170:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de4174:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4178:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de417c:	2301      	movs	r3, #1
c0de417e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4182:	2272      	movs	r2, #114	@ 0x72
c0de4184:	f002 fe39 	bl	c0de6dfa <nbgl_getTextNbLinesInWidth>
c0de4188:	2802      	cmp	r0, #2
c0de418a:	d902      	bls.n	c0de4192 <nbgl_layoutAddSwitch+0x10a>
c0de418c:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de4190:	e05d      	b.n	c0de424e <nbgl_layoutAddSwitch+0x1c6>
c0de4192:	6860      	ldr	r0, [r4, #4]
c0de4194:	78a1      	ldrb	r1, [r4, #2]
c0de4196:	f886 801a 	strb.w	r8, [r6, #26]
c0de419a:	f886 a016 	strb.w	sl, [r6, #22]
c0de419e:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de41a2:	1c48      	adds	r0, r1, #1
c0de41a4:	f886 b019 	strb.w	fp, [r6, #25]
c0de41a8:	70a0      	strb	r0, [r4, #2]
c0de41aa:	7861      	ldrb	r1, [r4, #1]
c0de41ac:	2005      	movs	r0, #5
c0de41ae:	f002 fe10 	bl	c0de6dd2 <nbgl_objPoolGet>
c0de41b2:	2600      	movs	r6, #0
c0de41b4:	4607      	mov	r7, r0
c0de41b6:	f04f 0a03 	mov.w	sl, #3
c0de41ba:	f04f 0808 	mov.w	r8, #8
c0de41be:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de41c2:	2001      	movs	r0, #1
c0de41c4:	f887 a020 	strb.w	sl, [r7, #32]
c0de41c8:	f887 a01f 	strb.w	sl, [r7, #31]
c0de41cc:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de41d0:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de41d4:	7a28      	ldrb	r0, [r5, #8]
c0de41d6:	4a1f      	ldr	r2, [pc, #124]	@ (c0de4254 <nbgl_layoutAddSwitch+0x1cc>)
c0de41d8:	491f      	ldr	r1, [pc, #124]	@ (c0de4258 <nbgl_layoutAddSwitch+0x1d0>)
c0de41da:	2801      	cmp	r0, #1
c0de41dc:	447a      	add	r2, pc
c0de41de:	4479      	add	r1, pc
c0de41e0:	bf08      	it	eq
c0de41e2:	4611      	moveq	r1, r2
c0de41e4:	463a      	mov	r2, r7
c0de41e6:	0e0b      	lsrs	r3, r1, #24
c0de41e8:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de41ec:	70d3      	strb	r3, [r2, #3]
c0de41ee:	0c0b      	lsrs	r3, r1, #16
c0de41f0:	7093      	strb	r3, [r2, #2]
c0de41f2:	0a0a      	lsrs	r2, r1, #8
c0de41f4:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de41f8:	2801      	cmp	r0, #1
c0de41fa:	4638      	mov	r0, r7
c0de41fc:	4a17      	ldr	r2, [pc, #92]	@ (c0de425c <nbgl_layoutAddSwitch+0x1d4>)
c0de41fe:	4d18      	ldr	r5, [pc, #96]	@ (c0de4260 <nbgl_layoutAddSwitch+0x1d8>)
c0de4200:	447a      	add	r2, pc
c0de4202:	447d      	add	r5, pc
c0de4204:	bf18      	it	ne
c0de4206:	462a      	movne	r2, r5
c0de4208:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de420c:	0e13      	lsrs	r3, r2, #24
c0de420e:	70c3      	strb	r3, [r0, #3]
c0de4210:	0c13      	lsrs	r3, r2, #16
c0de4212:	7083      	strb	r3, [r0, #2]
c0de4214:	0a10      	lsrs	r0, r2, #8
c0de4216:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de421a:	2008      	movs	r0, #8
c0de421c:	f002 fdf7 	bl	c0de6e0e <nbgl_getTextWidth>
c0de4220:	6861      	ldr	r1, [r4, #4]
c0de4222:	78a2      	ldrb	r2, [r4, #2]
c0de4224:	786b      	ldrb	r3, [r5, #1]
c0de4226:	76be      	strb	r6, [r7, #26]
c0de4228:	71fe      	strb	r6, [r7, #7]
c0de422a:	f887 8016 	strb.w	r8, [r7, #22]
c0de422e:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de4232:	210c      	movs	r1, #12
c0de4234:	f887 a019 	strb.w	sl, [r7, #25]
c0de4238:	71b9      	strb	r1, [r7, #6]
c0de423a:	7829      	ldrb	r1, [r5, #0]
c0de423c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4240:	4408      	add	r0, r1
c0de4242:	1c51      	adds	r1, r2, #1
c0de4244:	300a      	adds	r0, #10
c0de4246:	7138      	strb	r0, [r7, #4]
c0de4248:	0a00      	lsrs	r0, r0, #8
c0de424a:	70a1      	strb	r1, [r4, #2]
c0de424c:	7178      	strb	r0, [r7, #5]
c0de424e:	4630      	mov	r0, r6
c0de4250:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4254:	000039d7 	.word	0x000039d7
c0de4258:	00003aa4 	.word	0x00003aa4
c0de425c:	00003749 	.word	0x00003749
c0de4260:	00003731 	.word	0x00003731

c0de4264 <nbgl_layoutDraw>:
c0de4264:	b120      	cbz	r0, c0de4270 <nbgl_layoutDraw+0xc>
c0de4266:	b580      	push	{r7, lr}
c0de4268:	f002 fda4 	bl	c0de6db4 <nbgl_screenRedraw>
c0de426c:	2000      	movs	r0, #0
c0de426e:	bd80      	pop	{r7, pc}
c0de4270:	f000 b844 	b.w	c0de42fc <OUTLINED_FUNCTION_8>

c0de4274 <nbgl_layoutRelease>:
c0de4274:	b148      	cbz	r0, c0de428a <nbgl_layoutRelease+0x16>
c0de4276:	b510      	push	{r4, lr}
c0de4278:	4604      	mov	r4, r0
c0de427a:	7800      	ldrb	r0, [r0, #0]
c0de427c:	b110      	cbz	r0, c0de4284 <nbgl_layoutRelease+0x10>
c0de427e:	7860      	ldrb	r0, [r4, #1]
c0de4280:	f002 fd9d 	bl	c0de6dbe <nbgl_screenPop>
c0de4284:	2000      	movs	r0, #0
c0de4286:	70a0      	strb	r0, [r4, #2]
c0de4288:	bd10      	pop	{r4, pc}
c0de428a:	f000 b837 	b.w	c0de42fc <OUTLINED_FUNCTION_8>

c0de428e <OUTLINED_FUNCTION_1>:
c0de428e:	4638      	mov	r0, r7
c0de4290:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4294:	70c2      	strb	r2, [r0, #3]
c0de4296:	0c0a      	lsrs	r2, r1, #16
c0de4298:	7082      	strb	r2, [r0, #2]
c0de429a:	0a08      	lsrs	r0, r1, #8
c0de429c:	2272      	movs	r2, #114	@ 0x72
c0de429e:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de42a2:	200a      	movs	r0, #10
c0de42a4:	f002 bda9 	b.w	c0de6dfa <nbgl_getTextNbLinesInWidth>

c0de42a8 <OUTLINED_FUNCTION_2>:
c0de42a8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de42ac:	784b      	ldrb	r3, [r1, #1]
c0de42ae:	788d      	ldrb	r5, [r1, #2]
c0de42b0:	78c9      	ldrb	r1, [r1, #3]
c0de42b2:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de42b6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de42ba:	9d05      	ldr	r5, [sp, #20]
c0de42bc:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de42c0:	4770      	bx	lr

c0de42c2 <OUTLINED_FUNCTION_3>:
c0de42c2:	70c2      	strb	r2, [r0, #3]
c0de42c4:	0c0a      	lsrs	r2, r1, #16
c0de42c6:	7082      	strb	r2, [r0, #2]
c0de42c8:	0a08      	lsrs	r0, r1, #8
c0de42ca:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de42ce:	2008      	movs	r0, #8
c0de42d0:	f002 bd9d 	b.w	c0de6e0e <nbgl_getTextWidth>

c0de42d4 <OUTLINED_FUNCTION_4>:
c0de42d4:	2004      	movs	r0, #4
c0de42d6:	f002 bd7c 	b.w	c0de6dd2 <nbgl_objPoolGet>

c0de42da <OUTLINED_FUNCTION_5>:
c0de42da:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de42de:	2272      	movs	r2, #114	@ 0x72
c0de42e0:	f002 bd9a 	b.w	c0de6e18 <nbgl_getTextMaxLenInNbLines>

c0de42e4 <OUTLINED_FUNCTION_6>:
c0de42e4:	2100      	movs	r1, #0
c0de42e6:	463a      	mov	r2, r7
c0de42e8:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de42ec:	70d1      	strb	r1, [r2, #3]
c0de42ee:	7091      	strb	r1, [r2, #2]
c0de42f0:	7051      	strb	r1, [r2, #1]
c0de42f2:	4770      	bx	lr

c0de42f4 <OUTLINED_FUNCTION_7>:
c0de42f4:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de42f8:	f002 bd75 	b.w	c0de6de6 <nbgl_getFont>

c0de42fc <OUTLINED_FUNCTION_8>:
c0de42fc:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4300:	4770      	bx	lr

c0de4302 <OUTLINED_FUNCTION_9>:
c0de4302:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4306:	2003      	movs	r0, #3
c0de4308:	f887 0020 	strb.w	r0, [r7, #32]
c0de430c:	77f8      	strb	r0, [r7, #31]
c0de430e:	4770      	bx	lr

c0de4310 <nbgl_stepDrawText>:
c0de4310:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4314:	460e      	mov	r6, r1
c0de4316:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4318:	4605      	mov	r5, r0
c0de431a:	2000      	movs	r0, #0
c0de431c:	469a      	mov	sl, r3
c0de431e:	4617      	mov	r7, r2
c0de4320:	f000 f830 	bl	c0de4384 <getFreeContext>
c0de4324:	b348      	cbz	r0, c0de437a <nbgl_stepDrawText+0x6a>
c0de4326:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de432a:	4604      	mov	r4, r0
c0de432c:	6146      	str	r6, [r0, #20]
c0de432e:	b10f      	cbz	r7, c0de4334 <nbgl_stepDrawText+0x24>
c0de4330:	f000 fae1 	bl	c0de48f6 <OUTLINED_FUNCTION_1>
c0de4334:	200a      	movs	r0, #10
c0de4336:	f1b8 0f00 	cmp.w	r8, #0
c0de433a:	bf19      	ittee	ne
c0de433c:	4641      	movne	r1, r8
c0de433e:	2203      	movne	r2, #3
c0de4340:	4651      	moveq	r1, sl
c0de4342:	2204      	moveq	r2, #4
c0de4344:	2372      	movs	r3, #114	@ 0x72
c0de4346:	f002 fd5d 	bl	c0de6e04 <nbgl_getTextNbPagesInWidth>
c0de434a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de434c:	7020      	strb	r0, [r4, #0]
c0de434e:	072a      	lsls	r2, r5, #28
c0de4350:	bf46      	itte	mi
c0de4352:	3801      	submi	r0, #1
c0de4354:	7060      	strbmi	r0, [r4, #1]
c0de4356:	7860      	ldrbpl	r0, [r4, #1]
c0de4358:	f8c4 800c 	str.w	r8, [r4, #12]
c0de435c:	f8c4 a004 	str.w	sl, [r4, #4]
c0de4360:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4364:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4368:	7461      	strb	r1, [r4, #17]
c0de436a:	f005 0103 	and.w	r1, r5, #3
c0de436e:	7421      	strb	r1, [r4, #16]
c0de4370:	b2c1      	uxtb	r1, r0
c0de4372:	4620      	mov	r0, r4
c0de4374:	f000 f82c 	bl	c0de43d0 <displayTextPage>
c0de4378:	e000      	b.n	c0de437c <nbgl_stepDrawText+0x6c>
c0de437a:	2400      	movs	r4, #0
c0de437c:	4620      	mov	r0, r4
c0de437e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4384 <getFreeContext>:
c0de4384:	b570      	push	{r4, r5, r6, lr}
c0de4386:	4604      	mov	r4, r0
c0de4388:	4810      	ldr	r0, [pc, #64]	@ (c0de43cc <getFreeContext+0x48>)
c0de438a:	460d      	mov	r5, r1
c0de438c:	b151      	cbz	r1, c0de43a4 <getFreeContext+0x20>
c0de438e:	2100      	movs	r1, #0
c0de4390:	2990      	cmp	r1, #144	@ 0x90
c0de4392:	d00a      	beq.n	c0de43aa <getFreeContext+0x26>
c0de4394:	eb09 0200 	add.w	r2, r9, r0
c0de4398:	440a      	add	r2, r1
c0de439a:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de439e:	b132      	cbz	r2, c0de43ae <getFreeContext+0x2a>
c0de43a0:	3148      	adds	r1, #72	@ 0x48
c0de43a2:	e7f5      	b.n	c0de4390 <getFreeContext+0xc>
c0de43a4:	eb09 0600 	add.w	r6, r9, r0
c0de43a8:	e005      	b.n	c0de43b6 <getFreeContext+0x32>
c0de43aa:	2600      	movs	r6, #0
c0de43ac:	e00b      	b.n	c0de43c6 <getFreeContext+0x42>
c0de43ae:	4448      	add	r0, r9
c0de43b0:	4408      	add	r0, r1
c0de43b2:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de43b6:	4630      	mov	r0, r6
c0de43b8:	2148      	movs	r1, #72	@ 0x48
c0de43ba:	f003 f9f9 	bl	c0de77b0 <__aeabi_memclr>
c0de43be:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de43c2:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de43c6:	4630      	mov	r0, r6
c0de43c8:	bd70      	pop	{r4, r5, r6, pc}
c0de43ca:	bf00      	nop
c0de43cc:	0000066c 	.word	0x0000066c

c0de43d0 <displayTextPage>:
c0de43d0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de43d4:	b091      	sub	sp, #68	@ 0x44
c0de43d6:	4604      	mov	r4, r0
c0de43d8:	7840      	ldrb	r0, [r0, #1]
c0de43da:	460e      	mov	r6, r1
c0de43dc:	4288      	cmp	r0, r1
c0de43de:	d21c      	bcs.n	c0de441a <displayTextPage+0x4a>
c0de43e0:	68a5      	ldr	r5, [r4, #8]
c0de43e2:	7820      	ldrb	r0, [r4, #0]
c0de43e4:	7066      	strb	r6, [r4, #1]
c0de43e6:	3801      	subs	r0, #1
c0de43e8:	42b0      	cmp	r0, r6
c0de43ea:	dd31      	ble.n	c0de4450 <displayTextPage+0x80>
c0de43ec:	68e0      	ldr	r0, [r4, #12]
c0de43ee:	2101      	movs	r1, #1
c0de43f0:	2303      	movs	r3, #3
c0de43f2:	aa08      	add	r2, sp, #32
c0de43f4:	e9cd 2100 	strd	r2, r1, [sp]
c0de43f8:	4629      	mov	r1, r5
c0de43fa:	2800      	cmp	r0, #0
c0de43fc:	bf08      	it	eq
c0de43fe:	2304      	moveq	r3, #4
c0de4400:	200a      	movs	r0, #10
c0de4402:	2272      	movs	r2, #114	@ 0x72
c0de4404:	f002 fd08 	bl	c0de6e18 <nbgl_getTextMaxLenInNbLines>
c0de4408:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de440c:	1868      	adds	r0, r5, r1
c0de440e:	60a0      	str	r0, [r4, #8]
c0de4410:	5c69      	ldrb	r1, [r5, r1]
c0de4412:	290a      	cmp	r1, #10
c0de4414:	d11e      	bne.n	c0de4454 <displayTextPage+0x84>
c0de4416:	3001      	adds	r0, #1
c0de4418:	e01b      	b.n	c0de4452 <displayTextPage+0x82>
c0de441a:	68e5      	ldr	r5, [r4, #12]
c0de441c:	2d00      	cmp	r5, #0
c0de441e:	d074      	beq.n	c0de450a <displayTextPage+0x13a>
c0de4420:	2700      	movs	r7, #0
c0de4422:	f04f 0801 	mov.w	r8, #1
c0de4426:	f10d 0a20 	add.w	sl, sp, #32
c0de442a:	42be      	cmp	r6, r7
c0de442c:	d0d9      	beq.n	c0de43e2 <displayTextPage+0x12>
c0de442e:	7820      	ldrb	r0, [r4, #0]
c0de4430:	3801      	subs	r0, #1
c0de4432:	42b8      	cmp	r0, r7
c0de4434:	dd0a      	ble.n	c0de444c <displayTextPage+0x7c>
c0de4436:	200a      	movs	r0, #10
c0de4438:	4629      	mov	r1, r5
c0de443a:	2272      	movs	r2, #114	@ 0x72
c0de443c:	2303      	movs	r3, #3
c0de443e:	e9cd a800 	strd	sl, r8, [sp]
c0de4442:	f002 fce9 	bl	c0de6e18 <nbgl_getTextMaxLenInNbLines>
c0de4446:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de444a:	4405      	add	r5, r0
c0de444c:	3701      	adds	r7, #1
c0de444e:	e7ec      	b.n	c0de442a <displayTextPage+0x5a>
c0de4450:	2000      	movs	r0, #0
c0de4452:	60a0      	str	r0, [r4, #8]
c0de4454:	484f      	ldr	r0, [pc, #316]	@ (c0de4594 <displayTextPage+0x1c4>)
c0de4456:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de445a:	4478      	add	r0, pc
c0de445c:	9004      	str	r0, [sp, #16]
c0de445e:	2000      	movs	r0, #0
c0de4460:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4464:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4468:	f88d 000c 	strb.w	r0, [sp, #12]
c0de446c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de446e:	ab05      	add	r3, sp, #20
c0de4470:	c307      	stmia	r3!, {r0, r1, r2}
c0de4472:	a803      	add	r0, sp, #12
c0de4474:	f7ff f992 	bl	c0de379c <nbgl_layoutGet>
c0de4478:	7827      	ldrb	r7, [r4, #0]
c0de447a:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de447e:	4606      	mov	r6, r0
c0de4480:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4482:	7c20      	ldrb	r0, [r4, #16]
c0de4484:	4639      	mov	r1, r7
c0de4486:	4652      	mov	r2, sl
c0de4488:	f000 f8fc 	bl	c0de4684 <getNavigationInfo>
c0de448c:	4680      	mov	r8, r0
c0de448e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4492:	68e0      	ldr	r0, [r4, #12]
c0de4494:	b188      	cbz	r0, c0de44ba <displayTextPage+0xea>
c0de4496:	2f01      	cmp	r7, #1
c0de4498:	d115      	bne.n	c0de44c6 <displayTextPage+0xf6>
c0de449a:	6861      	ldr	r1, [r4, #4]
c0de449c:	2008      	movs	r0, #8
c0de449e:	2272      	movs	r2, #114	@ 0x72
c0de44a0:	2300      	movs	r3, #0
c0de44a2:	2600      	movs	r6, #0
c0de44a4:	f002 fca9 	bl	c0de6dfa <nbgl_getTextNbLinesInWidth>
c0de44a8:	2802      	cmp	r0, #2
c0de44aa:	d348      	bcc.n	c0de453e <displayTextPage+0x16e>
c0de44ac:	6861      	ldr	r1, [r4, #4]
c0de44ae:	2018      	movs	r0, #24
c0de44b0:	f104 0218 	add.w	r2, r4, #24
c0de44b4:	e9cd 2000 	strd	r2, r0, [sp]
c0de44b8:	e021      	b.n	c0de44fe <displayTextPage+0x12e>
c0de44ba:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de44be:	4630      	mov	r0, r6
c0de44c0:	4629      	mov	r1, r5
c0de44c2:	2200      	movs	r2, #0
c0de44c4:	e055      	b.n	c0de4572 <displayTextPage+0x1a2>
c0de44c6:	f10a 0001 	add.w	r0, sl, #1
c0de44ca:	6863      	ldr	r3, [r4, #4]
c0de44cc:	2124      	movs	r1, #36	@ 0x24
c0de44ce:	e9cd 0700 	strd	r0, r7, [sp]
c0de44d2:	af08      	add	r7, sp, #32
c0de44d4:	4a30      	ldr	r2, [pc, #192]	@ (c0de4598 <displayTextPage+0x1c8>)
c0de44d6:	4638      	mov	r0, r7
c0de44d8:	447a      	add	r2, pc
c0de44da:	f002 fccb 	bl	c0de6e74 <snprintf>
c0de44de:	2008      	movs	r0, #8
c0de44e0:	4639      	mov	r1, r7
c0de44e2:	2272      	movs	r2, #114	@ 0x72
c0de44e4:	2300      	movs	r3, #0
c0de44e6:	f04f 0a00 	mov.w	sl, #0
c0de44ea:	f002 fc86 	bl	c0de6dfa <nbgl_getTextNbLinesInWidth>
c0de44ee:	f104 0c18 	add.w	ip, r4, #24
c0de44f2:	2802      	cmp	r0, #2
c0de44f4:	d32c      	bcc.n	c0de4550 <displayTextPage+0x180>
c0de44f6:	2018      	movs	r0, #24
c0de44f8:	e9cd c000 	strd	ip, r0, [sp]
c0de44fc:	a908      	add	r1, sp, #32
c0de44fe:	2008      	movs	r0, #8
c0de4500:	2272      	movs	r2, #114	@ 0x72
c0de4502:	2301      	movs	r3, #1
c0de4504:	f002 fc8d 	bl	c0de6e22 <nbgl_textReduceOnNbLines>
c0de4508:	e02d      	b.n	c0de4566 <displayTextPage+0x196>
c0de450a:	6865      	ldr	r5, [r4, #4]
c0de450c:	2700      	movs	r7, #0
c0de450e:	f04f 0801 	mov.w	r8, #1
c0de4512:	f10d 0a20 	add.w	sl, sp, #32
c0de4516:	42be      	cmp	r6, r7
c0de4518:	f43f af63 	beq.w	c0de43e2 <displayTextPage+0x12>
c0de451c:	7820      	ldrb	r0, [r4, #0]
c0de451e:	3801      	subs	r0, #1
c0de4520:	42b8      	cmp	r0, r7
c0de4522:	dd0a      	ble.n	c0de453a <displayTextPage+0x16a>
c0de4524:	200a      	movs	r0, #10
c0de4526:	4629      	mov	r1, r5
c0de4528:	2272      	movs	r2, #114	@ 0x72
c0de452a:	2304      	movs	r3, #4
c0de452c:	e9cd a800 	strd	sl, r8, [sp]
c0de4530:	f002 fc72 	bl	c0de6e18 <nbgl_getTextMaxLenInNbLines>
c0de4534:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4538:	4405      	add	r5, r0
c0de453a:	3701      	adds	r7, #1
c0de453c:	e7eb      	b.n	c0de4516 <displayTextPage+0x146>
c0de453e:	6861      	ldr	r1, [r4, #4]
c0de4540:	f104 0018 	add.w	r0, r4, #24
c0de4544:	2217      	movs	r2, #23
c0de4546:	f003 f929 	bl	c0de779c <__aeabi_memcpy>
c0de454a:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de454e:	e00a      	b.n	c0de4566 <displayTextPage+0x196>
c0de4550:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de4552:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4556:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de455a:	8838      	ldrh	r0, [r7, #0]
c0de455c:	f8ac 0000 	strh.w	r0, [ip]
c0de4560:	78b8      	ldrb	r0, [r7, #2]
c0de4562:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4566:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de456a:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de456c:	f104 0118 	add.w	r1, r4, #24
c0de4570:	462a      	mov	r2, r5
c0de4572:	f7ff f9d5 	bl	c0de3920 <nbgl_layoutAddText>
c0de4576:	f1b8 0f00 	cmp.w	r8, #0
c0de457a:	d004      	beq.n	c0de4586 <displayTextPage+0x1b6>
c0de457c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de457e:	f10d 010a 	add.w	r1, sp, #10
c0de4582:	f7ff f96f 	bl	c0de3864 <nbgl_layoutAddNavigation>
c0de4586:	f000 f9e9 	bl	c0de495c <OUTLINED_FUNCTION_4>
c0de458a:	f002 fbfa 	bl	c0de6d82 <nbgl_refresh>
c0de458e:	b011      	add	sp, #68	@ 0x44
c0de4590:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4594:	000001bb 	.word	0x000001bb
c0de4598:	000035cd 	.word	0x000035cd

c0de459c <nbgl_stepDrawCenteredInfo>:
c0de459c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de45a0:	b087      	sub	sp, #28
c0de45a2:	460d      	mov	r5, r1
c0de45a4:	4682      	mov	sl, r0
c0de45a6:	a802      	add	r0, sp, #8
c0de45a8:	f000 f9d3 	bl	c0de4952 <OUTLINED_FUNCTION_3>
c0de45ac:	4819      	ldr	r0, [pc, #100]	@ (c0de4614 <nbgl_stepDrawCenteredInfo+0x78>)
c0de45ae:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de45b0:	4478      	add	r0, pc
c0de45b2:	f000 f9c5 	bl	c0de4940 <OUTLINED_FUNCTION_2>
c0de45b6:	b168      	cbz	r0, c0de45d4 <nbgl_stepDrawCenteredInfo+0x38>
c0de45b8:	4604      	mov	r4, r0
c0de45ba:	6145      	str	r5, [r0, #20]
c0de45bc:	b10f      	cbz	r7, c0de45c2 <nbgl_stepDrawCenteredInfo+0x26>
c0de45be:	f000 f953 	bl	c0de4868 <OUTLINED_FUNCTION_0>
c0de45c2:	f000 f9ce 	bl	c0de4962 <OUTLINED_FUNCTION_5>
c0de45c6:	d007      	beq.n	c0de45d8 <nbgl_stepDrawCenteredInfo+0x3c>
c0de45c8:	2802      	cmp	r0, #2
c0de45ca:	d007      	beq.n	c0de45dc <nbgl_stepDrawCenteredInfo+0x40>
c0de45cc:	2801      	cmp	r0, #1
c0de45ce:	d108      	bne.n	c0de45e2 <nbgl_stepDrawCenteredInfo+0x46>
c0de45d0:	2002      	movs	r0, #2
c0de45d2:	e004      	b.n	c0de45de <nbgl_stepDrawCenteredInfo+0x42>
c0de45d4:	2400      	movs	r4, #0
c0de45d6:	e018      	b.n	c0de460a <nbgl_stepDrawCenteredInfo+0x6e>
c0de45d8:	2003      	movs	r0, #3
c0de45da:	e000      	b.n	c0de45de <nbgl_stepDrawCenteredInfo+0x42>
c0de45dc:	2001      	movs	r0, #1
c0de45de:	2500      	movs	r5, #0
c0de45e0:	e000      	b.n	c0de45e4 <nbgl_stepDrawCenteredInfo+0x48>
c0de45e2:	2000      	movs	r0, #0
c0de45e4:	f88d 0007 	strb.w	r0, [sp, #7]
c0de45e8:	a802      	add	r0, sp, #8
c0de45ea:	f7ff f8d7 	bl	c0de379c <nbgl_layoutGet>
c0de45ee:	4641      	mov	r1, r8
c0de45f0:	6420      	str	r0, [r4, #64]	@ 0x40
c0de45f2:	f7ff fba9 	bl	c0de3d48 <nbgl_layoutAddCenteredInfo>
c0de45f6:	b925      	cbnz	r5, c0de4602 <nbgl_stepDrawCenteredInfo+0x66>
c0de45f8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de45fa:	f10d 0106 	add.w	r1, sp, #6
c0de45fe:	f7ff f931 	bl	c0de3864 <nbgl_layoutAddNavigation>
c0de4602:	f000 f9ab 	bl	c0de495c <OUTLINED_FUNCTION_4>
c0de4606:	f002 fbbc 	bl	c0de6d82 <nbgl_refresh>
c0de460a:	4620      	mov	r0, r4
c0de460c:	b007      	add	sp, #28
c0de460e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4612:	bf00      	nop
c0de4614:	00000065 	.word	0x00000065

c0de4618 <actionCallback>:
c0de4618:	b510      	push	{r4, lr}
c0de461a:	460c      	mov	r4, r1
c0de461c:	f000 f8f0 	bl	c0de4800 <getContextFromLayout>
c0de4620:	b378      	cbz	r0, c0de4682 <actionCallback+0x6a>
c0de4622:	2c04      	cmp	r4, #4
c0de4624:	d006      	beq.n	c0de4634 <actionCallback+0x1c>
c0de4626:	2c01      	cmp	r4, #1
c0de4628:	d008      	beq.n	c0de463c <actionCallback+0x24>
c0de462a:	bb54      	cbnz	r4, c0de4682 <actionCallback+0x6a>
c0de462c:	7841      	ldrb	r1, [r0, #1]
c0de462e:	b1d9      	cbz	r1, c0de4668 <actionCallback+0x50>
c0de4630:	3901      	subs	r1, #1
c0de4632:	e009      	b.n	c0de4648 <actionCallback+0x30>
c0de4634:	6942      	ldr	r2, [r0, #20]
c0de4636:	b322      	cbz	r2, c0de4682 <actionCallback+0x6a>
c0de4638:	2104      	movs	r1, #4
c0de463a:	e01f      	b.n	c0de467c <actionCallback+0x64>
c0de463c:	7802      	ldrb	r2, [r0, #0]
c0de463e:	7841      	ldrb	r1, [r0, #1]
c0de4640:	3a01      	subs	r2, #1
c0de4642:	428a      	cmp	r2, r1
c0de4644:	dd05      	ble.n	c0de4652 <actionCallback+0x3a>
c0de4646:	3101      	adds	r1, #1
c0de4648:	b2c9      	uxtb	r1, r1
c0de464a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de464e:	f7ff bebf 	b.w	c0de43d0 <displayTextPage>
c0de4652:	7c01      	ldrb	r1, [r0, #16]
c0de4654:	f041 0102 	orr.w	r1, r1, #2
c0de4658:	2903      	cmp	r1, #3
c0de465a:	d001      	beq.n	c0de4660 <actionCallback+0x48>
c0de465c:	7c41      	ldrb	r1, [r0, #17]
c0de465e:	b181      	cbz	r1, c0de4682 <actionCallback+0x6a>
c0de4660:	6942      	ldr	r2, [r0, #20]
c0de4662:	b172      	cbz	r2, c0de4682 <actionCallback+0x6a>
c0de4664:	2101      	movs	r1, #1
c0de4666:	e009      	b.n	c0de467c <actionCallback+0x64>
c0de4668:	7c01      	ldrb	r1, [r0, #16]
c0de466a:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de466e:	2902      	cmp	r1, #2
c0de4670:	d001      	beq.n	c0de4676 <actionCallback+0x5e>
c0de4672:	7c41      	ldrb	r1, [r0, #17]
c0de4674:	b129      	cbz	r1, c0de4682 <actionCallback+0x6a>
c0de4676:	6942      	ldr	r2, [r0, #20]
c0de4678:	b11a      	cbz	r2, c0de4682 <actionCallback+0x6a>
c0de467a:	2100      	movs	r1, #0
c0de467c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4680:	4710      	bx	r2
c0de4682:	bd10      	pop	{r4, pc}

c0de4684 <getNavigationInfo>:
c0de4684:	4603      	mov	r3, r0
c0de4686:	2902      	cmp	r1, #2
c0de4688:	d308      	bcc.n	c0de469c <getNavigationInfo+0x18>
c0de468a:	3901      	subs	r1, #1
c0de468c:	4610      	mov	r0, r2
c0de468e:	2a00      	cmp	r2, #0
c0de4690:	bf18      	it	ne
c0de4692:	2001      	movne	r0, #1
c0de4694:	4291      	cmp	r1, r2
c0de4696:	bf88      	it	hi
c0de4698:	3002      	addhi	r0, #2
c0de469a:	e000      	b.n	c0de469e <getNavigationInfo+0x1a>
c0de469c:	2000      	movs	r0, #0
c0de469e:	2b03      	cmp	r3, #3
c0de46a0:	d00a      	beq.n	c0de46b8 <getNavigationInfo+0x34>
c0de46a2:	2b02      	cmp	r3, #2
c0de46a4:	bf04      	itt	eq
c0de46a6:	f040 0001 	orreq.w	r0, r0, #1
c0de46aa:	4770      	bxeq	lr
c0de46ac:	2b01      	cmp	r3, #1
c0de46ae:	bf04      	itt	eq
c0de46b0:	f040 0002 	orreq.w	r0, r0, #2
c0de46b4:	4770      	bxeq	lr
c0de46b6:	4770      	bx	lr
c0de46b8:	2003      	movs	r0, #3
c0de46ba:	4770      	bx	lr

c0de46bc <nbgl_stepDrawMenuList>:
c0de46bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de46be:	460f      	mov	r7, r1
c0de46c0:	4606      	mov	r6, r0
c0de46c2:	2002      	movs	r0, #2
c0de46c4:	4619      	mov	r1, r3
c0de46c6:	4615      	mov	r5, r2
c0de46c8:	f7ff fe5c 	bl	c0de4384 <getFreeContext>
c0de46cc:	b170      	cbz	r0, c0de46ec <nbgl_stepDrawMenuList+0x30>
c0de46ce:	4604      	mov	r4, r0
c0de46d0:	b10f      	cbz	r7, c0de46d6 <nbgl_stepDrawMenuList+0x1a>
c0de46d2:	f000 f910 	bl	c0de48f6 <OUTLINED_FUNCTION_1>
c0de46d6:	7928      	ldrb	r0, [r5, #4]
c0de46d8:	7220      	strb	r0, [r4, #8]
c0de46da:	7968      	ldrb	r0, [r5, #5]
c0de46dc:	7260      	strb	r0, [r4, #9]
c0de46de:	6828      	ldr	r0, [r5, #0]
c0de46e0:	e9c4 6000 	strd	r6, r0, [r4]
c0de46e4:	4620      	mov	r0, r4
c0de46e6:	f000 f805 	bl	c0de46f4 <displayMenuList>
c0de46ea:	e000      	b.n	c0de46ee <nbgl_stepDrawMenuList+0x32>
c0de46ec:	2400      	movs	r4, #0
c0de46ee:	4620      	mov	r0, r4
c0de46f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de46f4 <displayMenuList>:
c0de46f4:	b5b0      	push	{r4, r5, r7, lr}
c0de46f6:	b086      	sub	sp, #24
c0de46f8:	4604      	mov	r4, r0
c0de46fa:	2000      	movs	r0, #0
c0de46fc:	9001      	str	r0, [sp, #4]
c0de46fe:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4702:	4819      	ldr	r0, [pc, #100]	@ (c0de4768 <displayMenuList+0x74>)
c0de4704:	4478      	add	r0, pc
c0de4706:	9002      	str	r0, [sp, #8]
c0de4708:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de470c:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4710:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4712:	ab03      	add	r3, sp, #12
c0de4714:	c307      	stmia	r3!, {r0, r1, r2}
c0de4716:	a801      	add	r0, sp, #4
c0de4718:	f7ff f840 	bl	c0de379c <nbgl_layoutGet>
c0de471c:	1d25      	adds	r5, r4, #4
c0de471e:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4720:	4629      	mov	r1, r5
c0de4722:	f7ff fabd 	bl	c0de3ca0 <nbgl_layoutAddMenuList>
c0de4726:	7a20      	ldrb	r0, [r4, #8]
c0de4728:	2802      	cmp	r0, #2
c0de472a:	d316      	bcc.n	c0de475a <displayMenuList+0x66>
c0de472c:	2101      	movs	r1, #1
c0de472e:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de4732:	7969      	ldrb	r1, [r5, #5]
c0de4734:	2900      	cmp	r1, #0
c0de4736:	460a      	mov	r2, r1
c0de4738:	bf18      	it	ne
c0de473a:	2201      	movne	r2, #1
c0de473c:	3801      	subs	r0, #1
c0de473e:	f88d 2003 	strb.w	r2, [sp, #3]
c0de4742:	4288      	cmp	r0, r1
c0de4744:	d903      	bls.n	c0de474e <displayMenuList+0x5a>
c0de4746:	1c90      	adds	r0, r2, #2
c0de4748:	f88d 0003 	strb.w	r0, [sp, #3]
c0de474c:	e000      	b.n	c0de4750 <displayMenuList+0x5c>
c0de474e:	b121      	cbz	r1, c0de475a <displayMenuList+0x66>
c0de4750:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4752:	f10d 0102 	add.w	r1, sp, #2
c0de4756:	f7ff f885 	bl	c0de3864 <nbgl_layoutAddNavigation>
c0de475a:	f000 f8ff 	bl	c0de495c <OUTLINED_FUNCTION_4>
c0de475e:	f002 fb10 	bl	c0de6d82 <nbgl_refresh>
c0de4762:	b006      	add	sp, #24
c0de4764:	bdb0      	pop	{r4, r5, r7, pc}
c0de4766:	bf00      	nop
c0de4768:	00000121 	.word	0x00000121

c0de476c <nbgl_stepDrawSwitch>:
c0de476c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4770:	b087      	sub	sp, #28
c0de4772:	460d      	mov	r5, r1
c0de4774:	4682      	mov	sl, r0
c0de4776:	a802      	add	r0, sp, #8
c0de4778:	f000 f8eb 	bl	c0de4952 <OUTLINED_FUNCTION_3>
c0de477c:	4819      	ldr	r0, [pc, #100]	@ (c0de47e4 <nbgl_stepDrawSwitch+0x78>)
c0de477e:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4780:	4478      	add	r0, pc
c0de4782:	f000 f8dd 	bl	c0de4940 <OUTLINED_FUNCTION_2>
c0de4786:	b168      	cbz	r0, c0de47a4 <nbgl_stepDrawSwitch+0x38>
c0de4788:	4604      	mov	r4, r0
c0de478a:	6145      	str	r5, [r0, #20]
c0de478c:	b10f      	cbz	r7, c0de4792 <nbgl_stepDrawSwitch+0x26>
c0de478e:	f000 f86b 	bl	c0de4868 <OUTLINED_FUNCTION_0>
c0de4792:	f000 f8e6 	bl	c0de4962 <OUTLINED_FUNCTION_5>
c0de4796:	d007      	beq.n	c0de47a8 <nbgl_stepDrawSwitch+0x3c>
c0de4798:	2802      	cmp	r0, #2
c0de479a:	d007      	beq.n	c0de47ac <nbgl_stepDrawSwitch+0x40>
c0de479c:	2801      	cmp	r0, #1
c0de479e:	d108      	bne.n	c0de47b2 <nbgl_stepDrawSwitch+0x46>
c0de47a0:	2002      	movs	r0, #2
c0de47a2:	e004      	b.n	c0de47ae <nbgl_stepDrawSwitch+0x42>
c0de47a4:	2400      	movs	r4, #0
c0de47a6:	e018      	b.n	c0de47da <nbgl_stepDrawSwitch+0x6e>
c0de47a8:	2003      	movs	r0, #3
c0de47aa:	e000      	b.n	c0de47ae <nbgl_stepDrawSwitch+0x42>
c0de47ac:	2001      	movs	r0, #1
c0de47ae:	2500      	movs	r5, #0
c0de47b0:	e000      	b.n	c0de47b4 <nbgl_stepDrawSwitch+0x48>
c0de47b2:	2000      	movs	r0, #0
c0de47b4:	f88d 0007 	strb.w	r0, [sp, #7]
c0de47b8:	a802      	add	r0, sp, #8
c0de47ba:	f7fe ffef 	bl	c0de379c <nbgl_layoutGet>
c0de47be:	4641      	mov	r1, r8
c0de47c0:	6420      	str	r0, [r4, #64]	@ 0x40
c0de47c2:	f7ff fc61 	bl	c0de4088 <nbgl_layoutAddSwitch>
c0de47c6:	b925      	cbnz	r5, c0de47d2 <nbgl_stepDrawSwitch+0x66>
c0de47c8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de47ca:	f10d 0106 	add.w	r1, sp, #6
c0de47ce:	f7ff f849 	bl	c0de3864 <nbgl_layoutAddNavigation>
c0de47d2:	f000 f8c3 	bl	c0de495c <OUTLINED_FUNCTION_4>
c0de47d6:	f002 fad4 	bl	c0de6d82 <nbgl_refresh>
c0de47da:	4620      	mov	r0, r4
c0de47dc:	b007      	add	sp, #28
c0de47de:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de47e2:	bf00      	nop
c0de47e4:	fffffe95 	.word	0xfffffe95

c0de47e8 <nbgl_stepRelease>:
c0de47e8:	b138      	cbz	r0, c0de47fa <nbgl_stepRelease+0x12>
c0de47ea:	b510      	push	{r4, lr}
c0de47ec:	4604      	mov	r4, r0
c0de47ee:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de47f0:	f7ff fd40 	bl	c0de4274 <nbgl_layoutRelease>
c0de47f4:	2100      	movs	r1, #0
c0de47f6:	6421      	str	r1, [r4, #64]	@ 0x40
c0de47f8:	bd10      	pop	{r4, pc}
c0de47fa:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de47fe:	4770      	bx	lr

c0de4800 <getContextFromLayout>:
c0de4800:	4a08      	ldr	r2, [pc, #32]	@ (c0de4824 <getContextFromLayout+0x24>)
c0de4802:	2100      	movs	r1, #0
c0de4804:	29d8      	cmp	r1, #216	@ 0xd8
c0de4806:	bf04      	itt	eq
c0de4808:	2000      	moveq	r0, #0
c0de480a:	4770      	bxeq	lr
c0de480c:	eb09 0302 	add.w	r3, r9, r2
c0de4810:	440b      	add	r3, r1
c0de4812:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4814:	4283      	cmp	r3, r0
c0de4816:	d001      	beq.n	c0de481c <getContextFromLayout+0x1c>
c0de4818:	3148      	adds	r1, #72	@ 0x48
c0de481a:	e7f3      	b.n	c0de4804 <getContextFromLayout+0x4>
c0de481c:	eb09 0002 	add.w	r0, r9, r2
c0de4820:	4408      	add	r0, r1
c0de4822:	4770      	bx	lr
c0de4824:	0000066c 	.word	0x0000066c

c0de4828 <menuListActionCallback>:
c0de4828:	b510      	push	{r4, lr}
c0de482a:	460c      	mov	r4, r1
c0de482c:	f7ff ffe8 	bl	c0de4800 <getContextFromLayout>
c0de4830:	b1c8      	cbz	r0, c0de4866 <menuListActionCallback+0x3e>
c0de4832:	2c04      	cmp	r4, #4
c0de4834:	d006      	beq.n	c0de4844 <menuListActionCallback+0x1c>
c0de4836:	2c01      	cmp	r4, #1
c0de4838:	d00a      	beq.n	c0de4850 <menuListActionCallback+0x28>
c0de483a:	b9a4      	cbnz	r4, c0de4866 <menuListActionCallback+0x3e>
c0de483c:	7a41      	ldrb	r1, [r0, #9]
c0de483e:	b191      	cbz	r1, c0de4866 <menuListActionCallback+0x3e>
c0de4840:	3901      	subs	r1, #1
c0de4842:	e00b      	b.n	c0de485c <menuListActionCallback+0x34>
c0de4844:	7a41      	ldrb	r1, [r0, #9]
c0de4846:	6802      	ldr	r2, [r0, #0]
c0de4848:	4608      	mov	r0, r1
c0de484a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de484e:	4710      	bx	r2
c0de4850:	7a02      	ldrb	r2, [r0, #8]
c0de4852:	7a41      	ldrb	r1, [r0, #9]
c0de4854:	3a01      	subs	r2, #1
c0de4856:	428a      	cmp	r2, r1
c0de4858:	dd05      	ble.n	c0de4866 <menuListActionCallback+0x3e>
c0de485a:	3101      	adds	r1, #1
c0de485c:	7241      	strb	r1, [r0, #9]
c0de485e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4862:	f7ff bf47 	b.w	c0de46f4 <displayMenuList>
c0de4866:	bd10      	pop	{r4, pc}

c0de4868 <OUTLINED_FUNCTION_0>:
c0de4868:	7838      	ldrb	r0, [r7, #0]
c0de486a:	7879      	ldrb	r1, [r7, #1]
c0de486c:	78ba      	ldrb	r2, [r7, #2]
c0de486e:	78fb      	ldrb	r3, [r7, #3]
c0de4870:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4874:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4878:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de487c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de487e:	4638      	mov	r0, r7
c0de4880:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4884:	7a79      	ldrb	r1, [r7, #9]
c0de4886:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de488a:	7882      	ldrb	r2, [r0, #2]
c0de488c:	78c3      	ldrb	r3, [r0, #3]
c0de488e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4892:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4896:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4898:	4639      	mov	r1, r7
c0de489a:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de489e:	797a      	ldrb	r2, [r7, #5]
c0de48a0:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de48a4:	788b      	ldrb	r3, [r1, #2]
c0de48a6:	78cd      	ldrb	r5, [r1, #3]
c0de48a8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de48ac:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de48b0:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de48b2:	783a      	ldrb	r2, [r7, #0]
c0de48b4:	787b      	ldrb	r3, [r7, #1]
c0de48b6:	78bd      	ldrb	r5, [r7, #2]
c0de48b8:	78fe      	ldrb	r6, [r7, #3]
c0de48ba:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48be:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de48c2:	7803      	ldrb	r3, [r0, #0]
c0de48c4:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de48c8:	7885      	ldrb	r5, [r0, #2]
c0de48ca:	78c0      	ldrb	r0, [r0, #3]
c0de48cc:	9204      	str	r2, [sp, #16]
c0de48ce:	7a7a      	ldrb	r2, [r7, #9]
c0de48d0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de48d4:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de48d8:	788b      	ldrb	r3, [r1, #2]
c0de48da:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de48de:	780a      	ldrb	r2, [r1, #0]
c0de48e0:	78c9      	ldrb	r1, [r1, #3]
c0de48e2:	9006      	str	r0, [sp, #24]
c0de48e4:	7978      	ldrb	r0, [r7, #5]
c0de48e6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de48ea:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de48ee:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de48f2:	9005      	str	r0, [sp, #20]
c0de48f4:	4770      	bx	lr

c0de48f6 <OUTLINED_FUNCTION_1>:
c0de48f6:	7838      	ldrb	r0, [r7, #0]
c0de48f8:	7879      	ldrb	r1, [r7, #1]
c0de48fa:	78ba      	ldrb	r2, [r7, #2]
c0de48fc:	78fb      	ldrb	r3, [r7, #3]
c0de48fe:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4902:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4906:	4639      	mov	r1, r7
c0de4908:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de490c:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4910:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4912:	7a78      	ldrb	r0, [r7, #9]
c0de4914:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4918:	788a      	ldrb	r2, [r1, #2]
c0de491a:	78c9      	ldrb	r1, [r1, #3]
c0de491c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4920:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4924:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4926:	7978      	ldrb	r0, [r7, #5]
c0de4928:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de492c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4930:	78b9      	ldrb	r1, [r7, #2]
c0de4932:	78fa      	ldrb	r2, [r7, #3]
c0de4934:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4938:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de493c:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de493e:	4770      	bx	lr

c0de4940 <OUTLINED_FUNCTION_2>:
c0de4940:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4944:	9003      	str	r0, [sp, #12]
c0de4946:	2000      	movs	r0, #0
c0de4948:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de494c:	2001      	movs	r0, #1
c0de494e:	f7ff bd19 	b.w	c0de4384 <getFreeContext>

c0de4952 <OUTLINED_FUNCTION_3>:
c0de4952:	2114      	movs	r1, #20
c0de4954:	4698      	mov	r8, r3
c0de4956:	4617      	mov	r7, r2
c0de4958:	f002 bf2a 	b.w	c0de77b0 <__aeabi_memclr>

c0de495c <OUTLINED_FUNCTION_4>:
c0de495c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de495e:	f7ff bc81 	b.w	c0de4264 <nbgl_layoutDraw>

c0de4962 <OUTLINED_FUNCTION_5>:
c0de4962:	2501      	movs	r5, #1
c0de4964:	f00a 0003 	and.w	r0, sl, #3
c0de4968:	2803      	cmp	r0, #3
c0de496a:	7025      	strb	r5, [r4, #0]
c0de496c:	7420      	strb	r0, [r4, #16]
c0de496e:	4770      	bx	lr

c0de4970 <nbgl_useCaseHomeAndSettings>:
c0de4970:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4974:	4607      	mov	r7, r0
c0de4976:	4810      	ldr	r0, [pc, #64]	@ (c0de49b8 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4978:	f001 fc98 	bl	c0de62ac <OUTLINED_FUNCTION_0>
c0de497c:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de4980:	6425      	str	r5, [r4, #64]	@ 0x40
c0de4982:	9d06      	ldr	r5, [sp, #24]
c0de4984:	4628      	mov	r0, r5
c0de4986:	f002 fc07 	bl	c0de7198 <pic>
c0de498a:	6460      	str	r0, [r4, #68]	@ 0x44
c0de498c:	9807      	ldr	r0, [sp, #28]
c0de498e:	f002 fc03 	bl	c0de7198 <pic>
c0de4992:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4994:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4998:	6521      	str	r1, [r4, #80]	@ 0x50
c0de499a:	9908      	ldr	r1, [sp, #32]
c0de499c:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de49a0:	bf18      	it	ne
c0de49a2:	2d00      	cmpne	r5, #0
c0de49a4:	d103      	bne.n	c0de49ae <nbgl_useCaseHomeAndSettings+0x3e>
c0de49a6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de49aa:	f000 b843 	b.w	c0de4a34 <startUseCaseHome>
c0de49ae:	4640      	mov	r0, r8
c0de49b0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de49b4:	f000 b802 	b.w	c0de49bc <startUseCaseSettingsAtPage>
c0de49b8:	00000744 	.word	0x00000744

c0de49bc <startUseCaseSettingsAtPage>:
c0de49bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de49be:	b08f      	sub	sp, #60	@ 0x3c
c0de49c0:	4604      	mov	r4, r0
c0de49c2:	a801      	add	r0, sp, #4
c0de49c4:	2138      	movs	r1, #56	@ 0x38
c0de49c6:	f002 fef3 	bl	c0de77b0 <__aeabi_memclr>
c0de49ca:	4e19      	ldr	r6, [pc, #100]	@ (c0de4a30 <startUseCaseSettingsAtPage+0x74>)
c0de49cc:	eb09 0006 	add.w	r0, r9, r6
c0de49d0:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de49d4:	280f      	cmp	r0, #15
c0de49d6:	bf1e      	ittt	ne
c0de49d8:	eb09 0006 	addne.w	r0, r9, r6
c0de49dc:	210e      	movne	r1, #14
c0de49de:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de49e2:	eb09 0006 	add.w	r0, r9, r6
c0de49e6:	2101      	movs	r1, #1
c0de49e8:	2700      	movs	r7, #0
c0de49ea:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de49ee:	ad01      	add	r5, sp, #4
c0de49f0:	eb09 0006 	add.w	r0, r9, r6
c0de49f4:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de49f6:	7a01      	ldrb	r1, [r0, #8]
c0de49f8:	428f      	cmp	r7, r1
c0de49fa:	d20e      	bcs.n	c0de4a1a <startUseCaseSettingsAtPage+0x5e>
c0de49fc:	b279      	sxtb	r1, r7
c0de49fe:	462a      	mov	r2, r5
c0de4a00:	f000 fca6 	bl	c0de5350 <getContentAtIdx>
c0de4a04:	f000 fcfe 	bl	c0de5404 <getContentNbElement>
c0de4a08:	eb09 0106 	add.w	r1, r9, r6
c0de4a0c:	3701      	adds	r7, #1
c0de4a0e:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de4a12:	4410      	add	r0, r2
c0de4a14:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de4a18:	e7ea      	b.n	c0de49f0 <startUseCaseSettingsAtPage+0x34>
c0de4a1a:	eb09 0006 	add.w	r0, r9, r6
c0de4a1e:	2100      	movs	r1, #0
c0de4a20:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de4a24:	2000      	movs	r0, #0
c0de4a26:	f000 fef7 	bl	c0de5818 <displaySettingsPage>
c0de4a2a:	b00f      	add	sp, #60	@ 0x3c
c0de4a2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4a2e:	bf00      	nop
c0de4a30:	00000744 	.word	0x00000744

c0de4a34 <startUseCaseHome>:
c0de4a34:	b510      	push	{r4, lr}
c0de4a36:	4821      	ldr	r0, [pc, #132]	@ (c0de4abc <startUseCaseHome+0x88>)
c0de4a38:	eb09 0100 	add.w	r1, r9, r0
c0de4a3c:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de4a40:	290d      	cmp	r1, #13
c0de4a42:	d009      	beq.n	c0de4a58 <startUseCaseHome+0x24>
c0de4a44:	290e      	cmp	r1, #14
c0de4a46:	d114      	bne.n	c0de4a72 <startUseCaseHome+0x3e>
c0de4a48:	eb09 0100 	add.w	r1, r9, r0
c0de4a4c:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de4a4e:	2102      	movs	r1, #2
c0de4a50:	2a00      	cmp	r2, #0
c0de4a52:	bf08      	it	eq
c0de4a54:	2101      	moveq	r1, #1
c0de4a56:	e00d      	b.n	c0de4a74 <startUseCaseHome+0x40>
c0de4a58:	eb09 0200 	add.w	r2, r9, r0
c0de4a5c:	2102      	movs	r1, #2
c0de4a5e:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de4a60:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de4a62:	2c00      	cmp	r4, #0
c0de4a64:	bf08      	it	eq
c0de4a66:	2101      	moveq	r1, #1
c0de4a68:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a6c:	b133      	cbz	r3, c0de4a7c <startUseCaseHome+0x48>
c0de4a6e:	3101      	adds	r1, #1
c0de4a70:	e000      	b.n	c0de4a74 <startUseCaseHome+0x40>
c0de4a72:	2100      	movs	r1, #0
c0de4a74:	eb09 0200 	add.w	r2, r9, r0
c0de4a78:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4a7c:	eb09 0200 	add.w	r2, r9, r0
c0de4a80:	210c      	movs	r1, #12
c0de4a82:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de4a86:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de4a8a:	2103      	movs	r1, #3
c0de4a8c:	2b00      	cmp	r3, #0
c0de4a8e:	bf08      	it	eq
c0de4a90:	2102      	moveq	r1, #2
c0de4a92:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4a96:	b124      	cbz	r4, c0de4aa2 <startUseCaseHome+0x6e>
c0de4a98:	3101      	adds	r1, #1
c0de4a9a:	eb09 0200 	add.w	r2, r9, r0
c0de4a9e:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4aa2:	eb09 0200 	add.w	r2, r9, r0
c0de4aa6:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de4aa8:	b11a      	cbz	r2, c0de4ab2 <startUseCaseHome+0x7e>
c0de4aaa:	4448      	add	r0, r9
c0de4aac:	3101      	adds	r1, #1
c0de4aae:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4ab2:	2000      	movs	r0, #0
c0de4ab4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ab8:	f000 bf9e 	b.w	c0de59f8 <displayHomePage>
c0de4abc:	00000744 	.word	0x00000744

c0de4ac0 <nbgl_useCaseReview>:
c0de4ac0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4ac2:	4614      	mov	r4, r2
c0de4ac4:	460a      	mov	r2, r1
c0de4ac6:	4601      	mov	r1, r0
c0de4ac8:	9808      	ldr	r0, [sp, #32]
c0de4aca:	9003      	str	r0, [sp, #12]
c0de4acc:	9807      	ldr	r0, [sp, #28]
c0de4ace:	9002      	str	r0, [sp, #8]
c0de4ad0:	9806      	ldr	r0, [sp, #24]
c0de4ad2:	e9cd 3000 	strd	r3, r0, [sp]
c0de4ad6:	2002      	movs	r0, #2
c0de4ad8:	4623      	mov	r3, r4
c0de4ada:	f000 f801 	bl	c0de4ae0 <useCaseReview>
c0de4ade:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4ae0 <useCaseReview>:
c0de4ae0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4ae4:	4607      	mov	r7, r0
c0de4ae6:	4811      	ldr	r0, [pc, #68]	@ (c0de4b2c <useCaseReview+0x4c>)
c0de4ae8:	4688      	mov	r8, r1
c0de4aea:	2140      	movs	r1, #64	@ 0x40
c0de4aec:	461d      	mov	r5, r3
c0de4aee:	4614      	mov	r4, r2
c0de4af0:	f001 fbf1 	bl	c0de62d6 <OUTLINED_FUNCTION_2>
c0de4af4:	9808      	ldr	r0, [sp, #32]
c0de4af6:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4af8:	9807      	ldr	r0, [sp, #28]
c0de4afa:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de4afc:	9906      	ldr	r1, [sp, #24]
c0de4afe:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de4b02:	6471      	str	r1, [r6, #68]	@ 0x44
c0de4b04:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4b06:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de4b0a:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de4b0e:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de4b10:	2104      	movs	r1, #4
c0de4b12:	2800      	cmp	r0, #0
c0de4b14:	bf08      	it	eq
c0de4b16:	2103      	moveq	r1, #3
c0de4b18:	7a20      	ldrb	r0, [r4, #8]
c0de4b1a:	4408      	add	r0, r1
c0de4b1c:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4b20:	2000      	movs	r0, #0
c0de4b22:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4b26:	f000 b8b1 	b.w	c0de4c8c <displayReviewPage>
c0de4b2a:	bf00      	nop
c0de4b2c:	00000744 	.word	0x00000744

c0de4b30 <nbgl_useCaseAdvancedReview>:
c0de4b30:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4b34:	b088      	sub	sp, #32
c0de4b36:	4688      	mov	r8, r1
c0de4b38:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4b3c:	4615      	mov	r5, r2
c0de4b3e:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de4b42:	4604      	mov	r4, r0
c0de4b44:	f1ba 0f00 	cmp.w	sl, #0
c0de4b48:	d039      	beq.n	c0de4bbe <nbgl_useCaseAdvancedReview+0x8e>
c0de4b4a:	f8da 6000 	ldr.w	r6, [sl]
c0de4b4e:	b92e      	cbnz	r6, c0de4b5c <nbgl_useCaseAdvancedReview+0x2c>
c0de4b50:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4b54:	b910      	cbnz	r0, c0de4b5c <nbgl_useCaseAdvancedReview+0x2c>
c0de4b56:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4b5a:	b380      	cbz	r0, c0de4bbe <nbgl_useCaseAdvancedReview+0x8e>
c0de4b5c:	4822      	ldr	r0, [pc, #136]	@ (c0de4be8 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b5e:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de4b62:	2128      	movs	r1, #40	@ 0x28
c0de4b64:	9605      	str	r6, [sp, #20]
c0de4b66:	461f      	mov	r7, r3
c0de4b68:	4616      	mov	r6, r2
c0de4b6a:	eb09 0400 	add.w	r4, r9, r0
c0de4b6e:	4620      	mov	r0, r4
c0de4b70:	f002 fe1e 	bl	c0de77b0 <__aeabi_memclr>
c0de4b74:	491c      	ldr	r1, [pc, #112]	@ (c0de4be8 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4b76:	2002      	movs	r0, #2
c0de4b78:	46b4      	mov	ip, r6
c0de4b7a:	462b      	mov	r3, r5
c0de4b7c:	f809 0001 	strb.w	r0, [r9, r1]
c0de4b80:	9905      	ldr	r1, [sp, #20]
c0de4b82:	2040      	movs	r0, #64	@ 0x40
c0de4b84:	2908      	cmp	r1, #8
c0de4b86:	bf08      	it	eq
c0de4b88:	2080      	moveq	r0, #128	@ 0x80
c0de4b8a:	9906      	ldr	r1, [sp, #24]
c0de4b8c:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de4b90:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4b94:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4b98:	9e07      	ldr	r6, [sp, #28]
c0de4b9a:	4301      	orrs	r1, r0
c0de4b9c:	9807      	ldr	r0, [sp, #28]
c0de4b9e:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de4ba2:	6220      	str	r0, [r4, #32]
c0de4ba4:	f89a 0000 	ldrb.w	r0, [sl]
c0de4ba8:	f010 0f16 	tst.w	r0, #22
c0de4bac:	d102      	bne.n	c0de4bb4 <nbgl_useCaseAdvancedReview+0x84>
c0de4bae:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4bb2:	b188      	cbz	r0, c0de4bd8 <nbgl_useCaseAdvancedReview+0xa8>
c0de4bb4:	b008      	add	sp, #32
c0de4bb6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4bba:	f000 b817 	b.w	c0de4bec <displayInitialWarning>
c0de4bbe:	e9cd 3200 	strd	r3, r2, [sp]
c0de4bc2:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de4bc6:	2002      	movs	r0, #2
c0de4bc8:	4621      	mov	r1, r4
c0de4bca:	4642      	mov	r2, r8
c0de4bcc:	462b      	mov	r3, r5
c0de4bce:	f7ff ff87 	bl	c0de4ae0 <useCaseReview>
c0de4bd2:	b008      	add	sp, #32
c0de4bd4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4bd8:	2002      	movs	r0, #2
c0de4bda:	4642      	mov	r2, r8
c0de4bdc:	463d      	mov	r5, r7
c0de4bde:	e9cd 7c00 	strd	r7, ip, [sp]
c0de4be2:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de4be6:	e7f2      	b.n	c0de4bce <nbgl_useCaseAdvancedReview+0x9e>
c0de4be8:	00000744 	.word	0x00000744

c0de4bec <displayInitialWarning>:
c0de4bec:	4803      	ldr	r0, [pc, #12]	@ (c0de4bfc <displayInitialWarning+0x10>)
c0de4bee:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4bf2:	4448      	add	r0, r9
c0de4bf4:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4bf6:	f000 bfeb 	b.w	c0de5bd0 <displayWarningStep>
c0de4bfa:	bf00      	nop
c0de4bfc:	00000744 	.word	0x00000744

c0de4c00 <nbgl_useCaseReviewBlindSigning>:
c0de4c00:	b5b0      	push	{r4, r5, r7, lr}
c0de4c02:	b086      	sub	sp, #24
c0de4c04:	4d06      	ldr	r5, [pc, #24]	@ (c0de4c20 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4c06:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4c08:	447d      	add	r5, pc
c0de4c0a:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4c0e:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4c10:	9401      	str	r4, [sp, #4]
c0de4c12:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4c14:	9400      	str	r4, [sp, #0]
c0de4c16:	f7ff ff8b 	bl	c0de4b30 <nbgl_useCaseAdvancedReview>
c0de4c1a:	b006      	add	sp, #24
c0de4c1c:	bdb0      	pop	{r4, r5, r7, pc}
c0de4c1e:	bf00      	nop
c0de4c20:	00004010 	.word	0x00004010

c0de4c24 <nbgl_useCaseAddressReview>:
c0de4c24:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c28:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4c88 <nbgl_useCaseAddressReview+0x64>
c0de4c2c:	460c      	mov	r4, r1
c0de4c2e:	4607      	mov	r7, r0
c0de4c30:	2140      	movs	r1, #64	@ 0x40
c0de4c32:	469a      	mov	sl, r3
c0de4c34:	4616      	mov	r6, r2
c0de4c36:	eb09 0508 	add.w	r5, r9, r8
c0de4c3a:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4c3e:	f002 fdb7 	bl	c0de77b0 <__aeabi_memclr>
c0de4c42:	2004      	movs	r0, #4
c0de4c44:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4c46:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4c4a:	9808      	ldr	r0, [sp, #32]
c0de4c4c:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4c50:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4c52:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4c54:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4c56:	2105      	movs	r1, #5
c0de4c58:	2800      	cmp	r0, #0
c0de4c5a:	bf08      	it	eq
c0de4c5c:	2104      	moveq	r1, #4
c0de4c5e:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4c62:	b15c      	cbz	r4, c0de4c7c <nbgl_useCaseAddressReview+0x58>
c0de4c64:	4620      	mov	r0, r4
c0de4c66:	eb09 0508 	add.w	r5, r9, r8
c0de4c6a:	f002 fa95 	bl	c0de7198 <pic>
c0de4c6e:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4c70:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4c74:	7a21      	ldrb	r1, [r4, #8]
c0de4c76:	4408      	add	r0, r1
c0de4c78:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4c7c:	2000      	movs	r0, #0
c0de4c7e:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4c82:	f000 b803 	b.w	c0de4c8c <displayReviewPage>
c0de4c86:	bf00      	nop
c0de4c88:	00000744 	.word	0x00000744

c0de4c8c <displayReviewPage>:
c0de4c8c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4c8e:	b08b      	sub	sp, #44	@ 0x2c
c0de4c90:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4e08 <displayReviewPage+0x17c>)
c0de4c92:	4604      	mov	r4, r0
c0de4c94:	2000      	movs	r0, #0
c0de4c96:	2201      	movs	r2, #1
c0de4c98:	2702      	movs	r7, #2
c0de4c9a:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4c9e:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4ca2:	eb09 0306 	add.w	r3, r9, r6
c0de4ca6:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4ca8:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4caa:	2800      	cmp	r0, #0
c0de4cac:	bf08      	it	eq
c0de4cae:	22ff      	moveq	r2, #255	@ 0xff
c0de4cb0:	bf08      	it	eq
c0de4cb2:	2701      	moveq	r7, #1
c0de4cb4:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4cb8:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4cbc:	1e9d      	subs	r5, r3, #2
c0de4cbe:	b2ed      	uxtb	r5, r5
c0de4cc0:	42a9      	cmp	r1, r5
c0de4cc2:	da06      	bge.n	c0de4cd2 <displayReviewPage+0x46>
c0de4cc4:	42b9      	cmp	r1, r7
c0de4cc6:	da0b      	bge.n	c0de4ce0 <displayReviewPage+0x54>
c0de4cc8:	2900      	cmp	r1, #0
c0de4cca:	d041      	beq.n	c0de4d50 <displayReviewPage+0xc4>
c0de4ccc:	428a      	cmp	r2, r1
c0de4cce:	d044      	beq.n	c0de4d5a <displayReviewPage+0xce>
c0de4cd0:	e044      	b.n	c0de4d5c <displayReviewPage+0xd0>
c0de4cd2:	d110      	bne.n	c0de4cf6 <displayReviewPage+0x6a>
c0de4cd4:	a908      	add	r1, sp, #32
c0de4cd6:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4cd8:	2001      	movs	r0, #1
c0de4cda:	f000 ffe1 	bl	c0de5ca0 <getLastPageInfo>
c0de4cde:	e03d      	b.n	c0de4d5c <displayReviewPage+0xd0>
c0de4ce0:	eb09 0006 	add.w	r0, r9, r6
c0de4ce4:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4ce6:	b18d      	cbz	r5, c0de4d0c <displayReviewPage+0x80>
c0de4ce8:	42b9      	cmp	r1, r7
c0de4cea:	d10f      	bne.n	c0de4d0c <displayReviewPage+0x80>
c0de4cec:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4cee:	4847      	ldr	r0, [pc, #284]	@ (c0de4e0c <displayReviewPage+0x180>)
c0de4cf0:	4478      	add	r0, pc
c0de4cf2:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4cf4:	e033      	b.n	c0de4d5e <displayReviewPage+0xd2>
c0de4cf6:	1e58      	subs	r0, r3, #1
c0de4cf8:	b2c0      	uxtb	r0, r0
c0de4cfa:	4281      	cmp	r1, r0
c0de4cfc:	d12e      	bne.n	c0de4d5c <displayReviewPage+0xd0>
c0de4cfe:	a908      	add	r1, sp, #32
c0de4d00:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d02:	2000      	movs	r0, #0
c0de4d04:	2500      	movs	r5, #0
c0de4d06:	f000 ffcb 	bl	c0de5ca0 <getLastPageInfo>
c0de4d0a:	e028      	b.n	c0de4d5e <displayReviewPage+0xd2>
c0de4d0c:	eb09 0006 	add.w	r0, r9, r6
c0de4d10:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4d14:	06d2      	lsls	r2, r2, #27
c0de4d16:	d535      	bpl.n	c0de4d84 <displayReviewPage+0xf8>
c0de4d18:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4d1c:	bb90      	cbnz	r0, c0de4d84 <displayReviewPage+0xf8>
c0de4d1e:	42b9      	cmp	r1, r7
c0de4d20:	dc05      	bgt.n	c0de4d2e <displayReviewPage+0xa2>
c0de4d22:	eb09 0006 	add.w	r0, r9, r6
c0de4d26:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4d2a:	2808      	cmp	r0, #8
c0de4d2c:	d12a      	bne.n	c0de4d84 <displayReviewPage+0xf8>
c0de4d2e:	2000      	movs	r0, #0
c0de4d30:	9006      	str	r0, [sp, #24]
c0de4d32:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4d36:	eb09 0006 	add.w	r0, r9, r6
c0de4d3a:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4d3e:	f004 0008 	and.w	r0, r4, #8
c0de4d42:	2a01      	cmp	r2, #1
c0de4d44:	d001      	beq.n	c0de4d4a <displayReviewPage+0xbe>
c0de4d46:	2901      	cmp	r1, #1
c0de4d48:	db43      	blt.n	c0de4dd2 <displayReviewPage+0x146>
c0de4d4a:	f040 0003 	orr.w	r0, r0, #3
c0de4d4e:	e042      	b.n	c0de4dd6 <displayReviewPage+0x14a>
c0de4d50:	eb09 0006 	add.w	r0, r9, r6
c0de4d54:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4d58:	9108      	str	r1, [sp, #32]
c0de4d5a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4d5c:	2500      	movs	r5, #0
c0de4d5e:	2000      	movs	r0, #0
c0de4d60:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4d62:	9908      	ldr	r1, [sp, #32]
c0de4d64:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4e20 <displayReviewPage+0x194>)
c0de4d66:	b2c0      	uxtb	r0, r0
c0de4d68:	2300      	movs	r3, #0
c0de4d6a:	9002      	str	r0, [sp, #8]
c0de4d6c:	4620      	mov	r0, r4
c0de4d6e:	447e      	add	r6, pc
c0de4d70:	e9cd 6300 	strd	r6, r3, [sp]
c0de4d74:	462b      	mov	r3, r5
c0de4d76:	f000 f875 	bl	c0de4e64 <drawStep>
c0de4d7a:	b00b      	add	sp, #44	@ 0x2c
c0de4d7c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4d80:	f001 bfff 	b.w	c0de6d82 <nbgl_refresh>
c0de4d84:	2200      	movs	r2, #0
c0de4d86:	eb09 0006 	add.w	r0, r9, r6
c0de4d8a:	1bcf      	subs	r7, r1, r7
c0de4d8c:	f10d 0c0c 	add.w	ip, sp, #12
c0de4d90:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4d94:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4d98:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4d9a:	ab08      	add	r3, sp, #32
c0de4d9c:	aa07      	add	r2, sp, #28
c0de4d9e:	2d00      	cmp	r5, #0
c0de4da0:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4da4:	bf18      	it	ne
c0de4da6:	3f01      	subne	r7, #1
c0de4da8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4daa:	b2f9      	uxtb	r1, r7
c0de4dac:	ab09      	add	r3, sp, #36	@ 0x24
c0de4dae:	f000 fcb7 	bl	c0de5720 <getPairData>
c0de4db2:	9807      	ldr	r0, [sp, #28]
c0de4db4:	b140      	cbz	r0, c0de4dc8 <displayReviewPage+0x13c>
c0de4db6:	eb09 0006 	add.w	r0, r9, r6
c0de4dba:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4dbe:	4917      	ldr	r1, [pc, #92]	@ (c0de4e1c <displayReviewPage+0x190>)
c0de4dc0:	4479      	add	r1, pc
c0de4dc2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4dc4:	2001      	movs	r0, #1
c0de4dc6:	e002      	b.n	c0de4dce <displayReviewPage+0x142>
c0de4dc8:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4dcc:	0040      	lsls	r0, r0, #1
c0de4dce:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4dd0:	e7c6      	b.n	c0de4d60 <displayReviewPage+0xd4>
c0de4dd2:	f040 0001 	orr.w	r0, r0, #1
c0de4dd6:	490e      	ldr	r1, [pc, #56]	@ (c0de4e10 <displayReviewPage+0x184>)
c0de4dd8:	2200      	movs	r2, #0
c0de4dda:	4479      	add	r1, pc
c0de4ddc:	9103      	str	r1, [sp, #12]
c0de4dde:	490d      	ldr	r1, [pc, #52]	@ (c0de4e14 <displayReviewPage+0x188>)
c0de4de0:	4479      	add	r1, pc
c0de4de2:	9105      	str	r1, [sp, #20]
c0de4de4:	2100      	movs	r1, #0
c0de4de6:	9100      	str	r1, [sp, #0]
c0de4de8:	490b      	ldr	r1, [pc, #44]	@ (c0de4e18 <displayReviewPage+0x18c>)
c0de4dea:	ab03      	add	r3, sp, #12
c0de4dec:	4479      	add	r1, pc
c0de4dee:	f7ff fbd5 	bl	c0de459c <nbgl_stepDrawCenteredInfo>
c0de4df2:	eb09 0406 	add.w	r4, r9, r6
c0de4df6:	f001 ffc4 	bl	c0de6d82 <nbgl_refresh>
c0de4dfa:	2001      	movs	r0, #1
c0de4dfc:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4e00:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4e04:	b00b      	add	sp, #44	@ 0x2c
c0de4e06:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4e08:	00000744 	.word	0x00000744
c0de4e0c:	00003027 	.word	0x00003027
c0de4e10:	00002d0b 	.word	0x00002d0b
c0de4e14:	00002b1a 	.word	0x00002b1a
c0de4e18:	000010bd 	.word	0x000010bd
c0de4e1c:	000011a1 	.word	0x000011a1
c0de4e20:	00001267 	.word	0x00001267

c0de4e24 <nbgl_useCaseStatus>:
c0de4e24:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4e26:	4605      	mov	r5, r0
c0de4e28:	480c      	ldr	r0, [pc, #48]	@ (c0de4e5c <nbgl_useCaseStatus+0x38>)
c0de4e2a:	2140      	movs	r1, #64	@ 0x40
c0de4e2c:	4614      	mov	r4, r2
c0de4e2e:	f001 fa52 	bl	c0de62d6 <OUTLINED_FUNCTION_2>
c0de4e32:	2009      	movs	r0, #9
c0de4e34:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4e36:	462a      	mov	r2, r5
c0de4e38:	2300      	movs	r3, #0
c0de4e3a:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4e3e:	2001      	movs	r0, #1
c0de4e40:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4e44:	2000      	movs	r0, #0
c0de4e46:	4906      	ldr	r1, [pc, #24]	@ (c0de4e60 <nbgl_useCaseStatus+0x3c>)
c0de4e48:	9002      	str	r0, [sp, #8]
c0de4e4a:	4479      	add	r1, pc
c0de4e4c:	e9cd 1000 	strd	r1, r0, [sp]
c0de4e50:	2040      	movs	r0, #64	@ 0x40
c0de4e52:	2100      	movs	r1, #0
c0de4e54:	f000 f806 	bl	c0de4e64 <drawStep>
c0de4e58:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4e5a:	bf00      	nop
c0de4e5c:	00000744 	.word	0x00000744
c0de4e60:	0000019f 	.word	0x0000019f

c0de4e64 <drawStep>:
c0de4e64:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e68:	b09a      	sub	sp, #104	@ 0x68
c0de4e6a:	4688      	mov	r8, r1
c0de4e6c:	4604      	mov	r4, r0
c0de4e6e:	a80c      	add	r0, sp, #48	@ 0x30
c0de4e70:	2138      	movs	r1, #56	@ 0x38
c0de4e72:	461d      	mov	r5, r3
c0de4e74:	4616      	mov	r6, r2
c0de4e76:	f002 fc9b 	bl	c0de77b0 <__aeabi_memclr>
c0de4e7a:	2700      	movs	r7, #0
c0de4e7c:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4e80:	4856      	ldr	r0, [pc, #344]	@ (c0de4fdc <drawStep+0x178>)
c0de4e82:	4478      	add	r0, pc
c0de4e84:	f002 f988 	bl	c0de7198 <pic>
c0de4e88:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de4fd8 <drawStep+0x174>
c0de4e8c:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4e90:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4e92:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4e96:	eb09 000b 	add.w	r0, r9, fp
c0de4e9a:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4e9e:	2802      	cmp	r0, #2
c0de4ea0:	d30b      	bcc.n	c0de4eba <drawStep+0x56>
c0de4ea2:	eb09 010b 	add.w	r1, r9, fp
c0de4ea6:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4eaa:	b129      	cbz	r1, c0de4eb8 <drawStep+0x54>
c0de4eac:	3801      	subs	r0, #1
c0de4eae:	2703      	movs	r7, #3
c0de4eb0:	4288      	cmp	r0, r1
c0de4eb2:	bf08      	it	eq
c0de4eb4:	2702      	moveq	r7, #2
c0de4eb6:	e000      	b.n	c0de4eba <drawStep+0x56>
c0de4eb8:	2701      	movs	r7, #1
c0de4eba:	eb09 000b 	add.w	r0, r9, fp
c0de4ebe:	ea47 0204 	orr.w	r2, r7, r4
c0de4ec2:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4ec6:	4614      	mov	r4, r2
c0de4ec8:	2901      	cmp	r1, #1
c0de4eca:	bf88      	it	hi
c0de4ecc:	f044 0402 	orrhi.w	r4, r4, #2
c0de4ed0:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4ed2:	2900      	cmp	r1, #0
c0de4ed4:	bf08      	it	eq
c0de4ed6:	4614      	moveq	r4, r2
c0de4ed8:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4edc:	2806      	cmp	r0, #6
c0de4ede:	f040 0108 	orr.w	r1, r0, #8
c0de4ee2:	bf18      	it	ne
c0de4ee4:	4614      	movne	r4, r2
c0de4ee6:	2909      	cmp	r1, #9
c0de4ee8:	bf0c      	ite	eq
c0de4eea:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4eee:	f04f 0a00 	movne.w	sl, #0
c0de4ef2:	280a      	cmp	r0, #10
c0de4ef4:	d105      	bne.n	c0de4f02 <drawStep+0x9e>
c0de4ef6:	eb09 000b 	add.w	r0, r9, fp
c0de4efa:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4efc:	b108      	cbz	r0, c0de4f02 <drawStep+0x9e>
c0de4efe:	f7ff fc73 	bl	c0de47e8 <nbgl_stepRelease>
c0de4f02:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4f04:	b1b6      	cbz	r6, c0de4f34 <drawStep+0xd0>
c0de4f06:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4f08:	f1b8 0f00 	cmp.w	r8, #0
c0de4f0c:	d12c      	bne.n	c0de4f68 <drawStep+0x104>
c0de4f0e:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4f10:	2802      	cmp	r0, #2
c0de4f12:	d029      	beq.n	c0de4f68 <drawStep+0x104>
c0de4f14:	2201      	movs	r2, #1
c0de4f16:	4633      	mov	r3, r6
c0de4f18:	2801      	cmp	r0, #1
c0de4f1a:	bf08      	it	eq
c0de4f1c:	2202      	moveq	r2, #2
c0de4f1e:	4620      	mov	r0, r4
c0de4f20:	2d00      	cmp	r5, #0
c0de4f22:	bf08      	it	eq
c0de4f24:	462a      	moveq	r2, r5
c0de4f26:	e9cd 5200 	strd	r5, r2, [sp]
c0de4f2a:	9702      	str	r7, [sp, #8]
c0de4f2c:	4652      	mov	r2, sl
c0de4f2e:	f7ff f9ef 	bl	c0de4310 <nbgl_stepDrawText>
c0de4f32:	e043      	b.n	c0de4fbc <drawStep+0x158>
c0de4f34:	eb09 000b 	add.w	r0, r9, fp
c0de4f38:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4f3c:	a903      	add	r1, sp, #12
c0de4f3e:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4f40:	f000 fbaa 	bl	c0de5698 <getContentElemAtIdx>
c0de4f44:	b330      	cbz	r0, c0de4f94 <drawStep+0x130>
c0de4f46:	7801      	ldrb	r1, [r0, #0]
c0de4f48:	2400      	movs	r4, #0
c0de4f4a:	290a      	cmp	r1, #10
c0de4f4c:	d024      	beq.n	c0de4f98 <drawStep+0x134>
c0de4f4e:	2909      	cmp	r1, #9
c0de4f50:	d135      	bne.n	c0de4fbe <drawStep+0x15a>
c0de4f52:	f001 f9d0 	bl	c0de62f6 <OUTLINED_FUNCTION_5>
c0de4f56:	4922      	ldr	r1, [pc, #136]	@ (c0de4fe0 <drawStep+0x17c>)
c0de4f58:	4479      	add	r1, pc
c0de4f5a:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4f5c:	7941      	ldrb	r1, [r0, #5]
c0de4f5e:	7980      	ldrb	r0, [r0, #6]
c0de4f60:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4f64:	1c48      	adds	r0, r1, #1
c0de4f66:	e020      	b.n	c0de4faa <drawStep+0x146>
c0de4f68:	2000      	movs	r0, #0
c0de4f6a:	9603      	str	r6, [sp, #12]
c0de4f6c:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4f70:	9504      	str	r5, [sp, #16]
c0de4f72:	4652      	mov	r2, sl
c0de4f74:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4f78:	eb09 000b 	add.w	r0, r9, fp
c0de4f7c:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4f7e:	4328      	orrs	r0, r5
c0de4f80:	bf18      	it	ne
c0de4f82:	2001      	movne	r0, #1
c0de4f84:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4f88:	9700      	str	r7, [sp, #0]
c0de4f8a:	ab03      	add	r3, sp, #12
c0de4f8c:	4620      	mov	r0, r4
c0de4f8e:	f7ff fb05 	bl	c0de459c <nbgl_stepDrawCenteredInfo>
c0de4f92:	e013      	b.n	c0de4fbc <drawStep+0x158>
c0de4f94:	2400      	movs	r4, #0
c0de4f96:	e012      	b.n	c0de4fbe <drawStep+0x15a>
c0de4f98:	f001 f9ad 	bl	c0de62f6 <OUTLINED_FUNCTION_5>
c0de4f9c:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de4fa0:	4910      	ldr	r1, [pc, #64]	@ (c0de4fe4 <drawStep+0x180>)
c0de4fa2:	7a00      	ldrb	r0, [r0, #8]
c0de4fa4:	4479      	add	r1, pc
c0de4fa6:	3001      	adds	r0, #1
c0de4fa8:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4faa:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de4fae:	4651      	mov	r1, sl
c0de4fb0:	463b      	mov	r3, r7
c0de4fb2:	480d      	ldr	r0, [pc, #52]	@ (c0de4fe8 <drawStep+0x184>)
c0de4fb4:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4fb6:	4478      	add	r0, pc
c0de4fb8:	f7ff fb80 	bl	c0de46bc <nbgl_stepDrawMenuList>
c0de4fbc:	4604      	mov	r4, r0
c0de4fbe:	eb09 000b 	add.w	r0, r9, fp
c0de4fc2:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4fc6:	280a      	cmp	r0, #10
c0de4fc8:	bf04      	itt	eq
c0de4fca:	eb09 000b 	addeq.w	r0, r9, fp
c0de4fce:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de4fd0:	b01a      	add	sp, #104	@ 0x68
c0de4fd2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4fd6:	bf00      	nop
c0de4fd8:	00000744 	.word	0x00000744
c0de4fdc:	000012df 	.word	0x000012df
c0de4fe0:	00001219 	.word	0x00001219
c0de4fe4:	000011cd 	.word	0x000011cd
c0de4fe8:	0000121f 	.word	0x0000121f

c0de4fec <statusButtonCallback>:
c0de4fec:	f041 0004 	orr.w	r0, r1, #4
c0de4ff0:	2804      	cmp	r0, #4
c0de4ff2:	d001      	beq.n	c0de4ff8 <statusButtonCallback+0xc>
c0de4ff4:	2901      	cmp	r1, #1
c0de4ff6:	d104      	bne.n	c0de5002 <statusButtonCallback+0x16>
c0de4ff8:	4802      	ldr	r0, [pc, #8]	@ (c0de5004 <statusButtonCallback+0x18>)
c0de4ffa:	4448      	add	r0, r9
c0de4ffc:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4ffe:	b100      	cbz	r0, c0de5002 <statusButtonCallback+0x16>
c0de5000:	4700      	bx	r0
c0de5002:	4770      	bx	lr
c0de5004:	00000744 	.word	0x00000744

c0de5008 <nbgl_useCaseReviewStatus>:
c0de5008:	460a      	mov	r2, r1
c0de500a:	b198      	cbz	r0, c0de5034 <nbgl_useCaseReviewStatus+0x2c>
c0de500c:	2801      	cmp	r0, #1
c0de500e:	d016      	beq.n	c0de503e <nbgl_useCaseReviewStatus+0x36>
c0de5010:	2802      	cmp	r0, #2
c0de5012:	d019      	beq.n	c0de5048 <nbgl_useCaseReviewStatus+0x40>
c0de5014:	2803      	cmp	r0, #3
c0de5016:	d01c      	beq.n	c0de5052 <nbgl_useCaseReviewStatus+0x4a>
c0de5018:	2804      	cmp	r0, #4
c0de501a:	d01f      	beq.n	c0de505c <nbgl_useCaseReviewStatus+0x54>
c0de501c:	2807      	cmp	r0, #7
c0de501e:	d022      	beq.n	c0de5066 <nbgl_useCaseReviewStatus+0x5e>
c0de5020:	2806      	cmp	r0, #6
c0de5022:	d025      	beq.n	c0de5070 <nbgl_useCaseReviewStatus+0x68>
c0de5024:	2805      	cmp	r0, #5
c0de5026:	bf18      	it	ne
c0de5028:	4770      	bxne	lr
c0de502a:	4815      	ldr	r0, [pc, #84]	@ (c0de5080 <nbgl_useCaseReviewStatus+0x78>)
c0de502c:	2100      	movs	r1, #0
c0de502e:	4478      	add	r0, pc
c0de5030:	f7ff bef8 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de5034:	4813      	ldr	r0, [pc, #76]	@ (c0de5084 <nbgl_useCaseReviewStatus+0x7c>)
c0de5036:	2101      	movs	r1, #1
c0de5038:	4478      	add	r0, pc
c0de503a:	f7ff bef3 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de503e:	4812      	ldr	r0, [pc, #72]	@ (c0de5088 <nbgl_useCaseReviewStatus+0x80>)
c0de5040:	2100      	movs	r1, #0
c0de5042:	4478      	add	r0, pc
c0de5044:	f7ff beee 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de5048:	4810      	ldr	r0, [pc, #64]	@ (c0de508c <nbgl_useCaseReviewStatus+0x84>)
c0de504a:	2101      	movs	r1, #1
c0de504c:	4478      	add	r0, pc
c0de504e:	f7ff bee9 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de5052:	480f      	ldr	r0, [pc, #60]	@ (c0de5090 <nbgl_useCaseReviewStatus+0x88>)
c0de5054:	2100      	movs	r1, #0
c0de5056:	4478      	add	r0, pc
c0de5058:	f7ff bee4 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de505c:	4807      	ldr	r0, [pc, #28]	@ (c0de507c <nbgl_useCaseReviewStatus+0x74>)
c0de505e:	2101      	movs	r1, #1
c0de5060:	4478      	add	r0, pc
c0de5062:	f7ff bedf 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de5066:	480c      	ldr	r0, [pc, #48]	@ (c0de5098 <nbgl_useCaseReviewStatus+0x90>)
c0de5068:	2100      	movs	r1, #0
c0de506a:	4478      	add	r0, pc
c0de506c:	f7ff beda 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de5070:	4808      	ldr	r0, [pc, #32]	@ (c0de5094 <nbgl_useCaseReviewStatus+0x8c>)
c0de5072:	2101      	movs	r1, #1
c0de5074:	4478      	add	r0, pc
c0de5076:	f7ff bed5 	b.w	c0de4e24 <nbgl_useCaseStatus>
c0de507a:	bf00      	nop
c0de507c:	00002a50 	.word	0x00002a50
c0de5080:	00002aa4 	.word	0x00002aa4
c0de5084:	00002b3b 	.word	0x00002b3b
c0de5088:	00002d00 	.word	0x00002d00
c0de508c:	00002b9a 	.word	0x00002b9a
c0de5090:	00002c96 	.word	0x00002c96
c0de5094:	00002abf 	.word	0x00002abf
c0de5098:	00002bf9 	.word	0x00002bf9

c0de509c <displayStreamingReviewPage>:
c0de509c:	b570      	push	{r4, r5, r6, lr}
c0de509e:	b08c      	sub	sp, #48	@ 0x30
c0de50a0:	4d5a      	ldr	r5, [pc, #360]	@ (c0de520c <displayStreamingReviewPage+0x170>)
c0de50a2:	2100      	movs	r1, #0
c0de50a4:	4604      	mov	r4, r0
c0de50a6:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de50aa:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de50ae:	eb09 0005 	add.w	r0, r9, r5
c0de50b2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de50b4:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de50b8:	2806      	cmp	r0, #6
c0de50ba:	d015      	beq.n	c0de50e8 <displayStreamingReviewPage+0x4c>
c0de50bc:	2805      	cmp	r0, #5
c0de50be:	d13d      	bne.n	c0de513c <displayStreamingReviewPage+0xa0>
c0de50c0:	eb09 0205 	add.w	r2, r9, r5
c0de50c4:	2101      	movs	r1, #1
c0de50c6:	2302      	movs	r3, #2
c0de50c8:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de50ca:	2800      	cmp	r0, #0
c0de50cc:	bf08      	it	eq
c0de50ce:	21ff      	moveq	r1, #255	@ 0xff
c0de50d0:	bf08      	it	eq
c0de50d2:	2301      	moveq	r3, #1
c0de50d4:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de50d8:	4293      	cmp	r3, r2
c0de50da:	dd3b      	ble.n	c0de5154 <displayStreamingReviewPage+0xb8>
c0de50dc:	b2d3      	uxtb	r3, r2
c0de50de:	2b00      	cmp	r3, #0
c0de50e0:	d063      	beq.n	c0de51aa <displayStreamingReviewPage+0x10e>
c0de50e2:	4291      	cmp	r1, r2
c0de50e4:	d066      	beq.n	c0de51b4 <displayStreamingReviewPage+0x118>
c0de50e6:	e066      	b.n	c0de51b6 <displayStreamingReviewPage+0x11a>
c0de50e8:	eb09 0005 	add.w	r0, r9, r5
c0de50ec:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de50f0:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de50f2:	7a02      	ldrb	r2, [r0, #8]
c0de50f4:	4291      	cmp	r1, r2
c0de50f6:	da2d      	bge.n	c0de5154 <displayStreamingReviewPage+0xb8>
c0de50f8:	eb09 0205 	add.w	r2, r9, r5
c0de50fc:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de50fe:	b3cb      	cbz	r3, c0de5174 <displayStreamingReviewPage+0xd8>
c0de5100:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de5104:	bbb2      	cbnz	r2, c0de5174 <displayStreamingReviewPage+0xd8>
c0de5106:	eb09 0205 	add.w	r2, r9, r5
c0de510a:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de510e:	2a01      	cmp	r2, #1
c0de5110:	d807      	bhi.n	c0de5122 <displayStreamingReviewPage+0x86>
c0de5112:	2900      	cmp	r1, #0
c0de5114:	dc05      	bgt.n	c0de5122 <displayStreamingReviewPage+0x86>
c0de5116:	eb09 0305 	add.w	r3, r9, r5
c0de511a:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de511e:	2b08      	cmp	r3, #8
c0de5120:	d128      	bne.n	c0de5174 <displayStreamingReviewPage+0xd8>
c0de5122:	2000      	movs	r0, #0
c0de5124:	9007      	str	r0, [sp, #28]
c0de5126:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de512a:	f004 0008 	and.w	r0, r4, #8
c0de512e:	2a01      	cmp	r2, #1
c0de5130:	d001      	beq.n	c0de5136 <displayStreamingReviewPage+0x9a>
c0de5132:	2901      	cmp	r1, #1
c0de5134:	db50      	blt.n	c0de51d8 <displayStreamingReviewPage+0x13c>
c0de5136:	f040 0003 	orr.w	r0, r0, #3
c0de513a:	e04f      	b.n	c0de51dc <displayStreamingReviewPage+0x140>
c0de513c:	eb09 0005 	add.w	r0, r9, r5
c0de5140:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5144:	b180      	cbz	r0, c0de5168 <displayStreamingReviewPage+0xcc>
c0de5146:	a909      	add	r1, sp, #36	@ 0x24
c0de5148:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de514a:	2000      	movs	r0, #0
c0de514c:	2500      	movs	r5, #0
c0de514e:	f000 fda7 	bl	c0de5ca0 <getLastPageInfo>
c0de5152:	e031      	b.n	c0de51b8 <displayStreamingReviewPage+0x11c>
c0de5154:	eb09 0005 	add.w	r0, r9, r5
c0de5158:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de515a:	2900      	cmp	r1, #0
c0de515c:	d053      	beq.n	c0de5206 <displayStreamingReviewPage+0x16a>
c0de515e:	2001      	movs	r0, #1
c0de5160:	b00c      	add	sp, #48	@ 0x30
c0de5162:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5166:	4708      	bx	r1
c0de5168:	a909      	add	r1, sp, #36	@ 0x24
c0de516a:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de516c:	2001      	movs	r0, #1
c0de516e:	f000 fd97 	bl	c0de5ca0 <getLastPageInfo>
c0de5172:	e020      	b.n	c0de51b6 <displayStreamingReviewPage+0x11a>
c0de5174:	2300      	movs	r3, #0
c0de5176:	eb09 0205 	add.w	r2, r9, r5
c0de517a:	b2c9      	uxtb	r1, r1
c0de517c:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de5180:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5184:	ab09      	add	r3, sp, #36	@ 0x24
c0de5186:	ad08      	add	r5, sp, #32
c0de5188:	f10d 020f 	add.w	r2, sp, #15
c0de518c:	e9cd 5300 	strd	r5, r3, [sp]
c0de5190:	9202      	str	r2, [sp, #8]
c0de5192:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5194:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5196:	f000 fac3 	bl	c0de5720 <getPairData>
c0de519a:	9808      	ldr	r0, [sp, #32]
c0de519c:	2800      	cmp	r0, #0
c0de519e:	bf12      	itee	ne
c0de51a0:	2501      	movne	r5, #1
c0de51a2:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de51a6:	0045      	lsleq	r5, r0, #1
c0de51a8:	e006      	b.n	c0de51b8 <displayStreamingReviewPage+0x11c>
c0de51aa:	eb09 0005 	add.w	r0, r9, r5
c0de51ae:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de51b2:	9109      	str	r1, [sp, #36]	@ 0x24
c0de51b4:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de51b6:	2500      	movs	r5, #0
c0de51b8:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de51ba:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de51be:	4e17      	ldr	r6, [pc, #92]	@ (c0de521c <displayStreamingReviewPage+0x180>)
c0de51c0:	b2e8      	uxtb	r0, r5
c0de51c2:	2500      	movs	r5, #0
c0de51c4:	9002      	str	r0, [sp, #8]
c0de51c6:	4620      	mov	r0, r4
c0de51c8:	447e      	add	r6, pc
c0de51ca:	f001 f897 	bl	c0de62fc <OUTLINED_FUNCTION_6>
c0de51ce:	b00c      	add	sp, #48	@ 0x30
c0de51d0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de51d4:	f001 bdd5 	b.w	c0de6d82 <nbgl_refresh>
c0de51d8:	f040 0001 	orr.w	r0, r0, #1
c0de51dc:	490c      	ldr	r1, [pc, #48]	@ (c0de5210 <displayStreamingReviewPage+0x174>)
c0de51de:	2200      	movs	r2, #0
c0de51e0:	4479      	add	r1, pc
c0de51e2:	9104      	str	r1, [sp, #16]
c0de51e4:	490b      	ldr	r1, [pc, #44]	@ (c0de5214 <displayStreamingReviewPage+0x178>)
c0de51e6:	4479      	add	r1, pc
c0de51e8:	9106      	str	r1, [sp, #24]
c0de51ea:	2100      	movs	r1, #0
c0de51ec:	9100      	str	r1, [sp, #0]
c0de51ee:	490a      	ldr	r1, [pc, #40]	@ (c0de5218 <displayStreamingReviewPage+0x17c>)
c0de51f0:	ab04      	add	r3, sp, #16
c0de51f2:	4479      	add	r1, pc
c0de51f4:	f7ff f9d2 	bl	c0de459c <nbgl_stepDrawCenteredInfo>
c0de51f8:	eb09 0405 	add.w	r4, r9, r5
c0de51fc:	f001 fdc1 	bl	c0de6d82 <nbgl_refresh>
c0de5200:	2001      	movs	r0, #1
c0de5202:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de5206:	b00c      	add	sp, #48	@ 0x30
c0de5208:	bd70      	pop	{r4, r5, r6, pc}
c0de520a:	bf00      	nop
c0de520c:	00000744 	.word	0x00000744
c0de5210:	00002905 	.word	0x00002905
c0de5214:	00002714 	.word	0x00002714
c0de5218:	00000cb7 	.word	0x00000cb7
c0de521c:	00001079 	.word	0x00001079

c0de5220 <nbgl_useCaseSpinner>:
c0de5220:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5222:	4604      	mov	r4, r0
c0de5224:	480b      	ldr	r0, [pc, #44]	@ (c0de5254 <nbgl_useCaseSpinner+0x34>)
c0de5226:	2140      	movs	r1, #64	@ 0x40
c0de5228:	f001 f85b 	bl	c0de62e2 <OUTLINED_FUNCTION_3>
c0de522c:	2001      	movs	r0, #1
c0de522e:	4622      	mov	r2, r4
c0de5230:	2300      	movs	r3, #0
c0de5232:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de5236:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de523a:	2000      	movs	r0, #0
c0de523c:	e9cd 0000 	strd	r0, r0, [sp]
c0de5240:	9002      	str	r0, [sp, #8]
c0de5242:	2000      	movs	r0, #0
c0de5244:	4904      	ldr	r1, [pc, #16]	@ (c0de5258 <nbgl_useCaseSpinner+0x38>)
c0de5246:	4479      	add	r1, pc
c0de5248:	f7ff fe0c 	bl	c0de4e64 <drawStep>
c0de524c:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de5250:	f001 bd97 	b.w	c0de6d82 <nbgl_refresh>
c0de5254:	00000744 	.word	0x00000744
c0de5258:	000027ab 	.word	0x000027ab

c0de525c <nbgl_useCaseChoice>:
c0de525c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5260:	4607      	mov	r7, r0
c0de5262:	480b      	ldr	r0, [pc, #44]	@ (c0de5290 <nbgl_useCaseChoice+0x34>)
c0de5264:	f001 f822 	bl	c0de62ac <OUTLINED_FUNCTION_0>
c0de5268:	9807      	ldr	r0, [sp, #28]
c0de526a:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de526c:	9806      	ldr	r0, [sp, #24]
c0de526e:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de5272:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de5276:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de5278:	2008      	movs	r0, #8
c0de527a:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de527e:	2004      	movs	r0, #4
c0de5280:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de5284:	2000      	movs	r0, #0
c0de5286:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de528a:	f000 b803 	b.w	c0de5294 <displayChoicePage>
c0de528e:	bf00      	nop
c0de5290:	00000744 	.word	0x00000744

c0de5294 <displayChoicePage>:
c0de5294:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5296:	4b28      	ldr	r3, [pc, #160]	@ (c0de5338 <displayChoicePage+0xa4>)
c0de5298:	2200      	movs	r2, #0
c0de529a:	eb09 0103 	add.w	r1, r9, r3
c0de529e:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52a0:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de52a4:	b179      	cbz	r1, c0de52c6 <displayChoicePage+0x32>
c0de52a6:	2902      	cmp	r1, #2
c0de52a8:	d021      	beq.n	c0de52ee <displayChoicePage+0x5a>
c0de52aa:	2901      	cmp	r1, #1
c0de52ac:	d10f      	bne.n	c0de52ce <displayChoicePage+0x3a>
c0de52ae:	eb09 0103 	add.w	r1, r9, r3
c0de52b2:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de52b4:	b1a1      	cbz	r1, c0de52e0 <displayChoicePage+0x4c>
c0de52b6:	eb09 0203 	add.w	r2, r9, r3
c0de52ba:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de52bc:	b182      	cbz	r2, c0de52e0 <displayChoicePage+0x4c>
c0de52be:	eb09 0103 	add.w	r1, r9, r3
c0de52c2:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de52c4:	e029      	b.n	c0de531a <displayChoicePage+0x86>
c0de52c6:	eb09 0103 	add.w	r1, r9, r3
c0de52ca:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de52cc:	e01d      	b.n	c0de530a <displayChoicePage+0x76>
c0de52ce:	4a1d      	ldr	r2, [pc, #116]	@ (c0de5344 <displayChoicePage+0xb0>)
c0de52d0:	eb09 0103 	add.w	r1, r9, r3
c0de52d4:	447a      	add	r2, pc
c0de52d6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52d8:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de52da:	491b      	ldr	r1, [pc, #108]	@ (c0de5348 <displayChoicePage+0xb4>)
c0de52dc:	4479      	add	r1, pc
c0de52de:	e018      	b.n	c0de5312 <displayChoicePage+0x7e>
c0de52e0:	0702      	lsls	r2, r0, #28
c0de52e2:	d40d      	bmi.n	c0de5300 <displayChoicePage+0x6c>
c0de52e4:	eb09 0103 	add.w	r1, r9, r3
c0de52e8:	2202      	movs	r2, #2
c0de52ea:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de52ee:	4a13      	ldr	r2, [pc, #76]	@ (c0de533c <displayChoicePage+0xa8>)
c0de52f0:	eb09 0103 	add.w	r1, r9, r3
c0de52f4:	447a      	add	r2, pc
c0de52f6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de52f8:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de52fa:	4911      	ldr	r1, [pc, #68]	@ (c0de5340 <displayChoicePage+0xac>)
c0de52fc:	4479      	add	r1, pc
c0de52fe:	e008      	b.n	c0de5312 <displayChoicePage+0x7e>
c0de5300:	eb09 0203 	add.w	r2, r9, r3
c0de5304:	2400      	movs	r4, #0
c0de5306:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de530a:	eb09 0203 	add.w	r2, r9, r3
c0de530e:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de5310:	b109      	cbz	r1, c0de5316 <displayChoicePage+0x82>
c0de5312:	2300      	movs	r3, #0
c0de5314:	e003      	b.n	c0de531e <displayChoicePage+0x8a>
c0de5316:	eb09 0103 	add.w	r1, r9, r3
c0de531a:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de531c:	2100      	movs	r1, #0
c0de531e:	4d0b      	ldr	r5, [pc, #44]	@ (c0de534c <displayChoicePage+0xb8>)
c0de5320:	2400      	movs	r4, #0
c0de5322:	9402      	str	r4, [sp, #8]
c0de5324:	447d      	add	r5, pc
c0de5326:	e9cd 5400 	strd	r5, r4, [sp]
c0de532a:	f7ff fd9b 	bl	c0de4e64 <drawStep>
c0de532e:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de5332:	f001 bd26 	b.w	c0de6d82 <nbgl_refresh>
c0de5336:	bf00      	nop
c0de5338:	00000744 	.word	0x00000744
c0de533c:	00000f71 	.word	0x00000f71
c0de5340:	00002732 	.word	0x00002732
c0de5344:	00000fa5 	.word	0x00000fa5
c0de5348:	000026d6 	.word	0x000026d6
c0de534c:	00000f69 	.word	0x00000f69

c0de5350 <getContentAtIdx>:
c0de5350:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5352:	b087      	sub	sp, #28
c0de5354:	460d      	mov	r5, r1
c0de5356:	4606      	mov	r6, r0
c0de5358:	a801      	add	r0, sp, #4
c0de535a:	2118      	movs	r1, #24
c0de535c:	4614      	mov	r4, r2
c0de535e:	f002 fa27 	bl	c0de77b0 <__aeabi_memclr>
c0de5362:	2d00      	cmp	r5, #0
c0de5364:	d428      	bmi.n	c0de53b8 <getContentAtIdx+0x68>
c0de5366:	7a30      	ldrb	r0, [r6, #8]
c0de5368:	4285      	cmp	r5, r0
c0de536a:	da25      	bge.n	c0de53b8 <getContentAtIdx+0x68>
c0de536c:	7830      	ldrb	r0, [r6, #0]
c0de536e:	b338      	cbz	r0, c0de53c0 <getContentAtIdx+0x70>
c0de5370:	b314      	cbz	r4, c0de53b8 <getContentAtIdx+0x68>
c0de5372:	4620      	mov	r0, r4
c0de5374:	2138      	movs	r1, #56	@ 0x38
c0de5376:	f002 fa1b 	bl	c0de77b0 <__aeabi_memclr>
c0de537a:	4821      	ldr	r0, [pc, #132]	@ (c0de5400 <getContentAtIdx+0xb0>)
c0de537c:	4448      	add	r0, r9
c0de537e:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5380:	b342      	cbz	r2, c0de53d4 <getContentAtIdx+0x84>
c0de5382:	b2e8      	uxtb	r0, r5
c0de5384:	ad01      	add	r5, sp, #4
c0de5386:	4629      	mov	r1, r5
c0de5388:	4790      	blx	r2
c0de538a:	b1a8      	cbz	r0, c0de53b8 <getContentAtIdx+0x68>
c0de538c:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de5390:	280a      	cmp	r0, #10
c0de5392:	7020      	strb	r0, [r4, #0]
c0de5394:	d028      	beq.n	c0de53e8 <getContentAtIdx+0x98>
c0de5396:	2803      	cmp	r0, #3
c0de5398:	d008      	beq.n	c0de53ac <getContentAtIdx+0x5c>
c0de539a:	2804      	cmp	r0, #4
c0de539c:	d02a      	beq.n	c0de53f4 <getContentAtIdx+0xa4>
c0de539e:	2807      	cmp	r0, #7
c0de53a0:	d01d      	beq.n	c0de53de <getContentAtIdx+0x8e>
c0de53a2:	2808      	cmp	r0, #8
c0de53a4:	d002      	beq.n	c0de53ac <getContentAtIdx+0x5c>
c0de53a6:	2809      	cmp	r0, #9
c0de53a8:	d019      	beq.n	c0de53de <getContentAtIdx+0x8e>
c0de53aa:	b928      	cbnz	r0, c0de53b8 <getContentAtIdx+0x68>
c0de53ac:	1d28      	adds	r0, r5, #4
c0de53ae:	1d21      	adds	r1, r4, #4
c0de53b0:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de53b4:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de53b6:	e000      	b.n	c0de53ba <getContentAtIdx+0x6a>
c0de53b8:	2400      	movs	r4, #0
c0de53ba:	4620      	mov	r0, r4
c0de53bc:	b007      	add	sp, #28
c0de53be:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de53c0:	6871      	ldr	r1, [r6, #4]
c0de53c2:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de53c6:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de53ca:	b007      	add	sp, #28
c0de53cc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de53d0:	f001 bee2 	b.w	c0de7198 <pic>
c0de53d4:	6872      	ldr	r2, [r6, #4]
c0de53d6:	b2e8      	uxtb	r0, r5
c0de53d8:	4621      	mov	r1, r4
c0de53da:	4790      	blx	r2
c0de53dc:	e7ed      	b.n	c0de53ba <getContentAtIdx+0x6a>
c0de53de:	9802      	ldr	r0, [sp, #8]
c0de53e0:	9903      	ldr	r1, [sp, #12]
c0de53e2:	6060      	str	r0, [r4, #4]
c0de53e4:	60a1      	str	r1, [r4, #8]
c0de53e6:	e7e8      	b.n	c0de53ba <getContentAtIdx+0x6a>
c0de53e8:	1d28      	adds	r0, r5, #4
c0de53ea:	1d21      	adds	r1, r4, #4
c0de53ec:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de53f0:	c12c      	stmia	r1!, {r2, r3, r5}
c0de53f2:	e7e2      	b.n	c0de53ba <getContentAtIdx+0x6a>
c0de53f4:	1d28      	adds	r0, r5, #4
c0de53f6:	1d21      	adds	r1, r4, #4
c0de53f8:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de53fc:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de53fe:	e7dc      	b.n	c0de53ba <getContentAtIdx+0x6a>
c0de5400:	00000744 	.word	0x00000744

c0de5404 <getContentNbElement>:
c0de5404:	7802      	ldrb	r2, [r0, #0]
c0de5406:	2101      	movs	r1, #1
c0de5408:	b1a2      	cbz	r2, c0de5434 <getContentNbElement+0x30>
c0de540a:	2a03      	cmp	r2, #3
c0de540c:	d012      	beq.n	c0de5434 <getContentNbElement+0x30>
c0de540e:	2a0a      	cmp	r2, #10
c0de5410:	d007      	beq.n	c0de5422 <getContentNbElement+0x1e>
c0de5412:	2a07      	cmp	r2, #7
c0de5414:	d007      	beq.n	c0de5426 <getContentNbElement+0x22>
c0de5416:	2a08      	cmp	r2, #8
c0de5418:	d007      	beq.n	c0de542a <getContentNbElement+0x26>
c0de541a:	2a09      	cmp	r2, #9
c0de541c:	d007      	beq.n	c0de542e <getContentNbElement+0x2a>
c0de541e:	2a04      	cmp	r2, #4
c0de5420:	d107      	bne.n	c0de5432 <getContentNbElement+0x2e>
c0de5422:	7b01      	ldrb	r1, [r0, #12]
c0de5424:	e006      	b.n	c0de5434 <getContentNbElement+0x30>
c0de5426:	7a01      	ldrb	r1, [r0, #8]
c0de5428:	e004      	b.n	c0de5434 <getContentNbElement+0x30>
c0de542a:	7c01      	ldrb	r1, [r0, #16]
c0de542c:	e002      	b.n	c0de5434 <getContentNbElement+0x30>
c0de542e:	7a41      	ldrb	r1, [r0, #9]
c0de5430:	e000      	b.n	c0de5434 <getContentNbElement+0x30>
c0de5432:	2100      	movs	r1, #0
c0de5434:	4608      	mov	r0, r1
c0de5436:	4770      	bx	lr

c0de5438 <displayContent>:
c0de5438:	b570      	push	{r4, r5, r6, lr}
c0de543a:	b08a      	sub	sp, #40	@ 0x28
c0de543c:	460d      	mov	r5, r1
c0de543e:	4604      	mov	r4, r0
c0de5440:	a804      	add	r0, sp, #16
c0de5442:	2118      	movs	r1, #24
c0de5444:	f002 f9b4 	bl	c0de77b0 <__aeabi_memclr>
c0de5448:	4820      	ldr	r0, [pc, #128]	@ (c0de54cc <displayContent+0x94>)
c0de544a:	f000 ff39 	bl	c0de62c0 <OUTLINED_FUNCTION_1>
c0de544e:	dd14      	ble.n	c0de547a <displayContent+0x42>
c0de5450:	a904      	add	r1, sp, #16
c0de5452:	4628      	mov	r0, r5
c0de5454:	f000 f846 	bl	c0de54e4 <getContentPage>
c0de5458:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de545c:	b318      	cbz	r0, c0de54a6 <displayContent+0x6e>
c0de545e:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5462:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5466:	481e      	ldr	r0, [pc, #120]	@ (c0de54e0 <displayContent+0xa8>)
c0de5468:	4478      	add	r0, pc
c0de546a:	2b00      	cmp	r3, #0
c0de546c:	9000      	str	r0, [sp, #0]
c0de546e:	4620      	mov	r0, r4
c0de5470:	bf18      	it	ne
c0de5472:	2301      	movne	r3, #1
c0de5474:	f000 f8d8 	bl	c0de5628 <drawSwitchStep>
c0de5478:	e023      	b.n	c0de54c2 <displayContent+0x8a>
c0de547a:	4448      	add	r0, r9
c0de547c:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de547e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5480:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5482:	4a13      	ldr	r2, [pc, #76]	@ (c0de54d0 <displayContent+0x98>)
c0de5484:	2900      	cmp	r1, #0
c0de5486:	447a      	add	r2, pc
c0de5488:	bf18      	it	ne
c0de548a:	460a      	movne	r2, r1
c0de548c:	9205      	str	r2, [sp, #20]
c0de548e:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de5492:	4910      	ldr	r1, [pc, #64]	@ (c0de54d4 <displayContent+0x9c>)
c0de5494:	4a10      	ldr	r2, [pc, #64]	@ (c0de54d8 <displayContent+0xa0>)
c0de5496:	2803      	cmp	r0, #3
c0de5498:	447a      	add	r2, pc
c0de549a:	4479      	add	r1, pc
c0de549c:	bf08      	it	eq
c0de549e:	460a      	moveq	r2, r1
c0de54a0:	9207      	str	r2, [sp, #28]
c0de54a2:	2000      	movs	r0, #0
c0de54a4:	e002      	b.n	c0de54ac <displayContent+0x74>
c0de54a6:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de54aa:	0040      	lsls	r0, r0, #1
c0de54ac:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de54b0:	9907      	ldr	r1, [sp, #28]
c0de54b2:	4e0a      	ldr	r6, [pc, #40]	@ (c0de54dc <displayContent+0xa4>)
c0de54b4:	b2c0      	uxtb	r0, r0
c0de54b6:	2500      	movs	r5, #0
c0de54b8:	9002      	str	r0, [sp, #8]
c0de54ba:	4620      	mov	r0, r4
c0de54bc:	447e      	add	r6, pc
c0de54be:	f000 ff1d 	bl	c0de62fc <OUTLINED_FUNCTION_6>
c0de54c2:	f001 fc5e 	bl	c0de6d82 <nbgl_refresh>
c0de54c6:	b00a      	add	sp, #40	@ 0x28
c0de54c8:	bd70      	pop	{r4, r5, r6, pc}
c0de54ca:	bf00      	nop
c0de54cc:	00000744 	.word	0x00000744
c0de54d0:	00002899 	.word	0x00002899
c0de54d4:	00002518 	.word	0x00002518
c0de54d8:	000024d4 	.word	0x000024d4
c0de54dc:	000001b9 	.word	0x000001b9
c0de54e0:	0000020d 	.word	0x0000020d

c0de54e4 <getContentPage>:
c0de54e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de54e6:	b093      	sub	sp, #76	@ 0x4c
c0de54e8:	4606      	mov	r6, r0
c0de54ea:	2000      	movs	r0, #0
c0de54ec:	460c      	mov	r4, r1
c0de54ee:	2138      	movs	r1, #56	@ 0x38
c0de54f0:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de54f4:	ad04      	add	r5, sp, #16
c0de54f6:	4628      	mov	r0, r5
c0de54f8:	f002 f95a 	bl	c0de77b0 <__aeabi_memclr>
c0de54fc:	4f47      	ldr	r7, [pc, #284]	@ (c0de561c <getContentPage+0x138>)
c0de54fe:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de5502:	462a      	mov	r2, r5
c0de5504:	eb09 0007 	add.w	r0, r9, r7
c0de5508:	f000 fef1 	bl	c0de62ee <OUTLINED_FUNCTION_4>
c0de550c:	2800      	cmp	r0, #0
c0de550e:	d07a      	beq.n	c0de5606 <getContentPage+0x122>
c0de5510:	4605      	mov	r5, r0
c0de5512:	7800      	ldrb	r0, [r0, #0]
c0de5514:	280a      	cmp	r0, #10
c0de5516:	d011      	beq.n	c0de553c <getContentPage+0x58>
c0de5518:	2803      	cmp	r0, #3
c0de551a:	d02c      	beq.n	c0de5576 <getContentPage+0x92>
c0de551c:	2804      	cmp	r0, #4
c0de551e:	d035      	beq.n	c0de558c <getContentPage+0xa8>
c0de5520:	2807      	cmp	r0, #7
c0de5522:	d045      	beq.n	c0de55b0 <getContentPage+0xcc>
c0de5524:	2808      	cmp	r0, #8
c0de5526:	d060      	beq.n	c0de55ea <getContentPage+0x106>
c0de5528:	2809      	cmp	r0, #9
c0de552a:	d007      	beq.n	c0de553c <getContentPage+0x58>
c0de552c:	2800      	cmp	r0, #0
c0de552e:	d16a      	bne.n	c0de5606 <getContentPage+0x122>
c0de5530:	6868      	ldr	r0, [r5, #4]
c0de5532:	f001 fe31 	bl	c0de7198 <pic>
c0de5536:	6060      	str	r0, [r4, #4]
c0de5538:	68a8      	ldr	r0, [r5, #8]
c0de553a:	e019      	b.n	c0de5570 <getContentPage+0x8c>
c0de553c:	1d28      	adds	r0, r5, #4
c0de553e:	eb09 0607 	add.w	r6, r9, r7
c0de5542:	f001 fe29 	bl	c0de7198 <pic>
c0de5546:	6800      	ldr	r0, [r0, #0]
c0de5548:	f001 fe26 	bl	c0de7198 <pic>
c0de554c:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de5550:	4605      	mov	r5, r0
c0de5552:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de5554:	2910      	cmp	r1, #16
c0de5556:	d100      	bne.n	c0de555a <getContentPage+0x76>
c0de5558:	b918      	cbnz	r0, c0de5562 <getContentPage+0x7e>
c0de555a:	290f      	cmp	r1, #15
c0de555c:	d155      	bne.n	c0de560a <getContentPage+0x126>
c0de555e:	2800      	cmp	r0, #0
c0de5560:	d053      	beq.n	c0de560a <getContentPage+0x126>
c0de5562:	f001 fe19 	bl	c0de7198 <pic>
c0de5566:	6060      	str	r0, [r4, #4]
c0de5568:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de556c:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5570:	f001 fe12 	bl	c0de7198 <pic>
c0de5574:	e046      	b.n	c0de5604 <getContentPage+0x120>
c0de5576:	68a8      	ldr	r0, [r5, #8]
c0de5578:	4e29      	ldr	r6, [pc, #164]	@ (c0de5620 <getContentPage+0x13c>)
c0de557a:	447e      	add	r6, pc
c0de557c:	47b0      	blx	r6
c0de557e:	60e0      	str	r0, [r4, #12]
c0de5580:	6868      	ldr	r0, [r5, #4]
c0de5582:	47b0      	blx	r6
c0de5584:	6060      	str	r0, [r4, #4]
c0de5586:	68e8      	ldr	r0, [r5, #12]
c0de5588:	47b0      	blx	r6
c0de558a:	e03b      	b.n	c0de5604 <getContentPage+0x120>
c0de558c:	f104 0015 	add.w	r0, r4, #21
c0de5590:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5594:	f104 020c 	add.w	r2, r4, #12
c0de5598:	f104 0310 	add.w	r3, r4, #16
c0de559c:	e9cd 3200 	strd	r3, r2, [sp]
c0de55a0:	9002      	str	r0, [sp, #8]
c0de55a2:	1d28      	adds	r0, r5, #4
c0de55a4:	1d22      	adds	r2, r4, #4
c0de55a6:	f104 0308 	add.w	r3, r4, #8
c0de55aa:	f000 f8b9 	bl	c0de5720 <getPairData>
c0de55ae:	e02a      	b.n	c0de5606 <getContentPage+0x122>
c0de55b0:	2001      	movs	r0, #1
c0de55b2:	444f      	add	r7, r9
c0de55b4:	7020      	strb	r0, [r4, #0]
c0de55b6:	6868      	ldr	r0, [r5, #4]
c0de55b8:	f001 fdee 	bl	c0de7198 <pic>
c0de55bc:	4919      	ldr	r1, [pc, #100]	@ (c0de5624 <getContentPage+0x140>)
c0de55be:	4479      	add	r1, pc
c0de55c0:	6379      	str	r1, [r7, #52]	@ 0x34
c0de55c2:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de55c6:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de55ca:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de55ce:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de55d2:	6062      	str	r2, [r4, #4]
c0de55d4:	6841      	ldr	r1, [r0, #4]
c0de55d6:	60a1      	str	r1, [r4, #8]
c0de55d8:	7a00      	ldrb	r0, [r0, #8]
c0de55da:	1e41      	subs	r1, r0, #1
c0de55dc:	bf18      	it	ne
c0de55de:	2101      	movne	r1, #1
c0de55e0:	2e00      	cmp	r6, #0
c0de55e2:	bf08      	it	eq
c0de55e4:	4601      	moveq	r1, r0
c0de55e6:	7521      	strb	r1, [r4, #20]
c0de55e8:	e00d      	b.n	c0de5606 <getContentPage+0x122>
c0de55ea:	6868      	ldr	r0, [r5, #4]
c0de55ec:	f001 fdd4 	bl	c0de7198 <pic>
c0de55f0:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de55f4:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de55f8:	6060      	str	r0, [r4, #4]
c0de55fa:	68a8      	ldr	r0, [r5, #8]
c0de55fc:	f001 fdcc 	bl	c0de7198 <pic>
c0de5600:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5604:	60a0      	str	r0, [r4, #8]
c0de5606:	b013      	add	sp, #76	@ 0x4c
c0de5608:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de560a:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de560e:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5612:	f001 fdc1 	bl	c0de7198 <pic>
c0de5616:	6060      	str	r0, [r4, #4]
c0de5618:	e7f5      	b.n	c0de5606 <getContentPage+0x122>
c0de561a:	bf00      	nop
c0de561c:	00000744 	.word	0x00000744
c0de5620:	00001c1b 	.word	0x00001c1b
c0de5624:	000001a7 	.word	0x000001a7

c0de5628 <drawSwitchStep>:
c0de5628:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de562a:	b085      	sub	sp, #20
c0de562c:	4c11      	ldr	r4, [pc, #68]	@ (c0de5674 <drawSwitchStep+0x4c>)
c0de562e:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de5632:	2600      	movs	r6, #0
c0de5634:	eb09 0504 	add.w	r5, r9, r4
c0de5638:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de563c:	2500      	movs	r5, #0
c0de563e:	2f02      	cmp	r7, #2
c0de5640:	d30a      	bcc.n	c0de5658 <drawSwitchStep+0x30>
c0de5642:	444c      	add	r4, r9
c0de5644:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de5648:	b12c      	cbz	r4, c0de5656 <drawSwitchStep+0x2e>
c0de564a:	3f01      	subs	r7, #1
c0de564c:	2603      	movs	r6, #3
c0de564e:	42a7      	cmp	r7, r4
c0de5650:	bf08      	it	eq
c0de5652:	2602      	moveq	r6, #2
c0de5654:	e000      	b.n	c0de5658 <drawSwitchStep+0x30>
c0de5656:	2601      	movs	r6, #1
c0de5658:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de565c:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5660:	9500      	str	r5, [sp, #0]
c0de5662:	4330      	orrs	r0, r6
c0de5664:	ab02      	add	r3, sp, #8
c0de5666:	4661      	mov	r1, ip
c0de5668:	2200      	movs	r2, #0
c0de566a:	f7ff f87f 	bl	c0de476c <nbgl_stepDrawSwitch>
c0de566e:	b005      	add	sp, #20
c0de5670:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5672:	bf00      	nop
c0de5674:	00000744 	.word	0x00000744

c0de5678 <contentCallback>:
c0de5678:	b5e0      	push	{r5, r6, r7, lr}
c0de567a:	4608      	mov	r0, r1
c0de567c:	f10d 0107 	add.w	r1, sp, #7
c0de5680:	f000 f928 	bl	c0de58d4 <buttonGenericCallback>
c0de5684:	b130      	cbz	r0, c0de5694 <contentCallback+0x1c>
c0de5686:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de568a:	2100      	movs	r1, #0
c0de568c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5690:	f7ff bed2 	b.w	c0de5438 <displayContent>
c0de5694:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5698 <getContentElemAtIdx>:
c0de5698:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de569c:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5718 <getContentElemAtIdx+0x80>)
c0de569e:	4606      	mov	r6, r0
c0de56a0:	2700      	movs	r7, #0
c0de56a2:	eb09 0004 	add.w	r0, r9, r4
c0de56a6:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de56aa:	2b10      	cmp	r3, #16
c0de56ac:	d830      	bhi.n	c0de5710 <getContentElemAtIdx+0x78>
c0de56ae:	4693      	mov	fp, r2
c0de56b0:	2201      	movs	r2, #1
c0de56b2:	9101      	str	r1, [sp, #4]
c0de56b4:	fa02 f303 	lsl.w	r3, r2, r3
c0de56b8:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de56bc:	d004      	beq.n	c0de56c8 <getContentElemAtIdx+0x30>
c0de56be:	eb09 0004 	add.w	r0, r9, r4
c0de56c2:	46a2      	mov	sl, r4
c0de56c4:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de56c6:	e005      	b.n	c0de56d4 <getContentElemAtIdx+0x3c>
c0de56c8:	4a14      	ldr	r2, [pc, #80]	@ (c0de571c <getContentElemAtIdx+0x84>)
c0de56ca:	4213      	tst	r3, r2
c0de56cc:	d020      	beq.n	c0de5710 <getContentElemAtIdx+0x78>
c0de56ce:	46a2      	mov	sl, r4
c0de56d0:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de56d4:	2700      	movs	r7, #0
c0de56d6:	2000      	movs	r0, #0
c0de56d8:	f04f 0800 	mov.w	r8, #0
c0de56dc:	4605      	mov	r5, r0
c0de56de:	7a20      	ldrb	r0, [r4, #8]
c0de56e0:	4580      	cmp	r8, r0
c0de56e2:	d215      	bcs.n	c0de5710 <getContentElemAtIdx+0x78>
c0de56e4:	fa4f f188 	sxtb.w	r1, r8
c0de56e8:	4620      	mov	r0, r4
c0de56ea:	465a      	mov	r2, fp
c0de56ec:	f7ff fe30 	bl	c0de5350 <getContentAtIdx>
c0de56f0:	4607      	mov	r7, r0
c0de56f2:	f7ff fe87 	bl	c0de5404 <getContentNbElement>
c0de56f6:	b2e9      	uxtb	r1, r5
c0de56f8:	f108 0801 	add.w	r8, r8, #1
c0de56fc:	4408      	add	r0, r1
c0de56fe:	42b0      	cmp	r0, r6
c0de5700:	d9ec      	bls.n	c0de56dc <getContentElemAtIdx+0x44>
c0de5702:	eb09 000a 	add.w	r0, r9, sl
c0de5706:	9901      	ldr	r1, [sp, #4]
c0de5708:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de570c:	1b40      	subs	r0, r0, r5
c0de570e:	7008      	strb	r0, [r1, #0]
c0de5710:	4638      	mov	r0, r7
c0de5712:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5716:	bf00      	nop
c0de5718:	00000744 	.word	0x00000744
c0de571c:	00010008 	.word	0x00010008

c0de5720 <getPairData>:
c0de5720:	b5b0      	push	{r4, r5, r7, lr}
c0de5722:	4615      	mov	r5, r2
c0de5724:	6802      	ldr	r2, [r0, #0]
c0de5726:	461c      	mov	r4, r3
c0de5728:	b112      	cbz	r2, c0de5730 <getPairData+0x10>
c0de572a:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de572e:	e002      	b.n	c0de5736 <getPairData+0x16>
c0de5730:	6842      	ldr	r2, [r0, #4]
c0de5732:	4608      	mov	r0, r1
c0de5734:	4790      	blx	r2
c0de5736:	f001 fd2f 	bl	c0de7198 <pic>
c0de573a:	6802      	ldr	r2, [r0, #0]
c0de573c:	9904      	ldr	r1, [sp, #16]
c0de573e:	602a      	str	r2, [r5, #0]
c0de5740:	6842      	ldr	r2, [r0, #4]
c0de5742:	6022      	str	r2, [r4, #0]
c0de5744:	7b02      	ldrb	r2, [r0, #12]
c0de5746:	0753      	lsls	r3, r2, #29
c0de5748:	d403      	bmi.n	c0de5752 <getPairData+0x32>
c0de574a:	0792      	lsls	r2, r2, #30
c0de574c:	d404      	bmi.n	c0de5758 <getPairData+0x38>
c0de574e:	2000      	movs	r0, #0
c0de5750:	e000      	b.n	c0de5754 <getPairData+0x34>
c0de5752:	6880      	ldr	r0, [r0, #8]
c0de5754:	6008      	str	r0, [r1, #0]
c0de5756:	bdb0      	pop	{r4, r5, r7, pc}
c0de5758:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de575c:	2301      	movs	r3, #1
c0de575e:	700b      	strb	r3, [r1, #0]
c0de5760:	6880      	ldr	r0, [r0, #8]
c0de5762:	6010      	str	r0, [r2, #0]
c0de5764:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5768 <onSwitchAction>:
c0de5768:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de576a:	b08f      	sub	sp, #60	@ 0x3c
c0de576c:	ac01      	add	r4, sp, #4
c0de576e:	2138      	movs	r1, #56	@ 0x38
c0de5770:	4620      	mov	r0, r4
c0de5772:	f002 f81d 	bl	c0de77b0 <__aeabi_memclr>
c0de5776:	4e26      	ldr	r6, [pc, #152]	@ (c0de5810 <onSwitchAction+0xa8>)
c0de5778:	f10d 0103 	add.w	r1, sp, #3
c0de577c:	4622      	mov	r2, r4
c0de577e:	eb09 0006 	add.w	r0, r9, r6
c0de5782:	f000 fdb4 	bl	c0de62ee <OUTLINED_FUNCTION_4>
c0de5786:	2800      	cmp	r0, #0
c0de5788:	d040      	beq.n	c0de580c <onSwitchAction+0xa4>
c0de578a:	4604      	mov	r4, r0
c0de578c:	7800      	ldrb	r0, [r0, #0]
c0de578e:	2807      	cmp	r0, #7
c0de5790:	d13c      	bne.n	c0de580c <onSwitchAction+0xa4>
c0de5792:	6860      	ldr	r0, [r4, #4]
c0de5794:	eb09 0706 	add.w	r7, r9, r6
c0de5798:	f001 fcfe 	bl	c0de7198 <pic>
c0de579c:	4605      	mov	r5, r0
c0de579e:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de57a2:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de57a6:	2810      	cmp	r0, #16
c0de57a8:	d811      	bhi.n	c0de57ce <onSwitchAction+0x66>
c0de57aa:	2101      	movs	r1, #1
c0de57ac:	fa01 f000 	lsl.w	r0, r1, r0
c0de57b0:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de57b4:	d004      	beq.n	c0de57c0 <onSwitchAction+0x58>
c0de57b6:	2000      	movs	r0, #0
c0de57b8:	2101      	movs	r1, #1
c0de57ba:	f000 f82d 	bl	c0de5818 <displaySettingsPage>
c0de57be:	e006      	b.n	c0de57ce <onSwitchAction+0x66>
c0de57c0:	4914      	ldr	r1, [pc, #80]	@ (c0de5814 <onSwitchAction+0xac>)
c0de57c2:	4208      	tst	r0, r1
c0de57c4:	d003      	beq.n	c0de57ce <onSwitchAction+0x66>
c0de57c6:	2000      	movs	r0, #0
c0de57c8:	2101      	movs	r1, #1
c0de57ca:	f7ff fe35 	bl	c0de5438 <displayContent>
c0de57ce:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de57d0:	b188      	cbz	r0, c0de57f6 <onSwitchAction+0x8e>
c0de57d2:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de57d6:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de57da:	f001 fcdd 	bl	c0de7198 <pic>
c0de57de:	7a21      	ldrb	r1, [r4, #8]
c0de57e0:	eb09 0206 	add.w	r2, r9, r6
c0de57e4:	4603      	mov	r3, r0
c0de57e6:	7a60      	ldrb	r0, [r4, #9]
c0de57e8:	3901      	subs	r1, #1
c0de57ea:	bf18      	it	ne
c0de57ec:	2101      	movne	r1, #1
c0de57ee:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de57f2:	4798      	blx	r3
c0de57f4:	e00a      	b.n	c0de580c <onSwitchAction+0xa4>
c0de57f6:	eb09 0006 	add.w	r0, r9, r6
c0de57fa:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de57fc:	b132      	cbz	r2, c0de580c <onSwitchAction+0xa4>
c0de57fe:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5802:	2100      	movs	r1, #0
c0de5804:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5808:	7a40      	ldrb	r0, [r0, #9]
c0de580a:	4790      	blx	r2
c0de580c:	b00f      	add	sp, #60	@ 0x3c
c0de580e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5810:	00000744 	.word	0x00000744
c0de5814:	00010008 	.word	0x00010008

c0de5818 <displaySettingsPage>:
c0de5818:	b5b0      	push	{r4, r5, r7, lr}
c0de581a:	b08a      	sub	sp, #40	@ 0x28
c0de581c:	460d      	mov	r5, r1
c0de581e:	4604      	mov	r4, r0
c0de5820:	a804      	add	r0, sp, #16
c0de5822:	2118      	movs	r1, #24
c0de5824:	f001 ffc4 	bl	c0de77b0 <__aeabi_memclr>
c0de5828:	481c      	ldr	r0, [pc, #112]	@ (c0de589c <displaySettingsPage+0x84>)
c0de582a:	f000 fd49 	bl	c0de62c0 <OUTLINED_FUNCTION_1>
c0de582e:	dd14      	ble.n	c0de585a <displaySettingsPage+0x42>
c0de5830:	a904      	add	r1, sp, #16
c0de5832:	4628      	mov	r0, r5
c0de5834:	f7ff fe56 	bl	c0de54e4 <getContentPage>
c0de5838:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de583c:	b1e8      	cbz	r0, c0de587a <displaySettingsPage+0x62>
c0de583e:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5842:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5846:	481a      	ldr	r0, [pc, #104]	@ (c0de58b0 <displaySettingsPage+0x98>)
c0de5848:	4478      	add	r0, pc
c0de584a:	2b00      	cmp	r3, #0
c0de584c:	9000      	str	r0, [sp, #0]
c0de584e:	4620      	mov	r0, r4
c0de5850:	bf18      	it	ne
c0de5852:	2301      	movne	r3, #1
c0de5854:	f7ff fee8 	bl	c0de5628 <drawSwitchStep>
c0de5858:	e01b      	b.n	c0de5892 <displaySettingsPage+0x7a>
c0de585a:	4448      	add	r0, r9
c0de585c:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5860:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5862:	4b0f      	ldr	r3, [pc, #60]	@ (c0de58a0 <displaySettingsPage+0x88>)
c0de5864:	447b      	add	r3, pc
c0de5866:	290f      	cmp	r1, #15
c0de5868:	bf08      	it	eq
c0de586a:	4613      	moveq	r3, r2
c0de586c:	6343      	str	r3, [r0, #52]	@ 0x34
c0de586e:	480d      	ldr	r0, [pc, #52]	@ (c0de58a4 <displaySettingsPage+0x8c>)
c0de5870:	4478      	add	r0, pc
c0de5872:	9005      	str	r0, [sp, #20]
c0de5874:	480c      	ldr	r0, [pc, #48]	@ (c0de58a8 <displaySettingsPage+0x90>)
c0de5876:	4478      	add	r0, pc
c0de5878:	9007      	str	r0, [sp, #28]
c0de587a:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de587e:	9907      	ldr	r1, [sp, #28]
c0de5880:	4d0a      	ldr	r5, [pc, #40]	@ (c0de58ac <displaySettingsPage+0x94>)
c0de5882:	2000      	movs	r0, #0
c0de5884:	9002      	str	r0, [sp, #8]
c0de5886:	447d      	add	r5, pc
c0de5888:	e9cd 5000 	strd	r5, r0, [sp]
c0de588c:	4620      	mov	r0, r4
c0de588e:	f7ff fae9 	bl	c0de4e64 <drawStep>
c0de5892:	f001 fa76 	bl	c0de6d82 <nbgl_refresh>
c0de5896:	b00a      	add	sp, #40	@ 0x28
c0de5898:	bdb0      	pop	{r4, r5, r7, pc}
c0de589a:	bf00      	nop
c0de589c:	00000744 	.word	0x00000744
c0de58a0:	fffff1cd 	.word	0xfffff1cd
c0de58a4:	000024af 	.word	0x000024af
c0de58a8:	000020f6 	.word	0x000020f6
c0de58ac:	0000002b 	.word	0x0000002b
c0de58b0:	00000069 	.word	0x00000069

c0de58b4 <settingsCallback>:
c0de58b4:	b5e0      	push	{r5, r6, r7, lr}
c0de58b6:	4608      	mov	r0, r1
c0de58b8:	f10d 0107 	add.w	r1, sp, #7
c0de58bc:	f000 f80a 	bl	c0de58d4 <buttonGenericCallback>
c0de58c0:	b130      	cbz	r0, c0de58d0 <settingsCallback+0x1c>
c0de58c2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de58c6:	2100      	movs	r1, #0
c0de58c8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de58cc:	f7ff bfa4 	b.w	c0de5818 <displaySettingsPage>
c0de58d0:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de58d4 <buttonGenericCallback>:
c0de58d4:	b5b0      	push	{r4, r5, r7, lr}
c0de58d6:	b090      	sub	sp, #64	@ 0x40
c0de58d8:	460c      	mov	r4, r1
c0de58da:	4605      	mov	r5, r0
c0de58dc:	a801      	add	r0, sp, #4
c0de58de:	2138      	movs	r1, #56	@ 0x38
c0de58e0:	f001 ff66 	bl	c0de77b0 <__aeabi_memclr>
c0de58e4:	2d04      	cmp	r5, #4
c0de58e6:	d00d      	beq.n	c0de5904 <buttonGenericCallback+0x30>
c0de58e8:	2d01      	cmp	r5, #1
c0de58ea:	d012      	beq.n	c0de5912 <buttonGenericCallback+0x3e>
c0de58ec:	2d00      	cmp	r5, #0
c0de58ee:	d17c      	bne.n	c0de59ea <buttonGenericCallback+0x116>
c0de58f0:	483f      	ldr	r0, [pc, #252]	@ (c0de59f0 <buttonGenericCallback+0x11c>)
c0de58f2:	eb09 0100 	add.w	r1, r9, r0
c0de58f6:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de58fa:	2901      	cmp	r1, #1
c0de58fc:	db1d      	blt.n	c0de593a <buttonGenericCallback+0x66>
c0de58fe:	3901      	subs	r1, #1
c0de5900:	2008      	movs	r0, #8
c0de5902:	e013      	b.n	c0de592c <buttonGenericCallback+0x58>
c0de5904:	4c3a      	ldr	r4, [pc, #232]	@ (c0de59f0 <buttonGenericCallback+0x11c>)
c0de5906:	eb09 0004 	add.w	r0, r9, r4
c0de590a:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de590c:	b338      	cbz	r0, c0de595e <buttonGenericCallback+0x8a>
c0de590e:	4780      	blx	r0
c0de5910:	e06b      	b.n	c0de59ea <buttonGenericCallback+0x116>
c0de5912:	4837      	ldr	r0, [pc, #220]	@ (c0de59f0 <buttonGenericCallback+0x11c>)
c0de5914:	eb09 0100 	add.w	r1, r9, r0
c0de5918:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de591c:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de5920:	3901      	subs	r1, #1
c0de5922:	4281      	cmp	r1, r0
c0de5924:	dd61      	ble.n	c0de59ea <buttonGenericCallback+0x116>
c0de5926:	b2c0      	uxtb	r0, r0
c0de5928:	1c41      	adds	r1, r0, #1
c0de592a:	2000      	movs	r0, #0
c0de592c:	4a30      	ldr	r2, [pc, #192]	@ (c0de59f0 <buttonGenericCallback+0x11c>)
c0de592e:	444a      	add	r2, r9
c0de5930:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de5934:	7020      	strb	r0, [r4, #0]
c0de5936:	2001      	movs	r0, #1
c0de5938:	e058      	b.n	c0de59ec <buttonGenericCallback+0x118>
c0de593a:	eb09 0100 	add.w	r1, r9, r0
c0de593e:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5942:	2906      	cmp	r1, #6
c0de5944:	d151      	bne.n	c0de59ea <buttonGenericCallback+0x116>
c0de5946:	eb09 0100 	add.w	r1, r9, r0
c0de594a:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de594c:	2900      	cmp	r1, #0
c0de594e:	d04c      	beq.n	c0de59ea <buttonGenericCallback+0x116>
c0de5950:	4448      	add	r0, r9
c0de5952:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de5956:	2801      	cmp	r0, #1
c0de5958:	d047      	beq.n	c0de59ea <buttonGenericCallback+0x116>
c0de595a:	2008      	movs	r0, #8
c0de595c:	e7ea      	b.n	c0de5934 <buttonGenericCallback+0x60>
c0de595e:	eb09 0004 	add.w	r0, r9, r4
c0de5962:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5966:	2000      	movs	r0, #0
c0de5968:	2910      	cmp	r1, #16
c0de596a:	d83f      	bhi.n	c0de59ec <buttonGenericCallback+0x118>
c0de596c:	2201      	movs	r2, #1
c0de596e:	fa02 f101 	lsl.w	r1, r2, r1
c0de5972:	4a20      	ldr	r2, [pc, #128]	@ (c0de59f4 <buttonGenericCallback+0x120>)
c0de5974:	4211      	tst	r1, r2
c0de5976:	d039      	beq.n	c0de59ec <buttonGenericCallback+0x118>
c0de5978:	eb09 0004 	add.w	r0, r9, r4
c0de597c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5980:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5984:	aa01      	add	r2, sp, #4
c0de5986:	f7ff fe87 	bl	c0de5698 <getContentElemAtIdx>
c0de598a:	b370      	cbz	r0, c0de59ea <buttonGenericCallback+0x116>
c0de598c:	7801      	ldrb	r1, [r0, #0]
c0de598e:	4602      	mov	r2, r0
c0de5990:	2000      	movs	r0, #0
c0de5992:	b359      	cbz	r1, c0de59ec <buttonGenericCallback+0x118>
c0de5994:	290a      	cmp	r1, #10
c0de5996:	d009      	beq.n	c0de59ac <buttonGenericCallback+0xd8>
c0de5998:	2907      	cmp	r1, #7
c0de599a:	d00f      	beq.n	c0de59bc <buttonGenericCallback+0xe8>
c0de599c:	2909      	cmp	r1, #9
c0de599e:	d011      	beq.n	c0de59c4 <buttonGenericCallback+0xf0>
c0de59a0:	2903      	cmp	r1, #3
c0de59a2:	f04f 0100 	mov.w	r1, #0
c0de59a6:	d112      	bne.n	c0de59ce <buttonGenericCallback+0xfa>
c0de59a8:	7c10      	ldrb	r0, [r2, #16]
c0de59aa:	e005      	b.n	c0de59b8 <buttonGenericCallback+0xe4>
c0de59ac:	eb09 0004 	add.w	r0, r9, r4
c0de59b0:	6891      	ldr	r1, [r2, #8]
c0de59b2:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de59b6:	5c08      	ldrb	r0, [r1, r0]
c0de59b8:	2100      	movs	r1, #0
c0de59ba:	e008      	b.n	c0de59ce <buttonGenericCallback+0xfa>
c0de59bc:	6850      	ldr	r0, [r2, #4]
c0de59be:	2100      	movs	r1, #0
c0de59c0:	7a40      	ldrb	r0, [r0, #9]
c0de59c2:	e004      	b.n	c0de59ce <buttonGenericCallback+0xfa>
c0de59c4:	eb09 0004 	add.w	r0, r9, r4
c0de59c8:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de59cc:	7ad0      	ldrb	r0, [r2, #11]
c0de59ce:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de59d0:	b133      	cbz	r3, c0de59e0 <buttonGenericCallback+0x10c>
c0de59d2:	eb09 0104 	add.w	r1, r9, r4
c0de59d6:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de59da:	2100      	movs	r1, #0
c0de59dc:	4798      	blx	r3
c0de59de:	e004      	b.n	c0de59ea <buttonGenericCallback+0x116>
c0de59e0:	eb09 0204 	add.w	r2, r9, r4
c0de59e4:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de59e6:	b102      	cbz	r2, c0de59ea <buttonGenericCallback+0x116>
c0de59e8:	4790      	blx	r2
c0de59ea:	2000      	movs	r0, #0
c0de59ec:	b010      	add	sp, #64	@ 0x40
c0de59ee:	bdb0      	pop	{r4, r5, r7, pc}
c0de59f0:	00000744 	.word	0x00000744
c0de59f4:	0001c008 	.word	0x0001c008

c0de59f8 <displayHomePage>:
c0de59f8:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de59fc:	4680      	mov	r8, r0
c0de59fe:	4832      	ldr	r0, [pc, #200]	@ (c0de5ac8 <displayHomePage+0xd0>)
c0de5a00:	2200      	movs	r2, #0
c0de5a02:	eb09 0100 	add.w	r1, r9, r0
c0de5a06:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de5a08:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de5a0a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5a0c:	2202      	movs	r2, #2
c0de5a0e:	2d00      	cmp	r5, #0
c0de5a10:	463e      	mov	r6, r7
c0de5a12:	bf08      	it	eq
c0de5a14:	2201      	moveq	r2, #1
c0de5a16:	2f00      	cmp	r7, #0
c0de5a18:	bf18      	it	ne
c0de5a1a:	2601      	movne	r6, #1
c0de5a1c:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de5a20:	b183      	cbz	r3, c0de5a44 <displayHomePage+0x4c>
c0de5a22:	2401      	movs	r4, #1
c0de5a24:	2d00      	cmp	r5, #0
c0de5a26:	bf08      	it	eq
c0de5a28:	24ff      	moveq	r4, #255	@ 0xff
c0de5a2a:	429c      	cmp	r4, r3
c0de5a2c:	d111      	bne.n	c0de5a52 <displayHomePage+0x5a>
c0de5a2e:	eb09 0400 	add.w	r4, r9, r0
c0de5a32:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5a36:	f001 fbaf 	bl	c0de7198 <pic>
c0de5a3a:	4602      	mov	r2, r0
c0de5a3c:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de5a3e:	6880      	ldr	r0, [r0, #8]
c0de5a40:	6360      	str	r0, [r4, #52]	@ 0x34
c0de5a42:	e004      	b.n	c0de5a4e <displayHomePage+0x56>
c0de5a44:	eb09 0100 	add.w	r1, r9, r0
c0de5a48:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de5a4c:	b312      	cbz	r2, c0de5a94 <displayHomePage+0x9c>
c0de5a4e:	2300      	movs	r3, #0
c0de5a50:	e02c      	b.n	c0de5aac <displayHomePage+0xb4>
c0de5a52:	2f00      	cmp	r7, #0
c0de5a54:	4614      	mov	r4, r2
c0de5a56:	bf08      	it	eq
c0de5a58:	24ff      	moveq	r4, #255	@ 0xff
c0de5a5a:	429c      	cmp	r4, r3
c0de5a5c:	d109      	bne.n	c0de5a72 <displayHomePage+0x7a>
c0de5a5e:	491c      	ldr	r1, [pc, #112]	@ (c0de5ad0 <displayHomePage+0xd8>)
c0de5a60:	4448      	add	r0, r9
c0de5a62:	2300      	movs	r3, #0
c0de5a64:	4479      	add	r1, pc
c0de5a66:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a68:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5ad4 <displayHomePage+0xdc>)
c0de5a6a:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5ad8 <displayHomePage+0xe0>)
c0de5a6c:	447d      	add	r5, pc
c0de5a6e:	447a      	add	r2, pc
c0de5a70:	e01c      	b.n	c0de5aac <displayHomePage+0xb4>
c0de5a72:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de5a74:	4432      	add	r2, r6
c0de5a76:	4448      	add	r0, r9
c0de5a78:	2900      	cmp	r1, #0
c0de5a7a:	bf08      	it	eq
c0de5a7c:	22ff      	moveq	r2, #255	@ 0xff
c0de5a7e:	429a      	cmp	r2, r3
c0de5a80:	d10d      	bne.n	c0de5a9e <displayHomePage+0xa6>
c0de5a82:	4916      	ldr	r1, [pc, #88]	@ (c0de5adc <displayHomePage+0xe4>)
c0de5a84:	2300      	movs	r3, #0
c0de5a86:	4479      	add	r1, pc
c0de5a88:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a8a:	4d15      	ldr	r5, [pc, #84]	@ (c0de5ae0 <displayHomePage+0xe8>)
c0de5a8c:	4a15      	ldr	r2, [pc, #84]	@ (c0de5ae4 <displayHomePage+0xec>)
c0de5a8e:	447d      	add	r5, pc
c0de5a90:	447a      	add	r2, pc
c0de5a92:	e00b      	b.n	c0de5aac <displayHomePage+0xb4>
c0de5a94:	4448      	add	r0, r9
c0de5a96:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de5a98:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5acc <displayHomePage+0xd4>)
c0de5a9a:	447b      	add	r3, pc
c0de5a9c:	e006      	b.n	c0de5aac <displayHomePage+0xb4>
c0de5a9e:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de5aa0:	2300      	movs	r3, #0
c0de5aa2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5aa4:	4d10      	ldr	r5, [pc, #64]	@ (c0de5ae8 <displayHomePage+0xf0>)
c0de5aa6:	4a11      	ldr	r2, [pc, #68]	@ (c0de5aec <displayHomePage+0xf4>)
c0de5aa8:	447d      	add	r5, pc
c0de5aaa:	447a      	add	r2, pc
c0de5aac:	4910      	ldr	r1, [pc, #64]	@ (c0de5af0 <displayHomePage+0xf8>)
c0de5aae:	2000      	movs	r0, #0
c0de5ab0:	9002      	str	r0, [sp, #8]
c0de5ab2:	4479      	add	r1, pc
c0de5ab4:	e9cd 1000 	strd	r1, r0, [sp]
c0de5ab8:	4640      	mov	r0, r8
c0de5aba:	4629      	mov	r1, r5
c0de5abc:	f7ff f9d2 	bl	c0de4e64 <drawStep>
c0de5ac0:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5ac4:	f001 b95d 	b.w	c0de6d82 <nbgl_refresh>
c0de5ac8:	00000744 	.word	0x00000744
c0de5acc:	00002316 	.word	0x00002316
c0de5ad0:	0000008d 	.word	0x0000008d
c0de5ad4:	00001f23 	.word	0x00001f23
c0de5ad8:	0000221d 	.word	0x0000221d
c0de5adc:	00000073 	.word	0x00000073
c0de5ae0:	00001e6c 	.word	0x00001e6c
c0de5ae4:	000022c7 	.word	0x000022c7
c0de5ae8:	00001e75 	.word	0x00001e75
c0de5aec:	00002313 	.word	0x00002313
c0de5af0:	0000006b 	.word	0x0000006b

c0de5af4 <startUseCaseSettings>:
c0de5af4:	2000      	movs	r0, #0
c0de5af6:	f7fe bf61 	b.w	c0de49bc <startUseCaseSettingsAtPage>
	...

c0de5afc <startUseCaseInfo>:
c0de5afc:	4807      	ldr	r0, [pc, #28]	@ (c0de5b1c <startUseCaseInfo+0x20>)
c0de5afe:	210d      	movs	r1, #13
c0de5b00:	4448      	add	r0, r9
c0de5b02:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5b06:	2100      	movs	r1, #0
c0de5b08:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5b0c:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5b0e:	7b09      	ldrb	r1, [r1, #12]
c0de5b10:	3101      	adds	r1, #1
c0de5b12:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de5b16:	2000      	movs	r0, #0
c0de5b18:	f000 b810 	b.w	c0de5b3c <displayInfoPage>
c0de5b1c:	00000744 	.word	0x00000744

c0de5b20 <homeCallback>:
c0de5b20:	b5e0      	push	{r5, r6, r7, lr}
c0de5b22:	4608      	mov	r0, r1
c0de5b24:	f10d 0107 	add.w	r1, sp, #7
c0de5b28:	f7ff fed4 	bl	c0de58d4 <buttonGenericCallback>
c0de5b2c:	b128      	cbz	r0, c0de5b3a <homeCallback+0x1a>
c0de5b2e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5b32:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5b36:	f7ff bf5f 	b.w	c0de59f8 <displayHomePage>
c0de5b3a:	bd8c      	pop	{r2, r3, r7, pc}

c0de5b3c <displayInfoPage>:
c0de5b3c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b3e:	4604      	mov	r4, r0
c0de5b40:	4816      	ldr	r0, [pc, #88]	@ (c0de5b9c <displayInfoPage+0x60>)
c0de5b42:	f000 fbbd 	bl	c0de62c0 <OUTLINED_FUNCTION_1>
c0de5b46:	dd11      	ble.n	c0de5b6c <displayInfoPage+0x30>
c0de5b48:	eb09 0700 	add.w	r7, r9, r0
c0de5b4c:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b4e:	6800      	ldr	r0, [r0, #0]
c0de5b50:	4e13      	ldr	r6, [pc, #76]	@ (c0de5ba0 <displayInfoPage+0x64>)
c0de5b52:	447e      	add	r6, pc
c0de5b54:	47b0      	blx	r6
c0de5b56:	f000 fbd5 	bl	c0de6304 <OUTLINED_FUNCTION_7>
c0de5b5a:	4605      	mov	r5, r0
c0de5b5c:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5b5e:	6840      	ldr	r0, [r0, #4]
c0de5b60:	47b0      	blx	r6
c0de5b62:	f000 fbcf 	bl	c0de6304 <OUTLINED_FUNCTION_7>
c0de5b66:	4603      	mov	r3, r0
c0de5b68:	2100      	movs	r1, #0
c0de5b6a:	e008      	b.n	c0de5b7e <displayInfoPage+0x42>
c0de5b6c:	490d      	ldr	r1, [pc, #52]	@ (c0de5ba4 <displayInfoPage+0x68>)
c0de5b6e:	4448      	add	r0, r9
c0de5b70:	2300      	movs	r3, #0
c0de5b72:	4479      	add	r1, pc
c0de5b74:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5b76:	490c      	ldr	r1, [pc, #48]	@ (c0de5ba8 <displayInfoPage+0x6c>)
c0de5b78:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5bac <displayInfoPage+0x70>)
c0de5b7a:	4479      	add	r1, pc
c0de5b7c:	447d      	add	r5, pc
c0de5b7e:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5bb0 <displayInfoPage+0x74>)
c0de5b80:	2002      	movs	r0, #2
c0de5b82:	2200      	movs	r2, #0
c0de5b84:	9002      	str	r0, [sp, #8]
c0de5b86:	4620      	mov	r0, r4
c0de5b88:	447e      	add	r6, pc
c0de5b8a:	e9cd 6200 	strd	r6, r2, [sp]
c0de5b8e:	462a      	mov	r2, r5
c0de5b90:	f7ff f968 	bl	c0de4e64 <drawStep>
c0de5b94:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5b98:	f001 b8f3 	b.w	c0de6d82 <nbgl_refresh>
c0de5b9c:	00000744 	.word	0x00000744
c0de5ba0:	00001643 	.word	0x00001643
c0de5ba4:	ffffeebf 	.word	0xffffeebf
c0de5ba8:	00001df2 	.word	0x00001df2
c0de5bac:	000021a3 	.word	0x000021a3
c0de5bb0:	00000029 	.word	0x00000029

c0de5bb4 <infoCallback>:
c0de5bb4:	b5e0      	push	{r5, r6, r7, lr}
c0de5bb6:	4608      	mov	r0, r1
c0de5bb8:	f10d 0107 	add.w	r1, sp, #7
c0de5bbc:	f7ff fe8a 	bl	c0de58d4 <buttonGenericCallback>
c0de5bc0:	b128      	cbz	r0, c0de5bce <infoCallback+0x1a>
c0de5bc2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5bc6:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5bca:	f7ff bfb7 	b.w	c0de5b3c <displayInfoPage>
c0de5bce:	bd8c      	pop	{r2, r3, r7, pc}

c0de5bd0 <displayWarningStep>:
c0de5bd0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5bd2:	2000      	movs	r0, #0
c0de5bd4:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5bd8:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de5bdc:	482b      	ldr	r0, [pc, #172]	@ (c0de5c8c <displayWarningStep+0xbc>)
c0de5bde:	eb09 0100 	add.w	r1, r9, r0
c0de5be2:	69c9      	ldr	r1, [r1, #28]
c0de5be4:	680a      	ldr	r2, [r1, #0]
c0de5be6:	06d3      	lsls	r3, r2, #27
c0de5be8:	d41b      	bmi.n	c0de5c22 <displayWarningStep+0x52>
c0de5bea:	2a00      	cmp	r2, #0
c0de5bec:	d145      	bne.n	c0de5c7a <displayWarningStep+0xaa>
c0de5bee:	69ca      	ldr	r2, [r1, #28]
c0de5bf0:	2a00      	cmp	r2, #0
c0de5bf2:	d042      	beq.n	c0de5c7a <displayWarningStep+0xaa>
c0de5bf4:	eb09 0300 	add.w	r3, r9, r0
c0de5bf8:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de5bfc:	2b00      	cmp	r3, #0
c0de5bfe:	d03e      	beq.n	c0de5c7e <displayWarningStep+0xae>
c0de5c00:	4448      	add	r0, r9
c0de5c02:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5c06:	3801      	subs	r0, #1
c0de5c08:	4298      	cmp	r0, r3
c0de5c0a:	d11d      	bne.n	c0de5c48 <displayWarningStep+0x78>
c0de5c0c:	6948      	ldr	r0, [r1, #20]
c0de5c0e:	7901      	ldrb	r1, [r0, #4]
c0de5c10:	bb99      	cbnz	r1, c0de5c7a <displayWarningStep+0xaa>
c0de5c12:	68c1      	ldr	r1, [r0, #12]
c0de5c14:	6982      	ldr	r2, [r0, #24]
c0de5c16:	6a00      	ldr	r0, [r0, #32]
c0de5c18:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de5c1c:	2003      	movs	r0, #3
c0de5c1e:	9104      	str	r1, [sp, #16]
c0de5c20:	e01e      	b.n	c0de5c60 <displayWarningStep+0x90>
c0de5c22:	eb09 0100 	add.w	r1, r9, r0
c0de5c26:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5c2a:	b179      	cbz	r1, c0de5c4c <displayWarningStep+0x7c>
c0de5c2c:	4448      	add	r0, r9
c0de5c2e:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5c32:	3801      	subs	r0, #1
c0de5c34:	4288      	cmp	r0, r1
c0de5c36:	d107      	bne.n	c0de5c48 <displayWarningStep+0x78>
c0de5c38:	aa02      	add	r2, sp, #8
c0de5c3a:	2000      	movs	r0, #0
c0de5c3c:	f102 0108 	add.w	r1, r2, #8
c0de5c40:	f000 f82e 	bl	c0de5ca0 <getLastPageInfo>
c0de5c44:	200a      	movs	r0, #10
c0de5c46:	e00b      	b.n	c0de5c60 <displayWarningStep+0x90>
c0de5c48:	2000      	movs	r0, #0
c0de5c4a:	e009      	b.n	c0de5c60 <displayWarningStep+0x90>
c0de5c4c:	4810      	ldr	r0, [pc, #64]	@ (c0de5c90 <displayWarningStep+0xc0>)
c0de5c4e:	4478      	add	r0, pc
c0de5c50:	9003      	str	r0, [sp, #12]
c0de5c52:	4810      	ldr	r0, [pc, #64]	@ (c0de5c94 <displayWarningStep+0xc4>)
c0de5c54:	4478      	add	r0, pc
c0de5c56:	9002      	str	r0, [sp, #8]
c0de5c58:	480f      	ldr	r0, [pc, #60]	@ (c0de5c98 <displayWarningStep+0xc8>)
c0de5c5a:	4478      	add	r0, pc
c0de5c5c:	9004      	str	r0, [sp, #16]
c0de5c5e:	2001      	movs	r0, #1
c0de5c60:	2101      	movs	r1, #1
c0de5c62:	2200      	movs	r2, #0
c0de5c64:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5c68:	2100      	movs	r1, #0
c0de5c6a:	9100      	str	r1, [sp, #0]
c0de5c6c:	490b      	ldr	r1, [pc, #44]	@ (c0de5c9c <displayWarningStep+0xcc>)
c0de5c6e:	ab02      	add	r3, sp, #8
c0de5c70:	4479      	add	r1, pc
c0de5c72:	f7fe fc93 	bl	c0de459c <nbgl_stepDrawCenteredInfo>
c0de5c76:	f001 f884 	bl	c0de6d82 <nbgl_refresh>
c0de5c7a:	b006      	add	sp, #24
c0de5c7c:	bd80      	pop	{r7, pc}
c0de5c7e:	6850      	ldr	r0, [r2, #4]
c0de5c80:	6911      	ldr	r1, [r2, #16]
c0de5c82:	6992      	ldr	r2, [r2, #24]
c0de5c84:	9004      	str	r0, [sp, #16]
c0de5c86:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5c8a:	e7e8      	b.n	c0de5c5e <displayWarningStep+0x8e>
c0de5c8c:	00000744 	.word	0x00000744
c0de5c90:	00001f38 	.word	0x00001f38
c0de5c94:	00002065 	.word	0x00002065
c0de5c98:	00001df7 	.word	0x00001df7
c0de5c9c:	00000155 	.word	0x00000155

c0de5ca0 <getLastPageInfo>:
c0de5ca0:	b170      	cbz	r0, c0de5cc0 <getLastPageInfo+0x20>
c0de5ca2:	4833      	ldr	r0, [pc, #204]	@ (c0de5d70 <getLastPageInfo+0xd0>)
c0de5ca4:	4478      	add	r0, pc
c0de5ca6:	6008      	str	r0, [r1, #0]
c0de5ca8:	4830      	ldr	r0, [pc, #192]	@ (c0de5d6c <getLastPageInfo+0xcc>)
c0de5caa:	eb09 0100 	add.w	r1, r9, r0
c0de5cae:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5cb2:	2904      	cmp	r1, #4
c0de5cb4:	d113      	bne.n	c0de5cde <getLastPageInfo+0x3e>
c0de5cb6:	482f      	ldr	r0, [pc, #188]	@ (c0de5d74 <getLastPageInfo+0xd4>)
c0de5cb8:	492f      	ldr	r1, [pc, #188]	@ (c0de5d78 <getLastPageInfo+0xd8>)
c0de5cba:	4478      	add	r0, pc
c0de5cbc:	4479      	add	r1, pc
c0de5cbe:	e04f      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5cc0:	4838      	ldr	r0, [pc, #224]	@ (c0de5da4 <getLastPageInfo+0x104>)
c0de5cc2:	4478      	add	r0, pc
c0de5cc4:	6008      	str	r0, [r1, #0]
c0de5cc6:	4829      	ldr	r0, [pc, #164]	@ (c0de5d6c <getLastPageInfo+0xcc>)
c0de5cc8:	eb09 0100 	add.w	r1, r9, r0
c0de5ccc:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5cd0:	2904      	cmp	r1, #4
c0de5cd2:	d10b      	bne.n	c0de5cec <getLastPageInfo+0x4c>
c0de5cd4:	4834      	ldr	r0, [pc, #208]	@ (c0de5da8 <getLastPageInfo+0x108>)
c0de5cd6:	4935      	ldr	r1, [pc, #212]	@ (c0de5dac <getLastPageInfo+0x10c>)
c0de5cd8:	4478      	add	r0, pc
c0de5cda:	4479      	add	r1, pc
c0de5cdc:	e040      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5cde:	eb09 0100 	add.w	r1, r9, r0
c0de5ce2:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5ce4:	b171      	cbz	r1, c0de5d04 <getLastPageInfo+0x64>
c0de5ce6:	4825      	ldr	r0, [pc, #148]	@ (c0de5d7c <getLastPageInfo+0xdc>)
c0de5ce8:	4478      	add	r0, pc
c0de5cea:	e039      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5cec:	4448      	add	r0, r9
c0de5cee:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5cf0:	f010 0007 	ands.w	r0, r0, #7
c0de5cf4:	d017      	beq.n	c0de5d26 <getLastPageInfo+0x86>
c0de5cf6:	2801      	cmp	r0, #1
c0de5cf8:	d11a      	bne.n	c0de5d30 <getLastPageInfo+0x90>
c0de5cfa:	482f      	ldr	r0, [pc, #188]	@ (c0de5db8 <getLastPageInfo+0x118>)
c0de5cfc:	492f      	ldr	r1, [pc, #188]	@ (c0de5dbc <getLastPageInfo+0x11c>)
c0de5cfe:	4478      	add	r0, pc
c0de5d00:	4479      	add	r1, pc
c0de5d02:	e02d      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5d04:	4448      	add	r0, r9
c0de5d06:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5d08:	f000 0107 	and.w	r1, r0, #7
c0de5d0c:	2901      	cmp	r1, #1
c0de5d0e:	d014      	beq.n	c0de5d3a <getLastPageInfo+0x9a>
c0de5d10:	b9e9      	cbnz	r1, c0de5d4e <getLastPageInfo+0xae>
c0de5d12:	0640      	lsls	r0, r0, #25
c0de5d14:	481a      	ldr	r0, [pc, #104]	@ (c0de5d80 <getLastPageInfo+0xe0>)
c0de5d16:	491b      	ldr	r1, [pc, #108]	@ (c0de5d84 <getLastPageInfo+0xe4>)
c0de5d18:	4478      	add	r0, pc
c0de5d1a:	4479      	add	r1, pc
c0de5d1c:	bf58      	it	pl
c0de5d1e:	4601      	movpl	r1, r0
c0de5d20:	4819      	ldr	r0, [pc, #100]	@ (c0de5d88 <getLastPageInfo+0xe8>)
c0de5d22:	4478      	add	r0, pc
c0de5d24:	e01c      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5d26:	4822      	ldr	r0, [pc, #136]	@ (c0de5db0 <getLastPageInfo+0x110>)
c0de5d28:	4922      	ldr	r1, [pc, #136]	@ (c0de5db4 <getLastPageInfo+0x114>)
c0de5d2a:	4478      	add	r0, pc
c0de5d2c:	4479      	add	r1, pc
c0de5d2e:	e017      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5d30:	4823      	ldr	r0, [pc, #140]	@ (c0de5dc0 <getLastPageInfo+0x120>)
c0de5d32:	4924      	ldr	r1, [pc, #144]	@ (c0de5dc4 <getLastPageInfo+0x124>)
c0de5d34:	4478      	add	r0, pc
c0de5d36:	4479      	add	r1, pc
c0de5d38:	e012      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5d3a:	0640      	lsls	r0, r0, #25
c0de5d3c:	4813      	ldr	r0, [pc, #76]	@ (c0de5d8c <getLastPageInfo+0xec>)
c0de5d3e:	4914      	ldr	r1, [pc, #80]	@ (c0de5d90 <getLastPageInfo+0xf0>)
c0de5d40:	4478      	add	r0, pc
c0de5d42:	4479      	add	r1, pc
c0de5d44:	bf58      	it	pl
c0de5d46:	4601      	movpl	r1, r0
c0de5d48:	4812      	ldr	r0, [pc, #72]	@ (c0de5d94 <getLastPageInfo+0xf4>)
c0de5d4a:	4478      	add	r0, pc
c0de5d4c:	e008      	b.n	c0de5d60 <getLastPageInfo+0xc0>
c0de5d4e:	0640      	lsls	r0, r0, #25
c0de5d50:	4811      	ldr	r0, [pc, #68]	@ (c0de5d98 <getLastPageInfo+0xf8>)
c0de5d52:	4912      	ldr	r1, [pc, #72]	@ (c0de5d9c <getLastPageInfo+0xfc>)
c0de5d54:	4478      	add	r0, pc
c0de5d56:	4479      	add	r1, pc
c0de5d58:	bf58      	it	pl
c0de5d5a:	4601      	movpl	r1, r0
c0de5d5c:	4810      	ldr	r0, [pc, #64]	@ (c0de5da0 <getLastPageInfo+0x100>)
c0de5d5e:	4478      	add	r0, pc
c0de5d60:	6011      	str	r1, [r2, #0]
c0de5d62:	4902      	ldr	r1, [pc, #8]	@ (c0de5d6c <getLastPageInfo+0xcc>)
c0de5d64:	4449      	add	r1, r9
c0de5d66:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5d68:	4770      	bx	lr
c0de5d6a:	bf00      	nop
c0de5d6c:	00000744 	.word	0x00000744
c0de5d70:	00001d8a 	.word	0x00001d8a
c0de5d74:	0000018f 	.word	0x0000018f
c0de5d78:	0000210a 	.word	0x0000210a
c0de5d7c:	00000161 	.word	0x00000161
c0de5d80:	00001edd 	.word	0x00001edd
c0de5d84:	00001f7e 	.word	0x00001f7e
c0de5d88:	00000127 	.word	0x00000127
c0de5d8c:	00001e99 	.word	0x00001e99
c0de5d90:	00001ed7 	.word	0x00001ed7
c0de5d94:	000000ff 	.word	0x000000ff
c0de5d98:	0000200c 	.word	0x0000200c
c0de5d9c:	00001f77 	.word	0x00001f77
c0de5da0:	000000eb 	.word	0x000000eb
c0de5da4:	00001cf0 	.word	0x00001cf0
c0de5da8:	00000185 	.word	0x00000185
c0de5dac:	00001f82 	.word	0x00001f82
c0de5db0:	00000133 	.word	0x00000133
c0de5db4:	00001eda 	.word	0x00001eda
c0de5db8:	0000015f 	.word	0x0000015f
c0de5dbc:	0000206f 	.word	0x0000206f
c0de5dc0:	00000129 	.word	0x00000129
c0de5dc4:	00002048 	.word	0x00002048

c0de5dc8 <warningNavigate>:
c0de5dc8:	2904      	cmp	r1, #4
c0de5dca:	d009      	beq.n	c0de5de0 <warningNavigate+0x18>
c0de5dcc:	2901      	cmp	r1, #1
c0de5dce:	d01f      	beq.n	c0de5e10 <warningNavigate+0x48>
c0de5dd0:	b9e9      	cbnz	r1, c0de5e0e <warningNavigate+0x46>
c0de5dd2:	481d      	ldr	r0, [pc, #116]	@ (c0de5e48 <warningNavigate+0x80>)
c0de5dd4:	4448      	add	r0, r9
c0de5dd6:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5dda:	b368      	cbz	r0, c0de5e38 <warningNavigate+0x70>
c0de5ddc:	3801      	subs	r0, #1
c0de5dde:	e022      	b.n	c0de5e26 <warningNavigate+0x5e>
c0de5de0:	4819      	ldr	r0, [pc, #100]	@ (c0de5e48 <warningNavigate+0x80>)
c0de5de2:	eb09 0100 	add.w	r1, r9, r0
c0de5de6:	69c9      	ldr	r1, [r1, #28]
c0de5de8:	7809      	ldrb	r1, [r1, #0]
c0de5dea:	06c9      	lsls	r1, r1, #27
c0de5dec:	d50f      	bpl.n	c0de5e0e <warningNavigate+0x46>
c0de5dee:	eb09 0100 	add.w	r1, r9, r0
c0de5df2:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5df6:	b321      	cbz	r1, c0de5e42 <warningNavigate+0x7a>
c0de5df8:	eb09 0200 	add.w	r2, r9, r0
c0de5dfc:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5e00:	3a01      	subs	r2, #1
c0de5e02:	428a      	cmp	r2, r1
c0de5e04:	d103      	bne.n	c0de5e0e <warningNavigate+0x46>
c0de5e06:	4448      	add	r0, r9
c0de5e08:	6a01      	ldr	r1, [r0, #32]
c0de5e0a:	2000      	movs	r0, #0
c0de5e0c:	4708      	bx	r1
c0de5e0e:	4770      	bx	lr
c0de5e10:	480d      	ldr	r0, [pc, #52]	@ (c0de5e48 <warningNavigate+0x80>)
c0de5e12:	eb09 0200 	add.w	r2, r9, r0
c0de5e16:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5e1a:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5e1e:	3a01      	subs	r2, #1
c0de5e20:	428a      	cmp	r2, r1
c0de5e22:	dd05      	ble.n	c0de5e30 <warningNavigate+0x68>
c0de5e24:	1c48      	adds	r0, r1, #1
c0de5e26:	4908      	ldr	r1, [pc, #32]	@ (c0de5e48 <warningNavigate+0x80>)
c0de5e28:	4449      	add	r1, r9
c0de5e2a:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5e2e:	e003      	b.n	c0de5e38 <warningNavigate+0x70>
c0de5e30:	4448      	add	r0, r9
c0de5e32:	69c0      	ldr	r0, [r0, #28]
c0de5e34:	6801      	ldr	r1, [r0, #0]
c0de5e36:	b109      	cbz	r1, c0de5e3c <warningNavigate+0x74>
c0de5e38:	f7ff beca 	b.w	c0de5bd0 <displayWarningStep>
c0de5e3c:	69c0      	ldr	r0, [r0, #28]
c0de5e3e:	2800      	cmp	r0, #0
c0de5e40:	d0fa      	beq.n	c0de5e38 <warningNavigate+0x70>
c0de5e42:	f000 b817 	b.w	c0de5e74 <launchReviewAfterWarning>
c0de5e46:	bf00      	nop
c0de5e48:	00000744 	.word	0x00000744

c0de5e4c <onReviewAccept>:
c0de5e4c:	4803      	ldr	r0, [pc, #12]	@ (c0de5e5c <onReviewAccept+0x10>)
c0de5e4e:	4448      	add	r0, r9
c0de5e50:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e52:	b109      	cbz	r1, c0de5e58 <onReviewAccept+0xc>
c0de5e54:	2001      	movs	r0, #1
c0de5e56:	4708      	bx	r1
c0de5e58:	4770      	bx	lr
c0de5e5a:	bf00      	nop
c0de5e5c:	00000744 	.word	0x00000744

c0de5e60 <onReviewReject>:
c0de5e60:	4803      	ldr	r0, [pc, #12]	@ (c0de5e70 <onReviewReject+0x10>)
c0de5e62:	4448      	add	r0, r9
c0de5e64:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5e66:	b109      	cbz	r1, c0de5e6c <onReviewReject+0xc>
c0de5e68:	2000      	movs	r0, #0
c0de5e6a:	4708      	bx	r1
c0de5e6c:	4770      	bx	lr
c0de5e6e:	bf00      	nop
c0de5e70:	00000744 	.word	0x00000744

c0de5e74 <launchReviewAfterWarning>:
c0de5e74:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5e76:	480c      	ldr	r0, [pc, #48]	@ (c0de5ea8 <launchReviewAfterWarning+0x34>)
c0de5e78:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5e7c:	2905      	cmp	r1, #5
c0de5e7e:	d00d      	beq.n	c0de5e9c <launchReviewAfterWarning+0x28>
c0de5e80:	2902      	cmp	r1, #2
c0de5e82:	bf18      	it	ne
c0de5e84:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e86:	4448      	add	r0, r9
c0de5e88:	1d06      	adds	r6, r0, #4
c0de5e8a:	6a00      	ldr	r0, [r0, #32]
c0de5e8c:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5e8e:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5e92:	9003      	str	r0, [sp, #12]
c0de5e94:	2002      	movs	r0, #2
c0de5e96:	f7fe fe23 	bl	c0de4ae0 <useCaseReview>
c0de5e9a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5e9c:	2000      	movs	r0, #0
c0de5e9e:	b004      	add	sp, #16
c0de5ea0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5ea4:	f7ff b8fa 	b.w	c0de509c <displayStreamingReviewPage>
c0de5ea8:	00000744 	.word	0x00000744

c0de5eac <buttonSkipCallback>:
c0de5eac:	b5b0      	push	{r4, r5, r7, lr}
c0de5eae:	2904      	cmp	r1, #4
c0de5eb0:	d00a      	beq.n	c0de5ec8 <buttonSkipCallback+0x1c>
c0de5eb2:	2901      	cmp	r1, #1
c0de5eb4:	d017      	beq.n	c0de5ee6 <buttonSkipCallback+0x3a>
c0de5eb6:	bbb9      	cbnz	r1, c0de5f28 <buttonSkipCallback+0x7c>
c0de5eb8:	4829      	ldr	r0, [pc, #164]	@ (c0de5f60 <buttonSkipCallback+0xb4>)
c0de5eba:	eb09 0100 	add.w	r1, r9, r0
c0de5ebe:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5ec2:	b391      	cbz	r1, c0de5f2a <buttonSkipCallback+0x7e>
c0de5ec4:	2008      	movs	r0, #8
c0de5ec6:	e02a      	b.n	c0de5f1e <buttonSkipCallback+0x72>
c0de5ec8:	4825      	ldr	r0, [pc, #148]	@ (c0de5f60 <buttonSkipCallback+0xb4>)
c0de5eca:	eb09 0100 	add.w	r1, r9, r0
c0de5ece:	4448      	add	r0, r9
c0de5ed0:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5ed4:	2900      	cmp	r1, #0
c0de5ed6:	d03f      	beq.n	c0de5f58 <buttonSkipCallback+0xac>
c0de5ed8:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5edc:	3902      	subs	r1, #2
c0de5ede:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5ee2:	2000      	movs	r0, #0
c0de5ee4:	e030      	b.n	c0de5f48 <buttonSkipCallback+0x9c>
c0de5ee6:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5f60 <buttonSkipCallback+0xb4>)
c0de5ee8:	eb09 0002 	add.w	r0, r9, r2
c0de5eec:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5ef0:	2808      	cmp	r0, #8
c0de5ef2:	d113      	bne.n	c0de5f1c <buttonSkipCallback+0x70>
c0de5ef4:	eb09 0002 	add.w	r0, r9, r2
c0de5ef8:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5efc:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5f00:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5f04:	1e45      	subs	r5, r0, #1
c0de5f06:	2000      	movs	r0, #0
c0de5f08:	b2e1      	uxtb	r1, r4
c0de5f0a:	429d      	cmp	r5, r3
c0de5f0c:	bfc8      	it	gt
c0de5f0e:	42a3      	cmpgt	r3, r4
c0de5f10:	dd19      	ble.n	c0de5f46 <buttonSkipCallback+0x9a>
c0de5f12:	eb09 0002 	add.w	r0, r9, r2
c0de5f16:	1c59      	adds	r1, r3, #1
c0de5f18:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5f1c:	2000      	movs	r0, #0
c0de5f1e:	4910      	ldr	r1, [pc, #64]	@ (c0de5f60 <buttonSkipCallback+0xb4>)
c0de5f20:	4449      	add	r1, r9
c0de5f22:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5f26:	e00e      	b.n	c0de5f46 <buttonSkipCallback+0x9a>
c0de5f28:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f2a:	eb09 0100 	add.w	r1, r9, r0
c0de5f2e:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5f32:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5f36:	b2d9      	uxtb	r1, r3
c0de5f38:	429a      	cmp	r2, r3
c0de5f3a:	dd03      	ble.n	c0de5f44 <buttonSkipCallback+0x98>
c0de5f3c:	4448      	add	r0, r9
c0de5f3e:	3a01      	subs	r2, #1
c0de5f40:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5f44:	2008      	movs	r0, #8
c0de5f46:	b119      	cbz	r1, c0de5f50 <buttonSkipCallback+0xa4>
c0de5f48:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f4c:	f7fe be9e 	b.w	c0de4c8c <displayReviewPage>
c0de5f50:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f54:	f7ff b8a2 	b.w	c0de509c <displayStreamingReviewPage>
c0de5f58:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5f5a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f5e:	4700      	bx	r0
c0de5f60:	00000744 	.word	0x00000744

c0de5f64 <displayAliasFullValue>:
c0de5f64:	b570      	push	{r4, r5, r6, lr}
c0de5f66:	b088      	sub	sp, #32
c0de5f68:	4c1a      	ldr	r4, [pc, #104]	@ (c0de5fd4 <displayAliasFullValue+0x70>)
c0de5f6a:	f10d 0213 	add.w	r2, sp, #19
c0de5f6e:	eb09 0504 	add.w	r5, r9, r4
c0de5f72:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5f74:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5f78:	ab05      	add	r3, sp, #20
c0de5f7a:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5f7e:	9202      	str	r2, [sp, #8]
c0de5f80:	e9cd 6300 	strd	r6, r3, [sp]
c0de5f84:	aa07      	add	r2, sp, #28
c0de5f86:	ab06      	add	r3, sp, #24
c0de5f88:	f7ff fbca 	bl	c0de5720 <getPairData>
c0de5f8c:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5f8e:	b178      	cbz	r0, c0de5fb0 <displayAliasFullValue+0x4c>
c0de5f90:	eb09 0104 	add.w	r1, r9, r4
c0de5f94:	2200      	movs	r2, #0
c0de5f96:	664a      	str	r2, [r1, #100]	@ 0x64
c0de5f98:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de5f9c:	7d01      	ldrb	r1, [r0, #20]
c0de5f9e:	2901      	cmp	r1, #1
c0de5fa0:	d008      	beq.n	c0de5fb4 <displayAliasFullValue+0x50>
c0de5fa2:	2905      	cmp	r1, #5
c0de5fa4:	d008      	beq.n	c0de5fb8 <displayAliasFullValue+0x54>
c0de5fa6:	2904      	cmp	r1, #4
c0de5fa8:	d102      	bne.n	c0de5fb0 <displayAliasFullValue+0x4c>
c0de5faa:	6900      	ldr	r0, [r0, #16]
c0de5fac:	300c      	adds	r0, #12
c0de5fae:	e005      	b.n	c0de5fbc <displayAliasFullValue+0x58>
c0de5fb0:	b008      	add	sp, #32
c0de5fb2:	bd70      	pop	{r4, r5, r6, pc}
c0de5fb4:	2002      	movs	r0, #2
c0de5fb6:	e003      	b.n	c0de5fc0 <displayAliasFullValue+0x5c>
c0de5fb8:	6900      	ldr	r0, [r0, #16]
c0de5fba:	3008      	adds	r0, #8
c0de5fbc:	7800      	ldrb	r0, [r0, #0]
c0de5fbe:	3001      	adds	r0, #1
c0de5fc0:	eb09 0104 	add.w	r1, r9, r4
c0de5fc4:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de5fc8:	2000      	movs	r0, #0
c0de5fca:	b008      	add	sp, #32
c0de5fcc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5fd0:	f000 b814 	b.w	c0de5ffc <displayExtensionStep>
c0de5fd4:	00000744 	.word	0x00000744

c0de5fd8 <reviewCallback>:
c0de5fd8:	b5e0      	push	{r5, r6, r7, lr}
c0de5fda:	4608      	mov	r0, r1
c0de5fdc:	f10d 0107 	add.w	r1, sp, #7
c0de5fe0:	f7ff fc78 	bl	c0de58d4 <buttonGenericCallback>
c0de5fe4:	b130      	cbz	r0, c0de5ff4 <reviewCallback+0x1c>
c0de5fe6:	4804      	ldr	r0, [pc, #16]	@ (c0de5ff8 <reviewCallback+0x20>)
c0de5fe8:	f000 f991 	bl	c0de630e <OUTLINED_FUNCTION_8>
c0de5fec:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5ff0:	f7fe be4c 	b.w	c0de4c8c <displayReviewPage>
c0de5ff4:	bd8c      	pop	{r2, r3, r7, pc}
c0de5ff6:	bf00      	nop
c0de5ff8:	00000744 	.word	0x00000744

c0de5ffc <displayExtensionStep>:
c0de5ffc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6000:	b088      	sub	sp, #32
c0de6002:	4e36      	ldr	r6, [pc, #216]	@ (c0de60dc <displayExtensionStep+0xe0>)
c0de6004:	4680      	mov	r8, r0
c0de6006:	2000      	movs	r0, #0
c0de6008:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de600c:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6010:	eb09 0006 	add.w	r0, r9, r6
c0de6014:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de6016:	b108      	cbz	r0, c0de601c <displayExtensionStep+0x20>
c0de6018:	f7fe fbe6 	bl	c0de47e8 <nbgl_stepRelease>
c0de601c:	eb09 0106 	add.w	r1, r9, r6
c0de6020:	f000 f981 	bl	c0de6326 <OUTLINED_FUNCTION_10>
c0de6024:	dd10      	ble.n	c0de6048 <displayExtensionStep+0x4c>
c0de6026:	2703      	movs	r7, #3
c0de6028:	eb09 0106 	add.w	r1, r9, r6
c0de602c:	2800      	cmp	r0, #0
c0de602e:	bf08      	it	eq
c0de6030:	2701      	moveq	r7, #1
c0de6032:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de6034:	7d0a      	ldrb	r2, [r1, #20]
c0de6036:	2a05      	cmp	r2, #5
c0de6038:	d01a      	beq.n	c0de6070 <displayExtensionStep+0x74>
c0de603a:	2a04      	cmp	r2, #4
c0de603c:	d028      	beq.n	c0de6090 <displayExtensionStep+0x94>
c0de603e:	2a01      	cmp	r2, #1
c0de6040:	d147      	bne.n	c0de60d2 <displayExtensionStep+0xd6>
c0de6042:	6808      	ldr	r0, [r1, #0]
c0de6044:	688d      	ldr	r5, [r1, #8]
c0de6046:	e033      	b.n	c0de60b0 <displayExtensionStep+0xb4>
c0de6048:	d143      	bne.n	c0de60d2 <displayExtensionStep+0xd6>
c0de604a:	2001      	movs	r0, #1
c0de604c:	2200      	movs	r2, #0
c0de604e:	f88d 001d 	strb.w	r0, [sp, #29]
c0de6052:	4924      	ldr	r1, [pc, #144]	@ (c0de60e4 <displayExtensionStep+0xe8>)
c0de6054:	4479      	add	r1, pc
c0de6056:	9104      	str	r1, [sp, #16]
c0de6058:	4923      	ldr	r1, [pc, #140]	@ (c0de60e8 <displayExtensionStep+0xec>)
c0de605a:	9000      	str	r0, [sp, #0]
c0de605c:	f048 0002 	orr.w	r0, r8, #2
c0de6060:	4479      	add	r1, pc
c0de6062:	9106      	str	r1, [sp, #24]
c0de6064:	4921      	ldr	r1, [pc, #132]	@ (c0de60ec <displayExtensionStep+0xf0>)
c0de6066:	ab04      	add	r3, sp, #16
c0de6068:	4479      	add	r1, pc
c0de606a:	f7fe fa97 	bl	c0de459c <nbgl_stepDrawCenteredInfo>
c0de606e:	e02d      	b.n	c0de60cc <displayExtensionStep+0xd0>
c0de6070:	690c      	ldr	r4, [r1, #16]
c0de6072:	0100      	lsls	r0, r0, #4
c0de6074:	6821      	ldr	r1, [r4, #0]
c0de6076:	5808      	ldr	r0, [r1, r0]
c0de6078:	f001 f88e 	bl	c0de7198 <pic>
c0de607c:	4605      	mov	r5, r0
c0de607e:	eb09 0006 	add.w	r0, r9, r6
c0de6082:	6821      	ldr	r1, [r4, #0]
c0de6084:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6088:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de608c:	6840      	ldr	r0, [r0, #4]
c0de608e:	e00d      	b.n	c0de60ac <displayExtensionStep+0xb0>
c0de6090:	690c      	ldr	r4, [r1, #16]
c0de6092:	6821      	ldr	r1, [r4, #0]
c0de6094:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6098:	f001 f87e 	bl	c0de7198 <pic>
c0de609c:	4605      	mov	r5, r0
c0de609e:	eb09 0006 	add.w	r0, r9, r6
c0de60a2:	6861      	ldr	r1, [r4, #4]
c0de60a4:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de60a8:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de60ac:	f001 f874 	bl	c0de7198 <pic>
c0de60b0:	b17d      	cbz	r5, c0de60d2 <displayExtensionStep+0xd6>
c0de60b2:	2101      	movs	r1, #1
c0de60b4:	ea47 0208 	orr.w	r2, r7, r8
c0de60b8:	462b      	mov	r3, r5
c0de60ba:	e9cd 0100 	strd	r0, r1, [sp]
c0de60be:	9102      	str	r1, [sp, #8]
c0de60c0:	4610      	mov	r0, r2
c0de60c2:	2200      	movs	r2, #0
c0de60c4:	4906      	ldr	r1, [pc, #24]	@ (c0de60e0 <displayExtensionStep+0xe4>)
c0de60c6:	4479      	add	r1, pc
c0de60c8:	f7fe f922 	bl	c0de4310 <nbgl_stepDrawText>
c0de60cc:	eb09 0106 	add.w	r1, r9, r6
c0de60d0:	6648      	str	r0, [r1, #100]	@ 0x64
c0de60d2:	f000 fe56 	bl	c0de6d82 <nbgl_refresh>
c0de60d6:	b008      	add	sp, #32
c0de60d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de60dc:	00000744 	.word	0x00000744
c0de60e0:	00000027 	.word	0x00000027
c0de60e4:	00001ccb 	.word	0x00001ccb
c0de60e8:	0000190c 	.word	0x0000190c
c0de60ec:	00000085 	.word	0x00000085

c0de60f0 <extensionNavigate>:
c0de60f0:	b580      	push	{r7, lr}
c0de60f2:	2904      	cmp	r1, #4
c0de60f4:	d00a      	beq.n	c0de610c <extensionNavigate+0x1c>
c0de60f6:	2901      	cmp	r1, #1
c0de60f8:	d01d      	beq.n	c0de6136 <extensionNavigate+0x46>
c0de60fa:	b9d9      	cbnz	r1, c0de6134 <extensionNavigate+0x44>
c0de60fc:	4818      	ldr	r0, [pc, #96]	@ (c0de6160 <extensionNavigate+0x70>)
c0de60fe:	4448      	add	r0, r9
c0de6100:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6104:	b330      	cbz	r0, c0de6154 <extensionNavigate+0x64>
c0de6106:	1e41      	subs	r1, r0, #1
c0de6108:	2008      	movs	r0, #8
c0de610a:	e01c      	b.n	c0de6146 <extensionNavigate+0x56>
c0de610c:	4814      	ldr	r0, [pc, #80]	@ (c0de6160 <extensionNavigate+0x70>)
c0de610e:	eb09 0100 	add.w	r1, r9, r0
c0de6112:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de6116:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de611a:	3901      	subs	r1, #1
c0de611c:	4291      	cmp	r1, r2
c0de611e:	d109      	bne.n	c0de6134 <extensionNavigate+0x44>
c0de6120:	4448      	add	r0, r9
c0de6122:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de6124:	f7fe fb60 	bl	c0de47e8 <nbgl_stepRelease>
c0de6128:	f000 fe44 	bl	c0de6db4 <nbgl_screenRedraw>
c0de612c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6130:	f000 be27 	b.w	c0de6d82 <nbgl_refresh>
c0de6134:	bd80      	pop	{r7, pc}
c0de6136:	480a      	ldr	r0, [pc, #40]	@ (c0de6160 <extensionNavigate+0x70>)
c0de6138:	eb09 0100 	add.w	r1, r9, r0
c0de613c:	f000 f8f3 	bl	c0de6326 <OUTLINED_FUNCTION_10>
c0de6140:	dd06      	ble.n	c0de6150 <extensionNavigate+0x60>
c0de6142:	1c41      	adds	r1, r0, #1
c0de6144:	2000      	movs	r0, #0
c0de6146:	4a06      	ldr	r2, [pc, #24]	@ (c0de6160 <extensionNavigate+0x70>)
c0de6148:	444a      	add	r2, r9
c0de614a:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de614e:	e002      	b.n	c0de6156 <extensionNavigate+0x66>
c0de6150:	2000      	movs	r0, #0
c0de6152:	e000      	b.n	c0de6156 <extensionNavigate+0x66>
c0de6154:	2008      	movs	r0, #8
c0de6156:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de615a:	f7ff bf4f 	b.w	c0de5ffc <displayExtensionStep>
c0de615e:	bf00      	nop
c0de6160:	00000744 	.word	0x00000744

c0de6164 <statusTickerCallback>:
c0de6164:	4802      	ldr	r0, [pc, #8]	@ (c0de6170 <statusTickerCallback+0xc>)
c0de6166:	4448      	add	r0, r9
c0de6168:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de616a:	b100      	cbz	r0, c0de616e <statusTickerCallback+0xa>
c0de616c:	4700      	bx	r0
c0de616e:	4770      	bx	lr
c0de6170:	00000744 	.word	0x00000744

c0de6174 <getChoiceName>:
c0de6174:	b5b0      	push	{r4, r5, r7, lr}
c0de6176:	b090      	sub	sp, #64	@ 0x40
c0de6178:	ad01      	add	r5, sp, #4
c0de617a:	f000 f8cf 	bl	c0de631c <OUTLINED_FUNCTION_9>
c0de617e:	4814      	ldr	r0, [pc, #80]	@ (c0de61d0 <getChoiceName+0x5c>)
c0de6180:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6184:	462a      	mov	r2, r5
c0de6186:	4448      	add	r0, r9
c0de6188:	f000 f8b1 	bl	c0de62ee <OUTLINED_FUNCTION_4>
c0de618c:	b150      	cbz	r0, c0de61a4 <getChoiceName+0x30>
c0de618e:	7801      	ldrb	r1, [r0, #0]
c0de6190:	290a      	cmp	r1, #10
c0de6192:	d009      	beq.n	c0de61a8 <getChoiceName+0x34>
c0de6194:	2909      	cmp	r1, #9
c0de6196:	d105      	bne.n	c0de61a4 <getChoiceName+0x30>
c0de6198:	f000 f8ad 	bl	c0de62f6 <OUTLINED_FUNCTION_5>
c0de619c:	4605      	mov	r5, r0
c0de619e:	f855 0b05 	ldr.w	r0, [r5], #5
c0de61a2:	e006      	b.n	c0de61b2 <getChoiceName+0x3e>
c0de61a4:	2000      	movs	r0, #0
c0de61a6:	e010      	b.n	c0de61ca <getChoiceName+0x56>
c0de61a8:	f000 f8a5 	bl	c0de62f6 <OUTLINED_FUNCTION_5>
c0de61ac:	4605      	mov	r5, r0
c0de61ae:	f855 0b08 	ldr.w	r0, [r5], #8
c0de61b2:	f000 fff1 	bl	c0de7198 <pic>
c0de61b6:	7829      	ldrb	r1, [r5, #0]
c0de61b8:	42a1      	cmp	r1, r4
c0de61ba:	d904      	bls.n	c0de61c6 <getChoiceName+0x52>
c0de61bc:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de61c0:	f000 ffea 	bl	c0de7198 <pic>
c0de61c4:	e001      	b.n	c0de61ca <getChoiceName+0x56>
c0de61c6:	4803      	ldr	r0, [pc, #12]	@ (c0de61d4 <getChoiceName+0x60>)
c0de61c8:	4478      	add	r0, pc
c0de61ca:	b010      	add	sp, #64	@ 0x40
c0de61cc:	bdb0      	pop	{r4, r5, r7, pc}
c0de61ce:	bf00      	nop
c0de61d0:	00000744 	.word	0x00000744
c0de61d4:	00001b57 	.word	0x00001b57

c0de61d8 <onChoiceSelected>:
c0de61d8:	b570      	push	{r4, r5, r6, lr}
c0de61da:	b090      	sub	sp, #64	@ 0x40
c0de61dc:	ad01      	add	r5, sp, #4
c0de61de:	f000 f89d 	bl	c0de631c <OUTLINED_FUNCTION_9>
c0de61e2:	4e17      	ldr	r6, [pc, #92]	@ (c0de6240 <onChoiceSelected+0x68>)
c0de61e4:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de61e8:	462a      	mov	r2, r5
c0de61ea:	eb09 0006 	add.w	r0, r9, r6
c0de61ee:	f000 f87e 	bl	c0de62ee <OUTLINED_FUNCTION_4>
c0de61f2:	b318      	cbz	r0, c0de623c <onChoiceSelected+0x64>
c0de61f4:	7801      	ldrb	r1, [r0, #0]
c0de61f6:	290a      	cmp	r1, #10
c0de61f8:	d008      	beq.n	c0de620c <onChoiceSelected+0x34>
c0de61fa:	2909      	cmp	r1, #9
c0de61fc:	d10f      	bne.n	c0de621e <onChoiceSelected+0x46>
c0de61fe:	f000 f87a 	bl	c0de62f6 <OUTLINED_FUNCTION_5>
c0de6202:	7941      	ldrb	r1, [r0, #5]
c0de6204:	42a1      	cmp	r1, r4
c0de6206:	d90a      	bls.n	c0de621e <onChoiceSelected+0x46>
c0de6208:	3007      	adds	r0, #7
c0de620a:	e006      	b.n	c0de621a <onChoiceSelected+0x42>
c0de620c:	f000 f873 	bl	c0de62f6 <OUTLINED_FUNCTION_5>
c0de6210:	7a01      	ldrb	r1, [r0, #8]
c0de6212:	42a1      	cmp	r1, r4
c0de6214:	d903      	bls.n	c0de621e <onChoiceSelected+0x46>
c0de6216:	6840      	ldr	r0, [r0, #4]
c0de6218:	4420      	add	r0, r4
c0de621a:	7800      	ldrb	r0, [r0, #0]
c0de621c:	e000      	b.n	c0de6220 <onChoiceSelected+0x48>
c0de621e:	20ff      	movs	r0, #255	@ 0xff
c0de6220:	28ff      	cmp	r0, #255	@ 0xff
c0de6222:	d006      	beq.n	c0de6232 <onChoiceSelected+0x5a>
c0de6224:	eb09 0106 	add.w	r1, r9, r6
c0de6228:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de622a:	b112      	cbz	r2, c0de6232 <onChoiceSelected+0x5a>
c0de622c:	2100      	movs	r1, #0
c0de622e:	4790      	blx	r2
c0de6230:	e004      	b.n	c0de623c <onChoiceSelected+0x64>
c0de6232:	eb09 0006 	add.w	r0, r9, r6
c0de6236:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de6238:	b100      	cbz	r0, c0de623c <onChoiceSelected+0x64>
c0de623a:	4780      	blx	r0
c0de623c:	b010      	add	sp, #64	@ 0x40
c0de623e:	bd70      	pop	{r4, r5, r6, pc}
c0de6240:	00000744 	.word	0x00000744

c0de6244 <streamingReviewCallback>:
c0de6244:	b5e0      	push	{r5, r6, r7, lr}
c0de6246:	4608      	mov	r0, r1
c0de6248:	f10d 0107 	add.w	r1, sp, #7
c0de624c:	f7ff fb42 	bl	c0de58d4 <buttonGenericCallback>
c0de6250:	b130      	cbz	r0, c0de6260 <streamingReviewCallback+0x1c>
c0de6252:	4804      	ldr	r0, [pc, #16]	@ (c0de6264 <streamingReviewCallback+0x20>)
c0de6254:	f000 f85b 	bl	c0de630e <OUTLINED_FUNCTION_8>
c0de6258:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de625c:	f7fe bf1e 	b.w	c0de509c <displayStreamingReviewPage>
c0de6260:	bd8c      	pop	{r2, r3, r7, pc}
c0de6262:	bf00      	nop
c0de6264:	00000744 	.word	0x00000744

c0de6268 <onChoiceAccept>:
c0de6268:	4803      	ldr	r0, [pc, #12]	@ (c0de6278 <onChoiceAccept+0x10>)
c0de626a:	4448      	add	r0, r9
c0de626c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de626e:	b109      	cbz	r1, c0de6274 <onChoiceAccept+0xc>
c0de6270:	2001      	movs	r0, #1
c0de6272:	4708      	bx	r1
c0de6274:	4770      	bx	lr
c0de6276:	bf00      	nop
c0de6278:	00000744 	.word	0x00000744

c0de627c <onChoiceReject>:
c0de627c:	4803      	ldr	r0, [pc, #12]	@ (c0de628c <onChoiceReject+0x10>)
c0de627e:	4448      	add	r0, r9
c0de6280:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de6282:	b109      	cbz	r1, c0de6288 <onChoiceReject+0xc>
c0de6284:	2000      	movs	r0, #0
c0de6286:	4708      	bx	r1
c0de6288:	4770      	bx	lr
c0de628a:	bf00      	nop
c0de628c:	00000744 	.word	0x00000744

c0de6290 <genericChoiceCallback>:
c0de6290:	b5e0      	push	{r5, r6, r7, lr}
c0de6292:	4608      	mov	r0, r1
c0de6294:	f10d 0107 	add.w	r1, sp, #7
c0de6298:	f7ff fb1c 	bl	c0de58d4 <buttonGenericCallback>
c0de629c:	b128      	cbz	r0, c0de62aa <genericChoiceCallback+0x1a>
c0de629e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de62a2:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de62a6:	f7fe bff5 	b.w	c0de5294 <displayChoicePage>
c0de62aa:	bd8c      	pop	{r2, r3, r7, pc}

c0de62ac <OUTLINED_FUNCTION_0>:
c0de62ac:	460e      	mov	r6, r1
c0de62ae:	2140      	movs	r1, #64	@ 0x40
c0de62b0:	4698      	mov	r8, r3
c0de62b2:	4615      	mov	r5, r2
c0de62b4:	eb09 0400 	add.w	r4, r9, r0
c0de62b8:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de62bc:	f001 ba78 	b.w	c0de77b0 <__aeabi_memclr>

c0de62c0 <OUTLINED_FUNCTION_1>:
c0de62c0:	2200      	movs	r2, #0
c0de62c2:	eb09 0100 	add.w	r1, r9, r0
c0de62c6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de62c8:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de62cc:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de62d0:	3901      	subs	r1, #1
c0de62d2:	4291      	cmp	r1, r2
c0de62d4:	4770      	bx	lr

c0de62d6 <OUTLINED_FUNCTION_2>:
c0de62d6:	eb09 0600 	add.w	r6, r9, r0
c0de62da:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de62de:	f001 ba67 	b.w	c0de77b0 <__aeabi_memclr>

c0de62e2 <OUTLINED_FUNCTION_3>:
c0de62e2:	eb09 0500 	add.w	r5, r9, r0
c0de62e6:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de62ea:	f001 ba61 	b.w	c0de77b0 <__aeabi_memclr>

c0de62ee <OUTLINED_FUNCTION_4>:
c0de62ee:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de62f2:	f7ff b9d1 	b.w	c0de5698 <getContentElemAtIdx>

c0de62f6 <OUTLINED_FUNCTION_5>:
c0de62f6:	3004      	adds	r0, #4
c0de62f8:	f000 bf4e 	b.w	c0de7198 <pic>

c0de62fc <OUTLINED_FUNCTION_6>:
c0de62fc:	e9cd 6500 	strd	r6, r5, [sp]
c0de6300:	f7fe bdb0 	b.w	c0de4e64 <drawStep>

c0de6304 <OUTLINED_FUNCTION_7>:
c0de6304:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de6308:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de630c:	4730      	bx	r6

c0de630e <OUTLINED_FUNCTION_8>:
c0de630e:	eb09 0100 	add.w	r1, r9, r0
c0de6312:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6316:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de631a:	4770      	bx	lr

c0de631c <OUTLINED_FUNCTION_9>:
c0de631c:	4604      	mov	r4, r0
c0de631e:	2138      	movs	r1, #56	@ 0x38
c0de6320:	4628      	mov	r0, r5
c0de6322:	f001 ba45 	b.w	c0de77b0 <__aeabi_memclr>

c0de6326 <OUTLINED_FUNCTION_10>:
c0de6326:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de632a:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de632e:	3901      	subs	r1, #1
c0de6330:	4281      	cmp	r1, r0
c0de6332:	4770      	bx	lr

c0de6334 <bip32_path_read>:
c0de6334:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6338:	b10b      	cbz	r3, c0de633e <bip32_path_read+0xa>
c0de633a:	2b0a      	cmp	r3, #10
c0de633c:	d902      	bls.n	c0de6344 <bip32_path_read+0x10>
c0de633e:	2000      	movs	r0, #0
c0de6340:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6344:	4692      	mov	sl, r2
c0de6346:	460e      	mov	r6, r1
c0de6348:	4683      	mov	fp, r0
c0de634a:	425f      	negs	r7, r3
c0de634c:	2500      	movs	r5, #0
c0de634e:	f04f 0800 	mov.w	r8, #0
c0de6352:	9301      	str	r3, [sp, #4]
c0de6354:	42af      	cmp	r7, r5
c0de6356:	d00c      	beq.n	c0de6372 <bip32_path_read+0x3e>
c0de6358:	f108 0404 	add.w	r4, r8, #4
c0de635c:	42b4      	cmp	r4, r6
c0de635e:	d808      	bhi.n	c0de6372 <bip32_path_read+0x3e>
c0de6360:	4658      	mov	r0, fp
c0de6362:	4641      	mov	r1, r8
c0de6364:	f000 fb6f 	bl	c0de6a46 <read_u32_be>
c0de6368:	f84a 0008 	str.w	r0, [sl, r8]
c0de636c:	3d01      	subs	r5, #1
c0de636e:	46a0      	mov	r8, r4
c0de6370:	e7f0      	b.n	c0de6354 <bip32_path_read+0x20>
c0de6372:	9a01      	ldr	r2, [sp, #4]
c0de6374:	4269      	negs	r1, r5
c0de6376:	2000      	movs	r0, #0
c0de6378:	4291      	cmp	r1, r2
c0de637a:	bf28      	it	cs
c0de637c:	2001      	movcs	r0, #1
c0de637e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6382 <buffer_seek_cur>:
c0de6382:	6882      	ldr	r2, [r0, #8]
c0de6384:	1889      	adds	r1, r1, r2
c0de6386:	d205      	bcs.n	c0de6394 <buffer_seek_cur+0x12>
c0de6388:	6842      	ldr	r2, [r0, #4]
c0de638a:	4291      	cmp	r1, r2
c0de638c:	bf9e      	ittt	ls
c0de638e:	6081      	strls	r1, [r0, #8]
c0de6390:	2001      	movls	r0, #1
c0de6392:	4770      	bxls	lr
c0de6394:	2000      	movs	r0, #0
c0de6396:	4770      	bx	lr

c0de6398 <buffer_read_u8>:
c0de6398:	b510      	push	{r4, lr}
c0de639a:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de639e:	429a      	cmp	r2, r3
c0de63a0:	d00a      	beq.n	c0de63b8 <buffer_read_u8+0x20>
c0de63a2:	6804      	ldr	r4, [r0, #0]
c0de63a4:	5ce4      	ldrb	r4, [r4, r3]
c0de63a6:	700c      	strb	r4, [r1, #0]
c0de63a8:	6881      	ldr	r1, [r0, #8]
c0de63aa:	3101      	adds	r1, #1
c0de63ac:	d206      	bcs.n	c0de63bc <buffer_read_u8+0x24>
c0de63ae:	6844      	ldr	r4, [r0, #4]
c0de63b0:	42a1      	cmp	r1, r4
c0de63b2:	bf98      	it	ls
c0de63b4:	6081      	strls	r1, [r0, #8]
c0de63b6:	e001      	b.n	c0de63bc <buffer_read_u8+0x24>
c0de63b8:	2000      	movs	r0, #0
c0de63ba:	7008      	strb	r0, [r1, #0]
c0de63bc:	1ad0      	subs	r0, r2, r3
c0de63be:	bf18      	it	ne
c0de63c0:	2001      	movne	r0, #1
c0de63c2:	bd10      	pop	{r4, pc}

c0de63c4 <buffer_read_u64>:
c0de63c4:	b570      	push	{r4, r5, r6, lr}
c0de63c6:	f000 f87d 	bl	c0de64c4 <OUTLINED_FUNCTION_0>
c0de63ca:	2e07      	cmp	r6, #7
c0de63cc:	d904      	bls.n	c0de63d8 <buffer_read_u64+0x14>
c0de63ce:	6820      	ldr	r0, [r4, #0]
c0de63d0:	b132      	cbz	r2, c0de63e0 <buffer_read_u64+0x1c>
c0de63d2:	f000 fb6f 	bl	c0de6ab4 <read_u64_le>
c0de63d6:	e005      	b.n	c0de63e4 <buffer_read_u64+0x20>
c0de63d8:	2000      	movs	r0, #0
c0de63da:	e9c5 0000 	strd	r0, r0, [r5]
c0de63de:	e00c      	b.n	c0de63fa <buffer_read_u64+0x36>
c0de63e0:	f000 fb3d 	bl	c0de6a5e <read_u64_be>
c0de63e4:	e9c5 0100 	strd	r0, r1, [r5]
c0de63e8:	68a0      	ldr	r0, [r4, #8]
c0de63ea:	f110 0f09 	cmn.w	r0, #9
c0de63ee:	d804      	bhi.n	c0de63fa <buffer_read_u64+0x36>
c0de63f0:	6861      	ldr	r1, [r4, #4]
c0de63f2:	3008      	adds	r0, #8
c0de63f4:	4288      	cmp	r0, r1
c0de63f6:	bf98      	it	ls
c0de63f8:	60a0      	strls	r0, [r4, #8]
c0de63fa:	2000      	movs	r0, #0
c0de63fc:	2e07      	cmp	r6, #7
c0de63fe:	bf88      	it	hi
c0de6400:	2001      	movhi	r0, #1
c0de6402:	bd70      	pop	{r4, r5, r6, pc}

c0de6404 <buffer_read_varint>:
c0de6404:	b5b0      	push	{r4, r5, r7, lr}
c0de6406:	4604      	mov	r4, r0
c0de6408:	460d      	mov	r5, r1
c0de640a:	6800      	ldr	r0, [r0, #0]
c0de640c:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6410:	4410      	add	r0, r2
c0de6412:	1a89      	subs	r1, r1, r2
c0de6414:	462a      	mov	r2, r5
c0de6416:	f000 fbb7 	bl	c0de6b88 <varint_read>
c0de641a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de641e:	dd0a      	ble.n	c0de6436 <buffer_read_varint+0x32>
c0de6420:	68a1      	ldr	r1, [r4, #8]
c0de6422:	1840      	adds	r0, r0, r1
c0de6424:	d205      	bcs.n	c0de6432 <buffer_read_varint+0x2e>
c0de6426:	6861      	ldr	r1, [r4, #4]
c0de6428:	4288      	cmp	r0, r1
c0de642a:	bf9e      	ittt	ls
c0de642c:	60a0      	strls	r0, [r4, #8]
c0de642e:	2001      	movls	r0, #1
c0de6430:	bdb0      	popls	{r4, r5, r7, pc}
c0de6432:	2000      	movs	r0, #0
c0de6434:	bdb0      	pop	{r4, r5, r7, pc}
c0de6436:	2000      	movs	r0, #0
c0de6438:	e9c5 0000 	strd	r0, r0, [r5]
c0de643c:	bdb0      	pop	{r4, r5, r7, pc}

c0de643e <buffer_read_bip32_path>:
c0de643e:	b5b0      	push	{r4, r5, r7, lr}
c0de6440:	4604      	mov	r4, r0
c0de6442:	4615      	mov	r5, r2
c0de6444:	460a      	mov	r2, r1
c0de6446:	6800      	ldr	r0, [r0, #0]
c0de6448:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de644c:	4418      	add	r0, r3
c0de644e:	1ac9      	subs	r1, r1, r3
c0de6450:	462b      	mov	r3, r5
c0de6452:	f7ff ff6f 	bl	c0de6334 <bip32_path_read>
c0de6456:	b140      	cbz	r0, c0de646a <buffer_read_bip32_path+0x2c>
c0de6458:	68a2      	ldr	r2, [r4, #8]
c0de645a:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de645e:	4291      	cmp	r1, r2
c0de6460:	d303      	bcc.n	c0de646a <buffer_read_bip32_path+0x2c>
c0de6462:	6862      	ldr	r2, [r4, #4]
c0de6464:	4291      	cmp	r1, r2
c0de6466:	bf98      	it	ls
c0de6468:	60a1      	strls	r1, [r4, #8]
c0de646a:	bdb0      	pop	{r4, r5, r7, pc}

c0de646c <buffer_copy>:
c0de646c:	b5b0      	push	{r4, r5, r7, lr}
c0de646e:	4614      	mov	r4, r2
c0de6470:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6474:	1a9d      	subs	r5, r3, r2
c0de6476:	42a5      	cmp	r5, r4
c0de6478:	d806      	bhi.n	c0de6488 <buffer_copy+0x1c>
c0de647a:	6800      	ldr	r0, [r0, #0]
c0de647c:	4402      	add	r2, r0
c0de647e:	4608      	mov	r0, r1
c0de6480:	4611      	mov	r1, r2
c0de6482:	462a      	mov	r2, r5
c0de6484:	f001 f98c 	bl	c0de77a0 <__aeabi_memmove>
c0de6488:	2000      	movs	r0, #0
c0de648a:	42a5      	cmp	r5, r4
c0de648c:	bf98      	it	ls
c0de648e:	2001      	movls	r0, #1
c0de6490:	bdb0      	pop	{r4, r5, r7, pc}

c0de6492 <buffer_move>:
c0de6492:	b5b0      	push	{r4, r5, r7, lr}
c0de6494:	4615      	mov	r5, r2
c0de6496:	4604      	mov	r4, r0
c0de6498:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de649c:	1a12      	subs	r2, r2, r0
c0de649e:	42aa      	cmp	r2, r5
c0de64a0:	bf84      	itt	hi
c0de64a2:	2000      	movhi	r0, #0
c0de64a4:	bdb0      	pophi	{r4, r5, r7, pc}
c0de64a6:	6823      	ldr	r3, [r4, #0]
c0de64a8:	4403      	add	r3, r0
c0de64aa:	4608      	mov	r0, r1
c0de64ac:	4619      	mov	r1, r3
c0de64ae:	f001 f977 	bl	c0de77a0 <__aeabi_memmove>
c0de64b2:	68a0      	ldr	r0, [r4, #8]
c0de64b4:	1940      	adds	r0, r0, r5
c0de64b6:	d203      	bcs.n	c0de64c0 <buffer_move+0x2e>
c0de64b8:	6861      	ldr	r1, [r4, #4]
c0de64ba:	4288      	cmp	r0, r1
c0de64bc:	bf98      	it	ls
c0de64be:	60a0      	strls	r0, [r4, #8]
c0de64c0:	2001      	movs	r0, #1
c0de64c2:	bdb0      	pop	{r4, r5, r7, pc}

c0de64c4 <OUTLINED_FUNCTION_0>:
c0de64c4:	4604      	mov	r4, r0
c0de64c6:	460d      	mov	r5, r1
c0de64c8:	6840      	ldr	r0, [r0, #4]
c0de64ca:	68a1      	ldr	r1, [r4, #8]
c0de64cc:	1a46      	subs	r6, r0, r1
c0de64ce:	4770      	bx	lr

c0de64d0 <bip32_derive_with_seed_init_privkey_256>:
c0de64d0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de64d4:	b095      	sub	sp, #84	@ 0x54
c0de64d6:	460d      	mov	r5, r1
c0de64d8:	4607      	mov	r7, r0
c0de64da:	a904      	add	r1, sp, #16
c0de64dc:	469a      	mov	sl, r3
c0de64de:	4614      	mov	r4, r2
c0de64e0:	4628      	mov	r0, r5
c0de64e2:	f000 ffb9 	bl	c0de7458 <cx_ecdomain_parameters_length>
c0de64e6:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de64ea:	4606      	mov	r6, r0
c0de64ec:	b9e0      	cbnz	r0, c0de6528 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de64ee:	9804      	ldr	r0, [sp, #16]
c0de64f0:	2820      	cmp	r0, #32
c0de64f2:	d117      	bne.n	c0de6524 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de64f4:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de64f6:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de64fa:	ab05      	add	r3, sp, #20
c0de64fc:	e9cd 3200 	strd	r3, r2, [sp]
c0de6500:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6504:	4638      	mov	r0, r7
c0de6506:	4629      	mov	r1, r5
c0de6508:	4622      	mov	r2, r4
c0de650a:	4653      	mov	r3, sl
c0de650c:	f000 f818 	bl	c0de6540 <os_derive_bip32_with_seed_no_throw>
c0de6510:	4606      	mov	r6, r0
c0de6512:	b948      	cbnz	r0, c0de6528 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6514:	9a04      	ldr	r2, [sp, #16]
c0de6516:	a905      	add	r1, sp, #20
c0de6518:	4628      	mov	r0, r5
c0de651a:	4643      	mov	r3, r8
c0de651c:	f000 fc12 	bl	c0de6d44 <cx_ecfp_init_private_key_no_throw>
c0de6520:	4606      	mov	r6, r0
c0de6522:	e001      	b.n	c0de6528 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6524:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6528:	a805      	add	r0, sp, #20
c0de652a:	2140      	movs	r1, #64	@ 0x40
c0de652c:	f001 f94e 	bl	c0de77cc <explicit_bzero>
c0de6530:	b116      	cbz	r6, c0de6538 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de6532:	4640      	mov	r0, r8
c0de6534:	f000 f89f 	bl	c0de6676 <OUTLINED_FUNCTION_0>
c0de6538:	4630      	mov	r0, r6
c0de653a:	b015      	add	sp, #84	@ 0x54
c0de653c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6540 <os_derive_bip32_with_seed_no_throw>:
c0de6540:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6544:	b090      	sub	sp, #64	@ 0x40
c0de6546:	f10d 0810 	add.w	r8, sp, #16
c0de654a:	4607      	mov	r7, r0
c0de654c:	469b      	mov	fp, r3
c0de654e:	4616      	mov	r6, r2
c0de6550:	460c      	mov	r4, r1
c0de6552:	4640      	mov	r0, r8
c0de6554:	f001 f970 	bl	c0de7838 <setjmp>
c0de6558:	b285      	uxth	r5, r0
c0de655a:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de655e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6562:	b155      	cbz	r5, c0de657a <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6564:	2000      	movs	r0, #0
c0de6566:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de656a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de656c:	f001 f818 	bl	c0de75a0 <try_context_set>
c0de6570:	2140      	movs	r1, #64	@ 0x40
c0de6572:	4650      	mov	r0, sl
c0de6574:	f001 f92a 	bl	c0de77cc <explicit_bzero>
c0de6578:	e012      	b.n	c0de65a0 <os_derive_bip32_with_seed_no_throw+0x60>
c0de657a:	a804      	add	r0, sp, #16
c0de657c:	f001 f810 	bl	c0de75a0 <try_context_set>
c0de6580:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6582:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6584:	4668      	mov	r0, sp
c0de6586:	4632      	mov	r2, r6
c0de6588:	465b      	mov	r3, fp
c0de658a:	f8c0 a000 	str.w	sl, [r0]
c0de658e:	6041      	str	r1, [r0, #4]
c0de6590:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6592:	6081      	str	r1, [r0, #8]
c0de6594:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6596:	60c1      	str	r1, [r0, #12]
c0de6598:	4638      	mov	r0, r7
c0de659a:	4621      	mov	r1, r4
c0de659c:	f000 ff66 	bl	c0de746c <os_perso_derive_node_with_seed_key>
c0de65a0:	f000 fff6 	bl	c0de7590 <try_context_get>
c0de65a4:	4540      	cmp	r0, r8
c0de65a6:	d102      	bne.n	c0de65ae <os_derive_bip32_with_seed_no_throw+0x6e>
c0de65a8:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de65aa:	f000 fff9 	bl	c0de75a0 <try_context_set>
c0de65ae:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de65b2:	b918      	cbnz	r0, c0de65bc <os_derive_bip32_with_seed_no_throw+0x7c>
c0de65b4:	4628      	mov	r0, r5
c0de65b6:	b010      	add	sp, #64	@ 0x40
c0de65b8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de65bc:	f000 fc47 	bl	c0de6e4e <os_longjmp>

c0de65c0 <bip32_derive_with_seed_get_pubkey_256>:
c0de65c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de65c2:	b0a1      	sub	sp, #132	@ 0x84
c0de65c4:	460e      	mov	r6, r1
c0de65c6:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de65c8:	9103      	str	r1, [sp, #12]
c0de65ca:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de65cc:	9102      	str	r1, [sp, #8]
c0de65ce:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de65d0:	9101      	str	r1, [sp, #4]
c0de65d2:	a917      	add	r1, sp, #92	@ 0x5c
c0de65d4:	9100      	str	r1, [sp, #0]
c0de65d6:	4631      	mov	r1, r6
c0de65d8:	f7ff ff7a 	bl	c0de64d0 <bip32_derive_with_seed_init_privkey_256>
c0de65dc:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de65de:	4605      	mov	r5, r0
c0de65e0:	b9b8      	cbnz	r0, c0de6612 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65e2:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de65e4:	2301      	movs	r3, #1
c0de65e6:	9000      	str	r0, [sp, #0]
c0de65e8:	af04      	add	r7, sp, #16
c0de65ea:	aa17      	add	r2, sp, #92	@ 0x5c
c0de65ec:	4630      	mov	r0, r6
c0de65ee:	4639      	mov	r1, r7
c0de65f0:	f000 fba3 	bl	c0de6d3a <cx_ecfp_generate_pair2_no_throw>
c0de65f4:	4605      	mov	r5, r0
c0de65f6:	b960      	cbnz	r0, c0de6612 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de65f8:	9805      	ldr	r0, [sp, #20]
c0de65fa:	2841      	cmp	r0, #65	@ 0x41
c0de65fc:	d107      	bne.n	c0de660e <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de65fe:	f107 0108 	add.w	r1, r7, #8
c0de6602:	4620      	mov	r0, r4
c0de6604:	2241      	movs	r2, #65	@ 0x41
c0de6606:	f001 f8c9 	bl	c0de779c <__aeabi_memcpy>
c0de660a:	2500      	movs	r5, #0
c0de660c:	e001      	b.n	c0de6612 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de660e:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6612:	a817      	add	r0, sp, #92	@ 0x5c
c0de6614:	f000 f82f 	bl	c0de6676 <OUTLINED_FUNCTION_0>
c0de6618:	b11d      	cbz	r5, c0de6622 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de661a:	4620      	mov	r0, r4
c0de661c:	2141      	movs	r1, #65	@ 0x41
c0de661e:	f001 f8d5 	bl	c0de77cc <explicit_bzero>
c0de6622:	4628      	mov	r0, r5
c0de6624:	b021      	add	sp, #132	@ 0x84
c0de6626:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6628 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6628:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de662a:	b08f      	sub	sp, #60	@ 0x3c
c0de662c:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de662e:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6630:	683c      	ldr	r4, [r7, #0]
c0de6632:	9503      	str	r5, [sp, #12]
c0de6634:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6636:	9502      	str	r5, [sp, #8]
c0de6638:	2500      	movs	r5, #0
c0de663a:	9501      	str	r5, [sp, #4]
c0de663c:	ad05      	add	r5, sp, #20
c0de663e:	9500      	str	r5, [sp, #0]
c0de6640:	f7ff ff46 	bl	c0de64d0 <bip32_derive_with_seed_init_privkey_256>
c0de6644:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6646:	4606      	mov	r6, r0
c0de6648:	b950      	cbnz	r0, c0de6660 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de664a:	ae14      	add	r6, sp, #80	@ 0x50
c0de664c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de664e:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6650:	e9cd 6500 	strd	r6, r5, [sp]
c0de6654:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6658:	a805      	add	r0, sp, #20
c0de665a:	f000 fb69 	bl	c0de6d30 <cx_ecdsa_sign_no_throw>
c0de665e:	4606      	mov	r6, r0
c0de6660:	a805      	add	r0, sp, #20
c0de6662:	f000 f808 	bl	c0de6676 <OUTLINED_FUNCTION_0>
c0de6666:	b11e      	cbz	r6, c0de6670 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6668:	4628      	mov	r0, r5
c0de666a:	4621      	mov	r1, r4
c0de666c:	f001 f8ae 	bl	c0de77cc <explicit_bzero>
c0de6670:	4630      	mov	r0, r6
c0de6672:	b00f      	add	sp, #60	@ 0x3c
c0de6674:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6676 <OUTLINED_FUNCTION_0>:
c0de6676:	2128      	movs	r1, #40	@ 0x28
c0de6678:	f001 b8a8 	b.w	c0de77cc <explicit_bzero>

c0de667c <format_u64>:
c0de667c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6680:	b1f9      	cbz	r1, c0de66c2 <format_u64+0x46>
c0de6682:	4615      	mov	r5, r2
c0de6684:	4604      	mov	r4, r0
c0de6686:	f1a1 0801 	sub.w	r8, r1, #1
c0de668a:	2700      	movs	r7, #0
c0de668c:	2600      	movs	r6, #0
c0de668e:	f1b5 000a 	subs.w	r0, r5, #10
c0de6692:	f173 0000 	sbcs.w	r0, r3, #0
c0de6696:	d316      	bcc.n	c0de66c6 <format_u64+0x4a>
c0de6698:	4619      	mov	r1, r3
c0de669a:	4628      	mov	r0, r5
c0de669c:	220a      	movs	r2, #10
c0de669e:	2300      	movs	r3, #0
c0de66a0:	f001 f88a 	bl	c0de77b8 <__aeabi_uldivmod>
c0de66a4:	460b      	mov	r3, r1
c0de66a6:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de66aa:	1cba      	adds	r2, r7, #2
c0de66ac:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de66b0:	4605      	mov	r5, r0
c0de66b2:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de66b6:	55e1      	strb	r1, [r4, r7]
c0de66b8:	1c79      	adds	r1, r7, #1
c0de66ba:	4542      	cmp	r2, r8
c0de66bc:	460f      	mov	r7, r1
c0de66be:	d9e6      	bls.n	c0de668e <format_u64+0x12>
c0de66c0:	e012      	b.n	c0de66e8 <format_u64+0x6c>
c0de66c2:	2600      	movs	r6, #0
c0de66c4:	e010      	b.n	c0de66e8 <format_u64+0x6c>
c0de66c6:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de66ca:	19e1      	adds	r1, r4, r7
c0de66cc:	55e0      	strb	r0, [r4, r7]
c0de66ce:	2000      	movs	r0, #0
c0de66d0:	7048      	strb	r0, [r1, #1]
c0de66d2:	b2c1      	uxtb	r1, r0
c0de66d4:	428f      	cmp	r7, r1
c0de66d6:	d906      	bls.n	c0de66e6 <format_u64+0x6a>
c0de66d8:	5c62      	ldrb	r2, [r4, r1]
c0de66da:	5de3      	ldrb	r3, [r4, r7]
c0de66dc:	3001      	adds	r0, #1
c0de66de:	5463      	strb	r3, [r4, r1]
c0de66e0:	55e2      	strb	r2, [r4, r7]
c0de66e2:	3f01      	subs	r7, #1
c0de66e4:	e7f5      	b.n	c0de66d2 <format_u64+0x56>
c0de66e6:	2601      	movs	r6, #1
c0de66e8:	4630      	mov	r0, r6
c0de66ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de66ee <format_fpu64>:
c0de66ee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de66f2:	b086      	sub	sp, #24
c0de66f4:	466c      	mov	r4, sp
c0de66f6:	4688      	mov	r8, r1
c0de66f8:	4605      	mov	r5, r0
c0de66fa:	2115      	movs	r1, #21
c0de66fc:	461e      	mov	r6, r3
c0de66fe:	4617      	mov	r7, r2
c0de6700:	4620      	mov	r0, r4
c0de6702:	f001 f855 	bl	c0de77b0 <__aeabi_memclr>
c0de6706:	4620      	mov	r0, r4
c0de6708:	2115      	movs	r1, #21
c0de670a:	463a      	mov	r2, r7
c0de670c:	4633      	mov	r3, r6
c0de670e:	f7ff ffb5 	bl	c0de667c <format_u64>
c0de6712:	b340      	cbz	r0, c0de6766 <format_fpu64+0x78>
c0de6714:	466f      	mov	r7, sp
c0de6716:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6718:	4638      	mov	r0, r7
c0de671a:	f001 f8a5 	bl	c0de7868 <strlen>
c0de671e:	42b0      	cmp	r0, r6
c0de6720:	d910      	bls.n	c0de6744 <format_fpu64+0x56>
c0de6722:	1831      	adds	r1, r6, r0
c0de6724:	3101      	adds	r1, #1
c0de6726:	4541      	cmp	r1, r8
c0de6728:	d21d      	bcs.n	c0de6766 <format_fpu64+0x78>
c0de672a:	1b84      	subs	r4, r0, r6
c0de672c:	4628      	mov	r0, r5
c0de672e:	4639      	mov	r1, r7
c0de6730:	4622      	mov	r2, r4
c0de6732:	f001 f833 	bl	c0de779c <__aeabi_memcpy>
c0de6736:	1928      	adds	r0, r5, r4
c0de6738:	212e      	movs	r1, #46	@ 0x2e
c0de673a:	4632      	mov	r2, r6
c0de673c:	f800 1b01 	strb.w	r1, [r0], #1
c0de6740:	1939      	adds	r1, r7, r4
c0de6742:	e015      	b.n	c0de6770 <format_fpu64+0x82>
c0de6744:	1a32      	subs	r2, r6, r0
c0de6746:	1c91      	adds	r1, r2, #2
c0de6748:	4541      	cmp	r1, r8
c0de674a:	d20c      	bcs.n	c0de6766 <format_fpu64+0x78>
c0de674c:	202e      	movs	r0, #46	@ 0x2e
c0de674e:	2330      	movs	r3, #48	@ 0x30
c0de6750:	2400      	movs	r4, #0
c0de6752:	7068      	strb	r0, [r5, #1]
c0de6754:	1ca8      	adds	r0, r5, #2
c0de6756:	702b      	strb	r3, [r5, #0]
c0de6758:	b2a5      	uxth	r5, r4
c0de675a:	42aa      	cmp	r2, r5
c0de675c:	d905      	bls.n	c0de676a <format_fpu64+0x7c>
c0de675e:	f800 3b01 	strb.w	r3, [r0], #1
c0de6762:	3401      	adds	r4, #1
c0de6764:	e7f8      	b.n	c0de6758 <format_fpu64+0x6a>
c0de6766:	2000      	movs	r0, #0
c0de6768:	e005      	b.n	c0de6776 <format_fpu64+0x88>
c0de676a:	eba8 0201 	sub.w	r2, r8, r1
c0de676e:	4669      	mov	r1, sp
c0de6770:	f001 f894 	bl	c0de789c <strncpy>
c0de6774:	2001      	movs	r0, #1
c0de6776:	b006      	add	sp, #24
c0de6778:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de677c <format_hex>:
c0de677c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de677e:	4604      	mov	r4, r0
c0de6780:	0048      	lsls	r0, r1, #1
c0de6782:	f100 0c01 	add.w	ip, r0, #1
c0de6786:	459c      	cmp	ip, r3
c0de6788:	d902      	bls.n	c0de6790 <format_hex+0x14>
c0de678a:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de678e:	e018      	b.n	c0de67c2 <format_hex+0x46>
c0de6790:	480d      	ldr	r0, [pc, #52]	@ (c0de67c8 <format_hex+0x4c>)
c0de6792:	2500      	movs	r5, #0
c0de6794:	4478      	add	r0, pc
c0de6796:	b191      	cbz	r1, c0de67be <format_hex+0x42>
c0de6798:	1cef      	adds	r7, r5, #3
c0de679a:	429f      	cmp	r7, r3
c0de679c:	d80d      	bhi.n	c0de67ba <format_hex+0x3e>
c0de679e:	7827      	ldrb	r7, [r4, #0]
c0de67a0:	3901      	subs	r1, #1
c0de67a2:	093f      	lsrs	r7, r7, #4
c0de67a4:	5dc7      	ldrb	r7, [r0, r7]
c0de67a6:	5557      	strb	r7, [r2, r5]
c0de67a8:	1957      	adds	r7, r2, r5
c0de67aa:	3502      	adds	r5, #2
c0de67ac:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de67b0:	f006 060f 	and.w	r6, r6, #15
c0de67b4:	5d86      	ldrb	r6, [r0, r6]
c0de67b6:	707e      	strb	r6, [r7, #1]
c0de67b8:	e7ed      	b.n	c0de6796 <format_hex+0x1a>
c0de67ba:	f105 0c01 	add.w	ip, r5, #1
c0de67be:	2000      	movs	r0, #0
c0de67c0:	5550      	strb	r0, [r2, r5]
c0de67c2:	4660      	mov	r0, ip
c0de67c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de67c6:	bf00      	nop
c0de67c8:	00001569 	.word	0x00001569

c0de67cc <app_ticker_event_callback>:
c0de67cc:	4770      	bx	lr
	...

c0de67d0 <io_event>:
c0de67d0:	b580      	push	{r7, lr}
c0de67d2:	480a      	ldr	r0, [pc, #40]	@ (c0de67fc <io_event+0x2c>)
c0de67d4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de67d8:	290e      	cmp	r1, #14
c0de67da:	d005      	beq.n	c0de67e8 <io_event+0x18>
c0de67dc:	2905      	cmp	r1, #5
c0de67de:	d108      	bne.n	c0de67f2 <io_event+0x22>
c0de67e0:	4448      	add	r0, r9
c0de67e2:	f000 fa05 	bl	c0de6bf0 <ux_process_button_event>
c0de67e6:	e006      	b.n	c0de67f6 <io_event+0x26>
c0de67e8:	f7ff fff0 	bl	c0de67cc <app_ticker_event_callback>
c0de67ec:	f000 fa44 	bl	c0de6c78 <ux_process_ticker_event>
c0de67f0:	e001      	b.n	c0de67f6 <io_event+0x26>
c0de67f2:	f000 fa59 	bl	c0de6ca8 <ux_process_default_event>
c0de67f6:	2001      	movs	r0, #1
c0de67f8:	bd80      	pop	{r7, pc}
c0de67fa:	bf00      	nop
c0de67fc:	000007ac 	.word	0x000007ac

c0de6800 <io_init>:
c0de6800:	4802      	ldr	r0, [pc, #8]	@ (c0de680c <io_init+0xc>)
c0de6802:	2101      	movs	r1, #1
c0de6804:	f809 1000 	strb.w	r1, [r9, r0]
c0de6808:	4770      	bx	lr
c0de680a:	bf00      	nop
c0de680c:	000008bc 	.word	0x000008bc

c0de6810 <io_recv_command>:
c0de6810:	b510      	push	{r4, lr}
c0de6812:	4c09      	ldr	r4, [pc, #36]	@ (c0de6838 <io_recv_command+0x28>)
c0de6814:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6818:	2801      	cmp	r0, #1
c0de681a:	d104      	bne.n	c0de6826 <io_recv_command+0x16>
c0de681c:	f000 fe96 	bl	c0de754c <os_io_start>
c0de6820:	2000      	movs	r0, #0
c0de6822:	f809 0004 	strb.w	r0, [r9, r4]
c0de6826:	2000      	movs	r0, #0
c0de6828:	2800      	cmp	r0, #0
c0de682a:	dc03      	bgt.n	c0de6834 <io_recv_command+0x24>
c0de682c:	2001      	movs	r0, #1
c0de682e:	f7fc fe69 	bl	c0de3504 <io_legacy_apdu_rx>
c0de6832:	e7f9      	b.n	c0de6828 <io_recv_command+0x18>
c0de6834:	bd10      	pop	{r4, pc}
c0de6836:	bf00      	nop
c0de6838:	000008bc 	.word	0x000008bc

c0de683c <io_send_response_buffers>:
c0de683c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6840:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de68d4 <io_send_response_buffers+0x98>
c0de6844:	4690      	mov	r8, r2
c0de6846:	460f      	mov	r7, r1
c0de6848:	4606      	mov	r6, r0
c0de684a:	f240 140f 	movw	r4, #271	@ 0x10f
c0de684e:	2500      	movs	r5, #0
c0de6850:	b1b6      	cbz	r6, c0de6880 <io_send_response_buffers+0x44>
c0de6852:	b1af      	cbz	r7, c0de6880 <io_send_response_buffers+0x44>
c0de6854:	2500      	movs	r5, #0
c0de6856:	b19f      	cbz	r7, c0de6880 <io_send_response_buffers+0x44>
c0de6858:	eb09 000a 	add.w	r0, r9, sl
c0de685c:	1b62      	subs	r2, r4, r5
c0de685e:	1941      	adds	r1, r0, r5
c0de6860:	4630      	mov	r0, r6
c0de6862:	f7ff fe03 	bl	c0de646c <buffer_copy>
c0de6866:	b130      	cbz	r0, c0de6876 <io_send_response_buffers+0x3a>
c0de6868:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de686c:	360c      	adds	r6, #12
c0de686e:	3f01      	subs	r7, #1
c0de6870:	4428      	add	r0, r5
c0de6872:	1a45      	subs	r5, r0, r1
c0de6874:	e7ef      	b.n	c0de6856 <io_send_response_buffers+0x1a>
c0de6876:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de687a:	2600      	movs	r6, #0
c0de687c:	2700      	movs	r7, #0
c0de687e:	e7e6      	b.n	c0de684e <io_send_response_buffers+0x12>
c0de6880:	fa1f f688 	uxth.w	r6, r8
c0de6884:	eb09 000a 	add.w	r0, r9, sl
c0de6888:	4629      	mov	r1, r5
c0de688a:	4632      	mov	r2, r6
c0de688c:	f000 f9aa 	bl	c0de6be4 <write_u16_be>
c0de6890:	4811      	ldr	r0, [pc, #68]	@ (c0de68d8 <io_send_response_buffers+0x9c>)
c0de6892:	1ca9      	adds	r1, r5, #2
c0de6894:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6898:	b118      	cbz	r0, c0de68a2 <io_send_response_buffers+0x66>
c0de689a:	4810      	ldr	r0, [pc, #64]	@ (c0de68dc <io_send_response_buffers+0xa0>)
c0de689c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de68a0:	b928      	cbnz	r0, c0de68ae <io_send_response_buffers+0x72>
c0de68a2:	f000 f81f 	bl	c0de68e4 <OUTLINED_FUNCTION_0>
c0de68a6:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de68aa:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de68ae:	f000 f819 	bl	c0de68e4 <OUTLINED_FUNCTION_0>
c0de68b2:	2800      	cmp	r0, #0
c0de68b4:	d40a      	bmi.n	c0de68cc <io_send_response_buffers+0x90>
c0de68b6:	480a      	ldr	r0, [pc, #40]	@ (c0de68e0 <io_send_response_buffers+0xa4>)
c0de68b8:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de68bc:	fab1 f181 	clz	r1, r1
c0de68c0:	f859 0000 	ldr.w	r0, [r9, r0]
c0de68c4:	0949      	lsrs	r1, r1, #5
c0de68c6:	7001      	strb	r1, [r0, #0]
c0de68c8:	f000 fe10 	bl	c0de74ec <os_lib_end>
c0de68cc:	20ff      	movs	r0, #255	@ 0xff
c0de68ce:	f000 fe29 	bl	c0de7524 <os_sched_exit>
c0de68d2:	bf00      	nop
c0de68d4:	00000407 	.word	0x00000407
c0de68d8:	000008cc 	.word	0x000008cc
c0de68dc:	000008cd 	.word	0x000008cd
c0de68e0:	000008d0 	.word	0x000008d0

c0de68e4 <OUTLINED_FUNCTION_0>:
c0de68e4:	eb09 000a 	add.w	r0, r9, sl
c0de68e8:	b289      	uxth	r1, r1
c0de68ea:	f7fc bdf7 	b.w	c0de34dc <io_legacy_apdu_tx>

c0de68ee <app_exit>:
c0de68ee:	20ff      	movs	r0, #255	@ 0xff
c0de68f0:	f000 fe18 	bl	c0de7524 <os_sched_exit>

c0de68f4 <common_app_init>:
c0de68f4:	b580      	push	{r7, lr}
c0de68f6:	f000 fa49 	bl	c0de6d8c <nbgl_objInit>
c0de68fa:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de68fe:	f7fc bedb 	b.w	c0de36b8 <io_seproxyhal_init>
	...

c0de6904 <standalone_app_main>:
c0de6904:	b5b0      	push	{r4, r5, r7, lr}
c0de6906:	b08c      	sub	sp, #48	@ 0x30
c0de6908:	4816      	ldr	r0, [pc, #88]	@ (c0de6964 <standalone_app_main+0x60>)
c0de690a:	2500      	movs	r5, #0
c0de690c:	466c      	mov	r4, sp
c0de690e:	f809 5000 	strb.w	r5, [r9, r0]
c0de6912:	4815      	ldr	r0, [pc, #84]	@ (c0de6968 <standalone_app_main+0x64>)
c0de6914:	f849 5000 	str.w	r5, [r9, r0]
c0de6918:	4814      	ldr	r0, [pc, #80]	@ (c0de696c <standalone_app_main+0x68>)
c0de691a:	f809 5000 	strb.w	r5, [r9, r0]
c0de691e:	4620      	mov	r0, r4
c0de6920:	f000 ff8a 	bl	c0de7838 <setjmp>
c0de6924:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6928:	0400      	lsls	r0, r0, #16
c0de692a:	d108      	bne.n	c0de693e <standalone_app_main+0x3a>
c0de692c:	4668      	mov	r0, sp
c0de692e:	f000 fe37 	bl	c0de75a0 <try_context_set>
c0de6932:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6934:	f7ff ffde 	bl	c0de68f4 <common_app_init>
c0de6938:	f7f9 fcfe 	bl	c0de0338 <app_main>
c0de693c:	e004      	b.n	c0de6948 <standalone_app_main+0x44>
c0de693e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6940:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de6944:	f000 fe2c 	bl	c0de75a0 <try_context_set>
c0de6948:	f000 fe22 	bl	c0de7590 <try_context_get>
c0de694c:	42a0      	cmp	r0, r4
c0de694e:	d102      	bne.n	c0de6956 <standalone_app_main+0x52>
c0de6950:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6952:	f000 fe25 	bl	c0de75a0 <try_context_set>
c0de6956:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de695a:	b908      	cbnz	r0, c0de6960 <standalone_app_main+0x5c>
c0de695c:	f7ff ffc7 	bl	c0de68ee <app_exit>
c0de6960:	f000 fa75 	bl	c0de6e4e <os_longjmp>
c0de6964:	000008cc 	.word	0x000008cc
c0de6968:	000008d0 	.word	0x000008d0
c0de696c:	000008cd 	.word	0x000008cd

c0de6970 <library_app_main>:
c0de6970:	b5b0      	push	{r4, r5, r7, lr}
c0de6972:	b08c      	sub	sp, #48	@ 0x30
c0de6974:	466c      	mov	r4, sp
c0de6976:	4605      	mov	r5, r0
c0de6978:	4620      	mov	r0, r4
c0de697a:	f000 ff5d 	bl	c0de7838 <setjmp>
c0de697e:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6982:	0400      	lsls	r0, r0, #16
c0de6984:	d124      	bne.n	c0de69d0 <library_app_main+0x60>
c0de6986:	4668      	mov	r0, sp
c0de6988:	f000 fe0a 	bl	c0de75a0 <try_context_set>
c0de698c:	900a      	str	r0, [sp, #40]	@ 0x28
c0de698e:	6868      	ldr	r0, [r5, #4]
c0de6990:	2804      	cmp	r0, #4
c0de6992:	d024      	beq.n	c0de69de <library_app_main+0x6e>
c0de6994:	2803      	cmp	r0, #3
c0de6996:	d026      	beq.n	c0de69e6 <library_app_main+0x76>
c0de6998:	2802      	cmp	r0, #2
c0de699a:	d127      	bne.n	c0de69ec <library_app_main+0x7c>
c0de699c:	68e8      	ldr	r0, [r5, #12]
c0de699e:	f7fa fe1f 	bl	c0de15e0 <swap_copy_transaction_parameters>
c0de69a2:	b318      	cbz	r0, c0de69ec <library_app_main+0x7c>
c0de69a4:	4816      	ldr	r0, [pc, #88]	@ (c0de6a00 <library_app_main+0x90>)
c0de69a6:	2201      	movs	r2, #1
c0de69a8:	f809 2000 	strb.w	r2, [r9, r0]
c0de69ac:	4815      	ldr	r0, [pc, #84]	@ (c0de6a04 <library_app_main+0x94>)
c0de69ae:	2200      	movs	r2, #0
c0de69b0:	f809 2000 	strb.w	r2, [r9, r0]
c0de69b4:	4a14      	ldr	r2, [pc, #80]	@ (c0de6a08 <library_app_main+0x98>)
c0de69b6:	68e8      	ldr	r0, [r5, #12]
c0de69b8:	3020      	adds	r0, #32
c0de69ba:	f849 0002 	str.w	r0, [r9, r2]
c0de69be:	f7ff ff99 	bl	c0de68f4 <common_app_init>
c0de69c2:	4812      	ldr	r0, [pc, #72]	@ (c0de6a0c <library_app_main+0x9c>)
c0de69c4:	4478      	add	r0, pc
c0de69c6:	f7fe fc2b 	bl	c0de5220 <nbgl_useCaseSpinner>
c0de69ca:	f7f9 fcb5 	bl	c0de0338 <app_main>
c0de69ce:	e00d      	b.n	c0de69ec <library_app_main+0x7c>
c0de69d0:	2000      	movs	r0, #0
c0de69d2:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de69d6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de69d8:	f000 fde2 	bl	c0de75a0 <try_context_set>
c0de69dc:	e006      	b.n	c0de69ec <library_app_main+0x7c>
c0de69de:	68e8      	ldr	r0, [r5, #12]
c0de69e0:	f7fa fdd2 	bl	c0de1588 <swap_handle_get_printable_amount>
c0de69e4:	e002      	b.n	c0de69ec <library_app_main+0x7c>
c0de69e6:	68e8      	ldr	r0, [r5, #12]
c0de69e8:	f7fa fd74 	bl	c0de14d4 <swap_handle_check_address>
c0de69ec:	f000 fdd0 	bl	c0de7590 <try_context_get>
c0de69f0:	42a0      	cmp	r0, r4
c0de69f2:	d102      	bne.n	c0de69fa <library_app_main+0x8a>
c0de69f4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de69f6:	f000 fdd3 	bl	c0de75a0 <try_context_set>
c0de69fa:	f000 fd77 	bl	c0de74ec <os_lib_end>
c0de69fe:	bf00      	nop
c0de6a00:	000008cc 	.word	0x000008cc
c0de6a04:	000008cd 	.word	0x000008cd
c0de6a08:	000008d0 	.word	0x000008d0
c0de6a0c:	00001160 	.word	0x00001160

c0de6a10 <apdu_parser>:
c0de6a10:	2a04      	cmp	r2, #4
c0de6a12:	d316      	bcc.n	c0de6a42 <apdu_parser+0x32>
c0de6a14:	d102      	bne.n	c0de6a1c <apdu_parser+0xc>
c0de6a16:	2300      	movs	r3, #0
c0de6a18:	7103      	strb	r3, [r0, #4]
c0de6a1a:	e004      	b.n	c0de6a26 <apdu_parser+0x16>
c0de6a1c:	790b      	ldrb	r3, [r1, #4]
c0de6a1e:	3a05      	subs	r2, #5
c0de6a20:	429a      	cmp	r2, r3
c0de6a22:	7103      	strb	r3, [r0, #4]
c0de6a24:	d10d      	bne.n	c0de6a42 <apdu_parser+0x32>
c0de6a26:	780a      	ldrb	r2, [r1, #0]
c0de6a28:	2b00      	cmp	r3, #0
c0de6a2a:	7002      	strb	r2, [r0, #0]
c0de6a2c:	784a      	ldrb	r2, [r1, #1]
c0de6a2e:	7042      	strb	r2, [r0, #1]
c0de6a30:	788a      	ldrb	r2, [r1, #2]
c0de6a32:	7082      	strb	r2, [r0, #2]
c0de6a34:	bf18      	it	ne
c0de6a36:	1d4b      	addne	r3, r1, #5
c0de6a38:	78c9      	ldrb	r1, [r1, #3]
c0de6a3a:	6083      	str	r3, [r0, #8]
c0de6a3c:	70c1      	strb	r1, [r0, #3]
c0de6a3e:	2001      	movs	r0, #1
c0de6a40:	4770      	bx	lr
c0de6a42:	2000      	movs	r0, #0
c0de6a44:	4770      	bx	lr

c0de6a46 <read_u32_be>:
c0de6a46:	5c42      	ldrb	r2, [r0, r1]
c0de6a48:	4408      	add	r0, r1
c0de6a4a:	7841      	ldrb	r1, [r0, #1]
c0de6a4c:	7883      	ldrb	r3, [r0, #2]
c0de6a4e:	78c0      	ldrb	r0, [r0, #3]
c0de6a50:	0409      	lsls	r1, r1, #16
c0de6a52:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6a56:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6a5a:	4408      	add	r0, r1
c0de6a5c:	4770      	bx	lr

c0de6a5e <read_u64_be>:
c0de6a5e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6a60:	1842      	adds	r2, r0, r1
c0de6a62:	5c40      	ldrb	r0, [r0, r1]
c0de6a64:	7917      	ldrb	r7, [r2, #4]
c0de6a66:	7953      	ldrb	r3, [r2, #5]
c0de6a68:	7854      	ldrb	r4, [r2, #1]
c0de6a6a:	7895      	ldrb	r5, [r2, #2]
c0de6a6c:	78d6      	ldrb	r6, [r2, #3]
c0de6a6e:	063f      	lsls	r7, r7, #24
c0de6a70:	0421      	lsls	r1, r4, #16
c0de6a72:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6a76:	7997      	ldrb	r7, [r2, #6]
c0de6a78:	79d2      	ldrb	r2, [r2, #7]
c0de6a7a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6a7e:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6a82:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6a86:	1981      	adds	r1, r0, r6
c0de6a88:	441a      	add	r2, r3
c0de6a8a:	4610      	mov	r0, r2
c0de6a8c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6a8e <read_u16_le>:
c0de6a8e:	5c42      	ldrb	r2, [r0, r1]
c0de6a90:	4408      	add	r0, r1
c0de6a92:	7840      	ldrb	r0, [r0, #1]
c0de6a94:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6a98:	b280      	uxth	r0, r0
c0de6a9a:	4770      	bx	lr

c0de6a9c <read_u32_le>:
c0de6a9c:	5c42      	ldrb	r2, [r0, r1]
c0de6a9e:	4408      	add	r0, r1
c0de6aa0:	7841      	ldrb	r1, [r0, #1]
c0de6aa2:	7883      	ldrb	r3, [r0, #2]
c0de6aa4:	78c0      	ldrb	r0, [r0, #3]
c0de6aa6:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6aaa:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6aae:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6ab2:	4770      	bx	lr

c0de6ab4 <read_u64_le>:
c0de6ab4:	b5b0      	push	{r4, r5, r7, lr}
c0de6ab6:	5c42      	ldrb	r2, [r0, r1]
c0de6ab8:	4401      	add	r1, r0
c0de6aba:	7848      	ldrb	r0, [r1, #1]
c0de6abc:	788b      	ldrb	r3, [r1, #2]
c0de6abe:	790d      	ldrb	r5, [r1, #4]
c0de6ac0:	78cc      	ldrb	r4, [r1, #3]
c0de6ac2:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6ac6:	794a      	ldrb	r2, [r1, #5]
c0de6ac8:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6acc:	798b      	ldrb	r3, [r1, #6]
c0de6ace:	79c9      	ldrb	r1, [r1, #7]
c0de6ad0:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6ad4:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6ad8:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6adc:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6ae0:	bdb0      	pop	{r4, r5, r7, pc}

c0de6ae2 <send_swap_error_simple>:
c0de6ae2:	b082      	sub	sp, #8
c0de6ae4:	2300      	movs	r3, #0
c0de6ae6:	9300      	str	r3, [sp, #0]
c0de6ae8:	2300      	movs	r3, #0
c0de6aea:	f000 f801 	bl	c0de6af0 <send_swap_error_with_buffers>
	...

c0de6af0 <send_swap_error_with_buffers>:
c0de6af0:	b09c      	sub	sp, #112	@ 0x70
c0de6af2:	4604      	mov	r4, r0
c0de6af4:	4815      	ldr	r0, [pc, #84]	@ (c0de6b4c <send_swap_error_with_buffers+0x5c>)
c0de6af6:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6afa:	b320      	cbz	r0, c0de6b46 <send_swap_error_with_buffers+0x56>
c0de6afc:	4814      	ldr	r0, [pc, #80]	@ (c0de6b50 <send_swap_error_with_buffers+0x60>)
c0de6afe:	461d      	mov	r5, r3
c0de6b00:	2301      	movs	r3, #1
c0de6b02:	466e      	mov	r6, sp
c0de6b04:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6b06:	f809 3000 	strb.w	r3, [r9, r0]
c0de6b0a:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6b0e:	f106 0008 	add.w	r0, r6, #8
c0de6b12:	2164      	movs	r1, #100	@ 0x64
c0de6b14:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6b18:	f000 fe4a 	bl	c0de77b0 <__aeabi_memclr>
c0de6b1c:	2002      	movs	r0, #2
c0de6b1e:	4629      	mov	r1, r5
c0de6b20:	9001      	str	r0, [sp, #4]
c0de6b22:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6b26:	2f08      	cmp	r7, #8
c0de6b28:	9000      	str	r0, [sp, #0]
c0de6b2a:	bf28      	it	cs
c0de6b2c:	2708      	movcs	r7, #8
c0de6b2e:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6b32:	0082      	lsls	r2, r0, #2
c0de6b34:	f106 000c 	add.w	r0, r6, #12
c0de6b38:	f000 fe30 	bl	c0de779c <__aeabi_memcpy>
c0de6b3c:	1c79      	adds	r1, r7, #1
c0de6b3e:	4630      	mov	r0, r6
c0de6b40:	4622      	mov	r2, r4
c0de6b42:	f7ff fe7b 	bl	c0de683c <io_send_response_buffers>
c0de6b46:	2000      	movs	r0, #0
c0de6b48:	f000 fcec 	bl	c0de7524 <os_sched_exit>
c0de6b4c:	000008cc 	.word	0x000008cc
c0de6b50:	000008cd 	.word	0x000008cd

c0de6b54 <swap_str_to_u64>:
c0de6b54:	2908      	cmp	r1, #8
c0de6b56:	d812      	bhi.n	c0de6b7e <swap_str_to_u64+0x2a>
c0de6b58:	b570      	push	{r4, r5, r6, lr}
c0de6b5a:	2500      	movs	r5, #0
c0de6b5c:	460b      	mov	r3, r1
c0de6b5e:	2400      	movs	r4, #0
c0de6b60:	b14b      	cbz	r3, c0de6b76 <swap_str_to_u64+0x22>
c0de6b62:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6b66:	0224      	lsls	r4, r4, #8
c0de6b68:	3b01      	subs	r3, #1
c0de6b6a:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6b6e:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6b72:	4635      	mov	r5, r6
c0de6b74:	e7f4      	b.n	c0de6b60 <swap_str_to_u64+0xc>
c0de6b76:	e9c2 5400 	strd	r5, r4, [r2]
c0de6b7a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6b7e:	2000      	movs	r0, #0
c0de6b80:	2909      	cmp	r1, #9
c0de6b82:	bf38      	it	cc
c0de6b84:	2001      	movcc	r0, #1
c0de6b86:	4770      	bx	lr

c0de6b88 <varint_read>:
c0de6b88:	b510      	push	{r4, lr}
c0de6b8a:	b1d9      	cbz	r1, c0de6bc4 <varint_read+0x3c>
c0de6b8c:	4614      	mov	r4, r2
c0de6b8e:	4602      	mov	r2, r0
c0de6b90:	7800      	ldrb	r0, [r0, #0]
c0de6b92:	28ff      	cmp	r0, #255	@ 0xff
c0de6b94:	d00c      	beq.n	c0de6bb0 <varint_read+0x28>
c0de6b96:	28fe      	cmp	r0, #254	@ 0xfe
c0de6b98:	d012      	beq.n	c0de6bc0 <varint_read+0x38>
c0de6b9a:	28fd      	cmp	r0, #253	@ 0xfd
c0de6b9c:	d115      	bne.n	c0de6bca <varint_read+0x42>
c0de6b9e:	2903      	cmp	r1, #3
c0de6ba0:	d310      	bcc.n	c0de6bc4 <varint_read+0x3c>
c0de6ba2:	4610      	mov	r0, r2
c0de6ba4:	2101      	movs	r1, #1
c0de6ba6:	f7ff ff72 	bl	c0de6a8e <read_u16_le>
c0de6baa:	2100      	movs	r1, #0
c0de6bac:	2203      	movs	r2, #3
c0de6bae:	e015      	b.n	c0de6bdc <varint_read+0x54>
c0de6bb0:	2909      	cmp	r1, #9
c0de6bb2:	d307      	bcc.n	c0de6bc4 <varint_read+0x3c>
c0de6bb4:	4610      	mov	r0, r2
c0de6bb6:	2101      	movs	r1, #1
c0de6bb8:	f7ff ff7c 	bl	c0de6ab4 <read_u64_le>
c0de6bbc:	2209      	movs	r2, #9
c0de6bbe:	e00d      	b.n	c0de6bdc <varint_read+0x54>
c0de6bc0:	2905      	cmp	r1, #5
c0de6bc2:	d205      	bcs.n	c0de6bd0 <varint_read+0x48>
c0de6bc4:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6bc8:	e00a      	b.n	c0de6be0 <varint_read+0x58>
c0de6bca:	2100      	movs	r1, #0
c0de6bcc:	2201      	movs	r2, #1
c0de6bce:	e005      	b.n	c0de6bdc <varint_read+0x54>
c0de6bd0:	4610      	mov	r0, r2
c0de6bd2:	2101      	movs	r1, #1
c0de6bd4:	f7ff ff62 	bl	c0de6a9c <read_u32_le>
c0de6bd8:	2100      	movs	r1, #0
c0de6bda:	2205      	movs	r2, #5
c0de6bdc:	e9c4 0100 	strd	r0, r1, [r4]
c0de6be0:	4610      	mov	r0, r2
c0de6be2:	bd10      	pop	{r4, pc}

c0de6be4 <write_u16_be>:
c0de6be4:	0a13      	lsrs	r3, r2, #8
c0de6be6:	5443      	strb	r3, [r0, r1]
c0de6be8:	4408      	add	r0, r1
c0de6bea:	7042      	strb	r2, [r0, #1]
c0de6bec:	4770      	bx	lr
	...

c0de6bf0 <ux_process_button_event>:
c0de6bf0:	b5b0      	push	{r4, r5, r7, lr}
c0de6bf2:	4604      	mov	r4, r0
c0de6bf4:	2001      	movs	r0, #1
c0de6bf6:	f000 f815 	bl	c0de6c24 <ux_forward_event>
c0de6bfa:	4605      	mov	r5, r0
c0de6bfc:	f000 f8cb 	bl	c0de6d96 <nbgl_objAllowDrawing>
c0de6c00:	b165      	cbz	r5, c0de6c1c <ux_process_button_event+0x2c>
c0de6c02:	4807      	ldr	r0, [pc, #28]	@ (c0de6c20 <ux_process_button_event+0x30>)
c0de6c04:	2164      	movs	r1, #100	@ 0x64
c0de6c06:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6c0a:	4341      	muls	r1, r0
c0de6c0c:	78e0      	ldrb	r0, [r4, #3]
c0de6c0e:	0840      	lsrs	r0, r0, #1
c0de6c10:	f000 f90c 	bl	c0de6e2c <nbgl_buttonsHandler>
c0de6c14:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6c18:	f000 b8b3 	b.w	c0de6d82 <nbgl_refresh>
c0de6c1c:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c1e:	bf00      	nop
c0de6c20:	000008d4 	.word	0x000008d4

c0de6c24 <ux_forward_event>:
c0de6c24:	b5b0      	push	{r4, r5, r7, lr}
c0de6c26:	4604      	mov	r4, r0
c0de6c28:	4812      	ldr	r0, [pc, #72]	@ (c0de6c74 <ux_forward_event+0x50>)
c0de6c2a:	2101      	movs	r1, #1
c0de6c2c:	f809 1000 	strb.w	r1, [r9, r0]
c0de6c30:	eb09 0500 	add.w	r5, r9, r0
c0de6c34:	2000      	movs	r0, #0
c0de6c36:	6068      	str	r0, [r5, #4]
c0de6c38:	4628      	mov	r0, r5
c0de6c3a:	f000 fc4d 	bl	c0de74d8 <os_ux>
c0de6c3e:	2004      	movs	r0, #4
c0de6c40:	f000 fcb8 	bl	c0de75b4 <os_sched_last_status>
c0de6c44:	2869      	cmp	r0, #105	@ 0x69
c0de6c46:	6068      	str	r0, [r5, #4]
c0de6c48:	d108      	bne.n	c0de6c5c <ux_forward_event+0x38>
c0de6c4a:	2001      	movs	r0, #1
c0de6c4c:	f000 f8a3 	bl	c0de6d96 <nbgl_objAllowDrawing>
c0de6c50:	f000 f8b0 	bl	c0de6db4 <nbgl_screenRedraw>
c0de6c54:	f000 f895 	bl	c0de6d82 <nbgl_refresh>
c0de6c58:	2000      	movs	r0, #0
c0de6c5a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c5c:	b144      	cbz	r4, c0de6c70 <ux_forward_event+0x4c>
c0de6c5e:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6c62:	bf18      	it	ne
c0de6c64:	2101      	movne	r1, #1
c0de6c66:	2800      	cmp	r0, #0
c0de6c68:	bf18      	it	ne
c0de6c6a:	2001      	movne	r0, #1
c0de6c6c:	4008      	ands	r0, r1
c0de6c6e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c70:	2001      	movs	r0, #1
c0de6c72:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c74:	000008c0 	.word	0x000008c0

c0de6c78 <ux_process_ticker_event>:
c0de6c78:	b510      	push	{r4, lr}
c0de6c7a:	480a      	ldr	r0, [pc, #40]	@ (c0de6ca4 <ux_process_ticker_event+0x2c>)
c0de6c7c:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6c80:	3101      	adds	r1, #1
c0de6c82:	f849 1000 	str.w	r1, [r9, r0]
c0de6c86:	2001      	movs	r0, #1
c0de6c88:	f7ff ffcc 	bl	c0de6c24 <ux_forward_event>
c0de6c8c:	4604      	mov	r4, r0
c0de6c8e:	f000 f882 	bl	c0de6d96 <nbgl_objAllowDrawing>
c0de6c92:	b134      	cbz	r4, c0de6ca2 <ux_process_ticker_event+0x2a>
c0de6c94:	2064      	movs	r0, #100	@ 0x64
c0de6c96:	f000 f897 	bl	c0de6dc8 <nbgl_screenHandler>
c0de6c9a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6c9e:	f000 b870 	b.w	c0de6d82 <nbgl_refresh>
c0de6ca2:	bd10      	pop	{r4, pc}
c0de6ca4:	000008d4 	.word	0x000008d4

c0de6ca8 <ux_process_default_event>:
c0de6ca8:	2000      	movs	r0, #0
c0de6caa:	f7ff bfbb 	b.w	c0de6c24 <ux_forward_event>

c0de6cae <hash_iovec_ex>:
c0de6cae:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6cb2:	468a      	mov	sl, r1
c0de6cb4:	4611      	mov	r1, r2
c0de6cb6:	461a      	mov	r2, r3
c0de6cb8:	4605      	mov	r5, r0
c0de6cba:	f000 f84d 	bl	c0de6d58 <cx_hash_init_ex>
c0de6cbe:	4607      	mov	r7, r0
c0de6cc0:	b9a8      	cbnz	r0, c0de6cee <hash_iovec_ex+0x40>
c0de6cc2:	f10d 0820 	add.w	r8, sp, #32
c0de6cc6:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6cca:	1d04      	adds	r4, r0, #4
c0de6ccc:	b156      	cbz	r6, c0de6ce4 <hash_iovec_ex+0x36>
c0de6cce:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6cd2:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6cd6:	4628      	mov	r0, r5
c0de6cd8:	f000 f843 	bl	c0de6d62 <cx_hash_update>
c0de6cdc:	3e01      	subs	r6, #1
c0de6cde:	2800      	cmp	r0, #0
c0de6ce0:	d0f4      	beq.n	c0de6ccc <hash_iovec_ex+0x1e>
c0de6ce2:	e003      	b.n	c0de6cec <hash_iovec_ex+0x3e>
c0de6ce4:	4628      	mov	r0, r5
c0de6ce6:	4641      	mov	r1, r8
c0de6ce8:	f000 f831 	bl	c0de6d4e <cx_hash_final>
c0de6cec:	4607      	mov	r7, r0
c0de6cee:	4628      	mov	r0, r5
c0de6cf0:	4651      	mov	r1, sl
c0de6cf2:	f000 fd6b 	bl	c0de77cc <explicit_bzero>
c0de6cf6:	4638      	mov	r0, r7
c0de6cf8:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6cfc <cx_keccak_256_hash_iovec>:
c0de6cfc:	b580      	push	{r7, lr}
c0de6cfe:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6d00:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6d04:	a804      	add	r0, sp, #16
c0de6d06:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6d0a:	2206      	movs	r2, #6
c0de6d0c:	2320      	movs	r3, #32
c0de6d0e:	f7ff ffce 	bl	c0de6cae <hash_iovec_ex>
c0de6d12:	b06e      	add	sp, #440	@ 0x1b8
c0de6d14:	bd80      	pop	{r7, pc}

c0de6d16 <cx_blake2b_512_hash_iovec>:
c0de6d16:	b580      	push	{r7, lr}
c0de6d18:	b0c4      	sub	sp, #272	@ 0x110
c0de6d1a:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6d1e:	a804      	add	r0, sp, #16
c0de6d20:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6d24:	2209      	movs	r2, #9
c0de6d26:	2340      	movs	r3, #64	@ 0x40
c0de6d28:	f7ff ffc1 	bl	c0de6cae <hash_iovec_ex>
c0de6d2c:	b044      	add	sp, #272	@ 0x110
c0de6d2e:	bd80      	pop	{r7, pc}

c0de6d30 <cx_ecdsa_sign_no_throw>:
c0de6d30:	b403      	push	{r0, r1}
c0de6d32:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6d36:	f000 b81d 	b.w	c0de6d74 <cx_trampoline_helper>

c0de6d3a <cx_ecfp_generate_pair2_no_throw>:
c0de6d3a:	b403      	push	{r0, r1}
c0de6d3c:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6d40:	f000 b818 	b.w	c0de6d74 <cx_trampoline_helper>

c0de6d44 <cx_ecfp_init_private_key_no_throw>:
c0de6d44:	b403      	push	{r0, r1}
c0de6d46:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6d4a:	f000 b813 	b.w	c0de6d74 <cx_trampoline_helper>

c0de6d4e <cx_hash_final>:
c0de6d4e:	b403      	push	{r0, r1}
c0de6d50:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6d54:	f000 b80e 	b.w	c0de6d74 <cx_trampoline_helper>

c0de6d58 <cx_hash_init_ex>:
c0de6d58:	b403      	push	{r0, r1}
c0de6d5a:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6d5e:	f000 b809 	b.w	c0de6d74 <cx_trampoline_helper>

c0de6d62 <cx_hash_update>:
c0de6d62:	b403      	push	{r0, r1}
c0de6d64:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6d68:	f000 b804 	b.w	c0de6d74 <cx_trampoline_helper>

c0de6d6c <cx_aes_siv_reset>:
c0de6d6c:	b403      	push	{r0, r1}
c0de6d6e:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6d72:	e7ff      	b.n	c0de6d74 <cx_trampoline_helper>

c0de6d74 <cx_trampoline_helper>:
c0de6d74:	4900      	ldr	r1, [pc, #0]	@ (c0de6d78 <cx_trampoline_helper+0x4>)
c0de6d76:	4708      	bx	r1
c0de6d78:	00808001 	.word	0x00808001

c0de6d7c <assert_exit>:
c0de6d7c:	20ff      	movs	r0, #255	@ 0xff
c0de6d7e:	f000 fbd1 	bl	c0de7524 <os_sched_exit>

c0de6d82 <nbgl_refresh>:
c0de6d82:	b403      	push	{r0, r1}
c0de6d84:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6d88:	f000 b85a 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6d8c <nbgl_objInit>:
c0de6d8c:	b403      	push	{r0, r1}
c0de6d8e:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6d92:	f000 b855 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6d96 <nbgl_objAllowDrawing>:
c0de6d96:	b403      	push	{r0, r1}
c0de6d98:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6d9c:	f000 b850 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6da0 <nbgl_screenSet>:
c0de6da0:	b403      	push	{r0, r1}
c0de6da2:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6da6:	f000 b84b 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6daa <nbgl_screenPush>:
c0de6daa:	b403      	push	{r0, r1}
c0de6dac:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6db0:	f000 b846 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6db4 <nbgl_screenRedraw>:
c0de6db4:	b403      	push	{r0, r1}
c0de6db6:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6dba:	f000 b841 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6dbe <nbgl_screenPop>:
c0de6dbe:	b403      	push	{r0, r1}
c0de6dc0:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6dc4:	f000 b83c 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6dc8 <nbgl_screenHandler>:
c0de6dc8:	b403      	push	{r0, r1}
c0de6dca:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6dce:	f000 b837 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6dd2 <nbgl_objPoolGet>:
c0de6dd2:	b403      	push	{r0, r1}
c0de6dd4:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6dd8:	f000 b832 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6ddc <nbgl_containerPoolGet>:
c0de6ddc:	b403      	push	{r0, r1}
c0de6dde:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6de2:	f000 b82d 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6de6 <nbgl_getFont>:
c0de6de6:	b403      	push	{r0, r1}
c0de6de8:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6dec:	f000 b828 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6df0 <nbgl_getFontLineHeight>:
c0de6df0:	b403      	push	{r0, r1}
c0de6df2:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6df6:	f000 b823 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6dfa <nbgl_getTextNbLinesInWidth>:
c0de6dfa:	b403      	push	{r0, r1}
c0de6dfc:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6e00:	f000 b81e 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6e04 <nbgl_getTextNbPagesInWidth>:
c0de6e04:	b403      	push	{r0, r1}
c0de6e06:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6e0a:	f000 b819 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6e0e <nbgl_getTextWidth>:
c0de6e0e:	b403      	push	{r0, r1}
c0de6e10:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6e14:	f000 b814 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6e18 <nbgl_getTextMaxLenInNbLines>:
c0de6e18:	b403      	push	{r0, r1}
c0de6e1a:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6e1e:	f000 b80f 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6e22 <nbgl_textReduceOnNbLines>:
c0de6e22:	b403      	push	{r0, r1}
c0de6e24:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6e28:	f000 b80a 	b.w	c0de6e40 <nbgl_trampoline_helper>

c0de6e2c <nbgl_buttonsHandler>:
c0de6e2c:	b403      	push	{r0, r1}
c0de6e2e:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6e32:	f000 b805 	b.w	c0de6e40 <nbgl_trampoline_helper>
	...

c0de6e38 <pic_init>:
c0de6e38:	b403      	push	{r0, r1}
c0de6e3a:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6e3e:	e7ff      	b.n	c0de6e40 <nbgl_trampoline_helper>

c0de6e40 <nbgl_trampoline_helper>:
c0de6e40:	4900      	ldr	r1, [pc, #0]	@ (c0de6e44 <nbgl_trampoline_helper+0x4>)
c0de6e42:	4708      	bx	r1
c0de6e44:	00808001 	.word	0x00808001

c0de6e48 <os_boot>:
c0de6e48:	2000      	movs	r0, #0
c0de6e4a:	f000 bba9 	b.w	c0de75a0 <try_context_set>

c0de6e4e <os_longjmp>:
c0de6e4e:	4604      	mov	r4, r0
c0de6e50:	f000 fb9e 	bl	c0de7590 <try_context_get>
c0de6e54:	4621      	mov	r1, r4
c0de6e56:	f000 fcf5 	bl	c0de7844 <longjmp>
	...

c0de6e5c <os_explicit_zero_BSS_segment>:
c0de6e5c:	4803      	ldr	r0, [pc, #12]	@ (c0de6e6c <os_explicit_zero_BSS_segment+0x10>)
c0de6e5e:	4904      	ldr	r1, [pc, #16]	@ (c0de6e70 <os_explicit_zero_BSS_segment+0x14>)
c0de6e60:	4448      	add	r0, r9
c0de6e62:	4449      	add	r1, r9
c0de6e64:	1a09      	subs	r1, r1, r0
c0de6e66:	f000 bcb1 	b.w	c0de77cc <explicit_bzero>
c0de6e6a:	bf00      	nop
c0de6e6c:	00000000 	.word	0x00000000
c0de6e70:	000008d8 	.word	0x000008d8

c0de6e74 <snprintf>:
c0de6e74:	b081      	sub	sp, #4
c0de6e76:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6e7a:	b087      	sub	sp, #28
c0de6e7c:	2800      	cmp	r0, #0
c0de6e7e:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6e80:	f000 817a 	beq.w	c0de7178 <snprintf+0x304>
c0de6e84:	460d      	mov	r5, r1
c0de6e86:	2900      	cmp	r1, #0
c0de6e88:	f000 8176 	beq.w	c0de7178 <snprintf+0x304>
c0de6e8c:	4629      	mov	r1, r5
c0de6e8e:	4616      	mov	r6, r2
c0de6e90:	4604      	mov	r4, r0
c0de6e92:	f000 fc8d 	bl	c0de77b0 <__aeabi_memclr>
c0de6e96:	f1b5 0801 	subs.w	r8, r5, #1
c0de6e9a:	f000 816d 	beq.w	c0de7178 <snprintf+0x304>
c0de6e9e:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6ea0:	9002      	str	r0, [sp, #8]
c0de6ea2:	7830      	ldrb	r0, [r6, #0]
c0de6ea4:	2800      	cmp	r0, #0
c0de6ea6:	f000 8167 	beq.w	c0de7178 <snprintf+0x304>
c0de6eaa:	2700      	movs	r7, #0
c0de6eac:	b128      	cbz	r0, c0de6eba <snprintf+0x46>
c0de6eae:	2825      	cmp	r0, #37	@ 0x25
c0de6eb0:	d003      	beq.n	c0de6eba <snprintf+0x46>
c0de6eb2:	19f0      	adds	r0, r6, r7
c0de6eb4:	3701      	adds	r7, #1
c0de6eb6:	7840      	ldrb	r0, [r0, #1]
c0de6eb8:	e7f8      	b.n	c0de6eac <snprintf+0x38>
c0de6eba:	4547      	cmp	r7, r8
c0de6ebc:	bf28      	it	cs
c0de6ebe:	4647      	movcs	r7, r8
c0de6ec0:	4620      	mov	r0, r4
c0de6ec2:	4631      	mov	r1, r6
c0de6ec4:	463a      	mov	r2, r7
c0de6ec6:	f000 fc6b 	bl	c0de77a0 <__aeabi_memmove>
c0de6eca:	ebb8 0807 	subs.w	r8, r8, r7
c0de6ece:	f000 8153 	beq.w	c0de7178 <snprintf+0x304>
c0de6ed2:	5df1      	ldrb	r1, [r6, r7]
c0de6ed4:	19f0      	adds	r0, r6, r7
c0de6ed6:	443c      	add	r4, r7
c0de6ed8:	4606      	mov	r6, r0
c0de6eda:	2925      	cmp	r1, #37	@ 0x25
c0de6edc:	d1e1      	bne.n	c0de6ea2 <snprintf+0x2e>
c0de6ede:	1c41      	adds	r1, r0, #1
c0de6ee0:	f04f 0b00 	mov.w	fp, #0
c0de6ee4:	f04f 0e20 	mov.w	lr, #32
c0de6ee8:	2500      	movs	r5, #0
c0de6eea:	2600      	movs	r6, #0
c0de6eec:	3101      	adds	r1, #1
c0de6eee:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6ef2:	4632      	mov	r2, r6
c0de6ef4:	3101      	adds	r1, #1
c0de6ef6:	2600      	movs	r6, #0
c0de6ef8:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6efa:	d0f8      	beq.n	c0de6eee <snprintf+0x7a>
c0de6efc:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6f00:	2e0a      	cmp	r6, #10
c0de6f02:	d313      	bcc.n	c0de6f2c <snprintf+0xb8>
c0de6f04:	2b25      	cmp	r3, #37	@ 0x25
c0de6f06:	d046      	beq.n	c0de6f96 <snprintf+0x122>
c0de6f08:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6f0a:	d01f      	beq.n	c0de6f4c <snprintf+0xd8>
c0de6f0c:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6f0e:	d129      	bne.n	c0de6f64 <snprintf+0xf0>
c0de6f10:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6f14:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6f16:	d13c      	bne.n	c0de6f92 <snprintf+0x11e>
c0de6f18:	780a      	ldrb	r2, [r1, #0]
c0de6f1a:	2a48      	cmp	r2, #72	@ 0x48
c0de6f1c:	d003      	beq.n	c0de6f26 <snprintf+0xb2>
c0de6f1e:	2a73      	cmp	r2, #115	@ 0x73
c0de6f20:	d001      	beq.n	c0de6f26 <snprintf+0xb2>
c0de6f22:	2a68      	cmp	r2, #104	@ 0x68
c0de6f24:	d135      	bne.n	c0de6f92 <snprintf+0x11e>
c0de6f26:	9a02      	ldr	r2, [sp, #8]
c0de6f28:	2601      	movs	r6, #1
c0de6f2a:	e017      	b.n	c0de6f5c <snprintf+0xe8>
c0de6f2c:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6f30:	ea56 060b 	orrs.w	r6, r6, fp
c0de6f34:	bf08      	it	eq
c0de6f36:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6f3a:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6f3e:	3901      	subs	r1, #1
c0de6f40:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6f44:	4616      	mov	r6, r2
c0de6f46:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6f4a:	e7cf      	b.n	c0de6eec <snprintf+0x78>
c0de6f4c:	460b      	mov	r3, r1
c0de6f4e:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6f52:	2a73      	cmp	r2, #115	@ 0x73
c0de6f54:	d11d      	bne.n	c0de6f92 <snprintf+0x11e>
c0de6f56:	9a02      	ldr	r2, [sp, #8]
c0de6f58:	2602      	movs	r6, #2
c0de6f5a:	4619      	mov	r1, r3
c0de6f5c:	1d13      	adds	r3, r2, #4
c0de6f5e:	9302      	str	r3, [sp, #8]
c0de6f60:	6815      	ldr	r5, [r2, #0]
c0de6f62:	e7c3      	b.n	c0de6eec <snprintf+0x78>
c0de6f64:	2b48      	cmp	r3, #72	@ 0x48
c0de6f66:	d018      	beq.n	c0de6f9a <snprintf+0x126>
c0de6f68:	2b58      	cmp	r3, #88	@ 0x58
c0de6f6a:	d019      	beq.n	c0de6fa0 <snprintf+0x12c>
c0de6f6c:	2b63      	cmp	r3, #99	@ 0x63
c0de6f6e:	d020      	beq.n	c0de6fb2 <snprintf+0x13e>
c0de6f70:	2b64      	cmp	r3, #100	@ 0x64
c0de6f72:	d02a      	beq.n	c0de6fca <snprintf+0x156>
c0de6f74:	2b68      	cmp	r3, #104	@ 0x68
c0de6f76:	d036      	beq.n	c0de6fe6 <snprintf+0x172>
c0de6f78:	2b70      	cmp	r3, #112	@ 0x70
c0de6f7a:	d006      	beq.n	c0de6f8a <snprintf+0x116>
c0de6f7c:	2b73      	cmp	r3, #115	@ 0x73
c0de6f7e:	d037      	beq.n	c0de6ff0 <snprintf+0x17c>
c0de6f80:	2b75      	cmp	r3, #117	@ 0x75
c0de6f82:	f000 8081 	beq.w	c0de7088 <snprintf+0x214>
c0de6f86:	2b78      	cmp	r3, #120	@ 0x78
c0de6f88:	d103      	bne.n	c0de6f92 <snprintf+0x11e>
c0de6f8a:	9400      	str	r4, [sp, #0]
c0de6f8c:	f04f 0c00 	mov.w	ip, #0
c0de6f90:	e009      	b.n	c0de6fa6 <snprintf+0x132>
c0de6f92:	1e4e      	subs	r6, r1, #1
c0de6f94:	e785      	b.n	c0de6ea2 <snprintf+0x2e>
c0de6f96:	2025      	movs	r0, #37	@ 0x25
c0de6f98:	e00f      	b.n	c0de6fba <snprintf+0x146>
c0de6f9a:	487b      	ldr	r0, [pc, #492]	@ (c0de7188 <snprintf+0x314>)
c0de6f9c:	4478      	add	r0, pc
c0de6f9e:	e024      	b.n	c0de6fea <snprintf+0x176>
c0de6fa0:	f04f 0c01 	mov.w	ip, #1
c0de6fa4:	9400      	str	r4, [sp, #0]
c0de6fa6:	9a02      	ldr	r2, [sp, #8]
c0de6fa8:	2400      	movs	r4, #0
c0de6faa:	1d13      	adds	r3, r2, #4
c0de6fac:	9302      	str	r3, [sp, #8]
c0de6fae:	2310      	movs	r3, #16
c0de6fb0:	e072      	b.n	c0de7098 <snprintf+0x224>
c0de6fb2:	9802      	ldr	r0, [sp, #8]
c0de6fb4:	1d02      	adds	r2, r0, #4
c0de6fb6:	9202      	str	r2, [sp, #8]
c0de6fb8:	6800      	ldr	r0, [r0, #0]
c0de6fba:	1e4e      	subs	r6, r1, #1
c0de6fbc:	f804 0b01 	strb.w	r0, [r4], #1
c0de6fc0:	f1b8 0801 	subs.w	r8, r8, #1
c0de6fc4:	f47f af6d 	bne.w	c0de6ea2 <snprintf+0x2e>
c0de6fc8:	e0d6      	b.n	c0de7178 <snprintf+0x304>
c0de6fca:	9a02      	ldr	r2, [sp, #8]
c0de6fcc:	9400      	str	r4, [sp, #0]
c0de6fce:	1d13      	adds	r3, r2, #4
c0de6fd0:	9302      	str	r3, [sp, #8]
c0de6fd2:	6813      	ldr	r3, [r2, #0]
c0de6fd4:	2b00      	cmp	r3, #0
c0de6fd6:	461a      	mov	r2, r3
c0de6fd8:	d500      	bpl.n	c0de6fdc <snprintf+0x168>
c0de6fda:	425a      	negs	r2, r3
c0de6fdc:	0fdc      	lsrs	r4, r3, #31
c0de6fde:	f04f 0c00 	mov.w	ip, #0
c0de6fe2:	230a      	movs	r3, #10
c0de6fe4:	e059      	b.n	c0de709a <snprintf+0x226>
c0de6fe6:	4869      	ldr	r0, [pc, #420]	@ (c0de718c <snprintf+0x318>)
c0de6fe8:	4478      	add	r0, pc
c0de6fea:	f04f 0c01 	mov.w	ip, #1
c0de6fee:	e003      	b.n	c0de6ff8 <snprintf+0x184>
c0de6ff0:	4864      	ldr	r0, [pc, #400]	@ (c0de7184 <snprintf+0x310>)
c0de6ff2:	f04f 0c00 	mov.w	ip, #0
c0de6ff6:	4478      	add	r0, pc
c0de6ff8:	9b02      	ldr	r3, [sp, #8]
c0de6ffa:	b2d2      	uxtb	r2, r2
c0de6ffc:	1d1e      	adds	r6, r3, #4
c0de6ffe:	9602      	str	r6, [sp, #8]
c0de7000:	1e4e      	subs	r6, r1, #1
c0de7002:	6819      	ldr	r1, [r3, #0]
c0de7004:	2a02      	cmp	r2, #2
c0de7006:	f000 80a7 	beq.w	c0de7158 <snprintf+0x2e4>
c0de700a:	2a01      	cmp	r2, #1
c0de700c:	d007      	beq.n	c0de701e <snprintf+0x1aa>
c0de700e:	463d      	mov	r5, r7
c0de7010:	b92a      	cbnz	r2, c0de701e <snprintf+0x1aa>
c0de7012:	2200      	movs	r2, #0
c0de7014:	5c8b      	ldrb	r3, [r1, r2]
c0de7016:	3201      	adds	r2, #1
c0de7018:	2b00      	cmp	r3, #0
c0de701a:	d1fb      	bne.n	c0de7014 <snprintf+0x1a0>
c0de701c:	1e55      	subs	r5, r2, #1
c0de701e:	f1bc 0f00 	cmp.w	ip, #0
c0de7022:	d016      	beq.n	c0de7052 <snprintf+0x1de>
c0de7024:	2d00      	cmp	r5, #0
c0de7026:	f43f af3c 	beq.w	c0de6ea2 <snprintf+0x2e>
c0de702a:	f1b8 0f02 	cmp.w	r8, #2
c0de702e:	f0c0 80a3 	bcc.w	c0de7178 <snprintf+0x304>
c0de7032:	780a      	ldrb	r2, [r1, #0]
c0de7034:	0913      	lsrs	r3, r2, #4
c0de7036:	f002 020f 	and.w	r2, r2, #15
c0de703a:	5cc3      	ldrb	r3, [r0, r3]
c0de703c:	f1b8 0802 	subs.w	r8, r8, #2
c0de7040:	7023      	strb	r3, [r4, #0]
c0de7042:	5c82      	ldrb	r2, [r0, r2]
c0de7044:	7062      	strb	r2, [r4, #1]
c0de7046:	f000 8097 	beq.w	c0de7178 <snprintf+0x304>
c0de704a:	3101      	adds	r1, #1
c0de704c:	3d01      	subs	r5, #1
c0de704e:	3402      	adds	r4, #2
c0de7050:	e7e8      	b.n	c0de7024 <snprintf+0x1b0>
c0de7052:	4545      	cmp	r5, r8
c0de7054:	bf28      	it	cs
c0de7056:	4645      	movcs	r5, r8
c0de7058:	4620      	mov	r0, r4
c0de705a:	462a      	mov	r2, r5
c0de705c:	f000 fba0 	bl	c0de77a0 <__aeabi_memmove>
c0de7060:	ebb8 0805 	subs.w	r8, r8, r5
c0de7064:	f000 8088 	beq.w	c0de7178 <snprintf+0x304>
c0de7068:	462f      	mov	r7, r5
c0de706a:	442c      	add	r4, r5
c0de706c:	45bb      	cmp	fp, r7
c0de706e:	f67f af18 	bls.w	c0de6ea2 <snprintf+0x2e>
c0de7072:	ebab 0507 	sub.w	r5, fp, r7
c0de7076:	4620      	mov	r0, r4
c0de7078:	4545      	cmp	r5, r8
c0de707a:	bf28      	it	cs
c0de707c:	4645      	movcs	r5, r8
c0de707e:	4629      	mov	r1, r5
c0de7080:	2220      	movs	r2, #32
c0de7082:	f000 fb8f 	bl	c0de77a4 <__aeabi_memset>
c0de7086:	e061      	b.n	c0de714c <snprintf+0x2d8>
c0de7088:	9a02      	ldr	r2, [sp, #8]
c0de708a:	9400      	str	r4, [sp, #0]
c0de708c:	2400      	movs	r4, #0
c0de708e:	f04f 0c00 	mov.w	ip, #0
c0de7092:	1d13      	adds	r3, r2, #4
c0de7094:	9302      	str	r3, [sp, #8]
c0de7096:	230a      	movs	r3, #10
c0de7098:	6812      	ldr	r2, [r2, #0]
c0de709a:	483d      	ldr	r0, [pc, #244]	@ (c0de7190 <snprintf+0x31c>)
c0de709c:	1e4e      	subs	r6, r1, #1
c0de709e:	f04f 0a01 	mov.w	sl, #1
c0de70a2:	4478      	add	r0, pc
c0de70a4:	9001      	str	r0, [sp, #4]
c0de70a6:	fba3 570a 	umull	r5, r7, r3, sl
c0de70aa:	2f00      	cmp	r7, #0
c0de70ac:	bf18      	it	ne
c0de70ae:	2701      	movne	r7, #1
c0de70b0:	4295      	cmp	r5, r2
c0de70b2:	d804      	bhi.n	c0de70be <snprintf+0x24a>
c0de70b4:	b91f      	cbnz	r7, c0de70be <snprintf+0x24a>
c0de70b6:	f1ab 0b01 	sub.w	fp, fp, #1
c0de70ba:	46aa      	mov	sl, r5
c0de70bc:	e7f3      	b.n	c0de70a6 <snprintf+0x232>
c0de70be:	2c00      	cmp	r4, #0
c0de70c0:	4627      	mov	r7, r4
c0de70c2:	f04f 0500 	mov.w	r5, #0
c0de70c6:	bf18      	it	ne
c0de70c8:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de70cc:	d00d      	beq.n	c0de70ea <snprintf+0x276>
c0de70ce:	4660      	mov	r0, ip
c0de70d0:	fa5f fc8e 	uxtb.w	ip, lr
c0de70d4:	a903      	add	r1, sp, #12
c0de70d6:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de70da:	4684      	mov	ip, r0
c0de70dc:	d106      	bne.n	c0de70ec <snprintf+0x278>
c0de70de:	202d      	movs	r0, #45	@ 0x2d
c0de70e0:	2400      	movs	r4, #0
c0de70e2:	2501      	movs	r5, #1
c0de70e4:	f88d 000c 	strb.w	r0, [sp, #12]
c0de70e8:	e000      	b.n	c0de70ec <snprintf+0x278>
c0de70ea:	a903      	add	r1, sp, #12
c0de70ec:	eb07 000b 	add.w	r0, r7, fp
c0de70f0:	3802      	subs	r0, #2
c0de70f2:	280d      	cmp	r0, #13
c0de70f4:	d808      	bhi.n	c0de7108 <snprintf+0x294>
c0de70f6:	f1c7 0701 	rsb	r7, r7, #1
c0de70fa:	45bb      	cmp	fp, r7
c0de70fc:	d004      	beq.n	c0de7108 <snprintf+0x294>
c0de70fe:	f801 e005 	strb.w	lr, [r1, r5]
c0de7102:	3701      	adds	r7, #1
c0de7104:	3501      	adds	r5, #1
c0de7106:	e7f8      	b.n	c0de70fa <snprintf+0x286>
c0de7108:	9f01      	ldr	r7, [sp, #4]
c0de710a:	b114      	cbz	r4, c0de7112 <snprintf+0x29e>
c0de710c:	202d      	movs	r0, #45	@ 0x2d
c0de710e:	5548      	strb	r0, [r1, r5]
c0de7110:	3501      	adds	r5, #1
c0de7112:	4820      	ldr	r0, [pc, #128]	@ (c0de7194 <snprintf+0x320>)
c0de7114:	f1bc 0f00 	cmp.w	ip, #0
c0de7118:	4478      	add	r0, pc
c0de711a:	bf08      	it	eq
c0de711c:	4638      	moveq	r0, r7
c0de711e:	f1ba 0f00 	cmp.w	sl, #0
c0de7122:	d00b      	beq.n	c0de713c <snprintf+0x2c8>
c0de7124:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7128:	fbba faf3 	udiv	sl, sl, r3
c0de712c:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7130:	fb04 7413 	mls	r4, r4, r3, r7
c0de7134:	5d04      	ldrb	r4, [r0, r4]
c0de7136:	554c      	strb	r4, [r1, r5]
c0de7138:	3501      	adds	r5, #1
c0de713a:	e7f0      	b.n	c0de711e <snprintf+0x2aa>
c0de713c:	4545      	cmp	r5, r8
c0de713e:	bf28      	it	cs
c0de7140:	4645      	movcs	r5, r8
c0de7142:	9c00      	ldr	r4, [sp, #0]
c0de7144:	462a      	mov	r2, r5
c0de7146:	4620      	mov	r0, r4
c0de7148:	f000 fb2a 	bl	c0de77a0 <__aeabi_memmove>
c0de714c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7150:	442c      	add	r4, r5
c0de7152:	f47f aea6 	bne.w	c0de6ea2 <snprintf+0x2e>
c0de7156:	e00f      	b.n	c0de7178 <snprintf+0x304>
c0de7158:	7808      	ldrb	r0, [r1, #0]
c0de715a:	2800      	cmp	r0, #0
c0de715c:	f47f aea1 	bne.w	c0de6ea2 <snprintf+0x2e>
c0de7160:	4545      	cmp	r5, r8
c0de7162:	bf28      	it	cs
c0de7164:	4645      	movcs	r5, r8
c0de7166:	4620      	mov	r0, r4
c0de7168:	4629      	mov	r1, r5
c0de716a:	2220      	movs	r2, #32
c0de716c:	f000 fb1a 	bl	c0de77a4 <__aeabi_memset>
c0de7170:	ebb8 0805 	subs.w	r8, r8, r5
c0de7174:	f47f af79 	bne.w	c0de706a <snprintf+0x1f6>
c0de7178:	2000      	movs	r0, #0
c0de717a:	b007      	add	sp, #28
c0de717c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7180:	b001      	add	sp, #4
c0de7182:	4770      	bx	lr
c0de7184:	00001c4a 	.word	0x00001c4a
c0de7188:	00001cb4 	.word	0x00001cb4
c0de718c:	00001c58 	.word	0x00001c58
c0de7190:	00001b9e 	.word	0x00001b9e
c0de7194:	00001b38 	.word	0x00001b38

c0de7198 <pic>:
c0de7198:	4a0a      	ldr	r2, [pc, #40]	@ (c0de71c4 <pic+0x2c>)
c0de719a:	4282      	cmp	r2, r0
c0de719c:	490a      	ldr	r1, [pc, #40]	@ (c0de71c8 <pic+0x30>)
c0de719e:	d806      	bhi.n	c0de71ae <pic+0x16>
c0de71a0:	4281      	cmp	r1, r0
c0de71a2:	d304      	bcc.n	c0de71ae <pic+0x16>
c0de71a4:	b580      	push	{r7, lr}
c0de71a6:	f000 f815 	bl	c0de71d4 <pic_internal>
c0de71aa:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de71ae:	4907      	ldr	r1, [pc, #28]	@ (c0de71cc <pic+0x34>)
c0de71b0:	4288      	cmp	r0, r1
c0de71b2:	4a07      	ldr	r2, [pc, #28]	@ (c0de71d0 <pic+0x38>)
c0de71b4:	d304      	bcc.n	c0de71c0 <pic+0x28>
c0de71b6:	4290      	cmp	r0, r2
c0de71b8:	d802      	bhi.n	c0de71c0 <pic+0x28>
c0de71ba:	1a40      	subs	r0, r0, r1
c0de71bc:	4649      	mov	r1, r9
c0de71be:	4408      	add	r0, r1
c0de71c0:	4770      	bx	lr
c0de71c2:	0000      	movs	r0, r0
c0de71c4:	c0de0000 	.word	0xc0de0000
c0de71c8:	c0de903f 	.word	0xc0de903f
c0de71cc:	da7a0000 	.word	0xda7a0000
c0de71d0:	da7aa000 	.word	0xda7aa000

c0de71d4 <pic_internal>:
c0de71d4:	467a      	mov	r2, pc
c0de71d6:	4902      	ldr	r1, [pc, #8]	@ (c0de71e0 <pic_internal+0xc>)
c0de71d8:	1cc9      	adds	r1, r1, #3
c0de71da:	1a89      	subs	r1, r1, r2
c0de71dc:	1a40      	subs	r0, r0, r1
c0de71de:	4770      	bx	lr
c0de71e0:	c0de71d5 	.word	0xc0de71d5

c0de71e4 <SVC_Call>:
c0de71e4:	df01      	svc	1
c0de71e6:	2900      	cmp	r1, #0
c0de71e8:	d100      	bne.n	c0de71ec <exception>
c0de71ea:	4770      	bx	lr

c0de71ec <exception>:
c0de71ec:	4608      	mov	r0, r1
c0de71ee:	f7ff fe2e 	bl	c0de6e4e <os_longjmp>
	...

c0de71f4 <SVC_cx_call>:
c0de71f4:	df01      	svc	1
c0de71f6:	4770      	bx	lr

c0de71f8 <nvm_write>:
c0de71f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71fa:	ab01      	add	r3, sp, #4
c0de71fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de71fe:	4802      	ldr	r0, [pc, #8]	@ (c0de7208 <nvm_write+0x10>)
c0de7200:	a901      	add	r1, sp, #4
c0de7202:	f7ff ffef 	bl	c0de71e4 <SVC_Call>
c0de7206:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7208:	03000003 	.word	0x03000003

c0de720c <cx_bn_lock>:
c0de720c:	b5e0      	push	{r5, r6, r7, lr}
c0de720e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7212:	4802      	ldr	r0, [pc, #8]	@ (c0de721c <cx_bn_lock+0x10>)
c0de7214:	4669      	mov	r1, sp
c0de7216:	f7ff ffed 	bl	c0de71f4 <SVC_cx_call>
c0de721a:	bd8c      	pop	{r2, r3, r7, pc}
c0de721c:	02000112 	.word	0x02000112

c0de7220 <cx_bn_unlock>:
c0de7220:	b5e0      	push	{r5, r6, r7, lr}
c0de7222:	2000      	movs	r0, #0
c0de7224:	4669      	mov	r1, sp
c0de7226:	9001      	str	r0, [sp, #4]
c0de7228:	20b6      	movs	r0, #182	@ 0xb6
c0de722a:	f7ff ffe3 	bl	c0de71f4 <SVC_cx_call>
c0de722e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7230 <cx_bn_alloc>:
c0de7230:	b5e0      	push	{r5, r6, r7, lr}
c0de7232:	e9cd 0100 	strd	r0, r1, [sp]
c0de7236:	4802      	ldr	r0, [pc, #8]	@ (c0de7240 <cx_bn_alloc+0x10>)
c0de7238:	4669      	mov	r1, sp
c0de723a:	f7ff ffdb 	bl	c0de71f4 <SVC_cx_call>
c0de723e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7240:	02000113 	.word	0x02000113

c0de7244 <cx_bn_alloc_init>:
c0de7244:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7246:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de724a:	4803      	ldr	r0, [pc, #12]	@ (c0de7258 <cx_bn_alloc_init+0x14>)
c0de724c:	4669      	mov	r1, sp
c0de724e:	f7ff ffd1 	bl	c0de71f4 <SVC_cx_call>
c0de7252:	b004      	add	sp, #16
c0de7254:	bd80      	pop	{r7, pc}
c0de7256:	bf00      	nop
c0de7258:	04000114 	.word	0x04000114

c0de725c <cx_bn_destroy>:
c0de725c:	b5e0      	push	{r5, r6, r7, lr}
c0de725e:	f000 f9b5 	bl	c0de75cc <OUTLINED_FUNCTION_0>
c0de7262:	4802      	ldr	r0, [pc, #8]	@ (c0de726c <cx_bn_destroy+0x10>)
c0de7264:	4669      	mov	r1, sp
c0de7266:	f7ff ffc5 	bl	c0de71f4 <SVC_cx_call>
c0de726a:	bd8c      	pop	{r2, r3, r7, pc}
c0de726c:	010000bc 	.word	0x010000bc

c0de7270 <cx_bn_nbytes>:
c0de7270:	b5e0      	push	{r5, r6, r7, lr}
c0de7272:	e9cd 0100 	strd	r0, r1, [sp]
c0de7276:	4802      	ldr	r0, [pc, #8]	@ (c0de7280 <cx_bn_nbytes+0x10>)
c0de7278:	4669      	mov	r1, sp
c0de727a:	f7ff ffbb 	bl	c0de71f4 <SVC_cx_call>
c0de727e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7280:	0200010d 	.word	0x0200010d

c0de7284 <cx_bn_init>:
c0de7284:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7286:	ab01      	add	r3, sp, #4
c0de7288:	c307      	stmia	r3!, {r0, r1, r2}
c0de728a:	4803      	ldr	r0, [pc, #12]	@ (c0de7298 <cx_bn_init+0x14>)
c0de728c:	a901      	add	r1, sp, #4
c0de728e:	f7ff ffb1 	bl	c0de71f4 <SVC_cx_call>
c0de7292:	b004      	add	sp, #16
c0de7294:	bd80      	pop	{r7, pc}
c0de7296:	bf00      	nop
c0de7298:	03000115 	.word	0x03000115

c0de729c <cx_bn_copy>:
c0de729c:	b5e0      	push	{r5, r6, r7, lr}
c0de729e:	e9cd 0100 	strd	r0, r1, [sp]
c0de72a2:	4802      	ldr	r0, [pc, #8]	@ (c0de72ac <cx_bn_copy+0x10>)
c0de72a4:	4669      	mov	r1, sp
c0de72a6:	f7ff ffa5 	bl	c0de71f4 <SVC_cx_call>
c0de72aa:	bd8c      	pop	{r2, r3, r7, pc}
c0de72ac:	020000c0 	.word	0x020000c0

c0de72b0 <cx_bn_set_u32>:
c0de72b0:	b5e0      	push	{r5, r6, r7, lr}
c0de72b2:	e9cd 0100 	strd	r0, r1, [sp]
c0de72b6:	4802      	ldr	r0, [pc, #8]	@ (c0de72c0 <cx_bn_set_u32+0x10>)
c0de72b8:	4669      	mov	r1, sp
c0de72ba:	f7ff ff9b 	bl	c0de71f4 <SVC_cx_call>
c0de72be:	bd8c      	pop	{r2, r3, r7, pc}
c0de72c0:	020000c1 	.word	0x020000c1

c0de72c4 <cx_bn_export>:
c0de72c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72c6:	ab01      	add	r3, sp, #4
c0de72c8:	c307      	stmia	r3!, {r0, r1, r2}
c0de72ca:	4803      	ldr	r0, [pc, #12]	@ (c0de72d8 <cx_bn_export+0x14>)
c0de72cc:	a901      	add	r1, sp, #4
c0de72ce:	f7ff ff91 	bl	c0de71f4 <SVC_cx_call>
c0de72d2:	b004      	add	sp, #16
c0de72d4:	bd80      	pop	{r7, pc}
c0de72d6:	bf00      	nop
c0de72d8:	030000c3 	.word	0x030000c3

c0de72dc <cx_bn_cmp>:
c0de72dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72de:	ab01      	add	r3, sp, #4
c0de72e0:	c307      	stmia	r3!, {r0, r1, r2}
c0de72e2:	4803      	ldr	r0, [pc, #12]	@ (c0de72f0 <cx_bn_cmp+0x14>)
c0de72e4:	a901      	add	r1, sp, #4
c0de72e6:	f7ff ff85 	bl	c0de71f4 <SVC_cx_call>
c0de72ea:	b004      	add	sp, #16
c0de72ec:	bd80      	pop	{r7, pc}
c0de72ee:	bf00      	nop
c0de72f0:	030000c4 	.word	0x030000c4

c0de72f4 <cx_bn_cmp_u32>:
c0de72f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72f6:	ab01      	add	r3, sp, #4
c0de72f8:	c307      	stmia	r3!, {r0, r1, r2}
c0de72fa:	4803      	ldr	r0, [pc, #12]	@ (c0de7308 <cx_bn_cmp_u32+0x14>)
c0de72fc:	a901      	add	r1, sp, #4
c0de72fe:	f7ff ff79 	bl	c0de71f4 <SVC_cx_call>
c0de7302:	b004      	add	sp, #16
c0de7304:	bd80      	pop	{r7, pc}
c0de7306:	bf00      	nop
c0de7308:	030000c5 	.word	0x030000c5

c0de730c <cx_bn_tst_bit>:
c0de730c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de730e:	ab01      	add	r3, sp, #4
c0de7310:	c307      	stmia	r3!, {r0, r1, r2}
c0de7312:	4803      	ldr	r0, [pc, #12]	@ (c0de7320 <cx_bn_tst_bit+0x14>)
c0de7314:	a901      	add	r1, sp, #4
c0de7316:	f7ff ff6d 	bl	c0de71f4 <SVC_cx_call>
c0de731a:	b004      	add	sp, #16
c0de731c:	bd80      	pop	{r7, pc}
c0de731e:	bf00      	nop
c0de7320:	030000cb 	.word	0x030000cb

c0de7324 <cx_bn_mod_add>:
c0de7324:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7326:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de732a:	4803      	ldr	r0, [pc, #12]	@ (c0de7338 <cx_bn_mod_add+0x14>)
c0de732c:	4669      	mov	r1, sp
c0de732e:	f7ff ff61 	bl	c0de71f4 <SVC_cx_call>
c0de7332:	b004      	add	sp, #16
c0de7334:	bd80      	pop	{r7, pc}
c0de7336:	bf00      	nop
c0de7338:	040000d3 	.word	0x040000d3

c0de733c <cx_bn_mod_sub>:
c0de733c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de733e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7342:	4803      	ldr	r0, [pc, #12]	@ (c0de7350 <cx_bn_mod_sub+0x14>)
c0de7344:	4669      	mov	r1, sp
c0de7346:	f7ff ff55 	bl	c0de71f4 <SVC_cx_call>
c0de734a:	b004      	add	sp, #16
c0de734c:	bd80      	pop	{r7, pc}
c0de734e:	bf00      	nop
c0de7350:	040000d4 	.word	0x040000d4

c0de7354 <cx_bn_mod_mul>:
c0de7354:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7356:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de735a:	4803      	ldr	r0, [pc, #12]	@ (c0de7368 <cx_bn_mod_mul+0x14>)
c0de735c:	4669      	mov	r1, sp
c0de735e:	f7ff ff49 	bl	c0de71f4 <SVC_cx_call>
c0de7362:	b004      	add	sp, #16
c0de7364:	bd80      	pop	{r7, pc}
c0de7366:	bf00      	nop
c0de7368:	040000d5 	.word	0x040000d5

c0de736c <cx_bn_reduce>:
c0de736c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de736e:	ab01      	add	r3, sp, #4
c0de7370:	c307      	stmia	r3!, {r0, r1, r2}
c0de7372:	4803      	ldr	r0, [pc, #12]	@ (c0de7380 <cx_bn_reduce+0x14>)
c0de7374:	a901      	add	r1, sp, #4
c0de7376:	f7ff ff3d 	bl	c0de71f4 <SVC_cx_call>
c0de737a:	b004      	add	sp, #16
c0de737c:	bd80      	pop	{r7, pc}
c0de737e:	bf00      	nop
c0de7380:	030000d6 	.word	0x030000d6

c0de7384 <cx_bn_mod_invert_nprime>:
c0de7384:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7386:	ab01      	add	r3, sp, #4
c0de7388:	c307      	stmia	r3!, {r0, r1, r2}
c0de738a:	4803      	ldr	r0, [pc, #12]	@ (c0de7398 <cx_bn_mod_invert_nprime+0x14>)
c0de738c:	a901      	add	r1, sp, #4
c0de738e:	f7ff ff31 	bl	c0de71f4 <SVC_cx_call>
c0de7392:	b004      	add	sp, #16
c0de7394:	bd80      	pop	{r7, pc}
c0de7396:	bf00      	nop
c0de7398:	030000da 	.word	0x030000da

c0de739c <cx_bn_is_prime>:
c0de739c:	b5e0      	push	{r5, r6, r7, lr}
c0de739e:	e9cd 0100 	strd	r0, r1, [sp]
c0de73a2:	4802      	ldr	r0, [pc, #8]	@ (c0de73ac <cx_bn_is_prime+0x10>)
c0de73a4:	4669      	mov	r1, sp
c0de73a6:	f7ff ff25 	bl	c0de71f4 <SVC_cx_call>
c0de73aa:	bd8c      	pop	{r2, r3, r7, pc}
c0de73ac:	020000ef 	.word	0x020000ef

c0de73b0 <cx_mont_alloc>:
c0de73b0:	b5e0      	push	{r5, r6, r7, lr}
c0de73b2:	e9cd 0100 	strd	r0, r1, [sp]
c0de73b6:	4802      	ldr	r0, [pc, #8]	@ (c0de73c0 <cx_mont_alloc+0x10>)
c0de73b8:	4669      	mov	r1, sp
c0de73ba:	f7ff ff1b 	bl	c0de71f4 <SVC_cx_call>
c0de73be:	bd8c      	pop	{r2, r3, r7, pc}
c0de73c0:	020000dc 	.word	0x020000dc

c0de73c4 <cx_mont_init>:
c0de73c4:	b5e0      	push	{r5, r6, r7, lr}
c0de73c6:	e9cd 0100 	strd	r0, r1, [sp]
c0de73ca:	4802      	ldr	r0, [pc, #8]	@ (c0de73d4 <cx_mont_init+0x10>)
c0de73cc:	4669      	mov	r1, sp
c0de73ce:	f7ff ff11 	bl	c0de71f4 <SVC_cx_call>
c0de73d2:	bd8c      	pop	{r2, r3, r7, pc}
c0de73d4:	020000dd 	.word	0x020000dd

c0de73d8 <cx_mont_to_montgomery>:
c0de73d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73da:	ab01      	add	r3, sp, #4
c0de73dc:	c307      	stmia	r3!, {r0, r1, r2}
c0de73de:	4803      	ldr	r0, [pc, #12]	@ (c0de73ec <cx_mont_to_montgomery+0x14>)
c0de73e0:	a901      	add	r1, sp, #4
c0de73e2:	f7ff ff07 	bl	c0de71f4 <SVC_cx_call>
c0de73e6:	b004      	add	sp, #16
c0de73e8:	bd80      	pop	{r7, pc}
c0de73ea:	bf00      	nop
c0de73ec:	030000df 	.word	0x030000df

c0de73f0 <cx_mont_from_montgomery>:
c0de73f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73f2:	ab01      	add	r3, sp, #4
c0de73f4:	c307      	stmia	r3!, {r0, r1, r2}
c0de73f6:	4803      	ldr	r0, [pc, #12]	@ (c0de7404 <cx_mont_from_montgomery+0x14>)
c0de73f8:	a901      	add	r1, sp, #4
c0de73fa:	f7ff fefb 	bl	c0de71f4 <SVC_cx_call>
c0de73fe:	b004      	add	sp, #16
c0de7400:	bd80      	pop	{r7, pc}
c0de7402:	bf00      	nop
c0de7404:	030000e0 	.word	0x030000e0

c0de7408 <cx_mont_mul>:
c0de7408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de740a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de740e:	4803      	ldr	r0, [pc, #12]	@ (c0de741c <cx_mont_mul+0x14>)
c0de7410:	4669      	mov	r1, sp
c0de7412:	f7ff feef 	bl	c0de71f4 <SVC_cx_call>
c0de7416:	b004      	add	sp, #16
c0de7418:	bd80      	pop	{r7, pc}
c0de741a:	bf00      	nop
c0de741c:	040000e1 	.word	0x040000e1

c0de7420 <cx_mont_pow>:
c0de7420:	b510      	push	{r4, lr}
c0de7422:	b086      	sub	sp, #24
c0de7424:	f10d 0c04 	add.w	ip, sp, #4
c0de7428:	9c08      	ldr	r4, [sp, #32]
c0de742a:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de742e:	4803      	ldr	r0, [pc, #12]	@ (c0de743c <cx_mont_pow+0x1c>)
c0de7430:	a901      	add	r1, sp, #4
c0de7432:	f7ff fedf 	bl	c0de71f4 <SVC_cx_call>
c0de7436:	b006      	add	sp, #24
c0de7438:	bd10      	pop	{r4, pc}
c0de743a:	bf00      	nop
c0de743c:	050000e2 	.word	0x050000e2

c0de7440 <cx_mont_invert_nprime>:
c0de7440:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7442:	ab01      	add	r3, sp, #4
c0de7444:	c307      	stmia	r3!, {r0, r1, r2}
c0de7446:	4803      	ldr	r0, [pc, #12]	@ (c0de7454 <cx_mont_invert_nprime+0x14>)
c0de7448:	a901      	add	r1, sp, #4
c0de744a:	f7ff fed3 	bl	c0de71f4 <SVC_cx_call>
c0de744e:	b004      	add	sp, #16
c0de7450:	bd80      	pop	{r7, pc}
c0de7452:	bf00      	nop
c0de7454:	030000e4 	.word	0x030000e4

c0de7458 <cx_ecdomain_parameters_length>:
c0de7458:	b5e0      	push	{r5, r6, r7, lr}
c0de745a:	e9cd 0100 	strd	r0, r1, [sp]
c0de745e:	4802      	ldr	r0, [pc, #8]	@ (c0de7468 <cx_ecdomain_parameters_length+0x10>)
c0de7460:	4669      	mov	r1, sp
c0de7462:	f7ff fec7 	bl	c0de71f4 <SVC_cx_call>
c0de7466:	bd8c      	pop	{r2, r3, r7, pc}
c0de7468:	0200012f 	.word	0x0200012f

c0de746c <os_perso_derive_node_with_seed_key>:
c0de746c:	b510      	push	{r4, lr}
c0de746e:	b088      	sub	sp, #32
c0de7470:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7472:	9407      	str	r4, [sp, #28]
c0de7474:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7476:	9406      	str	r4, [sp, #24]
c0de7478:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de747a:	9405      	str	r4, [sp, #20]
c0de747c:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de747e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7482:	4803      	ldr	r0, [pc, #12]	@ (c0de7490 <os_perso_derive_node_with_seed_key+0x24>)
c0de7484:	4669      	mov	r1, sp
c0de7486:	f7ff fead 	bl	c0de71e4 <SVC_Call>
c0de748a:	b008      	add	sp, #32
c0de748c:	bd10      	pop	{r4, pc}
c0de748e:	bf00      	nop
c0de7490:	080000a6 	.word	0x080000a6

c0de7494 <os_pki_load_certificate>:
c0de7494:	b510      	push	{r4, lr}
c0de7496:	b086      	sub	sp, #24
c0de7498:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de749a:	9405      	str	r4, [sp, #20]
c0de749c:	9c08      	ldr	r4, [sp, #32]
c0de749e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de74a2:	4803      	ldr	r0, [pc, #12]	@ (c0de74b0 <os_pki_load_certificate+0x1c>)
c0de74a4:	4669      	mov	r1, sp
c0de74a6:	f7ff fe9d 	bl	c0de71e4 <SVC_Call>
c0de74aa:	b006      	add	sp, #24
c0de74ac:	bd10      	pop	{r4, pc}
c0de74ae:	bf00      	nop
c0de74b0:	060000aa 	.word	0x060000aa

c0de74b4 <os_perso_is_pin_set>:
c0de74b4:	b5e0      	push	{r5, r6, r7, lr}
c0de74b6:	2000      	movs	r0, #0
c0de74b8:	4669      	mov	r1, sp
c0de74ba:	9001      	str	r0, [sp, #4]
c0de74bc:	209e      	movs	r0, #158	@ 0x9e
c0de74be:	f7ff fe91 	bl	c0de71e4 <SVC_Call>
c0de74c2:	b2c0      	uxtb	r0, r0
c0de74c4:	bd8c      	pop	{r2, r3, r7, pc}

c0de74c6 <os_global_pin_is_validated>:
c0de74c6:	b5e0      	push	{r5, r6, r7, lr}
c0de74c8:	2000      	movs	r0, #0
c0de74ca:	4669      	mov	r1, sp
c0de74cc:	9001      	str	r0, [sp, #4]
c0de74ce:	20a0      	movs	r0, #160	@ 0xa0
c0de74d0:	f7ff fe88 	bl	c0de71e4 <SVC_Call>
c0de74d4:	b2c0      	uxtb	r0, r0
c0de74d6:	bd8c      	pop	{r2, r3, r7, pc}

c0de74d8 <os_ux>:
c0de74d8:	b5e0      	push	{r5, r6, r7, lr}
c0de74da:	f000 f877 	bl	c0de75cc <OUTLINED_FUNCTION_0>
c0de74de:	4802      	ldr	r0, [pc, #8]	@ (c0de74e8 <os_ux+0x10>)
c0de74e0:	4669      	mov	r1, sp
c0de74e2:	f7ff fe7f 	bl	c0de71e4 <SVC_Call>
c0de74e6:	bd8c      	pop	{r2, r3, r7, pc}
c0de74e8:	01000064 	.word	0x01000064

c0de74ec <os_lib_end>:
c0de74ec:	b082      	sub	sp, #8
c0de74ee:	2000      	movs	r0, #0
c0de74f0:	4669      	mov	r1, sp
c0de74f2:	9001      	str	r0, [sp, #4]
c0de74f4:	2068      	movs	r0, #104	@ 0x68
c0de74f6:	f7ff fe75 	bl	c0de71e4 <SVC_Call>
c0de74fa:	deff      	udf	#255	@ 0xff

c0de74fc <os_flags>:
c0de74fc:	b5e0      	push	{r5, r6, r7, lr}
c0de74fe:	2000      	movs	r0, #0
c0de7500:	4669      	mov	r1, sp
c0de7502:	9001      	str	r0, [sp, #4]
c0de7504:	206a      	movs	r0, #106	@ 0x6a
c0de7506:	f7ff fe6d 	bl	c0de71e4 <SVC_Call>
c0de750a:	bd8c      	pop	{r2, r3, r7, pc}

c0de750c <os_registry_get_current_app_tag>:
c0de750c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de750e:	ab01      	add	r3, sp, #4
c0de7510:	c307      	stmia	r3!, {r0, r1, r2}
c0de7512:	4803      	ldr	r0, [pc, #12]	@ (c0de7520 <os_registry_get_current_app_tag+0x14>)
c0de7514:	a901      	add	r1, sp, #4
c0de7516:	f7ff fe65 	bl	c0de71e4 <SVC_Call>
c0de751a:	b004      	add	sp, #16
c0de751c:	bd80      	pop	{r7, pc}
c0de751e:	bf00      	nop
c0de7520:	03000074 	.word	0x03000074

c0de7524 <os_sched_exit>:
c0de7524:	b082      	sub	sp, #8
c0de7526:	f000 f851 	bl	c0de75cc <OUTLINED_FUNCTION_0>
c0de752a:	4802      	ldr	r0, [pc, #8]	@ (c0de7534 <os_sched_exit+0x10>)
c0de752c:	4669      	mov	r1, sp
c0de752e:	f7ff fe59 	bl	c0de71e4 <SVC_Call>
c0de7532:	deff      	udf	#255	@ 0xff
c0de7534:	0100009a 	.word	0x0100009a

c0de7538 <os_io_init>:
c0de7538:	b5e0      	push	{r5, r6, r7, lr}
c0de753a:	9001      	str	r0, [sp, #4]
c0de753c:	4802      	ldr	r0, [pc, #8]	@ (c0de7548 <os_io_init+0x10>)
c0de753e:	a901      	add	r1, sp, #4
c0de7540:	f7ff fe50 	bl	c0de71e4 <SVC_Call>
c0de7544:	bd8c      	pop	{r2, r3, r7, pc}
c0de7546:	bf00      	nop
c0de7548:	01000084 	.word	0x01000084

c0de754c <os_io_start>:
c0de754c:	b5e0      	push	{r5, r6, r7, lr}
c0de754e:	2000      	movs	r0, #0
c0de7550:	4669      	mov	r1, sp
c0de7552:	9001      	str	r0, [sp, #4]
c0de7554:	4801      	ldr	r0, [pc, #4]	@ (c0de755c <os_io_start+0x10>)
c0de7556:	f7ff fe45 	bl	c0de71e4 <SVC_Call>
c0de755a:	bd8c      	pop	{r2, r3, r7, pc}
c0de755c:	01000085 	.word	0x01000085

c0de7560 <os_io_tx_cmd>:
c0de7560:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7562:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7566:	4803      	ldr	r0, [pc, #12]	@ (c0de7574 <os_io_tx_cmd+0x14>)
c0de7568:	4669      	mov	r1, sp
c0de756a:	f7ff fe3b 	bl	c0de71e4 <SVC_Call>
c0de756e:	b004      	add	sp, #16
c0de7570:	bd80      	pop	{r7, pc}
c0de7572:	bf00      	nop
c0de7574:	04000088 	.word	0x04000088

c0de7578 <os_io_rx_evt>:
c0de7578:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de757a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de757e:	4803      	ldr	r0, [pc, #12]	@ (c0de758c <os_io_rx_evt+0x14>)
c0de7580:	4669      	mov	r1, sp
c0de7582:	f7ff fe2f 	bl	c0de71e4 <SVC_Call>
c0de7586:	b004      	add	sp, #16
c0de7588:	bd80      	pop	{r7, pc}
c0de758a:	bf00      	nop
c0de758c:	03000089 	.word	0x03000089

c0de7590 <try_context_get>:
c0de7590:	b5e0      	push	{r5, r6, r7, lr}
c0de7592:	2000      	movs	r0, #0
c0de7594:	4669      	mov	r1, sp
c0de7596:	9001      	str	r0, [sp, #4]
c0de7598:	2087      	movs	r0, #135	@ 0x87
c0de759a:	f7ff fe23 	bl	c0de71e4 <SVC_Call>
c0de759e:	bd8c      	pop	{r2, r3, r7, pc}

c0de75a0 <try_context_set>:
c0de75a0:	b5e0      	push	{r5, r6, r7, lr}
c0de75a2:	f000 f813 	bl	c0de75cc <OUTLINED_FUNCTION_0>
c0de75a6:	4802      	ldr	r0, [pc, #8]	@ (c0de75b0 <try_context_set+0x10>)
c0de75a8:	4669      	mov	r1, sp
c0de75aa:	f7ff fe1b 	bl	c0de71e4 <SVC_Call>
c0de75ae:	bd8c      	pop	{r2, r3, r7, pc}
c0de75b0:	0100010b 	.word	0x0100010b

c0de75b4 <os_sched_last_status>:
c0de75b4:	b5e0      	push	{r5, r6, r7, lr}
c0de75b6:	f000 f809 	bl	c0de75cc <OUTLINED_FUNCTION_0>
c0de75ba:	4803      	ldr	r0, [pc, #12]	@ (c0de75c8 <os_sched_last_status+0x14>)
c0de75bc:	4669      	mov	r1, sp
c0de75be:	f7ff fe11 	bl	c0de71e4 <SVC_Call>
c0de75c2:	b2c0      	uxtb	r0, r0
c0de75c4:	bd8c      	pop	{r2, r3, r7, pc}
c0de75c6:	bf00      	nop
c0de75c8:	0100009c 	.word	0x0100009c

c0de75cc <OUTLINED_FUNCTION_0>:
c0de75cc:	2100      	movs	r1, #0
c0de75ce:	e9cd 0100 	strd	r0, r1, [sp]
c0de75d2:	4770      	bx	lr

c0de75d4 <__udivmoddi4>:
c0de75d4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de75d8:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de75dc:	4604      	mov	r4, r0
c0de75de:	b179      	cbz	r1, c0de7600 <__udivmoddi4+0x2c>
c0de75e0:	b1ba      	cbz	r2, c0de7612 <__udivmoddi4+0x3e>
c0de75e2:	b35b      	cbz	r3, c0de763c <__udivmoddi4+0x68>
c0de75e4:	fab1 f581 	clz	r5, r1
c0de75e8:	fab3 f683 	clz	r6, r3
c0de75ec:	1b75      	subs	r5, r6, r5
c0de75ee:	2d20      	cmp	r5, #32
c0de75f0:	d34a      	bcc.n	c0de7688 <__udivmoddi4+0xb4>
c0de75f2:	f1bc 0f00 	cmp.w	ip, #0
c0de75f6:	bf18      	it	ne
c0de75f8:	e9cc 4100 	strdne	r4, r1, [ip]
c0de75fc:	2400      	movs	r4, #0
c0de75fe:	e066      	b.n	c0de76ce <__udivmoddi4+0xfa>
c0de7600:	b3cb      	cbz	r3, c0de7676 <__udivmoddi4+0xa2>
c0de7602:	2100      	movs	r1, #0
c0de7604:	f1bc 0f00 	cmp.w	ip, #0
c0de7608:	bf18      	it	ne
c0de760a:	e9cc 4100 	strdne	r4, r1, [ip]
c0de760e:	2400      	movs	r4, #0
c0de7610:	e0a6      	b.n	c0de7760 <__udivmoddi4+0x18c>
c0de7612:	2b00      	cmp	r3, #0
c0de7614:	d03e      	beq.n	c0de7694 <__udivmoddi4+0xc0>
c0de7616:	2800      	cmp	r0, #0
c0de7618:	d04f      	beq.n	c0de76ba <__udivmoddi4+0xe6>
c0de761a:	1e5d      	subs	r5, r3, #1
c0de761c:	422b      	tst	r3, r5
c0de761e:	d158      	bne.n	c0de76d2 <__udivmoddi4+0xfe>
c0de7620:	f1bc 0f00 	cmp.w	ip, #0
c0de7624:	bf1c      	itt	ne
c0de7626:	ea05 0001 	andne.w	r0, r5, r1
c0de762a:	e9cc 4000 	strdne	r4, r0, [ip]
c0de762e:	fa93 f0a3 	rbit	r0, r3
c0de7632:	fab0 f080 	clz	r0, r0
c0de7636:	fa21 f400 	lsr.w	r4, r1, r0
c0de763a:	e048      	b.n	c0de76ce <__udivmoddi4+0xfa>
c0de763c:	1e55      	subs	r5, r2, #1
c0de763e:	422a      	tst	r2, r5
c0de7640:	d129      	bne.n	c0de7696 <__udivmoddi4+0xc2>
c0de7642:	f1bc 0f00 	cmp.w	ip, #0
c0de7646:	bf1e      	ittt	ne
c0de7648:	2300      	movne	r3, #0
c0de764a:	4005      	andne	r5, r0
c0de764c:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7650:	2a01      	cmp	r2, #1
c0de7652:	f000 8085 	beq.w	c0de7760 <__udivmoddi4+0x18c>
c0de7656:	fa92 f2a2 	rbit	r2, r2
c0de765a:	004c      	lsls	r4, r1, #1
c0de765c:	fab2 f282 	clz	r2, r2
c0de7660:	f002 031f 	and.w	r3, r2, #31
c0de7664:	40d1      	lsrs	r1, r2
c0de7666:	40d8      	lsrs	r0, r3
c0de7668:	231f      	movs	r3, #31
c0de766a:	4393      	bics	r3, r2
c0de766c:	fa04 f303 	lsl.w	r3, r4, r3
c0de7670:	ea43 0400 	orr.w	r4, r3, r0
c0de7674:	e074      	b.n	c0de7760 <__udivmoddi4+0x18c>
c0de7676:	fbb0 f4f2 	udiv	r4, r0, r2
c0de767a:	f1bc 0f00 	cmp.w	ip, #0
c0de767e:	d026      	beq.n	c0de76ce <__udivmoddi4+0xfa>
c0de7680:	fb04 0012 	mls	r0, r4, r2, r0
c0de7684:	2100      	movs	r1, #0
c0de7686:	e020      	b.n	c0de76ca <__udivmoddi4+0xf6>
c0de7688:	f105 0e01 	add.w	lr, r5, #1
c0de768c:	f1be 0f20 	cmp.w	lr, #32
c0de7690:	d00b      	beq.n	c0de76aa <__udivmoddi4+0xd6>
c0de7692:	e028      	b.n	c0de76e6 <__udivmoddi4+0x112>
c0de7694:	e064      	b.n	c0de7760 <__udivmoddi4+0x18c>
c0de7696:	fab1 f481 	clz	r4, r1
c0de769a:	fab2 f582 	clz	r5, r2
c0de769e:	1b2c      	subs	r4, r5, r4
c0de76a0:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de76a4:	f1be 0f20 	cmp.w	lr, #32
c0de76a8:	d15d      	bne.n	c0de7766 <__udivmoddi4+0x192>
c0de76aa:	f04f 0e20 	mov.w	lr, #32
c0de76ae:	f04f 0a00 	mov.w	sl, #0
c0de76b2:	f04f 0b00 	mov.w	fp, #0
c0de76b6:	460e      	mov	r6, r1
c0de76b8:	e021      	b.n	c0de76fe <__udivmoddi4+0x12a>
c0de76ba:	fbb1 f4f3 	udiv	r4, r1, r3
c0de76be:	f1bc 0f00 	cmp.w	ip, #0
c0de76c2:	d004      	beq.n	c0de76ce <__udivmoddi4+0xfa>
c0de76c4:	2000      	movs	r0, #0
c0de76c6:	fb04 1113 	mls	r1, r4, r3, r1
c0de76ca:	e9cc 0100 	strd	r0, r1, [ip]
c0de76ce:	2100      	movs	r1, #0
c0de76d0:	e046      	b.n	c0de7760 <__udivmoddi4+0x18c>
c0de76d2:	fab1 f581 	clz	r5, r1
c0de76d6:	fab3 f683 	clz	r6, r3
c0de76da:	1b75      	subs	r5, r6, r5
c0de76dc:	2d1f      	cmp	r5, #31
c0de76de:	f4bf af88 	bcs.w	c0de75f2 <__udivmoddi4+0x1e>
c0de76e2:	f105 0e01 	add.w	lr, r5, #1
c0de76e6:	fa20 f40e 	lsr.w	r4, r0, lr
c0de76ea:	f1c5 051f 	rsb	r5, r5, #31
c0de76ee:	fa01 f605 	lsl.w	r6, r1, r5
c0de76f2:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de76f6:	40a8      	lsls	r0, r5
c0de76f8:	f04f 0a00 	mov.w	sl, #0
c0de76fc:	4326      	orrs	r6, r4
c0de76fe:	f04f 0800 	mov.w	r8, #0
c0de7702:	f1be 0f00 	cmp.w	lr, #0
c0de7706:	d01c      	beq.n	c0de7742 <__udivmoddi4+0x16e>
c0de7708:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de770c:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7710:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7714:	0076      	lsls	r6, r6, #1
c0de7716:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de771a:	1aae      	subs	r6, r5, r2
c0de771c:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7720:	43cf      	mvns	r7, r1
c0de7722:	43ec      	mvns	r4, r5
c0de7724:	18a4      	adds	r4, r4, r2
c0de7726:	eb57 0403 	adcs.w	r4, r7, r3
c0de772a:	bf5c      	itt	pl
c0de772c:	468b      	movpl	fp, r1
c0de772e:	462e      	movpl	r6, r5
c0de7730:	0040      	lsls	r0, r0, #1
c0de7732:	0fe1      	lsrs	r1, r4, #31
c0de7734:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7738:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de773c:	46a2      	mov	sl, r4
c0de773e:	4688      	mov	r8, r1
c0de7740:	e7df      	b.n	c0de7702 <__udivmoddi4+0x12e>
c0de7742:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7746:	f1bc 0f00 	cmp.w	ip, #0
c0de774a:	bf18      	it	ne
c0de774c:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7750:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7754:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7758:	f020 0001 	bic.w	r0, r0, #1
c0de775c:	ea40 0408 	orr.w	r4, r0, r8
c0de7760:	4620      	mov	r0, r4
c0de7762:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7766:	f1be 0f1f 	cmp.w	lr, #31
c0de776a:	d804      	bhi.n	c0de7776 <__udivmoddi4+0x1a2>
c0de776c:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7770:	f1ce 0520 	rsb	r5, lr, #32
c0de7774:	e7bb      	b.n	c0de76ee <__udivmoddi4+0x11a>
c0de7776:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de777a:	f1ae 0420 	sub.w	r4, lr, #32
c0de777e:	f04f 0b00 	mov.w	fp, #0
c0de7782:	fa20 f504 	lsr.w	r5, r0, r4
c0de7786:	fa01 f607 	lsl.w	r6, r1, r7
c0de778a:	fa00 fa07 	lsl.w	sl, r0, r7
c0de778e:	ea46 0805 	orr.w	r8, r6, r5
c0de7792:	fa21 f604 	lsr.w	r6, r1, r4
c0de7796:	4640      	mov	r0, r8
c0de7798:	e7b1      	b.n	c0de76fe <__udivmoddi4+0x12a>
	...

c0de779c <__aeabi_memcpy>:
c0de779c:	f000 b81c 	b.w	c0de77d8 <memcpy>

c0de77a0 <__aeabi_memmove>:
c0de77a0:	f000 b828 	b.w	c0de77f4 <memmove>

c0de77a4 <__aeabi_memset>:
c0de77a4:	460b      	mov	r3, r1
c0de77a6:	4611      	mov	r1, r2
c0de77a8:	461a      	mov	r2, r3
c0de77aa:	f000 b83d 	b.w	c0de7828 <memset>
c0de77ae:	bf00      	nop

c0de77b0 <__aeabi_memclr>:
c0de77b0:	460a      	mov	r2, r1
c0de77b2:	2100      	movs	r1, #0
c0de77b4:	f000 b838 	b.w	c0de7828 <memset>

c0de77b8 <__aeabi_uldivmod>:
c0de77b8:	b540      	push	{r6, lr}
c0de77ba:	b084      	sub	sp, #16
c0de77bc:	ae02      	add	r6, sp, #8
c0de77be:	9600      	str	r6, [sp, #0]
c0de77c0:	f7ff ff08 	bl	c0de75d4 <__udivmoddi4>
c0de77c4:	9a02      	ldr	r2, [sp, #8]
c0de77c6:	9b03      	ldr	r3, [sp, #12]
c0de77c8:	b004      	add	sp, #16
c0de77ca:	bd40      	pop	{r6, pc}

c0de77cc <explicit_bzero>:
c0de77cc:	f000 b800 	b.w	c0de77d0 <bzero>

c0de77d0 <bzero>:
c0de77d0:	460a      	mov	r2, r1
c0de77d2:	2100      	movs	r1, #0
c0de77d4:	f000 b828 	b.w	c0de7828 <memset>

c0de77d8 <memcpy>:
c0de77d8:	440a      	add	r2, r1
c0de77da:	4291      	cmp	r1, r2
c0de77dc:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de77e0:	d100      	bne.n	c0de77e4 <memcpy+0xc>
c0de77e2:	4770      	bx	lr
c0de77e4:	b510      	push	{r4, lr}
c0de77e6:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de77ea:	4291      	cmp	r1, r2
c0de77ec:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de77f0:	d1f9      	bne.n	c0de77e6 <memcpy+0xe>
c0de77f2:	bd10      	pop	{r4, pc}

c0de77f4 <memmove>:
c0de77f4:	4288      	cmp	r0, r1
c0de77f6:	b510      	push	{r4, lr}
c0de77f8:	eb01 0402 	add.w	r4, r1, r2
c0de77fc:	d902      	bls.n	c0de7804 <memmove+0x10>
c0de77fe:	4284      	cmp	r4, r0
c0de7800:	4623      	mov	r3, r4
c0de7802:	d807      	bhi.n	c0de7814 <memmove+0x20>
c0de7804:	1e43      	subs	r3, r0, #1
c0de7806:	42a1      	cmp	r1, r4
c0de7808:	d008      	beq.n	c0de781c <memmove+0x28>
c0de780a:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de780e:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7812:	e7f8      	b.n	c0de7806 <memmove+0x12>
c0de7814:	4601      	mov	r1, r0
c0de7816:	4402      	add	r2, r0
c0de7818:	428a      	cmp	r2, r1
c0de781a:	d100      	bne.n	c0de781e <memmove+0x2a>
c0de781c:	bd10      	pop	{r4, pc}
c0de781e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7822:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7826:	e7f7      	b.n	c0de7818 <memmove+0x24>

c0de7828 <memset>:
c0de7828:	4603      	mov	r3, r0
c0de782a:	4402      	add	r2, r0
c0de782c:	4293      	cmp	r3, r2
c0de782e:	d100      	bne.n	c0de7832 <memset+0xa>
c0de7830:	4770      	bx	lr
c0de7832:	f803 1b01 	strb.w	r1, [r3], #1
c0de7836:	e7f9      	b.n	c0de782c <memset+0x4>

c0de7838 <setjmp>:
c0de7838:	46ec      	mov	ip, sp
c0de783a:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de783e:	f04f 0000 	mov.w	r0, #0
c0de7842:	4770      	bx	lr

c0de7844 <longjmp>:
c0de7844:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7848:	46e5      	mov	sp, ip
c0de784a:	0008      	movs	r0, r1
c0de784c:	bf08      	it	eq
c0de784e:	2001      	moveq	r0, #1
c0de7850:	4770      	bx	lr
c0de7852:	bf00      	nop

c0de7854 <strcmp>:
c0de7854:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7858:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de785c:	2a01      	cmp	r2, #1
c0de785e:	bf28      	it	cs
c0de7860:	429a      	cmpcs	r2, r3
c0de7862:	d0f7      	beq.n	c0de7854 <strcmp>
c0de7864:	1ad0      	subs	r0, r2, r3
c0de7866:	4770      	bx	lr

c0de7868 <strlen>:
c0de7868:	4603      	mov	r3, r0
c0de786a:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de786e:	2a00      	cmp	r2, #0
c0de7870:	d1fb      	bne.n	c0de786a <strlen+0x2>
c0de7872:	1a18      	subs	r0, r3, r0
c0de7874:	3801      	subs	r0, #1
c0de7876:	4770      	bx	lr

c0de7878 <strncmp>:
c0de7878:	b510      	push	{r4, lr}
c0de787a:	b16a      	cbz	r2, c0de7898 <strncmp+0x20>
c0de787c:	3901      	subs	r1, #1
c0de787e:	1884      	adds	r4, r0, r2
c0de7880:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7884:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7888:	429a      	cmp	r2, r3
c0de788a:	d103      	bne.n	c0de7894 <strncmp+0x1c>
c0de788c:	42a0      	cmp	r0, r4
c0de788e:	d001      	beq.n	c0de7894 <strncmp+0x1c>
c0de7890:	2a00      	cmp	r2, #0
c0de7892:	d1f5      	bne.n	c0de7880 <strncmp+0x8>
c0de7894:	1ad0      	subs	r0, r2, r3
c0de7896:	bd10      	pop	{r4, pc}
c0de7898:	4610      	mov	r0, r2
c0de789a:	e7fc      	b.n	c0de7896 <strncmp+0x1e>

c0de789c <strncpy>:
c0de789c:	4603      	mov	r3, r0
c0de789e:	b510      	push	{r4, lr}
c0de78a0:	3901      	subs	r1, #1
c0de78a2:	b132      	cbz	r2, c0de78b2 <strncpy+0x16>
c0de78a4:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de78a8:	3a01      	subs	r2, #1
c0de78aa:	f803 4b01 	strb.w	r4, [r3], #1
c0de78ae:	2c00      	cmp	r4, #0
c0de78b0:	d1f7      	bne.n	c0de78a2 <strncpy+0x6>
c0de78b2:	2100      	movs	r1, #0
c0de78b4:	441a      	add	r2, r3
c0de78b6:	4293      	cmp	r3, r2
c0de78b8:	d100      	bne.n	c0de78bc <strncpy+0x20>
c0de78ba:	bd10      	pop	{r4, pc}
c0de78bc:	f803 1b01 	strb.w	r1, [r3], #1
c0de78c0:	e7f9      	b.n	c0de78b6 <strncpy+0x1a>

c0de78c2 <C_home_boilerplate_14px_bitmap>:
c0de78c2:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de78d2:	fc7b df0f 7ffe 7ff8                          {........

c0de78db <C_home_boilerplate_14px>:
c0de78db:	000e 000e 0000 78c2 c0de                    .......x..

c0de78e5 <C_Information_circle_14px_bitmap>:
c0de78e5:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de78f5:	e7ff 8fff 1ffc 1ee0                          .........

c0de78fe <C_Information_circle_14px>:
c0de78fe:	000e 000e 0000 78e5 c0de                    .......x..

c0de7908 <C_Quit_14px_bitmap>:
c0de7908:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7918:	6680 9801 7f06 fff9                          .f.......

c0de7921 <C_Quit_14px>:
c0de7921:	000e 000e 0000 7908 c0de                    .......y..

c0de792b <C_Switch_Off_8px_bitmap>:
c0de792b:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de7937 <C_Switch_Off_8px>:
c0de7937:	000c 0008 0000 792b c0de                    ......+y..

c0de7941 <C_Switch_On_8px_bitmap>:
c0de7941:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de794d <C_Switch_On_8px>:
c0de794d:	000c 0008 0000 7941 c0de                    ......Ay..

c0de7957 <C_icon_back_x_bitmap>:
c0de7957:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7967:	003f 0078 00c0 0000                          ?.x......

c0de7970 <C_icon_back_x>:
c0de7970:	000e 000e 0000 7957 c0de                    ......Wy..

c0de797a <C_icon_coggle_bitmap>:
c0de797a:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de798a:	807f 00b4 00c0 0000                          .........

c0de7993 <C_icon_coggle>:
c0de7993:	000e 000e 0000 797a c0de                    ......zy..

c0de799d <C_icon_crossmark_bitmap>:
c0de799d:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de79ad:	8373 1c87 600e 0018                          s....`...

c0de79b6 <C_icon_crossmark>:
c0de79b6:	000e 000e 0000 799d c0de                    .......y..

c0de79c0 <C_icon_down_bitmap>:
c0de79c0:	2184 8024                                   .!$.

c0de79c4 <C_icon_down>:
c0de79c4:	0007 0004 0000 79c0 c0de                    .......y..

c0de79ce <C_icon_left_bitmap>:
c0de79ce:	8882 80a0                                   ....

c0de79d2 <C_icon_left>:
c0de79d2:	0004 0007 0000 79ce c0de                    .......y..

c0de79dc <C_icon_processing_bitmap>:
c0de79dc:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de79ec:	8361 04b7 03c8 0000                          a........

c0de79f5 <C_icon_processing>:
c0de79f5:	000e 000e 0000 79dc c0de                    .......y..

c0de79ff <C_icon_right_bitmap>:
c0de79ff:	5110 1014                                   .Q..

c0de7a03 <C_icon_right>:
c0de7a03:	0004 0007 0000 79ff c0de                    .......y..

c0de7a0d <C_icon_up_bitmap>:
c0de7a0d:	4812 1042                                   .HB.

c0de7a11 <C_icon_up>:
c0de7a11:	0007 0004 0000 7a0d c0de                    .......z..

c0de7a1b <C_icon_validate_14_bitmap>:
c0de7a1b:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7a2b:	a3b3 a3a3 f0b2                               ......P

c0de7a32 <C_icon_validate_14>:
c0de7a32:	000e 000e 0100 7a1b c0de                    .......z..

c0de7a3c <C_icon_warning_bitmap>:
c0de7a3c:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7a4c:	e01f 801f 001e 0018                          .........

c0de7a55 <C_icon_warning>:
c0de7a55:	000e 000e 0000 7a3c c0de                    ......<z..

c0de7a5f <C_app_boilerplate_14px_bitmap>:
c0de7a5f:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7a6f:	0384 00f0 0000 0000                          .........

c0de7a78 <C_app_boilerplate_14px>:
c0de7a78:	000e 000e 0000 7a5f c0de 7544 6d6d 2079     ......_z..Dummy 
c0de7a88:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0de7a98:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0de7aa8:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0de7ab8:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0de7ac8:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0de7ad8:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0de7ae8:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0de7af8:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0de7b08:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0de7b18:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0de7b28:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0de7b38:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0de7b48:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0de7b58:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0de7b68:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0de7b78:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0de7b88:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0de7b98:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0de7ba8:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0de7bb8:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0de7bc8:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0de7bd8:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0de7be8:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0de7bf8:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0de7c08:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0de7c18:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0de7c28:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0de7c38:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0de7c48:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0de7c58:	6556 7372 6f69 006e 6143 636e 6c65 4100     Version.Cancel.A
c0de7c68:	6464 6572 7373 7620 7265 6669 6369 7461     ddress verificat
c0de7c78:	6f69 206e 6163 636e 6c65 656c 0064 6944     ion cancelled.Di
c0de7c88:	6173 6c62 6465 4100 7070 7320 7465 6974     sabled.App setti
c0de7c98:	676e 0073 6341 6563 7470 7220 7369 206b     ngs.Accept risk 
c0de7ca8:	6e61 2064 6973 6e67 7420 6172 736e 6361     and sign transac
c0de7cb8:	6974 6e6f 4200 696c 646e 7320 6769 696e     tion.Blind signi
c0de7cc8:	676e 6120 6568 6461 4100 6363 7065 2074     ng ahead.Accept 
c0de7cd8:	6972 6b73 6120 646e 7320 6769 206e 706f     risk and sign op
c0de7ce8:	7265 7461 6f69 006e 654d 7373 6761 2065     eration.Message 
c0de7cf8:	6572 656a 7463 6465 3000 3231 3433 3635     rejected.0123456
c0de7d08:	3837 4139 4342 4544 0046 4f42 204c 2e25     789ABCDEF.BOL %.
c0de7d18:	732a 4100 6464 6572 7373 4200 6361 006b     *s.Address.Back.
c0de7d28:	7544 6d6d 2079 0031 2049 6e75 6564 7372     Dummy 1.I unders
c0de7d38:	6174 646e 202c 6f63 666e 7269 006d 7254     tand, confirm.Tr
c0de7d48:	6e61 6173 7463 6f69 206e 6572 656a 7463     ansaction reject
c0de7d58:	6465 4100 7070 6920 666e 006f 6953 6e67     ed.App info.Sign
c0de7d68:	6f20 6570 6172 6974 6e6f 5200 6a65 6365      operation.Rejec
c0de7d78:	2074 656d 7373 6761 0065 6552 656a 7463     t message.Reject
c0de7d88:	6f20 6570 6172 6974 6e6f 5a00 4e4b 584f      operation.ZKNOX
c0de7d98:	5600 7265 6669 2079 4f42 204c 6461 7264     .Verify BOL addr
c0de7da8:	7365 0073 4b5a 4f4e 4858 0057 7061 2070     ess.ZKNOXHW.app 
c0de7db8:	7369 7220 6165 7964 5100 6975 2074 7061     is ready.Quit ap
c0de7dc8:	0070 6f43 666e 7269 006d 0000 0000 0000     p.Confirm.......
c0de7dd8:	ed73 53a7 9d29 487d 3933 08d8 a109 05d8     s..S).}H39......
c0de7de8:	bd53 02a4 feff fe5b ffff ffff 0000 0100     S.....[.........
c0de7df8:	ce05 c698 051b 7ff4 eae2 a5e9 bd42 f699     ............B...
c0de7e08:	e7b2 4682 1623 b540 9545 bffe 1ed5 53b8     ...F#.@.E......S
c0de7e18:	0001 0000 0000 0000 0002 0000 0000 0000     ................
c0de7e28:	0003 0000 0000 0000 0004 0000 0000 0000     ................
c0de7e38:	a005 91c0 8356 988b af28 123f e167 e675     ....V...(.?.g.u.
c0de7e48:	84e2 9dc7 6d1b d08a 0acd d9e0 9057 6e33     .....m......W.3n
c0de7e58:	c61c 38ee 9c13 111c 2302 7a53 e78c 069d     ...8.....#Sz....
c0de7e68:	587e 10cc c667 b7fb b3d8 b0a1 fc8d 088f     ~X..g...........
c0de7e78:	4d27 e8bc 51d1 9679 c09b 9fd4 25a7 dfbd     'M...Qy......%..
c0de7e88:	e59d e055 6aba 3c69 db6a fc52 e79e 2ca8     ..U..ji<j.R....,
c0de7e98:	fb1c d469 67ca 525f ce0c 0276 6802 0076     ..i..g_R..v..hv.
c0de7ea8:	8fff 0087 1974 7104 fd74 b506 7628 e1e7     ....t..qt...(v..
c0de7eb8:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de7ec8:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.
c0de7ed8:	a570 4a89 4464 3854 15d0 32ac 36ba 090f     p..JdDT8...2.6..
c0de7ee8:	de2c ba44 1fb1 b7c2 b5d4 d2c0 2216 ce8c     ,.D.........."..
c0de7ef8:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de7f08:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..
	...
c0de7f34:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7f44:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7f54:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7f64:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7f74:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7f84:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de7f94:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de7fb4:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de7fc4:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de7fd4:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de7fe4:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de7ff4:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de8004:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de8014:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de8024:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de8034:	88f4 7a60                                   ..`z

c0de8038 <.L__const.handler_cmd_Poseidon.input>:
c0de8038:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8048:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8058:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de8068:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de8078:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de8088:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de8098:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de80a8:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de80b8:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de80c8:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de80d8 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de80f4:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de8104:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de8114:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de8124:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de8134:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de8144:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de8154:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de8164:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de8174:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de8194:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de81a4:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de81b4:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de81c4:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de81d4:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de81e4:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de81f4:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de8204:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de8214:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de8234:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de8244:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de8254:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de8264:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de8274:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de8284:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de8294:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de82a4:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de82b4:	9b44 9ffb                                   D...

c0de82b8 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de82d4:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de82e4:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de82f4:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de8304:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de8314:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de8324:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de8334:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de8344:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de8354:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de8374:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de8384:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de8394:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de83a4:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de83b4:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de83c4:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de83d4:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de83e4:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de83f4:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de8414:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de8424:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de8434:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de8444:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de8454:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de8464:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de8474:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de8484:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de8494:	8132 74b1                                   2..t

c0de8498 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8498:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de84a8:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de84b8:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de84c8:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de84d8:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de84e8:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de84f8 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de8514:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de8524:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de8534:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de8544:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de8554:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de8564:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de8574:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de8584:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de8594:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de85b4:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de85c4:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de85d4:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de85e4:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de85f4:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de8604:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de8614:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de8624:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de8634:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de8654:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de8664:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de8674:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de8684:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de8694:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de86a4:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de86b4:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de86c4:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de86d4:	a0c2 7523                                   ..#u

c0de86d8 <settingContents>:
c0de86d8:	0000 0000 86f4 c0de 0001 0000               ............

c0de86e4 <infoList>:
c0de86e4:	872c c0de 8734 c0de 0000 0000 0002 0000     ,...4...........

c0de86f4 <contents>:
c0de86f4:	0007 0000 0344 da7a 0002 0000 0000 0000     ....D.z.........
	...
c0de8728:	1931 c0de                                   1...

c0de872c <INFO_TYPES>:
c0de872c:	7c58 c0de 7bad c0de                         X|...{..

c0de8734 <INFO_CONTENTS>:
c0de8734:	7ad0 c0de 7d93 c0de                         .z...}..

c0de873c <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de875c:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de876c:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de877c <.L__const.Poseidon_alloc_init.MixColumn>:
c0de877c:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de878c:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de879c:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de87ac:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de87bc:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de87cc:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de87dc:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de87ec:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de87fc:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de880c:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de881c:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de882c:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de883c:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de884c:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de885c:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de886c:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de887c:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de888c:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de889c:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de88ac:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de88bc:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de88cc:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de88dc:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de88ec:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de88fc:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de890c:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de891c:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de892c:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de893c:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de894c:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de895c:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de896c:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de897c:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de898c:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de899c:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de89ac:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de89bc:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de89cc:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de89dc:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de89ec:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de89fc:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8a0c:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8a1c:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8a2c:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8a3c:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8a4c:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8a5c:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8a6c:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8a7c:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8a8c:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8a9c:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8aac:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8abc:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8acc:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8adc:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8aec:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8afc:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8b0c:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8b1c:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8b2c:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8b3c:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8b4c:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8b5c:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8b6c:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8b7c:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8b8c:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8b9c:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8bac:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8bbc:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8bcc:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8bdc:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8bec:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8bfc <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8bfc:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8c0c:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8c1c <blindSigningWarning>:
c0de8c1c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8c44 <g_pcHex>:
c0de8c44:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8c54 <g_pcHex_cap>:
c0de8c54:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8c64 <_etext>:
	...

c0de8e00 <N_storage_real>:
	...

c0de9000 <install_parameters>:
c0de9000:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9010:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9020:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9030:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
