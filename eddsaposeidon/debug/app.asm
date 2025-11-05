
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 fe0d 	bl	c0de6c24 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fb99 	bl	c0de674c <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fb60 	bl	c0de66e0 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fb51 	bl	c0de66ca <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 faa9 	bl	c0de758c <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fd8b 	bl	c0de6b58 <assert_exit>
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
c0de0056:	f006 fd3f 	bl	c0de6ad8 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fa86 	bl	c0de7578 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 fd6d 	bl	c0de6b58 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d143      	bne.n	c0de010c <apdu_dispatcher+0x9a>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2815      	cmp	r0, #21
c0de0090:	d03f      	beq.n	c0de0112 <apdu_dispatcher+0xa0>
c0de0092:	2804      	cmp	r0, #4
c0de0094:	d047      	beq.n	c0de0126 <apdu_dispatcher+0xb4>
c0de0096:	2805      	cmp	r0, #5
c0de0098:	d051      	beq.n	c0de013e <apdu_dispatcher+0xcc>
c0de009a:	2806      	cmp	r0, #6
c0de009c:	d065      	beq.n	c0de016a <apdu_dispatcher+0xf8>
c0de009e:	2807      	cmp	r0, #7
c0de00a0:	d071      	beq.n	c0de0186 <apdu_dispatcher+0x114>
c0de00a2:	2808      	cmp	r0, #8
c0de00a4:	d079      	beq.n	c0de019a <apdu_dispatcher+0x128>
c0de00a6:	2809      	cmp	r0, #9
c0de00a8:	f000 8080 	beq.w	c0de01ac <apdu_dispatcher+0x13a>
c0de00ac:	280a      	cmp	r0, #10
c0de00ae:	f000 8086 	beq.w	c0de01be <apdu_dispatcher+0x14c>
c0de00b2:	280b      	cmp	r0, #11
c0de00b4:	f000 808c 	beq.w	c0de01d0 <apdu_dispatcher+0x15e>
c0de00b8:	280c      	cmp	r0, #12
c0de00ba:	f000 8092 	beq.w	c0de01e2 <apdu_dispatcher+0x170>
c0de00be:	280d      	cmp	r0, #13
c0de00c0:	f000 8098 	beq.w	c0de01f4 <apdu_dispatcher+0x182>
c0de00c4:	280e      	cmp	r0, #14
c0de00c6:	f000 809e 	beq.w	c0de0206 <apdu_dispatcher+0x194>
c0de00ca:	280f      	cmp	r0, #15
c0de00cc:	f000 80a4 	beq.w	c0de0218 <apdu_dispatcher+0x1a6>
c0de00d0:	2810      	cmp	r0, #16
c0de00d2:	f000 80aa 	beq.w	c0de022a <apdu_dispatcher+0x1b8>
c0de00d6:	2811      	cmp	r0, #17
c0de00d8:	f000 80af 	beq.w	c0de023a <apdu_dispatcher+0x1c8>
c0de00dc:	2812      	cmp	r0, #18
c0de00de:	f000 80b4 	beq.w	c0de024a <apdu_dispatcher+0x1d8>
c0de00e2:	2813      	cmp	r0, #19
c0de00e4:	f000 80b9 	beq.w	c0de025a <apdu_dispatcher+0x1e8>
c0de00e8:	2814      	cmp	r0, #20
c0de00ea:	f000 80be 	beq.w	c0de026a <apdu_dispatcher+0x1f8>
c0de00ee:	2803      	cmp	r0, #3
c0de00f0:	f040 80c3 	bne.w	c0de027a <apdu_dispatcher+0x208>
c0de00f4:	78a0      	ldrb	r0, [r4, #2]
c0de00f6:	2800      	cmp	r0, #0
c0de00f8:	f040 80d4 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de00fc:	78e0      	ldrb	r0, [r4, #3]
c0de00fe:	2800      	cmp	r0, #0
c0de0100:	f040 80d0 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0104:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0108:	f000 b98f 	b.w	c0de042a <handler_get_version>
c0de010c:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0110:	e0ca      	b.n	c0de02a8 <apdu_dispatcher+0x236>
c0de0112:	68a0      	ldr	r0, [r4, #8]
c0de0114:	2800      	cmp	r0, #0
c0de0116:	f000 80c2 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de011a:	f000 f8d1 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de011e:	a801      	add	r0, sp, #4
c0de0120:	f000 ffce 	bl	c0de10c0 <handler_cmd_BindingFactors>
c0de0124:	e0b9      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de0126:	78a0      	ldrb	r0, [r4, #2]
c0de0128:	2800      	cmp	r0, #0
c0de012a:	f040 80bb 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de012e:	78e0      	ldrb	r0, [r4, #3]
c0de0130:	2800      	cmp	r0, #0
c0de0132:	f040 80b7 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0136:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de013a:	f000 b90f 	b.w	c0de035c <handler_get_app_name>
c0de013e:	78a1      	ldrb	r1, [r4, #2]
c0de0140:	2901      	cmp	r1, #1
c0de0142:	f200 80af 	bhi.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0146:	78e0      	ldrb	r0, [r4, #3]
c0de0148:	2800      	cmp	r0, #0
c0de014a:	f040 80ab 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de014e:	68a0      	ldr	r0, [r4, #8]
c0de0150:	2800      	cmp	r0, #0
c0de0152:	f000 80a4 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de0156:	9001      	str	r0, [sp, #4]
c0de0158:	7920      	ldrb	r0, [r4, #4]
c0de015a:	2900      	cmp	r1, #0
c0de015c:	9002      	str	r0, [sp, #8]
c0de015e:	bf18      	it	ne
c0de0160:	2101      	movne	r1, #1
c0de0162:	a801      	add	r0, sp, #4
c0de0164:	f000 f90e 	bl	c0de0384 <handler_get_public_key>
c0de0168:	e097      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de016a:	78a1      	ldrb	r1, [r4, #2]
c0de016c:	2900      	cmp	r1, #0
c0de016e:	f000 8087 	beq.w	c0de0280 <apdu_dispatcher+0x20e>
c0de0172:	2903      	cmp	r1, #3
c0de0174:	f200 8096 	bhi.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0178:	78e0      	ldrb	r0, [r4, #3]
c0de017a:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de017e:	2a80      	cmp	r2, #128	@ 0x80
c0de0180:	f000 8082 	beq.w	c0de0288 <apdu_dispatcher+0x216>
c0de0184:	e08e      	b.n	c0de02a4 <apdu_dispatcher+0x232>
c0de0186:	68a0      	ldr	r0, [r4, #8]
c0de0188:	2800      	cmp	r0, #0
c0de018a:	f000 8088 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de018e:	f000 f897 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0192:	a801      	add	r0, sp, #4
c0de0194:	f000 fa54 	bl	c0de0640 <handler_cmd_keccakH>
c0de0198:	e07f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de019a:	68a0      	ldr	r0, [r4, #8]
c0de019c:	2800      	cmp	r0, #0
c0de019e:	d07e      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01a0:	f000 f88e 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de01a4:	a801      	add	r0, sp, #4
c0de01a6:	f000 fa12 	bl	c0de05ce <handler_cmd_blake2b512>
c0de01aa:	e076      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01ac:	68a0      	ldr	r0, [r4, #8]
c0de01ae:	2800      	cmp	r0, #0
c0de01b0:	d075      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01b2:	f000 f885 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de01b6:	a801      	add	r0, sp, #4
c0de01b8:	f000 faaa 	bl	c0de0710 <handler_cmd_Poseidon>
c0de01bc:	e06d      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01be:	68a0      	ldr	r0, [r4, #8]
c0de01c0:	2800      	cmp	r0, #0
c0de01c2:	d06c      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01c4:	f000 f87c 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de01c8:	a801      	add	r0, sp, #4
c0de01ca:	f000 fc09 	bl	c0de09e0 <handler_cmd_tEddsaPoseidon>
c0de01ce:	e064      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01d0:	68a0      	ldr	r0, [r4, #8]
c0de01d2:	2800      	cmp	r0, #0
c0de01d4:	d063      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01d6:	f000 f873 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de01da:	a801      	add	r0, sp, #4
c0de01dc:	f000 fb64 	bl	c0de08a8 <handler_cmd_tEddsaPoseidon_Kpub>
c0de01e0:	e05b      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01e2:	68a0      	ldr	r0, [r4, #8]
c0de01e4:	2800      	cmp	r0, #0
c0de01e6:	d05a      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01e8:	f000 f86a 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de01ec:	a801      	add	r0, sp, #4
c0de01ee:	f000 fb9d 	bl	c0de092c <handler_cmd_tEddsaPoseidon_Sign>
c0de01f2:	e052      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01f4:	68a0      	ldr	r0, [r4, #8]
c0de01f6:	2800      	cmp	r0, #0
c0de01f8:	d051      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01fa:	f000 f861 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de01fe:	a801      	add	r0, sp, #4
c0de0200:	f000 fb0c 	bl	c0de081c <handler_cmd_Poseidon_ithRC>
c0de0204:	e049      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de0206:	68a0      	ldr	r0, [r4, #8]
c0de0208:	2800      	cmp	r0, #0
c0de020a:	d048      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de020c:	f000 f858 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0210:	a801      	add	r0, sp, #4
c0de0212:	f000 fc59 	bl	c0de0ac8 <handler_cmd_tEdwards>
c0de0216:	e040      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de0218:	68a0      	ldr	r0, [r4, #8]
c0de021a:	2800      	cmp	r0, #0
c0de021c:	d03f      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de021e:	f000 f84f 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0222:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0226:	f000 ba29 	b.w	c0de067c <handler_cmd_bolos_stretch>
c0de022a:	68a0      	ldr	r0, [r4, #8]
c0de022c:	b3b8      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de022e:	f000 f847 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0232:	a801      	add	r0, sp, #4
c0de0234:	f000 fcfe 	bl	c0de0c34 <handler_cmd_Interpolate>
c0de0238:	e02f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de023a:	68a0      	ldr	r0, [r4, #8]
c0de023c:	b378      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de023e:	f000 f83f 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0242:	a801      	add	r0, sp, #4
c0de0244:	f000 fdab 	bl	c0de0d9e <handler_cmd_Split>
c0de0248:	e027      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de024a:	68a0      	ldr	r0, [r4, #8]
c0de024c:	b338      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de024e:	f000 f837 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0252:	a801      	add	r0, sp, #4
c0de0254:	f000 fe6c 	bl	c0de0f30 <handler_cmd_frostH>
c0de0258:	e01f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de025a:	68a0      	ldr	r0, [r4, #8]
c0de025c:	b1f8      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de025e:	f000 f82f 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0262:	a801      	add	r0, sp, #4
c0de0264:	f000 feb4 	bl	c0de0fd0 <handler_cmd_encodeCommitment>
c0de0268:	e017      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de026a:	68a0      	ldr	r0, [r4, #8]
c0de026c:	b1b8      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de026e:	f000 f827 	bl	c0de02c0 <OUTLINED_FUNCTION_0>
c0de0272:	a801      	add	r0, sp, #4
c0de0274:	f000 fee2 	bl	c0de103c <handler_cmd_GroupCommitment>
c0de0278:	e00f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de027a:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de027e:	e013      	b.n	c0de02a8 <apdu_dispatcher+0x236>
c0de0280:	78e0      	ldrb	r0, [r4, #3]
c0de0282:	2880      	cmp	r0, #128	@ 0x80
c0de0284:	d10e      	bne.n	c0de02a4 <apdu_dispatcher+0x232>
c0de0286:	2080      	movs	r0, #128	@ 0x80
c0de0288:	68a2      	ldr	r2, [r4, #8]
c0de028a:	b142      	cbz	r2, c0de029e <apdu_dispatcher+0x22c>
c0de028c:	9201      	str	r2, [sp, #4]
c0de028e:	7922      	ldrb	r2, [r4, #4]
c0de0290:	9202      	str	r2, [sp, #8]
c0de0292:	09c2      	lsrs	r2, r0, #7
c0de0294:	a801      	add	r0, sp, #4
c0de0296:	f000 f8df 	bl	c0de0458 <handler_sign_tx>
c0de029a:	b004      	add	sp, #16
c0de029c:	bd10      	pop	{r4, pc}
c0de029e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de02a2:	e001      	b.n	c0de02a8 <apdu_dispatcher+0x236>
c0de02a4:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de02a8:	b004      	add	sp, #16
c0de02aa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de02ae:	f000 b800 	b.w	c0de02b2 <io_send_sw>

c0de02b2 <io_send_sw>:
c0de02b2:	b580      	push	{r7, lr}
c0de02b4:	4602      	mov	r2, r0
c0de02b6:	2000      	movs	r0, #0
c0de02b8:	2100      	movs	r1, #0
c0de02ba:	f006 f9ad 	bl	c0de6618 <io_send_response_buffers>
c0de02be:	bd80      	pop	{r7, pc}

c0de02c0 <OUTLINED_FUNCTION_0>:
c0de02c0:	9001      	str	r0, [sp, #4]
c0de02c2:	7920      	ldrb	r0, [r4, #4]
c0de02c4:	9002      	str	r0, [sp, #8]
c0de02c6:	4770      	bx	lr

c0de02c8 <app_main>:
c0de02c8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de02ca:	f006 f987 	bl	c0de65dc <io_init>
c0de02ce:	481e      	ldr	r0, [pc, #120]	@ (c0de0348 <app_main+0x80>)
c0de02d0:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de02d4:	b908      	cbnz	r0, c0de02da <app_main+0x12>
c0de02d6:	f001 f9d1 	bl	c0de167c <ui_menu_main>
c0de02da:	481c      	ldr	r0, [pc, #112]	@ (c0de034c <app_main+0x84>)
c0de02dc:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de02e0:	4448      	add	r0, r9
c0de02e2:	f007 f961 	bl	c0de75a8 <explicit_bzero>
c0de02e6:	481b      	ldr	r0, [pc, #108]	@ (c0de0354 <app_main+0x8c>)
c0de02e8:	4478      	add	r0, pc
c0de02ea:	f006 fe43 	bl	c0de6f74 <pic>
c0de02ee:	7880      	ldrb	r0, [r0, #2]
c0de02f0:	2801      	cmp	r0, #1
c0de02f2:	d00d      	beq.n	c0de0310 <app_main+0x48>
c0de02f4:	2001      	movs	r0, #1
c0de02f6:	f88d 0002 	strb.w	r0, [sp, #2]
c0de02fa:	2000      	movs	r0, #0
c0de02fc:	f8ad 0000 	strh.w	r0, [sp]
c0de0300:	4815      	ldr	r0, [pc, #84]	@ (c0de0358 <app_main+0x90>)
c0de0302:	4478      	add	r0, pc
c0de0304:	f006 fe36 	bl	c0de6f74 <pic>
c0de0308:	4669      	mov	r1, sp
c0de030a:	2203      	movs	r2, #3
c0de030c:	f006 fe62 	bl	c0de6fd4 <nvm_write>
c0de0310:	4d0f      	ldr	r5, [pc, #60]	@ (c0de0350 <app_main+0x88>)
c0de0312:	ac01      	add	r4, sp, #4
c0de0314:	f006 f96a 	bl	c0de65ec <io_recv_command>
c0de0318:	2800      	cmp	r0, #0
c0de031a:	d414      	bmi.n	c0de0346 <app_main+0x7e>
c0de031c:	4602      	mov	r2, r0
c0de031e:	eb09 0105 	add.w	r1, r9, r5
c0de0322:	4620      	mov	r0, r4
c0de0324:	f006 fa62 	bl	c0de67ec <apdu_parser>
c0de0328:	b130      	cbz	r0, c0de0338 <app_main+0x70>
c0de032a:	4620      	mov	r0, r4
c0de032c:	f7ff fea1 	bl	c0de0072 <apdu_dispatcher>
c0de0330:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0334:	dcee      	bgt.n	c0de0314 <app_main+0x4c>
c0de0336:	e006      	b.n	c0de0346 <app_main+0x7e>
c0de0338:	2000      	movs	r0, #0
c0de033a:	2100      	movs	r1, #0
c0de033c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0340:	f006 f96a 	bl	c0de6618 <io_send_response_buffers>
c0de0344:	e7e6      	b.n	c0de0314 <app_main+0x4c>
c0de0346:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0348:	000008ac 	.word	0x000008ac
c0de034c:	00000000 	.word	0x00000000
c0de0350:	000003e7 	.word	0x000003e7
c0de0354:	00008914 	.word	0x00008914
c0de0358:	000088fa 	.word	0x000088fa

c0de035c <handler_get_app_name>:
c0de035c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de035e:	4808      	ldr	r0, [pc, #32]	@ (c0de0380 <handler_get_app_name+0x24>)
c0de0360:	4478      	add	r0, pc
c0de0362:	f006 fe07 	bl	c0de6f74 <pic>
c0de0366:	2100      	movs	r1, #0
c0de0368:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de036c:	9103      	str	r1, [sp, #12]
c0de036e:	2107      	movs	r1, #7
c0de0370:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0374:	a801      	add	r0, sp, #4
c0de0376:	2101      	movs	r1, #1
c0de0378:	f006 f94e 	bl	c0de6618 <io_send_response_buffers>
c0de037c:	b004      	add	sp, #16
c0de037e:	bd80      	pop	{r7, pc}
c0de0380:	00007824 	.word	0x00007824

c0de0384 <handler_get_public_key>:
c0de0384:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0386:	b085      	sub	sp, #20
c0de0388:	4f23      	ldr	r7, [pc, #140]	@ (c0de0418 <handler_get_public_key+0x94>)
c0de038a:	460c      	mov	r4, r1
c0de038c:	4605      	mov	r5, r0
c0de038e:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0392:	eb09 0607 	add.w	r6, r9, r7
c0de0396:	4630      	mov	r0, r6
c0de0398:	f007 f906 	bl	c0de75a8 <explicit_bzero>
c0de039c:	2000      	movs	r0, #0
c0de039e:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de03a2:	f809 0007 	strb.w	r0, [r9, r7]
c0de03a6:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de03aa:	4628      	mov	r0, r5
c0de03ac:	f005 fee2 	bl	c0de6174 <buffer_read_u8>
c0de03b0:	b308      	cbz	r0, c0de03f6 <handler_get_public_key+0x72>
c0de03b2:	eb09 0007 	add.w	r0, r9, r7
c0de03b6:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de03ba:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de03be:	4628      	mov	r0, r5
c0de03c0:	f005 ff2b 	bl	c0de621a <buffer_read_bip32_path>
c0de03c4:	b1b8      	cbz	r0, c0de03f6 <handler_get_public_key+0x72>
c0de03c6:	eb09 0007 	add.w	r0, r9, r7
c0de03ca:	2100      	movs	r1, #0
c0de03cc:	2205      	movs	r2, #5
c0de03ce:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de03d2:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de03d6:	9104      	str	r1, [sp, #16]
c0de03d8:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de03dc:	f100 0608 	add.w	r6, r0, #8
c0de03e0:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de03e4:	2000      	movs	r0, #0
c0de03e6:	2121      	movs	r1, #33	@ 0x21
c0de03e8:	e9cd 6500 	strd	r6, r5, [sp]
c0de03ec:	f005 ffd6 	bl	c0de639c <bip32_derive_with_seed_get_pubkey_256>
c0de03f0:	b140      	cbz	r0, c0de0404 <handler_get_public_key+0x80>
c0de03f2:	b280      	uxth	r0, r0
c0de03f4:	e001      	b.n	c0de03fa <handler_get_public_key+0x76>
c0de03f6:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de03fa:	b005      	add	sp, #20
c0de03fc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0400:	f000 b80c 	b.w	c0de041c <io_send_sw>
c0de0404:	2c00      	cmp	r4, #0
c0de0406:	b005      	add	sp, #20
c0de0408:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de040c:	bf08      	it	eq
c0de040e:	f000 beff 	beq.w	c0de1210 <helper_send_response_pubkey>
c0de0412:	f001 ba17 	b.w	c0de1844 <ui_display_address>
c0de0416:	bf00      	nop
c0de0418:	00000000 	.word	0x00000000

c0de041c <io_send_sw>:
c0de041c:	b580      	push	{r7, lr}
c0de041e:	4602      	mov	r2, r0
c0de0420:	2000      	movs	r0, #0
c0de0422:	2100      	movs	r1, #0
c0de0424:	f006 f8f8 	bl	c0de6618 <io_send_response_buffers>
c0de0428:	bd80      	pop	{r7, pc}

c0de042a <handler_get_version>:
c0de042a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de042c:	2000      	movs	r0, #0
c0de042e:	2101      	movs	r1, #1
c0de0430:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0434:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0438:	f88d 0001 	strb.w	r0, [sp, #1]
c0de043c:	9003      	str	r0, [sp, #12]
c0de043e:	2003      	movs	r0, #3
c0de0440:	f88d 1003 	strb.w	r1, [sp, #3]
c0de0444:	2101      	movs	r1, #1
c0de0446:	9002      	str	r0, [sp, #8]
c0de0448:	f10d 0001 	add.w	r0, sp, #1
c0de044c:	9001      	str	r0, [sp, #4]
c0de044e:	a801      	add	r0, sp, #4
c0de0450:	f006 f8e2 	bl	c0de6618 <io_send_response_buffers>
c0de0454:	b004      	add	sp, #16
c0de0456:	bd80      	pop	{r7, pc}

c0de0458 <handler_sign_tx>:
c0de0458:	b570      	push	{r4, r5, r6, lr}
c0de045a:	b086      	sub	sp, #24
c0de045c:	4e54      	ldr	r6, [pc, #336]	@ (c0de05b0 <handler_sign_tx+0x158>)
c0de045e:	4604      	mov	r4, r0
c0de0460:	b191      	cbz	r1, c0de0488 <handler_sign_tx+0x30>
c0de0462:	eb09 0006 	add.w	r0, r9, r6
c0de0466:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de046a:	2801      	cmp	r0, #1
c0de046c:	d12c      	bne.n	c0de04c8 <handler_sign_tx+0x70>
c0de046e:	eb09 0006 	add.w	r0, r9, r6
c0de0472:	4615      	mov	r5, r2
c0de0474:	6862      	ldr	r2, [r4, #4]
c0de0476:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de047a:	1811      	adds	r1, r2, r0
c0de047c:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0480:	d925      	bls.n	c0de04ce <handler_sign_tx+0x76>
c0de0482:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0486:	e039      	b.n	c0de04fc <handler_sign_tx+0xa4>
c0de0488:	eb09 0506 	add.w	r5, r9, r6
c0de048c:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0490:	4628      	mov	r0, r5
c0de0492:	f007 f889 	bl	c0de75a8 <explicit_bzero>
c0de0496:	2000      	movs	r0, #0
c0de0498:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de049c:	f809 0006 	strb.w	r0, [r9, r6]
c0de04a0:	2001      	movs	r0, #1
c0de04a2:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de04a6:	4620      	mov	r0, r4
c0de04a8:	f005 fe64 	bl	c0de6174 <buffer_read_u8>
c0de04ac:	b148      	cbz	r0, c0de04c2 <handler_sign_tx+0x6a>
c0de04ae:	eb09 0006 	add.w	r0, r9, r6
c0de04b2:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de04b6:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de04ba:	4620      	mov	r0, r4
c0de04bc:	f005 fead 	bl	c0de621a <buffer_read_bip32_path>
c0de04c0:	b9b8      	cbnz	r0, c0de04f2 <handler_sign_tx+0x9a>
c0de04c2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de04c6:	e019      	b.n	c0de04fc <handler_sign_tx+0xa4>
c0de04c8:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de04cc:	e016      	b.n	c0de04fc <handler_sign_tx+0xa4>
c0de04ce:	eb09 0106 	add.w	r1, r9, r6
c0de04d2:	4408      	add	r0, r1
c0de04d4:	f100 0108 	add.w	r1, r0, #8
c0de04d8:	4620      	mov	r0, r4
c0de04da:	f005 fec8 	bl	c0de626e <buffer_move>
c0de04de:	b158      	cbz	r0, c0de04f8 <handler_sign_tx+0xa0>
c0de04e0:	eb09 0106 	add.w	r1, r9, r6
c0de04e4:	6862      	ldr	r2, [r4, #4]
c0de04e6:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de04ea:	4410      	add	r0, r2
c0de04ec:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de04f0:	b14d      	cbz	r5, c0de0506 <handler_sign_tx+0xae>
c0de04f2:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de04f6:	e001      	b.n	c0de04fc <handler_sign_tx+0xa4>
c0de04f8:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de04fc:	b006      	add	sp, #24
c0de04fe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0502:	f000 b85d 	b.w	c0de05c0 <io_send_sw>
c0de0506:	2100      	movs	r1, #0
c0de0508:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de050c:	eb09 0006 	add.w	r0, r9, r6
c0de0510:	f100 0108 	add.w	r1, r0, #8
c0de0514:	9101      	str	r1, [sp, #4]
c0de0516:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de051a:	a801      	add	r0, sp, #4
c0de051c:	f000 ffce 	bl	c0de14bc <transaction_deserialize>
c0de0520:	2801      	cmp	r0, #1
c0de0522:	d114      	bne.n	c0de054e <handler_sign_tx+0xf6>
c0de0524:	2001      	movs	r0, #1
c0de0526:	f809 0006 	strb.w	r0, [r9, r6]
c0de052a:	eb09 0006 	add.w	r0, r9, r6
c0de052e:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de0532:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de0536:	9105      	str	r1, [sp, #20]
c0de0538:	f100 0108 	add.w	r1, r0, #8
c0de053c:	9104      	str	r1, [sp, #16]
c0de053e:	a804      	add	r0, sp, #16
c0de0540:	2101      	movs	r1, #1
c0de0542:	f006 fac9 	bl	c0de6ad8 <cx_keccak_256_hash_iovec>
c0de0546:	b140      	cbz	r0, c0de055a <handler_sign_tx+0x102>
c0de0548:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de054c:	e001      	b.n	c0de0552 <handler_sign_tx+0xfa>
c0de054e:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0552:	f000 f835 	bl	c0de05c0 <io_send_sw>
c0de0556:	b006      	add	sp, #24
c0de0558:	bd70      	pop	{r4, r5, r6, pc}
c0de055a:	4816      	ldr	r0, [pc, #88]	@ (c0de05b4 <handler_sign_tx+0x15c>)
c0de055c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0560:	b1a0      	cbz	r0, c0de058c <handler_sign_tx+0x134>
c0de0562:	4815      	ldr	r0, [pc, #84]	@ (c0de05b8 <handler_sign_tx+0x160>)
c0de0564:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de0568:	b9f9      	cbnz	r1, c0de05aa <handler_sign_tx+0x152>
c0de056a:	eb09 0406 	add.w	r4, r9, r6
c0de056e:	2101      	movs	r1, #1
c0de0570:	f809 1000 	strb.w	r1, [r9, r0]
c0de0574:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0578:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de057a:	9400      	str	r4, [sp, #0]
c0de057c:	f000 ff5e 	bl	c0de143c <swap_check_validity>
c0de0580:	b110      	cbz	r0, c0de0588 <handler_sign_tx+0x130>
c0de0582:	2001      	movs	r0, #1
c0de0584:	f001 f824 	bl	c0de15d0 <validate_transaction>
c0de0588:	2000      	movs	r0, #0
c0de058a:	e7e4      	b.n	c0de0556 <handler_sign_tx+0xfe>
c0de058c:	eb09 0006 	add.w	r0, r9, r6
c0de0590:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0594:	4909      	ldr	r1, [pc, #36]	@ (c0de05bc <handler_sign_tx+0x164>)
c0de0596:	4479      	add	r1, pc
c0de0598:	f007 f84a 	bl	c0de7630 <strcmp>
c0de059c:	b110      	cbz	r0, c0de05a4 <handler_sign_tx+0x14c>
c0de059e:	f001 fa72 	bl	c0de1a86 <ui_display_transaction>
c0de05a2:	e7d8      	b.n	c0de0556 <handler_sign_tx+0xfe>
c0de05a4:	f001 fa6c 	bl	c0de1a80 <ui_display_blind_signed_transaction>
c0de05a8:	e7d5      	b.n	c0de0556 <handler_sign_tx+0xfe>
c0de05aa:	20ff      	movs	r0, #255	@ 0xff
c0de05ac:	f006 fea8 	bl	c0de7300 <os_sched_exit>
c0de05b0:	00000000 	.word	0x00000000
c0de05b4:	000008ac 	.word	0x000008ac
c0de05b8:	000008ad 	.word	0x000008ad
c0de05bc:	00007307 	.word	0x00007307

c0de05c0 <io_send_sw>:
c0de05c0:	b580      	push	{r7, lr}
c0de05c2:	4602      	mov	r2, r0
c0de05c4:	2000      	movs	r0, #0
c0de05c6:	2100      	movs	r1, #0
c0de05c8:	f006 f826 	bl	c0de6618 <io_send_response_buffers>
c0de05cc:	bd80      	pop	{r7, pc}

c0de05ce <handler_cmd_blake2b512>:
c0de05ce:	b510      	push	{r4, lr}
c0de05d0:	b0d0      	sub	sp, #320	@ 0x140
c0de05d2:	4604      	mov	r4, r0
c0de05d4:	6840      	ldr	r0, [r0, #4]
c0de05d6:	2820      	cmp	r0, #32
c0de05d8:	d10b      	bne.n	c0de05f2 <handler_cmd_blake2b512+0x24>
c0de05da:	6820      	ldr	r0, [r4, #0]
c0de05dc:	a940      	add	r1, sp, #256	@ 0x100
c0de05de:	2220      	movs	r2, #32
c0de05e0:	f001 fa54 	bl	c0de1a8c <zkn_prv_hash>
c0de05e4:	b988      	cbnz	r0, c0de060a <handler_cmd_blake2b512+0x3c>
c0de05e6:	a840      	add	r0, sp, #256	@ 0x100
c0de05e8:	2140      	movs	r1, #64	@ 0x40
c0de05ea:	f000 f817 	bl	c0de061c <io_send_response_pointer>
c0de05ee:	2000      	movs	r0, #0
c0de05f0:	e00d      	b.n	c0de060e <handler_cmd_blake2b512+0x40>
c0de05f2:	4668      	mov	r0, sp
c0de05f4:	2109      	movs	r1, #9
c0de05f6:	2240      	movs	r2, #64	@ 0x40
c0de05f8:	f006 fa9c 	bl	c0de6b34 <cx_hash_init_ex>
c0de05fc:	b928      	cbnz	r0, c0de060a <handler_cmd_blake2b512+0x3c>
c0de05fe:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0602:	4668      	mov	r0, sp
c0de0604:	f006 fa9b 	bl	c0de6b3e <cx_hash_update>
c0de0608:	b118      	cbz	r0, c0de0612 <handler_cmd_blake2b512+0x44>
c0de060a:	f000 fdd1 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de060e:	b050      	add	sp, #320	@ 0x140
c0de0610:	bd10      	pop	{r4, pc}
c0de0612:	4668      	mov	r0, sp
c0de0614:	a940      	add	r1, sp, #256	@ 0x100
c0de0616:	f006 fa88 	bl	c0de6b2a <cx_hash_final>
c0de061a:	e7e3      	b.n	c0de05e4 <handler_cmd_blake2b512+0x16>

c0de061c <io_send_response_pointer>:
c0de061c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de061e:	2200      	movs	r2, #0
c0de0620:	ab01      	add	r3, sp, #4
c0de0622:	c307      	stmia	r3!, {r0, r1, r2}
c0de0624:	a801      	add	r0, sp, #4
c0de0626:	2101      	movs	r1, #1
c0de0628:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de062c:	f005 fff4 	bl	c0de6618 <io_send_response_buffers>
c0de0630:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de0632 <io_send_sw>:
c0de0632:	b580      	push	{r7, lr}
c0de0634:	4602      	mov	r2, r0
c0de0636:	2000      	movs	r0, #0
c0de0638:	2100      	movs	r1, #0
c0de063a:	f005 ffed 	bl	c0de6618 <io_send_response_buffers>
c0de063e:	bd80      	pop	{r7, pc}

c0de0640 <handler_cmd_keccakH>:
c0de0640:	b510      	push	{r4, lr}
c0de0642:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0644:	4604      	mov	r4, r0
c0de0646:	4668      	mov	r0, sp
c0de0648:	2106      	movs	r1, #6
c0de064a:	2220      	movs	r2, #32
c0de064c:	f006 fa72 	bl	c0de6b34 <cx_hash_init_ex>
c0de0650:	b950      	cbnz	r0, c0de0668 <handler_cmd_keccakH+0x28>
c0de0652:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0656:	4668      	mov	r0, sp
c0de0658:	f006 fa71 	bl	c0de6b3e <cx_hash_update>
c0de065c:	b920      	cbnz	r0, c0de0668 <handler_cmd_keccakH+0x28>
c0de065e:	4668      	mov	r0, sp
c0de0660:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de0662:	f006 fa62 	bl	c0de6b2a <cx_hash_final>
c0de0666:	b118      	cbz	r0, c0de0670 <handler_cmd_keccakH+0x30>
c0de0668:	f000 fda2 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de066c:	b072      	add	sp, #456	@ 0x1c8
c0de066e:	bd10      	pop	{r4, pc}
c0de0670:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de0672:	f000 fdc9 	bl	c0de1208 <OUTLINED_FUNCTION_11>
c0de0676:	2000      	movs	r0, #0
c0de0678:	e7f8      	b.n	c0de066c <handler_cmd_keccakH+0x2c>
	...

c0de067c <handler_cmd_bolos_stretch>:
c0de067c:	b510      	push	{r4, lr}
c0de067e:	b0a4      	sub	sp, #144	@ 0x90
c0de0680:	f000 fd92 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0684:	bba0      	cbnz	r0, c0de06f0 <handler_cmd_bolos_stretch+0x74>
c0de0686:	ac14      	add	r4, sp, #80	@ 0x50
c0de0688:	491e      	ldr	r1, [pc, #120]	@ (c0de0704 <handler_cmd_bolos_stretch+0x88>)
c0de068a:	2220      	movs	r2, #32
c0de068c:	4620      	mov	r0, r4
c0de068e:	4479      	add	r1, pc
c0de0690:	f006 ff72 	bl	c0de7578 <__aeabi_memcpy>
c0de0694:	a80c      	add	r0, sp, #48	@ 0x30
c0de0696:	491c      	ldr	r1, [pc, #112]	@ (c0de0708 <handler_cmd_bolos_stretch+0x8c>)
c0de0698:	2220      	movs	r2, #32
c0de069a:	4479      	add	r1, pc
c0de069c:	f006 ff6c 	bl	c0de7578 <__aeabi_memcpy>
c0de06a0:	a804      	add	r0, sp, #16
c0de06a2:	491a      	ldr	r1, [pc, #104]	@ (c0de070c <handler_cmd_bolos_stretch+0x90>)
c0de06a4:	2220      	movs	r2, #32
c0de06a6:	4479      	add	r1, pc
c0de06a8:	f006 ff66 	bl	c0de7578 <__aeabi_memcpy>
c0de06ac:	a803      	add	r0, sp, #12
c0de06ae:	2120      	movs	r1, #32
c0de06b0:	4622      	mov	r2, r4
c0de06b2:	f000 fd91 	bl	c0de11d8 <OUTLINED_FUNCTION_6>
c0de06b6:	b9d8      	cbnz	r0, c0de06f0 <handler_cmd_bolos_stretch+0x74>
c0de06b8:	a802      	add	r0, sp, #8
c0de06ba:	aa0c      	add	r2, sp, #48	@ 0x30
c0de06bc:	2120      	movs	r1, #32
c0de06be:	f000 fd8b 	bl	c0de11d8 <OUTLINED_FUNCTION_6>
c0de06c2:	b9a8      	cbnz	r0, c0de06f0 <handler_cmd_bolos_stretch+0x74>
c0de06c4:	a801      	add	r0, sp, #4
c0de06c6:	aa04      	add	r2, sp, #16
c0de06c8:	2120      	movs	r1, #32
c0de06ca:	f000 fd85 	bl	c0de11d8 <OUTLINED_FUNCTION_6>
c0de06ce:	b978      	cbnz	r0, c0de06f0 <handler_cmd_bolos_stretch+0x74>
c0de06d0:	4668      	mov	r0, sp
c0de06d2:	f000 fd73 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de06d6:	b958      	cbnz	r0, c0de06f0 <handler_cmd_bolos_stretch+0x74>
c0de06d8:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de06dc:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de06e0:	f006 fd0e 	bl	c0de7100 <cx_bn_mod_add>
c0de06e4:	b920      	cbnz	r0, c0de06f0 <handler_cmd_bolos_stretch+0x74>
c0de06e6:	9800      	ldr	r0, [sp, #0]
c0de06e8:	a91c      	add	r1, sp, #112	@ 0x70
c0de06ea:	f000 fd64 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de06ee:	b118      	cbz	r0, c0de06f8 <handler_cmd_bolos_stretch+0x7c>
c0de06f0:	f000 fd5e 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de06f4:	b024      	add	sp, #144	@ 0x90
c0de06f6:	bd10      	pop	{r4, pc}
c0de06f8:	a81c      	add	r0, sp, #112	@ 0x70
c0de06fa:	f000 fd85 	bl	c0de1208 <OUTLINED_FUNCTION_11>
c0de06fe:	2000      	movs	r0, #0
c0de0700:	e7f8      	b.n	c0de06f4 <handler_cmd_bolos_stretch+0x78>
c0de0702:	bf00      	nop
c0de0704:	000075fe 	.word	0x000075fe
c0de0708:	00007572 	.word	0x00007572
c0de070c:	00007686 	.word	0x00007686

c0de0710 <handler_cmd_Poseidon>:
c0de0710:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0714:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0718:	4604      	mov	r4, r0
c0de071a:	a860      	add	r0, sp, #384	@ 0x180
c0de071c:	493d      	ldr	r1, [pc, #244]	@ (c0de0814 <handler_cmd_Poseidon+0x104>)
c0de071e:	22a0      	movs	r2, #160	@ 0xa0
c0de0720:	4479      	add	r1, pc
c0de0722:	f006 ff29 	bl	c0de7578 <__aeabi_memcpy>
c0de0726:	f000 fd3f 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de072a:	bb68      	cbnz	r0, c0de0788 <handler_cmd_Poseidon+0x78>
c0de072c:	2000      	movs	r0, #0
c0de072e:	a948      	add	r1, sp, #288	@ 0x120
c0de0730:	22ff      	movs	r2, #255	@ 0xff
c0de0732:	2860      	cmp	r0, #96	@ 0x60
c0de0734:	d002      	beq.n	c0de073c <handler_cmd_Poseidon+0x2c>
c0de0736:	540a      	strb	r2, [r1, r0]
c0de0738:	3001      	adds	r0, #1
c0de073a:	e7fa      	b.n	c0de0732 <handler_cmd_Poseidon+0x22>
c0de073c:	4936      	ldr	r1, [pc, #216]	@ (c0de0818 <handler_cmd_Poseidon+0x108>)
c0de073e:	466d      	mov	r5, sp
c0de0740:	2220      	movs	r2, #32
c0de0742:	4628      	mov	r0, r5
c0de0744:	4479      	add	r1, pc
c0de0746:	f006 ff17 	bl	c0de7578 <__aeabi_memcpy>
c0de074a:	a809      	add	r0, sp, #36	@ 0x24
c0de074c:	2120      	movs	r1, #32
c0de074e:	462a      	mov	r2, r5
c0de0750:	f000 fd42 	bl	c0de11d8 <OUTLINED_FUNCTION_6>
c0de0754:	b9c0      	cbnz	r0, c0de0788 <handler_cmd_Poseidon+0x78>
c0de0756:	a808      	add	r0, sp, #32
c0de0758:	466a      	mov	r2, sp
c0de075a:	2120      	movs	r1, #32
c0de075c:	f000 fd3c 	bl	c0de11d8 <OUTLINED_FUNCTION_6>
c0de0760:	b990      	cbnz	r0, c0de0788 <handler_cmd_Poseidon+0x78>
c0de0762:	a80a      	add	r0, sp, #40	@ 0x28
c0de0764:	2120      	movs	r1, #32
c0de0766:	f006 fd11 	bl	c0de718c <cx_mont_alloc>
c0de076a:	b968      	cbnz	r0, c0de0788 <handler_cmd_Poseidon+0x78>
c0de076c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de076e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0770:	f006 fd16 	bl	c0de71a0 <cx_mont_init>
c0de0774:	b940      	cbnz	r0, c0de0788 <handler_cmd_Poseidon+0x78>
c0de0776:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de077a:	ab0a      	add	r3, sp, #40	@ 0x28
c0de077c:	2105      	movs	r1, #5
c0de077e:	2205      	movs	r2, #5
c0de0780:	4640      	mov	r0, r8
c0de0782:	f002 fac7 	bl	c0de2d14 <Poseidon_alloc_init>
c0de0786:	b128      	cbz	r0, c0de0794 <handler_cmd_Poseidon+0x84>
c0de0788:	f000 fd12 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de078c:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0790:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0794:	2700      	movs	r7, #0
c0de0796:	ae60      	add	r6, sp, #384	@ 0x180
c0de0798:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de079a:	4287      	cmp	r7, r0
c0de079c:	d212      	bcs.n	c0de07c4 <handler_cmd_Poseidon+0xb4>
c0de079e:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de07a2:	4631      	mov	r1, r6
c0de07a4:	2220      	movs	r2, #32
c0de07a6:	69e8      	ldr	r0, [r5, #28]
c0de07a8:	f006 fc5a 	bl	c0de7060 <cx_bn_init>
c0de07ac:	2800      	cmp	r0, #0
c0de07ae:	d1eb      	bne.n	c0de0788 <handler_cmd_Poseidon+0x78>
c0de07b0:	69e8      	ldr	r0, [r5, #28]
c0de07b2:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de07b4:	4601      	mov	r1, r0
c0de07b6:	f006 fcfd 	bl	c0de71b4 <cx_mont_to_montgomery>
c0de07ba:	3701      	adds	r7, #1
c0de07bc:	3620      	adds	r6, #32
c0de07be:	2800      	cmp	r0, #0
c0de07c0:	d0ea      	beq.n	c0de0798 <handler_cmd_Poseidon+0x88>
c0de07c2:	e7e1      	b.n	c0de0788 <handler_cmd_Poseidon+0x78>
c0de07c4:	aa08      	add	r2, sp, #32
c0de07c6:	4640      	mov	r0, r8
c0de07c8:	2100      	movs	r1, #0
c0de07ca:	2301      	movs	r3, #1
c0de07cc:	f002 fb08 	bl	c0de2de0 <Poseidon>
c0de07d0:	6820      	ldr	r0, [r4, #0]
c0de07d2:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de07d4:	7800      	ldrb	r0, [r0, #0]
c0de07d6:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de07da:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de07de:	4601      	mov	r1, r0
c0de07e0:	f006 fcf4 	bl	c0de71cc <cx_mont_from_montgomery>
c0de07e4:	2800      	cmp	r0, #0
c0de07e6:	d1cf      	bne.n	c0de0788 <handler_cmd_Poseidon+0x78>
c0de07e8:	6820      	ldr	r0, [r4, #0]
c0de07ea:	a948      	add	r1, sp, #288	@ 0x120
c0de07ec:	f000 fce3 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de07f0:	2800      	cmp	r0, #0
c0de07f2:	d1c9      	bne.n	c0de0788 <handler_cmd_Poseidon+0x78>
c0de07f4:	a848      	add	r0, sp, #288	@ 0x120
c0de07f6:	2160      	movs	r1, #96	@ 0x60
c0de07f8:	f7ff ff10 	bl	c0de061c <io_send_response_pointer>
c0de07fc:	a808      	add	r0, sp, #32
c0de07fe:	f006 fc1b 	bl	c0de7038 <cx_bn_destroy>
c0de0802:	2800      	cmp	r0, #0
c0de0804:	d1c0      	bne.n	c0de0788 <handler_cmd_Poseidon+0x78>
c0de0806:	f006 fbf9 	bl	c0de6ffc <cx_bn_unlock>
c0de080a:	2800      	cmp	r0, #0
c0de080c:	d1bc      	bne.n	c0de0788 <handler_cmd_Poseidon+0x78>
c0de080e:	2000      	movs	r0, #0
c0de0810:	e7bc      	b.n	c0de078c <handler_cmd_Poseidon+0x7c>
c0de0812:	bf00      	nop
c0de0814:	000076ec 	.word	0x000076ec
c0de0818:	00007648 	.word	0x00007648

c0de081c <handler_cmd_Poseidon_ithRC>:
c0de081c:	b570      	push	{r4, r5, r6, lr}
c0de081e:	b0d0      	sub	sp, #320	@ 0x140
c0de0820:	4604      	mov	r4, r0
c0de0822:	f000 fcc1 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0826:	bba0      	cbnz	r0, c0de0892 <handler_cmd_Poseidon_ithRC+0x76>
c0de0828:	a848      	add	r0, sp, #288	@ 0x120
c0de082a:	491d      	ldr	r1, [pc, #116]	@ (c0de08a0 <handler_cmd_Poseidon_ithRC+0x84>)
c0de082c:	2220      	movs	r2, #32
c0de082e:	4479      	add	r1, pc
c0de0830:	f006 fea2 	bl	c0de7578 <__aeabi_memcpy>
c0de0834:	ad01      	add	r5, sp, #4
c0de0836:	491b      	ldr	r1, [pc, #108]	@ (c0de08a4 <handler_cmd_Poseidon_ithRC+0x88>)
c0de0838:	2220      	movs	r2, #32
c0de083a:	4628      	mov	r0, r5
c0de083c:	4479      	add	r1, pc
c0de083e:	f006 fe9b 	bl	c0de7578 <__aeabi_memcpy>
c0de0842:	a809      	add	r0, sp, #36	@ 0x24
c0de0844:	2120      	movs	r1, #32
c0de0846:	462a      	mov	r2, r5
c0de0848:	f000 fcc6 	bl	c0de11d8 <OUTLINED_FUNCTION_6>
c0de084c:	bb08      	cbnz	r0, c0de0892 <handler_cmd_Poseidon_ithRC+0x76>
c0de084e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0850:	2120      	movs	r1, #32
c0de0852:	f006 fc9b 	bl	c0de718c <cx_mont_alloc>
c0de0856:	b9e0      	cbnz	r0, c0de0892 <handler_cmd_Poseidon_ithRC+0x76>
c0de0858:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de085a:	a80a      	add	r0, sp, #40	@ 0x28
c0de085c:	f006 fca0 	bl	c0de71a0 <cx_mont_init>
c0de0860:	b9b8      	cbnz	r0, c0de0892 <handler_cmd_Poseidon_ithRC+0x76>
c0de0862:	a80c      	add	r0, sp, #48	@ 0x30
c0de0864:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0866:	2105      	movs	r1, #5
c0de0868:	2205      	movs	r2, #5
c0de086a:	f002 fa53 	bl	c0de2d14 <Poseidon_alloc_init>
c0de086e:	b980      	cbnz	r0, c0de0892 <handler_cmd_Poseidon_ithRC+0x76>
c0de0870:	6820      	ldr	r0, [r4, #0]
c0de0872:	7806      	ldrb	r6, [r0, #0]
c0de0874:	ac0c      	add	r4, sp, #48	@ 0x30
c0de0876:	ad48      	add	r5, sp, #288	@ 0x120
c0de0878:	b12e      	cbz	r6, c0de0886 <handler_cmd_Poseidon_ithRC+0x6a>
c0de087a:	4620      	mov	r0, r4
c0de087c:	4629      	mov	r1, r5
c0de087e:	f002 fa45 	bl	c0de2d0c <Poseidon_getNext_RC>
c0de0882:	3e01      	subs	r6, #1
c0de0884:	e7f8      	b.n	c0de0878 <handler_cmd_Poseidon_ithRC+0x5c>
c0de0886:	a848      	add	r0, sp, #288	@ 0x120
c0de0888:	f000 fcbe 	bl	c0de1208 <OUTLINED_FUNCTION_11>
c0de088c:	f006 fbb6 	bl	c0de6ffc <cx_bn_unlock>
c0de0890:	b118      	cbz	r0, c0de089a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0892:	f000 fc8d 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de0896:	b050      	add	sp, #320	@ 0x140
c0de0898:	bd70      	pop	{r4, r5, r6, pc}
c0de089a:	2000      	movs	r0, #0
c0de089c:	e7fb      	b.n	c0de0896 <handler_cmd_Poseidon_ithRC+0x7a>
c0de089e:	bf00      	nop
c0de08a0:	000073be 	.word	0x000073be
c0de08a4:	00007550 	.word	0x00007550

c0de08a8 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de08a8:	b5b0      	push	{r4, r5, r7, lr}
c0de08aa:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de08ae:	6801      	ldr	r1, [r0, #0]
c0de08b0:	2200      	movs	r2, #0
c0de08b2:	23ff      	movs	r3, #255	@ 0xff
c0de08b4:	780d      	ldrb	r5, [r1, #0]
c0de08b6:	ac5a      	add	r4, sp, #360	@ 0x168
c0de08b8:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de08bc:	d002      	beq.n	c0de08c4 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de08be:	54a3      	strb	r3, [r4, r2]
c0de08c0:	3201      	adds	r2, #1
c0de08c2:	e7f9      	b.n	c0de08b8 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de08c4:	6840      	ldr	r0, [r0, #4]
c0de08c6:	3101      	adds	r1, #1
c0de08c8:	aa1a      	add	r2, sp, #104	@ 0x68
c0de08ca:	3801      	subs	r0, #1
c0de08cc:	b128      	cbz	r0, c0de08da <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de08ce:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de08d2:	3801      	subs	r0, #1
c0de08d4:	f802 3b01 	strb.w	r3, [r2], #1
c0de08d8:	e7f8      	b.n	c0de08cc <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de08da:	f000 fc65 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de08de:	b9f0      	cbnz	r0, c0de091e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08e0:	a804      	add	r0, sp, #16
c0de08e2:	4629      	mov	r1, r5
c0de08e4:	f001 fe7a 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de08e8:	b9c8      	cbnz	r0, c0de091e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08ea:	a804      	add	r0, sp, #16
c0de08ec:	a901      	add	r1, sp, #4
c0de08ee:	f001 fcf5 	bl	c0de22dc <tEdwards_alloc>
c0de08f2:	b9a0      	cbnz	r0, c0de091e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08f4:	a804      	add	r0, sp, #16
c0de08f6:	a91a      	add	r1, sp, #104	@ 0x68
c0de08f8:	aa01      	add	r2, sp, #4
c0de08fa:	f001 f8fd 	bl	c0de1af8 <zkn_prv2pub>
c0de08fe:	b970      	cbnz	r0, c0de091e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de0900:	a804      	add	r0, sp, #16
c0de0902:	f104 0320 	add.w	r3, r4, #32
c0de0906:	a901      	add	r1, sp, #4
c0de0908:	f000 fc7b 	bl	c0de1202 <OUTLINED_FUNCTION_10>
c0de090c:	b938      	cbnz	r0, c0de091e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de090e:	9804      	ldr	r0, [sp, #16]
c0de0910:	0041      	lsls	r1, r0, #1
c0de0912:	a85a      	add	r0, sp, #360	@ 0x168
c0de0914:	f7ff fe82 	bl	c0de061c <io_send_response_pointer>
c0de0918:	f006 fb70 	bl	c0de6ffc <cx_bn_unlock>
c0de091c:	b120      	cbz	r0, c0de0928 <handler_cmd_tEddsaPoseidon_Kpub+0x80>
c0de091e:	f000 fc47 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de0922:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de0926:	bdb0      	pop	{r4, r5, r7, pc}
c0de0928:	2000      	movs	r0, #0
c0de092a:	e7fa      	b.n	c0de0922 <handler_cmd_tEddsaPoseidon_Kpub+0x7a>

c0de092c <handler_cmd_tEddsaPoseidon_Sign>:
c0de092c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de092e:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de0932:	4606      	mov	r6, r0
c0de0934:	6800      	ldr	r0, [r0, #0]
c0de0936:	2100      	movs	r1, #0
c0de0938:	22ff      	movs	r2, #255	@ 0xff
c0de093a:	7805      	ldrb	r5, [r0, #0]
c0de093c:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de093e:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de0942:	d002      	beq.n	c0de094a <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de0944:	5462      	strb	r2, [r4, r1]
c0de0946:	3101      	adds	r1, #1
c0de0948:	e7f9      	b.n	c0de093e <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de094a:	6871      	ldr	r1, [r6, #4]
c0de094c:	3001      	adds	r0, #1
c0de094e:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0950:	3901      	subs	r1, #1
c0de0952:	b129      	cbz	r1, c0de0960 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de0954:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de0958:	3901      	subs	r1, #1
c0de095a:	f802 3b01 	strb.w	r3, [r2], #1
c0de095e:	e7f8      	b.n	c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de0960:	f000 fc22 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0964:	bba8      	cbnz	r0, c0de09d2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0966:	6830      	ldr	r0, [r6, #0]
c0de0968:	aa0a      	add	r2, sp, #40	@ 0x28
c0de096a:	2100      	movs	r1, #0
c0de096c:	ab02      	add	r3, sp, #8
c0de096e:	2920      	cmp	r1, #32
c0de0970:	d007      	beq.n	c0de0982 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de0972:	1846      	adds	r6, r0, r1
c0de0974:	7877      	ldrb	r7, [r6, #1]
c0de0976:	5457      	strb	r7, [r2, r1]
c0de0978:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de097c:	545e      	strb	r6, [r3, r1]
c0de097e:	3101      	adds	r1, #1
c0de0980:	e7f5      	b.n	c0de096e <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0982:	a815      	add	r0, sp, #84	@ 0x54
c0de0984:	4629      	mov	r1, r5
c0de0986:	f001 fe29 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de098a:	bb10      	cbnz	r0, c0de09d2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de098c:	a815      	add	r0, sp, #84	@ 0x54
c0de098e:	a912      	add	r1, sp, #72	@ 0x48
c0de0990:	f001 fca4 	bl	c0de22dc <tEdwards_alloc>
c0de0994:	b9e8      	cbnz	r0, c0de09d2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0996:	a815      	add	r0, sp, #84	@ 0x54
c0de0998:	a92b      	add	r1, sp, #172	@ 0xac
c0de099a:	aa12      	add	r2, sp, #72	@ 0x48
c0de099c:	f001 f8ac 	bl	c0de1af8 <zkn_prv2pub>
c0de09a0:	b9b8      	cbnz	r0, c0de09d2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de09a2:	a815      	add	r0, sp, #84	@ 0x54
c0de09a4:	f104 0320 	add.w	r3, r4, #32
c0de09a8:	a912      	add	r1, sp, #72	@ 0x48
c0de09aa:	f000 fc2a 	bl	c0de1202 <OUTLINED_FUNCTION_10>
c0de09ae:	b980      	cbnz	r0, c0de09d2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de09b0:	2020      	movs	r0, #32
c0de09b2:	e9cd 0400 	strd	r0, r4, [sp]
c0de09b6:	a815      	add	r0, sp, #84	@ 0x54
c0de09b8:	a90a      	add	r1, sp, #40	@ 0x28
c0de09ba:	aa12      	add	r2, sp, #72	@ 0x48
c0de09bc:	ab02      	add	r3, sp, #8
c0de09be:	f001 f8c3 	bl	c0de1b48 <EddsaPoseidon_Sign_final>
c0de09c2:	b930      	cbnz	r0, c0de09d2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de09c4:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de09c6:	2160      	movs	r1, #96	@ 0x60
c0de09c8:	f7ff fe28 	bl	c0de061c <io_send_response_pointer>
c0de09cc:	f006 fb16 	bl	c0de6ffc <cx_bn_unlock>
c0de09d0:	b120      	cbz	r0, c0de09dc <handler_cmd_tEddsaPoseidon_Sign+0xb0>
c0de09d2:	f000 fbed 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de09d6:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de09da:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de09dc:	2000      	movs	r0, #0
c0de09de:	e7fa      	b.n	c0de09d6 <handler_cmd_tEddsaPoseidon_Sign+0xaa>

c0de09e0 <handler_cmd_tEddsaPoseidon>:
c0de09e0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de09e4:	b0eb      	sub	sp, #428	@ 0x1ac
c0de09e6:	4605      	mov	r5, r0
c0de09e8:	6800      	ldr	r0, [r0, #0]
c0de09ea:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de09ee:	21ff      	movs	r1, #255	@ 0xff
c0de09f0:	7806      	ldrb	r6, [r0, #0]
c0de09f2:	2000      	movs	r0, #0
c0de09f4:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de09f8:	d002      	beq.n	c0de0a00 <handler_cmd_tEddsaPoseidon+0x20>
c0de09fa:	5421      	strb	r1, [r4, r0]
c0de09fc:	3001      	adds	r0, #1
c0de09fe:	e7f9      	b.n	c0de09f4 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a00:	f000 fbd2 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0a04:	2800      	cmp	r0, #0
c0de0a06:	d154      	bne.n	c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a08:	af14      	add	r7, sp, #80	@ 0x50
c0de0a0a:	4631      	mov	r1, r6
c0de0a0c:	4638      	mov	r0, r7
c0de0a0e:	f001 fde5 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de0a12:	2800      	cmp	r0, #0
c0de0a14:	d14d      	bne.n	c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a16:	f107 060c 	add.w	r6, r7, #12
c0de0a1a:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a1e:	4638      	mov	r0, r7
c0de0a20:	4631      	mov	r1, r6
c0de0a22:	f001 fd84 	bl	c0de252e <tEdwards_IsOnCurve>
c0de0a26:	2800      	cmp	r0, #0
c0de0a28:	d143      	bne.n	c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a2a:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0a2e:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a32:	2901      	cmp	r1, #1
c0de0a34:	d13d      	bne.n	c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a36:	4922      	ldr	r1, [pc, #136]	@ (c0de0ac0 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0a38:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0a3c:	2220      	movs	r2, #32
c0de0a3e:	4650      	mov	r0, sl
c0de0a40:	4479      	add	r1, pc
c0de0a42:	f006 fd99 	bl	c0de7578 <__aeabi_memcpy>
c0de0a46:	af01      	add	r7, sp, #4
c0de0a48:	491e      	ldr	r1, [pc, #120]	@ (c0de0ac4 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0a4a:	2220      	movs	r2, #32
c0de0a4c:	4638      	mov	r0, r7
c0de0a4e:	4479      	add	r1, pc
c0de0a50:	f006 fd92 	bl	c0de7578 <__aeabi_memcpy>
c0de0a54:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0a58:	a814      	add	r0, sp, #80	@ 0x50
c0de0a5a:	4651      	mov	r1, sl
c0de0a5c:	463a      	mov	r2, r7
c0de0a5e:	4643      	mov	r3, r8
c0de0a60:	f001 ffad 	bl	c0de29be <tEdwards_alloc_init>
c0de0a64:	bb28      	cbnz	r0, c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a66:	a814      	add	r0, sp, #80	@ 0x50
c0de0a68:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a6c:	4631      	mov	r1, r6
c0de0a6e:	f001 fd5e 	bl	c0de252e <tEdwards_IsOnCurve>
c0de0a72:	b9f0      	cbnz	r0, c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a74:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0a78:	2801      	cmp	r0, #1
c0de0a7a:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a7e:	d118      	bne.n	c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a80:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0a84:	f8cd 8000 	str.w	r8, [sp]
c0de0a88:	1c42      	adds	r2, r0, #1
c0de0a8a:	1e4b      	subs	r3, r1, #1
c0de0a8c:	a814      	add	r0, sp, #80	@ 0x50
c0de0a8e:	4631      	mov	r1, r6
c0de0a90:	f002 f81a 	bl	c0de2ac8 <tEdwards_scalarMul>
c0de0a94:	b968      	cbnz	r0, c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a96:	a814      	add	r0, sp, #80	@ 0x50
c0de0a98:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0a9c:	a911      	add	r1, sp, #68	@ 0x44
c0de0a9e:	f000 fbb0 	bl	c0de1202 <OUTLINED_FUNCTION_10>
c0de0aa2:	b930      	cbnz	r0, c0de0ab2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aa4:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0aa8:	f000 fb92 	bl	c0de11d0 <OUTLINED_FUNCTION_5>
c0de0aac:	f006 faa6 	bl	c0de6ffc <cx_bn_unlock>
c0de0ab0:	b120      	cbz	r0, c0de0abc <handler_cmd_tEddsaPoseidon+0xdc>
c0de0ab2:	f000 fb7d 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de0ab6:	b06b      	add	sp, #428	@ 0x1ac
c0de0ab8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0abc:	2000      	movs	r0, #0
c0de0abe:	e7fa      	b.n	c0de0ab6 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0ac0:	0000736c 	.word	0x0000736c
c0de0ac4:	0000737e 	.word	0x0000737e

c0de0ac8 <handler_cmd_tEdwards>:
c0de0ac8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0aca:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0acc:	4605      	mov	r5, r0
c0de0ace:	6840      	ldr	r0, [r0, #4]
c0de0ad0:	2841      	cmp	r0, #65	@ 0x41
c0de0ad2:	d801      	bhi.n	c0de0ad8 <handler_cmd_tEdwards+0x10>
c0de0ad4:	2802      	cmp	r0, #2
c0de0ad6:	d202      	bcs.n	c0de0ade <handler_cmd_tEdwards+0x16>
c0de0ad8:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0adc:	e015      	b.n	c0de0b0a <handler_cmd_tEdwards+0x42>
c0de0ade:	6828      	ldr	r0, [r5, #0]
c0de0ae0:	21ff      	movs	r1, #255	@ 0xff
c0de0ae2:	7806      	ldrb	r6, [r0, #0]
c0de0ae4:	2000      	movs	r0, #0
c0de0ae6:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0ae8:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0aec:	d002      	beq.n	c0de0af4 <handler_cmd_tEdwards+0x2c>
c0de0aee:	5421      	strb	r1, [r4, r0]
c0de0af0:	3001      	adds	r0, #1
c0de0af2:	e7f9      	b.n	c0de0ae8 <handler_cmd_tEdwards+0x20>
c0de0af4:	f000 fb58 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0af8:	b920      	cbnz	r0, c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0afa:	a819      	add	r0, sp, #100	@ 0x64
c0de0afc:	4631      	mov	r1, r6
c0de0afe:	f001 fd6d 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de0b02:	b120      	cbz	r0, c0de0b0e <handler_cmd_tEdwards+0x46>
c0de0b04:	b280      	uxth	r0, r0
c0de0b06:	f7ff fd94 	bl	c0de0632 <io_send_sw>
c0de0b0a:	b06f      	add	sp, #444	@ 0x1bc
c0de0b0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0b0e:	2e02      	cmp	r6, #2
c0de0b10:	d00c      	beq.n	c0de0b2c <handler_cmd_tEdwards+0x64>
c0de0b12:	2e01      	cmp	r6, #1
c0de0b14:	d128      	bne.n	c0de0b68 <handler_cmd_tEdwards+0xa0>
c0de0b16:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b18:	4942      	ldr	r1, [pc, #264]	@ (c0de0c24 <handler_cmd_tEdwards+0x15c>)
c0de0b1a:	2220      	movs	r2, #32
c0de0b1c:	4630      	mov	r0, r6
c0de0b1e:	4479      	add	r1, pc
c0de0b20:	f006 fd2a 	bl	c0de7578 <__aeabi_memcpy>
c0de0b24:	af03      	add	r7, sp, #12
c0de0b26:	4940      	ldr	r1, [pc, #256]	@ (c0de0c28 <handler_cmd_tEdwards+0x160>)
c0de0b28:	4479      	add	r1, pc
c0de0b2a:	e009      	b.n	c0de0b40 <handler_cmd_tEdwards+0x78>
c0de0b2c:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b2e:	493f      	ldr	r1, [pc, #252]	@ (c0de0c2c <handler_cmd_tEdwards+0x164>)
c0de0b30:	2220      	movs	r2, #32
c0de0b32:	4630      	mov	r0, r6
c0de0b34:	4479      	add	r1, pc
c0de0b36:	f006 fd1f 	bl	c0de7578 <__aeabi_memcpy>
c0de0b3a:	af03      	add	r7, sp, #12
c0de0b3c:	493c      	ldr	r1, [pc, #240]	@ (c0de0c30 <handler_cmd_tEdwards+0x168>)
c0de0b3e:	4479      	add	r1, pc
c0de0b40:	4638      	mov	r0, r7
c0de0b42:	2220      	movs	r2, #32
c0de0b44:	f006 fd18 	bl	c0de7578 <__aeabi_memcpy>
c0de0b48:	a819      	add	r0, sp, #100	@ 0x64
c0de0b4a:	ab16      	add	r3, sp, #88	@ 0x58
c0de0b4c:	4631      	mov	r1, r6
c0de0b4e:	463a      	mov	r2, r7
c0de0b50:	f001 ff35 	bl	c0de29be <tEdwards_alloc_init>
c0de0b54:	2800      	cmp	r0, #0
c0de0b56:	d1d5      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0b58:	a819      	add	r0, sp, #100	@ 0x64
c0de0b5a:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0b5c:	aa03      	add	r2, sp, #12
c0de0b5e:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0b60:	f001 ff2d 	bl	c0de29be <tEdwards_alloc_init>
c0de0b64:	2800      	cmp	r0, #0
c0de0b66:	d1cd      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0b68:	2000      	movs	r0, #0
c0de0b6a:	f10d 020b 	add.w	r2, sp, #11
c0de0b6e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0b72:	a819      	add	r0, sp, #100	@ 0x64
c0de0b74:	a916      	add	r1, sp, #88	@ 0x58
c0de0b76:	f001 fcda 	bl	c0de252e <tEdwards_IsOnCurve>
c0de0b7a:	2800      	cmp	r0, #0
c0de0b7c:	d1c2      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0b7e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b82:	2801      	cmp	r0, #1
c0de0b84:	d142      	bne.n	c0de0c0c <handler_cmd_tEdwards+0x144>
c0de0b86:	a819      	add	r0, sp, #100	@ 0x64
c0de0b88:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0b8a:	f10d 020b 	add.w	r2, sp, #11
c0de0b8e:	4631      	mov	r1, r6
c0de0b90:	f001 fccd 	bl	c0de252e <tEdwards_IsOnCurve>
c0de0b94:	2800      	cmp	r0, #0
c0de0b96:	d1b5      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0b98:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b9c:	2801      	cmp	r0, #1
c0de0b9e:	d138      	bne.n	c0de0c12 <handler_cmd_tEdwards+0x14a>
c0de0ba0:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0ba2:	f10d 010b 	add.w	r1, sp, #11
c0de0ba6:	f006 fae7 	bl	c0de7178 <cx_bn_is_prime>
c0de0baa:	2800      	cmp	r0, #0
c0de0bac:	d1aa      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0bae:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bb2:	2801      	cmp	r0, #1
c0de0bb4:	d130      	bne.n	c0de0c18 <handler_cmd_tEdwards+0x150>
c0de0bb6:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0bb8:	f10d 010b 	add.w	r1, sp, #11
c0de0bbc:	f006 fadc 	bl	c0de7178 <cx_bn_is_prime>
c0de0bc0:	2800      	cmp	r0, #0
c0de0bc2:	d19f      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0bc4:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bc8:	2801      	cmp	r0, #1
c0de0bca:	d128      	bne.n	c0de0c1e <handler_cmd_tEdwards+0x156>
c0de0bcc:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0bd0:	9600      	str	r6, [sp, #0]
c0de0bd2:	1c42      	adds	r2, r0, #1
c0de0bd4:	1e4b      	subs	r3, r1, #1
c0de0bd6:	a819      	add	r0, sp, #100	@ 0x64
c0de0bd8:	a916      	add	r1, sp, #88	@ 0x58
c0de0bda:	f001 ff75 	bl	c0de2ac8 <tEdwards_scalarMul>
c0de0bde:	2800      	cmp	r0, #0
c0de0be0:	d190      	bne.n	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0be2:	a819      	add	r0, sp, #100	@ 0x64
c0de0be4:	f104 0320 	add.w	r3, r4, #32
c0de0be8:	a913      	add	r1, sp, #76	@ 0x4c
c0de0bea:	f000 fb0a 	bl	c0de1202 <OUTLINED_FUNCTION_10>
c0de0bee:	2800      	cmp	r0, #0
c0de0bf0:	f47f af88 	bne.w	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0bf4:	f006 fa02 	bl	c0de6ffc <cx_bn_unlock>
c0de0bf8:	2800      	cmp	r0, #0
c0de0bfa:	f47f af83 	bne.w	c0de0b04 <handler_cmd_tEdwards+0x3c>
c0de0bfe:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c00:	0041      	lsls	r1, r0, #1
c0de0c02:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0c04:	f7ff fd0a 	bl	c0de061c <io_send_response_pointer>
c0de0c08:	2000      	movs	r0, #0
c0de0c0a:	e77e      	b.n	c0de0b0a <handler_cmd_tEdwards+0x42>
c0de0c0c:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0c10:	e779      	b.n	c0de0b06 <handler_cmd_tEdwards+0x3e>
c0de0c12:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0c16:	e776      	b.n	c0de0b06 <handler_cmd_tEdwards+0x3e>
c0de0c18:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0c1c:	e773      	b.n	c0de0b06 <handler_cmd_tEdwards+0x3e>
c0de0c1e:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0c22:	e770      	b.n	c0de0b06 <handler_cmd_tEdwards+0x3e>
c0de0c24:	0000710e 	.word	0x0000710e
c0de0c28:	00007184 	.word	0x00007184
c0de0c2c:	00007118 	.word	0x00007118
c0de0c30:	0000708e 	.word	0x0000708e

c0de0c34 <handler_cmd_Interpolate>:
c0de0c34:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0c38:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0c3c:	4605      	mov	r5, r0
c0de0c3e:	6800      	ldr	r0, [r0, #0]
c0de0c40:	22ff      	movs	r2, #255	@ 0xff
c0de0c42:	7804      	ldrb	r4, [r0, #0]
c0de0c44:	2000      	movs	r0, #0
c0de0c46:	a944      	add	r1, sp, #272	@ 0x110
c0de0c48:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0c4c:	d002      	beq.n	c0de0c54 <handler_cmd_Interpolate+0x20>
c0de0c4e:	540a      	strb	r2, [r1, r0]
c0de0c50:	3001      	adds	r0, #1
c0de0c52:	e7f9      	b.n	c0de0c48 <handler_cmd_Interpolate+0x14>
c0de0c54:	f000 faa8 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0c58:	bb28      	cbnz	r0, c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0c5a:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0c5e:	4621      	mov	r1, r4
c0de0c60:	4640      	mov	r0, r8
c0de0c62:	f001 fcbb 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de0c66:	b9f0      	cbnz	r0, c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0c68:	a827      	add	r0, sp, #156	@ 0x9c
c0de0c6a:	f000 faa7 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de0c6e:	b9d0      	cbnz	r0, c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0c70:	6828      	ldr	r0, [r5, #0]
c0de0c72:	2100      	movs	r1, #0
c0de0c74:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0c76:	3001      	adds	r0, #1
c0de0c78:	2960      	cmp	r1, #96	@ 0x60
c0de0c7a:	d003      	beq.n	c0de0c84 <handler_cmd_Interpolate+0x50>
c0de0c7c:	5c43      	ldrb	r3, [r0, r1]
c0de0c7e:	5453      	strb	r3, [r2, r1]
c0de0c80:	3101      	adds	r1, #1
c0de0c82:	e7f9      	b.n	c0de0c78 <handler_cmd_Interpolate+0x44>
c0de0c84:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0c86:	2100      	movs	r1, #0
c0de0c88:	af2b      	add	r7, sp, #172	@ 0xac
c0de0c8a:	1d0c      	adds	r4, r1, #4
c0de0c8c:	2c10      	cmp	r4, #16
c0de0c8e:	d010      	beq.n	c0de0cb2 <handler_cmd_Interpolate+0x7e>
c0de0c90:	1878      	adds	r0, r7, r1
c0de0c92:	2120      	movs	r1, #32
c0de0c94:	2320      	movs	r3, #32
c0de0c96:	f102 0520 	add.w	r5, r2, #32
c0de0c9a:	f006 f9c1 	bl	c0de7020 <cx_bn_alloc_init>
c0de0c9e:	2800      	cmp	r0, #0
c0de0ca0:	462a      	mov	r2, r5
c0de0ca2:	4621      	mov	r1, r4
c0de0ca4:	d0f1      	beq.n	c0de0c8a <handler_cmd_Interpolate+0x56>
c0de0ca6:	f000 fa83 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de0caa:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0cae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0cb2:	f108 000c 	add.w	r0, r8, #12
c0de0cb6:	f04f 0a00 	mov.w	sl, #0
c0de0cba:	2601      	movs	r6, #1
c0de0cbc:	f10d 0b0c 	add.w	fp, sp, #12
c0de0cc0:	9001      	str	r0, [sp, #4]
c0de0cc2:	ad44      	add	r5, sp, #272	@ 0x110
c0de0cc4:	f1ba 0f0c 	cmp.w	sl, #12
c0de0cc8:	d03b      	beq.n	c0de0d42 <handler_cmd_Interpolate+0x10e>
c0de0cca:	a828      	add	r0, sp, #160	@ 0xa0
c0de0ccc:	2120      	movs	r1, #32
c0de0cce:	eb00 040a 	add.w	r4, r0, sl
c0de0cd2:	4620      	mov	r0, r4
c0de0cd4:	f006 f99a 	bl	c0de700c <cx_bn_alloc>
c0de0cd8:	2800      	cmp	r0, #0
c0de0cda:	d1e4      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0cdc:	6820      	ldr	r0, [r4, #0]
c0de0cde:	4631      	mov	r1, r6
c0de0ce0:	f006 f9d4 	bl	c0de708c <cx_bn_set_u32>
c0de0ce4:	2800      	cmp	r0, #0
c0de0ce6:	d1de      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0ce8:	4640      	mov	r0, r8
c0de0cea:	4659      	mov	r1, fp
c0de0cec:	f001 faf6 	bl	c0de22dc <tEdwards_alloc>
c0de0cf0:	2800      	cmp	r0, #0
c0de0cf2:	d1d8      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0cf4:	9602      	str	r6, [sp, #8]
c0de0cf6:	eb07 060a 	add.w	r6, r7, sl
c0de0cfa:	9901      	ldr	r1, [sp, #4]
c0de0cfc:	4640      	mov	r0, r8
c0de0cfe:	465b      	mov	r3, fp
c0de0d00:	4632      	mov	r2, r6
c0de0d02:	f001 fe7b 	bl	c0de29fc <tEdwards_scalarMul_bn>
c0de0d06:	2800      	cmp	r0, #0
c0de0d08:	d1cd      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d0a:	6820      	ldr	r0, [r4, #0]
c0de0d0c:	4629      	mov	r1, r5
c0de0d0e:	f000 fa52 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0d12:	2800      	cmp	r0, #0
c0de0d14:	d1c7      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d16:	6830      	ldr	r0, [r6, #0]
c0de0d18:	f105 0120 	add.w	r1, r5, #32
c0de0d1c:	f000 fa4b 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0d20:	2800      	cmp	r0, #0
c0de0d22:	d1c0      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d24:	4640      	mov	r0, r8
c0de0d26:	4659      	mov	r1, fp
c0de0d28:	f001 fe09 	bl	c0de293e <tEdwards_normalize>
c0de0d2c:	9e02      	ldr	r6, [sp, #8]
c0de0d2e:	3540      	adds	r5, #64	@ 0x40
c0de0d30:	f10b 0b0c 	add.w	fp, fp, #12
c0de0d34:	f10a 0a04 	add.w	sl, sl, #4
c0de0d38:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d3a:	3601      	adds	r6, #1
c0de0d3c:	2800      	cmp	r0, #0
c0de0d3e:	d0c1      	beq.n	c0de0cc4 <handler_cmd_Interpolate+0x90>
c0de0d40:	e7b1      	b.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d42:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d44:	2303      	movs	r3, #3
c0de0d46:	9000      	str	r0, [sp, #0]
c0de0d48:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d4a:	a928      	add	r1, sp, #160	@ 0xa0
c0de0d4c:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0d4e:	f001 f8c2 	bl	c0de1ed6 <zkn_frost_interpolate_secrets>
c0de0d52:	2800      	cmp	r0, #0
c0de0d54:	d1a7      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d56:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d58:	a944      	add	r1, sp, #272	@ 0x110
c0de0d5a:	2220      	movs	r2, #32
c0de0d5c:	31c0      	adds	r1, #192	@ 0xc0
c0de0d5e:	f006 f99f 	bl	c0de70a0 <cx_bn_export>
c0de0d62:	2800      	cmp	r0, #0
c0de0d64:	d19f      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d66:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d68:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0d6a:	ab03      	add	r3, sp, #12
c0de0d6c:	9901      	ldr	r1, [sp, #4]
c0de0d6e:	f001 fe45 	bl	c0de29fc <tEdwards_scalarMul_bn>
c0de0d72:	2800      	cmp	r0, #0
c0de0d74:	d197      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d76:	a844      	add	r0, sp, #272	@ 0x110
c0de0d78:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0d7c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d7e:	a903      	add	r1, sp, #12
c0de0d80:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0d82:	f001 fdb6 	bl	c0de28f2 <tEdwards_export>
c0de0d86:	2800      	cmp	r0, #0
c0de0d88:	d18d      	bne.n	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d8a:	a844      	add	r0, sp, #272	@ 0x110
c0de0d8c:	f000 fa20 	bl	c0de11d0 <OUTLINED_FUNCTION_5>
c0de0d90:	f006 f934 	bl	c0de6ffc <cx_bn_unlock>
c0de0d94:	2800      	cmp	r0, #0
c0de0d96:	f47f af86 	bne.w	c0de0ca6 <handler_cmd_Interpolate+0x72>
c0de0d9a:	2000      	movs	r0, #0
c0de0d9c:	e785      	b.n	c0de0caa <handler_cmd_Interpolate+0x76>

c0de0d9e <handler_cmd_Split>:
c0de0d9e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0da2:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0da6:	4604      	mov	r4, r0
c0de0da8:	6800      	ldr	r0, [r0, #0]
c0de0daa:	22ff      	movs	r2, #255	@ 0xff
c0de0dac:	7805      	ldrb	r5, [r0, #0]
c0de0dae:	2000      	movs	r0, #0
c0de0db0:	a948      	add	r1, sp, #288	@ 0x120
c0de0db2:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0db6:	d002      	beq.n	c0de0dbe <handler_cmd_Split+0x20>
c0de0db8:	540a      	strb	r2, [r1, r0]
c0de0dba:	3001      	adds	r0, #1
c0de0dbc:	e7f9      	b.n	c0de0db2 <handler_cmd_Split+0x14>
c0de0dbe:	f000 f9f3 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0dc2:	bb98      	cbnz	r0, c0de0e2c <handler_cmd_Split+0x8e>
c0de0dc4:	a832      	add	r0, sp, #200	@ 0xc8
c0de0dc6:	4629      	mov	r1, r5
c0de0dc8:	f001 fc08 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de0dcc:	bb70      	cbnz	r0, c0de0e2c <handler_cmd_Split+0x8e>
c0de0dce:	6820      	ldr	r0, [r4, #0]
c0de0dd0:	2200      	movs	r2, #0
c0de0dd2:	a91a      	add	r1, sp, #104	@ 0x68
c0de0dd4:	3002      	adds	r0, #2
c0de0dd6:	2a20      	cmp	r2, #32
c0de0dd8:	d003      	beq.n	c0de0de2 <handler_cmd_Split+0x44>
c0de0dda:	5c83      	ldrb	r3, [r0, r2]
c0de0ddc:	548b      	strb	r3, [r1, r2]
c0de0dde:	3201      	adds	r2, #1
c0de0de0:	e7f9      	b.n	c0de0dd6 <handler_cmd_Split+0x38>
c0de0de2:	6862      	ldr	r2, [r4, #4]
c0de0de4:	3a02      	subs	r2, #2
c0de0de6:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0dea:	f101 0220 	add.w	r2, r1, #32
c0de0dee:	a888      	add	r0, sp, #544	@ 0x220
c0de0df0:	2101      	movs	r1, #1
c0de0df2:	f005 fe7e 	bl	c0de6af2 <cx_blake2b_512_hash_iovec>
c0de0df6:	b9c8      	cbnz	r0, c0de0e2c <handler_cmd_Split+0x8e>
c0de0df8:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0dfa:	2100      	movs	r1, #0
c0de0dfc:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0dfe:	1d0d      	adds	r5, r1, #4
c0de0e00:	2d10      	cmp	r5, #16
c0de0e02:	d00b      	beq.n	c0de0e1c <handler_cmd_Split+0x7e>
c0de0e04:	1860      	adds	r0, r4, r1
c0de0e06:	2120      	movs	r1, #32
c0de0e08:	2320      	movs	r3, #32
c0de0e0a:	f102 0620 	add.w	r6, r2, #32
c0de0e0e:	f006 f907 	bl	c0de7020 <cx_bn_alloc_init>
c0de0e12:	2800      	cmp	r0, #0
c0de0e14:	4632      	mov	r2, r6
c0de0e16:	4629      	mov	r1, r5
c0de0e18:	d0f1      	beq.n	c0de0dfe <handler_cmd_Split+0x60>
c0de0e1a:	e007      	b.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0e1c:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e1e:	f000 f9cd 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de0e22:	b918      	cbnz	r0, c0de0e2c <handler_cmd_Split+0x8e>
c0de0e24:	a809      	add	r0, sp, #36	@ 0x24
c0de0e26:	f000 f9c9 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de0e2a:	b128      	cbz	r0, c0de0e38 <handler_cmd_Split+0x9a>
c0de0e2c:	f000 f9c0 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de0e30:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0e34:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0e38:	f04f 0800 	mov.w	r8, #0
c0de0e3c:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0e40:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0e42:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0e46:	2400      	movs	r4, #0
c0de0e48:	f1b8 0f10 	cmp.w	r8, #16
c0de0e4c:	d04d      	beq.n	c0de0eea <handler_cmd_Split+0x14c>
c0de0e4e:	a805      	add	r0, sp, #20
c0de0e50:	2120      	movs	r1, #32
c0de0e52:	eb00 0708 	add.w	r7, r0, r8
c0de0e56:	4638      	mov	r0, r7
c0de0e58:	f006 f8d8 	bl	c0de700c <cx_bn_alloc>
c0de0e5c:	2800      	cmp	r0, #0
c0de0e5e:	d1e5      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0e60:	a801      	add	r0, sp, #4
c0de0e62:	2120      	movs	r1, #32
c0de0e64:	eb00 0508 	add.w	r5, r0, r8
c0de0e68:	4628      	mov	r0, r5
c0de0e6a:	f006 f8cf 	bl	c0de700c <cx_bn_alloc>
c0de0e6e:	2800      	cmp	r0, #0
c0de0e70:	d1dc      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0e72:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0e74:	4621      	mov	r1, r4
c0de0e76:	f006 f909 	bl	c0de708c <cx_bn_set_u32>
c0de0e7a:	2800      	cmp	r0, #0
c0de0e7c:	d1d6      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0e7e:	6828      	ldr	r0, [r5, #0]
c0de0e80:	4621      	mov	r1, r4
c0de0e82:	f006 f903 	bl	c0de708c <cx_bn_set_u32>
c0de0e86:	2800      	cmp	r0, #0
c0de0e88:	d1d0      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0e8a:	4650      	mov	r0, sl
c0de0e8c:	4631      	mov	r1, r6
c0de0e8e:	f001 fa25 	bl	c0de22dc <tEdwards_alloc>
c0de0e92:	2800      	cmp	r0, #0
c0de0e94:	d1ca      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0e96:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0e9a:	2202      	movs	r2, #2
c0de0e9c:	9000      	str	r0, [sp, #0]
c0de0e9e:	4650      	mov	r0, sl
c0de0ea0:	a917      	add	r1, sp, #92	@ 0x5c
c0de0ea2:	f001 f85a 	bl	c0de1f5a <zkn_evalshare>
c0de0ea6:	2800      	cmp	r0, #0
c0de0ea8:	d1c0      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0eaa:	6838      	ldr	r0, [r7, #0]
c0de0eac:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0eae:	f006 f8e3 	bl	c0de7078 <cx_bn_copy>
c0de0eb2:	2800      	cmp	r0, #0
c0de0eb4:	d1ba      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0eb6:	4650      	mov	r0, sl
c0de0eb8:	4631      	mov	r1, r6
c0de0eba:	f001 fd40 	bl	c0de293e <tEdwards_normalize>
c0de0ebe:	2800      	cmp	r0, #0
c0de0ec0:	d1b4      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0ec2:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ec4:	4659      	mov	r1, fp
c0de0ec6:	f000 f976 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0eca:	2800      	cmp	r0, #0
c0de0ecc:	d1ae      	bne.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0ece:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ed0:	f10b 0120 	add.w	r1, fp, #32
c0de0ed4:	f000 f96f 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0ed8:	360c      	adds	r6, #12
c0de0eda:	3401      	adds	r4, #1
c0de0edc:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0ee0:	f108 0804 	add.w	r8, r8, #4
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d0af      	beq.n	c0de0e48 <handler_cmd_Split+0xaa>
c0de0ee8:	e7a0      	b.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0eea:	2100      	movs	r1, #0
c0de0eec:	1d0c      	adds	r4, r1, #4
c0de0eee:	2c10      	cmp	r4, #16
c0de0ef0:	d007      	beq.n	c0de0f02 <handler_cmd_Split+0x164>
c0de0ef2:	a817      	add	r0, sp, #92	@ 0x5c
c0de0ef4:	4408      	add	r0, r1
c0de0ef6:	f006 f89f 	bl	c0de7038 <cx_bn_destroy>
c0de0efa:	2800      	cmp	r0, #0
c0de0efc:	4621      	mov	r1, r4
c0de0efe:	d0f5      	beq.n	c0de0eec <handler_cmd_Split+0x14e>
c0de0f00:	e794      	b.n	c0de0e2c <handler_cmd_Split+0x8e>
c0de0f02:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f04:	2303      	movs	r3, #3
c0de0f06:	9000      	str	r0, [sp, #0]
c0de0f08:	a801      	add	r0, sp, #4
c0de0f0a:	1d01      	adds	r1, r0, #4
c0de0f0c:	a805      	add	r0, sp, #20
c0de0f0e:	1d02      	adds	r2, r0, #4
c0de0f10:	a832      	add	r0, sp, #200	@ 0xc8
c0de0f12:	f000 ffe0 	bl	c0de1ed6 <zkn_frost_interpolate_secrets>
c0de0f16:	2800      	cmp	r0, #0
c0de0f18:	f47f af88 	bne.w	c0de0e2c <handler_cmd_Split+0x8e>
c0de0f1c:	a848      	add	r0, sp, #288	@ 0x120
c0de0f1e:	f000 f957 	bl	c0de11d0 <OUTLINED_FUNCTION_5>
c0de0f22:	f006 f86b 	bl	c0de6ffc <cx_bn_unlock>
c0de0f26:	2800      	cmp	r0, #0
c0de0f28:	f47f af80 	bne.w	c0de0e2c <handler_cmd_Split+0x8e>
c0de0f2c:	2000      	movs	r0, #0
c0de0f2e:	e77f      	b.n	c0de0e30 <handler_cmd_Split+0x92>

c0de0f30 <handler_cmd_frostH>:
c0de0f30:	b5b0      	push	{r4, r5, r7, lr}
c0de0f32:	b0d8      	sub	sp, #352	@ 0x160
c0de0f34:	4604      	mov	r4, r0
c0de0f36:	f000 f937 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0f3a:	2800      	cmp	r0, #0
c0de0f3c:	d142      	bne.n	c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f3e:	6820      	ldr	r0, [r4, #0]
c0de0f40:	7801      	ldrb	r1, [r0, #0]
c0de0f42:	a802      	add	r0, sp, #8
c0de0f44:	f001 fb4a 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de0f48:	bbe0      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f4a:	a801      	add	r0, sp, #4
c0de0f4c:	f000 f936 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de0f50:	bbc0      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f52:	f000 f936 	bl	c0de11c2 <OUTLINED_FUNCTION_4>
c0de0f56:	f002 f85f 	bl	c0de3018 <Babyfrost_H1>
c0de0f5a:	bb98      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f5c:	9801      	ldr	r0, [sp, #4]
c0de0f5e:	ad18      	add	r5, sp, #96	@ 0x60
c0de0f60:	2220      	movs	r2, #32
c0de0f62:	4629      	mov	r1, r5
c0de0f64:	f006 f89c 	bl	c0de70a0 <cx_bn_export>
c0de0f68:	bb60      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f6a:	f000 f92a 	bl	c0de11c2 <OUTLINED_FUNCTION_4>
c0de0f6e:	f002 f861 	bl	c0de3034 <Babyfrost_H3>
c0de0f72:	bb38      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f74:	9801      	ldr	r0, [sp, #4]
c0de0f76:	f105 0120 	add.w	r1, r5, #32
c0de0f7a:	f000 f91c 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0f7e:	bb08      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f80:	f000 f91f 	bl	c0de11c2 <OUTLINED_FUNCTION_4>
c0de0f84:	f002 f86a 	bl	c0de305c <Babyfrost_H4>
c0de0f88:	b9e0      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f8a:	9801      	ldr	r0, [sp, #4]
c0de0f8c:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0f90:	f000 f911 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0f94:	b9b0      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0f96:	f000 f914 	bl	c0de11c2 <OUTLINED_FUNCTION_4>
c0de0f9a:	f002 f86d 	bl	c0de3078 <Babyfrost_H5>
c0de0f9e:	b988      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0fa0:	9801      	ldr	r0, [sp, #4]
c0de0fa2:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de0fa6:	f000 f906 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0faa:	b958      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0fac:	9804      	ldr	r0, [sp, #16]
c0de0fae:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de0fb2:	f000 f900 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de0fb6:	b928      	cbnz	r0, c0de0fc4 <handler_cmd_frostH+0x94>
c0de0fb8:	a818      	add	r0, sp, #96	@ 0x60
c0de0fba:	f000 f909 	bl	c0de11d0 <OUTLINED_FUNCTION_5>
c0de0fbe:	f006 f81d 	bl	c0de6ffc <cx_bn_unlock>
c0de0fc2:	b118      	cbz	r0, c0de0fcc <handler_cmd_frostH+0x9c>
c0de0fc4:	f000 f8f4 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de0fc8:	b058      	add	sp, #352	@ 0x160
c0de0fca:	bdb0      	pop	{r4, r5, r7, pc}
c0de0fcc:	2000      	movs	r0, #0
c0de0fce:	e7fb      	b.n	c0de0fc8 <handler_cmd_frostH+0x98>

c0de0fd0 <handler_cmd_encodeCommitment>:
c0de0fd0:	b510      	push	{r4, lr}
c0de0fd2:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de0fd6:	4604      	mov	r4, r0
c0de0fd8:	f000 f8e6 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de0fdc:	bb10      	cbnz	r0, c0de1024 <handler_cmd_encodeCommitment+0x54>
c0de0fde:	6820      	ldr	r0, [r4, #0]
c0de0fe0:	7801      	ldrb	r1, [r0, #0]
c0de0fe2:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de0fe4:	f001 fafa 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de0fe8:	b9e0      	cbnz	r0, c0de1024 <handler_cmd_encodeCommitment+0x54>
c0de0fea:	a879      	add	r0, sp, #484	@ 0x1e4
c0de0fec:	f000 f8e6 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de0ff0:	b9c0      	cbnz	r0, c0de1024 <handler_cmd_encodeCommitment+0x54>
c0de0ff2:	ac01      	add	r4, sp, #4
c0de0ff4:	4910      	ldr	r1, [pc, #64]	@ (c0de1038 <handler_cmd_encodeCommitment+0x68>)
c0de0ff6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de0ffa:	4620      	mov	r0, r4
c0de0ffc:	4479      	add	r1, pc
c0de0ffe:	f006 fabb 	bl	c0de7578 <__aeabi_memcpy>
c0de1002:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1004:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1006:	4621      	mov	r1, r4
c0de1008:	2203      	movs	r2, #3
c0de100a:	f000 ffdf 	bl	c0de1fcc <zkn_encode_group_commitmentHash>
c0de100e:	b948      	cbnz	r0, c0de1024 <handler_cmd_encodeCommitment+0x54>
c0de1010:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1012:	a990      	add	r1, sp, #576	@ 0x240
c0de1014:	2220      	movs	r2, #32
c0de1016:	3120      	adds	r1, #32
c0de1018:	f006 f842 	bl	c0de70a0 <cx_bn_export>
c0de101c:	b910      	cbnz	r0, c0de1024 <handler_cmd_encodeCommitment+0x54>
c0de101e:	f005 ffed 	bl	c0de6ffc <cx_bn_unlock>
c0de1022:	b120      	cbz	r0, c0de102e <handler_cmd_encodeCommitment+0x5e>
c0de1024:	f000 f8c4 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de1028:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de102c:	bd10      	pop	{r4, pc}
c0de102e:	a890      	add	r0, sp, #576	@ 0x240
c0de1030:	f000 f8ea 	bl	c0de1208 <OUTLINED_FUNCTION_11>
c0de1034:	2000      	movs	r0, #0
c0de1036:	e7f7      	b.n	c0de1028 <handler_cmd_encodeCommitment+0x58>
c0de1038:	00006eb0 	.word	0x00006eb0

c0de103c <handler_cmd_GroupCommitment>:
c0de103c:	b570      	push	{r4, r5, r6, lr}
c0de103e:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1042:	4604      	mov	r4, r0
c0de1044:	f000 f8b0 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de1048:	bb58      	cbnz	r0, c0de10a2 <handler_cmd_GroupCommitment+0x66>
c0de104a:	6820      	ldr	r0, [r4, #0]
c0de104c:	7801      	ldrb	r1, [r0, #0]
c0de104e:	a894      	add	r0, sp, #592	@ 0x250
c0de1050:	f001 fac4 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de1054:	bb28      	cbnz	r0, c0de10a2 <handler_cmd_GroupCommitment+0x66>
c0de1056:	a894      	add	r0, sp, #592	@ 0x250
c0de1058:	ac91      	add	r4, sp, #580	@ 0x244
c0de105a:	4621      	mov	r1, r4
c0de105c:	f001 f93e 	bl	c0de22dc <tEdwards_alloc>
c0de1060:	b9f8      	cbnz	r0, c0de10a2 <handler_cmd_GroupCommitment+0x66>
c0de1062:	ad19      	add	r5, sp, #100	@ 0x64
c0de1064:	4914      	ldr	r1, [pc, #80]	@ (c0de10b8 <handler_cmd_GroupCommitment+0x7c>)
c0de1066:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de106a:	4628      	mov	r0, r5
c0de106c:	4479      	add	r1, pc
c0de106e:	f006 fa83 	bl	c0de7578 <__aeabi_memcpy>
c0de1072:	ae01      	add	r6, sp, #4
c0de1074:	4911      	ldr	r1, [pc, #68]	@ (c0de10bc <handler_cmd_GroupCommitment+0x80>)
c0de1076:	2260      	movs	r2, #96	@ 0x60
c0de1078:	4630      	mov	r0, r6
c0de107a:	4479      	add	r1, pc
c0de107c:	f006 fa7c 	bl	c0de7578 <__aeabi_memcpy>
c0de1080:	9400      	str	r4, [sp, #0]
c0de1082:	a894      	add	r0, sp, #592	@ 0x250
c0de1084:	4629      	mov	r1, r5
c0de1086:	f000 f8b8 	bl	c0de11fa <OUTLINED_FUNCTION_9>
c0de108a:	b950      	cbnz	r0, c0de10a2 <handler_cmd_GroupCommitment+0x66>
c0de108c:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de108e:	a894      	add	r0, sp, #592	@ 0x250
c0de1090:	a991      	add	r1, sp, #580	@ 0x244
c0de1092:	f102 0320 	add.w	r3, r2, #32
c0de1096:	f001 fc2c 	bl	c0de28f2 <tEdwards_export>
c0de109a:	b910      	cbnz	r0, c0de10a2 <handler_cmd_GroupCommitment+0x66>
c0de109c:	f005 ffae 	bl	c0de6ffc <cx_bn_unlock>
c0de10a0:	b120      	cbz	r0, c0de10ac <handler_cmd_GroupCommitment+0x70>
c0de10a2:	f000 f885 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de10a6:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de10aa:	bd70      	pop	{r4, r5, r6, pc}
c0de10ac:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de10ae:	2140      	movs	r1, #64	@ 0x40
c0de10b0:	f7ff fab4 	bl	c0de061c <io_send_response_pointer>
c0de10b4:	2000      	movs	r0, #0
c0de10b6:	e7f6      	b.n	c0de10a6 <handler_cmd_GroupCommitment+0x6a>
c0de10b8:	00007020 	.word	0x00007020
c0de10bc:	000071f2 	.word	0x000071f2

c0de10c0 <handler_cmd_BindingFactors>:
c0de10c0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de10c4:	f5ad 7d65 	sub.w	sp, sp, #916	@ 0x394
c0de10c8:	4604      	mov	r4, r0
c0de10ca:	f000 f86d 	bl	c0de11a8 <OUTLINED_FUNCTION_0>
c0de10ce:	2800      	cmp	r0, #0
c0de10d0:	d15c      	bne.n	c0de118c <handler_cmd_BindingFactors+0xcc>
c0de10d2:	6820      	ldr	r0, [r4, #0]
c0de10d4:	7801      	ldrb	r1, [r0, #0]
c0de10d6:	a88f      	add	r0, sp, #572	@ 0x23c
c0de10d8:	f001 fa80 	bl	c0de25dc <tEdwards_Curve_alloc_init>
c0de10dc:	2800      	cmp	r0, #0
c0de10de:	d155      	bne.n	c0de118c <handler_cmd_BindingFactors+0xcc>
c0de10e0:	a88e      	add	r0, sp, #568	@ 0x238
c0de10e2:	f000 f86b 	bl	c0de11bc <OUTLINED_FUNCTION_3>
c0de10e6:	2800      	cmp	r0, #0
c0de10e8:	d150      	bne.n	c0de118c <handler_cmd_BindingFactors+0xcc>
c0de10ea:	a88f      	add	r0, sp, #572	@ 0x23c
c0de10ec:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de10ee:	4621      	mov	r1, r4
c0de10f0:	f001 f8f4 	bl	c0de22dc <tEdwards_alloc>
c0de10f4:	2800      	cmp	r0, #0
c0de10f6:	d149      	bne.n	c0de118c <handler_cmd_BindingFactors+0xcc>
c0de10f8:	ad13      	add	r5, sp, #76	@ 0x4c
c0de10fa:	4928      	ldr	r1, [pc, #160]	@ (c0de119c <handler_cmd_BindingFactors+0xdc>)
c0de10fc:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1100:	4628      	mov	r0, r5
c0de1102:	4479      	add	r1, pc
c0de1104:	f006 fa38 	bl	c0de7578 <__aeabi_memcpy>
c0de1108:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de110a:	a88f      	add	r0, sp, #572	@ 0x23c
c0de110c:	4629      	mov	r1, r5
c0de110e:	2203      	movs	r2, #3
c0de1110:	f000 ff5c 	bl	c0de1fcc <zkn_encode_group_commitmentHash>
c0de1114:	bbd0      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de1116:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de111a:	f000 f868 	bl	c0de11ee <OUTLINED_FUNCTION_8>
c0de111e:	bba8      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de1120:	491f      	ldr	r1, [pc, #124]	@ (c0de11a0 <handler_cmd_BindingFactors+0xe0>)
c0de1122:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de1126:	2220      	movs	r2, #32
c0de1128:	4650      	mov	r0, sl
c0de112a:	4479      	add	r1, pc
c0de112c:	f006 fa24 	bl	c0de7578 <__aeabi_memcpy>
c0de1130:	ad03      	add	r5, sp, #12
c0de1132:	491c      	ldr	r1, [pc, #112]	@ (c0de11a4 <handler_cmd_BindingFactors+0xe4>)
c0de1134:	2220      	movs	r2, #32
c0de1136:	4628      	mov	r0, r5
c0de1138:	4479      	add	r1, pc
c0de113a:	f006 fa1d 	bl	c0de7578 <__aeabi_memcpy>
c0de113e:	f000 f84e 	bl	c0de11de <OUTLINED_FUNCTION_7>
c0de1142:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1144:	aa13      	add	r2, sp, #76	@ 0x4c
c0de1146:	f001 f829 	bl	c0de219c <zkn_compute_binding_factors>
c0de114a:	b9f8      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de114c:	9400      	str	r4, [sp, #0]
c0de114e:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1150:	a913      	add	r1, sp, #76	@ 0x4c
c0de1152:	f000 f852 	bl	c0de11fa <OUTLINED_FUNCTION_9>
c0de1156:	b9c8      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de1158:	a88f      	add	r0, sp, #572	@ 0x23c
c0de115a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de115e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1162:	a98b      	add	r1, sp, #556	@ 0x22c
c0de1164:	f001 fbc5 	bl	c0de28f2 <tEdwards_export>
c0de1168:	b980      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de116a:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de116c:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de1170:	f000 f821 	bl	c0de11b6 <OUTLINED_FUNCTION_2>
c0de1174:	b950      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de1176:	a8a5      	add	r0, sp, #660	@ 0x294
c0de1178:	21e0      	movs	r1, #224	@ 0xe0
c0de117a:	f7ff fa4f 	bl	c0de061c <io_send_response_pointer>
c0de117e:	a88e      	add	r0, sp, #568	@ 0x238
c0de1180:	f005 ff5a 	bl	c0de7038 <cx_bn_destroy>
c0de1184:	b910      	cbnz	r0, c0de118c <handler_cmd_BindingFactors+0xcc>
c0de1186:	f005 ff39 	bl	c0de6ffc <cx_bn_unlock>
c0de118a:	b128      	cbz	r0, c0de1198 <handler_cmd_BindingFactors+0xd8>
c0de118c:	f000 f810 	bl	c0de11b0 <OUTLINED_FUNCTION_1>
c0de1190:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de1194:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1198:	2000      	movs	r0, #0
c0de119a:	e7f9      	b.n	c0de1190 <handler_cmd_BindingFactors+0xd0>
c0de119c:	000071ca 	.word	0x000071ca
c0de11a0:	00006ba2 	.word	0x00006ba2
c0de11a4:	00006cb4 	.word	0x00006cb4

c0de11a8 <OUTLINED_FUNCTION_0>:
c0de11a8:	2020      	movs	r0, #32
c0de11aa:	2100      	movs	r1, #0
c0de11ac:	f005 bf1c 	b.w	c0de6fe8 <cx_bn_lock>

c0de11b0 <OUTLINED_FUNCTION_1>:
c0de11b0:	b280      	uxth	r0, r0
c0de11b2:	f7ff ba3e 	b.w	c0de0632 <io_send_sw>

c0de11b6 <OUTLINED_FUNCTION_2>:
c0de11b6:	2220      	movs	r2, #32
c0de11b8:	f005 bf72 	b.w	c0de70a0 <cx_bn_export>

c0de11bc <OUTLINED_FUNCTION_3>:
c0de11bc:	2120      	movs	r1, #32
c0de11be:	f005 bf25 	b.w	c0de700c <cx_bn_alloc>

c0de11c2 <OUTLINED_FUNCTION_4>:
c0de11c2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de11c6:	9b01      	ldr	r3, [sp, #4]
c0de11c8:	9a04      	ldr	r2, [sp, #16]
c0de11ca:	3001      	adds	r0, #1
c0de11cc:	3901      	subs	r1, #1
c0de11ce:	4770      	bx	lr

c0de11d0 <OUTLINED_FUNCTION_5>:
c0de11d0:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de11d4:	f7ff ba22 	b.w	c0de061c <io_send_response_pointer>

c0de11d8 <OUTLINED_FUNCTION_6>:
c0de11d8:	2320      	movs	r3, #32
c0de11da:	f005 bf21 	b.w	c0de7020 <cx_bn_alloc_init>

c0de11de <OUTLINED_FUNCTION_7>:
c0de11de:	f108 0620 	add.w	r6, r8, #32
c0de11e2:	e9cd 5700 	strd	r5, r7, [sp]
c0de11e6:	4651      	mov	r1, sl
c0de11e8:	2303      	movs	r3, #3
c0de11ea:	9602      	str	r6, [sp, #8]
c0de11ec:	4770      	bx	lr

c0de11ee <OUTLINED_FUNCTION_8>:
c0de11ee:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11f0:	2220      	movs	r2, #32
c0de11f2:	2720      	movs	r7, #32
c0de11f4:	4641      	mov	r1, r8
c0de11f6:	f005 bf53 	b.w	c0de70a0 <cx_bn_export>

c0de11fa <OUTLINED_FUNCTION_9>:
c0de11fa:	4632      	mov	r2, r6
c0de11fc:	2303      	movs	r3, #3
c0de11fe:	f000 bf62 	b.w	c0de20c6 <zkn_compute_group_commitment>

c0de1202 <OUTLINED_FUNCTION_10>:
c0de1202:	4622      	mov	r2, r4
c0de1204:	f001 bb75 	b.w	c0de28f2 <tEdwards_export>

c0de1208 <OUTLINED_FUNCTION_11>:
c0de1208:	2120      	movs	r1, #32
c0de120a:	f7ff ba07 	b.w	c0de061c <io_send_response_pointer>
	...

c0de1210 <helper_send_response_pubkey>:
c0de1210:	b5b0      	push	{r4, r5, r7, lr}
c0de1212:	b09a      	sub	sp, #104	@ 0x68
c0de1214:	2041      	movs	r0, #65	@ 0x41
c0de1216:	f10d 0405 	add.w	r4, sp, #5
c0de121a:	2241      	movs	r2, #65	@ 0x41
c0de121c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1220:	480b      	ldr	r0, [pc, #44]	@ (c0de1250 <helper_send_response_pubkey+0x40>)
c0de1222:	eb09 0500 	add.w	r5, r9, r0
c0de1226:	1c60      	adds	r0, r4, #1
c0de1228:	f105 0108 	add.w	r1, r5, #8
c0de122c:	f006 f9a4 	bl	c0de7578 <__aeabi_memcpy>
c0de1230:	2020      	movs	r0, #32
c0de1232:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1236:	2220      	movs	r2, #32
c0de1238:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de123c:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1240:	f006 f99a 	bl	c0de7578 <__aeabi_memcpy>
c0de1244:	4620      	mov	r0, r4
c0de1246:	2163      	movs	r1, #99	@ 0x63
c0de1248:	f000 f804 	bl	c0de1254 <io_send_response_pointer>
c0de124c:	b01a      	add	sp, #104	@ 0x68
c0de124e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1250:	00000000 	.word	0x00000000

c0de1254 <io_send_response_pointer>:
c0de1254:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1256:	2200      	movs	r2, #0
c0de1258:	ab01      	add	r3, sp, #4
c0de125a:	c307      	stmia	r3!, {r0, r1, r2}
c0de125c:	a801      	add	r0, sp, #4
c0de125e:	2101      	movs	r1, #1
c0de1260:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de1264:	f005 f9d8 	bl	c0de6618 <io_send_response_buffers>
c0de1268:	b004      	add	sp, #16
c0de126a:	bd80      	pop	{r7, pc}

c0de126c <helper_send_response_sig>:
c0de126c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de126e:	b093      	sub	sp, #76	@ 0x4c
c0de1270:	f10d 0402 	add.w	r4, sp, #2
c0de1274:	2149      	movs	r1, #73	@ 0x49
c0de1276:	1c65      	adds	r5, r4, #1
c0de1278:	4628      	mov	r0, r5
c0de127a:	f006 f987 	bl	c0de758c <__aeabi_memclr>
c0de127e:	480b      	ldr	r0, [pc, #44]	@ (c0de12ac <helper_send_response_sig+0x40>)
c0de1280:	eb09 0700 	add.w	r7, r9, r0
c0de1284:	4628      	mov	r0, r5
c0de1286:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de128a:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de128e:	4632      	mov	r2, r6
c0de1290:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1294:	f006 f970 	bl	c0de7578 <__aeabi_memcpy>
c0de1298:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de129c:	1930      	adds	r0, r6, r4
c0de129e:	7041      	strb	r1, [r0, #1]
c0de12a0:	1cb1      	adds	r1, r6, #2
c0de12a2:	4620      	mov	r0, r4
c0de12a4:	f7ff ffd6 	bl	c0de1254 <io_send_response_pointer>
c0de12a8:	b013      	add	sp, #76	@ 0x4c
c0de12aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de12ac:	00000000 	.word	0x00000000

c0de12b0 <swap_handle_check_address>:
c0de12b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de12b4:	b0bc      	sub	sp, #240	@ 0xf0
c0de12b6:	4604      	mov	r4, r0
c0de12b8:	2000      	movs	r0, #0
c0de12ba:	68a5      	ldr	r5, [r4, #8]
c0de12bc:	61a0      	str	r0, [r4, #24]
c0de12be:	2d00      	cmp	r5, #0
c0de12c0:	d04d      	beq.n	c0de135e <swap_handle_check_address+0xae>
c0de12c2:	6920      	ldr	r0, [r4, #16]
c0de12c4:	2800      	cmp	r0, #0
c0de12c6:	d04a      	beq.n	c0de135e <swap_handle_check_address+0xae>
c0de12c8:	f006 f9bc 	bl	c0de7644 <strlen>
c0de12cc:	2828      	cmp	r0, #40	@ 0x28
c0de12ce:	d146      	bne.n	c0de135e <swap_handle_check_address+0xae>
c0de12d0:	7b20      	ldrb	r0, [r4, #12]
c0de12d2:	f04f 0800 	mov.w	r8, #0
c0de12d6:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de12d8:	2161      	movs	r1, #97	@ 0x61
c0de12da:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de12de:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de12e0:	ad15      	add	r5, sp, #84	@ 0x54
c0de12e2:	4628      	mov	r0, r5
c0de12e4:	f006 f952 	bl	c0de758c <__aeabi_memclr>
c0de12e8:	ae39      	add	r6, sp, #228	@ 0xe4
c0de12ea:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de12ee:	4630      	mov	r0, r6
c0de12f0:	f004 ff40 	bl	c0de6174 <buffer_read_u8>
c0de12f4:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de12f8:	af2e      	add	r7, sp, #184	@ 0xb8
c0de12fa:	4630      	mov	r0, r6
c0de12fc:	4639      	mov	r1, r7
c0de12fe:	f004 ff8c 	bl	c0de621a <buffer_read_bip32_path>
c0de1302:	2005      	movs	r0, #5
c0de1304:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1308:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de130c:	463a      	mov	r2, r7
c0de130e:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1312:	e9cd 5100 	strd	r5, r1, [sp]
c0de1316:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de131a:	2000      	movs	r0, #0
c0de131c:	2121      	movs	r1, #33	@ 0x21
c0de131e:	f005 f83d 	bl	c0de639c <bip32_derive_with_seed_get_pubkey_256>
c0de1322:	b9e0      	cbnz	r0, c0de135e <swap_handle_check_address+0xae>
c0de1324:	ad10      	add	r5, sp, #64	@ 0x40
c0de1326:	2114      	movs	r1, #20
c0de1328:	4628      	mov	r0, r5
c0de132a:	f006 f92f 	bl	c0de758c <__aeabi_memclr>
c0de132e:	a815      	add	r0, sp, #84	@ 0x54
c0de1330:	4629      	mov	r1, r5
c0de1332:	2214      	movs	r2, #20
c0de1334:	f7fe fe78 	bl	c0de0028 <address_from_pubkey>
c0de1338:	ae05      	add	r6, sp, #20
c0de133a:	2129      	movs	r1, #41	@ 0x29
c0de133c:	4630      	mov	r0, r6
c0de133e:	f006 f925 	bl	c0de758c <__aeabi_memclr>
c0de1342:	4628      	mov	r0, r5
c0de1344:	2114      	movs	r1, #20
c0de1346:	4632      	mov	r2, r6
c0de1348:	2329      	movs	r3, #41	@ 0x29
c0de134a:	f005 f905 	bl	c0de6558 <format_hex>
c0de134e:	6921      	ldr	r1, [r4, #16]
c0de1350:	4630      	mov	r0, r6
c0de1352:	2229      	movs	r2, #41	@ 0x29
c0de1354:	f006 f97e 	bl	c0de7654 <strncmp>
c0de1358:	b908      	cbnz	r0, c0de135e <swap_handle_check_address+0xae>
c0de135a:	2001      	movs	r0, #1
c0de135c:	61a0      	str	r0, [r4, #24]
c0de135e:	b03c      	add	sp, #240	@ 0xf0
c0de1360:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de1364 <swap_handle_get_printable_amount>:
c0de1364:	b570      	push	{r4, r5, r6, lr}
c0de1366:	b08c      	sub	sp, #48	@ 0x30
c0de1368:	ac04      	add	r4, sp, #16
c0de136a:	4606      	mov	r6, r0
c0de136c:	211e      	movs	r1, #30
c0de136e:	4620      	mov	r0, r4
c0de1370:	f006 f90c 	bl	c0de758c <__aeabi_memclr>
c0de1374:	f106 050e 	add.w	r5, r6, #14
c0de1378:	2132      	movs	r1, #50	@ 0x32
c0de137a:	4628      	mov	r0, r5
c0de137c:	f006 f906 	bl	c0de758c <__aeabi_memclr>
c0de1380:	2000      	movs	r0, #0
c0de1382:	7b31      	ldrb	r1, [r6, #12]
c0de1384:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1388:	68b0      	ldr	r0, [r6, #8]
c0de138a:	aa02      	add	r2, sp, #8
c0de138c:	f005 fad0 	bl	c0de6930 <swap_str_to_u64>
c0de1390:	b178      	cbz	r0, c0de13b2 <swap_handle_get_printable_amount+0x4e>
c0de1392:	2003      	movs	r0, #3
c0de1394:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1398:	211e      	movs	r1, #30
c0de139a:	9000      	str	r0, [sp, #0]
c0de139c:	4620      	mov	r0, r4
c0de139e:	f005 f894 	bl	c0de64ca <format_fpu64>
c0de13a2:	9400      	str	r4, [sp, #0]
c0de13a4:	4628      	mov	r0, r5
c0de13a6:	2132      	movs	r1, #50	@ 0x32
c0de13a8:	231e      	movs	r3, #30
c0de13aa:	4a03      	ldr	r2, [pc, #12]	@ (c0de13b8 <swap_handle_get_printable_amount+0x54>)
c0de13ac:	447a      	add	r2, pc
c0de13ae:	f005 fc4f 	bl	c0de6c50 <snprintf>
c0de13b2:	b00c      	add	sp, #48	@ 0x30
c0de13b4:	bd70      	pop	{r4, r5, r6, pc}
c0de13b6:	bf00      	nop
c0de13b8:	0000673e 	.word	0x0000673e

c0de13bc <swap_copy_transaction_parameters>:
c0de13bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de13be:	b093      	sub	sp, #76	@ 0x4c
c0de13c0:	6985      	ldr	r5, [r0, #24]
c0de13c2:	b3ad      	cbz	r5, c0de1430 <swap_copy_transaction_parameters+0x74>
c0de13c4:	4604      	mov	r4, r0
c0de13c6:	4628      	mov	r0, r5
c0de13c8:	f006 f93c 	bl	c0de7644 <strlen>
c0de13cc:	2828      	cmp	r0, #40	@ 0x28
c0de13ce:	d12f      	bne.n	c0de1430 <swap_copy_transaction_parameters+0x74>
c0de13d0:	68a7      	ldr	r7, [r4, #8]
c0de13d2:	b36f      	cbz	r7, c0de1430 <swap_copy_transaction_parameters+0x74>
c0de13d4:	466e      	mov	r6, sp
c0de13d6:	2148      	movs	r1, #72	@ 0x48
c0de13d8:	4630      	mov	r0, r6
c0de13da:	f006 f8d7 	bl	c0de758c <__aeabi_memclr>
c0de13de:	f106 0018 	add.w	r0, r6, #24
c0de13e2:	2100      	movs	r1, #0
c0de13e4:	2928      	cmp	r1, #40	@ 0x28
c0de13e6:	d009      	beq.n	c0de13fc <swap_copy_transaction_parameters+0x40>
c0de13e8:	5c6a      	ldrb	r2, [r5, r1]
c0de13ea:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de13ee:	b2db      	uxtb	r3, r3
c0de13f0:	2b1a      	cmp	r3, #26
c0de13f2:	bf38      	it	cc
c0de13f4:	3a20      	subcc	r2, #32
c0de13f6:	5442      	strb	r2, [r0, r1]
c0de13f8:	3101      	adds	r1, #1
c0de13fa:	e7f3      	b.n	c0de13e4 <swap_copy_transaction_parameters+0x28>
c0de13fc:	7b21      	ldrb	r1, [r4, #12]
c0de13fe:	f106 0208 	add.w	r2, r6, #8
c0de1402:	4638      	mov	r0, r7
c0de1404:	f005 fa94 	bl	c0de6930 <swap_str_to_u64>
c0de1408:	b190      	cbz	r0, c0de1430 <swap_copy_transaction_parameters+0x74>
c0de140a:	7d21      	ldrb	r1, [r4, #20]
c0de140c:	6920      	ldr	r0, [r4, #16]
c0de140e:	f106 0210 	add.w	r2, r6, #16
c0de1412:	f005 fa8d 	bl	c0de6930 <swap_str_to_u64>
c0de1416:	b158      	cbz	r0, c0de1430 <swap_copy_transaction_parameters+0x74>
c0de1418:	2401      	movs	r4, #1
c0de141a:	f88d 4000 	strb.w	r4, [sp]
c0de141e:	f005 fc0b 	bl	c0de6c38 <os_explicit_zero_BSS_segment>
c0de1422:	4805      	ldr	r0, [pc, #20]	@ (c0de1438 <swap_copy_transaction_parameters+0x7c>)
c0de1424:	4669      	mov	r1, sp
c0de1426:	2248      	movs	r2, #72	@ 0x48
c0de1428:	4448      	add	r0, r9
c0de142a:	f006 f8a5 	bl	c0de7578 <__aeabi_memcpy>
c0de142e:	e000      	b.n	c0de1432 <swap_copy_transaction_parameters+0x76>
c0de1430:	2400      	movs	r4, #0
c0de1432:	4620      	mov	r0, r4
c0de1434:	b013      	add	sp, #76	@ 0x4c
c0de1436:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1438:	000002d8 	.word	0x000002d8

c0de143c <swap_check_validity>:
c0de143c:	b570      	push	{r4, r5, r6, lr}
c0de143e:	b08c      	sub	sp, #48	@ 0x30
c0de1440:	4e1d      	ldr	r6, [pc, #116]	@ (c0de14b8 <swap_check_validity+0x7c>)
c0de1442:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1446:	b32c      	cbz	r4, c0de1494 <swap_check_validity+0x58>
c0de1448:	eb09 0406 	add.w	r4, r9, r6
c0de144c:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1450:	4069      	eors	r1, r5
c0de1452:	4060      	eors	r0, r4
c0de1454:	4308      	orrs	r0, r1
c0de1456:	d121      	bne.n	c0de149c <swap_check_validity+0x60>
c0de1458:	eb09 0006 	add.w	r0, r9, r6
c0de145c:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1460:	4059      	eors	r1, r3
c0de1462:	4050      	eors	r0, r2
c0de1464:	4308      	orrs	r0, r1
c0de1466:	d11d      	bne.n	c0de14a4 <swap_check_validity+0x68>
c0de1468:	ad01      	add	r5, sp, #4
c0de146a:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de146c:	2129      	movs	r1, #41	@ 0x29
c0de146e:	4628      	mov	r0, r5
c0de1470:	f006 f88c 	bl	c0de758c <__aeabi_memclr>
c0de1474:	4620      	mov	r0, r4
c0de1476:	2114      	movs	r1, #20
c0de1478:	462a      	mov	r2, r5
c0de147a:	2329      	movs	r3, #41	@ 0x29
c0de147c:	f005 f86c 	bl	c0de6558 <format_hex>
c0de1480:	eb09 0006 	add.w	r0, r9, r6
c0de1484:	4629      	mov	r1, r5
c0de1486:	3018      	adds	r0, #24
c0de1488:	f006 f8d2 	bl	c0de7630 <strcmp>
c0de148c:	b970      	cbnz	r0, c0de14ac <swap_check_validity+0x70>
c0de148e:	2001      	movs	r0, #1
c0de1490:	b00c      	add	sp, #48	@ 0x30
c0de1492:	bd70      	pop	{r4, r5, r6, pc}
c0de1494:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1498:	21ff      	movs	r1, #255	@ 0xff
c0de149a:	e00a      	b.n	c0de14b2 <swap_check_validity+0x76>
c0de149c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de14a0:	2101      	movs	r1, #1
c0de14a2:	e006      	b.n	c0de14b2 <swap_check_validity+0x76>
c0de14a4:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de14a8:	2103      	movs	r1, #3
c0de14aa:	e002      	b.n	c0de14b2 <swap_check_validity+0x76>
c0de14ac:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de14b0:	2102      	movs	r1, #2
c0de14b2:	2200      	movs	r2, #0
c0de14b4:	f005 fa03 	bl	c0de68be <send_swap_error_simple>
c0de14b8:	000002d8 	.word	0x000002d8

c0de14bc <transaction_deserialize>:
c0de14bc:	b570      	push	{r4, r5, r6, lr}
c0de14be:	460d      	mov	r5, r1
c0de14c0:	4604      	mov	r4, r0
c0de14c2:	b910      	cbnz	r0, c0de14ca <transaction_deserialize+0xe>
c0de14c4:	2001      	movs	r0, #1
c0de14c6:	f005 fb47 	bl	c0de6b58 <assert_exit>
c0de14ca:	b915      	cbnz	r5, c0de14d2 <transaction_deserialize+0x16>
c0de14cc:	2001      	movs	r0, #1
c0de14ce:	f005 fb43 	bl	c0de6b58 <assert_exit>
c0de14d2:	6860      	ldr	r0, [r4, #4]
c0de14d4:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de14d8:	d901      	bls.n	c0de14de <transaction_deserialize+0x22>
c0de14da:	20f9      	movs	r0, #249	@ 0xf9
c0de14dc:	e04b      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de14de:	4620      	mov	r0, r4
c0de14e0:	4629      	mov	r1, r5
c0de14e2:	2200      	movs	r2, #0
c0de14e4:	f004 fe5c 	bl	c0de61a0 <buffer_read_u64>
c0de14e8:	b330      	cbz	r0, c0de1538 <transaction_deserialize+0x7c>
c0de14ea:	6820      	ldr	r0, [r4, #0]
c0de14ec:	68a1      	ldr	r1, [r4, #8]
c0de14ee:	4408      	add	r0, r1
c0de14f0:	2114      	movs	r1, #20
c0de14f2:	61a8      	str	r0, [r5, #24]
c0de14f4:	4620      	mov	r0, r4
c0de14f6:	f004 fe32 	bl	c0de615e <buffer_seek_cur>
c0de14fa:	b1f8      	cbz	r0, c0de153c <transaction_deserialize+0x80>
c0de14fc:	f105 0108 	add.w	r1, r5, #8
c0de1500:	4620      	mov	r0, r4
c0de1502:	2200      	movs	r2, #0
c0de1504:	2600      	movs	r6, #0
c0de1506:	f004 fe4b 	bl	c0de61a0 <buffer_read_u64>
c0de150a:	b1c8      	cbz	r0, c0de1540 <transaction_deserialize+0x84>
c0de150c:	f105 0120 	add.w	r1, r5, #32
c0de1510:	4620      	mov	r0, r4
c0de1512:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1516:	f004 fe63 	bl	c0de61e0 <buffer_read_varint>
c0de151a:	6a29      	ldr	r1, [r5, #32]
c0de151c:	b990      	cbnz	r0, c0de1544 <transaction_deserialize+0x88>
c0de151e:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1520:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1524:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1528:	2300      	movs	r3, #0
c0de152a:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de152e:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1532:	d207      	bcs.n	c0de1544 <transaction_deserialize+0x88>
c0de1534:	20fc      	movs	r0, #252	@ 0xfc
c0de1536:	e01e      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de1538:	20ff      	movs	r0, #255	@ 0xff
c0de153a:	e01c      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de153c:	20fe      	movs	r0, #254	@ 0xfe
c0de153e:	e01a      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de1540:	20fd      	movs	r0, #253	@ 0xfd
c0de1542:	e018      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de1544:	6820      	ldr	r0, [r4, #0]
c0de1546:	68a2      	ldr	r2, [r4, #8]
c0de1548:	4410      	add	r0, r2
c0de154a:	61e8      	str	r0, [r5, #28]
c0de154c:	4620      	mov	r0, r4
c0de154e:	f004 fe06 	bl	c0de615e <buffer_seek_cur>
c0de1552:	b168      	cbz	r0, c0de1570 <transaction_deserialize+0xb4>
c0de1554:	f105 031c 	add.w	r3, r5, #28
c0de1558:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de155a:	f000 f80e 	bl	c0de157a <transaction_utils_check_encoding>
c0de155e:	b148      	cbz	r0, c0de1574 <transaction_deserialize+0xb8>
c0de1560:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1564:	f06f 0006 	mvn.w	r0, #6
c0de1568:	428a      	cmp	r2, r1
c0de156a:	bf08      	it	eq
c0de156c:	2001      	moveq	r0, #1
c0de156e:	e002      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de1570:	20fb      	movs	r0, #251	@ 0xfb
c0de1572:	e000      	b.n	c0de1576 <transaction_deserialize+0xba>
c0de1574:	20fa      	movs	r0, #250	@ 0xfa
c0de1576:	b240      	sxtb	r0, r0
c0de1578:	bd70      	pop	{r4, r5, r6, pc}

c0de157a <transaction_utils_check_encoding>:
c0de157a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de157c:	461c      	mov	r4, r3
c0de157e:	4615      	mov	r5, r2
c0de1580:	4606      	mov	r6, r0
c0de1582:	b910      	cbnz	r0, c0de158a <transaction_utils_check_encoding+0x10>
c0de1584:	2001      	movs	r0, #1
c0de1586:	f005 fae7 	bl	c0de6b58 <assert_exit>
c0de158a:	2000      	movs	r0, #0
c0de158c:	2300      	movs	r3, #0
c0de158e:	4602      	mov	r2, r0
c0de1590:	1b40      	subs	r0, r0, r5
c0de1592:	4619      	mov	r1, r3
c0de1594:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1598:	d206      	bcs.n	c0de15a8 <transaction_utils_check_encoding+0x2e>
c0de159a:	56b7      	ldrsb	r7, [r6, r2]
c0de159c:	1c50      	adds	r0, r2, #1
c0de159e:	f141 0300 	adc.w	r3, r1, #0
c0de15a2:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de15a6:	dcf2      	bgt.n	c0de158e <transaction_utils_check_encoding+0x14>
c0de15a8:	2000      	movs	r0, #0
c0de15aa:	1b52      	subs	r2, r2, r5
c0de15ac:	41a1      	sbcs	r1, r4
c0de15ae:	bf28      	it	cs
c0de15b0:	2001      	movcs	r0, #1
c0de15b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de15b4 <validate_pubkey>:
c0de15b4:	b108      	cbz	r0, c0de15ba <validate_pubkey+0x6>
c0de15b6:	f7ff be2b 	b.w	c0de1210 <helper_send_response_pubkey>
c0de15ba:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de15be:	f000 b800 	b.w	c0de15c2 <io_send_sw>

c0de15c2 <io_send_sw>:
c0de15c2:	b580      	push	{r7, lr}
c0de15c4:	4602      	mov	r2, r0
c0de15c6:	2000      	movs	r0, #0
c0de15c8:	2100      	movs	r1, #0
c0de15ca:	f005 f825 	bl	c0de6618 <io_send_response_buffers>
c0de15ce:	bd80      	pop	{r7, pc}

c0de15d0 <validate_transaction>:
c0de15d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de15d4:	b08c      	sub	sp, #48	@ 0x30
c0de15d6:	b378      	cbz	r0, c0de1638 <validate_transaction+0x68>
c0de15d8:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1670 <validate_transaction+0xa0>
c0de15dc:	2002      	movs	r0, #2
c0de15de:	2500      	movs	r5, #0
c0de15e0:	2720      	movs	r7, #32
c0de15e2:	2203      	movs	r2, #3
c0de15e4:	f240 6401 	movw	r4, #1537	@ 0x601
c0de15e8:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de15ec:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de15f0:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de15f2:	f809 0008 	strb.w	r0, [r9, r8]
c0de15f6:	2048      	movs	r0, #72	@ 0x48
c0de15f8:	900a      	str	r0, [sp, #40]	@ 0x28
c0de15fa:	eb09 0008 	add.w	r0, r9, r8
c0de15fe:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de1602:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1606:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de160a:	e9cd 4200 	strd	r4, r2, [sp]
c0de160e:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de1612:	2000      	movs	r0, #0
c0de1614:	9508      	str	r5, [sp, #32]
c0de1616:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de161a:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de161e:	2121      	movs	r1, #33	@ 0x21
c0de1620:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1624:	f004 feee 	bl	c0de6404 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1628:	b188      	cbz	r0, c0de164e <validate_transaction+0x7e>
c0de162a:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de162e:	f809 5008 	strb.w	r5, [r9, r8]
c0de1632:	f7ff ffc6 	bl	c0de15c2 <io_send_sw>
c0de1636:	e017      	b.n	c0de1668 <validate_transaction+0x98>
c0de1638:	480d      	ldr	r0, [pc, #52]	@ (c0de1670 <validate_transaction+0xa0>)
c0de163a:	2100      	movs	r1, #0
c0de163c:	f809 1000 	strb.w	r1, [r9, r0]
c0de1640:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1644:	b00c      	add	sp, #48	@ 0x30
c0de1646:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de164a:	f7ff bfba 	b.w	c0de15c2 <io_send_sw>
c0de164e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1650:	eb09 0008 	add.w	r0, r9, r8
c0de1654:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de1658:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de165c:	f001 0101 	and.w	r1, r1, #1
c0de1660:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de1664:	f7ff fe02 	bl	c0de126c <helper_send_response_sig>
c0de1668:	b00c      	add	sp, #48	@ 0x30
c0de166a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de166e:	bf00      	nop
c0de1670:	00000000 	.word	0x00000000

c0de1674 <app_quit>:
c0de1674:	20ff      	movs	r0, #255	@ 0xff
c0de1676:	f005 fe43 	bl	c0de7300 <os_sched_exit>
	...

c0de167c <ui_menu_main>:
c0de167c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de167e:	4c19      	ldr	r4, [pc, #100]	@ (c0de16e4 <ui_menu_main+0x68>)
c0de1680:	4817      	ldr	r0, [pc, #92]	@ (c0de16e0 <ui_menu_main+0x64>)
c0de1682:	447c      	add	r4, pc
c0de1684:	eb09 0500 	add.w	r5, r9, r0
c0de1688:	f000 f8d8 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de168c:	2114      	movs	r1, #20
c0de168e:	7369      	strb	r1, [r5, #13]
c0de1690:	4915      	ldr	r1, [pc, #84]	@ (c0de16e8 <ui_menu_main+0x6c>)
c0de1692:	4a16      	ldr	r2, [pc, #88]	@ (c0de16ec <ui_menu_main+0x70>)
c0de1694:	4479      	add	r1, pc
c0de1696:	447a      	add	r2, pc
c0de1698:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de169c:	7800      	ldrb	r0, [r0, #0]
c0de169e:	7328      	strb	r0, [r5, #12]
c0de16a0:	f000 f8cc 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de16a4:	2115      	movs	r1, #21
c0de16a6:	7669      	strb	r1, [r5, #25]
c0de16a8:	4911      	ldr	r1, [pc, #68]	@ (c0de16f0 <ui_menu_main+0x74>)
c0de16aa:	4a12      	ldr	r2, [pc, #72]	@ (c0de16f4 <ui_menu_main+0x78>)
c0de16ac:	4479      	add	r1, pc
c0de16ae:	447a      	add	r2, pc
c0de16b0:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de16b4:	2100      	movs	r1, #0
c0de16b6:	7840      	ldrb	r0, [r0, #1]
c0de16b8:	7628      	strb	r0, [r5, #24]
c0de16ba:	480f      	ldr	r0, [pc, #60]	@ (c0de16f8 <ui_menu_main+0x7c>)
c0de16bc:	4a0f      	ldr	r2, [pc, #60]	@ (c0de16fc <ui_menu_main+0x80>)
c0de16be:	4b10      	ldr	r3, [pc, #64]	@ (c0de1700 <ui_menu_main+0x84>)
c0de16c0:	4478      	add	r0, pc
c0de16c2:	447a      	add	r2, pc
c0de16c4:	447b      	add	r3, pc
c0de16c6:	e9cd 3200 	strd	r3, r2, [sp]
c0de16ca:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de16ce:	2200      	movs	r2, #0
c0de16d0:	23ff      	movs	r3, #255	@ 0xff
c0de16d2:	480c      	ldr	r0, [pc, #48]	@ (c0de1704 <ui_menu_main+0x88>)
c0de16d4:	490c      	ldr	r1, [pc, #48]	@ (c0de1708 <ui_menu_main+0x8c>)
c0de16d6:	4478      	add	r0, pc
c0de16d8:	4479      	add	r1, pc
c0de16da:	f003 f837 	bl	c0de474c <nbgl_useCaseHomeAndSettings>
c0de16de:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de16e0:	00000320 	.word	0x00000320
c0de16e4:	0000757a 	.word	0x0000757a
c0de16e8:	00006303 	.word	0x00006303
c0de16ec:	0000646a 	.word	0x0000646a
c0de16f0:	00006366 	.word	0x00006366
c0de16f4:	000061ac 	.word	0x000061ac
c0de16f8:	ffffffb1 	.word	0xffffffb1
c0de16fc:	00006df6 	.word	0x00006df6
c0de1700:	00006de8 	.word	0x00006de8
c0de1704:	000064ae 	.word	0x000064ae
c0de1708:	00005fdb 	.word	0x00005fdb

c0de170c <controls_callback>:
c0de170c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de170e:	4c22      	ldr	r4, [pc, #136]	@ (c0de1798 <controls_callback+0x8c>)
c0de1710:	2815      	cmp	r0, #21
c0de1712:	f809 2004 	strb.w	r2, [r9, r4]
c0de1716:	d011      	beq.n	c0de173c <controls_callback+0x30>
c0de1718:	2814      	cmp	r0, #20
c0de171a:	d12a      	bne.n	c0de1772 <controls_callback+0x66>
c0de171c:	eb09 0504 	add.w	r5, r9, r4
c0de1720:	4c1e      	ldr	r4, [pc, #120]	@ (c0de179c <controls_callback+0x90>)
c0de1722:	447c      	add	r4, pc
c0de1724:	f000 f88a 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de1728:	7800      	ldrb	r0, [r0, #0]
c0de172a:	fab0 f080 	clz	r0, r0
c0de172e:	0940      	lsrs	r0, r0, #5
c0de1730:	7328      	strb	r0, [r5, #12]
c0de1732:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1736:	f000 f881 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de173a:	e015      	b.n	c0de1768 <controls_callback+0x5c>
c0de173c:	4818      	ldr	r0, [pc, #96]	@ (c0de17a0 <controls_callback+0x94>)
c0de173e:	4478      	add	r0, pc
c0de1740:	f005 fc18 	bl	c0de6f74 <pic>
c0de1744:	7840      	ldrb	r0, [r0, #1]
c0de1746:	b1a8      	cbz	r0, c0de1774 <controls_callback+0x68>
c0de1748:	eb09 0504 	add.w	r5, r9, r4
c0de174c:	4c15      	ldr	r4, [pc, #84]	@ (c0de17a4 <controls_callback+0x98>)
c0de174e:	447c      	add	r4, pc
c0de1750:	f000 f874 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de1754:	7840      	ldrb	r0, [r0, #1]
c0de1756:	fab0 f080 	clz	r0, r0
c0de175a:	0940      	lsrs	r0, r0, #5
c0de175c:	7628      	strb	r0, [r5, #24]
c0de175e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1762:	f000 f86b 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de1766:	3001      	adds	r0, #1
c0de1768:	f10d 010f 	add.w	r1, sp, #15
c0de176c:	2201      	movs	r2, #1
c0de176e:	f005 fc31 	bl	c0de6fd4 <nvm_write>
c0de1772:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1774:	480c      	ldr	r0, [pc, #48]	@ (c0de17a8 <controls_callback+0x9c>)
c0de1776:	490d      	ldr	r1, [pc, #52]	@ (c0de17ac <controls_callback+0xa0>)
c0de1778:	4478      	add	r0, pc
c0de177a:	4479      	add	r1, pc
c0de177c:	e9cd 1000 	strd	r1, r0, [sp]
c0de1780:	480b      	ldr	r0, [pc, #44]	@ (c0de17b0 <controls_callback+0xa4>)
c0de1782:	490c      	ldr	r1, [pc, #48]	@ (c0de17b4 <controls_callback+0xa8>)
c0de1784:	4a0c      	ldr	r2, [pc, #48]	@ (c0de17b8 <controls_callback+0xac>)
c0de1786:	4b0d      	ldr	r3, [pc, #52]	@ (c0de17bc <controls_callback+0xb0>)
c0de1788:	4478      	add	r0, pc
c0de178a:	4479      	add	r1, pc
c0de178c:	447a      	add	r2, pc
c0de178e:	447b      	add	r3, pc
c0de1790:	f003 fc52 	bl	c0de5038 <nbgl_useCaseChoice>
c0de1794:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1796:	bf00      	nop
c0de1798:	00000320 	.word	0x00000320
c0de179c:	000074da 	.word	0x000074da
c0de17a0:	000074be 	.word	0x000074be
c0de17a4:	000074ae 	.word	0x000074ae
c0de17a8:	00000045 	.word	0x00000045
c0de17ac:	000062be 	.word	0x000062be
c0de17b0:	000060a5 	.word	0x000060a5
c0de17b4:	000060d0 	.word	0x000060d0
c0de17b8:	00006194 	.word	0x00006194
c0de17bc:	0000637a 	.word	0x0000637a

c0de17c0 <review_warning_choice>:
c0de17c0:	b5b0      	push	{r4, r5, r7, lr}
c0de17c2:	b086      	sub	sp, #24
c0de17c4:	b1a8      	cbz	r0, c0de17f2 <review_warning_choice+0x32>
c0de17c6:	4c17      	ldr	r4, [pc, #92]	@ (c0de1824 <review_warning_choice+0x64>)
c0de17c8:	4815      	ldr	r0, [pc, #84]	@ (c0de1820 <review_warning_choice+0x60>)
c0de17ca:	447c      	add	r4, pc
c0de17cc:	eb09 0500 	add.w	r5, r9, r0
c0de17d0:	f000 f834 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de17d4:	7840      	ldrb	r0, [r0, #1]
c0de17d6:	fab0 f080 	clz	r0, r0
c0de17da:	0940      	lsrs	r0, r0, #5
c0de17dc:	7628      	strb	r0, [r5, #24]
c0de17de:	f88d 0017 	strb.w	r0, [sp, #23]
c0de17e2:	f000 f82b 	bl	c0de183c <OUTLINED_FUNCTION_0>
c0de17e6:	3001      	adds	r0, #1
c0de17e8:	f10d 0117 	add.w	r1, sp, #23
c0de17ec:	2201      	movs	r2, #1
c0de17ee:	f005 fbf1 	bl	c0de6fd4 <nvm_write>
c0de17f2:	480b      	ldr	r0, [pc, #44]	@ (c0de1820 <review_warning_choice+0x60>)
c0de17f4:	2100      	movs	r1, #0
c0de17f6:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de17fa:	480b      	ldr	r0, [pc, #44]	@ (c0de1828 <review_warning_choice+0x68>)
c0de17fc:	4a0b      	ldr	r2, [pc, #44]	@ (c0de182c <review_warning_choice+0x6c>)
c0de17fe:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1830 <review_warning_choice+0x70>)
c0de1800:	4478      	add	r0, pc
c0de1802:	447a      	add	r2, pc
c0de1804:	447c      	add	r4, pc
c0de1806:	e9cd 4200 	strd	r4, r2, [sp]
c0de180a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de180e:	2200      	movs	r2, #0
c0de1810:	4808      	ldr	r0, [pc, #32]	@ (c0de1834 <review_warning_choice+0x74>)
c0de1812:	4909      	ldr	r1, [pc, #36]	@ (c0de1838 <review_warning_choice+0x78>)
c0de1814:	4478      	add	r0, pc
c0de1816:	4479      	add	r1, pc
c0de1818:	f002 ff98 	bl	c0de474c <nbgl_useCaseHomeAndSettings>
c0de181c:	b006      	add	sp, #24
c0de181e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1820:	00000320 	.word	0x00000320
c0de1824:	00007432 	.word	0x00007432
c0de1828:	fffffe71 	.word	0xfffffe71
c0de182c:	00006cb6 	.word	0x00006cb6
c0de1830:	00006ca8 	.word	0x00006ca8
c0de1834:	00006370 	.word	0x00006370
c0de1838:	00005e9d 	.word	0x00005e9d

c0de183c <OUTLINED_FUNCTION_0>:
c0de183c:	4620      	mov	r0, r4
c0de183e:	f005 bb99 	b.w	c0de6f74 <pic>
	...

c0de1844 <ui_display_address>:
c0de1844:	b570      	push	{r4, r5, r6, lr}
c0de1846:	b088      	sub	sp, #32
c0de1848:	4e22      	ldr	r6, [pc, #136]	@ (c0de18d4 <ui_display_address+0x90>)
c0de184a:	eb09 0106 	add.w	r1, r9, r6
c0de184e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1852:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de1856:	4308      	orrs	r0, r1
c0de1858:	d12a      	bne.n	c0de18b0 <ui_display_address+0x6c>
c0de185a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de18d8 <ui_display_address+0x94>)
c0de185c:	212b      	movs	r1, #43	@ 0x2b
c0de185e:	eb09 0005 	add.w	r0, r9, r5
c0de1862:	f005 fe93 	bl	c0de758c <__aeabi_memclr>
c0de1866:	ac03      	add	r4, sp, #12
c0de1868:	2114      	movs	r1, #20
c0de186a:	4620      	mov	r0, r4
c0de186c:	f005 fe8e 	bl	c0de758c <__aeabi_memclr>
c0de1870:	eb09 0006 	add.w	r0, r9, r6
c0de1874:	4621      	mov	r1, r4
c0de1876:	2214      	movs	r2, #20
c0de1878:	3008      	adds	r0, #8
c0de187a:	f7fe fbd5 	bl	c0de0028 <address_from_pubkey>
c0de187e:	b308      	cbz	r0, c0de18c4 <ui_display_address+0x80>
c0de1880:	eb09 0205 	add.w	r2, r9, r5
c0de1884:	a803      	add	r0, sp, #12
c0de1886:	2114      	movs	r1, #20
c0de1888:	232b      	movs	r3, #43	@ 0x2b
c0de188a:	f004 fe65 	bl	c0de6558 <format_hex>
c0de188e:	3001      	adds	r0, #1
c0de1890:	d018      	beq.n	c0de18c4 <ui_display_address+0x80>
c0de1892:	4812      	ldr	r0, [pc, #72]	@ (c0de18dc <ui_display_address+0x98>)
c0de1894:	2400      	movs	r4, #0
c0de1896:	2100      	movs	r1, #0
c0de1898:	4478      	add	r0, pc
c0de189a:	e9cd 4000 	strd	r4, r0, [sp]
c0de189e:	eb09 0005 	add.w	r0, r9, r5
c0de18a2:	4a0f      	ldr	r2, [pc, #60]	@ (c0de18e0 <ui_display_address+0x9c>)
c0de18a4:	4b0f      	ldr	r3, [pc, #60]	@ (c0de18e4 <ui_display_address+0xa0>)
c0de18a6:	447a      	add	r2, pc
c0de18a8:	447b      	add	r3, pc
c0de18aa:	f003 f8a9 	bl	c0de4a00 <nbgl_useCaseAddressReview>
c0de18ae:	e00e      	b.n	c0de18ce <ui_display_address+0x8a>
c0de18b0:	2000      	movs	r0, #0
c0de18b2:	f809 0006 	strb.w	r0, [r9, r6]
c0de18b6:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de18ba:	b008      	add	sp, #32
c0de18bc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de18c0:	f000 b812 	b.w	c0de18e8 <io_send_sw>
c0de18c4:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de18c8:	f000 f80e 	bl	c0de18e8 <io_send_sw>
c0de18cc:	4604      	mov	r4, r0
c0de18ce:	4620      	mov	r0, r4
c0de18d0:	b008      	add	sp, #32
c0de18d2:	bd70      	pop	{r4, r5, r6, pc}
c0de18d4:	00000000 	.word	0x00000000
c0de18d8:	0000033c 	.word	0x0000033c
c0de18dc:	0000005d 	.word	0x0000005d
c0de18e0:	00005faa 	.word	0x00005faa
c0de18e4:	000062c9 	.word	0x000062c9

c0de18e8 <io_send_sw>:
c0de18e8:	b580      	push	{r7, lr}
c0de18ea:	4602      	mov	r2, r0
c0de18ec:	2000      	movs	r0, #0
c0de18ee:	2100      	movs	r1, #0
c0de18f0:	f004 fe92 	bl	c0de6618 <io_send_response_buffers>
c0de18f4:	bd80      	pop	{r7, pc}
	...

c0de18f8 <review_choice>:
c0de18f8:	b510      	push	{r4, lr}
c0de18fa:	4604      	mov	r4, r0
c0de18fc:	f7ff fe5a 	bl	c0de15b4 <validate_pubkey>
c0de1900:	2007      	movs	r0, #7
c0de1902:	2c00      	cmp	r4, #0
c0de1904:	bf18      	it	ne
c0de1906:	2006      	movne	r0, #6
c0de1908:	4902      	ldr	r1, [pc, #8]	@ (c0de1914 <review_choice+0x1c>)
c0de190a:	4479      	add	r1, pc
c0de190c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1910:	f003 ba68 	b.w	c0de4de4 <nbgl_useCaseReviewStatus>
c0de1914:	fffffd6f 	.word	0xfffffd6f

c0de1918 <ui_display_transaction_bs_choice>:
c0de1918:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de191a:	b08d      	sub	sp, #52	@ 0x34
c0de191c:	4f43      	ldr	r7, [pc, #268]	@ (c0de1a2c <ui_display_transaction_bs_choice+0x114>)
c0de191e:	4604      	mov	r4, r0
c0de1920:	eb09 0007 	add.w	r0, r9, r7
c0de1924:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1928:	2801      	cmp	r0, #1
c0de192a:	d15d      	bne.n	c0de19e8 <ui_display_transaction_bs_choice+0xd0>
c0de192c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1930:	2801      	cmp	r0, #1
c0de1932:	d159      	bne.n	c0de19e8 <ui_display_transaction_bs_choice+0xd0>
c0de1934:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1a30 <ui_display_transaction_bs_choice+0x118>)
c0de1936:	211e      	movs	r1, #30
c0de1938:	eb09 0006 	add.w	r0, r9, r6
c0de193c:	3014      	adds	r0, #20
c0de193e:	f005 fe25 	bl	c0de758c <__aeabi_memclr>
c0de1942:	ad05      	add	r5, sp, #20
c0de1944:	211e      	movs	r1, #30
c0de1946:	4628      	mov	r0, r5
c0de1948:	f005 fe20 	bl	c0de758c <__aeabi_memclr>
c0de194c:	eb09 0007 	add.w	r0, r9, r7
c0de1950:	211e      	movs	r1, #30
c0de1952:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1956:	2003      	movs	r0, #3
c0de1958:	9000      	str	r0, [sp, #0]
c0de195a:	4628      	mov	r0, r5
c0de195c:	f004 fdb5 	bl	c0de64ca <format_fpu64>
c0de1960:	2800      	cmp	r0, #0
c0de1962:	d04b      	beq.n	c0de19fc <ui_display_transaction_bs_choice+0xe4>
c0de1964:	9500      	str	r5, [sp, #0]
c0de1966:	eb09 0506 	add.w	r5, r9, r6
c0de196a:	211e      	movs	r1, #30
c0de196c:	231e      	movs	r3, #30
c0de196e:	4a31      	ldr	r2, [pc, #196]	@ (c0de1a34 <ui_display_transaction_bs_choice+0x11c>)
c0de1970:	f105 0014 	add.w	r0, r5, #20
c0de1974:	447a      	add	r2, pc
c0de1976:	f005 f96b 	bl	c0de6c50 <snprintf>
c0de197a:	3554      	adds	r5, #84	@ 0x54
c0de197c:	212b      	movs	r1, #43	@ 0x2b
c0de197e:	4628      	mov	r0, r5
c0de1980:	f005 fe04 	bl	c0de758c <__aeabi_memclr>
c0de1984:	eb09 0007 	add.w	r0, r9, r7
c0de1988:	2114      	movs	r1, #20
c0de198a:	462a      	mov	r2, r5
c0de198c:	232b      	movs	r3, #43	@ 0x2b
c0de198e:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1992:	f004 fde1 	bl	c0de6558 <format_hex>
c0de1996:	3001      	adds	r0, #1
c0de1998:	d033      	beq.n	c0de1a02 <ui_display_transaction_bs_choice+0xea>
c0de199a:	4927      	ldr	r1, [pc, #156]	@ (c0de1a38 <ui_display_transaction_bs_choice+0x120>)
c0de199c:	eb09 0006 	add.w	r0, r9, r6
c0de19a0:	2500      	movs	r5, #0
c0de19a2:	4602      	mov	r2, r0
c0de19a4:	4479      	add	r1, pc
c0de19a6:	f842 1f34 	str.w	r1, [r2, #52]!
c0de19aa:	f849 2006 	str.w	r2, [r9, r6]
c0de19ae:	2202      	movs	r2, #2
c0de19b0:	4922      	ldr	r1, [pc, #136]	@ (c0de1a3c <ui_display_transaction_bs_choice+0x124>)
c0de19b2:	7202      	strb	r2, [r0, #8]
c0de19b4:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de19b8:	7285      	strb	r5, [r0, #10]
c0de19ba:	4479      	add	r1, pc
c0de19bc:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de19c0:	f100 0114 	add.w	r1, r0, #20
c0de19c4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de19c6:	481e      	ldr	r0, [pc, #120]	@ (c0de1a40 <ui_display_transaction_bs_choice+0x128>)
c0de19c8:	4478      	add	r0, pc
c0de19ca:	b314      	cbz	r4, c0de1a12 <ui_display_transaction_bs_choice+0xfa>
c0de19cc:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de19d0:	e9cd 5500 	strd	r5, r5, [sp]
c0de19d4:	eb09 0106 	add.w	r1, r9, r6
c0de19d8:	2000      	movs	r0, #0
c0de19da:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1a44 <ui_display_transaction_bs_choice+0x12c>)
c0de19dc:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1a48 <ui_display_transaction_bs_choice+0x130>)
c0de19de:	447a      	add	r2, pc
c0de19e0:	447b      	add	r3, pc
c0de19e2:	f002 fffb 	bl	c0de49dc <nbgl_useCaseReviewBlindSigning>
c0de19e6:	e011      	b.n	c0de1a0c <ui_display_transaction_bs_choice+0xf4>
c0de19e8:	2000      	movs	r0, #0
c0de19ea:	f809 0007 	strb.w	r0, [r9, r7]
c0de19ee:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de19f2:	b00d      	add	sp, #52	@ 0x34
c0de19f4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de19f8:	f000 b82c 	b.w	c0de1a54 <io_send_sw>
c0de19fc:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1a00:	e001      	b.n	c0de1a06 <ui_display_transaction_bs_choice+0xee>
c0de1a02:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1a06:	f000 f825 	bl	c0de1a54 <io_send_sw>
c0de1a0a:	4605      	mov	r5, r0
c0de1a0c:	4628      	mov	r0, r5
c0de1a0e:	b00d      	add	sp, #52	@ 0x34
c0de1a10:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1a12:	9002      	str	r0, [sp, #8]
c0de1a14:	e9cd 5500 	strd	r5, r5, [sp]
c0de1a18:	eb09 0106 	add.w	r1, r9, r6
c0de1a1c:	2000      	movs	r0, #0
c0de1a1e:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1a4c <ui_display_transaction_bs_choice+0x134>)
c0de1a20:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1a50 <ui_display_transaction_bs_choice+0x138>)
c0de1a22:	447a      	add	r2, pc
c0de1a24:	447b      	add	r3, pc
c0de1a26:	f002 ff39 	bl	c0de489c <nbgl_useCaseReview>
c0de1a2a:	e7ef      	b.n	c0de1a0c <ui_display_transaction_bs_choice+0xf4>
c0de1a2c:	00000000 	.word	0x00000000
c0de1a30:	00000368 	.word	0x00000368
c0de1a34:	00006176 	.word	0x00006176
c0de1a38:	00005f64 	.word	0x00005f64
c0de1a3c:	00006139 	.word	0x00006139
c0de1a40:	00000099 	.word	0x00000099
c0de1a44:	00005e72 	.word	0x00005e72
c0de1a48:	00005e82 	.word	0x00005e82
c0de1a4c:	00005e2e 	.word	0x00005e2e
c0de1a50:	00005e3e 	.word	0x00005e3e

c0de1a54 <io_send_sw>:
c0de1a54:	b580      	push	{r7, lr}
c0de1a56:	4602      	mov	r2, r0
c0de1a58:	2000      	movs	r0, #0
c0de1a5a:	2100      	movs	r1, #0
c0de1a5c:	f004 fddc 	bl	c0de6618 <io_send_response_buffers>
c0de1a60:	bd80      	pop	{r7, pc}
	...

c0de1a64 <review_choice>:
c0de1a64:	b510      	push	{r4, lr}
c0de1a66:	4604      	mov	r4, r0
c0de1a68:	f7ff fdb2 	bl	c0de15d0 <validate_transaction>
c0de1a6c:	4903      	ldr	r1, [pc, #12]	@ (c0de1a7c <review_choice+0x18>)
c0de1a6e:	f084 0001 	eor.w	r0, r4, #1
c0de1a72:	4479      	add	r1, pc
c0de1a74:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1a78:	f003 b9b4 	b.w	c0de4de4 <nbgl_useCaseReviewStatus>
c0de1a7c:	fffffc07 	.word	0xfffffc07

c0de1a80 <ui_display_blind_signed_transaction>:
c0de1a80:	2001      	movs	r0, #1
c0de1a82:	f7ff bf49 	b.w	c0de1918 <ui_display_transaction_bs_choice>

c0de1a86 <ui_display_transaction>:
c0de1a86:	2000      	movs	r0, #0
c0de1a88:	f7ff bf46 	b.w	c0de1918 <ui_display_transaction_bs_choice>

c0de1a8c <zkn_prv_hash>:
c0de1a8c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1a90:	460c      	mov	r4, r1
c0de1a92:	e9cd 0200 	strd	r0, r2, [sp]
c0de1a96:	4668      	mov	r0, sp
c0de1a98:	2101      	movs	r1, #1
c0de1a9a:	2601      	movs	r6, #1
c0de1a9c:	4622      	mov	r2, r4
c0de1a9e:	f005 f828 	bl	c0de6af2 <cx_blake2b_512_hash_iovec>
c0de1aa2:	4605      	mov	r5, r0
c0de1aa4:	bb18      	cbnz	r0, c0de1aee <zkn_prv_hash+0x62>
c0de1aa6:	7820      	ldrb	r0, [r4, #0]
c0de1aa8:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1aac:	7020      	strb	r0, [r4, #0]
c0de1aae:	7fe0      	ldrb	r0, [r4, #31]
c0de1ab0:	f366 109f 	bfi	r0, r6, #6, #26
c0de1ab4:	77e0      	strb	r0, [r4, #31]
c0de1ab6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1aba:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1af4 <zkn_prv_hash+0x68>)
c0de1abc:	447e      	add	r6, pc
c0de1abe:	47b0      	blx	r6
c0de1ac0:	4680      	mov	r8, r0
c0de1ac2:	468a      	mov	sl, r1
c0de1ac4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1ac8:	47b0      	blx	r6
c0de1aca:	4683      	mov	fp, r0
c0de1acc:	460f      	mov	r7, r1
c0de1ace:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1ad2:	47b0      	blx	r6
c0de1ad4:	e9c4 0100 	strd	r0, r1, [r4]
c0de1ad8:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1adc:	47b0      	blx	r6
c0de1ade:	f104 0208 	add.w	r2, r4, #8
c0de1ae2:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1ae6:	f104 0014 	add.w	r0, r4, #20
c0de1aea:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1aee:	4628      	mov	r0, r5
c0de1af0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1af4:	00000341 	.word	0x00000341

c0de1af8 <zkn_prv2pub>:
c0de1af8:	b570      	push	{r4, r5, r6, lr}
c0de1afa:	b092      	sub	sp, #72	@ 0x48
c0de1afc:	4614      	mov	r4, r2
c0de1afe:	6802      	ldr	r2, [r0, #0]
c0de1b00:	ae02      	add	r6, sp, #8
c0de1b02:	4605      	mov	r5, r0
c0de1b04:	4608      	mov	r0, r1
c0de1b06:	4631      	mov	r1, r6
c0de1b08:	f7ff ffc0 	bl	c0de1a8c <zkn_prv_hash>
c0de1b0c:	2000      	movs	r0, #0
c0de1b0e:	2100      	movs	r1, #0
c0de1b10:	2820      	cmp	r0, #32
c0de1b12:	d009      	beq.n	c0de1b28 <zkn_prv2pub+0x30>
c0de1b14:	5c32      	ldrb	r2, [r6, r0]
c0de1b16:	0149      	lsls	r1, r1, #5
c0de1b18:	0613      	lsls	r3, r2, #24
c0de1b1a:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1b1e:	5431      	strb	r1, [r6, r0]
c0de1b20:	f002 0107 	and.w	r1, r2, #7
c0de1b24:	3001      	adds	r0, #1
c0de1b26:	e7f3      	b.n	c0de1b10 <zkn_prv2pub+0x18>
c0de1b28:	4629      	mov	r1, r5
c0de1b2a:	4628      	mov	r0, r5
c0de1b2c:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1b30:	9400      	str	r4, [sp, #0]
c0de1b32:	aa02      	add	r2, sp, #8
c0de1b34:	f000 ffc8 	bl	c0de2ac8 <tEdwards_scalarMul>
c0de1b38:	b918      	cbnz	r0, c0de1b42 <zkn_prv2pub+0x4a>
c0de1b3a:	4628      	mov	r0, r5
c0de1b3c:	4621      	mov	r1, r4
c0de1b3e:	f000 fefe 	bl	c0de293e <tEdwards_normalize>
c0de1b42:	b012      	add	sp, #72	@ 0x48
c0de1b44:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1b48 <EddsaPoseidon_Sign_final>:
c0de1b48:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1b4c:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1b50:	4605      	mov	r5, r0
c0de1b52:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1b54:	2820      	cmp	r0, #32
c0de1b56:	d118      	bne.n	c0de1b8a <EddsaPoseidon_Sign_final+0x42>
c0de1b58:	460f      	mov	r7, r1
c0de1b5a:	a982      	add	r1, sp, #520	@ 0x208
c0de1b5c:	4628      	mov	r0, r5
c0de1b5e:	461e      	mov	r6, r3
c0de1b60:	4692      	mov	sl, r2
c0de1b62:	f000 fbbb 	bl	c0de22dc <tEdwards_alloc>
c0de1b66:	b988      	cbnz	r0, c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1b68:	682a      	ldr	r2, [r5, #0]
c0de1b6a:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1b6c:	4638      	mov	r0, r7
c0de1b6e:	4621      	mov	r1, r4
c0de1b70:	f7ff ff8c 	bl	c0de1a8c <zkn_prv_hash>
c0de1b74:	b950      	cbnz	r0, c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1b76:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1b7a:	2000      	movs	r0, #0
c0de1b7c:	a95a      	add	r1, sp, #360	@ 0x168
c0de1b7e:	2820      	cmp	r0, #32
c0de1b80:	d008      	beq.n	c0de1b94 <EddsaPoseidon_Sign_final+0x4c>
c0de1b82:	5c22      	ldrb	r2, [r4, r0]
c0de1b84:	540a      	strb	r2, [r1, r0]
c0de1b86:	3001      	adds	r0, #1
c0de1b88:	e7f9      	b.n	c0de1b7e <EddsaPoseidon_Sign_final+0x36>
c0de1b8a:	489b      	ldr	r0, [pc, #620]	@ (c0de1df8 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1b8c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1b90:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1b94:	a812      	add	r0, sp, #72	@ 0x48
c0de1b96:	2109      	movs	r1, #9
c0de1b98:	2240      	movs	r2, #64	@ 0x40
c0de1b9a:	f004 ffcb 	bl	c0de6b34 <cx_hash_init_ex>
c0de1b9e:	2800      	cmp	r0, #0
c0de1ba0:	d1f4      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1ba2:	f104 0120 	add.w	r1, r4, #32
c0de1ba6:	a812      	add	r0, sp, #72	@ 0x48
c0de1ba8:	2220      	movs	r2, #32
c0de1baa:	f004 ffc8 	bl	c0de6b3e <cx_hash_update>
c0de1bae:	2800      	cmp	r0, #0
c0de1bb0:	d1ec      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1bb2:	a812      	add	r0, sp, #72	@ 0x48
c0de1bb4:	4631      	mov	r1, r6
c0de1bb6:	2220      	movs	r2, #32
c0de1bb8:	f004 ffc1 	bl	c0de6b3e <cx_hash_update>
c0de1bbc:	2800      	cmp	r0, #0
c0de1bbe:	d1e5      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1bc0:	a812      	add	r0, sp, #72	@ 0x48
c0de1bc2:	ac62      	add	r4, sp, #392	@ 0x188
c0de1bc4:	4621      	mov	r1, r4
c0de1bc6:	f004 ffb0 	bl	c0de6b2a <cx_hash_final>
c0de1bca:	2800      	cmp	r0, #0
c0de1bcc:	d1de      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1bce:	203f      	movs	r0, #63	@ 0x3f
c0de1bd0:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1bd2:	1c42      	adds	r2, r0, #1
c0de1bd4:	d004      	beq.n	c0de1be0 <EddsaPoseidon_Sign_final+0x98>
c0de1bd6:	5c22      	ldrb	r2, [r4, r0]
c0de1bd8:	3801      	subs	r0, #1
c0de1bda:	f801 2b01 	strb.w	r2, [r1], #1
c0de1bde:	e7f8      	b.n	c0de1bd2 <EddsaPoseidon_Sign_final+0x8a>
c0de1be0:	a889      	add	r0, sp, #548	@ 0x224
c0de1be2:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1be4:	2140      	movs	r1, #64	@ 0x40
c0de1be6:	2340      	movs	r3, #64	@ 0x40
c0de1be8:	f005 fa1a 	bl	c0de7020 <cx_bn_alloc_init>
c0de1bec:	2800      	cmp	r0, #0
c0de1bee:	d1cd      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1bf0:	a887      	add	r0, sp, #540	@ 0x21c
c0de1bf2:	2140      	movs	r1, #64	@ 0x40
c0de1bf4:	f005 fa0a 	bl	c0de700c <cx_bn_alloc>
c0de1bf8:	2800      	cmp	r0, #0
c0de1bfa:	d1c7      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1bfc:	497f      	ldr	r1, [pc, #508]	@ (c0de1dfc <EddsaPoseidon_Sign_final+0x2b4>)
c0de1bfe:	f10d 0808 	add.w	r8, sp, #8
c0de1c02:	2240      	movs	r2, #64	@ 0x40
c0de1c04:	4640      	mov	r0, r8
c0de1c06:	4479      	add	r1, pc
c0de1c08:	f005 fcb6 	bl	c0de7578 <__aeabi_memcpy>
c0de1c0c:	a888      	add	r0, sp, #544	@ 0x220
c0de1c0e:	2140      	movs	r1, #64	@ 0x40
c0de1c10:	4642      	mov	r2, r8
c0de1c12:	2340      	movs	r3, #64	@ 0x40
c0de1c14:	f005 fa04 	bl	c0de7020 <cx_bn_alloc_init>
c0de1c18:	2800      	cmp	r0, #0
c0de1c1a:	d1b7      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c1c:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1c1e:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1c22:	f005 fa91 	bl	c0de7148 <cx_bn_reduce>
c0de1c26:	2800      	cmp	r0, #0
c0de1c28:	d1b0      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c2a:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1c2c:	f105 010c 	add.w	r1, r5, #12
c0de1c30:	ab82      	add	r3, sp, #520	@ 0x208
c0de1c32:	4628      	mov	r0, r5
c0de1c34:	f000 fee2 	bl	c0de29fc <tEdwards_scalarMul_bn>
c0de1c38:	2800      	cmp	r0, #0
c0de1c3a:	d1a7      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c3c:	a982      	add	r1, sp, #520	@ 0x208
c0de1c3e:	4628      	mov	r0, r5
c0de1c40:	f000 fe7d 	bl	c0de293e <tEdwards_normalize>
c0de1c44:	2800      	cmp	r0, #0
c0de1c46:	d1a1      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c48:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1c4a:	a952      	add	r1, sp, #328	@ 0x148
c0de1c4c:	f000 f8e0 	bl	c0de1e10 <OUTLINED_FUNCTION_1>
c0de1c50:	2800      	cmp	r0, #0
c0de1c52:	d19b      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c54:	a888      	add	r0, sp, #544	@ 0x220
c0de1c56:	f005 f9ef 	bl	c0de7038 <cx_bn_destroy>
c0de1c5a:	2800      	cmp	r0, #0
c0de1c5c:	d196      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c5e:	a889      	add	r0, sp, #548	@ 0x224
c0de1c60:	f005 f9ea 	bl	c0de7038 <cx_bn_destroy>
c0de1c64:	2800      	cmp	r0, #0
c0de1c66:	d191      	bne.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c68:	a887      	add	r0, sp, #540	@ 0x21c
c0de1c6a:	f005 f9e5 	bl	c0de7038 <cx_bn_destroy>
c0de1c6e:	2800      	cmp	r0, #0
c0de1c70:	f47f af8c 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c74:	4628      	mov	r0, r5
c0de1c76:	f000 fde0 	bl	c0de283a <tEdwards_Curve_partial_destroy>
c0de1c7a:	2800      	cmp	r0, #0
c0de1c7c:	f47f af86 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c80:	f105 0420 	add.w	r4, r5, #32
c0de1c84:	a88a      	add	r0, sp, #552	@ 0x228
c0de1c86:	2105      	movs	r1, #5
c0de1c88:	2205      	movs	r2, #5
c0de1c8a:	4623      	mov	r3, r4
c0de1c8c:	f001 f842 	bl	c0de2d14 <Poseidon_alloc_init>
c0de1c90:	2800      	cmp	r0, #0
c0de1c92:	f47f af7b 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1c96:	201f      	movs	r0, #31
c0de1c98:	a962      	add	r1, sp, #392	@ 0x188
c0de1c9a:	1c42      	adds	r2, r0, #1
c0de1c9c:	d004      	beq.n	c0de1ca8 <EddsaPoseidon_Sign_final+0x160>
c0de1c9e:	5c32      	ldrb	r2, [r6, r0]
c0de1ca0:	3801      	subs	r0, #1
c0de1ca2:	f801 2b01 	strb.w	r2, [r1], #1
c0de1ca6:	e7f8      	b.n	c0de1c9a <EddsaPoseidon_Sign_final+0x152>
c0de1ca8:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1caa:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1cac:	f005 f9e4 	bl	c0de7078 <cx_bn_copy>
c0de1cb0:	2800      	cmp	r0, #0
c0de1cb2:	f47f af6b 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1cb6:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1cb8:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1cba:	f005 f9dd 	bl	c0de7078 <cx_bn_copy>
c0de1cbe:	2800      	cmp	r0, #0
c0de1cc0:	f47f af64 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1cc4:	f8da 1000 	ldr.w	r1, [sl]
c0de1cc8:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1cca:	f005 f9d5 	bl	c0de7078 <cx_bn_copy>
c0de1cce:	2800      	cmp	r0, #0
c0de1cd0:	f47f af5c 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1cd4:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1cd8:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1cda:	f005 f9cd 	bl	c0de7078 <cx_bn_copy>
c0de1cde:	2800      	cmp	r0, #0
c0de1ce0:	f47f af54 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1ce4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1ce6:	a962      	add	r1, sp, #392	@ 0x188
c0de1ce8:	2220      	movs	r2, #32
c0de1cea:	f005 f9b9 	bl	c0de7060 <cx_bn_init>
c0de1cee:	2800      	cmp	r0, #0
c0de1cf0:	f47f af4c 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1cf4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1cf6:	4622      	mov	r2, r4
c0de1cf8:	4601      	mov	r1, r0
c0de1cfa:	f005 fa5b 	bl	c0de71b4 <cx_mont_to_montgomery>
c0de1cfe:	2800      	cmp	r0, #0
c0de1d00:	f47f af44 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d04:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1d06:	f000 f87f 	bl	c0de1e08 <OUTLINED_FUNCTION_0>
c0de1d0a:	2800      	cmp	r0, #0
c0de1d0c:	f47f af3e 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d10:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1d12:	f000 f879 	bl	c0de1e08 <OUTLINED_FUNCTION_0>
c0de1d16:	2800      	cmp	r0, #0
c0de1d18:	f47f af38 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d1c:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1d1e:	4659      	mov	r1, fp
c0de1d20:	f000 f876 	bl	c0de1e10 <OUTLINED_FUNCTION_1>
c0de1d24:	2800      	cmp	r0, #0
c0de1d26:	f47f af31 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d2a:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1d2c:	f10b 0120 	add.w	r1, fp, #32
c0de1d30:	f000 f86e 	bl	c0de1e10 <OUTLINED_FUNCTION_1>
c0de1d34:	2800      	cmp	r0, #0
c0de1d36:	f47f af29 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d3a:	a982      	add	r1, sp, #520	@ 0x208
c0de1d3c:	4628      	mov	r0, r5
c0de1d3e:	f000 fae2 	bl	c0de2306 <tEdwards_destroy>
c0de1d42:	2800      	cmp	r0, #0
c0de1d44:	f47f af22 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d48:	a885      	add	r0, sp, #532	@ 0x214
c0de1d4a:	2120      	movs	r1, #32
c0de1d4c:	f005 f95e 	bl	c0de700c <cx_bn_alloc>
c0de1d50:	2800      	cmp	r0, #0
c0de1d52:	f47f af1b 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d56:	a88a      	add	r0, sp, #552	@ 0x228
c0de1d58:	aa85      	add	r2, sp, #532	@ 0x214
c0de1d5a:	2100      	movs	r1, #0
c0de1d5c:	2301      	movs	r3, #1
c0de1d5e:	f001 f83f 	bl	c0de2de0 <Poseidon>
c0de1d62:	2800      	cmp	r0, #0
c0de1d64:	f47f af12 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d68:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1d6a:	f000 f84d 	bl	c0de1e08 <OUTLINED_FUNCTION_0>
c0de1d6e:	2800      	cmp	r0, #0
c0de1d70:	f47f af0c 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d74:	a886      	add	r0, sp, #536	@ 0x218
c0de1d76:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1d78:	2120      	movs	r1, #32
c0de1d7a:	2320      	movs	r3, #32
c0de1d7c:	f005 f950 	bl	c0de7020 <cx_bn_alloc_init>
c0de1d80:	2800      	cmp	r0, #0
c0de1d82:	f47f af03 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d86:	a801      	add	r0, sp, #4
c0de1d88:	2120      	movs	r1, #32
c0de1d8a:	f005 f93f 	bl	c0de700c <cx_bn_alloc>
c0de1d8e:	2800      	cmp	r0, #0
c0de1d90:	f47f aefc 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1d94:	f108 0220 	add.w	r2, r8, #32
c0de1d98:	a888      	add	r0, sp, #544	@ 0x220
c0de1d9a:	2120      	movs	r1, #32
c0de1d9c:	2320      	movs	r3, #32
c0de1d9e:	f005 f93f 	bl	c0de7020 <cx_bn_alloc_init>
c0de1da2:	2800      	cmp	r0, #0
c0de1da4:	f47f aef2 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1da8:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1daa:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1dae:	9801      	ldr	r0, [sp, #4]
c0de1db0:	f005 f9be 	bl	c0de7130 <cx_bn_mod_mul>
c0de1db4:	2800      	cmp	r0, #0
c0de1db6:	f47f aee9 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1dba:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1dbc:	a952      	add	r1, sp, #328	@ 0x148
c0de1dbe:	2220      	movs	r2, #32
c0de1dc0:	f005 f94e 	bl	c0de7060 <cx_bn_init>
c0de1dc4:	2800      	cmp	r0, #0
c0de1dc6:	f47f aee1 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1dca:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1dcc:	9a01      	ldr	r2, [sp, #4]
c0de1dce:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1dd2:	f005 f995 	bl	c0de7100 <cx_bn_mod_add>
c0de1dd6:	2800      	cmp	r0, #0
c0de1dd8:	f47f aed8 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1ddc:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de1dde:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de1de2:	f005 f9b1 	bl	c0de7148 <cx_bn_reduce>
c0de1de6:	2800      	cmp	r0, #0
c0de1de8:	f47f aed0 	bne.w	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1dec:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1dee:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de1df2:	f000 f80d 	bl	c0de1e10 <OUTLINED_FUNCTION_1>
c0de1df6:	e6c9      	b.n	c0de1b8c <EddsaPoseidon_Sign_final+0x44>
c0de1df8:	5a4b4e03 	.word	0x5a4b4e03
c0de1dfc:	0000690a 	.word	0x0000690a

c0de1e00 <rev64>:
c0de1e00:	ba0a      	rev	r2, r1
c0de1e02:	ba01      	rev	r1, r0
c0de1e04:	4610      	mov	r0, r2
c0de1e06:	4770      	bx	lr

c0de1e08 <OUTLINED_FUNCTION_0>:
c0de1e08:	4622      	mov	r2, r4
c0de1e0a:	4601      	mov	r1, r0
c0de1e0c:	f005 b9de 	b.w	c0de71cc <cx_mont_from_montgomery>

c0de1e10 <OUTLINED_FUNCTION_1>:
c0de1e10:	2220      	movs	r2, #32
c0de1e12:	f005 b945 	b.w	c0de70a0 <cx_bn_export>

c0de1e16 <zkn_frost_interpolate>:
c0de1e16:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1e1a:	b085      	sub	sp, #20
c0de1e1c:	460e      	mov	r6, r1
c0de1e1e:	4607      	mov	r7, r0
c0de1e20:	a803      	add	r0, sp, #12
c0de1e22:	2120      	movs	r1, #32
c0de1e24:	f000 fa50 	bl	c0de22c8 <OUTLINED_FUNCTION_2>
c0de1e28:	b988      	cbnz	r0, c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e2a:	a802      	add	r0, sp, #8
c0de1e2c:	f000 fa53 	bl	c0de22d6 <OUTLINED_FUNCTION_4>
c0de1e30:	b968      	cbnz	r0, c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e32:	a801      	add	r0, sp, #4
c0de1e34:	f000 fa4f 	bl	c0de22d6 <OUTLINED_FUNCTION_4>
c0de1e38:	b948      	cbnz	r0, c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e3a:	9803      	ldr	r0, [sp, #12]
c0de1e3c:	2101      	movs	r1, #1
c0de1e3e:	f005 f925 	bl	c0de708c <cx_bn_set_u32>
c0de1e42:	b920      	cbnz	r0, c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e44:	9802      	ldr	r0, [sp, #8]
c0de1e46:	2101      	movs	r1, #1
c0de1e48:	f005 f920 	bl	c0de708c <cx_bn_set_u32>
c0de1e4c:	b110      	cbz	r0, c0de1e54 <zkn_frost_interpolate+0x3e>
c0de1e4e:	b005      	add	sp, #20
c0de1e50:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1e54:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de1e58:	f10d 0a10 	add.w	sl, sp, #16
c0de1e5c:	b31e      	cbz	r6, c0de1ea6 <zkn_frost_interpolate+0x90>
c0de1e5e:	6838      	ldr	r0, [r7, #0]
c0de1e60:	4629      	mov	r1, r5
c0de1e62:	4652      	mov	r2, sl
c0de1e64:	f005 f928 	bl	c0de70b8 <cx_bn_cmp>
c0de1e68:	2800      	cmp	r0, #0
c0de1e6a:	d1f0      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e6c:	9804      	ldr	r0, [sp, #16]
c0de1e6e:	b1b8      	cbz	r0, c0de1ea0 <zkn_frost_interpolate+0x8a>
c0de1e70:	9802      	ldr	r0, [sp, #8]
c0de1e72:	683a      	ldr	r2, [r7, #0]
c0de1e74:	4623      	mov	r3, r4
c0de1e76:	4601      	mov	r1, r0
c0de1e78:	f005 f95a 	bl	c0de7130 <cx_bn_mod_mul>
c0de1e7c:	2800      	cmp	r0, #0
c0de1e7e:	d1e6      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e80:	6839      	ldr	r1, [r7, #0]
c0de1e82:	9801      	ldr	r0, [sp, #4]
c0de1e84:	462a      	mov	r2, r5
c0de1e86:	4623      	mov	r3, r4
c0de1e88:	f005 f946 	bl	c0de7118 <cx_bn_mod_sub>
c0de1e8c:	2800      	cmp	r0, #0
c0de1e8e:	d1de      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1e90:	9803      	ldr	r0, [sp, #12]
c0de1e92:	9a01      	ldr	r2, [sp, #4]
c0de1e94:	4623      	mov	r3, r4
c0de1e96:	4601      	mov	r1, r0
c0de1e98:	f005 f94a 	bl	c0de7130 <cx_bn_mod_mul>
c0de1e9c:	2800      	cmp	r0, #0
c0de1e9e:	d1d6      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1ea0:	3704      	adds	r7, #4
c0de1ea2:	3e01      	subs	r6, #1
c0de1ea4:	e7da      	b.n	c0de1e5c <zkn_frost_interpolate+0x46>
c0de1ea6:	9903      	ldr	r1, [sp, #12]
c0de1ea8:	4640      	mov	r0, r8
c0de1eaa:	4622      	mov	r2, r4
c0de1eac:	f005 f958 	bl	c0de7160 <cx_bn_mod_invert_nprime>
c0de1eb0:	2800      	cmp	r0, #0
c0de1eb2:	d1cc      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1eb4:	9a02      	ldr	r2, [sp, #8]
c0de1eb6:	4640      	mov	r0, r8
c0de1eb8:	4641      	mov	r1, r8
c0de1eba:	4623      	mov	r3, r4
c0de1ebc:	f005 f938 	bl	c0de7130 <cx_bn_mod_mul>
c0de1ec0:	2800      	cmp	r0, #0
c0de1ec2:	d1c4      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1ec4:	a803      	add	r0, sp, #12
c0de1ec6:	f005 f8b7 	bl	c0de7038 <cx_bn_destroy>
c0de1eca:	2800      	cmp	r0, #0
c0de1ecc:	d1bf      	bne.n	c0de1e4e <zkn_frost_interpolate+0x38>
c0de1ece:	a802      	add	r0, sp, #8
c0de1ed0:	f005 f8b2 	bl	c0de7038 <cx_bn_destroy>
c0de1ed4:	e7bb      	b.n	c0de1e4e <zkn_frost_interpolate+0x38>

c0de1ed6 <zkn_frost_interpolate_secrets>:
c0de1ed6:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de1eda:	460f      	mov	r7, r1
c0de1edc:	4606      	mov	r6, r0
c0de1ede:	a802      	add	r0, sp, #8
c0de1ee0:	2120      	movs	r1, #32
c0de1ee2:	461c      	mov	r4, r3
c0de1ee4:	4692      	mov	sl, r2
c0de1ee6:	f005 f891 	bl	c0de700c <cx_bn_alloc>
c0de1eea:	b108      	cbz	r0, c0de1ef0 <zkn_frost_interpolate_secrets+0x1a>
c0de1eec:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de1ef0:	a801      	add	r0, sp, #4
c0de1ef2:	f000 f9f0 	bl	c0de22d6 <OUTLINED_FUNCTION_4>
c0de1ef6:	2800      	cmp	r0, #0
c0de1ef8:	d1f8      	bne.n	c0de1eec <zkn_frost_interpolate_secrets+0x16>
c0de1efa:	9802      	ldr	r0, [sp, #8]
c0de1efc:	2100      	movs	r1, #0
c0de1efe:	f005 f8c5 	bl	c0de708c <cx_bn_set_u32>
c0de1f02:	2800      	cmp	r0, #0
c0de1f04:	d1f2      	bne.n	c0de1eec <zkn_frost_interpolate_secrets+0x16>
c0de1f06:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de1f0a:	2500      	movs	r5, #0
c0de1f0c:	42ac      	cmp	r4, r5
c0de1f0e:	d01d      	beq.n	c0de1f4c <zkn_frost_interpolate_secrets+0x76>
c0de1f10:	9801      	ldr	r0, [sp, #4]
c0de1f12:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de1f16:	68b3      	ldr	r3, [r6, #8]
c0de1f18:	4621      	mov	r1, r4
c0de1f1a:	9000      	str	r0, [sp, #0]
c0de1f1c:	4638      	mov	r0, r7
c0de1f1e:	f7ff ff7a 	bl	c0de1e16 <zkn_frost_interpolate>
c0de1f22:	2800      	cmp	r0, #0
c0de1f24:	d1e2      	bne.n	c0de1eec <zkn_frost_interpolate_secrets+0x16>
c0de1f26:	9801      	ldr	r0, [sp, #4]
c0de1f28:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de1f2c:	68b3      	ldr	r3, [r6, #8]
c0de1f2e:	4601      	mov	r1, r0
c0de1f30:	f005 f8fe 	bl	c0de7130 <cx_bn_mod_mul>
c0de1f34:	2800      	cmp	r0, #0
c0de1f36:	d1d9      	bne.n	c0de1eec <zkn_frost_interpolate_secrets+0x16>
c0de1f38:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de1f3c:	68b3      	ldr	r3, [r6, #8]
c0de1f3e:	4601      	mov	r1, r0
c0de1f40:	f005 f8de 	bl	c0de7100 <cx_bn_mod_add>
c0de1f44:	3501      	adds	r5, #1
c0de1f46:	2800      	cmp	r0, #0
c0de1f48:	d0e0      	beq.n	c0de1f0c <zkn_frost_interpolate_secrets+0x36>
c0de1f4a:	e7cf      	b.n	c0de1eec <zkn_frost_interpolate_secrets+0x16>
c0de1f4c:	68b2      	ldr	r2, [r6, #8]
c0de1f4e:	9902      	ldr	r1, [sp, #8]
c0de1f50:	4640      	mov	r0, r8
c0de1f52:	f005 f8f9 	bl	c0de7148 <cx_bn_reduce>
c0de1f56:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de1f5a <zkn_evalshare>:
c0de1f5a:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de1f5e:	460e      	mov	r6, r1
c0de1f60:	6801      	ldr	r1, [r0, #0]
c0de1f62:	4607      	mov	r7, r0
c0de1f64:	a801      	add	r0, sp, #4
c0de1f66:	f000 f9af 	bl	c0de22c8 <OUTLINED_FUNCTION_2>
c0de1f6a:	b108      	cbz	r0, c0de1f70 <zkn_evalshare+0x16>
c0de1f6c:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de1f70:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de1f74:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de1f78:	4640      	mov	r0, r8
c0de1f7a:	f005 f87d 	bl	c0de7078 <cx_bn_copy>
c0de1f7e:	2800      	cmp	r0, #0
c0de1f80:	d1f4      	bne.n	c0de1f6c <zkn_evalshare+0x12>
c0de1f82:	3e04      	subs	r6, #4
c0de1f84:	68bb      	ldr	r3, [r7, #8]
c0de1f86:	9801      	ldr	r0, [sp, #4]
c0de1f88:	4641      	mov	r1, r8
c0de1f8a:	b17d      	cbz	r5, c0de1fac <zkn_evalshare+0x52>
c0de1f8c:	4622      	mov	r2, r4
c0de1f8e:	f005 f8cf 	bl	c0de7130 <cx_bn_mod_mul>
c0de1f92:	2800      	cmp	r0, #0
c0de1f94:	d1ea      	bne.n	c0de1f6c <zkn_evalshare+0x12>
c0de1f96:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de1f9a:	68bb      	ldr	r3, [r7, #8]
c0de1f9c:	9901      	ldr	r1, [sp, #4]
c0de1f9e:	4640      	mov	r0, r8
c0de1fa0:	f005 f8ae 	bl	c0de7100 <cx_bn_mod_add>
c0de1fa4:	3d01      	subs	r5, #1
c0de1fa6:	2800      	cmp	r0, #0
c0de1fa8:	d0ec      	beq.n	c0de1f84 <zkn_evalshare+0x2a>
c0de1faa:	e7df      	b.n	c0de1f6c <zkn_evalshare+0x12>
c0de1fac:	461a      	mov	r2, r3
c0de1fae:	f005 f8cb 	bl	c0de7148 <cx_bn_reduce>
c0de1fb2:	2800      	cmp	r0, #0
c0de1fb4:	d1da      	bne.n	c0de1f6c <zkn_evalshare+0x12>
c0de1fb6:	9901      	ldr	r1, [sp, #4]
c0de1fb8:	4640      	mov	r0, r8
c0de1fba:	f005 f85d 	bl	c0de7078 <cx_bn_copy>
c0de1fbe:	2800      	cmp	r0, #0
c0de1fc0:	d1d4      	bne.n	c0de1f6c <zkn_evalshare+0x12>
c0de1fc2:	a801      	add	r0, sp, #4
c0de1fc4:	f005 f838 	bl	c0de7038 <cx_bn_destroy>
c0de1fc8:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de1fcc <zkn_encode_group_commitmentHash>:
c0de1fcc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1fd0:	b0d6      	sub	sp, #344	@ 0x158
c0de1fd2:	4606      	mov	r6, r0
c0de1fd4:	a816      	add	r0, sp, #88	@ 0x58
c0de1fd6:	461c      	mov	r4, r3
c0de1fd8:	4615      	mov	r5, r2
c0de1fda:	460f      	mov	r7, r1
c0de1fdc:	f001 f88a 	bl	c0de30f4 <zkn_frost_H5_init>
c0de1fe0:	b110      	cbz	r0, c0de1fe8 <zkn_encode_group_commitmentHash+0x1c>
c0de1fe2:	b056      	add	sp, #344	@ 0x158
c0de1fe4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1fe8:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de1fec:	9401      	str	r4, [sp, #4]
c0de1fee:	a806      	add	r0, sp, #24
c0de1ff0:	f04f 0a00 	mov.w	sl, #0
c0de1ff4:	f04f 0b02 	mov.w	fp, #2
c0de1ff8:	2604      	movs	r6, #4
c0de1ffa:	2400      	movs	r4, #0
c0de1ffc:	9502      	str	r5, [sp, #8]
c0de1ffe:	f1a0 0801 	sub.w	r8, r0, #1
c0de2002:	42ac      	cmp	r4, r5
c0de2004:	d058      	beq.n	c0de20b8 <zkn_encode_group_commitmentHash+0xec>
c0de2006:	9805      	ldr	r0, [sp, #20]
c0de2008:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de200c:	9103      	str	r1, [sp, #12]
c0de200e:	6805      	ldr	r5, [r0, #0]
c0de2010:	9804      	ldr	r0, [sp, #16]
c0de2012:	fb05 000a 	mla	r0, r5, sl, r0
c0de2016:	4629      	mov	r1, r5
c0de2018:	b129      	cbz	r1, c0de2026 <zkn_encode_group_commitmentHash+0x5a>
c0de201a:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de201e:	f808 2001 	strb.w	r2, [r8, r1]
c0de2022:	3901      	subs	r1, #1
c0de2024:	e7f8      	b.n	c0de2018 <zkn_encode_group_commitmentHash+0x4c>
c0de2026:	a816      	add	r0, sp, #88	@ 0x58
c0de2028:	a906      	add	r1, sp, #24
c0de202a:	462a      	mov	r2, r5
c0de202c:	f001 f87c 	bl	c0de3128 <zkn_frost_hash_update>
c0de2030:	2800      	cmp	r0, #0
c0de2032:	d1d6      	bne.n	c0de1fe2 <zkn_encode_group_commitmentHash+0x16>
c0de2034:	9803      	ldr	r0, [sp, #12]
c0de2036:	9f04      	ldr	r7, [sp, #16]
c0de2038:	1c43      	adds	r3, r0, #1
c0de203a:	9805      	ldr	r0, [sp, #20]
c0de203c:	fb05 710b 	mla	r1, r5, fp, r7
c0de2040:	6802      	ldr	r2, [r0, #0]
c0de2042:	1e50      	subs	r0, r2, #1
c0de2044:	4615      	mov	r5, r2
c0de2046:	fb02 0303 	mla	r3, r2, r3, r0
c0de204a:	5cfb      	ldrb	r3, [r7, r3]
c0de204c:	b12d      	cbz	r5, c0de205a <zkn_encode_group_commitmentHash+0x8e>
c0de204e:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2052:	f808 7005 	strb.w	r7, [r8, r5]
c0de2056:	3d01      	subs	r5, #1
c0de2058:	e7f8      	b.n	c0de204c <zkn_encode_group_commitmentHash+0x80>
c0de205a:	a906      	add	r1, sp, #24
c0de205c:	5c0d      	ldrb	r5, [r1, r0]
c0de205e:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2062:	540b      	strb	r3, [r1, r0]
c0de2064:	a816      	add	r0, sp, #88	@ 0x58
c0de2066:	f001 f85f 	bl	c0de3128 <zkn_frost_hash_update>
c0de206a:	2800      	cmp	r0, #0
c0de206c:	d1b9      	bne.n	c0de1fe2 <zkn_encode_group_commitmentHash+0x16>
c0de206e:	9805      	ldr	r0, [sp, #20]
c0de2070:	9d04      	ldr	r5, [sp, #16]
c0de2072:	6802      	ldr	r2, [r0, #0]
c0de2074:	9803      	ldr	r0, [sp, #12]
c0de2076:	1cc3      	adds	r3, r0, #3
c0de2078:	1e50      	subs	r0, r2, #1
c0de207a:	fb02 5106 	mla	r1, r2, r6, r5
c0de207e:	fb02 0303 	mla	r3, r2, r3, r0
c0de2082:	5ceb      	ldrb	r3, [r5, r3]
c0de2084:	4615      	mov	r5, r2
c0de2086:	b12d      	cbz	r5, c0de2094 <zkn_encode_group_commitmentHash+0xc8>
c0de2088:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de208c:	f808 7005 	strb.w	r7, [r8, r5]
c0de2090:	3d01      	subs	r5, #1
c0de2092:	e7f8      	b.n	c0de2086 <zkn_encode_group_commitmentHash+0xba>
c0de2094:	a906      	add	r1, sp, #24
c0de2096:	5c0d      	ldrb	r5, [r1, r0]
c0de2098:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de209c:	540b      	strb	r3, [r1, r0]
c0de209e:	a816      	add	r0, sp, #88	@ 0x58
c0de20a0:	f001 f842 	bl	c0de3128 <zkn_frost_hash_update>
c0de20a4:	3605      	adds	r6, #5
c0de20a6:	3401      	adds	r4, #1
c0de20a8:	9d02      	ldr	r5, [sp, #8]
c0de20aa:	f10b 0b05 	add.w	fp, fp, #5
c0de20ae:	f10a 0a05 	add.w	sl, sl, #5
c0de20b2:	2800      	cmp	r0, #0
c0de20b4:	d0a5      	beq.n	c0de2002 <zkn_encode_group_commitmentHash+0x36>
c0de20b6:	e794      	b.n	c0de1fe2 <zkn_encode_group_commitmentHash+0x16>
c0de20b8:	9805      	ldr	r0, [sp, #20]
c0de20ba:	6881      	ldr	r1, [r0, #8]
c0de20bc:	a816      	add	r0, sp, #88	@ 0x58
c0de20be:	9a01      	ldr	r2, [sp, #4]
c0de20c0:	f001 f834 	bl	c0de312c <zkn_frost_hash_final>
c0de20c4:	e78d      	b.n	c0de1fe2 <zkn_encode_group_commitmentHash+0x16>

c0de20c6 <zkn_compute_group_commitment>:
c0de20c6:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de20ca:	b088      	sub	sp, #32
c0de20cc:	460d      	mov	r5, r1
c0de20ce:	a905      	add	r1, sp, #20
c0de20d0:	461f      	mov	r7, r3
c0de20d2:	4692      	mov	sl, r2
c0de20d4:	4604      	mov	r4, r0
c0de20d6:	f000 f901 	bl	c0de22dc <tEdwards_alloc>
c0de20da:	b948      	cbnz	r0, c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de20dc:	a902      	add	r1, sp, #8
c0de20de:	4620      	mov	r0, r4
c0de20e0:	f000 f8fc 	bl	c0de22dc <tEdwards_alloc>
c0de20e4:	b920      	cbnz	r0, c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de20e6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de20e8:	4620      	mov	r0, r4
c0de20ea:	f000 fbef 	bl	c0de28cc <tEdwards_SetNeutral>
c0de20ee:	b110      	cbz	r0, c0de20f6 <zkn_compute_group_commitment+0x30>
c0de20f0:	b008      	add	sp, #32
c0de20f2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de20f6:	ae05      	add	r6, sp, #20
c0de20f8:	f04f 0800 	mov.w	r8, #0
c0de20fc:	f04f 0b04 	mov.w	fp, #4
c0de2100:	9501      	str	r5, [sp, #4]
c0de2102:	4547      	cmp	r7, r8
c0de2104:	d041      	beq.n	c0de218a <zkn_compute_group_commitment+0xc4>
c0de2106:	6822      	ldr	r2, [r4, #0]
c0de2108:	f1ab 0003 	sub.w	r0, fp, #3
c0de210c:	4633      	mov	r3, r6
c0de210e:	fb02 5100 	mla	r1, r2, r0, r5
c0de2112:	f1ab 0002 	sub.w	r0, fp, #2
c0de2116:	fb02 5200 	mla	r2, r2, r0, r5
c0de211a:	4620      	mov	r0, r4
c0de211c:	f000 fb4e 	bl	c0de27bc <tEdwards_init>
c0de2120:	2800      	cmp	r0, #0
c0de2122:	d1e5      	bne.n	c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de2124:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2126:	4620      	mov	r0, r4
c0de2128:	4632      	mov	r2, r6
c0de212a:	460b      	mov	r3, r1
c0de212c:	f000 f967 	bl	c0de23fe <tEdwards_add>
c0de2130:	2800      	cmp	r0, #0
c0de2132:	d1dd      	bne.n	c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de2134:	6822      	ldr	r2, [r4, #0]
c0de2136:	f1ab 0001 	sub.w	r0, fp, #1
c0de213a:	4633      	mov	r3, r6
c0de213c:	fb02 5100 	mla	r1, r2, r0, r5
c0de2140:	fb02 520b 	mla	r2, r2, fp, r5
c0de2144:	4620      	mov	r0, r4
c0de2146:	f000 fb39 	bl	c0de27bc <tEdwards_init>
c0de214a:	2800      	cmp	r0, #0
c0de214c:	d1d0      	bne.n	c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de214e:	6823      	ldr	r3, [r4, #0]
c0de2150:	4650      	mov	r0, sl
c0de2152:	f10d 0a08 	add.w	sl, sp, #8
c0de2156:	4631      	mov	r1, r6
c0de2158:	4605      	mov	r5, r0
c0de215a:	f8cd a000 	str.w	sl, [sp]
c0de215e:	fb03 0208 	mla	r2, r3, r8, r0
c0de2162:	4620      	mov	r0, r4
c0de2164:	f000 fcb0 	bl	c0de2ac8 <tEdwards_scalarMul>
c0de2168:	2800      	cmp	r0, #0
c0de216a:	d1c1      	bne.n	c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de216c:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de216e:	4620      	mov	r0, r4
c0de2170:	4652      	mov	r2, sl
c0de2172:	460b      	mov	r3, r1
c0de2174:	f000 f943 	bl	c0de23fe <tEdwards_add>
c0de2178:	46aa      	mov	sl, r5
c0de217a:	9d01      	ldr	r5, [sp, #4]
c0de217c:	f10b 0b05 	add.w	fp, fp, #5
c0de2180:	f108 0801 	add.w	r8, r8, #1
c0de2184:	2800      	cmp	r0, #0
c0de2186:	d0bc      	beq.n	c0de2102 <zkn_compute_group_commitment+0x3c>
c0de2188:	e7b2      	b.n	c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de218a:	a905      	add	r1, sp, #20
c0de218c:	f000 f8a0 	bl	c0de22d0 <OUTLINED_FUNCTION_3>
c0de2190:	2800      	cmp	r0, #0
c0de2192:	d1ad      	bne.n	c0de20f0 <zkn_compute_group_commitment+0x2a>
c0de2194:	a902      	add	r1, sp, #8
c0de2196:	f000 f89b 	bl	c0de22d0 <OUTLINED_FUNCTION_3>
c0de219a:	e7a9      	b.n	c0de20f0 <zkn_compute_group_commitment+0x2a>

c0de219c <zkn_compute_binding_factors>:
c0de219c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de21a0:	b0f4      	sub	sp, #464	@ 0x1d0
c0de21a2:	460e      	mov	r6, r1
c0de21a4:	6801      	ldr	r1, [r0, #0]
c0de21a6:	4607      	mov	r7, r0
c0de21a8:	a873      	add	r0, sp, #460	@ 0x1cc
c0de21aa:	f000 f88d 	bl	c0de22c8 <OUTLINED_FUNCTION_2>
c0de21ae:	b9f0      	cbnz	r0, c0de21ee <zkn_compute_binding_factors+0x52>
c0de21b0:	6839      	ldr	r1, [r7, #0]
c0de21b2:	a872      	add	r0, sp, #456	@ 0x1c8
c0de21b4:	f004 ff2a 	bl	c0de700c <cx_bn_alloc>
c0de21b8:	b9c8      	cbnz	r0, c0de21ee <zkn_compute_binding_factors+0x52>
c0de21ba:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de21be:	68ba      	ldr	r2, [r7, #8]
c0de21c0:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de21c2:	f000 ff4b 	bl	c0de305c <Babyfrost_H4>
c0de21c6:	b990      	cbnz	r0, c0de21ee <zkn_compute_binding_factors+0x52>
c0de21c8:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de21ca:	4638      	mov	r0, r7
c0de21cc:	4629      	mov	r1, r5
c0de21ce:	4622      	mov	r2, r4
c0de21d0:	f7ff fefc 	bl	c0de1fcc <zkn_encode_group_commitmentHash>
c0de21d4:	b958      	cbnz	r0, c0de21ee <zkn_compute_binding_factors+0x52>
c0de21d6:	683a      	ldr	r2, [r7, #0]
c0de21d8:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de21da:	a912      	add	r1, sp, #72	@ 0x48
c0de21dc:	f004 ff60 	bl	c0de70a0 <cx_bn_export>
c0de21e0:	b928      	cbnz	r0, c0de21ee <zkn_compute_binding_factors+0x52>
c0de21e2:	683a      	ldr	r2, [r7, #0]
c0de21e4:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de21e6:	a902      	add	r1, sp, #8
c0de21e8:	f004 ff5a 	bl	c0de70a0 <cx_bn_export>
c0de21ec:	b110      	cbz	r0, c0de21f4 <zkn_compute_binding_factors+0x58>
c0de21ee:	b074      	add	sp, #464	@ 0x1d0
c0de21f0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de21f4:	2000      	movs	r0, #0
c0de21f6:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de21fa:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de21fe:	f04f 0800 	mov.w	r8, #0
c0de2202:	9000      	str	r0, [sp, #0]
c0de2204:	4544      	cmp	r4, r8
c0de2206:	d043      	beq.n	c0de2290 <zkn_compute_binding_factors+0xf4>
c0de2208:	6839      	ldr	r1, [r7, #0]
c0de220a:	a801      	add	r0, sp, #4
c0de220c:	f004 fefe 	bl	c0de700c <cx_bn_alloc>
c0de2210:	2800      	cmp	r0, #0
c0de2212:	d1ec      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de2214:	4650      	mov	r0, sl
c0de2216:	f000 ff53 	bl	c0de30c0 <zkn_frost_H1_init>
c0de221a:	2800      	cmp	r0, #0
c0de221c:	d1e7      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de221e:	6839      	ldr	r1, [r7, #0]
c0de2220:	4630      	mov	r0, r6
c0de2222:	465a      	mov	r2, fp
c0de2224:	f000 f845 	bl	c0de22b2 <OUTLINED_FUNCTION_0>
c0de2228:	2800      	cmp	r0, #0
c0de222a:	d1e0      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de222c:	6839      	ldr	r1, [r7, #0]
c0de222e:	a812      	add	r0, sp, #72	@ 0x48
c0de2230:	465a      	mov	r2, fp
c0de2232:	f000 f83e 	bl	c0de22b2 <OUTLINED_FUNCTION_0>
c0de2236:	2800      	cmp	r0, #0
c0de2238:	d1d9      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de223a:	6839      	ldr	r1, [r7, #0]
c0de223c:	a802      	add	r0, sp, #8
c0de223e:	465a      	mov	r2, fp
c0de2240:	f000 f837 	bl	c0de22b2 <OUTLINED_FUNCTION_0>
c0de2244:	2800      	cmp	r0, #0
c0de2246:	d1d2      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de2248:	6839      	ldr	r1, [r7, #0]
c0de224a:	9800      	ldr	r0, [sp, #0]
c0de224c:	465a      	mov	r2, fp
c0de224e:	fb00 5001 	mla	r0, r0, r1, r5
c0de2252:	f000 f82e 	bl	c0de22b2 <OUTLINED_FUNCTION_0>
c0de2256:	2800      	cmp	r0, #0
c0de2258:	d1c9      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de225a:	68b9      	ldr	r1, [r7, #8]
c0de225c:	9a01      	ldr	r2, [sp, #4]
c0de225e:	4650      	mov	r0, sl
c0de2260:	f000 ff64 	bl	c0de312c <zkn_frost_hash_final>
c0de2264:	2800      	cmp	r0, #0
c0de2266:	d1c2      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de2268:	683a      	ldr	r2, [r7, #0]
c0de226a:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de226c:	fb02 0108 	mla	r1, r2, r8, r0
c0de2270:	9801      	ldr	r0, [sp, #4]
c0de2272:	f004 ff15 	bl	c0de70a0 <cx_bn_export>
c0de2276:	2800      	cmp	r0, #0
c0de2278:	d1b9      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de227a:	a801      	add	r0, sp, #4
c0de227c:	f004 fedc 	bl	c0de7038 <cx_bn_destroy>
c0de2280:	2800      	cmp	r0, #0
c0de2282:	d1b4      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de2284:	9800      	ldr	r0, [sp, #0]
c0de2286:	f108 0801 	add.w	r8, r8, #1
c0de228a:	3005      	adds	r0, #5
c0de228c:	9000      	str	r0, [sp, #0]
c0de228e:	e7b9      	b.n	c0de2204 <zkn_compute_binding_factors+0x68>
c0de2290:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2292:	f004 fed1 	bl	c0de7038 <cx_bn_destroy>
c0de2296:	2800      	cmp	r0, #0
c0de2298:	d1a9      	bne.n	c0de21ee <zkn_compute_binding_factors+0x52>
c0de229a:	a872      	add	r0, sp, #456	@ 0x1c8
c0de229c:	f004 fecc 	bl	c0de7038 <cx_bn_destroy>
c0de22a0:	e7a5      	b.n	c0de21ee <zkn_compute_binding_factors+0x52>

c0de22a2 <zkn_serialize_scalar_for_hash>:
c0de22a2:	3a01      	subs	r2, #1
c0de22a4:	b121      	cbz	r1, c0de22b0 <zkn_serialize_scalar_for_hash+0xe>
c0de22a6:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de22aa:	5453      	strb	r3, [r2, r1]
c0de22ac:	3901      	subs	r1, #1
c0de22ae:	e7f9      	b.n	c0de22a4 <zkn_serialize_scalar_for_hash+0x2>
c0de22b0:	4770      	bx	lr

c0de22b2 <OUTLINED_FUNCTION_0>:
c0de22b2:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de22b6:	f7ff fff4 	bl	c0de22a2 <zkn_serialize_scalar_for_hash>
c0de22ba:	683a      	ldr	r2, [r7, #0]
c0de22bc:	4650      	mov	r0, sl
c0de22be:	4659      	mov	r1, fp
c0de22c0:	f85d eb08 	ldr.w	lr, [sp], #8
c0de22c4:	f000 bf30 	b.w	c0de3128 <zkn_frost_hash_update>

c0de22c8 <OUTLINED_FUNCTION_2>:
c0de22c8:	461c      	mov	r4, r3
c0de22ca:	4615      	mov	r5, r2
c0de22cc:	f004 be9e 	b.w	c0de700c <cx_bn_alloc>

c0de22d0 <OUTLINED_FUNCTION_3>:
c0de22d0:	4620      	mov	r0, r4
c0de22d2:	f000 b818 	b.w	c0de2306 <tEdwards_destroy>

c0de22d6 <OUTLINED_FUNCTION_4>:
c0de22d6:	2120      	movs	r1, #32
c0de22d8:	f004 be98 	b.w	c0de700c <cx_bn_alloc>

c0de22dc <tEdwards_alloc>:
c0de22dc:	b5b0      	push	{r4, r5, r7, lr}
c0de22de:	460d      	mov	r5, r1
c0de22e0:	6801      	ldr	r1, [r0, #0]
c0de22e2:	4604      	mov	r4, r0
c0de22e4:	4628      	mov	r0, r5
c0de22e6:	f004 fe91 	bl	c0de700c <cx_bn_alloc>
c0de22ea:	b920      	cbnz	r0, c0de22f6 <tEdwards_alloc+0x1a>
c0de22ec:	6821      	ldr	r1, [r4, #0]
c0de22ee:	1d28      	adds	r0, r5, #4
c0de22f0:	f004 fe8c 	bl	c0de700c <cx_bn_alloc>
c0de22f4:	b100      	cbz	r0, c0de22f8 <tEdwards_alloc+0x1c>
c0de22f6:	bdb0      	pop	{r4, r5, r7, pc}
c0de22f8:	6821      	ldr	r1, [r4, #0]
c0de22fa:	f105 0008 	add.w	r0, r5, #8
c0de22fe:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2302:	f004 be83 	b.w	c0de700c <cx_bn_alloc>

c0de2306 <tEdwards_destroy>:
c0de2306:	b510      	push	{r4, lr}
c0de2308:	4608      	mov	r0, r1
c0de230a:	460c      	mov	r4, r1
c0de230c:	f004 fe94 	bl	c0de7038 <cx_bn_destroy>
c0de2310:	b918      	cbnz	r0, c0de231a <tEdwards_destroy+0x14>
c0de2312:	1d20      	adds	r0, r4, #4
c0de2314:	f004 fe90 	bl	c0de7038 <cx_bn_destroy>
c0de2318:	b100      	cbz	r0, c0de231c <tEdwards_destroy+0x16>
c0de231a:	bd10      	pop	{r4, pc}
c0de231c:	f104 0008 	add.w	r0, r4, #8
c0de2320:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2324:	f004 be88 	b.w	c0de7038 <cx_bn_destroy>

c0de2328 <tEdwards_double>:
c0de2328:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de232a:	460f      	mov	r7, r1
c0de232c:	4614      	mov	r4, r2
c0de232e:	4605      	mov	r5, r0
c0de2330:	6843      	ldr	r3, [r0, #4]
c0de2332:	6809      	ldr	r1, [r1, #0]
c0de2334:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2336:	687a      	ldr	r2, [r7, #4]
c0de2338:	f004 fee2 	bl	c0de7100 <cx_bn_mod_add>
c0de233c:	2800      	cmp	r0, #0
c0de233e:	d154      	bne.n	c0de23ea <tEdwards_double+0xc2>
c0de2340:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2344:	f105 0620 	add.w	r6, r5, #32
c0de2348:	f000 fbe4 	bl	c0de2b14 <OUTLINED_FUNCTION_2>
c0de234c:	2800      	cmp	r0, #0
c0de234e:	d14c      	bne.n	c0de23ea <tEdwards_double+0xc2>
c0de2350:	6839      	ldr	r1, [r7, #0]
c0de2352:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2354:	f000 fbde 	bl	c0de2b14 <OUTLINED_FUNCTION_2>
c0de2358:	2800      	cmp	r0, #0
c0de235a:	d146      	bne.n	c0de23ea <tEdwards_double+0xc2>
c0de235c:	6879      	ldr	r1, [r7, #4]
c0de235e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2360:	f000 fbd8 	bl	c0de2b14 <OUTLINED_FUNCTION_2>
c0de2364:	2800      	cmp	r0, #0
c0de2366:	d140      	bne.n	c0de23ea <tEdwards_double+0xc2>
c0de2368:	69a9      	ldr	r1, [r5, #24]
c0de236a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de236c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de236e:	f000 fbcb 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de2372:	bbd0      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de2374:	686b      	ldr	r3, [r5, #4]
c0de2376:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de237a:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de237c:	f004 fec0 	bl	c0de7100 <cx_bn_mod_add>
c0de2380:	bb98      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de2382:	68b9      	ldr	r1, [r7, #8]
c0de2384:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2386:	f000 fbc5 	bl	c0de2b14 <OUTLINED_FUNCTION_2>
c0de238a:	bb70      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de238c:	686b      	ldr	r3, [r5, #4]
c0de238e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2390:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2392:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2394:	f004 fec0 	bl	c0de7118 <cx_bn_mod_sub>
c0de2398:	bb38      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de239a:	686b      	ldr	r3, [r5, #4]
c0de239c:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de239e:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de23a2:	f004 feb9 	bl	c0de7118 <cx_bn_mod_sub>
c0de23a6:	bb00      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de23a8:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de23ac:	686b      	ldr	r3, [r5, #4]
c0de23ae:	ca07      	ldmia	r2, {r0, r1, r2}
c0de23b0:	f004 feb2 	bl	c0de7118 <cx_bn_mod_sub>
c0de23b4:	b9c8      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de23b6:	686b      	ldr	r3, [r5, #4]
c0de23b8:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de23bc:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de23be:	f004 feab 	bl	c0de7118 <cx_bn_mod_sub>
c0de23c2:	b990      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de23c4:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de23c6:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de23c8:	6820      	ldr	r0, [r4, #0]
c0de23ca:	f000 fb9d 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de23ce:	b960      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de23d0:	686b      	ldr	r3, [r5, #4]
c0de23d2:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de23d6:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de23d8:	f004 fe9e 	bl	c0de7118 <cx_bn_mod_sub>
c0de23dc:	b928      	cbnz	r0, c0de23ea <tEdwards_double+0xc2>
c0de23de:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de23e0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de23e2:	6860      	ldr	r0, [r4, #4]
c0de23e4:	f000 fb90 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de23e8:	b100      	cbz	r0, c0de23ec <tEdwards_double+0xc4>
c0de23ea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de23ec:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de23ee:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de23f0:	68a0      	ldr	r0, [r4, #8]
c0de23f2:	4633      	mov	r3, r6
c0de23f4:	b001      	add	sp, #4
c0de23f6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de23fa:	f004 bef3 	b.w	c0de71e4 <cx_mont_mul>

c0de23fe <tEdwards_add>:
c0de23fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2402:	4606      	mov	r6, r0
c0de2404:	4617      	mov	r7, r2
c0de2406:	460c      	mov	r4, r1
c0de2408:	6892      	ldr	r2, [r2, #8]
c0de240a:	6889      	ldr	r1, [r1, #8]
c0de240c:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de240e:	4698      	mov	r8, r3
c0de2410:	f106 0520 	add.w	r5, r6, #32
c0de2414:	f000 fb7b 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2418:	2800      	cmp	r0, #0
c0de241a:	d17d      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de241c:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2420:	462b      	mov	r3, r5
c0de2422:	460a      	mov	r2, r1
c0de2424:	f004 fede 	bl	c0de71e4 <cx_mont_mul>
c0de2428:	2800      	cmp	r0, #0
c0de242a:	d175      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de242c:	683a      	ldr	r2, [r7, #0]
c0de242e:	6821      	ldr	r1, [r4, #0]
c0de2430:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2432:	f000 fb6c 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2436:	2800      	cmp	r0, #0
c0de2438:	d16e      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de243a:	687a      	ldr	r2, [r7, #4]
c0de243c:	6861      	ldr	r1, [r4, #4]
c0de243e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2440:	f000 fb65 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2444:	2800      	cmp	r0, #0
c0de2446:	d167      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de2448:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de244c:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de244e:	f000 fb5e 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2452:	2800      	cmp	r0, #0
c0de2454:	d160      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de2456:	69f2      	ldr	r2, [r6, #28]
c0de2458:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de245a:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de245c:	f000 fb57 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2460:	2800      	cmp	r0, #0
c0de2462:	d159      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de2464:	6873      	ldr	r3, [r6, #4]
c0de2466:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2468:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de246c:	f004 fe54 	bl	c0de7118 <cx_bn_mod_sub>
c0de2470:	2800      	cmp	r0, #0
c0de2472:	d151      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de2474:	6873      	ldr	r3, [r6, #4]
c0de2476:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2478:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de247a:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de247c:	f004 fe40 	bl	c0de7100 <cx_bn_mod_add>
c0de2480:	2800      	cmp	r0, #0
c0de2482:	d149      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de2484:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2488:	6873      	ldr	r3, [r6, #4]
c0de248a:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de248c:	f004 fe38 	bl	c0de7100 <cx_bn_mod_add>
c0de2490:	2800      	cmp	r0, #0
c0de2492:	d141      	bne.n	c0de2518 <tEdwards_add+0x11a>
c0de2494:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2498:	6873      	ldr	r3, [r6, #4]
c0de249a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de249c:	f004 fe30 	bl	c0de7100 <cx_bn_mod_add>
c0de24a0:	bbd0      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24a2:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de24a4:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de24a8:	f000 fb31 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de24ac:	bba0      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24ae:	6873      	ldr	r3, [r6, #4]
c0de24b0:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de24b4:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de24b6:	f004 fe2f 	bl	c0de7118 <cx_bn_mod_sub>
c0de24ba:	bb68      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24bc:	6873      	ldr	r3, [r6, #4]
c0de24be:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de24c0:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de24c4:	f004 fe28 	bl	c0de7118 <cx_bn_mod_sub>
c0de24c8:	bb30      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24ca:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de24ce:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de24d0:	f000 fb1d 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de24d4:	bb00      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24d6:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de24d8:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de24da:	f8d8 0000 	ldr.w	r0, [r8]
c0de24de:	f000 fb16 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de24e2:	b9c8      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24e4:	69b1      	ldr	r1, [r6, #24]
c0de24e6:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de24ea:	f000 fb10 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de24ee:	b998      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24f0:	6873      	ldr	r3, [r6, #4]
c0de24f2:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de24f4:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de24f6:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de24f8:	f004 fe0e 	bl	c0de7118 <cx_bn_mod_sub>
c0de24fc:	b960      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de24fe:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2500:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2502:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2504:	f000 fb03 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2508:	b930      	cbnz	r0, c0de2518 <tEdwards_add+0x11a>
c0de250a:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de250e:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2512:	f000 fafc 	bl	c0de2b0e <OUTLINED_FUNCTION_1>
c0de2516:	b108      	cbz	r0, c0de251c <tEdwards_add+0x11e>
c0de2518:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de251c:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2520:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2524:	462b      	mov	r3, r5
c0de2526:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de252a:	f004 be5b 	b.w	c0de71e4 <cx_mont_mul>

c0de252e <tEdwards_IsOnCurve>:
c0de252e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2530:	4605      	mov	r5, r0
c0de2532:	460f      	mov	r7, r1
c0de2534:	2005      	movs	r0, #5
c0de2536:	6809      	ldr	r1, [r1, #0]
c0de2538:	4614      	mov	r4, r2
c0de253a:	9000      	str	r0, [sp, #0]
c0de253c:	f105 0620 	add.w	r6, r5, #32
c0de2540:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2542:	460a      	mov	r2, r1
c0de2544:	f000 fae0 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de2548:	b100      	cbz	r0, c0de254c <tEdwards_IsOnCurve+0x1e>
c0de254a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de254c:	6879      	ldr	r1, [r7, #4]
c0de254e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2550:	f000 fae0 	bl	c0de2b14 <OUTLINED_FUNCTION_2>
c0de2554:	2800      	cmp	r0, #0
c0de2556:	d1f8      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de2558:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de255c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de255e:	f000 fad3 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de2562:	2800      	cmp	r0, #0
c0de2564:	d1f1      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de2566:	69a9      	ldr	r1, [r5, #24]
c0de2568:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de256a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de256c:	f000 facc 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de2570:	2800      	cmp	r0, #0
c0de2572:	d1ea      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de2574:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2576:	686b      	ldr	r3, [r5, #4]
c0de2578:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de257a:	4601      	mov	r1, r0
c0de257c:	f004 fdc0 	bl	c0de7100 <cx_bn_mod_add>
c0de2580:	2800      	cmp	r0, #0
c0de2582:	d1e2      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de2584:	69e9      	ldr	r1, [r5, #28]
c0de2586:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2588:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de258a:	f000 fabd 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de258e:	2800      	cmp	r0, #0
c0de2590:	d1db      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de2592:	686b      	ldr	r3, [r5, #4]
c0de2594:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2596:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2598:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de259a:	f004 fdb1 	bl	c0de7100 <cx_bn_mod_add>
c0de259e:	2800      	cmp	r0, #0
c0de25a0:	d1d3      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de25a2:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de25a4:	4632      	mov	r2, r6
c0de25a6:	4601      	mov	r1, r0
c0de25a8:	f004 fe10 	bl	c0de71cc <cx_mont_from_montgomery>
c0de25ac:	2800      	cmp	r0, #0
c0de25ae:	d1cc      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de25b0:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de25b2:	4632      	mov	r2, r6
c0de25b4:	4601      	mov	r1, r0
c0de25b6:	f004 fe09 	bl	c0de71cc <cx_mont_from_montgomery>
c0de25ba:	2800      	cmp	r0, #0
c0de25bc:	d1c5      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de25be:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de25c2:	466a      	mov	r2, sp
c0de25c4:	f004 fd78 	bl	c0de70b8 <cx_bn_cmp>
c0de25c8:	2800      	cmp	r0, #0
c0de25ca:	d1be      	bne.n	c0de254a <tEdwards_IsOnCurve+0x1c>
c0de25cc:	9800      	ldr	r0, [sp, #0]
c0de25ce:	fab0 f080 	clz	r0, r0
c0de25d2:	0940      	lsrs	r0, r0, #5
c0de25d4:	7020      	strb	r0, [r4, #0]
c0de25d6:	2000      	movs	r0, #0
c0de25d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de25dc <tEdwards_Curve_alloc_init>:
c0de25dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de25e0:	b0d2      	sub	sp, #328	@ 0x148
c0de25e2:	4604      	mov	r4, r0
c0de25e4:	2902      	cmp	r1, #2
c0de25e6:	d022      	beq.n	c0de262e <tEdwards_Curve_alloc_init+0x52>
c0de25e8:	2901      	cmp	r1, #1
c0de25ea:	f040 80cd 	bne.w	c0de2788 <tEdwards_Curve_alloc_init+0x1ac>
c0de25ee:	2020      	movs	r0, #32
c0de25f0:	2220      	movs	r2, #32
c0de25f2:	6020      	str	r0, [r4, #0]
c0de25f4:	af4a      	add	r7, sp, #296	@ 0x128
c0de25f6:	4967      	ldr	r1, [pc, #412]	@ (c0de2794 <tEdwards_Curve_alloc_init+0x1b8>)
c0de25f8:	4638      	mov	r0, r7
c0de25fa:	4479      	add	r1, pc
c0de25fc:	f004 ffbc 	bl	c0de7578 <__aeabi_memcpy>
c0de2600:	ae42      	add	r6, sp, #264	@ 0x108
c0de2602:	4965      	ldr	r1, [pc, #404]	@ (c0de2798 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2604:	2220      	movs	r2, #32
c0de2606:	4630      	mov	r0, r6
c0de2608:	4479      	add	r1, pc
c0de260a:	f004 ffb5 	bl	c0de7578 <__aeabi_memcpy>
c0de260e:	4963      	ldr	r1, [pc, #396]	@ (c0de279c <tEdwards_Curve_alloc_init+0x1c0>)
c0de2610:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2614:	2220      	movs	r2, #32
c0de2616:	4650      	mov	r0, sl
c0de2618:	4479      	add	r1, pc
c0de261a:	f004 ffad 	bl	c0de7578 <__aeabi_memcpy>
c0de261e:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2620:	495f      	ldr	r1, [pc, #380]	@ (c0de27a0 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2622:	2220      	movs	r2, #32
c0de2624:	4628      	mov	r0, r5
c0de2626:	4479      	add	r1, pc
c0de2628:	f004 ffa6 	bl	c0de7578 <__aeabi_memcpy>
c0de262c:	e02d      	b.n	c0de268a <tEdwards_Curve_alloc_init+0xae>
c0de262e:	2020      	movs	r0, #32
c0de2630:	2220      	movs	r2, #32
c0de2632:	6020      	str	r0, [r4, #0]
c0de2634:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2636:	495b      	ldr	r1, [pc, #364]	@ (c0de27a4 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2638:	4638      	mov	r0, r7
c0de263a:	4479      	add	r1, pc
c0de263c:	f004 ff9c 	bl	c0de7578 <__aeabi_memcpy>
c0de2640:	ae22      	add	r6, sp, #136	@ 0x88
c0de2642:	4959      	ldr	r1, [pc, #356]	@ (c0de27a8 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2644:	2220      	movs	r2, #32
c0de2646:	4630      	mov	r0, r6
c0de2648:	4479      	add	r1, pc
c0de264a:	f004 ff95 	bl	c0de7578 <__aeabi_memcpy>
c0de264e:	4957      	ldr	r1, [pc, #348]	@ (c0de27ac <tEdwards_Curve_alloc_init+0x1d0>)
c0de2650:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2654:	2220      	movs	r2, #32
c0de2656:	4650      	mov	r0, sl
c0de2658:	4479      	add	r1, pc
c0de265a:	f004 ff8d 	bl	c0de7578 <__aeabi_memcpy>
c0de265e:	a812      	add	r0, sp, #72	@ 0x48
c0de2660:	4953      	ldr	r1, [pc, #332]	@ (c0de27b0 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2662:	2220      	movs	r2, #32
c0de2664:	9001      	str	r0, [sp, #4]
c0de2666:	4479      	add	r1, pc
c0de2668:	f004 ff86 	bl	c0de7578 <__aeabi_memcpy>
c0de266c:	4951      	ldr	r1, [pc, #324]	@ (c0de27b4 <tEdwards_Curve_alloc_init+0x1d8>)
c0de266e:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2672:	2220      	movs	r2, #32
c0de2674:	4658      	mov	r0, fp
c0de2676:	4479      	add	r1, pc
c0de2678:	f004 ff7e 	bl	c0de7578 <__aeabi_memcpy>
c0de267c:	ad02      	add	r5, sp, #8
c0de267e:	494e      	ldr	r1, [pc, #312]	@ (c0de27b8 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2680:	2220      	movs	r2, #32
c0de2682:	4628      	mov	r0, r5
c0de2684:	4479      	add	r1, pc
c0de2686:	f004 ff77 	bl	c0de7578 <__aeabi_memcpy>
c0de268a:	f104 0804 	add.w	r8, r4, #4
c0de268e:	2120      	movs	r1, #32
c0de2690:	463a      	mov	r2, r7
c0de2692:	2320      	movs	r3, #32
c0de2694:	4640      	mov	r0, r8
c0de2696:	f004 fcc3 	bl	c0de7020 <cx_bn_alloc_init>
c0de269a:	2800      	cmp	r0, #0
c0de269c:	d175      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de269e:	4620      	mov	r0, r4
c0de26a0:	462a      	mov	r2, r5
c0de26a2:	f850 1b08 	ldr.w	r1, [r0], #8
c0de26a6:	460b      	mov	r3, r1
c0de26a8:	f004 fcba 	bl	c0de7020 <cx_bn_alloc_init>
c0de26ac:	2800      	cmp	r0, #0
c0de26ae:	d16c      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de26b0:	f104 0520 	add.w	r5, r4, #32
c0de26b4:	2120      	movs	r1, #32
c0de26b6:	4628      	mov	r0, r5
c0de26b8:	f004 fd68 	bl	c0de718c <cx_mont_alloc>
c0de26bc:	2800      	cmp	r0, #0
c0de26be:	d164      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de26c0:	f8d8 1000 	ldr.w	r1, [r8]
c0de26c4:	4628      	mov	r0, r5
c0de26c6:	f004 fd6b 	bl	c0de71a0 <cx_mont_init>
c0de26ca:	2800      	cmp	r0, #0
c0de26cc:	d15d      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de26ce:	4627      	mov	r7, r4
c0de26d0:	f857 1b28 	ldr.w	r1, [r7], #40
c0de26d4:	4638      	mov	r0, r7
c0de26d6:	f004 fc99 	bl	c0de700c <cx_bn_alloc>
c0de26da:	2800      	cmp	r0, #0
c0de26dc:	d155      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de26de:	6838      	ldr	r0, [r7, #0]
c0de26e0:	2101      	movs	r1, #1
c0de26e2:	f004 fcd3 	bl	c0de708c <cx_bn_set_u32>
c0de26e6:	2800      	cmp	r0, #0
c0de26e8:	d14f      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de26ea:	6838      	ldr	r0, [r7, #0]
c0de26ec:	f000 fa16 	bl	c0de2b1c <OUTLINED_FUNCTION_3>
c0de26f0:	2800      	cmp	r0, #0
c0de26f2:	d14a      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de26f4:	f104 070c 	add.w	r7, r4, #12
c0de26f8:	4620      	mov	r0, r4
c0de26fa:	4639      	mov	r1, r7
c0de26fc:	f7ff fdee 	bl	c0de22dc <tEdwards_alloc>
c0de2700:	2800      	cmp	r0, #0
c0de2702:	d142      	bne.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2704:	9901      	ldr	r1, [sp, #4]
c0de2706:	4620      	mov	r0, r4
c0de2708:	465a      	mov	r2, fp
c0de270a:	463b      	mov	r3, r7
c0de270c:	f000 f856 	bl	c0de27bc <tEdwards_init>
c0de2710:	bbd8      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2712:	4627      	mov	r7, r4
c0de2714:	4632      	mov	r2, r6
c0de2716:	f857 1b18 	ldr.w	r1, [r7], #24
c0de271a:	4638      	mov	r0, r7
c0de271c:	460b      	mov	r3, r1
c0de271e:	f004 fc7f 	bl	c0de7020 <cx_bn_alloc_init>
c0de2722:	bb90      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2724:	6838      	ldr	r0, [r7, #0]
c0de2726:	f000 f9f9 	bl	c0de2b1c <OUTLINED_FUNCTION_3>
c0de272a:	bb70      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de272c:	4626      	mov	r6, r4
c0de272e:	4652      	mov	r2, sl
c0de2730:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2734:	4630      	mov	r0, r6
c0de2736:	460b      	mov	r3, r1
c0de2738:	f004 fc72 	bl	c0de7020 <cx_bn_alloc_init>
c0de273c:	bb28      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de273e:	6830      	ldr	r0, [r6, #0]
c0de2740:	f000 f9ec 	bl	c0de2b1c <OUTLINED_FUNCTION_3>
c0de2744:	bb08      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2746:	4620      	mov	r0, r4
c0de2748:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de274c:	f004 fc5e 	bl	c0de700c <cx_bn_alloc>
c0de2750:	b9d8      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2752:	f000 f9fb 	bl	c0de2b4c <OUTLINED_FUNCTION_8>
c0de2756:	b9c0      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2758:	f000 f9e4 	bl	c0de2b24 <OUTLINED_FUNCTION_4>
c0de275c:	b9a8      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de275e:	f000 f9f0 	bl	c0de2b42 <OUTLINED_FUNCTION_7>
c0de2762:	b990      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2764:	f000 f9fc 	bl	c0de2b60 <OUTLINED_FUNCTION_10>
c0de2768:	b978      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de276a:	f000 f9e5 	bl	c0de2b38 <OUTLINED_FUNCTION_6>
c0de276e:	b960      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2770:	f000 f9f1 	bl	c0de2b56 <OUTLINED_FUNCTION_9>
c0de2774:	b948      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2776:	f000 f9da 	bl	c0de2b2e <OUTLINED_FUNCTION_5>
c0de277a:	b930      	cbnz	r0, c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de277c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2780:	4620      	mov	r0, r4
c0de2782:	f004 fc43 	bl	c0de700c <cx_bn_alloc>
c0de2786:	e000      	b.n	c0de278a <tEdwards_Curve_alloc_init+0x1ae>
c0de2788:	4801      	ldr	r0, [pc, #4]	@ (c0de2790 <tEdwards_Curve_alloc_init+0x1b4>)
c0de278a:	b052      	add	sp, #328	@ 0x148
c0de278c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2790:	5a4b4e01 	.word	0x5a4b4e01
c0de2794:	000055b2 	.word	0x000055b2
c0de2798:	00005744 	.word	0x00005744
c0de279c:	000056f4 	.word	0x000056f4
c0de27a0:	00005646 	.word	0x00005646
c0de27a4:	00005752 	.word	0x00005752
c0de27a8:	000056a4 	.word	0x000056a4
c0de27ac:	00005714 	.word	0x00005714
c0de27b0:	00005746 	.word	0x00005746
c0de27b4:	00005756 	.word	0x00005756
c0de27b8:	00005608 	.word	0x00005608

c0de27bc <tEdwards_init>:
c0de27bc:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de27be:	6806      	ldr	r6, [r0, #0]
c0de27c0:	461c      	mov	r4, r3
c0de27c2:	4617      	mov	r7, r2
c0de27c4:	460a      	mov	r2, r1
c0de27c6:	4605      	mov	r5, r0
c0de27c8:	a802      	add	r0, sp, #8
c0de27ca:	4631      	mov	r1, r6
c0de27cc:	4633      	mov	r3, r6
c0de27ce:	f004 fc27 	bl	c0de7020 <cx_bn_alloc_init>
c0de27d2:	b100      	cbz	r0, c0de27d6 <tEdwards_init+0x1a>
c0de27d4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de27d6:	a801      	add	r0, sp, #4
c0de27d8:	4631      	mov	r1, r6
c0de27da:	463a      	mov	r2, r7
c0de27dc:	4633      	mov	r3, r6
c0de27de:	f004 fc1f 	bl	c0de7020 <cx_bn_alloc_init>
c0de27e2:	2800      	cmp	r0, #0
c0de27e4:	d1f6      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de27e6:	4668      	mov	r0, sp
c0de27e8:	4631      	mov	r1, r6
c0de27ea:	f004 fc0f 	bl	c0de700c <cx_bn_alloc>
c0de27ee:	2800      	cmp	r0, #0
c0de27f0:	d1f0      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de27f2:	f105 0620 	add.w	r6, r5, #32
c0de27f6:	6820      	ldr	r0, [r4, #0]
c0de27f8:	9902      	ldr	r1, [sp, #8]
c0de27fa:	4632      	mov	r2, r6
c0de27fc:	f004 fcda 	bl	c0de71b4 <cx_mont_to_montgomery>
c0de2800:	2800      	cmp	r0, #0
c0de2802:	d1e7      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de2804:	6860      	ldr	r0, [r4, #4]
c0de2806:	9901      	ldr	r1, [sp, #4]
c0de2808:	4632      	mov	r2, r6
c0de280a:	f004 fcd3 	bl	c0de71b4 <cx_mont_to_montgomery>
c0de280e:	2800      	cmp	r0, #0
c0de2810:	d1e0      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de2812:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2814:	68a0      	ldr	r0, [r4, #8]
c0de2816:	f004 fc2f 	bl	c0de7078 <cx_bn_copy>
c0de281a:	2800      	cmp	r0, #0
c0de281c:	d1da      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de281e:	a802      	add	r0, sp, #8
c0de2820:	f004 fc0a 	bl	c0de7038 <cx_bn_destroy>
c0de2824:	2800      	cmp	r0, #0
c0de2826:	d1d5      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de2828:	a801      	add	r0, sp, #4
c0de282a:	f004 fc05 	bl	c0de7038 <cx_bn_destroy>
c0de282e:	2800      	cmp	r0, #0
c0de2830:	d1d0      	bne.n	c0de27d4 <tEdwards_init+0x18>
c0de2832:	4668      	mov	r0, sp
c0de2834:	f004 fc00 	bl	c0de7038 <cx_bn_destroy>
c0de2838:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de283a <tEdwards_Curve_partial_destroy>:
c0de283a:	b510      	push	{r4, lr}
c0de283c:	4604      	mov	r4, r0
c0de283e:	302c      	adds	r0, #44	@ 0x2c
c0de2840:	f004 fbfa 	bl	c0de7038 <cx_bn_destroy>
c0de2844:	bbd8      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de2846:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de284a:	f004 fbf5 	bl	c0de7038 <cx_bn_destroy>
c0de284e:	bbb0      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de2850:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2854:	f004 fbf0 	bl	c0de7038 <cx_bn_destroy>
c0de2858:	bb88      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de285a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de285e:	f004 fbeb 	bl	c0de7038 <cx_bn_destroy>
c0de2862:	bb60      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de2864:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2868:	f004 fbe6 	bl	c0de7038 <cx_bn_destroy>
c0de286c:	bb38      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de286e:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2872:	f004 fbe1 	bl	c0de7038 <cx_bn_destroy>
c0de2876:	bb10      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de2878:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de287c:	f004 fbdc 	bl	c0de7038 <cx_bn_destroy>
c0de2880:	b9e8      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de2882:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2886:	f004 fbd7 	bl	c0de7038 <cx_bn_destroy>
c0de288a:	b9c0      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de288c:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2890:	f004 fbd2 	bl	c0de7038 <cx_bn_destroy>
c0de2894:	b998      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de2896:	f104 010c 	add.w	r1, r4, #12
c0de289a:	f7ff fd34 	bl	c0de2306 <tEdwards_destroy>
c0de289e:	b970      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de28a0:	f104 0018 	add.w	r0, r4, #24
c0de28a4:	f004 fbc8 	bl	c0de7038 <cx_bn_destroy>
c0de28a8:	b948      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de28aa:	f104 001c 	add.w	r0, r4, #28
c0de28ae:	f004 fbc3 	bl	c0de7038 <cx_bn_destroy>
c0de28b2:	b920      	cbnz	r0, c0de28be <tEdwards_Curve_partial_destroy+0x84>
c0de28b4:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de28b8:	f004 fbbe 	bl	c0de7038 <cx_bn_destroy>
c0de28bc:	b100      	cbz	r0, c0de28c0 <tEdwards_Curve_partial_destroy+0x86>
c0de28be:	bd10      	pop	{r4, pc}
c0de28c0:	f104 0008 	add.w	r0, r4, #8
c0de28c4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de28c8:	f004 bbb6 	b.w	c0de7038 <cx_bn_destroy>

c0de28cc <tEdwards_SetNeutral>:
c0de28cc:	b5b0      	push	{r4, r5, r7, lr}
c0de28ce:	4605      	mov	r5, r0
c0de28d0:	6808      	ldr	r0, [r1, #0]
c0de28d2:	460c      	mov	r4, r1
c0de28d4:	2100      	movs	r1, #0
c0de28d6:	f004 fbd9 	bl	c0de708c <cx_bn_set_u32>
c0de28da:	b918      	cbnz	r0, c0de28e4 <tEdwards_SetNeutral+0x18>
c0de28dc:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de28de:	f000 f944 	bl	c0de2b6a <OUTLINED_FUNCTION_11>
c0de28e2:	b100      	cbz	r0, c0de28e6 <tEdwards_SetNeutral+0x1a>
c0de28e4:	bdb0      	pop	{r4, r5, r7, pc}
c0de28e6:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de28e8:	68a0      	ldr	r0, [r4, #8]
c0de28ea:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de28ee:	f004 bbc3 	b.w	c0de7078 <cx_bn_copy>

c0de28f2 <tEdwards_export>:
c0de28f2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de28f6:	4698      	mov	r8, r3
c0de28f8:	4616      	mov	r6, r2
c0de28fa:	460f      	mov	r7, r1
c0de28fc:	4605      	mov	r5, r0
c0de28fe:	f000 f81e 	bl	c0de293e <tEdwards_normalize>
c0de2902:	b998      	cbnz	r0, c0de292c <tEdwards_export+0x3a>
c0de2904:	f105 0420 	add.w	r4, r5, #32
c0de2908:	6839      	ldr	r1, [r7, #0]
c0de290a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de290c:	4622      	mov	r2, r4
c0de290e:	f004 fc5d 	bl	c0de71cc <cx_mont_from_montgomery>
c0de2912:	b958      	cbnz	r0, c0de292c <tEdwards_export+0x3a>
c0de2914:	6879      	ldr	r1, [r7, #4]
c0de2916:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2918:	4622      	mov	r2, r4
c0de291a:	f004 fc57 	bl	c0de71cc <cx_mont_from_montgomery>
c0de291e:	b928      	cbnz	r0, c0de292c <tEdwards_export+0x3a>
c0de2920:	682a      	ldr	r2, [r5, #0]
c0de2922:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2924:	4631      	mov	r1, r6
c0de2926:	f004 fbbb 	bl	c0de70a0 <cx_bn_export>
c0de292a:	b108      	cbz	r0, c0de2930 <tEdwards_export+0x3e>
c0de292c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2930:	682a      	ldr	r2, [r5, #0]
c0de2932:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2934:	4641      	mov	r1, r8
c0de2936:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de293a:	f004 bbb1 	b.w	c0de70a0 <cx_bn_export>

c0de293e <tEdwards_normalize>:
c0de293e:	b570      	push	{r4, r5, r6, lr}
c0de2940:	4605      	mov	r5, r0
c0de2942:	460c      	mov	r4, r1
c0de2944:	6889      	ldr	r1, [r1, #8]
c0de2946:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2948:	f105 0620 	add.w	r6, r5, #32
c0de294c:	4632      	mov	r2, r6
c0de294e:	f004 fc65 	bl	c0de721c <cx_mont_invert_nprime>
c0de2952:	b9d0      	cbnz	r0, c0de298a <tEdwards_normalize+0x4c>
c0de2954:	6822      	ldr	r2, [r4, #0]
c0de2956:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de295a:	f000 f8d5 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de295e:	b9a0      	cbnz	r0, c0de298a <tEdwards_normalize+0x4c>
c0de2960:	6862      	ldr	r2, [r4, #4]
c0de2962:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2964:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2966:	f000 f8cf 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de296a:	b970      	cbnz	r0, c0de298a <tEdwards_normalize+0x4c>
c0de296c:	68a2      	ldr	r2, [r4, #8]
c0de296e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2970:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2972:	f000 f8c9 	bl	c0de2b08 <OUTLINED_FUNCTION_0>
c0de2976:	b940      	cbnz	r0, c0de298a <tEdwards_normalize+0x4c>
c0de2978:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de297a:	6820      	ldr	r0, [r4, #0]
c0de297c:	f004 fb7c 	bl	c0de7078 <cx_bn_copy>
c0de2980:	b918      	cbnz	r0, c0de298a <tEdwards_normalize+0x4c>
c0de2982:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2984:	f000 f8f1 	bl	c0de2b6a <OUTLINED_FUNCTION_11>
c0de2988:	b100      	cbz	r0, c0de298c <tEdwards_normalize+0x4e>
c0de298a:	bd70      	pop	{r4, r5, r6, pc}
c0de298c:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de298e:	68a0      	ldr	r0, [r4, #8]
c0de2990:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2994:	f004 bb70 	b.w	c0de7078 <cx_bn_copy>

c0de2998 <tEdwards_copy>:
c0de2998:	b5b0      	push	{r4, r5, r7, lr}
c0de299a:	460c      	mov	r4, r1
c0de299c:	4605      	mov	r5, r0
c0de299e:	6801      	ldr	r1, [r0, #0]
c0de29a0:	6820      	ldr	r0, [r4, #0]
c0de29a2:	f004 fb69 	bl	c0de7078 <cx_bn_copy>
c0de29a6:	b918      	cbnz	r0, c0de29b0 <tEdwards_copy+0x18>
c0de29a8:	6869      	ldr	r1, [r5, #4]
c0de29aa:	f000 f8de 	bl	c0de2b6a <OUTLINED_FUNCTION_11>
c0de29ae:	b100      	cbz	r0, c0de29b2 <tEdwards_copy+0x1a>
c0de29b0:	bdb0      	pop	{r4, r5, r7, pc}
c0de29b2:	68a9      	ldr	r1, [r5, #8]
c0de29b4:	68a0      	ldr	r0, [r4, #8]
c0de29b6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de29ba:	f004 bb5d 	b.w	c0de7078 <cx_bn_copy>

c0de29be <tEdwards_alloc_init>:
c0de29be:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de29c0:	460e      	mov	r6, r1
c0de29c2:	6801      	ldr	r1, [r0, #0]
c0de29c4:	4607      	mov	r7, r0
c0de29c6:	4618      	mov	r0, r3
c0de29c8:	461c      	mov	r4, r3
c0de29ca:	4615      	mov	r5, r2
c0de29cc:	f004 fb1e 	bl	c0de700c <cx_bn_alloc>
c0de29d0:	b950      	cbnz	r0, c0de29e8 <tEdwards_alloc_init+0x2a>
c0de29d2:	6839      	ldr	r1, [r7, #0]
c0de29d4:	1d20      	adds	r0, r4, #4
c0de29d6:	f004 fb19 	bl	c0de700c <cx_bn_alloc>
c0de29da:	b928      	cbnz	r0, c0de29e8 <tEdwards_alloc_init+0x2a>
c0de29dc:	6839      	ldr	r1, [r7, #0]
c0de29de:	f104 0008 	add.w	r0, r4, #8
c0de29e2:	f004 fb13 	bl	c0de700c <cx_bn_alloc>
c0de29e6:	b100      	cbz	r0, c0de29ea <tEdwards_alloc_init+0x2c>
c0de29e8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de29ea:	4638      	mov	r0, r7
c0de29ec:	4631      	mov	r1, r6
c0de29ee:	462a      	mov	r2, r5
c0de29f0:	4623      	mov	r3, r4
c0de29f2:	b001      	add	sp, #4
c0de29f4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de29f8:	f7ff bee0 	b.w	c0de27bc <tEdwards_init>

c0de29fc <tEdwards_scalarMul_bn>:
c0de29fc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2a00:	4607      	mov	r7, r0
c0de2a02:	2000      	movs	r0, #0
c0de2a04:	4688      	mov	r8, r1
c0de2a06:	4615      	mov	r5, r2
c0de2a08:	2100      	movs	r1, #0
c0de2a0a:	469b      	mov	fp, r3
c0de2a0c:	9003      	str	r0, [sp, #12]
c0de2a0e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2a12:	6810      	ldr	r0, [r2, #0]
c0de2a14:	aa03      	add	r2, sp, #12
c0de2a16:	f004 fb5b 	bl	c0de70d0 <cx_bn_cmp_u32>
c0de2a1a:	bb38      	cbnz	r0, c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2a1c:	9803      	ldr	r0, [sp, #12]
c0de2a1e:	b1d0      	cbz	r0, c0de2a56 <tEdwards_scalarMul_bn+0x5a>
c0de2a20:	6828      	ldr	r0, [r5, #0]
c0de2a22:	a901      	add	r1, sp, #4
c0de2a24:	f004 fb12 	bl	c0de704c <cx_bn_nbytes>
c0de2a28:	bb00      	cbnz	r0, c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2a2a:	2002      	movs	r0, #2
c0de2a2c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2a30:	f10d 040b 	add.w	r4, sp, #11
c0de2a34:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2a36:	9801      	ldr	r0, [sp, #4]
c0de2a38:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2a3c:	2000      	movs	r0, #0
c0de2a3e:	2801      	cmp	r0, #1
c0de2a40:	d00f      	beq.n	c0de2a62 <tEdwards_scalarMul_bn+0x66>
c0de2a42:	6828      	ldr	r0, [r5, #0]
c0de2a44:	4631      	mov	r1, r6
c0de2a46:	4622      	mov	r2, r4
c0de2a48:	f004 fb4e 	bl	c0de70e8 <cx_bn_tst_bit>
c0de2a4c:	b970      	cbnz	r0, c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2a4e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2a52:	3e01      	subs	r6, #1
c0de2a54:	e7f3      	b.n	c0de2a3e <tEdwards_scalarMul_bn+0x42>
c0de2a56:	4638      	mov	r0, r7
c0de2a58:	4659      	mov	r1, fp
c0de2a5a:	f7ff ff37 	bl	c0de28cc <tEdwards_SetNeutral>
c0de2a5e:	b928      	cbnz	r0, c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2a60:	e7de      	b.n	c0de2a20 <tEdwards_scalarMul_bn+0x24>
c0de2a62:	4640      	mov	r0, r8
c0de2a64:	4659      	mov	r1, fp
c0de2a66:	f7ff ff97 	bl	c0de2998 <tEdwards_copy>
c0de2a6a:	b110      	cbz	r0, c0de2a72 <tEdwards_scalarMul_bn+0x76>
c0de2a6c:	b004      	add	sp, #16
c0de2a6e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2a72:	2001      	movs	r0, #1
c0de2a74:	f10d 0a0b 	add.w	sl, sp, #11
c0de2a78:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2a7c:	2e00      	cmp	r6, #0
c0de2a7e:	d420      	bmi.n	c0de2ac2 <tEdwards_scalarMul_bn+0xc6>
c0de2a80:	4638      	mov	r0, r7
c0de2a82:	4659      	mov	r1, fp
c0de2a84:	465a      	mov	r2, fp
c0de2a86:	f7ff fc4f 	bl	c0de2328 <tEdwards_double>
c0de2a8a:	2800      	cmp	r0, #0
c0de2a8c:	d1ee      	bne.n	c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2a8e:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2a90:	4631      	mov	r1, r6
c0de2a92:	4652      	mov	r2, sl
c0de2a94:	0040      	lsls	r0, r0, #1
c0de2a96:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2a98:	6828      	ldr	r0, [r5, #0]
c0de2a9a:	f004 fb25 	bl	c0de70e8 <cx_bn_tst_bit>
c0de2a9e:	2800      	cmp	r0, #0
c0de2aa0:	d1e4      	bne.n	c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2aa2:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2aa6:	b150      	cbz	r0, c0de2abe <tEdwards_scalarMul_bn+0xc2>
c0de2aa8:	4638      	mov	r0, r7
c0de2aaa:	4659      	mov	r1, fp
c0de2aac:	4642      	mov	r2, r8
c0de2aae:	465b      	mov	r3, fp
c0de2ab0:	f7ff fca5 	bl	c0de23fe <tEdwards_add>
c0de2ab4:	2800      	cmp	r0, #0
c0de2ab6:	d1d9      	bne.n	c0de2a6c <tEdwards_scalarMul_bn+0x70>
c0de2ab8:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2aba:	3001      	adds	r0, #1
c0de2abc:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2abe:	3e01      	subs	r6, #1
c0de2ac0:	e7dc      	b.n	c0de2a7c <tEdwards_scalarMul_bn+0x80>
c0de2ac2:	2000      	movs	r0, #0
c0de2ac4:	e7d2      	b.n	c0de2a6c <tEdwards_scalarMul_bn+0x70>
	...

c0de2ac8 <tEdwards_scalarMul>:
c0de2ac8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2aca:	460c      	mov	r4, r1
c0de2acc:	6801      	ldr	r1, [r0, #0]
c0de2ace:	4299      	cmp	r1, r3
c0de2ad0:	bf3c      	itt	cc
c0de2ad2:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2b04 <tEdwards_scalarMul+0x3c>)
c0de2ad4:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2ad6:	4605      	mov	r5, r0
c0de2ad8:	20ca      	movs	r0, #202	@ 0xca
c0de2ada:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2adc:	a801      	add	r0, sp, #4
c0de2ade:	f004 fa9f 	bl	c0de7020 <cx_bn_alloc_init>
c0de2ae2:	b100      	cbz	r0, c0de2ae6 <tEdwards_scalarMul+0x1e>
c0de2ae4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2ae6:	20b3      	movs	r0, #179	@ 0xb3
c0de2ae8:	9b06      	ldr	r3, [sp, #24]
c0de2aea:	4621      	mov	r1, r4
c0de2aec:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2aee:	aa01      	add	r2, sp, #4
c0de2af0:	4628      	mov	r0, r5
c0de2af2:	f7ff ff83 	bl	c0de29fc <tEdwards_scalarMul_bn>
c0de2af6:	2800      	cmp	r0, #0
c0de2af8:	d1f4      	bne.n	c0de2ae4 <tEdwards_scalarMul+0x1c>
c0de2afa:	a801      	add	r0, sp, #4
c0de2afc:	f004 fa9c 	bl	c0de7038 <cx_bn_destroy>
c0de2b00:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2b02:	bf00      	nop
c0de2b04:	5a4b4e01 	.word	0x5a4b4e01

c0de2b08 <OUTLINED_FUNCTION_0>:
c0de2b08:	4633      	mov	r3, r6
c0de2b0a:	f004 bb6b 	b.w	c0de71e4 <cx_mont_mul>

c0de2b0e <OUTLINED_FUNCTION_1>:
c0de2b0e:	462b      	mov	r3, r5
c0de2b10:	f004 bb68 	b.w	c0de71e4 <cx_mont_mul>

c0de2b14 <OUTLINED_FUNCTION_2>:
c0de2b14:	4633      	mov	r3, r6
c0de2b16:	460a      	mov	r2, r1
c0de2b18:	f004 bb64 	b.w	c0de71e4 <cx_mont_mul>

c0de2b1c <OUTLINED_FUNCTION_3>:
c0de2b1c:	462a      	mov	r2, r5
c0de2b1e:	4601      	mov	r1, r0
c0de2b20:	f004 bb48 	b.w	c0de71b4 <cx_mont_to_montgomery>

c0de2b24 <OUTLINED_FUNCTION_4>:
c0de2b24:	4620      	mov	r0, r4
c0de2b26:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2b2a:	f004 ba6f 	b.w	c0de700c <cx_bn_alloc>

c0de2b2e <OUTLINED_FUNCTION_5>:
c0de2b2e:	4620      	mov	r0, r4
c0de2b30:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2b34:	f004 ba6a 	b.w	c0de700c <cx_bn_alloc>

c0de2b38 <OUTLINED_FUNCTION_6>:
c0de2b38:	4620      	mov	r0, r4
c0de2b3a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2b3e:	f004 ba65 	b.w	c0de700c <cx_bn_alloc>

c0de2b42 <OUTLINED_FUNCTION_7>:
c0de2b42:	4620      	mov	r0, r4
c0de2b44:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2b48:	f004 ba60 	b.w	c0de700c <cx_bn_alloc>

c0de2b4c <OUTLINED_FUNCTION_8>:
c0de2b4c:	4620      	mov	r0, r4
c0de2b4e:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2b52:	f004 ba5b 	b.w	c0de700c <cx_bn_alloc>

c0de2b56 <OUTLINED_FUNCTION_9>:
c0de2b56:	4620      	mov	r0, r4
c0de2b58:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2b5c:	f004 ba56 	b.w	c0de700c <cx_bn_alloc>

c0de2b60 <OUTLINED_FUNCTION_10>:
c0de2b60:	4620      	mov	r0, r4
c0de2b62:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2b66:	f004 ba51 	b.w	c0de700c <cx_bn_alloc>

c0de2b6a <OUTLINED_FUNCTION_11>:
c0de2b6a:	6860      	ldr	r0, [r4, #4]
c0de2b6c:	f004 ba84 	b.w	c0de7078 <cx_bn_copy>

c0de2b70 <grain_lfsr_advance>:
c0de2b70:	b5b0      	push	{r4, r5, r7, lr}
c0de2b72:	68c2      	ldr	r2, [r0, #12]
c0de2b74:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2b78:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2b7c:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2b80:	07e4      	lsls	r4, r4, #31
c0de2b82:	60c5      	str	r5, [r0, #12]
c0de2b84:	07dd      	lsls	r5, r3, #31
c0de2b86:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2b8a:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2b8e:	6044      	str	r4, [r0, #4]
c0de2b90:	4c15      	ldr	r4, [pc, #84]	@ (c0de2be8 <grain_lfsr_advance+0x78>)
c0de2b92:	6005      	str	r5, [r0, #0]
c0de2b94:	4021      	ands	r1, r4
c0de2b96:	4c15      	ldr	r4, [pc, #84]	@ (c0de2bec <grain_lfsr_advance+0x7c>)
c0de2b98:	4023      	ands	r3, r4
c0de2b9a:	4419      	add	r1, r3
c0de2b9c:	0c0c      	lsrs	r4, r1, #16
c0de2b9e:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2ba2:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2ba6:	4421      	add	r1, r4
c0de2ba8:	0a0c      	lsrs	r4, r1, #8
c0de2baa:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2bae:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2bb2:	4061      	eors	r1, r4
c0de2bb4:	090c      	lsrs	r4, r1, #4
c0de2bb6:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2bba:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2bbe:	4061      	eors	r1, r4
c0de2bc0:	088c      	lsrs	r4, r1, #2
c0de2bc2:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2bc6:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2bca:	4061      	eors	r1, r4
c0de2bcc:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2bd0:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2bd4:	4059      	eors	r1, r3
c0de2bd6:	f001 0101 	and.w	r1, r1, #1
c0de2bda:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2bde:	6082      	str	r2, [r0, #8]
c0de2be0:	4608      	mov	r0, r1
c0de2be2:	2100      	movs	r1, #0
c0de2be4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2be6:	bf00      	nop
c0de2be8:	00802001 	.word	0x00802001
c0de2bec:	40080040 	.word	0x40080040

c0de2bf0 <next64_graingen>:
c0de2bf0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2bf4:	460c      	mov	r4, r1
c0de2bf6:	4605      	mov	r5, r0
c0de2bf8:	f04f 0a00 	mov.w	sl, #0
c0de2bfc:	f04f 0800 	mov.w	r8, #0
c0de2c00:	2700      	movs	r7, #0
c0de2c02:	42a7      	cmp	r7, r4
c0de2c04:	d215      	bcs.n	c0de2c32 <next64_graingen+0x42>
c0de2c06:	4628      	mov	r0, r5
c0de2c08:	f7ff ffb2 	bl	c0de2b70 <grain_lfsr_advance>
c0de2c0c:	4606      	mov	r6, r0
c0de2c0e:	4628      	mov	r0, r5
c0de2c10:	f7ff ffae 	bl	c0de2b70 <grain_lfsr_advance>
c0de2c14:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2c18:	0781      	lsls	r1, r0, #30
c0de2c1a:	d5f2      	bpl.n	c0de2c02 <next64_graingen+0x12>
c0de2c1c:	f000 0001 	and.w	r0, r0, #1
c0de2c20:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2c24:	3701      	adds	r7, #1
c0de2c26:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2c2a:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2c2e:	4682      	mov	sl, r0
c0de2c30:	e7e7      	b.n	c0de2c02 <next64_graingen+0x12>
c0de2c32:	4650      	mov	r0, sl
c0de2c34:	4641      	mov	r1, r8
c0de2c36:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2c3c <init_generator>:
c0de2c3c:	b5b0      	push	{r4, r5, r7, lr}
c0de2c3e:	4a09      	ldr	r2, [pc, #36]	@ (c0de2c64 <init_generator+0x28>)
c0de2c40:	4b09      	ldr	r3, [pc, #36]	@ (c0de2c68 <init_generator+0x2c>)
c0de2c42:	4604      	mov	r4, r0
c0de2c44:	25a0      	movs	r5, #160	@ 0xa0
c0de2c46:	2000      	movs	r0, #0
c0de2c48:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2c4c:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2c50:	e9c4 3200 	strd	r3, r2, [r4]
c0de2c54:	b125      	cbz	r5, c0de2c60 <init_generator+0x24>
c0de2c56:	4620      	mov	r0, r4
c0de2c58:	f7ff ff8a 	bl	c0de2b70 <grain_lfsr_advance>
c0de2c5c:	3d01      	subs	r5, #1
c0de2c5e:	e7f9      	b.n	c0de2c54 <init_generator+0x18>
c0de2c60:	bdb0      	pop	{r4, r5, r7, pc}
c0de2c62:	bf00      	nop
c0de2c64:	fffcf010 	.word	0xfffcf010
c0de2c68:	1801fc02 	.word	0x1801fc02

c0de2c6c <gen_integer>:
c0de2c6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2c70:	4f20      	ldr	r7, [pc, #128]	@ (c0de2cf4 <gen_integer+0x88>)
c0de2c72:	4e22      	ldr	r6, [pc, #136]	@ (c0de2cfc <gen_integer+0x90>)
c0de2c74:	4605      	mov	r5, r0
c0de2c76:	460c      	mov	r4, r1
c0de2c78:	2000      	movs	r0, #0
c0de2c7a:	46b8      	mov	r8, r7
c0de2c7c:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2cf8 <gen_integer+0x8c>)
c0de2c7e:	447e      	add	r6, pc
c0de2c80:	b9f8      	cbnz	r0, c0de2cc2 <gen_integer+0x56>
c0de2c82:	4628      	mov	r0, r5
c0de2c84:	213e      	movs	r1, #62	@ 0x3e
c0de2c86:	47b0      	blx	r6
c0de2c88:	e9c4 0100 	strd	r0, r1, [r4]
c0de2c8c:	4628      	mov	r0, r5
c0de2c8e:	2140      	movs	r1, #64	@ 0x40
c0de2c90:	47b0      	blx	r6
c0de2c92:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2c96:	4628      	mov	r0, r5
c0de2c98:	2140      	movs	r1, #64	@ 0x40
c0de2c9a:	47b0      	blx	r6
c0de2c9c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2ca0:	4628      	mov	r0, r5
c0de2ca2:	2140      	movs	r1, #64	@ 0x40
c0de2ca4:	47b0      	blx	r6
c0de2ca6:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2caa:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2cae:	463a      	mov	r2, r7
c0de2cb0:	1bc0      	subs	r0, r0, r7
c0de2cb2:	4640      	mov	r0, r8
c0de2cb4:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2cb8:	f04f 0000 	mov.w	r0, #0
c0de2cbc:	bf38      	it	cc
c0de2cbe:	2001      	movcc	r0, #1
c0de2cc0:	e7de      	b.n	c0de2c80 <gen_integer+0x14>
c0de2cc2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2cc6:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2d00 <gen_integer+0x94>)
c0de2cc8:	447d      	add	r5, pc
c0de2cca:	47a8      	blx	r5
c0de2ccc:	e9c4 0100 	strd	r0, r1, [r4]
c0de2cd0:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2cd4:	47a8      	blx	r5
c0de2cd6:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2cda:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2cde:	47a8      	blx	r5
c0de2ce0:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2ce4:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2ce8:	47a8      	blx	r5
c0de2cea:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2cee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2cf2:	bf00      	nop
c0de2cf4:	305a4b4e 	.word	0x305a4b4e
c0de2cf8:	4f582122 	.word	0x4f582122
c0de2cfc:	ffffff6f 	.word	0xffffff6f
c0de2d00:	00000039 	.word	0x00000039

c0de2d04 <rev64>:
c0de2d04:	ba0a      	rev	r2, r1
c0de2d06:	ba01      	rev	r1, r0
c0de2d08:	4610      	mov	r0, r2
c0de2d0a:	4770      	bx	lr

c0de2d0c <Poseidon_getNext_RC>:
c0de2d0c:	30c0      	adds	r0, #192	@ 0xc0
c0de2d0e:	f7ff bfad 	b.w	c0de2c6c <gen_integer>
	...

c0de2d14 <Poseidon_alloc_init>:
c0de2d14:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2d18:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2d1c:	4604      	mov	r4, r0
c0de2d1e:	30c0      	adds	r0, #192	@ 0xc0
c0de2d20:	461e      	mov	r6, r3
c0de2d22:	4617      	mov	r7, r2
c0de2d24:	460d      	mov	r5, r1
c0de2d26:	f7ff ff89 	bl	c0de2c3c <init_generator>
c0de2d2a:	492c      	ldr	r1, [pc, #176]	@ (c0de2ddc <Poseidon_alloc_init+0xc8>)
c0de2d2c:	46e8      	mov	r8, sp
c0de2d2e:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2d32:	4640      	mov	r0, r8
c0de2d34:	4479      	add	r1, pc
c0de2d36:	f004 fc1f 	bl	c0de7578 <__aeabi_memcpy>
c0de2d3a:	2000      	movs	r0, #0
c0de2d3c:	7325      	strb	r5, [r4, #12]
c0de2d3e:	6166      	str	r6, [r4, #20]
c0de2d40:	4621      	mov	r1, r4
c0de2d42:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2d46:	1c78      	adds	r0, r7, #1
c0de2d48:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2d4c:	6830      	ldr	r0, [r6, #0]
c0de2d4e:	f004 f97d 	bl	c0de704c <cx_bn_nbytes>
c0de2d52:	b930      	cbnz	r0, c0de2d62 <Poseidon_alloc_init+0x4e>
c0de2d54:	4620      	mov	r0, r4
c0de2d56:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2d5a:	4631      	mov	r1, r6
c0de2d5c:	f004 f956 	bl	c0de700c <cx_bn_alloc>
c0de2d60:	b118      	cbz	r0, c0de2d6a <Poseidon_alloc_init+0x56>
c0de2d62:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2d66:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2d6a:	68a0      	ldr	r0, [r4, #8]
c0de2d6c:	2500      	movs	r5, #0
c0de2d6e:	4285      	cmp	r5, r0
c0de2d70:	d230      	bcs.n	c0de2dd4 <Poseidon_alloc_init+0xc0>
c0de2d72:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2d76:	4631      	mov	r1, r6
c0de2d78:	f107 0018 	add.w	r0, r7, #24
c0de2d7c:	f004 f946 	bl	c0de700c <cx_bn_alloc>
c0de2d80:	2800      	cmp	r0, #0
c0de2d82:	d1ee      	bne.n	c0de2d62 <Poseidon_alloc_init+0x4e>
c0de2d84:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2d88:	4631      	mov	r1, r6
c0de2d8a:	f004 f93f 	bl	c0de700c <cx_bn_alloc>
c0de2d8e:	2800      	cmp	r0, #0
c0de2d90:	d1e7      	bne.n	c0de2d62 <Poseidon_alloc_init+0x4e>
c0de2d92:	2700      	movs	r7, #0
c0de2d94:	68a0      	ldr	r0, [r4, #8]
c0de2d96:	4287      	cmp	r7, r0
c0de2d98:	d21a      	bcs.n	c0de2dd0 <Poseidon_alloc_init+0xbc>
c0de2d9a:	fb05 7000 	mla	r0, r5, r0, r7
c0de2d9e:	4631      	mov	r1, r6
c0de2da0:	4633      	mov	r3, r6
c0de2da2:	fb00 8206 	mla	r2, r0, r6, r8
c0de2da6:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2daa:	3030      	adds	r0, #48	@ 0x30
c0de2dac:	f004 f938 	bl	c0de7020 <cx_bn_alloc_init>
c0de2db0:	2800      	cmp	r0, #0
c0de2db2:	d1d6      	bne.n	c0de2d62 <Poseidon_alloc_init+0x4e>
c0de2db4:	68a0      	ldr	r0, [r4, #8]
c0de2db6:	6962      	ldr	r2, [r4, #20]
c0de2db8:	fb05 7000 	mla	r0, r5, r0, r7
c0de2dbc:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2dc0:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2dc2:	4601      	mov	r1, r0
c0de2dc4:	f004 f9f6 	bl	c0de71b4 <cx_mont_to_montgomery>
c0de2dc8:	3701      	adds	r7, #1
c0de2dca:	2800      	cmp	r0, #0
c0de2dcc:	d0e2      	beq.n	c0de2d94 <Poseidon_alloc_init+0x80>
c0de2dce:	e7c8      	b.n	c0de2d62 <Poseidon_alloc_init+0x4e>
c0de2dd0:	3501      	adds	r5, #1
c0de2dd2:	e7cc      	b.n	c0de2d6e <Poseidon_alloc_init+0x5a>
c0de2dd4:	2001      	movs	r0, #1
c0de2dd6:	6120      	str	r0, [r4, #16]
c0de2dd8:	2000      	movs	r0, #0
c0de2dda:	e7c2      	b.n	c0de2d62 <Poseidon_alloc_init+0x4e>
c0de2ddc:	0000581c 	.word	0x0000581c

c0de2de0 <Poseidon>:
c0de2de0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2de4:	b08c      	sub	sp, #48	@ 0x30
c0de2de6:	4606      	mov	r6, r0
c0de2de8:	6900      	ldr	r0, [r0, #16]
c0de2dea:	2801      	cmp	r0, #1
c0de2dec:	f040 80b4 	bne.w	c0de2f58 <Poseidon+0x178>
c0de2df0:	69b0      	ldr	r0, [r6, #24]
c0de2df2:	461f      	mov	r7, r3
c0de2df4:	4692      	mov	sl, r2
c0de2df6:	f004 f949 	bl	c0de708c <cx_bn_set_u32>
c0de2dfa:	2800      	cmp	r0, #0
c0de2dfc:	f040 80ad 	bne.w	c0de2f5a <Poseidon+0x17a>
c0de2e00:	f106 000c 	add.w	r0, r6, #12
c0de2e04:	f106 0818 	add.w	r8, r6, #24
c0de2e08:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de2e0c:	9001      	str	r0, [sp, #4]
c0de2e0e:	2000      	movs	r0, #0
c0de2e10:	2844      	cmp	r0, #68	@ 0x44
c0de2e12:	f000 80ae 	beq.w	c0de2f72 <Poseidon+0x192>
c0de2e16:	6834      	ldr	r4, [r6, #0]
c0de2e18:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de2e1c:	f04f 0a00 	mov.w	sl, #0
c0de2e20:	68b0      	ldr	r0, [r6, #8]
c0de2e22:	4582      	cmp	sl, r0
c0de2e24:	d224      	bcs.n	c0de2e70 <Poseidon+0x90>
c0de2e26:	ad04      	add	r5, sp, #16
c0de2e28:	4658      	mov	r0, fp
c0de2e2a:	4629      	mov	r1, r5
c0de2e2c:	f7ff ff1e 	bl	c0de2c6c <gen_integer>
c0de2e30:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2e34:	4629      	mov	r1, r5
c0de2e36:	4622      	mov	r2, r4
c0de2e38:	f004 f912 	bl	c0de7060 <cx_bn_init>
c0de2e3c:	2800      	cmp	r0, #0
c0de2e3e:	f040 808c 	bne.w	c0de2f5a <Poseidon+0x17a>
c0de2e42:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2e46:	6972      	ldr	r2, [r6, #20]
c0de2e48:	4601      	mov	r1, r0
c0de2e4a:	f004 f9b3 	bl	c0de71b4 <cx_mont_to_montgomery>
c0de2e4e:	2800      	cmp	r0, #0
c0de2e50:	f040 8083 	bne.w	c0de2f5a <Poseidon+0x17a>
c0de2e54:	6972      	ldr	r2, [r6, #20]
c0de2e56:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de2e5a:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de2e5e:	6813      	ldr	r3, [r2, #0]
c0de2e60:	4602      	mov	r2, r0
c0de2e62:	f004 f94d 	bl	c0de7100 <cx_bn_mod_add>
c0de2e66:	f10a 0a01 	add.w	sl, sl, #1
c0de2e6a:	2800      	cmp	r0, #0
c0de2e6c:	d0d8      	beq.n	c0de2e20 <Poseidon+0x40>
c0de2e6e:	e074      	b.n	c0de2f5a <Poseidon+0x17a>
c0de2e70:	9902      	ldr	r1, [sp, #8]
c0de2e72:	2904      	cmp	r1, #4
c0de2e74:	d301      	bcc.n	c0de2e7a <Poseidon+0x9a>
c0de2e76:	2940      	cmp	r1, #64	@ 0x40
c0de2e78:	d323      	bcc.n	c0de2ec2 <Poseidon+0xe2>
c0de2e7a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de2e7e:	2400      	movs	r4, #0
c0de2e80:	4284      	cmp	r4, r0
c0de2e82:	d22b      	bcs.n	c0de2edc <Poseidon+0xfc>
c0de2e84:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de2e88:	6973      	ldr	r3, [r6, #20]
c0de2e8a:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2e8e:	460a      	mov	r2, r1
c0de2e90:	f004 f9a8 	bl	c0de71e4 <cx_mont_mul>
c0de2e94:	2800      	cmp	r0, #0
c0de2e96:	d160      	bne.n	c0de2f5a <Poseidon+0x17a>
c0de2e98:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de2e9c:	6973      	ldr	r3, [r6, #20]
c0de2e9e:	460a      	mov	r2, r1
c0de2ea0:	f004 f9a0 	bl	c0de71e4 <cx_mont_mul>
c0de2ea4:	2800      	cmp	r0, #0
c0de2ea6:	d158      	bne.n	c0de2f5a <Poseidon+0x17a>
c0de2ea8:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de2eac:	6973      	ldr	r3, [r6, #20]
c0de2eae:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de2eb2:	4601      	mov	r1, r0
c0de2eb4:	f004 f996 	bl	c0de71e4 <cx_mont_mul>
c0de2eb8:	2800      	cmp	r0, #0
c0de2eba:	d14e      	bne.n	c0de2f5a <Poseidon+0x17a>
c0de2ebc:	68b0      	ldr	r0, [r6, #8]
c0de2ebe:	3401      	adds	r4, #1
c0de2ec0:	e7de      	b.n	c0de2e80 <Poseidon+0xa0>
c0de2ec2:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de2ec6:	9a01      	ldr	r2, [sp, #4]
c0de2ec8:	2301      	movs	r3, #1
c0de2eca:	9100      	str	r1, [sp, #0]
c0de2ecc:	4601      	mov	r1, r0
c0de2ece:	f004 f995 	bl	c0de71fc <cx_mont_pow>
c0de2ed2:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de2ed6:	2800      	cmp	r0, #0
c0de2ed8:	d13f      	bne.n	c0de2f5a <Poseidon+0x17a>
c0de2eda:	68b0      	ldr	r0, [r6, #8]
c0de2edc:	2500      	movs	r5, #0
c0de2ede:	4285      	cmp	r5, r0
c0de2ee0:	d229      	bcs.n	c0de2f36 <Poseidon+0x156>
c0de2ee2:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de2ee6:	2100      	movs	r1, #0
c0de2ee8:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de2eec:	f004 f8ce 	bl	c0de708c <cx_bn_set_u32>
c0de2ef0:	bb98      	cbnz	r0, c0de2f5a <Poseidon+0x17a>
c0de2ef2:	9503      	str	r5, [sp, #12]
c0de2ef4:	2500      	movs	r5, #0
c0de2ef6:	68b0      	ldr	r0, [r6, #8]
c0de2ef8:	4285      	cmp	r5, r0
c0de2efa:	d219      	bcs.n	c0de2f30 <Poseidon+0x150>
c0de2efc:	9903      	ldr	r1, [sp, #12]
c0de2efe:	6973      	ldr	r3, [r6, #20]
c0de2f00:	fb01 5000 	mla	r0, r1, r0, r5
c0de2f04:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de2f08:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de2f0c:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de2f0e:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de2f12:	f004 f967 	bl	c0de71e4 <cx_mont_mul>
c0de2f16:	bb00      	cbnz	r0, c0de2f5a <Poseidon+0x17a>
c0de2f18:	6971      	ldr	r1, [r6, #20]
c0de2f1a:	6820      	ldr	r0, [r4, #0]
c0de2f1c:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de2f20:	680b      	ldr	r3, [r1, #0]
c0de2f22:	4601      	mov	r1, r0
c0de2f24:	f004 f8ec 	bl	c0de7100 <cx_bn_mod_add>
c0de2f28:	3501      	adds	r5, #1
c0de2f2a:	2800      	cmp	r0, #0
c0de2f2c:	d0e3      	beq.n	c0de2ef6 <Poseidon+0x116>
c0de2f2e:	e014      	b.n	c0de2f5a <Poseidon+0x17a>
c0de2f30:	9d03      	ldr	r5, [sp, #12]
c0de2f32:	3501      	adds	r5, #1
c0de2f34:	e7d3      	b.n	c0de2ede <Poseidon+0xfe>
c0de2f36:	2400      	movs	r4, #0
c0de2f38:	4284      	cmp	r4, r0
c0de2f3a:	d20a      	bcs.n	c0de2f52 <Poseidon+0x172>
c0de2f3c:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de2f40:	6988      	ldr	r0, [r1, #24]
c0de2f42:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de2f46:	f004 f897 	bl	c0de7078 <cx_bn_copy>
c0de2f4a:	b930      	cbnz	r0, c0de2f5a <Poseidon+0x17a>
c0de2f4c:	68b0      	ldr	r0, [r6, #8]
c0de2f4e:	3401      	adds	r4, #1
c0de2f50:	e7f2      	b.n	c0de2f38 <Poseidon+0x158>
c0de2f52:	9802      	ldr	r0, [sp, #8]
c0de2f54:	3001      	adds	r0, #1
c0de2f56:	e75b      	b.n	c0de2e10 <Poseidon+0x30>
c0de2f58:	4808      	ldr	r0, [pc, #32]	@ (c0de2f7c <Poseidon+0x19c>)
c0de2f5a:	b00c      	add	sp, #48	@ 0x30
c0de2f5c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2f60:	f858 1b04 	ldr.w	r1, [r8], #4
c0de2f64:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de2f68:	f004 f886 	bl	c0de7078 <cx_bn_copy>
c0de2f6c:	3f01      	subs	r7, #1
c0de2f6e:	2800      	cmp	r0, #0
c0de2f70:	d1f3      	bne.n	c0de2f5a <Poseidon+0x17a>
c0de2f72:	2f00      	cmp	r7, #0
c0de2f74:	d1f4      	bne.n	c0de2f60 <Poseidon+0x180>
c0de2f76:	2000      	movs	r0, #0
c0de2f78:	e7ef      	b.n	c0de2f5a <Poseidon+0x17a>
c0de2f7a:	bf00      	nop
c0de2f7c:	5a4b4e02 	.word	0x5a4b4e02

c0de2f80 <RFC9591_taggedHash>:
c0de2f80:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2f82:	b0d9      	sub	sp, #356	@ 0x164
c0de2f84:	460e      	mov	r6, r1
c0de2f86:	4607      	mov	r7, r0
c0de2f88:	a858      	add	r0, sp, #352	@ 0x160
c0de2f8a:	2140      	movs	r1, #64	@ 0x40
c0de2f8c:	461c      	mov	r4, r3
c0de2f8e:	4615      	mov	r5, r2
c0de2f90:	f004 f83c 	bl	c0de700c <cx_bn_alloc>
c0de2f94:	bbd8      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2f96:	491f      	ldr	r1, [pc, #124]	@ (c0de3014 <RFC9591_taggedHash+0x94>)
c0de2f98:	4668      	mov	r0, sp
c0de2f9a:	221d      	movs	r2, #29
c0de2f9c:	4479      	add	r1, pc
c0de2f9e:	f004 faeb 	bl	c0de7578 <__aeabi_memcpy>
c0de2fa2:	a808      	add	r0, sp, #32
c0de2fa4:	2109      	movs	r1, #9
c0de2fa6:	2240      	movs	r2, #64	@ 0x40
c0de2fa8:	f003 fdc4 	bl	c0de6b34 <cx_hash_init_ex>
c0de2fac:	bb78      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2fae:	a808      	add	r0, sp, #32
c0de2fb0:	4669      	mov	r1, sp
c0de2fb2:	221d      	movs	r2, #29
c0de2fb4:	f003 fdc3 	bl	c0de6b3e <cx_hash_update>
c0de2fb8:	bb48      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2fba:	a808      	add	r0, sp, #32
c0de2fbc:	4639      	mov	r1, r7
c0de2fbe:	4632      	mov	r2, r6
c0de2fc0:	f003 fdbd 	bl	c0de6b3e <cx_hash_update>
c0de2fc4:	bb18      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2fc6:	a808      	add	r0, sp, #32
c0de2fc8:	4629      	mov	r1, r5
c0de2fca:	4622      	mov	r2, r4
c0de2fcc:	f003 fdb7 	bl	c0de6b3e <cx_hash_update>
c0de2fd0:	b9e8      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2fd2:	a808      	add	r0, sp, #32
c0de2fd4:	ae48      	add	r6, sp, #288	@ 0x120
c0de2fd6:	4631      	mov	r1, r6
c0de2fd8:	f003 fda7 	bl	c0de6b2a <cx_hash_final>
c0de2fdc:	b9b8      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2fde:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de2fe2:	2000      	movs	r0, #0
c0de2fe4:	213f      	movs	r1, #63	@ 0x3f
c0de2fe6:	2820      	cmp	r0, #32
c0de2fe8:	d002      	beq.n	c0de2ff0 <RFC9591_taggedHash+0x70>
c0de2fea:	f000 f8dd 	bl	c0de31a8 <OUTLINED_FUNCTION_3>
c0de2fee:	e7fa      	b.n	c0de2fe6 <RFC9591_taggedHash+0x66>
c0de2ff0:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de2ff2:	a948      	add	r1, sp, #288	@ 0x120
c0de2ff4:	2240      	movs	r2, #64	@ 0x40
c0de2ff6:	f004 f833 	bl	c0de7060 <cx_bn_init>
c0de2ffa:	b940      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de2ffc:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de2ffe:	4628      	mov	r0, r5
c0de3000:	4622      	mov	r2, r4
c0de3002:	f004 f8a1 	bl	c0de7148 <cx_bn_reduce>
c0de3006:	b910      	cbnz	r0, c0de300e <RFC9591_taggedHash+0x8e>
c0de3008:	a858      	add	r0, sp, #352	@ 0x160
c0de300a:	f004 f815 	bl	c0de7038 <cx_bn_destroy>
c0de300e:	b059      	add	sp, #356	@ 0x164
c0de3010:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3012:	bf00      	nop
c0de3014:	00005a34 	.word	0x00005a34

c0de3018 <Babyfrost_H1>:
c0de3018:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de301a:	4605      	mov	r5, r0
c0de301c:	206f      	movs	r0, #111	@ 0x6f
c0de301e:	f000 f8b7 	bl	c0de3190 <OUTLINED_FUNCTION_1>
c0de3022:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3026:	f000 f8ba 	bl	c0de319e <OUTLINED_FUNCTION_2>
c0de302a:	a803      	add	r0, sp, #12
c0de302c:	f7ff ffa8 	bl	c0de2f80 <RFC9591_taggedHash>
c0de3030:	b004      	add	sp, #16
c0de3032:	bdb0      	pop	{r4, r5, r7, pc}

c0de3034 <Babyfrost_H3>:
c0de3034:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3036:	4605      	mov	r5, r0
c0de3038:	2065      	movs	r0, #101	@ 0x65
c0de303a:	460c      	mov	r4, r1
c0de303c:	e9cd 2300 	strd	r2, r3, [sp]
c0de3040:	2105      	movs	r1, #5
c0de3042:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3046:	4804      	ldr	r0, [pc, #16]	@ (c0de3058 <Babyfrost_H3+0x24>)
c0de3048:	462a      	mov	r2, r5
c0de304a:	4623      	mov	r3, r4
c0de304c:	9002      	str	r0, [sp, #8]
c0de304e:	a802      	add	r0, sp, #8
c0de3050:	f7ff ff96 	bl	c0de2f80 <RFC9591_taggedHash>
c0de3054:	b004      	add	sp, #16
c0de3056:	bdb0      	pop	{r4, r5, r7, pc}
c0de3058:	636e6f6e 	.word	0x636e6f6e

c0de305c <Babyfrost_H4>:
c0de305c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de305e:	4605      	mov	r5, r0
c0de3060:	2067      	movs	r0, #103	@ 0x67
c0de3062:	f000 f895 	bl	c0de3190 <OUTLINED_FUNCTION_1>
c0de3066:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de306a:	f000 f898 	bl	c0de319e <OUTLINED_FUNCTION_2>
c0de306e:	a803      	add	r0, sp, #12
c0de3070:	f7ff ff86 	bl	c0de2f80 <RFC9591_taggedHash>
c0de3074:	b004      	add	sp, #16
c0de3076:	bdb0      	pop	{r4, r5, r7, pc}

c0de3078 <Babyfrost_H5>:
c0de3078:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de307a:	4605      	mov	r5, r0
c0de307c:	206d      	movs	r0, #109	@ 0x6d
c0de307e:	f000 f887 	bl	c0de3190 <OUTLINED_FUNCTION_1>
c0de3082:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3086:	f000 f88a 	bl	c0de319e <OUTLINED_FUNCTION_2>
c0de308a:	a803      	add	r0, sp, #12
c0de308c:	f7ff ff78 	bl	c0de2f80 <RFC9591_taggedHash>
c0de3090:	b004      	add	sp, #16
c0de3092:	bdb0      	pop	{r4, r5, r7, pc}

c0de3094 <zkn_frost_hash_init>:
c0de3094:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3096:	461d      	mov	r5, r3
c0de3098:	4604      	mov	r4, r0
c0de309a:	f003 fd4b 	bl	c0de6b34 <cx_hash_init_ex>
c0de309e:	b938      	cbnz	r0, c0de30b0 <zkn_frost_hash_init+0x1c>
c0de30a0:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de30a4:	9e08      	ldr	r6, [sp, #32]
c0de30a6:	4620      	mov	r0, r4
c0de30a8:	4629      	mov	r1, r5
c0de30aa:	f003 fd48 	bl	c0de6b3e <cx_hash_update>
c0de30ae:	b100      	cbz	r0, c0de30b2 <zkn_frost_hash_init+0x1e>
c0de30b0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de30b2:	4620      	mov	r0, r4
c0de30b4:	4639      	mov	r1, r7
c0de30b6:	4632      	mov	r2, r6
c0de30b8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de30bc:	f003 bd3f 	b.w	c0de6b3e <cx_hash_update>

c0de30c0 <zkn_frost_H1_init>:
c0de30c0:	b570      	push	{r4, r5, r6, lr}
c0de30c2:	b08c      	sub	sp, #48	@ 0x30
c0de30c4:	4604      	mov	r4, r0
c0de30c6:	206f      	movs	r0, #111	@ 0x6f
c0de30c8:	221d      	movs	r2, #29
c0de30ca:	261d      	movs	r6, #29
c0de30cc:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de30d0:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de30d4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de30d8:	ad03      	add	r5, sp, #12
c0de30da:	4905      	ldr	r1, [pc, #20]	@ (c0de30f0 <zkn_frost_H1_init+0x30>)
c0de30dc:	4628      	mov	r0, r5
c0de30de:	4479      	add	r1, pc
c0de30e0:	f004 fa4a 	bl	c0de7578 <__aeabi_memcpy>
c0de30e4:	a90b      	add	r1, sp, #44	@ 0x2c
c0de30e6:	f000 f849 	bl	c0de317c <OUTLINED_FUNCTION_0>
c0de30ea:	b00c      	add	sp, #48	@ 0x30
c0de30ec:	bd70      	pop	{r4, r5, r6, pc}
c0de30ee:	bf00      	nop
c0de30f0:	000058f2 	.word	0x000058f2

c0de30f4 <zkn_frost_H5_init>:
c0de30f4:	b570      	push	{r4, r5, r6, lr}
c0de30f6:	b08c      	sub	sp, #48	@ 0x30
c0de30f8:	4604      	mov	r4, r0
c0de30fa:	206d      	movs	r0, #109	@ 0x6d
c0de30fc:	221d      	movs	r2, #29
c0de30fe:	261d      	movs	r6, #29
c0de3100:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3104:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3108:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de310c:	ad03      	add	r5, sp, #12
c0de310e:	4905      	ldr	r1, [pc, #20]	@ (c0de3124 <zkn_frost_H5_init+0x30>)
c0de3110:	4628      	mov	r0, r5
c0de3112:	4479      	add	r1, pc
c0de3114:	f004 fa30 	bl	c0de7578 <__aeabi_memcpy>
c0de3118:	a90b      	add	r1, sp, #44	@ 0x2c
c0de311a:	f000 f82f 	bl	c0de317c <OUTLINED_FUNCTION_0>
c0de311e:	b00c      	add	sp, #48	@ 0x30
c0de3120:	bd70      	pop	{r4, r5, r6, pc}
c0de3122:	bf00      	nop
c0de3124:	000058be 	.word	0x000058be

c0de3128 <zkn_frost_hash_update>:
c0de3128:	f003 bd09 	b.w	c0de6b3e <cx_hash_update>

c0de312c <zkn_frost_hash_final>:
c0de312c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de312e:	b091      	sub	sp, #68	@ 0x44
c0de3130:	460c      	mov	r4, r1
c0de3132:	4607      	mov	r7, r0
c0de3134:	a810      	add	r0, sp, #64	@ 0x40
c0de3136:	2140      	movs	r1, #64	@ 0x40
c0de3138:	4615      	mov	r5, r2
c0de313a:	f003 ff67 	bl	c0de700c <cx_bn_alloc>
c0de313e:	b9d8      	cbnz	r0, c0de3178 <zkn_frost_hash_final+0x4c>
c0de3140:	466e      	mov	r6, sp
c0de3142:	4638      	mov	r0, r7
c0de3144:	4631      	mov	r1, r6
c0de3146:	f003 fcf0 	bl	c0de6b2a <cx_hash_final>
c0de314a:	b9a8      	cbnz	r0, c0de3178 <zkn_frost_hash_final+0x4c>
c0de314c:	2000      	movs	r0, #0
c0de314e:	213f      	movs	r1, #63	@ 0x3f
c0de3150:	2820      	cmp	r0, #32
c0de3152:	d002      	beq.n	c0de315a <zkn_frost_hash_final+0x2e>
c0de3154:	f000 f828 	bl	c0de31a8 <OUTLINED_FUNCTION_3>
c0de3158:	e7fa      	b.n	c0de3150 <zkn_frost_hash_final+0x24>
c0de315a:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de315c:	4669      	mov	r1, sp
c0de315e:	2240      	movs	r2, #64	@ 0x40
c0de3160:	f003 ff7e 	bl	c0de7060 <cx_bn_init>
c0de3164:	b940      	cbnz	r0, c0de3178 <zkn_frost_hash_final+0x4c>
c0de3166:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3168:	4628      	mov	r0, r5
c0de316a:	4622      	mov	r2, r4
c0de316c:	f003 ffec 	bl	c0de7148 <cx_bn_reduce>
c0de3170:	b910      	cbnz	r0, c0de3178 <zkn_frost_hash_final+0x4c>
c0de3172:	a810      	add	r0, sp, #64	@ 0x40
c0de3174:	f003 ff60 	bl	c0de7038 <cx_bn_destroy>
c0de3178:	b011      	add	sp, #68	@ 0x44
c0de317a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de317c <OUTLINED_FUNCTION_0>:
c0de317c:	2003      	movs	r0, #3
c0de317e:	2240      	movs	r2, #64	@ 0x40
c0de3180:	462b      	mov	r3, r5
c0de3182:	e9cd 6100 	strd	r6, r1, [sp]
c0de3186:	9002      	str	r0, [sp, #8]
c0de3188:	4620      	mov	r0, r4
c0de318a:	2109      	movs	r1, #9
c0de318c:	f7ff bf82 	b.w	c0de3094 <zkn_frost_hash_init>

c0de3190 <OUTLINED_FUNCTION_1>:
c0de3190:	460c      	mov	r4, r1
c0de3192:	e9cd 2300 	strd	r2, r3, [sp]
c0de3196:	2103      	movs	r1, #3
c0de3198:	f88d 000e 	strb.w	r0, [sp, #14]
c0de319c:	4770      	bx	lr

c0de319e <OUTLINED_FUNCTION_2>:
c0de319e:	462a      	mov	r2, r5
c0de31a0:	4623      	mov	r3, r4
c0de31a2:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de31a6:	4770      	bx	lr

c0de31a8 <OUTLINED_FUNCTION_3>:
c0de31a8:	5c32      	ldrb	r2, [r6, r0]
c0de31aa:	5c73      	ldrb	r3, [r6, r1]
c0de31ac:	5433      	strb	r3, [r6, r0]
c0de31ae:	5472      	strb	r2, [r6, r1]
c0de31b0:	3901      	subs	r1, #1
c0de31b2:	3001      	adds	r0, #1
c0de31b4:	4770      	bx	lr

c0de31b6 <os_io_handle_default_apdu>:
c0de31b6:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de31b8:	b09d      	sub	sp, #116	@ 0x74
c0de31ba:	4615      	mov	r5, r2
c0de31bc:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de31be:	b3c8      	cbz	r0, c0de3234 <os_io_handle_default_apdu+0x7e>
c0de31c0:	b3c1      	cbz	r1, c0de3234 <os_io_handle_default_apdu+0x7e>
c0de31c2:	b3bd      	cbz	r5, c0de3234 <os_io_handle_default_apdu+0x7e>
c0de31c4:	461c      	mov	r4, r3
c0de31c6:	b3ab      	cbz	r3, c0de3234 <os_io_handle_default_apdu+0x7e>
c0de31c8:	b10a      	cbz	r2, c0de31ce <os_io_handle_default_apdu+0x18>
c0de31ca:	2100      	movs	r1, #0
c0de31cc:	7011      	strb	r1, [r2, #0]
c0de31ce:	7801      	ldrb	r1, [r0, #0]
c0de31d0:	29b0      	cmp	r1, #176	@ 0xb0
c0de31d2:	d131      	bne.n	c0de3238 <os_io_handle_default_apdu+0x82>
c0de31d4:	7841      	ldrb	r1, [r0, #1]
c0de31d6:	29a7      	cmp	r1, #167	@ 0xa7
c0de31d8:	d031      	beq.n	c0de323e <os_io_handle_default_apdu+0x88>
c0de31da:	2906      	cmp	r1, #6
c0de31dc:	d036      	beq.n	c0de324c <os_io_handle_default_apdu+0x96>
c0de31de:	2901      	cmp	r1, #1
c0de31e0:	d131      	bne.n	c0de3246 <os_io_handle_default_apdu+0x90>
c0de31e2:	7881      	ldrb	r1, [r0, #2]
c0de31e4:	bb79      	cbnz	r1, c0de3246 <os_io_handle_default_apdu+0x90>
c0de31e6:	78c0      	ldrb	r0, [r0, #3]
c0de31e8:	bb68      	cbnz	r0, c0de3246 <os_io_handle_default_apdu+0x90>
c0de31ea:	6820      	ldr	r0, [r4, #0]
c0de31ec:	2100      	movs	r1, #0
c0de31ee:	6021      	str	r1, [r4, #0]
c0de31f0:	2803      	cmp	r0, #3
c0de31f2:	d321      	bcc.n	c0de3238 <os_io_handle_default_apdu+0x82>
c0de31f4:	2601      	movs	r6, #1
c0de31f6:	1ec7      	subs	r7, r0, #3
c0de31f8:	6026      	str	r6, [r4, #0]
c0de31fa:	702e      	strb	r6, [r5, #0]
c0de31fc:	6820      	ldr	r0, [r4, #0]
c0de31fe:	1a3a      	subs	r2, r7, r0
c0de3200:	4428      	add	r0, r5
c0de3202:	1c41      	adds	r1, r0, #1
c0de3204:	2001      	movs	r0, #1
c0de3206:	f004 f86f 	bl	c0de72e8 <os_registry_get_current_app_tag>
c0de320a:	f000 f83f 	bl	c0de328c <OUTLINED_FUNCTION_0>
c0de320e:	6020      	str	r0, [r4, #0]
c0de3210:	1a3a      	subs	r2, r7, r0
c0de3212:	4428      	add	r0, r5
c0de3214:	1c41      	adds	r1, r0, #1
c0de3216:	2002      	movs	r0, #2
c0de3218:	f004 f866 	bl	c0de72e8 <os_registry_get_current_app_tag>
c0de321c:	f000 f836 	bl	c0de328c <OUTLINED_FUNCTION_0>
c0de3220:	1c41      	adds	r1, r0, #1
c0de3222:	6021      	str	r1, [r4, #0]
c0de3224:	542e      	strb	r6, [r5, r0]
c0de3226:	f004 f857 	bl	c0de72d8 <os_flags>
c0de322a:	6821      	ldr	r1, [r4, #0]
c0de322c:	1c4a      	adds	r2, r1, #1
c0de322e:	6022      	str	r2, [r4, #0]
c0de3230:	5468      	strb	r0, [r5, r1]
c0de3232:	e028      	b.n	c0de3286 <os_io_handle_default_apdu+0xd0>
c0de3234:	7814      	ldrb	r4, [r2, #0]
c0de3236:	e01e      	b.n	c0de3276 <os_io_handle_default_apdu+0xc0>
c0de3238:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de323c:	e01b      	b.n	c0de3276 <os_io_handle_default_apdu+0xc0>
c0de323e:	7881      	ldrb	r1, [r0, #2]
c0de3240:	b909      	cbnz	r1, c0de3246 <os_io_handle_default_apdu+0x90>
c0de3242:	78c0      	ldrb	r0, [r0, #3]
c0de3244:	b1d0      	cbz	r0, c0de327c <os_io_handle_default_apdu+0xc6>
c0de3246:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de324a:	e014      	b.n	c0de3276 <os_io_handle_default_apdu+0xc0>
c0de324c:	2100      	movs	r1, #0
c0de324e:	6021      	str	r1, [r4, #0]
c0de3250:	7883      	ldrb	r3, [r0, #2]
c0de3252:	7902      	ldrb	r2, [r0, #4]
c0de3254:	ad02      	add	r5, sp, #8
c0de3256:	e9cd 1500 	strd	r1, r5, [sp]
c0de325a:	1d41      	adds	r1, r0, #5
c0de325c:	4618      	mov	r0, r3
c0de325e:	2300      	movs	r3, #0
c0de3260:	f004 f806 	bl	c0de7270 <os_pki_load_certificate>
c0de3264:	4604      	mov	r4, r0
c0de3266:	4628      	mov	r0, r5
c0de3268:	216c      	movs	r1, #108	@ 0x6c
c0de326a:	f004 f99d 	bl	c0de75a8 <explicit_bzero>
c0de326e:	2c00      	cmp	r4, #0
c0de3270:	bf08      	it	eq
c0de3272:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3276:	4620      	mov	r0, r4
c0de3278:	b01d      	add	sp, #116	@ 0x74
c0de327a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de327c:	2000      	movs	r0, #0
c0de327e:	6020      	str	r0, [r4, #0]
c0de3280:	b10a      	cbz	r2, c0de3286 <os_io_handle_default_apdu+0xd0>
c0de3282:	2001      	movs	r0, #1
c0de3284:	7010      	strb	r0, [r2, #0]
c0de3286:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de328a:	e7f4      	b.n	c0de3276 <os_io_handle_default_apdu+0xc0>

c0de328c <OUTLINED_FUNCTION_0>:
c0de328c:	6821      	ldr	r1, [r4, #0]
c0de328e:	1c4a      	adds	r2, r1, #1
c0de3290:	6022      	str	r2, [r4, #0]
c0de3292:	5468      	strb	r0, [r5, r1]
c0de3294:	6821      	ldr	r1, [r4, #0]
c0de3296:	4408      	add	r0, r1
c0de3298:	4770      	bx	lr

c0de329a <io_process_itc_ux_event>:
c0de329a:	b580      	push	{r7, lr}
c0de329c:	78c0      	ldrb	r0, [r0, #3]
c0de329e:	2820      	cmp	r0, #32
c0de32a0:	d107      	bne.n	c0de32b2 <io_process_itc_ux_event+0x18>
c0de32a2:	2001      	movs	r0, #1
c0de32a4:	f003 fc65 	bl	c0de6b72 <nbgl_objAllowDrawing>
c0de32a8:	f003 fc72 	bl	c0de6b90 <nbgl_screenRedraw>
c0de32ac:	f003 fc57 	bl	c0de6b5e <nbgl_refresh>
c0de32b0:	2100      	movs	r1, #0
c0de32b2:	4608      	mov	r0, r1
c0de32b4:	bd80      	pop	{r7, pc}
	...

c0de32b8 <io_legacy_apdu_tx>:
c0de32b8:	b5b0      	push	{r4, r5, r7, lr}
c0de32ba:	460a      	mov	r2, r1
c0de32bc:	4601      	mov	r1, r0
c0de32be:	4806      	ldr	r0, [pc, #24]	@ (c0de32d8 <io_legacy_apdu_tx+0x20>)
c0de32c0:	2300      	movs	r3, #0
c0de32c2:	2500      	movs	r5, #0
c0de32c4:	eb09 0400 	add.w	r4, r9, r0
c0de32c8:	7860      	ldrb	r0, [r4, #1]
c0de32ca:	f004 f837 	bl	c0de733c <os_io_tx_cmd>
c0de32ce:	4903      	ldr	r1, [pc, #12]	@ (c0de32dc <io_legacy_apdu_tx+0x24>)
c0de32d0:	7065      	strb	r5, [r4, #1]
c0de32d2:	4449      	add	r1, r9
c0de32d4:	718d      	strb	r5, [r1, #6]
c0de32d6:	bdb0      	pop	{r4, r5, r7, pc}
c0de32d8:	00000612 	.word	0x00000612
c0de32dc:	0000060a 	.word	0x0000060a

c0de32e0 <io_legacy_apdu_rx>:
c0de32e0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de32e2:	4e65      	ldr	r6, [pc, #404]	@ (c0de3478 <io_legacy_apdu_rx+0x198>)
c0de32e4:	2100      	movs	r1, #0
c0de32e6:	4605      	mov	r5, r0
c0de32e8:	2200      	movs	r2, #0
c0de32ea:	2301      	movs	r3, #1
c0de32ec:	f88d 100b 	strb.w	r1, [sp, #11]
c0de32f0:	f240 1111 	movw	r1, #273	@ 0x111
c0de32f4:	eb09 0006 	add.w	r0, r9, r6
c0de32f8:	f004 f82c 	bl	c0de7354 <os_io_rx_evt>
c0de32fc:	4604      	mov	r4, r0
c0de32fe:	2801      	cmp	r0, #1
c0de3300:	f2c0 80b5 	blt.w	c0de346e <io_legacy_apdu_rx+0x18e>
c0de3304:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3308:	f1a0 0110 	sub.w	r1, r0, #16
c0de330c:	2916      	cmp	r1, #22
c0de330e:	d843      	bhi.n	c0de3398 <io_legacy_apdu_rx+0xb8>
c0de3310:	2201      	movs	r2, #1
c0de3312:	fa02 f101 	lsl.w	r1, r2, r1
c0de3316:	4a59      	ldr	r2, [pc, #356]	@ (c0de347c <io_legacy_apdu_rx+0x19c>)
c0de3318:	4211      	tst	r1, r2
c0de331a:	d03d      	beq.n	c0de3398 <io_legacy_apdu_rx+0xb8>
c0de331c:	4f58      	ldr	r7, [pc, #352]	@ (c0de3480 <io_legacy_apdu_rx+0x1a0>)
c0de331e:	eb09 0107 	add.w	r1, r9, r7
c0de3322:	7048      	strb	r0, [r1, #1]
c0de3324:	f003 ffb4 	bl	c0de7290 <os_perso_is_pin_set>
c0de3328:	28aa      	cmp	r0, #170	@ 0xaa
c0de332a:	d103      	bne.n	c0de3334 <io_legacy_apdu_rx+0x54>
c0de332c:	f003 ffb9 	bl	c0de72a2 <os_global_pin_is_validated>
c0de3330:	28aa      	cmp	r0, #170	@ 0xaa
c0de3332:	d14d      	bne.n	c0de33d0 <io_legacy_apdu_rx+0xf0>
c0de3334:	eb09 0006 	add.w	r0, r9, r6
c0de3338:	7840      	ldrb	r0, [r0, #1]
c0de333a:	28b0      	cmp	r0, #176	@ 0xb0
c0de333c:	d134      	bne.n	c0de33a8 <io_legacy_apdu_rx+0xc8>
c0de333e:	f240 1011 	movw	r0, #273	@ 0x111
c0de3342:	1e61      	subs	r1, r4, #1
c0de3344:	9001      	str	r0, [sp, #4]
c0de3346:	f10d 000b 	add.w	r0, sp, #11
c0de334a:	9000      	str	r0, [sp, #0]
c0de334c:	484d      	ldr	r0, [pc, #308]	@ (c0de3484 <io_legacy_apdu_rx+0x1a4>)
c0de334e:	ab01      	add	r3, sp, #4
c0de3350:	eb09 0500 	add.w	r5, r9, r0
c0de3354:	eb09 0006 	add.w	r0, r9, r6
c0de3358:	3001      	adds	r0, #1
c0de335a:	462a      	mov	r2, r5
c0de335c:	f7ff ff2b 	bl	c0de31b6 <os_io_handle_default_apdu>
c0de3360:	2400      	movs	r4, #0
c0de3362:	9901      	ldr	r1, [sp, #4]
c0de3364:	eb09 0607 	add.w	r6, r9, r7
c0de3368:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de336c:	bf18      	it	ne
c0de336e:	4621      	movne	r1, r4
c0de3370:	0a02      	lsrs	r2, r0, #8
c0de3372:	2300      	movs	r3, #0
c0de3374:	546a      	strb	r2, [r5, r1]
c0de3376:	186a      	adds	r2, r5, r1
c0de3378:	7050      	strb	r0, [r2, #1]
c0de337a:	1c88      	adds	r0, r1, #2
c0de337c:	4629      	mov	r1, r5
c0de337e:	9001      	str	r0, [sp, #4]
c0de3380:	b282      	uxth	r2, r0
c0de3382:	7870      	ldrb	r0, [r6, #1]
c0de3384:	f003 ffda 	bl	c0de733c <os_io_tx_cmd>
c0de3388:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de338c:	7074      	strb	r4, [r6, #1]
c0de338e:	2901      	cmp	r1, #1
c0de3390:	d06f      	beq.n	c0de3472 <io_legacy_apdu_rx+0x192>
c0de3392:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3396:	e06a      	b.n	c0de346e <io_legacy_apdu_rx+0x18e>
c0de3398:	1e41      	subs	r1, r0, #1
c0de339a:	2902      	cmp	r1, #2
c0de339c:	d32a      	bcc.n	c0de33f4 <io_legacy_apdu_rx+0x114>
c0de339e:	2830      	cmp	r0, #48	@ 0x30
c0de33a0:	d0bc      	beq.n	c0de331c <io_legacy_apdu_rx+0x3c>
c0de33a2:	2840      	cmp	r0, #64	@ 0x40
c0de33a4:	d0ba      	beq.n	c0de331c <io_legacy_apdu_rx+0x3c>
c0de33a6:	e061      	b.n	c0de346c <io_legacy_apdu_rx+0x18c>
c0de33a8:	eb09 0007 	add.w	r0, r9, r7
c0de33ac:	7840      	ldrb	r0, [r0, #1]
c0de33ae:	2810      	cmp	r0, #16
c0de33b0:	d040      	beq.n	c0de3434 <io_legacy_apdu_rx+0x154>
c0de33b2:	2840      	cmp	r0, #64	@ 0x40
c0de33b4:	d040      	beq.n	c0de3438 <io_legacy_apdu_rx+0x158>
c0de33b6:	2821      	cmp	r0, #33	@ 0x21
c0de33b8:	d040      	beq.n	c0de343c <io_legacy_apdu_rx+0x15c>
c0de33ba:	2822      	cmp	r0, #34	@ 0x22
c0de33bc:	d034      	beq.n	c0de3428 <io_legacy_apdu_rx+0x148>
c0de33be:	2823      	cmp	r0, #35	@ 0x23
c0de33c0:	d034      	beq.n	c0de342c <io_legacy_apdu_rx+0x14c>
c0de33c2:	2830      	cmp	r0, #48	@ 0x30
c0de33c4:	d034      	beq.n	c0de3430 <io_legacy_apdu_rx+0x150>
c0de33c6:	2820      	cmp	r0, #32
c0de33c8:	bf14      	ite	ne
c0de33ca:	2000      	movne	r0, #0
c0de33cc:	2001      	moveq	r0, #1
c0de33ce:	e036      	b.n	c0de343e <io_legacy_apdu_rx+0x15e>
c0de33d0:	482c      	ldr	r0, [pc, #176]	@ (c0de3484 <io_legacy_apdu_rx+0x1a4>)
c0de33d2:	2155      	movs	r1, #85	@ 0x55
c0de33d4:	2202      	movs	r2, #2
c0de33d6:	2300      	movs	r3, #0
c0de33d8:	f809 1000 	strb.w	r1, [r9, r0]
c0de33dc:	eb09 0100 	add.w	r1, r9, r0
c0de33e0:	2015      	movs	r0, #21
c0de33e2:	7048      	strb	r0, [r1, #1]
c0de33e4:	eb09 0007 	add.w	r0, r9, r7
c0de33e8:	7840      	ldrb	r0, [r0, #1]
c0de33ea:	b003      	add	sp, #12
c0de33ec:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de33f0:	f003 bfa4 	b.w	c0de733c <os_io_tx_cmd>
c0de33f4:	4f25      	ldr	r7, [pc, #148]	@ (c0de348c <io_legacy_apdu_rx+0x1ac>)
c0de33f6:	444e      	add	r6, r9
c0de33f8:	3c01      	subs	r4, #1
c0de33fa:	1c71      	adds	r1, r6, #1
c0de33fc:	4622      	mov	r2, r4
c0de33fe:	eb09 0007 	add.w	r0, r9, r7
c0de3402:	f004 f8b9 	bl	c0de7578 <__aeabi_memcpy>
c0de3406:	7870      	ldrb	r0, [r6, #1]
c0de3408:	281a      	cmp	r0, #26
c0de340a:	d107      	bne.n	c0de341c <io_legacy_apdu_rx+0x13c>
c0de340c:	eb09 0007 	add.w	r0, r9, r7
c0de3410:	4621      	mov	r1, r4
c0de3412:	b003      	add	sp, #12
c0de3414:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3418:	f7ff bf3f 	b.w	c0de329a <io_process_itc_ux_event>
c0de341c:	b1e5      	cbz	r5, c0de3458 <io_legacy_apdu_rx+0x178>
c0de341e:	2000      	movs	r0, #0
c0de3420:	2400      	movs	r4, #0
c0de3422:	f003 f8c3 	bl	c0de65ac <io_event>
c0de3426:	e022      	b.n	c0de346e <io_legacy_apdu_rx+0x18e>
c0de3428:	2004      	movs	r0, #4
c0de342a:	e008      	b.n	c0de343e <io_legacy_apdu_rx+0x15e>
c0de342c:	2007      	movs	r0, #7
c0de342e:	e006      	b.n	c0de343e <io_legacy_apdu_rx+0x15e>
c0de3430:	2002      	movs	r0, #2
c0de3432:	e004      	b.n	c0de343e <io_legacy_apdu_rx+0x15e>
c0de3434:	2006      	movs	r0, #6
c0de3436:	e002      	b.n	c0de343e <io_legacy_apdu_rx+0x15e>
c0de3438:	2003      	movs	r0, #3
c0de343a:	e000      	b.n	c0de343e <io_legacy_apdu_rx+0x15e>
c0de343c:	2005      	movs	r0, #5
c0de343e:	4912      	ldr	r1, [pc, #72]	@ (c0de3488 <io_legacy_apdu_rx+0x1a8>)
c0de3440:	3c01      	subs	r4, #1
c0de3442:	4622      	mov	r2, r4
c0de3444:	4449      	add	r1, r9
c0de3446:	7188      	strb	r0, [r1, #6]
c0de3448:	480e      	ldr	r0, [pc, #56]	@ (c0de3484 <io_legacy_apdu_rx+0x1a4>)
c0de344a:	eb09 0106 	add.w	r1, r9, r6
c0de344e:	3101      	adds	r1, #1
c0de3450:	4448      	add	r0, r9
c0de3452:	f004 f891 	bl	c0de7578 <__aeabi_memcpy>
c0de3456:	e00a      	b.n	c0de346e <io_legacy_apdu_rx+0x18e>
c0de3458:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de345c:	2815      	cmp	r0, #21
c0de345e:	d8de      	bhi.n	c0de341e <io_legacy_apdu_rx+0x13e>
c0de3460:	2101      	movs	r1, #1
c0de3462:	fa01 f000 	lsl.w	r0, r1, r0
c0de3466:	490a      	ldr	r1, [pc, #40]	@ (c0de3490 <io_legacy_apdu_rx+0x1b0>)
c0de3468:	4208      	tst	r0, r1
c0de346a:	d0d8      	beq.n	c0de341e <io_legacy_apdu_rx+0x13e>
c0de346c:	2400      	movs	r4, #0
c0de346e:	4620      	mov	r0, r4
c0de3470:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3472:	20ff      	movs	r0, #255	@ 0xff
c0de3474:	f003 ff44 	bl	c0de7300 <os_sched_exit>
c0de3478:	000004f8 	.word	0x000004f8
c0de347c:	007f0001 	.word	0x007f0001
c0de3480:	00000612 	.word	0x00000612
c0de3484:	000003e7 	.word	0x000003e7
c0de3488:	0000060a 	.word	0x0000060a
c0de348c:	0000078c 	.word	0x0000078c
c0de3490:	00205020 	.word	0x00205020

c0de3494 <io_seproxyhal_init>:
c0de3494:	b570      	push	{r4, r5, r6, lr}
c0de3496:	b08a      	sub	sp, #40	@ 0x28
c0de3498:	4d0b      	ldr	r5, [pc, #44]	@ (c0de34c8 <io_seproxyhal_init+0x34>)
c0de349a:	2600      	movs	r6, #0
c0de349c:	2118      	movs	r1, #24
c0de349e:	eb09 0005 	add.w	r0, r9, r5
c0de34a2:	7046      	strb	r6, [r0, #1]
c0de34a4:	ac01      	add	r4, sp, #4
c0de34a6:	4620      	mov	r0, r4
c0de34a8:	f004 f870 	bl	c0de758c <__aeabi_memclr>
c0de34ac:	2011      	movs	r0, #17
c0de34ae:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de34b2:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de34b6:	4620      	mov	r0, r4
c0de34b8:	f003 ff2c 	bl	c0de7314 <os_io_init>
c0de34bc:	2001      	movs	r0, #1
c0de34be:	f809 0005 	strb.w	r0, [r9, r5]
c0de34c2:	b00a      	add	sp, #40	@ 0x28
c0de34c4:	bd70      	pop	{r4, r5, r6, pc}
c0de34c6:	bf00      	nop
c0de34c8:	00000612 	.word	0x00000612

c0de34cc <getTextMaxLenAndWidth>:
c0de34cc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de34d0:	461c      	mov	r4, r3
c0de34d2:	4690      	mov	r8, r2
c0de34d4:	460e      	mov	r6, r1
c0de34d6:	4682      	mov	sl, r0
c0de34d8:	f003 fb73 	bl	c0de6bc2 <nbgl_getFont>
c0de34dc:	4607      	mov	r7, r0
c0de34de:	4630      	mov	r0, r6
c0de34e0:	f004 f8b0 	bl	c0de7644 <strlen>
c0de34e4:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de34e8:	4605      	mov	r5, r0
c0de34ea:	2000      	movs	r0, #0
c0de34ec:	f8ab 0000 	strh.w	r0, [fp]
c0de34f0:	8020      	strh	r0, [r4, #0]
c0de34f2:	0428      	lsls	r0, r5, #16
c0de34f4:	d03e      	beq.n	c0de3574 <getTextMaxLenAndWidth+0xa8>
c0de34f6:	7830      	ldrb	r0, [r6, #0]
c0de34f8:	3d01      	subs	r5, #1
c0de34fa:	2808      	cmp	r0, #8
c0de34fc:	d025      	beq.n	c0de354a <getTextMaxLenAndWidth+0x7e>
c0de34fe:	280c      	cmp	r0, #12
c0de3500:	d035      	beq.n	c0de356e <getTextMaxLenAndWidth+0xa2>
c0de3502:	280a      	cmp	r0, #10
c0de3504:	d033      	beq.n	c0de356e <getTextMaxLenAndWidth+0xa2>
c0de3506:	7af9      	ldrb	r1, [r7, #11]
c0de3508:	4288      	cmp	r0, r1
c0de350a:	d32d      	bcc.n	c0de3568 <getTextMaxLenAndWidth+0x9c>
c0de350c:	7b3a      	ldrb	r2, [r7, #12]
c0de350e:	4290      	cmp	r0, r2
c0de3510:	d82a      	bhi.n	c0de3568 <getTextMaxLenAndWidth+0x9c>
c0de3512:	1a40      	subs	r0, r0, r1
c0de3514:	6939      	ldr	r1, [r7, #16]
c0de3516:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de351a:	f003 fd2b 	bl	c0de6f74 <pic>
c0de351e:	7900      	ldrb	r0, [r0, #4]
c0de3520:	7a39      	ldrb	r1, [r7, #8]
c0de3522:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3526:	1a40      	subs	r0, r0, r1
c0de3528:	0601      	lsls	r1, r0, #24
c0de352a:	d01d      	beq.n	c0de3568 <getTextMaxLenAndWidth+0x9c>
c0de352c:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3530:	b2c0      	uxtb	r0, r0
c0de3532:	4401      	add	r1, r0
c0de3534:	4541      	cmp	r1, r8
c0de3536:	d81d      	bhi.n	c0de3574 <getTextMaxLenAndWidth+0xa8>
c0de3538:	8821      	ldrh	r1, [r4, #0]
c0de353a:	3101      	adds	r1, #1
c0de353c:	8021      	strh	r1, [r4, #0]
c0de353e:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3542:	4408      	add	r0, r1
c0de3544:	f8ab 0000 	strh.w	r0, [fp]
c0de3548:	e7d3      	b.n	c0de34f2 <getTextMaxLenAndWidth+0x26>
c0de354a:	fa5f f08a 	uxtb.w	r0, sl
c0de354e:	280a      	cmp	r0, #10
c0de3550:	d004      	beq.n	c0de355c <getTextMaxLenAndWidth+0x90>
c0de3552:	2808      	cmp	r0, #8
c0de3554:	d108      	bne.n	c0de3568 <getTextMaxLenAndWidth+0x9c>
c0de3556:	f04f 0a0a 	mov.w	sl, #10
c0de355a:	e001      	b.n	c0de3560 <getTextMaxLenAndWidth+0x94>
c0de355c:	f04f 0a08 	mov.w	sl, #8
c0de3560:	4650      	mov	r0, sl
c0de3562:	f003 fb2e 	bl	c0de6bc2 <nbgl_getFont>
c0de3566:	4607      	mov	r7, r0
c0de3568:	8820      	ldrh	r0, [r4, #0]
c0de356a:	3001      	adds	r0, #1
c0de356c:	e7c0      	b.n	c0de34f0 <getTextMaxLenAndWidth+0x24>
c0de356e:	8820      	ldrh	r0, [r4, #0]
c0de3570:	3001      	adds	r0, #1
c0de3572:	8020      	strh	r0, [r4, #0]
c0de3574:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3578 <nbgl_layoutGet>:
c0de3578:	b570      	push	{r4, r5, r6, lr}
c0de357a:	4605      	mov	r5, r0
c0de357c:	7800      	ldrb	r0, [r0, #0]
c0de357e:	b148      	cbz	r0, c0de3594 <nbgl_layoutGet+0x1c>
c0de3580:	4819      	ldr	r0, [pc, #100]	@ (c0de35e8 <nbgl_layoutGet+0x70>)
c0de3582:	eb09 0100 	add.w	r1, r9, r0
c0de3586:	7b8a      	ldrb	r2, [r1, #14]
c0de3588:	b152      	cbz	r2, c0de35a0 <nbgl_layoutGet+0x28>
c0de358a:	4448      	add	r0, r9
c0de358c:	7e81      	ldrb	r1, [r0, #26]
c0de358e:	b151      	cbz	r1, c0de35a6 <nbgl_layoutGet+0x2e>
c0de3590:	2400      	movs	r4, #0
c0de3592:	e026      	b.n	c0de35e2 <nbgl_layoutGet+0x6a>
c0de3594:	4814      	ldr	r0, [pc, #80]	@ (c0de35e8 <nbgl_layoutGet+0x70>)
c0de3596:	eb09 0400 	add.w	r4, r9, r0
c0de359a:	2000      	movs	r0, #0
c0de359c:	70a0      	strb	r0, [r4, #2]
c0de359e:	e004      	b.n	c0de35aa <nbgl_layoutGet+0x32>
c0de35a0:	f101 040c 	add.w	r4, r1, #12
c0de35a4:	e001      	b.n	c0de35aa <nbgl_layoutGet+0x32>
c0de35a6:	f100 0418 	add.w	r4, r0, #24
c0de35aa:	2000      	movs	r0, #0
c0de35ac:	4626      	mov	r6, r4
c0de35ae:	60a0      	str	r0, [r4, #8]
c0de35b0:	6020      	str	r0, [r4, #0]
c0de35b2:	f846 0f04 	str.w	r0, [r6, #4]!
c0de35b6:	6868      	ldr	r0, [r5, #4]
c0de35b8:	f003 fcdc 	bl	c0de6f74 <pic>
c0de35bc:	60a0      	str	r0, [r4, #8]
c0de35be:	7828      	ldrb	r0, [r5, #0]
c0de35c0:	f105 0208 	add.w	r2, r5, #8
c0de35c4:	7020      	strb	r0, [r4, #0]
c0de35c6:	4b09      	ldr	r3, [pc, #36]	@ (c0de35ec <nbgl_layoutGet+0x74>)
c0de35c8:	447b      	add	r3, pc
c0de35ca:	b120      	cbz	r0, c0de35d6 <nbgl_layoutGet+0x5e>
c0de35cc:	4630      	mov	r0, r6
c0de35ce:	2107      	movs	r1, #7
c0de35d0:	f003 fad9 	bl	c0de6b86 <nbgl_screenPush>
c0de35d4:	e004      	b.n	c0de35e0 <nbgl_layoutGet+0x68>
c0de35d6:	4630      	mov	r0, r6
c0de35d8:	2107      	movs	r1, #7
c0de35da:	f003 facf 	bl	c0de6b7c <nbgl_screenSet>
c0de35de:	2000      	movs	r0, #0
c0de35e0:	7060      	strb	r0, [r4, #1]
c0de35e2:	4620      	mov	r0, r4
c0de35e4:	bd70      	pop	{r4, r5, r6, pc}
c0de35e6:	bf00      	nop
c0de35e8:	00000614 	.word	0x00000614
c0de35ec:	00000025 	.word	0x00000025

c0de35f0 <buttonCallback>:
c0de35f0:	b5b0      	push	{r4, r5, r7, lr}
c0de35f2:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de35f6:	4811      	ldr	r0, [pc, #68]	@ (c0de363c <buttonCallback+0x4c>)
c0de35f8:	2302      	movs	r3, #2
c0de35fa:	1c5c      	adds	r4, r3, #1
c0de35fc:	d01d      	beq.n	c0de363a <buttonCallback+0x4a>
c0de35fe:	b2dc      	uxtb	r4, r3
c0de3600:	eb09 0500 	add.w	r5, r9, r0
c0de3604:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3608:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de360c:	786d      	ldrb	r5, [r5, #1]
c0de360e:	42aa      	cmp	r2, r5
c0de3610:	d105      	bne.n	c0de361e <buttonCallback+0x2e>
c0de3612:	eb09 0500 	add.w	r5, r9, r0
c0de3616:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de361a:	78ad      	ldrb	r5, [r5, #2]
c0de361c:	b90d      	cbnz	r5, c0de3622 <buttonCallback+0x32>
c0de361e:	3b01      	subs	r3, #1
c0de3620:	e7eb      	b.n	c0de35fa <buttonCallback+0xa>
c0de3622:	eb09 0200 	add.w	r2, r9, r0
c0de3626:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de362a:	6892      	ldr	r2, [r2, #8]
c0de362c:	b12a      	cbz	r2, c0de363a <buttonCallback+0x4a>
c0de362e:	4448      	add	r0, r9
c0de3630:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3634:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3638:	4710      	bx	r2
c0de363a:	bdb0      	pop	{r4, r5, r7, pc}
c0de363c:	00000614 	.word	0x00000614

c0de3640 <nbgl_layoutAddNavigation>:
c0de3640:	b570      	push	{r4, r5, r6, lr}
c0de3642:	2800      	cmp	r0, #0
c0de3644:	d04d      	beq.n	c0de36e2 <nbgl_layoutAddNavigation+0xa2>
c0de3646:	460d      	mov	r5, r1
c0de3648:	7849      	ldrb	r1, [r1, #1]
c0de364a:	4604      	mov	r4, r0
c0de364c:	07c8      	lsls	r0, r1, #31
c0de364e:	d022      	beq.n	c0de3696 <nbgl_layoutAddNavigation+0x56>
c0de3650:	7861      	ldrb	r1, [r4, #1]
c0de3652:	2002      	movs	r0, #2
c0de3654:	f003 faab 	bl	c0de6bae <nbgl_objPoolGet>
c0de3658:	782a      	ldrb	r2, [r5, #0]
c0de365a:	7869      	ldrb	r1, [r5, #1]
c0de365c:	4b23      	ldr	r3, [pc, #140]	@ (c0de36ec <nbgl_layoutAddNavigation+0xac>)
c0de365e:	4e24      	ldr	r6, [pc, #144]	@ (c0de36f0 <nbgl_layoutAddNavigation+0xb0>)
c0de3660:	2a00      	cmp	r2, #0
c0de3662:	447b      	add	r3, pc
c0de3664:	447e      	add	r6, pc
c0de3666:	4602      	mov	r2, r0
c0de3668:	bf08      	it	eq
c0de366a:	461e      	moveq	r6, r3
c0de366c:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3670:	0e33      	lsrs	r3, r6, #24
c0de3672:	70d3      	strb	r3, [r2, #3]
c0de3674:	0c33      	lsrs	r3, r6, #16
c0de3676:	7093      	strb	r3, [r2, #2]
c0de3678:	0a32      	lsrs	r2, r6, #8
c0de367a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de367e:	6862      	ldr	r2, [r4, #4]
c0de3680:	78a3      	ldrb	r3, [r4, #2]
c0de3682:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3686:	2203      	movs	r2, #3
c0de3688:	77c2      	strb	r2, [r0, #31]
c0de368a:	2204      	movs	r2, #4
c0de368c:	7582      	strb	r2, [r0, #22]
c0de368e:	2200      	movs	r2, #0
c0de3690:	7242      	strb	r2, [r0, #9]
c0de3692:	1c58      	adds	r0, r3, #1
c0de3694:	70a0      	strb	r0, [r4, #2]
c0de3696:	0788      	lsls	r0, r1, #30
c0de3698:	f04f 0600 	mov.w	r6, #0
c0de369c:	d523      	bpl.n	c0de36e6 <nbgl_layoutAddNavigation+0xa6>
c0de369e:	7861      	ldrb	r1, [r4, #1]
c0de36a0:	2002      	movs	r0, #2
c0de36a2:	f003 fa84 	bl	c0de6bae <nbgl_objPoolGet>
c0de36a6:	7829      	ldrb	r1, [r5, #0]
c0de36a8:	4a12      	ldr	r2, [pc, #72]	@ (c0de36f4 <nbgl_layoutAddNavigation+0xb4>)
c0de36aa:	4b13      	ldr	r3, [pc, #76]	@ (c0de36f8 <nbgl_layoutAddNavigation+0xb8>)
c0de36ac:	2900      	cmp	r1, #0
c0de36ae:	447a      	add	r2, pc
c0de36b0:	447b      	add	r3, pc
c0de36b2:	4601      	mov	r1, r0
c0de36b4:	bf08      	it	eq
c0de36b6:	4613      	moveq	r3, r2
c0de36b8:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de36bc:	0e1a      	lsrs	r2, r3, #24
c0de36be:	7246      	strb	r6, [r0, #9]
c0de36c0:	70ca      	strb	r2, [r1, #3]
c0de36c2:	0c1a      	lsrs	r2, r3, #16
c0de36c4:	708a      	strb	r2, [r1, #2]
c0de36c6:	0a19      	lsrs	r1, r3, #8
c0de36c8:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de36cc:	6861      	ldr	r1, [r4, #4]
c0de36ce:	78a2      	ldrb	r2, [r4, #2]
c0de36d0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de36d4:	2103      	movs	r1, #3
c0de36d6:	77c1      	strb	r1, [r0, #31]
c0de36d8:	2106      	movs	r1, #6
c0de36da:	7581      	strb	r1, [r0, #22]
c0de36dc:	1c50      	adds	r0, r2, #1
c0de36de:	70a0      	strb	r0, [r4, #2]
c0de36e0:	e001      	b.n	c0de36e6 <nbgl_layoutAddNavigation+0xa6>
c0de36e2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de36e6:	4630      	mov	r0, r6
c0de36e8:	bd70      	pop	{r4, r5, r6, pc}
c0de36ea:	bf00      	nop
c0de36ec:	00004148 	.word	0x00004148
c0de36f0:	00004185 	.word	0x00004185
c0de36f4:	0000412d 	.word	0x0000412d
c0de36f8:	000040ec 	.word	0x000040ec

c0de36fc <nbgl_layoutAddText>:
c0de36fc:	2800      	cmp	r0, #0
c0de36fe:	f000 8140 	beq.w	c0de3982 <nbgl_layoutAddText+0x286>
c0de3702:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3706:	b088      	sub	sp, #32
c0de3708:	460e      	mov	r6, r1
c0de370a:	7841      	ldrb	r1, [r0, #1]
c0de370c:	4605      	mov	r5, r0
c0de370e:	2001      	movs	r0, #1
c0de3710:	4617      	mov	r7, r2
c0de3712:	461c      	mov	r4, r3
c0de3714:	f003 fa4b 	bl	c0de6bae <nbgl_objPoolGet>
c0de3718:	4680      	mov	r8, r0
c0de371a:	2003      	movs	r0, #3
c0de371c:	2f00      	cmp	r7, #0
c0de371e:	bf08      	it	eq
c0de3720:	2001      	moveq	r0, #1
c0de3722:	7869      	ldrb	r1, [r5, #1]
c0de3724:	f888 0020 	strb.w	r0, [r8, #32]
c0de3728:	f003 fa46 	bl	c0de6bb8 <nbgl_containerPoolGet>
c0de372c:	4641      	mov	r1, r8
c0de372e:	0e02      	lsrs	r2, r0, #24
c0de3730:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3734:	f04f 0b00 	mov.w	fp, #0
c0de3738:	9704      	str	r7, [sp, #16]
c0de373a:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de373e:	f888 a004 	strb.w	sl, [r8, #4]
c0de3742:	f888 b005 	strb.w	fp, [r8, #5]
c0de3746:	70ca      	strb	r2, [r1, #3]
c0de3748:	0c02      	lsrs	r2, r0, #16
c0de374a:	0a00      	lsrs	r0, r0, #8
c0de374c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3750:	708a      	strb	r2, [r1, #2]
c0de3752:	2004      	movs	r0, #4
c0de3754:	7869      	ldrb	r1, [r5, #1]
c0de3756:	f003 fa2a 	bl	c0de6bae <nbgl_objPoolGet>
c0de375a:	4607      	mov	r7, r0
c0de375c:	2003      	movs	r0, #3
c0de375e:	77f8      	strb	r0, [r7, #31]
c0de3760:	4630      	mov	r0, r6
c0de3762:	f003 fc07 	bl	c0de6f74 <pic>
c0de3766:	4601      	mov	r1, r0
c0de3768:	2008      	movs	r0, #8
c0de376a:	f887 a004 	strb.w	sl, [r7, #4]
c0de376e:	f887 b005 	strb.w	fp, [r7, #5]
c0de3772:	9403      	str	r4, [sp, #12]
c0de3774:	f04f 0a01 	mov.w	sl, #1
c0de3778:	2c00      	cmp	r4, #0
c0de377a:	bf08      	it	eq
c0de377c:	200a      	moveq	r0, #10
c0de377e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3782:	2205      	movs	r2, #5
c0de3784:	0e0b      	lsrs	r3, r1, #24
c0de3786:	f887 2020 	strb.w	r2, [r7, #32]
c0de378a:	463a      	mov	r2, r7
c0de378c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3790:	70d3      	strb	r3, [r2, #3]
c0de3792:	0c0b      	lsrs	r3, r1, #16
c0de3794:	7093      	strb	r3, [r2, #2]
c0de3796:	0a0a      	lsrs	r2, r1, #8
c0de3798:	2301      	movs	r3, #1
c0de379a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de379e:	2272      	movs	r2, #114	@ 0x72
c0de37a0:	f003 fa19 	bl	c0de6bd6 <nbgl_getTextNbLinesInWidth>
c0de37a4:	4606      	mov	r6, r0
c0de37a6:	2805      	cmp	r0, #5
c0de37a8:	9505      	str	r5, [sp, #20]
c0de37aa:	d31d      	bcc.n	c0de37e8 <nbgl_layoutAddText+0xec>
c0de37ac:	463e      	mov	r6, r7
c0de37ae:	2004      	movs	r0, #4
c0de37b0:	f10d 051e 	add.w	r5, sp, #30
c0de37b4:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de37b8:	7872      	ldrb	r2, [r6, #1]
c0de37ba:	78b3      	ldrb	r3, [r6, #2]
c0de37bc:	78f4      	ldrb	r4, [r6, #3]
c0de37be:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de37c2:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de37c6:	9500      	str	r5, [sp, #0]
c0de37c8:	9d05      	ldr	r5, [sp, #20]
c0de37ca:	f8cd a004 	str.w	sl, [sp, #4]
c0de37ce:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de37d2:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de37d6:	2304      	movs	r3, #4
c0de37d8:	f000 fc6d 	bl	c0de40b6 <OUTLINED_FUNCTION_5>
c0de37dc:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de37e0:	7130      	strb	r0, [r6, #4]
c0de37e2:	0a00      	lsrs	r0, r0, #8
c0de37e4:	7170      	strb	r0, [r6, #5]
c0de37e6:	2604      	movs	r6, #4
c0de37e8:	f000 fc72 	bl	c0de40d0 <OUTLINED_FUNCTION_7>
c0de37ec:	4683      	mov	fp, r0
c0de37ee:	2002      	movs	r0, #2
c0de37f0:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de37f4:	9c04      	ldr	r4, [sp, #16]
c0de37f6:	75b8      	strb	r0, [r7, #22]
c0de37f8:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de37fc:	2c00      	cmp	r4, #0
c0de37fe:	fb06 fa00 	mul.w	sl, r6, r0
c0de3802:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3806:	f887 a006 	strb.w	sl, [r7, #6]
c0de380a:	71f8      	strb	r0, [r7, #7]
c0de380c:	4640      	mov	r0, r8
c0de380e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3812:	7842      	ldrb	r2, [r0, #1]
c0de3814:	7883      	ldrb	r3, [r0, #2]
c0de3816:	78c0      	ldrb	r0, [r0, #3]
c0de3818:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de381c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3820:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3824:	6007      	str	r7, [r0, #0]
c0de3826:	f000 8111 	beq.w	c0de3a4c <nbgl_layoutAddText+0x350>
c0de382a:	9803      	ldr	r0, [sp, #12]
c0de382c:	7869      	ldrb	r1, [r5, #1]
c0de382e:	2802      	cmp	r0, #2
c0de3830:	f040 80a9 	bne.w	c0de3986 <nbgl_layoutAddText+0x28a>
c0de3834:	2005      	movs	r0, #5
c0de3836:	2505      	movs	r5, #5
c0de3838:	f003 f9b9 	bl	c0de6bae <nbgl_objPoolGet>
c0de383c:	2600      	movs	r6, #0
c0de383e:	4607      	mov	r7, r0
c0de3840:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3844:	2001      	movs	r0, #1
c0de3846:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de384a:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de384e:	f000 fc46 	bl	c0de40de <OUTLINED_FUNCTION_9>
c0de3852:	4620      	mov	r0, r4
c0de3854:	f003 fb8e 	bl	c0de6f74 <pic>
c0de3858:	4601      	mov	r1, r0
c0de385a:	200e      	movs	r0, #14
c0de385c:	71fe      	strb	r6, [r7, #7]
c0de385e:	75bd      	strb	r5, [r7, #22]
c0de3860:	71b8      	strb	r0, [r7, #6]
c0de3862:	2008      	movs	r0, #8
c0de3864:	0e0a      	lsrs	r2, r1, #24
c0de3866:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de386a:	4638      	mov	r0, r7
c0de386c:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3870:	f000 fc15 	bl	c0de409e <OUTLINED_FUNCTION_3>
c0de3874:	2865      	cmp	r0, #101	@ 0x65
c0de3876:	f240 80d9 	bls.w	c0de3a2c <nbgl_layoutAddText+0x330>
c0de387a:	46bb      	mov	fp, r7
c0de387c:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3880:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3884:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3888:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de388c:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3890:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3894:	ae06      	add	r6, sp, #24
c0de3896:	9600      	str	r6, [sp, #0]
c0de3898:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de389c:	f10d 031a 	add.w	r3, sp, #26
c0de38a0:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de38a4:	2266      	movs	r2, #102	@ 0x66
c0de38a6:	f7ff fe11 	bl	c0de34cc <getTextMaxLenAndWidth>
c0de38aa:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de38ae:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de38b2:	9003      	str	r0, [sp, #12]
c0de38b4:	300c      	adds	r0, #12
c0de38b6:	9602      	str	r6, [sp, #8]
c0de38b8:	7138      	strb	r0, [r7, #4]
c0de38ba:	0a00      	lsrs	r0, r0, #8
c0de38bc:	7178      	strb	r0, [r7, #5]
c0de38be:	486e      	ldr	r0, [pc, #440]	@ (c0de3a78 <nbgl_layoutAddText+0x37c>)
c0de38c0:	2e13      	cmp	r6, #19
c0de38c2:	bf28      	it	cs
c0de38c4:	2613      	movcs	r6, #19
c0de38c6:	f89b 1000 	ldrb.w	r1, [fp]
c0de38ca:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de38ce:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de38d2:	eb09 0400 	add.w	r4, r9, r0
c0de38d6:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de38da:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de38de:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de38e2:	4632      	mov	r2, r6
c0de38e4:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de38e8:	4620      	mov	r0, r4
c0de38ea:	f003 fe45 	bl	c0de7578 <__aeabi_memcpy>
c0de38ee:	2500      	movs	r5, #0
c0de38f0:	4620      	mov	r0, r4
c0de38f2:	55a5      	strb	r5, [r4, r6]
c0de38f4:	f003 fb3e 	bl	c0de6f74 <pic>
c0de38f8:	2101      	movs	r1, #1
c0de38fa:	f88b 0000 	strb.w	r0, [fp]
c0de38fe:	76bd      	strb	r5, [r7, #26]
c0de3900:	9d05      	ldr	r5, [sp, #20]
c0de3902:	7679      	strb	r1, [r7, #25]
c0de3904:	0e01      	lsrs	r1, r0, #24
c0de3906:	f88b 1003 	strb.w	r1, [fp, #3]
c0de390a:	0c01      	lsrs	r1, r0, #16
c0de390c:	0a00      	lsrs	r0, r0, #8
c0de390e:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3912:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3916:	4640      	mov	r0, r8
c0de3918:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de391c:	7842      	ldrb	r2, [r0, #1]
c0de391e:	7883      	ldrb	r3, [r0, #2]
c0de3920:	78c0      	ldrb	r0, [r0, #3]
c0de3922:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3926:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de392a:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de392e:	6047      	str	r7, [r0, #4]
c0de3930:	9803      	ldr	r0, [sp, #12]
c0de3932:	2800      	cmp	r0, #0
c0de3934:	f000 8088 	beq.w	c0de3a48 <nbgl_layoutAddText+0x34c>
c0de3938:	7869      	ldrb	r1, [r5, #1]
c0de393a:	2005      	movs	r0, #5
c0de393c:	2605      	movs	r6, #5
c0de393e:	f003 f936 	bl	c0de6bae <nbgl_objPoolGet>
c0de3942:	2500      	movs	r5, #0
c0de3944:	4607      	mov	r7, r0
c0de3946:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de394a:	2001      	movs	r0, #1
c0de394c:	f000 fbc7 	bl	c0de40de <OUTLINED_FUNCTION_9>
c0de3950:	9804      	ldr	r0, [sp, #16]
c0de3952:	f003 fb0f 	bl	c0de6f74 <pic>
c0de3956:	210e      	movs	r1, #14
c0de3958:	71fd      	strb	r5, [r7, #7]
c0de395a:	71b9      	strb	r1, [r7, #6]
c0de395c:	2108      	movs	r1, #8
c0de395e:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3962:	9902      	ldr	r1, [sp, #8]
c0de3964:	4401      	add	r1, r0
c0de3966:	4638      	mov	r0, r7
c0de3968:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de396c:	0e0a      	lsrs	r2, r1, #24
c0de396e:	f000 fb96 	bl	c0de409e <OUTLINED_FUNCTION_3>
c0de3972:	300c      	adds	r0, #12
c0de3974:	210f      	movs	r1, #15
c0de3976:	75be      	strb	r6, [r7, #22]
c0de3978:	7138      	strb	r0, [r7, #4]
c0de397a:	0a00      	lsrs	r0, r0, #8
c0de397c:	7178      	strb	r0, [r7, #5]
c0de397e:	2002      	movs	r0, #2
c0de3980:	e05a      	b.n	c0de3a38 <nbgl_layoutAddText+0x33c>
c0de3982:	f000 bba9 	b.w	c0de40d8 <OUTLINED_FUNCTION_8>
c0de3986:	f000 fb93 	bl	c0de40b0 <OUTLINED_FUNCTION_4>
c0de398a:	2603      	movs	r6, #3
c0de398c:	4607      	mov	r7, r0
c0de398e:	77c6      	strb	r6, [r0, #31]
c0de3990:	4620      	mov	r0, r4
c0de3992:	f003 faef 	bl	c0de6f74 <pic>
c0de3996:	4601      	mov	r1, r0
c0de3998:	2072      	movs	r0, #114	@ 0x72
c0de399a:	2400      	movs	r4, #0
c0de399c:	2301      	movs	r3, #1
c0de399e:	7138      	strb	r0, [r7, #4]
c0de39a0:	2001      	movs	r0, #1
c0de39a2:	0e0a      	lsrs	r2, r1, #24
c0de39a4:	717c      	strb	r4, [r7, #5]
c0de39a6:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de39aa:	200a      	movs	r0, #10
c0de39ac:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de39b0:	f000 fb5b 	bl	c0de406a <OUTLINED_FUNCTION_1>
c0de39b4:	2804      	cmp	r0, #4
c0de39b6:	d31e      	bcc.n	c0de39f6 <nbgl_layoutAddText+0x2fa>
c0de39b8:	463d      	mov	r5, r7
c0de39ba:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de39be:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de39c2:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de39c6:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de39ca:	78ab      	ldrb	r3, [r5, #2]
c0de39cc:	78e9      	ldrb	r1, [r5, #3]
c0de39ce:	aa07      	add	r2, sp, #28
c0de39d0:	9200      	str	r2, [sp, #0]
c0de39d2:	2201      	movs	r2, #1
c0de39d4:	9201      	str	r2, [sp, #4]
c0de39d6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de39da:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de39de:	2303      	movs	r3, #3
c0de39e0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de39e4:	2272      	movs	r2, #114	@ 0x72
c0de39e6:	f003 f905 	bl	c0de6bf4 <nbgl_getTextMaxLenInNbLines>
c0de39ea:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de39ee:	7128      	strb	r0, [r5, #4]
c0de39f0:	0a00      	lsrs	r0, r0, #8
c0de39f2:	7168      	strb	r0, [r5, #5]
c0de39f4:	2003      	movs	r0, #3
c0de39f6:	9903      	ldr	r1, [sp, #12]
c0de39f8:	2900      	cmp	r1, #0
c0de39fa:	bf08      	it	eq
c0de39fc:	4606      	moveq	r6, r0
c0de39fe:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3a02:	76bc      	strb	r4, [r7, #26]
c0de3a04:	75bc      	strb	r4, [r7, #22]
c0de3a06:	fb06 f100 	mul.w	r1, r6, r0
c0de3a0a:	fb06 a000 	mla	r0, r6, r0, sl
c0de3a0e:	71b9      	strb	r1, [r7, #6]
c0de3a10:	0a09      	lsrs	r1, r1, #8
c0de3a12:	71f9      	strb	r1, [r7, #7]
c0de3a14:	2102      	movs	r1, #2
c0de3a16:	f100 0a02 	add.w	sl, r0, #2
c0de3a1a:	7679      	strb	r1, [r7, #25]
c0de3a1c:	2105      	movs	r1, #5
c0de3a1e:	f887 1020 	strb.w	r1, [r7, #32]
c0de3a22:	4641      	mov	r1, r8
c0de3a24:	f000 fb2e 	bl	c0de4084 <OUTLINED_FUNCTION_2>
c0de3a28:	604f      	str	r7, [r1, #4]
c0de3a2a:	e00f      	b.n	c0de3a4c <nbgl_layoutAddText+0x350>
c0de3a2c:	300c      	adds	r0, #12
c0de3a2e:	2108      	movs	r1, #8
c0de3a30:	7138      	strb	r0, [r7, #4]
c0de3a32:	0a00      	lsrs	r0, r0, #8
c0de3a34:	7178      	strb	r0, [r7, #5]
c0de3a36:	2001      	movs	r0, #1
c0de3a38:	2200      	movs	r2, #0
c0de3a3a:	7679      	strb	r1, [r7, #25]
c0de3a3c:	4641      	mov	r1, r8
c0de3a3e:	76ba      	strb	r2, [r7, #26]
c0de3a40:	f000 fb20 	bl	c0de4084 <OUTLINED_FUNCTION_2>
c0de3a44:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3a48:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3a4c:	6868      	ldr	r0, [r5, #4]
c0de3a4e:	78a9      	ldrb	r1, [r5, #2]
c0de3a50:	2205      	movs	r2, #5
c0de3a52:	f888 2016 	strb.w	r2, [r8, #22]
c0de3a56:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3a5a:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3a5e:	2000      	movs	r0, #0
c0de3a60:	3101      	adds	r1, #1
c0de3a62:	f888 a006 	strb.w	sl, [r8, #6]
c0de3a66:	f888 2007 	strb.w	r2, [r8, #7]
c0de3a6a:	f888 001f 	strb.w	r0, [r8, #31]
c0de3a6e:	70a9      	strb	r1, [r5, #2]
c0de3a70:	b008      	add	sp, #32
c0de3a72:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3a76:	bf00      	nop
c0de3a78:	00000638 	.word	0x00000638

c0de3a7c <nbgl_layoutAddMenuList>:
c0de3a7c:	2800      	cmp	r0, #0
c0de3a7e:	d04f      	beq.n	c0de3b20 <nbgl_layoutAddMenuList+0xa4>
c0de3a80:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3a84:	460c      	mov	r4, r1
c0de3a86:	4605      	mov	r5, r0
c0de3a88:	2700      	movs	r7, #0
c0de3a8a:	f04f 0b05 	mov.w	fp, #5
c0de3a8e:	f04f 0803 	mov.w	r8, #3
c0de3a92:	f04f 0a00 	mov.w	sl, #0
c0de3a96:	7920      	ldrb	r0, [r4, #4]
c0de3a98:	4582      	cmp	sl, r0
c0de3a9a:	d23e      	bcs.n	c0de3b1a <nbgl_layoutAddMenuList+0x9e>
c0de3a9c:	7960      	ldrb	r0, [r4, #5]
c0de3a9e:	2803      	cmp	r0, #3
c0de3aa0:	d302      	bcc.n	c0de3aa8 <nbgl_layoutAddMenuList+0x2c>
c0de3aa2:	1e81      	subs	r1, r0, #2
c0de3aa4:	4551      	cmp	r1, sl
c0de3aa6:	dc35      	bgt.n	c0de3b14 <nbgl_layoutAddMenuList+0x98>
c0de3aa8:	3002      	adds	r0, #2
c0de3aaa:	4550      	cmp	r0, sl
c0de3aac:	d332      	bcc.n	c0de3b14 <nbgl_layoutAddMenuList+0x98>
c0de3aae:	7869      	ldrb	r1, [r5, #1]
c0de3ab0:	f000 fafe 	bl	c0de40b0 <OUTLINED_FUNCTION_4>
c0de3ab4:	6821      	ldr	r1, [r4, #0]
c0de3ab6:	4606      	mov	r6, r0
c0de3ab8:	fa5f f08a 	uxtb.w	r0, sl
c0de3abc:	4788      	blx	r1
c0de3abe:	7961      	ldrb	r1, [r4, #5]
c0de3ac0:	220a      	movs	r2, #10
c0de3ac2:	458a      	cmp	sl, r1
c0de3ac4:	bf08      	it	eq
c0de3ac6:	2208      	moveq	r2, #8
c0de3ac8:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3acc:	71f7      	strb	r7, [r6, #7]
c0de3ace:	7177      	strb	r7, [r6, #5]
c0de3ad0:	f886 b020 	strb.w	fp, [r6, #32]
c0de3ad4:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3ad8:	f886 b016 	strb.w	fp, [r6, #22]
c0de3adc:	f886 801f 	strb.w	r8, [r6, #31]
c0de3ae0:	4632      	mov	r2, r6
c0de3ae2:	0e03      	lsrs	r3, r0, #24
c0de3ae4:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3ae8:	70d3      	strb	r3, [r2, #3]
c0de3aea:	0c03      	lsrs	r3, r0, #16
c0de3aec:	0a00      	lsrs	r0, r0, #8
c0de3aee:	7093      	strb	r3, [r2, #2]
c0de3af0:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3af4:	6868      	ldr	r0, [r5, #4]
c0de3af6:	78aa      	ldrb	r2, [r5, #2]
c0de3af8:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3afc:	200c      	movs	r0, #12
c0de3afe:	71b0      	strb	r0, [r6, #6]
c0de3b00:	2072      	movs	r0, #114	@ 0x72
c0de3b02:	7130      	strb	r0, [r6, #4]
c0de3b04:	ebaa 0001 	sub.w	r0, sl, r1
c0de3b08:	0901      	lsrs	r1, r0, #4
c0de3b0a:	0100      	lsls	r0, r0, #4
c0de3b0c:	7670      	strb	r0, [r6, #25]
c0de3b0e:	1c50      	adds	r0, r2, #1
c0de3b10:	76b1      	strb	r1, [r6, #26]
c0de3b12:	70a8      	strb	r0, [r5, #2]
c0de3b14:	f10a 0a01 	add.w	sl, sl, #1
c0de3b18:	e7bd      	b.n	c0de3a96 <nbgl_layoutAddMenuList+0x1a>
c0de3b1a:	2000      	movs	r0, #0
c0de3b1c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3b20:	f000 bada 	b.w	c0de40d8 <OUTLINED_FUNCTION_8>

c0de3b24 <nbgl_layoutAddCenteredInfo>:
c0de3b24:	2800      	cmp	r0, #0
c0de3b26:	f000 80d9 	beq.w	c0de3cdc <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3b2a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3b2e:	b086      	sub	sp, #24
c0de3b30:	460c      	mov	r4, r1
c0de3b32:	7841      	ldrb	r1, [r0, #1]
c0de3b34:	4682      	mov	sl, r0
c0de3b36:	2001      	movs	r0, #1
c0de3b38:	f003 f839 	bl	c0de6bae <nbgl_objPoolGet>
c0de3b3c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3b40:	4680      	mov	r8, r0
c0de3b42:	2003      	movs	r0, #3
c0de3b44:	2703      	movs	r7, #3
c0de3b46:	f003 f837 	bl	c0de6bb8 <nbgl_containerPoolGet>
c0de3b4a:	4641      	mov	r1, r8
c0de3b4c:	0e02      	lsrs	r2, r0, #24
c0de3b4e:	f04f 0b00 	mov.w	fp, #0
c0de3b52:	9404      	str	r4, [sp, #16]
c0de3b54:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3b58:	f888 b020 	strb.w	fp, [r8, #32]
c0de3b5c:	70ca      	strb	r2, [r1, #3]
c0de3b5e:	0c02      	lsrs	r2, r0, #16
c0de3b60:	0a00      	lsrs	r0, r0, #8
c0de3b62:	708a      	strb	r2, [r1, #2]
c0de3b64:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3b68:	68a0      	ldr	r0, [r4, #8]
c0de3b6a:	b3c0      	cbz	r0, c0de3bde <nbgl_layoutAddCenteredInfo+0xba>
c0de3b6c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3b70:	2002      	movs	r0, #2
c0de3b72:	f003 f81c 	bl	c0de6bae <nbgl_objPoolGet>
c0de3b76:	4606      	mov	r6, r0
c0de3b78:	77c7      	strb	r7, [r0, #31]
c0de3b7a:	68a0      	ldr	r0, [r4, #8]
c0de3b7c:	f003 f9fa 	bl	c0de6f74 <pic>
c0de3b80:	4631      	mov	r1, r6
c0de3b82:	0e02      	lsrs	r2, r0, #24
c0de3b84:	f886 b013 	strb.w	fp, [r6, #19]
c0de3b88:	f886 b009 	strb.w	fp, [r6, #9]
c0de3b8c:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3b90:	70ca      	strb	r2, [r1, #3]
c0de3b92:	0c02      	lsrs	r2, r0, #16
c0de3b94:	708a      	strb	r2, [r1, #2]
c0de3b96:	0a01      	lsrs	r1, r0, #8
c0de3b98:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3b9c:	4631      	mov	r1, r6
c0de3b9e:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3ba2:	f881 b003 	strb.w	fp, [r1, #3]
c0de3ba6:	f881 b002 	strb.w	fp, [r1, #2]
c0de3baa:	4641      	mov	r1, r8
c0de3bac:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3bb0:	784f      	ldrb	r7, [r1, #1]
c0de3bb2:	788c      	ldrb	r4, [r1, #2]
c0de3bb4:	78cd      	ldrb	r5, [r1, #3]
c0de3bb6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3bba:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3bbe:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3bc2:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3bc6:	9c04      	ldr	r4, [sp, #16]
c0de3bc8:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3bcc:	2202      	movs	r2, #2
c0de3bce:	75b2      	strb	r2, [r6, #22]
c0de3bd0:	1c5a      	adds	r2, r3, #1
c0de3bd2:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3bd6:	7881      	ldrb	r1, [r0, #2]
c0de3bd8:	78c0      	ldrb	r0, [r0, #3]
c0de3bda:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3bde:	6820      	ldr	r0, [r4, #0]
c0de3be0:	2800      	cmp	r0, #0
c0de3be2:	f000 80a2 	beq.w	c0de3d2a <nbgl_layoutAddCenteredInfo+0x206>
c0de3be6:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3bea:	f000 fa61 	bl	c0de40b0 <OUTLINED_FUNCTION_4>
c0de3bee:	4607      	mov	r7, r0
c0de3bf0:	2003      	movs	r0, #3
c0de3bf2:	77f8      	strb	r0, [r7, #31]
c0de3bf4:	6820      	ldr	r0, [r4, #0]
c0de3bf6:	f003 f9bd 	bl	c0de6f74 <pic>
c0de3bfa:	4601      	mov	r1, r0
c0de3bfc:	2072      	movs	r0, #114	@ 0x72
c0de3bfe:	2500      	movs	r5, #0
c0de3c00:	7138      	strb	r0, [r7, #4]
c0de3c02:	2005      	movs	r0, #5
c0de3c04:	0e0a      	lsrs	r2, r1, #24
c0de3c06:	717d      	strb	r5, [r7, #5]
c0de3c08:	f887 0020 	strb.w	r0, [r7, #32]
c0de3c0c:	2001      	movs	r0, #1
c0de3c0e:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3c12:	4638      	mov	r0, r7
c0de3c14:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3c18:	70c2      	strb	r2, [r0, #3]
c0de3c1a:	0c0a      	lsrs	r2, r1, #16
c0de3c1c:	7082      	strb	r2, [r0, #2]
c0de3c1e:	0a08      	lsrs	r0, r1, #8
c0de3c20:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3c24:	2008      	movs	r0, #8
c0de3c26:	7b62      	ldrb	r2, [r4, #13]
c0de3c28:	2a00      	cmp	r2, #0
c0de3c2a:	bf08      	it	eq
c0de3c2c:	200a      	moveq	r0, #10
c0de3c2e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3c32:	2272      	movs	r2, #114	@ 0x72
c0de3c34:	2301      	movs	r3, #1
c0de3c36:	f002 ffce 	bl	c0de6bd6 <nbgl_getTextNbLinesInWidth>
c0de3c3a:	4606      	mov	r6, r0
c0de3c3c:	2805      	cmp	r0, #5
c0de3c3e:	d31e      	bcc.n	c0de3c7e <nbgl_layoutAddCenteredInfo+0x15a>
c0de3c40:	463d      	mov	r5, r7
c0de3c42:	2004      	movs	r0, #4
c0de3c44:	2101      	movs	r1, #1
c0de3c46:	f10d 0416 	add.w	r4, sp, #22
c0de3c4a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3c4e:	786a      	ldrb	r2, [r5, #1]
c0de3c50:	78ab      	ldrb	r3, [r5, #2]
c0de3c52:	78ee      	ldrb	r6, [r5, #3]
c0de3c54:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3c58:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3c5c:	9101      	str	r1, [sp, #4]
c0de3c5e:	9400      	str	r4, [sp, #0]
c0de3c60:	9c04      	ldr	r4, [sp, #16]
c0de3c62:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3c66:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3c6a:	2304      	movs	r3, #4
c0de3c6c:	f000 fa23 	bl	c0de40b6 <OUTLINED_FUNCTION_5>
c0de3c70:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3c74:	2604      	movs	r6, #4
c0de3c76:	7128      	strb	r0, [r5, #4]
c0de3c78:	0a00      	lsrs	r0, r0, #8
c0de3c7a:	7168      	strb	r0, [r5, #5]
c0de3c7c:	2500      	movs	r5, #0
c0de3c7e:	f000 fa27 	bl	c0de40d0 <OUTLINED_FUNCTION_7>
c0de3c82:	79c0      	ldrb	r0, [r0, #7]
c0de3c84:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3c88:	4370      	muls	r0, r6
c0de3c8a:	0a01      	lsrs	r1, r0, #8
c0de3c8c:	71b8      	strb	r0, [r7, #6]
c0de3c8e:	71f9      	strb	r1, [r7, #7]
c0de3c90:	68a1      	ldr	r1, [r4, #8]
c0de3c92:	b329      	cbz	r1, c0de3ce0 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3c94:	4641      	mov	r1, r8
c0de3c96:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3c9a:	784c      	ldrb	r4, [r1, #1]
c0de3c9c:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3ca0:	788d      	ldrb	r5, [r1, #2]
c0de3ca2:	78c9      	ldrb	r1, [r1, #3]
c0de3ca4:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3ca8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3cac:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3cb0:	463a      	mov	r2, r7
c0de3cb2:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3cb6:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3cba:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3cbe:	0e0b      	lsrs	r3, r1, #24
c0de3cc0:	70d3      	strb	r3, [r2, #3]
c0de3cc2:	0c0b      	lsrs	r3, r1, #16
c0de3cc4:	0a09      	lsrs	r1, r1, #8
c0de3cc6:	7051      	strb	r1, [r2, #1]
c0de3cc8:	2100      	movs	r1, #0
c0de3cca:	7093      	strb	r3, [r2, #2]
c0de3ccc:	7211      	strb	r1, [r2, #8]
c0de3cce:	2e03      	cmp	r6, #3
c0de3cd0:	bf38      	it	cc
c0de3cd2:	2101      	movcc	r1, #1
c0de3cd4:	0089      	lsls	r1, r1, #2
c0de3cd6:	71d1      	strb	r1, [r2, #7]
c0de3cd8:	2108      	movs	r1, #8
c0de3cda:	e00a      	b.n	c0de3cf2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3cdc:	f000 b9fc 	b.w	c0de40d8 <OUTLINED_FUNCTION_8>
c0de3ce0:	6861      	ldr	r1, [r4, #4]
c0de3ce2:	b119      	cbz	r1, c0de3cec <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3ce4:	f000 f9ec 	bl	c0de40c0 <OUTLINED_FUNCTION_6>
c0de3ce8:	2102      	movs	r1, #2
c0de3cea:	e002      	b.n	c0de3cf2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3cec:	f000 f9e8 	bl	c0de40c0 <OUTLINED_FUNCTION_6>
c0de3cf0:	2105      	movs	r1, #5
c0de3cf2:	7111      	strb	r1, [r2, #4]
c0de3cf4:	4641      	mov	r1, r8
c0de3cf6:	4458      	add	r0, fp
c0de3cf8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3cfc:	784c      	ldrb	r4, [r1, #1]
c0de3cfe:	788d      	ldrb	r5, [r1, #2]
c0de3d00:	78ce      	ldrb	r6, [r1, #3]
c0de3d02:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3d06:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3d0a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3d0e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3d12:	9c04      	ldr	r4, [sp, #16]
c0de3d14:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3d18:	1c5a      	adds	r2, r3, #1
c0de3d1a:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3d1e:	7e79      	ldrb	r1, [r7, #25]
c0de3d20:	7eba      	ldrb	r2, [r7, #26]
c0de3d22:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3d26:	eb00 0b01 	add.w	fp, r0, r1
c0de3d2a:	6860      	ldr	r0, [r4, #4]
c0de3d2c:	2800      	cmp	r0, #0
c0de3d2e:	d074      	beq.n	c0de3e1a <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3d30:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d34:	2004      	movs	r0, #4
c0de3d36:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3d3a:	f002 ff38 	bl	c0de6bae <nbgl_objPoolGet>
c0de3d3e:	2603      	movs	r6, #3
c0de3d40:	4607      	mov	r7, r0
c0de3d42:	77c6      	strb	r6, [r0, #31]
c0de3d44:	6860      	ldr	r0, [r4, #4]
c0de3d46:	f003 f915 	bl	c0de6f74 <pic>
c0de3d4a:	4601      	mov	r1, r0
c0de3d4c:	2000      	movs	r0, #0
c0de3d4e:	2301      	movs	r3, #1
c0de3d50:	7178      	strb	r0, [r7, #5]
c0de3d52:	2072      	movs	r0, #114	@ 0x72
c0de3d54:	0e0a      	lsrs	r2, r1, #24
c0de3d56:	7138      	strb	r0, [r7, #4]
c0de3d58:	200a      	movs	r0, #10
c0de3d5a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3d5e:	2005      	movs	r0, #5
c0de3d60:	f887 0020 	strb.w	r0, [r7, #32]
c0de3d64:	2001      	movs	r0, #1
c0de3d66:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3d6a:	f000 f97e 	bl	c0de406a <OUTLINED_FUNCTION_1>
c0de3d6e:	4682      	mov	sl, r0
c0de3d70:	2804      	cmp	r0, #4
c0de3d72:	d31c      	bcc.n	c0de3dae <nbgl_layoutAddCenteredInfo+0x28a>
c0de3d74:	463d      	mov	r5, r7
c0de3d76:	f04f 0c01 	mov.w	ip, #1
c0de3d7a:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de3d7e:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3d82:	786a      	ldrb	r2, [r5, #1]
c0de3d84:	78ab      	ldrb	r3, [r5, #2]
c0de3d86:	78ee      	ldrb	r6, [r5, #3]
c0de3d88:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3d8c:	ac05      	add	r4, sp, #20
c0de3d8e:	e9cd 4c00 	strd	r4, ip, [sp]
c0de3d92:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3d96:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3d9a:	2303      	movs	r3, #3
c0de3d9c:	f000 f98b 	bl	c0de40b6 <OUTLINED_FUNCTION_5>
c0de3da0:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de3da4:	f04f 0a03 	mov.w	sl, #3
c0de3da8:	7128      	strb	r0, [r5, #4]
c0de3daa:	0a00      	lsrs	r0, r0, #8
c0de3dac:	7168      	strb	r0, [r5, #5]
c0de3dae:	f000 f98f 	bl	c0de40d0 <OUTLINED_FUNCTION_7>
c0de3db2:	4641      	mov	r1, r8
c0de3db4:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de3db8:	784c      	ldrb	r4, [r1, #1]
c0de3dba:	788d      	ldrb	r5, [r1, #2]
c0de3dbc:	78ce      	ldrb	r6, [r1, #3]
c0de3dbe:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de3dc2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de3dc6:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3dca:	463d      	mov	r5, r7
c0de3dcc:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de3dd0:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de3dd4:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de3dd8:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de3ddc:	0e26      	lsrs	r6, r4, #24
c0de3dde:	70ee      	strb	r6, [r5, #3]
c0de3de0:	0c26      	lsrs	r6, r4, #16
c0de3de2:	0a24      	lsrs	r4, r4, #8
c0de3de4:	74fc      	strb	r4, [r7, #19]
c0de3de6:	70ae      	strb	r6, [r5, #2]
c0de3de8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de3dec:	2302      	movs	r3, #2
c0de3dee:	2400      	movs	r4, #0
c0de3df0:	3201      	adds	r2, #1
c0de3df2:	767b      	strb	r3, [r7, #25]
c0de3df4:	2308      	movs	r3, #8
c0de3df6:	76bc      	strb	r4, [r7, #26]
c0de3df8:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de3dfc:	79c0      	ldrb	r0, [r0, #7]
c0de3dfe:	75bb      	strb	r3, [r7, #22]
c0de3e00:	fb0a f300 	mul.w	r3, sl, r0
c0de3e04:	fb0a b000 	mla	r0, sl, r0, fp
c0de3e08:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de3e0c:	71bb      	strb	r3, [r7, #6]
c0de3e0e:	0a1b      	lsrs	r3, r3, #8
c0de3e10:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3e14:	f100 0b02 	add.w	fp, r0, #2
c0de3e18:	71fb      	strb	r3, [r7, #7]
c0de3e1a:	7b20      	ldrb	r0, [r4, #12]
c0de3e1c:	2102      	movs	r1, #2
c0de3e1e:	2800      	cmp	r0, #0
c0de3e20:	bf08      	it	eq
c0de3e22:	2105      	moveq	r1, #5
c0de3e24:	f888 1016 	strb.w	r1, [r8, #22]
c0de3e28:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de3e2c:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de3e30:	2272      	movs	r2, #114	@ 0x72
c0de3e32:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3e36:	2000      	movs	r0, #0
c0de3e38:	f888 2004 	strb.w	r2, [r8, #4]
c0de3e3c:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de3e40:	3101      	adds	r1, #1
c0de3e42:	f888 b006 	strb.w	fp, [r8, #6]
c0de3e46:	f888 0019 	strb.w	r0, [r8, #25]
c0de3e4a:	f888 001a 	strb.w	r0, [r8, #26]
c0de3e4e:	f888 0005 	strb.w	r0, [r8, #5]
c0de3e52:	f888 001f 	strb.w	r0, [r8, #31]
c0de3e56:	f888 2007 	strb.w	r2, [r8, #7]
c0de3e5a:	f88a 1002 	strb.w	r1, [sl, #2]
c0de3e5e:	b006      	add	sp, #24
c0de3e60:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3e64 <nbgl_layoutAddSwitch>:
c0de3e64:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3e68:	2800      	cmp	r0, #0
c0de3e6a:	d07d      	beq.n	c0de3f68 <nbgl_layoutAddSwitch+0x104>
c0de3e6c:	460d      	mov	r5, r1
c0de3e6e:	7841      	ldrb	r1, [r0, #1]
c0de3e70:	4604      	mov	r4, r0
c0de3e72:	f000 f91d 	bl	c0de40b0 <OUTLINED_FUNCTION_4>
c0de3e76:	f04f 0803 	mov.w	r8, #3
c0de3e7a:	4606      	mov	r6, r0
c0de3e7c:	f880 801f 	strb.w	r8, [r0, #31]
c0de3e80:	6828      	ldr	r0, [r5, #0]
c0de3e82:	f003 f877 	bl	c0de6f74 <pic>
c0de3e86:	4601      	mov	r1, r0
c0de3e88:	2072      	movs	r0, #114	@ 0x72
c0de3e8a:	2700      	movs	r7, #0
c0de3e8c:	2301      	movs	r3, #1
c0de3e8e:	7130      	strb	r0, [r6, #4]
c0de3e90:	2008      	movs	r0, #8
c0de3e92:	0e0a      	lsrs	r2, r1, #24
c0de3e94:	7177      	strb	r7, [r6, #5]
c0de3e96:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de3e9a:	2005      	movs	r0, #5
c0de3e9c:	f886 0020 	strb.w	r0, [r6, #32]
c0de3ea0:	2001      	movs	r0, #1
c0de3ea2:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de3ea6:	4630      	mov	r0, r6
c0de3ea8:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3eac:	70c2      	strb	r2, [r0, #3]
c0de3eae:	0c0a      	lsrs	r2, r1, #16
c0de3eb0:	7082      	strb	r2, [r0, #2]
c0de3eb2:	0a08      	lsrs	r0, r1, #8
c0de3eb4:	2272      	movs	r2, #114	@ 0x72
c0de3eb6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3eba:	2008      	movs	r0, #8
c0de3ebc:	f002 fe8b 	bl	c0de6bd6 <nbgl_getTextNbLinesInWidth>
c0de3ec0:	2801      	cmp	r0, #1
c0de3ec2:	d851      	bhi.n	c0de3f68 <nbgl_layoutAddSwitch+0x104>
c0de3ec4:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de3ec8:	f002 fe80 	bl	c0de6bcc <nbgl_getFontLineHeight>
c0de3ecc:	6861      	ldr	r1, [r4, #4]
c0de3ece:	78a2      	ldrb	r2, [r4, #2]
c0de3ed0:	76b7      	strb	r7, [r6, #26]
c0de3ed2:	71f7      	strb	r7, [r6, #7]
c0de3ed4:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de3ed8:	71b0      	strb	r0, [r6, #6]
c0de3eda:	2002      	movs	r0, #2
c0de3edc:	f886 8019 	strb.w	r8, [r6, #25]
c0de3ee0:	75b0      	strb	r0, [r6, #22]
c0de3ee2:	1c50      	adds	r0, r2, #1
c0de3ee4:	70a0      	strb	r0, [r4, #2]
c0de3ee6:	6868      	ldr	r0, [r5, #4]
c0de3ee8:	2800      	cmp	r0, #0
c0de3eea:	d04c      	beq.n	c0de3f86 <nbgl_layoutAddSwitch+0x122>
c0de3eec:	7861      	ldrb	r1, [r4, #1]
c0de3eee:	f000 f8df 	bl	c0de40b0 <OUTLINED_FUNCTION_4>
c0de3ef2:	4606      	mov	r6, r0
c0de3ef4:	2003      	movs	r0, #3
c0de3ef6:	77f0      	strb	r0, [r6, #31]
c0de3ef8:	6868      	ldr	r0, [r5, #4]
c0de3efa:	f003 f83b 	bl	c0de6f74 <pic>
c0de3efe:	2172      	movs	r1, #114	@ 0x72
c0de3f00:	4637      	mov	r7, r6
c0de3f02:	f04f 0800 	mov.w	r8, #0
c0de3f06:	f04f 0a05 	mov.w	sl, #5
c0de3f0a:	7131      	strb	r1, [r6, #4]
c0de3f0c:	210a      	movs	r1, #10
c0de3f0e:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de3f12:	f886 8005 	strb.w	r8, [r6, #5]
c0de3f16:	f886 a020 	strb.w	sl, [r6, #32]
c0de3f1a:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3f1e:	0e01      	lsrs	r1, r0, #24
c0de3f20:	70f9      	strb	r1, [r7, #3]
c0de3f22:	0c01      	lsrs	r1, r0, #16
c0de3f24:	0a00      	lsrs	r0, r0, #8
c0de3f26:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3f2a:	200a      	movs	r0, #10
c0de3f2c:	70b9      	strb	r1, [r7, #2]
c0de3f2e:	f002 fe4d 	bl	c0de6bcc <nbgl_getFontLineHeight>
c0de3f32:	09c1      	lsrs	r1, r0, #7
c0de3f34:	783a      	ldrb	r2, [r7, #0]
c0de3f36:	78bb      	ldrb	r3, [r7, #2]
c0de3f38:	78ff      	ldrb	r7, [r7, #3]
c0de3f3a:	0040      	lsls	r0, r0, #1
c0de3f3c:	f04f 0b01 	mov.w	fp, #1
c0de3f40:	71f1      	strb	r1, [r6, #7]
c0de3f42:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de3f46:	71b0      	strb	r0, [r6, #6]
c0de3f48:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de3f4c:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de3f50:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de3f54:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de3f58:	2301      	movs	r3, #1
c0de3f5a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3f5e:	2272      	movs	r2, #114	@ 0x72
c0de3f60:	f002 fe39 	bl	c0de6bd6 <nbgl_getTextNbLinesInWidth>
c0de3f64:	2802      	cmp	r0, #2
c0de3f66:	d902      	bls.n	c0de3f6e <nbgl_layoutAddSwitch+0x10a>
c0de3f68:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3f6c:	e05d      	b.n	c0de402a <nbgl_layoutAddSwitch+0x1c6>
c0de3f6e:	6860      	ldr	r0, [r4, #4]
c0de3f70:	78a1      	ldrb	r1, [r4, #2]
c0de3f72:	f886 801a 	strb.w	r8, [r6, #26]
c0de3f76:	f886 a016 	strb.w	sl, [r6, #22]
c0de3f7a:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de3f7e:	1c48      	adds	r0, r1, #1
c0de3f80:	f886 b019 	strb.w	fp, [r6, #25]
c0de3f84:	70a0      	strb	r0, [r4, #2]
c0de3f86:	7861      	ldrb	r1, [r4, #1]
c0de3f88:	2005      	movs	r0, #5
c0de3f8a:	f002 fe10 	bl	c0de6bae <nbgl_objPoolGet>
c0de3f8e:	2600      	movs	r6, #0
c0de3f90:	4607      	mov	r7, r0
c0de3f92:	f04f 0a03 	mov.w	sl, #3
c0de3f96:	f04f 0808 	mov.w	r8, #8
c0de3f9a:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3f9e:	2001      	movs	r0, #1
c0de3fa0:	f887 a020 	strb.w	sl, [r7, #32]
c0de3fa4:	f887 a01f 	strb.w	sl, [r7, #31]
c0de3fa8:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de3fac:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3fb0:	7a28      	ldrb	r0, [r5, #8]
c0de3fb2:	4a1f      	ldr	r2, [pc, #124]	@ (c0de4030 <nbgl_layoutAddSwitch+0x1cc>)
c0de3fb4:	491f      	ldr	r1, [pc, #124]	@ (c0de4034 <nbgl_layoutAddSwitch+0x1d0>)
c0de3fb6:	2801      	cmp	r0, #1
c0de3fb8:	447a      	add	r2, pc
c0de3fba:	4479      	add	r1, pc
c0de3fbc:	bf08      	it	eq
c0de3fbe:	4611      	moveq	r1, r2
c0de3fc0:	463a      	mov	r2, r7
c0de3fc2:	0e0b      	lsrs	r3, r1, #24
c0de3fc4:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de3fc8:	70d3      	strb	r3, [r2, #3]
c0de3fca:	0c0b      	lsrs	r3, r1, #16
c0de3fcc:	7093      	strb	r3, [r2, #2]
c0de3fce:	0a0a      	lsrs	r2, r1, #8
c0de3fd0:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de3fd4:	2801      	cmp	r0, #1
c0de3fd6:	4638      	mov	r0, r7
c0de3fd8:	4a17      	ldr	r2, [pc, #92]	@ (c0de4038 <nbgl_layoutAddSwitch+0x1d4>)
c0de3fda:	4d18      	ldr	r5, [pc, #96]	@ (c0de403c <nbgl_layoutAddSwitch+0x1d8>)
c0de3fdc:	447a      	add	r2, pc
c0de3fde:	447d      	add	r5, pc
c0de3fe0:	bf18      	it	ne
c0de3fe2:	462a      	movne	r2, r5
c0de3fe4:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de3fe8:	0e13      	lsrs	r3, r2, #24
c0de3fea:	70c3      	strb	r3, [r0, #3]
c0de3fec:	0c13      	lsrs	r3, r2, #16
c0de3fee:	7083      	strb	r3, [r0, #2]
c0de3ff0:	0a10      	lsrs	r0, r2, #8
c0de3ff2:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de3ff6:	2008      	movs	r0, #8
c0de3ff8:	f002 fdf7 	bl	c0de6bea <nbgl_getTextWidth>
c0de3ffc:	6861      	ldr	r1, [r4, #4]
c0de3ffe:	78a2      	ldrb	r2, [r4, #2]
c0de4000:	786b      	ldrb	r3, [r5, #1]
c0de4002:	76be      	strb	r6, [r7, #26]
c0de4004:	71fe      	strb	r6, [r7, #7]
c0de4006:	f887 8016 	strb.w	r8, [r7, #22]
c0de400a:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de400e:	210c      	movs	r1, #12
c0de4010:	f887 a019 	strb.w	sl, [r7, #25]
c0de4014:	71b9      	strb	r1, [r7, #6]
c0de4016:	7829      	ldrb	r1, [r5, #0]
c0de4018:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de401c:	4408      	add	r0, r1
c0de401e:	1c51      	adds	r1, r2, #1
c0de4020:	300a      	adds	r0, #10
c0de4022:	7138      	strb	r0, [r7, #4]
c0de4024:	0a00      	lsrs	r0, r0, #8
c0de4026:	70a1      	strb	r1, [r4, #2]
c0de4028:	7178      	strb	r0, [r7, #5]
c0de402a:	4630      	mov	r0, r6
c0de402c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4030:	000039d7 	.word	0x000039d7
c0de4034:	00003aa4 	.word	0x00003aa4
c0de4038:	00003749 	.word	0x00003749
c0de403c:	00003731 	.word	0x00003731

c0de4040 <nbgl_layoutDraw>:
c0de4040:	b120      	cbz	r0, c0de404c <nbgl_layoutDraw+0xc>
c0de4042:	b580      	push	{r7, lr}
c0de4044:	f002 fda4 	bl	c0de6b90 <nbgl_screenRedraw>
c0de4048:	2000      	movs	r0, #0
c0de404a:	bd80      	pop	{r7, pc}
c0de404c:	f000 b844 	b.w	c0de40d8 <OUTLINED_FUNCTION_8>

c0de4050 <nbgl_layoutRelease>:
c0de4050:	b148      	cbz	r0, c0de4066 <nbgl_layoutRelease+0x16>
c0de4052:	b510      	push	{r4, lr}
c0de4054:	4604      	mov	r4, r0
c0de4056:	7800      	ldrb	r0, [r0, #0]
c0de4058:	b110      	cbz	r0, c0de4060 <nbgl_layoutRelease+0x10>
c0de405a:	7860      	ldrb	r0, [r4, #1]
c0de405c:	f002 fd9d 	bl	c0de6b9a <nbgl_screenPop>
c0de4060:	2000      	movs	r0, #0
c0de4062:	70a0      	strb	r0, [r4, #2]
c0de4064:	bd10      	pop	{r4, pc}
c0de4066:	f000 b837 	b.w	c0de40d8 <OUTLINED_FUNCTION_8>

c0de406a <OUTLINED_FUNCTION_1>:
c0de406a:	4638      	mov	r0, r7
c0de406c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4070:	70c2      	strb	r2, [r0, #3]
c0de4072:	0c0a      	lsrs	r2, r1, #16
c0de4074:	7082      	strb	r2, [r0, #2]
c0de4076:	0a08      	lsrs	r0, r1, #8
c0de4078:	2272      	movs	r2, #114	@ 0x72
c0de407a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de407e:	200a      	movs	r0, #10
c0de4080:	f002 bda9 	b.w	c0de6bd6 <nbgl_getTextNbLinesInWidth>

c0de4084 <OUTLINED_FUNCTION_2>:
c0de4084:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4088:	784b      	ldrb	r3, [r1, #1]
c0de408a:	788d      	ldrb	r5, [r1, #2]
c0de408c:	78c9      	ldrb	r1, [r1, #3]
c0de408e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4092:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4096:	9d05      	ldr	r5, [sp, #20]
c0de4098:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de409c:	4770      	bx	lr

c0de409e <OUTLINED_FUNCTION_3>:
c0de409e:	70c2      	strb	r2, [r0, #3]
c0de40a0:	0c0a      	lsrs	r2, r1, #16
c0de40a2:	7082      	strb	r2, [r0, #2]
c0de40a4:	0a08      	lsrs	r0, r1, #8
c0de40a6:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de40aa:	2008      	movs	r0, #8
c0de40ac:	f002 bd9d 	b.w	c0de6bea <nbgl_getTextWidth>

c0de40b0 <OUTLINED_FUNCTION_4>:
c0de40b0:	2004      	movs	r0, #4
c0de40b2:	f002 bd7c 	b.w	c0de6bae <nbgl_objPoolGet>

c0de40b6 <OUTLINED_FUNCTION_5>:
c0de40b6:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de40ba:	2272      	movs	r2, #114	@ 0x72
c0de40bc:	f002 bd9a 	b.w	c0de6bf4 <nbgl_getTextMaxLenInNbLines>

c0de40c0 <OUTLINED_FUNCTION_6>:
c0de40c0:	2100      	movs	r1, #0
c0de40c2:	463a      	mov	r2, r7
c0de40c4:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de40c8:	70d1      	strb	r1, [r2, #3]
c0de40ca:	7091      	strb	r1, [r2, #2]
c0de40cc:	7051      	strb	r1, [r2, #1]
c0de40ce:	4770      	bx	lr

c0de40d0 <OUTLINED_FUNCTION_7>:
c0de40d0:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de40d4:	f002 bd75 	b.w	c0de6bc2 <nbgl_getFont>

c0de40d8 <OUTLINED_FUNCTION_8>:
c0de40d8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de40dc:	4770      	bx	lr

c0de40de <OUTLINED_FUNCTION_9>:
c0de40de:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de40e2:	2003      	movs	r0, #3
c0de40e4:	f887 0020 	strb.w	r0, [r7, #32]
c0de40e8:	77f8      	strb	r0, [r7, #31]
c0de40ea:	4770      	bx	lr

c0de40ec <nbgl_stepDrawText>:
c0de40ec:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de40f0:	460e      	mov	r6, r1
c0de40f2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de40f4:	4605      	mov	r5, r0
c0de40f6:	2000      	movs	r0, #0
c0de40f8:	469a      	mov	sl, r3
c0de40fa:	4617      	mov	r7, r2
c0de40fc:	f000 f830 	bl	c0de4160 <getFreeContext>
c0de4100:	b348      	cbz	r0, c0de4156 <nbgl_stepDrawText+0x6a>
c0de4102:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de4106:	4604      	mov	r4, r0
c0de4108:	6146      	str	r6, [r0, #20]
c0de410a:	b10f      	cbz	r7, c0de4110 <nbgl_stepDrawText+0x24>
c0de410c:	f000 fae1 	bl	c0de46d2 <OUTLINED_FUNCTION_1>
c0de4110:	200a      	movs	r0, #10
c0de4112:	f1b8 0f00 	cmp.w	r8, #0
c0de4116:	bf19      	ittee	ne
c0de4118:	4641      	movne	r1, r8
c0de411a:	2203      	movne	r2, #3
c0de411c:	4651      	moveq	r1, sl
c0de411e:	2204      	moveq	r2, #4
c0de4120:	2372      	movs	r3, #114	@ 0x72
c0de4122:	f002 fd5d 	bl	c0de6be0 <nbgl_getTextNbPagesInWidth>
c0de4126:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4128:	7020      	strb	r0, [r4, #0]
c0de412a:	072a      	lsls	r2, r5, #28
c0de412c:	bf46      	itte	mi
c0de412e:	3801      	submi	r0, #1
c0de4130:	7060      	strbmi	r0, [r4, #1]
c0de4132:	7860      	ldrbpl	r0, [r4, #1]
c0de4134:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4138:	f8c4 a004 	str.w	sl, [r4, #4]
c0de413c:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4140:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4144:	7461      	strb	r1, [r4, #17]
c0de4146:	f005 0103 	and.w	r1, r5, #3
c0de414a:	7421      	strb	r1, [r4, #16]
c0de414c:	b2c1      	uxtb	r1, r0
c0de414e:	4620      	mov	r0, r4
c0de4150:	f000 f82c 	bl	c0de41ac <displayTextPage>
c0de4154:	e000      	b.n	c0de4158 <nbgl_stepDrawText+0x6c>
c0de4156:	2400      	movs	r4, #0
c0de4158:	4620      	mov	r0, r4
c0de415a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4160 <getFreeContext>:
c0de4160:	b570      	push	{r4, r5, r6, lr}
c0de4162:	4604      	mov	r4, r0
c0de4164:	4810      	ldr	r0, [pc, #64]	@ (c0de41a8 <getFreeContext+0x48>)
c0de4166:	460d      	mov	r5, r1
c0de4168:	b151      	cbz	r1, c0de4180 <getFreeContext+0x20>
c0de416a:	2100      	movs	r1, #0
c0de416c:	2990      	cmp	r1, #144	@ 0x90
c0de416e:	d00a      	beq.n	c0de4186 <getFreeContext+0x26>
c0de4170:	eb09 0200 	add.w	r2, r9, r0
c0de4174:	440a      	add	r2, r1
c0de4176:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de417a:	b132      	cbz	r2, c0de418a <getFreeContext+0x2a>
c0de417c:	3148      	adds	r1, #72	@ 0x48
c0de417e:	e7f5      	b.n	c0de416c <getFreeContext+0xc>
c0de4180:	eb09 0600 	add.w	r6, r9, r0
c0de4184:	e005      	b.n	c0de4192 <getFreeContext+0x32>
c0de4186:	2600      	movs	r6, #0
c0de4188:	e00b      	b.n	c0de41a2 <getFreeContext+0x42>
c0de418a:	4448      	add	r0, r9
c0de418c:	4408      	add	r0, r1
c0de418e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4192:	4630      	mov	r0, r6
c0de4194:	2148      	movs	r1, #72	@ 0x48
c0de4196:	f003 f9f9 	bl	c0de758c <__aeabi_memclr>
c0de419a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de419e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de41a2:	4630      	mov	r0, r6
c0de41a4:	bd70      	pop	{r4, r5, r6, pc}
c0de41a6:	bf00      	nop
c0de41a8:	0000064c 	.word	0x0000064c

c0de41ac <displayTextPage>:
c0de41ac:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de41b0:	b091      	sub	sp, #68	@ 0x44
c0de41b2:	4604      	mov	r4, r0
c0de41b4:	7840      	ldrb	r0, [r0, #1]
c0de41b6:	460e      	mov	r6, r1
c0de41b8:	4288      	cmp	r0, r1
c0de41ba:	d21c      	bcs.n	c0de41f6 <displayTextPage+0x4a>
c0de41bc:	68a5      	ldr	r5, [r4, #8]
c0de41be:	7820      	ldrb	r0, [r4, #0]
c0de41c0:	7066      	strb	r6, [r4, #1]
c0de41c2:	3801      	subs	r0, #1
c0de41c4:	42b0      	cmp	r0, r6
c0de41c6:	dd31      	ble.n	c0de422c <displayTextPage+0x80>
c0de41c8:	68e0      	ldr	r0, [r4, #12]
c0de41ca:	2101      	movs	r1, #1
c0de41cc:	2303      	movs	r3, #3
c0de41ce:	aa08      	add	r2, sp, #32
c0de41d0:	e9cd 2100 	strd	r2, r1, [sp]
c0de41d4:	4629      	mov	r1, r5
c0de41d6:	2800      	cmp	r0, #0
c0de41d8:	bf08      	it	eq
c0de41da:	2304      	moveq	r3, #4
c0de41dc:	200a      	movs	r0, #10
c0de41de:	2272      	movs	r2, #114	@ 0x72
c0de41e0:	f002 fd08 	bl	c0de6bf4 <nbgl_getTextMaxLenInNbLines>
c0de41e4:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de41e8:	1868      	adds	r0, r5, r1
c0de41ea:	60a0      	str	r0, [r4, #8]
c0de41ec:	5c69      	ldrb	r1, [r5, r1]
c0de41ee:	290a      	cmp	r1, #10
c0de41f0:	d11e      	bne.n	c0de4230 <displayTextPage+0x84>
c0de41f2:	3001      	adds	r0, #1
c0de41f4:	e01b      	b.n	c0de422e <displayTextPage+0x82>
c0de41f6:	68e5      	ldr	r5, [r4, #12]
c0de41f8:	2d00      	cmp	r5, #0
c0de41fa:	d074      	beq.n	c0de42e6 <displayTextPage+0x13a>
c0de41fc:	2700      	movs	r7, #0
c0de41fe:	f04f 0801 	mov.w	r8, #1
c0de4202:	f10d 0a20 	add.w	sl, sp, #32
c0de4206:	42be      	cmp	r6, r7
c0de4208:	d0d9      	beq.n	c0de41be <displayTextPage+0x12>
c0de420a:	7820      	ldrb	r0, [r4, #0]
c0de420c:	3801      	subs	r0, #1
c0de420e:	42b8      	cmp	r0, r7
c0de4210:	dd0a      	ble.n	c0de4228 <displayTextPage+0x7c>
c0de4212:	200a      	movs	r0, #10
c0de4214:	4629      	mov	r1, r5
c0de4216:	2272      	movs	r2, #114	@ 0x72
c0de4218:	2303      	movs	r3, #3
c0de421a:	e9cd a800 	strd	sl, r8, [sp]
c0de421e:	f002 fce9 	bl	c0de6bf4 <nbgl_getTextMaxLenInNbLines>
c0de4222:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4226:	4405      	add	r5, r0
c0de4228:	3701      	adds	r7, #1
c0de422a:	e7ec      	b.n	c0de4206 <displayTextPage+0x5a>
c0de422c:	2000      	movs	r0, #0
c0de422e:	60a0      	str	r0, [r4, #8]
c0de4230:	484f      	ldr	r0, [pc, #316]	@ (c0de4370 <displayTextPage+0x1c4>)
c0de4232:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4236:	4478      	add	r0, pc
c0de4238:	9004      	str	r0, [sp, #16]
c0de423a:	2000      	movs	r0, #0
c0de423c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4240:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4244:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4248:	ca07      	ldmia	r2, {r0, r1, r2}
c0de424a:	ab05      	add	r3, sp, #20
c0de424c:	c307      	stmia	r3!, {r0, r1, r2}
c0de424e:	a803      	add	r0, sp, #12
c0de4250:	f7ff f992 	bl	c0de3578 <nbgl_layoutGet>
c0de4254:	7827      	ldrb	r7, [r4, #0]
c0de4256:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de425a:	4606      	mov	r6, r0
c0de425c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de425e:	7c20      	ldrb	r0, [r4, #16]
c0de4260:	4639      	mov	r1, r7
c0de4262:	4652      	mov	r2, sl
c0de4264:	f000 f8fc 	bl	c0de4460 <getNavigationInfo>
c0de4268:	4680      	mov	r8, r0
c0de426a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de426e:	68e0      	ldr	r0, [r4, #12]
c0de4270:	b188      	cbz	r0, c0de4296 <displayTextPage+0xea>
c0de4272:	2f01      	cmp	r7, #1
c0de4274:	d115      	bne.n	c0de42a2 <displayTextPage+0xf6>
c0de4276:	6861      	ldr	r1, [r4, #4]
c0de4278:	2008      	movs	r0, #8
c0de427a:	2272      	movs	r2, #114	@ 0x72
c0de427c:	2300      	movs	r3, #0
c0de427e:	2600      	movs	r6, #0
c0de4280:	f002 fca9 	bl	c0de6bd6 <nbgl_getTextNbLinesInWidth>
c0de4284:	2802      	cmp	r0, #2
c0de4286:	d348      	bcc.n	c0de431a <displayTextPage+0x16e>
c0de4288:	6861      	ldr	r1, [r4, #4]
c0de428a:	2018      	movs	r0, #24
c0de428c:	f104 0218 	add.w	r2, r4, #24
c0de4290:	e9cd 2000 	strd	r2, r0, [sp]
c0de4294:	e021      	b.n	c0de42da <displayTextPage+0x12e>
c0de4296:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de429a:	4630      	mov	r0, r6
c0de429c:	4629      	mov	r1, r5
c0de429e:	2200      	movs	r2, #0
c0de42a0:	e055      	b.n	c0de434e <displayTextPage+0x1a2>
c0de42a2:	f10a 0001 	add.w	r0, sl, #1
c0de42a6:	6863      	ldr	r3, [r4, #4]
c0de42a8:	2124      	movs	r1, #36	@ 0x24
c0de42aa:	e9cd 0700 	strd	r0, r7, [sp]
c0de42ae:	af08      	add	r7, sp, #32
c0de42b0:	4a30      	ldr	r2, [pc, #192]	@ (c0de4374 <displayTextPage+0x1c8>)
c0de42b2:	4638      	mov	r0, r7
c0de42b4:	447a      	add	r2, pc
c0de42b6:	f002 fccb 	bl	c0de6c50 <snprintf>
c0de42ba:	2008      	movs	r0, #8
c0de42bc:	4639      	mov	r1, r7
c0de42be:	2272      	movs	r2, #114	@ 0x72
c0de42c0:	2300      	movs	r3, #0
c0de42c2:	f04f 0a00 	mov.w	sl, #0
c0de42c6:	f002 fc86 	bl	c0de6bd6 <nbgl_getTextNbLinesInWidth>
c0de42ca:	f104 0c18 	add.w	ip, r4, #24
c0de42ce:	2802      	cmp	r0, #2
c0de42d0:	d32c      	bcc.n	c0de432c <displayTextPage+0x180>
c0de42d2:	2018      	movs	r0, #24
c0de42d4:	e9cd c000 	strd	ip, r0, [sp]
c0de42d8:	a908      	add	r1, sp, #32
c0de42da:	2008      	movs	r0, #8
c0de42dc:	2272      	movs	r2, #114	@ 0x72
c0de42de:	2301      	movs	r3, #1
c0de42e0:	f002 fc8d 	bl	c0de6bfe <nbgl_textReduceOnNbLines>
c0de42e4:	e02d      	b.n	c0de4342 <displayTextPage+0x196>
c0de42e6:	6865      	ldr	r5, [r4, #4]
c0de42e8:	2700      	movs	r7, #0
c0de42ea:	f04f 0801 	mov.w	r8, #1
c0de42ee:	f10d 0a20 	add.w	sl, sp, #32
c0de42f2:	42be      	cmp	r6, r7
c0de42f4:	f43f af63 	beq.w	c0de41be <displayTextPage+0x12>
c0de42f8:	7820      	ldrb	r0, [r4, #0]
c0de42fa:	3801      	subs	r0, #1
c0de42fc:	42b8      	cmp	r0, r7
c0de42fe:	dd0a      	ble.n	c0de4316 <displayTextPage+0x16a>
c0de4300:	200a      	movs	r0, #10
c0de4302:	4629      	mov	r1, r5
c0de4304:	2272      	movs	r2, #114	@ 0x72
c0de4306:	2304      	movs	r3, #4
c0de4308:	e9cd a800 	strd	sl, r8, [sp]
c0de430c:	f002 fc72 	bl	c0de6bf4 <nbgl_getTextMaxLenInNbLines>
c0de4310:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4314:	4405      	add	r5, r0
c0de4316:	3701      	adds	r7, #1
c0de4318:	e7eb      	b.n	c0de42f2 <displayTextPage+0x146>
c0de431a:	6861      	ldr	r1, [r4, #4]
c0de431c:	f104 0018 	add.w	r0, r4, #24
c0de4320:	2217      	movs	r2, #23
c0de4322:	f003 f929 	bl	c0de7578 <__aeabi_memcpy>
c0de4326:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de432a:	e00a      	b.n	c0de4342 <displayTextPage+0x196>
c0de432c:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de432e:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4332:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4336:	8838      	ldrh	r0, [r7, #0]
c0de4338:	f8ac 0000 	strh.w	r0, [ip]
c0de433c:	78b8      	ldrb	r0, [r7, #2]
c0de433e:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4342:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4346:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4348:	f104 0118 	add.w	r1, r4, #24
c0de434c:	462a      	mov	r2, r5
c0de434e:	f7ff f9d5 	bl	c0de36fc <nbgl_layoutAddText>
c0de4352:	f1b8 0f00 	cmp.w	r8, #0
c0de4356:	d004      	beq.n	c0de4362 <displayTextPage+0x1b6>
c0de4358:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de435a:	f10d 010a 	add.w	r1, sp, #10
c0de435e:	f7ff f96f 	bl	c0de3640 <nbgl_layoutAddNavigation>
c0de4362:	f000 f9e9 	bl	c0de4738 <OUTLINED_FUNCTION_4>
c0de4366:	f002 fbfa 	bl	c0de6b5e <nbgl_refresh>
c0de436a:	b011      	add	sp, #68	@ 0x44
c0de436c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4370:	000001bb 	.word	0x000001bb
c0de4374:	000035cd 	.word	0x000035cd

c0de4378 <nbgl_stepDrawCenteredInfo>:
c0de4378:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de437c:	b087      	sub	sp, #28
c0de437e:	460d      	mov	r5, r1
c0de4380:	4682      	mov	sl, r0
c0de4382:	a802      	add	r0, sp, #8
c0de4384:	f000 f9d3 	bl	c0de472e <OUTLINED_FUNCTION_3>
c0de4388:	4819      	ldr	r0, [pc, #100]	@ (c0de43f0 <nbgl_stepDrawCenteredInfo+0x78>)
c0de438a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de438c:	4478      	add	r0, pc
c0de438e:	f000 f9c5 	bl	c0de471c <OUTLINED_FUNCTION_2>
c0de4392:	b168      	cbz	r0, c0de43b0 <nbgl_stepDrawCenteredInfo+0x38>
c0de4394:	4604      	mov	r4, r0
c0de4396:	6145      	str	r5, [r0, #20]
c0de4398:	b10f      	cbz	r7, c0de439e <nbgl_stepDrawCenteredInfo+0x26>
c0de439a:	f000 f953 	bl	c0de4644 <OUTLINED_FUNCTION_0>
c0de439e:	f000 f9ce 	bl	c0de473e <OUTLINED_FUNCTION_5>
c0de43a2:	d007      	beq.n	c0de43b4 <nbgl_stepDrawCenteredInfo+0x3c>
c0de43a4:	2802      	cmp	r0, #2
c0de43a6:	d007      	beq.n	c0de43b8 <nbgl_stepDrawCenteredInfo+0x40>
c0de43a8:	2801      	cmp	r0, #1
c0de43aa:	d108      	bne.n	c0de43be <nbgl_stepDrawCenteredInfo+0x46>
c0de43ac:	2002      	movs	r0, #2
c0de43ae:	e004      	b.n	c0de43ba <nbgl_stepDrawCenteredInfo+0x42>
c0de43b0:	2400      	movs	r4, #0
c0de43b2:	e018      	b.n	c0de43e6 <nbgl_stepDrawCenteredInfo+0x6e>
c0de43b4:	2003      	movs	r0, #3
c0de43b6:	e000      	b.n	c0de43ba <nbgl_stepDrawCenteredInfo+0x42>
c0de43b8:	2001      	movs	r0, #1
c0de43ba:	2500      	movs	r5, #0
c0de43bc:	e000      	b.n	c0de43c0 <nbgl_stepDrawCenteredInfo+0x48>
c0de43be:	2000      	movs	r0, #0
c0de43c0:	f88d 0007 	strb.w	r0, [sp, #7]
c0de43c4:	a802      	add	r0, sp, #8
c0de43c6:	f7ff f8d7 	bl	c0de3578 <nbgl_layoutGet>
c0de43ca:	4641      	mov	r1, r8
c0de43cc:	6420      	str	r0, [r4, #64]	@ 0x40
c0de43ce:	f7ff fba9 	bl	c0de3b24 <nbgl_layoutAddCenteredInfo>
c0de43d2:	b925      	cbnz	r5, c0de43de <nbgl_stepDrawCenteredInfo+0x66>
c0de43d4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de43d6:	f10d 0106 	add.w	r1, sp, #6
c0de43da:	f7ff f931 	bl	c0de3640 <nbgl_layoutAddNavigation>
c0de43de:	f000 f9ab 	bl	c0de4738 <OUTLINED_FUNCTION_4>
c0de43e2:	f002 fbbc 	bl	c0de6b5e <nbgl_refresh>
c0de43e6:	4620      	mov	r0, r4
c0de43e8:	b007      	add	sp, #28
c0de43ea:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de43ee:	bf00      	nop
c0de43f0:	00000065 	.word	0x00000065

c0de43f4 <actionCallback>:
c0de43f4:	b510      	push	{r4, lr}
c0de43f6:	460c      	mov	r4, r1
c0de43f8:	f000 f8f0 	bl	c0de45dc <getContextFromLayout>
c0de43fc:	b378      	cbz	r0, c0de445e <actionCallback+0x6a>
c0de43fe:	2c04      	cmp	r4, #4
c0de4400:	d006      	beq.n	c0de4410 <actionCallback+0x1c>
c0de4402:	2c01      	cmp	r4, #1
c0de4404:	d008      	beq.n	c0de4418 <actionCallback+0x24>
c0de4406:	bb54      	cbnz	r4, c0de445e <actionCallback+0x6a>
c0de4408:	7841      	ldrb	r1, [r0, #1]
c0de440a:	b1d9      	cbz	r1, c0de4444 <actionCallback+0x50>
c0de440c:	3901      	subs	r1, #1
c0de440e:	e009      	b.n	c0de4424 <actionCallback+0x30>
c0de4410:	6942      	ldr	r2, [r0, #20]
c0de4412:	b322      	cbz	r2, c0de445e <actionCallback+0x6a>
c0de4414:	2104      	movs	r1, #4
c0de4416:	e01f      	b.n	c0de4458 <actionCallback+0x64>
c0de4418:	7802      	ldrb	r2, [r0, #0]
c0de441a:	7841      	ldrb	r1, [r0, #1]
c0de441c:	3a01      	subs	r2, #1
c0de441e:	428a      	cmp	r2, r1
c0de4420:	dd05      	ble.n	c0de442e <actionCallback+0x3a>
c0de4422:	3101      	adds	r1, #1
c0de4424:	b2c9      	uxtb	r1, r1
c0de4426:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de442a:	f7ff bebf 	b.w	c0de41ac <displayTextPage>
c0de442e:	7c01      	ldrb	r1, [r0, #16]
c0de4430:	f041 0102 	orr.w	r1, r1, #2
c0de4434:	2903      	cmp	r1, #3
c0de4436:	d001      	beq.n	c0de443c <actionCallback+0x48>
c0de4438:	7c41      	ldrb	r1, [r0, #17]
c0de443a:	b181      	cbz	r1, c0de445e <actionCallback+0x6a>
c0de443c:	6942      	ldr	r2, [r0, #20]
c0de443e:	b172      	cbz	r2, c0de445e <actionCallback+0x6a>
c0de4440:	2101      	movs	r1, #1
c0de4442:	e009      	b.n	c0de4458 <actionCallback+0x64>
c0de4444:	7c01      	ldrb	r1, [r0, #16]
c0de4446:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de444a:	2902      	cmp	r1, #2
c0de444c:	d001      	beq.n	c0de4452 <actionCallback+0x5e>
c0de444e:	7c41      	ldrb	r1, [r0, #17]
c0de4450:	b129      	cbz	r1, c0de445e <actionCallback+0x6a>
c0de4452:	6942      	ldr	r2, [r0, #20]
c0de4454:	b11a      	cbz	r2, c0de445e <actionCallback+0x6a>
c0de4456:	2100      	movs	r1, #0
c0de4458:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de445c:	4710      	bx	r2
c0de445e:	bd10      	pop	{r4, pc}

c0de4460 <getNavigationInfo>:
c0de4460:	4603      	mov	r3, r0
c0de4462:	2902      	cmp	r1, #2
c0de4464:	d308      	bcc.n	c0de4478 <getNavigationInfo+0x18>
c0de4466:	3901      	subs	r1, #1
c0de4468:	4610      	mov	r0, r2
c0de446a:	2a00      	cmp	r2, #0
c0de446c:	bf18      	it	ne
c0de446e:	2001      	movne	r0, #1
c0de4470:	4291      	cmp	r1, r2
c0de4472:	bf88      	it	hi
c0de4474:	3002      	addhi	r0, #2
c0de4476:	e000      	b.n	c0de447a <getNavigationInfo+0x1a>
c0de4478:	2000      	movs	r0, #0
c0de447a:	2b03      	cmp	r3, #3
c0de447c:	d00a      	beq.n	c0de4494 <getNavigationInfo+0x34>
c0de447e:	2b02      	cmp	r3, #2
c0de4480:	bf04      	itt	eq
c0de4482:	f040 0001 	orreq.w	r0, r0, #1
c0de4486:	4770      	bxeq	lr
c0de4488:	2b01      	cmp	r3, #1
c0de448a:	bf04      	itt	eq
c0de448c:	f040 0002 	orreq.w	r0, r0, #2
c0de4490:	4770      	bxeq	lr
c0de4492:	4770      	bx	lr
c0de4494:	2003      	movs	r0, #3
c0de4496:	4770      	bx	lr

c0de4498 <nbgl_stepDrawMenuList>:
c0de4498:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de449a:	460f      	mov	r7, r1
c0de449c:	4606      	mov	r6, r0
c0de449e:	2002      	movs	r0, #2
c0de44a0:	4619      	mov	r1, r3
c0de44a2:	4615      	mov	r5, r2
c0de44a4:	f7ff fe5c 	bl	c0de4160 <getFreeContext>
c0de44a8:	b170      	cbz	r0, c0de44c8 <nbgl_stepDrawMenuList+0x30>
c0de44aa:	4604      	mov	r4, r0
c0de44ac:	b10f      	cbz	r7, c0de44b2 <nbgl_stepDrawMenuList+0x1a>
c0de44ae:	f000 f910 	bl	c0de46d2 <OUTLINED_FUNCTION_1>
c0de44b2:	7928      	ldrb	r0, [r5, #4]
c0de44b4:	7220      	strb	r0, [r4, #8]
c0de44b6:	7968      	ldrb	r0, [r5, #5]
c0de44b8:	7260      	strb	r0, [r4, #9]
c0de44ba:	6828      	ldr	r0, [r5, #0]
c0de44bc:	e9c4 6000 	strd	r6, r0, [r4]
c0de44c0:	4620      	mov	r0, r4
c0de44c2:	f000 f805 	bl	c0de44d0 <displayMenuList>
c0de44c6:	e000      	b.n	c0de44ca <nbgl_stepDrawMenuList+0x32>
c0de44c8:	2400      	movs	r4, #0
c0de44ca:	4620      	mov	r0, r4
c0de44cc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de44d0 <displayMenuList>:
c0de44d0:	b5b0      	push	{r4, r5, r7, lr}
c0de44d2:	b086      	sub	sp, #24
c0de44d4:	4604      	mov	r4, r0
c0de44d6:	2000      	movs	r0, #0
c0de44d8:	9001      	str	r0, [sp, #4]
c0de44da:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de44de:	4819      	ldr	r0, [pc, #100]	@ (c0de4544 <displayMenuList+0x74>)
c0de44e0:	4478      	add	r0, pc
c0de44e2:	9002      	str	r0, [sp, #8]
c0de44e4:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de44e8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de44ec:	ca07      	ldmia	r2, {r0, r1, r2}
c0de44ee:	ab03      	add	r3, sp, #12
c0de44f0:	c307      	stmia	r3!, {r0, r1, r2}
c0de44f2:	a801      	add	r0, sp, #4
c0de44f4:	f7ff f840 	bl	c0de3578 <nbgl_layoutGet>
c0de44f8:	1d25      	adds	r5, r4, #4
c0de44fa:	6420      	str	r0, [r4, #64]	@ 0x40
c0de44fc:	4629      	mov	r1, r5
c0de44fe:	f7ff fabd 	bl	c0de3a7c <nbgl_layoutAddMenuList>
c0de4502:	7a20      	ldrb	r0, [r4, #8]
c0de4504:	2802      	cmp	r0, #2
c0de4506:	d316      	bcc.n	c0de4536 <displayMenuList+0x66>
c0de4508:	2101      	movs	r1, #1
c0de450a:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de450e:	7969      	ldrb	r1, [r5, #5]
c0de4510:	2900      	cmp	r1, #0
c0de4512:	460a      	mov	r2, r1
c0de4514:	bf18      	it	ne
c0de4516:	2201      	movne	r2, #1
c0de4518:	3801      	subs	r0, #1
c0de451a:	f88d 2003 	strb.w	r2, [sp, #3]
c0de451e:	4288      	cmp	r0, r1
c0de4520:	d903      	bls.n	c0de452a <displayMenuList+0x5a>
c0de4522:	1c90      	adds	r0, r2, #2
c0de4524:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4528:	e000      	b.n	c0de452c <displayMenuList+0x5c>
c0de452a:	b121      	cbz	r1, c0de4536 <displayMenuList+0x66>
c0de452c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de452e:	f10d 0102 	add.w	r1, sp, #2
c0de4532:	f7ff f885 	bl	c0de3640 <nbgl_layoutAddNavigation>
c0de4536:	f000 f8ff 	bl	c0de4738 <OUTLINED_FUNCTION_4>
c0de453a:	f002 fb10 	bl	c0de6b5e <nbgl_refresh>
c0de453e:	b006      	add	sp, #24
c0de4540:	bdb0      	pop	{r4, r5, r7, pc}
c0de4542:	bf00      	nop
c0de4544:	00000121 	.word	0x00000121

c0de4548 <nbgl_stepDrawSwitch>:
c0de4548:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de454c:	b087      	sub	sp, #28
c0de454e:	460d      	mov	r5, r1
c0de4550:	4682      	mov	sl, r0
c0de4552:	a802      	add	r0, sp, #8
c0de4554:	f000 f8eb 	bl	c0de472e <OUTLINED_FUNCTION_3>
c0de4558:	4819      	ldr	r0, [pc, #100]	@ (c0de45c0 <nbgl_stepDrawSwitch+0x78>)
c0de455a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de455c:	4478      	add	r0, pc
c0de455e:	f000 f8dd 	bl	c0de471c <OUTLINED_FUNCTION_2>
c0de4562:	b168      	cbz	r0, c0de4580 <nbgl_stepDrawSwitch+0x38>
c0de4564:	4604      	mov	r4, r0
c0de4566:	6145      	str	r5, [r0, #20]
c0de4568:	b10f      	cbz	r7, c0de456e <nbgl_stepDrawSwitch+0x26>
c0de456a:	f000 f86b 	bl	c0de4644 <OUTLINED_FUNCTION_0>
c0de456e:	f000 f8e6 	bl	c0de473e <OUTLINED_FUNCTION_5>
c0de4572:	d007      	beq.n	c0de4584 <nbgl_stepDrawSwitch+0x3c>
c0de4574:	2802      	cmp	r0, #2
c0de4576:	d007      	beq.n	c0de4588 <nbgl_stepDrawSwitch+0x40>
c0de4578:	2801      	cmp	r0, #1
c0de457a:	d108      	bne.n	c0de458e <nbgl_stepDrawSwitch+0x46>
c0de457c:	2002      	movs	r0, #2
c0de457e:	e004      	b.n	c0de458a <nbgl_stepDrawSwitch+0x42>
c0de4580:	2400      	movs	r4, #0
c0de4582:	e018      	b.n	c0de45b6 <nbgl_stepDrawSwitch+0x6e>
c0de4584:	2003      	movs	r0, #3
c0de4586:	e000      	b.n	c0de458a <nbgl_stepDrawSwitch+0x42>
c0de4588:	2001      	movs	r0, #1
c0de458a:	2500      	movs	r5, #0
c0de458c:	e000      	b.n	c0de4590 <nbgl_stepDrawSwitch+0x48>
c0de458e:	2000      	movs	r0, #0
c0de4590:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4594:	a802      	add	r0, sp, #8
c0de4596:	f7fe ffef 	bl	c0de3578 <nbgl_layoutGet>
c0de459a:	4641      	mov	r1, r8
c0de459c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de459e:	f7ff fc61 	bl	c0de3e64 <nbgl_layoutAddSwitch>
c0de45a2:	b925      	cbnz	r5, c0de45ae <nbgl_stepDrawSwitch+0x66>
c0de45a4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de45a6:	f10d 0106 	add.w	r1, sp, #6
c0de45aa:	f7ff f849 	bl	c0de3640 <nbgl_layoutAddNavigation>
c0de45ae:	f000 f8c3 	bl	c0de4738 <OUTLINED_FUNCTION_4>
c0de45b2:	f002 fad4 	bl	c0de6b5e <nbgl_refresh>
c0de45b6:	4620      	mov	r0, r4
c0de45b8:	b007      	add	sp, #28
c0de45ba:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de45be:	bf00      	nop
c0de45c0:	fffffe95 	.word	0xfffffe95

c0de45c4 <nbgl_stepRelease>:
c0de45c4:	b138      	cbz	r0, c0de45d6 <nbgl_stepRelease+0x12>
c0de45c6:	b510      	push	{r4, lr}
c0de45c8:	4604      	mov	r4, r0
c0de45ca:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de45cc:	f7ff fd40 	bl	c0de4050 <nbgl_layoutRelease>
c0de45d0:	2100      	movs	r1, #0
c0de45d2:	6421      	str	r1, [r4, #64]	@ 0x40
c0de45d4:	bd10      	pop	{r4, pc}
c0de45d6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de45da:	4770      	bx	lr

c0de45dc <getContextFromLayout>:
c0de45dc:	4a08      	ldr	r2, [pc, #32]	@ (c0de4600 <getContextFromLayout+0x24>)
c0de45de:	2100      	movs	r1, #0
c0de45e0:	29d8      	cmp	r1, #216	@ 0xd8
c0de45e2:	bf04      	itt	eq
c0de45e4:	2000      	moveq	r0, #0
c0de45e6:	4770      	bxeq	lr
c0de45e8:	eb09 0302 	add.w	r3, r9, r2
c0de45ec:	440b      	add	r3, r1
c0de45ee:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de45f0:	4283      	cmp	r3, r0
c0de45f2:	d001      	beq.n	c0de45f8 <getContextFromLayout+0x1c>
c0de45f4:	3148      	adds	r1, #72	@ 0x48
c0de45f6:	e7f3      	b.n	c0de45e0 <getContextFromLayout+0x4>
c0de45f8:	eb09 0002 	add.w	r0, r9, r2
c0de45fc:	4408      	add	r0, r1
c0de45fe:	4770      	bx	lr
c0de4600:	0000064c 	.word	0x0000064c

c0de4604 <menuListActionCallback>:
c0de4604:	b510      	push	{r4, lr}
c0de4606:	460c      	mov	r4, r1
c0de4608:	f7ff ffe8 	bl	c0de45dc <getContextFromLayout>
c0de460c:	b1c8      	cbz	r0, c0de4642 <menuListActionCallback+0x3e>
c0de460e:	2c04      	cmp	r4, #4
c0de4610:	d006      	beq.n	c0de4620 <menuListActionCallback+0x1c>
c0de4612:	2c01      	cmp	r4, #1
c0de4614:	d00a      	beq.n	c0de462c <menuListActionCallback+0x28>
c0de4616:	b9a4      	cbnz	r4, c0de4642 <menuListActionCallback+0x3e>
c0de4618:	7a41      	ldrb	r1, [r0, #9]
c0de461a:	b191      	cbz	r1, c0de4642 <menuListActionCallback+0x3e>
c0de461c:	3901      	subs	r1, #1
c0de461e:	e00b      	b.n	c0de4638 <menuListActionCallback+0x34>
c0de4620:	7a41      	ldrb	r1, [r0, #9]
c0de4622:	6802      	ldr	r2, [r0, #0]
c0de4624:	4608      	mov	r0, r1
c0de4626:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de462a:	4710      	bx	r2
c0de462c:	7a02      	ldrb	r2, [r0, #8]
c0de462e:	7a41      	ldrb	r1, [r0, #9]
c0de4630:	3a01      	subs	r2, #1
c0de4632:	428a      	cmp	r2, r1
c0de4634:	dd05      	ble.n	c0de4642 <menuListActionCallback+0x3e>
c0de4636:	3101      	adds	r1, #1
c0de4638:	7241      	strb	r1, [r0, #9]
c0de463a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de463e:	f7ff bf47 	b.w	c0de44d0 <displayMenuList>
c0de4642:	bd10      	pop	{r4, pc}

c0de4644 <OUTLINED_FUNCTION_0>:
c0de4644:	7838      	ldrb	r0, [r7, #0]
c0de4646:	7879      	ldrb	r1, [r7, #1]
c0de4648:	78ba      	ldrb	r2, [r7, #2]
c0de464a:	78fb      	ldrb	r3, [r7, #3]
c0de464c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4650:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4654:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4658:	6360      	str	r0, [r4, #52]	@ 0x34
c0de465a:	4638      	mov	r0, r7
c0de465c:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4660:	7a79      	ldrb	r1, [r7, #9]
c0de4662:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4666:	7882      	ldrb	r2, [r0, #2]
c0de4668:	78c3      	ldrb	r3, [r0, #3]
c0de466a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de466e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4672:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4674:	4639      	mov	r1, r7
c0de4676:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de467a:	797a      	ldrb	r2, [r7, #5]
c0de467c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4680:	788b      	ldrb	r3, [r1, #2]
c0de4682:	78cd      	ldrb	r5, [r1, #3]
c0de4684:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4688:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de468c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de468e:	783a      	ldrb	r2, [r7, #0]
c0de4690:	787b      	ldrb	r3, [r7, #1]
c0de4692:	78bd      	ldrb	r5, [r7, #2]
c0de4694:	78fe      	ldrb	r6, [r7, #3]
c0de4696:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de469a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de469e:	7803      	ldrb	r3, [r0, #0]
c0de46a0:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de46a4:	7885      	ldrb	r5, [r0, #2]
c0de46a6:	78c0      	ldrb	r0, [r0, #3]
c0de46a8:	9204      	str	r2, [sp, #16]
c0de46aa:	7a7a      	ldrb	r2, [r7, #9]
c0de46ac:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de46b0:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de46b4:	788b      	ldrb	r3, [r1, #2]
c0de46b6:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de46ba:	780a      	ldrb	r2, [r1, #0]
c0de46bc:	78c9      	ldrb	r1, [r1, #3]
c0de46be:	9006      	str	r0, [sp, #24]
c0de46c0:	7978      	ldrb	r0, [r7, #5]
c0de46c2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de46c6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de46ca:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de46ce:	9005      	str	r0, [sp, #20]
c0de46d0:	4770      	bx	lr

c0de46d2 <OUTLINED_FUNCTION_1>:
c0de46d2:	7838      	ldrb	r0, [r7, #0]
c0de46d4:	7879      	ldrb	r1, [r7, #1]
c0de46d6:	78ba      	ldrb	r2, [r7, #2]
c0de46d8:	78fb      	ldrb	r3, [r7, #3]
c0de46da:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de46de:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de46e2:	4639      	mov	r1, r7
c0de46e4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de46e8:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de46ec:	6360      	str	r0, [r4, #52]	@ 0x34
c0de46ee:	7a78      	ldrb	r0, [r7, #9]
c0de46f0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de46f4:	788a      	ldrb	r2, [r1, #2]
c0de46f6:	78c9      	ldrb	r1, [r1, #3]
c0de46f8:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de46fc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4700:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4702:	7978      	ldrb	r0, [r7, #5]
c0de4704:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4708:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de470c:	78b9      	ldrb	r1, [r7, #2]
c0de470e:	78fa      	ldrb	r2, [r7, #3]
c0de4710:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4714:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4718:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de471a:	4770      	bx	lr

c0de471c <OUTLINED_FUNCTION_2>:
c0de471c:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4720:	9003      	str	r0, [sp, #12]
c0de4722:	2000      	movs	r0, #0
c0de4724:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4728:	2001      	movs	r0, #1
c0de472a:	f7ff bd19 	b.w	c0de4160 <getFreeContext>

c0de472e <OUTLINED_FUNCTION_3>:
c0de472e:	2114      	movs	r1, #20
c0de4730:	4698      	mov	r8, r3
c0de4732:	4617      	mov	r7, r2
c0de4734:	f002 bf2a 	b.w	c0de758c <__aeabi_memclr>

c0de4738 <OUTLINED_FUNCTION_4>:
c0de4738:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de473a:	f7ff bc81 	b.w	c0de4040 <nbgl_layoutDraw>

c0de473e <OUTLINED_FUNCTION_5>:
c0de473e:	2501      	movs	r5, #1
c0de4740:	f00a 0003 	and.w	r0, sl, #3
c0de4744:	2803      	cmp	r0, #3
c0de4746:	7025      	strb	r5, [r4, #0]
c0de4748:	7420      	strb	r0, [r4, #16]
c0de474a:	4770      	bx	lr

c0de474c <nbgl_useCaseHomeAndSettings>:
c0de474c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4750:	4607      	mov	r7, r0
c0de4752:	4810      	ldr	r0, [pc, #64]	@ (c0de4794 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4754:	f001 fc98 	bl	c0de6088 <OUTLINED_FUNCTION_0>
c0de4758:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de475c:	6425      	str	r5, [r4, #64]	@ 0x40
c0de475e:	9d06      	ldr	r5, [sp, #24]
c0de4760:	4628      	mov	r0, r5
c0de4762:	f002 fc07 	bl	c0de6f74 <pic>
c0de4766:	6460      	str	r0, [r4, #68]	@ 0x44
c0de4768:	9807      	ldr	r0, [sp, #28]
c0de476a:	f002 fc03 	bl	c0de6f74 <pic>
c0de476e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4770:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4774:	6521      	str	r1, [r4, #80]	@ 0x50
c0de4776:	9908      	ldr	r1, [sp, #32]
c0de4778:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de477c:	bf18      	it	ne
c0de477e:	2d00      	cmpne	r5, #0
c0de4780:	d103      	bne.n	c0de478a <nbgl_useCaseHomeAndSettings+0x3e>
c0de4782:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4786:	f000 b843 	b.w	c0de4810 <startUseCaseHome>
c0de478a:	4640      	mov	r0, r8
c0de478c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4790:	f000 b802 	b.w	c0de4798 <startUseCaseSettingsAtPage>
c0de4794:	00000724 	.word	0x00000724

c0de4798 <startUseCaseSettingsAtPage>:
c0de4798:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de479a:	b08f      	sub	sp, #60	@ 0x3c
c0de479c:	4604      	mov	r4, r0
c0de479e:	a801      	add	r0, sp, #4
c0de47a0:	2138      	movs	r1, #56	@ 0x38
c0de47a2:	f002 fef3 	bl	c0de758c <__aeabi_memclr>
c0de47a6:	4e19      	ldr	r6, [pc, #100]	@ (c0de480c <startUseCaseSettingsAtPage+0x74>)
c0de47a8:	eb09 0006 	add.w	r0, r9, r6
c0de47ac:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de47b0:	280f      	cmp	r0, #15
c0de47b2:	bf1e      	ittt	ne
c0de47b4:	eb09 0006 	addne.w	r0, r9, r6
c0de47b8:	210e      	movne	r1, #14
c0de47ba:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de47be:	eb09 0006 	add.w	r0, r9, r6
c0de47c2:	2101      	movs	r1, #1
c0de47c4:	2700      	movs	r7, #0
c0de47c6:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de47ca:	ad01      	add	r5, sp, #4
c0de47cc:	eb09 0006 	add.w	r0, r9, r6
c0de47d0:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de47d2:	7a01      	ldrb	r1, [r0, #8]
c0de47d4:	428f      	cmp	r7, r1
c0de47d6:	d20e      	bcs.n	c0de47f6 <startUseCaseSettingsAtPage+0x5e>
c0de47d8:	b279      	sxtb	r1, r7
c0de47da:	462a      	mov	r2, r5
c0de47dc:	f000 fca6 	bl	c0de512c <getContentAtIdx>
c0de47e0:	f000 fcfe 	bl	c0de51e0 <getContentNbElement>
c0de47e4:	eb09 0106 	add.w	r1, r9, r6
c0de47e8:	3701      	adds	r7, #1
c0de47ea:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de47ee:	4410      	add	r0, r2
c0de47f0:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de47f4:	e7ea      	b.n	c0de47cc <startUseCaseSettingsAtPage+0x34>
c0de47f6:	eb09 0006 	add.w	r0, r9, r6
c0de47fa:	2100      	movs	r1, #0
c0de47fc:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de4800:	2000      	movs	r0, #0
c0de4802:	f000 fef7 	bl	c0de55f4 <displaySettingsPage>
c0de4806:	b00f      	add	sp, #60	@ 0x3c
c0de4808:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de480a:	bf00      	nop
c0de480c:	00000724 	.word	0x00000724

c0de4810 <startUseCaseHome>:
c0de4810:	b510      	push	{r4, lr}
c0de4812:	4821      	ldr	r0, [pc, #132]	@ (c0de4898 <startUseCaseHome+0x88>)
c0de4814:	eb09 0100 	add.w	r1, r9, r0
c0de4818:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de481c:	290d      	cmp	r1, #13
c0de481e:	d009      	beq.n	c0de4834 <startUseCaseHome+0x24>
c0de4820:	290e      	cmp	r1, #14
c0de4822:	d114      	bne.n	c0de484e <startUseCaseHome+0x3e>
c0de4824:	eb09 0100 	add.w	r1, r9, r0
c0de4828:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de482a:	2102      	movs	r1, #2
c0de482c:	2a00      	cmp	r2, #0
c0de482e:	bf08      	it	eq
c0de4830:	2101      	moveq	r1, #1
c0de4832:	e00d      	b.n	c0de4850 <startUseCaseHome+0x40>
c0de4834:	eb09 0200 	add.w	r2, r9, r0
c0de4838:	2102      	movs	r1, #2
c0de483a:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de483c:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de483e:	2c00      	cmp	r4, #0
c0de4840:	bf08      	it	eq
c0de4842:	2101      	moveq	r1, #1
c0de4844:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4848:	b133      	cbz	r3, c0de4858 <startUseCaseHome+0x48>
c0de484a:	3101      	adds	r1, #1
c0de484c:	e000      	b.n	c0de4850 <startUseCaseHome+0x40>
c0de484e:	2100      	movs	r1, #0
c0de4850:	eb09 0200 	add.w	r2, r9, r0
c0de4854:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4858:	eb09 0200 	add.w	r2, r9, r0
c0de485c:	210c      	movs	r1, #12
c0de485e:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de4862:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de4866:	2103      	movs	r1, #3
c0de4868:	2b00      	cmp	r3, #0
c0de486a:	bf08      	it	eq
c0de486c:	2102      	moveq	r1, #2
c0de486e:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de4872:	b124      	cbz	r4, c0de487e <startUseCaseHome+0x6e>
c0de4874:	3101      	adds	r1, #1
c0de4876:	eb09 0200 	add.w	r2, r9, r0
c0de487a:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de487e:	eb09 0200 	add.w	r2, r9, r0
c0de4882:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de4884:	b11a      	cbz	r2, c0de488e <startUseCaseHome+0x7e>
c0de4886:	4448      	add	r0, r9
c0de4888:	3101      	adds	r1, #1
c0de488a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de488e:	2000      	movs	r0, #0
c0de4890:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4894:	f000 bf9e 	b.w	c0de57d4 <displayHomePage>
c0de4898:	00000724 	.word	0x00000724

c0de489c <nbgl_useCaseReview>:
c0de489c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de489e:	4614      	mov	r4, r2
c0de48a0:	460a      	mov	r2, r1
c0de48a2:	4601      	mov	r1, r0
c0de48a4:	9808      	ldr	r0, [sp, #32]
c0de48a6:	9003      	str	r0, [sp, #12]
c0de48a8:	9807      	ldr	r0, [sp, #28]
c0de48aa:	9002      	str	r0, [sp, #8]
c0de48ac:	9806      	ldr	r0, [sp, #24]
c0de48ae:	e9cd 3000 	strd	r3, r0, [sp]
c0de48b2:	2002      	movs	r0, #2
c0de48b4:	4623      	mov	r3, r4
c0de48b6:	f000 f801 	bl	c0de48bc <useCaseReview>
c0de48ba:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de48bc <useCaseReview>:
c0de48bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de48c0:	4607      	mov	r7, r0
c0de48c2:	4811      	ldr	r0, [pc, #68]	@ (c0de4908 <useCaseReview+0x4c>)
c0de48c4:	4688      	mov	r8, r1
c0de48c6:	2140      	movs	r1, #64	@ 0x40
c0de48c8:	461d      	mov	r5, r3
c0de48ca:	4614      	mov	r4, r2
c0de48cc:	f001 fbf1 	bl	c0de60b2 <OUTLINED_FUNCTION_2>
c0de48d0:	9808      	ldr	r0, [sp, #32]
c0de48d2:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de48d4:	9807      	ldr	r0, [sp, #28]
c0de48d6:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de48d8:	9906      	ldr	r1, [sp, #24]
c0de48da:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de48de:	6471      	str	r1, [r6, #68]	@ 0x44
c0de48e0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de48e2:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de48e6:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de48ea:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de48ec:	2104      	movs	r1, #4
c0de48ee:	2800      	cmp	r0, #0
c0de48f0:	bf08      	it	eq
c0de48f2:	2103      	moveq	r1, #3
c0de48f4:	7a20      	ldrb	r0, [r4, #8]
c0de48f6:	4408      	add	r0, r1
c0de48f8:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de48fc:	2000      	movs	r0, #0
c0de48fe:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4902:	f000 b8b1 	b.w	c0de4a68 <displayReviewPage>
c0de4906:	bf00      	nop
c0de4908:	00000724 	.word	0x00000724

c0de490c <nbgl_useCaseAdvancedReview>:
c0de490c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4910:	b088      	sub	sp, #32
c0de4912:	4688      	mov	r8, r1
c0de4914:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4918:	4615      	mov	r5, r2
c0de491a:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de491e:	4604      	mov	r4, r0
c0de4920:	f1ba 0f00 	cmp.w	sl, #0
c0de4924:	d039      	beq.n	c0de499a <nbgl_useCaseAdvancedReview+0x8e>
c0de4926:	f8da 6000 	ldr.w	r6, [sl]
c0de492a:	b92e      	cbnz	r6, c0de4938 <nbgl_useCaseAdvancedReview+0x2c>
c0de492c:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4930:	b910      	cbnz	r0, c0de4938 <nbgl_useCaseAdvancedReview+0x2c>
c0de4932:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4936:	b380      	cbz	r0, c0de499a <nbgl_useCaseAdvancedReview+0x8e>
c0de4938:	4822      	ldr	r0, [pc, #136]	@ (c0de49c4 <nbgl_useCaseAdvancedReview+0xb8>)
c0de493a:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de493e:	2128      	movs	r1, #40	@ 0x28
c0de4940:	9605      	str	r6, [sp, #20]
c0de4942:	461f      	mov	r7, r3
c0de4944:	4616      	mov	r6, r2
c0de4946:	eb09 0400 	add.w	r4, r9, r0
c0de494a:	4620      	mov	r0, r4
c0de494c:	f002 fe1e 	bl	c0de758c <__aeabi_memclr>
c0de4950:	491c      	ldr	r1, [pc, #112]	@ (c0de49c4 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4952:	2002      	movs	r0, #2
c0de4954:	46b4      	mov	ip, r6
c0de4956:	462b      	mov	r3, r5
c0de4958:	f809 0001 	strb.w	r0, [r9, r1]
c0de495c:	9905      	ldr	r1, [sp, #20]
c0de495e:	2040      	movs	r0, #64	@ 0x40
c0de4960:	2908      	cmp	r1, #8
c0de4962:	bf08      	it	eq
c0de4964:	2080      	moveq	r0, #128	@ 0x80
c0de4966:	9906      	ldr	r1, [sp, #24]
c0de4968:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de496c:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4970:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4974:	9e07      	ldr	r6, [sp, #28]
c0de4976:	4301      	orrs	r1, r0
c0de4978:	9807      	ldr	r0, [sp, #28]
c0de497a:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de497e:	6220      	str	r0, [r4, #32]
c0de4980:	f89a 0000 	ldrb.w	r0, [sl]
c0de4984:	f010 0f16 	tst.w	r0, #22
c0de4988:	d102      	bne.n	c0de4990 <nbgl_useCaseAdvancedReview+0x84>
c0de498a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de498e:	b188      	cbz	r0, c0de49b4 <nbgl_useCaseAdvancedReview+0xa8>
c0de4990:	b008      	add	sp, #32
c0de4992:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4996:	f000 b817 	b.w	c0de49c8 <displayInitialWarning>
c0de499a:	e9cd 3200 	strd	r3, r2, [sp]
c0de499e:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de49a2:	2002      	movs	r0, #2
c0de49a4:	4621      	mov	r1, r4
c0de49a6:	4642      	mov	r2, r8
c0de49a8:	462b      	mov	r3, r5
c0de49aa:	f7ff ff87 	bl	c0de48bc <useCaseReview>
c0de49ae:	b008      	add	sp, #32
c0de49b0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de49b4:	2002      	movs	r0, #2
c0de49b6:	4642      	mov	r2, r8
c0de49b8:	463d      	mov	r5, r7
c0de49ba:	e9cd 7c00 	strd	r7, ip, [sp]
c0de49be:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de49c2:	e7f2      	b.n	c0de49aa <nbgl_useCaseAdvancedReview+0x9e>
c0de49c4:	00000724 	.word	0x00000724

c0de49c8 <displayInitialWarning>:
c0de49c8:	4803      	ldr	r0, [pc, #12]	@ (c0de49d8 <displayInitialWarning+0x10>)
c0de49ca:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de49ce:	4448      	add	r0, r9
c0de49d0:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de49d2:	f000 bfeb 	b.w	c0de59ac <displayWarningStep>
c0de49d6:	bf00      	nop
c0de49d8:	00000724 	.word	0x00000724

c0de49dc <nbgl_useCaseReviewBlindSigning>:
c0de49dc:	b5b0      	push	{r4, r5, r7, lr}
c0de49de:	b086      	sub	sp, #24
c0de49e0:	4d06      	ldr	r5, [pc, #24]	@ (c0de49fc <nbgl_useCaseReviewBlindSigning+0x20>)
c0de49e2:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de49e4:	447d      	add	r5, pc
c0de49e6:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de49ea:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de49ec:	9401      	str	r4, [sp, #4]
c0de49ee:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de49f0:	9400      	str	r4, [sp, #0]
c0de49f2:	f7ff ff8b 	bl	c0de490c <nbgl_useCaseAdvancedReview>
c0de49f6:	b006      	add	sp, #24
c0de49f8:	bdb0      	pop	{r4, r5, r7, pc}
c0de49fa:	bf00      	nop
c0de49fc:	0000400c 	.word	0x0000400c

c0de4a00 <nbgl_useCaseAddressReview>:
c0de4a00:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4a04:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4a64 <nbgl_useCaseAddressReview+0x64>
c0de4a08:	460c      	mov	r4, r1
c0de4a0a:	4607      	mov	r7, r0
c0de4a0c:	2140      	movs	r1, #64	@ 0x40
c0de4a0e:	469a      	mov	sl, r3
c0de4a10:	4616      	mov	r6, r2
c0de4a12:	eb09 0508 	add.w	r5, r9, r8
c0de4a16:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4a1a:	f002 fdb7 	bl	c0de758c <__aeabi_memclr>
c0de4a1e:	2004      	movs	r0, #4
c0de4a20:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4a22:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4a26:	9808      	ldr	r0, [sp, #32]
c0de4a28:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4a2c:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4a2e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4a30:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4a32:	2105      	movs	r1, #5
c0de4a34:	2800      	cmp	r0, #0
c0de4a36:	bf08      	it	eq
c0de4a38:	2104      	moveq	r1, #4
c0de4a3a:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4a3e:	b15c      	cbz	r4, c0de4a58 <nbgl_useCaseAddressReview+0x58>
c0de4a40:	4620      	mov	r0, r4
c0de4a42:	eb09 0508 	add.w	r5, r9, r8
c0de4a46:	f002 fa95 	bl	c0de6f74 <pic>
c0de4a4a:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4a4c:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4a50:	7a21      	ldrb	r1, [r4, #8]
c0de4a52:	4408      	add	r0, r1
c0de4a54:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4a58:	2000      	movs	r0, #0
c0de4a5a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4a5e:	f000 b803 	b.w	c0de4a68 <displayReviewPage>
c0de4a62:	bf00      	nop
c0de4a64:	00000724 	.word	0x00000724

c0de4a68 <displayReviewPage>:
c0de4a68:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4a6a:	b08b      	sub	sp, #44	@ 0x2c
c0de4a6c:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4be4 <displayReviewPage+0x17c>)
c0de4a6e:	4604      	mov	r4, r0
c0de4a70:	2000      	movs	r0, #0
c0de4a72:	2201      	movs	r2, #1
c0de4a74:	2702      	movs	r7, #2
c0de4a76:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4a7a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4a7e:	eb09 0306 	add.w	r3, r9, r6
c0de4a82:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4a84:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4a86:	2800      	cmp	r0, #0
c0de4a88:	bf08      	it	eq
c0de4a8a:	22ff      	moveq	r2, #255	@ 0xff
c0de4a8c:	bf08      	it	eq
c0de4a8e:	2701      	moveq	r7, #1
c0de4a90:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4a94:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4a98:	1e9d      	subs	r5, r3, #2
c0de4a9a:	b2ed      	uxtb	r5, r5
c0de4a9c:	42a9      	cmp	r1, r5
c0de4a9e:	da06      	bge.n	c0de4aae <displayReviewPage+0x46>
c0de4aa0:	42b9      	cmp	r1, r7
c0de4aa2:	da0b      	bge.n	c0de4abc <displayReviewPage+0x54>
c0de4aa4:	2900      	cmp	r1, #0
c0de4aa6:	d041      	beq.n	c0de4b2c <displayReviewPage+0xc4>
c0de4aa8:	428a      	cmp	r2, r1
c0de4aaa:	d044      	beq.n	c0de4b36 <displayReviewPage+0xce>
c0de4aac:	e044      	b.n	c0de4b38 <displayReviewPage+0xd0>
c0de4aae:	d110      	bne.n	c0de4ad2 <displayReviewPage+0x6a>
c0de4ab0:	a908      	add	r1, sp, #32
c0de4ab2:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4ab4:	2001      	movs	r0, #1
c0de4ab6:	f000 ffe1 	bl	c0de5a7c <getLastPageInfo>
c0de4aba:	e03d      	b.n	c0de4b38 <displayReviewPage+0xd0>
c0de4abc:	eb09 0006 	add.w	r0, r9, r6
c0de4ac0:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4ac2:	b18d      	cbz	r5, c0de4ae8 <displayReviewPage+0x80>
c0de4ac4:	42b9      	cmp	r1, r7
c0de4ac6:	d10f      	bne.n	c0de4ae8 <displayReviewPage+0x80>
c0de4ac8:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4aca:	4847      	ldr	r0, [pc, #284]	@ (c0de4be8 <displayReviewPage+0x180>)
c0de4acc:	4478      	add	r0, pc
c0de4ace:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4ad0:	e033      	b.n	c0de4b3a <displayReviewPage+0xd2>
c0de4ad2:	1e58      	subs	r0, r3, #1
c0de4ad4:	b2c0      	uxtb	r0, r0
c0de4ad6:	4281      	cmp	r1, r0
c0de4ad8:	d12e      	bne.n	c0de4b38 <displayReviewPage+0xd0>
c0de4ada:	a908      	add	r1, sp, #32
c0de4adc:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4ade:	2000      	movs	r0, #0
c0de4ae0:	2500      	movs	r5, #0
c0de4ae2:	f000 ffcb 	bl	c0de5a7c <getLastPageInfo>
c0de4ae6:	e028      	b.n	c0de4b3a <displayReviewPage+0xd2>
c0de4ae8:	eb09 0006 	add.w	r0, r9, r6
c0de4aec:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4af0:	06d2      	lsls	r2, r2, #27
c0de4af2:	d535      	bpl.n	c0de4b60 <displayReviewPage+0xf8>
c0de4af4:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4af8:	bb90      	cbnz	r0, c0de4b60 <displayReviewPage+0xf8>
c0de4afa:	42b9      	cmp	r1, r7
c0de4afc:	dc05      	bgt.n	c0de4b0a <displayReviewPage+0xa2>
c0de4afe:	eb09 0006 	add.w	r0, r9, r6
c0de4b02:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4b06:	2808      	cmp	r0, #8
c0de4b08:	d12a      	bne.n	c0de4b60 <displayReviewPage+0xf8>
c0de4b0a:	2000      	movs	r0, #0
c0de4b0c:	9006      	str	r0, [sp, #24]
c0de4b0e:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4b12:	eb09 0006 	add.w	r0, r9, r6
c0de4b16:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4b1a:	f004 0008 	and.w	r0, r4, #8
c0de4b1e:	2a01      	cmp	r2, #1
c0de4b20:	d001      	beq.n	c0de4b26 <displayReviewPage+0xbe>
c0de4b22:	2901      	cmp	r1, #1
c0de4b24:	db43      	blt.n	c0de4bae <displayReviewPage+0x146>
c0de4b26:	f040 0003 	orr.w	r0, r0, #3
c0de4b2a:	e042      	b.n	c0de4bb2 <displayReviewPage+0x14a>
c0de4b2c:	eb09 0006 	add.w	r0, r9, r6
c0de4b30:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4b34:	9108      	str	r1, [sp, #32]
c0de4b36:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4b38:	2500      	movs	r5, #0
c0de4b3a:	2000      	movs	r0, #0
c0de4b3c:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4b3e:	9908      	ldr	r1, [sp, #32]
c0de4b40:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4bfc <displayReviewPage+0x194>)
c0de4b42:	b2c0      	uxtb	r0, r0
c0de4b44:	2300      	movs	r3, #0
c0de4b46:	9002      	str	r0, [sp, #8]
c0de4b48:	4620      	mov	r0, r4
c0de4b4a:	447e      	add	r6, pc
c0de4b4c:	e9cd 6300 	strd	r6, r3, [sp]
c0de4b50:	462b      	mov	r3, r5
c0de4b52:	f000 f875 	bl	c0de4c40 <drawStep>
c0de4b56:	b00b      	add	sp, #44	@ 0x2c
c0de4b58:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4b5c:	f001 bfff 	b.w	c0de6b5e <nbgl_refresh>
c0de4b60:	2200      	movs	r2, #0
c0de4b62:	eb09 0006 	add.w	r0, r9, r6
c0de4b66:	1bcf      	subs	r7, r1, r7
c0de4b68:	f10d 0c0c 	add.w	ip, sp, #12
c0de4b6c:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4b70:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4b74:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4b76:	ab08      	add	r3, sp, #32
c0de4b78:	aa07      	add	r2, sp, #28
c0de4b7a:	2d00      	cmp	r5, #0
c0de4b7c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4b80:	bf18      	it	ne
c0de4b82:	3f01      	subne	r7, #1
c0de4b84:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4b86:	b2f9      	uxtb	r1, r7
c0de4b88:	ab09      	add	r3, sp, #36	@ 0x24
c0de4b8a:	f000 fcb7 	bl	c0de54fc <getPairData>
c0de4b8e:	9807      	ldr	r0, [sp, #28]
c0de4b90:	b140      	cbz	r0, c0de4ba4 <displayReviewPage+0x13c>
c0de4b92:	eb09 0006 	add.w	r0, r9, r6
c0de4b96:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4b9a:	4917      	ldr	r1, [pc, #92]	@ (c0de4bf8 <displayReviewPage+0x190>)
c0de4b9c:	4479      	add	r1, pc
c0de4b9e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4ba0:	2001      	movs	r0, #1
c0de4ba2:	e002      	b.n	c0de4baa <displayReviewPage+0x142>
c0de4ba4:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4ba8:	0040      	lsls	r0, r0, #1
c0de4baa:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4bac:	e7c6      	b.n	c0de4b3c <displayReviewPage+0xd4>
c0de4bae:	f040 0001 	orr.w	r0, r0, #1
c0de4bb2:	490e      	ldr	r1, [pc, #56]	@ (c0de4bec <displayReviewPage+0x184>)
c0de4bb4:	2200      	movs	r2, #0
c0de4bb6:	4479      	add	r1, pc
c0de4bb8:	9103      	str	r1, [sp, #12]
c0de4bba:	490d      	ldr	r1, [pc, #52]	@ (c0de4bf0 <displayReviewPage+0x188>)
c0de4bbc:	4479      	add	r1, pc
c0de4bbe:	9105      	str	r1, [sp, #20]
c0de4bc0:	2100      	movs	r1, #0
c0de4bc2:	9100      	str	r1, [sp, #0]
c0de4bc4:	490b      	ldr	r1, [pc, #44]	@ (c0de4bf4 <displayReviewPage+0x18c>)
c0de4bc6:	ab03      	add	r3, sp, #12
c0de4bc8:	4479      	add	r1, pc
c0de4bca:	f7ff fbd5 	bl	c0de4378 <nbgl_stepDrawCenteredInfo>
c0de4bce:	eb09 0406 	add.w	r4, r9, r6
c0de4bd2:	f001 ffc4 	bl	c0de6b5e <nbgl_refresh>
c0de4bd6:	2001      	movs	r0, #1
c0de4bd8:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4bdc:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4be0:	b00b      	add	sp, #44	@ 0x2c
c0de4be2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4be4:	00000724 	.word	0x00000724
c0de4be8:	00003027 	.word	0x00003027
c0de4bec:	00002d0b 	.word	0x00002d0b
c0de4bf0:	00002b1a 	.word	0x00002b1a
c0de4bf4:	000010bd 	.word	0x000010bd
c0de4bf8:	000011a1 	.word	0x000011a1
c0de4bfc:	00001267 	.word	0x00001267

c0de4c00 <nbgl_useCaseStatus>:
c0de4c00:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4c02:	4605      	mov	r5, r0
c0de4c04:	480c      	ldr	r0, [pc, #48]	@ (c0de4c38 <nbgl_useCaseStatus+0x38>)
c0de4c06:	2140      	movs	r1, #64	@ 0x40
c0de4c08:	4614      	mov	r4, r2
c0de4c0a:	f001 fa52 	bl	c0de60b2 <OUTLINED_FUNCTION_2>
c0de4c0e:	2009      	movs	r0, #9
c0de4c10:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4c12:	462a      	mov	r2, r5
c0de4c14:	2300      	movs	r3, #0
c0de4c16:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4c1a:	2001      	movs	r0, #1
c0de4c1c:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4c20:	2000      	movs	r0, #0
c0de4c22:	4906      	ldr	r1, [pc, #24]	@ (c0de4c3c <nbgl_useCaseStatus+0x3c>)
c0de4c24:	9002      	str	r0, [sp, #8]
c0de4c26:	4479      	add	r1, pc
c0de4c28:	e9cd 1000 	strd	r1, r0, [sp]
c0de4c2c:	2040      	movs	r0, #64	@ 0x40
c0de4c2e:	2100      	movs	r1, #0
c0de4c30:	f000 f806 	bl	c0de4c40 <drawStep>
c0de4c34:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4c36:	bf00      	nop
c0de4c38:	00000724 	.word	0x00000724
c0de4c3c:	0000019f 	.word	0x0000019f

c0de4c40 <drawStep>:
c0de4c40:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4c44:	b09a      	sub	sp, #104	@ 0x68
c0de4c46:	4688      	mov	r8, r1
c0de4c48:	4604      	mov	r4, r0
c0de4c4a:	a80c      	add	r0, sp, #48	@ 0x30
c0de4c4c:	2138      	movs	r1, #56	@ 0x38
c0de4c4e:	461d      	mov	r5, r3
c0de4c50:	4616      	mov	r6, r2
c0de4c52:	f002 fc9b 	bl	c0de758c <__aeabi_memclr>
c0de4c56:	2700      	movs	r7, #0
c0de4c58:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4c5c:	4856      	ldr	r0, [pc, #344]	@ (c0de4db8 <drawStep+0x178>)
c0de4c5e:	4478      	add	r0, pc
c0de4c60:	f002 f988 	bl	c0de6f74 <pic>
c0de4c64:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de4db4 <drawStep+0x174>
c0de4c68:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4c6c:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4c6e:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4c72:	eb09 000b 	add.w	r0, r9, fp
c0de4c76:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4c7a:	2802      	cmp	r0, #2
c0de4c7c:	d30b      	bcc.n	c0de4c96 <drawStep+0x56>
c0de4c7e:	eb09 010b 	add.w	r1, r9, fp
c0de4c82:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4c86:	b129      	cbz	r1, c0de4c94 <drawStep+0x54>
c0de4c88:	3801      	subs	r0, #1
c0de4c8a:	2703      	movs	r7, #3
c0de4c8c:	4288      	cmp	r0, r1
c0de4c8e:	bf08      	it	eq
c0de4c90:	2702      	moveq	r7, #2
c0de4c92:	e000      	b.n	c0de4c96 <drawStep+0x56>
c0de4c94:	2701      	movs	r7, #1
c0de4c96:	eb09 000b 	add.w	r0, r9, fp
c0de4c9a:	ea47 0204 	orr.w	r2, r7, r4
c0de4c9e:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4ca2:	4614      	mov	r4, r2
c0de4ca4:	2901      	cmp	r1, #1
c0de4ca6:	bf88      	it	hi
c0de4ca8:	f044 0402 	orrhi.w	r4, r4, #2
c0de4cac:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4cae:	2900      	cmp	r1, #0
c0de4cb0:	bf08      	it	eq
c0de4cb2:	4614      	moveq	r4, r2
c0de4cb4:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4cb8:	2806      	cmp	r0, #6
c0de4cba:	f040 0108 	orr.w	r1, r0, #8
c0de4cbe:	bf18      	it	ne
c0de4cc0:	4614      	movne	r4, r2
c0de4cc2:	2909      	cmp	r1, #9
c0de4cc4:	bf0c      	ite	eq
c0de4cc6:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4cca:	f04f 0a00 	movne.w	sl, #0
c0de4cce:	280a      	cmp	r0, #10
c0de4cd0:	d105      	bne.n	c0de4cde <drawStep+0x9e>
c0de4cd2:	eb09 000b 	add.w	r0, r9, fp
c0de4cd6:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4cd8:	b108      	cbz	r0, c0de4cde <drawStep+0x9e>
c0de4cda:	f7ff fc73 	bl	c0de45c4 <nbgl_stepRelease>
c0de4cde:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4ce0:	b1b6      	cbz	r6, c0de4d10 <drawStep+0xd0>
c0de4ce2:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4ce4:	f1b8 0f00 	cmp.w	r8, #0
c0de4ce8:	d12c      	bne.n	c0de4d44 <drawStep+0x104>
c0de4cea:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4cec:	2802      	cmp	r0, #2
c0de4cee:	d029      	beq.n	c0de4d44 <drawStep+0x104>
c0de4cf0:	2201      	movs	r2, #1
c0de4cf2:	4633      	mov	r3, r6
c0de4cf4:	2801      	cmp	r0, #1
c0de4cf6:	bf08      	it	eq
c0de4cf8:	2202      	moveq	r2, #2
c0de4cfa:	4620      	mov	r0, r4
c0de4cfc:	2d00      	cmp	r5, #0
c0de4cfe:	bf08      	it	eq
c0de4d00:	462a      	moveq	r2, r5
c0de4d02:	e9cd 5200 	strd	r5, r2, [sp]
c0de4d06:	9702      	str	r7, [sp, #8]
c0de4d08:	4652      	mov	r2, sl
c0de4d0a:	f7ff f9ef 	bl	c0de40ec <nbgl_stepDrawText>
c0de4d0e:	e043      	b.n	c0de4d98 <drawStep+0x158>
c0de4d10:	eb09 000b 	add.w	r0, r9, fp
c0de4d14:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4d18:	a903      	add	r1, sp, #12
c0de4d1a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4d1c:	f000 fbaa 	bl	c0de5474 <getContentElemAtIdx>
c0de4d20:	b330      	cbz	r0, c0de4d70 <drawStep+0x130>
c0de4d22:	7801      	ldrb	r1, [r0, #0]
c0de4d24:	2400      	movs	r4, #0
c0de4d26:	290a      	cmp	r1, #10
c0de4d28:	d024      	beq.n	c0de4d74 <drawStep+0x134>
c0de4d2a:	2909      	cmp	r1, #9
c0de4d2c:	d135      	bne.n	c0de4d9a <drawStep+0x15a>
c0de4d2e:	f001 f9d0 	bl	c0de60d2 <OUTLINED_FUNCTION_5>
c0de4d32:	4922      	ldr	r1, [pc, #136]	@ (c0de4dbc <drawStep+0x17c>)
c0de4d34:	4479      	add	r1, pc
c0de4d36:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4d38:	7941      	ldrb	r1, [r0, #5]
c0de4d3a:	7980      	ldrb	r0, [r0, #6]
c0de4d3c:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4d40:	1c48      	adds	r0, r1, #1
c0de4d42:	e020      	b.n	c0de4d86 <drawStep+0x146>
c0de4d44:	2000      	movs	r0, #0
c0de4d46:	9603      	str	r6, [sp, #12]
c0de4d48:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4d4c:	9504      	str	r5, [sp, #16]
c0de4d4e:	4652      	mov	r2, sl
c0de4d50:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4d54:	eb09 000b 	add.w	r0, r9, fp
c0de4d58:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4d5a:	4328      	orrs	r0, r5
c0de4d5c:	bf18      	it	ne
c0de4d5e:	2001      	movne	r0, #1
c0de4d60:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4d64:	9700      	str	r7, [sp, #0]
c0de4d66:	ab03      	add	r3, sp, #12
c0de4d68:	4620      	mov	r0, r4
c0de4d6a:	f7ff fb05 	bl	c0de4378 <nbgl_stepDrawCenteredInfo>
c0de4d6e:	e013      	b.n	c0de4d98 <drawStep+0x158>
c0de4d70:	2400      	movs	r4, #0
c0de4d72:	e012      	b.n	c0de4d9a <drawStep+0x15a>
c0de4d74:	f001 f9ad 	bl	c0de60d2 <OUTLINED_FUNCTION_5>
c0de4d78:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de4d7c:	4910      	ldr	r1, [pc, #64]	@ (c0de4dc0 <drawStep+0x180>)
c0de4d7e:	7a00      	ldrb	r0, [r0, #8]
c0de4d80:	4479      	add	r1, pc
c0de4d82:	3001      	adds	r0, #1
c0de4d84:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4d86:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de4d8a:	4651      	mov	r1, sl
c0de4d8c:	463b      	mov	r3, r7
c0de4d8e:	480d      	ldr	r0, [pc, #52]	@ (c0de4dc4 <drawStep+0x184>)
c0de4d90:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4d92:	4478      	add	r0, pc
c0de4d94:	f7ff fb80 	bl	c0de4498 <nbgl_stepDrawMenuList>
c0de4d98:	4604      	mov	r4, r0
c0de4d9a:	eb09 000b 	add.w	r0, r9, fp
c0de4d9e:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4da2:	280a      	cmp	r0, #10
c0de4da4:	bf04      	itt	eq
c0de4da6:	eb09 000b 	addeq.w	r0, r9, fp
c0de4daa:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de4dac:	b01a      	add	sp, #104	@ 0x68
c0de4dae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4db2:	bf00      	nop
c0de4db4:	00000724 	.word	0x00000724
c0de4db8:	000012df 	.word	0x000012df
c0de4dbc:	00001219 	.word	0x00001219
c0de4dc0:	000011cd 	.word	0x000011cd
c0de4dc4:	0000121f 	.word	0x0000121f

c0de4dc8 <statusButtonCallback>:
c0de4dc8:	f041 0004 	orr.w	r0, r1, #4
c0de4dcc:	2804      	cmp	r0, #4
c0de4dce:	d001      	beq.n	c0de4dd4 <statusButtonCallback+0xc>
c0de4dd0:	2901      	cmp	r1, #1
c0de4dd2:	d104      	bne.n	c0de4dde <statusButtonCallback+0x16>
c0de4dd4:	4802      	ldr	r0, [pc, #8]	@ (c0de4de0 <statusButtonCallback+0x18>)
c0de4dd6:	4448      	add	r0, r9
c0de4dd8:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4dda:	b100      	cbz	r0, c0de4dde <statusButtonCallback+0x16>
c0de4ddc:	4700      	bx	r0
c0de4dde:	4770      	bx	lr
c0de4de0:	00000724 	.word	0x00000724

c0de4de4 <nbgl_useCaseReviewStatus>:
c0de4de4:	460a      	mov	r2, r1
c0de4de6:	b198      	cbz	r0, c0de4e10 <nbgl_useCaseReviewStatus+0x2c>
c0de4de8:	2801      	cmp	r0, #1
c0de4dea:	d016      	beq.n	c0de4e1a <nbgl_useCaseReviewStatus+0x36>
c0de4dec:	2802      	cmp	r0, #2
c0de4dee:	d019      	beq.n	c0de4e24 <nbgl_useCaseReviewStatus+0x40>
c0de4df0:	2803      	cmp	r0, #3
c0de4df2:	d01c      	beq.n	c0de4e2e <nbgl_useCaseReviewStatus+0x4a>
c0de4df4:	2804      	cmp	r0, #4
c0de4df6:	d01f      	beq.n	c0de4e38 <nbgl_useCaseReviewStatus+0x54>
c0de4df8:	2807      	cmp	r0, #7
c0de4dfa:	d022      	beq.n	c0de4e42 <nbgl_useCaseReviewStatus+0x5e>
c0de4dfc:	2806      	cmp	r0, #6
c0de4dfe:	d025      	beq.n	c0de4e4c <nbgl_useCaseReviewStatus+0x68>
c0de4e00:	2805      	cmp	r0, #5
c0de4e02:	bf18      	it	ne
c0de4e04:	4770      	bxne	lr
c0de4e06:	4815      	ldr	r0, [pc, #84]	@ (c0de4e5c <nbgl_useCaseReviewStatus+0x78>)
c0de4e08:	2100      	movs	r1, #0
c0de4e0a:	4478      	add	r0, pc
c0de4e0c:	f7ff bef8 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e10:	4813      	ldr	r0, [pc, #76]	@ (c0de4e60 <nbgl_useCaseReviewStatus+0x7c>)
c0de4e12:	2101      	movs	r1, #1
c0de4e14:	4478      	add	r0, pc
c0de4e16:	f7ff bef3 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e1a:	4812      	ldr	r0, [pc, #72]	@ (c0de4e64 <nbgl_useCaseReviewStatus+0x80>)
c0de4e1c:	2100      	movs	r1, #0
c0de4e1e:	4478      	add	r0, pc
c0de4e20:	f7ff beee 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e24:	4810      	ldr	r0, [pc, #64]	@ (c0de4e68 <nbgl_useCaseReviewStatus+0x84>)
c0de4e26:	2101      	movs	r1, #1
c0de4e28:	4478      	add	r0, pc
c0de4e2a:	f7ff bee9 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e2e:	480f      	ldr	r0, [pc, #60]	@ (c0de4e6c <nbgl_useCaseReviewStatus+0x88>)
c0de4e30:	2100      	movs	r1, #0
c0de4e32:	4478      	add	r0, pc
c0de4e34:	f7ff bee4 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e38:	4807      	ldr	r0, [pc, #28]	@ (c0de4e58 <nbgl_useCaseReviewStatus+0x74>)
c0de4e3a:	2101      	movs	r1, #1
c0de4e3c:	4478      	add	r0, pc
c0de4e3e:	f7ff bedf 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e42:	480c      	ldr	r0, [pc, #48]	@ (c0de4e74 <nbgl_useCaseReviewStatus+0x90>)
c0de4e44:	2100      	movs	r1, #0
c0de4e46:	4478      	add	r0, pc
c0de4e48:	f7ff beda 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e4c:	4808      	ldr	r0, [pc, #32]	@ (c0de4e70 <nbgl_useCaseReviewStatus+0x8c>)
c0de4e4e:	2101      	movs	r1, #1
c0de4e50:	4478      	add	r0, pc
c0de4e52:	f7ff bed5 	b.w	c0de4c00 <nbgl_useCaseStatus>
c0de4e56:	bf00      	nop
c0de4e58:	00002a50 	.word	0x00002a50
c0de4e5c:	00002aa4 	.word	0x00002aa4
c0de4e60:	00002b3b 	.word	0x00002b3b
c0de4e64:	00002d00 	.word	0x00002d00
c0de4e68:	00002b9a 	.word	0x00002b9a
c0de4e6c:	00002c96 	.word	0x00002c96
c0de4e70:	00002abf 	.word	0x00002abf
c0de4e74:	00002bf9 	.word	0x00002bf9

c0de4e78 <displayStreamingReviewPage>:
c0de4e78:	b570      	push	{r4, r5, r6, lr}
c0de4e7a:	b08c      	sub	sp, #48	@ 0x30
c0de4e7c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de4fe8 <displayStreamingReviewPage+0x170>)
c0de4e7e:	2100      	movs	r1, #0
c0de4e80:	4604      	mov	r4, r0
c0de4e82:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de4e86:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de4e8a:	eb09 0005 	add.w	r0, r9, r5
c0de4e8e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4e90:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4e94:	2806      	cmp	r0, #6
c0de4e96:	d015      	beq.n	c0de4ec4 <displayStreamingReviewPage+0x4c>
c0de4e98:	2805      	cmp	r0, #5
c0de4e9a:	d13d      	bne.n	c0de4f18 <displayStreamingReviewPage+0xa0>
c0de4e9c:	eb09 0205 	add.w	r2, r9, r5
c0de4ea0:	2101      	movs	r1, #1
c0de4ea2:	2302      	movs	r3, #2
c0de4ea4:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de4ea6:	2800      	cmp	r0, #0
c0de4ea8:	bf08      	it	eq
c0de4eaa:	21ff      	moveq	r1, #255	@ 0xff
c0de4eac:	bf08      	it	eq
c0de4eae:	2301      	moveq	r3, #1
c0de4eb0:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de4eb4:	4293      	cmp	r3, r2
c0de4eb6:	dd3b      	ble.n	c0de4f30 <displayStreamingReviewPage+0xb8>
c0de4eb8:	b2d3      	uxtb	r3, r2
c0de4eba:	2b00      	cmp	r3, #0
c0de4ebc:	d063      	beq.n	c0de4f86 <displayStreamingReviewPage+0x10e>
c0de4ebe:	4291      	cmp	r1, r2
c0de4ec0:	d066      	beq.n	c0de4f90 <displayStreamingReviewPage+0x118>
c0de4ec2:	e066      	b.n	c0de4f92 <displayStreamingReviewPage+0x11a>
c0de4ec4:	eb09 0005 	add.w	r0, r9, r5
c0de4ec8:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de4ecc:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4ece:	7a02      	ldrb	r2, [r0, #8]
c0de4ed0:	4291      	cmp	r1, r2
c0de4ed2:	da2d      	bge.n	c0de4f30 <displayStreamingReviewPage+0xb8>
c0de4ed4:	eb09 0205 	add.w	r2, r9, r5
c0de4ed8:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de4eda:	b3cb      	cbz	r3, c0de4f50 <displayStreamingReviewPage+0xd8>
c0de4edc:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de4ee0:	bbb2      	cbnz	r2, c0de4f50 <displayStreamingReviewPage+0xd8>
c0de4ee2:	eb09 0205 	add.w	r2, r9, r5
c0de4ee6:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de4eea:	2a01      	cmp	r2, #1
c0de4eec:	d807      	bhi.n	c0de4efe <displayStreamingReviewPage+0x86>
c0de4eee:	2900      	cmp	r1, #0
c0de4ef0:	dc05      	bgt.n	c0de4efe <displayStreamingReviewPage+0x86>
c0de4ef2:	eb09 0305 	add.w	r3, r9, r5
c0de4ef6:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de4efa:	2b08      	cmp	r3, #8
c0de4efc:	d128      	bne.n	c0de4f50 <displayStreamingReviewPage+0xd8>
c0de4efe:	2000      	movs	r0, #0
c0de4f00:	9007      	str	r0, [sp, #28]
c0de4f02:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de4f06:	f004 0008 	and.w	r0, r4, #8
c0de4f0a:	2a01      	cmp	r2, #1
c0de4f0c:	d001      	beq.n	c0de4f12 <displayStreamingReviewPage+0x9a>
c0de4f0e:	2901      	cmp	r1, #1
c0de4f10:	db50      	blt.n	c0de4fb4 <displayStreamingReviewPage+0x13c>
c0de4f12:	f040 0003 	orr.w	r0, r0, #3
c0de4f16:	e04f      	b.n	c0de4fb8 <displayStreamingReviewPage+0x140>
c0de4f18:	eb09 0005 	add.w	r0, r9, r5
c0de4f1c:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4f20:	b180      	cbz	r0, c0de4f44 <displayStreamingReviewPage+0xcc>
c0de4f22:	a909      	add	r1, sp, #36	@ 0x24
c0de4f24:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de4f26:	2000      	movs	r0, #0
c0de4f28:	2500      	movs	r5, #0
c0de4f2a:	f000 fda7 	bl	c0de5a7c <getLastPageInfo>
c0de4f2e:	e031      	b.n	c0de4f94 <displayStreamingReviewPage+0x11c>
c0de4f30:	eb09 0005 	add.w	r0, r9, r5
c0de4f34:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de4f36:	2900      	cmp	r1, #0
c0de4f38:	d053      	beq.n	c0de4fe2 <displayStreamingReviewPage+0x16a>
c0de4f3a:	2001      	movs	r0, #1
c0de4f3c:	b00c      	add	sp, #48	@ 0x30
c0de4f3e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4f42:	4708      	bx	r1
c0de4f44:	a909      	add	r1, sp, #36	@ 0x24
c0de4f46:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de4f48:	2001      	movs	r0, #1
c0de4f4a:	f000 fd97 	bl	c0de5a7c <getLastPageInfo>
c0de4f4e:	e020      	b.n	c0de4f92 <displayStreamingReviewPage+0x11a>
c0de4f50:	2300      	movs	r3, #0
c0de4f52:	eb09 0205 	add.w	r2, r9, r5
c0de4f56:	b2c9      	uxtb	r1, r1
c0de4f58:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de4f5c:	f88d 300f 	strb.w	r3, [sp, #15]
c0de4f60:	ab09      	add	r3, sp, #36	@ 0x24
c0de4f62:	ad08      	add	r5, sp, #32
c0de4f64:	f10d 020f 	add.w	r2, sp, #15
c0de4f68:	e9cd 5300 	strd	r5, r3, [sp]
c0de4f6c:	9202      	str	r2, [sp, #8]
c0de4f6e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de4f70:	ab0a      	add	r3, sp, #40	@ 0x28
c0de4f72:	f000 fac3 	bl	c0de54fc <getPairData>
c0de4f76:	9808      	ldr	r0, [sp, #32]
c0de4f78:	2800      	cmp	r0, #0
c0de4f7a:	bf12      	itee	ne
c0de4f7c:	2501      	movne	r5, #1
c0de4f7e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de4f82:	0045      	lsleq	r5, r0, #1
c0de4f84:	e006      	b.n	c0de4f94 <displayStreamingReviewPage+0x11c>
c0de4f86:	eb09 0005 	add.w	r0, r9, r5
c0de4f8a:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4f8e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de4f90:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de4f92:	2500      	movs	r5, #0
c0de4f94:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de4f96:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de4f9a:	4e17      	ldr	r6, [pc, #92]	@ (c0de4ff8 <displayStreamingReviewPage+0x180>)
c0de4f9c:	b2e8      	uxtb	r0, r5
c0de4f9e:	2500      	movs	r5, #0
c0de4fa0:	9002      	str	r0, [sp, #8]
c0de4fa2:	4620      	mov	r0, r4
c0de4fa4:	447e      	add	r6, pc
c0de4fa6:	f001 f897 	bl	c0de60d8 <OUTLINED_FUNCTION_6>
c0de4faa:	b00c      	add	sp, #48	@ 0x30
c0de4fac:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4fb0:	f001 bdd5 	b.w	c0de6b5e <nbgl_refresh>
c0de4fb4:	f040 0001 	orr.w	r0, r0, #1
c0de4fb8:	490c      	ldr	r1, [pc, #48]	@ (c0de4fec <displayStreamingReviewPage+0x174>)
c0de4fba:	2200      	movs	r2, #0
c0de4fbc:	4479      	add	r1, pc
c0de4fbe:	9104      	str	r1, [sp, #16]
c0de4fc0:	490b      	ldr	r1, [pc, #44]	@ (c0de4ff0 <displayStreamingReviewPage+0x178>)
c0de4fc2:	4479      	add	r1, pc
c0de4fc4:	9106      	str	r1, [sp, #24]
c0de4fc6:	2100      	movs	r1, #0
c0de4fc8:	9100      	str	r1, [sp, #0]
c0de4fca:	490a      	ldr	r1, [pc, #40]	@ (c0de4ff4 <displayStreamingReviewPage+0x17c>)
c0de4fcc:	ab04      	add	r3, sp, #16
c0de4fce:	4479      	add	r1, pc
c0de4fd0:	f7ff f9d2 	bl	c0de4378 <nbgl_stepDrawCenteredInfo>
c0de4fd4:	eb09 0405 	add.w	r4, r9, r5
c0de4fd8:	f001 fdc1 	bl	c0de6b5e <nbgl_refresh>
c0de4fdc:	2001      	movs	r0, #1
c0de4fde:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4fe2:	b00c      	add	sp, #48	@ 0x30
c0de4fe4:	bd70      	pop	{r4, r5, r6, pc}
c0de4fe6:	bf00      	nop
c0de4fe8:	00000724 	.word	0x00000724
c0de4fec:	00002905 	.word	0x00002905
c0de4ff0:	00002714 	.word	0x00002714
c0de4ff4:	00000cb7 	.word	0x00000cb7
c0de4ff8:	00001079 	.word	0x00001079

c0de4ffc <nbgl_useCaseSpinner>:
c0de4ffc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de4ffe:	4604      	mov	r4, r0
c0de5000:	480b      	ldr	r0, [pc, #44]	@ (c0de5030 <nbgl_useCaseSpinner+0x34>)
c0de5002:	2140      	movs	r1, #64	@ 0x40
c0de5004:	f001 f85b 	bl	c0de60be <OUTLINED_FUNCTION_3>
c0de5008:	2001      	movs	r0, #1
c0de500a:	4622      	mov	r2, r4
c0de500c:	2300      	movs	r3, #0
c0de500e:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de5012:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de5016:	2000      	movs	r0, #0
c0de5018:	e9cd 0000 	strd	r0, r0, [sp]
c0de501c:	9002      	str	r0, [sp, #8]
c0de501e:	2000      	movs	r0, #0
c0de5020:	4904      	ldr	r1, [pc, #16]	@ (c0de5034 <nbgl_useCaseSpinner+0x38>)
c0de5022:	4479      	add	r1, pc
c0de5024:	f7ff fe0c 	bl	c0de4c40 <drawStep>
c0de5028:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de502c:	f001 bd97 	b.w	c0de6b5e <nbgl_refresh>
c0de5030:	00000724 	.word	0x00000724
c0de5034:	000027ab 	.word	0x000027ab

c0de5038 <nbgl_useCaseChoice>:
c0de5038:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de503c:	4607      	mov	r7, r0
c0de503e:	480b      	ldr	r0, [pc, #44]	@ (c0de506c <nbgl_useCaseChoice+0x34>)
c0de5040:	f001 f822 	bl	c0de6088 <OUTLINED_FUNCTION_0>
c0de5044:	9807      	ldr	r0, [sp, #28]
c0de5046:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de5048:	9806      	ldr	r0, [sp, #24]
c0de504a:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de504e:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de5052:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de5054:	2008      	movs	r0, #8
c0de5056:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de505a:	2004      	movs	r0, #4
c0de505c:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de5060:	2000      	movs	r0, #0
c0de5062:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5066:	f000 b803 	b.w	c0de5070 <displayChoicePage>
c0de506a:	bf00      	nop
c0de506c:	00000724 	.word	0x00000724

c0de5070 <displayChoicePage>:
c0de5070:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5072:	4b28      	ldr	r3, [pc, #160]	@ (c0de5114 <displayChoicePage+0xa4>)
c0de5074:	2200      	movs	r2, #0
c0de5076:	eb09 0103 	add.w	r1, r9, r3
c0de507a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de507c:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de5080:	b179      	cbz	r1, c0de50a2 <displayChoicePage+0x32>
c0de5082:	2902      	cmp	r1, #2
c0de5084:	d021      	beq.n	c0de50ca <displayChoicePage+0x5a>
c0de5086:	2901      	cmp	r1, #1
c0de5088:	d10f      	bne.n	c0de50aa <displayChoicePage+0x3a>
c0de508a:	eb09 0103 	add.w	r1, r9, r3
c0de508e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de5090:	b1a1      	cbz	r1, c0de50bc <displayChoicePage+0x4c>
c0de5092:	eb09 0203 	add.w	r2, r9, r3
c0de5096:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de5098:	b182      	cbz	r2, c0de50bc <displayChoicePage+0x4c>
c0de509a:	eb09 0103 	add.w	r1, r9, r3
c0de509e:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de50a0:	e029      	b.n	c0de50f6 <displayChoicePage+0x86>
c0de50a2:	eb09 0103 	add.w	r1, r9, r3
c0de50a6:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de50a8:	e01d      	b.n	c0de50e6 <displayChoicePage+0x76>
c0de50aa:	4a1d      	ldr	r2, [pc, #116]	@ (c0de5120 <displayChoicePage+0xb0>)
c0de50ac:	eb09 0103 	add.w	r1, r9, r3
c0de50b0:	447a      	add	r2, pc
c0de50b2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de50b4:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de50b6:	491b      	ldr	r1, [pc, #108]	@ (c0de5124 <displayChoicePage+0xb4>)
c0de50b8:	4479      	add	r1, pc
c0de50ba:	e018      	b.n	c0de50ee <displayChoicePage+0x7e>
c0de50bc:	0702      	lsls	r2, r0, #28
c0de50be:	d40d      	bmi.n	c0de50dc <displayChoicePage+0x6c>
c0de50c0:	eb09 0103 	add.w	r1, r9, r3
c0de50c4:	2202      	movs	r2, #2
c0de50c6:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de50ca:	4a13      	ldr	r2, [pc, #76]	@ (c0de5118 <displayChoicePage+0xa8>)
c0de50cc:	eb09 0103 	add.w	r1, r9, r3
c0de50d0:	447a      	add	r2, pc
c0de50d2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de50d4:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de50d6:	4911      	ldr	r1, [pc, #68]	@ (c0de511c <displayChoicePage+0xac>)
c0de50d8:	4479      	add	r1, pc
c0de50da:	e008      	b.n	c0de50ee <displayChoicePage+0x7e>
c0de50dc:	eb09 0203 	add.w	r2, r9, r3
c0de50e0:	2400      	movs	r4, #0
c0de50e2:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de50e6:	eb09 0203 	add.w	r2, r9, r3
c0de50ea:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de50ec:	b109      	cbz	r1, c0de50f2 <displayChoicePage+0x82>
c0de50ee:	2300      	movs	r3, #0
c0de50f0:	e003      	b.n	c0de50fa <displayChoicePage+0x8a>
c0de50f2:	eb09 0103 	add.w	r1, r9, r3
c0de50f6:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de50f8:	2100      	movs	r1, #0
c0de50fa:	4d0b      	ldr	r5, [pc, #44]	@ (c0de5128 <displayChoicePage+0xb8>)
c0de50fc:	2400      	movs	r4, #0
c0de50fe:	9402      	str	r4, [sp, #8]
c0de5100:	447d      	add	r5, pc
c0de5102:	e9cd 5400 	strd	r5, r4, [sp]
c0de5106:	f7ff fd9b 	bl	c0de4c40 <drawStep>
c0de510a:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de510e:	f001 bd26 	b.w	c0de6b5e <nbgl_refresh>
c0de5112:	bf00      	nop
c0de5114:	00000724 	.word	0x00000724
c0de5118:	00000f71 	.word	0x00000f71
c0de511c:	00002732 	.word	0x00002732
c0de5120:	00000fa5 	.word	0x00000fa5
c0de5124:	000026d6 	.word	0x000026d6
c0de5128:	00000f69 	.word	0x00000f69

c0de512c <getContentAtIdx>:
c0de512c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de512e:	b087      	sub	sp, #28
c0de5130:	460d      	mov	r5, r1
c0de5132:	4606      	mov	r6, r0
c0de5134:	a801      	add	r0, sp, #4
c0de5136:	2118      	movs	r1, #24
c0de5138:	4614      	mov	r4, r2
c0de513a:	f002 fa27 	bl	c0de758c <__aeabi_memclr>
c0de513e:	2d00      	cmp	r5, #0
c0de5140:	d428      	bmi.n	c0de5194 <getContentAtIdx+0x68>
c0de5142:	7a30      	ldrb	r0, [r6, #8]
c0de5144:	4285      	cmp	r5, r0
c0de5146:	da25      	bge.n	c0de5194 <getContentAtIdx+0x68>
c0de5148:	7830      	ldrb	r0, [r6, #0]
c0de514a:	b338      	cbz	r0, c0de519c <getContentAtIdx+0x70>
c0de514c:	b314      	cbz	r4, c0de5194 <getContentAtIdx+0x68>
c0de514e:	4620      	mov	r0, r4
c0de5150:	2138      	movs	r1, #56	@ 0x38
c0de5152:	f002 fa1b 	bl	c0de758c <__aeabi_memclr>
c0de5156:	4821      	ldr	r0, [pc, #132]	@ (c0de51dc <getContentAtIdx+0xb0>)
c0de5158:	4448      	add	r0, r9
c0de515a:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de515c:	b342      	cbz	r2, c0de51b0 <getContentAtIdx+0x84>
c0de515e:	b2e8      	uxtb	r0, r5
c0de5160:	ad01      	add	r5, sp, #4
c0de5162:	4629      	mov	r1, r5
c0de5164:	4790      	blx	r2
c0de5166:	b1a8      	cbz	r0, c0de5194 <getContentAtIdx+0x68>
c0de5168:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de516c:	280a      	cmp	r0, #10
c0de516e:	7020      	strb	r0, [r4, #0]
c0de5170:	d028      	beq.n	c0de51c4 <getContentAtIdx+0x98>
c0de5172:	2803      	cmp	r0, #3
c0de5174:	d008      	beq.n	c0de5188 <getContentAtIdx+0x5c>
c0de5176:	2804      	cmp	r0, #4
c0de5178:	d02a      	beq.n	c0de51d0 <getContentAtIdx+0xa4>
c0de517a:	2807      	cmp	r0, #7
c0de517c:	d01d      	beq.n	c0de51ba <getContentAtIdx+0x8e>
c0de517e:	2808      	cmp	r0, #8
c0de5180:	d002      	beq.n	c0de5188 <getContentAtIdx+0x5c>
c0de5182:	2809      	cmp	r0, #9
c0de5184:	d019      	beq.n	c0de51ba <getContentAtIdx+0x8e>
c0de5186:	b928      	cbnz	r0, c0de5194 <getContentAtIdx+0x68>
c0de5188:	1d28      	adds	r0, r5, #4
c0de518a:	1d21      	adds	r1, r4, #4
c0de518c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5190:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5192:	e000      	b.n	c0de5196 <getContentAtIdx+0x6a>
c0de5194:	2400      	movs	r4, #0
c0de5196:	4620      	mov	r0, r4
c0de5198:	b007      	add	sp, #28
c0de519a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de519c:	6871      	ldr	r1, [r6, #4]
c0de519e:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de51a2:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de51a6:	b007      	add	sp, #28
c0de51a8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de51ac:	f001 bee2 	b.w	c0de6f74 <pic>
c0de51b0:	6872      	ldr	r2, [r6, #4]
c0de51b2:	b2e8      	uxtb	r0, r5
c0de51b4:	4621      	mov	r1, r4
c0de51b6:	4790      	blx	r2
c0de51b8:	e7ed      	b.n	c0de5196 <getContentAtIdx+0x6a>
c0de51ba:	9802      	ldr	r0, [sp, #8]
c0de51bc:	9903      	ldr	r1, [sp, #12]
c0de51be:	6060      	str	r0, [r4, #4]
c0de51c0:	60a1      	str	r1, [r4, #8]
c0de51c2:	e7e8      	b.n	c0de5196 <getContentAtIdx+0x6a>
c0de51c4:	1d28      	adds	r0, r5, #4
c0de51c6:	1d21      	adds	r1, r4, #4
c0de51c8:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de51cc:	c12c      	stmia	r1!, {r2, r3, r5}
c0de51ce:	e7e2      	b.n	c0de5196 <getContentAtIdx+0x6a>
c0de51d0:	1d28      	adds	r0, r5, #4
c0de51d2:	1d21      	adds	r1, r4, #4
c0de51d4:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de51d8:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de51da:	e7dc      	b.n	c0de5196 <getContentAtIdx+0x6a>
c0de51dc:	00000724 	.word	0x00000724

c0de51e0 <getContentNbElement>:
c0de51e0:	7802      	ldrb	r2, [r0, #0]
c0de51e2:	2101      	movs	r1, #1
c0de51e4:	b1a2      	cbz	r2, c0de5210 <getContentNbElement+0x30>
c0de51e6:	2a03      	cmp	r2, #3
c0de51e8:	d012      	beq.n	c0de5210 <getContentNbElement+0x30>
c0de51ea:	2a0a      	cmp	r2, #10
c0de51ec:	d007      	beq.n	c0de51fe <getContentNbElement+0x1e>
c0de51ee:	2a07      	cmp	r2, #7
c0de51f0:	d007      	beq.n	c0de5202 <getContentNbElement+0x22>
c0de51f2:	2a08      	cmp	r2, #8
c0de51f4:	d007      	beq.n	c0de5206 <getContentNbElement+0x26>
c0de51f6:	2a09      	cmp	r2, #9
c0de51f8:	d007      	beq.n	c0de520a <getContentNbElement+0x2a>
c0de51fa:	2a04      	cmp	r2, #4
c0de51fc:	d107      	bne.n	c0de520e <getContentNbElement+0x2e>
c0de51fe:	7b01      	ldrb	r1, [r0, #12]
c0de5200:	e006      	b.n	c0de5210 <getContentNbElement+0x30>
c0de5202:	7a01      	ldrb	r1, [r0, #8]
c0de5204:	e004      	b.n	c0de5210 <getContentNbElement+0x30>
c0de5206:	7c01      	ldrb	r1, [r0, #16]
c0de5208:	e002      	b.n	c0de5210 <getContentNbElement+0x30>
c0de520a:	7a41      	ldrb	r1, [r0, #9]
c0de520c:	e000      	b.n	c0de5210 <getContentNbElement+0x30>
c0de520e:	2100      	movs	r1, #0
c0de5210:	4608      	mov	r0, r1
c0de5212:	4770      	bx	lr

c0de5214 <displayContent>:
c0de5214:	b570      	push	{r4, r5, r6, lr}
c0de5216:	b08a      	sub	sp, #40	@ 0x28
c0de5218:	460d      	mov	r5, r1
c0de521a:	4604      	mov	r4, r0
c0de521c:	a804      	add	r0, sp, #16
c0de521e:	2118      	movs	r1, #24
c0de5220:	f002 f9b4 	bl	c0de758c <__aeabi_memclr>
c0de5224:	4820      	ldr	r0, [pc, #128]	@ (c0de52a8 <displayContent+0x94>)
c0de5226:	f000 ff39 	bl	c0de609c <OUTLINED_FUNCTION_1>
c0de522a:	dd14      	ble.n	c0de5256 <displayContent+0x42>
c0de522c:	a904      	add	r1, sp, #16
c0de522e:	4628      	mov	r0, r5
c0de5230:	f000 f846 	bl	c0de52c0 <getContentPage>
c0de5234:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5238:	b318      	cbz	r0, c0de5282 <displayContent+0x6e>
c0de523a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de523e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5242:	481e      	ldr	r0, [pc, #120]	@ (c0de52bc <displayContent+0xa8>)
c0de5244:	4478      	add	r0, pc
c0de5246:	2b00      	cmp	r3, #0
c0de5248:	9000      	str	r0, [sp, #0]
c0de524a:	4620      	mov	r0, r4
c0de524c:	bf18      	it	ne
c0de524e:	2301      	movne	r3, #1
c0de5250:	f000 f8d8 	bl	c0de5404 <drawSwitchStep>
c0de5254:	e023      	b.n	c0de529e <displayContent+0x8a>
c0de5256:	4448      	add	r0, r9
c0de5258:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de525a:	6341      	str	r1, [r0, #52]	@ 0x34
c0de525c:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de525e:	4a13      	ldr	r2, [pc, #76]	@ (c0de52ac <displayContent+0x98>)
c0de5260:	2900      	cmp	r1, #0
c0de5262:	447a      	add	r2, pc
c0de5264:	bf18      	it	ne
c0de5266:	460a      	movne	r2, r1
c0de5268:	9205      	str	r2, [sp, #20]
c0de526a:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de526e:	4910      	ldr	r1, [pc, #64]	@ (c0de52b0 <displayContent+0x9c>)
c0de5270:	4a10      	ldr	r2, [pc, #64]	@ (c0de52b4 <displayContent+0xa0>)
c0de5272:	2803      	cmp	r0, #3
c0de5274:	447a      	add	r2, pc
c0de5276:	4479      	add	r1, pc
c0de5278:	bf08      	it	eq
c0de527a:	460a      	moveq	r2, r1
c0de527c:	9207      	str	r2, [sp, #28]
c0de527e:	2000      	movs	r0, #0
c0de5280:	e002      	b.n	c0de5288 <displayContent+0x74>
c0de5282:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5286:	0040      	lsls	r0, r0, #1
c0de5288:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de528c:	9907      	ldr	r1, [sp, #28]
c0de528e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de52b8 <displayContent+0xa4>)
c0de5290:	b2c0      	uxtb	r0, r0
c0de5292:	2500      	movs	r5, #0
c0de5294:	9002      	str	r0, [sp, #8]
c0de5296:	4620      	mov	r0, r4
c0de5298:	447e      	add	r6, pc
c0de529a:	f000 ff1d 	bl	c0de60d8 <OUTLINED_FUNCTION_6>
c0de529e:	f001 fc5e 	bl	c0de6b5e <nbgl_refresh>
c0de52a2:	b00a      	add	sp, #40	@ 0x28
c0de52a4:	bd70      	pop	{r4, r5, r6, pc}
c0de52a6:	bf00      	nop
c0de52a8:	00000724 	.word	0x00000724
c0de52ac:	00002899 	.word	0x00002899
c0de52b0:	00002518 	.word	0x00002518
c0de52b4:	000024d4 	.word	0x000024d4
c0de52b8:	000001b9 	.word	0x000001b9
c0de52bc:	0000020d 	.word	0x0000020d

c0de52c0 <getContentPage>:
c0de52c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de52c2:	b093      	sub	sp, #76	@ 0x4c
c0de52c4:	4606      	mov	r6, r0
c0de52c6:	2000      	movs	r0, #0
c0de52c8:	460c      	mov	r4, r1
c0de52ca:	2138      	movs	r1, #56	@ 0x38
c0de52cc:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de52d0:	ad04      	add	r5, sp, #16
c0de52d2:	4628      	mov	r0, r5
c0de52d4:	f002 f95a 	bl	c0de758c <__aeabi_memclr>
c0de52d8:	4f47      	ldr	r7, [pc, #284]	@ (c0de53f8 <getContentPage+0x138>)
c0de52da:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de52de:	462a      	mov	r2, r5
c0de52e0:	eb09 0007 	add.w	r0, r9, r7
c0de52e4:	f000 fef1 	bl	c0de60ca <OUTLINED_FUNCTION_4>
c0de52e8:	2800      	cmp	r0, #0
c0de52ea:	d07a      	beq.n	c0de53e2 <getContentPage+0x122>
c0de52ec:	4605      	mov	r5, r0
c0de52ee:	7800      	ldrb	r0, [r0, #0]
c0de52f0:	280a      	cmp	r0, #10
c0de52f2:	d011      	beq.n	c0de5318 <getContentPage+0x58>
c0de52f4:	2803      	cmp	r0, #3
c0de52f6:	d02c      	beq.n	c0de5352 <getContentPage+0x92>
c0de52f8:	2804      	cmp	r0, #4
c0de52fa:	d035      	beq.n	c0de5368 <getContentPage+0xa8>
c0de52fc:	2807      	cmp	r0, #7
c0de52fe:	d045      	beq.n	c0de538c <getContentPage+0xcc>
c0de5300:	2808      	cmp	r0, #8
c0de5302:	d060      	beq.n	c0de53c6 <getContentPage+0x106>
c0de5304:	2809      	cmp	r0, #9
c0de5306:	d007      	beq.n	c0de5318 <getContentPage+0x58>
c0de5308:	2800      	cmp	r0, #0
c0de530a:	d16a      	bne.n	c0de53e2 <getContentPage+0x122>
c0de530c:	6868      	ldr	r0, [r5, #4]
c0de530e:	f001 fe31 	bl	c0de6f74 <pic>
c0de5312:	6060      	str	r0, [r4, #4]
c0de5314:	68a8      	ldr	r0, [r5, #8]
c0de5316:	e019      	b.n	c0de534c <getContentPage+0x8c>
c0de5318:	1d28      	adds	r0, r5, #4
c0de531a:	eb09 0607 	add.w	r6, r9, r7
c0de531e:	f001 fe29 	bl	c0de6f74 <pic>
c0de5322:	6800      	ldr	r0, [r0, #0]
c0de5324:	f001 fe26 	bl	c0de6f74 <pic>
c0de5328:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de532c:	4605      	mov	r5, r0
c0de532e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de5330:	2910      	cmp	r1, #16
c0de5332:	d100      	bne.n	c0de5336 <getContentPage+0x76>
c0de5334:	b918      	cbnz	r0, c0de533e <getContentPage+0x7e>
c0de5336:	290f      	cmp	r1, #15
c0de5338:	d155      	bne.n	c0de53e6 <getContentPage+0x126>
c0de533a:	2800      	cmp	r0, #0
c0de533c:	d053      	beq.n	c0de53e6 <getContentPage+0x126>
c0de533e:	f001 fe19 	bl	c0de6f74 <pic>
c0de5342:	6060      	str	r0, [r4, #4]
c0de5344:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5348:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de534c:	f001 fe12 	bl	c0de6f74 <pic>
c0de5350:	e046      	b.n	c0de53e0 <getContentPage+0x120>
c0de5352:	68a8      	ldr	r0, [r5, #8]
c0de5354:	4e29      	ldr	r6, [pc, #164]	@ (c0de53fc <getContentPage+0x13c>)
c0de5356:	447e      	add	r6, pc
c0de5358:	47b0      	blx	r6
c0de535a:	60e0      	str	r0, [r4, #12]
c0de535c:	6868      	ldr	r0, [r5, #4]
c0de535e:	47b0      	blx	r6
c0de5360:	6060      	str	r0, [r4, #4]
c0de5362:	68e8      	ldr	r0, [r5, #12]
c0de5364:	47b0      	blx	r6
c0de5366:	e03b      	b.n	c0de53e0 <getContentPage+0x120>
c0de5368:	f104 0015 	add.w	r0, r4, #21
c0de536c:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5370:	f104 020c 	add.w	r2, r4, #12
c0de5374:	f104 0310 	add.w	r3, r4, #16
c0de5378:	e9cd 3200 	strd	r3, r2, [sp]
c0de537c:	9002      	str	r0, [sp, #8]
c0de537e:	1d28      	adds	r0, r5, #4
c0de5380:	1d22      	adds	r2, r4, #4
c0de5382:	f104 0308 	add.w	r3, r4, #8
c0de5386:	f000 f8b9 	bl	c0de54fc <getPairData>
c0de538a:	e02a      	b.n	c0de53e2 <getContentPage+0x122>
c0de538c:	2001      	movs	r0, #1
c0de538e:	444f      	add	r7, r9
c0de5390:	7020      	strb	r0, [r4, #0]
c0de5392:	6868      	ldr	r0, [r5, #4]
c0de5394:	f001 fdee 	bl	c0de6f74 <pic>
c0de5398:	4919      	ldr	r1, [pc, #100]	@ (c0de5400 <getContentPage+0x140>)
c0de539a:	4479      	add	r1, pc
c0de539c:	6379      	str	r1, [r7, #52]	@ 0x34
c0de539e:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de53a2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de53a6:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de53aa:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de53ae:	6062      	str	r2, [r4, #4]
c0de53b0:	6841      	ldr	r1, [r0, #4]
c0de53b2:	60a1      	str	r1, [r4, #8]
c0de53b4:	7a00      	ldrb	r0, [r0, #8]
c0de53b6:	1e41      	subs	r1, r0, #1
c0de53b8:	bf18      	it	ne
c0de53ba:	2101      	movne	r1, #1
c0de53bc:	2e00      	cmp	r6, #0
c0de53be:	bf08      	it	eq
c0de53c0:	4601      	moveq	r1, r0
c0de53c2:	7521      	strb	r1, [r4, #20]
c0de53c4:	e00d      	b.n	c0de53e2 <getContentPage+0x122>
c0de53c6:	6868      	ldr	r0, [r5, #4]
c0de53c8:	f001 fdd4 	bl	c0de6f74 <pic>
c0de53cc:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de53d0:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de53d4:	6060      	str	r0, [r4, #4]
c0de53d6:	68a8      	ldr	r0, [r5, #8]
c0de53d8:	f001 fdcc 	bl	c0de6f74 <pic>
c0de53dc:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de53e0:	60a0      	str	r0, [r4, #8]
c0de53e2:	b013      	add	sp, #76	@ 0x4c
c0de53e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de53e6:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de53ea:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de53ee:	f001 fdc1 	bl	c0de6f74 <pic>
c0de53f2:	6060      	str	r0, [r4, #4]
c0de53f4:	e7f5      	b.n	c0de53e2 <getContentPage+0x122>
c0de53f6:	bf00      	nop
c0de53f8:	00000724 	.word	0x00000724
c0de53fc:	00001c1b 	.word	0x00001c1b
c0de5400:	000001a7 	.word	0x000001a7

c0de5404 <drawSwitchStep>:
c0de5404:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5406:	b085      	sub	sp, #20
c0de5408:	4c11      	ldr	r4, [pc, #68]	@ (c0de5450 <drawSwitchStep+0x4c>)
c0de540a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de540e:	2600      	movs	r6, #0
c0de5410:	eb09 0504 	add.w	r5, r9, r4
c0de5414:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de5418:	2500      	movs	r5, #0
c0de541a:	2f02      	cmp	r7, #2
c0de541c:	d30a      	bcc.n	c0de5434 <drawSwitchStep+0x30>
c0de541e:	444c      	add	r4, r9
c0de5420:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de5424:	b12c      	cbz	r4, c0de5432 <drawSwitchStep+0x2e>
c0de5426:	3f01      	subs	r7, #1
c0de5428:	2603      	movs	r6, #3
c0de542a:	42a7      	cmp	r7, r4
c0de542c:	bf08      	it	eq
c0de542e:	2602      	moveq	r6, #2
c0de5430:	e000      	b.n	c0de5434 <drawSwitchStep+0x30>
c0de5432:	2601      	movs	r6, #1
c0de5434:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5438:	f88d 3010 	strb.w	r3, [sp, #16]
c0de543c:	9500      	str	r5, [sp, #0]
c0de543e:	4330      	orrs	r0, r6
c0de5440:	ab02      	add	r3, sp, #8
c0de5442:	4661      	mov	r1, ip
c0de5444:	2200      	movs	r2, #0
c0de5446:	f7ff f87f 	bl	c0de4548 <nbgl_stepDrawSwitch>
c0de544a:	b005      	add	sp, #20
c0de544c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de544e:	bf00      	nop
c0de5450:	00000724 	.word	0x00000724

c0de5454 <contentCallback>:
c0de5454:	b5e0      	push	{r5, r6, r7, lr}
c0de5456:	4608      	mov	r0, r1
c0de5458:	f10d 0107 	add.w	r1, sp, #7
c0de545c:	f000 f928 	bl	c0de56b0 <buttonGenericCallback>
c0de5460:	b130      	cbz	r0, c0de5470 <contentCallback+0x1c>
c0de5462:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5466:	2100      	movs	r1, #0
c0de5468:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de546c:	f7ff bed2 	b.w	c0de5214 <displayContent>
c0de5470:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5474 <getContentElemAtIdx>:
c0de5474:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5478:	4c1e      	ldr	r4, [pc, #120]	@ (c0de54f4 <getContentElemAtIdx+0x80>)
c0de547a:	4606      	mov	r6, r0
c0de547c:	2700      	movs	r7, #0
c0de547e:	eb09 0004 	add.w	r0, r9, r4
c0de5482:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de5486:	2b10      	cmp	r3, #16
c0de5488:	d830      	bhi.n	c0de54ec <getContentElemAtIdx+0x78>
c0de548a:	4693      	mov	fp, r2
c0de548c:	2201      	movs	r2, #1
c0de548e:	9101      	str	r1, [sp, #4]
c0de5490:	fa02 f303 	lsl.w	r3, r2, r3
c0de5494:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5498:	d004      	beq.n	c0de54a4 <getContentElemAtIdx+0x30>
c0de549a:	eb09 0004 	add.w	r0, r9, r4
c0de549e:	46a2      	mov	sl, r4
c0de54a0:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de54a2:	e005      	b.n	c0de54b0 <getContentElemAtIdx+0x3c>
c0de54a4:	4a14      	ldr	r2, [pc, #80]	@ (c0de54f8 <getContentElemAtIdx+0x84>)
c0de54a6:	4213      	tst	r3, r2
c0de54a8:	d020      	beq.n	c0de54ec <getContentElemAtIdx+0x78>
c0de54aa:	46a2      	mov	sl, r4
c0de54ac:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de54b0:	2700      	movs	r7, #0
c0de54b2:	2000      	movs	r0, #0
c0de54b4:	f04f 0800 	mov.w	r8, #0
c0de54b8:	4605      	mov	r5, r0
c0de54ba:	7a20      	ldrb	r0, [r4, #8]
c0de54bc:	4580      	cmp	r8, r0
c0de54be:	d215      	bcs.n	c0de54ec <getContentElemAtIdx+0x78>
c0de54c0:	fa4f f188 	sxtb.w	r1, r8
c0de54c4:	4620      	mov	r0, r4
c0de54c6:	465a      	mov	r2, fp
c0de54c8:	f7ff fe30 	bl	c0de512c <getContentAtIdx>
c0de54cc:	4607      	mov	r7, r0
c0de54ce:	f7ff fe87 	bl	c0de51e0 <getContentNbElement>
c0de54d2:	b2e9      	uxtb	r1, r5
c0de54d4:	f108 0801 	add.w	r8, r8, #1
c0de54d8:	4408      	add	r0, r1
c0de54da:	42b0      	cmp	r0, r6
c0de54dc:	d9ec      	bls.n	c0de54b8 <getContentElemAtIdx+0x44>
c0de54de:	eb09 000a 	add.w	r0, r9, sl
c0de54e2:	9901      	ldr	r1, [sp, #4]
c0de54e4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de54e8:	1b40      	subs	r0, r0, r5
c0de54ea:	7008      	strb	r0, [r1, #0]
c0de54ec:	4638      	mov	r0, r7
c0de54ee:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de54f2:	bf00      	nop
c0de54f4:	00000724 	.word	0x00000724
c0de54f8:	00010008 	.word	0x00010008

c0de54fc <getPairData>:
c0de54fc:	b5b0      	push	{r4, r5, r7, lr}
c0de54fe:	4615      	mov	r5, r2
c0de5500:	6802      	ldr	r2, [r0, #0]
c0de5502:	461c      	mov	r4, r3
c0de5504:	b112      	cbz	r2, c0de550c <getPairData+0x10>
c0de5506:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de550a:	e002      	b.n	c0de5512 <getPairData+0x16>
c0de550c:	6842      	ldr	r2, [r0, #4]
c0de550e:	4608      	mov	r0, r1
c0de5510:	4790      	blx	r2
c0de5512:	f001 fd2f 	bl	c0de6f74 <pic>
c0de5516:	6802      	ldr	r2, [r0, #0]
c0de5518:	9904      	ldr	r1, [sp, #16]
c0de551a:	602a      	str	r2, [r5, #0]
c0de551c:	6842      	ldr	r2, [r0, #4]
c0de551e:	6022      	str	r2, [r4, #0]
c0de5520:	7b02      	ldrb	r2, [r0, #12]
c0de5522:	0753      	lsls	r3, r2, #29
c0de5524:	d403      	bmi.n	c0de552e <getPairData+0x32>
c0de5526:	0792      	lsls	r2, r2, #30
c0de5528:	d404      	bmi.n	c0de5534 <getPairData+0x38>
c0de552a:	2000      	movs	r0, #0
c0de552c:	e000      	b.n	c0de5530 <getPairData+0x34>
c0de552e:	6880      	ldr	r0, [r0, #8]
c0de5530:	6008      	str	r0, [r1, #0]
c0de5532:	bdb0      	pop	{r4, r5, r7, pc}
c0de5534:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5538:	2301      	movs	r3, #1
c0de553a:	700b      	strb	r3, [r1, #0]
c0de553c:	6880      	ldr	r0, [r0, #8]
c0de553e:	6010      	str	r0, [r2, #0]
c0de5540:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5544 <onSwitchAction>:
c0de5544:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5546:	b08f      	sub	sp, #60	@ 0x3c
c0de5548:	ac01      	add	r4, sp, #4
c0de554a:	2138      	movs	r1, #56	@ 0x38
c0de554c:	4620      	mov	r0, r4
c0de554e:	f002 f81d 	bl	c0de758c <__aeabi_memclr>
c0de5552:	4e26      	ldr	r6, [pc, #152]	@ (c0de55ec <onSwitchAction+0xa8>)
c0de5554:	f10d 0103 	add.w	r1, sp, #3
c0de5558:	4622      	mov	r2, r4
c0de555a:	eb09 0006 	add.w	r0, r9, r6
c0de555e:	f000 fdb4 	bl	c0de60ca <OUTLINED_FUNCTION_4>
c0de5562:	2800      	cmp	r0, #0
c0de5564:	d040      	beq.n	c0de55e8 <onSwitchAction+0xa4>
c0de5566:	4604      	mov	r4, r0
c0de5568:	7800      	ldrb	r0, [r0, #0]
c0de556a:	2807      	cmp	r0, #7
c0de556c:	d13c      	bne.n	c0de55e8 <onSwitchAction+0xa4>
c0de556e:	6860      	ldr	r0, [r4, #4]
c0de5570:	eb09 0706 	add.w	r7, r9, r6
c0de5574:	f001 fcfe 	bl	c0de6f74 <pic>
c0de5578:	4605      	mov	r5, r0
c0de557a:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de557e:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5582:	2810      	cmp	r0, #16
c0de5584:	d811      	bhi.n	c0de55aa <onSwitchAction+0x66>
c0de5586:	2101      	movs	r1, #1
c0de5588:	fa01 f000 	lsl.w	r0, r1, r0
c0de558c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5590:	d004      	beq.n	c0de559c <onSwitchAction+0x58>
c0de5592:	2000      	movs	r0, #0
c0de5594:	2101      	movs	r1, #1
c0de5596:	f000 f82d 	bl	c0de55f4 <displaySettingsPage>
c0de559a:	e006      	b.n	c0de55aa <onSwitchAction+0x66>
c0de559c:	4914      	ldr	r1, [pc, #80]	@ (c0de55f0 <onSwitchAction+0xac>)
c0de559e:	4208      	tst	r0, r1
c0de55a0:	d003      	beq.n	c0de55aa <onSwitchAction+0x66>
c0de55a2:	2000      	movs	r0, #0
c0de55a4:	2101      	movs	r1, #1
c0de55a6:	f7ff fe35 	bl	c0de5214 <displayContent>
c0de55aa:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de55ac:	b188      	cbz	r0, c0de55d2 <onSwitchAction+0x8e>
c0de55ae:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de55b2:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de55b6:	f001 fcdd 	bl	c0de6f74 <pic>
c0de55ba:	7a21      	ldrb	r1, [r4, #8]
c0de55bc:	eb09 0206 	add.w	r2, r9, r6
c0de55c0:	4603      	mov	r3, r0
c0de55c2:	7a60      	ldrb	r0, [r4, #9]
c0de55c4:	3901      	subs	r1, #1
c0de55c6:	bf18      	it	ne
c0de55c8:	2101      	movne	r1, #1
c0de55ca:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de55ce:	4798      	blx	r3
c0de55d0:	e00a      	b.n	c0de55e8 <onSwitchAction+0xa4>
c0de55d2:	eb09 0006 	add.w	r0, r9, r6
c0de55d6:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de55d8:	b132      	cbz	r2, c0de55e8 <onSwitchAction+0xa4>
c0de55da:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de55de:	2100      	movs	r1, #0
c0de55e0:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de55e4:	7a40      	ldrb	r0, [r0, #9]
c0de55e6:	4790      	blx	r2
c0de55e8:	b00f      	add	sp, #60	@ 0x3c
c0de55ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de55ec:	00000724 	.word	0x00000724
c0de55f0:	00010008 	.word	0x00010008

c0de55f4 <displaySettingsPage>:
c0de55f4:	b5b0      	push	{r4, r5, r7, lr}
c0de55f6:	b08a      	sub	sp, #40	@ 0x28
c0de55f8:	460d      	mov	r5, r1
c0de55fa:	4604      	mov	r4, r0
c0de55fc:	a804      	add	r0, sp, #16
c0de55fe:	2118      	movs	r1, #24
c0de5600:	f001 ffc4 	bl	c0de758c <__aeabi_memclr>
c0de5604:	481c      	ldr	r0, [pc, #112]	@ (c0de5678 <displaySettingsPage+0x84>)
c0de5606:	f000 fd49 	bl	c0de609c <OUTLINED_FUNCTION_1>
c0de560a:	dd14      	ble.n	c0de5636 <displaySettingsPage+0x42>
c0de560c:	a904      	add	r1, sp, #16
c0de560e:	4628      	mov	r0, r5
c0de5610:	f7ff fe56 	bl	c0de52c0 <getContentPage>
c0de5614:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5618:	b1e8      	cbz	r0, c0de5656 <displaySettingsPage+0x62>
c0de561a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de561e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5622:	481a      	ldr	r0, [pc, #104]	@ (c0de568c <displaySettingsPage+0x98>)
c0de5624:	4478      	add	r0, pc
c0de5626:	2b00      	cmp	r3, #0
c0de5628:	9000      	str	r0, [sp, #0]
c0de562a:	4620      	mov	r0, r4
c0de562c:	bf18      	it	ne
c0de562e:	2301      	movne	r3, #1
c0de5630:	f7ff fee8 	bl	c0de5404 <drawSwitchStep>
c0de5634:	e01b      	b.n	c0de566e <displaySettingsPage+0x7a>
c0de5636:	4448      	add	r0, r9
c0de5638:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de563c:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de563e:	4b0f      	ldr	r3, [pc, #60]	@ (c0de567c <displaySettingsPage+0x88>)
c0de5640:	447b      	add	r3, pc
c0de5642:	290f      	cmp	r1, #15
c0de5644:	bf08      	it	eq
c0de5646:	4613      	moveq	r3, r2
c0de5648:	6343      	str	r3, [r0, #52]	@ 0x34
c0de564a:	480d      	ldr	r0, [pc, #52]	@ (c0de5680 <displaySettingsPage+0x8c>)
c0de564c:	4478      	add	r0, pc
c0de564e:	9005      	str	r0, [sp, #20]
c0de5650:	480c      	ldr	r0, [pc, #48]	@ (c0de5684 <displaySettingsPage+0x90>)
c0de5652:	4478      	add	r0, pc
c0de5654:	9007      	str	r0, [sp, #28]
c0de5656:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de565a:	9907      	ldr	r1, [sp, #28]
c0de565c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5688 <displaySettingsPage+0x94>)
c0de565e:	2000      	movs	r0, #0
c0de5660:	9002      	str	r0, [sp, #8]
c0de5662:	447d      	add	r5, pc
c0de5664:	e9cd 5000 	strd	r5, r0, [sp]
c0de5668:	4620      	mov	r0, r4
c0de566a:	f7ff fae9 	bl	c0de4c40 <drawStep>
c0de566e:	f001 fa76 	bl	c0de6b5e <nbgl_refresh>
c0de5672:	b00a      	add	sp, #40	@ 0x28
c0de5674:	bdb0      	pop	{r4, r5, r7, pc}
c0de5676:	bf00      	nop
c0de5678:	00000724 	.word	0x00000724
c0de567c:	fffff1cd 	.word	0xfffff1cd
c0de5680:	000024af 	.word	0x000024af
c0de5684:	000020f6 	.word	0x000020f6
c0de5688:	0000002b 	.word	0x0000002b
c0de568c:	00000069 	.word	0x00000069

c0de5690 <settingsCallback>:
c0de5690:	b5e0      	push	{r5, r6, r7, lr}
c0de5692:	4608      	mov	r0, r1
c0de5694:	f10d 0107 	add.w	r1, sp, #7
c0de5698:	f000 f80a 	bl	c0de56b0 <buttonGenericCallback>
c0de569c:	b130      	cbz	r0, c0de56ac <settingsCallback+0x1c>
c0de569e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de56a2:	2100      	movs	r1, #0
c0de56a4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de56a8:	f7ff bfa4 	b.w	c0de55f4 <displaySettingsPage>
c0de56ac:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de56b0 <buttonGenericCallback>:
c0de56b0:	b5b0      	push	{r4, r5, r7, lr}
c0de56b2:	b090      	sub	sp, #64	@ 0x40
c0de56b4:	460c      	mov	r4, r1
c0de56b6:	4605      	mov	r5, r0
c0de56b8:	a801      	add	r0, sp, #4
c0de56ba:	2138      	movs	r1, #56	@ 0x38
c0de56bc:	f001 ff66 	bl	c0de758c <__aeabi_memclr>
c0de56c0:	2d04      	cmp	r5, #4
c0de56c2:	d00d      	beq.n	c0de56e0 <buttonGenericCallback+0x30>
c0de56c4:	2d01      	cmp	r5, #1
c0de56c6:	d012      	beq.n	c0de56ee <buttonGenericCallback+0x3e>
c0de56c8:	2d00      	cmp	r5, #0
c0de56ca:	d17c      	bne.n	c0de57c6 <buttonGenericCallback+0x116>
c0de56cc:	483f      	ldr	r0, [pc, #252]	@ (c0de57cc <buttonGenericCallback+0x11c>)
c0de56ce:	eb09 0100 	add.w	r1, r9, r0
c0de56d2:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de56d6:	2901      	cmp	r1, #1
c0de56d8:	db1d      	blt.n	c0de5716 <buttonGenericCallback+0x66>
c0de56da:	3901      	subs	r1, #1
c0de56dc:	2008      	movs	r0, #8
c0de56de:	e013      	b.n	c0de5708 <buttonGenericCallback+0x58>
c0de56e0:	4c3a      	ldr	r4, [pc, #232]	@ (c0de57cc <buttonGenericCallback+0x11c>)
c0de56e2:	eb09 0004 	add.w	r0, r9, r4
c0de56e6:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de56e8:	b338      	cbz	r0, c0de573a <buttonGenericCallback+0x8a>
c0de56ea:	4780      	blx	r0
c0de56ec:	e06b      	b.n	c0de57c6 <buttonGenericCallback+0x116>
c0de56ee:	4837      	ldr	r0, [pc, #220]	@ (c0de57cc <buttonGenericCallback+0x11c>)
c0de56f0:	eb09 0100 	add.w	r1, r9, r0
c0de56f4:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de56f8:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de56fc:	3901      	subs	r1, #1
c0de56fe:	4281      	cmp	r1, r0
c0de5700:	dd61      	ble.n	c0de57c6 <buttonGenericCallback+0x116>
c0de5702:	b2c0      	uxtb	r0, r0
c0de5704:	1c41      	adds	r1, r0, #1
c0de5706:	2000      	movs	r0, #0
c0de5708:	4a30      	ldr	r2, [pc, #192]	@ (c0de57cc <buttonGenericCallback+0x11c>)
c0de570a:	444a      	add	r2, r9
c0de570c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de5710:	7020      	strb	r0, [r4, #0]
c0de5712:	2001      	movs	r0, #1
c0de5714:	e058      	b.n	c0de57c8 <buttonGenericCallback+0x118>
c0de5716:	eb09 0100 	add.w	r1, r9, r0
c0de571a:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de571e:	2906      	cmp	r1, #6
c0de5720:	d151      	bne.n	c0de57c6 <buttonGenericCallback+0x116>
c0de5722:	eb09 0100 	add.w	r1, r9, r0
c0de5726:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de5728:	2900      	cmp	r1, #0
c0de572a:	d04c      	beq.n	c0de57c6 <buttonGenericCallback+0x116>
c0de572c:	4448      	add	r0, r9
c0de572e:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de5732:	2801      	cmp	r0, #1
c0de5734:	d047      	beq.n	c0de57c6 <buttonGenericCallback+0x116>
c0de5736:	2008      	movs	r0, #8
c0de5738:	e7ea      	b.n	c0de5710 <buttonGenericCallback+0x60>
c0de573a:	eb09 0004 	add.w	r0, r9, r4
c0de573e:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5742:	2000      	movs	r0, #0
c0de5744:	2910      	cmp	r1, #16
c0de5746:	d83f      	bhi.n	c0de57c8 <buttonGenericCallback+0x118>
c0de5748:	2201      	movs	r2, #1
c0de574a:	fa02 f101 	lsl.w	r1, r2, r1
c0de574e:	4a20      	ldr	r2, [pc, #128]	@ (c0de57d0 <buttonGenericCallback+0x120>)
c0de5750:	4211      	tst	r1, r2
c0de5752:	d039      	beq.n	c0de57c8 <buttonGenericCallback+0x118>
c0de5754:	eb09 0004 	add.w	r0, r9, r4
c0de5758:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de575c:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5760:	aa01      	add	r2, sp, #4
c0de5762:	f7ff fe87 	bl	c0de5474 <getContentElemAtIdx>
c0de5766:	b370      	cbz	r0, c0de57c6 <buttonGenericCallback+0x116>
c0de5768:	7801      	ldrb	r1, [r0, #0]
c0de576a:	4602      	mov	r2, r0
c0de576c:	2000      	movs	r0, #0
c0de576e:	b359      	cbz	r1, c0de57c8 <buttonGenericCallback+0x118>
c0de5770:	290a      	cmp	r1, #10
c0de5772:	d009      	beq.n	c0de5788 <buttonGenericCallback+0xd8>
c0de5774:	2907      	cmp	r1, #7
c0de5776:	d00f      	beq.n	c0de5798 <buttonGenericCallback+0xe8>
c0de5778:	2909      	cmp	r1, #9
c0de577a:	d011      	beq.n	c0de57a0 <buttonGenericCallback+0xf0>
c0de577c:	2903      	cmp	r1, #3
c0de577e:	f04f 0100 	mov.w	r1, #0
c0de5782:	d112      	bne.n	c0de57aa <buttonGenericCallback+0xfa>
c0de5784:	7c10      	ldrb	r0, [r2, #16]
c0de5786:	e005      	b.n	c0de5794 <buttonGenericCallback+0xe4>
c0de5788:	eb09 0004 	add.w	r0, r9, r4
c0de578c:	6891      	ldr	r1, [r2, #8]
c0de578e:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de5792:	5c08      	ldrb	r0, [r1, r0]
c0de5794:	2100      	movs	r1, #0
c0de5796:	e008      	b.n	c0de57aa <buttonGenericCallback+0xfa>
c0de5798:	6850      	ldr	r0, [r2, #4]
c0de579a:	2100      	movs	r1, #0
c0de579c:	7a40      	ldrb	r0, [r0, #9]
c0de579e:	e004      	b.n	c0de57aa <buttonGenericCallback+0xfa>
c0de57a0:	eb09 0004 	add.w	r0, r9, r4
c0de57a4:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de57a8:	7ad0      	ldrb	r0, [r2, #11]
c0de57aa:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de57ac:	b133      	cbz	r3, c0de57bc <buttonGenericCallback+0x10c>
c0de57ae:	eb09 0104 	add.w	r1, r9, r4
c0de57b2:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de57b6:	2100      	movs	r1, #0
c0de57b8:	4798      	blx	r3
c0de57ba:	e004      	b.n	c0de57c6 <buttonGenericCallback+0x116>
c0de57bc:	eb09 0204 	add.w	r2, r9, r4
c0de57c0:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de57c2:	b102      	cbz	r2, c0de57c6 <buttonGenericCallback+0x116>
c0de57c4:	4790      	blx	r2
c0de57c6:	2000      	movs	r0, #0
c0de57c8:	b010      	add	sp, #64	@ 0x40
c0de57ca:	bdb0      	pop	{r4, r5, r7, pc}
c0de57cc:	00000724 	.word	0x00000724
c0de57d0:	0001c008 	.word	0x0001c008

c0de57d4 <displayHomePage>:
c0de57d4:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de57d8:	4680      	mov	r8, r0
c0de57da:	4832      	ldr	r0, [pc, #200]	@ (c0de58a4 <displayHomePage+0xd0>)
c0de57dc:	2200      	movs	r2, #0
c0de57de:	eb09 0100 	add.w	r1, r9, r0
c0de57e2:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de57e4:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de57e6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de57e8:	2202      	movs	r2, #2
c0de57ea:	2d00      	cmp	r5, #0
c0de57ec:	463e      	mov	r6, r7
c0de57ee:	bf08      	it	eq
c0de57f0:	2201      	moveq	r2, #1
c0de57f2:	2f00      	cmp	r7, #0
c0de57f4:	bf18      	it	ne
c0de57f6:	2601      	movne	r6, #1
c0de57f8:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de57fc:	b183      	cbz	r3, c0de5820 <displayHomePage+0x4c>
c0de57fe:	2401      	movs	r4, #1
c0de5800:	2d00      	cmp	r5, #0
c0de5802:	bf08      	it	eq
c0de5804:	24ff      	moveq	r4, #255	@ 0xff
c0de5806:	429c      	cmp	r4, r3
c0de5808:	d111      	bne.n	c0de582e <displayHomePage+0x5a>
c0de580a:	eb09 0400 	add.w	r4, r9, r0
c0de580e:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5812:	f001 fbaf 	bl	c0de6f74 <pic>
c0de5816:	4602      	mov	r2, r0
c0de5818:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de581a:	6880      	ldr	r0, [r0, #8]
c0de581c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de581e:	e004      	b.n	c0de582a <displayHomePage+0x56>
c0de5820:	eb09 0100 	add.w	r1, r9, r0
c0de5824:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de5828:	b312      	cbz	r2, c0de5870 <displayHomePage+0x9c>
c0de582a:	2300      	movs	r3, #0
c0de582c:	e02c      	b.n	c0de5888 <displayHomePage+0xb4>
c0de582e:	2f00      	cmp	r7, #0
c0de5830:	4614      	mov	r4, r2
c0de5832:	bf08      	it	eq
c0de5834:	24ff      	moveq	r4, #255	@ 0xff
c0de5836:	429c      	cmp	r4, r3
c0de5838:	d109      	bne.n	c0de584e <displayHomePage+0x7a>
c0de583a:	491c      	ldr	r1, [pc, #112]	@ (c0de58ac <displayHomePage+0xd8>)
c0de583c:	4448      	add	r0, r9
c0de583e:	2300      	movs	r3, #0
c0de5840:	4479      	add	r1, pc
c0de5842:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5844:	4d1a      	ldr	r5, [pc, #104]	@ (c0de58b0 <displayHomePage+0xdc>)
c0de5846:	4a1b      	ldr	r2, [pc, #108]	@ (c0de58b4 <displayHomePage+0xe0>)
c0de5848:	447d      	add	r5, pc
c0de584a:	447a      	add	r2, pc
c0de584c:	e01c      	b.n	c0de5888 <displayHomePage+0xb4>
c0de584e:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de5850:	4432      	add	r2, r6
c0de5852:	4448      	add	r0, r9
c0de5854:	2900      	cmp	r1, #0
c0de5856:	bf08      	it	eq
c0de5858:	22ff      	moveq	r2, #255	@ 0xff
c0de585a:	429a      	cmp	r2, r3
c0de585c:	d10d      	bne.n	c0de587a <displayHomePage+0xa6>
c0de585e:	4916      	ldr	r1, [pc, #88]	@ (c0de58b8 <displayHomePage+0xe4>)
c0de5860:	2300      	movs	r3, #0
c0de5862:	4479      	add	r1, pc
c0de5864:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5866:	4d15      	ldr	r5, [pc, #84]	@ (c0de58bc <displayHomePage+0xe8>)
c0de5868:	4a15      	ldr	r2, [pc, #84]	@ (c0de58c0 <displayHomePage+0xec>)
c0de586a:	447d      	add	r5, pc
c0de586c:	447a      	add	r2, pc
c0de586e:	e00b      	b.n	c0de5888 <displayHomePage+0xb4>
c0de5870:	4448      	add	r0, r9
c0de5872:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de5874:	4b0c      	ldr	r3, [pc, #48]	@ (c0de58a8 <displayHomePage+0xd4>)
c0de5876:	447b      	add	r3, pc
c0de5878:	e006      	b.n	c0de5888 <displayHomePage+0xb4>
c0de587a:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de587c:	2300      	movs	r3, #0
c0de587e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5880:	4d10      	ldr	r5, [pc, #64]	@ (c0de58c4 <displayHomePage+0xf0>)
c0de5882:	4a11      	ldr	r2, [pc, #68]	@ (c0de58c8 <displayHomePage+0xf4>)
c0de5884:	447d      	add	r5, pc
c0de5886:	447a      	add	r2, pc
c0de5888:	4910      	ldr	r1, [pc, #64]	@ (c0de58cc <displayHomePage+0xf8>)
c0de588a:	2000      	movs	r0, #0
c0de588c:	9002      	str	r0, [sp, #8]
c0de588e:	4479      	add	r1, pc
c0de5890:	e9cd 1000 	strd	r1, r0, [sp]
c0de5894:	4640      	mov	r0, r8
c0de5896:	4629      	mov	r1, r5
c0de5898:	f7ff f9d2 	bl	c0de4c40 <drawStep>
c0de589c:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de58a0:	f001 b95d 	b.w	c0de6b5e <nbgl_refresh>
c0de58a4:	00000724 	.word	0x00000724
c0de58a8:	00002316 	.word	0x00002316
c0de58ac:	0000008d 	.word	0x0000008d
c0de58b0:	00001f23 	.word	0x00001f23
c0de58b4:	0000221d 	.word	0x0000221d
c0de58b8:	00000073 	.word	0x00000073
c0de58bc:	00001e6c 	.word	0x00001e6c
c0de58c0:	000022c7 	.word	0x000022c7
c0de58c4:	00001e75 	.word	0x00001e75
c0de58c8:	00002313 	.word	0x00002313
c0de58cc:	0000006b 	.word	0x0000006b

c0de58d0 <startUseCaseSettings>:
c0de58d0:	2000      	movs	r0, #0
c0de58d2:	f7fe bf61 	b.w	c0de4798 <startUseCaseSettingsAtPage>
	...

c0de58d8 <startUseCaseInfo>:
c0de58d8:	4807      	ldr	r0, [pc, #28]	@ (c0de58f8 <startUseCaseInfo+0x20>)
c0de58da:	210d      	movs	r1, #13
c0de58dc:	4448      	add	r0, r9
c0de58de:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de58e2:	2100      	movs	r1, #0
c0de58e4:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de58e8:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de58ea:	7b09      	ldrb	r1, [r1, #12]
c0de58ec:	3101      	adds	r1, #1
c0de58ee:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de58f2:	2000      	movs	r0, #0
c0de58f4:	f000 b810 	b.w	c0de5918 <displayInfoPage>
c0de58f8:	00000724 	.word	0x00000724

c0de58fc <homeCallback>:
c0de58fc:	b5e0      	push	{r5, r6, r7, lr}
c0de58fe:	4608      	mov	r0, r1
c0de5900:	f10d 0107 	add.w	r1, sp, #7
c0de5904:	f7ff fed4 	bl	c0de56b0 <buttonGenericCallback>
c0de5908:	b128      	cbz	r0, c0de5916 <homeCallback+0x1a>
c0de590a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de590e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5912:	f7ff bf5f 	b.w	c0de57d4 <displayHomePage>
c0de5916:	bd8c      	pop	{r2, r3, r7, pc}

c0de5918 <displayInfoPage>:
c0de5918:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de591a:	4604      	mov	r4, r0
c0de591c:	4816      	ldr	r0, [pc, #88]	@ (c0de5978 <displayInfoPage+0x60>)
c0de591e:	f000 fbbd 	bl	c0de609c <OUTLINED_FUNCTION_1>
c0de5922:	dd11      	ble.n	c0de5948 <displayInfoPage+0x30>
c0de5924:	eb09 0700 	add.w	r7, r9, r0
c0de5928:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de592a:	6800      	ldr	r0, [r0, #0]
c0de592c:	4e13      	ldr	r6, [pc, #76]	@ (c0de597c <displayInfoPage+0x64>)
c0de592e:	447e      	add	r6, pc
c0de5930:	47b0      	blx	r6
c0de5932:	f000 fbd5 	bl	c0de60e0 <OUTLINED_FUNCTION_7>
c0de5936:	4605      	mov	r5, r0
c0de5938:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de593a:	6840      	ldr	r0, [r0, #4]
c0de593c:	47b0      	blx	r6
c0de593e:	f000 fbcf 	bl	c0de60e0 <OUTLINED_FUNCTION_7>
c0de5942:	4603      	mov	r3, r0
c0de5944:	2100      	movs	r1, #0
c0de5946:	e008      	b.n	c0de595a <displayInfoPage+0x42>
c0de5948:	490d      	ldr	r1, [pc, #52]	@ (c0de5980 <displayInfoPage+0x68>)
c0de594a:	4448      	add	r0, r9
c0de594c:	2300      	movs	r3, #0
c0de594e:	4479      	add	r1, pc
c0de5950:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5952:	490c      	ldr	r1, [pc, #48]	@ (c0de5984 <displayInfoPage+0x6c>)
c0de5954:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5988 <displayInfoPage+0x70>)
c0de5956:	4479      	add	r1, pc
c0de5958:	447d      	add	r5, pc
c0de595a:	4e0c      	ldr	r6, [pc, #48]	@ (c0de598c <displayInfoPage+0x74>)
c0de595c:	2002      	movs	r0, #2
c0de595e:	2200      	movs	r2, #0
c0de5960:	9002      	str	r0, [sp, #8]
c0de5962:	4620      	mov	r0, r4
c0de5964:	447e      	add	r6, pc
c0de5966:	e9cd 6200 	strd	r6, r2, [sp]
c0de596a:	462a      	mov	r2, r5
c0de596c:	f7ff f968 	bl	c0de4c40 <drawStep>
c0de5970:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5974:	f001 b8f3 	b.w	c0de6b5e <nbgl_refresh>
c0de5978:	00000724 	.word	0x00000724
c0de597c:	00001643 	.word	0x00001643
c0de5980:	ffffeebf 	.word	0xffffeebf
c0de5984:	00001df2 	.word	0x00001df2
c0de5988:	000021a3 	.word	0x000021a3
c0de598c:	00000029 	.word	0x00000029

c0de5990 <infoCallback>:
c0de5990:	b5e0      	push	{r5, r6, r7, lr}
c0de5992:	4608      	mov	r0, r1
c0de5994:	f10d 0107 	add.w	r1, sp, #7
c0de5998:	f7ff fe8a 	bl	c0de56b0 <buttonGenericCallback>
c0de599c:	b128      	cbz	r0, c0de59aa <infoCallback+0x1a>
c0de599e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de59a2:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de59a6:	f7ff bfb7 	b.w	c0de5918 <displayInfoPage>
c0de59aa:	bd8c      	pop	{r2, r3, r7, pc}

c0de59ac <displayWarningStep>:
c0de59ac:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de59ae:	2000      	movs	r0, #0
c0de59b0:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de59b4:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de59b8:	482b      	ldr	r0, [pc, #172]	@ (c0de5a68 <displayWarningStep+0xbc>)
c0de59ba:	eb09 0100 	add.w	r1, r9, r0
c0de59be:	69c9      	ldr	r1, [r1, #28]
c0de59c0:	680a      	ldr	r2, [r1, #0]
c0de59c2:	06d3      	lsls	r3, r2, #27
c0de59c4:	d41b      	bmi.n	c0de59fe <displayWarningStep+0x52>
c0de59c6:	2a00      	cmp	r2, #0
c0de59c8:	d145      	bne.n	c0de5a56 <displayWarningStep+0xaa>
c0de59ca:	69ca      	ldr	r2, [r1, #28]
c0de59cc:	2a00      	cmp	r2, #0
c0de59ce:	d042      	beq.n	c0de5a56 <displayWarningStep+0xaa>
c0de59d0:	eb09 0300 	add.w	r3, r9, r0
c0de59d4:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de59d8:	2b00      	cmp	r3, #0
c0de59da:	d03e      	beq.n	c0de5a5a <displayWarningStep+0xae>
c0de59dc:	4448      	add	r0, r9
c0de59de:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de59e2:	3801      	subs	r0, #1
c0de59e4:	4298      	cmp	r0, r3
c0de59e6:	d11d      	bne.n	c0de5a24 <displayWarningStep+0x78>
c0de59e8:	6948      	ldr	r0, [r1, #20]
c0de59ea:	7901      	ldrb	r1, [r0, #4]
c0de59ec:	bb99      	cbnz	r1, c0de5a56 <displayWarningStep+0xaa>
c0de59ee:	68c1      	ldr	r1, [r0, #12]
c0de59f0:	6982      	ldr	r2, [r0, #24]
c0de59f2:	6a00      	ldr	r0, [r0, #32]
c0de59f4:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de59f8:	2003      	movs	r0, #3
c0de59fa:	9104      	str	r1, [sp, #16]
c0de59fc:	e01e      	b.n	c0de5a3c <displayWarningStep+0x90>
c0de59fe:	eb09 0100 	add.w	r1, r9, r0
c0de5a02:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5a06:	b179      	cbz	r1, c0de5a28 <displayWarningStep+0x7c>
c0de5a08:	4448      	add	r0, r9
c0de5a0a:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5a0e:	3801      	subs	r0, #1
c0de5a10:	4288      	cmp	r0, r1
c0de5a12:	d107      	bne.n	c0de5a24 <displayWarningStep+0x78>
c0de5a14:	aa02      	add	r2, sp, #8
c0de5a16:	2000      	movs	r0, #0
c0de5a18:	f102 0108 	add.w	r1, r2, #8
c0de5a1c:	f000 f82e 	bl	c0de5a7c <getLastPageInfo>
c0de5a20:	200a      	movs	r0, #10
c0de5a22:	e00b      	b.n	c0de5a3c <displayWarningStep+0x90>
c0de5a24:	2000      	movs	r0, #0
c0de5a26:	e009      	b.n	c0de5a3c <displayWarningStep+0x90>
c0de5a28:	4810      	ldr	r0, [pc, #64]	@ (c0de5a6c <displayWarningStep+0xc0>)
c0de5a2a:	4478      	add	r0, pc
c0de5a2c:	9003      	str	r0, [sp, #12]
c0de5a2e:	4810      	ldr	r0, [pc, #64]	@ (c0de5a70 <displayWarningStep+0xc4>)
c0de5a30:	4478      	add	r0, pc
c0de5a32:	9002      	str	r0, [sp, #8]
c0de5a34:	480f      	ldr	r0, [pc, #60]	@ (c0de5a74 <displayWarningStep+0xc8>)
c0de5a36:	4478      	add	r0, pc
c0de5a38:	9004      	str	r0, [sp, #16]
c0de5a3a:	2001      	movs	r0, #1
c0de5a3c:	2101      	movs	r1, #1
c0de5a3e:	2200      	movs	r2, #0
c0de5a40:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5a44:	2100      	movs	r1, #0
c0de5a46:	9100      	str	r1, [sp, #0]
c0de5a48:	490b      	ldr	r1, [pc, #44]	@ (c0de5a78 <displayWarningStep+0xcc>)
c0de5a4a:	ab02      	add	r3, sp, #8
c0de5a4c:	4479      	add	r1, pc
c0de5a4e:	f7fe fc93 	bl	c0de4378 <nbgl_stepDrawCenteredInfo>
c0de5a52:	f001 f884 	bl	c0de6b5e <nbgl_refresh>
c0de5a56:	b006      	add	sp, #24
c0de5a58:	bd80      	pop	{r7, pc}
c0de5a5a:	6850      	ldr	r0, [r2, #4]
c0de5a5c:	6911      	ldr	r1, [r2, #16]
c0de5a5e:	6992      	ldr	r2, [r2, #24]
c0de5a60:	9004      	str	r0, [sp, #16]
c0de5a62:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5a66:	e7e8      	b.n	c0de5a3a <displayWarningStep+0x8e>
c0de5a68:	00000724 	.word	0x00000724
c0de5a6c:	00001f38 	.word	0x00001f38
c0de5a70:	00002065 	.word	0x00002065
c0de5a74:	00001df7 	.word	0x00001df7
c0de5a78:	00000155 	.word	0x00000155

c0de5a7c <getLastPageInfo>:
c0de5a7c:	b170      	cbz	r0, c0de5a9c <getLastPageInfo+0x20>
c0de5a7e:	4833      	ldr	r0, [pc, #204]	@ (c0de5b4c <getLastPageInfo+0xd0>)
c0de5a80:	4478      	add	r0, pc
c0de5a82:	6008      	str	r0, [r1, #0]
c0de5a84:	4830      	ldr	r0, [pc, #192]	@ (c0de5b48 <getLastPageInfo+0xcc>)
c0de5a86:	eb09 0100 	add.w	r1, r9, r0
c0de5a8a:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5a8e:	2904      	cmp	r1, #4
c0de5a90:	d113      	bne.n	c0de5aba <getLastPageInfo+0x3e>
c0de5a92:	482f      	ldr	r0, [pc, #188]	@ (c0de5b50 <getLastPageInfo+0xd4>)
c0de5a94:	492f      	ldr	r1, [pc, #188]	@ (c0de5b54 <getLastPageInfo+0xd8>)
c0de5a96:	4478      	add	r0, pc
c0de5a98:	4479      	add	r1, pc
c0de5a9a:	e04f      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5a9c:	4838      	ldr	r0, [pc, #224]	@ (c0de5b80 <getLastPageInfo+0x104>)
c0de5a9e:	4478      	add	r0, pc
c0de5aa0:	6008      	str	r0, [r1, #0]
c0de5aa2:	4829      	ldr	r0, [pc, #164]	@ (c0de5b48 <getLastPageInfo+0xcc>)
c0de5aa4:	eb09 0100 	add.w	r1, r9, r0
c0de5aa8:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5aac:	2904      	cmp	r1, #4
c0de5aae:	d10b      	bne.n	c0de5ac8 <getLastPageInfo+0x4c>
c0de5ab0:	4834      	ldr	r0, [pc, #208]	@ (c0de5b84 <getLastPageInfo+0x108>)
c0de5ab2:	4935      	ldr	r1, [pc, #212]	@ (c0de5b88 <getLastPageInfo+0x10c>)
c0de5ab4:	4478      	add	r0, pc
c0de5ab6:	4479      	add	r1, pc
c0de5ab8:	e040      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5aba:	eb09 0100 	add.w	r1, r9, r0
c0de5abe:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5ac0:	b171      	cbz	r1, c0de5ae0 <getLastPageInfo+0x64>
c0de5ac2:	4825      	ldr	r0, [pc, #148]	@ (c0de5b58 <getLastPageInfo+0xdc>)
c0de5ac4:	4478      	add	r0, pc
c0de5ac6:	e039      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5ac8:	4448      	add	r0, r9
c0de5aca:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5acc:	f010 0007 	ands.w	r0, r0, #7
c0de5ad0:	d017      	beq.n	c0de5b02 <getLastPageInfo+0x86>
c0de5ad2:	2801      	cmp	r0, #1
c0de5ad4:	d11a      	bne.n	c0de5b0c <getLastPageInfo+0x90>
c0de5ad6:	482f      	ldr	r0, [pc, #188]	@ (c0de5b94 <getLastPageInfo+0x118>)
c0de5ad8:	492f      	ldr	r1, [pc, #188]	@ (c0de5b98 <getLastPageInfo+0x11c>)
c0de5ada:	4478      	add	r0, pc
c0de5adc:	4479      	add	r1, pc
c0de5ade:	e02d      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5ae0:	4448      	add	r0, r9
c0de5ae2:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5ae4:	f000 0107 	and.w	r1, r0, #7
c0de5ae8:	2901      	cmp	r1, #1
c0de5aea:	d014      	beq.n	c0de5b16 <getLastPageInfo+0x9a>
c0de5aec:	b9e9      	cbnz	r1, c0de5b2a <getLastPageInfo+0xae>
c0de5aee:	0640      	lsls	r0, r0, #25
c0de5af0:	481a      	ldr	r0, [pc, #104]	@ (c0de5b5c <getLastPageInfo+0xe0>)
c0de5af2:	491b      	ldr	r1, [pc, #108]	@ (c0de5b60 <getLastPageInfo+0xe4>)
c0de5af4:	4478      	add	r0, pc
c0de5af6:	4479      	add	r1, pc
c0de5af8:	bf58      	it	pl
c0de5afa:	4601      	movpl	r1, r0
c0de5afc:	4819      	ldr	r0, [pc, #100]	@ (c0de5b64 <getLastPageInfo+0xe8>)
c0de5afe:	4478      	add	r0, pc
c0de5b00:	e01c      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5b02:	4822      	ldr	r0, [pc, #136]	@ (c0de5b8c <getLastPageInfo+0x110>)
c0de5b04:	4922      	ldr	r1, [pc, #136]	@ (c0de5b90 <getLastPageInfo+0x114>)
c0de5b06:	4478      	add	r0, pc
c0de5b08:	4479      	add	r1, pc
c0de5b0a:	e017      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5b0c:	4823      	ldr	r0, [pc, #140]	@ (c0de5b9c <getLastPageInfo+0x120>)
c0de5b0e:	4924      	ldr	r1, [pc, #144]	@ (c0de5ba0 <getLastPageInfo+0x124>)
c0de5b10:	4478      	add	r0, pc
c0de5b12:	4479      	add	r1, pc
c0de5b14:	e012      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5b16:	0640      	lsls	r0, r0, #25
c0de5b18:	4813      	ldr	r0, [pc, #76]	@ (c0de5b68 <getLastPageInfo+0xec>)
c0de5b1a:	4914      	ldr	r1, [pc, #80]	@ (c0de5b6c <getLastPageInfo+0xf0>)
c0de5b1c:	4478      	add	r0, pc
c0de5b1e:	4479      	add	r1, pc
c0de5b20:	bf58      	it	pl
c0de5b22:	4601      	movpl	r1, r0
c0de5b24:	4812      	ldr	r0, [pc, #72]	@ (c0de5b70 <getLastPageInfo+0xf4>)
c0de5b26:	4478      	add	r0, pc
c0de5b28:	e008      	b.n	c0de5b3c <getLastPageInfo+0xc0>
c0de5b2a:	0640      	lsls	r0, r0, #25
c0de5b2c:	4811      	ldr	r0, [pc, #68]	@ (c0de5b74 <getLastPageInfo+0xf8>)
c0de5b2e:	4912      	ldr	r1, [pc, #72]	@ (c0de5b78 <getLastPageInfo+0xfc>)
c0de5b30:	4478      	add	r0, pc
c0de5b32:	4479      	add	r1, pc
c0de5b34:	bf58      	it	pl
c0de5b36:	4601      	movpl	r1, r0
c0de5b38:	4810      	ldr	r0, [pc, #64]	@ (c0de5b7c <getLastPageInfo+0x100>)
c0de5b3a:	4478      	add	r0, pc
c0de5b3c:	6011      	str	r1, [r2, #0]
c0de5b3e:	4902      	ldr	r1, [pc, #8]	@ (c0de5b48 <getLastPageInfo+0xcc>)
c0de5b40:	4449      	add	r1, r9
c0de5b42:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5b44:	4770      	bx	lr
c0de5b46:	bf00      	nop
c0de5b48:	00000724 	.word	0x00000724
c0de5b4c:	00001d8a 	.word	0x00001d8a
c0de5b50:	0000018f 	.word	0x0000018f
c0de5b54:	0000210a 	.word	0x0000210a
c0de5b58:	00000161 	.word	0x00000161
c0de5b5c:	00001edd 	.word	0x00001edd
c0de5b60:	00001f7e 	.word	0x00001f7e
c0de5b64:	00000127 	.word	0x00000127
c0de5b68:	00001e99 	.word	0x00001e99
c0de5b6c:	00001ed7 	.word	0x00001ed7
c0de5b70:	000000ff 	.word	0x000000ff
c0de5b74:	0000200c 	.word	0x0000200c
c0de5b78:	00001f77 	.word	0x00001f77
c0de5b7c:	000000eb 	.word	0x000000eb
c0de5b80:	00001cf0 	.word	0x00001cf0
c0de5b84:	00000185 	.word	0x00000185
c0de5b88:	00001f82 	.word	0x00001f82
c0de5b8c:	00000133 	.word	0x00000133
c0de5b90:	00001eda 	.word	0x00001eda
c0de5b94:	0000015f 	.word	0x0000015f
c0de5b98:	0000206f 	.word	0x0000206f
c0de5b9c:	00000129 	.word	0x00000129
c0de5ba0:	00002048 	.word	0x00002048

c0de5ba4 <warningNavigate>:
c0de5ba4:	2904      	cmp	r1, #4
c0de5ba6:	d009      	beq.n	c0de5bbc <warningNavigate+0x18>
c0de5ba8:	2901      	cmp	r1, #1
c0de5baa:	d01f      	beq.n	c0de5bec <warningNavigate+0x48>
c0de5bac:	b9e9      	cbnz	r1, c0de5bea <warningNavigate+0x46>
c0de5bae:	481d      	ldr	r0, [pc, #116]	@ (c0de5c24 <warningNavigate+0x80>)
c0de5bb0:	4448      	add	r0, r9
c0de5bb2:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5bb6:	b368      	cbz	r0, c0de5c14 <warningNavigate+0x70>
c0de5bb8:	3801      	subs	r0, #1
c0de5bba:	e022      	b.n	c0de5c02 <warningNavigate+0x5e>
c0de5bbc:	4819      	ldr	r0, [pc, #100]	@ (c0de5c24 <warningNavigate+0x80>)
c0de5bbe:	eb09 0100 	add.w	r1, r9, r0
c0de5bc2:	69c9      	ldr	r1, [r1, #28]
c0de5bc4:	7809      	ldrb	r1, [r1, #0]
c0de5bc6:	06c9      	lsls	r1, r1, #27
c0de5bc8:	d50f      	bpl.n	c0de5bea <warningNavigate+0x46>
c0de5bca:	eb09 0100 	add.w	r1, r9, r0
c0de5bce:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5bd2:	b321      	cbz	r1, c0de5c1e <warningNavigate+0x7a>
c0de5bd4:	eb09 0200 	add.w	r2, r9, r0
c0de5bd8:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5bdc:	3a01      	subs	r2, #1
c0de5bde:	428a      	cmp	r2, r1
c0de5be0:	d103      	bne.n	c0de5bea <warningNavigate+0x46>
c0de5be2:	4448      	add	r0, r9
c0de5be4:	6a01      	ldr	r1, [r0, #32]
c0de5be6:	2000      	movs	r0, #0
c0de5be8:	4708      	bx	r1
c0de5bea:	4770      	bx	lr
c0de5bec:	480d      	ldr	r0, [pc, #52]	@ (c0de5c24 <warningNavigate+0x80>)
c0de5bee:	eb09 0200 	add.w	r2, r9, r0
c0de5bf2:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5bf6:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5bfa:	3a01      	subs	r2, #1
c0de5bfc:	428a      	cmp	r2, r1
c0de5bfe:	dd05      	ble.n	c0de5c0c <warningNavigate+0x68>
c0de5c00:	1c48      	adds	r0, r1, #1
c0de5c02:	4908      	ldr	r1, [pc, #32]	@ (c0de5c24 <warningNavigate+0x80>)
c0de5c04:	4449      	add	r1, r9
c0de5c06:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5c0a:	e003      	b.n	c0de5c14 <warningNavigate+0x70>
c0de5c0c:	4448      	add	r0, r9
c0de5c0e:	69c0      	ldr	r0, [r0, #28]
c0de5c10:	6801      	ldr	r1, [r0, #0]
c0de5c12:	b109      	cbz	r1, c0de5c18 <warningNavigate+0x74>
c0de5c14:	f7ff beca 	b.w	c0de59ac <displayWarningStep>
c0de5c18:	69c0      	ldr	r0, [r0, #28]
c0de5c1a:	2800      	cmp	r0, #0
c0de5c1c:	d0fa      	beq.n	c0de5c14 <warningNavigate+0x70>
c0de5c1e:	f000 b817 	b.w	c0de5c50 <launchReviewAfterWarning>
c0de5c22:	bf00      	nop
c0de5c24:	00000724 	.word	0x00000724

c0de5c28 <onReviewAccept>:
c0de5c28:	4803      	ldr	r0, [pc, #12]	@ (c0de5c38 <onReviewAccept+0x10>)
c0de5c2a:	4448      	add	r0, r9
c0de5c2c:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5c2e:	b109      	cbz	r1, c0de5c34 <onReviewAccept+0xc>
c0de5c30:	2001      	movs	r0, #1
c0de5c32:	4708      	bx	r1
c0de5c34:	4770      	bx	lr
c0de5c36:	bf00      	nop
c0de5c38:	00000724 	.word	0x00000724

c0de5c3c <onReviewReject>:
c0de5c3c:	4803      	ldr	r0, [pc, #12]	@ (c0de5c4c <onReviewReject+0x10>)
c0de5c3e:	4448      	add	r0, r9
c0de5c40:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5c42:	b109      	cbz	r1, c0de5c48 <onReviewReject+0xc>
c0de5c44:	2000      	movs	r0, #0
c0de5c46:	4708      	bx	r1
c0de5c48:	4770      	bx	lr
c0de5c4a:	bf00      	nop
c0de5c4c:	00000724 	.word	0x00000724

c0de5c50 <launchReviewAfterWarning>:
c0de5c50:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5c52:	480c      	ldr	r0, [pc, #48]	@ (c0de5c84 <launchReviewAfterWarning+0x34>)
c0de5c54:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5c58:	2905      	cmp	r1, #5
c0de5c5a:	d00d      	beq.n	c0de5c78 <launchReviewAfterWarning+0x28>
c0de5c5c:	2902      	cmp	r1, #2
c0de5c5e:	bf18      	it	ne
c0de5c60:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5c62:	4448      	add	r0, r9
c0de5c64:	1d06      	adds	r6, r0, #4
c0de5c66:	6a00      	ldr	r0, [r0, #32]
c0de5c68:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5c6a:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5c6e:	9003      	str	r0, [sp, #12]
c0de5c70:	2002      	movs	r0, #2
c0de5c72:	f7fe fe23 	bl	c0de48bc <useCaseReview>
c0de5c76:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5c78:	2000      	movs	r0, #0
c0de5c7a:	b004      	add	sp, #16
c0de5c7c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5c80:	f7ff b8fa 	b.w	c0de4e78 <displayStreamingReviewPage>
c0de5c84:	00000724 	.word	0x00000724

c0de5c88 <buttonSkipCallback>:
c0de5c88:	b5b0      	push	{r4, r5, r7, lr}
c0de5c8a:	2904      	cmp	r1, #4
c0de5c8c:	d00a      	beq.n	c0de5ca4 <buttonSkipCallback+0x1c>
c0de5c8e:	2901      	cmp	r1, #1
c0de5c90:	d017      	beq.n	c0de5cc2 <buttonSkipCallback+0x3a>
c0de5c92:	bbb9      	cbnz	r1, c0de5d04 <buttonSkipCallback+0x7c>
c0de5c94:	4829      	ldr	r0, [pc, #164]	@ (c0de5d3c <buttonSkipCallback+0xb4>)
c0de5c96:	eb09 0100 	add.w	r1, r9, r0
c0de5c9a:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5c9e:	b391      	cbz	r1, c0de5d06 <buttonSkipCallback+0x7e>
c0de5ca0:	2008      	movs	r0, #8
c0de5ca2:	e02a      	b.n	c0de5cfa <buttonSkipCallback+0x72>
c0de5ca4:	4825      	ldr	r0, [pc, #148]	@ (c0de5d3c <buttonSkipCallback+0xb4>)
c0de5ca6:	eb09 0100 	add.w	r1, r9, r0
c0de5caa:	4448      	add	r0, r9
c0de5cac:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5cb0:	2900      	cmp	r1, #0
c0de5cb2:	d03f      	beq.n	c0de5d34 <buttonSkipCallback+0xac>
c0de5cb4:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5cb8:	3902      	subs	r1, #2
c0de5cba:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5cbe:	2000      	movs	r0, #0
c0de5cc0:	e030      	b.n	c0de5d24 <buttonSkipCallback+0x9c>
c0de5cc2:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5d3c <buttonSkipCallback+0xb4>)
c0de5cc4:	eb09 0002 	add.w	r0, r9, r2
c0de5cc8:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5ccc:	2808      	cmp	r0, #8
c0de5cce:	d113      	bne.n	c0de5cf8 <buttonSkipCallback+0x70>
c0de5cd0:	eb09 0002 	add.w	r0, r9, r2
c0de5cd4:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5cd8:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5cdc:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5ce0:	1e45      	subs	r5, r0, #1
c0de5ce2:	2000      	movs	r0, #0
c0de5ce4:	b2e1      	uxtb	r1, r4
c0de5ce6:	429d      	cmp	r5, r3
c0de5ce8:	bfc8      	it	gt
c0de5cea:	42a3      	cmpgt	r3, r4
c0de5cec:	dd19      	ble.n	c0de5d22 <buttonSkipCallback+0x9a>
c0de5cee:	eb09 0002 	add.w	r0, r9, r2
c0de5cf2:	1c59      	adds	r1, r3, #1
c0de5cf4:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5cf8:	2000      	movs	r0, #0
c0de5cfa:	4910      	ldr	r1, [pc, #64]	@ (c0de5d3c <buttonSkipCallback+0xb4>)
c0de5cfc:	4449      	add	r1, r9
c0de5cfe:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5d02:	e00e      	b.n	c0de5d22 <buttonSkipCallback+0x9a>
c0de5d04:	bdb0      	pop	{r4, r5, r7, pc}
c0de5d06:	eb09 0100 	add.w	r1, r9, r0
c0de5d0a:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5d0e:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5d12:	b2d9      	uxtb	r1, r3
c0de5d14:	429a      	cmp	r2, r3
c0de5d16:	dd03      	ble.n	c0de5d20 <buttonSkipCallback+0x98>
c0de5d18:	4448      	add	r0, r9
c0de5d1a:	3a01      	subs	r2, #1
c0de5d1c:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5d20:	2008      	movs	r0, #8
c0de5d22:	b119      	cbz	r1, c0de5d2c <buttonSkipCallback+0xa4>
c0de5d24:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5d28:	f7fe be9e 	b.w	c0de4a68 <displayReviewPage>
c0de5d2c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5d30:	f7ff b8a2 	b.w	c0de4e78 <displayStreamingReviewPage>
c0de5d34:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5d36:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5d3a:	4700      	bx	r0
c0de5d3c:	00000724 	.word	0x00000724

c0de5d40 <displayAliasFullValue>:
c0de5d40:	b570      	push	{r4, r5, r6, lr}
c0de5d42:	b088      	sub	sp, #32
c0de5d44:	4c1a      	ldr	r4, [pc, #104]	@ (c0de5db0 <displayAliasFullValue+0x70>)
c0de5d46:	f10d 0213 	add.w	r2, sp, #19
c0de5d4a:	eb09 0504 	add.w	r5, r9, r4
c0de5d4e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5d50:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5d54:	ab05      	add	r3, sp, #20
c0de5d56:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5d5a:	9202      	str	r2, [sp, #8]
c0de5d5c:	e9cd 6300 	strd	r6, r3, [sp]
c0de5d60:	aa07      	add	r2, sp, #28
c0de5d62:	ab06      	add	r3, sp, #24
c0de5d64:	f7ff fbca 	bl	c0de54fc <getPairData>
c0de5d68:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5d6a:	b178      	cbz	r0, c0de5d8c <displayAliasFullValue+0x4c>
c0de5d6c:	eb09 0104 	add.w	r1, r9, r4
c0de5d70:	2200      	movs	r2, #0
c0de5d72:	664a      	str	r2, [r1, #100]	@ 0x64
c0de5d74:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de5d78:	7d01      	ldrb	r1, [r0, #20]
c0de5d7a:	2901      	cmp	r1, #1
c0de5d7c:	d008      	beq.n	c0de5d90 <displayAliasFullValue+0x50>
c0de5d7e:	2905      	cmp	r1, #5
c0de5d80:	d008      	beq.n	c0de5d94 <displayAliasFullValue+0x54>
c0de5d82:	2904      	cmp	r1, #4
c0de5d84:	d102      	bne.n	c0de5d8c <displayAliasFullValue+0x4c>
c0de5d86:	6900      	ldr	r0, [r0, #16]
c0de5d88:	300c      	adds	r0, #12
c0de5d8a:	e005      	b.n	c0de5d98 <displayAliasFullValue+0x58>
c0de5d8c:	b008      	add	sp, #32
c0de5d8e:	bd70      	pop	{r4, r5, r6, pc}
c0de5d90:	2002      	movs	r0, #2
c0de5d92:	e003      	b.n	c0de5d9c <displayAliasFullValue+0x5c>
c0de5d94:	6900      	ldr	r0, [r0, #16]
c0de5d96:	3008      	adds	r0, #8
c0de5d98:	7800      	ldrb	r0, [r0, #0]
c0de5d9a:	3001      	adds	r0, #1
c0de5d9c:	eb09 0104 	add.w	r1, r9, r4
c0de5da0:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de5da4:	2000      	movs	r0, #0
c0de5da6:	b008      	add	sp, #32
c0de5da8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5dac:	f000 b814 	b.w	c0de5dd8 <displayExtensionStep>
c0de5db0:	00000724 	.word	0x00000724

c0de5db4 <reviewCallback>:
c0de5db4:	b5e0      	push	{r5, r6, r7, lr}
c0de5db6:	4608      	mov	r0, r1
c0de5db8:	f10d 0107 	add.w	r1, sp, #7
c0de5dbc:	f7ff fc78 	bl	c0de56b0 <buttonGenericCallback>
c0de5dc0:	b130      	cbz	r0, c0de5dd0 <reviewCallback+0x1c>
c0de5dc2:	4804      	ldr	r0, [pc, #16]	@ (c0de5dd4 <reviewCallback+0x20>)
c0de5dc4:	f000 f991 	bl	c0de60ea <OUTLINED_FUNCTION_8>
c0de5dc8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5dcc:	f7fe be4c 	b.w	c0de4a68 <displayReviewPage>
c0de5dd0:	bd8c      	pop	{r2, r3, r7, pc}
c0de5dd2:	bf00      	nop
c0de5dd4:	00000724 	.word	0x00000724

c0de5dd8 <displayExtensionStep>:
c0de5dd8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5ddc:	b088      	sub	sp, #32
c0de5dde:	4e36      	ldr	r6, [pc, #216]	@ (c0de5eb8 <displayExtensionStep+0xe0>)
c0de5de0:	4680      	mov	r8, r0
c0de5de2:	2000      	movs	r0, #0
c0de5de4:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de5de8:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5dec:	eb09 0006 	add.w	r0, r9, r6
c0de5df0:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de5df2:	b108      	cbz	r0, c0de5df8 <displayExtensionStep+0x20>
c0de5df4:	f7fe fbe6 	bl	c0de45c4 <nbgl_stepRelease>
c0de5df8:	eb09 0106 	add.w	r1, r9, r6
c0de5dfc:	f000 f981 	bl	c0de6102 <OUTLINED_FUNCTION_10>
c0de5e00:	dd10      	ble.n	c0de5e24 <displayExtensionStep+0x4c>
c0de5e02:	2703      	movs	r7, #3
c0de5e04:	eb09 0106 	add.w	r1, r9, r6
c0de5e08:	2800      	cmp	r0, #0
c0de5e0a:	bf08      	it	eq
c0de5e0c:	2701      	moveq	r7, #1
c0de5e0e:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de5e10:	7d0a      	ldrb	r2, [r1, #20]
c0de5e12:	2a05      	cmp	r2, #5
c0de5e14:	d01a      	beq.n	c0de5e4c <displayExtensionStep+0x74>
c0de5e16:	2a04      	cmp	r2, #4
c0de5e18:	d028      	beq.n	c0de5e6c <displayExtensionStep+0x94>
c0de5e1a:	2a01      	cmp	r2, #1
c0de5e1c:	d147      	bne.n	c0de5eae <displayExtensionStep+0xd6>
c0de5e1e:	6808      	ldr	r0, [r1, #0]
c0de5e20:	688d      	ldr	r5, [r1, #8]
c0de5e22:	e033      	b.n	c0de5e8c <displayExtensionStep+0xb4>
c0de5e24:	d143      	bne.n	c0de5eae <displayExtensionStep+0xd6>
c0de5e26:	2001      	movs	r0, #1
c0de5e28:	2200      	movs	r2, #0
c0de5e2a:	f88d 001d 	strb.w	r0, [sp, #29]
c0de5e2e:	4924      	ldr	r1, [pc, #144]	@ (c0de5ec0 <displayExtensionStep+0xe8>)
c0de5e30:	4479      	add	r1, pc
c0de5e32:	9104      	str	r1, [sp, #16]
c0de5e34:	4923      	ldr	r1, [pc, #140]	@ (c0de5ec4 <displayExtensionStep+0xec>)
c0de5e36:	9000      	str	r0, [sp, #0]
c0de5e38:	f048 0002 	orr.w	r0, r8, #2
c0de5e3c:	4479      	add	r1, pc
c0de5e3e:	9106      	str	r1, [sp, #24]
c0de5e40:	4921      	ldr	r1, [pc, #132]	@ (c0de5ec8 <displayExtensionStep+0xf0>)
c0de5e42:	ab04      	add	r3, sp, #16
c0de5e44:	4479      	add	r1, pc
c0de5e46:	f7fe fa97 	bl	c0de4378 <nbgl_stepDrawCenteredInfo>
c0de5e4a:	e02d      	b.n	c0de5ea8 <displayExtensionStep+0xd0>
c0de5e4c:	690c      	ldr	r4, [r1, #16]
c0de5e4e:	0100      	lsls	r0, r0, #4
c0de5e50:	6821      	ldr	r1, [r4, #0]
c0de5e52:	5808      	ldr	r0, [r1, r0]
c0de5e54:	f001 f88e 	bl	c0de6f74 <pic>
c0de5e58:	4605      	mov	r5, r0
c0de5e5a:	eb09 0006 	add.w	r0, r9, r6
c0de5e5e:	6821      	ldr	r1, [r4, #0]
c0de5e60:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5e64:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de5e68:	6840      	ldr	r0, [r0, #4]
c0de5e6a:	e00d      	b.n	c0de5e88 <displayExtensionStep+0xb0>
c0de5e6c:	690c      	ldr	r4, [r1, #16]
c0de5e6e:	6821      	ldr	r1, [r4, #0]
c0de5e70:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de5e74:	f001 f87e 	bl	c0de6f74 <pic>
c0de5e78:	4605      	mov	r5, r0
c0de5e7a:	eb09 0006 	add.w	r0, r9, r6
c0de5e7e:	6861      	ldr	r1, [r4, #4]
c0de5e80:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5e84:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de5e88:	f001 f874 	bl	c0de6f74 <pic>
c0de5e8c:	b17d      	cbz	r5, c0de5eae <displayExtensionStep+0xd6>
c0de5e8e:	2101      	movs	r1, #1
c0de5e90:	ea47 0208 	orr.w	r2, r7, r8
c0de5e94:	462b      	mov	r3, r5
c0de5e96:	e9cd 0100 	strd	r0, r1, [sp]
c0de5e9a:	9102      	str	r1, [sp, #8]
c0de5e9c:	4610      	mov	r0, r2
c0de5e9e:	2200      	movs	r2, #0
c0de5ea0:	4906      	ldr	r1, [pc, #24]	@ (c0de5ebc <displayExtensionStep+0xe4>)
c0de5ea2:	4479      	add	r1, pc
c0de5ea4:	f7fe f922 	bl	c0de40ec <nbgl_stepDrawText>
c0de5ea8:	eb09 0106 	add.w	r1, r9, r6
c0de5eac:	6648      	str	r0, [r1, #100]	@ 0x64
c0de5eae:	f000 fe56 	bl	c0de6b5e <nbgl_refresh>
c0de5eb2:	b008      	add	sp, #32
c0de5eb4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de5eb8:	00000724 	.word	0x00000724
c0de5ebc:	00000027 	.word	0x00000027
c0de5ec0:	00001ccb 	.word	0x00001ccb
c0de5ec4:	0000190c 	.word	0x0000190c
c0de5ec8:	00000085 	.word	0x00000085

c0de5ecc <extensionNavigate>:
c0de5ecc:	b580      	push	{r7, lr}
c0de5ece:	2904      	cmp	r1, #4
c0de5ed0:	d00a      	beq.n	c0de5ee8 <extensionNavigate+0x1c>
c0de5ed2:	2901      	cmp	r1, #1
c0de5ed4:	d01d      	beq.n	c0de5f12 <extensionNavigate+0x46>
c0de5ed6:	b9d9      	cbnz	r1, c0de5f10 <extensionNavigate+0x44>
c0de5ed8:	4818      	ldr	r0, [pc, #96]	@ (c0de5f3c <extensionNavigate+0x70>)
c0de5eda:	4448      	add	r0, r9
c0de5edc:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5ee0:	b330      	cbz	r0, c0de5f30 <extensionNavigate+0x64>
c0de5ee2:	1e41      	subs	r1, r0, #1
c0de5ee4:	2008      	movs	r0, #8
c0de5ee6:	e01c      	b.n	c0de5f22 <extensionNavigate+0x56>
c0de5ee8:	4814      	ldr	r0, [pc, #80]	@ (c0de5f3c <extensionNavigate+0x70>)
c0de5eea:	eb09 0100 	add.w	r1, r9, r0
c0de5eee:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de5ef2:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de5ef6:	3901      	subs	r1, #1
c0de5ef8:	4291      	cmp	r1, r2
c0de5efa:	d109      	bne.n	c0de5f10 <extensionNavigate+0x44>
c0de5efc:	4448      	add	r0, r9
c0de5efe:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de5f00:	f7fe fb60 	bl	c0de45c4 <nbgl_stepRelease>
c0de5f04:	f000 fe44 	bl	c0de6b90 <nbgl_screenRedraw>
c0de5f08:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de5f0c:	f000 be27 	b.w	c0de6b5e <nbgl_refresh>
c0de5f10:	bd80      	pop	{r7, pc}
c0de5f12:	480a      	ldr	r0, [pc, #40]	@ (c0de5f3c <extensionNavigate+0x70>)
c0de5f14:	eb09 0100 	add.w	r1, r9, r0
c0de5f18:	f000 f8f3 	bl	c0de6102 <OUTLINED_FUNCTION_10>
c0de5f1c:	dd06      	ble.n	c0de5f2c <extensionNavigate+0x60>
c0de5f1e:	1c41      	adds	r1, r0, #1
c0de5f20:	2000      	movs	r0, #0
c0de5f22:	4a06      	ldr	r2, [pc, #24]	@ (c0de5f3c <extensionNavigate+0x70>)
c0de5f24:	444a      	add	r2, r9
c0de5f26:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de5f2a:	e002      	b.n	c0de5f32 <extensionNavigate+0x66>
c0de5f2c:	2000      	movs	r0, #0
c0de5f2e:	e000      	b.n	c0de5f32 <extensionNavigate+0x66>
c0de5f30:	2008      	movs	r0, #8
c0de5f32:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de5f36:	f7ff bf4f 	b.w	c0de5dd8 <displayExtensionStep>
c0de5f3a:	bf00      	nop
c0de5f3c:	00000724 	.word	0x00000724

c0de5f40 <statusTickerCallback>:
c0de5f40:	4802      	ldr	r0, [pc, #8]	@ (c0de5f4c <statusTickerCallback+0xc>)
c0de5f42:	4448      	add	r0, r9
c0de5f44:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de5f46:	b100      	cbz	r0, c0de5f4a <statusTickerCallback+0xa>
c0de5f48:	4700      	bx	r0
c0de5f4a:	4770      	bx	lr
c0de5f4c:	00000724 	.word	0x00000724

c0de5f50 <getChoiceName>:
c0de5f50:	b5b0      	push	{r4, r5, r7, lr}
c0de5f52:	b090      	sub	sp, #64	@ 0x40
c0de5f54:	ad01      	add	r5, sp, #4
c0de5f56:	f000 f8cf 	bl	c0de60f8 <OUTLINED_FUNCTION_9>
c0de5f5a:	4814      	ldr	r0, [pc, #80]	@ (c0de5fac <getChoiceName+0x5c>)
c0de5f5c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5f60:	462a      	mov	r2, r5
c0de5f62:	4448      	add	r0, r9
c0de5f64:	f000 f8b1 	bl	c0de60ca <OUTLINED_FUNCTION_4>
c0de5f68:	b150      	cbz	r0, c0de5f80 <getChoiceName+0x30>
c0de5f6a:	7801      	ldrb	r1, [r0, #0]
c0de5f6c:	290a      	cmp	r1, #10
c0de5f6e:	d009      	beq.n	c0de5f84 <getChoiceName+0x34>
c0de5f70:	2909      	cmp	r1, #9
c0de5f72:	d105      	bne.n	c0de5f80 <getChoiceName+0x30>
c0de5f74:	f000 f8ad 	bl	c0de60d2 <OUTLINED_FUNCTION_5>
c0de5f78:	4605      	mov	r5, r0
c0de5f7a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de5f7e:	e006      	b.n	c0de5f8e <getChoiceName+0x3e>
c0de5f80:	2000      	movs	r0, #0
c0de5f82:	e010      	b.n	c0de5fa6 <getChoiceName+0x56>
c0de5f84:	f000 f8a5 	bl	c0de60d2 <OUTLINED_FUNCTION_5>
c0de5f88:	4605      	mov	r5, r0
c0de5f8a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de5f8e:	f000 fff1 	bl	c0de6f74 <pic>
c0de5f92:	7829      	ldrb	r1, [r5, #0]
c0de5f94:	42a1      	cmp	r1, r4
c0de5f96:	d904      	bls.n	c0de5fa2 <getChoiceName+0x52>
c0de5f98:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de5f9c:	f000 ffea 	bl	c0de6f74 <pic>
c0de5fa0:	e001      	b.n	c0de5fa6 <getChoiceName+0x56>
c0de5fa2:	4803      	ldr	r0, [pc, #12]	@ (c0de5fb0 <getChoiceName+0x60>)
c0de5fa4:	4478      	add	r0, pc
c0de5fa6:	b010      	add	sp, #64	@ 0x40
c0de5fa8:	bdb0      	pop	{r4, r5, r7, pc}
c0de5faa:	bf00      	nop
c0de5fac:	00000724 	.word	0x00000724
c0de5fb0:	00001b57 	.word	0x00001b57

c0de5fb4 <onChoiceSelected>:
c0de5fb4:	b570      	push	{r4, r5, r6, lr}
c0de5fb6:	b090      	sub	sp, #64	@ 0x40
c0de5fb8:	ad01      	add	r5, sp, #4
c0de5fba:	f000 f89d 	bl	c0de60f8 <OUTLINED_FUNCTION_9>
c0de5fbe:	4e17      	ldr	r6, [pc, #92]	@ (c0de601c <onChoiceSelected+0x68>)
c0de5fc0:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5fc4:	462a      	mov	r2, r5
c0de5fc6:	eb09 0006 	add.w	r0, r9, r6
c0de5fca:	f000 f87e 	bl	c0de60ca <OUTLINED_FUNCTION_4>
c0de5fce:	b318      	cbz	r0, c0de6018 <onChoiceSelected+0x64>
c0de5fd0:	7801      	ldrb	r1, [r0, #0]
c0de5fd2:	290a      	cmp	r1, #10
c0de5fd4:	d008      	beq.n	c0de5fe8 <onChoiceSelected+0x34>
c0de5fd6:	2909      	cmp	r1, #9
c0de5fd8:	d10f      	bne.n	c0de5ffa <onChoiceSelected+0x46>
c0de5fda:	f000 f87a 	bl	c0de60d2 <OUTLINED_FUNCTION_5>
c0de5fde:	7941      	ldrb	r1, [r0, #5]
c0de5fe0:	42a1      	cmp	r1, r4
c0de5fe2:	d90a      	bls.n	c0de5ffa <onChoiceSelected+0x46>
c0de5fe4:	3007      	adds	r0, #7
c0de5fe6:	e006      	b.n	c0de5ff6 <onChoiceSelected+0x42>
c0de5fe8:	f000 f873 	bl	c0de60d2 <OUTLINED_FUNCTION_5>
c0de5fec:	7a01      	ldrb	r1, [r0, #8]
c0de5fee:	42a1      	cmp	r1, r4
c0de5ff0:	d903      	bls.n	c0de5ffa <onChoiceSelected+0x46>
c0de5ff2:	6840      	ldr	r0, [r0, #4]
c0de5ff4:	4420      	add	r0, r4
c0de5ff6:	7800      	ldrb	r0, [r0, #0]
c0de5ff8:	e000      	b.n	c0de5ffc <onChoiceSelected+0x48>
c0de5ffa:	20ff      	movs	r0, #255	@ 0xff
c0de5ffc:	28ff      	cmp	r0, #255	@ 0xff
c0de5ffe:	d006      	beq.n	c0de600e <onChoiceSelected+0x5a>
c0de6000:	eb09 0106 	add.w	r1, r9, r6
c0de6004:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de6006:	b112      	cbz	r2, c0de600e <onChoiceSelected+0x5a>
c0de6008:	2100      	movs	r1, #0
c0de600a:	4790      	blx	r2
c0de600c:	e004      	b.n	c0de6018 <onChoiceSelected+0x64>
c0de600e:	eb09 0006 	add.w	r0, r9, r6
c0de6012:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de6014:	b100      	cbz	r0, c0de6018 <onChoiceSelected+0x64>
c0de6016:	4780      	blx	r0
c0de6018:	b010      	add	sp, #64	@ 0x40
c0de601a:	bd70      	pop	{r4, r5, r6, pc}
c0de601c:	00000724 	.word	0x00000724

c0de6020 <streamingReviewCallback>:
c0de6020:	b5e0      	push	{r5, r6, r7, lr}
c0de6022:	4608      	mov	r0, r1
c0de6024:	f10d 0107 	add.w	r1, sp, #7
c0de6028:	f7ff fb42 	bl	c0de56b0 <buttonGenericCallback>
c0de602c:	b130      	cbz	r0, c0de603c <streamingReviewCallback+0x1c>
c0de602e:	4804      	ldr	r0, [pc, #16]	@ (c0de6040 <streamingReviewCallback+0x20>)
c0de6030:	f000 f85b 	bl	c0de60ea <OUTLINED_FUNCTION_8>
c0de6034:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6038:	f7fe bf1e 	b.w	c0de4e78 <displayStreamingReviewPage>
c0de603c:	bd8c      	pop	{r2, r3, r7, pc}
c0de603e:	bf00      	nop
c0de6040:	00000724 	.word	0x00000724

c0de6044 <onChoiceAccept>:
c0de6044:	4803      	ldr	r0, [pc, #12]	@ (c0de6054 <onChoiceAccept+0x10>)
c0de6046:	4448      	add	r0, r9
c0de6048:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de604a:	b109      	cbz	r1, c0de6050 <onChoiceAccept+0xc>
c0de604c:	2001      	movs	r0, #1
c0de604e:	4708      	bx	r1
c0de6050:	4770      	bx	lr
c0de6052:	bf00      	nop
c0de6054:	00000724 	.word	0x00000724

c0de6058 <onChoiceReject>:
c0de6058:	4803      	ldr	r0, [pc, #12]	@ (c0de6068 <onChoiceReject+0x10>)
c0de605a:	4448      	add	r0, r9
c0de605c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de605e:	b109      	cbz	r1, c0de6064 <onChoiceReject+0xc>
c0de6060:	2000      	movs	r0, #0
c0de6062:	4708      	bx	r1
c0de6064:	4770      	bx	lr
c0de6066:	bf00      	nop
c0de6068:	00000724 	.word	0x00000724

c0de606c <genericChoiceCallback>:
c0de606c:	b5e0      	push	{r5, r6, r7, lr}
c0de606e:	4608      	mov	r0, r1
c0de6070:	f10d 0107 	add.w	r1, sp, #7
c0de6074:	f7ff fb1c 	bl	c0de56b0 <buttonGenericCallback>
c0de6078:	b128      	cbz	r0, c0de6086 <genericChoiceCallback+0x1a>
c0de607a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de607e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6082:	f7fe bff5 	b.w	c0de5070 <displayChoicePage>
c0de6086:	bd8c      	pop	{r2, r3, r7, pc}

c0de6088 <OUTLINED_FUNCTION_0>:
c0de6088:	460e      	mov	r6, r1
c0de608a:	2140      	movs	r1, #64	@ 0x40
c0de608c:	4698      	mov	r8, r3
c0de608e:	4615      	mov	r5, r2
c0de6090:	eb09 0400 	add.w	r4, r9, r0
c0de6094:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de6098:	f001 ba78 	b.w	c0de758c <__aeabi_memclr>

c0de609c <OUTLINED_FUNCTION_1>:
c0de609c:	2200      	movs	r2, #0
c0de609e:	eb09 0100 	add.w	r1, r9, r0
c0de60a2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de60a4:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de60a8:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de60ac:	3901      	subs	r1, #1
c0de60ae:	4291      	cmp	r1, r2
c0de60b0:	4770      	bx	lr

c0de60b2 <OUTLINED_FUNCTION_2>:
c0de60b2:	eb09 0600 	add.w	r6, r9, r0
c0de60b6:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de60ba:	f001 ba67 	b.w	c0de758c <__aeabi_memclr>

c0de60be <OUTLINED_FUNCTION_3>:
c0de60be:	eb09 0500 	add.w	r5, r9, r0
c0de60c2:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de60c6:	f001 ba61 	b.w	c0de758c <__aeabi_memclr>

c0de60ca <OUTLINED_FUNCTION_4>:
c0de60ca:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de60ce:	f7ff b9d1 	b.w	c0de5474 <getContentElemAtIdx>

c0de60d2 <OUTLINED_FUNCTION_5>:
c0de60d2:	3004      	adds	r0, #4
c0de60d4:	f000 bf4e 	b.w	c0de6f74 <pic>

c0de60d8 <OUTLINED_FUNCTION_6>:
c0de60d8:	e9cd 6500 	strd	r6, r5, [sp]
c0de60dc:	f7fe bdb0 	b.w	c0de4c40 <drawStep>

c0de60e0 <OUTLINED_FUNCTION_7>:
c0de60e0:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de60e4:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de60e8:	4730      	bx	r6

c0de60ea <OUTLINED_FUNCTION_8>:
c0de60ea:	eb09 0100 	add.w	r1, r9, r0
c0de60ee:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de60f2:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de60f6:	4770      	bx	lr

c0de60f8 <OUTLINED_FUNCTION_9>:
c0de60f8:	4604      	mov	r4, r0
c0de60fa:	2138      	movs	r1, #56	@ 0x38
c0de60fc:	4628      	mov	r0, r5
c0de60fe:	f001 ba45 	b.w	c0de758c <__aeabi_memclr>

c0de6102 <OUTLINED_FUNCTION_10>:
c0de6102:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de6106:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de610a:	3901      	subs	r1, #1
c0de610c:	4281      	cmp	r1, r0
c0de610e:	4770      	bx	lr

c0de6110 <bip32_path_read>:
c0de6110:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6114:	b10b      	cbz	r3, c0de611a <bip32_path_read+0xa>
c0de6116:	2b0a      	cmp	r3, #10
c0de6118:	d902      	bls.n	c0de6120 <bip32_path_read+0x10>
c0de611a:	2000      	movs	r0, #0
c0de611c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6120:	4692      	mov	sl, r2
c0de6122:	460e      	mov	r6, r1
c0de6124:	4683      	mov	fp, r0
c0de6126:	425f      	negs	r7, r3
c0de6128:	2500      	movs	r5, #0
c0de612a:	f04f 0800 	mov.w	r8, #0
c0de612e:	9301      	str	r3, [sp, #4]
c0de6130:	42af      	cmp	r7, r5
c0de6132:	d00c      	beq.n	c0de614e <bip32_path_read+0x3e>
c0de6134:	f108 0404 	add.w	r4, r8, #4
c0de6138:	42b4      	cmp	r4, r6
c0de613a:	d808      	bhi.n	c0de614e <bip32_path_read+0x3e>
c0de613c:	4658      	mov	r0, fp
c0de613e:	4641      	mov	r1, r8
c0de6140:	f000 fb6f 	bl	c0de6822 <read_u32_be>
c0de6144:	f84a 0008 	str.w	r0, [sl, r8]
c0de6148:	3d01      	subs	r5, #1
c0de614a:	46a0      	mov	r8, r4
c0de614c:	e7f0      	b.n	c0de6130 <bip32_path_read+0x20>
c0de614e:	9a01      	ldr	r2, [sp, #4]
c0de6150:	4269      	negs	r1, r5
c0de6152:	2000      	movs	r0, #0
c0de6154:	4291      	cmp	r1, r2
c0de6156:	bf28      	it	cs
c0de6158:	2001      	movcs	r0, #1
c0de615a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de615e <buffer_seek_cur>:
c0de615e:	6882      	ldr	r2, [r0, #8]
c0de6160:	1889      	adds	r1, r1, r2
c0de6162:	d205      	bcs.n	c0de6170 <buffer_seek_cur+0x12>
c0de6164:	6842      	ldr	r2, [r0, #4]
c0de6166:	4291      	cmp	r1, r2
c0de6168:	bf9e      	ittt	ls
c0de616a:	6081      	strls	r1, [r0, #8]
c0de616c:	2001      	movls	r0, #1
c0de616e:	4770      	bxls	lr
c0de6170:	2000      	movs	r0, #0
c0de6172:	4770      	bx	lr

c0de6174 <buffer_read_u8>:
c0de6174:	b510      	push	{r4, lr}
c0de6176:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de617a:	429a      	cmp	r2, r3
c0de617c:	d00a      	beq.n	c0de6194 <buffer_read_u8+0x20>
c0de617e:	6804      	ldr	r4, [r0, #0]
c0de6180:	5ce4      	ldrb	r4, [r4, r3]
c0de6182:	700c      	strb	r4, [r1, #0]
c0de6184:	6881      	ldr	r1, [r0, #8]
c0de6186:	3101      	adds	r1, #1
c0de6188:	d206      	bcs.n	c0de6198 <buffer_read_u8+0x24>
c0de618a:	6844      	ldr	r4, [r0, #4]
c0de618c:	42a1      	cmp	r1, r4
c0de618e:	bf98      	it	ls
c0de6190:	6081      	strls	r1, [r0, #8]
c0de6192:	e001      	b.n	c0de6198 <buffer_read_u8+0x24>
c0de6194:	2000      	movs	r0, #0
c0de6196:	7008      	strb	r0, [r1, #0]
c0de6198:	1ad0      	subs	r0, r2, r3
c0de619a:	bf18      	it	ne
c0de619c:	2001      	movne	r0, #1
c0de619e:	bd10      	pop	{r4, pc}

c0de61a0 <buffer_read_u64>:
c0de61a0:	b570      	push	{r4, r5, r6, lr}
c0de61a2:	f000 f87d 	bl	c0de62a0 <OUTLINED_FUNCTION_0>
c0de61a6:	2e07      	cmp	r6, #7
c0de61a8:	d904      	bls.n	c0de61b4 <buffer_read_u64+0x14>
c0de61aa:	6820      	ldr	r0, [r4, #0]
c0de61ac:	b132      	cbz	r2, c0de61bc <buffer_read_u64+0x1c>
c0de61ae:	f000 fb6f 	bl	c0de6890 <read_u64_le>
c0de61b2:	e005      	b.n	c0de61c0 <buffer_read_u64+0x20>
c0de61b4:	2000      	movs	r0, #0
c0de61b6:	e9c5 0000 	strd	r0, r0, [r5]
c0de61ba:	e00c      	b.n	c0de61d6 <buffer_read_u64+0x36>
c0de61bc:	f000 fb3d 	bl	c0de683a <read_u64_be>
c0de61c0:	e9c5 0100 	strd	r0, r1, [r5]
c0de61c4:	68a0      	ldr	r0, [r4, #8]
c0de61c6:	f110 0f09 	cmn.w	r0, #9
c0de61ca:	d804      	bhi.n	c0de61d6 <buffer_read_u64+0x36>
c0de61cc:	6861      	ldr	r1, [r4, #4]
c0de61ce:	3008      	adds	r0, #8
c0de61d0:	4288      	cmp	r0, r1
c0de61d2:	bf98      	it	ls
c0de61d4:	60a0      	strls	r0, [r4, #8]
c0de61d6:	2000      	movs	r0, #0
c0de61d8:	2e07      	cmp	r6, #7
c0de61da:	bf88      	it	hi
c0de61dc:	2001      	movhi	r0, #1
c0de61de:	bd70      	pop	{r4, r5, r6, pc}

c0de61e0 <buffer_read_varint>:
c0de61e0:	b5b0      	push	{r4, r5, r7, lr}
c0de61e2:	4604      	mov	r4, r0
c0de61e4:	460d      	mov	r5, r1
c0de61e6:	6800      	ldr	r0, [r0, #0]
c0de61e8:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de61ec:	4410      	add	r0, r2
c0de61ee:	1a89      	subs	r1, r1, r2
c0de61f0:	462a      	mov	r2, r5
c0de61f2:	f000 fbb7 	bl	c0de6964 <varint_read>
c0de61f6:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de61fa:	dd0a      	ble.n	c0de6212 <buffer_read_varint+0x32>
c0de61fc:	68a1      	ldr	r1, [r4, #8]
c0de61fe:	1840      	adds	r0, r0, r1
c0de6200:	d205      	bcs.n	c0de620e <buffer_read_varint+0x2e>
c0de6202:	6861      	ldr	r1, [r4, #4]
c0de6204:	4288      	cmp	r0, r1
c0de6206:	bf9e      	ittt	ls
c0de6208:	60a0      	strls	r0, [r4, #8]
c0de620a:	2001      	movls	r0, #1
c0de620c:	bdb0      	popls	{r4, r5, r7, pc}
c0de620e:	2000      	movs	r0, #0
c0de6210:	bdb0      	pop	{r4, r5, r7, pc}
c0de6212:	2000      	movs	r0, #0
c0de6214:	e9c5 0000 	strd	r0, r0, [r5]
c0de6218:	bdb0      	pop	{r4, r5, r7, pc}

c0de621a <buffer_read_bip32_path>:
c0de621a:	b5b0      	push	{r4, r5, r7, lr}
c0de621c:	4604      	mov	r4, r0
c0de621e:	4615      	mov	r5, r2
c0de6220:	460a      	mov	r2, r1
c0de6222:	6800      	ldr	r0, [r0, #0]
c0de6224:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6228:	4418      	add	r0, r3
c0de622a:	1ac9      	subs	r1, r1, r3
c0de622c:	462b      	mov	r3, r5
c0de622e:	f7ff ff6f 	bl	c0de6110 <bip32_path_read>
c0de6232:	b140      	cbz	r0, c0de6246 <buffer_read_bip32_path+0x2c>
c0de6234:	68a2      	ldr	r2, [r4, #8]
c0de6236:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de623a:	4291      	cmp	r1, r2
c0de623c:	d303      	bcc.n	c0de6246 <buffer_read_bip32_path+0x2c>
c0de623e:	6862      	ldr	r2, [r4, #4]
c0de6240:	4291      	cmp	r1, r2
c0de6242:	bf98      	it	ls
c0de6244:	60a1      	strls	r1, [r4, #8]
c0de6246:	bdb0      	pop	{r4, r5, r7, pc}

c0de6248 <buffer_copy>:
c0de6248:	b5b0      	push	{r4, r5, r7, lr}
c0de624a:	4614      	mov	r4, r2
c0de624c:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6250:	1a9d      	subs	r5, r3, r2
c0de6252:	42a5      	cmp	r5, r4
c0de6254:	d806      	bhi.n	c0de6264 <buffer_copy+0x1c>
c0de6256:	6800      	ldr	r0, [r0, #0]
c0de6258:	4402      	add	r2, r0
c0de625a:	4608      	mov	r0, r1
c0de625c:	4611      	mov	r1, r2
c0de625e:	462a      	mov	r2, r5
c0de6260:	f001 f98c 	bl	c0de757c <__aeabi_memmove>
c0de6264:	2000      	movs	r0, #0
c0de6266:	42a5      	cmp	r5, r4
c0de6268:	bf98      	it	ls
c0de626a:	2001      	movls	r0, #1
c0de626c:	bdb0      	pop	{r4, r5, r7, pc}

c0de626e <buffer_move>:
c0de626e:	b5b0      	push	{r4, r5, r7, lr}
c0de6270:	4615      	mov	r5, r2
c0de6272:	4604      	mov	r4, r0
c0de6274:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6278:	1a12      	subs	r2, r2, r0
c0de627a:	42aa      	cmp	r2, r5
c0de627c:	bf84      	itt	hi
c0de627e:	2000      	movhi	r0, #0
c0de6280:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6282:	6823      	ldr	r3, [r4, #0]
c0de6284:	4403      	add	r3, r0
c0de6286:	4608      	mov	r0, r1
c0de6288:	4619      	mov	r1, r3
c0de628a:	f001 f977 	bl	c0de757c <__aeabi_memmove>
c0de628e:	68a0      	ldr	r0, [r4, #8]
c0de6290:	1940      	adds	r0, r0, r5
c0de6292:	d203      	bcs.n	c0de629c <buffer_move+0x2e>
c0de6294:	6861      	ldr	r1, [r4, #4]
c0de6296:	4288      	cmp	r0, r1
c0de6298:	bf98      	it	ls
c0de629a:	60a0      	strls	r0, [r4, #8]
c0de629c:	2001      	movs	r0, #1
c0de629e:	bdb0      	pop	{r4, r5, r7, pc}

c0de62a0 <OUTLINED_FUNCTION_0>:
c0de62a0:	4604      	mov	r4, r0
c0de62a2:	460d      	mov	r5, r1
c0de62a4:	6840      	ldr	r0, [r0, #4]
c0de62a6:	68a1      	ldr	r1, [r4, #8]
c0de62a8:	1a46      	subs	r6, r0, r1
c0de62aa:	4770      	bx	lr

c0de62ac <bip32_derive_with_seed_init_privkey_256>:
c0de62ac:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de62b0:	b095      	sub	sp, #84	@ 0x54
c0de62b2:	460d      	mov	r5, r1
c0de62b4:	4607      	mov	r7, r0
c0de62b6:	a904      	add	r1, sp, #16
c0de62b8:	469a      	mov	sl, r3
c0de62ba:	4614      	mov	r4, r2
c0de62bc:	4628      	mov	r0, r5
c0de62be:	f000 ffb9 	bl	c0de7234 <cx_ecdomain_parameters_length>
c0de62c2:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de62c6:	4606      	mov	r6, r0
c0de62c8:	b9e0      	cbnz	r0, c0de6304 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de62ca:	9804      	ldr	r0, [sp, #16]
c0de62cc:	2820      	cmp	r0, #32
c0de62ce:	d117      	bne.n	c0de6300 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de62d0:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de62d2:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de62d6:	ab05      	add	r3, sp, #20
c0de62d8:	e9cd 3200 	strd	r3, r2, [sp]
c0de62dc:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de62e0:	4638      	mov	r0, r7
c0de62e2:	4629      	mov	r1, r5
c0de62e4:	4622      	mov	r2, r4
c0de62e6:	4653      	mov	r3, sl
c0de62e8:	f000 f818 	bl	c0de631c <os_derive_bip32_with_seed_no_throw>
c0de62ec:	4606      	mov	r6, r0
c0de62ee:	b948      	cbnz	r0, c0de6304 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de62f0:	9a04      	ldr	r2, [sp, #16]
c0de62f2:	a905      	add	r1, sp, #20
c0de62f4:	4628      	mov	r0, r5
c0de62f6:	4643      	mov	r3, r8
c0de62f8:	f000 fc12 	bl	c0de6b20 <cx_ecfp_init_private_key_no_throw>
c0de62fc:	4606      	mov	r6, r0
c0de62fe:	e001      	b.n	c0de6304 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6300:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6304:	a805      	add	r0, sp, #20
c0de6306:	2140      	movs	r1, #64	@ 0x40
c0de6308:	f001 f94e 	bl	c0de75a8 <explicit_bzero>
c0de630c:	b116      	cbz	r6, c0de6314 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de630e:	4640      	mov	r0, r8
c0de6310:	f000 f89f 	bl	c0de6452 <OUTLINED_FUNCTION_0>
c0de6314:	4630      	mov	r0, r6
c0de6316:	b015      	add	sp, #84	@ 0x54
c0de6318:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de631c <os_derive_bip32_with_seed_no_throw>:
c0de631c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6320:	b090      	sub	sp, #64	@ 0x40
c0de6322:	f10d 0810 	add.w	r8, sp, #16
c0de6326:	4607      	mov	r7, r0
c0de6328:	469b      	mov	fp, r3
c0de632a:	4616      	mov	r6, r2
c0de632c:	460c      	mov	r4, r1
c0de632e:	4640      	mov	r0, r8
c0de6330:	f001 f970 	bl	c0de7614 <setjmp>
c0de6334:	b285      	uxth	r5, r0
c0de6336:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de633a:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de633e:	b155      	cbz	r5, c0de6356 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6340:	2000      	movs	r0, #0
c0de6342:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6346:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6348:	f001 f818 	bl	c0de737c <try_context_set>
c0de634c:	2140      	movs	r1, #64	@ 0x40
c0de634e:	4650      	mov	r0, sl
c0de6350:	f001 f92a 	bl	c0de75a8 <explicit_bzero>
c0de6354:	e012      	b.n	c0de637c <os_derive_bip32_with_seed_no_throw+0x60>
c0de6356:	a804      	add	r0, sp, #16
c0de6358:	f001 f810 	bl	c0de737c <try_context_set>
c0de635c:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de635e:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6360:	4668      	mov	r0, sp
c0de6362:	4632      	mov	r2, r6
c0de6364:	465b      	mov	r3, fp
c0de6366:	f8c0 a000 	str.w	sl, [r0]
c0de636a:	6041      	str	r1, [r0, #4]
c0de636c:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de636e:	6081      	str	r1, [r0, #8]
c0de6370:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6372:	60c1      	str	r1, [r0, #12]
c0de6374:	4638      	mov	r0, r7
c0de6376:	4621      	mov	r1, r4
c0de6378:	f000 ff66 	bl	c0de7248 <os_perso_derive_node_with_seed_key>
c0de637c:	f000 fff6 	bl	c0de736c <try_context_get>
c0de6380:	4540      	cmp	r0, r8
c0de6382:	d102      	bne.n	c0de638a <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6384:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6386:	f000 fff9 	bl	c0de737c <try_context_set>
c0de638a:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de638e:	b918      	cbnz	r0, c0de6398 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6390:	4628      	mov	r0, r5
c0de6392:	b010      	add	sp, #64	@ 0x40
c0de6394:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6398:	f000 fc47 	bl	c0de6c2a <os_longjmp>

c0de639c <bip32_derive_with_seed_get_pubkey_256>:
c0de639c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de639e:	b0a1      	sub	sp, #132	@ 0x84
c0de63a0:	460e      	mov	r6, r1
c0de63a2:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de63a4:	9103      	str	r1, [sp, #12]
c0de63a6:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de63a8:	9102      	str	r1, [sp, #8]
c0de63aa:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de63ac:	9101      	str	r1, [sp, #4]
c0de63ae:	a917      	add	r1, sp, #92	@ 0x5c
c0de63b0:	9100      	str	r1, [sp, #0]
c0de63b2:	4631      	mov	r1, r6
c0de63b4:	f7ff ff7a 	bl	c0de62ac <bip32_derive_with_seed_init_privkey_256>
c0de63b8:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de63ba:	4605      	mov	r5, r0
c0de63bc:	b9b8      	cbnz	r0, c0de63ee <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de63be:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de63c0:	2301      	movs	r3, #1
c0de63c2:	9000      	str	r0, [sp, #0]
c0de63c4:	af04      	add	r7, sp, #16
c0de63c6:	aa17      	add	r2, sp, #92	@ 0x5c
c0de63c8:	4630      	mov	r0, r6
c0de63ca:	4639      	mov	r1, r7
c0de63cc:	f000 fba3 	bl	c0de6b16 <cx_ecfp_generate_pair2_no_throw>
c0de63d0:	4605      	mov	r5, r0
c0de63d2:	b960      	cbnz	r0, c0de63ee <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de63d4:	9805      	ldr	r0, [sp, #20]
c0de63d6:	2841      	cmp	r0, #65	@ 0x41
c0de63d8:	d107      	bne.n	c0de63ea <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de63da:	f107 0108 	add.w	r1, r7, #8
c0de63de:	4620      	mov	r0, r4
c0de63e0:	2241      	movs	r2, #65	@ 0x41
c0de63e2:	f001 f8c9 	bl	c0de7578 <__aeabi_memcpy>
c0de63e6:	2500      	movs	r5, #0
c0de63e8:	e001      	b.n	c0de63ee <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de63ea:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de63ee:	a817      	add	r0, sp, #92	@ 0x5c
c0de63f0:	f000 f82f 	bl	c0de6452 <OUTLINED_FUNCTION_0>
c0de63f4:	b11d      	cbz	r5, c0de63fe <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de63f6:	4620      	mov	r0, r4
c0de63f8:	2141      	movs	r1, #65	@ 0x41
c0de63fa:	f001 f8d5 	bl	c0de75a8 <explicit_bzero>
c0de63fe:	4628      	mov	r0, r5
c0de6400:	b021      	add	sp, #132	@ 0x84
c0de6402:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6404 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6404:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6406:	b08f      	sub	sp, #60	@ 0x3c
c0de6408:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de640a:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de640c:	683c      	ldr	r4, [r7, #0]
c0de640e:	9503      	str	r5, [sp, #12]
c0de6410:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6412:	9502      	str	r5, [sp, #8]
c0de6414:	2500      	movs	r5, #0
c0de6416:	9501      	str	r5, [sp, #4]
c0de6418:	ad05      	add	r5, sp, #20
c0de641a:	9500      	str	r5, [sp, #0]
c0de641c:	f7ff ff46 	bl	c0de62ac <bip32_derive_with_seed_init_privkey_256>
c0de6420:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6422:	4606      	mov	r6, r0
c0de6424:	b950      	cbnz	r0, c0de643c <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6426:	ae14      	add	r6, sp, #80	@ 0x50
c0de6428:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de642a:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de642c:	e9cd 6500 	strd	r6, r5, [sp]
c0de6430:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6434:	a805      	add	r0, sp, #20
c0de6436:	f000 fb69 	bl	c0de6b0c <cx_ecdsa_sign_no_throw>
c0de643a:	4606      	mov	r6, r0
c0de643c:	a805      	add	r0, sp, #20
c0de643e:	f000 f808 	bl	c0de6452 <OUTLINED_FUNCTION_0>
c0de6442:	b11e      	cbz	r6, c0de644c <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6444:	4628      	mov	r0, r5
c0de6446:	4621      	mov	r1, r4
c0de6448:	f001 f8ae 	bl	c0de75a8 <explicit_bzero>
c0de644c:	4630      	mov	r0, r6
c0de644e:	b00f      	add	sp, #60	@ 0x3c
c0de6450:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6452 <OUTLINED_FUNCTION_0>:
c0de6452:	2128      	movs	r1, #40	@ 0x28
c0de6454:	f001 b8a8 	b.w	c0de75a8 <explicit_bzero>

c0de6458 <format_u64>:
c0de6458:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de645c:	b1f9      	cbz	r1, c0de649e <format_u64+0x46>
c0de645e:	4615      	mov	r5, r2
c0de6460:	4604      	mov	r4, r0
c0de6462:	f1a1 0801 	sub.w	r8, r1, #1
c0de6466:	2700      	movs	r7, #0
c0de6468:	2600      	movs	r6, #0
c0de646a:	f1b5 000a 	subs.w	r0, r5, #10
c0de646e:	f173 0000 	sbcs.w	r0, r3, #0
c0de6472:	d316      	bcc.n	c0de64a2 <format_u64+0x4a>
c0de6474:	4619      	mov	r1, r3
c0de6476:	4628      	mov	r0, r5
c0de6478:	220a      	movs	r2, #10
c0de647a:	2300      	movs	r3, #0
c0de647c:	f001 f88a 	bl	c0de7594 <__aeabi_uldivmod>
c0de6480:	460b      	mov	r3, r1
c0de6482:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6486:	1cba      	adds	r2, r7, #2
c0de6488:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de648c:	4605      	mov	r5, r0
c0de648e:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6492:	55e1      	strb	r1, [r4, r7]
c0de6494:	1c79      	adds	r1, r7, #1
c0de6496:	4542      	cmp	r2, r8
c0de6498:	460f      	mov	r7, r1
c0de649a:	d9e6      	bls.n	c0de646a <format_u64+0x12>
c0de649c:	e012      	b.n	c0de64c4 <format_u64+0x6c>
c0de649e:	2600      	movs	r6, #0
c0de64a0:	e010      	b.n	c0de64c4 <format_u64+0x6c>
c0de64a2:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de64a6:	19e1      	adds	r1, r4, r7
c0de64a8:	55e0      	strb	r0, [r4, r7]
c0de64aa:	2000      	movs	r0, #0
c0de64ac:	7048      	strb	r0, [r1, #1]
c0de64ae:	b2c1      	uxtb	r1, r0
c0de64b0:	428f      	cmp	r7, r1
c0de64b2:	d906      	bls.n	c0de64c2 <format_u64+0x6a>
c0de64b4:	5c62      	ldrb	r2, [r4, r1]
c0de64b6:	5de3      	ldrb	r3, [r4, r7]
c0de64b8:	3001      	adds	r0, #1
c0de64ba:	5463      	strb	r3, [r4, r1]
c0de64bc:	55e2      	strb	r2, [r4, r7]
c0de64be:	3f01      	subs	r7, #1
c0de64c0:	e7f5      	b.n	c0de64ae <format_u64+0x56>
c0de64c2:	2601      	movs	r6, #1
c0de64c4:	4630      	mov	r0, r6
c0de64c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de64ca <format_fpu64>:
c0de64ca:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de64ce:	b086      	sub	sp, #24
c0de64d0:	466c      	mov	r4, sp
c0de64d2:	4688      	mov	r8, r1
c0de64d4:	4605      	mov	r5, r0
c0de64d6:	2115      	movs	r1, #21
c0de64d8:	461e      	mov	r6, r3
c0de64da:	4617      	mov	r7, r2
c0de64dc:	4620      	mov	r0, r4
c0de64de:	f001 f855 	bl	c0de758c <__aeabi_memclr>
c0de64e2:	4620      	mov	r0, r4
c0de64e4:	2115      	movs	r1, #21
c0de64e6:	463a      	mov	r2, r7
c0de64e8:	4633      	mov	r3, r6
c0de64ea:	f7ff ffb5 	bl	c0de6458 <format_u64>
c0de64ee:	b340      	cbz	r0, c0de6542 <format_fpu64+0x78>
c0de64f0:	466f      	mov	r7, sp
c0de64f2:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de64f4:	4638      	mov	r0, r7
c0de64f6:	f001 f8a5 	bl	c0de7644 <strlen>
c0de64fa:	42b0      	cmp	r0, r6
c0de64fc:	d910      	bls.n	c0de6520 <format_fpu64+0x56>
c0de64fe:	1831      	adds	r1, r6, r0
c0de6500:	3101      	adds	r1, #1
c0de6502:	4541      	cmp	r1, r8
c0de6504:	d21d      	bcs.n	c0de6542 <format_fpu64+0x78>
c0de6506:	1b84      	subs	r4, r0, r6
c0de6508:	4628      	mov	r0, r5
c0de650a:	4639      	mov	r1, r7
c0de650c:	4622      	mov	r2, r4
c0de650e:	f001 f833 	bl	c0de7578 <__aeabi_memcpy>
c0de6512:	1928      	adds	r0, r5, r4
c0de6514:	212e      	movs	r1, #46	@ 0x2e
c0de6516:	4632      	mov	r2, r6
c0de6518:	f800 1b01 	strb.w	r1, [r0], #1
c0de651c:	1939      	adds	r1, r7, r4
c0de651e:	e015      	b.n	c0de654c <format_fpu64+0x82>
c0de6520:	1a32      	subs	r2, r6, r0
c0de6522:	1c91      	adds	r1, r2, #2
c0de6524:	4541      	cmp	r1, r8
c0de6526:	d20c      	bcs.n	c0de6542 <format_fpu64+0x78>
c0de6528:	202e      	movs	r0, #46	@ 0x2e
c0de652a:	2330      	movs	r3, #48	@ 0x30
c0de652c:	2400      	movs	r4, #0
c0de652e:	7068      	strb	r0, [r5, #1]
c0de6530:	1ca8      	adds	r0, r5, #2
c0de6532:	702b      	strb	r3, [r5, #0]
c0de6534:	b2a5      	uxth	r5, r4
c0de6536:	42aa      	cmp	r2, r5
c0de6538:	d905      	bls.n	c0de6546 <format_fpu64+0x7c>
c0de653a:	f800 3b01 	strb.w	r3, [r0], #1
c0de653e:	3401      	adds	r4, #1
c0de6540:	e7f8      	b.n	c0de6534 <format_fpu64+0x6a>
c0de6542:	2000      	movs	r0, #0
c0de6544:	e005      	b.n	c0de6552 <format_fpu64+0x88>
c0de6546:	eba8 0201 	sub.w	r2, r8, r1
c0de654a:	4669      	mov	r1, sp
c0de654c:	f001 f894 	bl	c0de7678 <strncpy>
c0de6550:	2001      	movs	r0, #1
c0de6552:	b006      	add	sp, #24
c0de6554:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6558 <format_hex>:
c0de6558:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de655a:	4604      	mov	r4, r0
c0de655c:	0048      	lsls	r0, r1, #1
c0de655e:	f100 0c01 	add.w	ip, r0, #1
c0de6562:	459c      	cmp	ip, r3
c0de6564:	d902      	bls.n	c0de656c <format_hex+0x14>
c0de6566:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de656a:	e018      	b.n	c0de659e <format_hex+0x46>
c0de656c:	480d      	ldr	r0, [pc, #52]	@ (c0de65a4 <format_hex+0x4c>)
c0de656e:	2500      	movs	r5, #0
c0de6570:	4478      	add	r0, pc
c0de6572:	b191      	cbz	r1, c0de659a <format_hex+0x42>
c0de6574:	1cef      	adds	r7, r5, #3
c0de6576:	429f      	cmp	r7, r3
c0de6578:	d80d      	bhi.n	c0de6596 <format_hex+0x3e>
c0de657a:	7827      	ldrb	r7, [r4, #0]
c0de657c:	3901      	subs	r1, #1
c0de657e:	093f      	lsrs	r7, r7, #4
c0de6580:	5dc7      	ldrb	r7, [r0, r7]
c0de6582:	5557      	strb	r7, [r2, r5]
c0de6584:	1957      	adds	r7, r2, r5
c0de6586:	3502      	adds	r5, #2
c0de6588:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de658c:	f006 060f 	and.w	r6, r6, #15
c0de6590:	5d86      	ldrb	r6, [r0, r6]
c0de6592:	707e      	strb	r6, [r7, #1]
c0de6594:	e7ed      	b.n	c0de6572 <format_hex+0x1a>
c0de6596:	f105 0c01 	add.w	ip, r5, #1
c0de659a:	2000      	movs	r0, #0
c0de659c:	5550      	strb	r0, [r2, r5]
c0de659e:	4660      	mov	r0, ip
c0de65a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de65a2:	bf00      	nop
c0de65a4:	00001569 	.word	0x00001569

c0de65a8 <app_ticker_event_callback>:
c0de65a8:	4770      	bx	lr
	...

c0de65ac <io_event>:
c0de65ac:	b580      	push	{r7, lr}
c0de65ae:	480a      	ldr	r0, [pc, #40]	@ (c0de65d8 <io_event+0x2c>)
c0de65b0:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de65b4:	290e      	cmp	r1, #14
c0de65b6:	d005      	beq.n	c0de65c4 <io_event+0x18>
c0de65b8:	2905      	cmp	r1, #5
c0de65ba:	d108      	bne.n	c0de65ce <io_event+0x22>
c0de65bc:	4448      	add	r0, r9
c0de65be:	f000 fa05 	bl	c0de69cc <ux_process_button_event>
c0de65c2:	e006      	b.n	c0de65d2 <io_event+0x26>
c0de65c4:	f7ff fff0 	bl	c0de65a8 <app_ticker_event_callback>
c0de65c8:	f000 fa44 	bl	c0de6a54 <ux_process_ticker_event>
c0de65cc:	e001      	b.n	c0de65d2 <io_event+0x26>
c0de65ce:	f000 fa59 	bl	c0de6a84 <ux_process_default_event>
c0de65d2:	2001      	movs	r0, #1
c0de65d4:	bd80      	pop	{r7, pc}
c0de65d6:	bf00      	nop
c0de65d8:	0000078c 	.word	0x0000078c

c0de65dc <io_init>:
c0de65dc:	4802      	ldr	r0, [pc, #8]	@ (c0de65e8 <io_init+0xc>)
c0de65de:	2101      	movs	r1, #1
c0de65e0:	f809 1000 	strb.w	r1, [r9, r0]
c0de65e4:	4770      	bx	lr
c0de65e6:	bf00      	nop
c0de65e8:	0000089c 	.word	0x0000089c

c0de65ec <io_recv_command>:
c0de65ec:	b510      	push	{r4, lr}
c0de65ee:	4c09      	ldr	r4, [pc, #36]	@ (c0de6614 <io_recv_command+0x28>)
c0de65f0:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de65f4:	2801      	cmp	r0, #1
c0de65f6:	d104      	bne.n	c0de6602 <io_recv_command+0x16>
c0de65f8:	f000 fe96 	bl	c0de7328 <os_io_start>
c0de65fc:	2000      	movs	r0, #0
c0de65fe:	f809 0004 	strb.w	r0, [r9, r4]
c0de6602:	2000      	movs	r0, #0
c0de6604:	2800      	cmp	r0, #0
c0de6606:	dc03      	bgt.n	c0de6610 <io_recv_command+0x24>
c0de6608:	2001      	movs	r0, #1
c0de660a:	f7fc fe69 	bl	c0de32e0 <io_legacy_apdu_rx>
c0de660e:	e7f9      	b.n	c0de6604 <io_recv_command+0x18>
c0de6610:	bd10      	pop	{r4, pc}
c0de6612:	bf00      	nop
c0de6614:	0000089c 	.word	0x0000089c

c0de6618 <io_send_response_buffers>:
c0de6618:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de661c:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de66b0 <io_send_response_buffers+0x98>
c0de6620:	4690      	mov	r8, r2
c0de6622:	460f      	mov	r7, r1
c0de6624:	4606      	mov	r6, r0
c0de6626:	f240 140f 	movw	r4, #271	@ 0x10f
c0de662a:	2500      	movs	r5, #0
c0de662c:	b1b6      	cbz	r6, c0de665c <io_send_response_buffers+0x44>
c0de662e:	b1af      	cbz	r7, c0de665c <io_send_response_buffers+0x44>
c0de6630:	2500      	movs	r5, #0
c0de6632:	b19f      	cbz	r7, c0de665c <io_send_response_buffers+0x44>
c0de6634:	eb09 000a 	add.w	r0, r9, sl
c0de6638:	1b62      	subs	r2, r4, r5
c0de663a:	1941      	adds	r1, r0, r5
c0de663c:	4630      	mov	r0, r6
c0de663e:	f7ff fe03 	bl	c0de6248 <buffer_copy>
c0de6642:	b130      	cbz	r0, c0de6652 <io_send_response_buffers+0x3a>
c0de6644:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6648:	360c      	adds	r6, #12
c0de664a:	3f01      	subs	r7, #1
c0de664c:	4428      	add	r0, r5
c0de664e:	1a45      	subs	r5, r0, r1
c0de6650:	e7ef      	b.n	c0de6632 <io_send_response_buffers+0x1a>
c0de6652:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6656:	2600      	movs	r6, #0
c0de6658:	2700      	movs	r7, #0
c0de665a:	e7e6      	b.n	c0de662a <io_send_response_buffers+0x12>
c0de665c:	fa1f f688 	uxth.w	r6, r8
c0de6660:	eb09 000a 	add.w	r0, r9, sl
c0de6664:	4629      	mov	r1, r5
c0de6666:	4632      	mov	r2, r6
c0de6668:	f000 f9aa 	bl	c0de69c0 <write_u16_be>
c0de666c:	4811      	ldr	r0, [pc, #68]	@ (c0de66b4 <io_send_response_buffers+0x9c>)
c0de666e:	1ca9      	adds	r1, r5, #2
c0de6670:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6674:	b118      	cbz	r0, c0de667e <io_send_response_buffers+0x66>
c0de6676:	4810      	ldr	r0, [pc, #64]	@ (c0de66b8 <io_send_response_buffers+0xa0>)
c0de6678:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de667c:	b928      	cbnz	r0, c0de668a <io_send_response_buffers+0x72>
c0de667e:	f000 f81f 	bl	c0de66c0 <OUTLINED_FUNCTION_0>
c0de6682:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6686:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de668a:	f000 f819 	bl	c0de66c0 <OUTLINED_FUNCTION_0>
c0de668e:	2800      	cmp	r0, #0
c0de6690:	d40a      	bmi.n	c0de66a8 <io_send_response_buffers+0x90>
c0de6692:	480a      	ldr	r0, [pc, #40]	@ (c0de66bc <io_send_response_buffers+0xa4>)
c0de6694:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6698:	fab1 f181 	clz	r1, r1
c0de669c:	f859 0000 	ldr.w	r0, [r9, r0]
c0de66a0:	0949      	lsrs	r1, r1, #5
c0de66a2:	7001      	strb	r1, [r0, #0]
c0de66a4:	f000 fe10 	bl	c0de72c8 <os_lib_end>
c0de66a8:	20ff      	movs	r0, #255	@ 0xff
c0de66aa:	f000 fe29 	bl	c0de7300 <os_sched_exit>
c0de66ae:	bf00      	nop
c0de66b0:	000003e7 	.word	0x000003e7
c0de66b4:	000008ac 	.word	0x000008ac
c0de66b8:	000008ad 	.word	0x000008ad
c0de66bc:	000008b0 	.word	0x000008b0

c0de66c0 <OUTLINED_FUNCTION_0>:
c0de66c0:	eb09 000a 	add.w	r0, r9, sl
c0de66c4:	b289      	uxth	r1, r1
c0de66c6:	f7fc bdf7 	b.w	c0de32b8 <io_legacy_apdu_tx>

c0de66ca <app_exit>:
c0de66ca:	20ff      	movs	r0, #255	@ 0xff
c0de66cc:	f000 fe18 	bl	c0de7300 <os_sched_exit>

c0de66d0 <common_app_init>:
c0de66d0:	b580      	push	{r7, lr}
c0de66d2:	f000 fa49 	bl	c0de6b68 <nbgl_objInit>
c0de66d6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de66da:	f7fc bedb 	b.w	c0de3494 <io_seproxyhal_init>
	...

c0de66e0 <standalone_app_main>:
c0de66e0:	b5b0      	push	{r4, r5, r7, lr}
c0de66e2:	b08c      	sub	sp, #48	@ 0x30
c0de66e4:	4816      	ldr	r0, [pc, #88]	@ (c0de6740 <standalone_app_main+0x60>)
c0de66e6:	2500      	movs	r5, #0
c0de66e8:	466c      	mov	r4, sp
c0de66ea:	f809 5000 	strb.w	r5, [r9, r0]
c0de66ee:	4815      	ldr	r0, [pc, #84]	@ (c0de6744 <standalone_app_main+0x64>)
c0de66f0:	f849 5000 	str.w	r5, [r9, r0]
c0de66f4:	4814      	ldr	r0, [pc, #80]	@ (c0de6748 <standalone_app_main+0x68>)
c0de66f6:	f809 5000 	strb.w	r5, [r9, r0]
c0de66fa:	4620      	mov	r0, r4
c0de66fc:	f000 ff8a 	bl	c0de7614 <setjmp>
c0de6700:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6704:	0400      	lsls	r0, r0, #16
c0de6706:	d108      	bne.n	c0de671a <standalone_app_main+0x3a>
c0de6708:	4668      	mov	r0, sp
c0de670a:	f000 fe37 	bl	c0de737c <try_context_set>
c0de670e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6710:	f7ff ffde 	bl	c0de66d0 <common_app_init>
c0de6714:	f7f9 fdd8 	bl	c0de02c8 <app_main>
c0de6718:	e004      	b.n	c0de6724 <standalone_app_main+0x44>
c0de671a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de671c:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de6720:	f000 fe2c 	bl	c0de737c <try_context_set>
c0de6724:	f000 fe22 	bl	c0de736c <try_context_get>
c0de6728:	42a0      	cmp	r0, r4
c0de672a:	d102      	bne.n	c0de6732 <standalone_app_main+0x52>
c0de672c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de672e:	f000 fe25 	bl	c0de737c <try_context_set>
c0de6732:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6736:	b908      	cbnz	r0, c0de673c <standalone_app_main+0x5c>
c0de6738:	f7ff ffc7 	bl	c0de66ca <app_exit>
c0de673c:	f000 fa75 	bl	c0de6c2a <os_longjmp>
c0de6740:	000008ac 	.word	0x000008ac
c0de6744:	000008b0 	.word	0x000008b0
c0de6748:	000008ad 	.word	0x000008ad

c0de674c <library_app_main>:
c0de674c:	b5b0      	push	{r4, r5, r7, lr}
c0de674e:	b08c      	sub	sp, #48	@ 0x30
c0de6750:	466c      	mov	r4, sp
c0de6752:	4605      	mov	r5, r0
c0de6754:	4620      	mov	r0, r4
c0de6756:	f000 ff5d 	bl	c0de7614 <setjmp>
c0de675a:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de675e:	0400      	lsls	r0, r0, #16
c0de6760:	d124      	bne.n	c0de67ac <library_app_main+0x60>
c0de6762:	4668      	mov	r0, sp
c0de6764:	f000 fe0a 	bl	c0de737c <try_context_set>
c0de6768:	900a      	str	r0, [sp, #40]	@ 0x28
c0de676a:	6868      	ldr	r0, [r5, #4]
c0de676c:	2804      	cmp	r0, #4
c0de676e:	d024      	beq.n	c0de67ba <library_app_main+0x6e>
c0de6770:	2803      	cmp	r0, #3
c0de6772:	d026      	beq.n	c0de67c2 <library_app_main+0x76>
c0de6774:	2802      	cmp	r0, #2
c0de6776:	d127      	bne.n	c0de67c8 <library_app_main+0x7c>
c0de6778:	68e8      	ldr	r0, [r5, #12]
c0de677a:	f7fa fe1f 	bl	c0de13bc <swap_copy_transaction_parameters>
c0de677e:	b318      	cbz	r0, c0de67c8 <library_app_main+0x7c>
c0de6780:	4816      	ldr	r0, [pc, #88]	@ (c0de67dc <library_app_main+0x90>)
c0de6782:	2201      	movs	r2, #1
c0de6784:	f809 2000 	strb.w	r2, [r9, r0]
c0de6788:	4815      	ldr	r0, [pc, #84]	@ (c0de67e0 <library_app_main+0x94>)
c0de678a:	2200      	movs	r2, #0
c0de678c:	f809 2000 	strb.w	r2, [r9, r0]
c0de6790:	4a14      	ldr	r2, [pc, #80]	@ (c0de67e4 <library_app_main+0x98>)
c0de6792:	68e8      	ldr	r0, [r5, #12]
c0de6794:	3020      	adds	r0, #32
c0de6796:	f849 0002 	str.w	r0, [r9, r2]
c0de679a:	f7ff ff99 	bl	c0de66d0 <common_app_init>
c0de679e:	4812      	ldr	r0, [pc, #72]	@ (c0de67e8 <library_app_main+0x9c>)
c0de67a0:	4478      	add	r0, pc
c0de67a2:	f7fe fc2b 	bl	c0de4ffc <nbgl_useCaseSpinner>
c0de67a6:	f7f9 fd8f 	bl	c0de02c8 <app_main>
c0de67aa:	e00d      	b.n	c0de67c8 <library_app_main+0x7c>
c0de67ac:	2000      	movs	r0, #0
c0de67ae:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de67b2:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de67b4:	f000 fde2 	bl	c0de737c <try_context_set>
c0de67b8:	e006      	b.n	c0de67c8 <library_app_main+0x7c>
c0de67ba:	68e8      	ldr	r0, [r5, #12]
c0de67bc:	f7fa fdd2 	bl	c0de1364 <swap_handle_get_printable_amount>
c0de67c0:	e002      	b.n	c0de67c8 <library_app_main+0x7c>
c0de67c2:	68e8      	ldr	r0, [r5, #12]
c0de67c4:	f7fa fd74 	bl	c0de12b0 <swap_handle_check_address>
c0de67c8:	f000 fdd0 	bl	c0de736c <try_context_get>
c0de67cc:	42a0      	cmp	r0, r4
c0de67ce:	d102      	bne.n	c0de67d6 <library_app_main+0x8a>
c0de67d0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de67d2:	f000 fdd3 	bl	c0de737c <try_context_set>
c0de67d6:	f000 fd77 	bl	c0de72c8 <os_lib_end>
c0de67da:	bf00      	nop
c0de67dc:	000008ac 	.word	0x000008ac
c0de67e0:	000008ad 	.word	0x000008ad
c0de67e4:	000008b0 	.word	0x000008b0
c0de67e8:	00001160 	.word	0x00001160

c0de67ec <apdu_parser>:
c0de67ec:	2a04      	cmp	r2, #4
c0de67ee:	d316      	bcc.n	c0de681e <apdu_parser+0x32>
c0de67f0:	d102      	bne.n	c0de67f8 <apdu_parser+0xc>
c0de67f2:	2300      	movs	r3, #0
c0de67f4:	7103      	strb	r3, [r0, #4]
c0de67f6:	e004      	b.n	c0de6802 <apdu_parser+0x16>
c0de67f8:	790b      	ldrb	r3, [r1, #4]
c0de67fa:	3a05      	subs	r2, #5
c0de67fc:	429a      	cmp	r2, r3
c0de67fe:	7103      	strb	r3, [r0, #4]
c0de6800:	d10d      	bne.n	c0de681e <apdu_parser+0x32>
c0de6802:	780a      	ldrb	r2, [r1, #0]
c0de6804:	2b00      	cmp	r3, #0
c0de6806:	7002      	strb	r2, [r0, #0]
c0de6808:	784a      	ldrb	r2, [r1, #1]
c0de680a:	7042      	strb	r2, [r0, #1]
c0de680c:	788a      	ldrb	r2, [r1, #2]
c0de680e:	7082      	strb	r2, [r0, #2]
c0de6810:	bf18      	it	ne
c0de6812:	1d4b      	addne	r3, r1, #5
c0de6814:	78c9      	ldrb	r1, [r1, #3]
c0de6816:	6083      	str	r3, [r0, #8]
c0de6818:	70c1      	strb	r1, [r0, #3]
c0de681a:	2001      	movs	r0, #1
c0de681c:	4770      	bx	lr
c0de681e:	2000      	movs	r0, #0
c0de6820:	4770      	bx	lr

c0de6822 <read_u32_be>:
c0de6822:	5c42      	ldrb	r2, [r0, r1]
c0de6824:	4408      	add	r0, r1
c0de6826:	7841      	ldrb	r1, [r0, #1]
c0de6828:	7883      	ldrb	r3, [r0, #2]
c0de682a:	78c0      	ldrb	r0, [r0, #3]
c0de682c:	0409      	lsls	r1, r1, #16
c0de682e:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6832:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6836:	4408      	add	r0, r1
c0de6838:	4770      	bx	lr

c0de683a <read_u64_be>:
c0de683a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de683c:	1842      	adds	r2, r0, r1
c0de683e:	5c40      	ldrb	r0, [r0, r1]
c0de6840:	7917      	ldrb	r7, [r2, #4]
c0de6842:	7953      	ldrb	r3, [r2, #5]
c0de6844:	7854      	ldrb	r4, [r2, #1]
c0de6846:	7895      	ldrb	r5, [r2, #2]
c0de6848:	78d6      	ldrb	r6, [r2, #3]
c0de684a:	063f      	lsls	r7, r7, #24
c0de684c:	0421      	lsls	r1, r4, #16
c0de684e:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6852:	7997      	ldrb	r7, [r2, #6]
c0de6854:	79d2      	ldrb	r2, [r2, #7]
c0de6856:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de685a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de685e:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6862:	1981      	adds	r1, r0, r6
c0de6864:	441a      	add	r2, r3
c0de6866:	4610      	mov	r0, r2
c0de6868:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de686a <read_u16_le>:
c0de686a:	5c42      	ldrb	r2, [r0, r1]
c0de686c:	4408      	add	r0, r1
c0de686e:	7840      	ldrb	r0, [r0, #1]
c0de6870:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6874:	b280      	uxth	r0, r0
c0de6876:	4770      	bx	lr

c0de6878 <read_u32_le>:
c0de6878:	5c42      	ldrb	r2, [r0, r1]
c0de687a:	4408      	add	r0, r1
c0de687c:	7841      	ldrb	r1, [r0, #1]
c0de687e:	7883      	ldrb	r3, [r0, #2]
c0de6880:	78c0      	ldrb	r0, [r0, #3]
c0de6882:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6886:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de688a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de688e:	4770      	bx	lr

c0de6890 <read_u64_le>:
c0de6890:	b5b0      	push	{r4, r5, r7, lr}
c0de6892:	5c42      	ldrb	r2, [r0, r1]
c0de6894:	4401      	add	r1, r0
c0de6896:	7848      	ldrb	r0, [r1, #1]
c0de6898:	788b      	ldrb	r3, [r1, #2]
c0de689a:	790d      	ldrb	r5, [r1, #4]
c0de689c:	78cc      	ldrb	r4, [r1, #3]
c0de689e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de68a2:	794a      	ldrb	r2, [r1, #5]
c0de68a4:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de68a8:	798b      	ldrb	r3, [r1, #6]
c0de68aa:	79c9      	ldrb	r1, [r1, #7]
c0de68ac:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de68b0:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de68b4:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de68b8:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de68bc:	bdb0      	pop	{r4, r5, r7, pc}

c0de68be <send_swap_error_simple>:
c0de68be:	b082      	sub	sp, #8
c0de68c0:	2300      	movs	r3, #0
c0de68c2:	9300      	str	r3, [sp, #0]
c0de68c4:	2300      	movs	r3, #0
c0de68c6:	f000 f801 	bl	c0de68cc <send_swap_error_with_buffers>
	...

c0de68cc <send_swap_error_with_buffers>:
c0de68cc:	b09c      	sub	sp, #112	@ 0x70
c0de68ce:	4604      	mov	r4, r0
c0de68d0:	4815      	ldr	r0, [pc, #84]	@ (c0de6928 <send_swap_error_with_buffers+0x5c>)
c0de68d2:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de68d6:	b320      	cbz	r0, c0de6922 <send_swap_error_with_buffers+0x56>
c0de68d8:	4814      	ldr	r0, [pc, #80]	@ (c0de692c <send_swap_error_with_buffers+0x60>)
c0de68da:	461d      	mov	r5, r3
c0de68dc:	2301      	movs	r3, #1
c0de68de:	466e      	mov	r6, sp
c0de68e0:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de68e2:	f809 3000 	strb.w	r3, [r9, r0]
c0de68e6:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de68ea:	f106 0008 	add.w	r0, r6, #8
c0de68ee:	2164      	movs	r1, #100	@ 0x64
c0de68f0:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de68f4:	f000 fe4a 	bl	c0de758c <__aeabi_memclr>
c0de68f8:	2002      	movs	r0, #2
c0de68fa:	4629      	mov	r1, r5
c0de68fc:	9001      	str	r0, [sp, #4]
c0de68fe:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6902:	2f08      	cmp	r7, #8
c0de6904:	9000      	str	r0, [sp, #0]
c0de6906:	bf28      	it	cs
c0de6908:	2708      	movcs	r7, #8
c0de690a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de690e:	0082      	lsls	r2, r0, #2
c0de6910:	f106 000c 	add.w	r0, r6, #12
c0de6914:	f000 fe30 	bl	c0de7578 <__aeabi_memcpy>
c0de6918:	1c79      	adds	r1, r7, #1
c0de691a:	4630      	mov	r0, r6
c0de691c:	4622      	mov	r2, r4
c0de691e:	f7ff fe7b 	bl	c0de6618 <io_send_response_buffers>
c0de6922:	2000      	movs	r0, #0
c0de6924:	f000 fcec 	bl	c0de7300 <os_sched_exit>
c0de6928:	000008ac 	.word	0x000008ac
c0de692c:	000008ad 	.word	0x000008ad

c0de6930 <swap_str_to_u64>:
c0de6930:	2908      	cmp	r1, #8
c0de6932:	d812      	bhi.n	c0de695a <swap_str_to_u64+0x2a>
c0de6934:	b570      	push	{r4, r5, r6, lr}
c0de6936:	2500      	movs	r5, #0
c0de6938:	460b      	mov	r3, r1
c0de693a:	2400      	movs	r4, #0
c0de693c:	b14b      	cbz	r3, c0de6952 <swap_str_to_u64+0x22>
c0de693e:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6942:	0224      	lsls	r4, r4, #8
c0de6944:	3b01      	subs	r3, #1
c0de6946:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de694a:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de694e:	4635      	mov	r5, r6
c0de6950:	e7f4      	b.n	c0de693c <swap_str_to_u64+0xc>
c0de6952:	e9c2 5400 	strd	r5, r4, [r2]
c0de6956:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de695a:	2000      	movs	r0, #0
c0de695c:	2909      	cmp	r1, #9
c0de695e:	bf38      	it	cc
c0de6960:	2001      	movcc	r0, #1
c0de6962:	4770      	bx	lr

c0de6964 <varint_read>:
c0de6964:	b510      	push	{r4, lr}
c0de6966:	b1d9      	cbz	r1, c0de69a0 <varint_read+0x3c>
c0de6968:	4614      	mov	r4, r2
c0de696a:	4602      	mov	r2, r0
c0de696c:	7800      	ldrb	r0, [r0, #0]
c0de696e:	28ff      	cmp	r0, #255	@ 0xff
c0de6970:	d00c      	beq.n	c0de698c <varint_read+0x28>
c0de6972:	28fe      	cmp	r0, #254	@ 0xfe
c0de6974:	d012      	beq.n	c0de699c <varint_read+0x38>
c0de6976:	28fd      	cmp	r0, #253	@ 0xfd
c0de6978:	d115      	bne.n	c0de69a6 <varint_read+0x42>
c0de697a:	2903      	cmp	r1, #3
c0de697c:	d310      	bcc.n	c0de69a0 <varint_read+0x3c>
c0de697e:	4610      	mov	r0, r2
c0de6980:	2101      	movs	r1, #1
c0de6982:	f7ff ff72 	bl	c0de686a <read_u16_le>
c0de6986:	2100      	movs	r1, #0
c0de6988:	2203      	movs	r2, #3
c0de698a:	e015      	b.n	c0de69b8 <varint_read+0x54>
c0de698c:	2909      	cmp	r1, #9
c0de698e:	d307      	bcc.n	c0de69a0 <varint_read+0x3c>
c0de6990:	4610      	mov	r0, r2
c0de6992:	2101      	movs	r1, #1
c0de6994:	f7ff ff7c 	bl	c0de6890 <read_u64_le>
c0de6998:	2209      	movs	r2, #9
c0de699a:	e00d      	b.n	c0de69b8 <varint_read+0x54>
c0de699c:	2905      	cmp	r1, #5
c0de699e:	d205      	bcs.n	c0de69ac <varint_read+0x48>
c0de69a0:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de69a4:	e00a      	b.n	c0de69bc <varint_read+0x58>
c0de69a6:	2100      	movs	r1, #0
c0de69a8:	2201      	movs	r2, #1
c0de69aa:	e005      	b.n	c0de69b8 <varint_read+0x54>
c0de69ac:	4610      	mov	r0, r2
c0de69ae:	2101      	movs	r1, #1
c0de69b0:	f7ff ff62 	bl	c0de6878 <read_u32_le>
c0de69b4:	2100      	movs	r1, #0
c0de69b6:	2205      	movs	r2, #5
c0de69b8:	e9c4 0100 	strd	r0, r1, [r4]
c0de69bc:	4610      	mov	r0, r2
c0de69be:	bd10      	pop	{r4, pc}

c0de69c0 <write_u16_be>:
c0de69c0:	0a13      	lsrs	r3, r2, #8
c0de69c2:	5443      	strb	r3, [r0, r1]
c0de69c4:	4408      	add	r0, r1
c0de69c6:	7042      	strb	r2, [r0, #1]
c0de69c8:	4770      	bx	lr
	...

c0de69cc <ux_process_button_event>:
c0de69cc:	b5b0      	push	{r4, r5, r7, lr}
c0de69ce:	4604      	mov	r4, r0
c0de69d0:	2001      	movs	r0, #1
c0de69d2:	f000 f815 	bl	c0de6a00 <ux_forward_event>
c0de69d6:	4605      	mov	r5, r0
c0de69d8:	f000 f8cb 	bl	c0de6b72 <nbgl_objAllowDrawing>
c0de69dc:	b165      	cbz	r5, c0de69f8 <ux_process_button_event+0x2c>
c0de69de:	4807      	ldr	r0, [pc, #28]	@ (c0de69fc <ux_process_button_event+0x30>)
c0de69e0:	2164      	movs	r1, #100	@ 0x64
c0de69e2:	f859 0000 	ldr.w	r0, [r9, r0]
c0de69e6:	4341      	muls	r1, r0
c0de69e8:	78e0      	ldrb	r0, [r4, #3]
c0de69ea:	0840      	lsrs	r0, r0, #1
c0de69ec:	f000 f90c 	bl	c0de6c08 <nbgl_buttonsHandler>
c0de69f0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de69f4:	f000 b8b3 	b.w	c0de6b5e <nbgl_refresh>
c0de69f8:	bdb0      	pop	{r4, r5, r7, pc}
c0de69fa:	bf00      	nop
c0de69fc:	000008b4 	.word	0x000008b4

c0de6a00 <ux_forward_event>:
c0de6a00:	b5b0      	push	{r4, r5, r7, lr}
c0de6a02:	4604      	mov	r4, r0
c0de6a04:	4812      	ldr	r0, [pc, #72]	@ (c0de6a50 <ux_forward_event+0x50>)
c0de6a06:	2101      	movs	r1, #1
c0de6a08:	f809 1000 	strb.w	r1, [r9, r0]
c0de6a0c:	eb09 0500 	add.w	r5, r9, r0
c0de6a10:	2000      	movs	r0, #0
c0de6a12:	6068      	str	r0, [r5, #4]
c0de6a14:	4628      	mov	r0, r5
c0de6a16:	f000 fc4d 	bl	c0de72b4 <os_ux>
c0de6a1a:	2004      	movs	r0, #4
c0de6a1c:	f000 fcb8 	bl	c0de7390 <os_sched_last_status>
c0de6a20:	2869      	cmp	r0, #105	@ 0x69
c0de6a22:	6068      	str	r0, [r5, #4]
c0de6a24:	d108      	bne.n	c0de6a38 <ux_forward_event+0x38>
c0de6a26:	2001      	movs	r0, #1
c0de6a28:	f000 f8a3 	bl	c0de6b72 <nbgl_objAllowDrawing>
c0de6a2c:	f000 f8b0 	bl	c0de6b90 <nbgl_screenRedraw>
c0de6a30:	f000 f895 	bl	c0de6b5e <nbgl_refresh>
c0de6a34:	2000      	movs	r0, #0
c0de6a36:	bdb0      	pop	{r4, r5, r7, pc}
c0de6a38:	b144      	cbz	r4, c0de6a4c <ux_forward_event+0x4c>
c0de6a3a:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6a3e:	bf18      	it	ne
c0de6a40:	2101      	movne	r1, #1
c0de6a42:	2800      	cmp	r0, #0
c0de6a44:	bf18      	it	ne
c0de6a46:	2001      	movne	r0, #1
c0de6a48:	4008      	ands	r0, r1
c0de6a4a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6a4c:	2001      	movs	r0, #1
c0de6a4e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6a50:	000008a0 	.word	0x000008a0

c0de6a54 <ux_process_ticker_event>:
c0de6a54:	b510      	push	{r4, lr}
c0de6a56:	480a      	ldr	r0, [pc, #40]	@ (c0de6a80 <ux_process_ticker_event+0x2c>)
c0de6a58:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6a5c:	3101      	adds	r1, #1
c0de6a5e:	f849 1000 	str.w	r1, [r9, r0]
c0de6a62:	2001      	movs	r0, #1
c0de6a64:	f7ff ffcc 	bl	c0de6a00 <ux_forward_event>
c0de6a68:	4604      	mov	r4, r0
c0de6a6a:	f000 f882 	bl	c0de6b72 <nbgl_objAllowDrawing>
c0de6a6e:	b134      	cbz	r4, c0de6a7e <ux_process_ticker_event+0x2a>
c0de6a70:	2064      	movs	r0, #100	@ 0x64
c0de6a72:	f000 f897 	bl	c0de6ba4 <nbgl_screenHandler>
c0de6a76:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6a7a:	f000 b870 	b.w	c0de6b5e <nbgl_refresh>
c0de6a7e:	bd10      	pop	{r4, pc}
c0de6a80:	000008b4 	.word	0x000008b4

c0de6a84 <ux_process_default_event>:
c0de6a84:	2000      	movs	r0, #0
c0de6a86:	f7ff bfbb 	b.w	c0de6a00 <ux_forward_event>

c0de6a8a <hash_iovec_ex>:
c0de6a8a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6a8e:	468a      	mov	sl, r1
c0de6a90:	4611      	mov	r1, r2
c0de6a92:	461a      	mov	r2, r3
c0de6a94:	4605      	mov	r5, r0
c0de6a96:	f000 f84d 	bl	c0de6b34 <cx_hash_init_ex>
c0de6a9a:	4607      	mov	r7, r0
c0de6a9c:	b9a8      	cbnz	r0, c0de6aca <hash_iovec_ex+0x40>
c0de6a9e:	f10d 0820 	add.w	r8, sp, #32
c0de6aa2:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6aa6:	1d04      	adds	r4, r0, #4
c0de6aa8:	b156      	cbz	r6, c0de6ac0 <hash_iovec_ex+0x36>
c0de6aaa:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6aae:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6ab2:	4628      	mov	r0, r5
c0de6ab4:	f000 f843 	bl	c0de6b3e <cx_hash_update>
c0de6ab8:	3e01      	subs	r6, #1
c0de6aba:	2800      	cmp	r0, #0
c0de6abc:	d0f4      	beq.n	c0de6aa8 <hash_iovec_ex+0x1e>
c0de6abe:	e003      	b.n	c0de6ac8 <hash_iovec_ex+0x3e>
c0de6ac0:	4628      	mov	r0, r5
c0de6ac2:	4641      	mov	r1, r8
c0de6ac4:	f000 f831 	bl	c0de6b2a <cx_hash_final>
c0de6ac8:	4607      	mov	r7, r0
c0de6aca:	4628      	mov	r0, r5
c0de6acc:	4651      	mov	r1, sl
c0de6ace:	f000 fd6b 	bl	c0de75a8 <explicit_bzero>
c0de6ad2:	4638      	mov	r0, r7
c0de6ad4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6ad8 <cx_keccak_256_hash_iovec>:
c0de6ad8:	b580      	push	{r7, lr}
c0de6ada:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6adc:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6ae0:	a804      	add	r0, sp, #16
c0de6ae2:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6ae6:	2206      	movs	r2, #6
c0de6ae8:	2320      	movs	r3, #32
c0de6aea:	f7ff ffce 	bl	c0de6a8a <hash_iovec_ex>
c0de6aee:	b06e      	add	sp, #440	@ 0x1b8
c0de6af0:	bd80      	pop	{r7, pc}

c0de6af2 <cx_blake2b_512_hash_iovec>:
c0de6af2:	b580      	push	{r7, lr}
c0de6af4:	b0c4      	sub	sp, #272	@ 0x110
c0de6af6:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6afa:	a804      	add	r0, sp, #16
c0de6afc:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6b00:	2209      	movs	r2, #9
c0de6b02:	2340      	movs	r3, #64	@ 0x40
c0de6b04:	f7ff ffc1 	bl	c0de6a8a <hash_iovec_ex>
c0de6b08:	b044      	add	sp, #272	@ 0x110
c0de6b0a:	bd80      	pop	{r7, pc}

c0de6b0c <cx_ecdsa_sign_no_throw>:
c0de6b0c:	b403      	push	{r0, r1}
c0de6b0e:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6b12:	f000 b81d 	b.w	c0de6b50 <cx_trampoline_helper>

c0de6b16 <cx_ecfp_generate_pair2_no_throw>:
c0de6b16:	b403      	push	{r0, r1}
c0de6b18:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6b1c:	f000 b818 	b.w	c0de6b50 <cx_trampoline_helper>

c0de6b20 <cx_ecfp_init_private_key_no_throw>:
c0de6b20:	b403      	push	{r0, r1}
c0de6b22:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6b26:	f000 b813 	b.w	c0de6b50 <cx_trampoline_helper>

c0de6b2a <cx_hash_final>:
c0de6b2a:	b403      	push	{r0, r1}
c0de6b2c:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6b30:	f000 b80e 	b.w	c0de6b50 <cx_trampoline_helper>

c0de6b34 <cx_hash_init_ex>:
c0de6b34:	b403      	push	{r0, r1}
c0de6b36:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6b3a:	f000 b809 	b.w	c0de6b50 <cx_trampoline_helper>

c0de6b3e <cx_hash_update>:
c0de6b3e:	b403      	push	{r0, r1}
c0de6b40:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6b44:	f000 b804 	b.w	c0de6b50 <cx_trampoline_helper>

c0de6b48 <cx_aes_siv_reset>:
c0de6b48:	b403      	push	{r0, r1}
c0de6b4a:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6b4e:	e7ff      	b.n	c0de6b50 <cx_trampoline_helper>

c0de6b50 <cx_trampoline_helper>:
c0de6b50:	4900      	ldr	r1, [pc, #0]	@ (c0de6b54 <cx_trampoline_helper+0x4>)
c0de6b52:	4708      	bx	r1
c0de6b54:	00808001 	.word	0x00808001

c0de6b58 <assert_exit>:
c0de6b58:	20ff      	movs	r0, #255	@ 0xff
c0de6b5a:	f000 fbd1 	bl	c0de7300 <os_sched_exit>

c0de6b5e <nbgl_refresh>:
c0de6b5e:	b403      	push	{r0, r1}
c0de6b60:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6b64:	f000 b85a 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6b68 <nbgl_objInit>:
c0de6b68:	b403      	push	{r0, r1}
c0de6b6a:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6b6e:	f000 b855 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6b72 <nbgl_objAllowDrawing>:
c0de6b72:	b403      	push	{r0, r1}
c0de6b74:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6b78:	f000 b850 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6b7c <nbgl_screenSet>:
c0de6b7c:	b403      	push	{r0, r1}
c0de6b7e:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6b82:	f000 b84b 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6b86 <nbgl_screenPush>:
c0de6b86:	b403      	push	{r0, r1}
c0de6b88:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6b8c:	f000 b846 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6b90 <nbgl_screenRedraw>:
c0de6b90:	b403      	push	{r0, r1}
c0de6b92:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6b96:	f000 b841 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6b9a <nbgl_screenPop>:
c0de6b9a:	b403      	push	{r0, r1}
c0de6b9c:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6ba0:	f000 b83c 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6ba4 <nbgl_screenHandler>:
c0de6ba4:	b403      	push	{r0, r1}
c0de6ba6:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6baa:	f000 b837 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bae <nbgl_objPoolGet>:
c0de6bae:	b403      	push	{r0, r1}
c0de6bb0:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6bb4:	f000 b832 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bb8 <nbgl_containerPoolGet>:
c0de6bb8:	b403      	push	{r0, r1}
c0de6bba:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6bbe:	f000 b82d 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bc2 <nbgl_getFont>:
c0de6bc2:	b403      	push	{r0, r1}
c0de6bc4:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6bc8:	f000 b828 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bcc <nbgl_getFontLineHeight>:
c0de6bcc:	b403      	push	{r0, r1}
c0de6bce:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6bd2:	f000 b823 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bd6 <nbgl_getTextNbLinesInWidth>:
c0de6bd6:	b403      	push	{r0, r1}
c0de6bd8:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6bdc:	f000 b81e 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6be0 <nbgl_getTextNbPagesInWidth>:
c0de6be0:	b403      	push	{r0, r1}
c0de6be2:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6be6:	f000 b819 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bea <nbgl_getTextWidth>:
c0de6bea:	b403      	push	{r0, r1}
c0de6bec:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6bf0:	f000 b814 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bf4 <nbgl_getTextMaxLenInNbLines>:
c0de6bf4:	b403      	push	{r0, r1}
c0de6bf6:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6bfa:	f000 b80f 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6bfe <nbgl_textReduceOnNbLines>:
c0de6bfe:	b403      	push	{r0, r1}
c0de6c00:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6c04:	f000 b80a 	b.w	c0de6c1c <nbgl_trampoline_helper>

c0de6c08 <nbgl_buttonsHandler>:
c0de6c08:	b403      	push	{r0, r1}
c0de6c0a:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6c0e:	f000 b805 	b.w	c0de6c1c <nbgl_trampoline_helper>
	...

c0de6c14 <pic_init>:
c0de6c14:	b403      	push	{r0, r1}
c0de6c16:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6c1a:	e7ff      	b.n	c0de6c1c <nbgl_trampoline_helper>

c0de6c1c <nbgl_trampoline_helper>:
c0de6c1c:	4900      	ldr	r1, [pc, #0]	@ (c0de6c20 <nbgl_trampoline_helper+0x4>)
c0de6c1e:	4708      	bx	r1
c0de6c20:	00808001 	.word	0x00808001

c0de6c24 <os_boot>:
c0de6c24:	2000      	movs	r0, #0
c0de6c26:	f000 bba9 	b.w	c0de737c <try_context_set>

c0de6c2a <os_longjmp>:
c0de6c2a:	4604      	mov	r4, r0
c0de6c2c:	f000 fb9e 	bl	c0de736c <try_context_get>
c0de6c30:	4621      	mov	r1, r4
c0de6c32:	f000 fcf5 	bl	c0de7620 <longjmp>
	...

c0de6c38 <os_explicit_zero_BSS_segment>:
c0de6c38:	4803      	ldr	r0, [pc, #12]	@ (c0de6c48 <os_explicit_zero_BSS_segment+0x10>)
c0de6c3a:	4904      	ldr	r1, [pc, #16]	@ (c0de6c4c <os_explicit_zero_BSS_segment+0x14>)
c0de6c3c:	4448      	add	r0, r9
c0de6c3e:	4449      	add	r1, r9
c0de6c40:	1a09      	subs	r1, r1, r0
c0de6c42:	f000 bcb1 	b.w	c0de75a8 <explicit_bzero>
c0de6c46:	bf00      	nop
c0de6c48:	00000000 	.word	0x00000000
c0de6c4c:	000008b8 	.word	0x000008b8

c0de6c50 <snprintf>:
c0de6c50:	b081      	sub	sp, #4
c0de6c52:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6c56:	b087      	sub	sp, #28
c0de6c58:	2800      	cmp	r0, #0
c0de6c5a:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6c5c:	f000 817a 	beq.w	c0de6f54 <snprintf+0x304>
c0de6c60:	460d      	mov	r5, r1
c0de6c62:	2900      	cmp	r1, #0
c0de6c64:	f000 8176 	beq.w	c0de6f54 <snprintf+0x304>
c0de6c68:	4629      	mov	r1, r5
c0de6c6a:	4616      	mov	r6, r2
c0de6c6c:	4604      	mov	r4, r0
c0de6c6e:	f000 fc8d 	bl	c0de758c <__aeabi_memclr>
c0de6c72:	f1b5 0801 	subs.w	r8, r5, #1
c0de6c76:	f000 816d 	beq.w	c0de6f54 <snprintf+0x304>
c0de6c7a:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6c7c:	9002      	str	r0, [sp, #8]
c0de6c7e:	7830      	ldrb	r0, [r6, #0]
c0de6c80:	2800      	cmp	r0, #0
c0de6c82:	f000 8167 	beq.w	c0de6f54 <snprintf+0x304>
c0de6c86:	2700      	movs	r7, #0
c0de6c88:	b128      	cbz	r0, c0de6c96 <snprintf+0x46>
c0de6c8a:	2825      	cmp	r0, #37	@ 0x25
c0de6c8c:	d003      	beq.n	c0de6c96 <snprintf+0x46>
c0de6c8e:	19f0      	adds	r0, r6, r7
c0de6c90:	3701      	adds	r7, #1
c0de6c92:	7840      	ldrb	r0, [r0, #1]
c0de6c94:	e7f8      	b.n	c0de6c88 <snprintf+0x38>
c0de6c96:	4547      	cmp	r7, r8
c0de6c98:	bf28      	it	cs
c0de6c9a:	4647      	movcs	r7, r8
c0de6c9c:	4620      	mov	r0, r4
c0de6c9e:	4631      	mov	r1, r6
c0de6ca0:	463a      	mov	r2, r7
c0de6ca2:	f000 fc6b 	bl	c0de757c <__aeabi_memmove>
c0de6ca6:	ebb8 0807 	subs.w	r8, r8, r7
c0de6caa:	f000 8153 	beq.w	c0de6f54 <snprintf+0x304>
c0de6cae:	5df1      	ldrb	r1, [r6, r7]
c0de6cb0:	19f0      	adds	r0, r6, r7
c0de6cb2:	443c      	add	r4, r7
c0de6cb4:	4606      	mov	r6, r0
c0de6cb6:	2925      	cmp	r1, #37	@ 0x25
c0de6cb8:	d1e1      	bne.n	c0de6c7e <snprintf+0x2e>
c0de6cba:	1c41      	adds	r1, r0, #1
c0de6cbc:	f04f 0b00 	mov.w	fp, #0
c0de6cc0:	f04f 0e20 	mov.w	lr, #32
c0de6cc4:	2500      	movs	r5, #0
c0de6cc6:	2600      	movs	r6, #0
c0de6cc8:	3101      	adds	r1, #1
c0de6cca:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6cce:	4632      	mov	r2, r6
c0de6cd0:	3101      	adds	r1, #1
c0de6cd2:	2600      	movs	r6, #0
c0de6cd4:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6cd6:	d0f8      	beq.n	c0de6cca <snprintf+0x7a>
c0de6cd8:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6cdc:	2e0a      	cmp	r6, #10
c0de6cde:	d313      	bcc.n	c0de6d08 <snprintf+0xb8>
c0de6ce0:	2b25      	cmp	r3, #37	@ 0x25
c0de6ce2:	d046      	beq.n	c0de6d72 <snprintf+0x122>
c0de6ce4:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6ce6:	d01f      	beq.n	c0de6d28 <snprintf+0xd8>
c0de6ce8:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6cea:	d129      	bne.n	c0de6d40 <snprintf+0xf0>
c0de6cec:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6cf0:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6cf2:	d13c      	bne.n	c0de6d6e <snprintf+0x11e>
c0de6cf4:	780a      	ldrb	r2, [r1, #0]
c0de6cf6:	2a48      	cmp	r2, #72	@ 0x48
c0de6cf8:	d003      	beq.n	c0de6d02 <snprintf+0xb2>
c0de6cfa:	2a73      	cmp	r2, #115	@ 0x73
c0de6cfc:	d001      	beq.n	c0de6d02 <snprintf+0xb2>
c0de6cfe:	2a68      	cmp	r2, #104	@ 0x68
c0de6d00:	d135      	bne.n	c0de6d6e <snprintf+0x11e>
c0de6d02:	9a02      	ldr	r2, [sp, #8]
c0de6d04:	2601      	movs	r6, #1
c0de6d06:	e017      	b.n	c0de6d38 <snprintf+0xe8>
c0de6d08:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6d0c:	ea56 060b 	orrs.w	r6, r6, fp
c0de6d10:	bf08      	it	eq
c0de6d12:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6d16:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6d1a:	3901      	subs	r1, #1
c0de6d1c:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6d20:	4616      	mov	r6, r2
c0de6d22:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6d26:	e7cf      	b.n	c0de6cc8 <snprintf+0x78>
c0de6d28:	460b      	mov	r3, r1
c0de6d2a:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6d2e:	2a73      	cmp	r2, #115	@ 0x73
c0de6d30:	d11d      	bne.n	c0de6d6e <snprintf+0x11e>
c0de6d32:	9a02      	ldr	r2, [sp, #8]
c0de6d34:	2602      	movs	r6, #2
c0de6d36:	4619      	mov	r1, r3
c0de6d38:	1d13      	adds	r3, r2, #4
c0de6d3a:	9302      	str	r3, [sp, #8]
c0de6d3c:	6815      	ldr	r5, [r2, #0]
c0de6d3e:	e7c3      	b.n	c0de6cc8 <snprintf+0x78>
c0de6d40:	2b48      	cmp	r3, #72	@ 0x48
c0de6d42:	d018      	beq.n	c0de6d76 <snprintf+0x126>
c0de6d44:	2b58      	cmp	r3, #88	@ 0x58
c0de6d46:	d019      	beq.n	c0de6d7c <snprintf+0x12c>
c0de6d48:	2b63      	cmp	r3, #99	@ 0x63
c0de6d4a:	d020      	beq.n	c0de6d8e <snprintf+0x13e>
c0de6d4c:	2b64      	cmp	r3, #100	@ 0x64
c0de6d4e:	d02a      	beq.n	c0de6da6 <snprintf+0x156>
c0de6d50:	2b68      	cmp	r3, #104	@ 0x68
c0de6d52:	d036      	beq.n	c0de6dc2 <snprintf+0x172>
c0de6d54:	2b70      	cmp	r3, #112	@ 0x70
c0de6d56:	d006      	beq.n	c0de6d66 <snprintf+0x116>
c0de6d58:	2b73      	cmp	r3, #115	@ 0x73
c0de6d5a:	d037      	beq.n	c0de6dcc <snprintf+0x17c>
c0de6d5c:	2b75      	cmp	r3, #117	@ 0x75
c0de6d5e:	f000 8081 	beq.w	c0de6e64 <snprintf+0x214>
c0de6d62:	2b78      	cmp	r3, #120	@ 0x78
c0de6d64:	d103      	bne.n	c0de6d6e <snprintf+0x11e>
c0de6d66:	9400      	str	r4, [sp, #0]
c0de6d68:	f04f 0c00 	mov.w	ip, #0
c0de6d6c:	e009      	b.n	c0de6d82 <snprintf+0x132>
c0de6d6e:	1e4e      	subs	r6, r1, #1
c0de6d70:	e785      	b.n	c0de6c7e <snprintf+0x2e>
c0de6d72:	2025      	movs	r0, #37	@ 0x25
c0de6d74:	e00f      	b.n	c0de6d96 <snprintf+0x146>
c0de6d76:	487b      	ldr	r0, [pc, #492]	@ (c0de6f64 <snprintf+0x314>)
c0de6d78:	4478      	add	r0, pc
c0de6d7a:	e024      	b.n	c0de6dc6 <snprintf+0x176>
c0de6d7c:	f04f 0c01 	mov.w	ip, #1
c0de6d80:	9400      	str	r4, [sp, #0]
c0de6d82:	9a02      	ldr	r2, [sp, #8]
c0de6d84:	2400      	movs	r4, #0
c0de6d86:	1d13      	adds	r3, r2, #4
c0de6d88:	9302      	str	r3, [sp, #8]
c0de6d8a:	2310      	movs	r3, #16
c0de6d8c:	e072      	b.n	c0de6e74 <snprintf+0x224>
c0de6d8e:	9802      	ldr	r0, [sp, #8]
c0de6d90:	1d02      	adds	r2, r0, #4
c0de6d92:	9202      	str	r2, [sp, #8]
c0de6d94:	6800      	ldr	r0, [r0, #0]
c0de6d96:	1e4e      	subs	r6, r1, #1
c0de6d98:	f804 0b01 	strb.w	r0, [r4], #1
c0de6d9c:	f1b8 0801 	subs.w	r8, r8, #1
c0de6da0:	f47f af6d 	bne.w	c0de6c7e <snprintf+0x2e>
c0de6da4:	e0d6      	b.n	c0de6f54 <snprintf+0x304>
c0de6da6:	9a02      	ldr	r2, [sp, #8]
c0de6da8:	9400      	str	r4, [sp, #0]
c0de6daa:	1d13      	adds	r3, r2, #4
c0de6dac:	9302      	str	r3, [sp, #8]
c0de6dae:	6813      	ldr	r3, [r2, #0]
c0de6db0:	2b00      	cmp	r3, #0
c0de6db2:	461a      	mov	r2, r3
c0de6db4:	d500      	bpl.n	c0de6db8 <snprintf+0x168>
c0de6db6:	425a      	negs	r2, r3
c0de6db8:	0fdc      	lsrs	r4, r3, #31
c0de6dba:	f04f 0c00 	mov.w	ip, #0
c0de6dbe:	230a      	movs	r3, #10
c0de6dc0:	e059      	b.n	c0de6e76 <snprintf+0x226>
c0de6dc2:	4869      	ldr	r0, [pc, #420]	@ (c0de6f68 <snprintf+0x318>)
c0de6dc4:	4478      	add	r0, pc
c0de6dc6:	f04f 0c01 	mov.w	ip, #1
c0de6dca:	e003      	b.n	c0de6dd4 <snprintf+0x184>
c0de6dcc:	4864      	ldr	r0, [pc, #400]	@ (c0de6f60 <snprintf+0x310>)
c0de6dce:	f04f 0c00 	mov.w	ip, #0
c0de6dd2:	4478      	add	r0, pc
c0de6dd4:	9b02      	ldr	r3, [sp, #8]
c0de6dd6:	b2d2      	uxtb	r2, r2
c0de6dd8:	1d1e      	adds	r6, r3, #4
c0de6dda:	9602      	str	r6, [sp, #8]
c0de6ddc:	1e4e      	subs	r6, r1, #1
c0de6dde:	6819      	ldr	r1, [r3, #0]
c0de6de0:	2a02      	cmp	r2, #2
c0de6de2:	f000 80a7 	beq.w	c0de6f34 <snprintf+0x2e4>
c0de6de6:	2a01      	cmp	r2, #1
c0de6de8:	d007      	beq.n	c0de6dfa <snprintf+0x1aa>
c0de6dea:	463d      	mov	r5, r7
c0de6dec:	b92a      	cbnz	r2, c0de6dfa <snprintf+0x1aa>
c0de6dee:	2200      	movs	r2, #0
c0de6df0:	5c8b      	ldrb	r3, [r1, r2]
c0de6df2:	3201      	adds	r2, #1
c0de6df4:	2b00      	cmp	r3, #0
c0de6df6:	d1fb      	bne.n	c0de6df0 <snprintf+0x1a0>
c0de6df8:	1e55      	subs	r5, r2, #1
c0de6dfa:	f1bc 0f00 	cmp.w	ip, #0
c0de6dfe:	d016      	beq.n	c0de6e2e <snprintf+0x1de>
c0de6e00:	2d00      	cmp	r5, #0
c0de6e02:	f43f af3c 	beq.w	c0de6c7e <snprintf+0x2e>
c0de6e06:	f1b8 0f02 	cmp.w	r8, #2
c0de6e0a:	f0c0 80a3 	bcc.w	c0de6f54 <snprintf+0x304>
c0de6e0e:	780a      	ldrb	r2, [r1, #0]
c0de6e10:	0913      	lsrs	r3, r2, #4
c0de6e12:	f002 020f 	and.w	r2, r2, #15
c0de6e16:	5cc3      	ldrb	r3, [r0, r3]
c0de6e18:	f1b8 0802 	subs.w	r8, r8, #2
c0de6e1c:	7023      	strb	r3, [r4, #0]
c0de6e1e:	5c82      	ldrb	r2, [r0, r2]
c0de6e20:	7062      	strb	r2, [r4, #1]
c0de6e22:	f000 8097 	beq.w	c0de6f54 <snprintf+0x304>
c0de6e26:	3101      	adds	r1, #1
c0de6e28:	3d01      	subs	r5, #1
c0de6e2a:	3402      	adds	r4, #2
c0de6e2c:	e7e8      	b.n	c0de6e00 <snprintf+0x1b0>
c0de6e2e:	4545      	cmp	r5, r8
c0de6e30:	bf28      	it	cs
c0de6e32:	4645      	movcs	r5, r8
c0de6e34:	4620      	mov	r0, r4
c0de6e36:	462a      	mov	r2, r5
c0de6e38:	f000 fba0 	bl	c0de757c <__aeabi_memmove>
c0de6e3c:	ebb8 0805 	subs.w	r8, r8, r5
c0de6e40:	f000 8088 	beq.w	c0de6f54 <snprintf+0x304>
c0de6e44:	462f      	mov	r7, r5
c0de6e46:	442c      	add	r4, r5
c0de6e48:	45bb      	cmp	fp, r7
c0de6e4a:	f67f af18 	bls.w	c0de6c7e <snprintf+0x2e>
c0de6e4e:	ebab 0507 	sub.w	r5, fp, r7
c0de6e52:	4620      	mov	r0, r4
c0de6e54:	4545      	cmp	r5, r8
c0de6e56:	bf28      	it	cs
c0de6e58:	4645      	movcs	r5, r8
c0de6e5a:	4629      	mov	r1, r5
c0de6e5c:	2220      	movs	r2, #32
c0de6e5e:	f000 fb8f 	bl	c0de7580 <__aeabi_memset>
c0de6e62:	e061      	b.n	c0de6f28 <snprintf+0x2d8>
c0de6e64:	9a02      	ldr	r2, [sp, #8]
c0de6e66:	9400      	str	r4, [sp, #0]
c0de6e68:	2400      	movs	r4, #0
c0de6e6a:	f04f 0c00 	mov.w	ip, #0
c0de6e6e:	1d13      	adds	r3, r2, #4
c0de6e70:	9302      	str	r3, [sp, #8]
c0de6e72:	230a      	movs	r3, #10
c0de6e74:	6812      	ldr	r2, [r2, #0]
c0de6e76:	483d      	ldr	r0, [pc, #244]	@ (c0de6f6c <snprintf+0x31c>)
c0de6e78:	1e4e      	subs	r6, r1, #1
c0de6e7a:	f04f 0a01 	mov.w	sl, #1
c0de6e7e:	4478      	add	r0, pc
c0de6e80:	9001      	str	r0, [sp, #4]
c0de6e82:	fba3 570a 	umull	r5, r7, r3, sl
c0de6e86:	2f00      	cmp	r7, #0
c0de6e88:	bf18      	it	ne
c0de6e8a:	2701      	movne	r7, #1
c0de6e8c:	4295      	cmp	r5, r2
c0de6e8e:	d804      	bhi.n	c0de6e9a <snprintf+0x24a>
c0de6e90:	b91f      	cbnz	r7, c0de6e9a <snprintf+0x24a>
c0de6e92:	f1ab 0b01 	sub.w	fp, fp, #1
c0de6e96:	46aa      	mov	sl, r5
c0de6e98:	e7f3      	b.n	c0de6e82 <snprintf+0x232>
c0de6e9a:	2c00      	cmp	r4, #0
c0de6e9c:	4627      	mov	r7, r4
c0de6e9e:	f04f 0500 	mov.w	r5, #0
c0de6ea2:	bf18      	it	ne
c0de6ea4:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de6ea8:	d00d      	beq.n	c0de6ec6 <snprintf+0x276>
c0de6eaa:	4660      	mov	r0, ip
c0de6eac:	fa5f fc8e 	uxtb.w	ip, lr
c0de6eb0:	a903      	add	r1, sp, #12
c0de6eb2:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de6eb6:	4684      	mov	ip, r0
c0de6eb8:	d106      	bne.n	c0de6ec8 <snprintf+0x278>
c0de6eba:	202d      	movs	r0, #45	@ 0x2d
c0de6ebc:	2400      	movs	r4, #0
c0de6ebe:	2501      	movs	r5, #1
c0de6ec0:	f88d 000c 	strb.w	r0, [sp, #12]
c0de6ec4:	e000      	b.n	c0de6ec8 <snprintf+0x278>
c0de6ec6:	a903      	add	r1, sp, #12
c0de6ec8:	eb07 000b 	add.w	r0, r7, fp
c0de6ecc:	3802      	subs	r0, #2
c0de6ece:	280d      	cmp	r0, #13
c0de6ed0:	d808      	bhi.n	c0de6ee4 <snprintf+0x294>
c0de6ed2:	f1c7 0701 	rsb	r7, r7, #1
c0de6ed6:	45bb      	cmp	fp, r7
c0de6ed8:	d004      	beq.n	c0de6ee4 <snprintf+0x294>
c0de6eda:	f801 e005 	strb.w	lr, [r1, r5]
c0de6ede:	3701      	adds	r7, #1
c0de6ee0:	3501      	adds	r5, #1
c0de6ee2:	e7f8      	b.n	c0de6ed6 <snprintf+0x286>
c0de6ee4:	9f01      	ldr	r7, [sp, #4]
c0de6ee6:	b114      	cbz	r4, c0de6eee <snprintf+0x29e>
c0de6ee8:	202d      	movs	r0, #45	@ 0x2d
c0de6eea:	5548      	strb	r0, [r1, r5]
c0de6eec:	3501      	adds	r5, #1
c0de6eee:	4820      	ldr	r0, [pc, #128]	@ (c0de6f70 <snprintf+0x320>)
c0de6ef0:	f1bc 0f00 	cmp.w	ip, #0
c0de6ef4:	4478      	add	r0, pc
c0de6ef6:	bf08      	it	eq
c0de6ef8:	4638      	moveq	r0, r7
c0de6efa:	f1ba 0f00 	cmp.w	sl, #0
c0de6efe:	d00b      	beq.n	c0de6f18 <snprintf+0x2c8>
c0de6f00:	fbb2 f7fa 	udiv	r7, r2, sl
c0de6f04:	fbba faf3 	udiv	sl, sl, r3
c0de6f08:	fbb7 f4f3 	udiv	r4, r7, r3
c0de6f0c:	fb04 7413 	mls	r4, r4, r3, r7
c0de6f10:	5d04      	ldrb	r4, [r0, r4]
c0de6f12:	554c      	strb	r4, [r1, r5]
c0de6f14:	3501      	adds	r5, #1
c0de6f16:	e7f0      	b.n	c0de6efa <snprintf+0x2aa>
c0de6f18:	4545      	cmp	r5, r8
c0de6f1a:	bf28      	it	cs
c0de6f1c:	4645      	movcs	r5, r8
c0de6f1e:	9c00      	ldr	r4, [sp, #0]
c0de6f20:	462a      	mov	r2, r5
c0de6f22:	4620      	mov	r0, r4
c0de6f24:	f000 fb2a 	bl	c0de757c <__aeabi_memmove>
c0de6f28:	ebb8 0805 	subs.w	r8, r8, r5
c0de6f2c:	442c      	add	r4, r5
c0de6f2e:	f47f aea6 	bne.w	c0de6c7e <snprintf+0x2e>
c0de6f32:	e00f      	b.n	c0de6f54 <snprintf+0x304>
c0de6f34:	7808      	ldrb	r0, [r1, #0]
c0de6f36:	2800      	cmp	r0, #0
c0de6f38:	f47f aea1 	bne.w	c0de6c7e <snprintf+0x2e>
c0de6f3c:	4545      	cmp	r5, r8
c0de6f3e:	bf28      	it	cs
c0de6f40:	4645      	movcs	r5, r8
c0de6f42:	4620      	mov	r0, r4
c0de6f44:	4629      	mov	r1, r5
c0de6f46:	2220      	movs	r2, #32
c0de6f48:	f000 fb1a 	bl	c0de7580 <__aeabi_memset>
c0de6f4c:	ebb8 0805 	subs.w	r8, r8, r5
c0de6f50:	f47f af79 	bne.w	c0de6e46 <snprintf+0x1f6>
c0de6f54:	2000      	movs	r0, #0
c0de6f56:	b007      	add	sp, #28
c0de6f58:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6f5c:	b001      	add	sp, #4
c0de6f5e:	4770      	bx	lr
c0de6f60:	00001c46 	.word	0x00001c46
c0de6f64:	00001cb0 	.word	0x00001cb0
c0de6f68:	00001c54 	.word	0x00001c54
c0de6f6c:	00001b9a 	.word	0x00001b9a
c0de6f70:	00001b34 	.word	0x00001b34

c0de6f74 <pic>:
c0de6f74:	4a0a      	ldr	r2, [pc, #40]	@ (c0de6fa0 <pic+0x2c>)
c0de6f76:	4282      	cmp	r2, r0
c0de6f78:	490a      	ldr	r1, [pc, #40]	@ (c0de6fa4 <pic+0x30>)
c0de6f7a:	d806      	bhi.n	c0de6f8a <pic+0x16>
c0de6f7c:	4281      	cmp	r1, r0
c0de6f7e:	d304      	bcc.n	c0de6f8a <pic+0x16>
c0de6f80:	b580      	push	{r7, lr}
c0de6f82:	f000 f815 	bl	c0de6fb0 <pic_internal>
c0de6f86:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6f8a:	4907      	ldr	r1, [pc, #28]	@ (c0de6fa8 <pic+0x34>)
c0de6f8c:	4288      	cmp	r0, r1
c0de6f8e:	4a07      	ldr	r2, [pc, #28]	@ (c0de6fac <pic+0x38>)
c0de6f90:	d304      	bcc.n	c0de6f9c <pic+0x28>
c0de6f92:	4290      	cmp	r0, r2
c0de6f94:	d802      	bhi.n	c0de6f9c <pic+0x28>
c0de6f96:	1a40      	subs	r0, r0, r1
c0de6f98:	4649      	mov	r1, r9
c0de6f9a:	4408      	add	r0, r1
c0de6f9c:	4770      	bx	lr
c0de6f9e:	0000      	movs	r0, r0
c0de6fa0:	c0de0000 	.word	0xc0de0000
c0de6fa4:	c0de8e3f 	.word	0xc0de8e3f
c0de6fa8:	da7a0000 	.word	0xda7a0000
c0de6fac:	da7aa000 	.word	0xda7aa000

c0de6fb0 <pic_internal>:
c0de6fb0:	467a      	mov	r2, pc
c0de6fb2:	4902      	ldr	r1, [pc, #8]	@ (c0de6fbc <pic_internal+0xc>)
c0de6fb4:	1cc9      	adds	r1, r1, #3
c0de6fb6:	1a89      	subs	r1, r1, r2
c0de6fb8:	1a40      	subs	r0, r0, r1
c0de6fba:	4770      	bx	lr
c0de6fbc:	c0de6fb1 	.word	0xc0de6fb1

c0de6fc0 <SVC_Call>:
c0de6fc0:	df01      	svc	1
c0de6fc2:	2900      	cmp	r1, #0
c0de6fc4:	d100      	bne.n	c0de6fc8 <exception>
c0de6fc6:	4770      	bx	lr

c0de6fc8 <exception>:
c0de6fc8:	4608      	mov	r0, r1
c0de6fca:	f7ff fe2e 	bl	c0de6c2a <os_longjmp>
	...

c0de6fd0 <SVC_cx_call>:
c0de6fd0:	df01      	svc	1
c0de6fd2:	4770      	bx	lr

c0de6fd4 <nvm_write>:
c0de6fd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de6fd6:	ab01      	add	r3, sp, #4
c0de6fd8:	c307      	stmia	r3!, {r0, r1, r2}
c0de6fda:	4802      	ldr	r0, [pc, #8]	@ (c0de6fe4 <nvm_write+0x10>)
c0de6fdc:	a901      	add	r1, sp, #4
c0de6fde:	f7ff ffef 	bl	c0de6fc0 <SVC_Call>
c0de6fe2:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de6fe4:	03000003 	.word	0x03000003

c0de6fe8 <cx_bn_lock>:
c0de6fe8:	b5e0      	push	{r5, r6, r7, lr}
c0de6fea:	e9cd 0100 	strd	r0, r1, [sp]
c0de6fee:	4802      	ldr	r0, [pc, #8]	@ (c0de6ff8 <cx_bn_lock+0x10>)
c0de6ff0:	4669      	mov	r1, sp
c0de6ff2:	f7ff ffed 	bl	c0de6fd0 <SVC_cx_call>
c0de6ff6:	bd8c      	pop	{r2, r3, r7, pc}
c0de6ff8:	02000112 	.word	0x02000112

c0de6ffc <cx_bn_unlock>:
c0de6ffc:	b5e0      	push	{r5, r6, r7, lr}
c0de6ffe:	2000      	movs	r0, #0
c0de7000:	4669      	mov	r1, sp
c0de7002:	9001      	str	r0, [sp, #4]
c0de7004:	20b6      	movs	r0, #182	@ 0xb6
c0de7006:	f7ff ffe3 	bl	c0de6fd0 <SVC_cx_call>
c0de700a:	bd8c      	pop	{r2, r3, r7, pc}

c0de700c <cx_bn_alloc>:
c0de700c:	b5e0      	push	{r5, r6, r7, lr}
c0de700e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7012:	4802      	ldr	r0, [pc, #8]	@ (c0de701c <cx_bn_alloc+0x10>)
c0de7014:	4669      	mov	r1, sp
c0de7016:	f7ff ffdb 	bl	c0de6fd0 <SVC_cx_call>
c0de701a:	bd8c      	pop	{r2, r3, r7, pc}
c0de701c:	02000113 	.word	0x02000113

c0de7020 <cx_bn_alloc_init>:
c0de7020:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7022:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7026:	4803      	ldr	r0, [pc, #12]	@ (c0de7034 <cx_bn_alloc_init+0x14>)
c0de7028:	4669      	mov	r1, sp
c0de702a:	f7ff ffd1 	bl	c0de6fd0 <SVC_cx_call>
c0de702e:	b004      	add	sp, #16
c0de7030:	bd80      	pop	{r7, pc}
c0de7032:	bf00      	nop
c0de7034:	04000114 	.word	0x04000114

c0de7038 <cx_bn_destroy>:
c0de7038:	b5e0      	push	{r5, r6, r7, lr}
c0de703a:	f000 f9b5 	bl	c0de73a8 <OUTLINED_FUNCTION_0>
c0de703e:	4802      	ldr	r0, [pc, #8]	@ (c0de7048 <cx_bn_destroy+0x10>)
c0de7040:	4669      	mov	r1, sp
c0de7042:	f7ff ffc5 	bl	c0de6fd0 <SVC_cx_call>
c0de7046:	bd8c      	pop	{r2, r3, r7, pc}
c0de7048:	010000bc 	.word	0x010000bc

c0de704c <cx_bn_nbytes>:
c0de704c:	b5e0      	push	{r5, r6, r7, lr}
c0de704e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7052:	4802      	ldr	r0, [pc, #8]	@ (c0de705c <cx_bn_nbytes+0x10>)
c0de7054:	4669      	mov	r1, sp
c0de7056:	f7ff ffbb 	bl	c0de6fd0 <SVC_cx_call>
c0de705a:	bd8c      	pop	{r2, r3, r7, pc}
c0de705c:	0200010d 	.word	0x0200010d

c0de7060 <cx_bn_init>:
c0de7060:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7062:	ab01      	add	r3, sp, #4
c0de7064:	c307      	stmia	r3!, {r0, r1, r2}
c0de7066:	4803      	ldr	r0, [pc, #12]	@ (c0de7074 <cx_bn_init+0x14>)
c0de7068:	a901      	add	r1, sp, #4
c0de706a:	f7ff ffb1 	bl	c0de6fd0 <SVC_cx_call>
c0de706e:	b004      	add	sp, #16
c0de7070:	bd80      	pop	{r7, pc}
c0de7072:	bf00      	nop
c0de7074:	03000115 	.word	0x03000115

c0de7078 <cx_bn_copy>:
c0de7078:	b5e0      	push	{r5, r6, r7, lr}
c0de707a:	e9cd 0100 	strd	r0, r1, [sp]
c0de707e:	4802      	ldr	r0, [pc, #8]	@ (c0de7088 <cx_bn_copy+0x10>)
c0de7080:	4669      	mov	r1, sp
c0de7082:	f7ff ffa5 	bl	c0de6fd0 <SVC_cx_call>
c0de7086:	bd8c      	pop	{r2, r3, r7, pc}
c0de7088:	020000c0 	.word	0x020000c0

c0de708c <cx_bn_set_u32>:
c0de708c:	b5e0      	push	{r5, r6, r7, lr}
c0de708e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7092:	4802      	ldr	r0, [pc, #8]	@ (c0de709c <cx_bn_set_u32+0x10>)
c0de7094:	4669      	mov	r1, sp
c0de7096:	f7ff ff9b 	bl	c0de6fd0 <SVC_cx_call>
c0de709a:	bd8c      	pop	{r2, r3, r7, pc}
c0de709c:	020000c1 	.word	0x020000c1

c0de70a0 <cx_bn_export>:
c0de70a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de70a2:	ab01      	add	r3, sp, #4
c0de70a4:	c307      	stmia	r3!, {r0, r1, r2}
c0de70a6:	4803      	ldr	r0, [pc, #12]	@ (c0de70b4 <cx_bn_export+0x14>)
c0de70a8:	a901      	add	r1, sp, #4
c0de70aa:	f7ff ff91 	bl	c0de6fd0 <SVC_cx_call>
c0de70ae:	b004      	add	sp, #16
c0de70b0:	bd80      	pop	{r7, pc}
c0de70b2:	bf00      	nop
c0de70b4:	030000c3 	.word	0x030000c3

c0de70b8 <cx_bn_cmp>:
c0de70b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de70ba:	ab01      	add	r3, sp, #4
c0de70bc:	c307      	stmia	r3!, {r0, r1, r2}
c0de70be:	4803      	ldr	r0, [pc, #12]	@ (c0de70cc <cx_bn_cmp+0x14>)
c0de70c0:	a901      	add	r1, sp, #4
c0de70c2:	f7ff ff85 	bl	c0de6fd0 <SVC_cx_call>
c0de70c6:	b004      	add	sp, #16
c0de70c8:	bd80      	pop	{r7, pc}
c0de70ca:	bf00      	nop
c0de70cc:	030000c4 	.word	0x030000c4

c0de70d0 <cx_bn_cmp_u32>:
c0de70d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de70d2:	ab01      	add	r3, sp, #4
c0de70d4:	c307      	stmia	r3!, {r0, r1, r2}
c0de70d6:	4803      	ldr	r0, [pc, #12]	@ (c0de70e4 <cx_bn_cmp_u32+0x14>)
c0de70d8:	a901      	add	r1, sp, #4
c0de70da:	f7ff ff79 	bl	c0de6fd0 <SVC_cx_call>
c0de70de:	b004      	add	sp, #16
c0de70e0:	bd80      	pop	{r7, pc}
c0de70e2:	bf00      	nop
c0de70e4:	030000c5 	.word	0x030000c5

c0de70e8 <cx_bn_tst_bit>:
c0de70e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de70ea:	ab01      	add	r3, sp, #4
c0de70ec:	c307      	stmia	r3!, {r0, r1, r2}
c0de70ee:	4803      	ldr	r0, [pc, #12]	@ (c0de70fc <cx_bn_tst_bit+0x14>)
c0de70f0:	a901      	add	r1, sp, #4
c0de70f2:	f7ff ff6d 	bl	c0de6fd0 <SVC_cx_call>
c0de70f6:	b004      	add	sp, #16
c0de70f8:	bd80      	pop	{r7, pc}
c0de70fa:	bf00      	nop
c0de70fc:	030000cb 	.word	0x030000cb

c0de7100 <cx_bn_mod_add>:
c0de7100:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7102:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7106:	4803      	ldr	r0, [pc, #12]	@ (c0de7114 <cx_bn_mod_add+0x14>)
c0de7108:	4669      	mov	r1, sp
c0de710a:	f7ff ff61 	bl	c0de6fd0 <SVC_cx_call>
c0de710e:	b004      	add	sp, #16
c0de7110:	bd80      	pop	{r7, pc}
c0de7112:	bf00      	nop
c0de7114:	040000d3 	.word	0x040000d3

c0de7118 <cx_bn_mod_sub>:
c0de7118:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de711a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de711e:	4803      	ldr	r0, [pc, #12]	@ (c0de712c <cx_bn_mod_sub+0x14>)
c0de7120:	4669      	mov	r1, sp
c0de7122:	f7ff ff55 	bl	c0de6fd0 <SVC_cx_call>
c0de7126:	b004      	add	sp, #16
c0de7128:	bd80      	pop	{r7, pc}
c0de712a:	bf00      	nop
c0de712c:	040000d4 	.word	0x040000d4

c0de7130 <cx_bn_mod_mul>:
c0de7130:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7132:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7136:	4803      	ldr	r0, [pc, #12]	@ (c0de7144 <cx_bn_mod_mul+0x14>)
c0de7138:	4669      	mov	r1, sp
c0de713a:	f7ff ff49 	bl	c0de6fd0 <SVC_cx_call>
c0de713e:	b004      	add	sp, #16
c0de7140:	bd80      	pop	{r7, pc}
c0de7142:	bf00      	nop
c0de7144:	040000d5 	.word	0x040000d5

c0de7148 <cx_bn_reduce>:
c0de7148:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de714a:	ab01      	add	r3, sp, #4
c0de714c:	c307      	stmia	r3!, {r0, r1, r2}
c0de714e:	4803      	ldr	r0, [pc, #12]	@ (c0de715c <cx_bn_reduce+0x14>)
c0de7150:	a901      	add	r1, sp, #4
c0de7152:	f7ff ff3d 	bl	c0de6fd0 <SVC_cx_call>
c0de7156:	b004      	add	sp, #16
c0de7158:	bd80      	pop	{r7, pc}
c0de715a:	bf00      	nop
c0de715c:	030000d6 	.word	0x030000d6

c0de7160 <cx_bn_mod_invert_nprime>:
c0de7160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7162:	ab01      	add	r3, sp, #4
c0de7164:	c307      	stmia	r3!, {r0, r1, r2}
c0de7166:	4803      	ldr	r0, [pc, #12]	@ (c0de7174 <cx_bn_mod_invert_nprime+0x14>)
c0de7168:	a901      	add	r1, sp, #4
c0de716a:	f7ff ff31 	bl	c0de6fd0 <SVC_cx_call>
c0de716e:	b004      	add	sp, #16
c0de7170:	bd80      	pop	{r7, pc}
c0de7172:	bf00      	nop
c0de7174:	030000da 	.word	0x030000da

c0de7178 <cx_bn_is_prime>:
c0de7178:	b5e0      	push	{r5, r6, r7, lr}
c0de717a:	e9cd 0100 	strd	r0, r1, [sp]
c0de717e:	4802      	ldr	r0, [pc, #8]	@ (c0de7188 <cx_bn_is_prime+0x10>)
c0de7180:	4669      	mov	r1, sp
c0de7182:	f7ff ff25 	bl	c0de6fd0 <SVC_cx_call>
c0de7186:	bd8c      	pop	{r2, r3, r7, pc}
c0de7188:	020000ef 	.word	0x020000ef

c0de718c <cx_mont_alloc>:
c0de718c:	b5e0      	push	{r5, r6, r7, lr}
c0de718e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7192:	4802      	ldr	r0, [pc, #8]	@ (c0de719c <cx_mont_alloc+0x10>)
c0de7194:	4669      	mov	r1, sp
c0de7196:	f7ff ff1b 	bl	c0de6fd0 <SVC_cx_call>
c0de719a:	bd8c      	pop	{r2, r3, r7, pc}
c0de719c:	020000dc 	.word	0x020000dc

c0de71a0 <cx_mont_init>:
c0de71a0:	b5e0      	push	{r5, r6, r7, lr}
c0de71a2:	e9cd 0100 	strd	r0, r1, [sp]
c0de71a6:	4802      	ldr	r0, [pc, #8]	@ (c0de71b0 <cx_mont_init+0x10>)
c0de71a8:	4669      	mov	r1, sp
c0de71aa:	f7ff ff11 	bl	c0de6fd0 <SVC_cx_call>
c0de71ae:	bd8c      	pop	{r2, r3, r7, pc}
c0de71b0:	020000dd 	.word	0x020000dd

c0de71b4 <cx_mont_to_montgomery>:
c0de71b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71b6:	ab01      	add	r3, sp, #4
c0de71b8:	c307      	stmia	r3!, {r0, r1, r2}
c0de71ba:	4803      	ldr	r0, [pc, #12]	@ (c0de71c8 <cx_mont_to_montgomery+0x14>)
c0de71bc:	a901      	add	r1, sp, #4
c0de71be:	f7ff ff07 	bl	c0de6fd0 <SVC_cx_call>
c0de71c2:	b004      	add	sp, #16
c0de71c4:	bd80      	pop	{r7, pc}
c0de71c6:	bf00      	nop
c0de71c8:	030000df 	.word	0x030000df

c0de71cc <cx_mont_from_montgomery>:
c0de71cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71ce:	ab01      	add	r3, sp, #4
c0de71d0:	c307      	stmia	r3!, {r0, r1, r2}
c0de71d2:	4803      	ldr	r0, [pc, #12]	@ (c0de71e0 <cx_mont_from_montgomery+0x14>)
c0de71d4:	a901      	add	r1, sp, #4
c0de71d6:	f7ff fefb 	bl	c0de6fd0 <SVC_cx_call>
c0de71da:	b004      	add	sp, #16
c0de71dc:	bd80      	pop	{r7, pc}
c0de71de:	bf00      	nop
c0de71e0:	030000e0 	.word	0x030000e0

c0de71e4 <cx_mont_mul>:
c0de71e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71e6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de71ea:	4803      	ldr	r0, [pc, #12]	@ (c0de71f8 <cx_mont_mul+0x14>)
c0de71ec:	4669      	mov	r1, sp
c0de71ee:	f7ff feef 	bl	c0de6fd0 <SVC_cx_call>
c0de71f2:	b004      	add	sp, #16
c0de71f4:	bd80      	pop	{r7, pc}
c0de71f6:	bf00      	nop
c0de71f8:	040000e1 	.word	0x040000e1

c0de71fc <cx_mont_pow>:
c0de71fc:	b510      	push	{r4, lr}
c0de71fe:	b086      	sub	sp, #24
c0de7200:	f10d 0c04 	add.w	ip, sp, #4
c0de7204:	9c08      	ldr	r4, [sp, #32]
c0de7206:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de720a:	4803      	ldr	r0, [pc, #12]	@ (c0de7218 <cx_mont_pow+0x1c>)
c0de720c:	a901      	add	r1, sp, #4
c0de720e:	f7ff fedf 	bl	c0de6fd0 <SVC_cx_call>
c0de7212:	b006      	add	sp, #24
c0de7214:	bd10      	pop	{r4, pc}
c0de7216:	bf00      	nop
c0de7218:	050000e2 	.word	0x050000e2

c0de721c <cx_mont_invert_nprime>:
c0de721c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de721e:	ab01      	add	r3, sp, #4
c0de7220:	c307      	stmia	r3!, {r0, r1, r2}
c0de7222:	4803      	ldr	r0, [pc, #12]	@ (c0de7230 <cx_mont_invert_nprime+0x14>)
c0de7224:	a901      	add	r1, sp, #4
c0de7226:	f7ff fed3 	bl	c0de6fd0 <SVC_cx_call>
c0de722a:	b004      	add	sp, #16
c0de722c:	bd80      	pop	{r7, pc}
c0de722e:	bf00      	nop
c0de7230:	030000e4 	.word	0x030000e4

c0de7234 <cx_ecdomain_parameters_length>:
c0de7234:	b5e0      	push	{r5, r6, r7, lr}
c0de7236:	e9cd 0100 	strd	r0, r1, [sp]
c0de723a:	4802      	ldr	r0, [pc, #8]	@ (c0de7244 <cx_ecdomain_parameters_length+0x10>)
c0de723c:	4669      	mov	r1, sp
c0de723e:	f7ff fec7 	bl	c0de6fd0 <SVC_cx_call>
c0de7242:	bd8c      	pop	{r2, r3, r7, pc}
c0de7244:	0200012f 	.word	0x0200012f

c0de7248 <os_perso_derive_node_with_seed_key>:
c0de7248:	b510      	push	{r4, lr}
c0de724a:	b088      	sub	sp, #32
c0de724c:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de724e:	9407      	str	r4, [sp, #28]
c0de7250:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7252:	9406      	str	r4, [sp, #24]
c0de7254:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7256:	9405      	str	r4, [sp, #20]
c0de7258:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de725a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de725e:	4803      	ldr	r0, [pc, #12]	@ (c0de726c <os_perso_derive_node_with_seed_key+0x24>)
c0de7260:	4669      	mov	r1, sp
c0de7262:	f7ff fead 	bl	c0de6fc0 <SVC_Call>
c0de7266:	b008      	add	sp, #32
c0de7268:	bd10      	pop	{r4, pc}
c0de726a:	bf00      	nop
c0de726c:	080000a6 	.word	0x080000a6

c0de7270 <os_pki_load_certificate>:
c0de7270:	b510      	push	{r4, lr}
c0de7272:	b086      	sub	sp, #24
c0de7274:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7276:	9405      	str	r4, [sp, #20]
c0de7278:	9c08      	ldr	r4, [sp, #32]
c0de727a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de727e:	4803      	ldr	r0, [pc, #12]	@ (c0de728c <os_pki_load_certificate+0x1c>)
c0de7280:	4669      	mov	r1, sp
c0de7282:	f7ff fe9d 	bl	c0de6fc0 <SVC_Call>
c0de7286:	b006      	add	sp, #24
c0de7288:	bd10      	pop	{r4, pc}
c0de728a:	bf00      	nop
c0de728c:	060000aa 	.word	0x060000aa

c0de7290 <os_perso_is_pin_set>:
c0de7290:	b5e0      	push	{r5, r6, r7, lr}
c0de7292:	2000      	movs	r0, #0
c0de7294:	4669      	mov	r1, sp
c0de7296:	9001      	str	r0, [sp, #4]
c0de7298:	209e      	movs	r0, #158	@ 0x9e
c0de729a:	f7ff fe91 	bl	c0de6fc0 <SVC_Call>
c0de729e:	b2c0      	uxtb	r0, r0
c0de72a0:	bd8c      	pop	{r2, r3, r7, pc}

c0de72a2 <os_global_pin_is_validated>:
c0de72a2:	b5e0      	push	{r5, r6, r7, lr}
c0de72a4:	2000      	movs	r0, #0
c0de72a6:	4669      	mov	r1, sp
c0de72a8:	9001      	str	r0, [sp, #4]
c0de72aa:	20a0      	movs	r0, #160	@ 0xa0
c0de72ac:	f7ff fe88 	bl	c0de6fc0 <SVC_Call>
c0de72b0:	b2c0      	uxtb	r0, r0
c0de72b2:	bd8c      	pop	{r2, r3, r7, pc}

c0de72b4 <os_ux>:
c0de72b4:	b5e0      	push	{r5, r6, r7, lr}
c0de72b6:	f000 f877 	bl	c0de73a8 <OUTLINED_FUNCTION_0>
c0de72ba:	4802      	ldr	r0, [pc, #8]	@ (c0de72c4 <os_ux+0x10>)
c0de72bc:	4669      	mov	r1, sp
c0de72be:	f7ff fe7f 	bl	c0de6fc0 <SVC_Call>
c0de72c2:	bd8c      	pop	{r2, r3, r7, pc}
c0de72c4:	01000064 	.word	0x01000064

c0de72c8 <os_lib_end>:
c0de72c8:	b082      	sub	sp, #8
c0de72ca:	2000      	movs	r0, #0
c0de72cc:	4669      	mov	r1, sp
c0de72ce:	9001      	str	r0, [sp, #4]
c0de72d0:	2068      	movs	r0, #104	@ 0x68
c0de72d2:	f7ff fe75 	bl	c0de6fc0 <SVC_Call>
c0de72d6:	deff      	udf	#255	@ 0xff

c0de72d8 <os_flags>:
c0de72d8:	b5e0      	push	{r5, r6, r7, lr}
c0de72da:	2000      	movs	r0, #0
c0de72dc:	4669      	mov	r1, sp
c0de72de:	9001      	str	r0, [sp, #4]
c0de72e0:	206a      	movs	r0, #106	@ 0x6a
c0de72e2:	f7ff fe6d 	bl	c0de6fc0 <SVC_Call>
c0de72e6:	bd8c      	pop	{r2, r3, r7, pc}

c0de72e8 <os_registry_get_current_app_tag>:
c0de72e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72ea:	ab01      	add	r3, sp, #4
c0de72ec:	c307      	stmia	r3!, {r0, r1, r2}
c0de72ee:	4803      	ldr	r0, [pc, #12]	@ (c0de72fc <os_registry_get_current_app_tag+0x14>)
c0de72f0:	a901      	add	r1, sp, #4
c0de72f2:	f7ff fe65 	bl	c0de6fc0 <SVC_Call>
c0de72f6:	b004      	add	sp, #16
c0de72f8:	bd80      	pop	{r7, pc}
c0de72fa:	bf00      	nop
c0de72fc:	03000074 	.word	0x03000074

c0de7300 <os_sched_exit>:
c0de7300:	b082      	sub	sp, #8
c0de7302:	f000 f851 	bl	c0de73a8 <OUTLINED_FUNCTION_0>
c0de7306:	4802      	ldr	r0, [pc, #8]	@ (c0de7310 <os_sched_exit+0x10>)
c0de7308:	4669      	mov	r1, sp
c0de730a:	f7ff fe59 	bl	c0de6fc0 <SVC_Call>
c0de730e:	deff      	udf	#255	@ 0xff
c0de7310:	0100009a 	.word	0x0100009a

c0de7314 <os_io_init>:
c0de7314:	b5e0      	push	{r5, r6, r7, lr}
c0de7316:	9001      	str	r0, [sp, #4]
c0de7318:	4802      	ldr	r0, [pc, #8]	@ (c0de7324 <os_io_init+0x10>)
c0de731a:	a901      	add	r1, sp, #4
c0de731c:	f7ff fe50 	bl	c0de6fc0 <SVC_Call>
c0de7320:	bd8c      	pop	{r2, r3, r7, pc}
c0de7322:	bf00      	nop
c0de7324:	01000084 	.word	0x01000084

c0de7328 <os_io_start>:
c0de7328:	b5e0      	push	{r5, r6, r7, lr}
c0de732a:	2000      	movs	r0, #0
c0de732c:	4669      	mov	r1, sp
c0de732e:	9001      	str	r0, [sp, #4]
c0de7330:	4801      	ldr	r0, [pc, #4]	@ (c0de7338 <os_io_start+0x10>)
c0de7332:	f7ff fe45 	bl	c0de6fc0 <SVC_Call>
c0de7336:	bd8c      	pop	{r2, r3, r7, pc}
c0de7338:	01000085 	.word	0x01000085

c0de733c <os_io_tx_cmd>:
c0de733c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de733e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7342:	4803      	ldr	r0, [pc, #12]	@ (c0de7350 <os_io_tx_cmd+0x14>)
c0de7344:	4669      	mov	r1, sp
c0de7346:	f7ff fe3b 	bl	c0de6fc0 <SVC_Call>
c0de734a:	b004      	add	sp, #16
c0de734c:	bd80      	pop	{r7, pc}
c0de734e:	bf00      	nop
c0de7350:	04000088 	.word	0x04000088

c0de7354 <os_io_rx_evt>:
c0de7354:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7356:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de735a:	4803      	ldr	r0, [pc, #12]	@ (c0de7368 <os_io_rx_evt+0x14>)
c0de735c:	4669      	mov	r1, sp
c0de735e:	f7ff fe2f 	bl	c0de6fc0 <SVC_Call>
c0de7362:	b004      	add	sp, #16
c0de7364:	bd80      	pop	{r7, pc}
c0de7366:	bf00      	nop
c0de7368:	03000089 	.word	0x03000089

c0de736c <try_context_get>:
c0de736c:	b5e0      	push	{r5, r6, r7, lr}
c0de736e:	2000      	movs	r0, #0
c0de7370:	4669      	mov	r1, sp
c0de7372:	9001      	str	r0, [sp, #4]
c0de7374:	2087      	movs	r0, #135	@ 0x87
c0de7376:	f7ff fe23 	bl	c0de6fc0 <SVC_Call>
c0de737a:	bd8c      	pop	{r2, r3, r7, pc}

c0de737c <try_context_set>:
c0de737c:	b5e0      	push	{r5, r6, r7, lr}
c0de737e:	f000 f813 	bl	c0de73a8 <OUTLINED_FUNCTION_0>
c0de7382:	4802      	ldr	r0, [pc, #8]	@ (c0de738c <try_context_set+0x10>)
c0de7384:	4669      	mov	r1, sp
c0de7386:	f7ff fe1b 	bl	c0de6fc0 <SVC_Call>
c0de738a:	bd8c      	pop	{r2, r3, r7, pc}
c0de738c:	0100010b 	.word	0x0100010b

c0de7390 <os_sched_last_status>:
c0de7390:	b5e0      	push	{r5, r6, r7, lr}
c0de7392:	f000 f809 	bl	c0de73a8 <OUTLINED_FUNCTION_0>
c0de7396:	4803      	ldr	r0, [pc, #12]	@ (c0de73a4 <os_sched_last_status+0x14>)
c0de7398:	4669      	mov	r1, sp
c0de739a:	f7ff fe11 	bl	c0de6fc0 <SVC_Call>
c0de739e:	b2c0      	uxtb	r0, r0
c0de73a0:	bd8c      	pop	{r2, r3, r7, pc}
c0de73a2:	bf00      	nop
c0de73a4:	0100009c 	.word	0x0100009c

c0de73a8 <OUTLINED_FUNCTION_0>:
c0de73a8:	2100      	movs	r1, #0
c0de73aa:	e9cd 0100 	strd	r0, r1, [sp]
c0de73ae:	4770      	bx	lr

c0de73b0 <__udivmoddi4>:
c0de73b0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de73b4:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de73b8:	4604      	mov	r4, r0
c0de73ba:	b179      	cbz	r1, c0de73dc <__udivmoddi4+0x2c>
c0de73bc:	b1ba      	cbz	r2, c0de73ee <__udivmoddi4+0x3e>
c0de73be:	b35b      	cbz	r3, c0de7418 <__udivmoddi4+0x68>
c0de73c0:	fab1 f581 	clz	r5, r1
c0de73c4:	fab3 f683 	clz	r6, r3
c0de73c8:	1b75      	subs	r5, r6, r5
c0de73ca:	2d20      	cmp	r5, #32
c0de73cc:	d34a      	bcc.n	c0de7464 <__udivmoddi4+0xb4>
c0de73ce:	f1bc 0f00 	cmp.w	ip, #0
c0de73d2:	bf18      	it	ne
c0de73d4:	e9cc 4100 	strdne	r4, r1, [ip]
c0de73d8:	2400      	movs	r4, #0
c0de73da:	e066      	b.n	c0de74aa <__udivmoddi4+0xfa>
c0de73dc:	b3cb      	cbz	r3, c0de7452 <__udivmoddi4+0xa2>
c0de73de:	2100      	movs	r1, #0
c0de73e0:	f1bc 0f00 	cmp.w	ip, #0
c0de73e4:	bf18      	it	ne
c0de73e6:	e9cc 4100 	strdne	r4, r1, [ip]
c0de73ea:	2400      	movs	r4, #0
c0de73ec:	e0a6      	b.n	c0de753c <__udivmoddi4+0x18c>
c0de73ee:	2b00      	cmp	r3, #0
c0de73f0:	d03e      	beq.n	c0de7470 <__udivmoddi4+0xc0>
c0de73f2:	2800      	cmp	r0, #0
c0de73f4:	d04f      	beq.n	c0de7496 <__udivmoddi4+0xe6>
c0de73f6:	1e5d      	subs	r5, r3, #1
c0de73f8:	422b      	tst	r3, r5
c0de73fa:	d158      	bne.n	c0de74ae <__udivmoddi4+0xfe>
c0de73fc:	f1bc 0f00 	cmp.w	ip, #0
c0de7400:	bf1c      	itt	ne
c0de7402:	ea05 0001 	andne.w	r0, r5, r1
c0de7406:	e9cc 4000 	strdne	r4, r0, [ip]
c0de740a:	fa93 f0a3 	rbit	r0, r3
c0de740e:	fab0 f080 	clz	r0, r0
c0de7412:	fa21 f400 	lsr.w	r4, r1, r0
c0de7416:	e048      	b.n	c0de74aa <__udivmoddi4+0xfa>
c0de7418:	1e55      	subs	r5, r2, #1
c0de741a:	422a      	tst	r2, r5
c0de741c:	d129      	bne.n	c0de7472 <__udivmoddi4+0xc2>
c0de741e:	f1bc 0f00 	cmp.w	ip, #0
c0de7422:	bf1e      	ittt	ne
c0de7424:	2300      	movne	r3, #0
c0de7426:	4005      	andne	r5, r0
c0de7428:	e9cc 5300 	strdne	r5, r3, [ip]
c0de742c:	2a01      	cmp	r2, #1
c0de742e:	f000 8085 	beq.w	c0de753c <__udivmoddi4+0x18c>
c0de7432:	fa92 f2a2 	rbit	r2, r2
c0de7436:	004c      	lsls	r4, r1, #1
c0de7438:	fab2 f282 	clz	r2, r2
c0de743c:	f002 031f 	and.w	r3, r2, #31
c0de7440:	40d1      	lsrs	r1, r2
c0de7442:	40d8      	lsrs	r0, r3
c0de7444:	231f      	movs	r3, #31
c0de7446:	4393      	bics	r3, r2
c0de7448:	fa04 f303 	lsl.w	r3, r4, r3
c0de744c:	ea43 0400 	orr.w	r4, r3, r0
c0de7450:	e074      	b.n	c0de753c <__udivmoddi4+0x18c>
c0de7452:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7456:	f1bc 0f00 	cmp.w	ip, #0
c0de745a:	d026      	beq.n	c0de74aa <__udivmoddi4+0xfa>
c0de745c:	fb04 0012 	mls	r0, r4, r2, r0
c0de7460:	2100      	movs	r1, #0
c0de7462:	e020      	b.n	c0de74a6 <__udivmoddi4+0xf6>
c0de7464:	f105 0e01 	add.w	lr, r5, #1
c0de7468:	f1be 0f20 	cmp.w	lr, #32
c0de746c:	d00b      	beq.n	c0de7486 <__udivmoddi4+0xd6>
c0de746e:	e028      	b.n	c0de74c2 <__udivmoddi4+0x112>
c0de7470:	e064      	b.n	c0de753c <__udivmoddi4+0x18c>
c0de7472:	fab1 f481 	clz	r4, r1
c0de7476:	fab2 f582 	clz	r5, r2
c0de747a:	1b2c      	subs	r4, r5, r4
c0de747c:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7480:	f1be 0f20 	cmp.w	lr, #32
c0de7484:	d15d      	bne.n	c0de7542 <__udivmoddi4+0x192>
c0de7486:	f04f 0e20 	mov.w	lr, #32
c0de748a:	f04f 0a00 	mov.w	sl, #0
c0de748e:	f04f 0b00 	mov.w	fp, #0
c0de7492:	460e      	mov	r6, r1
c0de7494:	e021      	b.n	c0de74da <__udivmoddi4+0x12a>
c0de7496:	fbb1 f4f3 	udiv	r4, r1, r3
c0de749a:	f1bc 0f00 	cmp.w	ip, #0
c0de749e:	d004      	beq.n	c0de74aa <__udivmoddi4+0xfa>
c0de74a0:	2000      	movs	r0, #0
c0de74a2:	fb04 1113 	mls	r1, r4, r3, r1
c0de74a6:	e9cc 0100 	strd	r0, r1, [ip]
c0de74aa:	2100      	movs	r1, #0
c0de74ac:	e046      	b.n	c0de753c <__udivmoddi4+0x18c>
c0de74ae:	fab1 f581 	clz	r5, r1
c0de74b2:	fab3 f683 	clz	r6, r3
c0de74b6:	1b75      	subs	r5, r6, r5
c0de74b8:	2d1f      	cmp	r5, #31
c0de74ba:	f4bf af88 	bcs.w	c0de73ce <__udivmoddi4+0x1e>
c0de74be:	f105 0e01 	add.w	lr, r5, #1
c0de74c2:	fa20 f40e 	lsr.w	r4, r0, lr
c0de74c6:	f1c5 051f 	rsb	r5, r5, #31
c0de74ca:	fa01 f605 	lsl.w	r6, r1, r5
c0de74ce:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de74d2:	40a8      	lsls	r0, r5
c0de74d4:	f04f 0a00 	mov.w	sl, #0
c0de74d8:	4326      	orrs	r6, r4
c0de74da:	f04f 0800 	mov.w	r8, #0
c0de74de:	f1be 0f00 	cmp.w	lr, #0
c0de74e2:	d01c      	beq.n	c0de751e <__udivmoddi4+0x16e>
c0de74e4:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de74e8:	f1ae 0e01 	sub.w	lr, lr, #1
c0de74ec:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de74f0:	0076      	lsls	r6, r6, #1
c0de74f2:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de74f6:	1aae      	subs	r6, r5, r2
c0de74f8:	eb61 0b03 	sbc.w	fp, r1, r3
c0de74fc:	43cf      	mvns	r7, r1
c0de74fe:	43ec      	mvns	r4, r5
c0de7500:	18a4      	adds	r4, r4, r2
c0de7502:	eb57 0403 	adcs.w	r4, r7, r3
c0de7506:	bf5c      	itt	pl
c0de7508:	468b      	movpl	fp, r1
c0de750a:	462e      	movpl	r6, r5
c0de750c:	0040      	lsls	r0, r0, #1
c0de750e:	0fe1      	lsrs	r1, r4, #31
c0de7510:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7514:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7518:	46a2      	mov	sl, r4
c0de751a:	4688      	mov	r8, r1
c0de751c:	e7df      	b.n	c0de74de <__udivmoddi4+0x12e>
c0de751e:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7522:	f1bc 0f00 	cmp.w	ip, #0
c0de7526:	bf18      	it	ne
c0de7528:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de752c:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7530:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7534:	f020 0001 	bic.w	r0, r0, #1
c0de7538:	ea40 0408 	orr.w	r4, r0, r8
c0de753c:	4620      	mov	r0, r4
c0de753e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7542:	f1be 0f1f 	cmp.w	lr, #31
c0de7546:	d804      	bhi.n	c0de7552 <__udivmoddi4+0x1a2>
c0de7548:	fa20 f40e 	lsr.w	r4, r0, lr
c0de754c:	f1ce 0520 	rsb	r5, lr, #32
c0de7550:	e7bb      	b.n	c0de74ca <__udivmoddi4+0x11a>
c0de7552:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7556:	f1ae 0420 	sub.w	r4, lr, #32
c0de755a:	f04f 0b00 	mov.w	fp, #0
c0de755e:	fa20 f504 	lsr.w	r5, r0, r4
c0de7562:	fa01 f607 	lsl.w	r6, r1, r7
c0de7566:	fa00 fa07 	lsl.w	sl, r0, r7
c0de756a:	ea46 0805 	orr.w	r8, r6, r5
c0de756e:	fa21 f604 	lsr.w	r6, r1, r4
c0de7572:	4640      	mov	r0, r8
c0de7574:	e7b1      	b.n	c0de74da <__udivmoddi4+0x12a>
	...

c0de7578 <__aeabi_memcpy>:
c0de7578:	f000 b81c 	b.w	c0de75b4 <memcpy>

c0de757c <__aeabi_memmove>:
c0de757c:	f000 b828 	b.w	c0de75d0 <memmove>

c0de7580 <__aeabi_memset>:
c0de7580:	460b      	mov	r3, r1
c0de7582:	4611      	mov	r1, r2
c0de7584:	461a      	mov	r2, r3
c0de7586:	f000 b83d 	b.w	c0de7604 <memset>
c0de758a:	bf00      	nop

c0de758c <__aeabi_memclr>:
c0de758c:	460a      	mov	r2, r1
c0de758e:	2100      	movs	r1, #0
c0de7590:	f000 b838 	b.w	c0de7604 <memset>

c0de7594 <__aeabi_uldivmod>:
c0de7594:	b540      	push	{r6, lr}
c0de7596:	b084      	sub	sp, #16
c0de7598:	ae02      	add	r6, sp, #8
c0de759a:	9600      	str	r6, [sp, #0]
c0de759c:	f7ff ff08 	bl	c0de73b0 <__udivmoddi4>
c0de75a0:	9a02      	ldr	r2, [sp, #8]
c0de75a2:	9b03      	ldr	r3, [sp, #12]
c0de75a4:	b004      	add	sp, #16
c0de75a6:	bd40      	pop	{r6, pc}

c0de75a8 <explicit_bzero>:
c0de75a8:	f000 b800 	b.w	c0de75ac <bzero>

c0de75ac <bzero>:
c0de75ac:	460a      	mov	r2, r1
c0de75ae:	2100      	movs	r1, #0
c0de75b0:	f000 b828 	b.w	c0de7604 <memset>

c0de75b4 <memcpy>:
c0de75b4:	440a      	add	r2, r1
c0de75b6:	4291      	cmp	r1, r2
c0de75b8:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de75bc:	d100      	bne.n	c0de75c0 <memcpy+0xc>
c0de75be:	4770      	bx	lr
c0de75c0:	b510      	push	{r4, lr}
c0de75c2:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de75c6:	4291      	cmp	r1, r2
c0de75c8:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de75cc:	d1f9      	bne.n	c0de75c2 <memcpy+0xe>
c0de75ce:	bd10      	pop	{r4, pc}

c0de75d0 <memmove>:
c0de75d0:	4288      	cmp	r0, r1
c0de75d2:	b510      	push	{r4, lr}
c0de75d4:	eb01 0402 	add.w	r4, r1, r2
c0de75d8:	d902      	bls.n	c0de75e0 <memmove+0x10>
c0de75da:	4284      	cmp	r4, r0
c0de75dc:	4623      	mov	r3, r4
c0de75de:	d807      	bhi.n	c0de75f0 <memmove+0x20>
c0de75e0:	1e43      	subs	r3, r0, #1
c0de75e2:	42a1      	cmp	r1, r4
c0de75e4:	d008      	beq.n	c0de75f8 <memmove+0x28>
c0de75e6:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de75ea:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de75ee:	e7f8      	b.n	c0de75e2 <memmove+0x12>
c0de75f0:	4601      	mov	r1, r0
c0de75f2:	4402      	add	r2, r0
c0de75f4:	428a      	cmp	r2, r1
c0de75f6:	d100      	bne.n	c0de75fa <memmove+0x2a>
c0de75f8:	bd10      	pop	{r4, pc}
c0de75fa:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de75fe:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7602:	e7f7      	b.n	c0de75f4 <memmove+0x24>

c0de7604 <memset>:
c0de7604:	4603      	mov	r3, r0
c0de7606:	4402      	add	r2, r0
c0de7608:	4293      	cmp	r3, r2
c0de760a:	d100      	bne.n	c0de760e <memset+0xa>
c0de760c:	4770      	bx	lr
c0de760e:	f803 1b01 	strb.w	r1, [r3], #1
c0de7612:	e7f9      	b.n	c0de7608 <memset+0x4>

c0de7614 <setjmp>:
c0de7614:	46ec      	mov	ip, sp
c0de7616:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de761a:	f04f 0000 	mov.w	r0, #0
c0de761e:	4770      	bx	lr

c0de7620 <longjmp>:
c0de7620:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7624:	46e5      	mov	sp, ip
c0de7626:	0008      	movs	r0, r1
c0de7628:	bf08      	it	eq
c0de762a:	2001      	moveq	r0, #1
c0de762c:	4770      	bx	lr
c0de762e:	bf00      	nop

c0de7630 <strcmp>:
c0de7630:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7634:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7638:	2a01      	cmp	r2, #1
c0de763a:	bf28      	it	cs
c0de763c:	429a      	cmpcs	r2, r3
c0de763e:	d0f7      	beq.n	c0de7630 <strcmp>
c0de7640:	1ad0      	subs	r0, r2, r3
c0de7642:	4770      	bx	lr

c0de7644 <strlen>:
c0de7644:	4603      	mov	r3, r0
c0de7646:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de764a:	2a00      	cmp	r2, #0
c0de764c:	d1fb      	bne.n	c0de7646 <strlen+0x2>
c0de764e:	1a18      	subs	r0, r3, r0
c0de7650:	3801      	subs	r0, #1
c0de7652:	4770      	bx	lr

c0de7654 <strncmp>:
c0de7654:	b510      	push	{r4, lr}
c0de7656:	b16a      	cbz	r2, c0de7674 <strncmp+0x20>
c0de7658:	3901      	subs	r1, #1
c0de765a:	1884      	adds	r4, r0, r2
c0de765c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7660:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7664:	429a      	cmp	r2, r3
c0de7666:	d103      	bne.n	c0de7670 <strncmp+0x1c>
c0de7668:	42a0      	cmp	r0, r4
c0de766a:	d001      	beq.n	c0de7670 <strncmp+0x1c>
c0de766c:	2a00      	cmp	r2, #0
c0de766e:	d1f5      	bne.n	c0de765c <strncmp+0x8>
c0de7670:	1ad0      	subs	r0, r2, r3
c0de7672:	bd10      	pop	{r4, pc}
c0de7674:	4610      	mov	r0, r2
c0de7676:	e7fc      	b.n	c0de7672 <strncmp+0x1e>

c0de7678 <strncpy>:
c0de7678:	4603      	mov	r3, r0
c0de767a:	b510      	push	{r4, lr}
c0de767c:	3901      	subs	r1, #1
c0de767e:	b132      	cbz	r2, c0de768e <strncpy+0x16>
c0de7680:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7684:	3a01      	subs	r2, #1
c0de7686:	f803 4b01 	strb.w	r4, [r3], #1
c0de768a:	2c00      	cmp	r4, #0
c0de768c:	d1f7      	bne.n	c0de767e <strncpy+0x6>
c0de768e:	2100      	movs	r1, #0
c0de7690:	441a      	add	r2, r3
c0de7692:	4293      	cmp	r3, r2
c0de7694:	d100      	bne.n	c0de7698 <strncpy+0x20>
c0de7696:	bd10      	pop	{r4, pc}
c0de7698:	f803 1b01 	strb.w	r1, [r3], #1
c0de769c:	e7f9      	b.n	c0de7692 <strncpy+0x1a>

c0de769e <C_home_boilerplate_14px_bitmap>:
c0de769e:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de76ae:	fc7b df0f 7ffe 7ff8                          {........

c0de76b7 <C_home_boilerplate_14px>:
c0de76b7:	000e 000e 0000 769e c0de                    .......v..

c0de76c1 <C_Information_circle_14px_bitmap>:
c0de76c1:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de76d1:	e7ff 8fff 1ffc 1ee0                          .........

c0de76da <C_Information_circle_14px>:
c0de76da:	000e 000e 0000 76c1 c0de                    .......v..

c0de76e4 <C_Quit_14px_bitmap>:
c0de76e4:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de76f4:	6680 9801 7f06 fff9                          .f.......

c0de76fd <C_Quit_14px>:
c0de76fd:	000e 000e 0000 76e4 c0de                    .......v..

c0de7707 <C_Switch_Off_8px_bitmap>:
c0de7707:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de7713 <C_Switch_Off_8px>:
c0de7713:	000c 0008 0000 7707 c0de                    .......w..

c0de771d <C_Switch_On_8px_bitmap>:
c0de771d:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7729 <C_Switch_On_8px>:
c0de7729:	000c 0008 0000 771d c0de                    .......w..

c0de7733 <C_icon_back_x_bitmap>:
c0de7733:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7743:	003f 0078 00c0 0000                          ?.x......

c0de774c <C_icon_back_x>:
c0de774c:	000e 000e 0000 7733 c0de                    ......3w..

c0de7756 <C_icon_coggle_bitmap>:
c0de7756:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de7766:	807f 00b4 00c0 0000                          .........

c0de776f <C_icon_coggle>:
c0de776f:	000e 000e 0000 7756 c0de                    ......Vw..

c0de7779 <C_icon_crossmark_bitmap>:
c0de7779:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7789:	8373 1c87 600e 0018                          s....`...

c0de7792 <C_icon_crossmark>:
c0de7792:	000e 000e 0000 7779 c0de                    ......yw..

c0de779c <C_icon_down_bitmap>:
c0de779c:	2184 8024                                   .!$.

c0de77a0 <C_icon_down>:
c0de77a0:	0007 0004 0000 779c c0de                    .......w..

c0de77aa <C_icon_left_bitmap>:
c0de77aa:	8882 80a0                                   ....

c0de77ae <C_icon_left>:
c0de77ae:	0004 0007 0000 77aa c0de                    .......w..

c0de77b8 <C_icon_processing_bitmap>:
c0de77b8:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de77c8:	8361 04b7 03c8 0000                          a........

c0de77d1 <C_icon_processing>:
c0de77d1:	000e 000e 0000 77b8 c0de                    .......w..

c0de77db <C_icon_right_bitmap>:
c0de77db:	5110 1014                                   .Q..

c0de77df <C_icon_right>:
c0de77df:	0004 0007 0000 77db c0de                    .......w..

c0de77e9 <C_icon_up_bitmap>:
c0de77e9:	4812 1042                                   .HB.

c0de77ed <C_icon_up>:
c0de77ed:	0007 0004 0000 77e9 c0de                    .......w..

c0de77f7 <C_icon_validate_14_bitmap>:
c0de77f7:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7807:	a3b3 a3a3 f0b2                               ......P

c0de780e <C_icon_validate_14>:
c0de780e:	000e 000e 0100 77f7 c0de                    .......w..

c0de7818 <C_icon_warning_bitmap>:
c0de7818:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7828:	e01f 801f 001e 0018                          .........

c0de7831 <C_icon_warning>:
c0de7831:	000e 000e 0000 7818 c0de                    .......x..

c0de783b <C_app_boilerplate_14px_bitmap>:
c0de783b:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de784b:	0384 00f0 0000 0000                          .........

c0de7854 <C_app_boilerplate_14px>:
c0de7854:	000e 000e 0000 783b c0de 7544 6d6d 2079     ......;x..Dummy 
c0de7864:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0de7874:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0de7884:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0de7894:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0de78a4:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0de78b4:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0de78c4:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0de78d4:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0de78e4:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0de78f4:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0de7904:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0de7914:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0de7924:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0de7934:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0de7944:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0de7954:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0de7964:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0de7974:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0de7984:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0de7994:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0de79a4:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0de79b4:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0de79c4:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0de79d4:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0de79e4:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0de79f4:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0de7a04:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0de7a14:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0de7a24:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0de7a34:	6556 7372 6f69 006e 6143 636e 6c65 4100     Version.Cancel.A
c0de7a44:	6464 6572 7373 7620 7265 6669 6369 7461     ddress verificat
c0de7a54:	6f69 206e 6163 636e 6c65 656c 0064 6944     ion cancelled.Di
c0de7a64:	6173 6c62 6465 4100 7070 7320 7465 6974     sabled.App setti
c0de7a74:	676e 0073 6341 6563 7470 7220 7369 206b     ngs.Accept risk 
c0de7a84:	6e61 2064 6973 6e67 7420 6172 736e 6361     and sign transac
c0de7a94:	6974 6e6f 4200 696c 646e 7320 6769 696e     tion.Blind signi
c0de7aa4:	676e 6120 6568 6461 4100 6363 7065 2074     ng ahead.Accept 
c0de7ab4:	6972 6b73 6120 646e 7320 6769 206e 706f     risk and sign op
c0de7ac4:	7265 7461 6f69 006e 654d 7373 6761 2065     eration.Message 
c0de7ad4:	6572 656a 7463 6465 3000 3231 3433 3635     rejected.0123456
c0de7ae4:	3837 4139 4342 4544 0046 4f42 204c 2e25     789ABCDEF.BOL %.
c0de7af4:	732a 4100 6464 6572 7373 4200 6361 006b     *s.Address.Back.
c0de7b04:	7544 6d6d 2079 0031 2049 6e75 6564 7372     Dummy 1.I unders
c0de7b14:	6174 646e 202c 6f63 666e 7269 006d 7254     tand, confirm.Tr
c0de7b24:	6e61 6173 7463 6f69 206e 6572 656a 7463     ansaction reject
c0de7b34:	6465 4100 7070 6920 666e 006f 6953 6e67     ed.App info.Sign
c0de7b44:	6f20 6570 6172 6974 6e6f 5200 6a65 6365      operation.Rejec
c0de7b54:	2074 656d 7373 6761 0065 6552 656a 7463     t message.Reject
c0de7b64:	6f20 6570 6172 6974 6e6f 5a00 4e4b 584f      operation.ZKNOX
c0de7b74:	5600 7265 6669 2079 4f42 204c 6461 7264     .Verify BOL addr
c0de7b84:	7365 0073 4b5a 4f4e 4858 0057 7061 2070     ess.ZKNOXHW.app 
c0de7b94:	7369 7220 6165 7964 5100 6975 2074 7061     is ready.Quit ap
c0de7ba4:	0070 6f43 666e 7269 006d 0000 ed73 53a7     p.Confirm...s..S
c0de7bb4:	9d29 487d 3933 08d8 a109 05d8 bd53 02a4     ).}H39......S...
c0de7bc4:	feff fe5b ffff ffff 0000 0100 ce05 c698     ..[.............
c0de7bd4:	051b 7ff4 eae2 a5e9 bd42 f699 e7b2 4682     ........B......F
c0de7be4:	1623 b540 9545 bffe 1ed5 53b8 0001 0000     #.@.E......S....
c0de7bf4:	0000 0000 0002 0000 0000 0000 0003 0000     ................
c0de7c04:	0000 0000 0004 0000 0000 0000 a005 91c0     ................
c0de7c14:	8356 988b af28 123f e167 e675 84e2 9dc7     V...(.?.g.u.....
c0de7c24:	6d1b d08a 0acd d9e0 9057 6e33 c61c 38ee     .m......W.3n...8
c0de7c34:	9c13 111c 2302 7a53 e78c 069d 587e 10cc     .....#Sz....~X..
c0de7c44:	c667 b7fb b3d8 b0a1 fc8d 088f 4d27 e8bc     g...........'M..
c0de7c54:	51d1 9679 c09b 9fd4 25a7 dfbd e59d e055     .Qy......%....U.
c0de7c64:	6aba 3c69 db6a fc52 e79e 2ca8 fb1c d469     .ji<j.R....,..i.
c0de7c74:	67ca 525f ce0c 0276 6802 0076 8fff 0087     .g_R..v..hv.....
c0de7c84:	1974 7104 fd74 b506 7628 e1e7 0c06 ce89     t..qt...(v......
c0de7c94:	265c 0534 0a37 b608 30d0 0b2b 3eab b8ed     \&4.7....0+..>..
c0de7ca4:	2039 0aee 7267 dc97 2139 f126 a570 4a89     9 ..gr..9!&.p..J
c0de7cb4:	4464 3854 15d0 32ac 36ba 090f de2c ba44     dDT8...2.6..,.D.
c0de7cc4:	1fb1 b7c2 b5d4 d2c0 2216 ce8c 820b 39b7     .........".....9
c0de7cd4:	8de7 57da 5ae7 80c6 68ef f19d 8f15 eee3     ...W.Z...h......
c0de7ce4:	09d8 6d5c d14b c7b2 66c1 fdee 0000 0000     ..\mK....f......
	...
c0de7d0c:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7d1c:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7d2c:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7d3c:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7d4c:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7d5c:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de7d6c:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de7d8c:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de7d9c:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de7dac:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de7dbc:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de7dcc:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de7ddc:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de7dec:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de7dfc:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de7e0c:	88f4 7a60                                   ..`z

c0de7e10 <.L__const.handler_cmd_Poseidon.input>:
c0de7e10:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de7e20:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de7e30:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de7e40:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de7e50:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de7e60:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de7e70:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de7e80:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de7e90:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de7ea0:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de7eb0 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de7ecc:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de7edc:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de7eec:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de7efc:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de7f0c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de7f1c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de7f2c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de7f3c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de7f4c:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de7f6c:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de7f7c:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de7f8c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de7f9c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de7fac:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de7fbc:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de7fcc:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de7fdc:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de7fec:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de800c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de801c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de802c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de803c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de804c:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de805c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de806c:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de807c:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de808c:	9b44 9ffb                                   D...

c0de8090 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de80ac:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de80bc:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de80cc:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de80dc:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de80ec:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de80fc:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de810c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de811c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de812c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de814c:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de815c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de816c:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de817c:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de818c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de819c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de81ac:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de81bc:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de81cc:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de81ec:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de81fc:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de820c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de821c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de822c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de823c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de824c:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de825c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de826c:	8132 74b1                                   2..t

c0de8270 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8270:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8280:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8290:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de82a0:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de82b0:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de82c0:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de82d0 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de82ec:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de82fc:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de830c:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de831c:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de832c:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de833c:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de834c:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de835c:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de836c:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de838c:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de839c:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de83ac:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de83bc:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de83cc:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de83dc:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de83ec:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de83fc:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de840c:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de842c:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de843c:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de844c:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de845c:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de846c:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de847c:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de848c:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de849c:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de84ac:	a0c2 7523                                   ..#u

c0de84b0 <settingContents>:
c0de84b0:	0000 0000 84cc c0de 0001 0000               ............

c0de84bc <infoList>:
c0de84bc:	8504 c0de 850c c0de 0000 0000 0002 0000     ................

c0de84cc <contents>:
c0de84cc:	0007 0000 0324 da7a 0002 0000 0000 0000     ....$.z.........
	...
c0de8500:	170d c0de                                   ....

c0de8504 <INFO_TYPES>:
c0de8504:	7a34 c0de 7989 c0de                         4z...y..

c0de850c <INFO_CONTENTS>:
c0de850c:	78ac c0de 7b6f c0de                         .x..o{..

c0de8514 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8534:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8544:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8554 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8554:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8564:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8574:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8584:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8594:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de85a4:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de85b4:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de85c4:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de85d4:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de85e4:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de85f4:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8604:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8614:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8624:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8634:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8644:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8654:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de8664:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de8674:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8684:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8694:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de86a4:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de86b4:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de86c4:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de86d4:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de86e4:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de86f4:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8704:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de8714:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de8724:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de8734:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de8744:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de8754:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de8764:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de8774:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8784:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8794:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de87a4:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de87b4:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de87c4:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de87d4:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de87e4:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de87f4:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8804:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8814:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8824:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8834:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8844:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8854:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8864:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8874:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8884:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8894:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de88a4:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de88b4:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de88c4:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de88d4:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de88e4:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de88f4:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8904:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8914:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8924:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8934:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8944:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8954:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8964:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8974:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8984:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8994:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de89a4:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de89b4:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de89c4:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de89d4 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de89d4:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de89e4:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de89f4 <blindSigningWarning>:
c0de89f4:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8a1c <g_pcHex>:
c0de8a1c:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8a2c <g_pcHex_cap>:
c0de8a2c:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8a3c <_etext>:
	...

c0de8c00 <N_storage_real>:
	...

c0de8e00 <install_parameters>:
c0de8e00:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de8e10:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de8e20:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de8e30:	0000 0400 010a 8002 0000 802c 0000           ..........,....
