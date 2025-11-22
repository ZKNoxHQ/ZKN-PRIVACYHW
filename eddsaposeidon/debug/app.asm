
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 f92f 	bl	c0de7268 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fe79 	bl	c0de6d0c <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fe40 	bl	c0de6ca0 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fe31 	bl	c0de6c8a <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fdcb 	bl	c0de7bd0 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f007 f8a9 	bl	c0de7194 <assert_exit>
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
c0de0056:	f007 f84f 	bl	c0de70f8 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fda8 	bl	c0de7bbc <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f007 f88b 	bl	c0de7194 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d154      	bne.n	c0de012e <apdu_dispatcher+0xbc>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2820      	cmp	r0, #32
c0de0090:	d050      	beq.n	c0de0134 <apdu_dispatcher+0xc2>
c0de0092:	2804      	cmp	r0, #4
c0de0094:	d058      	beq.n	c0de0148 <apdu_dispatcher+0xd6>
c0de0096:	2805      	cmp	r0, #5
c0de0098:	d062      	beq.n	c0de0160 <apdu_dispatcher+0xee>
c0de009a:	2806      	cmp	r0, #6
c0de009c:	d076      	beq.n	c0de018c <apdu_dispatcher+0x11a>
c0de009e:	2807      	cmp	r0, #7
c0de00a0:	f000 8082 	beq.w	c0de01a8 <apdu_dispatcher+0x136>
c0de00a4:	2808      	cmp	r0, #8
c0de00a6:	f000 8089 	beq.w	c0de01bc <apdu_dispatcher+0x14a>
c0de00aa:	2809      	cmp	r0, #9
c0de00ac:	f000 8090 	beq.w	c0de01d0 <apdu_dispatcher+0x15e>
c0de00b0:	280a      	cmp	r0, #10
c0de00b2:	f000 8097 	beq.w	c0de01e4 <apdu_dispatcher+0x172>
c0de00b6:	280b      	cmp	r0, #11
c0de00b8:	f000 809e 	beq.w	c0de01f8 <apdu_dispatcher+0x186>
c0de00bc:	280c      	cmp	r0, #12
c0de00be:	f000 80a5 	beq.w	c0de020c <apdu_dispatcher+0x19a>
c0de00c2:	280d      	cmp	r0, #13
c0de00c4:	f000 80ac 	beq.w	c0de0220 <apdu_dispatcher+0x1ae>
c0de00c8:	280e      	cmp	r0, #14
c0de00ca:	f000 80b3 	beq.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de00ce:	280f      	cmp	r0, #15
c0de00d0:	f000 80ba 	beq.w	c0de0248 <apdu_dispatcher+0x1d6>
c0de00d4:	2810      	cmp	r0, #16
c0de00d6:	f000 80c0 	beq.w	c0de025a <apdu_dispatcher+0x1e8>
c0de00da:	2811      	cmp	r0, #17
c0de00dc:	f000 80c6 	beq.w	c0de026c <apdu_dispatcher+0x1fa>
c0de00e0:	2812      	cmp	r0, #18
c0de00e2:	f000 80cc 	beq.w	c0de027e <apdu_dispatcher+0x20c>
c0de00e6:	2813      	cmp	r0, #19
c0de00e8:	f000 80d2 	beq.w	c0de0290 <apdu_dispatcher+0x21e>
c0de00ec:	2814      	cmp	r0, #20
c0de00ee:	f000 80d8 	beq.w	c0de02a2 <apdu_dispatcher+0x230>
c0de00f2:	2815      	cmp	r0, #21
c0de00f4:	f000 80de 	beq.w	c0de02b4 <apdu_dispatcher+0x242>
c0de00f8:	2816      	cmp	r0, #22
c0de00fa:	f000 80e4 	beq.w	c0de02c6 <apdu_dispatcher+0x254>
c0de00fe:	2817      	cmp	r0, #23
c0de0100:	f000 80ee 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de0104:	2818      	cmp	r0, #24
c0de0106:	f000 80f3 	beq.w	c0de02f0 <apdu_dispatcher+0x27e>
c0de010a:	2819      	cmp	r0, #25
c0de010c:	f000 80fd 	beq.w	c0de030a <apdu_dispatcher+0x298>
c0de0110:	2803      	cmp	r0, #3
c0de0112:	f040 8102 	bne.w	c0de031a <apdu_dispatcher+0x2a8>
c0de0116:	78a0      	ldrb	r0, [r4, #2]
c0de0118:	2800      	cmp	r0, #0
c0de011a:	f040 8113 	bne.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de011e:	78e0      	ldrb	r0, [r4, #3]
c0de0120:	2800      	cmp	r0, #0
c0de0122:	f040 810f 	bne.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de0126:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de012a:	f000 b9ce 	b.w	c0de04ca <handler_get_version>
c0de012e:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0132:	e109      	b.n	c0de0348 <apdu_dispatcher+0x2d6>
c0de0134:	68a0      	ldr	r0, [r4, #8]
c0de0136:	2800      	cmp	r0, #0
c0de0138:	f000 8101 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de013c:	f000 f910 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0140:	a801      	add	r0, sp, #4
c0de0142:	f001 fa19 	bl	c0de1578 <handler_cmd_frost_commit>
c0de0146:	e0f8      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de0148:	78a0      	ldrb	r0, [r4, #2]
c0de014a:	2800      	cmp	r0, #0
c0de014c:	f040 80fa 	bne.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de0150:	78e0      	ldrb	r0, [r4, #3]
c0de0152:	2800      	cmp	r0, #0
c0de0154:	f040 80f6 	bne.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de0158:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de015c:	f000 b94e 	b.w	c0de03fc <handler_get_app_name>
c0de0160:	78a1      	ldrb	r1, [r4, #2]
c0de0162:	2901      	cmp	r1, #1
c0de0164:	f200 80ee 	bhi.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de0168:	78e0      	ldrb	r0, [r4, #3]
c0de016a:	2800      	cmp	r0, #0
c0de016c:	f040 80ea 	bne.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de0170:	68a0      	ldr	r0, [r4, #8]
c0de0172:	2800      	cmp	r0, #0
c0de0174:	f000 80e3 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de0178:	9001      	str	r0, [sp, #4]
c0de017a:	7920      	ldrb	r0, [r4, #4]
c0de017c:	2900      	cmp	r1, #0
c0de017e:	9002      	str	r0, [sp, #8]
c0de0180:	bf18      	it	ne
c0de0182:	2101      	movne	r1, #1
c0de0184:	a801      	add	r0, sp, #4
c0de0186:	f000 f94d 	bl	c0de0424 <handler_get_public_key>
c0de018a:	e0d6      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de018c:	78a1      	ldrb	r1, [r4, #2]
c0de018e:	2900      	cmp	r1, #0
c0de0190:	f000 80c6 	beq.w	c0de0320 <apdu_dispatcher+0x2ae>
c0de0194:	2903      	cmp	r1, #3
c0de0196:	f200 80d5 	bhi.w	c0de0344 <apdu_dispatcher+0x2d2>
c0de019a:	78e0      	ldrb	r0, [r4, #3]
c0de019c:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de01a0:	2a80      	cmp	r2, #128	@ 0x80
c0de01a2:	f000 80c1 	beq.w	c0de0328 <apdu_dispatcher+0x2b6>
c0de01a6:	e0cd      	b.n	c0de0344 <apdu_dispatcher+0x2d2>
c0de01a8:	68a0      	ldr	r0, [r4, #8]
c0de01aa:	2800      	cmp	r0, #0
c0de01ac:	f000 80c7 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de01b0:	f000 f8d6 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de01b4:	a801      	add	r0, sp, #4
c0de01b6:	f000 fa93 	bl	c0de06e0 <handler_cmd_keccakH>
c0de01ba:	e0be      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de01bc:	68a0      	ldr	r0, [r4, #8]
c0de01be:	2800      	cmp	r0, #0
c0de01c0:	f000 80bd 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de01c4:	f000 f8cc 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de01c8:	a801      	add	r0, sp, #4
c0de01ca:	f000 fa50 	bl	c0de066e <handler_cmd_blake2b512>
c0de01ce:	e0b4      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de01d0:	68a0      	ldr	r0, [r4, #8]
c0de01d2:	2800      	cmp	r0, #0
c0de01d4:	f000 80b3 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de01d8:	f000 f8c2 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de01dc:	a801      	add	r0, sp, #4
c0de01de:	f000 fae7 	bl	c0de07b0 <handler_cmd_Poseidon>
c0de01e2:	e0aa      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de01e4:	68a0      	ldr	r0, [r4, #8]
c0de01e6:	2800      	cmp	r0, #0
c0de01e8:	f000 80a9 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de01ec:	f000 f8b8 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de01f0:	a801      	add	r0, sp, #4
c0de01f2:	f000 fc43 	bl	c0de0a7c <handler_cmd_tEddsaPoseidon>
c0de01f6:	e0a0      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de01f8:	68a0      	ldr	r0, [r4, #8]
c0de01fa:	2800      	cmp	r0, #0
c0de01fc:	f000 809f 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de0200:	f000 f8ae 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0204:	a801      	add	r0, sp, #4
c0de0206:	f000 fb9f 	bl	c0de0948 <handler_cmd_tEddsaPoseidon_Kpub>
c0de020a:	e096      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de020c:	68a0      	ldr	r0, [r4, #8]
c0de020e:	2800      	cmp	r0, #0
c0de0210:	f000 8095 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de0214:	f000 f8a4 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0218:	a801      	add	r0, sp, #4
c0de021a:	f000 fbd6 	bl	c0de09ca <handler_cmd_tEddsaPoseidon_Sign>
c0de021e:	e08c      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de0220:	68a0      	ldr	r0, [r4, #8]
c0de0222:	2800      	cmp	r0, #0
c0de0224:	f000 808b 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de0228:	f000 f89a 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de022c:	a801      	add	r0, sp, #4
c0de022e:	f000 fb45 	bl	c0de08bc <handler_cmd_Poseidon_ithRC>
c0de0232:	e082      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de0234:	68a0      	ldr	r0, [r4, #8]
c0de0236:	2800      	cmp	r0, #0
c0de0238:	f000 8081 	beq.w	c0de033e <apdu_dispatcher+0x2cc>
c0de023c:	f000 f890 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0240:	a801      	add	r0, sp, #4
c0de0242:	f000 fc8f 	bl	c0de0b64 <handler_cmd_tEdwards>
c0de0246:	e078      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de0248:	68a0      	ldr	r0, [r4, #8]
c0de024a:	2800      	cmp	r0, #0
c0de024c:	d077      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de024e:	f000 f887 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0252:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0256:	f000 ba61 	b.w	c0de071c <handler_cmd_bolos_stretch>
c0de025a:	68a0      	ldr	r0, [r4, #8]
c0de025c:	2800      	cmp	r0, #0
c0de025e:	d06e      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de0260:	f000 f87e 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0264:	a801      	add	r0, sp, #4
c0de0266:	f000 fd33 	bl	c0de0cd0 <handler_cmd_Interpolate>
c0de026a:	e066      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de026c:	68a0      	ldr	r0, [r4, #8]
c0de026e:	2800      	cmp	r0, #0
c0de0270:	d065      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de0272:	f000 f875 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0276:	a801      	add	r0, sp, #4
c0de0278:	f000 fddf 	bl	c0de0e3a <handler_cmd_Split>
c0de027c:	e05d      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de027e:	68a0      	ldr	r0, [r4, #8]
c0de0280:	2800      	cmp	r0, #0
c0de0282:	d05c      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de0284:	f000 f86c 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0288:	a801      	add	r0, sp, #4
c0de028a:	f000 fe9e 	bl	c0de0fca <handler_cmd_frostH>
c0de028e:	e054      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de0290:	68a0      	ldr	r0, [r4, #8]
c0de0292:	2800      	cmp	r0, #0
c0de0294:	d053      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de0296:	f000 f863 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de029a:	a801      	add	r0, sp, #4
c0de029c:	f000 fee6 	bl	c0de106c <handler_cmd_encodeCommitment>
c0de02a0:	e04b      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de02a2:	68a0      	ldr	r0, [r4, #8]
c0de02a4:	2800      	cmp	r0, #0
c0de02a6:	d04a      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de02a8:	f000 f85a 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de02ac:	a801      	add	r0, sp, #4
c0de02ae:	f000 ff13 	bl	c0de10d8 <handler_cmd_GroupCommitment>
c0de02b2:	e042      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de02b4:	68a0      	ldr	r0, [r4, #8]
c0de02b6:	2800      	cmp	r0, #0
c0de02b8:	d041      	beq.n	c0de033e <apdu_dispatcher+0x2cc>
c0de02ba:	f000 f851 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de02be:	a801      	add	r0, sp, #4
c0de02c0:	f000 ff4e 	bl	c0de1160 <handler_cmd_BindingFactors>
c0de02c4:	e039      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de02c6:	78a0      	ldrb	r0, [r4, #2]
c0de02c8:	2801      	cmp	r0, #1
c0de02ca:	d83b      	bhi.n	c0de0344 <apdu_dispatcher+0x2d2>
c0de02cc:	78e0      	ldrb	r0, [r4, #3]
c0de02ce:	bbc8      	cbnz	r0, c0de0344 <apdu_dispatcher+0x2d2>
c0de02d0:	68a0      	ldr	r0, [r4, #8]
c0de02d2:	b3a0      	cbz	r0, c0de033e <apdu_dispatcher+0x2cc>
c0de02d4:	f000 f844 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de02d8:	a801      	add	r0, sp, #4
c0de02da:	f000 fffd 	bl	c0de12d8 <handler_get_insecure_secret>
c0de02de:	e02c      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de02e0:	68a0      	ldr	r0, [r4, #8]
c0de02e2:	b360      	cbz	r0, c0de033e <apdu_dispatcher+0x2cc>
c0de02e4:	f000 f83c 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de02e8:	a801      	add	r0, sp, #4
c0de02ea:	f001 f88d 	bl	c0de1408 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de02ee:	e024      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de02f0:	78a0      	ldrb	r0, [r4, #2]
c0de02f2:	2801      	cmp	r0, #1
c0de02f4:	d826      	bhi.n	c0de0344 <apdu_dispatcher+0x2d2>
c0de02f6:	78e0      	ldrb	r0, [r4, #3]
c0de02f8:	bb20      	cbnz	r0, c0de0344 <apdu_dispatcher+0x2d2>
c0de02fa:	68a0      	ldr	r0, [r4, #8]
c0de02fc:	b1f8      	cbz	r0, c0de033e <apdu_dispatcher+0x2cc>
c0de02fe:	f000 f82f 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0302:	a801      	add	r0, sp, #4
c0de0304:	f001 f848 	bl	c0de1398 <handler_get_insecure_public>
c0de0308:	e017      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de030a:	68a0      	ldr	r0, [r4, #8]
c0de030c:	b1b8      	cbz	r0, c0de033e <apdu_dispatcher+0x2cc>
c0de030e:	f000 f827 	bl	c0de0360 <OUTLINED_FUNCTION_0>
c0de0312:	a801      	add	r0, sp, #4
c0de0314:	f001 f8be 	bl	c0de1494 <handler_cmd_conciliation>
c0de0318:	e00f      	b.n	c0de033a <apdu_dispatcher+0x2c8>
c0de031a:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de031e:	e013      	b.n	c0de0348 <apdu_dispatcher+0x2d6>
c0de0320:	78e0      	ldrb	r0, [r4, #3]
c0de0322:	2880      	cmp	r0, #128	@ 0x80
c0de0324:	d10e      	bne.n	c0de0344 <apdu_dispatcher+0x2d2>
c0de0326:	2080      	movs	r0, #128	@ 0x80
c0de0328:	68a2      	ldr	r2, [r4, #8]
c0de032a:	b142      	cbz	r2, c0de033e <apdu_dispatcher+0x2cc>
c0de032c:	9201      	str	r2, [sp, #4]
c0de032e:	7922      	ldrb	r2, [r4, #4]
c0de0330:	9202      	str	r2, [sp, #8]
c0de0332:	09c2      	lsrs	r2, r0, #7
c0de0334:	a801      	add	r0, sp, #4
c0de0336:	f000 f8df 	bl	c0de04f8 <handler_sign_tx>
c0de033a:	b004      	add	sp, #16
c0de033c:	bd10      	pop	{r4, pc}
c0de033e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0342:	e001      	b.n	c0de0348 <apdu_dispatcher+0x2d6>
c0de0344:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0348:	b004      	add	sp, #16
c0de034a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de034e:	f000 b800 	b.w	c0de0352 <io_send_sw>

c0de0352 <io_send_sw>:
c0de0352:	b580      	push	{r7, lr}
c0de0354:	4602      	mov	r2, r0
c0de0356:	2000      	movs	r0, #0
c0de0358:	2100      	movs	r1, #0
c0de035a:	f006 fc3d 	bl	c0de6bd8 <io_send_response_buffers>
c0de035e:	bd80      	pop	{r7, pc}

c0de0360 <OUTLINED_FUNCTION_0>:
c0de0360:	9001      	str	r0, [sp, #4]
c0de0362:	7920      	ldrb	r0, [r4, #4]
c0de0364:	9002      	str	r0, [sp, #8]
c0de0366:	4770      	bx	lr

c0de0368 <app_main>:
c0de0368:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de036a:	f006 fc17 	bl	c0de6b9c <io_init>
c0de036e:	481e      	ldr	r0, [pc, #120]	@ (c0de03e8 <app_main+0x80>)
c0de0370:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0374:	b908      	cbnz	r0, c0de037a <app_main+0x12>
c0de0376:	f001 fb7d 	bl	c0de1a74 <ui_menu_main>
c0de037a:	481c      	ldr	r0, [pc, #112]	@ (c0de03ec <app_main+0x84>)
c0de037c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0380:	4448      	add	r0, r9
c0de0382:	f007 fc33 	bl	c0de7bec <explicit_bzero>
c0de0386:	481b      	ldr	r0, [pc, #108]	@ (c0de03f4 <app_main+0x8c>)
c0de0388:	4478      	add	r0, pc
c0de038a:	f007 f915 	bl	c0de75b8 <pic>
c0de038e:	7880      	ldrb	r0, [r0, #2]
c0de0390:	2801      	cmp	r0, #1
c0de0392:	d00d      	beq.n	c0de03b0 <app_main+0x48>
c0de0394:	2001      	movs	r0, #1
c0de0396:	f88d 0002 	strb.w	r0, [sp, #2]
c0de039a:	2000      	movs	r0, #0
c0de039c:	f8ad 0000 	strh.w	r0, [sp]
c0de03a0:	4815      	ldr	r0, [pc, #84]	@ (c0de03f8 <app_main+0x90>)
c0de03a2:	4478      	add	r0, pc
c0de03a4:	f007 f908 	bl	c0de75b8 <pic>
c0de03a8:	4669      	mov	r1, sp
c0de03aa:	2203      	movs	r2, #3
c0de03ac:	f007 f934 	bl	c0de7618 <nvm_write>
c0de03b0:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03f0 <app_main+0x88>)
c0de03b2:	ac01      	add	r4, sp, #4
c0de03b4:	f006 fbfa 	bl	c0de6bac <io_recv_command>
c0de03b8:	2800      	cmp	r0, #0
c0de03ba:	d414      	bmi.n	c0de03e6 <app_main+0x7e>
c0de03bc:	4602      	mov	r2, r0
c0de03be:	eb09 0105 	add.w	r1, r9, r5
c0de03c2:	4620      	mov	r0, r4
c0de03c4:	f006 fcf2 	bl	c0de6dac <apdu_parser>
c0de03c8:	b130      	cbz	r0, c0de03d8 <app_main+0x70>
c0de03ca:	4620      	mov	r0, r4
c0de03cc:	f7ff fe51 	bl	c0de0072 <apdu_dispatcher>
c0de03d0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03d4:	dcee      	bgt.n	c0de03b4 <app_main+0x4c>
c0de03d6:	e006      	b.n	c0de03e6 <app_main+0x7e>
c0de03d8:	2000      	movs	r0, #0
c0de03da:	2100      	movs	r1, #0
c0de03dc:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03e0:	f006 fbfa 	bl	c0de6bd8 <io_send_response_buffers>
c0de03e4:	e7e6      	b.n	c0de03b4 <app_main+0x4c>
c0de03e6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de03e8:	000008dc 	.word	0x000008dc
c0de03ec:	00000000 	.word	0x00000000
c0de03f0:	00000414 	.word	0x00000414
c0de03f4:	00008e74 	.word	0x00008e74
c0de03f8:	00008e5a 	.word	0x00008e5a

c0de03fc <handler_get_app_name>:
c0de03fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03fe:	4808      	ldr	r0, [pc, #32]	@ (c0de0420 <handler_get_app_name+0x24>)
c0de0400:	4478      	add	r0, pc
c0de0402:	f007 f8d9 	bl	c0de75b8 <pic>
c0de0406:	2100      	movs	r1, #0
c0de0408:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de040c:	9103      	str	r1, [sp, #12]
c0de040e:	2107      	movs	r1, #7
c0de0410:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0414:	a801      	add	r0, sp, #4
c0de0416:	2101      	movs	r1, #1
c0de0418:	f006 fbde 	bl	c0de6bd8 <io_send_response_buffers>
c0de041c:	b004      	add	sp, #16
c0de041e:	bd80      	pop	{r7, pc}
c0de0420:	00007dce 	.word	0x00007dce

c0de0424 <handler_get_public_key>:
c0de0424:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0426:	b085      	sub	sp, #20
c0de0428:	4f23      	ldr	r7, [pc, #140]	@ (c0de04b8 <handler_get_public_key+0x94>)
c0de042a:	460c      	mov	r4, r1
c0de042c:	4605      	mov	r5, r0
c0de042e:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0432:	eb09 0607 	add.w	r6, r9, r7
c0de0436:	4630      	mov	r0, r6
c0de0438:	f007 fbd8 	bl	c0de7bec <explicit_bzero>
c0de043c:	2000      	movs	r0, #0
c0de043e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0442:	f809 0007 	strb.w	r0, [r9, r7]
c0de0446:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de044a:	4628      	mov	r0, r5
c0de044c:	f006 f972 	bl	c0de6734 <buffer_read_u8>
c0de0450:	b308      	cbz	r0, c0de0496 <handler_get_public_key+0x72>
c0de0452:	eb09 0007 	add.w	r0, r9, r7
c0de0456:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de045a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de045e:	4628      	mov	r0, r5
c0de0460:	f006 f9bb 	bl	c0de67da <buffer_read_bip32_path>
c0de0464:	b1b8      	cbz	r0, c0de0496 <handler_get_public_key+0x72>
c0de0466:	eb09 0007 	add.w	r0, r9, r7
c0de046a:	2100      	movs	r1, #0
c0de046c:	2205      	movs	r2, #5
c0de046e:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de0472:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de0476:	9104      	str	r1, [sp, #16]
c0de0478:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de047c:	f100 0608 	add.w	r6, r0, #8
c0de0480:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de0484:	2000      	movs	r0, #0
c0de0486:	2121      	movs	r1, #33	@ 0x21
c0de0488:	e9cd 6500 	strd	r6, r5, [sp]
c0de048c:	f006 fa66 	bl	c0de695c <bip32_derive_with_seed_get_pubkey_256>
c0de0490:	b140      	cbz	r0, c0de04a4 <handler_get_public_key+0x80>
c0de0492:	b280      	uxth	r0, r0
c0de0494:	e001      	b.n	c0de049a <handler_get_public_key+0x76>
c0de0496:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de049a:	b005      	add	sp, #20
c0de049c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04a0:	f000 b80c 	b.w	c0de04bc <io_send_sw>
c0de04a4:	2c00      	cmp	r4, #0
c0de04a6:	b005      	add	sp, #20
c0de04a8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04ac:	bf08      	it	eq
c0de04ae:	f001 b8a7 	beq.w	c0de1600 <helper_send_response_pubkey>
c0de04b2:	f001 bbc3 	b.w	c0de1c3c <ui_display_address>
c0de04b6:	bf00      	nop
c0de04b8:	00000000 	.word	0x00000000

c0de04bc <io_send_sw>:
c0de04bc:	b580      	push	{r7, lr}
c0de04be:	4602      	mov	r2, r0
c0de04c0:	2000      	movs	r0, #0
c0de04c2:	2100      	movs	r1, #0
c0de04c4:	f006 fb88 	bl	c0de6bd8 <io_send_response_buffers>
c0de04c8:	bd80      	pop	{r7, pc}

c0de04ca <handler_get_version>:
c0de04ca:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de04cc:	2000      	movs	r0, #0
c0de04ce:	2101      	movs	r1, #1
c0de04d0:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de04d4:	f88d 0002 	strb.w	r0, [sp, #2]
c0de04d8:	f88d 0001 	strb.w	r0, [sp, #1]
c0de04dc:	9003      	str	r0, [sp, #12]
c0de04de:	2003      	movs	r0, #3
c0de04e0:	f88d 1003 	strb.w	r1, [sp, #3]
c0de04e4:	2101      	movs	r1, #1
c0de04e6:	9002      	str	r0, [sp, #8]
c0de04e8:	f10d 0001 	add.w	r0, sp, #1
c0de04ec:	9001      	str	r0, [sp, #4]
c0de04ee:	a801      	add	r0, sp, #4
c0de04f0:	f006 fb72 	bl	c0de6bd8 <io_send_response_buffers>
c0de04f4:	b004      	add	sp, #16
c0de04f6:	bd80      	pop	{r7, pc}

c0de04f8 <handler_sign_tx>:
c0de04f8:	b570      	push	{r4, r5, r6, lr}
c0de04fa:	b086      	sub	sp, #24
c0de04fc:	4e54      	ldr	r6, [pc, #336]	@ (c0de0650 <handler_sign_tx+0x158>)
c0de04fe:	4604      	mov	r4, r0
c0de0500:	b191      	cbz	r1, c0de0528 <handler_sign_tx+0x30>
c0de0502:	eb09 0006 	add.w	r0, r9, r6
c0de0506:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de050a:	2801      	cmp	r0, #1
c0de050c:	d12c      	bne.n	c0de0568 <handler_sign_tx+0x70>
c0de050e:	eb09 0006 	add.w	r0, r9, r6
c0de0512:	4615      	mov	r5, r2
c0de0514:	6862      	ldr	r2, [r4, #4]
c0de0516:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de051a:	1811      	adds	r1, r2, r0
c0de051c:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0520:	d925      	bls.n	c0de056e <handler_sign_tx+0x76>
c0de0522:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0526:	e039      	b.n	c0de059c <handler_sign_tx+0xa4>
c0de0528:	eb09 0506 	add.w	r5, r9, r6
c0de052c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0530:	4628      	mov	r0, r5
c0de0532:	f007 fb5b 	bl	c0de7bec <explicit_bzero>
c0de0536:	2000      	movs	r0, #0
c0de0538:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de053c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0540:	2001      	movs	r0, #1
c0de0542:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0546:	4620      	mov	r0, r4
c0de0548:	f006 f8f4 	bl	c0de6734 <buffer_read_u8>
c0de054c:	b148      	cbz	r0, c0de0562 <handler_sign_tx+0x6a>
c0de054e:	eb09 0006 	add.w	r0, r9, r6
c0de0552:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0556:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de055a:	4620      	mov	r0, r4
c0de055c:	f006 f93d 	bl	c0de67da <buffer_read_bip32_path>
c0de0560:	b9b8      	cbnz	r0, c0de0592 <handler_sign_tx+0x9a>
c0de0562:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0566:	e019      	b.n	c0de059c <handler_sign_tx+0xa4>
c0de0568:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de056c:	e016      	b.n	c0de059c <handler_sign_tx+0xa4>
c0de056e:	eb09 0106 	add.w	r1, r9, r6
c0de0572:	4408      	add	r0, r1
c0de0574:	f100 0108 	add.w	r1, r0, #8
c0de0578:	4620      	mov	r0, r4
c0de057a:	f006 f958 	bl	c0de682e <buffer_move>
c0de057e:	b158      	cbz	r0, c0de0598 <handler_sign_tx+0xa0>
c0de0580:	eb09 0106 	add.w	r1, r9, r6
c0de0584:	6862      	ldr	r2, [r4, #4]
c0de0586:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de058a:	4410      	add	r0, r2
c0de058c:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de0590:	b14d      	cbz	r5, c0de05a6 <handler_sign_tx+0xae>
c0de0592:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de0596:	e001      	b.n	c0de059c <handler_sign_tx+0xa4>
c0de0598:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de059c:	b006      	add	sp, #24
c0de059e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de05a2:	f000 b85d 	b.w	c0de0660 <io_send_sw>
c0de05a6:	2100      	movs	r1, #0
c0de05a8:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de05ac:	eb09 0006 	add.w	r0, r9, r6
c0de05b0:	f100 0108 	add.w	r1, r0, #8
c0de05b4:	9101      	str	r1, [sp, #4]
c0de05b6:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de05ba:	a801      	add	r0, sp, #4
c0de05bc:	f001 f97a 	bl	c0de18b4 <transaction_deserialize>
c0de05c0:	2801      	cmp	r0, #1
c0de05c2:	d114      	bne.n	c0de05ee <handler_sign_tx+0xf6>
c0de05c4:	2001      	movs	r0, #1
c0de05c6:	f809 0006 	strb.w	r0, [r9, r6]
c0de05ca:	eb09 0006 	add.w	r0, r9, r6
c0de05ce:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de05d2:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de05d6:	9105      	str	r1, [sp, #20]
c0de05d8:	f100 0108 	add.w	r1, r0, #8
c0de05dc:	9104      	str	r1, [sp, #16]
c0de05de:	a804      	add	r0, sp, #16
c0de05e0:	2101      	movs	r1, #1
c0de05e2:	f006 fd89 	bl	c0de70f8 <cx_keccak_256_hash_iovec>
c0de05e6:	b140      	cbz	r0, c0de05fa <handler_sign_tx+0x102>
c0de05e8:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de05ec:	e001      	b.n	c0de05f2 <handler_sign_tx+0xfa>
c0de05ee:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05f2:	f000 f835 	bl	c0de0660 <io_send_sw>
c0de05f6:	b006      	add	sp, #24
c0de05f8:	bd70      	pop	{r4, r5, r6, pc}
c0de05fa:	4816      	ldr	r0, [pc, #88]	@ (c0de0654 <handler_sign_tx+0x15c>)
c0de05fc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0600:	b1a0      	cbz	r0, c0de062c <handler_sign_tx+0x134>
c0de0602:	4815      	ldr	r0, [pc, #84]	@ (c0de0658 <handler_sign_tx+0x160>)
c0de0604:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de0608:	b9f9      	cbnz	r1, c0de064a <handler_sign_tx+0x152>
c0de060a:	eb09 0406 	add.w	r4, r9, r6
c0de060e:	2101      	movs	r1, #1
c0de0610:	f809 1000 	strb.w	r1, [r9, r0]
c0de0614:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0618:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de061a:	9400      	str	r4, [sp, #0]
c0de061c:	f001 f90a 	bl	c0de1834 <swap_check_validity>
c0de0620:	b110      	cbz	r0, c0de0628 <handler_sign_tx+0x130>
c0de0622:	2001      	movs	r0, #1
c0de0624:	f001 f9d0 	bl	c0de19c8 <validate_transaction>
c0de0628:	2000      	movs	r0, #0
c0de062a:	e7e4      	b.n	c0de05f6 <handler_sign_tx+0xfe>
c0de062c:	eb09 0006 	add.w	r0, r9, r6
c0de0630:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0634:	4909      	ldr	r1, [pc, #36]	@ (c0de065c <handler_sign_tx+0x164>)
c0de0636:	4479      	add	r1, pc
c0de0638:	f007 fb1c 	bl	c0de7c74 <strcmp>
c0de063c:	b110      	cbz	r0, c0de0644 <handler_sign_tx+0x14c>
c0de063e:	f001 fbee 	bl	c0de1e1e <ui_display_transaction>
c0de0642:	e7d8      	b.n	c0de05f6 <handler_sign_tx+0xfe>
c0de0644:	f001 fbe8 	bl	c0de1e18 <ui_display_blind_signed_transaction>
c0de0648:	e7d5      	b.n	c0de05f6 <handler_sign_tx+0xfe>
c0de064a:	20ff      	movs	r0, #255	@ 0xff
c0de064c:	f007 f97a 	bl	c0de7944 <os_sched_exit>
c0de0650:	00000000 	.word	0x00000000
c0de0654:	000008dc 	.word	0x000008dc
c0de0658:	000008dd 	.word	0x000008dd
c0de065c:	0000788c 	.word	0x0000788c

c0de0660 <io_send_sw>:
c0de0660:	b580      	push	{r7, lr}
c0de0662:	4602      	mov	r2, r0
c0de0664:	2000      	movs	r0, #0
c0de0666:	2100      	movs	r1, #0
c0de0668:	f006 fab6 	bl	c0de6bd8 <io_send_response_buffers>
c0de066c:	bd80      	pop	{r7, pc}

c0de066e <handler_cmd_blake2b512>:
c0de066e:	b510      	push	{r4, lr}
c0de0670:	b0d0      	sub	sp, #320	@ 0x140
c0de0672:	4604      	mov	r4, r0
c0de0674:	6840      	ldr	r0, [r0, #4]
c0de0676:	2820      	cmp	r0, #32
c0de0678:	d10b      	bne.n	c0de0692 <handler_cmd_blake2b512+0x24>
c0de067a:	6820      	ldr	r0, [r4, #0]
c0de067c:	a940      	add	r1, sp, #256	@ 0x100
c0de067e:	2220      	movs	r2, #32
c0de0680:	f001 fbd0 	bl	c0de1e24 <zkn_prv_hash>
c0de0684:	b988      	cbnz	r0, c0de06aa <handler_cmd_blake2b512+0x3c>
c0de0686:	a840      	add	r0, sp, #256	@ 0x100
c0de0688:	2140      	movs	r1, #64	@ 0x40
c0de068a:	f000 f817 	bl	c0de06bc <io_send_response_pointer>
c0de068e:	2000      	movs	r0, #0
c0de0690:	e00d      	b.n	c0de06ae <handler_cmd_blake2b512+0x40>
c0de0692:	4668      	mov	r0, sp
c0de0694:	2109      	movs	r1, #9
c0de0696:	2240      	movs	r2, #64	@ 0x40
c0de0698:	f006 fd65 	bl	c0de7166 <cx_hash_init_ex>
c0de069c:	b928      	cbnz	r0, c0de06aa <handler_cmd_blake2b512+0x3c>
c0de069e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06a2:	4668      	mov	r0, sp
c0de06a4:	f006 fd64 	bl	c0de7170 <cx_hash_update>
c0de06a8:	b118      	cbz	r0, c0de06b2 <handler_cmd_blake2b512+0x44>
c0de06aa:	f000 ff88 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de06ae:	b050      	add	sp, #320	@ 0x140
c0de06b0:	bd10      	pop	{r4, pc}
c0de06b2:	4668      	mov	r0, sp
c0de06b4:	a940      	add	r1, sp, #256	@ 0x100
c0de06b6:	f006 fd4c 	bl	c0de7152 <cx_hash_final>
c0de06ba:	e7e3      	b.n	c0de0684 <handler_cmd_blake2b512+0x16>

c0de06bc <io_send_response_pointer>:
c0de06bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06be:	2200      	movs	r2, #0
c0de06c0:	ab01      	add	r3, sp, #4
c0de06c2:	c307      	stmia	r3!, {r0, r1, r2}
c0de06c4:	a801      	add	r0, sp, #4
c0de06c6:	2101      	movs	r1, #1
c0de06c8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de06cc:	f006 fa84 	bl	c0de6bd8 <io_send_response_buffers>
c0de06d0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06d2 <io_send_sw>:
c0de06d2:	b580      	push	{r7, lr}
c0de06d4:	4602      	mov	r2, r0
c0de06d6:	2000      	movs	r0, #0
c0de06d8:	2100      	movs	r1, #0
c0de06da:	f006 fa7d 	bl	c0de6bd8 <io_send_response_buffers>
c0de06de:	bd80      	pop	{r7, pc}

c0de06e0 <handler_cmd_keccakH>:
c0de06e0:	b510      	push	{r4, lr}
c0de06e2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06e4:	4604      	mov	r4, r0
c0de06e6:	4668      	mov	r0, sp
c0de06e8:	2106      	movs	r1, #6
c0de06ea:	2220      	movs	r2, #32
c0de06ec:	f006 fd3b 	bl	c0de7166 <cx_hash_init_ex>
c0de06f0:	b950      	cbnz	r0, c0de0708 <handler_cmd_keccakH+0x28>
c0de06f2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06f6:	4668      	mov	r0, sp
c0de06f8:	f006 fd3a 	bl	c0de7170 <cx_hash_update>
c0de06fc:	b920      	cbnz	r0, c0de0708 <handler_cmd_keccakH+0x28>
c0de06fe:	4668      	mov	r0, sp
c0de0700:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de0702:	f006 fd26 	bl	c0de7152 <cx_hash_final>
c0de0706:	b118      	cbz	r0, c0de0710 <handler_cmd_keccakH+0x30>
c0de0708:	f000 ff59 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de070c:	b072      	add	sp, #456	@ 0x1c8
c0de070e:	bd10      	pop	{r4, pc}
c0de0710:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de0712:	f000 ff6e 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de0716:	2000      	movs	r0, #0
c0de0718:	e7f8      	b.n	c0de070c <handler_cmd_keccakH+0x2c>
	...

c0de071c <handler_cmd_bolos_stretch>:
c0de071c:	b510      	push	{r4, lr}
c0de071e:	b0a4      	sub	sp, #144	@ 0x90
c0de0720:	f000 ff49 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0724:	bba0      	cbnz	r0, c0de0790 <handler_cmd_bolos_stretch+0x74>
c0de0726:	ac14      	add	r4, sp, #80	@ 0x50
c0de0728:	491e      	ldr	r1, [pc, #120]	@ (c0de07a4 <handler_cmd_bolos_stretch+0x88>)
c0de072a:	2220      	movs	r2, #32
c0de072c:	4620      	mov	r0, r4
c0de072e:	4479      	add	r1, pc
c0de0730:	f007 fa44 	bl	c0de7bbc <__aeabi_memcpy>
c0de0734:	a80c      	add	r0, sp, #48	@ 0x30
c0de0736:	491c      	ldr	r1, [pc, #112]	@ (c0de07a8 <handler_cmd_bolos_stretch+0x8c>)
c0de0738:	2220      	movs	r2, #32
c0de073a:	4479      	add	r1, pc
c0de073c:	f007 fa3e 	bl	c0de7bbc <__aeabi_memcpy>
c0de0740:	a804      	add	r0, sp, #16
c0de0742:	491a      	ldr	r1, [pc, #104]	@ (c0de07ac <handler_cmd_bolos_stretch+0x90>)
c0de0744:	2220      	movs	r2, #32
c0de0746:	4479      	add	r1, pc
c0de0748:	f007 fa38 	bl	c0de7bbc <__aeabi_memcpy>
c0de074c:	a803      	add	r0, sp, #12
c0de074e:	2120      	movs	r1, #32
c0de0750:	4622      	mov	r2, r4
c0de0752:	f000 ff48 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de0756:	b9d8      	cbnz	r0, c0de0790 <handler_cmd_bolos_stretch+0x74>
c0de0758:	a802      	add	r0, sp, #8
c0de075a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de075c:	2120      	movs	r1, #32
c0de075e:	f000 ff42 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de0762:	b9a8      	cbnz	r0, c0de0790 <handler_cmd_bolos_stretch+0x74>
c0de0764:	a801      	add	r0, sp, #4
c0de0766:	aa04      	add	r2, sp, #16
c0de0768:	2120      	movs	r1, #32
c0de076a:	f000 ff3c 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de076e:	b978      	cbnz	r0, c0de0790 <handler_cmd_bolos_stretch+0x74>
c0de0770:	4668      	mov	r0, sp
c0de0772:	f000 ff2a 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de0776:	b958      	cbnz	r0, c0de0790 <handler_cmd_bolos_stretch+0x74>
c0de0778:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de077c:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0780:	f006 ffe0 	bl	c0de7744 <cx_bn_mod_add>
c0de0784:	b920      	cbnz	r0, c0de0790 <handler_cmd_bolos_stretch+0x74>
c0de0786:	9800      	ldr	r0, [sp, #0]
c0de0788:	a91c      	add	r1, sp, #112	@ 0x70
c0de078a:	f000 ff1b 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de078e:	b118      	cbz	r0, c0de0798 <handler_cmd_bolos_stretch+0x7c>
c0de0790:	f000 ff15 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0794:	b024      	add	sp, #144	@ 0x90
c0de0796:	bd10      	pop	{r4, pc}
c0de0798:	a81c      	add	r0, sp, #112	@ 0x70
c0de079a:	f000 ff2a 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de079e:	2000      	movs	r0, #0
c0de07a0:	e7f8      	b.n	c0de0794 <handler_cmd_bolos_stretch+0x78>
c0de07a2:	bf00      	nop
c0de07a4:	00007bc6 	.word	0x00007bc6
c0de07a8:	00007b3a 	.word	0x00007b3a
c0de07ac:	00007c6e 	.word	0x00007c6e

c0de07b0 <handler_cmd_Poseidon>:
c0de07b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07b4:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07b8:	4604      	mov	r4, r0
c0de07ba:	a860      	add	r0, sp, #384	@ 0x180
c0de07bc:	493d      	ldr	r1, [pc, #244]	@ (c0de08b4 <handler_cmd_Poseidon+0x104>)
c0de07be:	22a0      	movs	r2, #160	@ 0xa0
c0de07c0:	4479      	add	r1, pc
c0de07c2:	f007 f9fb 	bl	c0de7bbc <__aeabi_memcpy>
c0de07c6:	f000 fef6 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de07ca:	bb68      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de07cc:	2000      	movs	r0, #0
c0de07ce:	a948      	add	r1, sp, #288	@ 0x120
c0de07d0:	22ff      	movs	r2, #255	@ 0xff
c0de07d2:	2860      	cmp	r0, #96	@ 0x60
c0de07d4:	d002      	beq.n	c0de07dc <handler_cmd_Poseidon+0x2c>
c0de07d6:	540a      	strb	r2, [r1, r0]
c0de07d8:	3001      	adds	r0, #1
c0de07da:	e7fa      	b.n	c0de07d2 <handler_cmd_Poseidon+0x22>
c0de07dc:	4936      	ldr	r1, [pc, #216]	@ (c0de08b8 <handler_cmd_Poseidon+0x108>)
c0de07de:	466d      	mov	r5, sp
c0de07e0:	2220      	movs	r2, #32
c0de07e2:	4628      	mov	r0, r5
c0de07e4:	4479      	add	r1, pc
c0de07e6:	f007 f9e9 	bl	c0de7bbc <__aeabi_memcpy>
c0de07ea:	a809      	add	r0, sp, #36	@ 0x24
c0de07ec:	2120      	movs	r1, #32
c0de07ee:	462a      	mov	r2, r5
c0de07f0:	f000 fef9 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de07f4:	b9c0      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de07f6:	a808      	add	r0, sp, #32
c0de07f8:	466a      	mov	r2, sp
c0de07fa:	2120      	movs	r1, #32
c0de07fc:	f000 fef3 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de0800:	b990      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de0802:	a80a      	add	r0, sp, #40	@ 0x28
c0de0804:	2120      	movs	r1, #32
c0de0806:	f006 ffe3 	bl	c0de77d0 <cx_mont_alloc>
c0de080a:	b968      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de080c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de080e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0810:	f006 ffe8 	bl	c0de77e4 <cx_mont_init>
c0de0814:	b940      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de0816:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de081a:	ab0a      	add	r3, sp, #40	@ 0x28
c0de081c:	2105      	movs	r1, #5
c0de081e:	2205      	movs	r2, #5
c0de0820:	4640      	mov	r0, r8
c0de0822:	f002 fd1d 	bl	c0de3260 <Poseidon_alloc_init>
c0de0826:	b128      	cbz	r0, c0de0834 <handler_cmd_Poseidon+0x84>
c0de0828:	f000 fec9 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de082c:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0830:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0834:	2700      	movs	r7, #0
c0de0836:	ae60      	add	r6, sp, #384	@ 0x180
c0de0838:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de083a:	4287      	cmp	r7, r0
c0de083c:	d212      	bcs.n	c0de0864 <handler_cmd_Poseidon+0xb4>
c0de083e:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de0842:	4631      	mov	r1, r6
c0de0844:	2220      	movs	r2, #32
c0de0846:	69e8      	ldr	r0, [r5, #28]
c0de0848:	f006 ff2c 	bl	c0de76a4 <cx_bn_init>
c0de084c:	2800      	cmp	r0, #0
c0de084e:	d1eb      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de0850:	69e8      	ldr	r0, [r5, #28]
c0de0852:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0854:	4601      	mov	r1, r0
c0de0856:	f006 ffcf 	bl	c0de77f8 <cx_mont_to_montgomery>
c0de085a:	3701      	adds	r7, #1
c0de085c:	3620      	adds	r6, #32
c0de085e:	2800      	cmp	r0, #0
c0de0860:	d0ea      	beq.n	c0de0838 <handler_cmd_Poseidon+0x88>
c0de0862:	e7e1      	b.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de0864:	aa08      	add	r2, sp, #32
c0de0866:	4640      	mov	r0, r8
c0de0868:	2100      	movs	r1, #0
c0de086a:	2301      	movs	r3, #1
c0de086c:	f002 fd5e 	bl	c0de332c <Poseidon>
c0de0870:	6820      	ldr	r0, [r4, #0]
c0de0872:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0874:	7800      	ldrb	r0, [r0, #0]
c0de0876:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de087a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de087e:	4601      	mov	r1, r0
c0de0880:	f006 ffc6 	bl	c0de7810 <cx_mont_from_montgomery>
c0de0884:	2800      	cmp	r0, #0
c0de0886:	d1cf      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de0888:	6820      	ldr	r0, [r4, #0]
c0de088a:	a948      	add	r1, sp, #288	@ 0x120
c0de088c:	f000 fe9a 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de0890:	2800      	cmp	r0, #0
c0de0892:	d1c9      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de0894:	a848      	add	r0, sp, #288	@ 0x120
c0de0896:	2160      	movs	r1, #96	@ 0x60
c0de0898:	f7ff ff10 	bl	c0de06bc <io_send_response_pointer>
c0de089c:	a808      	add	r0, sp, #32
c0de089e:	f006 feed 	bl	c0de767c <cx_bn_destroy>
c0de08a2:	2800      	cmp	r0, #0
c0de08a4:	d1c0      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de08a6:	f006 fecb 	bl	c0de7640 <cx_bn_unlock>
c0de08aa:	2800      	cmp	r0, #0
c0de08ac:	d1bc      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de08ae:	2000      	movs	r0, #0
c0de08b0:	e7bc      	b.n	c0de082c <handler_cmd_Poseidon+0x7c>
c0de08b2:	bf00      	nop
c0de08b4:	00007cb4 	.word	0x00007cb4
c0de08b8:	00007c30 	.word	0x00007c30

c0de08bc <handler_cmd_Poseidon_ithRC>:
c0de08bc:	b570      	push	{r4, r5, r6, lr}
c0de08be:	b0d0      	sub	sp, #320	@ 0x140
c0de08c0:	4604      	mov	r4, r0
c0de08c2:	f000 fe78 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de08c6:	bba0      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de08c8:	a848      	add	r0, sp, #288	@ 0x120
c0de08ca:	491d      	ldr	r1, [pc, #116]	@ (c0de0940 <handler_cmd_Poseidon_ithRC+0x84>)
c0de08cc:	2220      	movs	r2, #32
c0de08ce:	4479      	add	r1, pc
c0de08d0:	f007 f974 	bl	c0de7bbc <__aeabi_memcpy>
c0de08d4:	ad01      	add	r5, sp, #4
c0de08d6:	491b      	ldr	r1, [pc, #108]	@ (c0de0944 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08d8:	2220      	movs	r2, #32
c0de08da:	4628      	mov	r0, r5
c0de08dc:	4479      	add	r1, pc
c0de08de:	f007 f96d 	bl	c0de7bbc <__aeabi_memcpy>
c0de08e2:	a809      	add	r0, sp, #36	@ 0x24
c0de08e4:	2120      	movs	r1, #32
c0de08e6:	462a      	mov	r2, r5
c0de08e8:	f000 fe7d 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de08ec:	bb08      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de08ee:	a80a      	add	r0, sp, #40	@ 0x28
c0de08f0:	2120      	movs	r1, #32
c0de08f2:	f006 ff6d 	bl	c0de77d0 <cx_mont_alloc>
c0de08f6:	b9e0      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de08f8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08fa:	a80a      	add	r0, sp, #40	@ 0x28
c0de08fc:	f006 ff72 	bl	c0de77e4 <cx_mont_init>
c0de0900:	b9b8      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de0902:	a80c      	add	r0, sp, #48	@ 0x30
c0de0904:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0906:	2105      	movs	r1, #5
c0de0908:	2205      	movs	r2, #5
c0de090a:	f002 fca9 	bl	c0de3260 <Poseidon_alloc_init>
c0de090e:	b980      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de0910:	6820      	ldr	r0, [r4, #0]
c0de0912:	7806      	ldrb	r6, [r0, #0]
c0de0914:	ac0c      	add	r4, sp, #48	@ 0x30
c0de0916:	ad48      	add	r5, sp, #288	@ 0x120
c0de0918:	b12e      	cbz	r6, c0de0926 <handler_cmd_Poseidon_ithRC+0x6a>
c0de091a:	4620      	mov	r0, r4
c0de091c:	4629      	mov	r1, r5
c0de091e:	f002 fc9b 	bl	c0de3258 <Poseidon_getNext_RC>
c0de0922:	3e01      	subs	r6, #1
c0de0924:	e7f8      	b.n	c0de0918 <handler_cmd_Poseidon_ithRC+0x5c>
c0de0926:	a848      	add	r0, sp, #288	@ 0x120
c0de0928:	f000 fe63 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de092c:	f006 fe88 	bl	c0de7640 <cx_bn_unlock>
c0de0930:	b118      	cbz	r0, c0de093a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0932:	f000 fe44 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0936:	b050      	add	sp, #320	@ 0x140
c0de0938:	bd70      	pop	{r4, r5, r6, pc}
c0de093a:	2000      	movs	r0, #0
c0de093c:	e7fb      	b.n	c0de0936 <handler_cmd_Poseidon_ithRC+0x7a>
c0de093e:	bf00      	nop
c0de0940:	00007986 	.word	0x00007986
c0de0944:	00007b38 	.word	0x00007b38

c0de0948 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0948:	b5b0      	push	{r4, r5, r7, lr}
c0de094a:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de094e:	6801      	ldr	r1, [r0, #0]
c0de0950:	2200      	movs	r2, #0
c0de0952:	23ff      	movs	r3, #255	@ 0xff
c0de0954:	780d      	ldrb	r5, [r1, #0]
c0de0956:	ac5a      	add	r4, sp, #360	@ 0x168
c0de0958:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de095c:	d002      	beq.n	c0de0964 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de095e:	54a3      	strb	r3, [r4, r2]
c0de0960:	3201      	adds	r2, #1
c0de0962:	e7f9      	b.n	c0de0958 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de0964:	6840      	ldr	r0, [r0, #4]
c0de0966:	3101      	adds	r1, #1
c0de0968:	aa1a      	add	r2, sp, #104	@ 0x68
c0de096a:	3801      	subs	r0, #1
c0de096c:	b128      	cbz	r0, c0de097a <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de096e:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de0972:	3801      	subs	r0, #1
c0de0974:	f802 3b01 	strb.w	r3, [r2], #1
c0de0978:	e7f8      	b.n	c0de096c <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de097a:	f000 fe1c 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de097e:	b9e8      	cbnz	r0, c0de09bc <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0980:	a804      	add	r0, sp, #16
c0de0982:	f000 fe39 	bl	c0de15f8 <OUTLINED_FUNCTION_9>
c0de0986:	b9c8      	cbnz	r0, c0de09bc <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0988:	a804      	add	r0, sp, #16
c0de098a:	a901      	add	r1, sp, #4
c0de098c:	f001 ff4d 	bl	c0de282a <tEdwards_alloc>
c0de0990:	b9a0      	cbnz	r0, c0de09bc <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0992:	a804      	add	r0, sp, #16
c0de0994:	a91a      	add	r1, sp, #104	@ 0x68
c0de0996:	aa01      	add	r2, sp, #4
c0de0998:	f001 fa7a 	bl	c0de1e90 <zkn_prv2pub>
c0de099c:	b970      	cbnz	r0, c0de09bc <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de099e:	a804      	add	r0, sp, #16
c0de09a0:	f104 0320 	add.w	r3, r4, #32
c0de09a4:	a901      	add	r1, sp, #4
c0de09a6:	f000 fe21 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de09aa:	b938      	cbnz	r0, c0de09bc <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09ac:	9804      	ldr	r0, [sp, #16]
c0de09ae:	0041      	lsls	r1, r0, #1
c0de09b0:	a85a      	add	r0, sp, #360	@ 0x168
c0de09b2:	f7ff fe83 	bl	c0de06bc <io_send_response_pointer>
c0de09b6:	f006 fe43 	bl	c0de7640 <cx_bn_unlock>
c0de09ba:	b120      	cbz	r0, c0de09c6 <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de09bc:	f000 fdff 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de09c0:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de09c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de09c6:	2000      	movs	r0, #0
c0de09c8:	e7fa      	b.n	c0de09c0 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de09ca <handler_cmd_tEddsaPoseidon_Sign>:
c0de09ca:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de09cc:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de09d0:	4606      	mov	r6, r0
c0de09d2:	6800      	ldr	r0, [r0, #0]
c0de09d4:	2100      	movs	r1, #0
c0de09d6:	22ff      	movs	r2, #255	@ 0xff
c0de09d8:	7805      	ldrb	r5, [r0, #0]
c0de09da:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de09dc:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de09e0:	d002      	beq.n	c0de09e8 <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de09e2:	5462      	strb	r2, [r4, r1]
c0de09e4:	3101      	adds	r1, #1
c0de09e6:	e7f9      	b.n	c0de09dc <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de09e8:	6871      	ldr	r1, [r6, #4]
c0de09ea:	3001      	adds	r0, #1
c0de09ec:	aa2b      	add	r2, sp, #172	@ 0xac
c0de09ee:	3901      	subs	r1, #1
c0de09f0:	b129      	cbz	r1, c0de09fe <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de09f2:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de09f6:	3901      	subs	r1, #1
c0de09f8:	f802 3b01 	strb.w	r3, [r2], #1
c0de09fc:	e7f8      	b.n	c0de09f0 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de09fe:	f000 fdda 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0a02:	bba0      	cbnz	r0, c0de0a6e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a04:	6830      	ldr	r0, [r6, #0]
c0de0a06:	aa0a      	add	r2, sp, #40	@ 0x28
c0de0a08:	2100      	movs	r1, #0
c0de0a0a:	ab02      	add	r3, sp, #8
c0de0a0c:	2920      	cmp	r1, #32
c0de0a0e:	d007      	beq.n	c0de0a20 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de0a10:	1846      	adds	r6, r0, r1
c0de0a12:	7877      	ldrb	r7, [r6, #1]
c0de0a14:	5457      	strb	r7, [r2, r1]
c0de0a16:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de0a1a:	545e      	strb	r6, [r3, r1]
c0de0a1c:	3101      	adds	r1, #1
c0de0a1e:	e7f5      	b.n	c0de0a0c <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0a20:	a815      	add	r0, sp, #84	@ 0x54
c0de0a22:	f000 fde9 	bl	c0de15f8 <OUTLINED_FUNCTION_9>
c0de0a26:	bb10      	cbnz	r0, c0de0a6e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a28:	a815      	add	r0, sp, #84	@ 0x54
c0de0a2a:	a912      	add	r1, sp, #72	@ 0x48
c0de0a2c:	f001 fefd 	bl	c0de282a <tEdwards_alloc>
c0de0a30:	b9e8      	cbnz	r0, c0de0a6e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a32:	a815      	add	r0, sp, #84	@ 0x54
c0de0a34:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a36:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a38:	f001 fa2a 	bl	c0de1e90 <zkn_prv2pub>
c0de0a3c:	b9b8      	cbnz	r0, c0de0a6e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a3e:	a815      	add	r0, sp, #84	@ 0x54
c0de0a40:	f104 0320 	add.w	r3, r4, #32
c0de0a44:	a912      	add	r1, sp, #72	@ 0x48
c0de0a46:	f000 fdd1 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de0a4a:	b980      	cbnz	r0, c0de0a6e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a4c:	2020      	movs	r0, #32
c0de0a4e:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a52:	a815      	add	r0, sp, #84	@ 0x54
c0de0a54:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a56:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a58:	ab02      	add	r3, sp, #8
c0de0a5a:	f001 fa41 	bl	c0de1ee0 <EddsaPoseidon_Sign_final>
c0de0a5e:	b930      	cbnz	r0, c0de0a6e <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a60:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a62:	2160      	movs	r1, #96	@ 0x60
c0de0a64:	f7ff fe2a 	bl	c0de06bc <io_send_response_pointer>
c0de0a68:	f006 fdea 	bl	c0de7640 <cx_bn_unlock>
c0de0a6c:	b120      	cbz	r0, c0de0a78 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a6e:	f000 fda6 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0a72:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0a76:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a78:	2000      	movs	r0, #0
c0de0a7a:	e7fa      	b.n	c0de0a72 <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0a7c <handler_cmd_tEddsaPoseidon>:
c0de0a7c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0a80:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0a82:	4605      	mov	r5, r0
c0de0a84:	6800      	ldr	r0, [r0, #0]
c0de0a86:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0a8a:	21ff      	movs	r1, #255	@ 0xff
c0de0a8c:	7806      	ldrb	r6, [r0, #0]
c0de0a8e:	2000      	movs	r0, #0
c0de0a90:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a94:	d002      	beq.n	c0de0a9c <handler_cmd_tEddsaPoseidon+0x20>
c0de0a96:	5421      	strb	r1, [r4, r0]
c0de0a98:	3001      	adds	r0, #1
c0de0a9a:	e7f9      	b.n	c0de0a90 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a9c:	f000 fd8b 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0aa0:	2800      	cmp	r0, #0
c0de0aa2:	d154      	bne.n	c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aa4:	af14      	add	r7, sp, #80	@ 0x50
c0de0aa6:	4631      	mov	r1, r6
c0de0aa8:	4638      	mov	r0, r7
c0de0aaa:	f002 f83d 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de0aae:	2800      	cmp	r0, #0
c0de0ab0:	d14d      	bne.n	c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ab2:	f107 060c 	add.w	r6, r7, #12
c0de0ab6:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aba:	4638      	mov	r0, r7
c0de0abc:	4631      	mov	r1, r6
c0de0abe:	f001 ffdd 	bl	c0de2a7c <tEdwards_IsOnCurve>
c0de0ac2:	2800      	cmp	r0, #0
c0de0ac4:	d143      	bne.n	c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ac6:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0aca:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0ace:	2901      	cmp	r1, #1
c0de0ad0:	d13d      	bne.n	c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad2:	4922      	ldr	r1, [pc, #136]	@ (c0de0b5c <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0ad4:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0ad8:	2220      	movs	r2, #32
c0de0ada:	4650      	mov	r0, sl
c0de0adc:	4479      	add	r1, pc
c0de0ade:	f007 f86d 	bl	c0de7bbc <__aeabi_memcpy>
c0de0ae2:	af01      	add	r7, sp, #4
c0de0ae4:	491e      	ldr	r1, [pc, #120]	@ (c0de0b60 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ae6:	2220      	movs	r2, #32
c0de0ae8:	4638      	mov	r0, r7
c0de0aea:	4479      	add	r1, pc
c0de0aec:	f007 f866 	bl	c0de7bbc <__aeabi_memcpy>
c0de0af0:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0af4:	a814      	add	r0, sp, #80	@ 0x50
c0de0af6:	4651      	mov	r1, sl
c0de0af8:	463a      	mov	r2, r7
c0de0afa:	4643      	mov	r3, r8
c0de0afc:	f002 fa05 	bl	c0de2f0a <tEdwards_alloc_init>
c0de0b00:	bb28      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b02:	a814      	add	r0, sp, #80	@ 0x50
c0de0b04:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b08:	4631      	mov	r1, r6
c0de0b0a:	f001 ffb7 	bl	c0de2a7c <tEdwards_IsOnCurve>
c0de0b0e:	b9f0      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b10:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0b14:	2801      	cmp	r0, #1
c0de0b16:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b1a:	d118      	bne.n	c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b1c:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0b20:	f8cd 8000 	str.w	r8, [sp]
c0de0b24:	1c42      	adds	r2, r0, #1
c0de0b26:	1e4b      	subs	r3, r1, #1
c0de0b28:	a814      	add	r0, sp, #80	@ 0x50
c0de0b2a:	4631      	mov	r1, r6
c0de0b2c:	f002 fa72 	bl	c0de3014 <tEdwards_scalarMul>
c0de0b30:	b968      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b32:	a814      	add	r0, sp, #80	@ 0x50
c0de0b34:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b38:	a911      	add	r1, sp, #68	@ 0x44
c0de0b3a:	f000 fd57 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de0b3e:	b930      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b40:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b44:	f000 fd4b 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de0b48:	f006 fd7a 	bl	c0de7640 <cx_bn_unlock>
c0de0b4c:	b120      	cbz	r0, c0de0b58 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b4e:	f000 fd36 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0b52:	b06b      	add	sp, #428	@ 0x1ac
c0de0b54:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b58:	2000      	movs	r0, #0
c0de0b5a:	e7fa      	b.n	c0de0b52 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b5c:	00007958 	.word	0x00007958
c0de0b60:	0000796a 	.word	0x0000796a

c0de0b64 <handler_cmd_tEdwards>:
c0de0b64:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b66:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0b68:	4605      	mov	r5, r0
c0de0b6a:	6840      	ldr	r0, [r0, #4]
c0de0b6c:	2841      	cmp	r0, #65	@ 0x41
c0de0b6e:	d801      	bhi.n	c0de0b74 <handler_cmd_tEdwards+0x10>
c0de0b70:	2802      	cmp	r0, #2
c0de0b72:	d202      	bcs.n	c0de0b7a <handler_cmd_tEdwards+0x16>
c0de0b74:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0b78:	e015      	b.n	c0de0ba6 <handler_cmd_tEdwards+0x42>
c0de0b7a:	6828      	ldr	r0, [r5, #0]
c0de0b7c:	21ff      	movs	r1, #255	@ 0xff
c0de0b7e:	7806      	ldrb	r6, [r0, #0]
c0de0b80:	2000      	movs	r0, #0
c0de0b82:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0b84:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0b88:	d002      	beq.n	c0de0b90 <handler_cmd_tEdwards+0x2c>
c0de0b8a:	5421      	strb	r1, [r4, r0]
c0de0b8c:	3001      	adds	r0, #1
c0de0b8e:	e7f9      	b.n	c0de0b84 <handler_cmd_tEdwards+0x20>
c0de0b90:	f000 fd11 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0b94:	b920      	cbnz	r0, c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0b96:	a819      	add	r0, sp, #100	@ 0x64
c0de0b98:	4631      	mov	r1, r6
c0de0b9a:	f001 ffc5 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de0b9e:	b120      	cbz	r0, c0de0baa <handler_cmd_tEdwards+0x46>
c0de0ba0:	b280      	uxth	r0, r0
c0de0ba2:	f7ff fd96 	bl	c0de06d2 <io_send_sw>
c0de0ba6:	b06f      	add	sp, #444	@ 0x1bc
c0de0ba8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0baa:	2e02      	cmp	r6, #2
c0de0bac:	d00c      	beq.n	c0de0bc8 <handler_cmd_tEdwards+0x64>
c0de0bae:	2e01      	cmp	r6, #1
c0de0bb0:	d128      	bne.n	c0de0c04 <handler_cmd_tEdwards+0xa0>
c0de0bb2:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bb4:	4942      	ldr	r1, [pc, #264]	@ (c0de0cc0 <handler_cmd_tEdwards+0x15c>)
c0de0bb6:	2220      	movs	r2, #32
c0de0bb8:	4630      	mov	r0, r6
c0de0bba:	4479      	add	r1, pc
c0de0bbc:	f006 fffe 	bl	c0de7bbc <__aeabi_memcpy>
c0de0bc0:	af03      	add	r7, sp, #12
c0de0bc2:	4940      	ldr	r1, [pc, #256]	@ (c0de0cc4 <handler_cmd_tEdwards+0x160>)
c0de0bc4:	4479      	add	r1, pc
c0de0bc6:	e009      	b.n	c0de0bdc <handler_cmd_tEdwards+0x78>
c0de0bc8:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bca:	493f      	ldr	r1, [pc, #252]	@ (c0de0cc8 <handler_cmd_tEdwards+0x164>)
c0de0bcc:	2220      	movs	r2, #32
c0de0bce:	4630      	mov	r0, r6
c0de0bd0:	4479      	add	r1, pc
c0de0bd2:	f006 fff3 	bl	c0de7bbc <__aeabi_memcpy>
c0de0bd6:	af03      	add	r7, sp, #12
c0de0bd8:	493c      	ldr	r1, [pc, #240]	@ (c0de0ccc <handler_cmd_tEdwards+0x168>)
c0de0bda:	4479      	add	r1, pc
c0de0bdc:	4638      	mov	r0, r7
c0de0bde:	2220      	movs	r2, #32
c0de0be0:	f006 ffec 	bl	c0de7bbc <__aeabi_memcpy>
c0de0be4:	a819      	add	r0, sp, #100	@ 0x64
c0de0be6:	ab16      	add	r3, sp, #88	@ 0x58
c0de0be8:	4631      	mov	r1, r6
c0de0bea:	463a      	mov	r2, r7
c0de0bec:	f002 f98d 	bl	c0de2f0a <tEdwards_alloc_init>
c0de0bf0:	2800      	cmp	r0, #0
c0de0bf2:	d1d5      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0bf4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bf8:	aa03      	add	r2, sp, #12
c0de0bfa:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bfc:	f002 f985 	bl	c0de2f0a <tEdwards_alloc_init>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d1cd      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c04:	2000      	movs	r0, #0
c0de0c06:	f10d 020b 	add.w	r2, sp, #11
c0de0c0a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c0e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c10:	a916      	add	r1, sp, #88	@ 0x58
c0de0c12:	f001 ff33 	bl	c0de2a7c <tEdwards_IsOnCurve>
c0de0c16:	2800      	cmp	r0, #0
c0de0c18:	d1c2      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c1a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1e:	2801      	cmp	r0, #1
c0de0c20:	d142      	bne.n	c0de0ca8 <handler_cmd_tEdwards+0x144>
c0de0c22:	a819      	add	r0, sp, #100	@ 0x64
c0de0c24:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c26:	f10d 020b 	add.w	r2, sp, #11
c0de0c2a:	4631      	mov	r1, r6
c0de0c2c:	f001 ff26 	bl	c0de2a7c <tEdwards_IsOnCurve>
c0de0c30:	2800      	cmp	r0, #0
c0de0c32:	d1b5      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c34:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c38:	2801      	cmp	r0, #1
c0de0c3a:	d138      	bne.n	c0de0cae <handler_cmd_tEdwards+0x14a>
c0de0c3c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c3e:	f10d 010b 	add.w	r1, sp, #11
c0de0c42:	f006 fdbb 	bl	c0de77bc <cx_bn_is_prime>
c0de0c46:	2800      	cmp	r0, #0
c0de0c48:	d1aa      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c4a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c4e:	2801      	cmp	r0, #1
c0de0c50:	d130      	bne.n	c0de0cb4 <handler_cmd_tEdwards+0x150>
c0de0c52:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c54:	f10d 010b 	add.w	r1, sp, #11
c0de0c58:	f006 fdb0 	bl	c0de77bc <cx_bn_is_prime>
c0de0c5c:	2800      	cmp	r0, #0
c0de0c5e:	d19f      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c60:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c64:	2801      	cmp	r0, #1
c0de0c66:	d128      	bne.n	c0de0cba <handler_cmd_tEdwards+0x156>
c0de0c68:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0c6c:	9600      	str	r6, [sp, #0]
c0de0c6e:	1c42      	adds	r2, r0, #1
c0de0c70:	1e4b      	subs	r3, r1, #1
c0de0c72:	a819      	add	r0, sp, #100	@ 0x64
c0de0c74:	a916      	add	r1, sp, #88	@ 0x58
c0de0c76:	f002 f9cd 	bl	c0de3014 <tEdwards_scalarMul>
c0de0c7a:	2800      	cmp	r0, #0
c0de0c7c:	d190      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c7e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c80:	f104 0320 	add.w	r3, r4, #32
c0de0c84:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c86:	f000 fcb1 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de0c8a:	2800      	cmp	r0, #0
c0de0c8c:	f47f af88 	bne.w	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c90:	f006 fcd6 	bl	c0de7640 <cx_bn_unlock>
c0de0c94:	2800      	cmp	r0, #0
c0de0c96:	f47f af83 	bne.w	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c9a:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c9c:	0041      	lsls	r1, r0, #1
c0de0c9e:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0ca0:	f7ff fd0c 	bl	c0de06bc <io_send_response_pointer>
c0de0ca4:	2000      	movs	r0, #0
c0de0ca6:	e77e      	b.n	c0de0ba6 <handler_cmd_tEdwards+0x42>
c0de0ca8:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0cac:	e779      	b.n	c0de0ba2 <handler_cmd_tEdwards+0x3e>
c0de0cae:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0cb2:	e776      	b.n	c0de0ba2 <handler_cmd_tEdwards+0x3e>
c0de0cb4:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0cb8:	e773      	b.n	c0de0ba2 <handler_cmd_tEdwards+0x3e>
c0de0cba:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0cbe:	e770      	b.n	c0de0ba2 <handler_cmd_tEdwards+0x3e>
c0de0cc0:	000076da 	.word	0x000076da
c0de0cc4:	00007750 	.word	0x00007750
c0de0cc8:	000076e4 	.word	0x000076e4
c0de0ccc:	0000765a 	.word	0x0000765a

c0de0cd0 <handler_cmd_Interpolate>:
c0de0cd0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0cd4:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0cd8:	4605      	mov	r5, r0
c0de0cda:	6800      	ldr	r0, [r0, #0]
c0de0cdc:	22ff      	movs	r2, #255	@ 0xff
c0de0cde:	7804      	ldrb	r4, [r0, #0]
c0de0ce0:	2000      	movs	r0, #0
c0de0ce2:	a944      	add	r1, sp, #272	@ 0x110
c0de0ce4:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0ce8:	d002      	beq.n	c0de0cf0 <handler_cmd_Interpolate+0x20>
c0de0cea:	540a      	strb	r2, [r1, r0]
c0de0cec:	3001      	adds	r0, #1
c0de0cee:	e7f9      	b.n	c0de0ce4 <handler_cmd_Interpolate+0x14>
c0de0cf0:	f000 fc61 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0cf4:	bb28      	cbnz	r0, c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0cf6:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0cfa:	4621      	mov	r1, r4
c0de0cfc:	4640      	mov	r0, r8
c0de0cfe:	f001 ff13 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de0d02:	b9f0      	cbnz	r0, c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d04:	a827      	add	r0, sp, #156	@ 0x9c
c0de0d06:	f000 fc60 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de0d0a:	b9d0      	cbnz	r0, c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d0c:	6828      	ldr	r0, [r5, #0]
c0de0d0e:	2100      	movs	r1, #0
c0de0d10:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d12:	3001      	adds	r0, #1
c0de0d14:	2960      	cmp	r1, #96	@ 0x60
c0de0d16:	d003      	beq.n	c0de0d20 <handler_cmd_Interpolate+0x50>
c0de0d18:	5c43      	ldrb	r3, [r0, r1]
c0de0d1a:	5453      	strb	r3, [r2, r1]
c0de0d1c:	3101      	adds	r1, #1
c0de0d1e:	e7f9      	b.n	c0de0d14 <handler_cmd_Interpolate+0x44>
c0de0d20:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d22:	2100      	movs	r1, #0
c0de0d24:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d26:	1d0c      	adds	r4, r1, #4
c0de0d28:	2c10      	cmp	r4, #16
c0de0d2a:	d010      	beq.n	c0de0d4e <handler_cmd_Interpolate+0x7e>
c0de0d2c:	1878      	adds	r0, r7, r1
c0de0d2e:	2120      	movs	r1, #32
c0de0d30:	2320      	movs	r3, #32
c0de0d32:	f102 0520 	add.w	r5, r2, #32
c0de0d36:	f006 fc95 	bl	c0de7664 <cx_bn_alloc_init>
c0de0d3a:	2800      	cmp	r0, #0
c0de0d3c:	462a      	mov	r2, r5
c0de0d3e:	4621      	mov	r1, r4
c0de0d40:	d0f1      	beq.n	c0de0d26 <handler_cmd_Interpolate+0x56>
c0de0d42:	f000 fc3c 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0d46:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d4a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d4e:	f108 000c 	add.w	r0, r8, #12
c0de0d52:	f04f 0a00 	mov.w	sl, #0
c0de0d56:	2601      	movs	r6, #1
c0de0d58:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d5c:	9001      	str	r0, [sp, #4]
c0de0d5e:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d60:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d64:	d03b      	beq.n	c0de0dde <handler_cmd_Interpolate+0x10e>
c0de0d66:	a828      	add	r0, sp, #160	@ 0xa0
c0de0d68:	2120      	movs	r1, #32
c0de0d6a:	eb00 040a 	add.w	r4, r0, sl
c0de0d6e:	4620      	mov	r0, r4
c0de0d70:	f006 fc6e 	bl	c0de7650 <cx_bn_alloc>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1e4      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d78:	6820      	ldr	r0, [r4, #0]
c0de0d7a:	4631      	mov	r1, r6
c0de0d7c:	f006 fca8 	bl	c0de76d0 <cx_bn_set_u32>
c0de0d80:	2800      	cmp	r0, #0
c0de0d82:	d1de      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d84:	4640      	mov	r0, r8
c0de0d86:	4659      	mov	r1, fp
c0de0d88:	f001 fd4f 	bl	c0de282a <tEdwards_alloc>
c0de0d8c:	2800      	cmp	r0, #0
c0de0d8e:	d1d8      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d90:	9602      	str	r6, [sp, #8]
c0de0d92:	eb07 060a 	add.w	r6, r7, sl
c0de0d96:	9901      	ldr	r1, [sp, #4]
c0de0d98:	4640      	mov	r0, r8
c0de0d9a:	465b      	mov	r3, fp
c0de0d9c:	4632      	mov	r2, r6
c0de0d9e:	f002 f8d3 	bl	c0de2f48 <tEdwards_scalarMul_bn>
c0de0da2:	2800      	cmp	r0, #0
c0de0da4:	d1cd      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0da6:	6820      	ldr	r0, [r4, #0]
c0de0da8:	4629      	mov	r1, r5
c0de0daa:	f000 fc0b 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de0dae:	2800      	cmp	r0, #0
c0de0db0:	d1c7      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0db2:	6830      	ldr	r0, [r6, #0]
c0de0db4:	f105 0120 	add.w	r1, r5, #32
c0de0db8:	f000 fc04 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de0dbc:	2800      	cmp	r0, #0
c0de0dbe:	d1c0      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0dc0:	4640      	mov	r0, r8
c0de0dc2:	4659      	mov	r1, fp
c0de0dc4:	f002 f861 	bl	c0de2e8a <tEdwards_normalize>
c0de0dc8:	9e02      	ldr	r6, [sp, #8]
c0de0dca:	3540      	adds	r5, #64	@ 0x40
c0de0dcc:	f10b 0b0c 	add.w	fp, fp, #12
c0de0dd0:	f10a 0a04 	add.w	sl, sl, #4
c0de0dd4:	af2b      	add	r7, sp, #172	@ 0xac
c0de0dd6:	3601      	adds	r6, #1
c0de0dd8:	2800      	cmp	r0, #0
c0de0dda:	d0c1      	beq.n	c0de0d60 <handler_cmd_Interpolate+0x90>
c0de0ddc:	e7b1      	b.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0dde:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0de0:	2303      	movs	r3, #3
c0de0de2:	9000      	str	r0, [sp, #0]
c0de0de4:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0de6:	a928      	add	r1, sp, #160	@ 0xa0
c0de0de8:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0dea:	f001 fa41 	bl	c0de2270 <zkn_frost_interpolate_secrets>
c0de0dee:	2800      	cmp	r0, #0
c0de0df0:	d1a7      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0df2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0df4:	a944      	add	r1, sp, #272	@ 0x110
c0de0df6:	2220      	movs	r2, #32
c0de0df8:	31c0      	adds	r1, #192	@ 0xc0
c0de0dfa:	f006 fc73 	bl	c0de76e4 <cx_bn_export>
c0de0dfe:	2800      	cmp	r0, #0
c0de0e00:	d19f      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e02:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e04:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0e06:	ab03      	add	r3, sp, #12
c0de0e08:	9901      	ldr	r1, [sp, #4]
c0de0e0a:	f002 f89d 	bl	c0de2f48 <tEdwards_scalarMul_bn>
c0de0e0e:	2800      	cmp	r0, #0
c0de0e10:	d197      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e12:	a844      	add	r0, sp, #272	@ 0x110
c0de0e14:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e18:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e1a:	a903      	add	r1, sp, #12
c0de0e1c:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e1e:	f002 f80e 	bl	c0de2e3e <tEdwards_export>
c0de0e22:	2800      	cmp	r0, #0
c0de0e24:	d18d      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e26:	a844      	add	r0, sp, #272	@ 0x110
c0de0e28:	f000 fbd9 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de0e2c:	f006 fc08 	bl	c0de7640 <cx_bn_unlock>
c0de0e30:	2800      	cmp	r0, #0
c0de0e32:	f47f af86 	bne.w	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e36:	2000      	movs	r0, #0
c0de0e38:	e785      	b.n	c0de0d46 <handler_cmd_Interpolate+0x76>

c0de0e3a <handler_cmd_Split>:
c0de0e3a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e3e:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0e42:	4604      	mov	r4, r0
c0de0e44:	6800      	ldr	r0, [r0, #0]
c0de0e46:	22ff      	movs	r2, #255	@ 0xff
c0de0e48:	7805      	ldrb	r5, [r0, #0]
c0de0e4a:	2000      	movs	r0, #0
c0de0e4c:	a948      	add	r1, sp, #288	@ 0x120
c0de0e4e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0e52:	d002      	beq.n	c0de0e5a <handler_cmd_Split+0x20>
c0de0e54:	540a      	strb	r2, [r1, r0]
c0de0e56:	3001      	adds	r0, #1
c0de0e58:	e7f9      	b.n	c0de0e4e <handler_cmd_Split+0x14>
c0de0e5a:	f000 fbac 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0e5e:	bb90      	cbnz	r0, c0de0ec6 <handler_cmd_Split+0x8c>
c0de0e60:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e62:	f000 fbc9 	bl	c0de15f8 <OUTLINED_FUNCTION_9>
c0de0e66:	bb70      	cbnz	r0, c0de0ec6 <handler_cmd_Split+0x8c>
c0de0e68:	6820      	ldr	r0, [r4, #0]
c0de0e6a:	2200      	movs	r2, #0
c0de0e6c:	a91a      	add	r1, sp, #104	@ 0x68
c0de0e6e:	3002      	adds	r0, #2
c0de0e70:	2a20      	cmp	r2, #32
c0de0e72:	d003      	beq.n	c0de0e7c <handler_cmd_Split+0x42>
c0de0e74:	5c83      	ldrb	r3, [r0, r2]
c0de0e76:	548b      	strb	r3, [r1, r2]
c0de0e78:	3201      	adds	r2, #1
c0de0e7a:	e7f9      	b.n	c0de0e70 <handler_cmd_Split+0x36>
c0de0e7c:	6862      	ldr	r2, [r4, #4]
c0de0e7e:	3a02      	subs	r2, #2
c0de0e80:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0e84:	f101 0220 	add.w	r2, r1, #32
c0de0e88:	a888      	add	r0, sp, #544	@ 0x220
c0de0e8a:	2101      	movs	r1, #1
c0de0e8c:	f006 f941 	bl	c0de7112 <cx_blake2b_512_hash_iovec>
c0de0e90:	b9c8      	cbnz	r0, c0de0ec6 <handler_cmd_Split+0x8c>
c0de0e92:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0e94:	2100      	movs	r1, #0
c0de0e96:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0e98:	1d0d      	adds	r5, r1, #4
c0de0e9a:	2d10      	cmp	r5, #16
c0de0e9c:	d00b      	beq.n	c0de0eb6 <handler_cmd_Split+0x7c>
c0de0e9e:	1860      	adds	r0, r4, r1
c0de0ea0:	2120      	movs	r1, #32
c0de0ea2:	2320      	movs	r3, #32
c0de0ea4:	f102 0620 	add.w	r6, r2, #32
c0de0ea8:	f006 fbdc 	bl	c0de7664 <cx_bn_alloc_init>
c0de0eac:	2800      	cmp	r0, #0
c0de0eae:	4632      	mov	r2, r6
c0de0eb0:	4629      	mov	r1, r5
c0de0eb2:	d0f1      	beq.n	c0de0e98 <handler_cmd_Split+0x5e>
c0de0eb4:	e007      	b.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0eb6:	a80a      	add	r0, sp, #40	@ 0x28
c0de0eb8:	f000 fb87 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de0ebc:	b918      	cbnz	r0, c0de0ec6 <handler_cmd_Split+0x8c>
c0de0ebe:	a809      	add	r0, sp, #36	@ 0x24
c0de0ec0:	f000 fb83 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de0ec4:	b128      	cbz	r0, c0de0ed2 <handler_cmd_Split+0x98>
c0de0ec6:	f000 fb7a 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0eca:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0ece:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0ed2:	f04f 0800 	mov.w	r8, #0
c0de0ed6:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0eda:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0edc:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0ee0:	2400      	movs	r4, #0
c0de0ee2:	f1b8 0f10 	cmp.w	r8, #16
c0de0ee6:	d04d      	beq.n	c0de0f84 <handler_cmd_Split+0x14a>
c0de0ee8:	a805      	add	r0, sp, #20
c0de0eea:	2120      	movs	r1, #32
c0de0eec:	eb00 0708 	add.w	r7, r0, r8
c0de0ef0:	4638      	mov	r0, r7
c0de0ef2:	f006 fbad 	bl	c0de7650 <cx_bn_alloc>
c0de0ef6:	2800      	cmp	r0, #0
c0de0ef8:	d1e5      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0efa:	a801      	add	r0, sp, #4
c0de0efc:	2120      	movs	r1, #32
c0de0efe:	eb00 0508 	add.w	r5, r0, r8
c0de0f02:	4628      	mov	r0, r5
c0de0f04:	f006 fba4 	bl	c0de7650 <cx_bn_alloc>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1dc      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f0c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f0e:	4621      	mov	r1, r4
c0de0f10:	f006 fbde 	bl	c0de76d0 <cx_bn_set_u32>
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d1d6      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f18:	6828      	ldr	r0, [r5, #0]
c0de0f1a:	4621      	mov	r1, r4
c0de0f1c:	f006 fbd8 	bl	c0de76d0 <cx_bn_set_u32>
c0de0f20:	2800      	cmp	r0, #0
c0de0f22:	d1d0      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f24:	4650      	mov	r0, sl
c0de0f26:	4631      	mov	r1, r6
c0de0f28:	f001 fc7f 	bl	c0de282a <tEdwards_alloc>
c0de0f2c:	2800      	cmp	r0, #0
c0de0f2e:	d1ca      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f30:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f34:	2202      	movs	r2, #2
c0de0f36:	9000      	str	r0, [sp, #0]
c0de0f38:	4650      	mov	r0, sl
c0de0f3a:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f3c:	f001 f9db 	bl	c0de22f6 <zkn_evalshare>
c0de0f40:	2800      	cmp	r0, #0
c0de0f42:	d1c0      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f44:	6838      	ldr	r0, [r7, #0]
c0de0f46:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f48:	f006 fbb8 	bl	c0de76bc <cx_bn_copy>
c0de0f4c:	2800      	cmp	r0, #0
c0de0f4e:	d1ba      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f50:	4650      	mov	r0, sl
c0de0f52:	4631      	mov	r1, r6
c0de0f54:	f001 ff99 	bl	c0de2e8a <tEdwards_normalize>
c0de0f58:	2800      	cmp	r0, #0
c0de0f5a:	d1b4      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f5c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f5e:	4659      	mov	r1, fp
c0de0f60:	f000 fb30 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de0f64:	2800      	cmp	r0, #0
c0de0f66:	d1ae      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f68:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f6a:	f10b 0120 	add.w	r1, fp, #32
c0de0f6e:	f000 fb29 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de0f72:	360c      	adds	r6, #12
c0de0f74:	3401      	adds	r4, #1
c0de0f76:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0f7a:	f108 0804 	add.w	r8, r8, #4
c0de0f7e:	2800      	cmp	r0, #0
c0de0f80:	d0af      	beq.n	c0de0ee2 <handler_cmd_Split+0xa8>
c0de0f82:	e7a0      	b.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f84:	2100      	movs	r1, #0
c0de0f86:	1d0c      	adds	r4, r1, #4
c0de0f88:	2c10      	cmp	r4, #16
c0de0f8a:	d007      	beq.n	c0de0f9c <handler_cmd_Split+0x162>
c0de0f8c:	a817      	add	r0, sp, #92	@ 0x5c
c0de0f8e:	4408      	add	r0, r1
c0de0f90:	f006 fb74 	bl	c0de767c <cx_bn_destroy>
c0de0f94:	2800      	cmp	r0, #0
c0de0f96:	4621      	mov	r1, r4
c0de0f98:	d0f5      	beq.n	c0de0f86 <handler_cmd_Split+0x14c>
c0de0f9a:	e794      	b.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f9c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f9e:	2303      	movs	r3, #3
c0de0fa0:	9000      	str	r0, [sp, #0]
c0de0fa2:	a801      	add	r0, sp, #4
c0de0fa4:	1d01      	adds	r1, r0, #4
c0de0fa6:	a805      	add	r0, sp, #20
c0de0fa8:	1d02      	adds	r2, r0, #4
c0de0faa:	a832      	add	r0, sp, #200	@ 0xc8
c0de0fac:	f001 f960 	bl	c0de2270 <zkn_frost_interpolate_secrets>
c0de0fb0:	2800      	cmp	r0, #0
c0de0fb2:	f47f af88 	bne.w	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0fb6:	a848      	add	r0, sp, #288	@ 0x120
c0de0fb8:	f000 fb11 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de0fbc:	f006 fb40 	bl	c0de7640 <cx_bn_unlock>
c0de0fc0:	2800      	cmp	r0, #0
c0de0fc2:	f47f af80 	bne.w	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0fc6:	2000      	movs	r0, #0
c0de0fc8:	e77f      	b.n	c0de0eca <handler_cmd_Split+0x90>

c0de0fca <handler_cmd_frostH>:
c0de0fca:	b5b0      	push	{r4, r5, r7, lr}
c0de0fcc:	b0d8      	sub	sp, #352	@ 0x160
c0de0fce:	4604      	mov	r4, r0
c0de0fd0:	f000 faf1 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de0fd4:	2800      	cmp	r0, #0
c0de0fd6:	d142      	bne.n	c0de105e <handler_cmd_frostH+0x94>
c0de0fd8:	6820      	ldr	r0, [r4, #0]
c0de0fda:	7801      	ldrb	r1, [r0, #0]
c0de0fdc:	a802      	add	r0, sp, #8
c0de0fde:	f001 fda3 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de0fe2:	bbe0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de0fe4:	a801      	add	r0, sp, #4
c0de0fe6:	f000 faf0 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de0fea:	bbc0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de0fec:	f000 faf0 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de0ff0:	f002 fab8 	bl	c0de3564 <Babyfrost_H1>
c0de0ff4:	bb98      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de0ff6:	9801      	ldr	r0, [sp, #4]
c0de0ff8:	ad18      	add	r5, sp, #96	@ 0x60
c0de0ffa:	2220      	movs	r2, #32
c0de0ffc:	4629      	mov	r1, r5
c0de0ffe:	f006 fb71 	bl	c0de76e4 <cx_bn_export>
c0de1002:	bb60      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1004:	f000 fae4 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de1008:	f002 faba 	bl	c0de3580 <Babyfrost_H3>
c0de100c:	bb38      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de100e:	9801      	ldr	r0, [sp, #4]
c0de1010:	f105 0120 	add.w	r1, r5, #32
c0de1014:	f000 fad6 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1018:	bb08      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de101a:	f000 fad9 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de101e:	f002 fac3 	bl	c0de35a8 <Babyfrost_H4>
c0de1022:	b9e0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1024:	9801      	ldr	r0, [sp, #4]
c0de1026:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de102a:	f000 facb 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de102e:	b9b0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1030:	f000 face 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de1034:	f002 fac6 	bl	c0de35c4 <Babyfrost_H5>
c0de1038:	b988      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de103a:	9801      	ldr	r0, [sp, #4]
c0de103c:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1040:	f000 fac0 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1044:	b958      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1046:	9804      	ldr	r0, [sp, #16]
c0de1048:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de104c:	f000 faba 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1050:	b928      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1052:	a818      	add	r0, sp, #96	@ 0x60
c0de1054:	f000 fac3 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de1058:	f006 faf2 	bl	c0de7640 <cx_bn_unlock>
c0de105c:	b118      	cbz	r0, c0de1066 <handler_cmd_frostH+0x9c>
c0de105e:	f000 faae 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1062:	b058      	add	sp, #352	@ 0x160
c0de1064:	bdb0      	pop	{r4, r5, r7, pc}
c0de1066:	2000      	movs	r0, #0
c0de1068:	e7fb      	b.n	c0de1062 <handler_cmd_frostH+0x98>
	...

c0de106c <handler_cmd_encodeCommitment>:
c0de106c:	b510      	push	{r4, lr}
c0de106e:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de1072:	4604      	mov	r4, r0
c0de1074:	f000 fa9f 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de1078:	bb10      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de107a:	6820      	ldr	r0, [r4, #0]
c0de107c:	7801      	ldrb	r1, [r0, #0]
c0de107e:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1080:	f001 fd52 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de1084:	b9e0      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de1086:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1088:	f000 fa9f 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de108c:	b9c0      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de108e:	ac01      	add	r4, sp, #4
c0de1090:	4910      	ldr	r1, [pc, #64]	@ (c0de10d4 <handler_cmd_encodeCommitment+0x68>)
c0de1092:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1096:	4620      	mov	r0, r4
c0de1098:	4479      	add	r1, pc
c0de109a:	f006 fd8f 	bl	c0de7bbc <__aeabi_memcpy>
c0de109e:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de10a0:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10a2:	4621      	mov	r1, r4
c0de10a4:	2203      	movs	r2, #3
c0de10a6:	f001 f988 	bl	c0de23ba <zkn_encode_group_commitmentHash>
c0de10aa:	b948      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de10ac:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de10ae:	a990      	add	r1, sp, #576	@ 0x240
c0de10b0:	2220      	movs	r2, #32
c0de10b2:	3120      	adds	r1, #32
c0de10b4:	f006 fb16 	bl	c0de76e4 <cx_bn_export>
c0de10b8:	b910      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de10ba:	f006 fac1 	bl	c0de7640 <cx_bn_unlock>
c0de10be:	b120      	cbz	r0, c0de10ca <handler_cmd_encodeCommitment+0x5e>
c0de10c0:	f000 fa7d 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de10c4:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de10c8:	bd10      	pop	{r4, pc}
c0de10ca:	a890      	add	r0, sp, #576	@ 0x240
c0de10cc:	f000 fa91 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de10d0:	2000      	movs	r0, #0
c0de10d2:	e7f7      	b.n	c0de10c4 <handler_cmd_encodeCommitment+0x58>
c0de10d4:	0000747c 	.word	0x0000747c

c0de10d8 <handler_cmd_GroupCommitment>:
c0de10d8:	b570      	push	{r4, r5, r6, lr}
c0de10da:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10de:	4604      	mov	r4, r0
c0de10e0:	f000 fa69 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de10e4:	bb68      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de10e6:	6820      	ldr	r0, [r4, #0]
c0de10e8:	7801      	ldrb	r1, [r0, #0]
c0de10ea:	a894      	add	r0, sp, #592	@ 0x250
c0de10ec:	f001 fd1c 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de10f0:	bb38      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de10f2:	a894      	add	r0, sp, #592	@ 0x250
c0de10f4:	ac91      	add	r4, sp, #580	@ 0x244
c0de10f6:	4621      	mov	r1, r4
c0de10f8:	f001 fb97 	bl	c0de282a <tEdwards_alloc>
c0de10fc:	bb08      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de10fe:	ad19      	add	r5, sp, #100	@ 0x64
c0de1100:	4915      	ldr	r1, [pc, #84]	@ (c0de1158 <handler_cmd_GroupCommitment+0x80>)
c0de1102:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1106:	4628      	mov	r0, r5
c0de1108:	4479      	add	r1, pc
c0de110a:	f006 fd57 	bl	c0de7bbc <__aeabi_memcpy>
c0de110e:	ae01      	add	r6, sp, #4
c0de1110:	4912      	ldr	r1, [pc, #72]	@ (c0de115c <handler_cmd_GroupCommitment+0x84>)
c0de1112:	2260      	movs	r2, #96	@ 0x60
c0de1114:	4630      	mov	r0, r6
c0de1116:	4479      	add	r1, pc
c0de1118:	f006 fd50 	bl	c0de7bbc <__aeabi_memcpy>
c0de111c:	9400      	str	r4, [sp, #0]
c0de111e:	a894      	add	r0, sp, #592	@ 0x250
c0de1120:	4629      	mov	r1, r5
c0de1122:	4632      	mov	r2, r6
c0de1124:	2303      	movs	r3, #3
c0de1126:	f001 f9c5 	bl	c0de24b4 <zkn_compute_group_commitment>
c0de112a:	b950      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de112c:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de112e:	a894      	add	r0, sp, #592	@ 0x250
c0de1130:	a991      	add	r1, sp, #580	@ 0x244
c0de1132:	f102 0320 	add.w	r3, r2, #32
c0de1136:	f001 fe82 	bl	c0de2e3e <tEdwards_export>
c0de113a:	b910      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de113c:	f006 fa80 	bl	c0de7640 <cx_bn_unlock>
c0de1140:	b120      	cbz	r0, c0de114c <handler_cmd_GroupCommitment+0x74>
c0de1142:	f000 fa3c 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1146:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de114a:	bd70      	pop	{r4, r5, r6, pc}
c0de114c:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de114e:	2140      	movs	r1, #64	@ 0x40
c0de1150:	f7ff fab4 	bl	c0de06bc <io_send_response_pointer>
c0de1154:	2000      	movs	r0, #0
c0de1156:	e7f6      	b.n	c0de1146 <handler_cmd_GroupCommitment+0x6e>
c0de1158:	000075ec 	.word	0x000075ec
c0de115c:	000077be 	.word	0x000077be

c0de1160 <handler_cmd_BindingFactors>:
c0de1160:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1164:	f2ad 4d1c 	subw	sp, sp, #1052	@ 0x41c
c0de1168:	4604      	mov	r4, r0
c0de116a:	f000 fa24 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de116e:	2800      	cmp	r0, #0
c0de1170:	f040 809d 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1174:	6820      	ldr	r0, [r4, #0]
c0de1176:	7801      	ldrb	r1, [r0, #0]
c0de1178:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de117a:	f001 fcd5 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de117e:	2800      	cmp	r0, #0
c0de1180:	f040 8095 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1184:	a8b0      	add	r0, sp, #704	@ 0x2c0
c0de1186:	f000 fa20 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de118a:	2800      	cmp	r0, #0
c0de118c:	f040 808f 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1190:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1192:	adad      	add	r5, sp, #692	@ 0x2b4
c0de1194:	4629      	mov	r1, r5
c0de1196:	f001 fb48 	bl	c0de282a <tEdwards_alloc>
c0de119a:	2800      	cmp	r0, #0
c0de119c:	f040 8087 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de11a0:	ac35      	add	r4, sp, #212	@ 0xd4
c0de11a2:	4947      	ldr	r1, [pc, #284]	@ (c0de12c0 <handler_cmd_BindingFactors+0x160>)
c0de11a4:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de11a8:	4620      	mov	r0, r4
c0de11aa:	4479      	add	r1, pc
c0de11ac:	f006 fd06 	bl	c0de7bbc <__aeabi_memcpy>
c0de11b0:	9bb0      	ldr	r3, [sp, #704]	@ 0x2c0
c0de11b2:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de11b4:	4621      	mov	r1, r4
c0de11b6:	2203      	movs	r2, #3
c0de11b8:	f001 f8ff 	bl	c0de23ba <zkn_encode_group_commitmentHash>
c0de11bc:	2800      	cmp	r0, #0
c0de11be:	d176      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de11c0:	f50d 7847 	add.w	r8, sp, #796	@ 0x31c
c0de11c4:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de11c6:	2220      	movs	r2, #32
c0de11c8:	2620      	movs	r6, #32
c0de11ca:	4641      	mov	r1, r8
c0de11cc:	f006 fa8a 	bl	c0de76e4 <cx_bn_export>
c0de11d0:	2800      	cmp	r0, #0
c0de11d2:	d16c      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de11d4:	493b      	ldr	r1, [pc, #236]	@ (c0de12c4 <handler_cmd_BindingFactors+0x164>)
c0de11d6:	f10d 0ab4 	add.w	sl, sp, #180	@ 0xb4
c0de11da:	2220      	movs	r2, #32
c0de11dc:	4650      	mov	r0, sl
c0de11de:	4479      	add	r1, pc
c0de11e0:	f006 fcec 	bl	c0de7bbc <__aeabi_memcpy>
c0de11e4:	a825      	add	r0, sp, #148	@ 0x94
c0de11e6:	4938      	ldr	r1, [pc, #224]	@ (c0de12c8 <handler_cmd_BindingFactors+0x168>)
c0de11e8:	2220      	movs	r2, #32
c0de11ea:	4479      	add	r1, pc
c0de11ec:	f006 fce6 	bl	c0de7bbc <__aeabi_memcpy>
c0de11f0:	ac1d      	add	r4, sp, #116	@ 0x74
c0de11f2:	4936      	ldr	r1, [pc, #216]	@ (c0de12cc <handler_cmd_BindingFactors+0x16c>)
c0de11f4:	2220      	movs	r2, #32
c0de11f6:	4620      	mov	r0, r4
c0de11f8:	4479      	add	r1, pc
c0de11fa:	f006 fcdf 	bl	c0de7bbc <__aeabi_memcpy>
c0de11fe:	f108 0720 	add.w	r7, r8, #32
c0de1202:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de1206:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1208:	aa35      	add	r2, sp, #212	@ 0xd4
c0de120a:	4651      	mov	r1, sl
c0de120c:	2303      	movs	r3, #3
c0de120e:	f001 f9c2 	bl	c0de2596 <zkn_compute_binding_factors>
c0de1212:	2800      	cmp	r0, #0
c0de1214:	d14b      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1216:	9500      	str	r5, [sp, #0]
c0de1218:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de121a:	a935      	add	r1, sp, #212	@ 0xd4
c0de121c:	463a      	mov	r2, r7
c0de121e:	2303      	movs	r3, #3
c0de1220:	f001 f948 	bl	c0de24b4 <zkn_compute_group_commitment>
c0de1224:	2800      	cmp	r0, #0
c0de1226:	d142      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1228:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de122a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de122e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1232:	a9ad      	add	r1, sp, #692	@ 0x2b4
c0de1234:	f001 fe03 	bl	c0de2e3e <tEdwards_export>
c0de1238:	bbc8      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de123a:	ac0d      	add	r4, sp, #52	@ 0x34
c0de123c:	4924      	ldr	r1, [pc, #144]	@ (c0de12d0 <handler_cmd_BindingFactors+0x170>)
c0de123e:	2240      	movs	r2, #64	@ 0x40
c0de1240:	4620      	mov	r0, r4
c0de1242:	4479      	add	r1, pc
c0de1244:	f006 fcba 	bl	c0de7bbc <__aeabi_memcpy>
c0de1248:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de124a:	2120      	movs	r1, #32
c0de124c:	4622      	mov	r2, r4
c0de124e:	e9cd 1000 	strd	r1, r0, [sp]
c0de1252:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1254:	a9ad      	add	r1, sp, #692	@ 0x2b4
c0de1256:	ab25      	add	r3, sp, #148	@ 0x94
c0de1258:	f001 fa28 	bl	c0de26ac <compute_challenge>
c0de125c:	bb38      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de125e:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de1260:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de1264:	f000 f9ae 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1268:	bb08      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de126a:	a803      	add	r0, sp, #12
c0de126c:	4919      	ldr	r1, [pc, #100]	@ (c0de12d4 <handler_cmd_BindingFactors+0x174>)
c0de126e:	2220      	movs	r2, #32
c0de1270:	4479      	add	r1, pc
c0de1272:	f006 fca3 	bl	c0de7bbc <__aeabi_memcpy>
c0de1276:	a80c      	add	r0, sp, #48	@ 0x30
c0de1278:	f000 f9a7 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de127c:	b9b8      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de127e:	a80b      	add	r0, sp, #44	@ 0x2c
c0de1280:	aa03      	add	r2, sp, #12
c0de1282:	2120      	movs	r1, #32
c0de1284:	f000 f9af 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de1288:	b988      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de128a:	99b0      	ldr	r1, [sp, #704]	@ 0x2c0
c0de128c:	e9dd 200b 	ldrd	r2, r0, [sp, #44]	@ 0x2c
c0de1290:	f006 fa7c 	bl	c0de778c <cx_bn_reduce>
c0de1294:	b958      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1296:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de1298:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de129c:	f000 f992 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de12a0:	b928      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de12a2:	a8c7      	add	r0, sp, #796	@ 0x31c
c0de12a4:	f000 f99b 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de12a8:	f006 f9ca 	bl	c0de7640 <cx_bn_unlock>
c0de12ac:	b128      	cbz	r0, c0de12ba <handler_cmd_BindingFactors+0x15a>
c0de12ae:	f000 f986 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de12b2:	f20d 4d1c 	addw	sp, sp, #1052	@ 0x41c
c0de12b6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de12ba:	2000      	movs	r0, #0
c0de12bc:	e7f9      	b.n	c0de12b2 <handler_cmd_BindingFactors+0x152>
c0de12be:	bf00      	nop
c0de12c0:	0000778a 	.word	0x0000778a
c0de12c4:	00007156 	.word	0x00007156
c0de12c8:	0000700a 	.word	0x0000700a
c0de12cc:	0000715c 	.word	0x0000715c
c0de12d0:	000078d2 	.word	0x000078d2
c0de12d4:	00007084 	.word	0x00007084

c0de12d8 <handler_get_insecure_secret>:
c0de12d8:	b570      	push	{r4, r5, r6, lr}
c0de12da:	b0f0      	sub	sp, #448	@ 0x1c0
c0de12dc:	4e2c      	ldr	r6, [pc, #176]	@ (c0de1390 <handler_get_insecure_secret+0xb8>)
c0de12de:	4604      	mov	r4, r0
c0de12e0:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de12e4:	eb09 0506 	add.w	r5, r9, r6
c0de12e8:	4628      	mov	r0, r5
c0de12ea:	f006 fc7f 	bl	c0de7bec <explicit_bzero>
c0de12ee:	2000      	movs	r0, #0
c0de12f0:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de12f4:	f809 0006 	strb.w	r0, [r9, r6]
c0de12f8:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de12fc:	4620      	mov	r0, r4
c0de12fe:	f005 fa19 	bl	c0de6734 <buffer_read_u8>
c0de1302:	b3c0      	cbz	r0, c0de1376 <handler_get_insecure_secret+0x9e>
c0de1304:	eb09 0006 	add.w	r0, r9, r6
c0de1308:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de130c:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de1310:	4620      	mov	r0, r4
c0de1312:	f005 fa62 	bl	c0de67da <buffer_read_bip32_path>
c0de1316:	b370      	cbz	r0, c0de1376 <handler_get_insecure_secret+0x9e>
c0de1318:	eb09 0006 	add.w	r0, r9, r6
c0de131c:	2100      	movs	r1, #0
c0de131e:	2205      	movs	r2, #5
c0de1320:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1324:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de1328:	9104      	str	r1, [sp, #16]
c0de132a:	f100 0449 	add.w	r4, r0, #73	@ 0x49
c0de132e:	f100 0508 	add.w	r5, r0, #8
c0de1332:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1336:	2000      	movs	r0, #0
c0de1338:	2121      	movs	r1, #33	@ 0x21
c0de133a:	e9cd 5400 	strd	r5, r4, [sp]
c0de133e:	f005 fb0d 	bl	c0de695c <bip32_derive_with_seed_get_pubkey_256>
c0de1342:	a806      	add	r0, sp, #24
c0de1344:	2106      	movs	r1, #6
c0de1346:	2220      	movs	r2, #32
c0de1348:	f005 ff0d 	bl	c0de7166 <cx_hash_init_ex>
c0de134c:	b978      	cbnz	r0, c0de136e <handler_get_insecure_secret+0x96>
c0de134e:	eb09 0006 	add.w	r0, r9, r6
c0de1352:	2241      	movs	r2, #65	@ 0x41
c0de1354:	f100 0108 	add.w	r1, r0, #8
c0de1358:	a806      	add	r0, sp, #24
c0de135a:	f005 ff09 	bl	c0de7170 <cx_hash_update>
c0de135e:	b930      	cbnz	r0, c0de136e <handler_get_insecure_secret+0x96>
c0de1360:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1394 <handler_get_insecure_secret+0xbc>)
c0de1362:	a806      	add	r0, sp, #24
c0de1364:	eb09 0104 	add.w	r1, r9, r4
c0de1368:	f005 fef3 	bl	c0de7152 <cx_hash_final>
c0de136c:	b150      	cbz	r0, c0de1384 <handler_get_insecure_secret+0xac>
c0de136e:	f000 f926 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1372:	b070      	add	sp, #448	@ 0x1c0
c0de1374:	bd70      	pop	{r4, r5, r6, pc}
c0de1376:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de137a:	b070      	add	sp, #448	@ 0x1c0
c0de137c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1380:	f7ff b9a7 	b.w	c0de06d2 <io_send_sw>
c0de1384:	eb09 0004 	add.w	r0, r9, r4
c0de1388:	f000 f933 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de138c:	2000      	movs	r0, #0
c0de138e:	e7f0      	b.n	c0de1372 <handler_get_insecure_secret+0x9a>
c0de1390:	00000000 	.word	0x00000000
c0de1394:	000002f0 	.word	0x000002f0

c0de1398 <handler_get_insecure_public>:
c0de1398:	b5b0      	push	{r4, r5, r7, lr}
c0de139a:	b0aa      	sub	sp, #168	@ 0xa8
c0de139c:	6800      	ldr	r0, [r0, #0]
c0de139e:	21ff      	movs	r1, #255	@ 0xff
c0de13a0:	7805      	ldrb	r5, [r0, #0]
c0de13a2:	2000      	movs	r0, #0
c0de13a4:	ac1a      	add	r4, sp, #104	@ 0x68
c0de13a6:	2840      	cmp	r0, #64	@ 0x40
c0de13a8:	d002      	beq.n	c0de13b0 <handler_get_insecure_public+0x18>
c0de13aa:	5421      	strb	r1, [r4, r0]
c0de13ac:	3001      	adds	r0, #1
c0de13ae:	e7fa      	b.n	c0de13a6 <handler_get_insecure_public+0xe>
c0de13b0:	f000 f901 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de13b4:	b9f8      	cbnz	r0, c0de13f6 <handler_get_insecure_public+0x5e>
c0de13b6:	a804      	add	r0, sp, #16
c0de13b8:	f000 f91e 	bl	c0de15f8 <OUTLINED_FUNCTION_9>
c0de13bc:	b9d8      	cbnz	r0, c0de13f6 <handler_get_insecure_public+0x5e>
c0de13be:	a804      	add	r0, sp, #16
c0de13c0:	a901      	add	r1, sp, #4
c0de13c2:	f001 fa32 	bl	c0de282a <tEdwards_alloc>
c0de13c6:	b9b0      	cbnz	r0, c0de13f6 <handler_get_insecure_public+0x5e>
c0de13c8:	480e      	ldr	r0, [pc, #56]	@ (c0de1404 <handler_get_insecure_public+0x6c>)
c0de13ca:	eb09 0100 	add.w	r1, r9, r0
c0de13ce:	a804      	add	r0, sp, #16
c0de13d0:	aa01      	add	r2, sp, #4
c0de13d2:	f000 fd5d 	bl	c0de1e90 <zkn_prv2pub>
c0de13d6:	b970      	cbnz	r0, c0de13f6 <handler_get_insecure_public+0x5e>
c0de13d8:	a804      	add	r0, sp, #16
c0de13da:	f104 0320 	add.w	r3, r4, #32
c0de13de:	a901      	add	r1, sp, #4
c0de13e0:	f000 f904 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de13e4:	b938      	cbnz	r0, c0de13f6 <handler_get_insecure_public+0x5e>
c0de13e6:	9804      	ldr	r0, [sp, #16]
c0de13e8:	0041      	lsls	r1, r0, #1
c0de13ea:	a81a      	add	r0, sp, #104	@ 0x68
c0de13ec:	f7ff f966 	bl	c0de06bc <io_send_response_pointer>
c0de13f0:	f006 f926 	bl	c0de7640 <cx_bn_unlock>
c0de13f4:	b118      	cbz	r0, c0de13fe <handler_get_insecure_public+0x66>
c0de13f6:	f000 f8e2 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de13fa:	b02a      	add	sp, #168	@ 0xa8
c0de13fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de13fe:	2000      	movs	r0, #0
c0de1400:	e7fb      	b.n	c0de13fa <handler_get_insecure_public+0x62>
c0de1402:	bf00      	nop
c0de1404:	000002f0 	.word	0x000002f0

c0de1408 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1408:	b570      	push	{r4, r5, r6, lr}
c0de140a:	b0bc      	sub	sp, #240	@ 0xf0
c0de140c:	4605      	mov	r5, r0
c0de140e:	6800      	ldr	r0, [r0, #0]
c0de1410:	21ff      	movs	r1, #255	@ 0xff
c0de1412:	7804      	ldrb	r4, [r0, #0]
c0de1414:	2000      	movs	r0, #0
c0de1416:	ae24      	add	r6, sp, #144	@ 0x90
c0de1418:	2860      	cmp	r0, #96	@ 0x60
c0de141a:	d002      	beq.n	c0de1422 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1a>
c0de141c:	5431      	strb	r1, [r6, r0]
c0de141e:	3001      	adds	r0, #1
c0de1420:	e7fa      	b.n	c0de1418 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de1422:	f000 f8c8 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de1426:	bb68      	cbnz	r0, c0de1484 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1428:	6828      	ldr	r0, [r5, #0]
c0de142a:	2100      	movs	r1, #0
c0de142c:	aa03      	add	r2, sp, #12
c0de142e:	3001      	adds	r0, #1
c0de1430:	2920      	cmp	r1, #32
c0de1432:	d003      	beq.n	c0de143c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de1434:	5c43      	ldrb	r3, [r0, r1]
c0de1436:	5453      	strb	r3, [r2, r1]
c0de1438:	3101      	adds	r1, #1
c0de143a:	e7f9      	b.n	c0de1430 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x28>
c0de143c:	a80e      	add	r0, sp, #56	@ 0x38
c0de143e:	4621      	mov	r1, r4
c0de1440:	f001 fb72 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de1444:	b9f0      	cbnz	r0, c0de1484 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1446:	a80e      	add	r0, sp, #56	@ 0x38
c0de1448:	a90b      	add	r1, sp, #44	@ 0x2c
c0de144a:	f001 f9ee 	bl	c0de282a <tEdwards_alloc>
c0de144e:	b9c8      	cbnz	r0, c0de1484 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1450:	4c0f      	ldr	r4, [pc, #60]	@ (c0de1490 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de1452:	a80e      	add	r0, sp, #56	@ 0x38
c0de1454:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1456:	eb09 0104 	add.w	r1, r9, r4
c0de145a:	f000 fd19 	bl	c0de1e90 <zkn_prv2pub>
c0de145e:	b988      	cbnz	r0, c0de1484 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1460:	2020      	movs	r0, #32
c0de1462:	eb09 0104 	add.w	r1, r9, r4
c0de1466:	e9cd 0600 	strd	r0, r6, [sp]
c0de146a:	a80e      	add	r0, sp, #56	@ 0x38
c0de146c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de146e:	ab03      	add	r3, sp, #12
c0de1470:	f000 fd36 	bl	c0de1ee0 <EddsaPoseidon_Sign_final>
c0de1474:	b930      	cbnz	r0, c0de1484 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1476:	a824      	add	r0, sp, #144	@ 0x90
c0de1478:	2160      	movs	r1, #96	@ 0x60
c0de147a:	f7ff f91f 	bl	c0de06bc <io_send_response_pointer>
c0de147e:	f006 f8df 	bl	c0de7640 <cx_bn_unlock>
c0de1482:	b118      	cbz	r0, c0de148c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x84>
c0de1484:	f000 f89b 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1488:	b03c      	add	sp, #240	@ 0xf0
c0de148a:	bd70      	pop	{r4, r5, r6, pc}
c0de148c:	2000      	movs	r0, #0
c0de148e:	e7fb      	b.n	c0de1488 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x80>
c0de1490:	000002f0 	.word	0x000002f0

c0de1494 <handler_cmd_conciliation>:
c0de1494:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1496:	f5ad 7d7f 	sub.w	sp, sp, #1020	@ 0x3fc
c0de149a:	4604      	mov	r4, r0
c0de149c:	f000 f88b 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de14a0:	2800      	cmp	r0, #0
c0de14a2:	d157      	bne.n	c0de1554 <handler_cmd_conciliation+0xc0>
c0de14a4:	6820      	ldr	r0, [r4, #0]
c0de14a6:	7801      	ldrb	r1, [r0, #0]
c0de14a8:	a8a9      	add	r0, sp, #676	@ 0x2a4
c0de14aa:	f001 fb3d 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de14ae:	2800      	cmp	r0, #0
c0de14b0:	d150      	bne.n	c0de1554 <handler_cmd_conciliation+0xc0>
c0de14b2:	a831      	add	r0, sp, #196	@ 0xc4
c0de14b4:	492b      	ldr	r1, [pc, #172]	@ (c0de1564 <handler_cmd_conciliation+0xd0>)
c0de14b6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de14ba:	4479      	add	r1, pc
c0de14bc:	f006 fb7e 	bl	c0de7bbc <__aeabi_memcpy>
c0de14c0:	a829      	add	r0, sp, #164	@ 0xa4
c0de14c2:	4929      	ldr	r1, [pc, #164]	@ (c0de1568 <handler_cmd_conciliation+0xd4>)
c0de14c4:	2220      	movs	r2, #32
c0de14c6:	2720      	movs	r7, #32
c0de14c8:	4479      	add	r1, pc
c0de14ca:	f006 fb77 	bl	c0de7bbc <__aeabi_memcpy>
c0de14ce:	a821      	add	r0, sp, #132	@ 0x84
c0de14d0:	4926      	ldr	r1, [pc, #152]	@ (c0de156c <handler_cmd_conciliation+0xd8>)
c0de14d2:	2220      	movs	r2, #32
c0de14d4:	4479      	add	r1, pc
c0de14d6:	f006 fb71 	bl	c0de7bbc <__aeabi_memcpy>
c0de14da:	ac19      	add	r4, sp, #100	@ 0x64
c0de14dc:	4924      	ldr	r1, [pc, #144]	@ (c0de1570 <handler_cmd_conciliation+0xdc>)
c0de14de:	2220      	movs	r2, #32
c0de14e0:	4620      	mov	r0, r4
c0de14e2:	4479      	add	r1, pc
c0de14e4:	f006 fb6a 	bl	c0de7bbc <__aeabi_memcpy>
c0de14e8:	a809      	add	r0, sp, #36	@ 0x24
c0de14ea:	4922      	ldr	r1, [pc, #136]	@ (c0de1574 <handler_cmd_conciliation+0xe0>)
c0de14ec:	2240      	movs	r2, #64	@ 0x40
c0de14ee:	4479      	add	r1, pc
c0de14f0:	f006 fb64 	bl	c0de7bbc <__aeabi_memcpy>
c0de14f4:	a8a9      	add	r0, sp, #676	@ 0x2a4
c0de14f6:	ad06      	add	r5, sp, #24
c0de14f8:	4629      	mov	r1, r5
c0de14fa:	f001 f996 	bl	c0de282a <tEdwards_alloc>
c0de14fe:	bb48      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de1500:	aebf      	add	r6, sp, #764	@ 0x2fc
c0de1502:	2003      	movs	r0, #3
c0de1504:	e88d 0091 	stmia.w	sp, {r0, r4, r7}
c0de1508:	e9cd 5603 	strd	r5, r6, [sp, #12]
c0de150c:	a9a9      	add	r1, sp, #676	@ 0x2a4
c0de150e:	aa29      	add	r2, sp, #164	@ 0xa4
c0de1510:	ab31      	add	r3, sp, #196	@ 0xc4
c0de1512:	2001      	movs	r0, #1
c0de1514:	f001 f924 	bl	c0de2760 <zkn_reconciliation>
c0de1518:	b9e0      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de151a:	a805      	add	r0, sp, #20
c0de151c:	2120      	movs	r1, #32
c0de151e:	2420      	movs	r4, #32
c0de1520:	f006 f896 	bl	c0de7650 <cx_bn_alloc>
c0de1524:	b9b0      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de1526:	9805      	ldr	r0, [sp, #20]
c0de1528:	e9cd 4000 	strd	r4, r0, [sp]
c0de152c:	a8a9      	add	r0, sp, #676	@ 0x2a4
c0de152e:	a906      	add	r1, sp, #24
c0de1530:	aa09      	add	r2, sp, #36	@ 0x24
c0de1532:	ab21      	add	r3, sp, #132	@ 0x84
c0de1534:	f001 f8ba 	bl	c0de26ac <compute_challenge>
c0de1538:	b960      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de153a:	9805      	ldr	r0, [sp, #20]
c0de153c:	f106 0180 	add.w	r1, r6, #128	@ 0x80
c0de1540:	f000 f840 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1544:	b930      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de1546:	a8bf      	add	r0, sp, #764	@ 0x2fc
c0de1548:	21a0      	movs	r1, #160	@ 0xa0
c0de154a:	f7ff f8b7 	bl	c0de06bc <io_send_response_pointer>
c0de154e:	f006 f877 	bl	c0de7640 <cx_bn_unlock>
c0de1552:	b120      	cbz	r0, c0de155e <handler_cmd_conciliation+0xca>
c0de1554:	f000 f833 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1558:	f50d 7d7f 	add.w	sp, sp, #1020	@ 0x3fc
c0de155c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de155e:	2000      	movs	r0, #0
c0de1560:	e7fa      	b.n	c0de1558 <handler_cmd_conciliation+0xc4>
c0de1562:	bf00      	nop
c0de1564:	0000747a 	.word	0x0000747a
c0de1568:	00006e6c 	.word	0x00006e6c
c0de156c:	00006d20 	.word	0x00006d20
c0de1570:	00006e72 	.word	0x00006e72
c0de1574:	00007626 	.word	0x00007626

c0de1578 <handler_cmd_frost_commit>:
c0de1578:	b510      	push	{r4, lr}
c0de157a:	b0cc      	sub	sp, #304	@ 0x130
c0de157c:	4604      	mov	r4, r0
c0de157e:	f000 f81a 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de1582:	b990      	cbnz	r0, c0de15aa <handler_cmd_frost_commit+0x32>
c0de1584:	6820      	ldr	r0, [r4, #0]
c0de1586:	7801      	ldrb	r1, [r0, #0]
c0de1588:	a806      	add	r0, sp, #24
c0de158a:	f001 facd 	bl	c0de2b28 <tEdwards_Curve_alloc_init>
c0de158e:	b960      	cbnz	r0, c0de15aa <handler_cmd_frost_commit+0x32>
c0de1590:	a806      	add	r0, sp, #24
c0de1592:	a91c      	add	r1, sp, #112	@ 0x70
c0de1594:	466a      	mov	r2, sp
c0de1596:	f000 ff03 	bl	c0de23a0 <zkn_frost_commit>
c0de159a:	b930      	cbnz	r0, c0de15aa <handler_cmd_frost_commit+0x32>
c0de159c:	a81c      	add	r0, sp, #112	@ 0x70
c0de159e:	21c0      	movs	r1, #192	@ 0xc0
c0de15a0:	f7ff f88c 	bl	c0de06bc <io_send_response_pointer>
c0de15a4:	f006 f84c 	bl	c0de7640 <cx_bn_unlock>
c0de15a8:	b118      	cbz	r0, c0de15b2 <handler_cmd_frost_commit+0x3a>
c0de15aa:	f000 f808 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de15ae:	b04c      	add	sp, #304	@ 0x130
c0de15b0:	bd10      	pop	{r4, pc}
c0de15b2:	2000      	movs	r0, #0
c0de15b4:	e7fb      	b.n	c0de15ae <handler_cmd_frost_commit+0x36>

c0de15b6 <OUTLINED_FUNCTION_0>:
c0de15b6:	2020      	movs	r0, #32
c0de15b8:	2100      	movs	r1, #0
c0de15ba:	f006 b837 	b.w	c0de762c <cx_bn_lock>

c0de15be <OUTLINED_FUNCTION_1>:
c0de15be:	b280      	uxth	r0, r0
c0de15c0:	f7ff b887 	b.w	c0de06d2 <io_send_sw>

c0de15c4 <OUTLINED_FUNCTION_2>:
c0de15c4:	2220      	movs	r2, #32
c0de15c6:	f006 b88d 	b.w	c0de76e4 <cx_bn_export>

c0de15ca <OUTLINED_FUNCTION_3>:
c0de15ca:	2120      	movs	r1, #32
c0de15cc:	f006 b840 	b.w	c0de7650 <cx_bn_alloc>

c0de15d0 <OUTLINED_FUNCTION_4>:
c0de15d0:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de15d4:	9b01      	ldr	r3, [sp, #4]
c0de15d6:	9a04      	ldr	r2, [sp, #16]
c0de15d8:	3001      	adds	r0, #1
c0de15da:	3901      	subs	r1, #1
c0de15dc:	4770      	bx	lr

c0de15de <OUTLINED_FUNCTION_5>:
c0de15de:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de15e2:	f7ff b86b 	b.w	c0de06bc <io_send_response_pointer>

c0de15e6 <OUTLINED_FUNCTION_6>:
c0de15e6:	2320      	movs	r3, #32
c0de15e8:	f006 b83c 	b.w	c0de7664 <cx_bn_alloc_init>

c0de15ec <OUTLINED_FUNCTION_7>:
c0de15ec:	4622      	mov	r2, r4
c0de15ee:	f001 bc26 	b.w	c0de2e3e <tEdwards_export>

c0de15f2 <OUTLINED_FUNCTION_8>:
c0de15f2:	2120      	movs	r1, #32
c0de15f4:	f7ff b862 	b.w	c0de06bc <io_send_response_pointer>

c0de15f8 <OUTLINED_FUNCTION_9>:
c0de15f8:	4629      	mov	r1, r5
c0de15fa:	f001 ba95 	b.w	c0de2b28 <tEdwards_Curve_alloc_init>
	...

c0de1600 <helper_send_response_pubkey>:
c0de1600:	b5b0      	push	{r4, r5, r7, lr}
c0de1602:	b09a      	sub	sp, #104	@ 0x68
c0de1604:	2041      	movs	r0, #65	@ 0x41
c0de1606:	f10d 0405 	add.w	r4, sp, #5
c0de160a:	2241      	movs	r2, #65	@ 0x41
c0de160c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1610:	480b      	ldr	r0, [pc, #44]	@ (c0de1640 <helper_send_response_pubkey+0x40>)
c0de1612:	eb09 0500 	add.w	r5, r9, r0
c0de1616:	1c60      	adds	r0, r4, #1
c0de1618:	f105 0108 	add.w	r1, r5, #8
c0de161c:	f006 face 	bl	c0de7bbc <__aeabi_memcpy>
c0de1620:	2020      	movs	r0, #32
c0de1622:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1626:	2220      	movs	r2, #32
c0de1628:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de162c:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1630:	f006 fac4 	bl	c0de7bbc <__aeabi_memcpy>
c0de1634:	4620      	mov	r0, r4
c0de1636:	2163      	movs	r1, #99	@ 0x63
c0de1638:	f000 f804 	bl	c0de1644 <io_send_response_pointer>
c0de163c:	b01a      	add	sp, #104	@ 0x68
c0de163e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1640:	00000000 	.word	0x00000000

c0de1644 <io_send_response_pointer>:
c0de1644:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1646:	2200      	movs	r2, #0
c0de1648:	ab01      	add	r3, sp, #4
c0de164a:	c307      	stmia	r3!, {r0, r1, r2}
c0de164c:	a801      	add	r0, sp, #4
c0de164e:	2101      	movs	r1, #1
c0de1650:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de1654:	f005 fac0 	bl	c0de6bd8 <io_send_response_buffers>
c0de1658:	b004      	add	sp, #16
c0de165a:	bd80      	pop	{r7, pc}

c0de165c <helper_send_response_sig>:
c0de165c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de165e:	b099      	sub	sp, #100	@ 0x64
c0de1660:	f10d 0402 	add.w	r4, sp, #2
c0de1664:	2161      	movs	r1, #97	@ 0x61
c0de1666:	1c65      	adds	r5, r4, #1
c0de1668:	4628      	mov	r0, r5
c0de166a:	f006 fab1 	bl	c0de7bd0 <__aeabi_memclr>
c0de166e:	4808      	ldr	r0, [pc, #32]	@ (c0de1690 <helper_send_response_sig+0x34>)
c0de1670:	f000 f810 	bl	c0de1694 <OUTLINED_FUNCTION_0>
c0de1674:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1678:	f006 faa0 	bl	c0de7bbc <__aeabi_memcpy>
c0de167c:	f897 12b9 	ldrb.w	r1, [r7, #697]	@ 0x2b9
c0de1680:	1930      	adds	r0, r6, r4
c0de1682:	7041      	strb	r1, [r0, #1]
c0de1684:	1cb1      	adds	r1, r6, #2
c0de1686:	4620      	mov	r0, r4
c0de1688:	f7ff ffdc 	bl	c0de1644 <io_send_response_pointer>
c0de168c:	b019      	add	sp, #100	@ 0x64
c0de168e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1690:	00000000 	.word	0x00000000

c0de1694 <OUTLINED_FUNCTION_0>:
c0de1694:	eb09 0700 	add.w	r7, r9, r0
c0de1698:	4628      	mov	r0, r5
c0de169a:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de169e:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de16a2:	4632      	mov	r2, r6
c0de16a4:	4770      	bx	lr

c0de16a6 <swap_handle_check_address>:
c0de16a6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de16aa:	b0bc      	sub	sp, #240	@ 0xf0
c0de16ac:	4604      	mov	r4, r0
c0de16ae:	2000      	movs	r0, #0
c0de16b0:	68a5      	ldr	r5, [r4, #8]
c0de16b2:	61a0      	str	r0, [r4, #24]
c0de16b4:	2d00      	cmp	r5, #0
c0de16b6:	d04d      	beq.n	c0de1754 <swap_handle_check_address+0xae>
c0de16b8:	6920      	ldr	r0, [r4, #16]
c0de16ba:	2800      	cmp	r0, #0
c0de16bc:	d04a      	beq.n	c0de1754 <swap_handle_check_address+0xae>
c0de16be:	f006 fae3 	bl	c0de7c88 <strlen>
c0de16c2:	2828      	cmp	r0, #40	@ 0x28
c0de16c4:	d146      	bne.n	c0de1754 <swap_handle_check_address+0xae>
c0de16c6:	7b20      	ldrb	r0, [r4, #12]
c0de16c8:	f04f 0800 	mov.w	r8, #0
c0de16cc:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de16ce:	2161      	movs	r1, #97	@ 0x61
c0de16d0:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de16d4:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de16d6:	ad15      	add	r5, sp, #84	@ 0x54
c0de16d8:	4628      	mov	r0, r5
c0de16da:	f006 fa79 	bl	c0de7bd0 <__aeabi_memclr>
c0de16de:	ae39      	add	r6, sp, #228	@ 0xe4
c0de16e0:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de16e4:	4630      	mov	r0, r6
c0de16e6:	f005 f825 	bl	c0de6734 <buffer_read_u8>
c0de16ea:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de16ee:	af2e      	add	r7, sp, #184	@ 0xb8
c0de16f0:	4630      	mov	r0, r6
c0de16f2:	4639      	mov	r1, r7
c0de16f4:	f005 f871 	bl	c0de67da <buffer_read_bip32_path>
c0de16f8:	2005      	movs	r0, #5
c0de16fa:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de16fe:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1702:	463a      	mov	r2, r7
c0de1704:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1708:	e9cd 5100 	strd	r5, r1, [sp]
c0de170c:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1710:	2000      	movs	r0, #0
c0de1712:	2121      	movs	r1, #33	@ 0x21
c0de1714:	f005 f922 	bl	c0de695c <bip32_derive_with_seed_get_pubkey_256>
c0de1718:	b9e0      	cbnz	r0, c0de1754 <swap_handle_check_address+0xae>
c0de171a:	ad10      	add	r5, sp, #64	@ 0x40
c0de171c:	2114      	movs	r1, #20
c0de171e:	4628      	mov	r0, r5
c0de1720:	f006 fa56 	bl	c0de7bd0 <__aeabi_memclr>
c0de1724:	a815      	add	r0, sp, #84	@ 0x54
c0de1726:	4629      	mov	r1, r5
c0de1728:	2214      	movs	r2, #20
c0de172a:	f7fe fc7d 	bl	c0de0028 <address_from_pubkey>
c0de172e:	ae05      	add	r6, sp, #20
c0de1730:	2129      	movs	r1, #41	@ 0x29
c0de1732:	4630      	mov	r0, r6
c0de1734:	f006 fa4c 	bl	c0de7bd0 <__aeabi_memclr>
c0de1738:	4628      	mov	r0, r5
c0de173a:	2114      	movs	r1, #20
c0de173c:	4632      	mov	r2, r6
c0de173e:	2329      	movs	r3, #41	@ 0x29
c0de1740:	f005 f9ea 	bl	c0de6b18 <format_hex>
c0de1744:	6921      	ldr	r1, [r4, #16]
c0de1746:	4630      	mov	r0, r6
c0de1748:	2229      	movs	r2, #41	@ 0x29
c0de174a:	f006 faa5 	bl	c0de7c98 <strncmp>
c0de174e:	b908      	cbnz	r0, c0de1754 <swap_handle_check_address+0xae>
c0de1750:	2001      	movs	r0, #1
c0de1752:	61a0      	str	r0, [r4, #24]
c0de1754:	b03c      	add	sp, #240	@ 0xf0
c0de1756:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de175c <swap_handle_get_printable_amount>:
c0de175c:	b570      	push	{r4, r5, r6, lr}
c0de175e:	b08c      	sub	sp, #48	@ 0x30
c0de1760:	ac04      	add	r4, sp, #16
c0de1762:	4606      	mov	r6, r0
c0de1764:	211e      	movs	r1, #30
c0de1766:	4620      	mov	r0, r4
c0de1768:	f006 fa32 	bl	c0de7bd0 <__aeabi_memclr>
c0de176c:	f106 050e 	add.w	r5, r6, #14
c0de1770:	2132      	movs	r1, #50	@ 0x32
c0de1772:	4628      	mov	r0, r5
c0de1774:	f006 fa2c 	bl	c0de7bd0 <__aeabi_memclr>
c0de1778:	2000      	movs	r0, #0
c0de177a:	7b31      	ldrb	r1, [r6, #12]
c0de177c:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1780:	68b0      	ldr	r0, [r6, #8]
c0de1782:	aa02      	add	r2, sp, #8
c0de1784:	f005 fbb4 	bl	c0de6ef0 <swap_str_to_u64>
c0de1788:	b178      	cbz	r0, c0de17aa <swap_handle_get_printable_amount+0x4e>
c0de178a:	2003      	movs	r0, #3
c0de178c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1790:	211e      	movs	r1, #30
c0de1792:	9000      	str	r0, [sp, #0]
c0de1794:	4620      	mov	r0, r4
c0de1796:	f005 f978 	bl	c0de6a8a <format_fpu64>
c0de179a:	9400      	str	r4, [sp, #0]
c0de179c:	4628      	mov	r0, r5
c0de179e:	2132      	movs	r1, #50	@ 0x32
c0de17a0:	231e      	movs	r3, #30
c0de17a2:	4a03      	ldr	r2, [pc, #12]	@ (c0de17b0 <swap_handle_get_printable_amount+0x54>)
c0de17a4:	447a      	add	r2, pc
c0de17a6:	f005 fd75 	bl	c0de7294 <snprintf>
c0de17aa:	b00c      	add	sp, #48	@ 0x30
c0de17ac:	bd70      	pop	{r4, r5, r6, pc}
c0de17ae:	bf00      	nop
c0de17b0:	00006964 	.word	0x00006964

c0de17b4 <swap_copy_transaction_parameters>:
c0de17b4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de17b6:	b093      	sub	sp, #76	@ 0x4c
c0de17b8:	6985      	ldr	r5, [r0, #24]
c0de17ba:	b3ad      	cbz	r5, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de17bc:	4604      	mov	r4, r0
c0de17be:	4628      	mov	r0, r5
c0de17c0:	f006 fa62 	bl	c0de7c88 <strlen>
c0de17c4:	2828      	cmp	r0, #40	@ 0x28
c0de17c6:	d12f      	bne.n	c0de1828 <swap_copy_transaction_parameters+0x74>
c0de17c8:	68a7      	ldr	r7, [r4, #8]
c0de17ca:	b36f      	cbz	r7, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de17cc:	466e      	mov	r6, sp
c0de17ce:	2148      	movs	r1, #72	@ 0x48
c0de17d0:	4630      	mov	r0, r6
c0de17d2:	f006 f9fd 	bl	c0de7bd0 <__aeabi_memclr>
c0de17d6:	f106 0018 	add.w	r0, r6, #24
c0de17da:	2100      	movs	r1, #0
c0de17dc:	2928      	cmp	r1, #40	@ 0x28
c0de17de:	d009      	beq.n	c0de17f4 <swap_copy_transaction_parameters+0x40>
c0de17e0:	5c6a      	ldrb	r2, [r5, r1]
c0de17e2:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de17e6:	b2db      	uxtb	r3, r3
c0de17e8:	2b1a      	cmp	r3, #26
c0de17ea:	bf38      	it	cc
c0de17ec:	3a20      	subcc	r2, #32
c0de17ee:	5442      	strb	r2, [r0, r1]
c0de17f0:	3101      	adds	r1, #1
c0de17f2:	e7f3      	b.n	c0de17dc <swap_copy_transaction_parameters+0x28>
c0de17f4:	7b21      	ldrb	r1, [r4, #12]
c0de17f6:	f106 0208 	add.w	r2, r6, #8
c0de17fa:	4638      	mov	r0, r7
c0de17fc:	f005 fb78 	bl	c0de6ef0 <swap_str_to_u64>
c0de1800:	b190      	cbz	r0, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de1802:	7d21      	ldrb	r1, [r4, #20]
c0de1804:	6920      	ldr	r0, [r4, #16]
c0de1806:	f106 0210 	add.w	r2, r6, #16
c0de180a:	f005 fb71 	bl	c0de6ef0 <swap_str_to_u64>
c0de180e:	b158      	cbz	r0, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de1810:	2401      	movs	r4, #1
c0de1812:	f88d 4000 	strb.w	r4, [sp]
c0de1816:	f005 fd31 	bl	c0de727c <os_explicit_zero_BSS_segment>
c0de181a:	4805      	ldr	r0, [pc, #20]	@ (c0de1830 <swap_copy_transaction_parameters+0x7c>)
c0de181c:	4669      	mov	r1, sp
c0de181e:	2248      	movs	r2, #72	@ 0x48
c0de1820:	4448      	add	r0, r9
c0de1822:	f006 f9cb 	bl	c0de7bbc <__aeabi_memcpy>
c0de1826:	e000      	b.n	c0de182a <swap_copy_transaction_parameters+0x76>
c0de1828:	2400      	movs	r4, #0
c0de182a:	4620      	mov	r0, r4
c0de182c:	b013      	add	sp, #76	@ 0x4c
c0de182e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1830:	00000310 	.word	0x00000310

c0de1834 <swap_check_validity>:
c0de1834:	b570      	push	{r4, r5, r6, lr}
c0de1836:	b08c      	sub	sp, #48	@ 0x30
c0de1838:	4e1d      	ldr	r6, [pc, #116]	@ (c0de18b0 <swap_check_validity+0x7c>)
c0de183a:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de183e:	b32c      	cbz	r4, c0de188c <swap_check_validity+0x58>
c0de1840:	eb09 0406 	add.w	r4, r9, r6
c0de1844:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1848:	4069      	eors	r1, r5
c0de184a:	4060      	eors	r0, r4
c0de184c:	4308      	orrs	r0, r1
c0de184e:	d121      	bne.n	c0de1894 <swap_check_validity+0x60>
c0de1850:	eb09 0006 	add.w	r0, r9, r6
c0de1854:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1858:	4059      	eors	r1, r3
c0de185a:	4050      	eors	r0, r2
c0de185c:	4308      	orrs	r0, r1
c0de185e:	d11d      	bne.n	c0de189c <swap_check_validity+0x68>
c0de1860:	ad01      	add	r5, sp, #4
c0de1862:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1864:	2129      	movs	r1, #41	@ 0x29
c0de1866:	4628      	mov	r0, r5
c0de1868:	f006 f9b2 	bl	c0de7bd0 <__aeabi_memclr>
c0de186c:	4620      	mov	r0, r4
c0de186e:	2114      	movs	r1, #20
c0de1870:	462a      	mov	r2, r5
c0de1872:	2329      	movs	r3, #41	@ 0x29
c0de1874:	f005 f950 	bl	c0de6b18 <format_hex>
c0de1878:	eb09 0006 	add.w	r0, r9, r6
c0de187c:	4629      	mov	r1, r5
c0de187e:	3018      	adds	r0, #24
c0de1880:	f006 f9f8 	bl	c0de7c74 <strcmp>
c0de1884:	b970      	cbnz	r0, c0de18a4 <swap_check_validity+0x70>
c0de1886:	2001      	movs	r0, #1
c0de1888:	b00c      	add	sp, #48	@ 0x30
c0de188a:	bd70      	pop	{r4, r5, r6, pc}
c0de188c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1890:	21ff      	movs	r1, #255	@ 0xff
c0de1892:	e00a      	b.n	c0de18aa <swap_check_validity+0x76>
c0de1894:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1898:	2101      	movs	r1, #1
c0de189a:	e006      	b.n	c0de18aa <swap_check_validity+0x76>
c0de189c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de18a0:	2103      	movs	r1, #3
c0de18a2:	e002      	b.n	c0de18aa <swap_check_validity+0x76>
c0de18a4:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de18a8:	2102      	movs	r1, #2
c0de18aa:	2200      	movs	r2, #0
c0de18ac:	f005 fae7 	bl	c0de6e7e <send_swap_error_simple>
c0de18b0:	00000310 	.word	0x00000310

c0de18b4 <transaction_deserialize>:
c0de18b4:	b570      	push	{r4, r5, r6, lr}
c0de18b6:	460d      	mov	r5, r1
c0de18b8:	4604      	mov	r4, r0
c0de18ba:	b910      	cbnz	r0, c0de18c2 <transaction_deserialize+0xe>
c0de18bc:	2001      	movs	r0, #1
c0de18be:	f005 fc69 	bl	c0de7194 <assert_exit>
c0de18c2:	b915      	cbnz	r5, c0de18ca <transaction_deserialize+0x16>
c0de18c4:	2001      	movs	r0, #1
c0de18c6:	f005 fc65 	bl	c0de7194 <assert_exit>
c0de18ca:	6860      	ldr	r0, [r4, #4]
c0de18cc:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de18d0:	d901      	bls.n	c0de18d6 <transaction_deserialize+0x22>
c0de18d2:	20f9      	movs	r0, #249	@ 0xf9
c0de18d4:	e04b      	b.n	c0de196e <transaction_deserialize+0xba>
c0de18d6:	4620      	mov	r0, r4
c0de18d8:	4629      	mov	r1, r5
c0de18da:	2200      	movs	r2, #0
c0de18dc:	f004 ff40 	bl	c0de6760 <buffer_read_u64>
c0de18e0:	b330      	cbz	r0, c0de1930 <transaction_deserialize+0x7c>
c0de18e2:	6820      	ldr	r0, [r4, #0]
c0de18e4:	68a1      	ldr	r1, [r4, #8]
c0de18e6:	4408      	add	r0, r1
c0de18e8:	2114      	movs	r1, #20
c0de18ea:	61a8      	str	r0, [r5, #24]
c0de18ec:	4620      	mov	r0, r4
c0de18ee:	f004 ff16 	bl	c0de671e <buffer_seek_cur>
c0de18f2:	b1f8      	cbz	r0, c0de1934 <transaction_deserialize+0x80>
c0de18f4:	f105 0108 	add.w	r1, r5, #8
c0de18f8:	4620      	mov	r0, r4
c0de18fa:	2200      	movs	r2, #0
c0de18fc:	2600      	movs	r6, #0
c0de18fe:	f004 ff2f 	bl	c0de6760 <buffer_read_u64>
c0de1902:	b1c8      	cbz	r0, c0de1938 <transaction_deserialize+0x84>
c0de1904:	f105 0120 	add.w	r1, r5, #32
c0de1908:	4620      	mov	r0, r4
c0de190a:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de190e:	f004 ff47 	bl	c0de67a0 <buffer_read_varint>
c0de1912:	6a29      	ldr	r1, [r5, #32]
c0de1914:	b990      	cbnz	r0, c0de193c <transaction_deserialize+0x88>
c0de1916:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1918:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de191c:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1920:	2300      	movs	r3, #0
c0de1922:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de1926:	eb73 0000 	sbcs.w	r0, r3, r0
c0de192a:	d207      	bcs.n	c0de193c <transaction_deserialize+0x88>
c0de192c:	20fc      	movs	r0, #252	@ 0xfc
c0de192e:	e01e      	b.n	c0de196e <transaction_deserialize+0xba>
c0de1930:	20ff      	movs	r0, #255	@ 0xff
c0de1932:	e01c      	b.n	c0de196e <transaction_deserialize+0xba>
c0de1934:	20fe      	movs	r0, #254	@ 0xfe
c0de1936:	e01a      	b.n	c0de196e <transaction_deserialize+0xba>
c0de1938:	20fd      	movs	r0, #253	@ 0xfd
c0de193a:	e018      	b.n	c0de196e <transaction_deserialize+0xba>
c0de193c:	6820      	ldr	r0, [r4, #0]
c0de193e:	68a2      	ldr	r2, [r4, #8]
c0de1940:	4410      	add	r0, r2
c0de1942:	61e8      	str	r0, [r5, #28]
c0de1944:	4620      	mov	r0, r4
c0de1946:	f004 feea 	bl	c0de671e <buffer_seek_cur>
c0de194a:	b168      	cbz	r0, c0de1968 <transaction_deserialize+0xb4>
c0de194c:	f105 031c 	add.w	r3, r5, #28
c0de1950:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1952:	f000 f80e 	bl	c0de1972 <transaction_utils_check_encoding>
c0de1956:	b148      	cbz	r0, c0de196c <transaction_deserialize+0xb8>
c0de1958:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de195c:	f06f 0006 	mvn.w	r0, #6
c0de1960:	428a      	cmp	r2, r1
c0de1962:	bf08      	it	eq
c0de1964:	2001      	moveq	r0, #1
c0de1966:	e002      	b.n	c0de196e <transaction_deserialize+0xba>
c0de1968:	20fb      	movs	r0, #251	@ 0xfb
c0de196a:	e000      	b.n	c0de196e <transaction_deserialize+0xba>
c0de196c:	20fa      	movs	r0, #250	@ 0xfa
c0de196e:	b240      	sxtb	r0, r0
c0de1970:	bd70      	pop	{r4, r5, r6, pc}

c0de1972 <transaction_utils_check_encoding>:
c0de1972:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1974:	461c      	mov	r4, r3
c0de1976:	4615      	mov	r5, r2
c0de1978:	4606      	mov	r6, r0
c0de197a:	b910      	cbnz	r0, c0de1982 <transaction_utils_check_encoding+0x10>
c0de197c:	2001      	movs	r0, #1
c0de197e:	f005 fc09 	bl	c0de7194 <assert_exit>
c0de1982:	2000      	movs	r0, #0
c0de1984:	2300      	movs	r3, #0
c0de1986:	4602      	mov	r2, r0
c0de1988:	1b40      	subs	r0, r0, r5
c0de198a:	4619      	mov	r1, r3
c0de198c:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1990:	d206      	bcs.n	c0de19a0 <transaction_utils_check_encoding+0x2e>
c0de1992:	56b7      	ldrsb	r7, [r6, r2]
c0de1994:	1c50      	adds	r0, r2, #1
c0de1996:	f141 0300 	adc.w	r3, r1, #0
c0de199a:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de199e:	dcf2      	bgt.n	c0de1986 <transaction_utils_check_encoding+0x14>
c0de19a0:	2000      	movs	r0, #0
c0de19a2:	1b52      	subs	r2, r2, r5
c0de19a4:	41a1      	sbcs	r1, r4
c0de19a6:	bf28      	it	cs
c0de19a8:	2001      	movcs	r0, #1
c0de19aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de19ac <validate_pubkey>:
c0de19ac:	b108      	cbz	r0, c0de19b2 <validate_pubkey+0x6>
c0de19ae:	f7ff be27 	b.w	c0de1600 <helper_send_response_pubkey>
c0de19b2:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de19b6:	f000 b800 	b.w	c0de19ba <io_send_sw>

c0de19ba <io_send_sw>:
c0de19ba:	b580      	push	{r7, lr}
c0de19bc:	4602      	mov	r2, r0
c0de19be:	2000      	movs	r0, #0
c0de19c0:	2100      	movs	r1, #0
c0de19c2:	f005 f909 	bl	c0de6bd8 <io_send_response_buffers>
c0de19c6:	bd80      	pop	{r7, pc}

c0de19c8 <validate_transaction>:
c0de19c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de19cc:	b08c      	sub	sp, #48	@ 0x30
c0de19ce:	b378      	cbz	r0, c0de1a30 <validate_transaction+0x68>
c0de19d0:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1a68 <validate_transaction+0xa0>
c0de19d4:	2002      	movs	r0, #2
c0de19d6:	2500      	movs	r5, #0
c0de19d8:	2720      	movs	r7, #32
c0de19da:	2203      	movs	r2, #3
c0de19dc:	f240 6401 	movw	r4, #1537	@ 0x601
c0de19e0:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de19e4:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de19e8:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de19ea:	f809 0008 	strb.w	r0, [r9, r8]
c0de19ee:	2060      	movs	r0, #96	@ 0x60
c0de19f0:	900a      	str	r0, [sp, #40]	@ 0x28
c0de19f2:	eb09 0008 	add.w	r0, r9, r8
c0de19f6:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de19fa:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de19fe:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1a02:	e9cd 4200 	strd	r4, r2, [sp]
c0de1a06:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1a0a:	2000      	movs	r0, #0
c0de1a0c:	9508      	str	r5, [sp, #32]
c0de1a0e:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1a12:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1a16:	2121      	movs	r1, #33	@ 0x21
c0de1a18:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1a1c:	f004 ffd2 	bl	c0de69c4 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1a20:	b188      	cbz	r0, c0de1a46 <validate_transaction+0x7e>
c0de1a22:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1a26:	f809 5008 	strb.w	r5, [r9, r8]
c0de1a2a:	f7ff ffc6 	bl	c0de19ba <io_send_sw>
c0de1a2e:	e017      	b.n	c0de1a60 <validate_transaction+0x98>
c0de1a30:	480d      	ldr	r0, [pc, #52]	@ (c0de1a68 <validate_transaction+0xa0>)
c0de1a32:	2100      	movs	r1, #0
c0de1a34:	f809 1000 	strb.w	r1, [r9, r0]
c0de1a38:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1a3c:	b00c      	add	sp, #48	@ 0x30
c0de1a3e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1a42:	f7ff bfba 	b.w	c0de19ba <io_send_sw>
c0de1a46:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1a48:	eb09 0008 	add.w	r0, r9, r8
c0de1a4c:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1a50:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1a54:	f001 0101 	and.w	r1, r1, #1
c0de1a58:	f880 12b9 	strb.w	r1, [r0, #697]	@ 0x2b9
c0de1a5c:	f7ff fdfe 	bl	c0de165c <helper_send_response_sig>
c0de1a60:	b00c      	add	sp, #48	@ 0x30
c0de1a62:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1a66:	bf00      	nop
c0de1a68:	00000000 	.word	0x00000000

c0de1a6c <app_quit>:
c0de1a6c:	20ff      	movs	r0, #255	@ 0xff
c0de1a6e:	f005 ff69 	bl	c0de7944 <os_sched_exit>
	...

c0de1a74 <ui_menu_main>:
c0de1a74:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1a76:	4c19      	ldr	r4, [pc, #100]	@ (c0de1adc <ui_menu_main+0x68>)
c0de1a78:	4817      	ldr	r0, [pc, #92]	@ (c0de1ad8 <ui_menu_main+0x64>)
c0de1a7a:	447c      	add	r4, pc
c0de1a7c:	eb09 0500 	add.w	r5, r9, r0
c0de1a80:	f000 f8d8 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1a84:	2114      	movs	r1, #20
c0de1a86:	7369      	strb	r1, [r5, #13]
c0de1a88:	4915      	ldr	r1, [pc, #84]	@ (c0de1ae0 <ui_menu_main+0x6c>)
c0de1a8a:	4a16      	ldr	r2, [pc, #88]	@ (c0de1ae4 <ui_menu_main+0x70>)
c0de1a8c:	4479      	add	r1, pc
c0de1a8e:	447a      	add	r2, pc
c0de1a90:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1a94:	7800      	ldrb	r0, [r0, #0]
c0de1a96:	7328      	strb	r0, [r5, #12]
c0de1a98:	f000 f8cc 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1a9c:	2115      	movs	r1, #21
c0de1a9e:	7669      	strb	r1, [r5, #25]
c0de1aa0:	4911      	ldr	r1, [pc, #68]	@ (c0de1ae8 <ui_menu_main+0x74>)
c0de1aa2:	4a12      	ldr	r2, [pc, #72]	@ (c0de1aec <ui_menu_main+0x78>)
c0de1aa4:	4479      	add	r1, pc
c0de1aa6:	447a      	add	r2, pc
c0de1aa8:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1aac:	2100      	movs	r1, #0
c0de1aae:	7840      	ldrb	r0, [r0, #1]
c0de1ab0:	7628      	strb	r0, [r5, #24]
c0de1ab2:	480f      	ldr	r0, [pc, #60]	@ (c0de1af0 <ui_menu_main+0x7c>)
c0de1ab4:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1af4 <ui_menu_main+0x80>)
c0de1ab6:	4b10      	ldr	r3, [pc, #64]	@ (c0de1af8 <ui_menu_main+0x84>)
c0de1ab8:	4478      	add	r0, pc
c0de1aba:	447a      	add	r2, pc
c0de1abc:	447b      	add	r3, pc
c0de1abe:	e9cd 3200 	strd	r3, r2, [sp]
c0de1ac2:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1ac6:	2200      	movs	r2, #0
c0de1ac8:	23ff      	movs	r3, #255	@ 0xff
c0de1aca:	480c      	ldr	r0, [pc, #48]	@ (c0de1afc <ui_menu_main+0x88>)
c0de1acc:	490c      	ldr	r1, [pc, #48]	@ (c0de1b00 <ui_menu_main+0x8c>)
c0de1ace:	4478      	add	r0, pc
c0de1ad0:	4479      	add	r1, pc
c0de1ad2:	f003 f899 	bl	c0de4c08 <nbgl_useCaseHomeAndSettings>
c0de1ad6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1ad8:	00000358 	.word	0x00000358
c0de1adc:	00007782 	.word	0x00007782
c0de1ae0:	00006529 	.word	0x00006529
c0de1ae4:	00006690 	.word	0x00006690
c0de1ae8:	0000658c 	.word	0x0000658c
c0de1aec:	000063f8 	.word	0x000063f8
c0de1af0:	ffffffb1 	.word	0xffffffb1
c0de1af4:	000070a6 	.word	0x000070a6
c0de1af8:	00007098 	.word	0x00007098
c0de1afc:	00006700 	.word	0x00006700
c0de1b00:	00006227 	.word	0x00006227

c0de1b04 <controls_callback>:
c0de1b04:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1b06:	4c22      	ldr	r4, [pc, #136]	@ (c0de1b90 <controls_callback+0x8c>)
c0de1b08:	2815      	cmp	r0, #21
c0de1b0a:	f809 2004 	strb.w	r2, [r9, r4]
c0de1b0e:	d011      	beq.n	c0de1b34 <controls_callback+0x30>
c0de1b10:	2814      	cmp	r0, #20
c0de1b12:	d12a      	bne.n	c0de1b6a <controls_callback+0x66>
c0de1b14:	eb09 0504 	add.w	r5, r9, r4
c0de1b18:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1b94 <controls_callback+0x90>)
c0de1b1a:	447c      	add	r4, pc
c0de1b1c:	f000 f88a 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1b20:	7800      	ldrb	r0, [r0, #0]
c0de1b22:	fab0 f080 	clz	r0, r0
c0de1b26:	0940      	lsrs	r0, r0, #5
c0de1b28:	7328      	strb	r0, [r5, #12]
c0de1b2a:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1b2e:	f000 f881 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1b32:	e015      	b.n	c0de1b60 <controls_callback+0x5c>
c0de1b34:	4818      	ldr	r0, [pc, #96]	@ (c0de1b98 <controls_callback+0x94>)
c0de1b36:	4478      	add	r0, pc
c0de1b38:	f005 fd3e 	bl	c0de75b8 <pic>
c0de1b3c:	7840      	ldrb	r0, [r0, #1]
c0de1b3e:	b1a8      	cbz	r0, c0de1b6c <controls_callback+0x68>
c0de1b40:	eb09 0504 	add.w	r5, r9, r4
c0de1b44:	4c15      	ldr	r4, [pc, #84]	@ (c0de1b9c <controls_callback+0x98>)
c0de1b46:	447c      	add	r4, pc
c0de1b48:	f000 f874 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1b4c:	7840      	ldrb	r0, [r0, #1]
c0de1b4e:	fab0 f080 	clz	r0, r0
c0de1b52:	0940      	lsrs	r0, r0, #5
c0de1b54:	7628      	strb	r0, [r5, #24]
c0de1b56:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1b5a:	f000 f86b 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1b5e:	3001      	adds	r0, #1
c0de1b60:	f10d 010f 	add.w	r1, sp, #15
c0de1b64:	2201      	movs	r2, #1
c0de1b66:	f005 fd57 	bl	c0de7618 <nvm_write>
c0de1b6a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1b6c:	480c      	ldr	r0, [pc, #48]	@ (c0de1ba0 <controls_callback+0x9c>)
c0de1b6e:	490d      	ldr	r1, [pc, #52]	@ (c0de1ba4 <controls_callback+0xa0>)
c0de1b70:	4478      	add	r0, pc
c0de1b72:	4479      	add	r1, pc
c0de1b74:	e9cd 1000 	strd	r1, r0, [sp]
c0de1b78:	480b      	ldr	r0, [pc, #44]	@ (c0de1ba8 <controls_callback+0xa4>)
c0de1b7a:	490c      	ldr	r1, [pc, #48]	@ (c0de1bac <controls_callback+0xa8>)
c0de1b7c:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1bb0 <controls_callback+0xac>)
c0de1b7e:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1bb4 <controls_callback+0xb0>)
c0de1b80:	4478      	add	r0, pc
c0de1b82:	4479      	add	r1, pc
c0de1b84:	447a      	add	r2, pc
c0de1b86:	447b      	add	r3, pc
c0de1b88:	f003 fcd4 	bl	c0de5534 <nbgl_useCaseChoice>
c0de1b8c:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1b8e:	bf00      	nop
c0de1b90:	00000358 	.word	0x00000358
c0de1b94:	000076e2 	.word	0x000076e2
c0de1b98:	000076c6 	.word	0x000076c6
c0de1b9c:	000076b6 	.word	0x000076b6
c0de1ba0:	00000045 	.word	0x00000045
c0de1ba4:	000064e4 	.word	0x000064e4
c0de1ba8:	000062f1 	.word	0x000062f1
c0de1bac:	0000631c 	.word	0x0000631c
c0de1bb0:	000063ba 	.word	0x000063ba
c0de1bb4:	000065a0 	.word	0x000065a0

c0de1bb8 <review_warning_choice>:
c0de1bb8:	b5b0      	push	{r4, r5, r7, lr}
c0de1bba:	b086      	sub	sp, #24
c0de1bbc:	b1a8      	cbz	r0, c0de1bea <review_warning_choice+0x32>
c0de1bbe:	4c17      	ldr	r4, [pc, #92]	@ (c0de1c1c <review_warning_choice+0x64>)
c0de1bc0:	4815      	ldr	r0, [pc, #84]	@ (c0de1c18 <review_warning_choice+0x60>)
c0de1bc2:	447c      	add	r4, pc
c0de1bc4:	eb09 0500 	add.w	r5, r9, r0
c0de1bc8:	f000 f834 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1bcc:	7840      	ldrb	r0, [r0, #1]
c0de1bce:	fab0 f080 	clz	r0, r0
c0de1bd2:	0940      	lsrs	r0, r0, #5
c0de1bd4:	7628      	strb	r0, [r5, #24]
c0de1bd6:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1bda:	f000 f82b 	bl	c0de1c34 <OUTLINED_FUNCTION_0>
c0de1bde:	3001      	adds	r0, #1
c0de1be0:	f10d 0117 	add.w	r1, sp, #23
c0de1be4:	2201      	movs	r2, #1
c0de1be6:	f005 fd17 	bl	c0de7618 <nvm_write>
c0de1bea:	480b      	ldr	r0, [pc, #44]	@ (c0de1c18 <review_warning_choice+0x60>)
c0de1bec:	2100      	movs	r1, #0
c0de1bee:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1bf2:	480b      	ldr	r0, [pc, #44]	@ (c0de1c20 <review_warning_choice+0x68>)
c0de1bf4:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1c24 <review_warning_choice+0x6c>)
c0de1bf6:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1c28 <review_warning_choice+0x70>)
c0de1bf8:	4478      	add	r0, pc
c0de1bfa:	447a      	add	r2, pc
c0de1bfc:	447c      	add	r4, pc
c0de1bfe:	e9cd 4200 	strd	r4, r2, [sp]
c0de1c02:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1c06:	2200      	movs	r2, #0
c0de1c08:	4808      	ldr	r0, [pc, #32]	@ (c0de1c2c <review_warning_choice+0x74>)
c0de1c0a:	4909      	ldr	r1, [pc, #36]	@ (c0de1c30 <review_warning_choice+0x78>)
c0de1c0c:	4478      	add	r0, pc
c0de1c0e:	4479      	add	r1, pc
c0de1c10:	f002 fffa 	bl	c0de4c08 <nbgl_useCaseHomeAndSettings>
c0de1c14:	b006      	add	sp, #24
c0de1c16:	bdb0      	pop	{r4, r5, r7, pc}
c0de1c18:	00000358 	.word	0x00000358
c0de1c1c:	0000763a 	.word	0x0000763a
c0de1c20:	fffffe71 	.word	0xfffffe71
c0de1c24:	00006f66 	.word	0x00006f66
c0de1c28:	00006f58 	.word	0x00006f58
c0de1c2c:	000065c2 	.word	0x000065c2
c0de1c30:	000060e9 	.word	0x000060e9

c0de1c34 <OUTLINED_FUNCTION_0>:
c0de1c34:	4620      	mov	r0, r4
c0de1c36:	f005 bcbf 	b.w	c0de75b8 <pic>
	...

c0de1c3c <ui_display_address>:
c0de1c3c:	b570      	push	{r4, r5, r6, lr}
c0de1c3e:	b088      	sub	sp, #32
c0de1c40:	4e22      	ldr	r6, [pc, #136]	@ (c0de1ccc <ui_display_address+0x90>)
c0de1c42:	eb09 0106 	add.w	r1, r9, r6
c0de1c46:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1c4a:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1c4e:	4308      	orrs	r0, r1
c0de1c50:	d12a      	bne.n	c0de1ca8 <ui_display_address+0x6c>
c0de1c52:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1cd0 <ui_display_address+0x94>)
c0de1c54:	212b      	movs	r1, #43	@ 0x2b
c0de1c56:	eb09 0005 	add.w	r0, r9, r5
c0de1c5a:	f005 ffb9 	bl	c0de7bd0 <__aeabi_memclr>
c0de1c5e:	ac03      	add	r4, sp, #12
c0de1c60:	2114      	movs	r1, #20
c0de1c62:	4620      	mov	r0, r4
c0de1c64:	f005 ffb4 	bl	c0de7bd0 <__aeabi_memclr>
c0de1c68:	eb09 0006 	add.w	r0, r9, r6
c0de1c6c:	4621      	mov	r1, r4
c0de1c6e:	2214      	movs	r2, #20
c0de1c70:	3008      	adds	r0, #8
c0de1c72:	f7fe f9d9 	bl	c0de0028 <address_from_pubkey>
c0de1c76:	b308      	cbz	r0, c0de1cbc <ui_display_address+0x80>
c0de1c78:	eb09 0205 	add.w	r2, r9, r5
c0de1c7c:	a803      	add	r0, sp, #12
c0de1c7e:	2114      	movs	r1, #20
c0de1c80:	232b      	movs	r3, #43	@ 0x2b
c0de1c82:	f004 ff49 	bl	c0de6b18 <format_hex>
c0de1c86:	3001      	adds	r0, #1
c0de1c88:	d018      	beq.n	c0de1cbc <ui_display_address+0x80>
c0de1c8a:	4812      	ldr	r0, [pc, #72]	@ (c0de1cd4 <ui_display_address+0x98>)
c0de1c8c:	2400      	movs	r4, #0
c0de1c8e:	2100      	movs	r1, #0
c0de1c90:	4478      	add	r0, pc
c0de1c92:	e9cd 4000 	strd	r4, r0, [sp]
c0de1c96:	eb09 0005 	add.w	r0, r9, r5
c0de1c9a:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1cd8 <ui_display_address+0x9c>)
c0de1c9c:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1cdc <ui_display_address+0xa0>)
c0de1c9e:	447a      	add	r2, pc
c0de1ca0:	447b      	add	r3, pc
c0de1ca2:	f003 f92b 	bl	c0de4efc <nbgl_useCaseAddressReview>
c0de1ca6:	e00e      	b.n	c0de1cc6 <ui_display_address+0x8a>
c0de1ca8:	2000      	movs	r0, #0
c0de1caa:	f809 0006 	strb.w	r0, [r9, r6]
c0de1cae:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1cb2:	b008      	add	sp, #32
c0de1cb4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1cb8:	f000 b812 	b.w	c0de1ce0 <io_send_sw>
c0de1cbc:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1cc0:	f000 f80e 	bl	c0de1ce0 <io_send_sw>
c0de1cc4:	4604      	mov	r4, r0
c0de1cc6:	4620      	mov	r0, r4
c0de1cc8:	b008      	add	sp, #32
c0de1cca:	bd70      	pop	{r4, r5, r6, pc}
c0de1ccc:	00000000 	.word	0x00000000
c0de1cd0:	00000374 	.word	0x00000374
c0de1cd4:	0000005d 	.word	0x0000005d
c0de1cd8:	000061f6 	.word	0x000061f6
c0de1cdc:	000064f6 	.word	0x000064f6

c0de1ce0 <io_send_sw>:
c0de1ce0:	b580      	push	{r7, lr}
c0de1ce2:	4602      	mov	r2, r0
c0de1ce4:	2000      	movs	r0, #0
c0de1ce6:	2100      	movs	r1, #0
c0de1ce8:	f004 ff76 	bl	c0de6bd8 <io_send_response_buffers>
c0de1cec:	bd80      	pop	{r7, pc}
	...

c0de1cf0 <review_choice>:
c0de1cf0:	b510      	push	{r4, lr}
c0de1cf2:	4604      	mov	r4, r0
c0de1cf4:	f7ff fe5a 	bl	c0de19ac <validate_pubkey>
c0de1cf8:	2007      	movs	r0, #7
c0de1cfa:	2c00      	cmp	r4, #0
c0de1cfc:	bf18      	it	ne
c0de1cfe:	2006      	movne	r0, #6
c0de1d00:	4902      	ldr	r1, [pc, #8]	@ (c0de1d0c <review_choice+0x1c>)
c0de1d02:	4479      	add	r1, pc
c0de1d04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1d08:	f003 baea 	b.w	c0de52e0 <nbgl_useCaseReviewStatus>
c0de1d0c:	fffffd6f 	.word	0xfffffd6f

c0de1d10 <ui_display_transaction_bs_choice>:
c0de1d10:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1d12:	b085      	sub	sp, #20
c0de1d14:	4f2d      	ldr	r7, [pc, #180]	@ (c0de1dcc <ui_display_transaction_bs_choice+0xbc>)
c0de1d16:	4604      	mov	r4, r0
c0de1d18:	eb09 0007 	add.w	r0, r9, r7
c0de1d1c:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1d20:	2801      	cmp	r0, #1
c0de1d22:	d137      	bne.n	c0de1d94 <ui_display_transaction_bs_choice+0x84>
c0de1d24:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1d28:	2801      	cmp	r0, #1
c0de1d2a:	d133      	bne.n	c0de1d94 <ui_display_transaction_bs_choice+0x84>
c0de1d2c:	4e28      	ldr	r6, [pc, #160]	@ (c0de1dd0 <ui_display_transaction_bs_choice+0xc0>)
c0de1d2e:	2140      	movs	r1, #64	@ 0x40
c0de1d30:	eb09 0006 	add.w	r0, r9, r6
c0de1d34:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1d38:	4628      	mov	r0, r5
c0de1d3a:	f005 ff49 	bl	c0de7bd0 <__aeabi_memclr>
c0de1d3e:	eb09 0007 	add.w	r0, r9, r7
c0de1d42:	2114      	movs	r1, #20
c0de1d44:	462a      	mov	r2, r5
c0de1d46:	2340      	movs	r3, #64	@ 0x40
c0de1d48:	302d      	adds	r0, #45	@ 0x2d
c0de1d4a:	f004 fee5 	bl	c0de6b18 <format_hex>
c0de1d4e:	3001      	adds	r0, #1
c0de1d50:	d026      	beq.n	c0de1da0 <ui_display_transaction_bs_choice+0x90>
c0de1d52:	4920      	ldr	r1, [pc, #128]	@ (c0de1dd4 <ui_display_transaction_bs_choice+0xc4>)
c0de1d54:	eb09 0006 	add.w	r0, r9, r6
c0de1d58:	4602      	mov	r2, r0
c0de1d5a:	4479      	add	r1, pc
c0de1d5c:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1d60:	2101      	movs	r1, #1
c0de1d62:	72c1      	strb	r1, [r0, #11]
c0de1d64:	7201      	strb	r1, [r0, #8]
c0de1d66:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1d6a:	f849 2006 	str.w	r2, [r9, r6]
c0de1d6e:	6181      	str	r1, [r0, #24]
c0de1d70:	2100      	movs	r1, #0
c0de1d72:	4819      	ldr	r0, [pc, #100]	@ (c0de1dd8 <ui_display_transaction_bs_choice+0xc8>)
c0de1d74:	4478      	add	r0, pc
c0de1d76:	b1d4      	cbz	r4, c0de1dae <ui_display_transaction_bs_choice+0x9e>
c0de1d78:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1d7c:	e9cd 1100 	strd	r1, r1, [sp]
c0de1d80:	eb09 0106 	add.w	r1, r9, r6
c0de1d84:	2000      	movs	r0, #0
c0de1d86:	4a15      	ldr	r2, [pc, #84]	@ (c0de1ddc <ui_display_transaction_bs_choice+0xcc>)
c0de1d88:	4b15      	ldr	r3, [pc, #84]	@ (c0de1de0 <ui_display_transaction_bs_choice+0xd0>)
c0de1d8a:	447a      	add	r2, pc
c0de1d8c:	447b      	add	r3, pc
c0de1d8e:	f003 f8a3 	bl	c0de4ed8 <nbgl_useCaseReviewBlindSigning>
c0de1d92:	e018      	b.n	c0de1dc6 <ui_display_transaction_bs_choice+0xb6>
c0de1d94:	2000      	movs	r0, #0
c0de1d96:	f809 0007 	strb.w	r0, [r9, r7]
c0de1d9a:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1d9e:	e001      	b.n	c0de1da4 <ui_display_transaction_bs_choice+0x94>
c0de1da0:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1da4:	b005      	add	sp, #20
c0de1da6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1daa:	f000 b81f 	b.w	c0de1dec <io_send_sw>
c0de1dae:	e9cd 1100 	strd	r1, r1, [sp]
c0de1db2:	9002      	str	r0, [sp, #8]
c0de1db4:	eb09 0106 	add.w	r1, r9, r6
c0de1db8:	2000      	movs	r0, #0
c0de1dba:	4a0a      	ldr	r2, [pc, #40]	@ (c0de1de4 <ui_display_transaction_bs_choice+0xd4>)
c0de1dbc:	4b0a      	ldr	r3, [pc, #40]	@ (c0de1de8 <ui_display_transaction_bs_choice+0xd8>)
c0de1dbe:	447a      	add	r2, pc
c0de1dc0:	447b      	add	r3, pc
c0de1dc2:	f002 ffc9 	bl	c0de4d58 <nbgl_useCaseReview>
c0de1dc6:	2000      	movs	r0, #0
c0de1dc8:	b005      	add	sp, #20
c0de1dca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1dcc:	00000000 	.word	0x00000000
c0de1dd0:	000003a0 	.word	0x000003a0
c0de1dd4:	000063e2 	.word	0x000063e2
c0de1dd8:	00000085 	.word	0x00000085
c0de1ddc:	0000610a 	.word	0x0000610a
c0de1de0:	0000641d 	.word	0x0000641d
c0de1de4:	000060d6 	.word	0x000060d6
c0de1de8:	000063e9 	.word	0x000063e9

c0de1dec <io_send_sw>:
c0de1dec:	b580      	push	{r7, lr}
c0de1dee:	4602      	mov	r2, r0
c0de1df0:	2000      	movs	r0, #0
c0de1df2:	2100      	movs	r1, #0
c0de1df4:	f004 fef0 	bl	c0de6bd8 <io_send_response_buffers>
c0de1df8:	bd80      	pop	{r7, pc}
	...

c0de1dfc <review_choice>:
c0de1dfc:	b510      	push	{r4, lr}
c0de1dfe:	4604      	mov	r4, r0
c0de1e00:	f7ff fde2 	bl	c0de19c8 <validate_transaction>
c0de1e04:	4903      	ldr	r1, [pc, #12]	@ (c0de1e14 <review_choice+0x18>)
c0de1e06:	f084 0001 	eor.w	r0, r4, #1
c0de1e0a:	4479      	add	r1, pc
c0de1e0c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1e10:	f003 ba66 	b.w	c0de52e0 <nbgl_useCaseReviewStatus>
c0de1e14:	fffffc67 	.word	0xfffffc67

c0de1e18 <ui_display_blind_signed_transaction>:
c0de1e18:	2001      	movs	r0, #1
c0de1e1a:	f7ff bf79 	b.w	c0de1d10 <ui_display_transaction_bs_choice>

c0de1e1e <ui_display_transaction>:
c0de1e1e:	2000      	movs	r0, #0
c0de1e20:	f7ff bf76 	b.w	c0de1d10 <ui_display_transaction_bs_choice>

c0de1e24 <zkn_prv_hash>:
c0de1e24:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1e28:	460c      	mov	r4, r1
c0de1e2a:	e9cd 0200 	strd	r0, r2, [sp]
c0de1e2e:	4668      	mov	r0, sp
c0de1e30:	2101      	movs	r1, #1
c0de1e32:	2601      	movs	r6, #1
c0de1e34:	4622      	mov	r2, r4
c0de1e36:	f005 f96c 	bl	c0de7112 <cx_blake2b_512_hash_iovec>
c0de1e3a:	4605      	mov	r5, r0
c0de1e3c:	bb18      	cbnz	r0, c0de1e86 <zkn_prv_hash+0x62>
c0de1e3e:	7820      	ldrb	r0, [r4, #0]
c0de1e40:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1e44:	7020      	strb	r0, [r4, #0]
c0de1e46:	7fe0      	ldrb	r0, [r4, #31]
c0de1e48:	f366 109f 	bfi	r0, r6, #6, #26
c0de1e4c:	77e0      	strb	r0, [r4, #31]
c0de1e4e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1e52:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1e8c <zkn_prv_hash+0x68>)
c0de1e54:	447e      	add	r6, pc
c0de1e56:	47b0      	blx	r6
c0de1e58:	4680      	mov	r8, r0
c0de1e5a:	468a      	mov	sl, r1
c0de1e5c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1e60:	47b0      	blx	r6
c0de1e62:	4683      	mov	fp, r0
c0de1e64:	460f      	mov	r7, r1
c0de1e66:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1e6a:	47b0      	blx	r6
c0de1e6c:	e9c4 0100 	strd	r0, r1, [r4]
c0de1e70:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1e74:	47b0      	blx	r6
c0de1e76:	f104 0208 	add.w	r2, r4, #8
c0de1e7a:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1e7e:	f104 0014 	add.w	r0, r4, #20
c0de1e82:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1e86:	4628      	mov	r0, r5
c0de1e88:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1e8c:	0000033d 	.word	0x0000033d

c0de1e90 <zkn_prv2pub>:
c0de1e90:	b570      	push	{r4, r5, r6, lr}
c0de1e92:	b092      	sub	sp, #72	@ 0x48
c0de1e94:	4614      	mov	r4, r2
c0de1e96:	6802      	ldr	r2, [r0, #0]
c0de1e98:	ae02      	add	r6, sp, #8
c0de1e9a:	4605      	mov	r5, r0
c0de1e9c:	4608      	mov	r0, r1
c0de1e9e:	4631      	mov	r1, r6
c0de1ea0:	f7ff ffc0 	bl	c0de1e24 <zkn_prv_hash>
c0de1ea4:	2000      	movs	r0, #0
c0de1ea6:	2100      	movs	r1, #0
c0de1ea8:	2820      	cmp	r0, #32
c0de1eaa:	d009      	beq.n	c0de1ec0 <zkn_prv2pub+0x30>
c0de1eac:	5c32      	ldrb	r2, [r6, r0]
c0de1eae:	0149      	lsls	r1, r1, #5
c0de1eb0:	0613      	lsls	r3, r2, #24
c0de1eb2:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1eb6:	5431      	strb	r1, [r6, r0]
c0de1eb8:	f002 0107 	and.w	r1, r2, #7
c0de1ebc:	3001      	adds	r0, #1
c0de1ebe:	e7f3      	b.n	c0de1ea8 <zkn_prv2pub+0x18>
c0de1ec0:	4629      	mov	r1, r5
c0de1ec2:	4628      	mov	r0, r5
c0de1ec4:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1ec8:	9400      	str	r4, [sp, #0]
c0de1eca:	aa02      	add	r2, sp, #8
c0de1ecc:	f001 f8a2 	bl	c0de3014 <tEdwards_scalarMul>
c0de1ed0:	b918      	cbnz	r0, c0de1eda <zkn_prv2pub+0x4a>
c0de1ed2:	4628      	mov	r0, r5
c0de1ed4:	4621      	mov	r1, r4
c0de1ed6:	f000 ffd8 	bl	c0de2e8a <tEdwards_normalize>
c0de1eda:	b012      	add	sp, #72	@ 0x48
c0de1edc:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1ee0 <EddsaPoseidon_Sign_final>:
c0de1ee0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ee4:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1ee8:	4605      	mov	r5, r0
c0de1eea:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1eec:	2820      	cmp	r0, #32
c0de1eee:	d118      	bne.n	c0de1f22 <EddsaPoseidon_Sign_final+0x42>
c0de1ef0:	460e      	mov	r6, r1
c0de1ef2:	a982      	add	r1, sp, #520	@ 0x208
c0de1ef4:	4628      	mov	r0, r5
c0de1ef6:	461f      	mov	r7, r3
c0de1ef8:	4692      	mov	sl, r2
c0de1efa:	f000 fc96 	bl	c0de282a <tEdwards_alloc>
c0de1efe:	b988      	cbnz	r0, c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f00:	682a      	ldr	r2, [r5, #0]
c0de1f02:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1f04:	4630      	mov	r0, r6
c0de1f06:	4621      	mov	r1, r4
c0de1f08:	f7ff ff8c 	bl	c0de1e24 <zkn_prv_hash>
c0de1f0c:	b950      	cbnz	r0, c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f0e:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1f12:	2000      	movs	r0, #0
c0de1f14:	a95a      	add	r1, sp, #360	@ 0x168
c0de1f16:	2820      	cmp	r0, #32
c0de1f18:	d008      	beq.n	c0de1f2c <EddsaPoseidon_Sign_final+0x4c>
c0de1f1a:	5c22      	ldrb	r2, [r4, r0]
c0de1f1c:	540a      	strb	r2, [r1, r0]
c0de1f1e:	3001      	adds	r0, #1
c0de1f20:	e7f9      	b.n	c0de1f16 <EddsaPoseidon_Sign_final+0x36>
c0de1f22:	489a      	ldr	r0, [pc, #616]	@ (c0de218c <EddsaPoseidon_Sign_final+0x2ac>)
c0de1f24:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1f28:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f2c:	a812      	add	r0, sp, #72	@ 0x48
c0de1f2e:	2109      	movs	r1, #9
c0de1f30:	2240      	movs	r2, #64	@ 0x40
c0de1f32:	f005 f918 	bl	c0de7166 <cx_hash_init_ex>
c0de1f36:	2800      	cmp	r0, #0
c0de1f38:	d1f4      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f3a:	f104 0120 	add.w	r1, r4, #32
c0de1f3e:	a812      	add	r0, sp, #72	@ 0x48
c0de1f40:	2220      	movs	r2, #32
c0de1f42:	f005 f915 	bl	c0de7170 <cx_hash_update>
c0de1f46:	2800      	cmp	r0, #0
c0de1f48:	d1ec      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f4a:	a812      	add	r0, sp, #72	@ 0x48
c0de1f4c:	4639      	mov	r1, r7
c0de1f4e:	2220      	movs	r2, #32
c0de1f50:	f005 f90e 	bl	c0de7170 <cx_hash_update>
c0de1f54:	2800      	cmp	r0, #0
c0de1f56:	d1e5      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f58:	a812      	add	r0, sp, #72	@ 0x48
c0de1f5a:	ac62      	add	r4, sp, #392	@ 0x188
c0de1f5c:	4621      	mov	r1, r4
c0de1f5e:	f005 f8f8 	bl	c0de7152 <cx_hash_final>
c0de1f62:	2800      	cmp	r0, #0
c0de1f64:	d1de      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f66:	203f      	movs	r0, #63	@ 0x3f
c0de1f68:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1f6a:	1c42      	adds	r2, r0, #1
c0de1f6c:	d004      	beq.n	c0de1f78 <EddsaPoseidon_Sign_final+0x98>
c0de1f6e:	5c22      	ldrb	r2, [r4, r0]
c0de1f70:	3801      	subs	r0, #1
c0de1f72:	f801 2b01 	strb.w	r2, [r1], #1
c0de1f76:	e7f8      	b.n	c0de1f6a <EddsaPoseidon_Sign_final+0x8a>
c0de1f78:	a889      	add	r0, sp, #548	@ 0x224
c0de1f7a:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1f7c:	2140      	movs	r1, #64	@ 0x40
c0de1f7e:	2340      	movs	r3, #64	@ 0x40
c0de1f80:	f005 fb70 	bl	c0de7664 <cx_bn_alloc_init>
c0de1f84:	2800      	cmp	r0, #0
c0de1f86:	d1cd      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f88:	a887      	add	r0, sp, #540	@ 0x21c
c0de1f8a:	2140      	movs	r1, #64	@ 0x40
c0de1f8c:	f005 fb60 	bl	c0de7650 <cx_bn_alloc>
c0de1f90:	2800      	cmp	r0, #0
c0de1f92:	d1c7      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f94:	497e      	ldr	r1, [pc, #504]	@ (c0de2190 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1f96:	f10d 0808 	add.w	r8, sp, #8
c0de1f9a:	2240      	movs	r2, #64	@ 0x40
c0de1f9c:	4640      	mov	r0, r8
c0de1f9e:	4479      	add	r1, pc
c0de1fa0:	f005 fe0c 	bl	c0de7bbc <__aeabi_memcpy>
c0de1fa4:	a888      	add	r0, sp, #544	@ 0x220
c0de1fa6:	2140      	movs	r1, #64	@ 0x40
c0de1fa8:	4642      	mov	r2, r8
c0de1faa:	2340      	movs	r3, #64	@ 0x40
c0de1fac:	f005 fb5a 	bl	c0de7664 <cx_bn_alloc_init>
c0de1fb0:	2800      	cmp	r0, #0
c0de1fb2:	d1b7      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fb4:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1fb6:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1fba:	f005 fbe7 	bl	c0de778c <cx_bn_reduce>
c0de1fbe:	2800      	cmp	r0, #0
c0de1fc0:	d1b0      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fc2:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1fc4:	f105 010c 	add.w	r1, r5, #12
c0de1fc8:	ab82      	add	r3, sp, #520	@ 0x208
c0de1fca:	4628      	mov	r0, r5
c0de1fcc:	f000 ffbc 	bl	c0de2f48 <tEdwards_scalarMul_bn>
c0de1fd0:	2800      	cmp	r0, #0
c0de1fd2:	d1a7      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fd4:	a982      	add	r1, sp, #520	@ 0x208
c0de1fd6:	4628      	mov	r0, r5
c0de1fd8:	f000 ff57 	bl	c0de2e8a <tEdwards_normalize>
c0de1fdc:	2800      	cmp	r0, #0
c0de1fde:	d1a1      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fe0:	f10b 0620 	add.w	r6, fp, #32
c0de1fe4:	a982      	add	r1, sp, #520	@ 0x208
c0de1fe6:	4628      	mov	r0, r5
c0de1fe8:	465a      	mov	r2, fp
c0de1fea:	4633      	mov	r3, r6
c0de1fec:	f000 ff27 	bl	c0de2e3e <tEdwards_export>
c0de1ff0:	2800      	cmp	r0, #0
c0de1ff2:	d197      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1ff4:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1ff6:	a952      	add	r1, sp, #328	@ 0x148
c0de1ff8:	f000 f8d0 	bl	c0de219c <OUTLINED_FUNCTION_0>
c0de1ffc:	2800      	cmp	r0, #0
c0de1ffe:	d191      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2000:	a888      	add	r0, sp, #544	@ 0x220
c0de2002:	f005 fb3b 	bl	c0de767c <cx_bn_destroy>
c0de2006:	2800      	cmp	r0, #0
c0de2008:	f47f af8c 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de200c:	a889      	add	r0, sp, #548	@ 0x224
c0de200e:	f005 fb35 	bl	c0de767c <cx_bn_destroy>
c0de2012:	2800      	cmp	r0, #0
c0de2014:	f47f af86 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2018:	a887      	add	r0, sp, #540	@ 0x21c
c0de201a:	f005 fb2f 	bl	c0de767c <cx_bn_destroy>
c0de201e:	2800      	cmp	r0, #0
c0de2020:	f47f af80 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2024:	4628      	mov	r0, r5
c0de2026:	f000 feae 	bl	c0de2d86 <tEdwards_Curve_partial_destroy>
c0de202a:	2800      	cmp	r0, #0
c0de202c:	f47f af7a 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2030:	f105 0420 	add.w	r4, r5, #32
c0de2034:	a88a      	add	r0, sp, #552	@ 0x228
c0de2036:	f000 f8b4 	bl	c0de21a2 <OUTLINED_FUNCTION_1>
c0de203a:	2800      	cmp	r0, #0
c0de203c:	f47f af72 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2040:	201f      	movs	r0, #31
c0de2042:	a962      	add	r1, sp, #392	@ 0x188
c0de2044:	1c42      	adds	r2, r0, #1
c0de2046:	d004      	beq.n	c0de2052 <EddsaPoseidon_Sign_final+0x172>
c0de2048:	5c3a      	ldrb	r2, [r7, r0]
c0de204a:	3801      	subs	r0, #1
c0de204c:	f801 2b01 	strb.w	r2, [r1], #1
c0de2050:	e7f8      	b.n	c0de2044 <EddsaPoseidon_Sign_final+0x164>
c0de2052:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de2054:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de2056:	f005 fb31 	bl	c0de76bc <cx_bn_copy>
c0de205a:	2800      	cmp	r0, #0
c0de205c:	f47f af62 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2060:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de2062:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de2064:	f005 fb2a 	bl	c0de76bc <cx_bn_copy>
c0de2068:	2800      	cmp	r0, #0
c0de206a:	f47f af5b 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de206e:	f8da 1000 	ldr.w	r1, [sl]
c0de2072:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de2074:	f005 fb22 	bl	c0de76bc <cx_bn_copy>
c0de2078:	2800      	cmp	r0, #0
c0de207a:	f47f af53 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de207e:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de2082:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de2084:	f005 fb1a 	bl	c0de76bc <cx_bn_copy>
c0de2088:	2800      	cmp	r0, #0
c0de208a:	f47f af4b 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de208e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2090:	a962      	add	r1, sp, #392	@ 0x188
c0de2092:	2220      	movs	r2, #32
c0de2094:	f005 fb06 	bl	c0de76a4 <cx_bn_init>
c0de2098:	2800      	cmp	r0, #0
c0de209a:	f47f af43 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de209e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de20a0:	4622      	mov	r2, r4
c0de20a2:	4601      	mov	r1, r0
c0de20a4:	f005 fba8 	bl	c0de77f8 <cx_mont_to_montgomery>
c0de20a8:	2800      	cmp	r0, #0
c0de20aa:	f47f af3b 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20ae:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de20b0:	4659      	mov	r1, fp
c0de20b2:	f000 f873 	bl	c0de219c <OUTLINED_FUNCTION_0>
c0de20b6:	2800      	cmp	r0, #0
c0de20b8:	f47f af34 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20bc:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de20be:	4631      	mov	r1, r6
c0de20c0:	f000 f86c 	bl	c0de219c <OUTLINED_FUNCTION_0>
c0de20c4:	2800      	cmp	r0, #0
c0de20c6:	f47f af2d 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20ca:	a982      	add	r1, sp, #520	@ 0x208
c0de20cc:	4628      	mov	r0, r5
c0de20ce:	f000 fbc1 	bl	c0de2854 <tEdwards_destroy>
c0de20d2:	2800      	cmp	r0, #0
c0de20d4:	f47f af26 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20d8:	a885      	add	r0, sp, #532	@ 0x214
c0de20da:	2120      	movs	r1, #32
c0de20dc:	f005 fab8 	bl	c0de7650 <cx_bn_alloc>
c0de20e0:	2800      	cmp	r0, #0
c0de20e2:	f47f af1f 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20e6:	a88a      	add	r0, sp, #552	@ 0x228
c0de20e8:	aa85      	add	r2, sp, #532	@ 0x214
c0de20ea:	2100      	movs	r1, #0
c0de20ec:	2301      	movs	r3, #1
c0de20ee:	f001 f91d 	bl	c0de332c <Poseidon>
c0de20f2:	2800      	cmp	r0, #0
c0de20f4:	f47f af16 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20f8:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de20fa:	4622      	mov	r2, r4
c0de20fc:	4601      	mov	r1, r0
c0de20fe:	f005 fb87 	bl	c0de7810 <cx_mont_from_montgomery>
c0de2102:	2800      	cmp	r0, #0
c0de2104:	f47f af0e 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2108:	a886      	add	r0, sp, #536	@ 0x218
c0de210a:	aa5a      	add	r2, sp, #360	@ 0x168
c0de210c:	2120      	movs	r1, #32
c0de210e:	2320      	movs	r3, #32
c0de2110:	f005 faa8 	bl	c0de7664 <cx_bn_alloc_init>
c0de2114:	2800      	cmp	r0, #0
c0de2116:	f47f af05 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de211a:	a801      	add	r0, sp, #4
c0de211c:	2120      	movs	r1, #32
c0de211e:	f005 fa97 	bl	c0de7650 <cx_bn_alloc>
c0de2122:	2800      	cmp	r0, #0
c0de2124:	f47f aefe 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2128:	f108 0220 	add.w	r2, r8, #32
c0de212c:	a888      	add	r0, sp, #544	@ 0x220
c0de212e:	2120      	movs	r1, #32
c0de2130:	2320      	movs	r3, #32
c0de2132:	f005 fa97 	bl	c0de7664 <cx_bn_alloc_init>
c0de2136:	2800      	cmp	r0, #0
c0de2138:	f47f aef4 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de213c:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de213e:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de2142:	9801      	ldr	r0, [sp, #4]
c0de2144:	f005 fb16 	bl	c0de7774 <cx_bn_mod_mul>
c0de2148:	2800      	cmp	r0, #0
c0de214a:	f47f aeeb 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de214e:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2150:	a952      	add	r1, sp, #328	@ 0x148
c0de2152:	2220      	movs	r2, #32
c0de2154:	f005 faa6 	bl	c0de76a4 <cx_bn_init>
c0de2158:	2800      	cmp	r0, #0
c0de215a:	f47f aee3 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de215e:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2160:	9a01      	ldr	r2, [sp, #4]
c0de2162:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de2166:	f005 faed 	bl	c0de7744 <cx_bn_mod_add>
c0de216a:	2800      	cmp	r0, #0
c0de216c:	f47f aeda 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2170:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de2172:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de2176:	f005 fb09 	bl	c0de778c <cx_bn_reduce>
c0de217a:	2800      	cmp	r0, #0
c0de217c:	f47f aed2 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2180:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2182:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de2186:	f000 f809 	bl	c0de219c <OUTLINED_FUNCTION_0>
c0de218a:	e6cb      	b.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de218c:	5a4b4e03 	.word	0x5a4b4e03
c0de2190:	00006c1a 	.word	0x00006c1a

c0de2194 <rev64>:
c0de2194:	ba0a      	rev	r2, r1
c0de2196:	ba01      	rev	r1, r0
c0de2198:	4610      	mov	r0, r2
c0de219a:	4770      	bx	lr

c0de219c <OUTLINED_FUNCTION_0>:
c0de219c:	2220      	movs	r2, #32
c0de219e:	f005 baa1 	b.w	c0de76e4 <cx_bn_export>

c0de21a2 <OUTLINED_FUNCTION_1>:
c0de21a2:	2105      	movs	r1, #5
c0de21a4:	2205      	movs	r2, #5
c0de21a6:	4623      	mov	r3, r4
c0de21a8:	f001 b85a 	b.w	c0de3260 <Poseidon_alloc_init>

c0de21ac <zkn_frost_interpolate>:
c0de21ac:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de21b0:	b085      	sub	sp, #20
c0de21b2:	460e      	mov	r6, r1
c0de21b4:	4607      	mov	r7, r0
c0de21b6:	a803      	add	r0, sp, #12
c0de21b8:	2120      	movs	r1, #32
c0de21ba:	f000 fb2a 	bl	c0de2812 <OUTLINED_FUNCTION_2>
c0de21be:	b998      	cbnz	r0, c0de21e8 <zkn_frost_interpolate+0x3c>
c0de21c0:	a802      	add	r0, sp, #8
c0de21c2:	2120      	movs	r1, #32
c0de21c4:	f005 fa44 	bl	c0de7650 <cx_bn_alloc>
c0de21c8:	b970      	cbnz	r0, c0de21e8 <zkn_frost_interpolate+0x3c>
c0de21ca:	a801      	add	r0, sp, #4
c0de21cc:	2120      	movs	r1, #32
c0de21ce:	f005 fa3f 	bl	c0de7650 <cx_bn_alloc>
c0de21d2:	b948      	cbnz	r0, c0de21e8 <zkn_frost_interpolate+0x3c>
c0de21d4:	9803      	ldr	r0, [sp, #12]
c0de21d6:	2101      	movs	r1, #1
c0de21d8:	f005 fa7a 	bl	c0de76d0 <cx_bn_set_u32>
c0de21dc:	b920      	cbnz	r0, c0de21e8 <zkn_frost_interpolate+0x3c>
c0de21de:	9802      	ldr	r0, [sp, #8]
c0de21e0:	2101      	movs	r1, #1
c0de21e2:	f005 fa75 	bl	c0de76d0 <cx_bn_set_u32>
c0de21e6:	b110      	cbz	r0, c0de21ee <zkn_frost_interpolate+0x42>
c0de21e8:	b005      	add	sp, #20
c0de21ea:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de21ee:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de21f2:	f10d 0a10 	add.w	sl, sp, #16
c0de21f6:	b31e      	cbz	r6, c0de2240 <zkn_frost_interpolate+0x94>
c0de21f8:	6838      	ldr	r0, [r7, #0]
c0de21fa:	4629      	mov	r1, r5
c0de21fc:	4652      	mov	r2, sl
c0de21fe:	f005 fa7d 	bl	c0de76fc <cx_bn_cmp>
c0de2202:	2800      	cmp	r0, #0
c0de2204:	d1f0      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de2206:	9804      	ldr	r0, [sp, #16]
c0de2208:	b1b8      	cbz	r0, c0de223a <zkn_frost_interpolate+0x8e>
c0de220a:	9802      	ldr	r0, [sp, #8]
c0de220c:	683a      	ldr	r2, [r7, #0]
c0de220e:	4623      	mov	r3, r4
c0de2210:	4601      	mov	r1, r0
c0de2212:	f005 faaf 	bl	c0de7774 <cx_bn_mod_mul>
c0de2216:	2800      	cmp	r0, #0
c0de2218:	d1e6      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de221a:	6839      	ldr	r1, [r7, #0]
c0de221c:	9801      	ldr	r0, [sp, #4]
c0de221e:	462a      	mov	r2, r5
c0de2220:	4623      	mov	r3, r4
c0de2222:	f005 fa9b 	bl	c0de775c <cx_bn_mod_sub>
c0de2226:	2800      	cmp	r0, #0
c0de2228:	d1de      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de222a:	9803      	ldr	r0, [sp, #12]
c0de222c:	9a01      	ldr	r2, [sp, #4]
c0de222e:	4623      	mov	r3, r4
c0de2230:	4601      	mov	r1, r0
c0de2232:	f005 fa9f 	bl	c0de7774 <cx_bn_mod_mul>
c0de2236:	2800      	cmp	r0, #0
c0de2238:	d1d6      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de223a:	3704      	adds	r7, #4
c0de223c:	3e01      	subs	r6, #1
c0de223e:	e7da      	b.n	c0de21f6 <zkn_frost_interpolate+0x4a>
c0de2240:	9903      	ldr	r1, [sp, #12]
c0de2242:	4640      	mov	r0, r8
c0de2244:	4622      	mov	r2, r4
c0de2246:	f005 faad 	bl	c0de77a4 <cx_bn_mod_invert_nprime>
c0de224a:	2800      	cmp	r0, #0
c0de224c:	d1cc      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de224e:	9a02      	ldr	r2, [sp, #8]
c0de2250:	4640      	mov	r0, r8
c0de2252:	4641      	mov	r1, r8
c0de2254:	4623      	mov	r3, r4
c0de2256:	f005 fa8d 	bl	c0de7774 <cx_bn_mod_mul>
c0de225a:	2800      	cmp	r0, #0
c0de225c:	d1c4      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de225e:	a803      	add	r0, sp, #12
c0de2260:	f005 fa0c 	bl	c0de767c <cx_bn_destroy>
c0de2264:	2800      	cmp	r0, #0
c0de2266:	d1bf      	bne.n	c0de21e8 <zkn_frost_interpolate+0x3c>
c0de2268:	a802      	add	r0, sp, #8
c0de226a:	f005 fa07 	bl	c0de767c <cx_bn_destroy>
c0de226e:	e7bb      	b.n	c0de21e8 <zkn_frost_interpolate+0x3c>

c0de2270 <zkn_frost_interpolate_secrets>:
c0de2270:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de2274:	460f      	mov	r7, r1
c0de2276:	4606      	mov	r6, r0
c0de2278:	a802      	add	r0, sp, #8
c0de227a:	2120      	movs	r1, #32
c0de227c:	461c      	mov	r4, r3
c0de227e:	4692      	mov	sl, r2
c0de2280:	f005 f9e6 	bl	c0de7650 <cx_bn_alloc>
c0de2284:	b108      	cbz	r0, c0de228a <zkn_frost_interpolate_secrets+0x1a>
c0de2286:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de228a:	a801      	add	r0, sp, #4
c0de228c:	2120      	movs	r1, #32
c0de228e:	f005 f9df 	bl	c0de7650 <cx_bn_alloc>
c0de2292:	2800      	cmp	r0, #0
c0de2294:	d1f7      	bne.n	c0de2286 <zkn_frost_interpolate_secrets+0x16>
c0de2296:	9802      	ldr	r0, [sp, #8]
c0de2298:	2100      	movs	r1, #0
c0de229a:	f005 fa19 	bl	c0de76d0 <cx_bn_set_u32>
c0de229e:	2800      	cmp	r0, #0
c0de22a0:	d1f1      	bne.n	c0de2286 <zkn_frost_interpolate_secrets+0x16>
c0de22a2:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de22a6:	2500      	movs	r5, #0
c0de22a8:	42ac      	cmp	r4, r5
c0de22aa:	d01d      	beq.n	c0de22e8 <zkn_frost_interpolate_secrets+0x78>
c0de22ac:	9801      	ldr	r0, [sp, #4]
c0de22ae:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de22b2:	68b3      	ldr	r3, [r6, #8]
c0de22b4:	4621      	mov	r1, r4
c0de22b6:	9000      	str	r0, [sp, #0]
c0de22b8:	4638      	mov	r0, r7
c0de22ba:	f7ff ff77 	bl	c0de21ac <zkn_frost_interpolate>
c0de22be:	2800      	cmp	r0, #0
c0de22c0:	d1e1      	bne.n	c0de2286 <zkn_frost_interpolate_secrets+0x16>
c0de22c2:	9801      	ldr	r0, [sp, #4]
c0de22c4:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de22c8:	68b3      	ldr	r3, [r6, #8]
c0de22ca:	4601      	mov	r1, r0
c0de22cc:	f005 fa52 	bl	c0de7774 <cx_bn_mod_mul>
c0de22d0:	2800      	cmp	r0, #0
c0de22d2:	d1d8      	bne.n	c0de2286 <zkn_frost_interpolate_secrets+0x16>
c0de22d4:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de22d8:	68b3      	ldr	r3, [r6, #8]
c0de22da:	4601      	mov	r1, r0
c0de22dc:	f005 fa32 	bl	c0de7744 <cx_bn_mod_add>
c0de22e0:	3501      	adds	r5, #1
c0de22e2:	2800      	cmp	r0, #0
c0de22e4:	d0e0      	beq.n	c0de22a8 <zkn_frost_interpolate_secrets+0x38>
c0de22e6:	e7ce      	b.n	c0de2286 <zkn_frost_interpolate_secrets+0x16>
c0de22e8:	68b2      	ldr	r2, [r6, #8]
c0de22ea:	9902      	ldr	r1, [sp, #8]
c0de22ec:	4640      	mov	r0, r8
c0de22ee:	f005 fa4d 	bl	c0de778c <cx_bn_reduce>
c0de22f2:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de22f6 <zkn_evalshare>:
c0de22f6:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de22fa:	460e      	mov	r6, r1
c0de22fc:	6801      	ldr	r1, [r0, #0]
c0de22fe:	4607      	mov	r7, r0
c0de2300:	a801      	add	r0, sp, #4
c0de2302:	f000 fa86 	bl	c0de2812 <OUTLINED_FUNCTION_2>
c0de2306:	b108      	cbz	r0, c0de230c <zkn_evalshare+0x16>
c0de2308:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de230c:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2310:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2314:	4640      	mov	r0, r8
c0de2316:	f005 f9d1 	bl	c0de76bc <cx_bn_copy>
c0de231a:	2800      	cmp	r0, #0
c0de231c:	d1f4      	bne.n	c0de2308 <zkn_evalshare+0x12>
c0de231e:	3e04      	subs	r6, #4
c0de2320:	68bb      	ldr	r3, [r7, #8]
c0de2322:	9801      	ldr	r0, [sp, #4]
c0de2324:	4641      	mov	r1, r8
c0de2326:	b17d      	cbz	r5, c0de2348 <zkn_evalshare+0x52>
c0de2328:	4622      	mov	r2, r4
c0de232a:	f005 fa23 	bl	c0de7774 <cx_bn_mod_mul>
c0de232e:	2800      	cmp	r0, #0
c0de2330:	d1ea      	bne.n	c0de2308 <zkn_evalshare+0x12>
c0de2332:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de2336:	68bb      	ldr	r3, [r7, #8]
c0de2338:	9901      	ldr	r1, [sp, #4]
c0de233a:	4640      	mov	r0, r8
c0de233c:	f005 fa02 	bl	c0de7744 <cx_bn_mod_add>
c0de2340:	3d01      	subs	r5, #1
c0de2342:	2800      	cmp	r0, #0
c0de2344:	d0ec      	beq.n	c0de2320 <zkn_evalshare+0x2a>
c0de2346:	e7df      	b.n	c0de2308 <zkn_evalshare+0x12>
c0de2348:	461a      	mov	r2, r3
c0de234a:	f005 fa1f 	bl	c0de778c <cx_bn_reduce>
c0de234e:	2800      	cmp	r0, #0
c0de2350:	d1da      	bne.n	c0de2308 <zkn_evalshare+0x12>
c0de2352:	9901      	ldr	r1, [sp, #4]
c0de2354:	4640      	mov	r0, r8
c0de2356:	f005 f9b1 	bl	c0de76bc <cx_bn_copy>
c0de235a:	2800      	cmp	r0, #0
c0de235c:	d1d4      	bne.n	c0de2308 <zkn_evalshare+0x12>
c0de235e:	a801      	add	r0, sp, #4
c0de2360:	f005 f98c 	bl	c0de767c <cx_bn_destroy>
c0de2364:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2368 <zkn_frost_nonce_generate>:
c0de2368:	b5b0      	push	{r4, r5, r7, lr}
c0de236a:	b092      	sub	sp, #72	@ 0x48
c0de236c:	466d      	mov	r5, sp
c0de236e:	4604      	mov	r4, r0
c0de2370:	2120      	movs	r1, #32
c0de2372:	4628      	mov	r0, r5
c0de2374:	f004 ff01 	bl	c0de717a <cx_rng_no_throw>
c0de2378:	4808      	ldr	r0, [pc, #32]	@ (c0de239c <zkn_frost_nonce_generate+0x34>)
c0de237a:	2220      	movs	r2, #32
c0de237c:	eb09 0100 	add.w	r1, r9, r0
c0de2380:	f105 0020 	add.w	r0, r5, #32
c0de2384:	f005 fc1a 	bl	c0de7bbc <__aeabi_memcpy>
c0de2388:	2040      	movs	r0, #64	@ 0x40
c0de238a:	2101      	movs	r1, #1
c0de238c:	4622      	mov	r2, r4
c0de238e:	e9cd 5010 	strd	r5, r0, [sp, #64]	@ 0x40
c0de2392:	a810      	add	r0, sp, #64	@ 0x40
c0de2394:	f004 fe7e 	bl	c0de7094 <cx_sha256_hash_iovec>
c0de2398:	b012      	add	sp, #72	@ 0x48
c0de239a:	bdb0      	pop	{r4, r5, r7, pc}
c0de239c:	000002f0 	.word	0x000002f0

c0de23a0 <zkn_frost_commit>:
c0de23a0:	b510      	push	{r4, lr}
c0de23a2:	4608      	mov	r0, r1
c0de23a4:	460c      	mov	r4, r1
c0de23a6:	f7ff ffdf 	bl	c0de2368 <zkn_frost_nonce_generate>
c0de23aa:	b100      	cbz	r0, c0de23ae <zkn_frost_commit+0xe>
c0de23ac:	bd10      	pop	{r4, pc}
c0de23ae:	f104 0020 	add.w	r0, r4, #32
c0de23b2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de23b6:	f7ff bfd7 	b.w	c0de2368 <zkn_frost_nonce_generate>

c0de23ba <zkn_encode_group_commitmentHash>:
c0de23ba:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de23be:	b0d6      	sub	sp, #344	@ 0x158
c0de23c0:	4606      	mov	r6, r0
c0de23c2:	a816      	add	r0, sp, #88	@ 0x58
c0de23c4:	461c      	mov	r4, r3
c0de23c6:	4615      	mov	r5, r2
c0de23c8:	460f      	mov	r7, r1
c0de23ca:	f001 f939 	bl	c0de3640 <zkn_frost_H5_init>
c0de23ce:	b110      	cbz	r0, c0de23d6 <zkn_encode_group_commitmentHash+0x1c>
c0de23d0:	b056      	add	sp, #344	@ 0x158
c0de23d2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de23d6:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de23da:	9401      	str	r4, [sp, #4]
c0de23dc:	a806      	add	r0, sp, #24
c0de23de:	f04f 0a00 	mov.w	sl, #0
c0de23e2:	f04f 0b02 	mov.w	fp, #2
c0de23e6:	2604      	movs	r6, #4
c0de23e8:	2400      	movs	r4, #0
c0de23ea:	9502      	str	r5, [sp, #8]
c0de23ec:	f1a0 0801 	sub.w	r8, r0, #1
c0de23f0:	42ac      	cmp	r4, r5
c0de23f2:	d058      	beq.n	c0de24a6 <zkn_encode_group_commitmentHash+0xec>
c0de23f4:	9805      	ldr	r0, [sp, #20]
c0de23f6:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de23fa:	9103      	str	r1, [sp, #12]
c0de23fc:	6805      	ldr	r5, [r0, #0]
c0de23fe:	9804      	ldr	r0, [sp, #16]
c0de2400:	fb05 000a 	mla	r0, r5, sl, r0
c0de2404:	4629      	mov	r1, r5
c0de2406:	b129      	cbz	r1, c0de2414 <zkn_encode_group_commitmentHash+0x5a>
c0de2408:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de240c:	f808 2001 	strb.w	r2, [r8, r1]
c0de2410:	3901      	subs	r1, #1
c0de2412:	e7f8      	b.n	c0de2406 <zkn_encode_group_commitmentHash+0x4c>
c0de2414:	a816      	add	r0, sp, #88	@ 0x58
c0de2416:	a906      	add	r1, sp, #24
c0de2418:	462a      	mov	r2, r5
c0de241a:	f001 f92b 	bl	c0de3674 <zkn_frost_hash_update>
c0de241e:	2800      	cmp	r0, #0
c0de2420:	d1d6      	bne.n	c0de23d0 <zkn_encode_group_commitmentHash+0x16>
c0de2422:	9803      	ldr	r0, [sp, #12]
c0de2424:	9f04      	ldr	r7, [sp, #16]
c0de2426:	1c43      	adds	r3, r0, #1
c0de2428:	9805      	ldr	r0, [sp, #20]
c0de242a:	fb05 710b 	mla	r1, r5, fp, r7
c0de242e:	6802      	ldr	r2, [r0, #0]
c0de2430:	1e50      	subs	r0, r2, #1
c0de2432:	4615      	mov	r5, r2
c0de2434:	fb02 0303 	mla	r3, r2, r3, r0
c0de2438:	5cfb      	ldrb	r3, [r7, r3]
c0de243a:	b12d      	cbz	r5, c0de2448 <zkn_encode_group_commitmentHash+0x8e>
c0de243c:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2440:	f808 7005 	strb.w	r7, [r8, r5]
c0de2444:	3d01      	subs	r5, #1
c0de2446:	e7f8      	b.n	c0de243a <zkn_encode_group_commitmentHash+0x80>
c0de2448:	a906      	add	r1, sp, #24
c0de244a:	5c0d      	ldrb	r5, [r1, r0]
c0de244c:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2450:	540b      	strb	r3, [r1, r0]
c0de2452:	a816      	add	r0, sp, #88	@ 0x58
c0de2454:	f001 f90e 	bl	c0de3674 <zkn_frost_hash_update>
c0de2458:	2800      	cmp	r0, #0
c0de245a:	d1b9      	bne.n	c0de23d0 <zkn_encode_group_commitmentHash+0x16>
c0de245c:	9805      	ldr	r0, [sp, #20]
c0de245e:	9d04      	ldr	r5, [sp, #16]
c0de2460:	6802      	ldr	r2, [r0, #0]
c0de2462:	9803      	ldr	r0, [sp, #12]
c0de2464:	1cc3      	adds	r3, r0, #3
c0de2466:	1e50      	subs	r0, r2, #1
c0de2468:	fb02 5106 	mla	r1, r2, r6, r5
c0de246c:	fb02 0303 	mla	r3, r2, r3, r0
c0de2470:	5ceb      	ldrb	r3, [r5, r3]
c0de2472:	4615      	mov	r5, r2
c0de2474:	b12d      	cbz	r5, c0de2482 <zkn_encode_group_commitmentHash+0xc8>
c0de2476:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de247a:	f808 7005 	strb.w	r7, [r8, r5]
c0de247e:	3d01      	subs	r5, #1
c0de2480:	e7f8      	b.n	c0de2474 <zkn_encode_group_commitmentHash+0xba>
c0de2482:	a906      	add	r1, sp, #24
c0de2484:	5c0d      	ldrb	r5, [r1, r0]
c0de2486:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de248a:	540b      	strb	r3, [r1, r0]
c0de248c:	a816      	add	r0, sp, #88	@ 0x58
c0de248e:	f001 f8f1 	bl	c0de3674 <zkn_frost_hash_update>
c0de2492:	3605      	adds	r6, #5
c0de2494:	3401      	adds	r4, #1
c0de2496:	9d02      	ldr	r5, [sp, #8]
c0de2498:	f10b 0b05 	add.w	fp, fp, #5
c0de249c:	f10a 0a05 	add.w	sl, sl, #5
c0de24a0:	2800      	cmp	r0, #0
c0de24a2:	d0a5      	beq.n	c0de23f0 <zkn_encode_group_commitmentHash+0x36>
c0de24a4:	e794      	b.n	c0de23d0 <zkn_encode_group_commitmentHash+0x16>
c0de24a6:	9805      	ldr	r0, [sp, #20]
c0de24a8:	6881      	ldr	r1, [r0, #8]
c0de24aa:	a816      	add	r0, sp, #88	@ 0x58
c0de24ac:	9a01      	ldr	r2, [sp, #4]
c0de24ae:	f001 f8e3 	bl	c0de3678 <zkn_frost_hash_final>
c0de24b2:	e78d      	b.n	c0de23d0 <zkn_encode_group_commitmentHash+0x16>

c0de24b4 <zkn_compute_group_commitment>:
c0de24b4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de24b8:	b088      	sub	sp, #32
c0de24ba:	460d      	mov	r5, r1
c0de24bc:	a905      	add	r1, sp, #20
c0de24be:	461f      	mov	r7, r3
c0de24c0:	4693      	mov	fp, r2
c0de24c2:	4604      	mov	r4, r0
c0de24c4:	f000 f9b1 	bl	c0de282a <tEdwards_alloc>
c0de24c8:	b948      	cbnz	r0, c0de24de <zkn_compute_group_commitment+0x2a>
c0de24ca:	a902      	add	r1, sp, #8
c0de24cc:	4620      	mov	r0, r4
c0de24ce:	f000 f9ac 	bl	c0de282a <tEdwards_alloc>
c0de24d2:	b920      	cbnz	r0, c0de24de <zkn_compute_group_commitment+0x2a>
c0de24d4:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de24d6:	4620      	mov	r0, r4
c0de24d8:	f000 fc9e 	bl	c0de2e18 <tEdwards_SetNeutral>
c0de24dc:	b110      	cbz	r0, c0de24e4 <zkn_compute_group_commitment+0x30>
c0de24de:	b008      	add	sp, #32
c0de24e0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de24e4:	ae05      	add	r6, sp, #20
c0de24e6:	f04f 0800 	mov.w	r8, #0
c0de24ea:	f04f 0a04 	mov.w	sl, #4
c0de24ee:	9501      	str	r5, [sp, #4]
c0de24f0:	4547      	cmp	r7, r8
c0de24f2:	d041      	beq.n	c0de2578 <zkn_compute_group_commitment+0xc4>
c0de24f4:	6822      	ldr	r2, [r4, #0]
c0de24f6:	f1aa 0003 	sub.w	r0, sl, #3
c0de24fa:	4633      	mov	r3, r6
c0de24fc:	fb02 5100 	mla	r1, r2, r0, r5
c0de2500:	f1aa 0002 	sub.w	r0, sl, #2
c0de2504:	fb02 5200 	mla	r2, r2, r0, r5
c0de2508:	4620      	mov	r0, r4
c0de250a:	f000 fbfd 	bl	c0de2d08 <tEdwards_init>
c0de250e:	2800      	cmp	r0, #0
c0de2510:	d1e5      	bne.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de2512:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2514:	4620      	mov	r0, r4
c0de2516:	4632      	mov	r2, r6
c0de2518:	460b      	mov	r3, r1
c0de251a:	f000 fa17 	bl	c0de294c <tEdwards_add>
c0de251e:	2800      	cmp	r0, #0
c0de2520:	d1dd      	bne.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de2522:	6822      	ldr	r2, [r4, #0]
c0de2524:	f1aa 0001 	sub.w	r0, sl, #1
c0de2528:	4633      	mov	r3, r6
c0de252a:	fb02 5100 	mla	r1, r2, r0, r5
c0de252e:	fb02 520a 	mla	r2, r2, sl, r5
c0de2532:	4620      	mov	r0, r4
c0de2534:	f000 fbe8 	bl	c0de2d08 <tEdwards_init>
c0de2538:	2800      	cmp	r0, #0
c0de253a:	d1d0      	bne.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de253c:	6823      	ldr	r3, [r4, #0]
c0de253e:	4658      	mov	r0, fp
c0de2540:	f10d 0b08 	add.w	fp, sp, #8
c0de2544:	4631      	mov	r1, r6
c0de2546:	4605      	mov	r5, r0
c0de2548:	f8cd b000 	str.w	fp, [sp]
c0de254c:	fb03 0208 	mla	r2, r3, r8, r0
c0de2550:	4620      	mov	r0, r4
c0de2552:	f000 fd5f 	bl	c0de3014 <tEdwards_scalarMul>
c0de2556:	2800      	cmp	r0, #0
c0de2558:	d1c1      	bne.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de255a:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de255c:	4620      	mov	r0, r4
c0de255e:	465a      	mov	r2, fp
c0de2560:	460b      	mov	r3, r1
c0de2562:	f000 f9f3 	bl	c0de294c <tEdwards_add>
c0de2566:	46ab      	mov	fp, r5
c0de2568:	9d01      	ldr	r5, [sp, #4]
c0de256a:	f10a 0a05 	add.w	sl, sl, #5
c0de256e:	f108 0801 	add.w	r8, r8, #1
c0de2572:	2800      	cmp	r0, #0
c0de2574:	d0bc      	beq.n	c0de24f0 <zkn_compute_group_commitment+0x3c>
c0de2576:	e7b2      	b.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de2578:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de257a:	4620      	mov	r0, r4
c0de257c:	f000 fc85 	bl	c0de2e8a <tEdwards_normalize>
c0de2580:	2800      	cmp	r0, #0
c0de2582:	d1ac      	bne.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de2584:	a905      	add	r1, sp, #20
c0de2586:	f000 f948 	bl	c0de281a <OUTLINED_FUNCTION_3>
c0de258a:	2800      	cmp	r0, #0
c0de258c:	d1a7      	bne.n	c0de24de <zkn_compute_group_commitment+0x2a>
c0de258e:	a902      	add	r1, sp, #8
c0de2590:	f000 f943 	bl	c0de281a <OUTLINED_FUNCTION_3>
c0de2594:	e7a3      	b.n	c0de24de <zkn_compute_group_commitment+0x2a>

c0de2596 <zkn_compute_binding_factors>:
c0de2596:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de259a:	b0f4      	sub	sp, #464	@ 0x1d0
c0de259c:	460e      	mov	r6, r1
c0de259e:	6801      	ldr	r1, [r0, #0]
c0de25a0:	4607      	mov	r7, r0
c0de25a2:	a873      	add	r0, sp, #460	@ 0x1cc
c0de25a4:	f000 f935 	bl	c0de2812 <OUTLINED_FUNCTION_2>
c0de25a8:	b9f0      	cbnz	r0, c0de25e8 <zkn_compute_binding_factors+0x52>
c0de25aa:	6839      	ldr	r1, [r7, #0]
c0de25ac:	a872      	add	r0, sp, #456	@ 0x1c8
c0de25ae:	f005 f84f 	bl	c0de7650 <cx_bn_alloc>
c0de25b2:	b9c8      	cbnz	r0, c0de25e8 <zkn_compute_binding_factors+0x52>
c0de25b4:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de25b8:	68ba      	ldr	r2, [r7, #8]
c0de25ba:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de25bc:	f000 fff4 	bl	c0de35a8 <Babyfrost_H4>
c0de25c0:	b990      	cbnz	r0, c0de25e8 <zkn_compute_binding_factors+0x52>
c0de25c2:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de25c4:	4638      	mov	r0, r7
c0de25c6:	4629      	mov	r1, r5
c0de25c8:	4622      	mov	r2, r4
c0de25ca:	f7ff fef6 	bl	c0de23ba <zkn_encode_group_commitmentHash>
c0de25ce:	b958      	cbnz	r0, c0de25e8 <zkn_compute_binding_factors+0x52>
c0de25d0:	683a      	ldr	r2, [r7, #0]
c0de25d2:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de25d4:	a912      	add	r1, sp, #72	@ 0x48
c0de25d6:	f005 f885 	bl	c0de76e4 <cx_bn_export>
c0de25da:	b928      	cbnz	r0, c0de25e8 <zkn_compute_binding_factors+0x52>
c0de25dc:	683a      	ldr	r2, [r7, #0]
c0de25de:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de25e0:	a902      	add	r1, sp, #8
c0de25e2:	f005 f87f 	bl	c0de76e4 <cx_bn_export>
c0de25e6:	b110      	cbz	r0, c0de25ee <zkn_compute_binding_factors+0x58>
c0de25e8:	b074      	add	sp, #464	@ 0x1d0
c0de25ea:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de25ee:	2000      	movs	r0, #0
c0de25f0:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de25f4:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de25f8:	f04f 0800 	mov.w	r8, #0
c0de25fc:	9000      	str	r0, [sp, #0]
c0de25fe:	4544      	cmp	r4, r8
c0de2600:	d043      	beq.n	c0de268a <zkn_compute_binding_factors+0xf4>
c0de2602:	6839      	ldr	r1, [r7, #0]
c0de2604:	a801      	add	r0, sp, #4
c0de2606:	f005 f823 	bl	c0de7650 <cx_bn_alloc>
c0de260a:	2800      	cmp	r0, #0
c0de260c:	d1ec      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de260e:	4650      	mov	r0, sl
c0de2610:	f000 fffc 	bl	c0de360c <zkn_frost_H1_init>
c0de2614:	2800      	cmp	r0, #0
c0de2616:	d1e7      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2618:	6839      	ldr	r1, [r7, #0]
c0de261a:	4630      	mov	r0, r6
c0de261c:	465a      	mov	r2, fp
c0de261e:	f000 f8e9 	bl	c0de27f4 <OUTLINED_FUNCTION_0>
c0de2622:	2800      	cmp	r0, #0
c0de2624:	d1e0      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2626:	6839      	ldr	r1, [r7, #0]
c0de2628:	a812      	add	r0, sp, #72	@ 0x48
c0de262a:	465a      	mov	r2, fp
c0de262c:	f000 f8e2 	bl	c0de27f4 <OUTLINED_FUNCTION_0>
c0de2630:	2800      	cmp	r0, #0
c0de2632:	d1d9      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2634:	6839      	ldr	r1, [r7, #0]
c0de2636:	a802      	add	r0, sp, #8
c0de2638:	465a      	mov	r2, fp
c0de263a:	f000 f8db 	bl	c0de27f4 <OUTLINED_FUNCTION_0>
c0de263e:	2800      	cmp	r0, #0
c0de2640:	d1d2      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2642:	6839      	ldr	r1, [r7, #0]
c0de2644:	9800      	ldr	r0, [sp, #0]
c0de2646:	465a      	mov	r2, fp
c0de2648:	fb00 5001 	mla	r0, r0, r1, r5
c0de264c:	f000 f8d2 	bl	c0de27f4 <OUTLINED_FUNCTION_0>
c0de2650:	2800      	cmp	r0, #0
c0de2652:	d1c9      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2654:	68b9      	ldr	r1, [r7, #8]
c0de2656:	9a01      	ldr	r2, [sp, #4]
c0de2658:	4650      	mov	r0, sl
c0de265a:	f001 f80d 	bl	c0de3678 <zkn_frost_hash_final>
c0de265e:	2800      	cmp	r0, #0
c0de2660:	d1c2      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2662:	683a      	ldr	r2, [r7, #0]
c0de2664:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de2666:	fb02 0108 	mla	r1, r2, r8, r0
c0de266a:	9801      	ldr	r0, [sp, #4]
c0de266c:	f005 f83a 	bl	c0de76e4 <cx_bn_export>
c0de2670:	2800      	cmp	r0, #0
c0de2672:	d1b9      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2674:	a801      	add	r0, sp, #4
c0de2676:	f005 f801 	bl	c0de767c <cx_bn_destroy>
c0de267a:	2800      	cmp	r0, #0
c0de267c:	d1b4      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de267e:	9800      	ldr	r0, [sp, #0]
c0de2680:	f108 0801 	add.w	r8, r8, #1
c0de2684:	3005      	adds	r0, #5
c0de2686:	9000      	str	r0, [sp, #0]
c0de2688:	e7b9      	b.n	c0de25fe <zkn_compute_binding_factors+0x68>
c0de268a:	a873      	add	r0, sp, #460	@ 0x1cc
c0de268c:	f004 fff6 	bl	c0de767c <cx_bn_destroy>
c0de2690:	2800      	cmp	r0, #0
c0de2692:	d1a9      	bne.n	c0de25e8 <zkn_compute_binding_factors+0x52>
c0de2694:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2696:	f004 fff1 	bl	c0de767c <cx_bn_destroy>
c0de269a:	e7a5      	b.n	c0de25e8 <zkn_compute_binding_factors+0x52>

c0de269c <zkn_serialize_scalar_for_hash>:
c0de269c:	3a01      	subs	r2, #1
c0de269e:	b121      	cbz	r1, c0de26aa <zkn_serialize_scalar_for_hash+0xe>
c0de26a0:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de26a4:	5453      	strb	r3, [r2, r1]
c0de26a6:	3901      	subs	r1, #1
c0de26a8:	e7f9      	b.n	c0de269e <zkn_serialize_scalar_for_hash+0x2>
c0de26aa:	4770      	bx	lr

c0de26ac <compute_challenge>:
c0de26ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de26b0:	b0bc      	sub	sp, #240	@ 0xf0
c0de26b2:	4606      	mov	r6, r0
c0de26b4:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de26b6:	2820      	cmp	r0, #32
c0de26b8:	d14b      	bne.n	c0de2752 <compute_challenge+0xa6>
c0de26ba:	4630      	mov	r0, r6
c0de26bc:	461f      	mov	r7, r3
c0de26be:	4614      	mov	r4, r2
c0de26c0:	460d      	mov	r5, r1
c0de26c2:	f000 fb60 	bl	c0de2d86 <tEdwards_Curve_partial_destroy>
c0de26c6:	2800      	cmp	r0, #0
c0de26c8:	d144      	bne.n	c0de2754 <compute_challenge+0xa8>
c0de26ca:	f106 0820 	add.w	r8, r6, #32
c0de26ce:	4668      	mov	r0, sp
c0de26d0:	2105      	movs	r1, #5
c0de26d2:	2205      	movs	r2, #5
c0de26d4:	4643      	mov	r3, r8
c0de26d6:	f000 fdc3 	bl	c0de3260 <Poseidon_alloc_init>
c0de26da:	bbd8      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de26dc:	6829      	ldr	r1, [r5, #0]
c0de26de:	9807      	ldr	r0, [sp, #28]
c0de26e0:	f004 ffec 	bl	c0de76bc <cx_bn_copy>
c0de26e4:	bbb0      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de26e6:	6869      	ldr	r1, [r5, #4]
c0de26e8:	9808      	ldr	r0, [sp, #32]
c0de26ea:	f004 ffe7 	bl	c0de76bc <cx_bn_copy>
c0de26ee:	bb88      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de26f0:	6832      	ldr	r2, [r6, #0]
c0de26f2:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de26f4:	4621      	mov	r1, r4
c0de26f6:	f004 ffd5 	bl	c0de76a4 <cx_bn_init>
c0de26fa:	bb58      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de26fc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de26fe:	f000 f884 	bl	c0de280a <OUTLINED_FUNCTION_1>
c0de2702:	bb38      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de2704:	6832      	ldr	r2, [r6, #0]
c0de2706:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2708:	f104 0120 	add.w	r1, r4, #32
c0de270c:	f004 ffca 	bl	c0de76a4 <cx_bn_init>
c0de2710:	bb00      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de2712:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2714:	f000 f879 	bl	c0de280a <OUTLINED_FUNCTION_1>
c0de2718:	b9e0      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de271a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de271c:	4639      	mov	r1, r7
c0de271e:	2220      	movs	r2, #32
c0de2720:	f004 ffc0 	bl	c0de76a4 <cx_bn_init>
c0de2724:	b9b0      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de2726:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2728:	f000 f86f 	bl	c0de280a <OUTLINED_FUNCTION_1>
c0de272c:	b990      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de272e:	4630      	mov	r0, r6
c0de2730:	4629      	mov	r1, r5
c0de2732:	f000 f88f 	bl	c0de2854 <tEdwards_destroy>
c0de2736:	b968      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de2738:	4668      	mov	r0, sp
c0de273a:	aa43      	add	r2, sp, #268	@ 0x10c
c0de273c:	2100      	movs	r1, #0
c0de273e:	2301      	movs	r3, #1
c0de2740:	f000 fdf4 	bl	c0de332c <Poseidon>
c0de2744:	b930      	cbnz	r0, c0de2754 <compute_challenge+0xa8>
c0de2746:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de2748:	4642      	mov	r2, r8
c0de274a:	4601      	mov	r1, r0
c0de274c:	f005 f860 	bl	c0de7810 <cx_mont_from_montgomery>
c0de2750:	e000      	b.n	c0de2754 <compute_challenge+0xa8>
c0de2752:	4802      	ldr	r0, [pc, #8]	@ (c0de275c <compute_challenge+0xb0>)
c0de2754:	b03c      	add	sp, #240	@ 0xf0
c0de2756:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de275a:	bf00      	nop
c0de275c:	5a4b4e03 	.word	0x5a4b4e03

c0de2760 <zkn_reconciliation>:
c0de2760:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2764:	b09c      	sub	sp, #112	@ 0x70
c0de2766:	460c      	mov	r4, r1
c0de2768:	4607      	mov	r7, r0
c0de276a:	a81b      	add	r0, sp, #108	@ 0x6c
c0de276c:	f000 f858 	bl	c0de2820 <OUTLINED_FUNCTION_4>
c0de2770:	bbe8      	cbnz	r0, c0de27ee <zkn_reconciliation+0x8e>
c0de2772:	f8dd a090 	ldr.w	sl, [sp, #144]	@ 0x90
c0de2776:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
c0de2778:	4620      	mov	r0, r4
c0de277a:	4629      	mov	r1, r5
c0de277c:	4652      	mov	r2, sl
c0de277e:	f7ff fe1c 	bl	c0de23ba <zkn_encode_group_commitmentHash>
c0de2782:	bba0      	cbnz	r0, c0de27ee <zkn_reconciliation+0x8e>
c0de2784:	f8dd 80a0 	ldr.w	r8, [sp, #160]	@ 0xa0
c0de2788:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de278a:	2220      	movs	r2, #32
c0de278c:	4641      	mov	r1, r8
c0de278e:	f004 ffa9 	bl	c0de76e4 <cx_bn_export>
c0de2792:	bb60      	cbnz	r0, c0de27ee <zkn_reconciliation+0x8e>
c0de2794:	e9dd 1025 	ldrd	r1, r0, [sp, #148]	@ 0x94
c0de2798:	f10d 0b0c 	add.w	fp, sp, #12
c0de279c:	462a      	mov	r2, r5
c0de279e:	4653      	mov	r3, sl
c0de27a0:	f8cd b008 	str.w	fp, [sp, #8]
c0de27a4:	e9cd 1000 	strd	r1, r0, [sp]
c0de27a8:	4620      	mov	r0, r4
c0de27aa:	4631      	mov	r1, r6
c0de27ac:	f7ff fef3 	bl	c0de2596 <zkn_compute_binding_factors>
c0de27b0:	b9e8      	cbnz	r0, c0de27ee <zkn_reconciliation+0x8e>
c0de27b2:	eb0b 1047 	add.w	r0, fp, r7, lsl #5
c0de27b6:	9e27      	ldr	r6, [sp, #156]	@ 0x9c
c0de27b8:	2220      	movs	r2, #32
c0de27ba:	f1a0 0120 	sub.w	r1, r0, #32
c0de27be:	f108 0020 	add.w	r0, r8, #32
c0de27c2:	f005 f9fb 	bl	c0de7bbc <__aeabi_memcpy>
c0de27c6:	4620      	mov	r0, r4
c0de27c8:	4629      	mov	r1, r5
c0de27ca:	465a      	mov	r2, fp
c0de27cc:	4653      	mov	r3, sl
c0de27ce:	9600      	str	r6, [sp, #0]
c0de27d0:	f7ff fe70 	bl	c0de24b4 <zkn_compute_group_commitment>
c0de27d4:	b958      	cbnz	r0, c0de27ee <zkn_reconciliation+0x8e>
c0de27d6:	f108 0240 	add.w	r2, r8, #64	@ 0x40
c0de27da:	f108 0360 	add.w	r3, r8, #96	@ 0x60
c0de27de:	4620      	mov	r0, r4
c0de27e0:	4631      	mov	r1, r6
c0de27e2:	f000 fb2c 	bl	c0de2e3e <tEdwards_export>
c0de27e6:	b910      	cbnz	r0, c0de27ee <zkn_reconciliation+0x8e>
c0de27e8:	a81b      	add	r0, sp, #108	@ 0x6c
c0de27ea:	f004 ff47 	bl	c0de767c <cx_bn_destroy>
c0de27ee:	b01c      	add	sp, #112	@ 0x70
c0de27f0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de27f4 <OUTLINED_FUNCTION_0>:
c0de27f4:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de27f8:	f7ff ff50 	bl	c0de269c <zkn_serialize_scalar_for_hash>
c0de27fc:	683a      	ldr	r2, [r7, #0]
c0de27fe:	4650      	mov	r0, sl
c0de2800:	4659      	mov	r1, fp
c0de2802:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2806:	f000 bf35 	b.w	c0de3674 <zkn_frost_hash_update>

c0de280a <OUTLINED_FUNCTION_1>:
c0de280a:	4642      	mov	r2, r8
c0de280c:	4601      	mov	r1, r0
c0de280e:	f004 bff3 	b.w	c0de77f8 <cx_mont_to_montgomery>

c0de2812 <OUTLINED_FUNCTION_2>:
c0de2812:	461c      	mov	r4, r3
c0de2814:	4615      	mov	r5, r2
c0de2816:	f004 bf1b 	b.w	c0de7650 <cx_bn_alloc>

c0de281a <OUTLINED_FUNCTION_3>:
c0de281a:	4620      	mov	r0, r4
c0de281c:	f000 b81a 	b.w	c0de2854 <tEdwards_destroy>

c0de2820 <OUTLINED_FUNCTION_4>:
c0de2820:	2120      	movs	r1, #32
c0de2822:	461d      	mov	r5, r3
c0de2824:	4616      	mov	r6, r2
c0de2826:	f004 bf13 	b.w	c0de7650 <cx_bn_alloc>

c0de282a <tEdwards_alloc>:
c0de282a:	b5b0      	push	{r4, r5, r7, lr}
c0de282c:	460d      	mov	r5, r1
c0de282e:	6801      	ldr	r1, [r0, #0]
c0de2830:	4604      	mov	r4, r0
c0de2832:	4628      	mov	r0, r5
c0de2834:	f004 ff0c 	bl	c0de7650 <cx_bn_alloc>
c0de2838:	b920      	cbnz	r0, c0de2844 <tEdwards_alloc+0x1a>
c0de283a:	6821      	ldr	r1, [r4, #0]
c0de283c:	1d28      	adds	r0, r5, #4
c0de283e:	f004 ff07 	bl	c0de7650 <cx_bn_alloc>
c0de2842:	b100      	cbz	r0, c0de2846 <tEdwards_alloc+0x1c>
c0de2844:	bdb0      	pop	{r4, r5, r7, pc}
c0de2846:	6821      	ldr	r1, [r4, #0]
c0de2848:	f105 0008 	add.w	r0, r5, #8
c0de284c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2850:	f004 befe 	b.w	c0de7650 <cx_bn_alloc>

c0de2854 <tEdwards_destroy>:
c0de2854:	b510      	push	{r4, lr}
c0de2856:	4608      	mov	r0, r1
c0de2858:	460c      	mov	r4, r1
c0de285a:	f004 ff0f 	bl	c0de767c <cx_bn_destroy>
c0de285e:	b918      	cbnz	r0, c0de2868 <tEdwards_destroy+0x14>
c0de2860:	1d20      	adds	r0, r4, #4
c0de2862:	f004 ff0b 	bl	c0de767c <cx_bn_destroy>
c0de2866:	b100      	cbz	r0, c0de286a <tEdwards_destroy+0x16>
c0de2868:	bd10      	pop	{r4, pc}
c0de286a:	f104 0008 	add.w	r0, r4, #8
c0de286e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2872:	f004 bf03 	b.w	c0de767c <cx_bn_destroy>

c0de2876 <tEdwards_double>:
c0de2876:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2878:	460f      	mov	r7, r1
c0de287a:	4614      	mov	r4, r2
c0de287c:	4605      	mov	r5, r0
c0de287e:	6843      	ldr	r3, [r0, #4]
c0de2880:	6809      	ldr	r1, [r1, #0]
c0de2882:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2884:	687a      	ldr	r2, [r7, #4]
c0de2886:	f004 ff5d 	bl	c0de7744 <cx_bn_mod_add>
c0de288a:	2800      	cmp	r0, #0
c0de288c:	d154      	bne.n	c0de2938 <tEdwards_double+0xc2>
c0de288e:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2892:	f105 0620 	add.w	r6, r5, #32
c0de2896:	f000 fbe3 	bl	c0de3060 <OUTLINED_FUNCTION_2>
c0de289a:	2800      	cmp	r0, #0
c0de289c:	d14c      	bne.n	c0de2938 <tEdwards_double+0xc2>
c0de289e:	6839      	ldr	r1, [r7, #0]
c0de28a0:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de28a2:	f000 fbdd 	bl	c0de3060 <OUTLINED_FUNCTION_2>
c0de28a6:	2800      	cmp	r0, #0
c0de28a8:	d146      	bne.n	c0de2938 <tEdwards_double+0xc2>
c0de28aa:	6879      	ldr	r1, [r7, #4]
c0de28ac:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de28ae:	f000 fbd7 	bl	c0de3060 <OUTLINED_FUNCTION_2>
c0de28b2:	2800      	cmp	r0, #0
c0de28b4:	d140      	bne.n	c0de2938 <tEdwards_double+0xc2>
c0de28b6:	69a9      	ldr	r1, [r5, #24]
c0de28b8:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de28ba:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de28bc:	f000 fbca 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de28c0:	bbd0      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de28c2:	686b      	ldr	r3, [r5, #4]
c0de28c4:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de28c8:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de28ca:	f004 ff3b 	bl	c0de7744 <cx_bn_mod_add>
c0de28ce:	bb98      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de28d0:	68b9      	ldr	r1, [r7, #8]
c0de28d2:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de28d4:	f000 fbc4 	bl	c0de3060 <OUTLINED_FUNCTION_2>
c0de28d8:	bb70      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de28da:	686b      	ldr	r3, [r5, #4]
c0de28dc:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de28de:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de28e0:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de28e2:	f004 ff3b 	bl	c0de775c <cx_bn_mod_sub>
c0de28e6:	bb38      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de28e8:	686b      	ldr	r3, [r5, #4]
c0de28ea:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de28ec:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de28f0:	f004 ff34 	bl	c0de775c <cx_bn_mod_sub>
c0de28f4:	bb00      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de28f6:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de28fa:	686b      	ldr	r3, [r5, #4]
c0de28fc:	ca07      	ldmia	r2, {r0, r1, r2}
c0de28fe:	f004 ff2d 	bl	c0de775c <cx_bn_mod_sub>
c0de2902:	b9c8      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de2904:	686b      	ldr	r3, [r5, #4]
c0de2906:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de290a:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de290c:	f004 ff26 	bl	c0de775c <cx_bn_mod_sub>
c0de2910:	b990      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de2912:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2914:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2916:	6820      	ldr	r0, [r4, #0]
c0de2918:	f000 fb9c 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de291c:	b960      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de291e:	686b      	ldr	r3, [r5, #4]
c0de2920:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2924:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2926:	f004 ff19 	bl	c0de775c <cx_bn_mod_sub>
c0de292a:	b928      	cbnz	r0, c0de2938 <tEdwards_double+0xc2>
c0de292c:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de292e:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2930:	6860      	ldr	r0, [r4, #4]
c0de2932:	f000 fb8f 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2936:	b100      	cbz	r0, c0de293a <tEdwards_double+0xc4>
c0de2938:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de293a:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de293c:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de293e:	68a0      	ldr	r0, [r4, #8]
c0de2940:	4633      	mov	r3, r6
c0de2942:	b001      	add	sp, #4
c0de2944:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2948:	f004 bf6e 	b.w	c0de7828 <cx_mont_mul>

c0de294c <tEdwards_add>:
c0de294c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2950:	4606      	mov	r6, r0
c0de2952:	4617      	mov	r7, r2
c0de2954:	460c      	mov	r4, r1
c0de2956:	6892      	ldr	r2, [r2, #8]
c0de2958:	6889      	ldr	r1, [r1, #8]
c0de295a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de295c:	4698      	mov	r8, r3
c0de295e:	f106 0520 	add.w	r5, r6, #32
c0de2962:	f000 fb7a 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2966:	2800      	cmp	r0, #0
c0de2968:	d17d      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de296a:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de296e:	462b      	mov	r3, r5
c0de2970:	460a      	mov	r2, r1
c0de2972:	f004 ff59 	bl	c0de7828 <cx_mont_mul>
c0de2976:	2800      	cmp	r0, #0
c0de2978:	d175      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de297a:	683a      	ldr	r2, [r7, #0]
c0de297c:	6821      	ldr	r1, [r4, #0]
c0de297e:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2980:	f000 fb6b 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2984:	2800      	cmp	r0, #0
c0de2986:	d16e      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de2988:	687a      	ldr	r2, [r7, #4]
c0de298a:	6861      	ldr	r1, [r4, #4]
c0de298c:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de298e:	f000 fb64 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2992:	2800      	cmp	r0, #0
c0de2994:	d167      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de2996:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de299a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de299c:	f000 fb5d 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de29a0:	2800      	cmp	r0, #0
c0de29a2:	d160      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de29a4:	69f2      	ldr	r2, [r6, #28]
c0de29a6:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de29a8:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de29aa:	f000 fb56 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de29ae:	2800      	cmp	r0, #0
c0de29b0:	d159      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de29b2:	6873      	ldr	r3, [r6, #4]
c0de29b4:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de29b6:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de29ba:	f004 fecf 	bl	c0de775c <cx_bn_mod_sub>
c0de29be:	2800      	cmp	r0, #0
c0de29c0:	d151      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de29c2:	6873      	ldr	r3, [r6, #4]
c0de29c4:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de29c6:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de29c8:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de29ca:	f004 febb 	bl	c0de7744 <cx_bn_mod_add>
c0de29ce:	2800      	cmp	r0, #0
c0de29d0:	d149      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de29d2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de29d6:	6873      	ldr	r3, [r6, #4]
c0de29d8:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de29da:	f004 feb3 	bl	c0de7744 <cx_bn_mod_add>
c0de29de:	2800      	cmp	r0, #0
c0de29e0:	d141      	bne.n	c0de2a66 <tEdwards_add+0x11a>
c0de29e2:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de29e6:	6873      	ldr	r3, [r6, #4]
c0de29e8:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de29ea:	f004 feab 	bl	c0de7744 <cx_bn_mod_add>
c0de29ee:	bbd0      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de29f0:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de29f2:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de29f6:	f000 fb30 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de29fa:	bba0      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de29fc:	6873      	ldr	r3, [r6, #4]
c0de29fe:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2a02:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2a04:	f004 feaa 	bl	c0de775c <cx_bn_mod_sub>
c0de2a08:	bb68      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a0a:	6873      	ldr	r3, [r6, #4]
c0de2a0c:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2a0e:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2a12:	f004 fea3 	bl	c0de775c <cx_bn_mod_sub>
c0de2a16:	bb30      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a18:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2a1c:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2a1e:	f000 fb1c 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2a22:	bb00      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a24:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2a26:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2a28:	f8d8 0000 	ldr.w	r0, [r8]
c0de2a2c:	f000 fb15 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2a30:	b9c8      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a32:	69b1      	ldr	r1, [r6, #24]
c0de2a34:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2a38:	f000 fb0f 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2a3c:	b998      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a3e:	6873      	ldr	r3, [r6, #4]
c0de2a40:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2a42:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2a44:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2a46:	f004 fe89 	bl	c0de775c <cx_bn_mod_sub>
c0de2a4a:	b960      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a4c:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2a4e:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2a50:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2a52:	f000 fb02 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2a56:	b930      	cbnz	r0, c0de2a66 <tEdwards_add+0x11a>
c0de2a58:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2a5c:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2a60:	f000 fafb 	bl	c0de305a <OUTLINED_FUNCTION_1>
c0de2a64:	b108      	cbz	r0, c0de2a6a <tEdwards_add+0x11e>
c0de2a66:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2a6a:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2a6e:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2a72:	462b      	mov	r3, r5
c0de2a74:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2a78:	f004 bed6 	b.w	c0de7828 <cx_mont_mul>

c0de2a7c <tEdwards_IsOnCurve>:
c0de2a7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2a7e:	4605      	mov	r5, r0
c0de2a80:	460f      	mov	r7, r1
c0de2a82:	2005      	movs	r0, #5
c0de2a84:	6809      	ldr	r1, [r1, #0]
c0de2a86:	4614      	mov	r4, r2
c0de2a88:	9000      	str	r0, [sp, #0]
c0de2a8a:	f105 0620 	add.w	r6, r5, #32
c0de2a8e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a90:	460a      	mov	r2, r1
c0de2a92:	f000 fadf 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2a96:	b100      	cbz	r0, c0de2a9a <tEdwards_IsOnCurve+0x1e>
c0de2a98:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2a9a:	6879      	ldr	r1, [r7, #4]
c0de2a9c:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2a9e:	f000 fadf 	bl	c0de3060 <OUTLINED_FUNCTION_2>
c0de2aa2:	2800      	cmp	r0, #0
c0de2aa4:	d1f8      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2aa6:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2aaa:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2aac:	f000 fad2 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2ab0:	2800      	cmp	r0, #0
c0de2ab2:	d1f1      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2ab4:	69a9      	ldr	r1, [r5, #24]
c0de2ab6:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2ab8:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2aba:	f000 facb 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2abe:	2800      	cmp	r0, #0
c0de2ac0:	d1ea      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2ac2:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ac4:	686b      	ldr	r3, [r5, #4]
c0de2ac6:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2ac8:	4601      	mov	r1, r0
c0de2aca:	f004 fe3b 	bl	c0de7744 <cx_bn_mod_add>
c0de2ace:	2800      	cmp	r0, #0
c0de2ad0:	d1e2      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2ad2:	69e9      	ldr	r1, [r5, #28]
c0de2ad4:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2ad6:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2ad8:	f000 fabc 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2adc:	2800      	cmp	r0, #0
c0de2ade:	d1db      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2ae0:	686b      	ldr	r3, [r5, #4]
c0de2ae2:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2ae4:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2ae6:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2ae8:	f004 fe2c 	bl	c0de7744 <cx_bn_mod_add>
c0de2aec:	2800      	cmp	r0, #0
c0de2aee:	d1d3      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2af0:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2af2:	4632      	mov	r2, r6
c0de2af4:	4601      	mov	r1, r0
c0de2af6:	f004 fe8b 	bl	c0de7810 <cx_mont_from_montgomery>
c0de2afa:	2800      	cmp	r0, #0
c0de2afc:	d1cc      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2afe:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2b00:	4632      	mov	r2, r6
c0de2b02:	4601      	mov	r1, r0
c0de2b04:	f004 fe84 	bl	c0de7810 <cx_mont_from_montgomery>
c0de2b08:	2800      	cmp	r0, #0
c0de2b0a:	d1c5      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2b0c:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2b10:	466a      	mov	r2, sp
c0de2b12:	f004 fdf3 	bl	c0de76fc <cx_bn_cmp>
c0de2b16:	2800      	cmp	r0, #0
c0de2b18:	d1be      	bne.n	c0de2a98 <tEdwards_IsOnCurve+0x1c>
c0de2b1a:	9800      	ldr	r0, [sp, #0]
c0de2b1c:	fab0 f080 	clz	r0, r0
c0de2b20:	0940      	lsrs	r0, r0, #5
c0de2b22:	7020      	strb	r0, [r4, #0]
c0de2b24:	2000      	movs	r0, #0
c0de2b26:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de2b28 <tEdwards_Curve_alloc_init>:
c0de2b28:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2b2c:	b0d2      	sub	sp, #328	@ 0x148
c0de2b2e:	4604      	mov	r4, r0
c0de2b30:	2902      	cmp	r1, #2
c0de2b32:	d022      	beq.n	c0de2b7a <tEdwards_Curve_alloc_init+0x52>
c0de2b34:	2901      	cmp	r1, #1
c0de2b36:	f040 80cd 	bne.w	c0de2cd4 <tEdwards_Curve_alloc_init+0x1ac>
c0de2b3a:	2020      	movs	r0, #32
c0de2b3c:	2220      	movs	r2, #32
c0de2b3e:	6020      	str	r0, [r4, #0]
c0de2b40:	af4a      	add	r7, sp, #296	@ 0x128
c0de2b42:	4967      	ldr	r1, [pc, #412]	@ (c0de2ce0 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2b44:	4638      	mov	r0, r7
c0de2b46:	4479      	add	r1, pc
c0de2b48:	f005 f838 	bl	c0de7bbc <__aeabi_memcpy>
c0de2b4c:	ae42      	add	r6, sp, #264	@ 0x108
c0de2b4e:	4965      	ldr	r1, [pc, #404]	@ (c0de2ce4 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2b50:	2220      	movs	r2, #32
c0de2b52:	4630      	mov	r0, r6
c0de2b54:	4479      	add	r1, pc
c0de2b56:	f005 f831 	bl	c0de7bbc <__aeabi_memcpy>
c0de2b5a:	4963      	ldr	r1, [pc, #396]	@ (c0de2ce8 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2b5c:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2b60:	2220      	movs	r2, #32
c0de2b62:	4650      	mov	r0, sl
c0de2b64:	4479      	add	r1, pc
c0de2b66:	f005 f829 	bl	c0de7bbc <__aeabi_memcpy>
c0de2b6a:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2b6c:	495f      	ldr	r1, [pc, #380]	@ (c0de2cec <tEdwards_Curve_alloc_init+0x1c4>)
c0de2b6e:	2220      	movs	r2, #32
c0de2b70:	4628      	mov	r0, r5
c0de2b72:	4479      	add	r1, pc
c0de2b74:	f005 f822 	bl	c0de7bbc <__aeabi_memcpy>
c0de2b78:	e02d      	b.n	c0de2bd6 <tEdwards_Curve_alloc_init+0xae>
c0de2b7a:	2020      	movs	r0, #32
c0de2b7c:	2220      	movs	r2, #32
c0de2b7e:	6020      	str	r0, [r4, #0]
c0de2b80:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2b82:	495b      	ldr	r1, [pc, #364]	@ (c0de2cf0 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2b84:	4638      	mov	r0, r7
c0de2b86:	4479      	add	r1, pc
c0de2b88:	f005 f818 	bl	c0de7bbc <__aeabi_memcpy>
c0de2b8c:	ae22      	add	r6, sp, #136	@ 0x88
c0de2b8e:	4959      	ldr	r1, [pc, #356]	@ (c0de2cf4 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2b90:	2220      	movs	r2, #32
c0de2b92:	4630      	mov	r0, r6
c0de2b94:	4479      	add	r1, pc
c0de2b96:	f005 f811 	bl	c0de7bbc <__aeabi_memcpy>
c0de2b9a:	4957      	ldr	r1, [pc, #348]	@ (c0de2cf8 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2b9c:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2ba0:	2220      	movs	r2, #32
c0de2ba2:	4650      	mov	r0, sl
c0de2ba4:	4479      	add	r1, pc
c0de2ba6:	f005 f809 	bl	c0de7bbc <__aeabi_memcpy>
c0de2baa:	a812      	add	r0, sp, #72	@ 0x48
c0de2bac:	4953      	ldr	r1, [pc, #332]	@ (c0de2cfc <tEdwards_Curve_alloc_init+0x1d4>)
c0de2bae:	2220      	movs	r2, #32
c0de2bb0:	9001      	str	r0, [sp, #4]
c0de2bb2:	4479      	add	r1, pc
c0de2bb4:	f005 f802 	bl	c0de7bbc <__aeabi_memcpy>
c0de2bb8:	4951      	ldr	r1, [pc, #324]	@ (c0de2d00 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2bba:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2bbe:	2220      	movs	r2, #32
c0de2bc0:	4658      	mov	r0, fp
c0de2bc2:	4479      	add	r1, pc
c0de2bc4:	f004 fffa 	bl	c0de7bbc <__aeabi_memcpy>
c0de2bc8:	ad02      	add	r5, sp, #8
c0de2bca:	494e      	ldr	r1, [pc, #312]	@ (c0de2d04 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2bcc:	2220      	movs	r2, #32
c0de2bce:	4628      	mov	r0, r5
c0de2bd0:	4479      	add	r1, pc
c0de2bd2:	f004 fff3 	bl	c0de7bbc <__aeabi_memcpy>
c0de2bd6:	f104 0804 	add.w	r8, r4, #4
c0de2bda:	2120      	movs	r1, #32
c0de2bdc:	463a      	mov	r2, r7
c0de2bde:	2320      	movs	r3, #32
c0de2be0:	4640      	mov	r0, r8
c0de2be2:	f004 fd3f 	bl	c0de7664 <cx_bn_alloc_init>
c0de2be6:	2800      	cmp	r0, #0
c0de2be8:	d175      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2bea:	4620      	mov	r0, r4
c0de2bec:	462a      	mov	r2, r5
c0de2bee:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2bf2:	460b      	mov	r3, r1
c0de2bf4:	f004 fd36 	bl	c0de7664 <cx_bn_alloc_init>
c0de2bf8:	2800      	cmp	r0, #0
c0de2bfa:	d16c      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2bfc:	f104 0520 	add.w	r5, r4, #32
c0de2c00:	2120      	movs	r1, #32
c0de2c02:	4628      	mov	r0, r5
c0de2c04:	f004 fde4 	bl	c0de77d0 <cx_mont_alloc>
c0de2c08:	2800      	cmp	r0, #0
c0de2c0a:	d164      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c0c:	f8d8 1000 	ldr.w	r1, [r8]
c0de2c10:	4628      	mov	r0, r5
c0de2c12:	f004 fde7 	bl	c0de77e4 <cx_mont_init>
c0de2c16:	2800      	cmp	r0, #0
c0de2c18:	d15d      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c1a:	4627      	mov	r7, r4
c0de2c1c:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2c20:	4638      	mov	r0, r7
c0de2c22:	f004 fd15 	bl	c0de7650 <cx_bn_alloc>
c0de2c26:	2800      	cmp	r0, #0
c0de2c28:	d155      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c2a:	6838      	ldr	r0, [r7, #0]
c0de2c2c:	2101      	movs	r1, #1
c0de2c2e:	f004 fd4f 	bl	c0de76d0 <cx_bn_set_u32>
c0de2c32:	2800      	cmp	r0, #0
c0de2c34:	d14f      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c36:	6838      	ldr	r0, [r7, #0]
c0de2c38:	f000 fa16 	bl	c0de3068 <OUTLINED_FUNCTION_3>
c0de2c3c:	2800      	cmp	r0, #0
c0de2c3e:	d14a      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c40:	f104 070c 	add.w	r7, r4, #12
c0de2c44:	4620      	mov	r0, r4
c0de2c46:	4639      	mov	r1, r7
c0de2c48:	f7ff fdef 	bl	c0de282a <tEdwards_alloc>
c0de2c4c:	2800      	cmp	r0, #0
c0de2c4e:	d142      	bne.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c50:	9901      	ldr	r1, [sp, #4]
c0de2c52:	4620      	mov	r0, r4
c0de2c54:	465a      	mov	r2, fp
c0de2c56:	463b      	mov	r3, r7
c0de2c58:	f000 f856 	bl	c0de2d08 <tEdwards_init>
c0de2c5c:	bbd8      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c5e:	4627      	mov	r7, r4
c0de2c60:	4632      	mov	r2, r6
c0de2c62:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2c66:	4638      	mov	r0, r7
c0de2c68:	460b      	mov	r3, r1
c0de2c6a:	f004 fcfb 	bl	c0de7664 <cx_bn_alloc_init>
c0de2c6e:	bb90      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c70:	6838      	ldr	r0, [r7, #0]
c0de2c72:	f000 f9f9 	bl	c0de3068 <OUTLINED_FUNCTION_3>
c0de2c76:	bb70      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c78:	4626      	mov	r6, r4
c0de2c7a:	4652      	mov	r2, sl
c0de2c7c:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2c80:	4630      	mov	r0, r6
c0de2c82:	460b      	mov	r3, r1
c0de2c84:	f004 fcee 	bl	c0de7664 <cx_bn_alloc_init>
c0de2c88:	bb28      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c8a:	6830      	ldr	r0, [r6, #0]
c0de2c8c:	f000 f9ec 	bl	c0de3068 <OUTLINED_FUNCTION_3>
c0de2c90:	bb08      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c92:	4620      	mov	r0, r4
c0de2c94:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2c98:	f004 fcda 	bl	c0de7650 <cx_bn_alloc>
c0de2c9c:	b9d8      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2c9e:	f000 f9fb 	bl	c0de3098 <OUTLINED_FUNCTION_8>
c0de2ca2:	b9c0      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ca4:	f000 f9e4 	bl	c0de3070 <OUTLINED_FUNCTION_4>
c0de2ca8:	b9a8      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2caa:	f000 f9f0 	bl	c0de308e <OUTLINED_FUNCTION_7>
c0de2cae:	b990      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2cb0:	f000 f9fc 	bl	c0de30ac <OUTLINED_FUNCTION_10>
c0de2cb4:	b978      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2cb6:	f000 f9e5 	bl	c0de3084 <OUTLINED_FUNCTION_6>
c0de2cba:	b960      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2cbc:	f000 f9f1 	bl	c0de30a2 <OUTLINED_FUNCTION_9>
c0de2cc0:	b948      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2cc2:	f000 f9da 	bl	c0de307a <OUTLINED_FUNCTION_5>
c0de2cc6:	b930      	cbnz	r0, c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2cc8:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2ccc:	4620      	mov	r0, r4
c0de2cce:	f004 fcbf 	bl	c0de7650 <cx_bn_alloc>
c0de2cd2:	e000      	b.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2cd4:	4801      	ldr	r0, [pc, #4]	@ (c0de2cdc <tEdwards_Curve_alloc_init+0x1b4>)
c0de2cd6:	b052      	add	sp, #328	@ 0x148
c0de2cd8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2cdc:	5a4b4e01 	.word	0x5a4b4e01
c0de2ce0:	000056ce 	.word	0x000056ce
c0de2ce4:	00005880 	.word	0x00005880
c0de2ce8:	00005830 	.word	0x00005830
c0de2cec:	00005762 	.word	0x00005762
c0de2cf0:	0000588e 	.word	0x0000588e
c0de2cf4:	000057e0 	.word	0x000057e0
c0de2cf8:	00005850 	.word	0x00005850
c0de2cfc:	00005882 	.word	0x00005882
c0de2d00:	00005892 	.word	0x00005892
c0de2d04:	00005724 	.word	0x00005724

c0de2d08 <tEdwards_init>:
c0de2d08:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2d0a:	6806      	ldr	r6, [r0, #0]
c0de2d0c:	461c      	mov	r4, r3
c0de2d0e:	4617      	mov	r7, r2
c0de2d10:	460a      	mov	r2, r1
c0de2d12:	4605      	mov	r5, r0
c0de2d14:	a802      	add	r0, sp, #8
c0de2d16:	4631      	mov	r1, r6
c0de2d18:	4633      	mov	r3, r6
c0de2d1a:	f004 fca3 	bl	c0de7664 <cx_bn_alloc_init>
c0de2d1e:	b100      	cbz	r0, c0de2d22 <tEdwards_init+0x1a>
c0de2d20:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2d22:	a801      	add	r0, sp, #4
c0de2d24:	4631      	mov	r1, r6
c0de2d26:	463a      	mov	r2, r7
c0de2d28:	4633      	mov	r3, r6
c0de2d2a:	f004 fc9b 	bl	c0de7664 <cx_bn_alloc_init>
c0de2d2e:	2800      	cmp	r0, #0
c0de2d30:	d1f6      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d32:	4668      	mov	r0, sp
c0de2d34:	4631      	mov	r1, r6
c0de2d36:	f004 fc8b 	bl	c0de7650 <cx_bn_alloc>
c0de2d3a:	2800      	cmp	r0, #0
c0de2d3c:	d1f0      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d3e:	f105 0620 	add.w	r6, r5, #32
c0de2d42:	6820      	ldr	r0, [r4, #0]
c0de2d44:	9902      	ldr	r1, [sp, #8]
c0de2d46:	4632      	mov	r2, r6
c0de2d48:	f004 fd56 	bl	c0de77f8 <cx_mont_to_montgomery>
c0de2d4c:	2800      	cmp	r0, #0
c0de2d4e:	d1e7      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d50:	6860      	ldr	r0, [r4, #4]
c0de2d52:	9901      	ldr	r1, [sp, #4]
c0de2d54:	4632      	mov	r2, r6
c0de2d56:	f004 fd4f 	bl	c0de77f8 <cx_mont_to_montgomery>
c0de2d5a:	2800      	cmp	r0, #0
c0de2d5c:	d1e0      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d5e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2d60:	68a0      	ldr	r0, [r4, #8]
c0de2d62:	f004 fcab 	bl	c0de76bc <cx_bn_copy>
c0de2d66:	2800      	cmp	r0, #0
c0de2d68:	d1da      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d6a:	a802      	add	r0, sp, #8
c0de2d6c:	f004 fc86 	bl	c0de767c <cx_bn_destroy>
c0de2d70:	2800      	cmp	r0, #0
c0de2d72:	d1d5      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d74:	a801      	add	r0, sp, #4
c0de2d76:	f004 fc81 	bl	c0de767c <cx_bn_destroy>
c0de2d7a:	2800      	cmp	r0, #0
c0de2d7c:	d1d0      	bne.n	c0de2d20 <tEdwards_init+0x18>
c0de2d7e:	4668      	mov	r0, sp
c0de2d80:	f004 fc7c 	bl	c0de767c <cx_bn_destroy>
c0de2d84:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2d86 <tEdwards_Curve_partial_destroy>:
c0de2d86:	b510      	push	{r4, lr}
c0de2d88:	4604      	mov	r4, r0
c0de2d8a:	302c      	adds	r0, #44	@ 0x2c
c0de2d8c:	f004 fc76 	bl	c0de767c <cx_bn_destroy>
c0de2d90:	bbd8      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2d92:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2d96:	f004 fc71 	bl	c0de767c <cx_bn_destroy>
c0de2d9a:	bbb0      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2d9c:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2da0:	f004 fc6c 	bl	c0de767c <cx_bn_destroy>
c0de2da4:	bb88      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2da6:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2daa:	f004 fc67 	bl	c0de767c <cx_bn_destroy>
c0de2dae:	bb60      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2db0:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2db4:	f004 fc62 	bl	c0de767c <cx_bn_destroy>
c0de2db8:	bb38      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2dba:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2dbe:	f004 fc5d 	bl	c0de767c <cx_bn_destroy>
c0de2dc2:	bb10      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2dc4:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2dc8:	f004 fc58 	bl	c0de767c <cx_bn_destroy>
c0de2dcc:	b9e8      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2dce:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2dd2:	f004 fc53 	bl	c0de767c <cx_bn_destroy>
c0de2dd6:	b9c0      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2dd8:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2ddc:	f004 fc4e 	bl	c0de767c <cx_bn_destroy>
c0de2de0:	b998      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2de2:	f104 010c 	add.w	r1, r4, #12
c0de2de6:	f7ff fd35 	bl	c0de2854 <tEdwards_destroy>
c0de2dea:	b970      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2dec:	f104 0018 	add.w	r0, r4, #24
c0de2df0:	f004 fc44 	bl	c0de767c <cx_bn_destroy>
c0de2df4:	b948      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2df6:	f104 001c 	add.w	r0, r4, #28
c0de2dfa:	f004 fc3f 	bl	c0de767c <cx_bn_destroy>
c0de2dfe:	b920      	cbnz	r0, c0de2e0a <tEdwards_Curve_partial_destroy+0x84>
c0de2e00:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2e04:	f004 fc3a 	bl	c0de767c <cx_bn_destroy>
c0de2e08:	b100      	cbz	r0, c0de2e0c <tEdwards_Curve_partial_destroy+0x86>
c0de2e0a:	bd10      	pop	{r4, pc}
c0de2e0c:	f104 0008 	add.w	r0, r4, #8
c0de2e10:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2e14:	f004 bc32 	b.w	c0de767c <cx_bn_destroy>

c0de2e18 <tEdwards_SetNeutral>:
c0de2e18:	b5b0      	push	{r4, r5, r7, lr}
c0de2e1a:	4605      	mov	r5, r0
c0de2e1c:	6808      	ldr	r0, [r1, #0]
c0de2e1e:	460c      	mov	r4, r1
c0de2e20:	2100      	movs	r1, #0
c0de2e22:	f004 fc55 	bl	c0de76d0 <cx_bn_set_u32>
c0de2e26:	b918      	cbnz	r0, c0de2e30 <tEdwards_SetNeutral+0x18>
c0de2e28:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2e2a:	f000 f944 	bl	c0de30b6 <OUTLINED_FUNCTION_11>
c0de2e2e:	b100      	cbz	r0, c0de2e32 <tEdwards_SetNeutral+0x1a>
c0de2e30:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e32:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2e34:	68a0      	ldr	r0, [r4, #8]
c0de2e36:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2e3a:	f004 bc3f 	b.w	c0de76bc <cx_bn_copy>

c0de2e3e <tEdwards_export>:
c0de2e3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e42:	4698      	mov	r8, r3
c0de2e44:	4616      	mov	r6, r2
c0de2e46:	460f      	mov	r7, r1
c0de2e48:	4605      	mov	r5, r0
c0de2e4a:	f000 f81e 	bl	c0de2e8a <tEdwards_normalize>
c0de2e4e:	b998      	cbnz	r0, c0de2e78 <tEdwards_export+0x3a>
c0de2e50:	f105 0420 	add.w	r4, r5, #32
c0de2e54:	6839      	ldr	r1, [r7, #0]
c0de2e56:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e58:	4622      	mov	r2, r4
c0de2e5a:	f004 fcd9 	bl	c0de7810 <cx_mont_from_montgomery>
c0de2e5e:	b958      	cbnz	r0, c0de2e78 <tEdwards_export+0x3a>
c0de2e60:	6879      	ldr	r1, [r7, #4]
c0de2e62:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e64:	4622      	mov	r2, r4
c0de2e66:	f004 fcd3 	bl	c0de7810 <cx_mont_from_montgomery>
c0de2e6a:	b928      	cbnz	r0, c0de2e78 <tEdwards_export+0x3a>
c0de2e6c:	682a      	ldr	r2, [r5, #0]
c0de2e6e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e70:	4631      	mov	r1, r6
c0de2e72:	f004 fc37 	bl	c0de76e4 <cx_bn_export>
c0de2e76:	b108      	cbz	r0, c0de2e7c <tEdwards_export+0x3e>
c0de2e78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2e7c:	682a      	ldr	r2, [r5, #0]
c0de2e7e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e80:	4641      	mov	r1, r8
c0de2e82:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e86:	f004 bc2d 	b.w	c0de76e4 <cx_bn_export>

c0de2e8a <tEdwards_normalize>:
c0de2e8a:	b570      	push	{r4, r5, r6, lr}
c0de2e8c:	4605      	mov	r5, r0
c0de2e8e:	460c      	mov	r4, r1
c0de2e90:	6889      	ldr	r1, [r1, #8]
c0de2e92:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2e94:	f105 0620 	add.w	r6, r5, #32
c0de2e98:	4632      	mov	r2, r6
c0de2e9a:	f004 fce1 	bl	c0de7860 <cx_mont_invert_nprime>
c0de2e9e:	b9d0      	cbnz	r0, c0de2ed6 <tEdwards_normalize+0x4c>
c0de2ea0:	6822      	ldr	r2, [r4, #0]
c0de2ea2:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2ea6:	f000 f8d5 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2eaa:	b9a0      	cbnz	r0, c0de2ed6 <tEdwards_normalize+0x4c>
c0de2eac:	6862      	ldr	r2, [r4, #4]
c0de2eae:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2eb0:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2eb2:	f000 f8cf 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2eb6:	b970      	cbnz	r0, c0de2ed6 <tEdwards_normalize+0x4c>
c0de2eb8:	68a2      	ldr	r2, [r4, #8]
c0de2eba:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2ebc:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2ebe:	f000 f8c9 	bl	c0de3054 <OUTLINED_FUNCTION_0>
c0de2ec2:	b940      	cbnz	r0, c0de2ed6 <tEdwards_normalize+0x4c>
c0de2ec4:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2ec6:	6820      	ldr	r0, [r4, #0]
c0de2ec8:	f004 fbf8 	bl	c0de76bc <cx_bn_copy>
c0de2ecc:	b918      	cbnz	r0, c0de2ed6 <tEdwards_normalize+0x4c>
c0de2ece:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2ed0:	f000 f8f1 	bl	c0de30b6 <OUTLINED_FUNCTION_11>
c0de2ed4:	b100      	cbz	r0, c0de2ed8 <tEdwards_normalize+0x4e>
c0de2ed6:	bd70      	pop	{r4, r5, r6, pc}
c0de2ed8:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2eda:	68a0      	ldr	r0, [r4, #8]
c0de2edc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2ee0:	f004 bbec 	b.w	c0de76bc <cx_bn_copy>

c0de2ee4 <tEdwards_copy>:
c0de2ee4:	b5b0      	push	{r4, r5, r7, lr}
c0de2ee6:	460c      	mov	r4, r1
c0de2ee8:	4605      	mov	r5, r0
c0de2eea:	6801      	ldr	r1, [r0, #0]
c0de2eec:	6820      	ldr	r0, [r4, #0]
c0de2eee:	f004 fbe5 	bl	c0de76bc <cx_bn_copy>
c0de2ef2:	b918      	cbnz	r0, c0de2efc <tEdwards_copy+0x18>
c0de2ef4:	6869      	ldr	r1, [r5, #4]
c0de2ef6:	f000 f8de 	bl	c0de30b6 <OUTLINED_FUNCTION_11>
c0de2efa:	b100      	cbz	r0, c0de2efe <tEdwards_copy+0x1a>
c0de2efc:	bdb0      	pop	{r4, r5, r7, pc}
c0de2efe:	68a9      	ldr	r1, [r5, #8]
c0de2f00:	68a0      	ldr	r0, [r4, #8]
c0de2f02:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2f06:	f004 bbd9 	b.w	c0de76bc <cx_bn_copy>

c0de2f0a <tEdwards_alloc_init>:
c0de2f0a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2f0c:	460e      	mov	r6, r1
c0de2f0e:	6801      	ldr	r1, [r0, #0]
c0de2f10:	4607      	mov	r7, r0
c0de2f12:	4618      	mov	r0, r3
c0de2f14:	461c      	mov	r4, r3
c0de2f16:	4615      	mov	r5, r2
c0de2f18:	f004 fb9a 	bl	c0de7650 <cx_bn_alloc>
c0de2f1c:	b950      	cbnz	r0, c0de2f34 <tEdwards_alloc_init+0x2a>
c0de2f1e:	6839      	ldr	r1, [r7, #0]
c0de2f20:	1d20      	adds	r0, r4, #4
c0de2f22:	f004 fb95 	bl	c0de7650 <cx_bn_alloc>
c0de2f26:	b928      	cbnz	r0, c0de2f34 <tEdwards_alloc_init+0x2a>
c0de2f28:	6839      	ldr	r1, [r7, #0]
c0de2f2a:	f104 0008 	add.w	r0, r4, #8
c0de2f2e:	f004 fb8f 	bl	c0de7650 <cx_bn_alloc>
c0de2f32:	b100      	cbz	r0, c0de2f36 <tEdwards_alloc_init+0x2c>
c0de2f34:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2f36:	4638      	mov	r0, r7
c0de2f38:	4631      	mov	r1, r6
c0de2f3a:	462a      	mov	r2, r5
c0de2f3c:	4623      	mov	r3, r4
c0de2f3e:	b001      	add	sp, #4
c0de2f40:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2f44:	f7ff bee0 	b.w	c0de2d08 <tEdwards_init>

c0de2f48 <tEdwards_scalarMul_bn>:
c0de2f48:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f4c:	4607      	mov	r7, r0
c0de2f4e:	2000      	movs	r0, #0
c0de2f50:	4688      	mov	r8, r1
c0de2f52:	4615      	mov	r5, r2
c0de2f54:	2100      	movs	r1, #0
c0de2f56:	469b      	mov	fp, r3
c0de2f58:	9003      	str	r0, [sp, #12]
c0de2f5a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2f5e:	6810      	ldr	r0, [r2, #0]
c0de2f60:	aa03      	add	r2, sp, #12
c0de2f62:	f004 fbd7 	bl	c0de7714 <cx_bn_cmp_u32>
c0de2f66:	bb38      	cbnz	r0, c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de2f68:	9803      	ldr	r0, [sp, #12]
c0de2f6a:	b1d0      	cbz	r0, c0de2fa2 <tEdwards_scalarMul_bn+0x5a>
c0de2f6c:	6828      	ldr	r0, [r5, #0]
c0de2f6e:	a901      	add	r1, sp, #4
c0de2f70:	f004 fb8e 	bl	c0de7690 <cx_bn_nbytes>
c0de2f74:	bb00      	cbnz	r0, c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de2f76:	2002      	movs	r0, #2
c0de2f78:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2f7c:	f10d 040b 	add.w	r4, sp, #11
c0de2f80:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2f82:	9801      	ldr	r0, [sp, #4]
c0de2f84:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2f88:	2000      	movs	r0, #0
c0de2f8a:	2801      	cmp	r0, #1
c0de2f8c:	d00f      	beq.n	c0de2fae <tEdwards_scalarMul_bn+0x66>
c0de2f8e:	6828      	ldr	r0, [r5, #0]
c0de2f90:	4631      	mov	r1, r6
c0de2f92:	4622      	mov	r2, r4
c0de2f94:	f004 fbca 	bl	c0de772c <cx_bn_tst_bit>
c0de2f98:	b970      	cbnz	r0, c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de2f9a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2f9e:	3e01      	subs	r6, #1
c0de2fa0:	e7f3      	b.n	c0de2f8a <tEdwards_scalarMul_bn+0x42>
c0de2fa2:	4638      	mov	r0, r7
c0de2fa4:	4659      	mov	r1, fp
c0de2fa6:	f7ff ff37 	bl	c0de2e18 <tEdwards_SetNeutral>
c0de2faa:	b928      	cbnz	r0, c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de2fac:	e7de      	b.n	c0de2f6c <tEdwards_scalarMul_bn+0x24>
c0de2fae:	4640      	mov	r0, r8
c0de2fb0:	4659      	mov	r1, fp
c0de2fb2:	f7ff ff97 	bl	c0de2ee4 <tEdwards_copy>
c0de2fb6:	b110      	cbz	r0, c0de2fbe <tEdwards_scalarMul_bn+0x76>
c0de2fb8:	b004      	add	sp, #16
c0de2fba:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2fbe:	2001      	movs	r0, #1
c0de2fc0:	f10d 0a0b 	add.w	sl, sp, #11
c0de2fc4:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2fc8:	2e00      	cmp	r6, #0
c0de2fca:	d420      	bmi.n	c0de300e <tEdwards_scalarMul_bn+0xc6>
c0de2fcc:	4638      	mov	r0, r7
c0de2fce:	4659      	mov	r1, fp
c0de2fd0:	465a      	mov	r2, fp
c0de2fd2:	f7ff fc50 	bl	c0de2876 <tEdwards_double>
c0de2fd6:	2800      	cmp	r0, #0
c0de2fd8:	d1ee      	bne.n	c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de2fda:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2fdc:	4631      	mov	r1, r6
c0de2fde:	4652      	mov	r2, sl
c0de2fe0:	0040      	lsls	r0, r0, #1
c0de2fe2:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2fe4:	6828      	ldr	r0, [r5, #0]
c0de2fe6:	f004 fba1 	bl	c0de772c <cx_bn_tst_bit>
c0de2fea:	2800      	cmp	r0, #0
c0de2fec:	d1e4      	bne.n	c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de2fee:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2ff2:	b150      	cbz	r0, c0de300a <tEdwards_scalarMul_bn+0xc2>
c0de2ff4:	4638      	mov	r0, r7
c0de2ff6:	4659      	mov	r1, fp
c0de2ff8:	4642      	mov	r2, r8
c0de2ffa:	465b      	mov	r3, fp
c0de2ffc:	f7ff fca6 	bl	c0de294c <tEdwards_add>
c0de3000:	2800      	cmp	r0, #0
c0de3002:	d1d9      	bne.n	c0de2fb8 <tEdwards_scalarMul_bn+0x70>
c0de3004:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3006:	3001      	adds	r0, #1
c0de3008:	6538      	str	r0, [r7, #80]	@ 0x50
c0de300a:	3e01      	subs	r6, #1
c0de300c:	e7dc      	b.n	c0de2fc8 <tEdwards_scalarMul_bn+0x80>
c0de300e:	2000      	movs	r0, #0
c0de3010:	e7d2      	b.n	c0de2fb8 <tEdwards_scalarMul_bn+0x70>
	...

c0de3014 <tEdwards_scalarMul>:
c0de3014:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3016:	460c      	mov	r4, r1
c0de3018:	6801      	ldr	r1, [r0, #0]
c0de301a:	4299      	cmp	r1, r3
c0de301c:	bf3c      	itt	cc
c0de301e:	480c      	ldrcc	r0, [pc, #48]	@ (c0de3050 <tEdwards_scalarMul+0x3c>)
c0de3020:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de3022:	4605      	mov	r5, r0
c0de3024:	20ca      	movs	r0, #202	@ 0xca
c0de3026:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3028:	a801      	add	r0, sp, #4
c0de302a:	f004 fb1b 	bl	c0de7664 <cx_bn_alloc_init>
c0de302e:	b100      	cbz	r0, c0de3032 <tEdwards_scalarMul+0x1e>
c0de3030:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3032:	20b3      	movs	r0, #179	@ 0xb3
c0de3034:	9b06      	ldr	r3, [sp, #24]
c0de3036:	4621      	mov	r1, r4
c0de3038:	6528      	str	r0, [r5, #80]	@ 0x50
c0de303a:	aa01      	add	r2, sp, #4
c0de303c:	4628      	mov	r0, r5
c0de303e:	f7ff ff83 	bl	c0de2f48 <tEdwards_scalarMul_bn>
c0de3042:	2800      	cmp	r0, #0
c0de3044:	d1f4      	bne.n	c0de3030 <tEdwards_scalarMul+0x1c>
c0de3046:	a801      	add	r0, sp, #4
c0de3048:	f004 fb18 	bl	c0de767c <cx_bn_destroy>
c0de304c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de304e:	bf00      	nop
c0de3050:	5a4b4e01 	.word	0x5a4b4e01

c0de3054 <OUTLINED_FUNCTION_0>:
c0de3054:	4633      	mov	r3, r6
c0de3056:	f004 bbe7 	b.w	c0de7828 <cx_mont_mul>

c0de305a <OUTLINED_FUNCTION_1>:
c0de305a:	462b      	mov	r3, r5
c0de305c:	f004 bbe4 	b.w	c0de7828 <cx_mont_mul>

c0de3060 <OUTLINED_FUNCTION_2>:
c0de3060:	4633      	mov	r3, r6
c0de3062:	460a      	mov	r2, r1
c0de3064:	f004 bbe0 	b.w	c0de7828 <cx_mont_mul>

c0de3068 <OUTLINED_FUNCTION_3>:
c0de3068:	462a      	mov	r2, r5
c0de306a:	4601      	mov	r1, r0
c0de306c:	f004 bbc4 	b.w	c0de77f8 <cx_mont_to_montgomery>

c0de3070 <OUTLINED_FUNCTION_4>:
c0de3070:	4620      	mov	r0, r4
c0de3072:	f850 1b34 	ldr.w	r1, [r0], #52
c0de3076:	f004 baeb 	b.w	c0de7650 <cx_bn_alloc>

c0de307a <OUTLINED_FUNCTION_5>:
c0de307a:	4620      	mov	r0, r4
c0de307c:	f850 1b48 	ldr.w	r1, [r0], #72
c0de3080:	f004 bae6 	b.w	c0de7650 <cx_bn_alloc>

c0de3084 <OUTLINED_FUNCTION_6>:
c0de3084:	4620      	mov	r0, r4
c0de3086:	f850 1b40 	ldr.w	r1, [r0], #64
c0de308a:	f004 bae1 	b.w	c0de7650 <cx_bn_alloc>

c0de308e <OUTLINED_FUNCTION_7>:
c0de308e:	4620      	mov	r0, r4
c0de3090:	f850 1b38 	ldr.w	r1, [r0], #56
c0de3094:	f004 badc 	b.w	c0de7650 <cx_bn_alloc>

c0de3098 <OUTLINED_FUNCTION_8>:
c0de3098:	4620      	mov	r0, r4
c0de309a:	f850 1b30 	ldr.w	r1, [r0], #48
c0de309e:	f004 bad7 	b.w	c0de7650 <cx_bn_alloc>

c0de30a2 <OUTLINED_FUNCTION_9>:
c0de30a2:	4620      	mov	r0, r4
c0de30a4:	f850 1b44 	ldr.w	r1, [r0], #68
c0de30a8:	f004 bad2 	b.w	c0de7650 <cx_bn_alloc>

c0de30ac <OUTLINED_FUNCTION_10>:
c0de30ac:	4620      	mov	r0, r4
c0de30ae:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de30b2:	f004 bacd 	b.w	c0de7650 <cx_bn_alloc>

c0de30b6 <OUTLINED_FUNCTION_11>:
c0de30b6:	6860      	ldr	r0, [r4, #4]
c0de30b8:	f004 bb00 	b.w	c0de76bc <cx_bn_copy>

c0de30bc <grain_lfsr_advance>:
c0de30bc:	b5b0      	push	{r4, r5, r7, lr}
c0de30be:	68c2      	ldr	r2, [r0, #12]
c0de30c0:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de30c4:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de30c8:	ea4f 0234 	mov.w	r2, r4, rrx
c0de30cc:	07e4      	lsls	r4, r4, #31
c0de30ce:	60c5      	str	r5, [r0, #12]
c0de30d0:	07dd      	lsls	r5, r3, #31
c0de30d2:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de30d6:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de30da:	6044      	str	r4, [r0, #4]
c0de30dc:	4c15      	ldr	r4, [pc, #84]	@ (c0de3134 <grain_lfsr_advance+0x78>)
c0de30de:	6005      	str	r5, [r0, #0]
c0de30e0:	4021      	ands	r1, r4
c0de30e2:	4c15      	ldr	r4, [pc, #84]	@ (c0de3138 <grain_lfsr_advance+0x7c>)
c0de30e4:	4023      	ands	r3, r4
c0de30e6:	4419      	add	r1, r3
c0de30e8:	0c0c      	lsrs	r4, r1, #16
c0de30ea:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de30ee:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de30f2:	4421      	add	r1, r4
c0de30f4:	0a0c      	lsrs	r4, r1, #8
c0de30f6:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de30fa:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de30fe:	4061      	eors	r1, r4
c0de3100:	090c      	lsrs	r4, r1, #4
c0de3102:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de3106:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de310a:	4061      	eors	r1, r4
c0de310c:	088c      	lsrs	r4, r1, #2
c0de310e:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de3112:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de3116:	4061      	eors	r1, r4
c0de3118:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de311c:	ea4f 0331 	mov.w	r3, r1, rrx
c0de3120:	4059      	eors	r1, r3
c0de3122:	f001 0101 	and.w	r1, r1, #1
c0de3126:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de312a:	6082      	str	r2, [r0, #8]
c0de312c:	4608      	mov	r0, r1
c0de312e:	2100      	movs	r1, #0
c0de3130:	bdb0      	pop	{r4, r5, r7, pc}
c0de3132:	bf00      	nop
c0de3134:	00802001 	.word	0x00802001
c0de3138:	40080040 	.word	0x40080040

c0de313c <next64_graingen>:
c0de313c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de3140:	460c      	mov	r4, r1
c0de3142:	4605      	mov	r5, r0
c0de3144:	f04f 0a00 	mov.w	sl, #0
c0de3148:	f04f 0800 	mov.w	r8, #0
c0de314c:	2700      	movs	r7, #0
c0de314e:	42a7      	cmp	r7, r4
c0de3150:	d215      	bcs.n	c0de317e <next64_graingen+0x42>
c0de3152:	4628      	mov	r0, r5
c0de3154:	f7ff ffb2 	bl	c0de30bc <grain_lfsr_advance>
c0de3158:	4606      	mov	r6, r0
c0de315a:	4628      	mov	r0, r5
c0de315c:	f7ff ffae 	bl	c0de30bc <grain_lfsr_advance>
c0de3160:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de3164:	0781      	lsls	r1, r0, #30
c0de3166:	d5f2      	bpl.n	c0de314e <next64_graingen+0x12>
c0de3168:	f000 0001 	and.w	r0, r0, #1
c0de316c:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de3170:	3701      	adds	r7, #1
c0de3172:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de3176:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de317a:	4682      	mov	sl, r0
c0de317c:	e7e7      	b.n	c0de314e <next64_graingen+0x12>
c0de317e:	4650      	mov	r0, sl
c0de3180:	4641      	mov	r1, r8
c0de3182:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de3188 <init_generator>:
c0de3188:	b5b0      	push	{r4, r5, r7, lr}
c0de318a:	4a09      	ldr	r2, [pc, #36]	@ (c0de31b0 <init_generator+0x28>)
c0de318c:	4b09      	ldr	r3, [pc, #36]	@ (c0de31b4 <init_generator+0x2c>)
c0de318e:	4604      	mov	r4, r0
c0de3190:	25a0      	movs	r5, #160	@ 0xa0
c0de3192:	2000      	movs	r0, #0
c0de3194:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de3198:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de319c:	e9c4 3200 	strd	r3, r2, [r4]
c0de31a0:	b125      	cbz	r5, c0de31ac <init_generator+0x24>
c0de31a2:	4620      	mov	r0, r4
c0de31a4:	f7ff ff8a 	bl	c0de30bc <grain_lfsr_advance>
c0de31a8:	3d01      	subs	r5, #1
c0de31aa:	e7f9      	b.n	c0de31a0 <init_generator+0x18>
c0de31ac:	bdb0      	pop	{r4, r5, r7, pc}
c0de31ae:	bf00      	nop
c0de31b0:	fffcf010 	.word	0xfffcf010
c0de31b4:	1801fc02 	.word	0x1801fc02

c0de31b8 <gen_integer>:
c0de31b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de31bc:	4f20      	ldr	r7, [pc, #128]	@ (c0de3240 <gen_integer+0x88>)
c0de31be:	4e22      	ldr	r6, [pc, #136]	@ (c0de3248 <gen_integer+0x90>)
c0de31c0:	4605      	mov	r5, r0
c0de31c2:	460c      	mov	r4, r1
c0de31c4:	2000      	movs	r0, #0
c0de31c6:	46b8      	mov	r8, r7
c0de31c8:	4f1e      	ldr	r7, [pc, #120]	@ (c0de3244 <gen_integer+0x8c>)
c0de31ca:	447e      	add	r6, pc
c0de31cc:	b9f8      	cbnz	r0, c0de320e <gen_integer+0x56>
c0de31ce:	4628      	mov	r0, r5
c0de31d0:	213e      	movs	r1, #62	@ 0x3e
c0de31d2:	47b0      	blx	r6
c0de31d4:	e9c4 0100 	strd	r0, r1, [r4]
c0de31d8:	4628      	mov	r0, r5
c0de31da:	2140      	movs	r1, #64	@ 0x40
c0de31dc:	47b0      	blx	r6
c0de31de:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de31e2:	4628      	mov	r0, r5
c0de31e4:	2140      	movs	r1, #64	@ 0x40
c0de31e6:	47b0      	blx	r6
c0de31e8:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de31ec:	4628      	mov	r0, r5
c0de31ee:	2140      	movs	r1, #64	@ 0x40
c0de31f0:	47b0      	blx	r6
c0de31f2:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de31f6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de31fa:	463a      	mov	r2, r7
c0de31fc:	1bc0      	subs	r0, r0, r7
c0de31fe:	4640      	mov	r0, r8
c0de3200:	eb71 0008 	sbcs.w	r0, r1, r8
c0de3204:	f04f 0000 	mov.w	r0, #0
c0de3208:	bf38      	it	cc
c0de320a:	2001      	movcc	r0, #1
c0de320c:	e7de      	b.n	c0de31cc <gen_integer+0x14>
c0de320e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3212:	4d0e      	ldr	r5, [pc, #56]	@ (c0de324c <gen_integer+0x94>)
c0de3214:	447d      	add	r5, pc
c0de3216:	47a8      	blx	r5
c0de3218:	e9c4 0100 	strd	r0, r1, [r4]
c0de321c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de3220:	47a8      	blx	r5
c0de3222:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de3226:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de322a:	47a8      	blx	r5
c0de322c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3230:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de3234:	47a8      	blx	r5
c0de3236:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de323a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de323e:	bf00      	nop
c0de3240:	305a4b4e 	.word	0x305a4b4e
c0de3244:	4f582122 	.word	0x4f582122
c0de3248:	ffffff6f 	.word	0xffffff6f
c0de324c:	00000039 	.word	0x00000039

c0de3250 <rev64>:
c0de3250:	ba0a      	rev	r2, r1
c0de3252:	ba01      	rev	r1, r0
c0de3254:	4610      	mov	r0, r2
c0de3256:	4770      	bx	lr

c0de3258 <Poseidon_getNext_RC>:
c0de3258:	30c0      	adds	r0, #192	@ 0xc0
c0de325a:	f7ff bfad 	b.w	c0de31b8 <gen_integer>
	...

c0de3260 <Poseidon_alloc_init>:
c0de3260:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3264:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de3268:	4604      	mov	r4, r0
c0de326a:	30c0      	adds	r0, #192	@ 0xc0
c0de326c:	461e      	mov	r6, r3
c0de326e:	4617      	mov	r7, r2
c0de3270:	460d      	mov	r5, r1
c0de3272:	f7ff ff89 	bl	c0de3188 <init_generator>
c0de3276:	492c      	ldr	r1, [pc, #176]	@ (c0de3328 <Poseidon_alloc_init+0xc8>)
c0de3278:	46e8      	mov	r8, sp
c0de327a:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de327e:	4640      	mov	r0, r8
c0de3280:	4479      	add	r1, pc
c0de3282:	f004 fc9b 	bl	c0de7bbc <__aeabi_memcpy>
c0de3286:	2000      	movs	r0, #0
c0de3288:	7325      	strb	r5, [r4, #12]
c0de328a:	6166      	str	r6, [r4, #20]
c0de328c:	4621      	mov	r1, r4
c0de328e:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de3292:	1c78      	adds	r0, r7, #1
c0de3294:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de3298:	6830      	ldr	r0, [r6, #0]
c0de329a:	f004 f9f9 	bl	c0de7690 <cx_bn_nbytes>
c0de329e:	b930      	cbnz	r0, c0de32ae <Poseidon_alloc_init+0x4e>
c0de32a0:	4620      	mov	r0, r4
c0de32a2:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de32a6:	4631      	mov	r1, r6
c0de32a8:	f004 f9d2 	bl	c0de7650 <cx_bn_alloc>
c0de32ac:	b118      	cbz	r0, c0de32b6 <Poseidon_alloc_init+0x56>
c0de32ae:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de32b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de32b6:	68a0      	ldr	r0, [r4, #8]
c0de32b8:	2500      	movs	r5, #0
c0de32ba:	4285      	cmp	r5, r0
c0de32bc:	d230      	bcs.n	c0de3320 <Poseidon_alloc_init+0xc0>
c0de32be:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de32c2:	4631      	mov	r1, r6
c0de32c4:	f107 0018 	add.w	r0, r7, #24
c0de32c8:	f004 f9c2 	bl	c0de7650 <cx_bn_alloc>
c0de32cc:	2800      	cmp	r0, #0
c0de32ce:	d1ee      	bne.n	c0de32ae <Poseidon_alloc_init+0x4e>
c0de32d0:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de32d4:	4631      	mov	r1, r6
c0de32d6:	f004 f9bb 	bl	c0de7650 <cx_bn_alloc>
c0de32da:	2800      	cmp	r0, #0
c0de32dc:	d1e7      	bne.n	c0de32ae <Poseidon_alloc_init+0x4e>
c0de32de:	2700      	movs	r7, #0
c0de32e0:	68a0      	ldr	r0, [r4, #8]
c0de32e2:	4287      	cmp	r7, r0
c0de32e4:	d21a      	bcs.n	c0de331c <Poseidon_alloc_init+0xbc>
c0de32e6:	fb05 7000 	mla	r0, r5, r0, r7
c0de32ea:	4631      	mov	r1, r6
c0de32ec:	4633      	mov	r3, r6
c0de32ee:	fb00 8206 	mla	r2, r0, r6, r8
c0de32f2:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de32f6:	3030      	adds	r0, #48	@ 0x30
c0de32f8:	f004 f9b4 	bl	c0de7664 <cx_bn_alloc_init>
c0de32fc:	2800      	cmp	r0, #0
c0de32fe:	d1d6      	bne.n	c0de32ae <Poseidon_alloc_init+0x4e>
c0de3300:	68a0      	ldr	r0, [r4, #8]
c0de3302:	6962      	ldr	r2, [r4, #20]
c0de3304:	fb05 7000 	mla	r0, r5, r0, r7
c0de3308:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de330c:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de330e:	4601      	mov	r1, r0
c0de3310:	f004 fa72 	bl	c0de77f8 <cx_mont_to_montgomery>
c0de3314:	3701      	adds	r7, #1
c0de3316:	2800      	cmp	r0, #0
c0de3318:	d0e2      	beq.n	c0de32e0 <Poseidon_alloc_init+0x80>
c0de331a:	e7c8      	b.n	c0de32ae <Poseidon_alloc_init+0x4e>
c0de331c:	3501      	adds	r5, #1
c0de331e:	e7cc      	b.n	c0de32ba <Poseidon_alloc_init+0x5a>
c0de3320:	2001      	movs	r0, #1
c0de3322:	6120      	str	r0, [r4, #16]
c0de3324:	2000      	movs	r0, #0
c0de3326:	e7c2      	b.n	c0de32ae <Poseidon_alloc_init+0x4e>
c0de3328:	00005978 	.word	0x00005978

c0de332c <Poseidon>:
c0de332c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3330:	b08c      	sub	sp, #48	@ 0x30
c0de3332:	4606      	mov	r6, r0
c0de3334:	6900      	ldr	r0, [r0, #16]
c0de3336:	2801      	cmp	r0, #1
c0de3338:	f040 80b4 	bne.w	c0de34a4 <Poseidon+0x178>
c0de333c:	69b0      	ldr	r0, [r6, #24]
c0de333e:	461f      	mov	r7, r3
c0de3340:	4692      	mov	sl, r2
c0de3342:	f004 f9c5 	bl	c0de76d0 <cx_bn_set_u32>
c0de3346:	2800      	cmp	r0, #0
c0de3348:	f040 80ad 	bne.w	c0de34a6 <Poseidon+0x17a>
c0de334c:	f106 000c 	add.w	r0, r6, #12
c0de3350:	f106 0818 	add.w	r8, r6, #24
c0de3354:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de3358:	9001      	str	r0, [sp, #4]
c0de335a:	2000      	movs	r0, #0
c0de335c:	2844      	cmp	r0, #68	@ 0x44
c0de335e:	f000 80ae 	beq.w	c0de34be <Poseidon+0x192>
c0de3362:	6834      	ldr	r4, [r6, #0]
c0de3364:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de3368:	f04f 0a00 	mov.w	sl, #0
c0de336c:	68b0      	ldr	r0, [r6, #8]
c0de336e:	4582      	cmp	sl, r0
c0de3370:	d224      	bcs.n	c0de33bc <Poseidon+0x90>
c0de3372:	ad04      	add	r5, sp, #16
c0de3374:	4658      	mov	r0, fp
c0de3376:	4629      	mov	r1, r5
c0de3378:	f7ff ff1e 	bl	c0de31b8 <gen_integer>
c0de337c:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3380:	4629      	mov	r1, r5
c0de3382:	4622      	mov	r2, r4
c0de3384:	f004 f98e 	bl	c0de76a4 <cx_bn_init>
c0de3388:	2800      	cmp	r0, #0
c0de338a:	f040 808c 	bne.w	c0de34a6 <Poseidon+0x17a>
c0de338e:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3392:	6972      	ldr	r2, [r6, #20]
c0de3394:	4601      	mov	r1, r0
c0de3396:	f004 fa2f 	bl	c0de77f8 <cx_mont_to_montgomery>
c0de339a:	2800      	cmp	r0, #0
c0de339c:	f040 8083 	bne.w	c0de34a6 <Poseidon+0x17a>
c0de33a0:	6972      	ldr	r2, [r6, #20]
c0de33a2:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de33a6:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de33aa:	6813      	ldr	r3, [r2, #0]
c0de33ac:	4602      	mov	r2, r0
c0de33ae:	f004 f9c9 	bl	c0de7744 <cx_bn_mod_add>
c0de33b2:	f10a 0a01 	add.w	sl, sl, #1
c0de33b6:	2800      	cmp	r0, #0
c0de33b8:	d0d8      	beq.n	c0de336c <Poseidon+0x40>
c0de33ba:	e074      	b.n	c0de34a6 <Poseidon+0x17a>
c0de33bc:	9902      	ldr	r1, [sp, #8]
c0de33be:	2904      	cmp	r1, #4
c0de33c0:	d301      	bcc.n	c0de33c6 <Poseidon+0x9a>
c0de33c2:	2940      	cmp	r1, #64	@ 0x40
c0de33c4:	d323      	bcc.n	c0de340e <Poseidon+0xe2>
c0de33c6:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de33ca:	2400      	movs	r4, #0
c0de33cc:	4284      	cmp	r4, r0
c0de33ce:	d22b      	bcs.n	c0de3428 <Poseidon+0xfc>
c0de33d0:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de33d4:	6973      	ldr	r3, [r6, #20]
c0de33d6:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de33da:	460a      	mov	r2, r1
c0de33dc:	f004 fa24 	bl	c0de7828 <cx_mont_mul>
c0de33e0:	2800      	cmp	r0, #0
c0de33e2:	d160      	bne.n	c0de34a6 <Poseidon+0x17a>
c0de33e4:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de33e8:	6973      	ldr	r3, [r6, #20]
c0de33ea:	460a      	mov	r2, r1
c0de33ec:	f004 fa1c 	bl	c0de7828 <cx_mont_mul>
c0de33f0:	2800      	cmp	r0, #0
c0de33f2:	d158      	bne.n	c0de34a6 <Poseidon+0x17a>
c0de33f4:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de33f8:	6973      	ldr	r3, [r6, #20]
c0de33fa:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de33fe:	4601      	mov	r1, r0
c0de3400:	f004 fa12 	bl	c0de7828 <cx_mont_mul>
c0de3404:	2800      	cmp	r0, #0
c0de3406:	d14e      	bne.n	c0de34a6 <Poseidon+0x17a>
c0de3408:	68b0      	ldr	r0, [r6, #8]
c0de340a:	3401      	adds	r4, #1
c0de340c:	e7de      	b.n	c0de33cc <Poseidon+0xa0>
c0de340e:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3412:	9a01      	ldr	r2, [sp, #4]
c0de3414:	2301      	movs	r3, #1
c0de3416:	9100      	str	r1, [sp, #0]
c0de3418:	4601      	mov	r1, r0
c0de341a:	f004 fa11 	bl	c0de7840 <cx_mont_pow>
c0de341e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3422:	2800      	cmp	r0, #0
c0de3424:	d13f      	bne.n	c0de34a6 <Poseidon+0x17a>
c0de3426:	68b0      	ldr	r0, [r6, #8]
c0de3428:	2500      	movs	r5, #0
c0de342a:	4285      	cmp	r5, r0
c0de342c:	d229      	bcs.n	c0de3482 <Poseidon+0x156>
c0de342e:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3432:	2100      	movs	r1, #0
c0de3434:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3438:	f004 f94a 	bl	c0de76d0 <cx_bn_set_u32>
c0de343c:	bb98      	cbnz	r0, c0de34a6 <Poseidon+0x17a>
c0de343e:	9503      	str	r5, [sp, #12]
c0de3440:	2500      	movs	r5, #0
c0de3442:	68b0      	ldr	r0, [r6, #8]
c0de3444:	4285      	cmp	r5, r0
c0de3446:	d219      	bcs.n	c0de347c <Poseidon+0x150>
c0de3448:	9903      	ldr	r1, [sp, #12]
c0de344a:	6973      	ldr	r3, [r6, #20]
c0de344c:	fb01 5000 	mla	r0, r1, r0, r5
c0de3450:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3454:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3458:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de345a:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de345e:	f004 f9e3 	bl	c0de7828 <cx_mont_mul>
c0de3462:	bb00      	cbnz	r0, c0de34a6 <Poseidon+0x17a>
c0de3464:	6971      	ldr	r1, [r6, #20]
c0de3466:	6820      	ldr	r0, [r4, #0]
c0de3468:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de346c:	680b      	ldr	r3, [r1, #0]
c0de346e:	4601      	mov	r1, r0
c0de3470:	f004 f968 	bl	c0de7744 <cx_bn_mod_add>
c0de3474:	3501      	adds	r5, #1
c0de3476:	2800      	cmp	r0, #0
c0de3478:	d0e3      	beq.n	c0de3442 <Poseidon+0x116>
c0de347a:	e014      	b.n	c0de34a6 <Poseidon+0x17a>
c0de347c:	9d03      	ldr	r5, [sp, #12]
c0de347e:	3501      	adds	r5, #1
c0de3480:	e7d3      	b.n	c0de342a <Poseidon+0xfe>
c0de3482:	2400      	movs	r4, #0
c0de3484:	4284      	cmp	r4, r0
c0de3486:	d20a      	bcs.n	c0de349e <Poseidon+0x172>
c0de3488:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de348c:	6988      	ldr	r0, [r1, #24]
c0de348e:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3492:	f004 f913 	bl	c0de76bc <cx_bn_copy>
c0de3496:	b930      	cbnz	r0, c0de34a6 <Poseidon+0x17a>
c0de3498:	68b0      	ldr	r0, [r6, #8]
c0de349a:	3401      	adds	r4, #1
c0de349c:	e7f2      	b.n	c0de3484 <Poseidon+0x158>
c0de349e:	9802      	ldr	r0, [sp, #8]
c0de34a0:	3001      	adds	r0, #1
c0de34a2:	e75b      	b.n	c0de335c <Poseidon+0x30>
c0de34a4:	4808      	ldr	r0, [pc, #32]	@ (c0de34c8 <Poseidon+0x19c>)
c0de34a6:	b00c      	add	sp, #48	@ 0x30
c0de34a8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de34ac:	f858 1b04 	ldr.w	r1, [r8], #4
c0de34b0:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de34b4:	f004 f902 	bl	c0de76bc <cx_bn_copy>
c0de34b8:	3f01      	subs	r7, #1
c0de34ba:	2800      	cmp	r0, #0
c0de34bc:	d1f3      	bne.n	c0de34a6 <Poseidon+0x17a>
c0de34be:	2f00      	cmp	r7, #0
c0de34c0:	d1f4      	bne.n	c0de34ac <Poseidon+0x180>
c0de34c2:	2000      	movs	r0, #0
c0de34c4:	e7ef      	b.n	c0de34a6 <Poseidon+0x17a>
c0de34c6:	bf00      	nop
c0de34c8:	5a4b4e02 	.word	0x5a4b4e02

c0de34cc <RFC9591_taggedHash>:
c0de34cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de34ce:	b0d9      	sub	sp, #356	@ 0x164
c0de34d0:	460e      	mov	r6, r1
c0de34d2:	4607      	mov	r7, r0
c0de34d4:	a858      	add	r0, sp, #352	@ 0x160
c0de34d6:	2140      	movs	r1, #64	@ 0x40
c0de34d8:	461c      	mov	r4, r3
c0de34da:	4615      	mov	r5, r2
c0de34dc:	f004 f8b8 	bl	c0de7650 <cx_bn_alloc>
c0de34e0:	bbd8      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de34e2:	491f      	ldr	r1, [pc, #124]	@ (c0de3560 <RFC9591_taggedHash+0x94>)
c0de34e4:	4668      	mov	r0, sp
c0de34e6:	221d      	movs	r2, #29
c0de34e8:	4479      	add	r1, pc
c0de34ea:	f004 fb67 	bl	c0de7bbc <__aeabi_memcpy>
c0de34ee:	a808      	add	r0, sp, #32
c0de34f0:	2109      	movs	r1, #9
c0de34f2:	2240      	movs	r2, #64	@ 0x40
c0de34f4:	f003 fe37 	bl	c0de7166 <cx_hash_init_ex>
c0de34f8:	bb78      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de34fa:	a808      	add	r0, sp, #32
c0de34fc:	4669      	mov	r1, sp
c0de34fe:	221d      	movs	r2, #29
c0de3500:	f003 fe36 	bl	c0de7170 <cx_hash_update>
c0de3504:	bb48      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de3506:	a808      	add	r0, sp, #32
c0de3508:	4639      	mov	r1, r7
c0de350a:	4632      	mov	r2, r6
c0de350c:	f003 fe30 	bl	c0de7170 <cx_hash_update>
c0de3510:	bb18      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de3512:	a808      	add	r0, sp, #32
c0de3514:	4629      	mov	r1, r5
c0de3516:	4622      	mov	r2, r4
c0de3518:	f003 fe2a 	bl	c0de7170 <cx_hash_update>
c0de351c:	b9e8      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de351e:	a808      	add	r0, sp, #32
c0de3520:	ae48      	add	r6, sp, #288	@ 0x120
c0de3522:	4631      	mov	r1, r6
c0de3524:	f003 fe15 	bl	c0de7152 <cx_hash_final>
c0de3528:	b9b8      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de352a:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de352e:	2000      	movs	r0, #0
c0de3530:	213f      	movs	r1, #63	@ 0x3f
c0de3532:	2820      	cmp	r0, #32
c0de3534:	d002      	beq.n	c0de353c <RFC9591_taggedHash+0x70>
c0de3536:	f000 f8dd 	bl	c0de36f4 <OUTLINED_FUNCTION_3>
c0de353a:	e7fa      	b.n	c0de3532 <RFC9591_taggedHash+0x66>
c0de353c:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de353e:	a948      	add	r1, sp, #288	@ 0x120
c0de3540:	2240      	movs	r2, #64	@ 0x40
c0de3542:	f004 f8af 	bl	c0de76a4 <cx_bn_init>
c0de3546:	b940      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de3548:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de354a:	4628      	mov	r0, r5
c0de354c:	4622      	mov	r2, r4
c0de354e:	f004 f91d 	bl	c0de778c <cx_bn_reduce>
c0de3552:	b910      	cbnz	r0, c0de355a <RFC9591_taggedHash+0x8e>
c0de3554:	a858      	add	r0, sp, #352	@ 0x160
c0de3556:	f004 f891 	bl	c0de767c <cx_bn_destroy>
c0de355a:	b059      	add	sp, #356	@ 0x164
c0de355c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de355e:	bf00      	nop
c0de3560:	00005b90 	.word	0x00005b90

c0de3564 <Babyfrost_H1>:
c0de3564:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3566:	4605      	mov	r5, r0
c0de3568:	206f      	movs	r0, #111	@ 0x6f
c0de356a:	f000 f8b7 	bl	c0de36dc <OUTLINED_FUNCTION_1>
c0de356e:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3572:	f000 f8ba 	bl	c0de36ea <OUTLINED_FUNCTION_2>
c0de3576:	a803      	add	r0, sp, #12
c0de3578:	f7ff ffa8 	bl	c0de34cc <RFC9591_taggedHash>
c0de357c:	b004      	add	sp, #16
c0de357e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3580 <Babyfrost_H3>:
c0de3580:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3582:	4605      	mov	r5, r0
c0de3584:	2065      	movs	r0, #101	@ 0x65
c0de3586:	460c      	mov	r4, r1
c0de3588:	e9cd 2300 	strd	r2, r3, [sp]
c0de358c:	2105      	movs	r1, #5
c0de358e:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3592:	4804      	ldr	r0, [pc, #16]	@ (c0de35a4 <Babyfrost_H3+0x24>)
c0de3594:	462a      	mov	r2, r5
c0de3596:	4623      	mov	r3, r4
c0de3598:	9002      	str	r0, [sp, #8]
c0de359a:	a802      	add	r0, sp, #8
c0de359c:	f7ff ff96 	bl	c0de34cc <RFC9591_taggedHash>
c0de35a0:	b004      	add	sp, #16
c0de35a2:	bdb0      	pop	{r4, r5, r7, pc}
c0de35a4:	636e6f6e 	.word	0x636e6f6e

c0de35a8 <Babyfrost_H4>:
c0de35a8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de35aa:	4605      	mov	r5, r0
c0de35ac:	2067      	movs	r0, #103	@ 0x67
c0de35ae:	f000 f895 	bl	c0de36dc <OUTLINED_FUNCTION_1>
c0de35b2:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de35b6:	f000 f898 	bl	c0de36ea <OUTLINED_FUNCTION_2>
c0de35ba:	a803      	add	r0, sp, #12
c0de35bc:	f7ff ff86 	bl	c0de34cc <RFC9591_taggedHash>
c0de35c0:	b004      	add	sp, #16
c0de35c2:	bdb0      	pop	{r4, r5, r7, pc}

c0de35c4 <Babyfrost_H5>:
c0de35c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de35c6:	4605      	mov	r5, r0
c0de35c8:	206d      	movs	r0, #109	@ 0x6d
c0de35ca:	f000 f887 	bl	c0de36dc <OUTLINED_FUNCTION_1>
c0de35ce:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de35d2:	f000 f88a 	bl	c0de36ea <OUTLINED_FUNCTION_2>
c0de35d6:	a803      	add	r0, sp, #12
c0de35d8:	f7ff ff78 	bl	c0de34cc <RFC9591_taggedHash>
c0de35dc:	b004      	add	sp, #16
c0de35de:	bdb0      	pop	{r4, r5, r7, pc}

c0de35e0 <zkn_frost_hash_init>:
c0de35e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de35e2:	461d      	mov	r5, r3
c0de35e4:	4604      	mov	r4, r0
c0de35e6:	f003 fdbe 	bl	c0de7166 <cx_hash_init_ex>
c0de35ea:	b938      	cbnz	r0, c0de35fc <zkn_frost_hash_init+0x1c>
c0de35ec:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de35f0:	9e08      	ldr	r6, [sp, #32]
c0de35f2:	4620      	mov	r0, r4
c0de35f4:	4629      	mov	r1, r5
c0de35f6:	f003 fdbb 	bl	c0de7170 <cx_hash_update>
c0de35fa:	b100      	cbz	r0, c0de35fe <zkn_frost_hash_init+0x1e>
c0de35fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de35fe:	4620      	mov	r0, r4
c0de3600:	4639      	mov	r1, r7
c0de3602:	4632      	mov	r2, r6
c0de3604:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de3608:	f003 bdb2 	b.w	c0de7170 <cx_hash_update>

c0de360c <zkn_frost_H1_init>:
c0de360c:	b570      	push	{r4, r5, r6, lr}
c0de360e:	b08c      	sub	sp, #48	@ 0x30
c0de3610:	4604      	mov	r4, r0
c0de3612:	206f      	movs	r0, #111	@ 0x6f
c0de3614:	221d      	movs	r2, #29
c0de3616:	261d      	movs	r6, #29
c0de3618:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de361c:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3620:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3624:	ad03      	add	r5, sp, #12
c0de3626:	4905      	ldr	r1, [pc, #20]	@ (c0de363c <zkn_frost_H1_init+0x30>)
c0de3628:	4628      	mov	r0, r5
c0de362a:	4479      	add	r1, pc
c0de362c:	f004 fac6 	bl	c0de7bbc <__aeabi_memcpy>
c0de3630:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3632:	f000 f849 	bl	c0de36c8 <OUTLINED_FUNCTION_0>
c0de3636:	b00c      	add	sp, #48	@ 0x30
c0de3638:	bd70      	pop	{r4, r5, r6, pc}
c0de363a:	bf00      	nop
c0de363c:	00005a4e 	.word	0x00005a4e

c0de3640 <zkn_frost_H5_init>:
c0de3640:	b570      	push	{r4, r5, r6, lr}
c0de3642:	b08c      	sub	sp, #48	@ 0x30
c0de3644:	4604      	mov	r4, r0
c0de3646:	206d      	movs	r0, #109	@ 0x6d
c0de3648:	221d      	movs	r2, #29
c0de364a:	261d      	movs	r6, #29
c0de364c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3650:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3654:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3658:	ad03      	add	r5, sp, #12
c0de365a:	4905      	ldr	r1, [pc, #20]	@ (c0de3670 <zkn_frost_H5_init+0x30>)
c0de365c:	4628      	mov	r0, r5
c0de365e:	4479      	add	r1, pc
c0de3660:	f004 faac 	bl	c0de7bbc <__aeabi_memcpy>
c0de3664:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3666:	f000 f82f 	bl	c0de36c8 <OUTLINED_FUNCTION_0>
c0de366a:	b00c      	add	sp, #48	@ 0x30
c0de366c:	bd70      	pop	{r4, r5, r6, pc}
c0de366e:	bf00      	nop
c0de3670:	00005a1a 	.word	0x00005a1a

c0de3674 <zkn_frost_hash_update>:
c0de3674:	f003 bd7c 	b.w	c0de7170 <cx_hash_update>

c0de3678 <zkn_frost_hash_final>:
c0de3678:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de367a:	b091      	sub	sp, #68	@ 0x44
c0de367c:	460c      	mov	r4, r1
c0de367e:	4607      	mov	r7, r0
c0de3680:	a810      	add	r0, sp, #64	@ 0x40
c0de3682:	2140      	movs	r1, #64	@ 0x40
c0de3684:	4615      	mov	r5, r2
c0de3686:	f003 ffe3 	bl	c0de7650 <cx_bn_alloc>
c0de368a:	b9d8      	cbnz	r0, c0de36c4 <zkn_frost_hash_final+0x4c>
c0de368c:	466e      	mov	r6, sp
c0de368e:	4638      	mov	r0, r7
c0de3690:	4631      	mov	r1, r6
c0de3692:	f003 fd5e 	bl	c0de7152 <cx_hash_final>
c0de3696:	b9a8      	cbnz	r0, c0de36c4 <zkn_frost_hash_final+0x4c>
c0de3698:	2000      	movs	r0, #0
c0de369a:	213f      	movs	r1, #63	@ 0x3f
c0de369c:	2820      	cmp	r0, #32
c0de369e:	d002      	beq.n	c0de36a6 <zkn_frost_hash_final+0x2e>
c0de36a0:	f000 f828 	bl	c0de36f4 <OUTLINED_FUNCTION_3>
c0de36a4:	e7fa      	b.n	c0de369c <zkn_frost_hash_final+0x24>
c0de36a6:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de36a8:	4669      	mov	r1, sp
c0de36aa:	2240      	movs	r2, #64	@ 0x40
c0de36ac:	f003 fffa 	bl	c0de76a4 <cx_bn_init>
c0de36b0:	b940      	cbnz	r0, c0de36c4 <zkn_frost_hash_final+0x4c>
c0de36b2:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de36b4:	4628      	mov	r0, r5
c0de36b6:	4622      	mov	r2, r4
c0de36b8:	f004 f868 	bl	c0de778c <cx_bn_reduce>
c0de36bc:	b910      	cbnz	r0, c0de36c4 <zkn_frost_hash_final+0x4c>
c0de36be:	a810      	add	r0, sp, #64	@ 0x40
c0de36c0:	f003 ffdc 	bl	c0de767c <cx_bn_destroy>
c0de36c4:	b011      	add	sp, #68	@ 0x44
c0de36c6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de36c8 <OUTLINED_FUNCTION_0>:
c0de36c8:	2003      	movs	r0, #3
c0de36ca:	2240      	movs	r2, #64	@ 0x40
c0de36cc:	462b      	mov	r3, r5
c0de36ce:	e9cd 6100 	strd	r6, r1, [sp]
c0de36d2:	9002      	str	r0, [sp, #8]
c0de36d4:	4620      	mov	r0, r4
c0de36d6:	2109      	movs	r1, #9
c0de36d8:	f7ff bf82 	b.w	c0de35e0 <zkn_frost_hash_init>

c0de36dc <OUTLINED_FUNCTION_1>:
c0de36dc:	460c      	mov	r4, r1
c0de36de:	e9cd 2300 	strd	r2, r3, [sp]
c0de36e2:	2103      	movs	r1, #3
c0de36e4:	f88d 000e 	strb.w	r0, [sp, #14]
c0de36e8:	4770      	bx	lr

c0de36ea <OUTLINED_FUNCTION_2>:
c0de36ea:	462a      	mov	r2, r5
c0de36ec:	4623      	mov	r3, r4
c0de36ee:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de36f2:	4770      	bx	lr

c0de36f4 <OUTLINED_FUNCTION_3>:
c0de36f4:	5c32      	ldrb	r2, [r6, r0]
c0de36f6:	5c73      	ldrb	r3, [r6, r1]
c0de36f8:	5433      	strb	r3, [r6, r0]
c0de36fa:	5472      	strb	r2, [r6, r1]
c0de36fc:	3901      	subs	r1, #1
c0de36fe:	3001      	adds	r0, #1
c0de3700:	4770      	bx	lr

c0de3702 <os_io_handle_default_apdu>:
c0de3702:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3704:	b09d      	sub	sp, #116	@ 0x74
c0de3706:	4615      	mov	r5, r2
c0de3708:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de370a:	b3c8      	cbz	r0, c0de3780 <os_io_handle_default_apdu+0x7e>
c0de370c:	b3c1      	cbz	r1, c0de3780 <os_io_handle_default_apdu+0x7e>
c0de370e:	b3bd      	cbz	r5, c0de3780 <os_io_handle_default_apdu+0x7e>
c0de3710:	461c      	mov	r4, r3
c0de3712:	b3ab      	cbz	r3, c0de3780 <os_io_handle_default_apdu+0x7e>
c0de3714:	b10a      	cbz	r2, c0de371a <os_io_handle_default_apdu+0x18>
c0de3716:	2100      	movs	r1, #0
c0de3718:	7011      	strb	r1, [r2, #0]
c0de371a:	7801      	ldrb	r1, [r0, #0]
c0de371c:	29b0      	cmp	r1, #176	@ 0xb0
c0de371e:	d131      	bne.n	c0de3784 <os_io_handle_default_apdu+0x82>
c0de3720:	7841      	ldrb	r1, [r0, #1]
c0de3722:	29a7      	cmp	r1, #167	@ 0xa7
c0de3724:	d031      	beq.n	c0de378a <os_io_handle_default_apdu+0x88>
c0de3726:	2906      	cmp	r1, #6
c0de3728:	d036      	beq.n	c0de3798 <os_io_handle_default_apdu+0x96>
c0de372a:	2901      	cmp	r1, #1
c0de372c:	d131      	bne.n	c0de3792 <os_io_handle_default_apdu+0x90>
c0de372e:	7881      	ldrb	r1, [r0, #2]
c0de3730:	bb79      	cbnz	r1, c0de3792 <os_io_handle_default_apdu+0x90>
c0de3732:	78c0      	ldrb	r0, [r0, #3]
c0de3734:	bb68      	cbnz	r0, c0de3792 <os_io_handle_default_apdu+0x90>
c0de3736:	6820      	ldr	r0, [r4, #0]
c0de3738:	2100      	movs	r1, #0
c0de373a:	6021      	str	r1, [r4, #0]
c0de373c:	2803      	cmp	r0, #3
c0de373e:	d321      	bcc.n	c0de3784 <os_io_handle_default_apdu+0x82>
c0de3740:	2601      	movs	r6, #1
c0de3742:	1ec7      	subs	r7, r0, #3
c0de3744:	6026      	str	r6, [r4, #0]
c0de3746:	702e      	strb	r6, [r5, #0]
c0de3748:	6820      	ldr	r0, [r4, #0]
c0de374a:	1a3a      	subs	r2, r7, r0
c0de374c:	4428      	add	r0, r5
c0de374e:	1c41      	adds	r1, r0, #1
c0de3750:	2001      	movs	r0, #1
c0de3752:	f004 f8eb 	bl	c0de792c <os_registry_get_current_app_tag>
c0de3756:	f000 f83f 	bl	c0de37d8 <OUTLINED_FUNCTION_0>
c0de375a:	6020      	str	r0, [r4, #0]
c0de375c:	1a3a      	subs	r2, r7, r0
c0de375e:	4428      	add	r0, r5
c0de3760:	1c41      	adds	r1, r0, #1
c0de3762:	2002      	movs	r0, #2
c0de3764:	f004 f8e2 	bl	c0de792c <os_registry_get_current_app_tag>
c0de3768:	f000 f836 	bl	c0de37d8 <OUTLINED_FUNCTION_0>
c0de376c:	1c41      	adds	r1, r0, #1
c0de376e:	6021      	str	r1, [r4, #0]
c0de3770:	542e      	strb	r6, [r5, r0]
c0de3772:	f004 f8d3 	bl	c0de791c <os_flags>
c0de3776:	6821      	ldr	r1, [r4, #0]
c0de3778:	1c4a      	adds	r2, r1, #1
c0de377a:	6022      	str	r2, [r4, #0]
c0de377c:	5468      	strb	r0, [r5, r1]
c0de377e:	e028      	b.n	c0de37d2 <os_io_handle_default_apdu+0xd0>
c0de3780:	7814      	ldrb	r4, [r2, #0]
c0de3782:	e01e      	b.n	c0de37c2 <os_io_handle_default_apdu+0xc0>
c0de3784:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3788:	e01b      	b.n	c0de37c2 <os_io_handle_default_apdu+0xc0>
c0de378a:	7881      	ldrb	r1, [r0, #2]
c0de378c:	b909      	cbnz	r1, c0de3792 <os_io_handle_default_apdu+0x90>
c0de378e:	78c0      	ldrb	r0, [r0, #3]
c0de3790:	b1d0      	cbz	r0, c0de37c8 <os_io_handle_default_apdu+0xc6>
c0de3792:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de3796:	e014      	b.n	c0de37c2 <os_io_handle_default_apdu+0xc0>
c0de3798:	2100      	movs	r1, #0
c0de379a:	6021      	str	r1, [r4, #0]
c0de379c:	7883      	ldrb	r3, [r0, #2]
c0de379e:	7902      	ldrb	r2, [r0, #4]
c0de37a0:	ad02      	add	r5, sp, #8
c0de37a2:	e9cd 1500 	strd	r1, r5, [sp]
c0de37a6:	1d41      	adds	r1, r0, #5
c0de37a8:	4618      	mov	r0, r3
c0de37aa:	2300      	movs	r3, #0
c0de37ac:	f004 f882 	bl	c0de78b4 <os_pki_load_certificate>
c0de37b0:	4604      	mov	r4, r0
c0de37b2:	4628      	mov	r0, r5
c0de37b4:	216c      	movs	r1, #108	@ 0x6c
c0de37b6:	f004 fa19 	bl	c0de7bec <explicit_bzero>
c0de37ba:	2c00      	cmp	r4, #0
c0de37bc:	bf08      	it	eq
c0de37be:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de37c2:	4620      	mov	r0, r4
c0de37c4:	b01d      	add	sp, #116	@ 0x74
c0de37c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de37c8:	2000      	movs	r0, #0
c0de37ca:	6020      	str	r0, [r4, #0]
c0de37cc:	b10a      	cbz	r2, c0de37d2 <os_io_handle_default_apdu+0xd0>
c0de37ce:	2001      	movs	r0, #1
c0de37d0:	7010      	strb	r0, [r2, #0]
c0de37d2:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de37d6:	e7f4      	b.n	c0de37c2 <os_io_handle_default_apdu+0xc0>

c0de37d8 <OUTLINED_FUNCTION_0>:
c0de37d8:	6821      	ldr	r1, [r4, #0]
c0de37da:	1c4a      	adds	r2, r1, #1
c0de37dc:	6022      	str	r2, [r4, #0]
c0de37de:	5468      	strb	r0, [r5, r1]
c0de37e0:	6821      	ldr	r1, [r4, #0]
c0de37e2:	4408      	add	r0, r1
c0de37e4:	4770      	bx	lr

c0de37e6 <io_process_itc_ux_event>:
c0de37e6:	b580      	push	{r7, lr}
c0de37e8:	78c0      	ldrb	r0, [r0, #3]
c0de37ea:	2820      	cmp	r0, #32
c0de37ec:	d107      	bne.n	c0de37fe <io_process_itc_ux_event+0x18>
c0de37ee:	2001      	movs	r0, #1
c0de37f0:	f003 fcdd 	bl	c0de71ae <nbgl_objAllowDrawing>
c0de37f4:	f003 fcea 	bl	c0de71cc <nbgl_screenRedraw>
c0de37f8:	f003 fccf 	bl	c0de719a <nbgl_refresh>
c0de37fc:	2100      	movs	r1, #0
c0de37fe:	4608      	mov	r0, r1
c0de3800:	bd80      	pop	{r7, pc}
	...

c0de3804 <io_legacy_apdu_tx>:
c0de3804:	b5b0      	push	{r4, r5, r7, lr}
c0de3806:	460a      	mov	r2, r1
c0de3808:	4601      	mov	r1, r0
c0de380a:	4806      	ldr	r0, [pc, #24]	@ (c0de3824 <io_legacy_apdu_tx+0x20>)
c0de380c:	2300      	movs	r3, #0
c0de380e:	2500      	movs	r5, #0
c0de3810:	eb09 0400 	add.w	r4, r9, r0
c0de3814:	7860      	ldrb	r0, [r4, #1]
c0de3816:	f004 f8b3 	bl	c0de7980 <os_io_tx_cmd>
c0de381a:	4903      	ldr	r1, [pc, #12]	@ (c0de3828 <io_legacy_apdu_tx+0x24>)
c0de381c:	7065      	strb	r5, [r4, #1]
c0de381e:	4449      	add	r1, r9
c0de3820:	718d      	strb	r5, [r1, #6]
c0de3822:	bdb0      	pop	{r4, r5, r7, pc}
c0de3824:	0000063e 	.word	0x0000063e
c0de3828:	00000636 	.word	0x00000636

c0de382c <io_legacy_apdu_rx>:
c0de382c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de382e:	4e66      	ldr	r6, [pc, #408]	@ (c0de39c8 <io_legacy_apdu_rx+0x19c>)
c0de3830:	2100      	movs	r1, #0
c0de3832:	4605      	mov	r5, r0
c0de3834:	2200      	movs	r2, #0
c0de3836:	2301      	movs	r3, #1
c0de3838:	f88d 100b 	strb.w	r1, [sp, #11]
c0de383c:	f240 1111 	movw	r1, #273	@ 0x111
c0de3840:	eb09 0006 	add.w	r0, r9, r6
c0de3844:	f004 f8a8 	bl	c0de7998 <os_io_rx_evt>
c0de3848:	4604      	mov	r4, r0
c0de384a:	2801      	cmp	r0, #1
c0de384c:	f2c0 80ab 	blt.w	c0de39a6 <io_legacy_apdu_rx+0x17a>
c0de3850:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3854:	f1a0 0110 	sub.w	r1, r0, #16
c0de3858:	2916      	cmp	r1, #22
c0de385a:	d805      	bhi.n	c0de3868 <io_legacy_apdu_rx+0x3c>
c0de385c:	2201      	movs	r2, #1
c0de385e:	fa02 f101 	lsl.w	r1, r2, r1
c0de3862:	4a5a      	ldr	r2, [pc, #360]	@ (c0de39cc <io_legacy_apdu_rx+0x1a0>)
c0de3864:	4211      	tst	r1, r2
c0de3866:	d106      	bne.n	c0de3876 <io_legacy_apdu_rx+0x4a>
c0de3868:	1e41      	subs	r1, r0, #1
c0de386a:	2902      	cmp	r1, #2
c0de386c:	d367      	bcc.n	c0de393e <io_legacy_apdu_rx+0x112>
c0de386e:	2830      	cmp	r0, #48	@ 0x30
c0de3870:	bf18      	it	ne
c0de3872:	2840      	cmpne	r0, #64	@ 0x40
c0de3874:	d177      	bne.n	c0de3966 <io_legacy_apdu_rx+0x13a>
c0de3876:	4f56      	ldr	r7, [pc, #344]	@ (c0de39d0 <io_legacy_apdu_rx+0x1a4>)
c0de3878:	eb09 0107 	add.w	r1, r9, r7
c0de387c:	7048      	strb	r0, [r1, #1]
c0de387e:	f004 f829 	bl	c0de78d4 <os_perso_is_pin_set>
c0de3882:	28aa      	cmp	r0, #170	@ 0xaa
c0de3884:	d103      	bne.n	c0de388e <io_legacy_apdu_rx+0x62>
c0de3886:	f004 f82e 	bl	c0de78e6 <os_global_pin_is_validated>
c0de388a:	28aa      	cmp	r0, #170	@ 0xaa
c0de388c:	d145      	bne.n	c0de391a <io_legacy_apdu_rx+0xee>
c0de388e:	eb09 0006 	add.w	r0, r9, r6
c0de3892:	7840      	ldrb	r0, [r0, #1]
c0de3894:	28b0      	cmp	r0, #176	@ 0xb0
c0de3896:	d12c      	bne.n	c0de38f2 <io_legacy_apdu_rx+0xc6>
c0de3898:	f240 1011 	movw	r0, #273	@ 0x111
c0de389c:	1e61      	subs	r1, r4, #1
c0de389e:	9001      	str	r0, [sp, #4]
c0de38a0:	f10d 000b 	add.w	r0, sp, #11
c0de38a4:	9000      	str	r0, [sp, #0]
c0de38a6:	484b      	ldr	r0, [pc, #300]	@ (c0de39d4 <io_legacy_apdu_rx+0x1a8>)
c0de38a8:	ab01      	add	r3, sp, #4
c0de38aa:	eb09 0500 	add.w	r5, r9, r0
c0de38ae:	eb09 0006 	add.w	r0, r9, r6
c0de38b2:	3001      	adds	r0, #1
c0de38b4:	462a      	mov	r2, r5
c0de38b6:	f7ff ff24 	bl	c0de3702 <os_io_handle_default_apdu>
c0de38ba:	2400      	movs	r4, #0
c0de38bc:	9901      	ldr	r1, [sp, #4]
c0de38be:	eb09 0607 	add.w	r6, r9, r7
c0de38c2:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de38c6:	bf18      	it	ne
c0de38c8:	4621      	movne	r1, r4
c0de38ca:	0a02      	lsrs	r2, r0, #8
c0de38cc:	2300      	movs	r3, #0
c0de38ce:	546a      	strb	r2, [r5, r1]
c0de38d0:	186a      	adds	r2, r5, r1
c0de38d2:	7050      	strb	r0, [r2, #1]
c0de38d4:	1c88      	adds	r0, r1, #2
c0de38d6:	4629      	mov	r1, r5
c0de38d8:	9001      	str	r0, [sp, #4]
c0de38da:	b282      	uxth	r2, r0
c0de38dc:	7870      	ldrb	r0, [r6, #1]
c0de38de:	f004 f84f 	bl	c0de7980 <os_io_tx_cmd>
c0de38e2:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de38e6:	7074      	strb	r4, [r6, #1]
c0de38e8:	2901      	cmp	r1, #1
c0de38ea:	d06a      	beq.n	c0de39c2 <io_legacy_apdu_rx+0x196>
c0de38ec:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de38f0:	e059      	b.n	c0de39a6 <io_legacy_apdu_rx+0x17a>
c0de38f2:	eb09 0007 	add.w	r0, r9, r7
c0de38f6:	7840      	ldrb	r0, [r0, #1]
c0de38f8:	2810      	cmp	r0, #16
c0de38fa:	d043      	beq.n	c0de3984 <io_legacy_apdu_rx+0x158>
c0de38fc:	2840      	cmp	r0, #64	@ 0x40
c0de38fe:	d043      	beq.n	c0de3988 <io_legacy_apdu_rx+0x15c>
c0de3900:	2821      	cmp	r0, #33	@ 0x21
c0de3902:	d043      	beq.n	c0de398c <io_legacy_apdu_rx+0x160>
c0de3904:	2822      	cmp	r0, #34	@ 0x22
c0de3906:	d037      	beq.n	c0de3978 <io_legacy_apdu_rx+0x14c>
c0de3908:	2823      	cmp	r0, #35	@ 0x23
c0de390a:	d037      	beq.n	c0de397c <io_legacy_apdu_rx+0x150>
c0de390c:	2830      	cmp	r0, #48	@ 0x30
c0de390e:	d037      	beq.n	c0de3980 <io_legacy_apdu_rx+0x154>
c0de3910:	2820      	cmp	r0, #32
c0de3912:	bf14      	ite	ne
c0de3914:	2000      	movne	r0, #0
c0de3916:	2001      	moveq	r0, #1
c0de3918:	e039      	b.n	c0de398e <io_legacy_apdu_rx+0x162>
c0de391a:	482e      	ldr	r0, [pc, #184]	@ (c0de39d4 <io_legacy_apdu_rx+0x1a8>)
c0de391c:	2155      	movs	r1, #85	@ 0x55
c0de391e:	2202      	movs	r2, #2
c0de3920:	2300      	movs	r3, #0
c0de3922:	f809 1000 	strb.w	r1, [r9, r0]
c0de3926:	eb09 0100 	add.w	r1, r9, r0
c0de392a:	2015      	movs	r0, #21
c0de392c:	7048      	strb	r0, [r1, #1]
c0de392e:	eb09 0007 	add.w	r0, r9, r7
c0de3932:	7840      	ldrb	r0, [r0, #1]
c0de3934:	b003      	add	sp, #12
c0de3936:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de393a:	f004 b821 	b.w	c0de7980 <os_io_tx_cmd>
c0de393e:	4f27      	ldr	r7, [pc, #156]	@ (c0de39dc <io_legacy_apdu_rx+0x1b0>)
c0de3940:	444e      	add	r6, r9
c0de3942:	3c01      	subs	r4, #1
c0de3944:	1c71      	adds	r1, r6, #1
c0de3946:	4622      	mov	r2, r4
c0de3948:	eb09 0007 	add.w	r0, r9, r7
c0de394c:	f004 f936 	bl	c0de7bbc <__aeabi_memcpy>
c0de3950:	7870      	ldrb	r0, [r6, #1]
c0de3952:	281a      	cmp	r0, #26
c0de3954:	d10a      	bne.n	c0de396c <io_legacy_apdu_rx+0x140>
c0de3956:	eb09 0007 	add.w	r0, r9, r7
c0de395a:	4621      	mov	r1, r4
c0de395c:	b003      	add	sp, #12
c0de395e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3962:	f7ff bf40 	b.w	c0de37e6 <io_process_itc_ux_event>
c0de3966:	2842      	cmp	r0, #66	@ 0x42
c0de3968:	d01d      	beq.n	c0de39a6 <io_legacy_apdu_rx+0x17a>
c0de396a:	e028      	b.n	c0de39be <io_legacy_apdu_rx+0x192>
c0de396c:	b1ed      	cbz	r5, c0de39aa <io_legacy_apdu_rx+0x17e>
c0de396e:	2000      	movs	r0, #0
c0de3970:	2400      	movs	r4, #0
c0de3972:	f003 f8fb 	bl	c0de6b6c <io_event>
c0de3976:	e016      	b.n	c0de39a6 <io_legacy_apdu_rx+0x17a>
c0de3978:	2004      	movs	r0, #4
c0de397a:	e008      	b.n	c0de398e <io_legacy_apdu_rx+0x162>
c0de397c:	2007      	movs	r0, #7
c0de397e:	e006      	b.n	c0de398e <io_legacy_apdu_rx+0x162>
c0de3980:	2002      	movs	r0, #2
c0de3982:	e004      	b.n	c0de398e <io_legacy_apdu_rx+0x162>
c0de3984:	2006      	movs	r0, #6
c0de3986:	e002      	b.n	c0de398e <io_legacy_apdu_rx+0x162>
c0de3988:	2003      	movs	r0, #3
c0de398a:	e000      	b.n	c0de398e <io_legacy_apdu_rx+0x162>
c0de398c:	2005      	movs	r0, #5
c0de398e:	4912      	ldr	r1, [pc, #72]	@ (c0de39d8 <io_legacy_apdu_rx+0x1ac>)
c0de3990:	3c01      	subs	r4, #1
c0de3992:	4622      	mov	r2, r4
c0de3994:	4449      	add	r1, r9
c0de3996:	7188      	strb	r0, [r1, #6]
c0de3998:	480e      	ldr	r0, [pc, #56]	@ (c0de39d4 <io_legacy_apdu_rx+0x1a8>)
c0de399a:	eb09 0106 	add.w	r1, r9, r6
c0de399e:	3101      	adds	r1, #1
c0de39a0:	4448      	add	r0, r9
c0de39a2:	f004 f90b 	bl	c0de7bbc <__aeabi_memcpy>
c0de39a6:	4620      	mov	r0, r4
c0de39a8:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de39aa:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de39ae:	2815      	cmp	r0, #21
c0de39b0:	d8dd      	bhi.n	c0de396e <io_legacy_apdu_rx+0x142>
c0de39b2:	2101      	movs	r1, #1
c0de39b4:	fa01 f000 	lsl.w	r0, r1, r0
c0de39b8:	4909      	ldr	r1, [pc, #36]	@ (c0de39e0 <io_legacy_apdu_rx+0x1b4>)
c0de39ba:	4208      	tst	r0, r1
c0de39bc:	d0d7      	beq.n	c0de396e <io_legacy_apdu_rx+0x142>
c0de39be:	2400      	movs	r4, #0
c0de39c0:	e7f1      	b.n	c0de39a6 <io_legacy_apdu_rx+0x17a>
c0de39c2:	20ff      	movs	r0, #255	@ 0xff
c0de39c4:	f003 ffbe 	bl	c0de7944 <os_sched_exit>
c0de39c8:	00000525 	.word	0x00000525
c0de39cc:	007f0001 	.word	0x007f0001
c0de39d0:	0000063e 	.word	0x0000063e
c0de39d4:	00000414 	.word	0x00000414
c0de39d8:	00000636 	.word	0x00000636
c0de39dc:	000007bc 	.word	0x000007bc
c0de39e0:	00205020 	.word	0x00205020

c0de39e4 <io_seproxyhal_init>:
c0de39e4:	b570      	push	{r4, r5, r6, lr}
c0de39e6:	b08a      	sub	sp, #40	@ 0x28
c0de39e8:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3a18 <io_seproxyhal_init+0x34>)
c0de39ea:	2600      	movs	r6, #0
c0de39ec:	2118      	movs	r1, #24
c0de39ee:	eb09 0005 	add.w	r0, r9, r5
c0de39f2:	7046      	strb	r6, [r0, #1]
c0de39f4:	ac01      	add	r4, sp, #4
c0de39f6:	4620      	mov	r0, r4
c0de39f8:	f004 f8ea 	bl	c0de7bd0 <__aeabi_memclr>
c0de39fc:	2011      	movs	r0, #17
c0de39fe:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3a02:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3a06:	4620      	mov	r0, r4
c0de3a08:	f003 ffa6 	bl	c0de7958 <os_io_init>
c0de3a0c:	2001      	movs	r0, #1
c0de3a0e:	f809 0005 	strb.w	r0, [r9, r5]
c0de3a12:	b00a      	add	sp, #40	@ 0x28
c0de3a14:	bd70      	pop	{r4, r5, r6, pc}
c0de3a16:	bf00      	nop
c0de3a18:	0000063e 	.word	0x0000063e

c0de3a1c <nbgl_layoutGet>:
c0de3a1c:	b570      	push	{r4, r5, r6, lr}
c0de3a1e:	4605      	mov	r5, r0
c0de3a20:	7800      	ldrb	r0, [r0, #0]
c0de3a22:	b148      	cbz	r0, c0de3a38 <nbgl_layoutGet+0x1c>
c0de3a24:	4819      	ldr	r0, [pc, #100]	@ (c0de3a8c <nbgl_layoutGet+0x70>)
c0de3a26:	eb09 0100 	add.w	r1, r9, r0
c0de3a2a:	7b8a      	ldrb	r2, [r1, #14]
c0de3a2c:	b152      	cbz	r2, c0de3a44 <nbgl_layoutGet+0x28>
c0de3a2e:	4448      	add	r0, r9
c0de3a30:	7e81      	ldrb	r1, [r0, #26]
c0de3a32:	b151      	cbz	r1, c0de3a4a <nbgl_layoutGet+0x2e>
c0de3a34:	2400      	movs	r4, #0
c0de3a36:	e026      	b.n	c0de3a86 <nbgl_layoutGet+0x6a>
c0de3a38:	4814      	ldr	r0, [pc, #80]	@ (c0de3a8c <nbgl_layoutGet+0x70>)
c0de3a3a:	eb09 0400 	add.w	r4, r9, r0
c0de3a3e:	2000      	movs	r0, #0
c0de3a40:	70a0      	strb	r0, [r4, #2]
c0de3a42:	e004      	b.n	c0de3a4e <nbgl_layoutGet+0x32>
c0de3a44:	f101 040c 	add.w	r4, r1, #12
c0de3a48:	e001      	b.n	c0de3a4e <nbgl_layoutGet+0x32>
c0de3a4a:	f100 0418 	add.w	r4, r0, #24
c0de3a4e:	2000      	movs	r0, #0
c0de3a50:	4626      	mov	r6, r4
c0de3a52:	60a0      	str	r0, [r4, #8]
c0de3a54:	6020      	str	r0, [r4, #0]
c0de3a56:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3a5a:	6868      	ldr	r0, [r5, #4]
c0de3a5c:	f003 fdac 	bl	c0de75b8 <pic>
c0de3a60:	60a0      	str	r0, [r4, #8]
c0de3a62:	7828      	ldrb	r0, [r5, #0]
c0de3a64:	f105 0208 	add.w	r2, r5, #8
c0de3a68:	7020      	strb	r0, [r4, #0]
c0de3a6a:	4b09      	ldr	r3, [pc, #36]	@ (c0de3a90 <nbgl_layoutGet+0x74>)
c0de3a6c:	447b      	add	r3, pc
c0de3a6e:	b120      	cbz	r0, c0de3a7a <nbgl_layoutGet+0x5e>
c0de3a70:	4630      	mov	r0, r6
c0de3a72:	2107      	movs	r1, #7
c0de3a74:	f003 fba5 	bl	c0de71c2 <nbgl_screenPush>
c0de3a78:	e004      	b.n	c0de3a84 <nbgl_layoutGet+0x68>
c0de3a7a:	4630      	mov	r0, r6
c0de3a7c:	2107      	movs	r1, #7
c0de3a7e:	f003 fb9b 	bl	c0de71b8 <nbgl_screenSet>
c0de3a82:	2000      	movs	r0, #0
c0de3a84:	7060      	strb	r0, [r4, #1]
c0de3a86:	4620      	mov	r0, r4
c0de3a88:	bd70      	pop	{r4, r5, r6, pc}
c0de3a8a:	bf00      	nop
c0de3a8c:	00000640 	.word	0x00000640
c0de3a90:	00000025 	.word	0x00000025

c0de3a94 <buttonCallback>:
c0de3a94:	b5b0      	push	{r4, r5, r7, lr}
c0de3a96:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3a9a:	4811      	ldr	r0, [pc, #68]	@ (c0de3ae0 <buttonCallback+0x4c>)
c0de3a9c:	2302      	movs	r3, #2
c0de3a9e:	1c5c      	adds	r4, r3, #1
c0de3aa0:	d01d      	beq.n	c0de3ade <buttonCallback+0x4a>
c0de3aa2:	b2dc      	uxtb	r4, r3
c0de3aa4:	eb09 0500 	add.w	r5, r9, r0
c0de3aa8:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3aac:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3ab0:	786d      	ldrb	r5, [r5, #1]
c0de3ab2:	42aa      	cmp	r2, r5
c0de3ab4:	d105      	bne.n	c0de3ac2 <buttonCallback+0x2e>
c0de3ab6:	eb09 0500 	add.w	r5, r9, r0
c0de3aba:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3abe:	78ad      	ldrb	r5, [r5, #2]
c0de3ac0:	b90d      	cbnz	r5, c0de3ac6 <buttonCallback+0x32>
c0de3ac2:	3b01      	subs	r3, #1
c0de3ac4:	e7eb      	b.n	c0de3a9e <buttonCallback+0xa>
c0de3ac6:	eb09 0200 	add.w	r2, r9, r0
c0de3aca:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3ace:	6892      	ldr	r2, [r2, #8]
c0de3ad0:	b12a      	cbz	r2, c0de3ade <buttonCallback+0x4a>
c0de3ad2:	4448      	add	r0, r9
c0de3ad4:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3ad8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3adc:	4710      	bx	r2
c0de3ade:	bdb0      	pop	{r4, r5, r7, pc}
c0de3ae0:	00000640 	.word	0x00000640

c0de3ae4 <nbgl_layoutAddNavigation>:
c0de3ae4:	b570      	push	{r4, r5, r6, lr}
c0de3ae6:	2800      	cmp	r0, #0
c0de3ae8:	d04d      	beq.n	c0de3b86 <nbgl_layoutAddNavigation+0xa2>
c0de3aea:	460d      	mov	r5, r1
c0de3aec:	7849      	ldrb	r1, [r1, #1]
c0de3aee:	4604      	mov	r4, r0
c0de3af0:	07c8      	lsls	r0, r1, #31
c0de3af2:	d022      	beq.n	c0de3b3a <nbgl_layoutAddNavigation+0x56>
c0de3af4:	7861      	ldrb	r1, [r4, #1]
c0de3af6:	2002      	movs	r0, #2
c0de3af8:	f003 fb77 	bl	c0de71ea <nbgl_objPoolGet>
c0de3afc:	782a      	ldrb	r2, [r5, #0]
c0de3afe:	7869      	ldrb	r1, [r5, #1]
c0de3b00:	4b23      	ldr	r3, [pc, #140]	@ (c0de3b90 <nbgl_layoutAddNavigation+0xac>)
c0de3b02:	4e24      	ldr	r6, [pc, #144]	@ (c0de3b94 <nbgl_layoutAddNavigation+0xb0>)
c0de3b04:	2a00      	cmp	r2, #0
c0de3b06:	447b      	add	r3, pc
c0de3b08:	447e      	add	r6, pc
c0de3b0a:	4602      	mov	r2, r0
c0de3b0c:	bf08      	it	eq
c0de3b0e:	461e      	moveq	r6, r3
c0de3b10:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3b14:	0e33      	lsrs	r3, r6, #24
c0de3b16:	70d3      	strb	r3, [r2, #3]
c0de3b18:	0c33      	lsrs	r3, r6, #16
c0de3b1a:	7093      	strb	r3, [r2, #2]
c0de3b1c:	0a32      	lsrs	r2, r6, #8
c0de3b1e:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3b22:	6862      	ldr	r2, [r4, #4]
c0de3b24:	78a3      	ldrb	r3, [r4, #2]
c0de3b26:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3b2a:	2203      	movs	r2, #3
c0de3b2c:	77c2      	strb	r2, [r0, #31]
c0de3b2e:	2204      	movs	r2, #4
c0de3b30:	7582      	strb	r2, [r0, #22]
c0de3b32:	2200      	movs	r2, #0
c0de3b34:	7242      	strb	r2, [r0, #9]
c0de3b36:	1c58      	adds	r0, r3, #1
c0de3b38:	70a0      	strb	r0, [r4, #2]
c0de3b3a:	0788      	lsls	r0, r1, #30
c0de3b3c:	f04f 0600 	mov.w	r6, #0
c0de3b40:	d523      	bpl.n	c0de3b8a <nbgl_layoutAddNavigation+0xa6>
c0de3b42:	7861      	ldrb	r1, [r4, #1]
c0de3b44:	2002      	movs	r0, #2
c0de3b46:	f003 fb50 	bl	c0de71ea <nbgl_objPoolGet>
c0de3b4a:	7829      	ldrb	r1, [r5, #0]
c0de3b4c:	4a12      	ldr	r2, [pc, #72]	@ (c0de3b98 <nbgl_layoutAddNavigation+0xb4>)
c0de3b4e:	4b13      	ldr	r3, [pc, #76]	@ (c0de3b9c <nbgl_layoutAddNavigation+0xb8>)
c0de3b50:	2900      	cmp	r1, #0
c0de3b52:	447a      	add	r2, pc
c0de3b54:	447b      	add	r3, pc
c0de3b56:	4601      	mov	r1, r0
c0de3b58:	bf08      	it	eq
c0de3b5a:	4613      	moveq	r3, r2
c0de3b5c:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3b60:	0e1a      	lsrs	r2, r3, #24
c0de3b62:	7246      	strb	r6, [r0, #9]
c0de3b64:	70ca      	strb	r2, [r1, #3]
c0de3b66:	0c1a      	lsrs	r2, r3, #16
c0de3b68:	708a      	strb	r2, [r1, #2]
c0de3b6a:	0a19      	lsrs	r1, r3, #8
c0de3b6c:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3b70:	6861      	ldr	r1, [r4, #4]
c0de3b72:	78a2      	ldrb	r2, [r4, #2]
c0de3b74:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3b78:	2103      	movs	r1, #3
c0de3b7a:	77c1      	strb	r1, [r0, #31]
c0de3b7c:	2106      	movs	r1, #6
c0de3b7e:	7581      	strb	r1, [r0, #22]
c0de3b80:	1c50      	adds	r0, r2, #1
c0de3b82:	70a0      	strb	r0, [r4, #2]
c0de3b84:	e001      	b.n	c0de3b8a <nbgl_layoutAddNavigation+0xa6>
c0de3b86:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3b8a:	4630      	mov	r0, r6
c0de3b8c:	bd70      	pop	{r4, r5, r6, pc}
c0de3b8e:	bf00      	nop
c0de3b90:	000042e8 	.word	0x000042e8
c0de3b94:	00004325 	.word	0x00004325
c0de3b98:	000042cd 	.word	0x000042cd
c0de3b9c:	0000428c 	.word	0x0000428c

c0de3ba0 <nbgl_layoutAddText>:
c0de3ba0:	2800      	cmp	r0, #0
c0de3ba2:	f000 8143 	beq.w	c0de3e2c <nbgl_layoutAddText+0x28c>
c0de3ba6:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3baa:	b088      	sub	sp, #32
c0de3bac:	460e      	mov	r6, r1
c0de3bae:	7841      	ldrb	r1, [r0, #1]
c0de3bb0:	4605      	mov	r5, r0
c0de3bb2:	2001      	movs	r0, #1
c0de3bb4:	4617      	mov	r7, r2
c0de3bb6:	461c      	mov	r4, r3
c0de3bb8:	f003 fb17 	bl	c0de71ea <nbgl_objPoolGet>
c0de3bbc:	4680      	mov	r8, r0
c0de3bbe:	2003      	movs	r0, #3
c0de3bc0:	2f00      	cmp	r7, #0
c0de3bc2:	bf08      	it	eq
c0de3bc4:	2001      	moveq	r0, #1
c0de3bc6:	7869      	ldrb	r1, [r5, #1]
c0de3bc8:	f888 0020 	strb.w	r0, [r8, #32]
c0de3bcc:	f003 fb12 	bl	c0de71f4 <nbgl_containerPoolGet>
c0de3bd0:	4641      	mov	r1, r8
c0de3bd2:	0e02      	lsrs	r2, r0, #24
c0de3bd4:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3bd8:	f04f 0b00 	mov.w	fp, #0
c0de3bdc:	9704      	str	r7, [sp, #16]
c0de3bde:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3be2:	f888 a004 	strb.w	sl, [r8, #4]
c0de3be6:	f888 b005 	strb.w	fp, [r8, #5]
c0de3bea:	70ca      	strb	r2, [r1, #3]
c0de3bec:	0c02      	lsrs	r2, r0, #16
c0de3bee:	0a00      	lsrs	r0, r0, #8
c0de3bf0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3bf4:	708a      	strb	r2, [r1, #2]
c0de3bf6:	2004      	movs	r0, #4
c0de3bf8:	7869      	ldrb	r1, [r5, #1]
c0de3bfa:	f003 faf6 	bl	c0de71ea <nbgl_objPoolGet>
c0de3bfe:	4607      	mov	r7, r0
c0de3c00:	2003      	movs	r0, #3
c0de3c02:	77f8      	strb	r0, [r7, #31]
c0de3c04:	4630      	mov	r0, r6
c0de3c06:	f003 fcd7 	bl	c0de75b8 <pic>
c0de3c0a:	4601      	mov	r1, r0
c0de3c0c:	2008      	movs	r0, #8
c0de3c0e:	f887 b005 	strb.w	fp, [r7, #5]
c0de3c12:	f887 a004 	strb.w	sl, [r7, #4]
c0de3c16:	9403      	str	r4, [sp, #12]
c0de3c18:	2c00      	cmp	r4, #0
c0de3c1a:	bf08      	it	eq
c0de3c1c:	200a      	moveq	r0, #10
c0de3c1e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3c22:	2205      	movs	r2, #5
c0de3c24:	0e0b      	lsrs	r3, r1, #24
c0de3c26:	f887 2020 	strb.w	r2, [r7, #32]
c0de3c2a:	463a      	mov	r2, r7
c0de3c2c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3c30:	70d3      	strb	r3, [r2, #3]
c0de3c32:	0c0b      	lsrs	r3, r1, #16
c0de3c34:	7093      	strb	r3, [r2, #2]
c0de3c36:	0a0a      	lsrs	r2, r1, #8
c0de3c38:	2301      	movs	r3, #1
c0de3c3a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3c3e:	2272      	movs	r2, #114	@ 0x72
c0de3c40:	f003 faec 	bl	c0de721c <nbgl_getTextNbLinesInWidth>
c0de3c44:	4606      	mov	r6, r0
c0de3c46:	2805      	cmp	r0, #5
c0de3c48:	9505      	str	r5, [sp, #20]
c0de3c4a:	d31d      	bcc.n	c0de3c88 <nbgl_layoutAddText+0xe8>
c0de3c4c:	463e      	mov	r6, r7
c0de3c4e:	2004      	movs	r0, #4
c0de3c50:	2101      	movs	r1, #1
c0de3c52:	f10d 051e 	add.w	r5, sp, #30
c0de3c56:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de3c5a:	7872      	ldrb	r2, [r6, #1]
c0de3c5c:	78b3      	ldrb	r3, [r6, #2]
c0de3c5e:	78f4      	ldrb	r4, [r6, #3]
c0de3c60:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3c64:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3c68:	9101      	str	r1, [sp, #4]
c0de3c6a:	9500      	str	r5, [sp, #0]
c0de3c6c:	9d05      	ldr	r5, [sp, #20]
c0de3c6e:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3c72:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3c76:	2304      	movs	r3, #4
c0de3c78:	f000 fc78 	bl	c0de456c <OUTLINED_FUNCTION_4>
c0de3c7c:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3c80:	7130      	strb	r0, [r6, #4]
c0de3c82:	0a00      	lsrs	r0, r0, #8
c0de3c84:	7170      	strb	r0, [r6, #5]
c0de3c86:	2604      	movs	r6, #4
c0de3c88:	f000 fc78 	bl	c0de457c <OUTLINED_FUNCTION_6>
c0de3c8c:	4683      	mov	fp, r0
c0de3c8e:	79c0      	ldrb	r0, [r0, #7]
c0de3c90:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de3c94:	9c04      	ldr	r4, [sp, #16]
c0de3c96:	fb06 fa00 	mul.w	sl, r6, r0
c0de3c9a:	f041 0101 	orr.w	r1, r1, #1
c0de3c9e:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3ca2:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de3ca6:	2102      	movs	r1, #2
c0de3ca8:	f887 a006 	strb.w	sl, [r7, #6]
c0de3cac:	71f8      	strb	r0, [r7, #7]
c0de3cae:	4640      	mov	r0, r8
c0de3cb0:	75b9      	strb	r1, [r7, #22]
c0de3cb2:	2c00      	cmp	r4, #0
c0de3cb4:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3cb8:	7842      	ldrb	r2, [r0, #1]
c0de3cba:	7883      	ldrb	r3, [r0, #2]
c0de3cbc:	78c0      	ldrb	r0, [r0, #3]
c0de3cbe:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3cc2:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3cc6:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3cca:	6007      	str	r7, [r0, #0]
c0de3ccc:	f000 8110 	beq.w	c0de3ef0 <nbgl_layoutAddText+0x350>
c0de3cd0:	9803      	ldr	r0, [sp, #12]
c0de3cd2:	7869      	ldrb	r1, [r5, #1]
c0de3cd4:	2802      	cmp	r0, #2
c0de3cd6:	f040 80ab 	bne.w	c0de3e30 <nbgl_layoutAddText+0x290>
c0de3cda:	2005      	movs	r0, #5
c0de3cdc:	2505      	movs	r5, #5
c0de3cde:	f003 fa84 	bl	c0de71ea <nbgl_objPoolGet>
c0de3ce2:	2600      	movs	r6, #0
c0de3ce4:	4607      	mov	r7, r0
c0de3ce6:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3cea:	2001      	movs	r0, #1
c0de3cec:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3cf0:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3cf4:	f000 fc51 	bl	c0de459a <OUTLINED_FUNCTION_9>
c0de3cf8:	4620      	mov	r0, r4
c0de3cfa:	f003 fc5d 	bl	c0de75b8 <pic>
c0de3cfe:	4601      	mov	r1, r0
c0de3d00:	200e      	movs	r0, #14
c0de3d02:	71fe      	strb	r6, [r7, #7]
c0de3d04:	75bd      	strb	r5, [r7, #22]
c0de3d06:	71b8      	strb	r0, [r7, #6]
c0de3d08:	2008      	movs	r0, #8
c0de3d0a:	0e0a      	lsrs	r2, r1, #24
c0de3d0c:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3d10:	4638      	mov	r0, r7
c0de3d12:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3d16:	f000 fc20 	bl	c0de455a <OUTLINED_FUNCTION_3>
c0de3d1a:	2865      	cmp	r0, #101	@ 0x65
c0de3d1c:	f240 80d8 	bls.w	c0de3ed0 <nbgl_layoutAddText+0x330>
c0de3d20:	46bb      	mov	fp, r7
c0de3d22:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3d26:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3d2a:	2401      	movs	r4, #1
c0de3d2c:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3d30:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3d34:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3d38:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3d3c:	ae06      	add	r6, sp, #24
c0de3d3e:	e9cd 6400 	strd	r6, r4, [sp]
c0de3d42:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3d46:	f10d 031a 	add.w	r3, sp, #26
c0de3d4a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3d4e:	2266      	movs	r2, #102	@ 0x66
c0de3d50:	f003 fa5f 	bl	c0de7212 <nbgl_getTextMaxLenAndWidth>
c0de3d54:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3d58:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3d5c:	300c      	adds	r0, #12
c0de3d5e:	7138      	strb	r0, [r7, #4]
c0de3d60:	0a00      	lsrs	r0, r0, #8
c0de3d62:	7178      	strb	r0, [r7, #5]
c0de3d64:	486d      	ldr	r0, [pc, #436]	@ (c0de3f1c <nbgl_layoutAddText+0x37c>)
c0de3d66:	2e13      	cmp	r6, #19
c0de3d68:	bf28      	it	cs
c0de3d6a:	2613      	movcs	r6, #19
c0de3d6c:	f89b 1000 	ldrb.w	r1, [fp]
c0de3d70:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3d74:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3d78:	eb09 0400 	add.w	r4, r9, r0
c0de3d7c:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3d80:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3d84:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3d88:	4632      	mov	r2, r6
c0de3d8a:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3d8e:	4620      	mov	r0, r4
c0de3d90:	f003 ff14 	bl	c0de7bbc <__aeabi_memcpy>
c0de3d94:	2500      	movs	r5, #0
c0de3d96:	4620      	mov	r0, r4
c0de3d98:	55a5      	strb	r5, [r4, r6]
c0de3d9a:	f003 fc0d 	bl	c0de75b8 <pic>
c0de3d9e:	2101      	movs	r1, #1
c0de3da0:	f88b 0000 	strb.w	r0, [fp]
c0de3da4:	76bd      	strb	r5, [r7, #26]
c0de3da6:	9d05      	ldr	r5, [sp, #20]
c0de3da8:	7679      	strb	r1, [r7, #25]
c0de3daa:	0e01      	lsrs	r1, r0, #24
c0de3dac:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3db0:	0c01      	lsrs	r1, r0, #16
c0de3db2:	0a00      	lsrs	r0, r0, #8
c0de3db4:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3db8:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3dbc:	4640      	mov	r0, r8
c0de3dbe:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3dc2:	7842      	ldrb	r2, [r0, #1]
c0de3dc4:	7883      	ldrb	r3, [r0, #2]
c0de3dc6:	78c0      	ldrb	r0, [r0, #3]
c0de3dc8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3dcc:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3dd0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3dd4:	6047      	str	r7, [r0, #4]
c0de3dd6:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3dda:	2800      	cmp	r0, #0
c0de3ddc:	f000 8086 	beq.w	c0de3eec <nbgl_layoutAddText+0x34c>
c0de3de0:	7869      	ldrb	r1, [r5, #1]
c0de3de2:	2005      	movs	r0, #5
c0de3de4:	2605      	movs	r6, #5
c0de3de6:	f003 fa00 	bl	c0de71ea <nbgl_objPoolGet>
c0de3dea:	2500      	movs	r5, #0
c0de3dec:	4607      	mov	r7, r0
c0de3dee:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3df2:	2001      	movs	r0, #1
c0de3df4:	f000 fbd1 	bl	c0de459a <OUTLINED_FUNCTION_9>
c0de3df8:	9804      	ldr	r0, [sp, #16]
c0de3dfa:	f003 fbdd 	bl	c0de75b8 <pic>
c0de3dfe:	210e      	movs	r1, #14
c0de3e00:	71fd      	strb	r5, [r7, #7]
c0de3e02:	71b9      	strb	r1, [r7, #6]
c0de3e04:	2108      	movs	r1, #8
c0de3e06:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3e0a:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de3e0e:	4401      	add	r1, r0
c0de3e10:	4638      	mov	r0, r7
c0de3e12:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3e16:	0e0a      	lsrs	r2, r1, #24
c0de3e18:	f000 fb9f 	bl	c0de455a <OUTLINED_FUNCTION_3>
c0de3e1c:	300c      	adds	r0, #12
c0de3e1e:	210f      	movs	r1, #15
c0de3e20:	75be      	strb	r6, [r7, #22]
c0de3e22:	7138      	strb	r0, [r7, #4]
c0de3e24:	0a00      	lsrs	r0, r0, #8
c0de3e26:	7178      	strb	r0, [r7, #5]
c0de3e28:	2002      	movs	r0, #2
c0de3e2a:	e057      	b.n	c0de3edc <nbgl_layoutAddText+0x33c>
c0de3e2c:	f000 bbb2 	b.w	c0de4594 <OUTLINED_FUNCTION_8>
c0de3e30:	f000 fba1 	bl	c0de4576 <OUTLINED_FUNCTION_5>
c0de3e34:	2603      	movs	r6, #3
c0de3e36:	4607      	mov	r7, r0
c0de3e38:	77c6      	strb	r6, [r0, #31]
c0de3e3a:	4620      	mov	r0, r4
c0de3e3c:	f003 fbbc 	bl	c0de75b8 <pic>
c0de3e40:	4601      	mov	r1, r0
c0de3e42:	2072      	movs	r0, #114	@ 0x72
c0de3e44:	2400      	movs	r4, #0
c0de3e46:	2301      	movs	r3, #1
c0de3e48:	7138      	strb	r0, [r7, #4]
c0de3e4a:	200a      	movs	r0, #10
c0de3e4c:	0e0a      	lsrs	r2, r1, #24
c0de3e4e:	717c      	strb	r4, [r7, #5]
c0de3e50:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e54:	f000 fb61 	bl	c0de451a <OUTLINED_FUNCTION_0>
c0de3e58:	2804      	cmp	r0, #4
c0de3e5a:	d31e      	bcc.n	c0de3e9a <nbgl_layoutAddText+0x2fa>
c0de3e5c:	463d      	mov	r5, r7
c0de3e5e:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3e62:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3e66:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3e6a:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3e6e:	78ab      	ldrb	r3, [r5, #2]
c0de3e70:	78e9      	ldrb	r1, [r5, #3]
c0de3e72:	aa07      	add	r2, sp, #28
c0de3e74:	9200      	str	r2, [sp, #0]
c0de3e76:	2201      	movs	r2, #1
c0de3e78:	9201      	str	r2, [sp, #4]
c0de3e7a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3e7e:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3e82:	2303      	movs	r3, #3
c0de3e84:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3e88:	2272      	movs	r2, #114	@ 0x72
c0de3e8a:	f003 f9d6 	bl	c0de723a <nbgl_getTextMaxLenInNbLines>
c0de3e8e:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3e92:	7128      	strb	r0, [r5, #4]
c0de3e94:	0a00      	lsrs	r0, r0, #8
c0de3e96:	7168      	strb	r0, [r5, #5]
c0de3e98:	2003      	movs	r0, #3
c0de3e9a:	9903      	ldr	r1, [sp, #12]
c0de3e9c:	2900      	cmp	r1, #0
c0de3e9e:	bf08      	it	eq
c0de3ea0:	4606      	moveq	r6, r0
c0de3ea2:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3ea6:	76bc      	strb	r4, [r7, #26]
c0de3ea8:	75bc      	strb	r4, [r7, #22]
c0de3eaa:	fb06 f100 	mul.w	r1, r6, r0
c0de3eae:	fb06 a000 	mla	r0, r6, r0, sl
c0de3eb2:	71b9      	strb	r1, [r7, #6]
c0de3eb4:	0a09      	lsrs	r1, r1, #8
c0de3eb6:	71f9      	strb	r1, [r7, #7]
c0de3eb8:	2102      	movs	r1, #2
c0de3eba:	f100 0a02 	add.w	sl, r0, #2
c0de3ebe:	7679      	strb	r1, [r7, #25]
c0de3ec0:	2105      	movs	r1, #5
c0de3ec2:	f887 1020 	strb.w	r1, [r7, #32]
c0de3ec6:	4641      	mov	r1, r8
c0de3ec8:	f000 fb3a 	bl	c0de4540 <OUTLINED_FUNCTION_2>
c0de3ecc:	604f      	str	r7, [r1, #4]
c0de3ece:	e00f      	b.n	c0de3ef0 <nbgl_layoutAddText+0x350>
c0de3ed0:	300c      	adds	r0, #12
c0de3ed2:	2108      	movs	r1, #8
c0de3ed4:	7138      	strb	r0, [r7, #4]
c0de3ed6:	0a00      	lsrs	r0, r0, #8
c0de3ed8:	7178      	strb	r0, [r7, #5]
c0de3eda:	2001      	movs	r0, #1
c0de3edc:	2200      	movs	r2, #0
c0de3ede:	7679      	strb	r1, [r7, #25]
c0de3ee0:	4641      	mov	r1, r8
c0de3ee2:	76ba      	strb	r2, [r7, #26]
c0de3ee4:	f000 fb2c 	bl	c0de4540 <OUTLINED_FUNCTION_2>
c0de3ee8:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3eec:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3ef0:	6868      	ldr	r0, [r5, #4]
c0de3ef2:	78a9      	ldrb	r1, [r5, #2]
c0de3ef4:	2205      	movs	r2, #5
c0de3ef6:	f888 2016 	strb.w	r2, [r8, #22]
c0de3efa:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3efe:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3f02:	2000      	movs	r0, #0
c0de3f04:	3101      	adds	r1, #1
c0de3f06:	f888 a006 	strb.w	sl, [r8, #6]
c0de3f0a:	f888 2007 	strb.w	r2, [r8, #7]
c0de3f0e:	f888 001f 	strb.w	r0, [r8, #31]
c0de3f12:	70a9      	strb	r1, [r5, #2]
c0de3f14:	b008      	add	sp, #32
c0de3f16:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3f1a:	bf00      	nop
c0de3f1c:	00000664 	.word	0x00000664

c0de3f20 <nbgl_layoutAddMenuList>:
c0de3f20:	2800      	cmp	r0, #0
c0de3f22:	d04f      	beq.n	c0de3fc4 <nbgl_layoutAddMenuList+0xa4>
c0de3f24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f28:	460c      	mov	r4, r1
c0de3f2a:	4605      	mov	r5, r0
c0de3f2c:	2700      	movs	r7, #0
c0de3f2e:	f04f 0b05 	mov.w	fp, #5
c0de3f32:	f04f 0803 	mov.w	r8, #3
c0de3f36:	f04f 0a00 	mov.w	sl, #0
c0de3f3a:	7920      	ldrb	r0, [r4, #4]
c0de3f3c:	4582      	cmp	sl, r0
c0de3f3e:	d23e      	bcs.n	c0de3fbe <nbgl_layoutAddMenuList+0x9e>
c0de3f40:	7960      	ldrb	r0, [r4, #5]
c0de3f42:	2803      	cmp	r0, #3
c0de3f44:	d302      	bcc.n	c0de3f4c <nbgl_layoutAddMenuList+0x2c>
c0de3f46:	1e81      	subs	r1, r0, #2
c0de3f48:	4551      	cmp	r1, sl
c0de3f4a:	dc35      	bgt.n	c0de3fb8 <nbgl_layoutAddMenuList+0x98>
c0de3f4c:	3002      	adds	r0, #2
c0de3f4e:	4550      	cmp	r0, sl
c0de3f50:	d332      	bcc.n	c0de3fb8 <nbgl_layoutAddMenuList+0x98>
c0de3f52:	7869      	ldrb	r1, [r5, #1]
c0de3f54:	f000 fb0f 	bl	c0de4576 <OUTLINED_FUNCTION_5>
c0de3f58:	6821      	ldr	r1, [r4, #0]
c0de3f5a:	4606      	mov	r6, r0
c0de3f5c:	fa5f f08a 	uxtb.w	r0, sl
c0de3f60:	4788      	blx	r1
c0de3f62:	7961      	ldrb	r1, [r4, #5]
c0de3f64:	220a      	movs	r2, #10
c0de3f66:	458a      	cmp	sl, r1
c0de3f68:	bf08      	it	eq
c0de3f6a:	2208      	moveq	r2, #8
c0de3f6c:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3f70:	71f7      	strb	r7, [r6, #7]
c0de3f72:	7177      	strb	r7, [r6, #5]
c0de3f74:	f886 b020 	strb.w	fp, [r6, #32]
c0de3f78:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3f7c:	f886 b016 	strb.w	fp, [r6, #22]
c0de3f80:	f886 801f 	strb.w	r8, [r6, #31]
c0de3f84:	4632      	mov	r2, r6
c0de3f86:	0e03      	lsrs	r3, r0, #24
c0de3f88:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3f8c:	70d3      	strb	r3, [r2, #3]
c0de3f8e:	0c03      	lsrs	r3, r0, #16
c0de3f90:	0a00      	lsrs	r0, r0, #8
c0de3f92:	7093      	strb	r3, [r2, #2]
c0de3f94:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3f98:	6868      	ldr	r0, [r5, #4]
c0de3f9a:	78aa      	ldrb	r2, [r5, #2]
c0de3f9c:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3fa0:	200c      	movs	r0, #12
c0de3fa2:	71b0      	strb	r0, [r6, #6]
c0de3fa4:	2072      	movs	r0, #114	@ 0x72
c0de3fa6:	7130      	strb	r0, [r6, #4]
c0de3fa8:	ebaa 0001 	sub.w	r0, sl, r1
c0de3fac:	0901      	lsrs	r1, r0, #4
c0de3fae:	0100      	lsls	r0, r0, #4
c0de3fb0:	7670      	strb	r0, [r6, #25]
c0de3fb2:	1c50      	adds	r0, r2, #1
c0de3fb4:	76b1      	strb	r1, [r6, #26]
c0de3fb6:	70a8      	strb	r0, [r5, #2]
c0de3fb8:	f10a 0a01 	add.w	sl, sl, #1
c0de3fbc:	e7bd      	b.n	c0de3f3a <nbgl_layoutAddMenuList+0x1a>
c0de3fbe:	2000      	movs	r0, #0
c0de3fc0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3fc4:	f000 bae6 	b.w	c0de4594 <OUTLINED_FUNCTION_8>

c0de3fc8 <nbgl_layoutAddCenteredInfo>:
c0de3fc8:	2800      	cmp	r0, #0
c0de3fca:	f000 80dc 	beq.w	c0de4186 <nbgl_layoutAddCenteredInfo+0x1be>
c0de3fce:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3fd2:	b086      	sub	sp, #24
c0de3fd4:	460d      	mov	r5, r1
c0de3fd6:	7841      	ldrb	r1, [r0, #1]
c0de3fd8:	4682      	mov	sl, r0
c0de3fda:	2001      	movs	r0, #1
c0de3fdc:	f003 f905 	bl	c0de71ea <nbgl_objPoolGet>
c0de3fe0:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3fe4:	4680      	mov	r8, r0
c0de3fe6:	2003      	movs	r0, #3
c0de3fe8:	2703      	movs	r7, #3
c0de3fea:	f003 f903 	bl	c0de71f4 <nbgl_containerPoolGet>
c0de3fee:	4641      	mov	r1, r8
c0de3ff0:	0e02      	lsrs	r2, r0, #24
c0de3ff2:	f04f 0b00 	mov.w	fp, #0
c0de3ff6:	9504      	str	r5, [sp, #16]
c0de3ff8:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3ffc:	f888 b020 	strb.w	fp, [r8, #32]
c0de4000:	70ca      	strb	r2, [r1, #3]
c0de4002:	0c02      	lsrs	r2, r0, #16
c0de4004:	0a00      	lsrs	r0, r0, #8
c0de4006:	708a      	strb	r2, [r1, #2]
c0de4008:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de400c:	68a8      	ldr	r0, [r5, #8]
c0de400e:	b3c0      	cbz	r0, c0de4082 <nbgl_layoutAddCenteredInfo+0xba>
c0de4010:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4014:	2002      	movs	r0, #2
c0de4016:	f003 f8e8 	bl	c0de71ea <nbgl_objPoolGet>
c0de401a:	4606      	mov	r6, r0
c0de401c:	77c7      	strb	r7, [r0, #31]
c0de401e:	68a8      	ldr	r0, [r5, #8]
c0de4020:	f003 faca 	bl	c0de75b8 <pic>
c0de4024:	4631      	mov	r1, r6
c0de4026:	0e02      	lsrs	r2, r0, #24
c0de4028:	f886 b013 	strb.w	fp, [r6, #19]
c0de402c:	f886 b009 	strb.w	fp, [r6, #9]
c0de4030:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4034:	70ca      	strb	r2, [r1, #3]
c0de4036:	0c02      	lsrs	r2, r0, #16
c0de4038:	708a      	strb	r2, [r1, #2]
c0de403a:	0a01      	lsrs	r1, r0, #8
c0de403c:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4040:	4631      	mov	r1, r6
c0de4042:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de4046:	f881 b003 	strb.w	fp, [r1, #3]
c0de404a:	f881 b002 	strb.w	fp, [r1, #2]
c0de404e:	4641      	mov	r1, r8
c0de4050:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4054:	784f      	ldrb	r7, [r1, #1]
c0de4056:	788c      	ldrb	r4, [r1, #2]
c0de4058:	78cd      	ldrb	r5, [r1, #3]
c0de405a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de405e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4062:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de4066:	9d04      	ldr	r5, [sp, #16]
c0de4068:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de406c:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4070:	2202      	movs	r2, #2
c0de4072:	75b2      	strb	r2, [r6, #22]
c0de4074:	1c5a      	adds	r2, r3, #1
c0de4076:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de407a:	7881      	ldrb	r1, [r0, #2]
c0de407c:	78c0      	ldrb	r0, [r0, #3]
c0de407e:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de4082:	6828      	ldr	r0, [r5, #0]
c0de4084:	2800      	cmp	r0, #0
c0de4086:	f000 80a5 	beq.w	c0de41d4 <nbgl_layoutAddCenteredInfo+0x20c>
c0de408a:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de408e:	f000 fa72 	bl	c0de4576 <OUTLINED_FUNCTION_5>
c0de4092:	4607      	mov	r7, r0
c0de4094:	2003      	movs	r0, #3
c0de4096:	77f8      	strb	r0, [r7, #31]
c0de4098:	6828      	ldr	r0, [r5, #0]
c0de409a:	f003 fa8d 	bl	c0de75b8 <pic>
c0de409e:	4601      	mov	r1, r0
c0de40a0:	2072      	movs	r0, #114	@ 0x72
c0de40a2:	2400      	movs	r4, #0
c0de40a4:	7138      	strb	r0, [r7, #4]
c0de40a6:	2005      	movs	r0, #5
c0de40a8:	0e0a      	lsrs	r2, r1, #24
c0de40aa:	717c      	strb	r4, [r7, #5]
c0de40ac:	f887 0020 	strb.w	r0, [r7, #32]
c0de40b0:	4638      	mov	r0, r7
c0de40b2:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de40b6:	70c2      	strb	r2, [r0, #3]
c0de40b8:	0c0a      	lsrs	r2, r1, #16
c0de40ba:	7082      	strb	r2, [r0, #2]
c0de40bc:	0a08      	lsrs	r0, r1, #8
c0de40be:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de40c2:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de40c6:	7b6a      	ldrb	r2, [r5, #13]
c0de40c8:	f040 0001 	orr.w	r0, r0, #1
c0de40cc:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de40d0:	2008      	movs	r0, #8
c0de40d2:	2a00      	cmp	r2, #0
c0de40d4:	bf08      	it	eq
c0de40d6:	200a      	moveq	r0, #10
c0de40d8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de40dc:	2272      	movs	r2, #114	@ 0x72
c0de40de:	2301      	movs	r3, #1
c0de40e0:	f003 f89c 	bl	c0de721c <nbgl_getTextNbLinesInWidth>
c0de40e4:	4606      	mov	r6, r0
c0de40e6:	2805      	cmp	r0, #5
c0de40e8:	d31e      	bcc.n	c0de4128 <nbgl_layoutAddCenteredInfo+0x160>
c0de40ea:	463d      	mov	r5, r7
c0de40ec:	2004      	movs	r0, #4
c0de40ee:	2101      	movs	r1, #1
c0de40f0:	f10d 0416 	add.w	r4, sp, #22
c0de40f4:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de40f8:	786a      	ldrb	r2, [r5, #1]
c0de40fa:	78ab      	ldrb	r3, [r5, #2]
c0de40fc:	78ee      	ldrb	r6, [r5, #3]
c0de40fe:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de4102:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4106:	9101      	str	r1, [sp, #4]
c0de4108:	9400      	str	r4, [sp, #0]
c0de410a:	2400      	movs	r4, #0
c0de410c:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4110:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4114:	2304      	movs	r3, #4
c0de4116:	f000 fa29 	bl	c0de456c <OUTLINED_FUNCTION_4>
c0de411a:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de411e:	2604      	movs	r6, #4
c0de4120:	7128      	strb	r0, [r5, #4]
c0de4122:	0a00      	lsrs	r0, r0, #8
c0de4124:	7168      	strb	r0, [r5, #5]
c0de4126:	9d04      	ldr	r5, [sp, #16]
c0de4128:	f000 fa28 	bl	c0de457c <OUTLINED_FUNCTION_6>
c0de412c:	79c0      	ldrb	r0, [r0, #7]
c0de412e:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4132:	4370      	muls	r0, r6
c0de4134:	0a01      	lsrs	r1, r0, #8
c0de4136:	71b8      	strb	r0, [r7, #6]
c0de4138:	71f9      	strb	r1, [r7, #7]
c0de413a:	68a9      	ldr	r1, [r5, #8]
c0de413c:	b329      	cbz	r1, c0de418a <nbgl_layoutAddCenteredInfo+0x1c2>
c0de413e:	4641      	mov	r1, r8
c0de4140:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4144:	784c      	ldrb	r4, [r1, #1]
c0de4146:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de414a:	788d      	ldrb	r5, [r1, #2]
c0de414c:	78c9      	ldrb	r1, [r1, #3]
c0de414e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4152:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4156:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de415a:	463a      	mov	r2, r7
c0de415c:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de4160:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de4164:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4168:	0e0b      	lsrs	r3, r1, #24
c0de416a:	70d3      	strb	r3, [r2, #3]
c0de416c:	0c0b      	lsrs	r3, r1, #16
c0de416e:	0a09      	lsrs	r1, r1, #8
c0de4170:	7051      	strb	r1, [r2, #1]
c0de4172:	2100      	movs	r1, #0
c0de4174:	7093      	strb	r3, [r2, #2]
c0de4176:	7211      	strb	r1, [r2, #8]
c0de4178:	2e03      	cmp	r6, #3
c0de417a:	bf38      	it	cc
c0de417c:	2101      	movcc	r1, #1
c0de417e:	0089      	lsls	r1, r1, #2
c0de4180:	71d1      	strb	r1, [r2, #7]
c0de4182:	2108      	movs	r1, #8
c0de4184:	e00a      	b.n	c0de419c <nbgl_layoutAddCenteredInfo+0x1d4>
c0de4186:	f000 ba05 	b.w	c0de4594 <OUTLINED_FUNCTION_8>
c0de418a:	6869      	ldr	r1, [r5, #4]
c0de418c:	b119      	cbz	r1, c0de4196 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de418e:	f000 f9f9 	bl	c0de4584 <OUTLINED_FUNCTION_7>
c0de4192:	2102      	movs	r1, #2
c0de4194:	e002      	b.n	c0de419c <nbgl_layoutAddCenteredInfo+0x1d4>
c0de4196:	f000 f9f5 	bl	c0de4584 <OUTLINED_FUNCTION_7>
c0de419a:	2105      	movs	r1, #5
c0de419c:	7111      	strb	r1, [r2, #4]
c0de419e:	4641      	mov	r1, r8
c0de41a0:	4458      	add	r0, fp
c0de41a2:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de41a6:	784c      	ldrb	r4, [r1, #1]
c0de41a8:	788d      	ldrb	r5, [r1, #2]
c0de41aa:	78ce      	ldrb	r6, [r1, #3]
c0de41ac:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de41b0:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de41b4:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de41b8:	9d04      	ldr	r5, [sp, #16]
c0de41ba:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de41be:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de41c2:	1c5a      	adds	r2, r3, #1
c0de41c4:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de41c8:	7e79      	ldrb	r1, [r7, #25]
c0de41ca:	7eba      	ldrb	r2, [r7, #26]
c0de41cc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de41d0:	eb00 0b01 	add.w	fp, r0, r1
c0de41d4:	6868      	ldr	r0, [r5, #4]
c0de41d6:	2800      	cmp	r0, #0
c0de41d8:	d071      	beq.n	c0de42be <nbgl_layoutAddCenteredInfo+0x2f6>
c0de41da:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de41de:	2004      	movs	r0, #4
c0de41e0:	f8cd a00c 	str.w	sl, [sp, #12]
c0de41e4:	f003 f801 	bl	c0de71ea <nbgl_objPoolGet>
c0de41e8:	2403      	movs	r4, #3
c0de41ea:	4607      	mov	r7, r0
c0de41ec:	77c4      	strb	r4, [r0, #31]
c0de41ee:	6868      	ldr	r0, [r5, #4]
c0de41f0:	f003 f9e2 	bl	c0de75b8 <pic>
c0de41f4:	4601      	mov	r1, r0
c0de41f6:	2000      	movs	r0, #0
c0de41f8:	2301      	movs	r3, #1
c0de41fa:	7178      	strb	r0, [r7, #5]
c0de41fc:	2072      	movs	r0, #114	@ 0x72
c0de41fe:	0e0a      	lsrs	r2, r1, #24
c0de4200:	7138      	strb	r0, [r7, #4]
c0de4202:	200a      	movs	r0, #10
c0de4204:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4208:	2005      	movs	r0, #5
c0de420a:	f887 0020 	strb.w	r0, [r7, #32]
c0de420e:	f000 f984 	bl	c0de451a <OUTLINED_FUNCTION_0>
c0de4212:	4682      	mov	sl, r0
c0de4214:	2804      	cmp	r0, #4
c0de4216:	d31c      	bcc.n	c0de4252 <nbgl_layoutAddCenteredInfo+0x28a>
c0de4218:	463d      	mov	r5, r7
c0de421a:	f04f 0c01 	mov.w	ip, #1
c0de421e:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de4222:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de4226:	786a      	ldrb	r2, [r5, #1]
c0de4228:	78ab      	ldrb	r3, [r5, #2]
c0de422a:	78ec      	ldrb	r4, [r5, #3]
c0de422c:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4230:	ae05      	add	r6, sp, #20
c0de4232:	e9cd 6c00 	strd	r6, ip, [sp]
c0de4236:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de423a:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de423e:	2303      	movs	r3, #3
c0de4240:	f000 f994 	bl	c0de456c <OUTLINED_FUNCTION_4>
c0de4244:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de4248:	f04f 0a03 	mov.w	sl, #3
c0de424c:	7128      	strb	r0, [r5, #4]
c0de424e:	0a00      	lsrs	r0, r0, #8
c0de4250:	7168      	strb	r0, [r5, #5]
c0de4252:	f000 f993 	bl	c0de457c <OUTLINED_FUNCTION_6>
c0de4256:	4641      	mov	r1, r8
c0de4258:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de425c:	784c      	ldrb	r4, [r1, #1]
c0de425e:	788d      	ldrb	r5, [r1, #2]
c0de4260:	78ce      	ldrb	r6, [r1, #3]
c0de4262:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de4266:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de426a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de426e:	463d      	mov	r5, r7
c0de4270:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4274:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de4278:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de427c:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4280:	0e26      	lsrs	r6, r4, #24
c0de4282:	70ee      	strb	r6, [r5, #3]
c0de4284:	0c26      	lsrs	r6, r4, #16
c0de4286:	0a24      	lsrs	r4, r4, #8
c0de4288:	74fc      	strb	r4, [r7, #19]
c0de428a:	70ae      	strb	r6, [r5, #2]
c0de428c:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4290:	2302      	movs	r3, #2
c0de4292:	2400      	movs	r4, #0
c0de4294:	3201      	adds	r2, #1
c0de4296:	767b      	strb	r3, [r7, #25]
c0de4298:	2308      	movs	r3, #8
c0de429a:	76bc      	strb	r4, [r7, #26]
c0de429c:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de42a0:	79c0      	ldrb	r0, [r0, #7]
c0de42a2:	75bb      	strb	r3, [r7, #22]
c0de42a4:	fb0a f300 	mul.w	r3, sl, r0
c0de42a8:	fb0a b000 	mla	r0, sl, r0, fp
c0de42ac:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de42b0:	71bb      	strb	r3, [r7, #6]
c0de42b2:	0a1b      	lsrs	r3, r3, #8
c0de42b4:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de42b8:	f100 0b02 	add.w	fp, r0, #2
c0de42bc:	71fb      	strb	r3, [r7, #7]
c0de42be:	7b28      	ldrb	r0, [r5, #12]
c0de42c0:	2102      	movs	r1, #2
c0de42c2:	2800      	cmp	r0, #0
c0de42c4:	bf08      	it	eq
c0de42c6:	2105      	moveq	r1, #5
c0de42c8:	f888 1016 	strb.w	r1, [r8, #22]
c0de42cc:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de42d0:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de42d4:	2272      	movs	r2, #114	@ 0x72
c0de42d6:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de42da:	2000      	movs	r0, #0
c0de42dc:	f888 2004 	strb.w	r2, [r8, #4]
c0de42e0:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de42e4:	3101      	adds	r1, #1
c0de42e6:	f888 b006 	strb.w	fp, [r8, #6]
c0de42ea:	f888 0019 	strb.w	r0, [r8, #25]
c0de42ee:	f888 001a 	strb.w	r0, [r8, #26]
c0de42f2:	f888 0005 	strb.w	r0, [r8, #5]
c0de42f6:	f888 001f 	strb.w	r0, [r8, #31]
c0de42fa:	f888 2007 	strb.w	r2, [r8, #7]
c0de42fe:	f88a 1002 	strb.w	r1, [sl, #2]
c0de4302:	b006      	add	sp, #24
c0de4304:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4308 <nbgl_layoutAddSwitch>:
c0de4308:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de430c:	2800      	cmp	r0, #0
c0de430e:	f000 8084 	beq.w	c0de441a <nbgl_layoutAddSwitch+0x112>
c0de4312:	460d      	mov	r5, r1
c0de4314:	7841      	ldrb	r1, [r0, #1]
c0de4316:	4604      	mov	r4, r0
c0de4318:	f000 f92d 	bl	c0de4576 <OUTLINED_FUNCTION_5>
c0de431c:	f04f 0803 	mov.w	r8, #3
c0de4320:	4606      	mov	r6, r0
c0de4322:	f880 801f 	strb.w	r8, [r0, #31]
c0de4326:	6828      	ldr	r0, [r5, #0]
c0de4328:	f003 f946 	bl	c0de75b8 <pic>
c0de432c:	4601      	mov	r1, r0
c0de432e:	2072      	movs	r0, #114	@ 0x72
c0de4330:	2700      	movs	r7, #0
c0de4332:	2301      	movs	r3, #1
c0de4334:	7130      	strb	r0, [r6, #4]
c0de4336:	2008      	movs	r0, #8
c0de4338:	0e0a      	lsrs	r2, r1, #24
c0de433a:	7177      	strb	r7, [r6, #5]
c0de433c:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4340:	2005      	movs	r0, #5
c0de4342:	f886 0020 	strb.w	r0, [r6, #32]
c0de4346:	4630      	mov	r0, r6
c0de4348:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de434c:	70c2      	strb	r2, [r0, #3]
c0de434e:	0c0a      	lsrs	r2, r1, #16
c0de4350:	7082      	strb	r2, [r0, #2]
c0de4352:	0a08      	lsrs	r0, r1, #8
c0de4354:	2272      	movs	r2, #114	@ 0x72
c0de4356:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de435a:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de435e:	f040 0001 	orr.w	r0, r0, #1
c0de4362:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4366:	2008      	movs	r0, #8
c0de4368:	f002 ff58 	bl	c0de721c <nbgl_getTextNbLinesInWidth>
c0de436c:	2801      	cmp	r0, #1
c0de436e:	d854      	bhi.n	c0de441a <nbgl_layoutAddSwitch+0x112>
c0de4370:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4374:	f002 ff48 	bl	c0de7208 <nbgl_getFontLineHeight>
c0de4378:	6861      	ldr	r1, [r4, #4]
c0de437a:	78a2      	ldrb	r2, [r4, #2]
c0de437c:	76b7      	strb	r7, [r6, #26]
c0de437e:	71f7      	strb	r7, [r6, #7]
c0de4380:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4384:	71b0      	strb	r0, [r6, #6]
c0de4386:	2002      	movs	r0, #2
c0de4388:	f886 8019 	strb.w	r8, [r6, #25]
c0de438c:	75b0      	strb	r0, [r6, #22]
c0de438e:	1c50      	adds	r0, r2, #1
c0de4390:	70a0      	strb	r0, [r4, #2]
c0de4392:	6868      	ldr	r0, [r5, #4]
c0de4394:	2800      	cmp	r0, #0
c0de4396:	d04e      	beq.n	c0de4436 <nbgl_layoutAddSwitch+0x12e>
c0de4398:	7861      	ldrb	r1, [r4, #1]
c0de439a:	f000 f8ec 	bl	c0de4576 <OUTLINED_FUNCTION_5>
c0de439e:	4606      	mov	r6, r0
c0de43a0:	2003      	movs	r0, #3
c0de43a2:	77f0      	strb	r0, [r6, #31]
c0de43a4:	6868      	ldr	r0, [r5, #4]
c0de43a6:	f003 f907 	bl	c0de75b8 <pic>
c0de43aa:	2172      	movs	r1, #114	@ 0x72
c0de43ac:	4637      	mov	r7, r6
c0de43ae:	f04f 0800 	mov.w	r8, #0
c0de43b2:	f04f 0a05 	mov.w	sl, #5
c0de43b6:	7131      	strb	r1, [r6, #4]
c0de43b8:	210a      	movs	r1, #10
c0de43ba:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de43be:	f886 8005 	strb.w	r8, [r6, #5]
c0de43c2:	f886 a020 	strb.w	sl, [r6, #32]
c0de43c6:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de43ca:	0e01      	lsrs	r1, r0, #24
c0de43cc:	70f9      	strb	r1, [r7, #3]
c0de43ce:	0c01      	lsrs	r1, r0, #16
c0de43d0:	0a00      	lsrs	r0, r0, #8
c0de43d2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de43d6:	200a      	movs	r0, #10
c0de43d8:	70b9      	strb	r1, [r7, #2]
c0de43da:	f002 ff15 	bl	c0de7208 <nbgl_getFontLineHeight>
c0de43de:	09c1      	lsrs	r1, r0, #7
c0de43e0:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de43e4:	78bb      	ldrb	r3, [r7, #2]
c0de43e6:	0040      	lsls	r0, r0, #1
c0de43e8:	71f1      	strb	r1, [r6, #7]
c0de43ea:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de43ee:	71b0      	strb	r0, [r6, #6]
c0de43f0:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de43f4:	f041 0101 	orr.w	r1, r1, #1
c0de43f8:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de43fc:	7839      	ldrb	r1, [r7, #0]
c0de43fe:	78ff      	ldrb	r7, [r7, #3]
c0de4400:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4404:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de4408:	2301      	movs	r3, #1
c0de440a:	2701      	movs	r7, #1
c0de440c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4410:	2272      	movs	r2, #114	@ 0x72
c0de4412:	f002 ff03 	bl	c0de721c <nbgl_getTextNbLinesInWidth>
c0de4416:	2802      	cmp	r0, #2
c0de4418:	d902      	bls.n	c0de4420 <nbgl_layoutAddSwitch+0x118>
c0de441a:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de441e:	e05c      	b.n	c0de44da <nbgl_layoutAddSwitch+0x1d2>
c0de4420:	6860      	ldr	r0, [r4, #4]
c0de4422:	78a1      	ldrb	r1, [r4, #2]
c0de4424:	f886 801a 	strb.w	r8, [r6, #26]
c0de4428:	f886 a016 	strb.w	sl, [r6, #22]
c0de442c:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de4430:	1c48      	adds	r0, r1, #1
c0de4432:	7677      	strb	r7, [r6, #25]
c0de4434:	70a0      	strb	r0, [r4, #2]
c0de4436:	7861      	ldrb	r1, [r4, #1]
c0de4438:	2005      	movs	r0, #5
c0de443a:	f002 fed6 	bl	c0de71ea <nbgl_objPoolGet>
c0de443e:	2600      	movs	r6, #0
c0de4440:	4607      	mov	r7, r0
c0de4442:	f04f 0a03 	mov.w	sl, #3
c0de4446:	f04f 0808 	mov.w	r8, #8
c0de444a:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de444e:	2001      	movs	r0, #1
c0de4450:	f887 a020 	strb.w	sl, [r7, #32]
c0de4454:	f887 a01f 	strb.w	sl, [r7, #31]
c0de4458:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de445c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4460:	7a28      	ldrb	r0, [r5, #8]
c0de4462:	4a1f      	ldr	r2, [pc, #124]	@ (c0de44e0 <nbgl_layoutAddSwitch+0x1d8>)
c0de4464:	491f      	ldr	r1, [pc, #124]	@ (c0de44e4 <nbgl_layoutAddSwitch+0x1dc>)
c0de4466:	2801      	cmp	r0, #1
c0de4468:	447a      	add	r2, pc
c0de446a:	4479      	add	r1, pc
c0de446c:	bf08      	it	eq
c0de446e:	4611      	moveq	r1, r2
c0de4470:	463a      	mov	r2, r7
c0de4472:	0e0b      	lsrs	r3, r1, #24
c0de4474:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4478:	70d3      	strb	r3, [r2, #3]
c0de447a:	0c0b      	lsrs	r3, r1, #16
c0de447c:	7093      	strb	r3, [r2, #2]
c0de447e:	0a0a      	lsrs	r2, r1, #8
c0de4480:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4484:	2801      	cmp	r0, #1
c0de4486:	4638      	mov	r0, r7
c0de4488:	4a17      	ldr	r2, [pc, #92]	@ (c0de44e8 <nbgl_layoutAddSwitch+0x1e0>)
c0de448a:	4d18      	ldr	r5, [pc, #96]	@ (c0de44ec <nbgl_layoutAddSwitch+0x1e4>)
c0de448c:	447a      	add	r2, pc
c0de448e:	447d      	add	r5, pc
c0de4490:	bf18      	it	ne
c0de4492:	462a      	movne	r2, r5
c0de4494:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de4498:	0e13      	lsrs	r3, r2, #24
c0de449a:	70c3      	strb	r3, [r0, #3]
c0de449c:	0c13      	lsrs	r3, r2, #16
c0de449e:	7083      	strb	r3, [r0, #2]
c0de44a0:	0a10      	lsrs	r0, r2, #8
c0de44a2:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de44a6:	2008      	movs	r0, #8
c0de44a8:	f002 fec2 	bl	c0de7230 <nbgl_getTextWidth>
c0de44ac:	6861      	ldr	r1, [r4, #4]
c0de44ae:	78a2      	ldrb	r2, [r4, #2]
c0de44b0:	786b      	ldrb	r3, [r5, #1]
c0de44b2:	76be      	strb	r6, [r7, #26]
c0de44b4:	71fe      	strb	r6, [r7, #7]
c0de44b6:	f887 8016 	strb.w	r8, [r7, #22]
c0de44ba:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de44be:	210c      	movs	r1, #12
c0de44c0:	f887 a019 	strb.w	sl, [r7, #25]
c0de44c4:	71b9      	strb	r1, [r7, #6]
c0de44c6:	7829      	ldrb	r1, [r5, #0]
c0de44c8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de44cc:	4408      	add	r0, r1
c0de44ce:	1c51      	adds	r1, r2, #1
c0de44d0:	300a      	adds	r0, #10
c0de44d2:	7138      	strb	r0, [r7, #4]
c0de44d4:	0a00      	lsrs	r0, r0, #8
c0de44d6:	70a1      	strb	r1, [r4, #2]
c0de44d8:	7178      	strb	r0, [r7, #5]
c0de44da:	4630      	mov	r0, r6
c0de44dc:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de44e0:	00003b45 	.word	0x00003b45
c0de44e4:	00003c12 	.word	0x00003c12
c0de44e8:	000038dd 	.word	0x000038dd
c0de44ec:	000038c5 	.word	0x000038c5

c0de44f0 <nbgl_layoutDraw>:
c0de44f0:	b120      	cbz	r0, c0de44fc <nbgl_layoutDraw+0xc>
c0de44f2:	b580      	push	{r7, lr}
c0de44f4:	f002 fe6a 	bl	c0de71cc <nbgl_screenRedraw>
c0de44f8:	2000      	movs	r0, #0
c0de44fa:	bd80      	pop	{r7, pc}
c0de44fc:	f000 b84a 	b.w	c0de4594 <OUTLINED_FUNCTION_8>

c0de4500 <nbgl_layoutRelease>:
c0de4500:	b148      	cbz	r0, c0de4516 <nbgl_layoutRelease+0x16>
c0de4502:	b510      	push	{r4, lr}
c0de4504:	4604      	mov	r4, r0
c0de4506:	7800      	ldrb	r0, [r0, #0]
c0de4508:	b110      	cbz	r0, c0de4510 <nbgl_layoutRelease+0x10>
c0de450a:	7860      	ldrb	r0, [r4, #1]
c0de450c:	f002 fe63 	bl	c0de71d6 <nbgl_screenPop>
c0de4510:	2000      	movs	r0, #0
c0de4512:	70a0      	strb	r0, [r4, #2]
c0de4514:	bd10      	pop	{r4, pc}
c0de4516:	f000 b83d 	b.w	c0de4594 <OUTLINED_FUNCTION_8>

c0de451a <OUTLINED_FUNCTION_0>:
c0de451a:	4638      	mov	r0, r7
c0de451c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4520:	70c2      	strb	r2, [r0, #3]
c0de4522:	0c0a      	lsrs	r2, r1, #16
c0de4524:	7082      	strb	r2, [r0, #2]
c0de4526:	0a08      	lsrs	r0, r1, #8
c0de4528:	2272      	movs	r2, #114	@ 0x72
c0de452a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de452e:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de4532:	f040 0001 	orr.w	r0, r0, #1
c0de4536:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de453a:	200a      	movs	r0, #10
c0de453c:	f002 be6e 	b.w	c0de721c <nbgl_getTextNbLinesInWidth>

c0de4540 <OUTLINED_FUNCTION_2>:
c0de4540:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4544:	784b      	ldrb	r3, [r1, #1]
c0de4546:	788d      	ldrb	r5, [r1, #2]
c0de4548:	78c9      	ldrb	r1, [r1, #3]
c0de454a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de454e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4552:	9d05      	ldr	r5, [sp, #20]
c0de4554:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4558:	4770      	bx	lr

c0de455a <OUTLINED_FUNCTION_3>:
c0de455a:	70c2      	strb	r2, [r0, #3]
c0de455c:	0c0a      	lsrs	r2, r1, #16
c0de455e:	7082      	strb	r2, [r0, #2]
c0de4560:	0a08      	lsrs	r0, r1, #8
c0de4562:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4566:	2008      	movs	r0, #8
c0de4568:	f002 be62 	b.w	c0de7230 <nbgl_getTextWidth>

c0de456c <OUTLINED_FUNCTION_4>:
c0de456c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4570:	2272      	movs	r2, #114	@ 0x72
c0de4572:	f002 be62 	b.w	c0de723a <nbgl_getTextMaxLenInNbLines>

c0de4576 <OUTLINED_FUNCTION_5>:
c0de4576:	2004      	movs	r0, #4
c0de4578:	f002 be37 	b.w	c0de71ea <nbgl_objPoolGet>

c0de457c <OUTLINED_FUNCTION_6>:
c0de457c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4580:	f002 be3d 	b.w	c0de71fe <nbgl_getFont>

c0de4584 <OUTLINED_FUNCTION_7>:
c0de4584:	2100      	movs	r1, #0
c0de4586:	463a      	mov	r2, r7
c0de4588:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de458c:	70d1      	strb	r1, [r2, #3]
c0de458e:	7091      	strb	r1, [r2, #2]
c0de4590:	7051      	strb	r1, [r2, #1]
c0de4592:	4770      	bx	lr

c0de4594 <OUTLINED_FUNCTION_8>:
c0de4594:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4598:	4770      	bx	lr

c0de459a <OUTLINED_FUNCTION_9>:
c0de459a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de459e:	2003      	movs	r0, #3
c0de45a0:	f887 0020 	strb.w	r0, [r7, #32]
c0de45a4:	77f8      	strb	r0, [r7, #31]
c0de45a6:	4770      	bx	lr

c0de45a8 <nbgl_stepDrawText>:
c0de45a8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de45ac:	460e      	mov	r6, r1
c0de45ae:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de45b0:	4605      	mov	r5, r0
c0de45b2:	2000      	movs	r0, #0
c0de45b4:	469a      	mov	sl, r3
c0de45b6:	4617      	mov	r7, r2
c0de45b8:	f000 f830 	bl	c0de461c <getFreeContext>
c0de45bc:	b348      	cbz	r0, c0de4612 <nbgl_stepDrawText+0x6a>
c0de45be:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de45c2:	4604      	mov	r4, r0
c0de45c4:	6146      	str	r6, [r0, #20]
c0de45c6:	b10f      	cbz	r7, c0de45cc <nbgl_stepDrawText+0x24>
c0de45c8:	f000 fae1 	bl	c0de4b8e <OUTLINED_FUNCTION_1>
c0de45cc:	200a      	movs	r0, #10
c0de45ce:	f1b8 0f00 	cmp.w	r8, #0
c0de45d2:	bf19      	ittee	ne
c0de45d4:	4641      	movne	r1, r8
c0de45d6:	2203      	movne	r2, #3
c0de45d8:	4651      	moveq	r1, sl
c0de45da:	2204      	moveq	r2, #4
c0de45dc:	2372      	movs	r3, #114	@ 0x72
c0de45de:	f002 fe22 	bl	c0de7226 <nbgl_getTextNbPagesInWidth>
c0de45e2:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de45e4:	7020      	strb	r0, [r4, #0]
c0de45e6:	072a      	lsls	r2, r5, #28
c0de45e8:	bf46      	itte	mi
c0de45ea:	3801      	submi	r0, #1
c0de45ec:	7060      	strbmi	r0, [r4, #1]
c0de45ee:	7860      	ldrbpl	r0, [r4, #1]
c0de45f0:	f8c4 800c 	str.w	r8, [r4, #12]
c0de45f4:	f8c4 a004 	str.w	sl, [r4, #4]
c0de45f8:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de45fc:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4600:	7461      	strb	r1, [r4, #17]
c0de4602:	f005 0103 	and.w	r1, r5, #3
c0de4606:	7421      	strb	r1, [r4, #16]
c0de4608:	b2c1      	uxtb	r1, r0
c0de460a:	4620      	mov	r0, r4
c0de460c:	f000 f82c 	bl	c0de4668 <displayTextPage>
c0de4610:	e000      	b.n	c0de4614 <nbgl_stepDrawText+0x6c>
c0de4612:	2400      	movs	r4, #0
c0de4614:	4620      	mov	r0, r4
c0de4616:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de461c <getFreeContext>:
c0de461c:	b570      	push	{r4, r5, r6, lr}
c0de461e:	4604      	mov	r4, r0
c0de4620:	4810      	ldr	r0, [pc, #64]	@ (c0de4664 <getFreeContext+0x48>)
c0de4622:	460d      	mov	r5, r1
c0de4624:	b151      	cbz	r1, c0de463c <getFreeContext+0x20>
c0de4626:	2100      	movs	r1, #0
c0de4628:	2990      	cmp	r1, #144	@ 0x90
c0de462a:	d00a      	beq.n	c0de4642 <getFreeContext+0x26>
c0de462c:	eb09 0200 	add.w	r2, r9, r0
c0de4630:	440a      	add	r2, r1
c0de4632:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de4636:	b132      	cbz	r2, c0de4646 <getFreeContext+0x2a>
c0de4638:	3148      	adds	r1, #72	@ 0x48
c0de463a:	e7f5      	b.n	c0de4628 <getFreeContext+0xc>
c0de463c:	eb09 0600 	add.w	r6, r9, r0
c0de4640:	e005      	b.n	c0de464e <getFreeContext+0x32>
c0de4642:	2600      	movs	r6, #0
c0de4644:	e00b      	b.n	c0de465e <getFreeContext+0x42>
c0de4646:	4448      	add	r0, r9
c0de4648:	4408      	add	r0, r1
c0de464a:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de464e:	4630      	mov	r0, r6
c0de4650:	2148      	movs	r1, #72	@ 0x48
c0de4652:	f003 fabd 	bl	c0de7bd0 <__aeabi_memclr>
c0de4656:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de465a:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de465e:	4630      	mov	r0, r6
c0de4660:	bd70      	pop	{r4, r5, r6, pc}
c0de4662:	bf00      	nop
c0de4664:	00000678 	.word	0x00000678

c0de4668 <displayTextPage>:
c0de4668:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de466c:	b091      	sub	sp, #68	@ 0x44
c0de466e:	4604      	mov	r4, r0
c0de4670:	7840      	ldrb	r0, [r0, #1]
c0de4672:	460e      	mov	r6, r1
c0de4674:	4288      	cmp	r0, r1
c0de4676:	d21c      	bcs.n	c0de46b2 <displayTextPage+0x4a>
c0de4678:	68a5      	ldr	r5, [r4, #8]
c0de467a:	7820      	ldrb	r0, [r4, #0]
c0de467c:	7066      	strb	r6, [r4, #1]
c0de467e:	3801      	subs	r0, #1
c0de4680:	42b0      	cmp	r0, r6
c0de4682:	dd31      	ble.n	c0de46e8 <displayTextPage+0x80>
c0de4684:	68e0      	ldr	r0, [r4, #12]
c0de4686:	2101      	movs	r1, #1
c0de4688:	2303      	movs	r3, #3
c0de468a:	aa08      	add	r2, sp, #32
c0de468c:	e9cd 2100 	strd	r2, r1, [sp]
c0de4690:	4629      	mov	r1, r5
c0de4692:	2800      	cmp	r0, #0
c0de4694:	bf08      	it	eq
c0de4696:	2304      	moveq	r3, #4
c0de4698:	200a      	movs	r0, #10
c0de469a:	2272      	movs	r2, #114	@ 0x72
c0de469c:	f002 fdcd 	bl	c0de723a <nbgl_getTextMaxLenInNbLines>
c0de46a0:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de46a4:	1868      	adds	r0, r5, r1
c0de46a6:	60a0      	str	r0, [r4, #8]
c0de46a8:	5c69      	ldrb	r1, [r5, r1]
c0de46aa:	290a      	cmp	r1, #10
c0de46ac:	d11e      	bne.n	c0de46ec <displayTextPage+0x84>
c0de46ae:	3001      	adds	r0, #1
c0de46b0:	e01b      	b.n	c0de46ea <displayTextPage+0x82>
c0de46b2:	68e5      	ldr	r5, [r4, #12]
c0de46b4:	2d00      	cmp	r5, #0
c0de46b6:	d074      	beq.n	c0de47a2 <displayTextPage+0x13a>
c0de46b8:	2700      	movs	r7, #0
c0de46ba:	f04f 0801 	mov.w	r8, #1
c0de46be:	f10d 0a20 	add.w	sl, sp, #32
c0de46c2:	42be      	cmp	r6, r7
c0de46c4:	d0d9      	beq.n	c0de467a <displayTextPage+0x12>
c0de46c6:	7820      	ldrb	r0, [r4, #0]
c0de46c8:	3801      	subs	r0, #1
c0de46ca:	42b8      	cmp	r0, r7
c0de46cc:	dd0a      	ble.n	c0de46e4 <displayTextPage+0x7c>
c0de46ce:	200a      	movs	r0, #10
c0de46d0:	4629      	mov	r1, r5
c0de46d2:	2272      	movs	r2, #114	@ 0x72
c0de46d4:	2303      	movs	r3, #3
c0de46d6:	e9cd a800 	strd	sl, r8, [sp]
c0de46da:	f002 fdae 	bl	c0de723a <nbgl_getTextMaxLenInNbLines>
c0de46de:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de46e2:	4405      	add	r5, r0
c0de46e4:	3701      	adds	r7, #1
c0de46e6:	e7ec      	b.n	c0de46c2 <displayTextPage+0x5a>
c0de46e8:	2000      	movs	r0, #0
c0de46ea:	60a0      	str	r0, [r4, #8]
c0de46ec:	484f      	ldr	r0, [pc, #316]	@ (c0de482c <displayTextPage+0x1c4>)
c0de46ee:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de46f2:	4478      	add	r0, pc
c0de46f4:	9004      	str	r0, [sp, #16]
c0de46f6:	2000      	movs	r0, #0
c0de46f8:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de46fc:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4700:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4704:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4706:	ab05      	add	r3, sp, #20
c0de4708:	c307      	stmia	r3!, {r0, r1, r2}
c0de470a:	a803      	add	r0, sp, #12
c0de470c:	f7ff f986 	bl	c0de3a1c <nbgl_layoutGet>
c0de4710:	7827      	ldrb	r7, [r4, #0]
c0de4712:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de4716:	4606      	mov	r6, r0
c0de4718:	6420      	str	r0, [r4, #64]	@ 0x40
c0de471a:	7c20      	ldrb	r0, [r4, #16]
c0de471c:	4639      	mov	r1, r7
c0de471e:	4652      	mov	r2, sl
c0de4720:	f000 f8fc 	bl	c0de491c <getNavigationInfo>
c0de4724:	4680      	mov	r8, r0
c0de4726:	f88d 000b 	strb.w	r0, [sp, #11]
c0de472a:	68e0      	ldr	r0, [r4, #12]
c0de472c:	b188      	cbz	r0, c0de4752 <displayTextPage+0xea>
c0de472e:	2f01      	cmp	r7, #1
c0de4730:	d115      	bne.n	c0de475e <displayTextPage+0xf6>
c0de4732:	6861      	ldr	r1, [r4, #4]
c0de4734:	2008      	movs	r0, #8
c0de4736:	2272      	movs	r2, #114	@ 0x72
c0de4738:	2300      	movs	r3, #0
c0de473a:	2600      	movs	r6, #0
c0de473c:	f002 fd6e 	bl	c0de721c <nbgl_getTextNbLinesInWidth>
c0de4740:	2802      	cmp	r0, #2
c0de4742:	d348      	bcc.n	c0de47d6 <displayTextPage+0x16e>
c0de4744:	6861      	ldr	r1, [r4, #4]
c0de4746:	2018      	movs	r0, #24
c0de4748:	f104 0218 	add.w	r2, r4, #24
c0de474c:	e9cd 2000 	strd	r2, r0, [sp]
c0de4750:	e021      	b.n	c0de4796 <displayTextPage+0x12e>
c0de4752:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4756:	4630      	mov	r0, r6
c0de4758:	4629      	mov	r1, r5
c0de475a:	2200      	movs	r2, #0
c0de475c:	e055      	b.n	c0de480a <displayTextPage+0x1a2>
c0de475e:	f10a 0001 	add.w	r0, sl, #1
c0de4762:	6863      	ldr	r3, [r4, #4]
c0de4764:	2124      	movs	r1, #36	@ 0x24
c0de4766:	e9cd 0700 	strd	r0, r7, [sp]
c0de476a:	af08      	add	r7, sp, #32
c0de476c:	4a30      	ldr	r2, [pc, #192]	@ (c0de4830 <displayTextPage+0x1c8>)
c0de476e:	4638      	mov	r0, r7
c0de4770:	447a      	add	r2, pc
c0de4772:	f002 fd8f 	bl	c0de7294 <snprintf>
c0de4776:	2008      	movs	r0, #8
c0de4778:	4639      	mov	r1, r7
c0de477a:	2272      	movs	r2, #114	@ 0x72
c0de477c:	2300      	movs	r3, #0
c0de477e:	f04f 0a00 	mov.w	sl, #0
c0de4782:	f002 fd4b 	bl	c0de721c <nbgl_getTextNbLinesInWidth>
c0de4786:	f104 0c18 	add.w	ip, r4, #24
c0de478a:	2802      	cmp	r0, #2
c0de478c:	d32c      	bcc.n	c0de47e8 <displayTextPage+0x180>
c0de478e:	2018      	movs	r0, #24
c0de4790:	e9cd c000 	strd	ip, r0, [sp]
c0de4794:	a908      	add	r1, sp, #32
c0de4796:	2008      	movs	r0, #8
c0de4798:	2272      	movs	r2, #114	@ 0x72
c0de479a:	2301      	movs	r3, #1
c0de479c:	f002 fd52 	bl	c0de7244 <nbgl_textReduceOnNbLines>
c0de47a0:	e02d      	b.n	c0de47fe <displayTextPage+0x196>
c0de47a2:	6865      	ldr	r5, [r4, #4]
c0de47a4:	2700      	movs	r7, #0
c0de47a6:	f04f 0801 	mov.w	r8, #1
c0de47aa:	f10d 0a20 	add.w	sl, sp, #32
c0de47ae:	42be      	cmp	r6, r7
c0de47b0:	f43f af63 	beq.w	c0de467a <displayTextPage+0x12>
c0de47b4:	7820      	ldrb	r0, [r4, #0]
c0de47b6:	3801      	subs	r0, #1
c0de47b8:	42b8      	cmp	r0, r7
c0de47ba:	dd0a      	ble.n	c0de47d2 <displayTextPage+0x16a>
c0de47bc:	200a      	movs	r0, #10
c0de47be:	4629      	mov	r1, r5
c0de47c0:	2272      	movs	r2, #114	@ 0x72
c0de47c2:	2304      	movs	r3, #4
c0de47c4:	e9cd a800 	strd	sl, r8, [sp]
c0de47c8:	f002 fd37 	bl	c0de723a <nbgl_getTextMaxLenInNbLines>
c0de47cc:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de47d0:	4405      	add	r5, r0
c0de47d2:	3701      	adds	r7, #1
c0de47d4:	e7eb      	b.n	c0de47ae <displayTextPage+0x146>
c0de47d6:	6861      	ldr	r1, [r4, #4]
c0de47d8:	f104 0018 	add.w	r0, r4, #24
c0de47dc:	2217      	movs	r2, #23
c0de47de:	f003 f9ed 	bl	c0de7bbc <__aeabi_memcpy>
c0de47e2:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de47e6:	e00a      	b.n	c0de47fe <displayTextPage+0x196>
c0de47e8:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de47ea:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de47ee:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de47f2:	8838      	ldrh	r0, [r7, #0]
c0de47f4:	f8ac 0000 	strh.w	r0, [ip]
c0de47f8:	78b8      	ldrb	r0, [r7, #2]
c0de47fa:	f88c 0002 	strb.w	r0, [ip, #2]
c0de47fe:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4802:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4804:	f104 0118 	add.w	r1, r4, #24
c0de4808:	462a      	mov	r2, r5
c0de480a:	f7ff f9c9 	bl	c0de3ba0 <nbgl_layoutAddText>
c0de480e:	f1b8 0f00 	cmp.w	r8, #0
c0de4812:	d004      	beq.n	c0de481e <displayTextPage+0x1b6>
c0de4814:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4816:	f10d 010a 	add.w	r1, sp, #10
c0de481a:	f7ff f963 	bl	c0de3ae4 <nbgl_layoutAddNavigation>
c0de481e:	f000 f9e9 	bl	c0de4bf4 <OUTLINED_FUNCTION_4>
c0de4822:	f002 fcba 	bl	c0de719a <nbgl_refresh>
c0de4826:	b011      	add	sp, #68	@ 0x44
c0de4828:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de482c:	000001bb 	.word	0x000001bb
c0de4830:	00003736 	.word	0x00003736

c0de4834 <nbgl_stepDrawCenteredInfo>:
c0de4834:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4838:	b087      	sub	sp, #28
c0de483a:	460d      	mov	r5, r1
c0de483c:	4682      	mov	sl, r0
c0de483e:	a802      	add	r0, sp, #8
c0de4840:	f000 f9d3 	bl	c0de4bea <OUTLINED_FUNCTION_3>
c0de4844:	4819      	ldr	r0, [pc, #100]	@ (c0de48ac <nbgl_stepDrawCenteredInfo+0x78>)
c0de4846:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4848:	4478      	add	r0, pc
c0de484a:	f000 f9c5 	bl	c0de4bd8 <OUTLINED_FUNCTION_2>
c0de484e:	b168      	cbz	r0, c0de486c <nbgl_stepDrawCenteredInfo+0x38>
c0de4850:	4604      	mov	r4, r0
c0de4852:	6145      	str	r5, [r0, #20]
c0de4854:	b10f      	cbz	r7, c0de485a <nbgl_stepDrawCenteredInfo+0x26>
c0de4856:	f000 f953 	bl	c0de4b00 <OUTLINED_FUNCTION_0>
c0de485a:	f000 f9ce 	bl	c0de4bfa <OUTLINED_FUNCTION_5>
c0de485e:	d007      	beq.n	c0de4870 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4860:	2802      	cmp	r0, #2
c0de4862:	d007      	beq.n	c0de4874 <nbgl_stepDrawCenteredInfo+0x40>
c0de4864:	2801      	cmp	r0, #1
c0de4866:	d108      	bne.n	c0de487a <nbgl_stepDrawCenteredInfo+0x46>
c0de4868:	2002      	movs	r0, #2
c0de486a:	e004      	b.n	c0de4876 <nbgl_stepDrawCenteredInfo+0x42>
c0de486c:	2400      	movs	r4, #0
c0de486e:	e018      	b.n	c0de48a2 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4870:	2003      	movs	r0, #3
c0de4872:	e000      	b.n	c0de4876 <nbgl_stepDrawCenteredInfo+0x42>
c0de4874:	2001      	movs	r0, #1
c0de4876:	2500      	movs	r5, #0
c0de4878:	e000      	b.n	c0de487c <nbgl_stepDrawCenteredInfo+0x48>
c0de487a:	2000      	movs	r0, #0
c0de487c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4880:	a802      	add	r0, sp, #8
c0de4882:	f7ff f8cb 	bl	c0de3a1c <nbgl_layoutGet>
c0de4886:	4641      	mov	r1, r8
c0de4888:	6420      	str	r0, [r4, #64]	@ 0x40
c0de488a:	f7ff fb9d 	bl	c0de3fc8 <nbgl_layoutAddCenteredInfo>
c0de488e:	b925      	cbnz	r5, c0de489a <nbgl_stepDrawCenteredInfo+0x66>
c0de4890:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4892:	f10d 0106 	add.w	r1, sp, #6
c0de4896:	f7ff f925 	bl	c0de3ae4 <nbgl_layoutAddNavigation>
c0de489a:	f000 f9ab 	bl	c0de4bf4 <OUTLINED_FUNCTION_4>
c0de489e:	f002 fc7c 	bl	c0de719a <nbgl_refresh>
c0de48a2:	4620      	mov	r0, r4
c0de48a4:	b007      	add	sp, #28
c0de48a6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de48aa:	bf00      	nop
c0de48ac:	00000065 	.word	0x00000065

c0de48b0 <actionCallback>:
c0de48b0:	b510      	push	{r4, lr}
c0de48b2:	460c      	mov	r4, r1
c0de48b4:	f000 f8f0 	bl	c0de4a98 <getContextFromLayout>
c0de48b8:	b378      	cbz	r0, c0de491a <actionCallback+0x6a>
c0de48ba:	2c04      	cmp	r4, #4
c0de48bc:	d006      	beq.n	c0de48cc <actionCallback+0x1c>
c0de48be:	2c01      	cmp	r4, #1
c0de48c0:	d008      	beq.n	c0de48d4 <actionCallback+0x24>
c0de48c2:	bb54      	cbnz	r4, c0de491a <actionCallback+0x6a>
c0de48c4:	7841      	ldrb	r1, [r0, #1]
c0de48c6:	b1d9      	cbz	r1, c0de4900 <actionCallback+0x50>
c0de48c8:	3901      	subs	r1, #1
c0de48ca:	e009      	b.n	c0de48e0 <actionCallback+0x30>
c0de48cc:	6942      	ldr	r2, [r0, #20]
c0de48ce:	b322      	cbz	r2, c0de491a <actionCallback+0x6a>
c0de48d0:	2104      	movs	r1, #4
c0de48d2:	e01f      	b.n	c0de4914 <actionCallback+0x64>
c0de48d4:	7802      	ldrb	r2, [r0, #0]
c0de48d6:	7841      	ldrb	r1, [r0, #1]
c0de48d8:	3a01      	subs	r2, #1
c0de48da:	428a      	cmp	r2, r1
c0de48dc:	dd05      	ble.n	c0de48ea <actionCallback+0x3a>
c0de48de:	3101      	adds	r1, #1
c0de48e0:	b2c9      	uxtb	r1, r1
c0de48e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de48e6:	f7ff bebf 	b.w	c0de4668 <displayTextPage>
c0de48ea:	7c01      	ldrb	r1, [r0, #16]
c0de48ec:	f041 0102 	orr.w	r1, r1, #2
c0de48f0:	2903      	cmp	r1, #3
c0de48f2:	d001      	beq.n	c0de48f8 <actionCallback+0x48>
c0de48f4:	7c41      	ldrb	r1, [r0, #17]
c0de48f6:	b181      	cbz	r1, c0de491a <actionCallback+0x6a>
c0de48f8:	6942      	ldr	r2, [r0, #20]
c0de48fa:	b172      	cbz	r2, c0de491a <actionCallback+0x6a>
c0de48fc:	2101      	movs	r1, #1
c0de48fe:	e009      	b.n	c0de4914 <actionCallback+0x64>
c0de4900:	7c01      	ldrb	r1, [r0, #16]
c0de4902:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4906:	2902      	cmp	r1, #2
c0de4908:	d001      	beq.n	c0de490e <actionCallback+0x5e>
c0de490a:	7c41      	ldrb	r1, [r0, #17]
c0de490c:	b129      	cbz	r1, c0de491a <actionCallback+0x6a>
c0de490e:	6942      	ldr	r2, [r0, #20]
c0de4910:	b11a      	cbz	r2, c0de491a <actionCallback+0x6a>
c0de4912:	2100      	movs	r1, #0
c0de4914:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4918:	4710      	bx	r2
c0de491a:	bd10      	pop	{r4, pc}

c0de491c <getNavigationInfo>:
c0de491c:	4603      	mov	r3, r0
c0de491e:	2902      	cmp	r1, #2
c0de4920:	d308      	bcc.n	c0de4934 <getNavigationInfo+0x18>
c0de4922:	3901      	subs	r1, #1
c0de4924:	4610      	mov	r0, r2
c0de4926:	2a00      	cmp	r2, #0
c0de4928:	bf18      	it	ne
c0de492a:	2001      	movne	r0, #1
c0de492c:	4291      	cmp	r1, r2
c0de492e:	bf88      	it	hi
c0de4930:	3002      	addhi	r0, #2
c0de4932:	e000      	b.n	c0de4936 <getNavigationInfo+0x1a>
c0de4934:	2000      	movs	r0, #0
c0de4936:	2b03      	cmp	r3, #3
c0de4938:	d00a      	beq.n	c0de4950 <getNavigationInfo+0x34>
c0de493a:	2b02      	cmp	r3, #2
c0de493c:	bf04      	itt	eq
c0de493e:	f040 0001 	orreq.w	r0, r0, #1
c0de4942:	4770      	bxeq	lr
c0de4944:	2b01      	cmp	r3, #1
c0de4946:	bf04      	itt	eq
c0de4948:	f040 0002 	orreq.w	r0, r0, #2
c0de494c:	4770      	bxeq	lr
c0de494e:	4770      	bx	lr
c0de4950:	2003      	movs	r0, #3
c0de4952:	4770      	bx	lr

c0de4954 <nbgl_stepDrawMenuList>:
c0de4954:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4956:	460f      	mov	r7, r1
c0de4958:	4606      	mov	r6, r0
c0de495a:	2002      	movs	r0, #2
c0de495c:	4619      	mov	r1, r3
c0de495e:	4615      	mov	r5, r2
c0de4960:	f7ff fe5c 	bl	c0de461c <getFreeContext>
c0de4964:	b170      	cbz	r0, c0de4984 <nbgl_stepDrawMenuList+0x30>
c0de4966:	4604      	mov	r4, r0
c0de4968:	b10f      	cbz	r7, c0de496e <nbgl_stepDrawMenuList+0x1a>
c0de496a:	f000 f910 	bl	c0de4b8e <OUTLINED_FUNCTION_1>
c0de496e:	7928      	ldrb	r0, [r5, #4]
c0de4970:	7220      	strb	r0, [r4, #8]
c0de4972:	7968      	ldrb	r0, [r5, #5]
c0de4974:	7260      	strb	r0, [r4, #9]
c0de4976:	6828      	ldr	r0, [r5, #0]
c0de4978:	e9c4 6000 	strd	r6, r0, [r4]
c0de497c:	4620      	mov	r0, r4
c0de497e:	f000 f805 	bl	c0de498c <displayMenuList>
c0de4982:	e000      	b.n	c0de4986 <nbgl_stepDrawMenuList+0x32>
c0de4984:	2400      	movs	r4, #0
c0de4986:	4620      	mov	r0, r4
c0de4988:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de498c <displayMenuList>:
c0de498c:	b5b0      	push	{r4, r5, r7, lr}
c0de498e:	b086      	sub	sp, #24
c0de4990:	4604      	mov	r4, r0
c0de4992:	2000      	movs	r0, #0
c0de4994:	9001      	str	r0, [sp, #4]
c0de4996:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de499a:	4819      	ldr	r0, [pc, #100]	@ (c0de4a00 <displayMenuList+0x74>)
c0de499c:	4478      	add	r0, pc
c0de499e:	9002      	str	r0, [sp, #8]
c0de49a0:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de49a4:	f88d 0004 	strb.w	r0, [sp, #4]
c0de49a8:	ca07      	ldmia	r2, {r0, r1, r2}
c0de49aa:	ab03      	add	r3, sp, #12
c0de49ac:	c307      	stmia	r3!, {r0, r1, r2}
c0de49ae:	a801      	add	r0, sp, #4
c0de49b0:	f7ff f834 	bl	c0de3a1c <nbgl_layoutGet>
c0de49b4:	1d25      	adds	r5, r4, #4
c0de49b6:	6420      	str	r0, [r4, #64]	@ 0x40
c0de49b8:	4629      	mov	r1, r5
c0de49ba:	f7ff fab1 	bl	c0de3f20 <nbgl_layoutAddMenuList>
c0de49be:	7a20      	ldrb	r0, [r4, #8]
c0de49c0:	2802      	cmp	r0, #2
c0de49c2:	d316      	bcc.n	c0de49f2 <displayMenuList+0x66>
c0de49c4:	2101      	movs	r1, #1
c0de49c6:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de49ca:	7969      	ldrb	r1, [r5, #5]
c0de49cc:	2900      	cmp	r1, #0
c0de49ce:	460a      	mov	r2, r1
c0de49d0:	bf18      	it	ne
c0de49d2:	2201      	movne	r2, #1
c0de49d4:	3801      	subs	r0, #1
c0de49d6:	f88d 2003 	strb.w	r2, [sp, #3]
c0de49da:	4288      	cmp	r0, r1
c0de49dc:	d903      	bls.n	c0de49e6 <displayMenuList+0x5a>
c0de49de:	1c90      	adds	r0, r2, #2
c0de49e0:	f88d 0003 	strb.w	r0, [sp, #3]
c0de49e4:	e000      	b.n	c0de49e8 <displayMenuList+0x5c>
c0de49e6:	b121      	cbz	r1, c0de49f2 <displayMenuList+0x66>
c0de49e8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de49ea:	f10d 0102 	add.w	r1, sp, #2
c0de49ee:	f7ff f879 	bl	c0de3ae4 <nbgl_layoutAddNavigation>
c0de49f2:	f000 f8ff 	bl	c0de4bf4 <OUTLINED_FUNCTION_4>
c0de49f6:	f002 fbd0 	bl	c0de719a <nbgl_refresh>
c0de49fa:	b006      	add	sp, #24
c0de49fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de49fe:	bf00      	nop
c0de4a00:	00000121 	.word	0x00000121

c0de4a04 <nbgl_stepDrawSwitch>:
c0de4a04:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4a08:	b087      	sub	sp, #28
c0de4a0a:	460d      	mov	r5, r1
c0de4a0c:	4682      	mov	sl, r0
c0de4a0e:	a802      	add	r0, sp, #8
c0de4a10:	f000 f8eb 	bl	c0de4bea <OUTLINED_FUNCTION_3>
c0de4a14:	4819      	ldr	r0, [pc, #100]	@ (c0de4a7c <nbgl_stepDrawSwitch+0x78>)
c0de4a16:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4a18:	4478      	add	r0, pc
c0de4a1a:	f000 f8dd 	bl	c0de4bd8 <OUTLINED_FUNCTION_2>
c0de4a1e:	b168      	cbz	r0, c0de4a3c <nbgl_stepDrawSwitch+0x38>
c0de4a20:	4604      	mov	r4, r0
c0de4a22:	6145      	str	r5, [r0, #20]
c0de4a24:	b10f      	cbz	r7, c0de4a2a <nbgl_stepDrawSwitch+0x26>
c0de4a26:	f000 f86b 	bl	c0de4b00 <OUTLINED_FUNCTION_0>
c0de4a2a:	f000 f8e6 	bl	c0de4bfa <OUTLINED_FUNCTION_5>
c0de4a2e:	d007      	beq.n	c0de4a40 <nbgl_stepDrawSwitch+0x3c>
c0de4a30:	2802      	cmp	r0, #2
c0de4a32:	d007      	beq.n	c0de4a44 <nbgl_stepDrawSwitch+0x40>
c0de4a34:	2801      	cmp	r0, #1
c0de4a36:	d108      	bne.n	c0de4a4a <nbgl_stepDrawSwitch+0x46>
c0de4a38:	2002      	movs	r0, #2
c0de4a3a:	e004      	b.n	c0de4a46 <nbgl_stepDrawSwitch+0x42>
c0de4a3c:	2400      	movs	r4, #0
c0de4a3e:	e018      	b.n	c0de4a72 <nbgl_stepDrawSwitch+0x6e>
c0de4a40:	2003      	movs	r0, #3
c0de4a42:	e000      	b.n	c0de4a46 <nbgl_stepDrawSwitch+0x42>
c0de4a44:	2001      	movs	r0, #1
c0de4a46:	2500      	movs	r5, #0
c0de4a48:	e000      	b.n	c0de4a4c <nbgl_stepDrawSwitch+0x48>
c0de4a4a:	2000      	movs	r0, #0
c0de4a4c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4a50:	a802      	add	r0, sp, #8
c0de4a52:	f7fe ffe3 	bl	c0de3a1c <nbgl_layoutGet>
c0de4a56:	4641      	mov	r1, r8
c0de4a58:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4a5a:	f7ff fc55 	bl	c0de4308 <nbgl_layoutAddSwitch>
c0de4a5e:	b925      	cbnz	r5, c0de4a6a <nbgl_stepDrawSwitch+0x66>
c0de4a60:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4a62:	f10d 0106 	add.w	r1, sp, #6
c0de4a66:	f7ff f83d 	bl	c0de3ae4 <nbgl_layoutAddNavigation>
c0de4a6a:	f000 f8c3 	bl	c0de4bf4 <OUTLINED_FUNCTION_4>
c0de4a6e:	f002 fb94 	bl	c0de719a <nbgl_refresh>
c0de4a72:	4620      	mov	r0, r4
c0de4a74:	b007      	add	sp, #28
c0de4a76:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4a7a:	bf00      	nop
c0de4a7c:	fffffe95 	.word	0xfffffe95

c0de4a80 <nbgl_stepRelease>:
c0de4a80:	b138      	cbz	r0, c0de4a92 <nbgl_stepRelease+0x12>
c0de4a82:	b510      	push	{r4, lr}
c0de4a84:	4604      	mov	r4, r0
c0de4a86:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4a88:	f7ff fd3a 	bl	c0de4500 <nbgl_layoutRelease>
c0de4a8c:	2100      	movs	r1, #0
c0de4a8e:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4a90:	bd10      	pop	{r4, pc}
c0de4a92:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4a96:	4770      	bx	lr

c0de4a98 <getContextFromLayout>:
c0de4a98:	4a08      	ldr	r2, [pc, #32]	@ (c0de4abc <getContextFromLayout+0x24>)
c0de4a9a:	2100      	movs	r1, #0
c0de4a9c:	29d8      	cmp	r1, #216	@ 0xd8
c0de4a9e:	bf04      	itt	eq
c0de4aa0:	2000      	moveq	r0, #0
c0de4aa2:	4770      	bxeq	lr
c0de4aa4:	eb09 0302 	add.w	r3, r9, r2
c0de4aa8:	440b      	add	r3, r1
c0de4aaa:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4aac:	4283      	cmp	r3, r0
c0de4aae:	d001      	beq.n	c0de4ab4 <getContextFromLayout+0x1c>
c0de4ab0:	3148      	adds	r1, #72	@ 0x48
c0de4ab2:	e7f3      	b.n	c0de4a9c <getContextFromLayout+0x4>
c0de4ab4:	eb09 0002 	add.w	r0, r9, r2
c0de4ab8:	4408      	add	r0, r1
c0de4aba:	4770      	bx	lr
c0de4abc:	00000678 	.word	0x00000678

c0de4ac0 <menuListActionCallback>:
c0de4ac0:	b510      	push	{r4, lr}
c0de4ac2:	460c      	mov	r4, r1
c0de4ac4:	f7ff ffe8 	bl	c0de4a98 <getContextFromLayout>
c0de4ac8:	b1c8      	cbz	r0, c0de4afe <menuListActionCallback+0x3e>
c0de4aca:	2c04      	cmp	r4, #4
c0de4acc:	d006      	beq.n	c0de4adc <menuListActionCallback+0x1c>
c0de4ace:	2c01      	cmp	r4, #1
c0de4ad0:	d00a      	beq.n	c0de4ae8 <menuListActionCallback+0x28>
c0de4ad2:	b9a4      	cbnz	r4, c0de4afe <menuListActionCallback+0x3e>
c0de4ad4:	7a41      	ldrb	r1, [r0, #9]
c0de4ad6:	b191      	cbz	r1, c0de4afe <menuListActionCallback+0x3e>
c0de4ad8:	3901      	subs	r1, #1
c0de4ada:	e00b      	b.n	c0de4af4 <menuListActionCallback+0x34>
c0de4adc:	7a41      	ldrb	r1, [r0, #9]
c0de4ade:	6802      	ldr	r2, [r0, #0]
c0de4ae0:	4608      	mov	r0, r1
c0de4ae2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ae6:	4710      	bx	r2
c0de4ae8:	7a02      	ldrb	r2, [r0, #8]
c0de4aea:	7a41      	ldrb	r1, [r0, #9]
c0de4aec:	3a01      	subs	r2, #1
c0de4aee:	428a      	cmp	r2, r1
c0de4af0:	dd05      	ble.n	c0de4afe <menuListActionCallback+0x3e>
c0de4af2:	3101      	adds	r1, #1
c0de4af4:	7241      	strb	r1, [r0, #9]
c0de4af6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4afa:	f7ff bf47 	b.w	c0de498c <displayMenuList>
c0de4afe:	bd10      	pop	{r4, pc}

c0de4b00 <OUTLINED_FUNCTION_0>:
c0de4b00:	7838      	ldrb	r0, [r7, #0]
c0de4b02:	7879      	ldrb	r1, [r7, #1]
c0de4b04:	78ba      	ldrb	r2, [r7, #2]
c0de4b06:	78fb      	ldrb	r3, [r7, #3]
c0de4b08:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b0c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b10:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4b14:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4b16:	4638      	mov	r0, r7
c0de4b18:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4b1c:	7a79      	ldrb	r1, [r7, #9]
c0de4b1e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4b22:	7882      	ldrb	r2, [r0, #2]
c0de4b24:	78c3      	ldrb	r3, [r0, #3]
c0de4b26:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b2a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4b2e:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4b30:	4639      	mov	r1, r7
c0de4b32:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4b36:	797a      	ldrb	r2, [r7, #5]
c0de4b38:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4b3c:	788b      	ldrb	r3, [r1, #2]
c0de4b3e:	78cd      	ldrb	r5, [r1, #3]
c0de4b40:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4b44:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4b48:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4b4a:	783a      	ldrb	r2, [r7, #0]
c0de4b4c:	787b      	ldrb	r3, [r7, #1]
c0de4b4e:	78bd      	ldrb	r5, [r7, #2]
c0de4b50:	78fe      	ldrb	r6, [r7, #3]
c0de4b52:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b56:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4b5a:	7803      	ldrb	r3, [r0, #0]
c0de4b5c:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4b60:	7885      	ldrb	r5, [r0, #2]
c0de4b62:	78c0      	ldrb	r0, [r0, #3]
c0de4b64:	9204      	str	r2, [sp, #16]
c0de4b66:	7a7a      	ldrb	r2, [r7, #9]
c0de4b68:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4b6c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4b70:	788b      	ldrb	r3, [r1, #2]
c0de4b72:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4b76:	780a      	ldrb	r2, [r1, #0]
c0de4b78:	78c9      	ldrb	r1, [r1, #3]
c0de4b7a:	9006      	str	r0, [sp, #24]
c0de4b7c:	7978      	ldrb	r0, [r7, #5]
c0de4b7e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4b82:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4b86:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4b8a:	9005      	str	r0, [sp, #20]
c0de4b8c:	4770      	bx	lr

c0de4b8e <OUTLINED_FUNCTION_1>:
c0de4b8e:	7838      	ldrb	r0, [r7, #0]
c0de4b90:	7879      	ldrb	r1, [r7, #1]
c0de4b92:	78ba      	ldrb	r2, [r7, #2]
c0de4b94:	78fb      	ldrb	r3, [r7, #3]
c0de4b96:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b9a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b9e:	4639      	mov	r1, r7
c0de4ba0:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4ba4:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4ba8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4baa:	7a78      	ldrb	r0, [r7, #9]
c0de4bac:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4bb0:	788a      	ldrb	r2, [r1, #2]
c0de4bb2:	78c9      	ldrb	r1, [r1, #3]
c0de4bb4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4bb8:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4bbc:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4bbe:	7978      	ldrb	r0, [r7, #5]
c0de4bc0:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4bc4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4bc8:	78b9      	ldrb	r1, [r7, #2]
c0de4bca:	78fa      	ldrb	r2, [r7, #3]
c0de4bcc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4bd0:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4bd4:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4bd6:	4770      	bx	lr

c0de4bd8 <OUTLINED_FUNCTION_2>:
c0de4bd8:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4bdc:	9003      	str	r0, [sp, #12]
c0de4bde:	2000      	movs	r0, #0
c0de4be0:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4be4:	2001      	movs	r0, #1
c0de4be6:	f7ff bd19 	b.w	c0de461c <getFreeContext>

c0de4bea <OUTLINED_FUNCTION_3>:
c0de4bea:	2114      	movs	r1, #20
c0de4bec:	4698      	mov	r8, r3
c0de4bee:	4617      	mov	r7, r2
c0de4bf0:	f002 bfee 	b.w	c0de7bd0 <__aeabi_memclr>

c0de4bf4 <OUTLINED_FUNCTION_4>:
c0de4bf4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bf6:	f7ff bc7b 	b.w	c0de44f0 <nbgl_layoutDraw>

c0de4bfa <OUTLINED_FUNCTION_5>:
c0de4bfa:	2501      	movs	r5, #1
c0de4bfc:	f00a 0003 	and.w	r0, sl, #3
c0de4c00:	2803      	cmp	r0, #3
c0de4c02:	7025      	strb	r5, [r4, #0]
c0de4c04:	7420      	strb	r0, [r4, #16]
c0de4c06:	4770      	bx	lr

c0de4c08 <nbgl_useCaseHomeAndSettings>:
c0de4c08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4c0c:	4607      	mov	r7, r0
c0de4c0e:	4810      	ldr	r0, [pc, #64]	@ (c0de4c50 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4c10:	f001 fd31 	bl	c0de6676 <OUTLINED_FUNCTION_3>
c0de4c14:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4c18:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4c1a:	9d06      	ldr	r5, [sp, #24]
c0de4c1c:	4628      	mov	r0, r5
c0de4c1e:	f002 fccb 	bl	c0de75b8 <pic>
c0de4c22:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4c24:	9807      	ldr	r0, [sp, #28]
c0de4c26:	f002 fcc7 	bl	c0de75b8 <pic>
c0de4c2a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4c2c:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4c30:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4c32:	9908      	ldr	r1, [sp, #32]
c0de4c34:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de4c38:	bf18      	it	ne
c0de4c3a:	2d00      	cmpne	r5, #0
c0de4c3c:	d103      	bne.n	c0de4c46 <nbgl_useCaseHomeAndSettings+0x3e>
c0de4c3e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4c42:	f000 b843 	b.w	c0de4ccc <startUseCaseHome>
c0de4c46:	4640      	mov	r0, r8
c0de4c48:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4c4c:	f000 b802 	b.w	c0de4c54 <startUseCaseSettingsAtPage>
c0de4c50:	00000750 	.word	0x00000750

c0de4c54 <startUseCaseSettingsAtPage>:
c0de4c54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4c56:	b08f      	sub	sp, #60	@ 0x3c
c0de4c58:	4604      	mov	r4, r0
c0de4c5a:	a801      	add	r0, sp, #4
c0de4c5c:	2138      	movs	r1, #56	@ 0x38
c0de4c5e:	f002 ffb7 	bl	c0de7bd0 <__aeabi_memclr>
c0de4c62:	4e19      	ldr	r6, [pc, #100]	@ (c0de4cc8 <startUseCaseSettingsAtPage+0x74>)
c0de4c64:	eb09 0006 	add.w	r0, r9, r6
c0de4c68:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de4c6c:	280f      	cmp	r0, #15
c0de4c6e:	bf1e      	ittt	ne
c0de4c70:	eb09 0006 	addne.w	r0, r9, r6
c0de4c74:	210e      	movne	r1, #14
c0de4c76:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de4c7a:	eb09 0006 	add.w	r0, r9, r6
c0de4c7e:	2101      	movs	r1, #1
c0de4c80:	2700      	movs	r7, #0
c0de4c82:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4c86:	ad01      	add	r5, sp, #4
c0de4c88:	eb09 0006 	add.w	r0, r9, r6
c0de4c8c:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de4c8e:	7a01      	ldrb	r1, [r0, #8]
c0de4c90:	428f      	cmp	r7, r1
c0de4c92:	d20e      	bcs.n	c0de4cb2 <startUseCaseSettingsAtPage+0x5e>
c0de4c94:	b279      	sxtb	r1, r7
c0de4c96:	462a      	mov	r2, r5
c0de4c98:	f000 fd06 	bl	c0de56a8 <getContentAtIdx>
c0de4c9c:	f000 fd5e 	bl	c0de575c <getContentNbElement>
c0de4ca0:	eb09 0106 	add.w	r1, r9, r6
c0de4ca4:	3701      	adds	r7, #1
c0de4ca6:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de4caa:	4410      	add	r0, r2
c0de4cac:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de4cb0:	e7ea      	b.n	c0de4c88 <startUseCaseSettingsAtPage+0x34>
c0de4cb2:	eb09 0006 	add.w	r0, r9, r6
c0de4cb6:	2100      	movs	r1, #0
c0de4cb8:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de4cbc:	2000      	movs	r0, #0
c0de4cbe:	f000 ff57 	bl	c0de5b70 <displaySettingsPage>
c0de4cc2:	b00f      	add	sp, #60	@ 0x3c
c0de4cc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4cc6:	bf00      	nop
c0de4cc8:	00000750 	.word	0x00000750

c0de4ccc <startUseCaseHome>:
c0de4ccc:	b510      	push	{r4, lr}
c0de4cce:	4821      	ldr	r0, [pc, #132]	@ (c0de4d54 <startUseCaseHome+0x88>)
c0de4cd0:	eb09 0100 	add.w	r1, r9, r0
c0de4cd4:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de4cd8:	290d      	cmp	r1, #13
c0de4cda:	d009      	beq.n	c0de4cf0 <startUseCaseHome+0x24>
c0de4cdc:	290e      	cmp	r1, #14
c0de4cde:	d114      	bne.n	c0de4d0a <startUseCaseHome+0x3e>
c0de4ce0:	eb09 0100 	add.w	r1, r9, r0
c0de4ce4:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de4ce6:	2102      	movs	r1, #2
c0de4ce8:	2a00      	cmp	r2, #0
c0de4cea:	bf08      	it	eq
c0de4cec:	2101      	moveq	r1, #1
c0de4cee:	e00d      	b.n	c0de4d0c <startUseCaseHome+0x40>
c0de4cf0:	eb09 0200 	add.w	r2, r9, r0
c0de4cf4:	2102      	movs	r1, #2
c0de4cf6:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de4cf8:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de4cfa:	2c00      	cmp	r4, #0
c0de4cfc:	bf08      	it	eq
c0de4cfe:	2101      	moveq	r1, #1
c0de4d00:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4d04:	b133      	cbz	r3, c0de4d14 <startUseCaseHome+0x48>
c0de4d06:	3101      	adds	r1, #1
c0de4d08:	e000      	b.n	c0de4d0c <startUseCaseHome+0x40>
c0de4d0a:	2100      	movs	r1, #0
c0de4d0c:	eb09 0200 	add.w	r2, r9, r0
c0de4d10:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4d14:	eb09 0200 	add.w	r2, r9, r0
c0de4d18:	210c      	movs	r1, #12
c0de4d1a:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de4d1e:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de4d22:	2103      	movs	r1, #3
c0de4d24:	2b00      	cmp	r3, #0
c0de4d26:	bf08      	it	eq
c0de4d28:	2102      	moveq	r1, #2
c0de4d2a:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4d2e:	b124      	cbz	r4, c0de4d3a <startUseCaseHome+0x6e>
c0de4d30:	3101      	adds	r1, #1
c0de4d32:	eb09 0200 	add.w	r2, r9, r0
c0de4d36:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4d3a:	eb09 0200 	add.w	r2, r9, r0
c0de4d3e:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de4d40:	b11a      	cbz	r2, c0de4d4a <startUseCaseHome+0x7e>
c0de4d42:	4448      	add	r0, r9
c0de4d44:	3101      	adds	r1, #1
c0de4d46:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4d4a:	2000      	movs	r0, #0
c0de4d4c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4d50:	f000 bffe 	b.w	c0de5d50 <displayHomePage>
c0de4d54:	00000750 	.word	0x00000750

c0de4d58 <nbgl_useCaseReview>:
c0de4d58:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4d5a:	4614      	mov	r4, r2
c0de4d5c:	460a      	mov	r2, r1
c0de4d5e:	4601      	mov	r1, r0
c0de4d60:	9808      	ldr	r0, [sp, #32]
c0de4d62:	9003      	str	r0, [sp, #12]
c0de4d64:	9807      	ldr	r0, [sp, #28]
c0de4d66:	9002      	str	r0, [sp, #8]
c0de4d68:	9806      	ldr	r0, [sp, #24]
c0de4d6a:	e9cd 3000 	strd	r3, r0, [sp]
c0de4d6e:	2002      	movs	r0, #2
c0de4d70:	4623      	mov	r3, r4
c0de4d72:	f000 f801 	bl	c0de4d78 <useCaseReview>
c0de4d76:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4d78 <useCaseReview>:
c0de4d78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4d7c:	4607      	mov	r7, r0
c0de4d7e:	4811      	ldr	r0, [pc, #68]	@ (c0de4dc4 <useCaseReview+0x4c>)
c0de4d80:	4688      	mov	r8, r1
c0de4d82:	2140      	movs	r1, #64	@ 0x40
c0de4d84:	461d      	mov	r5, r3
c0de4d86:	4614      	mov	r4, r2
c0de4d88:	f001 fc6f 	bl	c0de666a <OUTLINED_FUNCTION_2>
c0de4d8c:	9808      	ldr	r0, [sp, #32]
c0de4d8e:	6530      	str	r0, [r6, #80]	@ 0x50
c0de4d90:	9807      	ldr	r0, [sp, #28]
c0de4d92:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4d94:	9906      	ldr	r1, [sp, #24]
c0de4d96:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de4d9a:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de4d9c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4d9e:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de4da2:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de4da6:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de4da8:	2104      	movs	r1, #4
c0de4daa:	2800      	cmp	r0, #0
c0de4dac:	bf08      	it	eq
c0de4dae:	2103      	moveq	r1, #3
c0de4db0:	7a20      	ldrb	r0, [r4, #8]
c0de4db2:	4408      	add	r0, r1
c0de4db4:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de4db8:	2000      	movs	r0, #0
c0de4dba:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4dbe:	f000 b8d1 	b.w	c0de4f64 <displayReviewPage>
c0de4dc2:	bf00      	nop
c0de4dc4:	00000750 	.word	0x00000750

c0de4dc8 <nbgl_useCaseAdvancedReview>:
c0de4dc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4dcc:	b088      	sub	sp, #32
c0de4dce:	4617      	mov	r7, r2
c0de4dd0:	460a      	mov	r2, r1
c0de4dd2:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4dd6:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de4dda:	4606      	mov	r6, r0
c0de4ddc:	f1ba 0f00 	cmp.w	sl, #0
c0de4de0:	d013      	beq.n	c0de4e0a <nbgl_useCaseAdvancedReview+0x42>
c0de4de2:	f8da 0000 	ldr.w	r0, [sl]
c0de4de6:	9107      	str	r1, [sp, #28]
c0de4de8:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de4dec:	2808      	cmp	r0, #8
c0de4dee:	d018      	beq.n	c0de4e22 <nbgl_useCaseAdvancedReview+0x5a>
c0de4df0:	b9e0      	cbnz	r0, c0de4e2c <nbgl_useCaseAdvancedReview+0x64>
c0de4df2:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4df6:	b928      	cbnz	r0, c0de4e04 <nbgl_useCaseAdvancedReview+0x3c>
c0de4df8:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4dfc:	b910      	cbnz	r0, c0de4e04 <nbgl_useCaseAdvancedReview+0x3c>
c0de4dfe:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de4e02:	b110      	cbz	r0, c0de4e0a <nbgl_useCaseAdvancedReview+0x42>
c0de4e04:	4698      	mov	r8, r3
c0de4e06:	4615      	mov	r5, r2
c0de4e08:	e014      	b.n	c0de4e34 <nbgl_useCaseAdvancedReview+0x6c>
c0de4e0a:	e9cd 3500 	strd	r3, r5, [sp]
c0de4e0e:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de4e12:	2002      	movs	r0, #2
c0de4e14:	4631      	mov	r1, r6
c0de4e16:	463b      	mov	r3, r7
c0de4e18:	f7ff ffae 	bl	c0de4d78 <useCaseReview>
c0de4e1c:	b008      	add	sp, #32
c0de4e1e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4e22:	4698      	mov	r8, r3
c0de4e24:	4615      	mov	r5, r2
c0de4e26:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de4e2a:	e003      	b.n	c0de4e34 <nbgl_useCaseAdvancedReview+0x6c>
c0de4e2c:	4698      	mov	r8, r3
c0de4e2e:	4615      	mov	r5, r2
c0de4e30:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de4e34:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de4ea4 <nbgl_useCaseAdvancedReview+0xdc>
c0de4e38:	212c      	movs	r1, #44	@ 0x2c
c0de4e3a:	eb09 040b 	add.w	r4, r9, fp
c0de4e3e:	4620      	mov	r0, r4
c0de4e40:	f002 fec6 	bl	c0de7bd0 <__aeabi_memclr>
c0de4e44:	2002      	movs	r0, #2
c0de4e46:	462a      	mov	r2, r5
c0de4e48:	60a5      	str	r5, [r4, #8]
c0de4e4a:	9d06      	ldr	r5, [sp, #24]
c0de4e4c:	463b      	mov	r3, r7
c0de4e4e:	60e7      	str	r7, [r4, #12]
c0de4e50:	9f05      	ldr	r7, [sp, #20]
c0de4e52:	4641      	mov	r1, r8
c0de4e54:	f8c4 8010 	str.w	r8, [r4, #16]
c0de4e58:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4e5c:	6066      	str	r6, [r4, #4]
c0de4e5e:	f809 000b 	strb.w	r0, [r9, fp]
c0de4e62:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de4e66:	6167      	str	r7, [r4, #20]
c0de4e68:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de4e6c:	f8c4 8020 	str.w	r8, [r4, #32]
c0de4e70:	b120      	cbz	r0, c0de4e7c <nbgl_useCaseAdvancedReview+0xb4>
c0de4e72:	b008      	add	sp, #32
c0de4e74:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e78:	f000 b816 	b.w	c0de4ea8 <displayPrelude>
c0de4e7c:	f89a 0000 	ldrb.w	r0, [sl]
c0de4e80:	f010 0f16 	tst.w	r0, #22
c0de4e84:	d102      	bne.n	c0de4e8c <nbgl_useCaseAdvancedReview+0xc4>
c0de4e86:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4e8a:	b120      	cbz	r0, c0de4e96 <nbgl_useCaseAdvancedReview+0xce>
c0de4e8c:	b008      	add	sp, #32
c0de4e8e:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e92:	f000 b815 	b.w	c0de4ec0 <displayInitialWarning>
c0de4e96:	e9cd 1700 	strd	r1, r7, [sp]
c0de4e9a:	2002      	movs	r0, #2
c0de4e9c:	4631      	mov	r1, r6
c0de4e9e:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de4ea2:	e7b9      	b.n	c0de4e18 <nbgl_useCaseAdvancedReview+0x50>
c0de4ea4:	00000750 	.word	0x00000750

c0de4ea8 <displayPrelude>:
c0de4ea8:	4804      	ldr	r0, [pc, #16]	@ (c0de4ebc <displayPrelude+0x14>)
c0de4eaa:	2101      	movs	r1, #1
c0de4eac:	4448      	add	r0, r9
c0de4eae:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de4eb2:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de4eb6:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4eb8:	f001 b836 	b.w	c0de5f28 <displayWarningStep>
c0de4ebc:	00000750 	.word	0x00000750

c0de4ec0 <displayInitialWarning>:
c0de4ec0:	4804      	ldr	r0, [pc, #16]	@ (c0de4ed4 <displayInitialWarning+0x14>)
c0de4ec2:	2100      	movs	r1, #0
c0de4ec4:	4448      	add	r0, r9
c0de4ec6:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de4eca:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4ece:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4ed0:	f001 b82a 	b.w	c0de5f28 <displayWarningStep>
c0de4ed4:	00000750 	.word	0x00000750

c0de4ed8 <nbgl_useCaseReviewBlindSigning>:
c0de4ed8:	b5b0      	push	{r4, r5, r7, lr}
c0de4eda:	b086      	sub	sp, #24
c0de4edc:	4d06      	ldr	r5, [pc, #24]	@ (c0de4ef8 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4ede:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4ee0:	447d      	add	r5, pc
c0de4ee2:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4ee6:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4ee8:	9401      	str	r4, [sp, #4]
c0de4eea:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4eec:	9400      	str	r4, [sp, #0]
c0de4eee:	f7ff ff6b 	bl	c0de4dc8 <nbgl_useCaseAdvancedReview>
c0de4ef2:	b006      	add	sp, #24
c0de4ef4:	bdb0      	pop	{r4, r5, r7, pc}
c0de4ef6:	bf00      	nop
c0de4ef8:	000041b8 	.word	0x000041b8

c0de4efc <nbgl_useCaseAddressReview>:
c0de4efc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4f00:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4f60 <nbgl_useCaseAddressReview+0x64>
c0de4f04:	460c      	mov	r4, r1
c0de4f06:	4607      	mov	r7, r0
c0de4f08:	2140      	movs	r1, #64	@ 0x40
c0de4f0a:	469a      	mov	sl, r3
c0de4f0c:	4616      	mov	r6, r2
c0de4f0e:	eb09 0508 	add.w	r5, r9, r8
c0de4f12:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de4f16:	f002 fe5b 	bl	c0de7bd0 <__aeabi_memclr>
c0de4f1a:	2004      	movs	r0, #4
c0de4f1c:	656f      	str	r7, [r5, #84]	@ 0x54
c0de4f1e:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de4f22:	9808      	ldr	r0, [sp, #32]
c0de4f24:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de4f28:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de4f2a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4f2c:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de4f2e:	2105      	movs	r1, #5
c0de4f30:	2800      	cmp	r0, #0
c0de4f32:	bf08      	it	eq
c0de4f34:	2104      	moveq	r1, #4
c0de4f36:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de4f3a:	b15c      	cbz	r4, c0de4f54 <nbgl_useCaseAddressReview+0x58>
c0de4f3c:	4620      	mov	r0, r4
c0de4f3e:	eb09 0508 	add.w	r5, r9, r8
c0de4f42:	f002 fb39 	bl	c0de75b8 <pic>
c0de4f46:	6428      	str	r0, [r5, #64]	@ 0x40
c0de4f48:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de4f4c:	7a21      	ldrb	r1, [r4, #8]
c0de4f4e:	4408      	add	r0, r1
c0de4f50:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de4f54:	2000      	movs	r0, #0
c0de4f56:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4f5a:	f000 b803 	b.w	c0de4f64 <displayReviewPage>
c0de4f5e:	bf00      	nop
c0de4f60:	00000750 	.word	0x00000750

c0de4f64 <displayReviewPage>:
c0de4f64:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4f66:	b08b      	sub	sp, #44	@ 0x2c
c0de4f68:	4e5d      	ldr	r6, [pc, #372]	@ (c0de50e0 <displayReviewPage+0x17c>)
c0de4f6a:	4604      	mov	r4, r0
c0de4f6c:	2000      	movs	r0, #0
c0de4f6e:	2201      	movs	r2, #1
c0de4f70:	2702      	movs	r7, #2
c0de4f72:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4f76:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4f7a:	eb09 0306 	add.w	r3, r9, r6
c0de4f7e:	6398      	str	r0, [r3, #56]	@ 0x38
c0de4f80:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de4f82:	2800      	cmp	r0, #0
c0de4f84:	bf08      	it	eq
c0de4f86:	22ff      	moveq	r2, #255	@ 0xff
c0de4f88:	bf08      	it	eq
c0de4f8a:	2701      	moveq	r7, #1
c0de4f8c:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de4f90:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de4f94:	1e9d      	subs	r5, r3, #2
c0de4f96:	b2ed      	uxtb	r5, r5
c0de4f98:	42a9      	cmp	r1, r5
c0de4f9a:	da06      	bge.n	c0de4faa <displayReviewPage+0x46>
c0de4f9c:	42b9      	cmp	r1, r7
c0de4f9e:	da0b      	bge.n	c0de4fb8 <displayReviewPage+0x54>
c0de4fa0:	2900      	cmp	r1, #0
c0de4fa2:	d041      	beq.n	c0de5028 <displayReviewPage+0xc4>
c0de4fa4:	428a      	cmp	r2, r1
c0de4fa6:	d044      	beq.n	c0de5032 <displayReviewPage+0xce>
c0de4fa8:	e044      	b.n	c0de5034 <displayReviewPage+0xd0>
c0de4faa:	d110      	bne.n	c0de4fce <displayReviewPage+0x6a>
c0de4fac:	a908      	add	r1, sp, #32
c0de4fae:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4fb0:	2001      	movs	r0, #1
c0de4fb2:	f001 f885 	bl	c0de60c0 <getLastPageInfo>
c0de4fb6:	e03d      	b.n	c0de5034 <displayReviewPage+0xd0>
c0de4fb8:	eb09 0006 	add.w	r0, r9, r6
c0de4fbc:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de4fbe:	b18d      	cbz	r5, c0de4fe4 <displayReviewPage+0x80>
c0de4fc0:	42b9      	cmp	r1, r7
c0de4fc2:	d10f      	bne.n	c0de4fe4 <displayReviewPage+0x80>
c0de4fc4:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4fc6:	4847      	ldr	r0, [pc, #284]	@ (c0de50e4 <displayReviewPage+0x180>)
c0de4fc8:	4478      	add	r0, pc
c0de4fca:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4fcc:	e033      	b.n	c0de5036 <displayReviewPage+0xd2>
c0de4fce:	1e58      	subs	r0, r3, #1
c0de4fd0:	b2c0      	uxtb	r0, r0
c0de4fd2:	4281      	cmp	r1, r0
c0de4fd4:	d12e      	bne.n	c0de5034 <displayReviewPage+0xd0>
c0de4fd6:	a908      	add	r1, sp, #32
c0de4fd8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4fda:	2000      	movs	r0, #0
c0de4fdc:	2500      	movs	r5, #0
c0de4fde:	f001 f86f 	bl	c0de60c0 <getLastPageInfo>
c0de4fe2:	e028      	b.n	c0de5036 <displayReviewPage+0xd2>
c0de4fe4:	eb09 0006 	add.w	r0, r9, r6
c0de4fe8:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de4fec:	06d2      	lsls	r2, r2, #27
c0de4fee:	d535      	bpl.n	c0de505c <displayReviewPage+0xf8>
c0de4ff0:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de4ff4:	bb90      	cbnz	r0, c0de505c <displayReviewPage+0xf8>
c0de4ff6:	42b9      	cmp	r1, r7
c0de4ff8:	dc05      	bgt.n	c0de5006 <displayReviewPage+0xa2>
c0de4ffa:	eb09 0006 	add.w	r0, r9, r6
c0de4ffe:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de5002:	2808      	cmp	r0, #8
c0de5004:	d12a      	bne.n	c0de505c <displayReviewPage+0xf8>
c0de5006:	2000      	movs	r0, #0
c0de5008:	9006      	str	r0, [sp, #24]
c0de500a:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de500e:	eb09 0006 	add.w	r0, r9, r6
c0de5012:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de5016:	f004 0008 	and.w	r0, r4, #8
c0de501a:	2a01      	cmp	r2, #1
c0de501c:	d001      	beq.n	c0de5022 <displayReviewPage+0xbe>
c0de501e:	2901      	cmp	r1, #1
c0de5020:	db43      	blt.n	c0de50aa <displayReviewPage+0x146>
c0de5022:	f040 0003 	orr.w	r0, r0, #3
c0de5026:	e042      	b.n	c0de50ae <displayReviewPage+0x14a>
c0de5028:	eb09 0006 	add.w	r0, r9, r6
c0de502c:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de5030:	9108      	str	r1, [sp, #32]
c0de5032:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5034:	2500      	movs	r5, #0
c0de5036:	2000      	movs	r0, #0
c0de5038:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de503a:	9908      	ldr	r1, [sp, #32]
c0de503c:	4e2e      	ldr	r6, [pc, #184]	@ (c0de50f8 <displayReviewPage+0x194>)
c0de503e:	b2c0      	uxtb	r0, r0
c0de5040:	2300      	movs	r3, #0
c0de5042:	9002      	str	r0, [sp, #8]
c0de5044:	4620      	mov	r0, r4
c0de5046:	447e      	add	r6, pc
c0de5048:	e9cd 6300 	strd	r6, r3, [sp]
c0de504c:	462b      	mov	r3, r5
c0de504e:	f000 f875 	bl	c0de513c <drawStep>
c0de5052:	b00b      	add	sp, #44	@ 0x2c
c0de5054:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5058:	f002 b89f 	b.w	c0de719a <nbgl_refresh>
c0de505c:	2200      	movs	r2, #0
c0de505e:	eb09 0006 	add.w	r0, r9, r6
c0de5062:	1bcf      	subs	r7, r1, r7
c0de5064:	f10d 0c0c 	add.w	ip, sp, #12
c0de5068:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de506c:	f88d 200c 	strb.w	r2, [sp, #12]
c0de5070:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5072:	ab08      	add	r3, sp, #32
c0de5074:	aa07      	add	r2, sp, #28
c0de5076:	2d00      	cmp	r5, #0
c0de5078:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de507c:	bf18      	it	ne
c0de507e:	3f01      	subne	r7, #1
c0de5080:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5082:	b2f9      	uxtb	r1, r7
c0de5084:	ab09      	add	r3, sp, #36	@ 0x24
c0de5086:	f000 fcf7 	bl	c0de5a78 <getPairData>
c0de508a:	9807      	ldr	r0, [sp, #28]
c0de508c:	b140      	cbz	r0, c0de50a0 <displayReviewPage+0x13c>
c0de508e:	eb09 0006 	add.w	r0, r9, r6
c0de5092:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de5096:	4917      	ldr	r1, [pc, #92]	@ (c0de50f4 <displayReviewPage+0x190>)
c0de5098:	4479      	add	r1, pc
c0de509a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de509c:	2001      	movs	r0, #1
c0de509e:	e002      	b.n	c0de50a6 <displayReviewPage+0x142>
c0de50a0:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de50a4:	0040      	lsls	r0, r0, #1
c0de50a6:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de50a8:	e7c6      	b.n	c0de5038 <displayReviewPage+0xd4>
c0de50aa:	f040 0001 	orr.w	r0, r0, #1
c0de50ae:	490e      	ldr	r1, [pc, #56]	@ (c0de50e8 <displayReviewPage+0x184>)
c0de50b0:	2200      	movs	r2, #0
c0de50b2:	4479      	add	r1, pc
c0de50b4:	9103      	str	r1, [sp, #12]
c0de50b6:	490d      	ldr	r1, [pc, #52]	@ (c0de50ec <displayReviewPage+0x188>)
c0de50b8:	4479      	add	r1, pc
c0de50ba:	9105      	str	r1, [sp, #20]
c0de50bc:	2100      	movs	r1, #0
c0de50be:	9100      	str	r1, [sp, #0]
c0de50c0:	490b      	ldr	r1, [pc, #44]	@ (c0de50f0 <displayReviewPage+0x18c>)
c0de50c2:	ab03      	add	r3, sp, #12
c0de50c4:	4479      	add	r1, pc
c0de50c6:	f7ff fbb5 	bl	c0de4834 <nbgl_stepDrawCenteredInfo>
c0de50ca:	eb09 0406 	add.w	r4, r9, r6
c0de50ce:	f002 f864 	bl	c0de719a <nbgl_refresh>
c0de50d2:	2001      	movs	r0, #1
c0de50d4:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de50d8:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de50dc:	b00b      	add	sp, #44	@ 0x2c
c0de50de:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de50e0:	00000750 	.word	0x00000750
c0de50e4:	0000314e 	.word	0x0000314e
c0de50e8:	00002e34 	.word	0x00002e34
c0de50ec:	00002c62 	.word	0x00002c62
c0de50f0:	00001181 	.word	0x00001181
c0de50f4:	00001265 	.word	0x00001265
c0de50f8:	0000132b 	.word	0x0000132b

c0de50fc <nbgl_useCaseStatus>:
c0de50fc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de50fe:	4605      	mov	r5, r0
c0de5100:	480c      	ldr	r0, [pc, #48]	@ (c0de5134 <nbgl_useCaseStatus+0x38>)
c0de5102:	2140      	movs	r1, #64	@ 0x40
c0de5104:	4614      	mov	r4, r2
c0de5106:	f001 fab0 	bl	c0de666a <OUTLINED_FUNCTION_2>
c0de510a:	2009      	movs	r0, #9
c0de510c:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de510e:	462a      	mov	r2, r5
c0de5110:	2300      	movs	r3, #0
c0de5112:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de5116:	2001      	movs	r0, #1
c0de5118:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de511c:	2000      	movs	r0, #0
c0de511e:	4906      	ldr	r1, [pc, #24]	@ (c0de5138 <nbgl_useCaseStatus+0x3c>)
c0de5120:	9002      	str	r0, [sp, #8]
c0de5122:	4479      	add	r1, pc
c0de5124:	e9cd 1000 	strd	r1, r0, [sp]
c0de5128:	2040      	movs	r0, #64	@ 0x40
c0de512a:	2100      	movs	r1, #0
c0de512c:	f000 f806 	bl	c0de513c <drawStep>
c0de5130:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5132:	bf00      	nop
c0de5134:	00000750 	.word	0x00000750
c0de5138:	0000019f 	.word	0x0000019f

c0de513c <drawStep>:
c0de513c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5140:	b09a      	sub	sp, #104	@ 0x68
c0de5142:	4688      	mov	r8, r1
c0de5144:	4604      	mov	r4, r0
c0de5146:	a80c      	add	r0, sp, #48	@ 0x30
c0de5148:	2138      	movs	r1, #56	@ 0x38
c0de514a:	461d      	mov	r5, r3
c0de514c:	4616      	mov	r6, r2
c0de514e:	f002 fd3f 	bl	c0de7bd0 <__aeabi_memclr>
c0de5152:	2700      	movs	r7, #0
c0de5154:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de5158:	4856      	ldr	r0, [pc, #344]	@ (c0de52b4 <drawStep+0x178>)
c0de515a:	4478      	add	r0, pc
c0de515c:	f002 fa2c 	bl	c0de75b8 <pic>
c0de5160:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de52b0 <drawStep+0x174>
c0de5164:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de5168:	9709      	str	r7, [sp, #36]	@ 0x24
c0de516a:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de516e:	eb09 000b 	add.w	r0, r9, fp
c0de5172:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de5176:	2802      	cmp	r0, #2
c0de5178:	d30b      	bcc.n	c0de5192 <drawStep+0x56>
c0de517a:	eb09 010b 	add.w	r1, r9, fp
c0de517e:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5182:	b129      	cbz	r1, c0de5190 <drawStep+0x54>
c0de5184:	3801      	subs	r0, #1
c0de5186:	2703      	movs	r7, #3
c0de5188:	4288      	cmp	r0, r1
c0de518a:	bf08      	it	eq
c0de518c:	2702      	moveq	r7, #2
c0de518e:	e000      	b.n	c0de5192 <drawStep+0x56>
c0de5190:	2701      	movs	r7, #1
c0de5192:	eb09 000b 	add.w	r0, r9, fp
c0de5196:	ea47 0204 	orr.w	r2, r7, r4
c0de519a:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de519e:	4614      	mov	r4, r2
c0de51a0:	2901      	cmp	r1, #1
c0de51a2:	bf88      	it	hi
c0de51a4:	f044 0402 	orrhi.w	r4, r4, #2
c0de51a8:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de51aa:	2900      	cmp	r1, #0
c0de51ac:	bf08      	it	eq
c0de51ae:	4614      	moveq	r4, r2
c0de51b0:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de51b4:	2806      	cmp	r0, #6
c0de51b6:	f040 0108 	orr.w	r1, r0, #8
c0de51ba:	bf18      	it	ne
c0de51bc:	4614      	movne	r4, r2
c0de51be:	2909      	cmp	r1, #9
c0de51c0:	bf0c      	ite	eq
c0de51c2:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de51c6:	f04f 0a00 	movne.w	sl, #0
c0de51ca:	280a      	cmp	r0, #10
c0de51cc:	d105      	bne.n	c0de51da <drawStep+0x9e>
c0de51ce:	eb09 000b 	add.w	r0, r9, fp
c0de51d2:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de51d4:	b108      	cbz	r0, c0de51da <drawStep+0x9e>
c0de51d6:	f7ff fc53 	bl	c0de4a80 <nbgl_stepRelease>
c0de51da:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de51dc:	b1b6      	cbz	r6, c0de520c <drawStep+0xd0>
c0de51de:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de51e0:	f1b8 0f00 	cmp.w	r8, #0
c0de51e4:	d12c      	bne.n	c0de5240 <drawStep+0x104>
c0de51e6:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de51e8:	2802      	cmp	r0, #2
c0de51ea:	d029      	beq.n	c0de5240 <drawStep+0x104>
c0de51ec:	2201      	movs	r2, #1
c0de51ee:	4633      	mov	r3, r6
c0de51f0:	2801      	cmp	r0, #1
c0de51f2:	bf08      	it	eq
c0de51f4:	2202      	moveq	r2, #2
c0de51f6:	4620      	mov	r0, r4
c0de51f8:	2d00      	cmp	r5, #0
c0de51fa:	bf08      	it	eq
c0de51fc:	462a      	moveq	r2, r5
c0de51fe:	e9cd 5200 	strd	r5, r2, [sp]
c0de5202:	9702      	str	r7, [sp, #8]
c0de5204:	4652      	mov	r2, sl
c0de5206:	f7ff f9cf 	bl	c0de45a8 <nbgl_stepDrawText>
c0de520a:	e043      	b.n	c0de5294 <drawStep+0x158>
c0de520c:	eb09 000b 	add.w	r0, r9, fp
c0de5210:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5214:	a903      	add	r1, sp, #12
c0de5216:	aa0c      	add	r2, sp, #48	@ 0x30
c0de5218:	f000 fbea 	bl	c0de59f0 <getContentElemAtIdx>
c0de521c:	b330      	cbz	r0, c0de526c <drawStep+0x130>
c0de521e:	7801      	ldrb	r1, [r0, #0]
c0de5220:	2400      	movs	r4, #0
c0de5222:	290a      	cmp	r1, #10
c0de5224:	d024      	beq.n	c0de5270 <drawStep+0x134>
c0de5226:	2909      	cmp	r1, #9
c0de5228:	d135      	bne.n	c0de5296 <drawStep+0x15a>
c0de522a:	f001 fa32 	bl	c0de6692 <OUTLINED_FUNCTION_5>
c0de522e:	4922      	ldr	r1, [pc, #136]	@ (c0de52b8 <drawStep+0x17c>)
c0de5230:	4479      	add	r1, pc
c0de5232:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5234:	7941      	ldrb	r1, [r0, #5]
c0de5236:	7980      	ldrb	r0, [r0, #6]
c0de5238:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de523c:	1c48      	adds	r0, r1, #1
c0de523e:	e020      	b.n	c0de5282 <drawStep+0x146>
c0de5240:	2000      	movs	r0, #0
c0de5242:	9603      	str	r6, [sp, #12]
c0de5244:	f8cd 8014 	str.w	r8, [sp, #20]
c0de5248:	9504      	str	r5, [sp, #16]
c0de524a:	4652      	mov	r2, sl
c0de524c:	f88d 0018 	strb.w	r0, [sp, #24]
c0de5250:	eb09 000b 	add.w	r0, r9, fp
c0de5254:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5256:	4328      	orrs	r0, r5
c0de5258:	bf18      	it	ne
c0de525a:	2001      	movne	r0, #1
c0de525c:	f88d 0019 	strb.w	r0, [sp, #25]
c0de5260:	9700      	str	r7, [sp, #0]
c0de5262:	ab03      	add	r3, sp, #12
c0de5264:	4620      	mov	r0, r4
c0de5266:	f7ff fae5 	bl	c0de4834 <nbgl_stepDrawCenteredInfo>
c0de526a:	e013      	b.n	c0de5294 <drawStep+0x158>
c0de526c:	2400      	movs	r4, #0
c0de526e:	e012      	b.n	c0de5296 <drawStep+0x15a>
c0de5270:	f001 fa0f 	bl	c0de6692 <OUTLINED_FUNCTION_5>
c0de5274:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de5278:	4910      	ldr	r1, [pc, #64]	@ (c0de52bc <drawStep+0x180>)
c0de527a:	7a00      	ldrb	r0, [r0, #8]
c0de527c:	4479      	add	r1, pc
c0de527e:	3001      	adds	r0, #1
c0de5280:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5282:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de5286:	4651      	mov	r1, sl
c0de5288:	463b      	mov	r3, r7
c0de528a:	480d      	ldr	r0, [pc, #52]	@ (c0de52c0 <drawStep+0x184>)
c0de528c:	aa0a      	add	r2, sp, #40	@ 0x28
c0de528e:	4478      	add	r0, pc
c0de5290:	f7ff fb60 	bl	c0de4954 <nbgl_stepDrawMenuList>
c0de5294:	4604      	mov	r4, r0
c0de5296:	eb09 000b 	add.w	r0, r9, fp
c0de529a:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de529e:	280a      	cmp	r0, #10
c0de52a0:	bf04      	itt	eq
c0de52a2:	eb09 000b 	addeq.w	r0, r9, fp
c0de52a6:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de52a8:	b01a      	add	sp, #104	@ 0x68
c0de52aa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de52ae:	bf00      	nop
c0de52b0:	00000750 	.word	0x00000750
c0de52b4:	000013a3 	.word	0x000013a3
c0de52b8:	000012dd 	.word	0x000012dd
c0de52bc:	00001291 	.word	0x00001291
c0de52c0:	000012e3 	.word	0x000012e3

c0de52c4 <statusButtonCallback>:
c0de52c4:	f041 0004 	orr.w	r0, r1, #4
c0de52c8:	2804      	cmp	r0, #4
c0de52ca:	d001      	beq.n	c0de52d0 <statusButtonCallback+0xc>
c0de52cc:	2901      	cmp	r1, #1
c0de52ce:	d104      	bne.n	c0de52da <statusButtonCallback+0x16>
c0de52d0:	4802      	ldr	r0, [pc, #8]	@ (c0de52dc <statusButtonCallback+0x18>)
c0de52d2:	4448      	add	r0, r9
c0de52d4:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de52d6:	b100      	cbz	r0, c0de52da <statusButtonCallback+0x16>
c0de52d8:	4700      	bx	r0
c0de52da:	4770      	bx	lr
c0de52dc:	00000750 	.word	0x00000750

c0de52e0 <nbgl_useCaseReviewStatus>:
c0de52e0:	460a      	mov	r2, r1
c0de52e2:	b198      	cbz	r0, c0de530c <nbgl_useCaseReviewStatus+0x2c>
c0de52e4:	2801      	cmp	r0, #1
c0de52e6:	d016      	beq.n	c0de5316 <nbgl_useCaseReviewStatus+0x36>
c0de52e8:	2802      	cmp	r0, #2
c0de52ea:	d019      	beq.n	c0de5320 <nbgl_useCaseReviewStatus+0x40>
c0de52ec:	2803      	cmp	r0, #3
c0de52ee:	d01c      	beq.n	c0de532a <nbgl_useCaseReviewStatus+0x4a>
c0de52f0:	2804      	cmp	r0, #4
c0de52f2:	d01f      	beq.n	c0de5334 <nbgl_useCaseReviewStatus+0x54>
c0de52f4:	2807      	cmp	r0, #7
c0de52f6:	d022      	beq.n	c0de533e <nbgl_useCaseReviewStatus+0x5e>
c0de52f8:	2806      	cmp	r0, #6
c0de52fa:	d025      	beq.n	c0de5348 <nbgl_useCaseReviewStatus+0x68>
c0de52fc:	2805      	cmp	r0, #5
c0de52fe:	bf18      	it	ne
c0de5300:	4770      	bxne	lr
c0de5302:	4815      	ldr	r0, [pc, #84]	@ (c0de5358 <nbgl_useCaseReviewStatus+0x78>)
c0de5304:	2100      	movs	r1, #0
c0de5306:	4478      	add	r0, pc
c0de5308:	f7ff bef8 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de530c:	4813      	ldr	r0, [pc, #76]	@ (c0de535c <nbgl_useCaseReviewStatus+0x7c>)
c0de530e:	2101      	movs	r1, #1
c0de5310:	4478      	add	r0, pc
c0de5312:	f7ff bef3 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de5316:	4812      	ldr	r0, [pc, #72]	@ (c0de5360 <nbgl_useCaseReviewStatus+0x80>)
c0de5318:	2100      	movs	r1, #0
c0de531a:	4478      	add	r0, pc
c0de531c:	f7ff beee 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de5320:	4810      	ldr	r0, [pc, #64]	@ (c0de5364 <nbgl_useCaseReviewStatus+0x84>)
c0de5322:	2101      	movs	r1, #1
c0de5324:	4478      	add	r0, pc
c0de5326:	f7ff bee9 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de532a:	480f      	ldr	r0, [pc, #60]	@ (c0de5368 <nbgl_useCaseReviewStatus+0x88>)
c0de532c:	2100      	movs	r1, #0
c0de532e:	4478      	add	r0, pc
c0de5330:	f7ff bee4 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de5334:	4807      	ldr	r0, [pc, #28]	@ (c0de5354 <nbgl_useCaseReviewStatus+0x74>)
c0de5336:	2101      	movs	r1, #1
c0de5338:	4478      	add	r0, pc
c0de533a:	f7ff bedf 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de533e:	480c      	ldr	r0, [pc, #48]	@ (c0de5370 <nbgl_useCaseReviewStatus+0x90>)
c0de5340:	2100      	movs	r1, #0
c0de5342:	4478      	add	r0, pc
c0de5344:	f7ff beda 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de5348:	4808      	ldr	r0, [pc, #32]	@ (c0de536c <nbgl_useCaseReviewStatus+0x8c>)
c0de534a:	2101      	movs	r1, #1
c0de534c:	4478      	add	r0, pc
c0de534e:	f7ff bed5 	b.w	c0de50fc <nbgl_useCaseStatus>
c0de5352:	bf00      	nop
c0de5354:	00002b79 	.word	0x00002b79
c0de5358:	00002bcd 	.word	0x00002bcd
c0de535c:	00002c5d 	.word	0x00002c5d
c0de5360:	00002e29 	.word	0x00002e29
c0de5364:	00002cbc 	.word	0x00002cbc
c0de5368:	00002db8 	.word	0x00002db8
c0de536c:	00002be1 	.word	0x00002be1
c0de5370:	00002d1b 	.word	0x00002d1b

c0de5374 <displayStreamingReviewPage>:
c0de5374:	b570      	push	{r4, r5, r6, lr}
c0de5376:	b08c      	sub	sp, #48	@ 0x30
c0de5378:	4d5a      	ldr	r5, [pc, #360]	@ (c0de54e4 <displayStreamingReviewPage+0x170>)
c0de537a:	2100      	movs	r1, #0
c0de537c:	4604      	mov	r4, r0
c0de537e:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5382:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de5386:	eb09 0005 	add.w	r0, r9, r5
c0de538a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de538c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5390:	2806      	cmp	r0, #6
c0de5392:	d015      	beq.n	c0de53c0 <displayStreamingReviewPage+0x4c>
c0de5394:	2805      	cmp	r0, #5
c0de5396:	d13d      	bne.n	c0de5414 <displayStreamingReviewPage+0xa0>
c0de5398:	eb09 0205 	add.w	r2, r9, r5
c0de539c:	2101      	movs	r1, #1
c0de539e:	2302      	movs	r3, #2
c0de53a0:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de53a2:	2800      	cmp	r0, #0
c0de53a4:	bf08      	it	eq
c0de53a6:	21ff      	moveq	r1, #255	@ 0xff
c0de53a8:	bf08      	it	eq
c0de53aa:	2301      	moveq	r3, #1
c0de53ac:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de53b0:	4293      	cmp	r3, r2
c0de53b2:	dd3b      	ble.n	c0de542c <displayStreamingReviewPage+0xb8>
c0de53b4:	b2d3      	uxtb	r3, r2
c0de53b6:	2b00      	cmp	r3, #0
c0de53b8:	d063      	beq.n	c0de5482 <displayStreamingReviewPage+0x10e>
c0de53ba:	4291      	cmp	r1, r2
c0de53bc:	d066      	beq.n	c0de548c <displayStreamingReviewPage+0x118>
c0de53be:	e066      	b.n	c0de548e <displayStreamingReviewPage+0x11a>
c0de53c0:	eb09 0005 	add.w	r0, r9, r5
c0de53c4:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de53c8:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de53ca:	7a02      	ldrb	r2, [r0, #8]
c0de53cc:	4291      	cmp	r1, r2
c0de53ce:	da2d      	bge.n	c0de542c <displayStreamingReviewPage+0xb8>
c0de53d0:	eb09 0205 	add.w	r2, r9, r5
c0de53d4:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de53d6:	b3cb      	cbz	r3, c0de544c <displayStreamingReviewPage+0xd8>
c0de53d8:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de53dc:	bbb2      	cbnz	r2, c0de544c <displayStreamingReviewPage+0xd8>
c0de53de:	eb09 0205 	add.w	r2, r9, r5
c0de53e2:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de53e6:	2a01      	cmp	r2, #1
c0de53e8:	d807      	bhi.n	c0de53fa <displayStreamingReviewPage+0x86>
c0de53ea:	2900      	cmp	r1, #0
c0de53ec:	dc05      	bgt.n	c0de53fa <displayStreamingReviewPage+0x86>
c0de53ee:	eb09 0305 	add.w	r3, r9, r5
c0de53f2:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de53f6:	2b08      	cmp	r3, #8
c0de53f8:	d128      	bne.n	c0de544c <displayStreamingReviewPage+0xd8>
c0de53fa:	2000      	movs	r0, #0
c0de53fc:	9007      	str	r0, [sp, #28]
c0de53fe:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de5402:	f004 0008 	and.w	r0, r4, #8
c0de5406:	2a01      	cmp	r2, #1
c0de5408:	d001      	beq.n	c0de540e <displayStreamingReviewPage+0x9a>
c0de540a:	2901      	cmp	r1, #1
c0de540c:	db50      	blt.n	c0de54b0 <displayStreamingReviewPage+0x13c>
c0de540e:	f040 0003 	orr.w	r0, r0, #3
c0de5412:	e04f      	b.n	c0de54b4 <displayStreamingReviewPage+0x140>
c0de5414:	eb09 0005 	add.w	r0, r9, r5
c0de5418:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de541c:	b180      	cbz	r0, c0de5440 <displayStreamingReviewPage+0xcc>
c0de541e:	a909      	add	r1, sp, #36	@ 0x24
c0de5420:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5422:	2000      	movs	r0, #0
c0de5424:	2500      	movs	r5, #0
c0de5426:	f000 fe4b 	bl	c0de60c0 <getLastPageInfo>
c0de542a:	e031      	b.n	c0de5490 <displayStreamingReviewPage+0x11c>
c0de542c:	eb09 0005 	add.w	r0, r9, r5
c0de5430:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de5432:	2900      	cmp	r1, #0
c0de5434:	d053      	beq.n	c0de54de <displayStreamingReviewPage+0x16a>
c0de5436:	2001      	movs	r0, #1
c0de5438:	b00c      	add	sp, #48	@ 0x30
c0de543a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de543e:	4708      	bx	r1
c0de5440:	a909      	add	r1, sp, #36	@ 0x24
c0de5442:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5444:	2001      	movs	r0, #1
c0de5446:	f000 fe3b 	bl	c0de60c0 <getLastPageInfo>
c0de544a:	e020      	b.n	c0de548e <displayStreamingReviewPage+0x11a>
c0de544c:	2300      	movs	r3, #0
c0de544e:	eb09 0205 	add.w	r2, r9, r5
c0de5452:	b2c9      	uxtb	r1, r1
c0de5454:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de5458:	f88d 300f 	strb.w	r3, [sp, #15]
c0de545c:	ab09      	add	r3, sp, #36	@ 0x24
c0de545e:	ad08      	add	r5, sp, #32
c0de5460:	f10d 020f 	add.w	r2, sp, #15
c0de5464:	e9cd 5300 	strd	r5, r3, [sp]
c0de5468:	9202      	str	r2, [sp, #8]
c0de546a:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de546c:	ab0a      	add	r3, sp, #40	@ 0x28
c0de546e:	f000 fb03 	bl	c0de5a78 <getPairData>
c0de5472:	9808      	ldr	r0, [sp, #32]
c0de5474:	2800      	cmp	r0, #0
c0de5476:	bf12      	itee	ne
c0de5478:	2501      	movne	r5, #1
c0de547a:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de547e:	0045      	lsleq	r5, r0, #1
c0de5480:	e006      	b.n	c0de5490 <displayStreamingReviewPage+0x11c>
c0de5482:	eb09 0005 	add.w	r0, r9, r5
c0de5486:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de548a:	9109      	str	r1, [sp, #36]	@ 0x24
c0de548c:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de548e:	2500      	movs	r5, #0
c0de5490:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de5492:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de5496:	4e17      	ldr	r6, [pc, #92]	@ (c0de54f4 <displayStreamingReviewPage+0x180>)
c0de5498:	b2e8      	uxtb	r0, r5
c0de549a:	2500      	movs	r5, #0
c0de549c:	9002      	str	r0, [sp, #8]
c0de549e:	4620      	mov	r0, r4
c0de54a0:	447e      	add	r6, pc
c0de54a2:	f001 f8f9 	bl	c0de6698 <OUTLINED_FUNCTION_6>
c0de54a6:	b00c      	add	sp, #48	@ 0x30
c0de54a8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de54ac:	f001 be75 	b.w	c0de719a <nbgl_refresh>
c0de54b0:	f040 0001 	orr.w	r0, r0, #1
c0de54b4:	490c      	ldr	r1, [pc, #48]	@ (c0de54e8 <displayStreamingReviewPage+0x174>)
c0de54b6:	2200      	movs	r2, #0
c0de54b8:	4479      	add	r1, pc
c0de54ba:	9104      	str	r1, [sp, #16]
c0de54bc:	490b      	ldr	r1, [pc, #44]	@ (c0de54ec <displayStreamingReviewPage+0x178>)
c0de54be:	4479      	add	r1, pc
c0de54c0:	9106      	str	r1, [sp, #24]
c0de54c2:	2100      	movs	r1, #0
c0de54c4:	9100      	str	r1, [sp, #0]
c0de54c6:	490a      	ldr	r1, [pc, #40]	@ (c0de54f0 <displayStreamingReviewPage+0x17c>)
c0de54c8:	ab04      	add	r3, sp, #16
c0de54ca:	4479      	add	r1, pc
c0de54cc:	f7ff f9b2 	bl	c0de4834 <nbgl_stepDrawCenteredInfo>
c0de54d0:	eb09 0405 	add.w	r4, r9, r5
c0de54d4:	f001 fe61 	bl	c0de719a <nbgl_refresh>
c0de54d8:	2001      	movs	r0, #1
c0de54da:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de54de:	b00c      	add	sp, #48	@ 0x30
c0de54e0:	bd70      	pop	{r4, r5, r6, pc}
c0de54e2:	bf00      	nop
c0de54e4:	00000750 	.word	0x00000750
c0de54e8:	00002a2e 	.word	0x00002a2e
c0de54ec:	0000285c 	.word	0x0000285c
c0de54f0:	00000d7b 	.word	0x00000d7b
c0de54f4:	0000113d 	.word	0x0000113d

c0de54f8 <nbgl_useCaseSpinner>:
c0de54f8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de54fa:	4604      	mov	r4, r0
c0de54fc:	480b      	ldr	r0, [pc, #44]	@ (c0de552c <nbgl_useCaseSpinner+0x34>)
c0de54fe:	2140      	movs	r1, #64	@ 0x40
c0de5500:	f001 f8a2 	bl	c0de6648 <OUTLINED_FUNCTION_0>
c0de5504:	2001      	movs	r0, #1
c0de5506:	4622      	mov	r2, r4
c0de5508:	2300      	movs	r3, #0
c0de550a:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de550e:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de5512:	2000      	movs	r0, #0
c0de5514:	e9cd 0000 	strd	r0, r0, [sp]
c0de5518:	9002      	str	r0, [sp, #8]
c0de551a:	2000      	movs	r0, #0
c0de551c:	4904      	ldr	r1, [pc, #16]	@ (c0de5530 <nbgl_useCaseSpinner+0x38>)
c0de551e:	4479      	add	r1, pc
c0de5520:	f7ff fe0c 	bl	c0de513c <drawStep>
c0de5524:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de5528:	f001 be37 	b.w	c0de719a <nbgl_refresh>
c0de552c:	00000750 	.word	0x00000750
c0de5530:	000028f3 	.word	0x000028f3

c0de5534 <nbgl_useCaseChoice>:
c0de5534:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de5536:	9c07      	ldr	r4, [sp, #28]
c0de5538:	9402      	str	r4, [sp, #8]
c0de553a:	2400      	movs	r4, #0
c0de553c:	9401      	str	r4, [sp, #4]
c0de553e:	9c06      	ldr	r4, [sp, #24]
c0de5540:	9400      	str	r4, [sp, #0]
c0de5542:	f000 f801 	bl	c0de5548 <nbgl_useCaseChoiceWithDetails>
c0de5546:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de5548 <nbgl_useCaseChoiceWithDetails>:
c0de5548:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de554c:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de55bc <nbgl_useCaseChoiceWithDetails+0x74>
c0de5550:	460c      	mov	r4, r1
c0de5552:	4605      	mov	r5, r0
c0de5554:	2140      	movs	r1, #64	@ 0x40
c0de5556:	469a      	mov	sl, r3
c0de5558:	4617      	mov	r7, r2
c0de555a:	eb09 0608 	add.w	r6, r9, r8
c0de555e:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de5562:	f002 fb35 	bl	c0de7bd0 <__aeabi_memclr>
c0de5566:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de5568:	2203      	movs	r2, #3
c0de556a:	6570      	str	r0, [r6, #84]	@ 0x54
c0de556c:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de556e:	6531      	str	r1, [r6, #80]	@ 0x50
c0de5570:	9908      	ldr	r1, [sp, #32]
c0de5572:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de5576:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de557a:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de557c:	2108      	movs	r1, #8
c0de557e:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de5582:	2f00      	cmp	r7, #0
c0de5584:	f04f 0103 	mov.w	r1, #3
c0de5588:	bf18      	it	ne
c0de558a:	2104      	movne	r1, #4
c0de558c:	2d00      	cmp	r5, #0
c0de558e:	bf08      	it	eq
c0de5590:	4611      	moveq	r1, r2
c0de5592:	2c00      	cmp	r4, #0
c0de5594:	bf08      	it	eq
c0de5596:	2102      	moveq	r1, #2
c0de5598:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de559c:	b140      	cbz	r0, c0de55b0 <nbgl_useCaseChoiceWithDetails+0x68>
c0de559e:	7902      	ldrb	r2, [r0, #4]
c0de55a0:	2a03      	cmp	r2, #3
c0de55a2:	d105      	bne.n	c0de55b0 <nbgl_useCaseChoiceWithDetails+0x68>
c0de55a4:	7a00      	ldrb	r0, [r0, #8]
c0de55a6:	eb09 0208 	add.w	r2, r9, r8
c0de55aa:	4408      	add	r0, r1
c0de55ac:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de55b0:	2000      	movs	r0, #0
c0de55b2:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de55b6:	f000 b803 	b.w	c0de55c0 <displayChoicePage>
c0de55ba:	bf00      	nop
c0de55bc:	00000750 	.word	0x00000750

c0de55c0 <displayChoicePage>:
c0de55c0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de55c2:	4b33      	ldr	r3, [pc, #204]	@ (c0de5690 <displayChoicePage+0xd0>)
c0de55c4:	2400      	movs	r4, #0
c0de55c6:	eb09 0103 	add.w	r1, r9, r3
c0de55ca:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de55cc:	b16a      	cbz	r2, c0de55ea <displayChoicePage+0x2a>
c0de55ce:	eb09 0103 	add.w	r1, r9, r3
c0de55d2:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de55d4:	b131      	cbz	r1, c0de55e4 <displayChoicePage+0x24>
c0de55d6:	eb09 0103 	add.w	r1, r9, r3
c0de55da:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de55dc:	b111      	cbz	r1, c0de55e4 <displayChoicePage+0x24>
c0de55de:	2102      	movs	r1, #2
c0de55e0:	2501      	movs	r5, #1
c0de55e2:	e004      	b.n	c0de55ee <displayChoicePage+0x2e>
c0de55e4:	2101      	movs	r1, #1
c0de55e6:	2500      	movs	r5, #0
c0de55e8:	e001      	b.n	c0de55ee <displayChoicePage+0x2e>
c0de55ea:	2500      	movs	r5, #0
c0de55ec:	2100      	movs	r1, #0
c0de55ee:	eb09 0603 	add.w	r6, r9, r3
c0de55f2:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de55f4:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de55f8:	b274      	sxtb	r4, r6
c0de55fa:	42a1      	cmp	r1, r4
c0de55fc:	dd08      	ble.n	c0de5610 <displayChoicePage+0x50>
c0de55fe:	b1ee      	cbz	r6, c0de563c <displayChoicePage+0x7c>
c0de5600:	1e71      	subs	r1, r6, #1
c0de5602:	fab1 f181 	clz	r1, r1
c0de5606:	0949      	lsrs	r1, r1, #5
c0de5608:	4029      	ands	r1, r5
c0de560a:	2901      	cmp	r1, #1
c0de560c:	d01c      	beq.n	c0de5648 <displayChoicePage+0x88>
c0de560e:	e030      	b.n	c0de5672 <displayChoicePage+0xb2>
c0de5610:	d108      	bne.n	c0de5624 <displayChoicePage+0x64>
c0de5612:	4a20      	ldr	r2, [pc, #128]	@ (c0de5694 <displayChoicePage+0xd4>)
c0de5614:	eb09 0103 	add.w	r1, r9, r3
c0de5618:	447a      	add	r2, pc
c0de561a:	638a      	str	r2, [r1, #56]	@ 0x38
c0de561c:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de561e:	491e      	ldr	r1, [pc, #120]	@ (c0de5698 <displayChoicePage+0xd8>)
c0de5620:	4479      	add	r1, pc
c0de5622:	e00f      	b.n	c0de5644 <displayChoicePage+0x84>
c0de5624:	1c4a      	adds	r2, r1, #1
c0de5626:	42a2      	cmp	r2, r4
c0de5628:	d112      	bne.n	c0de5650 <displayChoicePage+0x90>
c0de562a:	4a1c      	ldr	r2, [pc, #112]	@ (c0de569c <displayChoicePage+0xdc>)
c0de562c:	eb09 0103 	add.w	r1, r9, r3
c0de5630:	447a      	add	r2, pc
c0de5632:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5634:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de5636:	491a      	ldr	r1, [pc, #104]	@ (c0de56a0 <displayChoicePage+0xe0>)
c0de5638:	4479      	add	r1, pc
c0de563a:	e003      	b.n	c0de5644 <displayChoicePage+0x84>
c0de563c:	eb09 0103 	add.w	r1, r9, r3
c0de5640:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5642:	b109      	cbz	r1, c0de5648 <displayChoicePage+0x88>
c0de5644:	2300      	movs	r3, #0
c0de5646:	e017      	b.n	c0de5678 <displayChoicePage+0xb8>
c0de5648:	eb09 0103 	add.w	r1, r9, r3
c0de564c:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de564e:	e012      	b.n	c0de5676 <displayChoicePage+0xb6>
c0de5650:	eb09 0203 	add.w	r2, r9, r3
c0de5654:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de5656:	b162      	cbz	r2, c0de5672 <displayChoicePage+0xb2>
c0de5658:	7913      	ldrb	r3, [r2, #4]
c0de565a:	2b03      	cmp	r3, #3
c0de565c:	d109      	bne.n	c0de5672 <displayChoicePage+0xb2>
c0de565e:	1a61      	subs	r1, r4, r1
c0de5660:	f06f 0307 	mvn.w	r3, #7
c0de5664:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de5668:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de566c:	5853      	ldr	r3, [r2, r1]
c0de566e:	5862      	ldr	r2, [r4, r1]
c0de5670:	e001      	b.n	c0de5676 <displayChoicePage+0xb6>
c0de5672:	2200      	movs	r2, #0
c0de5674:	2300      	movs	r3, #0
c0de5676:	2100      	movs	r1, #0
c0de5678:	4d0a      	ldr	r5, [pc, #40]	@ (c0de56a4 <displayChoicePage+0xe4>)
c0de567a:	2400      	movs	r4, #0
c0de567c:	9402      	str	r4, [sp, #8]
c0de567e:	447d      	add	r5, pc
c0de5680:	e9cd 5400 	strd	r5, r4, [sp]
c0de5684:	f7ff fd5a 	bl	c0de513c <drawStep>
c0de5688:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de568c:	f001 bd85 	b.w	c0de719a <nbgl_refresh>
c0de5690:	00000750 	.word	0x00000750
c0de5694:	00000fe9 	.word	0x00000fe9
c0de5698:	0000282e 	.word	0x0000282e
c0de569c:	00000fe5 	.word	0x00000fe5
c0de56a0:	0000279a 	.word	0x0000279a
c0de56a4:	00000fab 	.word	0x00000fab

c0de56a8 <getContentAtIdx>:
c0de56a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de56aa:	b087      	sub	sp, #28
c0de56ac:	460d      	mov	r5, r1
c0de56ae:	4606      	mov	r6, r0
c0de56b0:	a801      	add	r0, sp, #4
c0de56b2:	2118      	movs	r1, #24
c0de56b4:	4614      	mov	r4, r2
c0de56b6:	f002 fa8b 	bl	c0de7bd0 <__aeabi_memclr>
c0de56ba:	2d00      	cmp	r5, #0
c0de56bc:	d428      	bmi.n	c0de5710 <getContentAtIdx+0x68>
c0de56be:	7a30      	ldrb	r0, [r6, #8]
c0de56c0:	4285      	cmp	r5, r0
c0de56c2:	da25      	bge.n	c0de5710 <getContentAtIdx+0x68>
c0de56c4:	7830      	ldrb	r0, [r6, #0]
c0de56c6:	b338      	cbz	r0, c0de5718 <getContentAtIdx+0x70>
c0de56c8:	b314      	cbz	r4, c0de5710 <getContentAtIdx+0x68>
c0de56ca:	4620      	mov	r0, r4
c0de56cc:	2138      	movs	r1, #56	@ 0x38
c0de56ce:	f002 fa7f 	bl	c0de7bd0 <__aeabi_memclr>
c0de56d2:	4821      	ldr	r0, [pc, #132]	@ (c0de5758 <getContentAtIdx+0xb0>)
c0de56d4:	4448      	add	r0, r9
c0de56d6:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de56d8:	b342      	cbz	r2, c0de572c <getContentAtIdx+0x84>
c0de56da:	b2e8      	uxtb	r0, r5
c0de56dc:	ad01      	add	r5, sp, #4
c0de56de:	4629      	mov	r1, r5
c0de56e0:	4790      	blx	r2
c0de56e2:	b1a8      	cbz	r0, c0de5710 <getContentAtIdx+0x68>
c0de56e4:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de56e8:	280a      	cmp	r0, #10
c0de56ea:	7020      	strb	r0, [r4, #0]
c0de56ec:	d023      	beq.n	c0de5736 <getContentAtIdx+0x8e>
c0de56ee:	2803      	cmp	r0, #3
c0de56f0:	d008      	beq.n	c0de5704 <getContentAtIdx+0x5c>
c0de56f2:	2804      	cmp	r0, #4
c0de56f4:	d025      	beq.n	c0de5742 <getContentAtIdx+0x9a>
c0de56f6:	2807      	cmp	r0, #7
c0de56f8:	d029      	beq.n	c0de574e <getContentAtIdx+0xa6>
c0de56fa:	2808      	cmp	r0, #8
c0de56fc:	d002      	beq.n	c0de5704 <getContentAtIdx+0x5c>
c0de56fe:	2809      	cmp	r0, #9
c0de5700:	d019      	beq.n	c0de5736 <getContentAtIdx+0x8e>
c0de5702:	b928      	cbnz	r0, c0de5710 <getContentAtIdx+0x68>
c0de5704:	1d28      	adds	r0, r5, #4
c0de5706:	1d21      	adds	r1, r4, #4
c0de5708:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de570c:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de570e:	e000      	b.n	c0de5712 <getContentAtIdx+0x6a>
c0de5710:	2400      	movs	r4, #0
c0de5712:	4620      	mov	r0, r4
c0de5714:	b007      	add	sp, #28
c0de5716:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5718:	6871      	ldr	r1, [r6, #4]
c0de571a:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de571e:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5722:	b007      	add	sp, #28
c0de5724:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5728:	f001 bf46 	b.w	c0de75b8 <pic>
c0de572c:	6872      	ldr	r2, [r6, #4]
c0de572e:	b2e8      	uxtb	r0, r5
c0de5730:	4621      	mov	r1, r4
c0de5732:	4790      	blx	r2
c0de5734:	e7ed      	b.n	c0de5712 <getContentAtIdx+0x6a>
c0de5736:	1d28      	adds	r0, r5, #4
c0de5738:	1d21      	adds	r1, r4, #4
c0de573a:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de573e:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5740:	e7e7      	b.n	c0de5712 <getContentAtIdx+0x6a>
c0de5742:	1d28      	adds	r0, r5, #4
c0de5744:	1d21      	adds	r1, r4, #4
c0de5746:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de574a:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de574c:	e7e1      	b.n	c0de5712 <getContentAtIdx+0x6a>
c0de574e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5752:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de5756:	e7dc      	b.n	c0de5712 <getContentAtIdx+0x6a>
c0de5758:	00000750 	.word	0x00000750

c0de575c <getContentNbElement>:
c0de575c:	7802      	ldrb	r2, [r0, #0]
c0de575e:	2101      	movs	r1, #1
c0de5760:	b1a2      	cbz	r2, c0de578c <getContentNbElement+0x30>
c0de5762:	2a03      	cmp	r2, #3
c0de5764:	d012      	beq.n	c0de578c <getContentNbElement+0x30>
c0de5766:	2a0a      	cmp	r2, #10
c0de5768:	d007      	beq.n	c0de577a <getContentNbElement+0x1e>
c0de576a:	2a07      	cmp	r2, #7
c0de576c:	d007      	beq.n	c0de577e <getContentNbElement+0x22>
c0de576e:	2a08      	cmp	r2, #8
c0de5770:	d007      	beq.n	c0de5782 <getContentNbElement+0x26>
c0de5772:	2a09      	cmp	r2, #9
c0de5774:	d007      	beq.n	c0de5786 <getContentNbElement+0x2a>
c0de5776:	2a04      	cmp	r2, #4
c0de5778:	d107      	bne.n	c0de578a <getContentNbElement+0x2e>
c0de577a:	7b01      	ldrb	r1, [r0, #12]
c0de577c:	e006      	b.n	c0de578c <getContentNbElement+0x30>
c0de577e:	7a01      	ldrb	r1, [r0, #8]
c0de5780:	e004      	b.n	c0de578c <getContentNbElement+0x30>
c0de5782:	7c01      	ldrb	r1, [r0, #16]
c0de5784:	e002      	b.n	c0de578c <getContentNbElement+0x30>
c0de5786:	7a41      	ldrb	r1, [r0, #9]
c0de5788:	e000      	b.n	c0de578c <getContentNbElement+0x30>
c0de578a:	2100      	movs	r1, #0
c0de578c:	4608      	mov	r0, r1
c0de578e:	4770      	bx	lr

c0de5790 <displayContent>:
c0de5790:	b570      	push	{r4, r5, r6, lr}
c0de5792:	b08a      	sub	sp, #40	@ 0x28
c0de5794:	460d      	mov	r5, r1
c0de5796:	4604      	mov	r4, r0
c0de5798:	a804      	add	r0, sp, #16
c0de579a:	2118      	movs	r1, #24
c0de579c:	f002 fa18 	bl	c0de7bd0 <__aeabi_memclr>
c0de57a0:	4820      	ldr	r0, [pc, #128]	@ (c0de5824 <displayContent+0x94>)
c0de57a2:	f000 ff57 	bl	c0de6654 <OUTLINED_FUNCTION_1>
c0de57a6:	dd14      	ble.n	c0de57d2 <displayContent+0x42>
c0de57a8:	a904      	add	r1, sp, #16
c0de57aa:	4628      	mov	r0, r5
c0de57ac:	f000 f846 	bl	c0de583c <getContentPage>
c0de57b0:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de57b4:	b318      	cbz	r0, c0de57fe <displayContent+0x6e>
c0de57b6:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de57ba:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de57be:	481e      	ldr	r0, [pc, #120]	@ (c0de5838 <displayContent+0xa8>)
c0de57c0:	4478      	add	r0, pc
c0de57c2:	2b00      	cmp	r3, #0
c0de57c4:	9000      	str	r0, [sp, #0]
c0de57c6:	4620      	mov	r0, r4
c0de57c8:	bf18      	it	ne
c0de57ca:	2301      	movne	r3, #1
c0de57cc:	f000 f8d8 	bl	c0de5980 <drawSwitchStep>
c0de57d0:	e023      	b.n	c0de581a <displayContent+0x8a>
c0de57d2:	4448      	add	r0, r9
c0de57d4:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de57d6:	6381      	str	r1, [r0, #56]	@ 0x38
c0de57d8:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de57da:	4a13      	ldr	r2, [pc, #76]	@ (c0de5828 <displayContent+0x98>)
c0de57dc:	2900      	cmp	r1, #0
c0de57de:	447a      	add	r2, pc
c0de57e0:	bf18      	it	ne
c0de57e2:	460a      	movne	r2, r1
c0de57e4:	9205      	str	r2, [sp, #20]
c0de57e6:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de57ea:	4910      	ldr	r1, [pc, #64]	@ (c0de582c <displayContent+0x9c>)
c0de57ec:	4a10      	ldr	r2, [pc, #64]	@ (c0de5830 <displayContent+0xa0>)
c0de57ee:	2803      	cmp	r0, #3
c0de57f0:	447a      	add	r2, pc
c0de57f2:	4479      	add	r1, pc
c0de57f4:	bf08      	it	eq
c0de57f6:	460a      	moveq	r2, r1
c0de57f8:	9207      	str	r2, [sp, #28]
c0de57fa:	2000      	movs	r0, #0
c0de57fc:	e002      	b.n	c0de5804 <displayContent+0x74>
c0de57fe:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5802:	0040      	lsls	r0, r0, #1
c0de5804:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5808:	9907      	ldr	r1, [sp, #28]
c0de580a:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5834 <displayContent+0xa4>)
c0de580c:	b2c0      	uxtb	r0, r0
c0de580e:	2500      	movs	r5, #0
c0de5810:	9002      	str	r0, [sp, #8]
c0de5812:	4620      	mov	r0, r4
c0de5814:	447e      	add	r6, pc
c0de5816:	f000 ff3f 	bl	c0de6698 <OUTLINED_FUNCTION_6>
c0de581a:	f001 fcbe 	bl	c0de719a <nbgl_refresh>
c0de581e:	b00a      	add	sp, #40	@ 0x28
c0de5820:	bd70      	pop	{r4, r5, r6, pc}
c0de5822:	bf00      	nop
c0de5824:	00000750 	.word	0x00000750
c0de5828:	00002933 	.word	0x00002933
c0de582c:	000025e0 	.word	0x000025e0
c0de5830:	0000259c 	.word	0x0000259c
c0de5834:	000001b9 	.word	0x000001b9
c0de5838:	0000020d 	.word	0x0000020d

c0de583c <getContentPage>:
c0de583c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de583e:	b093      	sub	sp, #76	@ 0x4c
c0de5840:	4606      	mov	r6, r0
c0de5842:	2000      	movs	r0, #0
c0de5844:	460c      	mov	r4, r1
c0de5846:	2138      	movs	r1, #56	@ 0x38
c0de5848:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de584c:	ad04      	add	r5, sp, #16
c0de584e:	4628      	mov	r0, r5
c0de5850:	f002 f9be 	bl	c0de7bd0 <__aeabi_memclr>
c0de5854:	4f47      	ldr	r7, [pc, #284]	@ (c0de5974 <getContentPage+0x138>)
c0de5856:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de585a:	462a      	mov	r2, r5
c0de585c:	eb09 0007 	add.w	r0, r9, r7
c0de5860:	f000 ff13 	bl	c0de668a <OUTLINED_FUNCTION_4>
c0de5864:	2800      	cmp	r0, #0
c0de5866:	d07a      	beq.n	c0de595e <getContentPage+0x122>
c0de5868:	4605      	mov	r5, r0
c0de586a:	7800      	ldrb	r0, [r0, #0]
c0de586c:	280a      	cmp	r0, #10
c0de586e:	d011      	beq.n	c0de5894 <getContentPage+0x58>
c0de5870:	2803      	cmp	r0, #3
c0de5872:	d02c      	beq.n	c0de58ce <getContentPage+0x92>
c0de5874:	2804      	cmp	r0, #4
c0de5876:	d035      	beq.n	c0de58e4 <getContentPage+0xa8>
c0de5878:	2807      	cmp	r0, #7
c0de587a:	d045      	beq.n	c0de5908 <getContentPage+0xcc>
c0de587c:	2808      	cmp	r0, #8
c0de587e:	d060      	beq.n	c0de5942 <getContentPage+0x106>
c0de5880:	2809      	cmp	r0, #9
c0de5882:	d007      	beq.n	c0de5894 <getContentPage+0x58>
c0de5884:	2800      	cmp	r0, #0
c0de5886:	d16a      	bne.n	c0de595e <getContentPage+0x122>
c0de5888:	6868      	ldr	r0, [r5, #4]
c0de588a:	f001 fe95 	bl	c0de75b8 <pic>
c0de588e:	6060      	str	r0, [r4, #4]
c0de5890:	68a8      	ldr	r0, [r5, #8]
c0de5892:	e019      	b.n	c0de58c8 <getContentPage+0x8c>
c0de5894:	1d28      	adds	r0, r5, #4
c0de5896:	eb09 0607 	add.w	r6, r9, r7
c0de589a:	f001 fe8d 	bl	c0de75b8 <pic>
c0de589e:	6800      	ldr	r0, [r0, #0]
c0de58a0:	f001 fe8a 	bl	c0de75b8 <pic>
c0de58a4:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de58a8:	4605      	mov	r5, r0
c0de58aa:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de58ac:	2910      	cmp	r1, #16
c0de58ae:	d100      	bne.n	c0de58b2 <getContentPage+0x76>
c0de58b0:	b918      	cbnz	r0, c0de58ba <getContentPage+0x7e>
c0de58b2:	290f      	cmp	r1, #15
c0de58b4:	d155      	bne.n	c0de5962 <getContentPage+0x126>
c0de58b6:	2800      	cmp	r0, #0
c0de58b8:	d053      	beq.n	c0de5962 <getContentPage+0x126>
c0de58ba:	f001 fe7d 	bl	c0de75b8 <pic>
c0de58be:	6060      	str	r0, [r4, #4]
c0de58c0:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de58c4:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de58c8:	f001 fe76 	bl	c0de75b8 <pic>
c0de58cc:	e046      	b.n	c0de595c <getContentPage+0x120>
c0de58ce:	68a8      	ldr	r0, [r5, #8]
c0de58d0:	4e29      	ldr	r6, [pc, #164]	@ (c0de5978 <getContentPage+0x13c>)
c0de58d2:	447e      	add	r6, pc
c0de58d4:	47b0      	blx	r6
c0de58d6:	60e0      	str	r0, [r4, #12]
c0de58d8:	6868      	ldr	r0, [r5, #4]
c0de58da:	47b0      	blx	r6
c0de58dc:	6060      	str	r0, [r4, #4]
c0de58de:	68e8      	ldr	r0, [r5, #12]
c0de58e0:	47b0      	blx	r6
c0de58e2:	e03b      	b.n	c0de595c <getContentPage+0x120>
c0de58e4:	f104 0015 	add.w	r0, r4, #21
c0de58e8:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de58ec:	f104 020c 	add.w	r2, r4, #12
c0de58f0:	f104 0310 	add.w	r3, r4, #16
c0de58f4:	e9cd 3200 	strd	r3, r2, [sp]
c0de58f8:	9002      	str	r0, [sp, #8]
c0de58fa:	1d28      	adds	r0, r5, #4
c0de58fc:	1d22      	adds	r2, r4, #4
c0de58fe:	f104 0308 	add.w	r3, r4, #8
c0de5902:	f000 f8b9 	bl	c0de5a78 <getPairData>
c0de5906:	e02a      	b.n	c0de595e <getContentPage+0x122>
c0de5908:	2001      	movs	r0, #1
c0de590a:	444f      	add	r7, r9
c0de590c:	7020      	strb	r0, [r4, #0]
c0de590e:	6868      	ldr	r0, [r5, #4]
c0de5910:	f001 fe52 	bl	c0de75b8 <pic>
c0de5914:	4919      	ldr	r1, [pc, #100]	@ (c0de597c <getContentPage+0x140>)
c0de5916:	4479      	add	r1, pc
c0de5918:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de591a:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de591e:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5922:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5926:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de592a:	6062      	str	r2, [r4, #4]
c0de592c:	6841      	ldr	r1, [r0, #4]
c0de592e:	60a1      	str	r1, [r4, #8]
c0de5930:	7a00      	ldrb	r0, [r0, #8]
c0de5932:	1e41      	subs	r1, r0, #1
c0de5934:	bf18      	it	ne
c0de5936:	2101      	movne	r1, #1
c0de5938:	2e00      	cmp	r6, #0
c0de593a:	bf08      	it	eq
c0de593c:	4601      	moveq	r1, r0
c0de593e:	7521      	strb	r1, [r4, #20]
c0de5940:	e00d      	b.n	c0de595e <getContentPage+0x122>
c0de5942:	6868      	ldr	r0, [r5, #4]
c0de5944:	f001 fe38 	bl	c0de75b8 <pic>
c0de5948:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de594c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5950:	6060      	str	r0, [r4, #4]
c0de5952:	68a8      	ldr	r0, [r5, #8]
c0de5954:	f001 fe30 	bl	c0de75b8 <pic>
c0de5958:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de595c:	60a0      	str	r0, [r4, #8]
c0de595e:	b013      	add	sp, #76	@ 0x4c
c0de5960:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5962:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5966:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de596a:	f001 fe25 	bl	c0de75b8 <pic>
c0de596e:	6060      	str	r0, [r4, #4]
c0de5970:	e7f5      	b.n	c0de595e <getContentPage+0x122>
c0de5972:	bf00      	nop
c0de5974:	00000750 	.word	0x00000750
c0de5978:	00001ce3 	.word	0x00001ce3
c0de597c:	000001a7 	.word	0x000001a7

c0de5980 <drawSwitchStep>:
c0de5980:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5982:	b085      	sub	sp, #20
c0de5984:	4c11      	ldr	r4, [pc, #68]	@ (c0de59cc <drawSwitchStep+0x4c>)
c0de5986:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de598a:	2600      	movs	r6, #0
c0de598c:	eb09 0504 	add.w	r5, r9, r4
c0de5990:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5994:	2500      	movs	r5, #0
c0de5996:	2f02      	cmp	r7, #2
c0de5998:	d30a      	bcc.n	c0de59b0 <drawSwitchStep+0x30>
c0de599a:	444c      	add	r4, r9
c0de599c:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de59a0:	b12c      	cbz	r4, c0de59ae <drawSwitchStep+0x2e>
c0de59a2:	3f01      	subs	r7, #1
c0de59a4:	2603      	movs	r6, #3
c0de59a6:	42a7      	cmp	r7, r4
c0de59a8:	bf08      	it	eq
c0de59aa:	2602      	moveq	r6, #2
c0de59ac:	e000      	b.n	c0de59b0 <drawSwitchStep+0x30>
c0de59ae:	2601      	movs	r6, #1
c0de59b0:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de59b4:	f88d 3010 	strb.w	r3, [sp, #16]
c0de59b8:	9500      	str	r5, [sp, #0]
c0de59ba:	4330      	orrs	r0, r6
c0de59bc:	ab02      	add	r3, sp, #8
c0de59be:	4661      	mov	r1, ip
c0de59c0:	2200      	movs	r2, #0
c0de59c2:	f7ff f81f 	bl	c0de4a04 <nbgl_stepDrawSwitch>
c0de59c6:	b005      	add	sp, #20
c0de59c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de59ca:	bf00      	nop
c0de59cc:	00000750 	.word	0x00000750

c0de59d0 <contentCallback>:
c0de59d0:	b5e0      	push	{r5, r6, r7, lr}
c0de59d2:	4608      	mov	r0, r1
c0de59d4:	f10d 0107 	add.w	r1, sp, #7
c0de59d8:	f000 f928 	bl	c0de5c2c <buttonGenericCallback>
c0de59dc:	b130      	cbz	r0, c0de59ec <contentCallback+0x1c>
c0de59de:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de59e2:	2100      	movs	r1, #0
c0de59e4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de59e8:	f7ff bed2 	b.w	c0de5790 <displayContent>
c0de59ec:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de59f0 <getContentElemAtIdx>:
c0de59f0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de59f4:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5a70 <getContentElemAtIdx+0x80>)
c0de59f6:	4606      	mov	r6, r0
c0de59f8:	2700      	movs	r7, #0
c0de59fa:	eb09 0004 	add.w	r0, r9, r4
c0de59fe:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de5a02:	2b10      	cmp	r3, #16
c0de5a04:	d830      	bhi.n	c0de5a68 <getContentElemAtIdx+0x78>
c0de5a06:	4693      	mov	fp, r2
c0de5a08:	2201      	movs	r2, #1
c0de5a0a:	9101      	str	r1, [sp, #4]
c0de5a0c:	fa02 f303 	lsl.w	r3, r2, r3
c0de5a10:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5a14:	d004      	beq.n	c0de5a20 <getContentElemAtIdx+0x30>
c0de5a16:	eb09 0004 	add.w	r0, r9, r4
c0de5a1a:	46a2      	mov	sl, r4
c0de5a1c:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5a1e:	e005      	b.n	c0de5a2c <getContentElemAtIdx+0x3c>
c0de5a20:	4a14      	ldr	r2, [pc, #80]	@ (c0de5a74 <getContentElemAtIdx+0x84>)
c0de5a22:	4213      	tst	r3, r2
c0de5a24:	d020      	beq.n	c0de5a68 <getContentElemAtIdx+0x78>
c0de5a26:	46a2      	mov	sl, r4
c0de5a28:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5a2c:	2700      	movs	r7, #0
c0de5a2e:	2000      	movs	r0, #0
c0de5a30:	f04f 0800 	mov.w	r8, #0
c0de5a34:	4605      	mov	r5, r0
c0de5a36:	7a20      	ldrb	r0, [r4, #8]
c0de5a38:	4580      	cmp	r8, r0
c0de5a3a:	d215      	bcs.n	c0de5a68 <getContentElemAtIdx+0x78>
c0de5a3c:	fa4f f188 	sxtb.w	r1, r8
c0de5a40:	4620      	mov	r0, r4
c0de5a42:	465a      	mov	r2, fp
c0de5a44:	f7ff fe30 	bl	c0de56a8 <getContentAtIdx>
c0de5a48:	4607      	mov	r7, r0
c0de5a4a:	f7ff fe87 	bl	c0de575c <getContentNbElement>
c0de5a4e:	b2e9      	uxtb	r1, r5
c0de5a50:	f108 0801 	add.w	r8, r8, #1
c0de5a54:	4408      	add	r0, r1
c0de5a56:	42b0      	cmp	r0, r6
c0de5a58:	d9ec      	bls.n	c0de5a34 <getContentElemAtIdx+0x44>
c0de5a5a:	eb09 000a 	add.w	r0, r9, sl
c0de5a5e:	9901      	ldr	r1, [sp, #4]
c0de5a60:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5a64:	1b40      	subs	r0, r0, r5
c0de5a66:	7008      	strb	r0, [r1, #0]
c0de5a68:	4638      	mov	r0, r7
c0de5a6a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5a6e:	bf00      	nop
c0de5a70:	00000750 	.word	0x00000750
c0de5a74:	00010008 	.word	0x00010008

c0de5a78 <getPairData>:
c0de5a78:	b5b0      	push	{r4, r5, r7, lr}
c0de5a7a:	4615      	mov	r5, r2
c0de5a7c:	6802      	ldr	r2, [r0, #0]
c0de5a7e:	461c      	mov	r4, r3
c0de5a80:	b112      	cbz	r2, c0de5a88 <getPairData+0x10>
c0de5a82:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5a86:	e002      	b.n	c0de5a8e <getPairData+0x16>
c0de5a88:	6842      	ldr	r2, [r0, #4]
c0de5a8a:	4608      	mov	r0, r1
c0de5a8c:	4790      	blx	r2
c0de5a8e:	f001 fd93 	bl	c0de75b8 <pic>
c0de5a92:	6802      	ldr	r2, [r0, #0]
c0de5a94:	9904      	ldr	r1, [sp, #16]
c0de5a96:	602a      	str	r2, [r5, #0]
c0de5a98:	6842      	ldr	r2, [r0, #4]
c0de5a9a:	6022      	str	r2, [r4, #0]
c0de5a9c:	7b02      	ldrb	r2, [r0, #12]
c0de5a9e:	0753      	lsls	r3, r2, #29
c0de5aa0:	d403      	bmi.n	c0de5aaa <getPairData+0x32>
c0de5aa2:	0792      	lsls	r2, r2, #30
c0de5aa4:	d404      	bmi.n	c0de5ab0 <getPairData+0x38>
c0de5aa6:	2000      	movs	r0, #0
c0de5aa8:	e000      	b.n	c0de5aac <getPairData+0x34>
c0de5aaa:	6880      	ldr	r0, [r0, #8]
c0de5aac:	6008      	str	r0, [r1, #0]
c0de5aae:	bdb0      	pop	{r4, r5, r7, pc}
c0de5ab0:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5ab4:	2301      	movs	r3, #1
c0de5ab6:	700b      	strb	r3, [r1, #0]
c0de5ab8:	6880      	ldr	r0, [r0, #8]
c0de5aba:	6010      	str	r0, [r2, #0]
c0de5abc:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5ac0 <onSwitchAction>:
c0de5ac0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5ac2:	b08f      	sub	sp, #60	@ 0x3c
c0de5ac4:	ac01      	add	r4, sp, #4
c0de5ac6:	2138      	movs	r1, #56	@ 0x38
c0de5ac8:	4620      	mov	r0, r4
c0de5aca:	f002 f881 	bl	c0de7bd0 <__aeabi_memclr>
c0de5ace:	4e26      	ldr	r6, [pc, #152]	@ (c0de5b68 <onSwitchAction+0xa8>)
c0de5ad0:	f10d 0103 	add.w	r1, sp, #3
c0de5ad4:	4622      	mov	r2, r4
c0de5ad6:	eb09 0006 	add.w	r0, r9, r6
c0de5ada:	f000 fdd6 	bl	c0de668a <OUTLINED_FUNCTION_4>
c0de5ade:	2800      	cmp	r0, #0
c0de5ae0:	d040      	beq.n	c0de5b64 <onSwitchAction+0xa4>
c0de5ae2:	4604      	mov	r4, r0
c0de5ae4:	7800      	ldrb	r0, [r0, #0]
c0de5ae6:	2807      	cmp	r0, #7
c0de5ae8:	d13c      	bne.n	c0de5b64 <onSwitchAction+0xa4>
c0de5aea:	6860      	ldr	r0, [r4, #4]
c0de5aec:	eb09 0706 	add.w	r7, r9, r6
c0de5af0:	f001 fd62 	bl	c0de75b8 <pic>
c0de5af4:	4605      	mov	r5, r0
c0de5af6:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5afa:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5afe:	2810      	cmp	r0, #16
c0de5b00:	d811      	bhi.n	c0de5b26 <onSwitchAction+0x66>
c0de5b02:	2101      	movs	r1, #1
c0de5b04:	fa01 f000 	lsl.w	r0, r1, r0
c0de5b08:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5b0c:	d004      	beq.n	c0de5b18 <onSwitchAction+0x58>
c0de5b0e:	2000      	movs	r0, #0
c0de5b10:	2101      	movs	r1, #1
c0de5b12:	f000 f82d 	bl	c0de5b70 <displaySettingsPage>
c0de5b16:	e006      	b.n	c0de5b26 <onSwitchAction+0x66>
c0de5b18:	4914      	ldr	r1, [pc, #80]	@ (c0de5b6c <onSwitchAction+0xac>)
c0de5b1a:	4208      	tst	r0, r1
c0de5b1c:	d003      	beq.n	c0de5b26 <onSwitchAction+0x66>
c0de5b1e:	2000      	movs	r0, #0
c0de5b20:	2101      	movs	r1, #1
c0de5b22:	f7ff fe35 	bl	c0de5790 <displayContent>
c0de5b26:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5b28:	b188      	cbz	r0, c0de5b4e <onSwitchAction+0x8e>
c0de5b2a:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5b2e:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5b32:	f001 fd41 	bl	c0de75b8 <pic>
c0de5b36:	7a21      	ldrb	r1, [r4, #8]
c0de5b38:	eb09 0206 	add.w	r2, r9, r6
c0de5b3c:	4603      	mov	r3, r0
c0de5b3e:	7a60      	ldrb	r0, [r4, #9]
c0de5b40:	3901      	subs	r1, #1
c0de5b42:	bf18      	it	ne
c0de5b44:	2101      	movne	r1, #1
c0de5b46:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5b4a:	4798      	blx	r3
c0de5b4c:	e00a      	b.n	c0de5b64 <onSwitchAction+0xa4>
c0de5b4e:	eb09 0006 	add.w	r0, r9, r6
c0de5b52:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5b54:	b132      	cbz	r2, c0de5b64 <onSwitchAction+0xa4>
c0de5b56:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5b5a:	2100      	movs	r1, #0
c0de5b5c:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5b60:	7a40      	ldrb	r0, [r0, #9]
c0de5b62:	4790      	blx	r2
c0de5b64:	b00f      	add	sp, #60	@ 0x3c
c0de5b66:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5b68:	00000750 	.word	0x00000750
c0de5b6c:	00010008 	.word	0x00010008

c0de5b70 <displaySettingsPage>:
c0de5b70:	b5b0      	push	{r4, r5, r7, lr}
c0de5b72:	b08a      	sub	sp, #40	@ 0x28
c0de5b74:	460d      	mov	r5, r1
c0de5b76:	4604      	mov	r4, r0
c0de5b78:	a804      	add	r0, sp, #16
c0de5b7a:	2118      	movs	r1, #24
c0de5b7c:	f002 f828 	bl	c0de7bd0 <__aeabi_memclr>
c0de5b80:	481c      	ldr	r0, [pc, #112]	@ (c0de5bf4 <displaySettingsPage+0x84>)
c0de5b82:	f000 fd67 	bl	c0de6654 <OUTLINED_FUNCTION_1>
c0de5b86:	dd14      	ble.n	c0de5bb2 <displaySettingsPage+0x42>
c0de5b88:	a904      	add	r1, sp, #16
c0de5b8a:	4628      	mov	r0, r5
c0de5b8c:	f7ff fe56 	bl	c0de583c <getContentPage>
c0de5b90:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5b94:	b1e8      	cbz	r0, c0de5bd2 <displaySettingsPage+0x62>
c0de5b96:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5b9a:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5b9e:	481a      	ldr	r0, [pc, #104]	@ (c0de5c08 <displaySettingsPage+0x98>)
c0de5ba0:	4478      	add	r0, pc
c0de5ba2:	2b00      	cmp	r3, #0
c0de5ba4:	9000      	str	r0, [sp, #0]
c0de5ba6:	4620      	mov	r0, r4
c0de5ba8:	bf18      	it	ne
c0de5baa:	2301      	movne	r3, #1
c0de5bac:	f7ff fee8 	bl	c0de5980 <drawSwitchStep>
c0de5bb0:	e01b      	b.n	c0de5bea <displaySettingsPage+0x7a>
c0de5bb2:	4448      	add	r0, r9
c0de5bb4:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5bb8:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5bba:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5bf8 <displaySettingsPage+0x88>)
c0de5bbc:	447b      	add	r3, pc
c0de5bbe:	290f      	cmp	r1, #15
c0de5bc0:	bf08      	it	eq
c0de5bc2:	4613      	moveq	r3, r2
c0de5bc4:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5bc6:	480d      	ldr	r0, [pc, #52]	@ (c0de5bfc <displaySettingsPage+0x8c>)
c0de5bc8:	4478      	add	r0, pc
c0de5bca:	9005      	str	r0, [sp, #20]
c0de5bcc:	480c      	ldr	r0, [pc, #48]	@ (c0de5c00 <displaySettingsPage+0x90>)
c0de5bce:	4478      	add	r0, pc
c0de5bd0:	9007      	str	r0, [sp, #28]
c0de5bd2:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5bd6:	9907      	ldr	r1, [sp, #28]
c0de5bd8:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5c04 <displaySettingsPage+0x94>)
c0de5bda:	2000      	movs	r0, #0
c0de5bdc:	9002      	str	r0, [sp, #8]
c0de5bde:	447d      	add	r5, pc
c0de5be0:	e9cd 5000 	strd	r5, r0, [sp]
c0de5be4:	4620      	mov	r0, r4
c0de5be6:	f7ff faa9 	bl	c0de513c <drawStep>
c0de5bea:	f001 fad6 	bl	c0de719a <nbgl_refresh>
c0de5bee:	b00a      	add	sp, #40	@ 0x28
c0de5bf0:	bdb0      	pop	{r4, r5, r7, pc}
c0de5bf2:	bf00      	nop
c0de5bf4:	00000750 	.word	0x00000750
c0de5bf8:	fffff10d 	.word	0xfffff10d
c0de5bfc:	00002549 	.word	0x00002549
c0de5c00:	000021be 	.word	0x000021be
c0de5c04:	0000002b 	.word	0x0000002b
c0de5c08:	00000069 	.word	0x00000069

c0de5c0c <settingsCallback>:
c0de5c0c:	b5e0      	push	{r5, r6, r7, lr}
c0de5c0e:	4608      	mov	r0, r1
c0de5c10:	f10d 0107 	add.w	r1, sp, #7
c0de5c14:	f000 f80a 	bl	c0de5c2c <buttonGenericCallback>
c0de5c18:	b130      	cbz	r0, c0de5c28 <settingsCallback+0x1c>
c0de5c1a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5c1e:	2100      	movs	r1, #0
c0de5c20:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5c24:	f7ff bfa4 	b.w	c0de5b70 <displaySettingsPage>
c0de5c28:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5c2c <buttonGenericCallback>:
c0de5c2c:	b5b0      	push	{r4, r5, r7, lr}
c0de5c2e:	b090      	sub	sp, #64	@ 0x40
c0de5c30:	460c      	mov	r4, r1
c0de5c32:	4605      	mov	r5, r0
c0de5c34:	a801      	add	r0, sp, #4
c0de5c36:	2138      	movs	r1, #56	@ 0x38
c0de5c38:	f001 ffca 	bl	c0de7bd0 <__aeabi_memclr>
c0de5c3c:	2d04      	cmp	r5, #4
c0de5c3e:	d00d      	beq.n	c0de5c5c <buttonGenericCallback+0x30>
c0de5c40:	2d01      	cmp	r5, #1
c0de5c42:	d012      	beq.n	c0de5c6a <buttonGenericCallback+0x3e>
c0de5c44:	2d00      	cmp	r5, #0
c0de5c46:	d17c      	bne.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5c48:	483f      	ldr	r0, [pc, #252]	@ (c0de5d48 <buttonGenericCallback+0x11c>)
c0de5c4a:	eb09 0100 	add.w	r1, r9, r0
c0de5c4e:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5c52:	2901      	cmp	r1, #1
c0de5c54:	db1d      	blt.n	c0de5c92 <buttonGenericCallback+0x66>
c0de5c56:	3901      	subs	r1, #1
c0de5c58:	2008      	movs	r0, #8
c0de5c5a:	e013      	b.n	c0de5c84 <buttonGenericCallback+0x58>
c0de5c5c:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5d48 <buttonGenericCallback+0x11c>)
c0de5c5e:	eb09 0004 	add.w	r0, r9, r4
c0de5c62:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5c64:	b338      	cbz	r0, c0de5cb6 <buttonGenericCallback+0x8a>
c0de5c66:	4780      	blx	r0
c0de5c68:	e06b      	b.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5c6a:	4837      	ldr	r0, [pc, #220]	@ (c0de5d48 <buttonGenericCallback+0x11c>)
c0de5c6c:	eb09 0100 	add.w	r1, r9, r0
c0de5c70:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de5c74:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de5c78:	3901      	subs	r1, #1
c0de5c7a:	4281      	cmp	r1, r0
c0de5c7c:	dd61      	ble.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5c7e:	b2c0      	uxtb	r0, r0
c0de5c80:	1c41      	adds	r1, r0, #1
c0de5c82:	2000      	movs	r0, #0
c0de5c84:	4a30      	ldr	r2, [pc, #192]	@ (c0de5d48 <buttonGenericCallback+0x11c>)
c0de5c86:	444a      	add	r2, r9
c0de5c88:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5c8c:	7020      	strb	r0, [r4, #0]
c0de5c8e:	2001      	movs	r0, #1
c0de5c90:	e058      	b.n	c0de5d44 <buttonGenericCallback+0x118>
c0de5c92:	eb09 0100 	add.w	r1, r9, r0
c0de5c96:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de5c9a:	2906      	cmp	r1, #6
c0de5c9c:	d151      	bne.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5c9e:	eb09 0100 	add.w	r1, r9, r0
c0de5ca2:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de5ca4:	2900      	cmp	r1, #0
c0de5ca6:	d04c      	beq.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5ca8:	4448      	add	r0, r9
c0de5caa:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5cae:	2801      	cmp	r0, #1
c0de5cb0:	d047      	beq.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5cb2:	2008      	movs	r0, #8
c0de5cb4:	e7ea      	b.n	c0de5c8c <buttonGenericCallback+0x60>
c0de5cb6:	eb09 0004 	add.w	r0, r9, r4
c0de5cba:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5cbe:	2000      	movs	r0, #0
c0de5cc0:	2910      	cmp	r1, #16
c0de5cc2:	d83f      	bhi.n	c0de5d44 <buttonGenericCallback+0x118>
c0de5cc4:	2201      	movs	r2, #1
c0de5cc6:	fa02 f101 	lsl.w	r1, r2, r1
c0de5cca:	4a20      	ldr	r2, [pc, #128]	@ (c0de5d4c <buttonGenericCallback+0x120>)
c0de5ccc:	4211      	tst	r1, r2
c0de5cce:	d039      	beq.n	c0de5d44 <buttonGenericCallback+0x118>
c0de5cd0:	eb09 0004 	add.w	r0, r9, r4
c0de5cd4:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5cd8:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5cdc:	aa01      	add	r2, sp, #4
c0de5cde:	f7ff fe87 	bl	c0de59f0 <getContentElemAtIdx>
c0de5ce2:	b370      	cbz	r0, c0de5d42 <buttonGenericCallback+0x116>
c0de5ce4:	7801      	ldrb	r1, [r0, #0]
c0de5ce6:	4602      	mov	r2, r0
c0de5ce8:	2000      	movs	r0, #0
c0de5cea:	b359      	cbz	r1, c0de5d44 <buttonGenericCallback+0x118>
c0de5cec:	290a      	cmp	r1, #10
c0de5cee:	d009      	beq.n	c0de5d04 <buttonGenericCallback+0xd8>
c0de5cf0:	2907      	cmp	r1, #7
c0de5cf2:	d00f      	beq.n	c0de5d14 <buttonGenericCallback+0xe8>
c0de5cf4:	2909      	cmp	r1, #9
c0de5cf6:	d011      	beq.n	c0de5d1c <buttonGenericCallback+0xf0>
c0de5cf8:	2903      	cmp	r1, #3
c0de5cfa:	f04f 0100 	mov.w	r1, #0
c0de5cfe:	d112      	bne.n	c0de5d26 <buttonGenericCallback+0xfa>
c0de5d00:	7c10      	ldrb	r0, [r2, #16]
c0de5d02:	e005      	b.n	c0de5d10 <buttonGenericCallback+0xe4>
c0de5d04:	eb09 0004 	add.w	r0, r9, r4
c0de5d08:	6891      	ldr	r1, [r2, #8]
c0de5d0a:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de5d0e:	5c08      	ldrb	r0, [r1, r0]
c0de5d10:	2100      	movs	r1, #0
c0de5d12:	e008      	b.n	c0de5d26 <buttonGenericCallback+0xfa>
c0de5d14:	6850      	ldr	r0, [r2, #4]
c0de5d16:	2100      	movs	r1, #0
c0de5d18:	7a40      	ldrb	r0, [r0, #9]
c0de5d1a:	e004      	b.n	c0de5d26 <buttonGenericCallback+0xfa>
c0de5d1c:	eb09 0004 	add.w	r0, r9, r4
c0de5d20:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de5d24:	7ad0      	ldrb	r0, [r2, #11]
c0de5d26:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de5d28:	b133      	cbz	r3, c0de5d38 <buttonGenericCallback+0x10c>
c0de5d2a:	eb09 0104 	add.w	r1, r9, r4
c0de5d2e:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de5d32:	2100      	movs	r1, #0
c0de5d34:	4798      	blx	r3
c0de5d36:	e004      	b.n	c0de5d42 <buttonGenericCallback+0x116>
c0de5d38:	eb09 0204 	add.w	r2, r9, r4
c0de5d3c:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5d3e:	b102      	cbz	r2, c0de5d42 <buttonGenericCallback+0x116>
c0de5d40:	4790      	blx	r2
c0de5d42:	2000      	movs	r0, #0
c0de5d44:	b010      	add	sp, #64	@ 0x40
c0de5d46:	bdb0      	pop	{r4, r5, r7, pc}
c0de5d48:	00000750 	.word	0x00000750
c0de5d4c:	0001c008 	.word	0x0001c008

c0de5d50 <displayHomePage>:
c0de5d50:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5d54:	4680      	mov	r8, r0
c0de5d56:	4832      	ldr	r0, [pc, #200]	@ (c0de5e20 <displayHomePage+0xd0>)
c0de5d58:	2200      	movs	r2, #0
c0de5d5a:	eb09 0100 	add.w	r1, r9, r0
c0de5d5e:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de5d60:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de5d62:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5d64:	2202      	movs	r2, #2
c0de5d66:	2d00      	cmp	r5, #0
c0de5d68:	463e      	mov	r6, r7
c0de5d6a:	bf08      	it	eq
c0de5d6c:	2201      	moveq	r2, #1
c0de5d6e:	2f00      	cmp	r7, #0
c0de5d70:	bf18      	it	ne
c0de5d72:	2601      	movne	r6, #1
c0de5d74:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de5d78:	b183      	cbz	r3, c0de5d9c <displayHomePage+0x4c>
c0de5d7a:	2401      	movs	r4, #1
c0de5d7c:	2d00      	cmp	r5, #0
c0de5d7e:	bf08      	it	eq
c0de5d80:	24ff      	moveq	r4, #255	@ 0xff
c0de5d82:	429c      	cmp	r4, r3
c0de5d84:	d111      	bne.n	c0de5daa <displayHomePage+0x5a>
c0de5d86:	eb09 0400 	add.w	r4, r9, r0
c0de5d8a:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5d8e:	f001 fc13 	bl	c0de75b8 <pic>
c0de5d92:	4602      	mov	r2, r0
c0de5d94:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de5d96:	6880      	ldr	r0, [r0, #8]
c0de5d98:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de5d9a:	e004      	b.n	c0de5da6 <displayHomePage+0x56>
c0de5d9c:	eb09 0100 	add.w	r1, r9, r0
c0de5da0:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de5da4:	b312      	cbz	r2, c0de5dec <displayHomePage+0x9c>
c0de5da6:	2300      	movs	r3, #0
c0de5da8:	e02c      	b.n	c0de5e04 <displayHomePage+0xb4>
c0de5daa:	2f00      	cmp	r7, #0
c0de5dac:	4614      	mov	r4, r2
c0de5dae:	bf08      	it	eq
c0de5db0:	24ff      	moveq	r4, #255	@ 0xff
c0de5db2:	429c      	cmp	r4, r3
c0de5db4:	d109      	bne.n	c0de5dca <displayHomePage+0x7a>
c0de5db6:	491c      	ldr	r1, [pc, #112]	@ (c0de5e28 <displayHomePage+0xd8>)
c0de5db8:	4448      	add	r0, r9
c0de5dba:	2300      	movs	r3, #0
c0de5dbc:	4479      	add	r1, pc
c0de5dbe:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5dc0:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5e2c <displayHomePage+0xdc>)
c0de5dc2:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5e30 <displayHomePage+0xe0>)
c0de5dc4:	447d      	add	r5, pc
c0de5dc6:	447a      	add	r2, pc
c0de5dc8:	e01c      	b.n	c0de5e04 <displayHomePage+0xb4>
c0de5dca:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5dcc:	4432      	add	r2, r6
c0de5dce:	4448      	add	r0, r9
c0de5dd0:	2900      	cmp	r1, #0
c0de5dd2:	bf08      	it	eq
c0de5dd4:	22ff      	moveq	r2, #255	@ 0xff
c0de5dd6:	429a      	cmp	r2, r3
c0de5dd8:	d10d      	bne.n	c0de5df6 <displayHomePage+0xa6>
c0de5dda:	4916      	ldr	r1, [pc, #88]	@ (c0de5e34 <displayHomePage+0xe4>)
c0de5ddc:	2300      	movs	r3, #0
c0de5dde:	4479      	add	r1, pc
c0de5de0:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5de2:	4d15      	ldr	r5, [pc, #84]	@ (c0de5e38 <displayHomePage+0xe8>)
c0de5de4:	4a15      	ldr	r2, [pc, #84]	@ (c0de5e3c <displayHomePage+0xec>)
c0de5de6:	447d      	add	r5, pc
c0de5de8:	447a      	add	r2, pc
c0de5dea:	e00b      	b.n	c0de5e04 <displayHomePage+0xb4>
c0de5dec:	4448      	add	r0, r9
c0de5dee:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de5df0:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5e24 <displayHomePage+0xd4>)
c0de5df2:	447b      	add	r3, pc
c0de5df4:	e006      	b.n	c0de5e04 <displayHomePage+0xb4>
c0de5df6:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de5df8:	2300      	movs	r3, #0
c0de5dfa:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5dfc:	4d10      	ldr	r5, [pc, #64]	@ (c0de5e40 <displayHomePage+0xf0>)
c0de5dfe:	4a11      	ldr	r2, [pc, #68]	@ (c0de5e44 <displayHomePage+0xf4>)
c0de5e00:	447d      	add	r5, pc
c0de5e02:	447a      	add	r2, pc
c0de5e04:	4910      	ldr	r1, [pc, #64]	@ (c0de5e48 <displayHomePage+0xf8>)
c0de5e06:	2000      	movs	r0, #0
c0de5e08:	9002      	str	r0, [sp, #8]
c0de5e0a:	4479      	add	r1, pc
c0de5e0c:	e9cd 1000 	strd	r1, r0, [sp]
c0de5e10:	4640      	mov	r0, r8
c0de5e12:	4629      	mov	r1, r5
c0de5e14:	f7ff f992 	bl	c0de513c <drawStep>
c0de5e18:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5e1c:	f001 b9bd 	b.w	c0de719a <nbgl_refresh>
c0de5e20:	00000750 	.word	0x00000750
c0de5e24:	000023e4 	.word	0x000023e4
c0de5e28:	0000008d 	.word	0x0000008d
c0de5e2c:	00001feb 	.word	0x00001feb
c0de5e30:	000022bf 	.word	0x000022bf
c0de5e34:	00000073 	.word	0x00000073
c0de5e38:	00001f34 	.word	0x00001f34
c0de5e3c:	00002370 	.word	0x00002370
c0de5e40:	00001f3d 	.word	0x00001f3d
c0de5e44:	000023e1 	.word	0x000023e1
c0de5e48:	0000006b 	.word	0x0000006b

c0de5e4c <startUseCaseSettings>:
c0de5e4c:	2000      	movs	r0, #0
c0de5e4e:	f7fe bf01 	b.w	c0de4c54 <startUseCaseSettingsAtPage>
	...

c0de5e54 <startUseCaseInfo>:
c0de5e54:	4807      	ldr	r0, [pc, #28]	@ (c0de5e74 <startUseCaseInfo+0x20>)
c0de5e56:	210d      	movs	r1, #13
c0de5e58:	4448      	add	r0, r9
c0de5e5a:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de5e5e:	2100      	movs	r1, #0
c0de5e60:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de5e64:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de5e66:	7b09      	ldrb	r1, [r1, #12]
c0de5e68:	3101      	adds	r1, #1
c0de5e6a:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de5e6e:	2000      	movs	r0, #0
c0de5e70:	f000 b810 	b.w	c0de5e94 <displayInfoPage>
c0de5e74:	00000750 	.word	0x00000750

c0de5e78 <homeCallback>:
c0de5e78:	b5e0      	push	{r5, r6, r7, lr}
c0de5e7a:	4608      	mov	r0, r1
c0de5e7c:	f10d 0107 	add.w	r1, sp, #7
c0de5e80:	f7ff fed4 	bl	c0de5c2c <buttonGenericCallback>
c0de5e84:	b128      	cbz	r0, c0de5e92 <homeCallback+0x1a>
c0de5e86:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5e8a:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5e8e:	f7ff bf5f 	b.w	c0de5d50 <displayHomePage>
c0de5e92:	bd8c      	pop	{r2, r3, r7, pc}

c0de5e94 <displayInfoPage>:
c0de5e94:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5e96:	4604      	mov	r4, r0
c0de5e98:	4816      	ldr	r0, [pc, #88]	@ (c0de5ef4 <displayInfoPage+0x60>)
c0de5e9a:	f000 fbdb 	bl	c0de6654 <OUTLINED_FUNCTION_1>
c0de5e9e:	dd11      	ble.n	c0de5ec4 <displayInfoPage+0x30>
c0de5ea0:	eb09 0700 	add.w	r7, r9, r0
c0de5ea4:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de5ea6:	6800      	ldr	r0, [r0, #0]
c0de5ea8:	4e13      	ldr	r6, [pc, #76]	@ (c0de5ef8 <displayInfoPage+0x64>)
c0de5eaa:	447e      	add	r6, pc
c0de5eac:	47b0      	blx	r6
c0de5eae:	f000 fc0a 	bl	c0de66c6 <OUTLINED_FUNCTION_10>
c0de5eb2:	4605      	mov	r5, r0
c0de5eb4:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de5eb6:	6840      	ldr	r0, [r0, #4]
c0de5eb8:	47b0      	blx	r6
c0de5eba:	f000 fc04 	bl	c0de66c6 <OUTLINED_FUNCTION_10>
c0de5ebe:	4603      	mov	r3, r0
c0de5ec0:	2100      	movs	r1, #0
c0de5ec2:	e008      	b.n	c0de5ed6 <displayInfoPage+0x42>
c0de5ec4:	490d      	ldr	r1, [pc, #52]	@ (c0de5efc <displayInfoPage+0x68>)
c0de5ec6:	4448      	add	r0, r9
c0de5ec8:	2300      	movs	r3, #0
c0de5eca:	4479      	add	r1, pc
c0de5ecc:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5ece:	490c      	ldr	r1, [pc, #48]	@ (c0de5f00 <displayInfoPage+0x6c>)
c0de5ed0:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5f04 <displayInfoPage+0x70>)
c0de5ed2:	4479      	add	r1, pc
c0de5ed4:	447d      	add	r5, pc
c0de5ed6:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5f08 <displayInfoPage+0x74>)
c0de5ed8:	2002      	movs	r0, #2
c0de5eda:	2200      	movs	r2, #0
c0de5edc:	9002      	str	r0, [sp, #8]
c0de5ede:	4620      	mov	r0, r4
c0de5ee0:	447e      	add	r6, pc
c0de5ee2:	e9cd 6200 	strd	r6, r2, [sp]
c0de5ee6:	462a      	mov	r2, r5
c0de5ee8:	f7ff f928 	bl	c0de513c <drawStep>
c0de5eec:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5ef0:	f001 b953 	b.w	c0de719a <nbgl_refresh>
c0de5ef4:	00000750 	.word	0x00000750
c0de5ef8:	0000170b 	.word	0x0000170b
c0de5efc:	ffffedff 	.word	0xffffedff
c0de5f00:	00001eba 	.word	0x00001eba
c0de5f04:	0000223d 	.word	0x0000223d
c0de5f08:	00000029 	.word	0x00000029

c0de5f0c <infoCallback>:
c0de5f0c:	b5e0      	push	{r5, r6, r7, lr}
c0de5f0e:	4608      	mov	r0, r1
c0de5f10:	f10d 0107 	add.w	r1, sp, #7
c0de5f14:	f7ff fe8a 	bl	c0de5c2c <buttonGenericCallback>
c0de5f18:	b128      	cbz	r0, c0de5f26 <infoCallback+0x1a>
c0de5f1a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5f1e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5f22:	f7ff bfb7 	b.w	c0de5e94 <displayInfoPage>
c0de5f26:	bd8c      	pop	{r2, r3, r7, pc}

c0de5f28 <displayWarningStep>:
c0de5f28:	b510      	push	{r4, lr}
c0de5f2a:	b088      	sub	sp, #32
c0de5f2c:	2000      	movs	r0, #0
c0de5f2e:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de5f32:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5f36:	4839      	ldr	r0, [pc, #228]	@ (c0de601c <displayWarningStep+0xf4>)
c0de5f38:	eb09 0200 	add.w	r2, r9, r0
c0de5f3c:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5f40:	69d2      	ldr	r2, [r2, #28]
c0de5f42:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de5f44:	b183      	cbz	r3, c0de5f68 <displayWarningStep+0x40>
c0de5f46:	b979      	cbnz	r1, c0de5f68 <displayWarningStep+0x40>
c0de5f48:	2000      	movs	r0, #0
c0de5f4a:	685b      	ldr	r3, [r3, #4]
c0de5f4c:	2200      	movs	r2, #0
c0de5f4e:	e9cd 0000 	strd	r0, r0, [sp]
c0de5f52:	9002      	str	r0, [sp, #8]
c0de5f54:	2001      	movs	r0, #1
c0de5f56:	4936      	ldr	r1, [pc, #216]	@ (c0de6030 <displayWarningStep+0x108>)
c0de5f58:	4479      	add	r1, pc
c0de5f5a:	f7fe fb25 	bl	c0de45a8 <nbgl_stepDrawText>
c0de5f5e:	b008      	add	sp, #32
c0de5f60:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5f64:	f001 b919 	b.w	c0de719a <nbgl_refresh>
c0de5f68:	6813      	ldr	r3, [r2, #0]
c0de5f6a:	06dc      	lsls	r4, r3, #27
c0de5f6c:	d411      	bmi.n	c0de5f92 <displayWarningStep+0x6a>
c0de5f6e:	2b00      	cmp	r3, #0
c0de5f70:	d151      	bne.n	c0de6016 <displayWarningStep+0xee>
c0de5f72:	69d3      	ldr	r3, [r2, #28]
c0de5f74:	2b00      	cmp	r3, #0
c0de5f76:	d04e      	beq.n	c0de6016 <displayWarningStep+0xee>
c0de5f78:	eb09 0400 	add.w	r4, r9, r0
c0de5f7c:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de5f80:	42a1      	cmp	r1, r4
c0de5f82:	d128      	bne.n	c0de5fd6 <displayWarningStep+0xae>
c0de5f84:	6858      	ldr	r0, [r3, #4]
c0de5f86:	691a      	ldr	r2, [r3, #16]
c0de5f88:	699b      	ldr	r3, [r3, #24]
c0de5f8a:	9006      	str	r0, [sp, #24]
c0de5f8c:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de5f90:	e00e      	b.n	c0de5fb0 <displayWarningStep+0x88>
c0de5f92:	eb09 0200 	add.w	r2, r9, r0
c0de5f96:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de5f9a:	4291      	cmp	r1, r2
c0de5f9c:	d10d      	bne.n	c0de5fba <displayWarningStep+0x92>
c0de5f9e:	4820      	ldr	r0, [pc, #128]	@ (c0de6020 <displayWarningStep+0xf8>)
c0de5fa0:	4478      	add	r0, pc
c0de5fa2:	9005      	str	r0, [sp, #20]
c0de5fa4:	481f      	ldr	r0, [pc, #124]	@ (c0de6024 <displayWarningStep+0xfc>)
c0de5fa6:	4478      	add	r0, pc
c0de5fa8:	9004      	str	r0, [sp, #16]
c0de5faa:	481f      	ldr	r0, [pc, #124]	@ (c0de6028 <displayWarningStep+0x100>)
c0de5fac:	4478      	add	r0, pc
c0de5fae:	9006      	str	r0, [sp, #24]
c0de5fb0:	2003      	movs	r0, #3
c0de5fb2:	2900      	cmp	r1, #0
c0de5fb4:	bf08      	it	eq
c0de5fb6:	2001      	moveq	r0, #1
c0de5fb8:	e020      	b.n	c0de5ffc <displayWarningStep+0xd4>
c0de5fba:	4448      	add	r0, r9
c0de5fbc:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5fc0:	3801      	subs	r0, #1
c0de5fc2:	4288      	cmp	r0, r1
c0de5fc4:	d119      	bne.n	c0de5ffa <displayWarningStep+0xd2>
c0de5fc6:	aa04      	add	r2, sp, #16
c0de5fc8:	2000      	movs	r0, #0
c0de5fca:	f102 0108 	add.w	r1, r2, #8
c0de5fce:	f000 f877 	bl	c0de60c0 <getLastPageInfo>
c0de5fd2:	200a      	movs	r0, #10
c0de5fd4:	e012      	b.n	c0de5ffc <displayWarningStep+0xd4>
c0de5fd6:	4448      	add	r0, r9
c0de5fd8:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5fdc:	3801      	subs	r0, #1
c0de5fde:	4288      	cmp	r0, r1
c0de5fe0:	d10b      	bne.n	c0de5ffa <displayWarningStep+0xd2>
c0de5fe2:	6950      	ldr	r0, [r2, #20]
c0de5fe4:	7901      	ldrb	r1, [r0, #4]
c0de5fe6:	2901      	cmp	r1, #1
c0de5fe8:	d115      	bne.n	c0de6016 <displayWarningStep+0xee>
c0de5fea:	68c1      	ldr	r1, [r0, #12]
c0de5fec:	6982      	ldr	r2, [r0, #24]
c0de5fee:	6a00      	ldr	r0, [r0, #32]
c0de5ff0:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de5ff4:	2003      	movs	r0, #3
c0de5ff6:	9106      	str	r1, [sp, #24]
c0de5ff8:	e000      	b.n	c0de5ffc <displayWarningStep+0xd4>
c0de5ffa:	2000      	movs	r0, #0
c0de5ffc:	2101      	movs	r1, #1
c0de5ffe:	2200      	movs	r2, #0
c0de6000:	f88d 101d 	strb.w	r1, [sp, #29]
c0de6004:	2100      	movs	r1, #0
c0de6006:	9100      	str	r1, [sp, #0]
c0de6008:	4908      	ldr	r1, [pc, #32]	@ (c0de602c <displayWarningStep+0x104>)
c0de600a:	ab04      	add	r3, sp, #16
c0de600c:	4479      	add	r1, pc
c0de600e:	f7fe fc11 	bl	c0de4834 <nbgl_stepDrawCenteredInfo>
c0de6012:	f001 f8c2 	bl	c0de719a <nbgl_refresh>
c0de6016:	b008      	add	sp, #32
c0de6018:	bd10      	pop	{r4, pc}
c0de601a:	bf00      	nop
c0de601c:	00000750 	.word	0x00000750
c0de6020:	00001fe0 	.word	0x00001fe0
c0de6024:	0000210d 	.word	0x0000210d
c0de6028:	00001ec5 	.word	0x00001ec5
c0de602c:	00000025 	.word	0x00000025
c0de6030:	000000d9 	.word	0x000000d9

c0de6034 <warningNavigate>:
c0de6034:	2904      	cmp	r1, #4
c0de6036:	d009      	beq.n	c0de604c <warningNavigate+0x18>
c0de6038:	2901      	cmp	r1, #1
c0de603a:	d024      	beq.n	c0de6086 <warningNavigate+0x52>
c0de603c:	bb11      	cbnz	r1, c0de6084 <warningNavigate+0x50>
c0de603e:	481f      	ldr	r0, [pc, #124]	@ (c0de60bc <warningNavigate+0x88>)
c0de6040:	4448      	add	r0, r9
c0de6042:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de6046:	b390      	cbz	r0, c0de60ae <warningNavigate+0x7a>
c0de6048:	3801      	subs	r0, #1
c0de604a:	e027      	b.n	c0de609c <warningNavigate+0x68>
c0de604c:	481b      	ldr	r0, [pc, #108]	@ (c0de60bc <warningNavigate+0x88>)
c0de604e:	eb09 0100 	add.w	r1, r9, r0
c0de6052:	69c9      	ldr	r1, [r1, #28]
c0de6054:	7809      	ldrb	r1, [r1, #0]
c0de6056:	06c9      	lsls	r1, r1, #27
c0de6058:	d514      	bpl.n	c0de6084 <warningNavigate+0x50>
c0de605a:	eb09 0200 	add.w	r2, r9, r0
c0de605e:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6062:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de6066:	4291      	cmp	r1, r2
c0de6068:	bf08      	it	eq
c0de606a:	f000 b8bd 	beq.w	c0de61e8 <launchReviewAfterWarning>
c0de606e:	eb09 0200 	add.w	r2, r9, r0
c0de6072:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6076:	3a01      	subs	r2, #1
c0de6078:	428a      	cmp	r2, r1
c0de607a:	d103      	bne.n	c0de6084 <warningNavigate+0x50>
c0de607c:	4448      	add	r0, r9
c0de607e:	6a01      	ldr	r1, [r0, #32]
c0de6080:	2000      	movs	r0, #0
c0de6082:	4708      	bx	r1
c0de6084:	4770      	bx	lr
c0de6086:	480d      	ldr	r0, [pc, #52]	@ (c0de60bc <warningNavigate+0x88>)
c0de6088:	eb09 0200 	add.w	r2, r9, r0
c0de608c:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6090:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6094:	3a01      	subs	r2, #1
c0de6096:	428a      	cmp	r2, r1
c0de6098:	dd05      	ble.n	c0de60a6 <warningNavigate+0x72>
c0de609a:	1c48      	adds	r0, r1, #1
c0de609c:	4907      	ldr	r1, [pc, #28]	@ (c0de60bc <warningNavigate+0x88>)
c0de609e:	4449      	add	r1, r9
c0de60a0:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de60a4:	e003      	b.n	c0de60ae <warningNavigate+0x7a>
c0de60a6:	4448      	add	r0, r9
c0de60a8:	69c0      	ldr	r0, [r0, #28]
c0de60aa:	6801      	ldr	r1, [r0, #0]
c0de60ac:	b109      	cbz	r1, c0de60b2 <warningNavigate+0x7e>
c0de60ae:	f7ff bf3b 	b.w	c0de5f28 <displayWarningStep>
c0de60b2:	69c0      	ldr	r0, [r0, #28]
c0de60b4:	2800      	cmp	r0, #0
c0de60b6:	d0fa      	beq.n	c0de60ae <warningNavigate+0x7a>
c0de60b8:	f000 b896 	b.w	c0de61e8 <launchReviewAfterWarning>
c0de60bc:	00000750 	.word	0x00000750

c0de60c0 <getLastPageInfo>:
c0de60c0:	b170      	cbz	r0, c0de60e0 <getLastPageInfo+0x20>
c0de60c2:	4833      	ldr	r0, [pc, #204]	@ (c0de6190 <getLastPageInfo+0xd0>)
c0de60c4:	4478      	add	r0, pc
c0de60c6:	6008      	str	r0, [r1, #0]
c0de60c8:	4830      	ldr	r0, [pc, #192]	@ (c0de618c <getLastPageInfo+0xcc>)
c0de60ca:	eb09 0100 	add.w	r1, r9, r0
c0de60ce:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de60d2:	2904      	cmp	r1, #4
c0de60d4:	d113      	bne.n	c0de60fe <getLastPageInfo+0x3e>
c0de60d6:	482f      	ldr	r0, [pc, #188]	@ (c0de6194 <getLastPageInfo+0xd4>)
c0de60d8:	492f      	ldr	r1, [pc, #188]	@ (c0de6198 <getLastPageInfo+0xd8>)
c0de60da:	4478      	add	r0, pc
c0de60dc:	4479      	add	r1, pc
c0de60de:	e04f      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de60e0:	4838      	ldr	r0, [pc, #224]	@ (c0de61c4 <getLastPageInfo+0x104>)
c0de60e2:	4478      	add	r0, pc
c0de60e4:	6008      	str	r0, [r1, #0]
c0de60e6:	4829      	ldr	r0, [pc, #164]	@ (c0de618c <getLastPageInfo+0xcc>)
c0de60e8:	eb09 0100 	add.w	r1, r9, r0
c0de60ec:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de60f0:	2904      	cmp	r1, #4
c0de60f2:	d10b      	bne.n	c0de610c <getLastPageInfo+0x4c>
c0de60f4:	4834      	ldr	r0, [pc, #208]	@ (c0de61c8 <getLastPageInfo+0x108>)
c0de60f6:	4935      	ldr	r1, [pc, #212]	@ (c0de61cc <getLastPageInfo+0x10c>)
c0de60f8:	4478      	add	r0, pc
c0de60fa:	4479      	add	r1, pc
c0de60fc:	e040      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de60fe:	eb09 0100 	add.w	r1, r9, r0
c0de6102:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de6104:	b171      	cbz	r1, c0de6124 <getLastPageInfo+0x64>
c0de6106:	4825      	ldr	r0, [pc, #148]	@ (c0de619c <getLastPageInfo+0xdc>)
c0de6108:	4478      	add	r0, pc
c0de610a:	e039      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de610c:	4448      	add	r0, r9
c0de610e:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6110:	f010 0007 	ands.w	r0, r0, #7
c0de6114:	d017      	beq.n	c0de6146 <getLastPageInfo+0x86>
c0de6116:	2801      	cmp	r0, #1
c0de6118:	d11a      	bne.n	c0de6150 <getLastPageInfo+0x90>
c0de611a:	482f      	ldr	r0, [pc, #188]	@ (c0de61d8 <getLastPageInfo+0x118>)
c0de611c:	492f      	ldr	r1, [pc, #188]	@ (c0de61dc <getLastPageInfo+0x11c>)
c0de611e:	4478      	add	r0, pc
c0de6120:	4479      	add	r1, pc
c0de6122:	e02d      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de6124:	4448      	add	r0, r9
c0de6126:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6128:	f000 0107 	and.w	r1, r0, #7
c0de612c:	2901      	cmp	r1, #1
c0de612e:	d014      	beq.n	c0de615a <getLastPageInfo+0x9a>
c0de6130:	b9e9      	cbnz	r1, c0de616e <getLastPageInfo+0xae>
c0de6132:	0640      	lsls	r0, r0, #25
c0de6134:	481a      	ldr	r0, [pc, #104]	@ (c0de61a0 <getLastPageInfo+0xe0>)
c0de6136:	491b      	ldr	r1, [pc, #108]	@ (c0de61a4 <getLastPageInfo+0xe4>)
c0de6138:	4478      	add	r0, pc
c0de613a:	4479      	add	r1, pc
c0de613c:	bf58      	it	pl
c0de613e:	4601      	movpl	r1, r0
c0de6140:	4819      	ldr	r0, [pc, #100]	@ (c0de61a8 <getLastPageInfo+0xe8>)
c0de6142:	4478      	add	r0, pc
c0de6144:	e01c      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de6146:	4822      	ldr	r0, [pc, #136]	@ (c0de61d0 <getLastPageInfo+0x110>)
c0de6148:	4922      	ldr	r1, [pc, #136]	@ (c0de61d4 <getLastPageInfo+0x114>)
c0de614a:	4478      	add	r0, pc
c0de614c:	4479      	add	r1, pc
c0de614e:	e017      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de6150:	4823      	ldr	r0, [pc, #140]	@ (c0de61e0 <getLastPageInfo+0x120>)
c0de6152:	4924      	ldr	r1, [pc, #144]	@ (c0de61e4 <getLastPageInfo+0x124>)
c0de6154:	4478      	add	r0, pc
c0de6156:	4479      	add	r1, pc
c0de6158:	e012      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de615a:	0640      	lsls	r0, r0, #25
c0de615c:	4813      	ldr	r0, [pc, #76]	@ (c0de61ac <getLastPageInfo+0xec>)
c0de615e:	4914      	ldr	r1, [pc, #80]	@ (c0de61b0 <getLastPageInfo+0xf0>)
c0de6160:	4478      	add	r0, pc
c0de6162:	4479      	add	r1, pc
c0de6164:	bf58      	it	pl
c0de6166:	4601      	movpl	r1, r0
c0de6168:	4812      	ldr	r0, [pc, #72]	@ (c0de61b4 <getLastPageInfo+0xf4>)
c0de616a:	4478      	add	r0, pc
c0de616c:	e008      	b.n	c0de6180 <getLastPageInfo+0xc0>
c0de616e:	0640      	lsls	r0, r0, #25
c0de6170:	4811      	ldr	r0, [pc, #68]	@ (c0de61b8 <getLastPageInfo+0xf8>)
c0de6172:	4912      	ldr	r1, [pc, #72]	@ (c0de61bc <getLastPageInfo+0xfc>)
c0de6174:	4478      	add	r0, pc
c0de6176:	4479      	add	r1, pc
c0de6178:	bf58      	it	pl
c0de617a:	4601      	movpl	r1, r0
c0de617c:	4810      	ldr	r0, [pc, #64]	@ (c0de61c0 <getLastPageInfo+0x100>)
c0de617e:	4478      	add	r0, pc
c0de6180:	6011      	str	r1, [r2, #0]
c0de6182:	4902      	ldr	r1, [pc, #8]	@ (c0de618c <getLastPageInfo+0xcc>)
c0de6184:	4449      	add	r1, r9
c0de6186:	6388      	str	r0, [r1, #56]	@ 0x38
c0de6188:	4770      	bx	lr
c0de618a:	bf00      	nop
c0de618c:	00000750 	.word	0x00000750
c0de6190:	00001d8a 	.word	0x00001d8a
c0de6194:	00000143 	.word	0x00000143
c0de6198:	00002110 	.word	0x00002110
c0de619c:	00000115 	.word	0x00000115
c0de61a0:	00001eb7 	.word	0x00001eb7
c0de61a4:	00001f58 	.word	0x00001f58
c0de61a8:	000000db 	.word	0x000000db
c0de61ac:	00001e73 	.word	0x00001e73
c0de61b0:	00001eb1 	.word	0x00001eb1
c0de61b4:	000000b3 	.word	0x000000b3
c0de61b8:	00001fed 	.word	0x00001fed
c0de61bc:	00001f51 	.word	0x00001f51
c0de61c0:	0000009f 	.word	0x0000009f
c0de61c4:	00001cf0 	.word	0x00001cf0
c0de61c8:	00000139 	.word	0x00000139
c0de61cc:	00001f5c 	.word	0x00001f5c
c0de61d0:	000000e7 	.word	0x000000e7
c0de61d4:	00001eb4 	.word	0x00001eb4
c0de61d8:	00000113 	.word	0x00000113
c0de61dc:	00002050 	.word	0x00002050
c0de61e0:	000000dd 	.word	0x000000dd
c0de61e4:	00002029 	.word	0x00002029

c0de61e8 <launchReviewAfterWarning>:
c0de61e8:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de61ea:	480c      	ldr	r0, [pc, #48]	@ (c0de621c <launchReviewAfterWarning+0x34>)
c0de61ec:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de61f0:	2905      	cmp	r1, #5
c0de61f2:	d00d      	beq.n	c0de6210 <launchReviewAfterWarning+0x28>
c0de61f4:	2902      	cmp	r1, #2
c0de61f6:	bf18      	it	ne
c0de61f8:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de61fa:	4448      	add	r0, r9
c0de61fc:	1d06      	adds	r6, r0, #4
c0de61fe:	6a00      	ldr	r0, [r0, #32]
c0de6200:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de6202:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de6206:	9003      	str	r0, [sp, #12]
c0de6208:	2002      	movs	r0, #2
c0de620a:	f7fe fdb5 	bl	c0de4d78 <useCaseReview>
c0de620e:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de6210:	2000      	movs	r0, #0
c0de6212:	b004      	add	sp, #16
c0de6214:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6218:	f7ff b8ac 	b.w	c0de5374 <displayStreamingReviewPage>
c0de621c:	00000750 	.word	0x00000750

c0de6220 <onReviewAccept>:
c0de6220:	4803      	ldr	r0, [pc, #12]	@ (c0de6230 <onReviewAccept+0x10>)
c0de6222:	4448      	add	r0, r9
c0de6224:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de6226:	b109      	cbz	r1, c0de622c <onReviewAccept+0xc>
c0de6228:	2001      	movs	r0, #1
c0de622a:	4708      	bx	r1
c0de622c:	4770      	bx	lr
c0de622e:	bf00      	nop
c0de6230:	00000750 	.word	0x00000750

c0de6234 <onReviewReject>:
c0de6234:	4803      	ldr	r0, [pc, #12]	@ (c0de6244 <onReviewReject+0x10>)
c0de6236:	4448      	add	r0, r9
c0de6238:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de623a:	b109      	cbz	r1, c0de6240 <onReviewReject+0xc>
c0de623c:	2000      	movs	r0, #0
c0de623e:	4708      	bx	r1
c0de6240:	4770      	bx	lr
c0de6242:	bf00      	nop
c0de6244:	00000750 	.word	0x00000750

c0de6248 <buttonSkipCallback>:
c0de6248:	b5b0      	push	{r4, r5, r7, lr}
c0de624a:	2904      	cmp	r1, #4
c0de624c:	d00a      	beq.n	c0de6264 <buttonSkipCallback+0x1c>
c0de624e:	2901      	cmp	r1, #1
c0de6250:	d017      	beq.n	c0de6282 <buttonSkipCallback+0x3a>
c0de6252:	bbb9      	cbnz	r1, c0de62c4 <buttonSkipCallback+0x7c>
c0de6254:	4829      	ldr	r0, [pc, #164]	@ (c0de62fc <buttonSkipCallback+0xb4>)
c0de6256:	eb09 0100 	add.w	r1, r9, r0
c0de625a:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de625e:	b391      	cbz	r1, c0de62c6 <buttonSkipCallback+0x7e>
c0de6260:	2008      	movs	r0, #8
c0de6262:	e02a      	b.n	c0de62ba <buttonSkipCallback+0x72>
c0de6264:	4825      	ldr	r0, [pc, #148]	@ (c0de62fc <buttonSkipCallback+0xb4>)
c0de6266:	eb09 0100 	add.w	r1, r9, r0
c0de626a:	4448      	add	r0, r9
c0de626c:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6270:	2900      	cmp	r1, #0
c0de6272:	d03f      	beq.n	c0de62f4 <buttonSkipCallback+0xac>
c0de6274:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de6278:	3902      	subs	r1, #2
c0de627a:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de627e:	2000      	movs	r0, #0
c0de6280:	e030      	b.n	c0de62e4 <buttonSkipCallback+0x9c>
c0de6282:	4a1e      	ldr	r2, [pc, #120]	@ (c0de62fc <buttonSkipCallback+0xb4>)
c0de6284:	eb09 0002 	add.w	r0, r9, r2
c0de6288:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de628c:	2808      	cmp	r0, #8
c0de628e:	d113      	bne.n	c0de62b8 <buttonSkipCallback+0x70>
c0de6290:	eb09 0002 	add.w	r0, r9, r2
c0de6294:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de6298:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de629c:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de62a0:	1e45      	subs	r5, r0, #1
c0de62a2:	2000      	movs	r0, #0
c0de62a4:	b2e1      	uxtb	r1, r4
c0de62a6:	429d      	cmp	r5, r3
c0de62a8:	bfc8      	it	gt
c0de62aa:	42a3      	cmpgt	r3, r4
c0de62ac:	dd19      	ble.n	c0de62e2 <buttonSkipCallback+0x9a>
c0de62ae:	eb09 0002 	add.w	r0, r9, r2
c0de62b2:	1c59      	adds	r1, r3, #1
c0de62b4:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de62b8:	2000      	movs	r0, #0
c0de62ba:	4910      	ldr	r1, [pc, #64]	@ (c0de62fc <buttonSkipCallback+0xb4>)
c0de62bc:	4449      	add	r1, r9
c0de62be:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de62c2:	e00e      	b.n	c0de62e2 <buttonSkipCallback+0x9a>
c0de62c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de62c6:	eb09 0100 	add.w	r1, r9, r0
c0de62ca:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de62ce:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de62d2:	b2d9      	uxtb	r1, r3
c0de62d4:	429a      	cmp	r2, r3
c0de62d6:	dd03      	ble.n	c0de62e0 <buttonSkipCallback+0x98>
c0de62d8:	4448      	add	r0, r9
c0de62da:	3a01      	subs	r2, #1
c0de62dc:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de62e0:	2008      	movs	r0, #8
c0de62e2:	b119      	cbz	r1, c0de62ec <buttonSkipCallback+0xa4>
c0de62e4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de62e8:	f7fe be3c 	b.w	c0de4f64 <displayReviewPage>
c0de62ec:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de62f0:	f7ff b840 	b.w	c0de5374 <displayStreamingReviewPage>
c0de62f4:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de62f6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de62fa:	4700      	bx	r0
c0de62fc:	00000750 	.word	0x00000750

c0de6300 <displayAliasFullValue>:
c0de6300:	b570      	push	{r4, r5, r6, lr}
c0de6302:	b088      	sub	sp, #32
c0de6304:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6370 <displayAliasFullValue+0x70>)
c0de6306:	f10d 0213 	add.w	r2, sp, #19
c0de630a:	eb09 0504 	add.w	r5, r9, r4
c0de630e:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de6310:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de6314:	ab05      	add	r3, sp, #20
c0de6316:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de631a:	9202      	str	r2, [sp, #8]
c0de631c:	e9cd 6300 	strd	r6, r3, [sp]
c0de6320:	aa07      	add	r2, sp, #28
c0de6322:	ab06      	add	r3, sp, #24
c0de6324:	f7ff fba8 	bl	c0de5a78 <getPairData>
c0de6328:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de632a:	b178      	cbz	r0, c0de634c <displayAliasFullValue+0x4c>
c0de632c:	eb09 0104 	add.w	r1, r9, r4
c0de6330:	2200      	movs	r2, #0
c0de6332:	668a      	str	r2, [r1, #104]	@ 0x68
c0de6334:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de6338:	7d01      	ldrb	r1, [r0, #20]
c0de633a:	2901      	cmp	r1, #1
c0de633c:	d008      	beq.n	c0de6350 <displayAliasFullValue+0x50>
c0de633e:	2905      	cmp	r1, #5
c0de6340:	d008      	beq.n	c0de6354 <displayAliasFullValue+0x54>
c0de6342:	2904      	cmp	r1, #4
c0de6344:	d102      	bne.n	c0de634c <displayAliasFullValue+0x4c>
c0de6346:	6900      	ldr	r0, [r0, #16]
c0de6348:	300c      	adds	r0, #12
c0de634a:	e005      	b.n	c0de6358 <displayAliasFullValue+0x58>
c0de634c:	b008      	add	sp, #32
c0de634e:	bd70      	pop	{r4, r5, r6, pc}
c0de6350:	2002      	movs	r0, #2
c0de6352:	e003      	b.n	c0de635c <displayAliasFullValue+0x5c>
c0de6354:	6900      	ldr	r0, [r0, #16]
c0de6356:	3008      	adds	r0, #8
c0de6358:	7800      	ldrb	r0, [r0, #0]
c0de635a:	3001      	adds	r0, #1
c0de635c:	eb09 0104 	add.w	r1, r9, r4
c0de6360:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de6364:	2000      	movs	r0, #0
c0de6366:	b008      	add	sp, #32
c0de6368:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de636c:	f000 b814 	b.w	c0de6398 <displayExtensionStep>
c0de6370:	00000750 	.word	0x00000750

c0de6374 <reviewCallback>:
c0de6374:	b5e0      	push	{r5, r6, r7, lr}
c0de6376:	4608      	mov	r0, r1
c0de6378:	f10d 0107 	add.w	r1, sp, #7
c0de637c:	f7ff fc56 	bl	c0de5c2c <buttonGenericCallback>
c0de6380:	b130      	cbz	r0, c0de6390 <reviewCallback+0x1c>
c0de6382:	4804      	ldr	r0, [pc, #16]	@ (c0de6394 <reviewCallback+0x20>)
c0de6384:	f000 f993 	bl	c0de66ae <OUTLINED_FUNCTION_8>
c0de6388:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de638c:	f7fe bdea 	b.w	c0de4f64 <displayReviewPage>
c0de6390:	bd8c      	pop	{r2, r3, r7, pc}
c0de6392:	bf00      	nop
c0de6394:	00000750 	.word	0x00000750

c0de6398 <displayExtensionStep>:
c0de6398:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de639c:	b088      	sub	sp, #32
c0de639e:	4e36      	ldr	r6, [pc, #216]	@ (c0de6478 <displayExtensionStep+0xe0>)
c0de63a0:	4680      	mov	r8, r0
c0de63a2:	2000      	movs	r0, #0
c0de63a4:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de63a8:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de63ac:	eb09 0006 	add.w	r0, r9, r6
c0de63b0:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de63b2:	b108      	cbz	r0, c0de63b8 <displayExtensionStep+0x20>
c0de63b4:	f7fe fb64 	bl	c0de4a80 <nbgl_stepRelease>
c0de63b8:	eb09 0106 	add.w	r1, r9, r6
c0de63bc:	f000 f970 	bl	c0de66a0 <OUTLINED_FUNCTION_7>
c0de63c0:	dd10      	ble.n	c0de63e4 <displayExtensionStep+0x4c>
c0de63c2:	2703      	movs	r7, #3
c0de63c4:	eb09 0106 	add.w	r1, r9, r6
c0de63c8:	2800      	cmp	r0, #0
c0de63ca:	bf08      	it	eq
c0de63cc:	2701      	moveq	r7, #1
c0de63ce:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de63d0:	7d0a      	ldrb	r2, [r1, #20]
c0de63d2:	2a05      	cmp	r2, #5
c0de63d4:	d01a      	beq.n	c0de640c <displayExtensionStep+0x74>
c0de63d6:	2a04      	cmp	r2, #4
c0de63d8:	d028      	beq.n	c0de642c <displayExtensionStep+0x94>
c0de63da:	2a01      	cmp	r2, #1
c0de63dc:	d147      	bne.n	c0de646e <displayExtensionStep+0xd6>
c0de63de:	6808      	ldr	r0, [r1, #0]
c0de63e0:	688d      	ldr	r5, [r1, #8]
c0de63e2:	e033      	b.n	c0de644c <displayExtensionStep+0xb4>
c0de63e4:	d143      	bne.n	c0de646e <displayExtensionStep+0xd6>
c0de63e6:	2001      	movs	r0, #1
c0de63e8:	2200      	movs	r2, #0
c0de63ea:	f88d 001d 	strb.w	r0, [sp, #29]
c0de63ee:	4924      	ldr	r1, [pc, #144]	@ (c0de6480 <displayExtensionStep+0xe8>)
c0de63f0:	4479      	add	r1, pc
c0de63f2:	9104      	str	r1, [sp, #16]
c0de63f4:	4923      	ldr	r1, [pc, #140]	@ (c0de6484 <displayExtensionStep+0xec>)
c0de63f6:	9000      	str	r0, [sp, #0]
c0de63f8:	f048 0002 	orr.w	r0, r8, #2
c0de63fc:	4479      	add	r1, pc
c0de63fe:	9106      	str	r1, [sp, #24]
c0de6400:	4921      	ldr	r1, [pc, #132]	@ (c0de6488 <displayExtensionStep+0xf0>)
c0de6402:	ab04      	add	r3, sp, #16
c0de6404:	4479      	add	r1, pc
c0de6406:	f7fe fa15 	bl	c0de4834 <nbgl_stepDrawCenteredInfo>
c0de640a:	e02d      	b.n	c0de6468 <displayExtensionStep+0xd0>
c0de640c:	690c      	ldr	r4, [r1, #16]
c0de640e:	0100      	lsls	r0, r0, #4
c0de6410:	6821      	ldr	r1, [r4, #0]
c0de6412:	5808      	ldr	r0, [r1, r0]
c0de6414:	f001 f8d0 	bl	c0de75b8 <pic>
c0de6418:	4605      	mov	r5, r0
c0de641a:	eb09 0006 	add.w	r0, r9, r6
c0de641e:	6821      	ldr	r1, [r4, #0]
c0de6420:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6424:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de6428:	6840      	ldr	r0, [r0, #4]
c0de642a:	e00d      	b.n	c0de6448 <displayExtensionStep+0xb0>
c0de642c:	690c      	ldr	r4, [r1, #16]
c0de642e:	6821      	ldr	r1, [r4, #0]
c0de6430:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6434:	f001 f8c0 	bl	c0de75b8 <pic>
c0de6438:	4605      	mov	r5, r0
c0de643a:	eb09 0006 	add.w	r0, r9, r6
c0de643e:	6861      	ldr	r1, [r4, #4]
c0de6440:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6444:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6448:	f001 f8b6 	bl	c0de75b8 <pic>
c0de644c:	b17d      	cbz	r5, c0de646e <displayExtensionStep+0xd6>
c0de644e:	2101      	movs	r1, #1
c0de6450:	ea47 0208 	orr.w	r2, r7, r8
c0de6454:	462b      	mov	r3, r5
c0de6456:	e9cd 0100 	strd	r0, r1, [sp]
c0de645a:	9102      	str	r1, [sp, #8]
c0de645c:	4610      	mov	r0, r2
c0de645e:	2200      	movs	r2, #0
c0de6460:	4906      	ldr	r1, [pc, #24]	@ (c0de647c <displayExtensionStep+0xe4>)
c0de6462:	4479      	add	r1, pc
c0de6464:	f7fe f8a0 	bl	c0de45a8 <nbgl_stepDrawText>
c0de6468:	eb09 0106 	add.w	r1, r9, r6
c0de646c:	6688      	str	r0, [r1, #104]	@ 0x68
c0de646e:	f000 fe94 	bl	c0de719a <nbgl_refresh>
c0de6472:	b008      	add	sp, #32
c0de6474:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6478:	00000750 	.word	0x00000750
c0de647c:	00000027 	.word	0x00000027
c0de6480:	00001d21 	.word	0x00001d21
c0de6484:	00001990 	.word	0x00001990
c0de6488:	00000085 	.word	0x00000085

c0de648c <extensionNavigate>:
c0de648c:	b580      	push	{r7, lr}
c0de648e:	2904      	cmp	r1, #4
c0de6490:	d00a      	beq.n	c0de64a8 <extensionNavigate+0x1c>
c0de6492:	2901      	cmp	r1, #1
c0de6494:	d01d      	beq.n	c0de64d2 <extensionNavigate+0x46>
c0de6496:	b9d9      	cbnz	r1, c0de64d0 <extensionNavigate+0x44>
c0de6498:	4818      	ldr	r0, [pc, #96]	@ (c0de64fc <extensionNavigate+0x70>)
c0de649a:	4448      	add	r0, r9
c0de649c:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de64a0:	b330      	cbz	r0, c0de64f0 <extensionNavigate+0x64>
c0de64a2:	1e41      	subs	r1, r0, #1
c0de64a4:	2008      	movs	r0, #8
c0de64a6:	e01c      	b.n	c0de64e2 <extensionNavigate+0x56>
c0de64a8:	4814      	ldr	r0, [pc, #80]	@ (c0de64fc <extensionNavigate+0x70>)
c0de64aa:	eb09 0100 	add.w	r1, r9, r0
c0de64ae:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de64b2:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de64b6:	3901      	subs	r1, #1
c0de64b8:	4291      	cmp	r1, r2
c0de64ba:	d109      	bne.n	c0de64d0 <extensionNavigate+0x44>
c0de64bc:	4448      	add	r0, r9
c0de64be:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de64c0:	f7fe fade 	bl	c0de4a80 <nbgl_stepRelease>
c0de64c4:	f000 fe82 	bl	c0de71cc <nbgl_screenRedraw>
c0de64c8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de64cc:	f000 be65 	b.w	c0de719a <nbgl_refresh>
c0de64d0:	bd80      	pop	{r7, pc}
c0de64d2:	480a      	ldr	r0, [pc, #40]	@ (c0de64fc <extensionNavigate+0x70>)
c0de64d4:	eb09 0100 	add.w	r1, r9, r0
c0de64d8:	f000 f8e2 	bl	c0de66a0 <OUTLINED_FUNCTION_7>
c0de64dc:	dd06      	ble.n	c0de64ec <extensionNavigate+0x60>
c0de64de:	1c41      	adds	r1, r0, #1
c0de64e0:	2000      	movs	r0, #0
c0de64e2:	4a06      	ldr	r2, [pc, #24]	@ (c0de64fc <extensionNavigate+0x70>)
c0de64e4:	444a      	add	r2, r9
c0de64e6:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de64ea:	e002      	b.n	c0de64f2 <extensionNavigate+0x66>
c0de64ec:	2000      	movs	r0, #0
c0de64ee:	e000      	b.n	c0de64f2 <extensionNavigate+0x66>
c0de64f0:	2008      	movs	r0, #8
c0de64f2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de64f6:	f7ff bf4f 	b.w	c0de6398 <displayExtensionStep>
c0de64fa:	bf00      	nop
c0de64fc:	00000750 	.word	0x00000750

c0de6500 <statusTickerCallback>:
c0de6500:	4802      	ldr	r0, [pc, #8]	@ (c0de650c <statusTickerCallback+0xc>)
c0de6502:	4448      	add	r0, r9
c0de6504:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de6506:	b100      	cbz	r0, c0de650a <statusTickerCallback+0xa>
c0de6508:	4700      	bx	r0
c0de650a:	4770      	bx	lr
c0de650c:	00000750 	.word	0x00000750

c0de6510 <getChoiceName>:
c0de6510:	b5b0      	push	{r4, r5, r7, lr}
c0de6512:	b090      	sub	sp, #64	@ 0x40
c0de6514:	ad01      	add	r5, sp, #4
c0de6516:	f000 f8d1 	bl	c0de66bc <OUTLINED_FUNCTION_9>
c0de651a:	4814      	ldr	r0, [pc, #80]	@ (c0de656c <getChoiceName+0x5c>)
c0de651c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6520:	462a      	mov	r2, r5
c0de6522:	4448      	add	r0, r9
c0de6524:	f000 f8b1 	bl	c0de668a <OUTLINED_FUNCTION_4>
c0de6528:	b150      	cbz	r0, c0de6540 <getChoiceName+0x30>
c0de652a:	7801      	ldrb	r1, [r0, #0]
c0de652c:	290a      	cmp	r1, #10
c0de652e:	d009      	beq.n	c0de6544 <getChoiceName+0x34>
c0de6530:	2909      	cmp	r1, #9
c0de6532:	d105      	bne.n	c0de6540 <getChoiceName+0x30>
c0de6534:	f000 f8ad 	bl	c0de6692 <OUTLINED_FUNCTION_5>
c0de6538:	4605      	mov	r5, r0
c0de653a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de653e:	e006      	b.n	c0de654e <getChoiceName+0x3e>
c0de6540:	2000      	movs	r0, #0
c0de6542:	e010      	b.n	c0de6566 <getChoiceName+0x56>
c0de6544:	f000 f8a5 	bl	c0de6692 <OUTLINED_FUNCTION_5>
c0de6548:	4605      	mov	r5, r0
c0de654a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de654e:	f001 f833 	bl	c0de75b8 <pic>
c0de6552:	7829      	ldrb	r1, [r5, #0]
c0de6554:	42a1      	cmp	r1, r4
c0de6556:	d904      	bls.n	c0de6562 <getChoiceName+0x52>
c0de6558:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de655c:	f001 f82c 	bl	c0de75b8 <pic>
c0de6560:	e001      	b.n	c0de6566 <getChoiceName+0x56>
c0de6562:	4803      	ldr	r0, [pc, #12]	@ (c0de6570 <getChoiceName+0x60>)
c0de6564:	4478      	add	r0, pc
c0de6566:	b010      	add	sp, #64	@ 0x40
c0de6568:	bdb0      	pop	{r4, r5, r7, pc}
c0de656a:	bf00      	nop
c0de656c:	00000750 	.word	0x00000750
c0de6570:	00001bad 	.word	0x00001bad

c0de6574 <onChoiceSelected>:
c0de6574:	b570      	push	{r4, r5, r6, lr}
c0de6576:	b090      	sub	sp, #64	@ 0x40
c0de6578:	ad01      	add	r5, sp, #4
c0de657a:	f000 f89f 	bl	c0de66bc <OUTLINED_FUNCTION_9>
c0de657e:	4e17      	ldr	r6, [pc, #92]	@ (c0de65dc <onChoiceSelected+0x68>)
c0de6580:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6584:	462a      	mov	r2, r5
c0de6586:	eb09 0006 	add.w	r0, r9, r6
c0de658a:	f000 f87e 	bl	c0de668a <OUTLINED_FUNCTION_4>
c0de658e:	b318      	cbz	r0, c0de65d8 <onChoiceSelected+0x64>
c0de6590:	7801      	ldrb	r1, [r0, #0]
c0de6592:	290a      	cmp	r1, #10
c0de6594:	d008      	beq.n	c0de65a8 <onChoiceSelected+0x34>
c0de6596:	2909      	cmp	r1, #9
c0de6598:	d10f      	bne.n	c0de65ba <onChoiceSelected+0x46>
c0de659a:	f000 f87a 	bl	c0de6692 <OUTLINED_FUNCTION_5>
c0de659e:	7941      	ldrb	r1, [r0, #5]
c0de65a0:	42a1      	cmp	r1, r4
c0de65a2:	d90a      	bls.n	c0de65ba <onChoiceSelected+0x46>
c0de65a4:	3007      	adds	r0, #7
c0de65a6:	e006      	b.n	c0de65b6 <onChoiceSelected+0x42>
c0de65a8:	f000 f873 	bl	c0de6692 <OUTLINED_FUNCTION_5>
c0de65ac:	7a01      	ldrb	r1, [r0, #8]
c0de65ae:	42a1      	cmp	r1, r4
c0de65b0:	d903      	bls.n	c0de65ba <onChoiceSelected+0x46>
c0de65b2:	6840      	ldr	r0, [r0, #4]
c0de65b4:	4420      	add	r0, r4
c0de65b6:	7800      	ldrb	r0, [r0, #0]
c0de65b8:	e000      	b.n	c0de65bc <onChoiceSelected+0x48>
c0de65ba:	20ff      	movs	r0, #255	@ 0xff
c0de65bc:	28ff      	cmp	r0, #255	@ 0xff
c0de65be:	d006      	beq.n	c0de65ce <onChoiceSelected+0x5a>
c0de65c0:	eb09 0106 	add.w	r1, r9, r6
c0de65c4:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de65c6:	b112      	cbz	r2, c0de65ce <onChoiceSelected+0x5a>
c0de65c8:	2100      	movs	r1, #0
c0de65ca:	4790      	blx	r2
c0de65cc:	e004      	b.n	c0de65d8 <onChoiceSelected+0x64>
c0de65ce:	eb09 0006 	add.w	r0, r9, r6
c0de65d2:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de65d4:	b100      	cbz	r0, c0de65d8 <onChoiceSelected+0x64>
c0de65d6:	4780      	blx	r0
c0de65d8:	b010      	add	sp, #64	@ 0x40
c0de65da:	bd70      	pop	{r4, r5, r6, pc}
c0de65dc:	00000750 	.word	0x00000750

c0de65e0 <streamingReviewCallback>:
c0de65e0:	b5e0      	push	{r5, r6, r7, lr}
c0de65e2:	4608      	mov	r0, r1
c0de65e4:	f10d 0107 	add.w	r1, sp, #7
c0de65e8:	f7ff fb20 	bl	c0de5c2c <buttonGenericCallback>
c0de65ec:	b130      	cbz	r0, c0de65fc <streamingReviewCallback+0x1c>
c0de65ee:	4804      	ldr	r0, [pc, #16]	@ (c0de6600 <streamingReviewCallback+0x20>)
c0de65f0:	f000 f85d 	bl	c0de66ae <OUTLINED_FUNCTION_8>
c0de65f4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de65f8:	f7fe bebc 	b.w	c0de5374 <displayStreamingReviewPage>
c0de65fc:	bd8c      	pop	{r2, r3, r7, pc}
c0de65fe:	bf00      	nop
c0de6600:	00000750 	.word	0x00000750

c0de6604 <onChoiceAccept>:
c0de6604:	4803      	ldr	r0, [pc, #12]	@ (c0de6614 <onChoiceAccept+0x10>)
c0de6606:	4448      	add	r0, r9
c0de6608:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de660a:	b109      	cbz	r1, c0de6610 <onChoiceAccept+0xc>
c0de660c:	2001      	movs	r0, #1
c0de660e:	4708      	bx	r1
c0de6610:	4770      	bx	lr
c0de6612:	bf00      	nop
c0de6614:	00000750 	.word	0x00000750

c0de6618 <onChoiceReject>:
c0de6618:	4803      	ldr	r0, [pc, #12]	@ (c0de6628 <onChoiceReject+0x10>)
c0de661a:	4448      	add	r0, r9
c0de661c:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de661e:	b109      	cbz	r1, c0de6624 <onChoiceReject+0xc>
c0de6620:	2000      	movs	r0, #0
c0de6622:	4708      	bx	r1
c0de6624:	4770      	bx	lr
c0de6626:	bf00      	nop
c0de6628:	00000750 	.word	0x00000750

c0de662c <genericChoiceCallback>:
c0de662c:	b5e0      	push	{r5, r6, r7, lr}
c0de662e:	4608      	mov	r0, r1
c0de6630:	f10d 0107 	add.w	r1, sp, #7
c0de6634:	f7ff fafa 	bl	c0de5c2c <buttonGenericCallback>
c0de6638:	b128      	cbz	r0, c0de6646 <genericChoiceCallback+0x1a>
c0de663a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de663e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6642:	f7fe bfbd 	b.w	c0de55c0 <displayChoicePage>
c0de6646:	bd8c      	pop	{r2, r3, r7, pc}

c0de6648 <OUTLINED_FUNCTION_0>:
c0de6648:	eb09 0500 	add.w	r5, r9, r0
c0de664c:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de6650:	f001 babe 	b.w	c0de7bd0 <__aeabi_memclr>

c0de6654 <OUTLINED_FUNCTION_1>:
c0de6654:	2200      	movs	r2, #0
c0de6656:	eb09 0100 	add.w	r1, r9, r0
c0de665a:	638a      	str	r2, [r1, #56]	@ 0x38
c0de665c:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6660:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6664:	3901      	subs	r1, #1
c0de6666:	4291      	cmp	r1, r2
c0de6668:	4770      	bx	lr

c0de666a <OUTLINED_FUNCTION_2>:
c0de666a:	eb09 0600 	add.w	r6, r9, r0
c0de666e:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6672:	f001 baad 	b.w	c0de7bd0 <__aeabi_memclr>

c0de6676 <OUTLINED_FUNCTION_3>:
c0de6676:	460e      	mov	r6, r1
c0de6678:	2140      	movs	r1, #64	@ 0x40
c0de667a:	4698      	mov	r8, r3
c0de667c:	4615      	mov	r5, r2
c0de667e:	eb09 0400 	add.w	r4, r9, r0
c0de6682:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de6686:	f001 baa3 	b.w	c0de7bd0 <__aeabi_memclr>

c0de668a <OUTLINED_FUNCTION_4>:
c0de668a:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de668e:	f7ff b9af 	b.w	c0de59f0 <getContentElemAtIdx>

c0de6692 <OUTLINED_FUNCTION_5>:
c0de6692:	3004      	adds	r0, #4
c0de6694:	f000 bf90 	b.w	c0de75b8 <pic>

c0de6698 <OUTLINED_FUNCTION_6>:
c0de6698:	e9cd 6500 	strd	r6, r5, [sp]
c0de669c:	f7fe bd4e 	b.w	c0de513c <drawStep>

c0de66a0 <OUTLINED_FUNCTION_7>:
c0de66a0:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de66a4:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de66a8:	3901      	subs	r1, #1
c0de66aa:	4281      	cmp	r1, r0
c0de66ac:	4770      	bx	lr

c0de66ae <OUTLINED_FUNCTION_8>:
c0de66ae:	eb09 0100 	add.w	r1, r9, r0
c0de66b2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de66b6:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de66ba:	4770      	bx	lr

c0de66bc <OUTLINED_FUNCTION_9>:
c0de66bc:	4604      	mov	r4, r0
c0de66be:	2138      	movs	r1, #56	@ 0x38
c0de66c0:	4628      	mov	r0, r5
c0de66c2:	f001 ba85 	b.w	c0de7bd0 <__aeabi_memclr>

c0de66c6 <OUTLINED_FUNCTION_10>:
c0de66c6:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de66ca:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de66ce:	4730      	bx	r6

c0de66d0 <bip32_path_read>:
c0de66d0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de66d4:	b10b      	cbz	r3, c0de66da <bip32_path_read+0xa>
c0de66d6:	2b0a      	cmp	r3, #10
c0de66d8:	d902      	bls.n	c0de66e0 <bip32_path_read+0x10>
c0de66da:	2000      	movs	r0, #0
c0de66dc:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de66e0:	4692      	mov	sl, r2
c0de66e2:	460e      	mov	r6, r1
c0de66e4:	4683      	mov	fp, r0
c0de66e6:	425f      	negs	r7, r3
c0de66e8:	2500      	movs	r5, #0
c0de66ea:	f04f 0800 	mov.w	r8, #0
c0de66ee:	9301      	str	r3, [sp, #4]
c0de66f0:	42af      	cmp	r7, r5
c0de66f2:	d00c      	beq.n	c0de670e <bip32_path_read+0x3e>
c0de66f4:	f108 0404 	add.w	r4, r8, #4
c0de66f8:	42b4      	cmp	r4, r6
c0de66fa:	d808      	bhi.n	c0de670e <bip32_path_read+0x3e>
c0de66fc:	4658      	mov	r0, fp
c0de66fe:	4641      	mov	r1, r8
c0de6700:	f000 fb6f 	bl	c0de6de2 <read_u32_be>
c0de6704:	f84a 0008 	str.w	r0, [sl, r8]
c0de6708:	3d01      	subs	r5, #1
c0de670a:	46a0      	mov	r8, r4
c0de670c:	e7f0      	b.n	c0de66f0 <bip32_path_read+0x20>
c0de670e:	9a01      	ldr	r2, [sp, #4]
c0de6710:	4269      	negs	r1, r5
c0de6712:	2000      	movs	r0, #0
c0de6714:	4291      	cmp	r1, r2
c0de6716:	bf28      	it	cs
c0de6718:	2001      	movcs	r0, #1
c0de671a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de671e <buffer_seek_cur>:
c0de671e:	6882      	ldr	r2, [r0, #8]
c0de6720:	1889      	adds	r1, r1, r2
c0de6722:	d205      	bcs.n	c0de6730 <buffer_seek_cur+0x12>
c0de6724:	6842      	ldr	r2, [r0, #4]
c0de6726:	4291      	cmp	r1, r2
c0de6728:	bf9e      	ittt	ls
c0de672a:	6081      	strls	r1, [r0, #8]
c0de672c:	2001      	movls	r0, #1
c0de672e:	4770      	bxls	lr
c0de6730:	2000      	movs	r0, #0
c0de6732:	4770      	bx	lr

c0de6734 <buffer_read_u8>:
c0de6734:	b510      	push	{r4, lr}
c0de6736:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de673a:	429a      	cmp	r2, r3
c0de673c:	d00a      	beq.n	c0de6754 <buffer_read_u8+0x20>
c0de673e:	6804      	ldr	r4, [r0, #0]
c0de6740:	5ce4      	ldrb	r4, [r4, r3]
c0de6742:	700c      	strb	r4, [r1, #0]
c0de6744:	6881      	ldr	r1, [r0, #8]
c0de6746:	3101      	adds	r1, #1
c0de6748:	d206      	bcs.n	c0de6758 <buffer_read_u8+0x24>
c0de674a:	6844      	ldr	r4, [r0, #4]
c0de674c:	42a1      	cmp	r1, r4
c0de674e:	bf98      	it	ls
c0de6750:	6081      	strls	r1, [r0, #8]
c0de6752:	e001      	b.n	c0de6758 <buffer_read_u8+0x24>
c0de6754:	2000      	movs	r0, #0
c0de6756:	7008      	strb	r0, [r1, #0]
c0de6758:	1ad0      	subs	r0, r2, r3
c0de675a:	bf18      	it	ne
c0de675c:	2001      	movne	r0, #1
c0de675e:	bd10      	pop	{r4, pc}

c0de6760 <buffer_read_u64>:
c0de6760:	b570      	push	{r4, r5, r6, lr}
c0de6762:	f000 f87d 	bl	c0de6860 <OUTLINED_FUNCTION_0>
c0de6766:	2e07      	cmp	r6, #7
c0de6768:	d904      	bls.n	c0de6774 <buffer_read_u64+0x14>
c0de676a:	6820      	ldr	r0, [r4, #0]
c0de676c:	b132      	cbz	r2, c0de677c <buffer_read_u64+0x1c>
c0de676e:	f000 fb6f 	bl	c0de6e50 <read_u64_le>
c0de6772:	e005      	b.n	c0de6780 <buffer_read_u64+0x20>
c0de6774:	2000      	movs	r0, #0
c0de6776:	e9c5 0000 	strd	r0, r0, [r5]
c0de677a:	e00c      	b.n	c0de6796 <buffer_read_u64+0x36>
c0de677c:	f000 fb3d 	bl	c0de6dfa <read_u64_be>
c0de6780:	e9c5 0100 	strd	r0, r1, [r5]
c0de6784:	68a0      	ldr	r0, [r4, #8]
c0de6786:	f110 0f09 	cmn.w	r0, #9
c0de678a:	d804      	bhi.n	c0de6796 <buffer_read_u64+0x36>
c0de678c:	6861      	ldr	r1, [r4, #4]
c0de678e:	3008      	adds	r0, #8
c0de6790:	4288      	cmp	r0, r1
c0de6792:	bf98      	it	ls
c0de6794:	60a0      	strls	r0, [r4, #8]
c0de6796:	2000      	movs	r0, #0
c0de6798:	2e07      	cmp	r6, #7
c0de679a:	bf88      	it	hi
c0de679c:	2001      	movhi	r0, #1
c0de679e:	bd70      	pop	{r4, r5, r6, pc}

c0de67a0 <buffer_read_varint>:
c0de67a0:	b5b0      	push	{r4, r5, r7, lr}
c0de67a2:	4604      	mov	r4, r0
c0de67a4:	460d      	mov	r5, r1
c0de67a6:	6800      	ldr	r0, [r0, #0]
c0de67a8:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de67ac:	4410      	add	r0, r2
c0de67ae:	1a89      	subs	r1, r1, r2
c0de67b0:	462a      	mov	r2, r5
c0de67b2:	f000 fbb7 	bl	c0de6f24 <varint_read>
c0de67b6:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de67ba:	dd0a      	ble.n	c0de67d2 <buffer_read_varint+0x32>
c0de67bc:	68a1      	ldr	r1, [r4, #8]
c0de67be:	1840      	adds	r0, r0, r1
c0de67c0:	d205      	bcs.n	c0de67ce <buffer_read_varint+0x2e>
c0de67c2:	6861      	ldr	r1, [r4, #4]
c0de67c4:	4288      	cmp	r0, r1
c0de67c6:	bf9e      	ittt	ls
c0de67c8:	60a0      	strls	r0, [r4, #8]
c0de67ca:	2001      	movls	r0, #1
c0de67cc:	bdb0      	popls	{r4, r5, r7, pc}
c0de67ce:	2000      	movs	r0, #0
c0de67d0:	bdb0      	pop	{r4, r5, r7, pc}
c0de67d2:	2000      	movs	r0, #0
c0de67d4:	e9c5 0000 	strd	r0, r0, [r5]
c0de67d8:	bdb0      	pop	{r4, r5, r7, pc}

c0de67da <buffer_read_bip32_path>:
c0de67da:	b5b0      	push	{r4, r5, r7, lr}
c0de67dc:	4604      	mov	r4, r0
c0de67de:	4615      	mov	r5, r2
c0de67e0:	460a      	mov	r2, r1
c0de67e2:	6800      	ldr	r0, [r0, #0]
c0de67e4:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de67e8:	4418      	add	r0, r3
c0de67ea:	1ac9      	subs	r1, r1, r3
c0de67ec:	462b      	mov	r3, r5
c0de67ee:	f7ff ff6f 	bl	c0de66d0 <bip32_path_read>
c0de67f2:	b140      	cbz	r0, c0de6806 <buffer_read_bip32_path+0x2c>
c0de67f4:	68a2      	ldr	r2, [r4, #8]
c0de67f6:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de67fa:	4291      	cmp	r1, r2
c0de67fc:	d303      	bcc.n	c0de6806 <buffer_read_bip32_path+0x2c>
c0de67fe:	6862      	ldr	r2, [r4, #4]
c0de6800:	4291      	cmp	r1, r2
c0de6802:	bf98      	it	ls
c0de6804:	60a1      	strls	r1, [r4, #8]
c0de6806:	bdb0      	pop	{r4, r5, r7, pc}

c0de6808 <buffer_copy>:
c0de6808:	b5b0      	push	{r4, r5, r7, lr}
c0de680a:	4614      	mov	r4, r2
c0de680c:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6810:	1a9d      	subs	r5, r3, r2
c0de6812:	42a5      	cmp	r5, r4
c0de6814:	d806      	bhi.n	c0de6824 <buffer_copy+0x1c>
c0de6816:	6800      	ldr	r0, [r0, #0]
c0de6818:	4402      	add	r2, r0
c0de681a:	4608      	mov	r0, r1
c0de681c:	4611      	mov	r1, r2
c0de681e:	462a      	mov	r2, r5
c0de6820:	f001 f9ce 	bl	c0de7bc0 <__aeabi_memmove>
c0de6824:	2000      	movs	r0, #0
c0de6826:	42a5      	cmp	r5, r4
c0de6828:	bf98      	it	ls
c0de682a:	2001      	movls	r0, #1
c0de682c:	bdb0      	pop	{r4, r5, r7, pc}

c0de682e <buffer_move>:
c0de682e:	b5b0      	push	{r4, r5, r7, lr}
c0de6830:	4615      	mov	r5, r2
c0de6832:	4604      	mov	r4, r0
c0de6834:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6838:	1a12      	subs	r2, r2, r0
c0de683a:	42aa      	cmp	r2, r5
c0de683c:	bf84      	itt	hi
c0de683e:	2000      	movhi	r0, #0
c0de6840:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6842:	6823      	ldr	r3, [r4, #0]
c0de6844:	4403      	add	r3, r0
c0de6846:	4608      	mov	r0, r1
c0de6848:	4619      	mov	r1, r3
c0de684a:	f001 f9b9 	bl	c0de7bc0 <__aeabi_memmove>
c0de684e:	68a0      	ldr	r0, [r4, #8]
c0de6850:	1940      	adds	r0, r0, r5
c0de6852:	d203      	bcs.n	c0de685c <buffer_move+0x2e>
c0de6854:	6861      	ldr	r1, [r4, #4]
c0de6856:	4288      	cmp	r0, r1
c0de6858:	bf98      	it	ls
c0de685a:	60a0      	strls	r0, [r4, #8]
c0de685c:	2001      	movs	r0, #1
c0de685e:	bdb0      	pop	{r4, r5, r7, pc}

c0de6860 <OUTLINED_FUNCTION_0>:
c0de6860:	4604      	mov	r4, r0
c0de6862:	460d      	mov	r5, r1
c0de6864:	6840      	ldr	r0, [r0, #4]
c0de6866:	68a1      	ldr	r1, [r4, #8]
c0de6868:	1a46      	subs	r6, r0, r1
c0de686a:	4770      	bx	lr

c0de686c <bip32_derive_with_seed_init_privkey_256>:
c0de686c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6870:	b095      	sub	sp, #84	@ 0x54
c0de6872:	460d      	mov	r5, r1
c0de6874:	4607      	mov	r7, r0
c0de6876:	a904      	add	r1, sp, #16
c0de6878:	469a      	mov	sl, r3
c0de687a:	4614      	mov	r4, r2
c0de687c:	4628      	mov	r0, r5
c0de687e:	f000 fffb 	bl	c0de7878 <cx_ecdomain_parameters_length>
c0de6882:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6886:	4606      	mov	r6, r0
c0de6888:	b9e0      	cbnz	r0, c0de68c4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de688a:	9804      	ldr	r0, [sp, #16]
c0de688c:	2820      	cmp	r0, #32
c0de688e:	d117      	bne.n	c0de68c0 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6890:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6892:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6896:	ab05      	add	r3, sp, #20
c0de6898:	e9cd 3200 	strd	r3, r2, [sp]
c0de689c:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de68a0:	4638      	mov	r0, r7
c0de68a2:	4629      	mov	r1, r5
c0de68a4:	4622      	mov	r2, r4
c0de68a6:	4653      	mov	r3, sl
c0de68a8:	f000 f818 	bl	c0de68dc <os_derive_bip32_with_seed_no_throw>
c0de68ac:	4606      	mov	r6, r0
c0de68ae:	b948      	cbnz	r0, c0de68c4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de68b0:	9a04      	ldr	r2, [sp, #16]
c0de68b2:	a905      	add	r1, sp, #20
c0de68b4:	4628      	mov	r0, r5
c0de68b6:	4643      	mov	r3, r8
c0de68b8:	f000 fc46 	bl	c0de7148 <cx_ecfp_init_private_key_no_throw>
c0de68bc:	4606      	mov	r6, r0
c0de68be:	e001      	b.n	c0de68c4 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de68c0:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de68c4:	a805      	add	r0, sp, #20
c0de68c6:	2140      	movs	r1, #64	@ 0x40
c0de68c8:	f001 f990 	bl	c0de7bec <explicit_bzero>
c0de68cc:	b116      	cbz	r6, c0de68d4 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de68ce:	4640      	mov	r0, r8
c0de68d0:	f000 f89f 	bl	c0de6a12 <OUTLINED_FUNCTION_0>
c0de68d4:	4630      	mov	r0, r6
c0de68d6:	b015      	add	sp, #84	@ 0x54
c0de68d8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de68dc <os_derive_bip32_with_seed_no_throw>:
c0de68dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de68e0:	b090      	sub	sp, #64	@ 0x40
c0de68e2:	f10d 0810 	add.w	r8, sp, #16
c0de68e6:	4607      	mov	r7, r0
c0de68e8:	469b      	mov	fp, r3
c0de68ea:	4616      	mov	r6, r2
c0de68ec:	460c      	mov	r4, r1
c0de68ee:	4640      	mov	r0, r8
c0de68f0:	f001 f9b2 	bl	c0de7c58 <setjmp>
c0de68f4:	b285      	uxth	r5, r0
c0de68f6:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de68fa:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de68fe:	b155      	cbz	r5, c0de6916 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6900:	2000      	movs	r0, #0
c0de6902:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6906:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6908:	f001 f85a 	bl	c0de79c0 <try_context_set>
c0de690c:	2140      	movs	r1, #64	@ 0x40
c0de690e:	4650      	mov	r0, sl
c0de6910:	f001 f96c 	bl	c0de7bec <explicit_bzero>
c0de6914:	e012      	b.n	c0de693c <os_derive_bip32_with_seed_no_throw+0x60>
c0de6916:	a804      	add	r0, sp, #16
c0de6918:	f001 f852 	bl	c0de79c0 <try_context_set>
c0de691c:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de691e:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6920:	4668      	mov	r0, sp
c0de6922:	4632      	mov	r2, r6
c0de6924:	465b      	mov	r3, fp
c0de6926:	f8c0 a000 	str.w	sl, [r0]
c0de692a:	6041      	str	r1, [r0, #4]
c0de692c:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de692e:	6081      	str	r1, [r0, #8]
c0de6930:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6932:	60c1      	str	r1, [r0, #12]
c0de6934:	4638      	mov	r0, r7
c0de6936:	4621      	mov	r1, r4
c0de6938:	f000 ffa8 	bl	c0de788c <os_perso_derive_node_with_seed_key>
c0de693c:	f001 f838 	bl	c0de79b0 <try_context_get>
c0de6940:	4540      	cmp	r0, r8
c0de6942:	d102      	bne.n	c0de694a <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6944:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6946:	f001 f83b 	bl	c0de79c0 <try_context_set>
c0de694a:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de694e:	b918      	cbnz	r0, c0de6958 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6950:	4628      	mov	r0, r5
c0de6952:	b010      	add	sp, #64	@ 0x40
c0de6954:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6958:	f000 fc89 	bl	c0de726e <os_longjmp>

c0de695c <bip32_derive_with_seed_get_pubkey_256>:
c0de695c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de695e:	b0a1      	sub	sp, #132	@ 0x84
c0de6960:	460e      	mov	r6, r1
c0de6962:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6964:	9103      	str	r1, [sp, #12]
c0de6966:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6968:	9102      	str	r1, [sp, #8]
c0de696a:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de696c:	9101      	str	r1, [sp, #4]
c0de696e:	a917      	add	r1, sp, #92	@ 0x5c
c0de6970:	9100      	str	r1, [sp, #0]
c0de6972:	4631      	mov	r1, r6
c0de6974:	f7ff ff7a 	bl	c0de686c <bip32_derive_with_seed_init_privkey_256>
c0de6978:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de697a:	4605      	mov	r5, r0
c0de697c:	b9b8      	cbnz	r0, c0de69ae <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de697e:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6980:	2301      	movs	r3, #1
c0de6982:	9000      	str	r0, [sp, #0]
c0de6984:	af04      	add	r7, sp, #16
c0de6986:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6988:	4630      	mov	r0, r6
c0de698a:	4639      	mov	r1, r7
c0de698c:	f000 fbd7 	bl	c0de713e <cx_ecfp_generate_pair2_no_throw>
c0de6990:	4605      	mov	r5, r0
c0de6992:	b960      	cbnz	r0, c0de69ae <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6994:	9805      	ldr	r0, [sp, #20]
c0de6996:	2841      	cmp	r0, #65	@ 0x41
c0de6998:	d107      	bne.n	c0de69aa <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de699a:	f107 0108 	add.w	r1, r7, #8
c0de699e:	4620      	mov	r0, r4
c0de69a0:	2241      	movs	r2, #65	@ 0x41
c0de69a2:	f001 f90b 	bl	c0de7bbc <__aeabi_memcpy>
c0de69a6:	2500      	movs	r5, #0
c0de69a8:	e001      	b.n	c0de69ae <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de69aa:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de69ae:	a817      	add	r0, sp, #92	@ 0x5c
c0de69b0:	f000 f82f 	bl	c0de6a12 <OUTLINED_FUNCTION_0>
c0de69b4:	b11d      	cbz	r5, c0de69be <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de69b6:	4620      	mov	r0, r4
c0de69b8:	2141      	movs	r1, #65	@ 0x41
c0de69ba:	f001 f917 	bl	c0de7bec <explicit_bzero>
c0de69be:	4628      	mov	r0, r5
c0de69c0:	b021      	add	sp, #132	@ 0x84
c0de69c2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de69c4 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de69c4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de69c6:	b08f      	sub	sp, #60	@ 0x3c
c0de69c8:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de69ca:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de69cc:	683c      	ldr	r4, [r7, #0]
c0de69ce:	9503      	str	r5, [sp, #12]
c0de69d0:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de69d2:	9502      	str	r5, [sp, #8]
c0de69d4:	2500      	movs	r5, #0
c0de69d6:	9501      	str	r5, [sp, #4]
c0de69d8:	ad05      	add	r5, sp, #20
c0de69da:	9500      	str	r5, [sp, #0]
c0de69dc:	f7ff ff46 	bl	c0de686c <bip32_derive_with_seed_init_privkey_256>
c0de69e0:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de69e2:	4606      	mov	r6, r0
c0de69e4:	b950      	cbnz	r0, c0de69fc <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de69e6:	ae14      	add	r6, sp, #80	@ 0x50
c0de69e8:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de69ea:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de69ec:	e9cd 6500 	strd	r6, r5, [sp]
c0de69f0:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de69f4:	a805      	add	r0, sp, #20
c0de69f6:	f000 fb9d 	bl	c0de7134 <cx_ecdsa_sign_no_throw>
c0de69fa:	4606      	mov	r6, r0
c0de69fc:	a805      	add	r0, sp, #20
c0de69fe:	f000 f808 	bl	c0de6a12 <OUTLINED_FUNCTION_0>
c0de6a02:	b11e      	cbz	r6, c0de6a0c <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6a04:	4628      	mov	r0, r5
c0de6a06:	4621      	mov	r1, r4
c0de6a08:	f001 f8f0 	bl	c0de7bec <explicit_bzero>
c0de6a0c:	4630      	mov	r0, r6
c0de6a0e:	b00f      	add	sp, #60	@ 0x3c
c0de6a10:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6a12 <OUTLINED_FUNCTION_0>:
c0de6a12:	2128      	movs	r1, #40	@ 0x28
c0de6a14:	f001 b8ea 	b.w	c0de7bec <explicit_bzero>

c0de6a18 <format_u64>:
c0de6a18:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6a1c:	b1f9      	cbz	r1, c0de6a5e <format_u64+0x46>
c0de6a1e:	4615      	mov	r5, r2
c0de6a20:	4604      	mov	r4, r0
c0de6a22:	f1a1 0801 	sub.w	r8, r1, #1
c0de6a26:	2700      	movs	r7, #0
c0de6a28:	2600      	movs	r6, #0
c0de6a2a:	f1b5 000a 	subs.w	r0, r5, #10
c0de6a2e:	f173 0000 	sbcs.w	r0, r3, #0
c0de6a32:	d316      	bcc.n	c0de6a62 <format_u64+0x4a>
c0de6a34:	4619      	mov	r1, r3
c0de6a36:	4628      	mov	r0, r5
c0de6a38:	220a      	movs	r2, #10
c0de6a3a:	2300      	movs	r3, #0
c0de6a3c:	f001 f8cc 	bl	c0de7bd8 <__aeabi_uldivmod>
c0de6a40:	460b      	mov	r3, r1
c0de6a42:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6a46:	1cba      	adds	r2, r7, #2
c0de6a48:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de6a4c:	4605      	mov	r5, r0
c0de6a4e:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6a52:	55e1      	strb	r1, [r4, r7]
c0de6a54:	1c79      	adds	r1, r7, #1
c0de6a56:	4542      	cmp	r2, r8
c0de6a58:	460f      	mov	r7, r1
c0de6a5a:	d9e6      	bls.n	c0de6a2a <format_u64+0x12>
c0de6a5c:	e012      	b.n	c0de6a84 <format_u64+0x6c>
c0de6a5e:	2600      	movs	r6, #0
c0de6a60:	e010      	b.n	c0de6a84 <format_u64+0x6c>
c0de6a62:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6a66:	19e1      	adds	r1, r4, r7
c0de6a68:	55e0      	strb	r0, [r4, r7]
c0de6a6a:	2000      	movs	r0, #0
c0de6a6c:	7048      	strb	r0, [r1, #1]
c0de6a6e:	b2c1      	uxtb	r1, r0
c0de6a70:	428f      	cmp	r7, r1
c0de6a72:	d906      	bls.n	c0de6a82 <format_u64+0x6a>
c0de6a74:	5c62      	ldrb	r2, [r4, r1]
c0de6a76:	5de3      	ldrb	r3, [r4, r7]
c0de6a78:	3001      	adds	r0, #1
c0de6a7a:	5463      	strb	r3, [r4, r1]
c0de6a7c:	55e2      	strb	r2, [r4, r7]
c0de6a7e:	3f01      	subs	r7, #1
c0de6a80:	e7f5      	b.n	c0de6a6e <format_u64+0x56>
c0de6a82:	2601      	movs	r6, #1
c0de6a84:	4630      	mov	r0, r6
c0de6a86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6a8a <format_fpu64>:
c0de6a8a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6a8e:	b086      	sub	sp, #24
c0de6a90:	466c      	mov	r4, sp
c0de6a92:	4688      	mov	r8, r1
c0de6a94:	4605      	mov	r5, r0
c0de6a96:	2115      	movs	r1, #21
c0de6a98:	461e      	mov	r6, r3
c0de6a9a:	4617      	mov	r7, r2
c0de6a9c:	4620      	mov	r0, r4
c0de6a9e:	f001 f897 	bl	c0de7bd0 <__aeabi_memclr>
c0de6aa2:	4620      	mov	r0, r4
c0de6aa4:	2115      	movs	r1, #21
c0de6aa6:	463a      	mov	r2, r7
c0de6aa8:	4633      	mov	r3, r6
c0de6aaa:	f7ff ffb5 	bl	c0de6a18 <format_u64>
c0de6aae:	b340      	cbz	r0, c0de6b02 <format_fpu64+0x78>
c0de6ab0:	466f      	mov	r7, sp
c0de6ab2:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6ab4:	4638      	mov	r0, r7
c0de6ab6:	f001 f8e7 	bl	c0de7c88 <strlen>
c0de6aba:	42b0      	cmp	r0, r6
c0de6abc:	d910      	bls.n	c0de6ae0 <format_fpu64+0x56>
c0de6abe:	1831      	adds	r1, r6, r0
c0de6ac0:	3101      	adds	r1, #1
c0de6ac2:	4541      	cmp	r1, r8
c0de6ac4:	d21d      	bcs.n	c0de6b02 <format_fpu64+0x78>
c0de6ac6:	1b84      	subs	r4, r0, r6
c0de6ac8:	4628      	mov	r0, r5
c0de6aca:	4639      	mov	r1, r7
c0de6acc:	4622      	mov	r2, r4
c0de6ace:	f001 f875 	bl	c0de7bbc <__aeabi_memcpy>
c0de6ad2:	1928      	adds	r0, r5, r4
c0de6ad4:	212e      	movs	r1, #46	@ 0x2e
c0de6ad6:	4632      	mov	r2, r6
c0de6ad8:	f800 1b01 	strb.w	r1, [r0], #1
c0de6adc:	1939      	adds	r1, r7, r4
c0de6ade:	e015      	b.n	c0de6b0c <format_fpu64+0x82>
c0de6ae0:	1a32      	subs	r2, r6, r0
c0de6ae2:	1c91      	adds	r1, r2, #2
c0de6ae4:	4541      	cmp	r1, r8
c0de6ae6:	d20c      	bcs.n	c0de6b02 <format_fpu64+0x78>
c0de6ae8:	202e      	movs	r0, #46	@ 0x2e
c0de6aea:	2330      	movs	r3, #48	@ 0x30
c0de6aec:	2400      	movs	r4, #0
c0de6aee:	7068      	strb	r0, [r5, #1]
c0de6af0:	1ca8      	adds	r0, r5, #2
c0de6af2:	702b      	strb	r3, [r5, #0]
c0de6af4:	b2a5      	uxth	r5, r4
c0de6af6:	42aa      	cmp	r2, r5
c0de6af8:	d905      	bls.n	c0de6b06 <format_fpu64+0x7c>
c0de6afa:	f800 3b01 	strb.w	r3, [r0], #1
c0de6afe:	3401      	adds	r4, #1
c0de6b00:	e7f8      	b.n	c0de6af4 <format_fpu64+0x6a>
c0de6b02:	2000      	movs	r0, #0
c0de6b04:	e005      	b.n	c0de6b12 <format_fpu64+0x88>
c0de6b06:	eba8 0201 	sub.w	r2, r8, r1
c0de6b0a:	4669      	mov	r1, sp
c0de6b0c:	f001 f8d6 	bl	c0de7cbc <strncpy>
c0de6b10:	2001      	movs	r0, #1
c0de6b12:	b006      	add	sp, #24
c0de6b14:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6b18 <format_hex>:
c0de6b18:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6b1a:	4604      	mov	r4, r0
c0de6b1c:	0048      	lsls	r0, r1, #1
c0de6b1e:	f100 0c01 	add.w	ip, r0, #1
c0de6b22:	459c      	cmp	ip, r3
c0de6b24:	d902      	bls.n	c0de6b2c <format_hex+0x14>
c0de6b26:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6b2a:	e018      	b.n	c0de6b5e <format_hex+0x46>
c0de6b2c:	480d      	ldr	r0, [pc, #52]	@ (c0de6b64 <format_hex+0x4c>)
c0de6b2e:	2500      	movs	r5, #0
c0de6b30:	4478      	add	r0, pc
c0de6b32:	b191      	cbz	r1, c0de6b5a <format_hex+0x42>
c0de6b34:	1cef      	adds	r7, r5, #3
c0de6b36:	429f      	cmp	r7, r3
c0de6b38:	d80d      	bhi.n	c0de6b56 <format_hex+0x3e>
c0de6b3a:	7827      	ldrb	r7, [r4, #0]
c0de6b3c:	3901      	subs	r1, #1
c0de6b3e:	093f      	lsrs	r7, r7, #4
c0de6b40:	5dc7      	ldrb	r7, [r0, r7]
c0de6b42:	5557      	strb	r7, [r2, r5]
c0de6b44:	1957      	adds	r7, r2, r5
c0de6b46:	3502      	adds	r5, #2
c0de6b48:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6b4c:	f006 060f 	and.w	r6, r6, #15
c0de6b50:	5d86      	ldrb	r6, [r0, r6]
c0de6b52:	707e      	strb	r6, [r7, #1]
c0de6b54:	e7ed      	b.n	c0de6b32 <format_hex+0x1a>
c0de6b56:	f105 0c01 	add.w	ip, r5, #1
c0de6b5a:	2000      	movs	r0, #0
c0de6b5c:	5550      	strb	r0, [r2, r5]
c0de6b5e:	4660      	mov	r0, ip
c0de6b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6b62:	bf00      	nop
c0de6b64:	000015c7 	.word	0x000015c7

c0de6b68 <app_ticker_event_callback>:
c0de6b68:	4770      	bx	lr
	...

c0de6b6c <io_event>:
c0de6b6c:	b580      	push	{r7, lr}
c0de6b6e:	480a      	ldr	r0, [pc, #40]	@ (c0de6b98 <io_event+0x2c>)
c0de6b70:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6b74:	290e      	cmp	r1, #14
c0de6b76:	d005      	beq.n	c0de6b84 <io_event+0x18>
c0de6b78:	2905      	cmp	r1, #5
c0de6b7a:	d108      	bne.n	c0de6b8e <io_event+0x22>
c0de6b7c:	4448      	add	r0, r9
c0de6b7e:	f000 fa05 	bl	c0de6f8c <ux_process_button_event>
c0de6b82:	e006      	b.n	c0de6b92 <io_event+0x26>
c0de6b84:	f7ff fff0 	bl	c0de6b68 <app_ticker_event_callback>
c0de6b88:	f000 fa44 	bl	c0de7014 <ux_process_ticker_event>
c0de6b8c:	e001      	b.n	c0de6b92 <io_event+0x26>
c0de6b8e:	f000 fa59 	bl	c0de7044 <ux_process_default_event>
c0de6b92:	2001      	movs	r0, #1
c0de6b94:	bd80      	pop	{r7, pc}
c0de6b96:	bf00      	nop
c0de6b98:	000007bc 	.word	0x000007bc

c0de6b9c <io_init>:
c0de6b9c:	4802      	ldr	r0, [pc, #8]	@ (c0de6ba8 <io_init+0xc>)
c0de6b9e:	2101      	movs	r1, #1
c0de6ba0:	f809 1000 	strb.w	r1, [r9, r0]
c0de6ba4:	4770      	bx	lr
c0de6ba6:	bf00      	nop
c0de6ba8:	000008cc 	.word	0x000008cc

c0de6bac <io_recv_command>:
c0de6bac:	b510      	push	{r4, lr}
c0de6bae:	4c09      	ldr	r4, [pc, #36]	@ (c0de6bd4 <io_recv_command+0x28>)
c0de6bb0:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6bb4:	2801      	cmp	r0, #1
c0de6bb6:	d104      	bne.n	c0de6bc2 <io_recv_command+0x16>
c0de6bb8:	f000 fed8 	bl	c0de796c <os_io_start>
c0de6bbc:	2000      	movs	r0, #0
c0de6bbe:	f809 0004 	strb.w	r0, [r9, r4]
c0de6bc2:	2000      	movs	r0, #0
c0de6bc4:	2800      	cmp	r0, #0
c0de6bc6:	dc03      	bgt.n	c0de6bd0 <io_recv_command+0x24>
c0de6bc8:	2001      	movs	r0, #1
c0de6bca:	f7fc fe2f 	bl	c0de382c <io_legacy_apdu_rx>
c0de6bce:	e7f9      	b.n	c0de6bc4 <io_recv_command+0x18>
c0de6bd0:	bd10      	pop	{r4, pc}
c0de6bd2:	bf00      	nop
c0de6bd4:	000008cc 	.word	0x000008cc

c0de6bd8 <io_send_response_buffers>:
c0de6bd8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6bdc:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6c70 <io_send_response_buffers+0x98>
c0de6be0:	4690      	mov	r8, r2
c0de6be2:	460f      	mov	r7, r1
c0de6be4:	4606      	mov	r6, r0
c0de6be6:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6bea:	2500      	movs	r5, #0
c0de6bec:	b1b6      	cbz	r6, c0de6c1c <io_send_response_buffers+0x44>
c0de6bee:	b1af      	cbz	r7, c0de6c1c <io_send_response_buffers+0x44>
c0de6bf0:	2500      	movs	r5, #0
c0de6bf2:	b19f      	cbz	r7, c0de6c1c <io_send_response_buffers+0x44>
c0de6bf4:	eb09 000a 	add.w	r0, r9, sl
c0de6bf8:	1b62      	subs	r2, r4, r5
c0de6bfa:	1941      	adds	r1, r0, r5
c0de6bfc:	4630      	mov	r0, r6
c0de6bfe:	f7ff fe03 	bl	c0de6808 <buffer_copy>
c0de6c02:	b130      	cbz	r0, c0de6c12 <io_send_response_buffers+0x3a>
c0de6c04:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6c08:	360c      	adds	r6, #12
c0de6c0a:	3f01      	subs	r7, #1
c0de6c0c:	4428      	add	r0, r5
c0de6c0e:	1a45      	subs	r5, r0, r1
c0de6c10:	e7ef      	b.n	c0de6bf2 <io_send_response_buffers+0x1a>
c0de6c12:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6c16:	2600      	movs	r6, #0
c0de6c18:	2700      	movs	r7, #0
c0de6c1a:	e7e6      	b.n	c0de6bea <io_send_response_buffers+0x12>
c0de6c1c:	fa1f f688 	uxth.w	r6, r8
c0de6c20:	eb09 000a 	add.w	r0, r9, sl
c0de6c24:	4629      	mov	r1, r5
c0de6c26:	4632      	mov	r2, r6
c0de6c28:	f000 f9aa 	bl	c0de6f80 <write_u16_be>
c0de6c2c:	4811      	ldr	r0, [pc, #68]	@ (c0de6c74 <io_send_response_buffers+0x9c>)
c0de6c2e:	1ca9      	adds	r1, r5, #2
c0de6c30:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6c34:	b118      	cbz	r0, c0de6c3e <io_send_response_buffers+0x66>
c0de6c36:	4810      	ldr	r0, [pc, #64]	@ (c0de6c78 <io_send_response_buffers+0xa0>)
c0de6c38:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6c3c:	b928      	cbnz	r0, c0de6c4a <io_send_response_buffers+0x72>
c0de6c3e:	f000 f81f 	bl	c0de6c80 <OUTLINED_FUNCTION_0>
c0de6c42:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6c46:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de6c4a:	f000 f819 	bl	c0de6c80 <OUTLINED_FUNCTION_0>
c0de6c4e:	2800      	cmp	r0, #0
c0de6c50:	d40a      	bmi.n	c0de6c68 <io_send_response_buffers+0x90>
c0de6c52:	480a      	ldr	r0, [pc, #40]	@ (c0de6c7c <io_send_response_buffers+0xa4>)
c0de6c54:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6c58:	fab1 f181 	clz	r1, r1
c0de6c5c:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6c60:	0949      	lsrs	r1, r1, #5
c0de6c62:	7001      	strb	r1, [r0, #0]
c0de6c64:	f000 fe52 	bl	c0de790c <os_lib_end>
c0de6c68:	20ff      	movs	r0, #255	@ 0xff
c0de6c6a:	f000 fe6b 	bl	c0de7944 <os_sched_exit>
c0de6c6e:	bf00      	nop
c0de6c70:	00000414 	.word	0x00000414
c0de6c74:	000008dc 	.word	0x000008dc
c0de6c78:	000008dd 	.word	0x000008dd
c0de6c7c:	000008e0 	.word	0x000008e0

c0de6c80 <OUTLINED_FUNCTION_0>:
c0de6c80:	eb09 000a 	add.w	r0, r9, sl
c0de6c84:	b289      	uxth	r1, r1
c0de6c86:	f7fc bdbd 	b.w	c0de3804 <io_legacy_apdu_tx>

c0de6c8a <app_exit>:
c0de6c8a:	20ff      	movs	r0, #255	@ 0xff
c0de6c8c:	f000 fe5a 	bl	c0de7944 <os_sched_exit>

c0de6c90 <common_app_init>:
c0de6c90:	b580      	push	{r7, lr}
c0de6c92:	f000 fa87 	bl	c0de71a4 <nbgl_objInit>
c0de6c96:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6c9a:	f7fc bea3 	b.w	c0de39e4 <io_seproxyhal_init>
	...

c0de6ca0 <standalone_app_main>:
c0de6ca0:	b5b0      	push	{r4, r5, r7, lr}
c0de6ca2:	b08c      	sub	sp, #48	@ 0x30
c0de6ca4:	4816      	ldr	r0, [pc, #88]	@ (c0de6d00 <standalone_app_main+0x60>)
c0de6ca6:	2500      	movs	r5, #0
c0de6ca8:	466c      	mov	r4, sp
c0de6caa:	f809 5000 	strb.w	r5, [r9, r0]
c0de6cae:	4815      	ldr	r0, [pc, #84]	@ (c0de6d04 <standalone_app_main+0x64>)
c0de6cb0:	f849 5000 	str.w	r5, [r9, r0]
c0de6cb4:	4814      	ldr	r0, [pc, #80]	@ (c0de6d08 <standalone_app_main+0x68>)
c0de6cb6:	f809 5000 	strb.w	r5, [r9, r0]
c0de6cba:	4620      	mov	r0, r4
c0de6cbc:	f000 ffcc 	bl	c0de7c58 <setjmp>
c0de6cc0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6cc4:	0400      	lsls	r0, r0, #16
c0de6cc6:	d108      	bne.n	c0de6cda <standalone_app_main+0x3a>
c0de6cc8:	4668      	mov	r0, sp
c0de6cca:	f000 fe79 	bl	c0de79c0 <try_context_set>
c0de6cce:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6cd0:	f7ff ffde 	bl	c0de6c90 <common_app_init>
c0de6cd4:	f7f9 fb48 	bl	c0de0368 <app_main>
c0de6cd8:	e004      	b.n	c0de6ce4 <standalone_app_main+0x44>
c0de6cda:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6cdc:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de6ce0:	f000 fe6e 	bl	c0de79c0 <try_context_set>
c0de6ce4:	f000 fe64 	bl	c0de79b0 <try_context_get>
c0de6ce8:	42a0      	cmp	r0, r4
c0de6cea:	d102      	bne.n	c0de6cf2 <standalone_app_main+0x52>
c0de6cec:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6cee:	f000 fe67 	bl	c0de79c0 <try_context_set>
c0de6cf2:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6cf6:	b908      	cbnz	r0, c0de6cfc <standalone_app_main+0x5c>
c0de6cf8:	f7ff ffc7 	bl	c0de6c8a <app_exit>
c0de6cfc:	f000 fab7 	bl	c0de726e <os_longjmp>
c0de6d00:	000008dc 	.word	0x000008dc
c0de6d04:	000008e0 	.word	0x000008e0
c0de6d08:	000008dd 	.word	0x000008dd

c0de6d0c <library_app_main>:
c0de6d0c:	b5b0      	push	{r4, r5, r7, lr}
c0de6d0e:	b08c      	sub	sp, #48	@ 0x30
c0de6d10:	466c      	mov	r4, sp
c0de6d12:	4605      	mov	r5, r0
c0de6d14:	4620      	mov	r0, r4
c0de6d16:	f000 ff9f 	bl	c0de7c58 <setjmp>
c0de6d1a:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6d1e:	0400      	lsls	r0, r0, #16
c0de6d20:	d124      	bne.n	c0de6d6c <library_app_main+0x60>
c0de6d22:	4668      	mov	r0, sp
c0de6d24:	f000 fe4c 	bl	c0de79c0 <try_context_set>
c0de6d28:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6d2a:	6868      	ldr	r0, [r5, #4]
c0de6d2c:	2804      	cmp	r0, #4
c0de6d2e:	d024      	beq.n	c0de6d7a <library_app_main+0x6e>
c0de6d30:	2803      	cmp	r0, #3
c0de6d32:	d026      	beq.n	c0de6d82 <library_app_main+0x76>
c0de6d34:	2802      	cmp	r0, #2
c0de6d36:	d127      	bne.n	c0de6d88 <library_app_main+0x7c>
c0de6d38:	68e8      	ldr	r0, [r5, #12]
c0de6d3a:	f7fa fd3b 	bl	c0de17b4 <swap_copy_transaction_parameters>
c0de6d3e:	b318      	cbz	r0, c0de6d88 <library_app_main+0x7c>
c0de6d40:	4816      	ldr	r0, [pc, #88]	@ (c0de6d9c <library_app_main+0x90>)
c0de6d42:	2201      	movs	r2, #1
c0de6d44:	f809 2000 	strb.w	r2, [r9, r0]
c0de6d48:	4815      	ldr	r0, [pc, #84]	@ (c0de6da0 <library_app_main+0x94>)
c0de6d4a:	2200      	movs	r2, #0
c0de6d4c:	f809 2000 	strb.w	r2, [r9, r0]
c0de6d50:	4a14      	ldr	r2, [pc, #80]	@ (c0de6da4 <library_app_main+0x98>)
c0de6d52:	68e8      	ldr	r0, [r5, #12]
c0de6d54:	3020      	adds	r0, #32
c0de6d56:	f849 0002 	str.w	r0, [r9, r2]
c0de6d5a:	f7ff ff99 	bl	c0de6c90 <common_app_init>
c0de6d5e:	4812      	ldr	r0, [pc, #72]	@ (c0de6da8 <library_app_main+0x9c>)
c0de6d60:	4478      	add	r0, pc
c0de6d62:	f7fe fbc9 	bl	c0de54f8 <nbgl_useCaseSpinner>
c0de6d66:	f7f9 faff 	bl	c0de0368 <app_main>
c0de6d6a:	e00d      	b.n	c0de6d88 <library_app_main+0x7c>
c0de6d6c:	2000      	movs	r0, #0
c0de6d6e:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6d72:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6d74:	f000 fe24 	bl	c0de79c0 <try_context_set>
c0de6d78:	e006      	b.n	c0de6d88 <library_app_main+0x7c>
c0de6d7a:	68e8      	ldr	r0, [r5, #12]
c0de6d7c:	f7fa fcee 	bl	c0de175c <swap_handle_get_printable_amount>
c0de6d80:	e002      	b.n	c0de6d88 <library_app_main+0x7c>
c0de6d82:	68e8      	ldr	r0, [r5, #12]
c0de6d84:	f7fa fc8f 	bl	c0de16a6 <swap_handle_check_address>
c0de6d88:	f000 fe12 	bl	c0de79b0 <try_context_get>
c0de6d8c:	42a0      	cmp	r0, r4
c0de6d8e:	d102      	bne.n	c0de6d96 <library_app_main+0x8a>
c0de6d90:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6d92:	f000 fe15 	bl	c0de79c0 <try_context_set>
c0de6d96:	f000 fdb9 	bl	c0de790c <os_lib_end>
c0de6d9a:	bf00      	nop
c0de6d9c:	000008dc 	.word	0x000008dc
c0de6da0:	000008dd 	.word	0x000008dd
c0de6da4:	000008e0 	.word	0x000008e0
c0de6da8:	000011c5 	.word	0x000011c5

c0de6dac <apdu_parser>:
c0de6dac:	2a04      	cmp	r2, #4
c0de6dae:	d316      	bcc.n	c0de6dde <apdu_parser+0x32>
c0de6db0:	d102      	bne.n	c0de6db8 <apdu_parser+0xc>
c0de6db2:	2300      	movs	r3, #0
c0de6db4:	7103      	strb	r3, [r0, #4]
c0de6db6:	e004      	b.n	c0de6dc2 <apdu_parser+0x16>
c0de6db8:	790b      	ldrb	r3, [r1, #4]
c0de6dba:	3a05      	subs	r2, #5
c0de6dbc:	429a      	cmp	r2, r3
c0de6dbe:	7103      	strb	r3, [r0, #4]
c0de6dc0:	d10d      	bne.n	c0de6dde <apdu_parser+0x32>
c0de6dc2:	780a      	ldrb	r2, [r1, #0]
c0de6dc4:	2b00      	cmp	r3, #0
c0de6dc6:	7002      	strb	r2, [r0, #0]
c0de6dc8:	784a      	ldrb	r2, [r1, #1]
c0de6dca:	7042      	strb	r2, [r0, #1]
c0de6dcc:	788a      	ldrb	r2, [r1, #2]
c0de6dce:	7082      	strb	r2, [r0, #2]
c0de6dd0:	bf18      	it	ne
c0de6dd2:	1d4b      	addne	r3, r1, #5
c0de6dd4:	78c9      	ldrb	r1, [r1, #3]
c0de6dd6:	6083      	str	r3, [r0, #8]
c0de6dd8:	70c1      	strb	r1, [r0, #3]
c0de6dda:	2001      	movs	r0, #1
c0de6ddc:	4770      	bx	lr
c0de6dde:	2000      	movs	r0, #0
c0de6de0:	4770      	bx	lr

c0de6de2 <read_u32_be>:
c0de6de2:	5c42      	ldrb	r2, [r0, r1]
c0de6de4:	4408      	add	r0, r1
c0de6de6:	7841      	ldrb	r1, [r0, #1]
c0de6de8:	7883      	ldrb	r3, [r0, #2]
c0de6dea:	78c0      	ldrb	r0, [r0, #3]
c0de6dec:	0409      	lsls	r1, r1, #16
c0de6dee:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6df2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6df6:	4408      	add	r0, r1
c0de6df8:	4770      	bx	lr

c0de6dfa <read_u64_be>:
c0de6dfa:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6dfc:	1842      	adds	r2, r0, r1
c0de6dfe:	5c40      	ldrb	r0, [r0, r1]
c0de6e00:	7917      	ldrb	r7, [r2, #4]
c0de6e02:	7953      	ldrb	r3, [r2, #5]
c0de6e04:	7854      	ldrb	r4, [r2, #1]
c0de6e06:	7895      	ldrb	r5, [r2, #2]
c0de6e08:	78d6      	ldrb	r6, [r2, #3]
c0de6e0a:	063f      	lsls	r7, r7, #24
c0de6e0c:	0421      	lsls	r1, r4, #16
c0de6e0e:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6e12:	7997      	ldrb	r7, [r2, #6]
c0de6e14:	79d2      	ldrb	r2, [r2, #7]
c0de6e16:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6e1a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6e1e:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6e22:	1981      	adds	r1, r0, r6
c0de6e24:	441a      	add	r2, r3
c0de6e26:	4610      	mov	r0, r2
c0de6e28:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6e2a <read_u16_le>:
c0de6e2a:	5c42      	ldrb	r2, [r0, r1]
c0de6e2c:	4408      	add	r0, r1
c0de6e2e:	7840      	ldrb	r0, [r0, #1]
c0de6e30:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6e34:	b280      	uxth	r0, r0
c0de6e36:	4770      	bx	lr

c0de6e38 <read_u32_le>:
c0de6e38:	5c42      	ldrb	r2, [r0, r1]
c0de6e3a:	4408      	add	r0, r1
c0de6e3c:	7841      	ldrb	r1, [r0, #1]
c0de6e3e:	7883      	ldrb	r3, [r0, #2]
c0de6e40:	78c0      	ldrb	r0, [r0, #3]
c0de6e42:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6e46:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6e4a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6e4e:	4770      	bx	lr

c0de6e50 <read_u64_le>:
c0de6e50:	b5b0      	push	{r4, r5, r7, lr}
c0de6e52:	5c42      	ldrb	r2, [r0, r1]
c0de6e54:	4401      	add	r1, r0
c0de6e56:	7848      	ldrb	r0, [r1, #1]
c0de6e58:	788b      	ldrb	r3, [r1, #2]
c0de6e5a:	790d      	ldrb	r5, [r1, #4]
c0de6e5c:	78cc      	ldrb	r4, [r1, #3]
c0de6e5e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6e62:	794a      	ldrb	r2, [r1, #5]
c0de6e64:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6e68:	798b      	ldrb	r3, [r1, #6]
c0de6e6a:	79c9      	ldrb	r1, [r1, #7]
c0de6e6c:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6e70:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6e74:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6e78:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6e7c:	bdb0      	pop	{r4, r5, r7, pc}

c0de6e7e <send_swap_error_simple>:
c0de6e7e:	b082      	sub	sp, #8
c0de6e80:	2300      	movs	r3, #0
c0de6e82:	9300      	str	r3, [sp, #0]
c0de6e84:	2300      	movs	r3, #0
c0de6e86:	f000 f801 	bl	c0de6e8c <send_swap_error_with_buffers>
	...

c0de6e8c <send_swap_error_with_buffers>:
c0de6e8c:	b09c      	sub	sp, #112	@ 0x70
c0de6e8e:	4604      	mov	r4, r0
c0de6e90:	4815      	ldr	r0, [pc, #84]	@ (c0de6ee8 <send_swap_error_with_buffers+0x5c>)
c0de6e92:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6e96:	b320      	cbz	r0, c0de6ee2 <send_swap_error_with_buffers+0x56>
c0de6e98:	4814      	ldr	r0, [pc, #80]	@ (c0de6eec <send_swap_error_with_buffers+0x60>)
c0de6e9a:	461d      	mov	r5, r3
c0de6e9c:	2301      	movs	r3, #1
c0de6e9e:	466e      	mov	r6, sp
c0de6ea0:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6ea2:	f809 3000 	strb.w	r3, [r9, r0]
c0de6ea6:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6eaa:	f106 0008 	add.w	r0, r6, #8
c0de6eae:	2164      	movs	r1, #100	@ 0x64
c0de6eb0:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6eb4:	f000 fe8c 	bl	c0de7bd0 <__aeabi_memclr>
c0de6eb8:	2002      	movs	r0, #2
c0de6eba:	4629      	mov	r1, r5
c0de6ebc:	9001      	str	r0, [sp, #4]
c0de6ebe:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6ec2:	2f08      	cmp	r7, #8
c0de6ec4:	9000      	str	r0, [sp, #0]
c0de6ec6:	bf28      	it	cs
c0de6ec8:	2708      	movcs	r7, #8
c0de6eca:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6ece:	0082      	lsls	r2, r0, #2
c0de6ed0:	f106 000c 	add.w	r0, r6, #12
c0de6ed4:	f000 fe72 	bl	c0de7bbc <__aeabi_memcpy>
c0de6ed8:	1c79      	adds	r1, r7, #1
c0de6eda:	4630      	mov	r0, r6
c0de6edc:	4622      	mov	r2, r4
c0de6ede:	f7ff fe7b 	bl	c0de6bd8 <io_send_response_buffers>
c0de6ee2:	2000      	movs	r0, #0
c0de6ee4:	f000 fd2e 	bl	c0de7944 <os_sched_exit>
c0de6ee8:	000008dc 	.word	0x000008dc
c0de6eec:	000008dd 	.word	0x000008dd

c0de6ef0 <swap_str_to_u64>:
c0de6ef0:	2908      	cmp	r1, #8
c0de6ef2:	d812      	bhi.n	c0de6f1a <swap_str_to_u64+0x2a>
c0de6ef4:	b570      	push	{r4, r5, r6, lr}
c0de6ef6:	2500      	movs	r5, #0
c0de6ef8:	460b      	mov	r3, r1
c0de6efa:	2400      	movs	r4, #0
c0de6efc:	b14b      	cbz	r3, c0de6f12 <swap_str_to_u64+0x22>
c0de6efe:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6f02:	0224      	lsls	r4, r4, #8
c0de6f04:	3b01      	subs	r3, #1
c0de6f06:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6f0a:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6f0e:	4635      	mov	r5, r6
c0de6f10:	e7f4      	b.n	c0de6efc <swap_str_to_u64+0xc>
c0de6f12:	e9c2 5400 	strd	r5, r4, [r2]
c0de6f16:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6f1a:	2000      	movs	r0, #0
c0de6f1c:	2909      	cmp	r1, #9
c0de6f1e:	bf38      	it	cc
c0de6f20:	2001      	movcc	r0, #1
c0de6f22:	4770      	bx	lr

c0de6f24 <varint_read>:
c0de6f24:	b510      	push	{r4, lr}
c0de6f26:	b1d9      	cbz	r1, c0de6f60 <varint_read+0x3c>
c0de6f28:	4614      	mov	r4, r2
c0de6f2a:	4602      	mov	r2, r0
c0de6f2c:	7800      	ldrb	r0, [r0, #0]
c0de6f2e:	28ff      	cmp	r0, #255	@ 0xff
c0de6f30:	d00c      	beq.n	c0de6f4c <varint_read+0x28>
c0de6f32:	28fe      	cmp	r0, #254	@ 0xfe
c0de6f34:	d012      	beq.n	c0de6f5c <varint_read+0x38>
c0de6f36:	28fd      	cmp	r0, #253	@ 0xfd
c0de6f38:	d115      	bne.n	c0de6f66 <varint_read+0x42>
c0de6f3a:	2903      	cmp	r1, #3
c0de6f3c:	d310      	bcc.n	c0de6f60 <varint_read+0x3c>
c0de6f3e:	4610      	mov	r0, r2
c0de6f40:	2101      	movs	r1, #1
c0de6f42:	f7ff ff72 	bl	c0de6e2a <read_u16_le>
c0de6f46:	2100      	movs	r1, #0
c0de6f48:	2203      	movs	r2, #3
c0de6f4a:	e015      	b.n	c0de6f78 <varint_read+0x54>
c0de6f4c:	2909      	cmp	r1, #9
c0de6f4e:	d307      	bcc.n	c0de6f60 <varint_read+0x3c>
c0de6f50:	4610      	mov	r0, r2
c0de6f52:	2101      	movs	r1, #1
c0de6f54:	f7ff ff7c 	bl	c0de6e50 <read_u64_le>
c0de6f58:	2209      	movs	r2, #9
c0de6f5a:	e00d      	b.n	c0de6f78 <varint_read+0x54>
c0de6f5c:	2905      	cmp	r1, #5
c0de6f5e:	d205      	bcs.n	c0de6f6c <varint_read+0x48>
c0de6f60:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6f64:	e00a      	b.n	c0de6f7c <varint_read+0x58>
c0de6f66:	2100      	movs	r1, #0
c0de6f68:	2201      	movs	r2, #1
c0de6f6a:	e005      	b.n	c0de6f78 <varint_read+0x54>
c0de6f6c:	4610      	mov	r0, r2
c0de6f6e:	2101      	movs	r1, #1
c0de6f70:	f7ff ff62 	bl	c0de6e38 <read_u32_le>
c0de6f74:	2100      	movs	r1, #0
c0de6f76:	2205      	movs	r2, #5
c0de6f78:	e9c4 0100 	strd	r0, r1, [r4]
c0de6f7c:	4610      	mov	r0, r2
c0de6f7e:	bd10      	pop	{r4, pc}

c0de6f80 <write_u16_be>:
c0de6f80:	0a13      	lsrs	r3, r2, #8
c0de6f82:	5443      	strb	r3, [r0, r1]
c0de6f84:	4408      	add	r0, r1
c0de6f86:	7042      	strb	r2, [r0, #1]
c0de6f88:	4770      	bx	lr
	...

c0de6f8c <ux_process_button_event>:
c0de6f8c:	b5b0      	push	{r4, r5, r7, lr}
c0de6f8e:	4604      	mov	r4, r0
c0de6f90:	2001      	movs	r0, #1
c0de6f92:	f000 f815 	bl	c0de6fc0 <ux_forward_event>
c0de6f96:	4605      	mov	r5, r0
c0de6f98:	f000 f909 	bl	c0de71ae <nbgl_objAllowDrawing>
c0de6f9c:	b165      	cbz	r5, c0de6fb8 <ux_process_button_event+0x2c>
c0de6f9e:	4807      	ldr	r0, [pc, #28]	@ (c0de6fbc <ux_process_button_event+0x30>)
c0de6fa0:	2164      	movs	r1, #100	@ 0x64
c0de6fa2:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6fa6:	4341      	muls	r1, r0
c0de6fa8:	78e0      	ldrb	r0, [r4, #3]
c0de6faa:	0840      	lsrs	r0, r0, #1
c0de6fac:	f000 f94f 	bl	c0de724e <nbgl_buttonsHandler>
c0de6fb0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6fb4:	f000 b8f1 	b.w	c0de719a <nbgl_refresh>
c0de6fb8:	bdb0      	pop	{r4, r5, r7, pc}
c0de6fba:	bf00      	nop
c0de6fbc:	000008e4 	.word	0x000008e4

c0de6fc0 <ux_forward_event>:
c0de6fc0:	b5b0      	push	{r4, r5, r7, lr}
c0de6fc2:	4604      	mov	r4, r0
c0de6fc4:	4812      	ldr	r0, [pc, #72]	@ (c0de7010 <ux_forward_event+0x50>)
c0de6fc6:	2101      	movs	r1, #1
c0de6fc8:	f809 1000 	strb.w	r1, [r9, r0]
c0de6fcc:	eb09 0500 	add.w	r5, r9, r0
c0de6fd0:	2000      	movs	r0, #0
c0de6fd2:	6068      	str	r0, [r5, #4]
c0de6fd4:	4628      	mov	r0, r5
c0de6fd6:	f000 fc8f 	bl	c0de78f8 <os_ux>
c0de6fda:	2004      	movs	r0, #4
c0de6fdc:	f000 fcfa 	bl	c0de79d4 <os_sched_last_status>
c0de6fe0:	2869      	cmp	r0, #105	@ 0x69
c0de6fe2:	6068      	str	r0, [r5, #4]
c0de6fe4:	d108      	bne.n	c0de6ff8 <ux_forward_event+0x38>
c0de6fe6:	2001      	movs	r0, #1
c0de6fe8:	f000 f8e1 	bl	c0de71ae <nbgl_objAllowDrawing>
c0de6fec:	f000 f8ee 	bl	c0de71cc <nbgl_screenRedraw>
c0de6ff0:	f000 f8d3 	bl	c0de719a <nbgl_refresh>
c0de6ff4:	2000      	movs	r0, #0
c0de6ff6:	bdb0      	pop	{r4, r5, r7, pc}
c0de6ff8:	b144      	cbz	r4, c0de700c <ux_forward_event+0x4c>
c0de6ffa:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6ffe:	bf18      	it	ne
c0de7000:	2101      	movne	r1, #1
c0de7002:	2800      	cmp	r0, #0
c0de7004:	bf18      	it	ne
c0de7006:	2001      	movne	r0, #1
c0de7008:	4008      	ands	r0, r1
c0de700a:	bdb0      	pop	{r4, r5, r7, pc}
c0de700c:	2001      	movs	r0, #1
c0de700e:	bdb0      	pop	{r4, r5, r7, pc}
c0de7010:	000008d0 	.word	0x000008d0

c0de7014 <ux_process_ticker_event>:
c0de7014:	b510      	push	{r4, lr}
c0de7016:	480a      	ldr	r0, [pc, #40]	@ (c0de7040 <ux_process_ticker_event+0x2c>)
c0de7018:	f859 1000 	ldr.w	r1, [r9, r0]
c0de701c:	3101      	adds	r1, #1
c0de701e:	f849 1000 	str.w	r1, [r9, r0]
c0de7022:	2001      	movs	r0, #1
c0de7024:	f7ff ffcc 	bl	c0de6fc0 <ux_forward_event>
c0de7028:	4604      	mov	r4, r0
c0de702a:	f000 f8c0 	bl	c0de71ae <nbgl_objAllowDrawing>
c0de702e:	b134      	cbz	r4, c0de703e <ux_process_ticker_event+0x2a>
c0de7030:	2064      	movs	r0, #100	@ 0x64
c0de7032:	f000 f8d5 	bl	c0de71e0 <nbgl_screenHandler>
c0de7036:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de703a:	f000 b8ae 	b.w	c0de719a <nbgl_refresh>
c0de703e:	bd10      	pop	{r4, pc}
c0de7040:	000008e4 	.word	0x000008e4

c0de7044 <ux_process_default_event>:
c0de7044:	2000      	movs	r0, #0
c0de7046:	f7ff bfbb 	b.w	c0de6fc0 <ux_forward_event>

c0de704a <hash_iovec>:
c0de704a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de704e:	468a      	mov	sl, r1
c0de7050:	4611      	mov	r1, r2
c0de7052:	461e      	mov	r6, r3
c0de7054:	4605      	mov	r5, r0
c0de7056:	f000 f881 	bl	c0de715c <cx_hash_init>
c0de705a:	4607      	mov	r7, r0
c0de705c:	b998      	cbnz	r0, c0de7086 <hash_iovec+0x3c>
c0de705e:	e9dd 4808 	ldrd	r4, r8, [sp, #32]
c0de7062:	3604      	adds	r6, #4
c0de7064:	b154      	cbz	r4, c0de707c <hash_iovec+0x32>
c0de7066:	f856 1c04 	ldr.w	r1, [r6, #-4]
c0de706a:	f856 2b08 	ldr.w	r2, [r6], #8
c0de706e:	4628      	mov	r0, r5
c0de7070:	f000 f87e 	bl	c0de7170 <cx_hash_update>
c0de7074:	3c01      	subs	r4, #1
c0de7076:	2800      	cmp	r0, #0
c0de7078:	d0f4      	beq.n	c0de7064 <hash_iovec+0x1a>
c0de707a:	e003      	b.n	c0de7084 <hash_iovec+0x3a>
c0de707c:	4628      	mov	r0, r5
c0de707e:	4641      	mov	r1, r8
c0de7080:	f000 f867 	bl	c0de7152 <cx_hash_final>
c0de7084:	4607      	mov	r7, r0
c0de7086:	4628      	mov	r0, r5
c0de7088:	4651      	mov	r1, sl
c0de708a:	f000 fdaf 	bl	c0de7bec <explicit_bzero>
c0de708e:	4638      	mov	r0, r7
c0de7090:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de7094 <cx_sha256_hash_iovec>:
c0de7094:	b580      	push	{r7, lr}
c0de7096:	b09e      	sub	sp, #120	@ 0x78
c0de7098:	f000 f848 	bl	c0de712c <OUTLINED_FUNCTION_0>
c0de709c:	a803      	add	r0, sp, #12
c0de709e:	216c      	movs	r1, #108	@ 0x6c
c0de70a0:	2203      	movs	r2, #3
c0de70a2:	f7ff ffd2 	bl	c0de704a <hash_iovec>
c0de70a6:	b01e      	add	sp, #120	@ 0x78
c0de70a8:	bd80      	pop	{r7, pc}

c0de70aa <hash_iovec_ex>:
c0de70aa:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de70ae:	468a      	mov	sl, r1
c0de70b0:	4611      	mov	r1, r2
c0de70b2:	461a      	mov	r2, r3
c0de70b4:	4605      	mov	r5, r0
c0de70b6:	f000 f856 	bl	c0de7166 <cx_hash_init_ex>
c0de70ba:	4607      	mov	r7, r0
c0de70bc:	b9a8      	cbnz	r0, c0de70ea <hash_iovec_ex+0x40>
c0de70be:	f10d 0820 	add.w	r8, sp, #32
c0de70c2:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de70c6:	1d04      	adds	r4, r0, #4
c0de70c8:	b156      	cbz	r6, c0de70e0 <hash_iovec_ex+0x36>
c0de70ca:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de70ce:	f854 2b08 	ldr.w	r2, [r4], #8
c0de70d2:	4628      	mov	r0, r5
c0de70d4:	f000 f84c 	bl	c0de7170 <cx_hash_update>
c0de70d8:	3e01      	subs	r6, #1
c0de70da:	2800      	cmp	r0, #0
c0de70dc:	d0f4      	beq.n	c0de70c8 <hash_iovec_ex+0x1e>
c0de70de:	e003      	b.n	c0de70e8 <hash_iovec_ex+0x3e>
c0de70e0:	4628      	mov	r0, r5
c0de70e2:	4641      	mov	r1, r8
c0de70e4:	f000 f835 	bl	c0de7152 <cx_hash_final>
c0de70e8:	4607      	mov	r7, r0
c0de70ea:	4628      	mov	r0, r5
c0de70ec:	4651      	mov	r1, sl
c0de70ee:	f000 fd7d 	bl	c0de7bec <explicit_bzero>
c0de70f2:	4638      	mov	r0, r7
c0de70f4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de70f8 <cx_keccak_256_hash_iovec>:
c0de70f8:	b580      	push	{r7, lr}
c0de70fa:	b0ee      	sub	sp, #440	@ 0x1b8
c0de70fc:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de7100:	a804      	add	r0, sp, #16
c0de7102:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de7106:	2206      	movs	r2, #6
c0de7108:	2320      	movs	r3, #32
c0de710a:	f7ff ffce 	bl	c0de70aa <hash_iovec_ex>
c0de710e:	b06e      	add	sp, #440	@ 0x1b8
c0de7110:	bd80      	pop	{r7, pc}

c0de7112 <cx_blake2b_512_hash_iovec>:
c0de7112:	b580      	push	{r7, lr}
c0de7114:	b0c4      	sub	sp, #272	@ 0x110
c0de7116:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de711a:	a804      	add	r0, sp, #16
c0de711c:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de7120:	2209      	movs	r2, #9
c0de7122:	2340      	movs	r3, #64	@ 0x40
c0de7124:	f7ff ffc1 	bl	c0de70aa <hash_iovec_ex>
c0de7128:	b044      	add	sp, #272	@ 0x110
c0de712a:	bd80      	pop	{r7, pc}

c0de712c <OUTLINED_FUNCTION_0>:
c0de712c:	e9cd 1200 	strd	r1, r2, [sp]
c0de7130:	4603      	mov	r3, r0
c0de7132:	4770      	bx	lr

c0de7134 <cx_ecdsa_sign_no_throw>:
c0de7134:	b403      	push	{r0, r1}
c0de7136:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de713a:	f000 b827 	b.w	c0de718c <cx_trampoline_helper>

c0de713e <cx_ecfp_generate_pair2_no_throw>:
c0de713e:	b403      	push	{r0, r1}
c0de7140:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de7144:	f000 b822 	b.w	c0de718c <cx_trampoline_helper>

c0de7148 <cx_ecfp_init_private_key_no_throw>:
c0de7148:	b403      	push	{r0, r1}
c0de714a:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de714e:	f000 b81d 	b.w	c0de718c <cx_trampoline_helper>

c0de7152 <cx_hash_final>:
c0de7152:	b403      	push	{r0, r1}
c0de7154:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de7158:	f000 b818 	b.w	c0de718c <cx_trampoline_helper>

c0de715c <cx_hash_init>:
c0de715c:	b403      	push	{r0, r1}
c0de715e:	f04f 0042 	mov.w	r0, #66	@ 0x42
c0de7162:	f000 b813 	b.w	c0de718c <cx_trampoline_helper>

c0de7166 <cx_hash_init_ex>:
c0de7166:	b403      	push	{r0, r1}
c0de7168:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de716c:	f000 b80e 	b.w	c0de718c <cx_trampoline_helper>

c0de7170 <cx_hash_update>:
c0de7170:	b403      	push	{r0, r1}
c0de7172:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de7176:	f000 b809 	b.w	c0de718c <cx_trampoline_helper>

c0de717a <cx_rng_no_throw>:
c0de717a:	b403      	push	{r0, r1}
c0de717c:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de7180:	f000 b804 	b.w	c0de718c <cx_trampoline_helper>

c0de7184 <cx_aes_siv_reset>:
c0de7184:	b403      	push	{r0, r1}
c0de7186:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de718a:	e7ff      	b.n	c0de718c <cx_trampoline_helper>

c0de718c <cx_trampoline_helper>:
c0de718c:	4900      	ldr	r1, [pc, #0]	@ (c0de7190 <cx_trampoline_helper+0x4>)
c0de718e:	4708      	bx	r1
c0de7190:	00808001 	.word	0x00808001

c0de7194 <assert_exit>:
c0de7194:	20ff      	movs	r0, #255	@ 0xff
c0de7196:	f000 fbd5 	bl	c0de7944 <os_sched_exit>

c0de719a <nbgl_refresh>:
c0de719a:	b403      	push	{r0, r1}
c0de719c:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de71a0:	f000 b85e 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71a4 <nbgl_objInit>:
c0de71a4:	b403      	push	{r0, r1}
c0de71a6:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de71aa:	f000 b859 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71ae <nbgl_objAllowDrawing>:
c0de71ae:	b403      	push	{r0, r1}
c0de71b0:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de71b4:	f000 b854 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71b8 <nbgl_screenSet>:
c0de71b8:	b403      	push	{r0, r1}
c0de71ba:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de71be:	f000 b84f 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71c2 <nbgl_screenPush>:
c0de71c2:	b403      	push	{r0, r1}
c0de71c4:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de71c8:	f000 b84a 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71cc <nbgl_screenRedraw>:
c0de71cc:	b403      	push	{r0, r1}
c0de71ce:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de71d2:	f000 b845 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71d6 <nbgl_screenPop>:
c0de71d6:	b403      	push	{r0, r1}
c0de71d8:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de71dc:	f000 b840 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71e0 <nbgl_screenHandler>:
c0de71e0:	b403      	push	{r0, r1}
c0de71e2:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de71e6:	f000 b83b 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71ea <nbgl_objPoolGet>:
c0de71ea:	b403      	push	{r0, r1}
c0de71ec:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de71f0:	f000 b836 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71f4 <nbgl_containerPoolGet>:
c0de71f4:	b403      	push	{r0, r1}
c0de71f6:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de71fa:	f000 b831 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de71fe <nbgl_getFont>:
c0de71fe:	b403      	push	{r0, r1}
c0de7200:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de7204:	f000 b82c 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de7208 <nbgl_getFontLineHeight>:
c0de7208:	b403      	push	{r0, r1}
c0de720a:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de720e:	f000 b827 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de7212 <nbgl_getTextMaxLenAndWidth>:
c0de7212:	b403      	push	{r0, r1}
c0de7214:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de7218:	f000 b822 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de721c <nbgl_getTextNbLinesInWidth>:
c0de721c:	b403      	push	{r0, r1}
c0de721e:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de7222:	f000 b81d 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de7226 <nbgl_getTextNbPagesInWidth>:
c0de7226:	b403      	push	{r0, r1}
c0de7228:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de722c:	f000 b818 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de7230 <nbgl_getTextWidth>:
c0de7230:	b403      	push	{r0, r1}
c0de7232:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de7236:	f000 b813 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de723a <nbgl_getTextMaxLenInNbLines>:
c0de723a:	b403      	push	{r0, r1}
c0de723c:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de7240:	f000 b80e 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de7244 <nbgl_textReduceOnNbLines>:
c0de7244:	b403      	push	{r0, r1}
c0de7246:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de724a:	f000 b809 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de724e <nbgl_buttonsHandler>:
c0de724e:	b403      	push	{r0, r1}
c0de7250:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de7254:	f000 b804 	b.w	c0de7260 <nbgl_trampoline_helper>

c0de7258 <pic_init>:
c0de7258:	b403      	push	{r0, r1}
c0de725a:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de725e:	e7ff      	b.n	c0de7260 <nbgl_trampoline_helper>

c0de7260 <nbgl_trampoline_helper>:
c0de7260:	4900      	ldr	r1, [pc, #0]	@ (c0de7264 <nbgl_trampoline_helper+0x4>)
c0de7262:	4708      	bx	r1
c0de7264:	00808001 	.word	0x00808001

c0de7268 <os_boot>:
c0de7268:	2000      	movs	r0, #0
c0de726a:	f000 bba9 	b.w	c0de79c0 <try_context_set>

c0de726e <os_longjmp>:
c0de726e:	4604      	mov	r4, r0
c0de7270:	f000 fb9e 	bl	c0de79b0 <try_context_get>
c0de7274:	4621      	mov	r1, r4
c0de7276:	f000 fcf5 	bl	c0de7c64 <longjmp>
	...

c0de727c <os_explicit_zero_BSS_segment>:
c0de727c:	4803      	ldr	r0, [pc, #12]	@ (c0de728c <os_explicit_zero_BSS_segment+0x10>)
c0de727e:	4904      	ldr	r1, [pc, #16]	@ (c0de7290 <os_explicit_zero_BSS_segment+0x14>)
c0de7280:	4448      	add	r0, r9
c0de7282:	4449      	add	r1, r9
c0de7284:	1a09      	subs	r1, r1, r0
c0de7286:	f000 bcb1 	b.w	c0de7bec <explicit_bzero>
c0de728a:	bf00      	nop
c0de728c:	00000000 	.word	0x00000000
c0de7290:	000008e8 	.word	0x000008e8

c0de7294 <snprintf>:
c0de7294:	b081      	sub	sp, #4
c0de7296:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de729a:	b087      	sub	sp, #28
c0de729c:	2800      	cmp	r0, #0
c0de729e:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de72a0:	f000 817a 	beq.w	c0de7598 <snprintf+0x304>
c0de72a4:	460d      	mov	r5, r1
c0de72a6:	2900      	cmp	r1, #0
c0de72a8:	f000 8176 	beq.w	c0de7598 <snprintf+0x304>
c0de72ac:	4629      	mov	r1, r5
c0de72ae:	4616      	mov	r6, r2
c0de72b0:	4604      	mov	r4, r0
c0de72b2:	f000 fc8d 	bl	c0de7bd0 <__aeabi_memclr>
c0de72b6:	f1b5 0801 	subs.w	r8, r5, #1
c0de72ba:	f000 816d 	beq.w	c0de7598 <snprintf+0x304>
c0de72be:	a80f      	add	r0, sp, #60	@ 0x3c
c0de72c0:	9002      	str	r0, [sp, #8]
c0de72c2:	7830      	ldrb	r0, [r6, #0]
c0de72c4:	2800      	cmp	r0, #0
c0de72c6:	f000 8167 	beq.w	c0de7598 <snprintf+0x304>
c0de72ca:	2700      	movs	r7, #0
c0de72cc:	b128      	cbz	r0, c0de72da <snprintf+0x46>
c0de72ce:	2825      	cmp	r0, #37	@ 0x25
c0de72d0:	d003      	beq.n	c0de72da <snprintf+0x46>
c0de72d2:	19f0      	adds	r0, r6, r7
c0de72d4:	3701      	adds	r7, #1
c0de72d6:	7840      	ldrb	r0, [r0, #1]
c0de72d8:	e7f8      	b.n	c0de72cc <snprintf+0x38>
c0de72da:	4547      	cmp	r7, r8
c0de72dc:	bf28      	it	cs
c0de72de:	4647      	movcs	r7, r8
c0de72e0:	4620      	mov	r0, r4
c0de72e2:	4631      	mov	r1, r6
c0de72e4:	463a      	mov	r2, r7
c0de72e6:	f000 fc6b 	bl	c0de7bc0 <__aeabi_memmove>
c0de72ea:	ebb8 0807 	subs.w	r8, r8, r7
c0de72ee:	f000 8153 	beq.w	c0de7598 <snprintf+0x304>
c0de72f2:	5df1      	ldrb	r1, [r6, r7]
c0de72f4:	19f0      	adds	r0, r6, r7
c0de72f6:	443c      	add	r4, r7
c0de72f8:	4606      	mov	r6, r0
c0de72fa:	2925      	cmp	r1, #37	@ 0x25
c0de72fc:	d1e1      	bne.n	c0de72c2 <snprintf+0x2e>
c0de72fe:	1c41      	adds	r1, r0, #1
c0de7300:	f04f 0b00 	mov.w	fp, #0
c0de7304:	f04f 0e20 	mov.w	lr, #32
c0de7308:	2500      	movs	r5, #0
c0de730a:	2600      	movs	r6, #0
c0de730c:	3101      	adds	r1, #1
c0de730e:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de7312:	4632      	mov	r2, r6
c0de7314:	3101      	adds	r1, #1
c0de7316:	2600      	movs	r6, #0
c0de7318:	2b2d      	cmp	r3, #45	@ 0x2d
c0de731a:	d0f8      	beq.n	c0de730e <snprintf+0x7a>
c0de731c:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de7320:	2e0a      	cmp	r6, #10
c0de7322:	d313      	bcc.n	c0de734c <snprintf+0xb8>
c0de7324:	2b25      	cmp	r3, #37	@ 0x25
c0de7326:	d046      	beq.n	c0de73b6 <snprintf+0x122>
c0de7328:	2b2a      	cmp	r3, #42	@ 0x2a
c0de732a:	d01f      	beq.n	c0de736c <snprintf+0xd8>
c0de732c:	2b2e      	cmp	r3, #46	@ 0x2e
c0de732e:	d129      	bne.n	c0de7384 <snprintf+0xf0>
c0de7330:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de7334:	2a2a      	cmp	r2, #42	@ 0x2a
c0de7336:	d13c      	bne.n	c0de73b2 <snprintf+0x11e>
c0de7338:	780a      	ldrb	r2, [r1, #0]
c0de733a:	2a48      	cmp	r2, #72	@ 0x48
c0de733c:	d003      	beq.n	c0de7346 <snprintf+0xb2>
c0de733e:	2a73      	cmp	r2, #115	@ 0x73
c0de7340:	d001      	beq.n	c0de7346 <snprintf+0xb2>
c0de7342:	2a68      	cmp	r2, #104	@ 0x68
c0de7344:	d135      	bne.n	c0de73b2 <snprintf+0x11e>
c0de7346:	9a02      	ldr	r2, [sp, #8]
c0de7348:	2601      	movs	r6, #1
c0de734a:	e017      	b.n	c0de737c <snprintf+0xe8>
c0de734c:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de7350:	ea56 060b 	orrs.w	r6, r6, fp
c0de7354:	bf08      	it	eq
c0de7356:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de735a:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de735e:	3901      	subs	r1, #1
c0de7360:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de7364:	4616      	mov	r6, r2
c0de7366:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de736a:	e7cf      	b.n	c0de730c <snprintf+0x78>
c0de736c:	460b      	mov	r3, r1
c0de736e:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de7372:	2a73      	cmp	r2, #115	@ 0x73
c0de7374:	d11d      	bne.n	c0de73b2 <snprintf+0x11e>
c0de7376:	9a02      	ldr	r2, [sp, #8]
c0de7378:	2602      	movs	r6, #2
c0de737a:	4619      	mov	r1, r3
c0de737c:	1d13      	adds	r3, r2, #4
c0de737e:	9302      	str	r3, [sp, #8]
c0de7380:	6815      	ldr	r5, [r2, #0]
c0de7382:	e7c3      	b.n	c0de730c <snprintf+0x78>
c0de7384:	2b48      	cmp	r3, #72	@ 0x48
c0de7386:	d018      	beq.n	c0de73ba <snprintf+0x126>
c0de7388:	2b58      	cmp	r3, #88	@ 0x58
c0de738a:	d019      	beq.n	c0de73c0 <snprintf+0x12c>
c0de738c:	2b63      	cmp	r3, #99	@ 0x63
c0de738e:	d020      	beq.n	c0de73d2 <snprintf+0x13e>
c0de7390:	2b64      	cmp	r3, #100	@ 0x64
c0de7392:	d02a      	beq.n	c0de73ea <snprintf+0x156>
c0de7394:	2b68      	cmp	r3, #104	@ 0x68
c0de7396:	d036      	beq.n	c0de7406 <snprintf+0x172>
c0de7398:	2b70      	cmp	r3, #112	@ 0x70
c0de739a:	d006      	beq.n	c0de73aa <snprintf+0x116>
c0de739c:	2b73      	cmp	r3, #115	@ 0x73
c0de739e:	d037      	beq.n	c0de7410 <snprintf+0x17c>
c0de73a0:	2b75      	cmp	r3, #117	@ 0x75
c0de73a2:	f000 8081 	beq.w	c0de74a8 <snprintf+0x214>
c0de73a6:	2b78      	cmp	r3, #120	@ 0x78
c0de73a8:	d103      	bne.n	c0de73b2 <snprintf+0x11e>
c0de73aa:	9400      	str	r4, [sp, #0]
c0de73ac:	f04f 0c00 	mov.w	ip, #0
c0de73b0:	e009      	b.n	c0de73c6 <snprintf+0x132>
c0de73b2:	1e4e      	subs	r6, r1, #1
c0de73b4:	e785      	b.n	c0de72c2 <snprintf+0x2e>
c0de73b6:	2025      	movs	r0, #37	@ 0x25
c0de73b8:	e00f      	b.n	c0de73da <snprintf+0x146>
c0de73ba:	487b      	ldr	r0, [pc, #492]	@ (c0de75a8 <snprintf+0x314>)
c0de73bc:	4478      	add	r0, pc
c0de73be:	e024      	b.n	c0de740a <snprintf+0x176>
c0de73c0:	f04f 0c01 	mov.w	ip, #1
c0de73c4:	9400      	str	r4, [sp, #0]
c0de73c6:	9a02      	ldr	r2, [sp, #8]
c0de73c8:	2400      	movs	r4, #0
c0de73ca:	1d13      	adds	r3, r2, #4
c0de73cc:	9302      	str	r3, [sp, #8]
c0de73ce:	2310      	movs	r3, #16
c0de73d0:	e072      	b.n	c0de74b8 <snprintf+0x224>
c0de73d2:	9802      	ldr	r0, [sp, #8]
c0de73d4:	1d02      	adds	r2, r0, #4
c0de73d6:	9202      	str	r2, [sp, #8]
c0de73d8:	6800      	ldr	r0, [r0, #0]
c0de73da:	1e4e      	subs	r6, r1, #1
c0de73dc:	f804 0b01 	strb.w	r0, [r4], #1
c0de73e0:	f1b8 0801 	subs.w	r8, r8, #1
c0de73e4:	f47f af6d 	bne.w	c0de72c2 <snprintf+0x2e>
c0de73e8:	e0d6      	b.n	c0de7598 <snprintf+0x304>
c0de73ea:	9a02      	ldr	r2, [sp, #8]
c0de73ec:	9400      	str	r4, [sp, #0]
c0de73ee:	1d13      	adds	r3, r2, #4
c0de73f0:	9302      	str	r3, [sp, #8]
c0de73f2:	6813      	ldr	r3, [r2, #0]
c0de73f4:	2b00      	cmp	r3, #0
c0de73f6:	461a      	mov	r2, r3
c0de73f8:	d500      	bpl.n	c0de73fc <snprintf+0x168>
c0de73fa:	425a      	negs	r2, r3
c0de73fc:	0fdc      	lsrs	r4, r3, #31
c0de73fe:	f04f 0c00 	mov.w	ip, #0
c0de7402:	230a      	movs	r3, #10
c0de7404:	e059      	b.n	c0de74ba <snprintf+0x226>
c0de7406:	4869      	ldr	r0, [pc, #420]	@ (c0de75ac <snprintf+0x318>)
c0de7408:	4478      	add	r0, pc
c0de740a:	f04f 0c01 	mov.w	ip, #1
c0de740e:	e003      	b.n	c0de7418 <snprintf+0x184>
c0de7410:	4864      	ldr	r0, [pc, #400]	@ (c0de75a4 <snprintf+0x310>)
c0de7412:	f04f 0c00 	mov.w	ip, #0
c0de7416:	4478      	add	r0, pc
c0de7418:	9b02      	ldr	r3, [sp, #8]
c0de741a:	b2d2      	uxtb	r2, r2
c0de741c:	1d1e      	adds	r6, r3, #4
c0de741e:	9602      	str	r6, [sp, #8]
c0de7420:	1e4e      	subs	r6, r1, #1
c0de7422:	6819      	ldr	r1, [r3, #0]
c0de7424:	2a02      	cmp	r2, #2
c0de7426:	f000 80a7 	beq.w	c0de7578 <snprintf+0x2e4>
c0de742a:	2a01      	cmp	r2, #1
c0de742c:	d007      	beq.n	c0de743e <snprintf+0x1aa>
c0de742e:	463d      	mov	r5, r7
c0de7430:	b92a      	cbnz	r2, c0de743e <snprintf+0x1aa>
c0de7432:	2200      	movs	r2, #0
c0de7434:	5c8b      	ldrb	r3, [r1, r2]
c0de7436:	3201      	adds	r2, #1
c0de7438:	2b00      	cmp	r3, #0
c0de743a:	d1fb      	bne.n	c0de7434 <snprintf+0x1a0>
c0de743c:	1e55      	subs	r5, r2, #1
c0de743e:	f1bc 0f00 	cmp.w	ip, #0
c0de7442:	d016      	beq.n	c0de7472 <snprintf+0x1de>
c0de7444:	2d00      	cmp	r5, #0
c0de7446:	f43f af3c 	beq.w	c0de72c2 <snprintf+0x2e>
c0de744a:	f1b8 0f02 	cmp.w	r8, #2
c0de744e:	f0c0 80a3 	bcc.w	c0de7598 <snprintf+0x304>
c0de7452:	780a      	ldrb	r2, [r1, #0]
c0de7454:	0913      	lsrs	r3, r2, #4
c0de7456:	f002 020f 	and.w	r2, r2, #15
c0de745a:	5cc3      	ldrb	r3, [r0, r3]
c0de745c:	f1b8 0802 	subs.w	r8, r8, #2
c0de7460:	7023      	strb	r3, [r4, #0]
c0de7462:	5c82      	ldrb	r2, [r0, r2]
c0de7464:	7062      	strb	r2, [r4, #1]
c0de7466:	f000 8097 	beq.w	c0de7598 <snprintf+0x304>
c0de746a:	3101      	adds	r1, #1
c0de746c:	3d01      	subs	r5, #1
c0de746e:	3402      	adds	r4, #2
c0de7470:	e7e8      	b.n	c0de7444 <snprintf+0x1b0>
c0de7472:	4545      	cmp	r5, r8
c0de7474:	bf28      	it	cs
c0de7476:	4645      	movcs	r5, r8
c0de7478:	4620      	mov	r0, r4
c0de747a:	462a      	mov	r2, r5
c0de747c:	f000 fba0 	bl	c0de7bc0 <__aeabi_memmove>
c0de7480:	ebb8 0805 	subs.w	r8, r8, r5
c0de7484:	f000 8088 	beq.w	c0de7598 <snprintf+0x304>
c0de7488:	462f      	mov	r7, r5
c0de748a:	442c      	add	r4, r5
c0de748c:	45bb      	cmp	fp, r7
c0de748e:	f67f af18 	bls.w	c0de72c2 <snprintf+0x2e>
c0de7492:	ebab 0507 	sub.w	r5, fp, r7
c0de7496:	4620      	mov	r0, r4
c0de7498:	4545      	cmp	r5, r8
c0de749a:	bf28      	it	cs
c0de749c:	4645      	movcs	r5, r8
c0de749e:	4629      	mov	r1, r5
c0de74a0:	2220      	movs	r2, #32
c0de74a2:	f000 fb8f 	bl	c0de7bc4 <__aeabi_memset>
c0de74a6:	e061      	b.n	c0de756c <snprintf+0x2d8>
c0de74a8:	9a02      	ldr	r2, [sp, #8]
c0de74aa:	9400      	str	r4, [sp, #0]
c0de74ac:	2400      	movs	r4, #0
c0de74ae:	f04f 0c00 	mov.w	ip, #0
c0de74b2:	1d13      	adds	r3, r2, #4
c0de74b4:	9302      	str	r3, [sp, #8]
c0de74b6:	230a      	movs	r3, #10
c0de74b8:	6812      	ldr	r2, [r2, #0]
c0de74ba:	483d      	ldr	r0, [pc, #244]	@ (c0de75b0 <snprintf+0x31c>)
c0de74bc:	1e4e      	subs	r6, r1, #1
c0de74be:	f04f 0a01 	mov.w	sl, #1
c0de74c2:	4478      	add	r0, pc
c0de74c4:	9001      	str	r0, [sp, #4]
c0de74c6:	fba3 570a 	umull	r5, r7, r3, sl
c0de74ca:	2f00      	cmp	r7, #0
c0de74cc:	bf18      	it	ne
c0de74ce:	2701      	movne	r7, #1
c0de74d0:	4295      	cmp	r5, r2
c0de74d2:	d804      	bhi.n	c0de74de <snprintf+0x24a>
c0de74d4:	b91f      	cbnz	r7, c0de74de <snprintf+0x24a>
c0de74d6:	f1ab 0b01 	sub.w	fp, fp, #1
c0de74da:	46aa      	mov	sl, r5
c0de74dc:	e7f3      	b.n	c0de74c6 <snprintf+0x232>
c0de74de:	2c00      	cmp	r4, #0
c0de74e0:	4627      	mov	r7, r4
c0de74e2:	f04f 0500 	mov.w	r5, #0
c0de74e6:	bf18      	it	ne
c0de74e8:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de74ec:	d00d      	beq.n	c0de750a <snprintf+0x276>
c0de74ee:	4660      	mov	r0, ip
c0de74f0:	fa5f fc8e 	uxtb.w	ip, lr
c0de74f4:	a903      	add	r1, sp, #12
c0de74f6:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de74fa:	4684      	mov	ip, r0
c0de74fc:	d106      	bne.n	c0de750c <snprintf+0x278>
c0de74fe:	202d      	movs	r0, #45	@ 0x2d
c0de7500:	2400      	movs	r4, #0
c0de7502:	2501      	movs	r5, #1
c0de7504:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7508:	e000      	b.n	c0de750c <snprintf+0x278>
c0de750a:	a903      	add	r1, sp, #12
c0de750c:	eb07 000b 	add.w	r0, r7, fp
c0de7510:	3802      	subs	r0, #2
c0de7512:	280d      	cmp	r0, #13
c0de7514:	d808      	bhi.n	c0de7528 <snprintf+0x294>
c0de7516:	f1c7 0701 	rsb	r7, r7, #1
c0de751a:	45bb      	cmp	fp, r7
c0de751c:	d004      	beq.n	c0de7528 <snprintf+0x294>
c0de751e:	f801 e005 	strb.w	lr, [r1, r5]
c0de7522:	3701      	adds	r7, #1
c0de7524:	3501      	adds	r5, #1
c0de7526:	e7f8      	b.n	c0de751a <snprintf+0x286>
c0de7528:	9f01      	ldr	r7, [sp, #4]
c0de752a:	b114      	cbz	r4, c0de7532 <snprintf+0x29e>
c0de752c:	202d      	movs	r0, #45	@ 0x2d
c0de752e:	5548      	strb	r0, [r1, r5]
c0de7530:	3501      	adds	r5, #1
c0de7532:	4820      	ldr	r0, [pc, #128]	@ (c0de75b4 <snprintf+0x320>)
c0de7534:	f1bc 0f00 	cmp.w	ip, #0
c0de7538:	4478      	add	r0, pc
c0de753a:	bf08      	it	eq
c0de753c:	4638      	moveq	r0, r7
c0de753e:	f1ba 0f00 	cmp.w	sl, #0
c0de7542:	d00b      	beq.n	c0de755c <snprintf+0x2c8>
c0de7544:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7548:	fbba faf3 	udiv	sl, sl, r3
c0de754c:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7550:	fb04 7413 	mls	r4, r4, r3, r7
c0de7554:	5d04      	ldrb	r4, [r0, r4]
c0de7556:	554c      	strb	r4, [r1, r5]
c0de7558:	3501      	adds	r5, #1
c0de755a:	e7f0      	b.n	c0de753e <snprintf+0x2aa>
c0de755c:	4545      	cmp	r5, r8
c0de755e:	bf28      	it	cs
c0de7560:	4645      	movcs	r5, r8
c0de7562:	9c00      	ldr	r4, [sp, #0]
c0de7564:	462a      	mov	r2, r5
c0de7566:	4620      	mov	r0, r4
c0de7568:	f000 fb2a 	bl	c0de7bc0 <__aeabi_memmove>
c0de756c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7570:	442c      	add	r4, r5
c0de7572:	f47f aea6 	bne.w	c0de72c2 <snprintf+0x2e>
c0de7576:	e00f      	b.n	c0de7598 <snprintf+0x304>
c0de7578:	7808      	ldrb	r0, [r1, #0]
c0de757a:	2800      	cmp	r0, #0
c0de757c:	f47f aea1 	bne.w	c0de72c2 <snprintf+0x2e>
c0de7580:	4545      	cmp	r5, r8
c0de7582:	bf28      	it	cs
c0de7584:	4645      	movcs	r5, r8
c0de7586:	4620      	mov	r0, r4
c0de7588:	4629      	mov	r1, r5
c0de758a:	2220      	movs	r2, #32
c0de758c:	f000 fb1a 	bl	c0de7bc4 <__aeabi_memset>
c0de7590:	ebb8 0805 	subs.w	r8, r8, r5
c0de7594:	f47f af79 	bne.w	c0de748a <snprintf+0x1f6>
c0de7598:	2000      	movs	r0, #0
c0de759a:	b007      	add	sp, #28
c0de759c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de75a0:	b001      	add	sp, #4
c0de75a2:	4770      	bx	lr
c0de75a4:	00001cae 	.word	0x00001cae
c0de75a8:	00001d18 	.word	0x00001d18
c0de75ac:	00001cbc 	.word	0x00001cbc
c0de75b0:	00001c02 	.word	0x00001c02
c0de75b4:	00001b9c 	.word	0x00001b9c

c0de75b8 <pic>:
c0de75b8:	4a0a      	ldr	r2, [pc, #40]	@ (c0de75e4 <pic+0x2c>)
c0de75ba:	4282      	cmp	r2, r0
c0de75bc:	490a      	ldr	r1, [pc, #40]	@ (c0de75e8 <pic+0x30>)
c0de75be:	d806      	bhi.n	c0de75ce <pic+0x16>
c0de75c0:	4281      	cmp	r1, r0
c0de75c2:	d304      	bcc.n	c0de75ce <pic+0x16>
c0de75c4:	b580      	push	{r7, lr}
c0de75c6:	f000 f815 	bl	c0de75f4 <pic_internal>
c0de75ca:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de75ce:	4907      	ldr	r1, [pc, #28]	@ (c0de75ec <pic+0x34>)
c0de75d0:	4288      	cmp	r0, r1
c0de75d2:	4a07      	ldr	r2, [pc, #28]	@ (c0de75f0 <pic+0x38>)
c0de75d4:	d304      	bcc.n	c0de75e0 <pic+0x28>
c0de75d6:	4290      	cmp	r0, r2
c0de75d8:	d802      	bhi.n	c0de75e0 <pic+0x28>
c0de75da:	1a40      	subs	r0, r0, r1
c0de75dc:	4649      	mov	r1, r9
c0de75de:	4408      	add	r0, r1
c0de75e0:	4770      	bx	lr
c0de75e2:	0000      	movs	r0, r0
c0de75e4:	c0de0000 	.word	0xc0de0000
c0de75e8:	c0de943f 	.word	0xc0de943f
c0de75ec:	da7a0000 	.word	0xda7a0000
c0de75f0:	da7aa000 	.word	0xda7aa000

c0de75f4 <pic_internal>:
c0de75f4:	467a      	mov	r2, pc
c0de75f6:	4902      	ldr	r1, [pc, #8]	@ (c0de7600 <pic_internal+0xc>)
c0de75f8:	1cc9      	adds	r1, r1, #3
c0de75fa:	1a89      	subs	r1, r1, r2
c0de75fc:	1a40      	subs	r0, r0, r1
c0de75fe:	4770      	bx	lr
c0de7600:	c0de75f5 	.word	0xc0de75f5

c0de7604 <SVC_Call>:
c0de7604:	df01      	svc	1
c0de7606:	2900      	cmp	r1, #0
c0de7608:	d100      	bne.n	c0de760c <exception>
c0de760a:	4770      	bx	lr

c0de760c <exception>:
c0de760c:	4608      	mov	r0, r1
c0de760e:	f7ff fe2e 	bl	c0de726e <os_longjmp>
	...

c0de7614 <SVC_cx_call>:
c0de7614:	df01      	svc	1
c0de7616:	4770      	bx	lr

c0de7618 <nvm_write>:
c0de7618:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de761a:	ab01      	add	r3, sp, #4
c0de761c:	c307      	stmia	r3!, {r0, r1, r2}
c0de761e:	4802      	ldr	r0, [pc, #8]	@ (c0de7628 <nvm_write+0x10>)
c0de7620:	a901      	add	r1, sp, #4
c0de7622:	f7ff ffef 	bl	c0de7604 <SVC_Call>
c0de7626:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7628:	03000003 	.word	0x03000003

c0de762c <cx_bn_lock>:
c0de762c:	b5e0      	push	{r5, r6, r7, lr}
c0de762e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7632:	4802      	ldr	r0, [pc, #8]	@ (c0de763c <cx_bn_lock+0x10>)
c0de7634:	4669      	mov	r1, sp
c0de7636:	f7ff ffed 	bl	c0de7614 <SVC_cx_call>
c0de763a:	bd8c      	pop	{r2, r3, r7, pc}
c0de763c:	02000112 	.word	0x02000112

c0de7640 <cx_bn_unlock>:
c0de7640:	b5e0      	push	{r5, r6, r7, lr}
c0de7642:	2000      	movs	r0, #0
c0de7644:	4669      	mov	r1, sp
c0de7646:	9001      	str	r0, [sp, #4]
c0de7648:	20b6      	movs	r0, #182	@ 0xb6
c0de764a:	f7ff ffe3 	bl	c0de7614 <SVC_cx_call>
c0de764e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7650 <cx_bn_alloc>:
c0de7650:	b5e0      	push	{r5, r6, r7, lr}
c0de7652:	e9cd 0100 	strd	r0, r1, [sp]
c0de7656:	4802      	ldr	r0, [pc, #8]	@ (c0de7660 <cx_bn_alloc+0x10>)
c0de7658:	4669      	mov	r1, sp
c0de765a:	f7ff ffdb 	bl	c0de7614 <SVC_cx_call>
c0de765e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7660:	02000113 	.word	0x02000113

c0de7664 <cx_bn_alloc_init>:
c0de7664:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7666:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de766a:	4803      	ldr	r0, [pc, #12]	@ (c0de7678 <cx_bn_alloc_init+0x14>)
c0de766c:	4669      	mov	r1, sp
c0de766e:	f7ff ffd1 	bl	c0de7614 <SVC_cx_call>
c0de7672:	b004      	add	sp, #16
c0de7674:	bd80      	pop	{r7, pc}
c0de7676:	bf00      	nop
c0de7678:	04000114 	.word	0x04000114

c0de767c <cx_bn_destroy>:
c0de767c:	b5e0      	push	{r5, r6, r7, lr}
c0de767e:	f000 f9b5 	bl	c0de79ec <OUTLINED_FUNCTION_0>
c0de7682:	4802      	ldr	r0, [pc, #8]	@ (c0de768c <cx_bn_destroy+0x10>)
c0de7684:	4669      	mov	r1, sp
c0de7686:	f7ff ffc5 	bl	c0de7614 <SVC_cx_call>
c0de768a:	bd8c      	pop	{r2, r3, r7, pc}
c0de768c:	010000bc 	.word	0x010000bc

c0de7690 <cx_bn_nbytes>:
c0de7690:	b5e0      	push	{r5, r6, r7, lr}
c0de7692:	e9cd 0100 	strd	r0, r1, [sp]
c0de7696:	4802      	ldr	r0, [pc, #8]	@ (c0de76a0 <cx_bn_nbytes+0x10>)
c0de7698:	4669      	mov	r1, sp
c0de769a:	f7ff ffbb 	bl	c0de7614 <SVC_cx_call>
c0de769e:	bd8c      	pop	{r2, r3, r7, pc}
c0de76a0:	0200010d 	.word	0x0200010d

c0de76a4 <cx_bn_init>:
c0de76a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76a6:	ab01      	add	r3, sp, #4
c0de76a8:	c307      	stmia	r3!, {r0, r1, r2}
c0de76aa:	4803      	ldr	r0, [pc, #12]	@ (c0de76b8 <cx_bn_init+0x14>)
c0de76ac:	a901      	add	r1, sp, #4
c0de76ae:	f7ff ffb1 	bl	c0de7614 <SVC_cx_call>
c0de76b2:	b004      	add	sp, #16
c0de76b4:	bd80      	pop	{r7, pc}
c0de76b6:	bf00      	nop
c0de76b8:	03000115 	.word	0x03000115

c0de76bc <cx_bn_copy>:
c0de76bc:	b5e0      	push	{r5, r6, r7, lr}
c0de76be:	e9cd 0100 	strd	r0, r1, [sp]
c0de76c2:	4802      	ldr	r0, [pc, #8]	@ (c0de76cc <cx_bn_copy+0x10>)
c0de76c4:	4669      	mov	r1, sp
c0de76c6:	f7ff ffa5 	bl	c0de7614 <SVC_cx_call>
c0de76ca:	bd8c      	pop	{r2, r3, r7, pc}
c0de76cc:	020000c0 	.word	0x020000c0

c0de76d0 <cx_bn_set_u32>:
c0de76d0:	b5e0      	push	{r5, r6, r7, lr}
c0de76d2:	e9cd 0100 	strd	r0, r1, [sp]
c0de76d6:	4802      	ldr	r0, [pc, #8]	@ (c0de76e0 <cx_bn_set_u32+0x10>)
c0de76d8:	4669      	mov	r1, sp
c0de76da:	f7ff ff9b 	bl	c0de7614 <SVC_cx_call>
c0de76de:	bd8c      	pop	{r2, r3, r7, pc}
c0de76e0:	020000c1 	.word	0x020000c1

c0de76e4 <cx_bn_export>:
c0de76e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76e6:	ab01      	add	r3, sp, #4
c0de76e8:	c307      	stmia	r3!, {r0, r1, r2}
c0de76ea:	4803      	ldr	r0, [pc, #12]	@ (c0de76f8 <cx_bn_export+0x14>)
c0de76ec:	a901      	add	r1, sp, #4
c0de76ee:	f7ff ff91 	bl	c0de7614 <SVC_cx_call>
c0de76f2:	b004      	add	sp, #16
c0de76f4:	bd80      	pop	{r7, pc}
c0de76f6:	bf00      	nop
c0de76f8:	030000c3 	.word	0x030000c3

c0de76fc <cx_bn_cmp>:
c0de76fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76fe:	ab01      	add	r3, sp, #4
c0de7700:	c307      	stmia	r3!, {r0, r1, r2}
c0de7702:	4803      	ldr	r0, [pc, #12]	@ (c0de7710 <cx_bn_cmp+0x14>)
c0de7704:	a901      	add	r1, sp, #4
c0de7706:	f7ff ff85 	bl	c0de7614 <SVC_cx_call>
c0de770a:	b004      	add	sp, #16
c0de770c:	bd80      	pop	{r7, pc}
c0de770e:	bf00      	nop
c0de7710:	030000c4 	.word	0x030000c4

c0de7714 <cx_bn_cmp_u32>:
c0de7714:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7716:	ab01      	add	r3, sp, #4
c0de7718:	c307      	stmia	r3!, {r0, r1, r2}
c0de771a:	4803      	ldr	r0, [pc, #12]	@ (c0de7728 <cx_bn_cmp_u32+0x14>)
c0de771c:	a901      	add	r1, sp, #4
c0de771e:	f7ff ff79 	bl	c0de7614 <SVC_cx_call>
c0de7722:	b004      	add	sp, #16
c0de7724:	bd80      	pop	{r7, pc}
c0de7726:	bf00      	nop
c0de7728:	030000c5 	.word	0x030000c5

c0de772c <cx_bn_tst_bit>:
c0de772c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de772e:	ab01      	add	r3, sp, #4
c0de7730:	c307      	stmia	r3!, {r0, r1, r2}
c0de7732:	4803      	ldr	r0, [pc, #12]	@ (c0de7740 <cx_bn_tst_bit+0x14>)
c0de7734:	a901      	add	r1, sp, #4
c0de7736:	f7ff ff6d 	bl	c0de7614 <SVC_cx_call>
c0de773a:	b004      	add	sp, #16
c0de773c:	bd80      	pop	{r7, pc}
c0de773e:	bf00      	nop
c0de7740:	030000cb 	.word	0x030000cb

c0de7744 <cx_bn_mod_add>:
c0de7744:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7746:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de774a:	4803      	ldr	r0, [pc, #12]	@ (c0de7758 <cx_bn_mod_add+0x14>)
c0de774c:	4669      	mov	r1, sp
c0de774e:	f7ff ff61 	bl	c0de7614 <SVC_cx_call>
c0de7752:	b004      	add	sp, #16
c0de7754:	bd80      	pop	{r7, pc}
c0de7756:	bf00      	nop
c0de7758:	040000d3 	.word	0x040000d3

c0de775c <cx_bn_mod_sub>:
c0de775c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de775e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7762:	4803      	ldr	r0, [pc, #12]	@ (c0de7770 <cx_bn_mod_sub+0x14>)
c0de7764:	4669      	mov	r1, sp
c0de7766:	f7ff ff55 	bl	c0de7614 <SVC_cx_call>
c0de776a:	b004      	add	sp, #16
c0de776c:	bd80      	pop	{r7, pc}
c0de776e:	bf00      	nop
c0de7770:	040000d4 	.word	0x040000d4

c0de7774 <cx_bn_mod_mul>:
c0de7774:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7776:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de777a:	4803      	ldr	r0, [pc, #12]	@ (c0de7788 <cx_bn_mod_mul+0x14>)
c0de777c:	4669      	mov	r1, sp
c0de777e:	f7ff ff49 	bl	c0de7614 <SVC_cx_call>
c0de7782:	b004      	add	sp, #16
c0de7784:	bd80      	pop	{r7, pc}
c0de7786:	bf00      	nop
c0de7788:	040000d5 	.word	0x040000d5

c0de778c <cx_bn_reduce>:
c0de778c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de778e:	ab01      	add	r3, sp, #4
c0de7790:	c307      	stmia	r3!, {r0, r1, r2}
c0de7792:	4803      	ldr	r0, [pc, #12]	@ (c0de77a0 <cx_bn_reduce+0x14>)
c0de7794:	a901      	add	r1, sp, #4
c0de7796:	f7ff ff3d 	bl	c0de7614 <SVC_cx_call>
c0de779a:	b004      	add	sp, #16
c0de779c:	bd80      	pop	{r7, pc}
c0de779e:	bf00      	nop
c0de77a0:	030000d6 	.word	0x030000d6

c0de77a4 <cx_bn_mod_invert_nprime>:
c0de77a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de77a6:	ab01      	add	r3, sp, #4
c0de77a8:	c307      	stmia	r3!, {r0, r1, r2}
c0de77aa:	4803      	ldr	r0, [pc, #12]	@ (c0de77b8 <cx_bn_mod_invert_nprime+0x14>)
c0de77ac:	a901      	add	r1, sp, #4
c0de77ae:	f7ff ff31 	bl	c0de7614 <SVC_cx_call>
c0de77b2:	b004      	add	sp, #16
c0de77b4:	bd80      	pop	{r7, pc}
c0de77b6:	bf00      	nop
c0de77b8:	030000da 	.word	0x030000da

c0de77bc <cx_bn_is_prime>:
c0de77bc:	b5e0      	push	{r5, r6, r7, lr}
c0de77be:	e9cd 0100 	strd	r0, r1, [sp]
c0de77c2:	4802      	ldr	r0, [pc, #8]	@ (c0de77cc <cx_bn_is_prime+0x10>)
c0de77c4:	4669      	mov	r1, sp
c0de77c6:	f7ff ff25 	bl	c0de7614 <SVC_cx_call>
c0de77ca:	bd8c      	pop	{r2, r3, r7, pc}
c0de77cc:	020000ef 	.word	0x020000ef

c0de77d0 <cx_mont_alloc>:
c0de77d0:	b5e0      	push	{r5, r6, r7, lr}
c0de77d2:	e9cd 0100 	strd	r0, r1, [sp]
c0de77d6:	4802      	ldr	r0, [pc, #8]	@ (c0de77e0 <cx_mont_alloc+0x10>)
c0de77d8:	4669      	mov	r1, sp
c0de77da:	f7ff ff1b 	bl	c0de7614 <SVC_cx_call>
c0de77de:	bd8c      	pop	{r2, r3, r7, pc}
c0de77e0:	020000dc 	.word	0x020000dc

c0de77e4 <cx_mont_init>:
c0de77e4:	b5e0      	push	{r5, r6, r7, lr}
c0de77e6:	e9cd 0100 	strd	r0, r1, [sp]
c0de77ea:	4802      	ldr	r0, [pc, #8]	@ (c0de77f4 <cx_mont_init+0x10>)
c0de77ec:	4669      	mov	r1, sp
c0de77ee:	f7ff ff11 	bl	c0de7614 <SVC_cx_call>
c0de77f2:	bd8c      	pop	{r2, r3, r7, pc}
c0de77f4:	020000dd 	.word	0x020000dd

c0de77f8 <cx_mont_to_montgomery>:
c0de77f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de77fa:	ab01      	add	r3, sp, #4
c0de77fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de77fe:	4803      	ldr	r0, [pc, #12]	@ (c0de780c <cx_mont_to_montgomery+0x14>)
c0de7800:	a901      	add	r1, sp, #4
c0de7802:	f7ff ff07 	bl	c0de7614 <SVC_cx_call>
c0de7806:	b004      	add	sp, #16
c0de7808:	bd80      	pop	{r7, pc}
c0de780a:	bf00      	nop
c0de780c:	030000df 	.word	0x030000df

c0de7810 <cx_mont_from_montgomery>:
c0de7810:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7812:	ab01      	add	r3, sp, #4
c0de7814:	c307      	stmia	r3!, {r0, r1, r2}
c0de7816:	4803      	ldr	r0, [pc, #12]	@ (c0de7824 <cx_mont_from_montgomery+0x14>)
c0de7818:	a901      	add	r1, sp, #4
c0de781a:	f7ff fefb 	bl	c0de7614 <SVC_cx_call>
c0de781e:	b004      	add	sp, #16
c0de7820:	bd80      	pop	{r7, pc}
c0de7822:	bf00      	nop
c0de7824:	030000e0 	.word	0x030000e0

c0de7828 <cx_mont_mul>:
c0de7828:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de782a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de782e:	4803      	ldr	r0, [pc, #12]	@ (c0de783c <cx_mont_mul+0x14>)
c0de7830:	4669      	mov	r1, sp
c0de7832:	f7ff feef 	bl	c0de7614 <SVC_cx_call>
c0de7836:	b004      	add	sp, #16
c0de7838:	bd80      	pop	{r7, pc}
c0de783a:	bf00      	nop
c0de783c:	040000e1 	.word	0x040000e1

c0de7840 <cx_mont_pow>:
c0de7840:	b510      	push	{r4, lr}
c0de7842:	b086      	sub	sp, #24
c0de7844:	f10d 0c04 	add.w	ip, sp, #4
c0de7848:	9c08      	ldr	r4, [sp, #32]
c0de784a:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de784e:	4803      	ldr	r0, [pc, #12]	@ (c0de785c <cx_mont_pow+0x1c>)
c0de7850:	a901      	add	r1, sp, #4
c0de7852:	f7ff fedf 	bl	c0de7614 <SVC_cx_call>
c0de7856:	b006      	add	sp, #24
c0de7858:	bd10      	pop	{r4, pc}
c0de785a:	bf00      	nop
c0de785c:	050000e2 	.word	0x050000e2

c0de7860 <cx_mont_invert_nprime>:
c0de7860:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7862:	ab01      	add	r3, sp, #4
c0de7864:	c307      	stmia	r3!, {r0, r1, r2}
c0de7866:	4803      	ldr	r0, [pc, #12]	@ (c0de7874 <cx_mont_invert_nprime+0x14>)
c0de7868:	a901      	add	r1, sp, #4
c0de786a:	f7ff fed3 	bl	c0de7614 <SVC_cx_call>
c0de786e:	b004      	add	sp, #16
c0de7870:	bd80      	pop	{r7, pc}
c0de7872:	bf00      	nop
c0de7874:	030000e4 	.word	0x030000e4

c0de7878 <cx_ecdomain_parameters_length>:
c0de7878:	b5e0      	push	{r5, r6, r7, lr}
c0de787a:	e9cd 0100 	strd	r0, r1, [sp]
c0de787e:	4802      	ldr	r0, [pc, #8]	@ (c0de7888 <cx_ecdomain_parameters_length+0x10>)
c0de7880:	4669      	mov	r1, sp
c0de7882:	f7ff fec7 	bl	c0de7614 <SVC_cx_call>
c0de7886:	bd8c      	pop	{r2, r3, r7, pc}
c0de7888:	0200012f 	.word	0x0200012f

c0de788c <os_perso_derive_node_with_seed_key>:
c0de788c:	b510      	push	{r4, lr}
c0de788e:	b088      	sub	sp, #32
c0de7890:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7892:	9407      	str	r4, [sp, #28]
c0de7894:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7896:	9406      	str	r4, [sp, #24]
c0de7898:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de789a:	9405      	str	r4, [sp, #20]
c0de789c:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de789e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de78a2:	4803      	ldr	r0, [pc, #12]	@ (c0de78b0 <os_perso_derive_node_with_seed_key+0x24>)
c0de78a4:	4669      	mov	r1, sp
c0de78a6:	f7ff fead 	bl	c0de7604 <SVC_Call>
c0de78aa:	b008      	add	sp, #32
c0de78ac:	bd10      	pop	{r4, pc}
c0de78ae:	bf00      	nop
c0de78b0:	080000a6 	.word	0x080000a6

c0de78b4 <os_pki_load_certificate>:
c0de78b4:	b510      	push	{r4, lr}
c0de78b6:	b086      	sub	sp, #24
c0de78b8:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de78ba:	9405      	str	r4, [sp, #20]
c0de78bc:	9c08      	ldr	r4, [sp, #32]
c0de78be:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de78c2:	4803      	ldr	r0, [pc, #12]	@ (c0de78d0 <os_pki_load_certificate+0x1c>)
c0de78c4:	4669      	mov	r1, sp
c0de78c6:	f7ff fe9d 	bl	c0de7604 <SVC_Call>
c0de78ca:	b006      	add	sp, #24
c0de78cc:	bd10      	pop	{r4, pc}
c0de78ce:	bf00      	nop
c0de78d0:	060000aa 	.word	0x060000aa

c0de78d4 <os_perso_is_pin_set>:
c0de78d4:	b5e0      	push	{r5, r6, r7, lr}
c0de78d6:	2000      	movs	r0, #0
c0de78d8:	4669      	mov	r1, sp
c0de78da:	9001      	str	r0, [sp, #4]
c0de78dc:	209e      	movs	r0, #158	@ 0x9e
c0de78de:	f7ff fe91 	bl	c0de7604 <SVC_Call>
c0de78e2:	b2c0      	uxtb	r0, r0
c0de78e4:	bd8c      	pop	{r2, r3, r7, pc}

c0de78e6 <os_global_pin_is_validated>:
c0de78e6:	b5e0      	push	{r5, r6, r7, lr}
c0de78e8:	2000      	movs	r0, #0
c0de78ea:	4669      	mov	r1, sp
c0de78ec:	9001      	str	r0, [sp, #4]
c0de78ee:	20a0      	movs	r0, #160	@ 0xa0
c0de78f0:	f7ff fe88 	bl	c0de7604 <SVC_Call>
c0de78f4:	b2c0      	uxtb	r0, r0
c0de78f6:	bd8c      	pop	{r2, r3, r7, pc}

c0de78f8 <os_ux>:
c0de78f8:	b5e0      	push	{r5, r6, r7, lr}
c0de78fa:	f000 f877 	bl	c0de79ec <OUTLINED_FUNCTION_0>
c0de78fe:	4802      	ldr	r0, [pc, #8]	@ (c0de7908 <os_ux+0x10>)
c0de7900:	4669      	mov	r1, sp
c0de7902:	f7ff fe7f 	bl	c0de7604 <SVC_Call>
c0de7906:	bd8c      	pop	{r2, r3, r7, pc}
c0de7908:	01000064 	.word	0x01000064

c0de790c <os_lib_end>:
c0de790c:	b082      	sub	sp, #8
c0de790e:	2000      	movs	r0, #0
c0de7910:	4669      	mov	r1, sp
c0de7912:	9001      	str	r0, [sp, #4]
c0de7914:	2068      	movs	r0, #104	@ 0x68
c0de7916:	f7ff fe75 	bl	c0de7604 <SVC_Call>
c0de791a:	deff      	udf	#255	@ 0xff

c0de791c <os_flags>:
c0de791c:	b5e0      	push	{r5, r6, r7, lr}
c0de791e:	2000      	movs	r0, #0
c0de7920:	4669      	mov	r1, sp
c0de7922:	9001      	str	r0, [sp, #4]
c0de7924:	206a      	movs	r0, #106	@ 0x6a
c0de7926:	f7ff fe6d 	bl	c0de7604 <SVC_Call>
c0de792a:	bd8c      	pop	{r2, r3, r7, pc}

c0de792c <os_registry_get_current_app_tag>:
c0de792c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de792e:	ab01      	add	r3, sp, #4
c0de7930:	c307      	stmia	r3!, {r0, r1, r2}
c0de7932:	4803      	ldr	r0, [pc, #12]	@ (c0de7940 <os_registry_get_current_app_tag+0x14>)
c0de7934:	a901      	add	r1, sp, #4
c0de7936:	f7ff fe65 	bl	c0de7604 <SVC_Call>
c0de793a:	b004      	add	sp, #16
c0de793c:	bd80      	pop	{r7, pc}
c0de793e:	bf00      	nop
c0de7940:	03000074 	.word	0x03000074

c0de7944 <os_sched_exit>:
c0de7944:	b082      	sub	sp, #8
c0de7946:	f000 f851 	bl	c0de79ec <OUTLINED_FUNCTION_0>
c0de794a:	4802      	ldr	r0, [pc, #8]	@ (c0de7954 <os_sched_exit+0x10>)
c0de794c:	4669      	mov	r1, sp
c0de794e:	f7ff fe59 	bl	c0de7604 <SVC_Call>
c0de7952:	deff      	udf	#255	@ 0xff
c0de7954:	0100009a 	.word	0x0100009a

c0de7958 <os_io_init>:
c0de7958:	b5e0      	push	{r5, r6, r7, lr}
c0de795a:	9001      	str	r0, [sp, #4]
c0de795c:	4802      	ldr	r0, [pc, #8]	@ (c0de7968 <os_io_init+0x10>)
c0de795e:	a901      	add	r1, sp, #4
c0de7960:	f7ff fe50 	bl	c0de7604 <SVC_Call>
c0de7964:	bd8c      	pop	{r2, r3, r7, pc}
c0de7966:	bf00      	nop
c0de7968:	01000084 	.word	0x01000084

c0de796c <os_io_start>:
c0de796c:	b5e0      	push	{r5, r6, r7, lr}
c0de796e:	2000      	movs	r0, #0
c0de7970:	4669      	mov	r1, sp
c0de7972:	9001      	str	r0, [sp, #4]
c0de7974:	4801      	ldr	r0, [pc, #4]	@ (c0de797c <os_io_start+0x10>)
c0de7976:	f7ff fe45 	bl	c0de7604 <SVC_Call>
c0de797a:	bd8c      	pop	{r2, r3, r7, pc}
c0de797c:	01000085 	.word	0x01000085

c0de7980 <os_io_tx_cmd>:
c0de7980:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7982:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7986:	4803      	ldr	r0, [pc, #12]	@ (c0de7994 <os_io_tx_cmd+0x14>)
c0de7988:	4669      	mov	r1, sp
c0de798a:	f7ff fe3b 	bl	c0de7604 <SVC_Call>
c0de798e:	b004      	add	sp, #16
c0de7990:	bd80      	pop	{r7, pc}
c0de7992:	bf00      	nop
c0de7994:	04000088 	.word	0x04000088

c0de7998 <os_io_rx_evt>:
c0de7998:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de799a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de799e:	4803      	ldr	r0, [pc, #12]	@ (c0de79ac <os_io_rx_evt+0x14>)
c0de79a0:	4669      	mov	r1, sp
c0de79a2:	f7ff fe2f 	bl	c0de7604 <SVC_Call>
c0de79a6:	b004      	add	sp, #16
c0de79a8:	bd80      	pop	{r7, pc}
c0de79aa:	bf00      	nop
c0de79ac:	03000089 	.word	0x03000089

c0de79b0 <try_context_get>:
c0de79b0:	b5e0      	push	{r5, r6, r7, lr}
c0de79b2:	2000      	movs	r0, #0
c0de79b4:	4669      	mov	r1, sp
c0de79b6:	9001      	str	r0, [sp, #4]
c0de79b8:	2087      	movs	r0, #135	@ 0x87
c0de79ba:	f7ff fe23 	bl	c0de7604 <SVC_Call>
c0de79be:	bd8c      	pop	{r2, r3, r7, pc}

c0de79c0 <try_context_set>:
c0de79c0:	b5e0      	push	{r5, r6, r7, lr}
c0de79c2:	f000 f813 	bl	c0de79ec <OUTLINED_FUNCTION_0>
c0de79c6:	4802      	ldr	r0, [pc, #8]	@ (c0de79d0 <try_context_set+0x10>)
c0de79c8:	4669      	mov	r1, sp
c0de79ca:	f7ff fe1b 	bl	c0de7604 <SVC_Call>
c0de79ce:	bd8c      	pop	{r2, r3, r7, pc}
c0de79d0:	0100010b 	.word	0x0100010b

c0de79d4 <os_sched_last_status>:
c0de79d4:	b5e0      	push	{r5, r6, r7, lr}
c0de79d6:	f000 f809 	bl	c0de79ec <OUTLINED_FUNCTION_0>
c0de79da:	4803      	ldr	r0, [pc, #12]	@ (c0de79e8 <os_sched_last_status+0x14>)
c0de79dc:	4669      	mov	r1, sp
c0de79de:	f7ff fe11 	bl	c0de7604 <SVC_Call>
c0de79e2:	b2c0      	uxtb	r0, r0
c0de79e4:	bd8c      	pop	{r2, r3, r7, pc}
c0de79e6:	bf00      	nop
c0de79e8:	0100009c 	.word	0x0100009c

c0de79ec <OUTLINED_FUNCTION_0>:
c0de79ec:	2100      	movs	r1, #0
c0de79ee:	e9cd 0100 	strd	r0, r1, [sp]
c0de79f2:	4770      	bx	lr

c0de79f4 <__udivmoddi4>:
c0de79f4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de79f8:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de79fc:	4604      	mov	r4, r0
c0de79fe:	b179      	cbz	r1, c0de7a20 <__udivmoddi4+0x2c>
c0de7a00:	b1ba      	cbz	r2, c0de7a32 <__udivmoddi4+0x3e>
c0de7a02:	b35b      	cbz	r3, c0de7a5c <__udivmoddi4+0x68>
c0de7a04:	fab1 f581 	clz	r5, r1
c0de7a08:	fab3 f683 	clz	r6, r3
c0de7a0c:	1b75      	subs	r5, r6, r5
c0de7a0e:	2d20      	cmp	r5, #32
c0de7a10:	d34a      	bcc.n	c0de7aa8 <__udivmoddi4+0xb4>
c0de7a12:	f1bc 0f00 	cmp.w	ip, #0
c0de7a16:	bf18      	it	ne
c0de7a18:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7a1c:	2400      	movs	r4, #0
c0de7a1e:	e066      	b.n	c0de7aee <__udivmoddi4+0xfa>
c0de7a20:	b3cb      	cbz	r3, c0de7a96 <__udivmoddi4+0xa2>
c0de7a22:	2100      	movs	r1, #0
c0de7a24:	f1bc 0f00 	cmp.w	ip, #0
c0de7a28:	bf18      	it	ne
c0de7a2a:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7a2e:	2400      	movs	r4, #0
c0de7a30:	e0a6      	b.n	c0de7b80 <__udivmoddi4+0x18c>
c0de7a32:	2b00      	cmp	r3, #0
c0de7a34:	d03e      	beq.n	c0de7ab4 <__udivmoddi4+0xc0>
c0de7a36:	2800      	cmp	r0, #0
c0de7a38:	d04f      	beq.n	c0de7ada <__udivmoddi4+0xe6>
c0de7a3a:	1e5d      	subs	r5, r3, #1
c0de7a3c:	422b      	tst	r3, r5
c0de7a3e:	d158      	bne.n	c0de7af2 <__udivmoddi4+0xfe>
c0de7a40:	f1bc 0f00 	cmp.w	ip, #0
c0de7a44:	bf1c      	itt	ne
c0de7a46:	ea05 0001 	andne.w	r0, r5, r1
c0de7a4a:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7a4e:	fa93 f0a3 	rbit	r0, r3
c0de7a52:	fab0 f080 	clz	r0, r0
c0de7a56:	fa21 f400 	lsr.w	r4, r1, r0
c0de7a5a:	e048      	b.n	c0de7aee <__udivmoddi4+0xfa>
c0de7a5c:	1e55      	subs	r5, r2, #1
c0de7a5e:	422a      	tst	r2, r5
c0de7a60:	d129      	bne.n	c0de7ab6 <__udivmoddi4+0xc2>
c0de7a62:	f1bc 0f00 	cmp.w	ip, #0
c0de7a66:	bf1e      	ittt	ne
c0de7a68:	2300      	movne	r3, #0
c0de7a6a:	4005      	andne	r5, r0
c0de7a6c:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7a70:	2a01      	cmp	r2, #1
c0de7a72:	f000 8085 	beq.w	c0de7b80 <__udivmoddi4+0x18c>
c0de7a76:	fa92 f2a2 	rbit	r2, r2
c0de7a7a:	004c      	lsls	r4, r1, #1
c0de7a7c:	fab2 f282 	clz	r2, r2
c0de7a80:	f002 031f 	and.w	r3, r2, #31
c0de7a84:	40d1      	lsrs	r1, r2
c0de7a86:	40d8      	lsrs	r0, r3
c0de7a88:	231f      	movs	r3, #31
c0de7a8a:	4393      	bics	r3, r2
c0de7a8c:	fa04 f303 	lsl.w	r3, r4, r3
c0de7a90:	ea43 0400 	orr.w	r4, r3, r0
c0de7a94:	e074      	b.n	c0de7b80 <__udivmoddi4+0x18c>
c0de7a96:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7a9a:	f1bc 0f00 	cmp.w	ip, #0
c0de7a9e:	d026      	beq.n	c0de7aee <__udivmoddi4+0xfa>
c0de7aa0:	fb04 0012 	mls	r0, r4, r2, r0
c0de7aa4:	2100      	movs	r1, #0
c0de7aa6:	e020      	b.n	c0de7aea <__udivmoddi4+0xf6>
c0de7aa8:	f105 0e01 	add.w	lr, r5, #1
c0de7aac:	f1be 0f20 	cmp.w	lr, #32
c0de7ab0:	d00b      	beq.n	c0de7aca <__udivmoddi4+0xd6>
c0de7ab2:	e028      	b.n	c0de7b06 <__udivmoddi4+0x112>
c0de7ab4:	e064      	b.n	c0de7b80 <__udivmoddi4+0x18c>
c0de7ab6:	fab1 f481 	clz	r4, r1
c0de7aba:	fab2 f582 	clz	r5, r2
c0de7abe:	1b2c      	subs	r4, r5, r4
c0de7ac0:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7ac4:	f1be 0f20 	cmp.w	lr, #32
c0de7ac8:	d15d      	bne.n	c0de7b86 <__udivmoddi4+0x192>
c0de7aca:	f04f 0e20 	mov.w	lr, #32
c0de7ace:	f04f 0a00 	mov.w	sl, #0
c0de7ad2:	f04f 0b00 	mov.w	fp, #0
c0de7ad6:	460e      	mov	r6, r1
c0de7ad8:	e021      	b.n	c0de7b1e <__udivmoddi4+0x12a>
c0de7ada:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7ade:	f1bc 0f00 	cmp.w	ip, #0
c0de7ae2:	d004      	beq.n	c0de7aee <__udivmoddi4+0xfa>
c0de7ae4:	2000      	movs	r0, #0
c0de7ae6:	fb04 1113 	mls	r1, r4, r3, r1
c0de7aea:	e9cc 0100 	strd	r0, r1, [ip]
c0de7aee:	2100      	movs	r1, #0
c0de7af0:	e046      	b.n	c0de7b80 <__udivmoddi4+0x18c>
c0de7af2:	fab1 f581 	clz	r5, r1
c0de7af6:	fab3 f683 	clz	r6, r3
c0de7afa:	1b75      	subs	r5, r6, r5
c0de7afc:	2d1f      	cmp	r5, #31
c0de7afe:	f4bf af88 	bcs.w	c0de7a12 <__udivmoddi4+0x1e>
c0de7b02:	f105 0e01 	add.w	lr, r5, #1
c0de7b06:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7b0a:	f1c5 051f 	rsb	r5, r5, #31
c0de7b0e:	fa01 f605 	lsl.w	r6, r1, r5
c0de7b12:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7b16:	40a8      	lsls	r0, r5
c0de7b18:	f04f 0a00 	mov.w	sl, #0
c0de7b1c:	4326      	orrs	r6, r4
c0de7b1e:	f04f 0800 	mov.w	r8, #0
c0de7b22:	f1be 0f00 	cmp.w	lr, #0
c0de7b26:	d01c      	beq.n	c0de7b62 <__udivmoddi4+0x16e>
c0de7b28:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7b2c:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7b30:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7b34:	0076      	lsls	r6, r6, #1
c0de7b36:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7b3a:	1aae      	subs	r6, r5, r2
c0de7b3c:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7b40:	43cf      	mvns	r7, r1
c0de7b42:	43ec      	mvns	r4, r5
c0de7b44:	18a4      	adds	r4, r4, r2
c0de7b46:	eb57 0403 	adcs.w	r4, r7, r3
c0de7b4a:	bf5c      	itt	pl
c0de7b4c:	468b      	movpl	fp, r1
c0de7b4e:	462e      	movpl	r6, r5
c0de7b50:	0040      	lsls	r0, r0, #1
c0de7b52:	0fe1      	lsrs	r1, r4, #31
c0de7b54:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7b58:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7b5c:	46a2      	mov	sl, r4
c0de7b5e:	4688      	mov	r8, r1
c0de7b60:	e7df      	b.n	c0de7b22 <__udivmoddi4+0x12e>
c0de7b62:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7b66:	f1bc 0f00 	cmp.w	ip, #0
c0de7b6a:	bf18      	it	ne
c0de7b6c:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7b70:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7b74:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7b78:	f020 0001 	bic.w	r0, r0, #1
c0de7b7c:	ea40 0408 	orr.w	r4, r0, r8
c0de7b80:	4620      	mov	r0, r4
c0de7b82:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7b86:	f1be 0f1f 	cmp.w	lr, #31
c0de7b8a:	d804      	bhi.n	c0de7b96 <__udivmoddi4+0x1a2>
c0de7b8c:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7b90:	f1ce 0520 	rsb	r5, lr, #32
c0de7b94:	e7bb      	b.n	c0de7b0e <__udivmoddi4+0x11a>
c0de7b96:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7b9a:	f1ae 0420 	sub.w	r4, lr, #32
c0de7b9e:	f04f 0b00 	mov.w	fp, #0
c0de7ba2:	fa20 f504 	lsr.w	r5, r0, r4
c0de7ba6:	fa01 f607 	lsl.w	r6, r1, r7
c0de7baa:	fa00 fa07 	lsl.w	sl, r0, r7
c0de7bae:	ea46 0805 	orr.w	r8, r6, r5
c0de7bb2:	fa21 f604 	lsr.w	r6, r1, r4
c0de7bb6:	4640      	mov	r0, r8
c0de7bb8:	e7b1      	b.n	c0de7b1e <__udivmoddi4+0x12a>
	...

c0de7bbc <__aeabi_memcpy>:
c0de7bbc:	f000 b81c 	b.w	c0de7bf8 <memcpy>

c0de7bc0 <__aeabi_memmove>:
c0de7bc0:	f000 b828 	b.w	c0de7c14 <memmove>

c0de7bc4 <__aeabi_memset>:
c0de7bc4:	460b      	mov	r3, r1
c0de7bc6:	4611      	mov	r1, r2
c0de7bc8:	461a      	mov	r2, r3
c0de7bca:	f000 b83d 	b.w	c0de7c48 <memset>
c0de7bce:	bf00      	nop

c0de7bd0 <__aeabi_memclr>:
c0de7bd0:	460a      	mov	r2, r1
c0de7bd2:	2100      	movs	r1, #0
c0de7bd4:	f000 b838 	b.w	c0de7c48 <memset>

c0de7bd8 <__aeabi_uldivmod>:
c0de7bd8:	b540      	push	{r6, lr}
c0de7bda:	b084      	sub	sp, #16
c0de7bdc:	ae02      	add	r6, sp, #8
c0de7bde:	9600      	str	r6, [sp, #0]
c0de7be0:	f7ff ff08 	bl	c0de79f4 <__udivmoddi4>
c0de7be4:	9a02      	ldr	r2, [sp, #8]
c0de7be6:	9b03      	ldr	r3, [sp, #12]
c0de7be8:	b004      	add	sp, #16
c0de7bea:	bd40      	pop	{r6, pc}

c0de7bec <explicit_bzero>:
c0de7bec:	f000 b800 	b.w	c0de7bf0 <bzero>

c0de7bf0 <bzero>:
c0de7bf0:	460a      	mov	r2, r1
c0de7bf2:	2100      	movs	r1, #0
c0de7bf4:	f000 b828 	b.w	c0de7c48 <memset>

c0de7bf8 <memcpy>:
c0de7bf8:	440a      	add	r2, r1
c0de7bfa:	4291      	cmp	r1, r2
c0de7bfc:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7c00:	d100      	bne.n	c0de7c04 <memcpy+0xc>
c0de7c02:	4770      	bx	lr
c0de7c04:	b510      	push	{r4, lr}
c0de7c06:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7c0a:	4291      	cmp	r1, r2
c0de7c0c:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7c10:	d1f9      	bne.n	c0de7c06 <memcpy+0xe>
c0de7c12:	bd10      	pop	{r4, pc}

c0de7c14 <memmove>:
c0de7c14:	4288      	cmp	r0, r1
c0de7c16:	b510      	push	{r4, lr}
c0de7c18:	eb01 0402 	add.w	r4, r1, r2
c0de7c1c:	d902      	bls.n	c0de7c24 <memmove+0x10>
c0de7c1e:	4284      	cmp	r4, r0
c0de7c20:	4623      	mov	r3, r4
c0de7c22:	d807      	bhi.n	c0de7c34 <memmove+0x20>
c0de7c24:	1e43      	subs	r3, r0, #1
c0de7c26:	42a1      	cmp	r1, r4
c0de7c28:	d008      	beq.n	c0de7c3c <memmove+0x28>
c0de7c2a:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7c2e:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7c32:	e7f8      	b.n	c0de7c26 <memmove+0x12>
c0de7c34:	4601      	mov	r1, r0
c0de7c36:	4402      	add	r2, r0
c0de7c38:	428a      	cmp	r2, r1
c0de7c3a:	d100      	bne.n	c0de7c3e <memmove+0x2a>
c0de7c3c:	bd10      	pop	{r4, pc}
c0de7c3e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7c42:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7c46:	e7f7      	b.n	c0de7c38 <memmove+0x24>

c0de7c48 <memset>:
c0de7c48:	4603      	mov	r3, r0
c0de7c4a:	4402      	add	r2, r0
c0de7c4c:	4293      	cmp	r3, r2
c0de7c4e:	d100      	bne.n	c0de7c52 <memset+0xa>
c0de7c50:	4770      	bx	lr
c0de7c52:	f803 1b01 	strb.w	r1, [r3], #1
c0de7c56:	e7f9      	b.n	c0de7c4c <memset+0x4>

c0de7c58 <setjmp>:
c0de7c58:	46ec      	mov	ip, sp
c0de7c5a:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7c5e:	f04f 0000 	mov.w	r0, #0
c0de7c62:	4770      	bx	lr

c0de7c64 <longjmp>:
c0de7c64:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7c68:	46e5      	mov	sp, ip
c0de7c6a:	0008      	movs	r0, r1
c0de7c6c:	bf08      	it	eq
c0de7c6e:	2001      	moveq	r0, #1
c0de7c70:	4770      	bx	lr
c0de7c72:	bf00      	nop

c0de7c74 <strcmp>:
c0de7c74:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7c78:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7c7c:	2a01      	cmp	r2, #1
c0de7c7e:	bf28      	it	cs
c0de7c80:	429a      	cmpcs	r2, r3
c0de7c82:	d0f7      	beq.n	c0de7c74 <strcmp>
c0de7c84:	1ad0      	subs	r0, r2, r3
c0de7c86:	4770      	bx	lr

c0de7c88 <strlen>:
c0de7c88:	4603      	mov	r3, r0
c0de7c8a:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7c8e:	2a00      	cmp	r2, #0
c0de7c90:	d1fb      	bne.n	c0de7c8a <strlen+0x2>
c0de7c92:	1a18      	subs	r0, r3, r0
c0de7c94:	3801      	subs	r0, #1
c0de7c96:	4770      	bx	lr

c0de7c98 <strncmp>:
c0de7c98:	b510      	push	{r4, lr}
c0de7c9a:	b16a      	cbz	r2, c0de7cb8 <strncmp+0x20>
c0de7c9c:	3901      	subs	r1, #1
c0de7c9e:	1884      	adds	r4, r0, r2
c0de7ca0:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7ca4:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7ca8:	429a      	cmp	r2, r3
c0de7caa:	d103      	bne.n	c0de7cb4 <strncmp+0x1c>
c0de7cac:	42a0      	cmp	r0, r4
c0de7cae:	d001      	beq.n	c0de7cb4 <strncmp+0x1c>
c0de7cb0:	2a00      	cmp	r2, #0
c0de7cb2:	d1f5      	bne.n	c0de7ca0 <strncmp+0x8>
c0de7cb4:	1ad0      	subs	r0, r2, r3
c0de7cb6:	bd10      	pop	{r4, pc}
c0de7cb8:	4610      	mov	r0, r2
c0de7cba:	e7fc      	b.n	c0de7cb6 <strncmp+0x1e>

c0de7cbc <strncpy>:
c0de7cbc:	4603      	mov	r3, r0
c0de7cbe:	b510      	push	{r4, lr}
c0de7cc0:	3901      	subs	r1, #1
c0de7cc2:	b132      	cbz	r2, c0de7cd2 <strncpy+0x16>
c0de7cc4:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7cc8:	3a01      	subs	r2, #1
c0de7cca:	f803 4b01 	strb.w	r4, [r3], #1
c0de7cce:	2c00      	cmp	r4, #0
c0de7cd0:	d1f7      	bne.n	c0de7cc2 <strncpy+0x6>
c0de7cd2:	2100      	movs	r1, #0
c0de7cd4:	441a      	add	r2, r3
c0de7cd6:	4293      	cmp	r3, r2
c0de7cd8:	d100      	bne.n	c0de7cdc <strncpy+0x20>
c0de7cda:	bd10      	pop	{r4, pc}
c0de7cdc:	f803 1b01 	strb.w	r1, [r3], #1
c0de7ce0:	e7f9      	b.n	c0de7cd6 <strncpy+0x1a>

c0de7ce2 <C_home_boilerplate_14px_bitmap>:
c0de7ce2:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de7cf2:	fc7b df0f 7ffe 7ff8                          {........

c0de7cfb <C_home_boilerplate_14px>:
c0de7cfb:	000e 000e 0000 7ce2 c0de                    .......|..

c0de7d05 <C_Information_circle_14px_bitmap>:
c0de7d05:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de7d15:	e7ff 8fff 1ffc 1ee0                          .........

c0de7d1e <C_Information_circle_14px>:
c0de7d1e:	000e 000e 0000 7d05 c0de                    .......}..

c0de7d28 <C_Quit_14px_bitmap>:
c0de7d28:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7d38:	6680 9801 7f06 fff9                          .f.......

c0de7d41 <C_Quit_14px>:
c0de7d41:	000e 000e 0000 7d28 c0de                    ......(}..

c0de7d4b <C_Switch_Off_8px_bitmap>:
c0de7d4b:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de7d57 <C_Switch_Off_8px>:
c0de7d57:	000c 0008 0000 7d4b c0de                    ......K}..

c0de7d61 <C_Switch_On_8px_bitmap>:
c0de7d61:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7d6d <C_Switch_On_8px>:
c0de7d6d:	000c 0008 0000 7d61 c0de                    ......a}..

c0de7d77 <C_icon_back_x_bitmap>:
c0de7d77:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7d87:	003f 0078 00c0 0000                          ?.x......

c0de7d90 <C_icon_back_x>:
c0de7d90:	000e 000e 0000 7d77 c0de                    ......w}..

c0de7d9a <C_icon_coggle_bitmap>:
c0de7d9a:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de7daa:	807f 00b4 00c0 0000                          .........

c0de7db3 <C_icon_coggle>:
c0de7db3:	000e 000e 0000 7d9a c0de                    .......}..

c0de7dbd <C_icon_crossmark_bitmap>:
c0de7dbd:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7dcd:	8373 1c87 600e 0018                          s....`...

c0de7dd6 <C_icon_crossmark>:
c0de7dd6:	000e 000e 0000 7dbd c0de                    .......}..

c0de7de0 <C_icon_down_bitmap>:
c0de7de0:	2184 8024                                   .!$.

c0de7de4 <C_icon_down>:
c0de7de4:	0007 0004 0000 7de0 c0de                    .......}..

c0de7dee <C_icon_left_bitmap>:
c0de7dee:	8882 80a0                                   ....

c0de7df2 <C_icon_left>:
c0de7df2:	0004 0007 0000 7dee c0de                    .......}..

c0de7dfc <C_icon_processing_bitmap>:
c0de7dfc:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7e0c:	8361 04b7 03c8 0000                          a........

c0de7e15 <C_icon_processing>:
c0de7e15:	000e 000e 0000 7dfc c0de                    .......}..

c0de7e1f <C_icon_right_bitmap>:
c0de7e1f:	5110 1014                                   .Q..

c0de7e23 <C_icon_right>:
c0de7e23:	0004 0007 0000 7e1f c0de                    .......~..

c0de7e2d <C_icon_up_bitmap>:
c0de7e2d:	4812 1042                                   .HB.

c0de7e31 <C_icon_up>:
c0de7e31:	0007 0004 0000 7e2d c0de                    ......-~..

c0de7e3b <C_icon_validate_14_bitmap>:
c0de7e3b:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7e4b:	a3b3 a3a3 f0b2                               ......P

c0de7e52 <C_icon_validate_14>:
c0de7e52:	000e 000e 0100 7e3b c0de                    ......;~..

c0de7e5c <C_icon_warning_bitmap>:
c0de7e5c:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7e6c:	e01f 801f 001e 0018                          .........

c0de7e75 <C_icon_warning>:
c0de7e75:	000e 000e 0000 7e5c c0de                    ......\~..

c0de7e7f <C_app_boilerplate_14px_bitmap>:
c0de7e7f:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7e8f:	0384 00f0 0000 0000                          .........

c0de7e98 <C_app_boilerplate_14px>:
c0de7e98:	000e 000e 0000 7e7f c0de 7544 6d6d 2079     .......~..Dummy 
c0de7ea8:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de7eb8:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de7ec8:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de7ed8:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de7ee8:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de7ef8:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de7f08:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de7f18:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de7f28:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de7f38:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de7f48:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de7f58:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de7f68:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de7f78:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de7f88:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de7f98:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de7fa8:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de7fb8:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de7fc8:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de7fd8:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de7fe8:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de7ff8:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de8008:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de8018:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de8028:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de8038:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de8048:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de8058:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de8068:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de8078:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de8088:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de8098:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de80a8:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de80b8:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de80c8:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de80d8:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de80e8:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de80f8:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de8108:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de8118:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de8128:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de8138:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de8148:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de8158:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de8168:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de8178:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de8188:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de8198:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de81a8:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de81b8:	6173 7463 6f69 0a6e 6f74 2820 6170 7472     saction.to (part
c0de81c8:	6169 296c 7320 6769 006e 4b5a 4f4e 4858     ial) sign.ZKNOXH
c0de81d8:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0de81e8:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de81f8:	6501 d5c4 445f b317 e968 545a 1a00 3230     .e.._D..h.ZT..02
c0de8208:	b03c e84f 3e34 d45a 4584 6323 98a5 59d0     <.O.4>Z..E#c...Y
c0de8218:	ed73 53a7 9d29 487d 3933 08d8 a109 05d8     s..S).}H39......
c0de8228:	bd53 02a4 feff fe5b ffff ffff 0000 0100     S.....[.........
c0de8238:	ce05 c698 051b 7ff4 eae2 a5e9 bd42 f699     ............B...
c0de8248:	e7b2 4682 1623 b540 9545 bffe 1ed5 53b8     ...F#.@.E......S
c0de8258:	0001 0000 0000 0000 0002 0000 0000 0000     ................
c0de8268:	0003 0000 0000 0000 0004 0000 0000 0000     ................
c0de8278:	a005 91c0 8356 988b af28 123f e167 e675     ....V...(.?.g.u.
c0de8288:	84e2 9dc7 6d1b d08a 0acd d9e0 9057 6e33     .....m......W.3n
c0de8298:	c61c 38ee 9c13 111c 2302 7a53 e78c 069d     ...8.....#Sz....
c0de82a8:	587e 10cc c667 b7fb b3d8 b0a1 fc8d 088f     ~X..g...........
c0de82b8:	4d27 e8bc 51d1 9679 c09b 9fd4 25a7 dfbd     'M...Qy......%..
c0de82c8:	e59d e055 6aba 3c69 db6a fc52 e79e 2ca8     ..U..ji<j.R....,
c0de82d8:	fb1c d469 67ca 525f ce0c 0276 6802 0076     ..i..g_R..v..hv.
c0de82e8:	8fff 0087 1974 7104 fd74 b506 7628 e1e7     ....t..qt...(v..
c0de82f8:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8308:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.
c0de8318:	a570 4a89 4464 3854 15d0 32ac 36ba 090f     p..JdDT8...2.6..
c0de8328:	de2c ba44 1fb1 b7c2 b5d4 d2c0 2216 ce8c     ,.D.........."..
c0de8338:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8348:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..
c0de8358:	d059 a598 2363 8445 5ad4 343e 4fe8 3cb0     Y...c#E..Z>4.O.<
c0de8368:	3032 001a 5a54 68e9 17b3 5f44 c4d5 0165     20..TZ.h..D_..e.
	...
c0de8394:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de83a4:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de83b4:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de83c4:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de83d4:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de83e4:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de83f4:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de8414:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de8424:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de8434:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de8444:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de8454:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de8464:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de8474:	2d87 8b7d                                   .-}.

c0de8478 <.L__const.handler_cmd_Poseidon.input>:
c0de8478:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8488:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8498:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de84a8:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de84b8:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de84c8:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de84d8:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de84e8:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de84f8:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8508:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8518 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de8534:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de8544:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de8554:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de8564:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de8574:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de8584:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de8594:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de85a4:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de85b4:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de85d4:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de85e4:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de85f4:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de8604:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de8614:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de8624:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de8634:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de8644:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de8654:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de8674:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de8684:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de8694:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de86a4:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de86b4:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de86c4:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de86d4:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de86e4:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de86f4:	9b44 9ffb                                   D...

c0de86f8 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de8714:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de8724:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de8734:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de8744:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de8754:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de8764:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de8774:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de8784:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de8794:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de87b4:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de87c4:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de87d4:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de87e4:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de87f4:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de8804:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de8814:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de8824:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de8834:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de8854:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de8864:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de8874:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de8884:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de8894:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de88a4:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de88b4:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de88c4:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de88d4:	8132 74b1                                   2..t

c0de88d8 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de88d8:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de88e8:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de88f8:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8908:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8918:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8928:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8938 <.L__const.handler_cmd_conciliation.commitmentlist_be>:
	...
c0de8954:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0de8964:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0de8974:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0de8984:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0de8994:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0de89a4:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0de89b4:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0de89c4:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0de89d4:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0de89f4:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0de8a04:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0de8a14:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0de8a24:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0de8a34:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0de8a44:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0de8a54:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0de8a64:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0de8a74:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0de8a94:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0de8aa4:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0de8ab4:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0de8ac4:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0de8ad4:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0de8ae4:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0de8af4:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0de8b04:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0de8b14:	b87c 6a30                                   |.0j

c0de8b18 <.L__const.handler_cmd_conciliation.groupkey_be>:
c0de8b18:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0de8b28:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0de8b38:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8b48:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0de8b58 <settingContents>:
c0de8b58:	0000 0000 8b74 c0de 0001 0000               ....t.......

c0de8b64 <infoList>:
c0de8b64:	8bac c0de 8bb4 c0de 0000 0000 0002 0000     ................

c0de8b74 <contents>:
c0de8b74:	0007 0000 035c da7a 0002 0000 0000 0000     ....\.z.........
	...
c0de8ba8:	1b05 c0de                                   ....

c0de8bac <INFO_TYPES>:
c0de8bac:	8052 c0de 7fa7 c0de                         R.......

c0de8bb4 <INFO_CONTENTS>:
c0de8bb4:	7ed1 c0de 8194 c0de                         .~......

c0de8bbc <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8bdc:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8bec:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8bfc <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8bfc:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8c0c:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8c1c:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8c2c:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8c3c:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8c4c:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8c5c:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8c6c:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8c7c:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8c8c:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de8c9c:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8cac:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8cbc:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8ccc:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8cdc:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8cec:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8cfc:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de8d0c:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de8d1c:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8d2c:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8d3c:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de8d4c:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8d5c:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8d6c:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8d7c:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8d8c:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de8d9c:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8dac:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de8dbc:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de8dcc:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de8ddc:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de8dec:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de8dfc:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de8e0c:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de8e1c:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8e2c:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8e3c:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de8e4c:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8e5c:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8e6c:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8e7c:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8e8c:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8e9c:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8eac:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8ebc:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8ecc:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8edc:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8eec:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8efc:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8f0c:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8f1c:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8f2c:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8f3c:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8f4c:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8f5c:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8f6c:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8f7c:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8f8c:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8f9c:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8fac:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8fbc:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8fcc:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8fdc:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8fec:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8ffc:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de900c:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de901c:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de902c:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de903c:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de904c:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de905c:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de906c:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de907c <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de907c:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de908c:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de909c <blindSigningWarning>:
c0de909c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de90c8 <g_pcHex>:
c0de90c8:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de90d8 <g_pcHex_cap>:
c0de90d8:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de90e8 <_etext>:
	...

c0de9200 <N_storage_real>:
	...

c0de9400 <install_parameters>:
c0de9400:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9410:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9420:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9430:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
