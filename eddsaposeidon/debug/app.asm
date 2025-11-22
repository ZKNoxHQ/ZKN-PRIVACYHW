
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 f921 	bl	c0de724c <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fe6b 	bl	c0de6cf0 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fe32 	bl	c0de6c84 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fe23 	bl	c0de6c6e <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fdbd 	bl	c0de7bb4 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f007 f89b 	bl	c0de7178 <assert_exit>
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
c0de0056:	f007 f841 	bl	c0de70dc <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fd9a 	bl	c0de7ba0 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f007 f87d 	bl	c0de7178 <assert_exit>
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
c0de035a:	f006 fc2f 	bl	c0de6bbc <io_send_response_buffers>
c0de035e:	bd80      	pop	{r7, pc}

c0de0360 <OUTLINED_FUNCTION_0>:
c0de0360:	9001      	str	r0, [sp, #4]
c0de0362:	7920      	ldrb	r0, [r4, #4]
c0de0364:	9002      	str	r0, [sp, #8]
c0de0366:	4770      	bx	lr

c0de0368 <app_main>:
c0de0368:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de036a:	f006 fc09 	bl	c0de6b80 <io_init>
c0de036e:	481e      	ldr	r0, [pc, #120]	@ (c0de03e8 <app_main+0x80>)
c0de0370:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0374:	b908      	cbnz	r0, c0de037a <app_main+0x12>
c0de0376:	f001 fb7d 	bl	c0de1a74 <ui_menu_main>
c0de037a:	481c      	ldr	r0, [pc, #112]	@ (c0de03ec <app_main+0x84>)
c0de037c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0380:	4448      	add	r0, r9
c0de0382:	f007 fc25 	bl	c0de7bd0 <explicit_bzero>
c0de0386:	481b      	ldr	r0, [pc, #108]	@ (c0de03f4 <app_main+0x8c>)
c0de0388:	4478      	add	r0, pc
c0de038a:	f007 f907 	bl	c0de759c <pic>
c0de038e:	7880      	ldrb	r0, [r0, #2]
c0de0390:	2801      	cmp	r0, #1
c0de0392:	d00d      	beq.n	c0de03b0 <app_main+0x48>
c0de0394:	2001      	movs	r0, #1
c0de0396:	f88d 0002 	strb.w	r0, [sp, #2]
c0de039a:	2000      	movs	r0, #0
c0de039c:	f8ad 0000 	strh.w	r0, [sp]
c0de03a0:	4815      	ldr	r0, [pc, #84]	@ (c0de03f8 <app_main+0x90>)
c0de03a2:	4478      	add	r0, pc
c0de03a4:	f007 f8fa 	bl	c0de759c <pic>
c0de03a8:	4669      	mov	r1, sp
c0de03aa:	2203      	movs	r2, #3
c0de03ac:	f007 f926 	bl	c0de75fc <nvm_write>
c0de03b0:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03f0 <app_main+0x88>)
c0de03b2:	ac01      	add	r4, sp, #4
c0de03b4:	f006 fbec 	bl	c0de6b90 <io_recv_command>
c0de03b8:	2800      	cmp	r0, #0
c0de03ba:	d414      	bmi.n	c0de03e6 <app_main+0x7e>
c0de03bc:	4602      	mov	r2, r0
c0de03be:	eb09 0105 	add.w	r1, r9, r5
c0de03c2:	4620      	mov	r0, r4
c0de03c4:	f006 fce4 	bl	c0de6d90 <apdu_parser>
c0de03c8:	b130      	cbz	r0, c0de03d8 <app_main+0x70>
c0de03ca:	4620      	mov	r0, r4
c0de03cc:	f7ff fe51 	bl	c0de0072 <apdu_dispatcher>
c0de03d0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03d4:	dcee      	bgt.n	c0de03b4 <app_main+0x4c>
c0de03d6:	e006      	b.n	c0de03e6 <app_main+0x7e>
c0de03d8:	2000      	movs	r0, #0
c0de03da:	2100      	movs	r1, #0
c0de03dc:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03e0:	f006 fbec 	bl	c0de6bbc <io_send_response_buffers>
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
c0de0402:	f007 f8cb 	bl	c0de759c <pic>
c0de0406:	2100      	movs	r1, #0
c0de0408:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de040c:	9103      	str	r1, [sp, #12]
c0de040e:	2107      	movs	r1, #7
c0de0410:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0414:	a801      	add	r0, sp, #4
c0de0416:	2101      	movs	r1, #1
c0de0418:	f006 fbd0 	bl	c0de6bbc <io_send_response_buffers>
c0de041c:	b004      	add	sp, #16
c0de041e:	bd80      	pop	{r7, pc}
c0de0420:	00007db2 	.word	0x00007db2

c0de0424 <handler_get_public_key>:
c0de0424:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0426:	b085      	sub	sp, #20
c0de0428:	4f23      	ldr	r7, [pc, #140]	@ (c0de04b8 <handler_get_public_key+0x94>)
c0de042a:	460c      	mov	r4, r1
c0de042c:	4605      	mov	r5, r0
c0de042e:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0432:	eb09 0607 	add.w	r6, r9, r7
c0de0436:	4630      	mov	r0, r6
c0de0438:	f007 fbca 	bl	c0de7bd0 <explicit_bzero>
c0de043c:	2000      	movs	r0, #0
c0de043e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0442:	f809 0007 	strb.w	r0, [r9, r7]
c0de0446:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de044a:	4628      	mov	r0, r5
c0de044c:	f006 f964 	bl	c0de6718 <buffer_read_u8>
c0de0450:	b308      	cbz	r0, c0de0496 <handler_get_public_key+0x72>
c0de0452:	eb09 0007 	add.w	r0, r9, r7
c0de0456:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de045a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de045e:	4628      	mov	r0, r5
c0de0460:	f006 f9ad 	bl	c0de67be <buffer_read_bip32_path>
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
c0de048c:	f006 fa58 	bl	c0de6940 <bip32_derive_with_seed_get_pubkey_256>
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
c0de04c4:	f006 fb7a 	bl	c0de6bbc <io_send_response_buffers>
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
c0de04f0:	f006 fb64 	bl	c0de6bbc <io_send_response_buffers>
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
c0de0532:	f007 fb4d 	bl	c0de7bd0 <explicit_bzero>
c0de0536:	2000      	movs	r0, #0
c0de0538:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de053c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0540:	2001      	movs	r0, #1
c0de0542:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0546:	4620      	mov	r0, r4
c0de0548:	f006 f8e6 	bl	c0de6718 <buffer_read_u8>
c0de054c:	b148      	cbz	r0, c0de0562 <handler_sign_tx+0x6a>
c0de054e:	eb09 0006 	add.w	r0, r9, r6
c0de0552:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0556:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de055a:	4620      	mov	r0, r4
c0de055c:	f006 f92f 	bl	c0de67be <buffer_read_bip32_path>
c0de0560:	b9b8      	cbnz	r0, c0de0592 <handler_sign_tx+0x9a>
c0de0562:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0566:	e019      	b.n	c0de059c <handler_sign_tx+0xa4>
c0de0568:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de056c:	e016      	b.n	c0de059c <handler_sign_tx+0xa4>
c0de056e:	eb09 0106 	add.w	r1, r9, r6
c0de0572:	4408      	add	r0, r1
c0de0574:	f100 0108 	add.w	r1, r0, #8
c0de0578:	4620      	mov	r0, r4
c0de057a:	f006 f94a 	bl	c0de6812 <buffer_move>
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
c0de05e2:	f006 fd7b 	bl	c0de70dc <cx_keccak_256_hash_iovec>
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
c0de0638:	f007 fb0e 	bl	c0de7c58 <strcmp>
c0de063c:	b110      	cbz	r0, c0de0644 <handler_sign_tx+0x14c>
c0de063e:	f001 fbee 	bl	c0de1e1e <ui_display_transaction>
c0de0642:	e7d8      	b.n	c0de05f6 <handler_sign_tx+0xfe>
c0de0644:	f001 fbe8 	bl	c0de1e18 <ui_display_blind_signed_transaction>
c0de0648:	e7d5      	b.n	c0de05f6 <handler_sign_tx+0xfe>
c0de064a:	20ff      	movs	r0, #255	@ 0xff
c0de064c:	f007 f96c 	bl	c0de7928 <os_sched_exit>
c0de0650:	00000000 	.word	0x00000000
c0de0654:	000008dc 	.word	0x000008dc
c0de0658:	000008dd 	.word	0x000008dd
c0de065c:	00007870 	.word	0x00007870

c0de0660 <io_send_sw>:
c0de0660:	b580      	push	{r7, lr}
c0de0662:	4602      	mov	r2, r0
c0de0664:	2000      	movs	r0, #0
c0de0666:	2100      	movs	r1, #0
c0de0668:	f006 faa8 	bl	c0de6bbc <io_send_response_buffers>
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
c0de0698:	f006 fd57 	bl	c0de714a <cx_hash_init_ex>
c0de069c:	b928      	cbnz	r0, c0de06aa <handler_cmd_blake2b512+0x3c>
c0de069e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06a2:	4668      	mov	r0, sp
c0de06a4:	f006 fd56 	bl	c0de7154 <cx_hash_update>
c0de06a8:	b118      	cbz	r0, c0de06b2 <handler_cmd_blake2b512+0x44>
c0de06aa:	f000 ff88 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de06ae:	b050      	add	sp, #320	@ 0x140
c0de06b0:	bd10      	pop	{r4, pc}
c0de06b2:	4668      	mov	r0, sp
c0de06b4:	a940      	add	r1, sp, #256	@ 0x100
c0de06b6:	f006 fd3e 	bl	c0de7136 <cx_hash_final>
c0de06ba:	e7e3      	b.n	c0de0684 <handler_cmd_blake2b512+0x16>

c0de06bc <io_send_response_pointer>:
c0de06bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06be:	2200      	movs	r2, #0
c0de06c0:	ab01      	add	r3, sp, #4
c0de06c2:	c307      	stmia	r3!, {r0, r1, r2}
c0de06c4:	a801      	add	r0, sp, #4
c0de06c6:	2101      	movs	r1, #1
c0de06c8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de06cc:	f006 fa76 	bl	c0de6bbc <io_send_response_buffers>
c0de06d0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06d2 <io_send_sw>:
c0de06d2:	b580      	push	{r7, lr}
c0de06d4:	4602      	mov	r2, r0
c0de06d6:	2000      	movs	r0, #0
c0de06d8:	2100      	movs	r1, #0
c0de06da:	f006 fa6f 	bl	c0de6bbc <io_send_response_buffers>
c0de06de:	bd80      	pop	{r7, pc}

c0de06e0 <handler_cmd_keccakH>:
c0de06e0:	b510      	push	{r4, lr}
c0de06e2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06e4:	4604      	mov	r4, r0
c0de06e6:	4668      	mov	r0, sp
c0de06e8:	2106      	movs	r1, #6
c0de06ea:	2220      	movs	r2, #32
c0de06ec:	f006 fd2d 	bl	c0de714a <cx_hash_init_ex>
c0de06f0:	b950      	cbnz	r0, c0de0708 <handler_cmd_keccakH+0x28>
c0de06f2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06f6:	4668      	mov	r0, sp
c0de06f8:	f006 fd2c 	bl	c0de7154 <cx_hash_update>
c0de06fc:	b920      	cbnz	r0, c0de0708 <handler_cmd_keccakH+0x28>
c0de06fe:	4668      	mov	r0, sp
c0de0700:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de0702:	f006 fd18 	bl	c0de7136 <cx_hash_final>
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
c0de0730:	f007 fa36 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0734:	a80c      	add	r0, sp, #48	@ 0x30
c0de0736:	491c      	ldr	r1, [pc, #112]	@ (c0de07a8 <handler_cmd_bolos_stretch+0x8c>)
c0de0738:	2220      	movs	r2, #32
c0de073a:	4479      	add	r1, pc
c0de073c:	f007 fa30 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0740:	a804      	add	r0, sp, #16
c0de0742:	491a      	ldr	r1, [pc, #104]	@ (c0de07ac <handler_cmd_bolos_stretch+0x90>)
c0de0744:	2220      	movs	r2, #32
c0de0746:	4479      	add	r1, pc
c0de0748:	f007 fa2a 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de0780:	f006 ffd2 	bl	c0de7728 <cx_bn_mod_add>
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
c0de07a4:	00007bae 	.word	0x00007bae
c0de07a8:	00007b22 	.word	0x00007b22
c0de07ac:	00007c56 	.word	0x00007c56

c0de07b0 <handler_cmd_Poseidon>:
c0de07b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07b4:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07b8:	4604      	mov	r4, r0
c0de07ba:	a860      	add	r0, sp, #384	@ 0x180
c0de07bc:	493d      	ldr	r1, [pc, #244]	@ (c0de08b4 <handler_cmd_Poseidon+0x104>)
c0de07be:	22a0      	movs	r2, #160	@ 0xa0
c0de07c0:	4479      	add	r1, pc
c0de07c2:	f007 f9ed 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de07e6:	f007 f9db 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de0806:	f006 ffd5 	bl	c0de77b4 <cx_mont_alloc>
c0de080a:	b968      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de080c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de080e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0810:	f006 ffda 	bl	c0de77c8 <cx_mont_init>
c0de0814:	b940      	cbnz	r0, c0de0828 <handler_cmd_Poseidon+0x78>
c0de0816:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de081a:	ab0a      	add	r3, sp, #40	@ 0x28
c0de081c:	2105      	movs	r1, #5
c0de081e:	2205      	movs	r2, #5
c0de0820:	4640      	mov	r0, r8
c0de0822:	f002 fd0f 	bl	c0de3244 <Poseidon_alloc_init>
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
c0de0848:	f006 ff1e 	bl	c0de7688 <cx_bn_init>
c0de084c:	2800      	cmp	r0, #0
c0de084e:	d1eb      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de0850:	69e8      	ldr	r0, [r5, #28]
c0de0852:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0854:	4601      	mov	r1, r0
c0de0856:	f006 ffc1 	bl	c0de77dc <cx_mont_to_montgomery>
c0de085a:	3701      	adds	r7, #1
c0de085c:	3620      	adds	r6, #32
c0de085e:	2800      	cmp	r0, #0
c0de0860:	d0ea      	beq.n	c0de0838 <handler_cmd_Poseidon+0x88>
c0de0862:	e7e1      	b.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de0864:	aa08      	add	r2, sp, #32
c0de0866:	4640      	mov	r0, r8
c0de0868:	2100      	movs	r1, #0
c0de086a:	2301      	movs	r3, #1
c0de086c:	f002 fd50 	bl	c0de3310 <Poseidon>
c0de0870:	6820      	ldr	r0, [r4, #0]
c0de0872:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0874:	7800      	ldrb	r0, [r0, #0]
c0de0876:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de087a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de087e:	4601      	mov	r1, r0
c0de0880:	f006 ffb8 	bl	c0de77f4 <cx_mont_from_montgomery>
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
c0de089e:	f006 fedf 	bl	c0de7660 <cx_bn_destroy>
c0de08a2:	2800      	cmp	r0, #0
c0de08a4:	d1c0      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de08a6:	f006 febd 	bl	c0de7624 <cx_bn_unlock>
c0de08aa:	2800      	cmp	r0, #0
c0de08ac:	d1bc      	bne.n	c0de0828 <handler_cmd_Poseidon+0x78>
c0de08ae:	2000      	movs	r0, #0
c0de08b0:	e7bc      	b.n	c0de082c <handler_cmd_Poseidon+0x7c>
c0de08b2:	bf00      	nop
c0de08b4:	00007c9c 	.word	0x00007c9c
c0de08b8:	00007c18 	.word	0x00007c18

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
c0de08d0:	f007 f966 	bl	c0de7ba0 <__aeabi_memcpy>
c0de08d4:	ad01      	add	r5, sp, #4
c0de08d6:	491b      	ldr	r1, [pc, #108]	@ (c0de0944 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08d8:	2220      	movs	r2, #32
c0de08da:	4628      	mov	r0, r5
c0de08dc:	4479      	add	r1, pc
c0de08de:	f007 f95f 	bl	c0de7ba0 <__aeabi_memcpy>
c0de08e2:	a809      	add	r0, sp, #36	@ 0x24
c0de08e4:	2120      	movs	r1, #32
c0de08e6:	462a      	mov	r2, r5
c0de08e8:	f000 fe7d 	bl	c0de15e6 <OUTLINED_FUNCTION_6>
c0de08ec:	bb08      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de08ee:	a80a      	add	r0, sp, #40	@ 0x28
c0de08f0:	2120      	movs	r1, #32
c0de08f2:	f006 ff5f 	bl	c0de77b4 <cx_mont_alloc>
c0de08f6:	b9e0      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de08f8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08fa:	a80a      	add	r0, sp, #40	@ 0x28
c0de08fc:	f006 ff64 	bl	c0de77c8 <cx_mont_init>
c0de0900:	b9b8      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de0902:	a80c      	add	r0, sp, #48	@ 0x30
c0de0904:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0906:	2105      	movs	r1, #5
c0de0908:	2205      	movs	r2, #5
c0de090a:	f002 fc9b 	bl	c0de3244 <Poseidon_alloc_init>
c0de090e:	b980      	cbnz	r0, c0de0932 <handler_cmd_Poseidon_ithRC+0x76>
c0de0910:	6820      	ldr	r0, [r4, #0]
c0de0912:	7806      	ldrb	r6, [r0, #0]
c0de0914:	ac0c      	add	r4, sp, #48	@ 0x30
c0de0916:	ad48      	add	r5, sp, #288	@ 0x120
c0de0918:	b12e      	cbz	r6, c0de0926 <handler_cmd_Poseidon_ithRC+0x6a>
c0de091a:	4620      	mov	r0, r4
c0de091c:	4629      	mov	r1, r5
c0de091e:	f002 fc8d 	bl	c0de323c <Poseidon_getNext_RC>
c0de0922:	3e01      	subs	r6, #1
c0de0924:	e7f8      	b.n	c0de0918 <handler_cmd_Poseidon_ithRC+0x5c>
c0de0926:	a848      	add	r0, sp, #288	@ 0x120
c0de0928:	f000 fe63 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de092c:	f006 fe7a 	bl	c0de7624 <cx_bn_unlock>
c0de0930:	b118      	cbz	r0, c0de093a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0932:	f000 fe44 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0936:	b050      	add	sp, #320	@ 0x140
c0de0938:	bd70      	pop	{r4, r5, r6, pc}
c0de093a:	2000      	movs	r0, #0
c0de093c:	e7fb      	b.n	c0de0936 <handler_cmd_Poseidon_ithRC+0x7a>
c0de093e:	bf00      	nop
c0de0940:	0000796e 	.word	0x0000796e
c0de0944:	00007b20 	.word	0x00007b20

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
c0de098c:	f001 ff3f 	bl	c0de280e <tEdwards_alloc>
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
c0de09b6:	f006 fe35 	bl	c0de7624 <cx_bn_unlock>
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
c0de0a2c:	f001 feef 	bl	c0de280e <tEdwards_alloc>
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
c0de0a68:	f006 fddc 	bl	c0de7624 <cx_bn_unlock>
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
c0de0aaa:	f002 f82f 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de0aae:	2800      	cmp	r0, #0
c0de0ab0:	d14d      	bne.n	c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ab2:	f107 060c 	add.w	r6, r7, #12
c0de0ab6:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aba:	4638      	mov	r0, r7
c0de0abc:	4631      	mov	r1, r6
c0de0abe:	f001 ffcf 	bl	c0de2a60 <tEdwards_IsOnCurve>
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
c0de0ade:	f007 f85f 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0ae2:	af01      	add	r7, sp, #4
c0de0ae4:	491e      	ldr	r1, [pc, #120]	@ (c0de0b60 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ae6:	2220      	movs	r2, #32
c0de0ae8:	4638      	mov	r0, r7
c0de0aea:	4479      	add	r1, pc
c0de0aec:	f007 f858 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0af0:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0af4:	a814      	add	r0, sp, #80	@ 0x50
c0de0af6:	4651      	mov	r1, sl
c0de0af8:	463a      	mov	r2, r7
c0de0afa:	4643      	mov	r3, r8
c0de0afc:	f002 f9f7 	bl	c0de2eee <tEdwards_alloc_init>
c0de0b00:	bb28      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b02:	a814      	add	r0, sp, #80	@ 0x50
c0de0b04:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b08:	4631      	mov	r1, r6
c0de0b0a:	f001 ffa9 	bl	c0de2a60 <tEdwards_IsOnCurve>
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
c0de0b2c:	f002 fa64 	bl	c0de2ff8 <tEdwards_scalarMul>
c0de0b30:	b968      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b32:	a814      	add	r0, sp, #80	@ 0x50
c0de0b34:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b38:	a911      	add	r1, sp, #68	@ 0x44
c0de0b3a:	f000 fd57 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de0b3e:	b930      	cbnz	r0, c0de0b4e <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b40:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b44:	f000 fd4b 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de0b48:	f006 fd6c 	bl	c0de7624 <cx_bn_unlock>
c0de0b4c:	b120      	cbz	r0, c0de0b58 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b4e:	f000 fd36 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de0b52:	b06b      	add	sp, #428	@ 0x1ac
c0de0b54:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b58:	2000      	movs	r0, #0
c0de0b5a:	e7fa      	b.n	c0de0b52 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b5c:	00007940 	.word	0x00007940
c0de0b60:	00007952 	.word	0x00007952

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
c0de0b9a:	f001 ffb7 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
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
c0de0bbc:	f006 fff0 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0bc0:	af03      	add	r7, sp, #12
c0de0bc2:	4940      	ldr	r1, [pc, #256]	@ (c0de0cc4 <handler_cmd_tEdwards+0x160>)
c0de0bc4:	4479      	add	r1, pc
c0de0bc6:	e009      	b.n	c0de0bdc <handler_cmd_tEdwards+0x78>
c0de0bc8:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bca:	493f      	ldr	r1, [pc, #252]	@ (c0de0cc8 <handler_cmd_tEdwards+0x164>)
c0de0bcc:	2220      	movs	r2, #32
c0de0bce:	4630      	mov	r0, r6
c0de0bd0:	4479      	add	r1, pc
c0de0bd2:	f006 ffe5 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0bd6:	af03      	add	r7, sp, #12
c0de0bd8:	493c      	ldr	r1, [pc, #240]	@ (c0de0ccc <handler_cmd_tEdwards+0x168>)
c0de0bda:	4479      	add	r1, pc
c0de0bdc:	4638      	mov	r0, r7
c0de0bde:	2220      	movs	r2, #32
c0de0be0:	f006 ffde 	bl	c0de7ba0 <__aeabi_memcpy>
c0de0be4:	a819      	add	r0, sp, #100	@ 0x64
c0de0be6:	ab16      	add	r3, sp, #88	@ 0x58
c0de0be8:	4631      	mov	r1, r6
c0de0bea:	463a      	mov	r2, r7
c0de0bec:	f002 f97f 	bl	c0de2eee <tEdwards_alloc_init>
c0de0bf0:	2800      	cmp	r0, #0
c0de0bf2:	d1d5      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0bf4:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bf8:	aa03      	add	r2, sp, #12
c0de0bfa:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bfc:	f002 f977 	bl	c0de2eee <tEdwards_alloc_init>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d1cd      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c04:	2000      	movs	r0, #0
c0de0c06:	f10d 020b 	add.w	r2, sp, #11
c0de0c0a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c0e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c10:	a916      	add	r1, sp, #88	@ 0x58
c0de0c12:	f001 ff25 	bl	c0de2a60 <tEdwards_IsOnCurve>
c0de0c16:	2800      	cmp	r0, #0
c0de0c18:	d1c2      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c1a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c1e:	2801      	cmp	r0, #1
c0de0c20:	d142      	bne.n	c0de0ca8 <handler_cmd_tEdwards+0x144>
c0de0c22:	a819      	add	r0, sp, #100	@ 0x64
c0de0c24:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c26:	f10d 020b 	add.w	r2, sp, #11
c0de0c2a:	4631      	mov	r1, r6
c0de0c2c:	f001 ff18 	bl	c0de2a60 <tEdwards_IsOnCurve>
c0de0c30:	2800      	cmp	r0, #0
c0de0c32:	d1b5      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c34:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c38:	2801      	cmp	r0, #1
c0de0c3a:	d138      	bne.n	c0de0cae <handler_cmd_tEdwards+0x14a>
c0de0c3c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c3e:	f10d 010b 	add.w	r1, sp, #11
c0de0c42:	f006 fdad 	bl	c0de77a0 <cx_bn_is_prime>
c0de0c46:	2800      	cmp	r0, #0
c0de0c48:	d1aa      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c4a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c4e:	2801      	cmp	r0, #1
c0de0c50:	d130      	bne.n	c0de0cb4 <handler_cmd_tEdwards+0x150>
c0de0c52:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c54:	f10d 010b 	add.w	r1, sp, #11
c0de0c58:	f006 fda2 	bl	c0de77a0 <cx_bn_is_prime>
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
c0de0c76:	f002 f9bf 	bl	c0de2ff8 <tEdwards_scalarMul>
c0de0c7a:	2800      	cmp	r0, #0
c0de0c7c:	d190      	bne.n	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c7e:	a819      	add	r0, sp, #100	@ 0x64
c0de0c80:	f104 0320 	add.w	r3, r4, #32
c0de0c84:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c86:	f000 fcb1 	bl	c0de15ec <OUTLINED_FUNCTION_7>
c0de0c8a:	2800      	cmp	r0, #0
c0de0c8c:	f47f af88 	bne.w	c0de0ba0 <handler_cmd_tEdwards+0x3c>
c0de0c90:	f006 fcc8 	bl	c0de7624 <cx_bn_unlock>
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
c0de0cc0:	000076c2 	.word	0x000076c2
c0de0cc4:	00007738 	.word	0x00007738
c0de0cc8:	000076cc 	.word	0x000076cc
c0de0ccc:	00007642 	.word	0x00007642

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
c0de0cfe:	f001 ff05 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
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
c0de0d36:	f006 fc87 	bl	c0de7648 <cx_bn_alloc_init>
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
c0de0d70:	f006 fc60 	bl	c0de7634 <cx_bn_alloc>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1e4      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d78:	6820      	ldr	r0, [r4, #0]
c0de0d7a:	4631      	mov	r1, r6
c0de0d7c:	f006 fc9a 	bl	c0de76b4 <cx_bn_set_u32>
c0de0d80:	2800      	cmp	r0, #0
c0de0d82:	d1de      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d84:	4640      	mov	r0, r8
c0de0d86:	4659      	mov	r1, fp
c0de0d88:	f001 fd41 	bl	c0de280e <tEdwards_alloc>
c0de0d8c:	2800      	cmp	r0, #0
c0de0d8e:	d1d8      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0d90:	9602      	str	r6, [sp, #8]
c0de0d92:	eb07 060a 	add.w	r6, r7, sl
c0de0d96:	9901      	ldr	r1, [sp, #4]
c0de0d98:	4640      	mov	r0, r8
c0de0d9a:	465b      	mov	r3, fp
c0de0d9c:	4632      	mov	r2, r6
c0de0d9e:	f002 f8c5 	bl	c0de2f2c <tEdwards_scalarMul_bn>
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
c0de0dc4:	f002 f853 	bl	c0de2e6e <tEdwards_normalize>
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
c0de0dea:	f001 fa32 	bl	c0de2252 <zkn_frost_interpolate_secrets>
c0de0dee:	2800      	cmp	r0, #0
c0de0df0:	d1a7      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0df2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0df4:	a944      	add	r1, sp, #272	@ 0x110
c0de0df6:	2220      	movs	r2, #32
c0de0df8:	31c0      	adds	r1, #192	@ 0xc0
c0de0dfa:	f006 fc65 	bl	c0de76c8 <cx_bn_export>
c0de0dfe:	2800      	cmp	r0, #0
c0de0e00:	d19f      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e02:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e04:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0e06:	ab03      	add	r3, sp, #12
c0de0e08:	9901      	ldr	r1, [sp, #4]
c0de0e0a:	f002 f88f 	bl	c0de2f2c <tEdwards_scalarMul_bn>
c0de0e0e:	2800      	cmp	r0, #0
c0de0e10:	d197      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e12:	a844      	add	r0, sp, #272	@ 0x110
c0de0e14:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e18:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e1a:	a903      	add	r1, sp, #12
c0de0e1c:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e1e:	f002 f800 	bl	c0de2e22 <tEdwards_export>
c0de0e22:	2800      	cmp	r0, #0
c0de0e24:	d18d      	bne.n	c0de0d42 <handler_cmd_Interpolate+0x72>
c0de0e26:	a844      	add	r0, sp, #272	@ 0x110
c0de0e28:	f000 fbd9 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de0e2c:	f006 fbfa 	bl	c0de7624 <cx_bn_unlock>
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
c0de0e8c:	f006 f933 	bl	c0de70f6 <cx_blake2b_512_hash_iovec>
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
c0de0ea8:	f006 fbce 	bl	c0de7648 <cx_bn_alloc_init>
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
c0de0ef2:	f006 fb9f 	bl	c0de7634 <cx_bn_alloc>
c0de0ef6:	2800      	cmp	r0, #0
c0de0ef8:	d1e5      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0efa:	a801      	add	r0, sp, #4
c0de0efc:	2120      	movs	r1, #32
c0de0efe:	eb00 0508 	add.w	r5, r0, r8
c0de0f02:	4628      	mov	r0, r5
c0de0f04:	f006 fb96 	bl	c0de7634 <cx_bn_alloc>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1dc      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f0c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f0e:	4621      	mov	r1, r4
c0de0f10:	f006 fbd0 	bl	c0de76b4 <cx_bn_set_u32>
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d1d6      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f18:	6828      	ldr	r0, [r5, #0]
c0de0f1a:	4621      	mov	r1, r4
c0de0f1c:	f006 fbca 	bl	c0de76b4 <cx_bn_set_u32>
c0de0f20:	2800      	cmp	r0, #0
c0de0f22:	d1d0      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f24:	4650      	mov	r0, sl
c0de0f26:	4631      	mov	r1, r6
c0de0f28:	f001 fc71 	bl	c0de280e <tEdwards_alloc>
c0de0f2c:	2800      	cmp	r0, #0
c0de0f2e:	d1ca      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f30:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f34:	2202      	movs	r2, #2
c0de0f36:	9000      	str	r0, [sp, #0]
c0de0f38:	4650      	mov	r0, sl
c0de0f3a:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f3c:	f001 f9cc 	bl	c0de22d8 <zkn_evalshare>
c0de0f40:	2800      	cmp	r0, #0
c0de0f42:	d1c0      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f44:	6838      	ldr	r0, [r7, #0]
c0de0f46:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f48:	f006 fbaa 	bl	c0de76a0 <cx_bn_copy>
c0de0f4c:	2800      	cmp	r0, #0
c0de0f4e:	d1ba      	bne.n	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0f50:	4650      	mov	r0, sl
c0de0f52:	4631      	mov	r1, r6
c0de0f54:	f001 ff8b 	bl	c0de2e6e <tEdwards_normalize>
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
c0de0f90:	f006 fb66 	bl	c0de7660 <cx_bn_destroy>
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
c0de0fac:	f001 f951 	bl	c0de2252 <zkn_frost_interpolate_secrets>
c0de0fb0:	2800      	cmp	r0, #0
c0de0fb2:	f47f af88 	bne.w	c0de0ec6 <handler_cmd_Split+0x8c>
c0de0fb6:	a848      	add	r0, sp, #288	@ 0x120
c0de0fb8:	f000 fb11 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de0fbc:	f006 fb32 	bl	c0de7624 <cx_bn_unlock>
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
c0de0fde:	f001 fd95 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de0fe2:	bbe0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de0fe4:	a801      	add	r0, sp, #4
c0de0fe6:	f000 faf0 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de0fea:	bbc0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de0fec:	f000 faf0 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de0ff0:	f002 faaa 	bl	c0de3548 <Babyfrost_H1>
c0de0ff4:	bb98      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de0ff6:	9801      	ldr	r0, [sp, #4]
c0de0ff8:	ad18      	add	r5, sp, #96	@ 0x60
c0de0ffa:	2220      	movs	r2, #32
c0de0ffc:	4629      	mov	r1, r5
c0de0ffe:	f006 fb63 	bl	c0de76c8 <cx_bn_export>
c0de1002:	bb60      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1004:	f000 fae4 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de1008:	f002 faac 	bl	c0de3564 <Babyfrost_H3>
c0de100c:	bb38      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de100e:	9801      	ldr	r0, [sp, #4]
c0de1010:	f105 0120 	add.w	r1, r5, #32
c0de1014:	f000 fad6 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1018:	bb08      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de101a:	f000 fad9 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de101e:	f002 fab5 	bl	c0de358c <Babyfrost_H4>
c0de1022:	b9e0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1024:	9801      	ldr	r0, [sp, #4]
c0de1026:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de102a:	f000 facb 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de102e:	b9b0      	cbnz	r0, c0de105e <handler_cmd_frostH+0x94>
c0de1030:	f000 face 	bl	c0de15d0 <OUTLINED_FUNCTION_4>
c0de1034:	f002 fab8 	bl	c0de35a8 <Babyfrost_H5>
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
c0de1058:	f006 fae4 	bl	c0de7624 <cx_bn_unlock>
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
c0de1080:	f001 fd44 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de1084:	b9e0      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de1086:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1088:	f000 fa9f 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de108c:	b9c0      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de108e:	ac01      	add	r4, sp, #4
c0de1090:	4910      	ldr	r1, [pc, #64]	@ (c0de10d4 <handler_cmd_encodeCommitment+0x68>)
c0de1092:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1096:	4620      	mov	r0, r4
c0de1098:	4479      	add	r1, pc
c0de109a:	f006 fd81 	bl	c0de7ba0 <__aeabi_memcpy>
c0de109e:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de10a0:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10a2:	4621      	mov	r1, r4
c0de10a4:	2203      	movs	r2, #3
c0de10a6:	f001 f97a 	bl	c0de239e <zkn_encode_group_commitmentHash>
c0de10aa:	b948      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de10ac:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de10ae:	a990      	add	r1, sp, #576	@ 0x240
c0de10b0:	2220      	movs	r2, #32
c0de10b2:	3120      	adds	r1, #32
c0de10b4:	f006 fb08 	bl	c0de76c8 <cx_bn_export>
c0de10b8:	b910      	cbnz	r0, c0de10c0 <handler_cmd_encodeCommitment+0x54>
c0de10ba:	f006 fab3 	bl	c0de7624 <cx_bn_unlock>
c0de10be:	b120      	cbz	r0, c0de10ca <handler_cmd_encodeCommitment+0x5e>
c0de10c0:	f000 fa7d 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de10c4:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de10c8:	bd10      	pop	{r4, pc}
c0de10ca:	a890      	add	r0, sp, #576	@ 0x240
c0de10cc:	f000 fa91 	bl	c0de15f2 <OUTLINED_FUNCTION_8>
c0de10d0:	2000      	movs	r0, #0
c0de10d2:	e7f7      	b.n	c0de10c4 <handler_cmd_encodeCommitment+0x58>
c0de10d4:	00007464 	.word	0x00007464

c0de10d8 <handler_cmd_GroupCommitment>:
c0de10d8:	b570      	push	{r4, r5, r6, lr}
c0de10da:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10de:	4604      	mov	r4, r0
c0de10e0:	f000 fa69 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de10e4:	bb68      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de10e6:	6820      	ldr	r0, [r4, #0]
c0de10e8:	7801      	ldrb	r1, [r0, #0]
c0de10ea:	a894      	add	r0, sp, #592	@ 0x250
c0de10ec:	f001 fd0e 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de10f0:	bb38      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de10f2:	a894      	add	r0, sp, #592	@ 0x250
c0de10f4:	ac91      	add	r4, sp, #580	@ 0x244
c0de10f6:	4621      	mov	r1, r4
c0de10f8:	f001 fb89 	bl	c0de280e <tEdwards_alloc>
c0de10fc:	bb08      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de10fe:	ad19      	add	r5, sp, #100	@ 0x64
c0de1100:	4915      	ldr	r1, [pc, #84]	@ (c0de1158 <handler_cmd_GroupCommitment+0x80>)
c0de1102:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1106:	4628      	mov	r0, r5
c0de1108:	4479      	add	r1, pc
c0de110a:	f006 fd49 	bl	c0de7ba0 <__aeabi_memcpy>
c0de110e:	ae01      	add	r6, sp, #4
c0de1110:	4912      	ldr	r1, [pc, #72]	@ (c0de115c <handler_cmd_GroupCommitment+0x84>)
c0de1112:	2260      	movs	r2, #96	@ 0x60
c0de1114:	4630      	mov	r0, r6
c0de1116:	4479      	add	r1, pc
c0de1118:	f006 fd42 	bl	c0de7ba0 <__aeabi_memcpy>
c0de111c:	9400      	str	r4, [sp, #0]
c0de111e:	a894      	add	r0, sp, #592	@ 0x250
c0de1120:	4629      	mov	r1, r5
c0de1122:	4632      	mov	r2, r6
c0de1124:	2303      	movs	r3, #3
c0de1126:	f001 f9b7 	bl	c0de2498 <zkn_compute_group_commitment>
c0de112a:	b950      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de112c:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de112e:	a894      	add	r0, sp, #592	@ 0x250
c0de1130:	a991      	add	r1, sp, #580	@ 0x244
c0de1132:	f102 0320 	add.w	r3, r2, #32
c0de1136:	f001 fe74 	bl	c0de2e22 <tEdwards_export>
c0de113a:	b910      	cbnz	r0, c0de1142 <handler_cmd_GroupCommitment+0x6a>
c0de113c:	f006 fa72 	bl	c0de7624 <cx_bn_unlock>
c0de1140:	b120      	cbz	r0, c0de114c <handler_cmd_GroupCommitment+0x74>
c0de1142:	f000 fa3c 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1146:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de114a:	bd70      	pop	{r4, r5, r6, pc}
c0de114c:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de114e:	2140      	movs	r1, #64	@ 0x40
c0de1150:	f7ff fab4 	bl	c0de06bc <io_send_response_pointer>
c0de1154:	2000      	movs	r0, #0
c0de1156:	e7f6      	b.n	c0de1146 <handler_cmd_GroupCommitment+0x6e>
c0de1158:	000075d4 	.word	0x000075d4
c0de115c:	000077a6 	.word	0x000077a6

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
c0de117a:	f001 fcc7 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de117e:	2800      	cmp	r0, #0
c0de1180:	f040 8095 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1184:	a8b0      	add	r0, sp, #704	@ 0x2c0
c0de1186:	f000 fa20 	bl	c0de15ca <OUTLINED_FUNCTION_3>
c0de118a:	2800      	cmp	r0, #0
c0de118c:	f040 808f 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1190:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1192:	adad      	add	r5, sp, #692	@ 0x2b4
c0de1194:	4629      	mov	r1, r5
c0de1196:	f001 fb3a 	bl	c0de280e <tEdwards_alloc>
c0de119a:	2800      	cmp	r0, #0
c0de119c:	f040 8087 	bne.w	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de11a0:	ac35      	add	r4, sp, #212	@ 0xd4
c0de11a2:	4947      	ldr	r1, [pc, #284]	@ (c0de12c0 <handler_cmd_BindingFactors+0x160>)
c0de11a4:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de11a8:	4620      	mov	r0, r4
c0de11aa:	4479      	add	r1, pc
c0de11ac:	f006 fcf8 	bl	c0de7ba0 <__aeabi_memcpy>
c0de11b0:	9bb0      	ldr	r3, [sp, #704]	@ 0x2c0
c0de11b2:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de11b4:	4621      	mov	r1, r4
c0de11b6:	2203      	movs	r2, #3
c0de11b8:	f001 f8f1 	bl	c0de239e <zkn_encode_group_commitmentHash>
c0de11bc:	2800      	cmp	r0, #0
c0de11be:	d176      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de11c0:	f50d 7847 	add.w	r8, sp, #796	@ 0x31c
c0de11c4:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de11c6:	2220      	movs	r2, #32
c0de11c8:	2620      	movs	r6, #32
c0de11ca:	4641      	mov	r1, r8
c0de11cc:	f006 fa7c 	bl	c0de76c8 <cx_bn_export>
c0de11d0:	2800      	cmp	r0, #0
c0de11d2:	d16c      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de11d4:	493b      	ldr	r1, [pc, #236]	@ (c0de12c4 <handler_cmd_BindingFactors+0x164>)
c0de11d6:	f10d 0ab4 	add.w	sl, sp, #180	@ 0xb4
c0de11da:	2220      	movs	r2, #32
c0de11dc:	4650      	mov	r0, sl
c0de11de:	4479      	add	r1, pc
c0de11e0:	f006 fcde 	bl	c0de7ba0 <__aeabi_memcpy>
c0de11e4:	a825      	add	r0, sp, #148	@ 0x94
c0de11e6:	4938      	ldr	r1, [pc, #224]	@ (c0de12c8 <handler_cmd_BindingFactors+0x168>)
c0de11e8:	2220      	movs	r2, #32
c0de11ea:	4479      	add	r1, pc
c0de11ec:	f006 fcd8 	bl	c0de7ba0 <__aeabi_memcpy>
c0de11f0:	ac1d      	add	r4, sp, #116	@ 0x74
c0de11f2:	4936      	ldr	r1, [pc, #216]	@ (c0de12cc <handler_cmd_BindingFactors+0x16c>)
c0de11f4:	2220      	movs	r2, #32
c0de11f6:	4620      	mov	r0, r4
c0de11f8:	4479      	add	r1, pc
c0de11fa:	f006 fcd1 	bl	c0de7ba0 <__aeabi_memcpy>
c0de11fe:	f108 0720 	add.w	r7, r8, #32
c0de1202:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de1206:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1208:	aa35      	add	r2, sp, #212	@ 0xd4
c0de120a:	4651      	mov	r1, sl
c0de120c:	2303      	movs	r3, #3
c0de120e:	f001 f9b4 	bl	c0de257a <zkn_compute_binding_factors>
c0de1212:	2800      	cmp	r0, #0
c0de1214:	d14b      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1216:	9500      	str	r5, [sp, #0]
c0de1218:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de121a:	a935      	add	r1, sp, #212	@ 0xd4
c0de121c:	463a      	mov	r2, r7
c0de121e:	2303      	movs	r3, #3
c0de1220:	f001 f93a 	bl	c0de2498 <zkn_compute_group_commitment>
c0de1224:	2800      	cmp	r0, #0
c0de1226:	d142      	bne.n	c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1228:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de122a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de122e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1232:	a9ad      	add	r1, sp, #692	@ 0x2b4
c0de1234:	f001 fdf5 	bl	c0de2e22 <tEdwards_export>
c0de1238:	bbc8      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de123a:	ac0d      	add	r4, sp, #52	@ 0x34
c0de123c:	4924      	ldr	r1, [pc, #144]	@ (c0de12d0 <handler_cmd_BindingFactors+0x170>)
c0de123e:	2240      	movs	r2, #64	@ 0x40
c0de1240:	4620      	mov	r0, r4
c0de1242:	4479      	add	r1, pc
c0de1244:	f006 fcac 	bl	c0de7ba0 <__aeabi_memcpy>
c0de1248:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de124a:	2120      	movs	r1, #32
c0de124c:	4622      	mov	r2, r4
c0de124e:	e9cd 1000 	strd	r1, r0, [sp]
c0de1252:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1254:	a9ad      	add	r1, sp, #692	@ 0x2b4
c0de1256:	ab25      	add	r3, sp, #148	@ 0x94
c0de1258:	f001 fa1a 	bl	c0de2690 <compute_challenge>
c0de125c:	bb38      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de125e:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de1260:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de1264:	f000 f9ae 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1268:	bb08      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de126a:	a803      	add	r0, sp, #12
c0de126c:	4919      	ldr	r1, [pc, #100]	@ (c0de12d4 <handler_cmd_BindingFactors+0x174>)
c0de126e:	2220      	movs	r2, #32
c0de1270:	4479      	add	r1, pc
c0de1272:	f006 fc95 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de1290:	f006 fa6e 	bl	c0de7770 <cx_bn_reduce>
c0de1294:	b958      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de1296:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de1298:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de129c:	f000 f992 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de12a0:	b928      	cbnz	r0, c0de12ae <handler_cmd_BindingFactors+0x14e>
c0de12a2:	a8c7      	add	r0, sp, #796	@ 0x31c
c0de12a4:	f000 f99b 	bl	c0de15de <OUTLINED_FUNCTION_5>
c0de12a8:	f006 f9bc 	bl	c0de7624 <cx_bn_unlock>
c0de12ac:	b128      	cbz	r0, c0de12ba <handler_cmd_BindingFactors+0x15a>
c0de12ae:	f000 f986 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de12b2:	f20d 4d1c 	addw	sp, sp, #1052	@ 0x41c
c0de12b6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de12ba:	2000      	movs	r0, #0
c0de12bc:	e7f9      	b.n	c0de12b2 <handler_cmd_BindingFactors+0x152>
c0de12be:	bf00      	nop
c0de12c0:	00007772 	.word	0x00007772
c0de12c4:	0000713e 	.word	0x0000713e
c0de12c8:	00006ff2 	.word	0x00006ff2
c0de12cc:	00007144 	.word	0x00007144
c0de12d0:	000078ba 	.word	0x000078ba
c0de12d4:	0000706c 	.word	0x0000706c

c0de12d8 <handler_get_insecure_secret>:
c0de12d8:	b570      	push	{r4, r5, r6, lr}
c0de12da:	b0f0      	sub	sp, #448	@ 0x1c0
c0de12dc:	4e2c      	ldr	r6, [pc, #176]	@ (c0de1390 <handler_get_insecure_secret+0xb8>)
c0de12de:	4604      	mov	r4, r0
c0de12e0:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de12e4:	eb09 0506 	add.w	r5, r9, r6
c0de12e8:	4628      	mov	r0, r5
c0de12ea:	f006 fc71 	bl	c0de7bd0 <explicit_bzero>
c0de12ee:	2000      	movs	r0, #0
c0de12f0:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de12f4:	f809 0006 	strb.w	r0, [r9, r6]
c0de12f8:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de12fc:	4620      	mov	r0, r4
c0de12fe:	f005 fa0b 	bl	c0de6718 <buffer_read_u8>
c0de1302:	b3c0      	cbz	r0, c0de1376 <handler_get_insecure_secret+0x9e>
c0de1304:	eb09 0006 	add.w	r0, r9, r6
c0de1308:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de130c:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de1310:	4620      	mov	r0, r4
c0de1312:	f005 fa54 	bl	c0de67be <buffer_read_bip32_path>
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
c0de133e:	f005 faff 	bl	c0de6940 <bip32_derive_with_seed_get_pubkey_256>
c0de1342:	a806      	add	r0, sp, #24
c0de1344:	2106      	movs	r1, #6
c0de1346:	2220      	movs	r2, #32
c0de1348:	f005 feff 	bl	c0de714a <cx_hash_init_ex>
c0de134c:	b978      	cbnz	r0, c0de136e <handler_get_insecure_secret+0x96>
c0de134e:	eb09 0006 	add.w	r0, r9, r6
c0de1352:	2241      	movs	r2, #65	@ 0x41
c0de1354:	f100 0108 	add.w	r1, r0, #8
c0de1358:	a806      	add	r0, sp, #24
c0de135a:	f005 fefb 	bl	c0de7154 <cx_hash_update>
c0de135e:	b930      	cbnz	r0, c0de136e <handler_get_insecure_secret+0x96>
c0de1360:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1394 <handler_get_insecure_secret+0xbc>)
c0de1362:	a806      	add	r0, sp, #24
c0de1364:	eb09 0104 	add.w	r1, r9, r4
c0de1368:	f005 fee5 	bl	c0de7136 <cx_hash_final>
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
c0de13c2:	f001 fa24 	bl	c0de280e <tEdwards_alloc>
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
c0de13f0:	f006 f918 	bl	c0de7624 <cx_bn_unlock>
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
c0de1440:	f001 fb64 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de1444:	b9f0      	cbnz	r0, c0de1484 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1446:	a80e      	add	r0, sp, #56	@ 0x38
c0de1448:	a90b      	add	r1, sp, #44	@ 0x2c
c0de144a:	f001 f9e0 	bl	c0de280e <tEdwards_alloc>
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
c0de147e:	f006 f8d1 	bl	c0de7624 <cx_bn_unlock>
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
c0de14aa:	f001 fb2f 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de14ae:	2800      	cmp	r0, #0
c0de14b0:	d150      	bne.n	c0de1554 <handler_cmd_conciliation+0xc0>
c0de14b2:	a831      	add	r0, sp, #196	@ 0xc4
c0de14b4:	492b      	ldr	r1, [pc, #172]	@ (c0de1564 <handler_cmd_conciliation+0xd0>)
c0de14b6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de14ba:	4479      	add	r1, pc
c0de14bc:	f006 fb70 	bl	c0de7ba0 <__aeabi_memcpy>
c0de14c0:	a829      	add	r0, sp, #164	@ 0xa4
c0de14c2:	4929      	ldr	r1, [pc, #164]	@ (c0de1568 <handler_cmd_conciliation+0xd4>)
c0de14c4:	2220      	movs	r2, #32
c0de14c6:	2720      	movs	r7, #32
c0de14c8:	4479      	add	r1, pc
c0de14ca:	f006 fb69 	bl	c0de7ba0 <__aeabi_memcpy>
c0de14ce:	a821      	add	r0, sp, #132	@ 0x84
c0de14d0:	4926      	ldr	r1, [pc, #152]	@ (c0de156c <handler_cmd_conciliation+0xd8>)
c0de14d2:	2220      	movs	r2, #32
c0de14d4:	4479      	add	r1, pc
c0de14d6:	f006 fb63 	bl	c0de7ba0 <__aeabi_memcpy>
c0de14da:	ac19      	add	r4, sp, #100	@ 0x64
c0de14dc:	4924      	ldr	r1, [pc, #144]	@ (c0de1570 <handler_cmd_conciliation+0xdc>)
c0de14de:	2220      	movs	r2, #32
c0de14e0:	4620      	mov	r0, r4
c0de14e2:	4479      	add	r1, pc
c0de14e4:	f006 fb5c 	bl	c0de7ba0 <__aeabi_memcpy>
c0de14e8:	a809      	add	r0, sp, #36	@ 0x24
c0de14ea:	4922      	ldr	r1, [pc, #136]	@ (c0de1574 <handler_cmd_conciliation+0xe0>)
c0de14ec:	2240      	movs	r2, #64	@ 0x40
c0de14ee:	4479      	add	r1, pc
c0de14f0:	f006 fb56 	bl	c0de7ba0 <__aeabi_memcpy>
c0de14f4:	a8a9      	add	r0, sp, #676	@ 0x2a4
c0de14f6:	ad06      	add	r5, sp, #24
c0de14f8:	4629      	mov	r1, r5
c0de14fa:	f001 f988 	bl	c0de280e <tEdwards_alloc>
c0de14fe:	bb48      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de1500:	aebf      	add	r6, sp, #764	@ 0x2fc
c0de1502:	2003      	movs	r0, #3
c0de1504:	e88d 0091 	stmia.w	sp, {r0, r4, r7}
c0de1508:	e9cd 5603 	strd	r5, r6, [sp, #12]
c0de150c:	a9a9      	add	r1, sp, #676	@ 0x2a4
c0de150e:	aa29      	add	r2, sp, #164	@ 0xa4
c0de1510:	ab31      	add	r3, sp, #196	@ 0xc4
c0de1512:	2001      	movs	r0, #1
c0de1514:	f001 f916 	bl	c0de2744 <zkn_reconciliation>
c0de1518:	b9e0      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de151a:	a805      	add	r0, sp, #20
c0de151c:	2120      	movs	r1, #32
c0de151e:	2420      	movs	r4, #32
c0de1520:	f006 f888 	bl	c0de7634 <cx_bn_alloc>
c0de1524:	b9b0      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de1526:	9805      	ldr	r0, [sp, #20]
c0de1528:	e9cd 4000 	strd	r4, r0, [sp]
c0de152c:	a8a9      	add	r0, sp, #676	@ 0x2a4
c0de152e:	a906      	add	r1, sp, #24
c0de1530:	aa09      	add	r2, sp, #36	@ 0x24
c0de1532:	ab21      	add	r3, sp, #132	@ 0x84
c0de1534:	f001 f8ac 	bl	c0de2690 <compute_challenge>
c0de1538:	b960      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de153a:	9805      	ldr	r0, [sp, #20]
c0de153c:	f106 0180 	add.w	r1, r6, #128	@ 0x80
c0de1540:	f000 f840 	bl	c0de15c4 <OUTLINED_FUNCTION_2>
c0de1544:	b930      	cbnz	r0, c0de1554 <handler_cmd_conciliation+0xc0>
c0de1546:	a8bf      	add	r0, sp, #764	@ 0x2fc
c0de1548:	21a0      	movs	r1, #160	@ 0xa0
c0de154a:	f7ff f8b7 	bl	c0de06bc <io_send_response_pointer>
c0de154e:	f006 f869 	bl	c0de7624 <cx_bn_unlock>
c0de1552:	b120      	cbz	r0, c0de155e <handler_cmd_conciliation+0xca>
c0de1554:	f000 f833 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de1558:	f50d 7d7f 	add.w	sp, sp, #1020	@ 0x3fc
c0de155c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de155e:	2000      	movs	r0, #0
c0de1560:	e7fa      	b.n	c0de1558 <handler_cmd_conciliation+0xc4>
c0de1562:	bf00      	nop
c0de1564:	00007462 	.word	0x00007462
c0de1568:	00006e54 	.word	0x00006e54
c0de156c:	00006d08 	.word	0x00006d08
c0de1570:	00006e5a 	.word	0x00006e5a
c0de1574:	0000760e 	.word	0x0000760e

c0de1578 <handler_cmd_frost_commit>:
c0de1578:	b510      	push	{r4, lr}
c0de157a:	b0cc      	sub	sp, #304	@ 0x130
c0de157c:	4604      	mov	r4, r0
c0de157e:	f000 f81a 	bl	c0de15b6 <OUTLINED_FUNCTION_0>
c0de1582:	b990      	cbnz	r0, c0de15aa <handler_cmd_frost_commit+0x32>
c0de1584:	6820      	ldr	r0, [r4, #0]
c0de1586:	7801      	ldrb	r1, [r0, #0]
c0de1588:	a806      	add	r0, sp, #24
c0de158a:	f001 fabf 	bl	c0de2b0c <tEdwards_Curve_alloc_init>
c0de158e:	b960      	cbnz	r0, c0de15aa <handler_cmd_frost_commit+0x32>
c0de1590:	a806      	add	r0, sp, #24
c0de1592:	a91c      	add	r1, sp, #112	@ 0x70
c0de1594:	466a      	mov	r2, sp
c0de1596:	f000 fef5 	bl	c0de2384 <zkn_frost_commit>
c0de159a:	b930      	cbnz	r0, c0de15aa <handler_cmd_frost_commit+0x32>
c0de159c:	a81c      	add	r0, sp, #112	@ 0x70
c0de159e:	21c0      	movs	r1, #192	@ 0xc0
c0de15a0:	f7ff f88c 	bl	c0de06bc <io_send_response_pointer>
c0de15a4:	f006 f83e 	bl	c0de7624 <cx_bn_unlock>
c0de15a8:	b118      	cbz	r0, c0de15b2 <handler_cmd_frost_commit+0x3a>
c0de15aa:	f000 f808 	bl	c0de15be <OUTLINED_FUNCTION_1>
c0de15ae:	b04c      	add	sp, #304	@ 0x130
c0de15b0:	bd10      	pop	{r4, pc}
c0de15b2:	2000      	movs	r0, #0
c0de15b4:	e7fb      	b.n	c0de15ae <handler_cmd_frost_commit+0x36>

c0de15b6 <OUTLINED_FUNCTION_0>:
c0de15b6:	2020      	movs	r0, #32
c0de15b8:	2100      	movs	r1, #0
c0de15ba:	f006 b829 	b.w	c0de7610 <cx_bn_lock>

c0de15be <OUTLINED_FUNCTION_1>:
c0de15be:	b280      	uxth	r0, r0
c0de15c0:	f7ff b887 	b.w	c0de06d2 <io_send_sw>

c0de15c4 <OUTLINED_FUNCTION_2>:
c0de15c4:	2220      	movs	r2, #32
c0de15c6:	f006 b87f 	b.w	c0de76c8 <cx_bn_export>

c0de15ca <OUTLINED_FUNCTION_3>:
c0de15ca:	2120      	movs	r1, #32
c0de15cc:	f006 b832 	b.w	c0de7634 <cx_bn_alloc>

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
c0de15e8:	f006 b82e 	b.w	c0de7648 <cx_bn_alloc_init>

c0de15ec <OUTLINED_FUNCTION_7>:
c0de15ec:	4622      	mov	r2, r4
c0de15ee:	f001 bc18 	b.w	c0de2e22 <tEdwards_export>

c0de15f2 <OUTLINED_FUNCTION_8>:
c0de15f2:	2120      	movs	r1, #32
c0de15f4:	f7ff b862 	b.w	c0de06bc <io_send_response_pointer>

c0de15f8 <OUTLINED_FUNCTION_9>:
c0de15f8:	4629      	mov	r1, r5
c0de15fa:	f001 ba87 	b.w	c0de2b0c <tEdwards_Curve_alloc_init>
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
c0de161c:	f006 fac0 	bl	c0de7ba0 <__aeabi_memcpy>
c0de1620:	2020      	movs	r0, #32
c0de1622:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1626:	2220      	movs	r2, #32
c0de1628:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de162c:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1630:	f006 fab6 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de1654:	f005 fab2 	bl	c0de6bbc <io_send_response_buffers>
c0de1658:	b004      	add	sp, #16
c0de165a:	bd80      	pop	{r7, pc}

c0de165c <helper_send_response_sig>:
c0de165c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de165e:	b099      	sub	sp, #100	@ 0x64
c0de1660:	f10d 0402 	add.w	r4, sp, #2
c0de1664:	2161      	movs	r1, #97	@ 0x61
c0de1666:	1c65      	adds	r5, r4, #1
c0de1668:	4628      	mov	r0, r5
c0de166a:	f006 faa3 	bl	c0de7bb4 <__aeabi_memclr>
c0de166e:	4808      	ldr	r0, [pc, #32]	@ (c0de1690 <helper_send_response_sig+0x34>)
c0de1670:	f000 f810 	bl	c0de1694 <OUTLINED_FUNCTION_0>
c0de1674:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1678:	f006 fa92 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de16be:	f006 fad5 	bl	c0de7c6c <strlen>
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
c0de16da:	f006 fa6b 	bl	c0de7bb4 <__aeabi_memclr>
c0de16de:	ae39      	add	r6, sp, #228	@ 0xe4
c0de16e0:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de16e4:	4630      	mov	r0, r6
c0de16e6:	f005 f817 	bl	c0de6718 <buffer_read_u8>
c0de16ea:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de16ee:	af2e      	add	r7, sp, #184	@ 0xb8
c0de16f0:	4630      	mov	r0, r6
c0de16f2:	4639      	mov	r1, r7
c0de16f4:	f005 f863 	bl	c0de67be <buffer_read_bip32_path>
c0de16f8:	2005      	movs	r0, #5
c0de16fa:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de16fe:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1702:	463a      	mov	r2, r7
c0de1704:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1708:	e9cd 5100 	strd	r5, r1, [sp]
c0de170c:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1710:	2000      	movs	r0, #0
c0de1712:	2121      	movs	r1, #33	@ 0x21
c0de1714:	f005 f914 	bl	c0de6940 <bip32_derive_with_seed_get_pubkey_256>
c0de1718:	b9e0      	cbnz	r0, c0de1754 <swap_handle_check_address+0xae>
c0de171a:	ad10      	add	r5, sp, #64	@ 0x40
c0de171c:	2114      	movs	r1, #20
c0de171e:	4628      	mov	r0, r5
c0de1720:	f006 fa48 	bl	c0de7bb4 <__aeabi_memclr>
c0de1724:	a815      	add	r0, sp, #84	@ 0x54
c0de1726:	4629      	mov	r1, r5
c0de1728:	2214      	movs	r2, #20
c0de172a:	f7fe fc7d 	bl	c0de0028 <address_from_pubkey>
c0de172e:	ae05      	add	r6, sp, #20
c0de1730:	2129      	movs	r1, #41	@ 0x29
c0de1732:	4630      	mov	r0, r6
c0de1734:	f006 fa3e 	bl	c0de7bb4 <__aeabi_memclr>
c0de1738:	4628      	mov	r0, r5
c0de173a:	2114      	movs	r1, #20
c0de173c:	4632      	mov	r2, r6
c0de173e:	2329      	movs	r3, #41	@ 0x29
c0de1740:	f005 f9dc 	bl	c0de6afc <format_hex>
c0de1744:	6921      	ldr	r1, [r4, #16]
c0de1746:	4630      	mov	r0, r6
c0de1748:	2229      	movs	r2, #41	@ 0x29
c0de174a:	f006 fa97 	bl	c0de7c7c <strncmp>
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
c0de1768:	f006 fa24 	bl	c0de7bb4 <__aeabi_memclr>
c0de176c:	f106 050e 	add.w	r5, r6, #14
c0de1770:	2132      	movs	r1, #50	@ 0x32
c0de1772:	4628      	mov	r0, r5
c0de1774:	f006 fa1e 	bl	c0de7bb4 <__aeabi_memclr>
c0de1778:	2000      	movs	r0, #0
c0de177a:	7b31      	ldrb	r1, [r6, #12]
c0de177c:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1780:	68b0      	ldr	r0, [r6, #8]
c0de1782:	aa02      	add	r2, sp, #8
c0de1784:	f005 fba6 	bl	c0de6ed4 <swap_str_to_u64>
c0de1788:	b178      	cbz	r0, c0de17aa <swap_handle_get_printable_amount+0x4e>
c0de178a:	2003      	movs	r0, #3
c0de178c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1790:	211e      	movs	r1, #30
c0de1792:	9000      	str	r0, [sp, #0]
c0de1794:	4620      	mov	r0, r4
c0de1796:	f005 f96a 	bl	c0de6a6e <format_fpu64>
c0de179a:	9400      	str	r4, [sp, #0]
c0de179c:	4628      	mov	r0, r5
c0de179e:	2132      	movs	r1, #50	@ 0x32
c0de17a0:	231e      	movs	r3, #30
c0de17a2:	4a03      	ldr	r2, [pc, #12]	@ (c0de17b0 <swap_handle_get_printable_amount+0x54>)
c0de17a4:	447a      	add	r2, pc
c0de17a6:	f005 fd67 	bl	c0de7278 <snprintf>
c0de17aa:	b00c      	add	sp, #48	@ 0x30
c0de17ac:	bd70      	pop	{r4, r5, r6, pc}
c0de17ae:	bf00      	nop
c0de17b0:	00006948 	.word	0x00006948

c0de17b4 <swap_copy_transaction_parameters>:
c0de17b4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de17b6:	b093      	sub	sp, #76	@ 0x4c
c0de17b8:	6985      	ldr	r5, [r0, #24]
c0de17ba:	b3ad      	cbz	r5, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de17bc:	4604      	mov	r4, r0
c0de17be:	4628      	mov	r0, r5
c0de17c0:	f006 fa54 	bl	c0de7c6c <strlen>
c0de17c4:	2828      	cmp	r0, #40	@ 0x28
c0de17c6:	d12f      	bne.n	c0de1828 <swap_copy_transaction_parameters+0x74>
c0de17c8:	68a7      	ldr	r7, [r4, #8]
c0de17ca:	b36f      	cbz	r7, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de17cc:	466e      	mov	r6, sp
c0de17ce:	2148      	movs	r1, #72	@ 0x48
c0de17d0:	4630      	mov	r0, r6
c0de17d2:	f006 f9ef 	bl	c0de7bb4 <__aeabi_memclr>
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
c0de17fc:	f005 fb6a 	bl	c0de6ed4 <swap_str_to_u64>
c0de1800:	b190      	cbz	r0, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de1802:	7d21      	ldrb	r1, [r4, #20]
c0de1804:	6920      	ldr	r0, [r4, #16]
c0de1806:	f106 0210 	add.w	r2, r6, #16
c0de180a:	f005 fb63 	bl	c0de6ed4 <swap_str_to_u64>
c0de180e:	b158      	cbz	r0, c0de1828 <swap_copy_transaction_parameters+0x74>
c0de1810:	2401      	movs	r4, #1
c0de1812:	f88d 4000 	strb.w	r4, [sp]
c0de1816:	f005 fd23 	bl	c0de7260 <os_explicit_zero_BSS_segment>
c0de181a:	4805      	ldr	r0, [pc, #20]	@ (c0de1830 <swap_copy_transaction_parameters+0x7c>)
c0de181c:	4669      	mov	r1, sp
c0de181e:	2248      	movs	r2, #72	@ 0x48
c0de1820:	4448      	add	r0, r9
c0de1822:	f006 f9bd 	bl	c0de7ba0 <__aeabi_memcpy>
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
c0de1868:	f006 f9a4 	bl	c0de7bb4 <__aeabi_memclr>
c0de186c:	4620      	mov	r0, r4
c0de186e:	2114      	movs	r1, #20
c0de1870:	462a      	mov	r2, r5
c0de1872:	2329      	movs	r3, #41	@ 0x29
c0de1874:	f005 f942 	bl	c0de6afc <format_hex>
c0de1878:	eb09 0006 	add.w	r0, r9, r6
c0de187c:	4629      	mov	r1, r5
c0de187e:	3018      	adds	r0, #24
c0de1880:	f006 f9ea 	bl	c0de7c58 <strcmp>
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
c0de18ac:	f005 fad9 	bl	c0de6e62 <send_swap_error_simple>
c0de18b0:	00000310 	.word	0x00000310

c0de18b4 <transaction_deserialize>:
c0de18b4:	b570      	push	{r4, r5, r6, lr}
c0de18b6:	460d      	mov	r5, r1
c0de18b8:	4604      	mov	r4, r0
c0de18ba:	b910      	cbnz	r0, c0de18c2 <transaction_deserialize+0xe>
c0de18bc:	2001      	movs	r0, #1
c0de18be:	f005 fc5b 	bl	c0de7178 <assert_exit>
c0de18c2:	b915      	cbnz	r5, c0de18ca <transaction_deserialize+0x16>
c0de18c4:	2001      	movs	r0, #1
c0de18c6:	f005 fc57 	bl	c0de7178 <assert_exit>
c0de18ca:	6860      	ldr	r0, [r4, #4]
c0de18cc:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de18d0:	d901      	bls.n	c0de18d6 <transaction_deserialize+0x22>
c0de18d2:	20f9      	movs	r0, #249	@ 0xf9
c0de18d4:	e04b      	b.n	c0de196e <transaction_deserialize+0xba>
c0de18d6:	4620      	mov	r0, r4
c0de18d8:	4629      	mov	r1, r5
c0de18da:	2200      	movs	r2, #0
c0de18dc:	f004 ff32 	bl	c0de6744 <buffer_read_u64>
c0de18e0:	b330      	cbz	r0, c0de1930 <transaction_deserialize+0x7c>
c0de18e2:	6820      	ldr	r0, [r4, #0]
c0de18e4:	68a1      	ldr	r1, [r4, #8]
c0de18e6:	4408      	add	r0, r1
c0de18e8:	2114      	movs	r1, #20
c0de18ea:	61a8      	str	r0, [r5, #24]
c0de18ec:	4620      	mov	r0, r4
c0de18ee:	f004 ff08 	bl	c0de6702 <buffer_seek_cur>
c0de18f2:	b1f8      	cbz	r0, c0de1934 <transaction_deserialize+0x80>
c0de18f4:	f105 0108 	add.w	r1, r5, #8
c0de18f8:	4620      	mov	r0, r4
c0de18fa:	2200      	movs	r2, #0
c0de18fc:	2600      	movs	r6, #0
c0de18fe:	f004 ff21 	bl	c0de6744 <buffer_read_u64>
c0de1902:	b1c8      	cbz	r0, c0de1938 <transaction_deserialize+0x84>
c0de1904:	f105 0120 	add.w	r1, r5, #32
c0de1908:	4620      	mov	r0, r4
c0de190a:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de190e:	f004 ff39 	bl	c0de6784 <buffer_read_varint>
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
c0de1946:	f004 fedc 	bl	c0de6702 <buffer_seek_cur>
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
c0de197e:	f005 fbfb 	bl	c0de7178 <assert_exit>
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
c0de19c2:	f005 f8fb 	bl	c0de6bbc <io_send_response_buffers>
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
c0de1a1c:	f004 ffc4 	bl	c0de69a8 <bip32_derive_with_seed_ecdsa_sign_hash_256>
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
c0de1a6e:	f005 ff5b 	bl	c0de7928 <os_sched_exit>
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
c0de1ad2:	f003 f88b 	bl	c0de4bec <nbgl_useCaseHomeAndSettings>
c0de1ad6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1ad8:	00000358 	.word	0x00000358
c0de1adc:	00007782 	.word	0x00007782
c0de1ae0:	0000650d 	.word	0x0000650d
c0de1ae4:	00006674 	.word	0x00006674
c0de1ae8:	00006570 	.word	0x00006570
c0de1aec:	000063dc 	.word	0x000063dc
c0de1af0:	ffffffb1 	.word	0xffffffb1
c0de1af4:	0000708e 	.word	0x0000708e
c0de1af8:	00007080 	.word	0x00007080
c0de1afc:	000066e4 	.word	0x000066e4
c0de1b00:	0000620b 	.word	0x0000620b

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
c0de1b38:	f005 fd30 	bl	c0de759c <pic>
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
c0de1b66:	f005 fd49 	bl	c0de75fc <nvm_write>
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
c0de1b88:	f003 fcc6 	bl	c0de5518 <nbgl_useCaseChoice>
c0de1b8c:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1b8e:	bf00      	nop
c0de1b90:	00000358 	.word	0x00000358
c0de1b94:	000076e2 	.word	0x000076e2
c0de1b98:	000076c6 	.word	0x000076c6
c0de1b9c:	000076b6 	.word	0x000076b6
c0de1ba0:	00000045 	.word	0x00000045
c0de1ba4:	000064c8 	.word	0x000064c8
c0de1ba8:	000062d5 	.word	0x000062d5
c0de1bac:	00006300 	.word	0x00006300
c0de1bb0:	0000639e 	.word	0x0000639e
c0de1bb4:	00006584 	.word	0x00006584

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
c0de1be6:	f005 fd09 	bl	c0de75fc <nvm_write>
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
c0de1c10:	f002 ffec 	bl	c0de4bec <nbgl_useCaseHomeAndSettings>
c0de1c14:	b006      	add	sp, #24
c0de1c16:	bdb0      	pop	{r4, r5, r7, pc}
c0de1c18:	00000358 	.word	0x00000358
c0de1c1c:	0000763a 	.word	0x0000763a
c0de1c20:	fffffe71 	.word	0xfffffe71
c0de1c24:	00006f4e 	.word	0x00006f4e
c0de1c28:	00006f40 	.word	0x00006f40
c0de1c2c:	000065a6 	.word	0x000065a6
c0de1c30:	000060cd 	.word	0x000060cd

c0de1c34 <OUTLINED_FUNCTION_0>:
c0de1c34:	4620      	mov	r0, r4
c0de1c36:	f005 bcb1 	b.w	c0de759c <pic>
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
c0de1c5a:	f005 ffab 	bl	c0de7bb4 <__aeabi_memclr>
c0de1c5e:	ac03      	add	r4, sp, #12
c0de1c60:	2114      	movs	r1, #20
c0de1c62:	4620      	mov	r0, r4
c0de1c64:	f005 ffa6 	bl	c0de7bb4 <__aeabi_memclr>
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
c0de1c82:	f004 ff3b 	bl	c0de6afc <format_hex>
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
c0de1ca2:	f003 f91d 	bl	c0de4ee0 <nbgl_useCaseAddressReview>
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
c0de1cd8:	000061da 	.word	0x000061da
c0de1cdc:	000064da 	.word	0x000064da

c0de1ce0 <io_send_sw>:
c0de1ce0:	b580      	push	{r7, lr}
c0de1ce2:	4602      	mov	r2, r0
c0de1ce4:	2000      	movs	r0, #0
c0de1ce6:	2100      	movs	r1, #0
c0de1ce8:	f004 ff68 	bl	c0de6bbc <io_send_response_buffers>
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
c0de1d08:	f003 badc 	b.w	c0de52c4 <nbgl_useCaseReviewStatus>
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
c0de1d3a:	f005 ff3b 	bl	c0de7bb4 <__aeabi_memclr>
c0de1d3e:	eb09 0007 	add.w	r0, r9, r7
c0de1d42:	2114      	movs	r1, #20
c0de1d44:	462a      	mov	r2, r5
c0de1d46:	2340      	movs	r3, #64	@ 0x40
c0de1d48:	302d      	adds	r0, #45	@ 0x2d
c0de1d4a:	f004 fed7 	bl	c0de6afc <format_hex>
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
c0de1d8e:	f003 f895 	bl	c0de4ebc <nbgl_useCaseReviewBlindSigning>
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
c0de1dc2:	f002 ffbb 	bl	c0de4d3c <nbgl_useCaseReview>
c0de1dc6:	2000      	movs	r0, #0
c0de1dc8:	b005      	add	sp, #20
c0de1dca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1dcc:	00000000 	.word	0x00000000
c0de1dd0:	000003a0 	.word	0x000003a0
c0de1dd4:	000063c6 	.word	0x000063c6
c0de1dd8:	00000085 	.word	0x00000085
c0de1ddc:	000060ee 	.word	0x000060ee
c0de1de0:	00006401 	.word	0x00006401
c0de1de4:	000060ba 	.word	0x000060ba
c0de1de8:	000063cd 	.word	0x000063cd

c0de1dec <io_send_sw>:
c0de1dec:	b580      	push	{r7, lr}
c0de1dee:	4602      	mov	r2, r0
c0de1df0:	2000      	movs	r0, #0
c0de1df2:	2100      	movs	r1, #0
c0de1df4:	f004 fee2 	bl	c0de6bbc <io_send_response_buffers>
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
c0de1e10:	f003 ba58 	b.w	c0de52c4 <nbgl_useCaseReviewStatus>
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
c0de1e36:	f005 f95e 	bl	c0de70f6 <cx_blake2b_512_hash_iovec>
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
c0de1e8c:	00000325 	.word	0x00000325

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
c0de1ecc:	f001 f894 	bl	c0de2ff8 <tEdwards_scalarMul>
c0de1ed0:	b918      	cbnz	r0, c0de1eda <zkn_prv2pub+0x4a>
c0de1ed2:	4628      	mov	r0, r5
c0de1ed4:	4621      	mov	r1, r4
c0de1ed6:	f000 ffca 	bl	c0de2e6e <tEdwards_normalize>
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
c0de1efa:	f000 fc88 	bl	c0de280e <tEdwards_alloc>
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
c0de1f22:	4894      	ldr	r0, [pc, #592]	@ (c0de2174 <EddsaPoseidon_Sign_final+0x294>)
c0de1f24:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1f28:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f2c:	a812      	add	r0, sp, #72	@ 0x48
c0de1f2e:	2109      	movs	r1, #9
c0de1f30:	2240      	movs	r2, #64	@ 0x40
c0de1f32:	f005 f90a 	bl	c0de714a <cx_hash_init_ex>
c0de1f36:	2800      	cmp	r0, #0
c0de1f38:	d1f4      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f3a:	f104 0120 	add.w	r1, r4, #32
c0de1f3e:	a812      	add	r0, sp, #72	@ 0x48
c0de1f40:	2220      	movs	r2, #32
c0de1f42:	f005 f907 	bl	c0de7154 <cx_hash_update>
c0de1f46:	2800      	cmp	r0, #0
c0de1f48:	d1ec      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f4a:	a812      	add	r0, sp, #72	@ 0x48
c0de1f4c:	4639      	mov	r1, r7
c0de1f4e:	2220      	movs	r2, #32
c0de1f50:	f005 f900 	bl	c0de7154 <cx_hash_update>
c0de1f54:	2800      	cmp	r0, #0
c0de1f56:	d1e5      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f58:	a812      	add	r0, sp, #72	@ 0x48
c0de1f5a:	ac62      	add	r4, sp, #392	@ 0x188
c0de1f5c:	4621      	mov	r1, r4
c0de1f5e:	f005 f8ea 	bl	c0de7136 <cx_hash_final>
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
c0de1f80:	f005 fb62 	bl	c0de7648 <cx_bn_alloc_init>
c0de1f84:	2800      	cmp	r0, #0
c0de1f86:	d1cd      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f88:	a887      	add	r0, sp, #540	@ 0x21c
c0de1f8a:	2140      	movs	r1, #64	@ 0x40
c0de1f8c:	f005 fb52 	bl	c0de7634 <cx_bn_alloc>
c0de1f90:	2800      	cmp	r0, #0
c0de1f92:	d1c7      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1f94:	4978      	ldr	r1, [pc, #480]	@ (c0de2178 <EddsaPoseidon_Sign_final+0x298>)
c0de1f96:	f10d 0808 	add.w	r8, sp, #8
c0de1f9a:	2240      	movs	r2, #64	@ 0x40
c0de1f9c:	4640      	mov	r0, r8
c0de1f9e:	4479      	add	r1, pc
c0de1fa0:	f005 fdfe 	bl	c0de7ba0 <__aeabi_memcpy>
c0de1fa4:	a888      	add	r0, sp, #544	@ 0x220
c0de1fa6:	2140      	movs	r1, #64	@ 0x40
c0de1fa8:	4642      	mov	r2, r8
c0de1faa:	2340      	movs	r3, #64	@ 0x40
c0de1fac:	f005 fb4c 	bl	c0de7648 <cx_bn_alloc_init>
c0de1fb0:	2800      	cmp	r0, #0
c0de1fb2:	d1b7      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fb4:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1fb6:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1fba:	f005 fbd9 	bl	c0de7770 <cx_bn_reduce>
c0de1fbe:	2800      	cmp	r0, #0
c0de1fc0:	d1b0      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fc2:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1fc4:	f105 010c 	add.w	r1, r5, #12
c0de1fc8:	ab82      	add	r3, sp, #520	@ 0x208
c0de1fca:	4628      	mov	r0, r5
c0de1fcc:	f000 ffae 	bl	c0de2f2c <tEdwards_scalarMul_bn>
c0de1fd0:	2800      	cmp	r0, #0
c0de1fd2:	d1a7      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fd4:	a982      	add	r1, sp, #520	@ 0x208
c0de1fd6:	4628      	mov	r0, r5
c0de1fd8:	f000 ff49 	bl	c0de2e6e <tEdwards_normalize>
c0de1fdc:	2800      	cmp	r0, #0
c0de1fde:	d1a1      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1fe0:	f10b 0320 	add.w	r3, fp, #32
c0de1fe4:	a982      	add	r1, sp, #520	@ 0x208
c0de1fe6:	4628      	mov	r0, r5
c0de1fe8:	465a      	mov	r2, fp
c0de1fea:	f000 ff1a 	bl	c0de2e22 <tEdwards_export>
c0de1fee:	2800      	cmp	r0, #0
c0de1ff0:	d198      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de1ff2:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1ff4:	a952      	add	r1, sp, #328	@ 0x148
c0de1ff6:	2220      	movs	r2, #32
c0de1ff8:	f005 fb66 	bl	c0de76c8 <cx_bn_export>
c0de1ffc:	2800      	cmp	r0, #0
c0de1ffe:	d191      	bne.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2000:	a888      	add	r0, sp, #544	@ 0x220
c0de2002:	f005 fb2d 	bl	c0de7660 <cx_bn_destroy>
c0de2006:	2800      	cmp	r0, #0
c0de2008:	f47f af8c 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de200c:	a889      	add	r0, sp, #548	@ 0x224
c0de200e:	f005 fb27 	bl	c0de7660 <cx_bn_destroy>
c0de2012:	2800      	cmp	r0, #0
c0de2014:	f47f af86 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2018:	a887      	add	r0, sp, #540	@ 0x21c
c0de201a:	f005 fb21 	bl	c0de7660 <cx_bn_destroy>
c0de201e:	2800      	cmp	r0, #0
c0de2020:	f47f af80 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2024:	4628      	mov	r0, r5
c0de2026:	f000 fea0 	bl	c0de2d6a <tEdwards_Curve_partial_destroy>
c0de202a:	2800      	cmp	r0, #0
c0de202c:	f47f af7a 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2030:	f105 0420 	add.w	r4, r5, #32
c0de2034:	a88a      	add	r0, sp, #552	@ 0x228
c0de2036:	f000 f8a5 	bl	c0de2184 <OUTLINED_FUNCTION_0>
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
c0de2056:	f005 fb23 	bl	c0de76a0 <cx_bn_copy>
c0de205a:	2800      	cmp	r0, #0
c0de205c:	f47f af62 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2060:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de2062:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de2064:	f005 fb1c 	bl	c0de76a0 <cx_bn_copy>
c0de2068:	2800      	cmp	r0, #0
c0de206a:	f47f af5b 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de206e:	f8da 1000 	ldr.w	r1, [sl]
c0de2072:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de2074:	f005 fb14 	bl	c0de76a0 <cx_bn_copy>
c0de2078:	2800      	cmp	r0, #0
c0de207a:	f47f af53 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de207e:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de2082:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de2084:	f005 fb0c 	bl	c0de76a0 <cx_bn_copy>
c0de2088:	2800      	cmp	r0, #0
c0de208a:	f47f af4b 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de208e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2090:	a962      	add	r1, sp, #392	@ 0x188
c0de2092:	2220      	movs	r2, #32
c0de2094:	f005 faf8 	bl	c0de7688 <cx_bn_init>
c0de2098:	2800      	cmp	r0, #0
c0de209a:	f47f af43 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de209e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de20a0:	4622      	mov	r2, r4
c0de20a2:	4601      	mov	r1, r0
c0de20a4:	f005 fb9a 	bl	c0de77dc <cx_mont_to_montgomery>
c0de20a8:	2800      	cmp	r0, #0
c0de20aa:	f47f af3b 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20ae:	a982      	add	r1, sp, #520	@ 0x208
c0de20b0:	4628      	mov	r0, r5
c0de20b2:	f000 fbc1 	bl	c0de2838 <tEdwards_destroy>
c0de20b6:	2800      	cmp	r0, #0
c0de20b8:	f47f af34 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20bc:	a885      	add	r0, sp, #532	@ 0x214
c0de20be:	2120      	movs	r1, #32
c0de20c0:	f005 fab8 	bl	c0de7634 <cx_bn_alloc>
c0de20c4:	2800      	cmp	r0, #0
c0de20c6:	f47f af2d 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20ca:	a88a      	add	r0, sp, #552	@ 0x228
c0de20cc:	aa85      	add	r2, sp, #532	@ 0x214
c0de20ce:	2100      	movs	r1, #0
c0de20d0:	2301      	movs	r3, #1
c0de20d2:	f001 f91d 	bl	c0de3310 <Poseidon>
c0de20d6:	2800      	cmp	r0, #0
c0de20d8:	f47f af24 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20dc:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de20de:	4622      	mov	r2, r4
c0de20e0:	4601      	mov	r1, r0
c0de20e2:	f005 fb87 	bl	c0de77f4 <cx_mont_from_montgomery>
c0de20e6:	2800      	cmp	r0, #0
c0de20e8:	f47f af1c 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20ec:	a886      	add	r0, sp, #536	@ 0x218
c0de20ee:	aa5a      	add	r2, sp, #360	@ 0x168
c0de20f0:	2120      	movs	r1, #32
c0de20f2:	2320      	movs	r3, #32
c0de20f4:	f005 faa8 	bl	c0de7648 <cx_bn_alloc_init>
c0de20f8:	2800      	cmp	r0, #0
c0de20fa:	f47f af13 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de20fe:	a801      	add	r0, sp, #4
c0de2100:	2120      	movs	r1, #32
c0de2102:	f005 fa97 	bl	c0de7634 <cx_bn_alloc>
c0de2106:	2800      	cmp	r0, #0
c0de2108:	f47f af0c 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de210c:	f108 0220 	add.w	r2, r8, #32
c0de2110:	a888      	add	r0, sp, #544	@ 0x220
c0de2112:	2120      	movs	r1, #32
c0de2114:	2320      	movs	r3, #32
c0de2116:	f005 fa97 	bl	c0de7648 <cx_bn_alloc_init>
c0de211a:	2800      	cmp	r0, #0
c0de211c:	f47f af02 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2120:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2122:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de2126:	9801      	ldr	r0, [sp, #4]
c0de2128:	f005 fb16 	bl	c0de7758 <cx_bn_mod_mul>
c0de212c:	2800      	cmp	r0, #0
c0de212e:	f47f aef9 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2132:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2134:	a952      	add	r1, sp, #328	@ 0x148
c0de2136:	2220      	movs	r2, #32
c0de2138:	f005 faa6 	bl	c0de7688 <cx_bn_init>
c0de213c:	2800      	cmp	r0, #0
c0de213e:	f47f aef1 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2142:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2144:	9a01      	ldr	r2, [sp, #4]
c0de2146:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de214a:	f005 faed 	bl	c0de7728 <cx_bn_mod_add>
c0de214e:	2800      	cmp	r0, #0
c0de2150:	f47f aee8 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2154:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de2156:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de215a:	f005 fb09 	bl	c0de7770 <cx_bn_reduce>
c0de215e:	2800      	cmp	r0, #0
c0de2160:	f47f aee0 	bne.w	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2164:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2166:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de216a:	2220      	movs	r2, #32
c0de216c:	f005 faac 	bl	c0de76c8 <cx_bn_export>
c0de2170:	e6d8      	b.n	c0de1f24 <EddsaPoseidon_Sign_final+0x44>
c0de2172:	bf00      	nop
c0de2174:	5a4b4e03 	.word	0x5a4b4e03
c0de2178:	00006c02 	.word	0x00006c02

c0de217c <rev64>:
c0de217c:	ba0a      	rev	r2, r1
c0de217e:	ba01      	rev	r1, r0
c0de2180:	4610      	mov	r0, r2
c0de2182:	4770      	bx	lr

c0de2184 <OUTLINED_FUNCTION_0>:
c0de2184:	2105      	movs	r1, #5
c0de2186:	2205      	movs	r2, #5
c0de2188:	4623      	mov	r3, r4
c0de218a:	f001 b85b 	b.w	c0de3244 <Poseidon_alloc_init>

c0de218e <zkn_frost_interpolate>:
c0de218e:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de2192:	b085      	sub	sp, #20
c0de2194:	460e      	mov	r6, r1
c0de2196:	4607      	mov	r7, r0
c0de2198:	a803      	add	r0, sp, #12
c0de219a:	2120      	movs	r1, #32
c0de219c:	f000 fb2b 	bl	c0de27f6 <OUTLINED_FUNCTION_2>
c0de21a0:	b998      	cbnz	r0, c0de21ca <zkn_frost_interpolate+0x3c>
c0de21a2:	a802      	add	r0, sp, #8
c0de21a4:	2120      	movs	r1, #32
c0de21a6:	f005 fa45 	bl	c0de7634 <cx_bn_alloc>
c0de21aa:	b970      	cbnz	r0, c0de21ca <zkn_frost_interpolate+0x3c>
c0de21ac:	a801      	add	r0, sp, #4
c0de21ae:	2120      	movs	r1, #32
c0de21b0:	f005 fa40 	bl	c0de7634 <cx_bn_alloc>
c0de21b4:	b948      	cbnz	r0, c0de21ca <zkn_frost_interpolate+0x3c>
c0de21b6:	9803      	ldr	r0, [sp, #12]
c0de21b8:	2101      	movs	r1, #1
c0de21ba:	f005 fa7b 	bl	c0de76b4 <cx_bn_set_u32>
c0de21be:	b920      	cbnz	r0, c0de21ca <zkn_frost_interpolate+0x3c>
c0de21c0:	9802      	ldr	r0, [sp, #8]
c0de21c2:	2101      	movs	r1, #1
c0de21c4:	f005 fa76 	bl	c0de76b4 <cx_bn_set_u32>
c0de21c8:	b110      	cbz	r0, c0de21d0 <zkn_frost_interpolate+0x42>
c0de21ca:	b005      	add	sp, #20
c0de21cc:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de21d0:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de21d4:	f10d 0a10 	add.w	sl, sp, #16
c0de21d8:	b31e      	cbz	r6, c0de2222 <zkn_frost_interpolate+0x94>
c0de21da:	6838      	ldr	r0, [r7, #0]
c0de21dc:	4629      	mov	r1, r5
c0de21de:	4652      	mov	r2, sl
c0de21e0:	f005 fa7e 	bl	c0de76e0 <cx_bn_cmp>
c0de21e4:	2800      	cmp	r0, #0
c0de21e6:	d1f0      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de21e8:	9804      	ldr	r0, [sp, #16]
c0de21ea:	b1b8      	cbz	r0, c0de221c <zkn_frost_interpolate+0x8e>
c0de21ec:	9802      	ldr	r0, [sp, #8]
c0de21ee:	683a      	ldr	r2, [r7, #0]
c0de21f0:	4623      	mov	r3, r4
c0de21f2:	4601      	mov	r1, r0
c0de21f4:	f005 fab0 	bl	c0de7758 <cx_bn_mod_mul>
c0de21f8:	2800      	cmp	r0, #0
c0de21fa:	d1e6      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de21fc:	6839      	ldr	r1, [r7, #0]
c0de21fe:	9801      	ldr	r0, [sp, #4]
c0de2200:	462a      	mov	r2, r5
c0de2202:	4623      	mov	r3, r4
c0de2204:	f005 fa9c 	bl	c0de7740 <cx_bn_mod_sub>
c0de2208:	2800      	cmp	r0, #0
c0de220a:	d1de      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de220c:	9803      	ldr	r0, [sp, #12]
c0de220e:	9a01      	ldr	r2, [sp, #4]
c0de2210:	4623      	mov	r3, r4
c0de2212:	4601      	mov	r1, r0
c0de2214:	f005 faa0 	bl	c0de7758 <cx_bn_mod_mul>
c0de2218:	2800      	cmp	r0, #0
c0de221a:	d1d6      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de221c:	3704      	adds	r7, #4
c0de221e:	3e01      	subs	r6, #1
c0de2220:	e7da      	b.n	c0de21d8 <zkn_frost_interpolate+0x4a>
c0de2222:	9903      	ldr	r1, [sp, #12]
c0de2224:	4640      	mov	r0, r8
c0de2226:	4622      	mov	r2, r4
c0de2228:	f005 faae 	bl	c0de7788 <cx_bn_mod_invert_nprime>
c0de222c:	2800      	cmp	r0, #0
c0de222e:	d1cc      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de2230:	9a02      	ldr	r2, [sp, #8]
c0de2232:	4640      	mov	r0, r8
c0de2234:	4641      	mov	r1, r8
c0de2236:	4623      	mov	r3, r4
c0de2238:	f005 fa8e 	bl	c0de7758 <cx_bn_mod_mul>
c0de223c:	2800      	cmp	r0, #0
c0de223e:	d1c4      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de2240:	a803      	add	r0, sp, #12
c0de2242:	f005 fa0d 	bl	c0de7660 <cx_bn_destroy>
c0de2246:	2800      	cmp	r0, #0
c0de2248:	d1bf      	bne.n	c0de21ca <zkn_frost_interpolate+0x3c>
c0de224a:	a802      	add	r0, sp, #8
c0de224c:	f005 fa08 	bl	c0de7660 <cx_bn_destroy>
c0de2250:	e7bb      	b.n	c0de21ca <zkn_frost_interpolate+0x3c>

c0de2252 <zkn_frost_interpolate_secrets>:
c0de2252:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de2256:	460f      	mov	r7, r1
c0de2258:	4606      	mov	r6, r0
c0de225a:	a802      	add	r0, sp, #8
c0de225c:	2120      	movs	r1, #32
c0de225e:	461c      	mov	r4, r3
c0de2260:	4692      	mov	sl, r2
c0de2262:	f005 f9e7 	bl	c0de7634 <cx_bn_alloc>
c0de2266:	b108      	cbz	r0, c0de226c <zkn_frost_interpolate_secrets+0x1a>
c0de2268:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de226c:	a801      	add	r0, sp, #4
c0de226e:	2120      	movs	r1, #32
c0de2270:	f005 f9e0 	bl	c0de7634 <cx_bn_alloc>
c0de2274:	2800      	cmp	r0, #0
c0de2276:	d1f7      	bne.n	c0de2268 <zkn_frost_interpolate_secrets+0x16>
c0de2278:	9802      	ldr	r0, [sp, #8]
c0de227a:	2100      	movs	r1, #0
c0de227c:	f005 fa1a 	bl	c0de76b4 <cx_bn_set_u32>
c0de2280:	2800      	cmp	r0, #0
c0de2282:	d1f1      	bne.n	c0de2268 <zkn_frost_interpolate_secrets+0x16>
c0de2284:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2288:	2500      	movs	r5, #0
c0de228a:	42ac      	cmp	r4, r5
c0de228c:	d01d      	beq.n	c0de22ca <zkn_frost_interpolate_secrets+0x78>
c0de228e:	9801      	ldr	r0, [sp, #4]
c0de2290:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de2294:	68b3      	ldr	r3, [r6, #8]
c0de2296:	4621      	mov	r1, r4
c0de2298:	9000      	str	r0, [sp, #0]
c0de229a:	4638      	mov	r0, r7
c0de229c:	f7ff ff77 	bl	c0de218e <zkn_frost_interpolate>
c0de22a0:	2800      	cmp	r0, #0
c0de22a2:	d1e1      	bne.n	c0de2268 <zkn_frost_interpolate_secrets+0x16>
c0de22a4:	9801      	ldr	r0, [sp, #4]
c0de22a6:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de22aa:	68b3      	ldr	r3, [r6, #8]
c0de22ac:	4601      	mov	r1, r0
c0de22ae:	f005 fa53 	bl	c0de7758 <cx_bn_mod_mul>
c0de22b2:	2800      	cmp	r0, #0
c0de22b4:	d1d8      	bne.n	c0de2268 <zkn_frost_interpolate_secrets+0x16>
c0de22b6:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de22ba:	68b3      	ldr	r3, [r6, #8]
c0de22bc:	4601      	mov	r1, r0
c0de22be:	f005 fa33 	bl	c0de7728 <cx_bn_mod_add>
c0de22c2:	3501      	adds	r5, #1
c0de22c4:	2800      	cmp	r0, #0
c0de22c6:	d0e0      	beq.n	c0de228a <zkn_frost_interpolate_secrets+0x38>
c0de22c8:	e7ce      	b.n	c0de2268 <zkn_frost_interpolate_secrets+0x16>
c0de22ca:	68b2      	ldr	r2, [r6, #8]
c0de22cc:	9902      	ldr	r1, [sp, #8]
c0de22ce:	4640      	mov	r0, r8
c0de22d0:	f005 fa4e 	bl	c0de7770 <cx_bn_reduce>
c0de22d4:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de22d8 <zkn_evalshare>:
c0de22d8:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de22dc:	460e      	mov	r6, r1
c0de22de:	6801      	ldr	r1, [r0, #0]
c0de22e0:	4607      	mov	r7, r0
c0de22e2:	a801      	add	r0, sp, #4
c0de22e4:	f000 fa87 	bl	c0de27f6 <OUTLINED_FUNCTION_2>
c0de22e8:	b108      	cbz	r0, c0de22ee <zkn_evalshare+0x16>
c0de22ea:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de22ee:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de22f2:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de22f6:	4640      	mov	r0, r8
c0de22f8:	f005 f9d2 	bl	c0de76a0 <cx_bn_copy>
c0de22fc:	2800      	cmp	r0, #0
c0de22fe:	d1f4      	bne.n	c0de22ea <zkn_evalshare+0x12>
c0de2300:	3e04      	subs	r6, #4
c0de2302:	68bb      	ldr	r3, [r7, #8]
c0de2304:	9801      	ldr	r0, [sp, #4]
c0de2306:	4641      	mov	r1, r8
c0de2308:	b17d      	cbz	r5, c0de232a <zkn_evalshare+0x52>
c0de230a:	4622      	mov	r2, r4
c0de230c:	f005 fa24 	bl	c0de7758 <cx_bn_mod_mul>
c0de2310:	2800      	cmp	r0, #0
c0de2312:	d1ea      	bne.n	c0de22ea <zkn_evalshare+0x12>
c0de2314:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de2318:	68bb      	ldr	r3, [r7, #8]
c0de231a:	9901      	ldr	r1, [sp, #4]
c0de231c:	4640      	mov	r0, r8
c0de231e:	f005 fa03 	bl	c0de7728 <cx_bn_mod_add>
c0de2322:	3d01      	subs	r5, #1
c0de2324:	2800      	cmp	r0, #0
c0de2326:	d0ec      	beq.n	c0de2302 <zkn_evalshare+0x2a>
c0de2328:	e7df      	b.n	c0de22ea <zkn_evalshare+0x12>
c0de232a:	461a      	mov	r2, r3
c0de232c:	f005 fa20 	bl	c0de7770 <cx_bn_reduce>
c0de2330:	2800      	cmp	r0, #0
c0de2332:	d1da      	bne.n	c0de22ea <zkn_evalshare+0x12>
c0de2334:	9901      	ldr	r1, [sp, #4]
c0de2336:	4640      	mov	r0, r8
c0de2338:	f005 f9b2 	bl	c0de76a0 <cx_bn_copy>
c0de233c:	2800      	cmp	r0, #0
c0de233e:	d1d4      	bne.n	c0de22ea <zkn_evalshare+0x12>
c0de2340:	a801      	add	r0, sp, #4
c0de2342:	f005 f98d 	bl	c0de7660 <cx_bn_destroy>
c0de2346:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
	...

c0de234c <zkn_frost_nonce_generate>:
c0de234c:	b5b0      	push	{r4, r5, r7, lr}
c0de234e:	b092      	sub	sp, #72	@ 0x48
c0de2350:	466d      	mov	r5, sp
c0de2352:	4604      	mov	r4, r0
c0de2354:	2120      	movs	r1, #32
c0de2356:	4628      	mov	r0, r5
c0de2358:	f004 ff01 	bl	c0de715e <cx_rng_no_throw>
c0de235c:	4808      	ldr	r0, [pc, #32]	@ (c0de2380 <zkn_frost_nonce_generate+0x34>)
c0de235e:	2220      	movs	r2, #32
c0de2360:	eb09 0100 	add.w	r1, r9, r0
c0de2364:	f105 0020 	add.w	r0, r5, #32
c0de2368:	f005 fc1a 	bl	c0de7ba0 <__aeabi_memcpy>
c0de236c:	2040      	movs	r0, #64	@ 0x40
c0de236e:	2101      	movs	r1, #1
c0de2370:	4622      	mov	r2, r4
c0de2372:	e9cd 5010 	strd	r5, r0, [sp, #64]	@ 0x40
c0de2376:	a810      	add	r0, sp, #64	@ 0x40
c0de2378:	f004 fe7e 	bl	c0de7078 <cx_sha256_hash_iovec>
c0de237c:	b012      	add	sp, #72	@ 0x48
c0de237e:	bdb0      	pop	{r4, r5, r7, pc}
c0de2380:	000002f0 	.word	0x000002f0

c0de2384 <zkn_frost_commit>:
c0de2384:	b510      	push	{r4, lr}
c0de2386:	4608      	mov	r0, r1
c0de2388:	460c      	mov	r4, r1
c0de238a:	f7ff ffdf 	bl	c0de234c <zkn_frost_nonce_generate>
c0de238e:	b100      	cbz	r0, c0de2392 <zkn_frost_commit+0xe>
c0de2390:	bd10      	pop	{r4, pc}
c0de2392:	f104 0020 	add.w	r0, r4, #32
c0de2396:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de239a:	f7ff bfd7 	b.w	c0de234c <zkn_frost_nonce_generate>

c0de239e <zkn_encode_group_commitmentHash>:
c0de239e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de23a2:	b0d6      	sub	sp, #344	@ 0x158
c0de23a4:	4606      	mov	r6, r0
c0de23a6:	a816      	add	r0, sp, #88	@ 0x58
c0de23a8:	461c      	mov	r4, r3
c0de23aa:	4615      	mov	r5, r2
c0de23ac:	460f      	mov	r7, r1
c0de23ae:	f001 f939 	bl	c0de3624 <zkn_frost_H5_init>
c0de23b2:	b110      	cbz	r0, c0de23ba <zkn_encode_group_commitmentHash+0x1c>
c0de23b4:	b056      	add	sp, #344	@ 0x158
c0de23b6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de23ba:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de23be:	9401      	str	r4, [sp, #4]
c0de23c0:	a806      	add	r0, sp, #24
c0de23c2:	f04f 0a00 	mov.w	sl, #0
c0de23c6:	f04f 0b02 	mov.w	fp, #2
c0de23ca:	2604      	movs	r6, #4
c0de23cc:	2400      	movs	r4, #0
c0de23ce:	9502      	str	r5, [sp, #8]
c0de23d0:	f1a0 0801 	sub.w	r8, r0, #1
c0de23d4:	42ac      	cmp	r4, r5
c0de23d6:	d058      	beq.n	c0de248a <zkn_encode_group_commitmentHash+0xec>
c0de23d8:	9805      	ldr	r0, [sp, #20]
c0de23da:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de23de:	9103      	str	r1, [sp, #12]
c0de23e0:	6805      	ldr	r5, [r0, #0]
c0de23e2:	9804      	ldr	r0, [sp, #16]
c0de23e4:	fb05 000a 	mla	r0, r5, sl, r0
c0de23e8:	4629      	mov	r1, r5
c0de23ea:	b129      	cbz	r1, c0de23f8 <zkn_encode_group_commitmentHash+0x5a>
c0de23ec:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de23f0:	f808 2001 	strb.w	r2, [r8, r1]
c0de23f4:	3901      	subs	r1, #1
c0de23f6:	e7f8      	b.n	c0de23ea <zkn_encode_group_commitmentHash+0x4c>
c0de23f8:	a816      	add	r0, sp, #88	@ 0x58
c0de23fa:	a906      	add	r1, sp, #24
c0de23fc:	462a      	mov	r2, r5
c0de23fe:	f001 f92b 	bl	c0de3658 <zkn_frost_hash_update>
c0de2402:	2800      	cmp	r0, #0
c0de2404:	d1d6      	bne.n	c0de23b4 <zkn_encode_group_commitmentHash+0x16>
c0de2406:	9803      	ldr	r0, [sp, #12]
c0de2408:	9f04      	ldr	r7, [sp, #16]
c0de240a:	1c43      	adds	r3, r0, #1
c0de240c:	9805      	ldr	r0, [sp, #20]
c0de240e:	fb05 710b 	mla	r1, r5, fp, r7
c0de2412:	6802      	ldr	r2, [r0, #0]
c0de2414:	1e50      	subs	r0, r2, #1
c0de2416:	4615      	mov	r5, r2
c0de2418:	fb02 0303 	mla	r3, r2, r3, r0
c0de241c:	5cfb      	ldrb	r3, [r7, r3]
c0de241e:	b12d      	cbz	r5, c0de242c <zkn_encode_group_commitmentHash+0x8e>
c0de2420:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2424:	f808 7005 	strb.w	r7, [r8, r5]
c0de2428:	3d01      	subs	r5, #1
c0de242a:	e7f8      	b.n	c0de241e <zkn_encode_group_commitmentHash+0x80>
c0de242c:	a906      	add	r1, sp, #24
c0de242e:	5c0d      	ldrb	r5, [r1, r0]
c0de2430:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2434:	540b      	strb	r3, [r1, r0]
c0de2436:	a816      	add	r0, sp, #88	@ 0x58
c0de2438:	f001 f90e 	bl	c0de3658 <zkn_frost_hash_update>
c0de243c:	2800      	cmp	r0, #0
c0de243e:	d1b9      	bne.n	c0de23b4 <zkn_encode_group_commitmentHash+0x16>
c0de2440:	9805      	ldr	r0, [sp, #20]
c0de2442:	9d04      	ldr	r5, [sp, #16]
c0de2444:	6802      	ldr	r2, [r0, #0]
c0de2446:	9803      	ldr	r0, [sp, #12]
c0de2448:	1cc3      	adds	r3, r0, #3
c0de244a:	1e50      	subs	r0, r2, #1
c0de244c:	fb02 5106 	mla	r1, r2, r6, r5
c0de2450:	fb02 0303 	mla	r3, r2, r3, r0
c0de2454:	5ceb      	ldrb	r3, [r5, r3]
c0de2456:	4615      	mov	r5, r2
c0de2458:	b12d      	cbz	r5, c0de2466 <zkn_encode_group_commitmentHash+0xc8>
c0de245a:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de245e:	f808 7005 	strb.w	r7, [r8, r5]
c0de2462:	3d01      	subs	r5, #1
c0de2464:	e7f8      	b.n	c0de2458 <zkn_encode_group_commitmentHash+0xba>
c0de2466:	a906      	add	r1, sp, #24
c0de2468:	5c0d      	ldrb	r5, [r1, r0]
c0de246a:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de246e:	540b      	strb	r3, [r1, r0]
c0de2470:	a816      	add	r0, sp, #88	@ 0x58
c0de2472:	f001 f8f1 	bl	c0de3658 <zkn_frost_hash_update>
c0de2476:	3605      	adds	r6, #5
c0de2478:	3401      	adds	r4, #1
c0de247a:	9d02      	ldr	r5, [sp, #8]
c0de247c:	f10b 0b05 	add.w	fp, fp, #5
c0de2480:	f10a 0a05 	add.w	sl, sl, #5
c0de2484:	2800      	cmp	r0, #0
c0de2486:	d0a5      	beq.n	c0de23d4 <zkn_encode_group_commitmentHash+0x36>
c0de2488:	e794      	b.n	c0de23b4 <zkn_encode_group_commitmentHash+0x16>
c0de248a:	9805      	ldr	r0, [sp, #20]
c0de248c:	6881      	ldr	r1, [r0, #8]
c0de248e:	a816      	add	r0, sp, #88	@ 0x58
c0de2490:	9a01      	ldr	r2, [sp, #4]
c0de2492:	f001 f8e3 	bl	c0de365c <zkn_frost_hash_final>
c0de2496:	e78d      	b.n	c0de23b4 <zkn_encode_group_commitmentHash+0x16>

c0de2498 <zkn_compute_group_commitment>:
c0de2498:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de249c:	b088      	sub	sp, #32
c0de249e:	460d      	mov	r5, r1
c0de24a0:	a905      	add	r1, sp, #20
c0de24a2:	461f      	mov	r7, r3
c0de24a4:	4693      	mov	fp, r2
c0de24a6:	4604      	mov	r4, r0
c0de24a8:	f000 f9b1 	bl	c0de280e <tEdwards_alloc>
c0de24ac:	b948      	cbnz	r0, c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de24ae:	a902      	add	r1, sp, #8
c0de24b0:	4620      	mov	r0, r4
c0de24b2:	f000 f9ac 	bl	c0de280e <tEdwards_alloc>
c0de24b6:	b920      	cbnz	r0, c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de24b8:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de24ba:	4620      	mov	r0, r4
c0de24bc:	f000 fc9e 	bl	c0de2dfc <tEdwards_SetNeutral>
c0de24c0:	b110      	cbz	r0, c0de24c8 <zkn_compute_group_commitment+0x30>
c0de24c2:	b008      	add	sp, #32
c0de24c4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de24c8:	ae05      	add	r6, sp, #20
c0de24ca:	f04f 0800 	mov.w	r8, #0
c0de24ce:	f04f 0a04 	mov.w	sl, #4
c0de24d2:	9501      	str	r5, [sp, #4]
c0de24d4:	4547      	cmp	r7, r8
c0de24d6:	d041      	beq.n	c0de255c <zkn_compute_group_commitment+0xc4>
c0de24d8:	6822      	ldr	r2, [r4, #0]
c0de24da:	f1aa 0003 	sub.w	r0, sl, #3
c0de24de:	4633      	mov	r3, r6
c0de24e0:	fb02 5100 	mla	r1, r2, r0, r5
c0de24e4:	f1aa 0002 	sub.w	r0, sl, #2
c0de24e8:	fb02 5200 	mla	r2, r2, r0, r5
c0de24ec:	4620      	mov	r0, r4
c0de24ee:	f000 fbfd 	bl	c0de2cec <tEdwards_init>
c0de24f2:	2800      	cmp	r0, #0
c0de24f4:	d1e5      	bne.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de24f6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de24f8:	4620      	mov	r0, r4
c0de24fa:	4632      	mov	r2, r6
c0de24fc:	460b      	mov	r3, r1
c0de24fe:	f000 fa17 	bl	c0de2930 <tEdwards_add>
c0de2502:	2800      	cmp	r0, #0
c0de2504:	d1dd      	bne.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de2506:	6822      	ldr	r2, [r4, #0]
c0de2508:	f1aa 0001 	sub.w	r0, sl, #1
c0de250c:	4633      	mov	r3, r6
c0de250e:	fb02 5100 	mla	r1, r2, r0, r5
c0de2512:	fb02 520a 	mla	r2, r2, sl, r5
c0de2516:	4620      	mov	r0, r4
c0de2518:	f000 fbe8 	bl	c0de2cec <tEdwards_init>
c0de251c:	2800      	cmp	r0, #0
c0de251e:	d1d0      	bne.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de2520:	6823      	ldr	r3, [r4, #0]
c0de2522:	4658      	mov	r0, fp
c0de2524:	f10d 0b08 	add.w	fp, sp, #8
c0de2528:	4631      	mov	r1, r6
c0de252a:	4605      	mov	r5, r0
c0de252c:	f8cd b000 	str.w	fp, [sp]
c0de2530:	fb03 0208 	mla	r2, r3, r8, r0
c0de2534:	4620      	mov	r0, r4
c0de2536:	f000 fd5f 	bl	c0de2ff8 <tEdwards_scalarMul>
c0de253a:	2800      	cmp	r0, #0
c0de253c:	d1c1      	bne.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de253e:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2540:	4620      	mov	r0, r4
c0de2542:	465a      	mov	r2, fp
c0de2544:	460b      	mov	r3, r1
c0de2546:	f000 f9f3 	bl	c0de2930 <tEdwards_add>
c0de254a:	46ab      	mov	fp, r5
c0de254c:	9d01      	ldr	r5, [sp, #4]
c0de254e:	f10a 0a05 	add.w	sl, sl, #5
c0de2552:	f108 0801 	add.w	r8, r8, #1
c0de2556:	2800      	cmp	r0, #0
c0de2558:	d0bc      	beq.n	c0de24d4 <zkn_compute_group_commitment+0x3c>
c0de255a:	e7b2      	b.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de255c:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de255e:	4620      	mov	r0, r4
c0de2560:	f000 fc85 	bl	c0de2e6e <tEdwards_normalize>
c0de2564:	2800      	cmp	r0, #0
c0de2566:	d1ac      	bne.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de2568:	a905      	add	r1, sp, #20
c0de256a:	f000 f948 	bl	c0de27fe <OUTLINED_FUNCTION_3>
c0de256e:	2800      	cmp	r0, #0
c0de2570:	d1a7      	bne.n	c0de24c2 <zkn_compute_group_commitment+0x2a>
c0de2572:	a902      	add	r1, sp, #8
c0de2574:	f000 f943 	bl	c0de27fe <OUTLINED_FUNCTION_3>
c0de2578:	e7a3      	b.n	c0de24c2 <zkn_compute_group_commitment+0x2a>

c0de257a <zkn_compute_binding_factors>:
c0de257a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de257e:	b0f4      	sub	sp, #464	@ 0x1d0
c0de2580:	460e      	mov	r6, r1
c0de2582:	6801      	ldr	r1, [r0, #0]
c0de2584:	4607      	mov	r7, r0
c0de2586:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2588:	f000 f935 	bl	c0de27f6 <OUTLINED_FUNCTION_2>
c0de258c:	b9f0      	cbnz	r0, c0de25cc <zkn_compute_binding_factors+0x52>
c0de258e:	6839      	ldr	r1, [r7, #0]
c0de2590:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2592:	f005 f84f 	bl	c0de7634 <cx_bn_alloc>
c0de2596:	b9c8      	cbnz	r0, c0de25cc <zkn_compute_binding_factors+0x52>
c0de2598:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de259c:	68ba      	ldr	r2, [r7, #8]
c0de259e:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de25a0:	f000 fff4 	bl	c0de358c <Babyfrost_H4>
c0de25a4:	b990      	cbnz	r0, c0de25cc <zkn_compute_binding_factors+0x52>
c0de25a6:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de25a8:	4638      	mov	r0, r7
c0de25aa:	4629      	mov	r1, r5
c0de25ac:	4622      	mov	r2, r4
c0de25ae:	f7ff fef6 	bl	c0de239e <zkn_encode_group_commitmentHash>
c0de25b2:	b958      	cbnz	r0, c0de25cc <zkn_compute_binding_factors+0x52>
c0de25b4:	683a      	ldr	r2, [r7, #0]
c0de25b6:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de25b8:	a912      	add	r1, sp, #72	@ 0x48
c0de25ba:	f005 f885 	bl	c0de76c8 <cx_bn_export>
c0de25be:	b928      	cbnz	r0, c0de25cc <zkn_compute_binding_factors+0x52>
c0de25c0:	683a      	ldr	r2, [r7, #0]
c0de25c2:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de25c4:	a902      	add	r1, sp, #8
c0de25c6:	f005 f87f 	bl	c0de76c8 <cx_bn_export>
c0de25ca:	b110      	cbz	r0, c0de25d2 <zkn_compute_binding_factors+0x58>
c0de25cc:	b074      	add	sp, #464	@ 0x1d0
c0de25ce:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de25d2:	2000      	movs	r0, #0
c0de25d4:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de25d8:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de25dc:	f04f 0800 	mov.w	r8, #0
c0de25e0:	9000      	str	r0, [sp, #0]
c0de25e2:	4544      	cmp	r4, r8
c0de25e4:	d043      	beq.n	c0de266e <zkn_compute_binding_factors+0xf4>
c0de25e6:	6839      	ldr	r1, [r7, #0]
c0de25e8:	a801      	add	r0, sp, #4
c0de25ea:	f005 f823 	bl	c0de7634 <cx_bn_alloc>
c0de25ee:	2800      	cmp	r0, #0
c0de25f0:	d1ec      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de25f2:	4650      	mov	r0, sl
c0de25f4:	f000 fffc 	bl	c0de35f0 <zkn_frost_H1_init>
c0de25f8:	2800      	cmp	r0, #0
c0de25fa:	d1e7      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de25fc:	6839      	ldr	r1, [r7, #0]
c0de25fe:	4630      	mov	r0, r6
c0de2600:	465a      	mov	r2, fp
c0de2602:	f000 f8e9 	bl	c0de27d8 <OUTLINED_FUNCTION_0>
c0de2606:	2800      	cmp	r0, #0
c0de2608:	d1e0      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de260a:	6839      	ldr	r1, [r7, #0]
c0de260c:	a812      	add	r0, sp, #72	@ 0x48
c0de260e:	465a      	mov	r2, fp
c0de2610:	f000 f8e2 	bl	c0de27d8 <OUTLINED_FUNCTION_0>
c0de2614:	2800      	cmp	r0, #0
c0de2616:	d1d9      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2618:	6839      	ldr	r1, [r7, #0]
c0de261a:	a802      	add	r0, sp, #8
c0de261c:	465a      	mov	r2, fp
c0de261e:	f000 f8db 	bl	c0de27d8 <OUTLINED_FUNCTION_0>
c0de2622:	2800      	cmp	r0, #0
c0de2624:	d1d2      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2626:	6839      	ldr	r1, [r7, #0]
c0de2628:	9800      	ldr	r0, [sp, #0]
c0de262a:	465a      	mov	r2, fp
c0de262c:	fb00 5001 	mla	r0, r0, r1, r5
c0de2630:	f000 f8d2 	bl	c0de27d8 <OUTLINED_FUNCTION_0>
c0de2634:	2800      	cmp	r0, #0
c0de2636:	d1c9      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2638:	68b9      	ldr	r1, [r7, #8]
c0de263a:	9a01      	ldr	r2, [sp, #4]
c0de263c:	4650      	mov	r0, sl
c0de263e:	f001 f80d 	bl	c0de365c <zkn_frost_hash_final>
c0de2642:	2800      	cmp	r0, #0
c0de2644:	d1c2      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2646:	683a      	ldr	r2, [r7, #0]
c0de2648:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de264a:	fb02 0108 	mla	r1, r2, r8, r0
c0de264e:	9801      	ldr	r0, [sp, #4]
c0de2650:	f005 f83a 	bl	c0de76c8 <cx_bn_export>
c0de2654:	2800      	cmp	r0, #0
c0de2656:	d1b9      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2658:	a801      	add	r0, sp, #4
c0de265a:	f005 f801 	bl	c0de7660 <cx_bn_destroy>
c0de265e:	2800      	cmp	r0, #0
c0de2660:	d1b4      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2662:	9800      	ldr	r0, [sp, #0]
c0de2664:	f108 0801 	add.w	r8, r8, #1
c0de2668:	3005      	adds	r0, #5
c0de266a:	9000      	str	r0, [sp, #0]
c0de266c:	e7b9      	b.n	c0de25e2 <zkn_compute_binding_factors+0x68>
c0de266e:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2670:	f004 fff6 	bl	c0de7660 <cx_bn_destroy>
c0de2674:	2800      	cmp	r0, #0
c0de2676:	d1a9      	bne.n	c0de25cc <zkn_compute_binding_factors+0x52>
c0de2678:	a872      	add	r0, sp, #456	@ 0x1c8
c0de267a:	f004 fff1 	bl	c0de7660 <cx_bn_destroy>
c0de267e:	e7a5      	b.n	c0de25cc <zkn_compute_binding_factors+0x52>

c0de2680 <zkn_serialize_scalar_for_hash>:
c0de2680:	3a01      	subs	r2, #1
c0de2682:	b121      	cbz	r1, c0de268e <zkn_serialize_scalar_for_hash+0xe>
c0de2684:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de2688:	5453      	strb	r3, [r2, r1]
c0de268a:	3901      	subs	r1, #1
c0de268c:	e7f9      	b.n	c0de2682 <zkn_serialize_scalar_for_hash+0x2>
c0de268e:	4770      	bx	lr

c0de2690 <compute_challenge>:
c0de2690:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2694:	b0bc      	sub	sp, #240	@ 0xf0
c0de2696:	4606      	mov	r6, r0
c0de2698:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de269a:	2820      	cmp	r0, #32
c0de269c:	d14b      	bne.n	c0de2736 <compute_challenge+0xa6>
c0de269e:	4630      	mov	r0, r6
c0de26a0:	461f      	mov	r7, r3
c0de26a2:	4614      	mov	r4, r2
c0de26a4:	460d      	mov	r5, r1
c0de26a6:	f000 fb60 	bl	c0de2d6a <tEdwards_Curve_partial_destroy>
c0de26aa:	2800      	cmp	r0, #0
c0de26ac:	d144      	bne.n	c0de2738 <compute_challenge+0xa8>
c0de26ae:	f106 0820 	add.w	r8, r6, #32
c0de26b2:	4668      	mov	r0, sp
c0de26b4:	2105      	movs	r1, #5
c0de26b6:	2205      	movs	r2, #5
c0de26b8:	4643      	mov	r3, r8
c0de26ba:	f000 fdc3 	bl	c0de3244 <Poseidon_alloc_init>
c0de26be:	bbd8      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26c0:	6829      	ldr	r1, [r5, #0]
c0de26c2:	9807      	ldr	r0, [sp, #28]
c0de26c4:	f004 ffec 	bl	c0de76a0 <cx_bn_copy>
c0de26c8:	bbb0      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26ca:	6869      	ldr	r1, [r5, #4]
c0de26cc:	9808      	ldr	r0, [sp, #32]
c0de26ce:	f004 ffe7 	bl	c0de76a0 <cx_bn_copy>
c0de26d2:	bb88      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26d4:	6832      	ldr	r2, [r6, #0]
c0de26d6:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de26d8:	4621      	mov	r1, r4
c0de26da:	f004 ffd5 	bl	c0de7688 <cx_bn_init>
c0de26de:	bb58      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26e0:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de26e2:	f000 f884 	bl	c0de27ee <OUTLINED_FUNCTION_1>
c0de26e6:	bb38      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26e8:	6832      	ldr	r2, [r6, #0]
c0de26ea:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de26ec:	f104 0120 	add.w	r1, r4, #32
c0de26f0:	f004 ffca 	bl	c0de7688 <cx_bn_init>
c0de26f4:	bb00      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26f6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de26f8:	f000 f879 	bl	c0de27ee <OUTLINED_FUNCTION_1>
c0de26fc:	b9e0      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de26fe:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2700:	4639      	mov	r1, r7
c0de2702:	2220      	movs	r2, #32
c0de2704:	f004 ffc0 	bl	c0de7688 <cx_bn_init>
c0de2708:	b9b0      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de270a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de270c:	f000 f86f 	bl	c0de27ee <OUTLINED_FUNCTION_1>
c0de2710:	b990      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de2712:	4630      	mov	r0, r6
c0de2714:	4629      	mov	r1, r5
c0de2716:	f000 f88f 	bl	c0de2838 <tEdwards_destroy>
c0de271a:	b968      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de271c:	4668      	mov	r0, sp
c0de271e:	aa43      	add	r2, sp, #268	@ 0x10c
c0de2720:	2100      	movs	r1, #0
c0de2722:	2301      	movs	r3, #1
c0de2724:	f000 fdf4 	bl	c0de3310 <Poseidon>
c0de2728:	b930      	cbnz	r0, c0de2738 <compute_challenge+0xa8>
c0de272a:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de272c:	4642      	mov	r2, r8
c0de272e:	4601      	mov	r1, r0
c0de2730:	f005 f860 	bl	c0de77f4 <cx_mont_from_montgomery>
c0de2734:	e000      	b.n	c0de2738 <compute_challenge+0xa8>
c0de2736:	4802      	ldr	r0, [pc, #8]	@ (c0de2740 <compute_challenge+0xb0>)
c0de2738:	b03c      	add	sp, #240	@ 0xf0
c0de273a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de273e:	bf00      	nop
c0de2740:	5a4b4e03 	.word	0x5a4b4e03

c0de2744 <zkn_reconciliation>:
c0de2744:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2748:	b09c      	sub	sp, #112	@ 0x70
c0de274a:	460c      	mov	r4, r1
c0de274c:	4607      	mov	r7, r0
c0de274e:	a81b      	add	r0, sp, #108	@ 0x6c
c0de2750:	f000 f858 	bl	c0de2804 <OUTLINED_FUNCTION_4>
c0de2754:	bbe8      	cbnz	r0, c0de27d2 <zkn_reconciliation+0x8e>
c0de2756:	f8dd a090 	ldr.w	sl, [sp, #144]	@ 0x90
c0de275a:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
c0de275c:	4620      	mov	r0, r4
c0de275e:	4629      	mov	r1, r5
c0de2760:	4652      	mov	r2, sl
c0de2762:	f7ff fe1c 	bl	c0de239e <zkn_encode_group_commitmentHash>
c0de2766:	bba0      	cbnz	r0, c0de27d2 <zkn_reconciliation+0x8e>
c0de2768:	f8dd 80a0 	ldr.w	r8, [sp, #160]	@ 0xa0
c0de276c:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de276e:	2220      	movs	r2, #32
c0de2770:	4641      	mov	r1, r8
c0de2772:	f004 ffa9 	bl	c0de76c8 <cx_bn_export>
c0de2776:	bb60      	cbnz	r0, c0de27d2 <zkn_reconciliation+0x8e>
c0de2778:	e9dd 1025 	ldrd	r1, r0, [sp, #148]	@ 0x94
c0de277c:	f10d 0b0c 	add.w	fp, sp, #12
c0de2780:	462a      	mov	r2, r5
c0de2782:	4653      	mov	r3, sl
c0de2784:	f8cd b008 	str.w	fp, [sp, #8]
c0de2788:	e9cd 1000 	strd	r1, r0, [sp]
c0de278c:	4620      	mov	r0, r4
c0de278e:	4631      	mov	r1, r6
c0de2790:	f7ff fef3 	bl	c0de257a <zkn_compute_binding_factors>
c0de2794:	b9e8      	cbnz	r0, c0de27d2 <zkn_reconciliation+0x8e>
c0de2796:	eb0b 1047 	add.w	r0, fp, r7, lsl #5
c0de279a:	9e27      	ldr	r6, [sp, #156]	@ 0x9c
c0de279c:	2220      	movs	r2, #32
c0de279e:	f1a0 0120 	sub.w	r1, r0, #32
c0de27a2:	f108 0020 	add.w	r0, r8, #32
c0de27a6:	f005 f9fb 	bl	c0de7ba0 <__aeabi_memcpy>
c0de27aa:	4620      	mov	r0, r4
c0de27ac:	4629      	mov	r1, r5
c0de27ae:	465a      	mov	r2, fp
c0de27b0:	4653      	mov	r3, sl
c0de27b2:	9600      	str	r6, [sp, #0]
c0de27b4:	f7ff fe70 	bl	c0de2498 <zkn_compute_group_commitment>
c0de27b8:	b958      	cbnz	r0, c0de27d2 <zkn_reconciliation+0x8e>
c0de27ba:	f108 0240 	add.w	r2, r8, #64	@ 0x40
c0de27be:	f108 0360 	add.w	r3, r8, #96	@ 0x60
c0de27c2:	4620      	mov	r0, r4
c0de27c4:	4631      	mov	r1, r6
c0de27c6:	f000 fb2c 	bl	c0de2e22 <tEdwards_export>
c0de27ca:	b910      	cbnz	r0, c0de27d2 <zkn_reconciliation+0x8e>
c0de27cc:	a81b      	add	r0, sp, #108	@ 0x6c
c0de27ce:	f004 ff47 	bl	c0de7660 <cx_bn_destroy>
c0de27d2:	b01c      	add	sp, #112	@ 0x70
c0de27d4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de27d8 <OUTLINED_FUNCTION_0>:
c0de27d8:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de27dc:	f7ff ff50 	bl	c0de2680 <zkn_serialize_scalar_for_hash>
c0de27e0:	683a      	ldr	r2, [r7, #0]
c0de27e2:	4650      	mov	r0, sl
c0de27e4:	4659      	mov	r1, fp
c0de27e6:	f85d eb08 	ldr.w	lr, [sp], #8
c0de27ea:	f000 bf35 	b.w	c0de3658 <zkn_frost_hash_update>

c0de27ee <OUTLINED_FUNCTION_1>:
c0de27ee:	4642      	mov	r2, r8
c0de27f0:	4601      	mov	r1, r0
c0de27f2:	f004 bff3 	b.w	c0de77dc <cx_mont_to_montgomery>

c0de27f6 <OUTLINED_FUNCTION_2>:
c0de27f6:	461c      	mov	r4, r3
c0de27f8:	4615      	mov	r5, r2
c0de27fa:	f004 bf1b 	b.w	c0de7634 <cx_bn_alloc>

c0de27fe <OUTLINED_FUNCTION_3>:
c0de27fe:	4620      	mov	r0, r4
c0de2800:	f000 b81a 	b.w	c0de2838 <tEdwards_destroy>

c0de2804 <OUTLINED_FUNCTION_4>:
c0de2804:	2120      	movs	r1, #32
c0de2806:	461d      	mov	r5, r3
c0de2808:	4616      	mov	r6, r2
c0de280a:	f004 bf13 	b.w	c0de7634 <cx_bn_alloc>

c0de280e <tEdwards_alloc>:
c0de280e:	b5b0      	push	{r4, r5, r7, lr}
c0de2810:	460d      	mov	r5, r1
c0de2812:	6801      	ldr	r1, [r0, #0]
c0de2814:	4604      	mov	r4, r0
c0de2816:	4628      	mov	r0, r5
c0de2818:	f004 ff0c 	bl	c0de7634 <cx_bn_alloc>
c0de281c:	b920      	cbnz	r0, c0de2828 <tEdwards_alloc+0x1a>
c0de281e:	6821      	ldr	r1, [r4, #0]
c0de2820:	1d28      	adds	r0, r5, #4
c0de2822:	f004 ff07 	bl	c0de7634 <cx_bn_alloc>
c0de2826:	b100      	cbz	r0, c0de282a <tEdwards_alloc+0x1c>
c0de2828:	bdb0      	pop	{r4, r5, r7, pc}
c0de282a:	6821      	ldr	r1, [r4, #0]
c0de282c:	f105 0008 	add.w	r0, r5, #8
c0de2830:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2834:	f004 befe 	b.w	c0de7634 <cx_bn_alloc>

c0de2838 <tEdwards_destroy>:
c0de2838:	b510      	push	{r4, lr}
c0de283a:	4608      	mov	r0, r1
c0de283c:	460c      	mov	r4, r1
c0de283e:	f004 ff0f 	bl	c0de7660 <cx_bn_destroy>
c0de2842:	b918      	cbnz	r0, c0de284c <tEdwards_destroy+0x14>
c0de2844:	1d20      	adds	r0, r4, #4
c0de2846:	f004 ff0b 	bl	c0de7660 <cx_bn_destroy>
c0de284a:	b100      	cbz	r0, c0de284e <tEdwards_destroy+0x16>
c0de284c:	bd10      	pop	{r4, pc}
c0de284e:	f104 0008 	add.w	r0, r4, #8
c0de2852:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2856:	f004 bf03 	b.w	c0de7660 <cx_bn_destroy>

c0de285a <tEdwards_double>:
c0de285a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de285c:	460f      	mov	r7, r1
c0de285e:	4614      	mov	r4, r2
c0de2860:	4605      	mov	r5, r0
c0de2862:	6843      	ldr	r3, [r0, #4]
c0de2864:	6809      	ldr	r1, [r1, #0]
c0de2866:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2868:	687a      	ldr	r2, [r7, #4]
c0de286a:	f004 ff5d 	bl	c0de7728 <cx_bn_mod_add>
c0de286e:	2800      	cmp	r0, #0
c0de2870:	d154      	bne.n	c0de291c <tEdwards_double+0xc2>
c0de2872:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2876:	f105 0620 	add.w	r6, r5, #32
c0de287a:	f000 fbe3 	bl	c0de3044 <OUTLINED_FUNCTION_2>
c0de287e:	2800      	cmp	r0, #0
c0de2880:	d14c      	bne.n	c0de291c <tEdwards_double+0xc2>
c0de2882:	6839      	ldr	r1, [r7, #0]
c0de2884:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2886:	f000 fbdd 	bl	c0de3044 <OUTLINED_FUNCTION_2>
c0de288a:	2800      	cmp	r0, #0
c0de288c:	d146      	bne.n	c0de291c <tEdwards_double+0xc2>
c0de288e:	6879      	ldr	r1, [r7, #4]
c0de2890:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2892:	f000 fbd7 	bl	c0de3044 <OUTLINED_FUNCTION_2>
c0de2896:	2800      	cmp	r0, #0
c0de2898:	d140      	bne.n	c0de291c <tEdwards_double+0xc2>
c0de289a:	69a9      	ldr	r1, [r5, #24]
c0de289c:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de289e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de28a0:	f000 fbca 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de28a4:	bbd0      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28a6:	686b      	ldr	r3, [r5, #4]
c0de28a8:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de28ac:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de28ae:	f004 ff3b 	bl	c0de7728 <cx_bn_mod_add>
c0de28b2:	bb98      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28b4:	68b9      	ldr	r1, [r7, #8]
c0de28b6:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de28b8:	f000 fbc4 	bl	c0de3044 <OUTLINED_FUNCTION_2>
c0de28bc:	bb70      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28be:	686b      	ldr	r3, [r5, #4]
c0de28c0:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de28c2:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de28c4:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de28c6:	f004 ff3b 	bl	c0de7740 <cx_bn_mod_sub>
c0de28ca:	bb38      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28cc:	686b      	ldr	r3, [r5, #4]
c0de28ce:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de28d0:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de28d4:	f004 ff34 	bl	c0de7740 <cx_bn_mod_sub>
c0de28d8:	bb00      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28da:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de28de:	686b      	ldr	r3, [r5, #4]
c0de28e0:	ca07      	ldmia	r2, {r0, r1, r2}
c0de28e2:	f004 ff2d 	bl	c0de7740 <cx_bn_mod_sub>
c0de28e6:	b9c8      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28e8:	686b      	ldr	r3, [r5, #4]
c0de28ea:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de28ee:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de28f0:	f004 ff26 	bl	c0de7740 <cx_bn_mod_sub>
c0de28f4:	b990      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de28f6:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de28f8:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de28fa:	6820      	ldr	r0, [r4, #0]
c0de28fc:	f000 fb9c 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2900:	b960      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de2902:	686b      	ldr	r3, [r5, #4]
c0de2904:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2908:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de290a:	f004 ff19 	bl	c0de7740 <cx_bn_mod_sub>
c0de290e:	b928      	cbnz	r0, c0de291c <tEdwards_double+0xc2>
c0de2910:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2912:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2914:	6860      	ldr	r0, [r4, #4]
c0de2916:	f000 fb8f 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de291a:	b100      	cbz	r0, c0de291e <tEdwards_double+0xc4>
c0de291c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de291e:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2920:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2922:	68a0      	ldr	r0, [r4, #8]
c0de2924:	4633      	mov	r3, r6
c0de2926:	b001      	add	sp, #4
c0de2928:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de292c:	f004 bf6e 	b.w	c0de780c <cx_mont_mul>

c0de2930 <tEdwards_add>:
c0de2930:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2934:	4606      	mov	r6, r0
c0de2936:	4617      	mov	r7, r2
c0de2938:	460c      	mov	r4, r1
c0de293a:	6892      	ldr	r2, [r2, #8]
c0de293c:	6889      	ldr	r1, [r1, #8]
c0de293e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2940:	4698      	mov	r8, r3
c0de2942:	f106 0520 	add.w	r5, r6, #32
c0de2946:	f000 fb7a 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de294a:	2800      	cmp	r0, #0
c0de294c:	d17d      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de294e:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2952:	462b      	mov	r3, r5
c0de2954:	460a      	mov	r2, r1
c0de2956:	f004 ff59 	bl	c0de780c <cx_mont_mul>
c0de295a:	2800      	cmp	r0, #0
c0de295c:	d175      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de295e:	683a      	ldr	r2, [r7, #0]
c0de2960:	6821      	ldr	r1, [r4, #0]
c0de2962:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2964:	f000 fb6b 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2968:	2800      	cmp	r0, #0
c0de296a:	d16e      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de296c:	687a      	ldr	r2, [r7, #4]
c0de296e:	6861      	ldr	r1, [r4, #4]
c0de2970:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2972:	f000 fb64 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2976:	2800      	cmp	r0, #0
c0de2978:	d167      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de297a:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de297e:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2980:	f000 fb5d 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2984:	2800      	cmp	r0, #0
c0de2986:	d160      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de2988:	69f2      	ldr	r2, [r6, #28]
c0de298a:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de298c:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de298e:	f000 fb56 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2992:	2800      	cmp	r0, #0
c0de2994:	d159      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de2996:	6873      	ldr	r3, [r6, #4]
c0de2998:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de299a:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de299e:	f004 fecf 	bl	c0de7740 <cx_bn_mod_sub>
c0de29a2:	2800      	cmp	r0, #0
c0de29a4:	d151      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de29a6:	6873      	ldr	r3, [r6, #4]
c0de29a8:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de29aa:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de29ac:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de29ae:	f004 febb 	bl	c0de7728 <cx_bn_mod_add>
c0de29b2:	2800      	cmp	r0, #0
c0de29b4:	d149      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de29b6:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de29ba:	6873      	ldr	r3, [r6, #4]
c0de29bc:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de29be:	f004 feb3 	bl	c0de7728 <cx_bn_mod_add>
c0de29c2:	2800      	cmp	r0, #0
c0de29c4:	d141      	bne.n	c0de2a4a <tEdwards_add+0x11a>
c0de29c6:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de29ca:	6873      	ldr	r3, [r6, #4]
c0de29cc:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de29ce:	f004 feab 	bl	c0de7728 <cx_bn_mod_add>
c0de29d2:	bbd0      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de29d4:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de29d6:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de29da:	f000 fb30 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de29de:	bba0      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de29e0:	6873      	ldr	r3, [r6, #4]
c0de29e2:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de29e6:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de29e8:	f004 feaa 	bl	c0de7740 <cx_bn_mod_sub>
c0de29ec:	bb68      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de29ee:	6873      	ldr	r3, [r6, #4]
c0de29f0:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de29f2:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de29f6:	f004 fea3 	bl	c0de7740 <cx_bn_mod_sub>
c0de29fa:	bb30      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de29fc:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2a00:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2a02:	f000 fb1c 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2a06:	bb00      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de2a08:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2a0a:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2a0c:	f8d8 0000 	ldr.w	r0, [r8]
c0de2a10:	f000 fb15 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2a14:	b9c8      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de2a16:	69b1      	ldr	r1, [r6, #24]
c0de2a18:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2a1c:	f000 fb0f 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2a20:	b998      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de2a22:	6873      	ldr	r3, [r6, #4]
c0de2a24:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2a26:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2a28:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2a2a:	f004 fe89 	bl	c0de7740 <cx_bn_mod_sub>
c0de2a2e:	b960      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de2a30:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2a32:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2a34:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2a36:	f000 fb02 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2a3a:	b930      	cbnz	r0, c0de2a4a <tEdwards_add+0x11a>
c0de2a3c:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2a40:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2a44:	f000 fafb 	bl	c0de303e <OUTLINED_FUNCTION_1>
c0de2a48:	b108      	cbz	r0, c0de2a4e <tEdwards_add+0x11e>
c0de2a4a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2a4e:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2a52:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2a56:	462b      	mov	r3, r5
c0de2a58:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2a5c:	f004 bed6 	b.w	c0de780c <cx_mont_mul>

c0de2a60 <tEdwards_IsOnCurve>:
c0de2a60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2a62:	4605      	mov	r5, r0
c0de2a64:	460f      	mov	r7, r1
c0de2a66:	2005      	movs	r0, #5
c0de2a68:	6809      	ldr	r1, [r1, #0]
c0de2a6a:	4614      	mov	r4, r2
c0de2a6c:	9000      	str	r0, [sp, #0]
c0de2a6e:	f105 0620 	add.w	r6, r5, #32
c0de2a72:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a74:	460a      	mov	r2, r1
c0de2a76:	f000 fadf 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2a7a:	b100      	cbz	r0, c0de2a7e <tEdwards_IsOnCurve+0x1e>
c0de2a7c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2a7e:	6879      	ldr	r1, [r7, #4]
c0de2a80:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2a82:	f000 fadf 	bl	c0de3044 <OUTLINED_FUNCTION_2>
c0de2a86:	2800      	cmp	r0, #0
c0de2a88:	d1f8      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2a8a:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2a8e:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2a90:	f000 fad2 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2a94:	2800      	cmp	r0, #0
c0de2a96:	d1f1      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2a98:	69a9      	ldr	r1, [r5, #24]
c0de2a9a:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2a9c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2a9e:	f000 facb 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2aa2:	2800      	cmp	r0, #0
c0de2aa4:	d1ea      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2aa6:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2aa8:	686b      	ldr	r3, [r5, #4]
c0de2aaa:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2aac:	4601      	mov	r1, r0
c0de2aae:	f004 fe3b 	bl	c0de7728 <cx_bn_mod_add>
c0de2ab2:	2800      	cmp	r0, #0
c0de2ab4:	d1e2      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2ab6:	69e9      	ldr	r1, [r5, #28]
c0de2ab8:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2aba:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2abc:	f000 fabc 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2ac0:	2800      	cmp	r0, #0
c0de2ac2:	d1db      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2ac4:	686b      	ldr	r3, [r5, #4]
c0de2ac6:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2ac8:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2aca:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2acc:	f004 fe2c 	bl	c0de7728 <cx_bn_mod_add>
c0de2ad0:	2800      	cmp	r0, #0
c0de2ad2:	d1d3      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2ad4:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2ad6:	4632      	mov	r2, r6
c0de2ad8:	4601      	mov	r1, r0
c0de2ada:	f004 fe8b 	bl	c0de77f4 <cx_mont_from_montgomery>
c0de2ade:	2800      	cmp	r0, #0
c0de2ae0:	d1cc      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2ae2:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ae4:	4632      	mov	r2, r6
c0de2ae6:	4601      	mov	r1, r0
c0de2ae8:	f004 fe84 	bl	c0de77f4 <cx_mont_from_montgomery>
c0de2aec:	2800      	cmp	r0, #0
c0de2aee:	d1c5      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2af0:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2af4:	466a      	mov	r2, sp
c0de2af6:	f004 fdf3 	bl	c0de76e0 <cx_bn_cmp>
c0de2afa:	2800      	cmp	r0, #0
c0de2afc:	d1be      	bne.n	c0de2a7c <tEdwards_IsOnCurve+0x1c>
c0de2afe:	9800      	ldr	r0, [sp, #0]
c0de2b00:	fab0 f080 	clz	r0, r0
c0de2b04:	0940      	lsrs	r0, r0, #5
c0de2b06:	7020      	strb	r0, [r4, #0]
c0de2b08:	2000      	movs	r0, #0
c0de2b0a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de2b0c <tEdwards_Curve_alloc_init>:
c0de2b0c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2b10:	b0d2      	sub	sp, #328	@ 0x148
c0de2b12:	4604      	mov	r4, r0
c0de2b14:	2902      	cmp	r1, #2
c0de2b16:	d022      	beq.n	c0de2b5e <tEdwards_Curve_alloc_init+0x52>
c0de2b18:	2901      	cmp	r1, #1
c0de2b1a:	f040 80cd 	bne.w	c0de2cb8 <tEdwards_Curve_alloc_init+0x1ac>
c0de2b1e:	2020      	movs	r0, #32
c0de2b20:	2220      	movs	r2, #32
c0de2b22:	6020      	str	r0, [r4, #0]
c0de2b24:	af4a      	add	r7, sp, #296	@ 0x128
c0de2b26:	4967      	ldr	r1, [pc, #412]	@ (c0de2cc4 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2b28:	4638      	mov	r0, r7
c0de2b2a:	4479      	add	r1, pc
c0de2b2c:	f005 f838 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b30:	ae42      	add	r6, sp, #264	@ 0x108
c0de2b32:	4965      	ldr	r1, [pc, #404]	@ (c0de2cc8 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2b34:	2220      	movs	r2, #32
c0de2b36:	4630      	mov	r0, r6
c0de2b38:	4479      	add	r1, pc
c0de2b3a:	f005 f831 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b3e:	4963      	ldr	r1, [pc, #396]	@ (c0de2ccc <tEdwards_Curve_alloc_init+0x1c0>)
c0de2b40:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2b44:	2220      	movs	r2, #32
c0de2b46:	4650      	mov	r0, sl
c0de2b48:	4479      	add	r1, pc
c0de2b4a:	f005 f829 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b4e:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2b50:	495f      	ldr	r1, [pc, #380]	@ (c0de2cd0 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2b52:	2220      	movs	r2, #32
c0de2b54:	4628      	mov	r0, r5
c0de2b56:	4479      	add	r1, pc
c0de2b58:	f005 f822 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b5c:	e02d      	b.n	c0de2bba <tEdwards_Curve_alloc_init+0xae>
c0de2b5e:	2020      	movs	r0, #32
c0de2b60:	2220      	movs	r2, #32
c0de2b62:	6020      	str	r0, [r4, #0]
c0de2b64:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2b66:	495b      	ldr	r1, [pc, #364]	@ (c0de2cd4 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2b68:	4638      	mov	r0, r7
c0de2b6a:	4479      	add	r1, pc
c0de2b6c:	f005 f818 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b70:	ae22      	add	r6, sp, #136	@ 0x88
c0de2b72:	4959      	ldr	r1, [pc, #356]	@ (c0de2cd8 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2b74:	2220      	movs	r2, #32
c0de2b76:	4630      	mov	r0, r6
c0de2b78:	4479      	add	r1, pc
c0de2b7a:	f005 f811 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b7e:	4957      	ldr	r1, [pc, #348]	@ (c0de2cdc <tEdwards_Curve_alloc_init+0x1d0>)
c0de2b80:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2b84:	2220      	movs	r2, #32
c0de2b86:	4650      	mov	r0, sl
c0de2b88:	4479      	add	r1, pc
c0de2b8a:	f005 f809 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b8e:	a812      	add	r0, sp, #72	@ 0x48
c0de2b90:	4953      	ldr	r1, [pc, #332]	@ (c0de2ce0 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2b92:	2220      	movs	r2, #32
c0de2b94:	9001      	str	r0, [sp, #4]
c0de2b96:	4479      	add	r1, pc
c0de2b98:	f005 f802 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2b9c:	4951      	ldr	r1, [pc, #324]	@ (c0de2ce4 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2b9e:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2ba2:	2220      	movs	r2, #32
c0de2ba4:	4658      	mov	r0, fp
c0de2ba6:	4479      	add	r1, pc
c0de2ba8:	f004 fffa 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2bac:	ad02      	add	r5, sp, #8
c0de2bae:	494e      	ldr	r1, [pc, #312]	@ (c0de2ce8 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2bb0:	2220      	movs	r2, #32
c0de2bb2:	4628      	mov	r0, r5
c0de2bb4:	4479      	add	r1, pc
c0de2bb6:	f004 fff3 	bl	c0de7ba0 <__aeabi_memcpy>
c0de2bba:	f104 0804 	add.w	r8, r4, #4
c0de2bbe:	2120      	movs	r1, #32
c0de2bc0:	463a      	mov	r2, r7
c0de2bc2:	2320      	movs	r3, #32
c0de2bc4:	4640      	mov	r0, r8
c0de2bc6:	f004 fd3f 	bl	c0de7648 <cx_bn_alloc_init>
c0de2bca:	2800      	cmp	r0, #0
c0de2bcc:	d175      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2bce:	4620      	mov	r0, r4
c0de2bd0:	462a      	mov	r2, r5
c0de2bd2:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2bd6:	460b      	mov	r3, r1
c0de2bd8:	f004 fd36 	bl	c0de7648 <cx_bn_alloc_init>
c0de2bdc:	2800      	cmp	r0, #0
c0de2bde:	d16c      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2be0:	f104 0520 	add.w	r5, r4, #32
c0de2be4:	2120      	movs	r1, #32
c0de2be6:	4628      	mov	r0, r5
c0de2be8:	f004 fde4 	bl	c0de77b4 <cx_mont_alloc>
c0de2bec:	2800      	cmp	r0, #0
c0de2bee:	d164      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2bf0:	f8d8 1000 	ldr.w	r1, [r8]
c0de2bf4:	4628      	mov	r0, r5
c0de2bf6:	f004 fde7 	bl	c0de77c8 <cx_mont_init>
c0de2bfa:	2800      	cmp	r0, #0
c0de2bfc:	d15d      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2bfe:	4627      	mov	r7, r4
c0de2c00:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2c04:	4638      	mov	r0, r7
c0de2c06:	f004 fd15 	bl	c0de7634 <cx_bn_alloc>
c0de2c0a:	2800      	cmp	r0, #0
c0de2c0c:	d155      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c0e:	6838      	ldr	r0, [r7, #0]
c0de2c10:	2101      	movs	r1, #1
c0de2c12:	f004 fd4f 	bl	c0de76b4 <cx_bn_set_u32>
c0de2c16:	2800      	cmp	r0, #0
c0de2c18:	d14f      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c1a:	6838      	ldr	r0, [r7, #0]
c0de2c1c:	f000 fa16 	bl	c0de304c <OUTLINED_FUNCTION_3>
c0de2c20:	2800      	cmp	r0, #0
c0de2c22:	d14a      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c24:	f104 070c 	add.w	r7, r4, #12
c0de2c28:	4620      	mov	r0, r4
c0de2c2a:	4639      	mov	r1, r7
c0de2c2c:	f7ff fdef 	bl	c0de280e <tEdwards_alloc>
c0de2c30:	2800      	cmp	r0, #0
c0de2c32:	d142      	bne.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c34:	9901      	ldr	r1, [sp, #4]
c0de2c36:	4620      	mov	r0, r4
c0de2c38:	465a      	mov	r2, fp
c0de2c3a:	463b      	mov	r3, r7
c0de2c3c:	f000 f856 	bl	c0de2cec <tEdwards_init>
c0de2c40:	bbd8      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c42:	4627      	mov	r7, r4
c0de2c44:	4632      	mov	r2, r6
c0de2c46:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2c4a:	4638      	mov	r0, r7
c0de2c4c:	460b      	mov	r3, r1
c0de2c4e:	f004 fcfb 	bl	c0de7648 <cx_bn_alloc_init>
c0de2c52:	bb90      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c54:	6838      	ldr	r0, [r7, #0]
c0de2c56:	f000 f9f9 	bl	c0de304c <OUTLINED_FUNCTION_3>
c0de2c5a:	bb70      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c5c:	4626      	mov	r6, r4
c0de2c5e:	4652      	mov	r2, sl
c0de2c60:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2c64:	4630      	mov	r0, r6
c0de2c66:	460b      	mov	r3, r1
c0de2c68:	f004 fcee 	bl	c0de7648 <cx_bn_alloc_init>
c0de2c6c:	bb28      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c6e:	6830      	ldr	r0, [r6, #0]
c0de2c70:	f000 f9ec 	bl	c0de304c <OUTLINED_FUNCTION_3>
c0de2c74:	bb08      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c76:	4620      	mov	r0, r4
c0de2c78:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2c7c:	f004 fcda 	bl	c0de7634 <cx_bn_alloc>
c0de2c80:	b9d8      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c82:	f000 f9fb 	bl	c0de307c <OUTLINED_FUNCTION_8>
c0de2c86:	b9c0      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c88:	f000 f9e4 	bl	c0de3054 <OUTLINED_FUNCTION_4>
c0de2c8c:	b9a8      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c8e:	f000 f9f0 	bl	c0de3072 <OUTLINED_FUNCTION_7>
c0de2c92:	b990      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c94:	f000 f9fc 	bl	c0de3090 <OUTLINED_FUNCTION_10>
c0de2c98:	b978      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2c9a:	f000 f9e5 	bl	c0de3068 <OUTLINED_FUNCTION_6>
c0de2c9e:	b960      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2ca0:	f000 f9f1 	bl	c0de3086 <OUTLINED_FUNCTION_9>
c0de2ca4:	b948      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2ca6:	f000 f9da 	bl	c0de305e <OUTLINED_FUNCTION_5>
c0de2caa:	b930      	cbnz	r0, c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2cac:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2cb0:	4620      	mov	r0, r4
c0de2cb2:	f004 fcbf 	bl	c0de7634 <cx_bn_alloc>
c0de2cb6:	e000      	b.n	c0de2cba <tEdwards_Curve_alloc_init+0x1ae>
c0de2cb8:	4801      	ldr	r0, [pc, #4]	@ (c0de2cc0 <tEdwards_Curve_alloc_init+0x1b4>)
c0de2cba:	b052      	add	sp, #328	@ 0x148
c0de2cbc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2cc0:	5a4b4e01 	.word	0x5a4b4e01
c0de2cc4:	000056d2 	.word	0x000056d2
c0de2cc8:	00005884 	.word	0x00005884
c0de2ccc:	00005834 	.word	0x00005834
c0de2cd0:	00005766 	.word	0x00005766
c0de2cd4:	00005892 	.word	0x00005892
c0de2cd8:	000057e4 	.word	0x000057e4
c0de2cdc:	00005854 	.word	0x00005854
c0de2ce0:	00005886 	.word	0x00005886
c0de2ce4:	00005896 	.word	0x00005896
c0de2ce8:	00005728 	.word	0x00005728

c0de2cec <tEdwards_init>:
c0de2cec:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2cee:	6806      	ldr	r6, [r0, #0]
c0de2cf0:	461c      	mov	r4, r3
c0de2cf2:	4617      	mov	r7, r2
c0de2cf4:	460a      	mov	r2, r1
c0de2cf6:	4605      	mov	r5, r0
c0de2cf8:	a802      	add	r0, sp, #8
c0de2cfa:	4631      	mov	r1, r6
c0de2cfc:	4633      	mov	r3, r6
c0de2cfe:	f004 fca3 	bl	c0de7648 <cx_bn_alloc_init>
c0de2d02:	b100      	cbz	r0, c0de2d06 <tEdwards_init+0x1a>
c0de2d04:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2d06:	a801      	add	r0, sp, #4
c0de2d08:	4631      	mov	r1, r6
c0de2d0a:	463a      	mov	r2, r7
c0de2d0c:	4633      	mov	r3, r6
c0de2d0e:	f004 fc9b 	bl	c0de7648 <cx_bn_alloc_init>
c0de2d12:	2800      	cmp	r0, #0
c0de2d14:	d1f6      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d16:	4668      	mov	r0, sp
c0de2d18:	4631      	mov	r1, r6
c0de2d1a:	f004 fc8b 	bl	c0de7634 <cx_bn_alloc>
c0de2d1e:	2800      	cmp	r0, #0
c0de2d20:	d1f0      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d22:	f105 0620 	add.w	r6, r5, #32
c0de2d26:	6820      	ldr	r0, [r4, #0]
c0de2d28:	9902      	ldr	r1, [sp, #8]
c0de2d2a:	4632      	mov	r2, r6
c0de2d2c:	f004 fd56 	bl	c0de77dc <cx_mont_to_montgomery>
c0de2d30:	2800      	cmp	r0, #0
c0de2d32:	d1e7      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d34:	6860      	ldr	r0, [r4, #4]
c0de2d36:	9901      	ldr	r1, [sp, #4]
c0de2d38:	4632      	mov	r2, r6
c0de2d3a:	f004 fd4f 	bl	c0de77dc <cx_mont_to_montgomery>
c0de2d3e:	2800      	cmp	r0, #0
c0de2d40:	d1e0      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d42:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2d44:	68a0      	ldr	r0, [r4, #8]
c0de2d46:	f004 fcab 	bl	c0de76a0 <cx_bn_copy>
c0de2d4a:	2800      	cmp	r0, #0
c0de2d4c:	d1da      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d4e:	a802      	add	r0, sp, #8
c0de2d50:	f004 fc86 	bl	c0de7660 <cx_bn_destroy>
c0de2d54:	2800      	cmp	r0, #0
c0de2d56:	d1d5      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d58:	a801      	add	r0, sp, #4
c0de2d5a:	f004 fc81 	bl	c0de7660 <cx_bn_destroy>
c0de2d5e:	2800      	cmp	r0, #0
c0de2d60:	d1d0      	bne.n	c0de2d04 <tEdwards_init+0x18>
c0de2d62:	4668      	mov	r0, sp
c0de2d64:	f004 fc7c 	bl	c0de7660 <cx_bn_destroy>
c0de2d68:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2d6a <tEdwards_Curve_partial_destroy>:
c0de2d6a:	b510      	push	{r4, lr}
c0de2d6c:	4604      	mov	r4, r0
c0de2d6e:	302c      	adds	r0, #44	@ 0x2c
c0de2d70:	f004 fc76 	bl	c0de7660 <cx_bn_destroy>
c0de2d74:	bbd8      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2d76:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2d7a:	f004 fc71 	bl	c0de7660 <cx_bn_destroy>
c0de2d7e:	bbb0      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2d80:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2d84:	f004 fc6c 	bl	c0de7660 <cx_bn_destroy>
c0de2d88:	bb88      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2d8a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2d8e:	f004 fc67 	bl	c0de7660 <cx_bn_destroy>
c0de2d92:	bb60      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2d94:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2d98:	f004 fc62 	bl	c0de7660 <cx_bn_destroy>
c0de2d9c:	bb38      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2d9e:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2da2:	f004 fc5d 	bl	c0de7660 <cx_bn_destroy>
c0de2da6:	bb10      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2da8:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2dac:	f004 fc58 	bl	c0de7660 <cx_bn_destroy>
c0de2db0:	b9e8      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2db2:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2db6:	f004 fc53 	bl	c0de7660 <cx_bn_destroy>
c0de2dba:	b9c0      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2dbc:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2dc0:	f004 fc4e 	bl	c0de7660 <cx_bn_destroy>
c0de2dc4:	b998      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2dc6:	f104 010c 	add.w	r1, r4, #12
c0de2dca:	f7ff fd35 	bl	c0de2838 <tEdwards_destroy>
c0de2dce:	b970      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2dd0:	f104 0018 	add.w	r0, r4, #24
c0de2dd4:	f004 fc44 	bl	c0de7660 <cx_bn_destroy>
c0de2dd8:	b948      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2dda:	f104 001c 	add.w	r0, r4, #28
c0de2dde:	f004 fc3f 	bl	c0de7660 <cx_bn_destroy>
c0de2de2:	b920      	cbnz	r0, c0de2dee <tEdwards_Curve_partial_destroy+0x84>
c0de2de4:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2de8:	f004 fc3a 	bl	c0de7660 <cx_bn_destroy>
c0de2dec:	b100      	cbz	r0, c0de2df0 <tEdwards_Curve_partial_destroy+0x86>
c0de2dee:	bd10      	pop	{r4, pc}
c0de2df0:	f104 0008 	add.w	r0, r4, #8
c0de2df4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2df8:	f004 bc32 	b.w	c0de7660 <cx_bn_destroy>

c0de2dfc <tEdwards_SetNeutral>:
c0de2dfc:	b5b0      	push	{r4, r5, r7, lr}
c0de2dfe:	4605      	mov	r5, r0
c0de2e00:	6808      	ldr	r0, [r1, #0]
c0de2e02:	460c      	mov	r4, r1
c0de2e04:	2100      	movs	r1, #0
c0de2e06:	f004 fc55 	bl	c0de76b4 <cx_bn_set_u32>
c0de2e0a:	b918      	cbnz	r0, c0de2e14 <tEdwards_SetNeutral+0x18>
c0de2e0c:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2e0e:	f000 f944 	bl	c0de309a <OUTLINED_FUNCTION_11>
c0de2e12:	b100      	cbz	r0, c0de2e16 <tEdwards_SetNeutral+0x1a>
c0de2e14:	bdb0      	pop	{r4, r5, r7, pc}
c0de2e16:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2e18:	68a0      	ldr	r0, [r4, #8]
c0de2e1a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2e1e:	f004 bc3f 	b.w	c0de76a0 <cx_bn_copy>

c0de2e22 <tEdwards_export>:
c0de2e22:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e26:	4698      	mov	r8, r3
c0de2e28:	4616      	mov	r6, r2
c0de2e2a:	460f      	mov	r7, r1
c0de2e2c:	4605      	mov	r5, r0
c0de2e2e:	f000 f81e 	bl	c0de2e6e <tEdwards_normalize>
c0de2e32:	b998      	cbnz	r0, c0de2e5c <tEdwards_export+0x3a>
c0de2e34:	f105 0420 	add.w	r4, r5, #32
c0de2e38:	6839      	ldr	r1, [r7, #0]
c0de2e3a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e3c:	4622      	mov	r2, r4
c0de2e3e:	f004 fcd9 	bl	c0de77f4 <cx_mont_from_montgomery>
c0de2e42:	b958      	cbnz	r0, c0de2e5c <tEdwards_export+0x3a>
c0de2e44:	6879      	ldr	r1, [r7, #4]
c0de2e46:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e48:	4622      	mov	r2, r4
c0de2e4a:	f004 fcd3 	bl	c0de77f4 <cx_mont_from_montgomery>
c0de2e4e:	b928      	cbnz	r0, c0de2e5c <tEdwards_export+0x3a>
c0de2e50:	682a      	ldr	r2, [r5, #0]
c0de2e52:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e54:	4631      	mov	r1, r6
c0de2e56:	f004 fc37 	bl	c0de76c8 <cx_bn_export>
c0de2e5a:	b108      	cbz	r0, c0de2e60 <tEdwards_export+0x3e>
c0de2e5c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2e60:	682a      	ldr	r2, [r5, #0]
c0de2e62:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e64:	4641      	mov	r1, r8
c0de2e66:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e6a:	f004 bc2d 	b.w	c0de76c8 <cx_bn_export>

c0de2e6e <tEdwards_normalize>:
c0de2e6e:	b570      	push	{r4, r5, r6, lr}
c0de2e70:	4605      	mov	r5, r0
c0de2e72:	460c      	mov	r4, r1
c0de2e74:	6889      	ldr	r1, [r1, #8]
c0de2e76:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2e78:	f105 0620 	add.w	r6, r5, #32
c0de2e7c:	4632      	mov	r2, r6
c0de2e7e:	f004 fce1 	bl	c0de7844 <cx_mont_invert_nprime>
c0de2e82:	b9d0      	cbnz	r0, c0de2eba <tEdwards_normalize+0x4c>
c0de2e84:	6822      	ldr	r2, [r4, #0]
c0de2e86:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2e8a:	f000 f8d5 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2e8e:	b9a0      	cbnz	r0, c0de2eba <tEdwards_normalize+0x4c>
c0de2e90:	6862      	ldr	r2, [r4, #4]
c0de2e92:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2e94:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2e96:	f000 f8cf 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2e9a:	b970      	cbnz	r0, c0de2eba <tEdwards_normalize+0x4c>
c0de2e9c:	68a2      	ldr	r2, [r4, #8]
c0de2e9e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2ea0:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2ea2:	f000 f8c9 	bl	c0de3038 <OUTLINED_FUNCTION_0>
c0de2ea6:	b940      	cbnz	r0, c0de2eba <tEdwards_normalize+0x4c>
c0de2ea8:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2eaa:	6820      	ldr	r0, [r4, #0]
c0de2eac:	f004 fbf8 	bl	c0de76a0 <cx_bn_copy>
c0de2eb0:	b918      	cbnz	r0, c0de2eba <tEdwards_normalize+0x4c>
c0de2eb2:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2eb4:	f000 f8f1 	bl	c0de309a <OUTLINED_FUNCTION_11>
c0de2eb8:	b100      	cbz	r0, c0de2ebc <tEdwards_normalize+0x4e>
c0de2eba:	bd70      	pop	{r4, r5, r6, pc}
c0de2ebc:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2ebe:	68a0      	ldr	r0, [r4, #8]
c0de2ec0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2ec4:	f004 bbec 	b.w	c0de76a0 <cx_bn_copy>

c0de2ec8 <tEdwards_copy>:
c0de2ec8:	b5b0      	push	{r4, r5, r7, lr}
c0de2eca:	460c      	mov	r4, r1
c0de2ecc:	4605      	mov	r5, r0
c0de2ece:	6801      	ldr	r1, [r0, #0]
c0de2ed0:	6820      	ldr	r0, [r4, #0]
c0de2ed2:	f004 fbe5 	bl	c0de76a0 <cx_bn_copy>
c0de2ed6:	b918      	cbnz	r0, c0de2ee0 <tEdwards_copy+0x18>
c0de2ed8:	6869      	ldr	r1, [r5, #4]
c0de2eda:	f000 f8de 	bl	c0de309a <OUTLINED_FUNCTION_11>
c0de2ede:	b100      	cbz	r0, c0de2ee2 <tEdwards_copy+0x1a>
c0de2ee0:	bdb0      	pop	{r4, r5, r7, pc}
c0de2ee2:	68a9      	ldr	r1, [r5, #8]
c0de2ee4:	68a0      	ldr	r0, [r4, #8]
c0de2ee6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2eea:	f004 bbd9 	b.w	c0de76a0 <cx_bn_copy>

c0de2eee <tEdwards_alloc_init>:
c0de2eee:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2ef0:	460e      	mov	r6, r1
c0de2ef2:	6801      	ldr	r1, [r0, #0]
c0de2ef4:	4607      	mov	r7, r0
c0de2ef6:	4618      	mov	r0, r3
c0de2ef8:	461c      	mov	r4, r3
c0de2efa:	4615      	mov	r5, r2
c0de2efc:	f004 fb9a 	bl	c0de7634 <cx_bn_alloc>
c0de2f00:	b950      	cbnz	r0, c0de2f18 <tEdwards_alloc_init+0x2a>
c0de2f02:	6839      	ldr	r1, [r7, #0]
c0de2f04:	1d20      	adds	r0, r4, #4
c0de2f06:	f004 fb95 	bl	c0de7634 <cx_bn_alloc>
c0de2f0a:	b928      	cbnz	r0, c0de2f18 <tEdwards_alloc_init+0x2a>
c0de2f0c:	6839      	ldr	r1, [r7, #0]
c0de2f0e:	f104 0008 	add.w	r0, r4, #8
c0de2f12:	f004 fb8f 	bl	c0de7634 <cx_bn_alloc>
c0de2f16:	b100      	cbz	r0, c0de2f1a <tEdwards_alloc_init+0x2c>
c0de2f18:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2f1a:	4638      	mov	r0, r7
c0de2f1c:	4631      	mov	r1, r6
c0de2f1e:	462a      	mov	r2, r5
c0de2f20:	4623      	mov	r3, r4
c0de2f22:	b001      	add	sp, #4
c0de2f24:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2f28:	f7ff bee0 	b.w	c0de2cec <tEdwards_init>

c0de2f2c <tEdwards_scalarMul_bn>:
c0de2f2c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f30:	4607      	mov	r7, r0
c0de2f32:	2000      	movs	r0, #0
c0de2f34:	4688      	mov	r8, r1
c0de2f36:	4615      	mov	r5, r2
c0de2f38:	2100      	movs	r1, #0
c0de2f3a:	469b      	mov	fp, r3
c0de2f3c:	9003      	str	r0, [sp, #12]
c0de2f3e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2f42:	6810      	ldr	r0, [r2, #0]
c0de2f44:	aa03      	add	r2, sp, #12
c0de2f46:	f004 fbd7 	bl	c0de76f8 <cx_bn_cmp_u32>
c0de2f4a:	bb38      	cbnz	r0, c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2f4c:	9803      	ldr	r0, [sp, #12]
c0de2f4e:	b1d0      	cbz	r0, c0de2f86 <tEdwards_scalarMul_bn+0x5a>
c0de2f50:	6828      	ldr	r0, [r5, #0]
c0de2f52:	a901      	add	r1, sp, #4
c0de2f54:	f004 fb8e 	bl	c0de7674 <cx_bn_nbytes>
c0de2f58:	bb00      	cbnz	r0, c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2f5a:	2002      	movs	r0, #2
c0de2f5c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2f60:	f10d 040b 	add.w	r4, sp, #11
c0de2f64:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2f66:	9801      	ldr	r0, [sp, #4]
c0de2f68:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2f6c:	2000      	movs	r0, #0
c0de2f6e:	2801      	cmp	r0, #1
c0de2f70:	d00f      	beq.n	c0de2f92 <tEdwards_scalarMul_bn+0x66>
c0de2f72:	6828      	ldr	r0, [r5, #0]
c0de2f74:	4631      	mov	r1, r6
c0de2f76:	4622      	mov	r2, r4
c0de2f78:	f004 fbca 	bl	c0de7710 <cx_bn_tst_bit>
c0de2f7c:	b970      	cbnz	r0, c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2f7e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2f82:	3e01      	subs	r6, #1
c0de2f84:	e7f3      	b.n	c0de2f6e <tEdwards_scalarMul_bn+0x42>
c0de2f86:	4638      	mov	r0, r7
c0de2f88:	4659      	mov	r1, fp
c0de2f8a:	f7ff ff37 	bl	c0de2dfc <tEdwards_SetNeutral>
c0de2f8e:	b928      	cbnz	r0, c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2f90:	e7de      	b.n	c0de2f50 <tEdwards_scalarMul_bn+0x24>
c0de2f92:	4640      	mov	r0, r8
c0de2f94:	4659      	mov	r1, fp
c0de2f96:	f7ff ff97 	bl	c0de2ec8 <tEdwards_copy>
c0de2f9a:	b110      	cbz	r0, c0de2fa2 <tEdwards_scalarMul_bn+0x76>
c0de2f9c:	b004      	add	sp, #16
c0de2f9e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2fa2:	2001      	movs	r0, #1
c0de2fa4:	f10d 0a0b 	add.w	sl, sp, #11
c0de2fa8:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2fac:	2e00      	cmp	r6, #0
c0de2fae:	d420      	bmi.n	c0de2ff2 <tEdwards_scalarMul_bn+0xc6>
c0de2fb0:	4638      	mov	r0, r7
c0de2fb2:	4659      	mov	r1, fp
c0de2fb4:	465a      	mov	r2, fp
c0de2fb6:	f7ff fc50 	bl	c0de285a <tEdwards_double>
c0de2fba:	2800      	cmp	r0, #0
c0de2fbc:	d1ee      	bne.n	c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2fbe:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2fc0:	4631      	mov	r1, r6
c0de2fc2:	4652      	mov	r2, sl
c0de2fc4:	0040      	lsls	r0, r0, #1
c0de2fc6:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2fc8:	6828      	ldr	r0, [r5, #0]
c0de2fca:	f004 fba1 	bl	c0de7710 <cx_bn_tst_bit>
c0de2fce:	2800      	cmp	r0, #0
c0de2fd0:	d1e4      	bne.n	c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2fd2:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2fd6:	b150      	cbz	r0, c0de2fee <tEdwards_scalarMul_bn+0xc2>
c0de2fd8:	4638      	mov	r0, r7
c0de2fda:	4659      	mov	r1, fp
c0de2fdc:	4642      	mov	r2, r8
c0de2fde:	465b      	mov	r3, fp
c0de2fe0:	f7ff fca6 	bl	c0de2930 <tEdwards_add>
c0de2fe4:	2800      	cmp	r0, #0
c0de2fe6:	d1d9      	bne.n	c0de2f9c <tEdwards_scalarMul_bn+0x70>
c0de2fe8:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2fea:	3001      	adds	r0, #1
c0de2fec:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2fee:	3e01      	subs	r6, #1
c0de2ff0:	e7dc      	b.n	c0de2fac <tEdwards_scalarMul_bn+0x80>
c0de2ff2:	2000      	movs	r0, #0
c0de2ff4:	e7d2      	b.n	c0de2f9c <tEdwards_scalarMul_bn+0x70>
	...

c0de2ff8 <tEdwards_scalarMul>:
c0de2ff8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2ffa:	460c      	mov	r4, r1
c0de2ffc:	6801      	ldr	r1, [r0, #0]
c0de2ffe:	4299      	cmp	r1, r3
c0de3000:	bf3c      	itt	cc
c0de3002:	480c      	ldrcc	r0, [pc, #48]	@ (c0de3034 <tEdwards_scalarMul+0x3c>)
c0de3004:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de3006:	4605      	mov	r5, r0
c0de3008:	20ca      	movs	r0, #202	@ 0xca
c0de300a:	6528      	str	r0, [r5, #80]	@ 0x50
c0de300c:	a801      	add	r0, sp, #4
c0de300e:	f004 fb1b 	bl	c0de7648 <cx_bn_alloc_init>
c0de3012:	b100      	cbz	r0, c0de3016 <tEdwards_scalarMul+0x1e>
c0de3014:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3016:	20b3      	movs	r0, #179	@ 0xb3
c0de3018:	9b06      	ldr	r3, [sp, #24]
c0de301a:	4621      	mov	r1, r4
c0de301c:	6528      	str	r0, [r5, #80]	@ 0x50
c0de301e:	aa01      	add	r2, sp, #4
c0de3020:	4628      	mov	r0, r5
c0de3022:	f7ff ff83 	bl	c0de2f2c <tEdwards_scalarMul_bn>
c0de3026:	2800      	cmp	r0, #0
c0de3028:	d1f4      	bne.n	c0de3014 <tEdwards_scalarMul+0x1c>
c0de302a:	a801      	add	r0, sp, #4
c0de302c:	f004 fb18 	bl	c0de7660 <cx_bn_destroy>
c0de3030:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3032:	bf00      	nop
c0de3034:	5a4b4e01 	.word	0x5a4b4e01

c0de3038 <OUTLINED_FUNCTION_0>:
c0de3038:	4633      	mov	r3, r6
c0de303a:	f004 bbe7 	b.w	c0de780c <cx_mont_mul>

c0de303e <OUTLINED_FUNCTION_1>:
c0de303e:	462b      	mov	r3, r5
c0de3040:	f004 bbe4 	b.w	c0de780c <cx_mont_mul>

c0de3044 <OUTLINED_FUNCTION_2>:
c0de3044:	4633      	mov	r3, r6
c0de3046:	460a      	mov	r2, r1
c0de3048:	f004 bbe0 	b.w	c0de780c <cx_mont_mul>

c0de304c <OUTLINED_FUNCTION_3>:
c0de304c:	462a      	mov	r2, r5
c0de304e:	4601      	mov	r1, r0
c0de3050:	f004 bbc4 	b.w	c0de77dc <cx_mont_to_montgomery>

c0de3054 <OUTLINED_FUNCTION_4>:
c0de3054:	4620      	mov	r0, r4
c0de3056:	f850 1b34 	ldr.w	r1, [r0], #52
c0de305a:	f004 baeb 	b.w	c0de7634 <cx_bn_alloc>

c0de305e <OUTLINED_FUNCTION_5>:
c0de305e:	4620      	mov	r0, r4
c0de3060:	f850 1b48 	ldr.w	r1, [r0], #72
c0de3064:	f004 bae6 	b.w	c0de7634 <cx_bn_alloc>

c0de3068 <OUTLINED_FUNCTION_6>:
c0de3068:	4620      	mov	r0, r4
c0de306a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de306e:	f004 bae1 	b.w	c0de7634 <cx_bn_alloc>

c0de3072 <OUTLINED_FUNCTION_7>:
c0de3072:	4620      	mov	r0, r4
c0de3074:	f850 1b38 	ldr.w	r1, [r0], #56
c0de3078:	f004 badc 	b.w	c0de7634 <cx_bn_alloc>

c0de307c <OUTLINED_FUNCTION_8>:
c0de307c:	4620      	mov	r0, r4
c0de307e:	f850 1b30 	ldr.w	r1, [r0], #48
c0de3082:	f004 bad7 	b.w	c0de7634 <cx_bn_alloc>

c0de3086 <OUTLINED_FUNCTION_9>:
c0de3086:	4620      	mov	r0, r4
c0de3088:	f850 1b44 	ldr.w	r1, [r0], #68
c0de308c:	f004 bad2 	b.w	c0de7634 <cx_bn_alloc>

c0de3090 <OUTLINED_FUNCTION_10>:
c0de3090:	4620      	mov	r0, r4
c0de3092:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de3096:	f004 bacd 	b.w	c0de7634 <cx_bn_alloc>

c0de309a <OUTLINED_FUNCTION_11>:
c0de309a:	6860      	ldr	r0, [r4, #4]
c0de309c:	f004 bb00 	b.w	c0de76a0 <cx_bn_copy>

c0de30a0 <grain_lfsr_advance>:
c0de30a0:	b5b0      	push	{r4, r5, r7, lr}
c0de30a2:	68c2      	ldr	r2, [r0, #12]
c0de30a4:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de30a8:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de30ac:	ea4f 0234 	mov.w	r2, r4, rrx
c0de30b0:	07e4      	lsls	r4, r4, #31
c0de30b2:	60c5      	str	r5, [r0, #12]
c0de30b4:	07dd      	lsls	r5, r3, #31
c0de30b6:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de30ba:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de30be:	6044      	str	r4, [r0, #4]
c0de30c0:	4c15      	ldr	r4, [pc, #84]	@ (c0de3118 <grain_lfsr_advance+0x78>)
c0de30c2:	6005      	str	r5, [r0, #0]
c0de30c4:	4021      	ands	r1, r4
c0de30c6:	4c15      	ldr	r4, [pc, #84]	@ (c0de311c <grain_lfsr_advance+0x7c>)
c0de30c8:	4023      	ands	r3, r4
c0de30ca:	4419      	add	r1, r3
c0de30cc:	0c0c      	lsrs	r4, r1, #16
c0de30ce:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de30d2:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de30d6:	4421      	add	r1, r4
c0de30d8:	0a0c      	lsrs	r4, r1, #8
c0de30da:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de30de:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de30e2:	4061      	eors	r1, r4
c0de30e4:	090c      	lsrs	r4, r1, #4
c0de30e6:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de30ea:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de30ee:	4061      	eors	r1, r4
c0de30f0:	088c      	lsrs	r4, r1, #2
c0de30f2:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de30f6:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de30fa:	4061      	eors	r1, r4
c0de30fc:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de3100:	ea4f 0331 	mov.w	r3, r1, rrx
c0de3104:	4059      	eors	r1, r3
c0de3106:	f001 0101 	and.w	r1, r1, #1
c0de310a:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de310e:	6082      	str	r2, [r0, #8]
c0de3110:	4608      	mov	r0, r1
c0de3112:	2100      	movs	r1, #0
c0de3114:	bdb0      	pop	{r4, r5, r7, pc}
c0de3116:	bf00      	nop
c0de3118:	00802001 	.word	0x00802001
c0de311c:	40080040 	.word	0x40080040

c0de3120 <next64_graingen>:
c0de3120:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de3124:	460c      	mov	r4, r1
c0de3126:	4605      	mov	r5, r0
c0de3128:	f04f 0a00 	mov.w	sl, #0
c0de312c:	f04f 0800 	mov.w	r8, #0
c0de3130:	2700      	movs	r7, #0
c0de3132:	42a7      	cmp	r7, r4
c0de3134:	d215      	bcs.n	c0de3162 <next64_graingen+0x42>
c0de3136:	4628      	mov	r0, r5
c0de3138:	f7ff ffb2 	bl	c0de30a0 <grain_lfsr_advance>
c0de313c:	4606      	mov	r6, r0
c0de313e:	4628      	mov	r0, r5
c0de3140:	f7ff ffae 	bl	c0de30a0 <grain_lfsr_advance>
c0de3144:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de3148:	0781      	lsls	r1, r0, #30
c0de314a:	d5f2      	bpl.n	c0de3132 <next64_graingen+0x12>
c0de314c:	f000 0001 	and.w	r0, r0, #1
c0de3150:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de3154:	3701      	adds	r7, #1
c0de3156:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de315a:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de315e:	4682      	mov	sl, r0
c0de3160:	e7e7      	b.n	c0de3132 <next64_graingen+0x12>
c0de3162:	4650      	mov	r0, sl
c0de3164:	4641      	mov	r1, r8
c0de3166:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de316c <init_generator>:
c0de316c:	b5b0      	push	{r4, r5, r7, lr}
c0de316e:	4a09      	ldr	r2, [pc, #36]	@ (c0de3194 <init_generator+0x28>)
c0de3170:	4b09      	ldr	r3, [pc, #36]	@ (c0de3198 <init_generator+0x2c>)
c0de3172:	4604      	mov	r4, r0
c0de3174:	25a0      	movs	r5, #160	@ 0xa0
c0de3176:	2000      	movs	r0, #0
c0de3178:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de317c:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de3180:	e9c4 3200 	strd	r3, r2, [r4]
c0de3184:	b125      	cbz	r5, c0de3190 <init_generator+0x24>
c0de3186:	4620      	mov	r0, r4
c0de3188:	f7ff ff8a 	bl	c0de30a0 <grain_lfsr_advance>
c0de318c:	3d01      	subs	r5, #1
c0de318e:	e7f9      	b.n	c0de3184 <init_generator+0x18>
c0de3190:	bdb0      	pop	{r4, r5, r7, pc}
c0de3192:	bf00      	nop
c0de3194:	fffcf010 	.word	0xfffcf010
c0de3198:	1801fc02 	.word	0x1801fc02

c0de319c <gen_integer>:
c0de319c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de31a0:	4f20      	ldr	r7, [pc, #128]	@ (c0de3224 <gen_integer+0x88>)
c0de31a2:	4e22      	ldr	r6, [pc, #136]	@ (c0de322c <gen_integer+0x90>)
c0de31a4:	4605      	mov	r5, r0
c0de31a6:	460c      	mov	r4, r1
c0de31a8:	2000      	movs	r0, #0
c0de31aa:	46b8      	mov	r8, r7
c0de31ac:	4f1e      	ldr	r7, [pc, #120]	@ (c0de3228 <gen_integer+0x8c>)
c0de31ae:	447e      	add	r6, pc
c0de31b0:	b9f8      	cbnz	r0, c0de31f2 <gen_integer+0x56>
c0de31b2:	4628      	mov	r0, r5
c0de31b4:	213e      	movs	r1, #62	@ 0x3e
c0de31b6:	47b0      	blx	r6
c0de31b8:	e9c4 0100 	strd	r0, r1, [r4]
c0de31bc:	4628      	mov	r0, r5
c0de31be:	2140      	movs	r1, #64	@ 0x40
c0de31c0:	47b0      	blx	r6
c0de31c2:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de31c6:	4628      	mov	r0, r5
c0de31c8:	2140      	movs	r1, #64	@ 0x40
c0de31ca:	47b0      	blx	r6
c0de31cc:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de31d0:	4628      	mov	r0, r5
c0de31d2:	2140      	movs	r1, #64	@ 0x40
c0de31d4:	47b0      	blx	r6
c0de31d6:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de31da:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de31de:	463a      	mov	r2, r7
c0de31e0:	1bc0      	subs	r0, r0, r7
c0de31e2:	4640      	mov	r0, r8
c0de31e4:	eb71 0008 	sbcs.w	r0, r1, r8
c0de31e8:	f04f 0000 	mov.w	r0, #0
c0de31ec:	bf38      	it	cc
c0de31ee:	2001      	movcc	r0, #1
c0de31f0:	e7de      	b.n	c0de31b0 <gen_integer+0x14>
c0de31f2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de31f6:	4d0e      	ldr	r5, [pc, #56]	@ (c0de3230 <gen_integer+0x94>)
c0de31f8:	447d      	add	r5, pc
c0de31fa:	47a8      	blx	r5
c0de31fc:	e9c4 0100 	strd	r0, r1, [r4]
c0de3200:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de3204:	47a8      	blx	r5
c0de3206:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de320a:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de320e:	47a8      	blx	r5
c0de3210:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3214:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de3218:	47a8      	blx	r5
c0de321a:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de321e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3222:	bf00      	nop
c0de3224:	305a4b4e 	.word	0x305a4b4e
c0de3228:	4f582122 	.word	0x4f582122
c0de322c:	ffffff6f 	.word	0xffffff6f
c0de3230:	00000039 	.word	0x00000039

c0de3234 <rev64>:
c0de3234:	ba0a      	rev	r2, r1
c0de3236:	ba01      	rev	r1, r0
c0de3238:	4610      	mov	r0, r2
c0de323a:	4770      	bx	lr

c0de323c <Poseidon_getNext_RC>:
c0de323c:	30c0      	adds	r0, #192	@ 0xc0
c0de323e:	f7ff bfad 	b.w	c0de319c <gen_integer>
	...

c0de3244 <Poseidon_alloc_init>:
c0de3244:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3248:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de324c:	4604      	mov	r4, r0
c0de324e:	30c0      	adds	r0, #192	@ 0xc0
c0de3250:	461e      	mov	r6, r3
c0de3252:	4617      	mov	r7, r2
c0de3254:	460d      	mov	r5, r1
c0de3256:	f7ff ff89 	bl	c0de316c <init_generator>
c0de325a:	492c      	ldr	r1, [pc, #176]	@ (c0de330c <Poseidon_alloc_init+0xc8>)
c0de325c:	46e8      	mov	r8, sp
c0de325e:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de3262:	4640      	mov	r0, r8
c0de3264:	4479      	add	r1, pc
c0de3266:	f004 fc9b 	bl	c0de7ba0 <__aeabi_memcpy>
c0de326a:	2000      	movs	r0, #0
c0de326c:	7325      	strb	r5, [r4, #12]
c0de326e:	6166      	str	r6, [r4, #20]
c0de3270:	4621      	mov	r1, r4
c0de3272:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de3276:	1c78      	adds	r0, r7, #1
c0de3278:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de327c:	6830      	ldr	r0, [r6, #0]
c0de327e:	f004 f9f9 	bl	c0de7674 <cx_bn_nbytes>
c0de3282:	b930      	cbnz	r0, c0de3292 <Poseidon_alloc_init+0x4e>
c0de3284:	4620      	mov	r0, r4
c0de3286:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de328a:	4631      	mov	r1, r6
c0de328c:	f004 f9d2 	bl	c0de7634 <cx_bn_alloc>
c0de3290:	b118      	cbz	r0, c0de329a <Poseidon_alloc_init+0x56>
c0de3292:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de3296:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de329a:	68a0      	ldr	r0, [r4, #8]
c0de329c:	2500      	movs	r5, #0
c0de329e:	4285      	cmp	r5, r0
c0de32a0:	d230      	bcs.n	c0de3304 <Poseidon_alloc_init+0xc0>
c0de32a2:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de32a6:	4631      	mov	r1, r6
c0de32a8:	f107 0018 	add.w	r0, r7, #24
c0de32ac:	f004 f9c2 	bl	c0de7634 <cx_bn_alloc>
c0de32b0:	2800      	cmp	r0, #0
c0de32b2:	d1ee      	bne.n	c0de3292 <Poseidon_alloc_init+0x4e>
c0de32b4:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de32b8:	4631      	mov	r1, r6
c0de32ba:	f004 f9bb 	bl	c0de7634 <cx_bn_alloc>
c0de32be:	2800      	cmp	r0, #0
c0de32c0:	d1e7      	bne.n	c0de3292 <Poseidon_alloc_init+0x4e>
c0de32c2:	2700      	movs	r7, #0
c0de32c4:	68a0      	ldr	r0, [r4, #8]
c0de32c6:	4287      	cmp	r7, r0
c0de32c8:	d21a      	bcs.n	c0de3300 <Poseidon_alloc_init+0xbc>
c0de32ca:	fb05 7000 	mla	r0, r5, r0, r7
c0de32ce:	4631      	mov	r1, r6
c0de32d0:	4633      	mov	r3, r6
c0de32d2:	fb00 8206 	mla	r2, r0, r6, r8
c0de32d6:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de32da:	3030      	adds	r0, #48	@ 0x30
c0de32dc:	f004 f9b4 	bl	c0de7648 <cx_bn_alloc_init>
c0de32e0:	2800      	cmp	r0, #0
c0de32e2:	d1d6      	bne.n	c0de3292 <Poseidon_alloc_init+0x4e>
c0de32e4:	68a0      	ldr	r0, [r4, #8]
c0de32e6:	6962      	ldr	r2, [r4, #20]
c0de32e8:	fb05 7000 	mla	r0, r5, r0, r7
c0de32ec:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de32f0:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de32f2:	4601      	mov	r1, r0
c0de32f4:	f004 fa72 	bl	c0de77dc <cx_mont_to_montgomery>
c0de32f8:	3701      	adds	r7, #1
c0de32fa:	2800      	cmp	r0, #0
c0de32fc:	d0e2      	beq.n	c0de32c4 <Poseidon_alloc_init+0x80>
c0de32fe:	e7c8      	b.n	c0de3292 <Poseidon_alloc_init+0x4e>
c0de3300:	3501      	adds	r5, #1
c0de3302:	e7cc      	b.n	c0de329e <Poseidon_alloc_init+0x5a>
c0de3304:	2001      	movs	r0, #1
c0de3306:	6120      	str	r0, [r4, #16]
c0de3308:	2000      	movs	r0, #0
c0de330a:	e7c2      	b.n	c0de3292 <Poseidon_alloc_init+0x4e>
c0de330c:	0000597c 	.word	0x0000597c

c0de3310 <Poseidon>:
c0de3310:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3314:	b08c      	sub	sp, #48	@ 0x30
c0de3316:	4606      	mov	r6, r0
c0de3318:	6900      	ldr	r0, [r0, #16]
c0de331a:	2801      	cmp	r0, #1
c0de331c:	f040 80b4 	bne.w	c0de3488 <Poseidon+0x178>
c0de3320:	69b0      	ldr	r0, [r6, #24]
c0de3322:	461f      	mov	r7, r3
c0de3324:	4692      	mov	sl, r2
c0de3326:	f004 f9c5 	bl	c0de76b4 <cx_bn_set_u32>
c0de332a:	2800      	cmp	r0, #0
c0de332c:	f040 80ad 	bne.w	c0de348a <Poseidon+0x17a>
c0de3330:	f106 000c 	add.w	r0, r6, #12
c0de3334:	f106 0818 	add.w	r8, r6, #24
c0de3338:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de333c:	9001      	str	r0, [sp, #4]
c0de333e:	2000      	movs	r0, #0
c0de3340:	2844      	cmp	r0, #68	@ 0x44
c0de3342:	f000 80ae 	beq.w	c0de34a2 <Poseidon+0x192>
c0de3346:	6834      	ldr	r4, [r6, #0]
c0de3348:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de334c:	f04f 0a00 	mov.w	sl, #0
c0de3350:	68b0      	ldr	r0, [r6, #8]
c0de3352:	4582      	cmp	sl, r0
c0de3354:	d224      	bcs.n	c0de33a0 <Poseidon+0x90>
c0de3356:	ad04      	add	r5, sp, #16
c0de3358:	4658      	mov	r0, fp
c0de335a:	4629      	mov	r1, r5
c0de335c:	f7ff ff1e 	bl	c0de319c <gen_integer>
c0de3360:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3364:	4629      	mov	r1, r5
c0de3366:	4622      	mov	r2, r4
c0de3368:	f004 f98e 	bl	c0de7688 <cx_bn_init>
c0de336c:	2800      	cmp	r0, #0
c0de336e:	f040 808c 	bne.w	c0de348a <Poseidon+0x17a>
c0de3372:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3376:	6972      	ldr	r2, [r6, #20]
c0de3378:	4601      	mov	r1, r0
c0de337a:	f004 fa2f 	bl	c0de77dc <cx_mont_to_montgomery>
c0de337e:	2800      	cmp	r0, #0
c0de3380:	f040 8083 	bne.w	c0de348a <Poseidon+0x17a>
c0de3384:	6972      	ldr	r2, [r6, #20]
c0de3386:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de338a:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de338e:	6813      	ldr	r3, [r2, #0]
c0de3390:	4602      	mov	r2, r0
c0de3392:	f004 f9c9 	bl	c0de7728 <cx_bn_mod_add>
c0de3396:	f10a 0a01 	add.w	sl, sl, #1
c0de339a:	2800      	cmp	r0, #0
c0de339c:	d0d8      	beq.n	c0de3350 <Poseidon+0x40>
c0de339e:	e074      	b.n	c0de348a <Poseidon+0x17a>
c0de33a0:	9902      	ldr	r1, [sp, #8]
c0de33a2:	2904      	cmp	r1, #4
c0de33a4:	d301      	bcc.n	c0de33aa <Poseidon+0x9a>
c0de33a6:	2940      	cmp	r1, #64	@ 0x40
c0de33a8:	d323      	bcc.n	c0de33f2 <Poseidon+0xe2>
c0de33aa:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de33ae:	2400      	movs	r4, #0
c0de33b0:	4284      	cmp	r4, r0
c0de33b2:	d22b      	bcs.n	c0de340c <Poseidon+0xfc>
c0de33b4:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de33b8:	6973      	ldr	r3, [r6, #20]
c0de33ba:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de33be:	460a      	mov	r2, r1
c0de33c0:	f004 fa24 	bl	c0de780c <cx_mont_mul>
c0de33c4:	2800      	cmp	r0, #0
c0de33c6:	d160      	bne.n	c0de348a <Poseidon+0x17a>
c0de33c8:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de33cc:	6973      	ldr	r3, [r6, #20]
c0de33ce:	460a      	mov	r2, r1
c0de33d0:	f004 fa1c 	bl	c0de780c <cx_mont_mul>
c0de33d4:	2800      	cmp	r0, #0
c0de33d6:	d158      	bne.n	c0de348a <Poseidon+0x17a>
c0de33d8:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de33dc:	6973      	ldr	r3, [r6, #20]
c0de33de:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de33e2:	4601      	mov	r1, r0
c0de33e4:	f004 fa12 	bl	c0de780c <cx_mont_mul>
c0de33e8:	2800      	cmp	r0, #0
c0de33ea:	d14e      	bne.n	c0de348a <Poseidon+0x17a>
c0de33ec:	68b0      	ldr	r0, [r6, #8]
c0de33ee:	3401      	adds	r4, #1
c0de33f0:	e7de      	b.n	c0de33b0 <Poseidon+0xa0>
c0de33f2:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de33f6:	9a01      	ldr	r2, [sp, #4]
c0de33f8:	2301      	movs	r3, #1
c0de33fa:	9100      	str	r1, [sp, #0]
c0de33fc:	4601      	mov	r1, r0
c0de33fe:	f004 fa11 	bl	c0de7824 <cx_mont_pow>
c0de3402:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3406:	2800      	cmp	r0, #0
c0de3408:	d13f      	bne.n	c0de348a <Poseidon+0x17a>
c0de340a:	68b0      	ldr	r0, [r6, #8]
c0de340c:	2500      	movs	r5, #0
c0de340e:	4285      	cmp	r5, r0
c0de3410:	d229      	bcs.n	c0de3466 <Poseidon+0x156>
c0de3412:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3416:	2100      	movs	r1, #0
c0de3418:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de341c:	f004 f94a 	bl	c0de76b4 <cx_bn_set_u32>
c0de3420:	bb98      	cbnz	r0, c0de348a <Poseidon+0x17a>
c0de3422:	9503      	str	r5, [sp, #12]
c0de3424:	2500      	movs	r5, #0
c0de3426:	68b0      	ldr	r0, [r6, #8]
c0de3428:	4285      	cmp	r5, r0
c0de342a:	d219      	bcs.n	c0de3460 <Poseidon+0x150>
c0de342c:	9903      	ldr	r1, [sp, #12]
c0de342e:	6973      	ldr	r3, [r6, #20]
c0de3430:	fb01 5000 	mla	r0, r1, r0, r5
c0de3434:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3438:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de343c:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de343e:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de3442:	f004 f9e3 	bl	c0de780c <cx_mont_mul>
c0de3446:	bb00      	cbnz	r0, c0de348a <Poseidon+0x17a>
c0de3448:	6971      	ldr	r1, [r6, #20]
c0de344a:	6820      	ldr	r0, [r4, #0]
c0de344c:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de3450:	680b      	ldr	r3, [r1, #0]
c0de3452:	4601      	mov	r1, r0
c0de3454:	f004 f968 	bl	c0de7728 <cx_bn_mod_add>
c0de3458:	3501      	adds	r5, #1
c0de345a:	2800      	cmp	r0, #0
c0de345c:	d0e3      	beq.n	c0de3426 <Poseidon+0x116>
c0de345e:	e014      	b.n	c0de348a <Poseidon+0x17a>
c0de3460:	9d03      	ldr	r5, [sp, #12]
c0de3462:	3501      	adds	r5, #1
c0de3464:	e7d3      	b.n	c0de340e <Poseidon+0xfe>
c0de3466:	2400      	movs	r4, #0
c0de3468:	4284      	cmp	r4, r0
c0de346a:	d20a      	bcs.n	c0de3482 <Poseidon+0x172>
c0de346c:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3470:	6988      	ldr	r0, [r1, #24]
c0de3472:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3476:	f004 f913 	bl	c0de76a0 <cx_bn_copy>
c0de347a:	b930      	cbnz	r0, c0de348a <Poseidon+0x17a>
c0de347c:	68b0      	ldr	r0, [r6, #8]
c0de347e:	3401      	adds	r4, #1
c0de3480:	e7f2      	b.n	c0de3468 <Poseidon+0x158>
c0de3482:	9802      	ldr	r0, [sp, #8]
c0de3484:	3001      	adds	r0, #1
c0de3486:	e75b      	b.n	c0de3340 <Poseidon+0x30>
c0de3488:	4808      	ldr	r0, [pc, #32]	@ (c0de34ac <Poseidon+0x19c>)
c0de348a:	b00c      	add	sp, #48	@ 0x30
c0de348c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3490:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3494:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3498:	f004 f902 	bl	c0de76a0 <cx_bn_copy>
c0de349c:	3f01      	subs	r7, #1
c0de349e:	2800      	cmp	r0, #0
c0de34a0:	d1f3      	bne.n	c0de348a <Poseidon+0x17a>
c0de34a2:	2f00      	cmp	r7, #0
c0de34a4:	d1f4      	bne.n	c0de3490 <Poseidon+0x180>
c0de34a6:	2000      	movs	r0, #0
c0de34a8:	e7ef      	b.n	c0de348a <Poseidon+0x17a>
c0de34aa:	bf00      	nop
c0de34ac:	5a4b4e02 	.word	0x5a4b4e02

c0de34b0 <RFC9591_taggedHash>:
c0de34b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de34b2:	b0d9      	sub	sp, #356	@ 0x164
c0de34b4:	460e      	mov	r6, r1
c0de34b6:	4607      	mov	r7, r0
c0de34b8:	a858      	add	r0, sp, #352	@ 0x160
c0de34ba:	2140      	movs	r1, #64	@ 0x40
c0de34bc:	461c      	mov	r4, r3
c0de34be:	4615      	mov	r5, r2
c0de34c0:	f004 f8b8 	bl	c0de7634 <cx_bn_alloc>
c0de34c4:	bbd8      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de34c6:	491f      	ldr	r1, [pc, #124]	@ (c0de3544 <RFC9591_taggedHash+0x94>)
c0de34c8:	4668      	mov	r0, sp
c0de34ca:	221d      	movs	r2, #29
c0de34cc:	4479      	add	r1, pc
c0de34ce:	f004 fb67 	bl	c0de7ba0 <__aeabi_memcpy>
c0de34d2:	a808      	add	r0, sp, #32
c0de34d4:	2109      	movs	r1, #9
c0de34d6:	2240      	movs	r2, #64	@ 0x40
c0de34d8:	f003 fe37 	bl	c0de714a <cx_hash_init_ex>
c0de34dc:	bb78      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de34de:	a808      	add	r0, sp, #32
c0de34e0:	4669      	mov	r1, sp
c0de34e2:	221d      	movs	r2, #29
c0de34e4:	f003 fe36 	bl	c0de7154 <cx_hash_update>
c0de34e8:	bb48      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de34ea:	a808      	add	r0, sp, #32
c0de34ec:	4639      	mov	r1, r7
c0de34ee:	4632      	mov	r2, r6
c0de34f0:	f003 fe30 	bl	c0de7154 <cx_hash_update>
c0de34f4:	bb18      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de34f6:	a808      	add	r0, sp, #32
c0de34f8:	4629      	mov	r1, r5
c0de34fa:	4622      	mov	r2, r4
c0de34fc:	f003 fe2a 	bl	c0de7154 <cx_hash_update>
c0de3500:	b9e8      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de3502:	a808      	add	r0, sp, #32
c0de3504:	ae48      	add	r6, sp, #288	@ 0x120
c0de3506:	4631      	mov	r1, r6
c0de3508:	f003 fe15 	bl	c0de7136 <cx_hash_final>
c0de350c:	b9b8      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de350e:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de3512:	2000      	movs	r0, #0
c0de3514:	213f      	movs	r1, #63	@ 0x3f
c0de3516:	2820      	cmp	r0, #32
c0de3518:	d002      	beq.n	c0de3520 <RFC9591_taggedHash+0x70>
c0de351a:	f000 f8dd 	bl	c0de36d8 <OUTLINED_FUNCTION_3>
c0de351e:	e7fa      	b.n	c0de3516 <RFC9591_taggedHash+0x66>
c0de3520:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de3522:	a948      	add	r1, sp, #288	@ 0x120
c0de3524:	2240      	movs	r2, #64	@ 0x40
c0de3526:	f004 f8af 	bl	c0de7688 <cx_bn_init>
c0de352a:	b940      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de352c:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de352e:	4628      	mov	r0, r5
c0de3530:	4622      	mov	r2, r4
c0de3532:	f004 f91d 	bl	c0de7770 <cx_bn_reduce>
c0de3536:	b910      	cbnz	r0, c0de353e <RFC9591_taggedHash+0x8e>
c0de3538:	a858      	add	r0, sp, #352	@ 0x160
c0de353a:	f004 f891 	bl	c0de7660 <cx_bn_destroy>
c0de353e:	b059      	add	sp, #356	@ 0x164
c0de3540:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3542:	bf00      	nop
c0de3544:	00005b94 	.word	0x00005b94

c0de3548 <Babyfrost_H1>:
c0de3548:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de354a:	4605      	mov	r5, r0
c0de354c:	206f      	movs	r0, #111	@ 0x6f
c0de354e:	f000 f8b7 	bl	c0de36c0 <OUTLINED_FUNCTION_1>
c0de3552:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3556:	f000 f8ba 	bl	c0de36ce <OUTLINED_FUNCTION_2>
c0de355a:	a803      	add	r0, sp, #12
c0de355c:	f7ff ffa8 	bl	c0de34b0 <RFC9591_taggedHash>
c0de3560:	b004      	add	sp, #16
c0de3562:	bdb0      	pop	{r4, r5, r7, pc}

c0de3564 <Babyfrost_H3>:
c0de3564:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3566:	4605      	mov	r5, r0
c0de3568:	2065      	movs	r0, #101	@ 0x65
c0de356a:	460c      	mov	r4, r1
c0de356c:	e9cd 2300 	strd	r2, r3, [sp]
c0de3570:	2105      	movs	r1, #5
c0de3572:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3576:	4804      	ldr	r0, [pc, #16]	@ (c0de3588 <Babyfrost_H3+0x24>)
c0de3578:	462a      	mov	r2, r5
c0de357a:	4623      	mov	r3, r4
c0de357c:	9002      	str	r0, [sp, #8]
c0de357e:	a802      	add	r0, sp, #8
c0de3580:	f7ff ff96 	bl	c0de34b0 <RFC9591_taggedHash>
c0de3584:	b004      	add	sp, #16
c0de3586:	bdb0      	pop	{r4, r5, r7, pc}
c0de3588:	636e6f6e 	.word	0x636e6f6e

c0de358c <Babyfrost_H4>:
c0de358c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de358e:	4605      	mov	r5, r0
c0de3590:	2067      	movs	r0, #103	@ 0x67
c0de3592:	f000 f895 	bl	c0de36c0 <OUTLINED_FUNCTION_1>
c0de3596:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de359a:	f000 f898 	bl	c0de36ce <OUTLINED_FUNCTION_2>
c0de359e:	a803      	add	r0, sp, #12
c0de35a0:	f7ff ff86 	bl	c0de34b0 <RFC9591_taggedHash>
c0de35a4:	b004      	add	sp, #16
c0de35a6:	bdb0      	pop	{r4, r5, r7, pc}

c0de35a8 <Babyfrost_H5>:
c0de35a8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de35aa:	4605      	mov	r5, r0
c0de35ac:	206d      	movs	r0, #109	@ 0x6d
c0de35ae:	f000 f887 	bl	c0de36c0 <OUTLINED_FUNCTION_1>
c0de35b2:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de35b6:	f000 f88a 	bl	c0de36ce <OUTLINED_FUNCTION_2>
c0de35ba:	a803      	add	r0, sp, #12
c0de35bc:	f7ff ff78 	bl	c0de34b0 <RFC9591_taggedHash>
c0de35c0:	b004      	add	sp, #16
c0de35c2:	bdb0      	pop	{r4, r5, r7, pc}

c0de35c4 <zkn_frost_hash_init>:
c0de35c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de35c6:	461d      	mov	r5, r3
c0de35c8:	4604      	mov	r4, r0
c0de35ca:	f003 fdbe 	bl	c0de714a <cx_hash_init_ex>
c0de35ce:	b938      	cbnz	r0, c0de35e0 <zkn_frost_hash_init+0x1c>
c0de35d0:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de35d4:	9e08      	ldr	r6, [sp, #32]
c0de35d6:	4620      	mov	r0, r4
c0de35d8:	4629      	mov	r1, r5
c0de35da:	f003 fdbb 	bl	c0de7154 <cx_hash_update>
c0de35de:	b100      	cbz	r0, c0de35e2 <zkn_frost_hash_init+0x1e>
c0de35e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de35e2:	4620      	mov	r0, r4
c0de35e4:	4639      	mov	r1, r7
c0de35e6:	4632      	mov	r2, r6
c0de35e8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de35ec:	f003 bdb2 	b.w	c0de7154 <cx_hash_update>

c0de35f0 <zkn_frost_H1_init>:
c0de35f0:	b570      	push	{r4, r5, r6, lr}
c0de35f2:	b08c      	sub	sp, #48	@ 0x30
c0de35f4:	4604      	mov	r4, r0
c0de35f6:	206f      	movs	r0, #111	@ 0x6f
c0de35f8:	221d      	movs	r2, #29
c0de35fa:	261d      	movs	r6, #29
c0de35fc:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3600:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3604:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3608:	ad03      	add	r5, sp, #12
c0de360a:	4905      	ldr	r1, [pc, #20]	@ (c0de3620 <zkn_frost_H1_init+0x30>)
c0de360c:	4628      	mov	r0, r5
c0de360e:	4479      	add	r1, pc
c0de3610:	f004 fac6 	bl	c0de7ba0 <__aeabi_memcpy>
c0de3614:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3616:	f000 f849 	bl	c0de36ac <OUTLINED_FUNCTION_0>
c0de361a:	b00c      	add	sp, #48	@ 0x30
c0de361c:	bd70      	pop	{r4, r5, r6, pc}
c0de361e:	bf00      	nop
c0de3620:	00005a52 	.word	0x00005a52

c0de3624 <zkn_frost_H5_init>:
c0de3624:	b570      	push	{r4, r5, r6, lr}
c0de3626:	b08c      	sub	sp, #48	@ 0x30
c0de3628:	4604      	mov	r4, r0
c0de362a:	206d      	movs	r0, #109	@ 0x6d
c0de362c:	221d      	movs	r2, #29
c0de362e:	261d      	movs	r6, #29
c0de3630:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3634:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3638:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de363c:	ad03      	add	r5, sp, #12
c0de363e:	4905      	ldr	r1, [pc, #20]	@ (c0de3654 <zkn_frost_H5_init+0x30>)
c0de3640:	4628      	mov	r0, r5
c0de3642:	4479      	add	r1, pc
c0de3644:	f004 faac 	bl	c0de7ba0 <__aeabi_memcpy>
c0de3648:	a90b      	add	r1, sp, #44	@ 0x2c
c0de364a:	f000 f82f 	bl	c0de36ac <OUTLINED_FUNCTION_0>
c0de364e:	b00c      	add	sp, #48	@ 0x30
c0de3650:	bd70      	pop	{r4, r5, r6, pc}
c0de3652:	bf00      	nop
c0de3654:	00005a1e 	.word	0x00005a1e

c0de3658 <zkn_frost_hash_update>:
c0de3658:	f003 bd7c 	b.w	c0de7154 <cx_hash_update>

c0de365c <zkn_frost_hash_final>:
c0de365c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de365e:	b091      	sub	sp, #68	@ 0x44
c0de3660:	460c      	mov	r4, r1
c0de3662:	4607      	mov	r7, r0
c0de3664:	a810      	add	r0, sp, #64	@ 0x40
c0de3666:	2140      	movs	r1, #64	@ 0x40
c0de3668:	4615      	mov	r5, r2
c0de366a:	f003 ffe3 	bl	c0de7634 <cx_bn_alloc>
c0de366e:	b9d8      	cbnz	r0, c0de36a8 <zkn_frost_hash_final+0x4c>
c0de3670:	466e      	mov	r6, sp
c0de3672:	4638      	mov	r0, r7
c0de3674:	4631      	mov	r1, r6
c0de3676:	f003 fd5e 	bl	c0de7136 <cx_hash_final>
c0de367a:	b9a8      	cbnz	r0, c0de36a8 <zkn_frost_hash_final+0x4c>
c0de367c:	2000      	movs	r0, #0
c0de367e:	213f      	movs	r1, #63	@ 0x3f
c0de3680:	2820      	cmp	r0, #32
c0de3682:	d002      	beq.n	c0de368a <zkn_frost_hash_final+0x2e>
c0de3684:	f000 f828 	bl	c0de36d8 <OUTLINED_FUNCTION_3>
c0de3688:	e7fa      	b.n	c0de3680 <zkn_frost_hash_final+0x24>
c0de368a:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de368c:	4669      	mov	r1, sp
c0de368e:	2240      	movs	r2, #64	@ 0x40
c0de3690:	f003 fffa 	bl	c0de7688 <cx_bn_init>
c0de3694:	b940      	cbnz	r0, c0de36a8 <zkn_frost_hash_final+0x4c>
c0de3696:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3698:	4628      	mov	r0, r5
c0de369a:	4622      	mov	r2, r4
c0de369c:	f004 f868 	bl	c0de7770 <cx_bn_reduce>
c0de36a0:	b910      	cbnz	r0, c0de36a8 <zkn_frost_hash_final+0x4c>
c0de36a2:	a810      	add	r0, sp, #64	@ 0x40
c0de36a4:	f003 ffdc 	bl	c0de7660 <cx_bn_destroy>
c0de36a8:	b011      	add	sp, #68	@ 0x44
c0de36aa:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de36ac <OUTLINED_FUNCTION_0>:
c0de36ac:	2003      	movs	r0, #3
c0de36ae:	2240      	movs	r2, #64	@ 0x40
c0de36b0:	462b      	mov	r3, r5
c0de36b2:	e9cd 6100 	strd	r6, r1, [sp]
c0de36b6:	9002      	str	r0, [sp, #8]
c0de36b8:	4620      	mov	r0, r4
c0de36ba:	2109      	movs	r1, #9
c0de36bc:	f7ff bf82 	b.w	c0de35c4 <zkn_frost_hash_init>

c0de36c0 <OUTLINED_FUNCTION_1>:
c0de36c0:	460c      	mov	r4, r1
c0de36c2:	e9cd 2300 	strd	r2, r3, [sp]
c0de36c6:	2103      	movs	r1, #3
c0de36c8:	f88d 000e 	strb.w	r0, [sp, #14]
c0de36cc:	4770      	bx	lr

c0de36ce <OUTLINED_FUNCTION_2>:
c0de36ce:	462a      	mov	r2, r5
c0de36d0:	4623      	mov	r3, r4
c0de36d2:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de36d6:	4770      	bx	lr

c0de36d8 <OUTLINED_FUNCTION_3>:
c0de36d8:	5c32      	ldrb	r2, [r6, r0]
c0de36da:	5c73      	ldrb	r3, [r6, r1]
c0de36dc:	5433      	strb	r3, [r6, r0]
c0de36de:	5472      	strb	r2, [r6, r1]
c0de36e0:	3901      	subs	r1, #1
c0de36e2:	3001      	adds	r0, #1
c0de36e4:	4770      	bx	lr

c0de36e6 <os_io_handle_default_apdu>:
c0de36e6:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de36e8:	b09d      	sub	sp, #116	@ 0x74
c0de36ea:	4615      	mov	r5, r2
c0de36ec:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de36ee:	b3c8      	cbz	r0, c0de3764 <os_io_handle_default_apdu+0x7e>
c0de36f0:	b3c1      	cbz	r1, c0de3764 <os_io_handle_default_apdu+0x7e>
c0de36f2:	b3bd      	cbz	r5, c0de3764 <os_io_handle_default_apdu+0x7e>
c0de36f4:	461c      	mov	r4, r3
c0de36f6:	b3ab      	cbz	r3, c0de3764 <os_io_handle_default_apdu+0x7e>
c0de36f8:	b10a      	cbz	r2, c0de36fe <os_io_handle_default_apdu+0x18>
c0de36fa:	2100      	movs	r1, #0
c0de36fc:	7011      	strb	r1, [r2, #0]
c0de36fe:	7801      	ldrb	r1, [r0, #0]
c0de3700:	29b0      	cmp	r1, #176	@ 0xb0
c0de3702:	d131      	bne.n	c0de3768 <os_io_handle_default_apdu+0x82>
c0de3704:	7841      	ldrb	r1, [r0, #1]
c0de3706:	29a7      	cmp	r1, #167	@ 0xa7
c0de3708:	d031      	beq.n	c0de376e <os_io_handle_default_apdu+0x88>
c0de370a:	2906      	cmp	r1, #6
c0de370c:	d036      	beq.n	c0de377c <os_io_handle_default_apdu+0x96>
c0de370e:	2901      	cmp	r1, #1
c0de3710:	d131      	bne.n	c0de3776 <os_io_handle_default_apdu+0x90>
c0de3712:	7881      	ldrb	r1, [r0, #2]
c0de3714:	bb79      	cbnz	r1, c0de3776 <os_io_handle_default_apdu+0x90>
c0de3716:	78c0      	ldrb	r0, [r0, #3]
c0de3718:	bb68      	cbnz	r0, c0de3776 <os_io_handle_default_apdu+0x90>
c0de371a:	6820      	ldr	r0, [r4, #0]
c0de371c:	2100      	movs	r1, #0
c0de371e:	6021      	str	r1, [r4, #0]
c0de3720:	2803      	cmp	r0, #3
c0de3722:	d321      	bcc.n	c0de3768 <os_io_handle_default_apdu+0x82>
c0de3724:	2601      	movs	r6, #1
c0de3726:	1ec7      	subs	r7, r0, #3
c0de3728:	6026      	str	r6, [r4, #0]
c0de372a:	702e      	strb	r6, [r5, #0]
c0de372c:	6820      	ldr	r0, [r4, #0]
c0de372e:	1a3a      	subs	r2, r7, r0
c0de3730:	4428      	add	r0, r5
c0de3732:	1c41      	adds	r1, r0, #1
c0de3734:	2001      	movs	r0, #1
c0de3736:	f004 f8eb 	bl	c0de7910 <os_registry_get_current_app_tag>
c0de373a:	f000 f83f 	bl	c0de37bc <OUTLINED_FUNCTION_0>
c0de373e:	6020      	str	r0, [r4, #0]
c0de3740:	1a3a      	subs	r2, r7, r0
c0de3742:	4428      	add	r0, r5
c0de3744:	1c41      	adds	r1, r0, #1
c0de3746:	2002      	movs	r0, #2
c0de3748:	f004 f8e2 	bl	c0de7910 <os_registry_get_current_app_tag>
c0de374c:	f000 f836 	bl	c0de37bc <OUTLINED_FUNCTION_0>
c0de3750:	1c41      	adds	r1, r0, #1
c0de3752:	6021      	str	r1, [r4, #0]
c0de3754:	542e      	strb	r6, [r5, r0]
c0de3756:	f004 f8d3 	bl	c0de7900 <os_flags>
c0de375a:	6821      	ldr	r1, [r4, #0]
c0de375c:	1c4a      	adds	r2, r1, #1
c0de375e:	6022      	str	r2, [r4, #0]
c0de3760:	5468      	strb	r0, [r5, r1]
c0de3762:	e028      	b.n	c0de37b6 <os_io_handle_default_apdu+0xd0>
c0de3764:	7814      	ldrb	r4, [r2, #0]
c0de3766:	e01e      	b.n	c0de37a6 <os_io_handle_default_apdu+0xc0>
c0de3768:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de376c:	e01b      	b.n	c0de37a6 <os_io_handle_default_apdu+0xc0>
c0de376e:	7881      	ldrb	r1, [r0, #2]
c0de3770:	b909      	cbnz	r1, c0de3776 <os_io_handle_default_apdu+0x90>
c0de3772:	78c0      	ldrb	r0, [r0, #3]
c0de3774:	b1d0      	cbz	r0, c0de37ac <os_io_handle_default_apdu+0xc6>
c0de3776:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de377a:	e014      	b.n	c0de37a6 <os_io_handle_default_apdu+0xc0>
c0de377c:	2100      	movs	r1, #0
c0de377e:	6021      	str	r1, [r4, #0]
c0de3780:	7883      	ldrb	r3, [r0, #2]
c0de3782:	7902      	ldrb	r2, [r0, #4]
c0de3784:	ad02      	add	r5, sp, #8
c0de3786:	e9cd 1500 	strd	r1, r5, [sp]
c0de378a:	1d41      	adds	r1, r0, #5
c0de378c:	4618      	mov	r0, r3
c0de378e:	2300      	movs	r3, #0
c0de3790:	f004 f882 	bl	c0de7898 <os_pki_load_certificate>
c0de3794:	4604      	mov	r4, r0
c0de3796:	4628      	mov	r0, r5
c0de3798:	216c      	movs	r1, #108	@ 0x6c
c0de379a:	f004 fa19 	bl	c0de7bd0 <explicit_bzero>
c0de379e:	2c00      	cmp	r4, #0
c0de37a0:	bf08      	it	eq
c0de37a2:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de37a6:	4620      	mov	r0, r4
c0de37a8:	b01d      	add	sp, #116	@ 0x74
c0de37aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de37ac:	2000      	movs	r0, #0
c0de37ae:	6020      	str	r0, [r4, #0]
c0de37b0:	b10a      	cbz	r2, c0de37b6 <os_io_handle_default_apdu+0xd0>
c0de37b2:	2001      	movs	r0, #1
c0de37b4:	7010      	strb	r0, [r2, #0]
c0de37b6:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de37ba:	e7f4      	b.n	c0de37a6 <os_io_handle_default_apdu+0xc0>

c0de37bc <OUTLINED_FUNCTION_0>:
c0de37bc:	6821      	ldr	r1, [r4, #0]
c0de37be:	1c4a      	adds	r2, r1, #1
c0de37c0:	6022      	str	r2, [r4, #0]
c0de37c2:	5468      	strb	r0, [r5, r1]
c0de37c4:	6821      	ldr	r1, [r4, #0]
c0de37c6:	4408      	add	r0, r1
c0de37c8:	4770      	bx	lr

c0de37ca <io_process_itc_ux_event>:
c0de37ca:	b580      	push	{r7, lr}
c0de37cc:	78c0      	ldrb	r0, [r0, #3]
c0de37ce:	2820      	cmp	r0, #32
c0de37d0:	d107      	bne.n	c0de37e2 <io_process_itc_ux_event+0x18>
c0de37d2:	2001      	movs	r0, #1
c0de37d4:	f003 fcdd 	bl	c0de7192 <nbgl_objAllowDrawing>
c0de37d8:	f003 fcea 	bl	c0de71b0 <nbgl_screenRedraw>
c0de37dc:	f003 fccf 	bl	c0de717e <nbgl_refresh>
c0de37e0:	2100      	movs	r1, #0
c0de37e2:	4608      	mov	r0, r1
c0de37e4:	bd80      	pop	{r7, pc}
	...

c0de37e8 <io_legacy_apdu_tx>:
c0de37e8:	b5b0      	push	{r4, r5, r7, lr}
c0de37ea:	460a      	mov	r2, r1
c0de37ec:	4601      	mov	r1, r0
c0de37ee:	4806      	ldr	r0, [pc, #24]	@ (c0de3808 <io_legacy_apdu_tx+0x20>)
c0de37f0:	2300      	movs	r3, #0
c0de37f2:	2500      	movs	r5, #0
c0de37f4:	eb09 0400 	add.w	r4, r9, r0
c0de37f8:	7860      	ldrb	r0, [r4, #1]
c0de37fa:	f004 f8b3 	bl	c0de7964 <os_io_tx_cmd>
c0de37fe:	4903      	ldr	r1, [pc, #12]	@ (c0de380c <io_legacy_apdu_tx+0x24>)
c0de3800:	7065      	strb	r5, [r4, #1]
c0de3802:	4449      	add	r1, r9
c0de3804:	718d      	strb	r5, [r1, #6]
c0de3806:	bdb0      	pop	{r4, r5, r7, pc}
c0de3808:	0000063e 	.word	0x0000063e
c0de380c:	00000636 	.word	0x00000636

c0de3810 <io_legacy_apdu_rx>:
c0de3810:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3812:	4e66      	ldr	r6, [pc, #408]	@ (c0de39ac <io_legacy_apdu_rx+0x19c>)
c0de3814:	2100      	movs	r1, #0
c0de3816:	4605      	mov	r5, r0
c0de3818:	2200      	movs	r2, #0
c0de381a:	2301      	movs	r3, #1
c0de381c:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3820:	f240 1111 	movw	r1, #273	@ 0x111
c0de3824:	eb09 0006 	add.w	r0, r9, r6
c0de3828:	f004 f8a8 	bl	c0de797c <os_io_rx_evt>
c0de382c:	4604      	mov	r4, r0
c0de382e:	2801      	cmp	r0, #1
c0de3830:	f2c0 80ab 	blt.w	c0de398a <io_legacy_apdu_rx+0x17a>
c0de3834:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3838:	f1a0 0110 	sub.w	r1, r0, #16
c0de383c:	2916      	cmp	r1, #22
c0de383e:	d805      	bhi.n	c0de384c <io_legacy_apdu_rx+0x3c>
c0de3840:	2201      	movs	r2, #1
c0de3842:	fa02 f101 	lsl.w	r1, r2, r1
c0de3846:	4a5a      	ldr	r2, [pc, #360]	@ (c0de39b0 <io_legacy_apdu_rx+0x1a0>)
c0de3848:	4211      	tst	r1, r2
c0de384a:	d106      	bne.n	c0de385a <io_legacy_apdu_rx+0x4a>
c0de384c:	1e41      	subs	r1, r0, #1
c0de384e:	2902      	cmp	r1, #2
c0de3850:	d367      	bcc.n	c0de3922 <io_legacy_apdu_rx+0x112>
c0de3852:	2830      	cmp	r0, #48	@ 0x30
c0de3854:	bf18      	it	ne
c0de3856:	2840      	cmpne	r0, #64	@ 0x40
c0de3858:	d177      	bne.n	c0de394a <io_legacy_apdu_rx+0x13a>
c0de385a:	4f56      	ldr	r7, [pc, #344]	@ (c0de39b4 <io_legacy_apdu_rx+0x1a4>)
c0de385c:	eb09 0107 	add.w	r1, r9, r7
c0de3860:	7048      	strb	r0, [r1, #1]
c0de3862:	f004 f829 	bl	c0de78b8 <os_perso_is_pin_set>
c0de3866:	28aa      	cmp	r0, #170	@ 0xaa
c0de3868:	d103      	bne.n	c0de3872 <io_legacy_apdu_rx+0x62>
c0de386a:	f004 f82e 	bl	c0de78ca <os_global_pin_is_validated>
c0de386e:	28aa      	cmp	r0, #170	@ 0xaa
c0de3870:	d145      	bne.n	c0de38fe <io_legacy_apdu_rx+0xee>
c0de3872:	eb09 0006 	add.w	r0, r9, r6
c0de3876:	7840      	ldrb	r0, [r0, #1]
c0de3878:	28b0      	cmp	r0, #176	@ 0xb0
c0de387a:	d12c      	bne.n	c0de38d6 <io_legacy_apdu_rx+0xc6>
c0de387c:	f240 1011 	movw	r0, #273	@ 0x111
c0de3880:	1e61      	subs	r1, r4, #1
c0de3882:	9001      	str	r0, [sp, #4]
c0de3884:	f10d 000b 	add.w	r0, sp, #11
c0de3888:	9000      	str	r0, [sp, #0]
c0de388a:	484b      	ldr	r0, [pc, #300]	@ (c0de39b8 <io_legacy_apdu_rx+0x1a8>)
c0de388c:	ab01      	add	r3, sp, #4
c0de388e:	eb09 0500 	add.w	r5, r9, r0
c0de3892:	eb09 0006 	add.w	r0, r9, r6
c0de3896:	3001      	adds	r0, #1
c0de3898:	462a      	mov	r2, r5
c0de389a:	f7ff ff24 	bl	c0de36e6 <os_io_handle_default_apdu>
c0de389e:	2400      	movs	r4, #0
c0de38a0:	9901      	ldr	r1, [sp, #4]
c0de38a2:	eb09 0607 	add.w	r6, r9, r7
c0de38a6:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de38aa:	bf18      	it	ne
c0de38ac:	4621      	movne	r1, r4
c0de38ae:	0a02      	lsrs	r2, r0, #8
c0de38b0:	2300      	movs	r3, #0
c0de38b2:	546a      	strb	r2, [r5, r1]
c0de38b4:	186a      	adds	r2, r5, r1
c0de38b6:	7050      	strb	r0, [r2, #1]
c0de38b8:	1c88      	adds	r0, r1, #2
c0de38ba:	4629      	mov	r1, r5
c0de38bc:	9001      	str	r0, [sp, #4]
c0de38be:	b282      	uxth	r2, r0
c0de38c0:	7870      	ldrb	r0, [r6, #1]
c0de38c2:	f004 f84f 	bl	c0de7964 <os_io_tx_cmd>
c0de38c6:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de38ca:	7074      	strb	r4, [r6, #1]
c0de38cc:	2901      	cmp	r1, #1
c0de38ce:	d06a      	beq.n	c0de39a6 <io_legacy_apdu_rx+0x196>
c0de38d0:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de38d4:	e059      	b.n	c0de398a <io_legacy_apdu_rx+0x17a>
c0de38d6:	eb09 0007 	add.w	r0, r9, r7
c0de38da:	7840      	ldrb	r0, [r0, #1]
c0de38dc:	2810      	cmp	r0, #16
c0de38de:	d043      	beq.n	c0de3968 <io_legacy_apdu_rx+0x158>
c0de38e0:	2840      	cmp	r0, #64	@ 0x40
c0de38e2:	d043      	beq.n	c0de396c <io_legacy_apdu_rx+0x15c>
c0de38e4:	2821      	cmp	r0, #33	@ 0x21
c0de38e6:	d043      	beq.n	c0de3970 <io_legacy_apdu_rx+0x160>
c0de38e8:	2822      	cmp	r0, #34	@ 0x22
c0de38ea:	d037      	beq.n	c0de395c <io_legacy_apdu_rx+0x14c>
c0de38ec:	2823      	cmp	r0, #35	@ 0x23
c0de38ee:	d037      	beq.n	c0de3960 <io_legacy_apdu_rx+0x150>
c0de38f0:	2830      	cmp	r0, #48	@ 0x30
c0de38f2:	d037      	beq.n	c0de3964 <io_legacy_apdu_rx+0x154>
c0de38f4:	2820      	cmp	r0, #32
c0de38f6:	bf14      	ite	ne
c0de38f8:	2000      	movne	r0, #0
c0de38fa:	2001      	moveq	r0, #1
c0de38fc:	e039      	b.n	c0de3972 <io_legacy_apdu_rx+0x162>
c0de38fe:	482e      	ldr	r0, [pc, #184]	@ (c0de39b8 <io_legacy_apdu_rx+0x1a8>)
c0de3900:	2155      	movs	r1, #85	@ 0x55
c0de3902:	2202      	movs	r2, #2
c0de3904:	2300      	movs	r3, #0
c0de3906:	f809 1000 	strb.w	r1, [r9, r0]
c0de390a:	eb09 0100 	add.w	r1, r9, r0
c0de390e:	2015      	movs	r0, #21
c0de3910:	7048      	strb	r0, [r1, #1]
c0de3912:	eb09 0007 	add.w	r0, r9, r7
c0de3916:	7840      	ldrb	r0, [r0, #1]
c0de3918:	b003      	add	sp, #12
c0de391a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de391e:	f004 b821 	b.w	c0de7964 <os_io_tx_cmd>
c0de3922:	4f27      	ldr	r7, [pc, #156]	@ (c0de39c0 <io_legacy_apdu_rx+0x1b0>)
c0de3924:	444e      	add	r6, r9
c0de3926:	3c01      	subs	r4, #1
c0de3928:	1c71      	adds	r1, r6, #1
c0de392a:	4622      	mov	r2, r4
c0de392c:	eb09 0007 	add.w	r0, r9, r7
c0de3930:	f004 f936 	bl	c0de7ba0 <__aeabi_memcpy>
c0de3934:	7870      	ldrb	r0, [r6, #1]
c0de3936:	281a      	cmp	r0, #26
c0de3938:	d10a      	bne.n	c0de3950 <io_legacy_apdu_rx+0x140>
c0de393a:	eb09 0007 	add.w	r0, r9, r7
c0de393e:	4621      	mov	r1, r4
c0de3940:	b003      	add	sp, #12
c0de3942:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3946:	f7ff bf40 	b.w	c0de37ca <io_process_itc_ux_event>
c0de394a:	2842      	cmp	r0, #66	@ 0x42
c0de394c:	d01d      	beq.n	c0de398a <io_legacy_apdu_rx+0x17a>
c0de394e:	e028      	b.n	c0de39a2 <io_legacy_apdu_rx+0x192>
c0de3950:	b1ed      	cbz	r5, c0de398e <io_legacy_apdu_rx+0x17e>
c0de3952:	2000      	movs	r0, #0
c0de3954:	2400      	movs	r4, #0
c0de3956:	f003 f8fb 	bl	c0de6b50 <io_event>
c0de395a:	e016      	b.n	c0de398a <io_legacy_apdu_rx+0x17a>
c0de395c:	2004      	movs	r0, #4
c0de395e:	e008      	b.n	c0de3972 <io_legacy_apdu_rx+0x162>
c0de3960:	2007      	movs	r0, #7
c0de3962:	e006      	b.n	c0de3972 <io_legacy_apdu_rx+0x162>
c0de3964:	2002      	movs	r0, #2
c0de3966:	e004      	b.n	c0de3972 <io_legacy_apdu_rx+0x162>
c0de3968:	2006      	movs	r0, #6
c0de396a:	e002      	b.n	c0de3972 <io_legacy_apdu_rx+0x162>
c0de396c:	2003      	movs	r0, #3
c0de396e:	e000      	b.n	c0de3972 <io_legacy_apdu_rx+0x162>
c0de3970:	2005      	movs	r0, #5
c0de3972:	4912      	ldr	r1, [pc, #72]	@ (c0de39bc <io_legacy_apdu_rx+0x1ac>)
c0de3974:	3c01      	subs	r4, #1
c0de3976:	4622      	mov	r2, r4
c0de3978:	4449      	add	r1, r9
c0de397a:	7188      	strb	r0, [r1, #6]
c0de397c:	480e      	ldr	r0, [pc, #56]	@ (c0de39b8 <io_legacy_apdu_rx+0x1a8>)
c0de397e:	eb09 0106 	add.w	r1, r9, r6
c0de3982:	3101      	adds	r1, #1
c0de3984:	4448      	add	r0, r9
c0de3986:	f004 f90b 	bl	c0de7ba0 <__aeabi_memcpy>
c0de398a:	4620      	mov	r0, r4
c0de398c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de398e:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3992:	2815      	cmp	r0, #21
c0de3994:	d8dd      	bhi.n	c0de3952 <io_legacy_apdu_rx+0x142>
c0de3996:	2101      	movs	r1, #1
c0de3998:	fa01 f000 	lsl.w	r0, r1, r0
c0de399c:	4909      	ldr	r1, [pc, #36]	@ (c0de39c4 <io_legacy_apdu_rx+0x1b4>)
c0de399e:	4208      	tst	r0, r1
c0de39a0:	d0d7      	beq.n	c0de3952 <io_legacy_apdu_rx+0x142>
c0de39a2:	2400      	movs	r4, #0
c0de39a4:	e7f1      	b.n	c0de398a <io_legacy_apdu_rx+0x17a>
c0de39a6:	20ff      	movs	r0, #255	@ 0xff
c0de39a8:	f003 ffbe 	bl	c0de7928 <os_sched_exit>
c0de39ac:	00000525 	.word	0x00000525
c0de39b0:	007f0001 	.word	0x007f0001
c0de39b4:	0000063e 	.word	0x0000063e
c0de39b8:	00000414 	.word	0x00000414
c0de39bc:	00000636 	.word	0x00000636
c0de39c0:	000007bc 	.word	0x000007bc
c0de39c4:	00205020 	.word	0x00205020

c0de39c8 <io_seproxyhal_init>:
c0de39c8:	b570      	push	{r4, r5, r6, lr}
c0de39ca:	b08a      	sub	sp, #40	@ 0x28
c0de39cc:	4d0b      	ldr	r5, [pc, #44]	@ (c0de39fc <io_seproxyhal_init+0x34>)
c0de39ce:	2600      	movs	r6, #0
c0de39d0:	2118      	movs	r1, #24
c0de39d2:	eb09 0005 	add.w	r0, r9, r5
c0de39d6:	7046      	strb	r6, [r0, #1]
c0de39d8:	ac01      	add	r4, sp, #4
c0de39da:	4620      	mov	r0, r4
c0de39dc:	f004 f8ea 	bl	c0de7bb4 <__aeabi_memclr>
c0de39e0:	2011      	movs	r0, #17
c0de39e2:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de39e6:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de39ea:	4620      	mov	r0, r4
c0de39ec:	f003 ffa6 	bl	c0de793c <os_io_init>
c0de39f0:	2001      	movs	r0, #1
c0de39f2:	f809 0005 	strb.w	r0, [r9, r5]
c0de39f6:	b00a      	add	sp, #40	@ 0x28
c0de39f8:	bd70      	pop	{r4, r5, r6, pc}
c0de39fa:	bf00      	nop
c0de39fc:	0000063e 	.word	0x0000063e

c0de3a00 <nbgl_layoutGet>:
c0de3a00:	b570      	push	{r4, r5, r6, lr}
c0de3a02:	4605      	mov	r5, r0
c0de3a04:	7800      	ldrb	r0, [r0, #0]
c0de3a06:	b148      	cbz	r0, c0de3a1c <nbgl_layoutGet+0x1c>
c0de3a08:	4819      	ldr	r0, [pc, #100]	@ (c0de3a70 <nbgl_layoutGet+0x70>)
c0de3a0a:	eb09 0100 	add.w	r1, r9, r0
c0de3a0e:	7b8a      	ldrb	r2, [r1, #14]
c0de3a10:	b152      	cbz	r2, c0de3a28 <nbgl_layoutGet+0x28>
c0de3a12:	4448      	add	r0, r9
c0de3a14:	7e81      	ldrb	r1, [r0, #26]
c0de3a16:	b151      	cbz	r1, c0de3a2e <nbgl_layoutGet+0x2e>
c0de3a18:	2400      	movs	r4, #0
c0de3a1a:	e026      	b.n	c0de3a6a <nbgl_layoutGet+0x6a>
c0de3a1c:	4814      	ldr	r0, [pc, #80]	@ (c0de3a70 <nbgl_layoutGet+0x70>)
c0de3a1e:	eb09 0400 	add.w	r4, r9, r0
c0de3a22:	2000      	movs	r0, #0
c0de3a24:	70a0      	strb	r0, [r4, #2]
c0de3a26:	e004      	b.n	c0de3a32 <nbgl_layoutGet+0x32>
c0de3a28:	f101 040c 	add.w	r4, r1, #12
c0de3a2c:	e001      	b.n	c0de3a32 <nbgl_layoutGet+0x32>
c0de3a2e:	f100 0418 	add.w	r4, r0, #24
c0de3a32:	2000      	movs	r0, #0
c0de3a34:	4626      	mov	r6, r4
c0de3a36:	60a0      	str	r0, [r4, #8]
c0de3a38:	6020      	str	r0, [r4, #0]
c0de3a3a:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3a3e:	6868      	ldr	r0, [r5, #4]
c0de3a40:	f003 fdac 	bl	c0de759c <pic>
c0de3a44:	60a0      	str	r0, [r4, #8]
c0de3a46:	7828      	ldrb	r0, [r5, #0]
c0de3a48:	f105 0208 	add.w	r2, r5, #8
c0de3a4c:	7020      	strb	r0, [r4, #0]
c0de3a4e:	4b09      	ldr	r3, [pc, #36]	@ (c0de3a74 <nbgl_layoutGet+0x74>)
c0de3a50:	447b      	add	r3, pc
c0de3a52:	b120      	cbz	r0, c0de3a5e <nbgl_layoutGet+0x5e>
c0de3a54:	4630      	mov	r0, r6
c0de3a56:	2107      	movs	r1, #7
c0de3a58:	f003 fba5 	bl	c0de71a6 <nbgl_screenPush>
c0de3a5c:	e004      	b.n	c0de3a68 <nbgl_layoutGet+0x68>
c0de3a5e:	4630      	mov	r0, r6
c0de3a60:	2107      	movs	r1, #7
c0de3a62:	f003 fb9b 	bl	c0de719c <nbgl_screenSet>
c0de3a66:	2000      	movs	r0, #0
c0de3a68:	7060      	strb	r0, [r4, #1]
c0de3a6a:	4620      	mov	r0, r4
c0de3a6c:	bd70      	pop	{r4, r5, r6, pc}
c0de3a6e:	bf00      	nop
c0de3a70:	00000640 	.word	0x00000640
c0de3a74:	00000025 	.word	0x00000025

c0de3a78 <buttonCallback>:
c0de3a78:	b5b0      	push	{r4, r5, r7, lr}
c0de3a7a:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3a7e:	4811      	ldr	r0, [pc, #68]	@ (c0de3ac4 <buttonCallback+0x4c>)
c0de3a80:	2302      	movs	r3, #2
c0de3a82:	1c5c      	adds	r4, r3, #1
c0de3a84:	d01d      	beq.n	c0de3ac2 <buttonCallback+0x4a>
c0de3a86:	b2dc      	uxtb	r4, r3
c0de3a88:	eb09 0500 	add.w	r5, r9, r0
c0de3a8c:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3a90:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3a94:	786d      	ldrb	r5, [r5, #1]
c0de3a96:	42aa      	cmp	r2, r5
c0de3a98:	d105      	bne.n	c0de3aa6 <buttonCallback+0x2e>
c0de3a9a:	eb09 0500 	add.w	r5, r9, r0
c0de3a9e:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3aa2:	78ad      	ldrb	r5, [r5, #2]
c0de3aa4:	b90d      	cbnz	r5, c0de3aaa <buttonCallback+0x32>
c0de3aa6:	3b01      	subs	r3, #1
c0de3aa8:	e7eb      	b.n	c0de3a82 <buttonCallback+0xa>
c0de3aaa:	eb09 0200 	add.w	r2, r9, r0
c0de3aae:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3ab2:	6892      	ldr	r2, [r2, #8]
c0de3ab4:	b12a      	cbz	r2, c0de3ac2 <buttonCallback+0x4a>
c0de3ab6:	4448      	add	r0, r9
c0de3ab8:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3abc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3ac0:	4710      	bx	r2
c0de3ac2:	bdb0      	pop	{r4, r5, r7, pc}
c0de3ac4:	00000640 	.word	0x00000640

c0de3ac8 <nbgl_layoutAddNavigation>:
c0de3ac8:	b570      	push	{r4, r5, r6, lr}
c0de3aca:	2800      	cmp	r0, #0
c0de3acc:	d04d      	beq.n	c0de3b6a <nbgl_layoutAddNavigation+0xa2>
c0de3ace:	460d      	mov	r5, r1
c0de3ad0:	7849      	ldrb	r1, [r1, #1]
c0de3ad2:	4604      	mov	r4, r0
c0de3ad4:	07c8      	lsls	r0, r1, #31
c0de3ad6:	d022      	beq.n	c0de3b1e <nbgl_layoutAddNavigation+0x56>
c0de3ad8:	7861      	ldrb	r1, [r4, #1]
c0de3ada:	2002      	movs	r0, #2
c0de3adc:	f003 fb77 	bl	c0de71ce <nbgl_objPoolGet>
c0de3ae0:	782a      	ldrb	r2, [r5, #0]
c0de3ae2:	7869      	ldrb	r1, [r5, #1]
c0de3ae4:	4b23      	ldr	r3, [pc, #140]	@ (c0de3b74 <nbgl_layoutAddNavigation+0xac>)
c0de3ae6:	4e24      	ldr	r6, [pc, #144]	@ (c0de3b78 <nbgl_layoutAddNavigation+0xb0>)
c0de3ae8:	2a00      	cmp	r2, #0
c0de3aea:	447b      	add	r3, pc
c0de3aec:	447e      	add	r6, pc
c0de3aee:	4602      	mov	r2, r0
c0de3af0:	bf08      	it	eq
c0de3af2:	461e      	moveq	r6, r3
c0de3af4:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3af8:	0e33      	lsrs	r3, r6, #24
c0de3afa:	70d3      	strb	r3, [r2, #3]
c0de3afc:	0c33      	lsrs	r3, r6, #16
c0de3afe:	7093      	strb	r3, [r2, #2]
c0de3b00:	0a32      	lsrs	r2, r6, #8
c0de3b02:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3b06:	6862      	ldr	r2, [r4, #4]
c0de3b08:	78a3      	ldrb	r3, [r4, #2]
c0de3b0a:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3b0e:	2203      	movs	r2, #3
c0de3b10:	77c2      	strb	r2, [r0, #31]
c0de3b12:	2204      	movs	r2, #4
c0de3b14:	7582      	strb	r2, [r0, #22]
c0de3b16:	2200      	movs	r2, #0
c0de3b18:	7242      	strb	r2, [r0, #9]
c0de3b1a:	1c58      	adds	r0, r3, #1
c0de3b1c:	70a0      	strb	r0, [r4, #2]
c0de3b1e:	0788      	lsls	r0, r1, #30
c0de3b20:	f04f 0600 	mov.w	r6, #0
c0de3b24:	d523      	bpl.n	c0de3b6e <nbgl_layoutAddNavigation+0xa6>
c0de3b26:	7861      	ldrb	r1, [r4, #1]
c0de3b28:	2002      	movs	r0, #2
c0de3b2a:	f003 fb50 	bl	c0de71ce <nbgl_objPoolGet>
c0de3b2e:	7829      	ldrb	r1, [r5, #0]
c0de3b30:	4a12      	ldr	r2, [pc, #72]	@ (c0de3b7c <nbgl_layoutAddNavigation+0xb4>)
c0de3b32:	4b13      	ldr	r3, [pc, #76]	@ (c0de3b80 <nbgl_layoutAddNavigation+0xb8>)
c0de3b34:	2900      	cmp	r1, #0
c0de3b36:	447a      	add	r2, pc
c0de3b38:	447b      	add	r3, pc
c0de3b3a:	4601      	mov	r1, r0
c0de3b3c:	bf08      	it	eq
c0de3b3e:	4613      	moveq	r3, r2
c0de3b40:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3b44:	0e1a      	lsrs	r2, r3, #24
c0de3b46:	7246      	strb	r6, [r0, #9]
c0de3b48:	70ca      	strb	r2, [r1, #3]
c0de3b4a:	0c1a      	lsrs	r2, r3, #16
c0de3b4c:	708a      	strb	r2, [r1, #2]
c0de3b4e:	0a19      	lsrs	r1, r3, #8
c0de3b50:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3b54:	6861      	ldr	r1, [r4, #4]
c0de3b56:	78a2      	ldrb	r2, [r4, #2]
c0de3b58:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3b5c:	2103      	movs	r1, #3
c0de3b5e:	77c1      	strb	r1, [r0, #31]
c0de3b60:	2106      	movs	r1, #6
c0de3b62:	7581      	strb	r1, [r0, #22]
c0de3b64:	1c50      	adds	r0, r2, #1
c0de3b66:	70a0      	strb	r0, [r4, #2]
c0de3b68:	e001      	b.n	c0de3b6e <nbgl_layoutAddNavigation+0xa6>
c0de3b6a:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3b6e:	4630      	mov	r0, r6
c0de3b70:	bd70      	pop	{r4, r5, r6, pc}
c0de3b72:	bf00      	nop
c0de3b74:	000042e8 	.word	0x000042e8
c0de3b78:	00004325 	.word	0x00004325
c0de3b7c:	000042cd 	.word	0x000042cd
c0de3b80:	0000428c 	.word	0x0000428c

c0de3b84 <nbgl_layoutAddText>:
c0de3b84:	2800      	cmp	r0, #0
c0de3b86:	f000 8143 	beq.w	c0de3e10 <nbgl_layoutAddText+0x28c>
c0de3b8a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3b8e:	b088      	sub	sp, #32
c0de3b90:	460e      	mov	r6, r1
c0de3b92:	7841      	ldrb	r1, [r0, #1]
c0de3b94:	4605      	mov	r5, r0
c0de3b96:	2001      	movs	r0, #1
c0de3b98:	4617      	mov	r7, r2
c0de3b9a:	461c      	mov	r4, r3
c0de3b9c:	f003 fb17 	bl	c0de71ce <nbgl_objPoolGet>
c0de3ba0:	4680      	mov	r8, r0
c0de3ba2:	2003      	movs	r0, #3
c0de3ba4:	2f00      	cmp	r7, #0
c0de3ba6:	bf08      	it	eq
c0de3ba8:	2001      	moveq	r0, #1
c0de3baa:	7869      	ldrb	r1, [r5, #1]
c0de3bac:	f888 0020 	strb.w	r0, [r8, #32]
c0de3bb0:	f003 fb12 	bl	c0de71d8 <nbgl_containerPoolGet>
c0de3bb4:	4641      	mov	r1, r8
c0de3bb6:	0e02      	lsrs	r2, r0, #24
c0de3bb8:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3bbc:	f04f 0b00 	mov.w	fp, #0
c0de3bc0:	9704      	str	r7, [sp, #16]
c0de3bc2:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3bc6:	f888 a004 	strb.w	sl, [r8, #4]
c0de3bca:	f888 b005 	strb.w	fp, [r8, #5]
c0de3bce:	70ca      	strb	r2, [r1, #3]
c0de3bd0:	0c02      	lsrs	r2, r0, #16
c0de3bd2:	0a00      	lsrs	r0, r0, #8
c0de3bd4:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3bd8:	708a      	strb	r2, [r1, #2]
c0de3bda:	2004      	movs	r0, #4
c0de3bdc:	7869      	ldrb	r1, [r5, #1]
c0de3bde:	f003 faf6 	bl	c0de71ce <nbgl_objPoolGet>
c0de3be2:	4607      	mov	r7, r0
c0de3be4:	2003      	movs	r0, #3
c0de3be6:	77f8      	strb	r0, [r7, #31]
c0de3be8:	4630      	mov	r0, r6
c0de3bea:	f003 fcd7 	bl	c0de759c <pic>
c0de3bee:	4601      	mov	r1, r0
c0de3bf0:	2008      	movs	r0, #8
c0de3bf2:	f887 b005 	strb.w	fp, [r7, #5]
c0de3bf6:	f887 a004 	strb.w	sl, [r7, #4]
c0de3bfa:	9403      	str	r4, [sp, #12]
c0de3bfc:	2c00      	cmp	r4, #0
c0de3bfe:	bf08      	it	eq
c0de3c00:	200a      	moveq	r0, #10
c0de3c02:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3c06:	2205      	movs	r2, #5
c0de3c08:	0e0b      	lsrs	r3, r1, #24
c0de3c0a:	f887 2020 	strb.w	r2, [r7, #32]
c0de3c0e:	463a      	mov	r2, r7
c0de3c10:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3c14:	70d3      	strb	r3, [r2, #3]
c0de3c16:	0c0b      	lsrs	r3, r1, #16
c0de3c18:	7093      	strb	r3, [r2, #2]
c0de3c1a:	0a0a      	lsrs	r2, r1, #8
c0de3c1c:	2301      	movs	r3, #1
c0de3c1e:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3c22:	2272      	movs	r2, #114	@ 0x72
c0de3c24:	f003 faec 	bl	c0de7200 <nbgl_getTextNbLinesInWidth>
c0de3c28:	4606      	mov	r6, r0
c0de3c2a:	2805      	cmp	r0, #5
c0de3c2c:	9505      	str	r5, [sp, #20]
c0de3c2e:	d31d      	bcc.n	c0de3c6c <nbgl_layoutAddText+0xe8>
c0de3c30:	463e      	mov	r6, r7
c0de3c32:	2004      	movs	r0, #4
c0de3c34:	2101      	movs	r1, #1
c0de3c36:	f10d 051e 	add.w	r5, sp, #30
c0de3c3a:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de3c3e:	7872      	ldrb	r2, [r6, #1]
c0de3c40:	78b3      	ldrb	r3, [r6, #2]
c0de3c42:	78f4      	ldrb	r4, [r6, #3]
c0de3c44:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3c48:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3c4c:	9101      	str	r1, [sp, #4]
c0de3c4e:	9500      	str	r5, [sp, #0]
c0de3c50:	9d05      	ldr	r5, [sp, #20]
c0de3c52:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3c56:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3c5a:	2304      	movs	r3, #4
c0de3c5c:	f000 fc78 	bl	c0de4550 <OUTLINED_FUNCTION_4>
c0de3c60:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3c64:	7130      	strb	r0, [r6, #4]
c0de3c66:	0a00      	lsrs	r0, r0, #8
c0de3c68:	7170      	strb	r0, [r6, #5]
c0de3c6a:	2604      	movs	r6, #4
c0de3c6c:	f000 fc78 	bl	c0de4560 <OUTLINED_FUNCTION_6>
c0de3c70:	4683      	mov	fp, r0
c0de3c72:	79c0      	ldrb	r0, [r0, #7]
c0de3c74:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de3c78:	9c04      	ldr	r4, [sp, #16]
c0de3c7a:	fb06 fa00 	mul.w	sl, r6, r0
c0de3c7e:	f041 0101 	orr.w	r1, r1, #1
c0de3c82:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3c86:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de3c8a:	2102      	movs	r1, #2
c0de3c8c:	f887 a006 	strb.w	sl, [r7, #6]
c0de3c90:	71f8      	strb	r0, [r7, #7]
c0de3c92:	4640      	mov	r0, r8
c0de3c94:	75b9      	strb	r1, [r7, #22]
c0de3c96:	2c00      	cmp	r4, #0
c0de3c98:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3c9c:	7842      	ldrb	r2, [r0, #1]
c0de3c9e:	7883      	ldrb	r3, [r0, #2]
c0de3ca0:	78c0      	ldrb	r0, [r0, #3]
c0de3ca2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3ca6:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3caa:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3cae:	6007      	str	r7, [r0, #0]
c0de3cb0:	f000 8110 	beq.w	c0de3ed4 <nbgl_layoutAddText+0x350>
c0de3cb4:	9803      	ldr	r0, [sp, #12]
c0de3cb6:	7869      	ldrb	r1, [r5, #1]
c0de3cb8:	2802      	cmp	r0, #2
c0de3cba:	f040 80ab 	bne.w	c0de3e14 <nbgl_layoutAddText+0x290>
c0de3cbe:	2005      	movs	r0, #5
c0de3cc0:	2505      	movs	r5, #5
c0de3cc2:	f003 fa84 	bl	c0de71ce <nbgl_objPoolGet>
c0de3cc6:	2600      	movs	r6, #0
c0de3cc8:	4607      	mov	r7, r0
c0de3cca:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3cce:	2001      	movs	r0, #1
c0de3cd0:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3cd4:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3cd8:	f000 fc51 	bl	c0de457e <OUTLINED_FUNCTION_9>
c0de3cdc:	4620      	mov	r0, r4
c0de3cde:	f003 fc5d 	bl	c0de759c <pic>
c0de3ce2:	4601      	mov	r1, r0
c0de3ce4:	200e      	movs	r0, #14
c0de3ce6:	71fe      	strb	r6, [r7, #7]
c0de3ce8:	75bd      	strb	r5, [r7, #22]
c0de3cea:	71b8      	strb	r0, [r7, #6]
c0de3cec:	2008      	movs	r0, #8
c0de3cee:	0e0a      	lsrs	r2, r1, #24
c0de3cf0:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3cf4:	4638      	mov	r0, r7
c0de3cf6:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3cfa:	f000 fc20 	bl	c0de453e <OUTLINED_FUNCTION_3>
c0de3cfe:	2865      	cmp	r0, #101	@ 0x65
c0de3d00:	f240 80d8 	bls.w	c0de3eb4 <nbgl_layoutAddText+0x330>
c0de3d04:	46bb      	mov	fp, r7
c0de3d06:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3d0a:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3d0e:	2401      	movs	r4, #1
c0de3d10:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3d14:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3d18:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3d1c:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3d20:	ae06      	add	r6, sp, #24
c0de3d22:	e9cd 6400 	strd	r6, r4, [sp]
c0de3d26:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3d2a:	f10d 031a 	add.w	r3, sp, #26
c0de3d2e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3d32:	2266      	movs	r2, #102	@ 0x66
c0de3d34:	f003 fa5f 	bl	c0de71f6 <nbgl_getTextMaxLenAndWidth>
c0de3d38:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3d3c:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3d40:	300c      	adds	r0, #12
c0de3d42:	7138      	strb	r0, [r7, #4]
c0de3d44:	0a00      	lsrs	r0, r0, #8
c0de3d46:	7178      	strb	r0, [r7, #5]
c0de3d48:	486d      	ldr	r0, [pc, #436]	@ (c0de3f00 <nbgl_layoutAddText+0x37c>)
c0de3d4a:	2e13      	cmp	r6, #19
c0de3d4c:	bf28      	it	cs
c0de3d4e:	2613      	movcs	r6, #19
c0de3d50:	f89b 1000 	ldrb.w	r1, [fp]
c0de3d54:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3d58:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3d5c:	eb09 0400 	add.w	r4, r9, r0
c0de3d60:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3d64:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3d68:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3d6c:	4632      	mov	r2, r6
c0de3d6e:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3d72:	4620      	mov	r0, r4
c0de3d74:	f003 ff14 	bl	c0de7ba0 <__aeabi_memcpy>
c0de3d78:	2500      	movs	r5, #0
c0de3d7a:	4620      	mov	r0, r4
c0de3d7c:	55a5      	strb	r5, [r4, r6]
c0de3d7e:	f003 fc0d 	bl	c0de759c <pic>
c0de3d82:	2101      	movs	r1, #1
c0de3d84:	f88b 0000 	strb.w	r0, [fp]
c0de3d88:	76bd      	strb	r5, [r7, #26]
c0de3d8a:	9d05      	ldr	r5, [sp, #20]
c0de3d8c:	7679      	strb	r1, [r7, #25]
c0de3d8e:	0e01      	lsrs	r1, r0, #24
c0de3d90:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3d94:	0c01      	lsrs	r1, r0, #16
c0de3d96:	0a00      	lsrs	r0, r0, #8
c0de3d98:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3d9c:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3da0:	4640      	mov	r0, r8
c0de3da2:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3da6:	7842      	ldrb	r2, [r0, #1]
c0de3da8:	7883      	ldrb	r3, [r0, #2]
c0de3daa:	78c0      	ldrb	r0, [r0, #3]
c0de3dac:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3db0:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3db4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3db8:	6047      	str	r7, [r0, #4]
c0de3dba:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3dbe:	2800      	cmp	r0, #0
c0de3dc0:	f000 8086 	beq.w	c0de3ed0 <nbgl_layoutAddText+0x34c>
c0de3dc4:	7869      	ldrb	r1, [r5, #1]
c0de3dc6:	2005      	movs	r0, #5
c0de3dc8:	2605      	movs	r6, #5
c0de3dca:	f003 fa00 	bl	c0de71ce <nbgl_objPoolGet>
c0de3dce:	2500      	movs	r5, #0
c0de3dd0:	4607      	mov	r7, r0
c0de3dd2:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3dd6:	2001      	movs	r0, #1
c0de3dd8:	f000 fbd1 	bl	c0de457e <OUTLINED_FUNCTION_9>
c0de3ddc:	9804      	ldr	r0, [sp, #16]
c0de3dde:	f003 fbdd 	bl	c0de759c <pic>
c0de3de2:	210e      	movs	r1, #14
c0de3de4:	71fd      	strb	r5, [r7, #7]
c0de3de6:	71b9      	strb	r1, [r7, #6]
c0de3de8:	2108      	movs	r1, #8
c0de3dea:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3dee:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de3df2:	4401      	add	r1, r0
c0de3df4:	4638      	mov	r0, r7
c0de3df6:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3dfa:	0e0a      	lsrs	r2, r1, #24
c0de3dfc:	f000 fb9f 	bl	c0de453e <OUTLINED_FUNCTION_3>
c0de3e00:	300c      	adds	r0, #12
c0de3e02:	210f      	movs	r1, #15
c0de3e04:	75be      	strb	r6, [r7, #22]
c0de3e06:	7138      	strb	r0, [r7, #4]
c0de3e08:	0a00      	lsrs	r0, r0, #8
c0de3e0a:	7178      	strb	r0, [r7, #5]
c0de3e0c:	2002      	movs	r0, #2
c0de3e0e:	e057      	b.n	c0de3ec0 <nbgl_layoutAddText+0x33c>
c0de3e10:	f000 bbb2 	b.w	c0de4578 <OUTLINED_FUNCTION_8>
c0de3e14:	f000 fba1 	bl	c0de455a <OUTLINED_FUNCTION_5>
c0de3e18:	2603      	movs	r6, #3
c0de3e1a:	4607      	mov	r7, r0
c0de3e1c:	77c6      	strb	r6, [r0, #31]
c0de3e1e:	4620      	mov	r0, r4
c0de3e20:	f003 fbbc 	bl	c0de759c <pic>
c0de3e24:	4601      	mov	r1, r0
c0de3e26:	2072      	movs	r0, #114	@ 0x72
c0de3e28:	2400      	movs	r4, #0
c0de3e2a:	2301      	movs	r3, #1
c0de3e2c:	7138      	strb	r0, [r7, #4]
c0de3e2e:	200a      	movs	r0, #10
c0de3e30:	0e0a      	lsrs	r2, r1, #24
c0de3e32:	717c      	strb	r4, [r7, #5]
c0de3e34:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e38:	f000 fb61 	bl	c0de44fe <OUTLINED_FUNCTION_0>
c0de3e3c:	2804      	cmp	r0, #4
c0de3e3e:	d31e      	bcc.n	c0de3e7e <nbgl_layoutAddText+0x2fa>
c0de3e40:	463d      	mov	r5, r7
c0de3e42:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3e46:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3e4a:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3e4e:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3e52:	78ab      	ldrb	r3, [r5, #2]
c0de3e54:	78e9      	ldrb	r1, [r5, #3]
c0de3e56:	aa07      	add	r2, sp, #28
c0de3e58:	9200      	str	r2, [sp, #0]
c0de3e5a:	2201      	movs	r2, #1
c0de3e5c:	9201      	str	r2, [sp, #4]
c0de3e5e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3e62:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3e66:	2303      	movs	r3, #3
c0de3e68:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3e6c:	2272      	movs	r2, #114	@ 0x72
c0de3e6e:	f003 f9d6 	bl	c0de721e <nbgl_getTextMaxLenInNbLines>
c0de3e72:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3e76:	7128      	strb	r0, [r5, #4]
c0de3e78:	0a00      	lsrs	r0, r0, #8
c0de3e7a:	7168      	strb	r0, [r5, #5]
c0de3e7c:	2003      	movs	r0, #3
c0de3e7e:	9903      	ldr	r1, [sp, #12]
c0de3e80:	2900      	cmp	r1, #0
c0de3e82:	bf08      	it	eq
c0de3e84:	4606      	moveq	r6, r0
c0de3e86:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3e8a:	76bc      	strb	r4, [r7, #26]
c0de3e8c:	75bc      	strb	r4, [r7, #22]
c0de3e8e:	fb06 f100 	mul.w	r1, r6, r0
c0de3e92:	fb06 a000 	mla	r0, r6, r0, sl
c0de3e96:	71b9      	strb	r1, [r7, #6]
c0de3e98:	0a09      	lsrs	r1, r1, #8
c0de3e9a:	71f9      	strb	r1, [r7, #7]
c0de3e9c:	2102      	movs	r1, #2
c0de3e9e:	f100 0a02 	add.w	sl, r0, #2
c0de3ea2:	7679      	strb	r1, [r7, #25]
c0de3ea4:	2105      	movs	r1, #5
c0de3ea6:	f887 1020 	strb.w	r1, [r7, #32]
c0de3eaa:	4641      	mov	r1, r8
c0de3eac:	f000 fb3a 	bl	c0de4524 <OUTLINED_FUNCTION_2>
c0de3eb0:	604f      	str	r7, [r1, #4]
c0de3eb2:	e00f      	b.n	c0de3ed4 <nbgl_layoutAddText+0x350>
c0de3eb4:	300c      	adds	r0, #12
c0de3eb6:	2108      	movs	r1, #8
c0de3eb8:	7138      	strb	r0, [r7, #4]
c0de3eba:	0a00      	lsrs	r0, r0, #8
c0de3ebc:	7178      	strb	r0, [r7, #5]
c0de3ebe:	2001      	movs	r0, #1
c0de3ec0:	2200      	movs	r2, #0
c0de3ec2:	7679      	strb	r1, [r7, #25]
c0de3ec4:	4641      	mov	r1, r8
c0de3ec6:	76ba      	strb	r2, [r7, #26]
c0de3ec8:	f000 fb2c 	bl	c0de4524 <OUTLINED_FUNCTION_2>
c0de3ecc:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3ed0:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3ed4:	6868      	ldr	r0, [r5, #4]
c0de3ed6:	78a9      	ldrb	r1, [r5, #2]
c0de3ed8:	2205      	movs	r2, #5
c0de3eda:	f888 2016 	strb.w	r2, [r8, #22]
c0de3ede:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3ee2:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3ee6:	2000      	movs	r0, #0
c0de3ee8:	3101      	adds	r1, #1
c0de3eea:	f888 a006 	strb.w	sl, [r8, #6]
c0de3eee:	f888 2007 	strb.w	r2, [r8, #7]
c0de3ef2:	f888 001f 	strb.w	r0, [r8, #31]
c0de3ef6:	70a9      	strb	r1, [r5, #2]
c0de3ef8:	b008      	add	sp, #32
c0de3efa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3efe:	bf00      	nop
c0de3f00:	00000664 	.word	0x00000664

c0de3f04 <nbgl_layoutAddMenuList>:
c0de3f04:	2800      	cmp	r0, #0
c0de3f06:	d04f      	beq.n	c0de3fa8 <nbgl_layoutAddMenuList+0xa4>
c0de3f08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f0c:	460c      	mov	r4, r1
c0de3f0e:	4605      	mov	r5, r0
c0de3f10:	2700      	movs	r7, #0
c0de3f12:	f04f 0b05 	mov.w	fp, #5
c0de3f16:	f04f 0803 	mov.w	r8, #3
c0de3f1a:	f04f 0a00 	mov.w	sl, #0
c0de3f1e:	7920      	ldrb	r0, [r4, #4]
c0de3f20:	4582      	cmp	sl, r0
c0de3f22:	d23e      	bcs.n	c0de3fa2 <nbgl_layoutAddMenuList+0x9e>
c0de3f24:	7960      	ldrb	r0, [r4, #5]
c0de3f26:	2803      	cmp	r0, #3
c0de3f28:	d302      	bcc.n	c0de3f30 <nbgl_layoutAddMenuList+0x2c>
c0de3f2a:	1e81      	subs	r1, r0, #2
c0de3f2c:	4551      	cmp	r1, sl
c0de3f2e:	dc35      	bgt.n	c0de3f9c <nbgl_layoutAddMenuList+0x98>
c0de3f30:	3002      	adds	r0, #2
c0de3f32:	4550      	cmp	r0, sl
c0de3f34:	d332      	bcc.n	c0de3f9c <nbgl_layoutAddMenuList+0x98>
c0de3f36:	7869      	ldrb	r1, [r5, #1]
c0de3f38:	f000 fb0f 	bl	c0de455a <OUTLINED_FUNCTION_5>
c0de3f3c:	6821      	ldr	r1, [r4, #0]
c0de3f3e:	4606      	mov	r6, r0
c0de3f40:	fa5f f08a 	uxtb.w	r0, sl
c0de3f44:	4788      	blx	r1
c0de3f46:	7961      	ldrb	r1, [r4, #5]
c0de3f48:	220a      	movs	r2, #10
c0de3f4a:	458a      	cmp	sl, r1
c0de3f4c:	bf08      	it	eq
c0de3f4e:	2208      	moveq	r2, #8
c0de3f50:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3f54:	71f7      	strb	r7, [r6, #7]
c0de3f56:	7177      	strb	r7, [r6, #5]
c0de3f58:	f886 b020 	strb.w	fp, [r6, #32]
c0de3f5c:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3f60:	f886 b016 	strb.w	fp, [r6, #22]
c0de3f64:	f886 801f 	strb.w	r8, [r6, #31]
c0de3f68:	4632      	mov	r2, r6
c0de3f6a:	0e03      	lsrs	r3, r0, #24
c0de3f6c:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3f70:	70d3      	strb	r3, [r2, #3]
c0de3f72:	0c03      	lsrs	r3, r0, #16
c0de3f74:	0a00      	lsrs	r0, r0, #8
c0de3f76:	7093      	strb	r3, [r2, #2]
c0de3f78:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3f7c:	6868      	ldr	r0, [r5, #4]
c0de3f7e:	78aa      	ldrb	r2, [r5, #2]
c0de3f80:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3f84:	200c      	movs	r0, #12
c0de3f86:	71b0      	strb	r0, [r6, #6]
c0de3f88:	2072      	movs	r0, #114	@ 0x72
c0de3f8a:	7130      	strb	r0, [r6, #4]
c0de3f8c:	ebaa 0001 	sub.w	r0, sl, r1
c0de3f90:	0901      	lsrs	r1, r0, #4
c0de3f92:	0100      	lsls	r0, r0, #4
c0de3f94:	7670      	strb	r0, [r6, #25]
c0de3f96:	1c50      	adds	r0, r2, #1
c0de3f98:	76b1      	strb	r1, [r6, #26]
c0de3f9a:	70a8      	strb	r0, [r5, #2]
c0de3f9c:	f10a 0a01 	add.w	sl, sl, #1
c0de3fa0:	e7bd      	b.n	c0de3f1e <nbgl_layoutAddMenuList+0x1a>
c0de3fa2:	2000      	movs	r0, #0
c0de3fa4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3fa8:	f000 bae6 	b.w	c0de4578 <OUTLINED_FUNCTION_8>

c0de3fac <nbgl_layoutAddCenteredInfo>:
c0de3fac:	2800      	cmp	r0, #0
c0de3fae:	f000 80dc 	beq.w	c0de416a <nbgl_layoutAddCenteredInfo+0x1be>
c0de3fb2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3fb6:	b086      	sub	sp, #24
c0de3fb8:	460d      	mov	r5, r1
c0de3fba:	7841      	ldrb	r1, [r0, #1]
c0de3fbc:	4682      	mov	sl, r0
c0de3fbe:	2001      	movs	r0, #1
c0de3fc0:	f003 f905 	bl	c0de71ce <nbgl_objPoolGet>
c0de3fc4:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3fc8:	4680      	mov	r8, r0
c0de3fca:	2003      	movs	r0, #3
c0de3fcc:	2703      	movs	r7, #3
c0de3fce:	f003 f903 	bl	c0de71d8 <nbgl_containerPoolGet>
c0de3fd2:	4641      	mov	r1, r8
c0de3fd4:	0e02      	lsrs	r2, r0, #24
c0de3fd6:	f04f 0b00 	mov.w	fp, #0
c0de3fda:	9504      	str	r5, [sp, #16]
c0de3fdc:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3fe0:	f888 b020 	strb.w	fp, [r8, #32]
c0de3fe4:	70ca      	strb	r2, [r1, #3]
c0de3fe6:	0c02      	lsrs	r2, r0, #16
c0de3fe8:	0a00      	lsrs	r0, r0, #8
c0de3fea:	708a      	strb	r2, [r1, #2]
c0de3fec:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3ff0:	68a8      	ldr	r0, [r5, #8]
c0de3ff2:	b3c0      	cbz	r0, c0de4066 <nbgl_layoutAddCenteredInfo+0xba>
c0de3ff4:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3ff8:	2002      	movs	r0, #2
c0de3ffa:	f003 f8e8 	bl	c0de71ce <nbgl_objPoolGet>
c0de3ffe:	4606      	mov	r6, r0
c0de4000:	77c7      	strb	r7, [r0, #31]
c0de4002:	68a8      	ldr	r0, [r5, #8]
c0de4004:	f003 faca 	bl	c0de759c <pic>
c0de4008:	4631      	mov	r1, r6
c0de400a:	0e02      	lsrs	r2, r0, #24
c0de400c:	f886 b013 	strb.w	fp, [r6, #19]
c0de4010:	f886 b009 	strb.w	fp, [r6, #9]
c0de4014:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4018:	70ca      	strb	r2, [r1, #3]
c0de401a:	0c02      	lsrs	r2, r0, #16
c0de401c:	708a      	strb	r2, [r1, #2]
c0de401e:	0a01      	lsrs	r1, r0, #8
c0de4020:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4024:	4631      	mov	r1, r6
c0de4026:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de402a:	f881 b003 	strb.w	fp, [r1, #3]
c0de402e:	f881 b002 	strb.w	fp, [r1, #2]
c0de4032:	4641      	mov	r1, r8
c0de4034:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4038:	784f      	ldrb	r7, [r1, #1]
c0de403a:	788c      	ldrb	r4, [r1, #2]
c0de403c:	78cd      	ldrb	r5, [r1, #3]
c0de403e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4042:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4046:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de404a:	9d04      	ldr	r5, [sp, #16]
c0de404c:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4050:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4054:	2202      	movs	r2, #2
c0de4056:	75b2      	strb	r2, [r6, #22]
c0de4058:	1c5a      	adds	r2, r3, #1
c0de405a:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de405e:	7881      	ldrb	r1, [r0, #2]
c0de4060:	78c0      	ldrb	r0, [r0, #3]
c0de4062:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de4066:	6828      	ldr	r0, [r5, #0]
c0de4068:	2800      	cmp	r0, #0
c0de406a:	f000 80a5 	beq.w	c0de41b8 <nbgl_layoutAddCenteredInfo+0x20c>
c0de406e:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4072:	f000 fa72 	bl	c0de455a <OUTLINED_FUNCTION_5>
c0de4076:	4607      	mov	r7, r0
c0de4078:	2003      	movs	r0, #3
c0de407a:	77f8      	strb	r0, [r7, #31]
c0de407c:	6828      	ldr	r0, [r5, #0]
c0de407e:	f003 fa8d 	bl	c0de759c <pic>
c0de4082:	4601      	mov	r1, r0
c0de4084:	2072      	movs	r0, #114	@ 0x72
c0de4086:	2400      	movs	r4, #0
c0de4088:	7138      	strb	r0, [r7, #4]
c0de408a:	2005      	movs	r0, #5
c0de408c:	0e0a      	lsrs	r2, r1, #24
c0de408e:	717c      	strb	r4, [r7, #5]
c0de4090:	f887 0020 	strb.w	r0, [r7, #32]
c0de4094:	4638      	mov	r0, r7
c0de4096:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de409a:	70c2      	strb	r2, [r0, #3]
c0de409c:	0c0a      	lsrs	r2, r1, #16
c0de409e:	7082      	strb	r2, [r0, #2]
c0de40a0:	0a08      	lsrs	r0, r1, #8
c0de40a2:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de40a6:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de40aa:	7b6a      	ldrb	r2, [r5, #13]
c0de40ac:	f040 0001 	orr.w	r0, r0, #1
c0de40b0:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de40b4:	2008      	movs	r0, #8
c0de40b6:	2a00      	cmp	r2, #0
c0de40b8:	bf08      	it	eq
c0de40ba:	200a      	moveq	r0, #10
c0de40bc:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de40c0:	2272      	movs	r2, #114	@ 0x72
c0de40c2:	2301      	movs	r3, #1
c0de40c4:	f003 f89c 	bl	c0de7200 <nbgl_getTextNbLinesInWidth>
c0de40c8:	4606      	mov	r6, r0
c0de40ca:	2805      	cmp	r0, #5
c0de40cc:	d31e      	bcc.n	c0de410c <nbgl_layoutAddCenteredInfo+0x160>
c0de40ce:	463d      	mov	r5, r7
c0de40d0:	2004      	movs	r0, #4
c0de40d2:	2101      	movs	r1, #1
c0de40d4:	f10d 0416 	add.w	r4, sp, #22
c0de40d8:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de40dc:	786a      	ldrb	r2, [r5, #1]
c0de40de:	78ab      	ldrb	r3, [r5, #2]
c0de40e0:	78ee      	ldrb	r6, [r5, #3]
c0de40e2:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de40e6:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de40ea:	9101      	str	r1, [sp, #4]
c0de40ec:	9400      	str	r4, [sp, #0]
c0de40ee:	2400      	movs	r4, #0
c0de40f0:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de40f4:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de40f8:	2304      	movs	r3, #4
c0de40fa:	f000 fa29 	bl	c0de4550 <OUTLINED_FUNCTION_4>
c0de40fe:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de4102:	2604      	movs	r6, #4
c0de4104:	7128      	strb	r0, [r5, #4]
c0de4106:	0a00      	lsrs	r0, r0, #8
c0de4108:	7168      	strb	r0, [r5, #5]
c0de410a:	9d04      	ldr	r5, [sp, #16]
c0de410c:	f000 fa28 	bl	c0de4560 <OUTLINED_FUNCTION_6>
c0de4110:	79c0      	ldrb	r0, [r0, #7]
c0de4112:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4116:	4370      	muls	r0, r6
c0de4118:	0a01      	lsrs	r1, r0, #8
c0de411a:	71b8      	strb	r0, [r7, #6]
c0de411c:	71f9      	strb	r1, [r7, #7]
c0de411e:	68a9      	ldr	r1, [r5, #8]
c0de4120:	b329      	cbz	r1, c0de416e <nbgl_layoutAddCenteredInfo+0x1c2>
c0de4122:	4641      	mov	r1, r8
c0de4124:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4128:	784c      	ldrb	r4, [r1, #1]
c0de412a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de412e:	788d      	ldrb	r5, [r1, #2]
c0de4130:	78c9      	ldrb	r1, [r1, #3]
c0de4132:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4136:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de413a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de413e:	463a      	mov	r2, r7
c0de4140:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de4144:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de4148:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de414c:	0e0b      	lsrs	r3, r1, #24
c0de414e:	70d3      	strb	r3, [r2, #3]
c0de4150:	0c0b      	lsrs	r3, r1, #16
c0de4152:	0a09      	lsrs	r1, r1, #8
c0de4154:	7051      	strb	r1, [r2, #1]
c0de4156:	2100      	movs	r1, #0
c0de4158:	7093      	strb	r3, [r2, #2]
c0de415a:	7211      	strb	r1, [r2, #8]
c0de415c:	2e03      	cmp	r6, #3
c0de415e:	bf38      	it	cc
c0de4160:	2101      	movcc	r1, #1
c0de4162:	0089      	lsls	r1, r1, #2
c0de4164:	71d1      	strb	r1, [r2, #7]
c0de4166:	2108      	movs	r1, #8
c0de4168:	e00a      	b.n	c0de4180 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de416a:	f000 ba05 	b.w	c0de4578 <OUTLINED_FUNCTION_8>
c0de416e:	6869      	ldr	r1, [r5, #4]
c0de4170:	b119      	cbz	r1, c0de417a <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4172:	f000 f9f9 	bl	c0de4568 <OUTLINED_FUNCTION_7>
c0de4176:	2102      	movs	r1, #2
c0de4178:	e002      	b.n	c0de4180 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de417a:	f000 f9f5 	bl	c0de4568 <OUTLINED_FUNCTION_7>
c0de417e:	2105      	movs	r1, #5
c0de4180:	7111      	strb	r1, [r2, #4]
c0de4182:	4641      	mov	r1, r8
c0de4184:	4458      	add	r0, fp
c0de4186:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de418a:	784c      	ldrb	r4, [r1, #1]
c0de418c:	788d      	ldrb	r5, [r1, #2]
c0de418e:	78ce      	ldrb	r6, [r1, #3]
c0de4190:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4194:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4198:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de419c:	9d04      	ldr	r5, [sp, #16]
c0de419e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de41a2:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de41a6:	1c5a      	adds	r2, r3, #1
c0de41a8:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de41ac:	7e79      	ldrb	r1, [r7, #25]
c0de41ae:	7eba      	ldrb	r2, [r7, #26]
c0de41b0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de41b4:	eb00 0b01 	add.w	fp, r0, r1
c0de41b8:	6868      	ldr	r0, [r5, #4]
c0de41ba:	2800      	cmp	r0, #0
c0de41bc:	d071      	beq.n	c0de42a2 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de41be:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de41c2:	2004      	movs	r0, #4
c0de41c4:	f8cd a00c 	str.w	sl, [sp, #12]
c0de41c8:	f003 f801 	bl	c0de71ce <nbgl_objPoolGet>
c0de41cc:	2403      	movs	r4, #3
c0de41ce:	4607      	mov	r7, r0
c0de41d0:	77c4      	strb	r4, [r0, #31]
c0de41d2:	6868      	ldr	r0, [r5, #4]
c0de41d4:	f003 f9e2 	bl	c0de759c <pic>
c0de41d8:	4601      	mov	r1, r0
c0de41da:	2000      	movs	r0, #0
c0de41dc:	2301      	movs	r3, #1
c0de41de:	7178      	strb	r0, [r7, #5]
c0de41e0:	2072      	movs	r0, #114	@ 0x72
c0de41e2:	0e0a      	lsrs	r2, r1, #24
c0de41e4:	7138      	strb	r0, [r7, #4]
c0de41e6:	200a      	movs	r0, #10
c0de41e8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de41ec:	2005      	movs	r0, #5
c0de41ee:	f887 0020 	strb.w	r0, [r7, #32]
c0de41f2:	f000 f984 	bl	c0de44fe <OUTLINED_FUNCTION_0>
c0de41f6:	4682      	mov	sl, r0
c0de41f8:	2804      	cmp	r0, #4
c0de41fa:	d31c      	bcc.n	c0de4236 <nbgl_layoutAddCenteredInfo+0x28a>
c0de41fc:	463d      	mov	r5, r7
c0de41fe:	f04f 0c01 	mov.w	ip, #1
c0de4202:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de4206:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de420a:	786a      	ldrb	r2, [r5, #1]
c0de420c:	78ab      	ldrb	r3, [r5, #2]
c0de420e:	78ec      	ldrb	r4, [r5, #3]
c0de4210:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4214:	ae05      	add	r6, sp, #20
c0de4216:	e9cd 6c00 	strd	r6, ip, [sp]
c0de421a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de421e:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de4222:	2303      	movs	r3, #3
c0de4224:	f000 f994 	bl	c0de4550 <OUTLINED_FUNCTION_4>
c0de4228:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de422c:	f04f 0a03 	mov.w	sl, #3
c0de4230:	7128      	strb	r0, [r5, #4]
c0de4232:	0a00      	lsrs	r0, r0, #8
c0de4234:	7168      	strb	r0, [r5, #5]
c0de4236:	f000 f993 	bl	c0de4560 <OUTLINED_FUNCTION_6>
c0de423a:	4641      	mov	r1, r8
c0de423c:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4240:	784c      	ldrb	r4, [r1, #1]
c0de4242:	788d      	ldrb	r5, [r1, #2]
c0de4244:	78ce      	ldrb	r6, [r1, #3]
c0de4246:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de424a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de424e:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4252:	463d      	mov	r5, r7
c0de4254:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4258:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de425c:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4260:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4264:	0e26      	lsrs	r6, r4, #24
c0de4266:	70ee      	strb	r6, [r5, #3]
c0de4268:	0c26      	lsrs	r6, r4, #16
c0de426a:	0a24      	lsrs	r4, r4, #8
c0de426c:	74fc      	strb	r4, [r7, #19]
c0de426e:	70ae      	strb	r6, [r5, #2]
c0de4270:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4274:	2302      	movs	r3, #2
c0de4276:	2400      	movs	r4, #0
c0de4278:	3201      	adds	r2, #1
c0de427a:	767b      	strb	r3, [r7, #25]
c0de427c:	2308      	movs	r3, #8
c0de427e:	76bc      	strb	r4, [r7, #26]
c0de4280:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4284:	79c0      	ldrb	r0, [r0, #7]
c0de4286:	75bb      	strb	r3, [r7, #22]
c0de4288:	fb0a f300 	mul.w	r3, sl, r0
c0de428c:	fb0a b000 	mla	r0, sl, r0, fp
c0de4290:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de4294:	71bb      	strb	r3, [r7, #6]
c0de4296:	0a1b      	lsrs	r3, r3, #8
c0de4298:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de429c:	f100 0b02 	add.w	fp, r0, #2
c0de42a0:	71fb      	strb	r3, [r7, #7]
c0de42a2:	7b28      	ldrb	r0, [r5, #12]
c0de42a4:	2102      	movs	r1, #2
c0de42a6:	2800      	cmp	r0, #0
c0de42a8:	bf08      	it	eq
c0de42aa:	2105      	moveq	r1, #5
c0de42ac:	f888 1016 	strb.w	r1, [r8, #22]
c0de42b0:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de42b4:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de42b8:	2272      	movs	r2, #114	@ 0x72
c0de42ba:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de42be:	2000      	movs	r0, #0
c0de42c0:	f888 2004 	strb.w	r2, [r8, #4]
c0de42c4:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de42c8:	3101      	adds	r1, #1
c0de42ca:	f888 b006 	strb.w	fp, [r8, #6]
c0de42ce:	f888 0019 	strb.w	r0, [r8, #25]
c0de42d2:	f888 001a 	strb.w	r0, [r8, #26]
c0de42d6:	f888 0005 	strb.w	r0, [r8, #5]
c0de42da:	f888 001f 	strb.w	r0, [r8, #31]
c0de42de:	f888 2007 	strb.w	r2, [r8, #7]
c0de42e2:	f88a 1002 	strb.w	r1, [sl, #2]
c0de42e6:	b006      	add	sp, #24
c0de42e8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de42ec <nbgl_layoutAddSwitch>:
c0de42ec:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de42f0:	2800      	cmp	r0, #0
c0de42f2:	f000 8084 	beq.w	c0de43fe <nbgl_layoutAddSwitch+0x112>
c0de42f6:	460d      	mov	r5, r1
c0de42f8:	7841      	ldrb	r1, [r0, #1]
c0de42fa:	4604      	mov	r4, r0
c0de42fc:	f000 f92d 	bl	c0de455a <OUTLINED_FUNCTION_5>
c0de4300:	f04f 0803 	mov.w	r8, #3
c0de4304:	4606      	mov	r6, r0
c0de4306:	f880 801f 	strb.w	r8, [r0, #31]
c0de430a:	6828      	ldr	r0, [r5, #0]
c0de430c:	f003 f946 	bl	c0de759c <pic>
c0de4310:	4601      	mov	r1, r0
c0de4312:	2072      	movs	r0, #114	@ 0x72
c0de4314:	2700      	movs	r7, #0
c0de4316:	2301      	movs	r3, #1
c0de4318:	7130      	strb	r0, [r6, #4]
c0de431a:	2008      	movs	r0, #8
c0de431c:	0e0a      	lsrs	r2, r1, #24
c0de431e:	7177      	strb	r7, [r6, #5]
c0de4320:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4324:	2005      	movs	r0, #5
c0de4326:	f886 0020 	strb.w	r0, [r6, #32]
c0de432a:	4630      	mov	r0, r6
c0de432c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4330:	70c2      	strb	r2, [r0, #3]
c0de4332:	0c0a      	lsrs	r2, r1, #16
c0de4334:	7082      	strb	r2, [r0, #2]
c0de4336:	0a08      	lsrs	r0, r1, #8
c0de4338:	2272      	movs	r2, #114	@ 0x72
c0de433a:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de433e:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de4342:	f040 0001 	orr.w	r0, r0, #1
c0de4346:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de434a:	2008      	movs	r0, #8
c0de434c:	f002 ff58 	bl	c0de7200 <nbgl_getTextNbLinesInWidth>
c0de4350:	2801      	cmp	r0, #1
c0de4352:	d854      	bhi.n	c0de43fe <nbgl_layoutAddSwitch+0x112>
c0de4354:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4358:	f002 ff48 	bl	c0de71ec <nbgl_getFontLineHeight>
c0de435c:	6861      	ldr	r1, [r4, #4]
c0de435e:	78a2      	ldrb	r2, [r4, #2]
c0de4360:	76b7      	strb	r7, [r6, #26]
c0de4362:	71f7      	strb	r7, [r6, #7]
c0de4364:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4368:	71b0      	strb	r0, [r6, #6]
c0de436a:	2002      	movs	r0, #2
c0de436c:	f886 8019 	strb.w	r8, [r6, #25]
c0de4370:	75b0      	strb	r0, [r6, #22]
c0de4372:	1c50      	adds	r0, r2, #1
c0de4374:	70a0      	strb	r0, [r4, #2]
c0de4376:	6868      	ldr	r0, [r5, #4]
c0de4378:	2800      	cmp	r0, #0
c0de437a:	d04e      	beq.n	c0de441a <nbgl_layoutAddSwitch+0x12e>
c0de437c:	7861      	ldrb	r1, [r4, #1]
c0de437e:	f000 f8ec 	bl	c0de455a <OUTLINED_FUNCTION_5>
c0de4382:	4606      	mov	r6, r0
c0de4384:	2003      	movs	r0, #3
c0de4386:	77f0      	strb	r0, [r6, #31]
c0de4388:	6868      	ldr	r0, [r5, #4]
c0de438a:	f003 f907 	bl	c0de759c <pic>
c0de438e:	2172      	movs	r1, #114	@ 0x72
c0de4390:	4637      	mov	r7, r6
c0de4392:	f04f 0800 	mov.w	r8, #0
c0de4396:	f04f 0a05 	mov.w	sl, #5
c0de439a:	7131      	strb	r1, [r6, #4]
c0de439c:	210a      	movs	r1, #10
c0de439e:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de43a2:	f886 8005 	strb.w	r8, [r6, #5]
c0de43a6:	f886 a020 	strb.w	sl, [r6, #32]
c0de43aa:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de43ae:	0e01      	lsrs	r1, r0, #24
c0de43b0:	70f9      	strb	r1, [r7, #3]
c0de43b2:	0c01      	lsrs	r1, r0, #16
c0de43b4:	0a00      	lsrs	r0, r0, #8
c0de43b6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de43ba:	200a      	movs	r0, #10
c0de43bc:	70b9      	strb	r1, [r7, #2]
c0de43be:	f002 ff15 	bl	c0de71ec <nbgl_getFontLineHeight>
c0de43c2:	09c1      	lsrs	r1, r0, #7
c0de43c4:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de43c8:	78bb      	ldrb	r3, [r7, #2]
c0de43ca:	0040      	lsls	r0, r0, #1
c0de43cc:	71f1      	strb	r1, [r6, #7]
c0de43ce:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de43d2:	71b0      	strb	r0, [r6, #6]
c0de43d4:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de43d8:	f041 0101 	orr.w	r1, r1, #1
c0de43dc:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de43e0:	7839      	ldrb	r1, [r7, #0]
c0de43e2:	78ff      	ldrb	r7, [r7, #3]
c0de43e4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de43e8:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de43ec:	2301      	movs	r3, #1
c0de43ee:	2701      	movs	r7, #1
c0de43f0:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de43f4:	2272      	movs	r2, #114	@ 0x72
c0de43f6:	f002 ff03 	bl	c0de7200 <nbgl_getTextNbLinesInWidth>
c0de43fa:	2802      	cmp	r0, #2
c0de43fc:	d902      	bls.n	c0de4404 <nbgl_layoutAddSwitch+0x118>
c0de43fe:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de4402:	e05c      	b.n	c0de44be <nbgl_layoutAddSwitch+0x1d2>
c0de4404:	6860      	ldr	r0, [r4, #4]
c0de4406:	78a1      	ldrb	r1, [r4, #2]
c0de4408:	f886 801a 	strb.w	r8, [r6, #26]
c0de440c:	f886 a016 	strb.w	sl, [r6, #22]
c0de4410:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de4414:	1c48      	adds	r0, r1, #1
c0de4416:	7677      	strb	r7, [r6, #25]
c0de4418:	70a0      	strb	r0, [r4, #2]
c0de441a:	7861      	ldrb	r1, [r4, #1]
c0de441c:	2005      	movs	r0, #5
c0de441e:	f002 fed6 	bl	c0de71ce <nbgl_objPoolGet>
c0de4422:	2600      	movs	r6, #0
c0de4424:	4607      	mov	r7, r0
c0de4426:	f04f 0a03 	mov.w	sl, #3
c0de442a:	f04f 0808 	mov.w	r8, #8
c0de442e:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4432:	2001      	movs	r0, #1
c0de4434:	f887 a020 	strb.w	sl, [r7, #32]
c0de4438:	f887 a01f 	strb.w	sl, [r7, #31]
c0de443c:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de4440:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4444:	7a28      	ldrb	r0, [r5, #8]
c0de4446:	4a1f      	ldr	r2, [pc, #124]	@ (c0de44c4 <nbgl_layoutAddSwitch+0x1d8>)
c0de4448:	491f      	ldr	r1, [pc, #124]	@ (c0de44c8 <nbgl_layoutAddSwitch+0x1dc>)
c0de444a:	2801      	cmp	r0, #1
c0de444c:	447a      	add	r2, pc
c0de444e:	4479      	add	r1, pc
c0de4450:	bf08      	it	eq
c0de4452:	4611      	moveq	r1, r2
c0de4454:	463a      	mov	r2, r7
c0de4456:	0e0b      	lsrs	r3, r1, #24
c0de4458:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de445c:	70d3      	strb	r3, [r2, #3]
c0de445e:	0c0b      	lsrs	r3, r1, #16
c0de4460:	7093      	strb	r3, [r2, #2]
c0de4462:	0a0a      	lsrs	r2, r1, #8
c0de4464:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4468:	2801      	cmp	r0, #1
c0de446a:	4638      	mov	r0, r7
c0de446c:	4a17      	ldr	r2, [pc, #92]	@ (c0de44cc <nbgl_layoutAddSwitch+0x1e0>)
c0de446e:	4d18      	ldr	r5, [pc, #96]	@ (c0de44d0 <nbgl_layoutAddSwitch+0x1e4>)
c0de4470:	447a      	add	r2, pc
c0de4472:	447d      	add	r5, pc
c0de4474:	bf18      	it	ne
c0de4476:	462a      	movne	r2, r5
c0de4478:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de447c:	0e13      	lsrs	r3, r2, #24
c0de447e:	70c3      	strb	r3, [r0, #3]
c0de4480:	0c13      	lsrs	r3, r2, #16
c0de4482:	7083      	strb	r3, [r0, #2]
c0de4484:	0a10      	lsrs	r0, r2, #8
c0de4486:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de448a:	2008      	movs	r0, #8
c0de448c:	f002 fec2 	bl	c0de7214 <nbgl_getTextWidth>
c0de4490:	6861      	ldr	r1, [r4, #4]
c0de4492:	78a2      	ldrb	r2, [r4, #2]
c0de4494:	786b      	ldrb	r3, [r5, #1]
c0de4496:	76be      	strb	r6, [r7, #26]
c0de4498:	71fe      	strb	r6, [r7, #7]
c0de449a:	f887 8016 	strb.w	r8, [r7, #22]
c0de449e:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de44a2:	210c      	movs	r1, #12
c0de44a4:	f887 a019 	strb.w	sl, [r7, #25]
c0de44a8:	71b9      	strb	r1, [r7, #6]
c0de44aa:	7829      	ldrb	r1, [r5, #0]
c0de44ac:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de44b0:	4408      	add	r0, r1
c0de44b2:	1c51      	adds	r1, r2, #1
c0de44b4:	300a      	adds	r0, #10
c0de44b6:	7138      	strb	r0, [r7, #4]
c0de44b8:	0a00      	lsrs	r0, r0, #8
c0de44ba:	70a1      	strb	r1, [r4, #2]
c0de44bc:	7178      	strb	r0, [r7, #5]
c0de44be:	4630      	mov	r0, r6
c0de44c0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de44c4:	00003b45 	.word	0x00003b45
c0de44c8:	00003c12 	.word	0x00003c12
c0de44cc:	000038dd 	.word	0x000038dd
c0de44d0:	000038c5 	.word	0x000038c5

c0de44d4 <nbgl_layoutDraw>:
c0de44d4:	b120      	cbz	r0, c0de44e0 <nbgl_layoutDraw+0xc>
c0de44d6:	b580      	push	{r7, lr}
c0de44d8:	f002 fe6a 	bl	c0de71b0 <nbgl_screenRedraw>
c0de44dc:	2000      	movs	r0, #0
c0de44de:	bd80      	pop	{r7, pc}
c0de44e0:	f000 b84a 	b.w	c0de4578 <OUTLINED_FUNCTION_8>

c0de44e4 <nbgl_layoutRelease>:
c0de44e4:	b148      	cbz	r0, c0de44fa <nbgl_layoutRelease+0x16>
c0de44e6:	b510      	push	{r4, lr}
c0de44e8:	4604      	mov	r4, r0
c0de44ea:	7800      	ldrb	r0, [r0, #0]
c0de44ec:	b110      	cbz	r0, c0de44f4 <nbgl_layoutRelease+0x10>
c0de44ee:	7860      	ldrb	r0, [r4, #1]
c0de44f0:	f002 fe63 	bl	c0de71ba <nbgl_screenPop>
c0de44f4:	2000      	movs	r0, #0
c0de44f6:	70a0      	strb	r0, [r4, #2]
c0de44f8:	bd10      	pop	{r4, pc}
c0de44fa:	f000 b83d 	b.w	c0de4578 <OUTLINED_FUNCTION_8>

c0de44fe <OUTLINED_FUNCTION_0>:
c0de44fe:	4638      	mov	r0, r7
c0de4500:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4504:	70c2      	strb	r2, [r0, #3]
c0de4506:	0c0a      	lsrs	r2, r1, #16
c0de4508:	7082      	strb	r2, [r0, #2]
c0de450a:	0a08      	lsrs	r0, r1, #8
c0de450c:	2272      	movs	r2, #114	@ 0x72
c0de450e:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4512:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de4516:	f040 0001 	orr.w	r0, r0, #1
c0de451a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de451e:	200a      	movs	r0, #10
c0de4520:	f002 be6e 	b.w	c0de7200 <nbgl_getTextNbLinesInWidth>

c0de4524 <OUTLINED_FUNCTION_2>:
c0de4524:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4528:	784b      	ldrb	r3, [r1, #1]
c0de452a:	788d      	ldrb	r5, [r1, #2]
c0de452c:	78c9      	ldrb	r1, [r1, #3]
c0de452e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4532:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4536:	9d05      	ldr	r5, [sp, #20]
c0de4538:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de453c:	4770      	bx	lr

c0de453e <OUTLINED_FUNCTION_3>:
c0de453e:	70c2      	strb	r2, [r0, #3]
c0de4540:	0c0a      	lsrs	r2, r1, #16
c0de4542:	7082      	strb	r2, [r0, #2]
c0de4544:	0a08      	lsrs	r0, r1, #8
c0de4546:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de454a:	2008      	movs	r0, #8
c0de454c:	f002 be62 	b.w	c0de7214 <nbgl_getTextWidth>

c0de4550 <OUTLINED_FUNCTION_4>:
c0de4550:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4554:	2272      	movs	r2, #114	@ 0x72
c0de4556:	f002 be62 	b.w	c0de721e <nbgl_getTextMaxLenInNbLines>

c0de455a <OUTLINED_FUNCTION_5>:
c0de455a:	2004      	movs	r0, #4
c0de455c:	f002 be37 	b.w	c0de71ce <nbgl_objPoolGet>

c0de4560 <OUTLINED_FUNCTION_6>:
c0de4560:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4564:	f002 be3d 	b.w	c0de71e2 <nbgl_getFont>

c0de4568 <OUTLINED_FUNCTION_7>:
c0de4568:	2100      	movs	r1, #0
c0de456a:	463a      	mov	r2, r7
c0de456c:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4570:	70d1      	strb	r1, [r2, #3]
c0de4572:	7091      	strb	r1, [r2, #2]
c0de4574:	7051      	strb	r1, [r2, #1]
c0de4576:	4770      	bx	lr

c0de4578 <OUTLINED_FUNCTION_8>:
c0de4578:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de457c:	4770      	bx	lr

c0de457e <OUTLINED_FUNCTION_9>:
c0de457e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4582:	2003      	movs	r0, #3
c0de4584:	f887 0020 	strb.w	r0, [r7, #32]
c0de4588:	77f8      	strb	r0, [r7, #31]
c0de458a:	4770      	bx	lr

c0de458c <nbgl_stepDrawText>:
c0de458c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4590:	460e      	mov	r6, r1
c0de4592:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4594:	4605      	mov	r5, r0
c0de4596:	2000      	movs	r0, #0
c0de4598:	469a      	mov	sl, r3
c0de459a:	4617      	mov	r7, r2
c0de459c:	f000 f830 	bl	c0de4600 <getFreeContext>
c0de45a0:	b348      	cbz	r0, c0de45f6 <nbgl_stepDrawText+0x6a>
c0de45a2:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de45a6:	4604      	mov	r4, r0
c0de45a8:	6146      	str	r6, [r0, #20]
c0de45aa:	b10f      	cbz	r7, c0de45b0 <nbgl_stepDrawText+0x24>
c0de45ac:	f000 fae1 	bl	c0de4b72 <OUTLINED_FUNCTION_1>
c0de45b0:	200a      	movs	r0, #10
c0de45b2:	f1b8 0f00 	cmp.w	r8, #0
c0de45b6:	bf19      	ittee	ne
c0de45b8:	4641      	movne	r1, r8
c0de45ba:	2203      	movne	r2, #3
c0de45bc:	4651      	moveq	r1, sl
c0de45be:	2204      	moveq	r2, #4
c0de45c0:	2372      	movs	r3, #114	@ 0x72
c0de45c2:	f002 fe22 	bl	c0de720a <nbgl_getTextNbPagesInWidth>
c0de45c6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de45c8:	7020      	strb	r0, [r4, #0]
c0de45ca:	072a      	lsls	r2, r5, #28
c0de45cc:	bf46      	itte	mi
c0de45ce:	3801      	submi	r0, #1
c0de45d0:	7060      	strbmi	r0, [r4, #1]
c0de45d2:	7860      	ldrbpl	r0, [r4, #1]
c0de45d4:	f8c4 800c 	str.w	r8, [r4, #12]
c0de45d8:	f8c4 a004 	str.w	sl, [r4, #4]
c0de45dc:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de45e0:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de45e4:	7461      	strb	r1, [r4, #17]
c0de45e6:	f005 0103 	and.w	r1, r5, #3
c0de45ea:	7421      	strb	r1, [r4, #16]
c0de45ec:	b2c1      	uxtb	r1, r0
c0de45ee:	4620      	mov	r0, r4
c0de45f0:	f000 f82c 	bl	c0de464c <displayTextPage>
c0de45f4:	e000      	b.n	c0de45f8 <nbgl_stepDrawText+0x6c>
c0de45f6:	2400      	movs	r4, #0
c0de45f8:	4620      	mov	r0, r4
c0de45fa:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4600 <getFreeContext>:
c0de4600:	b570      	push	{r4, r5, r6, lr}
c0de4602:	4604      	mov	r4, r0
c0de4604:	4810      	ldr	r0, [pc, #64]	@ (c0de4648 <getFreeContext+0x48>)
c0de4606:	460d      	mov	r5, r1
c0de4608:	b151      	cbz	r1, c0de4620 <getFreeContext+0x20>
c0de460a:	2100      	movs	r1, #0
c0de460c:	2990      	cmp	r1, #144	@ 0x90
c0de460e:	d00a      	beq.n	c0de4626 <getFreeContext+0x26>
c0de4610:	eb09 0200 	add.w	r2, r9, r0
c0de4614:	440a      	add	r2, r1
c0de4616:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de461a:	b132      	cbz	r2, c0de462a <getFreeContext+0x2a>
c0de461c:	3148      	adds	r1, #72	@ 0x48
c0de461e:	e7f5      	b.n	c0de460c <getFreeContext+0xc>
c0de4620:	eb09 0600 	add.w	r6, r9, r0
c0de4624:	e005      	b.n	c0de4632 <getFreeContext+0x32>
c0de4626:	2600      	movs	r6, #0
c0de4628:	e00b      	b.n	c0de4642 <getFreeContext+0x42>
c0de462a:	4448      	add	r0, r9
c0de462c:	4408      	add	r0, r1
c0de462e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4632:	4630      	mov	r0, r6
c0de4634:	2148      	movs	r1, #72	@ 0x48
c0de4636:	f003 fabd 	bl	c0de7bb4 <__aeabi_memclr>
c0de463a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de463e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4642:	4630      	mov	r0, r6
c0de4644:	bd70      	pop	{r4, r5, r6, pc}
c0de4646:	bf00      	nop
c0de4648:	00000678 	.word	0x00000678

c0de464c <displayTextPage>:
c0de464c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4650:	b091      	sub	sp, #68	@ 0x44
c0de4652:	4604      	mov	r4, r0
c0de4654:	7840      	ldrb	r0, [r0, #1]
c0de4656:	460e      	mov	r6, r1
c0de4658:	4288      	cmp	r0, r1
c0de465a:	d21c      	bcs.n	c0de4696 <displayTextPage+0x4a>
c0de465c:	68a5      	ldr	r5, [r4, #8]
c0de465e:	7820      	ldrb	r0, [r4, #0]
c0de4660:	7066      	strb	r6, [r4, #1]
c0de4662:	3801      	subs	r0, #1
c0de4664:	42b0      	cmp	r0, r6
c0de4666:	dd31      	ble.n	c0de46cc <displayTextPage+0x80>
c0de4668:	68e0      	ldr	r0, [r4, #12]
c0de466a:	2101      	movs	r1, #1
c0de466c:	2303      	movs	r3, #3
c0de466e:	aa08      	add	r2, sp, #32
c0de4670:	e9cd 2100 	strd	r2, r1, [sp]
c0de4674:	4629      	mov	r1, r5
c0de4676:	2800      	cmp	r0, #0
c0de4678:	bf08      	it	eq
c0de467a:	2304      	moveq	r3, #4
c0de467c:	200a      	movs	r0, #10
c0de467e:	2272      	movs	r2, #114	@ 0x72
c0de4680:	f002 fdcd 	bl	c0de721e <nbgl_getTextMaxLenInNbLines>
c0de4684:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4688:	1868      	adds	r0, r5, r1
c0de468a:	60a0      	str	r0, [r4, #8]
c0de468c:	5c69      	ldrb	r1, [r5, r1]
c0de468e:	290a      	cmp	r1, #10
c0de4690:	d11e      	bne.n	c0de46d0 <displayTextPage+0x84>
c0de4692:	3001      	adds	r0, #1
c0de4694:	e01b      	b.n	c0de46ce <displayTextPage+0x82>
c0de4696:	68e5      	ldr	r5, [r4, #12]
c0de4698:	2d00      	cmp	r5, #0
c0de469a:	d074      	beq.n	c0de4786 <displayTextPage+0x13a>
c0de469c:	2700      	movs	r7, #0
c0de469e:	f04f 0801 	mov.w	r8, #1
c0de46a2:	f10d 0a20 	add.w	sl, sp, #32
c0de46a6:	42be      	cmp	r6, r7
c0de46a8:	d0d9      	beq.n	c0de465e <displayTextPage+0x12>
c0de46aa:	7820      	ldrb	r0, [r4, #0]
c0de46ac:	3801      	subs	r0, #1
c0de46ae:	42b8      	cmp	r0, r7
c0de46b0:	dd0a      	ble.n	c0de46c8 <displayTextPage+0x7c>
c0de46b2:	200a      	movs	r0, #10
c0de46b4:	4629      	mov	r1, r5
c0de46b6:	2272      	movs	r2, #114	@ 0x72
c0de46b8:	2303      	movs	r3, #3
c0de46ba:	e9cd a800 	strd	sl, r8, [sp]
c0de46be:	f002 fdae 	bl	c0de721e <nbgl_getTextMaxLenInNbLines>
c0de46c2:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de46c6:	4405      	add	r5, r0
c0de46c8:	3701      	adds	r7, #1
c0de46ca:	e7ec      	b.n	c0de46a6 <displayTextPage+0x5a>
c0de46cc:	2000      	movs	r0, #0
c0de46ce:	60a0      	str	r0, [r4, #8]
c0de46d0:	484f      	ldr	r0, [pc, #316]	@ (c0de4810 <displayTextPage+0x1c4>)
c0de46d2:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de46d6:	4478      	add	r0, pc
c0de46d8:	9004      	str	r0, [sp, #16]
c0de46da:	2000      	movs	r0, #0
c0de46dc:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de46e0:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de46e4:	f88d 000c 	strb.w	r0, [sp, #12]
c0de46e8:	ca07      	ldmia	r2, {r0, r1, r2}
c0de46ea:	ab05      	add	r3, sp, #20
c0de46ec:	c307      	stmia	r3!, {r0, r1, r2}
c0de46ee:	a803      	add	r0, sp, #12
c0de46f0:	f7ff f986 	bl	c0de3a00 <nbgl_layoutGet>
c0de46f4:	7827      	ldrb	r7, [r4, #0]
c0de46f6:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de46fa:	4606      	mov	r6, r0
c0de46fc:	6420      	str	r0, [r4, #64]	@ 0x40
c0de46fe:	7c20      	ldrb	r0, [r4, #16]
c0de4700:	4639      	mov	r1, r7
c0de4702:	4652      	mov	r2, sl
c0de4704:	f000 f8fc 	bl	c0de4900 <getNavigationInfo>
c0de4708:	4680      	mov	r8, r0
c0de470a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de470e:	68e0      	ldr	r0, [r4, #12]
c0de4710:	b188      	cbz	r0, c0de4736 <displayTextPage+0xea>
c0de4712:	2f01      	cmp	r7, #1
c0de4714:	d115      	bne.n	c0de4742 <displayTextPage+0xf6>
c0de4716:	6861      	ldr	r1, [r4, #4]
c0de4718:	2008      	movs	r0, #8
c0de471a:	2272      	movs	r2, #114	@ 0x72
c0de471c:	2300      	movs	r3, #0
c0de471e:	2600      	movs	r6, #0
c0de4720:	f002 fd6e 	bl	c0de7200 <nbgl_getTextNbLinesInWidth>
c0de4724:	2802      	cmp	r0, #2
c0de4726:	d348      	bcc.n	c0de47ba <displayTextPage+0x16e>
c0de4728:	6861      	ldr	r1, [r4, #4]
c0de472a:	2018      	movs	r0, #24
c0de472c:	f104 0218 	add.w	r2, r4, #24
c0de4730:	e9cd 2000 	strd	r2, r0, [sp]
c0de4734:	e021      	b.n	c0de477a <displayTextPage+0x12e>
c0de4736:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de473a:	4630      	mov	r0, r6
c0de473c:	4629      	mov	r1, r5
c0de473e:	2200      	movs	r2, #0
c0de4740:	e055      	b.n	c0de47ee <displayTextPage+0x1a2>
c0de4742:	f10a 0001 	add.w	r0, sl, #1
c0de4746:	6863      	ldr	r3, [r4, #4]
c0de4748:	2124      	movs	r1, #36	@ 0x24
c0de474a:	e9cd 0700 	strd	r0, r7, [sp]
c0de474e:	af08      	add	r7, sp, #32
c0de4750:	4a30      	ldr	r2, [pc, #192]	@ (c0de4814 <displayTextPage+0x1c8>)
c0de4752:	4638      	mov	r0, r7
c0de4754:	447a      	add	r2, pc
c0de4756:	f002 fd8f 	bl	c0de7278 <snprintf>
c0de475a:	2008      	movs	r0, #8
c0de475c:	4639      	mov	r1, r7
c0de475e:	2272      	movs	r2, #114	@ 0x72
c0de4760:	2300      	movs	r3, #0
c0de4762:	f04f 0a00 	mov.w	sl, #0
c0de4766:	f002 fd4b 	bl	c0de7200 <nbgl_getTextNbLinesInWidth>
c0de476a:	f104 0c18 	add.w	ip, r4, #24
c0de476e:	2802      	cmp	r0, #2
c0de4770:	d32c      	bcc.n	c0de47cc <displayTextPage+0x180>
c0de4772:	2018      	movs	r0, #24
c0de4774:	e9cd c000 	strd	ip, r0, [sp]
c0de4778:	a908      	add	r1, sp, #32
c0de477a:	2008      	movs	r0, #8
c0de477c:	2272      	movs	r2, #114	@ 0x72
c0de477e:	2301      	movs	r3, #1
c0de4780:	f002 fd52 	bl	c0de7228 <nbgl_textReduceOnNbLines>
c0de4784:	e02d      	b.n	c0de47e2 <displayTextPage+0x196>
c0de4786:	6865      	ldr	r5, [r4, #4]
c0de4788:	2700      	movs	r7, #0
c0de478a:	f04f 0801 	mov.w	r8, #1
c0de478e:	f10d 0a20 	add.w	sl, sp, #32
c0de4792:	42be      	cmp	r6, r7
c0de4794:	f43f af63 	beq.w	c0de465e <displayTextPage+0x12>
c0de4798:	7820      	ldrb	r0, [r4, #0]
c0de479a:	3801      	subs	r0, #1
c0de479c:	42b8      	cmp	r0, r7
c0de479e:	dd0a      	ble.n	c0de47b6 <displayTextPage+0x16a>
c0de47a0:	200a      	movs	r0, #10
c0de47a2:	4629      	mov	r1, r5
c0de47a4:	2272      	movs	r2, #114	@ 0x72
c0de47a6:	2304      	movs	r3, #4
c0de47a8:	e9cd a800 	strd	sl, r8, [sp]
c0de47ac:	f002 fd37 	bl	c0de721e <nbgl_getTextMaxLenInNbLines>
c0de47b0:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de47b4:	4405      	add	r5, r0
c0de47b6:	3701      	adds	r7, #1
c0de47b8:	e7eb      	b.n	c0de4792 <displayTextPage+0x146>
c0de47ba:	6861      	ldr	r1, [r4, #4]
c0de47bc:	f104 0018 	add.w	r0, r4, #24
c0de47c0:	2217      	movs	r2, #23
c0de47c2:	f003 f9ed 	bl	c0de7ba0 <__aeabi_memcpy>
c0de47c6:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de47ca:	e00a      	b.n	c0de47e2 <displayTextPage+0x196>
c0de47cc:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de47ce:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de47d2:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de47d6:	8838      	ldrh	r0, [r7, #0]
c0de47d8:	f8ac 0000 	strh.w	r0, [ip]
c0de47dc:	78b8      	ldrb	r0, [r7, #2]
c0de47de:	f88c 0002 	strb.w	r0, [ip, #2]
c0de47e2:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de47e6:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de47e8:	f104 0118 	add.w	r1, r4, #24
c0de47ec:	462a      	mov	r2, r5
c0de47ee:	f7ff f9c9 	bl	c0de3b84 <nbgl_layoutAddText>
c0de47f2:	f1b8 0f00 	cmp.w	r8, #0
c0de47f6:	d004      	beq.n	c0de4802 <displayTextPage+0x1b6>
c0de47f8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de47fa:	f10d 010a 	add.w	r1, sp, #10
c0de47fe:	f7ff f963 	bl	c0de3ac8 <nbgl_layoutAddNavigation>
c0de4802:	f000 f9e9 	bl	c0de4bd8 <OUTLINED_FUNCTION_4>
c0de4806:	f002 fcba 	bl	c0de717e <nbgl_refresh>
c0de480a:	b011      	add	sp, #68	@ 0x44
c0de480c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4810:	000001bb 	.word	0x000001bb
c0de4814:	00003736 	.word	0x00003736

c0de4818 <nbgl_stepDrawCenteredInfo>:
c0de4818:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de481c:	b087      	sub	sp, #28
c0de481e:	460d      	mov	r5, r1
c0de4820:	4682      	mov	sl, r0
c0de4822:	a802      	add	r0, sp, #8
c0de4824:	f000 f9d3 	bl	c0de4bce <OUTLINED_FUNCTION_3>
c0de4828:	4819      	ldr	r0, [pc, #100]	@ (c0de4890 <nbgl_stepDrawCenteredInfo+0x78>)
c0de482a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de482c:	4478      	add	r0, pc
c0de482e:	f000 f9c5 	bl	c0de4bbc <OUTLINED_FUNCTION_2>
c0de4832:	b168      	cbz	r0, c0de4850 <nbgl_stepDrawCenteredInfo+0x38>
c0de4834:	4604      	mov	r4, r0
c0de4836:	6145      	str	r5, [r0, #20]
c0de4838:	b10f      	cbz	r7, c0de483e <nbgl_stepDrawCenteredInfo+0x26>
c0de483a:	f000 f953 	bl	c0de4ae4 <OUTLINED_FUNCTION_0>
c0de483e:	f000 f9ce 	bl	c0de4bde <OUTLINED_FUNCTION_5>
c0de4842:	d007      	beq.n	c0de4854 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4844:	2802      	cmp	r0, #2
c0de4846:	d007      	beq.n	c0de4858 <nbgl_stepDrawCenteredInfo+0x40>
c0de4848:	2801      	cmp	r0, #1
c0de484a:	d108      	bne.n	c0de485e <nbgl_stepDrawCenteredInfo+0x46>
c0de484c:	2002      	movs	r0, #2
c0de484e:	e004      	b.n	c0de485a <nbgl_stepDrawCenteredInfo+0x42>
c0de4850:	2400      	movs	r4, #0
c0de4852:	e018      	b.n	c0de4886 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4854:	2003      	movs	r0, #3
c0de4856:	e000      	b.n	c0de485a <nbgl_stepDrawCenteredInfo+0x42>
c0de4858:	2001      	movs	r0, #1
c0de485a:	2500      	movs	r5, #0
c0de485c:	e000      	b.n	c0de4860 <nbgl_stepDrawCenteredInfo+0x48>
c0de485e:	2000      	movs	r0, #0
c0de4860:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4864:	a802      	add	r0, sp, #8
c0de4866:	f7ff f8cb 	bl	c0de3a00 <nbgl_layoutGet>
c0de486a:	4641      	mov	r1, r8
c0de486c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de486e:	f7ff fb9d 	bl	c0de3fac <nbgl_layoutAddCenteredInfo>
c0de4872:	b925      	cbnz	r5, c0de487e <nbgl_stepDrawCenteredInfo+0x66>
c0de4874:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4876:	f10d 0106 	add.w	r1, sp, #6
c0de487a:	f7ff f925 	bl	c0de3ac8 <nbgl_layoutAddNavigation>
c0de487e:	f000 f9ab 	bl	c0de4bd8 <OUTLINED_FUNCTION_4>
c0de4882:	f002 fc7c 	bl	c0de717e <nbgl_refresh>
c0de4886:	4620      	mov	r0, r4
c0de4888:	b007      	add	sp, #28
c0de488a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de488e:	bf00      	nop
c0de4890:	00000065 	.word	0x00000065

c0de4894 <actionCallback>:
c0de4894:	b510      	push	{r4, lr}
c0de4896:	460c      	mov	r4, r1
c0de4898:	f000 f8f0 	bl	c0de4a7c <getContextFromLayout>
c0de489c:	b378      	cbz	r0, c0de48fe <actionCallback+0x6a>
c0de489e:	2c04      	cmp	r4, #4
c0de48a0:	d006      	beq.n	c0de48b0 <actionCallback+0x1c>
c0de48a2:	2c01      	cmp	r4, #1
c0de48a4:	d008      	beq.n	c0de48b8 <actionCallback+0x24>
c0de48a6:	bb54      	cbnz	r4, c0de48fe <actionCallback+0x6a>
c0de48a8:	7841      	ldrb	r1, [r0, #1]
c0de48aa:	b1d9      	cbz	r1, c0de48e4 <actionCallback+0x50>
c0de48ac:	3901      	subs	r1, #1
c0de48ae:	e009      	b.n	c0de48c4 <actionCallback+0x30>
c0de48b0:	6942      	ldr	r2, [r0, #20]
c0de48b2:	b322      	cbz	r2, c0de48fe <actionCallback+0x6a>
c0de48b4:	2104      	movs	r1, #4
c0de48b6:	e01f      	b.n	c0de48f8 <actionCallback+0x64>
c0de48b8:	7802      	ldrb	r2, [r0, #0]
c0de48ba:	7841      	ldrb	r1, [r0, #1]
c0de48bc:	3a01      	subs	r2, #1
c0de48be:	428a      	cmp	r2, r1
c0de48c0:	dd05      	ble.n	c0de48ce <actionCallback+0x3a>
c0de48c2:	3101      	adds	r1, #1
c0de48c4:	b2c9      	uxtb	r1, r1
c0de48c6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de48ca:	f7ff bebf 	b.w	c0de464c <displayTextPage>
c0de48ce:	7c01      	ldrb	r1, [r0, #16]
c0de48d0:	f041 0102 	orr.w	r1, r1, #2
c0de48d4:	2903      	cmp	r1, #3
c0de48d6:	d001      	beq.n	c0de48dc <actionCallback+0x48>
c0de48d8:	7c41      	ldrb	r1, [r0, #17]
c0de48da:	b181      	cbz	r1, c0de48fe <actionCallback+0x6a>
c0de48dc:	6942      	ldr	r2, [r0, #20]
c0de48de:	b172      	cbz	r2, c0de48fe <actionCallback+0x6a>
c0de48e0:	2101      	movs	r1, #1
c0de48e2:	e009      	b.n	c0de48f8 <actionCallback+0x64>
c0de48e4:	7c01      	ldrb	r1, [r0, #16]
c0de48e6:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de48ea:	2902      	cmp	r1, #2
c0de48ec:	d001      	beq.n	c0de48f2 <actionCallback+0x5e>
c0de48ee:	7c41      	ldrb	r1, [r0, #17]
c0de48f0:	b129      	cbz	r1, c0de48fe <actionCallback+0x6a>
c0de48f2:	6942      	ldr	r2, [r0, #20]
c0de48f4:	b11a      	cbz	r2, c0de48fe <actionCallback+0x6a>
c0de48f6:	2100      	movs	r1, #0
c0de48f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de48fc:	4710      	bx	r2
c0de48fe:	bd10      	pop	{r4, pc}

c0de4900 <getNavigationInfo>:
c0de4900:	4603      	mov	r3, r0
c0de4902:	2902      	cmp	r1, #2
c0de4904:	d308      	bcc.n	c0de4918 <getNavigationInfo+0x18>
c0de4906:	3901      	subs	r1, #1
c0de4908:	4610      	mov	r0, r2
c0de490a:	2a00      	cmp	r2, #0
c0de490c:	bf18      	it	ne
c0de490e:	2001      	movne	r0, #1
c0de4910:	4291      	cmp	r1, r2
c0de4912:	bf88      	it	hi
c0de4914:	3002      	addhi	r0, #2
c0de4916:	e000      	b.n	c0de491a <getNavigationInfo+0x1a>
c0de4918:	2000      	movs	r0, #0
c0de491a:	2b03      	cmp	r3, #3
c0de491c:	d00a      	beq.n	c0de4934 <getNavigationInfo+0x34>
c0de491e:	2b02      	cmp	r3, #2
c0de4920:	bf04      	itt	eq
c0de4922:	f040 0001 	orreq.w	r0, r0, #1
c0de4926:	4770      	bxeq	lr
c0de4928:	2b01      	cmp	r3, #1
c0de492a:	bf04      	itt	eq
c0de492c:	f040 0002 	orreq.w	r0, r0, #2
c0de4930:	4770      	bxeq	lr
c0de4932:	4770      	bx	lr
c0de4934:	2003      	movs	r0, #3
c0de4936:	4770      	bx	lr

c0de4938 <nbgl_stepDrawMenuList>:
c0de4938:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de493a:	460f      	mov	r7, r1
c0de493c:	4606      	mov	r6, r0
c0de493e:	2002      	movs	r0, #2
c0de4940:	4619      	mov	r1, r3
c0de4942:	4615      	mov	r5, r2
c0de4944:	f7ff fe5c 	bl	c0de4600 <getFreeContext>
c0de4948:	b170      	cbz	r0, c0de4968 <nbgl_stepDrawMenuList+0x30>
c0de494a:	4604      	mov	r4, r0
c0de494c:	b10f      	cbz	r7, c0de4952 <nbgl_stepDrawMenuList+0x1a>
c0de494e:	f000 f910 	bl	c0de4b72 <OUTLINED_FUNCTION_1>
c0de4952:	7928      	ldrb	r0, [r5, #4]
c0de4954:	7220      	strb	r0, [r4, #8]
c0de4956:	7968      	ldrb	r0, [r5, #5]
c0de4958:	7260      	strb	r0, [r4, #9]
c0de495a:	6828      	ldr	r0, [r5, #0]
c0de495c:	e9c4 6000 	strd	r6, r0, [r4]
c0de4960:	4620      	mov	r0, r4
c0de4962:	f000 f805 	bl	c0de4970 <displayMenuList>
c0de4966:	e000      	b.n	c0de496a <nbgl_stepDrawMenuList+0x32>
c0de4968:	2400      	movs	r4, #0
c0de496a:	4620      	mov	r0, r4
c0de496c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4970 <displayMenuList>:
c0de4970:	b5b0      	push	{r4, r5, r7, lr}
c0de4972:	b086      	sub	sp, #24
c0de4974:	4604      	mov	r4, r0
c0de4976:	2000      	movs	r0, #0
c0de4978:	9001      	str	r0, [sp, #4]
c0de497a:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de497e:	4819      	ldr	r0, [pc, #100]	@ (c0de49e4 <displayMenuList+0x74>)
c0de4980:	4478      	add	r0, pc
c0de4982:	9002      	str	r0, [sp, #8]
c0de4984:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4988:	f88d 0004 	strb.w	r0, [sp, #4]
c0de498c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de498e:	ab03      	add	r3, sp, #12
c0de4990:	c307      	stmia	r3!, {r0, r1, r2}
c0de4992:	a801      	add	r0, sp, #4
c0de4994:	f7ff f834 	bl	c0de3a00 <nbgl_layoutGet>
c0de4998:	1d25      	adds	r5, r4, #4
c0de499a:	6420      	str	r0, [r4, #64]	@ 0x40
c0de499c:	4629      	mov	r1, r5
c0de499e:	f7ff fab1 	bl	c0de3f04 <nbgl_layoutAddMenuList>
c0de49a2:	7a20      	ldrb	r0, [r4, #8]
c0de49a4:	2802      	cmp	r0, #2
c0de49a6:	d316      	bcc.n	c0de49d6 <displayMenuList+0x66>
c0de49a8:	2101      	movs	r1, #1
c0de49aa:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de49ae:	7969      	ldrb	r1, [r5, #5]
c0de49b0:	2900      	cmp	r1, #0
c0de49b2:	460a      	mov	r2, r1
c0de49b4:	bf18      	it	ne
c0de49b6:	2201      	movne	r2, #1
c0de49b8:	3801      	subs	r0, #1
c0de49ba:	f88d 2003 	strb.w	r2, [sp, #3]
c0de49be:	4288      	cmp	r0, r1
c0de49c0:	d903      	bls.n	c0de49ca <displayMenuList+0x5a>
c0de49c2:	1c90      	adds	r0, r2, #2
c0de49c4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de49c8:	e000      	b.n	c0de49cc <displayMenuList+0x5c>
c0de49ca:	b121      	cbz	r1, c0de49d6 <displayMenuList+0x66>
c0de49cc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de49ce:	f10d 0102 	add.w	r1, sp, #2
c0de49d2:	f7ff f879 	bl	c0de3ac8 <nbgl_layoutAddNavigation>
c0de49d6:	f000 f8ff 	bl	c0de4bd8 <OUTLINED_FUNCTION_4>
c0de49da:	f002 fbd0 	bl	c0de717e <nbgl_refresh>
c0de49de:	b006      	add	sp, #24
c0de49e0:	bdb0      	pop	{r4, r5, r7, pc}
c0de49e2:	bf00      	nop
c0de49e4:	00000121 	.word	0x00000121

c0de49e8 <nbgl_stepDrawSwitch>:
c0de49e8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de49ec:	b087      	sub	sp, #28
c0de49ee:	460d      	mov	r5, r1
c0de49f0:	4682      	mov	sl, r0
c0de49f2:	a802      	add	r0, sp, #8
c0de49f4:	f000 f8eb 	bl	c0de4bce <OUTLINED_FUNCTION_3>
c0de49f8:	4819      	ldr	r0, [pc, #100]	@ (c0de4a60 <nbgl_stepDrawSwitch+0x78>)
c0de49fa:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de49fc:	4478      	add	r0, pc
c0de49fe:	f000 f8dd 	bl	c0de4bbc <OUTLINED_FUNCTION_2>
c0de4a02:	b168      	cbz	r0, c0de4a20 <nbgl_stepDrawSwitch+0x38>
c0de4a04:	4604      	mov	r4, r0
c0de4a06:	6145      	str	r5, [r0, #20]
c0de4a08:	b10f      	cbz	r7, c0de4a0e <nbgl_stepDrawSwitch+0x26>
c0de4a0a:	f000 f86b 	bl	c0de4ae4 <OUTLINED_FUNCTION_0>
c0de4a0e:	f000 f8e6 	bl	c0de4bde <OUTLINED_FUNCTION_5>
c0de4a12:	d007      	beq.n	c0de4a24 <nbgl_stepDrawSwitch+0x3c>
c0de4a14:	2802      	cmp	r0, #2
c0de4a16:	d007      	beq.n	c0de4a28 <nbgl_stepDrawSwitch+0x40>
c0de4a18:	2801      	cmp	r0, #1
c0de4a1a:	d108      	bne.n	c0de4a2e <nbgl_stepDrawSwitch+0x46>
c0de4a1c:	2002      	movs	r0, #2
c0de4a1e:	e004      	b.n	c0de4a2a <nbgl_stepDrawSwitch+0x42>
c0de4a20:	2400      	movs	r4, #0
c0de4a22:	e018      	b.n	c0de4a56 <nbgl_stepDrawSwitch+0x6e>
c0de4a24:	2003      	movs	r0, #3
c0de4a26:	e000      	b.n	c0de4a2a <nbgl_stepDrawSwitch+0x42>
c0de4a28:	2001      	movs	r0, #1
c0de4a2a:	2500      	movs	r5, #0
c0de4a2c:	e000      	b.n	c0de4a30 <nbgl_stepDrawSwitch+0x48>
c0de4a2e:	2000      	movs	r0, #0
c0de4a30:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4a34:	a802      	add	r0, sp, #8
c0de4a36:	f7fe ffe3 	bl	c0de3a00 <nbgl_layoutGet>
c0de4a3a:	4641      	mov	r1, r8
c0de4a3c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4a3e:	f7ff fc55 	bl	c0de42ec <nbgl_layoutAddSwitch>
c0de4a42:	b925      	cbnz	r5, c0de4a4e <nbgl_stepDrawSwitch+0x66>
c0de4a44:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4a46:	f10d 0106 	add.w	r1, sp, #6
c0de4a4a:	f7ff f83d 	bl	c0de3ac8 <nbgl_layoutAddNavigation>
c0de4a4e:	f000 f8c3 	bl	c0de4bd8 <OUTLINED_FUNCTION_4>
c0de4a52:	f002 fb94 	bl	c0de717e <nbgl_refresh>
c0de4a56:	4620      	mov	r0, r4
c0de4a58:	b007      	add	sp, #28
c0de4a5a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4a5e:	bf00      	nop
c0de4a60:	fffffe95 	.word	0xfffffe95

c0de4a64 <nbgl_stepRelease>:
c0de4a64:	b138      	cbz	r0, c0de4a76 <nbgl_stepRelease+0x12>
c0de4a66:	b510      	push	{r4, lr}
c0de4a68:	4604      	mov	r4, r0
c0de4a6a:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4a6c:	f7ff fd3a 	bl	c0de44e4 <nbgl_layoutRelease>
c0de4a70:	2100      	movs	r1, #0
c0de4a72:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4a74:	bd10      	pop	{r4, pc}
c0de4a76:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4a7a:	4770      	bx	lr

c0de4a7c <getContextFromLayout>:
c0de4a7c:	4a08      	ldr	r2, [pc, #32]	@ (c0de4aa0 <getContextFromLayout+0x24>)
c0de4a7e:	2100      	movs	r1, #0
c0de4a80:	29d8      	cmp	r1, #216	@ 0xd8
c0de4a82:	bf04      	itt	eq
c0de4a84:	2000      	moveq	r0, #0
c0de4a86:	4770      	bxeq	lr
c0de4a88:	eb09 0302 	add.w	r3, r9, r2
c0de4a8c:	440b      	add	r3, r1
c0de4a8e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4a90:	4283      	cmp	r3, r0
c0de4a92:	d001      	beq.n	c0de4a98 <getContextFromLayout+0x1c>
c0de4a94:	3148      	adds	r1, #72	@ 0x48
c0de4a96:	e7f3      	b.n	c0de4a80 <getContextFromLayout+0x4>
c0de4a98:	eb09 0002 	add.w	r0, r9, r2
c0de4a9c:	4408      	add	r0, r1
c0de4a9e:	4770      	bx	lr
c0de4aa0:	00000678 	.word	0x00000678

c0de4aa4 <menuListActionCallback>:
c0de4aa4:	b510      	push	{r4, lr}
c0de4aa6:	460c      	mov	r4, r1
c0de4aa8:	f7ff ffe8 	bl	c0de4a7c <getContextFromLayout>
c0de4aac:	b1c8      	cbz	r0, c0de4ae2 <menuListActionCallback+0x3e>
c0de4aae:	2c04      	cmp	r4, #4
c0de4ab0:	d006      	beq.n	c0de4ac0 <menuListActionCallback+0x1c>
c0de4ab2:	2c01      	cmp	r4, #1
c0de4ab4:	d00a      	beq.n	c0de4acc <menuListActionCallback+0x28>
c0de4ab6:	b9a4      	cbnz	r4, c0de4ae2 <menuListActionCallback+0x3e>
c0de4ab8:	7a41      	ldrb	r1, [r0, #9]
c0de4aba:	b191      	cbz	r1, c0de4ae2 <menuListActionCallback+0x3e>
c0de4abc:	3901      	subs	r1, #1
c0de4abe:	e00b      	b.n	c0de4ad8 <menuListActionCallback+0x34>
c0de4ac0:	7a41      	ldrb	r1, [r0, #9]
c0de4ac2:	6802      	ldr	r2, [r0, #0]
c0de4ac4:	4608      	mov	r0, r1
c0de4ac6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4aca:	4710      	bx	r2
c0de4acc:	7a02      	ldrb	r2, [r0, #8]
c0de4ace:	7a41      	ldrb	r1, [r0, #9]
c0de4ad0:	3a01      	subs	r2, #1
c0de4ad2:	428a      	cmp	r2, r1
c0de4ad4:	dd05      	ble.n	c0de4ae2 <menuListActionCallback+0x3e>
c0de4ad6:	3101      	adds	r1, #1
c0de4ad8:	7241      	strb	r1, [r0, #9]
c0de4ada:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ade:	f7ff bf47 	b.w	c0de4970 <displayMenuList>
c0de4ae2:	bd10      	pop	{r4, pc}

c0de4ae4 <OUTLINED_FUNCTION_0>:
c0de4ae4:	7838      	ldrb	r0, [r7, #0]
c0de4ae6:	7879      	ldrb	r1, [r7, #1]
c0de4ae8:	78ba      	ldrb	r2, [r7, #2]
c0de4aea:	78fb      	ldrb	r3, [r7, #3]
c0de4aec:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4af0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4af4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4af8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4afa:	4638      	mov	r0, r7
c0de4afc:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4b00:	7a79      	ldrb	r1, [r7, #9]
c0de4b02:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4b06:	7882      	ldrb	r2, [r0, #2]
c0de4b08:	78c3      	ldrb	r3, [r0, #3]
c0de4b0a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b0e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4b12:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4b14:	4639      	mov	r1, r7
c0de4b16:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4b1a:	797a      	ldrb	r2, [r7, #5]
c0de4b1c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4b20:	788b      	ldrb	r3, [r1, #2]
c0de4b22:	78cd      	ldrb	r5, [r1, #3]
c0de4b24:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4b28:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4b2c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4b2e:	783a      	ldrb	r2, [r7, #0]
c0de4b30:	787b      	ldrb	r3, [r7, #1]
c0de4b32:	78bd      	ldrb	r5, [r7, #2]
c0de4b34:	78fe      	ldrb	r6, [r7, #3]
c0de4b36:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b3a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4b3e:	7803      	ldrb	r3, [r0, #0]
c0de4b40:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4b44:	7885      	ldrb	r5, [r0, #2]
c0de4b46:	78c0      	ldrb	r0, [r0, #3]
c0de4b48:	9204      	str	r2, [sp, #16]
c0de4b4a:	7a7a      	ldrb	r2, [r7, #9]
c0de4b4c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4b50:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4b54:	788b      	ldrb	r3, [r1, #2]
c0de4b56:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4b5a:	780a      	ldrb	r2, [r1, #0]
c0de4b5c:	78c9      	ldrb	r1, [r1, #3]
c0de4b5e:	9006      	str	r0, [sp, #24]
c0de4b60:	7978      	ldrb	r0, [r7, #5]
c0de4b62:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4b66:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4b6a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4b6e:	9005      	str	r0, [sp, #20]
c0de4b70:	4770      	bx	lr

c0de4b72 <OUTLINED_FUNCTION_1>:
c0de4b72:	7838      	ldrb	r0, [r7, #0]
c0de4b74:	7879      	ldrb	r1, [r7, #1]
c0de4b76:	78ba      	ldrb	r2, [r7, #2]
c0de4b78:	78fb      	ldrb	r3, [r7, #3]
c0de4b7a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b7e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4b82:	4639      	mov	r1, r7
c0de4b84:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4b88:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4b8c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4b8e:	7a78      	ldrb	r0, [r7, #9]
c0de4b90:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4b94:	788a      	ldrb	r2, [r1, #2]
c0de4b96:	78c9      	ldrb	r1, [r1, #3]
c0de4b98:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4b9c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4ba0:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4ba2:	7978      	ldrb	r0, [r7, #5]
c0de4ba4:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4ba8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4bac:	78b9      	ldrb	r1, [r7, #2]
c0de4bae:	78fa      	ldrb	r2, [r7, #3]
c0de4bb0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4bb4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4bb8:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4bba:	4770      	bx	lr

c0de4bbc <OUTLINED_FUNCTION_2>:
c0de4bbc:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4bc0:	9003      	str	r0, [sp, #12]
c0de4bc2:	2000      	movs	r0, #0
c0de4bc4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4bc8:	2001      	movs	r0, #1
c0de4bca:	f7ff bd19 	b.w	c0de4600 <getFreeContext>

c0de4bce <OUTLINED_FUNCTION_3>:
c0de4bce:	2114      	movs	r1, #20
c0de4bd0:	4698      	mov	r8, r3
c0de4bd2:	4617      	mov	r7, r2
c0de4bd4:	f002 bfee 	b.w	c0de7bb4 <__aeabi_memclr>

c0de4bd8 <OUTLINED_FUNCTION_4>:
c0de4bd8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bda:	f7ff bc7b 	b.w	c0de44d4 <nbgl_layoutDraw>

c0de4bde <OUTLINED_FUNCTION_5>:
c0de4bde:	2501      	movs	r5, #1
c0de4be0:	f00a 0003 	and.w	r0, sl, #3
c0de4be4:	2803      	cmp	r0, #3
c0de4be6:	7025      	strb	r5, [r4, #0]
c0de4be8:	7420      	strb	r0, [r4, #16]
c0de4bea:	4770      	bx	lr

c0de4bec <nbgl_useCaseHomeAndSettings>:
c0de4bec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4bf0:	4607      	mov	r7, r0
c0de4bf2:	4810      	ldr	r0, [pc, #64]	@ (c0de4c34 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4bf4:	f001 fd31 	bl	c0de665a <OUTLINED_FUNCTION_3>
c0de4bf8:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4bfc:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4bfe:	9d06      	ldr	r5, [sp, #24]
c0de4c00:	4628      	mov	r0, r5
c0de4c02:	f002 fccb 	bl	c0de759c <pic>
c0de4c06:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4c08:	9807      	ldr	r0, [sp, #28]
c0de4c0a:	f002 fcc7 	bl	c0de759c <pic>
c0de4c0e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4c10:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4c14:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4c16:	9908      	ldr	r1, [sp, #32]
c0de4c18:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de4c1c:	bf18      	it	ne
c0de4c1e:	2d00      	cmpne	r5, #0
c0de4c20:	d103      	bne.n	c0de4c2a <nbgl_useCaseHomeAndSettings+0x3e>
c0de4c22:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4c26:	f000 b843 	b.w	c0de4cb0 <startUseCaseHome>
c0de4c2a:	4640      	mov	r0, r8
c0de4c2c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4c30:	f000 b802 	b.w	c0de4c38 <startUseCaseSettingsAtPage>
c0de4c34:	00000750 	.word	0x00000750

c0de4c38 <startUseCaseSettingsAtPage>:
c0de4c38:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4c3a:	b08f      	sub	sp, #60	@ 0x3c
c0de4c3c:	4604      	mov	r4, r0
c0de4c3e:	a801      	add	r0, sp, #4
c0de4c40:	2138      	movs	r1, #56	@ 0x38
c0de4c42:	f002 ffb7 	bl	c0de7bb4 <__aeabi_memclr>
c0de4c46:	4e19      	ldr	r6, [pc, #100]	@ (c0de4cac <startUseCaseSettingsAtPage+0x74>)
c0de4c48:	eb09 0006 	add.w	r0, r9, r6
c0de4c4c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de4c50:	280f      	cmp	r0, #15
c0de4c52:	bf1e      	ittt	ne
c0de4c54:	eb09 0006 	addne.w	r0, r9, r6
c0de4c58:	210e      	movne	r1, #14
c0de4c5a:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de4c5e:	eb09 0006 	add.w	r0, r9, r6
c0de4c62:	2101      	movs	r1, #1
c0de4c64:	2700      	movs	r7, #0
c0de4c66:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4c6a:	ad01      	add	r5, sp, #4
c0de4c6c:	eb09 0006 	add.w	r0, r9, r6
c0de4c70:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de4c72:	7a01      	ldrb	r1, [r0, #8]
c0de4c74:	428f      	cmp	r7, r1
c0de4c76:	d20e      	bcs.n	c0de4c96 <startUseCaseSettingsAtPage+0x5e>
c0de4c78:	b279      	sxtb	r1, r7
c0de4c7a:	462a      	mov	r2, r5
c0de4c7c:	f000 fd06 	bl	c0de568c <getContentAtIdx>
c0de4c80:	f000 fd5e 	bl	c0de5740 <getContentNbElement>
c0de4c84:	eb09 0106 	add.w	r1, r9, r6
c0de4c88:	3701      	adds	r7, #1
c0de4c8a:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de4c8e:	4410      	add	r0, r2
c0de4c90:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de4c94:	e7ea      	b.n	c0de4c6c <startUseCaseSettingsAtPage+0x34>
c0de4c96:	eb09 0006 	add.w	r0, r9, r6
c0de4c9a:	2100      	movs	r1, #0
c0de4c9c:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de4ca0:	2000      	movs	r0, #0
c0de4ca2:	f000 ff57 	bl	c0de5b54 <displaySettingsPage>
c0de4ca6:	b00f      	add	sp, #60	@ 0x3c
c0de4ca8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4caa:	bf00      	nop
c0de4cac:	00000750 	.word	0x00000750

c0de4cb0 <startUseCaseHome>:
c0de4cb0:	b510      	push	{r4, lr}
c0de4cb2:	4821      	ldr	r0, [pc, #132]	@ (c0de4d38 <startUseCaseHome+0x88>)
c0de4cb4:	eb09 0100 	add.w	r1, r9, r0
c0de4cb8:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de4cbc:	290d      	cmp	r1, #13
c0de4cbe:	d009      	beq.n	c0de4cd4 <startUseCaseHome+0x24>
c0de4cc0:	290e      	cmp	r1, #14
c0de4cc2:	d114      	bne.n	c0de4cee <startUseCaseHome+0x3e>
c0de4cc4:	eb09 0100 	add.w	r1, r9, r0
c0de4cc8:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de4cca:	2102      	movs	r1, #2
c0de4ccc:	2a00      	cmp	r2, #0
c0de4cce:	bf08      	it	eq
c0de4cd0:	2101      	moveq	r1, #1
c0de4cd2:	e00d      	b.n	c0de4cf0 <startUseCaseHome+0x40>
c0de4cd4:	eb09 0200 	add.w	r2, r9, r0
c0de4cd8:	2102      	movs	r1, #2
c0de4cda:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de4cdc:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de4cde:	2c00      	cmp	r4, #0
c0de4ce0:	bf08      	it	eq
c0de4ce2:	2101      	moveq	r1, #1
c0de4ce4:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4ce8:	b133      	cbz	r3, c0de4cf8 <startUseCaseHome+0x48>
c0de4cea:	3101      	adds	r1, #1
c0de4cec:	e000      	b.n	c0de4cf0 <startUseCaseHome+0x40>
c0de4cee:	2100      	movs	r1, #0
c0de4cf0:	eb09 0200 	add.w	r2, r9, r0
c0de4cf4:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4cf8:	eb09 0200 	add.w	r2, r9, r0
c0de4cfc:	210c      	movs	r1, #12
c0de4cfe:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de4d02:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de4d06:	2103      	movs	r1, #3
c0de4d08:	2b00      	cmp	r3, #0
c0de4d0a:	bf08      	it	eq
c0de4d0c:	2102      	moveq	r1, #2
c0de4d0e:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4d12:	b124      	cbz	r4, c0de4d1e <startUseCaseHome+0x6e>
c0de4d14:	3101      	adds	r1, #1
c0de4d16:	eb09 0200 	add.w	r2, r9, r0
c0de4d1a:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4d1e:	eb09 0200 	add.w	r2, r9, r0
c0de4d22:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de4d24:	b11a      	cbz	r2, c0de4d2e <startUseCaseHome+0x7e>
c0de4d26:	4448      	add	r0, r9
c0de4d28:	3101      	adds	r1, #1
c0de4d2a:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4d2e:	2000      	movs	r0, #0
c0de4d30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4d34:	f000 bffe 	b.w	c0de5d34 <displayHomePage>
c0de4d38:	00000750 	.word	0x00000750

c0de4d3c <nbgl_useCaseReview>:
c0de4d3c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4d3e:	4614      	mov	r4, r2
c0de4d40:	460a      	mov	r2, r1
c0de4d42:	4601      	mov	r1, r0
c0de4d44:	9808      	ldr	r0, [sp, #32]
c0de4d46:	9003      	str	r0, [sp, #12]
c0de4d48:	9807      	ldr	r0, [sp, #28]
c0de4d4a:	9002      	str	r0, [sp, #8]
c0de4d4c:	9806      	ldr	r0, [sp, #24]
c0de4d4e:	e9cd 3000 	strd	r3, r0, [sp]
c0de4d52:	2002      	movs	r0, #2
c0de4d54:	4623      	mov	r3, r4
c0de4d56:	f000 f801 	bl	c0de4d5c <useCaseReview>
c0de4d5a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4d5c <useCaseReview>:
c0de4d5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4d60:	4607      	mov	r7, r0
c0de4d62:	4811      	ldr	r0, [pc, #68]	@ (c0de4da8 <useCaseReview+0x4c>)
c0de4d64:	4688      	mov	r8, r1
c0de4d66:	2140      	movs	r1, #64	@ 0x40
c0de4d68:	461d      	mov	r5, r3
c0de4d6a:	4614      	mov	r4, r2
c0de4d6c:	f001 fc6f 	bl	c0de664e <OUTLINED_FUNCTION_2>
c0de4d70:	9808      	ldr	r0, [sp, #32]
c0de4d72:	6530      	str	r0, [r6, #80]	@ 0x50
c0de4d74:	9807      	ldr	r0, [sp, #28]
c0de4d76:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4d78:	9906      	ldr	r1, [sp, #24]
c0de4d7a:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de4d7e:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de4d80:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4d82:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de4d86:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de4d8a:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de4d8c:	2104      	movs	r1, #4
c0de4d8e:	2800      	cmp	r0, #0
c0de4d90:	bf08      	it	eq
c0de4d92:	2103      	moveq	r1, #3
c0de4d94:	7a20      	ldrb	r0, [r4, #8]
c0de4d96:	4408      	add	r0, r1
c0de4d98:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de4d9c:	2000      	movs	r0, #0
c0de4d9e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4da2:	f000 b8d1 	b.w	c0de4f48 <displayReviewPage>
c0de4da6:	bf00      	nop
c0de4da8:	00000750 	.word	0x00000750

c0de4dac <nbgl_useCaseAdvancedReview>:
c0de4dac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4db0:	b088      	sub	sp, #32
c0de4db2:	4617      	mov	r7, r2
c0de4db4:	460a      	mov	r2, r1
c0de4db6:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4dba:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de4dbe:	4606      	mov	r6, r0
c0de4dc0:	f1ba 0f00 	cmp.w	sl, #0
c0de4dc4:	d013      	beq.n	c0de4dee <nbgl_useCaseAdvancedReview+0x42>
c0de4dc6:	f8da 0000 	ldr.w	r0, [sl]
c0de4dca:	9107      	str	r1, [sp, #28]
c0de4dcc:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de4dd0:	2808      	cmp	r0, #8
c0de4dd2:	d018      	beq.n	c0de4e06 <nbgl_useCaseAdvancedReview+0x5a>
c0de4dd4:	b9e0      	cbnz	r0, c0de4e10 <nbgl_useCaseAdvancedReview+0x64>
c0de4dd6:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4dda:	b928      	cbnz	r0, c0de4de8 <nbgl_useCaseAdvancedReview+0x3c>
c0de4ddc:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4de0:	b910      	cbnz	r0, c0de4de8 <nbgl_useCaseAdvancedReview+0x3c>
c0de4de2:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de4de6:	b110      	cbz	r0, c0de4dee <nbgl_useCaseAdvancedReview+0x42>
c0de4de8:	4698      	mov	r8, r3
c0de4dea:	4615      	mov	r5, r2
c0de4dec:	e014      	b.n	c0de4e18 <nbgl_useCaseAdvancedReview+0x6c>
c0de4dee:	e9cd 3500 	strd	r3, r5, [sp]
c0de4df2:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de4df6:	2002      	movs	r0, #2
c0de4df8:	4631      	mov	r1, r6
c0de4dfa:	463b      	mov	r3, r7
c0de4dfc:	f7ff ffae 	bl	c0de4d5c <useCaseReview>
c0de4e00:	b008      	add	sp, #32
c0de4e02:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4e06:	4698      	mov	r8, r3
c0de4e08:	4615      	mov	r5, r2
c0de4e0a:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de4e0e:	e003      	b.n	c0de4e18 <nbgl_useCaseAdvancedReview+0x6c>
c0de4e10:	4698      	mov	r8, r3
c0de4e12:	4615      	mov	r5, r2
c0de4e14:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de4e18:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de4e88 <nbgl_useCaseAdvancedReview+0xdc>
c0de4e1c:	212c      	movs	r1, #44	@ 0x2c
c0de4e1e:	eb09 040b 	add.w	r4, r9, fp
c0de4e22:	4620      	mov	r0, r4
c0de4e24:	f002 fec6 	bl	c0de7bb4 <__aeabi_memclr>
c0de4e28:	2002      	movs	r0, #2
c0de4e2a:	462a      	mov	r2, r5
c0de4e2c:	60a5      	str	r5, [r4, #8]
c0de4e2e:	9d06      	ldr	r5, [sp, #24]
c0de4e30:	463b      	mov	r3, r7
c0de4e32:	60e7      	str	r7, [r4, #12]
c0de4e34:	9f05      	ldr	r7, [sp, #20]
c0de4e36:	4641      	mov	r1, r8
c0de4e38:	f8c4 8010 	str.w	r8, [r4, #16]
c0de4e3c:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4e40:	6066      	str	r6, [r4, #4]
c0de4e42:	f809 000b 	strb.w	r0, [r9, fp]
c0de4e46:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de4e4a:	6167      	str	r7, [r4, #20]
c0de4e4c:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de4e50:	f8c4 8020 	str.w	r8, [r4, #32]
c0de4e54:	b120      	cbz	r0, c0de4e60 <nbgl_useCaseAdvancedReview+0xb4>
c0de4e56:	b008      	add	sp, #32
c0de4e58:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e5c:	f000 b816 	b.w	c0de4e8c <displayPrelude>
c0de4e60:	f89a 0000 	ldrb.w	r0, [sl]
c0de4e64:	f010 0f16 	tst.w	r0, #22
c0de4e68:	d102      	bne.n	c0de4e70 <nbgl_useCaseAdvancedReview+0xc4>
c0de4e6a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4e6e:	b120      	cbz	r0, c0de4e7a <nbgl_useCaseAdvancedReview+0xce>
c0de4e70:	b008      	add	sp, #32
c0de4e72:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e76:	f000 b815 	b.w	c0de4ea4 <displayInitialWarning>
c0de4e7a:	e9cd 1700 	strd	r1, r7, [sp]
c0de4e7e:	2002      	movs	r0, #2
c0de4e80:	4631      	mov	r1, r6
c0de4e82:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de4e86:	e7b9      	b.n	c0de4dfc <nbgl_useCaseAdvancedReview+0x50>
c0de4e88:	00000750 	.word	0x00000750

c0de4e8c <displayPrelude>:
c0de4e8c:	4804      	ldr	r0, [pc, #16]	@ (c0de4ea0 <displayPrelude+0x14>)
c0de4e8e:	2101      	movs	r1, #1
c0de4e90:	4448      	add	r0, r9
c0de4e92:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de4e96:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de4e9a:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4e9c:	f001 b836 	b.w	c0de5f0c <displayWarningStep>
c0de4ea0:	00000750 	.word	0x00000750

c0de4ea4 <displayInitialWarning>:
c0de4ea4:	4804      	ldr	r0, [pc, #16]	@ (c0de4eb8 <displayInitialWarning+0x14>)
c0de4ea6:	2100      	movs	r1, #0
c0de4ea8:	4448      	add	r0, r9
c0de4eaa:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de4eae:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4eb2:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4eb4:	f001 b82a 	b.w	c0de5f0c <displayWarningStep>
c0de4eb8:	00000750 	.word	0x00000750

c0de4ebc <nbgl_useCaseReviewBlindSigning>:
c0de4ebc:	b5b0      	push	{r4, r5, r7, lr}
c0de4ebe:	b086      	sub	sp, #24
c0de4ec0:	4d06      	ldr	r5, [pc, #24]	@ (c0de4edc <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4ec2:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4ec4:	447d      	add	r5, pc
c0de4ec6:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4eca:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4ecc:	9401      	str	r4, [sp, #4]
c0de4ece:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4ed0:	9400      	str	r4, [sp, #0]
c0de4ed2:	f7ff ff6b 	bl	c0de4dac <nbgl_useCaseAdvancedReview>
c0de4ed6:	b006      	add	sp, #24
c0de4ed8:	bdb0      	pop	{r4, r5, r7, pc}
c0de4eda:	bf00      	nop
c0de4edc:	000041bc 	.word	0x000041bc

c0de4ee0 <nbgl_useCaseAddressReview>:
c0de4ee0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4ee4:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4f44 <nbgl_useCaseAddressReview+0x64>
c0de4ee8:	460c      	mov	r4, r1
c0de4eea:	4607      	mov	r7, r0
c0de4eec:	2140      	movs	r1, #64	@ 0x40
c0de4eee:	469a      	mov	sl, r3
c0de4ef0:	4616      	mov	r6, r2
c0de4ef2:	eb09 0508 	add.w	r5, r9, r8
c0de4ef6:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de4efa:	f002 fe5b 	bl	c0de7bb4 <__aeabi_memclr>
c0de4efe:	2004      	movs	r0, #4
c0de4f00:	656f      	str	r7, [r5, #84]	@ 0x54
c0de4f02:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de4f06:	9808      	ldr	r0, [sp, #32]
c0de4f08:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de4f0c:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de4f0e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4f10:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de4f12:	2105      	movs	r1, #5
c0de4f14:	2800      	cmp	r0, #0
c0de4f16:	bf08      	it	eq
c0de4f18:	2104      	moveq	r1, #4
c0de4f1a:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de4f1e:	b15c      	cbz	r4, c0de4f38 <nbgl_useCaseAddressReview+0x58>
c0de4f20:	4620      	mov	r0, r4
c0de4f22:	eb09 0508 	add.w	r5, r9, r8
c0de4f26:	f002 fb39 	bl	c0de759c <pic>
c0de4f2a:	6428      	str	r0, [r5, #64]	@ 0x40
c0de4f2c:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de4f30:	7a21      	ldrb	r1, [r4, #8]
c0de4f32:	4408      	add	r0, r1
c0de4f34:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de4f38:	2000      	movs	r0, #0
c0de4f3a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4f3e:	f000 b803 	b.w	c0de4f48 <displayReviewPage>
c0de4f42:	bf00      	nop
c0de4f44:	00000750 	.word	0x00000750

c0de4f48 <displayReviewPage>:
c0de4f48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4f4a:	b08b      	sub	sp, #44	@ 0x2c
c0de4f4c:	4e5d      	ldr	r6, [pc, #372]	@ (c0de50c4 <displayReviewPage+0x17c>)
c0de4f4e:	4604      	mov	r4, r0
c0de4f50:	2000      	movs	r0, #0
c0de4f52:	2201      	movs	r2, #1
c0de4f54:	2702      	movs	r7, #2
c0de4f56:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4f5a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4f5e:	eb09 0306 	add.w	r3, r9, r6
c0de4f62:	6398      	str	r0, [r3, #56]	@ 0x38
c0de4f64:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de4f66:	2800      	cmp	r0, #0
c0de4f68:	bf08      	it	eq
c0de4f6a:	22ff      	moveq	r2, #255	@ 0xff
c0de4f6c:	bf08      	it	eq
c0de4f6e:	2701      	moveq	r7, #1
c0de4f70:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de4f74:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de4f78:	1e9d      	subs	r5, r3, #2
c0de4f7a:	b2ed      	uxtb	r5, r5
c0de4f7c:	42a9      	cmp	r1, r5
c0de4f7e:	da06      	bge.n	c0de4f8e <displayReviewPage+0x46>
c0de4f80:	42b9      	cmp	r1, r7
c0de4f82:	da0b      	bge.n	c0de4f9c <displayReviewPage+0x54>
c0de4f84:	2900      	cmp	r1, #0
c0de4f86:	d041      	beq.n	c0de500c <displayReviewPage+0xc4>
c0de4f88:	428a      	cmp	r2, r1
c0de4f8a:	d044      	beq.n	c0de5016 <displayReviewPage+0xce>
c0de4f8c:	e044      	b.n	c0de5018 <displayReviewPage+0xd0>
c0de4f8e:	d110      	bne.n	c0de4fb2 <displayReviewPage+0x6a>
c0de4f90:	a908      	add	r1, sp, #32
c0de4f92:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4f94:	2001      	movs	r0, #1
c0de4f96:	f001 f885 	bl	c0de60a4 <getLastPageInfo>
c0de4f9a:	e03d      	b.n	c0de5018 <displayReviewPage+0xd0>
c0de4f9c:	eb09 0006 	add.w	r0, r9, r6
c0de4fa0:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de4fa2:	b18d      	cbz	r5, c0de4fc8 <displayReviewPage+0x80>
c0de4fa4:	42b9      	cmp	r1, r7
c0de4fa6:	d10f      	bne.n	c0de4fc8 <displayReviewPage+0x80>
c0de4fa8:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4faa:	4847      	ldr	r0, [pc, #284]	@ (c0de50c8 <displayReviewPage+0x180>)
c0de4fac:	4478      	add	r0, pc
c0de4fae:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4fb0:	e033      	b.n	c0de501a <displayReviewPage+0xd2>
c0de4fb2:	1e58      	subs	r0, r3, #1
c0de4fb4:	b2c0      	uxtb	r0, r0
c0de4fb6:	4281      	cmp	r1, r0
c0de4fb8:	d12e      	bne.n	c0de5018 <displayReviewPage+0xd0>
c0de4fba:	a908      	add	r1, sp, #32
c0de4fbc:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4fbe:	2000      	movs	r0, #0
c0de4fc0:	2500      	movs	r5, #0
c0de4fc2:	f001 f86f 	bl	c0de60a4 <getLastPageInfo>
c0de4fc6:	e028      	b.n	c0de501a <displayReviewPage+0xd2>
c0de4fc8:	eb09 0006 	add.w	r0, r9, r6
c0de4fcc:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de4fd0:	06d2      	lsls	r2, r2, #27
c0de4fd2:	d535      	bpl.n	c0de5040 <displayReviewPage+0xf8>
c0de4fd4:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de4fd8:	bb90      	cbnz	r0, c0de5040 <displayReviewPage+0xf8>
c0de4fda:	42b9      	cmp	r1, r7
c0de4fdc:	dc05      	bgt.n	c0de4fea <displayReviewPage+0xa2>
c0de4fde:	eb09 0006 	add.w	r0, r9, r6
c0de4fe2:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de4fe6:	2808      	cmp	r0, #8
c0de4fe8:	d12a      	bne.n	c0de5040 <displayReviewPage+0xf8>
c0de4fea:	2000      	movs	r0, #0
c0de4fec:	9006      	str	r0, [sp, #24]
c0de4fee:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4ff2:	eb09 0006 	add.w	r0, r9, r6
c0de4ff6:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de4ffa:	f004 0008 	and.w	r0, r4, #8
c0de4ffe:	2a01      	cmp	r2, #1
c0de5000:	d001      	beq.n	c0de5006 <displayReviewPage+0xbe>
c0de5002:	2901      	cmp	r1, #1
c0de5004:	db43      	blt.n	c0de508e <displayReviewPage+0x146>
c0de5006:	f040 0003 	orr.w	r0, r0, #3
c0de500a:	e042      	b.n	c0de5092 <displayReviewPage+0x14a>
c0de500c:	eb09 0006 	add.w	r0, r9, r6
c0de5010:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de5014:	9108      	str	r1, [sp, #32]
c0de5016:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5018:	2500      	movs	r5, #0
c0de501a:	2000      	movs	r0, #0
c0de501c:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de501e:	9908      	ldr	r1, [sp, #32]
c0de5020:	4e2e      	ldr	r6, [pc, #184]	@ (c0de50dc <displayReviewPage+0x194>)
c0de5022:	b2c0      	uxtb	r0, r0
c0de5024:	2300      	movs	r3, #0
c0de5026:	9002      	str	r0, [sp, #8]
c0de5028:	4620      	mov	r0, r4
c0de502a:	447e      	add	r6, pc
c0de502c:	e9cd 6300 	strd	r6, r3, [sp]
c0de5030:	462b      	mov	r3, r5
c0de5032:	f000 f875 	bl	c0de5120 <drawStep>
c0de5036:	b00b      	add	sp, #44	@ 0x2c
c0de5038:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de503c:	f002 b89f 	b.w	c0de717e <nbgl_refresh>
c0de5040:	2200      	movs	r2, #0
c0de5042:	eb09 0006 	add.w	r0, r9, r6
c0de5046:	1bcf      	subs	r7, r1, r7
c0de5048:	f10d 0c0c 	add.w	ip, sp, #12
c0de504c:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de5050:	f88d 200c 	strb.w	r2, [sp, #12]
c0de5054:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5056:	ab08      	add	r3, sp, #32
c0de5058:	aa07      	add	r2, sp, #28
c0de505a:	2d00      	cmp	r5, #0
c0de505c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de5060:	bf18      	it	ne
c0de5062:	3f01      	subne	r7, #1
c0de5064:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5066:	b2f9      	uxtb	r1, r7
c0de5068:	ab09      	add	r3, sp, #36	@ 0x24
c0de506a:	f000 fcf7 	bl	c0de5a5c <getPairData>
c0de506e:	9807      	ldr	r0, [sp, #28]
c0de5070:	b140      	cbz	r0, c0de5084 <displayReviewPage+0x13c>
c0de5072:	eb09 0006 	add.w	r0, r9, r6
c0de5076:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de507a:	4917      	ldr	r1, [pc, #92]	@ (c0de50d8 <displayReviewPage+0x190>)
c0de507c:	4479      	add	r1, pc
c0de507e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5080:	2001      	movs	r0, #1
c0de5082:	e002      	b.n	c0de508a <displayReviewPage+0x142>
c0de5084:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de5088:	0040      	lsls	r0, r0, #1
c0de508a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de508c:	e7c6      	b.n	c0de501c <displayReviewPage+0xd4>
c0de508e:	f040 0001 	orr.w	r0, r0, #1
c0de5092:	490e      	ldr	r1, [pc, #56]	@ (c0de50cc <displayReviewPage+0x184>)
c0de5094:	2200      	movs	r2, #0
c0de5096:	4479      	add	r1, pc
c0de5098:	9103      	str	r1, [sp, #12]
c0de509a:	490d      	ldr	r1, [pc, #52]	@ (c0de50d0 <displayReviewPage+0x188>)
c0de509c:	4479      	add	r1, pc
c0de509e:	9105      	str	r1, [sp, #20]
c0de50a0:	2100      	movs	r1, #0
c0de50a2:	9100      	str	r1, [sp, #0]
c0de50a4:	490b      	ldr	r1, [pc, #44]	@ (c0de50d4 <displayReviewPage+0x18c>)
c0de50a6:	ab03      	add	r3, sp, #12
c0de50a8:	4479      	add	r1, pc
c0de50aa:	f7ff fbb5 	bl	c0de4818 <nbgl_stepDrawCenteredInfo>
c0de50ae:	eb09 0406 	add.w	r4, r9, r6
c0de50b2:	f002 f864 	bl	c0de717e <nbgl_refresh>
c0de50b6:	2001      	movs	r0, #1
c0de50b8:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de50bc:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de50c0:	b00b      	add	sp, #44	@ 0x2c
c0de50c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de50c4:	00000750 	.word	0x00000750
c0de50c8:	0000314e 	.word	0x0000314e
c0de50cc:	00002e34 	.word	0x00002e34
c0de50d0:	00002c62 	.word	0x00002c62
c0de50d4:	00001181 	.word	0x00001181
c0de50d8:	00001265 	.word	0x00001265
c0de50dc:	0000132b 	.word	0x0000132b

c0de50e0 <nbgl_useCaseStatus>:
c0de50e0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de50e2:	4605      	mov	r5, r0
c0de50e4:	480c      	ldr	r0, [pc, #48]	@ (c0de5118 <nbgl_useCaseStatus+0x38>)
c0de50e6:	2140      	movs	r1, #64	@ 0x40
c0de50e8:	4614      	mov	r4, r2
c0de50ea:	f001 fab0 	bl	c0de664e <OUTLINED_FUNCTION_2>
c0de50ee:	2009      	movs	r0, #9
c0de50f0:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de50f2:	462a      	mov	r2, r5
c0de50f4:	2300      	movs	r3, #0
c0de50f6:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de50fa:	2001      	movs	r0, #1
c0de50fc:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5100:	2000      	movs	r0, #0
c0de5102:	4906      	ldr	r1, [pc, #24]	@ (c0de511c <nbgl_useCaseStatus+0x3c>)
c0de5104:	9002      	str	r0, [sp, #8]
c0de5106:	4479      	add	r1, pc
c0de5108:	e9cd 1000 	strd	r1, r0, [sp]
c0de510c:	2040      	movs	r0, #64	@ 0x40
c0de510e:	2100      	movs	r1, #0
c0de5110:	f000 f806 	bl	c0de5120 <drawStep>
c0de5114:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5116:	bf00      	nop
c0de5118:	00000750 	.word	0x00000750
c0de511c:	0000019f 	.word	0x0000019f

c0de5120 <drawStep>:
c0de5120:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5124:	b09a      	sub	sp, #104	@ 0x68
c0de5126:	4688      	mov	r8, r1
c0de5128:	4604      	mov	r4, r0
c0de512a:	a80c      	add	r0, sp, #48	@ 0x30
c0de512c:	2138      	movs	r1, #56	@ 0x38
c0de512e:	461d      	mov	r5, r3
c0de5130:	4616      	mov	r6, r2
c0de5132:	f002 fd3f 	bl	c0de7bb4 <__aeabi_memclr>
c0de5136:	2700      	movs	r7, #0
c0de5138:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de513c:	4856      	ldr	r0, [pc, #344]	@ (c0de5298 <drawStep+0x178>)
c0de513e:	4478      	add	r0, pc
c0de5140:	f002 fa2c 	bl	c0de759c <pic>
c0de5144:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de5294 <drawStep+0x174>
c0de5148:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de514c:	9709      	str	r7, [sp, #36]	@ 0x24
c0de514e:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de5152:	eb09 000b 	add.w	r0, r9, fp
c0de5156:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de515a:	2802      	cmp	r0, #2
c0de515c:	d30b      	bcc.n	c0de5176 <drawStep+0x56>
c0de515e:	eb09 010b 	add.w	r1, r9, fp
c0de5162:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5166:	b129      	cbz	r1, c0de5174 <drawStep+0x54>
c0de5168:	3801      	subs	r0, #1
c0de516a:	2703      	movs	r7, #3
c0de516c:	4288      	cmp	r0, r1
c0de516e:	bf08      	it	eq
c0de5170:	2702      	moveq	r7, #2
c0de5172:	e000      	b.n	c0de5176 <drawStep+0x56>
c0de5174:	2701      	movs	r7, #1
c0de5176:	eb09 000b 	add.w	r0, r9, fp
c0de517a:	ea47 0204 	orr.w	r2, r7, r4
c0de517e:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de5182:	4614      	mov	r4, r2
c0de5184:	2901      	cmp	r1, #1
c0de5186:	bf88      	it	hi
c0de5188:	f044 0402 	orrhi.w	r4, r4, #2
c0de518c:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de518e:	2900      	cmp	r1, #0
c0de5190:	bf08      	it	eq
c0de5192:	4614      	moveq	r4, r2
c0de5194:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5198:	2806      	cmp	r0, #6
c0de519a:	f040 0108 	orr.w	r1, r0, #8
c0de519e:	bf18      	it	ne
c0de51a0:	4614      	movne	r4, r2
c0de51a2:	2909      	cmp	r1, #9
c0de51a4:	bf0c      	ite	eq
c0de51a6:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de51aa:	f04f 0a00 	movne.w	sl, #0
c0de51ae:	280a      	cmp	r0, #10
c0de51b0:	d105      	bne.n	c0de51be <drawStep+0x9e>
c0de51b2:	eb09 000b 	add.w	r0, r9, fp
c0de51b6:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de51b8:	b108      	cbz	r0, c0de51be <drawStep+0x9e>
c0de51ba:	f7ff fc53 	bl	c0de4a64 <nbgl_stepRelease>
c0de51be:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de51c0:	b1b6      	cbz	r6, c0de51f0 <drawStep+0xd0>
c0de51c2:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de51c4:	f1b8 0f00 	cmp.w	r8, #0
c0de51c8:	d12c      	bne.n	c0de5224 <drawStep+0x104>
c0de51ca:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de51cc:	2802      	cmp	r0, #2
c0de51ce:	d029      	beq.n	c0de5224 <drawStep+0x104>
c0de51d0:	2201      	movs	r2, #1
c0de51d2:	4633      	mov	r3, r6
c0de51d4:	2801      	cmp	r0, #1
c0de51d6:	bf08      	it	eq
c0de51d8:	2202      	moveq	r2, #2
c0de51da:	4620      	mov	r0, r4
c0de51dc:	2d00      	cmp	r5, #0
c0de51de:	bf08      	it	eq
c0de51e0:	462a      	moveq	r2, r5
c0de51e2:	e9cd 5200 	strd	r5, r2, [sp]
c0de51e6:	9702      	str	r7, [sp, #8]
c0de51e8:	4652      	mov	r2, sl
c0de51ea:	f7ff f9cf 	bl	c0de458c <nbgl_stepDrawText>
c0de51ee:	e043      	b.n	c0de5278 <drawStep+0x158>
c0de51f0:	eb09 000b 	add.w	r0, r9, fp
c0de51f4:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de51f8:	a903      	add	r1, sp, #12
c0de51fa:	aa0c      	add	r2, sp, #48	@ 0x30
c0de51fc:	f000 fbea 	bl	c0de59d4 <getContentElemAtIdx>
c0de5200:	b330      	cbz	r0, c0de5250 <drawStep+0x130>
c0de5202:	7801      	ldrb	r1, [r0, #0]
c0de5204:	2400      	movs	r4, #0
c0de5206:	290a      	cmp	r1, #10
c0de5208:	d024      	beq.n	c0de5254 <drawStep+0x134>
c0de520a:	2909      	cmp	r1, #9
c0de520c:	d135      	bne.n	c0de527a <drawStep+0x15a>
c0de520e:	f001 fa32 	bl	c0de6676 <OUTLINED_FUNCTION_5>
c0de5212:	4922      	ldr	r1, [pc, #136]	@ (c0de529c <drawStep+0x17c>)
c0de5214:	4479      	add	r1, pc
c0de5216:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5218:	7941      	ldrb	r1, [r0, #5]
c0de521a:	7980      	ldrb	r0, [r0, #6]
c0de521c:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de5220:	1c48      	adds	r0, r1, #1
c0de5222:	e020      	b.n	c0de5266 <drawStep+0x146>
c0de5224:	2000      	movs	r0, #0
c0de5226:	9603      	str	r6, [sp, #12]
c0de5228:	f8cd 8014 	str.w	r8, [sp, #20]
c0de522c:	9504      	str	r5, [sp, #16]
c0de522e:	4652      	mov	r2, sl
c0de5230:	f88d 0018 	strb.w	r0, [sp, #24]
c0de5234:	eb09 000b 	add.w	r0, r9, fp
c0de5238:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de523a:	4328      	orrs	r0, r5
c0de523c:	bf18      	it	ne
c0de523e:	2001      	movne	r0, #1
c0de5240:	f88d 0019 	strb.w	r0, [sp, #25]
c0de5244:	9700      	str	r7, [sp, #0]
c0de5246:	ab03      	add	r3, sp, #12
c0de5248:	4620      	mov	r0, r4
c0de524a:	f7ff fae5 	bl	c0de4818 <nbgl_stepDrawCenteredInfo>
c0de524e:	e013      	b.n	c0de5278 <drawStep+0x158>
c0de5250:	2400      	movs	r4, #0
c0de5252:	e012      	b.n	c0de527a <drawStep+0x15a>
c0de5254:	f001 fa0f 	bl	c0de6676 <OUTLINED_FUNCTION_5>
c0de5258:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de525c:	4910      	ldr	r1, [pc, #64]	@ (c0de52a0 <drawStep+0x180>)
c0de525e:	7a00      	ldrb	r0, [r0, #8]
c0de5260:	4479      	add	r1, pc
c0de5262:	3001      	adds	r0, #1
c0de5264:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5266:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de526a:	4651      	mov	r1, sl
c0de526c:	463b      	mov	r3, r7
c0de526e:	480d      	ldr	r0, [pc, #52]	@ (c0de52a4 <drawStep+0x184>)
c0de5270:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5272:	4478      	add	r0, pc
c0de5274:	f7ff fb60 	bl	c0de4938 <nbgl_stepDrawMenuList>
c0de5278:	4604      	mov	r4, r0
c0de527a:	eb09 000b 	add.w	r0, r9, fp
c0de527e:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5282:	280a      	cmp	r0, #10
c0de5284:	bf04      	itt	eq
c0de5286:	eb09 000b 	addeq.w	r0, r9, fp
c0de528a:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de528c:	b01a      	add	sp, #104	@ 0x68
c0de528e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5292:	bf00      	nop
c0de5294:	00000750 	.word	0x00000750
c0de5298:	000013a3 	.word	0x000013a3
c0de529c:	000012dd 	.word	0x000012dd
c0de52a0:	00001291 	.word	0x00001291
c0de52a4:	000012e3 	.word	0x000012e3

c0de52a8 <statusButtonCallback>:
c0de52a8:	f041 0004 	orr.w	r0, r1, #4
c0de52ac:	2804      	cmp	r0, #4
c0de52ae:	d001      	beq.n	c0de52b4 <statusButtonCallback+0xc>
c0de52b0:	2901      	cmp	r1, #1
c0de52b2:	d104      	bne.n	c0de52be <statusButtonCallback+0x16>
c0de52b4:	4802      	ldr	r0, [pc, #8]	@ (c0de52c0 <statusButtonCallback+0x18>)
c0de52b6:	4448      	add	r0, r9
c0de52b8:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de52ba:	b100      	cbz	r0, c0de52be <statusButtonCallback+0x16>
c0de52bc:	4700      	bx	r0
c0de52be:	4770      	bx	lr
c0de52c0:	00000750 	.word	0x00000750

c0de52c4 <nbgl_useCaseReviewStatus>:
c0de52c4:	460a      	mov	r2, r1
c0de52c6:	b198      	cbz	r0, c0de52f0 <nbgl_useCaseReviewStatus+0x2c>
c0de52c8:	2801      	cmp	r0, #1
c0de52ca:	d016      	beq.n	c0de52fa <nbgl_useCaseReviewStatus+0x36>
c0de52cc:	2802      	cmp	r0, #2
c0de52ce:	d019      	beq.n	c0de5304 <nbgl_useCaseReviewStatus+0x40>
c0de52d0:	2803      	cmp	r0, #3
c0de52d2:	d01c      	beq.n	c0de530e <nbgl_useCaseReviewStatus+0x4a>
c0de52d4:	2804      	cmp	r0, #4
c0de52d6:	d01f      	beq.n	c0de5318 <nbgl_useCaseReviewStatus+0x54>
c0de52d8:	2807      	cmp	r0, #7
c0de52da:	d022      	beq.n	c0de5322 <nbgl_useCaseReviewStatus+0x5e>
c0de52dc:	2806      	cmp	r0, #6
c0de52de:	d025      	beq.n	c0de532c <nbgl_useCaseReviewStatus+0x68>
c0de52e0:	2805      	cmp	r0, #5
c0de52e2:	bf18      	it	ne
c0de52e4:	4770      	bxne	lr
c0de52e6:	4815      	ldr	r0, [pc, #84]	@ (c0de533c <nbgl_useCaseReviewStatus+0x78>)
c0de52e8:	2100      	movs	r1, #0
c0de52ea:	4478      	add	r0, pc
c0de52ec:	f7ff bef8 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de52f0:	4813      	ldr	r0, [pc, #76]	@ (c0de5340 <nbgl_useCaseReviewStatus+0x7c>)
c0de52f2:	2101      	movs	r1, #1
c0de52f4:	4478      	add	r0, pc
c0de52f6:	f7ff bef3 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de52fa:	4812      	ldr	r0, [pc, #72]	@ (c0de5344 <nbgl_useCaseReviewStatus+0x80>)
c0de52fc:	2100      	movs	r1, #0
c0de52fe:	4478      	add	r0, pc
c0de5300:	f7ff beee 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de5304:	4810      	ldr	r0, [pc, #64]	@ (c0de5348 <nbgl_useCaseReviewStatus+0x84>)
c0de5306:	2101      	movs	r1, #1
c0de5308:	4478      	add	r0, pc
c0de530a:	f7ff bee9 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de530e:	480f      	ldr	r0, [pc, #60]	@ (c0de534c <nbgl_useCaseReviewStatus+0x88>)
c0de5310:	2100      	movs	r1, #0
c0de5312:	4478      	add	r0, pc
c0de5314:	f7ff bee4 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de5318:	4807      	ldr	r0, [pc, #28]	@ (c0de5338 <nbgl_useCaseReviewStatus+0x74>)
c0de531a:	2101      	movs	r1, #1
c0de531c:	4478      	add	r0, pc
c0de531e:	f7ff bedf 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de5322:	480c      	ldr	r0, [pc, #48]	@ (c0de5354 <nbgl_useCaseReviewStatus+0x90>)
c0de5324:	2100      	movs	r1, #0
c0de5326:	4478      	add	r0, pc
c0de5328:	f7ff beda 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de532c:	4808      	ldr	r0, [pc, #32]	@ (c0de5350 <nbgl_useCaseReviewStatus+0x8c>)
c0de532e:	2101      	movs	r1, #1
c0de5330:	4478      	add	r0, pc
c0de5332:	f7ff bed5 	b.w	c0de50e0 <nbgl_useCaseStatus>
c0de5336:	bf00      	nop
c0de5338:	00002b79 	.word	0x00002b79
c0de533c:	00002bcd 	.word	0x00002bcd
c0de5340:	00002c5d 	.word	0x00002c5d
c0de5344:	00002e29 	.word	0x00002e29
c0de5348:	00002cbc 	.word	0x00002cbc
c0de534c:	00002db8 	.word	0x00002db8
c0de5350:	00002be1 	.word	0x00002be1
c0de5354:	00002d1b 	.word	0x00002d1b

c0de5358 <displayStreamingReviewPage>:
c0de5358:	b570      	push	{r4, r5, r6, lr}
c0de535a:	b08c      	sub	sp, #48	@ 0x30
c0de535c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de54c8 <displayStreamingReviewPage+0x170>)
c0de535e:	2100      	movs	r1, #0
c0de5360:	4604      	mov	r4, r0
c0de5362:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5366:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de536a:	eb09 0005 	add.w	r0, r9, r5
c0de536e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5370:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5374:	2806      	cmp	r0, #6
c0de5376:	d015      	beq.n	c0de53a4 <displayStreamingReviewPage+0x4c>
c0de5378:	2805      	cmp	r0, #5
c0de537a:	d13d      	bne.n	c0de53f8 <displayStreamingReviewPage+0xa0>
c0de537c:	eb09 0205 	add.w	r2, r9, r5
c0de5380:	2101      	movs	r1, #1
c0de5382:	2302      	movs	r3, #2
c0de5384:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de5386:	2800      	cmp	r0, #0
c0de5388:	bf08      	it	eq
c0de538a:	21ff      	moveq	r1, #255	@ 0xff
c0de538c:	bf08      	it	eq
c0de538e:	2301      	moveq	r3, #1
c0de5390:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5394:	4293      	cmp	r3, r2
c0de5396:	dd3b      	ble.n	c0de5410 <displayStreamingReviewPage+0xb8>
c0de5398:	b2d3      	uxtb	r3, r2
c0de539a:	2b00      	cmp	r3, #0
c0de539c:	d063      	beq.n	c0de5466 <displayStreamingReviewPage+0x10e>
c0de539e:	4291      	cmp	r1, r2
c0de53a0:	d066      	beq.n	c0de5470 <displayStreamingReviewPage+0x118>
c0de53a2:	e066      	b.n	c0de5472 <displayStreamingReviewPage+0x11a>
c0de53a4:	eb09 0005 	add.w	r0, r9, r5
c0de53a8:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de53ac:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de53ae:	7a02      	ldrb	r2, [r0, #8]
c0de53b0:	4291      	cmp	r1, r2
c0de53b2:	da2d      	bge.n	c0de5410 <displayStreamingReviewPage+0xb8>
c0de53b4:	eb09 0205 	add.w	r2, r9, r5
c0de53b8:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de53ba:	b3cb      	cbz	r3, c0de5430 <displayStreamingReviewPage+0xd8>
c0de53bc:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de53c0:	bbb2      	cbnz	r2, c0de5430 <displayStreamingReviewPage+0xd8>
c0de53c2:	eb09 0205 	add.w	r2, r9, r5
c0de53c6:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de53ca:	2a01      	cmp	r2, #1
c0de53cc:	d807      	bhi.n	c0de53de <displayStreamingReviewPage+0x86>
c0de53ce:	2900      	cmp	r1, #0
c0de53d0:	dc05      	bgt.n	c0de53de <displayStreamingReviewPage+0x86>
c0de53d2:	eb09 0305 	add.w	r3, r9, r5
c0de53d6:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de53da:	2b08      	cmp	r3, #8
c0de53dc:	d128      	bne.n	c0de5430 <displayStreamingReviewPage+0xd8>
c0de53de:	2000      	movs	r0, #0
c0de53e0:	9007      	str	r0, [sp, #28]
c0de53e2:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de53e6:	f004 0008 	and.w	r0, r4, #8
c0de53ea:	2a01      	cmp	r2, #1
c0de53ec:	d001      	beq.n	c0de53f2 <displayStreamingReviewPage+0x9a>
c0de53ee:	2901      	cmp	r1, #1
c0de53f0:	db50      	blt.n	c0de5494 <displayStreamingReviewPage+0x13c>
c0de53f2:	f040 0003 	orr.w	r0, r0, #3
c0de53f6:	e04f      	b.n	c0de5498 <displayStreamingReviewPage+0x140>
c0de53f8:	eb09 0005 	add.w	r0, r9, r5
c0de53fc:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5400:	b180      	cbz	r0, c0de5424 <displayStreamingReviewPage+0xcc>
c0de5402:	a909      	add	r1, sp, #36	@ 0x24
c0de5404:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5406:	2000      	movs	r0, #0
c0de5408:	2500      	movs	r5, #0
c0de540a:	f000 fe4b 	bl	c0de60a4 <getLastPageInfo>
c0de540e:	e031      	b.n	c0de5474 <displayStreamingReviewPage+0x11c>
c0de5410:	eb09 0005 	add.w	r0, r9, r5
c0de5414:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de5416:	2900      	cmp	r1, #0
c0de5418:	d053      	beq.n	c0de54c2 <displayStreamingReviewPage+0x16a>
c0de541a:	2001      	movs	r0, #1
c0de541c:	b00c      	add	sp, #48	@ 0x30
c0de541e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5422:	4708      	bx	r1
c0de5424:	a909      	add	r1, sp, #36	@ 0x24
c0de5426:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5428:	2001      	movs	r0, #1
c0de542a:	f000 fe3b 	bl	c0de60a4 <getLastPageInfo>
c0de542e:	e020      	b.n	c0de5472 <displayStreamingReviewPage+0x11a>
c0de5430:	2300      	movs	r3, #0
c0de5432:	eb09 0205 	add.w	r2, r9, r5
c0de5436:	b2c9      	uxtb	r1, r1
c0de5438:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de543c:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5440:	ab09      	add	r3, sp, #36	@ 0x24
c0de5442:	ad08      	add	r5, sp, #32
c0de5444:	f10d 020f 	add.w	r2, sp, #15
c0de5448:	e9cd 5300 	strd	r5, r3, [sp]
c0de544c:	9202      	str	r2, [sp, #8]
c0de544e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5450:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5452:	f000 fb03 	bl	c0de5a5c <getPairData>
c0de5456:	9808      	ldr	r0, [sp, #32]
c0de5458:	2800      	cmp	r0, #0
c0de545a:	bf12      	itee	ne
c0de545c:	2501      	movne	r5, #1
c0de545e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5462:	0045      	lsleq	r5, r0, #1
c0de5464:	e006      	b.n	c0de5474 <displayStreamingReviewPage+0x11c>
c0de5466:	eb09 0005 	add.w	r0, r9, r5
c0de546a:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de546e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de5470:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5472:	2500      	movs	r5, #0
c0de5474:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de5476:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de547a:	4e17      	ldr	r6, [pc, #92]	@ (c0de54d8 <displayStreamingReviewPage+0x180>)
c0de547c:	b2e8      	uxtb	r0, r5
c0de547e:	2500      	movs	r5, #0
c0de5480:	9002      	str	r0, [sp, #8]
c0de5482:	4620      	mov	r0, r4
c0de5484:	447e      	add	r6, pc
c0de5486:	f001 f8f9 	bl	c0de667c <OUTLINED_FUNCTION_6>
c0de548a:	b00c      	add	sp, #48	@ 0x30
c0de548c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5490:	f001 be75 	b.w	c0de717e <nbgl_refresh>
c0de5494:	f040 0001 	orr.w	r0, r0, #1
c0de5498:	490c      	ldr	r1, [pc, #48]	@ (c0de54cc <displayStreamingReviewPage+0x174>)
c0de549a:	2200      	movs	r2, #0
c0de549c:	4479      	add	r1, pc
c0de549e:	9104      	str	r1, [sp, #16]
c0de54a0:	490b      	ldr	r1, [pc, #44]	@ (c0de54d0 <displayStreamingReviewPage+0x178>)
c0de54a2:	4479      	add	r1, pc
c0de54a4:	9106      	str	r1, [sp, #24]
c0de54a6:	2100      	movs	r1, #0
c0de54a8:	9100      	str	r1, [sp, #0]
c0de54aa:	490a      	ldr	r1, [pc, #40]	@ (c0de54d4 <displayStreamingReviewPage+0x17c>)
c0de54ac:	ab04      	add	r3, sp, #16
c0de54ae:	4479      	add	r1, pc
c0de54b0:	f7ff f9b2 	bl	c0de4818 <nbgl_stepDrawCenteredInfo>
c0de54b4:	eb09 0405 	add.w	r4, r9, r5
c0de54b8:	f001 fe61 	bl	c0de717e <nbgl_refresh>
c0de54bc:	2001      	movs	r0, #1
c0de54be:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de54c2:	b00c      	add	sp, #48	@ 0x30
c0de54c4:	bd70      	pop	{r4, r5, r6, pc}
c0de54c6:	bf00      	nop
c0de54c8:	00000750 	.word	0x00000750
c0de54cc:	00002a2e 	.word	0x00002a2e
c0de54d0:	0000285c 	.word	0x0000285c
c0de54d4:	00000d7b 	.word	0x00000d7b
c0de54d8:	0000113d 	.word	0x0000113d

c0de54dc <nbgl_useCaseSpinner>:
c0de54dc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de54de:	4604      	mov	r4, r0
c0de54e0:	480b      	ldr	r0, [pc, #44]	@ (c0de5510 <nbgl_useCaseSpinner+0x34>)
c0de54e2:	2140      	movs	r1, #64	@ 0x40
c0de54e4:	f001 f8a2 	bl	c0de662c <OUTLINED_FUNCTION_0>
c0de54e8:	2001      	movs	r0, #1
c0de54ea:	4622      	mov	r2, r4
c0de54ec:	2300      	movs	r3, #0
c0de54ee:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de54f2:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de54f6:	2000      	movs	r0, #0
c0de54f8:	e9cd 0000 	strd	r0, r0, [sp]
c0de54fc:	9002      	str	r0, [sp, #8]
c0de54fe:	2000      	movs	r0, #0
c0de5500:	4904      	ldr	r1, [pc, #16]	@ (c0de5514 <nbgl_useCaseSpinner+0x38>)
c0de5502:	4479      	add	r1, pc
c0de5504:	f7ff fe0c 	bl	c0de5120 <drawStep>
c0de5508:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de550c:	f001 be37 	b.w	c0de717e <nbgl_refresh>
c0de5510:	00000750 	.word	0x00000750
c0de5514:	000028f3 	.word	0x000028f3

c0de5518 <nbgl_useCaseChoice>:
c0de5518:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de551a:	9c07      	ldr	r4, [sp, #28]
c0de551c:	9402      	str	r4, [sp, #8]
c0de551e:	2400      	movs	r4, #0
c0de5520:	9401      	str	r4, [sp, #4]
c0de5522:	9c06      	ldr	r4, [sp, #24]
c0de5524:	9400      	str	r4, [sp, #0]
c0de5526:	f000 f801 	bl	c0de552c <nbgl_useCaseChoiceWithDetails>
c0de552a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de552c <nbgl_useCaseChoiceWithDetails>:
c0de552c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5530:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de55a0 <nbgl_useCaseChoiceWithDetails+0x74>
c0de5534:	460c      	mov	r4, r1
c0de5536:	4605      	mov	r5, r0
c0de5538:	2140      	movs	r1, #64	@ 0x40
c0de553a:	469a      	mov	sl, r3
c0de553c:	4617      	mov	r7, r2
c0de553e:	eb09 0608 	add.w	r6, r9, r8
c0de5542:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de5546:	f002 fb35 	bl	c0de7bb4 <__aeabi_memclr>
c0de554a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de554c:	2203      	movs	r2, #3
c0de554e:	6570      	str	r0, [r6, #84]	@ 0x54
c0de5550:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de5552:	6531      	str	r1, [r6, #80]	@ 0x50
c0de5554:	9908      	ldr	r1, [sp, #32]
c0de5556:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de555a:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de555e:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de5560:	2108      	movs	r1, #8
c0de5562:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de5566:	2f00      	cmp	r7, #0
c0de5568:	f04f 0103 	mov.w	r1, #3
c0de556c:	bf18      	it	ne
c0de556e:	2104      	movne	r1, #4
c0de5570:	2d00      	cmp	r5, #0
c0de5572:	bf08      	it	eq
c0de5574:	4611      	moveq	r1, r2
c0de5576:	2c00      	cmp	r4, #0
c0de5578:	bf08      	it	eq
c0de557a:	2102      	moveq	r1, #2
c0de557c:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de5580:	b140      	cbz	r0, c0de5594 <nbgl_useCaseChoiceWithDetails+0x68>
c0de5582:	7902      	ldrb	r2, [r0, #4]
c0de5584:	2a03      	cmp	r2, #3
c0de5586:	d105      	bne.n	c0de5594 <nbgl_useCaseChoiceWithDetails+0x68>
c0de5588:	7a00      	ldrb	r0, [r0, #8]
c0de558a:	eb09 0208 	add.w	r2, r9, r8
c0de558e:	4408      	add	r0, r1
c0de5590:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de5594:	2000      	movs	r0, #0
c0de5596:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de559a:	f000 b803 	b.w	c0de55a4 <displayChoicePage>
c0de559e:	bf00      	nop
c0de55a0:	00000750 	.word	0x00000750

c0de55a4 <displayChoicePage>:
c0de55a4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de55a6:	4b33      	ldr	r3, [pc, #204]	@ (c0de5674 <displayChoicePage+0xd0>)
c0de55a8:	2400      	movs	r4, #0
c0de55aa:	eb09 0103 	add.w	r1, r9, r3
c0de55ae:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de55b0:	b16a      	cbz	r2, c0de55ce <displayChoicePage+0x2a>
c0de55b2:	eb09 0103 	add.w	r1, r9, r3
c0de55b6:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de55b8:	b131      	cbz	r1, c0de55c8 <displayChoicePage+0x24>
c0de55ba:	eb09 0103 	add.w	r1, r9, r3
c0de55be:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de55c0:	b111      	cbz	r1, c0de55c8 <displayChoicePage+0x24>
c0de55c2:	2102      	movs	r1, #2
c0de55c4:	2501      	movs	r5, #1
c0de55c6:	e004      	b.n	c0de55d2 <displayChoicePage+0x2e>
c0de55c8:	2101      	movs	r1, #1
c0de55ca:	2500      	movs	r5, #0
c0de55cc:	e001      	b.n	c0de55d2 <displayChoicePage+0x2e>
c0de55ce:	2500      	movs	r5, #0
c0de55d0:	2100      	movs	r1, #0
c0de55d2:	eb09 0603 	add.w	r6, r9, r3
c0de55d6:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de55d8:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de55dc:	b274      	sxtb	r4, r6
c0de55de:	42a1      	cmp	r1, r4
c0de55e0:	dd08      	ble.n	c0de55f4 <displayChoicePage+0x50>
c0de55e2:	b1ee      	cbz	r6, c0de5620 <displayChoicePage+0x7c>
c0de55e4:	1e71      	subs	r1, r6, #1
c0de55e6:	fab1 f181 	clz	r1, r1
c0de55ea:	0949      	lsrs	r1, r1, #5
c0de55ec:	4029      	ands	r1, r5
c0de55ee:	2901      	cmp	r1, #1
c0de55f0:	d01c      	beq.n	c0de562c <displayChoicePage+0x88>
c0de55f2:	e030      	b.n	c0de5656 <displayChoicePage+0xb2>
c0de55f4:	d108      	bne.n	c0de5608 <displayChoicePage+0x64>
c0de55f6:	4a20      	ldr	r2, [pc, #128]	@ (c0de5678 <displayChoicePage+0xd4>)
c0de55f8:	eb09 0103 	add.w	r1, r9, r3
c0de55fc:	447a      	add	r2, pc
c0de55fe:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5600:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de5602:	491e      	ldr	r1, [pc, #120]	@ (c0de567c <displayChoicePage+0xd8>)
c0de5604:	4479      	add	r1, pc
c0de5606:	e00f      	b.n	c0de5628 <displayChoicePage+0x84>
c0de5608:	1c4a      	adds	r2, r1, #1
c0de560a:	42a2      	cmp	r2, r4
c0de560c:	d112      	bne.n	c0de5634 <displayChoicePage+0x90>
c0de560e:	4a1c      	ldr	r2, [pc, #112]	@ (c0de5680 <displayChoicePage+0xdc>)
c0de5610:	eb09 0103 	add.w	r1, r9, r3
c0de5614:	447a      	add	r2, pc
c0de5616:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5618:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de561a:	491a      	ldr	r1, [pc, #104]	@ (c0de5684 <displayChoicePage+0xe0>)
c0de561c:	4479      	add	r1, pc
c0de561e:	e003      	b.n	c0de5628 <displayChoicePage+0x84>
c0de5620:	eb09 0103 	add.w	r1, r9, r3
c0de5624:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5626:	b109      	cbz	r1, c0de562c <displayChoicePage+0x88>
c0de5628:	2300      	movs	r3, #0
c0de562a:	e017      	b.n	c0de565c <displayChoicePage+0xb8>
c0de562c:	eb09 0103 	add.w	r1, r9, r3
c0de5630:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de5632:	e012      	b.n	c0de565a <displayChoicePage+0xb6>
c0de5634:	eb09 0203 	add.w	r2, r9, r3
c0de5638:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de563a:	b162      	cbz	r2, c0de5656 <displayChoicePage+0xb2>
c0de563c:	7913      	ldrb	r3, [r2, #4]
c0de563e:	2b03      	cmp	r3, #3
c0de5640:	d109      	bne.n	c0de5656 <displayChoicePage+0xb2>
c0de5642:	1a61      	subs	r1, r4, r1
c0de5644:	f06f 0307 	mvn.w	r3, #7
c0de5648:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de564c:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de5650:	5853      	ldr	r3, [r2, r1]
c0de5652:	5862      	ldr	r2, [r4, r1]
c0de5654:	e001      	b.n	c0de565a <displayChoicePage+0xb6>
c0de5656:	2200      	movs	r2, #0
c0de5658:	2300      	movs	r3, #0
c0de565a:	2100      	movs	r1, #0
c0de565c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5688 <displayChoicePage+0xe4>)
c0de565e:	2400      	movs	r4, #0
c0de5660:	9402      	str	r4, [sp, #8]
c0de5662:	447d      	add	r5, pc
c0de5664:	e9cd 5400 	strd	r5, r4, [sp]
c0de5668:	f7ff fd5a 	bl	c0de5120 <drawStep>
c0de566c:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de5670:	f001 bd85 	b.w	c0de717e <nbgl_refresh>
c0de5674:	00000750 	.word	0x00000750
c0de5678:	00000fe9 	.word	0x00000fe9
c0de567c:	0000282e 	.word	0x0000282e
c0de5680:	00000fe5 	.word	0x00000fe5
c0de5684:	0000279a 	.word	0x0000279a
c0de5688:	00000fab 	.word	0x00000fab

c0de568c <getContentAtIdx>:
c0de568c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de568e:	b087      	sub	sp, #28
c0de5690:	460d      	mov	r5, r1
c0de5692:	4606      	mov	r6, r0
c0de5694:	a801      	add	r0, sp, #4
c0de5696:	2118      	movs	r1, #24
c0de5698:	4614      	mov	r4, r2
c0de569a:	f002 fa8b 	bl	c0de7bb4 <__aeabi_memclr>
c0de569e:	2d00      	cmp	r5, #0
c0de56a0:	d428      	bmi.n	c0de56f4 <getContentAtIdx+0x68>
c0de56a2:	7a30      	ldrb	r0, [r6, #8]
c0de56a4:	4285      	cmp	r5, r0
c0de56a6:	da25      	bge.n	c0de56f4 <getContentAtIdx+0x68>
c0de56a8:	7830      	ldrb	r0, [r6, #0]
c0de56aa:	b338      	cbz	r0, c0de56fc <getContentAtIdx+0x70>
c0de56ac:	b314      	cbz	r4, c0de56f4 <getContentAtIdx+0x68>
c0de56ae:	4620      	mov	r0, r4
c0de56b0:	2138      	movs	r1, #56	@ 0x38
c0de56b2:	f002 fa7f 	bl	c0de7bb4 <__aeabi_memclr>
c0de56b6:	4821      	ldr	r0, [pc, #132]	@ (c0de573c <getContentAtIdx+0xb0>)
c0de56b8:	4448      	add	r0, r9
c0de56ba:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de56bc:	b342      	cbz	r2, c0de5710 <getContentAtIdx+0x84>
c0de56be:	b2e8      	uxtb	r0, r5
c0de56c0:	ad01      	add	r5, sp, #4
c0de56c2:	4629      	mov	r1, r5
c0de56c4:	4790      	blx	r2
c0de56c6:	b1a8      	cbz	r0, c0de56f4 <getContentAtIdx+0x68>
c0de56c8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de56cc:	280a      	cmp	r0, #10
c0de56ce:	7020      	strb	r0, [r4, #0]
c0de56d0:	d023      	beq.n	c0de571a <getContentAtIdx+0x8e>
c0de56d2:	2803      	cmp	r0, #3
c0de56d4:	d008      	beq.n	c0de56e8 <getContentAtIdx+0x5c>
c0de56d6:	2804      	cmp	r0, #4
c0de56d8:	d025      	beq.n	c0de5726 <getContentAtIdx+0x9a>
c0de56da:	2807      	cmp	r0, #7
c0de56dc:	d029      	beq.n	c0de5732 <getContentAtIdx+0xa6>
c0de56de:	2808      	cmp	r0, #8
c0de56e0:	d002      	beq.n	c0de56e8 <getContentAtIdx+0x5c>
c0de56e2:	2809      	cmp	r0, #9
c0de56e4:	d019      	beq.n	c0de571a <getContentAtIdx+0x8e>
c0de56e6:	b928      	cbnz	r0, c0de56f4 <getContentAtIdx+0x68>
c0de56e8:	1d28      	adds	r0, r5, #4
c0de56ea:	1d21      	adds	r1, r4, #4
c0de56ec:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de56f0:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de56f2:	e000      	b.n	c0de56f6 <getContentAtIdx+0x6a>
c0de56f4:	2400      	movs	r4, #0
c0de56f6:	4620      	mov	r0, r4
c0de56f8:	b007      	add	sp, #28
c0de56fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de56fc:	6871      	ldr	r1, [r6, #4]
c0de56fe:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5702:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5706:	b007      	add	sp, #28
c0de5708:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de570c:	f001 bf46 	b.w	c0de759c <pic>
c0de5710:	6872      	ldr	r2, [r6, #4]
c0de5712:	b2e8      	uxtb	r0, r5
c0de5714:	4621      	mov	r1, r4
c0de5716:	4790      	blx	r2
c0de5718:	e7ed      	b.n	c0de56f6 <getContentAtIdx+0x6a>
c0de571a:	1d28      	adds	r0, r5, #4
c0de571c:	1d21      	adds	r1, r4, #4
c0de571e:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5722:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5724:	e7e7      	b.n	c0de56f6 <getContentAtIdx+0x6a>
c0de5726:	1d28      	adds	r0, r5, #4
c0de5728:	1d21      	adds	r1, r4, #4
c0de572a:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de572e:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5730:	e7e1      	b.n	c0de56f6 <getContentAtIdx+0x6a>
c0de5732:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5736:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de573a:	e7dc      	b.n	c0de56f6 <getContentAtIdx+0x6a>
c0de573c:	00000750 	.word	0x00000750

c0de5740 <getContentNbElement>:
c0de5740:	7802      	ldrb	r2, [r0, #0]
c0de5742:	2101      	movs	r1, #1
c0de5744:	b1a2      	cbz	r2, c0de5770 <getContentNbElement+0x30>
c0de5746:	2a03      	cmp	r2, #3
c0de5748:	d012      	beq.n	c0de5770 <getContentNbElement+0x30>
c0de574a:	2a0a      	cmp	r2, #10
c0de574c:	d007      	beq.n	c0de575e <getContentNbElement+0x1e>
c0de574e:	2a07      	cmp	r2, #7
c0de5750:	d007      	beq.n	c0de5762 <getContentNbElement+0x22>
c0de5752:	2a08      	cmp	r2, #8
c0de5754:	d007      	beq.n	c0de5766 <getContentNbElement+0x26>
c0de5756:	2a09      	cmp	r2, #9
c0de5758:	d007      	beq.n	c0de576a <getContentNbElement+0x2a>
c0de575a:	2a04      	cmp	r2, #4
c0de575c:	d107      	bne.n	c0de576e <getContentNbElement+0x2e>
c0de575e:	7b01      	ldrb	r1, [r0, #12]
c0de5760:	e006      	b.n	c0de5770 <getContentNbElement+0x30>
c0de5762:	7a01      	ldrb	r1, [r0, #8]
c0de5764:	e004      	b.n	c0de5770 <getContentNbElement+0x30>
c0de5766:	7c01      	ldrb	r1, [r0, #16]
c0de5768:	e002      	b.n	c0de5770 <getContentNbElement+0x30>
c0de576a:	7a41      	ldrb	r1, [r0, #9]
c0de576c:	e000      	b.n	c0de5770 <getContentNbElement+0x30>
c0de576e:	2100      	movs	r1, #0
c0de5770:	4608      	mov	r0, r1
c0de5772:	4770      	bx	lr

c0de5774 <displayContent>:
c0de5774:	b570      	push	{r4, r5, r6, lr}
c0de5776:	b08a      	sub	sp, #40	@ 0x28
c0de5778:	460d      	mov	r5, r1
c0de577a:	4604      	mov	r4, r0
c0de577c:	a804      	add	r0, sp, #16
c0de577e:	2118      	movs	r1, #24
c0de5780:	f002 fa18 	bl	c0de7bb4 <__aeabi_memclr>
c0de5784:	4820      	ldr	r0, [pc, #128]	@ (c0de5808 <displayContent+0x94>)
c0de5786:	f000 ff57 	bl	c0de6638 <OUTLINED_FUNCTION_1>
c0de578a:	dd14      	ble.n	c0de57b6 <displayContent+0x42>
c0de578c:	a904      	add	r1, sp, #16
c0de578e:	4628      	mov	r0, r5
c0de5790:	f000 f846 	bl	c0de5820 <getContentPage>
c0de5794:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5798:	b318      	cbz	r0, c0de57e2 <displayContent+0x6e>
c0de579a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de579e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de57a2:	481e      	ldr	r0, [pc, #120]	@ (c0de581c <displayContent+0xa8>)
c0de57a4:	4478      	add	r0, pc
c0de57a6:	2b00      	cmp	r3, #0
c0de57a8:	9000      	str	r0, [sp, #0]
c0de57aa:	4620      	mov	r0, r4
c0de57ac:	bf18      	it	ne
c0de57ae:	2301      	movne	r3, #1
c0de57b0:	f000 f8d8 	bl	c0de5964 <drawSwitchStep>
c0de57b4:	e023      	b.n	c0de57fe <displayContent+0x8a>
c0de57b6:	4448      	add	r0, r9
c0de57b8:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de57ba:	6381      	str	r1, [r0, #56]	@ 0x38
c0de57bc:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de57be:	4a13      	ldr	r2, [pc, #76]	@ (c0de580c <displayContent+0x98>)
c0de57c0:	2900      	cmp	r1, #0
c0de57c2:	447a      	add	r2, pc
c0de57c4:	bf18      	it	ne
c0de57c6:	460a      	movne	r2, r1
c0de57c8:	9205      	str	r2, [sp, #20]
c0de57ca:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de57ce:	4910      	ldr	r1, [pc, #64]	@ (c0de5810 <displayContent+0x9c>)
c0de57d0:	4a10      	ldr	r2, [pc, #64]	@ (c0de5814 <displayContent+0xa0>)
c0de57d2:	2803      	cmp	r0, #3
c0de57d4:	447a      	add	r2, pc
c0de57d6:	4479      	add	r1, pc
c0de57d8:	bf08      	it	eq
c0de57da:	460a      	moveq	r2, r1
c0de57dc:	9207      	str	r2, [sp, #28]
c0de57de:	2000      	movs	r0, #0
c0de57e0:	e002      	b.n	c0de57e8 <displayContent+0x74>
c0de57e2:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de57e6:	0040      	lsls	r0, r0, #1
c0de57e8:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de57ec:	9907      	ldr	r1, [sp, #28]
c0de57ee:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5818 <displayContent+0xa4>)
c0de57f0:	b2c0      	uxtb	r0, r0
c0de57f2:	2500      	movs	r5, #0
c0de57f4:	9002      	str	r0, [sp, #8]
c0de57f6:	4620      	mov	r0, r4
c0de57f8:	447e      	add	r6, pc
c0de57fa:	f000 ff3f 	bl	c0de667c <OUTLINED_FUNCTION_6>
c0de57fe:	f001 fcbe 	bl	c0de717e <nbgl_refresh>
c0de5802:	b00a      	add	sp, #40	@ 0x28
c0de5804:	bd70      	pop	{r4, r5, r6, pc}
c0de5806:	bf00      	nop
c0de5808:	00000750 	.word	0x00000750
c0de580c:	00002933 	.word	0x00002933
c0de5810:	000025e0 	.word	0x000025e0
c0de5814:	0000259c 	.word	0x0000259c
c0de5818:	000001b9 	.word	0x000001b9
c0de581c:	0000020d 	.word	0x0000020d

c0de5820 <getContentPage>:
c0de5820:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5822:	b093      	sub	sp, #76	@ 0x4c
c0de5824:	4606      	mov	r6, r0
c0de5826:	2000      	movs	r0, #0
c0de5828:	460c      	mov	r4, r1
c0de582a:	2138      	movs	r1, #56	@ 0x38
c0de582c:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de5830:	ad04      	add	r5, sp, #16
c0de5832:	4628      	mov	r0, r5
c0de5834:	f002 f9be 	bl	c0de7bb4 <__aeabi_memclr>
c0de5838:	4f47      	ldr	r7, [pc, #284]	@ (c0de5958 <getContentPage+0x138>)
c0de583a:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de583e:	462a      	mov	r2, r5
c0de5840:	eb09 0007 	add.w	r0, r9, r7
c0de5844:	f000 ff13 	bl	c0de666e <OUTLINED_FUNCTION_4>
c0de5848:	2800      	cmp	r0, #0
c0de584a:	d07a      	beq.n	c0de5942 <getContentPage+0x122>
c0de584c:	4605      	mov	r5, r0
c0de584e:	7800      	ldrb	r0, [r0, #0]
c0de5850:	280a      	cmp	r0, #10
c0de5852:	d011      	beq.n	c0de5878 <getContentPage+0x58>
c0de5854:	2803      	cmp	r0, #3
c0de5856:	d02c      	beq.n	c0de58b2 <getContentPage+0x92>
c0de5858:	2804      	cmp	r0, #4
c0de585a:	d035      	beq.n	c0de58c8 <getContentPage+0xa8>
c0de585c:	2807      	cmp	r0, #7
c0de585e:	d045      	beq.n	c0de58ec <getContentPage+0xcc>
c0de5860:	2808      	cmp	r0, #8
c0de5862:	d060      	beq.n	c0de5926 <getContentPage+0x106>
c0de5864:	2809      	cmp	r0, #9
c0de5866:	d007      	beq.n	c0de5878 <getContentPage+0x58>
c0de5868:	2800      	cmp	r0, #0
c0de586a:	d16a      	bne.n	c0de5942 <getContentPage+0x122>
c0de586c:	6868      	ldr	r0, [r5, #4]
c0de586e:	f001 fe95 	bl	c0de759c <pic>
c0de5872:	6060      	str	r0, [r4, #4]
c0de5874:	68a8      	ldr	r0, [r5, #8]
c0de5876:	e019      	b.n	c0de58ac <getContentPage+0x8c>
c0de5878:	1d28      	adds	r0, r5, #4
c0de587a:	eb09 0607 	add.w	r6, r9, r7
c0de587e:	f001 fe8d 	bl	c0de759c <pic>
c0de5882:	6800      	ldr	r0, [r0, #0]
c0de5884:	f001 fe8a 	bl	c0de759c <pic>
c0de5888:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de588c:	4605      	mov	r5, r0
c0de588e:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de5890:	2910      	cmp	r1, #16
c0de5892:	d100      	bne.n	c0de5896 <getContentPage+0x76>
c0de5894:	b918      	cbnz	r0, c0de589e <getContentPage+0x7e>
c0de5896:	290f      	cmp	r1, #15
c0de5898:	d155      	bne.n	c0de5946 <getContentPage+0x126>
c0de589a:	2800      	cmp	r0, #0
c0de589c:	d053      	beq.n	c0de5946 <getContentPage+0x126>
c0de589e:	f001 fe7d 	bl	c0de759c <pic>
c0de58a2:	6060      	str	r0, [r4, #4]
c0de58a4:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de58a8:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de58ac:	f001 fe76 	bl	c0de759c <pic>
c0de58b0:	e046      	b.n	c0de5940 <getContentPage+0x120>
c0de58b2:	68a8      	ldr	r0, [r5, #8]
c0de58b4:	4e29      	ldr	r6, [pc, #164]	@ (c0de595c <getContentPage+0x13c>)
c0de58b6:	447e      	add	r6, pc
c0de58b8:	47b0      	blx	r6
c0de58ba:	60e0      	str	r0, [r4, #12]
c0de58bc:	6868      	ldr	r0, [r5, #4]
c0de58be:	47b0      	blx	r6
c0de58c0:	6060      	str	r0, [r4, #4]
c0de58c2:	68e8      	ldr	r0, [r5, #12]
c0de58c4:	47b0      	blx	r6
c0de58c6:	e03b      	b.n	c0de5940 <getContentPage+0x120>
c0de58c8:	f104 0015 	add.w	r0, r4, #21
c0de58cc:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de58d0:	f104 020c 	add.w	r2, r4, #12
c0de58d4:	f104 0310 	add.w	r3, r4, #16
c0de58d8:	e9cd 3200 	strd	r3, r2, [sp]
c0de58dc:	9002      	str	r0, [sp, #8]
c0de58de:	1d28      	adds	r0, r5, #4
c0de58e0:	1d22      	adds	r2, r4, #4
c0de58e2:	f104 0308 	add.w	r3, r4, #8
c0de58e6:	f000 f8b9 	bl	c0de5a5c <getPairData>
c0de58ea:	e02a      	b.n	c0de5942 <getContentPage+0x122>
c0de58ec:	2001      	movs	r0, #1
c0de58ee:	444f      	add	r7, r9
c0de58f0:	7020      	strb	r0, [r4, #0]
c0de58f2:	6868      	ldr	r0, [r5, #4]
c0de58f4:	f001 fe52 	bl	c0de759c <pic>
c0de58f8:	4919      	ldr	r1, [pc, #100]	@ (c0de5960 <getContentPage+0x140>)
c0de58fa:	4479      	add	r1, pc
c0de58fc:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de58fe:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5902:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5906:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de590a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de590e:	6062      	str	r2, [r4, #4]
c0de5910:	6841      	ldr	r1, [r0, #4]
c0de5912:	60a1      	str	r1, [r4, #8]
c0de5914:	7a00      	ldrb	r0, [r0, #8]
c0de5916:	1e41      	subs	r1, r0, #1
c0de5918:	bf18      	it	ne
c0de591a:	2101      	movne	r1, #1
c0de591c:	2e00      	cmp	r6, #0
c0de591e:	bf08      	it	eq
c0de5920:	4601      	moveq	r1, r0
c0de5922:	7521      	strb	r1, [r4, #20]
c0de5924:	e00d      	b.n	c0de5942 <getContentPage+0x122>
c0de5926:	6868      	ldr	r0, [r5, #4]
c0de5928:	f001 fe38 	bl	c0de759c <pic>
c0de592c:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5930:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5934:	6060      	str	r0, [r4, #4]
c0de5936:	68a8      	ldr	r0, [r5, #8]
c0de5938:	f001 fe30 	bl	c0de759c <pic>
c0de593c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5940:	60a0      	str	r0, [r4, #8]
c0de5942:	b013      	add	sp, #76	@ 0x4c
c0de5944:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5946:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de594a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de594e:	f001 fe25 	bl	c0de759c <pic>
c0de5952:	6060      	str	r0, [r4, #4]
c0de5954:	e7f5      	b.n	c0de5942 <getContentPage+0x122>
c0de5956:	bf00      	nop
c0de5958:	00000750 	.word	0x00000750
c0de595c:	00001ce3 	.word	0x00001ce3
c0de5960:	000001a7 	.word	0x000001a7

c0de5964 <drawSwitchStep>:
c0de5964:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5966:	b085      	sub	sp, #20
c0de5968:	4c11      	ldr	r4, [pc, #68]	@ (c0de59b0 <drawSwitchStep+0x4c>)
c0de596a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de596e:	2600      	movs	r6, #0
c0de5970:	eb09 0504 	add.w	r5, r9, r4
c0de5974:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5978:	2500      	movs	r5, #0
c0de597a:	2f02      	cmp	r7, #2
c0de597c:	d30a      	bcc.n	c0de5994 <drawSwitchStep+0x30>
c0de597e:	444c      	add	r4, r9
c0de5980:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de5984:	b12c      	cbz	r4, c0de5992 <drawSwitchStep+0x2e>
c0de5986:	3f01      	subs	r7, #1
c0de5988:	2603      	movs	r6, #3
c0de598a:	42a7      	cmp	r7, r4
c0de598c:	bf08      	it	eq
c0de598e:	2602      	moveq	r6, #2
c0de5990:	e000      	b.n	c0de5994 <drawSwitchStep+0x30>
c0de5992:	2601      	movs	r6, #1
c0de5994:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5998:	f88d 3010 	strb.w	r3, [sp, #16]
c0de599c:	9500      	str	r5, [sp, #0]
c0de599e:	4330      	orrs	r0, r6
c0de59a0:	ab02      	add	r3, sp, #8
c0de59a2:	4661      	mov	r1, ip
c0de59a4:	2200      	movs	r2, #0
c0de59a6:	f7ff f81f 	bl	c0de49e8 <nbgl_stepDrawSwitch>
c0de59aa:	b005      	add	sp, #20
c0de59ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de59ae:	bf00      	nop
c0de59b0:	00000750 	.word	0x00000750

c0de59b4 <contentCallback>:
c0de59b4:	b5e0      	push	{r5, r6, r7, lr}
c0de59b6:	4608      	mov	r0, r1
c0de59b8:	f10d 0107 	add.w	r1, sp, #7
c0de59bc:	f000 f928 	bl	c0de5c10 <buttonGenericCallback>
c0de59c0:	b130      	cbz	r0, c0de59d0 <contentCallback+0x1c>
c0de59c2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de59c6:	2100      	movs	r1, #0
c0de59c8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de59cc:	f7ff bed2 	b.w	c0de5774 <displayContent>
c0de59d0:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de59d4 <getContentElemAtIdx>:
c0de59d4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de59d8:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5a54 <getContentElemAtIdx+0x80>)
c0de59da:	4606      	mov	r6, r0
c0de59dc:	2700      	movs	r7, #0
c0de59de:	eb09 0004 	add.w	r0, r9, r4
c0de59e2:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de59e6:	2b10      	cmp	r3, #16
c0de59e8:	d830      	bhi.n	c0de5a4c <getContentElemAtIdx+0x78>
c0de59ea:	4693      	mov	fp, r2
c0de59ec:	2201      	movs	r2, #1
c0de59ee:	9101      	str	r1, [sp, #4]
c0de59f0:	fa02 f303 	lsl.w	r3, r2, r3
c0de59f4:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de59f8:	d004      	beq.n	c0de5a04 <getContentElemAtIdx+0x30>
c0de59fa:	eb09 0004 	add.w	r0, r9, r4
c0de59fe:	46a2      	mov	sl, r4
c0de5a00:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5a02:	e005      	b.n	c0de5a10 <getContentElemAtIdx+0x3c>
c0de5a04:	4a14      	ldr	r2, [pc, #80]	@ (c0de5a58 <getContentElemAtIdx+0x84>)
c0de5a06:	4213      	tst	r3, r2
c0de5a08:	d020      	beq.n	c0de5a4c <getContentElemAtIdx+0x78>
c0de5a0a:	46a2      	mov	sl, r4
c0de5a0c:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5a10:	2700      	movs	r7, #0
c0de5a12:	2000      	movs	r0, #0
c0de5a14:	f04f 0800 	mov.w	r8, #0
c0de5a18:	4605      	mov	r5, r0
c0de5a1a:	7a20      	ldrb	r0, [r4, #8]
c0de5a1c:	4580      	cmp	r8, r0
c0de5a1e:	d215      	bcs.n	c0de5a4c <getContentElemAtIdx+0x78>
c0de5a20:	fa4f f188 	sxtb.w	r1, r8
c0de5a24:	4620      	mov	r0, r4
c0de5a26:	465a      	mov	r2, fp
c0de5a28:	f7ff fe30 	bl	c0de568c <getContentAtIdx>
c0de5a2c:	4607      	mov	r7, r0
c0de5a2e:	f7ff fe87 	bl	c0de5740 <getContentNbElement>
c0de5a32:	b2e9      	uxtb	r1, r5
c0de5a34:	f108 0801 	add.w	r8, r8, #1
c0de5a38:	4408      	add	r0, r1
c0de5a3a:	42b0      	cmp	r0, r6
c0de5a3c:	d9ec      	bls.n	c0de5a18 <getContentElemAtIdx+0x44>
c0de5a3e:	eb09 000a 	add.w	r0, r9, sl
c0de5a42:	9901      	ldr	r1, [sp, #4]
c0de5a44:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5a48:	1b40      	subs	r0, r0, r5
c0de5a4a:	7008      	strb	r0, [r1, #0]
c0de5a4c:	4638      	mov	r0, r7
c0de5a4e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5a52:	bf00      	nop
c0de5a54:	00000750 	.word	0x00000750
c0de5a58:	00010008 	.word	0x00010008

c0de5a5c <getPairData>:
c0de5a5c:	b5b0      	push	{r4, r5, r7, lr}
c0de5a5e:	4615      	mov	r5, r2
c0de5a60:	6802      	ldr	r2, [r0, #0]
c0de5a62:	461c      	mov	r4, r3
c0de5a64:	b112      	cbz	r2, c0de5a6c <getPairData+0x10>
c0de5a66:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5a6a:	e002      	b.n	c0de5a72 <getPairData+0x16>
c0de5a6c:	6842      	ldr	r2, [r0, #4]
c0de5a6e:	4608      	mov	r0, r1
c0de5a70:	4790      	blx	r2
c0de5a72:	f001 fd93 	bl	c0de759c <pic>
c0de5a76:	6802      	ldr	r2, [r0, #0]
c0de5a78:	9904      	ldr	r1, [sp, #16]
c0de5a7a:	602a      	str	r2, [r5, #0]
c0de5a7c:	6842      	ldr	r2, [r0, #4]
c0de5a7e:	6022      	str	r2, [r4, #0]
c0de5a80:	7b02      	ldrb	r2, [r0, #12]
c0de5a82:	0753      	lsls	r3, r2, #29
c0de5a84:	d403      	bmi.n	c0de5a8e <getPairData+0x32>
c0de5a86:	0792      	lsls	r2, r2, #30
c0de5a88:	d404      	bmi.n	c0de5a94 <getPairData+0x38>
c0de5a8a:	2000      	movs	r0, #0
c0de5a8c:	e000      	b.n	c0de5a90 <getPairData+0x34>
c0de5a8e:	6880      	ldr	r0, [r0, #8]
c0de5a90:	6008      	str	r0, [r1, #0]
c0de5a92:	bdb0      	pop	{r4, r5, r7, pc}
c0de5a94:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5a98:	2301      	movs	r3, #1
c0de5a9a:	700b      	strb	r3, [r1, #0]
c0de5a9c:	6880      	ldr	r0, [r0, #8]
c0de5a9e:	6010      	str	r0, [r2, #0]
c0de5aa0:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5aa4 <onSwitchAction>:
c0de5aa4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5aa6:	b08f      	sub	sp, #60	@ 0x3c
c0de5aa8:	ac01      	add	r4, sp, #4
c0de5aaa:	2138      	movs	r1, #56	@ 0x38
c0de5aac:	4620      	mov	r0, r4
c0de5aae:	f002 f881 	bl	c0de7bb4 <__aeabi_memclr>
c0de5ab2:	4e26      	ldr	r6, [pc, #152]	@ (c0de5b4c <onSwitchAction+0xa8>)
c0de5ab4:	f10d 0103 	add.w	r1, sp, #3
c0de5ab8:	4622      	mov	r2, r4
c0de5aba:	eb09 0006 	add.w	r0, r9, r6
c0de5abe:	f000 fdd6 	bl	c0de666e <OUTLINED_FUNCTION_4>
c0de5ac2:	2800      	cmp	r0, #0
c0de5ac4:	d040      	beq.n	c0de5b48 <onSwitchAction+0xa4>
c0de5ac6:	4604      	mov	r4, r0
c0de5ac8:	7800      	ldrb	r0, [r0, #0]
c0de5aca:	2807      	cmp	r0, #7
c0de5acc:	d13c      	bne.n	c0de5b48 <onSwitchAction+0xa4>
c0de5ace:	6860      	ldr	r0, [r4, #4]
c0de5ad0:	eb09 0706 	add.w	r7, r9, r6
c0de5ad4:	f001 fd62 	bl	c0de759c <pic>
c0de5ad8:	4605      	mov	r5, r0
c0de5ada:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5ade:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5ae2:	2810      	cmp	r0, #16
c0de5ae4:	d811      	bhi.n	c0de5b0a <onSwitchAction+0x66>
c0de5ae6:	2101      	movs	r1, #1
c0de5ae8:	fa01 f000 	lsl.w	r0, r1, r0
c0de5aec:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5af0:	d004      	beq.n	c0de5afc <onSwitchAction+0x58>
c0de5af2:	2000      	movs	r0, #0
c0de5af4:	2101      	movs	r1, #1
c0de5af6:	f000 f82d 	bl	c0de5b54 <displaySettingsPage>
c0de5afa:	e006      	b.n	c0de5b0a <onSwitchAction+0x66>
c0de5afc:	4914      	ldr	r1, [pc, #80]	@ (c0de5b50 <onSwitchAction+0xac>)
c0de5afe:	4208      	tst	r0, r1
c0de5b00:	d003      	beq.n	c0de5b0a <onSwitchAction+0x66>
c0de5b02:	2000      	movs	r0, #0
c0de5b04:	2101      	movs	r1, #1
c0de5b06:	f7ff fe35 	bl	c0de5774 <displayContent>
c0de5b0a:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5b0c:	b188      	cbz	r0, c0de5b32 <onSwitchAction+0x8e>
c0de5b0e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5b12:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5b16:	f001 fd41 	bl	c0de759c <pic>
c0de5b1a:	7a21      	ldrb	r1, [r4, #8]
c0de5b1c:	eb09 0206 	add.w	r2, r9, r6
c0de5b20:	4603      	mov	r3, r0
c0de5b22:	7a60      	ldrb	r0, [r4, #9]
c0de5b24:	3901      	subs	r1, #1
c0de5b26:	bf18      	it	ne
c0de5b28:	2101      	movne	r1, #1
c0de5b2a:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5b2e:	4798      	blx	r3
c0de5b30:	e00a      	b.n	c0de5b48 <onSwitchAction+0xa4>
c0de5b32:	eb09 0006 	add.w	r0, r9, r6
c0de5b36:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5b38:	b132      	cbz	r2, c0de5b48 <onSwitchAction+0xa4>
c0de5b3a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5b3e:	2100      	movs	r1, #0
c0de5b40:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5b44:	7a40      	ldrb	r0, [r0, #9]
c0de5b46:	4790      	blx	r2
c0de5b48:	b00f      	add	sp, #60	@ 0x3c
c0de5b4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5b4c:	00000750 	.word	0x00000750
c0de5b50:	00010008 	.word	0x00010008

c0de5b54 <displaySettingsPage>:
c0de5b54:	b5b0      	push	{r4, r5, r7, lr}
c0de5b56:	b08a      	sub	sp, #40	@ 0x28
c0de5b58:	460d      	mov	r5, r1
c0de5b5a:	4604      	mov	r4, r0
c0de5b5c:	a804      	add	r0, sp, #16
c0de5b5e:	2118      	movs	r1, #24
c0de5b60:	f002 f828 	bl	c0de7bb4 <__aeabi_memclr>
c0de5b64:	481c      	ldr	r0, [pc, #112]	@ (c0de5bd8 <displaySettingsPage+0x84>)
c0de5b66:	f000 fd67 	bl	c0de6638 <OUTLINED_FUNCTION_1>
c0de5b6a:	dd14      	ble.n	c0de5b96 <displaySettingsPage+0x42>
c0de5b6c:	a904      	add	r1, sp, #16
c0de5b6e:	4628      	mov	r0, r5
c0de5b70:	f7ff fe56 	bl	c0de5820 <getContentPage>
c0de5b74:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5b78:	b1e8      	cbz	r0, c0de5bb6 <displaySettingsPage+0x62>
c0de5b7a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5b7e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5b82:	481a      	ldr	r0, [pc, #104]	@ (c0de5bec <displaySettingsPage+0x98>)
c0de5b84:	4478      	add	r0, pc
c0de5b86:	2b00      	cmp	r3, #0
c0de5b88:	9000      	str	r0, [sp, #0]
c0de5b8a:	4620      	mov	r0, r4
c0de5b8c:	bf18      	it	ne
c0de5b8e:	2301      	movne	r3, #1
c0de5b90:	f7ff fee8 	bl	c0de5964 <drawSwitchStep>
c0de5b94:	e01b      	b.n	c0de5bce <displaySettingsPage+0x7a>
c0de5b96:	4448      	add	r0, r9
c0de5b98:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5b9c:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5b9e:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5bdc <displaySettingsPage+0x88>)
c0de5ba0:	447b      	add	r3, pc
c0de5ba2:	290f      	cmp	r1, #15
c0de5ba4:	bf08      	it	eq
c0de5ba6:	4613      	moveq	r3, r2
c0de5ba8:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5baa:	480d      	ldr	r0, [pc, #52]	@ (c0de5be0 <displaySettingsPage+0x8c>)
c0de5bac:	4478      	add	r0, pc
c0de5bae:	9005      	str	r0, [sp, #20]
c0de5bb0:	480c      	ldr	r0, [pc, #48]	@ (c0de5be4 <displaySettingsPage+0x90>)
c0de5bb2:	4478      	add	r0, pc
c0de5bb4:	9007      	str	r0, [sp, #28]
c0de5bb6:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5bba:	9907      	ldr	r1, [sp, #28]
c0de5bbc:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5be8 <displaySettingsPage+0x94>)
c0de5bbe:	2000      	movs	r0, #0
c0de5bc0:	9002      	str	r0, [sp, #8]
c0de5bc2:	447d      	add	r5, pc
c0de5bc4:	e9cd 5000 	strd	r5, r0, [sp]
c0de5bc8:	4620      	mov	r0, r4
c0de5bca:	f7ff faa9 	bl	c0de5120 <drawStep>
c0de5bce:	f001 fad6 	bl	c0de717e <nbgl_refresh>
c0de5bd2:	b00a      	add	sp, #40	@ 0x28
c0de5bd4:	bdb0      	pop	{r4, r5, r7, pc}
c0de5bd6:	bf00      	nop
c0de5bd8:	00000750 	.word	0x00000750
c0de5bdc:	fffff10d 	.word	0xfffff10d
c0de5be0:	00002549 	.word	0x00002549
c0de5be4:	000021be 	.word	0x000021be
c0de5be8:	0000002b 	.word	0x0000002b
c0de5bec:	00000069 	.word	0x00000069

c0de5bf0 <settingsCallback>:
c0de5bf0:	b5e0      	push	{r5, r6, r7, lr}
c0de5bf2:	4608      	mov	r0, r1
c0de5bf4:	f10d 0107 	add.w	r1, sp, #7
c0de5bf8:	f000 f80a 	bl	c0de5c10 <buttonGenericCallback>
c0de5bfc:	b130      	cbz	r0, c0de5c0c <settingsCallback+0x1c>
c0de5bfe:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5c02:	2100      	movs	r1, #0
c0de5c04:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5c08:	f7ff bfa4 	b.w	c0de5b54 <displaySettingsPage>
c0de5c0c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5c10 <buttonGenericCallback>:
c0de5c10:	b5b0      	push	{r4, r5, r7, lr}
c0de5c12:	b090      	sub	sp, #64	@ 0x40
c0de5c14:	460c      	mov	r4, r1
c0de5c16:	4605      	mov	r5, r0
c0de5c18:	a801      	add	r0, sp, #4
c0de5c1a:	2138      	movs	r1, #56	@ 0x38
c0de5c1c:	f001 ffca 	bl	c0de7bb4 <__aeabi_memclr>
c0de5c20:	2d04      	cmp	r5, #4
c0de5c22:	d00d      	beq.n	c0de5c40 <buttonGenericCallback+0x30>
c0de5c24:	2d01      	cmp	r5, #1
c0de5c26:	d012      	beq.n	c0de5c4e <buttonGenericCallback+0x3e>
c0de5c28:	2d00      	cmp	r5, #0
c0de5c2a:	d17c      	bne.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5c2c:	483f      	ldr	r0, [pc, #252]	@ (c0de5d2c <buttonGenericCallback+0x11c>)
c0de5c2e:	eb09 0100 	add.w	r1, r9, r0
c0de5c32:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5c36:	2901      	cmp	r1, #1
c0de5c38:	db1d      	blt.n	c0de5c76 <buttonGenericCallback+0x66>
c0de5c3a:	3901      	subs	r1, #1
c0de5c3c:	2008      	movs	r0, #8
c0de5c3e:	e013      	b.n	c0de5c68 <buttonGenericCallback+0x58>
c0de5c40:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5d2c <buttonGenericCallback+0x11c>)
c0de5c42:	eb09 0004 	add.w	r0, r9, r4
c0de5c46:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5c48:	b338      	cbz	r0, c0de5c9a <buttonGenericCallback+0x8a>
c0de5c4a:	4780      	blx	r0
c0de5c4c:	e06b      	b.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5c4e:	4837      	ldr	r0, [pc, #220]	@ (c0de5d2c <buttonGenericCallback+0x11c>)
c0de5c50:	eb09 0100 	add.w	r1, r9, r0
c0de5c54:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de5c58:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de5c5c:	3901      	subs	r1, #1
c0de5c5e:	4281      	cmp	r1, r0
c0de5c60:	dd61      	ble.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5c62:	b2c0      	uxtb	r0, r0
c0de5c64:	1c41      	adds	r1, r0, #1
c0de5c66:	2000      	movs	r0, #0
c0de5c68:	4a30      	ldr	r2, [pc, #192]	@ (c0de5d2c <buttonGenericCallback+0x11c>)
c0de5c6a:	444a      	add	r2, r9
c0de5c6c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5c70:	7020      	strb	r0, [r4, #0]
c0de5c72:	2001      	movs	r0, #1
c0de5c74:	e058      	b.n	c0de5d28 <buttonGenericCallback+0x118>
c0de5c76:	eb09 0100 	add.w	r1, r9, r0
c0de5c7a:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de5c7e:	2906      	cmp	r1, #6
c0de5c80:	d151      	bne.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5c82:	eb09 0100 	add.w	r1, r9, r0
c0de5c86:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de5c88:	2900      	cmp	r1, #0
c0de5c8a:	d04c      	beq.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5c8c:	4448      	add	r0, r9
c0de5c8e:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5c92:	2801      	cmp	r0, #1
c0de5c94:	d047      	beq.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5c96:	2008      	movs	r0, #8
c0de5c98:	e7ea      	b.n	c0de5c70 <buttonGenericCallback+0x60>
c0de5c9a:	eb09 0004 	add.w	r0, r9, r4
c0de5c9e:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5ca2:	2000      	movs	r0, #0
c0de5ca4:	2910      	cmp	r1, #16
c0de5ca6:	d83f      	bhi.n	c0de5d28 <buttonGenericCallback+0x118>
c0de5ca8:	2201      	movs	r2, #1
c0de5caa:	fa02 f101 	lsl.w	r1, r2, r1
c0de5cae:	4a20      	ldr	r2, [pc, #128]	@ (c0de5d30 <buttonGenericCallback+0x120>)
c0de5cb0:	4211      	tst	r1, r2
c0de5cb2:	d039      	beq.n	c0de5d28 <buttonGenericCallback+0x118>
c0de5cb4:	eb09 0004 	add.w	r0, r9, r4
c0de5cb8:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5cbc:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5cc0:	aa01      	add	r2, sp, #4
c0de5cc2:	f7ff fe87 	bl	c0de59d4 <getContentElemAtIdx>
c0de5cc6:	b370      	cbz	r0, c0de5d26 <buttonGenericCallback+0x116>
c0de5cc8:	7801      	ldrb	r1, [r0, #0]
c0de5cca:	4602      	mov	r2, r0
c0de5ccc:	2000      	movs	r0, #0
c0de5cce:	b359      	cbz	r1, c0de5d28 <buttonGenericCallback+0x118>
c0de5cd0:	290a      	cmp	r1, #10
c0de5cd2:	d009      	beq.n	c0de5ce8 <buttonGenericCallback+0xd8>
c0de5cd4:	2907      	cmp	r1, #7
c0de5cd6:	d00f      	beq.n	c0de5cf8 <buttonGenericCallback+0xe8>
c0de5cd8:	2909      	cmp	r1, #9
c0de5cda:	d011      	beq.n	c0de5d00 <buttonGenericCallback+0xf0>
c0de5cdc:	2903      	cmp	r1, #3
c0de5cde:	f04f 0100 	mov.w	r1, #0
c0de5ce2:	d112      	bne.n	c0de5d0a <buttonGenericCallback+0xfa>
c0de5ce4:	7c10      	ldrb	r0, [r2, #16]
c0de5ce6:	e005      	b.n	c0de5cf4 <buttonGenericCallback+0xe4>
c0de5ce8:	eb09 0004 	add.w	r0, r9, r4
c0de5cec:	6891      	ldr	r1, [r2, #8]
c0de5cee:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de5cf2:	5c08      	ldrb	r0, [r1, r0]
c0de5cf4:	2100      	movs	r1, #0
c0de5cf6:	e008      	b.n	c0de5d0a <buttonGenericCallback+0xfa>
c0de5cf8:	6850      	ldr	r0, [r2, #4]
c0de5cfa:	2100      	movs	r1, #0
c0de5cfc:	7a40      	ldrb	r0, [r0, #9]
c0de5cfe:	e004      	b.n	c0de5d0a <buttonGenericCallback+0xfa>
c0de5d00:	eb09 0004 	add.w	r0, r9, r4
c0de5d04:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de5d08:	7ad0      	ldrb	r0, [r2, #11]
c0de5d0a:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de5d0c:	b133      	cbz	r3, c0de5d1c <buttonGenericCallback+0x10c>
c0de5d0e:	eb09 0104 	add.w	r1, r9, r4
c0de5d12:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de5d16:	2100      	movs	r1, #0
c0de5d18:	4798      	blx	r3
c0de5d1a:	e004      	b.n	c0de5d26 <buttonGenericCallback+0x116>
c0de5d1c:	eb09 0204 	add.w	r2, r9, r4
c0de5d20:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5d22:	b102      	cbz	r2, c0de5d26 <buttonGenericCallback+0x116>
c0de5d24:	4790      	blx	r2
c0de5d26:	2000      	movs	r0, #0
c0de5d28:	b010      	add	sp, #64	@ 0x40
c0de5d2a:	bdb0      	pop	{r4, r5, r7, pc}
c0de5d2c:	00000750 	.word	0x00000750
c0de5d30:	0001c008 	.word	0x0001c008

c0de5d34 <displayHomePage>:
c0de5d34:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5d38:	4680      	mov	r8, r0
c0de5d3a:	4832      	ldr	r0, [pc, #200]	@ (c0de5e04 <displayHomePage+0xd0>)
c0de5d3c:	2200      	movs	r2, #0
c0de5d3e:	eb09 0100 	add.w	r1, r9, r0
c0de5d42:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de5d44:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de5d46:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5d48:	2202      	movs	r2, #2
c0de5d4a:	2d00      	cmp	r5, #0
c0de5d4c:	463e      	mov	r6, r7
c0de5d4e:	bf08      	it	eq
c0de5d50:	2201      	moveq	r2, #1
c0de5d52:	2f00      	cmp	r7, #0
c0de5d54:	bf18      	it	ne
c0de5d56:	2601      	movne	r6, #1
c0de5d58:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de5d5c:	b183      	cbz	r3, c0de5d80 <displayHomePage+0x4c>
c0de5d5e:	2401      	movs	r4, #1
c0de5d60:	2d00      	cmp	r5, #0
c0de5d62:	bf08      	it	eq
c0de5d64:	24ff      	moveq	r4, #255	@ 0xff
c0de5d66:	429c      	cmp	r4, r3
c0de5d68:	d111      	bne.n	c0de5d8e <displayHomePage+0x5a>
c0de5d6a:	eb09 0400 	add.w	r4, r9, r0
c0de5d6e:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5d72:	f001 fc13 	bl	c0de759c <pic>
c0de5d76:	4602      	mov	r2, r0
c0de5d78:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de5d7a:	6880      	ldr	r0, [r0, #8]
c0de5d7c:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de5d7e:	e004      	b.n	c0de5d8a <displayHomePage+0x56>
c0de5d80:	eb09 0100 	add.w	r1, r9, r0
c0de5d84:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de5d88:	b312      	cbz	r2, c0de5dd0 <displayHomePage+0x9c>
c0de5d8a:	2300      	movs	r3, #0
c0de5d8c:	e02c      	b.n	c0de5de8 <displayHomePage+0xb4>
c0de5d8e:	2f00      	cmp	r7, #0
c0de5d90:	4614      	mov	r4, r2
c0de5d92:	bf08      	it	eq
c0de5d94:	24ff      	moveq	r4, #255	@ 0xff
c0de5d96:	429c      	cmp	r4, r3
c0de5d98:	d109      	bne.n	c0de5dae <displayHomePage+0x7a>
c0de5d9a:	491c      	ldr	r1, [pc, #112]	@ (c0de5e0c <displayHomePage+0xd8>)
c0de5d9c:	4448      	add	r0, r9
c0de5d9e:	2300      	movs	r3, #0
c0de5da0:	4479      	add	r1, pc
c0de5da2:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5da4:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5e10 <displayHomePage+0xdc>)
c0de5da6:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5e14 <displayHomePage+0xe0>)
c0de5da8:	447d      	add	r5, pc
c0de5daa:	447a      	add	r2, pc
c0de5dac:	e01c      	b.n	c0de5de8 <displayHomePage+0xb4>
c0de5dae:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5db0:	4432      	add	r2, r6
c0de5db2:	4448      	add	r0, r9
c0de5db4:	2900      	cmp	r1, #0
c0de5db6:	bf08      	it	eq
c0de5db8:	22ff      	moveq	r2, #255	@ 0xff
c0de5dba:	429a      	cmp	r2, r3
c0de5dbc:	d10d      	bne.n	c0de5dda <displayHomePage+0xa6>
c0de5dbe:	4916      	ldr	r1, [pc, #88]	@ (c0de5e18 <displayHomePage+0xe4>)
c0de5dc0:	2300      	movs	r3, #0
c0de5dc2:	4479      	add	r1, pc
c0de5dc4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5dc6:	4d15      	ldr	r5, [pc, #84]	@ (c0de5e1c <displayHomePage+0xe8>)
c0de5dc8:	4a15      	ldr	r2, [pc, #84]	@ (c0de5e20 <displayHomePage+0xec>)
c0de5dca:	447d      	add	r5, pc
c0de5dcc:	447a      	add	r2, pc
c0de5dce:	e00b      	b.n	c0de5de8 <displayHomePage+0xb4>
c0de5dd0:	4448      	add	r0, r9
c0de5dd2:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de5dd4:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5e08 <displayHomePage+0xd4>)
c0de5dd6:	447b      	add	r3, pc
c0de5dd8:	e006      	b.n	c0de5de8 <displayHomePage+0xb4>
c0de5dda:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de5ddc:	2300      	movs	r3, #0
c0de5dde:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5de0:	4d10      	ldr	r5, [pc, #64]	@ (c0de5e24 <displayHomePage+0xf0>)
c0de5de2:	4a11      	ldr	r2, [pc, #68]	@ (c0de5e28 <displayHomePage+0xf4>)
c0de5de4:	447d      	add	r5, pc
c0de5de6:	447a      	add	r2, pc
c0de5de8:	4910      	ldr	r1, [pc, #64]	@ (c0de5e2c <displayHomePage+0xf8>)
c0de5dea:	2000      	movs	r0, #0
c0de5dec:	9002      	str	r0, [sp, #8]
c0de5dee:	4479      	add	r1, pc
c0de5df0:	e9cd 1000 	strd	r1, r0, [sp]
c0de5df4:	4640      	mov	r0, r8
c0de5df6:	4629      	mov	r1, r5
c0de5df8:	f7ff f992 	bl	c0de5120 <drawStep>
c0de5dfc:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5e00:	f001 b9bd 	b.w	c0de717e <nbgl_refresh>
c0de5e04:	00000750 	.word	0x00000750
c0de5e08:	000023e4 	.word	0x000023e4
c0de5e0c:	0000008d 	.word	0x0000008d
c0de5e10:	00001feb 	.word	0x00001feb
c0de5e14:	000022bf 	.word	0x000022bf
c0de5e18:	00000073 	.word	0x00000073
c0de5e1c:	00001f34 	.word	0x00001f34
c0de5e20:	00002370 	.word	0x00002370
c0de5e24:	00001f3d 	.word	0x00001f3d
c0de5e28:	000023e1 	.word	0x000023e1
c0de5e2c:	0000006b 	.word	0x0000006b

c0de5e30 <startUseCaseSettings>:
c0de5e30:	2000      	movs	r0, #0
c0de5e32:	f7fe bf01 	b.w	c0de4c38 <startUseCaseSettingsAtPage>
	...

c0de5e38 <startUseCaseInfo>:
c0de5e38:	4807      	ldr	r0, [pc, #28]	@ (c0de5e58 <startUseCaseInfo+0x20>)
c0de5e3a:	210d      	movs	r1, #13
c0de5e3c:	4448      	add	r0, r9
c0de5e3e:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de5e42:	2100      	movs	r1, #0
c0de5e44:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de5e48:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de5e4a:	7b09      	ldrb	r1, [r1, #12]
c0de5e4c:	3101      	adds	r1, #1
c0de5e4e:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de5e52:	2000      	movs	r0, #0
c0de5e54:	f000 b810 	b.w	c0de5e78 <displayInfoPage>
c0de5e58:	00000750 	.word	0x00000750

c0de5e5c <homeCallback>:
c0de5e5c:	b5e0      	push	{r5, r6, r7, lr}
c0de5e5e:	4608      	mov	r0, r1
c0de5e60:	f10d 0107 	add.w	r1, sp, #7
c0de5e64:	f7ff fed4 	bl	c0de5c10 <buttonGenericCallback>
c0de5e68:	b128      	cbz	r0, c0de5e76 <homeCallback+0x1a>
c0de5e6a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5e6e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5e72:	f7ff bf5f 	b.w	c0de5d34 <displayHomePage>
c0de5e76:	bd8c      	pop	{r2, r3, r7, pc}

c0de5e78 <displayInfoPage>:
c0de5e78:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5e7a:	4604      	mov	r4, r0
c0de5e7c:	4816      	ldr	r0, [pc, #88]	@ (c0de5ed8 <displayInfoPage+0x60>)
c0de5e7e:	f000 fbdb 	bl	c0de6638 <OUTLINED_FUNCTION_1>
c0de5e82:	dd11      	ble.n	c0de5ea8 <displayInfoPage+0x30>
c0de5e84:	eb09 0700 	add.w	r7, r9, r0
c0de5e88:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de5e8a:	6800      	ldr	r0, [r0, #0]
c0de5e8c:	4e13      	ldr	r6, [pc, #76]	@ (c0de5edc <displayInfoPage+0x64>)
c0de5e8e:	447e      	add	r6, pc
c0de5e90:	47b0      	blx	r6
c0de5e92:	f000 fc0a 	bl	c0de66aa <OUTLINED_FUNCTION_10>
c0de5e96:	4605      	mov	r5, r0
c0de5e98:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de5e9a:	6840      	ldr	r0, [r0, #4]
c0de5e9c:	47b0      	blx	r6
c0de5e9e:	f000 fc04 	bl	c0de66aa <OUTLINED_FUNCTION_10>
c0de5ea2:	4603      	mov	r3, r0
c0de5ea4:	2100      	movs	r1, #0
c0de5ea6:	e008      	b.n	c0de5eba <displayInfoPage+0x42>
c0de5ea8:	490d      	ldr	r1, [pc, #52]	@ (c0de5ee0 <displayInfoPage+0x68>)
c0de5eaa:	4448      	add	r0, r9
c0de5eac:	2300      	movs	r3, #0
c0de5eae:	4479      	add	r1, pc
c0de5eb0:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5eb2:	490c      	ldr	r1, [pc, #48]	@ (c0de5ee4 <displayInfoPage+0x6c>)
c0de5eb4:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5ee8 <displayInfoPage+0x70>)
c0de5eb6:	4479      	add	r1, pc
c0de5eb8:	447d      	add	r5, pc
c0de5eba:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5eec <displayInfoPage+0x74>)
c0de5ebc:	2002      	movs	r0, #2
c0de5ebe:	2200      	movs	r2, #0
c0de5ec0:	9002      	str	r0, [sp, #8]
c0de5ec2:	4620      	mov	r0, r4
c0de5ec4:	447e      	add	r6, pc
c0de5ec6:	e9cd 6200 	strd	r6, r2, [sp]
c0de5eca:	462a      	mov	r2, r5
c0de5ecc:	f7ff f928 	bl	c0de5120 <drawStep>
c0de5ed0:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5ed4:	f001 b953 	b.w	c0de717e <nbgl_refresh>
c0de5ed8:	00000750 	.word	0x00000750
c0de5edc:	0000170b 	.word	0x0000170b
c0de5ee0:	ffffedff 	.word	0xffffedff
c0de5ee4:	00001eba 	.word	0x00001eba
c0de5ee8:	0000223d 	.word	0x0000223d
c0de5eec:	00000029 	.word	0x00000029

c0de5ef0 <infoCallback>:
c0de5ef0:	b5e0      	push	{r5, r6, r7, lr}
c0de5ef2:	4608      	mov	r0, r1
c0de5ef4:	f10d 0107 	add.w	r1, sp, #7
c0de5ef8:	f7ff fe8a 	bl	c0de5c10 <buttonGenericCallback>
c0de5efc:	b128      	cbz	r0, c0de5f0a <infoCallback+0x1a>
c0de5efe:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5f02:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5f06:	f7ff bfb7 	b.w	c0de5e78 <displayInfoPage>
c0de5f0a:	bd8c      	pop	{r2, r3, r7, pc}

c0de5f0c <displayWarningStep>:
c0de5f0c:	b510      	push	{r4, lr}
c0de5f0e:	b088      	sub	sp, #32
c0de5f10:	2000      	movs	r0, #0
c0de5f12:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de5f16:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5f1a:	4839      	ldr	r0, [pc, #228]	@ (c0de6000 <displayWarningStep+0xf4>)
c0de5f1c:	eb09 0200 	add.w	r2, r9, r0
c0de5f20:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5f24:	69d2      	ldr	r2, [r2, #28]
c0de5f26:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de5f28:	b183      	cbz	r3, c0de5f4c <displayWarningStep+0x40>
c0de5f2a:	b979      	cbnz	r1, c0de5f4c <displayWarningStep+0x40>
c0de5f2c:	2000      	movs	r0, #0
c0de5f2e:	685b      	ldr	r3, [r3, #4]
c0de5f30:	2200      	movs	r2, #0
c0de5f32:	e9cd 0000 	strd	r0, r0, [sp]
c0de5f36:	9002      	str	r0, [sp, #8]
c0de5f38:	2001      	movs	r0, #1
c0de5f3a:	4936      	ldr	r1, [pc, #216]	@ (c0de6014 <displayWarningStep+0x108>)
c0de5f3c:	4479      	add	r1, pc
c0de5f3e:	f7fe fb25 	bl	c0de458c <nbgl_stepDrawText>
c0de5f42:	b008      	add	sp, #32
c0de5f44:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5f48:	f001 b919 	b.w	c0de717e <nbgl_refresh>
c0de5f4c:	6813      	ldr	r3, [r2, #0]
c0de5f4e:	06dc      	lsls	r4, r3, #27
c0de5f50:	d411      	bmi.n	c0de5f76 <displayWarningStep+0x6a>
c0de5f52:	2b00      	cmp	r3, #0
c0de5f54:	d151      	bne.n	c0de5ffa <displayWarningStep+0xee>
c0de5f56:	69d3      	ldr	r3, [r2, #28]
c0de5f58:	2b00      	cmp	r3, #0
c0de5f5a:	d04e      	beq.n	c0de5ffa <displayWarningStep+0xee>
c0de5f5c:	eb09 0400 	add.w	r4, r9, r0
c0de5f60:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de5f64:	42a1      	cmp	r1, r4
c0de5f66:	d128      	bne.n	c0de5fba <displayWarningStep+0xae>
c0de5f68:	6858      	ldr	r0, [r3, #4]
c0de5f6a:	691a      	ldr	r2, [r3, #16]
c0de5f6c:	699b      	ldr	r3, [r3, #24]
c0de5f6e:	9006      	str	r0, [sp, #24]
c0de5f70:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de5f74:	e00e      	b.n	c0de5f94 <displayWarningStep+0x88>
c0de5f76:	eb09 0200 	add.w	r2, r9, r0
c0de5f7a:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de5f7e:	4291      	cmp	r1, r2
c0de5f80:	d10d      	bne.n	c0de5f9e <displayWarningStep+0x92>
c0de5f82:	4820      	ldr	r0, [pc, #128]	@ (c0de6004 <displayWarningStep+0xf8>)
c0de5f84:	4478      	add	r0, pc
c0de5f86:	9005      	str	r0, [sp, #20]
c0de5f88:	481f      	ldr	r0, [pc, #124]	@ (c0de6008 <displayWarningStep+0xfc>)
c0de5f8a:	4478      	add	r0, pc
c0de5f8c:	9004      	str	r0, [sp, #16]
c0de5f8e:	481f      	ldr	r0, [pc, #124]	@ (c0de600c <displayWarningStep+0x100>)
c0de5f90:	4478      	add	r0, pc
c0de5f92:	9006      	str	r0, [sp, #24]
c0de5f94:	2003      	movs	r0, #3
c0de5f96:	2900      	cmp	r1, #0
c0de5f98:	bf08      	it	eq
c0de5f9a:	2001      	moveq	r0, #1
c0de5f9c:	e020      	b.n	c0de5fe0 <displayWarningStep+0xd4>
c0de5f9e:	4448      	add	r0, r9
c0de5fa0:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5fa4:	3801      	subs	r0, #1
c0de5fa6:	4288      	cmp	r0, r1
c0de5fa8:	d119      	bne.n	c0de5fde <displayWarningStep+0xd2>
c0de5faa:	aa04      	add	r2, sp, #16
c0de5fac:	2000      	movs	r0, #0
c0de5fae:	f102 0108 	add.w	r1, r2, #8
c0de5fb2:	f000 f877 	bl	c0de60a4 <getLastPageInfo>
c0de5fb6:	200a      	movs	r0, #10
c0de5fb8:	e012      	b.n	c0de5fe0 <displayWarningStep+0xd4>
c0de5fba:	4448      	add	r0, r9
c0de5fbc:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5fc0:	3801      	subs	r0, #1
c0de5fc2:	4288      	cmp	r0, r1
c0de5fc4:	d10b      	bne.n	c0de5fde <displayWarningStep+0xd2>
c0de5fc6:	6950      	ldr	r0, [r2, #20]
c0de5fc8:	7901      	ldrb	r1, [r0, #4]
c0de5fca:	2901      	cmp	r1, #1
c0de5fcc:	d115      	bne.n	c0de5ffa <displayWarningStep+0xee>
c0de5fce:	68c1      	ldr	r1, [r0, #12]
c0de5fd0:	6982      	ldr	r2, [r0, #24]
c0de5fd2:	6a00      	ldr	r0, [r0, #32]
c0de5fd4:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de5fd8:	2003      	movs	r0, #3
c0de5fda:	9106      	str	r1, [sp, #24]
c0de5fdc:	e000      	b.n	c0de5fe0 <displayWarningStep+0xd4>
c0de5fde:	2000      	movs	r0, #0
c0de5fe0:	2101      	movs	r1, #1
c0de5fe2:	2200      	movs	r2, #0
c0de5fe4:	f88d 101d 	strb.w	r1, [sp, #29]
c0de5fe8:	2100      	movs	r1, #0
c0de5fea:	9100      	str	r1, [sp, #0]
c0de5fec:	4908      	ldr	r1, [pc, #32]	@ (c0de6010 <displayWarningStep+0x104>)
c0de5fee:	ab04      	add	r3, sp, #16
c0de5ff0:	4479      	add	r1, pc
c0de5ff2:	f7fe fc11 	bl	c0de4818 <nbgl_stepDrawCenteredInfo>
c0de5ff6:	f001 f8c2 	bl	c0de717e <nbgl_refresh>
c0de5ffa:	b008      	add	sp, #32
c0de5ffc:	bd10      	pop	{r4, pc}
c0de5ffe:	bf00      	nop
c0de6000:	00000750 	.word	0x00000750
c0de6004:	00001fe0 	.word	0x00001fe0
c0de6008:	0000210d 	.word	0x0000210d
c0de600c:	00001ec5 	.word	0x00001ec5
c0de6010:	00000025 	.word	0x00000025
c0de6014:	000000d9 	.word	0x000000d9

c0de6018 <warningNavigate>:
c0de6018:	2904      	cmp	r1, #4
c0de601a:	d009      	beq.n	c0de6030 <warningNavigate+0x18>
c0de601c:	2901      	cmp	r1, #1
c0de601e:	d024      	beq.n	c0de606a <warningNavigate+0x52>
c0de6020:	bb11      	cbnz	r1, c0de6068 <warningNavigate+0x50>
c0de6022:	481f      	ldr	r0, [pc, #124]	@ (c0de60a0 <warningNavigate+0x88>)
c0de6024:	4448      	add	r0, r9
c0de6026:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de602a:	b390      	cbz	r0, c0de6092 <warningNavigate+0x7a>
c0de602c:	3801      	subs	r0, #1
c0de602e:	e027      	b.n	c0de6080 <warningNavigate+0x68>
c0de6030:	481b      	ldr	r0, [pc, #108]	@ (c0de60a0 <warningNavigate+0x88>)
c0de6032:	eb09 0100 	add.w	r1, r9, r0
c0de6036:	69c9      	ldr	r1, [r1, #28]
c0de6038:	7809      	ldrb	r1, [r1, #0]
c0de603a:	06c9      	lsls	r1, r1, #27
c0de603c:	d514      	bpl.n	c0de6068 <warningNavigate+0x50>
c0de603e:	eb09 0200 	add.w	r2, r9, r0
c0de6042:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6046:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de604a:	4291      	cmp	r1, r2
c0de604c:	bf08      	it	eq
c0de604e:	f000 b8bd 	beq.w	c0de61cc <launchReviewAfterWarning>
c0de6052:	eb09 0200 	add.w	r2, r9, r0
c0de6056:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de605a:	3a01      	subs	r2, #1
c0de605c:	428a      	cmp	r2, r1
c0de605e:	d103      	bne.n	c0de6068 <warningNavigate+0x50>
c0de6060:	4448      	add	r0, r9
c0de6062:	6a01      	ldr	r1, [r0, #32]
c0de6064:	2000      	movs	r0, #0
c0de6066:	4708      	bx	r1
c0de6068:	4770      	bx	lr
c0de606a:	480d      	ldr	r0, [pc, #52]	@ (c0de60a0 <warningNavigate+0x88>)
c0de606c:	eb09 0200 	add.w	r2, r9, r0
c0de6070:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6074:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6078:	3a01      	subs	r2, #1
c0de607a:	428a      	cmp	r2, r1
c0de607c:	dd05      	ble.n	c0de608a <warningNavigate+0x72>
c0de607e:	1c48      	adds	r0, r1, #1
c0de6080:	4907      	ldr	r1, [pc, #28]	@ (c0de60a0 <warningNavigate+0x88>)
c0de6082:	4449      	add	r1, r9
c0de6084:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de6088:	e003      	b.n	c0de6092 <warningNavigate+0x7a>
c0de608a:	4448      	add	r0, r9
c0de608c:	69c0      	ldr	r0, [r0, #28]
c0de608e:	6801      	ldr	r1, [r0, #0]
c0de6090:	b109      	cbz	r1, c0de6096 <warningNavigate+0x7e>
c0de6092:	f7ff bf3b 	b.w	c0de5f0c <displayWarningStep>
c0de6096:	69c0      	ldr	r0, [r0, #28]
c0de6098:	2800      	cmp	r0, #0
c0de609a:	d0fa      	beq.n	c0de6092 <warningNavigate+0x7a>
c0de609c:	f000 b896 	b.w	c0de61cc <launchReviewAfterWarning>
c0de60a0:	00000750 	.word	0x00000750

c0de60a4 <getLastPageInfo>:
c0de60a4:	b170      	cbz	r0, c0de60c4 <getLastPageInfo+0x20>
c0de60a6:	4833      	ldr	r0, [pc, #204]	@ (c0de6174 <getLastPageInfo+0xd0>)
c0de60a8:	4478      	add	r0, pc
c0de60aa:	6008      	str	r0, [r1, #0]
c0de60ac:	4830      	ldr	r0, [pc, #192]	@ (c0de6170 <getLastPageInfo+0xcc>)
c0de60ae:	eb09 0100 	add.w	r1, r9, r0
c0de60b2:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de60b6:	2904      	cmp	r1, #4
c0de60b8:	d113      	bne.n	c0de60e2 <getLastPageInfo+0x3e>
c0de60ba:	482f      	ldr	r0, [pc, #188]	@ (c0de6178 <getLastPageInfo+0xd4>)
c0de60bc:	492f      	ldr	r1, [pc, #188]	@ (c0de617c <getLastPageInfo+0xd8>)
c0de60be:	4478      	add	r0, pc
c0de60c0:	4479      	add	r1, pc
c0de60c2:	e04f      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de60c4:	4838      	ldr	r0, [pc, #224]	@ (c0de61a8 <getLastPageInfo+0x104>)
c0de60c6:	4478      	add	r0, pc
c0de60c8:	6008      	str	r0, [r1, #0]
c0de60ca:	4829      	ldr	r0, [pc, #164]	@ (c0de6170 <getLastPageInfo+0xcc>)
c0de60cc:	eb09 0100 	add.w	r1, r9, r0
c0de60d0:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de60d4:	2904      	cmp	r1, #4
c0de60d6:	d10b      	bne.n	c0de60f0 <getLastPageInfo+0x4c>
c0de60d8:	4834      	ldr	r0, [pc, #208]	@ (c0de61ac <getLastPageInfo+0x108>)
c0de60da:	4935      	ldr	r1, [pc, #212]	@ (c0de61b0 <getLastPageInfo+0x10c>)
c0de60dc:	4478      	add	r0, pc
c0de60de:	4479      	add	r1, pc
c0de60e0:	e040      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de60e2:	eb09 0100 	add.w	r1, r9, r0
c0de60e6:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de60e8:	b171      	cbz	r1, c0de6108 <getLastPageInfo+0x64>
c0de60ea:	4825      	ldr	r0, [pc, #148]	@ (c0de6180 <getLastPageInfo+0xdc>)
c0de60ec:	4478      	add	r0, pc
c0de60ee:	e039      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de60f0:	4448      	add	r0, r9
c0de60f2:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de60f4:	f010 0007 	ands.w	r0, r0, #7
c0de60f8:	d017      	beq.n	c0de612a <getLastPageInfo+0x86>
c0de60fa:	2801      	cmp	r0, #1
c0de60fc:	d11a      	bne.n	c0de6134 <getLastPageInfo+0x90>
c0de60fe:	482f      	ldr	r0, [pc, #188]	@ (c0de61bc <getLastPageInfo+0x118>)
c0de6100:	492f      	ldr	r1, [pc, #188]	@ (c0de61c0 <getLastPageInfo+0x11c>)
c0de6102:	4478      	add	r0, pc
c0de6104:	4479      	add	r1, pc
c0de6106:	e02d      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de6108:	4448      	add	r0, r9
c0de610a:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de610c:	f000 0107 	and.w	r1, r0, #7
c0de6110:	2901      	cmp	r1, #1
c0de6112:	d014      	beq.n	c0de613e <getLastPageInfo+0x9a>
c0de6114:	b9e9      	cbnz	r1, c0de6152 <getLastPageInfo+0xae>
c0de6116:	0640      	lsls	r0, r0, #25
c0de6118:	481a      	ldr	r0, [pc, #104]	@ (c0de6184 <getLastPageInfo+0xe0>)
c0de611a:	491b      	ldr	r1, [pc, #108]	@ (c0de6188 <getLastPageInfo+0xe4>)
c0de611c:	4478      	add	r0, pc
c0de611e:	4479      	add	r1, pc
c0de6120:	bf58      	it	pl
c0de6122:	4601      	movpl	r1, r0
c0de6124:	4819      	ldr	r0, [pc, #100]	@ (c0de618c <getLastPageInfo+0xe8>)
c0de6126:	4478      	add	r0, pc
c0de6128:	e01c      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de612a:	4822      	ldr	r0, [pc, #136]	@ (c0de61b4 <getLastPageInfo+0x110>)
c0de612c:	4922      	ldr	r1, [pc, #136]	@ (c0de61b8 <getLastPageInfo+0x114>)
c0de612e:	4478      	add	r0, pc
c0de6130:	4479      	add	r1, pc
c0de6132:	e017      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de6134:	4823      	ldr	r0, [pc, #140]	@ (c0de61c4 <getLastPageInfo+0x120>)
c0de6136:	4924      	ldr	r1, [pc, #144]	@ (c0de61c8 <getLastPageInfo+0x124>)
c0de6138:	4478      	add	r0, pc
c0de613a:	4479      	add	r1, pc
c0de613c:	e012      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de613e:	0640      	lsls	r0, r0, #25
c0de6140:	4813      	ldr	r0, [pc, #76]	@ (c0de6190 <getLastPageInfo+0xec>)
c0de6142:	4914      	ldr	r1, [pc, #80]	@ (c0de6194 <getLastPageInfo+0xf0>)
c0de6144:	4478      	add	r0, pc
c0de6146:	4479      	add	r1, pc
c0de6148:	bf58      	it	pl
c0de614a:	4601      	movpl	r1, r0
c0de614c:	4812      	ldr	r0, [pc, #72]	@ (c0de6198 <getLastPageInfo+0xf4>)
c0de614e:	4478      	add	r0, pc
c0de6150:	e008      	b.n	c0de6164 <getLastPageInfo+0xc0>
c0de6152:	0640      	lsls	r0, r0, #25
c0de6154:	4811      	ldr	r0, [pc, #68]	@ (c0de619c <getLastPageInfo+0xf8>)
c0de6156:	4912      	ldr	r1, [pc, #72]	@ (c0de61a0 <getLastPageInfo+0xfc>)
c0de6158:	4478      	add	r0, pc
c0de615a:	4479      	add	r1, pc
c0de615c:	bf58      	it	pl
c0de615e:	4601      	movpl	r1, r0
c0de6160:	4810      	ldr	r0, [pc, #64]	@ (c0de61a4 <getLastPageInfo+0x100>)
c0de6162:	4478      	add	r0, pc
c0de6164:	6011      	str	r1, [r2, #0]
c0de6166:	4902      	ldr	r1, [pc, #8]	@ (c0de6170 <getLastPageInfo+0xcc>)
c0de6168:	4449      	add	r1, r9
c0de616a:	6388      	str	r0, [r1, #56]	@ 0x38
c0de616c:	4770      	bx	lr
c0de616e:	bf00      	nop
c0de6170:	00000750 	.word	0x00000750
c0de6174:	00001d8a 	.word	0x00001d8a
c0de6178:	00000143 	.word	0x00000143
c0de617c:	00002110 	.word	0x00002110
c0de6180:	00000115 	.word	0x00000115
c0de6184:	00001eb7 	.word	0x00001eb7
c0de6188:	00001f58 	.word	0x00001f58
c0de618c:	000000db 	.word	0x000000db
c0de6190:	00001e73 	.word	0x00001e73
c0de6194:	00001eb1 	.word	0x00001eb1
c0de6198:	000000b3 	.word	0x000000b3
c0de619c:	00001fed 	.word	0x00001fed
c0de61a0:	00001f51 	.word	0x00001f51
c0de61a4:	0000009f 	.word	0x0000009f
c0de61a8:	00001cf0 	.word	0x00001cf0
c0de61ac:	00000139 	.word	0x00000139
c0de61b0:	00001f5c 	.word	0x00001f5c
c0de61b4:	000000e7 	.word	0x000000e7
c0de61b8:	00001eb4 	.word	0x00001eb4
c0de61bc:	00000113 	.word	0x00000113
c0de61c0:	00002050 	.word	0x00002050
c0de61c4:	000000dd 	.word	0x000000dd
c0de61c8:	00002029 	.word	0x00002029

c0de61cc <launchReviewAfterWarning>:
c0de61cc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de61ce:	480c      	ldr	r0, [pc, #48]	@ (c0de6200 <launchReviewAfterWarning+0x34>)
c0de61d0:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de61d4:	2905      	cmp	r1, #5
c0de61d6:	d00d      	beq.n	c0de61f4 <launchReviewAfterWarning+0x28>
c0de61d8:	2902      	cmp	r1, #2
c0de61da:	bf18      	it	ne
c0de61dc:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de61de:	4448      	add	r0, r9
c0de61e0:	1d06      	adds	r6, r0, #4
c0de61e2:	6a00      	ldr	r0, [r0, #32]
c0de61e4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de61e6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de61ea:	9003      	str	r0, [sp, #12]
c0de61ec:	2002      	movs	r0, #2
c0de61ee:	f7fe fdb5 	bl	c0de4d5c <useCaseReview>
c0de61f2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de61f4:	2000      	movs	r0, #0
c0de61f6:	b004      	add	sp, #16
c0de61f8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de61fc:	f7ff b8ac 	b.w	c0de5358 <displayStreamingReviewPage>
c0de6200:	00000750 	.word	0x00000750

c0de6204 <onReviewAccept>:
c0de6204:	4803      	ldr	r0, [pc, #12]	@ (c0de6214 <onReviewAccept+0x10>)
c0de6206:	4448      	add	r0, r9
c0de6208:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de620a:	b109      	cbz	r1, c0de6210 <onReviewAccept+0xc>
c0de620c:	2001      	movs	r0, #1
c0de620e:	4708      	bx	r1
c0de6210:	4770      	bx	lr
c0de6212:	bf00      	nop
c0de6214:	00000750 	.word	0x00000750

c0de6218 <onReviewReject>:
c0de6218:	4803      	ldr	r0, [pc, #12]	@ (c0de6228 <onReviewReject+0x10>)
c0de621a:	4448      	add	r0, r9
c0de621c:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de621e:	b109      	cbz	r1, c0de6224 <onReviewReject+0xc>
c0de6220:	2000      	movs	r0, #0
c0de6222:	4708      	bx	r1
c0de6224:	4770      	bx	lr
c0de6226:	bf00      	nop
c0de6228:	00000750 	.word	0x00000750

c0de622c <buttonSkipCallback>:
c0de622c:	b5b0      	push	{r4, r5, r7, lr}
c0de622e:	2904      	cmp	r1, #4
c0de6230:	d00a      	beq.n	c0de6248 <buttonSkipCallback+0x1c>
c0de6232:	2901      	cmp	r1, #1
c0de6234:	d017      	beq.n	c0de6266 <buttonSkipCallback+0x3a>
c0de6236:	bbb9      	cbnz	r1, c0de62a8 <buttonSkipCallback+0x7c>
c0de6238:	4829      	ldr	r0, [pc, #164]	@ (c0de62e0 <buttonSkipCallback+0xb4>)
c0de623a:	eb09 0100 	add.w	r1, r9, r0
c0de623e:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de6242:	b391      	cbz	r1, c0de62aa <buttonSkipCallback+0x7e>
c0de6244:	2008      	movs	r0, #8
c0de6246:	e02a      	b.n	c0de629e <buttonSkipCallback+0x72>
c0de6248:	4825      	ldr	r0, [pc, #148]	@ (c0de62e0 <buttonSkipCallback+0xb4>)
c0de624a:	eb09 0100 	add.w	r1, r9, r0
c0de624e:	4448      	add	r0, r9
c0de6250:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6254:	2900      	cmp	r1, #0
c0de6256:	d03f      	beq.n	c0de62d8 <buttonSkipCallback+0xac>
c0de6258:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de625c:	3902      	subs	r1, #2
c0de625e:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6262:	2000      	movs	r0, #0
c0de6264:	e030      	b.n	c0de62c8 <buttonSkipCallback+0x9c>
c0de6266:	4a1e      	ldr	r2, [pc, #120]	@ (c0de62e0 <buttonSkipCallback+0xb4>)
c0de6268:	eb09 0002 	add.w	r0, r9, r2
c0de626c:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de6270:	2808      	cmp	r0, #8
c0de6272:	d113      	bne.n	c0de629c <buttonSkipCallback+0x70>
c0de6274:	eb09 0002 	add.w	r0, r9, r2
c0de6278:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de627c:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de6280:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de6284:	1e45      	subs	r5, r0, #1
c0de6286:	2000      	movs	r0, #0
c0de6288:	b2e1      	uxtb	r1, r4
c0de628a:	429d      	cmp	r5, r3
c0de628c:	bfc8      	it	gt
c0de628e:	42a3      	cmpgt	r3, r4
c0de6290:	dd19      	ble.n	c0de62c6 <buttonSkipCallback+0x9a>
c0de6292:	eb09 0002 	add.w	r0, r9, r2
c0de6296:	1c59      	adds	r1, r3, #1
c0de6298:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de629c:	2000      	movs	r0, #0
c0de629e:	4910      	ldr	r1, [pc, #64]	@ (c0de62e0 <buttonSkipCallback+0xb4>)
c0de62a0:	4449      	add	r1, r9
c0de62a2:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de62a6:	e00e      	b.n	c0de62c6 <buttonSkipCallback+0x9a>
c0de62a8:	bdb0      	pop	{r4, r5, r7, pc}
c0de62aa:	eb09 0100 	add.w	r1, r9, r0
c0de62ae:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de62b2:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de62b6:	b2d9      	uxtb	r1, r3
c0de62b8:	429a      	cmp	r2, r3
c0de62ba:	dd03      	ble.n	c0de62c4 <buttonSkipCallback+0x98>
c0de62bc:	4448      	add	r0, r9
c0de62be:	3a01      	subs	r2, #1
c0de62c0:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de62c4:	2008      	movs	r0, #8
c0de62c6:	b119      	cbz	r1, c0de62d0 <buttonSkipCallback+0xa4>
c0de62c8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de62cc:	f7fe be3c 	b.w	c0de4f48 <displayReviewPage>
c0de62d0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de62d4:	f7ff b840 	b.w	c0de5358 <displayStreamingReviewPage>
c0de62d8:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de62da:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de62de:	4700      	bx	r0
c0de62e0:	00000750 	.word	0x00000750

c0de62e4 <displayAliasFullValue>:
c0de62e4:	b570      	push	{r4, r5, r6, lr}
c0de62e6:	b088      	sub	sp, #32
c0de62e8:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6354 <displayAliasFullValue+0x70>)
c0de62ea:	f10d 0213 	add.w	r2, sp, #19
c0de62ee:	eb09 0504 	add.w	r5, r9, r4
c0de62f2:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de62f4:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de62f8:	ab05      	add	r3, sp, #20
c0de62fa:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de62fe:	9202      	str	r2, [sp, #8]
c0de6300:	e9cd 6300 	strd	r6, r3, [sp]
c0de6304:	aa07      	add	r2, sp, #28
c0de6306:	ab06      	add	r3, sp, #24
c0de6308:	f7ff fba8 	bl	c0de5a5c <getPairData>
c0de630c:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de630e:	b178      	cbz	r0, c0de6330 <displayAliasFullValue+0x4c>
c0de6310:	eb09 0104 	add.w	r1, r9, r4
c0de6314:	2200      	movs	r2, #0
c0de6316:	668a      	str	r2, [r1, #104]	@ 0x68
c0de6318:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de631c:	7d01      	ldrb	r1, [r0, #20]
c0de631e:	2901      	cmp	r1, #1
c0de6320:	d008      	beq.n	c0de6334 <displayAliasFullValue+0x50>
c0de6322:	2905      	cmp	r1, #5
c0de6324:	d008      	beq.n	c0de6338 <displayAliasFullValue+0x54>
c0de6326:	2904      	cmp	r1, #4
c0de6328:	d102      	bne.n	c0de6330 <displayAliasFullValue+0x4c>
c0de632a:	6900      	ldr	r0, [r0, #16]
c0de632c:	300c      	adds	r0, #12
c0de632e:	e005      	b.n	c0de633c <displayAliasFullValue+0x58>
c0de6330:	b008      	add	sp, #32
c0de6332:	bd70      	pop	{r4, r5, r6, pc}
c0de6334:	2002      	movs	r0, #2
c0de6336:	e003      	b.n	c0de6340 <displayAliasFullValue+0x5c>
c0de6338:	6900      	ldr	r0, [r0, #16]
c0de633a:	3008      	adds	r0, #8
c0de633c:	7800      	ldrb	r0, [r0, #0]
c0de633e:	3001      	adds	r0, #1
c0de6340:	eb09 0104 	add.w	r1, r9, r4
c0de6344:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de6348:	2000      	movs	r0, #0
c0de634a:	b008      	add	sp, #32
c0de634c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6350:	f000 b814 	b.w	c0de637c <displayExtensionStep>
c0de6354:	00000750 	.word	0x00000750

c0de6358 <reviewCallback>:
c0de6358:	b5e0      	push	{r5, r6, r7, lr}
c0de635a:	4608      	mov	r0, r1
c0de635c:	f10d 0107 	add.w	r1, sp, #7
c0de6360:	f7ff fc56 	bl	c0de5c10 <buttonGenericCallback>
c0de6364:	b130      	cbz	r0, c0de6374 <reviewCallback+0x1c>
c0de6366:	4804      	ldr	r0, [pc, #16]	@ (c0de6378 <reviewCallback+0x20>)
c0de6368:	f000 f993 	bl	c0de6692 <OUTLINED_FUNCTION_8>
c0de636c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6370:	f7fe bdea 	b.w	c0de4f48 <displayReviewPage>
c0de6374:	bd8c      	pop	{r2, r3, r7, pc}
c0de6376:	bf00      	nop
c0de6378:	00000750 	.word	0x00000750

c0de637c <displayExtensionStep>:
c0de637c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6380:	b088      	sub	sp, #32
c0de6382:	4e36      	ldr	r6, [pc, #216]	@ (c0de645c <displayExtensionStep+0xe0>)
c0de6384:	4680      	mov	r8, r0
c0de6386:	2000      	movs	r0, #0
c0de6388:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de638c:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6390:	eb09 0006 	add.w	r0, r9, r6
c0de6394:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de6396:	b108      	cbz	r0, c0de639c <displayExtensionStep+0x20>
c0de6398:	f7fe fb64 	bl	c0de4a64 <nbgl_stepRelease>
c0de639c:	eb09 0106 	add.w	r1, r9, r6
c0de63a0:	f000 f970 	bl	c0de6684 <OUTLINED_FUNCTION_7>
c0de63a4:	dd10      	ble.n	c0de63c8 <displayExtensionStep+0x4c>
c0de63a6:	2703      	movs	r7, #3
c0de63a8:	eb09 0106 	add.w	r1, r9, r6
c0de63ac:	2800      	cmp	r0, #0
c0de63ae:	bf08      	it	eq
c0de63b0:	2701      	moveq	r7, #1
c0de63b2:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de63b4:	7d0a      	ldrb	r2, [r1, #20]
c0de63b6:	2a05      	cmp	r2, #5
c0de63b8:	d01a      	beq.n	c0de63f0 <displayExtensionStep+0x74>
c0de63ba:	2a04      	cmp	r2, #4
c0de63bc:	d028      	beq.n	c0de6410 <displayExtensionStep+0x94>
c0de63be:	2a01      	cmp	r2, #1
c0de63c0:	d147      	bne.n	c0de6452 <displayExtensionStep+0xd6>
c0de63c2:	6808      	ldr	r0, [r1, #0]
c0de63c4:	688d      	ldr	r5, [r1, #8]
c0de63c6:	e033      	b.n	c0de6430 <displayExtensionStep+0xb4>
c0de63c8:	d143      	bne.n	c0de6452 <displayExtensionStep+0xd6>
c0de63ca:	2001      	movs	r0, #1
c0de63cc:	2200      	movs	r2, #0
c0de63ce:	f88d 001d 	strb.w	r0, [sp, #29]
c0de63d2:	4924      	ldr	r1, [pc, #144]	@ (c0de6464 <displayExtensionStep+0xe8>)
c0de63d4:	4479      	add	r1, pc
c0de63d6:	9104      	str	r1, [sp, #16]
c0de63d8:	4923      	ldr	r1, [pc, #140]	@ (c0de6468 <displayExtensionStep+0xec>)
c0de63da:	9000      	str	r0, [sp, #0]
c0de63dc:	f048 0002 	orr.w	r0, r8, #2
c0de63e0:	4479      	add	r1, pc
c0de63e2:	9106      	str	r1, [sp, #24]
c0de63e4:	4921      	ldr	r1, [pc, #132]	@ (c0de646c <displayExtensionStep+0xf0>)
c0de63e6:	ab04      	add	r3, sp, #16
c0de63e8:	4479      	add	r1, pc
c0de63ea:	f7fe fa15 	bl	c0de4818 <nbgl_stepDrawCenteredInfo>
c0de63ee:	e02d      	b.n	c0de644c <displayExtensionStep+0xd0>
c0de63f0:	690c      	ldr	r4, [r1, #16]
c0de63f2:	0100      	lsls	r0, r0, #4
c0de63f4:	6821      	ldr	r1, [r4, #0]
c0de63f6:	5808      	ldr	r0, [r1, r0]
c0de63f8:	f001 f8d0 	bl	c0de759c <pic>
c0de63fc:	4605      	mov	r5, r0
c0de63fe:	eb09 0006 	add.w	r0, r9, r6
c0de6402:	6821      	ldr	r1, [r4, #0]
c0de6404:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6408:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de640c:	6840      	ldr	r0, [r0, #4]
c0de640e:	e00d      	b.n	c0de642c <displayExtensionStep+0xb0>
c0de6410:	690c      	ldr	r4, [r1, #16]
c0de6412:	6821      	ldr	r1, [r4, #0]
c0de6414:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6418:	f001 f8c0 	bl	c0de759c <pic>
c0de641c:	4605      	mov	r5, r0
c0de641e:	eb09 0006 	add.w	r0, r9, r6
c0de6422:	6861      	ldr	r1, [r4, #4]
c0de6424:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6428:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de642c:	f001 f8b6 	bl	c0de759c <pic>
c0de6430:	b17d      	cbz	r5, c0de6452 <displayExtensionStep+0xd6>
c0de6432:	2101      	movs	r1, #1
c0de6434:	ea47 0208 	orr.w	r2, r7, r8
c0de6438:	462b      	mov	r3, r5
c0de643a:	e9cd 0100 	strd	r0, r1, [sp]
c0de643e:	9102      	str	r1, [sp, #8]
c0de6440:	4610      	mov	r0, r2
c0de6442:	2200      	movs	r2, #0
c0de6444:	4906      	ldr	r1, [pc, #24]	@ (c0de6460 <displayExtensionStep+0xe4>)
c0de6446:	4479      	add	r1, pc
c0de6448:	f7fe f8a0 	bl	c0de458c <nbgl_stepDrawText>
c0de644c:	eb09 0106 	add.w	r1, r9, r6
c0de6450:	6688      	str	r0, [r1, #104]	@ 0x68
c0de6452:	f000 fe94 	bl	c0de717e <nbgl_refresh>
c0de6456:	b008      	add	sp, #32
c0de6458:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de645c:	00000750 	.word	0x00000750
c0de6460:	00000027 	.word	0x00000027
c0de6464:	00001d21 	.word	0x00001d21
c0de6468:	00001990 	.word	0x00001990
c0de646c:	00000085 	.word	0x00000085

c0de6470 <extensionNavigate>:
c0de6470:	b580      	push	{r7, lr}
c0de6472:	2904      	cmp	r1, #4
c0de6474:	d00a      	beq.n	c0de648c <extensionNavigate+0x1c>
c0de6476:	2901      	cmp	r1, #1
c0de6478:	d01d      	beq.n	c0de64b6 <extensionNavigate+0x46>
c0de647a:	b9d9      	cbnz	r1, c0de64b4 <extensionNavigate+0x44>
c0de647c:	4818      	ldr	r0, [pc, #96]	@ (c0de64e0 <extensionNavigate+0x70>)
c0de647e:	4448      	add	r0, r9
c0de6480:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6484:	b330      	cbz	r0, c0de64d4 <extensionNavigate+0x64>
c0de6486:	1e41      	subs	r1, r0, #1
c0de6488:	2008      	movs	r0, #8
c0de648a:	e01c      	b.n	c0de64c6 <extensionNavigate+0x56>
c0de648c:	4814      	ldr	r0, [pc, #80]	@ (c0de64e0 <extensionNavigate+0x70>)
c0de648e:	eb09 0100 	add.w	r1, r9, r0
c0de6492:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de6496:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de649a:	3901      	subs	r1, #1
c0de649c:	4291      	cmp	r1, r2
c0de649e:	d109      	bne.n	c0de64b4 <extensionNavigate+0x44>
c0de64a0:	4448      	add	r0, r9
c0de64a2:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de64a4:	f7fe fade 	bl	c0de4a64 <nbgl_stepRelease>
c0de64a8:	f000 fe82 	bl	c0de71b0 <nbgl_screenRedraw>
c0de64ac:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de64b0:	f000 be65 	b.w	c0de717e <nbgl_refresh>
c0de64b4:	bd80      	pop	{r7, pc}
c0de64b6:	480a      	ldr	r0, [pc, #40]	@ (c0de64e0 <extensionNavigate+0x70>)
c0de64b8:	eb09 0100 	add.w	r1, r9, r0
c0de64bc:	f000 f8e2 	bl	c0de6684 <OUTLINED_FUNCTION_7>
c0de64c0:	dd06      	ble.n	c0de64d0 <extensionNavigate+0x60>
c0de64c2:	1c41      	adds	r1, r0, #1
c0de64c4:	2000      	movs	r0, #0
c0de64c6:	4a06      	ldr	r2, [pc, #24]	@ (c0de64e0 <extensionNavigate+0x70>)
c0de64c8:	444a      	add	r2, r9
c0de64ca:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de64ce:	e002      	b.n	c0de64d6 <extensionNavigate+0x66>
c0de64d0:	2000      	movs	r0, #0
c0de64d2:	e000      	b.n	c0de64d6 <extensionNavigate+0x66>
c0de64d4:	2008      	movs	r0, #8
c0de64d6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de64da:	f7ff bf4f 	b.w	c0de637c <displayExtensionStep>
c0de64de:	bf00      	nop
c0de64e0:	00000750 	.word	0x00000750

c0de64e4 <statusTickerCallback>:
c0de64e4:	4802      	ldr	r0, [pc, #8]	@ (c0de64f0 <statusTickerCallback+0xc>)
c0de64e6:	4448      	add	r0, r9
c0de64e8:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de64ea:	b100      	cbz	r0, c0de64ee <statusTickerCallback+0xa>
c0de64ec:	4700      	bx	r0
c0de64ee:	4770      	bx	lr
c0de64f0:	00000750 	.word	0x00000750

c0de64f4 <getChoiceName>:
c0de64f4:	b5b0      	push	{r4, r5, r7, lr}
c0de64f6:	b090      	sub	sp, #64	@ 0x40
c0de64f8:	ad01      	add	r5, sp, #4
c0de64fa:	f000 f8d1 	bl	c0de66a0 <OUTLINED_FUNCTION_9>
c0de64fe:	4814      	ldr	r0, [pc, #80]	@ (c0de6550 <getChoiceName+0x5c>)
c0de6500:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6504:	462a      	mov	r2, r5
c0de6506:	4448      	add	r0, r9
c0de6508:	f000 f8b1 	bl	c0de666e <OUTLINED_FUNCTION_4>
c0de650c:	b150      	cbz	r0, c0de6524 <getChoiceName+0x30>
c0de650e:	7801      	ldrb	r1, [r0, #0]
c0de6510:	290a      	cmp	r1, #10
c0de6512:	d009      	beq.n	c0de6528 <getChoiceName+0x34>
c0de6514:	2909      	cmp	r1, #9
c0de6516:	d105      	bne.n	c0de6524 <getChoiceName+0x30>
c0de6518:	f000 f8ad 	bl	c0de6676 <OUTLINED_FUNCTION_5>
c0de651c:	4605      	mov	r5, r0
c0de651e:	f855 0b05 	ldr.w	r0, [r5], #5
c0de6522:	e006      	b.n	c0de6532 <getChoiceName+0x3e>
c0de6524:	2000      	movs	r0, #0
c0de6526:	e010      	b.n	c0de654a <getChoiceName+0x56>
c0de6528:	f000 f8a5 	bl	c0de6676 <OUTLINED_FUNCTION_5>
c0de652c:	4605      	mov	r5, r0
c0de652e:	f855 0b08 	ldr.w	r0, [r5], #8
c0de6532:	f001 f833 	bl	c0de759c <pic>
c0de6536:	7829      	ldrb	r1, [r5, #0]
c0de6538:	42a1      	cmp	r1, r4
c0de653a:	d904      	bls.n	c0de6546 <getChoiceName+0x52>
c0de653c:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de6540:	f001 f82c 	bl	c0de759c <pic>
c0de6544:	e001      	b.n	c0de654a <getChoiceName+0x56>
c0de6546:	4803      	ldr	r0, [pc, #12]	@ (c0de6554 <getChoiceName+0x60>)
c0de6548:	4478      	add	r0, pc
c0de654a:	b010      	add	sp, #64	@ 0x40
c0de654c:	bdb0      	pop	{r4, r5, r7, pc}
c0de654e:	bf00      	nop
c0de6550:	00000750 	.word	0x00000750
c0de6554:	00001bad 	.word	0x00001bad

c0de6558 <onChoiceSelected>:
c0de6558:	b570      	push	{r4, r5, r6, lr}
c0de655a:	b090      	sub	sp, #64	@ 0x40
c0de655c:	ad01      	add	r5, sp, #4
c0de655e:	f000 f89f 	bl	c0de66a0 <OUTLINED_FUNCTION_9>
c0de6562:	4e17      	ldr	r6, [pc, #92]	@ (c0de65c0 <onChoiceSelected+0x68>)
c0de6564:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6568:	462a      	mov	r2, r5
c0de656a:	eb09 0006 	add.w	r0, r9, r6
c0de656e:	f000 f87e 	bl	c0de666e <OUTLINED_FUNCTION_4>
c0de6572:	b318      	cbz	r0, c0de65bc <onChoiceSelected+0x64>
c0de6574:	7801      	ldrb	r1, [r0, #0]
c0de6576:	290a      	cmp	r1, #10
c0de6578:	d008      	beq.n	c0de658c <onChoiceSelected+0x34>
c0de657a:	2909      	cmp	r1, #9
c0de657c:	d10f      	bne.n	c0de659e <onChoiceSelected+0x46>
c0de657e:	f000 f87a 	bl	c0de6676 <OUTLINED_FUNCTION_5>
c0de6582:	7941      	ldrb	r1, [r0, #5]
c0de6584:	42a1      	cmp	r1, r4
c0de6586:	d90a      	bls.n	c0de659e <onChoiceSelected+0x46>
c0de6588:	3007      	adds	r0, #7
c0de658a:	e006      	b.n	c0de659a <onChoiceSelected+0x42>
c0de658c:	f000 f873 	bl	c0de6676 <OUTLINED_FUNCTION_5>
c0de6590:	7a01      	ldrb	r1, [r0, #8]
c0de6592:	42a1      	cmp	r1, r4
c0de6594:	d903      	bls.n	c0de659e <onChoiceSelected+0x46>
c0de6596:	6840      	ldr	r0, [r0, #4]
c0de6598:	4420      	add	r0, r4
c0de659a:	7800      	ldrb	r0, [r0, #0]
c0de659c:	e000      	b.n	c0de65a0 <onChoiceSelected+0x48>
c0de659e:	20ff      	movs	r0, #255	@ 0xff
c0de65a0:	28ff      	cmp	r0, #255	@ 0xff
c0de65a2:	d006      	beq.n	c0de65b2 <onChoiceSelected+0x5a>
c0de65a4:	eb09 0106 	add.w	r1, r9, r6
c0de65a8:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de65aa:	b112      	cbz	r2, c0de65b2 <onChoiceSelected+0x5a>
c0de65ac:	2100      	movs	r1, #0
c0de65ae:	4790      	blx	r2
c0de65b0:	e004      	b.n	c0de65bc <onChoiceSelected+0x64>
c0de65b2:	eb09 0006 	add.w	r0, r9, r6
c0de65b6:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de65b8:	b100      	cbz	r0, c0de65bc <onChoiceSelected+0x64>
c0de65ba:	4780      	blx	r0
c0de65bc:	b010      	add	sp, #64	@ 0x40
c0de65be:	bd70      	pop	{r4, r5, r6, pc}
c0de65c0:	00000750 	.word	0x00000750

c0de65c4 <streamingReviewCallback>:
c0de65c4:	b5e0      	push	{r5, r6, r7, lr}
c0de65c6:	4608      	mov	r0, r1
c0de65c8:	f10d 0107 	add.w	r1, sp, #7
c0de65cc:	f7ff fb20 	bl	c0de5c10 <buttonGenericCallback>
c0de65d0:	b130      	cbz	r0, c0de65e0 <streamingReviewCallback+0x1c>
c0de65d2:	4804      	ldr	r0, [pc, #16]	@ (c0de65e4 <streamingReviewCallback+0x20>)
c0de65d4:	f000 f85d 	bl	c0de6692 <OUTLINED_FUNCTION_8>
c0de65d8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de65dc:	f7fe bebc 	b.w	c0de5358 <displayStreamingReviewPage>
c0de65e0:	bd8c      	pop	{r2, r3, r7, pc}
c0de65e2:	bf00      	nop
c0de65e4:	00000750 	.word	0x00000750

c0de65e8 <onChoiceAccept>:
c0de65e8:	4803      	ldr	r0, [pc, #12]	@ (c0de65f8 <onChoiceAccept+0x10>)
c0de65ea:	4448      	add	r0, r9
c0de65ec:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de65ee:	b109      	cbz	r1, c0de65f4 <onChoiceAccept+0xc>
c0de65f0:	2001      	movs	r0, #1
c0de65f2:	4708      	bx	r1
c0de65f4:	4770      	bx	lr
c0de65f6:	bf00      	nop
c0de65f8:	00000750 	.word	0x00000750

c0de65fc <onChoiceReject>:
c0de65fc:	4803      	ldr	r0, [pc, #12]	@ (c0de660c <onChoiceReject+0x10>)
c0de65fe:	4448      	add	r0, r9
c0de6600:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de6602:	b109      	cbz	r1, c0de6608 <onChoiceReject+0xc>
c0de6604:	2000      	movs	r0, #0
c0de6606:	4708      	bx	r1
c0de6608:	4770      	bx	lr
c0de660a:	bf00      	nop
c0de660c:	00000750 	.word	0x00000750

c0de6610 <genericChoiceCallback>:
c0de6610:	b5e0      	push	{r5, r6, r7, lr}
c0de6612:	4608      	mov	r0, r1
c0de6614:	f10d 0107 	add.w	r1, sp, #7
c0de6618:	f7ff fafa 	bl	c0de5c10 <buttonGenericCallback>
c0de661c:	b128      	cbz	r0, c0de662a <genericChoiceCallback+0x1a>
c0de661e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6622:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6626:	f7fe bfbd 	b.w	c0de55a4 <displayChoicePage>
c0de662a:	bd8c      	pop	{r2, r3, r7, pc}

c0de662c <OUTLINED_FUNCTION_0>:
c0de662c:	eb09 0500 	add.w	r5, r9, r0
c0de6630:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de6634:	f001 babe 	b.w	c0de7bb4 <__aeabi_memclr>

c0de6638 <OUTLINED_FUNCTION_1>:
c0de6638:	2200      	movs	r2, #0
c0de663a:	eb09 0100 	add.w	r1, r9, r0
c0de663e:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6640:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6644:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6648:	3901      	subs	r1, #1
c0de664a:	4291      	cmp	r1, r2
c0de664c:	4770      	bx	lr

c0de664e <OUTLINED_FUNCTION_2>:
c0de664e:	eb09 0600 	add.w	r6, r9, r0
c0de6652:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6656:	f001 baad 	b.w	c0de7bb4 <__aeabi_memclr>

c0de665a <OUTLINED_FUNCTION_3>:
c0de665a:	460e      	mov	r6, r1
c0de665c:	2140      	movs	r1, #64	@ 0x40
c0de665e:	4698      	mov	r8, r3
c0de6660:	4615      	mov	r5, r2
c0de6662:	eb09 0400 	add.w	r4, r9, r0
c0de6666:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de666a:	f001 baa3 	b.w	c0de7bb4 <__aeabi_memclr>

c0de666e <OUTLINED_FUNCTION_4>:
c0de666e:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6672:	f7ff b9af 	b.w	c0de59d4 <getContentElemAtIdx>

c0de6676 <OUTLINED_FUNCTION_5>:
c0de6676:	3004      	adds	r0, #4
c0de6678:	f000 bf90 	b.w	c0de759c <pic>

c0de667c <OUTLINED_FUNCTION_6>:
c0de667c:	e9cd 6500 	strd	r6, r5, [sp]
c0de6680:	f7fe bd4e 	b.w	c0de5120 <drawStep>

c0de6684 <OUTLINED_FUNCTION_7>:
c0de6684:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de6688:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de668c:	3901      	subs	r1, #1
c0de668e:	4281      	cmp	r1, r0
c0de6690:	4770      	bx	lr

c0de6692 <OUTLINED_FUNCTION_8>:
c0de6692:	eb09 0100 	add.w	r1, r9, r0
c0de6696:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de669a:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de669e:	4770      	bx	lr

c0de66a0 <OUTLINED_FUNCTION_9>:
c0de66a0:	4604      	mov	r4, r0
c0de66a2:	2138      	movs	r1, #56	@ 0x38
c0de66a4:	4628      	mov	r0, r5
c0de66a6:	f001 ba85 	b.w	c0de7bb4 <__aeabi_memclr>

c0de66aa <OUTLINED_FUNCTION_10>:
c0de66aa:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de66ae:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de66b2:	4730      	bx	r6

c0de66b4 <bip32_path_read>:
c0de66b4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de66b8:	b10b      	cbz	r3, c0de66be <bip32_path_read+0xa>
c0de66ba:	2b0a      	cmp	r3, #10
c0de66bc:	d902      	bls.n	c0de66c4 <bip32_path_read+0x10>
c0de66be:	2000      	movs	r0, #0
c0de66c0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de66c4:	4692      	mov	sl, r2
c0de66c6:	460e      	mov	r6, r1
c0de66c8:	4683      	mov	fp, r0
c0de66ca:	425f      	negs	r7, r3
c0de66cc:	2500      	movs	r5, #0
c0de66ce:	f04f 0800 	mov.w	r8, #0
c0de66d2:	9301      	str	r3, [sp, #4]
c0de66d4:	42af      	cmp	r7, r5
c0de66d6:	d00c      	beq.n	c0de66f2 <bip32_path_read+0x3e>
c0de66d8:	f108 0404 	add.w	r4, r8, #4
c0de66dc:	42b4      	cmp	r4, r6
c0de66de:	d808      	bhi.n	c0de66f2 <bip32_path_read+0x3e>
c0de66e0:	4658      	mov	r0, fp
c0de66e2:	4641      	mov	r1, r8
c0de66e4:	f000 fb6f 	bl	c0de6dc6 <read_u32_be>
c0de66e8:	f84a 0008 	str.w	r0, [sl, r8]
c0de66ec:	3d01      	subs	r5, #1
c0de66ee:	46a0      	mov	r8, r4
c0de66f0:	e7f0      	b.n	c0de66d4 <bip32_path_read+0x20>
c0de66f2:	9a01      	ldr	r2, [sp, #4]
c0de66f4:	4269      	negs	r1, r5
c0de66f6:	2000      	movs	r0, #0
c0de66f8:	4291      	cmp	r1, r2
c0de66fa:	bf28      	it	cs
c0de66fc:	2001      	movcs	r0, #1
c0de66fe:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6702 <buffer_seek_cur>:
c0de6702:	6882      	ldr	r2, [r0, #8]
c0de6704:	1889      	adds	r1, r1, r2
c0de6706:	d205      	bcs.n	c0de6714 <buffer_seek_cur+0x12>
c0de6708:	6842      	ldr	r2, [r0, #4]
c0de670a:	4291      	cmp	r1, r2
c0de670c:	bf9e      	ittt	ls
c0de670e:	6081      	strls	r1, [r0, #8]
c0de6710:	2001      	movls	r0, #1
c0de6712:	4770      	bxls	lr
c0de6714:	2000      	movs	r0, #0
c0de6716:	4770      	bx	lr

c0de6718 <buffer_read_u8>:
c0de6718:	b510      	push	{r4, lr}
c0de671a:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de671e:	429a      	cmp	r2, r3
c0de6720:	d00a      	beq.n	c0de6738 <buffer_read_u8+0x20>
c0de6722:	6804      	ldr	r4, [r0, #0]
c0de6724:	5ce4      	ldrb	r4, [r4, r3]
c0de6726:	700c      	strb	r4, [r1, #0]
c0de6728:	6881      	ldr	r1, [r0, #8]
c0de672a:	3101      	adds	r1, #1
c0de672c:	d206      	bcs.n	c0de673c <buffer_read_u8+0x24>
c0de672e:	6844      	ldr	r4, [r0, #4]
c0de6730:	42a1      	cmp	r1, r4
c0de6732:	bf98      	it	ls
c0de6734:	6081      	strls	r1, [r0, #8]
c0de6736:	e001      	b.n	c0de673c <buffer_read_u8+0x24>
c0de6738:	2000      	movs	r0, #0
c0de673a:	7008      	strb	r0, [r1, #0]
c0de673c:	1ad0      	subs	r0, r2, r3
c0de673e:	bf18      	it	ne
c0de6740:	2001      	movne	r0, #1
c0de6742:	bd10      	pop	{r4, pc}

c0de6744 <buffer_read_u64>:
c0de6744:	b570      	push	{r4, r5, r6, lr}
c0de6746:	f000 f87d 	bl	c0de6844 <OUTLINED_FUNCTION_0>
c0de674a:	2e07      	cmp	r6, #7
c0de674c:	d904      	bls.n	c0de6758 <buffer_read_u64+0x14>
c0de674e:	6820      	ldr	r0, [r4, #0]
c0de6750:	b132      	cbz	r2, c0de6760 <buffer_read_u64+0x1c>
c0de6752:	f000 fb6f 	bl	c0de6e34 <read_u64_le>
c0de6756:	e005      	b.n	c0de6764 <buffer_read_u64+0x20>
c0de6758:	2000      	movs	r0, #0
c0de675a:	e9c5 0000 	strd	r0, r0, [r5]
c0de675e:	e00c      	b.n	c0de677a <buffer_read_u64+0x36>
c0de6760:	f000 fb3d 	bl	c0de6dde <read_u64_be>
c0de6764:	e9c5 0100 	strd	r0, r1, [r5]
c0de6768:	68a0      	ldr	r0, [r4, #8]
c0de676a:	f110 0f09 	cmn.w	r0, #9
c0de676e:	d804      	bhi.n	c0de677a <buffer_read_u64+0x36>
c0de6770:	6861      	ldr	r1, [r4, #4]
c0de6772:	3008      	adds	r0, #8
c0de6774:	4288      	cmp	r0, r1
c0de6776:	bf98      	it	ls
c0de6778:	60a0      	strls	r0, [r4, #8]
c0de677a:	2000      	movs	r0, #0
c0de677c:	2e07      	cmp	r6, #7
c0de677e:	bf88      	it	hi
c0de6780:	2001      	movhi	r0, #1
c0de6782:	bd70      	pop	{r4, r5, r6, pc}

c0de6784 <buffer_read_varint>:
c0de6784:	b5b0      	push	{r4, r5, r7, lr}
c0de6786:	4604      	mov	r4, r0
c0de6788:	460d      	mov	r5, r1
c0de678a:	6800      	ldr	r0, [r0, #0]
c0de678c:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6790:	4410      	add	r0, r2
c0de6792:	1a89      	subs	r1, r1, r2
c0de6794:	462a      	mov	r2, r5
c0de6796:	f000 fbb7 	bl	c0de6f08 <varint_read>
c0de679a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de679e:	dd0a      	ble.n	c0de67b6 <buffer_read_varint+0x32>
c0de67a0:	68a1      	ldr	r1, [r4, #8]
c0de67a2:	1840      	adds	r0, r0, r1
c0de67a4:	d205      	bcs.n	c0de67b2 <buffer_read_varint+0x2e>
c0de67a6:	6861      	ldr	r1, [r4, #4]
c0de67a8:	4288      	cmp	r0, r1
c0de67aa:	bf9e      	ittt	ls
c0de67ac:	60a0      	strls	r0, [r4, #8]
c0de67ae:	2001      	movls	r0, #1
c0de67b0:	bdb0      	popls	{r4, r5, r7, pc}
c0de67b2:	2000      	movs	r0, #0
c0de67b4:	bdb0      	pop	{r4, r5, r7, pc}
c0de67b6:	2000      	movs	r0, #0
c0de67b8:	e9c5 0000 	strd	r0, r0, [r5]
c0de67bc:	bdb0      	pop	{r4, r5, r7, pc}

c0de67be <buffer_read_bip32_path>:
c0de67be:	b5b0      	push	{r4, r5, r7, lr}
c0de67c0:	4604      	mov	r4, r0
c0de67c2:	4615      	mov	r5, r2
c0de67c4:	460a      	mov	r2, r1
c0de67c6:	6800      	ldr	r0, [r0, #0]
c0de67c8:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de67cc:	4418      	add	r0, r3
c0de67ce:	1ac9      	subs	r1, r1, r3
c0de67d0:	462b      	mov	r3, r5
c0de67d2:	f7ff ff6f 	bl	c0de66b4 <bip32_path_read>
c0de67d6:	b140      	cbz	r0, c0de67ea <buffer_read_bip32_path+0x2c>
c0de67d8:	68a2      	ldr	r2, [r4, #8]
c0de67da:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de67de:	4291      	cmp	r1, r2
c0de67e0:	d303      	bcc.n	c0de67ea <buffer_read_bip32_path+0x2c>
c0de67e2:	6862      	ldr	r2, [r4, #4]
c0de67e4:	4291      	cmp	r1, r2
c0de67e6:	bf98      	it	ls
c0de67e8:	60a1      	strls	r1, [r4, #8]
c0de67ea:	bdb0      	pop	{r4, r5, r7, pc}

c0de67ec <buffer_copy>:
c0de67ec:	b5b0      	push	{r4, r5, r7, lr}
c0de67ee:	4614      	mov	r4, r2
c0de67f0:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de67f4:	1a9d      	subs	r5, r3, r2
c0de67f6:	42a5      	cmp	r5, r4
c0de67f8:	d806      	bhi.n	c0de6808 <buffer_copy+0x1c>
c0de67fa:	6800      	ldr	r0, [r0, #0]
c0de67fc:	4402      	add	r2, r0
c0de67fe:	4608      	mov	r0, r1
c0de6800:	4611      	mov	r1, r2
c0de6802:	462a      	mov	r2, r5
c0de6804:	f001 f9ce 	bl	c0de7ba4 <__aeabi_memmove>
c0de6808:	2000      	movs	r0, #0
c0de680a:	42a5      	cmp	r5, r4
c0de680c:	bf98      	it	ls
c0de680e:	2001      	movls	r0, #1
c0de6810:	bdb0      	pop	{r4, r5, r7, pc}

c0de6812 <buffer_move>:
c0de6812:	b5b0      	push	{r4, r5, r7, lr}
c0de6814:	4615      	mov	r5, r2
c0de6816:	4604      	mov	r4, r0
c0de6818:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de681c:	1a12      	subs	r2, r2, r0
c0de681e:	42aa      	cmp	r2, r5
c0de6820:	bf84      	itt	hi
c0de6822:	2000      	movhi	r0, #0
c0de6824:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6826:	6823      	ldr	r3, [r4, #0]
c0de6828:	4403      	add	r3, r0
c0de682a:	4608      	mov	r0, r1
c0de682c:	4619      	mov	r1, r3
c0de682e:	f001 f9b9 	bl	c0de7ba4 <__aeabi_memmove>
c0de6832:	68a0      	ldr	r0, [r4, #8]
c0de6834:	1940      	adds	r0, r0, r5
c0de6836:	d203      	bcs.n	c0de6840 <buffer_move+0x2e>
c0de6838:	6861      	ldr	r1, [r4, #4]
c0de683a:	4288      	cmp	r0, r1
c0de683c:	bf98      	it	ls
c0de683e:	60a0      	strls	r0, [r4, #8]
c0de6840:	2001      	movs	r0, #1
c0de6842:	bdb0      	pop	{r4, r5, r7, pc}

c0de6844 <OUTLINED_FUNCTION_0>:
c0de6844:	4604      	mov	r4, r0
c0de6846:	460d      	mov	r5, r1
c0de6848:	6840      	ldr	r0, [r0, #4]
c0de684a:	68a1      	ldr	r1, [r4, #8]
c0de684c:	1a46      	subs	r6, r0, r1
c0de684e:	4770      	bx	lr

c0de6850 <bip32_derive_with_seed_init_privkey_256>:
c0de6850:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6854:	b095      	sub	sp, #84	@ 0x54
c0de6856:	460d      	mov	r5, r1
c0de6858:	4607      	mov	r7, r0
c0de685a:	a904      	add	r1, sp, #16
c0de685c:	469a      	mov	sl, r3
c0de685e:	4614      	mov	r4, r2
c0de6860:	4628      	mov	r0, r5
c0de6862:	f000 fffb 	bl	c0de785c <cx_ecdomain_parameters_length>
c0de6866:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de686a:	4606      	mov	r6, r0
c0de686c:	b9e0      	cbnz	r0, c0de68a8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de686e:	9804      	ldr	r0, [sp, #16]
c0de6870:	2820      	cmp	r0, #32
c0de6872:	d117      	bne.n	c0de68a4 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6874:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6876:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de687a:	ab05      	add	r3, sp, #20
c0de687c:	e9cd 3200 	strd	r3, r2, [sp]
c0de6880:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6884:	4638      	mov	r0, r7
c0de6886:	4629      	mov	r1, r5
c0de6888:	4622      	mov	r2, r4
c0de688a:	4653      	mov	r3, sl
c0de688c:	f000 f818 	bl	c0de68c0 <os_derive_bip32_with_seed_no_throw>
c0de6890:	4606      	mov	r6, r0
c0de6892:	b948      	cbnz	r0, c0de68a8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6894:	9a04      	ldr	r2, [sp, #16]
c0de6896:	a905      	add	r1, sp, #20
c0de6898:	4628      	mov	r0, r5
c0de689a:	4643      	mov	r3, r8
c0de689c:	f000 fc46 	bl	c0de712c <cx_ecfp_init_private_key_no_throw>
c0de68a0:	4606      	mov	r6, r0
c0de68a2:	e001      	b.n	c0de68a8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de68a4:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de68a8:	a805      	add	r0, sp, #20
c0de68aa:	2140      	movs	r1, #64	@ 0x40
c0de68ac:	f001 f990 	bl	c0de7bd0 <explicit_bzero>
c0de68b0:	b116      	cbz	r6, c0de68b8 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de68b2:	4640      	mov	r0, r8
c0de68b4:	f000 f89f 	bl	c0de69f6 <OUTLINED_FUNCTION_0>
c0de68b8:	4630      	mov	r0, r6
c0de68ba:	b015      	add	sp, #84	@ 0x54
c0de68bc:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de68c0 <os_derive_bip32_with_seed_no_throw>:
c0de68c0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de68c4:	b090      	sub	sp, #64	@ 0x40
c0de68c6:	f10d 0810 	add.w	r8, sp, #16
c0de68ca:	4607      	mov	r7, r0
c0de68cc:	469b      	mov	fp, r3
c0de68ce:	4616      	mov	r6, r2
c0de68d0:	460c      	mov	r4, r1
c0de68d2:	4640      	mov	r0, r8
c0de68d4:	f001 f9b2 	bl	c0de7c3c <setjmp>
c0de68d8:	b285      	uxth	r5, r0
c0de68da:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de68de:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de68e2:	b155      	cbz	r5, c0de68fa <os_derive_bip32_with_seed_no_throw+0x3a>
c0de68e4:	2000      	movs	r0, #0
c0de68e6:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de68ea:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de68ec:	f001 f85a 	bl	c0de79a4 <try_context_set>
c0de68f0:	2140      	movs	r1, #64	@ 0x40
c0de68f2:	4650      	mov	r0, sl
c0de68f4:	f001 f96c 	bl	c0de7bd0 <explicit_bzero>
c0de68f8:	e012      	b.n	c0de6920 <os_derive_bip32_with_seed_no_throw+0x60>
c0de68fa:	a804      	add	r0, sp, #16
c0de68fc:	f001 f852 	bl	c0de79a4 <try_context_set>
c0de6900:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6902:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6904:	4668      	mov	r0, sp
c0de6906:	4632      	mov	r2, r6
c0de6908:	465b      	mov	r3, fp
c0de690a:	f8c0 a000 	str.w	sl, [r0]
c0de690e:	6041      	str	r1, [r0, #4]
c0de6910:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6912:	6081      	str	r1, [r0, #8]
c0de6914:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6916:	60c1      	str	r1, [r0, #12]
c0de6918:	4638      	mov	r0, r7
c0de691a:	4621      	mov	r1, r4
c0de691c:	f000 ffa8 	bl	c0de7870 <os_perso_derive_node_with_seed_key>
c0de6920:	f001 f838 	bl	c0de7994 <try_context_get>
c0de6924:	4540      	cmp	r0, r8
c0de6926:	d102      	bne.n	c0de692e <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6928:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de692a:	f001 f83b 	bl	c0de79a4 <try_context_set>
c0de692e:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de6932:	b918      	cbnz	r0, c0de693c <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6934:	4628      	mov	r0, r5
c0de6936:	b010      	add	sp, #64	@ 0x40
c0de6938:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de693c:	f000 fc89 	bl	c0de7252 <os_longjmp>

c0de6940 <bip32_derive_with_seed_get_pubkey_256>:
c0de6940:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6942:	b0a1      	sub	sp, #132	@ 0x84
c0de6944:	460e      	mov	r6, r1
c0de6946:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6948:	9103      	str	r1, [sp, #12]
c0de694a:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de694c:	9102      	str	r1, [sp, #8]
c0de694e:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de6950:	9101      	str	r1, [sp, #4]
c0de6952:	a917      	add	r1, sp, #92	@ 0x5c
c0de6954:	9100      	str	r1, [sp, #0]
c0de6956:	4631      	mov	r1, r6
c0de6958:	f7ff ff7a 	bl	c0de6850 <bip32_derive_with_seed_init_privkey_256>
c0de695c:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de695e:	4605      	mov	r5, r0
c0de6960:	b9b8      	cbnz	r0, c0de6992 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6962:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6964:	2301      	movs	r3, #1
c0de6966:	9000      	str	r0, [sp, #0]
c0de6968:	af04      	add	r7, sp, #16
c0de696a:	aa17      	add	r2, sp, #92	@ 0x5c
c0de696c:	4630      	mov	r0, r6
c0de696e:	4639      	mov	r1, r7
c0de6970:	f000 fbd7 	bl	c0de7122 <cx_ecfp_generate_pair2_no_throw>
c0de6974:	4605      	mov	r5, r0
c0de6976:	b960      	cbnz	r0, c0de6992 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6978:	9805      	ldr	r0, [sp, #20]
c0de697a:	2841      	cmp	r0, #65	@ 0x41
c0de697c:	d107      	bne.n	c0de698e <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de697e:	f107 0108 	add.w	r1, r7, #8
c0de6982:	4620      	mov	r0, r4
c0de6984:	2241      	movs	r2, #65	@ 0x41
c0de6986:	f001 f90b 	bl	c0de7ba0 <__aeabi_memcpy>
c0de698a:	2500      	movs	r5, #0
c0de698c:	e001      	b.n	c0de6992 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de698e:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6992:	a817      	add	r0, sp, #92	@ 0x5c
c0de6994:	f000 f82f 	bl	c0de69f6 <OUTLINED_FUNCTION_0>
c0de6998:	b11d      	cbz	r5, c0de69a2 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de699a:	4620      	mov	r0, r4
c0de699c:	2141      	movs	r1, #65	@ 0x41
c0de699e:	f001 f917 	bl	c0de7bd0 <explicit_bzero>
c0de69a2:	4628      	mov	r0, r5
c0de69a4:	b021      	add	sp, #132	@ 0x84
c0de69a6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de69a8 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de69a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de69aa:	b08f      	sub	sp, #60	@ 0x3c
c0de69ac:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de69ae:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de69b0:	683c      	ldr	r4, [r7, #0]
c0de69b2:	9503      	str	r5, [sp, #12]
c0de69b4:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de69b6:	9502      	str	r5, [sp, #8]
c0de69b8:	2500      	movs	r5, #0
c0de69ba:	9501      	str	r5, [sp, #4]
c0de69bc:	ad05      	add	r5, sp, #20
c0de69be:	9500      	str	r5, [sp, #0]
c0de69c0:	f7ff ff46 	bl	c0de6850 <bip32_derive_with_seed_init_privkey_256>
c0de69c4:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de69c6:	4606      	mov	r6, r0
c0de69c8:	b950      	cbnz	r0, c0de69e0 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de69ca:	ae14      	add	r6, sp, #80	@ 0x50
c0de69cc:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de69ce:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de69d0:	e9cd 6500 	strd	r6, r5, [sp]
c0de69d4:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de69d8:	a805      	add	r0, sp, #20
c0de69da:	f000 fb9d 	bl	c0de7118 <cx_ecdsa_sign_no_throw>
c0de69de:	4606      	mov	r6, r0
c0de69e0:	a805      	add	r0, sp, #20
c0de69e2:	f000 f808 	bl	c0de69f6 <OUTLINED_FUNCTION_0>
c0de69e6:	b11e      	cbz	r6, c0de69f0 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de69e8:	4628      	mov	r0, r5
c0de69ea:	4621      	mov	r1, r4
c0de69ec:	f001 f8f0 	bl	c0de7bd0 <explicit_bzero>
c0de69f0:	4630      	mov	r0, r6
c0de69f2:	b00f      	add	sp, #60	@ 0x3c
c0de69f4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de69f6 <OUTLINED_FUNCTION_0>:
c0de69f6:	2128      	movs	r1, #40	@ 0x28
c0de69f8:	f001 b8ea 	b.w	c0de7bd0 <explicit_bzero>

c0de69fc <format_u64>:
c0de69fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6a00:	b1f9      	cbz	r1, c0de6a42 <format_u64+0x46>
c0de6a02:	4615      	mov	r5, r2
c0de6a04:	4604      	mov	r4, r0
c0de6a06:	f1a1 0801 	sub.w	r8, r1, #1
c0de6a0a:	2700      	movs	r7, #0
c0de6a0c:	2600      	movs	r6, #0
c0de6a0e:	f1b5 000a 	subs.w	r0, r5, #10
c0de6a12:	f173 0000 	sbcs.w	r0, r3, #0
c0de6a16:	d316      	bcc.n	c0de6a46 <format_u64+0x4a>
c0de6a18:	4619      	mov	r1, r3
c0de6a1a:	4628      	mov	r0, r5
c0de6a1c:	220a      	movs	r2, #10
c0de6a1e:	2300      	movs	r3, #0
c0de6a20:	f001 f8cc 	bl	c0de7bbc <__aeabi_uldivmod>
c0de6a24:	460b      	mov	r3, r1
c0de6a26:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6a2a:	1cba      	adds	r2, r7, #2
c0de6a2c:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de6a30:	4605      	mov	r5, r0
c0de6a32:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6a36:	55e1      	strb	r1, [r4, r7]
c0de6a38:	1c79      	adds	r1, r7, #1
c0de6a3a:	4542      	cmp	r2, r8
c0de6a3c:	460f      	mov	r7, r1
c0de6a3e:	d9e6      	bls.n	c0de6a0e <format_u64+0x12>
c0de6a40:	e012      	b.n	c0de6a68 <format_u64+0x6c>
c0de6a42:	2600      	movs	r6, #0
c0de6a44:	e010      	b.n	c0de6a68 <format_u64+0x6c>
c0de6a46:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6a4a:	19e1      	adds	r1, r4, r7
c0de6a4c:	55e0      	strb	r0, [r4, r7]
c0de6a4e:	2000      	movs	r0, #0
c0de6a50:	7048      	strb	r0, [r1, #1]
c0de6a52:	b2c1      	uxtb	r1, r0
c0de6a54:	428f      	cmp	r7, r1
c0de6a56:	d906      	bls.n	c0de6a66 <format_u64+0x6a>
c0de6a58:	5c62      	ldrb	r2, [r4, r1]
c0de6a5a:	5de3      	ldrb	r3, [r4, r7]
c0de6a5c:	3001      	adds	r0, #1
c0de6a5e:	5463      	strb	r3, [r4, r1]
c0de6a60:	55e2      	strb	r2, [r4, r7]
c0de6a62:	3f01      	subs	r7, #1
c0de6a64:	e7f5      	b.n	c0de6a52 <format_u64+0x56>
c0de6a66:	2601      	movs	r6, #1
c0de6a68:	4630      	mov	r0, r6
c0de6a6a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6a6e <format_fpu64>:
c0de6a6e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6a72:	b086      	sub	sp, #24
c0de6a74:	466c      	mov	r4, sp
c0de6a76:	4688      	mov	r8, r1
c0de6a78:	4605      	mov	r5, r0
c0de6a7a:	2115      	movs	r1, #21
c0de6a7c:	461e      	mov	r6, r3
c0de6a7e:	4617      	mov	r7, r2
c0de6a80:	4620      	mov	r0, r4
c0de6a82:	f001 f897 	bl	c0de7bb4 <__aeabi_memclr>
c0de6a86:	4620      	mov	r0, r4
c0de6a88:	2115      	movs	r1, #21
c0de6a8a:	463a      	mov	r2, r7
c0de6a8c:	4633      	mov	r3, r6
c0de6a8e:	f7ff ffb5 	bl	c0de69fc <format_u64>
c0de6a92:	b340      	cbz	r0, c0de6ae6 <format_fpu64+0x78>
c0de6a94:	466f      	mov	r7, sp
c0de6a96:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6a98:	4638      	mov	r0, r7
c0de6a9a:	f001 f8e7 	bl	c0de7c6c <strlen>
c0de6a9e:	42b0      	cmp	r0, r6
c0de6aa0:	d910      	bls.n	c0de6ac4 <format_fpu64+0x56>
c0de6aa2:	1831      	adds	r1, r6, r0
c0de6aa4:	3101      	adds	r1, #1
c0de6aa6:	4541      	cmp	r1, r8
c0de6aa8:	d21d      	bcs.n	c0de6ae6 <format_fpu64+0x78>
c0de6aaa:	1b84      	subs	r4, r0, r6
c0de6aac:	4628      	mov	r0, r5
c0de6aae:	4639      	mov	r1, r7
c0de6ab0:	4622      	mov	r2, r4
c0de6ab2:	f001 f875 	bl	c0de7ba0 <__aeabi_memcpy>
c0de6ab6:	1928      	adds	r0, r5, r4
c0de6ab8:	212e      	movs	r1, #46	@ 0x2e
c0de6aba:	4632      	mov	r2, r6
c0de6abc:	f800 1b01 	strb.w	r1, [r0], #1
c0de6ac0:	1939      	adds	r1, r7, r4
c0de6ac2:	e015      	b.n	c0de6af0 <format_fpu64+0x82>
c0de6ac4:	1a32      	subs	r2, r6, r0
c0de6ac6:	1c91      	adds	r1, r2, #2
c0de6ac8:	4541      	cmp	r1, r8
c0de6aca:	d20c      	bcs.n	c0de6ae6 <format_fpu64+0x78>
c0de6acc:	202e      	movs	r0, #46	@ 0x2e
c0de6ace:	2330      	movs	r3, #48	@ 0x30
c0de6ad0:	2400      	movs	r4, #0
c0de6ad2:	7068      	strb	r0, [r5, #1]
c0de6ad4:	1ca8      	adds	r0, r5, #2
c0de6ad6:	702b      	strb	r3, [r5, #0]
c0de6ad8:	b2a5      	uxth	r5, r4
c0de6ada:	42aa      	cmp	r2, r5
c0de6adc:	d905      	bls.n	c0de6aea <format_fpu64+0x7c>
c0de6ade:	f800 3b01 	strb.w	r3, [r0], #1
c0de6ae2:	3401      	adds	r4, #1
c0de6ae4:	e7f8      	b.n	c0de6ad8 <format_fpu64+0x6a>
c0de6ae6:	2000      	movs	r0, #0
c0de6ae8:	e005      	b.n	c0de6af6 <format_fpu64+0x88>
c0de6aea:	eba8 0201 	sub.w	r2, r8, r1
c0de6aee:	4669      	mov	r1, sp
c0de6af0:	f001 f8d6 	bl	c0de7ca0 <strncpy>
c0de6af4:	2001      	movs	r0, #1
c0de6af6:	b006      	add	sp, #24
c0de6af8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6afc <format_hex>:
c0de6afc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6afe:	4604      	mov	r4, r0
c0de6b00:	0048      	lsls	r0, r1, #1
c0de6b02:	f100 0c01 	add.w	ip, r0, #1
c0de6b06:	459c      	cmp	ip, r3
c0de6b08:	d902      	bls.n	c0de6b10 <format_hex+0x14>
c0de6b0a:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6b0e:	e018      	b.n	c0de6b42 <format_hex+0x46>
c0de6b10:	480d      	ldr	r0, [pc, #52]	@ (c0de6b48 <format_hex+0x4c>)
c0de6b12:	2500      	movs	r5, #0
c0de6b14:	4478      	add	r0, pc
c0de6b16:	b191      	cbz	r1, c0de6b3e <format_hex+0x42>
c0de6b18:	1cef      	adds	r7, r5, #3
c0de6b1a:	429f      	cmp	r7, r3
c0de6b1c:	d80d      	bhi.n	c0de6b3a <format_hex+0x3e>
c0de6b1e:	7827      	ldrb	r7, [r4, #0]
c0de6b20:	3901      	subs	r1, #1
c0de6b22:	093f      	lsrs	r7, r7, #4
c0de6b24:	5dc7      	ldrb	r7, [r0, r7]
c0de6b26:	5557      	strb	r7, [r2, r5]
c0de6b28:	1957      	adds	r7, r2, r5
c0de6b2a:	3502      	adds	r5, #2
c0de6b2c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6b30:	f006 060f 	and.w	r6, r6, #15
c0de6b34:	5d86      	ldrb	r6, [r0, r6]
c0de6b36:	707e      	strb	r6, [r7, #1]
c0de6b38:	e7ed      	b.n	c0de6b16 <format_hex+0x1a>
c0de6b3a:	f105 0c01 	add.w	ip, r5, #1
c0de6b3e:	2000      	movs	r0, #0
c0de6b40:	5550      	strb	r0, [r2, r5]
c0de6b42:	4660      	mov	r0, ip
c0de6b44:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6b46:	bf00      	nop
c0de6b48:	000015c7 	.word	0x000015c7

c0de6b4c <app_ticker_event_callback>:
c0de6b4c:	4770      	bx	lr
	...

c0de6b50 <io_event>:
c0de6b50:	b580      	push	{r7, lr}
c0de6b52:	480a      	ldr	r0, [pc, #40]	@ (c0de6b7c <io_event+0x2c>)
c0de6b54:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6b58:	290e      	cmp	r1, #14
c0de6b5a:	d005      	beq.n	c0de6b68 <io_event+0x18>
c0de6b5c:	2905      	cmp	r1, #5
c0de6b5e:	d108      	bne.n	c0de6b72 <io_event+0x22>
c0de6b60:	4448      	add	r0, r9
c0de6b62:	f000 fa05 	bl	c0de6f70 <ux_process_button_event>
c0de6b66:	e006      	b.n	c0de6b76 <io_event+0x26>
c0de6b68:	f7ff fff0 	bl	c0de6b4c <app_ticker_event_callback>
c0de6b6c:	f000 fa44 	bl	c0de6ff8 <ux_process_ticker_event>
c0de6b70:	e001      	b.n	c0de6b76 <io_event+0x26>
c0de6b72:	f000 fa59 	bl	c0de7028 <ux_process_default_event>
c0de6b76:	2001      	movs	r0, #1
c0de6b78:	bd80      	pop	{r7, pc}
c0de6b7a:	bf00      	nop
c0de6b7c:	000007bc 	.word	0x000007bc

c0de6b80 <io_init>:
c0de6b80:	4802      	ldr	r0, [pc, #8]	@ (c0de6b8c <io_init+0xc>)
c0de6b82:	2101      	movs	r1, #1
c0de6b84:	f809 1000 	strb.w	r1, [r9, r0]
c0de6b88:	4770      	bx	lr
c0de6b8a:	bf00      	nop
c0de6b8c:	000008cc 	.word	0x000008cc

c0de6b90 <io_recv_command>:
c0de6b90:	b510      	push	{r4, lr}
c0de6b92:	4c09      	ldr	r4, [pc, #36]	@ (c0de6bb8 <io_recv_command+0x28>)
c0de6b94:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6b98:	2801      	cmp	r0, #1
c0de6b9a:	d104      	bne.n	c0de6ba6 <io_recv_command+0x16>
c0de6b9c:	f000 fed8 	bl	c0de7950 <os_io_start>
c0de6ba0:	2000      	movs	r0, #0
c0de6ba2:	f809 0004 	strb.w	r0, [r9, r4]
c0de6ba6:	2000      	movs	r0, #0
c0de6ba8:	2800      	cmp	r0, #0
c0de6baa:	dc03      	bgt.n	c0de6bb4 <io_recv_command+0x24>
c0de6bac:	2001      	movs	r0, #1
c0de6bae:	f7fc fe2f 	bl	c0de3810 <io_legacy_apdu_rx>
c0de6bb2:	e7f9      	b.n	c0de6ba8 <io_recv_command+0x18>
c0de6bb4:	bd10      	pop	{r4, pc}
c0de6bb6:	bf00      	nop
c0de6bb8:	000008cc 	.word	0x000008cc

c0de6bbc <io_send_response_buffers>:
c0de6bbc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6bc0:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6c54 <io_send_response_buffers+0x98>
c0de6bc4:	4690      	mov	r8, r2
c0de6bc6:	460f      	mov	r7, r1
c0de6bc8:	4606      	mov	r6, r0
c0de6bca:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6bce:	2500      	movs	r5, #0
c0de6bd0:	b1b6      	cbz	r6, c0de6c00 <io_send_response_buffers+0x44>
c0de6bd2:	b1af      	cbz	r7, c0de6c00 <io_send_response_buffers+0x44>
c0de6bd4:	2500      	movs	r5, #0
c0de6bd6:	b19f      	cbz	r7, c0de6c00 <io_send_response_buffers+0x44>
c0de6bd8:	eb09 000a 	add.w	r0, r9, sl
c0de6bdc:	1b62      	subs	r2, r4, r5
c0de6bde:	1941      	adds	r1, r0, r5
c0de6be0:	4630      	mov	r0, r6
c0de6be2:	f7ff fe03 	bl	c0de67ec <buffer_copy>
c0de6be6:	b130      	cbz	r0, c0de6bf6 <io_send_response_buffers+0x3a>
c0de6be8:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6bec:	360c      	adds	r6, #12
c0de6bee:	3f01      	subs	r7, #1
c0de6bf0:	4428      	add	r0, r5
c0de6bf2:	1a45      	subs	r5, r0, r1
c0de6bf4:	e7ef      	b.n	c0de6bd6 <io_send_response_buffers+0x1a>
c0de6bf6:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6bfa:	2600      	movs	r6, #0
c0de6bfc:	2700      	movs	r7, #0
c0de6bfe:	e7e6      	b.n	c0de6bce <io_send_response_buffers+0x12>
c0de6c00:	fa1f f688 	uxth.w	r6, r8
c0de6c04:	eb09 000a 	add.w	r0, r9, sl
c0de6c08:	4629      	mov	r1, r5
c0de6c0a:	4632      	mov	r2, r6
c0de6c0c:	f000 f9aa 	bl	c0de6f64 <write_u16_be>
c0de6c10:	4811      	ldr	r0, [pc, #68]	@ (c0de6c58 <io_send_response_buffers+0x9c>)
c0de6c12:	1ca9      	adds	r1, r5, #2
c0de6c14:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6c18:	b118      	cbz	r0, c0de6c22 <io_send_response_buffers+0x66>
c0de6c1a:	4810      	ldr	r0, [pc, #64]	@ (c0de6c5c <io_send_response_buffers+0xa0>)
c0de6c1c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6c20:	b928      	cbnz	r0, c0de6c2e <io_send_response_buffers+0x72>
c0de6c22:	f000 f81f 	bl	c0de6c64 <OUTLINED_FUNCTION_0>
c0de6c26:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6c2a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de6c2e:	f000 f819 	bl	c0de6c64 <OUTLINED_FUNCTION_0>
c0de6c32:	2800      	cmp	r0, #0
c0de6c34:	d40a      	bmi.n	c0de6c4c <io_send_response_buffers+0x90>
c0de6c36:	480a      	ldr	r0, [pc, #40]	@ (c0de6c60 <io_send_response_buffers+0xa4>)
c0de6c38:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6c3c:	fab1 f181 	clz	r1, r1
c0de6c40:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6c44:	0949      	lsrs	r1, r1, #5
c0de6c46:	7001      	strb	r1, [r0, #0]
c0de6c48:	f000 fe52 	bl	c0de78f0 <os_lib_end>
c0de6c4c:	20ff      	movs	r0, #255	@ 0xff
c0de6c4e:	f000 fe6b 	bl	c0de7928 <os_sched_exit>
c0de6c52:	bf00      	nop
c0de6c54:	00000414 	.word	0x00000414
c0de6c58:	000008dc 	.word	0x000008dc
c0de6c5c:	000008dd 	.word	0x000008dd
c0de6c60:	000008e0 	.word	0x000008e0

c0de6c64 <OUTLINED_FUNCTION_0>:
c0de6c64:	eb09 000a 	add.w	r0, r9, sl
c0de6c68:	b289      	uxth	r1, r1
c0de6c6a:	f7fc bdbd 	b.w	c0de37e8 <io_legacy_apdu_tx>

c0de6c6e <app_exit>:
c0de6c6e:	20ff      	movs	r0, #255	@ 0xff
c0de6c70:	f000 fe5a 	bl	c0de7928 <os_sched_exit>

c0de6c74 <common_app_init>:
c0de6c74:	b580      	push	{r7, lr}
c0de6c76:	f000 fa87 	bl	c0de7188 <nbgl_objInit>
c0de6c7a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6c7e:	f7fc bea3 	b.w	c0de39c8 <io_seproxyhal_init>
	...

c0de6c84 <standalone_app_main>:
c0de6c84:	b5b0      	push	{r4, r5, r7, lr}
c0de6c86:	b08c      	sub	sp, #48	@ 0x30
c0de6c88:	4816      	ldr	r0, [pc, #88]	@ (c0de6ce4 <standalone_app_main+0x60>)
c0de6c8a:	2500      	movs	r5, #0
c0de6c8c:	466c      	mov	r4, sp
c0de6c8e:	f809 5000 	strb.w	r5, [r9, r0]
c0de6c92:	4815      	ldr	r0, [pc, #84]	@ (c0de6ce8 <standalone_app_main+0x64>)
c0de6c94:	f849 5000 	str.w	r5, [r9, r0]
c0de6c98:	4814      	ldr	r0, [pc, #80]	@ (c0de6cec <standalone_app_main+0x68>)
c0de6c9a:	f809 5000 	strb.w	r5, [r9, r0]
c0de6c9e:	4620      	mov	r0, r4
c0de6ca0:	f000 ffcc 	bl	c0de7c3c <setjmp>
c0de6ca4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6ca8:	0400      	lsls	r0, r0, #16
c0de6caa:	d108      	bne.n	c0de6cbe <standalone_app_main+0x3a>
c0de6cac:	4668      	mov	r0, sp
c0de6cae:	f000 fe79 	bl	c0de79a4 <try_context_set>
c0de6cb2:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6cb4:	f7ff ffde 	bl	c0de6c74 <common_app_init>
c0de6cb8:	f7f9 fb56 	bl	c0de0368 <app_main>
c0de6cbc:	e004      	b.n	c0de6cc8 <standalone_app_main+0x44>
c0de6cbe:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6cc0:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de6cc4:	f000 fe6e 	bl	c0de79a4 <try_context_set>
c0de6cc8:	f000 fe64 	bl	c0de7994 <try_context_get>
c0de6ccc:	42a0      	cmp	r0, r4
c0de6cce:	d102      	bne.n	c0de6cd6 <standalone_app_main+0x52>
c0de6cd0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6cd2:	f000 fe67 	bl	c0de79a4 <try_context_set>
c0de6cd6:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6cda:	b908      	cbnz	r0, c0de6ce0 <standalone_app_main+0x5c>
c0de6cdc:	f7ff ffc7 	bl	c0de6c6e <app_exit>
c0de6ce0:	f000 fab7 	bl	c0de7252 <os_longjmp>
c0de6ce4:	000008dc 	.word	0x000008dc
c0de6ce8:	000008e0 	.word	0x000008e0
c0de6cec:	000008dd 	.word	0x000008dd

c0de6cf0 <library_app_main>:
c0de6cf0:	b5b0      	push	{r4, r5, r7, lr}
c0de6cf2:	b08c      	sub	sp, #48	@ 0x30
c0de6cf4:	466c      	mov	r4, sp
c0de6cf6:	4605      	mov	r5, r0
c0de6cf8:	4620      	mov	r0, r4
c0de6cfa:	f000 ff9f 	bl	c0de7c3c <setjmp>
c0de6cfe:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6d02:	0400      	lsls	r0, r0, #16
c0de6d04:	d124      	bne.n	c0de6d50 <library_app_main+0x60>
c0de6d06:	4668      	mov	r0, sp
c0de6d08:	f000 fe4c 	bl	c0de79a4 <try_context_set>
c0de6d0c:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6d0e:	6868      	ldr	r0, [r5, #4]
c0de6d10:	2804      	cmp	r0, #4
c0de6d12:	d024      	beq.n	c0de6d5e <library_app_main+0x6e>
c0de6d14:	2803      	cmp	r0, #3
c0de6d16:	d026      	beq.n	c0de6d66 <library_app_main+0x76>
c0de6d18:	2802      	cmp	r0, #2
c0de6d1a:	d127      	bne.n	c0de6d6c <library_app_main+0x7c>
c0de6d1c:	68e8      	ldr	r0, [r5, #12]
c0de6d1e:	f7fa fd49 	bl	c0de17b4 <swap_copy_transaction_parameters>
c0de6d22:	b318      	cbz	r0, c0de6d6c <library_app_main+0x7c>
c0de6d24:	4816      	ldr	r0, [pc, #88]	@ (c0de6d80 <library_app_main+0x90>)
c0de6d26:	2201      	movs	r2, #1
c0de6d28:	f809 2000 	strb.w	r2, [r9, r0]
c0de6d2c:	4815      	ldr	r0, [pc, #84]	@ (c0de6d84 <library_app_main+0x94>)
c0de6d2e:	2200      	movs	r2, #0
c0de6d30:	f809 2000 	strb.w	r2, [r9, r0]
c0de6d34:	4a14      	ldr	r2, [pc, #80]	@ (c0de6d88 <library_app_main+0x98>)
c0de6d36:	68e8      	ldr	r0, [r5, #12]
c0de6d38:	3020      	adds	r0, #32
c0de6d3a:	f849 0002 	str.w	r0, [r9, r2]
c0de6d3e:	f7ff ff99 	bl	c0de6c74 <common_app_init>
c0de6d42:	4812      	ldr	r0, [pc, #72]	@ (c0de6d8c <library_app_main+0x9c>)
c0de6d44:	4478      	add	r0, pc
c0de6d46:	f7fe fbc9 	bl	c0de54dc <nbgl_useCaseSpinner>
c0de6d4a:	f7f9 fb0d 	bl	c0de0368 <app_main>
c0de6d4e:	e00d      	b.n	c0de6d6c <library_app_main+0x7c>
c0de6d50:	2000      	movs	r0, #0
c0de6d52:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6d56:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6d58:	f000 fe24 	bl	c0de79a4 <try_context_set>
c0de6d5c:	e006      	b.n	c0de6d6c <library_app_main+0x7c>
c0de6d5e:	68e8      	ldr	r0, [r5, #12]
c0de6d60:	f7fa fcfc 	bl	c0de175c <swap_handle_get_printable_amount>
c0de6d64:	e002      	b.n	c0de6d6c <library_app_main+0x7c>
c0de6d66:	68e8      	ldr	r0, [r5, #12]
c0de6d68:	f7fa fc9d 	bl	c0de16a6 <swap_handle_check_address>
c0de6d6c:	f000 fe12 	bl	c0de7994 <try_context_get>
c0de6d70:	42a0      	cmp	r0, r4
c0de6d72:	d102      	bne.n	c0de6d7a <library_app_main+0x8a>
c0de6d74:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6d76:	f000 fe15 	bl	c0de79a4 <try_context_set>
c0de6d7a:	f000 fdb9 	bl	c0de78f0 <os_lib_end>
c0de6d7e:	bf00      	nop
c0de6d80:	000008dc 	.word	0x000008dc
c0de6d84:	000008dd 	.word	0x000008dd
c0de6d88:	000008e0 	.word	0x000008e0
c0de6d8c:	000011c5 	.word	0x000011c5

c0de6d90 <apdu_parser>:
c0de6d90:	2a04      	cmp	r2, #4
c0de6d92:	d316      	bcc.n	c0de6dc2 <apdu_parser+0x32>
c0de6d94:	d102      	bne.n	c0de6d9c <apdu_parser+0xc>
c0de6d96:	2300      	movs	r3, #0
c0de6d98:	7103      	strb	r3, [r0, #4]
c0de6d9a:	e004      	b.n	c0de6da6 <apdu_parser+0x16>
c0de6d9c:	790b      	ldrb	r3, [r1, #4]
c0de6d9e:	3a05      	subs	r2, #5
c0de6da0:	429a      	cmp	r2, r3
c0de6da2:	7103      	strb	r3, [r0, #4]
c0de6da4:	d10d      	bne.n	c0de6dc2 <apdu_parser+0x32>
c0de6da6:	780a      	ldrb	r2, [r1, #0]
c0de6da8:	2b00      	cmp	r3, #0
c0de6daa:	7002      	strb	r2, [r0, #0]
c0de6dac:	784a      	ldrb	r2, [r1, #1]
c0de6dae:	7042      	strb	r2, [r0, #1]
c0de6db0:	788a      	ldrb	r2, [r1, #2]
c0de6db2:	7082      	strb	r2, [r0, #2]
c0de6db4:	bf18      	it	ne
c0de6db6:	1d4b      	addne	r3, r1, #5
c0de6db8:	78c9      	ldrb	r1, [r1, #3]
c0de6dba:	6083      	str	r3, [r0, #8]
c0de6dbc:	70c1      	strb	r1, [r0, #3]
c0de6dbe:	2001      	movs	r0, #1
c0de6dc0:	4770      	bx	lr
c0de6dc2:	2000      	movs	r0, #0
c0de6dc4:	4770      	bx	lr

c0de6dc6 <read_u32_be>:
c0de6dc6:	5c42      	ldrb	r2, [r0, r1]
c0de6dc8:	4408      	add	r0, r1
c0de6dca:	7841      	ldrb	r1, [r0, #1]
c0de6dcc:	7883      	ldrb	r3, [r0, #2]
c0de6dce:	78c0      	ldrb	r0, [r0, #3]
c0de6dd0:	0409      	lsls	r1, r1, #16
c0de6dd2:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6dd6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6dda:	4408      	add	r0, r1
c0de6ddc:	4770      	bx	lr

c0de6dde <read_u64_be>:
c0de6dde:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6de0:	1842      	adds	r2, r0, r1
c0de6de2:	5c40      	ldrb	r0, [r0, r1]
c0de6de4:	7917      	ldrb	r7, [r2, #4]
c0de6de6:	7953      	ldrb	r3, [r2, #5]
c0de6de8:	7854      	ldrb	r4, [r2, #1]
c0de6dea:	7895      	ldrb	r5, [r2, #2]
c0de6dec:	78d6      	ldrb	r6, [r2, #3]
c0de6dee:	063f      	lsls	r7, r7, #24
c0de6df0:	0421      	lsls	r1, r4, #16
c0de6df2:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6df6:	7997      	ldrb	r7, [r2, #6]
c0de6df8:	79d2      	ldrb	r2, [r2, #7]
c0de6dfa:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6dfe:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6e02:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6e06:	1981      	adds	r1, r0, r6
c0de6e08:	441a      	add	r2, r3
c0de6e0a:	4610      	mov	r0, r2
c0de6e0c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6e0e <read_u16_le>:
c0de6e0e:	5c42      	ldrb	r2, [r0, r1]
c0de6e10:	4408      	add	r0, r1
c0de6e12:	7840      	ldrb	r0, [r0, #1]
c0de6e14:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6e18:	b280      	uxth	r0, r0
c0de6e1a:	4770      	bx	lr

c0de6e1c <read_u32_le>:
c0de6e1c:	5c42      	ldrb	r2, [r0, r1]
c0de6e1e:	4408      	add	r0, r1
c0de6e20:	7841      	ldrb	r1, [r0, #1]
c0de6e22:	7883      	ldrb	r3, [r0, #2]
c0de6e24:	78c0      	ldrb	r0, [r0, #3]
c0de6e26:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6e2a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6e2e:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6e32:	4770      	bx	lr

c0de6e34 <read_u64_le>:
c0de6e34:	b5b0      	push	{r4, r5, r7, lr}
c0de6e36:	5c42      	ldrb	r2, [r0, r1]
c0de6e38:	4401      	add	r1, r0
c0de6e3a:	7848      	ldrb	r0, [r1, #1]
c0de6e3c:	788b      	ldrb	r3, [r1, #2]
c0de6e3e:	790d      	ldrb	r5, [r1, #4]
c0de6e40:	78cc      	ldrb	r4, [r1, #3]
c0de6e42:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6e46:	794a      	ldrb	r2, [r1, #5]
c0de6e48:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6e4c:	798b      	ldrb	r3, [r1, #6]
c0de6e4e:	79c9      	ldrb	r1, [r1, #7]
c0de6e50:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6e54:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6e58:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6e5c:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6e60:	bdb0      	pop	{r4, r5, r7, pc}

c0de6e62 <send_swap_error_simple>:
c0de6e62:	b082      	sub	sp, #8
c0de6e64:	2300      	movs	r3, #0
c0de6e66:	9300      	str	r3, [sp, #0]
c0de6e68:	2300      	movs	r3, #0
c0de6e6a:	f000 f801 	bl	c0de6e70 <send_swap_error_with_buffers>
	...

c0de6e70 <send_swap_error_with_buffers>:
c0de6e70:	b09c      	sub	sp, #112	@ 0x70
c0de6e72:	4604      	mov	r4, r0
c0de6e74:	4815      	ldr	r0, [pc, #84]	@ (c0de6ecc <send_swap_error_with_buffers+0x5c>)
c0de6e76:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6e7a:	b320      	cbz	r0, c0de6ec6 <send_swap_error_with_buffers+0x56>
c0de6e7c:	4814      	ldr	r0, [pc, #80]	@ (c0de6ed0 <send_swap_error_with_buffers+0x60>)
c0de6e7e:	461d      	mov	r5, r3
c0de6e80:	2301      	movs	r3, #1
c0de6e82:	466e      	mov	r6, sp
c0de6e84:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6e86:	f809 3000 	strb.w	r3, [r9, r0]
c0de6e8a:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6e8e:	f106 0008 	add.w	r0, r6, #8
c0de6e92:	2164      	movs	r1, #100	@ 0x64
c0de6e94:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6e98:	f000 fe8c 	bl	c0de7bb4 <__aeabi_memclr>
c0de6e9c:	2002      	movs	r0, #2
c0de6e9e:	4629      	mov	r1, r5
c0de6ea0:	9001      	str	r0, [sp, #4]
c0de6ea2:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6ea6:	2f08      	cmp	r7, #8
c0de6ea8:	9000      	str	r0, [sp, #0]
c0de6eaa:	bf28      	it	cs
c0de6eac:	2708      	movcs	r7, #8
c0de6eae:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6eb2:	0082      	lsls	r2, r0, #2
c0de6eb4:	f106 000c 	add.w	r0, r6, #12
c0de6eb8:	f000 fe72 	bl	c0de7ba0 <__aeabi_memcpy>
c0de6ebc:	1c79      	adds	r1, r7, #1
c0de6ebe:	4630      	mov	r0, r6
c0de6ec0:	4622      	mov	r2, r4
c0de6ec2:	f7ff fe7b 	bl	c0de6bbc <io_send_response_buffers>
c0de6ec6:	2000      	movs	r0, #0
c0de6ec8:	f000 fd2e 	bl	c0de7928 <os_sched_exit>
c0de6ecc:	000008dc 	.word	0x000008dc
c0de6ed0:	000008dd 	.word	0x000008dd

c0de6ed4 <swap_str_to_u64>:
c0de6ed4:	2908      	cmp	r1, #8
c0de6ed6:	d812      	bhi.n	c0de6efe <swap_str_to_u64+0x2a>
c0de6ed8:	b570      	push	{r4, r5, r6, lr}
c0de6eda:	2500      	movs	r5, #0
c0de6edc:	460b      	mov	r3, r1
c0de6ede:	2400      	movs	r4, #0
c0de6ee0:	b14b      	cbz	r3, c0de6ef6 <swap_str_to_u64+0x22>
c0de6ee2:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6ee6:	0224      	lsls	r4, r4, #8
c0de6ee8:	3b01      	subs	r3, #1
c0de6eea:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6eee:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6ef2:	4635      	mov	r5, r6
c0de6ef4:	e7f4      	b.n	c0de6ee0 <swap_str_to_u64+0xc>
c0de6ef6:	e9c2 5400 	strd	r5, r4, [r2]
c0de6efa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6efe:	2000      	movs	r0, #0
c0de6f00:	2909      	cmp	r1, #9
c0de6f02:	bf38      	it	cc
c0de6f04:	2001      	movcc	r0, #1
c0de6f06:	4770      	bx	lr

c0de6f08 <varint_read>:
c0de6f08:	b510      	push	{r4, lr}
c0de6f0a:	b1d9      	cbz	r1, c0de6f44 <varint_read+0x3c>
c0de6f0c:	4614      	mov	r4, r2
c0de6f0e:	4602      	mov	r2, r0
c0de6f10:	7800      	ldrb	r0, [r0, #0]
c0de6f12:	28ff      	cmp	r0, #255	@ 0xff
c0de6f14:	d00c      	beq.n	c0de6f30 <varint_read+0x28>
c0de6f16:	28fe      	cmp	r0, #254	@ 0xfe
c0de6f18:	d012      	beq.n	c0de6f40 <varint_read+0x38>
c0de6f1a:	28fd      	cmp	r0, #253	@ 0xfd
c0de6f1c:	d115      	bne.n	c0de6f4a <varint_read+0x42>
c0de6f1e:	2903      	cmp	r1, #3
c0de6f20:	d310      	bcc.n	c0de6f44 <varint_read+0x3c>
c0de6f22:	4610      	mov	r0, r2
c0de6f24:	2101      	movs	r1, #1
c0de6f26:	f7ff ff72 	bl	c0de6e0e <read_u16_le>
c0de6f2a:	2100      	movs	r1, #0
c0de6f2c:	2203      	movs	r2, #3
c0de6f2e:	e015      	b.n	c0de6f5c <varint_read+0x54>
c0de6f30:	2909      	cmp	r1, #9
c0de6f32:	d307      	bcc.n	c0de6f44 <varint_read+0x3c>
c0de6f34:	4610      	mov	r0, r2
c0de6f36:	2101      	movs	r1, #1
c0de6f38:	f7ff ff7c 	bl	c0de6e34 <read_u64_le>
c0de6f3c:	2209      	movs	r2, #9
c0de6f3e:	e00d      	b.n	c0de6f5c <varint_read+0x54>
c0de6f40:	2905      	cmp	r1, #5
c0de6f42:	d205      	bcs.n	c0de6f50 <varint_read+0x48>
c0de6f44:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6f48:	e00a      	b.n	c0de6f60 <varint_read+0x58>
c0de6f4a:	2100      	movs	r1, #0
c0de6f4c:	2201      	movs	r2, #1
c0de6f4e:	e005      	b.n	c0de6f5c <varint_read+0x54>
c0de6f50:	4610      	mov	r0, r2
c0de6f52:	2101      	movs	r1, #1
c0de6f54:	f7ff ff62 	bl	c0de6e1c <read_u32_le>
c0de6f58:	2100      	movs	r1, #0
c0de6f5a:	2205      	movs	r2, #5
c0de6f5c:	e9c4 0100 	strd	r0, r1, [r4]
c0de6f60:	4610      	mov	r0, r2
c0de6f62:	bd10      	pop	{r4, pc}

c0de6f64 <write_u16_be>:
c0de6f64:	0a13      	lsrs	r3, r2, #8
c0de6f66:	5443      	strb	r3, [r0, r1]
c0de6f68:	4408      	add	r0, r1
c0de6f6a:	7042      	strb	r2, [r0, #1]
c0de6f6c:	4770      	bx	lr
	...

c0de6f70 <ux_process_button_event>:
c0de6f70:	b5b0      	push	{r4, r5, r7, lr}
c0de6f72:	4604      	mov	r4, r0
c0de6f74:	2001      	movs	r0, #1
c0de6f76:	f000 f815 	bl	c0de6fa4 <ux_forward_event>
c0de6f7a:	4605      	mov	r5, r0
c0de6f7c:	f000 f909 	bl	c0de7192 <nbgl_objAllowDrawing>
c0de6f80:	b165      	cbz	r5, c0de6f9c <ux_process_button_event+0x2c>
c0de6f82:	4807      	ldr	r0, [pc, #28]	@ (c0de6fa0 <ux_process_button_event+0x30>)
c0de6f84:	2164      	movs	r1, #100	@ 0x64
c0de6f86:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6f8a:	4341      	muls	r1, r0
c0de6f8c:	78e0      	ldrb	r0, [r4, #3]
c0de6f8e:	0840      	lsrs	r0, r0, #1
c0de6f90:	f000 f94f 	bl	c0de7232 <nbgl_buttonsHandler>
c0de6f94:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6f98:	f000 b8f1 	b.w	c0de717e <nbgl_refresh>
c0de6f9c:	bdb0      	pop	{r4, r5, r7, pc}
c0de6f9e:	bf00      	nop
c0de6fa0:	000008e4 	.word	0x000008e4

c0de6fa4 <ux_forward_event>:
c0de6fa4:	b5b0      	push	{r4, r5, r7, lr}
c0de6fa6:	4604      	mov	r4, r0
c0de6fa8:	4812      	ldr	r0, [pc, #72]	@ (c0de6ff4 <ux_forward_event+0x50>)
c0de6faa:	2101      	movs	r1, #1
c0de6fac:	f809 1000 	strb.w	r1, [r9, r0]
c0de6fb0:	eb09 0500 	add.w	r5, r9, r0
c0de6fb4:	2000      	movs	r0, #0
c0de6fb6:	6068      	str	r0, [r5, #4]
c0de6fb8:	4628      	mov	r0, r5
c0de6fba:	f000 fc8f 	bl	c0de78dc <os_ux>
c0de6fbe:	2004      	movs	r0, #4
c0de6fc0:	f000 fcfa 	bl	c0de79b8 <os_sched_last_status>
c0de6fc4:	2869      	cmp	r0, #105	@ 0x69
c0de6fc6:	6068      	str	r0, [r5, #4]
c0de6fc8:	d108      	bne.n	c0de6fdc <ux_forward_event+0x38>
c0de6fca:	2001      	movs	r0, #1
c0de6fcc:	f000 f8e1 	bl	c0de7192 <nbgl_objAllowDrawing>
c0de6fd0:	f000 f8ee 	bl	c0de71b0 <nbgl_screenRedraw>
c0de6fd4:	f000 f8d3 	bl	c0de717e <nbgl_refresh>
c0de6fd8:	2000      	movs	r0, #0
c0de6fda:	bdb0      	pop	{r4, r5, r7, pc}
c0de6fdc:	b144      	cbz	r4, c0de6ff0 <ux_forward_event+0x4c>
c0de6fde:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6fe2:	bf18      	it	ne
c0de6fe4:	2101      	movne	r1, #1
c0de6fe6:	2800      	cmp	r0, #0
c0de6fe8:	bf18      	it	ne
c0de6fea:	2001      	movne	r0, #1
c0de6fec:	4008      	ands	r0, r1
c0de6fee:	bdb0      	pop	{r4, r5, r7, pc}
c0de6ff0:	2001      	movs	r0, #1
c0de6ff2:	bdb0      	pop	{r4, r5, r7, pc}
c0de6ff4:	000008d0 	.word	0x000008d0

c0de6ff8 <ux_process_ticker_event>:
c0de6ff8:	b510      	push	{r4, lr}
c0de6ffa:	480a      	ldr	r0, [pc, #40]	@ (c0de7024 <ux_process_ticker_event+0x2c>)
c0de6ffc:	f859 1000 	ldr.w	r1, [r9, r0]
c0de7000:	3101      	adds	r1, #1
c0de7002:	f849 1000 	str.w	r1, [r9, r0]
c0de7006:	2001      	movs	r0, #1
c0de7008:	f7ff ffcc 	bl	c0de6fa4 <ux_forward_event>
c0de700c:	4604      	mov	r4, r0
c0de700e:	f000 f8c0 	bl	c0de7192 <nbgl_objAllowDrawing>
c0de7012:	b134      	cbz	r4, c0de7022 <ux_process_ticker_event+0x2a>
c0de7014:	2064      	movs	r0, #100	@ 0x64
c0de7016:	f000 f8d5 	bl	c0de71c4 <nbgl_screenHandler>
c0de701a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de701e:	f000 b8ae 	b.w	c0de717e <nbgl_refresh>
c0de7022:	bd10      	pop	{r4, pc}
c0de7024:	000008e4 	.word	0x000008e4

c0de7028 <ux_process_default_event>:
c0de7028:	2000      	movs	r0, #0
c0de702a:	f7ff bfbb 	b.w	c0de6fa4 <ux_forward_event>

c0de702e <hash_iovec>:
c0de702e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7032:	468a      	mov	sl, r1
c0de7034:	4611      	mov	r1, r2
c0de7036:	461e      	mov	r6, r3
c0de7038:	4605      	mov	r5, r0
c0de703a:	f000 f881 	bl	c0de7140 <cx_hash_init>
c0de703e:	4607      	mov	r7, r0
c0de7040:	b998      	cbnz	r0, c0de706a <hash_iovec+0x3c>
c0de7042:	e9dd 4808 	ldrd	r4, r8, [sp, #32]
c0de7046:	3604      	adds	r6, #4
c0de7048:	b154      	cbz	r4, c0de7060 <hash_iovec+0x32>
c0de704a:	f856 1c04 	ldr.w	r1, [r6, #-4]
c0de704e:	f856 2b08 	ldr.w	r2, [r6], #8
c0de7052:	4628      	mov	r0, r5
c0de7054:	f000 f87e 	bl	c0de7154 <cx_hash_update>
c0de7058:	3c01      	subs	r4, #1
c0de705a:	2800      	cmp	r0, #0
c0de705c:	d0f4      	beq.n	c0de7048 <hash_iovec+0x1a>
c0de705e:	e003      	b.n	c0de7068 <hash_iovec+0x3a>
c0de7060:	4628      	mov	r0, r5
c0de7062:	4641      	mov	r1, r8
c0de7064:	f000 f867 	bl	c0de7136 <cx_hash_final>
c0de7068:	4607      	mov	r7, r0
c0de706a:	4628      	mov	r0, r5
c0de706c:	4651      	mov	r1, sl
c0de706e:	f000 fdaf 	bl	c0de7bd0 <explicit_bzero>
c0de7072:	4638      	mov	r0, r7
c0de7074:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de7078 <cx_sha256_hash_iovec>:
c0de7078:	b580      	push	{r7, lr}
c0de707a:	b09e      	sub	sp, #120	@ 0x78
c0de707c:	f000 f848 	bl	c0de7110 <OUTLINED_FUNCTION_0>
c0de7080:	a803      	add	r0, sp, #12
c0de7082:	216c      	movs	r1, #108	@ 0x6c
c0de7084:	2203      	movs	r2, #3
c0de7086:	f7ff ffd2 	bl	c0de702e <hash_iovec>
c0de708a:	b01e      	add	sp, #120	@ 0x78
c0de708c:	bd80      	pop	{r7, pc}

c0de708e <hash_iovec_ex>:
c0de708e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7092:	468a      	mov	sl, r1
c0de7094:	4611      	mov	r1, r2
c0de7096:	461a      	mov	r2, r3
c0de7098:	4605      	mov	r5, r0
c0de709a:	f000 f856 	bl	c0de714a <cx_hash_init_ex>
c0de709e:	4607      	mov	r7, r0
c0de70a0:	b9a8      	cbnz	r0, c0de70ce <hash_iovec_ex+0x40>
c0de70a2:	f10d 0820 	add.w	r8, sp, #32
c0de70a6:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de70aa:	1d04      	adds	r4, r0, #4
c0de70ac:	b156      	cbz	r6, c0de70c4 <hash_iovec_ex+0x36>
c0de70ae:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de70b2:	f854 2b08 	ldr.w	r2, [r4], #8
c0de70b6:	4628      	mov	r0, r5
c0de70b8:	f000 f84c 	bl	c0de7154 <cx_hash_update>
c0de70bc:	3e01      	subs	r6, #1
c0de70be:	2800      	cmp	r0, #0
c0de70c0:	d0f4      	beq.n	c0de70ac <hash_iovec_ex+0x1e>
c0de70c2:	e003      	b.n	c0de70cc <hash_iovec_ex+0x3e>
c0de70c4:	4628      	mov	r0, r5
c0de70c6:	4641      	mov	r1, r8
c0de70c8:	f000 f835 	bl	c0de7136 <cx_hash_final>
c0de70cc:	4607      	mov	r7, r0
c0de70ce:	4628      	mov	r0, r5
c0de70d0:	4651      	mov	r1, sl
c0de70d2:	f000 fd7d 	bl	c0de7bd0 <explicit_bzero>
c0de70d6:	4638      	mov	r0, r7
c0de70d8:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de70dc <cx_keccak_256_hash_iovec>:
c0de70dc:	b580      	push	{r7, lr}
c0de70de:	b0ee      	sub	sp, #440	@ 0x1b8
c0de70e0:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de70e4:	a804      	add	r0, sp, #16
c0de70e6:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de70ea:	2206      	movs	r2, #6
c0de70ec:	2320      	movs	r3, #32
c0de70ee:	f7ff ffce 	bl	c0de708e <hash_iovec_ex>
c0de70f2:	b06e      	add	sp, #440	@ 0x1b8
c0de70f4:	bd80      	pop	{r7, pc}

c0de70f6 <cx_blake2b_512_hash_iovec>:
c0de70f6:	b580      	push	{r7, lr}
c0de70f8:	b0c4      	sub	sp, #272	@ 0x110
c0de70fa:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de70fe:	a804      	add	r0, sp, #16
c0de7100:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de7104:	2209      	movs	r2, #9
c0de7106:	2340      	movs	r3, #64	@ 0x40
c0de7108:	f7ff ffc1 	bl	c0de708e <hash_iovec_ex>
c0de710c:	b044      	add	sp, #272	@ 0x110
c0de710e:	bd80      	pop	{r7, pc}

c0de7110 <OUTLINED_FUNCTION_0>:
c0de7110:	e9cd 1200 	strd	r1, r2, [sp]
c0de7114:	4603      	mov	r3, r0
c0de7116:	4770      	bx	lr

c0de7118 <cx_ecdsa_sign_no_throw>:
c0de7118:	b403      	push	{r0, r1}
c0de711a:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de711e:	f000 b827 	b.w	c0de7170 <cx_trampoline_helper>

c0de7122 <cx_ecfp_generate_pair2_no_throw>:
c0de7122:	b403      	push	{r0, r1}
c0de7124:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de7128:	f000 b822 	b.w	c0de7170 <cx_trampoline_helper>

c0de712c <cx_ecfp_init_private_key_no_throw>:
c0de712c:	b403      	push	{r0, r1}
c0de712e:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de7132:	f000 b81d 	b.w	c0de7170 <cx_trampoline_helper>

c0de7136 <cx_hash_final>:
c0de7136:	b403      	push	{r0, r1}
c0de7138:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de713c:	f000 b818 	b.w	c0de7170 <cx_trampoline_helper>

c0de7140 <cx_hash_init>:
c0de7140:	b403      	push	{r0, r1}
c0de7142:	f04f 0042 	mov.w	r0, #66	@ 0x42
c0de7146:	f000 b813 	b.w	c0de7170 <cx_trampoline_helper>

c0de714a <cx_hash_init_ex>:
c0de714a:	b403      	push	{r0, r1}
c0de714c:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de7150:	f000 b80e 	b.w	c0de7170 <cx_trampoline_helper>

c0de7154 <cx_hash_update>:
c0de7154:	b403      	push	{r0, r1}
c0de7156:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de715a:	f000 b809 	b.w	c0de7170 <cx_trampoline_helper>

c0de715e <cx_rng_no_throw>:
c0de715e:	b403      	push	{r0, r1}
c0de7160:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de7164:	f000 b804 	b.w	c0de7170 <cx_trampoline_helper>

c0de7168 <cx_aes_siv_reset>:
c0de7168:	b403      	push	{r0, r1}
c0de716a:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de716e:	e7ff      	b.n	c0de7170 <cx_trampoline_helper>

c0de7170 <cx_trampoline_helper>:
c0de7170:	4900      	ldr	r1, [pc, #0]	@ (c0de7174 <cx_trampoline_helper+0x4>)
c0de7172:	4708      	bx	r1
c0de7174:	00808001 	.word	0x00808001

c0de7178 <assert_exit>:
c0de7178:	20ff      	movs	r0, #255	@ 0xff
c0de717a:	f000 fbd5 	bl	c0de7928 <os_sched_exit>

c0de717e <nbgl_refresh>:
c0de717e:	b403      	push	{r0, r1}
c0de7180:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de7184:	f000 b85e 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de7188 <nbgl_objInit>:
c0de7188:	b403      	push	{r0, r1}
c0de718a:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de718e:	f000 b859 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de7192 <nbgl_objAllowDrawing>:
c0de7192:	b403      	push	{r0, r1}
c0de7194:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de7198:	f000 b854 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de719c <nbgl_screenSet>:
c0de719c:	b403      	push	{r0, r1}
c0de719e:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de71a2:	f000 b84f 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71a6 <nbgl_screenPush>:
c0de71a6:	b403      	push	{r0, r1}
c0de71a8:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de71ac:	f000 b84a 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71b0 <nbgl_screenRedraw>:
c0de71b0:	b403      	push	{r0, r1}
c0de71b2:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de71b6:	f000 b845 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71ba <nbgl_screenPop>:
c0de71ba:	b403      	push	{r0, r1}
c0de71bc:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de71c0:	f000 b840 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71c4 <nbgl_screenHandler>:
c0de71c4:	b403      	push	{r0, r1}
c0de71c6:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de71ca:	f000 b83b 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71ce <nbgl_objPoolGet>:
c0de71ce:	b403      	push	{r0, r1}
c0de71d0:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de71d4:	f000 b836 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71d8 <nbgl_containerPoolGet>:
c0de71d8:	b403      	push	{r0, r1}
c0de71da:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de71de:	f000 b831 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71e2 <nbgl_getFont>:
c0de71e2:	b403      	push	{r0, r1}
c0de71e4:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de71e8:	f000 b82c 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71ec <nbgl_getFontLineHeight>:
c0de71ec:	b403      	push	{r0, r1}
c0de71ee:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de71f2:	f000 b827 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de71f6 <nbgl_getTextMaxLenAndWidth>:
c0de71f6:	b403      	push	{r0, r1}
c0de71f8:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de71fc:	f000 b822 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de7200 <nbgl_getTextNbLinesInWidth>:
c0de7200:	b403      	push	{r0, r1}
c0de7202:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de7206:	f000 b81d 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de720a <nbgl_getTextNbPagesInWidth>:
c0de720a:	b403      	push	{r0, r1}
c0de720c:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de7210:	f000 b818 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de7214 <nbgl_getTextWidth>:
c0de7214:	b403      	push	{r0, r1}
c0de7216:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de721a:	f000 b813 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de721e <nbgl_getTextMaxLenInNbLines>:
c0de721e:	b403      	push	{r0, r1}
c0de7220:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de7224:	f000 b80e 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de7228 <nbgl_textReduceOnNbLines>:
c0de7228:	b403      	push	{r0, r1}
c0de722a:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de722e:	f000 b809 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de7232 <nbgl_buttonsHandler>:
c0de7232:	b403      	push	{r0, r1}
c0de7234:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de7238:	f000 b804 	b.w	c0de7244 <nbgl_trampoline_helper>

c0de723c <pic_init>:
c0de723c:	b403      	push	{r0, r1}
c0de723e:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de7242:	e7ff      	b.n	c0de7244 <nbgl_trampoline_helper>

c0de7244 <nbgl_trampoline_helper>:
c0de7244:	4900      	ldr	r1, [pc, #0]	@ (c0de7248 <nbgl_trampoline_helper+0x4>)
c0de7246:	4708      	bx	r1
c0de7248:	00808001 	.word	0x00808001

c0de724c <os_boot>:
c0de724c:	2000      	movs	r0, #0
c0de724e:	f000 bba9 	b.w	c0de79a4 <try_context_set>

c0de7252 <os_longjmp>:
c0de7252:	4604      	mov	r4, r0
c0de7254:	f000 fb9e 	bl	c0de7994 <try_context_get>
c0de7258:	4621      	mov	r1, r4
c0de725a:	f000 fcf5 	bl	c0de7c48 <longjmp>
	...

c0de7260 <os_explicit_zero_BSS_segment>:
c0de7260:	4803      	ldr	r0, [pc, #12]	@ (c0de7270 <os_explicit_zero_BSS_segment+0x10>)
c0de7262:	4904      	ldr	r1, [pc, #16]	@ (c0de7274 <os_explicit_zero_BSS_segment+0x14>)
c0de7264:	4448      	add	r0, r9
c0de7266:	4449      	add	r1, r9
c0de7268:	1a09      	subs	r1, r1, r0
c0de726a:	f000 bcb1 	b.w	c0de7bd0 <explicit_bzero>
c0de726e:	bf00      	nop
c0de7270:	00000000 	.word	0x00000000
c0de7274:	000008e8 	.word	0x000008e8

c0de7278 <snprintf>:
c0de7278:	b081      	sub	sp, #4
c0de727a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de727e:	b087      	sub	sp, #28
c0de7280:	2800      	cmp	r0, #0
c0de7282:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de7284:	f000 817a 	beq.w	c0de757c <snprintf+0x304>
c0de7288:	460d      	mov	r5, r1
c0de728a:	2900      	cmp	r1, #0
c0de728c:	f000 8176 	beq.w	c0de757c <snprintf+0x304>
c0de7290:	4629      	mov	r1, r5
c0de7292:	4616      	mov	r6, r2
c0de7294:	4604      	mov	r4, r0
c0de7296:	f000 fc8d 	bl	c0de7bb4 <__aeabi_memclr>
c0de729a:	f1b5 0801 	subs.w	r8, r5, #1
c0de729e:	f000 816d 	beq.w	c0de757c <snprintf+0x304>
c0de72a2:	a80f      	add	r0, sp, #60	@ 0x3c
c0de72a4:	9002      	str	r0, [sp, #8]
c0de72a6:	7830      	ldrb	r0, [r6, #0]
c0de72a8:	2800      	cmp	r0, #0
c0de72aa:	f000 8167 	beq.w	c0de757c <snprintf+0x304>
c0de72ae:	2700      	movs	r7, #0
c0de72b0:	b128      	cbz	r0, c0de72be <snprintf+0x46>
c0de72b2:	2825      	cmp	r0, #37	@ 0x25
c0de72b4:	d003      	beq.n	c0de72be <snprintf+0x46>
c0de72b6:	19f0      	adds	r0, r6, r7
c0de72b8:	3701      	adds	r7, #1
c0de72ba:	7840      	ldrb	r0, [r0, #1]
c0de72bc:	e7f8      	b.n	c0de72b0 <snprintf+0x38>
c0de72be:	4547      	cmp	r7, r8
c0de72c0:	bf28      	it	cs
c0de72c2:	4647      	movcs	r7, r8
c0de72c4:	4620      	mov	r0, r4
c0de72c6:	4631      	mov	r1, r6
c0de72c8:	463a      	mov	r2, r7
c0de72ca:	f000 fc6b 	bl	c0de7ba4 <__aeabi_memmove>
c0de72ce:	ebb8 0807 	subs.w	r8, r8, r7
c0de72d2:	f000 8153 	beq.w	c0de757c <snprintf+0x304>
c0de72d6:	5df1      	ldrb	r1, [r6, r7]
c0de72d8:	19f0      	adds	r0, r6, r7
c0de72da:	443c      	add	r4, r7
c0de72dc:	4606      	mov	r6, r0
c0de72de:	2925      	cmp	r1, #37	@ 0x25
c0de72e0:	d1e1      	bne.n	c0de72a6 <snprintf+0x2e>
c0de72e2:	1c41      	adds	r1, r0, #1
c0de72e4:	f04f 0b00 	mov.w	fp, #0
c0de72e8:	f04f 0e20 	mov.w	lr, #32
c0de72ec:	2500      	movs	r5, #0
c0de72ee:	2600      	movs	r6, #0
c0de72f0:	3101      	adds	r1, #1
c0de72f2:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de72f6:	4632      	mov	r2, r6
c0de72f8:	3101      	adds	r1, #1
c0de72fa:	2600      	movs	r6, #0
c0de72fc:	2b2d      	cmp	r3, #45	@ 0x2d
c0de72fe:	d0f8      	beq.n	c0de72f2 <snprintf+0x7a>
c0de7300:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de7304:	2e0a      	cmp	r6, #10
c0de7306:	d313      	bcc.n	c0de7330 <snprintf+0xb8>
c0de7308:	2b25      	cmp	r3, #37	@ 0x25
c0de730a:	d046      	beq.n	c0de739a <snprintf+0x122>
c0de730c:	2b2a      	cmp	r3, #42	@ 0x2a
c0de730e:	d01f      	beq.n	c0de7350 <snprintf+0xd8>
c0de7310:	2b2e      	cmp	r3, #46	@ 0x2e
c0de7312:	d129      	bne.n	c0de7368 <snprintf+0xf0>
c0de7314:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de7318:	2a2a      	cmp	r2, #42	@ 0x2a
c0de731a:	d13c      	bne.n	c0de7396 <snprintf+0x11e>
c0de731c:	780a      	ldrb	r2, [r1, #0]
c0de731e:	2a48      	cmp	r2, #72	@ 0x48
c0de7320:	d003      	beq.n	c0de732a <snprintf+0xb2>
c0de7322:	2a73      	cmp	r2, #115	@ 0x73
c0de7324:	d001      	beq.n	c0de732a <snprintf+0xb2>
c0de7326:	2a68      	cmp	r2, #104	@ 0x68
c0de7328:	d135      	bne.n	c0de7396 <snprintf+0x11e>
c0de732a:	9a02      	ldr	r2, [sp, #8]
c0de732c:	2601      	movs	r6, #1
c0de732e:	e017      	b.n	c0de7360 <snprintf+0xe8>
c0de7330:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de7334:	ea56 060b 	orrs.w	r6, r6, fp
c0de7338:	bf08      	it	eq
c0de733a:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de733e:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de7342:	3901      	subs	r1, #1
c0de7344:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de7348:	4616      	mov	r6, r2
c0de734a:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de734e:	e7cf      	b.n	c0de72f0 <snprintf+0x78>
c0de7350:	460b      	mov	r3, r1
c0de7352:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de7356:	2a73      	cmp	r2, #115	@ 0x73
c0de7358:	d11d      	bne.n	c0de7396 <snprintf+0x11e>
c0de735a:	9a02      	ldr	r2, [sp, #8]
c0de735c:	2602      	movs	r6, #2
c0de735e:	4619      	mov	r1, r3
c0de7360:	1d13      	adds	r3, r2, #4
c0de7362:	9302      	str	r3, [sp, #8]
c0de7364:	6815      	ldr	r5, [r2, #0]
c0de7366:	e7c3      	b.n	c0de72f0 <snprintf+0x78>
c0de7368:	2b48      	cmp	r3, #72	@ 0x48
c0de736a:	d018      	beq.n	c0de739e <snprintf+0x126>
c0de736c:	2b58      	cmp	r3, #88	@ 0x58
c0de736e:	d019      	beq.n	c0de73a4 <snprintf+0x12c>
c0de7370:	2b63      	cmp	r3, #99	@ 0x63
c0de7372:	d020      	beq.n	c0de73b6 <snprintf+0x13e>
c0de7374:	2b64      	cmp	r3, #100	@ 0x64
c0de7376:	d02a      	beq.n	c0de73ce <snprintf+0x156>
c0de7378:	2b68      	cmp	r3, #104	@ 0x68
c0de737a:	d036      	beq.n	c0de73ea <snprintf+0x172>
c0de737c:	2b70      	cmp	r3, #112	@ 0x70
c0de737e:	d006      	beq.n	c0de738e <snprintf+0x116>
c0de7380:	2b73      	cmp	r3, #115	@ 0x73
c0de7382:	d037      	beq.n	c0de73f4 <snprintf+0x17c>
c0de7384:	2b75      	cmp	r3, #117	@ 0x75
c0de7386:	f000 8081 	beq.w	c0de748c <snprintf+0x214>
c0de738a:	2b78      	cmp	r3, #120	@ 0x78
c0de738c:	d103      	bne.n	c0de7396 <snprintf+0x11e>
c0de738e:	9400      	str	r4, [sp, #0]
c0de7390:	f04f 0c00 	mov.w	ip, #0
c0de7394:	e009      	b.n	c0de73aa <snprintf+0x132>
c0de7396:	1e4e      	subs	r6, r1, #1
c0de7398:	e785      	b.n	c0de72a6 <snprintf+0x2e>
c0de739a:	2025      	movs	r0, #37	@ 0x25
c0de739c:	e00f      	b.n	c0de73be <snprintf+0x146>
c0de739e:	487b      	ldr	r0, [pc, #492]	@ (c0de758c <snprintf+0x314>)
c0de73a0:	4478      	add	r0, pc
c0de73a2:	e024      	b.n	c0de73ee <snprintf+0x176>
c0de73a4:	f04f 0c01 	mov.w	ip, #1
c0de73a8:	9400      	str	r4, [sp, #0]
c0de73aa:	9a02      	ldr	r2, [sp, #8]
c0de73ac:	2400      	movs	r4, #0
c0de73ae:	1d13      	adds	r3, r2, #4
c0de73b0:	9302      	str	r3, [sp, #8]
c0de73b2:	2310      	movs	r3, #16
c0de73b4:	e072      	b.n	c0de749c <snprintf+0x224>
c0de73b6:	9802      	ldr	r0, [sp, #8]
c0de73b8:	1d02      	adds	r2, r0, #4
c0de73ba:	9202      	str	r2, [sp, #8]
c0de73bc:	6800      	ldr	r0, [r0, #0]
c0de73be:	1e4e      	subs	r6, r1, #1
c0de73c0:	f804 0b01 	strb.w	r0, [r4], #1
c0de73c4:	f1b8 0801 	subs.w	r8, r8, #1
c0de73c8:	f47f af6d 	bne.w	c0de72a6 <snprintf+0x2e>
c0de73cc:	e0d6      	b.n	c0de757c <snprintf+0x304>
c0de73ce:	9a02      	ldr	r2, [sp, #8]
c0de73d0:	9400      	str	r4, [sp, #0]
c0de73d2:	1d13      	adds	r3, r2, #4
c0de73d4:	9302      	str	r3, [sp, #8]
c0de73d6:	6813      	ldr	r3, [r2, #0]
c0de73d8:	2b00      	cmp	r3, #0
c0de73da:	461a      	mov	r2, r3
c0de73dc:	d500      	bpl.n	c0de73e0 <snprintf+0x168>
c0de73de:	425a      	negs	r2, r3
c0de73e0:	0fdc      	lsrs	r4, r3, #31
c0de73e2:	f04f 0c00 	mov.w	ip, #0
c0de73e6:	230a      	movs	r3, #10
c0de73e8:	e059      	b.n	c0de749e <snprintf+0x226>
c0de73ea:	4869      	ldr	r0, [pc, #420]	@ (c0de7590 <snprintf+0x318>)
c0de73ec:	4478      	add	r0, pc
c0de73ee:	f04f 0c01 	mov.w	ip, #1
c0de73f2:	e003      	b.n	c0de73fc <snprintf+0x184>
c0de73f4:	4864      	ldr	r0, [pc, #400]	@ (c0de7588 <snprintf+0x310>)
c0de73f6:	f04f 0c00 	mov.w	ip, #0
c0de73fa:	4478      	add	r0, pc
c0de73fc:	9b02      	ldr	r3, [sp, #8]
c0de73fe:	b2d2      	uxtb	r2, r2
c0de7400:	1d1e      	adds	r6, r3, #4
c0de7402:	9602      	str	r6, [sp, #8]
c0de7404:	1e4e      	subs	r6, r1, #1
c0de7406:	6819      	ldr	r1, [r3, #0]
c0de7408:	2a02      	cmp	r2, #2
c0de740a:	f000 80a7 	beq.w	c0de755c <snprintf+0x2e4>
c0de740e:	2a01      	cmp	r2, #1
c0de7410:	d007      	beq.n	c0de7422 <snprintf+0x1aa>
c0de7412:	463d      	mov	r5, r7
c0de7414:	b92a      	cbnz	r2, c0de7422 <snprintf+0x1aa>
c0de7416:	2200      	movs	r2, #0
c0de7418:	5c8b      	ldrb	r3, [r1, r2]
c0de741a:	3201      	adds	r2, #1
c0de741c:	2b00      	cmp	r3, #0
c0de741e:	d1fb      	bne.n	c0de7418 <snprintf+0x1a0>
c0de7420:	1e55      	subs	r5, r2, #1
c0de7422:	f1bc 0f00 	cmp.w	ip, #0
c0de7426:	d016      	beq.n	c0de7456 <snprintf+0x1de>
c0de7428:	2d00      	cmp	r5, #0
c0de742a:	f43f af3c 	beq.w	c0de72a6 <snprintf+0x2e>
c0de742e:	f1b8 0f02 	cmp.w	r8, #2
c0de7432:	f0c0 80a3 	bcc.w	c0de757c <snprintf+0x304>
c0de7436:	780a      	ldrb	r2, [r1, #0]
c0de7438:	0913      	lsrs	r3, r2, #4
c0de743a:	f002 020f 	and.w	r2, r2, #15
c0de743e:	5cc3      	ldrb	r3, [r0, r3]
c0de7440:	f1b8 0802 	subs.w	r8, r8, #2
c0de7444:	7023      	strb	r3, [r4, #0]
c0de7446:	5c82      	ldrb	r2, [r0, r2]
c0de7448:	7062      	strb	r2, [r4, #1]
c0de744a:	f000 8097 	beq.w	c0de757c <snprintf+0x304>
c0de744e:	3101      	adds	r1, #1
c0de7450:	3d01      	subs	r5, #1
c0de7452:	3402      	adds	r4, #2
c0de7454:	e7e8      	b.n	c0de7428 <snprintf+0x1b0>
c0de7456:	4545      	cmp	r5, r8
c0de7458:	bf28      	it	cs
c0de745a:	4645      	movcs	r5, r8
c0de745c:	4620      	mov	r0, r4
c0de745e:	462a      	mov	r2, r5
c0de7460:	f000 fba0 	bl	c0de7ba4 <__aeabi_memmove>
c0de7464:	ebb8 0805 	subs.w	r8, r8, r5
c0de7468:	f000 8088 	beq.w	c0de757c <snprintf+0x304>
c0de746c:	462f      	mov	r7, r5
c0de746e:	442c      	add	r4, r5
c0de7470:	45bb      	cmp	fp, r7
c0de7472:	f67f af18 	bls.w	c0de72a6 <snprintf+0x2e>
c0de7476:	ebab 0507 	sub.w	r5, fp, r7
c0de747a:	4620      	mov	r0, r4
c0de747c:	4545      	cmp	r5, r8
c0de747e:	bf28      	it	cs
c0de7480:	4645      	movcs	r5, r8
c0de7482:	4629      	mov	r1, r5
c0de7484:	2220      	movs	r2, #32
c0de7486:	f000 fb8f 	bl	c0de7ba8 <__aeabi_memset>
c0de748a:	e061      	b.n	c0de7550 <snprintf+0x2d8>
c0de748c:	9a02      	ldr	r2, [sp, #8]
c0de748e:	9400      	str	r4, [sp, #0]
c0de7490:	2400      	movs	r4, #0
c0de7492:	f04f 0c00 	mov.w	ip, #0
c0de7496:	1d13      	adds	r3, r2, #4
c0de7498:	9302      	str	r3, [sp, #8]
c0de749a:	230a      	movs	r3, #10
c0de749c:	6812      	ldr	r2, [r2, #0]
c0de749e:	483d      	ldr	r0, [pc, #244]	@ (c0de7594 <snprintf+0x31c>)
c0de74a0:	1e4e      	subs	r6, r1, #1
c0de74a2:	f04f 0a01 	mov.w	sl, #1
c0de74a6:	4478      	add	r0, pc
c0de74a8:	9001      	str	r0, [sp, #4]
c0de74aa:	fba3 570a 	umull	r5, r7, r3, sl
c0de74ae:	2f00      	cmp	r7, #0
c0de74b0:	bf18      	it	ne
c0de74b2:	2701      	movne	r7, #1
c0de74b4:	4295      	cmp	r5, r2
c0de74b6:	d804      	bhi.n	c0de74c2 <snprintf+0x24a>
c0de74b8:	b91f      	cbnz	r7, c0de74c2 <snprintf+0x24a>
c0de74ba:	f1ab 0b01 	sub.w	fp, fp, #1
c0de74be:	46aa      	mov	sl, r5
c0de74c0:	e7f3      	b.n	c0de74aa <snprintf+0x232>
c0de74c2:	2c00      	cmp	r4, #0
c0de74c4:	4627      	mov	r7, r4
c0de74c6:	f04f 0500 	mov.w	r5, #0
c0de74ca:	bf18      	it	ne
c0de74cc:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de74d0:	d00d      	beq.n	c0de74ee <snprintf+0x276>
c0de74d2:	4660      	mov	r0, ip
c0de74d4:	fa5f fc8e 	uxtb.w	ip, lr
c0de74d8:	a903      	add	r1, sp, #12
c0de74da:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de74de:	4684      	mov	ip, r0
c0de74e0:	d106      	bne.n	c0de74f0 <snprintf+0x278>
c0de74e2:	202d      	movs	r0, #45	@ 0x2d
c0de74e4:	2400      	movs	r4, #0
c0de74e6:	2501      	movs	r5, #1
c0de74e8:	f88d 000c 	strb.w	r0, [sp, #12]
c0de74ec:	e000      	b.n	c0de74f0 <snprintf+0x278>
c0de74ee:	a903      	add	r1, sp, #12
c0de74f0:	eb07 000b 	add.w	r0, r7, fp
c0de74f4:	3802      	subs	r0, #2
c0de74f6:	280d      	cmp	r0, #13
c0de74f8:	d808      	bhi.n	c0de750c <snprintf+0x294>
c0de74fa:	f1c7 0701 	rsb	r7, r7, #1
c0de74fe:	45bb      	cmp	fp, r7
c0de7500:	d004      	beq.n	c0de750c <snprintf+0x294>
c0de7502:	f801 e005 	strb.w	lr, [r1, r5]
c0de7506:	3701      	adds	r7, #1
c0de7508:	3501      	adds	r5, #1
c0de750a:	e7f8      	b.n	c0de74fe <snprintf+0x286>
c0de750c:	9f01      	ldr	r7, [sp, #4]
c0de750e:	b114      	cbz	r4, c0de7516 <snprintf+0x29e>
c0de7510:	202d      	movs	r0, #45	@ 0x2d
c0de7512:	5548      	strb	r0, [r1, r5]
c0de7514:	3501      	adds	r5, #1
c0de7516:	4820      	ldr	r0, [pc, #128]	@ (c0de7598 <snprintf+0x320>)
c0de7518:	f1bc 0f00 	cmp.w	ip, #0
c0de751c:	4478      	add	r0, pc
c0de751e:	bf08      	it	eq
c0de7520:	4638      	moveq	r0, r7
c0de7522:	f1ba 0f00 	cmp.w	sl, #0
c0de7526:	d00b      	beq.n	c0de7540 <snprintf+0x2c8>
c0de7528:	fbb2 f7fa 	udiv	r7, r2, sl
c0de752c:	fbba faf3 	udiv	sl, sl, r3
c0de7530:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7534:	fb04 7413 	mls	r4, r4, r3, r7
c0de7538:	5d04      	ldrb	r4, [r0, r4]
c0de753a:	554c      	strb	r4, [r1, r5]
c0de753c:	3501      	adds	r5, #1
c0de753e:	e7f0      	b.n	c0de7522 <snprintf+0x2aa>
c0de7540:	4545      	cmp	r5, r8
c0de7542:	bf28      	it	cs
c0de7544:	4645      	movcs	r5, r8
c0de7546:	9c00      	ldr	r4, [sp, #0]
c0de7548:	462a      	mov	r2, r5
c0de754a:	4620      	mov	r0, r4
c0de754c:	f000 fb2a 	bl	c0de7ba4 <__aeabi_memmove>
c0de7550:	ebb8 0805 	subs.w	r8, r8, r5
c0de7554:	442c      	add	r4, r5
c0de7556:	f47f aea6 	bne.w	c0de72a6 <snprintf+0x2e>
c0de755a:	e00f      	b.n	c0de757c <snprintf+0x304>
c0de755c:	7808      	ldrb	r0, [r1, #0]
c0de755e:	2800      	cmp	r0, #0
c0de7560:	f47f aea1 	bne.w	c0de72a6 <snprintf+0x2e>
c0de7564:	4545      	cmp	r5, r8
c0de7566:	bf28      	it	cs
c0de7568:	4645      	movcs	r5, r8
c0de756a:	4620      	mov	r0, r4
c0de756c:	4629      	mov	r1, r5
c0de756e:	2220      	movs	r2, #32
c0de7570:	f000 fb1a 	bl	c0de7ba8 <__aeabi_memset>
c0de7574:	ebb8 0805 	subs.w	r8, r8, r5
c0de7578:	f47f af79 	bne.w	c0de746e <snprintf+0x1f6>
c0de757c:	2000      	movs	r0, #0
c0de757e:	b007      	add	sp, #28
c0de7580:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7584:	b001      	add	sp, #4
c0de7586:	4770      	bx	lr
c0de7588:	00001cb2 	.word	0x00001cb2
c0de758c:	00001d1c 	.word	0x00001d1c
c0de7590:	00001cc0 	.word	0x00001cc0
c0de7594:	00001c06 	.word	0x00001c06
c0de7598:	00001ba0 	.word	0x00001ba0

c0de759c <pic>:
c0de759c:	4a0a      	ldr	r2, [pc, #40]	@ (c0de75c8 <pic+0x2c>)
c0de759e:	4282      	cmp	r2, r0
c0de75a0:	490a      	ldr	r1, [pc, #40]	@ (c0de75cc <pic+0x30>)
c0de75a2:	d806      	bhi.n	c0de75b2 <pic+0x16>
c0de75a4:	4281      	cmp	r1, r0
c0de75a6:	d304      	bcc.n	c0de75b2 <pic+0x16>
c0de75a8:	b580      	push	{r7, lr}
c0de75aa:	f000 f815 	bl	c0de75d8 <pic_internal>
c0de75ae:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de75b2:	4907      	ldr	r1, [pc, #28]	@ (c0de75d0 <pic+0x34>)
c0de75b4:	4288      	cmp	r0, r1
c0de75b6:	4a07      	ldr	r2, [pc, #28]	@ (c0de75d4 <pic+0x38>)
c0de75b8:	d304      	bcc.n	c0de75c4 <pic+0x28>
c0de75ba:	4290      	cmp	r0, r2
c0de75bc:	d802      	bhi.n	c0de75c4 <pic+0x28>
c0de75be:	1a40      	subs	r0, r0, r1
c0de75c0:	4649      	mov	r1, r9
c0de75c2:	4408      	add	r0, r1
c0de75c4:	4770      	bx	lr
c0de75c6:	0000      	movs	r0, r0
c0de75c8:	c0de0000 	.word	0xc0de0000
c0de75cc:	c0de943f 	.word	0xc0de943f
c0de75d0:	da7a0000 	.word	0xda7a0000
c0de75d4:	da7aa000 	.word	0xda7aa000

c0de75d8 <pic_internal>:
c0de75d8:	467a      	mov	r2, pc
c0de75da:	4902      	ldr	r1, [pc, #8]	@ (c0de75e4 <pic_internal+0xc>)
c0de75dc:	1cc9      	adds	r1, r1, #3
c0de75de:	1a89      	subs	r1, r1, r2
c0de75e0:	1a40      	subs	r0, r0, r1
c0de75e2:	4770      	bx	lr
c0de75e4:	c0de75d9 	.word	0xc0de75d9

c0de75e8 <SVC_Call>:
c0de75e8:	df01      	svc	1
c0de75ea:	2900      	cmp	r1, #0
c0de75ec:	d100      	bne.n	c0de75f0 <exception>
c0de75ee:	4770      	bx	lr

c0de75f0 <exception>:
c0de75f0:	4608      	mov	r0, r1
c0de75f2:	f7ff fe2e 	bl	c0de7252 <os_longjmp>
	...

c0de75f8 <SVC_cx_call>:
c0de75f8:	df01      	svc	1
c0de75fa:	4770      	bx	lr

c0de75fc <nvm_write>:
c0de75fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de75fe:	ab01      	add	r3, sp, #4
c0de7600:	c307      	stmia	r3!, {r0, r1, r2}
c0de7602:	4802      	ldr	r0, [pc, #8]	@ (c0de760c <nvm_write+0x10>)
c0de7604:	a901      	add	r1, sp, #4
c0de7606:	f7ff ffef 	bl	c0de75e8 <SVC_Call>
c0de760a:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de760c:	03000003 	.word	0x03000003

c0de7610 <cx_bn_lock>:
c0de7610:	b5e0      	push	{r5, r6, r7, lr}
c0de7612:	e9cd 0100 	strd	r0, r1, [sp]
c0de7616:	4802      	ldr	r0, [pc, #8]	@ (c0de7620 <cx_bn_lock+0x10>)
c0de7618:	4669      	mov	r1, sp
c0de761a:	f7ff ffed 	bl	c0de75f8 <SVC_cx_call>
c0de761e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7620:	02000112 	.word	0x02000112

c0de7624 <cx_bn_unlock>:
c0de7624:	b5e0      	push	{r5, r6, r7, lr}
c0de7626:	2000      	movs	r0, #0
c0de7628:	4669      	mov	r1, sp
c0de762a:	9001      	str	r0, [sp, #4]
c0de762c:	20b6      	movs	r0, #182	@ 0xb6
c0de762e:	f7ff ffe3 	bl	c0de75f8 <SVC_cx_call>
c0de7632:	bd8c      	pop	{r2, r3, r7, pc}

c0de7634 <cx_bn_alloc>:
c0de7634:	b5e0      	push	{r5, r6, r7, lr}
c0de7636:	e9cd 0100 	strd	r0, r1, [sp]
c0de763a:	4802      	ldr	r0, [pc, #8]	@ (c0de7644 <cx_bn_alloc+0x10>)
c0de763c:	4669      	mov	r1, sp
c0de763e:	f7ff ffdb 	bl	c0de75f8 <SVC_cx_call>
c0de7642:	bd8c      	pop	{r2, r3, r7, pc}
c0de7644:	02000113 	.word	0x02000113

c0de7648 <cx_bn_alloc_init>:
c0de7648:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de764a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de764e:	4803      	ldr	r0, [pc, #12]	@ (c0de765c <cx_bn_alloc_init+0x14>)
c0de7650:	4669      	mov	r1, sp
c0de7652:	f7ff ffd1 	bl	c0de75f8 <SVC_cx_call>
c0de7656:	b004      	add	sp, #16
c0de7658:	bd80      	pop	{r7, pc}
c0de765a:	bf00      	nop
c0de765c:	04000114 	.word	0x04000114

c0de7660 <cx_bn_destroy>:
c0de7660:	b5e0      	push	{r5, r6, r7, lr}
c0de7662:	f000 f9b5 	bl	c0de79d0 <OUTLINED_FUNCTION_0>
c0de7666:	4802      	ldr	r0, [pc, #8]	@ (c0de7670 <cx_bn_destroy+0x10>)
c0de7668:	4669      	mov	r1, sp
c0de766a:	f7ff ffc5 	bl	c0de75f8 <SVC_cx_call>
c0de766e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7670:	010000bc 	.word	0x010000bc

c0de7674 <cx_bn_nbytes>:
c0de7674:	b5e0      	push	{r5, r6, r7, lr}
c0de7676:	e9cd 0100 	strd	r0, r1, [sp]
c0de767a:	4802      	ldr	r0, [pc, #8]	@ (c0de7684 <cx_bn_nbytes+0x10>)
c0de767c:	4669      	mov	r1, sp
c0de767e:	f7ff ffbb 	bl	c0de75f8 <SVC_cx_call>
c0de7682:	bd8c      	pop	{r2, r3, r7, pc}
c0de7684:	0200010d 	.word	0x0200010d

c0de7688 <cx_bn_init>:
c0de7688:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de768a:	ab01      	add	r3, sp, #4
c0de768c:	c307      	stmia	r3!, {r0, r1, r2}
c0de768e:	4803      	ldr	r0, [pc, #12]	@ (c0de769c <cx_bn_init+0x14>)
c0de7690:	a901      	add	r1, sp, #4
c0de7692:	f7ff ffb1 	bl	c0de75f8 <SVC_cx_call>
c0de7696:	b004      	add	sp, #16
c0de7698:	bd80      	pop	{r7, pc}
c0de769a:	bf00      	nop
c0de769c:	03000115 	.word	0x03000115

c0de76a0 <cx_bn_copy>:
c0de76a0:	b5e0      	push	{r5, r6, r7, lr}
c0de76a2:	e9cd 0100 	strd	r0, r1, [sp]
c0de76a6:	4802      	ldr	r0, [pc, #8]	@ (c0de76b0 <cx_bn_copy+0x10>)
c0de76a8:	4669      	mov	r1, sp
c0de76aa:	f7ff ffa5 	bl	c0de75f8 <SVC_cx_call>
c0de76ae:	bd8c      	pop	{r2, r3, r7, pc}
c0de76b0:	020000c0 	.word	0x020000c0

c0de76b4 <cx_bn_set_u32>:
c0de76b4:	b5e0      	push	{r5, r6, r7, lr}
c0de76b6:	e9cd 0100 	strd	r0, r1, [sp]
c0de76ba:	4802      	ldr	r0, [pc, #8]	@ (c0de76c4 <cx_bn_set_u32+0x10>)
c0de76bc:	4669      	mov	r1, sp
c0de76be:	f7ff ff9b 	bl	c0de75f8 <SVC_cx_call>
c0de76c2:	bd8c      	pop	{r2, r3, r7, pc}
c0de76c4:	020000c1 	.word	0x020000c1

c0de76c8 <cx_bn_export>:
c0de76c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76ca:	ab01      	add	r3, sp, #4
c0de76cc:	c307      	stmia	r3!, {r0, r1, r2}
c0de76ce:	4803      	ldr	r0, [pc, #12]	@ (c0de76dc <cx_bn_export+0x14>)
c0de76d0:	a901      	add	r1, sp, #4
c0de76d2:	f7ff ff91 	bl	c0de75f8 <SVC_cx_call>
c0de76d6:	b004      	add	sp, #16
c0de76d8:	bd80      	pop	{r7, pc}
c0de76da:	bf00      	nop
c0de76dc:	030000c3 	.word	0x030000c3

c0de76e0 <cx_bn_cmp>:
c0de76e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76e2:	ab01      	add	r3, sp, #4
c0de76e4:	c307      	stmia	r3!, {r0, r1, r2}
c0de76e6:	4803      	ldr	r0, [pc, #12]	@ (c0de76f4 <cx_bn_cmp+0x14>)
c0de76e8:	a901      	add	r1, sp, #4
c0de76ea:	f7ff ff85 	bl	c0de75f8 <SVC_cx_call>
c0de76ee:	b004      	add	sp, #16
c0de76f0:	bd80      	pop	{r7, pc}
c0de76f2:	bf00      	nop
c0de76f4:	030000c4 	.word	0x030000c4

c0de76f8 <cx_bn_cmp_u32>:
c0de76f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76fa:	ab01      	add	r3, sp, #4
c0de76fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de76fe:	4803      	ldr	r0, [pc, #12]	@ (c0de770c <cx_bn_cmp_u32+0x14>)
c0de7700:	a901      	add	r1, sp, #4
c0de7702:	f7ff ff79 	bl	c0de75f8 <SVC_cx_call>
c0de7706:	b004      	add	sp, #16
c0de7708:	bd80      	pop	{r7, pc}
c0de770a:	bf00      	nop
c0de770c:	030000c5 	.word	0x030000c5

c0de7710 <cx_bn_tst_bit>:
c0de7710:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7712:	ab01      	add	r3, sp, #4
c0de7714:	c307      	stmia	r3!, {r0, r1, r2}
c0de7716:	4803      	ldr	r0, [pc, #12]	@ (c0de7724 <cx_bn_tst_bit+0x14>)
c0de7718:	a901      	add	r1, sp, #4
c0de771a:	f7ff ff6d 	bl	c0de75f8 <SVC_cx_call>
c0de771e:	b004      	add	sp, #16
c0de7720:	bd80      	pop	{r7, pc}
c0de7722:	bf00      	nop
c0de7724:	030000cb 	.word	0x030000cb

c0de7728 <cx_bn_mod_add>:
c0de7728:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de772a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de772e:	4803      	ldr	r0, [pc, #12]	@ (c0de773c <cx_bn_mod_add+0x14>)
c0de7730:	4669      	mov	r1, sp
c0de7732:	f7ff ff61 	bl	c0de75f8 <SVC_cx_call>
c0de7736:	b004      	add	sp, #16
c0de7738:	bd80      	pop	{r7, pc}
c0de773a:	bf00      	nop
c0de773c:	040000d3 	.word	0x040000d3

c0de7740 <cx_bn_mod_sub>:
c0de7740:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7742:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7746:	4803      	ldr	r0, [pc, #12]	@ (c0de7754 <cx_bn_mod_sub+0x14>)
c0de7748:	4669      	mov	r1, sp
c0de774a:	f7ff ff55 	bl	c0de75f8 <SVC_cx_call>
c0de774e:	b004      	add	sp, #16
c0de7750:	bd80      	pop	{r7, pc}
c0de7752:	bf00      	nop
c0de7754:	040000d4 	.word	0x040000d4

c0de7758 <cx_bn_mod_mul>:
c0de7758:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de775a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de775e:	4803      	ldr	r0, [pc, #12]	@ (c0de776c <cx_bn_mod_mul+0x14>)
c0de7760:	4669      	mov	r1, sp
c0de7762:	f7ff ff49 	bl	c0de75f8 <SVC_cx_call>
c0de7766:	b004      	add	sp, #16
c0de7768:	bd80      	pop	{r7, pc}
c0de776a:	bf00      	nop
c0de776c:	040000d5 	.word	0x040000d5

c0de7770 <cx_bn_reduce>:
c0de7770:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7772:	ab01      	add	r3, sp, #4
c0de7774:	c307      	stmia	r3!, {r0, r1, r2}
c0de7776:	4803      	ldr	r0, [pc, #12]	@ (c0de7784 <cx_bn_reduce+0x14>)
c0de7778:	a901      	add	r1, sp, #4
c0de777a:	f7ff ff3d 	bl	c0de75f8 <SVC_cx_call>
c0de777e:	b004      	add	sp, #16
c0de7780:	bd80      	pop	{r7, pc}
c0de7782:	bf00      	nop
c0de7784:	030000d6 	.word	0x030000d6

c0de7788 <cx_bn_mod_invert_nprime>:
c0de7788:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de778a:	ab01      	add	r3, sp, #4
c0de778c:	c307      	stmia	r3!, {r0, r1, r2}
c0de778e:	4803      	ldr	r0, [pc, #12]	@ (c0de779c <cx_bn_mod_invert_nprime+0x14>)
c0de7790:	a901      	add	r1, sp, #4
c0de7792:	f7ff ff31 	bl	c0de75f8 <SVC_cx_call>
c0de7796:	b004      	add	sp, #16
c0de7798:	bd80      	pop	{r7, pc}
c0de779a:	bf00      	nop
c0de779c:	030000da 	.word	0x030000da

c0de77a0 <cx_bn_is_prime>:
c0de77a0:	b5e0      	push	{r5, r6, r7, lr}
c0de77a2:	e9cd 0100 	strd	r0, r1, [sp]
c0de77a6:	4802      	ldr	r0, [pc, #8]	@ (c0de77b0 <cx_bn_is_prime+0x10>)
c0de77a8:	4669      	mov	r1, sp
c0de77aa:	f7ff ff25 	bl	c0de75f8 <SVC_cx_call>
c0de77ae:	bd8c      	pop	{r2, r3, r7, pc}
c0de77b0:	020000ef 	.word	0x020000ef

c0de77b4 <cx_mont_alloc>:
c0de77b4:	b5e0      	push	{r5, r6, r7, lr}
c0de77b6:	e9cd 0100 	strd	r0, r1, [sp]
c0de77ba:	4802      	ldr	r0, [pc, #8]	@ (c0de77c4 <cx_mont_alloc+0x10>)
c0de77bc:	4669      	mov	r1, sp
c0de77be:	f7ff ff1b 	bl	c0de75f8 <SVC_cx_call>
c0de77c2:	bd8c      	pop	{r2, r3, r7, pc}
c0de77c4:	020000dc 	.word	0x020000dc

c0de77c8 <cx_mont_init>:
c0de77c8:	b5e0      	push	{r5, r6, r7, lr}
c0de77ca:	e9cd 0100 	strd	r0, r1, [sp]
c0de77ce:	4802      	ldr	r0, [pc, #8]	@ (c0de77d8 <cx_mont_init+0x10>)
c0de77d0:	4669      	mov	r1, sp
c0de77d2:	f7ff ff11 	bl	c0de75f8 <SVC_cx_call>
c0de77d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de77d8:	020000dd 	.word	0x020000dd

c0de77dc <cx_mont_to_montgomery>:
c0de77dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de77de:	ab01      	add	r3, sp, #4
c0de77e0:	c307      	stmia	r3!, {r0, r1, r2}
c0de77e2:	4803      	ldr	r0, [pc, #12]	@ (c0de77f0 <cx_mont_to_montgomery+0x14>)
c0de77e4:	a901      	add	r1, sp, #4
c0de77e6:	f7ff ff07 	bl	c0de75f8 <SVC_cx_call>
c0de77ea:	b004      	add	sp, #16
c0de77ec:	bd80      	pop	{r7, pc}
c0de77ee:	bf00      	nop
c0de77f0:	030000df 	.word	0x030000df

c0de77f4 <cx_mont_from_montgomery>:
c0de77f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de77f6:	ab01      	add	r3, sp, #4
c0de77f8:	c307      	stmia	r3!, {r0, r1, r2}
c0de77fa:	4803      	ldr	r0, [pc, #12]	@ (c0de7808 <cx_mont_from_montgomery+0x14>)
c0de77fc:	a901      	add	r1, sp, #4
c0de77fe:	f7ff fefb 	bl	c0de75f8 <SVC_cx_call>
c0de7802:	b004      	add	sp, #16
c0de7804:	bd80      	pop	{r7, pc}
c0de7806:	bf00      	nop
c0de7808:	030000e0 	.word	0x030000e0

c0de780c <cx_mont_mul>:
c0de780c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de780e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7812:	4803      	ldr	r0, [pc, #12]	@ (c0de7820 <cx_mont_mul+0x14>)
c0de7814:	4669      	mov	r1, sp
c0de7816:	f7ff feef 	bl	c0de75f8 <SVC_cx_call>
c0de781a:	b004      	add	sp, #16
c0de781c:	bd80      	pop	{r7, pc}
c0de781e:	bf00      	nop
c0de7820:	040000e1 	.word	0x040000e1

c0de7824 <cx_mont_pow>:
c0de7824:	b510      	push	{r4, lr}
c0de7826:	b086      	sub	sp, #24
c0de7828:	f10d 0c04 	add.w	ip, sp, #4
c0de782c:	9c08      	ldr	r4, [sp, #32]
c0de782e:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7832:	4803      	ldr	r0, [pc, #12]	@ (c0de7840 <cx_mont_pow+0x1c>)
c0de7834:	a901      	add	r1, sp, #4
c0de7836:	f7ff fedf 	bl	c0de75f8 <SVC_cx_call>
c0de783a:	b006      	add	sp, #24
c0de783c:	bd10      	pop	{r4, pc}
c0de783e:	bf00      	nop
c0de7840:	050000e2 	.word	0x050000e2

c0de7844 <cx_mont_invert_nprime>:
c0de7844:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7846:	ab01      	add	r3, sp, #4
c0de7848:	c307      	stmia	r3!, {r0, r1, r2}
c0de784a:	4803      	ldr	r0, [pc, #12]	@ (c0de7858 <cx_mont_invert_nprime+0x14>)
c0de784c:	a901      	add	r1, sp, #4
c0de784e:	f7ff fed3 	bl	c0de75f8 <SVC_cx_call>
c0de7852:	b004      	add	sp, #16
c0de7854:	bd80      	pop	{r7, pc}
c0de7856:	bf00      	nop
c0de7858:	030000e4 	.word	0x030000e4

c0de785c <cx_ecdomain_parameters_length>:
c0de785c:	b5e0      	push	{r5, r6, r7, lr}
c0de785e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7862:	4802      	ldr	r0, [pc, #8]	@ (c0de786c <cx_ecdomain_parameters_length+0x10>)
c0de7864:	4669      	mov	r1, sp
c0de7866:	f7ff fec7 	bl	c0de75f8 <SVC_cx_call>
c0de786a:	bd8c      	pop	{r2, r3, r7, pc}
c0de786c:	0200012f 	.word	0x0200012f

c0de7870 <os_perso_derive_node_with_seed_key>:
c0de7870:	b510      	push	{r4, lr}
c0de7872:	b088      	sub	sp, #32
c0de7874:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7876:	9407      	str	r4, [sp, #28]
c0de7878:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de787a:	9406      	str	r4, [sp, #24]
c0de787c:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de787e:	9405      	str	r4, [sp, #20]
c0de7880:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7882:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7886:	4803      	ldr	r0, [pc, #12]	@ (c0de7894 <os_perso_derive_node_with_seed_key+0x24>)
c0de7888:	4669      	mov	r1, sp
c0de788a:	f7ff fead 	bl	c0de75e8 <SVC_Call>
c0de788e:	b008      	add	sp, #32
c0de7890:	bd10      	pop	{r4, pc}
c0de7892:	bf00      	nop
c0de7894:	080000a6 	.word	0x080000a6

c0de7898 <os_pki_load_certificate>:
c0de7898:	b510      	push	{r4, lr}
c0de789a:	b086      	sub	sp, #24
c0de789c:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de789e:	9405      	str	r4, [sp, #20]
c0de78a0:	9c08      	ldr	r4, [sp, #32]
c0de78a2:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de78a6:	4803      	ldr	r0, [pc, #12]	@ (c0de78b4 <os_pki_load_certificate+0x1c>)
c0de78a8:	4669      	mov	r1, sp
c0de78aa:	f7ff fe9d 	bl	c0de75e8 <SVC_Call>
c0de78ae:	b006      	add	sp, #24
c0de78b0:	bd10      	pop	{r4, pc}
c0de78b2:	bf00      	nop
c0de78b4:	060000aa 	.word	0x060000aa

c0de78b8 <os_perso_is_pin_set>:
c0de78b8:	b5e0      	push	{r5, r6, r7, lr}
c0de78ba:	2000      	movs	r0, #0
c0de78bc:	4669      	mov	r1, sp
c0de78be:	9001      	str	r0, [sp, #4]
c0de78c0:	209e      	movs	r0, #158	@ 0x9e
c0de78c2:	f7ff fe91 	bl	c0de75e8 <SVC_Call>
c0de78c6:	b2c0      	uxtb	r0, r0
c0de78c8:	bd8c      	pop	{r2, r3, r7, pc}

c0de78ca <os_global_pin_is_validated>:
c0de78ca:	b5e0      	push	{r5, r6, r7, lr}
c0de78cc:	2000      	movs	r0, #0
c0de78ce:	4669      	mov	r1, sp
c0de78d0:	9001      	str	r0, [sp, #4]
c0de78d2:	20a0      	movs	r0, #160	@ 0xa0
c0de78d4:	f7ff fe88 	bl	c0de75e8 <SVC_Call>
c0de78d8:	b2c0      	uxtb	r0, r0
c0de78da:	bd8c      	pop	{r2, r3, r7, pc}

c0de78dc <os_ux>:
c0de78dc:	b5e0      	push	{r5, r6, r7, lr}
c0de78de:	f000 f877 	bl	c0de79d0 <OUTLINED_FUNCTION_0>
c0de78e2:	4802      	ldr	r0, [pc, #8]	@ (c0de78ec <os_ux+0x10>)
c0de78e4:	4669      	mov	r1, sp
c0de78e6:	f7ff fe7f 	bl	c0de75e8 <SVC_Call>
c0de78ea:	bd8c      	pop	{r2, r3, r7, pc}
c0de78ec:	01000064 	.word	0x01000064

c0de78f0 <os_lib_end>:
c0de78f0:	b082      	sub	sp, #8
c0de78f2:	2000      	movs	r0, #0
c0de78f4:	4669      	mov	r1, sp
c0de78f6:	9001      	str	r0, [sp, #4]
c0de78f8:	2068      	movs	r0, #104	@ 0x68
c0de78fa:	f7ff fe75 	bl	c0de75e8 <SVC_Call>
c0de78fe:	deff      	udf	#255	@ 0xff

c0de7900 <os_flags>:
c0de7900:	b5e0      	push	{r5, r6, r7, lr}
c0de7902:	2000      	movs	r0, #0
c0de7904:	4669      	mov	r1, sp
c0de7906:	9001      	str	r0, [sp, #4]
c0de7908:	206a      	movs	r0, #106	@ 0x6a
c0de790a:	f7ff fe6d 	bl	c0de75e8 <SVC_Call>
c0de790e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7910 <os_registry_get_current_app_tag>:
c0de7910:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7912:	ab01      	add	r3, sp, #4
c0de7914:	c307      	stmia	r3!, {r0, r1, r2}
c0de7916:	4803      	ldr	r0, [pc, #12]	@ (c0de7924 <os_registry_get_current_app_tag+0x14>)
c0de7918:	a901      	add	r1, sp, #4
c0de791a:	f7ff fe65 	bl	c0de75e8 <SVC_Call>
c0de791e:	b004      	add	sp, #16
c0de7920:	bd80      	pop	{r7, pc}
c0de7922:	bf00      	nop
c0de7924:	03000074 	.word	0x03000074

c0de7928 <os_sched_exit>:
c0de7928:	b082      	sub	sp, #8
c0de792a:	f000 f851 	bl	c0de79d0 <OUTLINED_FUNCTION_0>
c0de792e:	4802      	ldr	r0, [pc, #8]	@ (c0de7938 <os_sched_exit+0x10>)
c0de7930:	4669      	mov	r1, sp
c0de7932:	f7ff fe59 	bl	c0de75e8 <SVC_Call>
c0de7936:	deff      	udf	#255	@ 0xff
c0de7938:	0100009a 	.word	0x0100009a

c0de793c <os_io_init>:
c0de793c:	b5e0      	push	{r5, r6, r7, lr}
c0de793e:	9001      	str	r0, [sp, #4]
c0de7940:	4802      	ldr	r0, [pc, #8]	@ (c0de794c <os_io_init+0x10>)
c0de7942:	a901      	add	r1, sp, #4
c0de7944:	f7ff fe50 	bl	c0de75e8 <SVC_Call>
c0de7948:	bd8c      	pop	{r2, r3, r7, pc}
c0de794a:	bf00      	nop
c0de794c:	01000084 	.word	0x01000084

c0de7950 <os_io_start>:
c0de7950:	b5e0      	push	{r5, r6, r7, lr}
c0de7952:	2000      	movs	r0, #0
c0de7954:	4669      	mov	r1, sp
c0de7956:	9001      	str	r0, [sp, #4]
c0de7958:	4801      	ldr	r0, [pc, #4]	@ (c0de7960 <os_io_start+0x10>)
c0de795a:	f7ff fe45 	bl	c0de75e8 <SVC_Call>
c0de795e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7960:	01000085 	.word	0x01000085

c0de7964 <os_io_tx_cmd>:
c0de7964:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7966:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de796a:	4803      	ldr	r0, [pc, #12]	@ (c0de7978 <os_io_tx_cmd+0x14>)
c0de796c:	4669      	mov	r1, sp
c0de796e:	f7ff fe3b 	bl	c0de75e8 <SVC_Call>
c0de7972:	b004      	add	sp, #16
c0de7974:	bd80      	pop	{r7, pc}
c0de7976:	bf00      	nop
c0de7978:	04000088 	.word	0x04000088

c0de797c <os_io_rx_evt>:
c0de797c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de797e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7982:	4803      	ldr	r0, [pc, #12]	@ (c0de7990 <os_io_rx_evt+0x14>)
c0de7984:	4669      	mov	r1, sp
c0de7986:	f7ff fe2f 	bl	c0de75e8 <SVC_Call>
c0de798a:	b004      	add	sp, #16
c0de798c:	bd80      	pop	{r7, pc}
c0de798e:	bf00      	nop
c0de7990:	03000089 	.word	0x03000089

c0de7994 <try_context_get>:
c0de7994:	b5e0      	push	{r5, r6, r7, lr}
c0de7996:	2000      	movs	r0, #0
c0de7998:	4669      	mov	r1, sp
c0de799a:	9001      	str	r0, [sp, #4]
c0de799c:	2087      	movs	r0, #135	@ 0x87
c0de799e:	f7ff fe23 	bl	c0de75e8 <SVC_Call>
c0de79a2:	bd8c      	pop	{r2, r3, r7, pc}

c0de79a4 <try_context_set>:
c0de79a4:	b5e0      	push	{r5, r6, r7, lr}
c0de79a6:	f000 f813 	bl	c0de79d0 <OUTLINED_FUNCTION_0>
c0de79aa:	4802      	ldr	r0, [pc, #8]	@ (c0de79b4 <try_context_set+0x10>)
c0de79ac:	4669      	mov	r1, sp
c0de79ae:	f7ff fe1b 	bl	c0de75e8 <SVC_Call>
c0de79b2:	bd8c      	pop	{r2, r3, r7, pc}
c0de79b4:	0100010b 	.word	0x0100010b

c0de79b8 <os_sched_last_status>:
c0de79b8:	b5e0      	push	{r5, r6, r7, lr}
c0de79ba:	f000 f809 	bl	c0de79d0 <OUTLINED_FUNCTION_0>
c0de79be:	4803      	ldr	r0, [pc, #12]	@ (c0de79cc <os_sched_last_status+0x14>)
c0de79c0:	4669      	mov	r1, sp
c0de79c2:	f7ff fe11 	bl	c0de75e8 <SVC_Call>
c0de79c6:	b2c0      	uxtb	r0, r0
c0de79c8:	bd8c      	pop	{r2, r3, r7, pc}
c0de79ca:	bf00      	nop
c0de79cc:	0100009c 	.word	0x0100009c

c0de79d0 <OUTLINED_FUNCTION_0>:
c0de79d0:	2100      	movs	r1, #0
c0de79d2:	e9cd 0100 	strd	r0, r1, [sp]
c0de79d6:	4770      	bx	lr

c0de79d8 <__udivmoddi4>:
c0de79d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de79dc:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de79e0:	4604      	mov	r4, r0
c0de79e2:	b179      	cbz	r1, c0de7a04 <__udivmoddi4+0x2c>
c0de79e4:	b1ba      	cbz	r2, c0de7a16 <__udivmoddi4+0x3e>
c0de79e6:	b35b      	cbz	r3, c0de7a40 <__udivmoddi4+0x68>
c0de79e8:	fab1 f581 	clz	r5, r1
c0de79ec:	fab3 f683 	clz	r6, r3
c0de79f0:	1b75      	subs	r5, r6, r5
c0de79f2:	2d20      	cmp	r5, #32
c0de79f4:	d34a      	bcc.n	c0de7a8c <__udivmoddi4+0xb4>
c0de79f6:	f1bc 0f00 	cmp.w	ip, #0
c0de79fa:	bf18      	it	ne
c0de79fc:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7a00:	2400      	movs	r4, #0
c0de7a02:	e066      	b.n	c0de7ad2 <__udivmoddi4+0xfa>
c0de7a04:	b3cb      	cbz	r3, c0de7a7a <__udivmoddi4+0xa2>
c0de7a06:	2100      	movs	r1, #0
c0de7a08:	f1bc 0f00 	cmp.w	ip, #0
c0de7a0c:	bf18      	it	ne
c0de7a0e:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7a12:	2400      	movs	r4, #0
c0de7a14:	e0a6      	b.n	c0de7b64 <__udivmoddi4+0x18c>
c0de7a16:	2b00      	cmp	r3, #0
c0de7a18:	d03e      	beq.n	c0de7a98 <__udivmoddi4+0xc0>
c0de7a1a:	2800      	cmp	r0, #0
c0de7a1c:	d04f      	beq.n	c0de7abe <__udivmoddi4+0xe6>
c0de7a1e:	1e5d      	subs	r5, r3, #1
c0de7a20:	422b      	tst	r3, r5
c0de7a22:	d158      	bne.n	c0de7ad6 <__udivmoddi4+0xfe>
c0de7a24:	f1bc 0f00 	cmp.w	ip, #0
c0de7a28:	bf1c      	itt	ne
c0de7a2a:	ea05 0001 	andne.w	r0, r5, r1
c0de7a2e:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7a32:	fa93 f0a3 	rbit	r0, r3
c0de7a36:	fab0 f080 	clz	r0, r0
c0de7a3a:	fa21 f400 	lsr.w	r4, r1, r0
c0de7a3e:	e048      	b.n	c0de7ad2 <__udivmoddi4+0xfa>
c0de7a40:	1e55      	subs	r5, r2, #1
c0de7a42:	422a      	tst	r2, r5
c0de7a44:	d129      	bne.n	c0de7a9a <__udivmoddi4+0xc2>
c0de7a46:	f1bc 0f00 	cmp.w	ip, #0
c0de7a4a:	bf1e      	ittt	ne
c0de7a4c:	2300      	movne	r3, #0
c0de7a4e:	4005      	andne	r5, r0
c0de7a50:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7a54:	2a01      	cmp	r2, #1
c0de7a56:	f000 8085 	beq.w	c0de7b64 <__udivmoddi4+0x18c>
c0de7a5a:	fa92 f2a2 	rbit	r2, r2
c0de7a5e:	004c      	lsls	r4, r1, #1
c0de7a60:	fab2 f282 	clz	r2, r2
c0de7a64:	f002 031f 	and.w	r3, r2, #31
c0de7a68:	40d1      	lsrs	r1, r2
c0de7a6a:	40d8      	lsrs	r0, r3
c0de7a6c:	231f      	movs	r3, #31
c0de7a6e:	4393      	bics	r3, r2
c0de7a70:	fa04 f303 	lsl.w	r3, r4, r3
c0de7a74:	ea43 0400 	orr.w	r4, r3, r0
c0de7a78:	e074      	b.n	c0de7b64 <__udivmoddi4+0x18c>
c0de7a7a:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7a7e:	f1bc 0f00 	cmp.w	ip, #0
c0de7a82:	d026      	beq.n	c0de7ad2 <__udivmoddi4+0xfa>
c0de7a84:	fb04 0012 	mls	r0, r4, r2, r0
c0de7a88:	2100      	movs	r1, #0
c0de7a8a:	e020      	b.n	c0de7ace <__udivmoddi4+0xf6>
c0de7a8c:	f105 0e01 	add.w	lr, r5, #1
c0de7a90:	f1be 0f20 	cmp.w	lr, #32
c0de7a94:	d00b      	beq.n	c0de7aae <__udivmoddi4+0xd6>
c0de7a96:	e028      	b.n	c0de7aea <__udivmoddi4+0x112>
c0de7a98:	e064      	b.n	c0de7b64 <__udivmoddi4+0x18c>
c0de7a9a:	fab1 f481 	clz	r4, r1
c0de7a9e:	fab2 f582 	clz	r5, r2
c0de7aa2:	1b2c      	subs	r4, r5, r4
c0de7aa4:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7aa8:	f1be 0f20 	cmp.w	lr, #32
c0de7aac:	d15d      	bne.n	c0de7b6a <__udivmoddi4+0x192>
c0de7aae:	f04f 0e20 	mov.w	lr, #32
c0de7ab2:	f04f 0a00 	mov.w	sl, #0
c0de7ab6:	f04f 0b00 	mov.w	fp, #0
c0de7aba:	460e      	mov	r6, r1
c0de7abc:	e021      	b.n	c0de7b02 <__udivmoddi4+0x12a>
c0de7abe:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7ac2:	f1bc 0f00 	cmp.w	ip, #0
c0de7ac6:	d004      	beq.n	c0de7ad2 <__udivmoddi4+0xfa>
c0de7ac8:	2000      	movs	r0, #0
c0de7aca:	fb04 1113 	mls	r1, r4, r3, r1
c0de7ace:	e9cc 0100 	strd	r0, r1, [ip]
c0de7ad2:	2100      	movs	r1, #0
c0de7ad4:	e046      	b.n	c0de7b64 <__udivmoddi4+0x18c>
c0de7ad6:	fab1 f581 	clz	r5, r1
c0de7ada:	fab3 f683 	clz	r6, r3
c0de7ade:	1b75      	subs	r5, r6, r5
c0de7ae0:	2d1f      	cmp	r5, #31
c0de7ae2:	f4bf af88 	bcs.w	c0de79f6 <__udivmoddi4+0x1e>
c0de7ae6:	f105 0e01 	add.w	lr, r5, #1
c0de7aea:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7aee:	f1c5 051f 	rsb	r5, r5, #31
c0de7af2:	fa01 f605 	lsl.w	r6, r1, r5
c0de7af6:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7afa:	40a8      	lsls	r0, r5
c0de7afc:	f04f 0a00 	mov.w	sl, #0
c0de7b00:	4326      	orrs	r6, r4
c0de7b02:	f04f 0800 	mov.w	r8, #0
c0de7b06:	f1be 0f00 	cmp.w	lr, #0
c0de7b0a:	d01c      	beq.n	c0de7b46 <__udivmoddi4+0x16e>
c0de7b0c:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7b10:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7b14:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7b18:	0076      	lsls	r6, r6, #1
c0de7b1a:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7b1e:	1aae      	subs	r6, r5, r2
c0de7b20:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7b24:	43cf      	mvns	r7, r1
c0de7b26:	43ec      	mvns	r4, r5
c0de7b28:	18a4      	adds	r4, r4, r2
c0de7b2a:	eb57 0403 	adcs.w	r4, r7, r3
c0de7b2e:	bf5c      	itt	pl
c0de7b30:	468b      	movpl	fp, r1
c0de7b32:	462e      	movpl	r6, r5
c0de7b34:	0040      	lsls	r0, r0, #1
c0de7b36:	0fe1      	lsrs	r1, r4, #31
c0de7b38:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7b3c:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7b40:	46a2      	mov	sl, r4
c0de7b42:	4688      	mov	r8, r1
c0de7b44:	e7df      	b.n	c0de7b06 <__udivmoddi4+0x12e>
c0de7b46:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7b4a:	f1bc 0f00 	cmp.w	ip, #0
c0de7b4e:	bf18      	it	ne
c0de7b50:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7b54:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7b58:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7b5c:	f020 0001 	bic.w	r0, r0, #1
c0de7b60:	ea40 0408 	orr.w	r4, r0, r8
c0de7b64:	4620      	mov	r0, r4
c0de7b66:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7b6a:	f1be 0f1f 	cmp.w	lr, #31
c0de7b6e:	d804      	bhi.n	c0de7b7a <__udivmoddi4+0x1a2>
c0de7b70:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7b74:	f1ce 0520 	rsb	r5, lr, #32
c0de7b78:	e7bb      	b.n	c0de7af2 <__udivmoddi4+0x11a>
c0de7b7a:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7b7e:	f1ae 0420 	sub.w	r4, lr, #32
c0de7b82:	f04f 0b00 	mov.w	fp, #0
c0de7b86:	fa20 f504 	lsr.w	r5, r0, r4
c0de7b8a:	fa01 f607 	lsl.w	r6, r1, r7
c0de7b8e:	fa00 fa07 	lsl.w	sl, r0, r7
c0de7b92:	ea46 0805 	orr.w	r8, r6, r5
c0de7b96:	fa21 f604 	lsr.w	r6, r1, r4
c0de7b9a:	4640      	mov	r0, r8
c0de7b9c:	e7b1      	b.n	c0de7b02 <__udivmoddi4+0x12a>
	...

c0de7ba0 <__aeabi_memcpy>:
c0de7ba0:	f000 b81c 	b.w	c0de7bdc <memcpy>

c0de7ba4 <__aeabi_memmove>:
c0de7ba4:	f000 b828 	b.w	c0de7bf8 <memmove>

c0de7ba8 <__aeabi_memset>:
c0de7ba8:	460b      	mov	r3, r1
c0de7baa:	4611      	mov	r1, r2
c0de7bac:	461a      	mov	r2, r3
c0de7bae:	f000 b83d 	b.w	c0de7c2c <memset>
c0de7bb2:	bf00      	nop

c0de7bb4 <__aeabi_memclr>:
c0de7bb4:	460a      	mov	r2, r1
c0de7bb6:	2100      	movs	r1, #0
c0de7bb8:	f000 b838 	b.w	c0de7c2c <memset>

c0de7bbc <__aeabi_uldivmod>:
c0de7bbc:	b540      	push	{r6, lr}
c0de7bbe:	b084      	sub	sp, #16
c0de7bc0:	ae02      	add	r6, sp, #8
c0de7bc2:	9600      	str	r6, [sp, #0]
c0de7bc4:	f7ff ff08 	bl	c0de79d8 <__udivmoddi4>
c0de7bc8:	9a02      	ldr	r2, [sp, #8]
c0de7bca:	9b03      	ldr	r3, [sp, #12]
c0de7bcc:	b004      	add	sp, #16
c0de7bce:	bd40      	pop	{r6, pc}

c0de7bd0 <explicit_bzero>:
c0de7bd0:	f000 b800 	b.w	c0de7bd4 <bzero>

c0de7bd4 <bzero>:
c0de7bd4:	460a      	mov	r2, r1
c0de7bd6:	2100      	movs	r1, #0
c0de7bd8:	f000 b828 	b.w	c0de7c2c <memset>

c0de7bdc <memcpy>:
c0de7bdc:	440a      	add	r2, r1
c0de7bde:	4291      	cmp	r1, r2
c0de7be0:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7be4:	d100      	bne.n	c0de7be8 <memcpy+0xc>
c0de7be6:	4770      	bx	lr
c0de7be8:	b510      	push	{r4, lr}
c0de7bea:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7bee:	4291      	cmp	r1, r2
c0de7bf0:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7bf4:	d1f9      	bne.n	c0de7bea <memcpy+0xe>
c0de7bf6:	bd10      	pop	{r4, pc}

c0de7bf8 <memmove>:
c0de7bf8:	4288      	cmp	r0, r1
c0de7bfa:	b510      	push	{r4, lr}
c0de7bfc:	eb01 0402 	add.w	r4, r1, r2
c0de7c00:	d902      	bls.n	c0de7c08 <memmove+0x10>
c0de7c02:	4284      	cmp	r4, r0
c0de7c04:	4623      	mov	r3, r4
c0de7c06:	d807      	bhi.n	c0de7c18 <memmove+0x20>
c0de7c08:	1e43      	subs	r3, r0, #1
c0de7c0a:	42a1      	cmp	r1, r4
c0de7c0c:	d008      	beq.n	c0de7c20 <memmove+0x28>
c0de7c0e:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7c12:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7c16:	e7f8      	b.n	c0de7c0a <memmove+0x12>
c0de7c18:	4601      	mov	r1, r0
c0de7c1a:	4402      	add	r2, r0
c0de7c1c:	428a      	cmp	r2, r1
c0de7c1e:	d100      	bne.n	c0de7c22 <memmove+0x2a>
c0de7c20:	bd10      	pop	{r4, pc}
c0de7c22:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7c26:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7c2a:	e7f7      	b.n	c0de7c1c <memmove+0x24>

c0de7c2c <memset>:
c0de7c2c:	4603      	mov	r3, r0
c0de7c2e:	4402      	add	r2, r0
c0de7c30:	4293      	cmp	r3, r2
c0de7c32:	d100      	bne.n	c0de7c36 <memset+0xa>
c0de7c34:	4770      	bx	lr
c0de7c36:	f803 1b01 	strb.w	r1, [r3], #1
c0de7c3a:	e7f9      	b.n	c0de7c30 <memset+0x4>

c0de7c3c <setjmp>:
c0de7c3c:	46ec      	mov	ip, sp
c0de7c3e:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7c42:	f04f 0000 	mov.w	r0, #0
c0de7c46:	4770      	bx	lr

c0de7c48 <longjmp>:
c0de7c48:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7c4c:	46e5      	mov	sp, ip
c0de7c4e:	0008      	movs	r0, r1
c0de7c50:	bf08      	it	eq
c0de7c52:	2001      	moveq	r0, #1
c0de7c54:	4770      	bx	lr
c0de7c56:	bf00      	nop

c0de7c58 <strcmp>:
c0de7c58:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7c5c:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7c60:	2a01      	cmp	r2, #1
c0de7c62:	bf28      	it	cs
c0de7c64:	429a      	cmpcs	r2, r3
c0de7c66:	d0f7      	beq.n	c0de7c58 <strcmp>
c0de7c68:	1ad0      	subs	r0, r2, r3
c0de7c6a:	4770      	bx	lr

c0de7c6c <strlen>:
c0de7c6c:	4603      	mov	r3, r0
c0de7c6e:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7c72:	2a00      	cmp	r2, #0
c0de7c74:	d1fb      	bne.n	c0de7c6e <strlen+0x2>
c0de7c76:	1a18      	subs	r0, r3, r0
c0de7c78:	3801      	subs	r0, #1
c0de7c7a:	4770      	bx	lr

c0de7c7c <strncmp>:
c0de7c7c:	b510      	push	{r4, lr}
c0de7c7e:	b16a      	cbz	r2, c0de7c9c <strncmp+0x20>
c0de7c80:	3901      	subs	r1, #1
c0de7c82:	1884      	adds	r4, r0, r2
c0de7c84:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7c88:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7c8c:	429a      	cmp	r2, r3
c0de7c8e:	d103      	bne.n	c0de7c98 <strncmp+0x1c>
c0de7c90:	42a0      	cmp	r0, r4
c0de7c92:	d001      	beq.n	c0de7c98 <strncmp+0x1c>
c0de7c94:	2a00      	cmp	r2, #0
c0de7c96:	d1f5      	bne.n	c0de7c84 <strncmp+0x8>
c0de7c98:	1ad0      	subs	r0, r2, r3
c0de7c9a:	bd10      	pop	{r4, pc}
c0de7c9c:	4610      	mov	r0, r2
c0de7c9e:	e7fc      	b.n	c0de7c9a <strncmp+0x1e>

c0de7ca0 <strncpy>:
c0de7ca0:	4603      	mov	r3, r0
c0de7ca2:	b510      	push	{r4, lr}
c0de7ca4:	3901      	subs	r1, #1
c0de7ca6:	b132      	cbz	r2, c0de7cb6 <strncpy+0x16>
c0de7ca8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7cac:	3a01      	subs	r2, #1
c0de7cae:	f803 4b01 	strb.w	r4, [r3], #1
c0de7cb2:	2c00      	cmp	r4, #0
c0de7cb4:	d1f7      	bne.n	c0de7ca6 <strncpy+0x6>
c0de7cb6:	2100      	movs	r1, #0
c0de7cb8:	441a      	add	r2, r3
c0de7cba:	4293      	cmp	r3, r2
c0de7cbc:	d100      	bne.n	c0de7cc0 <strncpy+0x20>
c0de7cbe:	bd10      	pop	{r4, pc}
c0de7cc0:	f803 1b01 	strb.w	r1, [r3], #1
c0de7cc4:	e7f9      	b.n	c0de7cba <strncpy+0x1a>

c0de7cc6 <C_home_boilerplate_14px_bitmap>:
c0de7cc6:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de7cd6:	fc7b df0f 7ffe 7ff8                          {........

c0de7cdf <C_home_boilerplate_14px>:
c0de7cdf:	000e 000e 0000 7cc6 c0de                    .......|..

c0de7ce9 <C_Information_circle_14px_bitmap>:
c0de7ce9:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de7cf9:	e7ff 8fff 1ffc 1ee0                          .........

c0de7d02 <C_Information_circle_14px>:
c0de7d02:	000e 000e 0000 7ce9 c0de                    .......|..

c0de7d0c <C_Quit_14px_bitmap>:
c0de7d0c:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7d1c:	6680 9801 7f06 fff9                          .f.......

c0de7d25 <C_Quit_14px>:
c0de7d25:	000e 000e 0000 7d0c c0de                    .......}..

c0de7d2f <C_Switch_Off_8px_bitmap>:
c0de7d2f:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de7d3b <C_Switch_Off_8px>:
c0de7d3b:	000c 0008 0000 7d2f c0de                    ....../}..

c0de7d45 <C_Switch_On_8px_bitmap>:
c0de7d45:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7d51 <C_Switch_On_8px>:
c0de7d51:	000c 0008 0000 7d45 c0de                    ......E}..

c0de7d5b <C_icon_back_x_bitmap>:
c0de7d5b:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7d6b:	003f 0078 00c0 0000                          ?.x......

c0de7d74 <C_icon_back_x>:
c0de7d74:	000e 000e 0000 7d5b c0de                    ......[}..

c0de7d7e <C_icon_coggle_bitmap>:
c0de7d7e:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de7d8e:	807f 00b4 00c0 0000                          .........

c0de7d97 <C_icon_coggle>:
c0de7d97:	000e 000e 0000 7d7e c0de                    ......~}..

c0de7da1 <C_icon_crossmark_bitmap>:
c0de7da1:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7db1:	8373 1c87 600e 0018                          s....`...

c0de7dba <C_icon_crossmark>:
c0de7dba:	000e 000e 0000 7da1 c0de                    .......}..

c0de7dc4 <C_icon_down_bitmap>:
c0de7dc4:	2184 8024                                   .!$.

c0de7dc8 <C_icon_down>:
c0de7dc8:	0007 0004 0000 7dc4 c0de                    .......}..

c0de7dd2 <C_icon_left_bitmap>:
c0de7dd2:	8882 80a0                                   ....

c0de7dd6 <C_icon_left>:
c0de7dd6:	0004 0007 0000 7dd2 c0de                    .......}..

c0de7de0 <C_icon_processing_bitmap>:
c0de7de0:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7df0:	8361 04b7 03c8 0000                          a........

c0de7df9 <C_icon_processing>:
c0de7df9:	000e 000e 0000 7de0 c0de                    .......}..

c0de7e03 <C_icon_right_bitmap>:
c0de7e03:	5110 1014                                   .Q..

c0de7e07 <C_icon_right>:
c0de7e07:	0004 0007 0000 7e03 c0de                    .......~..

c0de7e11 <C_icon_up_bitmap>:
c0de7e11:	4812 1042                                   .HB.

c0de7e15 <C_icon_up>:
c0de7e15:	0007 0004 0000 7e11 c0de                    .......~..

c0de7e1f <C_icon_validate_14_bitmap>:
c0de7e1f:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7e2f:	a3b3 a3a3 f0b2                               ......P

c0de7e36 <C_icon_validate_14>:
c0de7e36:	000e 000e 0100 7e1f c0de                    .......~..

c0de7e40 <C_icon_warning_bitmap>:
c0de7e40:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7e50:	e01f 801f 001e 0018                          .........

c0de7e59 <C_icon_warning>:
c0de7e59:	000e 000e 0000 7e40 c0de                    ......@~..

c0de7e63 <C_app_boilerplate_14px_bitmap>:
c0de7e63:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7e73:	0384 00f0 0000 0000                          .........

c0de7e7c <C_app_boilerplate_14px>:
c0de7e7c:	000e 000e 0000 7e63 c0de 7544 6d6d 2079     ......c~..Dummy 
c0de7e8c:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de7e9c:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de7eac:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de7ebc:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de7ecc:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de7edc:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de7eec:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de7efc:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de7f0c:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de7f1c:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de7f2c:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de7f3c:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de7f4c:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de7f5c:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de7f6c:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de7f7c:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de7f8c:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de7f9c:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de7fac:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de7fbc:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de7fcc:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de7fdc:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de7fec:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de7ffc:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de800c:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de801c:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de802c:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de803c:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de804c:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de805c:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de806c:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de807c:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de808c:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de809c:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de80ac:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de80bc:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de80cc:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de80dc:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de80ec:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de80fc:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de810c:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de811c:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de812c:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de813c:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de814c:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de815c:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de816c:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de817c:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de818c:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de819c:	6173 7463 6f69 0a6e 6f74 2820 6170 7472     saction.to (part
c0de81ac:	6169 296c 7320 6769 006e 4b5a 4f4e 4858     ial) sign.ZKNOXH
c0de81bc:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0de81cc:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de81dc:	0000 0000 6501 d5c4 445f b317 e968 545a     .....e.._D..h.ZT
c0de81ec:	1a00 3230 b03c e84f 3e34 d45a 4584 6323     ..02<.O.4>Z..E#c
c0de81fc:	98a5 59d0 ed73 53a7 9d29 487d 3933 08d8     ...Ys..S).}H39..
c0de820c:	a109 05d8 bd53 02a4 feff fe5b ffff ffff     ....S.....[.....
c0de821c:	0000 0100 ce05 c698 051b 7ff4 eae2 a5e9     ................
c0de822c:	bd42 f699 e7b2 4682 1623 b540 9545 bffe     B......F#.@.E...
c0de823c:	1ed5 53b8 0001 0000 0000 0000 0002 0000     ...S............
c0de824c:	0000 0000 0003 0000 0000 0000 0004 0000     ................
c0de825c:	0000 0000 a005 91c0 8356 988b af28 123f     ........V...(.?.
c0de826c:	e167 e675 84e2 9dc7 6d1b d08a 0acd d9e0     g.u......m......
c0de827c:	9057 6e33 c61c 38ee 9c13 111c 2302 7a53     W.3n...8.....#Sz
c0de828c:	e78c 069d 587e 10cc c667 b7fb b3d8 b0a1     ....~X..g.......
c0de829c:	fc8d 088f 4d27 e8bc 51d1 9679 c09b 9fd4     ....'M...Qy.....
c0de82ac:	25a7 dfbd e59d e055 6aba 3c69 db6a fc52     .%....U..ji<j.R.
c0de82bc:	e79e 2ca8 fb1c d469 67ca 525f ce0c 0276     ...,..i..g_R..v.
c0de82cc:	6802 0076 8fff 0087 1974 7104 fd74 b506     .hv.....t..qt...
c0de82dc:	7628 e1e7 0c06 ce89 265c 0534 0a37 b608     (v......\&4.7...
c0de82ec:	30d0 0b2b 3eab b8ed 2039 0aee 7267 dc97     .0+..>..9 ..gr..
c0de82fc:	2139 f126 a570 4a89 4464 3854 15d0 32ac     9!&.p..JdDT8...2
c0de830c:	36ba 090f de2c ba44 1fb1 b7c2 b5d4 d2c0     .6..,.D.........
c0de831c:	2216 ce8c 820b 39b7 8de7 57da 5ae7 80c6     .".....9...W.Z..
c0de832c:	68ef f19d 8f15 eee3 09d8 6d5c d14b c7b2     .h........\mK...
c0de833c:	66c1 fdee d059 a598 2363 8445 5ad4 343e     .f..Y...c#E..Z>4
c0de834c:	4fe8 3cb0 3032 001a 5a54 68e9 17b3 5f44     .O.<20..TZ.h..D_
c0de835c:	c4d5 0165 0000 0000 0000 0000 0000 0000     ..e.............
	...
c0de837c:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de838c:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de839c:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de83ac:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de83bc:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de83cc:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de83dc:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de83fc:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de840c:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de841c:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de842c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de843c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de844c:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de845c:	2d87 8b7d                                   .-}.

c0de8460 <.L__const.handler_cmd_Poseidon.input>:
c0de8460:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8470:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8480:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de8490:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de84a0:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de84b0:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de84c0:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de84d0:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de84e0:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de84f0:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8500 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de851c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de852c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de853c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de854c:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de855c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de856c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de857c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de858c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de859c:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de85bc:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de85cc:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de85dc:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de85ec:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de85fc:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de860c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de861c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de862c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de863c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de865c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de866c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de867c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de868c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de869c:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de86ac:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de86bc:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de86cc:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de86dc:	9b44 9ffb                                   D...

c0de86e0 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de86fc:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de870c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de871c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de872c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de873c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de874c:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de875c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de876c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de877c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de879c:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de87ac:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de87bc:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de87cc:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de87dc:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de87ec:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de87fc:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de880c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de881c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de883c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de884c:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de885c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de886c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de887c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de888c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de889c:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de88ac:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de88bc:	8132 74b1                                   2..t

c0de88c0 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de88c0:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de88d0:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de88e0:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de88f0:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8900:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8910:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8920 <.L__const.handler_cmd_conciliation.commitmentlist_be>:
	...
c0de893c:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0de894c:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0de895c:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0de896c:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0de897c:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0de898c:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0de899c:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0de89ac:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0de89bc:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0de89dc:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0de89ec:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0de89fc:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0de8a0c:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0de8a1c:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0de8a2c:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0de8a3c:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0de8a4c:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0de8a5c:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0de8a7c:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0de8a8c:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0de8a9c:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0de8aac:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0de8abc:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0de8acc:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0de8adc:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0de8aec:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0de8afc:	b87c 6a30                                   |.0j

c0de8b00 <.L__const.handler_cmd_conciliation.groupkey_be>:
c0de8b00:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0de8b10:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0de8b20:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8b30:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0de8b40 <settingContents>:
c0de8b40:	0000 0000 8b5c c0de 0001 0000               ....\.......

c0de8b4c <infoList>:
c0de8b4c:	8b94 c0de 8b9c c0de 0000 0000 0002 0000     ................

c0de8b5c <contents>:
c0de8b5c:	0007 0000 035c da7a 0002 0000 0000 0000     ....\.z.........
	...
c0de8b90:	1b05 c0de                                   ....

c0de8b94 <INFO_TYPES>:
c0de8b94:	8036 c0de 7f8b c0de                         6.......

c0de8b9c <INFO_CONTENTS>:
c0de8b9c:	7eb5 c0de 8178 c0de                         .~..x...

c0de8ba4 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8bc4:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8bd4:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8be4 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8be4:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8bf4:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8c04:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8c14:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8c24:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8c34:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8c44:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8c54:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8c64:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8c74:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de8c84:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8c94:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8ca4:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8cb4:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8cc4:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8cd4:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8ce4:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de8cf4:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de8d04:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8d14:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8d24:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de8d34:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8d44:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8d54:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8d64:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8d74:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de8d84:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8d94:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de8da4:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de8db4:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de8dc4:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de8dd4:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de8de4:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de8df4:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de8e04:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8e14:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8e24:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de8e34:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8e44:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8e54:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8e64:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8e74:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8e84:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8e94:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8ea4:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8eb4:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8ec4:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8ed4:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8ee4:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8ef4:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8f04:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8f14:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8f24:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8f34:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8f44:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8f54:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8f64:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8f74:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8f84:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8f94:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8fa4:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8fb4:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8fc4:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8fd4:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8fe4:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8ff4:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de9004:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de9014:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de9024:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de9034:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de9044:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de9054:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de9064 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de9064:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de9074:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de9084 <blindSigningWarning>:
c0de9084:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de90b0 <g_pcHex>:
c0de90b0:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de90c0 <g_pcHex_cap>:
c0de90c0:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de90d0 <_etext>:
	...

c0de9200 <N_storage_real>:
	...

c0de9400 <install_parameters>:
c0de9400:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9410:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9420:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9430:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
