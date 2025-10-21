
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f009 f97a 	bl	c0de92fe <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f008 f835 	bl	c0de8084 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f007 fffc 	bl	c0de8018 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f007 ffe8 	bl	c0de7ff8 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f00a fb9d 	bl	c0dea774 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f009 f95b 	bl	c0de92f8 <assert_exit>
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
c0de0056:	f009 f909 	bl	c0de926c <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f00a fb87 	bl	c0dea77a <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f009 f93d 	bl	c0de92f8 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d134      	bne.n	c0de00ee <apdu_dispatcher+0x7c>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2811      	cmp	r0, #17
c0de0090:	d030      	beq.n	c0de00f4 <apdu_dispatcher+0x82>
c0de0092:	2804      	cmp	r0, #4
c0de0094:	d038      	beq.n	c0de0108 <apdu_dispatcher+0x96>
c0de0096:	2805      	cmp	r0, #5
c0de0098:	d042      	beq.n	c0de0120 <apdu_dispatcher+0xae>
c0de009a:	2806      	cmp	r0, #6
c0de009c:	d055      	beq.n	c0de014a <apdu_dispatcher+0xd8>
c0de009e:	2807      	cmp	r0, #7
c0de00a0:	d05e      	beq.n	c0de0160 <apdu_dispatcher+0xee>
c0de00a2:	2808      	cmp	r0, #8
c0de00a4:	d065      	beq.n	c0de0172 <apdu_dispatcher+0x100>
c0de00a6:	2809      	cmp	r0, #9
c0de00a8:	d06c      	beq.n	c0de0184 <apdu_dispatcher+0x112>
c0de00aa:	280a      	cmp	r0, #10
c0de00ac:	d073      	beq.n	c0de0196 <apdu_dispatcher+0x124>
c0de00ae:	280b      	cmp	r0, #11
c0de00b0:	d07a      	beq.n	c0de01a8 <apdu_dispatcher+0x136>
c0de00b2:	280c      	cmp	r0, #12
c0de00b4:	f000 8081 	beq.w	c0de01ba <apdu_dispatcher+0x148>
c0de00b8:	280d      	cmp	r0, #13
c0de00ba:	f000 8086 	beq.w	c0de01ca <apdu_dispatcher+0x158>
c0de00be:	280e      	cmp	r0, #14
c0de00c0:	f000 808b 	beq.w	c0de01da <apdu_dispatcher+0x168>
c0de00c4:	280f      	cmp	r0, #15
c0de00c6:	f000 8090 	beq.w	c0de01ea <apdu_dispatcher+0x178>
c0de00ca:	2810      	cmp	r0, #16
c0de00cc:	f000 8095 	beq.w	c0de01fa <apdu_dispatcher+0x188>
c0de00d0:	2803      	cmp	r0, #3
c0de00d2:	f040 809a 	bne.w	c0de020a <apdu_dispatcher+0x198>
c0de00d6:	78a0      	ldrb	r0, [r4, #2]
c0de00d8:	2800      	cmp	r0, #0
c0de00da:	f040 80ab 	bne.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de00de:	78e0      	ldrb	r0, [r4, #3]
c0de00e0:	2800      	cmp	r0, #0
c0de00e2:	f040 80a7 	bne.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de00e6:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de00ea:	f000 b962 	b.w	c0de03b2 <handler_get_version>
c0de00ee:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de00f2:	e0a1      	b.n	c0de0238 <apdu_dispatcher+0x1c6>
c0de00f4:	68a0      	ldr	r0, [r4, #8]
c0de00f6:	2800      	cmp	r0, #0
c0de00f8:	f000 8099 	beq.w	c0de022e <apdu_dispatcher+0x1bc>
c0de00fc:	f000 f8a6 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de0100:	a801      	add	r0, sp, #4
c0de0102:	f000 fe08 	bl	c0de0d16 <handler_cmd_Split>
c0de0106:	e090      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de0108:	78a0      	ldrb	r0, [r4, #2]
c0de010a:	2800      	cmp	r0, #0
c0de010c:	f040 8092 	bne.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de0110:	78e0      	ldrb	r0, [r4, #3]
c0de0112:	2800      	cmp	r0, #0
c0de0114:	f040 808e 	bne.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de0118:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de011c:	f000 b8e4 	b.w	c0de02e8 <handler_get_app_name>
c0de0120:	78a1      	ldrb	r1, [r4, #2]
c0de0122:	2901      	cmp	r1, #1
c0de0124:	f200 8086 	bhi.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de0128:	78e0      	ldrb	r0, [r4, #3]
c0de012a:	2800      	cmp	r0, #0
c0de012c:	f040 8082 	bne.w	c0de0234 <apdu_dispatcher+0x1c2>
c0de0130:	68a0      	ldr	r0, [r4, #8]
c0de0132:	2800      	cmp	r0, #0
c0de0134:	d07b      	beq.n	c0de022e <apdu_dispatcher+0x1bc>
c0de0136:	9001      	str	r0, [sp, #4]
c0de0138:	7920      	ldrb	r0, [r4, #4]
c0de013a:	2900      	cmp	r1, #0
c0de013c:	9002      	str	r0, [sp, #8]
c0de013e:	bf18      	it	ne
c0de0140:	2101      	movne	r1, #1
c0de0142:	a801      	add	r0, sp, #4
c0de0144:	f000 f8e4 	bl	c0de0310 <handler_get_public_key>
c0de0148:	e06f      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de014a:	78a1      	ldrb	r1, [r4, #2]
c0de014c:	2900      	cmp	r1, #0
c0de014e:	d05f      	beq.n	c0de0210 <apdu_dispatcher+0x19e>
c0de0150:	2903      	cmp	r1, #3
c0de0152:	d86f      	bhi.n	c0de0234 <apdu_dispatcher+0x1c2>
c0de0154:	78e0      	ldrb	r0, [r4, #3]
c0de0156:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de015a:	2a80      	cmp	r2, #128	@ 0x80
c0de015c:	d05c      	beq.n	c0de0218 <apdu_dispatcher+0x1a6>
c0de015e:	e069      	b.n	c0de0234 <apdu_dispatcher+0x1c2>
c0de0160:	68a0      	ldr	r0, [r4, #8]
c0de0162:	2800      	cmp	r0, #0
c0de0164:	d063      	beq.n	c0de022e <apdu_dispatcher+0x1bc>
c0de0166:	f000 f871 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de016a:	a801      	add	r0, sp, #4
c0de016c:	f000 fa28 	bl	c0de05c0 <handler_cmd_keccakH>
c0de0170:	e05b      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de0172:	68a0      	ldr	r0, [r4, #8]
c0de0174:	2800      	cmp	r0, #0
c0de0176:	d05a      	beq.n	c0de022e <apdu_dispatcher+0x1bc>
c0de0178:	f000 f868 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de017c:	a801      	add	r0, sp, #4
c0de017e:	f000 f9e8 	bl	c0de0552 <handler_cmd_blake2b512>
c0de0182:	e052      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de0184:	68a0      	ldr	r0, [r4, #8]
c0de0186:	2800      	cmp	r0, #0
c0de0188:	d051      	beq.n	c0de022e <apdu_dispatcher+0x1bc>
c0de018a:	f000 f85f 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de018e:	a801      	add	r0, sp, #4
c0de0190:	f000 fa7e 	bl	c0de0690 <handler_cmd_Poseidon>
c0de0194:	e049      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de0196:	68a0      	ldr	r0, [r4, #8]
c0de0198:	2800      	cmp	r0, #0
c0de019a:	d048      	beq.n	c0de022e <apdu_dispatcher+0x1bc>
c0de019c:	f000 f856 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de01a0:	a801      	add	r0, sp, #4
c0de01a2:	f000 fbdd 	bl	c0de0960 <handler_cmd_tEddsaPoseidon>
c0de01a6:	e040      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de01a8:	68a0      	ldr	r0, [r4, #8]
c0de01aa:	2800      	cmp	r0, #0
c0de01ac:	d03f      	beq.n	c0de022e <apdu_dispatcher+0x1bc>
c0de01ae:	f000 f84d 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de01b2:	a801      	add	r0, sp, #4
c0de01b4:	f000 fb38 	bl	c0de0828 <handler_cmd_tEddsaPoseidon_Kpub>
c0de01b8:	e037      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de01ba:	68a0      	ldr	r0, [r4, #8]
c0de01bc:	b3b8      	cbz	r0, c0de022e <apdu_dispatcher+0x1bc>
c0de01be:	f000 f845 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de01c2:	a801      	add	r0, sp, #4
c0de01c4:	f000 fb72 	bl	c0de08ac <handler_cmd_tEddsaPoseidon_Sign>
c0de01c8:	e02f      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de01ca:	68a0      	ldr	r0, [r4, #8]
c0de01cc:	b378      	cbz	r0, c0de022e <apdu_dispatcher+0x1bc>
c0de01ce:	f000 f83d 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de01d2:	a801      	add	r0, sp, #4
c0de01d4:	f000 fae2 	bl	c0de079c <handler_cmd_Poseidon_ithRC>
c0de01d8:	e027      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de01da:	68a0      	ldr	r0, [r4, #8]
c0de01dc:	b338      	cbz	r0, c0de022e <apdu_dispatcher+0x1bc>
c0de01de:	f000 f835 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de01e2:	a801      	add	r0, sp, #4
c0de01e4:	f000 fc30 	bl	c0de0a48 <handler_cmd_tEdwards>
c0de01e8:	e01f      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de01ea:	68a0      	ldr	r0, [r4, #8]
c0de01ec:	b1f8      	cbz	r0, c0de022e <apdu_dispatcher+0x1bc>
c0de01ee:	f000 f82d 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de01f2:	a801      	add	r0, sp, #4
c0de01f4:	f000 fa02 	bl	c0de05fc <handler_cmd_bolos_stretch>
c0de01f8:	e017      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de01fa:	68a0      	ldr	r0, [r4, #8]
c0de01fc:	b1b8      	cbz	r0, c0de022e <apdu_dispatcher+0x1bc>
c0de01fe:	f000 f825 	bl	c0de024c <OUTLINED_FUNCTION_0>
c0de0202:	a801      	add	r0, sp, #4
c0de0204:	f000 fcd6 	bl	c0de0bb4 <handler_cmd_Interpolate>
c0de0208:	e00f      	b.n	c0de022a <apdu_dispatcher+0x1b8>
c0de020a:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de020e:	e013      	b.n	c0de0238 <apdu_dispatcher+0x1c6>
c0de0210:	78e0      	ldrb	r0, [r4, #3]
c0de0212:	2880      	cmp	r0, #128	@ 0x80
c0de0214:	d10e      	bne.n	c0de0234 <apdu_dispatcher+0x1c2>
c0de0216:	2080      	movs	r0, #128	@ 0x80
c0de0218:	68a2      	ldr	r2, [r4, #8]
c0de021a:	b142      	cbz	r2, c0de022e <apdu_dispatcher+0x1bc>
c0de021c:	9201      	str	r2, [sp, #4]
c0de021e:	7922      	ldrb	r2, [r4, #4]
c0de0220:	9202      	str	r2, [sp, #8]
c0de0222:	09c2      	lsrs	r2, r0, #7
c0de0224:	a801      	add	r0, sp, #4
c0de0226:	f000 f8db 	bl	c0de03e0 <handler_sign_tx>
c0de022a:	b004      	add	sp, #16
c0de022c:	bd10      	pop	{r4, pc}
c0de022e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0232:	e001      	b.n	c0de0238 <apdu_dispatcher+0x1c6>
c0de0234:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0238:	b004      	add	sp, #16
c0de023a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de023e:	f000 b800 	b.w	c0de0242 <io_send_sw>

c0de0242 <io_send_sw>:
c0de0242:	4602      	mov	r2, r0
c0de0244:	2000      	movs	r0, #0
c0de0246:	2100      	movs	r1, #0
c0de0248:	f007 be66 	b.w	c0de7f18 <io_send_response_buffers>

c0de024c <OUTLINED_FUNCTION_0>:
c0de024c:	9001      	str	r0, [sp, #4]
c0de024e:	7920      	ldrb	r0, [r4, #4]
c0de0250:	9002      	str	r0, [sp, #8]
c0de0252:	4770      	bx	lr

c0de0254 <app_main>:
c0de0254:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de0256:	f007 fe37 	bl	c0de7ec8 <io_init>
c0de025a:	481e      	ldr	r0, [pc, #120]	@ (c0de02d4 <app_main+0x80>)
c0de025c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0260:	b908      	cbnz	r0, c0de0266 <app_main+0x12>
c0de0262:	f001 f867 	bl	c0de1334 <ui_menu_main>
c0de0266:	481c      	ldr	r0, [pc, #112]	@ (c0de02d8 <app_main+0x84>)
c0de0268:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de026c:	4448      	add	r0, r9
c0de026e:	f00a fa8d 	bl	c0dea78c <explicit_bzero>
c0de0272:	481b      	ldr	r0, [pc, #108]	@ (c0de02e0 <app_main+0x8c>)
c0de0274:	4478      	add	r0, pc
c0de0276:	f009 fe7d 	bl	c0de9f74 <pic>
c0de027a:	7880      	ldrb	r0, [r0, #2]
c0de027c:	2801      	cmp	r0, #1
c0de027e:	d00d      	beq.n	c0de029c <app_main+0x48>
c0de0280:	2001      	movs	r0, #1
c0de0282:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0286:	2000      	movs	r0, #0
c0de0288:	f8ad 0000 	strh.w	r0, [sp]
c0de028c:	4815      	ldr	r0, [pc, #84]	@ (c0de02e4 <app_main+0x90>)
c0de028e:	4478      	add	r0, pc
c0de0290:	f009 fe70 	bl	c0de9f74 <pic>
c0de0294:	4669      	mov	r1, sp
c0de0296:	2203      	movs	r2, #3
c0de0298:	f009 fef0 	bl	c0dea07c <nvm_write>
c0de029c:	4d0f      	ldr	r5, [pc, #60]	@ (c0de02dc <app_main+0x88>)
c0de029e:	ac01      	add	r4, sp, #4
c0de02a0:	f007 fe1c 	bl	c0de7edc <io_recv_command>
c0de02a4:	2800      	cmp	r0, #0
c0de02a6:	d414      	bmi.n	c0de02d2 <app_main+0x7e>
c0de02a8:	4602      	mov	r2, r0
c0de02aa:	eb09 0105 	add.w	r1, r9, r5
c0de02ae:	4620      	mov	r0, r4
c0de02b0:	f007 ff38 	bl	c0de8124 <apdu_parser>
c0de02b4:	b130      	cbz	r0, c0de02c4 <app_main+0x70>
c0de02b6:	4620      	mov	r0, r4
c0de02b8:	f7ff fedb 	bl	c0de0072 <apdu_dispatcher>
c0de02bc:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de02c0:	dcee      	bgt.n	c0de02a0 <app_main+0x4c>
c0de02c2:	e006      	b.n	c0de02d2 <app_main+0x7e>
c0de02c4:	2000      	movs	r0, #0
c0de02c6:	2100      	movs	r1, #0
c0de02c8:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de02cc:	f007 fe24 	bl	c0de7f18 <io_send_response_buffers>
c0de02d0:	e7e6      	b.n	c0de02a0 <app_main+0x4c>
c0de02d2:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de02d4:	000018d4 	.word	0x000018d4
c0de02d8:	00000000 	.word	0x00000000
c0de02dc:	000019bc 	.word	0x000019bc
c0de02e0:	0000b788 	.word	0x0000b788
c0de02e4:	0000b76e 	.word	0x0000b76e

c0de02e8 <handler_get_app_name>:
c0de02e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de02ea:	4808      	ldr	r0, [pc, #32]	@ (c0de030c <handler_get_app_name+0x24>)
c0de02ec:	4478      	add	r0, pc
c0de02ee:	f009 fe41 	bl	c0de9f74 <pic>
c0de02f2:	2100      	movs	r1, #0
c0de02f4:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de02f8:	9103      	str	r1, [sp, #12]
c0de02fa:	2107      	movs	r1, #7
c0de02fc:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0300:	a801      	add	r0, sp, #4
c0de0302:	2101      	movs	r1, #1
c0de0304:	f007 fe08 	bl	c0de7f18 <io_send_response_buffers>
c0de0308:	b004      	add	sp, #16
c0de030a:	bd80      	pop	{r7, pc}
c0de030c:	0000aa8d 	.word	0x0000aa8d

c0de0310 <handler_get_public_key>:
c0de0310:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0312:	b085      	sub	sp, #20
c0de0314:	4f23      	ldr	r7, [pc, #140]	@ (c0de03a4 <handler_get_public_key+0x94>)
c0de0316:	460c      	mov	r4, r1
c0de0318:	4605      	mov	r5, r0
c0de031a:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de031e:	eb09 0607 	add.w	r6, r9, r7
c0de0322:	4630      	mov	r0, r6
c0de0324:	f00a fa32 	bl	c0dea78c <explicit_bzero>
c0de0328:	2000      	movs	r0, #0
c0de032a:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de032e:	f809 0007 	strb.w	r0, [r9, r7]
c0de0332:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de0336:	4628      	mov	r0, r5
c0de0338:	f007 fb5a 	bl	c0de79f0 <buffer_read_u8>
c0de033c:	b308      	cbz	r0, c0de0382 <handler_get_public_key+0x72>
c0de033e:	eb09 0007 	add.w	r0, r9, r7
c0de0342:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0346:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de034a:	4628      	mov	r0, r5
c0de034c:	f007 fba3 	bl	c0de7a96 <buffer_read_bip32_path>
c0de0350:	b1b8      	cbz	r0, c0de0382 <handler_get_public_key+0x72>
c0de0352:	eb09 0007 	add.w	r0, r9, r7
c0de0356:	2100      	movs	r1, #0
c0de0358:	2205      	movs	r2, #5
c0de035a:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de035e:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de0362:	9104      	str	r1, [sp, #16]
c0de0364:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de0368:	f100 0608 	add.w	r6, r0, #8
c0de036c:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de0370:	2000      	movs	r0, #0
c0de0372:	2121      	movs	r1, #33	@ 0x21
c0de0374:	e9cd 6500 	strd	r6, r5, [sp]
c0de0378:	f007 fc4e 	bl	c0de7c18 <bip32_derive_with_seed_get_pubkey_256>
c0de037c:	b140      	cbz	r0, c0de0390 <handler_get_public_key+0x80>
c0de037e:	b280      	uxth	r0, r0
c0de0380:	e001      	b.n	c0de0386 <handler_get_public_key+0x76>
c0de0382:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0386:	b005      	add	sp, #20
c0de0388:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de038c:	f000 b80c 	b.w	c0de03a8 <io_send_sw>
c0de0390:	2c00      	cmp	r4, #0
c0de0392:	b005      	add	sp, #20
c0de0394:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0398:	bf08      	it	eq
c0de039a:	f000 bd97 	beq.w	c0de0ecc <helper_send_response_pubkey>
c0de039e:	f001 b8ad 	b.w	c0de14fc <ui_display_address>
c0de03a2:	bf00      	nop
c0de03a4:	00000000 	.word	0x00000000

c0de03a8 <io_send_sw>:
c0de03a8:	4602      	mov	r2, r0
c0de03aa:	2000      	movs	r0, #0
c0de03ac:	2100      	movs	r1, #0
c0de03ae:	f007 bdb3 	b.w	c0de7f18 <io_send_response_buffers>

c0de03b2 <handler_get_version>:
c0de03b2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03b4:	2000      	movs	r0, #0
c0de03b6:	2101      	movs	r1, #1
c0de03b8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03bc:	f88d 0002 	strb.w	r0, [sp, #2]
c0de03c0:	f88d 0001 	strb.w	r0, [sp, #1]
c0de03c4:	9003      	str	r0, [sp, #12]
c0de03c6:	2003      	movs	r0, #3
c0de03c8:	f88d 1003 	strb.w	r1, [sp, #3]
c0de03cc:	2101      	movs	r1, #1
c0de03ce:	9002      	str	r0, [sp, #8]
c0de03d0:	f10d 0001 	add.w	r0, sp, #1
c0de03d4:	9001      	str	r0, [sp, #4]
c0de03d6:	a801      	add	r0, sp, #4
c0de03d8:	f007 fd9e 	bl	c0de7f18 <io_send_response_buffers>
c0de03dc:	b004      	add	sp, #16
c0de03de:	bd80      	pop	{r7, pc}

c0de03e0 <handler_sign_tx>:
c0de03e0:	b570      	push	{r4, r5, r6, lr}
c0de03e2:	b086      	sub	sp, #24
c0de03e4:	4e54      	ldr	r6, [pc, #336]	@ (c0de0538 <handler_sign_tx+0x158>)
c0de03e6:	4604      	mov	r4, r0
c0de03e8:	b191      	cbz	r1, c0de0410 <handler_sign_tx+0x30>
c0de03ea:	eb09 0006 	add.w	r0, r9, r6
c0de03ee:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de03f2:	2801      	cmp	r0, #1
c0de03f4:	d12c      	bne.n	c0de0450 <handler_sign_tx+0x70>
c0de03f6:	eb09 0006 	add.w	r0, r9, r6
c0de03fa:	4615      	mov	r5, r2
c0de03fc:	6862      	ldr	r2, [r4, #4]
c0de03fe:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de0402:	1811      	adds	r1, r2, r0
c0de0404:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0408:	d925      	bls.n	c0de0456 <handler_sign_tx+0x76>
c0de040a:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de040e:	e039      	b.n	c0de0484 <handler_sign_tx+0xa4>
c0de0410:	eb09 0506 	add.w	r5, r9, r6
c0de0414:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0418:	4628      	mov	r0, r5
c0de041a:	f00a f9b7 	bl	c0dea78c <explicit_bzero>
c0de041e:	2000      	movs	r0, #0
c0de0420:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de0424:	f809 0006 	strb.w	r0, [r9, r6]
c0de0428:	2001      	movs	r0, #1
c0de042a:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de042e:	4620      	mov	r0, r4
c0de0430:	f007 fade 	bl	c0de79f0 <buffer_read_u8>
c0de0434:	b148      	cbz	r0, c0de044a <handler_sign_tx+0x6a>
c0de0436:	eb09 0006 	add.w	r0, r9, r6
c0de043a:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de043e:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de0442:	4620      	mov	r0, r4
c0de0444:	f007 fb27 	bl	c0de7a96 <buffer_read_bip32_path>
c0de0448:	b9b8      	cbnz	r0, c0de047a <handler_sign_tx+0x9a>
c0de044a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de044e:	e019      	b.n	c0de0484 <handler_sign_tx+0xa4>
c0de0450:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0454:	e016      	b.n	c0de0484 <handler_sign_tx+0xa4>
c0de0456:	eb09 0106 	add.w	r1, r9, r6
c0de045a:	4408      	add	r0, r1
c0de045c:	f100 0108 	add.w	r1, r0, #8
c0de0460:	4620      	mov	r0, r4
c0de0462:	f007 fb42 	bl	c0de7aea <buffer_move>
c0de0466:	b158      	cbz	r0, c0de0480 <handler_sign_tx+0xa0>
c0de0468:	eb09 0106 	add.w	r1, r9, r6
c0de046c:	6862      	ldr	r2, [r4, #4]
c0de046e:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de0472:	4410      	add	r0, r2
c0de0474:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de0478:	b14d      	cbz	r5, c0de048e <handler_sign_tx+0xae>
c0de047a:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de047e:	e001      	b.n	c0de0484 <handler_sign_tx+0xa4>
c0de0480:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0484:	b006      	add	sp, #24
c0de0486:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de048a:	f000 b85d 	b.w	c0de0548 <io_send_sw>
c0de048e:	2100      	movs	r1, #0
c0de0490:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de0494:	eb09 0006 	add.w	r0, r9, r6
c0de0498:	f100 0108 	add.w	r1, r0, #8
c0de049c:	9101      	str	r1, [sp, #4]
c0de049e:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de04a2:	a801      	add	r0, sp, #4
c0de04a4:	f000 fe68 	bl	c0de1178 <transaction_deserialize>
c0de04a8:	2801      	cmp	r0, #1
c0de04aa:	d114      	bne.n	c0de04d6 <handler_sign_tx+0xf6>
c0de04ac:	2001      	movs	r0, #1
c0de04ae:	f809 0006 	strb.w	r0, [r9, r6]
c0de04b2:	eb09 0006 	add.w	r0, r9, r6
c0de04b6:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de04ba:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de04be:	9105      	str	r1, [sp, #20]
c0de04c0:	f100 0108 	add.w	r1, r0, #8
c0de04c4:	9104      	str	r1, [sp, #16]
c0de04c6:	a804      	add	r0, sp, #16
c0de04c8:	2101      	movs	r1, #1
c0de04ca:	f008 fecf 	bl	c0de926c <cx_keccak_256_hash_iovec>
c0de04ce:	b140      	cbz	r0, c0de04e2 <handler_sign_tx+0x102>
c0de04d0:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de04d4:	e001      	b.n	c0de04da <handler_sign_tx+0xfa>
c0de04d6:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de04da:	f000 f835 	bl	c0de0548 <io_send_sw>
c0de04de:	b006      	add	sp, #24
c0de04e0:	bd70      	pop	{r4, r5, r6, pc}
c0de04e2:	4816      	ldr	r0, [pc, #88]	@ (c0de053c <handler_sign_tx+0x15c>)
c0de04e4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de04e8:	b1a0      	cbz	r0, c0de0514 <handler_sign_tx+0x134>
c0de04ea:	4815      	ldr	r0, [pc, #84]	@ (c0de0540 <handler_sign_tx+0x160>)
c0de04ec:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de04f0:	b9f9      	cbnz	r1, c0de0532 <handler_sign_tx+0x152>
c0de04f2:	eb09 0406 	add.w	r4, r9, r6
c0de04f6:	2101      	movs	r1, #1
c0de04f8:	f809 1000 	strb.w	r1, [r9, r0]
c0de04fc:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0500:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de0502:	9400      	str	r4, [sp, #0]
c0de0504:	f000 fdf8 	bl	c0de10f8 <swap_check_validity>
c0de0508:	b110      	cbz	r0, c0de0510 <handler_sign_tx+0x130>
c0de050a:	2001      	movs	r0, #1
c0de050c:	f000 febc 	bl	c0de1288 <validate_transaction>
c0de0510:	2000      	movs	r0, #0
c0de0512:	e7e4      	b.n	c0de04de <handler_sign_tx+0xfe>
c0de0514:	eb09 0006 	add.w	r0, r9, r6
c0de0518:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de051c:	4909      	ldr	r1, [pc, #36]	@ (c0de0544 <handler_sign_tx+0x164>)
c0de051e:	4479      	add	r1, pc
c0de0520:	f00a f978 	bl	c0dea814 <strcmp>
c0de0524:	b110      	cbz	r0, c0de052c <handler_sign_tx+0x14c>
c0de0526:	f001 f906 	bl	c0de1736 <ui_display_transaction>
c0de052a:	e7d8      	b.n	c0de04de <handler_sign_tx+0xfe>
c0de052c:	f001 f900 	bl	c0de1730 <ui_display_blind_signed_transaction>
c0de0530:	e7d5      	b.n	c0de04de <handler_sign_tx+0xfe>
c0de0532:	20ff      	movs	r0, #255	@ 0xff
c0de0534:	f009 ff38 	bl	c0dea3a8 <os_sched_exit>
c0de0538:	00000000 	.word	0x00000000
c0de053c:	000018d4 	.word	0x000018d4
c0de0540:	000018d5 	.word	0x000018d5
c0de0544:	0000a567 	.word	0x0000a567

c0de0548 <io_send_sw>:
c0de0548:	4602      	mov	r2, r0
c0de054a:	2000      	movs	r0, #0
c0de054c:	2100      	movs	r1, #0
c0de054e:	f007 bce3 	b.w	c0de7f18 <io_send_response_buffers>

c0de0552 <handler_cmd_blake2b512>:
c0de0552:	b510      	push	{r4, lr}
c0de0554:	b0d0      	sub	sp, #320	@ 0x140
c0de0556:	4604      	mov	r4, r0
c0de0558:	6840      	ldr	r0, [r0, #4]
c0de055a:	2820      	cmp	r0, #32
c0de055c:	d10b      	bne.n	c0de0576 <handler_cmd_blake2b512+0x24>
c0de055e:	6820      	ldr	r0, [r4, #0]
c0de0560:	a940      	add	r1, sp, #256	@ 0x100
c0de0562:	2220      	movs	r2, #32
c0de0564:	f001 f8ea 	bl	c0de173c <zkn_prv_hash>
c0de0568:	b988      	cbnz	r0, c0de058e <handler_cmd_blake2b512+0x3c>
c0de056a:	a840      	add	r0, sp, #256	@ 0x100
c0de056c:	2140      	movs	r1, #64	@ 0x40
c0de056e:	f000 f817 	bl	c0de05a0 <io_send_response_pointer>
c0de0572:	2000      	movs	r0, #0
c0de0574:	e00d      	b.n	c0de0592 <handler_cmd_blake2b512+0x40>
c0de0576:	4668      	mov	r0, sp
c0de0578:	2109      	movs	r1, #9
c0de057a:	2240      	movs	r2, #64	@ 0x40
c0de057c:	f008 fea4 	bl	c0de92c8 <cx_hash_init_ex>
c0de0580:	b928      	cbnz	r0, c0de058e <handler_cmd_blake2b512+0x3c>
c0de0582:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0586:	4668      	mov	r0, sp
c0de0588:	f008 fea3 	bl	c0de92d2 <cx_hash_update>
c0de058c:	b118      	cbz	r0, c0de0596 <handler_cmd_blake2b512+0x44>
c0de058e:	f000 fc8a 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0592:	b050      	add	sp, #320	@ 0x140
c0de0594:	bd10      	pop	{r4, pc}
c0de0596:	4668      	mov	r0, sp
c0de0598:	a940      	add	r1, sp, #256	@ 0x100
c0de059a:	f008 fe90 	bl	c0de92be <cx_hash_final>
c0de059e:	e7e3      	b.n	c0de0568 <handler_cmd_blake2b512+0x16>

c0de05a0 <io_send_response_pointer>:
c0de05a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de05a2:	2200      	movs	r2, #0
c0de05a4:	ab01      	add	r3, sp, #4
c0de05a6:	c307      	stmia	r3!, {r0, r1, r2}
c0de05a8:	a801      	add	r0, sp, #4
c0de05aa:	2101      	movs	r1, #1
c0de05ac:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de05b0:	f007 fcb2 	bl	c0de7f18 <io_send_response_buffers>
c0de05b4:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de05b6 <io_send_sw>:
c0de05b6:	4602      	mov	r2, r0
c0de05b8:	2000      	movs	r0, #0
c0de05ba:	2100      	movs	r1, #0
c0de05bc:	f007 bcac 	b.w	c0de7f18 <io_send_response_buffers>

c0de05c0 <handler_cmd_keccakH>:
c0de05c0:	b510      	push	{r4, lr}
c0de05c2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de05c4:	4604      	mov	r4, r0
c0de05c6:	4668      	mov	r0, sp
c0de05c8:	2106      	movs	r1, #6
c0de05ca:	2220      	movs	r2, #32
c0de05cc:	f008 fe7c 	bl	c0de92c8 <cx_hash_init_ex>
c0de05d0:	b950      	cbnz	r0, c0de05e8 <handler_cmd_keccakH+0x28>
c0de05d2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de05d6:	4668      	mov	r0, sp
c0de05d8:	f008 fe7b 	bl	c0de92d2 <cx_hash_update>
c0de05dc:	b920      	cbnz	r0, c0de05e8 <handler_cmd_keccakH+0x28>
c0de05de:	4668      	mov	r0, sp
c0de05e0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de05e2:	f008 fe6c 	bl	c0de92be <cx_hash_final>
c0de05e6:	b118      	cbz	r0, c0de05f0 <handler_cmd_keccakH+0x30>
c0de05e8:	f000 fc5d 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de05ec:	b072      	add	sp, #456	@ 0x1c8
c0de05ee:	bd10      	pop	{r4, pc}
c0de05f0:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de05f2:	2120      	movs	r1, #32
c0de05f4:	f7ff ffd4 	bl	c0de05a0 <io_send_response_pointer>
c0de05f8:	2000      	movs	r0, #0
c0de05fa:	e7f7      	b.n	c0de05ec <handler_cmd_keccakH+0x2c>

c0de05fc <handler_cmd_bolos_stretch>:
c0de05fc:	b510      	push	{r4, lr}
c0de05fe:	b0a4      	sub	sp, #144	@ 0x90
c0de0600:	f000 fc4d 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de0604:	bba0      	cbnz	r0, c0de0670 <handler_cmd_bolos_stretch+0x74>
c0de0606:	ac14      	add	r4, sp, #80	@ 0x50
c0de0608:	491e      	ldr	r1, [pc, #120]	@ (c0de0684 <handler_cmd_bolos_stretch+0x88>)
c0de060a:	2220      	movs	r2, #32
c0de060c:	4620      	mov	r0, r4
c0de060e:	4479      	add	r1, pc
c0de0610:	f00a f8b3 	bl	c0dea77a <__aeabi_memcpy>
c0de0614:	a80c      	add	r0, sp, #48	@ 0x30
c0de0616:	491c      	ldr	r1, [pc, #112]	@ (c0de0688 <handler_cmd_bolos_stretch+0x8c>)
c0de0618:	2220      	movs	r2, #32
c0de061a:	4479      	add	r1, pc
c0de061c:	f00a f8ad 	bl	c0dea77a <__aeabi_memcpy>
c0de0620:	a804      	add	r0, sp, #16
c0de0622:	491a      	ldr	r1, [pc, #104]	@ (c0de068c <handler_cmd_bolos_stretch+0x90>)
c0de0624:	2220      	movs	r2, #32
c0de0626:	4479      	add	r1, pc
c0de0628:	f00a f8a7 	bl	c0dea77a <__aeabi_memcpy>
c0de062c:	a803      	add	r0, sp, #12
c0de062e:	2120      	movs	r1, #32
c0de0630:	4622      	mov	r2, r4
c0de0632:	f000 fc45 	bl	c0de0ec0 <OUTLINED_FUNCTION_5>
c0de0636:	b9d8      	cbnz	r0, c0de0670 <handler_cmd_bolos_stretch+0x74>
c0de0638:	a802      	add	r0, sp, #8
c0de063a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de063c:	2120      	movs	r1, #32
c0de063e:	f000 fc3f 	bl	c0de0ec0 <OUTLINED_FUNCTION_5>
c0de0642:	b9a8      	cbnz	r0, c0de0670 <handler_cmd_bolos_stretch+0x74>
c0de0644:	a801      	add	r0, sp, #4
c0de0646:	aa04      	add	r2, sp, #16
c0de0648:	2120      	movs	r1, #32
c0de064a:	f000 fc39 	bl	c0de0ec0 <OUTLINED_FUNCTION_5>
c0de064e:	b978      	cbnz	r0, c0de0670 <handler_cmd_bolos_stretch+0x74>
c0de0650:	4668      	mov	r0, sp
c0de0652:	f000 fc2b 	bl	c0de0eac <OUTLINED_FUNCTION_2>
c0de0656:	b958      	cbnz	r0, c0de0670 <handler_cmd_bolos_stretch+0x74>
c0de0658:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de065c:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0660:	f009 fda2 	bl	c0dea1a8 <cx_bn_mod_add>
c0de0664:	b920      	cbnz	r0, c0de0670 <handler_cmd_bolos_stretch+0x74>
c0de0666:	9800      	ldr	r0, [sp, #0]
c0de0668:	a91c      	add	r1, sp, #112	@ 0x70
c0de066a:	f000 fc26 	bl	c0de0eba <OUTLINED_FUNCTION_4>
c0de066e:	b118      	cbz	r0, c0de0678 <handler_cmd_bolos_stretch+0x7c>
c0de0670:	f000 fc19 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0674:	b024      	add	sp, #144	@ 0x90
c0de0676:	bd10      	pop	{r4, pc}
c0de0678:	a81c      	add	r0, sp, #112	@ 0x70
c0de067a:	2120      	movs	r1, #32
c0de067c:	f7ff ff90 	bl	c0de05a0 <io_send_response_pointer>
c0de0680:	2000      	movs	r0, #0
c0de0682:	e7f7      	b.n	c0de0674 <handler_cmd_bolos_stretch+0x78>
c0de0684:	0000a876 	.word	0x0000a876
c0de0688:	0000a7ea 	.word	0x0000a7ea
c0de068c:	0000a8de 	.word	0x0000a8de

c0de0690 <handler_cmd_Poseidon>:
c0de0690:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0694:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0698:	4604      	mov	r4, r0
c0de069a:	a860      	add	r0, sp, #384	@ 0x180
c0de069c:	493d      	ldr	r1, [pc, #244]	@ (c0de0794 <handler_cmd_Poseidon+0x104>)
c0de069e:	22a0      	movs	r2, #160	@ 0xa0
c0de06a0:	4479      	add	r1, pc
c0de06a2:	f00a f86a 	bl	c0dea77a <__aeabi_memcpy>
c0de06a6:	f000 fbfa 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de06aa:	bb68      	cbnz	r0, c0de0708 <handler_cmd_Poseidon+0x78>
c0de06ac:	2000      	movs	r0, #0
c0de06ae:	a948      	add	r1, sp, #288	@ 0x120
c0de06b0:	22ff      	movs	r2, #255	@ 0xff
c0de06b2:	2860      	cmp	r0, #96	@ 0x60
c0de06b4:	d002      	beq.n	c0de06bc <handler_cmd_Poseidon+0x2c>
c0de06b6:	540a      	strb	r2, [r1, r0]
c0de06b8:	3001      	adds	r0, #1
c0de06ba:	e7fa      	b.n	c0de06b2 <handler_cmd_Poseidon+0x22>
c0de06bc:	4936      	ldr	r1, [pc, #216]	@ (c0de0798 <handler_cmd_Poseidon+0x108>)
c0de06be:	466d      	mov	r5, sp
c0de06c0:	2220      	movs	r2, #32
c0de06c2:	4628      	mov	r0, r5
c0de06c4:	4479      	add	r1, pc
c0de06c6:	f00a f858 	bl	c0dea77a <__aeabi_memcpy>
c0de06ca:	a809      	add	r0, sp, #36	@ 0x24
c0de06cc:	2120      	movs	r1, #32
c0de06ce:	462a      	mov	r2, r5
c0de06d0:	f000 fbf6 	bl	c0de0ec0 <OUTLINED_FUNCTION_5>
c0de06d4:	b9c0      	cbnz	r0, c0de0708 <handler_cmd_Poseidon+0x78>
c0de06d6:	a808      	add	r0, sp, #32
c0de06d8:	466a      	mov	r2, sp
c0de06da:	2120      	movs	r1, #32
c0de06dc:	f000 fbf0 	bl	c0de0ec0 <OUTLINED_FUNCTION_5>
c0de06e0:	b990      	cbnz	r0, c0de0708 <handler_cmd_Poseidon+0x78>
c0de06e2:	a80a      	add	r0, sp, #40	@ 0x28
c0de06e4:	2120      	movs	r1, #32
c0de06e6:	f009 fda5 	bl	c0dea234 <cx_mont_alloc>
c0de06ea:	b968      	cbnz	r0, c0de0708 <handler_cmd_Poseidon+0x78>
c0de06ec:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de06ee:	a80a      	add	r0, sp, #40	@ 0x28
c0de06f0:	f009 fdaa 	bl	c0dea248 <cx_mont_init>
c0de06f4:	b940      	cbnz	r0, c0de0708 <handler_cmd_Poseidon+0x78>
c0de06f6:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de06fa:	ab0a      	add	r3, sp, #40	@ 0x28
c0de06fc:	2105      	movs	r1, #5
c0de06fe:	2205      	movs	r2, #5
c0de0700:	4640      	mov	r0, r8
c0de0702:	f001 ffd5 	bl	c0de26b0 <Poseidon_alloc_init>
c0de0706:	b128      	cbz	r0, c0de0714 <handler_cmd_Poseidon+0x84>
c0de0708:	f000 fbcd 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de070c:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0710:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0714:	2700      	movs	r7, #0
c0de0716:	ae60      	add	r6, sp, #384	@ 0x180
c0de0718:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de071a:	4287      	cmp	r7, r0
c0de071c:	d212      	bcs.n	c0de0744 <handler_cmd_Poseidon+0xb4>
c0de071e:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de0722:	4631      	mov	r1, r6
c0de0724:	2220      	movs	r2, #32
c0de0726:	69e8      	ldr	r0, [r5, #28]
c0de0728:	f009 fcee 	bl	c0dea108 <cx_bn_init>
c0de072c:	2800      	cmp	r0, #0
c0de072e:	d1eb      	bne.n	c0de0708 <handler_cmd_Poseidon+0x78>
c0de0730:	69e8      	ldr	r0, [r5, #28]
c0de0732:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0734:	4601      	mov	r1, r0
c0de0736:	f009 fd91 	bl	c0dea25c <cx_mont_to_montgomery>
c0de073a:	3701      	adds	r7, #1
c0de073c:	3620      	adds	r6, #32
c0de073e:	2800      	cmp	r0, #0
c0de0740:	d0ea      	beq.n	c0de0718 <handler_cmd_Poseidon+0x88>
c0de0742:	e7e1      	b.n	c0de0708 <handler_cmd_Poseidon+0x78>
c0de0744:	aa08      	add	r2, sp, #32
c0de0746:	4640      	mov	r0, r8
c0de0748:	2100      	movs	r1, #0
c0de074a:	2301      	movs	r3, #1
c0de074c:	f002 f816 	bl	c0de277c <Poseidon>
c0de0750:	6820      	ldr	r0, [r4, #0]
c0de0752:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0754:	7800      	ldrb	r0, [r0, #0]
c0de0756:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de075a:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de075e:	4601      	mov	r1, r0
c0de0760:	f009 fd88 	bl	c0dea274 <cx_mont_from_montgomery>
c0de0764:	2800      	cmp	r0, #0
c0de0766:	d1cf      	bne.n	c0de0708 <handler_cmd_Poseidon+0x78>
c0de0768:	6820      	ldr	r0, [r4, #0]
c0de076a:	a948      	add	r1, sp, #288	@ 0x120
c0de076c:	f000 fba5 	bl	c0de0eba <OUTLINED_FUNCTION_4>
c0de0770:	2800      	cmp	r0, #0
c0de0772:	d1c9      	bne.n	c0de0708 <handler_cmd_Poseidon+0x78>
c0de0774:	a848      	add	r0, sp, #288	@ 0x120
c0de0776:	2160      	movs	r1, #96	@ 0x60
c0de0778:	f7ff ff12 	bl	c0de05a0 <io_send_response_pointer>
c0de077c:	a808      	add	r0, sp, #32
c0de077e:	f009 fcaf 	bl	c0dea0e0 <cx_bn_destroy>
c0de0782:	2800      	cmp	r0, #0
c0de0784:	d1c0      	bne.n	c0de0708 <handler_cmd_Poseidon+0x78>
c0de0786:	f009 fc8d 	bl	c0dea0a4 <cx_bn_unlock>
c0de078a:	2800      	cmp	r0, #0
c0de078c:	d1bc      	bne.n	c0de0708 <handler_cmd_Poseidon+0x78>
c0de078e:	2000      	movs	r0, #0
c0de0790:	e7bc      	b.n	c0de070c <handler_cmd_Poseidon+0x7c>
c0de0792:	bf00      	nop
c0de0794:	0000a924 	.word	0x0000a924
c0de0798:	0000a8a0 	.word	0x0000a8a0

c0de079c <handler_cmd_Poseidon_ithRC>:
c0de079c:	b570      	push	{r4, r5, r6, lr}
c0de079e:	b0d0      	sub	sp, #320	@ 0x140
c0de07a0:	4604      	mov	r4, r0
c0de07a2:	f000 fb7c 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de07a6:	bba8      	cbnz	r0, c0de0814 <handler_cmd_Poseidon_ithRC+0x78>
c0de07a8:	a848      	add	r0, sp, #288	@ 0x120
c0de07aa:	491d      	ldr	r1, [pc, #116]	@ (c0de0820 <handler_cmd_Poseidon_ithRC+0x84>)
c0de07ac:	2220      	movs	r2, #32
c0de07ae:	4479      	add	r1, pc
c0de07b0:	f009 ffe3 	bl	c0dea77a <__aeabi_memcpy>
c0de07b4:	ad01      	add	r5, sp, #4
c0de07b6:	491b      	ldr	r1, [pc, #108]	@ (c0de0824 <handler_cmd_Poseidon_ithRC+0x88>)
c0de07b8:	2220      	movs	r2, #32
c0de07ba:	4628      	mov	r0, r5
c0de07bc:	4479      	add	r1, pc
c0de07be:	f009 ffdc 	bl	c0dea77a <__aeabi_memcpy>
c0de07c2:	a809      	add	r0, sp, #36	@ 0x24
c0de07c4:	2120      	movs	r1, #32
c0de07c6:	462a      	mov	r2, r5
c0de07c8:	f000 fb7a 	bl	c0de0ec0 <OUTLINED_FUNCTION_5>
c0de07cc:	bb10      	cbnz	r0, c0de0814 <handler_cmd_Poseidon_ithRC+0x78>
c0de07ce:	a80a      	add	r0, sp, #40	@ 0x28
c0de07d0:	2120      	movs	r1, #32
c0de07d2:	f009 fd2f 	bl	c0dea234 <cx_mont_alloc>
c0de07d6:	b9e8      	cbnz	r0, c0de0814 <handler_cmd_Poseidon_ithRC+0x78>
c0de07d8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07da:	a80a      	add	r0, sp, #40	@ 0x28
c0de07dc:	f009 fd34 	bl	c0dea248 <cx_mont_init>
c0de07e0:	b9c0      	cbnz	r0, c0de0814 <handler_cmd_Poseidon_ithRC+0x78>
c0de07e2:	a80c      	add	r0, sp, #48	@ 0x30
c0de07e4:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07e6:	2105      	movs	r1, #5
c0de07e8:	2205      	movs	r2, #5
c0de07ea:	f001 ff61 	bl	c0de26b0 <Poseidon_alloc_init>
c0de07ee:	b988      	cbnz	r0, c0de0814 <handler_cmd_Poseidon_ithRC+0x78>
c0de07f0:	6820      	ldr	r0, [r4, #0]
c0de07f2:	7806      	ldrb	r6, [r0, #0]
c0de07f4:	ac0c      	add	r4, sp, #48	@ 0x30
c0de07f6:	ad48      	add	r5, sp, #288	@ 0x120
c0de07f8:	b12e      	cbz	r6, c0de0806 <handler_cmd_Poseidon_ithRC+0x6a>
c0de07fa:	4620      	mov	r0, r4
c0de07fc:	4629      	mov	r1, r5
c0de07fe:	f001 ff53 	bl	c0de26a8 <Poseidon_getNext_RC>
c0de0802:	3e01      	subs	r6, #1
c0de0804:	e7f8      	b.n	c0de07f8 <handler_cmd_Poseidon_ithRC+0x5c>
c0de0806:	a848      	add	r0, sp, #288	@ 0x120
c0de0808:	2120      	movs	r1, #32
c0de080a:	f7ff fec9 	bl	c0de05a0 <io_send_response_pointer>
c0de080e:	f009 fc49 	bl	c0dea0a4 <cx_bn_unlock>
c0de0812:	b118      	cbz	r0, c0de081c <handler_cmd_Poseidon_ithRC+0x80>
c0de0814:	f000 fb47 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0818:	b050      	add	sp, #320	@ 0x140
c0de081a:	bd70      	pop	{r4, r5, r6, pc}
c0de081c:	2000      	movs	r0, #0
c0de081e:	e7fb      	b.n	c0de0818 <handler_cmd_Poseidon_ithRC+0x7c>
c0de0820:	0000a636 	.word	0x0000a636
c0de0824:	0000a7a8 	.word	0x0000a7a8

c0de0828 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0828:	b5b0      	push	{r4, r5, r7, lr}
c0de082a:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de082e:	6801      	ldr	r1, [r0, #0]
c0de0830:	2200      	movs	r2, #0
c0de0832:	23ff      	movs	r3, #255	@ 0xff
c0de0834:	780d      	ldrb	r5, [r1, #0]
c0de0836:	ac5a      	add	r4, sp, #360	@ 0x168
c0de0838:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de083c:	d002      	beq.n	c0de0844 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de083e:	54a3      	strb	r3, [r4, r2]
c0de0840:	3201      	adds	r2, #1
c0de0842:	e7f9      	b.n	c0de0838 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de0844:	6840      	ldr	r0, [r0, #4]
c0de0846:	3101      	adds	r1, #1
c0de0848:	aa1a      	add	r2, sp, #104	@ 0x68
c0de084a:	3801      	subs	r0, #1
c0de084c:	b128      	cbz	r0, c0de085a <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de084e:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de0852:	3801      	subs	r0, #1
c0de0854:	f802 3b01 	strb.w	r3, [r2], #1
c0de0858:	e7f8      	b.n	c0de084c <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de085a:	f000 fb20 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de085e:	b9f0      	cbnz	r0, c0de089e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de0860:	a804      	add	r0, sp, #16
c0de0862:	4629      	mov	r1, r5
c0de0864:	f001 fb90 	bl	c0de1f88 <tEdwards_Curve_alloc_init>
c0de0868:	b9c8      	cbnz	r0, c0de089e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de086a:	a804      	add	r0, sp, #16
c0de086c:	a901      	add	r1, sp, #4
c0de086e:	f001 fa0c 	bl	c0de1c8a <tEdwards_alloc>
c0de0872:	b9a0      	cbnz	r0, c0de089e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de0874:	a804      	add	r0, sp, #16
c0de0876:	a91a      	add	r1, sp, #104	@ 0x68
c0de0878:	aa01      	add	r2, sp, #4
c0de087a:	f000 ff95 	bl	c0de17a8 <zkn_prv2pub>
c0de087e:	b970      	cbnz	r0, c0de089e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de0880:	a804      	add	r0, sp, #16
c0de0882:	f104 0320 	add.w	r3, r4, #32
c0de0886:	a901      	add	r1, sp, #4
c0de0888:	f000 fb1d 	bl	c0de0ec6 <OUTLINED_FUNCTION_6>
c0de088c:	b938      	cbnz	r0, c0de089e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de088e:	9804      	ldr	r0, [sp, #16]
c0de0890:	0041      	lsls	r1, r0, #1
c0de0892:	a85a      	add	r0, sp, #360	@ 0x168
c0de0894:	f7ff fe84 	bl	c0de05a0 <io_send_response_pointer>
c0de0898:	f009 fc04 	bl	c0dea0a4 <cx_bn_unlock>
c0de089c:	b120      	cbz	r0, c0de08a8 <handler_cmd_tEddsaPoseidon_Kpub+0x80>
c0de089e:	f000 fb02 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de08a2:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de08a6:	bdb0      	pop	{r4, r5, r7, pc}
c0de08a8:	2000      	movs	r0, #0
c0de08aa:	e7fa      	b.n	c0de08a2 <handler_cmd_tEddsaPoseidon_Kpub+0x7a>

c0de08ac <handler_cmd_tEddsaPoseidon_Sign>:
c0de08ac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de08ae:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de08b2:	4606      	mov	r6, r0
c0de08b4:	6800      	ldr	r0, [r0, #0]
c0de08b6:	2100      	movs	r1, #0
c0de08b8:	22ff      	movs	r2, #255	@ 0xff
c0de08ba:	7805      	ldrb	r5, [r0, #0]
c0de08bc:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de08be:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de08c2:	d002      	beq.n	c0de08ca <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de08c4:	5462      	strb	r2, [r4, r1]
c0de08c6:	3101      	adds	r1, #1
c0de08c8:	e7f9      	b.n	c0de08be <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de08ca:	6871      	ldr	r1, [r6, #4]
c0de08cc:	3001      	adds	r0, #1
c0de08ce:	aa2b      	add	r2, sp, #172	@ 0xac
c0de08d0:	3901      	subs	r1, #1
c0de08d2:	b129      	cbz	r1, c0de08e0 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de08d4:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de08d8:	3901      	subs	r1, #1
c0de08da:	f802 3b01 	strb.w	r3, [r2], #1
c0de08de:	e7f8      	b.n	c0de08d2 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de08e0:	f000 fadd 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de08e4:	bba8      	cbnz	r0, c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de08e6:	6830      	ldr	r0, [r6, #0]
c0de08e8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de08ea:	2100      	movs	r1, #0
c0de08ec:	ab02      	add	r3, sp, #8
c0de08ee:	2920      	cmp	r1, #32
c0de08f0:	d007      	beq.n	c0de0902 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de08f2:	1846      	adds	r6, r0, r1
c0de08f4:	7877      	ldrb	r7, [r6, #1]
c0de08f6:	5457      	strb	r7, [r2, r1]
c0de08f8:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de08fc:	545e      	strb	r6, [r3, r1]
c0de08fe:	3101      	adds	r1, #1
c0de0900:	e7f5      	b.n	c0de08ee <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0902:	a815      	add	r0, sp, #84	@ 0x54
c0de0904:	4629      	mov	r1, r5
c0de0906:	f001 fb3f 	bl	c0de1f88 <tEdwards_Curve_alloc_init>
c0de090a:	bb10      	cbnz	r0, c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de090c:	a815      	add	r0, sp, #84	@ 0x54
c0de090e:	a912      	add	r1, sp, #72	@ 0x48
c0de0910:	f001 f9bb 	bl	c0de1c8a <tEdwards_alloc>
c0de0914:	b9e8      	cbnz	r0, c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0916:	a815      	add	r0, sp, #84	@ 0x54
c0de0918:	a92b      	add	r1, sp, #172	@ 0xac
c0de091a:	aa12      	add	r2, sp, #72	@ 0x48
c0de091c:	f000 ff44 	bl	c0de17a8 <zkn_prv2pub>
c0de0920:	b9b8      	cbnz	r0, c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0922:	a815      	add	r0, sp, #84	@ 0x54
c0de0924:	f104 0320 	add.w	r3, r4, #32
c0de0928:	a912      	add	r1, sp, #72	@ 0x48
c0de092a:	f000 facc 	bl	c0de0ec6 <OUTLINED_FUNCTION_6>
c0de092e:	b980      	cbnz	r0, c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0930:	2020      	movs	r0, #32
c0de0932:	e9cd 0400 	strd	r0, r4, [sp]
c0de0936:	a815      	add	r0, sp, #84	@ 0x54
c0de0938:	a90a      	add	r1, sp, #40	@ 0x28
c0de093a:	aa12      	add	r2, sp, #72	@ 0x48
c0de093c:	ab02      	add	r3, sp, #8
c0de093e:	f000 ff5b 	bl	c0de17f8 <EddsaPoseidon_Sign_final>
c0de0942:	b930      	cbnz	r0, c0de0952 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0944:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0946:	2160      	movs	r1, #96	@ 0x60
c0de0948:	f7ff fe2a 	bl	c0de05a0 <io_send_response_pointer>
c0de094c:	f009 fbaa 	bl	c0dea0a4 <cx_bn_unlock>
c0de0950:	b120      	cbz	r0, c0de095c <handler_cmd_tEddsaPoseidon_Sign+0xb0>
c0de0952:	f000 faa8 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0956:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de095a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de095c:	2000      	movs	r0, #0
c0de095e:	e7fa      	b.n	c0de0956 <handler_cmd_tEddsaPoseidon_Sign+0xaa>

c0de0960 <handler_cmd_tEddsaPoseidon>:
c0de0960:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0964:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0966:	4605      	mov	r5, r0
c0de0968:	6800      	ldr	r0, [r0, #0]
c0de096a:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de096e:	21ff      	movs	r1, #255	@ 0xff
c0de0970:	7806      	ldrb	r6, [r0, #0]
c0de0972:	2000      	movs	r0, #0
c0de0974:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0978:	d002      	beq.n	c0de0980 <handler_cmd_tEddsaPoseidon+0x20>
c0de097a:	5421      	strb	r1, [r4, r0]
c0de097c:	3001      	adds	r0, #1
c0de097e:	e7f9      	b.n	c0de0974 <handler_cmd_tEddsaPoseidon+0x14>
c0de0980:	f000 fa8d 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de0984:	2800      	cmp	r0, #0
c0de0986:	d154      	bne.n	c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0988:	af14      	add	r7, sp, #80	@ 0x50
c0de098a:	4631      	mov	r1, r6
c0de098c:	4638      	mov	r0, r7
c0de098e:	f001 fafb 	bl	c0de1f88 <tEdwards_Curve_alloc_init>
c0de0992:	2800      	cmp	r0, #0
c0de0994:	d14d      	bne.n	c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0996:	f107 060c 	add.w	r6, r7, #12
c0de099a:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de099e:	4638      	mov	r0, r7
c0de09a0:	4631      	mov	r1, r6
c0de09a2:	f001 fa9b 	bl	c0de1edc <tEdwards_IsOnCurve>
c0de09a6:	2800      	cmp	r0, #0
c0de09a8:	d143      	bne.n	c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de09aa:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de09ae:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de09b2:	2901      	cmp	r1, #1
c0de09b4:	d13d      	bne.n	c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de09b6:	4922      	ldr	r1, [pc, #136]	@ (c0de0a40 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de09b8:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de09bc:	2220      	movs	r2, #32
c0de09be:	4650      	mov	r0, sl
c0de09c0:	4479      	add	r1, pc
c0de09c2:	f009 feda 	bl	c0dea77a <__aeabi_memcpy>
c0de09c6:	af01      	add	r7, sp, #4
c0de09c8:	491e      	ldr	r1, [pc, #120]	@ (c0de0a44 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de09ca:	2220      	movs	r2, #32
c0de09cc:	4638      	mov	r0, r7
c0de09ce:	4479      	add	r1, pc
c0de09d0:	f009 fed3 	bl	c0dea77a <__aeabi_memcpy>
c0de09d4:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de09d8:	a814      	add	r0, sp, #80	@ 0x50
c0de09da:	4651      	mov	r1, sl
c0de09dc:	463a      	mov	r2, r7
c0de09de:	4643      	mov	r3, r8
c0de09e0:	f001 fcdd 	bl	c0de239e <tEdwards_alloc_init>
c0de09e4:	bb28      	cbnz	r0, c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de09e6:	a814      	add	r0, sp, #80	@ 0x50
c0de09e8:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de09ec:	4631      	mov	r1, r6
c0de09ee:	f001 fa75 	bl	c0de1edc <tEdwards_IsOnCurve>
c0de09f2:	b9f0      	cbnz	r0, c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de09f4:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de09f8:	2801      	cmp	r0, #1
c0de09fa:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de09fe:	d118      	bne.n	c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a00:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0a04:	f8cd 8000 	str.w	r8, [sp]
c0de0a08:	1c42      	adds	r2, r0, #1
c0de0a0a:	1e4b      	subs	r3, r1, #1
c0de0a0c:	a814      	add	r0, sp, #80	@ 0x50
c0de0a0e:	4631      	mov	r1, r6
c0de0a10:	f001 fd4a 	bl	c0de24a8 <tEdwards_scalarMul>
c0de0a14:	b968      	cbnz	r0, c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a16:	a814      	add	r0, sp, #80	@ 0x50
c0de0a18:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0a1c:	a911      	add	r1, sp, #68	@ 0x44
c0de0a1e:	f000 fa52 	bl	c0de0ec6 <OUTLINED_FUNCTION_6>
c0de0a22:	b930      	cbnz	r0, c0de0a32 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a24:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0a28:	f000 fa43 	bl	c0de0eb2 <OUTLINED_FUNCTION_3>
c0de0a2c:	f009 fb3a 	bl	c0dea0a4 <cx_bn_unlock>
c0de0a30:	b120      	cbz	r0, c0de0a3c <handler_cmd_tEddsaPoseidon+0xdc>
c0de0a32:	f000 fa38 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0a36:	b06b      	add	sp, #428	@ 0x1ac
c0de0a38:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0a3c:	2000      	movs	r0, #0
c0de0a3e:	e7fa      	b.n	c0de0a36 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0a40:	0000a5c4 	.word	0x0000a5c4
c0de0a44:	0000a5d6 	.word	0x0000a5d6

c0de0a48 <handler_cmd_tEdwards>:
c0de0a48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0a4a:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0a4c:	4605      	mov	r5, r0
c0de0a4e:	6840      	ldr	r0, [r0, #4]
c0de0a50:	2841      	cmp	r0, #65	@ 0x41
c0de0a52:	d801      	bhi.n	c0de0a58 <handler_cmd_tEdwards+0x10>
c0de0a54:	2802      	cmp	r0, #2
c0de0a56:	d202      	bcs.n	c0de0a5e <handler_cmd_tEdwards+0x16>
c0de0a58:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0a5c:	e015      	b.n	c0de0a8a <handler_cmd_tEdwards+0x42>
c0de0a5e:	6828      	ldr	r0, [r5, #0]
c0de0a60:	21ff      	movs	r1, #255	@ 0xff
c0de0a62:	7806      	ldrb	r6, [r0, #0]
c0de0a64:	2000      	movs	r0, #0
c0de0a66:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0a68:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a6c:	d002      	beq.n	c0de0a74 <handler_cmd_tEdwards+0x2c>
c0de0a6e:	5421      	strb	r1, [r4, r0]
c0de0a70:	3001      	adds	r0, #1
c0de0a72:	e7f9      	b.n	c0de0a68 <handler_cmd_tEdwards+0x20>
c0de0a74:	f000 fa13 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de0a78:	b920      	cbnz	r0, c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0a7a:	a819      	add	r0, sp, #100	@ 0x64
c0de0a7c:	4631      	mov	r1, r6
c0de0a7e:	f001 fa83 	bl	c0de1f88 <tEdwards_Curve_alloc_init>
c0de0a82:	b120      	cbz	r0, c0de0a8e <handler_cmd_tEdwards+0x46>
c0de0a84:	b280      	uxth	r0, r0
c0de0a86:	f7ff fd96 	bl	c0de05b6 <io_send_sw>
c0de0a8a:	b06f      	add	sp, #444	@ 0x1bc
c0de0a8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a8e:	2e02      	cmp	r6, #2
c0de0a90:	d00c      	beq.n	c0de0aac <handler_cmd_tEdwards+0x64>
c0de0a92:	2e01      	cmp	r6, #1
c0de0a94:	d128      	bne.n	c0de0ae8 <handler_cmd_tEdwards+0xa0>
c0de0a96:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0a98:	4942      	ldr	r1, [pc, #264]	@ (c0de0ba4 <handler_cmd_tEdwards+0x15c>)
c0de0a9a:	2220      	movs	r2, #32
c0de0a9c:	4630      	mov	r0, r6
c0de0a9e:	4479      	add	r1, pc
c0de0aa0:	f009 fe6b 	bl	c0dea77a <__aeabi_memcpy>
c0de0aa4:	af03      	add	r7, sp, #12
c0de0aa6:	4940      	ldr	r1, [pc, #256]	@ (c0de0ba8 <handler_cmd_tEdwards+0x160>)
c0de0aa8:	4479      	add	r1, pc
c0de0aaa:	e009      	b.n	c0de0ac0 <handler_cmd_tEdwards+0x78>
c0de0aac:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0aae:	493f      	ldr	r1, [pc, #252]	@ (c0de0bac <handler_cmd_tEdwards+0x164>)
c0de0ab0:	2220      	movs	r2, #32
c0de0ab2:	4630      	mov	r0, r6
c0de0ab4:	4479      	add	r1, pc
c0de0ab6:	f009 fe60 	bl	c0dea77a <__aeabi_memcpy>
c0de0aba:	af03      	add	r7, sp, #12
c0de0abc:	493c      	ldr	r1, [pc, #240]	@ (c0de0bb0 <handler_cmd_tEdwards+0x168>)
c0de0abe:	4479      	add	r1, pc
c0de0ac0:	4638      	mov	r0, r7
c0de0ac2:	2220      	movs	r2, #32
c0de0ac4:	f009 fe59 	bl	c0dea77a <__aeabi_memcpy>
c0de0ac8:	a819      	add	r0, sp, #100	@ 0x64
c0de0aca:	ab16      	add	r3, sp, #88	@ 0x58
c0de0acc:	4631      	mov	r1, r6
c0de0ace:	463a      	mov	r2, r7
c0de0ad0:	f001 fc65 	bl	c0de239e <tEdwards_alloc_init>
c0de0ad4:	2800      	cmp	r0, #0
c0de0ad6:	d1d5      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0ad8:	a819      	add	r0, sp, #100	@ 0x64
c0de0ada:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0adc:	aa03      	add	r2, sp, #12
c0de0ade:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0ae0:	f001 fc5d 	bl	c0de239e <tEdwards_alloc_init>
c0de0ae4:	2800      	cmp	r0, #0
c0de0ae6:	d1cd      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0ae8:	2000      	movs	r0, #0
c0de0aea:	f10d 020b 	add.w	r2, sp, #11
c0de0aee:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0af2:	a819      	add	r0, sp, #100	@ 0x64
c0de0af4:	a916      	add	r1, sp, #88	@ 0x58
c0de0af6:	f001 f9f1 	bl	c0de1edc <tEdwards_IsOnCurve>
c0de0afa:	2800      	cmp	r0, #0
c0de0afc:	d1c2      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0afe:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b02:	2801      	cmp	r0, #1
c0de0b04:	d142      	bne.n	c0de0b8c <handler_cmd_tEdwards+0x144>
c0de0b06:	a819      	add	r0, sp, #100	@ 0x64
c0de0b08:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0b0a:	f10d 020b 	add.w	r2, sp, #11
c0de0b0e:	4631      	mov	r1, r6
c0de0b10:	f001 f9e4 	bl	c0de1edc <tEdwards_IsOnCurve>
c0de0b14:	2800      	cmp	r0, #0
c0de0b16:	d1b5      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0b18:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b1c:	2801      	cmp	r0, #1
c0de0b1e:	d138      	bne.n	c0de0b92 <handler_cmd_tEdwards+0x14a>
c0de0b20:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0b22:	f10d 010b 	add.w	r1, sp, #11
c0de0b26:	f009 fb7b 	bl	c0dea220 <cx_bn_is_prime>
c0de0b2a:	2800      	cmp	r0, #0
c0de0b2c:	d1aa      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0b2e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b32:	2801      	cmp	r0, #1
c0de0b34:	d130      	bne.n	c0de0b98 <handler_cmd_tEdwards+0x150>
c0de0b36:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0b38:	f10d 010b 	add.w	r1, sp, #11
c0de0b3c:	f009 fb70 	bl	c0dea220 <cx_bn_is_prime>
c0de0b40:	2800      	cmp	r0, #0
c0de0b42:	d19f      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0b44:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b48:	2801      	cmp	r0, #1
c0de0b4a:	d128      	bne.n	c0de0b9e <handler_cmd_tEdwards+0x156>
c0de0b4c:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0b50:	9600      	str	r6, [sp, #0]
c0de0b52:	1c42      	adds	r2, r0, #1
c0de0b54:	1e4b      	subs	r3, r1, #1
c0de0b56:	a819      	add	r0, sp, #100	@ 0x64
c0de0b58:	a916      	add	r1, sp, #88	@ 0x58
c0de0b5a:	f001 fca5 	bl	c0de24a8 <tEdwards_scalarMul>
c0de0b5e:	2800      	cmp	r0, #0
c0de0b60:	d190      	bne.n	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0b62:	a819      	add	r0, sp, #100	@ 0x64
c0de0b64:	f104 0320 	add.w	r3, r4, #32
c0de0b68:	a913      	add	r1, sp, #76	@ 0x4c
c0de0b6a:	f000 f9ac 	bl	c0de0ec6 <OUTLINED_FUNCTION_6>
c0de0b6e:	2800      	cmp	r0, #0
c0de0b70:	f47f af88 	bne.w	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0b74:	f009 fa96 	bl	c0dea0a4 <cx_bn_unlock>
c0de0b78:	2800      	cmp	r0, #0
c0de0b7a:	f47f af83 	bne.w	c0de0a84 <handler_cmd_tEdwards+0x3c>
c0de0b7e:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0b80:	0041      	lsls	r1, r0, #1
c0de0b82:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0b84:	f7ff fd0c 	bl	c0de05a0 <io_send_response_pointer>
c0de0b88:	2000      	movs	r0, #0
c0de0b8a:	e77e      	b.n	c0de0a8a <handler_cmd_tEdwards+0x42>
c0de0b8c:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b90:	e779      	b.n	c0de0a86 <handler_cmd_tEdwards+0x3e>
c0de0b92:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0b96:	e776      	b.n	c0de0a86 <handler_cmd_tEdwards+0x3e>
c0de0b98:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0b9c:	e773      	b.n	c0de0a86 <handler_cmd_tEdwards+0x3e>
c0de0b9e:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0ba2:	e770      	b.n	c0de0a86 <handler_cmd_tEdwards+0x3e>
c0de0ba4:	0000a386 	.word	0x0000a386
c0de0ba8:	0000a3fc 	.word	0x0000a3fc
c0de0bac:	0000a390 	.word	0x0000a390
c0de0bb0:	0000a306 	.word	0x0000a306

c0de0bb4 <handler_cmd_Interpolate>:
c0de0bb4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0bb8:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0bbc:	4605      	mov	r5, r0
c0de0bbe:	6800      	ldr	r0, [r0, #0]
c0de0bc0:	22ff      	movs	r2, #255	@ 0xff
c0de0bc2:	7804      	ldrb	r4, [r0, #0]
c0de0bc4:	2000      	movs	r0, #0
c0de0bc6:	a944      	add	r1, sp, #272	@ 0x110
c0de0bc8:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0bcc:	d002      	beq.n	c0de0bd4 <handler_cmd_Interpolate+0x20>
c0de0bce:	540a      	strb	r2, [r1, r0]
c0de0bd0:	3001      	adds	r0, #1
c0de0bd2:	e7f9      	b.n	c0de0bc8 <handler_cmd_Interpolate+0x14>
c0de0bd4:	f000 f963 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de0bd8:	bb20      	cbnz	r0, c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0bda:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0bde:	4621      	mov	r1, r4
c0de0be0:	4640      	mov	r0, r8
c0de0be2:	f001 f9d1 	bl	c0de1f88 <tEdwards_Curve_alloc_init>
c0de0be6:	b9e8      	cbnz	r0, c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0be8:	a827      	add	r0, sp, #156	@ 0x9c
c0de0bea:	f000 f95f 	bl	c0de0eac <OUTLINED_FUNCTION_2>
c0de0bee:	6828      	ldr	r0, [r5, #0]
c0de0bf0:	2100      	movs	r1, #0
c0de0bf2:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0bf4:	3001      	adds	r0, #1
c0de0bf6:	2960      	cmp	r1, #96	@ 0x60
c0de0bf8:	d003      	beq.n	c0de0c02 <handler_cmd_Interpolate+0x4e>
c0de0bfa:	5c43      	ldrb	r3, [r0, r1]
c0de0bfc:	5453      	strb	r3, [r2, r1]
c0de0bfe:	3101      	adds	r1, #1
c0de0c00:	e7f9      	b.n	c0de0bf6 <handler_cmd_Interpolate+0x42>
c0de0c02:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0c04:	2100      	movs	r1, #0
c0de0c06:	ae2b      	add	r6, sp, #172	@ 0xac
c0de0c08:	1d0c      	adds	r4, r1, #4
c0de0c0a:	2c10      	cmp	r4, #16
c0de0c0c:	d010      	beq.n	c0de0c30 <handler_cmd_Interpolate+0x7c>
c0de0c0e:	1870      	adds	r0, r6, r1
c0de0c10:	2120      	movs	r1, #32
c0de0c12:	2320      	movs	r3, #32
c0de0c14:	f102 0520 	add.w	r5, r2, #32
c0de0c18:	f009 fa56 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de0c1c:	2800      	cmp	r0, #0
c0de0c1e:	462a      	mov	r2, r5
c0de0c20:	4621      	mov	r1, r4
c0de0c22:	d0f1      	beq.n	c0de0c08 <handler_cmd_Interpolate+0x54>
c0de0c24:	f000 f93f 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0c28:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0c2c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0c30:	f108 000c 	add.w	r0, r8, #12
c0de0c34:	f04f 0a00 	mov.w	sl, #0
c0de0c38:	f04f 0b01 	mov.w	fp, #1
c0de0c3c:	9002      	str	r0, [sp, #8]
c0de0c3e:	ad44      	add	r5, sp, #272	@ 0x110
c0de0c40:	af03      	add	r7, sp, #12
c0de0c42:	f1ba 0f0c 	cmp.w	sl, #12
c0de0c46:	d038      	beq.n	c0de0cba <handler_cmd_Interpolate+0x106>
c0de0c48:	a828      	add	r0, sp, #160	@ 0xa0
c0de0c4a:	2120      	movs	r1, #32
c0de0c4c:	eb00 040a 	add.w	r4, r0, sl
c0de0c50:	4620      	mov	r0, r4
c0de0c52:	f009 fa2f 	bl	c0dea0b4 <cx_bn_alloc>
c0de0c56:	2800      	cmp	r0, #0
c0de0c58:	d1e4      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0c5a:	6820      	ldr	r0, [r4, #0]
c0de0c5c:	4659      	mov	r1, fp
c0de0c5e:	f009 fa69 	bl	c0dea134 <cx_bn_set_u32>
c0de0c62:	2800      	cmp	r0, #0
c0de0c64:	d1de      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0c66:	4640      	mov	r0, r8
c0de0c68:	4639      	mov	r1, r7
c0de0c6a:	f001 f80e 	bl	c0de1c8a <tEdwards_alloc>
c0de0c6e:	2800      	cmp	r0, #0
c0de0c70:	d1d8      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0c72:	4456      	add	r6, sl
c0de0c74:	9902      	ldr	r1, [sp, #8]
c0de0c76:	4640      	mov	r0, r8
c0de0c78:	463b      	mov	r3, r7
c0de0c7a:	4632      	mov	r2, r6
c0de0c7c:	f001 fbae 	bl	c0de23dc <tEdwards_scalarMul_bn>
c0de0c80:	2800      	cmp	r0, #0
c0de0c82:	d1cf      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0c84:	6820      	ldr	r0, [r4, #0]
c0de0c86:	4629      	mov	r1, r5
c0de0c88:	f000 f917 	bl	c0de0eba <OUTLINED_FUNCTION_4>
c0de0c8c:	2800      	cmp	r0, #0
c0de0c8e:	d1c9      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0c90:	6830      	ldr	r0, [r6, #0]
c0de0c92:	f105 0120 	add.w	r1, r5, #32
c0de0c96:	f000 f910 	bl	c0de0eba <OUTLINED_FUNCTION_4>
c0de0c9a:	2800      	cmp	r0, #0
c0de0c9c:	d1c2      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0c9e:	4640      	mov	r0, r8
c0de0ca0:	4639      	mov	r1, r7
c0de0ca2:	f001 fb3c 	bl	c0de231e <tEdwards_normalize>
c0de0ca6:	370c      	adds	r7, #12
c0de0ca8:	3540      	adds	r5, #64	@ 0x40
c0de0caa:	f10b 0b01 	add.w	fp, fp, #1
c0de0cae:	f10a 0a04 	add.w	sl, sl, #4
c0de0cb2:	ae2b      	add	r6, sp, #172	@ 0xac
c0de0cb4:	2800      	cmp	r0, #0
c0de0cb6:	d0c4      	beq.n	c0de0c42 <handler_cmd_Interpolate+0x8e>
c0de0cb8:	e7b4      	b.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0cba:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0cbc:	2303      	movs	r3, #3
c0de0cbe:	9000      	str	r0, [sp, #0]
c0de0cc0:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0cc2:	a928      	add	r1, sp, #160	@ 0xa0
c0de0cc4:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0cc6:	f000 ff62 	bl	c0de1b8e <zkn_frost_interpolate_secrets>
c0de0cca:	2800      	cmp	r0, #0
c0de0ccc:	d1aa      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0cce:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0cd0:	a944      	add	r1, sp, #272	@ 0x110
c0de0cd2:	2220      	movs	r2, #32
c0de0cd4:	31c0      	adds	r1, #192	@ 0xc0
c0de0cd6:	f009 fa37 	bl	c0dea148 <cx_bn_export>
c0de0cda:	2800      	cmp	r0, #0
c0de0cdc:	d1a2      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0cde:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0ce0:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0ce2:	ab03      	add	r3, sp, #12
c0de0ce4:	9902      	ldr	r1, [sp, #8]
c0de0ce6:	f001 fb79 	bl	c0de23dc <tEdwards_scalarMul_bn>
c0de0cea:	2800      	cmp	r0, #0
c0de0cec:	d19a      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0cee:	a844      	add	r0, sp, #272	@ 0x110
c0de0cf0:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0cf4:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0cf6:	a903      	add	r1, sp, #12
c0de0cf8:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0cfa:	f001 faea 	bl	c0de22d2 <tEdwards_export>
c0de0cfe:	2800      	cmp	r0, #0
c0de0d00:	d190      	bne.n	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0d02:	a844      	add	r0, sp, #272	@ 0x110
c0de0d04:	f000 f8d5 	bl	c0de0eb2 <OUTLINED_FUNCTION_3>
c0de0d08:	f009 f9cc 	bl	c0dea0a4 <cx_bn_unlock>
c0de0d0c:	2800      	cmp	r0, #0
c0de0d0e:	f47f af89 	bne.w	c0de0c24 <handler_cmd_Interpolate+0x70>
c0de0d12:	2000      	movs	r0, #0
c0de0d14:	e788      	b.n	c0de0c28 <handler_cmd_Interpolate+0x74>

c0de0d16 <handler_cmd_Split>:
c0de0d16:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0d1a:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0d1e:	4604      	mov	r4, r0
c0de0d20:	6800      	ldr	r0, [r0, #0]
c0de0d22:	22ff      	movs	r2, #255	@ 0xff
c0de0d24:	7805      	ldrb	r5, [r0, #0]
c0de0d26:	2000      	movs	r0, #0
c0de0d28:	a948      	add	r1, sp, #288	@ 0x120
c0de0d2a:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0d2e:	d002      	beq.n	c0de0d36 <handler_cmd_Split+0x20>
c0de0d30:	540a      	strb	r2, [r1, r0]
c0de0d32:	3001      	adds	r0, #1
c0de0d34:	e7f9      	b.n	c0de0d2a <handler_cmd_Split+0x14>
c0de0d36:	f000 f8b2 	bl	c0de0e9e <OUTLINED_FUNCTION_0>
c0de0d3a:	bb50      	cbnz	r0, c0de0d92 <handler_cmd_Split+0x7c>
c0de0d3c:	a832      	add	r0, sp, #200	@ 0xc8
c0de0d3e:	4629      	mov	r1, r5
c0de0d40:	f001 f922 	bl	c0de1f88 <tEdwards_Curve_alloc_init>
c0de0d44:	bb28      	cbnz	r0, c0de0d92 <handler_cmd_Split+0x7c>
c0de0d46:	6820      	ldr	r0, [r4, #0]
c0de0d48:	2200      	movs	r2, #0
c0de0d4a:	a91a      	add	r1, sp, #104	@ 0x68
c0de0d4c:	3002      	adds	r0, #2
c0de0d4e:	2a20      	cmp	r2, #32
c0de0d50:	d003      	beq.n	c0de0d5a <handler_cmd_Split+0x44>
c0de0d52:	5c83      	ldrb	r3, [r0, r2]
c0de0d54:	548b      	strb	r3, [r1, r2]
c0de0d56:	3201      	adds	r2, #1
c0de0d58:	e7f9      	b.n	c0de0d4e <handler_cmd_Split+0x38>
c0de0d5a:	6862      	ldr	r2, [r4, #4]
c0de0d5c:	3a02      	subs	r2, #2
c0de0d5e:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0d62:	f101 0220 	add.w	r2, r1, #32
c0de0d66:	a888      	add	r0, sp, #544	@ 0x220
c0de0d68:	2101      	movs	r1, #1
c0de0d6a:	f008 fa8c 	bl	c0de9286 <cx_blake2b_512_hash_iovec>
c0de0d6e:	b980      	cbnz	r0, c0de0d92 <handler_cmd_Split+0x7c>
c0de0d70:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0d72:	2100      	movs	r1, #0
c0de0d74:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0d76:	1d0d      	adds	r5, r1, #4
c0de0d78:	2d10      	cmp	r5, #16
c0de0d7a:	d010      	beq.n	c0de0d9e <handler_cmd_Split+0x88>
c0de0d7c:	1860      	adds	r0, r4, r1
c0de0d7e:	2120      	movs	r1, #32
c0de0d80:	2320      	movs	r3, #32
c0de0d82:	f102 0620 	add.w	r6, r2, #32
c0de0d86:	f009 f99f 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de0d8a:	2800      	cmp	r0, #0
c0de0d8c:	4632      	mov	r2, r6
c0de0d8e:	4629      	mov	r1, r5
c0de0d90:	d0f1      	beq.n	c0de0d76 <handler_cmd_Split+0x60>
c0de0d92:	f000 f888 	bl	c0de0ea6 <OUTLINED_FUNCTION_1>
c0de0d96:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0d9a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d9e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0da0:	f000 f884 	bl	c0de0eac <OUTLINED_FUNCTION_2>
c0de0da4:	a809      	add	r0, sp, #36	@ 0x24
c0de0da6:	f000 f881 	bl	c0de0eac <OUTLINED_FUNCTION_2>
c0de0daa:	f04f 0800 	mov.w	r8, #0
c0de0dae:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0db2:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0db4:	f10d 0a5c 	add.w	sl, sp, #92	@ 0x5c
c0de0db8:	2400      	movs	r4, #0
c0de0dba:	f1b8 0f10 	cmp.w	r8, #16
c0de0dbe:	d04e      	beq.n	c0de0e5e <handler_cmd_Split+0x148>
c0de0dc0:	a805      	add	r0, sp, #20
c0de0dc2:	2120      	movs	r1, #32
c0de0dc4:	eb00 0708 	add.w	r7, r0, r8
c0de0dc8:	4638      	mov	r0, r7
c0de0dca:	f009 f973 	bl	c0dea0b4 <cx_bn_alloc>
c0de0dce:	2800      	cmp	r0, #0
c0de0dd0:	d1df      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0dd2:	a801      	add	r0, sp, #4
c0de0dd4:	2120      	movs	r1, #32
c0de0dd6:	eb00 0508 	add.w	r5, r0, r8
c0de0dda:	4628      	mov	r0, r5
c0de0ddc:	f009 f96a 	bl	c0dea0b4 <cx_bn_alloc>
c0de0de0:	2800      	cmp	r0, #0
c0de0de2:	d1d6      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0de4:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0de6:	4621      	mov	r1, r4
c0de0de8:	f009 f9a4 	bl	c0dea134 <cx_bn_set_u32>
c0de0dec:	2800      	cmp	r0, #0
c0de0dee:	d1d0      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0df0:	6828      	ldr	r0, [r5, #0]
c0de0df2:	4621      	mov	r1, r4
c0de0df4:	f009 f99e 	bl	c0dea134 <cx_bn_set_u32>
c0de0df8:	2800      	cmp	r0, #0
c0de0dfa:	d1ca      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0dfc:	ad32      	add	r5, sp, #200	@ 0xc8
c0de0dfe:	4631      	mov	r1, r6
c0de0e00:	4628      	mov	r0, r5
c0de0e02:	f000 ff42 	bl	c0de1c8a <tEdwards_alloc>
c0de0e06:	2800      	cmp	r0, #0
c0de0e08:	d1c3      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e0a:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0e0e:	4651      	mov	r1, sl
c0de0e10:	2202      	movs	r2, #2
c0de0e12:	9000      	str	r0, [sp, #0]
c0de0e14:	4628      	mov	r0, r5
c0de0e16:	f000 fefd 	bl	c0de1c14 <zkn_evalshare>
c0de0e1a:	2800      	cmp	r0, #0
c0de0e1c:	d1b9      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e1e:	6838      	ldr	r0, [r7, #0]
c0de0e20:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0e22:	f009 f97d 	bl	c0dea120 <cx_bn_copy>
c0de0e26:	2800      	cmp	r0, #0
c0de0e28:	d1b3      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e2a:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e2c:	4631      	mov	r1, r6
c0de0e2e:	f001 fa76 	bl	c0de231e <tEdwards_normalize>
c0de0e32:	2800      	cmp	r0, #0
c0de0e34:	d1ad      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e36:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0e38:	4659      	mov	r1, fp
c0de0e3a:	f000 f83e 	bl	c0de0eba <OUTLINED_FUNCTION_4>
c0de0e3e:	2800      	cmp	r0, #0
c0de0e40:	d1a7      	bne.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e42:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0e44:	f10b 0120 	add.w	r1, fp, #32
c0de0e48:	f000 f837 	bl	c0de0eba <OUTLINED_FUNCTION_4>
c0de0e4c:	360c      	adds	r6, #12
c0de0e4e:	3401      	adds	r4, #1
c0de0e50:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0e54:	f108 0804 	add.w	r8, r8, #4
c0de0e58:	2800      	cmp	r0, #0
c0de0e5a:	d0ae      	beq.n	c0de0dba <handler_cmd_Split+0xa4>
c0de0e5c:	e799      	b.n	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e5e:	2400      	movs	r4, #0
c0de0e60:	2c0c      	cmp	r4, #12
c0de0e62:	d005      	beq.n	c0de0e70 <handler_cmd_Split+0x15a>
c0de0e64:	eb0a 0004 	add.w	r0, sl, r4
c0de0e68:	f009 f93a 	bl	c0dea0e0 <cx_bn_destroy>
c0de0e6c:	3404      	adds	r4, #4
c0de0e6e:	e7f7      	b.n	c0de0e60 <handler_cmd_Split+0x14a>
c0de0e70:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0e72:	2303      	movs	r3, #3
c0de0e74:	9000      	str	r0, [sp, #0]
c0de0e76:	a801      	add	r0, sp, #4
c0de0e78:	1d01      	adds	r1, r0, #4
c0de0e7a:	a805      	add	r0, sp, #20
c0de0e7c:	1d02      	adds	r2, r0, #4
c0de0e7e:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e80:	f000 fe85 	bl	c0de1b8e <zkn_frost_interpolate_secrets>
c0de0e84:	2800      	cmp	r0, #0
c0de0e86:	f47f af84 	bne.w	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e8a:	a848      	add	r0, sp, #288	@ 0x120
c0de0e8c:	f000 f811 	bl	c0de0eb2 <OUTLINED_FUNCTION_3>
c0de0e90:	f009 f908 	bl	c0dea0a4 <cx_bn_unlock>
c0de0e94:	2800      	cmp	r0, #0
c0de0e96:	f47f af7c 	bne.w	c0de0d92 <handler_cmd_Split+0x7c>
c0de0e9a:	2000      	movs	r0, #0
c0de0e9c:	e77b      	b.n	c0de0d96 <handler_cmd_Split+0x80>

c0de0e9e <OUTLINED_FUNCTION_0>:
c0de0e9e:	2020      	movs	r0, #32
c0de0ea0:	2100      	movs	r1, #0
c0de0ea2:	f009 b8f5 	b.w	c0dea090 <cx_bn_lock>

c0de0ea6 <OUTLINED_FUNCTION_1>:
c0de0ea6:	b280      	uxth	r0, r0
c0de0ea8:	f7ff bb85 	b.w	c0de05b6 <io_send_sw>

c0de0eac <OUTLINED_FUNCTION_2>:
c0de0eac:	2120      	movs	r1, #32
c0de0eae:	f009 b901 	b.w	c0dea0b4 <cx_bn_alloc>

c0de0eb2 <OUTLINED_FUNCTION_3>:
c0de0eb2:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de0eb6:	f7ff bb73 	b.w	c0de05a0 <io_send_response_pointer>

c0de0eba <OUTLINED_FUNCTION_4>:
c0de0eba:	2220      	movs	r2, #32
c0de0ebc:	f009 b944 	b.w	c0dea148 <cx_bn_export>

c0de0ec0 <OUTLINED_FUNCTION_5>:
c0de0ec0:	2320      	movs	r3, #32
c0de0ec2:	f009 b901 	b.w	c0dea0c8 <cx_bn_alloc_init>

c0de0ec6 <OUTLINED_FUNCTION_6>:
c0de0ec6:	4622      	mov	r2, r4
c0de0ec8:	f001 ba03 	b.w	c0de22d2 <tEdwards_export>

c0de0ecc <helper_send_response_pubkey>:
c0de0ecc:	b5b0      	push	{r4, r5, r7, lr}
c0de0ece:	b09a      	sub	sp, #104	@ 0x68
c0de0ed0:	2041      	movs	r0, #65	@ 0x41
c0de0ed2:	f10d 0405 	add.w	r4, sp, #5
c0de0ed6:	2241      	movs	r2, #65	@ 0x41
c0de0ed8:	f88d 0005 	strb.w	r0, [sp, #5]
c0de0edc:	480b      	ldr	r0, [pc, #44]	@ (c0de0f0c <helper_send_response_pubkey+0x40>)
c0de0ede:	eb09 0500 	add.w	r5, r9, r0
c0de0ee2:	1c60      	adds	r0, r4, #1
c0de0ee4:	f105 0108 	add.w	r1, r5, #8
c0de0ee8:	f009 fc47 	bl	c0dea77a <__aeabi_memcpy>
c0de0eec:	2020      	movs	r0, #32
c0de0eee:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de0ef2:	2220      	movs	r2, #32
c0de0ef4:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de0ef8:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de0efc:	f009 fc3d 	bl	c0dea77a <__aeabi_memcpy>
c0de0f00:	4620      	mov	r0, r4
c0de0f02:	2163      	movs	r1, #99	@ 0x63
c0de0f04:	f000 f804 	bl	c0de0f10 <io_send_response_pointer>
c0de0f08:	b01a      	add	sp, #104	@ 0x68
c0de0f0a:	bdb0      	pop	{r4, r5, r7, pc}
c0de0f0c:	00000000 	.word	0x00000000

c0de0f10 <io_send_response_pointer>:
c0de0f10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0f12:	2200      	movs	r2, #0
c0de0f14:	ab01      	add	r3, sp, #4
c0de0f16:	c307      	stmia	r3!, {r0, r1, r2}
c0de0f18:	a801      	add	r0, sp, #4
c0de0f1a:	2101      	movs	r1, #1
c0de0f1c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0f20:	f006 fffa 	bl	c0de7f18 <io_send_response_buffers>
c0de0f24:	b004      	add	sp, #16
c0de0f26:	bd80      	pop	{r7, pc}

c0de0f28 <helper_send_response_sig>:
c0de0f28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0f2a:	b093      	sub	sp, #76	@ 0x4c
c0de0f2c:	f10d 0402 	add.w	r4, sp, #2
c0de0f30:	2149      	movs	r1, #73	@ 0x49
c0de0f32:	1c65      	adds	r5, r4, #1
c0de0f34:	4628      	mov	r0, r5
c0de0f36:	f009 fc1d 	bl	c0dea774 <__aeabi_memclr>
c0de0f3a:	480b      	ldr	r0, [pc, #44]	@ (c0de0f68 <helper_send_response_sig+0x40>)
c0de0f3c:	eb09 0700 	add.w	r7, r9, r0
c0de0f40:	4628      	mov	r0, r5
c0de0f42:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de0f46:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de0f4a:	4632      	mov	r2, r6
c0de0f4c:	f88d 6002 	strb.w	r6, [sp, #2]
c0de0f50:	f009 fc13 	bl	c0dea77a <__aeabi_memcpy>
c0de0f54:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de0f58:	1930      	adds	r0, r6, r4
c0de0f5a:	7041      	strb	r1, [r0, #1]
c0de0f5c:	1cb1      	adds	r1, r6, #2
c0de0f5e:	4620      	mov	r0, r4
c0de0f60:	f7ff ffd6 	bl	c0de0f10 <io_send_response_pointer>
c0de0f64:	b013      	add	sp, #76	@ 0x4c
c0de0f66:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0f68:	00000000 	.word	0x00000000

c0de0f6c <swap_handle_check_address>:
c0de0f6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0f70:	b0bc      	sub	sp, #240	@ 0xf0
c0de0f72:	4604      	mov	r4, r0
c0de0f74:	2000      	movs	r0, #0
c0de0f76:	68a5      	ldr	r5, [r4, #8]
c0de0f78:	61a0      	str	r0, [r4, #24]
c0de0f7a:	2d00      	cmp	r5, #0
c0de0f7c:	d04d      	beq.n	c0de101a <swap_handle_check_address+0xae>
c0de0f7e:	6920      	ldr	r0, [r4, #16]
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	d04a      	beq.n	c0de101a <swap_handle_check_address+0xae>
c0de0f84:	f009 fc50 	bl	c0dea828 <strlen>
c0de0f88:	2828      	cmp	r0, #40	@ 0x28
c0de0f8a:	d146      	bne.n	c0de101a <swap_handle_check_address+0xae>
c0de0f8c:	7b20      	ldrb	r0, [r4, #12]
c0de0f8e:	f04f 0800 	mov.w	r8, #0
c0de0f92:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de0f94:	2161      	movs	r1, #97	@ 0x61
c0de0f96:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de0f9a:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de0f9c:	ad15      	add	r5, sp, #84	@ 0x54
c0de0f9e:	4628      	mov	r0, r5
c0de0fa0:	f009 fbe8 	bl	c0dea774 <__aeabi_memclr>
c0de0fa4:	ae39      	add	r6, sp, #228	@ 0xe4
c0de0fa6:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de0faa:	4630      	mov	r0, r6
c0de0fac:	f006 fd20 	bl	c0de79f0 <buffer_read_u8>
c0de0fb0:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de0fb4:	af2e      	add	r7, sp, #184	@ 0xb8
c0de0fb6:	4630      	mov	r0, r6
c0de0fb8:	4639      	mov	r1, r7
c0de0fba:	f006 fd6c 	bl	c0de7a96 <buffer_read_bip32_path>
c0de0fbe:	2005      	movs	r0, #5
c0de0fc0:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de0fc4:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de0fc8:	463a      	mov	r2, r7
c0de0fca:	f8cd 8010 	str.w	r8, [sp, #16]
c0de0fce:	e9cd 5100 	strd	r5, r1, [sp]
c0de0fd2:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de0fd6:	2000      	movs	r0, #0
c0de0fd8:	2121      	movs	r1, #33	@ 0x21
c0de0fda:	f006 fe1d 	bl	c0de7c18 <bip32_derive_with_seed_get_pubkey_256>
c0de0fde:	b9e0      	cbnz	r0, c0de101a <swap_handle_check_address+0xae>
c0de0fe0:	ad10      	add	r5, sp, #64	@ 0x40
c0de0fe2:	2114      	movs	r1, #20
c0de0fe4:	4628      	mov	r0, r5
c0de0fe6:	f009 fbc5 	bl	c0dea774 <__aeabi_memclr>
c0de0fea:	a815      	add	r0, sp, #84	@ 0x54
c0de0fec:	4629      	mov	r1, r5
c0de0fee:	2214      	movs	r2, #20
c0de0ff0:	f7ff f81a 	bl	c0de0028 <address_from_pubkey>
c0de0ff4:	ae05      	add	r6, sp, #20
c0de0ff6:	2129      	movs	r1, #41	@ 0x29
c0de0ff8:	4630      	mov	r0, r6
c0de0ffa:	f009 fbbb 	bl	c0dea774 <__aeabi_memclr>
c0de0ffe:	4628      	mov	r0, r5
c0de1000:	2114      	movs	r1, #20
c0de1002:	4632      	mov	r2, r6
c0de1004:	2329      	movs	r3, #41	@ 0x29
c0de1006:	f006 fee5 	bl	c0de7dd4 <format_hex>
c0de100a:	6921      	ldr	r1, [r4, #16]
c0de100c:	4630      	mov	r0, r6
c0de100e:	2229      	movs	r2, #41	@ 0x29
c0de1010:	f009 fc12 	bl	c0dea838 <strncmp>
c0de1014:	b908      	cbnz	r0, c0de101a <swap_handle_check_address+0xae>
c0de1016:	2001      	movs	r0, #1
c0de1018:	61a0      	str	r0, [r4, #24]
c0de101a:	b03c      	add	sp, #240	@ 0xf0
c0de101c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de1020 <swap_handle_get_printable_amount>:
c0de1020:	b570      	push	{r4, r5, r6, lr}
c0de1022:	b08c      	sub	sp, #48	@ 0x30
c0de1024:	ac04      	add	r4, sp, #16
c0de1026:	4606      	mov	r6, r0
c0de1028:	211e      	movs	r1, #30
c0de102a:	4620      	mov	r0, r4
c0de102c:	f009 fba2 	bl	c0dea774 <__aeabi_memclr>
c0de1030:	f106 050e 	add.w	r5, r6, #14
c0de1034:	2132      	movs	r1, #50	@ 0x32
c0de1036:	4628      	mov	r0, r5
c0de1038:	f009 fb9c 	bl	c0dea774 <__aeabi_memclr>
c0de103c:	2000      	movs	r0, #0
c0de103e:	7b31      	ldrb	r1, [r6, #12]
c0de1040:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1044:	68b0      	ldr	r0, [r6, #8]
c0de1046:	aa02      	add	r2, sp, #8
c0de1048:	f007 f90e 	bl	c0de8268 <swap_str_to_u64>
c0de104c:	b178      	cbz	r0, c0de106e <swap_handle_get_printable_amount+0x4e>
c0de104e:	2003      	movs	r0, #3
c0de1050:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1054:	211e      	movs	r1, #30
c0de1056:	9000      	str	r0, [sp, #0]
c0de1058:	4620      	mov	r0, r4
c0de105a:	f006 fe74 	bl	c0de7d46 <format_fpu64>
c0de105e:	9400      	str	r4, [sp, #0]
c0de1060:	4628      	mov	r0, r5
c0de1062:	2132      	movs	r1, #50	@ 0x32
c0de1064:	231e      	movs	r3, #30
c0de1066:	4a03      	ldr	r2, [pc, #12]	@ (c0de1074 <swap_handle_get_printable_amount+0x54>)
c0de1068:	447a      	add	r2, pc
c0de106a:	f008 fde9 	bl	c0de9c40 <snprintf>
c0de106e:	b00c      	add	sp, #48	@ 0x30
c0de1070:	bd70      	pop	{r4, r5, r6, pc}
c0de1072:	bf00      	nop
c0de1074:	00009c74 	.word	0x00009c74

c0de1078 <swap_copy_transaction_parameters>:
c0de1078:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de107a:	b093      	sub	sp, #76	@ 0x4c
c0de107c:	6985      	ldr	r5, [r0, #24]
c0de107e:	b3ad      	cbz	r5, c0de10ec <swap_copy_transaction_parameters+0x74>
c0de1080:	4604      	mov	r4, r0
c0de1082:	4628      	mov	r0, r5
c0de1084:	f009 fbd0 	bl	c0dea828 <strlen>
c0de1088:	2828      	cmp	r0, #40	@ 0x28
c0de108a:	d12f      	bne.n	c0de10ec <swap_copy_transaction_parameters+0x74>
c0de108c:	68a7      	ldr	r7, [r4, #8]
c0de108e:	b36f      	cbz	r7, c0de10ec <swap_copy_transaction_parameters+0x74>
c0de1090:	466e      	mov	r6, sp
c0de1092:	2148      	movs	r1, #72	@ 0x48
c0de1094:	4630      	mov	r0, r6
c0de1096:	f009 fb6d 	bl	c0dea774 <__aeabi_memclr>
c0de109a:	f106 0018 	add.w	r0, r6, #24
c0de109e:	2100      	movs	r1, #0
c0de10a0:	2928      	cmp	r1, #40	@ 0x28
c0de10a2:	d009      	beq.n	c0de10b8 <swap_copy_transaction_parameters+0x40>
c0de10a4:	5c6a      	ldrb	r2, [r5, r1]
c0de10a6:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de10aa:	b2db      	uxtb	r3, r3
c0de10ac:	2b1a      	cmp	r3, #26
c0de10ae:	bf38      	it	cc
c0de10b0:	3a20      	subcc	r2, #32
c0de10b2:	5442      	strb	r2, [r0, r1]
c0de10b4:	3101      	adds	r1, #1
c0de10b6:	e7f3      	b.n	c0de10a0 <swap_copy_transaction_parameters+0x28>
c0de10b8:	7b21      	ldrb	r1, [r4, #12]
c0de10ba:	f106 0208 	add.w	r2, r6, #8
c0de10be:	4638      	mov	r0, r7
c0de10c0:	f007 f8d2 	bl	c0de8268 <swap_str_to_u64>
c0de10c4:	b190      	cbz	r0, c0de10ec <swap_copy_transaction_parameters+0x74>
c0de10c6:	7d21      	ldrb	r1, [r4, #20]
c0de10c8:	6920      	ldr	r0, [r4, #16]
c0de10ca:	f106 0210 	add.w	r2, r6, #16
c0de10ce:	f007 f8cb 	bl	c0de8268 <swap_str_to_u64>
c0de10d2:	b158      	cbz	r0, c0de10ec <swap_copy_transaction_parameters+0x74>
c0de10d4:	2401      	movs	r4, #1
c0de10d6:	f88d 4000 	strb.w	r4, [sp]
c0de10da:	f008 f919 	bl	c0de9310 <os_explicit_zero_BSS_segment>
c0de10de:	4805      	ldr	r0, [pc, #20]	@ (c0de10f4 <swap_copy_transaction_parameters+0x7c>)
c0de10e0:	4669      	mov	r1, sp
c0de10e2:	2248      	movs	r2, #72	@ 0x48
c0de10e4:	4448      	add	r0, r9
c0de10e6:	f009 fb48 	bl	c0dea77a <__aeabi_memcpy>
c0de10ea:	e000      	b.n	c0de10ee <swap_copy_transaction_parameters+0x76>
c0de10ec:	2400      	movs	r4, #0
c0de10ee:	4620      	mov	r0, r4
c0de10f0:	b013      	add	sp, #76	@ 0x4c
c0de10f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de10f4:	000002d8 	.word	0x000002d8

c0de10f8 <swap_check_validity>:
c0de10f8:	b570      	push	{r4, r5, r6, lr}
c0de10fa:	b08c      	sub	sp, #48	@ 0x30
c0de10fc:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1174 <swap_check_validity+0x7c>)
c0de10fe:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1102:	b32c      	cbz	r4, c0de1150 <swap_check_validity+0x58>
c0de1104:	eb09 0406 	add.w	r4, r9, r6
c0de1108:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de110c:	4069      	eors	r1, r5
c0de110e:	4060      	eors	r0, r4
c0de1110:	4308      	orrs	r0, r1
c0de1112:	d121      	bne.n	c0de1158 <swap_check_validity+0x60>
c0de1114:	eb09 0006 	add.w	r0, r9, r6
c0de1118:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de111c:	4059      	eors	r1, r3
c0de111e:	4050      	eors	r0, r2
c0de1120:	4308      	orrs	r0, r1
c0de1122:	d11d      	bne.n	c0de1160 <swap_check_validity+0x68>
c0de1124:	ad01      	add	r5, sp, #4
c0de1126:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1128:	2129      	movs	r1, #41	@ 0x29
c0de112a:	4628      	mov	r0, r5
c0de112c:	f009 fb22 	bl	c0dea774 <__aeabi_memclr>
c0de1130:	4620      	mov	r0, r4
c0de1132:	2114      	movs	r1, #20
c0de1134:	462a      	mov	r2, r5
c0de1136:	2329      	movs	r3, #41	@ 0x29
c0de1138:	f006 fe4c 	bl	c0de7dd4 <format_hex>
c0de113c:	eb09 0006 	add.w	r0, r9, r6
c0de1140:	4629      	mov	r1, r5
c0de1142:	3018      	adds	r0, #24
c0de1144:	f009 fb66 	bl	c0dea814 <strcmp>
c0de1148:	b970      	cbnz	r0, c0de1168 <swap_check_validity+0x70>
c0de114a:	2001      	movs	r0, #1
c0de114c:	b00c      	add	sp, #48	@ 0x30
c0de114e:	bd70      	pop	{r4, r5, r6, pc}
c0de1150:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1154:	21ff      	movs	r1, #255	@ 0xff
c0de1156:	e00a      	b.n	c0de116e <swap_check_validity+0x76>
c0de1158:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de115c:	2101      	movs	r1, #1
c0de115e:	e006      	b.n	c0de116e <swap_check_validity+0x76>
c0de1160:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1164:	2103      	movs	r1, #3
c0de1166:	e002      	b.n	c0de116e <swap_check_validity+0x76>
c0de1168:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de116c:	2102      	movs	r1, #2
c0de116e:	2200      	movs	r2, #0
c0de1170:	f007 f841 	bl	c0de81f6 <send_swap_error_simple>
c0de1174:	000002d8 	.word	0x000002d8

c0de1178 <transaction_deserialize>:
c0de1178:	b570      	push	{r4, r5, r6, lr}
c0de117a:	460d      	mov	r5, r1
c0de117c:	4604      	mov	r4, r0
c0de117e:	b910      	cbnz	r0, c0de1186 <transaction_deserialize+0xe>
c0de1180:	2001      	movs	r0, #1
c0de1182:	f008 f8b9 	bl	c0de92f8 <assert_exit>
c0de1186:	b915      	cbnz	r5, c0de118e <transaction_deserialize+0x16>
c0de1188:	2001      	movs	r0, #1
c0de118a:	f008 f8b5 	bl	c0de92f8 <assert_exit>
c0de118e:	6860      	ldr	r0, [r4, #4]
c0de1190:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1194:	d901      	bls.n	c0de119a <transaction_deserialize+0x22>
c0de1196:	20f9      	movs	r0, #249	@ 0xf9
c0de1198:	e04b      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de119a:	4620      	mov	r0, r4
c0de119c:	4629      	mov	r1, r5
c0de119e:	2200      	movs	r2, #0
c0de11a0:	f006 fc3c 	bl	c0de7a1c <buffer_read_u64>
c0de11a4:	b330      	cbz	r0, c0de11f4 <transaction_deserialize+0x7c>
c0de11a6:	6820      	ldr	r0, [r4, #0]
c0de11a8:	68a1      	ldr	r1, [r4, #8]
c0de11aa:	4408      	add	r0, r1
c0de11ac:	2114      	movs	r1, #20
c0de11ae:	61a8      	str	r0, [r5, #24]
c0de11b0:	4620      	mov	r0, r4
c0de11b2:	f006 fc12 	bl	c0de79da <buffer_seek_cur>
c0de11b6:	b1f8      	cbz	r0, c0de11f8 <transaction_deserialize+0x80>
c0de11b8:	f105 0108 	add.w	r1, r5, #8
c0de11bc:	4620      	mov	r0, r4
c0de11be:	2200      	movs	r2, #0
c0de11c0:	2600      	movs	r6, #0
c0de11c2:	f006 fc2b 	bl	c0de7a1c <buffer_read_u64>
c0de11c6:	b1c8      	cbz	r0, c0de11fc <transaction_deserialize+0x84>
c0de11c8:	f105 0120 	add.w	r1, r5, #32
c0de11cc:	4620      	mov	r0, r4
c0de11ce:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de11d2:	f006 fc43 	bl	c0de7a5c <buffer_read_varint>
c0de11d6:	6a29      	ldr	r1, [r5, #32]
c0de11d8:	b990      	cbnz	r0, c0de1200 <transaction_deserialize+0x88>
c0de11da:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de11dc:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de11e0:	ea4f 0231 	mov.w	r2, r1, rrx
c0de11e4:	2300      	movs	r3, #0
c0de11e6:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de11ea:	eb73 0000 	sbcs.w	r0, r3, r0
c0de11ee:	d207      	bcs.n	c0de1200 <transaction_deserialize+0x88>
c0de11f0:	20fc      	movs	r0, #252	@ 0xfc
c0de11f2:	e01e      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de11f4:	20ff      	movs	r0, #255	@ 0xff
c0de11f6:	e01c      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de11f8:	20fe      	movs	r0, #254	@ 0xfe
c0de11fa:	e01a      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de11fc:	20fd      	movs	r0, #253	@ 0xfd
c0de11fe:	e018      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de1200:	6820      	ldr	r0, [r4, #0]
c0de1202:	68a2      	ldr	r2, [r4, #8]
c0de1204:	4410      	add	r0, r2
c0de1206:	61e8      	str	r0, [r5, #28]
c0de1208:	4620      	mov	r0, r4
c0de120a:	f006 fbe6 	bl	c0de79da <buffer_seek_cur>
c0de120e:	b168      	cbz	r0, c0de122c <transaction_deserialize+0xb4>
c0de1210:	f105 031c 	add.w	r3, r5, #28
c0de1214:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1216:	f000 f80e 	bl	c0de1236 <transaction_utils_check_encoding>
c0de121a:	b148      	cbz	r0, c0de1230 <transaction_deserialize+0xb8>
c0de121c:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1220:	f06f 0006 	mvn.w	r0, #6
c0de1224:	428a      	cmp	r2, r1
c0de1226:	bf08      	it	eq
c0de1228:	2001      	moveq	r0, #1
c0de122a:	e002      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de122c:	20fb      	movs	r0, #251	@ 0xfb
c0de122e:	e000      	b.n	c0de1232 <transaction_deserialize+0xba>
c0de1230:	20fa      	movs	r0, #250	@ 0xfa
c0de1232:	b240      	sxtb	r0, r0
c0de1234:	bd70      	pop	{r4, r5, r6, pc}

c0de1236 <transaction_utils_check_encoding>:
c0de1236:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1238:	461c      	mov	r4, r3
c0de123a:	4615      	mov	r5, r2
c0de123c:	4606      	mov	r6, r0
c0de123e:	b910      	cbnz	r0, c0de1246 <transaction_utils_check_encoding+0x10>
c0de1240:	2001      	movs	r0, #1
c0de1242:	f008 f859 	bl	c0de92f8 <assert_exit>
c0de1246:	2000      	movs	r0, #0
c0de1248:	2300      	movs	r3, #0
c0de124a:	4602      	mov	r2, r0
c0de124c:	1b40      	subs	r0, r0, r5
c0de124e:	4619      	mov	r1, r3
c0de1250:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1254:	d206      	bcs.n	c0de1264 <transaction_utils_check_encoding+0x2e>
c0de1256:	56b7      	ldrsb	r7, [r6, r2]
c0de1258:	1c50      	adds	r0, r2, #1
c0de125a:	f141 0300 	adc.w	r3, r1, #0
c0de125e:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1262:	dcf2      	bgt.n	c0de124a <transaction_utils_check_encoding+0x14>
c0de1264:	2000      	movs	r0, #0
c0de1266:	1b52      	subs	r2, r2, r5
c0de1268:	41a1      	sbcs	r1, r4
c0de126a:	bf28      	it	cs
c0de126c:	2001      	movcs	r0, #1
c0de126e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1270 <validate_pubkey>:
c0de1270:	b108      	cbz	r0, c0de1276 <validate_pubkey+0x6>
c0de1272:	f7ff be2b 	b.w	c0de0ecc <helper_send_response_pubkey>
c0de1276:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de127a:	f000 b800 	b.w	c0de127e <io_send_sw>

c0de127e <io_send_sw>:
c0de127e:	4602      	mov	r2, r0
c0de1280:	2000      	movs	r0, #0
c0de1282:	2100      	movs	r1, #0
c0de1284:	f006 be48 	b.w	c0de7f18 <io_send_response_buffers>

c0de1288 <validate_transaction>:
c0de1288:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de128c:	b08c      	sub	sp, #48	@ 0x30
c0de128e:	b378      	cbz	r0, c0de12f0 <validate_transaction+0x68>
c0de1290:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1328 <validate_transaction+0xa0>
c0de1294:	2002      	movs	r0, #2
c0de1296:	2500      	movs	r5, #0
c0de1298:	2720      	movs	r7, #32
c0de129a:	2203      	movs	r2, #3
c0de129c:	f240 6401 	movw	r4, #1537	@ 0x601
c0de12a0:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de12a4:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de12a8:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de12aa:	f809 0008 	strb.w	r0, [r9, r8]
c0de12ae:	2048      	movs	r0, #72	@ 0x48
c0de12b0:	900a      	str	r0, [sp, #40]	@ 0x28
c0de12b2:	eb09 0008 	add.w	r0, r9, r8
c0de12b6:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de12ba:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de12be:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de12c2:	e9cd 4200 	strd	r4, r2, [sp]
c0de12c6:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de12ca:	2000      	movs	r0, #0
c0de12cc:	9508      	str	r5, [sp, #32]
c0de12ce:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de12d2:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de12d6:	2121      	movs	r1, #33	@ 0x21
c0de12d8:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de12dc:	f006 fcd0 	bl	c0de7c80 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de12e0:	b188      	cbz	r0, c0de1306 <validate_transaction+0x7e>
c0de12e2:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de12e6:	f809 5008 	strb.w	r5, [r9, r8]
c0de12ea:	f7ff ffc8 	bl	c0de127e <io_send_sw>
c0de12ee:	e017      	b.n	c0de1320 <validate_transaction+0x98>
c0de12f0:	480d      	ldr	r0, [pc, #52]	@ (c0de1328 <validate_transaction+0xa0>)
c0de12f2:	2100      	movs	r1, #0
c0de12f4:	f809 1000 	strb.w	r1, [r9, r0]
c0de12f8:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de12fc:	b00c      	add	sp, #48	@ 0x30
c0de12fe:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1302:	f7ff bfbc 	b.w	c0de127e <io_send_sw>
c0de1306:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1308:	eb09 0008 	add.w	r0, r9, r8
c0de130c:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de1310:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1314:	f001 0101 	and.w	r1, r1, #1
c0de1318:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de131c:	f7ff fe04 	bl	c0de0f28 <helper_send_response_sig>
c0de1320:	b00c      	add	sp, #48	@ 0x30
c0de1322:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1326:	bf00      	nop
c0de1328:	00000000 	.word	0x00000000

c0de132c <app_quit>:
c0de132c:	20ff      	movs	r0, #255	@ 0xff
c0de132e:	f009 f83b 	bl	c0dea3a8 <os_sched_exit>
	...

c0de1334 <ui_menu_main>:
c0de1334:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1336:	4c19      	ldr	r4, [pc, #100]	@ (c0de139c <ui_menu_main+0x68>)
c0de1338:	4817      	ldr	r0, [pc, #92]	@ (c0de1398 <ui_menu_main+0x64>)
c0de133a:	447c      	add	r4, pc
c0de133c:	eb09 0500 	add.w	r5, r9, r0
c0de1340:	f000 f8d8 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de1344:	2114      	movs	r1, #20
c0de1346:	7369      	strb	r1, [r5, #13]
c0de1348:	4915      	ldr	r1, [pc, #84]	@ (c0de13a0 <ui_menu_main+0x6c>)
c0de134a:	4a16      	ldr	r2, [pc, #88]	@ (c0de13a4 <ui_menu_main+0x70>)
c0de134c:	4479      	add	r1, pc
c0de134e:	447a      	add	r2, pc
c0de1350:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1354:	7800      	ldrb	r0, [r0, #0]
c0de1356:	7328      	strb	r0, [r5, #12]
c0de1358:	f000 f8cc 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de135c:	2115      	movs	r1, #21
c0de135e:	7669      	strb	r1, [r5, #25]
c0de1360:	4911      	ldr	r1, [pc, #68]	@ (c0de13a8 <ui_menu_main+0x74>)
c0de1362:	4a12      	ldr	r2, [pc, #72]	@ (c0de13ac <ui_menu_main+0x78>)
c0de1364:	4479      	add	r1, pc
c0de1366:	447a      	add	r2, pc
c0de1368:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de136c:	2100      	movs	r1, #0
c0de136e:	7840      	ldrb	r0, [r0, #1]
c0de1370:	7628      	strb	r0, [r5, #24]
c0de1372:	480f      	ldr	r0, [pc, #60]	@ (c0de13b0 <ui_menu_main+0x7c>)
c0de1374:	4a0f      	ldr	r2, [pc, #60]	@ (c0de13b4 <ui_menu_main+0x80>)
c0de1376:	4b10      	ldr	r3, [pc, #64]	@ (c0de13b8 <ui_menu_main+0x84>)
c0de1378:	4478      	add	r0, pc
c0de137a:	447a      	add	r2, pc
c0de137c:	447b      	add	r3, pc
c0de137e:	e9cd 3200 	strd	r3, r2, [sp]
c0de1382:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1386:	2200      	movs	r2, #0
c0de1388:	23ff      	movs	r3, #255	@ 0xff
c0de138a:	480c      	ldr	r0, [pc, #48]	@ (c0de13bc <ui_menu_main+0x88>)
c0de138c:	490c      	ldr	r1, [pc, #48]	@ (c0de13c0 <ui_menu_main+0x8c>)
c0de138e:	4478      	add	r0, pc
c0de1390:	4479      	add	r1, pc
c0de1392:	f004 feed 	bl	c0de6170 <nbgl_useCaseHomeAndSettings>
c0de1396:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1398:	00000320 	.word	0x00000320
c0de139c:	0000a6c2 	.word	0x0000a6c2
c0de13a0:	00009833 	.word	0x00009833
c0de13a4:	000099a4 	.word	0x000099a4
c0de13a8:	00009896 	.word	0x00009896
c0de13ac:	000096dc 	.word	0x000096dc
c0de13b0:	ffffffb1 	.word	0xffffffb1
c0de13b4:	00009cf6 	.word	0x00009cf6
c0de13b8:	00009ce8 	.word	0x00009ce8
c0de13bc:	000099eb 	.word	0x000099eb
c0de13c0:	0000950b 	.word	0x0000950b

c0de13c4 <controls_callback>:
c0de13c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de13c6:	4c22      	ldr	r4, [pc, #136]	@ (c0de1450 <controls_callback+0x8c>)
c0de13c8:	2815      	cmp	r0, #21
c0de13ca:	f809 2004 	strb.w	r2, [r9, r4]
c0de13ce:	d011      	beq.n	c0de13f4 <controls_callback+0x30>
c0de13d0:	2814      	cmp	r0, #20
c0de13d2:	d12a      	bne.n	c0de142a <controls_callback+0x66>
c0de13d4:	eb09 0504 	add.w	r5, r9, r4
c0de13d8:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1454 <controls_callback+0x90>)
c0de13da:	447c      	add	r4, pc
c0de13dc:	f000 f88a 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de13e0:	7800      	ldrb	r0, [r0, #0]
c0de13e2:	fab0 f080 	clz	r0, r0
c0de13e6:	0940      	lsrs	r0, r0, #5
c0de13e8:	7328      	strb	r0, [r5, #12]
c0de13ea:	f88d 000f 	strb.w	r0, [sp, #15]
c0de13ee:	f000 f881 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de13f2:	e015      	b.n	c0de1420 <controls_callback+0x5c>
c0de13f4:	4818      	ldr	r0, [pc, #96]	@ (c0de1458 <controls_callback+0x94>)
c0de13f6:	4478      	add	r0, pc
c0de13f8:	f008 fdbc 	bl	c0de9f74 <pic>
c0de13fc:	7840      	ldrb	r0, [r0, #1]
c0de13fe:	b1a8      	cbz	r0, c0de142c <controls_callback+0x68>
c0de1400:	eb09 0504 	add.w	r5, r9, r4
c0de1404:	4c15      	ldr	r4, [pc, #84]	@ (c0de145c <controls_callback+0x98>)
c0de1406:	447c      	add	r4, pc
c0de1408:	f000 f874 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de140c:	7840      	ldrb	r0, [r0, #1]
c0de140e:	fab0 f080 	clz	r0, r0
c0de1412:	0940      	lsrs	r0, r0, #5
c0de1414:	7628      	strb	r0, [r5, #24]
c0de1416:	f88d 000f 	strb.w	r0, [sp, #15]
c0de141a:	f000 f86b 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de141e:	3001      	adds	r0, #1
c0de1420:	f10d 010f 	add.w	r1, sp, #15
c0de1424:	2201      	movs	r2, #1
c0de1426:	f008 fe29 	bl	c0dea07c <nvm_write>
c0de142a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de142c:	480c      	ldr	r0, [pc, #48]	@ (c0de1460 <controls_callback+0x9c>)
c0de142e:	490d      	ldr	r1, [pc, #52]	@ (c0de1464 <controls_callback+0xa0>)
c0de1430:	4478      	add	r0, pc
c0de1432:	4479      	add	r1, pc
c0de1434:	e9cd 1000 	strd	r1, r0, [sp]
c0de1438:	480b      	ldr	r0, [pc, #44]	@ (c0de1468 <controls_callback+0xa4>)
c0de143a:	490c      	ldr	r1, [pc, #48]	@ (c0de146c <controls_callback+0xa8>)
c0de143c:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1470 <controls_callback+0xac>)
c0de143e:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1474 <controls_callback+0xb0>)
c0de1440:	4478      	add	r0, pc
c0de1442:	4479      	add	r1, pc
c0de1444:	447a      	add	r2, pc
c0de1446:	447b      	add	r3, pc
c0de1448:	f005 fabe 	bl	c0de69c8 <nbgl_useCaseChoice>
c0de144c:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de144e:	bf00      	nop
c0de1450:	00000320 	.word	0x00000320
c0de1454:	0000a622 	.word	0x0000a622
c0de1458:	0000a606 	.word	0x0000a606
c0de145c:	0000a5f6 	.word	0x0000a5f6
c0de1460:	00000045 	.word	0x00000045
c0de1464:	000097ee 	.word	0x000097ee
c0de1468:	000095d5 	.word	0x000095d5
c0de146c:	00009600 	.word	0x00009600
c0de1470:	000096c4 	.word	0x000096c4
c0de1474:	000098b4 	.word	0x000098b4

c0de1478 <review_warning_choice>:
c0de1478:	b5b0      	push	{r4, r5, r7, lr}
c0de147a:	b086      	sub	sp, #24
c0de147c:	b1a8      	cbz	r0, c0de14aa <review_warning_choice+0x32>
c0de147e:	4c17      	ldr	r4, [pc, #92]	@ (c0de14dc <review_warning_choice+0x64>)
c0de1480:	4815      	ldr	r0, [pc, #84]	@ (c0de14d8 <review_warning_choice+0x60>)
c0de1482:	447c      	add	r4, pc
c0de1484:	eb09 0500 	add.w	r5, r9, r0
c0de1488:	f000 f834 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de148c:	7840      	ldrb	r0, [r0, #1]
c0de148e:	fab0 f080 	clz	r0, r0
c0de1492:	0940      	lsrs	r0, r0, #5
c0de1494:	7628      	strb	r0, [r5, #24]
c0de1496:	f88d 0017 	strb.w	r0, [sp, #23]
c0de149a:	f000 f82b 	bl	c0de14f4 <OUTLINED_FUNCTION_0>
c0de149e:	3001      	adds	r0, #1
c0de14a0:	f10d 0117 	add.w	r1, sp, #23
c0de14a4:	2201      	movs	r2, #1
c0de14a6:	f008 fde9 	bl	c0dea07c <nvm_write>
c0de14aa:	480b      	ldr	r0, [pc, #44]	@ (c0de14d8 <review_warning_choice+0x60>)
c0de14ac:	2100      	movs	r1, #0
c0de14ae:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de14b2:	480b      	ldr	r0, [pc, #44]	@ (c0de14e0 <review_warning_choice+0x68>)
c0de14b4:	4a0b      	ldr	r2, [pc, #44]	@ (c0de14e4 <review_warning_choice+0x6c>)
c0de14b6:	4c0c      	ldr	r4, [pc, #48]	@ (c0de14e8 <review_warning_choice+0x70>)
c0de14b8:	4478      	add	r0, pc
c0de14ba:	447a      	add	r2, pc
c0de14bc:	447c      	add	r4, pc
c0de14be:	e9cd 4200 	strd	r4, r2, [sp]
c0de14c2:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de14c6:	2200      	movs	r2, #0
c0de14c8:	4808      	ldr	r0, [pc, #32]	@ (c0de14ec <review_warning_choice+0x74>)
c0de14ca:	4909      	ldr	r1, [pc, #36]	@ (c0de14f0 <review_warning_choice+0x78>)
c0de14cc:	4478      	add	r0, pc
c0de14ce:	4479      	add	r1, pc
c0de14d0:	f004 fe4e 	bl	c0de6170 <nbgl_useCaseHomeAndSettings>
c0de14d4:	b006      	add	sp, #24
c0de14d6:	bdb0      	pop	{r4, r5, r7, pc}
c0de14d8:	00000320 	.word	0x00000320
c0de14dc:	0000a57a 	.word	0x0000a57a
c0de14e0:	fffffe71 	.word	0xfffffe71
c0de14e4:	00009bb6 	.word	0x00009bb6
c0de14e8:	00009ba8 	.word	0x00009ba8
c0de14ec:	000098ad 	.word	0x000098ad
c0de14f0:	000093cd 	.word	0x000093cd

c0de14f4 <OUTLINED_FUNCTION_0>:
c0de14f4:	4620      	mov	r0, r4
c0de14f6:	f008 bd3d 	b.w	c0de9f74 <pic>
	...

c0de14fc <ui_display_address>:
c0de14fc:	b570      	push	{r4, r5, r6, lr}
c0de14fe:	b088      	sub	sp, #32
c0de1500:	4e22      	ldr	r6, [pc, #136]	@ (c0de158c <ui_display_address+0x90>)
c0de1502:	eb09 0106 	add.w	r1, r9, r6
c0de1506:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de150a:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de150e:	4308      	orrs	r0, r1
c0de1510:	d12a      	bne.n	c0de1568 <ui_display_address+0x6c>
c0de1512:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1590 <ui_display_address+0x94>)
c0de1514:	212b      	movs	r1, #43	@ 0x2b
c0de1516:	eb09 0005 	add.w	r0, r9, r5
c0de151a:	f009 f92b 	bl	c0dea774 <__aeabi_memclr>
c0de151e:	ac03      	add	r4, sp, #12
c0de1520:	2114      	movs	r1, #20
c0de1522:	4620      	mov	r0, r4
c0de1524:	f009 f926 	bl	c0dea774 <__aeabi_memclr>
c0de1528:	eb09 0006 	add.w	r0, r9, r6
c0de152c:	4621      	mov	r1, r4
c0de152e:	2214      	movs	r2, #20
c0de1530:	3008      	adds	r0, #8
c0de1532:	f7fe fd79 	bl	c0de0028 <address_from_pubkey>
c0de1536:	b308      	cbz	r0, c0de157c <ui_display_address+0x80>
c0de1538:	eb09 0205 	add.w	r2, r9, r5
c0de153c:	a803      	add	r0, sp, #12
c0de153e:	2114      	movs	r1, #20
c0de1540:	232b      	movs	r3, #43	@ 0x2b
c0de1542:	f006 fc47 	bl	c0de7dd4 <format_hex>
c0de1546:	3001      	adds	r0, #1
c0de1548:	d018      	beq.n	c0de157c <ui_display_address+0x80>
c0de154a:	4812      	ldr	r0, [pc, #72]	@ (c0de1594 <ui_display_address+0x98>)
c0de154c:	2400      	movs	r4, #0
c0de154e:	2100      	movs	r1, #0
c0de1550:	4478      	add	r0, pc
c0de1552:	e9cd 4000 	strd	r4, r0, [sp]
c0de1556:	eb09 0005 	add.w	r0, r9, r5
c0de155a:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1598 <ui_display_address+0x9c>)
c0de155c:	4b0f      	ldr	r3, [pc, #60]	@ (c0de159c <ui_display_address+0xa0>)
c0de155e:	447a      	add	r2, pc
c0de1560:	447b      	add	r3, pc
c0de1562:	f004 ff59 	bl	c0de6418 <nbgl_useCaseAddressReview>
c0de1566:	e00e      	b.n	c0de1586 <ui_display_address+0x8a>
c0de1568:	2000      	movs	r0, #0
c0de156a:	f809 0006 	strb.w	r0, [r9, r6]
c0de156e:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1572:	b008      	add	sp, #32
c0de1574:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1578:	f000 b812 	b.w	c0de15a0 <io_send_sw>
c0de157c:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1580:	f000 f80e 	bl	c0de15a0 <io_send_sw>
c0de1584:	4604      	mov	r4, r0
c0de1586:	4620      	mov	r0, r4
c0de1588:	b008      	add	sp, #32
c0de158a:	bd70      	pop	{r4, r5, r6, pc}
c0de158c:	00000000 	.word	0x00000000
c0de1590:	0000033c 	.word	0x0000033c
c0de1594:	00000059 	.word	0x00000059
c0de1598:	000094da 	.word	0x000094da
c0de159c:	00009806 	.word	0x00009806

c0de15a0 <io_send_sw>:
c0de15a0:	4602      	mov	r2, r0
c0de15a2:	2000      	movs	r0, #0
c0de15a4:	2100      	movs	r1, #0
c0de15a6:	f006 bcb7 	b.w	c0de7f18 <io_send_response_buffers>
	...

c0de15ac <review_choice>:
c0de15ac:	b510      	push	{r4, lr}
c0de15ae:	4604      	mov	r4, r0
c0de15b0:	f7ff fe5e 	bl	c0de1270 <validate_pubkey>
c0de15b4:	2007      	movs	r0, #7
c0de15b6:	2c00      	cmp	r4, #0
c0de15b8:	bf18      	it	ne
c0de15ba:	2006      	movne	r0, #6
c0de15bc:	4902      	ldr	r1, [pc, #8]	@ (c0de15c8 <review_choice+0x1c>)
c0de15be:	4479      	add	r1, pc
c0de15c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de15c4:	f005 b8d6 	b.w	c0de6774 <nbgl_useCaseReviewStatus>
c0de15c8:	fffffd73 	.word	0xfffffd73

c0de15cc <ui_display_transaction_bs_choice>:
c0de15cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de15ce:	b08d      	sub	sp, #52	@ 0x34
c0de15d0:	4f43      	ldr	r7, [pc, #268]	@ (c0de16e0 <ui_display_transaction_bs_choice+0x114>)
c0de15d2:	4604      	mov	r4, r0
c0de15d4:	eb09 0007 	add.w	r0, r9, r7
c0de15d8:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de15dc:	2801      	cmp	r0, #1
c0de15de:	d15d      	bne.n	c0de169c <ui_display_transaction_bs_choice+0xd0>
c0de15e0:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de15e4:	2801      	cmp	r0, #1
c0de15e6:	d159      	bne.n	c0de169c <ui_display_transaction_bs_choice+0xd0>
c0de15e8:	4e3e      	ldr	r6, [pc, #248]	@ (c0de16e4 <ui_display_transaction_bs_choice+0x118>)
c0de15ea:	211e      	movs	r1, #30
c0de15ec:	eb09 0006 	add.w	r0, r9, r6
c0de15f0:	3014      	adds	r0, #20
c0de15f2:	f009 f8bf 	bl	c0dea774 <__aeabi_memclr>
c0de15f6:	ad05      	add	r5, sp, #20
c0de15f8:	211e      	movs	r1, #30
c0de15fa:	4628      	mov	r0, r5
c0de15fc:	f009 f8ba 	bl	c0dea774 <__aeabi_memclr>
c0de1600:	eb09 0007 	add.w	r0, r9, r7
c0de1604:	211e      	movs	r1, #30
c0de1606:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de160a:	2003      	movs	r0, #3
c0de160c:	9000      	str	r0, [sp, #0]
c0de160e:	4628      	mov	r0, r5
c0de1610:	f006 fb99 	bl	c0de7d46 <format_fpu64>
c0de1614:	2800      	cmp	r0, #0
c0de1616:	d04b      	beq.n	c0de16b0 <ui_display_transaction_bs_choice+0xe4>
c0de1618:	9500      	str	r5, [sp, #0]
c0de161a:	eb09 0506 	add.w	r5, r9, r6
c0de161e:	211e      	movs	r1, #30
c0de1620:	231e      	movs	r3, #30
c0de1622:	4a31      	ldr	r2, [pc, #196]	@ (c0de16e8 <ui_display_transaction_bs_choice+0x11c>)
c0de1624:	f105 0014 	add.w	r0, r5, #20
c0de1628:	447a      	add	r2, pc
c0de162a:	f008 fb09 	bl	c0de9c40 <snprintf>
c0de162e:	3554      	adds	r5, #84	@ 0x54
c0de1630:	212b      	movs	r1, #43	@ 0x2b
c0de1632:	4628      	mov	r0, r5
c0de1634:	f009 f89e 	bl	c0dea774 <__aeabi_memclr>
c0de1638:	eb09 0007 	add.w	r0, r9, r7
c0de163c:	2114      	movs	r1, #20
c0de163e:	462a      	mov	r2, r5
c0de1640:	232b      	movs	r3, #43	@ 0x2b
c0de1642:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1646:	f006 fbc5 	bl	c0de7dd4 <format_hex>
c0de164a:	3001      	adds	r0, #1
c0de164c:	d033      	beq.n	c0de16b6 <ui_display_transaction_bs_choice+0xea>
c0de164e:	4927      	ldr	r1, [pc, #156]	@ (c0de16ec <ui_display_transaction_bs_choice+0x120>)
c0de1650:	eb09 0006 	add.w	r0, r9, r6
c0de1654:	2500      	movs	r5, #0
c0de1656:	4602      	mov	r2, r0
c0de1658:	4479      	add	r1, pc
c0de165a:	f842 1f34 	str.w	r1, [r2, #52]!
c0de165e:	f849 2006 	str.w	r2, [r9, r6]
c0de1662:	2202      	movs	r2, #2
c0de1664:	4922      	ldr	r1, [pc, #136]	@ (c0de16f0 <ui_display_transaction_bs_choice+0x124>)
c0de1666:	7202      	strb	r2, [r0, #8]
c0de1668:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de166c:	7285      	strb	r5, [r0, #10]
c0de166e:	4479      	add	r1, pc
c0de1670:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1674:	f100 0114 	add.w	r1, r0, #20
c0de1678:	6381      	str	r1, [r0, #56]	@ 0x38
c0de167a:	481e      	ldr	r0, [pc, #120]	@ (c0de16f4 <ui_display_transaction_bs_choice+0x128>)
c0de167c:	4478      	add	r0, pc
c0de167e:	b314      	cbz	r4, c0de16c6 <ui_display_transaction_bs_choice+0xfa>
c0de1680:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1684:	e9cd 5500 	strd	r5, r5, [sp]
c0de1688:	eb09 0106 	add.w	r1, r9, r6
c0de168c:	2000      	movs	r0, #0
c0de168e:	4a1a      	ldr	r2, [pc, #104]	@ (c0de16f8 <ui_display_transaction_bs_choice+0x12c>)
c0de1690:	4b1a      	ldr	r3, [pc, #104]	@ (c0de16fc <ui_display_transaction_bs_choice+0x130>)
c0de1692:	447a      	add	r2, pc
c0de1694:	447b      	add	r3, pc
c0de1696:	f004 fead 	bl	c0de63f4 <nbgl_useCaseReviewBlindSigning>
c0de169a:	e011      	b.n	c0de16c0 <ui_display_transaction_bs_choice+0xf4>
c0de169c:	2000      	movs	r0, #0
c0de169e:	f809 0007 	strb.w	r0, [r9, r7]
c0de16a2:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de16a6:	b00d      	add	sp, #52	@ 0x34
c0de16a8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de16ac:	f000 b82c 	b.w	c0de1708 <io_send_sw>
c0de16b0:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de16b4:	e001      	b.n	c0de16ba <ui_display_transaction_bs_choice+0xee>
c0de16b6:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de16ba:	f000 f825 	bl	c0de1708 <io_send_sw>
c0de16be:	4605      	mov	r5, r0
c0de16c0:	4628      	mov	r0, r5
c0de16c2:	b00d      	add	sp, #52	@ 0x34
c0de16c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de16c6:	9002      	str	r0, [sp, #8]
c0de16c8:	e9cd 5500 	strd	r5, r5, [sp]
c0de16cc:	eb09 0106 	add.w	r1, r9, r6
c0de16d0:	2000      	movs	r0, #0
c0de16d2:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1700 <ui_display_transaction_bs_choice+0x134>)
c0de16d4:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1704 <ui_display_transaction_bs_choice+0x138>)
c0de16d6:	447a      	add	r2, pc
c0de16d8:	447b      	add	r3, pc
c0de16da:	f004 fdf1 	bl	c0de62c0 <nbgl_useCaseReview>
c0de16de:	e7ef      	b.n	c0de16c0 <ui_display_transaction_bs_choice+0xf4>
c0de16e0:	00000000 	.word	0x00000000
c0de16e4:	00000368 	.word	0x00000368
c0de16e8:	000096b4 	.word	0x000096b4
c0de16ec:	00009498 	.word	0x00009498
c0de16f0:	00009677 	.word	0x00009677
c0de16f4:	00000095 	.word	0x00000095
c0de16f8:	000093a6 	.word	0x000093a6
c0de16fc:	000093b6 	.word	0x000093b6
c0de1700:	00009362 	.word	0x00009362
c0de1704:	00009372 	.word	0x00009372

c0de1708 <io_send_sw>:
c0de1708:	4602      	mov	r2, r0
c0de170a:	2000      	movs	r0, #0
c0de170c:	2100      	movs	r1, #0
c0de170e:	f006 bc03 	b.w	c0de7f18 <io_send_response_buffers>
	...

c0de1714 <review_choice>:
c0de1714:	b510      	push	{r4, lr}
c0de1716:	4604      	mov	r4, r0
c0de1718:	f7ff fdb6 	bl	c0de1288 <validate_transaction>
c0de171c:	4903      	ldr	r1, [pc, #12]	@ (c0de172c <review_choice+0x18>)
c0de171e:	f084 0001 	eor.w	r0, r4, #1
c0de1722:	4479      	add	r1, pc
c0de1724:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1728:	f005 b824 	b.w	c0de6774 <nbgl_useCaseReviewStatus>
c0de172c:	fffffc0f 	.word	0xfffffc0f

c0de1730 <ui_display_blind_signed_transaction>:
c0de1730:	2001      	movs	r0, #1
c0de1732:	f7ff bf4b 	b.w	c0de15cc <ui_display_transaction_bs_choice>

c0de1736 <ui_display_transaction>:
c0de1736:	2000      	movs	r0, #0
c0de1738:	f7ff bf48 	b.w	c0de15cc <ui_display_transaction_bs_choice>

c0de173c <zkn_prv_hash>:
c0de173c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1740:	460c      	mov	r4, r1
c0de1742:	e9cd 0200 	strd	r0, r2, [sp]
c0de1746:	4668      	mov	r0, sp
c0de1748:	2101      	movs	r1, #1
c0de174a:	2601      	movs	r6, #1
c0de174c:	4622      	mov	r2, r4
c0de174e:	f007 fd9a 	bl	c0de9286 <cx_blake2b_512_hash_iovec>
c0de1752:	4605      	mov	r5, r0
c0de1754:	bb18      	cbnz	r0, c0de179e <zkn_prv_hash+0x62>
c0de1756:	7820      	ldrb	r0, [r4, #0]
c0de1758:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de175c:	7020      	strb	r0, [r4, #0]
c0de175e:	7fe0      	ldrb	r0, [r4, #31]
c0de1760:	f366 109f 	bfi	r0, r6, #6, #26
c0de1764:	77e0      	strb	r0, [r4, #31]
c0de1766:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de176a:	4e0e      	ldr	r6, [pc, #56]	@ (c0de17a4 <zkn_prv_hash+0x68>)
c0de176c:	447e      	add	r6, pc
c0de176e:	47b0      	blx	r6
c0de1770:	4680      	mov	r8, r0
c0de1772:	468a      	mov	sl, r1
c0de1774:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1778:	47b0      	blx	r6
c0de177a:	4683      	mov	fp, r0
c0de177c:	460f      	mov	r7, r1
c0de177e:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1782:	47b0      	blx	r6
c0de1784:	e9c4 0100 	strd	r0, r1, [r4]
c0de1788:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de178c:	47b0      	blx	r6
c0de178e:	f104 0208 	add.w	r2, r4, #8
c0de1792:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1796:	f104 0014 	add.w	r0, r4, #20
c0de179a:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de179e:	4628      	mov	r0, r5
c0de17a0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de17a4:	00000341 	.word	0x00000341

c0de17a8 <zkn_prv2pub>:
c0de17a8:	b570      	push	{r4, r5, r6, lr}
c0de17aa:	b092      	sub	sp, #72	@ 0x48
c0de17ac:	4614      	mov	r4, r2
c0de17ae:	6802      	ldr	r2, [r0, #0]
c0de17b0:	ae02      	add	r6, sp, #8
c0de17b2:	4605      	mov	r5, r0
c0de17b4:	4608      	mov	r0, r1
c0de17b6:	4631      	mov	r1, r6
c0de17b8:	f7ff ffc0 	bl	c0de173c <zkn_prv_hash>
c0de17bc:	2000      	movs	r0, #0
c0de17be:	2100      	movs	r1, #0
c0de17c0:	2820      	cmp	r0, #32
c0de17c2:	d009      	beq.n	c0de17d8 <zkn_prv2pub+0x30>
c0de17c4:	5c32      	ldrb	r2, [r6, r0]
c0de17c6:	0149      	lsls	r1, r1, #5
c0de17c8:	0613      	lsls	r3, r2, #24
c0de17ca:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de17ce:	5431      	strb	r1, [r6, r0]
c0de17d0:	f002 0107 	and.w	r1, r2, #7
c0de17d4:	3001      	adds	r0, #1
c0de17d6:	e7f3      	b.n	c0de17c0 <zkn_prv2pub+0x18>
c0de17d8:	4629      	mov	r1, r5
c0de17da:	4628      	mov	r0, r5
c0de17dc:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de17e0:	9400      	str	r4, [sp, #0]
c0de17e2:	aa02      	add	r2, sp, #8
c0de17e4:	f000 fe60 	bl	c0de24a8 <tEdwards_scalarMul>
c0de17e8:	b918      	cbnz	r0, c0de17f2 <zkn_prv2pub+0x4a>
c0de17ea:	4628      	mov	r0, r5
c0de17ec:	4621      	mov	r1, r4
c0de17ee:	f000 fd96 	bl	c0de231e <tEdwards_normalize>
c0de17f2:	b012      	add	sp, #72	@ 0x48
c0de17f4:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de17f8 <EddsaPoseidon_Sign_final>:
c0de17f8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de17fc:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1800:	4605      	mov	r5, r0
c0de1802:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1804:	2820      	cmp	r0, #32
c0de1806:	d118      	bne.n	c0de183a <EddsaPoseidon_Sign_final+0x42>
c0de1808:	460f      	mov	r7, r1
c0de180a:	a982      	add	r1, sp, #520	@ 0x208
c0de180c:	4628      	mov	r0, r5
c0de180e:	461e      	mov	r6, r3
c0de1810:	4692      	mov	sl, r2
c0de1812:	f000 fa3a 	bl	c0de1c8a <tEdwards_alloc>
c0de1816:	b988      	cbnz	r0, c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1818:	682a      	ldr	r2, [r5, #0]
c0de181a:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de181c:	4638      	mov	r0, r7
c0de181e:	4621      	mov	r1, r4
c0de1820:	f7ff ff8c 	bl	c0de173c <zkn_prv_hash>
c0de1824:	b950      	cbnz	r0, c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1826:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de182a:	2000      	movs	r0, #0
c0de182c:	a95a      	add	r1, sp, #360	@ 0x168
c0de182e:	2820      	cmp	r0, #32
c0de1830:	d008      	beq.n	c0de1844 <EddsaPoseidon_Sign_final+0x4c>
c0de1832:	5c22      	ldrb	r2, [r4, r0]
c0de1834:	540a      	strb	r2, [r1, r0]
c0de1836:	3001      	adds	r0, #1
c0de1838:	e7f9      	b.n	c0de182e <EddsaPoseidon_Sign_final+0x36>
c0de183a:	489b      	ldr	r0, [pc, #620]	@ (c0de1aa8 <EddsaPoseidon_Sign_final+0x2b0>)
c0de183c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1840:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1844:	a812      	add	r0, sp, #72	@ 0x48
c0de1846:	2109      	movs	r1, #9
c0de1848:	2240      	movs	r2, #64	@ 0x40
c0de184a:	f007 fd3d 	bl	c0de92c8 <cx_hash_init_ex>
c0de184e:	2800      	cmp	r0, #0
c0de1850:	d1f4      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1852:	f104 0120 	add.w	r1, r4, #32
c0de1856:	a812      	add	r0, sp, #72	@ 0x48
c0de1858:	2220      	movs	r2, #32
c0de185a:	f007 fd3a 	bl	c0de92d2 <cx_hash_update>
c0de185e:	2800      	cmp	r0, #0
c0de1860:	d1ec      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1862:	a812      	add	r0, sp, #72	@ 0x48
c0de1864:	4631      	mov	r1, r6
c0de1866:	2220      	movs	r2, #32
c0de1868:	f007 fd33 	bl	c0de92d2 <cx_hash_update>
c0de186c:	2800      	cmp	r0, #0
c0de186e:	d1e5      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1870:	a812      	add	r0, sp, #72	@ 0x48
c0de1872:	ac62      	add	r4, sp, #392	@ 0x188
c0de1874:	4621      	mov	r1, r4
c0de1876:	f007 fd22 	bl	c0de92be <cx_hash_final>
c0de187a:	2800      	cmp	r0, #0
c0de187c:	d1de      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de187e:	203f      	movs	r0, #63	@ 0x3f
c0de1880:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1882:	1c42      	adds	r2, r0, #1
c0de1884:	d004      	beq.n	c0de1890 <EddsaPoseidon_Sign_final+0x98>
c0de1886:	5c22      	ldrb	r2, [r4, r0]
c0de1888:	3801      	subs	r0, #1
c0de188a:	f801 2b01 	strb.w	r2, [r1], #1
c0de188e:	e7f8      	b.n	c0de1882 <EddsaPoseidon_Sign_final+0x8a>
c0de1890:	a889      	add	r0, sp, #548	@ 0x224
c0de1892:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1894:	2140      	movs	r1, #64	@ 0x40
c0de1896:	2340      	movs	r3, #64	@ 0x40
c0de1898:	f008 fc16 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de189c:	2800      	cmp	r0, #0
c0de189e:	d1cd      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de18a0:	a887      	add	r0, sp, #540	@ 0x21c
c0de18a2:	2140      	movs	r1, #64	@ 0x40
c0de18a4:	f008 fc06 	bl	c0dea0b4 <cx_bn_alloc>
c0de18a8:	2800      	cmp	r0, #0
c0de18aa:	d1c7      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de18ac:	497f      	ldr	r1, [pc, #508]	@ (c0de1aac <EddsaPoseidon_Sign_final+0x2b4>)
c0de18ae:	f10d 0808 	add.w	r8, sp, #8
c0de18b2:	2240      	movs	r2, #64	@ 0x40
c0de18b4:	4640      	mov	r0, r8
c0de18b6:	4479      	add	r1, pc
c0de18b8:	f008 ff5f 	bl	c0dea77a <__aeabi_memcpy>
c0de18bc:	a888      	add	r0, sp, #544	@ 0x220
c0de18be:	2140      	movs	r1, #64	@ 0x40
c0de18c0:	4642      	mov	r2, r8
c0de18c2:	2340      	movs	r3, #64	@ 0x40
c0de18c4:	f008 fc00 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de18c8:	2800      	cmp	r0, #0
c0de18ca:	d1b7      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de18cc:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de18ce:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de18d2:	f008 fc8d 	bl	c0dea1f0 <cx_bn_reduce>
c0de18d6:	2800      	cmp	r0, #0
c0de18d8:	d1b0      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de18da:	aa87      	add	r2, sp, #540	@ 0x21c
c0de18dc:	f105 010c 	add.w	r1, r5, #12
c0de18e0:	ab82      	add	r3, sp, #520	@ 0x208
c0de18e2:	4628      	mov	r0, r5
c0de18e4:	f000 fd7a 	bl	c0de23dc <tEdwards_scalarMul_bn>
c0de18e8:	2800      	cmp	r0, #0
c0de18ea:	d1a7      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de18ec:	a982      	add	r1, sp, #520	@ 0x208
c0de18ee:	4628      	mov	r0, r5
c0de18f0:	f000 fd15 	bl	c0de231e <tEdwards_normalize>
c0de18f4:	2800      	cmp	r0, #0
c0de18f6:	d1a1      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de18f8:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de18fa:	a952      	add	r1, sp, #328	@ 0x148
c0de18fc:	f000 f8e0 	bl	c0de1ac0 <OUTLINED_FUNCTION_1>
c0de1900:	2800      	cmp	r0, #0
c0de1902:	d19b      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1904:	a888      	add	r0, sp, #544	@ 0x220
c0de1906:	f008 fbeb 	bl	c0dea0e0 <cx_bn_destroy>
c0de190a:	2800      	cmp	r0, #0
c0de190c:	d196      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de190e:	a889      	add	r0, sp, #548	@ 0x224
c0de1910:	f008 fbe6 	bl	c0dea0e0 <cx_bn_destroy>
c0de1914:	2800      	cmp	r0, #0
c0de1916:	d191      	bne.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1918:	a887      	add	r0, sp, #540	@ 0x21c
c0de191a:	f008 fbe1 	bl	c0dea0e0 <cx_bn_destroy>
c0de191e:	2800      	cmp	r0, #0
c0de1920:	f47f af8c 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1924:	4628      	mov	r0, r5
c0de1926:	f000 fc78 	bl	c0de221a <tEdwards_Curve_partial_destroy>
c0de192a:	2800      	cmp	r0, #0
c0de192c:	f47f af86 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1930:	f105 0420 	add.w	r4, r5, #32
c0de1934:	a88a      	add	r0, sp, #552	@ 0x228
c0de1936:	2105      	movs	r1, #5
c0de1938:	2205      	movs	r2, #5
c0de193a:	4623      	mov	r3, r4
c0de193c:	f000 feb8 	bl	c0de26b0 <Poseidon_alloc_init>
c0de1940:	2800      	cmp	r0, #0
c0de1942:	f47f af7b 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1946:	201f      	movs	r0, #31
c0de1948:	a962      	add	r1, sp, #392	@ 0x188
c0de194a:	1c42      	adds	r2, r0, #1
c0de194c:	d004      	beq.n	c0de1958 <EddsaPoseidon_Sign_final+0x160>
c0de194e:	5c32      	ldrb	r2, [r6, r0]
c0de1950:	3801      	subs	r0, #1
c0de1952:	f801 2b01 	strb.w	r2, [r1], #1
c0de1956:	e7f8      	b.n	c0de194a <EddsaPoseidon_Sign_final+0x152>
c0de1958:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de195a:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de195c:	f008 fbe0 	bl	c0dea120 <cx_bn_copy>
c0de1960:	2800      	cmp	r0, #0
c0de1962:	f47f af6b 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1966:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1968:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de196a:	f008 fbd9 	bl	c0dea120 <cx_bn_copy>
c0de196e:	2800      	cmp	r0, #0
c0de1970:	f47f af64 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1974:	f8da 1000 	ldr.w	r1, [sl]
c0de1978:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de197a:	f008 fbd1 	bl	c0dea120 <cx_bn_copy>
c0de197e:	2800      	cmp	r0, #0
c0de1980:	f47f af5c 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1984:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1988:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de198a:	f008 fbc9 	bl	c0dea120 <cx_bn_copy>
c0de198e:	2800      	cmp	r0, #0
c0de1990:	f47f af54 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1994:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1996:	a962      	add	r1, sp, #392	@ 0x188
c0de1998:	2220      	movs	r2, #32
c0de199a:	f008 fbb5 	bl	c0dea108 <cx_bn_init>
c0de199e:	2800      	cmp	r0, #0
c0de19a0:	f47f af4c 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19a4:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de19a6:	4622      	mov	r2, r4
c0de19a8:	4601      	mov	r1, r0
c0de19aa:	f008 fc57 	bl	c0dea25c <cx_mont_to_montgomery>
c0de19ae:	2800      	cmp	r0, #0
c0de19b0:	f47f af44 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19b4:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de19b6:	f000 f87f 	bl	c0de1ab8 <OUTLINED_FUNCTION_0>
c0de19ba:	2800      	cmp	r0, #0
c0de19bc:	f47f af3e 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19c0:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de19c2:	f000 f879 	bl	c0de1ab8 <OUTLINED_FUNCTION_0>
c0de19c6:	2800      	cmp	r0, #0
c0de19c8:	f47f af38 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19cc:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de19ce:	4659      	mov	r1, fp
c0de19d0:	f000 f876 	bl	c0de1ac0 <OUTLINED_FUNCTION_1>
c0de19d4:	2800      	cmp	r0, #0
c0de19d6:	f47f af31 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19da:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de19dc:	f10b 0120 	add.w	r1, fp, #32
c0de19e0:	f000 f86e 	bl	c0de1ac0 <OUTLINED_FUNCTION_1>
c0de19e4:	2800      	cmp	r0, #0
c0de19e6:	f47f af29 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19ea:	a982      	add	r1, sp, #520	@ 0x208
c0de19ec:	4628      	mov	r0, r5
c0de19ee:	f000 f961 	bl	c0de1cb4 <tEdwards_destroy>
c0de19f2:	2800      	cmp	r0, #0
c0de19f4:	f47f af22 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de19f8:	a885      	add	r0, sp, #532	@ 0x214
c0de19fa:	2120      	movs	r1, #32
c0de19fc:	f008 fb5a 	bl	c0dea0b4 <cx_bn_alloc>
c0de1a00:	2800      	cmp	r0, #0
c0de1a02:	f47f af1b 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a06:	a88a      	add	r0, sp, #552	@ 0x228
c0de1a08:	aa85      	add	r2, sp, #532	@ 0x214
c0de1a0a:	2100      	movs	r1, #0
c0de1a0c:	2301      	movs	r3, #1
c0de1a0e:	f000 feb5 	bl	c0de277c <Poseidon>
c0de1a12:	2800      	cmp	r0, #0
c0de1a14:	f47f af12 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a18:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1a1a:	f000 f84d 	bl	c0de1ab8 <OUTLINED_FUNCTION_0>
c0de1a1e:	2800      	cmp	r0, #0
c0de1a20:	f47f af0c 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a24:	a886      	add	r0, sp, #536	@ 0x218
c0de1a26:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1a28:	2120      	movs	r1, #32
c0de1a2a:	2320      	movs	r3, #32
c0de1a2c:	f008 fb4c 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de1a30:	2800      	cmp	r0, #0
c0de1a32:	f47f af03 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a36:	a801      	add	r0, sp, #4
c0de1a38:	2120      	movs	r1, #32
c0de1a3a:	f008 fb3b 	bl	c0dea0b4 <cx_bn_alloc>
c0de1a3e:	2800      	cmp	r0, #0
c0de1a40:	f47f aefc 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a44:	f108 0220 	add.w	r2, r8, #32
c0de1a48:	a888      	add	r0, sp, #544	@ 0x220
c0de1a4a:	2120      	movs	r1, #32
c0de1a4c:	2320      	movs	r3, #32
c0de1a4e:	f008 fb3b 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de1a52:	2800      	cmp	r0, #0
c0de1a54:	f47f aef2 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a58:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1a5a:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1a5e:	9801      	ldr	r0, [sp, #4]
c0de1a60:	f008 fbba 	bl	c0dea1d8 <cx_bn_mod_mul>
c0de1a64:	2800      	cmp	r0, #0
c0de1a66:	f47f aee9 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a6a:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1a6c:	a952      	add	r1, sp, #328	@ 0x148
c0de1a6e:	2220      	movs	r2, #32
c0de1a70:	f008 fb4a 	bl	c0dea108 <cx_bn_init>
c0de1a74:	2800      	cmp	r0, #0
c0de1a76:	f47f aee1 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a7a:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1a7c:	9a01      	ldr	r2, [sp, #4]
c0de1a7e:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1a82:	f008 fb91 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1a86:	2800      	cmp	r0, #0
c0de1a88:	f47f aed8 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a8c:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de1a8e:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de1a92:	f008 fbad 	bl	c0dea1f0 <cx_bn_reduce>
c0de1a96:	2800      	cmp	r0, #0
c0de1a98:	f47f aed0 	bne.w	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1a9c:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1a9e:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de1aa2:	f000 f80d 	bl	c0de1ac0 <OUTLINED_FUNCTION_1>
c0de1aa6:	e6c9      	b.n	c0de183c <EddsaPoseidon_Sign_final+0x44>
c0de1aa8:	5a4b4e03 	.word	0x5a4b4e03
c0de1aac:	0000980e 	.word	0x0000980e

c0de1ab0 <rev64>:
c0de1ab0:	ba0a      	rev	r2, r1
c0de1ab2:	ba01      	rev	r1, r0
c0de1ab4:	4610      	mov	r0, r2
c0de1ab6:	4770      	bx	lr

c0de1ab8 <OUTLINED_FUNCTION_0>:
c0de1ab8:	4622      	mov	r2, r4
c0de1aba:	4601      	mov	r1, r0
c0de1abc:	f008 bbda 	b.w	c0dea274 <cx_mont_from_montgomery>

c0de1ac0 <OUTLINED_FUNCTION_1>:
c0de1ac0:	2220      	movs	r2, #32
c0de1ac2:	f008 bb41 	b.w	c0dea148 <cx_bn_export>

c0de1ac6 <zkn_frost_interpolate>:
c0de1ac6:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1aca:	b085      	sub	sp, #20
c0de1acc:	460e      	mov	r6, r1
c0de1ace:	4607      	mov	r7, r0
c0de1ad0:	a803      	add	r0, sp, #12
c0de1ad2:	2120      	movs	r1, #32
c0de1ad4:	461c      	mov	r4, r3
c0de1ad6:	4615      	mov	r5, r2
c0de1ad8:	f008 faec 	bl	c0dea0b4 <cx_bn_alloc>
c0de1adc:	b998      	cbnz	r0, c0de1b06 <zkn_frost_interpolate+0x40>
c0de1ade:	a802      	add	r0, sp, #8
c0de1ae0:	2120      	movs	r1, #32
c0de1ae2:	f008 fae7 	bl	c0dea0b4 <cx_bn_alloc>
c0de1ae6:	b970      	cbnz	r0, c0de1b06 <zkn_frost_interpolate+0x40>
c0de1ae8:	a801      	add	r0, sp, #4
c0de1aea:	2120      	movs	r1, #32
c0de1aec:	f008 fae2 	bl	c0dea0b4 <cx_bn_alloc>
c0de1af0:	b948      	cbnz	r0, c0de1b06 <zkn_frost_interpolate+0x40>
c0de1af2:	9803      	ldr	r0, [sp, #12]
c0de1af4:	2101      	movs	r1, #1
c0de1af6:	f008 fb1d 	bl	c0dea134 <cx_bn_set_u32>
c0de1afa:	b920      	cbnz	r0, c0de1b06 <zkn_frost_interpolate+0x40>
c0de1afc:	9802      	ldr	r0, [sp, #8]
c0de1afe:	2101      	movs	r1, #1
c0de1b00:	f008 fb18 	bl	c0dea134 <cx_bn_set_u32>
c0de1b04:	b110      	cbz	r0, c0de1b0c <zkn_frost_interpolate+0x46>
c0de1b06:	b005      	add	sp, #20
c0de1b08:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1b0c:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de1b10:	f10d 0a10 	add.w	sl, sp, #16
c0de1b14:	b31e      	cbz	r6, c0de1b5e <zkn_frost_interpolate+0x98>
c0de1b16:	6838      	ldr	r0, [r7, #0]
c0de1b18:	4629      	mov	r1, r5
c0de1b1a:	4652      	mov	r2, sl
c0de1b1c:	f008 fb20 	bl	c0dea160 <cx_bn_cmp>
c0de1b20:	2800      	cmp	r0, #0
c0de1b22:	d1f0      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b24:	9804      	ldr	r0, [sp, #16]
c0de1b26:	b1b8      	cbz	r0, c0de1b58 <zkn_frost_interpolate+0x92>
c0de1b28:	9802      	ldr	r0, [sp, #8]
c0de1b2a:	683a      	ldr	r2, [r7, #0]
c0de1b2c:	4623      	mov	r3, r4
c0de1b2e:	4601      	mov	r1, r0
c0de1b30:	f008 fb52 	bl	c0dea1d8 <cx_bn_mod_mul>
c0de1b34:	2800      	cmp	r0, #0
c0de1b36:	d1e6      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b38:	6839      	ldr	r1, [r7, #0]
c0de1b3a:	9801      	ldr	r0, [sp, #4]
c0de1b3c:	462a      	mov	r2, r5
c0de1b3e:	4623      	mov	r3, r4
c0de1b40:	f008 fb3e 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1b44:	2800      	cmp	r0, #0
c0de1b46:	d1de      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b48:	9803      	ldr	r0, [sp, #12]
c0de1b4a:	9a01      	ldr	r2, [sp, #4]
c0de1b4c:	4623      	mov	r3, r4
c0de1b4e:	4601      	mov	r1, r0
c0de1b50:	f008 fb42 	bl	c0dea1d8 <cx_bn_mod_mul>
c0de1b54:	2800      	cmp	r0, #0
c0de1b56:	d1d6      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b58:	3704      	adds	r7, #4
c0de1b5a:	3e01      	subs	r6, #1
c0de1b5c:	e7da      	b.n	c0de1b14 <zkn_frost_interpolate+0x4e>
c0de1b5e:	9903      	ldr	r1, [sp, #12]
c0de1b60:	4640      	mov	r0, r8
c0de1b62:	4622      	mov	r2, r4
c0de1b64:	f008 fb50 	bl	c0dea208 <cx_bn_mod_invert_nprime>
c0de1b68:	2800      	cmp	r0, #0
c0de1b6a:	d1cc      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b6c:	9a02      	ldr	r2, [sp, #8]
c0de1b6e:	4640      	mov	r0, r8
c0de1b70:	4641      	mov	r1, r8
c0de1b72:	4623      	mov	r3, r4
c0de1b74:	f008 fb30 	bl	c0dea1d8 <cx_bn_mod_mul>
c0de1b78:	2800      	cmp	r0, #0
c0de1b7a:	d1c4      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b7c:	a803      	add	r0, sp, #12
c0de1b7e:	f008 faaf 	bl	c0dea0e0 <cx_bn_destroy>
c0de1b82:	2800      	cmp	r0, #0
c0de1b84:	d1bf      	bne.n	c0de1b06 <zkn_frost_interpolate+0x40>
c0de1b86:	a802      	add	r0, sp, #8
c0de1b88:	f008 faaa 	bl	c0dea0e0 <cx_bn_destroy>
c0de1b8c:	e7bb      	b.n	c0de1b06 <zkn_frost_interpolate+0x40>

c0de1b8e <zkn_frost_interpolate_secrets>:
c0de1b8e:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de1b92:	460f      	mov	r7, r1
c0de1b94:	4606      	mov	r6, r0
c0de1b96:	a802      	add	r0, sp, #8
c0de1b98:	2120      	movs	r1, #32
c0de1b9a:	461c      	mov	r4, r3
c0de1b9c:	4692      	mov	sl, r2
c0de1b9e:	f008 fa89 	bl	c0dea0b4 <cx_bn_alloc>
c0de1ba2:	b108      	cbz	r0, c0de1ba8 <zkn_frost_interpolate_secrets+0x1a>
c0de1ba4:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de1ba8:	a801      	add	r0, sp, #4
c0de1baa:	2120      	movs	r1, #32
c0de1bac:	f008 fa82 	bl	c0dea0b4 <cx_bn_alloc>
c0de1bb0:	2800      	cmp	r0, #0
c0de1bb2:	d1f7      	bne.n	c0de1ba4 <zkn_frost_interpolate_secrets+0x16>
c0de1bb4:	9802      	ldr	r0, [sp, #8]
c0de1bb6:	2100      	movs	r1, #0
c0de1bb8:	f008 fabc 	bl	c0dea134 <cx_bn_set_u32>
c0de1bbc:	2800      	cmp	r0, #0
c0de1bbe:	d1f1      	bne.n	c0de1ba4 <zkn_frost_interpolate_secrets+0x16>
c0de1bc0:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de1bc4:	2500      	movs	r5, #0
c0de1bc6:	42ac      	cmp	r4, r5
c0de1bc8:	d01d      	beq.n	c0de1c06 <zkn_frost_interpolate_secrets+0x78>
c0de1bca:	9801      	ldr	r0, [sp, #4]
c0de1bcc:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de1bd0:	68b3      	ldr	r3, [r6, #8]
c0de1bd2:	4621      	mov	r1, r4
c0de1bd4:	9000      	str	r0, [sp, #0]
c0de1bd6:	4638      	mov	r0, r7
c0de1bd8:	f7ff ff75 	bl	c0de1ac6 <zkn_frost_interpolate>
c0de1bdc:	2800      	cmp	r0, #0
c0de1bde:	d1e1      	bne.n	c0de1ba4 <zkn_frost_interpolate_secrets+0x16>
c0de1be0:	9801      	ldr	r0, [sp, #4]
c0de1be2:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de1be6:	68b3      	ldr	r3, [r6, #8]
c0de1be8:	4601      	mov	r1, r0
c0de1bea:	f008 faf5 	bl	c0dea1d8 <cx_bn_mod_mul>
c0de1bee:	2800      	cmp	r0, #0
c0de1bf0:	d1d8      	bne.n	c0de1ba4 <zkn_frost_interpolate_secrets+0x16>
c0de1bf2:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de1bf6:	68b3      	ldr	r3, [r6, #8]
c0de1bf8:	4601      	mov	r1, r0
c0de1bfa:	f008 fad5 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1bfe:	3501      	adds	r5, #1
c0de1c00:	2800      	cmp	r0, #0
c0de1c02:	d0e0      	beq.n	c0de1bc6 <zkn_frost_interpolate_secrets+0x38>
c0de1c04:	e7ce      	b.n	c0de1ba4 <zkn_frost_interpolate_secrets+0x16>
c0de1c06:	68b2      	ldr	r2, [r6, #8]
c0de1c08:	9902      	ldr	r1, [sp, #8]
c0de1c0a:	4640      	mov	r0, r8
c0de1c0c:	f008 faf0 	bl	c0dea1f0 <cx_bn_reduce>
c0de1c10:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de1c14 <zkn_evalshare>:
c0de1c14:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de1c18:	460e      	mov	r6, r1
c0de1c1a:	6801      	ldr	r1, [r0, #0]
c0de1c1c:	4607      	mov	r7, r0
c0de1c1e:	a801      	add	r0, sp, #4
c0de1c20:	461c      	mov	r4, r3
c0de1c22:	4615      	mov	r5, r2
c0de1c24:	f008 fa46 	bl	c0dea0b4 <cx_bn_alloc>
c0de1c28:	b108      	cbz	r0, c0de1c2e <zkn_evalshare+0x1a>
c0de1c2a:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de1c2e:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de1c32:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de1c36:	4640      	mov	r0, r8
c0de1c38:	f008 fa72 	bl	c0dea120 <cx_bn_copy>
c0de1c3c:	2800      	cmp	r0, #0
c0de1c3e:	d1f4      	bne.n	c0de1c2a <zkn_evalshare+0x16>
c0de1c40:	3e04      	subs	r6, #4
c0de1c42:	68bb      	ldr	r3, [r7, #8]
c0de1c44:	9801      	ldr	r0, [sp, #4]
c0de1c46:	4641      	mov	r1, r8
c0de1c48:	b17d      	cbz	r5, c0de1c6a <zkn_evalshare+0x56>
c0de1c4a:	4622      	mov	r2, r4
c0de1c4c:	f008 fac4 	bl	c0dea1d8 <cx_bn_mod_mul>
c0de1c50:	2800      	cmp	r0, #0
c0de1c52:	d1ea      	bne.n	c0de1c2a <zkn_evalshare+0x16>
c0de1c54:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de1c58:	68bb      	ldr	r3, [r7, #8]
c0de1c5a:	9901      	ldr	r1, [sp, #4]
c0de1c5c:	4640      	mov	r0, r8
c0de1c5e:	f008 faa3 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1c62:	3d01      	subs	r5, #1
c0de1c64:	2800      	cmp	r0, #0
c0de1c66:	d0ec      	beq.n	c0de1c42 <zkn_evalshare+0x2e>
c0de1c68:	e7df      	b.n	c0de1c2a <zkn_evalshare+0x16>
c0de1c6a:	461a      	mov	r2, r3
c0de1c6c:	f008 fac0 	bl	c0dea1f0 <cx_bn_reduce>
c0de1c70:	2800      	cmp	r0, #0
c0de1c72:	d1da      	bne.n	c0de1c2a <zkn_evalshare+0x16>
c0de1c74:	9901      	ldr	r1, [sp, #4]
c0de1c76:	4640      	mov	r0, r8
c0de1c78:	f008 fa52 	bl	c0dea120 <cx_bn_copy>
c0de1c7c:	2800      	cmp	r0, #0
c0de1c7e:	d1d4      	bne.n	c0de1c2a <zkn_evalshare+0x16>
c0de1c80:	a801      	add	r0, sp, #4
c0de1c82:	f008 fa2d 	bl	c0dea0e0 <cx_bn_destroy>
c0de1c86:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de1c8a <tEdwards_alloc>:
c0de1c8a:	b5b0      	push	{r4, r5, r7, lr}
c0de1c8c:	460d      	mov	r5, r1
c0de1c8e:	6801      	ldr	r1, [r0, #0]
c0de1c90:	4604      	mov	r4, r0
c0de1c92:	4628      	mov	r0, r5
c0de1c94:	f008 fa0e 	bl	c0dea0b4 <cx_bn_alloc>
c0de1c98:	b920      	cbnz	r0, c0de1ca4 <tEdwards_alloc+0x1a>
c0de1c9a:	6821      	ldr	r1, [r4, #0]
c0de1c9c:	1d28      	adds	r0, r5, #4
c0de1c9e:	f008 fa09 	bl	c0dea0b4 <cx_bn_alloc>
c0de1ca2:	b100      	cbz	r0, c0de1ca6 <tEdwards_alloc+0x1c>
c0de1ca4:	bdb0      	pop	{r4, r5, r7, pc}
c0de1ca6:	6821      	ldr	r1, [r4, #0]
c0de1ca8:	f105 0008 	add.w	r0, r5, #8
c0de1cac:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de1cb0:	f008 ba00 	b.w	c0dea0b4 <cx_bn_alloc>

c0de1cb4 <tEdwards_destroy>:
c0de1cb4:	b510      	push	{r4, lr}
c0de1cb6:	4608      	mov	r0, r1
c0de1cb8:	460c      	mov	r4, r1
c0de1cba:	f008 fa11 	bl	c0dea0e0 <cx_bn_destroy>
c0de1cbe:	b918      	cbnz	r0, c0de1cc8 <tEdwards_destroy+0x14>
c0de1cc0:	1d20      	adds	r0, r4, #4
c0de1cc2:	f008 fa0d 	bl	c0dea0e0 <cx_bn_destroy>
c0de1cc6:	b100      	cbz	r0, c0de1cca <tEdwards_destroy+0x16>
c0de1cc8:	bd10      	pop	{r4, pc}
c0de1cca:	f104 0008 	add.w	r0, r4, #8
c0de1cce:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1cd2:	f008 ba05 	b.w	c0dea0e0 <cx_bn_destroy>

c0de1cd6 <tEdwards_double>:
c0de1cd6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1cd8:	460f      	mov	r7, r1
c0de1cda:	4614      	mov	r4, r2
c0de1cdc:	4605      	mov	r5, r0
c0de1cde:	6843      	ldr	r3, [r0, #4]
c0de1ce0:	6809      	ldr	r1, [r1, #0]
c0de1ce2:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de1ce4:	687a      	ldr	r2, [r7, #4]
c0de1ce6:	f008 fa5f 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1cea:	2800      	cmp	r0, #0
c0de1cec:	d154      	bne.n	c0de1d98 <tEdwards_double+0xc2>
c0de1cee:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de1cf2:	f105 0620 	add.w	r6, r5, #32
c0de1cf6:	f000 fbfd 	bl	c0de24f4 <OUTLINED_FUNCTION_2>
c0de1cfa:	2800      	cmp	r0, #0
c0de1cfc:	d14c      	bne.n	c0de1d98 <tEdwards_double+0xc2>
c0de1cfe:	6839      	ldr	r1, [r7, #0]
c0de1d00:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de1d02:	f000 fbf7 	bl	c0de24f4 <OUTLINED_FUNCTION_2>
c0de1d06:	2800      	cmp	r0, #0
c0de1d08:	d146      	bne.n	c0de1d98 <tEdwards_double+0xc2>
c0de1d0a:	6879      	ldr	r1, [r7, #4]
c0de1d0c:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de1d0e:	f000 fbf1 	bl	c0de24f4 <OUTLINED_FUNCTION_2>
c0de1d12:	2800      	cmp	r0, #0
c0de1d14:	d140      	bne.n	c0de1d98 <tEdwards_double+0xc2>
c0de1d16:	69a9      	ldr	r1, [r5, #24]
c0de1d18:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de1d1a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de1d1c:	f000 fbe4 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1d20:	bbd0      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d22:	686b      	ldr	r3, [r5, #4]
c0de1d24:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de1d28:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de1d2a:	f008 fa3d 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1d2e:	bb98      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d30:	68b9      	ldr	r1, [r7, #8]
c0de1d32:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de1d34:	f000 fbde 	bl	c0de24f4 <OUTLINED_FUNCTION_2>
c0de1d38:	bb70      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d3a:	686b      	ldr	r3, [r5, #4]
c0de1d3c:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de1d3e:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de1d40:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de1d42:	f008 fa3d 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1d46:	bb38      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d48:	686b      	ldr	r3, [r5, #4]
c0de1d4a:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de1d4c:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de1d50:	f008 fa36 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1d54:	bb00      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d56:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de1d5a:	686b      	ldr	r3, [r5, #4]
c0de1d5c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de1d5e:	f008 fa2f 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1d62:	b9c8      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d64:	686b      	ldr	r3, [r5, #4]
c0de1d66:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de1d6a:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de1d6c:	f008 fa28 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1d70:	b990      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d72:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de1d74:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de1d76:	6820      	ldr	r0, [r4, #0]
c0de1d78:	f000 fbb6 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1d7c:	b960      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d7e:	686b      	ldr	r3, [r5, #4]
c0de1d80:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de1d84:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de1d86:	f008 fa1b 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1d8a:	b928      	cbnz	r0, c0de1d98 <tEdwards_double+0xc2>
c0de1d8c:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de1d8e:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de1d90:	6860      	ldr	r0, [r4, #4]
c0de1d92:	f000 fba9 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1d96:	b100      	cbz	r0, c0de1d9a <tEdwards_double+0xc4>
c0de1d98:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de1d9a:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de1d9c:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de1d9e:	68a0      	ldr	r0, [r4, #8]
c0de1da0:	4633      	mov	r3, r6
c0de1da2:	b001      	add	sp, #4
c0de1da4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1da8:	f008 ba70 	b.w	c0dea28c <cx_mont_mul>

c0de1dac <tEdwards_add>:
c0de1dac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1db0:	4606      	mov	r6, r0
c0de1db2:	4617      	mov	r7, r2
c0de1db4:	460c      	mov	r4, r1
c0de1db6:	6892      	ldr	r2, [r2, #8]
c0de1db8:	6889      	ldr	r1, [r1, #8]
c0de1dba:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de1dbc:	4698      	mov	r8, r3
c0de1dbe:	f106 0520 	add.w	r5, r6, #32
c0de1dc2:	f000 fb94 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1dc6:	2800      	cmp	r0, #0
c0de1dc8:	d17d      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1dca:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de1dce:	462b      	mov	r3, r5
c0de1dd0:	460a      	mov	r2, r1
c0de1dd2:	f008 fa5b 	bl	c0dea28c <cx_mont_mul>
c0de1dd6:	2800      	cmp	r0, #0
c0de1dd8:	d175      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1dda:	683a      	ldr	r2, [r7, #0]
c0de1ddc:	6821      	ldr	r1, [r4, #0]
c0de1dde:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de1de0:	f000 fb85 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1de4:	2800      	cmp	r0, #0
c0de1de6:	d16e      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1de8:	687a      	ldr	r2, [r7, #4]
c0de1dea:	6861      	ldr	r1, [r4, #4]
c0de1dec:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de1dee:	f000 fb7e 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1df2:	2800      	cmp	r0, #0
c0de1df4:	d167      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1df6:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de1dfa:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de1dfc:	f000 fb77 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1e00:	2800      	cmp	r0, #0
c0de1e02:	d160      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1e04:	69f2      	ldr	r2, [r6, #28]
c0de1e06:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de1e08:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de1e0a:	f000 fb70 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1e0e:	2800      	cmp	r0, #0
c0de1e10:	d159      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1e12:	6873      	ldr	r3, [r6, #4]
c0de1e14:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de1e16:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de1e1a:	f008 f9d1 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1e1e:	2800      	cmp	r0, #0
c0de1e20:	d151      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1e22:	6873      	ldr	r3, [r6, #4]
c0de1e24:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de1e26:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de1e28:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de1e2a:	f008 f9bd 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1e2e:	2800      	cmp	r0, #0
c0de1e30:	d149      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1e32:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de1e36:	6873      	ldr	r3, [r6, #4]
c0de1e38:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de1e3a:	f008 f9b5 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1e3e:	2800      	cmp	r0, #0
c0de1e40:	d141      	bne.n	c0de1ec6 <tEdwards_add+0x11a>
c0de1e42:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de1e46:	6873      	ldr	r3, [r6, #4]
c0de1e48:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de1e4a:	f008 f9ad 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1e4e:	bbd0      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e50:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de1e52:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de1e56:	f000 fb4a 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1e5a:	bba0      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e5c:	6873      	ldr	r3, [r6, #4]
c0de1e5e:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de1e62:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de1e64:	f008 f9ac 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1e68:	bb68      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e6a:	6873      	ldr	r3, [r6, #4]
c0de1e6c:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de1e6e:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de1e72:	f008 f9a5 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1e76:	bb30      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e78:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de1e7c:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de1e7e:	f000 fb36 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1e82:	bb00      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e84:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de1e86:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de1e88:	f8d8 0000 	ldr.w	r0, [r8]
c0de1e8c:	f000 fb2f 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1e90:	b9c8      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e92:	69b1      	ldr	r1, [r6, #24]
c0de1e94:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de1e98:	f000 fb29 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1e9c:	b998      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1e9e:	6873      	ldr	r3, [r6, #4]
c0de1ea0:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de1ea2:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de1ea4:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de1ea6:	f008 f98b 	bl	c0dea1c0 <cx_bn_mod_sub>
c0de1eaa:	b960      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1eac:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de1eae:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de1eb0:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de1eb2:	f000 fb1c 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1eb6:	b930      	cbnz	r0, c0de1ec6 <tEdwards_add+0x11a>
c0de1eb8:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de1ebc:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de1ec0:	f000 fb15 	bl	c0de24ee <OUTLINED_FUNCTION_1>
c0de1ec4:	b108      	cbz	r0, c0de1eca <tEdwards_add+0x11e>
c0de1ec6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1eca:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de1ece:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de1ed2:	462b      	mov	r3, r5
c0de1ed4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1ed8:	f008 b9d8 	b.w	c0dea28c <cx_mont_mul>

c0de1edc <tEdwards_IsOnCurve>:
c0de1edc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1ede:	4605      	mov	r5, r0
c0de1ee0:	460f      	mov	r7, r1
c0de1ee2:	2005      	movs	r0, #5
c0de1ee4:	6809      	ldr	r1, [r1, #0]
c0de1ee6:	4614      	mov	r4, r2
c0de1ee8:	9000      	str	r0, [sp, #0]
c0de1eea:	f105 0620 	add.w	r6, r5, #32
c0de1eee:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de1ef0:	460a      	mov	r2, r1
c0de1ef2:	f000 faf9 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1ef6:	b100      	cbz	r0, c0de1efa <tEdwards_IsOnCurve+0x1e>
c0de1ef8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de1efa:	6879      	ldr	r1, [r7, #4]
c0de1efc:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de1efe:	f000 faf9 	bl	c0de24f4 <OUTLINED_FUNCTION_2>
c0de1f02:	2800      	cmp	r0, #0
c0de1f04:	d1f8      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f06:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de1f0a:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de1f0c:	f000 faec 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1f10:	2800      	cmp	r0, #0
c0de1f12:	d1f1      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f14:	69a9      	ldr	r1, [r5, #24]
c0de1f16:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de1f18:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de1f1a:	f000 fae5 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1f1e:	2800      	cmp	r0, #0
c0de1f20:	d1ea      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f22:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de1f24:	686b      	ldr	r3, [r5, #4]
c0de1f26:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de1f28:	4601      	mov	r1, r0
c0de1f2a:	f008 f93d 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1f2e:	2800      	cmp	r0, #0
c0de1f30:	d1e2      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f32:	69e9      	ldr	r1, [r5, #28]
c0de1f34:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de1f36:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de1f38:	f000 fad6 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de1f3c:	2800      	cmp	r0, #0
c0de1f3e:	d1db      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f40:	686b      	ldr	r3, [r5, #4]
c0de1f42:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de1f44:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de1f46:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de1f48:	f008 f92e 	bl	c0dea1a8 <cx_bn_mod_add>
c0de1f4c:	2800      	cmp	r0, #0
c0de1f4e:	d1d3      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f50:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de1f52:	4632      	mov	r2, r6
c0de1f54:	4601      	mov	r1, r0
c0de1f56:	f008 f98d 	bl	c0dea274 <cx_mont_from_montgomery>
c0de1f5a:	2800      	cmp	r0, #0
c0de1f5c:	d1cc      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f5e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de1f60:	4632      	mov	r2, r6
c0de1f62:	4601      	mov	r1, r0
c0de1f64:	f008 f986 	bl	c0dea274 <cx_mont_from_montgomery>
c0de1f68:	2800      	cmp	r0, #0
c0de1f6a:	d1c5      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f6c:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de1f70:	466a      	mov	r2, sp
c0de1f72:	f008 f8f5 	bl	c0dea160 <cx_bn_cmp>
c0de1f76:	2800      	cmp	r0, #0
c0de1f78:	d1be      	bne.n	c0de1ef8 <tEdwards_IsOnCurve+0x1c>
c0de1f7a:	9800      	ldr	r0, [sp, #0]
c0de1f7c:	fab0 f080 	clz	r0, r0
c0de1f80:	0940      	lsrs	r0, r0, #5
c0de1f82:	7020      	strb	r0, [r4, #0]
c0de1f84:	2000      	movs	r0, #0
c0de1f86:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1f88 <tEdwards_Curve_alloc_init>:
c0de1f88:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1f8c:	b0d2      	sub	sp, #328	@ 0x148
c0de1f8e:	4604      	mov	r4, r0
c0de1f90:	2902      	cmp	r1, #2
c0de1f92:	d022      	beq.n	c0de1fda <tEdwards_Curve_alloc_init+0x52>
c0de1f94:	2901      	cmp	r1, #1
c0de1f96:	f040 80e7 	bne.w	c0de2168 <tEdwards_Curve_alloc_init+0x1e0>
c0de1f9a:	2020      	movs	r0, #32
c0de1f9c:	2220      	movs	r2, #32
c0de1f9e:	6020      	str	r0, [r4, #0]
c0de1fa0:	af4a      	add	r7, sp, #296	@ 0x128
c0de1fa2:	4974      	ldr	r1, [pc, #464]	@ (c0de2174 <tEdwards_Curve_alloc_init+0x1ec>)
c0de1fa4:	4638      	mov	r0, r7
c0de1fa6:	4479      	add	r1, pc
c0de1fa8:	f008 fbe7 	bl	c0dea77a <__aeabi_memcpy>
c0de1fac:	ae42      	add	r6, sp, #264	@ 0x108
c0de1fae:	4972      	ldr	r1, [pc, #456]	@ (c0de2178 <tEdwards_Curve_alloc_init+0x1f0>)
c0de1fb0:	2220      	movs	r2, #32
c0de1fb2:	4630      	mov	r0, r6
c0de1fb4:	4479      	add	r1, pc
c0de1fb6:	f008 fbe0 	bl	c0dea77a <__aeabi_memcpy>
c0de1fba:	4970      	ldr	r1, [pc, #448]	@ (c0de217c <tEdwards_Curve_alloc_init+0x1f4>)
c0de1fbc:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de1fc0:	2220      	movs	r2, #32
c0de1fc2:	4650      	mov	r0, sl
c0de1fc4:	4479      	add	r1, pc
c0de1fc6:	f008 fbd8 	bl	c0dea77a <__aeabi_memcpy>
c0de1fca:	ad32      	add	r5, sp, #200	@ 0xc8
c0de1fcc:	496c      	ldr	r1, [pc, #432]	@ (c0de2180 <tEdwards_Curve_alloc_init+0x1f8>)
c0de1fce:	2220      	movs	r2, #32
c0de1fd0:	4628      	mov	r0, r5
c0de1fd2:	4479      	add	r1, pc
c0de1fd4:	f008 fbd1 	bl	c0dea77a <__aeabi_memcpy>
c0de1fd8:	e02d      	b.n	c0de2036 <tEdwards_Curve_alloc_init+0xae>
c0de1fda:	2020      	movs	r0, #32
c0de1fdc:	2220      	movs	r2, #32
c0de1fde:	6020      	str	r0, [r4, #0]
c0de1fe0:	af2a      	add	r7, sp, #168	@ 0xa8
c0de1fe2:	4968      	ldr	r1, [pc, #416]	@ (c0de2184 <tEdwards_Curve_alloc_init+0x1fc>)
c0de1fe4:	4638      	mov	r0, r7
c0de1fe6:	4479      	add	r1, pc
c0de1fe8:	f008 fbc7 	bl	c0dea77a <__aeabi_memcpy>
c0de1fec:	ae22      	add	r6, sp, #136	@ 0x88
c0de1fee:	4966      	ldr	r1, [pc, #408]	@ (c0de2188 <tEdwards_Curve_alloc_init+0x200>)
c0de1ff0:	2220      	movs	r2, #32
c0de1ff2:	4630      	mov	r0, r6
c0de1ff4:	4479      	add	r1, pc
c0de1ff6:	f008 fbc0 	bl	c0dea77a <__aeabi_memcpy>
c0de1ffa:	4964      	ldr	r1, [pc, #400]	@ (c0de218c <tEdwards_Curve_alloc_init+0x204>)
c0de1ffc:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2000:	2220      	movs	r2, #32
c0de2002:	4650      	mov	r0, sl
c0de2004:	4479      	add	r1, pc
c0de2006:	f008 fbb8 	bl	c0dea77a <__aeabi_memcpy>
c0de200a:	a812      	add	r0, sp, #72	@ 0x48
c0de200c:	4960      	ldr	r1, [pc, #384]	@ (c0de2190 <tEdwards_Curve_alloc_init+0x208>)
c0de200e:	2220      	movs	r2, #32
c0de2010:	9001      	str	r0, [sp, #4]
c0de2012:	4479      	add	r1, pc
c0de2014:	f008 fbb1 	bl	c0dea77a <__aeabi_memcpy>
c0de2018:	495e      	ldr	r1, [pc, #376]	@ (c0de2194 <tEdwards_Curve_alloc_init+0x20c>)
c0de201a:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de201e:	2220      	movs	r2, #32
c0de2020:	4658      	mov	r0, fp
c0de2022:	4479      	add	r1, pc
c0de2024:	f008 fba9 	bl	c0dea77a <__aeabi_memcpy>
c0de2028:	ad02      	add	r5, sp, #8
c0de202a:	495b      	ldr	r1, [pc, #364]	@ (c0de2198 <tEdwards_Curve_alloc_init+0x210>)
c0de202c:	2220      	movs	r2, #32
c0de202e:	4628      	mov	r0, r5
c0de2030:	4479      	add	r1, pc
c0de2032:	f008 fba2 	bl	c0dea77a <__aeabi_memcpy>
c0de2036:	f104 0804 	add.w	r8, r4, #4
c0de203a:	2120      	movs	r1, #32
c0de203c:	463a      	mov	r2, r7
c0de203e:	2320      	movs	r3, #32
c0de2040:	4640      	mov	r0, r8
c0de2042:	f008 f841 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de2046:	2800      	cmp	r0, #0
c0de2048:	f040 808f 	bne.w	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de204c:	4620      	mov	r0, r4
c0de204e:	462a      	mov	r2, r5
c0de2050:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2054:	460b      	mov	r3, r1
c0de2056:	f008 f837 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de205a:	2800      	cmp	r0, #0
c0de205c:	f040 8085 	bne.w	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2060:	f104 0520 	add.w	r5, r4, #32
c0de2064:	2120      	movs	r1, #32
c0de2066:	4628      	mov	r0, r5
c0de2068:	f008 f8e4 	bl	c0dea234 <cx_mont_alloc>
c0de206c:	2800      	cmp	r0, #0
c0de206e:	d17c      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2070:	f8d8 1000 	ldr.w	r1, [r8]
c0de2074:	4628      	mov	r0, r5
c0de2076:	f008 f8e7 	bl	c0dea248 <cx_mont_init>
c0de207a:	2800      	cmp	r0, #0
c0de207c:	d175      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de207e:	4627      	mov	r7, r4
c0de2080:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2084:	4638      	mov	r0, r7
c0de2086:	f008 f815 	bl	c0dea0b4 <cx_bn_alloc>
c0de208a:	2800      	cmp	r0, #0
c0de208c:	d16d      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de208e:	6838      	ldr	r0, [r7, #0]
c0de2090:	2101      	movs	r1, #1
c0de2092:	f008 f84f 	bl	c0dea134 <cx_bn_set_u32>
c0de2096:	2800      	cmp	r0, #0
c0de2098:	d167      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de209a:	6838      	ldr	r0, [r7, #0]
c0de209c:	f000 fa2e 	bl	c0de24fc <OUTLINED_FUNCTION_3>
c0de20a0:	2800      	cmp	r0, #0
c0de20a2:	d162      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20a4:	f104 070c 	add.w	r7, r4, #12
c0de20a8:	4620      	mov	r0, r4
c0de20aa:	4639      	mov	r1, r7
c0de20ac:	f7ff fded 	bl	c0de1c8a <tEdwards_alloc>
c0de20b0:	2800      	cmp	r0, #0
c0de20b2:	d15a      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20b4:	9901      	ldr	r1, [sp, #4]
c0de20b6:	4620      	mov	r0, r4
c0de20b8:	465a      	mov	r2, fp
c0de20ba:	463b      	mov	r3, r7
c0de20bc:	f000 f86e 	bl	c0de219c <tEdwards_init>
c0de20c0:	2800      	cmp	r0, #0
c0de20c2:	d152      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20c4:	4627      	mov	r7, r4
c0de20c6:	4632      	mov	r2, r6
c0de20c8:	f857 1b18 	ldr.w	r1, [r7], #24
c0de20cc:	4638      	mov	r0, r7
c0de20ce:	460b      	mov	r3, r1
c0de20d0:	f007 fffa 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de20d4:	2800      	cmp	r0, #0
c0de20d6:	d148      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20d8:	6838      	ldr	r0, [r7, #0]
c0de20da:	f000 fa0f 	bl	c0de24fc <OUTLINED_FUNCTION_3>
c0de20de:	2800      	cmp	r0, #0
c0de20e0:	d143      	bne.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20e2:	4626      	mov	r6, r4
c0de20e4:	4652      	mov	r2, sl
c0de20e6:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de20ea:	4630      	mov	r0, r6
c0de20ec:	460b      	mov	r3, r1
c0de20ee:	f007 ffeb 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de20f2:	bbd0      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20f4:	6830      	ldr	r0, [r6, #0]
c0de20f6:	f000 fa01 	bl	c0de24fc <OUTLINED_FUNCTION_3>
c0de20fa:	bbb0      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de20fc:	4620      	mov	r0, r4
c0de20fe:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2102:	f007 ffd7 	bl	c0dea0b4 <cx_bn_alloc>
c0de2106:	bb80      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2108:	4620      	mov	r0, r4
c0de210a:	f850 1b30 	ldr.w	r1, [r0], #48
c0de210e:	f007 ffd1 	bl	c0dea0b4 <cx_bn_alloc>
c0de2112:	bb50      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2114:	4620      	mov	r0, r4
c0de2116:	f850 1b34 	ldr.w	r1, [r0], #52
c0de211a:	f007 ffcb 	bl	c0dea0b4 <cx_bn_alloc>
c0de211e:	bb20      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2120:	4620      	mov	r0, r4
c0de2122:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2126:	f007 ffc5 	bl	c0dea0b4 <cx_bn_alloc>
c0de212a:	b9f0      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de212c:	4620      	mov	r0, r4
c0de212e:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2132:	f007 ffbf 	bl	c0dea0b4 <cx_bn_alloc>
c0de2136:	b9c0      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2138:	4620      	mov	r0, r4
c0de213a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de213e:	f007 ffb9 	bl	c0dea0b4 <cx_bn_alloc>
c0de2142:	b990      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2144:	4620      	mov	r0, r4
c0de2146:	f850 1b44 	ldr.w	r1, [r0], #68
c0de214a:	f007 ffb3 	bl	c0dea0b4 <cx_bn_alloc>
c0de214e:	b960      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2150:	4620      	mov	r0, r4
c0de2152:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2156:	f007 ffad 	bl	c0dea0b4 <cx_bn_alloc>
c0de215a:	b930      	cbnz	r0, c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de215c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2160:	4620      	mov	r0, r4
c0de2162:	f007 ffa7 	bl	c0dea0b4 <cx_bn_alloc>
c0de2166:	e000      	b.n	c0de216a <tEdwards_Curve_alloc_init+0x1e2>
c0de2168:	4801      	ldr	r0, [pc, #4]	@ (c0de2170 <tEdwards_Curve_alloc_init+0x1e8>)
c0de216a:	b052      	add	sp, #328	@ 0x148
c0de216c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2170:	5a4b4e01 	.word	0x5a4b4e01
c0de2174:	00008dfe 	.word	0x00008dfe
c0de2178:	00008f70 	.word	0x00008f70
c0de217c:	00008f20 	.word	0x00008f20
c0de2180:	00008e92 	.word	0x00008e92
c0de2184:	00008f7e 	.word	0x00008f7e
c0de2188:	00008ed0 	.word	0x00008ed0
c0de218c:	00008f40 	.word	0x00008f40
c0de2190:	00008f72 	.word	0x00008f72
c0de2194:	00008f82 	.word	0x00008f82
c0de2198:	00008e54 	.word	0x00008e54

c0de219c <tEdwards_init>:
c0de219c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de219e:	6806      	ldr	r6, [r0, #0]
c0de21a0:	461c      	mov	r4, r3
c0de21a2:	4617      	mov	r7, r2
c0de21a4:	460a      	mov	r2, r1
c0de21a6:	4605      	mov	r5, r0
c0de21a8:	a802      	add	r0, sp, #8
c0de21aa:	4631      	mov	r1, r6
c0de21ac:	4633      	mov	r3, r6
c0de21ae:	f007 ff8b 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de21b2:	b100      	cbz	r0, c0de21b6 <tEdwards_init+0x1a>
c0de21b4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de21b6:	a801      	add	r0, sp, #4
c0de21b8:	4631      	mov	r1, r6
c0de21ba:	463a      	mov	r2, r7
c0de21bc:	4633      	mov	r3, r6
c0de21be:	f007 ff83 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de21c2:	2800      	cmp	r0, #0
c0de21c4:	d1f6      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de21c6:	4668      	mov	r0, sp
c0de21c8:	4631      	mov	r1, r6
c0de21ca:	f007 ff73 	bl	c0dea0b4 <cx_bn_alloc>
c0de21ce:	2800      	cmp	r0, #0
c0de21d0:	d1f0      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de21d2:	f105 0620 	add.w	r6, r5, #32
c0de21d6:	6820      	ldr	r0, [r4, #0]
c0de21d8:	9902      	ldr	r1, [sp, #8]
c0de21da:	4632      	mov	r2, r6
c0de21dc:	f008 f83e 	bl	c0dea25c <cx_mont_to_montgomery>
c0de21e0:	2800      	cmp	r0, #0
c0de21e2:	d1e7      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de21e4:	6860      	ldr	r0, [r4, #4]
c0de21e6:	9901      	ldr	r1, [sp, #4]
c0de21e8:	4632      	mov	r2, r6
c0de21ea:	f008 f837 	bl	c0dea25c <cx_mont_to_montgomery>
c0de21ee:	2800      	cmp	r0, #0
c0de21f0:	d1e0      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de21f2:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de21f4:	68a0      	ldr	r0, [r4, #8]
c0de21f6:	f007 ff93 	bl	c0dea120 <cx_bn_copy>
c0de21fa:	2800      	cmp	r0, #0
c0de21fc:	d1da      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de21fe:	a802      	add	r0, sp, #8
c0de2200:	f007 ff6e 	bl	c0dea0e0 <cx_bn_destroy>
c0de2204:	2800      	cmp	r0, #0
c0de2206:	d1d5      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de2208:	a801      	add	r0, sp, #4
c0de220a:	f007 ff69 	bl	c0dea0e0 <cx_bn_destroy>
c0de220e:	2800      	cmp	r0, #0
c0de2210:	d1d0      	bne.n	c0de21b4 <tEdwards_init+0x18>
c0de2212:	4668      	mov	r0, sp
c0de2214:	f007 ff64 	bl	c0dea0e0 <cx_bn_destroy>
c0de2218:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de221a <tEdwards_Curve_partial_destroy>:
c0de221a:	b510      	push	{r4, lr}
c0de221c:	4604      	mov	r4, r0
c0de221e:	302c      	adds	r0, #44	@ 0x2c
c0de2220:	f007 ff5e 	bl	c0dea0e0 <cx_bn_destroy>
c0de2224:	bbd8      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2226:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de222a:	f007 ff59 	bl	c0dea0e0 <cx_bn_destroy>
c0de222e:	bbb0      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2230:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2234:	f007 ff54 	bl	c0dea0e0 <cx_bn_destroy>
c0de2238:	bb88      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de223a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de223e:	f007 ff4f 	bl	c0dea0e0 <cx_bn_destroy>
c0de2242:	bb60      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2244:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2248:	f007 ff4a 	bl	c0dea0e0 <cx_bn_destroy>
c0de224c:	bb38      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de224e:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2252:	f007 ff45 	bl	c0dea0e0 <cx_bn_destroy>
c0de2256:	bb10      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2258:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de225c:	f007 ff40 	bl	c0dea0e0 <cx_bn_destroy>
c0de2260:	b9e8      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2262:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2266:	f007 ff3b 	bl	c0dea0e0 <cx_bn_destroy>
c0de226a:	b9c0      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de226c:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2270:	f007 ff36 	bl	c0dea0e0 <cx_bn_destroy>
c0de2274:	b998      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2276:	f104 010c 	add.w	r1, r4, #12
c0de227a:	f7ff fd1b 	bl	c0de1cb4 <tEdwards_destroy>
c0de227e:	b970      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2280:	f104 0018 	add.w	r0, r4, #24
c0de2284:	f007 ff2c 	bl	c0dea0e0 <cx_bn_destroy>
c0de2288:	b948      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de228a:	f104 001c 	add.w	r0, r4, #28
c0de228e:	f007 ff27 	bl	c0dea0e0 <cx_bn_destroy>
c0de2292:	b920      	cbnz	r0, c0de229e <tEdwards_Curve_partial_destroy+0x84>
c0de2294:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2298:	f007 ff22 	bl	c0dea0e0 <cx_bn_destroy>
c0de229c:	b100      	cbz	r0, c0de22a0 <tEdwards_Curve_partial_destroy+0x86>
c0de229e:	bd10      	pop	{r4, pc}
c0de22a0:	f104 0008 	add.w	r0, r4, #8
c0de22a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de22a8:	f007 bf1a 	b.w	c0dea0e0 <cx_bn_destroy>

c0de22ac <tEdwards_SetNeutral>:
c0de22ac:	b5b0      	push	{r4, r5, r7, lr}
c0de22ae:	4605      	mov	r5, r0
c0de22b0:	6808      	ldr	r0, [r1, #0]
c0de22b2:	460c      	mov	r4, r1
c0de22b4:	2100      	movs	r1, #0
c0de22b6:	f007 ff3d 	bl	c0dea134 <cx_bn_set_u32>
c0de22ba:	b918      	cbnz	r0, c0de22c4 <tEdwards_SetNeutral+0x18>
c0de22bc:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de22be:	f000 f921 	bl	c0de2504 <OUTLINED_FUNCTION_4>
c0de22c2:	b100      	cbz	r0, c0de22c6 <tEdwards_SetNeutral+0x1a>
c0de22c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de22c6:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de22c8:	68a0      	ldr	r0, [r4, #8]
c0de22ca:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de22ce:	f007 bf27 	b.w	c0dea120 <cx_bn_copy>

c0de22d2 <tEdwards_export>:
c0de22d2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de22d6:	4698      	mov	r8, r3
c0de22d8:	4616      	mov	r6, r2
c0de22da:	460f      	mov	r7, r1
c0de22dc:	4605      	mov	r5, r0
c0de22de:	f000 f81e 	bl	c0de231e <tEdwards_normalize>
c0de22e2:	b998      	cbnz	r0, c0de230c <tEdwards_export+0x3a>
c0de22e4:	f105 0420 	add.w	r4, r5, #32
c0de22e8:	6839      	ldr	r1, [r7, #0]
c0de22ea:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de22ec:	4622      	mov	r2, r4
c0de22ee:	f007 ffc1 	bl	c0dea274 <cx_mont_from_montgomery>
c0de22f2:	b958      	cbnz	r0, c0de230c <tEdwards_export+0x3a>
c0de22f4:	6879      	ldr	r1, [r7, #4]
c0de22f6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de22f8:	4622      	mov	r2, r4
c0de22fa:	f007 ffbb 	bl	c0dea274 <cx_mont_from_montgomery>
c0de22fe:	b928      	cbnz	r0, c0de230c <tEdwards_export+0x3a>
c0de2300:	682a      	ldr	r2, [r5, #0]
c0de2302:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2304:	4631      	mov	r1, r6
c0de2306:	f007 ff1f 	bl	c0dea148 <cx_bn_export>
c0de230a:	b108      	cbz	r0, c0de2310 <tEdwards_export+0x3e>
c0de230c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2310:	682a      	ldr	r2, [r5, #0]
c0de2312:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2314:	4641      	mov	r1, r8
c0de2316:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de231a:	f007 bf15 	b.w	c0dea148 <cx_bn_export>

c0de231e <tEdwards_normalize>:
c0de231e:	b570      	push	{r4, r5, r6, lr}
c0de2320:	4605      	mov	r5, r0
c0de2322:	460c      	mov	r4, r1
c0de2324:	6889      	ldr	r1, [r1, #8]
c0de2326:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2328:	f105 0620 	add.w	r6, r5, #32
c0de232c:	4632      	mov	r2, r6
c0de232e:	f007 ffc9 	bl	c0dea2c4 <cx_mont_invert_nprime>
c0de2332:	b9d0      	cbnz	r0, c0de236a <tEdwards_normalize+0x4c>
c0de2334:	6822      	ldr	r2, [r4, #0]
c0de2336:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de233a:	f000 f8d5 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de233e:	b9a0      	cbnz	r0, c0de236a <tEdwards_normalize+0x4c>
c0de2340:	6862      	ldr	r2, [r4, #4]
c0de2342:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2344:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2346:	f000 f8cf 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de234a:	b970      	cbnz	r0, c0de236a <tEdwards_normalize+0x4c>
c0de234c:	68a2      	ldr	r2, [r4, #8]
c0de234e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2350:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2352:	f000 f8c9 	bl	c0de24e8 <OUTLINED_FUNCTION_0>
c0de2356:	b940      	cbnz	r0, c0de236a <tEdwards_normalize+0x4c>
c0de2358:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de235a:	6820      	ldr	r0, [r4, #0]
c0de235c:	f007 fee0 	bl	c0dea120 <cx_bn_copy>
c0de2360:	b918      	cbnz	r0, c0de236a <tEdwards_normalize+0x4c>
c0de2362:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2364:	f000 f8ce 	bl	c0de2504 <OUTLINED_FUNCTION_4>
c0de2368:	b100      	cbz	r0, c0de236c <tEdwards_normalize+0x4e>
c0de236a:	bd70      	pop	{r4, r5, r6, pc}
c0de236c:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de236e:	68a0      	ldr	r0, [r4, #8]
c0de2370:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2374:	f007 bed4 	b.w	c0dea120 <cx_bn_copy>

c0de2378 <tEdwards_copy>:
c0de2378:	b5b0      	push	{r4, r5, r7, lr}
c0de237a:	460c      	mov	r4, r1
c0de237c:	4605      	mov	r5, r0
c0de237e:	6801      	ldr	r1, [r0, #0]
c0de2380:	6820      	ldr	r0, [r4, #0]
c0de2382:	f007 fecd 	bl	c0dea120 <cx_bn_copy>
c0de2386:	b918      	cbnz	r0, c0de2390 <tEdwards_copy+0x18>
c0de2388:	6869      	ldr	r1, [r5, #4]
c0de238a:	f000 f8bb 	bl	c0de2504 <OUTLINED_FUNCTION_4>
c0de238e:	b100      	cbz	r0, c0de2392 <tEdwards_copy+0x1a>
c0de2390:	bdb0      	pop	{r4, r5, r7, pc}
c0de2392:	68a9      	ldr	r1, [r5, #8]
c0de2394:	68a0      	ldr	r0, [r4, #8]
c0de2396:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de239a:	f007 bec1 	b.w	c0dea120 <cx_bn_copy>

c0de239e <tEdwards_alloc_init>:
c0de239e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de23a0:	460e      	mov	r6, r1
c0de23a2:	6801      	ldr	r1, [r0, #0]
c0de23a4:	4607      	mov	r7, r0
c0de23a6:	4618      	mov	r0, r3
c0de23a8:	461c      	mov	r4, r3
c0de23aa:	4615      	mov	r5, r2
c0de23ac:	f007 fe82 	bl	c0dea0b4 <cx_bn_alloc>
c0de23b0:	b950      	cbnz	r0, c0de23c8 <tEdwards_alloc_init+0x2a>
c0de23b2:	6839      	ldr	r1, [r7, #0]
c0de23b4:	1d20      	adds	r0, r4, #4
c0de23b6:	f007 fe7d 	bl	c0dea0b4 <cx_bn_alloc>
c0de23ba:	b928      	cbnz	r0, c0de23c8 <tEdwards_alloc_init+0x2a>
c0de23bc:	6839      	ldr	r1, [r7, #0]
c0de23be:	f104 0008 	add.w	r0, r4, #8
c0de23c2:	f007 fe77 	bl	c0dea0b4 <cx_bn_alloc>
c0de23c6:	b100      	cbz	r0, c0de23ca <tEdwards_alloc_init+0x2c>
c0de23c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de23ca:	4638      	mov	r0, r7
c0de23cc:	4631      	mov	r1, r6
c0de23ce:	462a      	mov	r2, r5
c0de23d0:	4623      	mov	r3, r4
c0de23d2:	b001      	add	sp, #4
c0de23d4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de23d8:	f7ff bee0 	b.w	c0de219c <tEdwards_init>

c0de23dc <tEdwards_scalarMul_bn>:
c0de23dc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de23e0:	4607      	mov	r7, r0
c0de23e2:	2000      	movs	r0, #0
c0de23e4:	4688      	mov	r8, r1
c0de23e6:	4615      	mov	r5, r2
c0de23e8:	2100      	movs	r1, #0
c0de23ea:	469b      	mov	fp, r3
c0de23ec:	9003      	str	r0, [sp, #12]
c0de23ee:	f88d 000b 	strb.w	r0, [sp, #11]
c0de23f2:	6810      	ldr	r0, [r2, #0]
c0de23f4:	aa03      	add	r2, sp, #12
c0de23f6:	f007 febf 	bl	c0dea178 <cx_bn_cmp_u32>
c0de23fa:	bb38      	cbnz	r0, c0de244c <tEdwards_scalarMul_bn+0x70>
c0de23fc:	9803      	ldr	r0, [sp, #12]
c0de23fe:	b1d0      	cbz	r0, c0de2436 <tEdwards_scalarMul_bn+0x5a>
c0de2400:	6828      	ldr	r0, [r5, #0]
c0de2402:	a901      	add	r1, sp, #4
c0de2404:	f007 fe76 	bl	c0dea0f4 <cx_bn_nbytes>
c0de2408:	bb00      	cbnz	r0, c0de244c <tEdwards_scalarMul_bn+0x70>
c0de240a:	2002      	movs	r0, #2
c0de240c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2410:	f10d 040b 	add.w	r4, sp, #11
c0de2414:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2416:	9801      	ldr	r0, [sp, #4]
c0de2418:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de241c:	2000      	movs	r0, #0
c0de241e:	2801      	cmp	r0, #1
c0de2420:	d00f      	beq.n	c0de2442 <tEdwards_scalarMul_bn+0x66>
c0de2422:	6828      	ldr	r0, [r5, #0]
c0de2424:	4631      	mov	r1, r6
c0de2426:	4622      	mov	r2, r4
c0de2428:	f007 feb2 	bl	c0dea190 <cx_bn_tst_bit>
c0de242c:	b970      	cbnz	r0, c0de244c <tEdwards_scalarMul_bn+0x70>
c0de242e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2432:	3e01      	subs	r6, #1
c0de2434:	e7f3      	b.n	c0de241e <tEdwards_scalarMul_bn+0x42>
c0de2436:	4638      	mov	r0, r7
c0de2438:	4659      	mov	r1, fp
c0de243a:	f7ff ff37 	bl	c0de22ac <tEdwards_SetNeutral>
c0de243e:	b928      	cbnz	r0, c0de244c <tEdwards_scalarMul_bn+0x70>
c0de2440:	e7de      	b.n	c0de2400 <tEdwards_scalarMul_bn+0x24>
c0de2442:	4640      	mov	r0, r8
c0de2444:	4659      	mov	r1, fp
c0de2446:	f7ff ff97 	bl	c0de2378 <tEdwards_copy>
c0de244a:	b110      	cbz	r0, c0de2452 <tEdwards_scalarMul_bn+0x76>
c0de244c:	b004      	add	sp, #16
c0de244e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2452:	2001      	movs	r0, #1
c0de2454:	f10d 0a0b 	add.w	sl, sp, #11
c0de2458:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de245c:	2e00      	cmp	r6, #0
c0de245e:	d420      	bmi.n	c0de24a2 <tEdwards_scalarMul_bn+0xc6>
c0de2460:	4638      	mov	r0, r7
c0de2462:	4659      	mov	r1, fp
c0de2464:	465a      	mov	r2, fp
c0de2466:	f7ff fc36 	bl	c0de1cd6 <tEdwards_double>
c0de246a:	2800      	cmp	r0, #0
c0de246c:	d1ee      	bne.n	c0de244c <tEdwards_scalarMul_bn+0x70>
c0de246e:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2470:	4631      	mov	r1, r6
c0de2472:	4652      	mov	r2, sl
c0de2474:	0040      	lsls	r0, r0, #1
c0de2476:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2478:	6828      	ldr	r0, [r5, #0]
c0de247a:	f007 fe89 	bl	c0dea190 <cx_bn_tst_bit>
c0de247e:	2800      	cmp	r0, #0
c0de2480:	d1e4      	bne.n	c0de244c <tEdwards_scalarMul_bn+0x70>
c0de2482:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2486:	b150      	cbz	r0, c0de249e <tEdwards_scalarMul_bn+0xc2>
c0de2488:	4638      	mov	r0, r7
c0de248a:	4659      	mov	r1, fp
c0de248c:	4642      	mov	r2, r8
c0de248e:	465b      	mov	r3, fp
c0de2490:	f7ff fc8c 	bl	c0de1dac <tEdwards_add>
c0de2494:	2800      	cmp	r0, #0
c0de2496:	d1d9      	bne.n	c0de244c <tEdwards_scalarMul_bn+0x70>
c0de2498:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de249a:	3001      	adds	r0, #1
c0de249c:	6538      	str	r0, [r7, #80]	@ 0x50
c0de249e:	3e01      	subs	r6, #1
c0de24a0:	e7dc      	b.n	c0de245c <tEdwards_scalarMul_bn+0x80>
c0de24a2:	2000      	movs	r0, #0
c0de24a4:	e7d2      	b.n	c0de244c <tEdwards_scalarMul_bn+0x70>
	...

c0de24a8 <tEdwards_scalarMul>:
c0de24a8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de24aa:	460c      	mov	r4, r1
c0de24ac:	6801      	ldr	r1, [r0, #0]
c0de24ae:	4299      	cmp	r1, r3
c0de24b0:	bf3c      	itt	cc
c0de24b2:	480c      	ldrcc	r0, [pc, #48]	@ (c0de24e4 <tEdwards_scalarMul+0x3c>)
c0de24b4:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de24b6:	4605      	mov	r5, r0
c0de24b8:	20ca      	movs	r0, #202	@ 0xca
c0de24ba:	6528      	str	r0, [r5, #80]	@ 0x50
c0de24bc:	a801      	add	r0, sp, #4
c0de24be:	f007 fe03 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de24c2:	b100      	cbz	r0, c0de24c6 <tEdwards_scalarMul+0x1e>
c0de24c4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de24c6:	20b3      	movs	r0, #179	@ 0xb3
c0de24c8:	9b06      	ldr	r3, [sp, #24]
c0de24ca:	4621      	mov	r1, r4
c0de24cc:	6528      	str	r0, [r5, #80]	@ 0x50
c0de24ce:	aa01      	add	r2, sp, #4
c0de24d0:	4628      	mov	r0, r5
c0de24d2:	f7ff ff83 	bl	c0de23dc <tEdwards_scalarMul_bn>
c0de24d6:	2800      	cmp	r0, #0
c0de24d8:	d1f4      	bne.n	c0de24c4 <tEdwards_scalarMul+0x1c>
c0de24da:	a801      	add	r0, sp, #4
c0de24dc:	f007 fe00 	bl	c0dea0e0 <cx_bn_destroy>
c0de24e0:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de24e2:	bf00      	nop
c0de24e4:	5a4b4e01 	.word	0x5a4b4e01

c0de24e8 <OUTLINED_FUNCTION_0>:
c0de24e8:	4633      	mov	r3, r6
c0de24ea:	f007 becf 	b.w	c0dea28c <cx_mont_mul>

c0de24ee <OUTLINED_FUNCTION_1>:
c0de24ee:	462b      	mov	r3, r5
c0de24f0:	f007 becc 	b.w	c0dea28c <cx_mont_mul>

c0de24f4 <OUTLINED_FUNCTION_2>:
c0de24f4:	4633      	mov	r3, r6
c0de24f6:	460a      	mov	r2, r1
c0de24f8:	f007 bec8 	b.w	c0dea28c <cx_mont_mul>

c0de24fc <OUTLINED_FUNCTION_3>:
c0de24fc:	462a      	mov	r2, r5
c0de24fe:	4601      	mov	r1, r0
c0de2500:	f007 beac 	b.w	c0dea25c <cx_mont_to_montgomery>

c0de2504 <OUTLINED_FUNCTION_4>:
c0de2504:	6860      	ldr	r0, [r4, #4]
c0de2506:	f007 be0b 	b.w	c0dea120 <cx_bn_copy>
	...

c0de250c <grain_lfsr_advance>:
c0de250c:	b5b0      	push	{r4, r5, r7, lr}
c0de250e:	68c2      	ldr	r2, [r0, #12]
c0de2510:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2514:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2518:	ea4f 0234 	mov.w	r2, r4, rrx
c0de251c:	07e4      	lsls	r4, r4, #31
c0de251e:	60c5      	str	r5, [r0, #12]
c0de2520:	07dd      	lsls	r5, r3, #31
c0de2522:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2526:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de252a:	6044      	str	r4, [r0, #4]
c0de252c:	4c15      	ldr	r4, [pc, #84]	@ (c0de2584 <grain_lfsr_advance+0x78>)
c0de252e:	6005      	str	r5, [r0, #0]
c0de2530:	4021      	ands	r1, r4
c0de2532:	4c15      	ldr	r4, [pc, #84]	@ (c0de2588 <grain_lfsr_advance+0x7c>)
c0de2534:	4023      	ands	r3, r4
c0de2536:	4419      	add	r1, r3
c0de2538:	0c0c      	lsrs	r4, r1, #16
c0de253a:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de253e:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2542:	4421      	add	r1, r4
c0de2544:	0a0c      	lsrs	r4, r1, #8
c0de2546:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de254a:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de254e:	4061      	eors	r1, r4
c0de2550:	090c      	lsrs	r4, r1, #4
c0de2552:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2556:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de255a:	4061      	eors	r1, r4
c0de255c:	088c      	lsrs	r4, r1, #2
c0de255e:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2562:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2566:	4061      	eors	r1, r4
c0de2568:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de256c:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2570:	4059      	eors	r1, r3
c0de2572:	f001 0101 	and.w	r1, r1, #1
c0de2576:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de257a:	6082      	str	r2, [r0, #8]
c0de257c:	4608      	mov	r0, r1
c0de257e:	2100      	movs	r1, #0
c0de2580:	bdb0      	pop	{r4, r5, r7, pc}
c0de2582:	bf00      	nop
c0de2584:	00802001 	.word	0x00802001
c0de2588:	40080040 	.word	0x40080040

c0de258c <next64_graingen>:
c0de258c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2590:	460c      	mov	r4, r1
c0de2592:	4605      	mov	r5, r0
c0de2594:	f04f 0a00 	mov.w	sl, #0
c0de2598:	f04f 0800 	mov.w	r8, #0
c0de259c:	2700      	movs	r7, #0
c0de259e:	42a7      	cmp	r7, r4
c0de25a0:	d215      	bcs.n	c0de25ce <next64_graingen+0x42>
c0de25a2:	4628      	mov	r0, r5
c0de25a4:	f7ff ffb2 	bl	c0de250c <grain_lfsr_advance>
c0de25a8:	4606      	mov	r6, r0
c0de25aa:	4628      	mov	r0, r5
c0de25ac:	f7ff ffae 	bl	c0de250c <grain_lfsr_advance>
c0de25b0:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de25b4:	0781      	lsls	r1, r0, #30
c0de25b6:	d5f2      	bpl.n	c0de259e <next64_graingen+0x12>
c0de25b8:	f000 0001 	and.w	r0, r0, #1
c0de25bc:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de25c0:	3701      	adds	r7, #1
c0de25c2:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de25c6:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de25ca:	4682      	mov	sl, r0
c0de25cc:	e7e7      	b.n	c0de259e <next64_graingen+0x12>
c0de25ce:	4650      	mov	r0, sl
c0de25d0:	4641      	mov	r1, r8
c0de25d2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de25d8 <init_generator>:
c0de25d8:	b5b0      	push	{r4, r5, r7, lr}
c0de25da:	4a09      	ldr	r2, [pc, #36]	@ (c0de2600 <init_generator+0x28>)
c0de25dc:	4b09      	ldr	r3, [pc, #36]	@ (c0de2604 <init_generator+0x2c>)
c0de25de:	4604      	mov	r4, r0
c0de25e0:	25a0      	movs	r5, #160	@ 0xa0
c0de25e2:	2000      	movs	r0, #0
c0de25e4:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de25e8:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de25ec:	e9c4 3200 	strd	r3, r2, [r4]
c0de25f0:	b125      	cbz	r5, c0de25fc <init_generator+0x24>
c0de25f2:	4620      	mov	r0, r4
c0de25f4:	f7ff ff8a 	bl	c0de250c <grain_lfsr_advance>
c0de25f8:	3d01      	subs	r5, #1
c0de25fa:	e7f9      	b.n	c0de25f0 <init_generator+0x18>
c0de25fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de25fe:	bf00      	nop
c0de2600:	fffcf010 	.word	0xfffcf010
c0de2604:	1801fc02 	.word	0x1801fc02

c0de2608 <gen_integer>:
c0de2608:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de260c:	4f20      	ldr	r7, [pc, #128]	@ (c0de2690 <gen_integer+0x88>)
c0de260e:	4e22      	ldr	r6, [pc, #136]	@ (c0de2698 <gen_integer+0x90>)
c0de2610:	4605      	mov	r5, r0
c0de2612:	460c      	mov	r4, r1
c0de2614:	2000      	movs	r0, #0
c0de2616:	46b8      	mov	r8, r7
c0de2618:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2694 <gen_integer+0x8c>)
c0de261a:	447e      	add	r6, pc
c0de261c:	b9f8      	cbnz	r0, c0de265e <gen_integer+0x56>
c0de261e:	4628      	mov	r0, r5
c0de2620:	213e      	movs	r1, #62	@ 0x3e
c0de2622:	47b0      	blx	r6
c0de2624:	e9c4 0100 	strd	r0, r1, [r4]
c0de2628:	4628      	mov	r0, r5
c0de262a:	2140      	movs	r1, #64	@ 0x40
c0de262c:	47b0      	blx	r6
c0de262e:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2632:	4628      	mov	r0, r5
c0de2634:	2140      	movs	r1, #64	@ 0x40
c0de2636:	47b0      	blx	r6
c0de2638:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de263c:	4628      	mov	r0, r5
c0de263e:	2140      	movs	r1, #64	@ 0x40
c0de2640:	47b0      	blx	r6
c0de2642:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2646:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de264a:	463a      	mov	r2, r7
c0de264c:	1bc0      	subs	r0, r0, r7
c0de264e:	4640      	mov	r0, r8
c0de2650:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2654:	f04f 0000 	mov.w	r0, #0
c0de2658:	bf38      	it	cc
c0de265a:	2001      	movcc	r0, #1
c0de265c:	e7de      	b.n	c0de261c <gen_integer+0x14>
c0de265e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2662:	4d0e      	ldr	r5, [pc, #56]	@ (c0de269c <gen_integer+0x94>)
c0de2664:	447d      	add	r5, pc
c0de2666:	47a8      	blx	r5
c0de2668:	e9c4 0100 	strd	r0, r1, [r4]
c0de266c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2670:	47a8      	blx	r5
c0de2672:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2676:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de267a:	47a8      	blx	r5
c0de267c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2680:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2684:	47a8      	blx	r5
c0de2686:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de268a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de268e:	bf00      	nop
c0de2690:	305a4b4e 	.word	0x305a4b4e
c0de2694:	4f582122 	.word	0x4f582122
c0de2698:	ffffff6f 	.word	0xffffff6f
c0de269c:	00000039 	.word	0x00000039

c0de26a0 <rev64>:
c0de26a0:	ba0a      	rev	r2, r1
c0de26a2:	ba01      	rev	r1, r0
c0de26a4:	4610      	mov	r0, r2
c0de26a6:	4770      	bx	lr

c0de26a8 <Poseidon_getNext_RC>:
c0de26a8:	30c0      	adds	r0, #192	@ 0xc0
c0de26aa:	f7ff bfad 	b.w	c0de2608 <gen_integer>
	...

c0de26b0 <Poseidon_alloc_init>:
c0de26b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de26b4:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de26b8:	4604      	mov	r4, r0
c0de26ba:	30c0      	adds	r0, #192	@ 0xc0
c0de26bc:	461e      	mov	r6, r3
c0de26be:	4617      	mov	r7, r2
c0de26c0:	460d      	mov	r5, r1
c0de26c2:	f7ff ff89 	bl	c0de25d8 <init_generator>
c0de26c6:	492c      	ldr	r1, [pc, #176]	@ (c0de2778 <Poseidon_alloc_init+0xc8>)
c0de26c8:	46e8      	mov	r8, sp
c0de26ca:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de26ce:	4640      	mov	r0, r8
c0de26d0:	4479      	add	r1, pc
c0de26d2:	f008 f852 	bl	c0dea77a <__aeabi_memcpy>
c0de26d6:	2000      	movs	r0, #0
c0de26d8:	7325      	strb	r5, [r4, #12]
c0de26da:	6166      	str	r6, [r4, #20]
c0de26dc:	4621      	mov	r1, r4
c0de26de:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de26e2:	1c78      	adds	r0, r7, #1
c0de26e4:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de26e8:	6830      	ldr	r0, [r6, #0]
c0de26ea:	f007 fd03 	bl	c0dea0f4 <cx_bn_nbytes>
c0de26ee:	b930      	cbnz	r0, c0de26fe <Poseidon_alloc_init+0x4e>
c0de26f0:	4620      	mov	r0, r4
c0de26f2:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de26f6:	4631      	mov	r1, r6
c0de26f8:	f007 fcdc 	bl	c0dea0b4 <cx_bn_alloc>
c0de26fc:	b118      	cbz	r0, c0de2706 <Poseidon_alloc_init+0x56>
c0de26fe:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2702:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2706:	68a0      	ldr	r0, [r4, #8]
c0de2708:	2500      	movs	r5, #0
c0de270a:	4285      	cmp	r5, r0
c0de270c:	d230      	bcs.n	c0de2770 <Poseidon_alloc_init+0xc0>
c0de270e:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2712:	4631      	mov	r1, r6
c0de2714:	f107 0018 	add.w	r0, r7, #24
c0de2718:	f007 fccc 	bl	c0dea0b4 <cx_bn_alloc>
c0de271c:	2800      	cmp	r0, #0
c0de271e:	d1ee      	bne.n	c0de26fe <Poseidon_alloc_init+0x4e>
c0de2720:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2724:	4631      	mov	r1, r6
c0de2726:	f007 fcc5 	bl	c0dea0b4 <cx_bn_alloc>
c0de272a:	2800      	cmp	r0, #0
c0de272c:	d1e7      	bne.n	c0de26fe <Poseidon_alloc_init+0x4e>
c0de272e:	2700      	movs	r7, #0
c0de2730:	68a0      	ldr	r0, [r4, #8]
c0de2732:	4287      	cmp	r7, r0
c0de2734:	d21a      	bcs.n	c0de276c <Poseidon_alloc_init+0xbc>
c0de2736:	fb05 7000 	mla	r0, r5, r0, r7
c0de273a:	4631      	mov	r1, r6
c0de273c:	4633      	mov	r3, r6
c0de273e:	fb00 8206 	mla	r2, r0, r6, r8
c0de2742:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2746:	3030      	adds	r0, #48	@ 0x30
c0de2748:	f007 fcbe 	bl	c0dea0c8 <cx_bn_alloc_init>
c0de274c:	2800      	cmp	r0, #0
c0de274e:	d1d6      	bne.n	c0de26fe <Poseidon_alloc_init+0x4e>
c0de2750:	68a0      	ldr	r0, [r4, #8]
c0de2752:	6962      	ldr	r2, [r4, #20]
c0de2754:	fb05 7000 	mla	r0, r5, r0, r7
c0de2758:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de275c:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de275e:	4601      	mov	r1, r0
c0de2760:	f007 fd7c 	bl	c0dea25c <cx_mont_to_montgomery>
c0de2764:	3701      	adds	r7, #1
c0de2766:	2800      	cmp	r0, #0
c0de2768:	d0e2      	beq.n	c0de2730 <Poseidon_alloc_init+0x80>
c0de276a:	e7c8      	b.n	c0de26fe <Poseidon_alloc_init+0x4e>
c0de276c:	3501      	adds	r5, #1
c0de276e:	e7cc      	b.n	c0de270a <Poseidon_alloc_init+0x5a>
c0de2770:	2001      	movs	r0, #1
c0de2772:	6120      	str	r0, [r4, #16]
c0de2774:	2000      	movs	r0, #0
c0de2776:	e7c2      	b.n	c0de26fe <Poseidon_alloc_init+0x4e>
c0de2778:	00008a34 	.word	0x00008a34

c0de277c <Poseidon>:
c0de277c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2780:	b08c      	sub	sp, #48	@ 0x30
c0de2782:	4606      	mov	r6, r0
c0de2784:	6900      	ldr	r0, [r0, #16]
c0de2786:	2801      	cmp	r0, #1
c0de2788:	f040 80b4 	bne.w	c0de28f4 <Poseidon+0x178>
c0de278c:	69b0      	ldr	r0, [r6, #24]
c0de278e:	461f      	mov	r7, r3
c0de2790:	4692      	mov	sl, r2
c0de2792:	f007 fccf 	bl	c0dea134 <cx_bn_set_u32>
c0de2796:	2800      	cmp	r0, #0
c0de2798:	f040 80ad 	bne.w	c0de28f6 <Poseidon+0x17a>
c0de279c:	f106 000c 	add.w	r0, r6, #12
c0de27a0:	f106 0818 	add.w	r8, r6, #24
c0de27a4:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de27a8:	9001      	str	r0, [sp, #4]
c0de27aa:	2000      	movs	r0, #0
c0de27ac:	2844      	cmp	r0, #68	@ 0x44
c0de27ae:	f000 80ae 	beq.w	c0de290e <Poseidon+0x192>
c0de27b2:	6834      	ldr	r4, [r6, #0]
c0de27b4:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de27b8:	f04f 0a00 	mov.w	sl, #0
c0de27bc:	68b0      	ldr	r0, [r6, #8]
c0de27be:	4582      	cmp	sl, r0
c0de27c0:	d224      	bcs.n	c0de280c <Poseidon+0x90>
c0de27c2:	ad04      	add	r5, sp, #16
c0de27c4:	4658      	mov	r0, fp
c0de27c6:	4629      	mov	r1, r5
c0de27c8:	f7ff ff1e 	bl	c0de2608 <gen_integer>
c0de27cc:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de27d0:	4629      	mov	r1, r5
c0de27d2:	4622      	mov	r2, r4
c0de27d4:	f007 fc98 	bl	c0dea108 <cx_bn_init>
c0de27d8:	2800      	cmp	r0, #0
c0de27da:	f040 808c 	bne.w	c0de28f6 <Poseidon+0x17a>
c0de27de:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de27e2:	6972      	ldr	r2, [r6, #20]
c0de27e4:	4601      	mov	r1, r0
c0de27e6:	f007 fd39 	bl	c0dea25c <cx_mont_to_montgomery>
c0de27ea:	2800      	cmp	r0, #0
c0de27ec:	f040 8083 	bne.w	c0de28f6 <Poseidon+0x17a>
c0de27f0:	6972      	ldr	r2, [r6, #20]
c0de27f2:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de27f6:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de27fa:	6813      	ldr	r3, [r2, #0]
c0de27fc:	4602      	mov	r2, r0
c0de27fe:	f007 fcd3 	bl	c0dea1a8 <cx_bn_mod_add>
c0de2802:	f10a 0a01 	add.w	sl, sl, #1
c0de2806:	2800      	cmp	r0, #0
c0de2808:	d0d8      	beq.n	c0de27bc <Poseidon+0x40>
c0de280a:	e074      	b.n	c0de28f6 <Poseidon+0x17a>
c0de280c:	9902      	ldr	r1, [sp, #8]
c0de280e:	2904      	cmp	r1, #4
c0de2810:	d301      	bcc.n	c0de2816 <Poseidon+0x9a>
c0de2812:	2940      	cmp	r1, #64	@ 0x40
c0de2814:	d323      	bcc.n	c0de285e <Poseidon+0xe2>
c0de2816:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de281a:	2400      	movs	r4, #0
c0de281c:	4284      	cmp	r4, r0
c0de281e:	d22b      	bcs.n	c0de2878 <Poseidon+0xfc>
c0de2820:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de2824:	6973      	ldr	r3, [r6, #20]
c0de2826:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de282a:	460a      	mov	r2, r1
c0de282c:	f007 fd2e 	bl	c0dea28c <cx_mont_mul>
c0de2830:	2800      	cmp	r0, #0
c0de2832:	d160      	bne.n	c0de28f6 <Poseidon+0x17a>
c0de2834:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de2838:	6973      	ldr	r3, [r6, #20]
c0de283a:	460a      	mov	r2, r1
c0de283c:	f007 fd26 	bl	c0dea28c <cx_mont_mul>
c0de2840:	2800      	cmp	r0, #0
c0de2842:	d158      	bne.n	c0de28f6 <Poseidon+0x17a>
c0de2844:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de2848:	6973      	ldr	r3, [r6, #20]
c0de284a:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de284e:	4601      	mov	r1, r0
c0de2850:	f007 fd1c 	bl	c0dea28c <cx_mont_mul>
c0de2854:	2800      	cmp	r0, #0
c0de2856:	d14e      	bne.n	c0de28f6 <Poseidon+0x17a>
c0de2858:	68b0      	ldr	r0, [r6, #8]
c0de285a:	3401      	adds	r4, #1
c0de285c:	e7de      	b.n	c0de281c <Poseidon+0xa0>
c0de285e:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de2862:	9a01      	ldr	r2, [sp, #4]
c0de2864:	2301      	movs	r3, #1
c0de2866:	9100      	str	r1, [sp, #0]
c0de2868:	4601      	mov	r1, r0
c0de286a:	f007 fd1b 	bl	c0dea2a4 <cx_mont_pow>
c0de286e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de2872:	2800      	cmp	r0, #0
c0de2874:	d13f      	bne.n	c0de28f6 <Poseidon+0x17a>
c0de2876:	68b0      	ldr	r0, [r6, #8]
c0de2878:	2500      	movs	r5, #0
c0de287a:	4285      	cmp	r5, r0
c0de287c:	d229      	bcs.n	c0de28d2 <Poseidon+0x156>
c0de287e:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de2882:	2100      	movs	r1, #0
c0de2884:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de2888:	f007 fc54 	bl	c0dea134 <cx_bn_set_u32>
c0de288c:	bb98      	cbnz	r0, c0de28f6 <Poseidon+0x17a>
c0de288e:	9503      	str	r5, [sp, #12]
c0de2890:	2500      	movs	r5, #0
c0de2892:	68b0      	ldr	r0, [r6, #8]
c0de2894:	4285      	cmp	r5, r0
c0de2896:	d219      	bcs.n	c0de28cc <Poseidon+0x150>
c0de2898:	9903      	ldr	r1, [sp, #12]
c0de289a:	6973      	ldr	r3, [r6, #20]
c0de289c:	fb01 5000 	mla	r0, r1, r0, r5
c0de28a0:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de28a4:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de28a8:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de28aa:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de28ae:	f007 fced 	bl	c0dea28c <cx_mont_mul>
c0de28b2:	bb00      	cbnz	r0, c0de28f6 <Poseidon+0x17a>
c0de28b4:	6971      	ldr	r1, [r6, #20]
c0de28b6:	6820      	ldr	r0, [r4, #0]
c0de28b8:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de28bc:	680b      	ldr	r3, [r1, #0]
c0de28be:	4601      	mov	r1, r0
c0de28c0:	f007 fc72 	bl	c0dea1a8 <cx_bn_mod_add>
c0de28c4:	3501      	adds	r5, #1
c0de28c6:	2800      	cmp	r0, #0
c0de28c8:	d0e3      	beq.n	c0de2892 <Poseidon+0x116>
c0de28ca:	e014      	b.n	c0de28f6 <Poseidon+0x17a>
c0de28cc:	9d03      	ldr	r5, [sp, #12]
c0de28ce:	3501      	adds	r5, #1
c0de28d0:	e7d3      	b.n	c0de287a <Poseidon+0xfe>
c0de28d2:	2400      	movs	r4, #0
c0de28d4:	4284      	cmp	r4, r0
c0de28d6:	d20a      	bcs.n	c0de28ee <Poseidon+0x172>
c0de28d8:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de28dc:	6988      	ldr	r0, [r1, #24]
c0de28de:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de28e2:	f007 fc1d 	bl	c0dea120 <cx_bn_copy>
c0de28e6:	b930      	cbnz	r0, c0de28f6 <Poseidon+0x17a>
c0de28e8:	68b0      	ldr	r0, [r6, #8]
c0de28ea:	3401      	adds	r4, #1
c0de28ec:	e7f2      	b.n	c0de28d4 <Poseidon+0x158>
c0de28ee:	9802      	ldr	r0, [sp, #8]
c0de28f0:	3001      	adds	r0, #1
c0de28f2:	e75b      	b.n	c0de27ac <Poseidon+0x30>
c0de28f4:	4808      	ldr	r0, [pc, #32]	@ (c0de2918 <Poseidon+0x19c>)
c0de28f6:	b00c      	add	sp, #48	@ 0x30
c0de28f8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de28fc:	f858 1b04 	ldr.w	r1, [r8], #4
c0de2900:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de2904:	f007 fc0c 	bl	c0dea120 <cx_bn_copy>
c0de2908:	3f01      	subs	r7, #1
c0de290a:	2800      	cmp	r0, #0
c0de290c:	d1f3      	bne.n	c0de28f6 <Poseidon+0x17a>
c0de290e:	2f00      	cmp	r7, #0
c0de2910:	d1f4      	bne.n	c0de28fc <Poseidon+0x180>
c0de2912:	2000      	movs	r0, #0
c0de2914:	e7ef      	b.n	c0de28f6 <Poseidon+0x17a>
c0de2916:	bf00      	nop
c0de2918:	5a4b4e02 	.word	0x5a4b4e02

c0de291c <nbgl_buttonsHandler>:
c0de291c:	b5b0      	push	{r4, r5, r7, lr}
c0de291e:	4930      	ldr	r1, [pc, #192]	@ (c0de29e0 <nbgl_buttonsHandler+0xc4>)
c0de2920:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de2924:	4282      	cmp	r2, r0
c0de2926:	d108      	bne.n	c0de293a <nbgl_buttonsHandler+0x1e>
c0de2928:	2800      	cmp	r0, #0
c0de292a:	d04b      	beq.n	c0de29c4 <nbgl_buttonsHandler+0xa8>
c0de292c:	eb09 0301 	add.w	r3, r9, r1
c0de2930:	685a      	ldr	r2, [r3, #4]
c0de2932:	3201      	adds	r2, #1
c0de2934:	605a      	str	r2, [r3, #4]
c0de2936:	4603      	mov	r3, r0
c0de2938:	e006      	b.n	c0de2948 <nbgl_buttonsHandler+0x2c>
c0de293a:	ea42 0400 	orr.w	r4, r2, r0
c0de293e:	eb09 0201 	add.w	r2, r9, r1
c0de2942:	6852      	ldr	r2, [r2, #4]
c0de2944:	b120      	cbz	r0, c0de2950 <nbgl_buttonsHandler+0x34>
c0de2946:	4623      	mov	r3, r4
c0de2948:	461c      	mov	r4, r3
c0de294a:	f809 3001 	strb.w	r3, [r9, r1]
c0de294e:	e007      	b.n	c0de2960 <nbgl_buttonsHandler+0x44>
c0de2950:	2300      	movs	r3, #0
c0de2952:	eb09 0501 	add.w	r5, r9, r1
c0de2956:	f064 047f 	orn	r4, r4, #127	@ 0x7f
c0de295a:	f809 3001 	strb.w	r3, [r9, r1]
c0de295e:	606b      	str	r3, [r5, #4]
c0de2960:	4283      	cmp	r3, r0
c0de2962:	bf1e      	ittt	ne
c0de2964:	eb09 0001 	addne.w	r0, r9, r1
c0de2968:	2100      	movne	r1, #0
c0de296a:	6041      	strne	r1, [r0, #4]
c0de296c:	2a08      	cmp	r2, #8
c0de296e:	d30a      	bcc.n	c0de2986 <nbgl_buttonsHandler+0x6a>
c0de2970:	2003      	movs	r0, #3
c0de2972:	fbb2 f0f0 	udiv	r0, r2, r0
c0de2976:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de297a:	1a10      	subs	r0, r2, r0
c0de297c:	bf08      	it	eq
c0de297e:	f044 0440 	orreq.w	r4, r4, #64	@ 0x40
c0de2982:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
c0de2986:	f002 fe9f 	bl	c0de56c8 <nbgl_screenGetTop>
c0de298a:	b1d8      	cbz	r0, c0de29c4 <nbgl_buttonsHandler+0xa8>
c0de298c:	4601      	mov	r1, r0
c0de298e:	f811 2f32 	ldrb.w	r2, [r1, #50]!
c0de2992:	784b      	ldrb	r3, [r1, #1]
c0de2994:	788d      	ldrb	r5, [r1, #2]
c0de2996:	78c9      	ldrb	r1, [r1, #3]
c0de2998:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de299c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de29a0:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de29a4:	b172      	cbz	r2, c0de29c4 <nbgl_buttonsHandler+0xa8>
c0de29a6:	b2e1      	uxtb	r1, r4
c0de29a8:	2983      	cmp	r1, #131	@ 0x83
c0de29aa:	d00c      	beq.n	c0de29c6 <nbgl_buttonsHandler+0xaa>
c0de29ac:	2941      	cmp	r1, #65	@ 0x41
c0de29ae:	d00c      	beq.n	c0de29ca <nbgl_buttonsHandler+0xae>
c0de29b0:	2942      	cmp	r1, #66	@ 0x42
c0de29b2:	d00c      	beq.n	c0de29ce <nbgl_buttonsHandler+0xb2>
c0de29b4:	2981      	cmp	r1, #129	@ 0x81
c0de29b6:	d00c      	beq.n	c0de29d2 <nbgl_buttonsHandler+0xb6>
c0de29b8:	2982      	cmp	r1, #130	@ 0x82
c0de29ba:	d00c      	beq.n	c0de29d6 <nbgl_buttonsHandler+0xba>
c0de29bc:	2903      	cmp	r1, #3
c0de29be:	d101      	bne.n	c0de29c4 <nbgl_buttonsHandler+0xa8>
c0de29c0:	2105      	movs	r1, #5
c0de29c2:	e009      	b.n	c0de29d8 <nbgl_buttonsHandler+0xbc>
c0de29c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de29c6:	2104      	movs	r1, #4
c0de29c8:	e006      	b.n	c0de29d8 <nbgl_buttonsHandler+0xbc>
c0de29ca:	2102      	movs	r1, #2
c0de29cc:	e004      	b.n	c0de29d8 <nbgl_buttonsHandler+0xbc>
c0de29ce:	2103      	movs	r1, #3
c0de29d0:	e002      	b.n	c0de29d8 <nbgl_buttonsHandler+0xbc>
c0de29d2:	2100      	movs	r1, #0
c0de29d4:	e000      	b.n	c0de29d8 <nbgl_buttonsHandler+0xbc>
c0de29d6:	2101      	movs	r1, #1
c0de29d8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de29dc:	4710      	bx	r2
c0de29de:	bf00      	nop
c0de29e0:	000003e8 	.word	0x000003e8

c0de29e4 <nbgl_drawRoundedRect>:
c0de29e4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de29e8:	b08a      	sub	sp, #40	@ 0x28
c0de29ea:	468b      	mov	fp, r1
c0de29ec:	4606      	mov	r6, r0
c0de29ee:	2901      	cmp	r1, #1
c0de29f0:	9206      	str	r2, [sp, #24]
c0de29f2:	d804      	bhi.n	c0de29fe <nbgl_drawRoundedRect+0x1a>
c0de29f4:	4872      	ldr	r0, [pc, #456]	@ (c0de2bc0 <nbgl_drawRoundedRect+0x1dc>)
c0de29f6:	4478      	add	r0, pc
c0de29f8:	f810 700b 	ldrb.w	r7, [r0, fp]
c0de29fc:	e004      	b.n	c0de2a08 <nbgl_drawRoundedRect+0x24>
c0de29fe:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de2a02:	f040 80da 	bne.w	c0de2bba <nbgl_drawRoundedRect+0x1d6>
c0de2a06:	2700      	movs	r7, #0
c0de2a08:	9806      	ldr	r0, [sp, #24]
c0de2a0a:	7871      	ldrb	r1, [r6, #1]
c0de2a0c:	78b2      	ldrb	r2, [r6, #2]
c0de2a0e:	78f3      	ldrb	r3, [r6, #3]
c0de2a10:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0de2a14:	7830      	ldrb	r0, [r6, #0]
c0de2a16:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de2a1a:	79b3      	ldrb	r3, [r6, #6]
c0de2a1c:	f8ad 201e 	strh.w	r2, [sp, #30]
c0de2a20:	79f2      	ldrb	r2, [r6, #7]
c0de2a22:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2a26:	7931      	ldrb	r1, [r6, #4]
c0de2a28:	4438      	add	r0, r7
c0de2a2a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de2a2e:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de2a32:	7970      	ldrb	r0, [r6, #5]
c0de2a34:	f8ad 2022 	strh.w	r2, [sp, #34]	@ 0x22
c0de2a38:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de2a3c:	eba0 0047 	sub.w	r0, r0, r7, lsl #1
c0de2a40:	f8ad 0020 	strh.w	r0, [sp, #32]
c0de2a44:	a807      	add	r0, sp, #28
c0de2a46:	f007 fac5 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2a4a:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de2a4e:	f000 80b4 	beq.w	c0de2bba <nbgl_drawRoundedRect+0x1d6>
c0de2a52:	7830      	ldrb	r0, [r6, #0]
c0de2a54:	7871      	ldrb	r1, [r6, #1]
c0de2a56:	4635      	mov	r5, r6
c0de2a58:	46b0      	mov	r8, r6
c0de2a5a:	007c      	lsls	r4, r7, #1
c0de2a5c:	f10d 0a1c 	add.w	sl, sp, #28
c0de2a60:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de2a64:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2a68:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de2a6c:	f815 0f02 	ldrb.w	r0, [r5, #2]!
c0de2a70:	7869      	ldrb	r1, [r5, #1]
c0de2a72:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2a76:	4438      	add	r0, r7
c0de2a78:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de2a7c:	f818 0f06 	ldrb.w	r0, [r8, #6]!
c0de2a80:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de2a84:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2a88:	1b00      	subs	r0, r0, r4
c0de2a8a:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de2a8e:	4650      	mov	r0, sl
c0de2a90:	f007 faa0 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2a94:	7828      	ldrb	r0, [r5, #0]
c0de2a96:	7869      	ldrb	r1, [r5, #1]
c0de2a98:	7932      	ldrb	r2, [r6, #4]
c0de2a9a:	7973      	ldrb	r3, [r6, #5]
c0de2a9c:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de2aa0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2aa4:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de2aa8:	4438      	add	r0, r7
c0de2aaa:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de2aae:	f898 0000 	ldrb.w	r0, [r8]
c0de2ab2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2ab6:	7871      	ldrb	r1, [r6, #1]
c0de2ab8:	1b00      	subs	r0, r0, r4
c0de2aba:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de2abe:	f000 fb5f 	bl	c0de3180 <OUTLINED_FUNCTION_1>
c0de2ac2:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de2ac6:	4650      	mov	r0, sl
c0de2ac8:	f007 fa84 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2acc:	f1bb 0f00 	cmp.w	fp, #0
c0de2ad0:	d073      	beq.n	c0de2bba <nbgl_drawRoundedRect+0x1d6>
c0de2ad2:	46b2      	mov	sl, r6
c0de2ad4:	7a31      	ldrb	r1, [r6, #8]
c0de2ad6:	f8dd 8018 	ldr.w	r8, [sp, #24]
c0de2ada:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de2ade:	7833      	ldrb	r3, [r6, #0]
c0de2ae0:	f81a cf02 	ldrb.w	ip, [sl, #2]!
c0de2ae4:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de2ae8:	2301      	movs	r3, #1
c0de2aea:	f99a 2001 	ldrsb.w	r2, [sl, #1]
c0de2aee:	9102      	str	r1, [sp, #8]
c0de2af0:	e9cd 8800 	strd	r8, r8, [sp]
c0de2af4:	4438      	add	r0, r7
c0de2af6:	4c33      	ldr	r4, [pc, #204]	@ (c0de2bc4 <nbgl_drawRoundedRect+0x1e0>)
c0de2af8:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de2afc:	465a      	mov	r2, fp
c0de2afe:	4439      	add	r1, r7
c0de2b00:	447c      	add	r4, pc
c0de2b02:	47a0      	blx	r4
c0de2b04:	4630      	mov	r0, r6
c0de2b06:	f996 c001 	ldrsb.w	ip, [r6, #1]
c0de2b0a:	7832      	ldrb	r2, [r6, #0]
c0de2b0c:	f99a 5001 	ldrsb.w	r5, [sl, #1]
c0de2b10:	f89a e000 	ldrb.w	lr, [sl]
c0de2b14:	9405      	str	r4, [sp, #20]
c0de2b16:	f810 3f04 	ldrb.w	r3, [r0, #4]!
c0de2b1a:	9004      	str	r0, [sp, #16]
c0de2b1c:	7841      	ldrb	r1, [r0, #1]
c0de2b1e:	7a30      	ldrb	r0, [r6, #8]
c0de2b20:	e9cd 8800 	strd	r8, r8, [sp]
c0de2b24:	9002      	str	r0, [sp, #8]
c0de2b26:	ea43 2001 	orr.w	r0, r3, r1, lsl #8
c0de2b2a:	ea42 210c 	orr.w	r1, r2, ip, lsl #8
c0de2b2e:	465a      	mov	r2, fp
c0de2b30:	2300      	movs	r3, #0
c0de2b32:	1bc9      	subs	r1, r1, r7
c0de2b34:	4408      	add	r0, r1
c0de2b36:	ea4e 2105 	orr.w	r1, lr, r5, lsl #8
c0de2b3a:	4439      	add	r1, r7
c0de2b3c:	47a0      	blx	r4
c0de2b3e:	4634      	mov	r4, r6
c0de2b40:	f99a e001 	ldrsb.w	lr, [sl, #1]
c0de2b44:	f89a c000 	ldrb.w	ip, [sl]
c0de2b48:	7a31      	ldrb	r1, [r6, #8]
c0de2b4a:	f996 5001 	ldrsb.w	r5, [r6, #1]
c0de2b4e:	7832      	ldrb	r2, [r6, #0]
c0de2b50:	f814 3f06 	ldrb.w	r3, [r4, #6]!
c0de2b54:	7860      	ldrb	r0, [r4, #1]
c0de2b56:	9102      	str	r1, [sp, #8]
c0de2b58:	ea4c 210e 	orr.w	r1, ip, lr, lsl #8
c0de2b5c:	e9cd 8800 	strd	r8, r8, [sp]
c0de2b60:	1bc9      	subs	r1, r1, r7
c0de2b62:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de2b66:	2302      	movs	r3, #2
c0de2b68:	4401      	add	r1, r0
c0de2b6a:	ea42 2005 	orr.w	r0, r2, r5, lsl #8
c0de2b6e:	9d05      	ldr	r5, [sp, #20]
c0de2b70:	465a      	mov	r2, fp
c0de2b72:	4438      	add	r0, r7
c0de2b74:	47a8      	blx	r5
c0de2b76:	9904      	ldr	r1, [sp, #16]
c0de2b78:	7832      	ldrb	r2, [r6, #0]
c0de2b7a:	f894 c000 	ldrb.w	ip, [r4]
c0de2b7e:	f894 e001 	ldrb.w	lr, [r4, #1]
c0de2b82:	f99a 3001 	ldrsb.w	r3, [sl, #1]
c0de2b86:	f89a 4000 	ldrb.w	r4, [sl]
c0de2b8a:	7808      	ldrb	r0, [r1, #0]
c0de2b8c:	784d      	ldrb	r5, [r1, #1]
c0de2b8e:	f996 1001 	ldrsb.w	r1, [r6, #1]
c0de2b92:	7a36      	ldrb	r6, [r6, #8]
c0de2b94:	e9cd 8800 	strd	r8, r8, [sp]
c0de2b98:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de2b9c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de2ba0:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de2ba4:	9602      	str	r6, [sp, #8]
c0de2ba6:	1bc9      	subs	r1, r1, r7
c0de2ba8:	4408      	add	r0, r1
c0de2baa:	ea44 2103 	orr.w	r1, r4, r3, lsl #8
c0de2bae:	9c05      	ldr	r4, [sp, #20]
c0de2bb0:	2303      	movs	r3, #3
c0de2bb2:	1bc9      	subs	r1, r1, r7
c0de2bb4:	4411      	add	r1, r2
c0de2bb6:	465a      	mov	r2, fp
c0de2bb8:	47a0      	blx	r4
c0de2bba:	b00a      	add	sp, #40	@ 0x28
c0de2bbc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2bc0:	00008b8e 	.word	0x00008b8e
c0de2bc4:	000000c5 	.word	0x000000c5

c0de2bc8 <draw_circle_helper>:
c0de2bc8:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de2bca:	461c      	mov	r4, r3
c0de2bcc:	2300      	movs	r3, #0
c0de2bce:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de2bd0:	2a01      	cmp	r2, #1
c0de2bd2:	f88d 300d 	strb.w	r3, [sp, #13]
c0de2bd6:	9301      	str	r3, [sp, #4]
c0de2bd8:	f88d 500c 	strb.w	r5, [sp, #12]
c0de2bdc:	d837      	bhi.n	c0de2c4e <draw_circle_helper+0x86>
c0de2bde:	4e1d      	ldr	r6, [pc, #116]	@ (c0de2c54 <draw_circle_helper+0x8c>)
c0de2be0:	e9dd 3508 	ldrd	r3, r5, [sp, #32]
c0de2be4:	447e      	add	r6, pc
c0de2be6:	5cb2      	ldrb	r2, [r6, r2]
c0de2be8:	f8ad 2008 	strh.w	r2, [sp, #8]
c0de2bec:	f8ad 200a 	strh.w	r2, [sp, #10]
c0de2bf0:	b164      	cbz	r4, c0de2c0c <draw_circle_helper+0x44>
c0de2bf2:	2c01      	cmp	r4, #1
c0de2bf4:	d014      	beq.n	c0de2c20 <draw_circle_helper+0x58>
c0de2bf6:	2c02      	cmp	r4, #2
c0de2bf8:	d01b      	beq.n	c0de2c32 <draw_circle_helper+0x6a>
c0de2bfa:	2c03      	cmp	r4, #3
c0de2bfc:	d128      	bne.n	c0de2c50 <draw_circle_helper+0x88>
c0de2bfe:	f000 fac7 	bl	c0de3190 <OUTLINED_FUNCTION_2>
c0de2c02:	4815      	ldr	r0, [pc, #84]	@ (c0de2c58 <draw_circle_helper+0x90>)
c0de2c04:	4915      	ldr	r1, [pc, #84]	@ (c0de2c5c <draw_circle_helper+0x94>)
c0de2c06:	4478      	add	r0, pc
c0de2c08:	4479      	add	r1, pc
c0de2c0a:	e019      	b.n	c0de2c40 <draw_circle_helper+0x78>
c0de2c0c:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de2c10:	1a88      	subs	r0, r1, r2
c0de2c12:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de2c16:	4814      	ldr	r0, [pc, #80]	@ (c0de2c68 <draw_circle_helper+0xa0>)
c0de2c18:	4914      	ldr	r1, [pc, #80]	@ (c0de2c6c <draw_circle_helper+0xa4>)
c0de2c1a:	4478      	add	r0, pc
c0de2c1c:	4479      	add	r1, pc
c0de2c1e:	e00f      	b.n	c0de2c40 <draw_circle_helper+0x78>
c0de2c20:	1a89      	subs	r1, r1, r2
c0de2c22:	1a80      	subs	r0, r0, r2
c0de2c24:	f000 fab4 	bl	c0de3190 <OUTLINED_FUNCTION_2>
c0de2c28:	4811      	ldr	r0, [pc, #68]	@ (c0de2c70 <draw_circle_helper+0xa8>)
c0de2c2a:	4912      	ldr	r1, [pc, #72]	@ (c0de2c74 <draw_circle_helper+0xac>)
c0de2c2c:	4478      	add	r0, pc
c0de2c2e:	4479      	add	r1, pc
c0de2c30:	e006      	b.n	c0de2c40 <draw_circle_helper+0x78>
c0de2c32:	1a80      	subs	r0, r0, r2
c0de2c34:	f000 faac 	bl	c0de3190 <OUTLINED_FUNCTION_2>
c0de2c38:	4809      	ldr	r0, [pc, #36]	@ (c0de2c60 <draw_circle_helper+0x98>)
c0de2c3a:	490a      	ldr	r1, [pc, #40]	@ (c0de2c64 <draw_circle_helper+0x9c>)
c0de2c3c:	4478      	add	r0, pc
c0de2c3e:	4479      	add	r1, pc
c0de2c40:	42ab      	cmp	r3, r5
c0de2c42:	bf08      	it	eq
c0de2c44:	4601      	moveq	r1, r0
c0de2c46:	a801      	add	r0, sp, #4
c0de2c48:	2200      	movs	r2, #0
c0de2c4a:	f007 f9cb 	bl	c0de9fe4 <nbgl_frontDrawImage>
c0de2c4e:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de2c50:	2100      	movs	r1, #0
c0de2c52:	e7f8      	b.n	c0de2c46 <draw_circle_helper+0x7e>
c0de2c54:	000089a0 	.word	0x000089a0
c0de2c58:	00008980 	.word	0x00008980
c0de2c5c:	00008980 	.word	0x00008980
c0de2c60:	0000894e 	.word	0x0000894e
c0de2c64:	0000894e 	.word	0x0000894e
c0de2c68:	00008974 	.word	0x00008974
c0de2c6c:	00008974 	.word	0x00008974
c0de2c70:	00008966 	.word	0x00008966
c0de2c74:	00008966 	.word	0x00008966

c0de2c78 <nbgl_drawRoundedBorderedRect>:
c0de2c78:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c7c:	b08c      	sub	sp, #48	@ 0x30
c0de2c7e:	4606      	mov	r6, r0
c0de2c80:	4690      	mov	r8, r2
c0de2c82:	2901      	cmp	r1, #1
c0de2c84:	4608      	mov	r0, r1
c0de2c86:	9108      	str	r1, [sp, #32]
c0de2c88:	d804      	bhi.n	c0de2c94 <nbgl_drawRoundedBorderedRect+0x1c>
c0de2c8a:	48b5      	ldr	r0, [pc, #724]	@ (c0de2f60 <nbgl_drawRoundedBorderedRect+0x2e8>)
c0de2c8c:	9908      	ldr	r1, [sp, #32]
c0de2c8e:	4478      	add	r0, pc
c0de2c90:	5c47      	ldrb	r7, [r0, r1]
c0de2c92:	e004      	b.n	c0de2c9e <nbgl_drawRoundedBorderedRect+0x26>
c0de2c94:	9808      	ldr	r0, [sp, #32]
c0de2c96:	28ff      	cmp	r0, #255	@ 0xff
c0de2c98:	f040 815e 	bne.w	c0de2f58 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de2c9c:	2700      	movs	r7, #0
c0de2c9e:	f8dd b050 	ldr.w	fp, [sp, #80]	@ 0x50
c0de2ca2:	f88d 302c 	strb.w	r3, [sp, #44]	@ 0x2c
c0de2ca6:	455b      	cmp	r3, fp
c0de2ca8:	d11e      	bne.n	c0de2ce8 <nbgl_drawRoundedBorderedRect+0x70>
c0de2caa:	7a30      	ldrb	r0, [r6, #8]
c0de2cac:	4298      	cmp	r0, r3
c0de2cae:	d11b      	bne.n	c0de2ce8 <nbgl_drawRoundedBorderedRect+0x70>
c0de2cb0:	7830      	ldrb	r0, [r6, #0]
c0de2cb2:	7871      	ldrb	r1, [r6, #1]
c0de2cb4:	78b2      	ldrb	r2, [r6, #2]
c0de2cb6:	78f3      	ldrb	r3, [r6, #3]
c0de2cb8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2cbc:	7931      	ldrb	r1, [r6, #4]
c0de2cbe:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de2cc2:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de2cc6:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de2cca:	7970      	ldrb	r0, [r6, #5]
c0de2ccc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de2cd0:	79b1      	ldrb	r1, [r6, #6]
c0de2cd2:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de2cd6:	79f0      	ldrb	r0, [r6, #7]
c0de2cd8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de2cdc:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de2ce0:	a809      	add	r0, sp, #36	@ 0x24
c0de2ce2:	f007 f977 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2ce6:	e137      	b.n	c0de2f58 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de2ce8:	7930      	ldrb	r0, [r6, #4]
c0de2cea:	7971      	ldrb	r1, [r6, #5]
c0de2cec:	007d      	lsls	r5, r7, #1
c0de2cee:	9306      	str	r3, [sp, #24]
c0de2cf0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2cf4:	ebb0 0f47 	cmp.w	r0, r7, lsl #1
c0de2cf8:	d918      	bls.n	c0de2d2c <nbgl_drawRoundedBorderedRect+0xb4>
c0de2cfa:	78b2      	ldrb	r2, [r6, #2]
c0de2cfc:	78f3      	ldrb	r3, [r6, #3]
c0de2cfe:	1b40      	subs	r0, r0, r5
c0de2d00:	7871      	ldrb	r1, [r6, #1]
c0de2d02:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de2d06:	7830      	ldrb	r0, [r6, #0]
c0de2d08:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de2d0c:	79b3      	ldrb	r3, [r6, #6]
c0de2d0e:	f8ad 2026 	strh.w	r2, [sp, #38]	@ 0x26
c0de2d12:	79f2      	ldrb	r2, [r6, #7]
c0de2d14:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2d18:	4438      	add	r0, r7
c0de2d1a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de2d1e:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de2d22:	f8ad 202a 	strh.w	r2, [sp, #42]	@ 0x2a
c0de2d26:	a809      	add	r0, sp, #36	@ 0x24
c0de2d28:	f007 f954 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2d2c:	9808      	ldr	r0, [sp, #32]
c0de2d2e:	9507      	str	r5, [sp, #28]
c0de2d30:	2801      	cmp	r0, #1
c0de2d32:	d82a      	bhi.n	c0de2d8a <nbgl_drawRoundedBorderedRect+0x112>
c0de2d34:	79b0      	ldrb	r0, [r6, #6]
c0de2d36:	79f1      	ldrb	r1, [r6, #7]
c0de2d38:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2d3c:	4285      	cmp	r5, r0
c0de2d3e:	d224      	bcs.n	c0de2d8a <nbgl_drawRoundedBorderedRect+0x112>
c0de2d40:	1b40      	subs	r0, r0, r5
c0de2d42:	7871      	ldrb	r1, [r6, #1]
c0de2d44:	4634      	mov	r4, r6
c0de2d46:	f8ad 7028 	strh.w	r7, [sp, #40]	@ 0x28
c0de2d4a:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de2d4e:	7830      	ldrb	r0, [r6, #0]
c0de2d50:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2d54:	f000 fa0c 	bl	c0de3170 <OUTLINED_FUNCTION_0>
c0de2d58:	4438      	add	r0, r7
c0de2d5a:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de2d5e:	ad09      	add	r5, sp, #36	@ 0x24
c0de2d60:	4628      	mov	r0, r5
c0de2d62:	f007 f937 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2d66:	7820      	ldrb	r0, [r4, #0]
c0de2d68:	7861      	ldrb	r1, [r4, #1]
c0de2d6a:	7932      	ldrb	r2, [r6, #4]
c0de2d6c:	7973      	ldrb	r3, [r6, #5]
c0de2d6e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2d72:	7871      	ldrb	r1, [r6, #1]
c0de2d74:	4438      	add	r0, r7
c0de2d76:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de2d7a:	f000 fa01 	bl	c0de3180 <OUTLINED_FUNCTION_1>
c0de2d7e:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de2d82:	4628      	mov	r0, r5
c0de2d84:	9d07      	ldr	r5, [sp, #28]
c0de2d86:	f007 f925 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2d8a:	7830      	ldrb	r0, [r6, #0]
c0de2d8c:	7871      	ldrb	r1, [r6, #1]
c0de2d8e:	4634      	mov	r4, r6
c0de2d90:	7932      	ldrb	r2, [r6, #4]
c0de2d92:	7973      	ldrb	r3, [r6, #5]
c0de2d94:	f88d b02c 	strb.w	fp, [sp, #44]	@ 0x2c
c0de2d98:	f10d 0b24 	add.w	fp, sp, #36	@ 0x24
c0de2d9c:	f8ad 802a 	strh.w	r8, [sp, #42]	@ 0x2a
c0de2da0:	9705      	str	r7, [sp, #20]
c0de2da2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2da6:	4438      	add	r0, r7
c0de2da8:	f000 f9e2 	bl	c0de3170 <OUTLINED_FUNCTION_0>
c0de2dac:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de2db0:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de2db4:	1b40      	subs	r0, r0, r5
c0de2db6:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de2dba:	4658      	mov	r0, fp
c0de2dbc:	f007 f90a 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2dc0:	4635      	mov	r5, r6
c0de2dc2:	7862      	ldrb	r2, [r4, #1]
c0de2dc4:	9f07      	ldr	r7, [sp, #28]
c0de2dc6:	f815 0f06 	ldrb.w	r0, [r5, #6]!
c0de2dca:	7869      	ldrb	r1, [r5, #1]
c0de2dcc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2dd0:	7821      	ldrb	r1, [r4, #0]
c0de2dd2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de2dd6:	eba1 0108 	sub.w	r1, r1, r8
c0de2dda:	4408      	add	r0, r1
c0de2ddc:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de2de0:	4658      	mov	r0, fp
c0de2de2:	f007 f8f7 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2de6:	7828      	ldrb	r0, [r5, #0]
c0de2de8:	7869      	ldrb	r1, [r5, #1]
c0de2dea:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2dee:	4287      	cmp	r7, r0
c0de2df0:	d229      	bcs.n	c0de2e46 <nbgl_drawRoundedBorderedRect+0x1ce>
c0de2df2:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de2df4:	1bc0      	subs	r0, r0, r7
c0de2df6:	78b2      	ldrb	r2, [r6, #2]
c0de2df8:	78f3      	ldrb	r3, [r6, #3]
c0de2dfa:	f8ad 8028 	strh.w	r8, [sp, #40]	@ 0x28
c0de2dfe:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de2e02:	7830      	ldrb	r0, [r6, #0]
c0de2e04:	f88d 102c 	strb.w	r1, [sp, #44]	@ 0x2c
c0de2e08:	7871      	ldrb	r1, [r6, #1]
c0de2e0a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2e0e:	9905      	ldr	r1, [sp, #20]
c0de2e10:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de2e14:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de2e18:	4408      	add	r0, r1
c0de2e1a:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de2e1e:	ac09      	add	r4, sp, #36	@ 0x24
c0de2e20:	4620      	mov	r0, r4
c0de2e22:	f007 f8d7 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2e26:	7830      	ldrb	r0, [r6, #0]
c0de2e28:	7871      	ldrb	r1, [r6, #1]
c0de2e2a:	7932      	ldrb	r2, [r6, #4]
c0de2e2c:	7973      	ldrb	r3, [r6, #5]
c0de2e2e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2e32:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de2e36:	eba0 0008 	sub.w	r0, r0, r8
c0de2e3a:	4408      	add	r0, r1
c0de2e3c:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de2e40:	4620      	mov	r0, r4
c0de2e42:	f007 f8c7 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de2e46:	9808      	ldr	r0, [sp, #32]
c0de2e48:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de2e4c:	2801      	cmp	r0, #1
c0de2e4e:	f200 8083 	bhi.w	c0de2f58 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de2e52:	4635      	mov	r5, r6
c0de2e54:	7a34      	ldrb	r4, [r6, #8]
c0de2e56:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de2e58:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de2e5c:	7833      	ldrb	r3, [r6, #0]
c0de2e5e:	f8dd a014 	ldr.w	sl, [sp, #20]
c0de2e62:	f815 cf02 	ldrb.w	ip, [r5, #2]!
c0de2e66:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de2e6a:	2301      	movs	r3, #1
c0de2e6c:	f995 2001 	ldrsb.w	r2, [r5, #1]
c0de2e70:	e9cd 1b00 	strd	r1, fp, [sp]
c0de2e74:	9402      	str	r4, [sp, #8]
c0de2e76:	4450      	add	r0, sl
c0de2e78:	4c3a      	ldr	r4, [pc, #232]	@ (c0de2f64 <nbgl_drawRoundedBorderedRect+0x2ec>)
c0de2e7a:	9f08      	ldr	r7, [sp, #32]
c0de2e7c:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de2e80:	4451      	add	r1, sl
c0de2e82:	447c      	add	r4, pc
c0de2e84:	463a      	mov	r2, r7
c0de2e86:	47a0      	blx	r4
c0de2e88:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de2e8c:	46a0      	mov	r8, r4
c0de2e8e:	9407      	str	r4, [sp, #28]
c0de2e90:	4634      	mov	r4, r6
c0de2e92:	f996 e001 	ldrsb.w	lr, [r6, #1]
c0de2e96:	7832      	ldrb	r2, [r6, #0]
c0de2e98:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2e9a:	f814 cf04 	ldrb.w	ip, [r4, #4]!
c0de2e9e:	9004      	str	r0, [sp, #16]
c0de2ea0:	7828      	ldrb	r0, [r5, #0]
c0de2ea2:	7861      	ldrb	r1, [r4, #1]
c0de2ea4:	9003      	str	r0, [sp, #12]
c0de2ea6:	7a30      	ldrb	r0, [r6, #8]
c0de2ea8:	e9cd 3b00 	strd	r3, fp, [sp]
c0de2eac:	2300      	movs	r3, #0
c0de2eae:	9002      	str	r0, [sp, #8]
c0de2eb0:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
c0de2eb4:	ea42 210e 	orr.w	r1, r2, lr, lsl #8
c0de2eb8:	eba1 010a 	sub.w	r1, r1, sl
c0de2ebc:	4408      	add	r0, r1
c0de2ebe:	e9dd 2103 	ldrd	r2, r1, [sp, #12]
c0de2ec2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de2ec6:	463a      	mov	r2, r7
c0de2ec8:	4451      	add	r1, sl
c0de2eca:	47c0      	blx	r8
c0de2ecc:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de2ed0:	463a      	mov	r2, r7
c0de2ed2:	4637      	mov	r7, r6
c0de2ed4:	7a31      	ldrb	r1, [r6, #8]
c0de2ed6:	f895 8000 	ldrb.w	r8, [r5]
c0de2eda:	f896 e000 	ldrb.w	lr, [r6]
c0de2ede:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2ee0:	f817 cf06 	ldrb.w	ip, [r7, #6]!
c0de2ee4:	9004      	str	r0, [sp, #16]
c0de2ee6:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de2eea:	9003      	str	r0, [sp, #12]
c0de2eec:	7878      	ldrb	r0, [r7, #1]
c0de2eee:	9102      	str	r1, [sp, #8]
c0de2ef0:	e9cd 3b00 	strd	r3, fp, [sp]
c0de2ef4:	2302      	movs	r3, #2
c0de2ef6:	9903      	ldr	r1, [sp, #12]
c0de2ef8:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
c0de2efc:	ea48 2101 	orr.w	r1, r8, r1, lsl #8
c0de2f00:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de2f04:	eba1 010a 	sub.w	r1, r1, sl
c0de2f08:	4401      	add	r1, r0
c0de2f0a:	9804      	ldr	r0, [sp, #16]
c0de2f0c:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
c0de2f10:	4450      	add	r0, sl
c0de2f12:	47c0      	blx	r8
c0de2f14:	f897 c000 	ldrb.w	ip, [r7]
c0de2f18:	f897 e001 	ldrb.w	lr, [r7, #1]
c0de2f1c:	f996 7001 	ldrsb.w	r7, [r6, #1]
c0de2f20:	7831      	ldrb	r1, [r6, #0]
c0de2f22:	7820      	ldrb	r0, [r4, #0]
c0de2f24:	7864      	ldrb	r4, [r4, #1]
c0de2f26:	f995 3001 	ldrsb.w	r3, [r5, #1]
c0de2f2a:	782d      	ldrb	r5, [r5, #0]
c0de2f2c:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de2f2e:	7a36      	ldrb	r6, [r6, #8]
c0de2f30:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de2f34:	ea40 2004 	orr.w	r0, r0, r4, lsl #8
c0de2f38:	e9cd 2b00 	strd	r2, fp, [sp]
c0de2f3c:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de2f40:	9602      	str	r6, [sp, #8]
c0de2f42:	eba1 010a 	sub.w	r1, r1, sl
c0de2f46:	4408      	add	r0, r1
c0de2f48:	ea45 2103 	orr.w	r1, r5, r3, lsl #8
c0de2f4c:	2303      	movs	r3, #3
c0de2f4e:	eba1 010a 	sub.w	r1, r1, sl
c0de2f52:	4411      	add	r1, r2
c0de2f54:	9a08      	ldr	r2, [sp, #32]
c0de2f56:	47c0      	blx	r8
c0de2f58:	b00c      	add	sp, #48	@ 0x30
c0de2f5a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2f5e:	bf00      	nop
c0de2f60:	000088f6 	.word	0x000088f6
c0de2f64:	fffffd43 	.word	0xfffffd43

c0de2f68 <nbgl_drawIcon>:
c0de2f68:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2f6a:	4614      	mov	r4, r2
c0de2f6c:	460a      	mov	r2, r1
c0de2f6e:	f813 1f06 	ldrb.w	r1, [r3, #6]!
c0de2f72:	f813 5c01 	ldrb.w	r5, [r3, #-1]
c0de2f76:	785e      	ldrb	r6, [r3, #1]
c0de2f78:	789f      	ldrb	r7, [r3, #2]
c0de2f7a:	78db      	ldrb	r3, [r3, #3]
c0de2f7c:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de2f80:	ea47 2303 	orr.w	r3, r7, r3, lsl #8
c0de2f84:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de2f88:	b13d      	cbz	r5, c0de2f9a <nbgl_drawIcon+0x32>
c0de2f8a:	4a06      	ldr	r2, [pc, #24]	@ (c0de2fa4 <nbgl_drawIcon+0x3c>)
c0de2f8c:	eb09 0302 	add.w	r3, r9, r2
c0de2f90:	4622      	mov	r2, r4
c0de2f92:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2f96:	f007 b845 	b.w	c0dea024 <nbgl_frontDrawImageFile>
c0de2f9a:	4623      	mov	r3, r4
c0de2f9c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2fa0:	f007 b820 	b.w	c0de9fe4 <nbgl_frontDrawImage>
c0de2fa4:	00000434 	.word	0x00000434

c0de2fa8 <nbgl_drawText>:
c0de2fa8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2fac:	b090      	sub	sp, #64	@ 0x40
c0de2fae:	4604      	mov	r4, r0
c0de2fb0:	f890 8000 	ldrb.w	r8, [r0]
c0de2fb4:	7846      	ldrb	r6, [r0, #1]
c0de2fb6:	4618      	mov	r0, r3
c0de2fb8:	469b      	mov	fp, r3
c0de2fba:	4617      	mov	r7, r2
c0de2fbc:	f8ad 203a 	strh.w	r2, [sp, #58]	@ 0x3a
c0de2fc0:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de2fc2:	f000 f8ea 	bl	c0de319a <nbgl_getFont>
c0de2fc6:	4605      	mov	r5, r0
c0de2fc8:	7a20      	ldrb	r0, [r4, #8]
c0de2fca:	9405      	str	r4, [sp, #20]
c0de2fcc:	f10d 0a3c 	add.w	sl, sp, #60	@ 0x3c
c0de2fd0:	f10d 042f 	add.w	r4, sp, #47	@ 0x2f
c0de2fd4:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de2fd8:	7968      	ldrb	r0, [r5, #5]
c0de2fda:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de2fde:	ea48 2006 	orr.w	r0, r8, r6, lsl #8
c0de2fe2:	f10d 063a 	add.w	r6, sp, #58	@ 0x3a
c0de2fe6:	900a      	str	r0, [sp, #40]	@ 0x28
c0de2fe8:	2f00      	cmp	r7, #0
c0de2fea:	f000 80bc 	beq.w	c0de3166 <nbgl_drawText+0x1be>
c0de2fee:	4650      	mov	r0, sl
c0de2ff0:	4631      	mov	r1, r6
c0de2ff2:	4622      	mov	r2, r4
c0de2ff4:	f000 f8d3 	bl	c0de319e <nbgl_popUnicodeChar>
c0de2ff8:	4680      	mov	r8, r0
c0de2ffa:	f89d 002f 	ldrb.w	r0, [sp, #47]	@ 0x2f
c0de2ffe:	b110      	cbz	r0, c0de3006 <nbgl_drawText+0x5e>
c0de3000:	f8bd 703a 	ldrh.w	r7, [sp, #58]	@ 0x3a
c0de3004:	e7f0      	b.n	c0de2fe8 <nbgl_drawText+0x40>
c0de3006:	f1b8 0f08 	cmp.w	r8, #8
c0de300a:	d030      	beq.n	c0de306e <nbgl_drawText+0xc6>
c0de300c:	f1b8 0f0c 	cmp.w	r8, #12
c0de3010:	f000 80a9 	beq.w	c0de3166 <nbgl_drawText+0x1be>
c0de3014:	7ae8      	ldrb	r0, [r5, #11]
c0de3016:	4580      	cmp	r8, r0
c0de3018:	d3f2      	bcc.n	c0de3000 <nbgl_drawText+0x58>
c0de301a:	7b29      	ldrb	r1, [r5, #12]
c0de301c:	4588      	cmp	r8, r1
c0de301e:	d8ef      	bhi.n	c0de3000 <nbgl_drawText+0x58>
c0de3020:	6929      	ldr	r1, [r5, #16]
c0de3022:	eba8 0000 	sub.w	r0, r8, r0
c0de3026:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de302a:	f006 ffa3 	bl	c0de9f74 <pic>
c0de302e:	4607      	mov	r7, r0
c0de3030:	6800      	ldr	r0, [r0, #0]
c0de3032:	6969      	ldr	r1, [r5, #20]
c0de3034:	4408      	add	r0, r1
c0de3036:	f006 ff9d 	bl	c0de9f74 <pic>
c0de303a:	9009      	str	r0, [sp, #36]	@ 0x24
c0de303c:	687f      	ldr	r7, [r7, #4]
c0de303e:	7a68      	ldrb	r0, [r5, #9]
c0de3040:	f895 c006 	ldrb.w	ip, [r5, #6]
c0de3044:	f3c7 0245 	ubfx	r2, r7, #1, #6
c0de3048:	b310      	cbz	r0, c0de3090 <nbgl_drawText+0xe8>
c0de304a:	f3c7 5045 	ubfx	r0, r7, #21, #6
c0de304e:	f3c7 21c5 	ubfx	r1, r7, #11, #6
c0de3052:	ebac 0c00 	sub.w	ip, ip, r0
c0de3056:	f3c7 4043 	ubfx	r0, r7, #17, #4
c0de305a:	1a13      	subs	r3, r2, r0
c0de305c:	7aa8      	ldrb	r0, [r5, #10]
c0de305e:	4408      	add	r0, r1
c0de3060:	9007      	str	r0, [sp, #28]
c0de3062:	f3c7 10c3 	ubfx	r0, r7, #7, #4
c0de3066:	9006      	str	r0, [sp, #24]
c0de3068:	2000      	movs	r0, #0
c0de306a:	9004      	str	r0, [sp, #16]
c0de306c:	e01c      	b.n	c0de30a8 <nbgl_drawText+0x100>
c0de306e:	fa5f f08b 	uxtb.w	r0, fp
c0de3072:	2808      	cmp	r0, #8
c0de3074:	d005      	beq.n	c0de3082 <nbgl_drawText+0xda>
c0de3076:	280a      	cmp	r0, #10
c0de3078:	d1c2      	bne.n	c0de3000 <nbgl_drawText+0x58>
c0de307a:	f04f 0b08 	mov.w	fp, #8
c0de307e:	2008      	movs	r0, #8
c0de3080:	e002      	b.n	c0de3088 <nbgl_drawText+0xe0>
c0de3082:	f04f 0b0a 	mov.w	fp, #10
c0de3086:	200a      	movs	r0, #10
c0de3088:	f000 f887 	bl	c0de319a <nbgl_getFont>
c0de308c:	4605      	mov	r5, r0
c0de308e:	e7b7      	b.n	c0de3000 <nbgl_drawText+0x58>
c0de3090:	2038      	movs	r0, #56	@ 0x38
c0de3092:	f3c7 21c2 	ubfx	r1, r7, #11, #3
c0de3096:	4613      	mov	r3, r2
c0de3098:	ea00 1017 	and.w	r0, r0, r7, lsr #4
c0de309c:	4408      	add	r0, r1
c0de309e:	9004      	str	r0, [sp, #16]
c0de30a0:	2000      	movs	r0, #0
c0de30a2:	9006      	str	r0, [sp, #24]
c0de30a4:	2000      	movs	r0, #0
c0de30a6:	9007      	str	r0, [sp, #28]
c0de30a8:	7ae9      	ldrb	r1, [r5, #11]
c0de30aa:	fa5f f088 	uxtb.w	r0, r8
c0de30ae:	9208      	str	r2, [sp, #32]
c0de30b0:	4281      	cmp	r1, r0
c0de30b2:	d802      	bhi.n	c0de30ba <nbgl_drawText+0x112>
c0de30b4:	7b2a      	ldrb	r2, [r5, #12]
c0de30b6:	4282      	cmp	r2, r0
c0de30b8:	d231      	bcs.n	c0de311e <nbgl_drawText+0x176>
c0de30ba:	4698      	mov	r8, r3
c0de30bc:	2200      	movs	r2, #0
c0de30be:	9906      	ldr	r1, [sp, #24]
c0de30c0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de30c2:	f8dd e01c 	ldr.w	lr, [sp, #28]
c0de30c6:	4408      	add	r0, r1
c0de30c8:	f8ad 0030 	strh.w	r0, [sp, #48]	@ 0x30
c0de30cc:	ebac 000e 	sub.w	r0, ip, lr
c0de30d0:	f8ad 0036 	strh.w	r0, [sp, #54]	@ 0x36
c0de30d4:	eba8 0001 	sub.w	r0, r8, r1
c0de30d8:	9905      	ldr	r1, [sp, #20]
c0de30da:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de30de:	7888      	ldrb	r0, [r1, #2]
c0de30e0:	78c9      	ldrb	r1, [r1, #3]
c0de30e2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de30e6:	4470      	add	r0, lr
c0de30e8:	f8ad 0032 	strh.w	r0, [sp, #50]	@ 0x32
c0de30ec:	b14a      	cbz	r2, c0de3102 <nbgl_drawText+0x15a>
c0de30ee:	f017 0001 	ands.w	r0, r7, #1
c0de30f2:	d106      	bne.n	c0de3102 <nbgl_drawText+0x15a>
c0de30f4:	a80c      	add	r0, sp, #48	@ 0x30
c0de30f6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de30f8:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de30fa:	2200      	movs	r2, #0
c0de30fc:	f006 ff72 	bl	c0de9fe4 <nbgl_frontDrawImage>
c0de3100:	e006      	b.n	c0de3110 <nbgl_drawText+0x168>
c0de3102:	9804      	ldr	r0, [sp, #16]
c0de3104:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de3106:	9000      	str	r0, [sp, #0]
c0de3108:	a80c      	add	r0, sp, #48	@ 0x30
c0de310a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de310c:	f006 ff78 	bl	c0dea000 <nbgl_frontDrawImageRle>
c0de3110:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3112:	9908      	ldr	r1, [sp, #32]
c0de3114:	4408      	add	r0, r1
c0de3116:	7a29      	ldrb	r1, [r5, #8]
c0de3118:	1a40      	subs	r0, r0, r1
c0de311a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de311c:	e770      	b.n	c0de3000 <nbgl_drawText+0x58>
c0de311e:	eba0 0101 	sub.w	r1, r0, r1
c0de3122:	4698      	mov	r8, r3
c0de3124:	d913      	bls.n	c0de314e <nbgl_drawText+0x1a6>
c0de3126:	6928      	ldr	r0, [r5, #16]
c0de3128:	b289      	uxth	r1, r1
c0de312a:	f8cd c00c 	str.w	ip, [sp, #12]
c0de312e:	9101      	str	r1, [sp, #4]
c0de3130:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de3134:	f006 ff1e 	bl	c0de9f74 <pic>
c0de3138:	9002      	str	r0, [sp, #8]
c0de313a:	6928      	ldr	r0, [r5, #16]
c0de313c:	9901      	ldr	r1, [sp, #4]
c0de313e:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de3142:	3008      	adds	r0, #8
c0de3144:	f006 ff16 	bl	c0de9f74 <pic>
c0de3148:	e9dd 1c02 	ldrd	r1, ip, [sp, #8]
c0de314c:	e006      	b.n	c0de315c <nbgl_drawText+0x1b4>
c0de314e:	4282      	cmp	r2, r0
c0de3150:	d1b4      	bne.n	c0de30bc <nbgl_drawText+0x114>
c0de3152:	b288      	uxth	r0, r1
c0de3154:	6929      	ldr	r1, [r5, #16]
c0de3156:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de315a:	4628      	mov	r0, r5
c0de315c:	6809      	ldr	r1, [r1, #0]
c0de315e:	6800      	ldr	r0, [r0, #0]
c0de3160:	1a40      	subs	r0, r0, r1
c0de3162:	b282      	uxth	r2, r0
c0de3164:	e7ab      	b.n	c0de30be <nbgl_drawText+0x116>
c0de3166:	fa5f f08b 	uxtb.w	r0, fp
c0de316a:	b010      	add	sp, #64	@ 0x40
c0de316c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3170 <OUTLINED_FUNCTION_0>:
c0de3170:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3174:	f814 0f02 	ldrb.w	r0, [r4, #2]!
c0de3178:	7861      	ldrb	r1, [r4, #1]
c0de317a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de317e:	4770      	bx	lr

c0de3180 <OUTLINED_FUNCTION_1>:
c0de3180:	7830      	ldrb	r0, [r6, #0]
c0de3182:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3186:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de318a:	1bc0      	subs	r0, r0, r7
c0de318c:	4408      	add	r0, r1
c0de318e:	4770      	bx	lr

c0de3190 <OUTLINED_FUNCTION_2>:
c0de3190:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de3194:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de3198:	4770      	bx	lr

c0de319a <nbgl_getFont>:
c0de319a:	f006 bf5b 	b.w	c0dea054 <nbgl_font_getFont>

c0de319e <nbgl_popUnicodeChar>:
c0de319e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de31a0:	6804      	ldr	r4, [r0, #0]
c0de31a2:	2501      	movs	r5, #1
c0de31a4:	4626      	mov	r6, r4
c0de31a6:	f816 3b01 	ldrb.w	r3, [r6], #1
c0de31aa:	7015      	strb	r5, [r2, #0]
c0de31ac:	2bf0      	cmp	r3, #240	@ 0xf0
c0de31ae:	d315      	bcc.n	c0de31dc <nbgl_popUnicodeChar+0x3e>
c0de31b0:	880d      	ldrh	r5, [r1, #0]
c0de31b2:	2d04      	cmp	r5, #4
c0de31b4:	d315      	bcc.n	c0de31e2 <nbgl_popUnicodeChar+0x44>
c0de31b6:	f44f 12e0 	mov.w	r2, #1835008	@ 0x1c0000
c0de31ba:	78a6      	ldrb	r6, [r4, #2]
c0de31bc:	78e7      	ldrb	r7, [r4, #3]
c0de31be:	ea02 4283 	and.w	r2, r2, r3, lsl #18
c0de31c2:	7863      	ldrb	r3, [r4, #1]
c0de31c4:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
c0de31c8:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
c0de31cc:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de31d0:	1d26      	adds	r6, r4, #4
c0de31d2:	ea42 1283 	orr.w	r2, r2, r3, lsl #6
c0de31d6:	f007 033f 	and.w	r3, r7, #63	@ 0x3f
c0de31da:	e00f      	b.n	c0de31fc <nbgl_popUnicodeChar+0x5e>
c0de31dc:	2be0      	cmp	r3, #224	@ 0xe0
c0de31de:	d30f      	bcc.n	c0de3200 <nbgl_popUnicodeChar+0x62>
c0de31e0:	880d      	ldrh	r5, [r1, #0]
c0de31e2:	2d03      	cmp	r5, #3
c0de31e4:	d30f      	bcc.n	c0de3206 <nbgl_popUnicodeChar+0x68>
c0de31e6:	7862      	ldrb	r2, [r4, #1]
c0de31e8:	031b      	lsls	r3, r3, #12
c0de31ea:	78a6      	ldrb	r6, [r4, #2]
c0de31ec:	b29b      	uxth	r3, r3
c0de31ee:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de31f2:	ea43 1282 	orr.w	r2, r3, r2, lsl #6
c0de31f6:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de31fa:	1ce6      	adds	r6, r4, #3
c0de31fc:	4413      	add	r3, r2
c0de31fe:	e00e      	b.n	c0de321e <nbgl_popUnicodeChar+0x80>
c0de3200:	880d      	ldrh	r5, [r1, #0]
c0de3202:	2bc2      	cmp	r3, #194	@ 0xc2
c0de3204:	d309      	bcc.n	c0de321a <nbgl_popUnicodeChar+0x7c>
c0de3206:	2d02      	cmp	r5, #2
c0de3208:	d307      	bcc.n	c0de321a <nbgl_popUnicodeChar+0x7c>
c0de320a:	7862      	ldrb	r2, [r4, #1]
c0de320c:	1ca6      	adds	r6, r4, #2
c0de320e:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de3212:	f363 128a 	bfi	r2, r3, #6, #5
c0de3216:	4613      	mov	r3, r2
c0de3218:	e001      	b.n	c0de321e <nbgl_popUnicodeChar+0x80>
c0de321a:	2700      	movs	r7, #0
c0de321c:	7017      	strb	r7, [r2, #0]
c0de321e:	6006      	str	r6, [r0, #0]
c0de3220:	1ba0      	subs	r0, r4, r6
c0de3222:	4428      	add	r0, r5
c0de3224:	8008      	strh	r0, [r1, #0]
c0de3226:	4618      	mov	r0, r3
c0de3228:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de322a <nbgl_getSingleLineTextWidth>:
c0de322a:	2201      	movs	r2, #1
c0de322c:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de3230:	f000 b800 	b.w	c0de3234 <getTextWidth>

c0de3234 <getTextWidth>:
c0de3234:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3238:	461c      	mov	r4, r3
c0de323a:	9201      	str	r2, [sp, #4]
c0de323c:	460f      	mov	r7, r1
c0de323e:	4605      	mov	r5, r0
c0de3240:	9103      	str	r1, [sp, #12]
c0de3242:	f7ff ffaa 	bl	c0de319a <nbgl_getFont>
c0de3246:	4606      	mov	r6, r0
c0de3248:	4638      	mov	r0, r7
c0de324a:	f007 faed 	bl	c0dea828 <strlen>
c0de324e:	42a0      	cmp	r0, r4
c0de3250:	bf38      	it	cc
c0de3252:	4604      	movcc	r4, r0
c0de3254:	f8ad 400a 	strh.w	r4, [sp, #10]
c0de3258:	b2a0      	uxth	r0, r4
c0de325a:	f10d 0a0c 	add.w	sl, sp, #12
c0de325e:	f10d 0b0a 	add.w	fp, sp, #10
c0de3262:	f10d 0709 	add.w	r7, sp, #9
c0de3266:	f04f 0800 	mov.w	r8, #0
c0de326a:	2400      	movs	r4, #0
c0de326c:	b358      	cbz	r0, c0de32c6 <getTextWidth+0x92>
c0de326e:	4650      	mov	r0, sl
c0de3270:	4659      	mov	r1, fp
c0de3272:	463a      	mov	r2, r7
c0de3274:	f7ff ff93 	bl	c0de319e <nbgl_popUnicodeChar>
c0de3278:	280a      	cmp	r0, #10
c0de327a:	d00a      	beq.n	c0de3292 <getTextWidth+0x5e>
c0de327c:	4601      	mov	r1, r0
c0de327e:	2808      	cmp	r0, #8
c0de3280:	d10c      	bne.n	c0de329c <getTextWidth+0x68>
c0de3282:	b2e8      	uxtb	r0, r5
c0de3284:	2808      	cmp	r0, #8
c0de3286:	d016      	beq.n	c0de32b6 <getTextWidth+0x82>
c0de3288:	280a      	cmp	r0, #10
c0de328a:	d119      	bne.n	c0de32c0 <getTextWidth+0x8c>
c0de328c:	2508      	movs	r5, #8
c0de328e:	2008      	movs	r0, #8
c0de3290:	e013      	b.n	c0de32ba <getTextWidth+0x86>
c0de3292:	9801      	ldr	r0, [sp, #4]
c0de3294:	b9b8      	cbnz	r0, c0de32c6 <getTextWidth+0x92>
c0de3296:	f04f 0800 	mov.w	r8, #0
c0de329a:	e011      	b.n	c0de32c0 <getTextWidth+0x8c>
c0de329c:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de32a0:	4630      	mov	r0, r6
c0de32a2:	f000 f819 	bl	c0de32d8 <getCharWidth>
c0de32a6:	4480      	add	r8, r0
c0de32a8:	b2a1      	uxth	r1, r4
c0de32aa:	fa1f f088 	uxth.w	r0, r8
c0de32ae:	4288      	cmp	r0, r1
c0de32b0:	bf88      	it	hi
c0de32b2:	4644      	movhi	r4, r8
c0de32b4:	e004      	b.n	c0de32c0 <getTextWidth+0x8c>
c0de32b6:	250a      	movs	r5, #10
c0de32b8:	200a      	movs	r0, #10
c0de32ba:	f006 fecb 	bl	c0dea054 <nbgl_font_getFont>
c0de32be:	4606      	mov	r6, r0
c0de32c0:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de32c4:	e7d2      	b.n	c0de326c <getTextWidth+0x38>
c0de32c6:	b2a0      	uxth	r0, r4
c0de32c8:	b004      	add	sp, #16
c0de32ca:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de32ce <nbgl_getTextWidth>:
c0de32ce:	2200      	movs	r2, #0
c0de32d0:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de32d4:	f7ff bfae 	b.w	c0de3234 <getTextWidth>

c0de32d8 <getCharWidth>:
c0de32d8:	b510      	push	{r4, lr}
c0de32da:	b932      	cbnz	r2, c0de32ea <getCharWidth+0x12>
c0de32dc:	4604      	mov	r4, r0
c0de32de:	7ac0      	ldrb	r0, [r0, #11]
c0de32e0:	4288      	cmp	r0, r1
c0de32e2:	d802      	bhi.n	c0de32ea <getCharWidth+0x12>
c0de32e4:	7b22      	ldrb	r2, [r4, #12]
c0de32e6:	428a      	cmp	r2, r1
c0de32e8:	d202      	bcs.n	c0de32f0 <getCharWidth+0x18>
c0de32ea:	2000      	movs	r0, #0
c0de32ec:	b2c0      	uxtb	r0, r0
c0de32ee:	bd10      	pop	{r4, pc}
c0de32f0:	1a08      	subs	r0, r1, r0
c0de32f2:	6921      	ldr	r1, [r4, #16]
c0de32f4:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de32f8:	f006 fe3c 	bl	c0de9f74 <pic>
c0de32fc:	7900      	ldrb	r0, [r0, #4]
c0de32fe:	7a21      	ldrb	r1, [r4, #8]
c0de3300:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3304:	1a40      	subs	r0, r0, r1
c0de3306:	e7f1      	b.n	c0de32ec <getCharWidth+0x14>

c0de3308 <nbgl_getFontHeight>:
c0de3308:	b580      	push	{r7, lr}
c0de330a:	f7ff ff46 	bl	c0de319a <nbgl_getFont>
c0de330e:	7980      	ldrb	r0, [r0, #6]
c0de3310:	bd80      	pop	{r7, pc}

c0de3312 <nbgl_getFontLineHeight>:
c0de3312:	b580      	push	{r7, lr}
c0de3314:	f7ff ff41 	bl	c0de319a <nbgl_getFont>
c0de3318:	79c0      	ldrb	r0, [r0, #7]
c0de331a:	bd80      	pop	{r7, pc}

c0de331c <nbgl_getTextLength>:
c0de331c:	b510      	push	{r4, lr}
c0de331e:	2100      	movs	r1, #0
c0de3320:	2201      	movs	r2, #1
c0de3322:	f241 4301 	movw	r3, #5121	@ 0x1401
c0de3326:	5c44      	ldrb	r4, [r0, r1]
c0de3328:	2c0c      	cmp	r4, #12
c0de332a:	d805      	bhi.n	c0de3338 <nbgl_getTextLength+0x1c>
c0de332c:	fa02 f404 	lsl.w	r4, r2, r4
c0de3330:	421c      	tst	r4, r3
c0de3332:	bf1c      	itt	ne
c0de3334:	b288      	uxthne	r0, r1
c0de3336:	bd10      	popne	{r4, pc}
c0de3338:	3101      	adds	r1, #1
c0de333a:	e7f4      	b.n	c0de3326 <nbgl_getTextLength+0xa>

c0de333c <nbgl_getTextMaxLenAndWidth>:
c0de333c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3340:	b086      	sub	sp, #24
c0de3342:	461c      	mov	r4, r3
c0de3344:	9203      	str	r2, [sp, #12]
c0de3346:	460f      	mov	r7, r1
c0de3348:	4606      	mov	r6, r0
c0de334a:	9105      	str	r1, [sp, #20]
c0de334c:	f7ff ff25 	bl	c0de319a <nbgl_getFont>
c0de3350:	4605      	mov	r5, r0
c0de3352:	4638      	mov	r0, r7
c0de3354:	f7ff ffe2 	bl	c0de331c <nbgl_getTextLength>
c0de3358:	4680      	mov	r8, r0
c0de335a:	2000      	movs	r0, #0
c0de335c:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de335e:	2100      	movs	r1, #0
c0de3360:	f10d 0b11 	add.w	fp, sp, #17
c0de3364:	9002      	str	r0, [sp, #8]
c0de3366:	2000      	movs	r0, #0
c0de3368:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de336c:	8039      	strh	r1, [r7, #0]
c0de336e:	8021      	strh	r1, [r4, #0]
c0de3370:	9001      	str	r0, [sp, #4]
c0de3372:	ea5f 4008 	movs.w	r0, r8, lsl #16
c0de3376:	d051      	beq.n	c0de341c <nbgl_getTextMaxLenAndWidth+0xe0>
c0de3378:	a805      	add	r0, sp, #20
c0de337a:	f10d 0112 	add.w	r1, sp, #18
c0de337e:	465a      	mov	r2, fp
c0de3380:	f7ff ff0d 	bl	c0de319e <nbgl_popUnicodeChar>
c0de3384:	2808      	cmp	r0, #8
c0de3386:	d029      	beq.n	c0de33dc <nbgl_getTextMaxLenAndWidth+0xa0>
c0de3388:	4682      	mov	sl, r0
c0de338a:	280c      	cmp	r0, #12
c0de338c:	d03f      	beq.n	c0de340e <nbgl_getTextMaxLenAndWidth+0xd2>
c0de338e:	f1ba 0f0a 	cmp.w	sl, #10
c0de3392:	d03c      	beq.n	c0de340e <nbgl_getTextMaxLenAndWidth+0xd2>
c0de3394:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de3398:	4628      	mov	r0, r5
c0de339a:	4651      	mov	r1, sl
c0de339c:	f7ff ff9c 	bl	c0de32d8 <getCharWidth>
c0de33a0:	b340      	cbz	r0, c0de33f4 <nbgl_getTextMaxLenAndWidth+0xb8>
c0de33a2:	990f      	ldr	r1, [sp, #60]	@ 0x3c
c0de33a4:	b149      	cbz	r1, c0de33ba <nbgl_getTextMaxLenAndWidth+0x7e>
c0de33a6:	f1ba 0f20 	cmp.w	sl, #32
c0de33aa:	bf18      	it	ne
c0de33ac:	f1ba 0f5f 	cmpne.w	sl, #95	@ 0x5f
c0de33b0:	d129      	bne.n	c0de3406 <nbgl_getTextMaxLenAndWidth+0xca>
c0de33b2:	8839      	ldrh	r1, [r7, #0]
c0de33b4:	9102      	str	r1, [sp, #8]
c0de33b6:	8821      	ldrh	r1, [r4, #0]
c0de33b8:	9101      	str	r1, [sp, #4]
c0de33ba:	8839      	ldrh	r1, [r7, #0]
c0de33bc:	9a03      	ldr	r2, [sp, #12]
c0de33be:	4401      	add	r1, r0
c0de33c0:	4291      	cmp	r1, r2
c0de33c2:	d82e      	bhi.n	c0de3422 <nbgl_getTextMaxLenAndWidth+0xe6>
c0de33c4:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de33c8:	8823      	ldrh	r3, [r4, #0]
c0de33ca:	eba8 0201 	sub.w	r2, r8, r1
c0de33ce:	4688      	mov	r8, r1
c0de33d0:	441a      	add	r2, r3
c0de33d2:	8022      	strh	r2, [r4, #0]
c0de33d4:	883a      	ldrh	r2, [r7, #0]
c0de33d6:	4410      	add	r0, r2
c0de33d8:	8038      	strh	r0, [r7, #0]
c0de33da:	e7ca      	b.n	c0de3372 <nbgl_getTextMaxLenAndWidth+0x36>
c0de33dc:	b2f0      	uxtb	r0, r6
c0de33de:	280a      	cmp	r0, #10
c0de33e0:	d003      	beq.n	c0de33ea <nbgl_getTextMaxLenAndWidth+0xae>
c0de33e2:	2808      	cmp	r0, #8
c0de33e4:	d106      	bne.n	c0de33f4 <nbgl_getTextMaxLenAndWidth+0xb8>
c0de33e6:	260a      	movs	r6, #10
c0de33e8:	e000      	b.n	c0de33ec <nbgl_getTextMaxLenAndWidth+0xb0>
c0de33ea:	2608      	movs	r6, #8
c0de33ec:	4630      	mov	r0, r6
c0de33ee:	f006 fe31 	bl	c0dea054 <nbgl_font_getFont>
c0de33f2:	4605      	mov	r5, r0
c0de33f4:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de33f8:	8822      	ldrh	r2, [r4, #0]
c0de33fa:	eba8 0100 	sub.w	r1, r8, r0
c0de33fe:	4680      	mov	r8, r0
c0de3400:	4411      	add	r1, r2
c0de3402:	8021      	strh	r1, [r4, #0]
c0de3404:	e7b5      	b.n	c0de3372 <nbgl_getTextMaxLenAndWidth+0x36>
c0de3406:	f1ba 0f2d 	cmp.w	sl, #45	@ 0x2d
c0de340a:	d0d2      	beq.n	c0de33b2 <nbgl_getTextMaxLenAndWidth+0x76>
c0de340c:	e7d5      	b.n	c0de33ba <nbgl_getTextMaxLenAndWidth+0x7e>
c0de340e:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de3412:	8821      	ldrh	r1, [r4, #0]
c0de3414:	eba8 0000 	sub.w	r0, r8, r0
c0de3418:	4408      	add	r0, r1
c0de341a:	8020      	strh	r0, [r4, #0]
c0de341c:	b006      	add	sp, #24
c0de341e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3422:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de3424:	9902      	ldr	r1, [sp, #8]
c0de3426:	2800      	cmp	r0, #0
c0de3428:	d0f8      	beq.n	c0de341c <nbgl_getTextMaxLenAndWidth+0xe0>
c0de342a:	2900      	cmp	r1, #0
c0de342c:	d0f6      	beq.n	c0de341c <nbgl_getTextMaxLenAndWidth+0xe0>
c0de342e:	9801      	ldr	r0, [sp, #4]
c0de3430:	3001      	adds	r0, #1
c0de3432:	8020      	strh	r0, [r4, #0]
c0de3434:	8039      	strh	r1, [r7, #0]
c0de3436:	e7f1      	b.n	c0de341c <nbgl_getTextMaxLenAndWidth+0xe0>

c0de3438 <nbgl_getTextMaxLenInNbLines>:
c0de3438:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de343c:	b086      	sub	sp, #24
c0de343e:	461d      	mov	r5, r3
c0de3440:	9202      	str	r2, [sp, #8]
c0de3442:	460e      	mov	r6, r1
c0de3444:	4607      	mov	r7, r0
c0de3446:	9105      	str	r1, [sp, #20]
c0de3448:	f7ff fea7 	bl	c0de319a <nbgl_getFont>
c0de344c:	4604      	mov	r4, r0
c0de344e:	4630      	mov	r0, r6
c0de3450:	9601      	str	r6, [sp, #4]
c0de3452:	f007 f9e9 	bl	c0dea828 <strlen>
c0de3456:	f8dd a03c 	ldr.w	sl, [sp, #60]	@ 0x3c
c0de345a:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de345e:	2100      	movs	r1, #0
c0de3460:	b280      	uxth	r0, r0
c0de3462:	f04f 0b00 	mov.w	fp, #0
c0de3466:	f04f 0800 	mov.w	r8, #0
c0de346a:	9103      	str	r1, [sp, #12]
c0de346c:	2800      	cmp	r0, #0
c0de346e:	d066      	beq.n	c0de353e <nbgl_getTextMaxLenInNbLines+0x106>
c0de3470:	0428      	lsls	r0, r5, #16
c0de3472:	d064      	beq.n	c0de353e <nbgl_getTextMaxLenInNbLines+0x106>
c0de3474:	9e05      	ldr	r6, [sp, #20]
c0de3476:	a805      	add	r0, sp, #20
c0de3478:	f10d 0112 	add.w	r1, sp, #18
c0de347c:	f10d 0211 	add.w	r2, sp, #17
c0de3480:	f7ff fe8d 	bl	c0de319e <nbgl_popUnicodeChar>
c0de3484:	4601      	mov	r1, r0
c0de3486:	f1ba 0f00 	cmp.w	sl, #0
c0de348a:	d012      	beq.n	c0de34b2 <nbgl_getTextMaxLenInNbLines+0x7a>
c0de348c:	f1a1 0008 	sub.w	r0, r1, #8
c0de3490:	2818      	cmp	r0, #24
c0de3492:	d805      	bhi.n	c0de34a0 <nbgl_getTextMaxLenInNbLines+0x68>
c0de3494:	2201      	movs	r2, #1
c0de3496:	fa02 f000 	lsl.w	r0, r2, r0
c0de349a:	4a2f      	ldr	r2, [pc, #188]	@ (c0de3558 <nbgl_getTextMaxLenInNbLines+0x120>)
c0de349c:	4210      	tst	r0, r2
c0de349e:	d103      	bne.n	c0de34a8 <nbgl_getTextMaxLenInNbLines+0x70>
c0de34a0:	295f      	cmp	r1, #95	@ 0x5f
c0de34a2:	d001      	beq.n	c0de34a8 <nbgl_getTextMaxLenInNbLines+0x70>
c0de34a4:	292d      	cmp	r1, #45	@ 0x2d
c0de34a6:	d104      	bne.n	c0de34b2 <nbgl_getTextMaxLenInNbLines+0x7a>
c0de34a8:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de34ac:	f8dd b014 	ldr.w	fp, [sp, #20]
c0de34b0:	9003      	str	r0, [sp, #12]
c0de34b2:	2908      	cmp	r1, #8
c0de34b4:	d01d      	beq.n	c0de34f2 <nbgl_getTextMaxLenInNbLines+0xba>
c0de34b6:	290a      	cmp	r1, #10
c0de34b8:	d023      	beq.n	c0de3502 <nbgl_getTextMaxLenInNbLines+0xca>
c0de34ba:	290c      	cmp	r1, #12
c0de34bc:	d03e      	beq.n	c0de353c <nbgl_getTextMaxLenInNbLines+0x104>
c0de34be:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de34c2:	4620      	mov	r0, r4
c0de34c4:	f7ff ff08 	bl	c0de32d8 <getCharWidth>
c0de34c8:	b3a8      	cbz	r0, c0de3536 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de34ca:	fa1f f188 	uxth.w	r1, r8
c0de34ce:	eb00 0801 	add.w	r8, r0, r1
c0de34d2:	9802      	ldr	r0, [sp, #8]
c0de34d4:	4580      	cmp	r8, r0
c0de34d6:	d92e      	bls.n	c0de3536 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de34d8:	f1ba 0f00 	cmp.w	sl, #0
c0de34dc:	bf18      	it	ne
c0de34de:	f1bb 0f00 	cmpne.w	fp, #0
c0de34e2:	d11e      	bne.n	c0de3522 <nbgl_getTextMaxLenInNbLines+0xea>
c0de34e4:	9805      	ldr	r0, [sp, #20]
c0de34e6:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de34ea:	9605      	str	r6, [sp, #20]
c0de34ec:	1b80      	subs	r0, r0, r6
c0de34ee:	4408      	add	r0, r1
c0de34f0:	e01c      	b.n	c0de352c <nbgl_getTextMaxLenInNbLines+0xf4>
c0de34f2:	b2f8      	uxtb	r0, r7
c0de34f4:	2808      	cmp	r0, #8
c0de34f6:	d00e      	beq.n	c0de3516 <nbgl_getTextMaxLenInNbLines+0xde>
c0de34f8:	280a      	cmp	r0, #10
c0de34fa:	d11c      	bne.n	c0de3536 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de34fc:	2708      	movs	r7, #8
c0de34fe:	2008      	movs	r0, #8
c0de3500:	e00b      	b.n	c0de351a <nbgl_getTextMaxLenInNbLines+0xe2>
c0de3502:	3d01      	subs	r5, #1
c0de3504:	0428      	lsls	r0, r5, #16
c0de3506:	d114      	bne.n	c0de3532 <nbgl_getTextMaxLenInNbLines+0xfa>
c0de3508:	9805      	ldr	r0, [sp, #20]
c0de350a:	f04f 0800 	mov.w	r8, #0
c0de350e:	2500      	movs	r5, #0
c0de3510:	3801      	subs	r0, #1
c0de3512:	9005      	str	r0, [sp, #20]
c0de3514:	e00f      	b.n	c0de3536 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3516:	270a      	movs	r7, #10
c0de3518:	200a      	movs	r0, #10
c0de351a:	f006 fd9b 	bl	c0dea054 <nbgl_font_getFont>
c0de351e:	4604      	mov	r4, r0
c0de3520:	e009      	b.n	c0de3536 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3522:	9803      	ldr	r0, [sp, #12]
c0de3524:	f8cd b014 	str.w	fp, [sp, #20]
c0de3528:	f04f 0b00 	mov.w	fp, #0
c0de352c:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de3530:	3d01      	subs	r5, #1
c0de3532:	f04f 0800 	mov.w	r8, #0
c0de3536:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de353a:	e797      	b.n	c0de346c <nbgl_getTextMaxLenInNbLines+0x34>
c0de353c:	2500      	movs	r5, #0
c0de353e:	9805      	ldr	r0, [sp, #20]
c0de3540:	9901      	ldr	r1, [sp, #4]
c0de3542:	1a40      	subs	r0, r0, r1
c0de3544:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de3546:	8008      	strh	r0, [r1, #0]
c0de3548:	b2a8      	uxth	r0, r5
c0de354a:	fab0 f080 	clz	r0, r0
c0de354e:	0940      	lsrs	r0, r0, #5
c0de3550:	b006      	add	sp, #24
c0de3552:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3556:	bf00      	nop
c0de3558:	01000015 	.word	0x01000015

c0de355c <nbgl_getTextMaxLenAndWidthFromEnd>:
c0de355c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3560:	461c      	mov	r4, r3
c0de3562:	4690      	mov	r8, r2
c0de3564:	460e      	mov	r6, r1
c0de3566:	f7ff fe18 	bl	c0de319a <nbgl_getFont>
c0de356a:	4682      	mov	sl, r0
c0de356c:	4630      	mov	r0, r6
c0de356e:	f7ff fed5 	bl	c0de331c <nbgl_getTextLength>
c0de3572:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de3576:	4607      	mov	r7, r0
c0de3578:	2000      	movs	r0, #0
c0de357a:	f8ab 0000 	strh.w	r0, [fp]
c0de357e:	8020      	strh	r0, [r4, #0]
c0de3580:	463d      	mov	r5, r7
c0de3582:	b33f      	cbz	r7, c0de35d4 <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de3584:	1e6f      	subs	r7, r5, #1
c0de3586:	b2b8      	uxth	r0, r7
c0de3588:	5c30      	ldrb	r0, [r6, r0]
c0de358a:	280a      	cmp	r0, #10
c0de358c:	d01f      	beq.n	c0de35ce <nbgl_getTextMaxLenAndWidthFromEnd+0x72>
c0de358e:	f89a 100b 	ldrb.w	r1, [sl, #11]
c0de3592:	4288      	cmp	r0, r1
c0de3594:	d3f4      	bcc.n	c0de3580 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de3596:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de359a:	4290      	cmp	r0, r2
c0de359c:	d8f0      	bhi.n	c0de3580 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de359e:	1a40      	subs	r0, r0, r1
c0de35a0:	f8da 1010 	ldr.w	r1, [sl, #16]
c0de35a4:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de35a8:	f006 fce4 	bl	c0de9f74 <pic>
c0de35ac:	6840      	ldr	r0, [r0, #4]
c0de35ae:	f8bb 1000 	ldrh.w	r1, [fp]
c0de35b2:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de35b6:	4401      	add	r1, r0
c0de35b8:	4541      	cmp	r1, r8
c0de35ba:	d80b      	bhi.n	c0de35d4 <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de35bc:	8821      	ldrh	r1, [r4, #0]
c0de35be:	3101      	adds	r1, #1
c0de35c0:	8021      	strh	r1, [r4, #0]
c0de35c2:	f8bb 1000 	ldrh.w	r1, [fp]
c0de35c6:	4408      	add	r0, r1
c0de35c8:	f8ab 0000 	strh.w	r0, [fp]
c0de35cc:	e7d8      	b.n	c0de3580 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de35ce:	8820      	ldrh	r0, [r4, #0]
c0de35d0:	3001      	adds	r0, #1
c0de35d2:	e7d4      	b.n	c0de357e <nbgl_getTextMaxLenAndWidthFromEnd+0x22>
c0de35d4:	2d00      	cmp	r5, #0
c0de35d6:	bf18      	it	ne
c0de35d8:	2501      	movne	r5, #1
c0de35da:	4628      	mov	r0, r5
c0de35dc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de35e0 <nbgl_getTextNbLinesInWidth>:
c0de35e0:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de35e4:	461c      	mov	r4, r3
c0de35e6:	9200      	str	r2, [sp, #0]
c0de35e8:	460d      	mov	r5, r1
c0de35ea:	4606      	mov	r6, r0
c0de35ec:	9103      	str	r1, [sp, #12]
c0de35ee:	f7ff fdd4 	bl	c0de319a <nbgl_getFont>
c0de35f2:	4607      	mov	r7, r0
c0de35f4:	4628      	mov	r0, r5
c0de35f6:	f007 f917 	bl	c0dea828 <strlen>
c0de35fa:	2100      	movs	r1, #0
c0de35fc:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de3600:	b280      	uxth	r0, r0
c0de3602:	f04f 0b00 	mov.w	fp, #0
c0de3606:	f04f 0800 	mov.w	r8, #0
c0de360a:	f04f 0a00 	mov.w	sl, #0
c0de360e:	9101      	str	r1, [sp, #4]
c0de3610:	2800      	cmp	r0, #0
c0de3612:	d056      	beq.n	c0de36c2 <nbgl_getTextNbLinesInWidth+0xe2>
c0de3614:	9d03      	ldr	r5, [sp, #12]
c0de3616:	a803      	add	r0, sp, #12
c0de3618:	f10d 010a 	add.w	r1, sp, #10
c0de361c:	f10d 0209 	add.w	r2, sp, #9
c0de3620:	f7ff fdbd 	bl	c0de319e <nbgl_popUnicodeChar>
c0de3624:	4601      	mov	r1, r0
c0de3626:	b18c      	cbz	r4, c0de364c <nbgl_getTextNbLinesInWidth+0x6c>
c0de3628:	f1a1 0008 	sub.w	r0, r1, #8
c0de362c:	2818      	cmp	r0, #24
c0de362e:	d805      	bhi.n	c0de363c <nbgl_getTextNbLinesInWidth+0x5c>
c0de3630:	2201      	movs	r2, #1
c0de3632:	fa02 f000 	lsl.w	r0, r2, r0
c0de3636:	4a28      	ldr	r2, [pc, #160]	@ (c0de36d8 <nbgl_getTextNbLinesInWidth+0xf8>)
c0de3638:	4210      	tst	r0, r2
c0de363a:	d103      	bne.n	c0de3644 <nbgl_getTextNbLinesInWidth+0x64>
c0de363c:	295f      	cmp	r1, #95	@ 0x5f
c0de363e:	d001      	beq.n	c0de3644 <nbgl_getTextNbLinesInWidth+0x64>
c0de3640:	292d      	cmp	r1, #45	@ 0x2d
c0de3642:	d103      	bne.n	c0de364c <nbgl_getTextNbLinesInWidth+0x6c>
c0de3644:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de3648:	46aa      	mov	sl, r5
c0de364a:	9001      	str	r0, [sp, #4]
c0de364c:	2908      	cmp	r1, #8
c0de364e:	d021      	beq.n	c0de3694 <nbgl_getTextNbLinesInWidth+0xb4>
c0de3650:	290a      	cmp	r1, #10
c0de3652:	d027      	beq.n	c0de36a4 <nbgl_getTextNbLinesInWidth+0xc4>
c0de3654:	290c      	cmp	r1, #12
c0de3656:	d034      	beq.n	c0de36c2 <nbgl_getTextNbLinesInWidth+0xe2>
c0de3658:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de365c:	4638      	mov	r0, r7
c0de365e:	f7ff fe3b 	bl	c0de32d8 <getCharWidth>
c0de3662:	b358      	cbz	r0, c0de36bc <nbgl_getTextNbLinesInWidth+0xdc>
c0de3664:	fa1f f18b 	uxth.w	r1, fp
c0de3668:	eb00 0b01 	add.w	fp, r0, r1
c0de366c:	9900      	ldr	r1, [sp, #0]
c0de366e:	458b      	cmp	fp, r1
c0de3670:	d924      	bls.n	c0de36bc <nbgl_getTextNbLinesInWidth+0xdc>
c0de3672:	b15c      	cbz	r4, c0de368c <nbgl_getTextNbLinesInWidth+0xac>
c0de3674:	f1ba 0f00 	cmp.w	sl, #0
c0de3678:	d008      	beq.n	c0de368c <nbgl_getTextNbLinesInWidth+0xac>
c0de367a:	9801      	ldr	r0, [sp, #4]
c0de367c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de3680:	f10a 0001 	add.w	r0, sl, #1
c0de3684:	f04f 0a00 	mov.w	sl, #0
c0de3688:	9003      	str	r0, [sp, #12]
c0de368a:	2000      	movs	r0, #0
c0de368c:	f108 0801 	add.w	r8, r8, #1
c0de3690:	4683      	mov	fp, r0
c0de3692:	e013      	b.n	c0de36bc <nbgl_getTextNbLinesInWidth+0xdc>
c0de3694:	b2f0      	uxtb	r0, r6
c0de3696:	2808      	cmp	r0, #8
c0de3698:	d00b      	beq.n	c0de36b2 <nbgl_getTextNbLinesInWidth+0xd2>
c0de369a:	280a      	cmp	r0, #10
c0de369c:	d10e      	bne.n	c0de36bc <nbgl_getTextNbLinesInWidth+0xdc>
c0de369e:	2608      	movs	r6, #8
c0de36a0:	2008      	movs	r0, #8
c0de36a2:	e008      	b.n	c0de36b6 <nbgl_getTextNbLinesInWidth+0xd6>
c0de36a4:	f108 0801 	add.w	r8, r8, #1
c0de36a8:	f04f 0b00 	mov.w	fp, #0
c0de36ac:	f04f 0a00 	mov.w	sl, #0
c0de36b0:	e004      	b.n	c0de36bc <nbgl_getTextNbLinesInWidth+0xdc>
c0de36b2:	260a      	movs	r6, #10
c0de36b4:	200a      	movs	r0, #10
c0de36b6:	f006 fccd 	bl	c0dea054 <nbgl_font_getFont>
c0de36ba:	4607      	mov	r7, r0
c0de36bc:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de36c0:	e7a6      	b.n	c0de3610 <nbgl_getTextNbLinesInWidth+0x30>
c0de36c2:	ea5f 400b 	movs.w	r0, fp, lsl #16
c0de36c6:	bf18      	it	ne
c0de36c8:	f108 0801 	addne.w	r8, r8, #1
c0de36cc:	fa1f f088 	uxth.w	r0, r8
c0de36d0:	b004      	add	sp, #16
c0de36d2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de36d6:	bf00      	nop
c0de36d8:	01000015 	.word	0x01000015

c0de36dc <nbgl_getTextNbPagesInWidth>:
c0de36dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36e0:	b086      	sub	sp, #24
c0de36e2:	e9cd 3200 	strd	r3, r2, [sp]
c0de36e6:	460c      	mov	r4, r1
c0de36e8:	9105      	str	r1, [sp, #20]
c0de36ea:	9003      	str	r0, [sp, #12]
c0de36ec:	f7ff fd55 	bl	c0de319a <nbgl_getFont>
c0de36f0:	9002      	str	r0, [sp, #8]
c0de36f2:	4620      	mov	r0, r4
c0de36f4:	f007 f898 	bl	c0dea828 <strlen>
c0de36f8:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de36fc:	b280      	uxth	r0, r0
c0de36fe:	2600      	movs	r6, #0
c0de3700:	f10d 0711 	add.w	r7, sp, #17
c0de3704:	f04f 0b00 	mov.w	fp, #0
c0de3708:	f04f 0801 	mov.w	r8, #1
c0de370c:	2500      	movs	r5, #0
c0de370e:	f04f 0a00 	mov.w	sl, #0
c0de3712:	2800      	cmp	r0, #0
c0de3714:	d06e      	beq.n	c0de37f4 <nbgl_getTextNbPagesInWidth+0x118>
c0de3716:	9c05      	ldr	r4, [sp, #20]
c0de3718:	a805      	add	r0, sp, #20
c0de371a:	f10d 0112 	add.w	r1, sp, #18
c0de371e:	463a      	mov	r2, r7
c0de3720:	f7ff fd3d 	bl	c0de319e <nbgl_popUnicodeChar>
c0de3724:	4601      	mov	r1, r0
c0de3726:	3808      	subs	r0, #8
c0de3728:	2818      	cmp	r0, #24
c0de372a:	d814      	bhi.n	c0de3756 <nbgl_getTextNbPagesInWidth+0x7a>
c0de372c:	2201      	movs	r2, #1
c0de372e:	fa02 f000 	lsl.w	r0, r2, r0
c0de3732:	4a33      	ldr	r2, [pc, #204]	@ (c0de3800 <nbgl_getTextNbPagesInWidth+0x124>)
c0de3734:	4210      	tst	r0, r2
c0de3736:	d00e      	beq.n	c0de3756 <nbgl_getTextNbPagesInWidth+0x7a>
c0de3738:	f8bd a012 	ldrh.w	sl, [sp, #18]
c0de373c:	4625      	mov	r5, r4
c0de373e:	2908      	cmp	r1, #8
c0de3740:	d024      	beq.n	c0de378c <nbgl_getTextNbPagesInWidth+0xb0>
c0de3742:	290a      	cmp	r1, #10
c0de3744:	d00c      	beq.n	c0de3760 <nbgl_getTextNbPagesInWidth+0x84>
c0de3746:	290c      	cmp	r1, #12
c0de3748:	d12a      	bne.n	c0de37a0 <nbgl_getTextNbPagesInWidth+0xc4>
c0de374a:	f108 0801 	add.w	r8, r8, #1
c0de374e:	2600      	movs	r6, #0
c0de3750:	f04f 0b00 	mov.w	fp, #0
c0de3754:	e048      	b.n	c0de37e8 <nbgl_getTextNbPagesInWidth+0x10c>
c0de3756:	295f      	cmp	r1, #95	@ 0x5f
c0de3758:	d0ee      	beq.n	c0de3738 <nbgl_getTextNbPagesInWidth+0x5c>
c0de375a:	292d      	cmp	r1, #45	@ 0x2d
c0de375c:	d0ec      	beq.n	c0de3738 <nbgl_getTextNbPagesInWidth+0x5c>
c0de375e:	e7ee      	b.n	c0de373e <nbgl_getTextNbPagesInWidth+0x62>
c0de3760:	f10b 0b01 	add.w	fp, fp, #1
c0de3764:	9901      	ldr	r1, [sp, #4]
c0de3766:	fa1f f08b 	uxth.w	r0, fp
c0de376a:	1a40      	subs	r0, r0, r1
c0de376c:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de3770:	fab0 f080 	clz	r0, r0
c0de3774:	0940      	lsrs	r0, r0, #5
c0de3776:	2900      	cmp	r1, #0
c0de3778:	bf18      	it	ne
c0de377a:	2101      	movne	r1, #1
c0de377c:	4008      	ands	r0, r1
c0de377e:	bf18      	it	ne
c0de3780:	f04f 0b00 	movne.w	fp, #0
c0de3784:	4480      	add	r8, r0
c0de3786:	2600      	movs	r6, #0
c0de3788:	2500      	movs	r5, #0
c0de378a:	e02d      	b.n	c0de37e8 <nbgl_getTextNbPagesInWidth+0x10c>
c0de378c:	9803      	ldr	r0, [sp, #12]
c0de378e:	b2c0      	uxtb	r0, r0
c0de3790:	2808      	cmp	r0, #8
c0de3792:	d023      	beq.n	c0de37dc <nbgl_getTextNbPagesInWidth+0x100>
c0de3794:	280a      	cmp	r0, #10
c0de3796:	d127      	bne.n	c0de37e8 <nbgl_getTextNbPagesInWidth+0x10c>
c0de3798:	2008      	movs	r0, #8
c0de379a:	9003      	str	r0, [sp, #12]
c0de379c:	2008      	movs	r0, #8
c0de379e:	e020      	b.n	c0de37e2 <nbgl_getTextNbPagesInWidth+0x106>
c0de37a0:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de37a4:	9802      	ldr	r0, [sp, #8]
c0de37a6:	f7ff fd97 	bl	c0de32d8 <getCharWidth>
c0de37aa:	b1e8      	cbz	r0, c0de37e8 <nbgl_getTextNbPagesInWidth+0x10c>
c0de37ac:	b2b1      	uxth	r1, r6
c0de37ae:	1846      	adds	r6, r0, r1
c0de37b0:	9900      	ldr	r1, [sp, #0]
c0de37b2:	428e      	cmp	r6, r1
c0de37b4:	d918      	bls.n	c0de37e8 <nbgl_getTextNbPagesInWidth+0x10c>
c0de37b6:	b125      	cbz	r5, c0de37c2 <nbgl_getTextNbPagesInWidth+0xe6>
c0de37b8:	1c68      	adds	r0, r5, #1
c0de37ba:	f8ad a012 	strh.w	sl, [sp, #18]
c0de37be:	9005      	str	r0, [sp, #20]
c0de37c0:	2000      	movs	r0, #0
c0de37c2:	f10b 0b01 	add.w	fp, fp, #1
c0de37c6:	9a01      	ldr	r2, [sp, #4]
c0de37c8:	fa1f f18b 	uxth.w	r1, fp
c0de37cc:	4291      	cmp	r1, r2
c0de37ce:	d10e      	bne.n	c0de37ee <nbgl_getTextNbPagesInWidth+0x112>
c0de37d0:	f108 0801 	add.w	r8, r8, #1
c0de37d4:	f04f 0b00 	mov.w	fp, #0
c0de37d8:	4606      	mov	r6, r0
c0de37da:	e7d5      	b.n	c0de3788 <nbgl_getTextNbPagesInWidth+0xac>
c0de37dc:	200a      	movs	r0, #10
c0de37de:	9003      	str	r0, [sp, #12]
c0de37e0:	200a      	movs	r0, #10
c0de37e2:	f006 fc37 	bl	c0dea054 <nbgl_font_getFont>
c0de37e6:	9002      	str	r0, [sp, #8]
c0de37e8:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de37ec:	e791      	b.n	c0de3712 <nbgl_getTextNbPagesInWidth+0x36>
c0de37ee:	2500      	movs	r5, #0
c0de37f0:	4606      	mov	r6, r0
c0de37f2:	e7f9      	b.n	c0de37e8 <nbgl_getTextNbPagesInWidth+0x10c>
c0de37f4:	fa5f f088 	uxtb.w	r0, r8
c0de37f8:	b006      	add	sp, #24
c0de37fa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de37fe:	bf00      	nop
c0de3800:	01000015 	.word	0x01000015

c0de3804 <nbgl_textReduceOnNbLines>:
c0de3804:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3808:	b088      	sub	sp, #32
c0de380a:	469a      	mov	sl, r3
c0de380c:	4614      	mov	r4, r2
c0de380e:	460e      	mov	r6, r1
c0de3810:	4607      	mov	r7, r0
c0de3812:	f7ff fcc2 	bl	c0de319a <nbgl_getFont>
c0de3816:	4683      	mov	fp, r0
c0de3818:	4630      	mov	r0, r6
c0de381a:	f007 f805 	bl	c0dea828 <strlen>
c0de381e:	4945      	ldr	r1, [pc, #276]	@ (c0de3934 <nbgl_textReduceOnNbLines+0x130>)
c0de3820:	4680      	mov	r8, r0
c0de3822:	4638      	mov	r0, r7
c0de3824:	4479      	add	r1, pc
c0de3826:	f7ff fd52 	bl	c0de32ce <nbgl_getTextWidth>
c0de382a:	ea5f 71ca 	movs.w	r1, sl, lsl #31
c0de382e:	d050      	beq.n	c0de38d2 <nbgl_textReduceOnNbLines+0xce>
c0de3830:	f8cd b01c 	str.w	fp, [sp, #28]
c0de3834:	f04f 0b01 	mov.w	fp, #1
c0de3838:	1a20      	subs	r0, r4, r0
c0de383a:	4625      	mov	r5, r4
c0de383c:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	@ 0x40
c0de3840:	9106      	str	r1, [sp, #24]
c0de3842:	eb0b 015a 	add.w	r1, fp, sl, lsr #1
c0de3846:	9103      	str	r1, [sp, #12]
c0de3848:	2102      	movs	r1, #2
c0de384a:	fb90 f0f1 	sdiv	r0, r0, r1
c0de384e:	ea4f 015a 	mov.w	r1, sl, lsr #1
c0de3852:	f04f 0a00 	mov.w	sl, #0
c0de3856:	b280      	uxth	r0, r0
c0de3858:	9002      	str	r0, [sp, #8]
c0de385a:	9101      	str	r1, [sp, #4]
c0de385c:	fa1f f188 	uxth.w	r1, r8
c0de3860:	4610      	mov	r0, r2
c0de3862:	f04f 0800 	mov.w	r8, #0
c0de3866:	e9cd 2104 	strd	r2, r1, [sp, #16]
c0de386a:	4582      	cmp	sl, r0
c0de386c:	f04f 0000 	mov.w	r0, #0
c0de3870:	bf38      	it	cc
c0de3872:	2001      	movcc	r0, #1
c0de3874:	458a      	cmp	sl, r1
c0de3876:	f04f 0100 	mov.w	r1, #0
c0de387a:	bf38      	it	cc
c0de387c:	2101      	movcc	r1, #1
c0de387e:	ea01 0400 	and.w	r4, r1, r0
c0de3882:	b314      	cbz	r4, c0de38ca <nbgl_textReduceOnNbLines+0xc6>
c0de3884:	f816 700a 	ldrb.w	r7, [r6, sl]
c0de3888:	9807      	ldr	r0, [sp, #28]
c0de388a:	2200      	movs	r2, #0
c0de388c:	4639      	mov	r1, r7
c0de388e:	f7ff fd23 	bl	c0de32d8 <getCharWidth>
c0de3892:	b190      	cbz	r0, c0de38ba <nbgl_textReduceOnNbLines+0xb6>
c0de3894:	fa1f f188 	uxth.w	r1, r8
c0de3898:	eb00 0801 	add.w	r8, r0, r1
c0de389c:	45a8      	cmp	r8, r5
c0de389e:	d904      	bls.n	c0de38aa <nbgl_textReduceOnNbLines+0xa6>
c0de38a0:	f10b 0b01 	add.w	fp, fp, #1
c0de38a4:	f04f 0800 	mov.w	r8, #0
c0de38a8:	e7eb      	b.n	c0de3882 <nbgl_textReduceOnNbLines+0x7e>
c0de38aa:	9903      	ldr	r1, [sp, #12]
c0de38ac:	fa5f f08b 	uxtb.w	r0, fp
c0de38b0:	4281      	cmp	r1, r0
c0de38b2:	d102      	bne.n	c0de38ba <nbgl_textReduceOnNbLines+0xb6>
c0de38b4:	9802      	ldr	r0, [sp, #8]
c0de38b6:	4580      	cmp	r8, r0
c0de38b8:	d80e      	bhi.n	c0de38d8 <nbgl_textReduceOnNbLines+0xd4>
c0de38ba:	9806      	ldr	r0, [sp, #24]
c0de38bc:	f800 700a 	strb.w	r7, [r0, sl]
c0de38c0:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
c0de38c4:	f10a 0a01 	add.w	sl, sl, #1
c0de38c8:	e7cf      	b.n	c0de386a <nbgl_textReduceOnNbLines+0x66>
c0de38ca:	9906      	ldr	r1, [sp, #24]
c0de38cc:	2000      	movs	r0, #0
c0de38ce:	f801 000a 	strb.w	r0, [r1, sl]
c0de38d2:	b008      	add	sp, #32
c0de38d4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de38d8:	9906      	ldr	r1, [sp, #24]
c0de38da:	202e      	movs	r0, #46	@ 0x2e
c0de38dc:	2400      	movs	r4, #0
c0de38de:	eb01 080a 	add.w	r8, r1, sl
c0de38e2:	f801 000a 	strb.w	r0, [r1, sl]
c0de38e6:	f888 0001 	strb.w	r0, [r8, #1]
c0de38ea:	f808 0c01 	strb.w	r0, [r8, #-1]
c0de38ee:	e9dd 1001 	ldrd	r1, r0, [sp, #4]
c0de38f2:	fb01 0705 	mla	r7, r1, r5, r0
c0de38f6:	9805      	ldr	r0, [sp, #20]
c0de38f8:	2500      	movs	r5, #0
c0de38fa:	eb06 0a00 	add.w	sl, r6, r0
c0de38fe:	9e07      	ldr	r6, [sp, #28]
c0de3900:	b2a0      	uxth	r0, r4
c0de3902:	4287      	cmp	r7, r0
c0de3904:	d90a      	bls.n	c0de391c <nbgl_textReduceOnNbLines+0x118>
c0de3906:	eb0a 0005 	add.w	r0, sl, r5
c0de390a:	2200      	movs	r2, #0
c0de390c:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de3910:	4630      	mov	r0, r6
c0de3912:	f7ff fce1 	bl	c0de32d8 <getCharWidth>
c0de3916:	4404      	add	r4, r0
c0de3918:	3d01      	subs	r5, #1
c0de391a:	e7f1      	b.n	c0de3900 <nbgl_textReduceOnNbLines+0xfc>
c0de391c:	eb0a 0105 	add.w	r1, sl, r5
c0de3920:	f108 0002 	add.w	r0, r8, #2
c0de3924:	f1c5 0201 	rsb	r2, r5, #1
c0de3928:	3101      	adds	r1, #1
c0de392a:	b008      	add	sp, #32
c0de392c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3930:	f006 bf23 	b.w	c0dea77a <__aeabi_memcpy>
c0de3934:	00007403 	.word	0x00007403

c0de3938 <nbgl_layoutGet>:
c0de3938:	b570      	push	{r4, r5, r6, lr}
c0de393a:	4605      	mov	r5, r0
c0de393c:	7800      	ldrb	r0, [r0, #0]
c0de393e:	b148      	cbz	r0, c0de3954 <nbgl_layoutGet+0x1c>
c0de3940:	4819      	ldr	r0, [pc, #100]	@ (c0de39a8 <nbgl_layoutGet+0x70>)
c0de3942:	eb09 0100 	add.w	r1, r9, r0
c0de3946:	7b8a      	ldrb	r2, [r1, #14]
c0de3948:	b152      	cbz	r2, c0de3960 <nbgl_layoutGet+0x28>
c0de394a:	4448      	add	r0, r9
c0de394c:	7e81      	ldrb	r1, [r0, #26]
c0de394e:	b151      	cbz	r1, c0de3966 <nbgl_layoutGet+0x2e>
c0de3950:	2400      	movs	r4, #0
c0de3952:	e026      	b.n	c0de39a2 <nbgl_layoutGet+0x6a>
c0de3954:	4814      	ldr	r0, [pc, #80]	@ (c0de39a8 <nbgl_layoutGet+0x70>)
c0de3956:	eb09 0400 	add.w	r4, r9, r0
c0de395a:	2000      	movs	r0, #0
c0de395c:	70a0      	strb	r0, [r4, #2]
c0de395e:	e004      	b.n	c0de396a <nbgl_layoutGet+0x32>
c0de3960:	f101 040c 	add.w	r4, r1, #12
c0de3964:	e001      	b.n	c0de396a <nbgl_layoutGet+0x32>
c0de3966:	f100 0418 	add.w	r4, r0, #24
c0de396a:	2000      	movs	r0, #0
c0de396c:	4626      	mov	r6, r4
c0de396e:	60a0      	str	r0, [r4, #8]
c0de3970:	6020      	str	r0, [r4, #0]
c0de3972:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3976:	6868      	ldr	r0, [r5, #4]
c0de3978:	f006 fafc 	bl	c0de9f74 <pic>
c0de397c:	60a0      	str	r0, [r4, #8]
c0de397e:	7828      	ldrb	r0, [r5, #0]
c0de3980:	f105 0208 	add.w	r2, r5, #8
c0de3984:	7020      	strb	r0, [r4, #0]
c0de3986:	4b09      	ldr	r3, [pc, #36]	@ (c0de39ac <nbgl_layoutGet+0x74>)
c0de3988:	447b      	add	r3, pc
c0de398a:	b120      	cbz	r0, c0de3996 <nbgl_layoutGet+0x5e>
c0de398c:	4630      	mov	r0, r6
c0de398e:	2107      	movs	r1, #7
c0de3990:	f001 ff5e 	bl	c0de5850 <nbgl_screenPush>
c0de3994:	e004      	b.n	c0de39a0 <nbgl_layoutGet+0x68>
c0de3996:	4630      	mov	r0, r6
c0de3998:	2107      	movs	r1, #7
c0de399a:	f001 fea1 	bl	c0de56e0 <nbgl_screenSet>
c0de399e:	2000      	movs	r0, #0
c0de39a0:	7060      	strb	r0, [r4, #1]
c0de39a2:	4620      	mov	r0, r4
c0de39a4:	bd70      	pop	{r4, r5, r6, pc}
c0de39a6:	bf00      	nop
c0de39a8:	000003f0 	.word	0x000003f0
c0de39ac:	00000025 	.word	0x00000025

c0de39b0 <buttonCallback>:
c0de39b0:	b5b0      	push	{r4, r5, r7, lr}
c0de39b2:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de39b6:	4811      	ldr	r0, [pc, #68]	@ (c0de39fc <buttonCallback+0x4c>)
c0de39b8:	2302      	movs	r3, #2
c0de39ba:	1c5c      	adds	r4, r3, #1
c0de39bc:	d01d      	beq.n	c0de39fa <buttonCallback+0x4a>
c0de39be:	b2dc      	uxtb	r4, r3
c0de39c0:	eb09 0500 	add.w	r5, r9, r0
c0de39c4:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de39c8:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de39cc:	786d      	ldrb	r5, [r5, #1]
c0de39ce:	42aa      	cmp	r2, r5
c0de39d0:	d105      	bne.n	c0de39de <buttonCallback+0x2e>
c0de39d2:	eb09 0500 	add.w	r5, r9, r0
c0de39d6:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de39da:	78ad      	ldrb	r5, [r5, #2]
c0de39dc:	b90d      	cbnz	r5, c0de39e2 <buttonCallback+0x32>
c0de39de:	3b01      	subs	r3, #1
c0de39e0:	e7eb      	b.n	c0de39ba <buttonCallback+0xa>
c0de39e2:	eb09 0200 	add.w	r2, r9, r0
c0de39e6:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de39ea:	6892      	ldr	r2, [r2, #8]
c0de39ec:	b12a      	cbz	r2, c0de39fa <buttonCallback+0x4a>
c0de39ee:	4448      	add	r0, r9
c0de39f0:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de39f4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de39f8:	4710      	bx	r2
c0de39fa:	bdb0      	pop	{r4, r5, r7, pc}
c0de39fc:	000003f0 	.word	0x000003f0

c0de3a00 <nbgl_layoutAddNavigation>:
c0de3a00:	b570      	push	{r4, r5, r6, lr}
c0de3a02:	2800      	cmp	r0, #0
c0de3a04:	d04d      	beq.n	c0de3aa2 <nbgl_layoutAddNavigation+0xa2>
c0de3a06:	460d      	mov	r5, r1
c0de3a08:	7849      	ldrb	r1, [r1, #1]
c0de3a0a:	4604      	mov	r4, r0
c0de3a0c:	07c8      	lsls	r0, r1, #31
c0de3a0e:	d022      	beq.n	c0de3a56 <nbgl_layoutAddNavigation+0x56>
c0de3a10:	7861      	ldrb	r1, [r4, #1]
c0de3a12:	2002      	movs	r0, #2
c0de3a14:	f001 fd90 	bl	c0de5538 <nbgl_objPoolGet>
c0de3a18:	782a      	ldrb	r2, [r5, #0]
c0de3a1a:	7869      	ldrb	r1, [r5, #1]
c0de3a1c:	4b23      	ldr	r3, [pc, #140]	@ (c0de3aac <nbgl_layoutAddNavigation+0xac>)
c0de3a1e:	4e24      	ldr	r6, [pc, #144]	@ (c0de3ab0 <nbgl_layoutAddNavigation+0xb0>)
c0de3a20:	2a00      	cmp	r2, #0
c0de3a22:	447b      	add	r3, pc
c0de3a24:	447e      	add	r6, pc
c0de3a26:	4602      	mov	r2, r0
c0de3a28:	bf08      	it	eq
c0de3a2a:	461e      	moveq	r6, r3
c0de3a2c:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3a30:	0e33      	lsrs	r3, r6, #24
c0de3a32:	70d3      	strb	r3, [r2, #3]
c0de3a34:	0c33      	lsrs	r3, r6, #16
c0de3a36:	7093      	strb	r3, [r2, #2]
c0de3a38:	0a32      	lsrs	r2, r6, #8
c0de3a3a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3a3e:	6862      	ldr	r2, [r4, #4]
c0de3a40:	78a3      	ldrb	r3, [r4, #2]
c0de3a42:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3a46:	2203      	movs	r2, #3
c0de3a48:	77c2      	strb	r2, [r0, #31]
c0de3a4a:	2204      	movs	r2, #4
c0de3a4c:	7582      	strb	r2, [r0, #22]
c0de3a4e:	2200      	movs	r2, #0
c0de3a50:	7242      	strb	r2, [r0, #9]
c0de3a52:	1c58      	adds	r0, r3, #1
c0de3a54:	70a0      	strb	r0, [r4, #2]
c0de3a56:	0788      	lsls	r0, r1, #30
c0de3a58:	f04f 0600 	mov.w	r6, #0
c0de3a5c:	d523      	bpl.n	c0de3aa6 <nbgl_layoutAddNavigation+0xa6>
c0de3a5e:	7861      	ldrb	r1, [r4, #1]
c0de3a60:	2002      	movs	r0, #2
c0de3a62:	f001 fd69 	bl	c0de5538 <nbgl_objPoolGet>
c0de3a66:	7829      	ldrb	r1, [r5, #0]
c0de3a68:	4a12      	ldr	r2, [pc, #72]	@ (c0de3ab4 <nbgl_layoutAddNavigation+0xb4>)
c0de3a6a:	4b13      	ldr	r3, [pc, #76]	@ (c0de3ab8 <nbgl_layoutAddNavigation+0xb8>)
c0de3a6c:	2900      	cmp	r1, #0
c0de3a6e:	447a      	add	r2, pc
c0de3a70:	447b      	add	r3, pc
c0de3a72:	4601      	mov	r1, r0
c0de3a74:	bf08      	it	eq
c0de3a76:	4613      	moveq	r3, r2
c0de3a78:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3a7c:	0e1a      	lsrs	r2, r3, #24
c0de3a7e:	7246      	strb	r6, [r0, #9]
c0de3a80:	70ca      	strb	r2, [r1, #3]
c0de3a82:	0c1a      	lsrs	r2, r3, #16
c0de3a84:	708a      	strb	r2, [r1, #2]
c0de3a86:	0a19      	lsrs	r1, r3, #8
c0de3a88:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3a8c:	6861      	ldr	r1, [r4, #4]
c0de3a8e:	78a2      	ldrb	r2, [r4, #2]
c0de3a90:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3a94:	2103      	movs	r1, #3
c0de3a96:	77c1      	strb	r1, [r0, #31]
c0de3a98:	2106      	movs	r1, #6
c0de3a9a:	7581      	strb	r1, [r0, #22]
c0de3a9c:	1c50      	adds	r0, r2, #1
c0de3a9e:	70a0      	strb	r0, [r4, #2]
c0de3aa0:	e001      	b.n	c0de3aa6 <nbgl_layoutAddNavigation+0xa6>
c0de3aa2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3aa6:	4630      	mov	r0, r6
c0de3aa8:	bd70      	pop	{r4, r5, r6, pc}
c0de3aaa:	bf00      	nop
c0de3aac:	00006f70 	.word	0x00006f70
c0de3ab0:	00006fad 	.word	0x00006fad
c0de3ab4:	00006f55 	.word	0x00006f55
c0de3ab8:	00006f14 	.word	0x00006f14

c0de3abc <nbgl_layoutAddText>:
c0de3abc:	2800      	cmp	r0, #0
c0de3abe:	f000 8135 	beq.w	c0de3d2c <nbgl_layoutAddText+0x270>
c0de3ac2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ac6:	b088      	sub	sp, #32
c0de3ac8:	460e      	mov	r6, r1
c0de3aca:	7841      	ldrb	r1, [r0, #1]
c0de3acc:	4605      	mov	r5, r0
c0de3ace:	2001      	movs	r0, #1
c0de3ad0:	4617      	mov	r7, r2
c0de3ad2:	461c      	mov	r4, r3
c0de3ad4:	f001 fd30 	bl	c0de5538 <nbgl_objPoolGet>
c0de3ad8:	4680      	mov	r8, r0
c0de3ada:	2003      	movs	r0, #3
c0de3adc:	2f00      	cmp	r7, #0
c0de3ade:	bf08      	it	eq
c0de3ae0:	2001      	moveq	r0, #1
c0de3ae2:	7869      	ldrb	r1, [r5, #1]
c0de3ae4:	f888 0020 	strb.w	r0, [r8, #32]
c0de3ae8:	f001 fd88 	bl	c0de55fc <nbgl_containerPoolGet>
c0de3aec:	4641      	mov	r1, r8
c0de3aee:	0e02      	lsrs	r2, r0, #24
c0de3af0:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3af4:	f04f 0b00 	mov.w	fp, #0
c0de3af8:	9704      	str	r7, [sp, #16]
c0de3afa:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3afe:	f888 a004 	strb.w	sl, [r8, #4]
c0de3b02:	f888 b005 	strb.w	fp, [r8, #5]
c0de3b06:	70ca      	strb	r2, [r1, #3]
c0de3b08:	0c02      	lsrs	r2, r0, #16
c0de3b0a:	0a00      	lsrs	r0, r0, #8
c0de3b0c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3b10:	708a      	strb	r2, [r1, #2]
c0de3b12:	2004      	movs	r0, #4
c0de3b14:	7869      	ldrb	r1, [r5, #1]
c0de3b16:	f001 fd0f 	bl	c0de5538 <nbgl_objPoolGet>
c0de3b1a:	4607      	mov	r7, r0
c0de3b1c:	2003      	movs	r0, #3
c0de3b1e:	77f8      	strb	r0, [r7, #31]
c0de3b20:	4630      	mov	r0, r6
c0de3b22:	f006 fa27 	bl	c0de9f74 <pic>
c0de3b26:	4601      	mov	r1, r0
c0de3b28:	2008      	movs	r0, #8
c0de3b2a:	f887 a004 	strb.w	sl, [r7, #4]
c0de3b2e:	f887 b005 	strb.w	fp, [r7, #5]
c0de3b32:	9403      	str	r4, [sp, #12]
c0de3b34:	f04f 0a01 	mov.w	sl, #1
c0de3b38:	2c00      	cmp	r4, #0
c0de3b3a:	bf08      	it	eq
c0de3b3c:	200a      	moveq	r0, #10
c0de3b3e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3b42:	2205      	movs	r2, #5
c0de3b44:	0e0b      	lsrs	r3, r1, #24
c0de3b46:	f887 2020 	strb.w	r2, [r7, #32]
c0de3b4a:	463a      	mov	r2, r7
c0de3b4c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3b50:	70d3      	strb	r3, [r2, #3]
c0de3b52:	0c0b      	lsrs	r3, r1, #16
c0de3b54:	7093      	strb	r3, [r2, #2]
c0de3b56:	0a0a      	lsrs	r2, r1, #8
c0de3b58:	2301      	movs	r3, #1
c0de3b5a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3b5e:	2272      	movs	r2, #114	@ 0x72
c0de3b60:	f7ff fd3e 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de3b64:	4606      	mov	r6, r0
c0de3b66:	2805      	cmp	r0, #5
c0de3b68:	9505      	str	r5, [sp, #20]
c0de3b6a:	d31d      	bcc.n	c0de3ba8 <nbgl_layoutAddText+0xec>
c0de3b6c:	463e      	mov	r6, r7
c0de3b6e:	2004      	movs	r0, #4
c0de3b70:	f10d 051e 	add.w	r5, sp, #30
c0de3b74:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de3b78:	7872      	ldrb	r2, [r6, #1]
c0de3b7a:	78b3      	ldrb	r3, [r6, #2]
c0de3b7c:	78f4      	ldrb	r4, [r6, #3]
c0de3b7e:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3b82:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3b86:	9500      	str	r5, [sp, #0]
c0de3b88:	9d05      	ldr	r5, [sp, #20]
c0de3b8a:	f8cd a004 	str.w	sl, [sp, #4]
c0de3b8e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3b92:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3b96:	2304      	movs	r3, #4
c0de3b98:	f000 fc60 	bl	c0de445c <OUTLINED_FUNCTION_4>
c0de3b9c:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3ba0:	7130      	strb	r0, [r6, #4]
c0de3ba2:	0a00      	lsrs	r0, r0, #8
c0de3ba4:	7170      	strb	r0, [r6, #5]
c0de3ba6:	2604      	movs	r6, #4
c0de3ba8:	f000 fc60 	bl	c0de446c <OUTLINED_FUNCTION_6>
c0de3bac:	4683      	mov	fp, r0
c0de3bae:	2002      	movs	r0, #2
c0de3bb0:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de3bb4:	9c04      	ldr	r4, [sp, #16]
c0de3bb6:	75b8      	strb	r0, [r7, #22]
c0de3bb8:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3bbc:	2c00      	cmp	r4, #0
c0de3bbe:	fb06 fa00 	mul.w	sl, r6, r0
c0de3bc2:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3bc6:	f887 a006 	strb.w	sl, [r7, #6]
c0de3bca:	71f8      	strb	r0, [r7, #7]
c0de3bcc:	4640      	mov	r0, r8
c0de3bce:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3bd2:	7842      	ldrb	r2, [r0, #1]
c0de3bd4:	7883      	ldrb	r3, [r0, #2]
c0de3bd6:	78c0      	ldrb	r0, [r0, #3]
c0de3bd8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3bdc:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3be0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3be4:	6007      	str	r7, [r0, #0]
c0de3be6:	f000 8106 	beq.w	c0de3df6 <nbgl_layoutAddText+0x33a>
c0de3bea:	9803      	ldr	r0, [sp, #12]
c0de3bec:	7869      	ldrb	r1, [r5, #1]
c0de3bee:	2802      	cmp	r0, #2
c0de3bf0:	f040 809e 	bne.w	c0de3d30 <nbgl_layoutAddText+0x274>
c0de3bf4:	2005      	movs	r0, #5
c0de3bf6:	2505      	movs	r5, #5
c0de3bf8:	f001 fc9e 	bl	c0de5538 <nbgl_objPoolGet>
c0de3bfc:	2600      	movs	r6, #0
c0de3bfe:	4607      	mov	r7, r0
c0de3c00:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3c04:	2001      	movs	r0, #1
c0de3c06:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3c0a:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3c0e:	f000 fc3c 	bl	c0de448a <OUTLINED_FUNCTION_9>
c0de3c12:	4620      	mov	r0, r4
c0de3c14:	f006 f9ae 	bl	c0de9f74 <pic>
c0de3c18:	4601      	mov	r1, r0
c0de3c1a:	200e      	movs	r0, #14
c0de3c1c:	71fe      	strb	r6, [r7, #7]
c0de3c1e:	75bd      	strb	r5, [r7, #22]
c0de3c20:	f000 fbf1 	bl	c0de4406 <OUTLINED_FUNCTION_1>
c0de3c24:	2865      	cmp	r0, #101	@ 0x65
c0de3c26:	f240 80d6 	bls.w	c0de3dd6 <nbgl_layoutAddText+0x31a>
c0de3c2a:	46bb      	mov	fp, r7
c0de3c2c:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3c30:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3c34:	2401      	movs	r4, #1
c0de3c36:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3c3a:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3c3e:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3c42:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3c46:	ae06      	add	r6, sp, #24
c0de3c48:	e9cd 6400 	strd	r6, r4, [sp]
c0de3c4c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3c50:	f10d 031a 	add.w	r3, sp, #26
c0de3c54:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3c58:	2266      	movs	r2, #102	@ 0x66
c0de3c5a:	f7ff fb6f 	bl	c0de333c <nbgl_getTextMaxLenAndWidth>
c0de3c5e:	f8bd 4018 	ldrh.w	r4, [sp, #24]
c0de3c62:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3c66:	4655      	mov	r5, sl
c0de3c68:	f104 000c 	add.w	r0, r4, #12
c0de3c6c:	7138      	strb	r0, [r7, #4]
c0de3c6e:	0a00      	lsrs	r0, r0, #8
c0de3c70:	7178      	strb	r0, [r7, #5]
c0de3c72:	486b      	ldr	r0, [pc, #428]	@ (c0de3e20 <nbgl_layoutAddText+0x364>)
c0de3c74:	2e13      	cmp	r6, #19
c0de3c76:	bf28      	it	cs
c0de3c78:	2613      	movcs	r6, #19
c0de3c7a:	f89b 1000 	ldrb.w	r1, [fp]
c0de3c7e:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3c82:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3c86:	eb09 0a00 	add.w	sl, r9, r0
c0de3c8a:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3c8e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3c92:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3c96:	4632      	mov	r2, r6
c0de3c98:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3c9c:	4650      	mov	r0, sl
c0de3c9e:	f006 fd6c 	bl	c0dea77a <__aeabi_memcpy>
c0de3ca2:	2000      	movs	r0, #0
c0de3ca4:	f80a 0006 	strb.w	r0, [sl, r6]
c0de3ca8:	76b8      	strb	r0, [r7, #26]
c0de3caa:	2001      	movs	r0, #1
c0de3cac:	f88b a000 	strb.w	sl, [fp]
c0de3cb0:	7678      	strb	r0, [r7, #25]
c0de3cb2:	ea4f 601a 	mov.w	r0, sl, lsr #24
c0de3cb6:	2c00      	cmp	r4, #0
c0de3cb8:	f88b 0003 	strb.w	r0, [fp, #3]
c0de3cbc:	ea4f 401a 	mov.w	r0, sl, lsr #16
c0de3cc0:	f88b 0002 	strb.w	r0, [fp, #2]
c0de3cc4:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3cc8:	46aa      	mov	sl, r5
c0de3cca:	9d05      	ldr	r5, [sp, #20]
c0de3ccc:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3cd0:	4640      	mov	r0, r8
c0de3cd2:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3cd6:	7842      	ldrb	r2, [r0, #1]
c0de3cd8:	7883      	ldrb	r3, [r0, #2]
c0de3cda:	78c0      	ldrb	r0, [r0, #3]
c0de3cdc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3ce0:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3ce4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3ce8:	6047      	str	r7, [r0, #4]
c0de3cea:	f000 8082 	beq.w	c0de3df2 <nbgl_layoutAddText+0x336>
c0de3cee:	7869      	ldrb	r1, [r5, #1]
c0de3cf0:	2005      	movs	r0, #5
c0de3cf2:	2605      	movs	r6, #5
c0de3cf4:	f001 fc20 	bl	c0de5538 <nbgl_objPoolGet>
c0de3cf8:	2500      	movs	r5, #0
c0de3cfa:	4607      	mov	r7, r0
c0de3cfc:	9904      	ldr	r1, [sp, #16]
c0de3cfe:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3d02:	2001      	movs	r0, #1
c0de3d04:	f000 fbc1 	bl	c0de448a <OUTLINED_FUNCTION_9>
c0de3d08:	f8bd 001a 	ldrh.w	r0, [sp, #26]
c0de3d0c:	4408      	add	r0, r1
c0de3d0e:	f006 f931 	bl	c0de9f74 <pic>
c0de3d12:	4601      	mov	r1, r0
c0de3d14:	200e      	movs	r0, #14
c0de3d16:	71fd      	strb	r5, [r7, #7]
c0de3d18:	f000 fb75 	bl	c0de4406 <OUTLINED_FUNCTION_1>
c0de3d1c:	300c      	adds	r0, #12
c0de3d1e:	210f      	movs	r1, #15
c0de3d20:	75be      	strb	r6, [r7, #22]
c0de3d22:	7138      	strb	r0, [r7, #4]
c0de3d24:	0a00      	lsrs	r0, r0, #8
c0de3d26:	7178      	strb	r0, [r7, #5]
c0de3d28:	2002      	movs	r0, #2
c0de3d2a:	e05a      	b.n	c0de3de2 <nbgl_layoutAddText+0x326>
c0de3d2c:	f000 bbaa 	b.w	c0de4484 <OUTLINED_FUNCTION_8>
c0de3d30:	f000 fb99 	bl	c0de4466 <OUTLINED_FUNCTION_5>
c0de3d34:	2603      	movs	r6, #3
c0de3d36:	4607      	mov	r7, r0
c0de3d38:	77c6      	strb	r6, [r0, #31]
c0de3d3a:	4620      	mov	r0, r4
c0de3d3c:	f006 f91a 	bl	c0de9f74 <pic>
c0de3d40:	4601      	mov	r1, r0
c0de3d42:	2072      	movs	r0, #114	@ 0x72
c0de3d44:	2400      	movs	r4, #0
c0de3d46:	2301      	movs	r3, #1
c0de3d48:	7138      	strb	r0, [r7, #4]
c0de3d4a:	2001      	movs	r0, #1
c0de3d4c:	0e0a      	lsrs	r2, r1, #24
c0de3d4e:	717c      	strb	r4, [r7, #5]
c0de3d50:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3d54:	200a      	movs	r0, #10
c0de3d56:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3d5a:	f000 fb65 	bl	c0de4428 <OUTLINED_FUNCTION_2>
c0de3d5e:	2804      	cmp	r0, #4
c0de3d60:	d31e      	bcc.n	c0de3da0 <nbgl_layoutAddText+0x2e4>
c0de3d62:	463d      	mov	r5, r7
c0de3d64:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3d68:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3d6c:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3d70:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3d74:	78ab      	ldrb	r3, [r5, #2]
c0de3d76:	78e9      	ldrb	r1, [r5, #3]
c0de3d78:	aa07      	add	r2, sp, #28
c0de3d7a:	9200      	str	r2, [sp, #0]
c0de3d7c:	2201      	movs	r2, #1
c0de3d7e:	9201      	str	r2, [sp, #4]
c0de3d80:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3d84:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3d88:	2303      	movs	r3, #3
c0de3d8a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3d8e:	2272      	movs	r2, #114	@ 0x72
c0de3d90:	f7ff fb52 	bl	c0de3438 <nbgl_getTextMaxLenInNbLines>
c0de3d94:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3d98:	7128      	strb	r0, [r5, #4]
c0de3d9a:	0a00      	lsrs	r0, r0, #8
c0de3d9c:	7168      	strb	r0, [r5, #5]
c0de3d9e:	2003      	movs	r0, #3
c0de3da0:	9903      	ldr	r1, [sp, #12]
c0de3da2:	2900      	cmp	r1, #0
c0de3da4:	bf08      	it	eq
c0de3da6:	4606      	moveq	r6, r0
c0de3da8:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3dac:	76bc      	strb	r4, [r7, #26]
c0de3dae:	75bc      	strb	r4, [r7, #22]
c0de3db0:	fb06 f100 	mul.w	r1, r6, r0
c0de3db4:	fb06 a000 	mla	r0, r6, r0, sl
c0de3db8:	71b9      	strb	r1, [r7, #6]
c0de3dba:	0a09      	lsrs	r1, r1, #8
c0de3dbc:	71f9      	strb	r1, [r7, #7]
c0de3dbe:	2102      	movs	r1, #2
c0de3dc0:	f100 0a02 	add.w	sl, r0, #2
c0de3dc4:	7679      	strb	r1, [r7, #25]
c0de3dc6:	2105      	movs	r1, #5
c0de3dc8:	f887 1020 	strb.w	r1, [r7, #32]
c0de3dcc:	4641      	mov	r1, r8
c0de3dce:	f000 fb38 	bl	c0de4442 <OUTLINED_FUNCTION_3>
c0de3dd2:	604f      	str	r7, [r1, #4]
c0de3dd4:	e00f      	b.n	c0de3df6 <nbgl_layoutAddText+0x33a>
c0de3dd6:	300c      	adds	r0, #12
c0de3dd8:	2108      	movs	r1, #8
c0de3dda:	7138      	strb	r0, [r7, #4]
c0de3ddc:	0a00      	lsrs	r0, r0, #8
c0de3dde:	7178      	strb	r0, [r7, #5]
c0de3de0:	2001      	movs	r0, #1
c0de3de2:	2200      	movs	r2, #0
c0de3de4:	7679      	strb	r1, [r7, #25]
c0de3de6:	4641      	mov	r1, r8
c0de3de8:	76ba      	strb	r2, [r7, #26]
c0de3dea:	f000 fb2a 	bl	c0de4442 <OUTLINED_FUNCTION_3>
c0de3dee:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3df2:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3df6:	6868      	ldr	r0, [r5, #4]
c0de3df8:	78a9      	ldrb	r1, [r5, #2]
c0de3dfa:	2205      	movs	r2, #5
c0de3dfc:	f888 2016 	strb.w	r2, [r8, #22]
c0de3e00:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3e04:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3e08:	2000      	movs	r0, #0
c0de3e0a:	3101      	adds	r1, #1
c0de3e0c:	f888 a006 	strb.w	sl, [r8, #6]
c0de3e10:	f888 2007 	strb.w	r2, [r8, #7]
c0de3e14:	f888 001f 	strb.w	r0, [r8, #31]
c0de3e18:	70a9      	strb	r1, [r5, #2]
c0de3e1a:	b008      	add	sp, #32
c0de3e1c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3e20:	00000414 	.word	0x00000414

c0de3e24 <nbgl_layoutAddMenuList>:
c0de3e24:	2800      	cmp	r0, #0
c0de3e26:	d04f      	beq.n	c0de3ec8 <nbgl_layoutAddMenuList+0xa4>
c0de3e28:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3e2c:	460c      	mov	r4, r1
c0de3e2e:	4605      	mov	r5, r0
c0de3e30:	2700      	movs	r7, #0
c0de3e32:	f04f 0b05 	mov.w	fp, #5
c0de3e36:	f04f 0803 	mov.w	r8, #3
c0de3e3a:	f04f 0a00 	mov.w	sl, #0
c0de3e3e:	7920      	ldrb	r0, [r4, #4]
c0de3e40:	4582      	cmp	sl, r0
c0de3e42:	d23e      	bcs.n	c0de3ec2 <nbgl_layoutAddMenuList+0x9e>
c0de3e44:	7960      	ldrb	r0, [r4, #5]
c0de3e46:	2803      	cmp	r0, #3
c0de3e48:	d302      	bcc.n	c0de3e50 <nbgl_layoutAddMenuList+0x2c>
c0de3e4a:	1e81      	subs	r1, r0, #2
c0de3e4c:	4551      	cmp	r1, sl
c0de3e4e:	dc35      	bgt.n	c0de3ebc <nbgl_layoutAddMenuList+0x98>
c0de3e50:	3002      	adds	r0, #2
c0de3e52:	4550      	cmp	r0, sl
c0de3e54:	d332      	bcc.n	c0de3ebc <nbgl_layoutAddMenuList+0x98>
c0de3e56:	7869      	ldrb	r1, [r5, #1]
c0de3e58:	f000 fb05 	bl	c0de4466 <OUTLINED_FUNCTION_5>
c0de3e5c:	6821      	ldr	r1, [r4, #0]
c0de3e5e:	4606      	mov	r6, r0
c0de3e60:	fa5f f08a 	uxtb.w	r0, sl
c0de3e64:	4788      	blx	r1
c0de3e66:	7961      	ldrb	r1, [r4, #5]
c0de3e68:	220a      	movs	r2, #10
c0de3e6a:	458a      	cmp	sl, r1
c0de3e6c:	bf08      	it	eq
c0de3e6e:	2208      	moveq	r2, #8
c0de3e70:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3e74:	71f7      	strb	r7, [r6, #7]
c0de3e76:	7177      	strb	r7, [r6, #5]
c0de3e78:	f886 b020 	strb.w	fp, [r6, #32]
c0de3e7c:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3e80:	f886 b016 	strb.w	fp, [r6, #22]
c0de3e84:	f886 801f 	strb.w	r8, [r6, #31]
c0de3e88:	4632      	mov	r2, r6
c0de3e8a:	0e03      	lsrs	r3, r0, #24
c0de3e8c:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3e90:	70d3      	strb	r3, [r2, #3]
c0de3e92:	0c03      	lsrs	r3, r0, #16
c0de3e94:	0a00      	lsrs	r0, r0, #8
c0de3e96:	7093      	strb	r3, [r2, #2]
c0de3e98:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3e9c:	6868      	ldr	r0, [r5, #4]
c0de3e9e:	78aa      	ldrb	r2, [r5, #2]
c0de3ea0:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3ea4:	200c      	movs	r0, #12
c0de3ea6:	71b0      	strb	r0, [r6, #6]
c0de3ea8:	2072      	movs	r0, #114	@ 0x72
c0de3eaa:	7130      	strb	r0, [r6, #4]
c0de3eac:	ebaa 0001 	sub.w	r0, sl, r1
c0de3eb0:	0901      	lsrs	r1, r0, #4
c0de3eb2:	0100      	lsls	r0, r0, #4
c0de3eb4:	7670      	strb	r0, [r6, #25]
c0de3eb6:	1c50      	adds	r0, r2, #1
c0de3eb8:	76b1      	strb	r1, [r6, #26]
c0de3eba:	70a8      	strb	r0, [r5, #2]
c0de3ebc:	f10a 0a01 	add.w	sl, sl, #1
c0de3ec0:	e7bd      	b.n	c0de3e3e <nbgl_layoutAddMenuList+0x1a>
c0de3ec2:	2000      	movs	r0, #0
c0de3ec4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3ec8:	f000 badc 	b.w	c0de4484 <OUTLINED_FUNCTION_8>

c0de3ecc <nbgl_layoutAddCenteredInfo>:
c0de3ecc:	2800      	cmp	r0, #0
c0de3ece:	f000 80d9 	beq.w	c0de4084 <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3ed2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ed6:	b086      	sub	sp, #24
c0de3ed8:	460c      	mov	r4, r1
c0de3eda:	7841      	ldrb	r1, [r0, #1]
c0de3edc:	4682      	mov	sl, r0
c0de3ede:	2001      	movs	r0, #1
c0de3ee0:	f001 fb2a 	bl	c0de5538 <nbgl_objPoolGet>
c0de3ee4:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3ee8:	4680      	mov	r8, r0
c0de3eea:	2003      	movs	r0, #3
c0de3eec:	2703      	movs	r7, #3
c0de3eee:	f001 fb85 	bl	c0de55fc <nbgl_containerPoolGet>
c0de3ef2:	4641      	mov	r1, r8
c0de3ef4:	0e02      	lsrs	r2, r0, #24
c0de3ef6:	f04f 0b00 	mov.w	fp, #0
c0de3efa:	9404      	str	r4, [sp, #16]
c0de3efc:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3f00:	f888 b020 	strb.w	fp, [r8, #32]
c0de3f04:	70ca      	strb	r2, [r1, #3]
c0de3f06:	0c02      	lsrs	r2, r0, #16
c0de3f08:	0a00      	lsrs	r0, r0, #8
c0de3f0a:	708a      	strb	r2, [r1, #2]
c0de3f0c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3f10:	68a0      	ldr	r0, [r4, #8]
c0de3f12:	b3c0      	cbz	r0, c0de3f86 <nbgl_layoutAddCenteredInfo+0xba>
c0de3f14:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3f18:	2002      	movs	r0, #2
c0de3f1a:	f001 fb0d 	bl	c0de5538 <nbgl_objPoolGet>
c0de3f1e:	4606      	mov	r6, r0
c0de3f20:	77c7      	strb	r7, [r0, #31]
c0de3f22:	68a0      	ldr	r0, [r4, #8]
c0de3f24:	f006 f826 	bl	c0de9f74 <pic>
c0de3f28:	4631      	mov	r1, r6
c0de3f2a:	0e02      	lsrs	r2, r0, #24
c0de3f2c:	f886 b013 	strb.w	fp, [r6, #19]
c0de3f30:	f886 b009 	strb.w	fp, [r6, #9]
c0de3f34:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3f38:	70ca      	strb	r2, [r1, #3]
c0de3f3a:	0c02      	lsrs	r2, r0, #16
c0de3f3c:	708a      	strb	r2, [r1, #2]
c0de3f3e:	0a01      	lsrs	r1, r0, #8
c0de3f40:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3f44:	4631      	mov	r1, r6
c0de3f46:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3f4a:	f881 b003 	strb.w	fp, [r1, #3]
c0de3f4e:	f881 b002 	strb.w	fp, [r1, #2]
c0de3f52:	4641      	mov	r1, r8
c0de3f54:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3f58:	784f      	ldrb	r7, [r1, #1]
c0de3f5a:	788c      	ldrb	r4, [r1, #2]
c0de3f5c:	78cd      	ldrb	r5, [r1, #3]
c0de3f5e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3f62:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3f66:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3f6a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3f6e:	9c04      	ldr	r4, [sp, #16]
c0de3f70:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3f74:	2202      	movs	r2, #2
c0de3f76:	75b2      	strb	r2, [r6, #22]
c0de3f78:	1c5a      	adds	r2, r3, #1
c0de3f7a:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3f7e:	7881      	ldrb	r1, [r0, #2]
c0de3f80:	78c0      	ldrb	r0, [r0, #3]
c0de3f82:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3f86:	6820      	ldr	r0, [r4, #0]
c0de3f88:	2800      	cmp	r0, #0
c0de3f8a:	f000 80a2 	beq.w	c0de40d2 <nbgl_layoutAddCenteredInfo+0x206>
c0de3f8e:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3f92:	f000 fa68 	bl	c0de4466 <OUTLINED_FUNCTION_5>
c0de3f96:	4607      	mov	r7, r0
c0de3f98:	2003      	movs	r0, #3
c0de3f9a:	77f8      	strb	r0, [r7, #31]
c0de3f9c:	6820      	ldr	r0, [r4, #0]
c0de3f9e:	f005 ffe9 	bl	c0de9f74 <pic>
c0de3fa2:	4601      	mov	r1, r0
c0de3fa4:	2072      	movs	r0, #114	@ 0x72
c0de3fa6:	2500      	movs	r5, #0
c0de3fa8:	7138      	strb	r0, [r7, #4]
c0de3faa:	2005      	movs	r0, #5
c0de3fac:	0e0a      	lsrs	r2, r1, #24
c0de3fae:	717d      	strb	r5, [r7, #5]
c0de3fb0:	f887 0020 	strb.w	r0, [r7, #32]
c0de3fb4:	2001      	movs	r0, #1
c0de3fb6:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3fba:	4638      	mov	r0, r7
c0de3fbc:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3fc0:	70c2      	strb	r2, [r0, #3]
c0de3fc2:	0c0a      	lsrs	r2, r1, #16
c0de3fc4:	7082      	strb	r2, [r0, #2]
c0de3fc6:	0a08      	lsrs	r0, r1, #8
c0de3fc8:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3fcc:	2008      	movs	r0, #8
c0de3fce:	7b62      	ldrb	r2, [r4, #13]
c0de3fd0:	2a00      	cmp	r2, #0
c0de3fd2:	bf08      	it	eq
c0de3fd4:	200a      	moveq	r0, #10
c0de3fd6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3fda:	2272      	movs	r2, #114	@ 0x72
c0de3fdc:	2301      	movs	r3, #1
c0de3fde:	f7ff faff 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de3fe2:	4606      	mov	r6, r0
c0de3fe4:	2805      	cmp	r0, #5
c0de3fe6:	d31e      	bcc.n	c0de4026 <nbgl_layoutAddCenteredInfo+0x15a>
c0de3fe8:	463d      	mov	r5, r7
c0de3fea:	2004      	movs	r0, #4
c0de3fec:	2101      	movs	r1, #1
c0de3fee:	f10d 0416 	add.w	r4, sp, #22
c0de3ff2:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3ff6:	786a      	ldrb	r2, [r5, #1]
c0de3ff8:	78ab      	ldrb	r3, [r5, #2]
c0de3ffa:	78ee      	ldrb	r6, [r5, #3]
c0de3ffc:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de4000:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4004:	9101      	str	r1, [sp, #4]
c0de4006:	9400      	str	r4, [sp, #0]
c0de4008:	9c04      	ldr	r4, [sp, #16]
c0de400a:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de400e:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4012:	2304      	movs	r3, #4
c0de4014:	f000 fa22 	bl	c0de445c <OUTLINED_FUNCTION_4>
c0de4018:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de401c:	2604      	movs	r6, #4
c0de401e:	7128      	strb	r0, [r5, #4]
c0de4020:	0a00      	lsrs	r0, r0, #8
c0de4022:	7168      	strb	r0, [r5, #5]
c0de4024:	2500      	movs	r5, #0
c0de4026:	f000 fa21 	bl	c0de446c <OUTLINED_FUNCTION_6>
c0de402a:	79c0      	ldrb	r0, [r0, #7]
c0de402c:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de4030:	4370      	muls	r0, r6
c0de4032:	0a01      	lsrs	r1, r0, #8
c0de4034:	71b8      	strb	r0, [r7, #6]
c0de4036:	71f9      	strb	r1, [r7, #7]
c0de4038:	68a1      	ldr	r1, [r4, #8]
c0de403a:	b329      	cbz	r1, c0de4088 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de403c:	4641      	mov	r1, r8
c0de403e:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4042:	784c      	ldrb	r4, [r1, #1]
c0de4044:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4048:	788d      	ldrb	r5, [r1, #2]
c0de404a:	78c9      	ldrb	r1, [r1, #3]
c0de404c:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4050:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4054:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4058:	463a      	mov	r2, r7
c0de405a:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de405e:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de4062:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4066:	0e0b      	lsrs	r3, r1, #24
c0de4068:	70d3      	strb	r3, [r2, #3]
c0de406a:	0c0b      	lsrs	r3, r1, #16
c0de406c:	0a09      	lsrs	r1, r1, #8
c0de406e:	7051      	strb	r1, [r2, #1]
c0de4070:	2100      	movs	r1, #0
c0de4072:	7093      	strb	r3, [r2, #2]
c0de4074:	7211      	strb	r1, [r2, #8]
c0de4076:	2e03      	cmp	r6, #3
c0de4078:	bf38      	it	cc
c0de407a:	2101      	movcc	r1, #1
c0de407c:	0089      	lsls	r1, r1, #2
c0de407e:	71d1      	strb	r1, [r2, #7]
c0de4080:	2108      	movs	r1, #8
c0de4082:	e00a      	b.n	c0de409a <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4084:	f000 b9fe 	b.w	c0de4484 <OUTLINED_FUNCTION_8>
c0de4088:	6861      	ldr	r1, [r4, #4]
c0de408a:	b119      	cbz	r1, c0de4094 <nbgl_layoutAddCenteredInfo+0x1c8>
c0de408c:	f000 f9f2 	bl	c0de4474 <OUTLINED_FUNCTION_7>
c0de4090:	2102      	movs	r1, #2
c0de4092:	e002      	b.n	c0de409a <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4094:	f000 f9ee 	bl	c0de4474 <OUTLINED_FUNCTION_7>
c0de4098:	2105      	movs	r1, #5
c0de409a:	7111      	strb	r1, [r2, #4]
c0de409c:	4641      	mov	r1, r8
c0de409e:	4458      	add	r0, fp
c0de40a0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de40a4:	784c      	ldrb	r4, [r1, #1]
c0de40a6:	788d      	ldrb	r5, [r1, #2]
c0de40a8:	78ce      	ldrb	r6, [r1, #3]
c0de40aa:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de40ae:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de40b2:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de40b6:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de40ba:	9c04      	ldr	r4, [sp, #16]
c0de40bc:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de40c0:	1c5a      	adds	r2, r3, #1
c0de40c2:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de40c6:	7e79      	ldrb	r1, [r7, #25]
c0de40c8:	7eba      	ldrb	r2, [r7, #26]
c0de40ca:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de40ce:	eb00 0b01 	add.w	fp, r0, r1
c0de40d2:	6860      	ldr	r0, [r4, #4]
c0de40d4:	2800      	cmp	r0, #0
c0de40d6:	d074      	beq.n	c0de41c2 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de40d8:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de40dc:	2004      	movs	r0, #4
c0de40de:	f8cd a00c 	str.w	sl, [sp, #12]
c0de40e2:	f001 fa29 	bl	c0de5538 <nbgl_objPoolGet>
c0de40e6:	2603      	movs	r6, #3
c0de40e8:	4607      	mov	r7, r0
c0de40ea:	77c6      	strb	r6, [r0, #31]
c0de40ec:	6860      	ldr	r0, [r4, #4]
c0de40ee:	f005 ff41 	bl	c0de9f74 <pic>
c0de40f2:	4601      	mov	r1, r0
c0de40f4:	2000      	movs	r0, #0
c0de40f6:	2301      	movs	r3, #1
c0de40f8:	7178      	strb	r0, [r7, #5]
c0de40fa:	2072      	movs	r0, #114	@ 0x72
c0de40fc:	0e0a      	lsrs	r2, r1, #24
c0de40fe:	7138      	strb	r0, [r7, #4]
c0de4100:	200a      	movs	r0, #10
c0de4102:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4106:	2005      	movs	r0, #5
c0de4108:	f887 0020 	strb.w	r0, [r7, #32]
c0de410c:	2001      	movs	r0, #1
c0de410e:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4112:	f000 f989 	bl	c0de4428 <OUTLINED_FUNCTION_2>
c0de4116:	4682      	mov	sl, r0
c0de4118:	2804      	cmp	r0, #4
c0de411a:	d31c      	bcc.n	c0de4156 <nbgl_layoutAddCenteredInfo+0x28a>
c0de411c:	463d      	mov	r5, r7
c0de411e:	f04f 0c01 	mov.w	ip, #1
c0de4122:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de4126:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de412a:	786a      	ldrb	r2, [r5, #1]
c0de412c:	78ab      	ldrb	r3, [r5, #2]
c0de412e:	78ee      	ldrb	r6, [r5, #3]
c0de4130:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4134:	ac05      	add	r4, sp, #20
c0de4136:	e9cd 4c00 	strd	r4, ip, [sp]
c0de413a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de413e:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4142:	2303      	movs	r3, #3
c0de4144:	f000 f98a 	bl	c0de445c <OUTLINED_FUNCTION_4>
c0de4148:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de414c:	f04f 0a03 	mov.w	sl, #3
c0de4150:	7128      	strb	r0, [r5, #4]
c0de4152:	0a00      	lsrs	r0, r0, #8
c0de4154:	7168      	strb	r0, [r5, #5]
c0de4156:	f000 f989 	bl	c0de446c <OUTLINED_FUNCTION_6>
c0de415a:	4641      	mov	r1, r8
c0de415c:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4160:	784c      	ldrb	r4, [r1, #1]
c0de4162:	788d      	ldrb	r5, [r1, #2]
c0de4164:	78ce      	ldrb	r6, [r1, #3]
c0de4166:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de416a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de416e:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4172:	463d      	mov	r5, r7
c0de4174:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4178:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de417c:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4180:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4184:	0e26      	lsrs	r6, r4, #24
c0de4186:	70ee      	strb	r6, [r5, #3]
c0de4188:	0c26      	lsrs	r6, r4, #16
c0de418a:	0a24      	lsrs	r4, r4, #8
c0de418c:	74fc      	strb	r4, [r7, #19]
c0de418e:	70ae      	strb	r6, [r5, #2]
c0de4190:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4194:	2302      	movs	r3, #2
c0de4196:	2400      	movs	r4, #0
c0de4198:	3201      	adds	r2, #1
c0de419a:	767b      	strb	r3, [r7, #25]
c0de419c:	2308      	movs	r3, #8
c0de419e:	76bc      	strb	r4, [r7, #26]
c0de41a0:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de41a4:	79c0      	ldrb	r0, [r0, #7]
c0de41a6:	75bb      	strb	r3, [r7, #22]
c0de41a8:	fb0a f300 	mul.w	r3, sl, r0
c0de41ac:	fb0a b000 	mla	r0, sl, r0, fp
c0de41b0:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de41b4:	71bb      	strb	r3, [r7, #6]
c0de41b6:	0a1b      	lsrs	r3, r3, #8
c0de41b8:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de41bc:	f100 0b02 	add.w	fp, r0, #2
c0de41c0:	71fb      	strb	r3, [r7, #7]
c0de41c2:	7b20      	ldrb	r0, [r4, #12]
c0de41c4:	2102      	movs	r1, #2
c0de41c6:	2800      	cmp	r0, #0
c0de41c8:	bf08      	it	eq
c0de41ca:	2105      	moveq	r1, #5
c0de41cc:	f888 1016 	strb.w	r1, [r8, #22]
c0de41d0:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de41d4:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de41d8:	2272      	movs	r2, #114	@ 0x72
c0de41da:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de41de:	2000      	movs	r0, #0
c0de41e0:	f888 2004 	strb.w	r2, [r8, #4]
c0de41e4:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de41e8:	3101      	adds	r1, #1
c0de41ea:	f888 b006 	strb.w	fp, [r8, #6]
c0de41ee:	f888 0019 	strb.w	r0, [r8, #25]
c0de41f2:	f888 001a 	strb.w	r0, [r8, #26]
c0de41f6:	f888 0005 	strb.w	r0, [r8, #5]
c0de41fa:	f888 001f 	strb.w	r0, [r8, #31]
c0de41fe:	f888 2007 	strb.w	r2, [r8, #7]
c0de4202:	f88a 1002 	strb.w	r1, [sl, #2]
c0de4206:	b006      	add	sp, #24
c0de4208:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de420c <nbgl_layoutAddSwitch>:
c0de420c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4210:	2800      	cmp	r0, #0
c0de4212:	d077      	beq.n	c0de4304 <nbgl_layoutAddSwitch+0xf8>
c0de4214:	468b      	mov	fp, r1
c0de4216:	7841      	ldrb	r1, [r0, #1]
c0de4218:	4604      	mov	r4, r0
c0de421a:	f000 f924 	bl	c0de4466 <OUTLINED_FUNCTION_5>
c0de421e:	f04f 0a03 	mov.w	sl, #3
c0de4222:	4606      	mov	r6, r0
c0de4224:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4228:	f8db 0000 	ldr.w	r0, [fp]
c0de422c:	f005 fea2 	bl	c0de9f74 <pic>
c0de4230:	4601      	mov	r1, r0
c0de4232:	2072      	movs	r0, #114	@ 0x72
c0de4234:	2500      	movs	r5, #0
c0de4236:	f04f 0805 	mov.w	r8, #5
c0de423a:	2301      	movs	r3, #1
c0de423c:	7130      	strb	r0, [r6, #4]
c0de423e:	2008      	movs	r0, #8
c0de4240:	0e0a      	lsrs	r2, r1, #24
c0de4242:	7175      	strb	r5, [r6, #5]
c0de4244:	f886 8020 	strb.w	r8, [r6, #32]
c0de4248:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de424c:	2001      	movs	r0, #1
c0de424e:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4252:	4630      	mov	r0, r6
c0de4254:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4258:	70c2      	strb	r2, [r0, #3]
c0de425a:	0c0a      	lsrs	r2, r1, #16
c0de425c:	7082      	strb	r2, [r0, #2]
c0de425e:	0a08      	lsrs	r0, r1, #8
c0de4260:	2272      	movs	r2, #114	@ 0x72
c0de4262:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4266:	2008      	movs	r0, #8
c0de4268:	f7ff f9ba 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de426c:	2801      	cmp	r0, #1
c0de426e:	d849      	bhi.n	c0de4304 <nbgl_layoutAddSwitch+0xf8>
c0de4270:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4274:	f7ff f84d 	bl	c0de3312 <nbgl_getFontLineHeight>
c0de4278:	6862      	ldr	r2, [r4, #4]
c0de427a:	78a3      	ldrb	r3, [r4, #2]
c0de427c:	7861      	ldrb	r1, [r4, #1]
c0de427e:	76b5      	strb	r5, [r6, #26]
c0de4280:	71f5      	strb	r5, [r6, #7]
c0de4282:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4286:	71b0      	strb	r0, [r6, #6]
c0de4288:	2002      	movs	r0, #2
c0de428a:	f886 a019 	strb.w	sl, [r6, #25]
c0de428e:	75b0      	strb	r0, [r6, #22]
c0de4290:	1c58      	adds	r0, r3, #1
c0de4292:	70a0      	strb	r0, [r4, #2]
c0de4294:	f000 f8e7 	bl	c0de4466 <OUTLINED_FUNCTION_5>
c0de4298:	4607      	mov	r7, r0
c0de429a:	f880 a01f 	strb.w	sl, [r0, #31]
c0de429e:	f8db 0004 	ldr.w	r0, [fp, #4]
c0de42a2:	2672      	movs	r6, #114	@ 0x72
c0de42a4:	f005 fe66 	bl	c0de9f74 <pic>
c0de42a8:	717d      	strb	r5, [r7, #5]
c0de42aa:	463d      	mov	r5, r7
c0de42ac:	210a      	movs	r1, #10
c0de42ae:	713e      	strb	r6, [r7, #4]
c0de42b0:	f887 8020 	strb.w	r8, [r7, #32]
c0de42b4:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de42b8:	f805 0f26 	strb.w	r0, [r5, #38]!
c0de42bc:	0e01      	lsrs	r1, r0, #24
c0de42be:	70e9      	strb	r1, [r5, #3]
c0de42c0:	0c01      	lsrs	r1, r0, #16
c0de42c2:	0a00      	lsrs	r0, r0, #8
c0de42c4:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de42c8:	200a      	movs	r0, #10
c0de42ca:	70a9      	strb	r1, [r5, #2]
c0de42cc:	f7ff f821 	bl	c0de3312 <nbgl_getFontLineHeight>
c0de42d0:	2101      	movs	r1, #1
c0de42d2:	782a      	ldrb	r2, [r5, #0]
c0de42d4:	78ab      	ldrb	r3, [r5, #2]
c0de42d6:	78ed      	ldrb	r5, [r5, #3]
c0de42d8:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de42dc:	09c1      	lsrs	r1, r0, #7
c0de42de:	0040      	lsls	r0, r0, #1
c0de42e0:	71f9      	strb	r1, [r7, #7]
c0de42e2:	f897 1027 	ldrb.w	r1, [r7, #39]	@ 0x27
c0de42e6:	71b8      	strb	r0, [r7, #6]
c0de42e8:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de42ec:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de42f0:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de42f4:	2301      	movs	r3, #1
c0de42f6:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de42fa:	2272      	movs	r2, #114	@ 0x72
c0de42fc:	f7ff f970 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de4300:	2802      	cmp	r0, #2
c0de4302:	d904      	bls.n	c0de430e <nbgl_layoutAddSwitch+0x102>
c0de4304:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de4308:	4630      	mov	r0, r6
c0de430a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de430e:	6860      	ldr	r0, [r4, #4]
c0de4310:	78a2      	ldrb	r2, [r4, #2]
c0de4312:	7861      	ldrb	r1, [r4, #1]
c0de4314:	2501      	movs	r5, #1
c0de4316:	2600      	movs	r6, #0
c0de4318:	76be      	strb	r6, [r7, #26]
c0de431a:	f840 7022 	str.w	r7, [r0, r2, lsl #2]
c0de431e:	2005      	movs	r0, #5
c0de4320:	767d      	strb	r5, [r7, #25]
c0de4322:	75b8      	strb	r0, [r7, #22]
c0de4324:	1c50      	adds	r0, r2, #1
c0de4326:	70a0      	strb	r0, [r4, #2]
c0de4328:	2005      	movs	r0, #5
c0de432a:	f001 f905 	bl	c0de5538 <nbgl_objPoolGet>
c0de432e:	f04f 0a03 	mov.w	sl, #3
c0de4332:	f04f 0808 	mov.w	r8, #8
c0de4336:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de433a:	f880 5022 	strb.w	r5, [r0, #34]	@ 0x22
c0de433e:	4607      	mov	r7, r0
c0de4340:	f880 a020 	strb.w	sl, [r0, #32]
c0de4344:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4348:	f880 8023 	strb.w	r8, [r0, #35]	@ 0x23
c0de434c:	f89b 0008 	ldrb.w	r0, [fp, #8]
c0de4350:	4a1e      	ldr	r2, [pc, #120]	@ (c0de43cc <nbgl_layoutAddSwitch+0x1c0>)
c0de4352:	491f      	ldr	r1, [pc, #124]	@ (c0de43d0 <nbgl_layoutAddSwitch+0x1c4>)
c0de4354:	2801      	cmp	r0, #1
c0de4356:	447a      	add	r2, pc
c0de4358:	4479      	add	r1, pc
c0de435a:	bf08      	it	eq
c0de435c:	4611      	moveq	r1, r2
c0de435e:	463a      	mov	r2, r7
c0de4360:	0e0b      	lsrs	r3, r1, #24
c0de4362:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4366:	70d3      	strb	r3, [r2, #3]
c0de4368:	0c0b      	lsrs	r3, r1, #16
c0de436a:	7093      	strb	r3, [r2, #2]
c0de436c:	0a0a      	lsrs	r2, r1, #8
c0de436e:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4372:	2801      	cmp	r0, #1
c0de4374:	4638      	mov	r0, r7
c0de4376:	4a17      	ldr	r2, [pc, #92]	@ (c0de43d4 <nbgl_layoutAddSwitch+0x1c8>)
c0de4378:	4d17      	ldr	r5, [pc, #92]	@ (c0de43d8 <nbgl_layoutAddSwitch+0x1cc>)
c0de437a:	447a      	add	r2, pc
c0de437c:	447d      	add	r5, pc
c0de437e:	bf18      	it	ne
c0de4380:	462a      	movne	r2, r5
c0de4382:	f800 2f2d 	strb.w	r2, [r0, #45]!
c0de4386:	0e13      	lsrs	r3, r2, #24
c0de4388:	70c3      	strb	r3, [r0, #3]
c0de438a:	0c13      	lsrs	r3, r2, #16
c0de438c:	7083      	strb	r3, [r0, #2]
c0de438e:	0a10      	lsrs	r0, r2, #8
c0de4390:	f887 002e 	strb.w	r0, [r7, #46]	@ 0x2e
c0de4394:	2008      	movs	r0, #8
c0de4396:	f7fe ff9a 	bl	c0de32ce <nbgl_getTextWidth>
c0de439a:	6861      	ldr	r1, [r4, #4]
c0de439c:	78a2      	ldrb	r2, [r4, #2]
c0de439e:	786b      	ldrb	r3, [r5, #1]
c0de43a0:	76be      	strb	r6, [r7, #26]
c0de43a2:	71fe      	strb	r6, [r7, #7]
c0de43a4:	f887 8016 	strb.w	r8, [r7, #22]
c0de43a8:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de43ac:	210c      	movs	r1, #12
c0de43ae:	f887 a019 	strb.w	sl, [r7, #25]
c0de43b2:	71b9      	strb	r1, [r7, #6]
c0de43b4:	7829      	ldrb	r1, [r5, #0]
c0de43b6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de43ba:	4408      	add	r0, r1
c0de43bc:	1c51      	adds	r1, r2, #1
c0de43be:	300a      	adds	r0, #10
c0de43c0:	7138      	strb	r0, [r7, #4]
c0de43c2:	0a00      	lsrs	r0, r0, #8
c0de43c4:	70a1      	strb	r1, [r4, #2]
c0de43c6:	7178      	strb	r0, [r7, #5]
c0de43c8:	e79e      	b.n	c0de4308 <nbgl_layoutAddSwitch+0xfc>
c0de43ca:	bf00      	nop
c0de43cc:	00006821 	.word	0x00006821
c0de43d0:	000068f4 	.word	0x000068f4
c0de43d4:	00006593 	.word	0x00006593
c0de43d8:	0000657b 	.word	0x0000657b

c0de43dc <nbgl_layoutDraw>:
c0de43dc:	b120      	cbz	r0, c0de43e8 <nbgl_layoutDraw+0xc>
c0de43de:	b580      	push	{r7, lr}
c0de43e0:	f001 f960 	bl	c0de56a4 <nbgl_screenRedraw>
c0de43e4:	2000      	movs	r0, #0
c0de43e6:	bd80      	pop	{r7, pc}
c0de43e8:	f000 b84c 	b.w	c0de4484 <OUTLINED_FUNCTION_8>

c0de43ec <nbgl_layoutRelease>:
c0de43ec:	b148      	cbz	r0, c0de4402 <nbgl_layoutRelease+0x16>
c0de43ee:	b510      	push	{r4, lr}
c0de43f0:	4604      	mov	r4, r0
c0de43f2:	7800      	ldrb	r0, [r0, #0]
c0de43f4:	b110      	cbz	r0, c0de43fc <nbgl_layoutRelease+0x10>
c0de43f6:	7860      	ldrb	r0, [r4, #1]
c0de43f8:	f001 faae 	bl	c0de5958 <nbgl_screenPop>
c0de43fc:	2000      	movs	r0, #0
c0de43fe:	70a0      	strb	r0, [r4, #2]
c0de4400:	bd10      	pop	{r4, pc}
c0de4402:	f000 b83f 	b.w	c0de4484 <OUTLINED_FUNCTION_8>

c0de4406 <OUTLINED_FUNCTION_1>:
c0de4406:	71b8      	strb	r0, [r7, #6]
c0de4408:	2008      	movs	r0, #8
c0de440a:	0e0a      	lsrs	r2, r1, #24
c0de440c:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de4410:	4638      	mov	r0, r7
c0de4412:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de4416:	70c2      	strb	r2, [r0, #3]
c0de4418:	0c0a      	lsrs	r2, r1, #16
c0de441a:	7082      	strb	r2, [r0, #2]
c0de441c:	0a08      	lsrs	r0, r1, #8
c0de441e:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4422:	2008      	movs	r0, #8
c0de4424:	f7fe bf53 	b.w	c0de32ce <nbgl_getTextWidth>

c0de4428 <OUTLINED_FUNCTION_2>:
c0de4428:	4638      	mov	r0, r7
c0de442a:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de442e:	70c2      	strb	r2, [r0, #3]
c0de4430:	0c0a      	lsrs	r2, r1, #16
c0de4432:	7082      	strb	r2, [r0, #2]
c0de4434:	0a08      	lsrs	r0, r1, #8
c0de4436:	2272      	movs	r2, #114	@ 0x72
c0de4438:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de443c:	200a      	movs	r0, #10
c0de443e:	f7ff b8cf 	b.w	c0de35e0 <nbgl_getTextNbLinesInWidth>

c0de4442 <OUTLINED_FUNCTION_3>:
c0de4442:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4446:	784b      	ldrb	r3, [r1, #1]
c0de4448:	788d      	ldrb	r5, [r1, #2]
c0de444a:	78c9      	ldrb	r1, [r1, #3]
c0de444c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4450:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4454:	9d05      	ldr	r5, [sp, #20]
c0de4456:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de445a:	4770      	bx	lr

c0de445c <OUTLINED_FUNCTION_4>:
c0de445c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4460:	2272      	movs	r2, #114	@ 0x72
c0de4462:	f7fe bfe9 	b.w	c0de3438 <nbgl_getTextMaxLenInNbLines>

c0de4466 <OUTLINED_FUNCTION_5>:
c0de4466:	2004      	movs	r0, #4
c0de4468:	f001 b866 	b.w	c0de5538 <nbgl_objPoolGet>

c0de446c <OUTLINED_FUNCTION_6>:
c0de446c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4470:	f7fe be93 	b.w	c0de319a <nbgl_getFont>

c0de4474 <OUTLINED_FUNCTION_7>:
c0de4474:	2100      	movs	r1, #0
c0de4476:	463a      	mov	r2, r7
c0de4478:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de447c:	70d1      	strb	r1, [r2, #3]
c0de447e:	7091      	strb	r1, [r2, #2]
c0de4480:	7051      	strb	r1, [r2, #1]
c0de4482:	4770      	bx	lr

c0de4484 <OUTLINED_FUNCTION_8>:
c0de4484:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4488:	4770      	bx	lr

c0de448a <OUTLINED_FUNCTION_9>:
c0de448a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de448e:	2003      	movs	r0, #3
c0de4490:	f887 0020 	strb.w	r0, [r7, #32]
c0de4494:	77f8      	strb	r0, [r7, #31]
c0de4496:	4770      	bx	lr

c0de4498 <nbgl_objDraw>:
c0de4498:	b570      	push	{r4, r5, r6, lr}
c0de449a:	7ec1      	ldrb	r1, [r0, #27]
c0de449c:	4602      	mov	r2, r0
c0de449e:	b191      	cbz	r1, c0de44c6 <nbgl_objDraw+0x2e>
c0de44a0:	4603      	mov	r3, r0
c0de44a2:	461a      	mov	r2, r3
c0de44a4:	f813 4f0e 	ldrb.w	r4, [r3, #14]!
c0de44a8:	785d      	ldrb	r5, [r3, #1]
c0de44aa:	789e      	ldrb	r6, [r3, #2]
c0de44ac:	78db      	ldrb	r3, [r3, #3]
c0de44ae:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de44b2:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de44b6:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de44ba:	2b00      	cmp	r3, #0
c0de44bc:	d1f1      	bne.n	c0de44a2 <nbgl_objDraw+0xa>
c0de44be:	7ed3      	ldrb	r3, [r2, #27]
c0de44c0:	b10b      	cbz	r3, c0de44c6 <nbgl_objDraw+0x2e>
c0de44c2:	2201      	movs	r2, #1
c0de44c4:	e004      	b.n	c0de44d0 <nbgl_objDraw+0x38>
c0de44c6:	f892 203f 	ldrb.w	r2, [r2, #63]	@ 0x3f
c0de44ca:	2a00      	cmp	r2, #0
c0de44cc:	bf18      	it	ne
c0de44ce:	2201      	movne	r2, #1
c0de44d0:	4b06      	ldr	r3, [pc, #24]	@ (c0de44ec <nbgl_objDraw+0x54>)
c0de44d2:	f819 3003 	ldrb.w	r3, [r9, r3]
c0de44d6:	b10b      	cbz	r3, c0de44dc <nbgl_objDraw+0x44>
c0de44d8:	b902      	cbnz	r2, c0de44dc <nbgl_objDraw+0x44>
c0de44da:	bd70      	pop	{r4, r5, r6, pc}
c0de44dc:	fab1 f181 	clz	r1, r1
c0de44e0:	094a      	lsrs	r2, r1, #5
c0de44e2:	2100      	movs	r1, #0
c0de44e4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de44e8:	f000 b802 	b.w	c0de44f0 <draw_obj_and_chidren>
c0de44ec:	00000428 	.word	0x00000428

c0de44f0 <draw_obj_and_chidren>:
c0de44f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de44f4:	4604      	mov	r4, r0
c0de44f6:	7ec0      	ldrb	r0, [r0, #27]
c0de44f8:	2810      	cmp	r0, #16
c0de44fa:	f200 80a9 	bhi.w	c0de4650 <draw_obj_and_chidren+0x160>
c0de44fe:	460e      	mov	r6, r1
c0de4500:	4954      	ldr	r1, [pc, #336]	@ (c0de4654 <draw_obj_and_chidren+0x164>)
c0de4502:	40c1      	lsrs	r1, r0
c0de4504:	07c9      	lsls	r1, r1, #31
c0de4506:	d167      	bne.n	c0de45d8 <draw_obj_and_chidren+0xe8>
c0de4508:	4954      	ldr	r1, [pc, #336]	@ (c0de465c <draw_obj_and_chidren+0x16c>)
c0de450a:	4615      	mov	r5, r2
c0de450c:	4479      	add	r1, pc
c0de450e:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de4512:	f005 fd2f 	bl	c0de9f74 <pic>
c0de4516:	4603      	mov	r3, r0
c0de4518:	4620      	mov	r0, r4
c0de451a:	4631      	mov	r1, r6
c0de451c:	462a      	mov	r2, r5
c0de451e:	4798      	blx	r3
c0de4520:	f8df c134 	ldr.w	ip, [pc, #308]	@ c0de4658 <draw_obj_and_chidren+0x168>
c0de4524:	f994 3001 	ldrsb.w	r3, [r4, #1]
c0de4528:	7827      	ldrb	r7, [r4, #0]
c0de452a:	eb09 050c 	add.w	r5, r9, ip
c0de452e:	f939 100c 	ldrsh.w	r1, [r9, ip]
c0de4532:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
c0de4536:	88ae      	ldrh	r6, [r5, #4]
c0de4538:	1872      	adds	r2, r6, r1
c0de453a:	428f      	cmp	r7, r1
c0de453c:	da07      	bge.n	c0de454e <draw_obj_and_chidren+0x5e>
c0de453e:	ea27 71e7 	bic.w	r1, r7, r7, asr #31
c0de4542:	f829 100c 	strh.w	r1, [r9, ip]
c0de4546:	7823      	ldrb	r3, [r4, #0]
c0de4548:	7867      	ldrb	r7, [r4, #1]
c0de454a:	ea43 2707 	orr.w	r7, r3, r7, lsl #8
c0de454e:	f9b5 3002 	ldrsh.w	r3, [r5, #2]
c0de4552:	f8b5 e006 	ldrh.w	lr, [r5, #6]
c0de4556:	7920      	ldrb	r0, [r4, #4]
c0de4558:	7965      	ldrb	r5, [r4, #5]
c0de455a:	b23f      	sxth	r7, r7
c0de455c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de4560:	4407      	add	r7, r0
c0de4562:	b210      	sxth	r0, r2
c0de4564:	4287      	cmp	r7, r0
c0de4566:	dc00      	bgt.n	c0de456a <draw_obj_and_chidren+0x7a>
c0de4568:	b91e      	cbnz	r6, c0de4572 <draw_obj_and_chidren+0x82>
c0de456a:	2f80      	cmp	r7, #128	@ 0x80
c0de456c:	bfa8      	it	ge
c0de456e:	2780      	movge	r7, #128	@ 0x80
c0de4570:	463a      	mov	r2, r7
c0de4572:	f994 0003 	ldrsb.w	r0, [r4, #3]
c0de4576:	78a5      	ldrb	r5, [r4, #2]
c0de4578:	eb0e 0603 	add.w	r6, lr, r3
c0de457c:	ea45 2700 	orr.w	r7, r5, r0, lsl #8
c0de4580:	429f      	cmp	r7, r3
c0de4582:	da08      	bge.n	c0de4596 <draw_obj_and_chidren+0xa6>
c0de4584:	eb09 000c 	add.w	r0, r9, ip
c0de4588:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
c0de458c:	8043      	strh	r3, [r0, #2]
c0de458e:	78a0      	ldrb	r0, [r4, #2]
c0de4590:	78e5      	ldrb	r5, [r4, #3]
c0de4592:	ea40 2705 	orr.w	r7, r0, r5, lsl #8
c0de4596:	b238      	sxth	r0, r7
c0de4598:	79a5      	ldrb	r5, [r4, #6]
c0de459a:	79e7      	ldrb	r7, [r4, #7]
c0de459c:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
c0de45a0:	182f      	adds	r7, r5, r0
c0de45a2:	b230      	sxth	r0, r6
c0de45a4:	4287      	cmp	r7, r0
c0de45a6:	dc02      	bgt.n	c0de45ae <draw_obj_and_chidren+0xbe>
c0de45a8:	f1be 0f00 	cmp.w	lr, #0
c0de45ac:	d103      	bne.n	c0de45b6 <draw_obj_and_chidren+0xc6>
c0de45ae:	2f40      	cmp	r7, #64	@ 0x40
c0de45b0:	bfa8      	it	ge
c0de45b2:	2740      	movge	r7, #64	@ 0x40
c0de45b4:	463e      	mov	r6, r7
c0de45b6:	eb09 000c 	add.w	r0, r9, ip
c0de45ba:	1a51      	subs	r1, r2, r1
c0de45bc:	8081      	strh	r1, [r0, #4]
c0de45be:	b231      	sxth	r1, r6
c0de45c0:	2940      	cmp	r1, #64	@ 0x40
c0de45c2:	bfa8      	it	ge
c0de45c4:	2640      	movge	r6, #64	@ 0x40
c0de45c6:	1af1      	subs	r1, r6, r3
c0de45c8:	80c1      	strh	r1, [r0, #6]
c0de45ca:	7a40      	ldrb	r0, [r0, #9]
c0de45cc:	7a61      	ldrb	r1, [r4, #9]
c0de45ce:	4281      	cmp	r1, r0
c0de45d0:	bf84      	itt	hi
c0de45d2:	eb09 000c 	addhi.w	r0, r9, ip
c0de45d6:	7241      	strbhi	r1, [r0, #9]
c0de45d8:	7ee0      	ldrb	r0, [r4, #27]
c0de45da:	2801      	cmp	r0, #1
c0de45dc:	d838      	bhi.n	c0de4650 <draw_obj_and_chidren+0x160>
c0de45de:	4620      	mov	r0, r4
c0de45e0:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de45e4:	f000 ff05 	bl	c0de53f2 <OUTLINED_FUNCTION_1>
c0de45e8:	b390      	cbz	r0, c0de4650 <draw_obj_and_chidren+0x160>
c0de45ea:	2700      	movs	r7, #0
c0de45ec:	ea4f 6814 	mov.w	r8, r4, lsr #24
c0de45f0:	ea4f 4a14 	mov.w	sl, r4, lsr #16
c0de45f4:	ea4f 2b14 	mov.w	fp, r4, lsr #8
c0de45f8:	2500      	movs	r5, #0
c0de45fa:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de45fe:	4287      	cmp	r7, r0
c0de4600:	d226      	bcs.n	c0de4650 <draw_obj_and_chidren+0x160>
c0de4602:	4620      	mov	r0, r4
c0de4604:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4608:	f000 fef3 	bl	c0de53f2 <OUTLINED_FUNCTION_1>
c0de460c:	f850 6027 	ldr.w	r6, [r0, r7, lsl #2]
c0de4610:	b1e6      	cbz	r6, c0de464c <draw_obj_and_chidren+0x15c>
c0de4612:	4630      	mov	r0, r6
c0de4614:	4629      	mov	r1, r5
c0de4616:	2201      	movs	r2, #1
c0de4618:	f886 b00f 	strb.w	fp, [r6, #15]
c0de461c:	f800 4f0e 	strb.w	r4, [r0, #14]!
c0de4620:	f880 8003 	strb.w	r8, [r0, #3]
c0de4624:	f880 a002 	strb.w	sl, [r0, #2]
c0de4628:	4630      	mov	r0, r6
c0de462a:	f7ff ff61 	bl	c0de44f0 <draw_obj_and_chidren>
c0de462e:	4631      	mov	r1, r6
c0de4630:	7cf0      	ldrb	r0, [r6, #19]
c0de4632:	f811 2f12 	ldrb.w	r2, [r1, #18]!
c0de4636:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de463a:	788a      	ldrb	r2, [r1, #2]
c0de463c:	78c9      	ldrb	r1, [r1, #3]
c0de463e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4642:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4646:	2800      	cmp	r0, #0
c0de4648:	bf08      	it	eq
c0de464a:	4635      	moveq	r5, r6
c0de464c:	3701      	adds	r7, #1
c0de464e:	e7d4      	b.n	c0de45fa <draw_obj_and_chidren+0x10a>
c0de4650:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4654:	00013ec8 	.word	0x00013ec8
c0de4658:	0000042a 	.word	0x0000042a
c0de465c:	0000708c 	.word	0x0000708c

c0de4660 <nbgl_refresh>:
c0de4660:	2002      	movs	r0, #2
c0de4662:	f000 b801 	b.w	c0de4668 <nbgl_refreshSpecial>
	...

c0de4668 <nbgl_refreshSpecial>:
c0de4668:	b570      	push	{r4, r5, r6, lr}
c0de466a:	4d0d      	ldr	r5, [pc, #52]	@ (c0de46a0 <nbgl_refreshSpecial+0x38>)
c0de466c:	4601      	mov	r1, r0
c0de466e:	eb09 0005 	add.w	r0, r9, r5
c0de4672:	8880      	ldrh	r0, [r0, #4]
c0de4674:	b198      	cbz	r0, c0de469e <nbgl_refreshSpecial+0x36>
c0de4676:	eb09 0005 	add.w	r0, r9, r5
c0de467a:	88c0      	ldrh	r0, [r0, #6]
c0de467c:	b178      	cbz	r0, c0de469e <nbgl_refreshSpecial+0x36>
c0de467e:	eb09 0405 	add.w	r4, r9, r5
c0de4682:	2200      	movs	r2, #0
c0de4684:	2600      	movs	r6, #0
c0de4686:	4620      	mov	r0, r4
c0de4688:	f005 fcda 	bl	c0dea040 <nbgl_frontRefreshArea>
c0de468c:	207f      	movs	r0, #127	@ 0x7f
c0de468e:	80a6      	strh	r6, [r4, #4]
c0de4690:	80e6      	strh	r6, [r4, #6]
c0de4692:	f829 0005 	strh.w	r0, [r9, r5]
c0de4696:	2001      	movs	r0, #1
c0de4698:	7260      	strb	r0, [r4, #9]
c0de469a:	203f      	movs	r0, #63	@ 0x3f
c0de469c:	8060      	strh	r0, [r4, #2]
c0de469e:	bd70      	pop	{r4, r5, r6, pc}
c0de46a0:	0000042a 	.word	0x0000042a

c0de46a4 <nbgl_objInit>:
c0de46a4:	4801      	ldr	r0, [pc, #4]	@ (c0de46ac <nbgl_objInit+0x8>)
c0de46a6:	f000 bee8 	b.w	c0de547a <OUTLINED_FUNCTION_6>
c0de46aa:	bf00      	nop
c0de46ac:	0000042a 	.word	0x0000042a

c0de46b0 <nbgl_objAllowDrawing>:
c0de46b0:	4902      	ldr	r1, [pc, #8]	@ (c0de46bc <nbgl_objAllowDrawing+0xc>)
c0de46b2:	f080 0001 	eor.w	r0, r0, #1
c0de46b6:	f809 0001 	strb.w	r0, [r9, r1]
c0de46ba:	4770      	bx	lr
c0de46bc:	00000428 	.word	0x00000428

c0de46c0 <draw_screen>:
c0de46c0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de46c2:	7a01      	ldrb	r1, [r0, #8]
c0de46c4:	7842      	ldrb	r2, [r0, #1]
c0de46c6:	7883      	ldrb	r3, [r0, #2]
c0de46c8:	78c4      	ldrb	r4, [r0, #3]
c0de46ca:	f88d 100c 	strb.w	r1, [sp, #12]
c0de46ce:	7801      	ldrb	r1, [r0, #0]
c0de46d0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de46d4:	7902      	ldrb	r2, [r0, #4]
c0de46d6:	f8ad 1004 	strh.w	r1, [sp, #4]
c0de46da:	ea43 2104 	orr.w	r1, r3, r4, lsl #8
c0de46de:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de46e2:	7941      	ldrb	r1, [r0, #5]
c0de46e4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de46e8:	f8ad 1008 	strh.w	r1, [sp, #8]
c0de46ec:	79c1      	ldrb	r1, [r0, #7]
c0de46ee:	7980      	ldrb	r0, [r0, #6]
c0de46f0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de46f4:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de46f8:	a801      	add	r0, sp, #4
c0de46fa:	f005 fc6b 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de46fe:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4700 <draw_container>:
c0de4700:	b570      	push	{r4, r5, r6, lr}
c0de4702:	4604      	mov	r4, r0
c0de4704:	b10a      	cbz	r2, c0de470a <draw_container+0xa>
c0de4706:	f000 fed5 	bl	c0de54b4 <OUTLINED_FUNCTION_9>
c0de470a:	f000 fee6 	bl	c0de54da <OUTLINED_FUNCTION_12>
c0de470e:	7cc6      	ldrb	r6, [r0, #19]
c0de4710:	f000 fedb 	bl	c0de54ca <OUTLINED_FUNCTION_11>
c0de4714:	7a09      	ldrb	r1, [r1, #8]
c0de4716:	f800 1c06 	strb.w	r1, [r0, #-6]
c0de471a:	d004      	beq.n	c0de4726 <draw_container+0x26>
c0de471c:	4620      	mov	r0, r4
c0de471e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4722:	f005 bc57 	b.w	c0de9fd4 <nbgl_frontDrawRect>
c0de4726:	bd70      	pop	{r4, r5, r6, pc}

c0de4728 <draw_image>:
c0de4728:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de472a:	460e      	mov	r6, r1
c0de472c:	4604      	mov	r4, r0
c0de472e:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de4732:	4617      	mov	r7, r2
c0de4734:	f000 fe53 	bl	c0de53de <OUTLINED_FUNCTION_0>
c0de4738:	b35d      	cbz	r5, c0de4792 <draw_image+0x6a>
c0de473a:	7828      	ldrb	r0, [r5, #0]
c0de473c:	78aa      	ldrb	r2, [r5, #2]
c0de473e:	7869      	ldrb	r1, [r5, #1]
c0de4740:	78eb      	ldrb	r3, [r5, #3]
c0de4742:	7120      	strb	r0, [r4, #4]
c0de4744:	71a2      	strb	r2, [r4, #6]
c0de4746:	7161      	strb	r1, [r4, #5]
c0de4748:	71e3      	strb	r3, [r4, #7]
c0de474a:	7928      	ldrb	r0, [r5, #4]
c0de474c:	7260      	strb	r0, [r4, #9]
c0de474e:	b127      	cbz	r7, c0de475a <draw_image+0x32>
c0de4750:	4620      	mov	r0, r4
c0de4752:	4631      	mov	r1, r6
c0de4754:	f000 fb8c 	bl	c0de4e70 <compute_position>
c0de4758:	7a60      	ldrb	r0, [r4, #9]
c0de475a:	4621      	mov	r1, r4
c0de475c:	2801      	cmp	r0, #1
c0de475e:	4620      	mov	r0, r4
c0de4760:	f811 2f0e 	ldrb.w	r2, [r1, #14]!
c0de4764:	784b      	ldrb	r3, [r1, #1]
c0de4766:	788e      	ldrb	r6, [r1, #2]
c0de4768:	78cf      	ldrb	r7, [r1, #3]
c0de476a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de476e:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de4772:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4776:	462b      	mov	r3, r5
c0de4778:	7a12      	ldrb	r2, [r2, #8]
c0de477a:	f801 2c06 	strb.w	r2, [r1, #-6]
c0de477e:	bf14      	ite	ne
c0de4780:	7fe2      	ldrbne	r2, [r4, #31]
c0de4782:	22e4      	moveq	r2, #228	@ 0xe4
c0de4784:	f894 1020 	ldrb.w	r1, [r4, #32]
c0de4788:	b001      	add	sp, #4
c0de478a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de478e:	f7fe bbeb 	b.w	c0de2f68 <nbgl_drawIcon>
c0de4792:	4620      	mov	r0, r4
c0de4794:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de4798:	f000 fe48 	bl	c0de542c <OUTLINED_FUNCTION_3>
c0de479c:	d005      	beq.n	c0de47aa <draw_image+0x82>
c0de479e:	f894 0029 	ldrb.w	r0, [r4, #41]	@ 0x29
c0de47a2:	4788      	blx	r1
c0de47a4:	4605      	mov	r5, r0
c0de47a6:	2800      	cmp	r0, #0
c0de47a8:	d1c7      	bne.n	c0de473a <draw_image+0x12>
c0de47aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de47ac <draw_textArea>:
c0de47ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de47b0:	b086      	sub	sp, #24
c0de47b2:	f890 6022 	ldrb.w	r6, [r0, #34]	@ 0x22
c0de47b6:	4604      	mov	r4, r0
c0de47b8:	b10a      	cbz	r2, c0de47be <draw_textArea+0x12>
c0de47ba:	f000 fe7b 	bl	c0de54b4 <OUTLINED_FUNCTION_9>
c0de47be:	4620      	mov	r0, r4
c0de47c0:	f810 1f2c 	ldrb.w	r1, [r0, #44]!
c0de47c4:	f000 fe32 	bl	c0de542c <OUTLINED_FUNCTION_3>
c0de47c8:	d009      	beq.n	c0de47de <draw_textArea+0x32>
c0de47ca:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de47ce:	4788      	blx	r1
c0de47d0:	4605      	mov	r5, r0
c0de47d2:	4620      	mov	r0, r4
c0de47d4:	f800 5f26 	strb.w	r5, [r0, #38]!
c0de47d8:	f000 fe86 	bl	c0de54e8 <OUTLINED_FUNCTION_13>
c0de47dc:	e004      	b.n	c0de47e8 <draw_textArea+0x3c>
c0de47de:	4620      	mov	r0, r4
c0de47e0:	f810 1f26 	ldrb.w	r1, [r0, #38]!
c0de47e4:	f000 fdfb 	bl	c0de53de <OUTLINED_FUNCTION_0>
c0de47e8:	2d00      	cmp	r5, #0
c0de47ea:	f000 8138 	beq.w	c0de4a5e <draw_textArea+0x2b2>
c0de47ee:	4622      	mov	r2, r4
c0de47f0:	f812 1f0e 	ldrb.w	r1, [r2, #14]!
c0de47f4:	7853      	ldrb	r3, [r2, #1]
c0de47f6:	7897      	ldrb	r7, [r2, #2]
c0de47f8:	78d0      	ldrb	r0, [r2, #3]
c0de47fa:	f892 c013 	ldrb.w	ip, [r2, #19]
c0de47fe:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4802:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de4806:	f1bc 0f01 	cmp.w	ip, #1
c0de480a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de480e:	7a08      	ldrb	r0, [r1, #8]
c0de4810:	f802 0c06 	strb.w	r0, [r2, #-6]
c0de4814:	bf19      	ittee	ne
c0de4816:	7a09      	ldrbne	r1, [r1, #8]
c0de4818:	460a      	movne	r2, r1
c0de481a:	2200      	moveq	r2, #0
c0de481c:	2103      	moveq	r1, #3
c0de481e:	7221      	strb	r1, [r4, #8]
c0de4820:	7820      	ldrb	r0, [r4, #0]
c0de4822:	f88d 2014 	strb.w	r2, [sp, #20]
c0de4826:	78e3      	ldrb	r3, [r4, #3]
c0de4828:	f1bc 0f01 	cmp.w	ip, #1
c0de482c:	7861      	ldrb	r1, [r4, #1]
c0de482e:	78a2      	ldrb	r2, [r4, #2]
c0de4830:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4834:	7921      	ldrb	r1, [r4, #4]
c0de4836:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de483a:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de483e:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de4842:	7960      	ldrb	r0, [r4, #5]
c0de4844:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4848:	79a1      	ldrb	r1, [r4, #6]
c0de484a:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de484e:	79e0      	ldrb	r0, [r4, #7]
c0de4850:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4854:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de4858:	a803      	add	r0, sp, #12
c0de485a:	d104      	bne.n	c0de4866 <draw_textArea+0xba>
c0de485c:	2100      	movs	r1, #0
c0de485e:	2203      	movs	r2, #3
c0de4860:	f7fe f8c0 	bl	c0de29e4 <nbgl_drawRoundedRect>
c0de4864:	e001      	b.n	c0de486a <draw_textArea+0xbe>
c0de4866:	f005 fbb5 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de486a:	4630      	mov	r0, r6
c0de486c:	f7fe fd4c 	bl	c0de3308 <nbgl_getFontHeight>
c0de4870:	4680      	mov	r8, r0
c0de4872:	4630      	mov	r0, r6
c0de4874:	f7fe fd4d 	bl	c0de3312 <nbgl_getFontLineHeight>
c0de4878:	4683      	mov	fp, r0
c0de487a:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de487e:	2800      	cmp	r0, #0
c0de4880:	d057      	beq.n	c0de4932 <draw_textArea+0x186>
c0de4882:	4630      	mov	r0, r6
c0de4884:	4629      	mov	r1, r5
c0de4886:	f7fe fcd0 	bl	c0de322a <nbgl_getSingleLineTextWidth>
c0de488a:	7921      	ldrb	r1, [r4, #4]
c0de488c:	7962      	ldrb	r2, [r4, #5]
c0de488e:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de4892:	4290      	cmp	r0, r2
c0de4894:	d951      	bls.n	c0de493a <draw_textArea+0x18e>
c0de4896:	4f73      	ldr	r7, [pc, #460]	@ (c0de4a64 <draw_textArea+0x2b8>)
c0de4898:	4630      	mov	r0, r6
c0de489a:	447f      	add	r7, pc
c0de489c:	4639      	mov	r1, r7
c0de489e:	f7fe fd16 	bl	c0de32ce <nbgl_getTextWidth>
c0de48a2:	4682      	mov	sl, r0
c0de48a4:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de48a8:	7820      	ldrb	r0, [r4, #0]
c0de48aa:	7861      	ldrb	r1, [r4, #1]
c0de48ac:	78a2      	ldrb	r2, [r4, #2]
c0de48ae:	78e3      	ldrb	r3, [r4, #3]
c0de48b0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de48b4:	79a1      	ldrb	r1, [r4, #6]
c0de48b6:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de48ba:	79e0      	ldrb	r0, [r4, #7]
c0de48bc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de48c0:	2102      	movs	r1, #2
c0de48c2:	eba0 0008 	sub.w	r0, r0, r8
c0de48c6:	f10d 080c 	add.w	r8, sp, #12
c0de48ca:	fb90 f0f1 	sdiv	r0, r0, r1
c0de48ce:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de48d2:	2203      	movs	r2, #3
c0de48d4:	4633      	mov	r3, r6
c0de48d6:	4408      	add	r0, r1
c0de48d8:	4639      	mov	r1, r7
c0de48da:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de48de:	7fe0      	ldrb	r0, [r4, #31]
c0de48e0:	9000      	str	r0, [sp, #0]
c0de48e2:	4640      	mov	r0, r8
c0de48e4:	f7fe fb60 	bl	c0de2fa8 <nbgl_drawText>
c0de48e8:	7920      	ldrb	r0, [r4, #4]
c0de48ea:	7961      	ldrb	r1, [r4, #5]
c0de48ec:	f10d 020a 	add.w	r2, sp, #10
c0de48f0:	9200      	str	r2, [sp, #0]
c0de48f2:	ab02      	add	r3, sp, #8
c0de48f4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de48f8:	4629      	mov	r1, r5
c0de48fa:	eba0 000a 	sub.w	r0, r0, sl
c0de48fe:	b282      	uxth	r2, r0
c0de4900:	4630      	mov	r0, r6
c0de4902:	f7fe fe2b 	bl	c0de355c <nbgl_getTextMaxLenAndWidthFromEnd>
c0de4906:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de490a:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de490e:	f8bd 000c 	ldrh.w	r0, [sp, #12]
c0de4912:	4450      	add	r0, sl
c0de4914:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de4918:	4628      	mov	r0, r5
c0de491a:	f7fe fcff 	bl	c0de331c <nbgl_getTextLength>
c0de491e:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de4922:	7fe1      	ldrb	r1, [r4, #31]
c0de4924:	f894 3022 	ldrb.w	r3, [r4, #34]	@ 0x22
c0de4928:	1a80      	subs	r0, r0, r2
c0de492a:	9100      	str	r1, [sp, #0]
c0de492c:	1829      	adds	r1, r5, r0
c0de492e:	4640      	mov	r0, r8
c0de4930:	e093      	b.n	c0de4a5a <draw_textArea+0x2ae>
c0de4932:	7920      	ldrb	r0, [r4, #4]
c0de4934:	7961      	ldrb	r1, [r4, #5]
c0de4936:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de493a:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
c0de493e:	4630      	mov	r0, r6
c0de4940:	4629      	mov	r1, r5
c0de4942:	f7fe fe4d 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de4946:	7a23      	ldrb	r3, [r4, #8]
c0de4948:	f894 7025 	ldrb.w	r7, [r4, #37]	@ 0x25
c0de494c:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de4950:	79a1      	ldrb	r1, [r4, #6]
c0de4952:	79e2      	ldrb	r2, [r4, #7]
c0de4954:	f894 c021 	ldrb.w	ip, [r4, #33]	@ 0x21
c0de4958:	f88d 3014 	strb.w	r3, [sp, #20]
c0de495c:	b2c3      	uxtb	r3, r0
c0de495e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4962:	42bb      	cmp	r3, r7
c0de4964:	4603      	mov	r3, r0
c0de4966:	bf88      	it	hi
c0de4968:	463b      	movhi	r3, r7
c0de496a:	2f00      	cmp	r7, #0
c0de496c:	bf08      	it	eq
c0de496e:	4603      	moveq	r3, r0
c0de4970:	b2df      	uxtb	r7, r3
c0de4972:	1e78      	subs	r0, r7, #1
c0de4974:	fb00 800b 	mla	r0, r0, fp, r8
c0de4978:	f04f 0800 	mov.w	r8, #0
c0de497c:	b280      	uxth	r0, r0
c0de497e:	1a08      	subs	r0, r1, r0
c0de4980:	2102      	movs	r1, #2
c0de4982:	fb90 faf1 	sdiv	sl, r0, r1
c0de4986:	f64f 70ff 	movw	r0, #65535	@ 0xffff
c0de498a:	f1bc 0f01 	cmp.w	ip, #1
c0de498e:	bf08      	it	eq
c0de4990:	4482      	addeq	sl, r0
c0de4992:	4547      	cmp	r7, r8
c0de4994:	d063      	beq.n	c0de4a5e <draw_textArea+0x2b2>
c0de4996:	7920      	ldrb	r0, [r4, #4]
c0de4998:	7961      	ldrb	r1, [r4, #5]
c0de499a:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
c0de499e:	f10d 030a 	add.w	r3, sp, #10
c0de49a2:	b2f6      	uxtb	r6, r6
c0de49a4:	e9cd 3200 	strd	r3, r2, [sp]
c0de49a8:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de49ac:	4630      	mov	r0, r6
c0de49ae:	4629      	mov	r1, r5
c0de49b0:	ab02      	add	r3, sp, #8
c0de49b2:	f7fe fcc3 	bl	c0de333c <nbgl_getTextMaxLenAndWidth>
c0de49b6:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de49ba:	2806      	cmp	r0, #6
c0de49bc:	d008      	beq.n	c0de49d0 <draw_textArea+0x224>
c0de49be:	2805      	cmp	r0, #5
c0de49c0:	d013      	beq.n	c0de49ea <draw_textArea+0x23e>
c0de49c2:	2804      	cmp	r0, #4
c0de49c4:	d122      	bne.n	c0de4a0c <draw_textArea+0x260>
c0de49c6:	7820      	ldrb	r0, [r4, #0]
c0de49c8:	7861      	ldrb	r1, [r4, #1]
c0de49ca:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de49ce:	e01b      	b.n	c0de4a08 <draw_textArea+0x25c>
c0de49d0:	7820      	ldrb	r0, [r4, #0]
c0de49d2:	7861      	ldrb	r1, [r4, #1]
c0de49d4:	7922      	ldrb	r2, [r4, #4]
c0de49d6:	7963      	ldrb	r3, [r4, #5]
c0de49d8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de49dc:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de49e0:	4408      	add	r0, r1
c0de49e2:	f8bd 100a 	ldrh.w	r1, [sp, #10]
c0de49e6:	1a40      	subs	r0, r0, r1
c0de49e8:	e00e      	b.n	c0de4a08 <draw_textArea+0x25c>
c0de49ea:	7922      	ldrb	r2, [r4, #4]
c0de49ec:	7963      	ldrb	r3, [r4, #5]
c0de49ee:	7820      	ldrb	r0, [r4, #0]
c0de49f0:	7861      	ldrb	r1, [r4, #1]
c0de49f2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de49f6:	f8bd 300a 	ldrh.w	r3, [sp, #10]
c0de49fa:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de49fe:	1ad2      	subs	r2, r2, r3
c0de4a00:	2302      	movs	r3, #2
c0de4a02:	fb92 f2f3 	sdiv	r2, r2, r3
c0de4a06:	4410      	add	r0, r2
c0de4a08:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de4a0c:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de4a10:	78a1      	ldrb	r1, [r4, #2]
c0de4a12:	78e2      	ldrb	r2, [r4, #3]
c0de4a14:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de4a18:	f894 0025 	ldrb.w	r0, [r4, #37]	@ 0x25
c0de4a1c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4a20:	4451      	add	r1, sl
c0de4a22:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de4a26:	b110      	cbz	r0, c0de4a2e <draw_textArea+0x282>
c0de4a28:	3801      	subs	r0, #1
c0de4a2a:	4540      	cmp	r0, r8
c0de4a2c:	d912      	bls.n	c0de4a54 <draw_textArea+0x2a8>
c0de4a2e:	f000 fd62 	bl	c0de54f6 <OUTLINED_FUNCTION_14>
c0de4a32:	a803      	add	r0, sp, #12
c0de4a34:	f7fe fab8 	bl	c0de2fa8 <nbgl_drawText>
c0de4a38:	4606      	mov	r6, r0
c0de4a3a:	f8bd 0008 	ldrh.w	r0, [sp, #8]
c0de4a3e:	44da      	add	sl, fp
c0de4a40:	f108 0801 	add.w	r8, r8, #1
c0de4a44:	4428      	add	r0, r5
c0de4a46:	4605      	mov	r5, r0
c0de4a48:	f815 1b01 	ldrb.w	r1, [r5], #1
c0de4a4c:	290a      	cmp	r1, #10
c0de4a4e:	bf18      	it	ne
c0de4a50:	4605      	movne	r5, r0
c0de4a52:	e79e      	b.n	c0de4992 <draw_textArea+0x1e6>
c0de4a54:	f000 fd4f 	bl	c0de54f6 <OUTLINED_FUNCTION_14>
c0de4a58:	a803      	add	r0, sp, #12
c0de4a5a:	f7fe faa5 	bl	c0de2fa8 <nbgl_drawText>
c0de4a5e:	b006      	add	sp, #24
c0de4a60:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4a64:	000063e9 	.word	0x000063e9

c0de4a68 <draw_button>:
c0de4a68:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4a6c:	b086      	sub	sp, #24
c0de4a6e:	4604      	mov	r4, r0
c0de4a70:	2000      	movs	r0, #0
c0de4a72:	f8ad 0016 	strh.w	r0, [sp, #22]
c0de4a76:	b10a      	cbz	r2, c0de4a7c <draw_button+0x14>
c0de4a78:	f000 fd1c 	bl	c0de54b4 <OUTLINED_FUNCTION_9>
c0de4a7c:	4623      	mov	r3, r4
c0de4a7e:	7be0      	ldrb	r0, [r4, #15]
c0de4a80:	7fe2      	ldrb	r2, [r4, #31]
c0de4a82:	f894 1022 	ldrb.w	r1, [r4, #34]	@ 0x22
c0de4a86:	f813 5f0e 	ldrb.w	r5, [r3, #14]!
c0de4a8a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4a8e:	789d      	ldrb	r5, [r3, #2]
c0de4a90:	78db      	ldrb	r3, [r3, #3]
c0de4a92:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de4a96:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de4a9a:	7a00      	ldrb	r0, [r0, #8]
c0de4a9c:	7220      	strb	r0, [r4, #8]
c0de4a9e:	4620      	mov	r0, r4
c0de4aa0:	f7fd ffa0 	bl	c0de29e4 <nbgl_drawRoundedRect>
c0de4aa4:	4620      	mov	r0, r4
c0de4aa6:	f810 1f29 	ldrb.w	r1, [r0, #41]!
c0de4aaa:	f000 fcbf 	bl	c0de542c <OUTLINED_FUNCTION_3>
c0de4aae:	d009      	beq.n	c0de4ac4 <draw_button+0x5c>
c0de4ab0:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de4ab4:	4788      	blx	r1
c0de4ab6:	4605      	mov	r5, r0
c0de4ab8:	4620      	mov	r0, r4
c0de4aba:	f800 5f25 	strb.w	r5, [r0, #37]!
c0de4abe:	f000 fd13 	bl	c0de54e8 <OUTLINED_FUNCTION_13>
c0de4ac2:	e004      	b.n	c0de4ace <draw_button+0x66>
c0de4ac4:	4620      	mov	r0, r4
c0de4ac6:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de4aca:	f000 fc88 	bl	c0de53de <OUTLINED_FUNCTION_0>
c0de4ace:	2d00      	cmp	r5, #0
c0de4ad0:	d076      	beq.n	c0de4bc0 <draw_button+0x158>
c0de4ad2:	7820      	ldrb	r0, [r4, #0]
c0de4ad4:	7861      	ldrb	r1, [r4, #1]
c0de4ad6:	f894 8002 	ldrb.w	r8, [r4, #2]
c0de4ada:	f894 b003 	ldrb.w	fp, [r4, #3]
c0de4ade:	ea40 2a01 	orr.w	sl, r0, r1, lsl #8
c0de4ae2:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de4ae6:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de4aea:	f7fe fc0d 	bl	c0de3308 <nbgl_getFontHeight>
c0de4aee:	4622      	mov	r2, r4
c0de4af0:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de4af4:	f812 cf2d 	ldrb.w	ip, [r2, #45]!
c0de4af8:	f812 6c27 	ldrb.w	r6, [r2, #-39]
c0de4afc:	f812 3c26 	ldrb.w	r3, [r2, #-38]
c0de4b00:	f812 1c29 	ldrb.w	r1, [r2, #-41]
c0de4b04:	f812 7c28 	ldrb.w	r7, [r2, #-40]
c0de4b08:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de4b0c:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de4b10:	1a18      	subs	r0, r3, r0
c0de4b12:	2302      	movs	r3, #2
c0de4b14:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de4b18:	fb90 f0f3 	sdiv	r0, r0, r3
c0de4b1c:	ea48 230b 	orr.w	r3, r8, fp, lsl #8
c0de4b20:	4418      	add	r0, r3
c0de4b22:	7893      	ldrb	r3, [r2, #2]
c0de4b24:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de4b28:	78d0      	ldrb	r0, [r2, #3]
c0de4b2a:	7852      	ldrb	r2, [r2, #1]
c0de4b2c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4b30:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
c0de4b34:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4b38:	b150      	cbz	r0, c0de4b50 <draw_button+0xe8>
c0de4b3a:	7802      	ldrb	r2, [r0, #0]
c0de4b3c:	7840      	ldrb	r0, [r0, #1]
c0de4b3e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4b42:	3002      	adds	r0, #2
c0de4b44:	1a09      	subs	r1, r1, r0
c0de4b46:	4482      	add	sl, r0
c0de4b48:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de4b4c:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de4b50:	b28e      	uxth	r6, r1
c0de4b52:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de4b56:	2201      	movs	r2, #1
c0de4b58:	f10d 0316 	add.w	r3, sp, #22
c0de4b5c:	4629      	mov	r1, r5
c0de4b5e:	e9cd 3200 	strd	r3, r2, [sp]
c0de4b62:	f10d 030a 	add.w	r3, sp, #10
c0de4b66:	4632      	mov	r2, r6
c0de4b68:	f7fe fbe8 	bl	c0de333c <nbgl_getTextMaxLenAndWidth>
c0de4b6c:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de4b70:	4286      	cmp	r6, r0
c0de4b72:	d906      	bls.n	c0de4b82 <draw_button+0x11a>
c0de4b74:	1a30      	subs	r0, r6, r0
c0de4b76:	2102      	movs	r1, #2
c0de4b78:	fb90 f0f1 	sdiv	r0, r0, r1
c0de4b7c:	4450      	add	r0, sl
c0de4b7e:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de4b82:	7fe0      	ldrb	r0, [r4, #31]
c0de4b84:	f894 1021 	ldrb.w	r1, [r4, #33]	@ 0x21
c0de4b88:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
c0de4b8c:	f8bd 200a 	ldrh.w	r2, [sp, #10]
c0de4b90:	9100      	str	r1, [sp, #0]
c0de4b92:	f88d 0014 	strb.w	r0, [sp, #20]
c0de4b96:	a803      	add	r0, sp, #12
c0de4b98:	4629      	mov	r1, r5
c0de4b9a:	f7fe fa05 	bl	c0de2fa8 <nbgl_drawText>
c0de4b9e:	f000 fc5e 	bl	c0de545e <OUTLINED_FUNCTION_5>
c0de4ba2:	d047      	beq.n	c0de4c34 <draw_button+0x1cc>
c0de4ba4:	7818      	ldrb	r0, [r3, #0]
c0de4ba6:	7859      	ldrb	r1, [r3, #1]
c0de4ba8:	7922      	ldrb	r2, [r4, #4]
c0de4baa:	7965      	ldrb	r5, [r4, #5]
c0de4bac:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4bb0:	f8bd 1016 	ldrh.w	r1, [sp, #22]
c0de4bb4:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de4bb8:	4401      	add	r1, r0
c0de4bba:	1a51      	subs	r1, r2, r1
c0de4bbc:	3902      	subs	r1, #2
c0de4bbe:	e00b      	b.n	c0de4bd8 <draw_button+0x170>
c0de4bc0:	f000 fc4d 	bl	c0de545e <OUTLINED_FUNCTION_5>
c0de4bc4:	d036      	beq.n	c0de4c34 <draw_button+0x1cc>
c0de4bc6:	7818      	ldrb	r0, [r3, #0]
c0de4bc8:	7859      	ldrb	r1, [r3, #1]
c0de4bca:	7962      	ldrb	r2, [r4, #5]
c0de4bcc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4bd0:	7921      	ldrb	r1, [r4, #4]
c0de4bd2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4bd6:	1a09      	subs	r1, r1, r0
c0de4bd8:	f04f 0c02 	mov.w	ip, #2
c0de4bdc:	7826      	ldrb	r6, [r4, #0]
c0de4bde:	7867      	ldrb	r7, [r4, #1]
c0de4be0:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de4be4:	7fe0      	ldrb	r0, [r4, #31]
c0de4be6:	fb91 f1fc 	sdiv	r1, r1, ip
c0de4bea:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de4bee:	f88d 0014 	strb.w	r0, [sp, #20]
c0de4bf2:	78e0      	ldrb	r0, [r4, #3]
c0de4bf4:	4431      	add	r1, r6
c0de4bf6:	f893 e002 	ldrb.w	lr, [r3, #2]
c0de4bfa:	78da      	ldrb	r2, [r3, #3]
c0de4bfc:	79a6      	ldrb	r6, [r4, #6]
c0de4bfe:	791d      	ldrb	r5, [r3, #4]
c0de4c00:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de4c04:	79e1      	ldrb	r1, [r4, #7]
c0de4c06:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
c0de4c0a:	f88d 5015 	strb.w	r5, [sp, #21]
c0de4c0e:	78a5      	ldrb	r5, [r4, #2]
c0de4c10:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de4c14:	f8ad 2012 	strh.w	r2, [sp, #18]
c0de4c18:	1a89      	subs	r1, r1, r2
c0de4c1a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4c1e:	f894 2021 	ldrb.w	r2, [r4, #33]	@ 0x21
c0de4c22:	fb91 f1fc 	sdiv	r1, r1, ip
c0de4c26:	4408      	add	r0, r1
c0de4c28:	2100      	movs	r1, #0
c0de4c2a:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de4c2e:	a803      	add	r0, sp, #12
c0de4c30:	f7fe f99a 	bl	c0de2f68 <nbgl_drawIcon>
c0de4c34:	b006      	add	sp, #24
c0de4c36:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4c3a <draw_progressBar>:
c0de4c3a:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4c3c:	4604      	mov	r4, r0
c0de4c3e:	b10a      	cbz	r2, c0de4c44 <draw_progressBar+0xa>
c0de4c40:	f000 fc38 	bl	c0de54b4 <OUTLINED_FUNCTION_9>
c0de4c44:	f000 fc49 	bl	c0de54da <OUTLINED_FUNCTION_12>
c0de4c48:	7c46      	ldrb	r6, [r0, #17]
c0de4c4a:	f000 fc3e 	bl	c0de54ca <OUTLINED_FUNCTION_11>
c0de4c4e:	7a0b      	ldrb	r3, [r1, #8]
c0de4c50:	f800 3c06 	strb.w	r3, [r0, #-6]
c0de4c54:	d008      	beq.n	c0de4c68 <draw_progressBar+0x2e>
c0de4c56:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de4c5a:	2101      	movs	r1, #1
c0de4c5c:	2201      	movs	r2, #1
c0de4c5e:	9000      	str	r0, [sp, #0]
c0de4c60:	4620      	mov	r0, r4
c0de4c62:	f7fe f809 	bl	c0de2c78 <nbgl_drawRoundedBorderedRect>
c0de4c66:	e004      	b.n	c0de4c72 <draw_progressBar+0x38>
c0de4c68:	4620      	mov	r0, r4
c0de4c6a:	2101      	movs	r1, #1
c0de4c6c:	461a      	mov	r2, r3
c0de4c6e:	f7fd feb9 	bl	c0de29e4 <nbgl_drawRoundedRect>
c0de4c72:	7920      	ldrb	r0, [r4, #4]
c0de4c74:	7961      	ldrb	r1, [r4, #5]
c0de4c76:	f894 2020 	ldrb.w	r2, [r4, #32]
c0de4c7a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4c7e:	3802      	subs	r0, #2
c0de4c80:	fb00 f102 	mul.w	r1, r0, r2
c0de4c84:	2264      	movs	r2, #100	@ 0x64
c0de4c86:	fb91 f1f2 	sdiv	r1, r1, r2
c0de4c8a:	4281      	cmp	r1, r0
c0de4c8c:	bfb8      	it	lt
c0de4c8e:	4608      	movlt	r0, r1
c0de4c90:	0401      	lsls	r1, r0, #16
c0de4c92:	d020      	beq.n	c0de4cd6 <draw_progressBar+0x9c>
c0de4c94:	f8ad 0008 	strh.w	r0, [sp, #8]
c0de4c98:	2000      	movs	r0, #0
c0de4c9a:	79a1      	ldrb	r1, [r4, #6]
c0de4c9c:	78a2      	ldrb	r2, [r4, #2]
c0de4c9e:	78e3      	ldrb	r3, [r4, #3]
c0de4ca0:	f88d 000d 	strb.w	r0, [sp, #13]
c0de4ca4:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de4ca8:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4cac:	79e0      	ldrb	r0, [r4, #7]
c0de4cae:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4cb2:	7861      	ldrb	r1, [r4, #1]
c0de4cb4:	3802      	subs	r0, #2
c0de4cb6:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4cba:	7820      	ldrb	r0, [r4, #0]
c0de4cbc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4cc0:	3001      	adds	r0, #1
c0de4cc2:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de4cc6:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de4cca:	3001      	adds	r0, #1
c0de4ccc:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4cd0:	a801      	add	r0, sp, #4
c0de4cd2:	f005 f97f 	bl	c0de9fd4 <nbgl_frontDrawRect>
c0de4cd6:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

c0de4cd8 <draw_image_file>:
c0de4cd8:	b570      	push	{r4, r5, r6, lr}
c0de4cda:	4604      	mov	r4, r0
c0de4cdc:	f810 3f1f 	ldrb.w	r3, [r0, #31]!
c0de4ce0:	7845      	ldrb	r5, [r0, #1]
c0de4ce2:	7886      	ldrb	r6, [r0, #2]
c0de4ce4:	78c0      	ldrb	r0, [r0, #3]
c0de4ce6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4cea:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de4cee:	ea43 4500 	orr.w	r5, r3, r0, lsl #16
c0de4cf2:	b19d      	cbz	r5, c0de4d1c <draw_image_file+0x44>
c0de4cf4:	b132      	cbz	r2, c0de4d04 <draw_image_file+0x2c>
c0de4cf6:	f000 fbdd 	bl	c0de54b4 <OUTLINED_FUNCTION_9>
c0de4cfa:	4620      	mov	r0, r4
c0de4cfc:	f810 1f1f 	ldrb.w	r1, [r0, #31]!
c0de4d00:	f000 fb6d 	bl	c0de53de <OUTLINED_FUNCTION_0>
c0de4d04:	2003      	movs	r0, #3
c0de4d06:	4629      	mov	r1, r5
c0de4d08:	2200      	movs	r2, #0
c0de4d0a:	7220      	strb	r0, [r4, #8]
c0de4d0c:	4804      	ldr	r0, [pc, #16]	@ (c0de4d20 <draw_image_file+0x48>)
c0de4d0e:	eb09 0300 	add.w	r3, r9, r0
c0de4d12:	4620      	mov	r0, r4
c0de4d14:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4d18:	f005 b984 	b.w	c0dea024 <nbgl_frontDrawImageFile>
c0de4d1c:	bd70      	pop	{r4, r5, r6, pc}
c0de4d1e:	bf00      	nop
c0de4d20:	00000434 	.word	0x00000434

c0de4d24 <draw_textEntry>:
c0de4d24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4d28:	b086      	sub	sp, #24
c0de4d2a:	460e      	mov	r6, r1
c0de4d2c:	4604      	mov	r4, r0
c0de4d2e:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de4d32:	4617      	mov	r7, r2
c0de4d34:	f000 fb5d 	bl	c0de53f2 <OUTLINED_FUNCTION_1>
c0de4d38:	f005 fd76 	bl	c0dea828 <strlen>
c0de4d3c:	4605      	mov	r5, r0
c0de4d3e:	b11f      	cbz	r7, c0de4d48 <draw_textEntry+0x24>
c0de4d40:	4620      	mov	r0, r4
c0de4d42:	4631      	mov	r1, r6
c0de4d44:	f000 f894 	bl	c0de4e70 <compute_position>
c0de4d48:	2003      	movs	r0, #3
c0de4d4a:	7861      	ldrb	r1, [r4, #1]
c0de4d4c:	78a2      	ldrb	r2, [r4, #2]
c0de4d4e:	78e3      	ldrb	r3, [r4, #3]
c0de4d50:	7220      	strb	r0, [r4, #8]
c0de4d52:	2000      	movs	r0, #0
c0de4d54:	f8ad 0014 	strh.w	r0, [sp, #20]
c0de4d58:	7820      	ldrb	r0, [r4, #0]
c0de4d5a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4d5e:	7921      	ldrb	r1, [r4, #4]
c0de4d60:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de4d64:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de4d68:	2203      	movs	r2, #3
c0de4d6a:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de4d6e:	7960      	ldrb	r0, [r4, #5]
c0de4d70:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4d74:	79a1      	ldrb	r1, [r4, #6]
c0de4d76:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de4d7a:	79e0      	ldrb	r0, [r4, #7]
c0de4d7c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4d80:	2101      	movs	r1, #1
c0de4d82:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de4d86:	a803      	add	r0, sp, #12
c0de4d88:	f7fd fe2c 	bl	c0de29e4 <nbgl_drawRoundedRect>
c0de4d8c:	7a21      	ldrb	r1, [r4, #8]
c0de4d8e:	7fe0      	ldrb	r0, [r4, #31]
c0de4d90:	f88d 1014 	strb.w	r1, [sp, #20]
c0de4d94:	f7fe fab8 	bl	c0de3308 <nbgl_getFontHeight>
c0de4d98:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de4d9c:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de4da0:	2809      	cmp	r0, #9
c0de4da2:	d902      	bls.n	c0de4daa <draw_textEntry+0x86>
c0de4da4:	b006      	add	sp, #24
c0de4da6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4daa:	7922      	ldrb	r2, [r4, #4]
c0de4dac:	7963      	ldrb	r3, [r4, #5]
c0de4dae:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de4db2:	f04f 0b08 	mov.w	fp, #8
c0de4db6:	f10d 0a0c 	add.w	sl, sp, #12
c0de4dba:	f04f 0800 	mov.w	r8, #0
c0de4dbe:	4249      	negs	r1, r1
c0de4dc0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4dc4:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de4dc8:	2202      	movs	r2, #2
c0de4dca:	fb91 f7f2 	sdiv	r7, r1, r2
c0de4dce:	4927      	ldr	r1, [pc, #156]	@ (c0de4e6c <draw_textEntry+0x148>)
c0de4dd0:	4479      	add	r1, pc
c0de4dd2:	9101      	str	r1, [sp, #4]
c0de4dd4:	4580      	cmp	r8, r0
c0de4dd6:	d2e5      	bcs.n	c0de4da4 <draw_textEntry+0x80>
c0de4dd8:	7821      	ldrb	r1, [r4, #0]
c0de4dda:	7862      	ldrb	r2, [r4, #1]
c0de4ddc:	78a3      	ldrb	r3, [r4, #2]
c0de4dde:	78e6      	ldrb	r6, [r4, #3]
c0de4de0:	f8ad b010 	strh.w	fp, [sp, #16]
c0de4de4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4de8:	4439      	add	r1, r7
c0de4dea:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de4dee:	ea43 2106 	orr.w	r1, r3, r6, lsl #8
c0de4df2:	3902      	subs	r1, #2
c0de4df4:	4285      	cmp	r5, r0
c0de4df6:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de4dfa:	da09      	bge.n	c0de4e10 <draw_textEntry+0xec>
c0de4dfc:	45a8      	cmp	r8, r5
c0de4dfe:	da1e      	bge.n	c0de4e3e <draw_textEntry+0x11a>
c0de4e00:	4620      	mov	r0, r4
c0de4e02:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de4e06:	f000 faf4 	bl	c0de53f2 <OUTLINED_FUNCTION_1>
c0de4e0a:	f810 0008 	ldrb.w	r0, [r0, r8]
c0de4e0e:	e017      	b.n	c0de4e40 <draw_textEntry+0x11c>
c0de4e10:	f1b8 0f00 	cmp.w	r8, #0
c0de4e14:	d025      	beq.n	c0de4e62 <draw_textEntry+0x13e>
c0de4e16:	1e41      	subs	r1, r0, #1
c0de4e18:	4588      	cmp	r8, r1
c0de4e1a:	da10      	bge.n	c0de4e3e <draw_textEntry+0x11a>
c0de4e1c:	4621      	mov	r1, r4
c0de4e1e:	f811 2f21 	ldrb.w	r2, [r1, #33]!
c0de4e22:	784b      	ldrb	r3, [r1, #1]
c0de4e24:	788e      	ldrb	r6, [r1, #2]
c0de4e26:	78c9      	ldrb	r1, [r1, #3]
c0de4e28:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4e2c:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de4e30:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4e34:	1a08      	subs	r0, r1, r0
c0de4e36:	4428      	add	r0, r5
c0de4e38:	4440      	add	r0, r8
c0de4e3a:	7840      	ldrb	r0, [r0, #1]
c0de4e3c:	e000      	b.n	c0de4e40 <draw_textEntry+0x11c>
c0de4e3e:	205f      	movs	r0, #95	@ 0x5f
c0de4e40:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4e44:	2000      	movs	r0, #0
c0de4e46:	f10d 010b 	add.w	r1, sp, #11
c0de4e4a:	2201      	movs	r2, #1
c0de4e4c:	9000      	str	r0, [sp, #0]
c0de4e4e:	4650      	mov	r0, sl
c0de4e50:	2308      	movs	r3, #8
c0de4e52:	f7fe f8a9 	bl	c0de2fa8 <nbgl_drawText>
c0de4e56:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de4e5a:	370a      	adds	r7, #10
c0de4e5c:	f108 0801 	add.w	r8, r8, #1
c0de4e60:	e7b8      	b.n	c0de4dd4 <draw_textEntry+0xb0>
c0de4e62:	2000      	movs	r0, #0
c0de4e64:	9901      	ldr	r1, [sp, #4]
c0de4e66:	2202      	movs	r2, #2
c0de4e68:	e7f0      	b.n	c0de4e4c <draw_textEntry+0x128>
c0de4e6a:	bf00      	nop
c0de4e6c:	00005f6d 	.word	0x00005f6d

c0de4e70 <compute_position>:
c0de4e70:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4e72:	4602      	mov	r2, r0
c0de4e74:	f812 4f0e 	ldrb.w	r4, [r2, #14]!
c0de4e78:	7855      	ldrb	r5, [r2, #1]
c0de4e7a:	7896      	ldrb	r6, [r2, #2]
c0de4e7c:	78d7      	ldrb	r7, [r2, #3]
c0de4e7e:	7a13      	ldrb	r3, [r2, #8]
c0de4e80:	ea44 2205 	orr.w	r2, r4, r5, lsl #8
c0de4e84:	ea46 2407 	orr.w	r4, r6, r7, lsl #8
c0de4e88:	2b00      	cmp	r3, #0
c0de4e8a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4e8e:	d04e      	beq.n	c0de4f2e <compute_position+0xbe>
c0de4e90:	4601      	mov	r1, r0
c0de4e92:	f811 4f12 	ldrb.w	r4, [r1, #18]!
c0de4e96:	784d      	ldrb	r5, [r1, #1]
c0de4e98:	788e      	ldrb	r6, [r1, #2]
c0de4e9a:	78c9      	ldrb	r1, [r1, #3]
c0de4e9c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4ea0:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de4ea4:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
c0de4ea8:	2900      	cmp	r1, #0
c0de4eaa:	bf08      	it	eq
c0de4eac:	4611      	moveq	r1, r2
c0de4eae:	4291      	cmp	r1, r2
c0de4eb0:	d050      	beq.n	c0de4f54 <compute_position+0xe4>
c0de4eb2:	2b0d      	cmp	r3, #13
c0de4eb4:	f000 808f 	beq.w	c0de4fd6 <compute_position+0x166>
c0de4eb8:	2b02      	cmp	r3, #2
c0de4eba:	f000 80ac 	beq.w	c0de5016 <compute_position+0x1a6>
c0de4ebe:	2b03      	cmp	r3, #3
c0de4ec0:	f000 80c4 	beq.w	c0de504c <compute_position+0x1dc>
c0de4ec4:	2b04      	cmp	r3, #4
c0de4ec6:	f000 80e3 	beq.w	c0de5090 <compute_position+0x220>
c0de4eca:	2b06      	cmp	r3, #6
c0de4ecc:	f000 8100 	beq.w	c0de50d0 <compute_position+0x260>
c0de4ed0:	2b07      	cmp	r3, #7
c0de4ed2:	f000 811d 	beq.w	c0de5110 <compute_position+0x2a0>
c0de4ed6:	2b08      	cmp	r3, #8
c0de4ed8:	f000 8136 	beq.w	c0de5148 <compute_position+0x2d8>
c0de4edc:	2b09      	cmp	r3, #9
c0de4ede:	f000 814d 	beq.w	c0de517c <compute_position+0x30c>
c0de4ee2:	2b0a      	cmp	r3, #10
c0de4ee4:	f000 816f 	beq.w	c0de51c6 <compute_position+0x356>
c0de4ee8:	2b0b      	cmp	r3, #11
c0de4eea:	f000 8186 	beq.w	c0de51fa <compute_position+0x38a>
c0de4eee:	2b0c      	cmp	r3, #12
c0de4ef0:	f000 81a4 	beq.w	c0de523c <compute_position+0x3cc>
c0de4ef4:	2b01      	cmp	r3, #1
c0de4ef6:	f040 8232 	bne.w	c0de535e <compute_position+0x4ee>
c0de4efa:	7a8b      	ldrb	r3, [r1, #10]
c0de4efc:	7acc      	ldrb	r4, [r1, #11]
c0de4efe:	7dc7      	ldrb	r7, [r0, #23]
c0de4f00:	7e05      	ldrb	r5, [r0, #24]
c0de4f02:	f891 c00c 	ldrb.w	ip, [r1, #12]
c0de4f06:	7b49      	ldrb	r1, [r1, #13]
c0de4f08:	79c6      	ldrb	r6, [r0, #7]
c0de4f0a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4f0e:	ea47 2505 	orr.w	r5, r7, r5, lsl #8
c0de4f12:	7984      	ldrb	r4, [r0, #6]
c0de4f14:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
c0de4f18:	442b      	add	r3, r5
c0de4f1a:	7e45      	ldrb	r5, [r0, #25]
c0de4f1c:	7283      	strb	r3, [r0, #10]
c0de4f1e:	0a1b      	lsrs	r3, r3, #8
c0de4f20:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de4f24:	72c3      	strb	r3, [r0, #11]
c0de4f26:	7e83      	ldrb	r3, [r0, #26]
c0de4f28:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de4f2c:	e0ad      	b.n	c0de508a <compute_position+0x21a>
c0de4f2e:	7fd3      	ldrb	r3, [r2, #31]
c0de4f30:	b3a3      	cbz	r3, c0de4f9c <compute_position+0x12c>
c0de4f32:	2900      	cmp	r1, #0
c0de4f34:	d043      	beq.n	c0de4fbe <compute_position+0x14e>
c0de4f36:	790b      	ldrb	r3, [r1, #4]
c0de4f38:	794c      	ldrb	r4, [r1, #5]
c0de4f3a:	7a8d      	ldrb	r5, [r1, #10]
c0de4f3c:	7ac9      	ldrb	r1, [r1, #11]
c0de4f3e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4f42:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4f46:	7e04      	ldrb	r4, [r0, #24]
c0de4f48:	4419      	add	r1, r3
c0de4f4a:	7dc3      	ldrb	r3, [r0, #23]
c0de4f4c:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4f50:	4419      	add	r1, r3
c0de4f52:	e038      	b.n	c0de4fc6 <compute_position+0x156>
c0de4f54:	2b09      	cmp	r3, #9
c0de4f56:	f000 818b 	beq.w	c0de5270 <compute_position+0x400>
c0de4f5a:	2b02      	cmp	r3, #2
c0de4f5c:	f000 8198 	beq.w	c0de5290 <compute_position+0x420>
c0de4f60:	2b03      	cmp	r3, #3
c0de4f62:	f000 81a7 	beq.w	c0de52b4 <compute_position+0x444>
c0de4f66:	2b04      	cmp	r3, #4
c0de4f68:	f000 81ba 	beq.w	c0de52e0 <compute_position+0x470>
c0de4f6c:	2b05      	cmp	r3, #5
c0de4f6e:	f000 81c2 	beq.w	c0de52f6 <compute_position+0x486>
c0de4f72:	2b06      	cmp	r3, #6
c0de4f74:	f000 81dd 	beq.w	c0de5332 <compute_position+0x4c2>
c0de4f78:	2b07      	cmp	r3, #7
c0de4f7a:	f000 820a 	beq.w	c0de5392 <compute_position+0x522>
c0de4f7e:	2b08      	cmp	r3, #8
c0de4f80:	f000 820e 	beq.w	c0de53a0 <compute_position+0x530>
c0de4f84:	2b01      	cmp	r3, #1
c0de4f86:	f040 81ea 	bne.w	c0de535e <compute_position+0x4ee>
c0de4f8a:	7dc1      	ldrb	r1, [r0, #23]
c0de4f8c:	7e03      	ldrb	r3, [r0, #24]
c0de4f8e:	7e44      	ldrb	r4, [r0, #25]
c0de4f90:	7e85      	ldrb	r5, [r0, #26]
c0de4f92:	7281      	strb	r1, [r0, #10]
c0de4f94:	72c3      	strb	r3, [r0, #11]
c0de4f96:	ea44 2105 	orr.w	r1, r4, r5, lsl #8
c0de4f9a:	e1dd      	b.n	c0de5358 <compute_position+0x4e8>
c0de4f9c:	7dc3      	ldrb	r3, [r0, #23]
c0de4f9e:	7e04      	ldrb	r4, [r0, #24]
c0de4fa0:	72c4      	strb	r4, [r0, #11]
c0de4fa2:	7283      	strb	r3, [r0, #10]
c0de4fa4:	b191      	cbz	r1, c0de4fcc <compute_position+0x15c>
c0de4fa6:	798b      	ldrb	r3, [r1, #6]
c0de4fa8:	79cc      	ldrb	r4, [r1, #7]
c0de4faa:	7b0d      	ldrb	r5, [r1, #12]
c0de4fac:	7b49      	ldrb	r1, [r1, #13]
c0de4fae:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4fb2:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4fb6:	7e84      	ldrb	r4, [r0, #26]
c0de4fb8:	4419      	add	r1, r3
c0de4fba:	7e43      	ldrb	r3, [r0, #25]
c0de4fbc:	e0c1      	b.n	c0de5142 <compute_position+0x2d2>
c0de4fbe:	7dc1      	ldrb	r1, [r0, #23]
c0de4fc0:	7e03      	ldrb	r3, [r0, #24]
c0de4fc2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4fc6:	7281      	strb	r1, [r0, #10]
c0de4fc8:	0a09      	lsrs	r1, r1, #8
c0de4fca:	72c1      	strb	r1, [r0, #11]
c0de4fcc:	7e41      	ldrb	r1, [r0, #25]
c0de4fce:	7e83      	ldrb	r3, [r0, #26]
c0de4fd0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4fd4:	e1c0      	b.n	c0de5358 <compute_position+0x4e8>
c0de4fd6:	f000 fa70 	bl	c0de54ba <OUTLINED_FUNCTION_10>
c0de4fda:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de4fde:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de4fe2:	790c      	ldrb	r4, [r1, #4]
c0de4fe4:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de4fe8:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4fec:	79c5      	ldrb	r5, [r0, #7]
c0de4fee:	4423      	add	r3, r4
c0de4ff0:	7984      	ldrb	r4, [r0, #6]
c0de4ff2:	4433      	add	r3, r6
c0de4ff4:	7e46      	ldrb	r6, [r0, #25]
c0de4ff6:	7283      	strb	r3, [r0, #10]
c0de4ff8:	0a1b      	lsrs	r3, r3, #8
c0de4ffa:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4ffe:	72c3      	strb	r3, [r0, #11]
c0de5000:	7e83      	ldrb	r3, [r0, #26]
c0de5002:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5006:	7b4e      	ldrb	r6, [r1, #13]
c0de5008:	7b09      	ldrb	r1, [r1, #12]
c0de500a:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de500e:	ea4c 260e 	orr.w	r6, ip, lr, lsl #8
c0de5012:	4431      	add	r1, r6
c0de5014:	e110      	b.n	c0de5238 <compute_position+0x3c8>
c0de5016:	7e03      	ldrb	r3, [r0, #24]
c0de5018:	7dc4      	ldrb	r4, [r0, #23]
c0de501a:	7a8e      	ldrb	r6, [r1, #10]
c0de501c:	7acf      	ldrb	r7, [r1, #11]
c0de501e:	794d      	ldrb	r5, [r1, #5]
c0de5020:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de5024:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5028:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de502c:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5030:	790c      	ldrb	r4, [r1, #4]
c0de5032:	7947      	ldrb	r7, [r0, #5]
c0de5034:	4433      	add	r3, r6
c0de5036:	7906      	ldrb	r6, [r0, #4]
c0de5038:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de503c:	2502      	movs	r5, #2
c0de503e:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5042:	1ba4      	subs	r4, r4, r6
c0de5044:	fb94 f4f5 	sdiv	r4, r4, r5
c0de5048:	4423      	add	r3, r4
c0de504a:	e011      	b.n	c0de5070 <compute_position+0x200>
c0de504c:	f000 fa21 	bl	c0de5492 <OUTLINED_FUNCTION_7>
c0de5050:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5054:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5058:	7904      	ldrb	r4, [r0, #4]
c0de505a:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de505e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5062:	794d      	ldrb	r5, [r1, #5]
c0de5064:	4423      	add	r3, r4
c0de5066:	790c      	ldrb	r4, [r1, #4]
c0de5068:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de506c:	4434      	add	r4, r6
c0de506e:	1ae3      	subs	r3, r4, r3
c0de5070:	7283      	strb	r3, [r0, #10]
c0de5072:	0a1b      	lsrs	r3, r3, #8
c0de5074:	7e44      	ldrb	r4, [r0, #25]
c0de5076:	72c3      	strb	r3, [r0, #11]
c0de5078:	7b4b      	ldrb	r3, [r1, #13]
c0de507a:	7b09      	ldrb	r1, [r1, #12]
c0de507c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5080:	7e83      	ldrb	r3, [r0, #26]
c0de5082:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5086:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de508a:	4423      	add	r3, r4
c0de508c:	1ac9      	subs	r1, r1, r3
c0de508e:	e163      	b.n	c0de5358 <compute_position+0x4e8>
c0de5090:	f000 f9ff 	bl	c0de5492 <OUTLINED_FUNCTION_7>
c0de5094:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5098:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de509c:	7904      	ldrb	r4, [r0, #4]
c0de509e:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de50a2:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de50a6:	79cd      	ldrb	r5, [r1, #7]
c0de50a8:	4423      	add	r3, r4
c0de50aa:	798c      	ldrb	r4, [r1, #6]
c0de50ac:	1af3      	subs	r3, r6, r3
c0de50ae:	7e46      	ldrb	r6, [r0, #25]
c0de50b0:	7283      	strb	r3, [r0, #10]
c0de50b2:	0a1b      	lsrs	r3, r3, #8
c0de50b4:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de50b8:	72c3      	strb	r3, [r0, #11]
c0de50ba:	7b4b      	ldrb	r3, [r1, #13]
c0de50bc:	7b09      	ldrb	r1, [r1, #12]
c0de50be:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de50c2:	7e83      	ldrb	r3, [r0, #26]
c0de50c4:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de50c8:	4419      	add	r1, r3
c0de50ca:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de50ce:	e13e      	b.n	c0de534e <compute_position+0x4de>
c0de50d0:	f000 f9f3 	bl	c0de54ba <OUTLINED_FUNCTION_10>
c0de50d4:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de50d8:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de50dc:	790c      	ldrb	r4, [r1, #4]
c0de50de:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de50e2:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de50e6:	79c5      	ldrb	r5, [r0, #7]
c0de50e8:	4423      	add	r3, r4
c0de50ea:	7984      	ldrb	r4, [r0, #6]
c0de50ec:	4433      	add	r3, r6
c0de50ee:	7e46      	ldrb	r6, [r0, #25]
c0de50f0:	7283      	strb	r3, [r0, #10]
c0de50f2:	0a1b      	lsrs	r3, r3, #8
c0de50f4:	72c3      	strb	r3, [r0, #11]
c0de50f6:	7b4b      	ldrb	r3, [r1, #13]
c0de50f8:	7b09      	ldrb	r1, [r1, #12]
c0de50fa:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de50fe:	7e83      	ldrb	r3, [r0, #26]
c0de5100:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5104:	4419      	add	r1, r3
c0de5106:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de510a:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de510e:	e11e      	b.n	c0de534e <compute_position+0x4de>
c0de5110:	7a8d      	ldrb	r5, [r1, #10]
c0de5112:	7ace      	ldrb	r6, [r1, #11]
c0de5114:	7e07      	ldrb	r7, [r0, #24]
c0de5116:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de511a:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de511e:	7e43      	ldrb	r3, [r0, #25]
c0de5120:	7e84      	ldrb	r4, [r0, #26]
c0de5122:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5126:	7dc6      	ldrb	r6, [r0, #23]
c0de5128:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de512c:	4435      	add	r5, r6
c0de512e:	7285      	strb	r5, [r0, #10]
c0de5130:	0a2d      	lsrs	r5, r5, #8
c0de5132:	72c5      	strb	r5, [r0, #11]
c0de5134:	7b4d      	ldrb	r5, [r1, #13]
c0de5136:	7b09      	ldrb	r1, [r1, #12]
c0de5138:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de513c:	ea4c 250e 	orr.w	r5, ip, lr, lsl #8
c0de5140:	4429      	add	r1, r5
c0de5142:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5146:	e106      	b.n	c0de5356 <compute_position+0x4e6>
c0de5148:	7acb      	ldrb	r3, [r1, #11]
c0de514a:	7a8c      	ldrb	r4, [r1, #10]
c0de514c:	7dc6      	ldrb	r6, [r0, #23]
c0de514e:	7e07      	ldrb	r7, [r0, #24]
c0de5150:	7945      	ldrb	r5, [r0, #5]
c0de5152:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5156:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de515a:	7904      	ldrb	r4, [r0, #4]
c0de515c:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5160:	79cf      	ldrb	r7, [r1, #7]
c0de5162:	4433      	add	r3, r6
c0de5164:	794e      	ldrb	r6, [r1, #5]
c0de5166:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de516a:	790d      	ldrb	r5, [r1, #4]
c0de516c:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5170:	1b2c      	subs	r4, r5, r4
c0de5172:	2502      	movs	r5, #2
c0de5174:	fb94 f4f5 	sdiv	r4, r4, r5
c0de5178:	4423      	add	r3, r4
c0de517a:	e015      	b.n	c0de51a8 <compute_position+0x338>
c0de517c:	7903      	ldrb	r3, [r0, #4]
c0de517e:	7944      	ldrb	r4, [r0, #5]
c0de5180:	7dc5      	ldrb	r5, [r0, #23]
c0de5182:	7e06      	ldrb	r6, [r0, #24]
c0de5184:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5188:	79cf      	ldrb	r7, [r1, #7]
c0de518a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de518e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5192:	7acc      	ldrb	r4, [r1, #11]
c0de5194:	794e      	ldrb	r6, [r1, #5]
c0de5196:	442b      	add	r3, r5
c0de5198:	7a8d      	ldrb	r5, [r1, #10]
c0de519a:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de519e:	790d      	ldrb	r5, [r1, #4]
c0de51a0:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de51a4:	442c      	add	r4, r5
c0de51a6:	1ae3      	subs	r3, r4, r3
c0de51a8:	7283      	strb	r3, [r0, #10]
c0de51aa:	0a1b      	lsrs	r3, r3, #8
c0de51ac:	7e44      	ldrb	r4, [r0, #25]
c0de51ae:	72c3      	strb	r3, [r0, #11]
c0de51b0:	7e83      	ldrb	r3, [r0, #26]
c0de51b2:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de51b6:	7b4c      	ldrb	r4, [r1, #13]
c0de51b8:	7b09      	ldrb	r1, [r1, #12]
c0de51ba:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de51be:	ea4c 2407 	orr.w	r4, ip, r7, lsl #8
c0de51c2:	4421      	add	r1, r4
c0de51c4:	e0c7      	b.n	c0de5356 <compute_position+0x4e6>
c0de51c6:	7903      	ldrb	r3, [r0, #4]
c0de51c8:	7944      	ldrb	r4, [r0, #5]
c0de51ca:	7dc5      	ldrb	r5, [r0, #23]
c0de51cc:	7e06      	ldrb	r6, [r0, #24]
c0de51ce:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de51d2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de51d6:	7a8c      	ldrb	r4, [r1, #10]
c0de51d8:	7b0e      	ldrb	r6, [r1, #12]
c0de51da:	442b      	add	r3, r5
c0de51dc:	7acd      	ldrb	r5, [r1, #11]
c0de51de:	7b49      	ldrb	r1, [r1, #13]
c0de51e0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de51e4:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de51e8:	1ae3      	subs	r3, r4, r3
c0de51ea:	7e44      	ldrb	r4, [r0, #25]
c0de51ec:	7283      	strb	r3, [r0, #10]
c0de51ee:	0a1b      	lsrs	r3, r3, #8
c0de51f0:	72c3      	strb	r3, [r0, #11]
c0de51f2:	7e83      	ldrb	r3, [r0, #26]
c0de51f4:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de51f8:	e0ad      	b.n	c0de5356 <compute_position+0x4e6>
c0de51fa:	f000 f94a 	bl	c0de5492 <OUTLINED_FUNCTION_7>
c0de51fe:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5202:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5206:	7904      	ldrb	r4, [r0, #4]
c0de5208:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de520c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5210:	79cd      	ldrb	r5, [r1, #7]
c0de5212:	4423      	add	r3, r4
c0de5214:	798c      	ldrb	r4, [r1, #6]
c0de5216:	1af3      	subs	r3, r6, r3
c0de5218:	7e46      	ldrb	r6, [r0, #25]
c0de521a:	7283      	strb	r3, [r0, #10]
c0de521c:	0a1b      	lsrs	r3, r3, #8
c0de521e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5222:	72c3      	strb	r3, [r0, #11]
c0de5224:	7e83      	ldrb	r3, [r0, #26]
c0de5226:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de522a:	7b4e      	ldrb	r6, [r1, #13]
c0de522c:	7b09      	ldrb	r1, [r1, #12]
c0de522e:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de5232:	4421      	add	r1, r4
c0de5234:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de5238:	1b09      	subs	r1, r1, r4
c0de523a:	e08c      	b.n	c0de5356 <compute_position+0x4e6>
c0de523c:	790b      	ldrb	r3, [r1, #4]
c0de523e:	794c      	ldrb	r4, [r1, #5]
c0de5240:	7a8d      	ldrb	r5, [r1, #10]
c0de5242:	7ace      	ldrb	r6, [r1, #11]
c0de5244:	7e87      	ldrb	r7, [r0, #26]
c0de5246:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de524a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de524e:	7dc4      	ldrb	r4, [r0, #23]
c0de5250:	7e46      	ldrb	r6, [r0, #25]
c0de5252:	442b      	add	r3, r5
c0de5254:	7e05      	ldrb	r5, [r0, #24]
c0de5256:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de525a:	4423      	add	r3, r4
c0de525c:	7283      	strb	r3, [r0, #10]
c0de525e:	0a1b      	lsrs	r3, r3, #8
c0de5260:	72c3      	strb	r3, [r0, #11]
c0de5262:	7b4b      	ldrb	r3, [r1, #13]
c0de5264:	7b09      	ldrb	r1, [r1, #12]
c0de5266:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de526a:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de526e:	e072      	b.n	c0de5356 <compute_position+0x4e6>
c0de5270:	f000 f8c9 	bl	c0de5406 <OUTLINED_FUNCTION_2>
c0de5274:	1a59      	subs	r1, r3, r1
c0de5276:	7e43      	ldrb	r3, [r0, #25]
c0de5278:	7281      	strb	r1, [r0, #10]
c0de527a:	0a09      	lsrs	r1, r1, #8
c0de527c:	72c1      	strb	r1, [r0, #11]
c0de527e:	7e81      	ldrb	r1, [r0, #26]
c0de5280:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5284:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de5288:	4419      	add	r1, r3
c0de528a:	ea47 2305 	orr.w	r3, r7, r5, lsl #8
c0de528e:	e0a4      	b.n	c0de53da <compute_position+0x56a>
c0de5290:	7901      	ldrb	r1, [r0, #4]
c0de5292:	7943      	ldrb	r3, [r0, #5]
c0de5294:	7956      	ldrb	r6, [r2, #5]
c0de5296:	7dc4      	ldrb	r4, [r0, #23]
c0de5298:	7e05      	ldrb	r5, [r0, #24]
c0de529a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de529e:	7913      	ldrb	r3, [r2, #4]
c0de52a0:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de52a4:	1a59      	subs	r1, r3, r1
c0de52a6:	2302      	movs	r3, #2
c0de52a8:	fb91 f1f3 	sdiv	r1, r1, r3
c0de52ac:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de52b0:	4419      	add	r1, r3
c0de52b2:	e00d      	b.n	c0de52d0 <compute_position+0x460>
c0de52b4:	7901      	ldrb	r1, [r0, #4]
c0de52b6:	7943      	ldrb	r3, [r0, #5]
c0de52b8:	7dc4      	ldrb	r4, [r0, #23]
c0de52ba:	7e05      	ldrb	r5, [r0, #24]
c0de52bc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de52c0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de52c4:	7913      	ldrb	r3, [r2, #4]
c0de52c6:	4421      	add	r1, r4
c0de52c8:	7954      	ldrb	r4, [r2, #5]
c0de52ca:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de52ce:	1a59      	subs	r1, r3, r1
c0de52d0:	7281      	strb	r1, [r0, #10]
c0de52d2:	0a09      	lsrs	r1, r1, #8
c0de52d4:	7e43      	ldrb	r3, [r0, #25]
c0de52d6:	72c1      	strb	r1, [r0, #11]
c0de52d8:	7e81      	ldrb	r1, [r0, #26]
c0de52da:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de52de:	e03b      	b.n	c0de5358 <compute_position+0x4e8>
c0de52e0:	f000 f8af 	bl	c0de5442 <OUTLINED_FUNCTION_4>
c0de52e4:	79d5      	ldrb	r5, [r2, #7]
c0de52e6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de52ea:	1a59      	subs	r1, r3, r1
c0de52ec:	2302      	movs	r3, #2
c0de52ee:	fb91 f1f3 	sdiv	r1, r1, r3
c0de52f2:	4421      	add	r1, r4
c0de52f4:	e030      	b.n	c0de5358 <compute_position+0x4e8>
c0de52f6:	f000 f8d4 	bl	c0de54a2 <OUTLINED_FUNCTION_8>
c0de52fa:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de52fe:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5302:	7903      	ldrb	r3, [r0, #4]
c0de5304:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5308:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de530c:	7914      	ldrb	r4, [r2, #4]
c0de530e:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de5312:	1ae3      	subs	r3, r4, r3
c0de5314:	2402      	movs	r4, #2
c0de5316:	fb93 f3f4 	sdiv	r3, r3, r4
c0de531a:	4419      	add	r1, r3
c0de531c:	7e43      	ldrb	r3, [r0, #25]
c0de531e:	7281      	strb	r1, [r0, #10]
c0de5320:	0a09      	lsrs	r1, r1, #8
c0de5322:	72c1      	strb	r1, [r0, #11]
c0de5324:	7e81      	ldrb	r1, [r0, #26]
c0de5326:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de532a:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de532e:	1aeb      	subs	r3, r5, r3
c0de5330:	e00f      	b.n	c0de5352 <compute_position+0x4e2>
c0de5332:	f000 f868 	bl	c0de5406 <OUTLINED_FUNCTION_2>
c0de5336:	ea47 2405 	orr.w	r4, r7, r5, lsl #8
c0de533a:	1a59      	subs	r1, r3, r1
c0de533c:	7e43      	ldrb	r3, [r0, #25]
c0de533e:	7281      	strb	r1, [r0, #10]
c0de5340:	0a09      	lsrs	r1, r1, #8
c0de5342:	72c1      	strb	r1, [r0, #11]
c0de5344:	7e81      	ldrb	r1, [r0, #26]
c0de5346:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de534a:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de534e:	1ae3      	subs	r3, r4, r3
c0de5350:	2402      	movs	r4, #2
c0de5352:	fb93 f3f4 	sdiv	r3, r3, r4
c0de5356:	4419      	add	r1, r3
c0de5358:	7301      	strb	r1, [r0, #12]
c0de535a:	0a09      	lsrs	r1, r1, #8
c0de535c:	7341      	strb	r1, [r0, #13]
c0de535e:	b1ba      	cbz	r2, c0de5390 <compute_position+0x520>
c0de5360:	7811      	ldrb	r1, [r2, #0]
c0de5362:	7853      	ldrb	r3, [r2, #1]
c0de5364:	7ac5      	ldrb	r5, [r0, #11]
c0de5366:	7894      	ldrb	r4, [r2, #2]
c0de5368:	78d2      	ldrb	r2, [r2, #3]
c0de536a:	7b06      	ldrb	r6, [r0, #12]
c0de536c:	7b47      	ldrb	r7, [r0, #13]
c0de536e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5372:	7a83      	ldrb	r3, [r0, #10]
c0de5374:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de5378:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de537c:	4419      	add	r1, r3
c0de537e:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de5382:	7001      	strb	r1, [r0, #0]
c0de5384:	441a      	add	r2, r3
c0de5386:	0a09      	lsrs	r1, r1, #8
c0de5388:	7041      	strb	r1, [r0, #1]
c0de538a:	0a11      	lsrs	r1, r2, #8
c0de538c:	7082      	strb	r2, [r0, #2]
c0de538e:	70c1      	strb	r1, [r0, #3]
c0de5390:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5392:	f000 f856 	bl	c0de5442 <OUTLINED_FUNCTION_4>
c0de5396:	4421      	add	r1, r4
c0de5398:	79d4      	ldrb	r4, [r2, #7]
c0de539a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de539e:	e01c      	b.n	c0de53da <compute_position+0x56a>
c0de53a0:	f000 f87f 	bl	c0de54a2 <OUTLINED_FUNCTION_8>
c0de53a4:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de53a8:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de53ac:	7903      	ldrb	r3, [r0, #4]
c0de53ae:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de53b2:	7914      	ldrb	r4, [r2, #4]
c0de53b4:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de53b8:	1ae3      	subs	r3, r4, r3
c0de53ba:	2402      	movs	r4, #2
c0de53bc:	fb93 f3f4 	sdiv	r3, r3, r4
c0de53c0:	4419      	add	r1, r3
c0de53c2:	7e43      	ldrb	r3, [r0, #25]
c0de53c4:	7281      	strb	r1, [r0, #10]
c0de53c6:	0a09      	lsrs	r1, r1, #8
c0de53c8:	72c1      	strb	r1, [r0, #11]
c0de53ca:	7e81      	ldrb	r1, [r0, #26]
c0de53cc:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de53d0:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de53d4:	4419      	add	r1, r3
c0de53d6:	ea45 2306 	orr.w	r3, r5, r6, lsl #8
c0de53da:	1a59      	subs	r1, r3, r1
c0de53dc:	e7bc      	b.n	c0de5358 <compute_position+0x4e8>

c0de53de <OUTLINED_FUNCTION_0>:
c0de53de:	7842      	ldrb	r2, [r0, #1]
c0de53e0:	7883      	ldrb	r3, [r0, #2]
c0de53e2:	78c0      	ldrb	r0, [r0, #3]
c0de53e4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de53e8:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de53ec:	ea41 4500 	orr.w	r5, r1, r0, lsl #16
c0de53f0:	4770      	bx	lr

c0de53f2 <OUTLINED_FUNCTION_1>:
c0de53f2:	7842      	ldrb	r2, [r0, #1]
c0de53f4:	7883      	ldrb	r3, [r0, #2]
c0de53f6:	78c0      	ldrb	r0, [r0, #3]
c0de53f8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de53fc:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5400:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5404:	4770      	bx	lr

c0de5406 <OUTLINED_FUNCTION_2>:
c0de5406:	7e01      	ldrb	r1, [r0, #24]
c0de5408:	7dc3      	ldrb	r3, [r0, #23]
c0de540a:	7944      	ldrb	r4, [r0, #5]
c0de540c:	7997      	ldrb	r7, [r2, #6]
c0de540e:	79d5      	ldrb	r5, [r2, #7]
c0de5410:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de5414:	79c6      	ldrb	r6, [r0, #7]
c0de5416:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de541a:	7903      	ldrb	r3, [r0, #4]
c0de541c:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5420:	7954      	ldrb	r4, [r2, #5]
c0de5422:	4419      	add	r1, r3
c0de5424:	7913      	ldrb	r3, [r2, #4]
c0de5426:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de542a:	4770      	bx	lr

c0de542c <OUTLINED_FUNCTION_3>:
c0de542c:	7842      	ldrb	r2, [r0, #1]
c0de542e:	7883      	ldrb	r3, [r0, #2]
c0de5430:	78c0      	ldrb	r0, [r0, #3]
c0de5432:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5436:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de543a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de543e:	2900      	cmp	r1, #0
c0de5440:	4770      	bx	lr

c0de5442 <OUTLINED_FUNCTION_4>:
c0de5442:	7dc4      	ldrb	r4, [r0, #23]
c0de5444:	7e05      	ldrb	r5, [r0, #24]
c0de5446:	7981      	ldrb	r1, [r0, #6]
c0de5448:	79c3      	ldrb	r3, [r0, #7]
c0de544a:	72c5      	strb	r5, [r0, #11]
c0de544c:	7284      	strb	r4, [r0, #10]
c0de544e:	7e84      	ldrb	r4, [r0, #26]
c0de5450:	7e45      	ldrb	r5, [r0, #25]
c0de5452:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5456:	7993      	ldrb	r3, [r2, #6]
c0de5458:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de545c:	4770      	bx	lr

c0de545e <OUTLINED_FUNCTION_5>:
c0de545e:	4620      	mov	r0, r4
c0de5460:	f810 1f2d 	ldrb.w	r1, [r0, #45]!
c0de5464:	7842      	ldrb	r2, [r0, #1]
c0de5466:	7883      	ldrb	r3, [r0, #2]
c0de5468:	78c0      	ldrb	r0, [r0, #3]
c0de546a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de546e:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5472:	ea41 4300 	orr.w	r3, r1, r0, lsl #16
c0de5476:	2b00      	cmp	r3, #0
c0de5478:	4770      	bx	lr

c0de547a <OUTLINED_FUNCTION_6>:
c0de547a:	217f      	movs	r1, #127	@ 0x7f
c0de547c:	2201      	movs	r2, #1
c0de547e:	f829 1000 	strh.w	r1, [r9, r0]
c0de5482:	4448      	add	r0, r9
c0de5484:	2100      	movs	r1, #0
c0de5486:	8081      	strh	r1, [r0, #4]
c0de5488:	80c1      	strh	r1, [r0, #6]
c0de548a:	213f      	movs	r1, #63	@ 0x3f
c0de548c:	7242      	strb	r2, [r0, #9]
c0de548e:	8041      	strh	r1, [r0, #2]
c0de5490:	4770      	bx	lr

c0de5492 <OUTLINED_FUNCTION_7>:
c0de5492:	7e03      	ldrb	r3, [r0, #24]
c0de5494:	7dc4      	ldrb	r4, [r0, #23]
c0de5496:	7945      	ldrb	r5, [r0, #5]
c0de5498:	7a8e      	ldrb	r6, [r1, #10]
c0de549a:	7acf      	ldrb	r7, [r1, #11]
c0de549c:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de54a0:	4770      	bx	lr

c0de54a2 <OUTLINED_FUNCTION_8>:
c0de54a2:	7e01      	ldrb	r1, [r0, #24]
c0de54a4:	7dc3      	ldrb	r3, [r0, #23]
c0de54a6:	7944      	ldrb	r4, [r0, #5]
c0de54a8:	7957      	ldrb	r7, [r2, #5]
c0de54aa:	7995      	ldrb	r5, [r2, #6]
c0de54ac:	79d6      	ldrb	r6, [r2, #7]
c0de54ae:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de54b2:	4770      	bx	lr

c0de54b4 <OUTLINED_FUNCTION_9>:
c0de54b4:	4620      	mov	r0, r4
c0de54b6:	f7ff bcdb 	b.w	c0de4e70 <compute_position>

c0de54ba <OUTLINED_FUNCTION_10>:
c0de54ba:	7acb      	ldrb	r3, [r1, #11]
c0de54bc:	7a8c      	ldrb	r4, [r1, #10]
c0de54be:	794d      	ldrb	r5, [r1, #5]
c0de54c0:	7dc6      	ldrb	r6, [r0, #23]
c0de54c2:	7e07      	ldrb	r7, [r0, #24]
c0de54c4:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de54c8:	4770      	bx	lr

c0de54ca <OUTLINED_FUNCTION_11>:
c0de54ca:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de54ce:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de54d2:	2e00      	cmp	r6, #0
c0de54d4:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de54d8:	4770      	bx	lr

c0de54da <OUTLINED_FUNCTION_12>:
c0de54da:	4620      	mov	r0, r4
c0de54dc:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de54e0:	7842      	ldrb	r2, [r0, #1]
c0de54e2:	7883      	ldrb	r3, [r0, #2]
c0de54e4:	78c5      	ldrb	r5, [r0, #3]
c0de54e6:	4770      	bx	lr

c0de54e8 <OUTLINED_FUNCTION_13>:
c0de54e8:	0e29      	lsrs	r1, r5, #24
c0de54ea:	70c1      	strb	r1, [r0, #3]
c0de54ec:	0c29      	lsrs	r1, r5, #16
c0de54ee:	7081      	strb	r1, [r0, #2]
c0de54f0:	0a29      	lsrs	r1, r5, #8
c0de54f2:	7041      	strb	r1, [r0, #1]
c0de54f4:	4770      	bx	lr

c0de54f6 <OUTLINED_FUNCTION_14>:
c0de54f6:	7fe0      	ldrb	r0, [r4, #31]
c0de54f8:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de54fc:	4629      	mov	r1, r5
c0de54fe:	4633      	mov	r3, r6
c0de5500:	9000      	str	r0, [sp, #0]
c0de5502:	4770      	bx	lr

c0de5504 <nbgl_objPoolRelease>:
c0de5504:	b5b0      	push	{r4, r5, r7, lr}
c0de5506:	490b      	ldr	r1, [pc, #44]	@ (c0de5534 <nbgl_objPoolRelease+0x30>)
c0de5508:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de550c:	b182      	cbz	r2, c0de5530 <nbgl_objPoolRelease+0x2c>
c0de550e:	2303      	movs	r3, #3
c0de5510:	24ff      	movs	r4, #255	@ 0xff
c0de5512:	2b2b      	cmp	r3, #43	@ 0x2b
c0de5514:	d00c      	beq.n	c0de5530 <nbgl_objPoolRelease+0x2c>
c0de5516:	eb09 0501 	add.w	r5, r9, r1
c0de551a:	5ced      	ldrb	r5, [r5, r3]
c0de551c:	4285      	cmp	r5, r0
c0de551e:	d105      	bne.n	c0de552c <nbgl_objPoolRelease+0x28>
c0de5520:	3a01      	subs	r2, #1
c0de5522:	eb09 0501 	add.w	r5, r9, r1
c0de5526:	f809 2001 	strb.w	r2, [r9, r1]
c0de552a:	54ec      	strb	r4, [r5, r3]
c0de552c:	3301      	adds	r3, #1
c0de552e:	e7f0      	b.n	c0de5512 <nbgl_objPoolRelease+0xe>
c0de5530:	bdb0      	pop	{r4, r5, r7, pc}
c0de5532:	bf00      	nop
c0de5534:	000014e0 	.word	0x000014e0

c0de5538 <nbgl_objPoolGet>:
c0de5538:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de553c:	4f1a      	ldr	r7, [pc, #104]	@ (c0de55a8 <nbgl_objPoolGet+0x70>)
c0de553e:	4680      	mov	r8, r0
c0de5540:	468a      	mov	sl, r1
c0de5542:	eb09 0007 	add.w	r0, r9, r7
c0de5546:	7840      	ldrb	r0, [r0, #1]
c0de5548:	b938      	cbnz	r0, c0de555a <nbgl_objPoolGet+0x22>
c0de554a:	eb09 0407 	add.w	r4, r9, r7
c0de554e:	f000 f8a3 	bl	c0de5698 <OUTLINED_FUNCTION_1>
c0de5552:	f000 f89b 	bl	c0de568c <OUTLINED_FUNCTION_0>
c0de5556:	2001      	movs	r0, #1
c0de5558:	7060      	strb	r0, [r4, #1]
c0de555a:	f819 4007 	ldrb.w	r4, [r9, r7]
c0de555e:	2c27      	cmp	r4, #39	@ 0x27
c0de5560:	d101      	bne.n	c0de5566 <nbgl_objPoolGet+0x2e>
c0de5562:	2600      	movs	r6, #0
c0de5564:	e01c      	b.n	c0de55a0 <nbgl_objPoolGet+0x68>
c0de5566:	eb09 0007 	add.w	r0, r9, r7
c0de556a:	1c85      	adds	r5, r0, #2
c0de556c:	2000      	movs	r0, #0
c0de556e:	f5b0 6ff5 	cmp.w	r0, #1960	@ 0x7a8
c0de5572:	d0f6      	beq.n	c0de5562 <nbgl_objPoolGet+0x2a>
c0de5574:	f815 1f01 	ldrb.w	r1, [r5, #1]!
c0de5578:	3031      	adds	r0, #49	@ 0x31
c0de557a:	29ff      	cmp	r1, #255	@ 0xff
c0de557c:	d1f7      	bne.n	c0de556e <nbgl_objPoolGet+0x36>
c0de557e:	490b      	ldr	r1, [pc, #44]	@ (c0de55ac <nbgl_objPoolGet+0x74>)
c0de5580:	4449      	add	r1, r9
c0de5582:	eb01 0b00 	add.w	fp, r1, r0
c0de5586:	2131      	movs	r1, #49	@ 0x31
c0de5588:	f1ab 0631 	sub.w	r6, fp, #49	@ 0x31
c0de558c:	4630      	mov	r0, r6
c0de558e:	f005 f8f1 	bl	c0dea774 <__aeabi_memclr>
c0de5592:	1c60      	adds	r0, r4, #1
c0de5594:	f885 a000 	strb.w	sl, [r5]
c0de5598:	f80b 8c16 	strb.w	r8, [fp, #-22]
c0de559c:	f809 0007 	strb.w	r0, [r9, r7]
c0de55a0:	4630      	mov	r0, r6
c0de55a2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de55a6:	bf00      	nop
c0de55a8:	000014e0 	.word	0x000014e0
c0de55ac:	00000c35 	.word	0x00000c35

c0de55b0 <nbgl_containerPoolRelease>:
c0de55b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de55b2:	4910      	ldr	r1, [pc, #64]	@ (c0de55f4 <nbgl_containerPoolRelease+0x44>)
c0de55b4:	eb09 0201 	add.w	r2, r9, r1
c0de55b8:	7892      	ldrb	r2, [r2, #2]
c0de55ba:	b1ca      	cbz	r2, c0de55f0 <nbgl_containerPoolRelease+0x40>
c0de55bc:	4c0e      	ldr	r4, [pc, #56]	@ (c0de55f8 <nbgl_containerPoolRelease+0x48>)
c0de55be:	2300      	movs	r3, #0
c0de55c0:	25ff      	movs	r5, #255	@ 0xff
c0de55c2:	2600      	movs	r6, #0
c0de55c4:	2e40      	cmp	r6, #64	@ 0x40
c0de55c6:	d013      	beq.n	c0de55f0 <nbgl_containerPoolRelease+0x40>
c0de55c8:	eb09 0701 	add.w	r7, r9, r1
c0de55cc:	4437      	add	r7, r6
c0de55ce:	f897 702b 	ldrb.w	r7, [r7, #43]	@ 0x2b
c0de55d2:	4287      	cmp	r7, r0
c0de55d4:	d10a      	bne.n	c0de55ec <nbgl_containerPoolRelease+0x3c>
c0de55d6:	eb09 0704 	add.w	r7, r9, r4
c0de55da:	3a01      	subs	r2, #1
c0de55dc:	f847 3026 	str.w	r3, [r7, r6, lsl #2]
c0de55e0:	eb09 0701 	add.w	r7, r9, r1
c0de55e4:	70ba      	strb	r2, [r7, #2]
c0de55e6:	4437      	add	r7, r6
c0de55e8:	f887 502b 	strb.w	r5, [r7, #43]	@ 0x2b
c0de55ec:	3601      	adds	r6, #1
c0de55ee:	e7e9      	b.n	c0de55c4 <nbgl_containerPoolRelease+0x14>
c0de55f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de55f2:	bf00      	nop
c0de55f4:	000014e0 	.word	0x000014e0
c0de55f8:	000013e0 	.word	0x000013e0

c0de55fc <nbgl_containerPoolGet>:
c0de55fc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5600:	f8df a080 	ldr.w	sl, [pc, #128]	@ c0de5684 <nbgl_containerPoolGet+0x88>
c0de5604:	4605      	mov	r5, r0
c0de5606:	4688      	mov	r8, r1
c0de5608:	eb09 000a 	add.w	r0, r9, sl
c0de560c:	7840      	ldrb	r0, [r0, #1]
c0de560e:	b938      	cbnz	r0, c0de5620 <nbgl_containerPoolGet+0x24>
c0de5610:	eb09 040a 	add.w	r4, r9, sl
c0de5614:	f000 f840 	bl	c0de5698 <OUTLINED_FUNCTION_1>
c0de5618:	f000 f838 	bl	c0de568c <OUTLINED_FUNCTION_0>
c0de561c:	2001      	movs	r0, #1
c0de561e:	7060      	strb	r0, [r4, #1]
c0de5620:	eb09 000a 	add.w	r0, r9, sl
c0de5624:	2600      	movs	r6, #0
c0de5626:	7880      	ldrb	r0, [r0, #2]
c0de5628:	1944      	adds	r4, r0, r5
c0de562a:	2c3e      	cmp	r4, #62	@ 0x3e
c0de562c:	d826      	bhi.n	c0de567c <nbgl_containerPoolGet+0x80>
c0de562e:	eb09 000a 	add.w	r0, r9, sl
c0de5632:	f100 072b 	add.w	r7, r0, #43	@ 0x2b
c0de5636:	2000      	movs	r0, #0
c0de5638:	f5b6 7f80 	cmp.w	r6, #256	@ 0x100
c0de563c:	d01d      	beq.n	c0de567a <nbgl_containerPoolGet+0x7e>
c0de563e:	f817 1b01 	ldrb.w	r1, [r7], #1
c0de5642:	29ff      	cmp	r1, #255	@ 0xff
c0de5644:	f04f 0100 	mov.w	r1, #0
c0de5648:	bf08      	it	eq
c0de564a:	1c41      	addeq	r1, r0, #1
c0de564c:	b2c8      	uxtb	r0, r1
c0de564e:	3604      	adds	r6, #4
c0de5650:	42a8      	cmp	r0, r5
c0de5652:	4608      	mov	r0, r1
c0de5654:	d1f0      	bne.n	c0de5638 <nbgl_containerPoolGet+0x3c>
c0de5656:	480c      	ldr	r0, [pc, #48]	@ (c0de5688 <nbgl_containerPoolGet+0x8c>)
c0de5658:	00a9      	lsls	r1, r5, #2
c0de565a:	4448      	add	r0, r9
c0de565c:	eba0 0085 	sub.w	r0, r0, r5, lsl #2
c0de5660:	4406      	add	r6, r0
c0de5662:	4630      	mov	r0, r6
c0de5664:	f005 f886 	bl	c0dea774 <__aeabi_memclr>
c0de5668:	1b78      	subs	r0, r7, r5
c0de566a:	4629      	mov	r1, r5
c0de566c:	4642      	mov	r2, r8
c0de566e:	f005 f888 	bl	c0dea782 <__aeabi_memset>
c0de5672:	eb09 000a 	add.w	r0, r9, sl
c0de5676:	7084      	strb	r4, [r0, #2]
c0de5678:	e000      	b.n	c0de567c <nbgl_containerPoolGet+0x80>
c0de567a:	2600      	movs	r6, #0
c0de567c:	4630      	mov	r0, r6
c0de567e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de5682:	bf00      	nop
c0de5684:	000014e0 	.word	0x000014e0
c0de5688:	000013e0 	.word	0x000013e0

c0de568c <OUTLINED_FUNCTION_0>:
c0de568c:	f104 002b 	add.w	r0, r4, #43	@ 0x2b
c0de5690:	2140      	movs	r1, #64	@ 0x40
c0de5692:	22ff      	movs	r2, #255	@ 0xff
c0de5694:	f005 b875 	b.w	c0dea782 <__aeabi_memset>

c0de5698 <OUTLINED_FUNCTION_1>:
c0de5698:	2128      	movs	r1, #40	@ 0x28
c0de569a:	22ff      	movs	r2, #255	@ 0xff
c0de569c:	1ce0      	adds	r0, r4, #3
c0de569e:	f005 b870 	b.w	c0dea782 <__aeabi_memset>
	...

c0de56a4 <nbgl_screenRedraw>:
c0de56a4:	b510      	push	{r4, lr}
c0de56a6:	4807      	ldr	r0, [pc, #28]	@ (c0de56c4 <nbgl_screenRedraw+0x20>)
c0de56a8:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de56ac:	b141      	cbz	r1, c0de56c0 <nbgl_screenRedraw+0x1c>
c0de56ae:	eb09 0400 	add.w	r4, r9, r0
c0de56b2:	f004 fcd9 	bl	c0dea068 <nbgl_screen_reinit>
c0de56b6:	6860      	ldr	r0, [r4, #4]
c0de56b8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de56bc:	f7fe beec 	b.w	c0de4498 <nbgl_objDraw>
c0de56c0:	bd10      	pop	{r4, pc}
c0de56c2:	bf00      	nop
c0de56c4:	0000164c 	.word	0x0000164c

c0de56c8 <nbgl_screenGetTop>:
c0de56c8:	4804      	ldr	r0, [pc, #16]	@ (c0de56dc <nbgl_screenGetTop+0x14>)
c0de56ca:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de56ce:	4448      	add	r0, r9
c0de56d0:	6840      	ldr	r0, [r0, #4]
c0de56d2:	2900      	cmp	r1, #0
c0de56d4:	bf08      	it	eq
c0de56d6:	4608      	moveq	r0, r1
c0de56d8:	4770      	bx	lr
c0de56da:	bf00      	nop
c0de56dc:	0000164c 	.word	0x0000164c

c0de56e0 <nbgl_screenSet>:
c0de56e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de56e2:	4607      	mov	r7, r0
c0de56e4:	480d      	ldr	r0, [pc, #52]	@ (c0de571c <nbgl_screenSet+0x3c>)
c0de56e6:	460d      	mov	r5, r1
c0de56e8:	461e      	mov	r6, r3
c0de56ea:	4614      	mov	r4, r2
c0de56ec:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de56f0:	b931      	cbnz	r1, c0de5700 <nbgl_screenSet+0x20>
c0de56f2:	2101      	movs	r1, #1
c0de56f4:	f809 1000 	strb.w	r1, [r9, r0]
c0de56f8:	4909      	ldr	r1, [pc, #36]	@ (c0de5720 <nbgl_screenSet+0x40>)
c0de56fa:	4448      	add	r0, r9
c0de56fc:	4449      	add	r1, r9
c0de56fe:	6041      	str	r1, [r0, #4]
c0de5700:	2000      	movs	r0, #0
c0de5702:	f7ff feff 	bl	c0de5504 <nbgl_objPoolRelease>
c0de5706:	2000      	movs	r0, #0
c0de5708:	f7ff ff52 	bl	c0de55b0 <nbgl_containerPoolRelease>
c0de570c:	2000      	movs	r0, #0
c0de570e:	4639      	mov	r1, r7
c0de5710:	462a      	mov	r2, r5
c0de5712:	4623      	mov	r3, r4
c0de5714:	9600      	str	r6, [sp, #0]
c0de5716:	f000 f805 	bl	c0de5724 <nbgl_screenSetAt>
c0de571a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de571c:	0000164c 	.word	0x0000164c
c0de5720:	0000154b 	.word	0x0000154b

c0de5724 <nbgl_screenSetAt>:
c0de5724:	2803      	cmp	r0, #3
c0de5726:	bf84      	itt	hi
c0de5728:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de572c:	4770      	bxhi	lr
c0de572e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5732:	4604      	mov	r4, r0
c0de5734:	460f      	mov	r7, r1
c0de5736:	f8dd a020 	ldr.w	sl, [sp, #32]
c0de573a:	4610      	mov	r0, r2
c0de573c:	461d      	mov	r5, r3
c0de573e:	4616      	mov	r6, r2
c0de5740:	4621      	mov	r1, r4
c0de5742:	f7ff ff5b 	bl	c0de55fc <nbgl_containerPoolGet>
c0de5746:	f8df 8104 	ldr.w	r8, [pc, #260]	@ c0de584c <nbgl_screenSetAt+0x128>
c0de574a:	01a3      	lsls	r3, r4, #6
c0de574c:	2100      	movs	r1, #0
c0de574e:	eb09 0208 	add.w	r2, r9, r8
c0de5752:	54d1      	strb	r1, [r2, r3]
c0de5754:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de5758:	ea4f 231a 	mov.w	r3, sl, lsr #8
c0de575c:	6038      	str	r0, [r7, #0]
c0de575e:	f882 3033 	strb.w	r3, [r2, #51]	@ 0x33
c0de5762:	0a03      	lsrs	r3, r0, #8
c0de5764:	f882 6020 	strb.w	r6, [r2, #32]
c0de5768:	ea4f 661a 	mov.w	r6, sl, lsr #24
c0de576c:	71d1      	strb	r1, [r2, #7]
c0de576e:	7151      	strb	r1, [r2, #5]
c0de5770:	7351      	strb	r1, [r2, #13]
c0de5772:	7311      	strb	r1, [r2, #12]
c0de5774:	72d1      	strb	r1, [r2, #11]
c0de5776:	7291      	strb	r1, [r2, #10]
c0de5778:	70d1      	strb	r1, [r2, #3]
c0de577a:	7091      	strb	r1, [r2, #2]
c0de577c:	7051      	strb	r1, [r2, #1]
c0de577e:	76d1      	strb	r1, [r2, #27]
c0de5780:	7211      	strb	r1, [r2, #8]
c0de5782:	f882 403e 	strb.w	r4, [r2, #62]	@ 0x3e
c0de5786:	77d1      	strb	r1, [r2, #31]
c0de5788:	f882 3023 	strb.w	r3, [r2, #35]	@ 0x23
c0de578c:	2340      	movs	r3, #64	@ 0x40
c0de578e:	7193      	strb	r3, [r2, #6]
c0de5790:	2380      	movs	r3, #128	@ 0x80
c0de5792:	7113      	strb	r3, [r2, #4]
c0de5794:	4613      	mov	r3, r2
c0de5796:	f802 0f22 	strb.w	r0, [r2, #34]!
c0de579a:	f803 af32 	strb.w	sl, [r3, #50]!
c0de579e:	70de      	strb	r6, [r3, #3]
c0de57a0:	ea4f 461a 	mov.w	r6, sl, lsr #16
c0de57a4:	709e      	strb	r6, [r3, #2]
c0de57a6:	0e03      	lsrs	r3, r0, #24
c0de57a8:	0c00      	lsrs	r0, r0, #16
c0de57aa:	70d3      	strb	r3, [r2, #3]
c0de57ac:	7090      	strb	r0, [r2, #2]
c0de57ae:	b3ad      	cbz	r5, c0de581c <nbgl_screenSetAt+0xf8>
c0de57b0:	7828      	ldrb	r0, [r5, #0]
c0de57b2:	7869      	ldrb	r1, [r5, #1]
c0de57b4:	78aa      	ldrb	r2, [r5, #2]
c0de57b6:	78eb      	ldrb	r3, [r5, #3]
c0de57b8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de57bc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de57c0:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de57c4:	f004 fbd6 	bl	c0de9f74 <pic>
c0de57c8:	eb09 0108 	add.w	r1, r9, r8
c0de57cc:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de57d0:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de57d4:	f815 2f04 	ldrb.w	r2, [r5, #4]!
c0de57d8:	f815 3f04 	ldrb.w	r3, [r5, #4]!
c0de57dc:	f815 cc03 	ldrb.w	ip, [r5, #-3]
c0de57e0:	f815 7c02 	ldrb.w	r7, [r5, #-2]
c0de57e4:	f815 ec01 	ldrb.w	lr, [r5, #-1]
c0de57e8:	786e      	ldrb	r6, [r5, #1]
c0de57ea:	f801 2f04 	strb.w	r2, [r1, #4]!
c0de57ee:	78ea      	ldrb	r2, [r5, #3]
c0de57f0:	78ad      	ldrb	r5, [r5, #2]
c0de57f2:	f801 3f04 	strb.w	r3, [r1, #4]!
c0de57f6:	0e03      	lsrs	r3, r0, #24
c0de57f8:	f801 3c05 	strb.w	r3, [r1, #-5]
c0de57fc:	0c03      	lsrs	r3, r0, #16
c0de57fe:	0a00      	lsrs	r0, r0, #8
c0de5800:	704e      	strb	r6, [r1, #1]
c0de5802:	f801 7c02 	strb.w	r7, [r1, #-2]
c0de5806:	f801 ec01 	strb.w	lr, [r1, #-1]
c0de580a:	f801 cc03 	strb.w	ip, [r1, #-3]
c0de580e:	f801 3c06 	strb.w	r3, [r1, #-6]
c0de5812:	f801 0c07 	strb.w	r0, [r1, #-7]
c0de5816:	708d      	strb	r5, [r1, #2]
c0de5818:	70ca      	strb	r2, [r1, #3]
c0de581a:	e008      	b.n	c0de582e <nbgl_screenSetAt+0x10a>
c0de581c:	eb09 0008 	add.w	r0, r9, r8
c0de5820:	eb00 1084 	add.w	r0, r0, r4, lsl #6
c0de5824:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5828:	70c1      	strb	r1, [r0, #3]
c0de582a:	7081      	strb	r1, [r0, #2]
c0de582c:	7041      	strb	r1, [r0, #1]
c0de582e:	eb09 0008 	add.w	r0, r9, r8
c0de5832:	eb00 1484 	add.w	r4, r0, r4, lsl #6
c0de5836:	f004 fdfd 	bl	c0dea434 <os_sched_current_task>
c0de583a:	3804      	subs	r0, #4
c0de583c:	fab0 f080 	clz	r0, r0
c0de5840:	0940      	lsrs	r0, r0, #5
c0de5842:	f884 003f 	strb.w	r0, [r4, #63]	@ 0x3f
c0de5846:	2000      	movs	r0, #0
c0de5848:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de584c:	0000154b 	.word	0x0000154b

c0de5850 <nbgl_screenPush>:
c0de5850:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5854:	f8df 80f8 	ldr.w	r8, [pc, #248]	@ c0de5950 <nbgl_screenPush+0x100>
c0de5858:	4682      	mov	sl, r0
c0de585a:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de585e:	2803      	cmp	r0, #3
c0de5860:	d871      	bhi.n	c0de5946 <nbgl_screenPush+0xf6>
c0de5862:	4694      	mov	ip, r2
c0de5864:	468e      	mov	lr, r1
c0de5866:	b1a0      	cbz	r0, c0de5892 <nbgl_screenPush+0x42>
c0de5868:	483a      	ldr	r0, [pc, #232]	@ (c0de5954 <nbgl_screenPush+0x104>)
c0de586a:	4448      	add	r0, r9
c0de586c:	f100 057a 	add.w	r5, r0, #122	@ 0x7a
c0de5870:	2001      	movs	r0, #1
c0de5872:	2804      	cmp	r0, #4
c0de5874:	d037      	beq.n	c0de58e6 <nbgl_screenPush+0x96>
c0de5876:	782c      	ldrb	r4, [r5, #0]
c0de5878:	786e      	ldrb	r6, [r5, #1]
c0de587a:	78af      	ldrb	r7, [r5, #2]
c0de587c:	78ea      	ldrb	r2, [r5, #3]
c0de587e:	ea47 2202 	orr.w	r2, r7, r2, lsl #8
c0de5882:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de5886:	ea44 4202 	orr.w	r2, r4, r2, lsl #16
c0de588a:	b372      	cbz	r2, c0de58ea <nbgl_screenPush+0x9a>
c0de588c:	3540      	adds	r5, #64	@ 0x40
c0de588e:	3001      	adds	r0, #1
c0de5890:	e7ef      	b.n	c0de5872 <nbgl_screenPush+0x22>
c0de5892:	4d30      	ldr	r5, [pc, #192]	@ (c0de5954 <nbgl_screenPush+0x104>)
c0de5894:	2700      	movs	r7, #0
c0de5896:	2001      	movs	r0, #1
c0de5898:	f809 0008 	strb.w	r0, [r9, r8]
c0de589c:	444d      	add	r5, r9
c0de589e:	0e2e      	lsrs	r6, r5, #24
c0de58a0:	f885 7077 	strb.w	r7, [r5, #119]	@ 0x77
c0de58a4:	f885 7020 	strb.w	r7, [r5, #32]
c0de58a8:	f885 507a 	strb.w	r5, [r5, #122]	@ 0x7a
c0de58ac:	f885 607d 	strb.w	r6, [r5, #125]	@ 0x7d
c0de58b0:	0c2e      	lsrs	r6, r5, #16
c0de58b2:	f885 607c 	strb.w	r6, [r5, #124]	@ 0x7c
c0de58b6:	0a2e      	lsrs	r6, r5, #8
c0de58b8:	f885 607b 	strb.w	r6, [r5, #123]	@ 0x7b
c0de58bc:	462e      	mov	r6, r5
c0de58be:	f806 7f76 	strb.w	r7, [r6, #118]!
c0de58c2:	70f7      	strb	r7, [r6, #3]
c0de58c4:	70b7      	strb	r7, [r6, #2]
c0de58c6:	f105 0740 	add.w	r7, r5, #64	@ 0x40
c0de58ca:	eb09 0608 	add.w	r6, r9, r8
c0de58ce:	6077      	str	r7, [r6, #4]
c0de58d0:	462e      	mov	r6, r5
c0de58d2:	0e3c      	lsrs	r4, r7, #24
c0de58d4:	f806 7f36 	strb.w	r7, [r6, #54]!
c0de58d8:	70f4      	strb	r4, [r6, #3]
c0de58da:	0c3c      	lsrs	r4, r7, #16
c0de58dc:	70b4      	strb	r4, [r6, #2]
c0de58de:	0a3c      	lsrs	r4, r7, #8
c0de58e0:	f885 4037 	strb.w	r4, [r5, #55]	@ 0x37
c0de58e4:	e01f      	b.n	c0de5926 <nbgl_screenPush+0xd6>
c0de58e6:	2004      	movs	r0, #4
c0de58e8:	e01d      	b.n	c0de5926 <nbgl_screenPush+0xd6>
c0de58ea:	eb09 0208 	add.w	r2, r9, r8
c0de58ee:	f1a5 063a 	sub.w	r6, r5, #58	@ 0x3a
c0de58f2:	6854      	ldr	r4, [r2, #4]
c0de58f4:	0a37      	lsrs	r7, r6, #8
c0de58f6:	0e31      	lsrs	r1, r6, #24
c0de58f8:	6056      	str	r6, [r2, #4]
c0de58fa:	f884 7037 	strb.w	r7, [r4, #55]	@ 0x37
c0de58fe:	4627      	mov	r7, r4
c0de5900:	f807 6f36 	strb.w	r6, [r7, #54]!
c0de5904:	70f9      	strb	r1, [r7, #3]
c0de5906:	0c31      	lsrs	r1, r6, #16
c0de5908:	70b9      	strb	r1, [r7, #2]
c0de590a:	0e21      	lsrs	r1, r4, #24
c0de590c:	702c      	strb	r4, [r5, #0]
c0de590e:	70e9      	strb	r1, [r5, #3]
c0de5910:	0c21      	lsrs	r1, r4, #16
c0de5912:	70a9      	strb	r1, [r5, #2]
c0de5914:	0a21      	lsrs	r1, r4, #8
c0de5916:	7069      	strb	r1, [r5, #1]
c0de5918:	2100      	movs	r1, #0
c0de591a:	f805 1c03 	strb.w	r1, [r5, #-3]
c0de591e:	f805 1d04 	strb.w	r1, [r5, #-4]!
c0de5922:	70a9      	strb	r1, [r5, #2]
c0de5924:	70e9      	strb	r1, [r5, #3]
c0de5926:	b2c5      	uxtb	r5, r0
c0de5928:	9300      	str	r3, [sp, #0]
c0de592a:	4651      	mov	r1, sl
c0de592c:	4672      	mov	r2, lr
c0de592e:	4663      	mov	r3, ip
c0de5930:	4628      	mov	r0, r5
c0de5932:	f7ff fef7 	bl	c0de5724 <nbgl_screenSetAt>
c0de5936:	2800      	cmp	r0, #0
c0de5938:	d405      	bmi.n	c0de5946 <nbgl_screenPush+0xf6>
c0de593a:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de593e:	3001      	adds	r0, #1
c0de5940:	f809 0008 	strb.w	r0, [r9, r8]
c0de5944:	e001      	b.n	c0de594a <nbgl_screenPush+0xfa>
c0de5946:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de594a:	4628      	mov	r0, r5
c0de594c:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de5950:	0000164c 	.word	0x0000164c
c0de5954:	0000154b 	.word	0x0000154b

c0de5958 <nbgl_screenPop>:
c0de5958:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de595a:	4e49      	ldr	r6, [pc, #292]	@ (c0de5a80 <nbgl_screenPop+0x128>)
c0de595c:	4604      	mov	r4, r0
c0de595e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de5962:	2800      	cmp	r0, #0
c0de5964:	d045      	beq.n	c0de59f2 <nbgl_screenPop+0x9a>
c0de5966:	f8df c11c 	ldr.w	ip, [pc, #284]	@ c0de5a84 <nbgl_screenPop+0x12c>
c0de596a:	eb09 0306 	add.w	r3, r9, r6
c0de596e:	1e41      	subs	r1, r0, #1
c0de5970:	685b      	ldr	r3, [r3, #4]
c0de5972:	f809 1006 	strb.w	r1, [r9, r6]
c0de5976:	eb09 020c 	add.w	r2, r9, ip
c0de597a:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de597e:	429a      	cmp	r2, r3
c0de5980:	d03a      	beq.n	c0de59f8 <nbgl_screenPop+0xa0>
c0de5982:	eb09 010c 	add.w	r1, r9, ip
c0de5986:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de598a:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de598e:	784b      	ldrb	r3, [r1, #1]
c0de5990:	788d      	ldrb	r5, [r1, #2]
c0de5992:	78c9      	ldrb	r1, [r1, #3]
c0de5994:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5998:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de599c:	ea42 4001 	orr.w	r0, r2, r1, lsl #16
c0de59a0:	b170      	cbz	r0, c0de59c0 <nbgl_screenPop+0x68>
c0de59a2:	eb09 020c 	add.w	r2, r9, ip
c0de59a6:	4601      	mov	r1, r0
c0de59a8:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de59ac:	f812 3f36 	ldrb.w	r3, [r2, #54]!
c0de59b0:	7855      	ldrb	r5, [r2, #1]
c0de59b2:	7897      	ldrb	r7, [r2, #2]
c0de59b4:	78d2      	ldrb	r2, [r2, #3]
c0de59b6:	f801 3f36 	strb.w	r3, [r1, #54]!
c0de59ba:	708f      	strb	r7, [r1, #2]
c0de59bc:	70ca      	strb	r2, [r1, #3]
c0de59be:	704d      	strb	r5, [r1, #1]
c0de59c0:	eb09 010c 	add.w	r1, r9, ip
c0de59c4:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de59c8:	f811 2f36 	ldrb.w	r2, [r1, #54]!
c0de59cc:	784b      	ldrb	r3, [r1, #1]
c0de59ce:	788d      	ldrb	r5, [r1, #2]
c0de59d0:	78c9      	ldrb	r1, [r1, #3]
c0de59d2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de59d6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de59da:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de59de:	b322      	cbz	r2, c0de5a2a <nbgl_screenPop+0xd2>
c0de59e0:	f802 0f3a 	strb.w	r0, [r2, #58]!
c0de59e4:	0e01      	lsrs	r1, r0, #24
c0de59e6:	70d1      	strb	r1, [r2, #3]
c0de59e8:	0c01      	lsrs	r1, r0, #16
c0de59ea:	0a00      	lsrs	r0, r0, #8
c0de59ec:	7091      	strb	r1, [r2, #2]
c0de59ee:	7050      	strb	r0, [r2, #1]
c0de59f0:	e01b      	b.n	c0de5a2a <nbgl_screenPop+0xd2>
c0de59f2:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de59f6:	e041      	b.n	c0de5a7c <nbgl_screenPop+0x124>
c0de59f8:	0609      	lsls	r1, r1, #24
c0de59fa:	d012      	beq.n	c0de5a22 <nbgl_screenPop+0xca>
c0de59fc:	eb09 010c 	add.w	r1, r9, ip
c0de5a00:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de5a04:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de5a08:	784b      	ldrb	r3, [r1, #1]
c0de5a0a:	788d      	ldrb	r5, [r1, #2]
c0de5a0c:	78c9      	ldrb	r1, [r1, #3]
c0de5a0e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5a12:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de5a16:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de5a1a:	eb09 0206 	add.w	r2, r9, r6
c0de5a1e:	6051      	str	r1, [r2, #4]
c0de5a20:	e003      	b.n	c0de5a2a <nbgl_screenPop+0xd2>
c0de5a22:	eb09 0106 	add.w	r1, r9, r6
c0de5a26:	2200      	movs	r2, #0
c0de5a28:	604a      	str	r2, [r1, #4]
c0de5a2a:	eb09 070c 	add.w	r7, r9, ip
c0de5a2e:	2500      	movs	r5, #0
c0de5a30:	eb07 1084 	add.w	r0, r7, r4, lsl #6
c0de5a34:	f800 5f3a 	strb.w	r5, [r0, #58]!
c0de5a38:	f800 5d04 	strb.w	r5, [r0, #-4]!
c0de5a3c:	f800 5d14 	strb.w	r5, [r0, #-20]!
c0de5a40:	75c5      	strb	r5, [r0, #23]
c0de5a42:	7585      	strb	r5, [r0, #22]
c0de5a44:	7545      	strb	r5, [r0, #21]
c0de5a46:	76c5      	strb	r5, [r0, #27]
c0de5a48:	7685      	strb	r5, [r0, #26]
c0de5a4a:	7645      	strb	r5, [r0, #25]
c0de5a4c:	70c5      	strb	r5, [r0, #3]
c0de5a4e:	7085      	strb	r5, [r0, #2]
c0de5a50:	7045      	strb	r5, [r0, #1]
c0de5a52:	f800 5c02 	strb.w	r5, [r0, #-2]
c0de5a56:	4620      	mov	r0, r4
c0de5a58:	f7ff fd54 	bl	c0de5504 <nbgl_objPoolRelease>
c0de5a5c:	4620      	mov	r0, r4
c0de5a5e:	f7ff fda7 	bl	c0de55b0 <nbgl_containerPoolRelease>
c0de5a62:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de5a66:	2801      	cmp	r0, #1
c0de5a68:	d108      	bne.n	c0de5a7c <nbgl_screenPop+0x124>
c0de5a6a:	f897 0020 	ldrb.w	r0, [r7, #32]
c0de5a6e:	b928      	cbnz	r0, c0de5a7c <nbgl_screenPop+0x124>
c0de5a70:	2500      	movs	r5, #0
c0de5a72:	eb09 0006 	add.w	r0, r9, r6
c0de5a76:	f809 5006 	strb.w	r5, [r9, r6]
c0de5a7a:	6045      	str	r5, [r0, #4]
c0de5a7c:	4628      	mov	r0, r5
c0de5a7e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de5a80:	0000164c 	.word	0x0000164c
c0de5a84:	0000154b 	.word	0x0000154b

c0de5a88 <nbgl_screenHandler>:
c0de5a88:	b570      	push	{r4, r5, r6, lr}
c0de5a8a:	4920      	ldr	r1, [pc, #128]	@ (c0de5b0c <nbgl_screenHandler+0x84>)
c0de5a8c:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de5a90:	b352      	cbz	r2, c0de5ae8 <nbgl_screenHandler+0x60>
c0de5a92:	4449      	add	r1, r9
c0de5a94:	6849      	ldr	r1, [r1, #4]
c0de5a96:	460b      	mov	r3, r1
c0de5a98:	f891 2027 	ldrb.w	r2, [r1, #39]	@ 0x27
c0de5a9c:	f813 4f26 	ldrb.w	r4, [r3, #38]!
c0de5aa0:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de5aa4:	789c      	ldrb	r4, [r3, #2]
c0de5aa6:	78db      	ldrb	r3, [r3, #3]
c0de5aa8:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5aac:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de5ab0:	b1d2      	cbz	r2, c0de5ae8 <nbgl_screenHandler+0x60>
c0de5ab2:	460b      	mov	r3, r1
c0de5ab4:	f813 4f2a 	ldrb.w	r4, [r3, #42]!
c0de5ab8:	785d      	ldrb	r5, [r3, #1]
c0de5aba:	789e      	ldrb	r6, [r3, #2]
c0de5abc:	78db      	ldrb	r3, [r3, #3]
c0de5abe:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5ac2:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5ac6:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de5aca:	b16b      	cbz	r3, c0de5ae8 <nbgl_screenHandler+0x60>
c0de5acc:	1a1c      	subs	r4, r3, r0
c0de5ace:	460d      	mov	r5, r1
c0de5ad0:	bf38      	it	cc
c0de5ad2:	2400      	movcc	r4, #0
c0de5ad4:	f805 4f2a 	strb.w	r4, [r5, #42]!
c0de5ad8:	0e26      	lsrs	r6, r4, #24
c0de5ada:	70ee      	strb	r6, [r5, #3]
c0de5adc:	0c26      	lsrs	r6, r4, #16
c0de5ade:	0a24      	lsrs	r4, r4, #8
c0de5ae0:	4283      	cmp	r3, r0
c0de5ae2:	70ae      	strb	r6, [r5, #2]
c0de5ae4:	706c      	strb	r4, [r5, #1]
c0de5ae6:	d900      	bls.n	c0de5aea <nbgl_screenHandler+0x62>
c0de5ae8:	bd70      	pop	{r4, r5, r6, pc}
c0de5aea:	4608      	mov	r0, r1
c0de5aec:	460c      	mov	r4, r1
c0de5aee:	f810 3f2e 	ldrb.w	r3, [r0, #46]!
c0de5af2:	f804 3f2a 	strb.w	r3, [r4, #42]!
c0de5af6:	7883      	ldrb	r3, [r0, #2]
c0de5af8:	78c0      	ldrb	r0, [r0, #3]
c0de5afa:	70e0      	strb	r0, [r4, #3]
c0de5afc:	f891 002f 	ldrb.w	r0, [r1, #47]	@ 0x2f
c0de5b00:	70a3      	strb	r3, [r4, #2]
c0de5b02:	7060      	strb	r0, [r4, #1]
c0de5b04:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5b08:	4710      	bx	r2
c0de5b0a:	bf00      	nop
c0de5b0c:	0000164c 	.word	0x0000164c

c0de5b10 <nbgl_stepDrawText>:
c0de5b10:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5b14:	460e      	mov	r6, r1
c0de5b16:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de5b18:	4605      	mov	r5, r0
c0de5b1a:	2000      	movs	r0, #0
c0de5b1c:	469a      	mov	sl, r3
c0de5b1e:	4617      	mov	r7, r2
c0de5b20:	f000 f830 	bl	c0de5b84 <getFreeContext>
c0de5b24:	b348      	cbz	r0, c0de5b7a <nbgl_stepDrawText+0x6a>
c0de5b26:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de5b2a:	4604      	mov	r4, r0
c0de5b2c:	6146      	str	r6, [r0, #20]
c0de5b2e:	b10f      	cbz	r7, c0de5b34 <nbgl_stepDrawText+0x24>
c0de5b30:	f000 fae1 	bl	c0de60f6 <OUTLINED_FUNCTION_1>
c0de5b34:	200a      	movs	r0, #10
c0de5b36:	f1b8 0f00 	cmp.w	r8, #0
c0de5b3a:	bf19      	ittee	ne
c0de5b3c:	4641      	movne	r1, r8
c0de5b3e:	2203      	movne	r2, #3
c0de5b40:	4651      	moveq	r1, sl
c0de5b42:	2204      	moveq	r2, #4
c0de5b44:	2372      	movs	r3, #114	@ 0x72
c0de5b46:	f7fd fdc9 	bl	c0de36dc <nbgl_getTextNbPagesInWidth>
c0de5b4a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5b4c:	7020      	strb	r0, [r4, #0]
c0de5b4e:	072a      	lsls	r2, r5, #28
c0de5b50:	bf46      	itte	mi
c0de5b52:	3801      	submi	r0, #1
c0de5b54:	7060      	strbmi	r0, [r4, #1]
c0de5b56:	7860      	ldrbpl	r0, [r4, #1]
c0de5b58:	f8c4 800c 	str.w	r8, [r4, #12]
c0de5b5c:	f8c4 a004 	str.w	sl, [r4, #4]
c0de5b60:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de5b64:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de5b68:	7461      	strb	r1, [r4, #17]
c0de5b6a:	f005 0103 	and.w	r1, r5, #3
c0de5b6e:	7421      	strb	r1, [r4, #16]
c0de5b70:	b2c1      	uxtb	r1, r0
c0de5b72:	4620      	mov	r0, r4
c0de5b74:	f000 f82c 	bl	c0de5bd0 <displayTextPage>
c0de5b78:	e000      	b.n	c0de5b7c <nbgl_stepDrawText+0x6c>
c0de5b7a:	2400      	movs	r4, #0
c0de5b7c:	4620      	mov	r0, r4
c0de5b7e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de5b84 <getFreeContext>:
c0de5b84:	b570      	push	{r4, r5, r6, lr}
c0de5b86:	4604      	mov	r4, r0
c0de5b88:	4810      	ldr	r0, [pc, #64]	@ (c0de5bcc <getFreeContext+0x48>)
c0de5b8a:	460d      	mov	r5, r1
c0de5b8c:	b151      	cbz	r1, c0de5ba4 <getFreeContext+0x20>
c0de5b8e:	2100      	movs	r1, #0
c0de5b90:	2990      	cmp	r1, #144	@ 0x90
c0de5b92:	d00a      	beq.n	c0de5baa <getFreeContext+0x26>
c0de5b94:	eb09 0200 	add.w	r2, r9, r0
c0de5b98:	440a      	add	r2, r1
c0de5b9a:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de5b9e:	b132      	cbz	r2, c0de5bae <getFreeContext+0x2a>
c0de5ba0:	3148      	adds	r1, #72	@ 0x48
c0de5ba2:	e7f5      	b.n	c0de5b90 <getFreeContext+0xc>
c0de5ba4:	eb09 0600 	add.w	r6, r9, r0
c0de5ba8:	e005      	b.n	c0de5bb6 <getFreeContext+0x32>
c0de5baa:	2600      	movs	r6, #0
c0de5bac:	e00b      	b.n	c0de5bc6 <getFreeContext+0x42>
c0de5bae:	4448      	add	r0, r9
c0de5bb0:	4408      	add	r0, r1
c0de5bb2:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de5bb6:	4630      	mov	r0, r6
c0de5bb8:	2148      	movs	r1, #72	@ 0x48
c0de5bba:	f004 fddb 	bl	c0dea774 <__aeabi_memclr>
c0de5bbe:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de5bc2:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de5bc6:	4630      	mov	r0, r6
c0de5bc8:	bd70      	pop	{r4, r5, r6, pc}
c0de5bca:	bf00      	nop
c0de5bcc:	00001654 	.word	0x00001654

c0de5bd0 <displayTextPage>:
c0de5bd0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5bd4:	b091      	sub	sp, #68	@ 0x44
c0de5bd6:	4604      	mov	r4, r0
c0de5bd8:	7840      	ldrb	r0, [r0, #1]
c0de5bda:	460e      	mov	r6, r1
c0de5bdc:	4288      	cmp	r0, r1
c0de5bde:	d21c      	bcs.n	c0de5c1a <displayTextPage+0x4a>
c0de5be0:	68a5      	ldr	r5, [r4, #8]
c0de5be2:	7820      	ldrb	r0, [r4, #0]
c0de5be4:	7066      	strb	r6, [r4, #1]
c0de5be6:	3801      	subs	r0, #1
c0de5be8:	42b0      	cmp	r0, r6
c0de5bea:	dd31      	ble.n	c0de5c50 <displayTextPage+0x80>
c0de5bec:	68e0      	ldr	r0, [r4, #12]
c0de5bee:	2101      	movs	r1, #1
c0de5bf0:	2303      	movs	r3, #3
c0de5bf2:	aa08      	add	r2, sp, #32
c0de5bf4:	e9cd 2100 	strd	r2, r1, [sp]
c0de5bf8:	4629      	mov	r1, r5
c0de5bfa:	2800      	cmp	r0, #0
c0de5bfc:	bf08      	it	eq
c0de5bfe:	2304      	moveq	r3, #4
c0de5c00:	200a      	movs	r0, #10
c0de5c02:	2272      	movs	r2, #114	@ 0x72
c0de5c04:	f7fd fc18 	bl	c0de3438 <nbgl_getTextMaxLenInNbLines>
c0de5c08:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de5c0c:	1868      	adds	r0, r5, r1
c0de5c0e:	60a0      	str	r0, [r4, #8]
c0de5c10:	5c69      	ldrb	r1, [r5, r1]
c0de5c12:	290a      	cmp	r1, #10
c0de5c14:	d11e      	bne.n	c0de5c54 <displayTextPage+0x84>
c0de5c16:	3001      	adds	r0, #1
c0de5c18:	e01b      	b.n	c0de5c52 <displayTextPage+0x82>
c0de5c1a:	68e5      	ldr	r5, [r4, #12]
c0de5c1c:	2d00      	cmp	r5, #0
c0de5c1e:	d074      	beq.n	c0de5d0a <displayTextPage+0x13a>
c0de5c20:	2700      	movs	r7, #0
c0de5c22:	f04f 0801 	mov.w	r8, #1
c0de5c26:	f10d 0a20 	add.w	sl, sp, #32
c0de5c2a:	42be      	cmp	r6, r7
c0de5c2c:	d0d9      	beq.n	c0de5be2 <displayTextPage+0x12>
c0de5c2e:	7820      	ldrb	r0, [r4, #0]
c0de5c30:	3801      	subs	r0, #1
c0de5c32:	42b8      	cmp	r0, r7
c0de5c34:	dd0a      	ble.n	c0de5c4c <displayTextPage+0x7c>
c0de5c36:	200a      	movs	r0, #10
c0de5c38:	4629      	mov	r1, r5
c0de5c3a:	2272      	movs	r2, #114	@ 0x72
c0de5c3c:	2303      	movs	r3, #3
c0de5c3e:	e9cd a800 	strd	sl, r8, [sp]
c0de5c42:	f7fd fbf9 	bl	c0de3438 <nbgl_getTextMaxLenInNbLines>
c0de5c46:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de5c4a:	4405      	add	r5, r0
c0de5c4c:	3701      	adds	r7, #1
c0de5c4e:	e7ec      	b.n	c0de5c2a <displayTextPage+0x5a>
c0de5c50:	2000      	movs	r0, #0
c0de5c52:	60a0      	str	r0, [r4, #8]
c0de5c54:	484f      	ldr	r0, [pc, #316]	@ (c0de5d94 <displayTextPage+0x1c4>)
c0de5c56:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de5c5a:	4478      	add	r0, pc
c0de5c5c:	9004      	str	r0, [sp, #16]
c0de5c5e:	2000      	movs	r0, #0
c0de5c60:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de5c64:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de5c68:	f88d 000c 	strb.w	r0, [sp, #12]
c0de5c6c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de5c6e:	ab05      	add	r3, sp, #20
c0de5c70:	c307      	stmia	r3!, {r0, r1, r2}
c0de5c72:	a803      	add	r0, sp, #12
c0de5c74:	f7fd fe60 	bl	c0de3938 <nbgl_layoutGet>
c0de5c78:	7827      	ldrb	r7, [r4, #0]
c0de5c7a:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de5c7e:	4606      	mov	r6, r0
c0de5c80:	6420      	str	r0, [r4, #64]	@ 0x40
c0de5c82:	7c20      	ldrb	r0, [r4, #16]
c0de5c84:	4639      	mov	r1, r7
c0de5c86:	4652      	mov	r2, sl
c0de5c88:	f000 f8fc 	bl	c0de5e84 <getNavigationInfo>
c0de5c8c:	4680      	mov	r8, r0
c0de5c8e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de5c92:	68e0      	ldr	r0, [r4, #12]
c0de5c94:	b188      	cbz	r0, c0de5cba <displayTextPage+0xea>
c0de5c96:	2f01      	cmp	r7, #1
c0de5c98:	d115      	bne.n	c0de5cc6 <displayTextPage+0xf6>
c0de5c9a:	6861      	ldr	r1, [r4, #4]
c0de5c9c:	2008      	movs	r0, #8
c0de5c9e:	2272      	movs	r2, #114	@ 0x72
c0de5ca0:	2300      	movs	r3, #0
c0de5ca2:	2600      	movs	r6, #0
c0de5ca4:	f7fd fc9c 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de5ca8:	2802      	cmp	r0, #2
c0de5caa:	d348      	bcc.n	c0de5d3e <displayTextPage+0x16e>
c0de5cac:	6861      	ldr	r1, [r4, #4]
c0de5cae:	2018      	movs	r0, #24
c0de5cb0:	f104 0218 	add.w	r2, r4, #24
c0de5cb4:	e9cd 2000 	strd	r2, r0, [sp]
c0de5cb8:	e021      	b.n	c0de5cfe <displayTextPage+0x12e>
c0de5cba:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de5cbe:	4630      	mov	r0, r6
c0de5cc0:	4629      	mov	r1, r5
c0de5cc2:	2200      	movs	r2, #0
c0de5cc4:	e055      	b.n	c0de5d72 <displayTextPage+0x1a2>
c0de5cc6:	f10a 0001 	add.w	r0, sl, #1
c0de5cca:	6863      	ldr	r3, [r4, #4]
c0de5ccc:	2124      	movs	r1, #36	@ 0x24
c0de5cce:	e9cd 0700 	strd	r0, r7, [sp]
c0de5cd2:	af08      	add	r7, sp, #32
c0de5cd4:	4a30      	ldr	r2, [pc, #192]	@ (c0de5d98 <displayTextPage+0x1c8>)
c0de5cd6:	4638      	mov	r0, r7
c0de5cd8:	447a      	add	r2, pc
c0de5cda:	f003 ffb1 	bl	c0de9c40 <snprintf>
c0de5cde:	2008      	movs	r0, #8
c0de5ce0:	4639      	mov	r1, r7
c0de5ce2:	2272      	movs	r2, #114	@ 0x72
c0de5ce4:	2300      	movs	r3, #0
c0de5ce6:	f04f 0a00 	mov.w	sl, #0
c0de5cea:	f7fd fc79 	bl	c0de35e0 <nbgl_getTextNbLinesInWidth>
c0de5cee:	f104 0c18 	add.w	ip, r4, #24
c0de5cf2:	2802      	cmp	r0, #2
c0de5cf4:	d32c      	bcc.n	c0de5d50 <displayTextPage+0x180>
c0de5cf6:	2018      	movs	r0, #24
c0de5cf8:	e9cd c000 	strd	ip, r0, [sp]
c0de5cfc:	a908      	add	r1, sp, #32
c0de5cfe:	2008      	movs	r0, #8
c0de5d00:	2272      	movs	r2, #114	@ 0x72
c0de5d02:	2301      	movs	r3, #1
c0de5d04:	f7fd fd7e 	bl	c0de3804 <nbgl_textReduceOnNbLines>
c0de5d08:	e02d      	b.n	c0de5d66 <displayTextPage+0x196>
c0de5d0a:	6865      	ldr	r5, [r4, #4]
c0de5d0c:	2700      	movs	r7, #0
c0de5d0e:	f04f 0801 	mov.w	r8, #1
c0de5d12:	f10d 0a20 	add.w	sl, sp, #32
c0de5d16:	42be      	cmp	r6, r7
c0de5d18:	f43f af63 	beq.w	c0de5be2 <displayTextPage+0x12>
c0de5d1c:	7820      	ldrb	r0, [r4, #0]
c0de5d1e:	3801      	subs	r0, #1
c0de5d20:	42b8      	cmp	r0, r7
c0de5d22:	dd0a      	ble.n	c0de5d3a <displayTextPage+0x16a>
c0de5d24:	200a      	movs	r0, #10
c0de5d26:	4629      	mov	r1, r5
c0de5d28:	2272      	movs	r2, #114	@ 0x72
c0de5d2a:	2304      	movs	r3, #4
c0de5d2c:	e9cd a800 	strd	sl, r8, [sp]
c0de5d30:	f7fd fb82 	bl	c0de3438 <nbgl_getTextMaxLenInNbLines>
c0de5d34:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de5d38:	4405      	add	r5, r0
c0de5d3a:	3701      	adds	r7, #1
c0de5d3c:	e7eb      	b.n	c0de5d16 <displayTextPage+0x146>
c0de5d3e:	6861      	ldr	r1, [r4, #4]
c0de5d40:	f104 0018 	add.w	r0, r4, #24
c0de5d44:	2217      	movs	r2, #23
c0de5d46:	f004 fd18 	bl	c0dea77a <__aeabi_memcpy>
c0de5d4a:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de5d4e:	e00a      	b.n	c0de5d66 <displayTextPage+0x196>
c0de5d50:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de5d52:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de5d56:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de5d5a:	8838      	ldrh	r0, [r7, #0]
c0de5d5c:	f8ac 0000 	strh.w	r0, [ip]
c0de5d60:	78b8      	ldrb	r0, [r7, #2]
c0de5d62:	f88c 0002 	strb.w	r0, [ip, #2]
c0de5d66:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de5d6a:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5d6c:	f104 0118 	add.w	r1, r4, #24
c0de5d70:	462a      	mov	r2, r5
c0de5d72:	f7fd fea3 	bl	c0de3abc <nbgl_layoutAddText>
c0de5d76:	f1b8 0f00 	cmp.w	r8, #0
c0de5d7a:	d004      	beq.n	c0de5d86 <displayTextPage+0x1b6>
c0de5d7c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5d7e:	f10d 010a 	add.w	r1, sp, #10
c0de5d82:	f7fd fe3d 	bl	c0de3a00 <nbgl_layoutAddNavigation>
c0de5d86:	f000 f9e9 	bl	c0de615c <OUTLINED_FUNCTION_4>
c0de5d8a:	f7fe fc69 	bl	c0de4660 <nbgl_refresh>
c0de5d8e:	b011      	add	sp, #68	@ 0x44
c0de5d90:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de5d94:	000001bb 	.word	0x000001bb
c0de5d98:	00004d91 	.word	0x00004d91

c0de5d9c <nbgl_stepDrawCenteredInfo>:
c0de5d9c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5da0:	b087      	sub	sp, #28
c0de5da2:	460d      	mov	r5, r1
c0de5da4:	4682      	mov	sl, r0
c0de5da6:	a802      	add	r0, sp, #8
c0de5da8:	f000 f9d3 	bl	c0de6152 <OUTLINED_FUNCTION_3>
c0de5dac:	4819      	ldr	r0, [pc, #100]	@ (c0de5e14 <nbgl_stepDrawCenteredInfo+0x78>)
c0de5dae:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de5db0:	4478      	add	r0, pc
c0de5db2:	f000 f9c5 	bl	c0de6140 <OUTLINED_FUNCTION_2>
c0de5db6:	b168      	cbz	r0, c0de5dd4 <nbgl_stepDrawCenteredInfo+0x38>
c0de5db8:	4604      	mov	r4, r0
c0de5dba:	6145      	str	r5, [r0, #20]
c0de5dbc:	b10f      	cbz	r7, c0de5dc2 <nbgl_stepDrawCenteredInfo+0x26>
c0de5dbe:	f000 f953 	bl	c0de6068 <OUTLINED_FUNCTION_0>
c0de5dc2:	f000 f9ce 	bl	c0de6162 <OUTLINED_FUNCTION_5>
c0de5dc6:	d007      	beq.n	c0de5dd8 <nbgl_stepDrawCenteredInfo+0x3c>
c0de5dc8:	2802      	cmp	r0, #2
c0de5dca:	d007      	beq.n	c0de5ddc <nbgl_stepDrawCenteredInfo+0x40>
c0de5dcc:	2801      	cmp	r0, #1
c0de5dce:	d108      	bne.n	c0de5de2 <nbgl_stepDrawCenteredInfo+0x46>
c0de5dd0:	2002      	movs	r0, #2
c0de5dd2:	e004      	b.n	c0de5dde <nbgl_stepDrawCenteredInfo+0x42>
c0de5dd4:	2400      	movs	r4, #0
c0de5dd6:	e018      	b.n	c0de5e0a <nbgl_stepDrawCenteredInfo+0x6e>
c0de5dd8:	2003      	movs	r0, #3
c0de5dda:	e000      	b.n	c0de5dde <nbgl_stepDrawCenteredInfo+0x42>
c0de5ddc:	2001      	movs	r0, #1
c0de5dde:	2500      	movs	r5, #0
c0de5de0:	e000      	b.n	c0de5de4 <nbgl_stepDrawCenteredInfo+0x48>
c0de5de2:	2000      	movs	r0, #0
c0de5de4:	f88d 0007 	strb.w	r0, [sp, #7]
c0de5de8:	a802      	add	r0, sp, #8
c0de5dea:	f7fd fda5 	bl	c0de3938 <nbgl_layoutGet>
c0de5dee:	4641      	mov	r1, r8
c0de5df0:	6420      	str	r0, [r4, #64]	@ 0x40
c0de5df2:	f7fe f86b 	bl	c0de3ecc <nbgl_layoutAddCenteredInfo>
c0de5df6:	b925      	cbnz	r5, c0de5e02 <nbgl_stepDrawCenteredInfo+0x66>
c0de5df8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5dfa:	f10d 0106 	add.w	r1, sp, #6
c0de5dfe:	f7fd fdff 	bl	c0de3a00 <nbgl_layoutAddNavigation>
c0de5e02:	f000 f9ab 	bl	c0de615c <OUTLINED_FUNCTION_4>
c0de5e06:	f7fe fc2b 	bl	c0de4660 <nbgl_refresh>
c0de5e0a:	4620      	mov	r0, r4
c0de5e0c:	b007      	add	sp, #28
c0de5e0e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de5e12:	bf00      	nop
c0de5e14:	00000065 	.word	0x00000065

c0de5e18 <actionCallback>:
c0de5e18:	b510      	push	{r4, lr}
c0de5e1a:	460c      	mov	r4, r1
c0de5e1c:	f000 f8f0 	bl	c0de6000 <getContextFromLayout>
c0de5e20:	b378      	cbz	r0, c0de5e82 <actionCallback+0x6a>
c0de5e22:	2c04      	cmp	r4, #4
c0de5e24:	d006      	beq.n	c0de5e34 <actionCallback+0x1c>
c0de5e26:	2c01      	cmp	r4, #1
c0de5e28:	d008      	beq.n	c0de5e3c <actionCallback+0x24>
c0de5e2a:	bb54      	cbnz	r4, c0de5e82 <actionCallback+0x6a>
c0de5e2c:	7841      	ldrb	r1, [r0, #1]
c0de5e2e:	b1d9      	cbz	r1, c0de5e68 <actionCallback+0x50>
c0de5e30:	3901      	subs	r1, #1
c0de5e32:	e009      	b.n	c0de5e48 <actionCallback+0x30>
c0de5e34:	6942      	ldr	r2, [r0, #20]
c0de5e36:	b322      	cbz	r2, c0de5e82 <actionCallback+0x6a>
c0de5e38:	2104      	movs	r1, #4
c0de5e3a:	e01f      	b.n	c0de5e7c <actionCallback+0x64>
c0de5e3c:	7802      	ldrb	r2, [r0, #0]
c0de5e3e:	7841      	ldrb	r1, [r0, #1]
c0de5e40:	3a01      	subs	r2, #1
c0de5e42:	428a      	cmp	r2, r1
c0de5e44:	dd05      	ble.n	c0de5e52 <actionCallback+0x3a>
c0de5e46:	3101      	adds	r1, #1
c0de5e48:	b2c9      	uxtb	r1, r1
c0de5e4a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5e4e:	f7ff bebf 	b.w	c0de5bd0 <displayTextPage>
c0de5e52:	7c01      	ldrb	r1, [r0, #16]
c0de5e54:	f041 0102 	orr.w	r1, r1, #2
c0de5e58:	2903      	cmp	r1, #3
c0de5e5a:	d001      	beq.n	c0de5e60 <actionCallback+0x48>
c0de5e5c:	7c41      	ldrb	r1, [r0, #17]
c0de5e5e:	b181      	cbz	r1, c0de5e82 <actionCallback+0x6a>
c0de5e60:	6942      	ldr	r2, [r0, #20]
c0de5e62:	b172      	cbz	r2, c0de5e82 <actionCallback+0x6a>
c0de5e64:	2101      	movs	r1, #1
c0de5e66:	e009      	b.n	c0de5e7c <actionCallback+0x64>
c0de5e68:	7c01      	ldrb	r1, [r0, #16]
c0de5e6a:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de5e6e:	2902      	cmp	r1, #2
c0de5e70:	d001      	beq.n	c0de5e76 <actionCallback+0x5e>
c0de5e72:	7c41      	ldrb	r1, [r0, #17]
c0de5e74:	b129      	cbz	r1, c0de5e82 <actionCallback+0x6a>
c0de5e76:	6942      	ldr	r2, [r0, #20]
c0de5e78:	b11a      	cbz	r2, c0de5e82 <actionCallback+0x6a>
c0de5e7a:	2100      	movs	r1, #0
c0de5e7c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5e80:	4710      	bx	r2
c0de5e82:	bd10      	pop	{r4, pc}

c0de5e84 <getNavigationInfo>:
c0de5e84:	4603      	mov	r3, r0
c0de5e86:	2902      	cmp	r1, #2
c0de5e88:	d308      	bcc.n	c0de5e9c <getNavigationInfo+0x18>
c0de5e8a:	3901      	subs	r1, #1
c0de5e8c:	4610      	mov	r0, r2
c0de5e8e:	2a00      	cmp	r2, #0
c0de5e90:	bf18      	it	ne
c0de5e92:	2001      	movne	r0, #1
c0de5e94:	4291      	cmp	r1, r2
c0de5e96:	bf88      	it	hi
c0de5e98:	3002      	addhi	r0, #2
c0de5e9a:	e000      	b.n	c0de5e9e <getNavigationInfo+0x1a>
c0de5e9c:	2000      	movs	r0, #0
c0de5e9e:	2b03      	cmp	r3, #3
c0de5ea0:	d00a      	beq.n	c0de5eb8 <getNavigationInfo+0x34>
c0de5ea2:	2b02      	cmp	r3, #2
c0de5ea4:	bf04      	itt	eq
c0de5ea6:	f040 0001 	orreq.w	r0, r0, #1
c0de5eaa:	4770      	bxeq	lr
c0de5eac:	2b01      	cmp	r3, #1
c0de5eae:	bf04      	itt	eq
c0de5eb0:	f040 0002 	orreq.w	r0, r0, #2
c0de5eb4:	4770      	bxeq	lr
c0de5eb6:	4770      	bx	lr
c0de5eb8:	2003      	movs	r0, #3
c0de5eba:	4770      	bx	lr

c0de5ebc <nbgl_stepDrawMenuList>:
c0de5ebc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de5ebe:	460f      	mov	r7, r1
c0de5ec0:	4606      	mov	r6, r0
c0de5ec2:	2002      	movs	r0, #2
c0de5ec4:	4619      	mov	r1, r3
c0de5ec6:	4615      	mov	r5, r2
c0de5ec8:	f7ff fe5c 	bl	c0de5b84 <getFreeContext>
c0de5ecc:	b170      	cbz	r0, c0de5eec <nbgl_stepDrawMenuList+0x30>
c0de5ece:	4604      	mov	r4, r0
c0de5ed0:	b10f      	cbz	r7, c0de5ed6 <nbgl_stepDrawMenuList+0x1a>
c0de5ed2:	f000 f910 	bl	c0de60f6 <OUTLINED_FUNCTION_1>
c0de5ed6:	7928      	ldrb	r0, [r5, #4]
c0de5ed8:	7220      	strb	r0, [r4, #8]
c0de5eda:	7968      	ldrb	r0, [r5, #5]
c0de5edc:	7260      	strb	r0, [r4, #9]
c0de5ede:	6828      	ldr	r0, [r5, #0]
c0de5ee0:	e9c4 6000 	strd	r6, r0, [r4]
c0de5ee4:	4620      	mov	r0, r4
c0de5ee6:	f000 f805 	bl	c0de5ef4 <displayMenuList>
c0de5eea:	e000      	b.n	c0de5eee <nbgl_stepDrawMenuList+0x32>
c0de5eec:	2400      	movs	r4, #0
c0de5eee:	4620      	mov	r0, r4
c0de5ef0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de5ef4 <displayMenuList>:
c0de5ef4:	b5b0      	push	{r4, r5, r7, lr}
c0de5ef6:	b086      	sub	sp, #24
c0de5ef8:	4604      	mov	r4, r0
c0de5efa:	2000      	movs	r0, #0
c0de5efc:	9001      	str	r0, [sp, #4]
c0de5efe:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de5f02:	4819      	ldr	r0, [pc, #100]	@ (c0de5f68 <displayMenuList+0x74>)
c0de5f04:	4478      	add	r0, pc
c0de5f06:	9002      	str	r0, [sp, #8]
c0de5f08:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de5f0c:	f88d 0004 	strb.w	r0, [sp, #4]
c0de5f10:	ca07      	ldmia	r2, {r0, r1, r2}
c0de5f12:	ab03      	add	r3, sp, #12
c0de5f14:	c307      	stmia	r3!, {r0, r1, r2}
c0de5f16:	a801      	add	r0, sp, #4
c0de5f18:	f7fd fd0e 	bl	c0de3938 <nbgl_layoutGet>
c0de5f1c:	1d25      	adds	r5, r4, #4
c0de5f1e:	6420      	str	r0, [r4, #64]	@ 0x40
c0de5f20:	4629      	mov	r1, r5
c0de5f22:	f7fd ff7f 	bl	c0de3e24 <nbgl_layoutAddMenuList>
c0de5f26:	7a20      	ldrb	r0, [r4, #8]
c0de5f28:	2802      	cmp	r0, #2
c0de5f2a:	d316      	bcc.n	c0de5f5a <displayMenuList+0x66>
c0de5f2c:	2101      	movs	r1, #1
c0de5f2e:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de5f32:	7969      	ldrb	r1, [r5, #5]
c0de5f34:	2900      	cmp	r1, #0
c0de5f36:	460a      	mov	r2, r1
c0de5f38:	bf18      	it	ne
c0de5f3a:	2201      	movne	r2, #1
c0de5f3c:	3801      	subs	r0, #1
c0de5f3e:	f88d 2003 	strb.w	r2, [sp, #3]
c0de5f42:	4288      	cmp	r0, r1
c0de5f44:	d903      	bls.n	c0de5f4e <displayMenuList+0x5a>
c0de5f46:	1c90      	adds	r0, r2, #2
c0de5f48:	f88d 0003 	strb.w	r0, [sp, #3]
c0de5f4c:	e000      	b.n	c0de5f50 <displayMenuList+0x5c>
c0de5f4e:	b121      	cbz	r1, c0de5f5a <displayMenuList+0x66>
c0de5f50:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5f52:	f10d 0102 	add.w	r1, sp, #2
c0de5f56:	f7fd fd53 	bl	c0de3a00 <nbgl_layoutAddNavigation>
c0de5f5a:	f000 f8ff 	bl	c0de615c <OUTLINED_FUNCTION_4>
c0de5f5e:	f7fe fb7f 	bl	c0de4660 <nbgl_refresh>
c0de5f62:	b006      	add	sp, #24
c0de5f64:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f66:	bf00      	nop
c0de5f68:	00000121 	.word	0x00000121

c0de5f6c <nbgl_stepDrawSwitch>:
c0de5f6c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5f70:	b087      	sub	sp, #28
c0de5f72:	460d      	mov	r5, r1
c0de5f74:	4682      	mov	sl, r0
c0de5f76:	a802      	add	r0, sp, #8
c0de5f78:	f000 f8eb 	bl	c0de6152 <OUTLINED_FUNCTION_3>
c0de5f7c:	4819      	ldr	r0, [pc, #100]	@ (c0de5fe4 <nbgl_stepDrawSwitch+0x78>)
c0de5f7e:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de5f80:	4478      	add	r0, pc
c0de5f82:	f000 f8dd 	bl	c0de6140 <OUTLINED_FUNCTION_2>
c0de5f86:	b168      	cbz	r0, c0de5fa4 <nbgl_stepDrawSwitch+0x38>
c0de5f88:	4604      	mov	r4, r0
c0de5f8a:	6145      	str	r5, [r0, #20]
c0de5f8c:	b10f      	cbz	r7, c0de5f92 <nbgl_stepDrawSwitch+0x26>
c0de5f8e:	f000 f86b 	bl	c0de6068 <OUTLINED_FUNCTION_0>
c0de5f92:	f000 f8e6 	bl	c0de6162 <OUTLINED_FUNCTION_5>
c0de5f96:	d007      	beq.n	c0de5fa8 <nbgl_stepDrawSwitch+0x3c>
c0de5f98:	2802      	cmp	r0, #2
c0de5f9a:	d007      	beq.n	c0de5fac <nbgl_stepDrawSwitch+0x40>
c0de5f9c:	2801      	cmp	r0, #1
c0de5f9e:	d108      	bne.n	c0de5fb2 <nbgl_stepDrawSwitch+0x46>
c0de5fa0:	2002      	movs	r0, #2
c0de5fa2:	e004      	b.n	c0de5fae <nbgl_stepDrawSwitch+0x42>
c0de5fa4:	2400      	movs	r4, #0
c0de5fa6:	e018      	b.n	c0de5fda <nbgl_stepDrawSwitch+0x6e>
c0de5fa8:	2003      	movs	r0, #3
c0de5faa:	e000      	b.n	c0de5fae <nbgl_stepDrawSwitch+0x42>
c0de5fac:	2001      	movs	r0, #1
c0de5fae:	2500      	movs	r5, #0
c0de5fb0:	e000      	b.n	c0de5fb4 <nbgl_stepDrawSwitch+0x48>
c0de5fb2:	2000      	movs	r0, #0
c0de5fb4:	f88d 0007 	strb.w	r0, [sp, #7]
c0de5fb8:	a802      	add	r0, sp, #8
c0de5fba:	f7fd fcbd 	bl	c0de3938 <nbgl_layoutGet>
c0de5fbe:	4641      	mov	r1, r8
c0de5fc0:	6420      	str	r0, [r4, #64]	@ 0x40
c0de5fc2:	f7fe f923 	bl	c0de420c <nbgl_layoutAddSwitch>
c0de5fc6:	b925      	cbnz	r5, c0de5fd2 <nbgl_stepDrawSwitch+0x66>
c0de5fc8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5fca:	f10d 0106 	add.w	r1, sp, #6
c0de5fce:	f7fd fd17 	bl	c0de3a00 <nbgl_layoutAddNavigation>
c0de5fd2:	f000 f8c3 	bl	c0de615c <OUTLINED_FUNCTION_4>
c0de5fd6:	f7fe fb43 	bl	c0de4660 <nbgl_refresh>
c0de5fda:	4620      	mov	r0, r4
c0de5fdc:	b007      	add	sp, #28
c0de5fde:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de5fe2:	bf00      	nop
c0de5fe4:	fffffe95 	.word	0xfffffe95

c0de5fe8 <nbgl_stepRelease>:
c0de5fe8:	b138      	cbz	r0, c0de5ffa <nbgl_stepRelease+0x12>
c0de5fea:	b510      	push	{r4, lr}
c0de5fec:	4604      	mov	r4, r0
c0de5fee:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5ff0:	f7fe f9fc 	bl	c0de43ec <nbgl_layoutRelease>
c0de5ff4:	2100      	movs	r1, #0
c0de5ff6:	6421      	str	r1, [r4, #64]	@ 0x40
c0de5ff8:	bd10      	pop	{r4, pc}
c0de5ffa:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5ffe:	4770      	bx	lr

c0de6000 <getContextFromLayout>:
c0de6000:	4a08      	ldr	r2, [pc, #32]	@ (c0de6024 <getContextFromLayout+0x24>)
c0de6002:	2100      	movs	r1, #0
c0de6004:	29d8      	cmp	r1, #216	@ 0xd8
c0de6006:	bf04      	itt	eq
c0de6008:	2000      	moveq	r0, #0
c0de600a:	4770      	bxeq	lr
c0de600c:	eb09 0302 	add.w	r3, r9, r2
c0de6010:	440b      	add	r3, r1
c0de6012:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de6014:	4283      	cmp	r3, r0
c0de6016:	d001      	beq.n	c0de601c <getContextFromLayout+0x1c>
c0de6018:	3148      	adds	r1, #72	@ 0x48
c0de601a:	e7f3      	b.n	c0de6004 <getContextFromLayout+0x4>
c0de601c:	eb09 0002 	add.w	r0, r9, r2
c0de6020:	4408      	add	r0, r1
c0de6022:	4770      	bx	lr
c0de6024:	00001654 	.word	0x00001654

c0de6028 <menuListActionCallback>:
c0de6028:	b510      	push	{r4, lr}
c0de602a:	460c      	mov	r4, r1
c0de602c:	f7ff ffe8 	bl	c0de6000 <getContextFromLayout>
c0de6030:	b1c8      	cbz	r0, c0de6066 <menuListActionCallback+0x3e>
c0de6032:	2c04      	cmp	r4, #4
c0de6034:	d006      	beq.n	c0de6044 <menuListActionCallback+0x1c>
c0de6036:	2c01      	cmp	r4, #1
c0de6038:	d00a      	beq.n	c0de6050 <menuListActionCallback+0x28>
c0de603a:	b9a4      	cbnz	r4, c0de6066 <menuListActionCallback+0x3e>
c0de603c:	7a41      	ldrb	r1, [r0, #9]
c0de603e:	b191      	cbz	r1, c0de6066 <menuListActionCallback+0x3e>
c0de6040:	3901      	subs	r1, #1
c0de6042:	e00b      	b.n	c0de605c <menuListActionCallback+0x34>
c0de6044:	7a41      	ldrb	r1, [r0, #9]
c0de6046:	6802      	ldr	r2, [r0, #0]
c0de6048:	4608      	mov	r0, r1
c0de604a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de604e:	4710      	bx	r2
c0de6050:	7a02      	ldrb	r2, [r0, #8]
c0de6052:	7a41      	ldrb	r1, [r0, #9]
c0de6054:	3a01      	subs	r2, #1
c0de6056:	428a      	cmp	r2, r1
c0de6058:	dd05      	ble.n	c0de6066 <menuListActionCallback+0x3e>
c0de605a:	3101      	adds	r1, #1
c0de605c:	7241      	strb	r1, [r0, #9]
c0de605e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6062:	f7ff bf47 	b.w	c0de5ef4 <displayMenuList>
c0de6066:	bd10      	pop	{r4, pc}

c0de6068 <OUTLINED_FUNCTION_0>:
c0de6068:	7838      	ldrb	r0, [r7, #0]
c0de606a:	7879      	ldrb	r1, [r7, #1]
c0de606c:	78ba      	ldrb	r2, [r7, #2]
c0de606e:	78fb      	ldrb	r3, [r7, #3]
c0de6070:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6074:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6078:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de607c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de607e:	4638      	mov	r0, r7
c0de6080:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de6084:	7a79      	ldrb	r1, [r7, #9]
c0de6086:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de608a:	7882      	ldrb	r2, [r0, #2]
c0de608c:	78c3      	ldrb	r3, [r0, #3]
c0de608e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6092:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6096:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de6098:	4639      	mov	r1, r7
c0de609a:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de609e:	797a      	ldrb	r2, [r7, #5]
c0de60a0:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de60a4:	788b      	ldrb	r3, [r1, #2]
c0de60a6:	78cd      	ldrb	r5, [r1, #3]
c0de60a8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de60ac:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de60b0:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de60b2:	783a      	ldrb	r2, [r7, #0]
c0de60b4:	787b      	ldrb	r3, [r7, #1]
c0de60b6:	78bd      	ldrb	r5, [r7, #2]
c0de60b8:	78fe      	ldrb	r6, [r7, #3]
c0de60ba:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de60be:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de60c2:	7803      	ldrb	r3, [r0, #0]
c0de60c4:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de60c8:	7885      	ldrb	r5, [r0, #2]
c0de60ca:	78c0      	ldrb	r0, [r0, #3]
c0de60cc:	9204      	str	r2, [sp, #16]
c0de60ce:	7a7a      	ldrb	r2, [r7, #9]
c0de60d0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de60d4:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de60d8:	788b      	ldrb	r3, [r1, #2]
c0de60da:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de60de:	780a      	ldrb	r2, [r1, #0]
c0de60e0:	78c9      	ldrb	r1, [r1, #3]
c0de60e2:	9006      	str	r0, [sp, #24]
c0de60e4:	7978      	ldrb	r0, [r7, #5]
c0de60e6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de60ea:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de60ee:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de60f2:	9005      	str	r0, [sp, #20]
c0de60f4:	4770      	bx	lr

c0de60f6 <OUTLINED_FUNCTION_1>:
c0de60f6:	7838      	ldrb	r0, [r7, #0]
c0de60f8:	7879      	ldrb	r1, [r7, #1]
c0de60fa:	78ba      	ldrb	r2, [r7, #2]
c0de60fc:	78fb      	ldrb	r3, [r7, #3]
c0de60fe:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6102:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6106:	4639      	mov	r1, r7
c0de6108:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de610c:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de6110:	6360      	str	r0, [r4, #52]	@ 0x34
c0de6112:	7a78      	ldrb	r0, [r7, #9]
c0de6114:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6118:	788a      	ldrb	r2, [r1, #2]
c0de611a:	78c9      	ldrb	r1, [r1, #3]
c0de611c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6120:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6124:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de6126:	7978      	ldrb	r0, [r7, #5]
c0de6128:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de612c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6130:	78b9      	ldrb	r1, [r7, #2]
c0de6132:	78fa      	ldrb	r2, [r7, #3]
c0de6134:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6138:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de613c:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de613e:	4770      	bx	lr

c0de6140 <OUTLINED_FUNCTION_2>:
c0de6140:	f88d 1008 	strb.w	r1, [sp, #8]
c0de6144:	9003      	str	r0, [sp, #12]
c0de6146:	2000      	movs	r0, #0
c0de6148:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de614c:	2001      	movs	r0, #1
c0de614e:	f7ff bd19 	b.w	c0de5b84 <getFreeContext>

c0de6152 <OUTLINED_FUNCTION_3>:
c0de6152:	2114      	movs	r1, #20
c0de6154:	4698      	mov	r8, r3
c0de6156:	4617      	mov	r7, r2
c0de6158:	f004 bb0c 	b.w	c0dea774 <__aeabi_memclr>

c0de615c <OUTLINED_FUNCTION_4>:
c0de615c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de615e:	f7fe b93d 	b.w	c0de43dc <nbgl_layoutDraw>

c0de6162 <OUTLINED_FUNCTION_5>:
c0de6162:	2501      	movs	r5, #1
c0de6164:	f00a 0003 	and.w	r0, sl, #3
c0de6168:	2803      	cmp	r0, #3
c0de616a:	7025      	strb	r5, [r4, #0]
c0de616c:	7420      	strb	r0, [r4, #16]
c0de616e:	4770      	bx	lr

c0de6170 <nbgl_useCaseHomeAndSettings>:
c0de6170:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6174:	4607      	mov	r7, r0
c0de6176:	4810      	ldr	r0, [pc, #64]	@ (c0de61b8 <nbgl_useCaseHomeAndSettings+0x48>)
c0de6178:	f001 fbd2 	bl	c0de7920 <OUTLINED_FUNCTION_0>
c0de617c:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de6180:	6425      	str	r5, [r4, #64]	@ 0x40
c0de6182:	9d06      	ldr	r5, [sp, #24]
c0de6184:	4628      	mov	r0, r5
c0de6186:	f003 fef5 	bl	c0de9f74 <pic>
c0de618a:	6460      	str	r0, [r4, #68]	@ 0x44
c0de618c:	9807      	ldr	r0, [sp, #28]
c0de618e:	f003 fef1 	bl	c0de9f74 <pic>
c0de6192:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6194:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de6198:	6521      	str	r1, [r4, #80]	@ 0x50
c0de619a:	9908      	ldr	r1, [sp, #32]
c0de619c:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de61a0:	bf18      	it	ne
c0de61a2:	2d00      	cmpne	r5, #0
c0de61a4:	d103      	bne.n	c0de61ae <nbgl_useCaseHomeAndSettings+0x3e>
c0de61a6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de61aa:	f000 b843 	b.w	c0de6234 <startUseCaseHome>
c0de61ae:	4640      	mov	r0, r8
c0de61b0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de61b4:	f000 b802 	b.w	c0de61bc <startUseCaseSettingsAtPage>
c0de61b8:	0000172c 	.word	0x0000172c

c0de61bc <startUseCaseSettingsAtPage>:
c0de61bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de61be:	b08d      	sub	sp, #52	@ 0x34
c0de61c0:	4604      	mov	r4, r0
c0de61c2:	4668      	mov	r0, sp
c0de61c4:	2134      	movs	r1, #52	@ 0x34
c0de61c6:	f004 fad5 	bl	c0dea774 <__aeabi_memclr>
c0de61ca:	4e19      	ldr	r6, [pc, #100]	@ (c0de6230 <startUseCaseSettingsAtPage+0x74>)
c0de61cc:	466d      	mov	r5, sp
c0de61ce:	eb09 0006 	add.w	r0, r9, r6
c0de61d2:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de61d6:	280f      	cmp	r0, #15
c0de61d8:	bf1e      	ittt	ne
c0de61da:	eb09 0006 	addne.w	r0, r9, r6
c0de61de:	210e      	movne	r1, #14
c0de61e0:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de61e4:	2700      	movs	r7, #0
c0de61e6:	eb09 0006 	add.w	r0, r9, r6
c0de61ea:	2101      	movs	r1, #1
c0de61ec:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de61f0:	eb09 0006 	add.w	r0, r9, r6
c0de61f4:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de61f6:	7a01      	ldrb	r1, [r0, #8]
c0de61f8:	428f      	cmp	r7, r1
c0de61fa:	d20e      	bcs.n	c0de621a <startUseCaseSettingsAtPage+0x5e>
c0de61fc:	b279      	sxtb	r1, r7
c0de61fe:	462a      	mov	r2, r5
c0de6200:	f000 fc5c 	bl	c0de6abc <getContentAtIdx>
c0de6204:	f000 fcb4 	bl	c0de6b70 <getContentNbElement>
c0de6208:	eb09 0106 	add.w	r1, r9, r6
c0de620c:	3701      	adds	r7, #1
c0de620e:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de6212:	4410      	add	r0, r2
c0de6214:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de6218:	e7ea      	b.n	c0de61f0 <startUseCaseSettingsAtPage+0x34>
c0de621a:	eb09 0006 	add.w	r0, r9, r6
c0de621e:	2100      	movs	r1, #0
c0de6220:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de6224:	2000      	movs	r0, #0
c0de6226:	f000 fead 	bl	c0de6f84 <displaySettingsPage>
c0de622a:	b00d      	add	sp, #52	@ 0x34
c0de622c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de622e:	bf00      	nop
c0de6230:	0000172c 	.word	0x0000172c

c0de6234 <startUseCaseHome>:
c0de6234:	b510      	push	{r4, lr}
c0de6236:	4821      	ldr	r0, [pc, #132]	@ (c0de62bc <startUseCaseHome+0x88>)
c0de6238:	eb09 0100 	add.w	r1, r9, r0
c0de623c:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de6240:	290d      	cmp	r1, #13
c0de6242:	d009      	beq.n	c0de6258 <startUseCaseHome+0x24>
c0de6244:	290e      	cmp	r1, #14
c0de6246:	d114      	bne.n	c0de6272 <startUseCaseHome+0x3e>
c0de6248:	eb09 0100 	add.w	r1, r9, r0
c0de624c:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de624e:	2102      	movs	r1, #2
c0de6250:	2a00      	cmp	r2, #0
c0de6252:	bf08      	it	eq
c0de6254:	2101      	moveq	r1, #1
c0de6256:	e00d      	b.n	c0de6274 <startUseCaseHome+0x40>
c0de6258:	eb09 0200 	add.w	r2, r9, r0
c0de625c:	2102      	movs	r1, #2
c0de625e:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de6260:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de6262:	2c00      	cmp	r4, #0
c0de6264:	bf08      	it	eq
c0de6266:	2101      	moveq	r1, #1
c0de6268:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de626c:	b133      	cbz	r3, c0de627c <startUseCaseHome+0x48>
c0de626e:	3101      	adds	r1, #1
c0de6270:	e000      	b.n	c0de6274 <startUseCaseHome+0x40>
c0de6272:	2100      	movs	r1, #0
c0de6274:	eb09 0200 	add.w	r2, r9, r0
c0de6278:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de627c:	eb09 0200 	add.w	r2, r9, r0
c0de6280:	210c      	movs	r1, #12
c0de6282:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de6286:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de628a:	2103      	movs	r1, #3
c0de628c:	2b00      	cmp	r3, #0
c0de628e:	bf08      	it	eq
c0de6290:	2102      	moveq	r1, #2
c0de6292:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de6296:	b124      	cbz	r4, c0de62a2 <startUseCaseHome+0x6e>
c0de6298:	3101      	adds	r1, #1
c0de629a:	eb09 0200 	add.w	r2, r9, r0
c0de629e:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de62a2:	eb09 0200 	add.w	r2, r9, r0
c0de62a6:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de62a8:	b11a      	cbz	r2, c0de62b2 <startUseCaseHome+0x7e>
c0de62aa:	4448      	add	r0, r9
c0de62ac:	3101      	adds	r1, #1
c0de62ae:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de62b2:	2000      	movs	r0, #0
c0de62b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de62b8:	f000 bf52 	b.w	c0de7160 <displayHomePage>
c0de62bc:	0000172c 	.word	0x0000172c

c0de62c0 <nbgl_useCaseReview>:
c0de62c0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de62c2:	4614      	mov	r4, r2
c0de62c4:	460a      	mov	r2, r1
c0de62c6:	4601      	mov	r1, r0
c0de62c8:	9808      	ldr	r0, [sp, #32]
c0de62ca:	9003      	str	r0, [sp, #12]
c0de62cc:	9807      	ldr	r0, [sp, #28]
c0de62ce:	9002      	str	r0, [sp, #8]
c0de62d0:	9806      	ldr	r0, [sp, #24]
c0de62d2:	e9cd 3000 	strd	r3, r0, [sp]
c0de62d6:	2002      	movs	r0, #2
c0de62d8:	4623      	mov	r3, r4
c0de62da:	f000 f801 	bl	c0de62e0 <useCaseReview>
c0de62de:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de62e0 <useCaseReview>:
c0de62e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de62e4:	4607      	mov	r7, r0
c0de62e6:	4811      	ldr	r0, [pc, #68]	@ (c0de632c <useCaseReview+0x4c>)
c0de62e8:	4688      	mov	r8, r1
c0de62ea:	2140      	movs	r1, #64	@ 0x40
c0de62ec:	461d      	mov	r5, r3
c0de62ee:	4614      	mov	r4, r2
c0de62f0:	f001 fb35 	bl	c0de795e <OUTLINED_FUNCTION_5>
c0de62f4:	9808      	ldr	r0, [sp, #32]
c0de62f6:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de62f8:	9807      	ldr	r0, [sp, #28]
c0de62fa:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de62fc:	9906      	ldr	r1, [sp, #24]
c0de62fe:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de6302:	6471      	str	r1, [r6, #68]	@ 0x44
c0de6304:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6306:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de630a:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de630e:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de6310:	2104      	movs	r1, #4
c0de6312:	2800      	cmp	r0, #0
c0de6314:	bf08      	it	eq
c0de6316:	2103      	moveq	r1, #3
c0de6318:	7a20      	ldrb	r0, [r4, #8]
c0de631a:	4408      	add	r0, r1
c0de631c:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de6320:	2000      	movs	r0, #0
c0de6322:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6326:	f000 b8a7 	b.w	c0de6478 <displayReviewPage>
c0de632a:	bf00      	nop
c0de632c:	0000172c 	.word	0x0000172c

c0de6330 <nbgl_useCaseAdvancedReview>:
c0de6330:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6334:	b088      	sub	sp, #32
c0de6336:	468c      	mov	ip, r1
c0de6338:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de633c:	e9dd 8b10 	ldrd	r8, fp, [sp, #64]	@ 0x40
c0de6340:	4616      	mov	r6, r2
c0de6342:	4604      	mov	r4, r0
c0de6344:	f1ba 0f00 	cmp.w	sl, #0
c0de6348:	d034      	beq.n	c0de63b4 <nbgl_useCaseAdvancedReview+0x84>
c0de634a:	f8da 7000 	ldr.w	r7, [sl]
c0de634e:	b92f      	cbnz	r7, c0de635c <nbgl_useCaseAdvancedReview+0x2c>
c0de6350:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de6354:	b910      	cbnz	r0, c0de635c <nbgl_useCaseAdvancedReview+0x2c>
c0de6356:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de635a:	b358      	cbz	r0, c0de63b4 <nbgl_useCaseAdvancedReview+0x84>
c0de635c:	481f      	ldr	r0, [pc, #124]	@ (c0de63dc <nbgl_useCaseAdvancedReview+0xac>)
c0de635e:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de6362:	2128      	movs	r1, #40	@ 0x28
c0de6364:	9705      	str	r7, [sp, #20]
c0de6366:	461f      	mov	r7, r3
c0de6368:	4665      	mov	r5, ip
c0de636a:	eb09 0400 	add.w	r4, r9, r0
c0de636e:	4620      	mov	r0, r4
c0de6370:	f004 fa00 	bl	c0dea774 <__aeabi_memclr>
c0de6374:	4919      	ldr	r1, [pc, #100]	@ (c0de63dc <nbgl_useCaseAdvancedReview+0xac>)
c0de6376:	2002      	movs	r0, #2
c0de6378:	46c4      	mov	ip, r8
c0de637a:	462a      	mov	r2, r5
c0de637c:	f809 0001 	strb.w	r0, [r9, r1]
c0de6380:	9905      	ldr	r1, [sp, #20]
c0de6382:	2040      	movs	r0, #64	@ 0x40
c0de6384:	2908      	cmp	r1, #8
c0de6386:	bf08      	it	eq
c0de6388:	2080      	moveq	r0, #128	@ 0x80
c0de638a:	9906      	ldr	r1, [sp, #24]
c0de638c:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de6390:	4301      	orrs	r1, r0
c0de6392:	1d20      	adds	r0, r4, #4
c0de6394:	e880 09e2 	stmia.w	r0, {r1, r5, r6, r7, r8, fp}
c0de6398:	9807      	ldr	r0, [sp, #28]
c0de639a:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de639e:	6220      	str	r0, [r4, #32]
c0de63a0:	f89a 0000 	ldrb.w	r0, [sl]
c0de63a4:	f010 0f16 	tst.w	r0, #22
c0de63a8:	d00b      	beq.n	c0de63c2 <nbgl_useCaseAdvancedReview+0x92>
c0de63aa:	b008      	add	sp, #32
c0de63ac:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de63b0:	f000 b816 	b.w	c0de63e0 <displayInitialWarning>
c0de63b4:	9103      	str	r1, [sp, #12]
c0de63b6:	e88d 0908 	stmia.w	sp, {r3, r8, fp}
c0de63ba:	2002      	movs	r0, #2
c0de63bc:	4621      	mov	r1, r4
c0de63be:	4662      	mov	r2, ip
c0de63c0:	e005      	b.n	c0de63ce <nbgl_useCaseAdvancedReview+0x9e>
c0de63c2:	2002      	movs	r0, #2
c0de63c4:	463d      	mov	r5, r7
c0de63c6:	e9cd 7c00 	strd	r7, ip, [sp]
c0de63ca:	e9cd b802 	strd	fp, r8, [sp, #8]
c0de63ce:	4633      	mov	r3, r6
c0de63d0:	f7ff ff86 	bl	c0de62e0 <useCaseReview>
c0de63d4:	b008      	add	sp, #32
c0de63d6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de63da:	bf00      	nop
c0de63dc:	0000172c 	.word	0x0000172c

c0de63e0 <displayInitialWarning>:
c0de63e0:	4803      	ldr	r0, [pc, #12]	@ (c0de63f0 <displayInitialWarning+0x10>)
c0de63e2:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de63e6:	4448      	add	r0, r9
c0de63e8:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de63ea:	f000 bfa5 	b.w	c0de7338 <displayWarningStep>
c0de63ee:	bf00      	nop
c0de63f0:	0000172c 	.word	0x0000172c

c0de63f4 <nbgl_useCaseReviewBlindSigning>:
c0de63f4:	b5b0      	push	{r4, r5, r7, lr}
c0de63f6:	b086      	sub	sp, #24
c0de63f8:	4d06      	ldr	r5, [pc, #24]	@ (c0de6414 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de63fa:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de63fc:	447d      	add	r5, pc
c0de63fe:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de6402:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de6404:	9401      	str	r4, [sp, #4]
c0de6406:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de6408:	9400      	str	r4, [sp, #0]
c0de640a:	f7ff ff91 	bl	c0de6330 <nbgl_useCaseAdvancedReview>
c0de640e:	b006      	add	sp, #24
c0de6410:	bdb0      	pop	{r4, r5, r7, pc}
c0de6412:	bf00      	nop
c0de6414:	000051e0 	.word	0x000051e0

c0de6418 <nbgl_useCaseAddressReview>:
c0de6418:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de641c:	f8df 8054 	ldr.w	r8, [pc, #84]	@ c0de6474 <nbgl_useCaseAddressReview+0x5c>
c0de6420:	460c      	mov	r4, r1
c0de6422:	4607      	mov	r7, r0
c0de6424:	2140      	movs	r1, #64	@ 0x40
c0de6426:	469a      	mov	sl, r3
c0de6428:	4616      	mov	r6, r2
c0de642a:	eb09 0508 	add.w	r5, r9, r8
c0de642e:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de6432:	f004 f99f 	bl	c0dea774 <__aeabi_memclr>
c0de6436:	2004      	movs	r0, #4
c0de6438:	652f      	str	r7, [r5, #80]	@ 0x50
c0de643a:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de643e:	9908      	ldr	r1, [sp, #32]
c0de6440:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de6444:	64a9      	str	r1, [r5, #72]	@ 0x48
c0de6446:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6448:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de644c:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de644e:	b15c      	cbz	r4, c0de6468 <nbgl_useCaseAddressReview+0x50>
c0de6450:	4620      	mov	r0, r4
c0de6452:	eb09 0508 	add.w	r5, r9, r8
c0de6456:	f003 fd8d 	bl	c0de9f74 <pic>
c0de645a:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de645c:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de6460:	7a21      	ldrb	r1, [r4, #8]
c0de6462:	4408      	add	r0, r1
c0de6464:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de6468:	2000      	movs	r0, #0
c0de646a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de646e:	f000 b803 	b.w	c0de6478 <displayReviewPage>
c0de6472:	bf00      	nop
c0de6474:	0000172c 	.word	0x0000172c

c0de6478 <displayReviewPage>:
c0de6478:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de647c:	b088      	sub	sp, #32
c0de647e:	4e40      	ldr	r6, [pc, #256]	@ (c0de6580 <displayReviewPage+0x108>)
c0de6480:	4680      	mov	r8, r0
c0de6482:	2100      	movs	r1, #0
c0de6484:	2501      	movs	r5, #1
c0de6486:	e9cd 1106 	strd	r1, r1, [sp, #24]
c0de648a:	e9cd 1104 	strd	r1, r1, [sp, #16]
c0de648e:	eb09 0006 	add.w	r0, r9, r6
c0de6492:	6c83      	ldr	r3, [r0, #72]	@ 0x48
c0de6494:	6341      	str	r1, [r0, #52]	@ 0x34
c0de6496:	2102      	movs	r1, #2
c0de6498:	2b00      	cmp	r3, #0
c0de649a:	bf08      	it	eq
c0de649c:	25ff      	moveq	r5, #255	@ 0xff
c0de649e:	bf08      	it	eq
c0de64a0:	2101      	moveq	r1, #1
c0de64a2:	f890 7030 	ldrb.w	r7, [r0, #48]	@ 0x30
c0de64a6:	f890 2031 	ldrb.w	r2, [r0, #49]	@ 0x31
c0de64aa:	1ebc      	subs	r4, r7, #2
c0de64ac:	b250      	sxtb	r0, r2
c0de64ae:	b2e4      	uxtb	r4, r4
c0de64b0:	42a0      	cmp	r0, r4
c0de64b2:	da07      	bge.n	c0de64c4 <displayReviewPage+0x4c>
c0de64b4:	4281      	cmp	r1, r0
c0de64b6:	dd0c      	ble.n	c0de64d2 <displayReviewPage+0x5a>
c0de64b8:	2a00      	cmp	r2, #0
c0de64ba:	d041      	beq.n	c0de6540 <displayReviewPage+0xc8>
c0de64bc:	4285      	cmp	r5, r0
c0de64be:	bf08      	it	eq
c0de64c0:	9307      	streq	r3, [sp, #28]
c0de64c2:	e043      	b.n	c0de654c <displayReviewPage+0xd4>
c0de64c4:	d110      	bne.n	c0de64e8 <displayReviewPage+0x70>
c0de64c6:	a905      	add	r1, sp, #20
c0de64c8:	aa07      	add	r2, sp, #28
c0de64ca:	2001      	movs	r0, #1
c0de64cc:	f000 ff74 	bl	c0de73b8 <getLastPageInfo>
c0de64d0:	e03c      	b.n	c0de654c <displayReviewPage+0xd4>
c0de64d2:	eb09 0306 	add.w	r3, r9, r6
c0de64d6:	6d1d      	ldr	r5, [r3, #80]	@ 0x50
c0de64d8:	b18d      	cbz	r5, c0de64fe <displayReviewPage+0x86>
c0de64da:	4281      	cmp	r1, r0
c0de64dc:	d10f      	bne.n	c0de64fe <displayReviewPage+0x86>
c0de64de:	9506      	str	r5, [sp, #24]
c0de64e0:	4828      	ldr	r0, [pc, #160]	@ (c0de6584 <displayReviewPage+0x10c>)
c0de64e2:	4478      	add	r0, pc
c0de64e4:	9007      	str	r0, [sp, #28]
c0de64e6:	e032      	b.n	c0de654e <displayReviewPage+0xd6>
c0de64e8:	1e79      	subs	r1, r7, #1
c0de64ea:	b2c9      	uxtb	r1, r1
c0de64ec:	4288      	cmp	r0, r1
c0de64ee:	d12d      	bne.n	c0de654c <displayReviewPage+0xd4>
c0de64f0:	a905      	add	r1, sp, #20
c0de64f2:	aa07      	add	r2, sp, #28
c0de64f4:	2000      	movs	r0, #0
c0de64f6:	2500      	movs	r5, #0
c0de64f8:	f000 ff5e 	bl	c0de73b8 <getLastPageInfo>
c0de64fc:	e027      	b.n	c0de654e <displayReviewPage+0xd6>
c0de64fe:	2000      	movs	r0, #0
c0de6500:	f10d 030f 	add.w	r3, sp, #15
c0de6504:	f88d 000f 	strb.w	r0, [sp, #15]
c0de6508:	eb09 0006 	add.w	r0, r9, r6
c0de650c:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de650e:	ac05      	add	r4, sp, #20
c0de6510:	af04      	add	r7, sp, #16
c0de6512:	9302      	str	r3, [sp, #8]
c0de6514:	e9cd 7400 	strd	r7, r4, [sp]
c0de6518:	1a57      	subs	r7, r2, r1
c0de651a:	2d00      	cmp	r5, #0
c0de651c:	bf18      	it	ne
c0de651e:	3f01      	subne	r7, #1
c0de6520:	aa07      	add	r2, sp, #28
c0de6522:	b2f9      	uxtb	r1, r7
c0de6524:	ab06      	add	r3, sp, #24
c0de6526:	f000 fcb1 	bl	c0de6e8c <getPairData>
c0de652a:	9804      	ldr	r0, [sp, #16]
c0de652c:	b310      	cbz	r0, c0de6574 <displayReviewPage+0xfc>
c0de652e:	eb09 0006 	add.w	r0, r9, r6
c0de6532:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de6536:	4914      	ldr	r1, [pc, #80]	@ (c0de6588 <displayReviewPage+0x110>)
c0de6538:	4479      	add	r1, pc
c0de653a:	6341      	str	r1, [r0, #52]	@ 0x34
c0de653c:	2001      	movs	r0, #1
c0de653e:	e01c      	b.n	c0de657a <displayReviewPage+0x102>
c0de6540:	eb09 0006 	add.w	r0, r9, r6
c0de6544:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de6548:	9105      	str	r1, [sp, #20]
c0de654a:	9007      	str	r0, [sp, #28]
c0de654c:	2500      	movs	r5, #0
c0de654e:	2000      	movs	r0, #0
c0de6550:	9a07      	ldr	r2, [sp, #28]
c0de6552:	9905      	ldr	r1, [sp, #20]
c0de6554:	4c0d      	ldr	r4, [pc, #52]	@ (c0de658c <displayReviewPage+0x114>)
c0de6556:	b2c0      	uxtb	r0, r0
c0de6558:	2300      	movs	r3, #0
c0de655a:	9002      	str	r0, [sp, #8]
c0de655c:	4640      	mov	r0, r8
c0de655e:	447c      	add	r4, pc
c0de6560:	e9cd 4300 	strd	r4, r3, [sp]
c0de6564:	462b      	mov	r3, r5
c0de6566:	f000 f833 	bl	c0de65d0 <drawStep>
c0de656a:	b008      	add	sp, #32
c0de656c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6570:	f7fe b876 	b.w	c0de4660 <nbgl_refresh>
c0de6574:	f89d 000f 	ldrb.w	r0, [sp, #15]
c0de6578:	0040      	lsls	r0, r0, #1
c0de657a:	9d06      	ldr	r5, [sp, #24]
c0de657c:	e7e8      	b.n	c0de6550 <displayReviewPage+0xd8>
c0de657e:	bf00      	nop
c0de6580:	0000172c 	.word	0x0000172c
c0de6584:	00004803 	.word	0x00004803
c0de6588:	00001069 	.word	0x00001069
c0de658c:	000010ab 	.word	0x000010ab

c0de6590 <nbgl_useCaseStatus>:
c0de6590:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de6592:	4605      	mov	r5, r0
c0de6594:	480c      	ldr	r0, [pc, #48]	@ (c0de65c8 <nbgl_useCaseStatus+0x38>)
c0de6596:	2140      	movs	r1, #64	@ 0x40
c0de6598:	4614      	mov	r4, r2
c0de659a:	f001 f9e0 	bl	c0de795e <OUTLINED_FUNCTION_5>
c0de659e:	2009      	movs	r0, #9
c0de65a0:	6374      	str	r4, [r6, #52]	@ 0x34
c0de65a2:	462a      	mov	r2, r5
c0de65a4:	2300      	movs	r3, #0
c0de65a6:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de65aa:	2001      	movs	r0, #1
c0de65ac:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de65b0:	2000      	movs	r0, #0
c0de65b2:	4906      	ldr	r1, [pc, #24]	@ (c0de65cc <nbgl_useCaseStatus+0x3c>)
c0de65b4:	9002      	str	r0, [sp, #8]
c0de65b6:	4479      	add	r1, pc
c0de65b8:	e9cd 1000 	strd	r1, r0, [sp]
c0de65bc:	2040      	movs	r0, #64	@ 0x40
c0de65be:	2100      	movs	r1, #0
c0de65c0:	f000 f806 	bl	c0de65d0 <drawStep>
c0de65c4:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de65c6:	bf00      	nop
c0de65c8:	0000172c 	.word	0x0000172c
c0de65cc:	0000019f 	.word	0x0000019f

c0de65d0 <drawStep>:
c0de65d0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de65d4:	b09a      	sub	sp, #104	@ 0x68
c0de65d6:	4688      	mov	r8, r1
c0de65d8:	4604      	mov	r4, r0
c0de65da:	a80d      	add	r0, sp, #52	@ 0x34
c0de65dc:	2134      	movs	r1, #52	@ 0x34
c0de65de:	461d      	mov	r5, r3
c0de65e0:	4616      	mov	r6, r2
c0de65e2:	f004 f8c7 	bl	c0dea774 <__aeabi_memclr>
c0de65e6:	2700      	movs	r7, #0
c0de65e8:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de65ec:	4856      	ldr	r0, [pc, #344]	@ (c0de6748 <drawStep+0x178>)
c0de65ee:	4478      	add	r0, pc
c0de65f0:	f003 fcc0 	bl	c0de9f74 <pic>
c0de65f4:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de6744 <drawStep+0x174>
c0de65f8:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de65fc:	9709      	str	r7, [sp, #36]	@ 0x24
c0de65fe:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de6602:	eb09 000b 	add.w	r0, r9, fp
c0de6606:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de660a:	2802      	cmp	r0, #2
c0de660c:	d30b      	bcc.n	c0de6626 <drawStep+0x56>
c0de660e:	eb09 010b 	add.w	r1, r9, fp
c0de6612:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de6616:	b129      	cbz	r1, c0de6624 <drawStep+0x54>
c0de6618:	3801      	subs	r0, #1
c0de661a:	2703      	movs	r7, #3
c0de661c:	4288      	cmp	r0, r1
c0de661e:	bf08      	it	eq
c0de6620:	2702      	moveq	r7, #2
c0de6622:	e000      	b.n	c0de6626 <drawStep+0x56>
c0de6624:	2701      	movs	r7, #1
c0de6626:	eb09 000b 	add.w	r0, r9, fp
c0de662a:	ea47 0204 	orr.w	r2, r7, r4
c0de662e:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de6632:	4614      	mov	r4, r2
c0de6634:	2901      	cmp	r1, #1
c0de6636:	bf88      	it	hi
c0de6638:	f044 0402 	orrhi.w	r4, r4, #2
c0de663c:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de663e:	2900      	cmp	r1, #0
c0de6640:	bf08      	it	eq
c0de6642:	4614      	moveq	r4, r2
c0de6644:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de6648:	2806      	cmp	r0, #6
c0de664a:	f040 0108 	orr.w	r1, r0, #8
c0de664e:	bf18      	it	ne
c0de6650:	4614      	movne	r4, r2
c0de6652:	2909      	cmp	r1, #9
c0de6654:	bf0c      	ite	eq
c0de6656:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de665a:	f04f 0a00 	movne.w	sl, #0
c0de665e:	280a      	cmp	r0, #10
c0de6660:	d105      	bne.n	c0de666e <drawStep+0x9e>
c0de6662:	eb09 000b 	add.w	r0, r9, fp
c0de6666:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de6668:	b108      	cbz	r0, c0de666e <drawStep+0x9e>
c0de666a:	f7ff fcbd 	bl	c0de5fe8 <nbgl_stepRelease>
c0de666e:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de6670:	b1b6      	cbz	r6, c0de66a0 <drawStep+0xd0>
c0de6672:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de6674:	f1b8 0f00 	cmp.w	r8, #0
c0de6678:	d12c      	bne.n	c0de66d4 <drawStep+0x104>
c0de667a:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de667c:	2802      	cmp	r0, #2
c0de667e:	d029      	beq.n	c0de66d4 <drawStep+0x104>
c0de6680:	2201      	movs	r2, #1
c0de6682:	4633      	mov	r3, r6
c0de6684:	2801      	cmp	r0, #1
c0de6686:	bf08      	it	eq
c0de6688:	2202      	moveq	r2, #2
c0de668a:	4620      	mov	r0, r4
c0de668c:	2d00      	cmp	r5, #0
c0de668e:	bf08      	it	eq
c0de6690:	462a      	moveq	r2, r5
c0de6692:	e9cd 5200 	strd	r5, r2, [sp]
c0de6696:	9702      	str	r7, [sp, #8]
c0de6698:	4652      	mov	r2, sl
c0de669a:	f7ff fa39 	bl	c0de5b10 <nbgl_stepDrawText>
c0de669e:	e043      	b.n	c0de6728 <drawStep+0x158>
c0de66a0:	eb09 000b 	add.w	r0, r9, fp
c0de66a4:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de66a8:	a903      	add	r1, sp, #12
c0de66aa:	aa0d      	add	r2, sp, #52	@ 0x34
c0de66ac:	f000 fbaa 	bl	c0de6e04 <getContentElemAtIdx>
c0de66b0:	b330      	cbz	r0, c0de6700 <drawStep+0x130>
c0de66b2:	7801      	ldrb	r1, [r0, #0]
c0de66b4:	2400      	movs	r4, #0
c0de66b6:	290a      	cmp	r1, #10
c0de66b8:	d024      	beq.n	c0de6704 <drawStep+0x134>
c0de66ba:	2909      	cmp	r1, #9
c0de66bc:	d135      	bne.n	c0de672a <drawStep+0x15a>
c0de66be:	f001 f954 	bl	c0de796a <OUTLINED_FUNCTION_6>
c0de66c2:	4922      	ldr	r1, [pc, #136]	@ (c0de674c <drawStep+0x17c>)
c0de66c4:	4479      	add	r1, pc
c0de66c6:	910a      	str	r1, [sp, #40]	@ 0x28
c0de66c8:	7941      	ldrb	r1, [r0, #5]
c0de66ca:	7980      	ldrb	r0, [r0, #6]
c0de66cc:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de66d0:	1c48      	adds	r0, r1, #1
c0de66d2:	e020      	b.n	c0de6716 <drawStep+0x146>
c0de66d4:	2000      	movs	r0, #0
c0de66d6:	9603      	str	r6, [sp, #12]
c0de66d8:	f8cd 8014 	str.w	r8, [sp, #20]
c0de66dc:	9504      	str	r5, [sp, #16]
c0de66de:	4652      	mov	r2, sl
c0de66e0:	f88d 0018 	strb.w	r0, [sp, #24]
c0de66e4:	eb09 000b 	add.w	r0, r9, fp
c0de66e8:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de66ea:	4328      	orrs	r0, r5
c0de66ec:	bf18      	it	ne
c0de66ee:	2001      	movne	r0, #1
c0de66f0:	f88d 0019 	strb.w	r0, [sp, #25]
c0de66f4:	9700      	str	r7, [sp, #0]
c0de66f6:	ab03      	add	r3, sp, #12
c0de66f8:	4620      	mov	r0, r4
c0de66fa:	f7ff fb4f 	bl	c0de5d9c <nbgl_stepDrawCenteredInfo>
c0de66fe:	e013      	b.n	c0de6728 <drawStep+0x158>
c0de6700:	2400      	movs	r4, #0
c0de6702:	e012      	b.n	c0de672a <drawStep+0x15a>
c0de6704:	f001 f931 	bl	c0de796a <OUTLINED_FUNCTION_6>
c0de6708:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de670c:	4910      	ldr	r1, [pc, #64]	@ (c0de6750 <drawStep+0x180>)
c0de670e:	7a00      	ldrb	r0, [r0, #8]
c0de6710:	4479      	add	r1, pc
c0de6712:	3001      	adds	r0, #1
c0de6714:	910a      	str	r1, [sp, #40]	@ 0x28
c0de6716:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de671a:	4651      	mov	r1, sl
c0de671c:	463b      	mov	r3, r7
c0de671e:	480d      	ldr	r0, [pc, #52]	@ (c0de6754 <drawStep+0x184>)
c0de6720:	aa0a      	add	r2, sp, #40	@ 0x28
c0de6722:	4478      	add	r0, pc
c0de6724:	f7ff fbca 	bl	c0de5ebc <nbgl_stepDrawMenuList>
c0de6728:	4604      	mov	r4, r0
c0de672a:	eb09 000b 	add.w	r0, r9, fp
c0de672e:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de6732:	280a      	cmp	r0, #10
c0de6734:	bf04      	itt	eq
c0de6736:	eb09 000b 	addeq.w	r0, r9, fp
c0de673a:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de673c:	b01a      	add	sp, #104	@ 0x68
c0de673e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6742:	bf00      	nop
c0de6744:	0000172c 	.word	0x0000172c
c0de6748:	0000116f 	.word	0x0000116f
c0de674c:	000010a9 	.word	0x000010a9
c0de6750:	0000105d 	.word	0x0000105d
c0de6754:	000010af 	.word	0x000010af

c0de6758 <statusButtonCallback>:
c0de6758:	f041 0004 	orr.w	r0, r1, #4
c0de675c:	2804      	cmp	r0, #4
c0de675e:	d001      	beq.n	c0de6764 <statusButtonCallback+0xc>
c0de6760:	2901      	cmp	r1, #1
c0de6762:	d104      	bne.n	c0de676e <statusButtonCallback+0x16>
c0de6764:	4802      	ldr	r0, [pc, #8]	@ (c0de6770 <statusButtonCallback+0x18>)
c0de6766:	4448      	add	r0, r9
c0de6768:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de676a:	b100      	cbz	r0, c0de676e <statusButtonCallback+0x16>
c0de676c:	4700      	bx	r0
c0de676e:	4770      	bx	lr
c0de6770:	0000172c 	.word	0x0000172c

c0de6774 <nbgl_useCaseReviewStatus>:
c0de6774:	460a      	mov	r2, r1
c0de6776:	b198      	cbz	r0, c0de67a0 <nbgl_useCaseReviewStatus+0x2c>
c0de6778:	2801      	cmp	r0, #1
c0de677a:	d016      	beq.n	c0de67aa <nbgl_useCaseReviewStatus+0x36>
c0de677c:	2802      	cmp	r0, #2
c0de677e:	d019      	beq.n	c0de67b4 <nbgl_useCaseReviewStatus+0x40>
c0de6780:	2803      	cmp	r0, #3
c0de6782:	d01c      	beq.n	c0de67be <nbgl_useCaseReviewStatus+0x4a>
c0de6784:	2804      	cmp	r0, #4
c0de6786:	d01f      	beq.n	c0de67c8 <nbgl_useCaseReviewStatus+0x54>
c0de6788:	2807      	cmp	r0, #7
c0de678a:	d022      	beq.n	c0de67d2 <nbgl_useCaseReviewStatus+0x5e>
c0de678c:	2806      	cmp	r0, #6
c0de678e:	d025      	beq.n	c0de67dc <nbgl_useCaseReviewStatus+0x68>
c0de6790:	2805      	cmp	r0, #5
c0de6792:	bf18      	it	ne
c0de6794:	4770      	bxne	lr
c0de6796:	4815      	ldr	r0, [pc, #84]	@ (c0de67ec <nbgl_useCaseReviewStatus+0x78>)
c0de6798:	2100      	movs	r1, #0
c0de679a:	4478      	add	r0, pc
c0de679c:	f7ff bef8 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67a0:	4813      	ldr	r0, [pc, #76]	@ (c0de67f0 <nbgl_useCaseReviewStatus+0x7c>)
c0de67a2:	2101      	movs	r1, #1
c0de67a4:	4478      	add	r0, pc
c0de67a6:	f7ff bef3 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67aa:	4812      	ldr	r0, [pc, #72]	@ (c0de67f4 <nbgl_useCaseReviewStatus+0x80>)
c0de67ac:	2100      	movs	r1, #0
c0de67ae:	4478      	add	r0, pc
c0de67b0:	f7ff beee 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67b4:	4810      	ldr	r0, [pc, #64]	@ (c0de67f8 <nbgl_useCaseReviewStatus+0x84>)
c0de67b6:	2101      	movs	r1, #1
c0de67b8:	4478      	add	r0, pc
c0de67ba:	f7ff bee9 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67be:	480f      	ldr	r0, [pc, #60]	@ (c0de67fc <nbgl_useCaseReviewStatus+0x88>)
c0de67c0:	2100      	movs	r1, #0
c0de67c2:	4478      	add	r0, pc
c0de67c4:	f7ff bee4 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67c8:	4807      	ldr	r0, [pc, #28]	@ (c0de67e8 <nbgl_useCaseReviewStatus+0x74>)
c0de67ca:	2101      	movs	r1, #1
c0de67cc:	4478      	add	r0, pc
c0de67ce:	f7ff bedf 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67d2:	480c      	ldr	r0, [pc, #48]	@ (c0de6804 <nbgl_useCaseReviewStatus+0x90>)
c0de67d4:	2100      	movs	r1, #0
c0de67d6:	4478      	add	r0, pc
c0de67d8:	f7ff beda 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67dc:	4808      	ldr	r0, [pc, #32]	@ (c0de6800 <nbgl_useCaseReviewStatus+0x8c>)
c0de67de:	2101      	movs	r1, #1
c0de67e0:	4478      	add	r0, pc
c0de67e2:	f7ff bed5 	b.w	c0de6590 <nbgl_useCaseStatus>
c0de67e6:	bf00      	nop
c0de67e8:	000042a8 	.word	0x000042a8
c0de67ec:	000042fc 	.word	0x000042fc
c0de67f0:	00004393 	.word	0x00004393
c0de67f4:	00004562 	.word	0x00004562
c0de67f8:	000043f2 	.word	0x000043f2
c0de67fc:	000044f8 	.word	0x000044f8
c0de6800:	00004317 	.word	0x00004317
c0de6804:	00004457 	.word	0x00004457

c0de6808 <displayStreamingReviewPage>:
c0de6808:	b570      	push	{r4, r5, r6, lr}
c0de680a:	b08c      	sub	sp, #48	@ 0x30
c0de680c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de6978 <displayStreamingReviewPage+0x170>)
c0de680e:	2100      	movs	r1, #0
c0de6810:	4604      	mov	r4, r0
c0de6812:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de6816:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de681a:	eb09 0005 	add.w	r0, r9, r5
c0de681e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de6820:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de6824:	2806      	cmp	r0, #6
c0de6826:	d015      	beq.n	c0de6854 <displayStreamingReviewPage+0x4c>
c0de6828:	2805      	cmp	r0, #5
c0de682a:	d13d      	bne.n	c0de68a8 <displayStreamingReviewPage+0xa0>
c0de682c:	eb09 0205 	add.w	r2, r9, r5
c0de6830:	2101      	movs	r1, #1
c0de6832:	2302      	movs	r3, #2
c0de6834:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de6836:	2800      	cmp	r0, #0
c0de6838:	bf08      	it	eq
c0de683a:	21ff      	moveq	r1, #255	@ 0xff
c0de683c:	bf08      	it	eq
c0de683e:	2301      	moveq	r3, #1
c0de6840:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de6844:	4293      	cmp	r3, r2
c0de6846:	dd3b      	ble.n	c0de68c0 <displayStreamingReviewPage+0xb8>
c0de6848:	b2d3      	uxtb	r3, r2
c0de684a:	2b00      	cmp	r3, #0
c0de684c:	d063      	beq.n	c0de6916 <displayStreamingReviewPage+0x10e>
c0de684e:	4291      	cmp	r1, r2
c0de6850:	d066      	beq.n	c0de6920 <displayStreamingReviewPage+0x118>
c0de6852:	e066      	b.n	c0de6922 <displayStreamingReviewPage+0x11a>
c0de6854:	eb09 0005 	add.w	r0, r9, r5
c0de6858:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de685c:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de685e:	7a02      	ldrb	r2, [r0, #8]
c0de6860:	4291      	cmp	r1, r2
c0de6862:	da2d      	bge.n	c0de68c0 <displayStreamingReviewPage+0xb8>
c0de6864:	eb09 0205 	add.w	r2, r9, r5
c0de6868:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de686a:	b3cb      	cbz	r3, c0de68e0 <displayStreamingReviewPage+0xd8>
c0de686c:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de6870:	bbb2      	cbnz	r2, c0de68e0 <displayStreamingReviewPage+0xd8>
c0de6872:	eb09 0205 	add.w	r2, r9, r5
c0de6876:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de687a:	2a01      	cmp	r2, #1
c0de687c:	d807      	bhi.n	c0de688e <displayStreamingReviewPage+0x86>
c0de687e:	2900      	cmp	r1, #0
c0de6880:	dc05      	bgt.n	c0de688e <displayStreamingReviewPage+0x86>
c0de6882:	eb09 0305 	add.w	r3, r9, r5
c0de6886:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de688a:	2b08      	cmp	r3, #8
c0de688c:	d128      	bne.n	c0de68e0 <displayStreamingReviewPage+0xd8>
c0de688e:	2000      	movs	r0, #0
c0de6890:	9007      	str	r0, [sp, #28]
c0de6892:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de6896:	f004 0008 	and.w	r0, r4, #8
c0de689a:	2a01      	cmp	r2, #1
c0de689c:	d001      	beq.n	c0de68a2 <displayStreamingReviewPage+0x9a>
c0de689e:	2901      	cmp	r1, #1
c0de68a0:	db50      	blt.n	c0de6944 <displayStreamingReviewPage+0x13c>
c0de68a2:	f040 0003 	orr.w	r0, r0, #3
c0de68a6:	e04f      	b.n	c0de6948 <displayStreamingReviewPage+0x140>
c0de68a8:	eb09 0005 	add.w	r0, r9, r5
c0de68ac:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de68b0:	b180      	cbz	r0, c0de68d4 <displayStreamingReviewPage+0xcc>
c0de68b2:	a909      	add	r1, sp, #36	@ 0x24
c0de68b4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de68b6:	2000      	movs	r0, #0
c0de68b8:	2500      	movs	r5, #0
c0de68ba:	f000 fd7d 	bl	c0de73b8 <getLastPageInfo>
c0de68be:	e031      	b.n	c0de6924 <displayStreamingReviewPage+0x11c>
c0de68c0:	eb09 0005 	add.w	r0, r9, r5
c0de68c4:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de68c6:	2900      	cmp	r1, #0
c0de68c8:	d053      	beq.n	c0de6972 <displayStreamingReviewPage+0x16a>
c0de68ca:	2001      	movs	r0, #1
c0de68cc:	b00c      	add	sp, #48	@ 0x30
c0de68ce:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de68d2:	4708      	bx	r1
c0de68d4:	a909      	add	r1, sp, #36	@ 0x24
c0de68d6:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de68d8:	2001      	movs	r0, #1
c0de68da:	f000 fd6d 	bl	c0de73b8 <getLastPageInfo>
c0de68de:	e020      	b.n	c0de6922 <displayStreamingReviewPage+0x11a>
c0de68e0:	2300      	movs	r3, #0
c0de68e2:	eb09 0205 	add.w	r2, r9, r5
c0de68e6:	b2c9      	uxtb	r1, r1
c0de68e8:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de68ec:	f88d 300f 	strb.w	r3, [sp, #15]
c0de68f0:	ab09      	add	r3, sp, #36	@ 0x24
c0de68f2:	ad08      	add	r5, sp, #32
c0de68f4:	f10d 020f 	add.w	r2, sp, #15
c0de68f8:	e9cd 5300 	strd	r5, r3, [sp]
c0de68fc:	9202      	str	r2, [sp, #8]
c0de68fe:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de6900:	ab0a      	add	r3, sp, #40	@ 0x28
c0de6902:	f000 fac3 	bl	c0de6e8c <getPairData>
c0de6906:	9808      	ldr	r0, [sp, #32]
c0de6908:	2800      	cmp	r0, #0
c0de690a:	bf12      	itee	ne
c0de690c:	2501      	movne	r5, #1
c0de690e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de6912:	0045      	lsleq	r5, r0, #1
c0de6914:	e006      	b.n	c0de6924 <displayStreamingReviewPage+0x11c>
c0de6916:	eb09 0005 	add.w	r0, r9, r5
c0de691a:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de691e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de6920:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de6922:	2500      	movs	r5, #0
c0de6924:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de6926:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de692a:	4e17      	ldr	r6, [pc, #92]	@ (c0de6988 <displayStreamingReviewPage+0x180>)
c0de692c:	b2e8      	uxtb	r0, r5
c0de692e:	2500      	movs	r5, #0
c0de6930:	9002      	str	r0, [sp, #8]
c0de6932:	4620      	mov	r0, r4
c0de6934:	447e      	add	r6, pc
c0de6936:	f001 f81b 	bl	c0de7970 <OUTLINED_FUNCTION_7>
c0de693a:	b00c      	add	sp, #48	@ 0x30
c0de693c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6940:	f7fd be8e 	b.w	c0de4660 <nbgl_refresh>
c0de6944:	f040 0001 	orr.w	r0, r0, #1
c0de6948:	490c      	ldr	r1, [pc, #48]	@ (c0de697c <displayStreamingReviewPage+0x174>)
c0de694a:	2200      	movs	r2, #0
c0de694c:	4479      	add	r1, pc
c0de694e:	9104      	str	r1, [sp, #16]
c0de6950:	490b      	ldr	r1, [pc, #44]	@ (c0de6980 <displayStreamingReviewPage+0x178>)
c0de6952:	4479      	add	r1, pc
c0de6954:	9106      	str	r1, [sp, #24]
c0de6956:	2100      	movs	r1, #0
c0de6958:	9100      	str	r1, [sp, #0]
c0de695a:	490a      	ldr	r1, [pc, #40]	@ (c0de6984 <displayStreamingReviewPage+0x17c>)
c0de695c:	ab04      	add	r3, sp, #16
c0de695e:	4479      	add	r1, pc
c0de6960:	f7ff fa1c 	bl	c0de5d9c <nbgl_stepDrawCenteredInfo>
c0de6964:	eb09 0405 	add.w	r4, r9, r5
c0de6968:	f7fd fe7a 	bl	c0de4660 <nbgl_refresh>
c0de696c:	2001      	movs	r0, #1
c0de696e:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de6972:	b00c      	add	sp, #48	@ 0x30
c0de6974:	bd70      	pop	{r4, r5, r6, pc}
c0de6976:	bf00      	nop
c0de6978:	0000172c 	.word	0x0000172c
c0de697c:	0000415d 	.word	0x0000415d
c0de6980:	00003f6c 	.word	0x00003f6c
c0de6984:	00000edf 	.word	0x00000edf
c0de6988:	00000f79 	.word	0x00000f79

c0de698c <nbgl_useCaseSpinner>:
c0de698c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de698e:	4604      	mov	r4, r0
c0de6990:	480b      	ldr	r0, [pc, #44]	@ (c0de69c0 <nbgl_useCaseSpinner+0x34>)
c0de6992:	2140      	movs	r1, #64	@ 0x40
c0de6994:	f000 ffd9 	bl	c0de794a <OUTLINED_FUNCTION_3>
c0de6998:	2001      	movs	r0, #1
c0de699a:	4622      	mov	r2, r4
c0de699c:	2300      	movs	r3, #0
c0de699e:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de69a2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de69a6:	2000      	movs	r0, #0
c0de69a8:	e9cd 0000 	strd	r0, r0, [sp]
c0de69ac:	9002      	str	r0, [sp, #8]
c0de69ae:	2000      	movs	r0, #0
c0de69b0:	4904      	ldr	r1, [pc, #16]	@ (c0de69c4 <nbgl_useCaseSpinner+0x38>)
c0de69b2:	4479      	add	r1, pc
c0de69b4:	f7ff fe0c 	bl	c0de65d0 <drawStep>
c0de69b8:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de69bc:	f7fd be50 	b.w	c0de4660 <nbgl_refresh>
c0de69c0:	0000172c 	.word	0x0000172c
c0de69c4:	00004003 	.word	0x00004003

c0de69c8 <nbgl_useCaseChoice>:
c0de69c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de69cc:	4607      	mov	r7, r0
c0de69ce:	480b      	ldr	r0, [pc, #44]	@ (c0de69fc <nbgl_useCaseChoice+0x34>)
c0de69d0:	f000 ffa6 	bl	c0de7920 <OUTLINED_FUNCTION_0>
c0de69d4:	9807      	ldr	r0, [sp, #28]
c0de69d6:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de69d8:	9806      	ldr	r0, [sp, #24]
c0de69da:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de69de:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de69e2:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de69e4:	2008      	movs	r0, #8
c0de69e6:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de69ea:	2004      	movs	r0, #4
c0de69ec:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de69f0:	2000      	movs	r0, #0
c0de69f2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de69f6:	f000 b803 	b.w	c0de6a00 <displayChoicePage>
c0de69fa:	bf00      	nop
c0de69fc:	0000172c 	.word	0x0000172c

c0de6a00 <displayChoicePage>:
c0de6a00:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de6a02:	4b28      	ldr	r3, [pc, #160]	@ (c0de6aa4 <displayChoicePage+0xa4>)
c0de6a04:	2200      	movs	r2, #0
c0de6a06:	eb09 0103 	add.w	r1, r9, r3
c0de6a0a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de6a0c:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de6a10:	b179      	cbz	r1, c0de6a32 <displayChoicePage+0x32>
c0de6a12:	2902      	cmp	r1, #2
c0de6a14:	d021      	beq.n	c0de6a5a <displayChoicePage+0x5a>
c0de6a16:	2901      	cmp	r1, #1
c0de6a18:	d10f      	bne.n	c0de6a3a <displayChoicePage+0x3a>
c0de6a1a:	eb09 0103 	add.w	r1, r9, r3
c0de6a1e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de6a20:	b1a1      	cbz	r1, c0de6a4c <displayChoicePage+0x4c>
c0de6a22:	eb09 0203 	add.w	r2, r9, r3
c0de6a26:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de6a28:	b182      	cbz	r2, c0de6a4c <displayChoicePage+0x4c>
c0de6a2a:	eb09 0103 	add.w	r1, r9, r3
c0de6a2e:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de6a30:	e029      	b.n	c0de6a86 <displayChoicePage+0x86>
c0de6a32:	eb09 0103 	add.w	r1, r9, r3
c0de6a36:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de6a38:	e01d      	b.n	c0de6a76 <displayChoicePage+0x76>
c0de6a3a:	4a1d      	ldr	r2, [pc, #116]	@ (c0de6ab0 <displayChoicePage+0xb0>)
c0de6a3c:	eb09 0103 	add.w	r1, r9, r3
c0de6a40:	447a      	add	r2, pc
c0de6a42:	634a      	str	r2, [r1, #52]	@ 0x34
c0de6a44:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de6a46:	491b      	ldr	r1, [pc, #108]	@ (c0de6ab4 <displayChoicePage+0xb4>)
c0de6a48:	4479      	add	r1, pc
c0de6a4a:	e018      	b.n	c0de6a7e <displayChoicePage+0x7e>
c0de6a4c:	0702      	lsls	r2, r0, #28
c0de6a4e:	d40d      	bmi.n	c0de6a6c <displayChoicePage+0x6c>
c0de6a50:	eb09 0103 	add.w	r1, r9, r3
c0de6a54:	2202      	movs	r2, #2
c0de6a56:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de6a5a:	4a13      	ldr	r2, [pc, #76]	@ (c0de6aa8 <displayChoicePage+0xa8>)
c0de6a5c:	eb09 0103 	add.w	r1, r9, r3
c0de6a60:	447a      	add	r2, pc
c0de6a62:	634a      	str	r2, [r1, #52]	@ 0x34
c0de6a64:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de6a66:	4911      	ldr	r1, [pc, #68]	@ (c0de6aac <displayChoicePage+0xac>)
c0de6a68:	4479      	add	r1, pc
c0de6a6a:	e008      	b.n	c0de6a7e <displayChoicePage+0x7e>
c0de6a6c:	eb09 0203 	add.w	r2, r9, r3
c0de6a70:	2400      	movs	r4, #0
c0de6a72:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de6a76:	eb09 0203 	add.w	r2, r9, r3
c0de6a7a:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de6a7c:	b109      	cbz	r1, c0de6a82 <displayChoicePage+0x82>
c0de6a7e:	2300      	movs	r3, #0
c0de6a80:	e003      	b.n	c0de6a8a <displayChoicePage+0x8a>
c0de6a82:	eb09 0103 	add.w	r1, r9, r3
c0de6a86:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de6a88:	2100      	movs	r1, #0
c0de6a8a:	4d0b      	ldr	r5, [pc, #44]	@ (c0de6ab8 <displayChoicePage+0xb8>)
c0de6a8c:	2400      	movs	r4, #0
c0de6a8e:	9402      	str	r4, [sp, #8]
c0de6a90:	447d      	add	r5, pc
c0de6a92:	e9cd 5400 	strd	r5, r4, [sp]
c0de6a96:	f7ff fd9b 	bl	c0de65d0 <drawStep>
c0de6a9a:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de6a9e:	f7fd bddf 	b.w	c0de4660 <nbgl_refresh>
c0de6aa2:	bf00      	nop
c0de6aa4:	0000172c 	.word	0x0000172c
c0de6aa8:	00000e79 	.word	0x00000e79
c0de6aac:	00003f8a 	.word	0x00003f8a
c0de6ab0:	00000ead 	.word	0x00000ead
c0de6ab4:	00003f2e 	.word	0x00003f2e
c0de6ab8:	00000e71 	.word	0x00000e71

c0de6abc <getContentAtIdx>:
c0de6abc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6abe:	b087      	sub	sp, #28
c0de6ac0:	460d      	mov	r5, r1
c0de6ac2:	4606      	mov	r6, r0
c0de6ac4:	a801      	add	r0, sp, #4
c0de6ac6:	2118      	movs	r1, #24
c0de6ac8:	4614      	mov	r4, r2
c0de6aca:	f003 fe53 	bl	c0dea774 <__aeabi_memclr>
c0de6ace:	2d00      	cmp	r5, #0
c0de6ad0:	d428      	bmi.n	c0de6b24 <getContentAtIdx+0x68>
c0de6ad2:	7a30      	ldrb	r0, [r6, #8]
c0de6ad4:	4285      	cmp	r5, r0
c0de6ad6:	da25      	bge.n	c0de6b24 <getContentAtIdx+0x68>
c0de6ad8:	7830      	ldrb	r0, [r6, #0]
c0de6ada:	b338      	cbz	r0, c0de6b2c <getContentAtIdx+0x70>
c0de6adc:	b314      	cbz	r4, c0de6b24 <getContentAtIdx+0x68>
c0de6ade:	4620      	mov	r0, r4
c0de6ae0:	2134      	movs	r1, #52	@ 0x34
c0de6ae2:	f003 fe47 	bl	c0dea774 <__aeabi_memclr>
c0de6ae6:	4821      	ldr	r0, [pc, #132]	@ (c0de6b6c <getContentAtIdx+0xb0>)
c0de6ae8:	4448      	add	r0, r9
c0de6aea:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de6aec:	b33a      	cbz	r2, c0de6b3e <getContentAtIdx+0x82>
c0de6aee:	b2e8      	uxtb	r0, r5
c0de6af0:	ad01      	add	r5, sp, #4
c0de6af2:	4629      	mov	r1, r5
c0de6af4:	4790      	blx	r2
c0de6af6:	b1a8      	cbz	r0, c0de6b24 <getContentAtIdx+0x68>
c0de6af8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de6afc:	280a      	cmp	r0, #10
c0de6afe:	7020      	strb	r0, [r4, #0]
c0de6b00:	d027      	beq.n	c0de6b52 <getContentAtIdx+0x96>
c0de6b02:	2803      	cmp	r0, #3
c0de6b04:	d008      	beq.n	c0de6b18 <getContentAtIdx+0x5c>
c0de6b06:	2804      	cmp	r0, #4
c0de6b08:	d029      	beq.n	c0de6b5e <getContentAtIdx+0xa2>
c0de6b0a:	2807      	cmp	r0, #7
c0de6b0c:	d01c      	beq.n	c0de6b48 <getContentAtIdx+0x8c>
c0de6b0e:	2808      	cmp	r0, #8
c0de6b10:	d002      	beq.n	c0de6b18 <getContentAtIdx+0x5c>
c0de6b12:	2809      	cmp	r0, #9
c0de6b14:	d018      	beq.n	c0de6b48 <getContentAtIdx+0x8c>
c0de6b16:	b928      	cbnz	r0, c0de6b24 <getContentAtIdx+0x68>
c0de6b18:	1d28      	adds	r0, r5, #4
c0de6b1a:	1d21      	adds	r1, r4, #4
c0de6b1c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de6b20:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de6b22:	e000      	b.n	c0de6b26 <getContentAtIdx+0x6a>
c0de6b24:	2400      	movs	r4, #0
c0de6b26:	4620      	mov	r0, r4
c0de6b28:	b007      	add	sp, #28
c0de6b2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6b2c:	6870      	ldr	r0, [r6, #4]
c0de6b2e:	2134      	movs	r1, #52	@ 0x34
c0de6b30:	fb05 0001 	mla	r0, r5, r1, r0
c0de6b34:	b007      	add	sp, #28
c0de6b36:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de6b3a:	f003 ba1b 	b.w	c0de9f74 <pic>
c0de6b3e:	6872      	ldr	r2, [r6, #4]
c0de6b40:	b2e8      	uxtb	r0, r5
c0de6b42:	4621      	mov	r1, r4
c0de6b44:	4790      	blx	r2
c0de6b46:	e7ee      	b.n	c0de6b26 <getContentAtIdx+0x6a>
c0de6b48:	9802      	ldr	r0, [sp, #8]
c0de6b4a:	9903      	ldr	r1, [sp, #12]
c0de6b4c:	6060      	str	r0, [r4, #4]
c0de6b4e:	60a1      	str	r1, [r4, #8]
c0de6b50:	e7e9      	b.n	c0de6b26 <getContentAtIdx+0x6a>
c0de6b52:	1d28      	adds	r0, r5, #4
c0de6b54:	1d21      	adds	r1, r4, #4
c0de6b56:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de6b5a:	c12c      	stmia	r1!, {r2, r3, r5}
c0de6b5c:	e7e3      	b.n	c0de6b26 <getContentAtIdx+0x6a>
c0de6b5e:	1d28      	adds	r0, r5, #4
c0de6b60:	1d21      	adds	r1, r4, #4
c0de6b62:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de6b66:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de6b68:	e7dd      	b.n	c0de6b26 <getContentAtIdx+0x6a>
c0de6b6a:	bf00      	nop
c0de6b6c:	0000172c 	.word	0x0000172c

c0de6b70 <getContentNbElement>:
c0de6b70:	7802      	ldrb	r2, [r0, #0]
c0de6b72:	2101      	movs	r1, #1
c0de6b74:	b1a2      	cbz	r2, c0de6ba0 <getContentNbElement+0x30>
c0de6b76:	2a03      	cmp	r2, #3
c0de6b78:	d012      	beq.n	c0de6ba0 <getContentNbElement+0x30>
c0de6b7a:	2a0a      	cmp	r2, #10
c0de6b7c:	d007      	beq.n	c0de6b8e <getContentNbElement+0x1e>
c0de6b7e:	2a07      	cmp	r2, #7
c0de6b80:	d007      	beq.n	c0de6b92 <getContentNbElement+0x22>
c0de6b82:	2a08      	cmp	r2, #8
c0de6b84:	d007      	beq.n	c0de6b96 <getContentNbElement+0x26>
c0de6b86:	2a09      	cmp	r2, #9
c0de6b88:	d007      	beq.n	c0de6b9a <getContentNbElement+0x2a>
c0de6b8a:	2a04      	cmp	r2, #4
c0de6b8c:	d107      	bne.n	c0de6b9e <getContentNbElement+0x2e>
c0de6b8e:	7b01      	ldrb	r1, [r0, #12]
c0de6b90:	e006      	b.n	c0de6ba0 <getContentNbElement+0x30>
c0de6b92:	7a01      	ldrb	r1, [r0, #8]
c0de6b94:	e004      	b.n	c0de6ba0 <getContentNbElement+0x30>
c0de6b96:	7c01      	ldrb	r1, [r0, #16]
c0de6b98:	e002      	b.n	c0de6ba0 <getContentNbElement+0x30>
c0de6b9a:	7a41      	ldrb	r1, [r0, #9]
c0de6b9c:	e000      	b.n	c0de6ba0 <getContentNbElement+0x30>
c0de6b9e:	2100      	movs	r1, #0
c0de6ba0:	4608      	mov	r0, r1
c0de6ba2:	4770      	bx	lr

c0de6ba4 <displayContent>:
c0de6ba4:	b570      	push	{r4, r5, r6, lr}
c0de6ba6:	b08a      	sub	sp, #40	@ 0x28
c0de6ba8:	460d      	mov	r5, r1
c0de6baa:	4604      	mov	r4, r0
c0de6bac:	a804      	add	r0, sp, #16
c0de6bae:	2118      	movs	r1, #24
c0de6bb0:	f003 fde0 	bl	c0dea774 <__aeabi_memclr>
c0de6bb4:	4820      	ldr	r0, [pc, #128]	@ (c0de6c38 <displayContent+0x94>)
c0de6bb6:	f000 febd 	bl	c0de7934 <OUTLINED_FUNCTION_2>
c0de6bba:	dd14      	ble.n	c0de6be6 <displayContent+0x42>
c0de6bbc:	a904      	add	r1, sp, #16
c0de6bbe:	4628      	mov	r0, r5
c0de6bc0:	f000 f846 	bl	c0de6c50 <getContentPage>
c0de6bc4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de6bc8:	b318      	cbz	r0, c0de6c12 <displayContent+0x6e>
c0de6bca:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de6bce:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de6bd2:	481e      	ldr	r0, [pc, #120]	@ (c0de6c4c <displayContent+0xa8>)
c0de6bd4:	4478      	add	r0, pc
c0de6bd6:	2b00      	cmp	r3, #0
c0de6bd8:	9000      	str	r0, [sp, #0]
c0de6bda:	4620      	mov	r0, r4
c0de6bdc:	bf18      	it	ne
c0de6bde:	2301      	movne	r3, #1
c0de6be0:	f000 f8d8 	bl	c0de6d94 <drawSwitchStep>
c0de6be4:	e023      	b.n	c0de6c2e <displayContent+0x8a>
c0de6be6:	4448      	add	r0, r9
c0de6be8:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de6bea:	6341      	str	r1, [r0, #52]	@ 0x34
c0de6bec:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de6bee:	4a13      	ldr	r2, [pc, #76]	@ (c0de6c3c <displayContent+0x98>)
c0de6bf0:	2900      	cmp	r1, #0
c0de6bf2:	447a      	add	r2, pc
c0de6bf4:	bf18      	it	ne
c0de6bf6:	460a      	movne	r2, r1
c0de6bf8:	9205      	str	r2, [sp, #20]
c0de6bfa:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de6bfe:	4910      	ldr	r1, [pc, #64]	@ (c0de6c40 <displayContent+0x9c>)
c0de6c00:	4a10      	ldr	r2, [pc, #64]	@ (c0de6c44 <displayContent+0xa0>)
c0de6c02:	2803      	cmp	r0, #3
c0de6c04:	447a      	add	r2, pc
c0de6c06:	4479      	add	r1, pc
c0de6c08:	bf08      	it	eq
c0de6c0a:	460a      	moveq	r2, r1
c0de6c0c:	9207      	str	r2, [sp, #28]
c0de6c0e:	2000      	movs	r0, #0
c0de6c10:	e002      	b.n	c0de6c18 <displayContent+0x74>
c0de6c12:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de6c16:	0040      	lsls	r0, r0, #1
c0de6c18:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de6c1c:	9907      	ldr	r1, [sp, #28]
c0de6c1e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de6c48 <displayContent+0xa4>)
c0de6c20:	b2c0      	uxtb	r0, r0
c0de6c22:	2500      	movs	r5, #0
c0de6c24:	9002      	str	r0, [sp, #8]
c0de6c26:	4620      	mov	r0, r4
c0de6c28:	447e      	add	r6, pc
c0de6c2a:	f000 fea1 	bl	c0de7970 <OUTLINED_FUNCTION_7>
c0de6c2e:	f7fd fd17 	bl	c0de4660 <nbgl_refresh>
c0de6c32:	b00a      	add	sp, #40	@ 0x28
c0de6c34:	bd70      	pop	{r4, r5, r6, pc}
c0de6c36:	bf00      	nop
c0de6c38:	0000172c 	.word	0x0000172c
c0de6c3c:	000040fb 	.word	0x000040fb
c0de6c40:	00003d70 	.word	0x00003d70
c0de6c44:	00003d2c 	.word	0x00003d2c
c0de6c48:	000001b9 	.word	0x000001b9
c0de6c4c:	0000020d 	.word	0x0000020d

c0de6c50 <getContentPage>:
c0de6c50:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6c52:	b091      	sub	sp, #68	@ 0x44
c0de6c54:	4606      	mov	r6, r0
c0de6c56:	2000      	movs	r0, #0
c0de6c58:	460c      	mov	r4, r1
c0de6c5a:	2134      	movs	r1, #52	@ 0x34
c0de6c5c:	f88d 0043 	strb.w	r0, [sp, #67]	@ 0x43
c0de6c60:	ad03      	add	r5, sp, #12
c0de6c62:	4628      	mov	r0, r5
c0de6c64:	f003 fd86 	bl	c0dea774 <__aeabi_memclr>
c0de6c68:	4f47      	ldr	r7, [pc, #284]	@ (c0de6d88 <getContentPage+0x138>)
c0de6c6a:	f10d 0143 	add.w	r1, sp, #67	@ 0x43
c0de6c6e:	462a      	mov	r2, r5
c0de6c70:	eb09 0007 	add.w	r0, r9, r7
c0de6c74:	f000 fe6f 	bl	c0de7956 <OUTLINED_FUNCTION_4>
c0de6c78:	2800      	cmp	r0, #0
c0de6c7a:	d07a      	beq.n	c0de6d72 <getContentPage+0x122>
c0de6c7c:	4605      	mov	r5, r0
c0de6c7e:	7800      	ldrb	r0, [r0, #0]
c0de6c80:	280a      	cmp	r0, #10
c0de6c82:	d011      	beq.n	c0de6ca8 <getContentPage+0x58>
c0de6c84:	2803      	cmp	r0, #3
c0de6c86:	d02c      	beq.n	c0de6ce2 <getContentPage+0x92>
c0de6c88:	2804      	cmp	r0, #4
c0de6c8a:	d035      	beq.n	c0de6cf8 <getContentPage+0xa8>
c0de6c8c:	2807      	cmp	r0, #7
c0de6c8e:	d045      	beq.n	c0de6d1c <getContentPage+0xcc>
c0de6c90:	2808      	cmp	r0, #8
c0de6c92:	d060      	beq.n	c0de6d56 <getContentPage+0x106>
c0de6c94:	2809      	cmp	r0, #9
c0de6c96:	d007      	beq.n	c0de6ca8 <getContentPage+0x58>
c0de6c98:	2800      	cmp	r0, #0
c0de6c9a:	d16a      	bne.n	c0de6d72 <getContentPage+0x122>
c0de6c9c:	6868      	ldr	r0, [r5, #4]
c0de6c9e:	f003 f969 	bl	c0de9f74 <pic>
c0de6ca2:	6060      	str	r0, [r4, #4]
c0de6ca4:	68a8      	ldr	r0, [r5, #8]
c0de6ca6:	e019      	b.n	c0de6cdc <getContentPage+0x8c>
c0de6ca8:	1d28      	adds	r0, r5, #4
c0de6caa:	eb09 0607 	add.w	r6, r9, r7
c0de6cae:	f003 f961 	bl	c0de9f74 <pic>
c0de6cb2:	6800      	ldr	r0, [r0, #0]
c0de6cb4:	f003 f95e 	bl	c0de9f74 <pic>
c0de6cb8:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de6cbc:	4605      	mov	r5, r0
c0de6cbe:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de6cc0:	2910      	cmp	r1, #16
c0de6cc2:	d100      	bne.n	c0de6cc6 <getContentPage+0x76>
c0de6cc4:	b918      	cbnz	r0, c0de6cce <getContentPage+0x7e>
c0de6cc6:	290f      	cmp	r1, #15
c0de6cc8:	d155      	bne.n	c0de6d76 <getContentPage+0x126>
c0de6cca:	2800      	cmp	r0, #0
c0de6ccc:	d053      	beq.n	c0de6d76 <getContentPage+0x126>
c0de6cce:	f003 f951 	bl	c0de9f74 <pic>
c0de6cd2:	6060      	str	r0, [r4, #4]
c0de6cd4:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de6cd8:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de6cdc:	f003 f94a 	bl	c0de9f74 <pic>
c0de6ce0:	e046      	b.n	c0de6d70 <getContentPage+0x120>
c0de6ce2:	68a8      	ldr	r0, [r5, #8]
c0de6ce4:	4e29      	ldr	r6, [pc, #164]	@ (c0de6d8c <getContentPage+0x13c>)
c0de6ce6:	447e      	add	r6, pc
c0de6ce8:	47b0      	blx	r6
c0de6cea:	60e0      	str	r0, [r4, #12]
c0de6cec:	6868      	ldr	r0, [r5, #4]
c0de6cee:	47b0      	blx	r6
c0de6cf0:	6060      	str	r0, [r4, #4]
c0de6cf2:	68e8      	ldr	r0, [r5, #12]
c0de6cf4:	47b0      	blx	r6
c0de6cf6:	e03b      	b.n	c0de6d70 <getContentPage+0x120>
c0de6cf8:	f104 0015 	add.w	r0, r4, #21
c0de6cfc:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de6d00:	f104 020c 	add.w	r2, r4, #12
c0de6d04:	f104 0310 	add.w	r3, r4, #16
c0de6d08:	e9cd 3200 	strd	r3, r2, [sp]
c0de6d0c:	9002      	str	r0, [sp, #8]
c0de6d0e:	1d28      	adds	r0, r5, #4
c0de6d10:	1d22      	adds	r2, r4, #4
c0de6d12:	f104 0308 	add.w	r3, r4, #8
c0de6d16:	f000 f8b9 	bl	c0de6e8c <getPairData>
c0de6d1a:	e02a      	b.n	c0de6d72 <getContentPage+0x122>
c0de6d1c:	2001      	movs	r0, #1
c0de6d1e:	444f      	add	r7, r9
c0de6d20:	7020      	strb	r0, [r4, #0]
c0de6d22:	6868      	ldr	r0, [r5, #4]
c0de6d24:	f003 f926 	bl	c0de9f74 <pic>
c0de6d28:	4919      	ldr	r1, [pc, #100]	@ (c0de6d90 <getContentPage+0x140>)
c0de6d2a:	4479      	add	r1, pc
c0de6d2c:	6379      	str	r1, [r7, #52]	@ 0x34
c0de6d2e:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de6d32:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de6d36:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de6d3a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de6d3e:	6062      	str	r2, [r4, #4]
c0de6d40:	6841      	ldr	r1, [r0, #4]
c0de6d42:	60a1      	str	r1, [r4, #8]
c0de6d44:	7a00      	ldrb	r0, [r0, #8]
c0de6d46:	1e41      	subs	r1, r0, #1
c0de6d48:	bf18      	it	ne
c0de6d4a:	2101      	movne	r1, #1
c0de6d4c:	2e00      	cmp	r6, #0
c0de6d4e:	bf08      	it	eq
c0de6d50:	4601      	moveq	r1, r0
c0de6d52:	7521      	strb	r1, [r4, #20]
c0de6d54:	e00d      	b.n	c0de6d72 <getContentPage+0x122>
c0de6d56:	6868      	ldr	r0, [r5, #4]
c0de6d58:	f003 f90c 	bl	c0de9f74 <pic>
c0de6d5c:	f89d 6043 	ldrb.w	r6, [sp, #67]	@ 0x43
c0de6d60:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de6d64:	6060      	str	r0, [r4, #4]
c0de6d66:	68a8      	ldr	r0, [r5, #8]
c0de6d68:	f003 f904 	bl	c0de9f74 <pic>
c0de6d6c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de6d70:	60a0      	str	r0, [r4, #8]
c0de6d72:	b011      	add	sp, #68	@ 0x44
c0de6d74:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6d76:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de6d7a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de6d7e:	f003 f8f9 	bl	c0de9f74 <pic>
c0de6d82:	6060      	str	r0, [r4, #4]
c0de6d84:	e7f5      	b.n	c0de6d72 <getContentPage+0x122>
c0de6d86:	bf00      	nop
c0de6d88:	0000172c 	.word	0x0000172c
c0de6d8c:	0000328b 	.word	0x0000328b
c0de6d90:	000001a7 	.word	0x000001a7

c0de6d94 <drawSwitchStep>:
c0de6d94:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d96:	b085      	sub	sp, #20
c0de6d98:	4c11      	ldr	r4, [pc, #68]	@ (c0de6de0 <drawSwitchStep+0x4c>)
c0de6d9a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de6d9e:	2600      	movs	r6, #0
c0de6da0:	eb09 0504 	add.w	r5, r9, r4
c0de6da4:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de6da8:	2500      	movs	r5, #0
c0de6daa:	2f02      	cmp	r7, #2
c0de6dac:	d30a      	bcc.n	c0de6dc4 <drawSwitchStep+0x30>
c0de6dae:	444c      	add	r4, r9
c0de6db0:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de6db4:	b12c      	cbz	r4, c0de6dc2 <drawSwitchStep+0x2e>
c0de6db6:	3f01      	subs	r7, #1
c0de6db8:	2603      	movs	r6, #3
c0de6dba:	42a7      	cmp	r7, r4
c0de6dbc:	bf08      	it	eq
c0de6dbe:	2602      	moveq	r6, #2
c0de6dc0:	e000      	b.n	c0de6dc4 <drawSwitchStep+0x30>
c0de6dc2:	2601      	movs	r6, #1
c0de6dc4:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de6dc8:	f88d 3010 	strb.w	r3, [sp, #16]
c0de6dcc:	9500      	str	r5, [sp, #0]
c0de6dce:	4330      	orrs	r0, r6
c0de6dd0:	ab02      	add	r3, sp, #8
c0de6dd2:	4661      	mov	r1, ip
c0de6dd4:	2200      	movs	r2, #0
c0de6dd6:	f7ff f8c9 	bl	c0de5f6c <nbgl_stepDrawSwitch>
c0de6dda:	b005      	add	sp, #20
c0de6ddc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6dde:	bf00      	nop
c0de6de0:	0000172c 	.word	0x0000172c

c0de6de4 <contentCallback>:
c0de6de4:	b5e0      	push	{r5, r6, r7, lr}
c0de6de6:	4608      	mov	r0, r1
c0de6de8:	f10d 0107 	add.w	r1, sp, #7
c0de6dec:	f000 f928 	bl	c0de7040 <buttonGenericCallback>
c0de6df0:	b130      	cbz	r0, c0de6e00 <contentCallback+0x1c>
c0de6df2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6df6:	2100      	movs	r1, #0
c0de6df8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6dfc:	f7ff bed2 	b.w	c0de6ba4 <displayContent>
c0de6e00:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de6e04 <getContentElemAtIdx>:
c0de6e04:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6e08:	4c1e      	ldr	r4, [pc, #120]	@ (c0de6e84 <getContentElemAtIdx+0x80>)
c0de6e0a:	4606      	mov	r6, r0
c0de6e0c:	2700      	movs	r7, #0
c0de6e0e:	eb09 0004 	add.w	r0, r9, r4
c0de6e12:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de6e16:	2b10      	cmp	r3, #16
c0de6e18:	d830      	bhi.n	c0de6e7c <getContentElemAtIdx+0x78>
c0de6e1a:	4693      	mov	fp, r2
c0de6e1c:	2201      	movs	r2, #1
c0de6e1e:	9101      	str	r1, [sp, #4]
c0de6e20:	fa02 f303 	lsl.w	r3, r2, r3
c0de6e24:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de6e28:	d004      	beq.n	c0de6e34 <getContentElemAtIdx+0x30>
c0de6e2a:	eb09 0004 	add.w	r0, r9, r4
c0de6e2e:	46a2      	mov	sl, r4
c0de6e30:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de6e32:	e005      	b.n	c0de6e40 <getContentElemAtIdx+0x3c>
c0de6e34:	4a14      	ldr	r2, [pc, #80]	@ (c0de6e88 <getContentElemAtIdx+0x84>)
c0de6e36:	4213      	tst	r3, r2
c0de6e38:	d020      	beq.n	c0de6e7c <getContentElemAtIdx+0x78>
c0de6e3a:	46a2      	mov	sl, r4
c0de6e3c:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de6e40:	2700      	movs	r7, #0
c0de6e42:	2000      	movs	r0, #0
c0de6e44:	f04f 0800 	mov.w	r8, #0
c0de6e48:	4605      	mov	r5, r0
c0de6e4a:	7a20      	ldrb	r0, [r4, #8]
c0de6e4c:	4580      	cmp	r8, r0
c0de6e4e:	d215      	bcs.n	c0de6e7c <getContentElemAtIdx+0x78>
c0de6e50:	fa4f f188 	sxtb.w	r1, r8
c0de6e54:	4620      	mov	r0, r4
c0de6e56:	465a      	mov	r2, fp
c0de6e58:	f7ff fe30 	bl	c0de6abc <getContentAtIdx>
c0de6e5c:	4607      	mov	r7, r0
c0de6e5e:	f7ff fe87 	bl	c0de6b70 <getContentNbElement>
c0de6e62:	b2e9      	uxtb	r1, r5
c0de6e64:	f108 0801 	add.w	r8, r8, #1
c0de6e68:	4408      	add	r0, r1
c0de6e6a:	42b0      	cmp	r0, r6
c0de6e6c:	d9ec      	bls.n	c0de6e48 <getContentElemAtIdx+0x44>
c0de6e6e:	eb09 000a 	add.w	r0, r9, sl
c0de6e72:	9901      	ldr	r1, [sp, #4]
c0de6e74:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de6e78:	1b40      	subs	r0, r0, r5
c0de6e7a:	7008      	strb	r0, [r1, #0]
c0de6e7c:	4638      	mov	r0, r7
c0de6e7e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6e82:	bf00      	nop
c0de6e84:	0000172c 	.word	0x0000172c
c0de6e88:	00010008 	.word	0x00010008

c0de6e8c <getPairData>:
c0de6e8c:	b5b0      	push	{r4, r5, r7, lr}
c0de6e8e:	4615      	mov	r5, r2
c0de6e90:	6802      	ldr	r2, [r0, #0]
c0de6e92:	461c      	mov	r4, r3
c0de6e94:	b112      	cbz	r2, c0de6e9c <getPairData+0x10>
c0de6e96:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de6e9a:	e002      	b.n	c0de6ea2 <getPairData+0x16>
c0de6e9c:	6842      	ldr	r2, [r0, #4]
c0de6e9e:	4608      	mov	r0, r1
c0de6ea0:	4790      	blx	r2
c0de6ea2:	f003 f867 	bl	c0de9f74 <pic>
c0de6ea6:	6802      	ldr	r2, [r0, #0]
c0de6ea8:	9904      	ldr	r1, [sp, #16]
c0de6eaa:	602a      	str	r2, [r5, #0]
c0de6eac:	6842      	ldr	r2, [r0, #4]
c0de6eae:	6022      	str	r2, [r4, #0]
c0de6eb0:	7b02      	ldrb	r2, [r0, #12]
c0de6eb2:	0753      	lsls	r3, r2, #29
c0de6eb4:	d403      	bmi.n	c0de6ebe <getPairData+0x32>
c0de6eb6:	0792      	lsls	r2, r2, #30
c0de6eb8:	d404      	bmi.n	c0de6ec4 <getPairData+0x38>
c0de6eba:	2000      	movs	r0, #0
c0de6ebc:	e000      	b.n	c0de6ec0 <getPairData+0x34>
c0de6ebe:	6880      	ldr	r0, [r0, #8]
c0de6ec0:	6008      	str	r0, [r1, #0]
c0de6ec2:	bdb0      	pop	{r4, r5, r7, pc}
c0de6ec4:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de6ec8:	2301      	movs	r3, #1
c0de6eca:	700b      	strb	r3, [r1, #0]
c0de6ecc:	6880      	ldr	r0, [r0, #8]
c0de6ece:	6010      	str	r0, [r2, #0]
c0de6ed0:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de6ed4 <onSwitchAction>:
c0de6ed4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6ed6:	b08f      	sub	sp, #60	@ 0x3c
c0de6ed8:	ac02      	add	r4, sp, #8
c0de6eda:	2134      	movs	r1, #52	@ 0x34
c0de6edc:	4620      	mov	r0, r4
c0de6ede:	f003 fc49 	bl	c0dea774 <__aeabi_memclr>
c0de6ee2:	4e26      	ldr	r6, [pc, #152]	@ (c0de6f7c <onSwitchAction+0xa8>)
c0de6ee4:	f10d 0107 	add.w	r1, sp, #7
c0de6ee8:	4622      	mov	r2, r4
c0de6eea:	eb09 0006 	add.w	r0, r9, r6
c0de6eee:	f000 fd32 	bl	c0de7956 <OUTLINED_FUNCTION_4>
c0de6ef2:	2800      	cmp	r0, #0
c0de6ef4:	d040      	beq.n	c0de6f78 <onSwitchAction+0xa4>
c0de6ef6:	4604      	mov	r4, r0
c0de6ef8:	7800      	ldrb	r0, [r0, #0]
c0de6efa:	2807      	cmp	r0, #7
c0de6efc:	d13c      	bne.n	c0de6f78 <onSwitchAction+0xa4>
c0de6efe:	6860      	ldr	r0, [r4, #4]
c0de6f00:	eb09 0706 	add.w	r7, r9, r6
c0de6f04:	f003 f836 	bl	c0de9f74 <pic>
c0de6f08:	4605      	mov	r5, r0
c0de6f0a:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de6f0e:	f89d 7007 	ldrb.w	r7, [sp, #7]
c0de6f12:	2810      	cmp	r0, #16
c0de6f14:	d811      	bhi.n	c0de6f3a <onSwitchAction+0x66>
c0de6f16:	2101      	movs	r1, #1
c0de6f18:	fa01 f000 	lsl.w	r0, r1, r0
c0de6f1c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de6f20:	d004      	beq.n	c0de6f2c <onSwitchAction+0x58>
c0de6f22:	2000      	movs	r0, #0
c0de6f24:	2101      	movs	r1, #1
c0de6f26:	f000 f82d 	bl	c0de6f84 <displaySettingsPage>
c0de6f2a:	e006      	b.n	c0de6f3a <onSwitchAction+0x66>
c0de6f2c:	4914      	ldr	r1, [pc, #80]	@ (c0de6f80 <onSwitchAction+0xac>)
c0de6f2e:	4208      	tst	r0, r1
c0de6f30:	d003      	beq.n	c0de6f3a <onSwitchAction+0x66>
c0de6f32:	2000      	movs	r0, #0
c0de6f34:	2101      	movs	r1, #1
c0de6f36:	f7ff fe35 	bl	c0de6ba4 <displayContent>
c0de6f3a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de6f3c:	b188      	cbz	r0, c0de6f62 <onSwitchAction+0x8e>
c0de6f3e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de6f42:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de6f46:	f003 f815 	bl	c0de9f74 <pic>
c0de6f4a:	7a21      	ldrb	r1, [r4, #8]
c0de6f4c:	eb09 0206 	add.w	r2, r9, r6
c0de6f50:	4603      	mov	r3, r0
c0de6f52:	7a60      	ldrb	r0, [r4, #9]
c0de6f54:	3901      	subs	r1, #1
c0de6f56:	bf18      	it	ne
c0de6f58:	2101      	movne	r1, #1
c0de6f5a:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de6f5e:	4798      	blx	r3
c0de6f60:	e00a      	b.n	c0de6f78 <onSwitchAction+0xa4>
c0de6f62:	eb09 0006 	add.w	r0, r9, r6
c0de6f66:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de6f68:	b132      	cbz	r2, c0de6f78 <onSwitchAction+0xa4>
c0de6f6a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6f6e:	2100      	movs	r1, #0
c0de6f70:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de6f74:	7a40      	ldrb	r0, [r0, #9]
c0de6f76:	4790      	blx	r2
c0de6f78:	b00f      	add	sp, #60	@ 0x3c
c0de6f7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6f7c:	0000172c 	.word	0x0000172c
c0de6f80:	00010008 	.word	0x00010008

c0de6f84 <displaySettingsPage>:
c0de6f84:	b5b0      	push	{r4, r5, r7, lr}
c0de6f86:	b08a      	sub	sp, #40	@ 0x28
c0de6f88:	460d      	mov	r5, r1
c0de6f8a:	4604      	mov	r4, r0
c0de6f8c:	a804      	add	r0, sp, #16
c0de6f8e:	2118      	movs	r1, #24
c0de6f90:	f003 fbf0 	bl	c0dea774 <__aeabi_memclr>
c0de6f94:	481c      	ldr	r0, [pc, #112]	@ (c0de7008 <displaySettingsPage+0x84>)
c0de6f96:	f000 fccd 	bl	c0de7934 <OUTLINED_FUNCTION_2>
c0de6f9a:	dd14      	ble.n	c0de6fc6 <displaySettingsPage+0x42>
c0de6f9c:	a904      	add	r1, sp, #16
c0de6f9e:	4628      	mov	r0, r5
c0de6fa0:	f7ff fe56 	bl	c0de6c50 <getContentPage>
c0de6fa4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de6fa8:	b1e8      	cbz	r0, c0de6fe6 <displaySettingsPage+0x62>
c0de6faa:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de6fae:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de6fb2:	481a      	ldr	r0, [pc, #104]	@ (c0de701c <displaySettingsPage+0x98>)
c0de6fb4:	4478      	add	r0, pc
c0de6fb6:	2b00      	cmp	r3, #0
c0de6fb8:	9000      	str	r0, [sp, #0]
c0de6fba:	4620      	mov	r0, r4
c0de6fbc:	bf18      	it	ne
c0de6fbe:	2301      	movne	r3, #1
c0de6fc0:	f7ff fee8 	bl	c0de6d94 <drawSwitchStep>
c0de6fc4:	e01b      	b.n	c0de6ffe <displaySettingsPage+0x7a>
c0de6fc6:	4448      	add	r0, r9
c0de6fc8:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de6fcc:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de6fce:	4b0f      	ldr	r3, [pc, #60]	@ (c0de700c <displaySettingsPage+0x88>)
c0de6fd0:	447b      	add	r3, pc
c0de6fd2:	290f      	cmp	r1, #15
c0de6fd4:	bf08      	it	eq
c0de6fd6:	4613      	moveq	r3, r2
c0de6fd8:	6343      	str	r3, [r0, #52]	@ 0x34
c0de6fda:	480d      	ldr	r0, [pc, #52]	@ (c0de7010 <displaySettingsPage+0x8c>)
c0de6fdc:	4478      	add	r0, pc
c0de6fde:	9005      	str	r0, [sp, #20]
c0de6fe0:	480c      	ldr	r0, [pc, #48]	@ (c0de7014 <displaySettingsPage+0x90>)
c0de6fe2:	4478      	add	r0, pc
c0de6fe4:	9007      	str	r0, [sp, #28]
c0de6fe6:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de6fea:	9907      	ldr	r1, [sp, #28]
c0de6fec:	4d0a      	ldr	r5, [pc, #40]	@ (c0de7018 <displaySettingsPage+0x94>)
c0de6fee:	2000      	movs	r0, #0
c0de6ff0:	9002      	str	r0, [sp, #8]
c0de6ff2:	447d      	add	r5, pc
c0de6ff4:	e9cd 5000 	strd	r5, r0, [sp]
c0de6ff8:	4620      	mov	r0, r4
c0de6ffa:	f7ff fae9 	bl	c0de65d0 <drawStep>
c0de6ffe:	f7fd fb2f 	bl	c0de4660 <nbgl_refresh>
c0de7002:	b00a      	add	sp, #40	@ 0x28
c0de7004:	bdb0      	pop	{r4, r5, r7, pc}
c0de7006:	bf00      	nop
c0de7008:	0000172c 	.word	0x0000172c
c0de700c:	fffff261 	.word	0xfffff261
c0de7010:	00003d11 	.word	0x00003d11
c0de7014:	0000394e 	.word	0x0000394e
c0de7018:	0000002b 	.word	0x0000002b
c0de701c:	00000069 	.word	0x00000069

c0de7020 <settingsCallback>:
c0de7020:	b5e0      	push	{r5, r6, r7, lr}
c0de7022:	4608      	mov	r0, r1
c0de7024:	f10d 0107 	add.w	r1, sp, #7
c0de7028:	f000 f80a 	bl	c0de7040 <buttonGenericCallback>
c0de702c:	b130      	cbz	r0, c0de703c <settingsCallback+0x1c>
c0de702e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7032:	2100      	movs	r1, #0
c0de7034:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7038:	f7ff bfa4 	b.w	c0de6f84 <displaySettingsPage>
c0de703c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de7040 <buttonGenericCallback>:
c0de7040:	b5b0      	push	{r4, r5, r7, lr}
c0de7042:	b08e      	sub	sp, #56	@ 0x38
c0de7044:	460c      	mov	r4, r1
c0de7046:	4605      	mov	r5, r0
c0de7048:	4668      	mov	r0, sp
c0de704a:	2134      	movs	r1, #52	@ 0x34
c0de704c:	f003 fb92 	bl	c0dea774 <__aeabi_memclr>
c0de7050:	2d04      	cmp	r5, #4
c0de7052:	d00d      	beq.n	c0de7070 <buttonGenericCallback+0x30>
c0de7054:	2d01      	cmp	r5, #1
c0de7056:	d012      	beq.n	c0de707e <buttonGenericCallback+0x3e>
c0de7058:	2d00      	cmp	r5, #0
c0de705a:	d17a      	bne.n	c0de7152 <buttonGenericCallback+0x112>
c0de705c:	483e      	ldr	r0, [pc, #248]	@ (c0de7158 <buttonGenericCallback+0x118>)
c0de705e:	eb09 0100 	add.w	r1, r9, r0
c0de7062:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de7066:	2901      	cmp	r1, #1
c0de7068:	db1d      	blt.n	c0de70a6 <buttonGenericCallback+0x66>
c0de706a:	3901      	subs	r1, #1
c0de706c:	2008      	movs	r0, #8
c0de706e:	e013      	b.n	c0de7098 <buttonGenericCallback+0x58>
c0de7070:	4c39      	ldr	r4, [pc, #228]	@ (c0de7158 <buttonGenericCallback+0x118>)
c0de7072:	eb09 0004 	add.w	r0, r9, r4
c0de7076:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7078:	b338      	cbz	r0, c0de70ca <buttonGenericCallback+0x8a>
c0de707a:	4780      	blx	r0
c0de707c:	e069      	b.n	c0de7152 <buttonGenericCallback+0x112>
c0de707e:	4836      	ldr	r0, [pc, #216]	@ (c0de7158 <buttonGenericCallback+0x118>)
c0de7080:	eb09 0100 	add.w	r1, r9, r0
c0de7084:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de7088:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de708c:	3901      	subs	r1, #1
c0de708e:	4281      	cmp	r1, r0
c0de7090:	dd5f      	ble.n	c0de7152 <buttonGenericCallback+0x112>
c0de7092:	b2c0      	uxtb	r0, r0
c0de7094:	1c41      	adds	r1, r0, #1
c0de7096:	2000      	movs	r0, #0
c0de7098:	4a2f      	ldr	r2, [pc, #188]	@ (c0de7158 <buttonGenericCallback+0x118>)
c0de709a:	444a      	add	r2, r9
c0de709c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de70a0:	7020      	strb	r0, [r4, #0]
c0de70a2:	2001      	movs	r0, #1
c0de70a4:	e056      	b.n	c0de7154 <buttonGenericCallback+0x114>
c0de70a6:	eb09 0100 	add.w	r1, r9, r0
c0de70aa:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de70ae:	2906      	cmp	r1, #6
c0de70b0:	d14f      	bne.n	c0de7152 <buttonGenericCallback+0x112>
c0de70b2:	eb09 0100 	add.w	r1, r9, r0
c0de70b6:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de70b8:	2900      	cmp	r1, #0
c0de70ba:	d04a      	beq.n	c0de7152 <buttonGenericCallback+0x112>
c0de70bc:	4448      	add	r0, r9
c0de70be:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de70c2:	2801      	cmp	r0, #1
c0de70c4:	d045      	beq.n	c0de7152 <buttonGenericCallback+0x112>
c0de70c6:	2008      	movs	r0, #8
c0de70c8:	e7ea      	b.n	c0de70a0 <buttonGenericCallback+0x60>
c0de70ca:	eb09 0004 	add.w	r0, r9, r4
c0de70ce:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de70d2:	2000      	movs	r0, #0
c0de70d4:	2910      	cmp	r1, #16
c0de70d6:	d83d      	bhi.n	c0de7154 <buttonGenericCallback+0x114>
c0de70d8:	2201      	movs	r2, #1
c0de70da:	fa02 f101 	lsl.w	r1, r2, r1
c0de70de:	4a1f      	ldr	r2, [pc, #124]	@ (c0de715c <buttonGenericCallback+0x11c>)
c0de70e0:	4211      	tst	r1, r2
c0de70e2:	d037      	beq.n	c0de7154 <buttonGenericCallback+0x114>
c0de70e4:	eb09 0004 	add.w	r0, r9, r4
c0de70e8:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de70ec:	466a      	mov	r2, sp
c0de70ee:	f000 fc32 	bl	c0de7956 <OUTLINED_FUNCTION_4>
c0de70f2:	b370      	cbz	r0, c0de7152 <buttonGenericCallback+0x112>
c0de70f4:	7801      	ldrb	r1, [r0, #0]
c0de70f6:	4602      	mov	r2, r0
c0de70f8:	2000      	movs	r0, #0
c0de70fa:	b359      	cbz	r1, c0de7154 <buttonGenericCallback+0x114>
c0de70fc:	290a      	cmp	r1, #10
c0de70fe:	d009      	beq.n	c0de7114 <buttonGenericCallback+0xd4>
c0de7100:	2907      	cmp	r1, #7
c0de7102:	d00f      	beq.n	c0de7124 <buttonGenericCallback+0xe4>
c0de7104:	2909      	cmp	r1, #9
c0de7106:	d011      	beq.n	c0de712c <buttonGenericCallback+0xec>
c0de7108:	2903      	cmp	r1, #3
c0de710a:	f04f 0100 	mov.w	r1, #0
c0de710e:	d112      	bne.n	c0de7136 <buttonGenericCallback+0xf6>
c0de7110:	7c10      	ldrb	r0, [r2, #16]
c0de7112:	e005      	b.n	c0de7120 <buttonGenericCallback+0xe0>
c0de7114:	eb09 0004 	add.w	r0, r9, r4
c0de7118:	6891      	ldr	r1, [r2, #8]
c0de711a:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de711e:	5c08      	ldrb	r0, [r1, r0]
c0de7120:	2100      	movs	r1, #0
c0de7122:	e008      	b.n	c0de7136 <buttonGenericCallback+0xf6>
c0de7124:	6850      	ldr	r0, [r2, #4]
c0de7126:	2100      	movs	r1, #0
c0de7128:	7a40      	ldrb	r0, [r0, #9]
c0de712a:	e004      	b.n	c0de7136 <buttonGenericCallback+0xf6>
c0de712c:	eb09 0004 	add.w	r0, r9, r4
c0de7130:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de7134:	7ad0      	ldrb	r0, [r2, #11]
c0de7136:	6b13      	ldr	r3, [r2, #48]	@ 0x30
c0de7138:	b133      	cbz	r3, c0de7148 <buttonGenericCallback+0x108>
c0de713a:	eb09 0104 	add.w	r1, r9, r4
c0de713e:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de7142:	2100      	movs	r1, #0
c0de7144:	4798      	blx	r3
c0de7146:	e004      	b.n	c0de7152 <buttonGenericCallback+0x112>
c0de7148:	eb09 0204 	add.w	r2, r9, r4
c0de714c:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de714e:	b102      	cbz	r2, c0de7152 <buttonGenericCallback+0x112>
c0de7150:	4790      	blx	r2
c0de7152:	2000      	movs	r0, #0
c0de7154:	b00e      	add	sp, #56	@ 0x38
c0de7156:	bdb0      	pop	{r4, r5, r7, pc}
c0de7158:	0000172c 	.word	0x0000172c
c0de715c:	0001c008 	.word	0x0001c008

c0de7160 <displayHomePage>:
c0de7160:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de7164:	4680      	mov	r8, r0
c0de7166:	4832      	ldr	r0, [pc, #200]	@ (c0de7230 <displayHomePage+0xd0>)
c0de7168:	2200      	movs	r2, #0
c0de716a:	eb09 0100 	add.w	r1, r9, r0
c0de716e:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de7170:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de7172:	634a      	str	r2, [r1, #52]	@ 0x34
c0de7174:	2202      	movs	r2, #2
c0de7176:	2d00      	cmp	r5, #0
c0de7178:	463e      	mov	r6, r7
c0de717a:	bf08      	it	eq
c0de717c:	2201      	moveq	r2, #1
c0de717e:	2f00      	cmp	r7, #0
c0de7180:	bf18      	it	ne
c0de7182:	2601      	movne	r6, #1
c0de7184:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de7188:	b183      	cbz	r3, c0de71ac <displayHomePage+0x4c>
c0de718a:	2401      	movs	r4, #1
c0de718c:	2d00      	cmp	r5, #0
c0de718e:	bf08      	it	eq
c0de7190:	24ff      	moveq	r4, #255	@ 0xff
c0de7192:	429c      	cmp	r4, r3
c0de7194:	d111      	bne.n	c0de71ba <displayHomePage+0x5a>
c0de7196:	eb09 0400 	add.w	r4, r9, r0
c0de719a:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de719e:	f002 fee9 	bl	c0de9f74 <pic>
c0de71a2:	4602      	mov	r2, r0
c0de71a4:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de71a6:	6880      	ldr	r0, [r0, #8]
c0de71a8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de71aa:	e004      	b.n	c0de71b6 <displayHomePage+0x56>
c0de71ac:	eb09 0100 	add.w	r1, r9, r0
c0de71b0:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de71b4:	b312      	cbz	r2, c0de71fc <displayHomePage+0x9c>
c0de71b6:	2300      	movs	r3, #0
c0de71b8:	e02c      	b.n	c0de7214 <displayHomePage+0xb4>
c0de71ba:	2f00      	cmp	r7, #0
c0de71bc:	4614      	mov	r4, r2
c0de71be:	bf08      	it	eq
c0de71c0:	24ff      	moveq	r4, #255	@ 0xff
c0de71c2:	429c      	cmp	r4, r3
c0de71c4:	d109      	bne.n	c0de71da <displayHomePage+0x7a>
c0de71c6:	491c      	ldr	r1, [pc, #112]	@ (c0de7238 <displayHomePage+0xd8>)
c0de71c8:	4448      	add	r0, r9
c0de71ca:	2300      	movs	r3, #0
c0de71cc:	4479      	add	r1, pc
c0de71ce:	6341      	str	r1, [r0, #52]	@ 0x34
c0de71d0:	4d1a      	ldr	r5, [pc, #104]	@ (c0de723c <displayHomePage+0xdc>)
c0de71d2:	4a1b      	ldr	r2, [pc, #108]	@ (c0de7240 <displayHomePage+0xe0>)
c0de71d4:	447d      	add	r5, pc
c0de71d6:	447a      	add	r2, pc
c0de71d8:	e01c      	b.n	c0de7214 <displayHomePage+0xb4>
c0de71da:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de71dc:	4432      	add	r2, r6
c0de71de:	4448      	add	r0, r9
c0de71e0:	2900      	cmp	r1, #0
c0de71e2:	bf08      	it	eq
c0de71e4:	22ff      	moveq	r2, #255	@ 0xff
c0de71e6:	429a      	cmp	r2, r3
c0de71e8:	d10d      	bne.n	c0de7206 <displayHomePage+0xa6>
c0de71ea:	4916      	ldr	r1, [pc, #88]	@ (c0de7244 <displayHomePage+0xe4>)
c0de71ec:	2300      	movs	r3, #0
c0de71ee:	4479      	add	r1, pc
c0de71f0:	6341      	str	r1, [r0, #52]	@ 0x34
c0de71f2:	4d15      	ldr	r5, [pc, #84]	@ (c0de7248 <displayHomePage+0xe8>)
c0de71f4:	4a15      	ldr	r2, [pc, #84]	@ (c0de724c <displayHomePage+0xec>)
c0de71f6:	447d      	add	r5, pc
c0de71f8:	447a      	add	r2, pc
c0de71fa:	e00b      	b.n	c0de7214 <displayHomePage+0xb4>
c0de71fc:	4448      	add	r0, r9
c0de71fe:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de7200:	4b0c      	ldr	r3, [pc, #48]	@ (c0de7234 <displayHomePage+0xd4>)
c0de7202:	447b      	add	r3, pc
c0de7204:	e006      	b.n	c0de7214 <displayHomePage+0xb4>
c0de7206:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de7208:	2300      	movs	r3, #0
c0de720a:	6341      	str	r1, [r0, #52]	@ 0x34
c0de720c:	4d10      	ldr	r5, [pc, #64]	@ (c0de7250 <displayHomePage+0xf0>)
c0de720e:	4a11      	ldr	r2, [pc, #68]	@ (c0de7254 <displayHomePage+0xf4>)
c0de7210:	447d      	add	r5, pc
c0de7212:	447a      	add	r2, pc
c0de7214:	4910      	ldr	r1, [pc, #64]	@ (c0de7258 <displayHomePage+0xf8>)
c0de7216:	2000      	movs	r0, #0
c0de7218:	9002      	str	r0, [sp, #8]
c0de721a:	4479      	add	r1, pc
c0de721c:	e9cd 1000 	strd	r1, r0, [sp]
c0de7220:	4640      	mov	r0, r8
c0de7222:	4629      	mov	r1, r5
c0de7224:	f7ff f9d4 	bl	c0de65d0 <drawStep>
c0de7228:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de722c:	f7fd ba18 	b.w	c0de4660 <nbgl_refresh>
c0de7230:	0000172c 	.word	0x0000172c
c0de7234:	00003b7f 	.word	0x00003b7f
c0de7238:	0000008d 	.word	0x0000008d
c0de723c:	0000377f 	.word	0x0000377f
c0de7240:	00003a7f 	.word	0x00003a7f
c0de7244:	00000073 	.word	0x00000073
c0de7248:	000036c8 	.word	0x000036c8
c0de724c:	00003b2d 	.word	0x00003b2d
c0de7250:	000036d1 	.word	0x000036d1
c0de7254:	00003b7c 	.word	0x00003b7c
c0de7258:	0000006b 	.word	0x0000006b

c0de725c <startUseCaseSettings>:
c0de725c:	2000      	movs	r0, #0
c0de725e:	f7fe bfad 	b.w	c0de61bc <startUseCaseSettingsAtPage>
	...

c0de7264 <startUseCaseInfo>:
c0de7264:	4807      	ldr	r0, [pc, #28]	@ (c0de7284 <startUseCaseInfo+0x20>)
c0de7266:	210d      	movs	r1, #13
c0de7268:	4448      	add	r0, r9
c0de726a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de726e:	2100      	movs	r1, #0
c0de7270:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de7274:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de7276:	7b09      	ldrb	r1, [r1, #12]
c0de7278:	3101      	adds	r1, #1
c0de727a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de727e:	2000      	movs	r0, #0
c0de7280:	f000 b810 	b.w	c0de72a4 <displayInfoPage>
c0de7284:	0000172c 	.word	0x0000172c

c0de7288 <homeCallback>:
c0de7288:	b5e0      	push	{r5, r6, r7, lr}
c0de728a:	4608      	mov	r0, r1
c0de728c:	f10d 0107 	add.w	r1, sp, #7
c0de7290:	f7ff fed6 	bl	c0de7040 <buttonGenericCallback>
c0de7294:	b128      	cbz	r0, c0de72a2 <homeCallback+0x1a>
c0de7296:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de729a:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de729e:	f7ff bf5f 	b.w	c0de7160 <displayHomePage>
c0de72a2:	bd8c      	pop	{r2, r3, r7, pc}

c0de72a4 <displayInfoPage>:
c0de72a4:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de72a6:	4604      	mov	r4, r0
c0de72a8:	4816      	ldr	r0, [pc, #88]	@ (c0de7304 <displayInfoPage+0x60>)
c0de72aa:	f000 fb43 	bl	c0de7934 <OUTLINED_FUNCTION_2>
c0de72ae:	dd11      	ble.n	c0de72d4 <displayInfoPage+0x30>
c0de72b0:	eb09 0700 	add.w	r7, r9, r0
c0de72b4:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de72b6:	6800      	ldr	r0, [r0, #0]
c0de72b8:	4e13      	ldr	r6, [pc, #76]	@ (c0de7308 <displayInfoPage+0x64>)
c0de72ba:	447e      	add	r6, pc
c0de72bc:	47b0      	blx	r6
c0de72be:	f000 fb5b 	bl	c0de7978 <OUTLINED_FUNCTION_8>
c0de72c2:	4605      	mov	r5, r0
c0de72c4:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de72c6:	6840      	ldr	r0, [r0, #4]
c0de72c8:	47b0      	blx	r6
c0de72ca:	f000 fb55 	bl	c0de7978 <OUTLINED_FUNCTION_8>
c0de72ce:	4603      	mov	r3, r0
c0de72d0:	2100      	movs	r1, #0
c0de72d2:	e008      	b.n	c0de72e6 <displayInfoPage+0x42>
c0de72d4:	490d      	ldr	r1, [pc, #52]	@ (c0de730c <displayInfoPage+0x68>)
c0de72d6:	4448      	add	r0, r9
c0de72d8:	2300      	movs	r3, #0
c0de72da:	4479      	add	r1, pc
c0de72dc:	6341      	str	r1, [r0, #52]	@ 0x34
c0de72de:	490c      	ldr	r1, [pc, #48]	@ (c0de7310 <displayInfoPage+0x6c>)
c0de72e0:	4d0c      	ldr	r5, [pc, #48]	@ (c0de7314 <displayInfoPage+0x70>)
c0de72e2:	4479      	add	r1, pc
c0de72e4:	447d      	add	r5, pc
c0de72e6:	4e0c      	ldr	r6, [pc, #48]	@ (c0de7318 <displayInfoPage+0x74>)
c0de72e8:	2002      	movs	r0, #2
c0de72ea:	2200      	movs	r2, #0
c0de72ec:	9002      	str	r0, [sp, #8]
c0de72ee:	4620      	mov	r0, r4
c0de72f0:	447e      	add	r6, pc
c0de72f2:	e9cd 6200 	strd	r6, r2, [sp]
c0de72f6:	462a      	mov	r2, r5
c0de72f8:	f7ff f96a 	bl	c0de65d0 <drawStep>
c0de72fc:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de7300:	f7fd b9ae 	b.w	c0de4660 <nbgl_refresh>
c0de7304:	0000172c 	.word	0x0000172c
c0de7308:	00002cb7 	.word	0x00002cb7
c0de730c:	ffffef57 	.word	0xffffef57
c0de7310:	0000364e 	.word	0x0000364e
c0de7314:	00003a09 	.word	0x00003a09
c0de7318:	00000029 	.word	0x00000029

c0de731c <infoCallback>:
c0de731c:	b5e0      	push	{r5, r6, r7, lr}
c0de731e:	4608      	mov	r0, r1
c0de7320:	f10d 0107 	add.w	r1, sp, #7
c0de7324:	f7ff fe8c 	bl	c0de7040 <buttonGenericCallback>
c0de7328:	b128      	cbz	r0, c0de7336 <infoCallback+0x1a>
c0de732a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de732e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7332:	f7ff bfb7 	b.w	c0de72a4 <displayInfoPage>
c0de7336:	bd8c      	pop	{r2, r3, r7, pc}

c0de7338 <displayWarningStep>:
c0de7338:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de733a:	2000      	movs	r0, #0
c0de733c:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de7340:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de7344:	4817      	ldr	r0, [pc, #92]	@ (c0de73a4 <displayWarningStep+0x6c>)
c0de7346:	eb09 0100 	add.w	r1, r9, r0
c0de734a:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de734e:	b169      	cbz	r1, c0de736c <displayWarningStep+0x34>
c0de7350:	4448      	add	r0, r9
c0de7352:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de7356:	3801      	subs	r0, #1
c0de7358:	4288      	cmp	r0, r1
c0de735a:	d112      	bne.n	c0de7382 <displayWarningStep+0x4a>
c0de735c:	aa02      	add	r2, sp, #8
c0de735e:	2000      	movs	r0, #0
c0de7360:	f102 0108 	add.w	r1, r2, #8
c0de7364:	f000 f828 	bl	c0de73b8 <getLastPageInfo>
c0de7368:	200a      	movs	r0, #10
c0de736a:	e00b      	b.n	c0de7384 <displayWarningStep+0x4c>
c0de736c:	480e      	ldr	r0, [pc, #56]	@ (c0de73a8 <displayWarningStep+0x70>)
c0de736e:	4478      	add	r0, pc
c0de7370:	9003      	str	r0, [sp, #12]
c0de7372:	480e      	ldr	r0, [pc, #56]	@ (c0de73ac <displayWarningStep+0x74>)
c0de7374:	4478      	add	r0, pc
c0de7376:	9002      	str	r0, [sp, #8]
c0de7378:	480d      	ldr	r0, [pc, #52]	@ (c0de73b0 <displayWarningStep+0x78>)
c0de737a:	4478      	add	r0, pc
c0de737c:	9004      	str	r0, [sp, #16]
c0de737e:	2001      	movs	r0, #1
c0de7380:	e000      	b.n	c0de7384 <displayWarningStep+0x4c>
c0de7382:	2000      	movs	r0, #0
c0de7384:	2101      	movs	r1, #1
c0de7386:	2200      	movs	r2, #0
c0de7388:	f88d 1015 	strb.w	r1, [sp, #21]
c0de738c:	2100      	movs	r1, #0
c0de738e:	9100      	str	r1, [sp, #0]
c0de7390:	4908      	ldr	r1, [pc, #32]	@ (c0de73b4 <displayWarningStep+0x7c>)
c0de7392:	ab02      	add	r3, sp, #8
c0de7394:	4479      	add	r1, pc
c0de7396:	f7fe fd01 	bl	c0de5d9c <nbgl_stepDrawCenteredInfo>
c0de739a:	f7fd f961 	bl	c0de4660 <nbgl_refresh>
c0de739e:	b006      	add	sp, #24
c0de73a0:	bd80      	pop	{r7, pc}
c0de73a2:	bf00      	nop
c0de73a4:	0000172c 	.word	0x0000172c
c0de73a8:	000037dc 	.word	0x000037dc
c0de73ac:	00003913 	.word	0x00003913
c0de73b0:	0000369b 	.word	0x0000369b
c0de73b4:	00000149 	.word	0x00000149

c0de73b8 <getLastPageInfo>:
c0de73b8:	b170      	cbz	r0, c0de73d8 <getLastPageInfo+0x20>
c0de73ba:	4833      	ldr	r0, [pc, #204]	@ (c0de7488 <getLastPageInfo+0xd0>)
c0de73bc:	4478      	add	r0, pc
c0de73be:	6008      	str	r0, [r1, #0]
c0de73c0:	4830      	ldr	r0, [pc, #192]	@ (c0de7484 <getLastPageInfo+0xcc>)
c0de73c2:	eb09 0100 	add.w	r1, r9, r0
c0de73c6:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de73ca:	2904      	cmp	r1, #4
c0de73cc:	d113      	bne.n	c0de73f6 <getLastPageInfo+0x3e>
c0de73ce:	482f      	ldr	r0, [pc, #188]	@ (c0de748c <getLastPageInfo+0xd4>)
c0de73d0:	492f      	ldr	r1, [pc, #188]	@ (c0de7490 <getLastPageInfo+0xd8>)
c0de73d2:	4478      	add	r0, pc
c0de73d4:	4479      	add	r1, pc
c0de73d6:	e04f      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de73d8:	4838      	ldr	r0, [pc, #224]	@ (c0de74bc <getLastPageInfo+0x104>)
c0de73da:	4478      	add	r0, pc
c0de73dc:	6008      	str	r0, [r1, #0]
c0de73de:	4829      	ldr	r0, [pc, #164]	@ (c0de7484 <getLastPageInfo+0xcc>)
c0de73e0:	eb09 0100 	add.w	r1, r9, r0
c0de73e4:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de73e8:	2904      	cmp	r1, #4
c0de73ea:	d10b      	bne.n	c0de7404 <getLastPageInfo+0x4c>
c0de73ec:	4834      	ldr	r0, [pc, #208]	@ (c0de74c0 <getLastPageInfo+0x108>)
c0de73ee:	4935      	ldr	r1, [pc, #212]	@ (c0de74c4 <getLastPageInfo+0x10c>)
c0de73f0:	4478      	add	r0, pc
c0de73f2:	4479      	add	r1, pc
c0de73f4:	e040      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de73f6:	eb09 0100 	add.w	r1, r9, r0
c0de73fa:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de73fc:	b171      	cbz	r1, c0de741c <getLastPageInfo+0x64>
c0de73fe:	4825      	ldr	r0, [pc, #148]	@ (c0de7494 <getLastPageInfo+0xdc>)
c0de7400:	4478      	add	r0, pc
c0de7402:	e039      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de7404:	4448      	add	r0, r9
c0de7406:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de7408:	f010 0007 	ands.w	r0, r0, #7
c0de740c:	d017      	beq.n	c0de743e <getLastPageInfo+0x86>
c0de740e:	2801      	cmp	r0, #1
c0de7410:	d11a      	bne.n	c0de7448 <getLastPageInfo+0x90>
c0de7412:	482f      	ldr	r0, [pc, #188]	@ (c0de74d0 <getLastPageInfo+0x118>)
c0de7414:	492f      	ldr	r1, [pc, #188]	@ (c0de74d4 <getLastPageInfo+0x11c>)
c0de7416:	4478      	add	r0, pc
c0de7418:	4479      	add	r1, pc
c0de741a:	e02d      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de741c:	4448      	add	r0, r9
c0de741e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de7420:	f000 0107 	and.w	r1, r0, #7
c0de7424:	2901      	cmp	r1, #1
c0de7426:	d014      	beq.n	c0de7452 <getLastPageInfo+0x9a>
c0de7428:	b9e9      	cbnz	r1, c0de7466 <getLastPageInfo+0xae>
c0de742a:	0640      	lsls	r0, r0, #25
c0de742c:	481a      	ldr	r0, [pc, #104]	@ (c0de7498 <getLastPageInfo+0xe0>)
c0de742e:	491b      	ldr	r1, [pc, #108]	@ (c0de749c <getLastPageInfo+0xe4>)
c0de7430:	4478      	add	r0, pc
c0de7432:	4479      	add	r1, pc
c0de7434:	bf58      	it	pl
c0de7436:	4601      	movpl	r1, r0
c0de7438:	4819      	ldr	r0, [pc, #100]	@ (c0de74a0 <getLastPageInfo+0xe8>)
c0de743a:	4478      	add	r0, pc
c0de743c:	e01c      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de743e:	4822      	ldr	r0, [pc, #136]	@ (c0de74c8 <getLastPageInfo+0x110>)
c0de7440:	4922      	ldr	r1, [pc, #136]	@ (c0de74cc <getLastPageInfo+0x114>)
c0de7442:	4478      	add	r0, pc
c0de7444:	4479      	add	r1, pc
c0de7446:	e017      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de7448:	4823      	ldr	r0, [pc, #140]	@ (c0de74d8 <getLastPageInfo+0x120>)
c0de744a:	4924      	ldr	r1, [pc, #144]	@ (c0de74dc <getLastPageInfo+0x124>)
c0de744c:	4478      	add	r0, pc
c0de744e:	4479      	add	r1, pc
c0de7450:	e012      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de7452:	0640      	lsls	r0, r0, #25
c0de7454:	4813      	ldr	r0, [pc, #76]	@ (c0de74a4 <getLastPageInfo+0xec>)
c0de7456:	4914      	ldr	r1, [pc, #80]	@ (c0de74a8 <getLastPageInfo+0xf0>)
c0de7458:	4478      	add	r0, pc
c0de745a:	4479      	add	r1, pc
c0de745c:	bf58      	it	pl
c0de745e:	4601      	movpl	r1, r0
c0de7460:	4812      	ldr	r0, [pc, #72]	@ (c0de74ac <getLastPageInfo+0xf4>)
c0de7462:	4478      	add	r0, pc
c0de7464:	e008      	b.n	c0de7478 <getLastPageInfo+0xc0>
c0de7466:	0640      	lsls	r0, r0, #25
c0de7468:	4811      	ldr	r0, [pc, #68]	@ (c0de74b0 <getLastPageInfo+0xf8>)
c0de746a:	4912      	ldr	r1, [pc, #72]	@ (c0de74b4 <getLastPageInfo+0xfc>)
c0de746c:	4478      	add	r0, pc
c0de746e:	4479      	add	r1, pc
c0de7470:	bf58      	it	pl
c0de7472:	4601      	movpl	r1, r0
c0de7474:	4810      	ldr	r0, [pc, #64]	@ (c0de74b8 <getLastPageInfo+0x100>)
c0de7476:	4478      	add	r0, pc
c0de7478:	6011      	str	r1, [r2, #0]
c0de747a:	4902      	ldr	r1, [pc, #8]	@ (c0de7484 <getLastPageInfo+0xcc>)
c0de747c:	4449      	add	r1, r9
c0de747e:	6348      	str	r0, [r1, #52]	@ 0x34
c0de7480:	4770      	bx	lr
c0de7482:	bf00      	nop
c0de7484:	0000172c 	.word	0x0000172c
c0de7488:	00003636 	.word	0x00003636
c0de748c:	000001a7 	.word	0x000001a7
c0de7490:	000039c3 	.word	0x000039c3
c0de7494:	00000179 	.word	0x00000179
c0de7498:	00003789 	.word	0x00003789
c0de749c:	00003830 	.word	0x00003830
c0de74a0:	0000013f 	.word	0x0000013f
c0de74a4:	00003745 	.word	0x00003745
c0de74a8:	00003783 	.word	0x00003783
c0de74ac:	00000117 	.word	0x00000117
c0de74b0:	000038c2 	.word	0x000038c2
c0de74b4:	0000382d 	.word	0x0000382d
c0de74b8:	00000103 	.word	0x00000103
c0de74bc:	0000359c 	.word	0x0000359c
c0de74c0:	0000019d 	.word	0x0000019d
c0de74c4:	0000382e 	.word	0x0000382e
c0de74c8:	0000014b 	.word	0x0000014b
c0de74cc:	00003786 	.word	0x00003786
c0de74d0:	00000177 	.word	0x00000177
c0de74d4:	00003928 	.word	0x00003928
c0de74d8:	00000141 	.word	0x00000141
c0de74dc:	00003901 	.word	0x00003901

c0de74e0 <warningNavigate>:
c0de74e0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de74e2:	2904      	cmp	r1, #4
c0de74e4:	d00a      	beq.n	c0de74fc <warningNavigate+0x1c>
c0de74e6:	2901      	cmp	r1, #1
c0de74e8:	d01c      	beq.n	c0de7524 <warningNavigate+0x44>
c0de74ea:	2900      	cmp	r1, #0
c0de74ec:	d13d      	bne.n	c0de756a <warningNavigate+0x8a>
c0de74ee:	4822      	ldr	r0, [pc, #136]	@ (c0de7578 <warningNavigate+0x98>)
c0de74f0:	4448      	add	r0, r9
c0de74f2:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de74f6:	b320      	cbz	r0, c0de7542 <warningNavigate+0x62>
c0de74f8:	3801      	subs	r0, #1
c0de74fa:	e01e      	b.n	c0de753a <warningNavigate+0x5a>
c0de74fc:	481e      	ldr	r0, [pc, #120]	@ (c0de7578 <warningNavigate+0x98>)
c0de74fe:	eb09 0100 	add.w	r1, r9, r0
c0de7502:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de7506:	b301      	cbz	r1, c0de754a <warningNavigate+0x6a>
c0de7508:	eb09 0200 	add.w	r2, r9, r0
c0de750c:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de7510:	3a01      	subs	r2, #1
c0de7512:	428a      	cmp	r2, r1
c0de7514:	d129      	bne.n	c0de756a <warningNavigate+0x8a>
c0de7516:	4448      	add	r0, r9
c0de7518:	6a01      	ldr	r1, [r0, #32]
c0de751a:	2000      	movs	r0, #0
c0de751c:	b004      	add	sp, #16
c0de751e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7522:	4708      	bx	r1
c0de7524:	4814      	ldr	r0, [pc, #80]	@ (c0de7578 <warningNavigate+0x98>)
c0de7526:	eb09 0100 	add.w	r1, r9, r0
c0de752a:	f891 0026 	ldrb.w	r0, [r1, #38]	@ 0x26
c0de752e:	f891 1027 	ldrb.w	r1, [r1, #39]	@ 0x27
c0de7532:	3901      	subs	r1, #1
c0de7534:	4281      	cmp	r1, r0
c0de7536:	dd04      	ble.n	c0de7542 <warningNavigate+0x62>
c0de7538:	3001      	adds	r0, #1
c0de753a:	490f      	ldr	r1, [pc, #60]	@ (c0de7578 <warningNavigate+0x98>)
c0de753c:	4449      	add	r1, r9
c0de753e:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de7542:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de7546:	f7ff bef7 	b.w	c0de7338 <displayWarningStep>
c0de754a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de754e:	2905      	cmp	r1, #5
c0de7550:	d00c      	beq.n	c0de756c <warningNavigate+0x8c>
c0de7552:	2902      	cmp	r1, #2
c0de7554:	d109      	bne.n	c0de756a <warningNavigate+0x8a>
c0de7556:	4448      	add	r0, r9
c0de7558:	1d06      	adds	r6, r0, #4
c0de755a:	6a00      	ldr	r0, [r0, #32]
c0de755c:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de755e:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de7562:	9003      	str	r0, [sp, #12]
c0de7564:	2002      	movs	r0, #2
c0de7566:	f7fe febb 	bl	c0de62e0 <useCaseReview>
c0de756a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de756c:	2000      	movs	r0, #0
c0de756e:	b004      	add	sp, #16
c0de7570:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7574:	f7ff b948 	b.w	c0de6808 <displayStreamingReviewPage>
c0de7578:	0000172c 	.word	0x0000172c

c0de757c <onReviewAccept>:
c0de757c:	4803      	ldr	r0, [pc, #12]	@ (c0de758c <onReviewAccept+0x10>)
c0de757e:	4448      	add	r0, r9
c0de7580:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de7582:	b109      	cbz	r1, c0de7588 <onReviewAccept+0xc>
c0de7584:	2001      	movs	r0, #1
c0de7586:	4708      	bx	r1
c0de7588:	4770      	bx	lr
c0de758a:	bf00      	nop
c0de758c:	0000172c 	.word	0x0000172c

c0de7590 <onReviewReject>:
c0de7590:	4803      	ldr	r0, [pc, #12]	@ (c0de75a0 <onReviewReject+0x10>)
c0de7592:	4448      	add	r0, r9
c0de7594:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de7596:	b109      	cbz	r1, c0de759c <onReviewReject+0xc>
c0de7598:	2000      	movs	r0, #0
c0de759a:	4708      	bx	r1
c0de759c:	4770      	bx	lr
c0de759e:	bf00      	nop
c0de75a0:	0000172c 	.word	0x0000172c

c0de75a4 <displayAliasFullValue>:
c0de75a4:	b570      	push	{r4, r5, r6, lr}
c0de75a6:	b088      	sub	sp, #32
c0de75a8:	4c17      	ldr	r4, [pc, #92]	@ (c0de7608 <displayAliasFullValue+0x64>)
c0de75aa:	f10d 0213 	add.w	r2, sp, #19
c0de75ae:	eb09 0504 	add.w	r5, r9, r4
c0de75b2:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de75b4:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de75b8:	ab05      	add	r3, sp, #20
c0de75ba:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de75be:	9202      	str	r2, [sp, #8]
c0de75c0:	e9cd 6300 	strd	r6, r3, [sp]
c0de75c4:	aa07      	add	r2, sp, #28
c0de75c6:	ab06      	add	r3, sp, #24
c0de75c8:	f7ff fc60 	bl	c0de6e8c <getPairData>
c0de75cc:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de75ce:	b170      	cbz	r0, c0de75ee <displayAliasFullValue+0x4a>
c0de75d0:	eb09 0104 	add.w	r1, r9, r4
c0de75d4:	2200      	movs	r2, #0
c0de75d6:	664a      	str	r2, [r1, #100]	@ 0x64
c0de75d8:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de75dc:	7d01      	ldrb	r1, [r0, #20]
c0de75de:	2901      	cmp	r1, #1
c0de75e0:	d007      	beq.n	c0de75f2 <displayAliasFullValue+0x4e>
c0de75e2:	2904      	cmp	r1, #4
c0de75e4:	d103      	bne.n	c0de75ee <displayAliasFullValue+0x4a>
c0de75e6:	6900      	ldr	r0, [r0, #16]
c0de75e8:	7b00      	ldrb	r0, [r0, #12]
c0de75ea:	3001      	adds	r0, #1
c0de75ec:	e002      	b.n	c0de75f4 <displayAliasFullValue+0x50>
c0de75ee:	b008      	add	sp, #32
c0de75f0:	bd70      	pop	{r4, r5, r6, pc}
c0de75f2:	2002      	movs	r0, #2
c0de75f4:	eb09 0104 	add.w	r1, r9, r4
c0de75f8:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de75fc:	2000      	movs	r0, #0
c0de75fe:	b008      	add	sp, #32
c0de7600:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7604:	f000 b810 	b.w	c0de7628 <displayExtensionStep>
c0de7608:	0000172c 	.word	0x0000172c

c0de760c <reviewCallback>:
c0de760c:	b5e0      	push	{r5, r6, r7, lr}
c0de760e:	4608      	mov	r0, r1
c0de7610:	f10d 0107 	add.w	r1, sp, #7
c0de7614:	f7ff fd14 	bl	c0de7040 <buttonGenericCallback>
c0de7618:	b128      	cbz	r0, c0de7626 <reviewCallback+0x1a>
c0de761a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de761e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7622:	f7fe bf29 	b.w	c0de6478 <displayReviewPage>
c0de7626:	bd8c      	pop	{r2, r3, r7, pc}

c0de7628 <displayExtensionStep>:
c0de7628:	b5b0      	push	{r4, r5, r7, lr}
c0de762a:	b088      	sub	sp, #32
c0de762c:	4d28      	ldr	r5, [pc, #160]	@ (c0de76d0 <displayExtensionStep+0xa8>)
c0de762e:	4604      	mov	r4, r0
c0de7630:	2000      	movs	r0, #0
c0de7632:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de7636:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de763a:	eb09 0005 	add.w	r0, r9, r5
c0de763e:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de7640:	b108      	cbz	r0, c0de7646 <displayExtensionStep+0x1e>
c0de7642:	f7fe fcd1 	bl	c0de5fe8 <nbgl_stepRelease>
c0de7646:	eb09 0005 	add.w	r0, r9, r5
c0de764a:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de764e:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de7652:	3801      	subs	r0, #1
c0de7654:	4288      	cmp	r0, r1
c0de7656:	dd0f      	ble.n	c0de7678 <displayExtensionStep+0x50>
c0de7658:	2003      	movs	r0, #3
c0de765a:	eb09 0205 	add.w	r2, r9, r5
c0de765e:	2900      	cmp	r1, #0
c0de7660:	bf08      	it	eq
c0de7662:	2001      	moveq	r0, #1
c0de7664:	6e12      	ldr	r2, [r2, #96]	@ 0x60
c0de7666:	4320      	orrs	r0, r4
c0de7668:	7d13      	ldrb	r3, [r2, #20]
c0de766a:	2b04      	cmp	r3, #4
c0de766c:	d018      	beq.n	c0de76a0 <displayExtensionStep+0x78>
c0de766e:	2b01      	cmp	r3, #1
c0de7670:	d129      	bne.n	c0de76c6 <displayExtensionStep+0x9e>
c0de7672:	6811      	ldr	r1, [r2, #0]
c0de7674:	6893      	ldr	r3, [r2, #8]
c0de7676:	e01a      	b.n	c0de76ae <displayExtensionStep+0x86>
c0de7678:	d125      	bne.n	c0de76c6 <displayExtensionStep+0x9e>
c0de767a:	2001      	movs	r0, #1
c0de767c:	2200      	movs	r2, #0
c0de767e:	f88d 001d 	strb.w	r0, [sp, #29]
c0de7682:	4915      	ldr	r1, [pc, #84]	@ (c0de76d8 <displayExtensionStep+0xb0>)
c0de7684:	4479      	add	r1, pc
c0de7686:	9104      	str	r1, [sp, #16]
c0de7688:	4914      	ldr	r1, [pc, #80]	@ (c0de76dc <displayExtensionStep+0xb4>)
c0de768a:	9000      	str	r0, [sp, #0]
c0de768c:	f044 0002 	orr.w	r0, r4, #2
c0de7690:	4479      	add	r1, pc
c0de7692:	9106      	str	r1, [sp, #24]
c0de7694:	4912      	ldr	r1, [pc, #72]	@ (c0de76e0 <displayExtensionStep+0xb8>)
c0de7696:	ab04      	add	r3, sp, #16
c0de7698:	4479      	add	r1, pc
c0de769a:	f7fe fb7f 	bl	c0de5d9c <nbgl_stepDrawCenteredInfo>
c0de769e:	e00f      	b.n	c0de76c0 <displayExtensionStep+0x98>
c0de76a0:	6912      	ldr	r2, [r2, #16]
c0de76a2:	e9d2 3200 	ldrd	r3, r2, [r2]
c0de76a6:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
c0de76aa:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de76ae:	2201      	movs	r2, #1
c0de76b0:	e9cd 1200 	strd	r1, r2, [sp]
c0de76b4:	9202      	str	r2, [sp, #8]
c0de76b6:	2200      	movs	r2, #0
c0de76b8:	4906      	ldr	r1, [pc, #24]	@ (c0de76d4 <displayExtensionStep+0xac>)
c0de76ba:	4479      	add	r1, pc
c0de76bc:	f7fe fa28 	bl	c0de5b10 <nbgl_stepDrawText>
c0de76c0:	eb09 0105 	add.w	r1, r9, r5
c0de76c4:	6648      	str	r0, [r1, #100]	@ 0x64
c0de76c6:	f7fc ffcb 	bl	c0de4660 <nbgl_refresh>
c0de76ca:	b008      	add	sp, #32
c0de76cc:	bdb0      	pop	{r4, r5, r7, pc}
c0de76ce:	bf00      	nop
c0de76d0:	0000172c 	.word	0x0000172c
c0de76d4:	00000027 	.word	0x00000027
c0de76d8:	00003669 	.word	0x00003669
c0de76dc:	000032a0 	.word	0x000032a0
c0de76e0:	00000049 	.word	0x00000049

c0de76e4 <extensionNavigate>:
c0de76e4:	b580      	push	{r7, lr}
c0de76e6:	2904      	cmp	r1, #4
c0de76e8:	d00a      	beq.n	c0de7700 <extensionNavigate+0x1c>
c0de76ea:	2901      	cmp	r1, #1
c0de76ec:	d01d      	beq.n	c0de772a <extensionNavigate+0x46>
c0de76ee:	b9d9      	cbnz	r1, c0de7728 <extensionNavigate+0x44>
c0de76f0:	481a      	ldr	r0, [pc, #104]	@ (c0de775c <extensionNavigate+0x78>)
c0de76f2:	4448      	add	r0, r9
c0de76f4:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de76f8:	b350      	cbz	r0, c0de7750 <extensionNavigate+0x6c>
c0de76fa:	1e41      	subs	r1, r0, #1
c0de76fc:	2008      	movs	r0, #8
c0de76fe:	e020      	b.n	c0de7742 <extensionNavigate+0x5e>
c0de7700:	4816      	ldr	r0, [pc, #88]	@ (c0de775c <extensionNavigate+0x78>)
c0de7702:	eb09 0100 	add.w	r1, r9, r0
c0de7706:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de770a:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de770e:	3901      	subs	r1, #1
c0de7710:	4291      	cmp	r1, r2
c0de7712:	d109      	bne.n	c0de7728 <extensionNavigate+0x44>
c0de7714:	4448      	add	r0, r9
c0de7716:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de7718:	f7fe fc66 	bl	c0de5fe8 <nbgl_stepRelease>
c0de771c:	f7fd ffc2 	bl	c0de56a4 <nbgl_screenRedraw>
c0de7720:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7724:	f7fc bf9c 	b.w	c0de4660 <nbgl_refresh>
c0de7728:	bd80      	pop	{r7, pc}
c0de772a:	480c      	ldr	r0, [pc, #48]	@ (c0de775c <extensionNavigate+0x78>)
c0de772c:	eb09 0100 	add.w	r1, r9, r0
c0de7730:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de7734:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de7738:	3901      	subs	r1, #1
c0de773a:	4281      	cmp	r1, r0
c0de773c:	dd06      	ble.n	c0de774c <extensionNavigate+0x68>
c0de773e:	1c41      	adds	r1, r0, #1
c0de7740:	2000      	movs	r0, #0
c0de7742:	4a06      	ldr	r2, [pc, #24]	@ (c0de775c <extensionNavigate+0x78>)
c0de7744:	444a      	add	r2, r9
c0de7746:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de774a:	e002      	b.n	c0de7752 <extensionNavigate+0x6e>
c0de774c:	2000      	movs	r0, #0
c0de774e:	e000      	b.n	c0de7752 <extensionNavigate+0x6e>
c0de7750:	2008      	movs	r0, #8
c0de7752:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7756:	f7ff bf67 	b.w	c0de7628 <displayExtensionStep>
c0de775a:	bf00      	nop
c0de775c:	0000172c 	.word	0x0000172c

c0de7760 <statusTickerCallback>:
c0de7760:	4802      	ldr	r0, [pc, #8]	@ (c0de776c <statusTickerCallback+0xc>)
c0de7762:	4448      	add	r0, r9
c0de7764:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7766:	b100      	cbz	r0, c0de776a <statusTickerCallback+0xa>
c0de7768:	4700      	bx	r0
c0de776a:	4770      	bx	lr
c0de776c:	0000172c 	.word	0x0000172c

c0de7770 <getChoiceName>:
c0de7770:	b5b0      	push	{r4, r5, r7, lr}
c0de7772:	b08e      	sub	sp, #56	@ 0x38
c0de7774:	466d      	mov	r5, sp
c0de7776:	f000 f904 	bl	c0de7982 <OUTLINED_FUNCTION_9>
c0de777a:	4814      	ldr	r0, [pc, #80]	@ (c0de77cc <getChoiceName+0x5c>)
c0de777c:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de7780:	462a      	mov	r2, r5
c0de7782:	4448      	add	r0, r9
c0de7784:	f000 f8e7 	bl	c0de7956 <OUTLINED_FUNCTION_4>
c0de7788:	b150      	cbz	r0, c0de77a0 <getChoiceName+0x30>
c0de778a:	7801      	ldrb	r1, [r0, #0]
c0de778c:	290a      	cmp	r1, #10
c0de778e:	d009      	beq.n	c0de77a4 <getChoiceName+0x34>
c0de7790:	2909      	cmp	r1, #9
c0de7792:	d105      	bne.n	c0de77a0 <getChoiceName+0x30>
c0de7794:	f000 f8e9 	bl	c0de796a <OUTLINED_FUNCTION_6>
c0de7798:	4605      	mov	r5, r0
c0de779a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de779e:	e006      	b.n	c0de77ae <getChoiceName+0x3e>
c0de77a0:	2000      	movs	r0, #0
c0de77a2:	e010      	b.n	c0de77c6 <getChoiceName+0x56>
c0de77a4:	f000 f8e1 	bl	c0de796a <OUTLINED_FUNCTION_6>
c0de77a8:	4605      	mov	r5, r0
c0de77aa:	f855 0b08 	ldr.w	r0, [r5], #8
c0de77ae:	f002 fbe1 	bl	c0de9f74 <pic>
c0de77b2:	7829      	ldrb	r1, [r5, #0]
c0de77b4:	42a1      	cmp	r1, r4
c0de77b6:	d904      	bls.n	c0de77c2 <getChoiceName+0x52>
c0de77b8:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de77bc:	f002 fbda 	bl	c0de9f74 <pic>
c0de77c0:	e001      	b.n	c0de77c6 <getChoiceName+0x56>
c0de77c2:	4803      	ldr	r0, [pc, #12]	@ (c0de77d0 <getChoiceName+0x60>)
c0de77c4:	4478      	add	r0, pc
c0de77c6:	b00e      	add	sp, #56	@ 0x38
c0de77c8:	bdb0      	pop	{r4, r5, r7, pc}
c0de77ca:	bf00      	nop
c0de77cc:	0000172c 	.word	0x0000172c
c0de77d0:	00003529 	.word	0x00003529

c0de77d4 <onChoiceSelected>:
c0de77d4:	b570      	push	{r4, r5, r6, lr}
c0de77d6:	b08e      	sub	sp, #56	@ 0x38
c0de77d8:	466d      	mov	r5, sp
c0de77da:	f000 f8d2 	bl	c0de7982 <OUTLINED_FUNCTION_9>
c0de77de:	4e17      	ldr	r6, [pc, #92]	@ (c0de783c <onChoiceSelected+0x68>)
c0de77e0:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de77e4:	462a      	mov	r2, r5
c0de77e6:	eb09 0006 	add.w	r0, r9, r6
c0de77ea:	f000 f8b4 	bl	c0de7956 <OUTLINED_FUNCTION_4>
c0de77ee:	b318      	cbz	r0, c0de7838 <onChoiceSelected+0x64>
c0de77f0:	7801      	ldrb	r1, [r0, #0]
c0de77f2:	290a      	cmp	r1, #10
c0de77f4:	d008      	beq.n	c0de7808 <onChoiceSelected+0x34>
c0de77f6:	2909      	cmp	r1, #9
c0de77f8:	d10f      	bne.n	c0de781a <onChoiceSelected+0x46>
c0de77fa:	f000 f8b6 	bl	c0de796a <OUTLINED_FUNCTION_6>
c0de77fe:	7941      	ldrb	r1, [r0, #5]
c0de7800:	42a1      	cmp	r1, r4
c0de7802:	d90a      	bls.n	c0de781a <onChoiceSelected+0x46>
c0de7804:	3007      	adds	r0, #7
c0de7806:	e006      	b.n	c0de7816 <onChoiceSelected+0x42>
c0de7808:	f000 f8af 	bl	c0de796a <OUTLINED_FUNCTION_6>
c0de780c:	7a01      	ldrb	r1, [r0, #8]
c0de780e:	42a1      	cmp	r1, r4
c0de7810:	d903      	bls.n	c0de781a <onChoiceSelected+0x46>
c0de7812:	6840      	ldr	r0, [r0, #4]
c0de7814:	4420      	add	r0, r4
c0de7816:	7800      	ldrb	r0, [r0, #0]
c0de7818:	e000      	b.n	c0de781c <onChoiceSelected+0x48>
c0de781a:	20ff      	movs	r0, #255	@ 0xff
c0de781c:	28ff      	cmp	r0, #255	@ 0xff
c0de781e:	d006      	beq.n	c0de782e <onChoiceSelected+0x5a>
c0de7820:	eb09 0106 	add.w	r1, r9, r6
c0de7824:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de7826:	b112      	cbz	r2, c0de782e <onChoiceSelected+0x5a>
c0de7828:	2100      	movs	r1, #0
c0de782a:	4790      	blx	r2
c0de782c:	e004      	b.n	c0de7838 <onChoiceSelected+0x64>
c0de782e:	eb09 0006 	add.w	r0, r9, r6
c0de7832:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de7834:	b100      	cbz	r0, c0de7838 <onChoiceSelected+0x64>
c0de7836:	4780      	blx	r0
c0de7838:	b00e      	add	sp, #56	@ 0x38
c0de783a:	bd70      	pop	{r4, r5, r6, pc}
c0de783c:	0000172c 	.word	0x0000172c

c0de7840 <buttonSkipCallback>:
c0de7840:	2904      	cmp	r1, #4
c0de7842:	d02b      	beq.n	c0de789c <buttonSkipCallback+0x5c>
c0de7844:	2901      	cmp	r1, #1
c0de7846:	d00e      	beq.n	c0de7866 <buttonSkipCallback+0x26>
c0de7848:	bb61      	cbnz	r1, c0de78a4 <buttonSkipCallback+0x64>
c0de784a:	4818      	ldr	r0, [pc, #96]	@ (c0de78ac <buttonSkipCallback+0x6c>)
c0de784c:	eb09 0100 	add.w	r1, r9, r0
c0de7850:	2008      	movs	r0, #8
c0de7852:	f891 205a 	ldrb.w	r2, [r1, #90]	@ 0x5a
c0de7856:	b9fa      	cbnz	r2, c0de7898 <buttonSkipCallback+0x58>
c0de7858:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de785c:	2901      	cmp	r1, #1
c0de785e:	db1b      	blt.n	c0de7898 <buttonSkipCallback+0x58>
c0de7860:	3901      	subs	r1, #1
c0de7862:	2008      	movs	r0, #8
c0de7864:	e014      	b.n	c0de7890 <buttonSkipCallback+0x50>
c0de7866:	4811      	ldr	r0, [pc, #68]	@ (c0de78ac <buttonSkipCallback+0x6c>)
c0de7868:	eb09 0100 	add.w	r1, r9, r0
c0de786c:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de7870:	2908      	cmp	r1, #8
c0de7872:	d118      	bne.n	c0de78a6 <buttonSkipCallback+0x66>
c0de7874:	eb09 0200 	add.w	r2, r9, r0
c0de7878:	2000      	movs	r0, #0
c0de787a:	f992 1031 	ldrsb.w	r1, [r2, #49]	@ 0x31
c0de787e:	2901      	cmp	r1, #1
c0de7880:	db0a      	blt.n	c0de7898 <buttonSkipCallback+0x58>
c0de7882:	f892 2030 	ldrb.w	r2, [r2, #48]	@ 0x30
c0de7886:	3a01      	subs	r2, #1
c0de7888:	428a      	cmp	r2, r1
c0de788a:	dd05      	ble.n	c0de7898 <buttonSkipCallback+0x58>
c0de788c:	3101      	adds	r1, #1
c0de788e:	2000      	movs	r0, #0
c0de7890:	4a06      	ldr	r2, [pc, #24]	@ (c0de78ac <buttonSkipCallback+0x6c>)
c0de7892:	444a      	add	r2, r9
c0de7894:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de7898:	f7fe bfb6 	b.w	c0de6808 <displayStreamingReviewPage>
c0de789c:	4803      	ldr	r0, [pc, #12]	@ (c0de78ac <buttonSkipCallback+0x6c>)
c0de789e:	4448      	add	r0, r9
c0de78a0:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de78a2:	4700      	bx	r0
c0de78a4:	4770      	bx	lr
c0de78a6:	2000      	movs	r0, #0
c0de78a8:	f7fe bfae 	b.w	c0de6808 <displayStreamingReviewPage>
c0de78ac:	0000172c 	.word	0x0000172c

c0de78b0 <streamingReviewCallback>:
c0de78b0:	b5e0      	push	{r5, r6, r7, lr}
c0de78b2:	4608      	mov	r0, r1
c0de78b4:	f10d 0107 	add.w	r1, sp, #7
c0de78b8:	f7ff fbc2 	bl	c0de7040 <buttonGenericCallback>
c0de78bc:	b150      	cbz	r0, c0de78d4 <streamingReviewCallback+0x24>
c0de78be:	4806      	ldr	r0, [pc, #24]	@ (c0de78d8 <streamingReviewCallback+0x28>)
c0de78c0:	eb09 0100 	add.w	r1, r9, r0
c0de78c4:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de78c8:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de78cc:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de78d0:	f7fe bf9a 	b.w	c0de6808 <displayStreamingReviewPage>
c0de78d4:	bd8c      	pop	{r2, r3, r7, pc}
c0de78d6:	bf00      	nop
c0de78d8:	0000172c 	.word	0x0000172c

c0de78dc <onChoiceAccept>:
c0de78dc:	4803      	ldr	r0, [pc, #12]	@ (c0de78ec <onChoiceAccept+0x10>)
c0de78de:	4448      	add	r0, r9
c0de78e0:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de78e2:	b109      	cbz	r1, c0de78e8 <onChoiceAccept+0xc>
c0de78e4:	2001      	movs	r0, #1
c0de78e6:	4708      	bx	r1
c0de78e8:	4770      	bx	lr
c0de78ea:	bf00      	nop
c0de78ec:	0000172c 	.word	0x0000172c

c0de78f0 <onChoiceReject>:
c0de78f0:	4803      	ldr	r0, [pc, #12]	@ (c0de7900 <onChoiceReject+0x10>)
c0de78f2:	4448      	add	r0, r9
c0de78f4:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de78f6:	b109      	cbz	r1, c0de78fc <onChoiceReject+0xc>
c0de78f8:	2000      	movs	r0, #0
c0de78fa:	4708      	bx	r1
c0de78fc:	4770      	bx	lr
c0de78fe:	bf00      	nop
c0de7900:	0000172c 	.word	0x0000172c

c0de7904 <genericChoiceCallback>:
c0de7904:	b5e0      	push	{r5, r6, r7, lr}
c0de7906:	4608      	mov	r0, r1
c0de7908:	f10d 0107 	add.w	r1, sp, #7
c0de790c:	f7ff fb98 	bl	c0de7040 <buttonGenericCallback>
c0de7910:	b128      	cbz	r0, c0de791e <genericChoiceCallback+0x1a>
c0de7912:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7916:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de791a:	f7ff b871 	b.w	c0de6a00 <displayChoicePage>
c0de791e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7920 <OUTLINED_FUNCTION_0>:
c0de7920:	460e      	mov	r6, r1
c0de7922:	2140      	movs	r1, #64	@ 0x40
c0de7924:	4698      	mov	r8, r3
c0de7926:	4615      	mov	r5, r2
c0de7928:	eb09 0400 	add.w	r4, r9, r0
c0de792c:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de7930:	f002 bf20 	b.w	c0dea774 <__aeabi_memclr>

c0de7934 <OUTLINED_FUNCTION_2>:
c0de7934:	2200      	movs	r2, #0
c0de7936:	eb09 0100 	add.w	r1, r9, r0
c0de793a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de793c:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de7940:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de7944:	3901      	subs	r1, #1
c0de7946:	4291      	cmp	r1, r2
c0de7948:	4770      	bx	lr

c0de794a <OUTLINED_FUNCTION_3>:
c0de794a:	eb09 0500 	add.w	r5, r9, r0
c0de794e:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de7952:	f002 bf0f 	b.w	c0dea774 <__aeabi_memclr>

c0de7956 <OUTLINED_FUNCTION_4>:
c0de7956:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de795a:	f7ff ba53 	b.w	c0de6e04 <getContentElemAtIdx>

c0de795e <OUTLINED_FUNCTION_5>:
c0de795e:	eb09 0600 	add.w	r6, r9, r0
c0de7962:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de7966:	f002 bf05 	b.w	c0dea774 <__aeabi_memclr>

c0de796a <OUTLINED_FUNCTION_6>:
c0de796a:	3004      	adds	r0, #4
c0de796c:	f002 bb02 	b.w	c0de9f74 <pic>

c0de7970 <OUTLINED_FUNCTION_7>:
c0de7970:	e9cd 6500 	strd	r6, r5, [sp]
c0de7974:	f7fe be2c 	b.w	c0de65d0 <drawStep>

c0de7978 <OUTLINED_FUNCTION_8>:
c0de7978:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de797c:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de7980:	4730      	bx	r6

c0de7982 <OUTLINED_FUNCTION_9>:
c0de7982:	4604      	mov	r4, r0
c0de7984:	2134      	movs	r1, #52	@ 0x34
c0de7986:	4628      	mov	r0, r5
c0de7988:	f002 bef4 	b.w	c0dea774 <__aeabi_memclr>

c0de798c <bip32_path_read>:
c0de798c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de7990:	b10b      	cbz	r3, c0de7996 <bip32_path_read+0xa>
c0de7992:	2b0a      	cmp	r3, #10
c0de7994:	d902      	bls.n	c0de799c <bip32_path_read+0x10>
c0de7996:	2000      	movs	r0, #0
c0de7998:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de799c:	4692      	mov	sl, r2
c0de799e:	460e      	mov	r6, r1
c0de79a0:	4683      	mov	fp, r0
c0de79a2:	425f      	negs	r7, r3
c0de79a4:	2500      	movs	r5, #0
c0de79a6:	f04f 0800 	mov.w	r8, #0
c0de79aa:	9301      	str	r3, [sp, #4]
c0de79ac:	42af      	cmp	r7, r5
c0de79ae:	d00c      	beq.n	c0de79ca <bip32_path_read+0x3e>
c0de79b0:	f108 0404 	add.w	r4, r8, #4
c0de79b4:	42b4      	cmp	r4, r6
c0de79b6:	d808      	bhi.n	c0de79ca <bip32_path_read+0x3e>
c0de79b8:	4658      	mov	r0, fp
c0de79ba:	4641      	mov	r1, r8
c0de79bc:	f000 fbcd 	bl	c0de815a <read_u32_be>
c0de79c0:	f84a 0008 	str.w	r0, [sl, r8]
c0de79c4:	3d01      	subs	r5, #1
c0de79c6:	46a0      	mov	r8, r4
c0de79c8:	e7f0      	b.n	c0de79ac <bip32_path_read+0x20>
c0de79ca:	9a01      	ldr	r2, [sp, #4]
c0de79cc:	4269      	negs	r1, r5
c0de79ce:	2000      	movs	r0, #0
c0de79d0:	4291      	cmp	r1, r2
c0de79d2:	bf28      	it	cs
c0de79d4:	2001      	movcs	r0, #1
c0de79d6:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de79da <buffer_seek_cur>:
c0de79da:	6882      	ldr	r2, [r0, #8]
c0de79dc:	1889      	adds	r1, r1, r2
c0de79de:	d205      	bcs.n	c0de79ec <buffer_seek_cur+0x12>
c0de79e0:	6842      	ldr	r2, [r0, #4]
c0de79e2:	4291      	cmp	r1, r2
c0de79e4:	bf9e      	ittt	ls
c0de79e6:	6081      	strls	r1, [r0, #8]
c0de79e8:	2001      	movls	r0, #1
c0de79ea:	4770      	bxls	lr
c0de79ec:	2000      	movs	r0, #0
c0de79ee:	4770      	bx	lr

c0de79f0 <buffer_read_u8>:
c0de79f0:	b510      	push	{r4, lr}
c0de79f2:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de79f6:	429a      	cmp	r2, r3
c0de79f8:	d00a      	beq.n	c0de7a10 <buffer_read_u8+0x20>
c0de79fa:	6804      	ldr	r4, [r0, #0]
c0de79fc:	5ce4      	ldrb	r4, [r4, r3]
c0de79fe:	700c      	strb	r4, [r1, #0]
c0de7a00:	6881      	ldr	r1, [r0, #8]
c0de7a02:	3101      	adds	r1, #1
c0de7a04:	d206      	bcs.n	c0de7a14 <buffer_read_u8+0x24>
c0de7a06:	6844      	ldr	r4, [r0, #4]
c0de7a08:	42a1      	cmp	r1, r4
c0de7a0a:	bf98      	it	ls
c0de7a0c:	6081      	strls	r1, [r0, #8]
c0de7a0e:	e001      	b.n	c0de7a14 <buffer_read_u8+0x24>
c0de7a10:	2000      	movs	r0, #0
c0de7a12:	7008      	strb	r0, [r1, #0]
c0de7a14:	1ad0      	subs	r0, r2, r3
c0de7a16:	bf18      	it	ne
c0de7a18:	2001      	movne	r0, #1
c0de7a1a:	bd10      	pop	{r4, pc}

c0de7a1c <buffer_read_u64>:
c0de7a1c:	b570      	push	{r4, r5, r6, lr}
c0de7a1e:	f000 f87d 	bl	c0de7b1c <OUTLINED_FUNCTION_0>
c0de7a22:	2e07      	cmp	r6, #7
c0de7a24:	d904      	bls.n	c0de7a30 <buffer_read_u64+0x14>
c0de7a26:	6820      	ldr	r0, [r4, #0]
c0de7a28:	b132      	cbz	r2, c0de7a38 <buffer_read_u64+0x1c>
c0de7a2a:	f000 fbcd 	bl	c0de81c8 <read_u64_le>
c0de7a2e:	e005      	b.n	c0de7a3c <buffer_read_u64+0x20>
c0de7a30:	2000      	movs	r0, #0
c0de7a32:	e9c5 0000 	strd	r0, r0, [r5]
c0de7a36:	e00c      	b.n	c0de7a52 <buffer_read_u64+0x36>
c0de7a38:	f000 fb9b 	bl	c0de8172 <read_u64_be>
c0de7a3c:	e9c5 0100 	strd	r0, r1, [r5]
c0de7a40:	68a0      	ldr	r0, [r4, #8]
c0de7a42:	f110 0f09 	cmn.w	r0, #9
c0de7a46:	d804      	bhi.n	c0de7a52 <buffer_read_u64+0x36>
c0de7a48:	6861      	ldr	r1, [r4, #4]
c0de7a4a:	3008      	adds	r0, #8
c0de7a4c:	4288      	cmp	r0, r1
c0de7a4e:	bf98      	it	ls
c0de7a50:	60a0      	strls	r0, [r4, #8]
c0de7a52:	2000      	movs	r0, #0
c0de7a54:	2e07      	cmp	r6, #7
c0de7a56:	bf88      	it	hi
c0de7a58:	2001      	movhi	r0, #1
c0de7a5a:	bd70      	pop	{r4, r5, r6, pc}

c0de7a5c <buffer_read_varint>:
c0de7a5c:	b5b0      	push	{r4, r5, r7, lr}
c0de7a5e:	4604      	mov	r4, r0
c0de7a60:	460d      	mov	r5, r1
c0de7a62:	6800      	ldr	r0, [r0, #0]
c0de7a64:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de7a68:	4410      	add	r0, r2
c0de7a6a:	1a89      	subs	r1, r1, r2
c0de7a6c:	462a      	mov	r2, r5
c0de7a6e:	f000 fc15 	bl	c0de829c <varint_read>
c0de7a72:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de7a76:	dd0a      	ble.n	c0de7a8e <buffer_read_varint+0x32>
c0de7a78:	68a1      	ldr	r1, [r4, #8]
c0de7a7a:	1840      	adds	r0, r0, r1
c0de7a7c:	d205      	bcs.n	c0de7a8a <buffer_read_varint+0x2e>
c0de7a7e:	6861      	ldr	r1, [r4, #4]
c0de7a80:	4288      	cmp	r0, r1
c0de7a82:	bf9e      	ittt	ls
c0de7a84:	60a0      	strls	r0, [r4, #8]
c0de7a86:	2001      	movls	r0, #1
c0de7a88:	bdb0      	popls	{r4, r5, r7, pc}
c0de7a8a:	2000      	movs	r0, #0
c0de7a8c:	bdb0      	pop	{r4, r5, r7, pc}
c0de7a8e:	2000      	movs	r0, #0
c0de7a90:	e9c5 0000 	strd	r0, r0, [r5]
c0de7a94:	bdb0      	pop	{r4, r5, r7, pc}

c0de7a96 <buffer_read_bip32_path>:
c0de7a96:	b5b0      	push	{r4, r5, r7, lr}
c0de7a98:	4604      	mov	r4, r0
c0de7a9a:	4615      	mov	r5, r2
c0de7a9c:	460a      	mov	r2, r1
c0de7a9e:	6800      	ldr	r0, [r0, #0]
c0de7aa0:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de7aa4:	4418      	add	r0, r3
c0de7aa6:	1ac9      	subs	r1, r1, r3
c0de7aa8:	462b      	mov	r3, r5
c0de7aaa:	f7ff ff6f 	bl	c0de798c <bip32_path_read>
c0de7aae:	b140      	cbz	r0, c0de7ac2 <buffer_read_bip32_path+0x2c>
c0de7ab0:	68a2      	ldr	r2, [r4, #8]
c0de7ab2:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de7ab6:	4291      	cmp	r1, r2
c0de7ab8:	d303      	bcc.n	c0de7ac2 <buffer_read_bip32_path+0x2c>
c0de7aba:	6862      	ldr	r2, [r4, #4]
c0de7abc:	4291      	cmp	r1, r2
c0de7abe:	bf98      	it	ls
c0de7ac0:	60a1      	strls	r1, [r4, #8]
c0de7ac2:	bdb0      	pop	{r4, r5, r7, pc}

c0de7ac4 <buffer_copy>:
c0de7ac4:	b5b0      	push	{r4, r5, r7, lr}
c0de7ac6:	4614      	mov	r4, r2
c0de7ac8:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de7acc:	1a9d      	subs	r5, r3, r2
c0de7ace:	42a5      	cmp	r5, r4
c0de7ad0:	d806      	bhi.n	c0de7ae0 <buffer_copy+0x1c>
c0de7ad2:	6800      	ldr	r0, [r0, #0]
c0de7ad4:	4402      	add	r2, r0
c0de7ad6:	4608      	mov	r0, r1
c0de7ad8:	4611      	mov	r1, r2
c0de7ada:	462a      	mov	r2, r5
c0de7adc:	f002 fe4f 	bl	c0dea77e <__aeabi_memmove>
c0de7ae0:	2000      	movs	r0, #0
c0de7ae2:	42a5      	cmp	r5, r4
c0de7ae4:	bf98      	it	ls
c0de7ae6:	2001      	movls	r0, #1
c0de7ae8:	bdb0      	pop	{r4, r5, r7, pc}

c0de7aea <buffer_move>:
c0de7aea:	b5b0      	push	{r4, r5, r7, lr}
c0de7aec:	4615      	mov	r5, r2
c0de7aee:	4604      	mov	r4, r0
c0de7af0:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de7af4:	1a12      	subs	r2, r2, r0
c0de7af6:	42aa      	cmp	r2, r5
c0de7af8:	bf84      	itt	hi
c0de7afa:	2000      	movhi	r0, #0
c0de7afc:	bdb0      	pophi	{r4, r5, r7, pc}
c0de7afe:	6823      	ldr	r3, [r4, #0]
c0de7b00:	4403      	add	r3, r0
c0de7b02:	4608      	mov	r0, r1
c0de7b04:	4619      	mov	r1, r3
c0de7b06:	f002 fe3a 	bl	c0dea77e <__aeabi_memmove>
c0de7b0a:	68a0      	ldr	r0, [r4, #8]
c0de7b0c:	1940      	adds	r0, r0, r5
c0de7b0e:	d203      	bcs.n	c0de7b18 <buffer_move+0x2e>
c0de7b10:	6861      	ldr	r1, [r4, #4]
c0de7b12:	4288      	cmp	r0, r1
c0de7b14:	bf98      	it	ls
c0de7b16:	60a0      	strls	r0, [r4, #8]
c0de7b18:	2001      	movs	r0, #1
c0de7b1a:	bdb0      	pop	{r4, r5, r7, pc}

c0de7b1c <OUTLINED_FUNCTION_0>:
c0de7b1c:	4604      	mov	r4, r0
c0de7b1e:	460d      	mov	r5, r1
c0de7b20:	6840      	ldr	r0, [r0, #4]
c0de7b22:	68a1      	ldr	r1, [r4, #8]
c0de7b24:	1a46      	subs	r6, r0, r1
c0de7b26:	4770      	bx	lr

c0de7b28 <bip32_derive_with_seed_init_privkey_256>:
c0de7b28:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de7b2c:	b095      	sub	sp, #84	@ 0x54
c0de7b2e:	460d      	mov	r5, r1
c0de7b30:	4607      	mov	r7, r0
c0de7b32:	a904      	add	r1, sp, #16
c0de7b34:	469a      	mov	sl, r3
c0de7b36:	4614      	mov	r4, r2
c0de7b38:	4628      	mov	r0, r5
c0de7b3a:	f002 fbcf 	bl	c0dea2dc <cx_ecdomain_parameters_length>
c0de7b3e:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de7b42:	4606      	mov	r6, r0
c0de7b44:	b9e0      	cbnz	r0, c0de7b80 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de7b46:	9804      	ldr	r0, [sp, #16]
c0de7b48:	2820      	cmp	r0, #32
c0de7b4a:	d117      	bne.n	c0de7b7c <bip32_derive_with_seed_init_privkey_256+0x54>
c0de7b4c:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de7b4e:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de7b52:	ab05      	add	r3, sp, #20
c0de7b54:	e9cd 3200 	strd	r3, r2, [sp]
c0de7b58:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de7b5c:	4638      	mov	r0, r7
c0de7b5e:	4629      	mov	r1, r5
c0de7b60:	4622      	mov	r2, r4
c0de7b62:	4653      	mov	r3, sl
c0de7b64:	f000 f818 	bl	c0de7b98 <os_derive_bip32_with_seed_no_throw>
c0de7b68:	4606      	mov	r6, r0
c0de7b6a:	b948      	cbnz	r0, c0de7b80 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de7b6c:	9a04      	ldr	r2, [sp, #16]
c0de7b6e:	a905      	add	r1, sp, #20
c0de7b70:	4628      	mov	r0, r5
c0de7b72:	4643      	mov	r3, r8
c0de7b74:	f001 fb9e 	bl	c0de92b4 <cx_ecfp_init_private_key_no_throw>
c0de7b78:	4606      	mov	r6, r0
c0de7b7a:	e001      	b.n	c0de7b80 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de7b7c:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de7b80:	a805      	add	r0, sp, #20
c0de7b82:	2140      	movs	r1, #64	@ 0x40
c0de7b84:	f002 fe02 	bl	c0dea78c <explicit_bzero>
c0de7b88:	b116      	cbz	r6, c0de7b90 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de7b8a:	4640      	mov	r0, r8
c0de7b8c:	f000 f89f 	bl	c0de7cce <OUTLINED_FUNCTION_0>
c0de7b90:	4630      	mov	r0, r6
c0de7b92:	b015      	add	sp, #84	@ 0x54
c0de7b94:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de7b98 <os_derive_bip32_with_seed_no_throw>:
c0de7b98:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7b9c:	b090      	sub	sp, #64	@ 0x40
c0de7b9e:	f10d 0810 	add.w	r8, sp, #16
c0de7ba2:	4607      	mov	r7, r0
c0de7ba4:	469b      	mov	fp, r3
c0de7ba6:	4616      	mov	r6, r2
c0de7ba8:	460c      	mov	r4, r1
c0de7baa:	4640      	mov	r0, r8
c0de7bac:	f002 fe24 	bl	c0dea7f8 <setjmp>
c0de7bb0:	b285      	uxth	r5, r0
c0de7bb2:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de7bb6:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de7bba:	b155      	cbz	r5, c0de7bd2 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de7bbc:	2000      	movs	r0, #0
c0de7bbe:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de7bc2:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de7bc4:	f002 fc20 	bl	c0dea408 <try_context_set>
c0de7bc8:	2140      	movs	r1, #64	@ 0x40
c0de7bca:	4650      	mov	r0, sl
c0de7bcc:	f002 fdde 	bl	c0dea78c <explicit_bzero>
c0de7bd0:	e012      	b.n	c0de7bf8 <os_derive_bip32_with_seed_no_throw+0x60>
c0de7bd2:	a804      	add	r0, sp, #16
c0de7bd4:	f002 fc18 	bl	c0dea408 <try_context_set>
c0de7bd8:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de7bda:	900e      	str	r0, [sp, #56]	@ 0x38
c0de7bdc:	4668      	mov	r0, sp
c0de7bde:	4632      	mov	r2, r6
c0de7be0:	465b      	mov	r3, fp
c0de7be2:	f8c0 a000 	str.w	sl, [r0]
c0de7be6:	6041      	str	r1, [r0, #4]
c0de7be8:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de7bea:	6081      	str	r1, [r0, #8]
c0de7bec:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de7bee:	60c1      	str	r1, [r0, #12]
c0de7bf0:	4638      	mov	r0, r7
c0de7bf2:	4621      	mov	r1, r4
c0de7bf4:	f002 fb7c 	bl	c0dea2f0 <os_perso_derive_node_with_seed_key>
c0de7bf8:	f002 fbfe 	bl	c0dea3f8 <try_context_get>
c0de7bfc:	4540      	cmp	r0, r8
c0de7bfe:	d102      	bne.n	c0de7c06 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de7c00:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de7c02:	f002 fc01 	bl	c0dea408 <try_context_set>
c0de7c06:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de7c0a:	b918      	cbnz	r0, c0de7c14 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de7c0c:	4628      	mov	r0, r5
c0de7c0e:	b010      	add	sp, #64	@ 0x40
c0de7c10:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7c14:	f001 fb76 	bl	c0de9304 <os_longjmp>

c0de7c18 <bip32_derive_with_seed_get_pubkey_256>:
c0de7c18:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7c1a:	b0a1      	sub	sp, #132	@ 0x84
c0de7c1c:	460e      	mov	r6, r1
c0de7c1e:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de7c20:	9103      	str	r1, [sp, #12]
c0de7c22:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de7c24:	9102      	str	r1, [sp, #8]
c0de7c26:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de7c28:	9101      	str	r1, [sp, #4]
c0de7c2a:	a917      	add	r1, sp, #92	@ 0x5c
c0de7c2c:	9100      	str	r1, [sp, #0]
c0de7c2e:	4631      	mov	r1, r6
c0de7c30:	f7ff ff7a 	bl	c0de7b28 <bip32_derive_with_seed_init_privkey_256>
c0de7c34:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de7c36:	4605      	mov	r5, r0
c0de7c38:	b9b8      	cbnz	r0, c0de7c6a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de7c3a:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de7c3c:	2301      	movs	r3, #1
c0de7c3e:	9000      	str	r0, [sp, #0]
c0de7c40:	af04      	add	r7, sp, #16
c0de7c42:	aa17      	add	r2, sp, #92	@ 0x5c
c0de7c44:	4630      	mov	r0, r6
c0de7c46:	4639      	mov	r1, r7
c0de7c48:	f001 fb2f 	bl	c0de92aa <cx_ecfp_generate_pair2_no_throw>
c0de7c4c:	4605      	mov	r5, r0
c0de7c4e:	b960      	cbnz	r0, c0de7c6a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de7c50:	9805      	ldr	r0, [sp, #20]
c0de7c52:	2841      	cmp	r0, #65	@ 0x41
c0de7c54:	d107      	bne.n	c0de7c66 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de7c56:	f107 0108 	add.w	r1, r7, #8
c0de7c5a:	4620      	mov	r0, r4
c0de7c5c:	2241      	movs	r2, #65	@ 0x41
c0de7c5e:	f002 fd8c 	bl	c0dea77a <__aeabi_memcpy>
c0de7c62:	2500      	movs	r5, #0
c0de7c64:	e001      	b.n	c0de7c6a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de7c66:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de7c6a:	a817      	add	r0, sp, #92	@ 0x5c
c0de7c6c:	f000 f82f 	bl	c0de7cce <OUTLINED_FUNCTION_0>
c0de7c70:	b11d      	cbz	r5, c0de7c7a <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de7c72:	4620      	mov	r0, r4
c0de7c74:	2141      	movs	r1, #65	@ 0x41
c0de7c76:	f002 fd89 	bl	c0dea78c <explicit_bzero>
c0de7c7a:	4628      	mov	r0, r5
c0de7c7c:	b021      	add	sp, #132	@ 0x84
c0de7c7e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de7c80 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de7c80:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7c82:	b08f      	sub	sp, #60	@ 0x3c
c0de7c84:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de7c86:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de7c88:	683c      	ldr	r4, [r7, #0]
c0de7c8a:	9503      	str	r5, [sp, #12]
c0de7c8c:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de7c8e:	9502      	str	r5, [sp, #8]
c0de7c90:	2500      	movs	r5, #0
c0de7c92:	9501      	str	r5, [sp, #4]
c0de7c94:	ad05      	add	r5, sp, #20
c0de7c96:	9500      	str	r5, [sp, #0]
c0de7c98:	f7ff ff46 	bl	c0de7b28 <bip32_derive_with_seed_init_privkey_256>
c0de7c9c:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de7c9e:	4606      	mov	r6, r0
c0de7ca0:	b950      	cbnz	r0, c0de7cb8 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de7ca2:	ae14      	add	r6, sp, #80	@ 0x50
c0de7ca4:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de7ca6:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de7ca8:	e9cd 6500 	strd	r6, r5, [sp]
c0de7cac:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de7cb0:	a805      	add	r0, sp, #20
c0de7cb2:	f001 faf5 	bl	c0de92a0 <cx_ecdsa_sign_no_throw>
c0de7cb6:	4606      	mov	r6, r0
c0de7cb8:	a805      	add	r0, sp, #20
c0de7cba:	f000 f808 	bl	c0de7cce <OUTLINED_FUNCTION_0>
c0de7cbe:	b11e      	cbz	r6, c0de7cc8 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de7cc0:	4628      	mov	r0, r5
c0de7cc2:	4621      	mov	r1, r4
c0de7cc4:	f002 fd62 	bl	c0dea78c <explicit_bzero>
c0de7cc8:	4630      	mov	r0, r6
c0de7cca:	b00f      	add	sp, #60	@ 0x3c
c0de7ccc:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de7cce <OUTLINED_FUNCTION_0>:
c0de7cce:	2128      	movs	r1, #40	@ 0x28
c0de7cd0:	f002 bd5c 	b.w	c0dea78c <explicit_bzero>

c0de7cd4 <format_u64>:
c0de7cd4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7cd8:	b1f9      	cbz	r1, c0de7d1a <format_u64+0x46>
c0de7cda:	4615      	mov	r5, r2
c0de7cdc:	4604      	mov	r4, r0
c0de7cde:	f1a1 0801 	sub.w	r8, r1, #1
c0de7ce2:	2700      	movs	r7, #0
c0de7ce4:	2600      	movs	r6, #0
c0de7ce6:	f1b5 000a 	subs.w	r0, r5, #10
c0de7cea:	f173 0000 	sbcs.w	r0, r3, #0
c0de7cee:	d316      	bcc.n	c0de7d1e <format_u64+0x4a>
c0de7cf0:	4619      	mov	r1, r3
c0de7cf2:	4628      	mov	r0, r5
c0de7cf4:	220a      	movs	r2, #10
c0de7cf6:	2300      	movs	r3, #0
c0de7cf8:	f002 fbb0 	bl	c0dea45c <__aeabi_uldivmod>
c0de7cfc:	460b      	mov	r3, r1
c0de7cfe:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de7d02:	1cba      	adds	r2, r7, #2
c0de7d04:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de7d08:	4605      	mov	r5, r0
c0de7d0a:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de7d0e:	55e1      	strb	r1, [r4, r7]
c0de7d10:	1c79      	adds	r1, r7, #1
c0de7d12:	4542      	cmp	r2, r8
c0de7d14:	460f      	mov	r7, r1
c0de7d16:	d9e6      	bls.n	c0de7ce6 <format_u64+0x12>
c0de7d18:	e012      	b.n	c0de7d40 <format_u64+0x6c>
c0de7d1a:	2600      	movs	r6, #0
c0de7d1c:	e010      	b.n	c0de7d40 <format_u64+0x6c>
c0de7d1e:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de7d22:	19e1      	adds	r1, r4, r7
c0de7d24:	55e0      	strb	r0, [r4, r7]
c0de7d26:	2000      	movs	r0, #0
c0de7d28:	7048      	strb	r0, [r1, #1]
c0de7d2a:	b2c1      	uxtb	r1, r0
c0de7d2c:	428f      	cmp	r7, r1
c0de7d2e:	d906      	bls.n	c0de7d3e <format_u64+0x6a>
c0de7d30:	5c62      	ldrb	r2, [r4, r1]
c0de7d32:	5de3      	ldrb	r3, [r4, r7]
c0de7d34:	3001      	adds	r0, #1
c0de7d36:	5463      	strb	r3, [r4, r1]
c0de7d38:	55e2      	strb	r2, [r4, r7]
c0de7d3a:	3f01      	subs	r7, #1
c0de7d3c:	e7f5      	b.n	c0de7d2a <format_u64+0x56>
c0de7d3e:	2601      	movs	r6, #1
c0de7d40:	4630      	mov	r0, r6
c0de7d42:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de7d46 <format_fpu64>:
c0de7d46:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7d4a:	b086      	sub	sp, #24
c0de7d4c:	466c      	mov	r4, sp
c0de7d4e:	4688      	mov	r8, r1
c0de7d50:	4605      	mov	r5, r0
c0de7d52:	2115      	movs	r1, #21
c0de7d54:	461e      	mov	r6, r3
c0de7d56:	4617      	mov	r7, r2
c0de7d58:	4620      	mov	r0, r4
c0de7d5a:	f002 fd0b 	bl	c0dea774 <__aeabi_memclr>
c0de7d5e:	4620      	mov	r0, r4
c0de7d60:	2115      	movs	r1, #21
c0de7d62:	463a      	mov	r2, r7
c0de7d64:	4633      	mov	r3, r6
c0de7d66:	f7ff ffb5 	bl	c0de7cd4 <format_u64>
c0de7d6a:	b340      	cbz	r0, c0de7dbe <format_fpu64+0x78>
c0de7d6c:	466f      	mov	r7, sp
c0de7d6e:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de7d70:	4638      	mov	r0, r7
c0de7d72:	f002 fd59 	bl	c0dea828 <strlen>
c0de7d76:	42b0      	cmp	r0, r6
c0de7d78:	d910      	bls.n	c0de7d9c <format_fpu64+0x56>
c0de7d7a:	1831      	adds	r1, r6, r0
c0de7d7c:	3101      	adds	r1, #1
c0de7d7e:	4541      	cmp	r1, r8
c0de7d80:	d21d      	bcs.n	c0de7dbe <format_fpu64+0x78>
c0de7d82:	1b84      	subs	r4, r0, r6
c0de7d84:	4628      	mov	r0, r5
c0de7d86:	4639      	mov	r1, r7
c0de7d88:	4622      	mov	r2, r4
c0de7d8a:	f002 fcf6 	bl	c0dea77a <__aeabi_memcpy>
c0de7d8e:	1928      	adds	r0, r5, r4
c0de7d90:	212e      	movs	r1, #46	@ 0x2e
c0de7d92:	4632      	mov	r2, r6
c0de7d94:	f800 1b01 	strb.w	r1, [r0], #1
c0de7d98:	1939      	adds	r1, r7, r4
c0de7d9a:	e015      	b.n	c0de7dc8 <format_fpu64+0x82>
c0de7d9c:	1a32      	subs	r2, r6, r0
c0de7d9e:	1c91      	adds	r1, r2, #2
c0de7da0:	4541      	cmp	r1, r8
c0de7da2:	d20c      	bcs.n	c0de7dbe <format_fpu64+0x78>
c0de7da4:	202e      	movs	r0, #46	@ 0x2e
c0de7da6:	2330      	movs	r3, #48	@ 0x30
c0de7da8:	2400      	movs	r4, #0
c0de7daa:	7068      	strb	r0, [r5, #1]
c0de7dac:	1ca8      	adds	r0, r5, #2
c0de7dae:	702b      	strb	r3, [r5, #0]
c0de7db0:	b2a5      	uxth	r5, r4
c0de7db2:	42aa      	cmp	r2, r5
c0de7db4:	d905      	bls.n	c0de7dc2 <format_fpu64+0x7c>
c0de7db6:	f800 3b01 	strb.w	r3, [r0], #1
c0de7dba:	3401      	adds	r4, #1
c0de7dbc:	e7f8      	b.n	c0de7db0 <format_fpu64+0x6a>
c0de7dbe:	2000      	movs	r0, #0
c0de7dc0:	e005      	b.n	c0de7dce <format_fpu64+0x88>
c0de7dc2:	eba8 0201 	sub.w	r2, r8, r1
c0de7dc6:	4669      	mov	r1, sp
c0de7dc8:	f002 fd4a 	bl	c0dea860 <strncpy>
c0de7dcc:	2001      	movs	r0, #1
c0de7dce:	b006      	add	sp, #24
c0de7dd0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de7dd4 <format_hex>:
c0de7dd4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7dd6:	4604      	mov	r4, r0
c0de7dd8:	0048      	lsls	r0, r1, #1
c0de7dda:	f100 0c01 	add.w	ip, r0, #1
c0de7dde:	459c      	cmp	ip, r3
c0de7de0:	d902      	bls.n	c0de7de8 <format_hex+0x14>
c0de7de2:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de7de6:	e018      	b.n	c0de7e1a <format_hex+0x46>
c0de7de8:	480d      	ldr	r0, [pc, #52]	@ (c0de7e20 <format_hex+0x4c>)
c0de7dea:	2500      	movs	r5, #0
c0de7dec:	4478      	add	r0, pc
c0de7dee:	b191      	cbz	r1, c0de7e16 <format_hex+0x42>
c0de7df0:	1cef      	adds	r7, r5, #3
c0de7df2:	429f      	cmp	r7, r3
c0de7df4:	d80d      	bhi.n	c0de7e12 <format_hex+0x3e>
c0de7df6:	7827      	ldrb	r7, [r4, #0]
c0de7df8:	3901      	subs	r1, #1
c0de7dfa:	093f      	lsrs	r7, r7, #4
c0de7dfc:	5dc7      	ldrb	r7, [r0, r7]
c0de7dfe:	5557      	strb	r7, [r2, r5]
c0de7e00:	1957      	adds	r7, r2, r5
c0de7e02:	3502      	adds	r5, #2
c0de7e04:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de7e08:	f006 060f 	and.w	r6, r6, #15
c0de7e0c:	5d86      	ldrb	r6, [r0, r6]
c0de7e0e:	707e      	strb	r6, [r7, #1]
c0de7e10:	e7ed      	b.n	c0de7dee <format_hex+0x1a>
c0de7e12:	f105 0c01 	add.w	ip, r5, #1
c0de7e16:	2000      	movs	r0, #0
c0de7e18:	5550      	strb	r0, [r2, r5]
c0de7e1a:	4660      	mov	r0, ip
c0de7e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7e1e:	bf00      	nop
c0de7e20:	00002edf 	.word	0x00002edf

c0de7e24 <app_ticker_event_callback>:
c0de7e24:	4770      	bx	lr
	...

c0de7e28 <io_event>:
c0de7e28:	b580      	push	{r7, lr}
c0de7e2a:	4815      	ldr	r0, [pc, #84]	@ (c0de7e80 <io_event+0x58>)
c0de7e2c:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7e30:	2915      	cmp	r1, #21
c0de7e32:	d010      	beq.n	c0de7e56 <io_event+0x2e>
c0de7e34:	290c      	cmp	r1, #12
c0de7e36:	d019      	beq.n	c0de7e6c <io_event+0x44>
c0de7e38:	290d      	cmp	r1, #13
c0de7e3a:	d015      	beq.n	c0de7e68 <io_event+0x40>
c0de7e3c:	290e      	cmp	r1, #14
c0de7e3e:	d005      	beq.n	c0de7e4c <io_event+0x24>
c0de7e40:	2905      	cmp	r1, #5
c0de7e42:	d111      	bne.n	c0de7e68 <io_event+0x40>
c0de7e44:	4448      	add	r0, r9
c0de7e46:	f001 f98b 	bl	c0de9160 <ux_process_button_event>
c0de7e4a:	e00f      	b.n	c0de7e6c <io_event+0x44>
c0de7e4c:	f7ff ffea 	bl	c0de7e24 <app_ticker_event_callback>
c0de7e50:	f001 f9ca 	bl	c0de91e8 <ux_process_ticker_event>
c0de7e54:	e00a      	b.n	c0de7e6c <io_event+0x44>
c0de7e56:	490b      	ldr	r1, [pc, #44]	@ (c0de7e84 <io_event+0x5c>)
c0de7e58:	4449      	add	r1, r9
c0de7e5a:	7989      	ldrb	r1, [r1, #6]
c0de7e5c:	2901      	cmp	r1, #1
c0de7e5e:	d103      	bne.n	c0de7e68 <io_event+0x40>
c0de7e60:	4448      	add	r0, r9
c0de7e62:	7980      	ldrb	r0, [r0, #6]
c0de7e64:	0700      	lsls	r0, r0, #28
c0de7e66:	d508      	bpl.n	c0de7e7a <io_event+0x52>
c0de7e68:	f001 f9d6 	bl	c0de9218 <ux_process_default_event>
c0de7e6c:	f002 fab0 	bl	c0dea3d0 <io_seph_is_status_sent>
c0de7e70:	b908      	cbnz	r0, c0de7e76 <io_event+0x4e>
c0de7e72:	f001 fa59 	bl	c0de9328 <io_seproxyhal_general_status>
c0de7e76:	2001      	movs	r0, #1
c0de7e78:	bd80      	pop	{r7, pc}
c0de7e7a:	2005      	movs	r0, #5
c0de7e7c:	f001 fa42 	bl	c0de9304 <os_longjmp>
c0de7e80:	00001794 	.word	0x00001794
c0de7e84:	00001ac0 	.word	0x00001ac0

c0de7e88 <io_exchange_al>:
c0de7e88:	b510      	push	{r4, lr}
c0de7e8a:	4604      	mov	r4, r0
c0de7e8c:	f000 0003 	and.w	r0, r0, #3
c0de7e90:	2801      	cmp	r0, #1
c0de7e92:	d00a      	beq.n	c0de7eaa <io_exchange_al+0x22>
c0de7e94:	2802      	cmp	r0, #2
c0de7e96:	d111      	bne.n	c0de7ebc <io_exchange_al+0x34>
c0de7e98:	480a      	ldr	r0, [pc, #40]	@ (c0de7ec4 <io_exchange_al+0x3c>)
c0de7e9a:	4448      	add	r0, r9
c0de7e9c:	b139      	cbz	r1, c0de7eae <io_exchange_al+0x26>
c0de7e9e:	f002 fa8d 	bl	c0dea3bc <io_seph_send>
c0de7ea2:	0620      	lsls	r0, r4, #24
c0de7ea4:	bf48      	it	mi
c0de7ea6:	f002 f88d 	blmi	c0de9fc4 <halt>
c0de7eaa:	2000      	movs	r0, #0
c0de7eac:	bd10      	pop	{r4, pc}
c0de7eae:	f44f 7182 	mov.w	r1, #260	@ 0x104
c0de7eb2:	2200      	movs	r2, #0
c0de7eb4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7eb8:	f002 ba92 	b.w	c0dea3e0 <io_seph_recv>
c0de7ebc:	2002      	movs	r0, #2
c0de7ebe:	f001 fa21 	bl	c0de9304 <os_longjmp>
c0de7ec2:	bf00      	nop
c0de7ec4:	000019bc 	.word	0x000019bc

c0de7ec8 <io_init>:
c0de7ec8:	4803      	ldr	r0, [pc, #12]	@ (c0de7ed8 <io_init+0x10>)
c0de7eca:	2100      	movs	r1, #0
c0de7ecc:	f809 1000 	strb.w	r1, [r9, r0]
c0de7ed0:	4448      	add	r0, r9
c0de7ed2:	6041      	str	r1, [r0, #4]
c0de7ed4:	4770      	bx	lr
c0de7ed6:	bf00      	nop
c0de7ed8:	000018c0 	.word	0x000018c0

c0de7edc <io_recv_command>:
c0de7edc:	b510      	push	{r4, lr}
c0de7ede:	4c0d      	ldr	r4, [pc, #52]	@ (c0de7f14 <io_recv_command+0x38>)
c0de7ee0:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de7ee4:	b151      	cbz	r1, c0de7efc <io_recv_command+0x20>
c0de7ee6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de7eea:	2902      	cmp	r1, #2
c0de7eec:	d00e      	beq.n	c0de7f0c <io_recv_command+0x30>
c0de7eee:	2901      	cmp	r1, #1
c0de7ef0:	d10f      	bne.n	c0de7f12 <io_recv_command+0x36>
c0de7ef2:	2002      	movs	r0, #2
c0de7ef4:	f809 0004 	strb.w	r0, [r9, r4]
c0de7ef8:	2010      	movs	r0, #16
c0de7efa:	e000      	b.n	c0de7efe <io_recv_command+0x22>
c0de7efc:	2004      	movs	r0, #4
c0de7efe:	eb09 0104 	add.w	r1, r9, r4
c0de7f02:	8889      	ldrh	r1, [r1, #4]
c0de7f04:	f001 fb82 	bl	c0de960c <io_exchange>
c0de7f08:	2101      	movs	r1, #1
c0de7f0a:	e000      	b.n	c0de7f0e <io_recv_command+0x32>
c0de7f0c:	2100      	movs	r1, #0
c0de7f0e:	f809 1004 	strb.w	r1, [r9, r4]
c0de7f12:	bd10      	pop	{r4, pc}
c0de7f14:	000018c0 	.word	0x000018c0

c0de7f18 <io_send_response_buffers>:
c0de7f18:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7f1c:	4f31      	ldr	r7, [pc, #196]	@ (c0de7fe4 <io_send_response_buffers+0xcc>)
c0de7f1e:	4c32      	ldr	r4, [pc, #200]	@ (c0de7fe8 <io_send_response_buffers+0xd0>)
c0de7f20:	4690      	mov	r8, r2
c0de7f22:	460e      	mov	r6, r1
c0de7f24:	4605      	mov	r5, r0
c0de7f26:	2100      	movs	r1, #0
c0de7f28:	eb09 0007 	add.w	r0, r9, r7
c0de7f2c:	6041      	str	r1, [r0, #4]
c0de7f2e:	b1e5      	cbz	r5, c0de7f6a <io_send_response_buffers+0x52>
c0de7f30:	b1de      	cbz	r6, c0de7f6a <io_send_response_buffers+0x52>
c0de7f32:	2100      	movs	r1, #0
c0de7f34:	b1ce      	cbz	r6, c0de7f6a <io_send_response_buffers+0x52>
c0de7f36:	eb09 0004 	add.w	r0, r9, r4
c0de7f3a:	f5c1 7281 	rsb	r2, r1, #258	@ 0x102
c0de7f3e:	1843      	adds	r3, r0, r1
c0de7f40:	4628      	mov	r0, r5
c0de7f42:	4619      	mov	r1, r3
c0de7f44:	f7ff fdbe 	bl	c0de7ac4 <buffer_copy>
c0de7f48:	b150      	cbz	r0, c0de7f60 <io_send_response_buffers+0x48>
c0de7f4a:	e9d5 2301 	ldrd	r2, r3, [r5, #4]
c0de7f4e:	eb09 0007 	add.w	r0, r9, r7
c0de7f52:	350c      	adds	r5, #12
c0de7f54:	3e01      	subs	r6, #1
c0de7f56:	6841      	ldr	r1, [r0, #4]
c0de7f58:	1ad2      	subs	r2, r2, r3
c0de7f5a:	4411      	add	r1, r2
c0de7f5c:	6041      	str	r1, [r0, #4]
c0de7f5e:	e7e9      	b.n	c0de7f34 <io_send_response_buffers+0x1c>
c0de7f60:	f44f 4830 	mov.w	r8, #45056	@ 0xb000
c0de7f64:	2500      	movs	r5, #0
c0de7f66:	2600      	movs	r6, #0
c0de7f68:	e7dd      	b.n	c0de7f26 <io_send_response_buffers+0xe>
c0de7f6a:	eb09 0004 	add.w	r0, r9, r4
c0de7f6e:	fa1f f488 	uxth.w	r4, r8
c0de7f72:	4622      	mov	r2, r4
c0de7f74:	f000 f9c0 	bl	c0de82f8 <write_u16_be>
c0de7f78:	eb09 0107 	add.w	r1, r9, r7
c0de7f7c:	6848      	ldr	r0, [r1, #4]
c0de7f7e:	3002      	adds	r0, #2
c0de7f80:	6048      	str	r0, [r1, #4]
c0de7f82:	491a      	ldr	r1, [pc, #104]	@ (c0de7fec <io_send_response_buffers+0xd4>)
c0de7f84:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de7f88:	b119      	cbz	r1, c0de7f92 <io_send_response_buffers+0x7a>
c0de7f8a:	4919      	ldr	r1, [pc, #100]	@ (c0de7ff0 <io_send_response_buffers+0xd8>)
c0de7f8c:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de7f90:	b9a1      	cbnz	r1, c0de7fbc <io_send_response_buffers+0xa4>
c0de7f92:	f819 1007 	ldrb.w	r1, [r9, r7]
c0de7f96:	3901      	subs	r1, #1
c0de7f98:	2901      	cmp	r1, #1
c0de7f9a:	bf84      	itt	hi
c0de7f9c:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de7fa0:	e8bd 81f0 	ldmiahi.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de7fa4:	b281      	uxth	r1, r0
c0de7fa6:	2020      	movs	r0, #32
c0de7fa8:	f001 fb30 	bl	c0de960c <io_exchange>
c0de7fac:	2100      	movs	r1, #0
c0de7fae:	eb09 0207 	add.w	r2, r9, r7
c0de7fb2:	f809 1007 	strb.w	r1, [r9, r7]
c0de7fb6:	6051      	str	r1, [r2, #4]
c0de7fb8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de7fbc:	b281      	uxth	r1, r0
c0de7fbe:	2020      	movs	r0, #32
c0de7fc0:	f001 fb24 	bl	c0de960c <io_exchange>
c0de7fc4:	b950      	cbnz	r0, c0de7fdc <io_send_response_buffers+0xc4>
c0de7fc6:	480b      	ldr	r0, [pc, #44]	@ (c0de7ff4 <io_send_response_buffers+0xdc>)
c0de7fc8:	f5a4 4110 	sub.w	r1, r4, #36864	@ 0x9000
c0de7fcc:	fab1 f181 	clz	r1, r1
c0de7fd0:	f859 0000 	ldr.w	r0, [r9, r0]
c0de7fd4:	0949      	lsrs	r1, r1, #5
c0de7fd6:	7001      	strb	r1, [r0, #0]
c0de7fd8:	f002 f9ca 	bl	c0dea370 <os_lib_end>
c0de7fdc:	20ff      	movs	r0, #255	@ 0xff
c0de7fde:	f002 f9e3 	bl	c0dea3a8 <os_sched_exit>
c0de7fe2:	bf00      	nop
c0de7fe4:	000018c0 	.word	0x000018c0
c0de7fe8:	000019bc 	.word	0x000019bc
c0de7fec:	000018d4 	.word	0x000018d4
c0de7ff0:	000018d5 	.word	0x000018d5
c0de7ff4:	000018d8 	.word	0x000018d8

c0de7ff8 <app_exit>:
c0de7ff8:	20ff      	movs	r0, #255	@ 0xff
c0de7ffa:	f002 f9d5 	bl	c0dea3a8 <os_sched_exit>

c0de7ffe <common_app_init>:
c0de7ffe:	b580      	push	{r7, lr}
c0de8000:	f7fc fb50 	bl	c0de46a4 <nbgl_objInit>
c0de8004:	f001 fa94 	bl	c0de9530 <io_seproxyhal_init>
c0de8008:	2000      	movs	r0, #0
c0de800a:	f001 f861 	bl	c0de90d0 <USB_power>
c0de800e:	2001      	movs	r0, #1
c0de8010:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8014:	f001 b85c 	b.w	c0de90d0 <USB_power>

c0de8018 <standalone_app_main>:
c0de8018:	b5b0      	push	{r4, r5, r7, lr}
c0de801a:	b08c      	sub	sp, #48	@ 0x30
c0de801c:	4816      	ldr	r0, [pc, #88]	@ (c0de8078 <standalone_app_main+0x60>)
c0de801e:	2500      	movs	r5, #0
c0de8020:	466c      	mov	r4, sp
c0de8022:	f809 5000 	strb.w	r5, [r9, r0]
c0de8026:	4815      	ldr	r0, [pc, #84]	@ (c0de807c <standalone_app_main+0x64>)
c0de8028:	f849 5000 	str.w	r5, [r9, r0]
c0de802c:	4814      	ldr	r0, [pc, #80]	@ (c0de8080 <standalone_app_main+0x68>)
c0de802e:	f809 5000 	strb.w	r5, [r9, r0]
c0de8032:	4620      	mov	r0, r4
c0de8034:	f002 fbe0 	bl	c0dea7f8 <setjmp>
c0de8038:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de803c:	0400      	lsls	r0, r0, #16
c0de803e:	d108      	bne.n	c0de8052 <standalone_app_main+0x3a>
c0de8040:	4668      	mov	r0, sp
c0de8042:	f002 f9e1 	bl	c0dea408 <try_context_set>
c0de8046:	900a      	str	r0, [sp, #40]	@ 0x28
c0de8048:	f7ff ffd9 	bl	c0de7ffe <common_app_init>
c0de804c:	f7f8 f902 	bl	c0de0254 <app_main>
c0de8050:	e004      	b.n	c0de805c <standalone_app_main+0x44>
c0de8052:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8054:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de8058:	f002 f9d6 	bl	c0dea408 <try_context_set>
c0de805c:	f002 f9cc 	bl	c0dea3f8 <try_context_get>
c0de8060:	42a0      	cmp	r0, r4
c0de8062:	d102      	bne.n	c0de806a <standalone_app_main+0x52>
c0de8064:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8066:	f002 f9cf 	bl	c0dea408 <try_context_set>
c0de806a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de806e:	b908      	cbnz	r0, c0de8074 <standalone_app_main+0x5c>
c0de8070:	f7ff ffc2 	bl	c0de7ff8 <app_exit>
c0de8074:	f001 f946 	bl	c0de9304 <os_longjmp>
c0de8078:	000018d4 	.word	0x000018d4
c0de807c:	000018d8 	.word	0x000018d8
c0de8080:	000018d5 	.word	0x000018d5

c0de8084 <library_app_main>:
c0de8084:	b5b0      	push	{r4, r5, r7, lr}
c0de8086:	b08c      	sub	sp, #48	@ 0x30
c0de8088:	466c      	mov	r4, sp
c0de808a:	4605      	mov	r5, r0
c0de808c:	4620      	mov	r0, r4
c0de808e:	f002 fbb3 	bl	c0dea7f8 <setjmp>
c0de8092:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de8096:	0400      	lsls	r0, r0, #16
c0de8098:	d124      	bne.n	c0de80e4 <library_app_main+0x60>
c0de809a:	4668      	mov	r0, sp
c0de809c:	f002 f9b4 	bl	c0dea408 <try_context_set>
c0de80a0:	900a      	str	r0, [sp, #40]	@ 0x28
c0de80a2:	6868      	ldr	r0, [r5, #4]
c0de80a4:	2804      	cmp	r0, #4
c0de80a6:	d024      	beq.n	c0de80f2 <library_app_main+0x6e>
c0de80a8:	2803      	cmp	r0, #3
c0de80aa:	d026      	beq.n	c0de80fa <library_app_main+0x76>
c0de80ac:	2802      	cmp	r0, #2
c0de80ae:	d127      	bne.n	c0de8100 <library_app_main+0x7c>
c0de80b0:	68e8      	ldr	r0, [r5, #12]
c0de80b2:	f7f8 ffe1 	bl	c0de1078 <swap_copy_transaction_parameters>
c0de80b6:	b318      	cbz	r0, c0de8100 <library_app_main+0x7c>
c0de80b8:	4816      	ldr	r0, [pc, #88]	@ (c0de8114 <library_app_main+0x90>)
c0de80ba:	2201      	movs	r2, #1
c0de80bc:	f809 2000 	strb.w	r2, [r9, r0]
c0de80c0:	4815      	ldr	r0, [pc, #84]	@ (c0de8118 <library_app_main+0x94>)
c0de80c2:	2200      	movs	r2, #0
c0de80c4:	f809 2000 	strb.w	r2, [r9, r0]
c0de80c8:	4a14      	ldr	r2, [pc, #80]	@ (c0de811c <library_app_main+0x98>)
c0de80ca:	68e8      	ldr	r0, [r5, #12]
c0de80cc:	3020      	adds	r0, #32
c0de80ce:	f849 0002 	str.w	r0, [r9, r2]
c0de80d2:	f7ff ff94 	bl	c0de7ffe <common_app_init>
c0de80d6:	4812      	ldr	r0, [pc, #72]	@ (c0de8120 <library_app_main+0x9c>)
c0de80d8:	4478      	add	r0, pc
c0de80da:	f7fe fc57 	bl	c0de698c <nbgl_useCaseSpinner>
c0de80de:	f7f8 f8b9 	bl	c0de0254 <app_main>
c0de80e2:	e00d      	b.n	c0de8100 <library_app_main+0x7c>
c0de80e4:	2000      	movs	r0, #0
c0de80e6:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de80ea:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de80ec:	f002 f98c 	bl	c0dea408 <try_context_set>
c0de80f0:	e006      	b.n	c0de8100 <library_app_main+0x7c>
c0de80f2:	68e8      	ldr	r0, [r5, #12]
c0de80f4:	f7f8 ff94 	bl	c0de1020 <swap_handle_get_printable_amount>
c0de80f8:	e002      	b.n	c0de8100 <library_app_main+0x7c>
c0de80fa:	68e8      	ldr	r0, [r5, #12]
c0de80fc:	f7f8 ff36 	bl	c0de0f6c <swap_handle_check_address>
c0de8100:	f002 f97a 	bl	c0dea3f8 <try_context_get>
c0de8104:	42a0      	cmp	r0, r4
c0de8106:	d102      	bne.n	c0de810e <library_app_main+0x8a>
c0de8108:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de810a:	f002 f97d 	bl	c0dea408 <try_context_set>
c0de810e:	f002 f92f 	bl	c0dea370 <os_lib_end>
c0de8112:	bf00      	nop
c0de8114:	000018d4 	.word	0x000018d4
c0de8118:	000018d5 	.word	0x000018d5
c0de811c:	000018d8 	.word	0x000018d8
c0de8120:	00002a10 	.word	0x00002a10

c0de8124 <apdu_parser>:
c0de8124:	2a04      	cmp	r2, #4
c0de8126:	d316      	bcc.n	c0de8156 <apdu_parser+0x32>
c0de8128:	d102      	bne.n	c0de8130 <apdu_parser+0xc>
c0de812a:	2300      	movs	r3, #0
c0de812c:	7103      	strb	r3, [r0, #4]
c0de812e:	e004      	b.n	c0de813a <apdu_parser+0x16>
c0de8130:	790b      	ldrb	r3, [r1, #4]
c0de8132:	3a05      	subs	r2, #5
c0de8134:	429a      	cmp	r2, r3
c0de8136:	7103      	strb	r3, [r0, #4]
c0de8138:	d10d      	bne.n	c0de8156 <apdu_parser+0x32>
c0de813a:	780a      	ldrb	r2, [r1, #0]
c0de813c:	2b00      	cmp	r3, #0
c0de813e:	7002      	strb	r2, [r0, #0]
c0de8140:	784a      	ldrb	r2, [r1, #1]
c0de8142:	7042      	strb	r2, [r0, #1]
c0de8144:	788a      	ldrb	r2, [r1, #2]
c0de8146:	7082      	strb	r2, [r0, #2]
c0de8148:	bf18      	it	ne
c0de814a:	1d4b      	addne	r3, r1, #5
c0de814c:	78c9      	ldrb	r1, [r1, #3]
c0de814e:	6083      	str	r3, [r0, #8]
c0de8150:	70c1      	strb	r1, [r0, #3]
c0de8152:	2001      	movs	r0, #1
c0de8154:	4770      	bx	lr
c0de8156:	2000      	movs	r0, #0
c0de8158:	4770      	bx	lr

c0de815a <read_u32_be>:
c0de815a:	5c42      	ldrb	r2, [r0, r1]
c0de815c:	4408      	add	r0, r1
c0de815e:	7841      	ldrb	r1, [r0, #1]
c0de8160:	7883      	ldrb	r3, [r0, #2]
c0de8162:	78c0      	ldrb	r0, [r0, #3]
c0de8164:	0409      	lsls	r1, r1, #16
c0de8166:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de816a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de816e:	4408      	add	r0, r1
c0de8170:	4770      	bx	lr

c0de8172 <read_u64_be>:
c0de8172:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8174:	1842      	adds	r2, r0, r1
c0de8176:	5c40      	ldrb	r0, [r0, r1]
c0de8178:	7917      	ldrb	r7, [r2, #4]
c0de817a:	7953      	ldrb	r3, [r2, #5]
c0de817c:	7854      	ldrb	r4, [r2, #1]
c0de817e:	7895      	ldrb	r5, [r2, #2]
c0de8180:	78d6      	ldrb	r6, [r2, #3]
c0de8182:	063f      	lsls	r7, r7, #24
c0de8184:	0421      	lsls	r1, r4, #16
c0de8186:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de818a:	7997      	ldrb	r7, [r2, #6]
c0de818c:	79d2      	ldrb	r2, [r2, #7]
c0de818e:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de8192:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de8196:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de819a:	1981      	adds	r1, r0, r6
c0de819c:	441a      	add	r2, r3
c0de819e:	4610      	mov	r0, r2
c0de81a0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de81a2 <read_u16_le>:
c0de81a2:	5c42      	ldrb	r2, [r0, r1]
c0de81a4:	4408      	add	r0, r1
c0de81a6:	7840      	ldrb	r0, [r0, #1]
c0de81a8:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de81ac:	b280      	uxth	r0, r0
c0de81ae:	4770      	bx	lr

c0de81b0 <read_u32_le>:
c0de81b0:	5c42      	ldrb	r2, [r0, r1]
c0de81b2:	4408      	add	r0, r1
c0de81b4:	7841      	ldrb	r1, [r0, #1]
c0de81b6:	7883      	ldrb	r3, [r0, #2]
c0de81b8:	78c0      	ldrb	r0, [r0, #3]
c0de81ba:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de81be:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de81c2:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de81c6:	4770      	bx	lr

c0de81c8 <read_u64_le>:
c0de81c8:	b5b0      	push	{r4, r5, r7, lr}
c0de81ca:	5c42      	ldrb	r2, [r0, r1]
c0de81cc:	4401      	add	r1, r0
c0de81ce:	7848      	ldrb	r0, [r1, #1]
c0de81d0:	788b      	ldrb	r3, [r1, #2]
c0de81d2:	790d      	ldrb	r5, [r1, #4]
c0de81d4:	78cc      	ldrb	r4, [r1, #3]
c0de81d6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de81da:	794a      	ldrb	r2, [r1, #5]
c0de81dc:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de81e0:	798b      	ldrb	r3, [r1, #6]
c0de81e2:	79c9      	ldrb	r1, [r1, #7]
c0de81e4:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de81e8:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de81ec:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de81f0:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de81f4:	bdb0      	pop	{r4, r5, r7, pc}

c0de81f6 <send_swap_error_simple>:
c0de81f6:	b082      	sub	sp, #8
c0de81f8:	2300      	movs	r3, #0
c0de81fa:	9300      	str	r3, [sp, #0]
c0de81fc:	2300      	movs	r3, #0
c0de81fe:	f000 f801 	bl	c0de8204 <send_swap_error_with_buffers>
	...

c0de8204 <send_swap_error_with_buffers>:
c0de8204:	b09c      	sub	sp, #112	@ 0x70
c0de8206:	4604      	mov	r4, r0
c0de8208:	4815      	ldr	r0, [pc, #84]	@ (c0de8260 <send_swap_error_with_buffers+0x5c>)
c0de820a:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de820e:	b320      	cbz	r0, c0de825a <send_swap_error_with_buffers+0x56>
c0de8210:	4814      	ldr	r0, [pc, #80]	@ (c0de8264 <send_swap_error_with_buffers+0x60>)
c0de8212:	461d      	mov	r5, r3
c0de8214:	2301      	movs	r3, #1
c0de8216:	466e      	mov	r6, sp
c0de8218:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de821a:	f809 3000 	strb.w	r3, [r9, r0]
c0de821e:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de8222:	f106 0008 	add.w	r0, r6, #8
c0de8226:	2164      	movs	r1, #100	@ 0x64
c0de8228:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de822c:	f002 faa2 	bl	c0dea774 <__aeabi_memclr>
c0de8230:	2002      	movs	r0, #2
c0de8232:	4629      	mov	r1, r5
c0de8234:	9001      	str	r0, [sp, #4]
c0de8236:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de823a:	2f08      	cmp	r7, #8
c0de823c:	9000      	str	r0, [sp, #0]
c0de823e:	bf28      	it	cs
c0de8240:	2708      	movcs	r7, #8
c0de8242:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de8246:	0082      	lsls	r2, r0, #2
c0de8248:	f106 000c 	add.w	r0, r6, #12
c0de824c:	f002 fa95 	bl	c0dea77a <__aeabi_memcpy>
c0de8250:	1c79      	adds	r1, r7, #1
c0de8252:	4630      	mov	r0, r6
c0de8254:	4622      	mov	r2, r4
c0de8256:	f7ff fe5f 	bl	c0de7f18 <io_send_response_buffers>
c0de825a:	2000      	movs	r0, #0
c0de825c:	f002 f8a4 	bl	c0dea3a8 <os_sched_exit>
c0de8260:	000018d4 	.word	0x000018d4
c0de8264:	000018d5 	.word	0x000018d5

c0de8268 <swap_str_to_u64>:
c0de8268:	2908      	cmp	r1, #8
c0de826a:	d812      	bhi.n	c0de8292 <swap_str_to_u64+0x2a>
c0de826c:	b570      	push	{r4, r5, r6, lr}
c0de826e:	2500      	movs	r5, #0
c0de8270:	460b      	mov	r3, r1
c0de8272:	2400      	movs	r4, #0
c0de8274:	b14b      	cbz	r3, c0de828a <swap_str_to_u64+0x22>
c0de8276:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de827a:	0224      	lsls	r4, r4, #8
c0de827c:	3b01      	subs	r3, #1
c0de827e:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de8282:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de8286:	4635      	mov	r5, r6
c0de8288:	e7f4      	b.n	c0de8274 <swap_str_to_u64+0xc>
c0de828a:	e9c2 5400 	strd	r5, r4, [r2]
c0de828e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8292:	2000      	movs	r0, #0
c0de8294:	2909      	cmp	r1, #9
c0de8296:	bf38      	it	cc
c0de8298:	2001      	movcc	r0, #1
c0de829a:	4770      	bx	lr

c0de829c <varint_read>:
c0de829c:	b510      	push	{r4, lr}
c0de829e:	b1d9      	cbz	r1, c0de82d8 <varint_read+0x3c>
c0de82a0:	4614      	mov	r4, r2
c0de82a2:	4602      	mov	r2, r0
c0de82a4:	7800      	ldrb	r0, [r0, #0]
c0de82a6:	28ff      	cmp	r0, #255	@ 0xff
c0de82a8:	d00c      	beq.n	c0de82c4 <varint_read+0x28>
c0de82aa:	28fe      	cmp	r0, #254	@ 0xfe
c0de82ac:	d012      	beq.n	c0de82d4 <varint_read+0x38>
c0de82ae:	28fd      	cmp	r0, #253	@ 0xfd
c0de82b0:	d115      	bne.n	c0de82de <varint_read+0x42>
c0de82b2:	2903      	cmp	r1, #3
c0de82b4:	d310      	bcc.n	c0de82d8 <varint_read+0x3c>
c0de82b6:	4610      	mov	r0, r2
c0de82b8:	2101      	movs	r1, #1
c0de82ba:	f7ff ff72 	bl	c0de81a2 <read_u16_le>
c0de82be:	2100      	movs	r1, #0
c0de82c0:	2203      	movs	r2, #3
c0de82c2:	e015      	b.n	c0de82f0 <varint_read+0x54>
c0de82c4:	2909      	cmp	r1, #9
c0de82c6:	d307      	bcc.n	c0de82d8 <varint_read+0x3c>
c0de82c8:	4610      	mov	r0, r2
c0de82ca:	2101      	movs	r1, #1
c0de82cc:	f7ff ff7c 	bl	c0de81c8 <read_u64_le>
c0de82d0:	2209      	movs	r2, #9
c0de82d2:	e00d      	b.n	c0de82f0 <varint_read+0x54>
c0de82d4:	2905      	cmp	r1, #5
c0de82d6:	d205      	bcs.n	c0de82e4 <varint_read+0x48>
c0de82d8:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de82dc:	e00a      	b.n	c0de82f4 <varint_read+0x58>
c0de82de:	2100      	movs	r1, #0
c0de82e0:	2201      	movs	r2, #1
c0de82e2:	e005      	b.n	c0de82f0 <varint_read+0x54>
c0de82e4:	4610      	mov	r0, r2
c0de82e6:	2101      	movs	r1, #1
c0de82e8:	f7ff ff62 	bl	c0de81b0 <read_u32_le>
c0de82ec:	2100      	movs	r1, #0
c0de82ee:	2205      	movs	r2, #5
c0de82f0:	e9c4 0100 	strd	r0, r1, [r4]
c0de82f4:	4610      	mov	r0, r2
c0de82f6:	bd10      	pop	{r4, pc}

c0de82f8 <write_u16_be>:
c0de82f8:	0a13      	lsrs	r3, r2, #8
c0de82fa:	5443      	strb	r3, [r0, r1]
c0de82fc:	4408      	add	r0, r1
c0de82fe:	7042      	strb	r2, [r0, #1]
c0de8300:	4770      	bx	lr

c0de8302 <USBD_HID_Setup>:
c0de8302:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de8304:	460d      	mov	r5, r1
c0de8306:	7809      	ldrb	r1, [r1, #0]
c0de8308:	4604      	mov	r4, r0
c0de830a:	2000      	movs	r0, #0
c0de830c:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de8310:	f88d 0005 	strb.w	r0, [sp, #5]
c0de8314:	f011 0160 	ands.w	r1, r1, #96	@ 0x60
c0de8318:	d010      	beq.n	c0de833c <USBD_HID_Setup+0x3a>
c0de831a:	2920      	cmp	r1, #32
c0de831c:	d13c      	bne.n	c0de8398 <USBD_HID_Setup+0x96>
c0de831e:	7868      	ldrb	r0, [r5, #1]
c0de8320:	f1a0 010a 	sub.w	r1, r0, #10
c0de8324:	2902      	cmp	r1, #2
c0de8326:	d336      	bcc.n	c0de8396 <USBD_HID_Setup+0x94>
c0de8328:	2802      	cmp	r0, #2
c0de832a:	d018      	beq.n	c0de835e <USBD_HID_Setup+0x5c>
c0de832c:	2803      	cmp	r0, #3
c0de832e:	d016      	beq.n	c0de835e <USBD_HID_Setup+0x5c>
c0de8330:	4620      	mov	r0, r4
c0de8332:	4629      	mov	r1, r5
c0de8334:	f000 fe88 	bl	c0de9048 <USBD_CtlError>
c0de8338:	2002      	movs	r0, #2
c0de833a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de833c:	7868      	ldrb	r0, [r5, #1]
c0de833e:	280b      	cmp	r0, #11
c0de8340:	d012      	beq.n	c0de8368 <USBD_HID_Setup+0x66>
c0de8342:	280a      	cmp	r0, #10
c0de8344:	d00b      	beq.n	c0de835e <USBD_HID_Setup+0x5c>
c0de8346:	2806      	cmp	r0, #6
c0de8348:	d125      	bne.n	c0de8396 <USBD_HID_Setup+0x94>
c0de834a:	78e8      	ldrb	r0, [r5, #3]
c0de834c:	2821      	cmp	r0, #33	@ 0x21
c0de834e:	d00f      	beq.n	c0de8370 <USBD_HID_Setup+0x6e>
c0de8350:	2822      	cmp	r0, #34	@ 0x22
c0de8352:	d11b      	bne.n	c0de838c <USBD_HID_Setup+0x8a>
c0de8354:	f10d 0006 	add.w	r0, sp, #6
c0de8358:	f000 fd92 	bl	c0de8e80 <USBD_HID_GetReportDescriptor_impl>
c0de835c:	e00c      	b.n	c0de8378 <USBD_HID_Setup+0x76>
c0de835e:	f10d 0105 	add.w	r1, sp, #5
c0de8362:	4620      	mov	r0, r4
c0de8364:	2201      	movs	r2, #1
c0de8366:	e014      	b.n	c0de8392 <USBD_HID_Setup+0x90>
c0de8368:	4620      	mov	r0, r4
c0de836a:	f000 fc26 	bl	c0de8bba <USBD_CtlSendStatus>
c0de836e:	e012      	b.n	c0de8396 <USBD_HID_Setup+0x94>
c0de8370:	f10d 0006 	add.w	r0, sp, #6
c0de8374:	f000 fd70 	bl	c0de8e58 <USBD_HID_GetHidDescriptor_impl>
c0de8378:	4601      	mov	r1, r0
c0de837a:	88ea      	ldrh	r2, [r5, #6]
c0de837c:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de8380:	4290      	cmp	r0, r2
c0de8382:	bf38      	it	cc
c0de8384:	4602      	movcc	r2, r0
c0de8386:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de838a:	e001      	b.n	c0de8390 <USBD_HID_Setup+0x8e>
c0de838c:	2200      	movs	r2, #0
c0de838e:	2100      	movs	r1, #0
c0de8390:	4620      	mov	r0, r4
c0de8392:	f000 fbf1 	bl	c0de8b78 <USBD_CtlSendData>
c0de8396:	2000      	movs	r0, #0
c0de8398:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de839a <USBD_HID_Init>:
c0de839a:	b510      	push	{r4, lr}
c0de839c:	2182      	movs	r1, #130	@ 0x82
c0de839e:	2203      	movs	r2, #3
c0de83a0:	2340      	movs	r3, #64	@ 0x40
c0de83a2:	4604      	mov	r4, r0
c0de83a4:	f000 fc62 	bl	c0de8c6c <USBD_LL_OpenEP>
c0de83a8:	4620      	mov	r0, r4
c0de83aa:	2102      	movs	r1, #2
c0de83ac:	2203      	movs	r2, #3
c0de83ae:	2340      	movs	r3, #64	@ 0x40
c0de83b0:	f000 fc5c 	bl	c0de8c6c <USBD_LL_OpenEP>
c0de83b4:	4620      	mov	r0, r4
c0de83b6:	2102      	movs	r1, #2
c0de83b8:	2240      	movs	r2, #64	@ 0x40
c0de83ba:	f000 fd13 	bl	c0de8de4 <USBD_LL_PrepareReceive>
c0de83be:	2000      	movs	r0, #0
c0de83c0:	bd10      	pop	{r4, pc}

c0de83c2 <USBD_HID_DeInit>:
c0de83c2:	2000      	movs	r0, #0
c0de83c4:	4770      	bx	lr

c0de83c6 <USBD_Init>:
c0de83c6:	b190      	cbz	r0, c0de83ee <USBD_Init+0x28>
c0de83c8:	b570      	push	{r4, r5, r6, lr}
c0de83ca:	460e      	mov	r6, r1
c0de83cc:	21d4      	movs	r1, #212	@ 0xd4
c0de83ce:	4615      	mov	r5, r2
c0de83d0:	4604      	mov	r4, r0
c0de83d2:	f002 f9cf 	bl	c0dea774 <__aeabi_memclr>
c0de83d6:	b10e      	cbz	r6, c0de83dc <USBD_Init+0x16>
c0de83d8:	f8c4 60b0 	str.w	r6, [r4, #176]	@ 0xb0
c0de83dc:	2001      	movs	r0, #1
c0de83de:	7025      	strb	r5, [r4, #0]
c0de83e0:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de83e4:	4620      	mov	r0, r4
c0de83e6:	f000 fc05 	bl	c0de8bf4 <USBD_LL_Init>
c0de83ea:	2000      	movs	r0, #0
c0de83ec:	bd70      	pop	{r4, r5, r6, pc}
c0de83ee:	2002      	movs	r0, #2
c0de83f0:	4770      	bx	lr

c0de83f2 <USBD_DeInit>:
c0de83f2:	b5b0      	push	{r4, r5, r7, lr}
c0de83f4:	4604      	mov	r4, r0
c0de83f6:	2001      	movs	r0, #1
c0de83f8:	25b4      	movs	r5, #180	@ 0xb4
c0de83fa:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de83fe:	2dcc      	cmp	r5, #204	@ 0xcc
c0de8400:	d008      	beq.n	c0de8414 <USBD_DeInit+0x22>
c0de8402:	5960      	ldr	r0, [r4, r5]
c0de8404:	b120      	cbz	r0, c0de8410 <USBD_DeInit+0x1e>
c0de8406:	6840      	ldr	r0, [r0, #4]
c0de8408:	f001 fdb4 	bl	c0de9f74 <pic>
c0de840c:	f000 f973 	bl	c0de86f6 <OUTLINED_FUNCTION_3>
c0de8410:	3508      	adds	r5, #8
c0de8412:	e7f4      	b.n	c0de83fe <USBD_DeInit+0xc>
c0de8414:	4620      	mov	r0, r4
c0de8416:	f000 fc21 	bl	c0de8c5c <USBD_LL_Stop>
c0de841a:	4620      	mov	r0, r4
c0de841c:	f000 fbf8 	bl	c0de8c10 <USBD_LL_DeInit>
c0de8420:	2000      	movs	r0, #0
c0de8422:	bdb0      	pop	{r4, r5, r7, pc}

c0de8424 <USBD_RegisterClassForInterface>:
c0de8424:	b13a      	cbz	r2, c0de8436 <USBD_RegisterClassForInterface+0x12>
c0de8426:	2802      	cmp	r0, #2
c0de8428:	bf9c      	itt	ls
c0de842a:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0de842e:	f8c0 20b4 	strls.w	r2, [r0, #180]	@ 0xb4
c0de8432:	2000      	movs	r0, #0
c0de8434:	4770      	bx	lr
c0de8436:	2002      	movs	r0, #2
c0de8438:	4770      	bx	lr

c0de843a <USBD_Start>:
c0de843a:	b580      	push	{r7, lr}
c0de843c:	f000 fbf0 	bl	c0de8c20 <USBD_LL_Start>
c0de8440:	2000      	movs	r0, #0
c0de8442:	bd80      	pop	{r7, pc}

c0de8444 <USBD_SetClassConfig>:
c0de8444:	b570      	push	{r4, r5, r6, lr}
c0de8446:	460c      	mov	r4, r1
c0de8448:	4605      	mov	r5, r0
c0de844a:	2600      	movs	r6, #0
c0de844c:	2e03      	cmp	r6, #3
c0de844e:	bf04      	itt	eq
c0de8450:	2000      	moveq	r0, #0
c0de8452:	bd70      	popeq	{r4, r5, r6, pc}
c0de8454:	4628      	mov	r0, r5
c0de8456:	4631      	mov	r1, r6
c0de8458:	f000 f951 	bl	c0de86fe <usbd_is_valid_intf>
c0de845c:	b150      	cbz	r0, c0de8474 <USBD_SetClassConfig+0x30>
c0de845e:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de8462:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de8466:	6800      	ldr	r0, [r0, #0]
c0de8468:	f001 fd84 	bl	c0de9f74 <pic>
c0de846c:	4602      	mov	r2, r0
c0de846e:	4628      	mov	r0, r5
c0de8470:	4621      	mov	r1, r4
c0de8472:	4790      	blx	r2
c0de8474:	3601      	adds	r6, #1
c0de8476:	e7e9      	b.n	c0de844c <USBD_SetClassConfig+0x8>

c0de8478 <USBD_ClrClassConfig>:
c0de8478:	b570      	push	{r4, r5, r6, lr}
c0de847a:	460c      	mov	r4, r1
c0de847c:	4605      	mov	r5, r0
c0de847e:	2600      	movs	r6, #0
c0de8480:	2e03      	cmp	r6, #3
c0de8482:	bf04      	itt	eq
c0de8484:	2000      	moveq	r0, #0
c0de8486:	bd70      	popeq	{r4, r5, r6, pc}
c0de8488:	4628      	mov	r0, r5
c0de848a:	4631      	mov	r1, r6
c0de848c:	f000 f937 	bl	c0de86fe <usbd_is_valid_intf>
c0de8490:	b138      	cbz	r0, c0de84a2 <USBD_ClrClassConfig+0x2a>
c0de8492:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de8496:	f000 f924 	bl	c0de86e2 <OUTLINED_FUNCTION_1>
c0de849a:	4602      	mov	r2, r0
c0de849c:	4628      	mov	r0, r5
c0de849e:	4621      	mov	r1, r4
c0de84a0:	4790      	blx	r2
c0de84a2:	3601      	adds	r6, #1
c0de84a4:	e7ec      	b.n	c0de8480 <USBD_ClrClassConfig+0x8>

c0de84a6 <USBD_LL_SetupStage>:
c0de84a6:	b5b0      	push	{r4, r5, r7, lr}
c0de84a8:	f100 05a8 	add.w	r5, r0, #168	@ 0xa8
c0de84ac:	4604      	mov	r4, r0
c0de84ae:	4628      	mov	r0, r5
c0de84b0:	f000 fb33 	bl	c0de8b1a <USBD_ParseSetupRequest>
c0de84b4:	f8b4 10ae 	ldrh.w	r1, [r4, #174]	@ 0xae
c0de84b8:	2001      	movs	r0, #1
c0de84ba:	e9c4 0125 	strd	r0, r1, [r4, #148]	@ 0x94
c0de84be:	f894 00a8 	ldrb.w	r0, [r4, #168]	@ 0xa8
c0de84c2:	f000 011f 	and.w	r1, r0, #31
c0de84c6:	2902      	cmp	r1, #2
c0de84c8:	d007      	beq.n	c0de84da <USBD_LL_SetupStage+0x34>
c0de84ca:	2901      	cmp	r1, #1
c0de84cc:	d00a      	beq.n	c0de84e4 <USBD_LL_SetupStage+0x3e>
c0de84ce:	b971      	cbnz	r1, c0de84ee <USBD_LL_SetupStage+0x48>
c0de84d0:	4620      	mov	r0, r4
c0de84d2:	4629      	mov	r1, r5
c0de84d4:	f000 f91f 	bl	c0de8716 <USBD_StdDevReq>
c0de84d8:	e00e      	b.n	c0de84f8 <USBD_LL_SetupStage+0x52>
c0de84da:	4620      	mov	r0, r4
c0de84dc:	4629      	mov	r1, r5
c0de84de:	f000 faa9 	bl	c0de8a34 <USBD_StdEPReq>
c0de84e2:	e009      	b.n	c0de84f8 <USBD_LL_SetupStage+0x52>
c0de84e4:	4620      	mov	r0, r4
c0de84e6:	4629      	mov	r1, r5
c0de84e8:	f000 fa88 	bl	c0de89fc <USBD_StdItfReq>
c0de84ec:	e004      	b.n	c0de84f8 <USBD_LL_SetupStage+0x52>
c0de84ee:	f000 0180 	and.w	r1, r0, #128	@ 0x80
c0de84f2:	4620      	mov	r0, r4
c0de84f4:	f000 fbee 	bl	c0de8cd4 <USBD_LL_StallEP>
c0de84f8:	2000      	movs	r0, #0
c0de84fa:	bdb0      	pop	{r4, r5, r7, pc}

c0de84fc <USBD_LL_DataOutStage>:
c0de84fc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de8500:	4690      	mov	r8, r2
c0de8502:	4604      	mov	r4, r0
c0de8504:	b1c9      	cbz	r1, c0de853a <USBD_LL_DataOutStage+0x3e>
c0de8506:	469a      	mov	sl, r3
c0de8508:	460f      	mov	r7, r1
c0de850a:	2500      	movs	r5, #0
c0de850c:	2d03      	cmp	r5, #3
c0de850e:	d03f      	beq.n	c0de8590 <USBD_LL_DataOutStage+0x94>
c0de8510:	f000 f8e3 	bl	c0de86da <OUTLINED_FUNCTION_0>
c0de8514:	b178      	cbz	r0, c0de8536 <USBD_LL_DataOutStage+0x3a>
c0de8516:	f000 f8e9 	bl	c0de86ec <OUTLINED_FUNCTION_2>
c0de851a:	6980      	ldr	r0, [r0, #24]
c0de851c:	b158      	cbz	r0, c0de8536 <USBD_LL_DataOutStage+0x3a>
c0de851e:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8522:	2903      	cmp	r1, #3
c0de8524:	d107      	bne.n	c0de8536 <USBD_LL_DataOutStage+0x3a>
c0de8526:	f001 fd25 	bl	c0de9f74 <pic>
c0de852a:	4606      	mov	r6, r0
c0de852c:	4620      	mov	r0, r4
c0de852e:	4639      	mov	r1, r7
c0de8530:	4642      	mov	r2, r8
c0de8532:	4653      	mov	r3, sl
c0de8534:	47b0      	blx	r6
c0de8536:	3501      	adds	r5, #1
c0de8538:	e7e8      	b.n	c0de850c <USBD_LL_DataOutStage+0x10>
c0de853a:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0de853e:	2803      	cmp	r0, #3
c0de8540:	d126      	bne.n	c0de8590 <USBD_LL_DataOutStage+0x94>
c0de8542:	e9d4 1017 	ldrd	r1, r0, [r4, #92]	@ 0x5c
c0de8546:	4281      	cmp	r1, r0
c0de8548:	d90a      	bls.n	c0de8560 <USBD_LL_DataOutStage+0x64>
c0de854a:	1a09      	subs	r1, r1, r0
c0de854c:	65e1      	str	r1, [r4, #92]	@ 0x5c
c0de854e:	4281      	cmp	r1, r0
c0de8550:	bf38      	it	cc
c0de8552:	4608      	movcc	r0, r1
c0de8554:	b282      	uxth	r2, r0
c0de8556:	4641      	mov	r1, r8
c0de8558:	4620      	mov	r0, r4
c0de855a:	f000 fb28 	bl	c0de8bae <USBD_CtlContinueRx>
c0de855e:	e017      	b.n	c0de8590 <USBD_LL_DataOutStage+0x94>
c0de8560:	2500      	movs	r5, #0
c0de8562:	2d03      	cmp	r5, #3
c0de8564:	d011      	beq.n	c0de858a <USBD_LL_DataOutStage+0x8e>
c0de8566:	f000 f8b8 	bl	c0de86da <OUTLINED_FUNCTION_0>
c0de856a:	b160      	cbz	r0, c0de8586 <USBD_LL_DataOutStage+0x8a>
c0de856c:	f000 f8be 	bl	c0de86ec <OUTLINED_FUNCTION_2>
c0de8570:	6900      	ldr	r0, [r0, #16]
c0de8572:	b140      	cbz	r0, c0de8586 <USBD_LL_DataOutStage+0x8a>
c0de8574:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8578:	2903      	cmp	r1, #3
c0de857a:	d104      	bne.n	c0de8586 <USBD_LL_DataOutStage+0x8a>
c0de857c:	f001 fcfa 	bl	c0de9f74 <pic>
c0de8580:	4601      	mov	r1, r0
c0de8582:	4620      	mov	r0, r4
c0de8584:	4788      	blx	r1
c0de8586:	3501      	adds	r5, #1
c0de8588:	e7eb      	b.n	c0de8562 <USBD_LL_DataOutStage+0x66>
c0de858a:	4620      	mov	r0, r4
c0de858c:	f000 fb15 	bl	c0de8bba <USBD_CtlSendStatus>
c0de8590:	2000      	movs	r0, #0
c0de8592:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de8596 <USBD_LL_DataInStage>:
c0de8596:	b570      	push	{r4, r5, r6, lr}
c0de8598:	4604      	mov	r4, r0
c0de859a:	b1d1      	cbz	r1, c0de85d2 <USBD_LL_DataInStage+0x3c>
c0de859c:	460d      	mov	r5, r1
c0de859e:	2600      	movs	r6, #0
c0de85a0:	2e03      	cmp	r6, #3
c0de85a2:	d060      	beq.n	c0de8666 <USBD_LL_DataInStage+0xd0>
c0de85a4:	4620      	mov	r0, r4
c0de85a6:	4631      	mov	r1, r6
c0de85a8:	f000 f8a9 	bl	c0de86fe <usbd_is_valid_intf>
c0de85ac:	b178      	cbz	r0, c0de85ce <USBD_LL_DataInStage+0x38>
c0de85ae:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0de85b2:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de85b6:	6940      	ldr	r0, [r0, #20]
c0de85b8:	b148      	cbz	r0, c0de85ce <USBD_LL_DataInStage+0x38>
c0de85ba:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de85be:	2903      	cmp	r1, #3
c0de85c0:	d105      	bne.n	c0de85ce <USBD_LL_DataInStage+0x38>
c0de85c2:	f001 fcd7 	bl	c0de9f74 <pic>
c0de85c6:	4602      	mov	r2, r0
c0de85c8:	4620      	mov	r0, r4
c0de85ca:	4629      	mov	r1, r5
c0de85cc:	4790      	blx	r2
c0de85ce:	3601      	adds	r6, #1
c0de85d0:	e7e6      	b.n	c0de85a0 <USBD_LL_DataInStage+0xa>
c0de85d2:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0de85d6:	2802      	cmp	r0, #2
c0de85d8:	d13e      	bne.n	c0de8658 <USBD_LL_DataInStage+0xc2>
c0de85da:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0de85de:	4281      	cmp	r1, r0
c0de85e0:	d90b      	bls.n	c0de85fa <USBD_LL_DataInStage+0x64>
c0de85e2:	1a0a      	subs	r2, r1, r0
c0de85e4:	f8d4 10d0 	ldr.w	r1, [r4, #208]	@ 0xd0
c0de85e8:	61e2      	str	r2, [r4, #28]
c0de85ea:	b292      	uxth	r2, r2
c0de85ec:	4401      	add	r1, r0
c0de85ee:	4620      	mov	r0, r4
c0de85f0:	f8c4 10d0 	str.w	r1, [r4, #208]	@ 0xd0
c0de85f4:	f000 fad1 	bl	c0de8b9a <USBD_CtlContinueSendData>
c0de85f8:	e02e      	b.n	c0de8658 <USBD_LL_DataInStage+0xc2>
c0de85fa:	b1a0      	cbz	r0, c0de8626 <USBD_LL_DataInStage+0x90>
c0de85fc:	69a1      	ldr	r1, [r4, #24]
c0de85fe:	fbb1 f2f0 	udiv	r2, r1, r0
c0de8602:	fb02 1210 	mls	r2, r2, r0, r1
c0de8606:	b972      	cbnz	r2, c0de8626 <USBD_LL_DataInStage+0x90>
c0de8608:	4281      	cmp	r1, r0
c0de860a:	d30c      	bcc.n	c0de8626 <USBD_LL_DataInStage+0x90>
c0de860c:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
c0de8610:	4281      	cmp	r1, r0
c0de8612:	d208      	bcs.n	c0de8626 <USBD_LL_DataInStage+0x90>
c0de8614:	4620      	mov	r0, r4
c0de8616:	2100      	movs	r1, #0
c0de8618:	2200      	movs	r2, #0
c0de861a:	2500      	movs	r5, #0
c0de861c:	f000 fabd 	bl	c0de8b9a <USBD_CtlContinueSendData>
c0de8620:	f8c4 5098 	str.w	r5, [r4, #152]	@ 0x98
c0de8624:	e018      	b.n	c0de8658 <USBD_LL_DataInStage+0xc2>
c0de8626:	2500      	movs	r5, #0
c0de8628:	4620      	mov	r0, r4
c0de862a:	2d03      	cmp	r5, #3
c0de862c:	d012      	beq.n	c0de8654 <USBD_LL_DataInStage+0xbe>
c0de862e:	4629      	mov	r1, r5
c0de8630:	f000 f865 	bl	c0de86fe <usbd_is_valid_intf>
c0de8634:	b160      	cbz	r0, c0de8650 <USBD_LL_DataInStage+0xba>
c0de8636:	f000 f859 	bl	c0de86ec <OUTLINED_FUNCTION_2>
c0de863a:	68c0      	ldr	r0, [r0, #12]
c0de863c:	b140      	cbz	r0, c0de8650 <USBD_LL_DataInStage+0xba>
c0de863e:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8642:	2903      	cmp	r1, #3
c0de8644:	d104      	bne.n	c0de8650 <USBD_LL_DataInStage+0xba>
c0de8646:	f001 fc95 	bl	c0de9f74 <pic>
c0de864a:	4601      	mov	r1, r0
c0de864c:	4620      	mov	r0, r4
c0de864e:	4788      	blx	r1
c0de8650:	3501      	adds	r5, #1
c0de8652:	e7e9      	b.n	c0de8628 <USBD_LL_DataInStage+0x92>
c0de8654:	f000 fabc 	bl	c0de8bd0 <USBD_CtlReceiveStatus>
c0de8658:	f894 00a0 	ldrb.w	r0, [r4, #160]	@ 0xa0
c0de865c:	2801      	cmp	r0, #1
c0de865e:	bf04      	itt	eq
c0de8660:	2000      	moveq	r0, #0
c0de8662:	f884 00a0 	strbeq.w	r0, [r4, #160]	@ 0xa0
c0de8666:	2000      	movs	r0, #0
c0de8668:	bd70      	pop	{r4, r5, r6, pc}

c0de866a <USBD_LL_Reset>:
c0de866a:	b5b0      	push	{r4, r5, r7, lr}
c0de866c:	4604      	mov	r4, r0
c0de866e:	2001      	movs	r0, #1
c0de8670:	2500      	movs	r5, #0
c0de8672:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de8676:	2040      	movs	r0, #64	@ 0x40
c0de8678:	6220      	str	r0, [r4, #32]
c0de867a:	6620      	str	r0, [r4, #96]	@ 0x60
c0de867c:	2d03      	cmp	r5, #3
c0de867e:	bf04      	itt	eq
c0de8680:	2000      	moveq	r0, #0
c0de8682:	bdb0      	popeq	{r4, r5, r7, pc}
c0de8684:	f000 f829 	bl	c0de86da <OUTLINED_FUNCTION_0>
c0de8688:	b128      	cbz	r0, c0de8696 <USBD_LL_Reset+0x2c>
c0de868a:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de868e:	f000 f828 	bl	c0de86e2 <OUTLINED_FUNCTION_1>
c0de8692:	f000 f830 	bl	c0de86f6 <OUTLINED_FUNCTION_3>
c0de8696:	3501      	adds	r5, #1
c0de8698:	e7f0      	b.n	c0de867c <USBD_LL_Reset+0x12>

c0de869a <USBD_LL_SetSpeed>:
c0de869a:	7401      	strb	r1, [r0, #16]
c0de869c:	2000      	movs	r0, #0
c0de869e:	4770      	bx	lr

c0de86a0 <USBD_LL_Suspend>:
c0de86a0:	2000      	movs	r0, #0
c0de86a2:	4770      	bx	lr

c0de86a4 <USBD_LL_Resume>:
c0de86a4:	2000      	movs	r0, #0
c0de86a6:	4770      	bx	lr

c0de86a8 <USBD_LL_SOF>:
c0de86a8:	b5b0      	push	{r4, r5, r7, lr}
c0de86aa:	4604      	mov	r4, r0
c0de86ac:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de86b0:	2803      	cmp	r0, #3
c0de86b2:	d110      	bne.n	c0de86d6 <USBD_LL_SOF+0x2e>
c0de86b4:	2500      	movs	r5, #0
c0de86b6:	2d03      	cmp	r5, #3
c0de86b8:	d00d      	beq.n	c0de86d6 <USBD_LL_SOF+0x2e>
c0de86ba:	f000 f80e 	bl	c0de86da <OUTLINED_FUNCTION_0>
c0de86be:	b140      	cbz	r0, c0de86d2 <USBD_LL_SOF+0x2a>
c0de86c0:	f000 f814 	bl	c0de86ec <OUTLINED_FUNCTION_2>
c0de86c4:	69c0      	ldr	r0, [r0, #28]
c0de86c6:	b120      	cbz	r0, c0de86d2 <USBD_LL_SOF+0x2a>
c0de86c8:	f001 fc54 	bl	c0de9f74 <pic>
c0de86cc:	4601      	mov	r1, r0
c0de86ce:	4620      	mov	r0, r4
c0de86d0:	4788      	blx	r1
c0de86d2:	3501      	adds	r5, #1
c0de86d4:	e7ef      	b.n	c0de86b6 <USBD_LL_SOF+0xe>
c0de86d6:	2000      	movs	r0, #0
c0de86d8:	bdb0      	pop	{r4, r5, r7, pc}

c0de86da <OUTLINED_FUNCTION_0>:
c0de86da:	4620      	mov	r0, r4
c0de86dc:	4629      	mov	r1, r5
c0de86de:	f000 b80e 	b.w	c0de86fe <usbd_is_valid_intf>

c0de86e2 <OUTLINED_FUNCTION_1>:
c0de86e2:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de86e6:	6840      	ldr	r0, [r0, #4]
c0de86e8:	f001 bc44 	b.w	c0de9f74 <pic>

c0de86ec <OUTLINED_FUNCTION_2>:
c0de86ec:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de86f0:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de86f4:	4770      	bx	lr

c0de86f6 <OUTLINED_FUNCTION_3>:
c0de86f6:	7921      	ldrb	r1, [r4, #4]
c0de86f8:	4602      	mov	r2, r0
c0de86fa:	4620      	mov	r0, r4
c0de86fc:	4710      	bx	r2

c0de86fe <usbd_is_valid_intf>:
c0de86fe:	2902      	cmp	r1, #2
c0de8700:	bf84      	itt	hi
c0de8702:	2000      	movhi	r0, #0
c0de8704:	4770      	bxhi	lr
c0de8706:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de870a:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de870e:	2800      	cmp	r0, #0
c0de8710:	bf18      	it	ne
c0de8712:	2001      	movne	r0, #1
c0de8714:	4770      	bx	lr

c0de8716 <USBD_StdDevReq>:
c0de8716:	b580      	push	{r7, lr}
c0de8718:	784a      	ldrb	r2, [r1, #1]
c0de871a:	b172      	cbz	r2, c0de873a <USBD_StdDevReq+0x24>
c0de871c:	2a01      	cmp	r2, #1
c0de871e:	d00f      	beq.n	c0de8740 <USBD_StdDevReq+0x2a>
c0de8720:	2a03      	cmp	r2, #3
c0de8722:	d010      	beq.n	c0de8746 <USBD_StdDevReq+0x30>
c0de8724:	2a05      	cmp	r2, #5
c0de8726:	d011      	beq.n	c0de874c <USBD_StdDevReq+0x36>
c0de8728:	2a09      	cmp	r2, #9
c0de872a:	d012      	beq.n	c0de8752 <USBD_StdDevReq+0x3c>
c0de872c:	2a08      	cmp	r2, #8
c0de872e:	d013      	beq.n	c0de8758 <USBD_StdDevReq+0x42>
c0de8730:	2a06      	cmp	r2, #6
c0de8732:	d114      	bne.n	c0de875e <USBD_StdDevReq+0x48>
c0de8734:	f000 f817 	bl	c0de8766 <USBD_GetDescriptor>
c0de8738:	e013      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de873a:	f000 f8fd 	bl	c0de8938 <USBD_GetStatus>
c0de873e:	e010      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de8740:	f000 f937 	bl	c0de89b2 <USBD_ClrFeature>
c0de8744:	e00d      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de8746:	f000 f91b 	bl	c0de8980 <USBD_SetFeature>
c0de874a:	e00a      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de874c:	f000 f887 	bl	c0de885e <USBD_SetAddress>
c0de8750:	e007      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de8752:	f000 f8a5 	bl	c0de88a0 <USBD_SetConfig>
c0de8756:	e004      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de8758:	f000 f8da 	bl	c0de8910 <USBD_GetConfig>
c0de875c:	e001      	b.n	c0de8762 <USBD_StdDevReq+0x4c>
c0de875e:	f000 fc73 	bl	c0de9048 <USBD_CtlError>
c0de8762:	2000      	movs	r0, #0
c0de8764:	bd80      	pop	{r7, pc}

c0de8766 <USBD_GetDescriptor>:
c0de8766:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de8768:	460d      	mov	r5, r1
c0de876a:	8849      	ldrh	r1, [r1, #2]
c0de876c:	4604      	mov	r4, r0
c0de876e:	2000      	movs	r0, #0
c0de8770:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de8774:	0a08      	lsrs	r0, r1, #8
c0de8776:	2801      	cmp	r0, #1
c0de8778:	d025      	beq.n	c0de87c6 <USBD_GetDescriptor+0x60>
c0de877a:	2802      	cmp	r0, #2
c0de877c:	d02e      	beq.n	c0de87dc <USBD_GetDescriptor+0x76>
c0de877e:	2803      	cmp	r0, #3
c0de8780:	d00a      	beq.n	c0de8798 <USBD_GetDescriptor+0x32>
c0de8782:	2806      	cmp	r0, #6
c0de8784:	d031      	beq.n	c0de87ea <USBD_GetDescriptor+0x84>
c0de8786:	2807      	cmp	r0, #7
c0de8788:	d016      	beq.n	c0de87b8 <USBD_GetDescriptor+0x52>
c0de878a:	280f      	cmp	r0, #15
c0de878c:	d12f      	bne.n	c0de87ee <USBD_GetDescriptor+0x88>
c0de878e:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de8792:	69c0      	ldr	r0, [r0, #28]
c0de8794:	b9d0      	cbnz	r0, c0de87cc <USBD_GetDescriptor+0x66>
c0de8796:	e02a      	b.n	c0de87ee <USBD_GetDescriptor+0x88>
c0de8798:	b2c8      	uxtb	r0, r1
c0de879a:	2805      	cmp	r0, #5
c0de879c:	d04b      	beq.n	c0de8836 <USBD_GetDescriptor+0xd0>
c0de879e:	2801      	cmp	r0, #1
c0de87a0:	d04d      	beq.n	c0de883e <USBD_GetDescriptor+0xd8>
c0de87a2:	2802      	cmp	r0, #2
c0de87a4:	d04f      	beq.n	c0de8846 <USBD_GetDescriptor+0xe0>
c0de87a6:	2803      	cmp	r0, #3
c0de87a8:	d051      	beq.n	c0de884e <USBD_GetDescriptor+0xe8>
c0de87aa:	2804      	cmp	r0, #4
c0de87ac:	d053      	beq.n	c0de8856 <USBD_GetDescriptor+0xf0>
c0de87ae:	b9f0      	cbnz	r0, c0de87ee <USBD_GetDescriptor+0x88>
c0de87b0:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de87b4:	6840      	ldr	r0, [r0, #4]
c0de87b6:	e009      	b.n	c0de87cc <USBD_GetDescriptor+0x66>
c0de87b8:	7c20      	ldrb	r0, [r4, #16]
c0de87ba:	b9c0      	cbnz	r0, c0de87ee <USBD_GetDescriptor+0x88>
c0de87bc:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de87c0:	b1a8      	cbz	r0, c0de87ee <USBD_GetDescriptor+0x88>
c0de87c2:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de87c4:	e022      	b.n	c0de880c <USBD_GetDescriptor+0xa6>
c0de87c6:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de87ca:	6800      	ldr	r0, [r0, #0]
c0de87cc:	f001 fbd2 	bl	c0de9f74 <pic>
c0de87d0:	4602      	mov	r2, r0
c0de87d2:	7c20      	ldrb	r0, [r4, #16]
c0de87d4:	f10d 0106 	add.w	r1, sp, #6
c0de87d8:	4790      	blx	r2
c0de87da:	e01d      	b.n	c0de8818 <USBD_GetDescriptor+0xb2>
c0de87dc:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de87e0:	b158      	cbz	r0, c0de87fa <USBD_GetDescriptor+0x94>
c0de87e2:	7c21      	ldrb	r1, [r4, #16]
c0de87e4:	b189      	cbz	r1, c0de880a <USBD_GetDescriptor+0xa4>
c0de87e6:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de87e8:	e010      	b.n	c0de880c <USBD_GetDescriptor+0xa6>
c0de87ea:	7c20      	ldrb	r0, [r4, #16]
c0de87ec:	b138      	cbz	r0, c0de87fe <USBD_GetDescriptor+0x98>
c0de87ee:	4620      	mov	r0, r4
c0de87f0:	4629      	mov	r1, r5
c0de87f2:	e8bd 40bc 	ldmia.w	sp!, {r2, r3, r4, r5, r7, lr}
c0de87f6:	f000 bc27 	b.w	c0de9048 <USBD_CtlError>
c0de87fa:	2100      	movs	r1, #0
c0de87fc:	e00d      	b.n	c0de881a <USBD_GetDescriptor+0xb4>
c0de87fe:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de8802:	2800      	cmp	r0, #0
c0de8804:	d0f3      	beq.n	c0de87ee <USBD_GetDescriptor+0x88>
c0de8806:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de8808:	e000      	b.n	c0de880c <USBD_GetDescriptor+0xa6>
c0de880a:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de880c:	f001 fbb2 	bl	c0de9f74 <pic>
c0de8810:	4601      	mov	r1, r0
c0de8812:	f10d 0006 	add.w	r0, sp, #6
c0de8816:	4788      	blx	r1
c0de8818:	4601      	mov	r1, r0
c0de881a:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de881e:	b148      	cbz	r0, c0de8834 <USBD_GetDescriptor+0xce>
c0de8820:	88ea      	ldrh	r2, [r5, #6]
c0de8822:	b13a      	cbz	r2, c0de8834 <USBD_GetDescriptor+0xce>
c0de8824:	4290      	cmp	r0, r2
c0de8826:	bf38      	it	cc
c0de8828:	4602      	movcc	r2, r0
c0de882a:	4620      	mov	r0, r4
c0de882c:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de8830:	f000 f9a2 	bl	c0de8b78 <USBD_CtlSendData>
c0de8834:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de8836:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de883a:	6980      	ldr	r0, [r0, #24]
c0de883c:	e7c6      	b.n	c0de87cc <USBD_GetDescriptor+0x66>
c0de883e:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de8842:	6880      	ldr	r0, [r0, #8]
c0de8844:	e7c2      	b.n	c0de87cc <USBD_GetDescriptor+0x66>
c0de8846:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de884a:	68c0      	ldr	r0, [r0, #12]
c0de884c:	e7be      	b.n	c0de87cc <USBD_GetDescriptor+0x66>
c0de884e:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de8852:	6900      	ldr	r0, [r0, #16]
c0de8854:	e7ba      	b.n	c0de87cc <USBD_GetDescriptor+0x66>
c0de8856:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de885a:	6940      	ldr	r0, [r0, #20]
c0de885c:	e7b6      	b.n	c0de87cc <USBD_GetDescriptor+0x66>

c0de885e <USBD_SetAddress>:
c0de885e:	b5b0      	push	{r4, r5, r7, lr}
c0de8860:	4604      	mov	r4, r0
c0de8862:	8888      	ldrh	r0, [r1, #4]
c0de8864:	b928      	cbnz	r0, c0de8872 <USBD_SetAddress+0x14>
c0de8866:	88c8      	ldrh	r0, [r1, #6]
c0de8868:	b918      	cbnz	r0, c0de8872 <USBD_SetAddress+0x14>
c0de886a:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de886e:	2803      	cmp	r0, #3
c0de8870:	d104      	bne.n	c0de887c <USBD_SetAddress+0x1e>
c0de8872:	4620      	mov	r0, r4
c0de8874:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de8878:	f000 bbe6 	b.w	c0de9048 <USBD_CtlError>
c0de887c:	7888      	ldrb	r0, [r1, #2]
c0de887e:	f000 057f 	and.w	r5, r0, #127	@ 0x7f
c0de8882:	4620      	mov	r0, r4
c0de8884:	4629      	mov	r1, r5
c0de8886:	f884 509e 	strb.w	r5, [r4, #158]	@ 0x9e
c0de888a:	f000 fa77 	bl	c0de8d7c <USBD_LL_SetUSBAddress>
c0de888e:	f000 f96d 	bl	c0de8b6c <OUTLINED_FUNCTION_2>
c0de8892:	b10d      	cbz	r5, c0de8898 <USBD_SetAddress+0x3a>
c0de8894:	2002      	movs	r0, #2
c0de8896:	e000      	b.n	c0de889a <USBD_SetAddress+0x3c>
c0de8898:	2001      	movs	r0, #1
c0de889a:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de889e:	bdb0      	pop	{r4, r5, r7, pc}

c0de88a0 <USBD_SetConfig>:
c0de88a0:	b570      	push	{r4, r5, r6, lr}
c0de88a2:	788e      	ldrb	r6, [r1, #2]
c0de88a4:	460d      	mov	r5, r1
c0de88a6:	4604      	mov	r4, r0
c0de88a8:	2e02      	cmp	r6, #2
c0de88aa:	d21b      	bcs.n	c0de88e4 <USBD_SetConfig+0x44>
c0de88ac:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de88b0:	2803      	cmp	r0, #3
c0de88b2:	d007      	beq.n	c0de88c4 <USBD_SetConfig+0x24>
c0de88b4:	2802      	cmp	r0, #2
c0de88b6:	d115      	bne.n	c0de88e4 <USBD_SetConfig+0x44>
c0de88b8:	b32e      	cbz	r6, c0de8906 <USBD_SetConfig+0x66>
c0de88ba:	2003      	movs	r0, #3
c0de88bc:	6066      	str	r6, [r4, #4]
c0de88be:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de88c2:	e009      	b.n	c0de88d8 <USBD_SetConfig+0x38>
c0de88c4:	b1a6      	cbz	r6, c0de88f0 <USBD_SetConfig+0x50>
c0de88c6:	6860      	ldr	r0, [r4, #4]
c0de88c8:	2801      	cmp	r0, #1
c0de88ca:	d01c      	beq.n	c0de8906 <USBD_SetConfig+0x66>
c0de88cc:	b2c1      	uxtb	r1, r0
c0de88ce:	4620      	mov	r0, r4
c0de88d0:	f7ff fdd2 	bl	c0de8478 <USBD_ClrClassConfig>
c0de88d4:	2001      	movs	r0, #1
c0de88d6:	6060      	str	r0, [r4, #4]
c0de88d8:	4620      	mov	r0, r4
c0de88da:	4631      	mov	r1, r6
c0de88dc:	f7ff fdb2 	bl	c0de8444 <USBD_SetClassConfig>
c0de88e0:	2802      	cmp	r0, #2
c0de88e2:	d110      	bne.n	c0de8906 <USBD_SetConfig+0x66>
c0de88e4:	4620      	mov	r0, r4
c0de88e6:	4629      	mov	r1, r5
c0de88e8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de88ec:	f000 bbac 	b.w	c0de9048 <USBD_CtlError>
c0de88f0:	2000      	movs	r0, #0
c0de88f2:	4631      	mov	r1, r6
c0de88f4:	6060      	str	r0, [r4, #4]
c0de88f6:	2002      	movs	r0, #2
c0de88f8:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de88fc:	4620      	mov	r0, r4
c0de88fe:	f7ff fdbb 	bl	c0de8478 <USBD_ClrClassConfig>
c0de8902:	f000 f933 	bl	c0de8b6c <OUTLINED_FUNCTION_2>
c0de8906:	4620      	mov	r0, r4
c0de8908:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de890c:	f000 b955 	b.w	c0de8bba <USBD_CtlSendStatus>

c0de8910 <USBD_GetConfig>:
c0de8910:	88ca      	ldrh	r2, [r1, #6]
c0de8912:	2a01      	cmp	r2, #1
c0de8914:	d10a      	bne.n	c0de892c <USBD_GetConfig+0x1c>
c0de8916:	f890 209c 	ldrb.w	r2, [r0, #156]	@ 0x9c
c0de891a:	2a03      	cmp	r2, #3
c0de891c:	d008      	beq.n	c0de8930 <USBD_GetConfig+0x20>
c0de891e:	2a02      	cmp	r2, #2
c0de8920:	d104      	bne.n	c0de892c <USBD_GetConfig+0x1c>
c0de8922:	2200      	movs	r2, #0
c0de8924:	4601      	mov	r1, r0
c0de8926:	f841 2f08 	str.w	r2, [r1, #8]!
c0de892a:	e002      	b.n	c0de8932 <USBD_GetConfig+0x22>
c0de892c:	f000 bb8c 	b.w	c0de9048 <USBD_CtlError>
c0de8930:	1d01      	adds	r1, r0, #4
c0de8932:	2201      	movs	r2, #1
c0de8934:	f000 b920 	b.w	c0de8b78 <USBD_CtlSendData>

c0de8938 <USBD_GetStatus>:
c0de8938:	b5b0      	push	{r4, r5, r7, lr}
c0de893a:	4604      	mov	r4, r0
c0de893c:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de8940:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0de8944:	2802      	cmp	r0, #2
c0de8946:	d10d      	bne.n	c0de8964 <USBD_GetStatus+0x2c>
c0de8948:	2001      	movs	r0, #1
c0de894a:	4625      	mov	r5, r4
c0de894c:	f845 0f0c 	str.w	r0, [r5, #12]!
c0de8950:	f8d5 0098 	ldr.w	r0, [r5, #152]	@ 0x98
c0de8954:	b158      	cbz	r0, c0de896e <USBD_GetStatus+0x36>
c0de8956:	4620      	mov	r0, r4
c0de8958:	f000 f93a 	bl	c0de8bd0 <USBD_CtlReceiveStatus>
c0de895c:	68e0      	ldr	r0, [r4, #12]
c0de895e:	f040 0002 	orr.w	r0, r0, #2
c0de8962:	e005      	b.n	c0de8970 <USBD_GetStatus+0x38>
c0de8964:	4620      	mov	r0, r4
c0de8966:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de896a:	f000 bb6d 	b.w	c0de9048 <USBD_CtlError>
c0de896e:	2003      	movs	r0, #3
c0de8970:	60e0      	str	r0, [r4, #12]
c0de8972:	4620      	mov	r0, r4
c0de8974:	4629      	mov	r1, r5
c0de8976:	2202      	movs	r2, #2
c0de8978:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de897c:	f000 b8fc 	b.w	c0de8b78 <USBD_CtlSendData>

c0de8980 <USBD_SetFeature>:
c0de8980:	b5b0      	push	{r4, r5, r7, lr}
c0de8982:	4604      	mov	r4, r0
c0de8984:	8848      	ldrh	r0, [r1, #2]
c0de8986:	2801      	cmp	r0, #1
c0de8988:	bf18      	it	ne
c0de898a:	bdb0      	popne	{r4, r5, r7, pc}
c0de898c:	2001      	movs	r0, #1
c0de898e:	460d      	mov	r5, r1
c0de8990:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0de8994:	7908      	ldrb	r0, [r1, #4]
c0de8996:	2802      	cmp	r0, #2
c0de8998:	d806      	bhi.n	c0de89a8 <USBD_SetFeature+0x28>
c0de899a:	f000 f8e1 	bl	c0de8b60 <OUTLINED_FUNCTION_1>
c0de899e:	d003      	beq.n	c0de89a8 <USBD_SetFeature+0x28>
c0de89a0:	f000 f8e7 	bl	c0de8b72 <OUTLINED_FUNCTION_3>
c0de89a4:	f000 f8d8 	bl	c0de8b58 <OUTLINED_FUNCTION_0>
c0de89a8:	4620      	mov	r0, r4
c0de89aa:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de89ae:	f000 b904 	b.w	c0de8bba <USBD_CtlSendStatus>

c0de89b2 <USBD_ClrFeature>:
c0de89b2:	b5b0      	push	{r4, r5, r7, lr}
c0de89b4:	4604      	mov	r4, r0
c0de89b6:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de89ba:	460d      	mov	r5, r1
c0de89bc:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0de89c0:	2802      	cmp	r0, #2
c0de89c2:	d115      	bne.n	c0de89f0 <USBD_ClrFeature+0x3e>
c0de89c4:	8868      	ldrh	r0, [r5, #2]
c0de89c6:	2801      	cmp	r0, #1
c0de89c8:	bf18      	it	ne
c0de89ca:	bdb0      	popne	{r4, r5, r7, pc}
c0de89cc:	2000      	movs	r0, #0
c0de89ce:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0de89d2:	7928      	ldrb	r0, [r5, #4]
c0de89d4:	2802      	cmp	r0, #2
c0de89d6:	d806      	bhi.n	c0de89e6 <USBD_ClrFeature+0x34>
c0de89d8:	f000 f8c2 	bl	c0de8b60 <OUTLINED_FUNCTION_1>
c0de89dc:	d003      	beq.n	c0de89e6 <USBD_ClrFeature+0x34>
c0de89de:	f000 f8c8 	bl	c0de8b72 <OUTLINED_FUNCTION_3>
c0de89e2:	f000 f8b9 	bl	c0de8b58 <OUTLINED_FUNCTION_0>
c0de89e6:	4620      	mov	r0, r4
c0de89e8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de89ec:	f000 b8e5 	b.w	c0de8bba <USBD_CtlSendStatus>
c0de89f0:	4620      	mov	r0, r4
c0de89f2:	4629      	mov	r1, r5
c0de89f4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de89f8:	f000 bb26 	b.w	c0de9048 <USBD_CtlError>

c0de89fc <USBD_StdItfReq>:
c0de89fc:	b5b0      	push	{r4, r5, r7, lr}
c0de89fe:	4604      	mov	r4, r0
c0de8a00:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de8a04:	460d      	mov	r5, r1
c0de8a06:	2803      	cmp	r0, #3
c0de8a08:	d10e      	bne.n	c0de8a28 <USBD_StdItfReq+0x2c>
c0de8a0a:	7928      	ldrb	r0, [r5, #4]
c0de8a0c:	2802      	cmp	r0, #2
c0de8a0e:	d80b      	bhi.n	c0de8a28 <USBD_StdItfReq+0x2c>
c0de8a10:	f000 f8a6 	bl	c0de8b60 <OUTLINED_FUNCTION_1>
c0de8a14:	d008      	beq.n	c0de8a28 <USBD_StdItfReq+0x2c>
c0de8a16:	f000 f8ac 	bl	c0de8b72 <OUTLINED_FUNCTION_3>
c0de8a1a:	f000 f89d 	bl	c0de8b58 <OUTLINED_FUNCTION_0>
c0de8a1e:	88e8      	ldrh	r0, [r5, #6]
c0de8a20:	b930      	cbnz	r0, c0de8a30 <USBD_StdItfReq+0x34>
c0de8a22:	f000 f8a3 	bl	c0de8b6c <OUTLINED_FUNCTION_2>
c0de8a26:	e003      	b.n	c0de8a30 <USBD_StdItfReq+0x34>
c0de8a28:	4620      	mov	r0, r4
c0de8a2a:	4629      	mov	r1, r5
c0de8a2c:	f000 fb0c 	bl	c0de9048 <USBD_CtlError>
c0de8a30:	2000      	movs	r0, #0
c0de8a32:	bdb0      	pop	{r4, r5, r7, pc}

c0de8a34 <USBD_StdEPReq>:
c0de8a34:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de8a36:	460d      	mov	r5, r1
c0de8a38:	7909      	ldrb	r1, [r1, #4]
c0de8a3a:	4604      	mov	r4, r0
c0de8a3c:	f001 007f 	and.w	r0, r1, #127	@ 0x7f
c0de8a40:	2805      	cmp	r0, #5
c0de8a42:	d304      	bcc.n	c0de8a4e <USBD_StdEPReq+0x1a>
c0de8a44:	4620      	mov	r0, r4
c0de8a46:	4629      	mov	r1, r5
c0de8a48:	f000 fafe 	bl	c0de9048 <USBD_CtlError>
c0de8a4c:	e063      	b.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8a4e:	782a      	ldrb	r2, [r5, #0]
c0de8a50:	f002 0260 	and.w	r2, r2, #96	@ 0x60
c0de8a54:	2a20      	cmp	r2, #32
c0de8a56:	d10c      	bne.n	c0de8a72 <USBD_StdEPReq+0x3e>
c0de8a58:	2902      	cmp	r1, #2
c0de8a5a:	d80a      	bhi.n	c0de8a72 <USBD_StdEPReq+0x3e>
c0de8a5c:	eb04 02c1 	add.w	r2, r4, r1, lsl #3
c0de8a60:	f8d2 20b4 	ldr.w	r2, [r2, #180]	@ 0xb4
c0de8a64:	b12a      	cbz	r2, c0de8a72 <USBD_StdEPReq+0x3e>
c0de8a66:	6890      	ldr	r0, [r2, #8]
c0de8a68:	f001 fa84 	bl	c0de9f74 <pic>
c0de8a6c:	f000 f874 	bl	c0de8b58 <OUTLINED_FUNCTION_0>
c0de8a70:	e051      	b.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8a72:	786a      	ldrb	r2, [r5, #1]
c0de8a74:	b152      	cbz	r2, c0de8a8c <USBD_StdEPReq+0x58>
c0de8a76:	2a01      	cmp	r2, #1
c0de8a78:	d010      	beq.n	c0de8a9c <USBD_StdEPReq+0x68>
c0de8a7a:	2a03      	cmp	r2, #3
c0de8a7c:	d14b      	bne.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8a7e:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de8a82:	2803      	cmp	r0, #3
c0de8a84:	d016      	beq.n	c0de8ab4 <USBD_StdEPReq+0x80>
c0de8a86:	2802      	cmp	r0, #2
c0de8a88:	d00e      	beq.n	c0de8aa8 <USBD_StdEPReq+0x74>
c0de8a8a:	e7db      	b.n	c0de8a44 <USBD_StdEPReq+0x10>
c0de8a8c:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0de8a90:	2a03      	cmp	r2, #3
c0de8a92:	d023      	beq.n	c0de8adc <USBD_StdEPReq+0xa8>
c0de8a94:	2a02      	cmp	r2, #2
c0de8a96:	d1d5      	bne.n	c0de8a44 <USBD_StdEPReq+0x10>
c0de8a98:	b940      	cbnz	r0, c0de8aac <USBD_StdEPReq+0x78>
c0de8a9a:	e03c      	b.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8a9c:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0de8aa0:	2a03      	cmp	r2, #3
c0de8aa2:	d02a      	beq.n	c0de8afa <USBD_StdEPReq+0xc6>
c0de8aa4:	2a02      	cmp	r2, #2
c0de8aa6:	d1cd      	bne.n	c0de8a44 <USBD_StdEPReq+0x10>
c0de8aa8:	0648      	lsls	r0, r1, #25
c0de8aaa:	d034      	beq.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8aac:	4620      	mov	r0, r4
c0de8aae:	f000 f911 	bl	c0de8cd4 <USBD_LL_StallEP>
c0de8ab2:	e030      	b.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8ab4:	8868      	ldrh	r0, [r5, #2]
c0de8ab6:	b928      	cbnz	r0, c0de8ac4 <USBD_StdEPReq+0x90>
c0de8ab8:	0648      	lsls	r0, r1, #25
c0de8aba:	d003      	beq.n	c0de8ac4 <USBD_StdEPReq+0x90>
c0de8abc:	4620      	mov	r0, r4
c0de8abe:	f000 f909 	bl	c0de8cd4 <USBD_LL_StallEP>
c0de8ac2:	7929      	ldrb	r1, [r5, #4]
c0de8ac4:	2902      	cmp	r1, #2
c0de8ac6:	d824      	bhi.n	c0de8b12 <USBD_StdEPReq+0xde>
c0de8ac8:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de8acc:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de8ad0:	b1f8      	cbz	r0, c0de8b12 <USBD_StdEPReq+0xde>
c0de8ad2:	f000 f84e 	bl	c0de8b72 <OUTLINED_FUNCTION_3>
c0de8ad6:	f000 f83f 	bl	c0de8b58 <OUTLINED_FUNCTION_0>
c0de8ada:	e01a      	b.n	c0de8b12 <USBD_StdEPReq+0xde>
c0de8adc:	4620      	mov	r0, r4
c0de8ade:	f000 f939 	bl	c0de8d54 <USBD_LL_IsStallEP>
c0de8ae2:	2800      	cmp	r0, #0
c0de8ae4:	bf18      	it	ne
c0de8ae6:	2001      	movne	r0, #1
c0de8ae8:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de8aec:	f10d 0106 	add.w	r1, sp, #6
c0de8af0:	4620      	mov	r0, r4
c0de8af2:	2202      	movs	r2, #2
c0de8af4:	f000 f840 	bl	c0de8b78 <USBD_CtlSendData>
c0de8af8:	e00d      	b.n	c0de8b16 <USBD_StdEPReq+0xe2>
c0de8afa:	886a      	ldrh	r2, [r5, #2]
c0de8afc:	b95a      	cbnz	r2, c0de8b16 <USBD_StdEPReq+0xe2>
c0de8afe:	b140      	cbz	r0, c0de8b12 <USBD_StdEPReq+0xde>
c0de8b00:	4620      	mov	r0, r4
c0de8b02:	f000 f907 	bl	c0de8d14 <USBD_LL_ClearStallEP>
c0de8b06:	7928      	ldrb	r0, [r5, #4]
c0de8b08:	2802      	cmp	r0, #2
c0de8b0a:	d802      	bhi.n	c0de8b12 <USBD_StdEPReq+0xde>
c0de8b0c:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de8b10:	e7dc      	b.n	c0de8acc <USBD_StdEPReq+0x98>
c0de8b12:	f000 f82b 	bl	c0de8b6c <OUTLINED_FUNCTION_2>
c0de8b16:	2000      	movs	r0, #0
c0de8b18:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de8b1a <USBD_ParseSetupRequest>:
c0de8b1a:	780a      	ldrb	r2, [r1, #0]
c0de8b1c:	7002      	strb	r2, [r0, #0]
c0de8b1e:	784a      	ldrb	r2, [r1, #1]
c0de8b20:	7042      	strb	r2, [r0, #1]
c0de8b22:	788a      	ldrb	r2, [r1, #2]
c0de8b24:	78cb      	ldrb	r3, [r1, #3]
c0de8b26:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de8b2a:	8042      	strh	r2, [r0, #2]
c0de8b2c:	790a      	ldrb	r2, [r1, #4]
c0de8b2e:	794b      	ldrb	r3, [r1, #5]
c0de8b30:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de8b34:	8082      	strh	r2, [r0, #4]
c0de8b36:	798a      	ldrb	r2, [r1, #6]
c0de8b38:	79c9      	ldrb	r1, [r1, #7]
c0de8b3a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de8b3e:	80c1      	strh	r1, [r0, #6]
c0de8b40:	4770      	bx	lr

c0de8b42 <USBD_CtlStall>:
c0de8b42:	b510      	push	{r4, lr}
c0de8b44:	2180      	movs	r1, #128	@ 0x80
c0de8b46:	4604      	mov	r4, r0
c0de8b48:	f000 f8c4 	bl	c0de8cd4 <USBD_LL_StallEP>
c0de8b4c:	4620      	mov	r0, r4
c0de8b4e:	2100      	movs	r1, #0
c0de8b50:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8b54:	f000 b8be 	b.w	c0de8cd4 <USBD_LL_StallEP>

c0de8b58 <OUTLINED_FUNCTION_0>:
c0de8b58:	4602      	mov	r2, r0
c0de8b5a:	4620      	mov	r0, r4
c0de8b5c:	4629      	mov	r1, r5
c0de8b5e:	4710      	bx	r2

c0de8b60 <OUTLINED_FUNCTION_1>:
c0de8b60:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de8b64:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de8b68:	2800      	cmp	r0, #0
c0de8b6a:	4770      	bx	lr

c0de8b6c <OUTLINED_FUNCTION_2>:
c0de8b6c:	4620      	mov	r0, r4
c0de8b6e:	f000 b824 	b.w	c0de8bba <USBD_CtlSendStatus>

c0de8b72 <OUTLINED_FUNCTION_3>:
c0de8b72:	6880      	ldr	r0, [r0, #8]
c0de8b74:	f001 b9fe 	b.w	c0de9f74 <pic>

c0de8b78 <USBD_CtlSendData>:
c0de8b78:	b510      	push	{r4, lr}
c0de8b7a:	460c      	mov	r4, r1
c0de8b7c:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
c0de8b80:	2102      	movs	r1, #2
c0de8b82:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0de8b86:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de8b8a:	6a01      	ldr	r1, [r0, #32]
c0de8b8c:	4291      	cmp	r1, r2
c0de8b8e:	bf88      	it	hi
c0de8b90:	4611      	movhi	r1, r2
c0de8b92:	f000 f829 	bl	c0de8be8 <OUTLINED_FUNCTION_1>
c0de8b96:	2000      	movs	r0, #0
c0de8b98:	bd10      	pop	{r4, pc}

c0de8b9a <USBD_CtlContinueSendData>:
c0de8b9a:	b510      	push	{r4, lr}
c0de8b9c:	460c      	mov	r4, r1
c0de8b9e:	6a01      	ldr	r1, [r0, #32]
c0de8ba0:	4291      	cmp	r1, r2
c0de8ba2:	bf88      	it	hi
c0de8ba4:	4611      	movhi	r1, r2
c0de8ba6:	f000 f81f 	bl	c0de8be8 <OUTLINED_FUNCTION_1>
c0de8baa:	2000      	movs	r0, #0
c0de8bac:	bd10      	pop	{r4, pc}

c0de8bae <USBD_CtlContinueRx>:
c0de8bae:	b580      	push	{r7, lr}
c0de8bb0:	2100      	movs	r1, #0
c0de8bb2:	f000 f917 	bl	c0de8de4 <USBD_LL_PrepareReceive>
c0de8bb6:	2000      	movs	r0, #0
c0de8bb8:	bd80      	pop	{r7, pc}

c0de8bba <USBD_CtlSendStatus>:
c0de8bba:	b580      	push	{r7, lr}
c0de8bbc:	2104      	movs	r1, #4
c0de8bbe:	2200      	movs	r2, #0
c0de8bc0:	2300      	movs	r3, #0
c0de8bc2:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de8bc6:	2100      	movs	r1, #0
c0de8bc8:	f000 f8ee 	bl	c0de8da8 <USBD_LL_Transmit>
c0de8bcc:	2000      	movs	r0, #0
c0de8bce:	bd80      	pop	{r7, pc}

c0de8bd0 <USBD_CtlReceiveStatus>:
c0de8bd0:	b580      	push	{r7, lr}
c0de8bd2:	2105      	movs	r1, #5
c0de8bd4:	2200      	movs	r2, #0
c0de8bd6:	f000 f802 	bl	c0de8bde <OUTLINED_FUNCTION_0>
c0de8bda:	2000      	movs	r0, #0
c0de8bdc:	bd80      	pop	{r7, pc}

c0de8bde <OUTLINED_FUNCTION_0>:
c0de8bde:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de8be2:	2100      	movs	r1, #0
c0de8be4:	f000 b8fe 	b.w	c0de8de4 <USBD_LL_PrepareReceive>

c0de8be8 <OUTLINED_FUNCTION_1>:
c0de8be8:	b28b      	uxth	r3, r1
c0de8bea:	4622      	mov	r2, r4
c0de8bec:	2100      	movs	r1, #0
c0de8bee:	f000 b8db 	b.w	c0de8da8 <USBD_LL_Transmit>
	...

c0de8bf4 <USBD_LL_Init>:
c0de8bf4:	4804      	ldr	r0, [pc, #16]	@ (c0de8c08 <USBD_LL_Init+0x14>)
c0de8bf6:	2100      	movs	r1, #0
c0de8bf8:	f849 1000 	str.w	r1, [r9, r0]
c0de8bfc:	4803      	ldr	r0, [pc, #12]	@ (c0de8c0c <USBD_LL_Init+0x18>)
c0de8bfe:	f849 1000 	str.w	r1, [r9, r0]
c0de8c02:	2000      	movs	r0, #0
c0de8c04:	4770      	bx	lr
c0de8c06:	bf00      	nop
c0de8c08:	000019b4 	.word	0x000019b4
c0de8c0c:	000019b0 	.word	0x000019b0

c0de8c10 <USBD_LL_DeInit>:
c0de8c10:	b5e0      	push	{r5, r6, r7, lr}
c0de8c12:	f000 f90e 	bl	c0de8e32 <OUTLINED_FUNCTION_1>
c0de8c16:	a801      	add	r0, sp, #4
c0de8c18:	f001 fbd0 	bl	c0dea3bc <io_seph_send>
c0de8c1c:	2000      	movs	r0, #0
c0de8c1e:	bd8c      	pop	{r2, r3, r7, pc}

c0de8c20 <USBD_LL_Start>:
c0de8c20:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de8c22:	2003      	movs	r0, #3
c0de8c24:	f10d 0403 	add.w	r4, sp, #3
c0de8c28:	2500      	movs	r5, #0
c0de8c2a:	264f      	movs	r6, #79	@ 0x4f
c0de8c2c:	2105      	movs	r1, #5
c0de8c2e:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8c32:	2002      	movs	r0, #2
c0de8c34:	f88d 5007 	strb.w	r5, [sp, #7]
c0de8c38:	f88d 5004 	strb.w	r5, [sp, #4]
c0de8c3c:	f88d 6003 	strb.w	r6, [sp, #3]
c0de8c40:	f000 f905 	bl	c0de8e4e <OUTLINED_FUNCTION_2>
c0de8c44:	2001      	movs	r0, #1
c0de8c46:	2104      	movs	r1, #4
c0de8c48:	f88d 5004 	strb.w	r5, [sp, #4]
c0de8c4c:	f88d 6003 	strb.w	r6, [sp, #3]
c0de8c50:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8c54:	f000 f8fb 	bl	c0de8e4e <OUTLINED_FUNCTION_2>
c0de8c58:	2000      	movs	r0, #0
c0de8c5a:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}

c0de8c5c <USBD_LL_Stop>:
c0de8c5c:	b5e0      	push	{r5, r6, r7, lr}
c0de8c5e:	f000 f8e8 	bl	c0de8e32 <OUTLINED_FUNCTION_1>
c0de8c62:	a801      	add	r0, sp, #4
c0de8c64:	f001 fbaa 	bl	c0dea3bc <io_seph_send>
c0de8c68:	2000      	movs	r0, #0
c0de8c6a:	bd8c      	pop	{r2, r3, r7, pc}

c0de8c6c <USBD_LL_OpenEP>:
c0de8c6c:	b51c      	push	{r2, r3, r4, lr}
c0de8c6e:	4817      	ldr	r0, [pc, #92]	@ (c0de8ccc <USBD_LL_OpenEP+0x60>)
c0de8c70:	2400      	movs	r4, #0
c0de8c72:	f88d 1005 	strb.w	r1, [sp, #5]
c0de8c76:	2104      	movs	r1, #4
c0de8c78:	f88d 1003 	strb.w	r1, [sp, #3]
c0de8c7c:	2105      	movs	r1, #5
c0de8c7e:	f88d 4006 	strb.w	r4, [sp, #6]
c0de8c82:	f88d 4001 	strb.w	r4, [sp, #1]
c0de8c86:	f849 4000 	str.w	r4, [r9, r0]
c0de8c8a:	4811      	ldr	r0, [pc, #68]	@ (c0de8cd0 <USBD_LL_OpenEP+0x64>)
c0de8c8c:	f88d 1002 	strb.w	r1, [sp, #2]
c0de8c90:	214f      	movs	r1, #79	@ 0x4f
c0de8c92:	f88d 1000 	strb.w	r1, [sp]
c0de8c96:	f849 4000 	str.w	r4, [r9, r0]
c0de8c9a:	2001      	movs	r0, #1
c0de8c9c:	f88d 0004 	strb.w	r0, [sp, #4]
c0de8ca0:	b152      	cbz	r2, c0de8cb8 <USBD_LL_OpenEP+0x4c>
c0de8ca2:	2a03      	cmp	r2, #3
c0de8ca4:	d005      	beq.n	c0de8cb2 <USBD_LL_OpenEP+0x46>
c0de8ca6:	2a02      	cmp	r2, #2
c0de8ca8:	d005      	beq.n	c0de8cb6 <USBD_LL_OpenEP+0x4a>
c0de8caa:	2a01      	cmp	r2, #1
c0de8cac:	d106      	bne.n	c0de8cbc <USBD_LL_OpenEP+0x50>
c0de8cae:	2004      	movs	r0, #4
c0de8cb0:	e002      	b.n	c0de8cb8 <USBD_LL_OpenEP+0x4c>
c0de8cb2:	2002      	movs	r0, #2
c0de8cb4:	e000      	b.n	c0de8cb8 <USBD_LL_OpenEP+0x4c>
c0de8cb6:	2003      	movs	r0, #3
c0de8cb8:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8cbc:	4668      	mov	r0, sp
c0de8cbe:	2108      	movs	r1, #8
c0de8cc0:	f88d 3007 	strb.w	r3, [sp, #7]
c0de8cc4:	f001 fb7a 	bl	c0dea3bc <io_seph_send>
c0de8cc8:	2000      	movs	r0, #0
c0de8cca:	bd1c      	pop	{r2, r3, r4, pc}
c0de8ccc:	000019b0 	.word	0x000019b0
c0de8cd0:	000019b4 	.word	0x000019b4

c0de8cd4 <USBD_LL_StallEP>:
c0de8cd4:	b51c      	push	{r2, r3, r4, lr}
c0de8cd6:	460c      	mov	r4, r1
c0de8cd8:	2000      	movs	r0, #0
c0de8cda:	2140      	movs	r1, #64	@ 0x40
c0de8cdc:	f000 f89a 	bl	c0de8e14 <OUTLINED_FUNCTION_0>
c0de8ce0:	f10d 0002 	add.w	r0, sp, #2
c0de8ce4:	2106      	movs	r1, #6
c0de8ce6:	f001 fb69 	bl	c0dea3bc <io_seph_send>
c0de8cea:	4909      	ldr	r1, [pc, #36]	@ (c0de8d10 <USBD_LL_StallEP+0x3c>)
c0de8cec:	0622      	lsls	r2, r4, #24
c0de8cee:	4807      	ldr	r0, [pc, #28]	@ (c0de8d0c <USBD_LL_StallEP+0x38>)
c0de8cf0:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0de8cf4:	4449      	add	r1, r9
c0de8cf6:	bf58      	it	pl
c0de8cf8:	eb09 0100 	addpl.w	r1, r9, r0
c0de8cfc:	2301      	movs	r3, #1
c0de8cfe:	6808      	ldr	r0, [r1, #0]
c0de8d00:	fa03 f202 	lsl.w	r2, r3, r2
c0de8d04:	4310      	orrs	r0, r2
c0de8d06:	6008      	str	r0, [r1, #0]
c0de8d08:	2000      	movs	r0, #0
c0de8d0a:	bd1c      	pop	{r2, r3, r4, pc}
c0de8d0c:	000019b4 	.word	0x000019b4
c0de8d10:	000019b0 	.word	0x000019b0

c0de8d14 <USBD_LL_ClearStallEP>:
c0de8d14:	b51c      	push	{r2, r3, r4, lr}
c0de8d16:	460c      	mov	r4, r1
c0de8d18:	2000      	movs	r0, #0
c0de8d1a:	2180      	movs	r1, #128	@ 0x80
c0de8d1c:	f000 f87a 	bl	c0de8e14 <OUTLINED_FUNCTION_0>
c0de8d20:	f10d 0002 	add.w	r0, sp, #2
c0de8d24:	2106      	movs	r1, #6
c0de8d26:	f001 fb49 	bl	c0dea3bc <io_seph_send>
c0de8d2a:	4909      	ldr	r1, [pc, #36]	@ (c0de8d50 <USBD_LL_ClearStallEP+0x3c>)
c0de8d2c:	0622      	lsls	r2, r4, #24
c0de8d2e:	4807      	ldr	r0, [pc, #28]	@ (c0de8d4c <USBD_LL_ClearStallEP+0x38>)
c0de8d30:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0de8d34:	4449      	add	r1, r9
c0de8d36:	bf58      	it	pl
c0de8d38:	eb09 0100 	addpl.w	r1, r9, r0
c0de8d3c:	2301      	movs	r3, #1
c0de8d3e:	6808      	ldr	r0, [r1, #0]
c0de8d40:	fa03 f202 	lsl.w	r2, r3, r2
c0de8d44:	4390      	bics	r0, r2
c0de8d46:	6008      	str	r0, [r1, #0]
c0de8d48:	2000      	movs	r0, #0
c0de8d4a:	bd1c      	pop	{r2, r3, r4, pc}
c0de8d4c:	000019b4 	.word	0x000019b4
c0de8d50:	000019b0 	.word	0x000019b0

c0de8d54 <USBD_LL_IsStallEP>:
c0de8d54:	4a08      	ldr	r2, [pc, #32]	@ (c0de8d78 <USBD_LL_IsStallEP+0x24>)
c0de8d56:	060b      	lsls	r3, r1, #24
c0de8d58:	4806      	ldr	r0, [pc, #24]	@ (c0de8d74 <USBD_LL_IsStallEP+0x20>)
c0de8d5a:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de8d5e:	444a      	add	r2, r9
c0de8d60:	bf58      	it	pl
c0de8d62:	eb09 0200 	addpl.w	r2, r9, r0
c0de8d66:	7810      	ldrb	r0, [r2, #0]
c0de8d68:	2201      	movs	r2, #1
c0de8d6a:	fa02 f101 	lsl.w	r1, r2, r1
c0de8d6e:	4008      	ands	r0, r1
c0de8d70:	4770      	bx	lr
c0de8d72:	bf00      	nop
c0de8d74:	000019b4 	.word	0x000019b4
c0de8d78:	000019b0 	.word	0x000019b0

c0de8d7c <USBD_LL_SetUSBAddress>:
c0de8d7c:	b5e0      	push	{r5, r6, r7, lr}
c0de8d7e:	2003      	movs	r0, #3
c0de8d80:	f88d 1007 	strb.w	r1, [sp, #7]
c0de8d84:	2105      	movs	r1, #5
c0de8d86:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8d8a:	2002      	movs	r0, #2
c0de8d8c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de8d90:	2000      	movs	r0, #0
c0de8d92:	f88d 0004 	strb.w	r0, [sp, #4]
c0de8d96:	204f      	movs	r0, #79	@ 0x4f
c0de8d98:	f88d 0003 	strb.w	r0, [sp, #3]
c0de8d9c:	f10d 0003 	add.w	r0, sp, #3
c0de8da0:	f001 fb0c 	bl	c0dea3bc <io_seph_send>
c0de8da4:	2000      	movs	r0, #0
c0de8da6:	bd8c      	pop	{r2, r3, r7, pc}

c0de8da8 <USBD_LL_Transmit>:
c0de8da8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de8daa:	2020      	movs	r0, #32
c0de8dac:	f88d 1005 	strb.w	r1, [sp, #5]
c0de8db0:	2106      	movs	r1, #6
c0de8db2:	461c      	mov	r4, r3
c0de8db4:	4615      	mov	r5, r2
c0de8db6:	f88d 3007 	strb.w	r3, [sp, #7]
c0de8dba:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8dbe:	2050      	movs	r0, #80	@ 0x50
c0de8dc0:	f88d 0002 	strb.w	r0, [sp, #2]
c0de8dc4:	1cd8      	adds	r0, r3, #3
c0de8dc6:	f88d 0004 	strb.w	r0, [sp, #4]
c0de8dca:	0a00      	lsrs	r0, r0, #8
c0de8dcc:	f88d 0003 	strb.w	r0, [sp, #3]
c0de8dd0:	f10d 0002 	add.w	r0, sp, #2
c0de8dd4:	f001 faf2 	bl	c0dea3bc <io_seph_send>
c0de8dd8:	4628      	mov	r0, r5
c0de8dda:	4621      	mov	r1, r4
c0de8ddc:	f001 faee 	bl	c0dea3bc <io_seph_send>
c0de8de0:	2000      	movs	r0, #0
c0de8de2:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de8de4 <USBD_LL_PrepareReceive>:
c0de8de4:	b5e0      	push	{r5, r6, r7, lr}
c0de8de6:	2030      	movs	r0, #48	@ 0x30
c0de8de8:	f88d 1005 	strb.w	r1, [sp, #5]
c0de8dec:	2106      	movs	r1, #6
c0de8dee:	f88d 2007 	strb.w	r2, [sp, #7]
c0de8df2:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8df6:	2003      	movs	r0, #3
c0de8df8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de8dfc:	2000      	movs	r0, #0
c0de8dfe:	f88d 0003 	strb.w	r0, [sp, #3]
c0de8e02:	2050      	movs	r0, #80	@ 0x50
c0de8e04:	f88d 0002 	strb.w	r0, [sp, #2]
c0de8e08:	f10d 0002 	add.w	r0, sp, #2
c0de8e0c:	f001 fad6 	bl	c0dea3bc <io_seph_send>
c0de8e10:	2000      	movs	r0, #0
c0de8e12:	bd8c      	pop	{r2, r3, r7, pc}

c0de8e14 <OUTLINED_FUNCTION_0>:
c0de8e14:	f88d 1006 	strb.w	r1, [sp, #6]
c0de8e18:	2103      	movs	r1, #3
c0de8e1a:	f88d 0007 	strb.w	r0, [sp, #7]
c0de8e1e:	f88d 0003 	strb.w	r0, [sp, #3]
c0de8e22:	2050      	movs	r0, #80	@ 0x50
c0de8e24:	f88d 4005 	strb.w	r4, [sp, #5]
c0de8e28:	f88d 1004 	strb.w	r1, [sp, #4]
c0de8e2c:	f88d 0002 	strb.w	r0, [sp, #2]
c0de8e30:	4770      	bx	lr

c0de8e32 <OUTLINED_FUNCTION_1>:
c0de8e32:	2002      	movs	r0, #2
c0de8e34:	2104      	movs	r1, #4
c0de8e36:	f88d 0007 	strb.w	r0, [sp, #7]
c0de8e3a:	2001      	movs	r0, #1
c0de8e3c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8e40:	2000      	movs	r0, #0
c0de8e42:	f88d 0005 	strb.w	r0, [sp, #5]
c0de8e46:	204f      	movs	r0, #79	@ 0x4f
c0de8e48:	f88d 0004 	strb.w	r0, [sp, #4]
c0de8e4c:	4770      	bx	lr

c0de8e4e <OUTLINED_FUNCTION_2>:
c0de8e4e:	f88d 0005 	strb.w	r0, [sp, #5]
c0de8e52:	4620      	mov	r0, r4
c0de8e54:	f001 bab2 	b.w	c0dea3bc <io_seph_send>

c0de8e58 <USBD_HID_GetHidDescriptor_impl>:
c0de8e58:	4907      	ldr	r1, [pc, #28]	@ (c0de8e78 <USBD_HID_GetHidDescriptor_impl+0x20>)
c0de8e5a:	2200      	movs	r2, #0
c0de8e5c:	4449      	add	r1, r9
c0de8e5e:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0de8e62:	2900      	cmp	r1, #0
c0de8e64:	f04f 0100 	mov.w	r1, #0
c0de8e68:	bf08      	it	eq
c0de8e6a:	2109      	moveq	r1, #9
c0de8e6c:	8001      	strh	r1, [r0, #0]
c0de8e6e:	4803      	ldr	r0, [pc, #12]	@ (c0de8e7c <USBD_HID_GetHidDescriptor_impl+0x24>)
c0de8e70:	4478      	add	r0, pc
c0de8e72:	bf18      	it	ne
c0de8e74:	4610      	movne	r0, r2
c0de8e76:	4770      	bx	lr
c0de8e78:	000018dc 	.word	0x000018dc
c0de8e7c:	00002794 	.word	0x00002794

c0de8e80 <USBD_HID_GetReportDescriptor_impl>:
c0de8e80:	4907      	ldr	r1, [pc, #28]	@ (c0de8ea0 <USBD_HID_GetReportDescriptor_impl+0x20>)
c0de8e82:	2200      	movs	r2, #0
c0de8e84:	4449      	add	r1, r9
c0de8e86:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0de8e8a:	2900      	cmp	r1, #0
c0de8e8c:	f04f 0100 	mov.w	r1, #0
c0de8e90:	bf08      	it	eq
c0de8e92:	2122      	moveq	r1, #34	@ 0x22
c0de8e94:	8001      	strh	r1, [r0, #0]
c0de8e96:	4803      	ldr	r0, [pc, #12]	@ (c0de8ea4 <USBD_HID_GetReportDescriptor_impl+0x24>)
c0de8e98:	4478      	add	r0, pc
c0de8e9a:	bf18      	it	ne
c0de8e9c:	4610      	movne	r0, r2
c0de8e9e:	4770      	bx	lr
c0de8ea0:	000018dc 	.word	0x000018dc
c0de8ea4:	00002775 	.word	0x00002775

c0de8ea8 <USBD_HID_DataIn_impl>:
c0de8ea8:	2902      	cmp	r1, #2
c0de8eaa:	d106      	bne.n	c0de8eba <USBD_HID_DataIn_impl+0x12>
c0de8eac:	b580      	push	{r7, lr}
c0de8eae:	4804      	ldr	r0, [pc, #16]	@ (c0de8ec0 <USBD_HID_DataIn_impl+0x18>)
c0de8eb0:	4478      	add	r0, pc
c0de8eb2:	f000 fe33 	bl	c0de9b1c <io_usb_hid_sent>
c0de8eb6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8eba:	2000      	movs	r0, #0
c0de8ebc:	4770      	bx	lr
c0de8ebe:	bf00      	nop
c0de8ec0:	00000aa5 	.word	0x00000aa5

c0de8ec4 <USBD_HID_DataOut_impl>:
c0de8ec4:	b570      	push	{r4, r5, r6, lr}
c0de8ec6:	2902      	cmp	r1, #2
c0de8ec8:	d121      	bne.n	c0de8f0e <USBD_HID_DataOut_impl+0x4a>
c0de8eca:	4615      	mov	r5, r2
c0de8ecc:	2102      	movs	r1, #2
c0de8ece:	2240      	movs	r2, #64	@ 0x40
c0de8ed0:	461c      	mov	r4, r3
c0de8ed2:	f7ff ff87 	bl	c0de8de4 <USBD_LL_PrepareReceive>
c0de8ed6:	4e0f      	ldr	r6, [pc, #60]	@ (c0de8f14 <USBD_HID_DataOut_impl+0x50>)
c0de8ed8:	eb09 0006 	add.w	r0, r9, r6
c0de8edc:	7980      	ldrb	r0, [r0, #6]
c0de8ede:	b9b0      	cbnz	r0, c0de8f0e <USBD_HID_DataOut_impl+0x4a>
c0de8ee0:	2002      	movs	r0, #2
c0de8ee2:	f000 fcfb 	bl	c0de98dc <io_seproxyhal_get_ep_rx_size>
c0de8ee6:	4602      	mov	r2, r0
c0de8ee8:	480c      	ldr	r0, [pc, #48]	@ (c0de8f1c <USBD_HID_DataOut_impl+0x58>)
c0de8eea:	4629      	mov	r1, r5
c0de8eec:	4623      	mov	r3, r4
c0de8eee:	4478      	add	r0, pc
c0de8ef0:	f000 fd38 	bl	c0de9964 <io_usb_hid_receive>
c0de8ef4:	2802      	cmp	r0, #2
c0de8ef6:	d10a      	bne.n	c0de8f0e <USBD_HID_DataOut_impl+0x4a>
c0de8ef8:	2007      	movs	r0, #7
c0de8efa:	2101      	movs	r1, #1
c0de8efc:	f809 0006 	strb.w	r0, [r9, r6]
c0de8f00:	eb09 0006 	add.w	r0, r9, r6
c0de8f04:	7181      	strb	r1, [r0, #6]
c0de8f06:	4904      	ldr	r1, [pc, #16]	@ (c0de8f18 <USBD_HID_DataOut_impl+0x54>)
c0de8f08:	f859 1001 	ldr.w	r1, [r9, r1]
c0de8f0c:	8041      	strh	r1, [r0, #2]
c0de8f0e:	2000      	movs	r0, #0
c0de8f10:	bd70      	pop	{r4, r5, r6, pc}
c0de8f12:	bf00      	nop
c0de8f14:	00001ac0 	.word	0x00001ac0
c0de8f18:	00001b20 	.word	0x00001b20
c0de8f1c:	00000a67 	.word	0x00000a67

c0de8f20 <USBD_WEBUSB_Init>:
c0de8f20:	b510      	push	{r4, lr}
c0de8f22:	2183      	movs	r1, #131	@ 0x83
c0de8f24:	2203      	movs	r2, #3
c0de8f26:	2340      	movs	r3, #64	@ 0x40
c0de8f28:	4604      	mov	r4, r0
c0de8f2a:	f7ff fe9f 	bl	c0de8c6c <USBD_LL_OpenEP>
c0de8f2e:	4620      	mov	r0, r4
c0de8f30:	2103      	movs	r1, #3
c0de8f32:	2203      	movs	r2, #3
c0de8f34:	2340      	movs	r3, #64	@ 0x40
c0de8f36:	f7ff fe99 	bl	c0de8c6c <USBD_LL_OpenEP>
c0de8f3a:	4620      	mov	r0, r4
c0de8f3c:	2103      	movs	r1, #3
c0de8f3e:	2240      	movs	r2, #64	@ 0x40
c0de8f40:	f7ff ff50 	bl	c0de8de4 <USBD_LL_PrepareReceive>
c0de8f44:	2000      	movs	r0, #0
c0de8f46:	bd10      	pop	{r4, pc}

c0de8f48 <USBD_WEBUSB_DeInit>:
c0de8f48:	2000      	movs	r0, #0
c0de8f4a:	4770      	bx	lr

c0de8f4c <USBD_WEBUSB_Setup>:
c0de8f4c:	2000      	movs	r0, #0
c0de8f4e:	4770      	bx	lr

c0de8f50 <USBD_WEBUSB_DataIn>:
c0de8f50:	2903      	cmp	r1, #3
c0de8f52:	d106      	bne.n	c0de8f62 <USBD_WEBUSB_DataIn+0x12>
c0de8f54:	b580      	push	{r7, lr}
c0de8f56:	4804      	ldr	r0, [pc, #16]	@ (c0de8f68 <USBD_WEBUSB_DataIn+0x18>)
c0de8f58:	4478      	add	r0, pc
c0de8f5a:	f000 fddf 	bl	c0de9b1c <io_usb_hid_sent>
c0de8f5e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8f62:	2000      	movs	r0, #0
c0de8f64:	4770      	bx	lr
c0de8f66:	bf00      	nop
c0de8f68:	000004cd 	.word	0x000004cd

c0de8f6c <USBD_WEBUSB_DataOut>:
c0de8f6c:	b570      	push	{r4, r5, r6, lr}
c0de8f6e:	2903      	cmp	r1, #3
c0de8f70:	d121      	bne.n	c0de8fb6 <USBD_WEBUSB_DataOut+0x4a>
c0de8f72:	4615      	mov	r5, r2
c0de8f74:	2103      	movs	r1, #3
c0de8f76:	2240      	movs	r2, #64	@ 0x40
c0de8f78:	461c      	mov	r4, r3
c0de8f7a:	f7ff ff33 	bl	c0de8de4 <USBD_LL_PrepareReceive>
c0de8f7e:	4e0f      	ldr	r6, [pc, #60]	@ (c0de8fbc <USBD_WEBUSB_DataOut+0x50>)
c0de8f80:	eb09 0006 	add.w	r0, r9, r6
c0de8f84:	7980      	ldrb	r0, [r0, #6]
c0de8f86:	b9b0      	cbnz	r0, c0de8fb6 <USBD_WEBUSB_DataOut+0x4a>
c0de8f88:	2003      	movs	r0, #3
c0de8f8a:	f000 fca7 	bl	c0de98dc <io_seproxyhal_get_ep_rx_size>
c0de8f8e:	4602      	mov	r2, r0
c0de8f90:	480c      	ldr	r0, [pc, #48]	@ (c0de8fc4 <USBD_WEBUSB_DataOut+0x58>)
c0de8f92:	4629      	mov	r1, r5
c0de8f94:	4623      	mov	r3, r4
c0de8f96:	4478      	add	r0, pc
c0de8f98:	f000 fce4 	bl	c0de9964 <io_usb_hid_receive>
c0de8f9c:	2802      	cmp	r0, #2
c0de8f9e:	d10a      	bne.n	c0de8fb6 <USBD_WEBUSB_DataOut+0x4a>
c0de8fa0:	200b      	movs	r0, #11
c0de8fa2:	2105      	movs	r1, #5
c0de8fa4:	f809 0006 	strb.w	r0, [r9, r6]
c0de8fa8:	eb09 0006 	add.w	r0, r9, r6
c0de8fac:	7181      	strb	r1, [r0, #6]
c0de8fae:	4904      	ldr	r1, [pc, #16]	@ (c0de8fc0 <USBD_WEBUSB_DataOut+0x54>)
c0de8fb0:	f859 1001 	ldr.w	r1, [r9, r1]
c0de8fb4:	8041      	strh	r1, [r0, #2]
c0de8fb6:	2000      	movs	r0, #0
c0de8fb8:	bd70      	pop	{r4, r5, r6, pc}
c0de8fba:	bf00      	nop
c0de8fbc:	00001ac0 	.word	0x00001ac0
c0de8fc0:	00001b20 	.word	0x00001b20
c0de8fc4:	0000048f 	.word	0x0000048f

c0de8fc8 <USBD_DeviceDescriptor>:
c0de8fc8:	2012      	movs	r0, #18
c0de8fca:	8008      	strh	r0, [r1, #0]
c0de8fcc:	4801      	ldr	r0, [pc, #4]	@ (c0de8fd4 <USBD_DeviceDescriptor+0xc>)
c0de8fce:	4478      	add	r0, pc
c0de8fd0:	4770      	bx	lr
c0de8fd2:	bf00      	nop
c0de8fd4:	00002882 	.word	0x00002882

c0de8fd8 <USBD_LangIDStrDescriptor>:
c0de8fd8:	2004      	movs	r0, #4
c0de8fda:	8008      	strh	r0, [r1, #0]
c0de8fdc:	4801      	ldr	r0, [pc, #4]	@ (c0de8fe4 <USBD_LangIDStrDescriptor+0xc>)
c0de8fde:	4478      	add	r0, pc
c0de8fe0:	4770      	bx	lr
c0de8fe2:	bf00      	nop
c0de8fe4:	00002884 	.word	0x00002884

c0de8fe8 <USBD_ManufacturerStrDescriptor>:
c0de8fe8:	200e      	movs	r0, #14
c0de8fea:	8008      	strh	r0, [r1, #0]
c0de8fec:	4801      	ldr	r0, [pc, #4]	@ (c0de8ff4 <USBD_ManufacturerStrDescriptor+0xc>)
c0de8fee:	4478      	add	r0, pc
c0de8ff0:	4770      	bx	lr
c0de8ff2:	bf00      	nop
c0de8ff4:	00002878 	.word	0x00002878

c0de8ff8 <USBD_ProductStrDescriptor>:
c0de8ff8:	2018      	movs	r0, #24
c0de8ffa:	8008      	strh	r0, [r1, #0]
c0de8ffc:	4801      	ldr	r0, [pc, #4]	@ (c0de9004 <USBD_ProductStrDescriptor+0xc>)
c0de8ffe:	4478      	add	r0, pc
c0de9000:	4770      	bx	lr
c0de9002:	bf00      	nop
c0de9004:	00002876 	.word	0x00002876

c0de9008 <USBD_SerialStrDescriptor>:
c0de9008:	200a      	movs	r0, #10
c0de900a:	8008      	strh	r0, [r1, #0]
c0de900c:	4801      	ldr	r0, [pc, #4]	@ (c0de9014 <USBD_SerialStrDescriptor+0xc>)
c0de900e:	4478      	add	r0, pc
c0de9010:	4770      	bx	lr
c0de9012:	bf00      	nop
c0de9014:	0000287e 	.word	0x0000287e

c0de9018 <USBD_ConfigStrDescriptor>:
c0de9018:	2018      	movs	r0, #24
c0de901a:	8008      	strh	r0, [r1, #0]
c0de901c:	4801      	ldr	r0, [pc, #4]	@ (c0de9024 <USBD_ConfigStrDescriptor+0xc>)
c0de901e:	4478      	add	r0, pc
c0de9020:	4770      	bx	lr
c0de9022:	bf00      	nop
c0de9024:	00002856 	.word	0x00002856

c0de9028 <USBD_InterfaceStrDescriptor>:
c0de9028:	2018      	movs	r0, #24
c0de902a:	8008      	strh	r0, [r1, #0]
c0de902c:	4801      	ldr	r0, [pc, #4]	@ (c0de9034 <USBD_InterfaceStrDescriptor+0xc>)
c0de902e:	4478      	add	r0, pc
c0de9030:	4770      	bx	lr
c0de9032:	bf00      	nop
c0de9034:	00002846 	.word	0x00002846

c0de9038 <USBD_BOSDescriptor>:
c0de9038:	2039      	movs	r0, #57	@ 0x39
c0de903a:	8008      	strh	r0, [r1, #0]
c0de903c:	4801      	ldr	r0, [pc, #4]	@ (c0de9044 <USBD_BOSDescriptor+0xc>)
c0de903e:	4478      	add	r0, pc
c0de9040:	4770      	bx	lr
c0de9042:	bf00      	nop
c0de9044:	000025f1 	.word	0x000025f1

c0de9048 <USBD_CtlError>:
c0de9048:	b580      	push	{r7, lr}
c0de904a:	f991 2000 	ldrsb.w	r2, [r1]
c0de904e:	f1b2 3fff 	cmp.w	r2, #4294967295	@ 0xffffffff
c0de9052:	dd03      	ble.n	c0de905c <USBD_CtlError+0x14>
c0de9054:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9058:	f7ff bd73 	b.w	c0de8b42 <USBD_CtlStall>
c0de905c:	784a      	ldrb	r2, [r1, #1]
c0de905e:	2a77      	cmp	r2, #119	@ 0x77
c0de9060:	d00d      	beq.n	c0de907e <USBD_CtlError+0x36>
c0de9062:	2a06      	cmp	r2, #6
c0de9064:	d1f6      	bne.n	c0de9054 <USBD_CtlError+0xc>
c0de9066:	884a      	ldrh	r2, [r1, #2]
c0de9068:	f240 33ee 	movw	r3, #1006	@ 0x3ee
c0de906c:	429a      	cmp	r2, r3
c0de906e:	d1f1      	bne.n	c0de9054 <USBD_CtlError+0xc>
c0de9070:	88ca      	ldrh	r2, [r1, #6]
c0de9072:	2a12      	cmp	r2, #18
c0de9074:	bf28      	it	cs
c0de9076:	2212      	movcs	r2, #18
c0de9078:	4911      	ldr	r1, [pc, #68]	@ (c0de90c0 <USBD_CtlError+0x78>)
c0de907a:	4479      	add	r1, pc
c0de907c:	e01c      	b.n	c0de90b8 <USBD_CtlError+0x70>
c0de907e:	888a      	ldrh	r2, [r1, #4]
c0de9080:	2a04      	cmp	r2, #4
c0de9082:	d106      	bne.n	c0de9092 <USBD_CtlError+0x4a>
c0de9084:	88ca      	ldrh	r2, [r1, #6]
c0de9086:	2a28      	cmp	r2, #40	@ 0x28
c0de9088:	bf28      	it	cs
c0de908a:	2228      	movcs	r2, #40	@ 0x28
c0de908c:	490d      	ldr	r1, [pc, #52]	@ (c0de90c4 <USBD_CtlError+0x7c>)
c0de908e:	4479      	add	r1, pc
c0de9090:	e012      	b.n	c0de90b8 <USBD_CtlError+0x70>
c0de9092:	888a      	ldrh	r2, [r1, #4]
c0de9094:	2a05      	cmp	r2, #5
c0de9096:	d106      	bne.n	c0de90a6 <USBD_CtlError+0x5e>
c0de9098:	88ca      	ldrh	r2, [r1, #6]
c0de909a:	2a92      	cmp	r2, #146	@ 0x92
c0de909c:	bf28      	it	cs
c0de909e:	2292      	movcs	r2, #146	@ 0x92
c0de90a0:	4909      	ldr	r1, [pc, #36]	@ (c0de90c8 <USBD_CtlError+0x80>)
c0de90a2:	4479      	add	r1, pc
c0de90a4:	e008      	b.n	c0de90b8 <USBD_CtlError+0x70>
c0de90a6:	888a      	ldrh	r2, [r1, #4]
c0de90a8:	2a07      	cmp	r2, #7
c0de90aa:	d1d3      	bne.n	c0de9054 <USBD_CtlError+0xc>
c0de90ac:	88ca      	ldrh	r2, [r1, #6]
c0de90ae:	2ab2      	cmp	r2, #178	@ 0xb2
c0de90b0:	bf28      	it	cs
c0de90b2:	22b2      	movcs	r2, #178	@ 0xb2
c0de90b4:	4905      	ldr	r1, [pc, #20]	@ (c0de90cc <USBD_CtlError+0x84>)
c0de90b6:	4479      	add	r1, pc
c0de90b8:	f7ff fd5e 	bl	c0de8b78 <USBD_CtlSendData>
c0de90bc:	bd80      	pop	{r7, pc}
c0de90be:	bf00      	nop
c0de90c0:	0000260e 	.word	0x0000260e
c0de90c4:	00002808 	.word	0x00002808
c0de90c8:	000025f8 	.word	0x000025f8
c0de90cc:	00002676 	.word	0x00002676

c0de90d0 <USB_power>:
c0de90d0:	b5b0      	push	{r4, r5, r7, lr}
c0de90d2:	4d16      	ldr	r5, [pc, #88]	@ (c0de912c <USB_power+0x5c>)
c0de90d4:	4604      	mov	r4, r0
c0de90d6:	21d4      	movs	r1, #212	@ 0xd4
c0de90d8:	eb09 0005 	add.w	r0, r9, r5
c0de90dc:	f001 fb4a 	bl	c0dea774 <__aeabi_memclr>
c0de90e0:	4813      	ldr	r0, [pc, #76]	@ (c0de9130 <USB_power+0x60>)
c0de90e2:	2100      	movs	r1, #0
c0de90e4:	4448      	add	r0, r9
c0de90e6:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0de90ea:	6141      	str	r1, [r0, #20]
c0de90ec:	b1c4      	cbz	r4, c0de9120 <USB_power+0x50>
c0de90ee:	4911      	ldr	r1, [pc, #68]	@ (c0de9134 <USB_power+0x64>)
c0de90f0:	eb09 0405 	add.w	r4, r9, r5
c0de90f4:	2200      	movs	r2, #0
c0de90f6:	4620      	mov	r0, r4
c0de90f8:	4479      	add	r1, pc
c0de90fa:	f7ff f964 	bl	c0de83c6 <USBD_Init>
c0de90fe:	4a0e      	ldr	r2, [pc, #56]	@ (c0de9138 <USB_power+0x68>)
c0de9100:	2000      	movs	r0, #0
c0de9102:	4621      	mov	r1, r4
c0de9104:	447a      	add	r2, pc
c0de9106:	f7ff f98d 	bl	c0de8424 <USBD_RegisterClassForInterface>
c0de910a:	4a0c      	ldr	r2, [pc, #48]	@ (c0de913c <USB_power+0x6c>)
c0de910c:	2001      	movs	r0, #1
c0de910e:	4621      	mov	r1, r4
c0de9110:	447a      	add	r2, pc
c0de9112:	f7ff f987 	bl	c0de8424 <USBD_RegisterClassForInterface>
c0de9116:	4620      	mov	r0, r4
c0de9118:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de911c:	f7ff b98d 	b.w	c0de843a <USBD_Start>
c0de9120:	eb09 0005 	add.w	r0, r9, r5
c0de9124:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9128:	f7ff b963 	b.w	c0de83f2 <USBD_DeInit>
c0de912c:	000018dc 	.word	0x000018dc
c0de9130:	00001ac0 	.word	0x00001ac0
c0de9134:	00002570 	.word	0x00002570
c0de9138:	000026dc 	.word	0x000026dc
c0de913c:	00002708 	.word	0x00002708

c0de9140 <USBD_GetCfgDesc_impl>:
c0de9140:	2140      	movs	r1, #64	@ 0x40
c0de9142:	8001      	strh	r1, [r0, #0]
c0de9144:	4801      	ldr	r0, [pc, #4]	@ (c0de914c <USBD_GetCfgDesc_impl+0xc>)
c0de9146:	4478      	add	r0, pc
c0de9148:	4770      	bx	lr
c0de914a:	bf00      	nop
c0de914c:	0000277a 	.word	0x0000277a

c0de9150 <USBD_GetDeviceQualifierDesc_impl>:
c0de9150:	210a      	movs	r1, #10
c0de9152:	8001      	strh	r1, [r0, #0]
c0de9154:	4801      	ldr	r0, [pc, #4]	@ (c0de915c <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de9156:	4478      	add	r0, pc
c0de9158:	4770      	bx	lr
c0de915a:	bf00      	nop
c0de915c:	000027aa 	.word	0x000027aa

c0de9160 <ux_process_button_event>:
c0de9160:	b5b0      	push	{r4, r5, r7, lr}
c0de9162:	4604      	mov	r4, r0
c0de9164:	2001      	movs	r0, #1
c0de9166:	f000 f815 	bl	c0de9194 <ux_forward_event>
c0de916a:	4605      	mov	r5, r0
c0de916c:	f7fb faa0 	bl	c0de46b0 <nbgl_objAllowDrawing>
c0de9170:	b165      	cbz	r5, c0de918c <ux_process_button_event+0x2c>
c0de9172:	4807      	ldr	r0, [pc, #28]	@ (c0de9190 <ux_process_button_event+0x30>)
c0de9174:	2164      	movs	r1, #100	@ 0x64
c0de9176:	f859 0000 	ldr.w	r0, [r9, r0]
c0de917a:	4341      	muls	r1, r0
c0de917c:	78e0      	ldrb	r0, [r4, #3]
c0de917e:	0840      	lsrs	r0, r0, #1
c0de9180:	f7f9 fbcc 	bl	c0de291c <nbgl_buttonsHandler>
c0de9184:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9188:	f7fb ba6a 	b.w	c0de4660 <nbgl_refresh>
c0de918c:	bdb0      	pop	{r4, r5, r7, pc}
c0de918e:	bf00      	nop
c0de9190:	000019b8 	.word	0x000019b8

c0de9194 <ux_forward_event>:
c0de9194:	b5b0      	push	{r4, r5, r7, lr}
c0de9196:	4604      	mov	r4, r0
c0de9198:	4812      	ldr	r0, [pc, #72]	@ (c0de91e4 <ux_forward_event+0x50>)
c0de919a:	2101      	movs	r1, #1
c0de919c:	f809 1000 	strb.w	r1, [r9, r0]
c0de91a0:	eb09 0500 	add.w	r5, r9, r0
c0de91a4:	2000      	movs	r0, #0
c0de91a6:	6068      	str	r0, [r5, #4]
c0de91a8:	4628      	mov	r0, r5
c0de91aa:	f001 f8d7 	bl	c0dea35c <os_ux>
c0de91ae:	2004      	movs	r0, #4
c0de91b0:	f001 f934 	bl	c0dea41c <os_sched_last_status>
c0de91b4:	2869      	cmp	r0, #105	@ 0x69
c0de91b6:	6068      	str	r0, [r5, #4]
c0de91b8:	d108      	bne.n	c0de91cc <ux_forward_event+0x38>
c0de91ba:	2001      	movs	r0, #1
c0de91bc:	f7fb fa78 	bl	c0de46b0 <nbgl_objAllowDrawing>
c0de91c0:	f7fc fa70 	bl	c0de56a4 <nbgl_screenRedraw>
c0de91c4:	f7fb fa4c 	bl	c0de4660 <nbgl_refresh>
c0de91c8:	2000      	movs	r0, #0
c0de91ca:	bdb0      	pop	{r4, r5, r7, pc}
c0de91cc:	b144      	cbz	r4, c0de91e0 <ux_forward_event+0x4c>
c0de91ce:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de91d2:	bf18      	it	ne
c0de91d4:	2101      	movne	r1, #1
c0de91d6:	2800      	cmp	r0, #0
c0de91d8:	bf18      	it	ne
c0de91da:	2001      	movne	r0, #1
c0de91dc:	4008      	ands	r0, r1
c0de91de:	bdb0      	pop	{r4, r5, r7, pc}
c0de91e0:	2001      	movs	r0, #1
c0de91e2:	bdb0      	pop	{r4, r5, r7, pc}
c0de91e4:	000018c8 	.word	0x000018c8

c0de91e8 <ux_process_ticker_event>:
c0de91e8:	b510      	push	{r4, lr}
c0de91ea:	480a      	ldr	r0, [pc, #40]	@ (c0de9214 <ux_process_ticker_event+0x2c>)
c0de91ec:	f859 1000 	ldr.w	r1, [r9, r0]
c0de91f0:	3101      	adds	r1, #1
c0de91f2:	f849 1000 	str.w	r1, [r9, r0]
c0de91f6:	2001      	movs	r0, #1
c0de91f8:	f7ff ffcc 	bl	c0de9194 <ux_forward_event>
c0de91fc:	4604      	mov	r4, r0
c0de91fe:	f7fb fa57 	bl	c0de46b0 <nbgl_objAllowDrawing>
c0de9202:	2064      	movs	r0, #100	@ 0x64
c0de9204:	f7fc fc40 	bl	c0de5a88 <nbgl_screenHandler>
c0de9208:	b11c      	cbz	r4, c0de9212 <ux_process_ticker_event+0x2a>
c0de920a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de920e:	f7fb ba27 	b.w	c0de4660 <nbgl_refresh>
c0de9212:	bd10      	pop	{r4, pc}
c0de9214:	000019b8 	.word	0x000019b8

c0de9218 <ux_process_default_event>:
c0de9218:	2000      	movs	r0, #0
c0de921a:	f7ff bfbb 	b.w	c0de9194 <ux_forward_event>

c0de921e <hash_iovec_ex>:
c0de921e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de9222:	468a      	mov	sl, r1
c0de9224:	4611      	mov	r1, r2
c0de9226:	461a      	mov	r2, r3
c0de9228:	4605      	mov	r5, r0
c0de922a:	f000 f84d 	bl	c0de92c8 <cx_hash_init_ex>
c0de922e:	4607      	mov	r7, r0
c0de9230:	b9a8      	cbnz	r0, c0de925e <hash_iovec_ex+0x40>
c0de9232:	f10d 0820 	add.w	r8, sp, #32
c0de9236:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de923a:	1d04      	adds	r4, r0, #4
c0de923c:	b156      	cbz	r6, c0de9254 <hash_iovec_ex+0x36>
c0de923e:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de9242:	f854 2b08 	ldr.w	r2, [r4], #8
c0de9246:	4628      	mov	r0, r5
c0de9248:	f000 f843 	bl	c0de92d2 <cx_hash_update>
c0de924c:	3e01      	subs	r6, #1
c0de924e:	2800      	cmp	r0, #0
c0de9250:	d0f4      	beq.n	c0de923c <hash_iovec_ex+0x1e>
c0de9252:	e003      	b.n	c0de925c <hash_iovec_ex+0x3e>
c0de9254:	4628      	mov	r0, r5
c0de9256:	4641      	mov	r1, r8
c0de9258:	f000 f831 	bl	c0de92be <cx_hash_final>
c0de925c:	4607      	mov	r7, r0
c0de925e:	4628      	mov	r0, r5
c0de9260:	4651      	mov	r1, sl
c0de9262:	f001 fa93 	bl	c0dea78c <explicit_bzero>
c0de9266:	4638      	mov	r0, r7
c0de9268:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de926c <cx_keccak_256_hash_iovec>:
c0de926c:	b580      	push	{r7, lr}
c0de926e:	b0ee      	sub	sp, #440	@ 0x1b8
c0de9270:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de9274:	a804      	add	r0, sp, #16
c0de9276:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de927a:	2206      	movs	r2, #6
c0de927c:	2320      	movs	r3, #32
c0de927e:	f7ff ffce 	bl	c0de921e <hash_iovec_ex>
c0de9282:	b06e      	add	sp, #440	@ 0x1b8
c0de9284:	bd80      	pop	{r7, pc}

c0de9286 <cx_blake2b_512_hash_iovec>:
c0de9286:	b580      	push	{r7, lr}
c0de9288:	b0c4      	sub	sp, #272	@ 0x110
c0de928a:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de928e:	a804      	add	r0, sp, #16
c0de9290:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de9294:	2209      	movs	r2, #9
c0de9296:	2340      	movs	r3, #64	@ 0x40
c0de9298:	f7ff ffc1 	bl	c0de921e <hash_iovec_ex>
c0de929c:	b044      	add	sp, #272	@ 0x110
c0de929e:	bd80      	pop	{r7, pc}

c0de92a0 <cx_ecdsa_sign_no_throw>:
c0de92a0:	b403      	push	{r0, r1}
c0de92a2:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de92a6:	f000 b823 	b.w	c0de92f0 <cx_trampoline_helper>

c0de92aa <cx_ecfp_generate_pair2_no_throw>:
c0de92aa:	b403      	push	{r0, r1}
c0de92ac:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de92b0:	f000 b81e 	b.w	c0de92f0 <cx_trampoline_helper>

c0de92b4 <cx_ecfp_init_private_key_no_throw>:
c0de92b4:	b403      	push	{r0, r1}
c0de92b6:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de92ba:	f000 b819 	b.w	c0de92f0 <cx_trampoline_helper>

c0de92be <cx_hash_final>:
c0de92be:	b403      	push	{r0, r1}
c0de92c0:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de92c4:	f000 b814 	b.w	c0de92f0 <cx_trampoline_helper>

c0de92c8 <cx_hash_init_ex>:
c0de92c8:	b403      	push	{r0, r1}
c0de92ca:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de92ce:	f000 b80f 	b.w	c0de92f0 <cx_trampoline_helper>

c0de92d2 <cx_hash_update>:
c0de92d2:	b403      	push	{r0, r1}
c0de92d4:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de92d8:	f000 b80a 	b.w	c0de92f0 <cx_trampoline_helper>

c0de92dc <cx_rng_no_throw>:
c0de92dc:	b403      	push	{r0, r1}
c0de92de:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de92e2:	f000 b805 	b.w	c0de92f0 <cx_trampoline_helper>
	...

c0de92e8 <cx_aes_siv_reset>:
c0de92e8:	b403      	push	{r0, r1}
c0de92ea:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de92ee:	e7ff      	b.n	c0de92f0 <cx_trampoline_helper>

c0de92f0 <cx_trampoline_helper>:
c0de92f0:	4900      	ldr	r1, [pc, #0]	@ (c0de92f4 <cx_trampoline_helper+0x4>)
c0de92f2:	4708      	bx	r1
c0de92f4:	00810001 	.word	0x00810001

c0de92f8 <assert_exit>:
c0de92f8:	20ff      	movs	r0, #255	@ 0xff
c0de92fa:	f001 f855 	bl	c0dea3a8 <os_sched_exit>

c0de92fe <os_boot>:
c0de92fe:	2000      	movs	r0, #0
c0de9300:	f001 b882 	b.w	c0dea408 <try_context_set>

c0de9304 <os_longjmp>:
c0de9304:	4604      	mov	r4, r0
c0de9306:	f001 f877 	bl	c0dea3f8 <try_context_get>
c0de930a:	4621      	mov	r1, r4
c0de930c:	f001 fa7a 	bl	c0dea804 <longjmp>

c0de9310 <os_explicit_zero_BSS_segment>:
c0de9310:	4803      	ldr	r0, [pc, #12]	@ (c0de9320 <os_explicit_zero_BSS_segment+0x10>)
c0de9312:	4904      	ldr	r1, [pc, #16]	@ (c0de9324 <os_explicit_zero_BSS_segment+0x14>)
c0de9314:	4448      	add	r0, r9
c0de9316:	4449      	add	r1, r9
c0de9318:	1a09      	subs	r1, r1, r0
c0de931a:	f001 ba37 	b.w	c0dea78c <explicit_bzero>
c0de931e:	bf00      	nop
c0de9320:	00000000 	.word	0x00000000
c0de9324:	00001b30 	.word	0x00001b30

c0de9328 <io_seproxyhal_general_status>:
c0de9328:	4802      	ldr	r0, [pc, #8]	@ (c0de9334 <io_seproxyhal_general_status+0xc>)
c0de932a:	2105      	movs	r1, #5
c0de932c:	4478      	add	r0, pc
c0de932e:	f001 b845 	b.w	c0dea3bc <io_seph_send>
c0de9332:	bf00      	nop
c0de9334:	000025de 	.word	0x000025de

c0de9338 <io_seproxyhal_handle_usb_event>:
c0de9338:	b510      	push	{r4, lr}
c0de933a:	481a      	ldr	r0, [pc, #104]	@ (c0de93a4 <io_seproxyhal_handle_usb_event+0x6c>)
c0de933c:	4448      	add	r0, r9
c0de933e:	78c0      	ldrb	r0, [r0, #3]
c0de9340:	2808      	cmp	r0, #8
c0de9342:	d020      	beq.n	c0de9386 <io_seproxyhal_handle_usb_event+0x4e>
c0de9344:	2802      	cmp	r0, #2
c0de9346:	d018      	beq.n	c0de937a <io_seproxyhal_handle_usb_event+0x42>
c0de9348:	2804      	cmp	r0, #4
c0de934a:	d022      	beq.n	c0de9392 <io_seproxyhal_handle_usb_event+0x5a>
c0de934c:	2801      	cmp	r0, #1
c0de934e:	d113      	bne.n	c0de9378 <io_seproxyhal_handle_usb_event+0x40>
c0de9350:	4815      	ldr	r0, [pc, #84]	@ (c0de93a8 <io_seproxyhal_handle_usb_event+0x70>)
c0de9352:	2101      	movs	r1, #1
c0de9354:	eb09 0400 	add.w	r4, r9, r0
c0de9358:	4620      	mov	r0, r4
c0de935a:	f7ff f99e 	bl	c0de869a <USBD_LL_SetSpeed>
c0de935e:	4620      	mov	r0, r4
c0de9360:	f7ff f983 	bl	c0de866a <USBD_LL_Reset>
c0de9364:	4811      	ldr	r0, [pc, #68]	@ (c0de93ac <io_seproxyhal_handle_usb_event+0x74>)
c0de9366:	eb09 0100 	add.w	r1, r9, r0
c0de936a:	7989      	ldrb	r1, [r1, #6]
c0de936c:	b9b9      	cbnz	r1, c0de939e <io_seproxyhal_handle_usb_event+0x66>
c0de936e:	4448      	add	r0, r9
c0de9370:	2100      	movs	r1, #0
c0de9372:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0de9376:	6141      	str	r1, [r0, #20]
c0de9378:	bd10      	pop	{r4, pc}
c0de937a:	480b      	ldr	r0, [pc, #44]	@ (c0de93a8 <io_seproxyhal_handle_usb_event+0x70>)
c0de937c:	4448      	add	r0, r9
c0de937e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9382:	f7ff b991 	b.w	c0de86a8 <USBD_LL_SOF>
c0de9386:	4808      	ldr	r0, [pc, #32]	@ (c0de93a8 <io_seproxyhal_handle_usb_event+0x70>)
c0de9388:	4448      	add	r0, r9
c0de938a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de938e:	f7ff b989 	b.w	c0de86a4 <USBD_LL_Resume>
c0de9392:	4805      	ldr	r0, [pc, #20]	@ (c0de93a8 <io_seproxyhal_handle_usb_event+0x70>)
c0de9394:	4448      	add	r0, r9
c0de9396:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de939a:	f7ff b981 	b.w	c0de86a0 <USBD_LL_Suspend>
c0de939e:	2005      	movs	r0, #5
c0de93a0:	f7ff ffb0 	bl	c0de9304 <os_longjmp>
c0de93a4:	00001794 	.word	0x00001794
c0de93a8:	000018dc 	.word	0x000018dc
c0de93ac:	00001ac0 	.word	0x00001ac0

c0de93b0 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de93b0:	b580      	push	{r7, lr}
c0de93b2:	4a1a      	ldr	r2, [pc, #104]	@ (c0de941c <io_seproxyhal_handle_usb_ep_xfer_event+0x6c>)
c0de93b4:	eb09 0002 	add.w	r0, r9, r2
c0de93b8:	78c1      	ldrb	r1, [r0, #3]
c0de93ba:	7900      	ldrb	r0, [r0, #4]
c0de93bc:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de93c0:	2804      	cmp	r0, #4
c0de93c2:	d01b      	beq.n	c0de93fc <io_seproxyhal_handle_usb_ep_xfer_event+0x4c>
c0de93c4:	2802      	cmp	r0, #2
c0de93c6:	d00a      	beq.n	c0de93de <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0de93c8:	2801      	cmp	r0, #1
c0de93ca:	d125      	bne.n	c0de9418 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de93cc:	4815      	ldr	r0, [pc, #84]	@ (c0de9424 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de93ce:	eb09 0102 	add.w	r1, r9, r2
c0de93d2:	3106      	adds	r1, #6
c0de93d4:	4448      	add	r0, r9
c0de93d6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de93da:	f7ff b864 	b.w	c0de84a6 <USBD_LL_SetupStage>
c0de93de:	2903      	cmp	r1, #3
c0de93e0:	d81a      	bhi.n	c0de9418 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de93e2:	480f      	ldr	r0, [pc, #60]	@ (c0de9420 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de93e4:	2300      	movs	r3, #0
c0de93e6:	444a      	add	r2, r9
c0de93e8:	3206      	adds	r2, #6
c0de93ea:	4448      	add	r0, r9
c0de93ec:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de93f0:	8203      	strh	r3, [r0, #16]
c0de93f2:	480c      	ldr	r0, [pc, #48]	@ (c0de9424 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de93f4:	4448      	add	r0, r9
c0de93f6:	f7ff f8ce 	bl	c0de8596 <USBD_LL_DataInStage>
c0de93fa:	bd80      	pop	{r7, pc}
c0de93fc:	2903      	cmp	r1, #3
c0de93fe:	d80b      	bhi.n	c0de9418 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de9400:	4807      	ldr	r0, [pc, #28]	@ (c0de9420 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de9402:	444a      	add	r2, r9
c0de9404:	7953      	ldrb	r3, [r2, #5]
c0de9406:	3206      	adds	r2, #6
c0de9408:	4448      	add	r0, r9
c0de940a:	4408      	add	r0, r1
c0de940c:	7303      	strb	r3, [r0, #12]
c0de940e:	4805      	ldr	r0, [pc, #20]	@ (c0de9424 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de9410:	2300      	movs	r3, #0
c0de9412:	4448      	add	r0, r9
c0de9414:	f7ff f872 	bl	c0de84fc <USBD_LL_DataOutStage>
c0de9418:	bd80      	pop	{r7, pc}
c0de941a:	bf00      	nop
c0de941c:	00001794 	.word	0x00001794
c0de9420:	00001ac0 	.word	0x00001ac0
c0de9424:	000018dc 	.word	0x000018dc

c0de9428 <io_usb_send_apdu_data_ep0x83>:
c0de9428:	460a      	mov	r2, r1
c0de942a:	4601      	mov	r1, r0
c0de942c:	2083      	movs	r0, #131	@ 0x83
c0de942e:	2314      	movs	r3, #20
c0de9430:	f000 ba62 	b.w	c0de98f8 <io_usb_send_ep>

c0de9434 <io_seproxyhal_handle_capdu_event>:
c0de9434:	480d      	ldr	r0, [pc, #52]	@ (c0de946c <io_seproxyhal_handle_capdu_event+0x38>)
c0de9436:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de943a:	b101      	cbz	r1, c0de943e <io_seproxyhal_handle_capdu_event+0xa>
c0de943c:	4770      	bx	lr
c0de943e:	210a      	movs	r1, #10
c0de9440:	f809 1000 	strb.w	r1, [r9, r0]
c0de9444:	4448      	add	r0, r9
c0de9446:	2106      	movs	r1, #6
c0de9448:	7181      	strb	r1, [r0, #6]
c0de944a:	4909      	ldr	r1, [pc, #36]	@ (c0de9470 <io_seproxyhal_handle_capdu_event+0x3c>)
c0de944c:	4449      	add	r1, r9
c0de944e:	784a      	ldrb	r2, [r1, #1]
c0de9450:	788b      	ldrb	r3, [r1, #2]
c0de9452:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de9456:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de945a:	bf88      	it	hi
c0de945c:	f240 1201 	movwhi	r2, #257	@ 0x101
c0de9460:	8042      	strh	r2, [r0, #2]
c0de9462:	4804      	ldr	r0, [pc, #16]	@ (c0de9474 <io_seproxyhal_handle_capdu_event+0x40>)
c0de9464:	3103      	adds	r1, #3
c0de9466:	4448      	add	r0, r9
c0de9468:	f001 b987 	b.w	c0dea77a <__aeabi_memcpy>
c0de946c:	00001ac0 	.word	0x00001ac0
c0de9470:	00001794 	.word	0x00001794
c0de9474:	000019bc 	.word	0x000019bc

c0de9478 <io_seproxyhal_handle_event>:
c0de9478:	b510      	push	{r4, lr}
c0de947a:	492b      	ldr	r1, [pc, #172]	@ (c0de9528 <io_seproxyhal_handle_event+0xb0>)
c0de947c:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de9480:	280e      	cmp	r0, #14
c0de9482:	d011      	beq.n	c0de94a8 <io_seproxyhal_handle_event+0x30>
c0de9484:	281a      	cmp	r0, #26
c0de9486:	d029      	beq.n	c0de94dc <io_seproxyhal_handle_event+0x64>
c0de9488:	4449      	add	r1, r9
c0de948a:	2810      	cmp	r0, #16
c0de948c:	784a      	ldrb	r2, [r1, #1]
c0de948e:	7889      	ldrb	r1, [r1, #2]
c0de9490:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de9494:	d035      	beq.n	c0de9502 <io_seproxyhal_handle_event+0x8a>
c0de9496:	2816      	cmp	r0, #22
c0de9498:	d037      	beq.n	c0de950a <io_seproxyhal_handle_event+0x92>
c0de949a:	280f      	cmp	r0, #15
c0de949c:	d12c      	bne.n	c0de94f8 <io_seproxyhal_handle_event+0x80>
c0de949e:	2901      	cmp	r1, #1
c0de94a0:	d131      	bne.n	c0de9506 <io_seproxyhal_handle_event+0x8e>
c0de94a2:	f7ff ff49 	bl	c0de9338 <io_seproxyhal_handle_usb_event>
c0de94a6:	e035      	b.n	c0de9514 <io_seproxyhal_handle_event+0x9c>
c0de94a8:	4820      	ldr	r0, [pc, #128]	@ (c0de952c <io_seproxyhal_handle_event+0xb4>)
c0de94aa:	eb09 0100 	add.w	r1, r9, r0
c0de94ae:	688a      	ldr	r2, [r1, #8]
c0de94b0:	3264      	adds	r2, #100	@ 0x64
c0de94b2:	608a      	str	r2, [r1, #8]
c0de94b4:	210b      	movs	r1, #11
c0de94b6:	2907      	cmp	r1, #7
c0de94b8:	d01e      	beq.n	c0de94f8 <io_seproxyhal_handle_event+0x80>
c0de94ba:	eb09 0200 	add.w	r2, r9, r0
c0de94be:	f832 2011 	ldrh.w	r2, [r2, r1, lsl #1]
c0de94c2:	b14a      	cbz	r2, c0de94d8 <io_seproxyhal_handle_event+0x60>
c0de94c4:	f1b2 0364 	subs.w	r3, r2, #100	@ 0x64
c0de94c8:	eb09 0400 	add.w	r4, r9, r0
c0de94cc:	bf38      	it	cc
c0de94ce:	2300      	movcc	r3, #0
c0de94d0:	2a65      	cmp	r2, #101	@ 0x65
c0de94d2:	f824 3011 	strh.w	r3, [r4, r1, lsl #1]
c0de94d6:	d320      	bcc.n	c0de951a <io_seproxyhal_handle_event+0xa2>
c0de94d8:	3901      	subs	r1, #1
c0de94da:	e7ec      	b.n	c0de94b6 <io_seproxyhal_handle_event+0x3e>
c0de94dc:	eb09 0001 	add.w	r0, r9, r1
c0de94e0:	78c0      	ldrb	r0, [r0, #3]
c0de94e2:	2803      	cmp	r0, #3
c0de94e4:	d108      	bne.n	c0de94f8 <io_seproxyhal_handle_event+0x80>
c0de94e6:	2001      	movs	r0, #1
c0de94e8:	2401      	movs	r4, #1
c0de94ea:	f7fb f8e1 	bl	c0de46b0 <nbgl_objAllowDrawing>
c0de94ee:	f7fc f8d9 	bl	c0de56a4 <nbgl_screenRedraw>
c0de94f2:	f7fb f8b5 	bl	c0de4660 <nbgl_refresh>
c0de94f6:	e00e      	b.n	c0de9516 <io_seproxyhal_handle_event+0x9e>
c0de94f8:	2002      	movs	r0, #2
c0de94fa:	f7fe fc95 	bl	c0de7e28 <io_event>
c0de94fe:	4604      	mov	r4, r0
c0de9500:	e009      	b.n	c0de9516 <io_seproxyhal_handle_event+0x9e>
c0de9502:	2903      	cmp	r1, #3
c0de9504:	d204      	bcs.n	c0de9510 <io_seproxyhal_handle_event+0x98>
c0de9506:	2400      	movs	r4, #0
c0de9508:	e005      	b.n	c0de9516 <io_seproxyhal_handle_event+0x9e>
c0de950a:	f7ff ff93 	bl	c0de9434 <io_seproxyhal_handle_capdu_event>
c0de950e:	e001      	b.n	c0de9514 <io_seproxyhal_handle_event+0x9c>
c0de9510:	f7ff ff4e 	bl	c0de93b0 <io_seproxyhal_handle_usb_ep_xfer_event>
c0de9514:	2401      	movs	r4, #1
c0de9516:	4620      	mov	r0, r4
c0de9518:	bd10      	pop	{r4, pc}
c0de951a:	2100      	movs	r1, #0
c0de951c:	f809 1000 	strb.w	r1, [r9, r0]
c0de9520:	2005      	movs	r0, #5
c0de9522:	f7ff feef 	bl	c0de9304 <os_longjmp>
c0de9526:	bf00      	nop
c0de9528:	00001794 	.word	0x00001794
c0de952c:	00001ac0 	.word	0x00001ac0

c0de9530 <io_seproxyhal_init>:
c0de9530:	b5b0      	push	{r4, r5, r7, lr}
c0de9532:	4c10      	ldr	r4, [pc, #64]	@ (c0de9574 <io_seproxyhal_init+0x44>)
c0de9534:	2500      	movs	r5, #0
c0de9536:	2008      	movs	r0, #8
c0de9538:	f849 5004 	str.w	r5, [r9, r4]
c0de953c:	f809 0004 	strb.w	r0, [r9, r4]
c0de9540:	eb09 0004 	add.w	r0, r9, r4
c0de9544:	e9c0 5501 	strd	r5, r5, [r0, #4]
c0de9548:	2d01      	cmp	r5, #1
c0de954a:	d809      	bhi.n	c0de9560 <io_seproxyhal_init+0x30>
c0de954c:	eb09 0004 	add.w	r0, r9, r4
c0de9550:	f000 ff04 	bl	c0dea35c <os_ux>
c0de9554:	2004      	movs	r0, #4
c0de9556:	f000 ff61 	bl	c0dea41c <os_sched_last_status>
c0de955a:	3501      	adds	r5, #1
c0de955c:	28aa      	cmp	r0, #170	@ 0xaa
c0de955e:	d1f3      	bne.n	c0de9548 <io_seproxyhal_init+0x18>
c0de9560:	4805      	ldr	r0, [pc, #20]	@ (c0de9578 <io_seproxyhal_init+0x48>)
c0de9562:	211c      	movs	r1, #28
c0de9564:	4448      	add	r0, r9
c0de9566:	f001 f905 	bl	c0dea774 <__aeabi_memclr>
c0de956a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de956e:	f000 bac3 	b.w	c0de9af8 <io_usb_hid_init>
c0de9572:	bf00      	nop
c0de9574:	000018c8 	.word	0x000018c8
c0de9578:	00001ac0 	.word	0x00001ac0

c0de957c <os_io_seproxyhal_get_app_name_and_version>:
c0de957c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de957e:	4811      	ldr	r0, [pc, #68]	@ (c0de95c4 <os_io_seproxyhal_get_app_name_and_version+0x48>)
c0de9580:	2501      	movs	r5, #1
c0de9582:	f44f 7281 	mov.w	r2, #258	@ 0x102
c0de9586:	eb09 0600 	add.w	r6, r9, r0
c0de958a:	f809 5000 	strb.w	r5, [r9, r0]
c0de958e:	2001      	movs	r0, #1
c0de9590:	1cb1      	adds	r1, r6, #2
c0de9592:	f000 fefd 	bl	c0dea390 <os_registry_get_current_app_tag>
c0de9596:	1987      	adds	r7, r0, r6
c0de9598:	4604      	mov	r4, r0
c0de959a:	7070      	strb	r0, [r6, #1]
c0de959c:	f240 1001 	movw	r0, #257	@ 0x101
c0de95a0:	1b02      	subs	r2, r0, r4
c0de95a2:	1cf9      	adds	r1, r7, #3
c0de95a4:	2002      	movs	r0, #2
c0de95a6:	f000 fef3 	bl	c0dea390 <os_registry_get_current_app_tag>
c0de95aa:	4404      	add	r4, r0
c0de95ac:	70b8      	strb	r0, [r7, #2]
c0de95ae:	4426      	add	r6, r4
c0de95b0:	70f5      	strb	r5, [r6, #3]
c0de95b2:	f000 fee5 	bl	c0dea380 <os_flags>
c0de95b6:	2100      	movs	r1, #0
c0de95b8:	7130      	strb	r0, [r6, #4]
c0de95ba:	1de0      	adds	r0, r4, #7
c0de95bc:	71b1      	strb	r1, [r6, #6]
c0de95be:	2190      	movs	r1, #144	@ 0x90
c0de95c0:	7171      	strb	r1, [r6, #5]
c0de95c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de95c4:	000019bc 	.word	0x000019bc

c0de95c8 <os_io_seproxyhal_pki_load_certificate>:
c0de95c8:	b5b0      	push	{r4, r5, r7, lr}
c0de95ca:	b09e      	sub	sp, #120	@ 0x78
c0de95cc:	460b      	mov	r3, r1
c0de95ce:	4601      	mov	r1, r0
c0de95d0:	ac03      	add	r4, sp, #12
c0de95d2:	2000      	movs	r0, #0
c0de95d4:	e9cd 0400 	strd	r0, r4, [sp]
c0de95d8:	4610      	mov	r0, r2
c0de95da:	461a      	mov	r2, r3
c0de95dc:	2300      	movs	r3, #0
c0de95de:	f000 fe9b 	bl	c0dea318 <os_pki_load_certificate>
c0de95e2:	4605      	mov	r5, r0
c0de95e4:	4620      	mov	r0, r4
c0de95e6:	216c      	movs	r1, #108	@ 0x6c
c0de95e8:	f001 f8d0 	bl	c0dea78c <explicit_bzero>
c0de95ec:	2d00      	cmp	r5, #0
c0de95ee:	4906      	ldr	r1, [pc, #24]	@ (c0de9608 <os_io_seproxyhal_pki_load_certificate+0x40>)
c0de95f0:	bf08      	it	eq
c0de95f2:	f44f 4510 	moveq.w	r5, #36864	@ 0x9000
c0de95f6:	0a28      	lsrs	r0, r5, #8
c0de95f8:	f809 0001 	strb.w	r0, [r9, r1]
c0de95fc:	eb09 0001 	add.w	r0, r9, r1
c0de9600:	7045      	strb	r5, [r0, #1]
c0de9602:	2002      	movs	r0, #2
c0de9604:	b01e      	add	sp, #120	@ 0x78
c0de9606:	bdb0      	pop	{r4, r5, r7, pc}
c0de9608:	000019bc 	.word	0x000019bc

c0de960c <io_exchange>:
c0de960c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9610:	4680      	mov	r8, r0
c0de9612:	489b      	ldr	r0, [pc, #620]	@ (c0de9880 <io_exchange+0x274>)
c0de9614:	4c97      	ldr	r4, [pc, #604]	@ (c0de9874 <io_exchange+0x268>)
c0de9616:	f8df b260 	ldr.w	fp, [pc, #608]	@ c0de9878 <io_exchange+0x26c>
c0de961a:	4d95      	ldr	r5, [pc, #596]	@ (c0de9870 <io_exchange+0x264>)
c0de961c:	460f      	mov	r7, r1
c0de961e:	f04f 0a00 	mov.w	sl, #0
c0de9622:	4478      	add	r0, pc
c0de9624:	9001      	str	r0, [sp, #4]
c0de9626:	fa5f f688 	uxtb.w	r6, r8
c0de962a:	ea5f 7088 	movs.w	r0, r8, lsl #30
c0de962e:	f040 8106 	bne.w	c0de983e <io_exchange+0x232>
c0de9632:	f006 0110 	and.w	r1, r6, #16
c0de9636:	0438      	lsls	r0, r7, #16
c0de9638:	d07b      	beq.n	c0de9732 <io_exchange+0x126>
c0de963a:	2900      	cmp	r1, #0
c0de963c:	d179      	bne.n	c0de9732 <io_exchange+0x126>
c0de963e:	9102      	str	r1, [sp, #8]
c0de9640:	f000 fec6 	bl	c0dea3d0 <io_seph_is_status_sent>
c0de9644:	b138      	cbz	r0, c0de9656 <io_exchange+0x4a>
c0de9646:	eb09 0005 	add.w	r0, r9, r5
c0de964a:	f000 f941 	bl	c0de98d0 <OUTLINED_FUNCTION_0>
c0de964e:	2001      	movs	r0, #1
c0de9650:	f000 f91a 	bl	c0de9888 <os_io_seph_recv_and_process>
c0de9654:	e7f4      	b.n	c0de9640 <io_exchange+0x34>
c0de9656:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de965a:	eb09 0104 	add.w	r1, r9, r4
c0de965e:	f8cd 800c 	str.w	r8, [sp, #12]
c0de9662:	f8d1 8008 	ldr.w	r8, [r1, #8]
c0de9666:	2807      	cmp	r0, #7
c0de9668:	d00c      	beq.n	c0de9684 <io_exchange+0x78>
c0de966a:	280a      	cmp	r0, #10
c0de966c:	d00f      	beq.n	c0de968e <io_exchange+0x82>
c0de966e:	280b      	cmp	r0, #11
c0de9670:	d02a      	beq.n	c0de96c8 <io_exchange+0xbc>
c0de9672:	2800      	cmp	r0, #0
c0de9674:	f000 80f5 	beq.w	c0de9862 <io_exchange+0x256>
c0de9678:	b2b9      	uxth	r1, r7
c0de967a:	4630      	mov	r0, r6
c0de967c:	f7fe fc04 	bl	c0de7e88 <io_exchange_al>
c0de9680:	b348      	cbz	r0, c0de96d6 <io_exchange+0xca>
c0de9682:	e0ee      	b.n	c0de9862 <io_exchange+0x256>
c0de9684:	9801      	ldr	r0, [sp, #4]
c0de9686:	eb09 020b 	add.w	r2, r9, fp
c0de968a:	b2b9      	uxth	r1, r7
c0de968c:	e021      	b.n	c0de96d2 <io_exchange+0xc6>
c0de968e:	46da      	mov	sl, fp
c0de9690:	fa1f fb87 	uxth.w	fp, r7
c0de9694:	f5bb 7f82 	cmp.w	fp, #260	@ 0x104
c0de9698:	f200 80e6 	bhi.w	c0de9868 <io_exchange+0x25c>
c0de969c:	2053      	movs	r0, #83	@ 0x53
c0de969e:	0a39      	lsrs	r1, r7, #8
c0de96a0:	f809 0005 	strb.w	r0, [r9, r5]
c0de96a4:	eb09 0005 	add.w	r0, r9, r5
c0de96a8:	7041      	strb	r1, [r0, #1]
c0de96aa:	2103      	movs	r1, #3
c0de96ac:	7087      	strb	r7, [r0, #2]
c0de96ae:	f000 fe85 	bl	c0dea3bc <io_seph_send>
c0de96b2:	4659      	mov	r1, fp
c0de96b4:	eb09 000a 	add.w	r0, r9, sl
c0de96b8:	46d3      	mov	fp, sl
c0de96ba:	f000 fe7f 	bl	c0dea3bc <io_seph_send>
c0de96be:	f04f 0a00 	mov.w	sl, #0
c0de96c2:	f809 a004 	strb.w	sl, [r9, r4]
c0de96c6:	e006      	b.n	c0de96d6 <io_exchange+0xca>
c0de96c8:	486e      	ldr	r0, [pc, #440]	@ (c0de9884 <io_exchange+0x278>)
c0de96ca:	eb09 020b 	add.w	r2, r9, fp
c0de96ce:	b2b9      	uxth	r1, r7
c0de96d0:	4478      	add	r0, pc
c0de96d2:	f000 fa99 	bl	c0de9c08 <io_usb_hid_send>
c0de96d6:	f508 67fa 	add.w	r7, r8, #2000	@ 0x7d0
c0de96da:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de96de:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de96e2:	b190      	cbz	r0, c0de970a <io_exchange+0xfe>
c0de96e4:	f7ff fe20 	bl	c0de9328 <io_seproxyhal_general_status>
c0de96e8:	eb09 0005 	add.w	r0, r9, r5
c0de96ec:	f000 f8f0 	bl	c0de98d0 <OUTLINED_FUNCTION_0>
c0de96f0:	eb09 0004 	add.w	r0, r9, r4
c0de96f4:	6880      	ldr	r0, [r0, #8]
c0de96f6:	42b8      	cmp	r0, r7
c0de96f8:	f080 80ad 	bcs.w	c0de9856 <io_exchange+0x24a>
c0de96fc:	f7ff febc 	bl	c0de9478 <io_seproxyhal_handle_event>
c0de9700:	f000 fe66 	bl	c0dea3d0 <io_seph_is_status_sent>
c0de9704:	2800      	cmp	r0, #0
c0de9706:	d1ef      	bne.n	c0de96e8 <io_exchange+0xdc>
c0de9708:	e7e9      	b.n	c0de96de <io_exchange+0xd2>
c0de970a:	2000      	movs	r0, #0
c0de970c:	eb09 0104 	add.w	r1, r9, r4
c0de9710:	7188      	strb	r0, [r1, #6]
c0de9712:	8048      	strh	r0, [r1, #2]
c0de9714:	ea5f 6188 	movs.w	r1, r8, lsl #26
c0de9718:	f809 0004 	strb.w	r0, [r9, r4]
c0de971c:	f100 808b 	bmi.w	c0de9836 <io_exchange+0x22a>
c0de9720:	f7ff fe02 	bl	c0de9328 <io_seproxyhal_general_status>
c0de9724:	fa4f f088 	sxtb.w	r0, r8
c0de9728:	9902      	ldr	r1, [sp, #8]
c0de972a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de972e:	f340 8095 	ble.w	c0de985c <io_exchange+0x250>
c0de9732:	0770      	lsls	r0, r6, #29
c0de9734:	d40e      	bmi.n	c0de9754 <io_exchange+0x148>
c0de9736:	b941      	cbnz	r1, c0de974a <io_exchange+0x13e>
c0de9738:	0670      	lsls	r0, r6, #25
c0de973a:	f100 8087 	bmi.w	c0de984c <io_exchange+0x240>
c0de973e:	eb09 0004 	add.w	r0, r9, r4
c0de9742:	f809 a004 	strb.w	sl, [r9, r4]
c0de9746:	f880 a006 	strb.w	sl, [r0, #6]
c0de974a:	2000      	movs	r0, #0
c0de974c:	eb09 0104 	add.w	r1, r9, r4
c0de9750:	8048      	strh	r0, [r1, #2]
c0de9752:	e002      	b.n	c0de975a <io_exchange+0x14e>
c0de9754:	eb09 0004 	add.w	r0, r9, r4
c0de9758:	8840      	ldrh	r0, [r0, #2]
c0de975a:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de975e:	b101      	cbz	r1, c0de9762 <io_exchange+0x156>
c0de9760:	bb00      	cbnz	r0, c0de97a4 <io_exchange+0x198>
c0de9762:	f7ff fde1 	bl	c0de9328 <io_seproxyhal_general_status>
c0de9766:	eb09 0005 	add.w	r0, r9, r5
c0de976a:	f000 f8b1 	bl	c0de98d0 <OUTLINED_FUNCTION_0>
c0de976e:	2803      	cmp	r0, #3
c0de9770:	d310      	bcc.n	c0de9794 <io_exchange+0x188>
c0de9772:	eb09 0105 	add.w	r1, r9, r5
c0de9776:	784a      	ldrb	r2, [r1, #1]
c0de9778:	7889      	ldrb	r1, [r1, #2]
c0de977a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de977e:	3103      	adds	r1, #3
c0de9780:	4281      	cmp	r1, r0
c0de9782:	d107      	bne.n	c0de9794 <io_exchange+0x188>
c0de9784:	f7ff fe78 	bl	c0de9478 <io_seproxyhal_handle_event>
c0de9788:	eb09 0004 	add.w	r0, r9, r4
c0de978c:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de9790:	8840      	ldrh	r0, [r0, #2]
c0de9792:	e7e4      	b.n	c0de975e <io_exchange+0x152>
c0de9794:	2000      	movs	r0, #0
c0de9796:	eb09 0104 	add.w	r1, r9, r4
c0de979a:	8048      	strh	r0, [r1, #2]
c0de979c:	f809 0004 	strb.w	r0, [r9, r4]
c0de97a0:	2100      	movs	r1, #0
c0de97a2:	e7dc      	b.n	c0de975e <io_exchange+0x152>
c0de97a4:	f000 fdc8 	bl	c0dea338 <os_perso_is_pin_set>
c0de97a8:	28aa      	cmp	r0, #170	@ 0xaa
c0de97aa:	d103      	bne.n	c0de97b4 <io_exchange+0x1a8>
c0de97ac:	f000 fdcd 	bl	c0dea34a <os_global_pin_is_validated>
c0de97b0:	28aa      	cmp	r0, #170	@ 0xaa
c0de97b2:	d118      	bne.n	c0de97e6 <io_exchange+0x1da>
c0de97b4:	f819 000b 	ldrb.w	r0, [r9, fp]
c0de97b8:	28b0      	cmp	r0, #176	@ 0xb0
c0de97ba:	d139      	bne.n	c0de9830 <io_exchange+0x224>
c0de97bc:	eb09 000b 	add.w	r0, r9, fp
c0de97c0:	7840      	ldrb	r0, [r0, #1]
c0de97c2:	28a7      	cmp	r0, #167	@ 0xa7
c0de97c4:	d017      	beq.n	c0de97f6 <io_exchange+0x1ea>
c0de97c6:	2806      	cmp	r0, #6
c0de97c8:	d027      	beq.n	c0de981a <io_exchange+0x20e>
c0de97ca:	2801      	cmp	r0, #1
c0de97cc:	d130      	bne.n	c0de9830 <io_exchange+0x224>
c0de97ce:	eb09 000b 	add.w	r0, r9, fp
c0de97d2:	7881      	ldrb	r1, [r0, #2]
c0de97d4:	78c0      	ldrb	r0, [r0, #3]
c0de97d6:	4308      	orrs	r0, r1
c0de97d8:	d12a      	bne.n	c0de9830 <io_exchange+0x224>
c0de97da:	f008 0803 	and.w	r8, r8, #3
c0de97de:	f7ff fecd 	bl	c0de957c <os_io_seproxyhal_get_app_name_and_version>
c0de97e2:	4607      	mov	r7, r0
c0de97e4:	e71f      	b.n	c0de9626 <io_exchange+0x1a>
c0de97e6:	2055      	movs	r0, #85	@ 0x55
c0de97e8:	2115      	movs	r1, #21
c0de97ea:	f809 000b 	strb.w	r0, [r9, fp]
c0de97ee:	eb09 000b 	add.w	r0, r9, fp
c0de97f2:	7041      	strb	r1, [r0, #1]
c0de97f4:	e018      	b.n	c0de9828 <io_exchange+0x21c>
c0de97f6:	eb09 000b 	add.w	r0, r9, fp
c0de97fa:	7881      	ldrb	r1, [r0, #2]
c0de97fc:	78c0      	ldrb	r0, [r0, #3]
c0de97fe:	4308      	orrs	r0, r1
c0de9800:	d116      	bne.n	c0de9830 <io_exchange+0x224>
c0de9802:	2090      	movs	r0, #144	@ 0x90
c0de9804:	2702      	movs	r7, #2
c0de9806:	f809 000b 	strb.w	r0, [r9, fp]
c0de980a:	eb09 000b 	add.w	r0, r9, fp
c0de980e:	f880 a001 	strb.w	sl, [r0, #1]
c0de9812:	481a      	ldr	r0, [pc, #104]	@ (c0de987c <io_exchange+0x270>)
c0de9814:	f360 089f 	bfi	r8, r0, #2, #30
c0de9818:	e705      	b.n	c0de9626 <io_exchange+0x1a>
c0de981a:	eb09 000b 	add.w	r0, r9, fp
c0de981e:	7882      	ldrb	r2, [r0, #2]
c0de9820:	7901      	ldrb	r1, [r0, #4]
c0de9822:	3005      	adds	r0, #5
c0de9824:	f7ff fed0 	bl	c0de95c8 <os_io_seproxyhal_pki_load_certificate>
c0de9828:	f008 0803 	and.w	r8, r8, #3
c0de982c:	2702      	movs	r7, #2
c0de982e:	e6fa      	b.n	c0de9626 <io_exchange+0x1a>
c0de9830:	eb09 0004 	add.w	r0, r9, r4
c0de9834:	8840      	ldrh	r0, [r0, #2]
c0de9836:	b280      	uxth	r0, r0
c0de9838:	b004      	add	sp, #16
c0de983a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de983e:	b2b9      	uxth	r1, r7
c0de9840:	4630      	mov	r0, r6
c0de9842:	b004      	add	sp, #16
c0de9844:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9848:	f7fe bb1e 	b.w	c0de7e88 <io_exchange_al>
c0de984c:	eb09 0004 	add.w	r0, r9, r4
c0de9850:	8840      	ldrh	r0, [r0, #2]
c0de9852:	3805      	subs	r0, #5
c0de9854:	e7ef      	b.n	c0de9836 <io_exchange+0x22a>
c0de9856:	2005      	movs	r0, #5
c0de9858:	f7ff fd54 	bl	c0de9304 <os_longjmp>
c0de985c:	2005      	movs	r0, #5
c0de985e:	f000 fda3 	bl	c0dea3a8 <os_sched_exit>
c0de9862:	2004      	movs	r0, #4
c0de9864:	f7ff fd4e 	bl	c0de9304 <os_longjmp>
c0de9868:	2002      	movs	r0, #2
c0de986a:	f7ff fd4b 	bl	c0de9304 <os_longjmp>
c0de986e:	bf00      	nop
c0de9870:	00001794 	.word	0x00001794
c0de9874:	00001ac0 	.word	0x00001ac0
c0de9878:	000019bc 	.word	0x000019bc
c0de987c:	3fffffe0 	.word	0x3fffffe0
c0de9880:	00000333 	.word	0x00000333
c0de9884:	fffffd55 	.word	0xfffffd55

c0de9888 <os_io_seph_recv_and_process>:
c0de9888:	b5b0      	push	{r4, r5, r7, lr}
c0de988a:	4604      	mov	r4, r0
c0de988c:	f7ff fd4c 	bl	c0de9328 <io_seproxyhal_general_status>
c0de9890:	4d0d      	ldr	r5, [pc, #52]	@ (c0de98c8 <os_io_seph_recv_and_process+0x40>)
c0de9892:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de9896:	2200      	movs	r2, #0
c0de9898:	eb09 0005 	add.w	r0, r9, r5
c0de989c:	f000 fda0 	bl	c0dea3e0 <io_seph_recv>
c0de98a0:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de98a4:	2815      	cmp	r0, #21
c0de98a6:	d808      	bhi.n	c0de98ba <os_io_seph_recv_and_process+0x32>
c0de98a8:	2101      	movs	r1, #1
c0de98aa:	fa01 f000 	lsl.w	r0, r1, r0
c0de98ae:	4907      	ldr	r1, [pc, #28]	@ (c0de98cc <os_io_seph_recv_and_process+0x44>)
c0de98b0:	4208      	tst	r0, r1
c0de98b2:	d002      	beq.n	c0de98ba <os_io_seph_recv_and_process+0x32>
c0de98b4:	b10c      	cbz	r4, c0de98ba <os_io_seph_recv_and_process+0x32>
c0de98b6:	2000      	movs	r0, #0
c0de98b8:	bdb0      	pop	{r4, r5, r7, pc}
c0de98ba:	f7ff fddd 	bl	c0de9478 <io_seproxyhal_handle_event>
c0de98be:	2800      	cmp	r0, #0
c0de98c0:	bf18      	it	ne
c0de98c2:	2001      	movne	r0, #1
c0de98c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de98c6:	bf00      	nop
c0de98c8:	00001794 	.word	0x00001794
c0de98cc:	00207020 	.word	0x00207020

c0de98d0 <OUTLINED_FUNCTION_0>:
c0de98d0:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de98d4:	2200      	movs	r2, #0
c0de98d6:	f000 bd83 	b.w	c0dea3e0 <io_seph_recv>
	...

c0de98dc <io_seproxyhal_get_ep_rx_size>:
c0de98dc:	f000 007f 	and.w	r0, r0, #127	@ 0x7f
c0de98e0:	2803      	cmp	r0, #3
c0de98e2:	bf84      	itt	hi
c0de98e4:	2000      	movhi	r0, #0
c0de98e6:	4770      	bxhi	lr
c0de98e8:	4902      	ldr	r1, [pc, #8]	@ (c0de98f4 <io_seproxyhal_get_ep_rx_size+0x18>)
c0de98ea:	4449      	add	r1, r9
c0de98ec:	4408      	add	r0, r1
c0de98ee:	7b00      	ldrb	r0, [r0, #12]
c0de98f0:	4770      	bx	lr
c0de98f2:	bf00      	nop
c0de98f4:	00001ac0 	.word	0x00001ac0

c0de98f8 <io_usb_send_ep>:
c0de98f8:	2aff      	cmp	r2, #255	@ 0xff
c0de98fa:	d829      	bhi.n	c0de9950 <io_usb_send_ep+0x58>
c0de98fc:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de98fe:	4604      	mov	r4, r0
c0de9900:	2020      	movs	r0, #32
c0de9902:	460e      	mov	r6, r1
c0de9904:	2106      	movs	r1, #6
c0de9906:	4615      	mov	r5, r2
c0de9908:	f88d 2007 	strb.w	r2, [sp, #7]
c0de990c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9910:	2050      	movs	r0, #80	@ 0x50
c0de9912:	f88d 0002 	strb.w	r0, [sp, #2]
c0de9916:	f044 0080 	orr.w	r0, r4, #128	@ 0x80
c0de991a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de991e:	1cd0      	adds	r0, r2, #3
c0de9920:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9924:	0a00      	lsrs	r0, r0, #8
c0de9926:	f88d 0003 	strb.w	r0, [sp, #3]
c0de992a:	f10d 0002 	add.w	r0, sp, #2
c0de992e:	f000 fd45 	bl	c0dea3bc <io_seph_send>
c0de9932:	4630      	mov	r0, r6
c0de9934:	4629      	mov	r1, r5
c0de9936:	f000 fd41 	bl	c0dea3bc <io_seph_send>
c0de993a:	4806      	ldr	r0, [pc, #24]	@ (c0de9954 <io_usb_send_ep+0x5c>)
c0de993c:	f004 017f 	and.w	r1, r4, #127	@ 0x7f
c0de9940:	4448      	add	r0, r9
c0de9942:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de9946:	f44f 61fa 	mov.w	r1, #2000	@ 0x7d0
c0de994a:	8201      	strh	r1, [r0, #16]
c0de994c:	e8bd 407c 	ldmia.w	sp!, {r2, r3, r4, r5, r6, lr}
c0de9950:	4770      	bx	lr
c0de9952:	bf00      	nop
c0de9954:	00001ac0 	.word	0x00001ac0

c0de9958 <io_usb_send_apdu_data>:
c0de9958:	460a      	mov	r2, r1
c0de995a:	4601      	mov	r1, r0
c0de995c:	2082      	movs	r0, #130	@ 0x82
c0de995e:	f7ff bfcb 	b.w	c0de98f8 <io_usb_send_ep>
	...

c0de9964 <io_usb_hid_receive>:
c0de9964:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9968:	4615      	mov	r5, r2
c0de996a:	460f      	mov	r7, r1
c0de996c:	4682      	mov	sl, r0
c0de996e:	b11b      	cbz	r3, c0de9978 <io_usb_hid_receive+0x14>
c0de9970:	f8b3 8004 	ldrh.w	r8, [r3, #4]
c0de9974:	6818      	ldr	r0, [r3, #0]
c0de9976:	e003      	b.n	c0de9980 <io_usb_hid_receive+0x1c>
c0de9978:	4858      	ldr	r0, [pc, #352]	@ (c0de9adc <io_usb_hid_receive+0x178>)
c0de997a:	f44f 7882 	mov.w	r8, #260	@ 0x104
c0de997e:	4448      	add	r0, r9
c0de9980:	9001      	str	r0, [sp, #4]
c0de9982:	f8df b15c 	ldr.w	fp, [pc, #348]	@ c0de9ae0 <io_usb_hid_receive+0x17c>
c0de9986:	eb09 000b 	add.w	r0, r9, fp
c0de998a:	4287      	cmp	r7, r0
c0de998c:	d00e      	beq.n	c0de99ac <io_usb_hid_receive+0x48>
c0de998e:	eb09 040b 	add.w	r4, r9, fp
c0de9992:	2140      	movs	r1, #64	@ 0x40
c0de9994:	2640      	movs	r6, #64	@ 0x40
c0de9996:	4620      	mov	r0, r4
c0de9998:	f000 feec 	bl	c0dea774 <__aeabi_memclr>
c0de999c:	2d40      	cmp	r5, #64	@ 0x40
c0de999e:	bf38      	it	cc
c0de99a0:	462e      	movcc	r6, r5
c0de99a2:	4620      	mov	r0, r4
c0de99a4:	4639      	mov	r1, r7
c0de99a6:	4632      	mov	r2, r6
c0de99a8:	f000 fee9 	bl	c0dea77e <__aeabi_memmove>
c0de99ac:	eb09 000b 	add.w	r0, r9, fp
c0de99b0:	7880      	ldrb	r0, [r0, #2]
c0de99b2:	b348      	cbz	r0, c0de9a08 <io_usb_hid_receive+0xa4>
c0de99b4:	2801      	cmp	r0, #1
c0de99b6:	d030      	beq.n	c0de9a1a <io_usb_hid_receive+0xb6>
c0de99b8:	2802      	cmp	r0, #2
c0de99ba:	d034      	beq.n	c0de9a26 <io_usb_hid_receive+0xc2>
c0de99bc:	2805      	cmp	r0, #5
c0de99be:	f040 8083 	bne.w	c0de9ac8 <io_usb_hid_receive+0x164>
c0de99c2:	4c48      	ldr	r4, [pc, #288]	@ (c0de9ae4 <io_usb_hid_receive+0x180>)
c0de99c4:	eb09 010b 	add.w	r1, r9, fp
c0de99c8:	f859 0004 	ldr.w	r0, [r9, r4]
c0de99cc:	78ca      	ldrb	r2, [r1, #3]
c0de99ce:	7909      	ldrb	r1, [r1, #4]
c0de99d0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de99d4:	4288      	cmp	r0, r1
c0de99d6:	d12a      	bne.n	c0de9a2e <io_usb_hid_receive+0xca>
c0de99d8:	f859 0004 	ldr.w	r0, [r9, r4]
c0de99dc:	b3a0      	cbz	r0, c0de9a48 <io_usb_hid_receive+0xe4>
c0de99de:	4942      	ldr	r1, [pc, #264]	@ (c0de9ae8 <io_usb_hid_receive+0x184>)
c0de99e0:	1f68      	subs	r0, r5, #5
c0de99e2:	b283      	uxth	r3, r0
c0de99e4:	f859 2001 	ldr.w	r2, [r9, r1]
c0de99e8:	429a      	cmp	r2, r3
c0de99ea:	bf38      	it	cc
c0de99ec:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0de99f0:	b281      	uxth	r1, r0
c0de99f2:	293b      	cmp	r1, #59	@ 0x3b
c0de99f4:	bf28      	it	cs
c0de99f6:	203b      	movcs	r0, #59	@ 0x3b
c0de99f8:	b285      	uxth	r5, r0
c0de99fa:	483c      	ldr	r0, [pc, #240]	@ (c0de9aec <io_usb_hid_receive+0x188>)
c0de99fc:	f859 6000 	ldr.w	r6, [r9, r0]
c0de9a00:	eb09 000b 	add.w	r0, r9, fp
c0de9a04:	1d41      	adds	r1, r0, #5
c0de9a06:	e04c      	b.n	c0de9aa2 <io_usb_hid_receive+0x13e>
c0de9a08:	eb09 000b 	add.w	r0, r9, fp
c0de9a0c:	2100      	movs	r1, #0
c0de9a0e:	f800 1f03 	strb.w	r1, [r0, #3]!
c0de9a12:	70c1      	strb	r1, [r0, #3]
c0de9a14:	7081      	strb	r1, [r0, #2]
c0de9a16:	7041      	strb	r1, [r0, #1]
c0de9a18:	e005      	b.n	c0de9a26 <io_usb_hid_receive+0xc2>
c0de9a1a:	eb09 000b 	add.w	r0, r9, fp
c0de9a1e:	2104      	movs	r1, #4
c0de9a20:	3003      	adds	r0, #3
c0de9a22:	f7ff fc5b 	bl	c0de92dc <cx_rng_no_throw>
c0de9a26:	eb09 000b 	add.w	r0, r9, fp
c0de9a2a:	2140      	movs	r1, #64	@ 0x40
c0de9a2c:	47d0      	blx	sl
c0de9a2e:	2000      	movs	r0, #0
c0de9a30:	492c      	ldr	r1, [pc, #176]	@ (c0de9ae4 <io_usb_hid_receive+0x180>)
c0de9a32:	2200      	movs	r2, #0
c0de9a34:	f849 2001 	str.w	r2, [r9, r1]
c0de9a38:	492c      	ldr	r1, [pc, #176]	@ (c0de9aec <io_usb_hid_receive+0x188>)
c0de9a3a:	f849 2001 	str.w	r2, [r9, r1]
c0de9a3e:	492a      	ldr	r1, [pc, #168]	@ (c0de9ae8 <io_usb_hid_receive+0x184>)
c0de9a40:	f849 2001 	str.w	r2, [r9, r1]
c0de9a44:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de9a48:	eb09 000b 	add.w	r0, r9, fp
c0de9a4c:	7941      	ldrb	r1, [r0, #5]
c0de9a4e:	7980      	ldrb	r0, [r0, #6]
c0de9a50:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
c0de9a54:	4826      	ldr	r0, [pc, #152]	@ (c0de9af0 <io_usb_hid_receive+0x18c>)
c0de9a56:	f849 1000 	str.w	r1, [r9, r0]
c0de9a5a:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9a5e:	4541      	cmp	r1, r8
c0de9a60:	d8e5      	bhi.n	c0de9a2e <io_usb_hid_receive+0xca>
c0de9a62:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9a66:	4820      	ldr	r0, [pc, #128]	@ (c0de9ae8 <io_usb_hid_receive+0x184>)
c0de9a68:	eb09 020b 	add.w	r2, r9, fp
c0de9a6c:	f849 1000 	str.w	r1, [r9, r0]
c0de9a70:	f819 100b 	ldrb.w	r1, [r9, fp]
c0de9a74:	7852      	ldrb	r2, [r2, #1]
c0de9a76:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de9a7a:	4a1e      	ldr	r2, [pc, #120]	@ (c0de9af4 <io_usb_hid_receive+0x190>)
c0de9a7c:	f849 1002 	str.w	r1, [r9, r2]
c0de9a80:	1fe9      	subs	r1, r5, #7
c0de9a82:	f859 2000 	ldr.w	r2, [r9, r0]
c0de9a86:	b28b      	uxth	r3, r1
c0de9a88:	429a      	cmp	r2, r3
c0de9a8a:	bf38      	it	cc
c0de9a8c:	f859 1000 	ldrcc.w	r1, [r9, r0]
c0de9a90:	b288      	uxth	r0, r1
c0de9a92:	2839      	cmp	r0, #57	@ 0x39
c0de9a94:	bf28      	it	cs
c0de9a96:	2139      	movcs	r1, #57	@ 0x39
c0de9a98:	9e01      	ldr	r6, [sp, #4]
c0de9a9a:	eb09 000b 	add.w	r0, r9, fp
c0de9a9e:	b28d      	uxth	r5, r1
c0de9aa0:	1dc1      	adds	r1, r0, #7
c0de9aa2:	4630      	mov	r0, r6
c0de9aa4:	462a      	mov	r2, r5
c0de9aa6:	f000 fe6a 	bl	c0dea77e <__aeabi_memmove>
c0de9aaa:	480f      	ldr	r0, [pc, #60]	@ (c0de9ae8 <io_usb_hid_receive+0x184>)
c0de9aac:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9ab0:	1b49      	subs	r1, r1, r5
c0de9ab2:	f849 1000 	str.w	r1, [r9, r0]
c0de9ab6:	490d      	ldr	r1, [pc, #52]	@ (c0de9aec <io_usb_hid_receive+0x188>)
c0de9ab8:	1970      	adds	r0, r6, r5
c0de9aba:	f849 0001 	str.w	r0, [r9, r1]
c0de9abe:	f859 0004 	ldr.w	r0, [r9, r4]
c0de9ac2:	3001      	adds	r0, #1
c0de9ac4:	f849 0004 	str.w	r0, [r9, r4]
c0de9ac8:	4807      	ldr	r0, [pc, #28]	@ (c0de9ae8 <io_usb_hid_receive+0x184>)
c0de9aca:	f859 0000 	ldr.w	r0, [r9, r0]
c0de9ace:	b110      	cbz	r0, c0de9ad6 <io_usb_hid_receive+0x172>
c0de9ad0:	2001      	movs	r0, #1
c0de9ad2:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de9ad6:	2002      	movs	r0, #2
c0de9ad8:	e7aa      	b.n	c0de9a30 <io_usb_hid_receive+0xcc>
c0de9ada:	bf00      	nop
c0de9adc:	000019bc 	.word	0x000019bc
c0de9ae0:	00001adc 	.word	0x00001adc
c0de9ae4:	00001b1c 	.word	0x00001b1c
c0de9ae8:	00001b24 	.word	0x00001b24
c0de9aec:	00001b28 	.word	0x00001b28
c0de9af0:	00001b20 	.word	0x00001b20
c0de9af4:	00001b2c 	.word	0x00001b2c

c0de9af8 <io_usb_hid_init>:
c0de9af8:	4805      	ldr	r0, [pc, #20]	@ (c0de9b10 <io_usb_hid_init+0x18>)
c0de9afa:	2100      	movs	r1, #0
c0de9afc:	f849 1000 	str.w	r1, [r9, r0]
c0de9b00:	4804      	ldr	r0, [pc, #16]	@ (c0de9b14 <io_usb_hid_init+0x1c>)
c0de9b02:	f849 1000 	str.w	r1, [r9, r0]
c0de9b06:	4804      	ldr	r0, [pc, #16]	@ (c0de9b18 <io_usb_hid_init+0x20>)
c0de9b08:	f849 1000 	str.w	r1, [r9, r0]
c0de9b0c:	4770      	bx	lr
c0de9b0e:	bf00      	nop
c0de9b10:	00001b1c 	.word	0x00001b1c
c0de9b14:	00001b28 	.word	0x00001b28
c0de9b18:	00001b24 	.word	0x00001b24

c0de9b1c <io_usb_hid_sent>:
c0de9b1c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9b20:	f8df a0cc 	ldr.w	sl, [pc, #204]	@ c0de9bf0 <io_usb_hid_sent+0xd4>
c0de9b24:	4f33      	ldr	r7, [pc, #204]	@ (c0de9bf4 <io_usb_hid_sent+0xd8>)
c0de9b26:	f859 400a 	ldr.w	r4, [r9, sl]
c0de9b2a:	f859 1007 	ldr.w	r1, [r9, r7]
c0de9b2e:	b351      	cbz	r1, c0de9b86 <io_usb_hid_sent+0x6a>
c0de9b30:	b34c      	cbz	r4, c0de9b86 <io_usb_hid_sent+0x6a>
c0de9b32:	f8df 80cc 	ldr.w	r8, [pc, #204]	@ c0de9c00 <io_usb_hid_sent+0xe4>
c0de9b36:	4683      	mov	fp, r0
c0de9b38:	213b      	movs	r1, #59	@ 0x3b
c0de9b3a:	eb09 0508 	add.w	r5, r9, r8
c0de9b3e:	1d68      	adds	r0, r5, #5
c0de9b40:	f000 fe18 	bl	c0dea774 <__aeabi_memclr>
c0de9b44:	482f      	ldr	r0, [pc, #188]	@ (c0de9c04 <io_usb_hid_sent+0xe8>)
c0de9b46:	4e2c      	ldr	r6, [pc, #176]	@ (c0de9bf8 <io_usb_hid_sent+0xdc>)
c0de9b48:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9b4c:	0a09      	lsrs	r1, r1, #8
c0de9b4e:	f809 1008 	strb.w	r1, [r9, r8]
c0de9b52:	2105      	movs	r1, #5
c0de9b54:	70a9      	strb	r1, [r5, #2]
c0de9b56:	f859 0000 	ldr.w	r0, [r9, r0]
c0de9b5a:	7068      	strb	r0, [r5, #1]
c0de9b5c:	f859 0006 	ldr.w	r0, [r9, r6]
c0de9b60:	0a00      	lsrs	r0, r0, #8
c0de9b62:	70e8      	strb	r0, [r5, #3]
c0de9b64:	f859 0006 	ldr.w	r0, [r9, r6]
c0de9b68:	7128      	strb	r0, [r5, #4]
c0de9b6a:	f859 1006 	ldr.w	r1, [r9, r6]
c0de9b6e:	f859 0007 	ldr.w	r0, [r9, r7]
c0de9b72:	b1a9      	cbz	r1, c0de9ba0 <io_usb_hid_sent+0x84>
c0de9b74:	283b      	cmp	r0, #59	@ 0x3b
c0de9b76:	eb09 0008 	add.w	r0, r9, r8
c0de9b7a:	bf94      	ite	ls
c0de9b7c:	f859 5007 	ldrls.w	r5, [r9, r7]
c0de9b80:	253b      	movhi	r5, #59	@ 0x3b
c0de9b82:	3005      	adds	r0, #5
c0de9b84:	e01b      	b.n	c0de9bbe <io_usb_hid_sent+0xa2>
c0de9b86:	481c      	ldr	r0, [pc, #112]	@ (c0de9bf8 <io_usb_hid_sent+0xdc>)
c0de9b88:	2100      	movs	r1, #0
c0de9b8a:	f849 1000 	str.w	r1, [r9, r0]
c0de9b8e:	481b      	ldr	r0, [pc, #108]	@ (c0de9bfc <io_usb_hid_sent+0xe0>)
c0de9b90:	f849 100a 	str.w	r1, [r9, sl]
c0de9b94:	f809 1000 	strb.w	r1, [r9, r0]
c0de9b98:	f849 1007 	str.w	r1, [r9, r7]
c0de9b9c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9ba0:	2839      	cmp	r0, #57	@ 0x39
c0de9ba2:	bf94      	ite	ls
c0de9ba4:	f859 5007 	ldrls.w	r5, [r9, r7]
c0de9ba8:	2539      	movhi	r5, #57	@ 0x39
c0de9baa:	f859 1007 	ldr.w	r1, [r9, r7]
c0de9bae:	eb09 0008 	add.w	r0, r9, r8
c0de9bb2:	0a09      	lsrs	r1, r1, #8
c0de9bb4:	7141      	strb	r1, [r0, #5]
c0de9bb6:	f859 1007 	ldr.w	r1, [r9, r7]
c0de9bba:	7181      	strb	r1, [r0, #6]
c0de9bbc:	3007      	adds	r0, #7
c0de9bbe:	4621      	mov	r1, r4
c0de9bc0:	462a      	mov	r2, r5
c0de9bc2:	f000 fddc 	bl	c0dea77e <__aeabi_memmove>
c0de9bc6:	f859 0007 	ldr.w	r0, [r9, r7]
c0de9bca:	465a      	mov	r2, fp
c0de9bcc:	2140      	movs	r1, #64	@ 0x40
c0de9bce:	1b40      	subs	r0, r0, r5
c0de9bd0:	f849 0007 	str.w	r0, [r9, r7]
c0de9bd4:	1960      	adds	r0, r4, r5
c0de9bd6:	f849 000a 	str.w	r0, [r9, sl]
c0de9bda:	f859 0006 	ldr.w	r0, [r9, r6]
c0de9bde:	3001      	adds	r0, #1
c0de9be0:	f849 0006 	str.w	r0, [r9, r6]
c0de9be4:	eb09 0008 	add.w	r0, r9, r8
c0de9be8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9bec:	4710      	bx	r2
c0de9bee:	bf00      	nop
c0de9bf0:	00001b28 	.word	0x00001b28
c0de9bf4:	00001b24 	.word	0x00001b24
c0de9bf8:	00001b1c 	.word	0x00001b1c
c0de9bfc:	00001ac0 	.word	0x00001ac0
c0de9c00:	00001adc 	.word	0x00001adc
c0de9c04:	00001b2c 	.word	0x00001b2c

c0de9c08 <io_usb_hid_send>:
c0de9c08:	b189      	cbz	r1, c0de9c2e <io_usb_hid_send+0x26>
c0de9c0a:	b510      	push	{r4, lr}
c0de9c0c:	4b08      	ldr	r3, [pc, #32]	@ (c0de9c30 <io_usb_hid_send+0x28>)
c0de9c0e:	2400      	movs	r4, #0
c0de9c10:	f849 4003 	str.w	r4, [r9, r3]
c0de9c14:	4b07      	ldr	r3, [pc, #28]	@ (c0de9c34 <io_usb_hid_send+0x2c>)
c0de9c16:	f849 1003 	str.w	r1, [r9, r3]
c0de9c1a:	4b07      	ldr	r3, [pc, #28]	@ (c0de9c38 <io_usb_hid_send+0x30>)
c0de9c1c:	f849 2003 	str.w	r2, [r9, r3]
c0de9c20:	4a06      	ldr	r2, [pc, #24]	@ (c0de9c3c <io_usb_hid_send+0x34>)
c0de9c22:	f849 1002 	str.w	r1, [r9, r2]
c0de9c26:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9c2a:	f7ff bf77 	b.w	c0de9b1c <io_usb_hid_sent>
c0de9c2e:	4770      	bx	lr
c0de9c30:	00001b1c 	.word	0x00001b1c
c0de9c34:	00001b24 	.word	0x00001b24
c0de9c38:	00001b28 	.word	0x00001b28
c0de9c3c:	00001b20 	.word	0x00001b20

c0de9c40 <snprintf>:
c0de9c40:	b081      	sub	sp, #4
c0de9c42:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9c46:	b087      	sub	sp, #28
c0de9c48:	2800      	cmp	r0, #0
c0de9c4a:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de9c4c:	f000 817a 	beq.w	c0de9f44 <snprintf+0x304>
c0de9c50:	460d      	mov	r5, r1
c0de9c52:	2900      	cmp	r1, #0
c0de9c54:	f000 8176 	beq.w	c0de9f44 <snprintf+0x304>
c0de9c58:	4629      	mov	r1, r5
c0de9c5a:	4616      	mov	r6, r2
c0de9c5c:	4604      	mov	r4, r0
c0de9c5e:	f000 fd89 	bl	c0dea774 <__aeabi_memclr>
c0de9c62:	f1b5 0801 	subs.w	r8, r5, #1
c0de9c66:	f000 816d 	beq.w	c0de9f44 <snprintf+0x304>
c0de9c6a:	a80f      	add	r0, sp, #60	@ 0x3c
c0de9c6c:	9002      	str	r0, [sp, #8]
c0de9c6e:	7830      	ldrb	r0, [r6, #0]
c0de9c70:	2800      	cmp	r0, #0
c0de9c72:	f000 8167 	beq.w	c0de9f44 <snprintf+0x304>
c0de9c76:	2700      	movs	r7, #0
c0de9c78:	b128      	cbz	r0, c0de9c86 <snprintf+0x46>
c0de9c7a:	2825      	cmp	r0, #37	@ 0x25
c0de9c7c:	d003      	beq.n	c0de9c86 <snprintf+0x46>
c0de9c7e:	19f0      	adds	r0, r6, r7
c0de9c80:	3701      	adds	r7, #1
c0de9c82:	7840      	ldrb	r0, [r0, #1]
c0de9c84:	e7f8      	b.n	c0de9c78 <snprintf+0x38>
c0de9c86:	4547      	cmp	r7, r8
c0de9c88:	bf28      	it	cs
c0de9c8a:	4647      	movcs	r7, r8
c0de9c8c:	4620      	mov	r0, r4
c0de9c8e:	4631      	mov	r1, r6
c0de9c90:	463a      	mov	r2, r7
c0de9c92:	f000 fd74 	bl	c0dea77e <__aeabi_memmove>
c0de9c96:	ebb8 0807 	subs.w	r8, r8, r7
c0de9c9a:	f000 8153 	beq.w	c0de9f44 <snprintf+0x304>
c0de9c9e:	5df1      	ldrb	r1, [r6, r7]
c0de9ca0:	19f0      	adds	r0, r6, r7
c0de9ca2:	443c      	add	r4, r7
c0de9ca4:	4606      	mov	r6, r0
c0de9ca6:	2925      	cmp	r1, #37	@ 0x25
c0de9ca8:	d1e1      	bne.n	c0de9c6e <snprintf+0x2e>
c0de9caa:	1c41      	adds	r1, r0, #1
c0de9cac:	f04f 0b00 	mov.w	fp, #0
c0de9cb0:	f04f 0e20 	mov.w	lr, #32
c0de9cb4:	2500      	movs	r5, #0
c0de9cb6:	2600      	movs	r6, #0
c0de9cb8:	3101      	adds	r1, #1
c0de9cba:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de9cbe:	4632      	mov	r2, r6
c0de9cc0:	3101      	adds	r1, #1
c0de9cc2:	2600      	movs	r6, #0
c0de9cc4:	2b2d      	cmp	r3, #45	@ 0x2d
c0de9cc6:	d0f8      	beq.n	c0de9cba <snprintf+0x7a>
c0de9cc8:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de9ccc:	2e0a      	cmp	r6, #10
c0de9cce:	d313      	bcc.n	c0de9cf8 <snprintf+0xb8>
c0de9cd0:	2b25      	cmp	r3, #37	@ 0x25
c0de9cd2:	d046      	beq.n	c0de9d62 <snprintf+0x122>
c0de9cd4:	2b2a      	cmp	r3, #42	@ 0x2a
c0de9cd6:	d01f      	beq.n	c0de9d18 <snprintf+0xd8>
c0de9cd8:	2b2e      	cmp	r3, #46	@ 0x2e
c0de9cda:	d129      	bne.n	c0de9d30 <snprintf+0xf0>
c0de9cdc:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de9ce0:	2a2a      	cmp	r2, #42	@ 0x2a
c0de9ce2:	d13c      	bne.n	c0de9d5e <snprintf+0x11e>
c0de9ce4:	780a      	ldrb	r2, [r1, #0]
c0de9ce6:	2a48      	cmp	r2, #72	@ 0x48
c0de9ce8:	d003      	beq.n	c0de9cf2 <snprintf+0xb2>
c0de9cea:	2a73      	cmp	r2, #115	@ 0x73
c0de9cec:	d001      	beq.n	c0de9cf2 <snprintf+0xb2>
c0de9cee:	2a68      	cmp	r2, #104	@ 0x68
c0de9cf0:	d135      	bne.n	c0de9d5e <snprintf+0x11e>
c0de9cf2:	9a02      	ldr	r2, [sp, #8]
c0de9cf4:	2601      	movs	r6, #1
c0de9cf6:	e017      	b.n	c0de9d28 <snprintf+0xe8>
c0de9cf8:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de9cfc:	ea56 060b 	orrs.w	r6, r6, fp
c0de9d00:	bf08      	it	eq
c0de9d02:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de9d06:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de9d0a:	3901      	subs	r1, #1
c0de9d0c:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de9d10:	4616      	mov	r6, r2
c0de9d12:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de9d16:	e7cf      	b.n	c0de9cb8 <snprintf+0x78>
c0de9d18:	460b      	mov	r3, r1
c0de9d1a:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de9d1e:	2a73      	cmp	r2, #115	@ 0x73
c0de9d20:	d11d      	bne.n	c0de9d5e <snprintf+0x11e>
c0de9d22:	9a02      	ldr	r2, [sp, #8]
c0de9d24:	2602      	movs	r6, #2
c0de9d26:	4619      	mov	r1, r3
c0de9d28:	1d13      	adds	r3, r2, #4
c0de9d2a:	9302      	str	r3, [sp, #8]
c0de9d2c:	6815      	ldr	r5, [r2, #0]
c0de9d2e:	e7c3      	b.n	c0de9cb8 <snprintf+0x78>
c0de9d30:	2b48      	cmp	r3, #72	@ 0x48
c0de9d32:	d018      	beq.n	c0de9d66 <snprintf+0x126>
c0de9d34:	2b58      	cmp	r3, #88	@ 0x58
c0de9d36:	d019      	beq.n	c0de9d6c <snprintf+0x12c>
c0de9d38:	2b63      	cmp	r3, #99	@ 0x63
c0de9d3a:	d020      	beq.n	c0de9d7e <snprintf+0x13e>
c0de9d3c:	2b64      	cmp	r3, #100	@ 0x64
c0de9d3e:	d02a      	beq.n	c0de9d96 <snprintf+0x156>
c0de9d40:	2b68      	cmp	r3, #104	@ 0x68
c0de9d42:	d036      	beq.n	c0de9db2 <snprintf+0x172>
c0de9d44:	2b70      	cmp	r3, #112	@ 0x70
c0de9d46:	d006      	beq.n	c0de9d56 <snprintf+0x116>
c0de9d48:	2b73      	cmp	r3, #115	@ 0x73
c0de9d4a:	d037      	beq.n	c0de9dbc <snprintf+0x17c>
c0de9d4c:	2b75      	cmp	r3, #117	@ 0x75
c0de9d4e:	f000 8081 	beq.w	c0de9e54 <snprintf+0x214>
c0de9d52:	2b78      	cmp	r3, #120	@ 0x78
c0de9d54:	d103      	bne.n	c0de9d5e <snprintf+0x11e>
c0de9d56:	9400      	str	r4, [sp, #0]
c0de9d58:	f04f 0c00 	mov.w	ip, #0
c0de9d5c:	e009      	b.n	c0de9d72 <snprintf+0x132>
c0de9d5e:	1e4e      	subs	r6, r1, #1
c0de9d60:	e785      	b.n	c0de9c6e <snprintf+0x2e>
c0de9d62:	2025      	movs	r0, #37	@ 0x25
c0de9d64:	e00f      	b.n	c0de9d86 <snprintf+0x146>
c0de9d66:	487b      	ldr	r0, [pc, #492]	@ (c0de9f54 <snprintf+0x314>)
c0de9d68:	4478      	add	r0, pc
c0de9d6a:	e024      	b.n	c0de9db6 <snprintf+0x176>
c0de9d6c:	f04f 0c01 	mov.w	ip, #1
c0de9d70:	9400      	str	r4, [sp, #0]
c0de9d72:	9a02      	ldr	r2, [sp, #8]
c0de9d74:	2400      	movs	r4, #0
c0de9d76:	1d13      	adds	r3, r2, #4
c0de9d78:	9302      	str	r3, [sp, #8]
c0de9d7a:	2310      	movs	r3, #16
c0de9d7c:	e072      	b.n	c0de9e64 <snprintf+0x224>
c0de9d7e:	9802      	ldr	r0, [sp, #8]
c0de9d80:	1d02      	adds	r2, r0, #4
c0de9d82:	9202      	str	r2, [sp, #8]
c0de9d84:	6800      	ldr	r0, [r0, #0]
c0de9d86:	1e4e      	subs	r6, r1, #1
c0de9d88:	f804 0b01 	strb.w	r0, [r4], #1
c0de9d8c:	f1b8 0801 	subs.w	r8, r8, #1
c0de9d90:	f47f af6d 	bne.w	c0de9c6e <snprintf+0x2e>
c0de9d94:	e0d6      	b.n	c0de9f44 <snprintf+0x304>
c0de9d96:	9a02      	ldr	r2, [sp, #8]
c0de9d98:	9400      	str	r4, [sp, #0]
c0de9d9a:	1d13      	adds	r3, r2, #4
c0de9d9c:	9302      	str	r3, [sp, #8]
c0de9d9e:	6813      	ldr	r3, [r2, #0]
c0de9da0:	2b00      	cmp	r3, #0
c0de9da2:	461a      	mov	r2, r3
c0de9da4:	d500      	bpl.n	c0de9da8 <snprintf+0x168>
c0de9da6:	425a      	negs	r2, r3
c0de9da8:	0fdc      	lsrs	r4, r3, #31
c0de9daa:	f04f 0c00 	mov.w	ip, #0
c0de9dae:	230a      	movs	r3, #10
c0de9db0:	e059      	b.n	c0de9e66 <snprintf+0x226>
c0de9db2:	4869      	ldr	r0, [pc, #420]	@ (c0de9f58 <snprintf+0x318>)
c0de9db4:	4478      	add	r0, pc
c0de9db6:	f04f 0c01 	mov.w	ip, #1
c0de9dba:	e003      	b.n	c0de9dc4 <snprintf+0x184>
c0de9dbc:	4864      	ldr	r0, [pc, #400]	@ (c0de9f50 <snprintf+0x310>)
c0de9dbe:	f04f 0c00 	mov.w	ip, #0
c0de9dc2:	4478      	add	r0, pc
c0de9dc4:	9b02      	ldr	r3, [sp, #8]
c0de9dc6:	b2d2      	uxtb	r2, r2
c0de9dc8:	1d1e      	adds	r6, r3, #4
c0de9dca:	9602      	str	r6, [sp, #8]
c0de9dcc:	1e4e      	subs	r6, r1, #1
c0de9dce:	6819      	ldr	r1, [r3, #0]
c0de9dd0:	2a02      	cmp	r2, #2
c0de9dd2:	f000 80a7 	beq.w	c0de9f24 <snprintf+0x2e4>
c0de9dd6:	2a01      	cmp	r2, #1
c0de9dd8:	d007      	beq.n	c0de9dea <snprintf+0x1aa>
c0de9dda:	463d      	mov	r5, r7
c0de9ddc:	b92a      	cbnz	r2, c0de9dea <snprintf+0x1aa>
c0de9dde:	2200      	movs	r2, #0
c0de9de0:	5c8b      	ldrb	r3, [r1, r2]
c0de9de2:	3201      	adds	r2, #1
c0de9de4:	2b00      	cmp	r3, #0
c0de9de6:	d1fb      	bne.n	c0de9de0 <snprintf+0x1a0>
c0de9de8:	1e55      	subs	r5, r2, #1
c0de9dea:	f1bc 0f00 	cmp.w	ip, #0
c0de9dee:	d016      	beq.n	c0de9e1e <snprintf+0x1de>
c0de9df0:	2d00      	cmp	r5, #0
c0de9df2:	f43f af3c 	beq.w	c0de9c6e <snprintf+0x2e>
c0de9df6:	f1b8 0f02 	cmp.w	r8, #2
c0de9dfa:	f0c0 80a3 	bcc.w	c0de9f44 <snprintf+0x304>
c0de9dfe:	780a      	ldrb	r2, [r1, #0]
c0de9e00:	0913      	lsrs	r3, r2, #4
c0de9e02:	f002 020f 	and.w	r2, r2, #15
c0de9e06:	5cc3      	ldrb	r3, [r0, r3]
c0de9e08:	f1b8 0802 	subs.w	r8, r8, #2
c0de9e0c:	7023      	strb	r3, [r4, #0]
c0de9e0e:	5c82      	ldrb	r2, [r0, r2]
c0de9e10:	7062      	strb	r2, [r4, #1]
c0de9e12:	f000 8097 	beq.w	c0de9f44 <snprintf+0x304>
c0de9e16:	3101      	adds	r1, #1
c0de9e18:	3d01      	subs	r5, #1
c0de9e1a:	3402      	adds	r4, #2
c0de9e1c:	e7e8      	b.n	c0de9df0 <snprintf+0x1b0>
c0de9e1e:	4545      	cmp	r5, r8
c0de9e20:	bf28      	it	cs
c0de9e22:	4645      	movcs	r5, r8
c0de9e24:	4620      	mov	r0, r4
c0de9e26:	462a      	mov	r2, r5
c0de9e28:	f000 fca9 	bl	c0dea77e <__aeabi_memmove>
c0de9e2c:	ebb8 0805 	subs.w	r8, r8, r5
c0de9e30:	f000 8088 	beq.w	c0de9f44 <snprintf+0x304>
c0de9e34:	462f      	mov	r7, r5
c0de9e36:	442c      	add	r4, r5
c0de9e38:	45bb      	cmp	fp, r7
c0de9e3a:	f67f af18 	bls.w	c0de9c6e <snprintf+0x2e>
c0de9e3e:	ebab 0507 	sub.w	r5, fp, r7
c0de9e42:	4620      	mov	r0, r4
c0de9e44:	4545      	cmp	r5, r8
c0de9e46:	bf28      	it	cs
c0de9e48:	4645      	movcs	r5, r8
c0de9e4a:	4629      	mov	r1, r5
c0de9e4c:	2220      	movs	r2, #32
c0de9e4e:	f000 fc98 	bl	c0dea782 <__aeabi_memset>
c0de9e52:	e061      	b.n	c0de9f18 <snprintf+0x2d8>
c0de9e54:	9a02      	ldr	r2, [sp, #8]
c0de9e56:	9400      	str	r4, [sp, #0]
c0de9e58:	2400      	movs	r4, #0
c0de9e5a:	f04f 0c00 	mov.w	ip, #0
c0de9e5e:	1d13      	adds	r3, r2, #4
c0de9e60:	9302      	str	r3, [sp, #8]
c0de9e62:	230a      	movs	r3, #10
c0de9e64:	6812      	ldr	r2, [r2, #0]
c0de9e66:	483d      	ldr	r0, [pc, #244]	@ (c0de9f5c <snprintf+0x31c>)
c0de9e68:	1e4e      	subs	r6, r1, #1
c0de9e6a:	f04f 0a01 	mov.w	sl, #1
c0de9e6e:	4478      	add	r0, pc
c0de9e70:	9001      	str	r0, [sp, #4]
c0de9e72:	fba3 570a 	umull	r5, r7, r3, sl
c0de9e76:	2f00      	cmp	r7, #0
c0de9e78:	bf18      	it	ne
c0de9e7a:	2701      	movne	r7, #1
c0de9e7c:	4295      	cmp	r5, r2
c0de9e7e:	d804      	bhi.n	c0de9e8a <snprintf+0x24a>
c0de9e80:	b91f      	cbnz	r7, c0de9e8a <snprintf+0x24a>
c0de9e82:	f1ab 0b01 	sub.w	fp, fp, #1
c0de9e86:	46aa      	mov	sl, r5
c0de9e88:	e7f3      	b.n	c0de9e72 <snprintf+0x232>
c0de9e8a:	2c00      	cmp	r4, #0
c0de9e8c:	4627      	mov	r7, r4
c0de9e8e:	f04f 0500 	mov.w	r5, #0
c0de9e92:	bf18      	it	ne
c0de9e94:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de9e98:	d00d      	beq.n	c0de9eb6 <snprintf+0x276>
c0de9e9a:	4660      	mov	r0, ip
c0de9e9c:	fa5f fc8e 	uxtb.w	ip, lr
c0de9ea0:	a903      	add	r1, sp, #12
c0de9ea2:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de9ea6:	4684      	mov	ip, r0
c0de9ea8:	d106      	bne.n	c0de9eb8 <snprintf+0x278>
c0de9eaa:	202d      	movs	r0, #45	@ 0x2d
c0de9eac:	2400      	movs	r4, #0
c0de9eae:	2501      	movs	r5, #1
c0de9eb0:	f88d 000c 	strb.w	r0, [sp, #12]
c0de9eb4:	e000      	b.n	c0de9eb8 <snprintf+0x278>
c0de9eb6:	a903      	add	r1, sp, #12
c0de9eb8:	eb07 000b 	add.w	r0, r7, fp
c0de9ebc:	3802      	subs	r0, #2
c0de9ebe:	280d      	cmp	r0, #13
c0de9ec0:	d808      	bhi.n	c0de9ed4 <snprintf+0x294>
c0de9ec2:	f1c7 0701 	rsb	r7, r7, #1
c0de9ec6:	45bb      	cmp	fp, r7
c0de9ec8:	d004      	beq.n	c0de9ed4 <snprintf+0x294>
c0de9eca:	f801 e005 	strb.w	lr, [r1, r5]
c0de9ece:	3701      	adds	r7, #1
c0de9ed0:	3501      	adds	r5, #1
c0de9ed2:	e7f8      	b.n	c0de9ec6 <snprintf+0x286>
c0de9ed4:	9f01      	ldr	r7, [sp, #4]
c0de9ed6:	b114      	cbz	r4, c0de9ede <snprintf+0x29e>
c0de9ed8:	202d      	movs	r0, #45	@ 0x2d
c0de9eda:	5548      	strb	r0, [r1, r5]
c0de9edc:	3501      	adds	r5, #1
c0de9ede:	4820      	ldr	r0, [pc, #128]	@ (c0de9f60 <snprintf+0x320>)
c0de9ee0:	f1bc 0f00 	cmp.w	ip, #0
c0de9ee4:	4478      	add	r0, pc
c0de9ee6:	bf08      	it	eq
c0de9ee8:	4638      	moveq	r0, r7
c0de9eea:	f1ba 0f00 	cmp.w	sl, #0
c0de9eee:	d00b      	beq.n	c0de9f08 <snprintf+0x2c8>
c0de9ef0:	fbb2 f7fa 	udiv	r7, r2, sl
c0de9ef4:	fbba faf3 	udiv	sl, sl, r3
c0de9ef8:	fbb7 f4f3 	udiv	r4, r7, r3
c0de9efc:	fb04 7413 	mls	r4, r4, r3, r7
c0de9f00:	5d04      	ldrb	r4, [r0, r4]
c0de9f02:	554c      	strb	r4, [r1, r5]
c0de9f04:	3501      	adds	r5, #1
c0de9f06:	e7f0      	b.n	c0de9eea <snprintf+0x2aa>
c0de9f08:	4545      	cmp	r5, r8
c0de9f0a:	bf28      	it	cs
c0de9f0c:	4645      	movcs	r5, r8
c0de9f0e:	9c00      	ldr	r4, [sp, #0]
c0de9f10:	462a      	mov	r2, r5
c0de9f12:	4620      	mov	r0, r4
c0de9f14:	f000 fc33 	bl	c0dea77e <__aeabi_memmove>
c0de9f18:	ebb8 0805 	subs.w	r8, r8, r5
c0de9f1c:	442c      	add	r4, r5
c0de9f1e:	f47f aea6 	bne.w	c0de9c6e <snprintf+0x2e>
c0de9f22:	e00f      	b.n	c0de9f44 <snprintf+0x304>
c0de9f24:	7808      	ldrb	r0, [r1, #0]
c0de9f26:	2800      	cmp	r0, #0
c0de9f28:	f47f aea1 	bne.w	c0de9c6e <snprintf+0x2e>
c0de9f2c:	4545      	cmp	r5, r8
c0de9f2e:	bf28      	it	cs
c0de9f30:	4645      	movcs	r5, r8
c0de9f32:	4620      	mov	r0, r4
c0de9f34:	4629      	mov	r1, r5
c0de9f36:	2220      	movs	r2, #32
c0de9f38:	f000 fc23 	bl	c0dea782 <__aeabi_memset>
c0de9f3c:	ebb8 0805 	subs.w	r8, r8, r5
c0de9f40:	f47f af79 	bne.w	c0de9e36 <snprintf+0x1f6>
c0de9f44:	2000      	movs	r0, #0
c0de9f46:	b007      	add	sp, #28
c0de9f48:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9f4c:	b001      	add	sp, #4
c0de9f4e:	4770      	bx	lr
c0de9f50:	00001b4d 	.word	0x00001b4d
c0de9f54:	00001bb7 	.word	0x00001bb7
c0de9f58:	00001b5b 	.word	0x00001b5b
c0de9f5c:	00001aa1 	.word	0x00001aa1
c0de9f60:	00001a3b 	.word	0x00001a3b

c0de9f64 <pic_internal>:
c0de9f64:	467a      	mov	r2, pc
c0de9f66:	4902      	ldr	r1, [pc, #8]	@ (c0de9f70 <pic_internal+0xc>)
c0de9f68:	1cc9      	adds	r1, r1, #3
c0de9f6a:	1a89      	subs	r1, r1, r2
c0de9f6c:	1a40      	subs	r0, r0, r1
c0de9f6e:	4770      	bx	lr
c0de9f70:	c0de9f65 	.word	0xc0de9f65

c0de9f74 <pic>:
c0de9f74:	4a0a      	ldr	r2, [pc, #40]	@ (c0de9fa0 <pic+0x2c>)
c0de9f76:	4282      	cmp	r2, r0
c0de9f78:	490a      	ldr	r1, [pc, #40]	@ (c0de9fa4 <pic+0x30>)
c0de9f7a:	d806      	bhi.n	c0de9f8a <pic+0x16>
c0de9f7c:	4281      	cmp	r1, r0
c0de9f7e:	d304      	bcc.n	c0de9f8a <pic+0x16>
c0de9f80:	b580      	push	{r7, lr}
c0de9f82:	f7ff ffef 	bl	c0de9f64 <pic_internal>
c0de9f86:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9f8a:	4907      	ldr	r1, [pc, #28]	@ (c0de9fa8 <pic+0x34>)
c0de9f8c:	4288      	cmp	r0, r1
c0de9f8e:	4a07      	ldr	r2, [pc, #28]	@ (c0de9fac <pic+0x38>)
c0de9f90:	d304      	bcc.n	c0de9f9c <pic+0x28>
c0de9f92:	4290      	cmp	r0, r2
c0de9f94:	d802      	bhi.n	c0de9f9c <pic+0x28>
c0de9f96:	1a40      	subs	r0, r0, r1
c0de9f98:	4649      	mov	r1, r9
c0de9f9a:	4408      	add	r0, r1
c0de9f9c:	4770      	bx	lr
c0de9f9e:	0000      	movs	r0, r0
c0de9fa0:	c0de0000 	.word	0xc0de0000
c0de9fa4:	c0debc3f 	.word	0xc0debc3f
c0de9fa8:	da7a0000 	.word	0xda7a0000
c0de9fac:	da7ab000 	.word	0xda7ab000

c0de9fb0 <SVC_Call>:
c0de9fb0:	df01      	svc	1
c0de9fb2:	2900      	cmp	r1, #0
c0de9fb4:	d100      	bne.n	c0de9fb8 <exception>
c0de9fb6:	4770      	bx	lr

c0de9fb8 <exception>:
c0de9fb8:	4608      	mov	r0, r1
c0de9fba:	f7ff f9a3 	bl	c0de9304 <os_longjmp>
	...

c0de9fc0 <SVC_cx_call>:
c0de9fc0:	df01      	svc	1
c0de9fc2:	4770      	bx	lr

c0de9fc4 <halt>:
c0de9fc4:	b5e0      	push	{r5, r6, r7, lr}
c0de9fc6:	2000      	movs	r0, #0
c0de9fc8:	4669      	mov	r1, sp
c0de9fca:	9001      	str	r0, [sp, #4]
c0de9fcc:	2002      	movs	r0, #2
c0de9fce:	f7ff ffef 	bl	c0de9fb0 <SVC_Call>
c0de9fd2:	bd8c      	pop	{r2, r3, r7, pc}

c0de9fd4 <nbgl_frontDrawRect>:
c0de9fd4:	b5e0      	push	{r5, r6, r7, lr}
c0de9fd6:	9001      	str	r0, [sp, #4]
c0de9fd8:	a901      	add	r1, sp, #4
c0de9fda:	f04f 70fd 	mov.w	r0, #33161216	@ 0x1fa0000
c0de9fde:	f7ff ffe7 	bl	c0de9fb0 <SVC_Call>
c0de9fe2:	bd8c      	pop	{r2, r3, r7, pc}

c0de9fe4 <nbgl_frontDrawImage>:
c0de9fe4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de9fe6:	9000      	str	r0, [sp, #0]
c0de9fe8:	f000 fa30 	bl	c0dea44c <OUTLINED_FUNCTION_1>
c0de9fec:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0de9ff0:	4802      	ldr	r0, [pc, #8]	@ (c0de9ffc <nbgl_frontDrawImage+0x18>)
c0de9ff2:	4669      	mov	r1, sp
c0de9ff4:	9403      	str	r4, [sp, #12]
c0de9ff6:	f7ff ffdb 	bl	c0de9fb0 <SVC_Call>
c0de9ffa:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de9ffc:	04fa0002 	.word	0x04fa0002

c0dea000 <nbgl_frontDrawImageRle>:
c0dea000:	b5b0      	push	{r4, r5, r7, lr}
c0dea002:	b086      	sub	sp, #24
c0dea004:	9001      	str	r0, [sp, #4]
c0dea006:	f000 fa21 	bl	c0dea44c <OUTLINED_FUNCTION_1>
c0dea00a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0dea00c:	e9cd 0502 	strd	r0, r5, [sp, #8]
c0dea010:	4803      	ldr	r0, [pc, #12]	@ (c0dea020 <nbgl_frontDrawImageRle+0x20>)
c0dea012:	e9cd 4104 	strd	r4, r1, [sp, #16]
c0dea016:	a901      	add	r1, sp, #4
c0dea018:	f7ff ffca 	bl	c0de9fb0 <SVC_Call>
c0dea01c:	b006      	add	sp, #24
c0dea01e:	bdb0      	pop	{r4, r5, r7, pc}
c0dea020:	05fa0010 	.word	0x05fa0010

c0dea024 <nbgl_frontDrawImageFile>:
c0dea024:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0dea026:	9000      	str	r0, [sp, #0]
c0dea028:	f000 fa10 	bl	c0dea44c <OUTLINED_FUNCTION_1>
c0dea02c:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0dea030:	4802      	ldr	r0, [pc, #8]	@ (c0dea03c <nbgl_frontDrawImageFile+0x18>)
c0dea032:	4669      	mov	r1, sp
c0dea034:	9403      	str	r4, [sp, #12]
c0dea036:	f7ff ffbb 	bl	c0de9fb0 <SVC_Call>
c0dea03a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0dea03c:	05fa0004 	.word	0x05fa0004

c0dea040 <nbgl_frontRefreshArea>:
c0dea040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea042:	ab01      	add	r3, sp, #4
c0dea044:	c307      	stmia	r3!, {r0, r1, r2}
c0dea046:	4802      	ldr	r0, [pc, #8]	@ (c0dea050 <nbgl_frontRefreshArea+0x10>)
c0dea048:	a901      	add	r1, sp, #4
c0dea04a:	f7ff ffb1 	bl	c0de9fb0 <SVC_Call>
c0dea04e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0dea050:	03fa0003 	.word	0x03fa0003

c0dea054 <nbgl_font_getFont>:
c0dea054:	b5e0      	push	{r5, r6, r7, lr}
c0dea056:	9001      	str	r0, [sp, #4]
c0dea058:	4802      	ldr	r0, [pc, #8]	@ (c0dea064 <nbgl_font_getFont+0x10>)
c0dea05a:	a901      	add	r1, sp, #4
c0dea05c:	f7ff ffa8 	bl	c0de9fb0 <SVC_Call>
c0dea060:	bd8c      	pop	{r2, r3, r7, pc}
c0dea062:	bf00      	nop
c0dea064:	01fa000c 	.word	0x01fa000c

c0dea068 <nbgl_screen_reinit>:
c0dea068:	b5e0      	push	{r5, r6, r7, lr}
c0dea06a:	2000      	movs	r0, #0
c0dea06c:	9001      	str	r0, [sp, #4]
c0dea06e:	4802      	ldr	r0, [pc, #8]	@ (c0dea078 <nbgl_screen_reinit+0x10>)
c0dea070:	a901      	add	r1, sp, #4
c0dea072:	f7ff ff9d 	bl	c0de9fb0 <SVC_Call>
c0dea076:	bd8c      	pop	{r2, r3, r7, pc}
c0dea078:	00fa000d 	.word	0x00fa000d

c0dea07c <nvm_write>:
c0dea07c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea07e:	ab01      	add	r3, sp, #4
c0dea080:	c307      	stmia	r3!, {r0, r1, r2}
c0dea082:	4802      	ldr	r0, [pc, #8]	@ (c0dea08c <nvm_write+0x10>)
c0dea084:	a901      	add	r1, sp, #4
c0dea086:	f7ff ff93 	bl	c0de9fb0 <SVC_Call>
c0dea08a:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0dea08c:	03000003 	.word	0x03000003

c0dea090 <cx_bn_lock>:
c0dea090:	b5e0      	push	{r5, r6, r7, lr}
c0dea092:	e9cd 0100 	strd	r0, r1, [sp]
c0dea096:	4802      	ldr	r0, [pc, #8]	@ (c0dea0a0 <cx_bn_lock+0x10>)
c0dea098:	4669      	mov	r1, sp
c0dea09a:	f7ff ff91 	bl	c0de9fc0 <SVC_cx_call>
c0dea09e:	bd8c      	pop	{r2, r3, r7, pc}
c0dea0a0:	02000112 	.word	0x02000112

c0dea0a4 <cx_bn_unlock>:
c0dea0a4:	b5e0      	push	{r5, r6, r7, lr}
c0dea0a6:	2000      	movs	r0, #0
c0dea0a8:	4669      	mov	r1, sp
c0dea0aa:	9001      	str	r0, [sp, #4]
c0dea0ac:	20b6      	movs	r0, #182	@ 0xb6
c0dea0ae:	f7ff ff87 	bl	c0de9fc0 <SVC_cx_call>
c0dea0b2:	bd8c      	pop	{r2, r3, r7, pc}

c0dea0b4 <cx_bn_alloc>:
c0dea0b4:	b5e0      	push	{r5, r6, r7, lr}
c0dea0b6:	e9cd 0100 	strd	r0, r1, [sp]
c0dea0ba:	4802      	ldr	r0, [pc, #8]	@ (c0dea0c4 <cx_bn_alloc+0x10>)
c0dea0bc:	4669      	mov	r1, sp
c0dea0be:	f7ff ff7f 	bl	c0de9fc0 <SVC_cx_call>
c0dea0c2:	bd8c      	pop	{r2, r3, r7, pc}
c0dea0c4:	02000113 	.word	0x02000113

c0dea0c8 <cx_bn_alloc_init>:
c0dea0c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea0ca:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dea0ce:	4803      	ldr	r0, [pc, #12]	@ (c0dea0dc <cx_bn_alloc_init+0x14>)
c0dea0d0:	4669      	mov	r1, sp
c0dea0d2:	f7ff ff75 	bl	c0de9fc0 <SVC_cx_call>
c0dea0d6:	b004      	add	sp, #16
c0dea0d8:	bd80      	pop	{r7, pc}
c0dea0da:	bf00      	nop
c0dea0dc:	04000114 	.word	0x04000114

c0dea0e0 <cx_bn_destroy>:
c0dea0e0:	b5e0      	push	{r5, r6, r7, lr}
c0dea0e2:	f000 f9af 	bl	c0dea444 <OUTLINED_FUNCTION_0>
c0dea0e6:	4802      	ldr	r0, [pc, #8]	@ (c0dea0f0 <cx_bn_destroy+0x10>)
c0dea0e8:	4669      	mov	r1, sp
c0dea0ea:	f7ff ff69 	bl	c0de9fc0 <SVC_cx_call>
c0dea0ee:	bd8c      	pop	{r2, r3, r7, pc}
c0dea0f0:	010000bc 	.word	0x010000bc

c0dea0f4 <cx_bn_nbytes>:
c0dea0f4:	b5e0      	push	{r5, r6, r7, lr}
c0dea0f6:	e9cd 0100 	strd	r0, r1, [sp]
c0dea0fa:	4802      	ldr	r0, [pc, #8]	@ (c0dea104 <cx_bn_nbytes+0x10>)
c0dea0fc:	4669      	mov	r1, sp
c0dea0fe:	f7ff ff5f 	bl	c0de9fc0 <SVC_cx_call>
c0dea102:	bd8c      	pop	{r2, r3, r7, pc}
c0dea104:	0200010d 	.word	0x0200010d

c0dea108 <cx_bn_init>:
c0dea108:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea10a:	ab01      	add	r3, sp, #4
c0dea10c:	c307      	stmia	r3!, {r0, r1, r2}
c0dea10e:	4803      	ldr	r0, [pc, #12]	@ (c0dea11c <cx_bn_init+0x14>)
c0dea110:	a901      	add	r1, sp, #4
c0dea112:	f7ff ff55 	bl	c0de9fc0 <SVC_cx_call>
c0dea116:	b004      	add	sp, #16
c0dea118:	bd80      	pop	{r7, pc}
c0dea11a:	bf00      	nop
c0dea11c:	03000115 	.word	0x03000115

c0dea120 <cx_bn_copy>:
c0dea120:	b5e0      	push	{r5, r6, r7, lr}
c0dea122:	e9cd 0100 	strd	r0, r1, [sp]
c0dea126:	4802      	ldr	r0, [pc, #8]	@ (c0dea130 <cx_bn_copy+0x10>)
c0dea128:	4669      	mov	r1, sp
c0dea12a:	f7ff ff49 	bl	c0de9fc0 <SVC_cx_call>
c0dea12e:	bd8c      	pop	{r2, r3, r7, pc}
c0dea130:	020000c0 	.word	0x020000c0

c0dea134 <cx_bn_set_u32>:
c0dea134:	b5e0      	push	{r5, r6, r7, lr}
c0dea136:	e9cd 0100 	strd	r0, r1, [sp]
c0dea13a:	4802      	ldr	r0, [pc, #8]	@ (c0dea144 <cx_bn_set_u32+0x10>)
c0dea13c:	4669      	mov	r1, sp
c0dea13e:	f7ff ff3f 	bl	c0de9fc0 <SVC_cx_call>
c0dea142:	bd8c      	pop	{r2, r3, r7, pc}
c0dea144:	020000c1 	.word	0x020000c1

c0dea148 <cx_bn_export>:
c0dea148:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea14a:	ab01      	add	r3, sp, #4
c0dea14c:	c307      	stmia	r3!, {r0, r1, r2}
c0dea14e:	4803      	ldr	r0, [pc, #12]	@ (c0dea15c <cx_bn_export+0x14>)
c0dea150:	a901      	add	r1, sp, #4
c0dea152:	f7ff ff35 	bl	c0de9fc0 <SVC_cx_call>
c0dea156:	b004      	add	sp, #16
c0dea158:	bd80      	pop	{r7, pc}
c0dea15a:	bf00      	nop
c0dea15c:	030000c3 	.word	0x030000c3

c0dea160 <cx_bn_cmp>:
c0dea160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea162:	ab01      	add	r3, sp, #4
c0dea164:	c307      	stmia	r3!, {r0, r1, r2}
c0dea166:	4803      	ldr	r0, [pc, #12]	@ (c0dea174 <cx_bn_cmp+0x14>)
c0dea168:	a901      	add	r1, sp, #4
c0dea16a:	f7ff ff29 	bl	c0de9fc0 <SVC_cx_call>
c0dea16e:	b004      	add	sp, #16
c0dea170:	bd80      	pop	{r7, pc}
c0dea172:	bf00      	nop
c0dea174:	030000c4 	.word	0x030000c4

c0dea178 <cx_bn_cmp_u32>:
c0dea178:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea17a:	ab01      	add	r3, sp, #4
c0dea17c:	c307      	stmia	r3!, {r0, r1, r2}
c0dea17e:	4803      	ldr	r0, [pc, #12]	@ (c0dea18c <cx_bn_cmp_u32+0x14>)
c0dea180:	a901      	add	r1, sp, #4
c0dea182:	f7ff ff1d 	bl	c0de9fc0 <SVC_cx_call>
c0dea186:	b004      	add	sp, #16
c0dea188:	bd80      	pop	{r7, pc}
c0dea18a:	bf00      	nop
c0dea18c:	030000c5 	.word	0x030000c5

c0dea190 <cx_bn_tst_bit>:
c0dea190:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea192:	ab01      	add	r3, sp, #4
c0dea194:	c307      	stmia	r3!, {r0, r1, r2}
c0dea196:	4803      	ldr	r0, [pc, #12]	@ (c0dea1a4 <cx_bn_tst_bit+0x14>)
c0dea198:	a901      	add	r1, sp, #4
c0dea19a:	f7ff ff11 	bl	c0de9fc0 <SVC_cx_call>
c0dea19e:	b004      	add	sp, #16
c0dea1a0:	bd80      	pop	{r7, pc}
c0dea1a2:	bf00      	nop
c0dea1a4:	030000cb 	.word	0x030000cb

c0dea1a8 <cx_bn_mod_add>:
c0dea1a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea1aa:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dea1ae:	4803      	ldr	r0, [pc, #12]	@ (c0dea1bc <cx_bn_mod_add+0x14>)
c0dea1b0:	4669      	mov	r1, sp
c0dea1b2:	f7ff ff05 	bl	c0de9fc0 <SVC_cx_call>
c0dea1b6:	b004      	add	sp, #16
c0dea1b8:	bd80      	pop	{r7, pc}
c0dea1ba:	bf00      	nop
c0dea1bc:	040000d3 	.word	0x040000d3

c0dea1c0 <cx_bn_mod_sub>:
c0dea1c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea1c2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dea1c6:	4803      	ldr	r0, [pc, #12]	@ (c0dea1d4 <cx_bn_mod_sub+0x14>)
c0dea1c8:	4669      	mov	r1, sp
c0dea1ca:	f7ff fef9 	bl	c0de9fc0 <SVC_cx_call>
c0dea1ce:	b004      	add	sp, #16
c0dea1d0:	bd80      	pop	{r7, pc}
c0dea1d2:	bf00      	nop
c0dea1d4:	040000d4 	.word	0x040000d4

c0dea1d8 <cx_bn_mod_mul>:
c0dea1d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea1da:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dea1de:	4803      	ldr	r0, [pc, #12]	@ (c0dea1ec <cx_bn_mod_mul+0x14>)
c0dea1e0:	4669      	mov	r1, sp
c0dea1e2:	f7ff feed 	bl	c0de9fc0 <SVC_cx_call>
c0dea1e6:	b004      	add	sp, #16
c0dea1e8:	bd80      	pop	{r7, pc}
c0dea1ea:	bf00      	nop
c0dea1ec:	040000d5 	.word	0x040000d5

c0dea1f0 <cx_bn_reduce>:
c0dea1f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea1f2:	ab01      	add	r3, sp, #4
c0dea1f4:	c307      	stmia	r3!, {r0, r1, r2}
c0dea1f6:	4803      	ldr	r0, [pc, #12]	@ (c0dea204 <cx_bn_reduce+0x14>)
c0dea1f8:	a901      	add	r1, sp, #4
c0dea1fa:	f7ff fee1 	bl	c0de9fc0 <SVC_cx_call>
c0dea1fe:	b004      	add	sp, #16
c0dea200:	bd80      	pop	{r7, pc}
c0dea202:	bf00      	nop
c0dea204:	030000d6 	.word	0x030000d6

c0dea208 <cx_bn_mod_invert_nprime>:
c0dea208:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea20a:	ab01      	add	r3, sp, #4
c0dea20c:	c307      	stmia	r3!, {r0, r1, r2}
c0dea20e:	4803      	ldr	r0, [pc, #12]	@ (c0dea21c <cx_bn_mod_invert_nprime+0x14>)
c0dea210:	a901      	add	r1, sp, #4
c0dea212:	f7ff fed5 	bl	c0de9fc0 <SVC_cx_call>
c0dea216:	b004      	add	sp, #16
c0dea218:	bd80      	pop	{r7, pc}
c0dea21a:	bf00      	nop
c0dea21c:	030000da 	.word	0x030000da

c0dea220 <cx_bn_is_prime>:
c0dea220:	b5e0      	push	{r5, r6, r7, lr}
c0dea222:	e9cd 0100 	strd	r0, r1, [sp]
c0dea226:	4802      	ldr	r0, [pc, #8]	@ (c0dea230 <cx_bn_is_prime+0x10>)
c0dea228:	4669      	mov	r1, sp
c0dea22a:	f7ff fec9 	bl	c0de9fc0 <SVC_cx_call>
c0dea22e:	bd8c      	pop	{r2, r3, r7, pc}
c0dea230:	020000ef 	.word	0x020000ef

c0dea234 <cx_mont_alloc>:
c0dea234:	b5e0      	push	{r5, r6, r7, lr}
c0dea236:	e9cd 0100 	strd	r0, r1, [sp]
c0dea23a:	4802      	ldr	r0, [pc, #8]	@ (c0dea244 <cx_mont_alloc+0x10>)
c0dea23c:	4669      	mov	r1, sp
c0dea23e:	f7ff febf 	bl	c0de9fc0 <SVC_cx_call>
c0dea242:	bd8c      	pop	{r2, r3, r7, pc}
c0dea244:	020000dc 	.word	0x020000dc

c0dea248 <cx_mont_init>:
c0dea248:	b5e0      	push	{r5, r6, r7, lr}
c0dea24a:	e9cd 0100 	strd	r0, r1, [sp]
c0dea24e:	4802      	ldr	r0, [pc, #8]	@ (c0dea258 <cx_mont_init+0x10>)
c0dea250:	4669      	mov	r1, sp
c0dea252:	f7ff feb5 	bl	c0de9fc0 <SVC_cx_call>
c0dea256:	bd8c      	pop	{r2, r3, r7, pc}
c0dea258:	020000dd 	.word	0x020000dd

c0dea25c <cx_mont_to_montgomery>:
c0dea25c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea25e:	ab01      	add	r3, sp, #4
c0dea260:	c307      	stmia	r3!, {r0, r1, r2}
c0dea262:	4803      	ldr	r0, [pc, #12]	@ (c0dea270 <cx_mont_to_montgomery+0x14>)
c0dea264:	a901      	add	r1, sp, #4
c0dea266:	f7ff feab 	bl	c0de9fc0 <SVC_cx_call>
c0dea26a:	b004      	add	sp, #16
c0dea26c:	bd80      	pop	{r7, pc}
c0dea26e:	bf00      	nop
c0dea270:	030000df 	.word	0x030000df

c0dea274 <cx_mont_from_montgomery>:
c0dea274:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea276:	ab01      	add	r3, sp, #4
c0dea278:	c307      	stmia	r3!, {r0, r1, r2}
c0dea27a:	4803      	ldr	r0, [pc, #12]	@ (c0dea288 <cx_mont_from_montgomery+0x14>)
c0dea27c:	a901      	add	r1, sp, #4
c0dea27e:	f7ff fe9f 	bl	c0de9fc0 <SVC_cx_call>
c0dea282:	b004      	add	sp, #16
c0dea284:	bd80      	pop	{r7, pc}
c0dea286:	bf00      	nop
c0dea288:	030000e0 	.word	0x030000e0

c0dea28c <cx_mont_mul>:
c0dea28c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea28e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dea292:	4803      	ldr	r0, [pc, #12]	@ (c0dea2a0 <cx_mont_mul+0x14>)
c0dea294:	4669      	mov	r1, sp
c0dea296:	f7ff fe93 	bl	c0de9fc0 <SVC_cx_call>
c0dea29a:	b004      	add	sp, #16
c0dea29c:	bd80      	pop	{r7, pc}
c0dea29e:	bf00      	nop
c0dea2a0:	040000e1 	.word	0x040000e1

c0dea2a4 <cx_mont_pow>:
c0dea2a4:	b510      	push	{r4, lr}
c0dea2a6:	b086      	sub	sp, #24
c0dea2a8:	f10d 0c04 	add.w	ip, sp, #4
c0dea2ac:	9c08      	ldr	r4, [sp, #32]
c0dea2ae:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0dea2b2:	4803      	ldr	r0, [pc, #12]	@ (c0dea2c0 <cx_mont_pow+0x1c>)
c0dea2b4:	a901      	add	r1, sp, #4
c0dea2b6:	f7ff fe83 	bl	c0de9fc0 <SVC_cx_call>
c0dea2ba:	b006      	add	sp, #24
c0dea2bc:	bd10      	pop	{r4, pc}
c0dea2be:	bf00      	nop
c0dea2c0:	050000e2 	.word	0x050000e2

c0dea2c4 <cx_mont_invert_nprime>:
c0dea2c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea2c6:	ab01      	add	r3, sp, #4
c0dea2c8:	c307      	stmia	r3!, {r0, r1, r2}
c0dea2ca:	4803      	ldr	r0, [pc, #12]	@ (c0dea2d8 <cx_mont_invert_nprime+0x14>)
c0dea2cc:	a901      	add	r1, sp, #4
c0dea2ce:	f7ff fe77 	bl	c0de9fc0 <SVC_cx_call>
c0dea2d2:	b004      	add	sp, #16
c0dea2d4:	bd80      	pop	{r7, pc}
c0dea2d6:	bf00      	nop
c0dea2d8:	030000e4 	.word	0x030000e4

c0dea2dc <cx_ecdomain_parameters_length>:
c0dea2dc:	b5e0      	push	{r5, r6, r7, lr}
c0dea2de:	e9cd 0100 	strd	r0, r1, [sp]
c0dea2e2:	4802      	ldr	r0, [pc, #8]	@ (c0dea2ec <cx_ecdomain_parameters_length+0x10>)
c0dea2e4:	4669      	mov	r1, sp
c0dea2e6:	f7ff fe6b 	bl	c0de9fc0 <SVC_cx_call>
c0dea2ea:	bd8c      	pop	{r2, r3, r7, pc}
c0dea2ec:	0200012f 	.word	0x0200012f

c0dea2f0 <os_perso_derive_node_with_seed_key>:
c0dea2f0:	b510      	push	{r4, lr}
c0dea2f2:	b088      	sub	sp, #32
c0dea2f4:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0dea2f6:	9407      	str	r4, [sp, #28]
c0dea2f8:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0dea2fa:	9406      	str	r4, [sp, #24]
c0dea2fc:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0dea2fe:	9405      	str	r4, [sp, #20]
c0dea300:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0dea302:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0dea306:	4803      	ldr	r0, [pc, #12]	@ (c0dea314 <os_perso_derive_node_with_seed_key+0x24>)
c0dea308:	4669      	mov	r1, sp
c0dea30a:	f7ff fe51 	bl	c0de9fb0 <SVC_Call>
c0dea30e:	b008      	add	sp, #32
c0dea310:	bd10      	pop	{r4, pc}
c0dea312:	bf00      	nop
c0dea314:	080000a6 	.word	0x080000a6

c0dea318 <os_pki_load_certificate>:
c0dea318:	b510      	push	{r4, lr}
c0dea31a:	b086      	sub	sp, #24
c0dea31c:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0dea31e:	9405      	str	r4, [sp, #20]
c0dea320:	9c08      	ldr	r4, [sp, #32]
c0dea322:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0dea326:	4803      	ldr	r0, [pc, #12]	@ (c0dea334 <os_pki_load_certificate+0x1c>)
c0dea328:	4669      	mov	r1, sp
c0dea32a:	f7ff fe41 	bl	c0de9fb0 <SVC_Call>
c0dea32e:	b006      	add	sp, #24
c0dea330:	bd10      	pop	{r4, pc}
c0dea332:	bf00      	nop
c0dea334:	060000aa 	.word	0x060000aa

c0dea338 <os_perso_is_pin_set>:
c0dea338:	b5e0      	push	{r5, r6, r7, lr}
c0dea33a:	2000      	movs	r0, #0
c0dea33c:	4669      	mov	r1, sp
c0dea33e:	9001      	str	r0, [sp, #4]
c0dea340:	209e      	movs	r0, #158	@ 0x9e
c0dea342:	f7ff fe35 	bl	c0de9fb0 <SVC_Call>
c0dea346:	b2c0      	uxtb	r0, r0
c0dea348:	bd8c      	pop	{r2, r3, r7, pc}

c0dea34a <os_global_pin_is_validated>:
c0dea34a:	b5e0      	push	{r5, r6, r7, lr}
c0dea34c:	2000      	movs	r0, #0
c0dea34e:	4669      	mov	r1, sp
c0dea350:	9001      	str	r0, [sp, #4]
c0dea352:	20a0      	movs	r0, #160	@ 0xa0
c0dea354:	f7ff fe2c 	bl	c0de9fb0 <SVC_Call>
c0dea358:	b2c0      	uxtb	r0, r0
c0dea35a:	bd8c      	pop	{r2, r3, r7, pc}

c0dea35c <os_ux>:
c0dea35c:	b5e0      	push	{r5, r6, r7, lr}
c0dea35e:	f000 f871 	bl	c0dea444 <OUTLINED_FUNCTION_0>
c0dea362:	4802      	ldr	r0, [pc, #8]	@ (c0dea36c <os_ux+0x10>)
c0dea364:	4669      	mov	r1, sp
c0dea366:	f7ff fe23 	bl	c0de9fb0 <SVC_Call>
c0dea36a:	bd8c      	pop	{r2, r3, r7, pc}
c0dea36c:	01000064 	.word	0x01000064

c0dea370 <os_lib_end>:
c0dea370:	b082      	sub	sp, #8
c0dea372:	2000      	movs	r0, #0
c0dea374:	4669      	mov	r1, sp
c0dea376:	9001      	str	r0, [sp, #4]
c0dea378:	2068      	movs	r0, #104	@ 0x68
c0dea37a:	f7ff fe19 	bl	c0de9fb0 <SVC_Call>
c0dea37e:	deff      	udf	#255	@ 0xff

c0dea380 <os_flags>:
c0dea380:	b5e0      	push	{r5, r6, r7, lr}
c0dea382:	2000      	movs	r0, #0
c0dea384:	4669      	mov	r1, sp
c0dea386:	9001      	str	r0, [sp, #4]
c0dea388:	206a      	movs	r0, #106	@ 0x6a
c0dea38a:	f7ff fe11 	bl	c0de9fb0 <SVC_Call>
c0dea38e:	bd8c      	pop	{r2, r3, r7, pc}

c0dea390 <os_registry_get_current_app_tag>:
c0dea390:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea392:	ab01      	add	r3, sp, #4
c0dea394:	c307      	stmia	r3!, {r0, r1, r2}
c0dea396:	4803      	ldr	r0, [pc, #12]	@ (c0dea3a4 <os_registry_get_current_app_tag+0x14>)
c0dea398:	a901      	add	r1, sp, #4
c0dea39a:	f7ff fe09 	bl	c0de9fb0 <SVC_Call>
c0dea39e:	b004      	add	sp, #16
c0dea3a0:	bd80      	pop	{r7, pc}
c0dea3a2:	bf00      	nop
c0dea3a4:	03000074 	.word	0x03000074

c0dea3a8 <os_sched_exit>:
c0dea3a8:	b082      	sub	sp, #8
c0dea3aa:	f000 f84b 	bl	c0dea444 <OUTLINED_FUNCTION_0>
c0dea3ae:	4802      	ldr	r0, [pc, #8]	@ (c0dea3b8 <os_sched_exit+0x10>)
c0dea3b0:	4669      	mov	r1, sp
c0dea3b2:	f7ff fdfd 	bl	c0de9fb0 <SVC_Call>
c0dea3b6:	deff      	udf	#255	@ 0xff
c0dea3b8:	0100009a 	.word	0x0100009a

c0dea3bc <io_seph_send>:
c0dea3bc:	b5e0      	push	{r5, r6, r7, lr}
c0dea3be:	e9cd 0100 	strd	r0, r1, [sp]
c0dea3c2:	4802      	ldr	r0, [pc, #8]	@ (c0dea3cc <io_seph_send+0x10>)
c0dea3c4:	4669      	mov	r1, sp
c0dea3c6:	f7ff fdf3 	bl	c0de9fb0 <SVC_Call>
c0dea3ca:	bd8c      	pop	{r2, r3, r7, pc}
c0dea3cc:	02000083 	.word	0x02000083

c0dea3d0 <io_seph_is_status_sent>:
c0dea3d0:	b5e0      	push	{r5, r6, r7, lr}
c0dea3d2:	2000      	movs	r0, #0
c0dea3d4:	4669      	mov	r1, sp
c0dea3d6:	9001      	str	r0, [sp, #4]
c0dea3d8:	2084      	movs	r0, #132	@ 0x84
c0dea3da:	f7ff fde9 	bl	c0de9fb0 <SVC_Call>
c0dea3de:	bd8c      	pop	{r2, r3, r7, pc}

c0dea3e0 <io_seph_recv>:
c0dea3e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea3e2:	ab01      	add	r3, sp, #4
c0dea3e4:	c307      	stmia	r3!, {r0, r1, r2}
c0dea3e6:	4803      	ldr	r0, [pc, #12]	@ (c0dea3f4 <io_seph_recv+0x14>)
c0dea3e8:	a901      	add	r1, sp, #4
c0dea3ea:	f7ff fde1 	bl	c0de9fb0 <SVC_Call>
c0dea3ee:	b280      	uxth	r0, r0
c0dea3f0:	b004      	add	sp, #16
c0dea3f2:	bd80      	pop	{r7, pc}
c0dea3f4:	03000085 	.word	0x03000085

c0dea3f8 <try_context_get>:
c0dea3f8:	b5e0      	push	{r5, r6, r7, lr}
c0dea3fa:	2000      	movs	r0, #0
c0dea3fc:	4669      	mov	r1, sp
c0dea3fe:	9001      	str	r0, [sp, #4]
c0dea400:	2087      	movs	r0, #135	@ 0x87
c0dea402:	f7ff fdd5 	bl	c0de9fb0 <SVC_Call>
c0dea406:	bd8c      	pop	{r2, r3, r7, pc}

c0dea408 <try_context_set>:
c0dea408:	b5e0      	push	{r5, r6, r7, lr}
c0dea40a:	f000 f81b 	bl	c0dea444 <OUTLINED_FUNCTION_0>
c0dea40e:	4802      	ldr	r0, [pc, #8]	@ (c0dea418 <try_context_set+0x10>)
c0dea410:	4669      	mov	r1, sp
c0dea412:	f7ff fdcd 	bl	c0de9fb0 <SVC_Call>
c0dea416:	bd8c      	pop	{r2, r3, r7, pc}
c0dea418:	0100010b 	.word	0x0100010b

c0dea41c <os_sched_last_status>:
c0dea41c:	b5e0      	push	{r5, r6, r7, lr}
c0dea41e:	f000 f811 	bl	c0dea444 <OUTLINED_FUNCTION_0>
c0dea422:	4803      	ldr	r0, [pc, #12]	@ (c0dea430 <os_sched_last_status+0x14>)
c0dea424:	4669      	mov	r1, sp
c0dea426:	f7ff fdc3 	bl	c0de9fb0 <SVC_Call>
c0dea42a:	b2c0      	uxtb	r0, r0
c0dea42c:	bd8c      	pop	{r2, r3, r7, pc}
c0dea42e:	bf00      	nop
c0dea430:	0100009c 	.word	0x0100009c

c0dea434 <os_sched_current_task>:
c0dea434:	b5e0      	push	{r5, r6, r7, lr}
c0dea436:	2000      	movs	r0, #0
c0dea438:	4669      	mov	r1, sp
c0dea43a:	9001      	str	r0, [sp, #4]
c0dea43c:	208b      	movs	r0, #139	@ 0x8b
c0dea43e:	f7ff fdb7 	bl	c0de9fb0 <SVC_Call>
c0dea442:	bd8c      	pop	{r2, r3, r7, pc}

c0dea444 <OUTLINED_FUNCTION_0>:
c0dea444:	2100      	movs	r1, #0
c0dea446:	e9cd 0100 	strd	r0, r1, [sp]
c0dea44a:	4770      	bx	lr

c0dea44c <OUTLINED_FUNCTION_1>:
c0dea44c:	4608      	mov	r0, r1
c0dea44e:	461c      	mov	r4, r3
c0dea450:	4615      	mov	r5, r2
c0dea452:	f7ff bd8f 	b.w	c0de9f74 <pic>
	...

c0dea458 <__aeabi_idiv0>:
c0dea458:	4770      	bx	lr
c0dea45a:	bf00      	nop

c0dea45c <__aeabi_uldivmod>:
c0dea45c:	b953      	cbnz	r3, c0dea474 <__aeabi_uldivmod+0x18>
c0dea45e:	b94a      	cbnz	r2, c0dea474 <__aeabi_uldivmod+0x18>
c0dea460:	2900      	cmp	r1, #0
c0dea462:	bf08      	it	eq
c0dea464:	2800      	cmpeq	r0, #0
c0dea466:	bf1c      	itt	ne
c0dea468:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
c0dea46c:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
c0dea470:	f7ff bff2 	b.w	c0dea458 <__aeabi_idiv0>
c0dea474:	f1ad 0c08 	sub.w	ip, sp, #8
c0dea478:	e96d ce04 	strd	ip, lr, [sp, #-16]!
c0dea47c:	f000 f806 	bl	c0dea48c <__udivmoddi4>
c0dea480:	f8dd e004 	ldr.w	lr, [sp, #4]
c0dea484:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0dea488:	b004      	add	sp, #16
c0dea48a:	4770      	bx	lr

c0dea48c <__udivmoddi4>:
c0dea48c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0dea490:	9e09      	ldr	r6, [sp, #36]	@ 0x24
c0dea492:	460d      	mov	r5, r1
c0dea494:	4604      	mov	r4, r0
c0dea496:	460f      	mov	r7, r1
c0dea498:	2b00      	cmp	r3, #0
c0dea49a:	d147      	bne.n	c0dea52c <__udivmoddi4+0xa0>
c0dea49c:	428a      	cmp	r2, r1
c0dea49e:	4694      	mov	ip, r2
c0dea4a0:	d95f      	bls.n	c0dea562 <__udivmoddi4+0xd6>
c0dea4a2:	fab2 f382 	clz	r3, r2
c0dea4a6:	b143      	cbz	r3, c0dea4ba <__udivmoddi4+0x2e>
c0dea4a8:	f1c3 0120 	rsb	r1, r3, #32
c0dea4ac:	409f      	lsls	r7, r3
c0dea4ae:	fa02 fc03 	lsl.w	ip, r2, r3
c0dea4b2:	409c      	lsls	r4, r3
c0dea4b4:	fa20 f101 	lsr.w	r1, r0, r1
c0dea4b8:	430f      	orrs	r7, r1
c0dea4ba:	ea4f 451c 	mov.w	r5, ip, lsr #16
c0dea4be:	fa1f fe8c 	uxth.w	lr, ip
c0dea4c2:	0c22      	lsrs	r2, r4, #16
c0dea4c4:	fbb7 f1f5 	udiv	r1, r7, r5
c0dea4c8:	fb05 7711 	mls	r7, r5, r1, r7
c0dea4cc:	fb01 f00e 	mul.w	r0, r1, lr
c0dea4d0:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
c0dea4d4:	4290      	cmp	r0, r2
c0dea4d6:	d908      	bls.n	c0dea4ea <__udivmoddi4+0x5e>
c0dea4d8:	eb1c 0202 	adds.w	r2, ip, r2
c0dea4dc:	f101 37ff 	add.w	r7, r1, #4294967295	@ 0xffffffff
c0dea4e0:	d202      	bcs.n	c0dea4e8 <__udivmoddi4+0x5c>
c0dea4e2:	4290      	cmp	r0, r2
c0dea4e4:	f200 8134 	bhi.w	c0dea750 <__udivmoddi4+0x2c4>
c0dea4e8:	4639      	mov	r1, r7
c0dea4ea:	1a12      	subs	r2, r2, r0
c0dea4ec:	b2a4      	uxth	r4, r4
c0dea4ee:	fbb2 f0f5 	udiv	r0, r2, r5
c0dea4f2:	fb05 2210 	mls	r2, r5, r0, r2
c0dea4f6:	fb00 fe0e 	mul.w	lr, r0, lr
c0dea4fa:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
c0dea4fe:	45a6      	cmp	lr, r4
c0dea500:	d908      	bls.n	c0dea514 <__udivmoddi4+0x88>
c0dea502:	eb1c 0404 	adds.w	r4, ip, r4
c0dea506:	f100 32ff 	add.w	r2, r0, #4294967295	@ 0xffffffff
c0dea50a:	d202      	bcs.n	c0dea512 <__udivmoddi4+0x86>
c0dea50c:	45a6      	cmp	lr, r4
c0dea50e:	f200 8119 	bhi.w	c0dea744 <__udivmoddi4+0x2b8>
c0dea512:	4610      	mov	r0, r2
c0dea514:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0dea518:	eba4 040e 	sub.w	r4, r4, lr
c0dea51c:	2100      	movs	r1, #0
c0dea51e:	b11e      	cbz	r6, c0dea528 <__udivmoddi4+0x9c>
c0dea520:	40dc      	lsrs	r4, r3
c0dea522:	2300      	movs	r3, #0
c0dea524:	e9c6 4300 	strd	r4, r3, [r6]
c0dea528:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0dea52c:	428b      	cmp	r3, r1
c0dea52e:	d908      	bls.n	c0dea542 <__udivmoddi4+0xb6>
c0dea530:	2e00      	cmp	r6, #0
c0dea532:	f000 80fb 	beq.w	c0dea72c <__udivmoddi4+0x2a0>
c0dea536:	2100      	movs	r1, #0
c0dea538:	e9c6 0500 	strd	r0, r5, [r6]
c0dea53c:	4608      	mov	r0, r1
c0dea53e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0dea542:	fab3 f183 	clz	r1, r3
c0dea546:	2900      	cmp	r1, #0
c0dea548:	d14b      	bne.n	c0dea5e2 <__udivmoddi4+0x156>
c0dea54a:	42ab      	cmp	r3, r5
c0dea54c:	f0c0 80f1 	bcc.w	c0dea732 <__udivmoddi4+0x2a6>
c0dea550:	4282      	cmp	r2, r0
c0dea552:	f240 80ee 	bls.w	c0dea732 <__udivmoddi4+0x2a6>
c0dea556:	4608      	mov	r0, r1
c0dea558:	2e00      	cmp	r6, #0
c0dea55a:	d0e5      	beq.n	c0dea528 <__udivmoddi4+0x9c>
c0dea55c:	e9c6 4700 	strd	r4, r7, [r6]
c0dea560:	e7e2      	b.n	c0dea528 <__udivmoddi4+0x9c>
c0dea562:	b902      	cbnz	r2, c0dea566 <__udivmoddi4+0xda>
c0dea564:	deff      	udf	#255	@ 0xff
c0dea566:	fab2 f382 	clz	r3, r2
c0dea56a:	2b00      	cmp	r3, #0
c0dea56c:	f040 809d 	bne.w	c0dea6aa <__udivmoddi4+0x21e>
c0dea570:	1a8d      	subs	r5, r1, r2
c0dea572:	ea4f 4e12 	mov.w	lr, r2, lsr #16
c0dea576:	b297      	uxth	r7, r2
c0dea578:	2101      	movs	r1, #1
c0dea57a:	fbb5 f2fe 	udiv	r2, r5, lr
c0dea57e:	fb0e 5012 	mls	r0, lr, r2, r5
c0dea582:	0c25      	lsrs	r5, r4, #16
c0dea584:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
c0dea588:	fb07 f002 	mul.w	r0, r7, r2
c0dea58c:	42a8      	cmp	r0, r5
c0dea58e:	d90f      	bls.n	c0dea5b0 <__udivmoddi4+0x124>
c0dea590:	eb1c 0505 	adds.w	r5, ip, r5
c0dea594:	f102 38ff 	add.w	r8, r2, #4294967295	@ 0xffffffff
c0dea598:	bf2c      	ite	cs
c0dea59a:	f04f 0901 	movcs.w	r9, #1
c0dea59e:	f04f 0900 	movcc.w	r9, #0
c0dea5a2:	42a8      	cmp	r0, r5
c0dea5a4:	d903      	bls.n	c0dea5ae <__udivmoddi4+0x122>
c0dea5a6:	f1b9 0f00 	cmp.w	r9, #0
c0dea5aa:	f000 80ce 	beq.w	c0dea74a <__udivmoddi4+0x2be>
c0dea5ae:	4642      	mov	r2, r8
c0dea5b0:	1a2d      	subs	r5, r5, r0
c0dea5b2:	b2a4      	uxth	r4, r4
c0dea5b4:	fbb5 f0fe 	udiv	r0, r5, lr
c0dea5b8:	fb0e 5510 	mls	r5, lr, r0, r5
c0dea5bc:	fb00 f707 	mul.w	r7, r0, r7
c0dea5c0:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0dea5c4:	42a7      	cmp	r7, r4
c0dea5c6:	d908      	bls.n	c0dea5da <__udivmoddi4+0x14e>
c0dea5c8:	eb1c 0404 	adds.w	r4, ip, r4
c0dea5cc:	f100 35ff 	add.w	r5, r0, #4294967295	@ 0xffffffff
c0dea5d0:	d202      	bcs.n	c0dea5d8 <__udivmoddi4+0x14c>
c0dea5d2:	42a7      	cmp	r7, r4
c0dea5d4:	f200 80b3 	bhi.w	c0dea73e <__udivmoddi4+0x2b2>
c0dea5d8:	4628      	mov	r0, r5
c0dea5da:	1be4      	subs	r4, r4, r7
c0dea5dc:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0dea5e0:	e79d      	b.n	c0dea51e <__udivmoddi4+0x92>
c0dea5e2:	f1c1 0720 	rsb	r7, r1, #32
c0dea5e6:	408b      	lsls	r3, r1
c0dea5e8:	fa05 f401 	lsl.w	r4, r5, r1
c0dea5ec:	fa22 fc07 	lsr.w	ip, r2, r7
c0dea5f0:	40fd      	lsrs	r5, r7
c0dea5f2:	408a      	lsls	r2, r1
c0dea5f4:	ea4c 0c03 	orr.w	ip, ip, r3
c0dea5f8:	fa20 f307 	lsr.w	r3, r0, r7
c0dea5fc:	ea4f 491c 	mov.w	r9, ip, lsr #16
c0dea600:	431c      	orrs	r4, r3
c0dea602:	fa1f fe8c 	uxth.w	lr, ip
c0dea606:	fa00 f301 	lsl.w	r3, r0, r1
c0dea60a:	0c20      	lsrs	r0, r4, #16
c0dea60c:	fbb5 f8f9 	udiv	r8, r5, r9
c0dea610:	fb09 5518 	mls	r5, r9, r8, r5
c0dea614:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
c0dea618:	fb08 f00e 	mul.w	r0, r8, lr
c0dea61c:	42a8      	cmp	r0, r5
c0dea61e:	d90f      	bls.n	c0dea640 <__udivmoddi4+0x1b4>
c0dea620:	eb1c 0505 	adds.w	r5, ip, r5
c0dea624:	f108 3aff 	add.w	sl, r8, #4294967295	@ 0xffffffff
c0dea628:	bf2c      	ite	cs
c0dea62a:	f04f 0b01 	movcs.w	fp, #1
c0dea62e:	f04f 0b00 	movcc.w	fp, #0
c0dea632:	42a8      	cmp	r0, r5
c0dea634:	d903      	bls.n	c0dea63e <__udivmoddi4+0x1b2>
c0dea636:	f1bb 0f00 	cmp.w	fp, #0
c0dea63a:	f000 808c 	beq.w	c0dea756 <__udivmoddi4+0x2ca>
c0dea63e:	46d0      	mov	r8, sl
c0dea640:	1a2d      	subs	r5, r5, r0
c0dea642:	b2a4      	uxth	r4, r4
c0dea644:	fbb5 f0f9 	udiv	r0, r5, r9
c0dea648:	fb09 5510 	mls	r5, r9, r0, r5
c0dea64c:	fb00 fe0e 	mul.w	lr, r0, lr
c0dea650:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
c0dea654:	45ae      	cmp	lr, r5
c0dea656:	d907      	bls.n	c0dea668 <__udivmoddi4+0x1dc>
c0dea658:	eb1c 0505 	adds.w	r5, ip, r5
c0dea65c:	f100 34ff 	add.w	r4, r0, #4294967295	@ 0xffffffff
c0dea660:	d201      	bcs.n	c0dea666 <__udivmoddi4+0x1da>
c0dea662:	45ae      	cmp	lr, r5
c0dea664:	d87e      	bhi.n	c0dea764 <__udivmoddi4+0x2d8>
c0dea666:	4620      	mov	r0, r4
c0dea668:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
c0dea66c:	eba5 050e 	sub.w	r5, r5, lr
c0dea670:	fba0 9802 	umull	r9, r8, r0, r2
c0dea674:	4545      	cmp	r5, r8
c0dea676:	464c      	mov	r4, r9
c0dea678:	46c6      	mov	lr, r8
c0dea67a:	d302      	bcc.n	c0dea682 <__udivmoddi4+0x1f6>
c0dea67c:	d106      	bne.n	c0dea68c <__udivmoddi4+0x200>
c0dea67e:	454b      	cmp	r3, r9
c0dea680:	d204      	bcs.n	c0dea68c <__udivmoddi4+0x200>
c0dea682:	3801      	subs	r0, #1
c0dea684:	ebb9 0402 	subs.w	r4, r9, r2
c0dea688:	eb68 0e0c 	sbc.w	lr, r8, ip
c0dea68c:	2e00      	cmp	r6, #0
c0dea68e:	d06f      	beq.n	c0dea770 <__udivmoddi4+0x2e4>
c0dea690:	1b1a      	subs	r2, r3, r4
c0dea692:	eb65 050e 	sbc.w	r5, r5, lr
c0dea696:	fa22 f301 	lsr.w	r3, r2, r1
c0dea69a:	fa05 f707 	lsl.w	r7, r5, r7
c0dea69e:	40cd      	lsrs	r5, r1
c0dea6a0:	2100      	movs	r1, #0
c0dea6a2:	431f      	orrs	r7, r3
c0dea6a4:	e9c6 7500 	strd	r7, r5, [r6]
c0dea6a8:	e73e      	b.n	c0dea528 <__udivmoddi4+0x9c>
c0dea6aa:	fa02 fc03 	lsl.w	ip, r2, r3
c0dea6ae:	f1c3 0020 	rsb	r0, r3, #32
c0dea6b2:	fa01 f203 	lsl.w	r2, r1, r3
c0dea6b6:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
c0dea6ba:	40c1      	lsrs	r1, r0
c0dea6bc:	fa24 f500 	lsr.w	r5, r4, r0
c0dea6c0:	fa1f f78c 	uxth.w	r7, ip
c0dea6c4:	409c      	lsls	r4, r3
c0dea6c6:	4315      	orrs	r5, r2
c0dea6c8:	fbb1 f0fe 	udiv	r0, r1, lr
c0dea6cc:	0c2a      	lsrs	r2, r5, #16
c0dea6ce:	fb0e 1110 	mls	r1, lr, r0, r1
c0dea6d2:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0dea6d6:	fb00 f107 	mul.w	r1, r0, r7
c0dea6da:	4291      	cmp	r1, r2
c0dea6dc:	d90e      	bls.n	c0dea6fc <__udivmoddi4+0x270>
c0dea6de:	eb1c 0202 	adds.w	r2, ip, r2
c0dea6e2:	f100 38ff 	add.w	r8, r0, #4294967295	@ 0xffffffff
c0dea6e6:	bf2c      	ite	cs
c0dea6e8:	f04f 0901 	movcs.w	r9, #1
c0dea6ec:	f04f 0900 	movcc.w	r9, #0
c0dea6f0:	4291      	cmp	r1, r2
c0dea6f2:	d902      	bls.n	c0dea6fa <__udivmoddi4+0x26e>
c0dea6f4:	f1b9 0f00 	cmp.w	r9, #0
c0dea6f8:	d031      	beq.n	c0dea75e <__udivmoddi4+0x2d2>
c0dea6fa:	4640      	mov	r0, r8
c0dea6fc:	1a52      	subs	r2, r2, r1
c0dea6fe:	b2ad      	uxth	r5, r5
c0dea700:	fbb2 f1fe 	udiv	r1, r2, lr
c0dea704:	fb0e 2211 	mls	r2, lr, r1, r2
c0dea708:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
c0dea70c:	fb01 f207 	mul.w	r2, r1, r7
c0dea710:	42aa      	cmp	r2, r5
c0dea712:	d907      	bls.n	c0dea724 <__udivmoddi4+0x298>
c0dea714:	eb1c 0505 	adds.w	r5, ip, r5
c0dea718:	f101 38ff 	add.w	r8, r1, #4294967295	@ 0xffffffff
c0dea71c:	d201      	bcs.n	c0dea722 <__udivmoddi4+0x296>
c0dea71e:	42aa      	cmp	r2, r5
c0dea720:	d823      	bhi.n	c0dea76a <__udivmoddi4+0x2de>
c0dea722:	4641      	mov	r1, r8
c0dea724:	1aad      	subs	r5, r5, r2
c0dea726:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0dea72a:	e726      	b.n	c0dea57a <__udivmoddi4+0xee>
c0dea72c:	4631      	mov	r1, r6
c0dea72e:	4630      	mov	r0, r6
c0dea730:	e6fa      	b.n	c0dea528 <__udivmoddi4+0x9c>
c0dea732:	1a84      	subs	r4, r0, r2
c0dea734:	eb65 0303 	sbc.w	r3, r5, r3
c0dea738:	2001      	movs	r0, #1
c0dea73a:	461f      	mov	r7, r3
c0dea73c:	e70c      	b.n	c0dea558 <__udivmoddi4+0xcc>
c0dea73e:	4464      	add	r4, ip
c0dea740:	3802      	subs	r0, #2
c0dea742:	e74a      	b.n	c0dea5da <__udivmoddi4+0x14e>
c0dea744:	4464      	add	r4, ip
c0dea746:	3802      	subs	r0, #2
c0dea748:	e6e4      	b.n	c0dea514 <__udivmoddi4+0x88>
c0dea74a:	3a02      	subs	r2, #2
c0dea74c:	4465      	add	r5, ip
c0dea74e:	e72f      	b.n	c0dea5b0 <__udivmoddi4+0x124>
c0dea750:	3902      	subs	r1, #2
c0dea752:	4462      	add	r2, ip
c0dea754:	e6c9      	b.n	c0dea4ea <__udivmoddi4+0x5e>
c0dea756:	f1a8 0802 	sub.w	r8, r8, #2
c0dea75a:	4465      	add	r5, ip
c0dea75c:	e770      	b.n	c0dea640 <__udivmoddi4+0x1b4>
c0dea75e:	3802      	subs	r0, #2
c0dea760:	4462      	add	r2, ip
c0dea762:	e7cb      	b.n	c0dea6fc <__udivmoddi4+0x270>
c0dea764:	3802      	subs	r0, #2
c0dea766:	4465      	add	r5, ip
c0dea768:	e77e      	b.n	c0dea668 <__udivmoddi4+0x1dc>
c0dea76a:	3902      	subs	r1, #2
c0dea76c:	4465      	add	r5, ip
c0dea76e:	e7d9      	b.n	c0dea724 <__udivmoddi4+0x298>
c0dea770:	4631      	mov	r1, r6
c0dea772:	e6d9      	b.n	c0dea528 <__udivmoddi4+0x9c>

c0dea774 <__aeabi_memclr>:
c0dea774:	2200      	movs	r2, #0
c0dea776:	f000 b804 	b.w	c0dea782 <__aeabi_memset>

c0dea77a <__aeabi_memcpy>:
c0dea77a:	f000 b80d 	b.w	c0dea798 <memcpy>

c0dea77e <__aeabi_memmove>:
c0dea77e:	f000 b818 	b.w	c0dea7b2 <memmove>

c0dea782 <__aeabi_memset>:
c0dea782:	4613      	mov	r3, r2
c0dea784:	460a      	mov	r2, r1
c0dea786:	4619      	mov	r1, r3
c0dea788:	f000 b82d 	b.w	c0dea7e6 <memset>

c0dea78c <explicit_bzero>:
c0dea78c:	f000 b800 	b.w	c0dea790 <bzero>

c0dea790 <bzero>:
c0dea790:	460a      	mov	r2, r1
c0dea792:	2100      	movs	r1, #0
c0dea794:	f000 b827 	b.w	c0dea7e6 <memset>

c0dea798 <memcpy>:
c0dea798:	440a      	add	r2, r1
c0dea79a:	1e43      	subs	r3, r0, #1
c0dea79c:	4291      	cmp	r1, r2
c0dea79e:	d100      	bne.n	c0dea7a2 <memcpy+0xa>
c0dea7a0:	4770      	bx	lr
c0dea7a2:	b510      	push	{r4, lr}
c0dea7a4:	f811 4b01 	ldrb.w	r4, [r1], #1
c0dea7a8:	4291      	cmp	r1, r2
c0dea7aa:	f803 4f01 	strb.w	r4, [r3, #1]!
c0dea7ae:	d1f9      	bne.n	c0dea7a4 <memcpy+0xc>
c0dea7b0:	bd10      	pop	{r4, pc}

c0dea7b2 <memmove>:
c0dea7b2:	4288      	cmp	r0, r1
c0dea7b4:	b510      	push	{r4, lr}
c0dea7b6:	eb01 0402 	add.w	r4, r1, r2
c0dea7ba:	d902      	bls.n	c0dea7c2 <memmove+0x10>
c0dea7bc:	4284      	cmp	r4, r0
c0dea7be:	4623      	mov	r3, r4
c0dea7c0:	d807      	bhi.n	c0dea7d2 <memmove+0x20>
c0dea7c2:	1e43      	subs	r3, r0, #1
c0dea7c4:	42a1      	cmp	r1, r4
c0dea7c6:	d008      	beq.n	c0dea7da <memmove+0x28>
c0dea7c8:	f811 2b01 	ldrb.w	r2, [r1], #1
c0dea7cc:	f803 2f01 	strb.w	r2, [r3, #1]!
c0dea7d0:	e7f8      	b.n	c0dea7c4 <memmove+0x12>
c0dea7d2:	4402      	add	r2, r0
c0dea7d4:	4601      	mov	r1, r0
c0dea7d6:	428a      	cmp	r2, r1
c0dea7d8:	d100      	bne.n	c0dea7dc <memmove+0x2a>
c0dea7da:	bd10      	pop	{r4, pc}
c0dea7dc:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0dea7e0:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0dea7e4:	e7f7      	b.n	c0dea7d6 <memmove+0x24>

c0dea7e6 <memset>:
c0dea7e6:	4402      	add	r2, r0
c0dea7e8:	4603      	mov	r3, r0
c0dea7ea:	4293      	cmp	r3, r2
c0dea7ec:	d100      	bne.n	c0dea7f0 <memset+0xa>
c0dea7ee:	4770      	bx	lr
c0dea7f0:	f803 1b01 	strb.w	r1, [r3], #1
c0dea7f4:	e7f9      	b.n	c0dea7ea <memset+0x4>
	...

c0dea7f8 <setjmp>:
c0dea7f8:	46ec      	mov	ip, sp
c0dea7fa:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0dea7fe:	f04f 0000 	mov.w	r0, #0
c0dea802:	4770      	bx	lr

c0dea804 <longjmp>:
c0dea804:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0dea808:	46e5      	mov	sp, ip
c0dea80a:	0008      	movs	r0, r1
c0dea80c:	bf08      	it	eq
c0dea80e:	2001      	moveq	r0, #1
c0dea810:	4770      	bx	lr
c0dea812:	bf00      	nop

c0dea814 <strcmp>:
c0dea814:	f810 2b01 	ldrb.w	r2, [r0], #1
c0dea818:	f811 3b01 	ldrb.w	r3, [r1], #1
c0dea81c:	2a01      	cmp	r2, #1
c0dea81e:	bf28      	it	cs
c0dea820:	429a      	cmpcs	r2, r3
c0dea822:	d0f7      	beq.n	c0dea814 <strcmp>
c0dea824:	1ad0      	subs	r0, r2, r3
c0dea826:	4770      	bx	lr

c0dea828 <strlen>:
c0dea828:	4603      	mov	r3, r0
c0dea82a:	f813 2b01 	ldrb.w	r2, [r3], #1
c0dea82e:	2a00      	cmp	r2, #0
c0dea830:	d1fb      	bne.n	c0dea82a <strlen+0x2>
c0dea832:	1a18      	subs	r0, r3, r0
c0dea834:	3801      	subs	r0, #1
c0dea836:	4770      	bx	lr

c0dea838 <strncmp>:
c0dea838:	4603      	mov	r3, r0
c0dea83a:	b510      	push	{r4, lr}
c0dea83c:	b172      	cbz	r2, c0dea85c <strncmp+0x24>
c0dea83e:	3901      	subs	r1, #1
c0dea840:	1884      	adds	r4, r0, r2
c0dea842:	f813 0b01 	ldrb.w	r0, [r3], #1
c0dea846:	f811 2f01 	ldrb.w	r2, [r1, #1]!
c0dea84a:	4290      	cmp	r0, r2
c0dea84c:	d101      	bne.n	c0dea852 <strncmp+0x1a>
c0dea84e:	42a3      	cmp	r3, r4
c0dea850:	d101      	bne.n	c0dea856 <strncmp+0x1e>
c0dea852:	1a80      	subs	r0, r0, r2
c0dea854:	bd10      	pop	{r4, pc}
c0dea856:	2800      	cmp	r0, #0
c0dea858:	d1f3      	bne.n	c0dea842 <strncmp+0xa>
c0dea85a:	e7fa      	b.n	c0dea852 <strncmp+0x1a>
c0dea85c:	4610      	mov	r0, r2
c0dea85e:	e7f9      	b.n	c0dea854 <strncmp+0x1c>

c0dea860 <strncpy>:
c0dea860:	3901      	subs	r1, #1
c0dea862:	4603      	mov	r3, r0
c0dea864:	b510      	push	{r4, lr}
c0dea866:	b132      	cbz	r2, c0dea876 <strncpy+0x16>
c0dea868:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0dea86c:	3a01      	subs	r2, #1
c0dea86e:	f803 4b01 	strb.w	r4, [r3], #1
c0dea872:	2c00      	cmp	r4, #0
c0dea874:	d1f7      	bne.n	c0dea866 <strncpy+0x6>
c0dea876:	441a      	add	r2, r3
c0dea878:	2100      	movs	r1, #0
c0dea87a:	4293      	cmp	r3, r2
c0dea87c:	d100      	bne.n	c0dea880 <strncpy+0x20>
c0dea87e:	bd10      	pop	{r4, pc}
c0dea880:	f803 1b01 	strb.w	r1, [r3], #1
c0dea884:	e7f9      	b.n	c0dea87a <strncpy+0x1a>

c0dea886 <C_home_boilerplate_14px_bitmap>:
c0dea886:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0dea896:	fc7b df0f 7ffe 7ff8                          {........

c0dea89f <C_home_boilerplate_14px>:
c0dea89f:	000e 000e 0000 a886 c0de                    ..........

c0dea8a9 <C_Information_circle_14px_bitmap>:
c0dea8a9:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0dea8b9:	e7ff 8fff 1ffc 1ee0                          .........

c0dea8c2 <C_Information_circle_14px>:
c0dea8c2:	000e 000e 0000 a8a9 c0de                    ..........

c0dea8cc <C_Quit_14px_bitmap>:
c0dea8cc:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0dea8dc:	6680 9801 7f06 fff9                          .f.......

c0dea8e5 <C_Quit_14px>:
c0dea8e5:	000e 000e 0000 a8cc c0de                    ..........

c0dea8ef <C_Switch_Off_8px_bitmap>:
c0dea8ef:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0dea8fb <C_Switch_Off_8px>:
c0dea8fb:	000c 0008 0000 a8ef c0de                    ..........

c0dea905 <C_Switch_On_8px_bitmap>:
c0dea905:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0dea911 <C_Switch_On_8px>:
c0dea911:	000c 0008 0000 a905 c0de                    ..........

c0dea91b <C_icon_back_x_bitmap>:
c0dea91b:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0dea92b:	003f 0078 00c0 0000                          ?.x......

c0dea934 <C_icon_back_x>:
c0dea934:	000e 000e 0000 a91b c0de                    ..........

c0dea93e <C_icon_coggle_bitmap>:
c0dea93e:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0dea94e:	807f 00b4 00c0 0000                          .........

c0dea957 <C_icon_coggle>:
c0dea957:	000e 000e 0000 a93e c0de                    ......>...

c0dea961 <C_icon_crossmark_bitmap>:
c0dea961:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0dea971:	8373 1c87 600e 0018                          s....`...

c0dea97a <C_icon_crossmark>:
c0dea97a:	000e 000e 0000 a961 c0de                    ......a...

c0dea984 <C_icon_down_bitmap>:
c0dea984:	2184 8024                                   .!$.

c0dea988 <C_icon_down>:
c0dea988:	0007 0004 0000 a984 c0de                    ..........

c0dea992 <C_icon_left_bitmap>:
c0dea992:	8882 80a0                                   ....

c0dea996 <C_icon_left>:
c0dea996:	0004 0007 0000 a992 c0de                    ..........

c0dea9a0 <C_icon_processing_bitmap>:
c0dea9a0:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0dea9b0:	8361 04b7 03c8 0000                          a........

c0dea9b9 <C_icon_processing>:
c0dea9b9:	000e 000e 0000 a9a0 c0de                    ..........

c0dea9c3 <C_icon_right_bitmap>:
c0dea9c3:	5110 1014                                   .Q..

c0dea9c7 <C_icon_right>:
c0dea9c7:	0004 0007 0000 a9c3 c0de                    ..........

c0dea9d1 <C_icon_up_bitmap>:
c0dea9d1:	4812 1042                                   .HB.

c0dea9d5 <C_icon_up>:
c0dea9d5:	0007 0004 0000 a9d1 c0de                    ..........

c0dea9df <C_icon_validate_14_bitmap>:
c0dea9df:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0dea9ef:	a3b3 a3a3 f0b2                               ......P

c0dea9f6 <C_icon_validate_14>:
c0dea9f6:	000e 000e 0100 a9df c0de                    ..........

c0deaa00 <C_icon_warning_bitmap>:
c0deaa00:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0deaa10:	e01f 801f 001e 0018                          .........

c0deaa19 <C_icon_warning>:
c0deaa19:	000e 000e 0000 aa00 c0de                    ..........

c0deaa23 <C_app_boilerplate_14px_bitmap>:
c0deaa23:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0deaa33:	0384 00f0 0000 0000                          .........

c0deaa3c <C_app_boilerplate_14px>:
c0deaa3c:	000e 000e 0000 aa23 c0de 7544 6d6d 2079     ......#...Dummy 
c0deaa4c:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0deaa5c:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0deaa6c:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0deaa7c:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0deaa8c:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0deaa9c:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0deaaac:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0deaabc:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0deaacc:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0deaadc:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0deaaec:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0deaafc:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0deab0c:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0deab1c:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0deab2c:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0deab3c:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0deab4c:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0deab5c:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0deab6c:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0deab7c:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0deab8c:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0deab9c:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0deabac:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0deabbc:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0deabcc:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0deabdc:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0deabec:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0deabfc:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0deac0c:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0deac1c:	6556 7372 6f69 006e 6143 636e 6c65 2000     Version.Cancel. 
c0deac2c:	2e2e 202e 4100 6464 6572 7373 7620 7265     ... .Address ver
c0deac3c:	6669 6369 7461 6f69 206e 6163 636e 6c65     ification cancel
c0deac4c:	656c 0064 6944 6173 6c62 6465 4100 7070     led.Disabled.App
c0deac5c:	7320 7465 6974 676e 0073 6341 6563 7470      settings.Accept
c0deac6c:	7220 7369 206b 6e61 2064 6973 6e67 7420      risk and sign t
c0deac7c:	6172 736e 6361 6974 6e6f 2e00 2e2e 4200     ransaction.....B
c0deac8c:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0deac9c:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0deacac:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0deacbc:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0deaccc:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0deacdc:	4544 0046 4f42 204c 2e25 732a 4100 6464     DEF.BOL %.*s.Add
c0deacec:	6572 7373 4200 6361 006b 7544 6d6d 2079     ress.Back.Dummy 
c0deacfc:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0dead0c:	6f63 666e 7269 006d 7254 6e61 6173 7463     confirm.Transact
c0dead1c:	6f69 206e 6572 656a 7463 6465 4100 7070     ion rejected.App
c0dead2c:	6920 666e 006f 6953 6e67 6f20 6570 6172      info.Sign opera
c0dead3c:	6974 6e6f 2e00 002e 6552 656a 7463 6d20     tion....Reject m
c0dead4c:	7365 6173 6567 5200 6a65 6365 2074 706f     essage.Reject op
c0dead5c:	7265 7461 6f69 006e 4b5a 4f4e 0058 6556     eration.ZKNOX.Ve
c0dead6c:	6972 7966 4220 4c4f 6120 6464 6572 7373     rify BOL address
c0dead7c:	5a00 4e4b 584f 5748 6100 7070 6920 2073     .ZKNOXHW.app is 
c0dead8c:	6572 6461 0079 7551 7469 6120 7070 4300     ready.Quit app.C
c0dead9c:	6e6f 6966 6d72 0000 0000 0000 ed73 53a7     onfirm......s..S
c0deadac:	9d29 487d 3933 08d8 a109 05d8 bd53 02a4     ).}H39......S...
c0deadbc:	feff fe5b ffff ffff 0000 0100 ce05 c698     ..[.............
c0deadcc:	051b 7ff4 eae2 a5e9 bd42 f699 e7b2 4682     ........B......F
c0deaddc:	1623 b540 9545 bffe 1ed5 53b8 0001 0000     #.@.E......S....
c0deadec:	0000 0000 0002 0000 0000 0000 0003 0000     ................
c0deadfc:	0000 0000 0004 0000 0000 0000 a005 91c0     ................
c0deae0c:	8356 988b af28 123f e167 e675 84e2 9dc7     V...(.?.g.u.....
c0deae1c:	6d1b d08a 0acd d9e0 9057 6e33 c61c 38ee     .m......W.3n...8
c0deae2c:	9c13 111c 2302 7a53 e78c 069d 587e 10cc     .....#Sz....~X..
c0deae3c:	c667 b7fb b3d8 b0a1 fc8d 088f 4d27 e8bc     g...........'M..
c0deae4c:	51d1 9679 c09b 9fd4 25a7 dfbd e59d e055     .Qy......%....U.
c0deae5c:	6aba 3c69 db6a fc52 e79e 2ca8 fb1c d469     .ji<j.R....,..i.
c0deae6c:	67ca 525f ce0c 0276 6802 0076 8fff 0087     .g_R..v..hv.....
c0deae7c:	1974 7104 fd74 b506 7628 e1e7 0c06 ce89     t..qt...(v......
c0deae8c:	265c 0534 0a37 b608 30d0 0b2b 3eab b8ed     \&4.7....0+..>..
c0deae9c:	2039 0aee 7267 dc97 2139 f126 a570 4a89     9 ..gr..9!&.p..J
c0deaeac:	4464 3854 15d0 32ac 36ba 090f de2c ba44     dDT8...2.6..,.D.
c0deaebc:	1fb1 b7c2 b5d4 d2c0 2216 ce8c 0000 0000     ........."......
	...
c0deaee4:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0deaef4:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0deaf04:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0deaf14:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0deaf24:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0deaf34:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0deaf44:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0deaf64:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0deaf74:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0deaf84:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0deaf94:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0deafa4:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0deafb4:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0deafc4:	2d87 8b7d                                   .-}.

c0deafc8 <.L__const.handler_cmd_Poseidon.input>:
c0deafc8:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0deafd8:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0deafe8:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0deaff8:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0deb008:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0deb018:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0deb028:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0deb038:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0deb048:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0deb058:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0deb068 <settingContents>:
c0deb068:	0000 0000 b084 c0de 0001 0000               ............

c0deb074 <infoList>:
c0deb074:	b0b8 c0de b0c0 c0de 0000 0000 0002 0000     ................

c0deb084 <contents>:
c0deb084:	0007 0000 0324 da7a 0002 0000 0000 0000     ....$.z.........
	...
c0deb0b4:	13c5 c0de                                   ....

c0deb0b8 <INFO_TYPES>:
c0deb0b8:	ac1c c0de ab71 c0de                         ....q...

c0deb0c0 <INFO_CONTENTS>:
c0deb0c0:	aa94 c0de ad64 c0de                         ....d...

c0deb0c8 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0deb0e8:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0deb0f8:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0deb108 <.L__const.Poseidon_alloc_init.MixColumn>:
c0deb108:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0deb118:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0deb128:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0deb138:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0deb148:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0deb158:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0deb168:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0deb178:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0deb188:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0deb198:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0deb1a8:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0deb1b8:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0deb1c8:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0deb1d8:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0deb1e8:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0deb1f8:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0deb208:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0deb218:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0deb228:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0deb238:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0deb248:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0deb258:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0deb268:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0deb278:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0deb288:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0deb298:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0deb2a8:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0deb2b8:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0deb2c8:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0deb2d8:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0deb2e8:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0deb2f8:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0deb308:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0deb318:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0deb328:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0deb338:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0deb348:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0deb358:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0deb368:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0deb378:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0deb388:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0deb398:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0deb3a8:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0deb3b8:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0deb3c8:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0deb3d8:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0deb3e8:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0deb3f8:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0deb408:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0deb418:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0deb428:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0deb438:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0deb448:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0deb458:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0deb468:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0deb478:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0deb488:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0deb498:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0deb4a8:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0deb4b8:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0deb4c8:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0deb4d8:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0deb4e8:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0deb4f8:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0deb508:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0deb518:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0deb528:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0deb538:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0deb548:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0deb558:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0deb568:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0deb578:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0deb588 <radiusValues>:
c0deb588:	0301                                        ..

c0deb58a <quarter_disc_3px_180_1bpp>:
c0deb58a:	ff9b                                        ..

c0deb58c <quarter_circle_3px_180_1bpp>:
c0deb58c:	0019                                        ..

c0deb58e <quarter_disc_3px_270_1bpp>:
c0deb58e:	00fa                                        ..

c0deb590 <quarter_circle_3px_270_1bpp>:
c0deb590:	0058                                        X.

c0deb592 <quarter_disc_3px_90_1bpp>:
c0deb592:	ff2f                                        /.

c0deb594 <quarter_circle_3px_90_1bpp>:
c0deb594:	000d                                        ..

c0deb596 <quarter_disc_3px_1bpp>:
c0deb596:	ffec                                        ..

c0deb598 <quarter_circle_3px_1bpp>:
c0deb598:	004c 0000                                   L...

c0deb59c <draw_functions>:
c0deb59c:	46c1 c0de 4701 c0de 4729 c0de 0000 0000     .F...G..)G......
c0deb5ac:	47ad c0de 4a69 c0de 0000 0000 0000 0000     .G..iJ..........
c0deb5bc:	4c3b c0de 0000 0000 0000 0000 0000 0000     ;L..............
	...
c0deb5d4:	4cd9 c0de 4d25 c0de 0000 0000               .L..%M......

c0deb5e0 <blindSigningWarning>:
c0deb5e0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0deb608 <USBD_HID_Desc>:
c0deb608:	2109 0111 0100 2222                          .!...."".

c0deb611 <HID_ReportDesc>:
c0deb611:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0deb621:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0deb631:	c008                                        ..

c0deb633 <C_usb_bos>:
c0deb633:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0deb643:	8b47 a0fd 8876 b615 0065 1e01 1c00 0510     G...v...e.......
c0deb653:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0deb663:	009f 0300 b206 7700                          .......w.

c0deb66c <HID_Desc>:
c0deb66c:	8fc9 c0de 8fd9 c0de 8fe9 c0de 8ff9 c0de     ................
c0deb67c:	9009 c0de 9019 c0de 9029 c0de 9039 c0de     ........)...9...

c0deb68c <C_winusb_string_descriptor>:
c0deb68c:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0deb69c:	0077                                        w.

c0deb69e <C_winusb_guid>:
c0deb69e:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0deb6ae:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0deb6be:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0deb6ce:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0deb6de:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0deb6ee:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0deb6fe:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0deb70e:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0deb71e:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0deb730 <C_winusb_request_descriptor>:
c0deb730:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0deb740:	00a8 0008 0002 0001 00a0 0014 0003 4957     ..............WI
c0deb750:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0deb760:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0deb770:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0deb780:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0deb790:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0deb7a0:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0deb7b0:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0deb7c0:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0deb7d0:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0deb7e0:	0000 0000                                   ....

c0deb7e4 <USBD_HID>:
c0deb7e4:	839b c0de 83c3 c0de 8303 c0de 0000 0000     ................
c0deb7f4:	0000 0000 8ea9 c0de 8ec5 c0de 0000 0000     ................
	...
c0deb80c:	9141 c0de 9141 c0de 9141 c0de 9151 c0de     A...A...A...Q...

c0deb81c <USBD_WEBUSB>:
c0deb81c:	8f21 c0de 8f49 c0de 8f4d c0de 0000 0000     !...I...M.......
c0deb82c:	0000 0000 8f51 c0de 8f6d c0de 0000 0000     ....Q...m.......
	...
c0deb844:	9141 c0de 9141 c0de 9141 c0de 9151 c0de     A...A...A...Q...

c0deb854 <USBD_DeviceDesc>:
c0deb854:	0112 0210 0000 4000 2c97 5000 0201 0201     .......@.,.P....
c0deb864:	0103                                        ..

c0deb866 <USBD_LangIDDesc>:
c0deb866:	0304 0409                                   ....

c0deb86a <USBD_MANUFACTURER_STRING>:
c0deb86a:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0deb878 <USBD_PRODUCT_FS_STRING>:
c0deb878:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0deb888:	0050 006c 0075 0073                         P.l.u.s.

c0deb890 <USB_SERIAL_STRING>:
c0deb890:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0deb89a <C_winusb_wcid>:
c0deb89a:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0deb8aa:	0101 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0deb8c4 <USBD_CfgDesc>:
c0deb8c4:	0209 0040 0102 c002 0932 0004 0200 0003     ..@.....2.......
c0deb8d4:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0deb8e4:	0100 0507 0302 0040 0901 0104 0200 ffff     ......@.........
c0deb8f4:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0deb904 <USBD_DeviceQualifierDesc>:
c0deb904:	060a 0200 0000 4000 0001                    .......@..

c0deb90e <seph_io_general_status>:
c0deb90e:	0060 0002                                    `....

c0deb913 <g_pcHex>:
c0deb913:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0deb923 <g_pcHex_cap>:
c0deb923:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

c0deb934 <_etext>:
	...

c0deba00 <N_storage_real>:
	...

c0debc00 <install_parameters>:
c0debc00:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0debc10:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0debc20:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0debc30:	0000 0400 010a 8002 0000 802c 0000           ..........,....
